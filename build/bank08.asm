loc_8C080018:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8C080160,pc),r1 ; r1 set to 0x8C154014
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop
	mov.w @(loc_8C080156,pc),r0 ; r0 set to 0x1Ea
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(0x18,r14),r4
	mov.b r3,@(r0,r4)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C08003A:
	mov.b @(0x6,r4),r0
	mov 0x01,r3
	add 0x01,r0
	mov.b r0,@(0x6,r4)
	mov.w @(0x112,PC),r0
	mov.b r3,@(r0,r4)
	mova @(0x11C,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r4)
	mova @(0x118,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r4)
	mov 0x34,r0
	mov.l @(0x18,r4),r5
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mova @(0x104,PC),r0
	fmov @r0,fr4
	mov.w @(0xEE,PC),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bt loc_8c080084
	mova @(0xFC,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r4)
	mova @(0xF8,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r4)
	mova @(0xF4,PC),r0
	fmov @r0,fr4

loc_8C080084:
	mov 0x34,r0
	mov.l @(0xF4,PC),r1
	fmov @(r0,r4),fr3
	mov 0x0F,r6
	lds r1,fpul
	fadd fr4,fr3
	mov.l @(0xF4,PC),r3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mova @(0xE0,PC),r0
	fmov @r0,fr2
	mov 0x60,r0
	fmov fr2,@(r0,r4)
	mova @(0xDC,PC),r0
	fmov @r0,fr2
	mov 0x6C,r0
	fmov fr2,@(r0,r4)
	jmp @r3
	mov 0x16,r5

;==============================================
loc_8C0800B2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xD4,PC),r3
	jsr @r3
	mov r4,r14
	mov 0x48,r0
	mov.w @(0x9A,PC),r3
	mov.l @(r0,r14),r2
	mov 0x5C,r1
	add r14,r1
	add r3,r2
	mov.l r2,@(r0,r14)
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
	mov 0x38,r0
	fmov @(r0,r14),fr3
	mov.w @(0x58,PC),r0
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bt loc_8c080150
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mova @(0x4C,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0x48,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x30,PC),r0
	mov.l @(0x18,r14),r4
	mov.w @(r0,r4),r2
	tst r2,r2
	bt loc_8c080140
	mova @(0x3C,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0x38,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)

loc_8C080140:
	mova @(0x4C,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0x48,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)

loc_8C080150:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C080156:
	#data 0x01Ea
loc_8C080158:
	#data 0x012c
loc_8C08015a:
	#data 0x0130
loc_8C08015c:
	#data 0x1200
loc_8C08015e:
	#data 0x00D0
	#align4

loc_8C080160:
	#data bank15.loc_8c154014
loc_8C080164:
	#data 0xC0555555
loc_8C080168:
	#data 0x3C555555
loc_8C08016c:
	#data 0xC2055555
loc_8C080170:
	#data 0x40555555
loc_8C080174:
	#data 0xBC555555
loc_8C080178:
	#data 0x42055555
loc_8C08017c:
	#data 0x429A4924
loc_8C080180:
	#data 0x412B6DB6
loc_8C080184:
	#data 0xBEF00000
loc_8C080188:
	#data bank03.loc_8c034e8c
loc_8C08018C:
	#data bank03.loc_8c034dee
loc_8C080190:
	#data 0x40AB6DB6
loc_8C080194:
	#data 0xBE700000

;--------------------------------------------
loc_8C080198:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0802C4,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	mov 0x48,r0 ; r0 set to 0x48
	mov.w @(loc_8C0802B2,pc),r3 ; r3 set to 0x1200
	mov.l @(r0,r14),r2
	mov 0x5C,r1 ; r1 set to 0x5c
	add r14,r1 ; r1 ??? bc r14 is ???	
	add r3,r2
	mov.l r2,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
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
	fldi0 fr3
	fcmp/gt fr2,fr3
	bf/s loc_8C08026c
	fmov.s fr2,@(r0,r14)
	mov.b @(0x04,r14),r0
	mov 0x00,r2 ; r2 set to 0x00
	mov 0x10,r1 ; r1 set to 0x10
	mov.l @(loc_8C0802C8,pc),r12 ; r12 set to 0x8C0FD75c
	add 0x01,r0 ; r0 set to 0x61
	mov.w @(loc_8C0802BC,pc),r11 ; r11 set to 0x90
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0802B4,pc),r0 ; r0 set to 0x12c
	mov.b r2,@(r0,r14)
	mov 0x01,r2 ; r2 set to 0x01
	mov.w @(loc_8C0802B6,pc),r0 ; r0 set to 0x1B0
	mov.l @(r0,r14),r4
	mov.w @(loc_8C0802B4,pc),r0 ; r0 set to 0x12c
	mov.b r2,@(r0,r4)
	mov 0x41,r2 ; r2 set to 0x41
	mov.w @(loc_8C0802B8,pc),r0 ; r0 set to 0x1F6
	mov.b r1,@(r0,r4)
	add 0xAB,r0 ; r0 set to 0x1A1
	mov.b r2,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???	
	mov 0x02,r2 ; r2 set to 0x02
	fmov.s fr2,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???	
	fmov.s fr2,@(r0,r4)
	mov.w @(loc_8C0802BA,pc),r0 ; r0 set to 0x1F9
	mov.b r2,@(r0,r4)
	add 0xBB,r0 ; r0 set to 0x1B4
	mov.l @(0x18,r14),r13
	mov.l r13,@(r0,r4)
	mova @(loc_8C0802CC,pc),r0  ; r0 set to 0x8C0802Cc
	fmov.s @r0,fr15
	mov r11,r6 ; r6 set to 0x90
	mov 0x00,r5 ; r5 set to 0x00
	fmov fr15,fr5 ; r5 ??? bc r15 is ???	
	fmov fr15,fr4
	jsr @r12
	mov r14,r4
	mov r11,r6 ; r6 set to 0x90
	mov 0x10,r5 ; r5 set to 0x10
	fmov fr15,fr5 ; r5 ??? bc r15 is ???	
	fmov fr15,fr4
	jsr @r12
	mov r14,r4
	mov.w @(loc_8C0802BE,pc),r5 ; r5 set to 0xF0
	mov r11,r6 ; r6 set to 0x90
	fmov fr15,fr5 ; r5 ??? bc r15 is ???	
	fmov fr15,fr4
	jsr @r12
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r4
	mov.l @(loc_8C0802D0,pc),r3 ; r3 set to 0x8C035162
	mov 0x00,r5 ; r5 set to 0x00
	fmov.s @r15+,fr15
	mov.l @r15+,r11 ; r11 ??? bc r15 is ???	
	mov.l @r15+,r12 ; r12 ??? bc r15 is ???	
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C08026C:
	lds.l @r15+,pr
	fmov.s @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C08027A:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0802B4,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C080288:
	mov.l @(loc_8C0802D4,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;----------------------------------------------
loc_8C08028E:
	mov.w @(0x2E,PC),r0
	mov.l @(0x18,r4),r5
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c0802a4
	mov.w @(0x24,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bt loc_8c0802ae

loc_8C0802A4:
	mov 0x02,r0
	mov.b r0,@(0x4,r4)
	mov 0x00,r3
	mov.w @(0x6,PC),r0
	mov.b r3,@(r0,r4)

loc_8C0802AE:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0802B2:
	#data 0x1200
loc_8C0802B4:
	#data 0x012c
loc_8C0802B6:
	#data 0x01B0
loc_8C0802B8:
	#data 0x01F6
loc_8C0802BA:
	#data 0x01F9
loc_8C0802BC:
	#data 0x0090
loc_8C0802BE:
	#data 0x00F0
loc_8C0802c0:
	#data 0x01D0
loc_8C0802c2:
	#data 0x01E9
	#align4

loc_8C0802C4:
	#data bank03.loc_8c034dee
loc_8C0802C8:
	#data bank0f.loc_8c0fD75c
loc_8C0802CC:
	#data 0x40800000
loc_8C0802D0:
	#data bank03.loc_8c035162
loc_8C0802D4:
	#data bank04.loc_8c0450C0

;----------------------------------------------
;Unused?
loc_8c0802d8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b r5,@r15
	mov 0x01,r5
	mov.l @(0x120,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c080320
	mov r0,r4
	mov.l @(0x114,PC),r3
	mov.l r3,@(0x10,r4)
	mov.b @(0x1,r14),r0
	mov.w @(0xF4,PC),r3
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.b @r15,r2
	mov.b r2,@(r0,r4)
	mov.w @(0xE8,PC),r0
	mov.l r14,@(0x18,r4)
	mov.w @(r0,r14),r3
	mov.w @(0xE4,PC),r0
	mov.w r3,@(r0,r4)
	mov.w @(0xE2,PC),r0
	mov.b @(r0,r14),r2
	mov.w @(0xE0,PC),r0
	mov.b r2,@(r0,r4)
	mov.w @(0xD6,PC),r0
	mov.b @(r0,r14),r3
	mov.w @(0xD4,PC),r0
	mov.b r3,@(r0,r4)

loc_8c080320:
	mov r4,r0
	nop
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c08032c:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	mov 0x02,r3
	extu.b r0,r0
	cmp/gt r3,r0
	bf loc_8c080340
	bsr loc_8c0805c4
	mov r14,r4

loc_8C080340:
	mov.b @(0x4,r14),r0
	mov r14,r4
	mov.l @(0xC4,PC),r1
	extu.b r0,r0
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C080352:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(loc_8C0803FA,pc),r1 ; r1 set to 0xDc
	mov.w @(loc_8C0803F4,pc),r4 ; r4 set to 0xCc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r4 ; r4 ??? bc r14 is ???	
	mov.w @(loc_8C0803FA,pc),r2 ; r2 set to 0xDc
	add r14,r1 ; r1 ??? bc r14 is ???	
	add 0x01,r0
	mov.l @(loc_8C080410,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0803FC,pc),r0 ; r0 set to 0xC0
	mov.l @(0x18,r14),r13
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???	
	mov.w @(loc_8C0803FE,pc),r0 ; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
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
	mov.w @(loc_8C080400,pc),r0 ; r0 set to 0x1A3
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2 ; r2 ??? bc r3 is ???	
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
	mov.l @(loc_8C080414,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x20,r2 ; r2 set to 0x20
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov.b r3,@(r0,r14)
	mov 0x24,r3 ; r3 set to 0x24
	mov.w @(loc_8C080402,pc),r0 ; r0 set to 0x13d
	mov.b r2,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x13c
	mov.b r2,@(r0,r14)
	add 0x03,r0 ; r0 set to 0x13f
	mov.b r3,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x13e
	mov 0x0B,r2 ; r2 set to 0x0b
	mov.b r3,@(r0,r14)
	mov r3,r0 ; r0 set to 0x24
	nop
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0803F2,pc),r0 ; r0 set to 0x158
	mov.w @r4,r3 ; r3 ??? bc r4 is ???	
	mov.w @(r0,r13),r2 ; r2 ??? bc r13 is ???	
	cmp/eq r2,r3
	bt loc_8C080418
	mov 0x02,r0 ; r0 set to 0x02
	bra loc_8C080480
	mov.b r0,@(0x04,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0803f0:
	#data 0x1403
loc_8C0803F2:
	#data 0x0158
loc_8C0803F4:
	#data 0x00Cc
loc_8C0803F6:
	#data 0x0159
loc_8C0803F8:
	#data 0x00Cd
loc_8C0803FA:
	#data 0x00Dc
loc_8C0803FC:
	#data 0x00C0
loc_8C0803FE:
	#data 0x012c
loc_8C080400:
	#data 0x01A3
loc_8C080402:
	#data 0x013d
	#align4

loc_8C080404:
	#data bank04.loc_8c044F12
loc_8C080408:
	#data loc_8C08032c
loc_8C08040C:
	#data bank15.loc_8c154020
loc_8C080410:
	#data bank12.loc_8c129560
loc_8C080414:
	#data bank12.loc_8c1294C8

;----------------------------------------------
loc_8C080418:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3
	mov 0x00,r4 ; r4 set to 0x00
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C08054A,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r13),r3
	mov.w r3,@(r0,r14)
	mov 0x66,r3 ; r3 set to 0x66
	mov.b @(0x02,r14),r0
	xor 0x01,r0
	mov.b r0,@(0x02,r14)
	mov.w @(loc_8C08054C,pc),r0 ; r0 set to 0x19c
	mov.b r3,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x19d
	mov.b r4,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x1A1
	mov 0x46,r3 ; r3 set to 0x46
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1Ac
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19e
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(loc_8C08055C,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	add 0x7C,r2
	shll r0 ; r0 set to 0x188
	mov.w @(r0,r2),r1
	mov 0x15,r5 ; r5 set to 0x15
	mov 0x14,r6 ; r6 set to 0x14
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(loc_8C08054E,pc),r0 ; r0 set to 0x12c
	mov.l @(loc_8C080560,pc),r2 ; r2 set to 0x8C034E8c
	mov.b r4,@(r0,r14)
	jsr @r2
	mov r14,r4 ; r4 ??? bc r14 is ???	
	lds.l @r15+,pr
	mov 0x02,r7 ; r7 set to 0x02
	mov.l @(loc_8C080564,pc),r3 ; r3 set to 0x8C03544c
	mov r7,r6 ; r6 set to 0x02
	mov r7,r5 ; r5 set to 0x02
	mov.l @r15+,r13
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C080480:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C080488:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0xD8,PC),r1
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop 
	mov.w @(0xB2,PC),r3
	mov.w @(0xAE,PC),r4
	mov.l @(0x18,r14),r5
	add r14,r4
	add r5,r3
	mov.b @(0x1,r4),r0
	mov.b @r3,r3
	cmp/eq r3,r0
	bt loc_8c0804b2
	mov 0x02,r0
	mov.b r0,@(0x4,r14)

loc_8C0804B2:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C0804B8:
	mov.w @(0x98,PC),r0
	mov.l @(0x18,r4),r5
	mov.b @(r0,r5),r3
	tst r3,r3
	bt loc_8c0804e0
	mov.b @(0x5,r4),r0
	mov 0x00,r3
	mov 0x01,r2
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov.w @(0x84,PC),r0
	mov.b r3,@(r0,r5)
	add 0xEB,r0
	mov.b r2,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)

loc_8C0804E0:
	rts
	nop

;-------------------------------------------------------------------------------
loc_8C0804E4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x34,r0 ; r0 set to 0x34
	sts.l pr,@-r15
	mov.l @(0x18,r14),r13
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C080556,pc),r0 ; r0 set to 0x19e
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C080528
	mov 0x02,r0 ; r0 set to 0x02
	mov.l @(loc_8C08056C,pc),r3 ; r3 set to 0x8C059150
	mov.b r0,@(0x04,r14)
	mov 0x14,r5 ; r5 set to 0x14
	mov.w @(loc_8C080558,pc),r0 ; r0 set to 0x1B0
	jsr @r3
	mov.l @(r0,r14),r4
	mov.l @(loc_8C080570,pc),r3 ; r3 set to 0x8C104DF8
	mov 0x04,r5 ; r5 set to 0x04
	mov.w @(loc_8C080558,pc),r0 ; r0 set to 0x1B0
	jsr @r3
	mov.l @(r0,r14),r4
	lds.l @r15+,pr
	mov.l @(loc_8C080574,pc),r2 ; r2 set to 0x8C042008
	mov r14,r4
	mov 0x1F,r5 ; r5 set to 0x1f
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c080528:
	mov.l @(loc_8c080578,pc),r3
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c08057c,pc),r2
	jsr @r2
	mov r14,r4
	mov.w @(loc_8C080554,pc),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bt loc_8c080542
	mov.b @(0x04,r14),r0 
	add 0x01,r0
	mov.b r0,@(0x04,r14) 

loc_8c080542:
	lds.l @r15+,pr 
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c08054a:
	#data 0x0130
loc_8c08054c:
	#data 0x019C
loc_8c08054e:
	#data 0x012C
loc_8c080550:
	#data 0x00CC
loc_8c080552:
	#data 0x0159
loc_8C080554:
	#data 0x0141
loc_8c080556:
	#data 0x019E
loc_8c080558:
	#data 0x01B0
	#align4

loc_8c08055c:
	#data 0x8c2896b0
loc_8c080560:
	#data bank03.loc_8c034e8c
loc_8c080564:
	#data bank03.loc_8c03544c
loc_8c080568:
	#data bank15.loc_8c154030
loc_8c08056c:
	#data bank05.loc_8c059150
loc_8c080570:
	#data bank10.loc_8c104df8
loc_8c080574:
	#data bank04.loc_8c042008
loc_8c080578:
	#data bank03.loc_8c034dee
loc_8c08057c:
	#data bank04.loc_8c045748

;==============================================
loc_8c080580:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x44,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c080596
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8c080596:
	mov.l @(0x18,r14),r4
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0805AA:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	mov r3,r5 ; r5 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0805C8,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0805D0,pc),r3 ; r3 set to 0x8C035162
	jmp @r3
	mov.l @(0x18,r4),r4

loc_8C0805BE:
	mov.l @(loc_8C0805D4,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8C0805C4:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0805C8:
	#data 0x012c
	#align4

loc_8C0805CC:
	#data bank03.loc_8c034dee
loc_8C0805D0:
	#data bank03.loc_8c035162
loc_8C0805D4:
	#data bank04.loc_8c0450C0

;==============================================
;Unused
loc_8c0805d8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b r5,@r15
	mov 0x01,r5
	mov.l @(0x178,PC),r3
	mov r4,r13
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bf.s loc_8c0805f8
	mov r0,r14
	bra loc_8c080700
	nop

loc_8c0805f8:
	mov.l @(0x168,PC),r3
	mov.w @(0x156,PC),r1
	mov.l r3,@(0x10,r14)
	mov.b @(0x1,r13),r0
	add r14,r1
	mov.w @(0x144,PC),r3
	mov.b r0,@(0x1,r14)
	mov 0x26,r0
	mov.w r3,@(r0,r14)
	mov 0x20,r0
	mov.b @r15,r2
	mov.b r2,@(r0,r14)
	mov.w @(0x138,PC),r0
	mov.l r13,@(0x18,r14)
	mov.w @(r0,r13),r3
	mov.w @(0x134,PC),r0
	mov.w r3,@(r0,r14)
	mov.w @(0x132,PC),r0
	mov.b @(r0,r13),r2
	mov.w @(0x130,PC),r0
	mov.b r2,@(r0,r14)
	mov.w @(0x126,PC),r0
	mov.b @(r0,r13),r3
	mov.w @(0x124,PC),r0
	mov.b r3,@(r0,r14)
	mov.b @(0x4,r14),r0
	mov.l @(0x138,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x11E,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x116,PC),r0
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
	mov.w @(0xF2,PC),r0
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
	mov 0x20,r2
	mov.b @(r0,r1),r3
	mov 0x00,r4
	mov.b r3,@(r0,r14)
	mov 0x24,r3
	mov.w @(0xC4,PC),r0
	mov.b r2,@(r0,r14)
	add 0xFF,r0
	mov.b r2,@(r0,r14)
	add 0x03,r0
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r3,@(r0,r14)
	mov r3,r0
	nop 
	mov.b r4,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r13),fr3
	mov 0x45,r2
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xA2,PC),r0
	mov.w @(r0,r13),r3
	mov.w r3,@(r0,r14)
	add 0x71,r0
	mov.b r2,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0xA4,PC),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0x74,PC),r0
	mov.b r5,@(r0,r14)
	mov r14,r5
	bsr loc_8c08082e
	mov r13,r4
	mov.w @(0x60,PC),r0
	mov 0x16,r5
	mov.l @(0x84,PC),r3
	mov.b @(r0,r13),r6
	extu.b r6,r6
	add 0x07,r6
	jsr @r3
	mov r14,r4
	mov.l @(0x7C,PC),r2
	mov r14,r5
	jsr @r2
	mov r13,r4
loc_8c080700:
	mov r14,r0
	nop 
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C08070E:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	mov 0x02,r3
	extu.b r0,r0
	cmp/ge r3,r0
	bt loc_8c080722
	bsr loc_8c08082a
	mov r14,r4

loc_8C080722:
	mov.b @(0x4,r14),r0
	mov r14,r4
	mov.l @(0x54,PC),r1
	extu.b r0,r0
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C080734:
	rts
	nop

;-------------------------------------------------------------------------------
loc_8C080738:
	mov r4,r3
	mov.l @(loc_8C080780,pc),r1 ; r1 set to 0x8C15404c
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c08074a:
	#data 0x1404
loc_8c08074c:
	#data 0x0158
loc_8c08074e:
	#data 0x00cc
loc_8c080750:
	#data 0x0159
loc_8c080752:
	#data 0x00cd
loc_8c080754:
	#data 0x00dc
loc_8c080756:
	#data 0x012c
loc_8c080758:
	#data 0x01a3
loc_8c08075a:
	#data 0x013d
loc_8c08075c:
	#data 0x0130
	#align4

loc_8C080760:
	#data bank04.loc_8c044F12
loc_8C080764:
	#data loc_8C08070e
loc_8C080768:
	#data bank12.loc_8c129560
loc_8C08076C:
	#data bank12.loc_8c1294C8
loc_8C080770:
	#data 0x8C2896B0
loc_8C080774:
	#data bank03.loc_8c034e8c
loc_8C080778:
	#data loc_8C0808Ac
loc_8C08077C:
	#data bank15.loc_8c15403c
loc_8C080780:
	#data bank15.loc_8c15404c

;==============================================
loc_8C080784:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(0x10C,PC),r3
	mov.w @(0xFC,PC),r12
	mov.l @(0x18,r13),r14
	jsr @r3
	add r13,r12
	mov.w @(0xF6,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c0807d2
	mov.w @(0xEE,PC),r0
	mov 0x26,r2
	mov.b @(r0,r14),r3
	extu.b r3,r3
	cmp/ge r2,r3
	bf loc_8c0807d2
	mov.w @(0xE4,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x07,r0
	bf loc_8c0807c0
	mov.b @(0x6,r14),r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bt loc_8c0807d2

loc_8C0807C0:
	mov.w @(0xD2,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x0C,r0
	bf loc_8c0807de
	mov.b @(0x6,r14),r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bf loc_8c0807de

loc_8C0807D2:
	mov 0x02,r0
	mov.b r0,@(0x4,r13)
	mov 0x00,r3
	mov.w @(0xBC,PC),r0
	bra loc_8c080808
	mov.b r3,@(r0,r13)

loc_8C0807DE:
	mov r13,r5
	bsr loc_8c08082e
	mov r14,r4
	mov.w @(0xAC,PC),r0
	mov.b @r12,r2
	mov.b @(r0,r14),r3
	cmp/eq r3,r2
	bt loc_8c080808
	mov.b @(r0,r14),r2
	mov r13,r4
	mov.l @(0xAC,PC),r3
	mov 0x16,r5
	mov.b r2,@r12
	lds.l @r15+,pr
	mov.b @r12,r6
	mov.l @r15+,r12
	extu.b r6,r6
	add 0x07,r6
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C080808:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C080812:
	rts
	nop

;-------------------------------------------------------------------------------
loc_8C080816:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C080898,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;-------------------------------------------------------------------------------
loc_8C080824:
	mov.l @(loc_8C0808A4,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8C08082A:
	rts
	nop

;-------------------------------------------------------------------------------
loc_8C08082E:
	mov.w @(0x62,PC),r3
	mov 0x34,r0
	fmov @(r0,r4),fr3
	add r4,r3
	mov.l @(0x70,PC),r6
	fmov fr3,@(r0,r5)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	mov r0,r2
	add r5,r2
	fmov fr3,@(r0,r5)
	mov.b @r3,r3
	fmov @r2,fr2
	extu.b r3,r3
	add 0xDA,r3
	shll2 r3
	add r6,r3
	mov.w @(0x2,r3),r0
	mov r0,r3
	mov.w @(0x3C,PC),r0
	lds r3,fpul
	float fpul,fr3
	fadd fr3,fr2
	fmov fr2,@r2
	mov.b @(r0,r4),r3
	extu.b r3,r3
	add 0xDA,r3
	shll2 r3
	add r3,r6
	mov.w @r6,r3
	lds r3,fpul
	float fpul,fr4
	add 0xD8,r0
	mov.w @(r0,r4),r2
	tst r2,r2
	bf.s loc_8c08087a
	mov.w r2,@(r0,r5)
	fneg fr4

loc_8C08087A:
	mov 0x34,r0
	fmov @(r0,r5),fr3
	mov 0xFF,r2
	fadd fr4,fr3
	fmov fr3,@(r0,r5)
	mov 0x24,r0
	mov.b @(r0,r4),r3
	mov.b r3,@(r0,r5)
	mov 0x31,r0

loc_8c08088c:
	rts 
	mov.b r2,@(r0,r5)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c080890:
	#data 0x00Cc
loc_8c080892:
	#data 0x01D0
loc_8c080894:
	#data 0x0158
loc_8c080896:
	#data 0x01E9
loc_8c080898:
	#data 0x012c
	#align4

loc_8C08089C:
	#data bank03.loc_8c034dee
loc_8C0808A0:
	#data bank03.loc_8c034e8c
loc_8C0808A4:
	#data bank04.loc_8c0450C0
loc_8C0808A8:
	#data bank13.loc_8c13ADE0

;==============================================
loc_8C0808AC:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	mov 0x01,r5 ; r5 set to 0x01
	mov.l @(loc_8C080A1C,pc),r3 ; r3 set to 0x8C044F12
	mov r4,r13
	mov 0x00,r6 ; r6 set to 0x00
	jsr @r3
	mov r6,r4 ; r4 set to 0x00
	tst r0,r0
	bf/s loc_8C0808Ce
	mov r0,r14
	bra loc_8C0809F8
	nop

loc_8C0808CE:
	mov.l @(loc_8C080A20,pc),r3 ; r3 set to 0x8C080A38
	mov.w @(loc_8C080A12,pc),r1 ; r1 set to 0xDc
	mov.l r3,@(0x10,r14)
	mov.b @(0x01,r13),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C080A08,pc),r3 ; r3 set to 0x1405
	mov.b r0,@(0x01,r14)
	mov 0x26,r0 ; r0 set to 0x26
	mov.w r3,@(r0,r14)
	mov.w @(loc_8C080A0A,pc),r0 ; r0 set to 0x158
	mov.l r13,@(0x18,r14)
	mov.l @r15,r3 ; r3 ??? bc r15 is ???	
	mov.l r3,@(0x14,r14)
	mov.w @(r0,r13),r2
	mov.w @(loc_8C080A0C,pc),r0 ; r0 set to 0xCc
	mov.w r2,@(r0,r14)
	mov.w @(loc_8C080A0E,pc),r0 ; r0 set to 0x159
	mov.b @(r0,r13),r3
	mov.w @(loc_8C080A10,pc),r0 ; r0 set to 0xCd
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C080A0A,pc),r0 ; r0 set to 0x158
	mov.l @(loc_8C080A24,pc),r3 ; r3 set to 0x8C129560
	mov.b @(r0,r13),r2
	mov.w @(loc_8C080A0C,pc),r0 ; r0 set to 0xCc
	mov.b r2,@(r0,r14)
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0xCd
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C080A12,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C080A14,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C080A16,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C080A28,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x20,r2 ; r2 set to 0x20
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov 0x00,r4 ; r4 set to 0x00
	mov.b r3,@(r0,r14)
	mov 0x24,r3 ; r3 set to 0x24
	mov.w @(loc_8C080A18,pc),r0 ; r0 set to 0x13d
	mov.b r2,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x13c
	mov.b r2,@(r0,r14)
	add 0x03,r0 ; r0 set to 0x13f
	mov.b r3,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x13e
	mov.b r3,@(r0,r14)
	mov r3,r0 ; r0 set to 0x24
	nop
	mov.b r4,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
	mov 0x45,r2 ; r2 set to 0x45
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C080A1A,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r13),r3
	mov.w r3,@(r0,r14)
	add 0x71,r0 ; r0 set to 0x1A1
	mov.b r2,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1Ac
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19e
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(loc_8C080A2C,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2 ; r2 ??	
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(loc_8C080A14,pc),r0 ; r0 set to 0x12c
	mov.b r5,@(r0,r14)
	mov 0x48,r0 ; r0 set to 0x48
	mov.l @r15,r2
	mov.l @(r0,r2),r1
	mov r14,r5 ; r5 ??? bc r14 is ???	
	mov.l r1,@(r0,r14)
	bsr loc_8C080B84
	mov r13,r4 ; r4 ??? bc r13 is ???	
	mov.l @(loc_8C080A30,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x16,r5 ; r5 set to 0x16
	mov 0x3A,r6 ; r6 set to 0x3a
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C080A34,pc),r12 ; r12 set to 0x8C080C5c
	mov r14,r5 ; r5 ??? bc r14 is ???	
	mov 0x00,r6 ; r6 set to 0x00
	jsr @r12
	mov r13,r4
	mov r14,r5
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r12
	mov r13,r4
	mov r14,r5
	mov 0x02,r6 ; r6 set to 0x02
	jsr @r12
	mov r13,r4
	mov r14,r5
	mov 0x03,r6 ; r6 set to 0x03
	jsr @r12
	mov r13,r4
	mov r14,r5
	mov 0x04,r6 ; r6 set to 0x04
	jsr @r12
	mov r13,r4

loc_8C0809F8:
	mov r14,r0 ; r0 ??? bc r14 is ???	
	nop
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12 ; r12 ??? bc r15 is ???	
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C080A08:
	#data 0x1405
loc_8C080A0A:
	#data 0x0158
loc_8C080A0C:
	#data 0x00Cc
loc_8C080A0E:
	#data 0x0159
loc_8C080A10:
	#data 0x00Cd
loc_8C080A12:
	#data 0x00Dc
loc_8C080A14:
	#data 0x012c
loc_8C080A16:
	#data 0x01A3
loc_8C080A18:
	#data 0x013d
loc_8C080A1A:
	#data 0x0130
	#align4

loc_8C080A1C:
	#data bank04.loc_8c044F12
loc_8C080A20:
	#data loc_8C080A38
loc_8C080A24:
	#data bank12.loc_8c129560
loc_8C080A28:
	#data bank12.loc_8c1294C8
loc_8C080A2C:
	#data 0x8C2896B0
loc_8C080A30:
	#data bank03.loc_8c034e8c
loc_8C080A34:
	#data loc_8C080C5c

;==============================================
loc_8C080A38:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	mov 0x02,r3
	extu.b r0,r0
	cmp/ge r3,r0
	bt loc_8c080a4c
	bsr loc_8c080b80
	mov r14,r4

loc_8C080A4C:
	mov.b @(0x4,r14),r0
	mov r14,r4
	mov.l @(0x114,PC),r1
	extu.b r0,r0
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C080A5E:
	rts
	nop

;----------------------------------------------
loc_8C080A62:
	mov r4,r3
	mov.l @(loc_8C080B6C,pc),r1 ; r1 set to 0x8C154064
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C080A74:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0xDC,PC),r3
	mov r4,r13
	mov.l @(0x18,r13),r14
	add r13,r3
	mov.l r3,@r15
	mov.l @(0xE8,PC),r3
	jsr @r3
	mov r13,r4
	mov.w @(0xCE,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c080aca
	mov.w @(0xC6,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x07,r0
	bf loc_8c080ab0
	mov.b @(0x6,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt loc_8c080ae2               ; loc_8c080ade+0x4
	mov.b @(0x6,r14),r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bt loc_8c080aca

loc_8C080AB0:
	mov.w @(0xAC,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x0C,r0
	bf loc_8c080ad6
	mov.b @(0x6,r14),r0
	extu.b r0,r0
	cmp/eq 0x07,r0
	bt loc_8c080ae2               ; loc_8c080ade+0x4
	mov.b @(0x6,r14),r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bf loc_8c080ad6

loc_8C080ACA:
	mov 0x02,r0
	mov.b r0,@(0x4,r13)
	mov 0x00,r3
	mov.w @(0x8E,PC),r0
	bra loc_8c080b20
	mov.b r3,@(r0,r13)

loc_8C080AD6:
	mov.w @(0x8A,PC),r0
	mov 0x26,r3
	mov.b @(r0,r14),r2
	extu.b r2,r2
	cmp/ge r3,r2
	bt loc_8c080afa

loc_8C080AE2:
	mov.b @(0x5,r13),r0
	mov 0x16,r5
	mov r13,r4
	mov 0x3C,r6
	add 0x01,r0
	mov.b r0,@(0x5,r13)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x80,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C080AFA:
	mov.w @(0x66,PC),r0
	mov r14,r4
	mov.l @r15,r2
	mov r13,r5
	mov.b @(r0,r14),r3
	mov.b r3,@r2
	mov.b @(r0,r14),r2
	mov.l @(0x6C,PC),r0
	extu.b r2,r2
	add 0xDA,r2
	shll2 r2
	mov.l @(r0,r2),r3
	mov 0x48,r0
	mov.l r3,@(r0,r13)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c080b84
	mov.l @r15+,r14

loc_8C080B20:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C080B2A:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x40,PC),r3
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c080b40
	mov.l @r15,r3
	mov 0x02,r0
	mov.b r0,@(0x4,r3)

loc_8C080B40:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;-------------------------------------------------------------------------------
loc_8C080B48:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C080B62,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;-------------------------------------------------------------------------------
loc_8C080B56:
	mov.l @(loc_8C080B7C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C080B5c:
	#data 0x00Cc
loc_8C080B5e:
	#data 0x01D0
loc_8C080B60:
	#data 0x01E9
loc_8C080B62:
	#data 0x012c
loc_8C080B64:
	#data 0x0158
	#align4

loc_8C080B68:
	#data bank15.loc_8c154054
loc_8C080B6C:
	#data bank15.loc_8c154064
loc_8C080B70:
	#data bank03.loc_8c034dee
loc_8C080B74:
	#data bank03.loc_8c034e8c
loc_8C080B78:
	#data bank13.loc_8c13ADFc
loc_8C080B7C:
	#data bank04.loc_8c0450C0

;-------------------------------------------------------------------------------
loc_8C080B80:
	rts
	nop

;-------------------------------------------------------------------------------
loc_8c080b84:
	mov.l r14,@-r15
	mova @(loc_8C080C48,pc),r0 
	mov.l r13,@-r15
	mov r4,r13
	fmov.s fr15,@-r15
	mov r5,r14
	fmov.s fr14,@-r15
	fmov.s fr13,@-r15
	fmov.s fr12,@-r15
	sts.l pr,@-r15
	fmov.s @r0,fr14
	mova @(loc_8C080C4C,pc),r0 
	fmov.s @r0,fr13
	mov 0x48,r0
	mov.l @(loc_8c080c50,pc),r3
	jsr @r3
	mov.l @(r0,r14),r4
	mov.l @(loc_8c080c54,pc),r3
	mov 0x48,r0
	fmov fr0,fr12
	jsr @r3
	mov.l @(r0,r14),r4
	fmov fr13,fr3
	fmul fr0,fr3
	fmov fr14,fr0
	mov 0x48,r0
	mov.l @(loc_8c080c54,pc),r3
	fmac fr0,fr12,fr3
	fmov fr3,fr15
	jsr @r3
	mov.l @(r0,r14),r4
	mov.l @(loc_8c080c50,pc),r3
	mov 0x48,r0
	fmov fr0,fr12
	jsr @r3
	mov.l @(r0,r14),r4
	mov.l @(0x14,r14),r4
	mov 0x34,r0
	fmul fr0,fr13
	fmov fr14,fr0
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r14) 
	mov 0x38,r0
	fmov.s @(r0,r4),fr3
	fmac fr0,fr12,fr13
	fmov.s fr3,@(r0,r14) 
	mov.w @(loc_8C080C44,pc),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bt/s loc_8c080bec
	fmov fr13,fr4
	fneg fr15

loc_8c080bec:
	mov 0x34,r0
	mov.l @(loc_8c080c58,pc),r4
	fmov.s @(r0,r14),fr3
	fadd fr15,fr3
	fmov.s fr3,@(r0,r14) 
	mov 0x38,r0
	fmov.s @(r0,r14),fr2
	fadd fr4,fr2
	fmov.s fr2,@(r0,r14) 
	mov.w @(loc_8C080C46,pc),r0
	mov.b @(r0,r13),r3
	mov 0x50,r0
	extu.b r3,r3
	add 0xDA,r3
	shll2 r3
	shll r3
	add r4,r3
	fmov.s @r3,fr3
	fmov.s fr3,@(r0,r14) 
	mov.w @(loc_8C080C46,pc),r0
	mov.b @(r0,r13),r3
	mov 0x04,r0
	extu.b r3,r3
	add 0xDA,r3
	shll2 r3
	shll r3
	add r3,r4
	fmov.s @(r0,r4),fr3
	mov 0x54,r0
	fmov.s fr3,@(r0,r14) 
	mov 0x24,r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14) 
	mov 0x31,r0
	mov 0xFF,r2
	mov.b r2,@(r0,r14) 
	lds.l @r15+,pr 
	fmov.s @r15+,fr12
	fmov.s @r15+,fr13
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C080C44:
	#data 0x01D2
loc_8C080C46:
	#data 0x0158
	#align4

loc_8C080C48:
	#data 0xC28C0000
loc_8C080C4C:
	#data 0xC1092492
#align4
loc_8c080c50:
	#data bank11.loc_8c11e2e0
loc_8c080c54:
	#data bank11.loc_8c11e860
loc_8c080c58:
	#data bank13.loc_8c13ae18

;----------------------------------------------
loc_8C080C5C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r5,@r15
	mov r4,r13
	mov r6,r0
	nop
	mov.l @(loc_8C080DD4,pc),r3 ; r3 set to 0x8C044F12
	mov 0x01,r5 ; r5 set to 0x01
	mov.b r0,@(0x04,r15)
	mov 0x00,r6 ; r6 set to 0x00
	jsr @r3
	mov r6,r4 ; r4 set to 0x00
	tst r0,r0
	bf/s loc_8C080C82
	mov r0,r14
	bra loc_8C080DAc
	nop

loc_8C080C82:
	mov.l @(loc_8C080DD8,pc),r3 ; r3 set to 0x8C080DEc
	mov.w @(loc_8C080DC4,pc),r1 ; r1 set to 0xDc
	mov.l r3,@(0x10,r14)
	mov.b @(0x01,r13),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C080DBA,pc),r3 ; r3 set to 0x1406
	mov.b r0,@(0x01,r14)
	mov 0x26,r0 ; r0 set to 0x26
	mov.w r3,@(r0,r14)
	mov.w @(loc_8C080DBC,pc),r0 ; r0 set to 0x158
	mov.l r13,@(0x18,r14)
	mov.l @r15,r3 ; r3 ??? bc r15 is ???	
	mov.l r3,@(0x14,r14)
	mov.w @(r0,r13),r2
	mov.w @(loc_8C080DBE,pc),r0 ; r0 set to 0xCc
	mov.w r2,@(r0,r14)
	mov.w @(loc_8C080DC0,pc),r0 ; r0 set to 0x159
	mov.b @(r0,r13),r3
	mov.w @(loc_8C080DC2,pc),r0 ; r0 set to 0xCd
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C080DBC,pc),r0 ; r0 set to 0x158
	mov.l @(loc_8C080DDC,pc),r3 ; r3 set to 0x8C129560
	mov.b @(r0,r13),r2
	mov.w @(loc_8C080DBE,pc),r0 ; r0 set to 0xCc
	mov.b r2,@(r0,r14)
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0xCd
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C080DC4,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C080DC6,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C080DC8,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C080DE0,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x20,r2 ; r2 set to 0x20
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov 0x00,r4 ; r4 set to 0x00
	mov.b r3,@(r0,r14)
	mov 0x24,r3 ; r3 set to 0x24
	mov.w @(loc_8C080DCA,pc),r0 ; r0 set to 0x13d
	mov.b r2,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x13c
	mov.b r2,@(r0,r14)
	add 0x03,r0 ; r0 set to 0x13f
	mov.b r3,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x13e
	mov.b r3,@(r0,r14)
	mov r3,r0 ; r0 set to 0x24
	nop
	mov.b r4,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
	mov r2,r1 ; r1 set to 0x20
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.l @(loc_8C080DE4,pc),r6 ; r6 set to 0x8C2896B0
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr3
	mov 0x42,r5 ; r5 set to 0x42
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C080DCC,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r13),r3
	mov.w r3,@(r0,r14)
	mov.b @(0x04,r15),r0
	mov.b r0,@r1
	mov.w @(loc_8C080DCE,pc),r0 ; r0 set to 0x19c
	mov.b r5,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x19d
	mov.b r5,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x1A1
	mov 0x45,r5 ; r5 set to 0x45
	mov.b r5,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1Ac
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19e
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r4,@(r0,r14)
	mov.l @r6,r3
	mov.b @(0x02,r14),r0
	add 0x7C,r3
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	mov.w @(r0,r3),r2 ; r2 ??? bc r3 is ???	
	add 0x01,r2
	mov.w r2,@(r0,r3)
	mov.w @(loc_8C080DD0,pc),r0 ; r0 set to 0x1A1
	mov.b r5,@(r0,r13)
	add 0x0B,r0 ; r0 set to 0x1Ac
	mov.w r4,@(r0,r13)
	add 0xF2,r0 ; r0 set to 0x19e
	mov.b r4,@(r0,r13)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r4,@(r0,r13)
	mov r14,r5 ; r5 ??? bc r14 is ???	
	mov.b @(0x02,r13),r0
	mov.l @r6,r3
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r3
	mov.w @(r0,r3),r2
	add 0x01,r2
	mov.w r2,@(r0,r3)
	mov.w @(loc_8C080DC6,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	bsr loc_8C080F04
	mov r13,r4 ; r4 ??? bc r13 is ???	
	mov.l @(loc_8C080DE8,pc),r2 ; r2 set to 0x8C034E8c
	mov 0x16,r5 ; r5 set to 0x16
	mov 0x42,r6 ; r6 set to 0x42
	jsr @r2
	mov r14,r4

loc_8C080DAC:
	mov r14,r0 ; r0 ??? bc r14 is ???	
	nop
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C080DBA:
	#data 0x1406
loc_8C080DBC:
	#data 0x0158
loc_8C080DBE:
	#data 0x00Cc
loc_8C080DC0:
	#data 0x0159
loc_8C080DC2:
	#data 0x00Cd
loc_8C080DC4:
	#data 0x00Dc
loc_8C080DC6:
	#data 0x012c
loc_8C080DC8:
	#data 0x01A3
loc_8C080DCA:
	#data 0x013d
loc_8C080DCC:
	#data 0x0130
loc_8C080DCE:
	#data 0x019c
loc_8C080DD0:
	#data 0x01A1
	#align4

loc_8C080DD4:
	#data bank04.loc_8c044F12
loc_8C080DD8:
	#data loc_8C080DEc
loc_8C080DDC:
	#data bank12.loc_8c129560
loc_8C080DE0:
	#data bank12.loc_8c1294C8
loc_8C080DE4:
	#data 0x8C2896B0
loc_8C080DE8:
	#data bank03.loc_8c034e8c

;----------------------------------------------
loc_8C080DEC:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	mov 0x02,r3
	extu.b r0,r0
	cmp/ge r3,r0
	bt loc_8c080e00
	bsr loc_8c080ee0
	mov r14,r4

loc_8C080E00:
	mov.b @(0x4,r14),r0
	mov r14,r4
	mov.l @(0xE8,PC),r1
	extu.b r0,r0
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C080E12:
	rts
	nop

;-------------------------------------------------------------------------------
loc_8C080E16:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0xC0,PC),r3
	mov r4,r14
	mov.l @(0x18,r14),r13
	add r14,r3
	mov.l r3,@r15
	mov.l @(0xC8,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0xB2,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c080e60
	mov 0x00,r12
	mov.b r12,@(r0,r14)
	add 0x60,r0
	mov 0x45,r3
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r12,@(r0,r14)
	add 0xF2,r0
	mov.b r12,@(r0,r14)
	add 0x26,r0
	mov.l @(0xA8,PC),r3
	mov.l r12,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)

loc_8C080E60:
	mov.l @(0x98,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x7E,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c080ea4
	mov.w @(0x76,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x07,r0
	bf loc_8c080e8a
	mov.b @(0x6,r13),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt loc_8c080ea4
	mov.b @(0x6,r13),r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bt loc_8c080ea4

loc_8C080E8A:
	mov.w @(0x5C,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x0C,r0
	bf loc_8c080eae
	mov.b @(0x6,r13),r0
	extu.b r0,r0
	cmp/eq 0x07,r0
	bt loc_8c080ea4
	mov.b @(0x6,r13),r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bf loc_8c080eae

loc_8C080EA4:
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x40,PC),r0
	bra loc_8c080ebe
	nop 

loc_8C080EAE:
	mov.w @(0x3C,PC),r0
	mov r14,r5
	mov.l @r15,r3
	mov.b @(r0,r13),r2
	mov.b r2,@r3
	bsr loc_8c080f04
	mov r13,r4
	mov 0x24,r0

loc_8C080EBE:
	mov.b r12,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C080ECC:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C080EEC,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;-------------------------------------------------------------------------------
loc_8C080EDA:
	mov.l @(loc_8C080F00,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8C080EE0:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C080EE4:
	#data 0x00Cc
loc_8C080EE6:
	#data 0x0141
loc_8C080EE8:
	#data 0x01D0
loc_8C080EEa:
	#data 0x01E9
loc_8C080EEC:
	#data 0x012c
loc_8C080EEe:
	#data 0x0158
	#align4

loc_8C080EF0:
	#data bank15.loc_8c15406c
loc_8C080EF4:
	#data bank03.loc_8c034dee
loc_8C080EF8:
	#data 0x8C2896B0
loc_8C080EFC:
	#data bank04.loc_8c045748
loc_8C080F00:
	#data bank04.loc_8c0450C0

;==============================================
loc_8c080f04:
	mov.l r14,@-r15
	mov.l r13,@-r15
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	fmov.s fr13,@-r15
	fmov.s fr12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x20,r0
	mov r5,r13
	mov.l r4,@r15
	mov.b @(r0,r13),r3
	mov.l @(loc_8c080fa0,pc),r0
	extu.b r3,r3
	mov.l @(0x14,r13),r14
	shll r3
	mov.w @(r0,r3),r3
	mova @(loc_8C080FA4,pc),r0 
	fmov.s @r0,fr13
	mov 0x48,r0
	lds r3,fpul 
	mov.l @(loc_8c080fa8,pc),r3
	float fpul,fr14
	jsr @r3
	mov.l @(r0,r14),r4
	mov.l @(loc_8c080fac,pc),r3
	mov 0x48,r0
	fmov fr0,fr12
	jsr @r3
	mov.l @(r0,r14),r4
	fmov fr13,fr3
	fmul fr0,fr3
	fmov fr14,fr0
	mov 0x48,r0
	mov.l @(loc_8c080fac,pc),r3
	fmac fr0,fr12,fr3
	fmov fr3,fr15
	jsr @r3
	mov.l @(r0,r14),r4
	mov.l @(loc_8c080fa8,pc),r3
	mov 0x48,r0
	fmov fr0,fr12
	jsr @r3
	mov.l @(r0,r14),r4
	mov 0x34,r0
	fmul fr0,fr13
	fmov.s @(r0,r14),fr3
	fmov fr14,fr0
	fmov.s fr3,@(r0,r13) 
	mov 0x38,r0
	fmov.s @(r0,r14),fr3
	fmac fr0,fr12,fr13
	fmov.s fr3,@(r0,r13) 
	mov.l @r15,r3
	mov.w @(loc_8C080F9E,pc),r0
	mov.b @(r0,r3),r2
	tst r2,r2
	bt/s loc_8c080f7c
	fmov fr13,fr4
	fneg fr15

loc_8c080f7c:
	mov 0x34,r0
	fmov.s @(r0,r13),fr3
	fadd fr15,fr3
	fmov.s fr3,@(r0,r13) 
	mov 0x38,r0
	fmov.s @(r0,r13),fr2
	fadd fr4,fr2
	fmov.s fr2,@(r0,r13) 
	add 0x04,r15
	lds.l @r15+,pr 
	fmov.s @r15+,fr12
	fmov.s @r15+,fr13
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C080F9E:
	#data 0x01D2
	#align4

loc_8c080fa0:
	#data bank13.loc_8c13ae88
loc_8C080FA4:
	#data 0x80000000
loc_8c080fa8:
	#data bank11.loc_8c11e2e0
loc_8c080fac:
	#data bank11.loc_8c11e860

;==============================================
;Unused
loc_8c080fb0:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r0
	nop 
	mov.l @(0xC4,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c080fec
	mov r0,r4
	mov.l @(0xB4,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.w @(0xA4,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov.w @(0x98,PC),r0
	mov.l @r15,r2
	mov.b @(r0,r2),r3
	mov 0x23,r0
	mov.b r3,@(r0,r4)

loc_8c080fec:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;==============================================
loc_8c080ff4:
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
	bt.s loc_8c08102a
	mov r0,r4
	mov.l @(0x74,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x18,r14),r2
	mov.l r2,@(0x18,r4)
	mov.w @(0x60,PC),r2
	mov.l r14,@(0x14,r4)
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)
	mov 0x23,r0
	mov.b @(r0,r14),r3
	mov.b r3,@(r0,r4)

loc_8c08102a:
	mov r4,r0
	nop 
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C081036:
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C081088,pc),r0 ; r0 set to 0x8C15407c
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

loc_8C08104A:
	mov r4,r3
	mov.l @(loc_8C08108C,pc),r1 ; r1 set to 0x8C154088
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C08105C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8C081090,pc),r2 ; r2 set to 0x8C287AE8
	mov 0x03,r1 ; r1 set to 0x03
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @r2,r3
	cmp/ge r1,r3
	bt loc_8C081094
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8c08107c:
	#data 0x1500
loc_8c08107e:
	#data 0x0411
	#align4

loc_8C081080:
	#data bank04.loc_8c044F12
loc_8C081084:
	#data loc_8C081036
loc_8C081088:
	#data bank15.loc_8c15407c
loc_8C08108C:
	#data bank15.loc_8c154088
loc_8C081090:
	#data 0x8C287AE8

;==============================================
loc_8C081094:
	mov 0x02,r5 ; r5 set to 0x02
	bsr loc_8C080FF4
	mov r14,r4
	mov 0x01,r5 ; r5 set to 0x01
	bsr loc_8C080FF4
	mov r14,r4
	mov.w @(loc_8C0811BE,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	mov.l @(loc_8C0811D0,pc),r3 ; r3 set to 0x8C129560
	add r0,r2
	mov.w @(loc_8C0811C0,pc),r0 ; r0 set to 0xC0
	mov.w @(loc_8C0811BE,pc),r1 ; r1 set to 0xDc
	jsr @r3
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0811C2,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0811C4,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0811D4,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x3C,r2 ; r2 set to 0x3c
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov 0x00,r4 ; r4 set to 0x00
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0811C6,pc),r0 ; r0 set to 0x1A1
	mov.l @(loc_8C0811D8,pc),r3 ; r3 set to 0x8C2896B0
	mov.b r2,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1Ac
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19e
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2 ; r2 ??	
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x66,r2 ; r2 set to 0x66
	mov.b @(0x02,r14),r0
	mov 0x06,r1 ; r1 set to 0x06
	xor 0x01,r0
	mov.b r0,@(0x02,r14)
	mov.w @(loc_8C0811C8,pc),r0 ; r0 set to 0x19c
	mov.b r2,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x19d
	mov.b r1,@(r0,r14)
	mov r14,r1 ; r1 ??? bc r14 is ???	
	mov.l @(loc_8C0811D4,pc),r3 ; r3 set to 0x8C1294C8
	mov 0x78,r0 ; r0 set to 0x78
	mov.w r0,@(0x1C,r14)
	add 0x34,r1
	mov.l @(0x18,r14),r2 ; r2 ??? bc r14 is ???	
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mova @(loc_8C0811DC,pc),r0  ; r0 set to 0x8C0811Dc
	fmov.s @r0,fr4 ; r4 ??	
	mov.w @(loc_8C0811CA,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???	
	tst r3,r3
	bt loc_8C08115e
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr3
	bra loc_8C081164
	fadd fr4,fr3

loc_8C08115E:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr3
	fsub fr4,fr3

loc_8C081164:
	fmov.s fr3,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
	mov.l @(loc_8C0811E0,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	mov.b r4,@(r0,r14)
	mov 0x00,r6 ; r6 set to 0x00, r6 set to 0x00
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C081182
	mov.l @r15+,r14

loc_8c08117c:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C081182:
	mov r4,r3
	mov.l @(loc_8C0811E4,pc),r1 ; r1 set to 0x8C154098
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C081194:
	mov.w @(loc_8C0811CC,pc),r0 ; r0 set to 0x411
	sts.l pr,@-r15
	mov.l @(0x18,r4),r5
	mov.b @(r0,r5),r3
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r4),r2
	cmp/eq r2,r3
	bt loc_8C0811B6
	mov.l @(loc_8C0811E0,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x04,r0 ; r0 set to 0x04
	mov 0x03,r6 ; r6 set to 0x03
	mov.b r0,@(0x05,r4)
	jsr @r3
	mov 0x17,r5 ; r5 set to 0x17
	lds.l @r15+,pr
	rts
	mov 0x01,r0

;----------------------------------------------
loc_8C0811B6:
	mov 0x00,r0 ; r0 set to 0x00
	lds.l @r15+,pr
	rts
	nop

;-------------------------------------------------------------------------------
loc_8C0811BE:
	#data 0x00Dc
loc_8C0811C0:
	#data 0x00C0
loc_8C0811C2:
	#data 0x012c
loc_8C0811C4:
	#data 0x01A3
loc_8C0811C6:
	#data 0x01A1
loc_8C0811C8:
	#data 0x019c
loc_8C0811CA:
	#data 0x0130
loc_8C0811CC:
	#data 0x0411
	#align4

loc_8C0811D0:
	#data bank12.loc_8c129560
loc_8C0811D4:
	#data bank12.loc_8c1294C8
loc_8C0811D8:
	#data 0x8C2896B0
loc_8C0811DC:
	#data 0x430DAAAa
loc_8C0811E0:
	#data bank03.loc_8c034e8c
loc_8C0811E4:
	#data bank15.loc_8c154098

;----------------------------------------------
loc_8C0811E8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c081194
	mov r4,r14
	exts.b r0,r0
	tst r0,r0
	bf loc_8c081210
	mov.l @(0xD8,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x24,r0
	mov 0x00,r2
	mov.b r2,@(r0,r14)
	mov.w @(0xC2,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c081210
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)

loc_8C081210:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C081216:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c081194
	mov r4,r14
	exts.b r0,r0
	tst r0,r0
	bf loc_8c08126c
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bt loc_8c081230
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)

loc_8C081230:
	mov.w @(0x96,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c081240
	mov.b @(0x5,r14),r0
	add 0x01,r0
	bra loc_8c08126c
	mov.b r0,@(0x5,r14)

loc_8C081240:
	mov.w @(0x88,PC),r0
	mov.l @(0xC,r14),r2
	mov.b @(r0,r2),r3
	tst r3,r3
	bf loc_8c081250
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bf loc_8c081262

loc_8C081250:
	mov.l @(0x80,PC),r3
	mov 0x04,r0
	mov r14,r4
	mov.b r0,@(0x5,r14)
	lds.l @r15+,pr
	mov 0x03,r6
	mov 0x17,r5
	jmp @r3
	mov.l @r15+,r14

loc_8C081262:
	lds.l @r15+,pr
	mov.l @(0x70,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C08126C:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C081272:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8C081194
	mov r4,r14
	exts.b r0,r0
	tst r0,r0
	bf loc_8C0812A0
	mov.l @(loc_8C0812D0,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0812A0
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C0812D4,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x02,r6 ; r6 set to 0x02
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x17,r5 ; r5 set to 0x17
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8C0812A0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C0812A6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x24,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0812c2
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xC,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0812C2:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8c0812c8:
	#data 0x0141
loc_8c0812ca:
	#data 0x019E
loc_8c0812cc:
	#data 0x019f
loc_8c0812ce:
	#data 0x012C
	#align4

loc_8C0812D0:
	#data bank03.loc_8c034dee
loc_8C0812D4:
	#data bank03.loc_8c034e8c
loc_8C0812D8:
	#data bank04.loc_8c045748

;==============================================
loc_8C0812DC:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf loc_8c08135e
	mov.b @(0x4,r14),r0
	mov.w @(0x112,PC),r1
	add 0x01,r0
	mov.l @(0x120,PC),r3
	mov.b r0,@(0x4,r14)
	add r14,r1
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
	mov.l @(0xD4,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov 0x00,r4
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov 0x44,r3
	mov.w @(0xAC,PC),r0
	mov.b r4,@(r0,r14)
	add 0x70,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r3,@(r0,r14)

loc_8C08135E:
	mov.w @(0xA4,PC),r0
	mov.l @(0x18,r14),r4
	mov.b @(r0,r4),r3
	mov 0x23,r0
	mov.b @(r0,r14),r2
	cmp/eq r2,r3
	bf loc_8c0813ac
	mov.l @(0x14,r14),r2
	mov r14,r1
	mov.l @(0xA0,PC),r3
	add 0x34,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x8A,PC),r0
	mov.l @(0x14,r14),r4
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c08139e
	mov.w @(0x82,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c08139e
	mov.b @(0x5,r4),r0
	mov 0x01,r3
	extu.b r0,r0
	cmp/gt r3,r0
	bt loc_8c08139e
	mov.b @(0x4,r4),r0
	extu.b r0,r0
	cmp/gt r3,r0
	bf loc_8c0813b4

loc_8C08139E:
	mov.w @(0x68,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0813ac
	mov.l @(0x70,PC),r3
	jsr @r3
	mov r14,r4

loc_8C0813AC:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0817cc
	mov.l @r15+,r14

loc_8C0813B4:
	mov.w @(0x54,PC),r0
	mov.w @(0x52,PC),r1
	mov.l @(0x14,r14),r2
	mov.l @(0x58,PC),r3
	add r14,r1
	add r0,r2
	jsr @r3
	mov 0x14,r0
	mov.w @(0x46,PC),r0
	mov.l @(0x14,r14),r1
	mov.l @(r0,r1),r3
	mov.l r3,@(r0,r14)
	mov.l @(0x14,r14),r4
	mov.b @(0x4,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0813e8
	mov.b @(0x5,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0813e8
	lds.l @r15+,pr
	mov.l @(0x38,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C0813E8:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0813EE:
	mov r4,r3
	mov.l @(loc_8C081420,pc),r1 ; r1 set to 0x8C1540Ac
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c081400:
	#data 0x00Dc
loc_8c081402:
	#data 0x012C
loc_8c081404:
	#data 0x01A3
loc_8c081406:
	#data 0x0411
loc_8c081408:
	#data 0x019e
loc_8c08140a:
	#data 0x019F
loc_8c08140c:
	#data 0x0140
loc_8c08140e:
	#data 0x01C0
	#align4

loc_8C081410:
	#data bank12.loc_8c129560
loc_8C081414:
	#data bank12.loc_8c1294C8
loc_8C081418:
	#data bank05.loc_8c057B6e
loc_8C08141C:
	#data bank04.loc_8c045748
loc_8C081420:
	#data bank15.loc_8c1540Ac

;==============================================
loc_8C081424:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(loc_8C081574,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.l @(loc_8C081584,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.l @(0x18,r14),r13
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C081574,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C081576,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C081578,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C081588,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x3D,r2 ; r2 set to 0x3d
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov 0x00,r4 ; r4 set to 0x00
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C08157A,pc),r0 ; r0 set to 0x1A1
	mov.l @(loc_8C08158C,pc),r3 ; r3 set to 0x8C2896B0
	mov.b r2,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1Ac
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19e
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2 ; r2 ??	
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x66,r2 ; r2 set to 0x66
	mov.b @(0x02,r14),r0
	xor 0x01,r0
	mov.b r0,@(0x02,r14)
	mov.w @(loc_8C08157C,pc),r0 ; r0 set to 0x19c
	mov.b r2,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x19d
	mov.b r4,@(r0,r14)
	add 0x8F,r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.l @(loc_8C081590,pc),r2 ; r2 set to 0x8C034E8c
	mov 0x17,r5 ; r5 set to 0x17
	mov.b r4,@(r0,r14)
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r2
	mov r14,r4 ; r4 ??? bc r14 is ???	
	mov.w @(loc_8C08157E,pc),r0 ; r0 set to 0x4C9
	mov.b @(r0,r13),r3 ; r3 ??? bc r13 is ???	
	tst r3,r3
	bt loc_8C0814Ea
	mov 0x01,r7 ; r7 set to 0x01
	bra loc_8C0814Ee
	mov 0x02,r6

loc_8C0814EA:
	mov 0x00,r6 ; r6 set to 0x00
	mov 0x01,r7 ; r7 set to 0x01

loc_8C0814EE:
	mov.l @(loc_8C081594,pc),r3 ; r3 set to 0x8C03544C, r3 set to 0x8C03544c
	mov r7,r5 ; r5 set to 0x01
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0814FE:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C081580,pc),r0 ; r0 set to 0x411, r0 set to 0x411, r0 set to 0x411
	mov.l @(0x18,r14),r4
	mov.b @(r0,r4),r3 ; r3 ??? bc r4 is ???, r3 ??? bc r4 is ???	
	mov 0x23,r0 ; r0 set to 0x23, r0 set to 0x23, r0 set to 0x23
	mov.b @(r0,r14),r2
	cmp/eq r2,r3
	bt loc_8C081518
	mov 0x02,r0 ; r0 set to 0x02, r0 set to 0x02, r0 set to 0x02
	mov.b r0,@(0x04,r14)
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C081518:
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C081598,pc),r1 ; r1 set to 0x8C1540Bc
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C081528:
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C08152C:
	sts.l pr,@-r15
	mov.l @(0x14,r4),r3
	mov.b @(0x05,r3),r0
	mov 0x04,r3 ; r3 set to 0x04
	extu.b r0,r0
	cmp/ge r3,r0
	bf loc_8C081540
	mov 0x02,r0 ; r0 set to 0x02
	bra loc_8C0815A6
	mov.b r0,@(0x04,r4)

loc_8C081540:
	mov.w @(loc_8C081582,pc),r0 ; r0 set to 0x141
	mov.l @(0x14,r4),r1
	mov.b @(r0,r1),r2
	tst r2,r2
	bt loc_8C0815A0
	mov.b @(0x05,r4),r0
	mov 0x01,r2 ; r2 set to 0x01
	mov.l @(loc_8C081588,pc),r3 ; r3 set to 0x8C1294C8
	mov r4,r1
	add 0x01,r0 ; r0 set to 0x142
	mov.b r0,@(0x05,r4)
	add 0x34,r1
	mov.w @(loc_8C081576,pc),r0 ; r0 set to 0x12c
	mov.b r2,@(r0,r4)
	mov.l @(0x14,r4),r2 ; r2 ??? bc r4 is ???	
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mova @(loc_8C08159C,pc),r0  ; r0 set to 0x8C08159c
	mov.l @(0x14,r4),r1
	fmov.s @r0,fr3 ; r3 ??	
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r1),fr2
	fadd fr3,fr2
	bra loc_8C0815A6
	fmov.s fr2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C081574:
	#data 0x00Dc
loc_8C081576:
	#data 0x012c
loc_8C081578:
	#data 0x01A3
loc_8C08157A:
	#data 0x01A1
loc_8C08157C:
	#data 0x019c
loc_8C08157E:
	#data 0x04C9
loc_8C081580:
	#data 0x0411
loc_8C081582:
	#data 0x0141
	#align4

loc_8C081584:
	#data bank12.loc_8c129560
loc_8C081588:
	#data bank12.loc_8c1294C8
loc_8C08158C:
	#data 0x8C2896B0
loc_8C081590:
	#data bank03.loc_8c034e8c
loc_8C081594:
	#data bank03.loc_8c03544c
loc_8C081598:
	#data bank15.loc_8c1540Bc
loc_8C08159C:
	#data 0x42B84924

;==============================================
loc_8C0815A0:
	mov.w @(loc_8C0816C2,pc),r0 ; r0 set to 0x12c
	mov 0x00,r2 ; r2 set to 0x00
	mov.b r2,@(r0,r4)

loc_8C0815A6:
	lds.l @r15+,pr
	rts
	nop

;-------------------------------------------------------------------------------
loc_8C0815AC:
	mov.l @(0x14,r4),r3
	mov.b @(0x05,r3),r0
	mov 0x04,r3 ; r3 set to 0x04
	extu.b r0,r0
	cmp/ge r3,r0
	bf loc_8C0815Be
	mov 0x02,r0 ; r0 set to 0x02
	bra loc_8C0815E8
	mov.b r0,@(0x04,r4)

loc_8c0815be:
	mov.w @(loc_8c0816c4,pc),r0
	mov.l @(0x14,r4),r1
	mov.b @(r0,r1),r2
	tst r2,r2
	bt loc_8c0815e8
	mov.w @(loc_8C0816C6,pc),r1
	mov.l @(0x14,r4),r0
	mov.b @(r0,r1),r0
	cmp/eq 0x09,r0 
	bf loc_8c0815e8
	mov.b @(0x05,r4),r0 
	mov.w @(loc_8c0816c8,pc),r3
	add 0x01,r0
	mov.b r0,@(0x05,r4) 
	mov 0x00,r0
	mov.b r0,@(0x06,r4) 
	add r4,r3
	mov.w @(loc_8c0816c8,pc),r0
	mov.l @(0x14,r4),r2
	mov.l @(r0,r2),r0
	mov.l r0,@r3

loc_8C0815E8:
	rts
	nop

;-------------------------------------------------------------------------------
loc_8C0815EC:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0816C8,pc),r0 ; r0 set to 0x1B0
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @(r0,r14),r13
	mov.b @(0x06,r14),r0
	mov.l @(0x18,r14),r11
	mov.w @(loc_8C0816CA,pc),r3 ; r3 set to 0x2A4
	tst r0,r0
	bf/s loc_8C081658
	add r3,r11
	mov.b @(0x06,r14),r0
	mov 0x01,r2 ; r2 set to 0x01
	fldi0 fr4
	add 0x01,r0 ; r0 set to 0x1B1
	mov.b r0,@(0x06,r14)
	mov.w @(loc_8C0816C2,pc),r0 ; r0 set to 0x12c
	mov.b r2,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
	mov 0x64,r0 ; r0 set to 0x64
	fmov.s fr3,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr3
	mov 0x64,r0 ; r0 set to 0x64
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???	
	mova @(loc_8C0816D0,pc),r0  ; r0 set to 0x8C0816D0
	fsub fr3,fr2
	fmov.s @r0,fr3
	mov 0x5C,r0 ; r0 set to 0x5c
	fdiv fr3,fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0816D4,pc),r0  ; r0 set to 0x8C0816D4
	fmov.s @r0,fr2
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0816D8,pc),r0  ; r0 set to 0x8C0816D8
	fmov.s @r0,fr2
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr1
	mov 0x6C,r0 ; r0 set to 0x6c
	fdiv fr2,fr1
	fneg fr1
	fmov.s fr1,@(r0,r14)
	mov 0x14,r0 ; r0 set to 0x14
	bra loc_8C081774
	mov.w r0,@(0x1C,r14)

loc_8C081658:
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
	mov.w @(loc_8C0816C4,pc),r0 ; r0 set to 0x19e
	mov.b @(r0,r14),r2
	tst r2,r2
	bt/s loc_8C081740
	mov 0x00,r12 ; r12 set to 0x00
	mov.b @(0x05,r14),r0
	add 0x01,r0 ; r0 set to 0x19f
	mov.b r0,@(0x05,r14)
	mov r12,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x06,r14)
	mov.w @(loc_8C0816CC,pc),r0 ; r0 set to 0x411
	mov.b @(r0,r13),r2
	tst r2,r2
	bt loc_8C0816Dc
	mov 0x04,r0 ; r0 set to 0x04
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0816C2,pc),r0 ; r0 set to 0x12c
	mov.b r12,@(r0,r14)
	mov 0x02,r0 ; r0 set to 0x02
	bra loc_8C081774
	mov.b r0,@(0x04,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0816C2:
	#data 0x012c
loc_8C0816C4:
	#data 0x019e
loc_8c0816c6:
	#data 0x0141
loc_8C0816C8:
	#data 0x01B0
loc_8C0816CA:
	#data 0x02A4
loc_8C0816CC:
	#data 0x0411
	#align4

loc_8C0816D0:
	#data 0x42000000
loc_8C0816D4:
	#data 0x41CDB6Db
loc_8C0816D8:
	#data 0x41800000

;==============================================
loc_8C0816DC:
	mov.w @(loc_8C0817D2,pc),r0 ; r0 set to 0x4C9
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8C08171a
	mov.l @(loc_8C0817DC,pc),r3 ; r3 set to 0x8C059A1c
	mov 0x10,r6 ; r6 set to 0x10
	mov.w @(loc_8C0817D4,pc),r5 ; r5 set to 0x168
	jsr @r3
	mov r13,r4
	mov.l @(loc_8C0817E0,pc),r2 ; r2 set to 0x8C104DF8
	mov 0x01,r5 ; r5 set to 0x01
	jsr @r2
	mov r13,r4
	mov 0x21,r0 ; r0 set to 0x21
	mov.w @(loc_8C0817D6,pc),r5 ; r5 set to 0x3E8
	mov 0x01,r3 ; r3 set to 0x01
	mov.b r3,@(r0,r14)
	mov r3,r6 ; r6 set to 0x01
	mov.b @(0x04,r11),r0
	add r13,r5 ; r5 ??? bc r13 is ???	
	mov.l @(loc_8C0817E4,pc),r3 ; r3 set to 0x8C0F047c
	add 0x01,r0 ; r0 set to 0x22
	mov.b r0,@(0x04,r11)
	mov.b @(0x04,r11),r0
	and 0x01,r0
	mov.b r0,@(0x04,r11)
	jsr @r3
	mov r13,r4
	bra loc_8C08172e
	nop

loc_8C08171A:
	mov.l @(loc_8C0817E8,pc),r3 ; r3 set to 0x8C059150
	mov 0x14,r5 ; r5 set to 0x14
	jsr @r3
	mov r13,r4
	mov.l @(loc_8C0817E0,pc),r2 ; r2 set to 0x8C104DF8
	mov 0x04,r5 ; r5 set to 0x04
	jsr @r2
	mov r13,r4
	mov 0x21,r0 ; r0 set to 0x21
	mov.b r12,@(r0,r14)

loc_8C08172E:
	lds.l @r15+,pr
	mov.l @(loc_8C0817EC,pc),r3 ; r3 set to 0x8C04223A, r3 set to 0x8C04223a
	mov 0x2A,r5 ; r5 set to 0x2A, r5 set to 0x2a
	mov r14,r4
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C081740:
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr3
	mov.w @(loc_8C0817D8,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r13),fr2
	fcmp/gt fr3,fr2
	bf loc_8C08175a
	mov.b @(0x05,r14),r0
	add 0x01,r0 ; r0 set to 0x41d
	mov.b r0,@(0x05,r14)
	mov r12,r0 ; r0 ??? bc r12 is ???	
	nop
	bra loc_8C081774
	mov.b r0,@(0x06,r14)

loc_8C08175A:
	mov 0x60,r0 ; r0 set to 0x60
	fldi0 fr3
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8C081774
	lds.l @r15+,pr
	mov.l @(loc_8C0817F0,pc),r1 ; r1 set to 0x8C045748
	mov r14,r4
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r1
	mov.l @r15+,r14

loc_8C081774:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C081780:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	tst r0,r0
	bf loc_8C0817A0
	mov.b @(0x06,r14),r0
	mov r14,r4
	mov.l @(loc_8C0817F4,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x10,r6 ; r6 set to 0x10
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov 0x17,r5 ; r5 set to 0x17
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c0817a0:
	mov.l @(loc_8c0817f8,pc),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0817b8
	mov.b @(0x04,r14),r0 
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x04,r14) 
	mov.w @(loc_8c0817da,pc),r0
	mov.b r3,@(r0,r14) 

loc_8c0817b8:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

loc_8C0817BE:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0817DA,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0817CC:
	mov.l @(loc_8C0817FC,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0817D2:
	#data 0x04C9
loc_8C0817D4:
	#data 0x0168
loc_8C0817D6:
	#data 0x03E8
loc_8C0817D8:
	#data 0x041c
loc_8C0817DA:
	#data 0x012c
	#align4

loc_8C0817DC:
	#data bank05.loc_8c059A1c
loc_8C0817E0:
	#data bank10.loc_8c104DF8
loc_8C0817E4:
	#data bank0f.loc_8c0f047c
loc_8C0817E8:
	#data bank05.loc_8c059150
loc_8C0817EC:
	#data bank04.loc_8c04223a
loc_8C0817F0:
	#data bank04.loc_8c045748
loc_8C0817F4:
	#data bank03.loc_8c034e8c
loc_8C0817F8:
	#data bank03.loc_8c034dee
loc_8C0817FC:
	#data bank04.loc_8c0450C0

;==============================================
loc_8c081800:
;Stack Set up
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15

;Start
	mov.w @(0x142,PC),r13;2a4 into r13
	mov r4,r14
	mov 0x02,r2;Projectile Limit
	mov.b r5,@r15
	add r14,r13;add pl mem
	mov.b @r13,r3
	cmp/ge r2,r3
	bf loc_8c08181c
	bra loc_8c08184c
	mov 0x00,r0

loc_8c08181c:
	mov.l @(0x148,PC),r2 ; set pnt for jsr
	mov 0x01,r6
	mov r6,r5
	jsr @r2
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c081848
	mov r0,r4
	mov.w @(0x120,PC),r2
	mov 0x26,r0
	mov.l @(0x138,PC),r3
	mov.w r2,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x20,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov.b @r13,r2
	add 0x01,r2
	mov.b r2,@r13

loc_8c081848:
	mov r4,r0
	nop 

loc_8c08184c:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C081856:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C081970,pc),r1 ; r1 set to 0x8C1540Cc
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c08186a:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xE0,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0xFC,PC),r3
	add 0x01,r0
	mov.w @(0xD4,PC),r2
	mov.b r0,@(0x4,r14)
	mov.w @(0xD2,PC),r0
	jsr @r3
	add r5,r2
	mov.w @(0xCE,PC),r0
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
	mov.w @(0xB2,PC),r0
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
	mov.l @(0xBC,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r14)
	mov.b r4,@r14
	mov 0x00,r4
	mov.b r4,@(r0,r14)
	mov.w @(0x8C,PC),r0
	mov.b @(r0,r5),r3
	add 0xA3,r0
	add 0x30,r3
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0x9C,PC),r3
	mov.l r4,@(r0,r14)
	mov 0x44,r4
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0x64,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x0F,r0
	mov.w @(r0,r14),r1
	mov.w @(0x5A,PC),r2
	mov.l @(0x74,PC),r3
	or r2,r1
	mov r5,r2
	mov.w r1,@(r0,r14)
	mov 0x30,r0
	mov.w @(0x50,PC),r1
	add 0x34,r2
	add r14,r1
	mov.b r0,@r1
	mov r0,r1
	mov.w @(0x48,PC),r0
	mov.b r1,@(r0,r14)
	mov r14,r1
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mova @(0x5C,PC),r0
	fmov @r0,fr4
	mov.w @(0x3A,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c081932
	mova @(0x54,PC),r0
	fmov @r0,fr4

loc_8C081932:
	mov 0x34,r0
	mov.l @(0x50,PC),r3
	fmov @(r0,r14),fr3
	mov 0x17,r5
	mov 0x04,r6
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x44,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c08194e:
	#data 0x02a4
loc_8c081950:
	#data 0x1501
loc_8c081952:
	#data 0x00dc
loc_8c081954:
	#data 0x00c0
loc_8c081956:
	#data 0x012c
loc_8c081958:
	#data 0x01a3
loc_8c08195a:
	#data 0x01fe
loc_8c08195c:
	#data 0x019c
loc_8c08195e:
	#data 0x0200
loc_8c081960:
	#data 0x013e
loc_8c081962:
	#data 0x013f
loc_8c081964:
	#data 0x0130
	#align4

loc_8C081968:
	#data bank04.loc_8c044F12
loc_8C08196C:
	#data loc_8C081856
loc_8C081970:
	#data bank15.loc_8c1540Cc
loc_8C081974:
	#data bank12.loc_8c129560
loc_8C081978:
	#data bank12.loc_8c1294C8
loc_8C08197c:
	#data 0x8C2896B0
loc_8C081980:
	#data 0xC30C0000
loc_8C081984:
	#data 0x430C0000
loc_8C081988:
	#data bank03.loc_8c034e8c
loc_8C08198C:
	#data bank10.loc_8c104434

;==============================================
loc_8C081990:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C081A54,pc),r3 ; r3 set to 0x8C03340c
	jsr @r3
	mov r5,r13
	tst r0,r0
	bf loc_8C0819B6
	mov 0x02,r0 ; r0 set to 0x02
	mov r13,r5
	mov.b r0,@(0x04,r14)
	mov 0x04,r0 ; r0 set to 0x04
	mov.b r0,@(0x05,r14)
	mov r14,r4
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8C0821E8
	mov.l @r15+,r14

loc_8C0819B6:
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8C0819D4
	mov.b @(0x05,r14),r0
	mov r13,r5
	lds.l @r15+,pr
	mov.l @(loc_8C081A58,pc),r1 ; r1 set to 0x8C1540E8
	extu.b r0,r0 ; r0 set to 0x20
	shll2 r0 ; r0 set to 0x80
	mov r14,r4
	mov.l @r15+,r13
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0819D4:
	mov.b @(0x05,r14),r0
	mov r13,r5
	lds.l @r15+,pr
	mov.l @(loc_8C081A5C,pc),r1 ; r1 set to 0x8C1540D8
	extu.b r0,r0
	shll2 r0
	mov r14,r4
	mov.l @r15+,r13
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0819EA:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C081A60,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C081A4a
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C081A50,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
	tst r3,r3
	bt loc_8C081A0c
	bra loc_8C081A0e
	mov 0x09,r0

loc_8C081A0C:
	mov 0x06,r0 ; r0 set to 0x06

loc_8C081A0E:
	mov.w r0,@(0x1C,r14)
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8C081A1e
	mova @(loc_8C081A64,pc),r0  ; r0 set to 0x8C081A64, r0 set to 0x8C081A64
	bra loc_8C081A22
	fmov.s @r0,fr3

loc_8c081a1e:
	mova @(loc_8C081A68,pc),r0 
	fmov.s @r0,fr3

loc_8c081a22:
	mov 0x5C,r0
	fmov.s fr3,@(r0,r14) 
	mov 0x68,r0
	fldi0 fr3
	fmov.s fr3,@(r0,r14) 
	mov.w @(loc_8C081A52,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_8c081a3e
	mov 0x06,r6
	mov 0x5C,r0
	fmov.s @(r0,r14),fr3
	fneg fr3
	fmov.s fr3,@(r0,r14) 

loc_8c081a3e:
	lds.l @r15+,pr
	mov.l @(loc_8c081a6c,pc),r3
	mov 0x17,r5
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C081A4A:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C081A50:
	#data 0x01A3
loc_8c081a52:
	#data 0x0130
	#align4

loc_8C081A54:
	#data bank03.loc_8c03340c
loc_8C081A58:
	#data bank15.loc_8c1540E8
loc_8C081A5C:
	#data bank15.loc_8c1540D8
loc_8C081A60:
	#data bank03.loc_8c034dee
loc_8C081A64:
	#data 0xC0D55555
loc_8c081a68:
	#data 0xC0555555
loc_8C081A6C:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C081A70:
	mov.l r14,@-r15
	mov.l r13,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l @(0x114,PC),r3
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt.s loc_8c081a92
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)

loc_8C081A92:
	bsr loc_8c08215c
	nop 
	tst r0,r0
	bt loc_8c081a9e
	bra loc_8c081bc2              ; loc_8c081bbc+0x6
	nop 

loc_8C081A9E:
	mov.w @(0xE4,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c081ae0
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
	bra loc_8c081bbc
	fmov fr2,@(r0,r14)

loc_8C081AE0:
	mov.w @(0xA4,PC),r0
	mov.l @r15,r13
	mov.l @(r0,r13),r13
	mova @(0xAC,PC),r0
	fmov @r0,fr4
	mova @(0xAC,PC),r0
	fmov @r0,fr15
	mov 0x34,r0
	fmov @(r0,r13),fr5
	fmov @(r0,r14),fr6
	fmov fr5,fr3
	fsub fr4,fr3
	fcmp/gt fr3,fr6
	bf loc_8c081b0e
	fmov fr5,fr3
	fadd fr4,fr3
	fcmp/gt fr6,fr3
	bf loc_8c081b0e
	mov.w @(0x82,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c081b14

loc_8C081B0E:
	mov.w @(0x1C,r14),r0
	cmp/eq 0x01,r0
	bf loc_8c081bb0

loc_8C081B14:
	mov.b @(0x5,r14),r0
	mov 0x34,r5
	mov.l @(0x80,PC),r3
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	jsr @r3
	mov r14,r4
	mov 0x34,r0
	mov r15,r4
	fmov @(r0,r13),fr3
	add 0x04,r4
	fmov fr3,@r4
	mov.w @(0x1C,r14),r0
	cmp/eq 0x01,r0
	bf.s loc_8c081b52
	fldi0 fr4
	mova @(0x68,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov.w @(0x48,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c081b68
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	bra loc_8c081b68
	fmov fr3,@(r0,r14)

loc_8C081B52:
	mov 0x34,r0
	fmov @r4,fr2
	fmov @(r0,r14),fr3
	mova @(0x48,PC),r0
	fsub fr3,fr2
	fmov @r0,fr3
	mov 0x5C,r0
	fdiv fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)

loc_8C081B68:
	mov 0x14,r0
	mov.l @(0x40,PC),r3
	mov.w r0,@(0x1C,r14)
	mova @(0x38,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	mov 0x17,r5
	fmov fr3,@(r0,r14)
	mov 0x6C,r0
	fmov fr15,@(r0,r14)
	mov 0x07,r6
	jsr @r3
	mov r14,r4
	bra loc_8c081bbc
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c081b86:
	#data 0x0141
loc_8c081b88:
	#data 0x020c
loc_8c081b8a:
	#data 0x01f9
loc_8c081b8c:
	#data 0x0130
	#align4
loc_8C081B90:
	#data bank03.loc_8c034dee
loc_8C081B94:
	#data 0x42D55555
loc_8C081B98:
	#data 0xBF892492
loc_8C081B9C:
	#data bank04.loc_8c042008
loc_8C081BA0:
	#data 0xC0D55555
loc_8C081BA4:
	#data 0x41A00000
loc_8C081BA8:
	#data 0x412B6DB6
loc_8C081BAC:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C081BB0:
	mova @(0x108,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x6C,r0
	fmov fr15,@(r0,r14)

loc_8C081BBC:
	mov.l @(0x100,PC),r3
	jsr @r3
	mov r14,r4

loc_8C081BC2:
	add 0x10,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C081BCE:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	add 0xE4,r15
	mov.l @(loc_8C081CC4,pc),r12 ; r12 set to 0x8C034E8c
	mov r4,r14
	mov.l r5,@r15
	bsr loc_8C08215c
	mov r14,r4
	tst r0,r0
	bt loc_8C081BF0
	bra loc_8C081D96
	nop

loc_8C081BF0:
	mov.l @(loc_8C081CC8,pc),r3 ; r3 set to 0x8C034DEe
	mov 0x02,r11 ; r11 set to 0x02
	fldi0 fr15
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C081C24
	mov r11,r0 ; r0 set to 0x02
	nop
	mov.b r0,@(0x04,r14)
	mov 0x17,r5 ; r5 set to 0x17
	mov.b r0,@(0x05,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr15,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr15,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr15,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	mov 0x0C,r6 ; r6 set to 0x0c
	fmov.s fr15,@(r0,r14)
	jsr @r12
	mov r14,r4
	bra loc_8C081D96
	nop

loc_8c081c24:
	mov.w @(loc_8C081CB4,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c081c64
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

loc_8c081c64:
	mov.w @(loc_8C081CB6,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c081c70
	bra loc_8c081d90
	nop 

loc_8c081c70:
	mov.b @(r0,r14),r3
	mov 0x01,r10
	tst r10,r3
	bf loc_8c081c90
	mov.l @(loc_8c081ccc,pc),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c081d78
	mov.w @(loc_8C081CB8,pc),r0
	mov.l @(r0,r14),r13
	add 0x49,r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x02,r0 
	bf loc_8c081cd4

loc_8c081c90:
	mov r11,r0
	nop 
	mov.b r0,@(0x04,r14) 
	mov r10,r0
	nop 
	fldi1 fr2
	fadd fr2,fr2
	mov.b r0,@(0x05,r14) 
	mov 0x5C,r0
	fmov.s @(r0,r14),fr3
	fneg fr3
	fdiv fr2,fr3
	fmov.s fr3,@(r0,r14) 
	mova @(loc_8C081CD0,pc),r0 
	fmov.s @r0,fr3
	mov 0x60,r0
	bra loc_8c081d84
	fmov.s fr3,@(r0,r14) 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C081CB4:
	#data 0x0141
loc_8C081CB6:
	#data 0x019E
loc_8C081CB8:
	#data 0x01B0
	#align4

loc_8c081cbc:
	#data 0x40CDB6DB
loc_8c081cc0:
	#data bank04.loc_8c045748
loc_8c081cc4:
	#data bank03.loc_8c034e8c
loc_8c081cc8:
	#data bank03.loc_8c034dee
loc_8c081ccc:
	#data bank05.loc_8c05264c
loc_8C081CD0:
	#data 0x40892492

;==============================================
loc_8c081cd4:
	mov.b @(0x05,r14),r0 
	mov 0x30,r5
	mov.l @(loc_8c081e24,pc),r3
	add 0x01,r0
	mov.b r0,@(0x05,r14) 
	mov 0x00,r0
	mov.b r0,@(0x06,r14) 
	mov 0x1E,r0
	mov.w r0,@(0x1C,r14) 
	jsr @r3
	mov r14,r4
	mov 0x34,r0
	mov r15,r5
	fmov.s @(r0,r13),fr3
	mov r15,r4
	fmov.s @(r0,r14),fr2
	add 0x04,r4
	add 0x10,r5
	fsub fr3,fr2
	fldi0 fr3
	fmov.s fr2,@r5
	fmov.s fr2,@r4
	fmov.s @r5,fr2
	fcmp/gt fr2,fr3
	bf loc_8c081d0c
	fmov.s @r5,fr2
	fneg fr2
	fmov.s fr2,@r4

loc_8c081d0c:
	mova @(loc_8C081E28,pc),r0 
	fmov.s @r4,fr3
	fmov.s @r0,fr4
	fcmp/gt fr4,fr3
	bf loc_8c081d34
	mov.w @(loc_8C081E1A,pc),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c081d2c
	mova @(loc_8C081E2C,pc),r0 
	fmov.s @r0,fr3
	mov 0x34,r0
	fmov.s @(r0,r13),fr2
	fadd fr3,fr2
	bra loc_8c081d34
	fmov.s fr2,@(r0,r14) 

loc_8c081d2c:
	mov 0x34,r0
	fmov.s @(r0,r13),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r14) 

loc_8c081d34:
	mov 0x0F,r5
	mov 0x01,r6
	jsr @r12
	mov r14,r4
	mov.w @(loc_8C081E1E,pc),r0
	mov r13,r5
	mov.w @(loc_8C081E1C,pc),r2
	mov.l @r15,r3
	mov.b r2,@(r0,r3) 
	mov.l @(loc_8c081e30,pc),r3
	jsr @r3
	mov r14,r4
	mov 0x34,r0
	fmov.s @(r0,r14),fr2
	fmov.s @(r0,r13),fr3
	mov 0x64,r0
	fsub fr3,fr2
	fmov.s fr2,@(r0,r14) 
	mov.w @(loc_8c081e20,pc),r0
	mov.l @(r0,r14),r0
	mov.b @(0x01,r0),r0 
	extu.b r0,r0
	cmp/eq 0x3A,r0 
	bt loc_8c081d72
	mov 0x38,r0
	fmov.s @(r0,r14),fr2
	fmov.s @(r0,r13),fr3
	mov 0x60,r0
	fsub fr3,fr2
	bra loc_8c081d96
	fmov.s fr2,@(r0,r14) 

loc_8c081d72:
	mov 0x60,r0
	bra loc_8c081d96
	fmov.s fr15,@(r0,r14) 

loc_8c081d78:
	mov r11,r0
	nop 
	mov.b r0,@(0x04,r14) 
	mov r10,r0
	nop 
	mov.b r0,@(0x05,r14) 

loc_8c081d84:
	mov 0x17,r5
	mov 0x0D,r6
	jsr @r12
	mov r14,r4
	bra loc_8c081d96
	nop 

loc_8c081d90:
	mov.l @(loc_8c081e34,pc),r2
	jsr @r2
	mov r14,r4

loc_8C081D96:
	add 0x1C,r15
	lds.l @r15+,pr
	fmov.s @r15+,fr15
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C081DA8:
	mov.w @(loc_8C081E20,pc),r0 ; r0 set to 0x1Cc
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(r0,r14),r13
	mov.l @(r0,r13),r3
	cmp/eq r14,r3
	bt/s loc_8C081DD0
	mov 0x02,r6 ; r6 set to 0x02
	mov r6,r0 ; r0 set to 0x02
	nop
	mov.b r0,@(0x04,r14)
	mov 0x04,r0 ; r0 set to 0x04
	mov.b r0,@(0x05,r14)
	mov r14,r4
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8C0821E8
	mov.l @r15+,r14

loc_8C081DD0:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/pl r0
	bt/s loc_8C081E40
	mov 0x01,r4 ; r4 set to 0x01
	mov r6,r0
	nop
	mov.b r0,@(0x04,r14)
	mov r4,r0 ; r0 set to 0x01
	nop
	mov.b r0,@(0x05,r14)
	mov 0x30,r3 ; r3 set to 0x30
	mov.w @(loc_8C081E22,pc),r0 ; r0 set to 0x1F6
	mov 0x0D,r6 ; r6 set to 0x0d
	fldi1 fr2
	fadd fr2,fr2
	mov.b r4,@(r0,r13)
	add 0xAB,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r13)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???	
	mov r14,r4 ; r4 ??? bc r14 is ???	
	mov.l @(loc_8C081E3C,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x17,r5 ; r5 set to 0x17
	fneg fr3
	fdiv fr2,fr3 ; r3 ??? bc r2 is ???	
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C081E38,pc),r0  ; r0 set to 0x8C081E38
	fmov.s @r0,fr3
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c081e1a:
	#data 0x0130
loc_8c081e1c:
	#data 0x00C1
loc_8c081e1e:
	#data 0x01F7
loc_8C081E20:
	#data 0x01Cc
loc_8C081E22:
	#data 0x01F6
	#align4

loc_8C081E24:
	#data bank04.loc_8c042008
loc_8c081e28:
	#data 0x41D55555
loc_8c081e2c:
	#data 0xC1D55555
loc_8C081E30:
	#data bank05.loc_8c05248e
loc_8C081E34:
	#data bank04.loc_8c045748
loc_8C081E38:
	#data 0x40892492
loc_8C081E3C:
	#data bank03.loc_8c034e8c

loc_8C081E40:
	mov.w @(loc_8C081F48,pc),r0 ; r0 set to 0x1Ea
	mov.l @(loc_8C081F54,pc),r3 ; r3 set to 0x8C034DEe
	mov.b r4,@(r0,r5)
	jsr @r3
	mov r14,r4
	mov 0x64,r0 ; r0 set to 0x64
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???	
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C081E6A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l @(0xE0,PC),r3
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt.s loc_8c081e88
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)

loc_8C081E88:
	bsr loc_8c08215c
	nop 
	tst r0,r0
	bf loc_8c081f40
	mov.w @(0xB6,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c081ed2
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
	bra loc_8c081f34              ; loc_8c081f2c+0x8
	fmov fr2,@(r0,r14)

loc_8C081ED2:
	mov.w @(0x76,PC),r0
	mov.l @r15,r4
	mov.l @(r0,r4),r4
	mova @(0x7C,PC),r0
	fmov @r0,fr4
	mov 0x34,r0
	fmov @(r0,r4),fr5
	fmov @(r0,r14),fr6
	fmov fr5,fr3
	fsub fr4,fr3
	fcmp/gt fr3,fr6
	bf loc_8c081efc
	fmov fr5,fr3
	fadd fr4,fr3
	fcmp/gt fr6,fr3
	bf loc_8c081efc
	mov.w @(0x58,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c081f02

loc_8C081EFC:
	mov.w @(0x1C,r14),r0
	cmp/eq 0x01,r0
	bf loc_8c081f24

loc_8C081F02:
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x44,PC),r0
	mov.l @r15,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bf.s loc_8c081f18
	mov 0x17,r5
	bra loc_8c081f1a
	mov 0x08,r6

loc_8C081F18:
	mov 0x09,r6

loc_8C081F1A:
	mov.l @(0x40,PC),r2
	jsr @r2
	mov r14,r4
	bra loc_8c081f34              ; loc_8c081f2c+0x8
	nop 

loc_8C081F24:
	mova @(0x38,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0x34,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)

loc_8C081F34:
	mov r14,r4
	add 0x10,r15
	lds.l @r15+,pr
	mov.l @(0x2C,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C081F40:
	add 0x10,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C081F48:
	#data 0x01Ea
loc_8C081F4a:
	#data 0x0141
loc_8C081F4c:
	#data 0x020c
loc_8C081F4e:
	#data 0x01F9
loc_8C081F50:
	#data 0x01A3
	#align4

loc_8C081F54:
	#data bank03.loc_8c034dee
loc_8C081F58:
	#data 0x42A00000
loc_8C081F5C:
	#data bank03.loc_8c034e8c
loc_8C081F60:
	#data 0x409A4924
loc_8C081F64:
	#data 0xBF4DB6Db
loc_8C081F68:
	#data bank04.loc_8c045748

;==============================================
loc_8C081F6C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C082084,pc),r3 ; r3 set to 0x8C034DEe
	mov 0x02,r13 ; r13 set to 0x02
	fldi0 fr15
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C081FA8
	mov r13,r0 ; r0 set to 0x02
	nop
	mov.b r0,@(0x04,r14)
	mov 0x03,r0 ; r0 set to 0x03
	mov.b r0,@(0x05,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr15,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr15,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr15,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr15,@(r0,r14)
	bra loc_8C081FE4
	mov 0x0C,r6

loc_8C081FA8:
	mov.w @(loc_8C08207C,pc),r0 ; r0 set to 0x19e
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8C082036
	mov.b @(r0,r14),r3
	mov 0x01,r4 ; r4 set to 0x01
	tst r4,r3
	bt loc_8C081FF6
	mov r13,r0 ; r0 ??? bc r13 is ???	
	nop
	mov.b r0,@(0x04,r14)
	mov r4,r0 ; r0 set to 0x01
	nop
	fldi1 fr3
	fadd fr3,fr3
	mov.b r0,@(0x05,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	mov 0x0D,r6 ; r6 set to 0x0d
	fmul fr3,fr2
	fneg fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C082088,pc),r0  ; r0 set to 0x8C082088
	fmov.s @r0,fr2
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C08208C,pc),r0  ; r0 set to 0x8C08208c
	fmov.s @r0,fr2
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr2,@(r0,r14)

loc_8C081FE4:
	mov r14,r4 ; r4 ??? bc r14 is ???	
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C082090,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	fmov.s @r15+,fr15
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C081FF6:
	mov.w @(loc_8C08207E,pc),r0 ; r0 set to 0x1B0
	mov.l @(r0,r14),r4
	mov.b @(0x03,r4),r0
	tst r0,r0
	bf loc_8C082046
	mov.b @(0x05,r4),r0
	extu.b r0,r0 ; r0 set to 0xB0
	cmp/eq 0x03,r0
	bf loc_8C082046
	mov.w @(loc_8C082080,pc),r0 ; r0 set to 0x420
	mov.w @(r0,r4),r2
	tst r2,r2
	bt loc_8C082046
	mov r13,r0 ; r0 ??? bc r13 is ???	
	nop
	mov.b r0,@(0x04,r14)
	mov 0x05,r0 ; r0 set to 0x05
	mov.b r0,@(0x05,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr15,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr15,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr15,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr15,@(r0,r14)
	mov.w @(loc_8C082082,pc),r0 ; r0 set to 0x41c
	mov.l @r15,r3
	fmov.s @(r0,r3),fr3
	mov 0x38,r0 ; r0 set to 0x38
	bra loc_8C082046
	fmov.s fr3,@(r0,r14)

loc_8C082036:
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C082094,pc),r2 ; r2 set to 0x8C045748
	fmov.s @r15+,fr15
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C082046:
	add 0x04,r15
	lds.l @r15+,pr
	fmov.s @r15+,fr15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C082052:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_8C082098
	mov r5,r13
	cmp/eq 0x05,r0
	bt loc_8C0820B2
	cmp/eq 0x01,r0
	bt loc_8C0820C2
	cmp/eq 0x02,r0
	bt loc_8C082122
	cmp/eq 0x03,r0
	bt loc_8C082122
	cmp/eq 0x04,r0
	bt loc_8C08213e
	bra loc_8C082154
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C08207C:
	#data 0x019e
loc_8C08207E:
	#data 0x01B0
loc_8C082080:
	#data 0x0420
loc_8C082082:
	#data 0x041c
	#align4

loc_8C082084:
	#data bank03.loc_8c034dee
loc_8C082088:
	#data 0x40CDB6Db
loc_8C08208C:
	#data 0xBF4DB6Db
loc_8C082090:
	#data bank03.loc_8c034e8c
loc_8C082094:
	#data bank04.loc_8c045748

;----------------------------------------------
loc_8C082098:
	mov.w @(loc_8C0821C6,pc),r0 ; r0 set to 0x1A0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C0820B2
	mov.b @(r0,r14),r3
	mov r14,r4
	mov.l @(loc_8C0821CC,pc),r2 ; r2 set to 0x8C034DEe
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C0820B2:
	mov.w @(loc_8C0821C6,pc),r0 ; r0 set to 0x1A0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8C0820C2
	mov.b @(r0,r14),r3
	add 0xFF,r3
	bra loc_8C082154
	mov.b r3,@(r0,r14)

loc_8C0820C2:
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
	mov.w @(loc_8C0821C8,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r13),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8C082154
	mov 0x03,r0 ; r0 set to 0x03
	mov.l @(loc_8C0821D0,pc),r3 ; r3 set to 0x8C034E8c
	mov.b r0,@(0x05,r14)
	mov r14,r4
	mov.w @(loc_8C0821C8,pc),r0 ; r0 set to 0x41c
	mov 0x0C,r6 ; r6 set to 0x0c
	mov 0x17,r5 ; r5 set to 0x17
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C082122:
	mov.l @(loc_8C0821CC,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C082154
	mov r13,r5
	mov 0x04,r0 ; r0 set to 0x04
	mov.b r0,@(0x05,r14)
	mov r14,r4
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8C0821E8
	mov.l @r15+,r14

loc_8C08213E:
	mov r13,r5
	bsr loc_8C0821E8
	mov r14,r4
	mov 0x00,r2 ; r2 set to 0x00
	mov.l @(loc_8C0821D4,pc),r3 ; r3 set to 0x8C0450C0
	mov.b r2,@r14
	mov r14,r4
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C082154:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C08215C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(loc_8C0821CA,pc),r0 ; r0 set to 0x19f
	mov r4,r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C0821Bc
	mov 0x02,r0 ; r0 set to 0x02
	fldi1 fr2
	mov.b r0,@(0x04,r14)
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x05,r14)
	fadd fr2,fr2
	mov 0x5C,r0 ; r0 set to 0x5c
	mov.l @(loc_8C0821D0,pc),r3 ; r3 set to 0x8C034E8c
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???	
	mov 0x17,r5 ; r5 set to 0x17
	mov 0x0B,r6 ; r6 set to 0x0b
	fneg fr3
	fdiv fr2,fr3
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mova @(loc_8C0821D8,pc),r0  ; r0 set to 0x8C0821D8
	mov.l @(loc_8C0821E0,pc),r3 ; r3 set to 0x8C0FDAB6
	fmov.s @r0,fr3 ; r3 ??	
	mova @(loc_8C0821DC,pc),r0  ; r0 set to 0x8C0821Dc
	mov r15,r5 ; r5 ??? bc r15 is ???	
	mov 0x00,r6 ; r6 set to 0x00
	fmov.s fr3,@r15
	fmov.s @r0,fr3
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s fr3,@(r0,r15)
	mov 0x08,r0 ; r0 set to 0x08
	fldi0 fr3
	fmov.s fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C0821E4,pc),r2 ; r2 set to 0x8C042008
	mov 0x25,r5 ; r5 set to 0x25
	jsr @r2
	mov r14,r4
	mov 0x01,r0 ; r0 set to 0x01
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0821BC:
	mov 0x00,r0 ; r0 set to 0x00
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0821C6:
	#data 0x01A0
loc_8C0821C8:
	#data 0x041c
loc_8C0821CA:
	#data 0x019f
	#align4

loc_8C0821CC:
	#data bank03.loc_8c034dee
loc_8C0821D0:
	#data bank03.loc_8c034e8c
loc_8C0821D4:
	#data bank04.loc_8c0450C0
loc_8C0821D8:
	#data 0x41D55555
loc_8C0821DC:
	#data 0x42092492
loc_8C0821E0:
	#data bank0f.loc_8c0fDAB6
loc_8C0821E4:
	#data bank04.loc_8c042008

;==============================================
loc_8c0821e8:
	mov.w @(loc_8C08220C,pc),r0
	mov.w @(loc_8C08220A,pc),r3
	mov.b @(r0,r4),r2
	tst r2,r2
	bt/s loc_8c082206
	add r3,r5
	mov 0x00,r6
	mov.b r6,@(r0,r4) 
	mov.b @r5,r2
	add 0xFF,r2
	mov.b r2,@r5
	mov.b @r5,r1
	cmp/pz r1
	bt loc_8c082206
	mov.b r6,@r5

loc_8c082206:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C08220A:
	#data 0x02A4
loc_8C08220C:
	#data 0x012C
	#align4

;----------------------------------------------
;Unused
loc_8c082210:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r0
	nop 
	mov.l @(0x154,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c08224a
	mov r0,r4
	mov.l @(0x144,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.w @(0x126,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov.l @r15,r0
	mov.w @(0x118,PC),r1
	mov.w @(r0,r1),r0
	mov.w r0,@(0x1E,r4)

loc_8c08224a:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;==============================================
loc_8C082252:
	mov r4,r3
	mov.l @(loc_8C082378,pc),r1 ; r1 set to 0x8C1540F4
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C082264:
	mov.w @(0xFA,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add r4,r1
	mov.l @(0x10C,PC),r3
	add 0x01,r0
	mov.w @(0xEE,PC),r2
	mov.b r0,@(0x4,r4)
	mov.w @(0xEC,PC),r0
	mov.l @(0x18,r4),r5
	jsr @r3
	add r5,r2
	mov.w @(0xE6,PC),r0
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
	mov.w @(0xCA,PC),r0
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
	mov.l @(0xCC,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.l @(0xC4,PC),r3
	mov.b @(r0,r5),r2
	mov r4,r1
	add 0x34,r1
	mov.b r2,@(r0,r4)
	mov r5,r2
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mova @(0xB8,PC),r0
	fmov @r0,fr4
	mov.w @(0x98,PC),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bt loc_8c0822da
	mova @(0xB0,PC),r0
	fmov @r0,fr4

loc_8C0822DA:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	mov 0x46,r3
	mov 0x00,r5
	fadd fr4,fr3
	mov 0x20,r6
	fmov fr3,@(r0,r4)
	mov.w @(0x80,PC),r0
	mov.b r3,@(r0,r4)
	add 0x01,r0
	mov.b r5,@(r0,r4)
	add 0x04,r0
	mov 0x3B,r3
	mov.b r3,@(r0,r4)
	add 0x0B,r0
	mov.w r5,@(r0,r4)
	add 0xF2,r0
	mov.b r5,@(r0,r4)
	add 0x26,r0
	mov.l @(0x88,PC),r3
	mov.l r5,@(r0,r4)
	mov.b @(0x2,r4),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0x56,PC),r0
	mov.b r6,@(r0,r4)
	add 0xFF,r0
	mov.b r6,@(r0,r4)
	mov 0x24,r0
	mov.l @(0x70,PC),r2
	mov 0x0E,r6
	mov.b r5,@(r0,r4)
	mov 0x17,r5
	jmp @r2
	lds.l @r15+,pr

;==============================================
loc_8C08232A:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x05,r14),r0
	mov.l @(loc_8C082394,pc),r1 ; r1 set to 0x8C154104
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C08233E:
	mov.w @(loc_8C082360,pc),r0 ; r0 set to 0x158
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(r0,r5),r3
	mov.w @(0x1E,r14),r0
	cmp/eq r0,r3
	bt loc_8C082398
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x04,r14)
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C082366,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C08235e:
	#data 0x1502
loc_8C082360:
	#data 0x0158
loc_8C082362:
	#data 0x00Dc
loc_8C082364:
	#data 0x00C0
loc_8C082366:
	#data 0x012c
loc_8C082368:
	#data 0x01A3
loc_8C08236a:
	#data 0x0130
loc_8C08236c:
	#data 0x019c
loc_8C08236e:
	#data 0x013F
	#align4

loc_8C082370:
	#data bank04.loc_8c044F12
loc_8C082374:
	#data loc_8C082252
loc_8C082378:
	#data bank15.loc_8c1540F4
loc_8C08237C:
	#data bank12.loc_8c129560
loc_8C082380:
	#data bank12.loc_8c1294C8
loc_8C082384:
	#data 0xC2D55555
loc_8C082388:
	#data 0x42D55555
loc_8C08238c:
	#data 0x8C2896B0
loc_8C082390:
	#data bank03.loc_8c034e8c
loc_8C082394:
	#data bank15.loc_8c154104

;==============================================
loc_8c082398:
	mov.l @(loc_8c0824b8,pc),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0824A2,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0823d6
	mov.b @(0x05,r14),r0 
	fldi0 fr4
	add 0x01,r0
	mov.b r0,@(0x05,r14) 
	mov 0x5C,r0
	fmov.s fr4,@(r0,r14) 
	mov 0x60,r0
	fmov.s fr4,@(r0,r14) 
	mov 0x68,r0
	fmov.s fr4,@(r0,r14) 
	mov 0x6C,r0
	fmov.s fr4,@(r0,r14) 
	mova @(loc_8C0824BC,pc),r0 
	fmov.s @r0,fr3
	mov 0x5C,r0
	fmov.s fr3,@(r0,r14) 
	mov.w @(loc_8C0824A4,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0823d6
	mov 0x5C,r0
	fmov.s @(r0,r14),fr3
	fneg fr3
	fmov.s fr3,@(r0,r14) 

loc_8c0823d6:
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C0823DC:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0824A6,pc),r0 ; r0 set to 0x158
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov 0x02,r11 ; r11 set to 0x02
	sts.l pr,@-r15
	mov.w @(r0,r13),r3
	mov.w @(0x1E,r14),r0
	cmp/eq r0,r3
	bt/s loc_8C082416
	mov 0x00,r12 ; r12 set to 0x00
	mov.w @(loc_8C0824A8,pc),r0 ; r0 set to 0x159
	mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
	extu.b r0,r0
	cmp/eq 0x16,r0
	bf loc_8C08240a
	mov r11,r0 ; r0 set to 0x02
	nop
	bra loc_8C082506
	mov.b r0,@(0x05,r14)

loc_8C08240A:
	mov r11,r0
	nop
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0824AA,pc),r0 ; r0 set to 0x12c
	bra loc_8C082506
	mov.b r12,@(r0,r14)

loc_8c082416:
	mov.l @(loc_8c0824c0,pc),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c082426
	mov r12,r0
	nop 
	mov.w r0,@(0x1C,r13) 

loc_8c082426:
	mov.w @(loc_8C0824AC,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0824d4
	mov.l @(loc_8c0824c4,pc),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c082494
	mov 0x03,r11
	mov r11,r0
	nop 
	mov.b r0,@(0x05,r14) 
	mov r12,r0
	nop 
	mov.l @(loc_8c0824c8,pc),r3
	mov 0x0F,r5
	mov.b r0,@(0x06,r14) 
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0824AE,pc),r2
	mov 0x20,r0
	mov.w @(loc_8C0824B0,pc),r3
	mov.b r2,@(r0,r14) 
	mov.w @(loc_8C0824B2,pc),r0
	mov.b r3,@(r0,r13) 
	add 0xA6,r0
	mov.b r12,@(r0,r13) 
	add 0x50,r0
	mov.b r11,@(r0,r13) 
	add 0xFD,r0
	mov 0x01,r3
	mov.b r3,@(r0,r13) 
	mov r11,r0
	nop 
	mov.b r0,@(0x06,r13) 
	mov r12,r0
	nop 
	mov.b r0,@(0x07,r13) 
	mov.w @(loc_8C0824B4,pc),r0
	mov.l @(loc_8c0824cc,pc),r3
	mov.l @(r0,r14),r13
	mov r13,r5
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr 
	mov r13,r5
	mov.l @(loc_8c0824d0,pc),r2
	mov r14,r4
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c082494:
	mov r11,r0
	nop
	mov.b r0,@(0x05,r14)
	mov r12,r0
	nop
	bra loc_8c082506
	mov.w r0,@(0x1C,r13)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0824a2:
	#data 0x0141
loc_8c0824a4:
	#data 0x0130
loc_8c0824a6:
	#data 0x0158
loc_8c0824a8:
	#data 0x0159
loc_8c0824aa:
	#data 0x012C
loc_8C0824AC:
	#data 0x019E
loc_8C0824AE:
	#data 0x00FF
loc_8C0824B0:
	#data 0x00C1
loc_8C0824B2:
	#data 0x01F7
loc_8C0824B4:
	#data 0x01B0
	#align4

loc_8c0824b8:
	#data bank03.loc_8c034dee
loc_8c0824bc:
	#data 0xc0855555
loc_8c0824c0:
	#data bank03.loc_8c03340c
loc_8c0824c4:
	#data bank05.loc_8c05264c
loc_8c0824c8:
	#data bank03.loc_8c034e8c
loc_8c0824cc:
	#data bank05.loc_8c05248e
loc_8c0824d0:
	#data bank04.loc_8c04cc1c

;==============================================
loc_8c0824d4:
	mov 0x5C,r1
	mov.l @(loc_8c0825f8,pc),r3
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
	mov.l @(loc_8c0825fc,pc),r2
	mov r14,r4
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C082506:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C082512:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	tst r0,r0
	bf loc_8c08252e
	mov.b @(0x6,r14),r0
	mov 0x17,r5
	mov.l @(0xDC,PC),r3
	mov 0x0F,r6
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov r14,r4

loc_8C08252E:
	mov.l @(0xC8,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c082546
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xA8,PC),r0
	mov.b r3,@(r0,r14)

loc_8C082546:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C08254C:
	mov r4,r3
	mov.l @(loc_8C082604,pc),r1 ; r1 set to 0x8C154114
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;----------------------------------------------
loc_8C08255E:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x8A,PC),r0
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(r0,r13),r3
	mov 0x20,r0
	mov.b @(r0,r14),r2
	extu.b r2,r2
	cmp/eq r2,r3
	bt loc_8c08258e
	mov.w @(0x76,PC),r0
	mov 0x0F,r5
	mov.l @(0x8C,PC),r3
	mov 0x02,r6
	mov.b @(r0,r13),r2
	mov 0x20,r0
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r7
	extu.b r7,r7
	add 0xFF,r7
	jsr @r3
	mov r14,r4

loc_8C08258E:
	mov.w @(0x60,PC),r0
	mov.l @(0x78,PC),r3
	mov.l @(r0,r14),r5
	jsr @r3
	mov r14,r4
	mov.w @(0x54,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0825aa
	mov.w @(0x50,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bt loc_8c0825b0

loc_8C0825AA:
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)

loc_8C0825B0:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C0825B8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x38,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0825d4
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x1A,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0825D4:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0825DA:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0825EE,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0825E8:
	mov.l @(loc_8C082610,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0825EE:
	#data 0x012c
loc_8C0825F0:
	#data 0x0141
loc_8C0825F2:
	#data 0x01CC
loc_8C0825F4:
	#data 0x01D0
	#align4

loc_8C0825F8:
	#data bank03.loc_8c034dee
loc_8C0825FC:
	#data bank04.loc_8c045748
loc_8C082600:
	#data bank03.loc_8c034e8c
loc_8C082604:
	#data bank15.loc_8c154114
loc_8C082608:
	#data bank03.loc_8c034F54
loc_8C08260C:
	#data bank04.loc_8c04CC1c
loc_8C082610:
	#data bank04.loc_8c0450C0

;==============================================
;Unused
loc_8c082614:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x14C,PC),r3
	mov 0x01,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c082638
	mov r0,r4
	mov.l @(0x140,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.w @(0x122,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)

loc_8c082638:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;-------------------------------------------------------------------------------
loc_8C082640:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C082770,pc),r1 ; r1 set to 0x8C15411c
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C082654:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.w @(loc_8C08275A,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C082758,pc),r5 ; r5 set to 0x2A4
	add 0x01,r0
	mov.w @(loc_8C08275A,pc),r2 ; r2 set to 0xDc
	mov.b r0,@(0x04,r14)
	add r13,r5 ; r5 ??? bc r13 is ???	
	mov.w @(loc_8C08275C,pc),r0 ; r0 set to 0xC0
	mov.l @(loc_8C082774,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???	
	mov.w @(loc_8C08275E,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C082760,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C082778,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	fldi0 fr4
	mov.b @(r0,r13),r2
	mov 0x40,r6 ; r6 set to 0x40
	mov 0x00,r12 ; r12 set to 0x00
	mov.b r2,@(r0,r14)
	mov 0x0B,r3 ; r3 set to 0x0b
	mov.w @(loc_8C082762,pc),r0 ; r0 set to 0x13c
	mov.b r6,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13d
	mov.b r6,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13e
	mov.b r6,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13f
	mov.b r6,@(r0,r14)
	add 0x5D,r0 ; r0 set to 0x19c
	mov.b r12,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x19d
	mov.b r12,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
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
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mova @(loc_8C08277C,pc),r0  ; r0 set to 0x8C08277c
	fmov.s @r0,fr7
	mova @(loc_8C082780,pc),r0  ; r0 set to 0x8C082780
	fmov.s @r0,fr6 ; r6 ??	
	mova @(loc_8C082784,pc),r0  ; r0 set to 0x8C082784
	fmov.s @r0,fr5
	mov.w @(loc_8C082764,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8C0827D0
	mov.w @(loc_8C082760,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8C082790
	mova @(loc_8C082788,pc),r0  ; r0 set to 0x8C082788
	fmov.s @r0,fr5
	mov.w @(loc_8C082766,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8C082730
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr3
	bra loc_8C082736
	fadd fr5,fr3

loc_8C082730:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr3
	fsub fr5,fr3

loc_8C082736:
	mov.l @(loc_8C08278C,pc),r1 ; r1 set to 0x43474924, r1 set to 0x43474924
	mov 0x02,r3 ; r3 set to 0x02, r3 set to 0x02
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	lds r1,fpul
	fmov.s @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fmov.s fr6,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	bra loc_8C082884
	mov.b r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c082756:
	#data 0x1600
loc_8C082758:
	#data 0x02A4
loc_8C08275A:
	#data 0x00Dc
loc_8C08275C:
	#data 0x00C0
loc_8C08275E:
	#data 0x012c
loc_8C082760:
	#data 0x01A3
loc_8C082762:
	#data 0x013c
loc_8C082764:
	#data 0x01F9
loc_8C082766:
	#data 0x0130
	#align4

loc_8C082768:
	#data bank04.loc_8c044F12
loc_8C08276C:
	#data loc_8C082640
loc_8C082770:
	#data bank15.loc_8c15411c
loc_8C082774:
	#data bank12.loc_8c129560
loc_8C082778:
	#data bank12.loc_8c1294C8
loc_8C08277C:
	#data 0xC14DB6Db
loc_8C082780:
	#data 0xC1855555
loc_8C082784:
	#data 0xC1700000
loc_8C082788:
	#data 0x42BE0000
loc_8C08278C:
	#data 0x43474924

;==============================================
loc_8C082790:
	mova @(loc_8C082838,pc),r0  ; r0 init to 0x8C082838
	fmov.s @r0,fr4
	mov.w @(loc_8C082830,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8C0827A4
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr3
	bra loc_8C0827Aa
	fadd fr4,fr3

loc_8C0827A4:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr3
	fsub fr4,fr3

loc_8C0827AA:
	mov.l @(loc_8C08283C,pc),r1 ; r1 set to 0x43340000, r1 set to 0x43340000
	mov 0x03,r2 ; r2 set to 0x03, r2 set to 0x03
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	lds r1,fpul
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???	
	mov.w @(loc_8C082832,pc),r3 ; r3 set to 0x1000, r3 set to 0x1000
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fmov.s fr5,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr7,@(r0,r14)
	mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48
	mov.l r3,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	bra loc_8C082884
	mov.b r2,@(r0,r14)

loc_8C0827D0:
	mov.w @(loc_8C082834,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r1
	tst r1,r1
	bf loc_8C08281c
	mova @(loc_8C082840,pc),r0  ; r0 set to 0x8C082840
	fmov.s @r0,fr4
	mov.w @(loc_8C082830,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8C0827Ec
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr3
	bra loc_8C0827F2
	fadd fr4,fr3

loc_8C0827EC:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr3
	fsub fr4,fr3

loc_8C0827F2:
	mov.l @(loc_8C082844,pc),r1 ; r1 set to 0x42CDB6DB, r1 set to 0x42CDB6Db
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	lds r1,fpul
	fmov.s @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fmov.s fr6,@(r0,r14)
	mova @(loc_8C082848,pc),r0  ; r0 set to 0x8C082848, r0 set to 0x8C082848
	fmov.s @r0,fr2
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C08284C,pc),r0  ; r0 set to 0x8C08284C, r0 set to 0x8C08284c
	fmov.s @r0,fr2
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr2,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	bra loc_8C082884
	mov.b r12,@(r0,r14)

loc_8C08281C:
	mova @(loc_8C082850,pc),r0  ; r0 init to 0x8C082850
	fmov.s @r0,fr4
	mov.w @(loc_8C082830,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8C082854
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr3
	bra loc_8C08285a
	fadd fr4,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C082830:
	#data 0x0130
loc_8C082832:
	#data 0x1000
loc_8C082834:
	#data 0x01A3
	#align4

loc_8C082838:
	#data 0x42855555
loc_8C08283C:
	#data 0x43340000
loc_8C082840:
	#data 0x424EAAAa
loc_8C082844:
	#data 0x42CDB6Db
loc_8C082848:
	#data 0xC1892492
loc_8C08284C:
	#data 0x401A4924
loc_8C082850:
	#data 0x42C15555

;==============================================
loc_8c082854:
	mov 0x34,r0
	fmov.s @(r0,r14),fr3
	fsub fr4,fr3

loc_8c08285a:
	mov.l @(loc_8C0829B4,pc),r1
	fmov.s fr3,@(r0,r14) 
	mov 0x38,r0
	lds r1,fpul 
	fmov.s @(r0,r14),fr2
	mov.l @(loc_8C0829BC,pc),r3
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14) 
	mov 0x5C,r0
	fmov.s fr5,@(r0,r14) 
	mov 0x60,r0
	fmov.s fr7,@(r0,r14) 
	mova @(loc_8C0829B8,pc),r0 
	fmov.s @r0,fr2
	mov 0x6C,r0
	fmov.s fr2,@(r0,r14) 
	mov 0x48,r0
	mov.l r3,@(r0,r14) 
	mov 0x20,r0
	mov.b r4,@(r0,r14) 

loc_8c082884:
	mov.w @(loc_8C0829A6,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c082894
	mov 0x5C,r0
	fmov.s @(r0,r14),fr3
	fneg fr3
	fmov.s fr3,@(r0,r14)

loc_8c082894:
	mov r4,r0
	nop 
	mov.b r0,@(0x04,r5) 
	mov 0x10,r0
	mov.l @(loc_8c0829c0,pc),r3
	mov 0x17,r5
	mov.w r0,@(0x1C,r14) 
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov r12,r0
	nop 
	mov.w r0,@(0x1E,r14) 
	mov 0x21,r0
	mov 0x03,r3
	fldi1 fr3
	mov.b r3,@(r0,r14) 
	mov 0x30,r3
	mov.w @(loc_8C0829A8,pc),r0
	mov r14,r4
	mov r13,r5
	fmov.s fr3,@(r0,r14) 
	mov.w @(loc_8C0829AA,pc),r0
	mov.b r3,@(r0,r14) 
	add 0x0B,r0
	mov.w r12,@(r0,r14) 
	add 0xF2,r0
	mov.b r12,@(r0,r14) 
	add 0x26,r0
	mov.l @(loc_8C0829C4,pc),r3
	mov.l r12,@(r0,r14) 
	mov.b @(0x02,r14),r0 
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2) 
	mov.w @(loc_8C0829AE,pc),r0
	mov.w @(loc_8C0829AC,pc),r2
	mov.w r2,@(r0,r14) 
	lds.l @r15+,pr 
	mov.l @r15+,r12
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0828F0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8C0829B0,pc),r3 ; r3 set to 0x2A4
	mov r5,r13
	mov.l @(loc_8C0829C8,pc),r2 ; r2 set to 0x8C03340c
	mov r4,r14
	add r13,r3 ; r3 ??? bc r13 is ???	
	mov.l r3,@r15
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8C08291a
	mov r13,r5
	bsr loc_8C082B58
	mov r14,r4
	mov.l @r15,r3
	mov 0x00,r0 ; r0 set to 0x00
	bra loc_8C082932
	mov.b r0,@(0x04,r3)

loc_8C08291A:
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C0829CC,pc),r1 ; r1 set to 0x8C15412c
	mov r13,r5
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C082932:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C08293C:
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x5C,r1 ; r1 set to 0x5c
	mov.w @(loc_8C0829B0,pc),r3 ; r3 set to 0x2A4
	mov 0x34,r0 ; r0 set to 0x34
	add r4,r1 ; r1 ??? bc r4 is ???	
	add r5,r3 ; r3 ??? bc r5 is ???	
	mov.l r3,@r15
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
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
	extu.b r0,r0
	tst 0x02,r0
	bt loc_8C0829D0
	mov.w @(loc_8C0829B2,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r5),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r4),fr2
	fcmp/gt fr3,fr2
	bt loc_8C0829D0
	bsr loc_8C082B58
	nop
	mov.l @r15,r3
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x04,r3)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0829a6:
	#data 0x0130
loc_8c0829a8:
	#data 0x0108
loc_8c0829aa:
	#data 0x01A1
loc_8c0829ac:
	#data 0x1000
loc_8c0829ae:
	#data 0x01AC
loc_8C0829B0:
	#data 0x02A4
loc_8C0829B2:
	#data 0x041c
	#align4

loc_8c0829b4:
	#data 0x42E76DB6
loc_8c0829b8:
	#data 0x40092492
loc_8c0829bc:
	#data 0x0000EE00
loc_8C0829C0:
	#data bank03.loc_8c034e8c
loc_8c0829c4:
	#data 0x8C2896B0
loc_8C0829C8:
	#data bank03.loc_8c03340c
loc_8C0829CC:
	#data bank15.loc_8c15412c

;==============================================
loc_8c0829d0:
	mov.w @(0x1C,r4),r0 
	add 0xFF,r0
	mov.w r0,@(0x1C,r4) 
	exts.w r0,r0
	cmp/pl r0
	bt/s loc_8c0829fe
	add 0x04,r15
	mov.b @(0x05,r4),r0 
	mov 0x44,r5
	add 0x01,r0
	mov.b r0,@(0x05,r4) 
	mov 0x3C,r0
	mov.w r0,@(0x1C,r4) 
	mov.w @(loc_8C082B0E,pc),r0
	mov.b r5,@(r0,r4) 
	add 0x01,r0
	mov.b r5,@(r0,r4) 
	mova @(loc_8C082B20,pc),r0 
	fmov.s @r0,fr4
	mov 0x50,r0
	fmov.s fr4,@(r0,r4) 
	mov 0x54,r0
	fmov.s fr4,@(r0,r4) 

loc_8c0829fe:
	mov.l @(loc_8c082b24,pc),r3
	jmp @r3
	lds.l @r15+,pr 

loc_8c082a04:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;-------------------------------------------------------------------------------
loc_8c082a0c:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pl r0
	bf loc_8c082a52
	mov.w @(0xEE,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c082a52
	mov.w @(0xE8,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c082aa2               ; loc_8c082a76+0x2c
	mov.w @(0x1E,r14),r0
	mov 0x08,r3
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c082aa2               ; loc_8c082a76+0x2c
	mov 0x00,r4
	mov r4,r0
	nop 
	mov.w r0,@(0x1E,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r2
	add 0xFF,r2
	mov.b r2,@(r0,r14)
	extu.b r2,r2
	tst r2,r2
	bf loc_8c082a78               ; loc_8c082a76+0x2

loc_8c082a52:
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
	mova @(0xBC,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8c082a78:
	mov.w @(0x98,PC),r0
	mov 0x30,r3
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0xA0,PC),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0x78,PC),r0
	mov.w @(0x74,PC),r2
	mov.w r2,@(r0,r14)

loc_8c082aa2:
	mov.l @(0x8C,PC),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x78,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c082ab2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C082AB8:
	mov.b @(0x06,r4),r0
	mov.w @(loc_8C082B1A,pc),r6 ; r6 set to 0x2A4
	tst r0,r0
	bf/s loc_8C082B34
	add r5,r6 ; r6 ??? bc r5 is ???	
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
	fmov.s fr2,@(r0,r4)
	mov.w @(loc_8C082B1C,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r5),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r4),fr2
	fcmp/gt fr3,fr2
	bt loc_8C082B54
	mov.b @(0x06,r4),r0
	add 0x01,r0 ; r0 set to 0x39
	bra loc_8C082B54
	mov.b r0,@(0x06,r4)


loc_8c082b0e:
	#data 0x019c
loc_8C082B10:
	#data 0x019f
loc_8C082B12:
	#data 0x019E
loc_8C082B14:
	#data 0x01A1
loc_8C082B16:
	#data 0x1000
loc_8C082B18:
	#data 0x01Ac
loc_8C082B1A:
	#data 0x02A4
loc_8C082B1C:
	#data 0x041c
	#align4

loc_8c082b20:
	#data 0x3FA00000
loc_8C082B24:
	#data bank03.loc_8c034dee
loc_8C082B28:
	#data 0xBF4DB6Db
loc_8C082B2c:
	#data 0x8C2896B0
loc_8C082B30:
	#data bank04.loc_8c045748

;==============================================
loc_8c082b34:
	mov.l @(loc_8C082B70,pc),r1
	mov.w @(loc_8C082B6C,pc),r0
	lds r1,fpul 
	fmov.s @(r0,r4),fr2
	fsts fpul,fr3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r4) 
	fmov.s @(r0,r4),fr1
	fldi0 fr2
	fcmp/gt fr2,fr1
	bt loc_8c082b54
	mov.b @(0x04,r4),r0 
	add 0x01,r0
	mov.b r0,@(0x04,r4) 
	mov 0x00,r0
	mov.b r0,@(0x04,r6) 

loc_8C082B54:
	rts
	nop

;----------------------------------------------
loc_8C082B58:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C082B6E,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C082B66:
	mov.l @(loc_8C082B74,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c082b6c:
	#data 0x0108
loc_8C082B6E:
	#data 0x012c
	#align4

loc_8c082b70:
	#data 0x3DCCCCCd
loc_8C082B74:
	#data bank04.loc_8c0450C0

;----------------------------------------------
;Unused?
loc_8c082b78:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x5C,PC),r11
	mov 0x10,r13
	mov.w @(0x54,PC),r12
	mov 0x00,r14
	mov.l r4,@r15

loc_8c082b8e:
	mov 0x01,r5
	mov 0x00,r6
	jsr @r11
	mov r6,r4
	tst r0,r0
	bt.s loc_8c082bb2
	mov r0,r4
	mov 0x26,r0
	mov.l @(0x48,PC),r2
	mov.l r2,@(0x10,r4)
	mov.l @r15,r3
	mov.l r3,@(0x18,r4)
	mov.w r12,@(r0,r4)
	mov 0x21,r0
	mov.b r14,@(r0,r4)
	add 0x01,r14
	cmp/ge r13,r14
	bf loc_8c082b8e

loc_8c082bb2:
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
loc_8C082BC4:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C082BE2,pc),r3 ; r3 set to 0xCc
	mov r14,r4
	mov.l @(loc_8C082BEC,pc),r2 ; r2 set to 0x8C28C604
	add r14,r3 ; r3 ??? bc r14 is ???	
	mov.l @(loc_8C082BF0,pc),r1 ; r1 set to 0x8C1541E8
	mov.l r3,@r2 ; r2 ??? bc r3 is ???	
	mov.b @(0x04,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C082BE0:
	#data 0x1601
loc_8C082BE2:
	#data 0x00Cc
	#align4

loc_8C082BE4:
	#data bank04.loc_8c044F12
loc_8C082BE8:
	#data loc_8C082BC4
loc_8C082BEC:
	#data 0x8C28C604
loc_8C082BF0:
	#data bank15.loc_8c1541E8

;----------------------------------------------
loc_8C082BF4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r8,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(0x18,r14),r3
	mov.w @(0x16E,PC),r1
	mov.l r3,@r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x178,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x160,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x158,PC),r0
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
	mov.w @(0x134,PC),r0
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
	mov 0x42,r4
	mov.l @(0x124,PC),r13
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov 0x0B,r3
	mov.w @(0x106,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x9F,r0
	mov.w @(0xFE,PC),r4
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	add 0x81,r4
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r6
	extu.b r6,r6
	mov r6,r3
	shll2 r3
	shll r6
	add r3,r6
	add r13,r6
	mov.b @r6,r6
	mov.l @(0xEC,PC),r2
	mov 0x17,r5
	add 0x01,r6
	jsr @r2
	mov r14,r4
	mov 0x01,r0
	mov.w r0,@(0x1E,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov 0x48,r1
	add r14,r1
	extu.b r3,r3
	mov r3,r2
	shll2 r2
	shll r3
	add r2,r3
	add r13,r3
	mov.w @(0x2,r3),r0
	mov.l r0,@r1
	mov 0x21,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	mov r3,r2
	shll2 r2
	shll r3
	add r2,r3
	add r3,r13
	mov.w @(0x4,r13),r0
	mov r0,r3
	mov 0x22,r0
	mov.b r3,@(r0,r14)
	mov.w @(0x9A,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bf loc_8c082cfa
	mov 0x22,r0
	mov.b @(r0,r14),r0
	mov 0x22,r1
	add r14,r1
	neg r0,r0
	add 0x20,r0
	and 0x1F,r0
	mov.b r0,@r1

loc_8C082CFA:
	mov.l @(0x9C,PC),r4
	mov 0x10,r0
	mov.w @(0x80,PC),r2
	mov.l @r4,r3
	mov.l @(0x98,PC),r1
	mov.b r0,@(0x2,r3)
	mov 0x21,r0
	mov.l @r4,r3
	mov.w r2,@r3
	mov.b @(r0,r14),r0
	mov.l @r4,r3
	extu.b r0,r0
	mov.b @(r0,r1),r0
	mov.b r0,@(0x3,r3)
	mov.w @(0x6A,PC),r0
	mov.l @r15,r2
	mov.l @r4,r1
	mov.l @(r0,r2),r2
	mov.l @(0x6C,PC),r3
	add 0x04,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x74,PC),r1
	mov 0x08,r3
	mov.l @r4,r0
	lds r1,fpul
	fmov @(r0,r3),fr2
	mov.l @(0x70,PC),r1
	fsts fpul,fr3
	fadd fr3,fr2
	lds r1,fpul
	fmov fr2,@(r0,r3)
	mov 0x34,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr2
	fmov fr2,@(r0,r14)
	fmov @(r0,r14),fr1
	fsts fpul,fr2
	fadd fr2,fr1
	fmov fr1,@(r0,r14)
	mova @(0x50,PC),r0
	fmov @r0,fr15
	mov.w @(0x24,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c082db0
	mov.l @(0x48,PC),r3
	mov 0x34,r8
	mov 0x48,r0
	add r14,r8
	jsr @r3
	mov.l @(r0,r14),r4
	fmul fr15,fr0
	fmov @r8,fr3
	fsub fr0,fr3
	bra loc_8c082dcc
	fmov fr3,@r8

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c082d76:
	#data 0x00dc
loc_8c082d78:
	#data 0x012c
loc_8c082d7a:
	#data 0x01a3
loc_8c082d7c:
	#data 0x019c
loc_8c082d7e:
	#data 0x00ff
loc_8c082d80:
	#data 0x0130
loc_8c082d82:
	#data 0x01f4
loc_8c082d84:
	#data 0x020c
	#align4

loc_8C082D88:
	#data bank12.loc_8c129560
loc_8C082D8C:
	#data bank12.loc_8c1294C8
loc_8C082D90:
	#data bank15.loc_8c154138
loc_8C082D94:
	#data bank03.loc_8c034e8c
loc_8C082D98:
	#data 0x8C28C604
loc_8C082D9C:
	#data bank15.loc_8c1541D8
loc_8C082DA0:
	#data 0x42892492
loc_8C082DA4:
	#data 0x434DB6Db
loc_8C082DA8:
	#data 0x42700000
loc_8C082DAC:
	#data bank11.loc_8c11E2E0

;==============================================
loc_8C082DB0:
	mov r14,r3
	mov 0x34,r0
	add r0,r3
	mov.l r3,@-r15
	mov 0x48,r0
	mov.l @(0x110,PC),r3
	jsr @r3
	mov.l @(r0,r14),r4
	mov.l @r15+,r2
	fmov fr0,fr3
	fmov @r2,fr2
	fmov fr15,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@r2

loc_8C082DCC:
	mov r14,r3
	mov 0x38,r0
	add r0,r3
	mov.l r3,@-r15
	mov 0x48,r0
	mov.l @(0xF8,PC),r3
	jsr @r3
	mov.l @(r0,r14),r4
	mov.l @r15+,r2
	mov 0x00,r4
	fmov fr0,fr3
	fmov @r2,fr2
	fmov fr15,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@r2
	mov r4,r0
	nop 
	mov.w r0,@(0x1C,r14)
	mov 0x20,r0
	mov.b r4,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov.l @(0xD8,PC),r0
	extu.b r3,r3
	shll2 r3
	fmov @(r0,r3),fr3
	mov 0x68,r0
	mov 0x3E,r3
	fmov fr3,@(r0,r14)
	mov.w @(0xBC,PC),r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0xC0,PC),r3
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
	add 0x04,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r8
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C082E36:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xA0,PC),r3
	jsr @r3
	mov r4,r14
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/pl r0
	bt loc_8c082e6a
	mov 0x00,r0
	mov.w r0,@(0x1E,r14)
	bsr loc_8c082f3e
	mov r14,r4
	mov.l @(0x88,PC),r3
	mov.l @(0x8C,PC),r2
	mov.l @r3,r5
	mov.w @r5,r5
	jsr @r2
	mov r14,r4
	mov.l @(0x7C,PC),r2
	mov.l @r2,r3
	mov.w @r3,r1
	add 0x32,r1
	mov.w r1,@r3

loc_8C082E6A:
	mov.l @(0x7C,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c082e7c
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c083000
	mov.l @r15+,r14

loc_8C082E7C:
	mov.w @(0x48,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c082e8c
	mov r14,r4
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8C082E8C:
	lds.l @r15+,pr
	mov.l @(0x5C,PC),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C082E94:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C082EDC,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	mov.l @(loc_8C082EE0,pc),r3 ; r3 set to 0x8C28C604
	mov.l @(loc_8C082EE4,pc),r2 ; r2 set to 0x8C033718
	mov.l @r3,r5
	mov.w @r5,r5
	jsr @r2
	mov r14,r4
	mov.l @(loc_8C082EE0,pc),r2 ; r2 set to 0x8C28C604
	mov.l @r2,r3 ; r3 ??	
	mov.w @r3,r1
	add 0x32,r1
	mov.w r1,@r3
	mov.l @(loc_8C082EE8,pc),r3 ; r3 set to 0x8C0332E0
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8C082EF0
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C083000
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c082ec6:
	#data 0x01A1
loc_8c082ec8:
	#data 0x019e
	#align4

loc_8C082ECC:
	#data bank11.loc_8c11E2E0
loc_8C082ED0:
	#data bank11.loc_8c11E860
loc_8C082ED4:
	#data bank15.loc_8c154198
loc_8C082ED8:
	#data 0x8C2896B0
loc_8C082EDC:
	#data bank03.loc_8c034dee
loc_8C082EE0:
	#data 0x8C28C604
loc_8C082EE4:
	#data bank03.loc_8c033718
loc_8C082EE8:
	#data bank03.loc_8c0332E0
loc_8C082EEC:
	#data bank04.loc_8c045748

;==============================================
loc_8C082EF0:
	mov.w @(0x1C,r14),r0
	mov 0x05,r2 ; r2 set to 0x05
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	extu.b r3,r3
	cmp/ge r2,r3
	bt loc_8C082F38
	mov.b @(r0,r14),r1
	mov 0x00,r4 ; r4 set to 0x00
	mov.w @(loc_8C083014,pc),r0 ; r0 set to 0x1A1
	add 0x3E,r1
	mov.l @(loc_8C083020,pc),r3 ; r3 set to 0x8C2896B0
	mov.b r1,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1Ac
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19e
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r4,@(r0,r14)
	mov r14,r4 ; r4 ??? bc r14 is ???	
	mov.b @(0x02,r14),r0
	mov.l @r3,r1
	extu.b r0,r0 ; r0 set to 0xC4
	mov.l @(loc_8C083024,pc),r3 ; r3 set to 0x8C045748
	shll r0 ; r0 set to 0x188
	add 0x7C,r1
	mov.w @(r0,r1),r2 ; r2 ??? bc r1 is ???	
	add 0x01,r2
	mov.w r2,@(r0,r1)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8C082F38:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C082F3E:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l @(0xE0,PC),r13
	sts.l pr,@-r15
	mov.l @r13,r4
	mov.b @(0x2,r4),r0
	tst r0,r0
	bt loc_8c082ff8
	mov.b @(0x3,r4),r0
	add 0xFF,r0
	mov.b r0,@(0x3,r4)
	exts.b r0,r0
	tst r0,r0
	bf loc_8c082ff8
	mov 0x21,r0
	mov.l @(0xCC,PC),r1
	mov.b @(r0,r14),r0
	mov r14,r4
	mov.l @r13,r2
	extu.b r0,r0
	mov.b @(r0,r1),r0
	mov.b r0,@(0x3,r2)
	mov.l @r13,r3
	mov.b @(0x2,r3),r0
	add 0xFF,r0
	mov.b r0,@(0x2,r3)
	mov.l @r13,r5
	mov.l @(0xB8,PC),r3
	add 0x04,r5
	jsr @r3
	add 0x34,r4
	extu.b r0,r0
	cmp/pz r0
	bt loc_8c082f86
	add 0x07,r0

loc_8C082F86:
	shar r0
	shar r0
	shar r0
	mov r0,r5
	mov 0x22,r0
	mov.b @(r0,r14),r2
	extu.b r5,r4
	extu.b r2,r2
	cmp/eq r2,r4
	bf loc_8c082fa2
	mov.l @r13,r2
	mov 0x00,r0
	bra loc_8c082ff8
	mov.b r0,@(0x2,r2)

loc_8C082FA2:
	mov 0x1F,r3
	sub r2,r4
	mov 0x0F,r2
	and r3,r4
	cmp/ge r2,r4
	bf.s loc_8c082fb6
	mov.b @(r0,r14),r0
	mov.w @(0x62,PC),r4
	bra loc_8c082fb8              ; loc_8c082f3e+0x7a
	nop

loc_8C082FB6:
	mov 0x01,r4

loc_8C082FB8:
	mov 0x22,r1
	add r4,r0
	mov.w @(0x58,PC),r4
	add r14,r1
	and 0x1F,r0
	mov.b r0,@r1
	mov.w @(0x52,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c082fe2
	mov 0x22,r0
	mov.b @(r0,r14),r3
	mov 0x48,r0
	extu.b r3,r3
	shll8 r3
	shll2 r3
	shll r3
	add r4,r3
	extu.w r3,r3
	bra loc_8c082ff8
	mov.l r3,@(r0,r14)

loc_8C082FE2:
	mov 0x22,r0
	mov.b @(r0,r14),r1
	mov 0x48,r0
	extu.b r1,r1
	shll8 r1
	shll2 r1
	shll r1
	neg r1,r1
	add r4,r1
	extu.w r1,r1
	mov.l r1,@(r0,r14)

loc_8C082FF8:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C083000:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C08301C,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;-------------------------------------------------------------------------------
loc_8C08300E:
	mov.l @(loc_8C083034,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c083014:
	#data 0x01a1
loc_8c083016:
	#data 0x00ff
loc_8c083018:
	#data 0x4000
loc_8c08301a:
	#data 0x0130
loc_8c08301c:
	#data 0x012c
	#align4

loc_8C083020:
	#data 0x8C2896B0
loc_8C083024:
	#data bank04.loc_8c045748
loc_8C083028:
	#data 0x8C28C604
loc_8C08302C:
	#data bank15.loc_8c1541D8
loc_8C083030:
	#data bank03.loc_8c03362c
loc_8C083034:
	#data bank04.loc_8c0450C0

;==============================================
;Unused
loc_8c083038:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x158,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x01,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c083064
	mov r0,r4
	mov.l @(0x148,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.w @(0x132,PC),r3
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.b @r15,r2
	mov.b r2,@(r0,r4)

loc_8c083064:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;-------------------------------------------------------------------------------
loc_8C08306C:
	mov r4,r3
	mov.l @(loc_8C0831A0,pc),r1 ; r1 set to 0x8C1541Fc
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C08307E:
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C0831A4,pc),r0 ; r0 set to 0x8C15420c
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

loc_8C083092:
	mov.w @(loc_8C083190,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C0831A8,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C083190,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C083192,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C083194,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0831AC,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x00,r2 ; r2 set to 0x00
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov.b r2,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	bra loc_8C0832D8
	lds.l @r15+,pr

loc_8C083110:
	mov.w @(loc_8C083190,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C0831A8,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C083190,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C083192,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C083194,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0831AC,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x00,r2 ; r2 set to 0x00
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov.b r2,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	bra loc_8C083354
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c08318e:
	#data 0x1602
loc_8C083190:
	#data 0x00Dc
loc_8C083192:
	#data 0x012c
loc_8C083194:
	#data 0x01A3
	#align4

loc_8C083198:
	#data bank04.loc_8c044F12
loc_8C08319C:
	#data loc_8C08306c
loc_8C0831A0:
	#data bank15.loc_8c1541Fc
loc_8C0831A4:
	#data bank15.loc_8c15420c
loc_8C0831A8:
	#data bank12.loc_8c129560
loc_8C0831AC:
	#data bank12.loc_8c1294C8

;----------------------------------------------
loc_8C0831B0:
	mov.w @(loc_8C08331A,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C083324,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C08331A,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C08331C,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C08331E,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C083328,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x0B,r2 ; r2 set to 0x0b
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov.b r2,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r4),r3
	mov.l @(loc_8C08332C,pc),r1 ; r1 set to 0x44092492
	fmov.s @(r0,r3),fr3
	lds r1,fpul
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	fmov.s @(r0,r4),fr2 ; r2 ??? bc r4 is ???	
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	bra loc_8C0833Ae
	lds.l @r15+,pr

;==============================================
loc_8C08323A:
	mov.w @(loc_8C08331A,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C083324,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C08331A,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C08331C,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C08331E,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C083328,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x0A,r2 ; r2 set to 0x0a
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov.b r2,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r4),r3
	mov.l @(loc_8C08332C,pc),r1 ; r1 set to 0x44092492
	fmov.s @(r0,r3),fr3
	lds r1,fpul
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	fmov.s @(r0,r4),fr2 ; r2 ??? bc r4 is ???	
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	bra loc_8C083414
	lds.l @r15+,pr

loc_8C0832C4:
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C083330,pc),r0 ; r0 set to 0x8C15421c
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

loc_8C0832D8:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x34,r0 ; r0 set to 0x34
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov 0x15,r5 ; r5 set to 0x15
	sts.l pr,@-r15
	mov.l @(0x18,r14),r3
	mov 0x05,r6 ; r6 set to 0x05
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	mov.l @(loc_8C083334,pc),r3 ; r3 set to 0x8C034E8c
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C083338,pc),r12 ; r12 set to 0x8C034DEe
	mov 0x01,r13 ; r13 set to 0x01

loc_8C083300:
	mov.w @(loc_8C083320,pc),r2 ; r2 set to 0x150
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???	
	add r3,r2 ; r2 ??? bc r3 is ???	
	mov.w @(loc_8C083320,pc),r3 ; r3 set to 0x150
	mov.b @(0x01,r2),r0
	add r14,r3 ; r3 ??? bc r14 is ???	
	mov r0,r2 ; r2 set to 0x38
	mov.b @(0x01,r3),r0
	cmp/eq r0,r2
	bf loc_8C08333c
	mov.w @(loc_8C08331C,pc),r0 ; r0 set to 0x12c
	bra loc_8C08334a
	mov.b r13,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C08331A:
	#data 0x00Dc
loc_8C08331C:
	#data 0x012c
loc_8C08331E:
	#data 0x01A3
loc_8C083320:
	#data 0x0150
	#align4

loc_8C083324:
	#data bank12.loc_8c129560
loc_8C083328:
	#data bank12.loc_8c1294C8
loc_8C08332C:
	#data 0x44092492
loc_8C083330:
	#data bank15.loc_8c15421c
loc_8C083334:
	#data bank03.loc_8c034e8c
loc_8C083338:
	#data bank03.loc_8c034dee

;==============================================
loc_8c08333c:
	jsr @r12
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c083300
	bsr loc_8c08348c
	mov r14,r4

loc_8C08334A:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C083354:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x34,r0 ; r0 set to 0x34
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov 0x15,r5 ; r5 set to 0x15
	sts.l pr,@-r15
	mov.l @(0x18,r14),r3
	mov 0x06,r6 ; r6 set to 0x06
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	mov.l @(loc_8C083468,pc),r3 ; r3 set to 0x8C034E8c
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C08346C,pc),r12 ; r12 set to 0x8C034DEe
	mov 0x01,r13 ; r13 set to 0x01

loc_8C08337C:
	mov.w @(loc_8C083462,pc),r2 ; r2 set to 0x150
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???	
	add r3,r2 ; r2 ??? bc r3 is ???	
	mov.w @(loc_8C083462,pc),r3 ; r3 set to 0x150
	mov.b @(0x01,r2),r0
	add r14,r3 ; r3 ??? bc r14 is ???	
	mov r0,r2 ; r2 set to 0x38
	mov.b @(0x01,r3),r0
	cmp/eq r0,r2
	bf loc_8C083396
	mov.w @(loc_8C083464,pc),r0 ; r0 set to 0x12c
	bra loc_8C0833A4
	mov.b r13,@(r0,r14)

loc_8c083396:
	jsr @r12
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c08337c
	bsr loc_8c08348c
	mov r14,r4

loc_8C0833A4:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C0833AE:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C083470,pc),r1 ; r1 set to 0x44092492
	mov.l r13,@-r15
	mov 0x15,r5 ; r5 set to 0x15
	lds r1,fpul
	mov 0x07,r6 ; r6 set to 0x07
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	mov.l @(loc_8C083468,pc),r3 ; r3 set to 0x8C034E8c
	fmov.s fr3,@(r0,r14)
	fmov.s @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C08346C,pc),r12 ; r12 set to 0x8C034DEe
	mov 0x01,r13 ; r13 set to 0x01

loc_8C0833E2:
	mov.w @(loc_8C083462,pc),r2 ; r2 set to 0x150
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???	
	add r3,r2 ; r2 ??? bc r3 is ???	
	mov.w @(loc_8C083462,pc),r3 ; r3 set to 0x150
	mov.b @(0x01,r2),r0
	add r14,r3 ; r3 ??? bc r14 is ???	
	mov r0,r2 ; r2 set to 0x38
	mov.b @(0x01,r3),r0
	cmp/eq r0,r2
	bf loc_8C0833Fc
	mov.w @(loc_8C083464,pc),r0 ; r0 set to 0x12c
	bra loc_8C08340a
	mov.b r13,@(r0,r14)

loc_8c0833fc:
	jsr @r12
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0833e2
	bsr loc_8c08348c
	mov r14,r4

loc_8C08340A:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C083414:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C083470,pc),r1 ; r1 set to 0x44092492
	mov.l r13,@-r15
	mov 0x15,r5 ; r5 set to 0x15
	lds r1,fpul
	mov 0x08,r6 ; r6 set to 0x08
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	mov.l @(loc_8C083468,pc),r3 ; r3 set to 0x8C034E8c
	fmov.s fr3,@(r0,r14)
	fmov.s @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C08346C,pc),r12 ; r12 set to 0x8C034DEe
	mov 0x01,r13 ; r13 set to 0x01

loc_8C083448:
	mov.w @(loc_8C083462,pc),r2 ; r2 set to 0x150
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???	
	add r3,r2 ; r2 ??? bc r3 is ???	
	mov.w @(loc_8C083462,pc),r3 ; r3 set to 0x150
	mov.b @(0x01,r2),r0
	add r14,r3 ; r3 ??? bc r14 is ???	
	mov r0,r2 ; r2 set to 0x38
	mov.b @(0x01,r3),r0
	cmp/eq r0,r2
	bf loc_8C083474
	mov.w @(loc_8C083464,pc),r0 ; r0 set to 0x12c
	bra loc_8C083482
	mov.b r13,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C083462:
	#data 0x0150
loc_8C083464:
	#data 0x012c
	#align4

loc_8C083468:
	#data bank03.loc_8c034e8c
loc_8C08346C:
	#data bank03.loc_8c034dee
loc_8C083470:
	#data 0x44092492

;==============================================
loc_8c083474:
	jsr @r12
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c083448
	bsr loc_8c08348c
	mov r14,r4

loc_8C083482:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C08348C:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C08349E,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)

loc_8C083498:
	mov.l @(loc_8C0834A0,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C08349E:
	#data 0x012c
	#align4

loc_8C0834A0:
	#data bank04.loc_8c0450C0

;==============================================
loc_8c0834a4:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x128,PC),r3
	mov 0x01,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0834c8
	mov r0,r4
	mov.l @(0x11C,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.w @(0x100,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)

loc_8c0834c8:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;-------------------------------------------------------------------------------
loc_8C0834D0:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0835C6,pc),r3 ; r3 set to 0xCc
	mov r14,r4
	mov.l @(loc_8C0835DC,pc),r2 ; r2 set to 0x8C28C608
	add r14,r3 ; r3 ??? bc r14 is ???	
	mov.l @(loc_8C0835E0,pc),r1 ; r1 set to 0x8C15422c
	mov.l r3,@r2 ; r2 ??? bc r3 is ???	
	mov.b @(0x04,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0834EC:
	mov.l r14,@-r15
	mov 0x00,r14 ; r14 set to 0x00
	mov.w @(loc_8C0835C8,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C0835E4,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0835C8,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0835CA,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0835CC,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0835E8,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x43,r2 ; r2 set to 0x43
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov.l @(loc_8C0835EC,pc),r1 ; r1 set to 0x40D55555
	mov.b r3,@(r0,r4)
	mov.w @(loc_8C0835CE,pc),r0 ; r0 set to 0x19c
	lds r1,fpul
	mov.b r2,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x19d
	mov.b r14,@(r0,r4)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r14,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r4),r3
	mov.l @(loc_8C0835F0,pc),r1 ; r1 set to 0x414DB6Db
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0835D0,pc),r0 ; r0 set to 0x130
	fsts fpul,fr3
	mov.w @(r0,r4),r3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r4),fr2 ; r2 ??? bc r4 is ???	
	tst r3,r3
	lds r1,fpul
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	fsts fpul,fr3
	fmov.s @(r0,r4),fr2
	mov.l @(loc_8C0835DC,pc),r2 ; r2 set to 0x8C28C608
	fsub fr3,fr2 ; r2 ??? bc r3 is ???	
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C0835F4,pc),r0  ; r0 set to 0x8C0835F4
	fmov.s @r0,fr2
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C0835F8,pc),r0  ; r0 set to 0x8C0835F8
	fmov.s @r0,fr2
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr2,@(r0,r4)
	mov.l @(0x18,r4),r1 ; r1 ??? bc r4 is ???	
	mov.w @(loc_8C0835D2,pc),r0 ; r0 set to 0x158
	mov.l @r2,r3
	mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???	
	mov.w r0,@r3
	mov r14,r0 ; r0 set to 0x00
	nop
	mov.l @(loc_8C0835FC,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x17,r5 ; r5 set to 0x17
	mov.w r0,@(0x1C,r4)
	mov 0x04,r6 ; r6 set to 0x04
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0835C4:
	#data 0x1603
loc_8C0835C6:
	#data 0x00Cc
loc_8C0835C8:
	#data 0x00Dc
loc_8C0835CA:
	#data 0x012c
loc_8C0835CC:
	#data 0x01A3
loc_8C0835CE:
	#data 0x019c
loc_8C0835D0:
	#data 0x0130
loc_8C0835D2:
	#data 0x0158
	#align4

loc_8C0835D4:
	#data bank04.loc_8c044F12
loc_8C0835D8:
	#data loc_8C0834D0
loc_8C0835DC:
	#data 0x8C28C608
loc_8C0835E0:
	#data bank15.loc_8c15422c
loc_8C0835E4:
	#data bank12.loc_8c129560
loc_8C0835E8:
	#data bank12.loc_8c1294C8
loc_8C0835EC:
	#data 0x40D55555
loc_8C0835F0:
	#data 0x414DB6Db
loc_8C0835F4:
	#data 0x3FA00000
loc_8C0835F8:
	#data 0x3F8CCCCd
loc_8C0835FC:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C083600:
	mov.l @(0xF8,PC),r2
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(0xE2,PC),r0
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.l @(0x18,r14),r13
	mov.w @r3,r1
	mov.w @(r0,r13),r3
	cmp/eq r3,r1
	bf loc_8c083684
	mov 0x34,r0
	mov.l @(0xE4,PC),r1
	fmov @(r0,r13),fr3
	lds r1,fpul
	fmov fr3,@(r0,r14)
	mov.w @(0xCA,PC),r0
	fsts fpul,fr3
	mov.w @(r0,r14),r3
	mov 0x34,r0
	fmov @(r0,r14),fr2
	tst r3,r3
	mov.l @(0xD4,PC),r1
	fadd fr3,fr2
	lds r1,fpul
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	fmov @(r0,r14),fr2
	fsts fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0xA8,PC),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bt loc_8c083656
	mov.w @(0xA2,PC),r0
	mov.b @(r0,r14),r0
	tst 0x80,r0
	bt loc_8c0836d4

loc_8C083656:
	mov.w @(0x9C,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c083678
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bf loc_8c083678
	mov 0x01,r5
	mov r5,r0
	nop 
	mov.l @(0x9C,PC),r4
	mov.w r0,@(0x1C,r14)
	mov 0x02,r0
	mov.b r0,@(0x5,r4)
	mov r5,r0
	nop 
	mov.b r0,@(0x6,r4)

loc_8C083678:
	mov.l @(0x90,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c08368e

loc_8C083684:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0836dc
	mov.l @r15+,r14

loc_8C08368E:
	mov.w @(0x66,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0836c8
	mov.b @(r0,r14),r3
	add 0x60,r0
	mov 0x00,r4
	add 0x42,r3
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
	mov.w @(0x36,PC),r0
	mov.b r4,@(r0,r14)
	mov r4,r0
	nop 
	mov.w r0,@(0x1C,r14)

loc_8C0836C8:
	lds.l @r15+,pr
	mov.l @(0x48,PC),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0836D4:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C0836DC:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0836FA,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)

loc_8C0836E8:
	mov.l @(loc_8C083718,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0836ee:
	#data 0x0158
loc_8c0836f0:
	#data 0x0130
loc_8c0836f2:
	#data 0x01a0
loc_8c0836f4:
	#data 0x0140
loc_8c0836f6:
	#data 0x019e
loc_8c0836f8:
	#data 0x0141
loc_8c0836fa:
	#data 0x012c
	#align4

loc_8c0836fc:
	#data 0x8C28C608
loc_8c083700:
	#data 0x40D55555
loc_8c083704:
	#data 0x414DB6Db
loc_8c083708:
	#data 0x8C26A518
loc_8C08370C:
	#data bank03.loc_8c034dee
loc_8C083710:
	#data 0x8C2896B0
loc_8C083714:
	#data bank04.loc_8c045748
loc_8C083718:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C08371C:
	mov.w @(0x106,PC),r0
	mov.l @(0x114,PC),r5
	mov.w @(r0,r4),r3
	tst r3,r3
	bf loc_8c08373c
	mova @(0x110,PC),r0
	fmov @r0,fr3
	mov.w @(0xFA,PC),r0
	fmov @(r0,r5),fr2
	mov 0x34,r0
	fmov @(r0,r4),fr1
	fadd fr3,fr2
	fcmp/gt fr1,fr2
	bt loc_8c08374e
	bra loc_8c083752
	nop

loc_8C08373C:
	mova @(0xFC,PC),r0
	fmov @r0,fr3
	mov.w @(0xE6,PC),r0
	fmov @(r0,r5),fr2
	mov 0x34,r0
	fmov @(r0,r4),fr1
	fadd fr3,fr2
	fcmp/gt fr2,fr1
	bf loc_8c083752

loc_8C08374E:
	rts 
	mov 0x01,r0

loc_8C083752:
	mov 0x00,r0
	rts
	nop

;-------------------------------------------------------------------------------
loc_8c083758:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov 0x00,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov r4,r9
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.w @(0xBC,PC),r8
	mov.l @(0xD0,PC),r10
	bra loc_8c0837c2
	mov r12,r13

loc_8c083774:
	tst r13,r13
	bf loc_8c08378c
	mov 0x01,r5
	mov 0x00,r6
	jsr @r10
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0837d6
	mov r0,r14
	mov.l r12,@(0x14,r14)
	bra loc_8c08379a
	mov r12,r11

loc_8c08378c:
	mov 0x01,r5
	mov 0x02,r6
	jsr @r10
	mov r14,r4
	tst r0,r0
	bt.s loc_8c0837d6
	mov r0,r14

loc_8c08379a:
	mov 0x26,r0
	mov.l @(0xA4,PC),r3
	mov.w @(0x8C,PC),r4
	mov.l r3,@(0x10,r14)
	add r14,r4
	mov.l r9,@(0x18,r14)
	mov.w r8,@(r0,r14)
	mov 0x23,r0
	mov.b r13,@(r0,r14)
	add 0x01,r13
	mov.w @(0x74,PC),r0
	mov.l @(0x18,r14),r3
	mov.w @(r0,r3),r2
	mov.w r2,@(r0,r14)
	add 0x28,r0
	mov.l r11,@(0x14,r14)
	mov r14,r11
	mov.l @(0x18,r14),r3
	mov.w @(r0,r3),r2
	mov.w r2,@r4

loc_8c0837c2:
	mov.w @(0x6A,PC),r0
	mov.b @(r0,r9),r3
	mov.l @(0x80,PC),r0
	extu.b r3,r3
	mov.b @(r0,r3),r2
	extu.b r2,r2
	cmp/ge r2,r13
	bf loc_8c083774
	mov r14,r0
	nop 

loc_8c0837d6:
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
loc_8C0837E8:
	mov r4,r3
	mov.l @(loc_8C08384C,pc),r1 ; r1 set to 0x8C15423c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0837FA:
	mov 0x23,r0 ; r0 set to 0x23
	mov.l @(0x18,r4),r6
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
	extu.b r0,r0
	cmp/pz r0
	bf/s loc_8C08380c
	mov 0x00,r5 ; r5 set to 0x00
	bra loc_8C083816
	and 0x01,r0

loc_8C08380C:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C083816:
	tst r0,r0
	bf loc_8C083850
	mov.w @(loc_8C083832,pc),r0 ; r0 set to 0x19C, r0 set to 0x19c
	mov 0x42,r7 ; r7 set to 0x42, r7 set to 0x42
	mov.b r7,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x19D, r0 set to 0x19d
	bra loc_8C083858
	mov.b r7,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c083826:
	#data 0x0130
loc_8c083828:
	#data 0x0098
loc_8c08382a:
	#data 0x009c
loc_8c08382c:
	#data 0x1700
loc_8c08382e:
	#data 0x00cc
loc_8c083830:
	#data 0x01a3
loc_8c083832:
	#data 0x019c
	#align4

loc_8c083834:
	#data 0x8C26A518
loc_8c083838:
	#data 0xC312AAAa
loc_8c08383c:
	#data 0x4312AAAa
loc_8C083840:
	#data bank04.loc_8c044F12
loc_8C083844:
	#data loc_8C0837E8
loc_8C083848:
	#data bank13.loc_8c13AE94
loc_8C08384C:
	#data bank15.loc_8c15423c

;==============================================
loc_8C083850:
	mov.w @(loc_8C08394E,pc),r0 ; r0 set to 0x19c
	mov.b r5,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x19d
	mov.b r5,@(r0,r4)

loc_8C083858:
	mov.w @(loc_8C083950,pc),r0 ; r0 set to 0x1A3, r0 set to 0x1A3
	mov.b @(r0,r6),r3
	tst r3,r3
	bt loc_8C08388c
	mov 0x23,r0 ; r0 set to 0x23, r0 set to 0x23
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???, r0 ??? bc r4 is ???	
	mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
	extu.b r0,r0
	cmp/gt r0,r3
	addc r3,r0
	shar r0
	cmp/pz r0
	bf loc_8C083876
	bra loc_8C083880
	and 0x01,r0

loc_8C083876:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C083880:
	cmp/eq 0x01,r0
	bf loc_8C083888
	bra loc_8C0838B6
	mov 0x44,r6

loc_8C083888:
	bra loc_8C0838B6
	mov 0x45,r6

loc_8C08388C:
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
	mov 0x00,r3 ; r3 set to 0x00
	extu.b r0,r0
	cmp/gt r0,r3
	addc r3,r0
	shar r0
	cmp/pz r0
	bf loc_8C0838A2
	bra loc_8C0838Ac
	and 0x01,r0

loc_8C0838A2:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C0838AC:
	cmp/eq 0x01,r0
	bf loc_8C0838B4
	bra loc_8C0838B6
	mov 0x30,r6

loc_8C0838B4:
	mov 0x38,r6 ; r6 set to 0x38

loc_8C0838B6:
	mov.w @(loc_8C083952,pc),r0 ; r0 set to 0x1A1, r0 set to 0x1A1
	mov.l @(loc_8C08395C,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
	mov.b r6,@(r0,r4)
	add 0x0B,r0 ; r0 set to 0x1AC, r0 set to 0x1Ac
	mov.w r5,@(r0,r4)
	add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19e
	mov.b r5,@(r0,r4)
	add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4
	mov.l r5,@(r0,r4)
	mov.b @(0x02,r4),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4
	shll r0 ; r0 set to 0x188, r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	rts
	mov.w r1,@(r0,r2)

;-------------------------------------------------------------------------------
loc_8c0838da:
	mov.w @(loc_8C083956,pc),r0
	mov.l @(0x18,r4),r5
	mov.b @(r0,r4),r3
	mov.w @(loc_8C083954,pc),r6
	tst r3,r3
	bt/s loc_8c0838f2
	add r4,r6
	mov 0x01,r0
	mov.w r0,@(0x04,r6) 
	mov 0x08,r3
	mov.w @(loc_8C083958,pc),r0
	mov.l r3,@(r0,r5) 

loc_8c0838f2:
	mov 0x23,r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c083908
	mov.w @(loc_8C083958,pc),r0
	mov.l @(r0,r5),r2
	tst r2,r2
	bt loc_8c083908
	mov.l @(r0,r5),r2
	add 0xFF,r2
	mov.l r2,@(r0,r5) 

loc_8c083908:
	mov.w @(loc_8C083958,pc),r0
	mov.l @(r0,r5),r3
	tst r3,r3
	bt/s loc_8c08398c
	mov 0x00,r6
	mov.w @(loc_8c08394e,pc),r0
	mov.b r6,@(r0,r4) 
	add 0x01,r0
	mov.b r6,@(r0,r4) 
	add 0x06,r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bt loc_8c083960
	mov 0x23,r0
	mov.b @(r0,r4),r0
	mov 0x00,r3
	extu.b r0,r0
	cmp/gt r0,r3
	addc r3,r0
	shar r0
	cmp/pz r0
	bf loc_8c083938
	bra loc_8c083942
	and 0x01,r0 

loc_8c083938:
	not r0,r0
	add 0x01,r0
	and 0x01,r0 
	not r0,r0
	add 0x01,r0

loc_8c083942:
	cmp/eq 0x01,r0
	bf loc_8c08394a
	bra loc_8c083a1a
	mov 0x44,r5

loc_8c08394a:
	bra loc_8c083a1a
	mov 0x45,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c08394e:
	#data 0x019C
loc_8c083950:
	#data 0x01A3
loc_8c083952:
	#data 0x01A1
loc_8C083954:
	#data 0x00CC
loc_8C083956:
	#data 0x019E
loc_8C083958:
	#data 0x02C8
	#align4

loc_8c08395c:
	#data 0x8c2896b0

;==============================================
loc_8c083960:
	mov 0x23,r0
	mov.b @(r0,r4),r0
	mov 0x00,r3
	extu.b r0,r0
	cmp/gt r0,r3
	addc r3,r0
	shar r0
	cmp/pz r0
	bf loc_8c083976
	bra loc_8c083980
	and 0x01,r0 

loc_8c083976:
	not r0,r0
	add 0x01,r0
	and 0x01,r0 
	not r0,r0
	add 0x01,r0

loc_8c083980:
	cmp/eq 0x01,r0 
	bf loc_8c083988
	bra loc_8c083a1a
	mov 0x30,r5

loc_8c083988:
	bra loc_8c083a1a
	mov 0x38,r5

loc_8c08398c:
	mov 0x23,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/pz r0
	bf loc_8c08399a
	bra loc_8c0839a4
	and 0x01,r0 

loc_8c08399a:
	not r0,r0
	add 0x01,r0
	and 0x01,r0 
	not r0,r0
	add 0x01,r0

loc_8c0839a4:
	tst r0,r0
	bf loc_8c0839b4
	mov.w @(loc_8C083A3E,pc),r0
	mov 0x42,r7
	mov.b r7,@(r0,r4) 
	add 0x01,r0
	bra loc_8c0839bc
	mov.b r7,@(r0,r4) 

loc_8c0839b4:
	mov.w @(loc_8C083A3E,pc),r0
	mov.b r6,@(r0,r4) 
	add 0x01,r0
	mov.b r6,@(r0,r4) 

loc_8c0839bc:
	mov.w @(loc_8C083A40,pc),r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bt loc_8c0839f0
	mov 0x23,r0
	mov.b @(r0,r4),r0
	mov 0x00,r3
	extu.b r0,r0
	cmp/gt r0,r3
	addc r3,r0
	shar r0
	cmp/pz r0
	bf loc_8c0839da
	bra loc_8c0839e4
	and 0x01,r0 

loc_8c0839da:
	not r0,r0
	add 0x01,r0
	and 0x01,r0 
	not r0,r0
	add 0x01,r0

loc_8c0839e4:
	cmp/eq 0x01,r0 
	bf loc_8c0839ec
	bra loc_8c083a1a
	mov 0x44,r5

loc_8c0839ec:
	bra loc_8c083a1a
	mov 0x45,r5

loc_8c0839f0:
	mov 0x23,r0
	mov.b @(r0,r4),r0
	mov 0x00,r3
	extu.b r0,r0
	cmp/gt r0,r3
	addc r3,r0
	shar r0
	cmp/pz r0
	bf loc_8c083a06
	bra loc_8c083a10
	and 0x01,r0 

loc_8c083a06:
	not r0,r0
	add 0x01,r0
	and 0x01,r0 
	not r0,r0
	add 0x01,r0

loc_8c083a10:
	cmp/eq 0x01,r0 
	bf loc_8c083a18
	bra loc_8c083a1a
	mov 0x30,r5

loc_8c083a18:
	mov 0x38,r5

loc_8c083a1a:
	mov.w @(loc_8C083A42,pc),r0
	mov.l @(loc_8C083A44,pc),r3
	mov.b r5,@(r0,r4) 
	add 0x0B,r0
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
	rts 
	mov.w r1,@(r0,r2) 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C083A3E:
	#data 0x019C
loc_8C083A40:
	#data 0x01A3
loc_8C083A42:
	#data 0x01A1
	#align4

loc_8C083A44:
#data 0x8C2896B0

;==============================================
loc_8C083A48:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r8,@-r15
	mov.w @(loc_8C083B60,pc),r1 ; r1 set to 0xDc
	mov.w @(loc_8C083B5E,pc),r13 ; r13 set to 0xCc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r13 ; r13 ??? bc r14 is ???	
	mov.l @(0x18,r14),r11
	add r14,r1 ; r1 ??? bc r14 is ???	
	add 0x01,r0
	mov.l @(loc_8C083B6C,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C083B60,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C083B62,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C083B64,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C083B70,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov r14,r1
	add 0x34,r1
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C083B62,pc),r0 ; r0 set to 0x12c
	mov.l @(loc_8C083B70,pc),r3 ; r3 set to 0x8C1294C8
	mov.b r4,@(r0,r14)
	mov.l @(0x18,r14),r2
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C083B66,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r11),r0 ; r0 ??? bc r11 is ???	
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8C083B08
	mov.w @(loc_8C083B68,pc),r0 ; r0 set to 0x130
	mov 0x34,r8 ; r8 set to 0x34
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???	
	tst r3,r3
	bt/s loc_8C083AF2
	add r14,r8 ; r8 ??? bc r14 is ???	
	mov.l @(loc_8C083B74,pc),r1 ; r1 set to 0x430F0000
	lds r1,fpul
	bra loc_8C083AF8
	fsts fpul,fr3

loc_8C083AF2:
	mov.l @(loc_8C083B78,pc),r2 ; r2 set to 0xC30F0000
	lds r2,fpul
	fsts fpul,fr3

loc_8C083AF8:
	fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(loc_8C083B7C,pc),r1 ; r1 set to 0x433B0000, r1 set to 0x433B0000
	fadd fr3,fr2
	lds r1,fpul
	fmov.s fr2,@r8
	bra loc_8C083B30
	fsts fpul,fr3

loc_8C083B08:
	mov.w @(loc_8C083B68,pc),r0 ; r0 set to 0x130
	mov 0x34,r8 ; r8 set to 0x34
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_8C083B1c
	add r14,r8 ; r8 ??? bc r14 is ???	
	mov.l @(loc_8C083B80,pc),r1 ; r1 set to 0x43020000
	lds r1,fpul
	bra loc_8C083B22
	fsts fpul,fr3

loc_8C083B1C:
	mov.l @(loc_8C083B84,pc),r2 ; r2 set to 0xC3020000
	lds r2,fpul
	fsts fpul,fr3

loc_8C083B22:
	fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(loc_8C083B88,pc),r1 ; r1 set to 0x43080000, r1 set to 0x43080000
	fadd fr3,fr2
	lds r1,fpul
	fsts fpul,fr3
	fmov.s fr2,@r8

loc_8C083B30:
	fmov.s @(r0,r14),fr2
	mov 0x34,r8 ; r8 set to 0x34, r8 set to 0x34, r8 set to 0x34
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r14),fr3
	mov 0x64,r0 ; r0 set to 0x64, r0 set to 0x64, r0 set to 0x64
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C083B68,pc),r0 ; r0 set to 0x130, r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r14),r2
	tst r2,r2
	bt/s loc_8C083B8c
	add r14,r8 ; r8 ??? bc r14 is ???, r8 ??? bc r14 is ???, r8 ??? bc r14 is ???	
	mov 0x23,r3 ; r3 set to 0x23, r3 set to 0x23, r3 set to 0x23
	add r14,r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
	mov.b @r3,r3
	extu.b r3,r3
	mov r3,r2
	shll2 r3
	add r2,r3
	shll2 r3
	bra loc_8C083BA0
	shll r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C083B5E:
	#data 0x00Cc
loc_8C083B60:
	#data 0x00Dc
loc_8C083B62:
	#data 0x012c
loc_8C083B64:
	#data 0x01A3
loc_8C083B66:
	#data 0x01F9
loc_8C083B68:
	#data 0x0130
	#align4

loc_8C083B6C:
	#data bank12.loc_8c129560
loc_8C083B70:
	#data bank12.loc_8c1294C8
loc_8C083B74:
	#data 0x430F0000
loc_8C083B78:
	#data 0xC30F0000
loc_8C083B7C:
	#data 0x433B0000
loc_8C083B80:
	#data 0x43020000
loc_8C083B84:
	#data 0xC3020000
loc_8C083B88:
	#data 0x43080000

;==============================================
loc_8C083B8C:
	mov 0x23,r1 ; r1 set to 0x23
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.b @r1,r1
	extu.b r1,r1
	mov r1,r3
	shll2 r1
	add r3,r1
	shll2 r1
	shll r1
	neg r1,r3

loc_8C083BA0:
	lds r3,fpul
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @r8,fr2
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@r8
	fmov.s @(r0,r14),fr3
	mov 0x70,r0 ; r0 set to 0x70, r0 set to 0x70
	fmov.s fr3,@(r0,r14)
	mov 0x23,r0 ; r0 set to 0x23, r0 set to 0x23
	mov.b @(r0,r14),r3
	tst r3,r3
	bt/s loc_8C083BCa
	mov 0x00,r12 ; r12 set to 0x00, r12 set to 0x00
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
	mov.b r12,@(r0,r14)
	mov 0x23,r0 ; r0 set to 0x23, r0 set to 0x23
	mov.b @(r0,r14),r3
	mov 0x31,r0 ; r0 set to 0x31, r0 set to 0x31
	bra loc_8C083BE0
	mov.b r3,@(r0,r14)

loc_8C083BCA:
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x0B,r1 ; r1 set to 0x0b
	mov.b r1,@(r0,r14)
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r14),r3
	mov 0x31,r0 ; r0 set to 0x31
	mov 0x20,r5 ; r5 set to 0x20
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C083CC4,pc),r3 ; r3 set to 0x8C042008
	jsr @r3
	mov r14,r4

loc_8C083BE0:
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fldi0 fr4
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
	mov.l @(0x18,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???	
	mov.w @(0x1E,r0),r0
	mov.w r0,@(0x1C,r14)
	mov.w @(loc_8C083CBC,pc),r0 ; r0 set to 0x19C, r0 set to 0x19c
	mov.b r12,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x19D, r0 set to 0x19d
	mov.b r12,@(r0,r14)
	mov 0x23,r0 ; r0 set to 0x23, r0 set to 0x23
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???	
	extu.b r0,r0
	cmp/gt r0,r3
	addc r3,r0
	shar r0
	cmp/pz r0
	bf loc_8C083C0e
	bra loc_8C083C18
	and 0x01,r0

loc_8C083C0E:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C083C18:
	cmp/eq 0x01,r0
	bf loc_8C083C20
	bra loc_8C083C22
	mov 0x30,r4

loc_8C083C20:
	mov 0x38,r4 ; r4 set to 0x38

loc_8C083C22:
	mov.w @(loc_8C083CBE,pc),r0 ; r0 set to 0x1A1, r0 set to 0x1A1
	mov.l @(loc_8C083CC8,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
	mov.b r4,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC, r0 set to 0x1Ac
	mov.w r12,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19e
	mov.b r12,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4
	mov.l r12,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4
	shll r0 ; r0 set to 0x188, r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
	mov.w r0,@(0x02,r13)
	mov.w @(loc_8C083CC0,pc),r0 ; r0 set to 0x2C8, r0 set to 0x2C8
	mov.l r12,@(r0,r11)
	mov 0x23,r0 ; r0 set to 0x23, r0 set to 0x23
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???	
	mov.l @(loc_8C083CCC,pc),r12 ; r12 set to 0x8C034E8C, r12 set to 0x8C034E8c
	extu.b r0,r0
	cmp/eq 0x0E,r0
	bf loc_8C083C64
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	mov 0x02,r6 ; r6 set to 0x02, r6 set to 0x02
	jsr @r12
	mov r14,r4 ; r4 ??? bc r14 is ???	
	bra loc_8C083C72
	nop

loc_8C083C64:
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r14),r2
	mov 0x17,r5 ; r5 set to 0x17
	tst r2,r2
	movt r6
	jsr @r12
	mov r14,r4

loc_8C083C72:
	mov 0x02,r0 ; r0 set to 0x02, r0 set to 0x02
	mov.w r0,@(0x06,r13)
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C083C84:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x24,r0 ; r0 set to 0x24
	mov.l r12,@-r15
	mov.w @(loc_8C083CC2,pc),r13 ; r13 set to 0xCc
	mov.l r8,@-r15
	add r14,r13 ; r13 ??? bc r14 is ???	
	sts.l pr,@-r15
	mov.l @(0x18,r14),r12
	mov.b @(r0,r12),r3
	mov.b r3,@(r0,r14)
	mov.w @(0x06,r13),r0
	tst r0,r0
	bt loc_8C083CAa
	mov.w @(0x06,r13),r0
	add 0xFF,r0 ; r0 set to 0x23
	bra loc_8C083CD4
	mov.w r0,@(0x06,r13)

loc_8C083CAA:
	mov.w @(0x08,r13),r0
	tst r0,r0
	bf loc_8C083CD0
	mov 0x01,r0 ; r0 set to 0x01
	mov.w r0,@(0x08,r13)
	bsr loc_8C0837Fa
	mov r14,r4
	bra loc_8C083CD4
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C083CBC:
	#data 0x019c
loc_8C083CBE:
	#data 0x01A1
loc_8C083CC0:
	#data 0x02C8
loc_8C083CC2:
	#data 0x00Cc
	#align4

loc_8C083CC4:
	#data bank04.loc_8c042008
loc_8C083CC8:
	#data 0x8C2896B0
loc_8C083CCC:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C083CD0:
	bsr loc_8C0838Da
	mov r14,r4

loc_8C083CD4:
	mov.l @(0x18,r14),r2
	mov r14,r1
	mov.l @(loc_8C083DD8,pc),r3 ; r3 set to 0x8C1294C8, r3 set to 0x8C1294C8
	add 0x34,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
	mov.w @(loc_8C083DD0,pc),r0 ; r0 set to 0x1F9, r0 set to 0x1F9
	mov.b @(r0,r12),r0 ; r0 ??? bc r12 is ???, r0 ??? bc r12 is ???	
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8C083D16
	mov.w @(loc_8C083DD2,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	mov 0x34,r8 ; r8 set to 0x34, r8 set to 0x34
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
	tst r3,r3
	bt/s loc_8C083D00
	add r14,r8 ; r8 ??? bc r14 is ???, r8 ??? bc r14 is ???	
	mov.l @(loc_8C083DDC,pc),r1 ; r1 set to 0x430F0000, r1 set to 0x430F0000
	lds r1,fpul
	bra loc_8C083D06
	fsts fpul,fr3

loc_8C083D00:
	mov.l @(loc_8C083DE0,pc),r2 ; r2 set to 0xC30F0000
	lds r2,fpul
	fsts fpul,fr3

loc_8C083D06:
	fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(loc_8C083DE4,pc),r1 ; r1 set to 0x433B0000, r1 set to 0x433B0000
	fadd fr3,fr2
	lds r1,fpul
	fmov.s fr2,@r8
	bra loc_8C083D3e
	fsts fpul,fr3

loc_8C083D16:
	mov.w @(loc_8C083DD2,pc),r0 ; r0 set to 0x130
	mov 0x34,r8 ; r8 set to 0x34
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_8C083D2a
	add r14,r8 ; r8 ??? bc r14 is ???	
	mov.l @(loc_8C083DE8,pc),r1 ; r1 set to 0x43020000
	lds r1,fpul
	bra loc_8C083D30
	fsts fpul,fr3

loc_8C083D2A:
	mov.l @(loc_8C083DEC,pc),r2 ; r2 set to 0xC3020000
	lds r2,fpul
	fsts fpul,fr3

loc_8C083D30:
	fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(loc_8C083DF0,pc),r1 ; r1 set to 0x43080000, r1 set to 0x43080000
	fadd fr3,fr2
	lds r1,fpul
	fsts fpul,fr3
	fmov.s fr2,@r8

loc_8C083D3E:
	fmov.s @(r0,r14),fr2
	mov 0x34,r8 ; r8 set to 0x34, r8 set to 0x34, r8 set to 0x34
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r14),fr3
	mov 0x64,r0 ; r0 set to 0x64, r0 set to 0x64, r0 set to 0x64
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C083DD2,pc),r0 ; r0 set to 0x130, r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r14),r2
	tst r2,r2
	bt/s loc_8C083D6c
	add r14,r8 ; r8 ??? bc r14 is ???, r8 ??? bc r14 is ???, r8 ??? bc r14 is ???	
	mov 0x23,r3 ; r3 set to 0x23, r3 set to 0x23, r3 set to 0x23
	add r14,r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
	mov.b @r3,r3
	extu.b r3,r3
	mov r3,r2
	shll2 r3
	add r2,r3
	shll2 r3
	bra loc_8C083D80
	shll r3

loc_8C083D6C:
	mov 0x23,r1 ; r1 set to 0x23
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.b @r1,r1
	extu.b r1,r1
	mov r1,r3
	shll2 r1
	add r3,r1
	shll2 r1
	shll r1
	neg r1,r3

loc_8C083D80:
	lds r3,fpul
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @r8,fr2
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@r8
	fmov.s @(r0,r14),fr3
	mov 0x70,r0 ; r0 set to 0x70, r0 set to 0x70
	fmov.s fr3,@(r0,r14)
	mov.b @(0x01,r14),r0
	mov.l @(0x18,r14),r3
	mov r0,r2 ; r2 set to 0x70, r2 set to 0x70
	mov.b @(0x01,r3),r0
	cmp/eq r0,r2
	bt loc_8C083DAc
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r8
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8C08426c
	mov.l @r15+,r14

loc_8c083dac:
	mov.w @(loc_8C083DD4,pc),r0
	mov.l @(0x18,r14),r2
	mov.w @r13,r3
	mov.w @(r0,r2),r1
	cmp/eq r1,r3
	bt loc_8c083dc2
	mov 0x02,r0
	mov.b r0,@(0x04,r14) 
	mov 0x00,r3
	mov.w @(loc_8C083DD6,pc),r0
	mov.b r3,@(r0,r14) 

loc_8c083dc2:
	mov 0x23,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/pz r0
	bf loc_8c083df4
	bra loc_8c083dfe
	and 0x01,r0 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c083dd0:
	#data 0x01F9
loc_8c083dd2:
	#data 0x0130
loc_8C083DD4:
	#data 0x0158
loc_8C083DD6:
	#data 0x012C
	#align4
loc_8c083dd8:
	#data 0x8c1294c8
loc_8c083ddc:
	#data 0x430f0000
loc_8c083de0:
	#data 0xc30f0000
loc_8c083de4:
	#data 0x433b0000
loc_8c083de8:
	#data 0x43020000
loc_8c083dec:
	#data 0xc3020000
loc_8c083df0:
	#data 0x43080000

;==============================================
loc_8c083df4:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8c083dfe:
	tst r0,r0
	bf loc_8c083e18
	bsr loc_8c08371c
	mov r14,r4
	tst r0,r0
	bf loc_8c083e18
	mov.w @(loc_8C083EC0,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c083e18
	mov.l @(loc_8c083ecc,pc),r3
	jsr @r3
	mov r14,r4

loc_8c083e18:
	bsr loc_8c08371c
	mov r14,r4
	tst r0,r0
	bf/s loc_8c083e2a
	mov r14,r4
	mov.w @(loc_8C083EC2,pc),r0
	mov 0x01,r2
	bra loc_8c083e30
	mov.b r2,@(r0,r14) 

loc_8c083e2a:
	mov.w @(loc_8C083EC2,pc),r0
	mov 0x00,r1
	mov.b r1,@(r0,r14)

loc_8c083e30:
	bsr loc_8c083e44
	nop 
	lds.l @r15+,pr 
	mov.l @(loc_8c083ed0,pc),r2
	mov r14,r4
	mov.l @r15+,r8
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c083e44:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	fmov.s fr13,@-r15
	fmov.s fr12,@-r15
	sts.l pr,@-r15
	add 0xD8,r15
	mov r4,r14
	mov.l @(0x14,r14),r3
	mov.w @(loc_8C083EC4,pc),r13
	mova @(loc_8C083ED8,pc),r0 
	mov.l @(loc_8c083ed4,pc),r11
	tst r3,r3
	add r14,r13
	bt/s loc_8c083e70
	fmov.s @r0,fr14
	bra loc_8c084144
	nop 

loc_8c083e70:
	mov.w @(0x1E,r14),r0 
	cmp/pz r0
	bf loc_8c083e7a
	bra loc_8c083e84
	and 0x03,r0 

loc_8c083e7a:
	not r0,r0
	add 0x01,r0
	and 0x03,r0 
	not r0,r0
	add 0x01,r0

loc_8c083e84:
	tst r0,r0
	bt loc_8c083e8c
	bra loc_8c084068
	nop 

loc_8c083e8c:
	mov.l @(loc_8c083edc,pc),r12
	mov 0x00,r0
	jsr @r12
	mov.w r0,@(0x1E,r14) 
	mov r0,r1
	mov.l @(loc_8c083ee0,pc),r3
	mov.w @(loc_8C083EC6,pc),r0
	jsr @r3
	nop 
	mov r0,r4
	mov.w @(loc_8C083ECA,pc),r0
	mov.w @(loc_8C083EC8,pc),r2
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_8c083ee8
	add r2,r4
	lds r4,fpul 
	cmp/pz r4
	bt/s loc_8c083ebc
	float fpul,fr3
	mov.l @(loc_8C083EE4,pc),r3
	lds r3,fpul 
	fsts fpul,fr2
	fadd fr2,fr3

loc_8c083ebc:
	bra loc_8c083f00
	fmov fr3,fr4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C083EC0:
	#data 0x019E
loc_8C083EC2:
	#data 0x012C
loc_8C083EC4:
	#data 0x0088
loc_8C083EC6:
	#data 0x00C8
loc_8C083EC8:
	#data 0x0096
loc_8C083ECA:
	#data 0x0130
	#align4

loc_8c083ecc:
	#data bank04.loc_8c045748
loc_8c083ed0:
	#data bank03.loc_8c034dee
loc_8c083ed4:
	#data bank13.loc_8c13ae98
loc_8C083ED8:
	#data 0x40400000
loc_8c083edc:
	#data bank03.loc_8c03319e
loc_8c083ee0:
	#data bank12.loc_8c12939c
loc_8C083EE4:
	#data 0x4F800000

;==============================================
loc_8c083ee8:
	lds r4,fpul 
	cmp/pz r4
	bt/s loc_8c083ef8
	float fpul,fr3
	mov.l @(loc_8C083FD4,pc),r3
	lds r3,fpul 
	fsts fpul,fr2
	fadd fr2,fr3

loc_8c083ef8:
	fldi1 fr2
	fmul fr2,fr3
	fmov fr3,fr4
	fneg fr4

loc_8c083f00:
	mov.b @(0x07,r14),r0 
	tst r0,r0
	bf loc_8c083f0a
	mov 0x5C,r0
	fmov.s fr4,@(r0,r14)

loc_8c083f0a:
	mova @(loc_8C083FD8,pc),r0
	fmov.s @r0,fr15
	mov 0x5C,r0
	fmov.s @(r0,r14),fr3
	mov 0x10,r0
	fsub fr3,fr4
	fdiv fr15,fr4
	jsr @r12
	fmov.s fr4,@(r0,r13) 
	mov r0,r1
	mov.l @(loc_8c083fdc,pc),r3
	mov.w @(loc_8C083FC6,pc),r0
	jsr @r3
	nop 
	mov r0,r4
	mov.w @(loc_8C083FCA,pc),r0
	mov.w @(loc_8C083FC8,pc),r2
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_8c083f48
	add r2,r4
	lds r4,fpul 
	cmp/pz r4
	bt/s loc_8c083f44
	float fpul,fr3
	mov.l @(loc_8C083FD4,pc),r3
	lds r3,fpul 
	fsts fpul,fr2
	fadd fr2,fr3

loc_8c083f44:
	bra loc_8c083f60
	fmov fr3,fr4

loc_8c083f48:
	lds r4,fpul
	cmp/pz r4
	bt/s loc_8c083f58
	float fpul,fr3
	mov.l @(loc_8C083FD4,pc),r3
	lds r3,fpul 
	fsts fpul,fr2
	fadd fr2,fr3

loc_8c083f58:
	fldi1 fr2
	fmul fr2,fr3
	fmov fr3,fr4
	fneg fr4

loc_8c083f60:
	mov.b @(0x07,r14),r0 
	tst r0,r0
	bf loc_8c083f6a
	mov 0x68,r0
	fmov.s fr4,@(r0,r14) 

loc_8c083f6a:
	mov 0x68,r0
	fmov.s @(r0,r14),fr3
	mov 0x18,r0
	fsub fr3,fr4
	fdiv fr15,fr4
	jsr @r12
	fmov.s fr4,@(r0,r13) 
	mov.l @(loc_8c083fdc,pc),r3
	mov r0,r1
	jsr @r3
	mov 0x32,r0
	mov r0,r4
	mov.w @(loc_8C083FCC,pc),r0
	mov.l @(0x18,r14),r5
	cmp/pz r4
	lds r4,fpul 
	mov.l @(r0,r5),r0
	shll2 r0
	fmov.s @(r0,r11),fr4
	bt/s loc_8c083f9c
	float fpul,fr3
	mov.l @(loc_8C083FD4,pc),r3
	lds r3,fpul 
	fsts fpul,fr2
	fadd fr2,fr3

loc_8c083f9c:
	mov.w @(loc_8C083FCE,pc),r0
	fadd fr3,fr4
	mov.w @(loc_8C083FD0,pc),r2
	mov.w @(r0,r5),r3
	extu.w r3,r3
	tst r2,r3
	bf/s loc_8c083fc2
	mov 0x01,r10
	mov.l @(0x18,r14),r1
	mov.w @(r0,r1),r3
	mov.w @(loc_8C083FD2,pc),r1
	extu.w r3,r3
	tst r1,r3
	bt loc_8c083fbe
	fmov fr4,fr5
	bra loc_8c083fe4
	fneg fr5

loc_8c083fbe:
	tst r10,r4
	bt loc_8c083fe0

loc_8c083fc2:
	bra loc_8c083fe4
	fmov fr4,fr5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C083FC6:
	#data 0x00C8
loc_8C083FC8:
	#data 0x01C2
loc_8C083FCA:
	#data 0x0130
loc_8C083FCC:
	#data 0x02A4
loc_8C083FCE:
	#data 0x0340
loc_8C083FD0:
	#data 0x2000
loc_8C083FD2:
	#data 0x1000
	#align4

loc_8C083FD4:
	#data 0x4F800000
loc_8C083FD8:
	#data 0x40800000
loc_8c083fdc:
	#data bank12.loc_8c12939c

;==============================================
loc_8c083fe0:
	fmov fr4,fr5
	fneg fr5

loc_8c083fe4:
	mov.b @(0x07,r14),r0 
	tst r0,r0
	bf loc_8c083fee
	mov 0x60,r0
	fmov.s fr5,@(r0,r14) 

loc_8c083fee:
	mov 0x60,r0
	fmov.s @(r0,r14),fr3
	mov 0x14,r0
	fsub fr3,fr5
	fdiv fr15,fr5
	jsr @r12
	fmov.s fr5,@(r0,r13) 
	mov.l @(loc_8c084134,pc),r3
	mov r0,r1
	jsr @r3
	mov 0x32,r0
	mov r0,r4
	mov.w @(loc_8C08412A,pc),r0
	mov.l @(0x18,r14),r5
	cmp/pz r4
	lds r4,fpul 
	mov.l @(r0,r5),r0
	shll2 r0
	fmov.s @(r0,r11),fr4
	bt/s loc_8c084020
	float fpul,fr3
	mov.l @(loc_8C084138,pc),r3
	lds r3,fpul 
	fsts fpul,fr2
	fadd fr2,fr3

loc_8c084020:
	mov.w @(loc_8C08412C,pc),r0
	mov.w @(loc_8C08412E,pc),r2
	mov.w @(r0,r5),r3
	extu.w r3,r3
	tst r2,r3
	bf/s loc_8c084044
	fadd fr3,fr4
	mov.l @(0x18,r14),r1
	mov.w @(r0,r1),r3
	mov.w @(loc_8C084130,pc),r1
	extu.w r3,r3
	tst r1,r3
	bt loc_8c084040
	fmov fr4,fr5
	bra loc_8c08404c
	fneg fr5

loc_8c084040:
	tst r10,r4
	bt loc_8c084048

loc_8c084044:
	bra loc_8c08404c
	fmov fr4,fr5

loc_8c084048:
	fmov fr4,fr5
	fneg fr5

loc_8c08404c:
	mov.b @(0x07,r14),r0 
	tst r0,r0
	bf loc_8c08405c
	mov r10,r0
	nop 
	mov.b r0,@(0x07,r14) 
	mov 0x6C,r0
	fmov.s fr5,@(r0,r14) 

loc_8c08405c:
	mov 0x6C,r0
	fmov.s @(r0,r14),fr3
	mov 0x1C,r0
	fsub fr3,fr5
	fdiv fr15,fr5
	fmov.s fr5,@(r0,r13)

loc_8c084068:
	mov 0x10,r1
	add r13,r1
	mov 0x5C,r0
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	mov 0x14,r1
	add r13,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14) 
	mov 0x60,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x18,r1
	add r13,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14) 
	mov 0x68,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x1C,r1
	add r13,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14) 
	mov 0x6C,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14) 
	mova @(loc_8C08413C,pc),r0 
	fmov.s @r0,fr6
	mov 0x5C,r0
	fmov.s @(r0,r14),fr5
	mov 0x68,r0
	fmov fr5,fr2
	fmov.s @(r0,r14),fr4
	mov 0x60,r0
	fmov fr5,fr7
	fmul fr5,fr7
	fadd fr4,fr2
	fmov fr14,fr0
	fmov fr7,fr3
	fmul fr5,fr3
	fmul fr5,fr2
	fmul fr5,fr2
	fmul fr6,fr2
	fsub fr2,fr3
	fmov fr7,fr2
	fmul fr4,fr2
	fmac fr0,fr2,fr3
	fmov fr3,fr7
	fmov.s @(r0,r14),fr3
	mov 0x68,r0
	fdiv fr7,fr3
	fmov.s fr3,@r13
	fmov.s @(r0,r14),fr3
	mov 0x5C,r0
	fmov.s @(r0,r14),fr2
	mov 0x04,r0
	fadd fr3,fr2
	fmov.s @r13,fr3
	fmul fr2,fr3
	fmul fr6,fr3
	fneg fr3
	fmov.s fr3,@(r0,r13) 
	mov 0x5C,r0
	fmov.s @r13,fr2
	fmov.s @(r0,r14),fr3
	mov 0x68,r0
	mov.l @(loc_8c084140,pc),r3
	fmul fr3,fr2
	fmov.s @(r0,r14),fr3
	mov 0x08,r0
	fmul fr3,fr2
	fmul fr14,fr2
	fmov.s fr2,@(r0,r13) 
	mov.w @(0x1E,r14),r0 
	add 0x01,r0
	mov.w r0,@(0x1E,r14) 
	mov 0x08,r0
	jsr @r3
	fmov.s @(r0,r13),fr4
	mov 0x48,r1
	mov r14,r4
	add r14,r1
	neg r0,r0
	mov.l r0,@r1
	mov.w @(loc_8C084132,pc),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt/s loc_8c084122
	add 0x48,r4
	bra loc_8c084126
	mov.l @r4,r3

loc_8c084122:
	mov.l @r4,r3
	neg r3,r3

loc_8c084126:
	bra loc_8c084236
	mov.l r3,@r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C08412A:
	#data 0x02A4
loc_8C08412C:
	#data 0x0340
loc_8C08412E:
	#data 0x2000
loc_8C084130:
	#data 0x1000
loc_8C084132:
	#data 0x0130
	#align4

loc_8c084134:
	#data bank12.loc_8c12939c
loc_8C084138:
	#data 0x4F800000
loc_8C08413C:
	#data 0x3FC00000
loc_8c084140:
	#data bank11.loc_8c11e170

;==============================================
loc_8c084144:
	mov.l @(0x14,r14),r5
	mov r14,r1
	mov.w @(loc_8C084272,pc),r4
	add 0x5C,r1
	mov r5,r2
	mov.l @(loc_8c084278,pc),r3
	add r5,r4
	add 0x5C,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x14,r14),r2
	mov r14,r1
	mov.l @(loc_8c084278,pc),r3
	add 0x68,r1
	add 0x68,r2
	jsr @r3
	mov 0x0C,r0
	mov 0x04,r0
	fmov.s @r4,fr3
	fmov.s fr3,@r13
	fmov.s @(r0,r4),fr2
	fmov.s fr2,@(r0,r13) 
	mov 0x08,r0
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r13) 
	mov 0x10,r0
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r13) 
	mov 0x14,r0
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r13) 
	mov 0x18,r0
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r13) 
	mov 0x1C,r0
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r13) 
	mov 0x64,r0
	mov.l @(0x14,r14),r12
	fmov.s @(r0,r12),fr3
	mov 0x34,r0
	fmov.s @(r0,r12),fr15
	mov.w @(loc_8C084274,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_8c0841b4
	fsub fr3,fr15
	mov.l @(loc_8c08427c,pc),r3
	mov 0x48,r0
	jsr @r3
	mov.l @(r0,r12),r4
	mova @(loc_8C084280,pc),r0 
	fmov fr0,fr3
	fmov.s @r0,fr2
	bra loc_8c0841c8
	fmul fr2,fr3

loc_8c0841b4:
	mov.l @(loc_8c08427c,pc),r3
	mov 0x48,r0
	mov.l @(0x14,r14),r4
	jsr @r3
	mov.l @(r0,r4),r4
	mova @(loc_8C084280,pc),r0 
	fmov @r0,fr3
	fmul fr3,fr0
	fmov fr0,fr3
	fneg fr3

loc_8c0841c8:
	fadd fr3,fr15
	fmov.s @r13,fr3
	mov 0x04,r0
	mov.l @(loc_8c084284,pc),r3
	fmul fr15,fr3
	fmov fr15,fr0
	fmul fr15,fr3
	fmov.s fr3,@(r0,r15) 
	mov 0x04,r0
	fmov.s @(r0,r13),fr12
	mov 0x08,r0
	fmov.s @(r0,r13),fr1
	mov 0x04,r0
	fmul fr15,fr12
	fmov.s fr1,@r15
	fmov fr12,fr2
	fmul fr15,fr2
	fmac fr0,fr3,fr2
	fmov.s @(r0,r15),fr3
	fmac fr0,fr1,fr2
	fldi1 fr0
	fadd fr0,fr0
	fmov fr2,fr13
	fmul fr0,fr12
	fmov fr14,fr0
	fmac fr0,fr3,fr12
	fmov fr1,fr3
	fmov fr12,fr4
	jsr @r3
	fadd fr3,fr4
	mov 0x48,r1
	mov r14,r4
	add r14,r1
	neg r0,r0
	mov.l r0,@r1
	mov.w @(loc_8C084274,pc),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt/s loc_8c08421c
	add 0x48,r4
	bra loc_8c084220
	mov.l @r4,r3

loc_8c08421c:
	mov.l @r4,r3
	neg r3,r3

loc_8c084220:
	mov 0x64,r0
	mov.l r3,@r4
	fmov.s @(r0,r14),fr3
	mov 0x34,r0
	fadd fr3,fr15
	fmov.s fr15,@(r0,r14) 
	mov 0x70,r0
	fmov.s @(r0,r14),fr3
	mov 0x38,r0
	fadd fr3,fr13
	fmov.s fr13,@(r0,r14)

loc_8c084236:
	add 0x28,r15
	lds.l @r15+,pr 
	fmov.s @r15+,fr12
	fmov.s @r15+,fr13
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

loc_8C08424E:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(loc_8C084288,pc),r3 ; r3 set to 0x8C042008
	jsr @r3
	mov 0x2B,r5 ; r5 set to 0x2b
	mov.b @(0x04,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C084276,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C08426C:
	mov.l @(loc_8C08428C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c084272:
	#data 0x0088
loc_8c084274:
	#data 0x0130
loc_8C084276:
	#data 0x012c
	#align4

loc_8C084278:
	#data bank12.loc_8c1294C8
loc_8C08427C:
	#data bank11.loc_8c11E2E0
loc_8c084280:
	#data 0x42200000
loc_8C084284:
	#data bank11.loc_8c11E170
loc_8C084288:
	#data bank04.loc_8c042008
loc_8C08428C:
	#data bank04.loc_8c0450C0

;==============================================
loc_8c084290:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r0
	nop 
	mov.l @(0x54,PC),r3
	mov 0x01,r6
	mov.b r0,@(0x4,r15)
	mov r6,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0842ca
	mov r0,r4
	mov.l @(0x44,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.w @(0x32,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov.w @(0x26,PC),r0
	mov.l @r15,r2
	mov.w @(r0,r2),r3
	mov.w r3,@(r0,r4)

loc_8c0842ca:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0842D2:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0842F8,pc),r1 ; r1 set to 0x8C15424c
	extu.b r0,r0
	mov.w @(loc_8C0842EE,pc),r6 ; r6 set to 0x88
	shll2 r0
	mov.l @(0x18,r14),r5
	mov.l @(r0,r1),r3
	add r14,r6 ; r6 ??? bc r14 is ???	
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0842Ea:
	#data 0x1701
loc_8C0842Ec:
	#data 0x0130
loc_8C0842EE:
	#data 0x0088
	#align4

loc_8C0842F0:
	#data bank04.loc_8c044F12
loc_8C0842F4:
	#data loc_8C0842D2
loc_8C0842F8:
	#data bank15.loc_8c15424c

;==============================================
loc_8C0842FC:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov 0x01,r4
	mov r4,r0
	nop 
	mov.w @(0x15A,PC),r1
	mov.b r0,@(0x4,r14)
	mov.w @(0x158,PC),r0
	add r14,r1
	mov.w @(0x152,PC),r2
	mov.l @(0x160,PC),r3
	jsr @r3
	add r5,r2
	mov.w @(0x14E,PC),r0
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
	mov.w @(0x134,PC),r0
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
	fldi0 fr4
	mov.b @(r0,r5),r2
	mov 0x07,r3
	mov.b r2,@(r0,r14)
	mov.w @(0x10C,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov 0x44,r4
	mov.w @(0xF6,PC),r0
	mov 0x31,r3
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x04,r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov 0x00,r4
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov.l @(0xE8,PC),r3
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	mov.l @(0xDC,PC),r3
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0xC8,PC),r0
	mov.w @(r0,r14),r1
	mov r0,r2
	add 0x54,r2
	or r2,r1
	mov r5,r2
	mov.w r1,@(r0,r14)
	mov r14,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x20,r0
	mov.l @(0xC0,PC),r4
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shll2 r0
	fmov @(r0,r4),fr5
	mov.w @(0xA6,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c0843d4
	mov 0x34,r0
	fneg fr5

loc_8C0843D4:
	mov 0x20,r3
	fmov @(r0,r14),fr3
	add r14,r3
	fadd fr5,fr3
	mov 0x04,r1
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.b @r3,r3
	fmov @(r0,r14),fr2
	extu.b r3,r3
	shll2 r3
	add r3,r4
	add r4,r1
	mov.l @(0x94,PC),r4
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov.w @(0x6E,PC),r0
	extu.b r3,r3
	mov.b @(r0,r5),r2
	add 0x8D,r0
	extu.b r2,r2
	add r2,r3
	mov.w @(r0,r14),r2
	shll2 r3
	shll r3
	tst r2,r2
	add r4,r3
	bf.s loc_8c084416
	fmov @r3,fr5
	fneg fr5

loc_8C084416:
	mov 0x5C,r0
	mov.l @(0x6C,PC),r1
	fmov fr5,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov 0x0D,r6
	mov.w @(0x46,PC),r0
	extu.b r3,r3
	mov.b @(r0,r5),r2
	mov 0x04,r0
	mov 0x17,r5
	extu.b r2,r2
	add r2,r3
	shll2 r3
	shll r3
	add r3,r4
	fmov @(r0,r4),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fldi1 fr3
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shlr r0
	shll r0
	mov.w @(r0,r1),r0
	mov.w r0,@(0x1C,r14)
	mov.l @(0x34,PC),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x30,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c084466:
	#data 0x00dc
loc_8c084468:
	#data 0x00c0
loc_8c08446a:
	#data 0x012c
loc_8c08446c:
	#data 0x01a3
loc_8c08446e:
	#data 0x019c
loc_8c084470:
	#data 0x01ac
loc_8c084472:
	#data 0x0130
	#align4

loc_8C084474:
	#data bank12.loc_8c129560
loc_8C084478:
	#data bank12.loc_8c1294C8
loc_8C08447c:
	#data 0x8C2896B0
loc_8C084480:
	#data bank13.loc_8c13AEC8
loc_8C084484:
	#data bank13.loc_8c13AEA8
loc_8C084488:
	#data bank13.loc_8c13AED8
loc_8C08448C:
	#data bank03.loc_8c034e8c
loc_8C084490:
	#data bank04.loc_8c045748

;==============================================
loc_8C084494:
	mov.w @(0x10C,PC),r0
	mov.l @(0x120,PC),r5
	mov.w @(r0,r4),r3
	tst r3,r3
	bf loc_8c0844b4
	mova @(0x11C,PC),r0
	fmov @r0,fr3
	mov.w @(0x100,PC),r0
	fmov @(r0,r5),fr2
	mov 0x34,r0
	fmov @(r0,r4),fr1
	fadd fr3,fr2
	fcmp/gt fr1,fr2
	bt loc_8c0844c6
	bra loc_8c0844ca
	nop

loc_8C0844B4:
	mova @(0x108,PC),r0
	fmov @r0,fr3
	mov.w @(0xEC,PC),r0
	fmov @(r0,r5),fr2
	mov 0x34,r0
	fmov @(r0,r4),fr1
	fadd fr3,fr2
	fcmp/gt fr2,fr1
	bf loc_8c0844ca

loc_8C0844C6:
	rts 
	mov 0x01,r0

loc_8C0844CA:
	mov 0x00,r0
	rts 
	nop 

;-------------------------------------------------------------------------------
loc_8C0844D0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0xCA,PC),r0
	mov r4,r14
	mov r5,r12
	mov.l r6,@r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c08459a
	mov 0x00,r13
	mov.w @(0xBC,PC),r0
	mov 0x02,r4
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c08454e
	fldi0 fr15
	mov r4,r0
	nop 
	mov.b r0,@(0x4,r14)
	mov 0x5C,r0
	fmov fr15,@(r0,r14)
	mov 0x60,r0
	fmov fr15,@(r0,r14)
	mov 0x68,r0
	fmov fr15,@(r0,r14)
	mov 0x6C,r0
	mov.l @(0xB4,PC),r3
	mov 0x17,r5
	fmov fr15,@(r0,r14)
	mov 0x0E,r6
	jsr @r3
	mov r14,r4
	mov.w @(0x92,PC),r0
	mov 0x0F,r2
	mov.l @(0xA8,PC),r3
	mov.l r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c084536
	mov.l @r15,r3
	mov 0x01,r2
	mov r12,r5
	mov.l r2,@r3
	mov.l @r15,r6
	bsr loc_8c0849a6
	mov r14,r4

loc_8C084536:
	mov 0x48,r0
	mov r14,r4
	mov 0x22,r5
	mov.l r13,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x88,PC),r3
	fmov @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C08454E:
	mov.w @(0x5E,PC),r5
	add r12,r5
	mov.l @(0xC,r5),r3
	tst r3,r3
	bf loc_8c084562
	mov.l @(0x10,r5),r3
	tst r3,r3
	bf loc_8c084562
	bra loc_8c0846c8
	nop 

loc_8C084562:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c084592
	mov r13,r0
	nop 
	mov.w r0,@(0x1C,r14)
	mov.w @(0x3A,PC),r0
	mov.l @(r0,r12),r3
	tst r3,r3
	bf loc_8c084580
	bra loc_8c0846c8
	nop 

loc_8C084580:
	mov.w @(0x30,PC),r0
	mov 0x3C,r2
	mov.l @(r0,r14),r3
	add 0x01,r3
	cmp/gt r2,r3
	mov.l r3,@(r0,r14)
	bf loc_8c084592
	bra loc_8c0846c8
	nop 

loc_8C084592:
	bsr loc_8c084494
	mov r14,r4
	tst r0,r0
	bt loc_8c0845d0

loc_8C08459A:
	mov 0x05,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x14,PC),r0
	bra loc_8c0846fa
	mov.b r13,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0845a4:
	#data 0x0130
loc_8c0845a6:
	#data 0x0098
loc_8c0845a8:
	#data 0x009c
loc_8c0845aa:
	#data 0x019f
loc_8c0845ac:
	#data 0x019e
loc_8c0845ae:
	#data 0x00d8
loc_8c0845b0:
	#data 0x02a4
loc_8c0845b2:
	#data 0x02b0
loc_8c0845b4:
	#data 0x00d0
loc_8c0845b6:
	#data 0x012c
	#align4

loc_8c0845b8:
	#data 0x8C26A518
loc_8c0845bc:
	#data 0xC2555555
loc_8c0845c0:
	#data 0x42555555
loc_8C0845C4:
	#data bank03.loc_8c034e8c
loc_8C0845C8:
	#data bank05.loc_8c05264c
loc_8C0845CC:
	#data bank04.loc_8c042008

;==============================================
loc_8C0845D0:
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
	mov.b @(0x6,r14),r0
	tst r0,r0
	bf loc_8c08466a
	mov.l @(0x100,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0xF0,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c084622
	mov.w @(0x1E,r14),r0
	bra loc_8c084624
	mov 0x0A,r2

loc_8C084622:
	mov 0xF6,r2

loc_8C084624:
	add r2,r0
	mov.w @(0xE0,PC),r4
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r4,r0
	bf loc_8c084638
	mov r13,r0
	nop 
	bra loc_8c084644
	mov.w r0,@(0x1E,r14)

loc_8C084638:
	mov.w @(0x1E,r14),r0
	cmp/pl r0
	bt loc_8c084644
	mov r4,r0
	nop 
	mov.w r0,@(0x1E,r14)

loc_8C084644:
	mov.w @(0x1E,r14),r0
	mov.l @(0xD8,PC),r2
	mov r0,r3
	lds r3,fpul
	mova @(0xC4,PC),r0
	fmov @r0,fr2
	mova @(0xC4,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	mova @(0xC4,PC),r0
	fmov @r0,fr0
	mov 0x48,r0
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r2,r3
	mov.l r3,@(r0,r14)

loc_8C08466A:
	mov.b @(0x5,r14),r0
	mov 0x03,r4
	extu.b r0,r0
	cmp/gt r4,r0
	bt loc_8c0846b6
	mov.w @(0x94,PC),r0
	fmov @(r0,r12),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c0846b6
	fmov fr15,@(r0,r14)
	mov.b @(0x5,r14),r0
	mov.l @(0x9C,PC),r1
	add 0x01,r0
	lds r1,fpul
	mov.b r0,@(0x5,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fsts fpul,fr3
	fmul fr3,fr2
	fmov fr2,@(r0,r14)
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	cmp/gt r4,r0
	bf loc_8c0846b6
	mov 0x04,r0
	mov.b r0,@(0x5,r14)
	mov 0x5C,r0
	fmov fr15,@(r0,r14)
	mov 0x60,r0
	fmov fr15,@(r0,r14)
	mov 0x68,r0
	fmov fr15,@(r0,r14)
	mov 0x6C,r0
	fmov fr15,@(r0,r14)
	mov 0x01,r0
	mov.b r0,@(0x6,r14)

loc_8C0846B6:
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x68,PC),r3
	fmov @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0846C8:
	mov r4,r0
	nop 
	mov.b r0,@(0x4,r14)
	mov 0x5C,r0
	fmov fr15,@(r0,r14)
	mov 0x60,r0
	fmov fr15,@(r0,r14)
	mov 0x68,r0
	fmov fr15,@(r0,r14)
	mov 0x6C,r0
	mov.l @(0x4C,PC),r3
	mov 0x22,r5
	fmov fr15,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0x48,PC),r2
	mov 0x17,r5
	mov 0x0E,r6
	jsr @r2
	mov r14,r4
	mov 0x48,r0
	mov.l r13,@(r0,r14)
	mov 0x0F,r3
	mov.w @(0x14,PC),r0
	mov.l r3,@(r0,r14)

loc_8C0846FA:
	add 0x04,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8c084708:
	#data 0x0130
loc_8c08470a:
	#data 0x0168
loc_8c08470c:
	#data 0x041c
loc_8c08470e:
	#data 0x00D8
	#align4

loc_8C084710:
	#data bank03.loc_8c034dee
loc_8C084714:
	#data 0x47800000
loc_8C084718:
	#data 0x43B40000
loc_8C08471c:
	#data 0x3F000000
loc_8C084720:
	#data 0x0000FFFf
loc_8C084724:
	#data 0xBE4CCCCd
loc_8C084728:
	#data bank04.loc_8c045748
loc_8C08472C:
	#data bank04.loc_8c042008
loc_8C084730:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C084734:
	mova @(loc_8C08485C,pc),r0  ; r0 init to 0x8C08485c
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	fmov.s @r0,fr3
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s fr3,@(r0,r14)
	mov.b @(0x01,r14),r0
	mov.l @(0x18,r14),r3
	mov r0,r2 ; r2 set to 0x50
	mov.b @(0x01,r3),r0
	cmp/eq r0,r2
	bt/s loc_8C084766
	mov r6,r13
	lds.l @r15+,pr
	mov r13,r6
	mov r14,r4
	fmov.s @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8C084AEc
	mov.l @r15+,r14

loc_8C084766:
	mov.l @r13,r3
	tst r3,r3
	bt/s loc_8C08478c
	fldi1 fr15
	mov r13,r6
	bsr loc_8C084A68
	mov r14,r4
	tst r0,r0
	bf loc_8C08478c
	mov 0x04,r0 ; r0 set to 0x04
	mov.b r0,@(0x04,r14)
	mov 0x14,r0 ; r0 set to 0x14
	mov.w r0,@(0x1E,r14)
	mov 0x01,r3 ; r3 set to 0x01
	mov.w @(loc_8C084854,pc),r0 ; r0 set to 0x108
	fmov.s fr15,@(r0,r14)
	add 0x24,r0 ; r0 set to 0x12c
	bra loc_8C084804
	mov.b r3,@(r0,r14)

loc_8c08478c:
	mov.l @(bank08.loc_8c084860,pc),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c084804
	mov.l @r13,r3
	tst r3,r3
	bf/s loc_8c0847d6
	mov 0x00,r12
	mov.b @(0x05,r14),r0 
	tst r0,r0
	bt loc_8c0847ae
	mova @(loc_8C084864,pc),r0 
	fmov.s @r0,fr3
	mov 0x38,r0
	fmov.s fr3,@(r0,r14) 

loc_8c0847ae:
	mov 0x30,r0
	mov.w r0,@(0x1E,r14) 
	mov 0x37,r3
	mov.w @(loc_8C084856,pc),r0
	mov.b r3,@(r0,r14) 
	add 0x0B,r0
	mov.w r12,@(r0,r14) 
	add 0xF2,r0
	mov.b r12,@(r0,r14) 
	add 0x26,r0
	mov.l @(loc_8C084868,pc),r3
	mov.l r12,@(r0,r14) 
	mov.b @(0x02,r14),r0 
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2) 

loc_8c0847d6:
	mov.l @(bank08.loc_8c08486c,pc),r3
	mov 0x03,r0
	mov 0x17,r5
	mov.b r0,@(0x04,r14) 
	mov 0x0F,r6
	jsr @r3
	mov r14,r4
	mov.l @(bank08.loc_8c084870,pc),r2
	jsr @r2
	mov r14,r4
	mov 0x50,r0
	mov r14,r4
	fmov.s fr15,@(r0,r14) 
	mov 0x54,r0
	fmov.s fr15,@(r0,r14) 
	mov.w @(loc_8C084858,pc),r0
	mov.b r12,@(r0,r14) 
	lds.l @r15+,pr 
	fmov.s @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra bank08.loc_8c084d28
	mov.l @r15+,r14

loc_8C084804:
	lds.l @r15+,pr
	fmov.s @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C084810:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l r5,@r15
	mov.b @(0x01,r14),r0
	mov.l @(0x18,r14),r3
	mov r0,r2
	mov.b @(0x01,r3),r0
	cmp/eq r0,r2
	bt/s loc_8C08483a
	mov r6,r13
	mov.l @r15,r5
	mov r14,r4
	mov r13,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8C084AEc
	mov.l @r15+,r14

loc_8C08483A:
	mov.l @r13,r2
	tst r2,r2
	bt loc_8C08488a
	mov.w @(loc_8C08485A,pc),r0 ; r0 set to 0x1Cc
	mov.l @(r0,r14),r3
	mov.l @(r0,r3),r2
	cmp/eq r14,r2
	bt loc_8C084874
	mov 0x04,r0 ; r0 set to 0x04
	mov 0x01,r3 ; r3 set to 0x01
	mov.b r0,@(0x04,r14)
	bra loc_8C0848D0
	mov.l r3,@(0x08,r13)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C084854:
	#data 0x0108
loc_8c084856:
	#data 0x01A1
loc_8c084858:
	#data 0x012c
loc_8C08485A:
	#data 0x01Cc
	#align4

loc_8C08485C:
	#data 0x3F59999a
loc_8C084860:
	#data bank03.loc_8c034dee
loc_8c084864:
	#data 0x42CC0000
loc_8c084868:
	#data 0x8C2896B0
loc_8C08486C:
	#data bank03.loc_8c034e8c
loc_8C084870:
	#data bank04.loc_8c045748

;==============================================
loc_8C084874:
	mov.l @(loc_8C08494C,pc),r2 ; r2 set to 0x8C034DEe
	jsr @r2
	mov r14,r4
	mov.l @r15,r5
	mov r13,r6
	bsr loc_8C084A68
	mov r14,r4
	tst r0,r0
	bt loc_8C0848Bc
	bra loc_8C0848D0
	nop

loc_8c08488a:
	mov.w @(0x1E,r14),r0 
	tst r0,r0
	bt loc_8c0848bc
	mov.l @(bank08.loc_8c08494c,pc),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x1E,r14),r0 
	add 0xFF,r0
	mov.w r0,@(0x1E,r14) 
	mov.l @r13,r5
	bsr bank08.loc_8c084afc
	mov r14,r4
	mov.w @(loc_8C084946,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt/s loc_8c0848b0
	mov r14,r4
	mov 0x00,r0
	mov.w r0,@(0x1E,r14) 

loc_8c0848b0:
	add 0x04,r15
	lds.l @r15+,pr 
	mov.l @(bank08.loc_8c084950,pc),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0848BC:
	mov 0x04,r0 ; r0 set to 0x04
	fldi1 fr3
	mov.b r0,@(0x04,r14)
	mov 0x14,r0 ; r0 set to 0x14
	mov.w r0,@(0x1E,r14)
	mov 0x01,r3 ; r3 set to 0x01
	mov.w @(loc_8C084948,pc),r0 ; r0 set to 0x108
	fmov.s fr3,@(r0,r14)
	add 0x24,r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)

loc_8C0848D0:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C0848DA:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x01,r14),r0
	mov.l @(0x18,r14),r3
	mov r0,r2
	mov.b @(0x01,r3),r0
	cmp/eq r0,r2
	bt loc_8C0848F4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C084AEc
	mov.l @r15+,r14

loc_8C0848F4:
	mov.l @(0x08,r6),r3
	tst r3,r3
	bt/s loc_8C084908
	mov 0x05,r4 ; r4 set to 0x05
	mov r4,r0 ; r0 set to 0x05
	nop
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C084908:
	mov.w @(loc_8C08494A,pc),r0 ; r0 set to 0xD8
	mov.l @(r0,r14),r0 ; r0 ??? bc r14 is ???	
	cmp/pz r0
	bf loc_8C084914
	bra loc_8C08491e
	and 0x01,r0

loc_8C084914:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C08491E:
	mov.w @(loc_8C08494A,pc),r1 ; r1 set to 0xD8, r1 set to 0xD8
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
	mov.l r0,@r1
	mov.w @(loc_8C08494A,pc),r0 ; r0 set to 0xD8, r0 set to 0xD8
	mov.l @(r0,r14),r2
	tst r2,r2
	bt loc_8C084932
	mova @(loc_8C084954,pc),r0  ; r0 set to 0x8C084954, r0 set to 0x8C084954
	bra loc_8C084934
	fmov.s @r0,fr3

loc_8C084932:
	fldi1 fr3

loc_8C084934:
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C08494A,pc),r0 ; r0 set to 0xD8, r0 set to 0xD8
	mov.l @(r0,r14),r3
	tst r3,r3
	bt loc_8C084958
	mova @(loc_8C084954,pc),r0  ; r0 set to 0x8C084954, r0 set to 0x8C084954
	bra loc_8C08495a
	fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c084946:
	#data 0x019e
loc_8C084948:
	#data 0x0108
loc_8C08494A:
	#data 0x00D8

loc_8C08494C:
	#data bank03.loc_8c034dee
loc_8C084950:
	#data bank04.loc_8c045748
loc_8C084954:
	#data 0x3F666666

;===============================================
loc_8C084958:
	fldi1 fr3

loc_8C08495A:
	mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C084A36,pc),r0 ; r0 set to 0xD8, r0 set to 0xD8
	mov.l @(r0,r14),r3
	add 0x01,r3
	mov.l r3,@(r0,r14)
	mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48
	mov.l @(r0,r14),r2
	mov.w @(loc_8C084A38,pc),r3 ; r3 set to 0x1F4A, r3 set to 0x1F4a
	add r3,r2
	mov.l r2,@(r0,r14)
	mov.w @(0x1E,r14),r0
	tst r0,r0
	bt loc_8C084992
	mov.l @(loc_8C084A4C,pc),r2 ; r2 set to 0x8C034DEE, r2 set to 0x8C034DEe
	jsr @r2
	mov r14,r4
	mov.w @(0x1E,r14),r0
	mov.l @(loc_8C084A50,pc),r1 ; r1 set to 0x3D4CCCCD, r1 set to 0x3D4CCCCd
	add 0xFF,r0 ; r0 set to 0x47, r0 set to 0x47
	mov.w r0,@(0x1E,r14)
	lds r1,fpul
	mov.w @(loc_8C084A3A,pc),r0 ; r0 set to 0x108, r0 set to 0x108
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???	
	fsts fpul,fr3
	fsub fr3,fr2
	bra loc_8C0849A0
	fmov.s fr2,@(r0,r14)

loc_8C084992:
	mov r4,r0
	nop
	mov r14,r4
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	bra loc_8C084ADe
	mov.l @r15+,r14

loc_8C0849A0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C0849A6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x88,PC),r0
	mov r4,r14
	mov.w @(0x86,PC),r3
	mov r5,r12
	mov 0xFF,r2
	mov.l r6,@r15
	mov.l @(r0,r14),r13
	add 0x47,r0
	mov.b r3,@(r0,r13)
	mov r13,r5
	mov.b r3,@(r0,r12)
	mov.w @(0x76,PC),r0
	mov.l @(0x88,PC),r3
	mov.b r2,@(r0,r12)
	jsr @r3
	mov r14,r4
	mov.w @(0x6E,PC),r0
	mov 0x06,r2
	mov.l @(0x80,PC),r3
	mov r14,r1
	mov.b r2,@(r0,r13)
	mov 0x3C,r0
	mov.w r0,@(0x1C,r14)
	add 0x34,r1
	mov.w @(0x60,PC),r0
	mov.l @(r0,r12),r2
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x70,PC),r1
	mov 0x38,r0
	fmov @(r0,r14),fr2
	mov 0x2A,r3
	lds r1,fpul
	mov 0xFF,r2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x46,PC),r0
	mov.b r3,@(r0,r14)
	add 0x0A,r0
	mov.b r2,@(r0,r14)
	add 0x6E,r0
	mov.l @(0x58,PC),r3
	mov.l @(r0,r12),r5
	jsr @r3
	mov r14,r4
	mov.w @(0x32,PC),r0
	mov 0x03,r4
	mov.l @r15,r2
	mov.l @(r0,r12),r3
	mov 0x38,r0
	fmov @(r0,r3),fr3
	mov 0x04,r0
	fmov fr3,@(r0,r2)
	mov.w @(0x26,PC),r0
	mov.b r4,@(r0,r13)
	add 0xFE,r0
	mov.b r4,@(r0,r13)
	mov r13,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x34,PC),r3
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C084A36:
	#data 0x00D8
loc_8C084A38:
	#data 0x1F4a
loc_8C084A3A:
	#data 0x0108
loc_8c084a3c:
	#data 0x01b0
loc_8c084a3e:
	#data 0x00c1
loc_8c084a40:
	#data 0x015a
loc_8c084a42:
	#data 0x01f6
loc_8c084a44:
	#data 0x01c8
loc_8c084a46:
	#data 0x0150
loc_8c084a48:
	#data 0x022a
	#align4

loc_8C084A4C:
	#data bank03.loc_8c034dee
loc_8C084A50:
	#data 0x3D4CCCCd
loc_8C084A54:
	#data bank05.loc_8c05248e
loc_8C084A58:
	#data bank12.loc_8c1294C8
loc_8c084a5c:
	#data 0x42CC0000
loc_8C084A60:
	#data bank04.loc_8c04CC1c
loc_8C084A64:
	#data bank0e.loc_8c0eE570

;==============================================
loc_8c084a68:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r6,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov r4,r11
	sts.l pr,@-r15
	mov.l @r13,r3
	tst r3,r3
	bt/s loc_8c084ad0
	mov r5,r12
	mov.w @(loc_8C084B78,pc),r0
	mov 0x01,r3
	mov.b r3,@(r0,r12) 
	add 0xDE,r0
	mov.l @(r0,r12),r14
	mov.w @(loc_8C084B7A,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c084ac8
	mov.w @(loc_8C084B7C,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c084aa0
	mov.b @(0x05,r14),r0 
	extu.b r0,r0
	cmp/eq 0x03,r0 
	bt loc_8c084ac8

loc_8c084aa0:
	mov.l @(bank08.loc_8c084b88,pc),r2
	mov r14,r5
	jsr @r2
	mov r11,r4
	mov 0x04,r0
	fmov.s @(r0,r13),fr3
	mov 0x38,r0
	fmov.s fr3,@(r0,r14) 
	mov.l @r13,r5
	bsr bank08.loc_8c084afc
	mov r11,r4
	mov.w @(0x1C,r11),r0 
	add 0xFF,r0
	mov.w r0,@(0x1C,r11) 
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c084ad0
	mov.w @(loc_8C084B7E,pc),r0
	mov 0x07,r2
	mov.b r2,@(r0,r14) 

loc_8c084ac8:
	mov.w @(loc_8C084B78,pc),r0
	mov 0x00,r4
	mov.l r4,@r13
	mov.b r4,@(r0,r12)

loc_8c084ad0:
	lds.l @r15+,pr
	mov.l @r13,r0
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

loc_8C084ADE:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C084B80,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8c084aec:
	tst r5,r5
	bt loc_8c084af6
	mov.w @(loc_8C084B82,pc),r0
	mov 0x00,r1
	mov.l r1,@(r0,r5) 

loc_8c084af6:
	mov.l @(bank08.loc_8c084b8c,pc),r3
	jmp @r3
	nop

;==============================================
loc_8c084afc:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x88,PC),r12
	mov 0x00,r6
	mov.w @(0x76,PC),r13
	mov 0x00,r14
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x03,r5
	jsr @r12
	mov r6,r4
	tst r0,r0
	bt.s loc_8c084b3a
	mov r0,r4
	mov.l @(0x74,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r13,@(r0,r4)
	mov 0x23,r0
	mov.b r14,@(r0,r4)
	mov r14,r0
	nop 
	mov.w r0,@(0x1C,r4)

loc_8c084b3a:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C084B46:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C084B98,pc),r1 ; r1 set to 0x8C154268
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C084B5A:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C084B80,pc),r0 ; r0 set to 0x12c
	mov 0x00,r4 ; r4 set to 0x00
	sts.l pr,@-r15
	mov.b r4,@(r0,r14)
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bt loc_8C084B9c
	mov.w @(0x1C,r14),r0
	add 0xFF,r0 ; r0 set to 0x12b
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8c084b78:
	#data 0x01Ea
loc_8c084b7a:
	#data 0x0420
loc_8c084b7c:
	#data 0x019f
loc_8c084b7e:
	#data 0x01F6
loc_8C084B80:
	#data 0x012c
loc_8c084b82:
	#data 0x02B8
loc_8c084b84:
	#data 0x1701
	#align4

loc_8C084B88:
	#data bank04.loc_8c04CC1c
loc_8C084B8C:
	#data bank04.loc_8c0450C0
loc_8C084B90:
	#data bank04.loc_8c044F12
loc_8C084B94:
	#data loc_8C084B46
loc_8C084B98:
	#data bank15.loc_8c154268

;==============================================
loc_8C084B9C:
	mov.w @(loc_8C084CE4,pc),r1 ; r1 set to 0xDc
	mov.w @(loc_8C084CE6,pc),r0 ; r0 set to 0xC0
	mov.l @(loc_8C084CF4,pc),r3 ; r3 set to 0x8C129560
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C084CE4,pc),r2 ; r2 set to 0xDc
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???	
	mov.w @(loc_8C084CE8,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C084CEA,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C084CF8,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.l @(loc_8C084CF8,pc),r3 ; r3 set to 0x8C1294C8
	mov.b @(r0,r5),r2
	mov r5,r2
	mov.b r4,@(r0,r14)
	mov r14,r1
	mov.b @(0x04,r14),r0
	add 0x34,r2
	add 0x34,r1
	add 0x01,r0 ; r0 set to 0x25
	mov.b r0,@(0x04,r14)
	mov 0x08,r0 ; r0 set to 0x08
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(loc_8C084CFC,pc),r2 ; r2 set to 0x8C11E730
	jsr @r2
	nop
	mov.w @(loc_8C084CEC,pc),r1 ; r1 set to 0xD0
	mov.l @(loc_8C084D00,pc),r3 ; r3 set to 0x8C1292D4
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.l r0,@r1
	mov.w @(loc_8C084CEC,pc),r1 ; r1 set to 0xD0
	mov.w @(loc_8C084CEE,pc),r0 ; r0 set to 0x168
	add r14,r1 ; r1 ??? bc r14 is ???	
	jsr @r3
	mov.l @r1,r1
	mov.w @(loc_8C084CEC,pc),r2 ; r2 set to 0xD0
	fldi1 fr4
	add r14,r2 ; r2 ??? bc r14 is ???	
	mov.l r0,@r2
	mov.w @(loc_8C084CEC,pc),r0 ; r0 set to 0xD0
	mov.l @(loc_8C084D10,pc),r2 ; r2 set to 0xFFFf
	mov.l @(r0,r14),r1
	mova @(loc_8C084D04,pc),r0  ; r0 set to 0x8C084D04
	fmov.s @r0,fr2 ; r2 ??	
	mova @(loc_8C084D08,pc),r0  ; r0 set to 0x8C084D08
	lds r1,fpul
	fmov.s @r0,fr1
	mova @(loc_8C084D0C,pc),r0  ; r0 set to 0x8C084D0c
	fmov.s @r0,fr0 ; r0 ??	
	mov 0x48,r0 ; r0 set to 0x48
	float fpul,fr3
	fmul fr2,fr3 ; r3 ??? bc r2 is ???	
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r2,r3
	mov.l r3,@(r0,r14)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s fr4,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr4,@(r0,r14)
	add 0x7C,r0 ; r0 set to 0xD0
	mov.l @(r0,r14),r0 ; r0 ??? bc r14 is ???	
	cmp/pz r0
	bf loc_8C084C5c
	bra loc_8C084C66
	and 0x01,r0

loc_8C084C5C:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C084C66:
	tst r0,r0
	bt/s loc_8C084C70
	mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
	bra loc_8C084C72
	mov 0x0E,r6

loc_8C084C70:
	mov 0x0F,r6 ; r6 set to 0x0f

loc_8C084C72:
	lds.l @r15+,pr
	mov.l @(loc_8C084D14,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;unused return
loc_8c084c7e:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C084C82:
	mov.w @(loc_8C084CE8,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bt loc_8C084CCc
	mov.l @(loc_8C084D18,pc),r1 ; r1 set to 0x3E000000
	mov.w @(loc_8C084CF0,pc),r0 ; r0 set to 0x108
	lds r1,fpul
	fmov.s @(r0,r14),fr2
	mov.l @(loc_8C084D1C,pc),r3 ; r3 set to 0x8C034D8c
	fsts fpul,fr3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(0x1C,r14),r0
	mov.l @(loc_8C084D20,pc),r1 ; r1 set to 0xBDE66666
	add 0xFF,r0 ; r0 set to 0x107
	lds r1,fpul
	mov.w r0,@(0x1C,r14)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	mov.l @(loc_8C084D24,pc),r1 ; r1 set to 0x3EA00000
	lds r1,fpul
	fmov.s fr2,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r14),fr1 ; r1 ??? bc r14 is ???	
	fsts fpul,fr2
	fadd fr2,fr1
	bra loc_8C084CDe
	fmov.s fr1,@(r0,r14)

loc_8C084CCC:
	mov.w @(loc_8C084CE8,pc),r0 ; r0 set to 0x12c
	mov 0x00,r2 ; r2 set to 0x00
	mov r14,r4
	mov r2,r5 ; r5 set to 0x00
	mov.b r2,@(r0,r14)
	mov r2,r6 ; r6 set to 0x00
	lds.l @r15+,pr
	bra loc_8C084AEc
	mov.l @r15+,r14

loc_8C084CDE:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C084CE4:
	#data 0x00Dc
loc_8C084CE6:
	#data 0x00C0
loc_8C084CE8:
	#data 0x012c
loc_8C084CEA:
	#data 0x01A3
loc_8C084CEC:
	#data 0x00D0
loc_8C084CEE:
	#data 0x0168
loc_8C084CF0:
	#data 0x0108
	#align4

loc_8C084CF4:
	#data bank12.loc_8c129560
loc_8C084CF8:
	#data bank12.loc_8c1294C8
loc_8C084CFC:
	#data bank11.loc_8c11e730
loc_8C084D00:
	#data bank12.loc_8c1292D4
loc_8C084D04:
	#data 0x47800000
loc_8C084D08:
	#data 0x43B40000
loc_8C084D0C:
	#data 0x3F000000
loc_8C084D10:
	#data 0x0000FFFf
loc_8C084D14:
	#data bank03.loc_8c034C38
loc_8C084D18:
	#data 0x3E000000
loc_8C084D1C:
	#data bank03.loc_8c034D8c
loc_8C084D20:
	#data 0xBDE66666
loc_8C084D24:
	#data 0x3EA00000

;==============================================
loc_8C084D28:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x130,PC),r3
	mov 0x03,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c084d4c
	mov r0,r4
	mov.l @(0x124,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.w @(0x10A,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)


loc_8C084D4C:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;-------------------------------------------------------------------------------
loc_8C084D54:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C084E68,pc),r1 ; r1 set to 0x8C154270
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C084D68:
	mov.w @(loc_8C084E54,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.w @(loc_8C084E56,pc),r0 ; r0 set to 0xC0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.w @(loc_8C084E54,pc),r2 ; r2 set to 0xDc
	mov.l @(loc_8C084E6C,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???	
	mov.w @(loc_8C084E58,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C084E5A,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C084E70,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov r4,r1
	mov.b @(r0,r5),r2
	mov 0x07,r3 ; r3 set to 0x07
	add 0x34,r1
	mov.b r2,@(r0,r4)
	mov r5,r2
	mov.w @(loc_8C084E58,pc),r0 ; r0 set to 0x12c
	add 0x34,r2
	mov.b r6,@(r0,r4)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r4)
	mov.b @(0x04,r4),r0
	mov.l @(loc_8C084E70,pc),r3 ; r3 set to 0x8C1294C8
	add 0x01,r0 ; r0 set to 0x25
	mov.b r0,@(0x04,r4)
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(loc_8C084E74,pc),r2 ; r2 set to 0x8C034C38
	mov 0x1B,r5 ; r5 set to 0x1b
	mov 0x10,r6 ; r6 set to 0x10
	jmp @r2
	lds.l @r15+,pr

;==============================================
loc_8C084DE0:
	mov.b @(0x1,r5),r0
	mov.l @(0x18,r5),r3
	mov r0,r2
	mov.b @(0x1,r3),r0
	cmp/eq r0,r2
	bf loc_8c084df4
	mov.b @(0x4,r5),r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c084dfa

loc_8C084DF4:
	mov 0x00,r6
	bra loc_8c084aec
	mov r6,r5

loc_8C084DFA:
	mov.w @(0x5E,PC),r0
	mov.l @(r0,r4),r0
	cmp/pz r0
	bf loc_8c084e06
	bra loc_8c084e10
	and 0x01,r0

loc_8C084E06:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C084E10:
	mov.w @(0x48,PC),r1
	add r4,r1
	mov.l r0,@r1
	mov.w @(0x42,PC),r0
	mov.l @(r0,r4),r2
	tst r2,r2
	bt loc_8c084e24
	mova @(0x58,PC),r0
	bra loc_8c084e26
	fmov @r0,fr3

loc_8C084E24:
	fldi1 fr3

loc_8C084E26:
	mov 0x50,r0
	fmov fr3,@(r0,r4)
	mov.w @(0x2E,PC),r0
	mov.l @(r0,r4),r3
	tst r3,r3
	bt loc_8c084e38
	mova @(0x44,PC),r0
	bra loc_8c084e3a
	fmov @r0,fr3

loc_8C084E38:
	fldi1 fr3

loc_8C084E3A:
	mov 0x54,r0
	fmov fr3,@(r0,r4)
	mov.w @(0x1A,PC),r0
	mov.l @(r0,r4),r3
	add 0x01,r3
	mov.l r3,@(r0,r4)
	mov 0x48,r0
	mov.l @(r0,r4),r2
	mov.w @(0x10,PC),r3
	add r3,r2
	rts 
	mov.l r2,@(r0,r4)

;==============================================
loc_8c084e52:
	#data 0x1701
loc_8C084E54:
	#data 0x00Dc
loc_8C084E56:
	#data 0x00C0
loc_8C084E58:
	#data 0x012c
loc_8C084E5A:
	#data 0x01A3
loc_8C084E5c:
	#data 0x00D8
loc_8C084E5e:
	#data 0x1F4A
	#align4

loc_8C084E60:
	#data bank04.loc_8c044F12
loc_8C084E64:
	#data loc_8C084D54
loc_8C084E68:
	#data bank15.loc_8c154270
loc_8C084E6C:
	#data bank12.loc_8c129560
loc_8C084E70:
	#data bank12.loc_8c1294C8
loc_8C084E74:
	#data bank03.loc_8c034C38
loc_8c084e78:
	#data 0x3F666666


;==============================================
;unused
loc_8c084e7c:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x140,PC),r3
	mov 0x01,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c084ec6
	mov r0,r4
	mov.l @(0x134,PC),r3
	mov 0x26,r0
	mov.w @(0x11E,PC),r1
	mov.l r3,@(0x10,r4)
	mov.w @(0x116,PC),r3
	mov.l @r15,r2
	mov.l @(0x12C,PC),r5
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)
	mov.w @(0x10E,PC),r0
	mov.l @(0x18,r4),r2
	mov.w @(r0,r2),r3
	mov.w r3,@(r0,r4)
	mov.l @(0x18,r4),r0
	mov.w @(0x108,PC),r3
	mov.b @(r0,r1),r0
	add r4,r3
	mov r3,r2
	mov.b r0,@(0x7,r4)
	mov.l r3,@r5
	mov.w @(0xFE,PC),r0
	mov.l @(0x18,r4),r3
	mov.w @(r0,r3),r0
	mov.w r0,@r2
	mov r4,r0
	nop 

loc_8c084ec6:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;-------------------------------------------------------------------------------
loc_8C084ECE:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C084FD0,pc),r1 ; r1 set to 0x8C154278
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C084EE0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r8,@-r15
	mov.w @(loc_8C084FBE,pc),r1 ; r1 set to 0xDc
	mov.w @(loc_8C084FBE,pc),r0 ; r0 set to 0xDc
	sts.l pr,@-r15
	mov.l @(0x18,r14),r2
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.l @(loc_8C084FD4,pc),r3 ; r3 set to 0x8C129560
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C084FC0,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C084FB8,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C084FD8,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x17,r5 ; r5 set to 0x17
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov 0x0A,r6 ; r6 set to 0x0a
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C084FDC,pc),r3 ; r3 set to 0x8C034E8c
	jsr @r3
	mov r14,r4
	mov 0x24,r0 ; r0 set to 0x24
	mov.l @(loc_8C084FD8,pc),r3 ; r3 set to 0x8C1294C8
	mov 0x00,r2 ; r2 set to 0x00
	mov r14,r1
	mov.b r2,@(r0,r14)
	add 0x34,r1
	mov.l @(0x18,r14),r2 ; r2 ??? bc r14 is ???	
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C084FB6,pc),r0 ; r0 set to 0x130
	mov 0x34,r8 ; r8 set to 0x34
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???	
	tst r3,r3
	bt/s loc_8C084F7a
	add r14,r8 ; r8 ??? bc r14 is ???	
	mov.l @(loc_8C084FE0,pc),r1 ; r1 set to 0x41D00000
	lds r1,fpul
	bra loc_8C084F80
	fsts fpul,fr3

loc_8C084F7A:
	mov.l @(loc_8C084FE4,pc),r2 ; r2 set to 0xC1D00000
	lds r2,fpul
	fsts fpul,fr3

loc_8C084F80:
	fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(loc_8C084FE8,pc),r1 ; r1 set to 0x42B40000, r1 set to 0x42B40000
	fadd fr3,fr2
	lds r1,fpul
	fmov.s fr2,@r8
	fmov.s @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C084FB6,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8C084FFc
	mov.l @(loc_8C084FF0,pc),r3 ; r3 set to 0x8C11E170, r3 set to 0x8C11E170
	mova @(loc_8C084FEC,pc),r0  ; r0 set to 0x8C084FEC, r0 set to 0x8C084FEc
	jsr @r3
	fmov.s @r0,fr4
	mov.l @(loc_8C084FF4,pc),r2 ; r2 set to 0x8C11E2E0, r2 set to 0x8C11E2E0
	jsr @r2
	mov r0,r4 ; r4 set to 0x8C084FEC, r4 set to 0x8C084FEc
	mova @(loc_8C084FF8,pc),r0  ; r0 set to 0x8C084FF8, r0 set to 0x8C084FF8
	fmov fr0,fr2 ; r2 ??, r2 ??	
	fmov.s @r0,fr3 ; r3 ??, r3 ??	
	bra loc_8C085014
	fmul fr3,fr2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c084fb4:
	#data 0x1702
loc_8C084FB6:
	#data 0x0130
loc_8C084FB8:
	#data 0x01A3
loc_8c084fba:
	#data 0x00Cc
loc_8c084fbc:
	#data 0x0158
loc_8C084FBE:
	#data 0x00Dc
loc_8C084FC0:
	#data 0x012c
	#align4

loc_8C084FC4:
	#data bank04.loc_8c044F12
loc_8C084FC8:
	#data loc_8C084ECe
loc_8c084fcc:
	#data 0x8C28C60c
loc_8C084FD0:
	#data bank15.loc_8c154278
loc_8C084FD4:
	#data bank12.loc_8c129560
loc_8C084FD8:
	#data bank12.loc_8c1294C8
loc_8C084FDC:
	#data bank03.loc_8c034e8c
loc_8C084FE0:
	#data 0x41D00000
loc_8C084FE4:
	#data 0xC1D00000
loc_8C084FE8:
	#data 0x42B40000
loc_8C084FEC:
	#data 0x40400000
loc_8C084FF0:
	#data bank11.loc_8c11E170
loc_8C084FF4:
	#data bank11.loc_8c11E2E0
loc_8C084FF8:
	#data 0x41A00000

;==============================================
loc_8C084FFC:
	mov.l @(loc_8C08511C,pc),r3 ; r3 set to 0x8C11E170
	mova @(loc_8C085118,pc),r0  ; r0 init to 0x8C085118
	jsr @r3
	fmov.s @r0,fr4
	mov.l @(loc_8C085120,pc),r2 ; r2 set to 0x8C11E2E0
	jsr @r2
	mov r0,r4 ; r4 set to 0x8C085118
	mova @(loc_8C085124,pc),r0  ; r0 set to 0x8C085124
	fmov.s @r0,fr3 ; r3 ??	
	fmul fr3,fr0 ; r0 ??? bc r3 is ???	
	fmov fr0,fr2 ; r2 ??? bc r0 is ???	
	fneg fr2

loc_8C085014:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	mov.l @(loc_8C08511C,pc),r3 ; r3 set to 0x8C11E170, r3 set to 0x8C11E170
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C085118,pc),r0  ; r0 set to 0x8C085118, r0 set to 0x8C085118
	jsr @r3
	fmov.s @r0,fr4 ; r4 ??	
	mov.l @(loc_8C085128,pc),r2 ; r2 set to 0x8C11E860, r2 set to 0x8C11E860
	jsr @r2
	mov r0,r4 ; r4 set to 0x8C085118, r4 set to 0x8C085118
	mova @(loc_8C085124,pc),r0  ; r0 set to 0x8C085124, r0 set to 0x8C085124
	mov.w @(loc_8C08510A,pc),r1 ; r1 set to 0x1A3, r1 set to 0x1A3
	fmov.s @r0,fr3 ; r3 ??, r3 ??	
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmul fr3,fr0 ; r0 ??? bc r3 is ???, r0 ??? bc r3 is ???	
	fmov.s fr0,@(r0,r14)
	mov 0x64,r0 ; r0 set to 0x64, r0 set to 0x64
	mov.w r0,@(0x1C,r14)
	mov.l @(0x18,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???	
	mov.b @(r0,r1),r3
	tst r3,r3
	bt loc_8C085042
	bra loc_8C085044
	mov 0x07,r0

loc_8C085042:
	mov 0x04,r0 ; r0 set to 0x04

loc_8C085044:
	mov.w r0,@(0x1E,r14)
	mov 0x01,r0 ; r0 set to 0x01, r0 set to 0x01
	mov.l @(loc_8C08512C,pc),r3 ; r3 set to 0x8C042008, r3 set to 0x8C042008
	mov 0x21,r5 ; r5 set to 0x21, r5 set to 0x21
	mov.b r0,@(0x04,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r8
	mov.l @r15+,r14

loc_8C08505A:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5C, r1 set to 0x5C, r1 set to 0x5c
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34, r0 set to 0x34
	mov.l r13,@-r15
	sts.l pr,@-r15
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???	
	mov 0x68,r1 ; r1 set to 0x68, r1 set to 0x68, r1 set to 0x68
	fmov.s @(r0,r14),fr2
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C, r0 set to 0x5c
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60, r1 set to 0x60, r1 set to 0x60
	fmov.s @(r0,r14),fr2
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38, r0 set to 0x38
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6C, r1 set to 0x6C, r1 set to 0x6c
	fmov.s @(r0,r14),fr2
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60, r0 set to 0x60
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.b @(0x01,r14),r0
	mov.l @(0x18,r14),r3
	mov r0,r2 ; r2 set to 0x60, r2 set to 0x60, r2 set to 0x60
	mov.b @(0x01,r3),r0
	cmp/eq r0,r2
	bt loc_8C0850B4
	mov 0x03,r0 ; r0 set to 0x03, r0 set to 0x03, r0 set to 0x03
	mov r14,r4
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8C085196
	mov.l @r15+,r14

loc_8c0850b4:
	mov.w @(0x1C,r14),r0 
	add 0xFF,r0
	mov.w r0,@(0x1C,r14) 
	exts.w r0,r0
	cmp/pz r0
	bf/s loc_8c0850d4
	mov 0x00,r13
	mov.w @(loc_8C08510C,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0850d4
	bsr loc_8c085172
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c0850de

loc_8c0850d4:
	mov 0x02,r0
	mov.b r0,@(0x04,r14) 
	mov.w @(loc_8C08510E,pc),r0
	bra loc_8c08516a
	mov.b r13,@(r0,r14) 

loc_8c0850de:
	mov.l @(bank08.loc_8c085130,pc),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C085110,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c08515e
	mov.w @(0x1E,r14),r0 
	tst r0,r0
	bt loc_8c08515e
	mov.w @(loc_8C085112,pc),r0
	mov 0x42,r4
	mov.b r4,@(r0,r14) 
	add 0x01,r0
	mov.b r4,@(r0,r14) 
	mov.b @(0x07,r14),r0 
	tst r0,r0
	bt loc_8c085134
	mov.w @(loc_8C085114,pc),r0
	mov 0x3E,r3
	bra loc_8c08513a
	mov.b r3,@(r0,r14) 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c08510a:
	#data 0x01A3
loc_8C08510C:
	#data 0x019F
loc_8C08510E:
	#data 0x012C
loc_8C085110:
	#data 0x0141
loc_8C085112:
	#data 0x019C
loc_8C085114:
	#data 0x01A1
	#align4

loc_8c085118:
	#data 0x40400000
loc_8c08511c:
	#data bank11.loc_8c11e170
loc_8c085120:
	#data bank11.loc_8c11e2e0
loc_8C085124:
	#data 0x41a00000
loc_8c085128:
	#data bank11.loc_8c11e860
loc_8c08512c:
	#data bank04.loc_8c042008
loc_8c085130:
	#data bank03.loc_8c034dee

;==============================================
loc_8c085134:
	mov.w @(loc_8C08519C,pc),r0
	mov 0x3C,r2
	mov.b r2,@(r0,r14)

loc_8c08513a:
	mov.w @(loc_8C08519E,pc),r0
	mov.l @(loc_8C0851A4,pc),r3
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
	mov.w @(0x1E,r14),r0 
	add 0xFF,r0
	mov.w r0,@(0x1E,r14) 

loc_8c08515e:
	lds.l @r15+,pr
	mov.l @(bank08.loc_8c0851a8,pc),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c08516a:
	lds.l @r15+,pr 
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8c085172:
	mov.l @(loc_8C0851AC,pc),r3
	mov 0x38,r0
	fmov.s @(r0,r4),fr2
	fmov.s @r3,fr3
	fcmp/gt fr2,fr3
	bt loc_8c085182
	rts 
	mov 0x01,r0

;-------------------------------------------------------------------------------
loc_8c085182:
	mov 0x00,r0
	rts 
	nop 

loc_8C085188:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0851A0,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;-------------------------------------------------------------------------------
loc_8C085196:
	mov.l @(loc_8C0851B0,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c08519c:
	#data 0x01A1
loc_8c08519e:
	#data 0x01AC
loc_8C0851A0:
	#data 0x012c
	#align4

loc_8c0851a4:
	#data 0x8C2896B0
loc_8C0851A8:
	#data bank04.loc_8c045748
loc_8c0851ac:
	#data 0x8C26A5B8
loc_8C0851B0:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0851B4:
	mov.w @(0xD4,PC),r0
	mov.l @(0xE0,PC),r5
	mov.w @(r0,r4),r3
	tst r3,r3
	bf loc_8c0851d4
	mova @(0xDC,PC),r0
	fmov @r0,fr3
	mov.w @(0xC8,PC),r0
	fmov @(r0,r5),fr2
	mov 0x34,r0
	fmov @(r0,r4),fr1
	fadd fr3,fr2
	fcmp/gt fr1,fr2
	bt loc_8c0851e6
	bra loc_8c0851ea
	nop 

loc_8C0851D4:
	mova @(0xC8,PC),r0
	fmov @r0,fr3
	mov.w @(0xB4,PC),r0
	fmov @(r0,r5),fr2
	mov 0x34,r0
	fmov @(r0,r4),fr1
	fadd fr3,fr2
	fcmp/gt fr2,fr1
	bf loc_8c0851ea

loc_8C0851E6:
	rts
	mov 0x01,r0

loc_8C0851EA:
	mov 0x00,r0
	rts
	nop

;-------------------------------------------------------------------------------
loc_8c0851f0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x8C,PC),r8
	mov 0x00,r12
	mov.l @(0x9C,PC),r10
	mov 0x10,r9
	mov.l r4,@r15
	mov r12,r13

loc_8c08520e:
	tst r13,r13
	bf loc_8c085226
	mov 0x01,r5
	mov 0x00,r6
	jsr @r10
	mov r6,r4
	tst r0,r0
	bt.s loc_8c085266
	mov r0,r14
	mov.l r12,@(0x14,r14)
	bra loc_8c085234
	mov r12,r11

loc_8c085226:
	mov 0x01,r5
	mov 0x02,r6
	jsr @r10
	mov r14,r4
	tst r0,r0
	bt.s loc_8c085266
	mov r0,r14

loc_8c085234:
	mov 0x26,r0
	mov.l @(0x70,PC),r2
	mov.w @(0x58,PC),r4
	mov.l r2,@(0x10,r14)
	mov.l @r15,r3
	add r14,r4
	mov.l r3,@(0x18,r14)
	mov.w r8,@(r0,r14)
	mov 0x23,r0
	mov.b r13,@(r0,r14)
	add 0x01,r13
	mov.w @(0x3E,PC),r0
	cmp/ge r9,r13
	mov.l @(0x18,r14),r3
	mov.w @(r0,r3),r2
	mov.w r2,@(r0,r14)
	add 0x28,r0
	mov.l r11,@(0x14,r14)
	mov r14,r11
	mov.l @(0x18,r14),r3
	mov.w @(r0,r3),r2
	bf.s loc_8c08520e
	mov.w r2,@r4
	mov r14,r0
	nop 

loc_8c085266:
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

;-------------------------------------------------------------------------------
loc_8C08527A:
	mov r4,r3
	mov.l @(loc_8C0852AC,pc),r1 ; r1 set to 0x8C154288
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c08528c:
	#data 0x0130
loc_8c08528e:
	#data 0x0098
loc_8c085290:
	#data 0x009c
loc_8c085292:
	#data 0x1703
loc_8c085294:
	#data 0x00Cc
	#align4

loc_8c085298:
	#data 0x8C26A518
loc_8c08529c:
	#data 0xC3200000
loc_8c0852a0:
	#data 0x43200000
loc_8C0852A4:
	#data bank04.loc_8c044F12
loc_8C0852A8:
	#data loc_8C08527a
loc_8C0852AC:
	#data bank15.loc_8c154288

;==============================================
loc_8C0852B0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.w @(loc_8C085408,pc),r3 ; r3 set to 0xCc
	mov.w @(loc_8C08540A,pc),r1 ; r1 set to 0xDc
	mov 0x00,r13 ; r13 set to 0x00
	add r14,r3 ; r3 ??? bc r14 is ???	
	mov.l @(0x18,r14),r12
	mov.l r3,@r15
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C085418,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.l @(0x18,r14),r2
	mov.w @(loc_8C08540A,pc),r0 ; r0 set to 0xDc
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C08540C,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C08540E,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C08541C,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov r14,r1
	add 0x34,r1
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C08540C,pc),r0 ; r0 set to 0x12c
	mov.l @(loc_8C08541C,pc),r3 ; r3 set to 0x8C1294C8
	mov.b r4,@(r0,r14)
	mov.l @(0x18,r14),r2
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C085410,pc),r0 ; r0 set to 0x1F9
	mov 0x34,r8 ; r8 set to 0x34
	mov.b @(r0,r12),r0 ; r0 ??? bc r12 is ???	
	extu.b r0,r0
	cmp/eq 0x02,r0
	mov.w @(loc_8C085412,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???	
	tst r3,r3
	bt/s loc_8C08535c
	add r14,r8 ; r8 ??? bc r14 is ???	
	mov.l @(loc_8C085420,pc),r1 ; r1 set to 0x43360000
	lds r1,fpul
	bra loc_8C085362
	fsts fpul,fr3

loc_8C08535C:
	mov.l @(loc_8C085424,pc),r2 ; r2 set to 0xC3360000
	lds r2,fpul
	fsts fpul,fr3

loc_8C085362:
	fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(loc_8C085428,pc),r1 ; r1 set to 0x432A0000, r1 set to 0x432A0000
	fadd fr3,fr2
	lds r1,fpul
	fmov.s fr2,@r8
	mov 0x34,r8 ; r8 set to 0x34, r8 set to 0x34
	fmov.s @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r14),fr3
	mov 0x64,r0 ; r0 set to 0x64, r0 set to 0x64
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C085412,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r14),r2
	tst r2,r2
	bt/s loc_8C08539a
	add r14,r8 ; r8 ??? bc r14 is ???, r8 ??? bc r14 is ???	
	mov 0x23,r3 ; r3 set to 0x23, r3 set to 0x23
	add r14,r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
	mov.b @r3,r3
	mov 0x23,r2 ; r2 set to 0x23, r2 set to 0x23
	extu.b r3,r3
	mulu.w r2,r3
	bra loc_8C0853Aa
	sts macl,r3

loc_8C08539A:
	mov 0x23,r1 ; r1 set to 0x23
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.b @r1,r1
	mov 0x23,r3 ; r3 set to 0x23
	extu.b r1,r1
	mulu.w r3,r1
	sts macl,r1
	neg r1,r3 ; r3 ??? bc r1 is ???	

loc_8C0853AA:
	lds r3,fpul
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @r8,fr2
	fldi0 fr4
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@r8
	fmov.s @(r0,r14),fr3
	mov 0x70,r0 ; r0 set to 0x70, r0 set to 0x70
	fmov.s fr3,@(r0,r14)
	mov 0x23,r0 ; r0 set to 0x23, r0 set to 0x23
	mov.b @(r0,r14),r3
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
	mov.b r13,@(r0,r14)
	mov 0x23,r0 ; r0 set to 0x23, r0 set to 0x23
	tst r3,r3
	mov.b @(r0,r14),r3
	mov 0x31,r0 ; r0 set to 0x31, r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mov.l @(0x18,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???	
	mov.l @(loc_8C08542C,pc),r3 ; r3 set to 0x8C1292D4, r3 set to 0x8C1292D4
	mov.w @(0x1E,r0),r0
	mov.w r0,@(0x1C,r14)
	mov 0x23,r0 ; r0 set to 0x23, r0 set to 0x23
	mov.b @(r0,r14),r1
	extu.b r1,r1
	jsr @r3
	mov 0x03,r0 ; r0 set to 0x03, r0 set to 0x03
	tst r0,r0
	bf loc_8C085434
	mov.w @(loc_8C085414,pc),r0 ; r0 set to 0x19C, r0 set to 0x19c
	mov 0x42,r4 ; r4 set to 0x42, r4 set to 0x42
	mov r12,r5
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x19D, r0 set to 0x19d
	mov.b r4,@(r0,r14)
	bsr loc_8C085A7e
	mov r14,r4 ; r4 ??? bc r14 is ???, r4 ??? bc r14 is ???	
	mov.l @(loc_8C085430,pc),r2 ; r2 set to 0x8C045748, r2 set to 0x8C045748
	jsr @r2
	mov r14,r4
	bra loc_8C08545e
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C085408:
	#data 0x00Cc
loc_8C08540A:
	#data 0x00Dc
loc_8C08540C:
	#data 0x012c
loc_8C08540E:
	#data 0x01A3
loc_8C085410:
	#data 0x01F9
loc_8C085412:
	#data 0x0130
loc_8C085414:
	#data 0x019c
	#align4

loc_8C085418:
	#data bank12.loc_8c129560
loc_8C08541C:
	#data bank12.loc_8c1294C8
loc_8C085420:
	#data 0x43360000
loc_8C085424:
	#data 0xC3360000
loc_8C085428:
	#data 0x432A0000
loc_8C08542C:
	#data bank12.loc_8c1292D4
loc_8C085430:
	#data bank04.loc_8c045748

;==============================================
loc_8C085434:
	mov.w @(loc_8C085572,pc),r0 ; r0 set to 0x19c
	mov.l @(loc_8C08557C,pc),r3 ; r3 set to 0x8C2896B0
	mov.b r13,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x19d
	mov.b r13,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x1A1
	mov.b r15,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1Ac
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19e
	mov.b r13,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r13,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)

loc_8C08545E:
	mov.l @r15,r3 ; r3 ??? bc r15 is ???	
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
	mov.w r0,@(0x02,r3)
	mov.w @(loc_8C085574,pc),r0 ; r0 set to 0x2C8, r0 set to 0x2C8
	mov.l r13,@(r0,r12)
	mov 0x23,r0 ; r0 set to 0x23, r0 set to 0x23
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???	
	mov.l @(loc_8C085580,pc),r12 ; r12 set to 0x8C034E8C, r12 set to 0x8C034E8c
	extu.b r0,r0
	cmp/eq 0x0F,r0
	bf loc_8C085480
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	mov 0x07,r6 ; r6 set to 0x07, r6 set to 0x07
	jsr @r12
	mov r14,r4
	bra loc_8C0854Ac
	nop

loc_8C085480:
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C0854A4
	mov 0x17,r5 ; r5 set to 0x17
	mov 0x06,r6 ; r6 set to 0x06
	jsr @r12
	mov r14,r4
	mov r14,r4
	mov 0x23,r5 ; r5 set to 0x23
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C085584,pc),r3 ; r3 set to 0x8C042008
	mov.l @r15+,r8
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0854A4:
	mov 0x17,r5 ; r5 set to 0x17
	mov 0x05,r6 ; r6 set to 0x05
	jsr @r12
	mov r14,r4

loc_8C0854AC:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C0854BA:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x24,r0 ; r0 set to 0x24
	mov.l r13,@-r15
	mov.l r8,@-r15
	mov r14,r1
	sts.l pr,@-r15
	mov.l @(0x18,r14),r5
	add 0x34,r1
	mov.w @(loc_8C085576,pc),r4 ; r4 set to 0xCc
	mov.b @(r0,r5),r3
	add r14,r4 ; r4 ??? bc r14 is ???	
	mov.b r3,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.l @(loc_8C085588,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C085578,pc),r0 ; r0 set to 0x1F9
	mov 0x34,r8 ; r8 set to 0x34
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
	extu.b r0,r0
	cmp/eq 0x02,r0
	mov.w @(loc_8C08557A,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???	
	tst r3,r3
	bt/s loc_8C0854Fa
	add r14,r8 ; r8 ??? bc r14 is ???	
	mov.l @(loc_8C08558C,pc),r1 ; r1 set to 0x43360000
	lds r1,fpul
	bra loc_8C085500
	fsts fpul,fr3

loc_8C0854FA:
	mov.l @(loc_8C085590,pc),r2 ; r2 set to 0xC3360000
	lds r2,fpul
	fsts fpul,fr3

loc_8C085500:
	fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(loc_8C085594,pc),r1 ; r1 set to 0x432A0000, r1 set to 0x432A0000
	fadd fr3,fr2
	lds r1,fpul
	fmov.s fr2,@r8
	mov 0x34,r8 ; r8 set to 0x34, r8 set to 0x34
	fmov.s @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r14),fr3
	mov 0x64,r0 ; r0 set to 0x64, r0 set to 0x64
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C08557A,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r14),r2
	tst r2,r2
	bt/s loc_8C085538
	add r14,r8 ; r8 ??? bc r14 is ???, r8 ??? bc r14 is ???	
	mov 0x23,r3 ; r3 set to 0x23, r3 set to 0x23
	add r14,r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
	mov.b @r3,r3
	mov 0x23,r2 ; r2 set to 0x23, r2 set to 0x23
	extu.b r3,r3
	mulu.w r2,r3
	bra loc_8C085548
	sts macl,r3

loc_8C085538:
	mov 0x23,r1 ; r1 set to 0x23
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.b @r1,r1
	mov 0x23,r3 ; r3 set to 0x23
	extu.b r1,r1
	mulu.w r3,r1
	sts macl,r1
	neg r1,r3 ; r3 ??? bc r1 is ???	

loc_8C085548:
	lds r3,fpul
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @r8,fr2
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@r8
	fmov.s @(r0,r14),fr3
	mov 0x70,r0 ; r0 set to 0x70, r0 set to 0x70
	fmov.s fr3,@(r0,r14)
	mov.b @(0x01,r14),r0
	mov.l @(0x18,r14),r3
	mov r0,r2 ; r2 set to 0x70, r2 set to 0x70
	mov.b @(0x01,r3),r0
	cmp/eq r0,r2
	bt loc_8C085598
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r8
	mov.l @r15+,r13
	bra loc_8C085A78
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C085572:
	#data 0x019c
loc_8C085574:
	#data 0x02C8
loc_8C085576:
	#data 0x00Cc
loc_8C085578:
	#data 0x01F9
loc_8C08557A:
	#data 0x0130
	#align4

loc_8C08557C:
	#data 0x8C2896B0
loc_8C085580:
	#data bank03.loc_8c034e8c
loc_8C085584:
	#data bank04.loc_8c042008
loc_8C085588:
	#data bank12.loc_8c1294C8
loc_8C08558C:
	#data 0x43360000
loc_8C085590:
	#data 0xC3360000
loc_8C085594:
	#data 0x432A0000

;==============================================
loc_8c085598:
	mov.w @(loc_8C08567C,pc),r0
	mov.l @(0x18,r14),r2
	mov.w @r4,r3
	mov.w @(r0,r2),r1
	cmp/eq r1,r3
	bt/s loc_8c0855ae
	mov 0x00,r13
	mov 0x02,r0
	mov.b r0,@(0x04,r14) 
	mov.w @(loc_8C08567E,pc),r0
	mov.b r13,@(r0,r14) 

loc_8c0855ae:
	mov 0x23,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0855f2
	mov.w @(loc_8C085680,pc),r0
	mov.l @(r0,r5),r3
	tst r3,r3
	bt loc_8c0855c0
	mov.l r13,@(r0,r5) 

loc_8c0855c0:
	mov.w @(0x02,r4),r0 
	tst r0,r0
	bt loc_8c0855ce
	mov.w @(0x02,r4),r0 
	add 0xFF,r0
	bra loc_8c0855f2
	mov.w r0,@(0x02,r4) 

loc_8c0855ce:
	mov 0x08,r0
	mov.w @(loc_8C085682,pc),r1
	mov.w r0,@(0x02,r4) 
	mov.w @(loc_8C085682,pc),r0
	add r5,r1
	mov.l @(bank08.loc_8c085688,pc),r2
	mov.l @(r0,r5),r3
	add 0x01,r3
	mov.l r3,@(r0,r5) 
	mov 0x05,r0
	jsr @r2
	mov.l @r1,r1
	mov.w @(loc_8C085682,pc),r1
	mov 0x01,r3
	add r5,r1
	mov.l r0,@r1
	mov.w @(loc_8C085680,pc),r0
	mov.l r3,@(r0,r5) 

loc_8c0855f2:
	mov 0x23,r0
	mov.l @(bank08.loc_8c085688,pc),r3
	mov.b @(r0,r14),r1
	extu.b r1,r1
	jsr @r3
	mov 0x03,r0
	tst r0,r0
	bf loc_8c08561e
	mov.w @(loc_8C085684,pc),r0
	mov 0x42,r4
	mov.b r4,@(r0,r14) 
	add 0x01,r0
	mov.b r4,@(r0,r14) 
	mov.w @(loc_8C085680,pc),r0
	mov.l @(r0,r5),r3
	tst r3,r3
	bt loc_8c085618
	bsr loc_8c085a7e
	mov r14,r4

loc_8c085618:
	mov.l @(loc_8c08568c,pc),r2
	jsr @r2 ;Jump to bank04.loc_8c045748
	mov r14,r4

loc_8c08561e:
	bsr loc_8c0851b4
	mov r14,r4
	tst r0,r0
	bf/s loc_8c085630
	mov r14,r4
	mov.w @(loc_8C08567E,pc),r0
	mov 0x01,r3
	bra loc_8c085634
	mov.b r3,@(r0,r14) 

loc_8c085630:
	mov.w @(loc_8C08567E,pc),r0
	mov.b r13,@(r0,r14) 

loc_8c085634:
	bsr loc_8c085646
	nop 
	lds.l @r15+,pr 
	mov.l @(bank08.loc_8c085690,pc),r2
	mov r14,r4
	mov.l @r15+,r8
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c085646:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	fmov.s fr13,@-r15
	fmov.s fr12,@-r15
	sts.l pr,@-r15
	add 0xD8,r15
	mov r4,r14
	mov.l @(0x14,r14),r3
	mov.w @(loc_8C085686,pc),r13
	mova @(loc_8C085698,pc),r0 
	mov.l @(bank08.loc_8c085694,pc),r11
	tst r3,r3
	add r14,r13
	bt/s loc_8c085672
	fmov.s @r0,fr14
	bra loc_8c085936
	nop 

loc_8c085672:
	mov.w @(0x1E,r14),r0
	cmp/pz r0
	bf loc_8c08569c
	bra loc_8c0856a6
	and 0x03,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C08567C:
	#data 0x0158
loc_8C08567E:
	#data 0x012C
loc_8C085680:
	#data 0x02C8
loc_8C085682:
	#data 0x02D8
loc_8C085684:
	#data 0x019C
loc_8C085686:
	#data 0x0088
	#align4

loc_8c085688:
	#data bank12.loc_8c1292d4
loc_8c08568c:
	#data bank04.loc_8c045748
loc_8c085690:
	#data bank03.loc_8c034dee
loc_8c085694:
	#data bank13.loc_8c13aedc
loc_8C085698:
	#data 0x40400000

;==============================================
loc_8c08569c:
	not r0,r0
	add 0x01,r0
	and 0x03,r0
	not r0,r0
	add 0x01,r0

loc_8c0856a6:
	tst r0,r0
	bt loc_8c0856ae
	bra loc_8c085874
	nop 

loc_8c0856ae:
	mov.l @(bank08.loc_8c08574c,pc),r12
	mov 0x00,r0
	jsr @r12
	mov.w r0,@(0x1E,r14) 
	mov r0,r1
	mov.l @(bank08.loc_8c085750,pc),r3
	mov.w @(loc_8C085742,pc),r0
	jsr @r3
	nop 
	mov r0,r4
	mov.w @(loc_8C085746,pc),r0
	mov.w @(loc_8C085744,pc),r2
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_8c0856e2
	add r2,r4
	lds r4,fpul
	cmp/pz r4
	bt/s loc_8c0856de
	float fpul,fr3
	mov.l @(loc_8C085754,pc),r3
	lds r3,fpul 
	fsts fpul,fr2
	fadd fr2,fr3

loc_8c0856de:
	bra loc_8c0856fa
	fmov fr3,fr4

loc_8c0856e2:
	lds r4,fpul 
	cmp/pz r4
	bt/s loc_8c0856f2
	float fpul,fr3
	mov.l @(loc_8C085754,pc),r3
	lds r3,fpul 
	fsts fpul,fr2
	fadd fr2,fr3

loc_8c0856f2:
	fldi1 fr2
	fmul fr2,fr3
	fmov fr3,fr4
	fneg fr4

loc_8c0856fa:
	mov.b @(0x07,r14),r0 
	tst r0,r0
	bf loc_8c085704
	mov 0x5C,r0
	fmov.s fr4,@(r0,r14) 

loc_8c085704:
	mova @(loc_8C085758,pc),r0 
	fmov.s @r0,fr15
	mov 0x5C,r0
	fmov.s @(r0,r14),fr3
	mov 0x10,r0
	fsub fr3,fr4
	fdiv fr15,fr4
	jsr @r12
	fmov.s fr4,@(r0,r13) 
	mov r0,r1
	mov.l @(bank08.loc_8c085750,pc),r3
	mov.w @(loc_8C085742,pc),r0
	jsr @r3
	nop 
	mov r0,r4
	mov.w @(loc_8C085746,pc),r0
	mov.w @(loc_8C085748,pc),r2
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_8c08575c
	add r2,r4
	lds r4,fpul 
	cmp/pz r4
	bt/s loc_8c08573e
	float fpul,fr3
	mov.l @(loc_8C085754,pc),r3
	lds r3,fpul 
	fsts fpul,fr2
	fadd fr2,fr3

loc_8c08573e:
	bra loc_8c085774
	fmov fr3,fr4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C085742:
	#data 0x00C8
loc_8C085744:
	#data 0x0096
loc_8C085746:
	#data 0x0130
loc_8C085748:
	#data 0x01C2
	#align4

loc_8c08574c:
	#data bank03.loc_8c03319e
loc_8c085750:
	#data bank12.loc_8c12939c
loc_8C085754:
	#data 0x4F800000
loc_8C085758:
	#data 0x40800000

;----------------------------------------------
loc_8c08575c:
	lds r4,fpul
	cmp/pz r4
	bt/s loc_8c08576c
	float fpul,fr3
	mov.l @(loc_8C08584C,pc),r3
	lds r3,fpul 
	fsts fpul,fr2
	fadd fr2,fr3

loc_8c08576c:
	fldi1 fr2
	fmul fr2,fr3
	fmov fr3,fr4
	fneg fr4

loc_8c085774:
	mov.b @(0x07,r14),r0 
	tst r0,r0
	bf loc_8c08577e
	mov 0x68,r0
	fmov.s fr4,@(r0,r14) 

loc_8c08577e:
	mov 0x68,r0
	fmov.s @(r0,r14),fr3
	mov 0x18,r0
	fsub fr3,fr4
	fdiv fr15,fr4
	jsr @r12
	fmov.s fr4,@(r0,r13) 
	mov.l @(bank08.loc_8c085850,pc),r3
	mov r0,r1
	jsr @r3
	mov 0x32,r0
	mov r0,r4
	mov.w @(loc_8C085842,pc),r0
	mov.l @(0x18,r14),r5
	cmp/pz r4
	lds r4,fpul 
	mov.l @(r0,r5),r0
	shll2 r0
	fmov.s @(r0,r11),fr4
	bt/s loc_8c0857b0
	float fpul,fr3
	mov.l @(loc_8C08584C,pc),r3
	lds r3,fpul 
	fsts fpul,fr2
	fadd fr2,fr3

loc_8c0857b0:
	mov.w @(loc_8C085844,pc),r0
	fadd fr3,fr4
	mov.w @(loc_8C085846,pc),r2
	mov.w @(r0,r5),r3
	extu.w r3,r3
	tst r2,r3
	bf/s loc_8c0857d6
	mov 0x01,r10
	mov.l @(0x18,r14),r1
	mov.w @(r0,r1),r3
	mov.w @(loc_8C085848,pc),r1
	extu.w r3,r3
	tst r1,r3
	bt loc_8c0857d2
	fmov fr4,fr5
	bra loc_8c0857de
	fneg fr5

loc_8c0857d2:
	tst r10,r4
	bt loc_8c0857da

loc_8c0857d6:
	bra loc_8c0857de
	fmov fr4,fr5

loc_8c0857da:
	fmov fr4,fr5
	fneg fr5

loc_8c0857de:
	mov.b @(0x07,r14),r0 
	tst r0,r0
	bf loc_8c0857e8
	mov 0x60,r0
	fmov.s fr5,@(r0,r14) 

loc_8c0857e8:
	mov 0x60,r0
	fmov.s @(r0,r14),fr3
	mov 0x14,r0
	fsub fr3,fr5
	fdiv fr15,fr5
	jsr @r12
	fmov.s fr5,@(r0,r13) 
	mov.l @(bank08.loc_8c085850,pc),r3
	mov r0,r1
	jsr @r3
	mov 0x32,r0
	mov r0,r4
	mov.w @(loc_8C085842,pc),r0
	mov.l @(0x18,r14),r5
	cmp/pz r4
	lds r4,fpul 
	mov.l @(r0,r5),r0
	shll2 r0
	fmov.s @(r0,r11),fr4
	bt/s loc_8c08581a
	float fpul,fr3
	mov.l @(loc_8C08584C,pc),r3
	lds r3,fpul 
	fsts fpul,fr2
	fadd fr2,fr3

loc_8c08581a:
	mov.w @(loc_8C085844,pc),r0
	mov.w @(loc_8C085846,pc),r2
	mov.w @(r0,r5),r3
	extu.w r3,r3
	tst r2,r3
	bf/s loc_8c08583e
	fadd fr3,fr4
	mov.l @(0x18,r14),r1
	mov.w @(r0,r1),r3
	mov.w @(loc_8C085848,pc),r1
	extu.w r3,r3
	tst r1,r3
	bt loc_8c08583a
	fmov fr4,fr5
	bra loc_8c085858
	fneg fr5

loc_8c08583a:
	tst r10,r4
	bt loc_8c085854

loc_8c08583e:
	bra loc_8c085858
	fmov fr4,fr5

;##############################################
loc_8C085842:
	#data 0x02A4
loc_8C085844:
	#data 0x0340
loc_8C085846:
	#data 0x2000
loc_8C085848:
	#data 0x1000
	#align4

loc_8C08584C:
	#data 0x4F800000
loc_8c085850:
	#data bank12.loc_8c12939c

;----------------------------------------------
loc_8c085854:
	fmov fr4,fr5
	fneg fr5

loc_8c085858:
	mov.b @(0x07,r14),r0 
	tst r0,r0
	bf loc_8c085868
	mov r10,r0
	nop 
	mov.b r0,@(0x07,r14) 
	mov 0x6C,r0
	fmov.s fr5,@(r0,r14) 

loc_8c085868:
	mov 0x6C,r0
	fmov.s @(r0,r14),fr3
	mov 0x1C,r0
	fsub fr3,fr5
	fdiv fr15,fr5
	fmov.s fr5,@(r0,r13) 

loc_8c085874:
	mov 0x10,r1
	add r13,r1
	mov 0x5C,r0
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	mov 0x14,r1
	add r13,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14) 
	mov 0x60,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x18,r1
	add r13,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14) 
	mov 0x68,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x1C,r1
	add r13,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14) 
	mov 0x6C,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14) 
	mova @(loc_8C0859AC,pc),r0 
	fmov.s @r0,fr6
	mov 0x5C,r0
	fmov.s @(r0,r14),fr5
	mov 0x68,r0
	fmov fr5,fr2
	fmov.s @(r0,r14),fr4
	mov 0x60,r0
	fmov fr5,fr7
	fmul fr5,fr7
	fadd fr4,fr2
	fmov fr14,fr0
	fmov fr7,fr3
	fmul fr5,fr3
	fmul fr5,fr2
	fmul fr5,fr2
	fmul fr6,fr2
	fsub fr2,fr3
	fmov fr7,fr2
	fmul fr4,fr2
	fmac fr0,fr2,fr3
	fmov fr3,fr7
	fmov.s @(r0,r14),fr3
	mov 0x68,r0
	fdiv fr7,fr3
	fmov.s fr3,@r13
	fmov.s @(r0,r14),fr3
	mov 0x5C,r0
	fmov.s @(r0,r14),fr2
	mov 0x04,r0
	fadd fr3,fr2
	fmov.s @r13,fr3
	fmul fr2,fr3
	fmul fr6,fr3
	fneg fr3
	fmov.s fr3,@(r0,r13) 
	mov 0x5C,r0
	fmov.s @r13,fr2
	fmov.s @(r0,r14),fr3
	mov 0x68,r0
	mov.l @(bank08.loc_8c0859b0,pc),r3
	fmul fr3,fr2
	fmov.s @(r0,r14),fr3
	mov 0x08,r0
	fmul fr3,fr2
	fmul fr14,fr2
	fmov.s fr2,@(r0,r13) 
	mov.w @(0x1E,r14),r0 
	add 0x01,r0
	mov.w r0,@(0x1E,r14) 
	mov 0x08,r0
	jsr @r3
	fmov.s @(r0,r13),fr4
	mov 0x48,r1
	mov r14,r4
	add r14,r1
	neg r0,r0
	mov.l r0,@r1
	mov.w @(loc_8C0859A6,pc),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt/s loc_8c08592e
	add 0x48,r4
	bra loc_8c085932
	mov.l @r4,r3

loc_8c08592e:
	mov.l @r4,r3
	neg r3,r3

loc_8c085932:
	bra loc_8c085a42
	mov.l r3,@r4

loc_8c085936:
	mov.l @(0x14,r14),r5
	mov r14,r1
	mov.w @(loc_8C0859A8,pc),r4
	add 0x5C,r1
	mov r5,r2
	mov.l @(bank08.loc_8c0859b4,pc),r3
	add r5,r4
	add 0x5C,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x14,r14),r2
	mov r14,r1
	mov.l @(bank08.loc_8c0859b4,pc),r3
	add 0x68,r1
	add 0x68,r2
	jsr @r3
	mov 0x0C,r0
	mov 0x04,r0
	fmov.s @r4,fr3
	fmov.s fr3,@r13
	fmov.s @(r0,r4),fr2
	fmov.s fr2,@(r0,r13) 
	mov 0x08,r0
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r13) 
	mov 0x10,r0
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r13) 
	mov 0x14,r0
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r13) 
	mov 0x18,r0
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r13) 
	mov 0x1C,r0
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r13) 
	mov 0x64,r0
	mov.l @(0x14,r14),r12
	fmov.s @(r0,r12),fr3
	mov 0x34,r0
	fmov.s @(r0,r12),fr15
	mov.w @(loc_8C0859A6,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_8c0859c0
	fsub fr3,fr15
	mov.l @(bank08.loc_8c0859b8,pc),r3
	mov 0x48,r0
	jsr @r3
	mov.l @(r0,r12),r4
	mova @(loc_8C0859BC,pc),r0 
	fmov fr0,fr3
	fmov.s @r0,fr2
	bra loc_8c0859d4
	fmul fr2,fr3

;##############################################
loc_8C0859A6:
	#data 0x0130
loc_8C0859A8:
	#data 0x0088
	#align4

loc_8C0859AC:
	#data 0x3FC00000
loc_8c0859b0:
	#data bank11.loc_8c11e170
loc_8c0859b4:
	#data bank12.loc_8c1294c8
loc_8c0859b8:
	#data bank11.loc_8c11e2e0
loc_8C0859BC:
	#data 0x420C0000

;----------------------------------------------
loc_8c0859c0:
	mov.l @(loc_8c085abc,pc),r3
	mov 0x48,r0
	mov.l @(0x14,r14),r4
	jsr @r3
	mov.l @(r0,r4),r4
	mova @(loc_8C085AC0,pc),r0 
	fmov.s @r0,fr3
	fmul fr3,fr0
	fmov fr0,fr3
	fneg fr3

loc_8c0859d4:
	fadd fr3,fr15
	fmov.s @r13,fr3
	mov 0x04,r0
	mov.l @(bank08.loc_8c085ac4,pc),r3
	fmul fr15,fr3
	fmov fr15,fr0
	fmul fr15,fr3
	fmov.s fr3,@(r0,r15) 
	mov 0x04,r0
	fmov.s @(r0,r13),fr12
	mov 0x08,r0
	fmov.s @(r0,r13),fr1
	mov 0x04,r0
	fmul fr15,fr12
	fmov.s fr1,@r15
	fmov fr12,fr2
	fmul fr15,fr2
	fmac fr0,fr3,fr2
	fmov.s @(r0,r15),fr3
	fmac fr0,fr1,fr2
	fldi1 fr0
	fadd fr0,fr0
	fmov fr2,fr13
	fmul fr0,fr12
	fmov fr14,fr0
	fmac fr0,fr3,fr12
	fmov fr1,fr3
	fmov fr12,fr4
	jsr @r3
	fadd fr3,fr4
	mov 0x48,r1
	mov r14,r4
	add r14,r1
	neg r0,r0
	mov.l r0,@r1
	mov.w @(loc_8C085AB2,pc),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt/s loc_8c085a28
	add 0x48,r4
	bra loc_8c085a2c
	mov.l @r4,r3

loc_8c085a28:
	mov.l @r4,r3
	neg r3,r3

loc_8c085a2c:
	mov 0x64,r0
	mov.l r3,@r4
	fmov.s @(r0,r14),fr3
	mov 0x34,r0
	fadd fr3,fr15
	fmov.s fr15,@(r0,r14) 
	mov 0x70,r0
	fmov.s @(r0,r14),fr3
	mov 0x38,r0
	fadd fr3,fr13
	fmov.s fr13,@(r0,r14) 

loc_8c085a42:
	add 0x28,r15
	lds.l @r15+,pr 
	fmov.s @r15+,fr12
	fmov.s @r15+,fr13
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

loc_8C085A5A:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(loc_8C085AC8,pc),r3 ; r3 set to 0x8C042008
	jsr @r3
	mov 0x2B,r5 ; r5 set to 0x2b
	mov.b @(0x04,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C085AB4,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C085A78:
	mov.l @(loc_8C085ACC,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8C085A7E:
	mov.w @(loc_8C085AB6,pc),r0 ; r0 set to 0x2D8
	mov.l @(r0,r5),r3
	tst r3,r3
	bf loc_8C085A8a
	bra loc_8C085A8c
	mov 0x3A,r5

loc_8C085A8A:
	mov 0x39,r5 ; r5 set to 0x39

loc_8C085A8C:
	mov.w @(loc_8C085AB8,pc),r0 ; r0 set to 0x1A1, r0 set to 0x1A1
	mov.l @(loc_8C085AD0,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
	mov.b r5,@(r0,r4)
	add 0x0B,r0 ; r0 set to 0x1AC, r0 set to 0x1Ac
	mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00
	mov.w r5,@(r0,r4)
	add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19e
	mov.b r5,@(r0,r4)
	add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4
	mov.l r5,@(r0,r4)
	mov.b @(0x02,r4),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4
	shll r0 ; r0 set to 0x188, r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	rts
	mov.w r1,@(r0,r2)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c085ab2:
	#data 0x0130
loc_8C085AB4:
	#data 0x012c
loc_8C085AB6:
	#data 0x02D8
loc_8C085AB8:
	#data 0x01A1
	#align4

loc_8C085ABC:
	#data bank11.loc_8c11E2E0
loc_8c085ac0:
	#data 0x420C0000
loc_8C085AC4:
	#data bank11.loc_8c11E170
loc_8C085AC8:
	#data bank04.loc_8c042008
loc_8C085ACC:
	#data bank04.loc_8c0450C0
loc_8C085AD0:
	#data 0x8C2896B0

;==============================================
loc_8c085ad4:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x9A,PC),r0
	mov r4,r3
	mov.l r4,@r15
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c085afa
	mov.l @(0x98,PC),r3
	mov 0x03,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c085b24
	mov r0,r4
	mov.l @(0x8C,PC),r3
	bra loc_8c085b0c
	nop 

loc_8c085afa:
	mov.l @(0x84,PC),r3
	mov 0x01,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c085b24
	mov r0,r4
	mov.l @(0x7C,PC),r3

loc_8c085b0c:
	mov.l r3,@(0x10,r4)
	mov 0x26,r0
	mov.w @(0x64,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)
	mov.w @(0x5E,PC),r0
	mov.l @(0x18,r4),r2
	mov.w @(r0,r2),r3
	mov.w r3,@(r0,r4)
	mov r4,r0
	nop 

loc_8c085b24:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C085B2C:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C085B8C,pc),r1 ; r1 set to 0x8C154298
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C085B40:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r8,@-r15
	mov r5,r2
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	mov r14,r1
	mov.l @(loc_8C085B90,pc),r3 ; r3 set to 0x8C1294C8
	mov 0x01,r6 ; r6 set to 0x01
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	add 0x34,r2
	mov.w @(loc_8C085B7C,pc),r0 ; r0 set to 0x12c
	add 0x34,r1
	mov.b r6,@(r0,r14)
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C085B7A,pc),r0 ; r0 set to 0x130
	mov 0x34,r8 ; r8 set to 0x34
	mov.w @(r0,r5),r3 ; r3 ??? bc r5 is ???	
	tst r3,r3
	bt/s loc_8C085B98
	add r14,r8 ; r8 ??? bc r14 is ???	
	mov.l @(loc_8C085B94,pc),r1 ; r1 set to 0x42EA0000
	lds r1,fpul
	bra loc_8C085B9e
	fsts fpul,fr3

;##############################################
loc_8C085B76:
	#data 0x019e
loc_8C085B78:
	#data 0x1704
loc_8C085B7A:
	#data 0x0130
loc_8C085B7C:
	#data 0x012c
	#align4

loc_8C085B80:
	#data bank04.loc_8c044F12
loc_8C085B84:
	#data loc_8C085D3e
loc_8C085B88:
	#data loc_8C085B2c
loc_8C085B8C:
	#data bank15.loc_8c154298
loc_8C085B90:
	#data bank12.loc_8c1294C8
loc_8C085B94:
	#data 0x42EA0000

;----------------------------------------------
loc_8C085B98:
	mov.l @(loc_8C085CD8,pc),r2 ; r2 set to 0xC2EA0000
	lds r2,fpul
	fsts fpul,fr3

loc_8C085B9E:
	fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(loc_8C085CDC,pc),r1 ; r1 set to 0x43010000, r1 set to 0x43010000
	mov 0x00,r4 ; r4 set to 0x00, r4 set to 0x00
	fadd fr3,fr2
	mov.l @(loc_8C085CE0,pc),r3 ; r3 set to 0x8C129560, r3 set to 0x8C129560
	lds r1,fpul
	mov.w @(loc_8C085CC8,pc),r1 ; r1 set to 0xDC, r1 set to 0xDc
	mov.w @(loc_8C085CC8,pc),r2 ; r2 set to 0xDC, r2 set to 0xDc
	fmov.s fr2,@r8
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???	
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
	mov.b r4,@(r0,r14)
	mov 0x0E,r0 ; r0 set to 0x0E, r0 set to 0x0e
	mov.w r0,@(0x1C,r14)
	mov.w @(loc_8C085CCA,pc),r0 ; r0 set to 0xC0, r0 set to 0xC0
	jsr @r3
	add r5,r2
	mov.w @(loc_8C085CCC,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	mov r14,r1
	add 0x50,r1
	mov.b r6,@(r0,r14)
	mov.b @(0x02,r5),r0
	mov.b r0,@(0x02,r14)
	mov.b @(0x01,r5),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	fmov.s @(r0,r5),fr2
	fmov.s fr2,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
	fmov.s @(r0,r5),fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C085CCE,pc),r0 ; r0 set to 0x1A3, r0 set to 0x1A3
	mov.b @(r0,r5),r3 ; r3 ??? bc r5 is ???, r3 ??? bc r5 is ???	
	mov.b r3,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x1A4, r0 set to 0x1A4
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0 ; r0 set to 0x30, r0 set to 0x30
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C085CE4,pc),r3 ; r3 set to 0x8C1294C8, r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
	mov.b @(r0,r5),r2
	mov 0x42,r5 ; r5 set to 0x42, r5 set to 0x42
	mov 0x36,r3 ; r3 set to 0x36, r3 set to 0x36
	mov.b r2,@(r0,r14)
	mov 0x0B,r6 ; r6 set to 0x0B, r6 set to 0x0b
	mov.w @(loc_8C085CD0,pc),r0 ; r0 set to 0x19C, r0 set to 0x19c
	mov.b r5,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x19D, r0 set to 0x19d
	mov.b r5,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x1A1, r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC, r0 set to 0x1Ac
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19e
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4
	mov.l @(loc_8C085CE8,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4
	shll r0 ; r0 set to 0x188, r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(loc_8C085CEC,pc),r2 ; r2 set to 0x8C034E8C, r2 set to 0x8C034E8c
	jsr @r2
	mov r14,r4 ; r4 ??? bc r14 is ???, r4 ??? bc r14 is ???	
	mov.w @(loc_8C085CD2,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
	tst r3,r3
	bt loc_8C085C4e
	mova @(loc_8C085CF0,pc),r0  ; r0 set to 0x8C085CF0, r0 set to 0x8C085CF0
	bra loc_8C085C52
	fmov.s @r0,fr3

loc_8C085C4E:
	mova @(loc_8C085CF4,pc),r0  ; r0 init to 0x8C085CF4
	fmov.s @r0,fr3

loc_8C085C52:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fldi1 fr4
	fmov.s fr3,@(r0,r14)
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	fmov.s fr4,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
	fmov.s fr4,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C085C68:
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
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mova @(0x6C,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov @(r0,r14),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r14),fr2
	fadd fr4,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x32,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c085cb2
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c085cfc

loc_8C085CB2:
	mov.w @(0x20,PC),r0
	mov 0x00,r3
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xA,PC),r0
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C085CC8:
	#data 0x00Dc
loc_8C085CCA:
	#data 0x00C0
loc_8C085CCC:
	#data 0x012c
loc_8C085CCE:
	#data 0x01A3
loc_8C085CD0:
	#data 0x019c
loc_8C085CD2:
	#data 0x0130
loc_8C085CD4:
	#data 0x019f
loc_8C085CD6:
	#data 0x0108
	#align4

loc_8C085CD8:
	#data 0xC2EA0000
loc_8C085CDC:
	#data 0x43010000
loc_8C085CE0:
	#data bank12.loc_8c129560
loc_8C085CE4:
	#data bank12.loc_8c1294C8
loc_8C085CE8:
	#data 0x8C2896B0
loc_8C085CEC:
	#data bank03.loc_8c034e8c
loc_8C085CF0:
	#data 0x41200000
loc_8C085CF4:
	#data 0xC1200000
loc_8c085cf8:
	#data 0x3D924925

;==============================================
loc_8C085CFC:
	mov.w @(0x1C,r14),r0
	mov 0x07,r3
	cmp/ge r3,r0
	bt.s loc_8c085d14
	mov r14,r4
	mov.l @(0x130,PC),r1
	mov.w @(0x11E,PC),r0
	lds r1,fpul
	fmov @(r0,r14),fr2
	fsts fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r14)

loc_8C085D14:
	mov.l @(0x124,PC),r3
	jsr @r3
	nop 
	lds.l @r15+,pr
	mov.l @(0x120,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C085D24:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14


;-------------------------------------------------------------------------------
loc_8C085D2A:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C085E2C,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8C085D38:
	mov.l @(loc_8C085E44,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;==============================================
loc_8C085D3E:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C085E48,pc),r1 ; r1 set to 0x8C1542A8
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C085D52:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r8,@-r15
	mov.w @(loc_8C085E2E,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.l @(loc_8C085E4C,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.w @(loc_8C085E2E,pc),r2 ; r2 set to 0xDc
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C085E30,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???	
	mov.w @(loc_8C085E2C,pc),r0 ; r0 set to 0x12c
	mov 0x01,r4 ; r4 set to 0x01
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
	mov.w @(loc_8C085E32,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C085E50,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov r14,r1
	mov.b @(r0,r5),r2
	add 0x34,r1
	mov.l @(loc_8C085E50,pc),r3 ; r3 set to 0x8C1294C8
	mov.b r2,@(r0,r14)
	mov r5,r2
	mov.w @(loc_8C085E2C,pc),r0 ; r0 set to 0x12c
	add 0x34,r2
	mov.b r4,@(r0,r14)
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C085E34,pc),r0 ; r0 set to 0x130
	mov 0x34,r8 ; r8 set to 0x34
	mov.w @(r0,r5),r3 ; r3 ??? bc r5 is ???	
	tst r3,r3
	bt/s loc_8C085DD4
	add r14,r8 ; r8 ??? bc r14 is ???	
	mov.l @(loc_8C085E54,pc),r1 ; r1 set to 0x42EA0000
	lds r1,fpul
	bra loc_8C085DDa
	fsts fpul,fr3

loc_8C085DD4:
	mov.l @(loc_8C085E58,pc),r2 ; r2 set to 0xC2EA0000
	lds r2,fpul
	fsts fpul,fr3

loc_8C085DDA:
	fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(loc_8C085E5C,pc),r1 ; r1 set to 0x43010000, r1 set to 0x43010000
	mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
	fadd fr3,fr2
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	lds r1,fpul
	mov 0x0B,r6 ; r6 set to 0x0B, r6 set to 0x0b
	fmov.s fr2,@r8
	fmov.s @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
	mov.b r3,@(r0,r14)
	mov 0x0E,r0 ; r0 set to 0x0E, r0 set to 0x0e
	mov.l @(loc_8C085E60,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C085E34,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
	tst r3,r3
	bt loc_8C085E10
	mova @(loc_8C085E64,pc),r0  ; r0 set to 0x8C085E64, r0 set to 0x8C085E64
	bra loc_8C085E14
	fmov.s @r0,fr3

loc_8C085E10:
	mova @(loc_8C085E68,pc),r0  ; r0 init to 0x8C085E68
	fmov.s @r0,fr3

loc_8C085E14:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fldi1 fr4
	fmov.s fr3,@(r0,r14)
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	fmov.s fr4,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
	fmov.s fr4,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C085E2a:
	#data 0x0108
loc_8C085E2C:
	#data 0x012c
loc_8C085E2E:
	#data 0x00Dc
loc_8C085E30:
	#data 0x00C0
loc_8C085E32:
	#data 0x01A3
loc_8C085E34:
	#data 0x0130
	#align4

loc_8C085E38:
	#data 0x3E124925
loc_8C085E3C:
	#data bank03.loc_8c034dee
loc_8C085E40:
	#data bank04.loc_8c045748
loc_8C085E44:
	#data bank04.loc_8c0450C0
loc_8C085E48:
	#data bank15.loc_8c1542A8
loc_8C085E4C:
	#data bank12.loc_8c129560
loc_8C085E50:
	#data bank12.loc_8c1294C8
loc_8C085E54:
	#data 0x42EA0000
loc_8C085E58:
	#data 0xC2EA0000
loc_8C085E5C:
	#data 0x43010000
loc_8C085E60:
	#data bank03.loc_8c034e8c
loc_8C085E64:
	#data 0x41200000
loc_8C085E68:
	#data 0xC1200000

;----------------------------------------------
loc_8C085E6C:
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
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C085EEC,pc),r0  ; r0 set to 0x8C085EEc
	fmov.s @r0,fr4
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r4),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r4),fr2
	fadd fr4,fr2
	fmov.s fr2,@(r0,r4)
	mov.b @(0x01,r4),r0
	mov r0,r3 ; r3 set to 0x54
	mov.b @(0x01,r5),r0
	cmp/eq r0,r3
	bt loc_8C085EAa
	bra loc_8C085D38
	nop

loc_8C085EAA:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8C085EC8
	mov.w @(loc_8C085EE8,pc),r0 ; r0 set to 0x108
	mov 0x00,r3 ; r3 set to 0x00
	fldi0 fr3
	fmov.s fr3,@(r0,r4)
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C085EEA,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;-------------------------------------------------------------------------------
loc_8c085ec8:
	mov.w @(0x1C,r4),r0 
	mov 0x07,r3
	cmp/ge r3,r0
	bt loc_8c085ede
	mov.l @(loc_8C085EF0,pc),r1
	mov.w @(bank08.loc_8c085ee8,pc),r0
	lds r1,fpul 
	fmov.s @(r0,r4),fr2
	fsts fpul,fr3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r4) 

loc_8c085ede:
	mov.l @(bank08.loc_8c085ef4,pc),r3
	jmp @r3
	nop

;unused
loc_8c085ee2:
	rts
	nop

;----------------------------------------------
loc_8c085ee8:
	#data 0x0108
loc_8c085eea:
	#data 0x012C
	#align4

loc_8c085eec:
	#data 0x3D924925
loc_8C085EF0:
	#data 0x3E124925
loc_8c085ef4:
	#data bank03.loc_8c034dee

;==============================================
loc_8c085ef8:
	mov.l r14,@-r15
	mov 0x01,r5
	sts.l pr,@-r15
	mov.l @(0xE8,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c085f30
	mov r0,r4
	mov.w @(0xC6,PC),r2
	mov 0x26,r0
	mov.l @(0xD8,PC),r3
	mov.l r3,@(0x10,r4)
	mov.l r14,@(0x18,r4)
	mov.w r2,@(r0,r4)
	mov.w @(0xBC,PC),r0
	mov.l @(0x18,r4),r3
	mov.w @(r0,r3),r2
	mov 0x01,r3
	mov.w r2,@(r0,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov.w @(0xB0,PC),r0
	mov.l r3,@(r0,r14)
	mov r4,r0
	nop 

loc_8c085f30:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C085F36:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C085FF0,pc),r1 ; r1 set to 0x8C1542B8
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C085F4A:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r8,@-r15
	mov.w @(loc_8C085FDE,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C085FDE,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C085FF4,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C085FE0,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???	
	mov.w @(loc_8C085FE2,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C085FE4,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C085FF8,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov r14,r1
	mov.b @(r0,r13),r2
	add 0x34,r1
	mov.l @(loc_8C085FF8,pc),r3 ; r3 set to 0x8C1294C8
	mov.b r2,@(r0,r14)
	mov r13,r2
	mov.w @(loc_8C085FE2,pc),r0 ; r0 set to 0x12c
	add 0x34,r2
	mov.b r4,@(r0,r14)
	mova @(loc_8C085FFC,pc),r0  ; r0 set to 0x8C085FFc
	fmov.s @r0,fr3 ; r3 ??	
	mov.w @(loc_8C085FE6,pc),r0 ; r0 set to 0x108
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C085FDA,pc),r0 ; r0 set to 0x130
	mov 0x34,r8 ; r8 set to 0x34
	mov.w @(r0,r13),r3
	tst r3,r3
	bt/s loc_8C086004
	add r14,r8 ; r8 ??? bc r14 is ???	
	mov.l @(loc_8C086000,pc),r1 ; r1 set to 0xC2700000
	lds r1,fpul
	bra loc_8C08600a
	fsts fpul,fr3

;==============================================
loc_8c085fd8:
	#data 0x1705
loc_8C085FDA:
	#data 0x0130
loc_8C085Fdc:
	#data 0x02D0
loc_8C085FDE:
	#data 0x00Dc
loc_8C085FE0:
	#data 0x00C0
loc_8C085FE2:
	#data 0x012c
loc_8C085FE4:
	#data 0x01A3
loc_8C085FE6:
	#data 0x0108
	#align4

loc_8C085FE8:
	#data bank04.loc_8c044F12
loc_8C085FEC:
	#data loc_8C085F36
loc_8C085FF0:
	#data bank15.loc_8c1542B8
loc_8C085FF4:
	#data bank12.loc_8c129560
loc_8C085FF8:
	#data bank12.loc_8c1294C8
loc_8C085FFC:
	#data 0x3F333333
loc_8C086000:
	#data 0xC2700000

;==============================================
loc_8c086004:
	mov.l @(loc_8C086128,pc),r2
	lds r2,fpul
	fsts fpul,fr3

loc_8c08600a:
	mov 0x00,r4
	fmov.s @r8,fr2
	mov 0x24,r0
	mov 0x42,r5
	fadd fr3,fr2
	mov 0x40,r3
	mov 0x12,r6
	fmov.s fr2,@r8
	mov.b r4,@(r0,r14) 
	mov.w @(loc_8C086118,pc),r0
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
	mov.l r4,@(r0,r14) 
	mov 0x17,r5
	mov.l @(bank08.loc_8c08612c,pc),r3
	mov.b @(0x02,r14),r0 
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2) 
	mov.l @(bank08.loc_8c086130,pc),r2
	jsr @r2
	mov r14,r4
	mov 0x5C,r0
	fldi0 fr4
	fmov.s fr4,@(r0,r14) 
	mov 0x60,r0
	fmov.s fr4,@(r0,r14) 
	mov 0x68,r0
	fmov.s fr4,@(r0,r14) 
	mov 0x6C,r0
	fmov.s fr4,@(r0,r14) 
	mova @(loc_8C086134,pc),r0 
	fmov.s @r0,fr3
	mov 0x5C,r0
	fmov.s fr3,@(r0,r14) 
	mova @(loc_8C086138,pc),r0 
	fmov.s @r0,fr3
	mov 0x5C,r0
	fmov.s fr3,@(r0,r14) 
	mov.w @(loc_8C08611A,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c086080
	mov 0x5C,r0
	fmov.s @(r0,r14),fr3
	fneg fr3
	fmov.s fr3,@(r0,r14) 

loc_8c086080:
	mov.w @(loc_8C08611C,pc),r0
	mov 0x02,r3
	mov 0x03,r2
	mov.b r3,@(r0,r13) 
	mov.w @(loc_8C08611E,pc),r0
	mov.l r2,@(r0,r13) 
	mov 0x18,r0
	mov.w r0,@(0x1C,r14) 
	lds.l @r15+,pr 
	mov.l @r15+,r8
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

loc_8C08609A:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	mov.b @(0x05,r13),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf/s loc_8C0860B8
	mov 0x02,r11 ; r11 set to 0x02
	bra loc_8C086214
	nop

loc_8C0860B8:
	mov.w @(loc_8C086120,pc),r0 ; r0 set to 0x411
	mov.b @(r0,r13),r2
	tst r2,r2
	bt loc_8C0860Dc
	mov r11,r0 ; r0 ??? bc r11 is ???	
	nop
	mov r13,r5
	mov.l @(loc_8C08613C,pc),r3 ; r3 set to 0x8C0D4E58
	mov r14,r4
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	mov 0x03,r6 ; r6 set to 0x03
	fmov.s @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0860DC:
	mov.w @(loc_8C086122,pc),r0 ; r0 set to 0x19e
	mov.b @(r0,r14),r2
	tst r2,r2
	bt/s loc_8C0861Ce
	mov 0x00,r12 ; r12 set to 0x00
	mov.w @(loc_8C086124,pc),r0 ; r0 set to 0x1B0
	mov.l @(r0,r14),r3
	mov.b @(0x03,r3),r0
	tst r0,r0
	bt loc_8C086140
	mov.w @(loc_8C086126,pc),r0 ; r0 set to 0x1A1
	mov 0x40,r2 ; r2 set to 0x40
	mov.l @(loc_8C08612C,pc),r3 ; r3 set to 0x8C2896B0
	mov.b r2,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1Ac
	mov.w r12,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19e
	mov.b r12,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r12,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2 ; r2 ??	
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	bra loc_8C0861Ce
	nop

;##############################################
loc_8c086118:
	#data 0x019c
loc_8c08611a:
	#data 0x0130
loc_8c08611c:
	#data 0x01F1
loc_8c08611e:
	#data 0x02C4
loc_8C086120:
	#data 0x0411
loc_8C086122:
	#data 0x019e
loc_8C086124:
	#data 0x01B0
loc_8C086126:
	#data 0x01A1
	#align4

loc_8c086128:
	#data 0x42700000
loc_8C08612C:
	#data 0x8C2896B0
loc_8C086130:
	#data bank03.loc_8c034e8c
loc_8c086134:
	#data 0xC0800000
loc_8c086138:
	#data 0xC1555555
loc_8C08613C:
	#data bank0d.loc_8c0d4E58

;----------------------------------------------
loc_8c086140:
	mov.w @(bank08.loc_8c08627c,pc),r0
	mov.l r12,@(r0,r13) 
	mov.w @(loc_8C08627E,pc),r0
	mov.b @(r0,r14),r0
	tst 0x11,r0 
	bf bank08.loc_8c086214
	mov.l @(bank08.loc_8c08628c,pc),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt bank08.loc_8c086214
	mov.b @(0x05,r14),r0 
	mov 0x01,r3
	fldi0 fr15
	mov 0x17,r5
	add 0x01,r0
	mov.b r0,@(0x05,r14) 
	mov 0x5C,r0
	fmov.s fr15,@(r0,r14) 
	mov 0x60,r0
	fmov.s fr15,@(r0,r14) 
	mov 0x68,r0
	fmov.s fr15,@(r0,r14) 
	mov 0x6C,r0
	fmov.s fr15,@(r0,r14) 
	mov 0x0C,r6
	mov.w @(loc_8C086280,pc),r0
	mov.l r3,@(r0,r13) 
	mov.l @(bank08.loc_8c086290,pc),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C086282,pc),r0
	mov.l @(r0,r14),r4
	add 0x49,r0
	mov.b r12,@(r0,r4) 
	mov.w @(loc_8C086284,pc),r0
	fmov.s @(r0,r13),fr3
	mov 0x38,r0
	fmov.s fr3,@(r0,r4) 
	mova @(loc_8C086294,pc),r0 
	fmov.s @r0,fr3
	mov.w @(loc_8C086286,pc),r0
	fmov.s fr3,@(r0,r14) 
	add 0x64,r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0861a8
	mov.w @(loc_8C086286,pc),r5
	add r14,r5
	fmov.s @r5,fr3
	fneg fr3
	fmov.s fr3,@r5

loc_8c0861a8:
	mov.w @(loc_8C086286,pc),r0
	fmov.s @(r0,r14),fr3
	mov 0x34,r0
	fmov.s @(r0,r14),fr2
	fsub fr3,fr2
	fmov.s fr2,@(r0,r4) 
	mov.w @(loc_8C086282,pc),r0
	mov.l @(r0,r14),r3
	mov.w @(loc_8C086288,pc),r0
	mov.l r3,@(r0,r14) 
	mov.w @(loc_8C08627E,pc),r0
	mov.b @(r0,r14),r0
	tst 0x11,r0 
	bt loc_8c0861c8
	mov.w @(loc_8C086286,pc),r0
	fmov.s fr15,@(r0,r14) 

loc_8c0861c8:
	mov 0x22,r0
	bra loc_8c0862a8
	mov.b r12,@(r0,r14) 

loc_8C0861CE:
	mov 0x5C,r1 ; r1 set to 0x5c
	mov.l @(loc_8C086298,pc),r3 ; r3 set to 0x8C03340c
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
	bf loc_8C086226
	mov.w @(loc_8C08627C,pc),r0 ; r0 set to 0x2Cc
	mov.l r12,@(r0,r13)

loc_8C086214:
	mov.l @(loc_8C08629C,pc),r3 ; r3 set to 0x8C0D4E58, r3 set to 0x8C0D4E58
	mov r13,r5
	mov 0x03,r6 ; r6 set to 0x03, r6 set to 0x03
	jsr @r3
	mov r14,r4
	mov r11,r0 ; r0 ??? bc r11 is ???	
	nop
	bra loc_8C0862A8
	mov.b r0,@(0x04,r14)

loc_8c086226:
	mov.w @(0x1C,r14),r0 
	add 0xFF,r0
	mov.w r0,@(0x1C,r14) 
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c08626a
	mov.w @(bank08.loc_8c08627c,pc),r0
	mov.l r12,@(r0,r13) 
	mov r11,r0
	nop 
	mov.b r0,@(0x05,r14) 
	mova @(loc_8C0862A0,pc),r0 
	fmov.s @r0,fr3
	mov 0x68,r0
	fmov.s fr3,@(r0,r14) 
	mov.w @(loc_8C08628A,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_8c086256
	mov 0x02,r6
	mov 0x68,r0
	fmov.s @(r0,r14),fr3
	fneg fr3
	fmov.s fr3,@(r0,r14) 

loc_8c086256:
	lds.l @r15+,pr
	mov.l @(bank08.loc_8c086290,pc),r3
	mov r14,r4
	mov r6,r5
	fmov.s @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c08626a:
	lds.l @r15+,pr
	mov.l @(bank08.loc_8c0862a4,pc),r2
	mov r14,r4
	fmov.s @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c08627c:
	#data 0x02CC
loc_8c08627e:
	#data 0x019E
loc_8c086280:
	#data 0x02D4
loc_8c086282:
	#data 0x01B0
loc_8c086284:
	#data 0x041C
loc_8c086286:
	#data 0x00CC
loc_8c086288:
	#data 0x00D0
loc_8C08628A:
	#data 0x0130
	#align4

loc_8c08628c:
	#data bank05.loc_8C05264C
loc_8c086290:
	#data bank03.loc_8c034e8c

loc_8c086294:
	#data 0x42d55555
loc_8c086298:
	#data bank03.loc_8c03340c
loc_8c08629c:
	#data bank0d.loc_8c0d4e58

loc_8C0862A0:
	#data 0x3F200000
loc_8c0862a4:
	#data bank04.loc_8c045748

loc_8C0862A8:
	lds.l @r15+,pr
	fmov.s @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C0862B6:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r5,r12
	sts.l pr,@-r15
	mov.b @(0x05,r12),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf/s loc_8C0862E0
	mov 0x00,r13 ; r13 set to 0x00
	mov.l @(loc_8C0863D4,pc),r2 ; r2 set to 0x8C0D4E58
	mov r12,r5
	mov 0x03,r6 ; r6 set to 0x03
	jsr @r2
	mov r14,r4
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0863C8,pc),r0 ; r0 set to 0x12c
	bra loc_8C0863Be
	mov.b r13,@(r0,r14)

loc_8C0862E0:
	mov.l @(loc_8C0863D8,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0862Fc
	mov.l @(loc_8C0863D4,pc),r3 ; r3 set to 0x8C0D4E58
	mov r12,r5
	mov 0x02,r6 ; r6 set to 0x02
	jsr @r3
	mov r14,r4
	mov 0x02,r0 ; r0 set to 0x02
	bra loc_8C0863Be
	mov.b r0,@(0x04,r14)

loc_8c0862fc:
	mov.w @(loc_8C0863CA,pc),r0
	mov.l @(r0,r14),r5
	mov 0x22,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c086322
	mov.w @(loc_8C0863CC,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c086322
	mov.b @(r0,r14),r0
	tst 0x11,r0 
	bt loc_8c08631e
	mov.w @(loc_8C0863CE,pc),r0
	mov 0x08,r4
	mov.b r4,@(r0,r14) 
	mov.b r4,@(r0,r5) 

loc_8c08631e:
	mov 0x22,r0
	mov.b r13,@(r0,r14) 

loc_8c086322:
	mov.w @(loc_8C0863D0,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c086358
	mov.b @(r0,r14),r3
	add 0x56,r0
	mov.b r3,@(r0,r14) 
	add 0x0B,r0
	mov.w r13,@(r0,r14) 
	add 0xF2,r0
	mov.b r13,@(r0,r14) 
	add 0x26,r0
	mov.l @(loc_8C0863DC,pc),r3
	mov.l r13,@(r0,r14) 
	mov.b @(0x02,r14),r0 
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2) 
	mov 0x01,r2
	mov.w @(loc_8C0863D0,pc),r0
	mov.b r13,@(r0,r14) 
	mov 0x22,r0
	mov.b r2,@(r0,r14) 

loc_8c086358:
	mov.w @(loc_8C0863D2,pc),r0
	mov.l @(bank08.loc_8c0863e0,pc),r12
	mov.b @(r0,r14),r0
	cmp/eq 0x02,r0 
	bf loc_8c08637c
	mov.w @(loc_8C0863D2,pc),r0
	mov 0x04,r5
	mov.l @(bank08.loc_8c0863e4,pc),r3
	mov.b r13,@(r0,r14) 
	jsr @r3
	mov r14,r4
	mov 0x07,r5
	jsr @r12
	mov r14,r4
	mov.l @(bank08.loc_8c0863e8,pc),r2
	mov 0x24,r5
	jsr @r2
	mov r14,r4

loc_8c08637c:
	mov.w @(loc_8C0863D2,pc),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x0F,r0 
	bf loc_8c08639e
	mov.w @(loc_8C0863D2,pc),r0
	mov 0x05,r5
	mov.l @(bank08.loc_8c0863e4,pc),r3
	mov.b r13,@(r0,r14) 
	jsr @r3
	mov r14,r4
	mov 0x07,r5
	jsr @r12
	mov r14,r4
	mov.l @(bank08.loc_8c0863e8,pc),r2
	mov 0x24,r5
	jsr @r2
	mov r14,r4

loc_8c08639e:
	mov.w @(loc_8C0863D2,pc),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x03,r0 
	bf loc_8c0863b0
	mov.w @(loc_8C0863D2,pc),r0
	mov 0x06,r5
	mov.b r13,@(r0,r14) 
	jsr @r12
	mov r14,r4

loc_8c0863b0:
	lds.l @r15+,pr 
	mov.l @(bank08.loc_8c0863ec,pc),r3
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0863BE:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C0863C8:
	#data 0x012c
loc_8c0863ca:
	#data 0x00D0
loc_8c0863cc:
	#data 0x019e
loc_8c0863ce:
	#data 0x01A0
loc_8c0863d0:
	#data 0x014b
loc_8c0863d2:
	#data 0x0141
	#align4

loc_8C0863D4:
	#data bank0d.loc_8c0d4E58
loc_8C0863D8:
	#data bank03.loc_8c034dee
loc_8c0863dc:
	#data 0x8C2896B0
loc_8C0863E0:
	#data bank0d.loc_8c0d586c
loc_8C0863E4:
	#data loc_8C0864B8
loc_8C0863E8:
	#data bank04.loc_8c042008
loc_8C0863EC:
	#data bank04.loc_8c045748

loc_8C0863F0:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x5C,r1
	mov.l r13,@-r15
	mov 0x34,r0
	mov r5,r13
	add r14,r1
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
	mov.l @(0x74,PC),r3
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c086456
	mov.l @(0x6C,PC),r3
	mov r13,r5
	mov 0x03,r6
	jsr @r3
	mov r14,r4
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r4
	mov.w @(0x4A,PC),r0
	mov.l r4,@(r0,r13)
	add 0x04,r0
	mov.l r4,@(r0,r13)

loc_8C086456:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C08645E:
	mov.w @(loc_8C08649E,pc),r0 ; r0 set to 0x1F1
	mov 0x02,r3 ; r3 set to 0x02
	mov.l r4,@-r15
	mov 0x03,r2 ; r2 set to 0x03
	mov.b r3,@(r0,r5)
	mov.w @(loc_8C0864A0,pc),r0 ; r0 set to 0x2C4
	mov.l @(loc_8C0864B0,pc),r1 ; r1 set to 0x8C1542C8
	mov.l r2,@(r0,r5)
	mov.l @r15,r3 ; r3 ??? bc r15 is ???	
	mov.l @r15,r4
	mov.b @(0x05,r3),r0
	extu.b r0,r0 ; r0 set to 0xC4
	shll2 r0 ; r0 set to 0x310
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C08647E:
	mov.b @(0x04,r4),r0
	mov 0x00,r6 ; r6 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0864A2,pc),r0 ; r0 set to 0x12c
	mov.b r6,@(r0,r4)
	mov.w @(loc_8C0864A4,pc),r0 ; r0 set to 0x2D0
	rts
	mov.l r6,@(r0,r5)

;-------------------------------------------------------------------------------
loc_8C086490:
	mov.w @(loc_8C08649E,pc),r0 ; r0 set to 0x1F1
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r5)
	mov.l @(loc_8C0864B4,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C08649c:
	#data 0x02Cc
loc_8C08649E:
	#data 0x01F1
loc_8C0864A0:
	#data 0x02C4
loc_8C0864A2:
	#data 0x012c
loc_8C0864A4:
	#data 0x02D0
	#align4

loc_8C0864A8:
	#data bank03.loc_8c034dee
loc_8C0864AC:
	#data bank0d.loc_8c0d4E58
loc_8C0864B0:
	#data bank15.loc_8c1542C8
loc_8C0864B4:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0864B8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r0
	nop 
	mov.l @(0xAC,PC),r3
	mov 0x03,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0864fe
	mov r0,r14
	mov.l @(0xA0,PC),r3
	mov 0x26,r0
	mov 0x23,r1
	mov.l r3,@(0x10,r14)
	add r14,r1
	mov.w @(0x8C,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r14)
	mov.w r3,@(r0,r14)
	mov.w @(0x86,PC),r0
	mov.l @(0x18,r14),r2
	mov.w @(r0,r2),r3
	mov.w r3,@(r0,r14)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov.l @r15,r5
	bsr loc_8c086680
	mov r14,r4
	mov r14,r0
	nop 

loc_8C0864FE:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C086506:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C08657C,pc),r1 ; r1 set to 0x8C1542D4
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C08651A:
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r4),r3
	mov 0x06,r2 ; r2 set to 0x06
	extu.b r3,r3
	cmp/ge r2,r3
	bf loc_8C08652c
	mov.l @(loc_8C086580,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8c08652c:
	mov.b @(r0,r4),r3
	mov.l @(bank08.loc_8c086584,pc),r0
	extu.b r3,r3
	shll2 r3
	fmov.s @(r0,r3),fr4
	mov.w @(loc_8C086572,pc),r0
	mov.w @(r0,r4),r2
	tst r2,r2
	bf/s loc_8c086542
	mov 0x34,r0
	fneg fr4

loc_8c086542:
	fmov.s @(r0,r5),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4) 
	mov 0x23,r0
	mov.b @(r0,r4),r3
	mov.l @(bank08.loc_8c086588,pc),r0
	extu.b r3,r3
	shll2 r3
	fmov.s @(r0,r3),fr3
	mov 0x38,r0
	fmov.s @(r0,r5),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4) 
	mov 0x23,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0 
	bf loc_8c08656c
	mov.l @(loc_8C08658C,pc),r2
	mov 0x48,r0
	mov.l r2,@(r0,r4) 

loc_8c08656c:
	rts
	nop

;-------------------------------------------------------------------------------
loc_8C086570:
	#data 0x1705
loc_8C086572:
	#data 0x0130
	#align4

loc_8c086574:
	#data bank04.loc_8c044f12
loc_8c086578:
	#data bank08.loc_8c086506
loc_8c08657c:
	#data bank15.loc_8c1542d4
loc_8c086580:
	#data bank04.loc_8c0450c0
loc_8c086584:
	#data bank15.loc_8c1542e4
loc_8c086588:
	#data bank15.loc_8c1542fc
loc_8C08658C:
	#data 0x0000E4FB

;==============================================
loc_8c086590:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0x136,PC),r1
	sts.l pr,@-r15
	mov.w @(0x134,PC),r0
	add r14,r1
	mov.w @(0x12E,PC),r2
	mov.l @(0x13C,PC),r3
	jsr @r3
	add r13,r2
	mov.w @(0x12A,PC),r0
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
	mov.w @(0x10E,PC),r0
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
	mov r13,r5
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xE2,PC),r0
	mov.b r4,@(r0,r14)
	bsr loc_8c08651a
	mov r14,r4
	mov 0x23,r0
	mov.l @(0xF0,PC),r3
	mov.b @(r0,r14),r6
	mov 0x17,r5
	mov.l @(0xE4,PC),r0
	extu.b r6,r6
	mov.b @(r0,r6),r6
	jsr @r3
	mov r14,r4
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0xFF,r3
	mov.b r2,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov 0x23,r0
	mov.b @(r0,r14),r2
	mov 0x04,r3
	extu.b r2,r2
	cmp/ge r3,r2
	bf.s loc_8c08662c
	mov r13,r5
	mova @(0xC8,PC),r0
	fmov @r0,fr3
	mov.w @(0xAE,PC),r0
	fmov fr3,@(r0,r14)

loc_8c08662c:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C086634:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x01,r14),r0
	mov r0,r3
	mov.b @(0x01,r5),r0
	cmp/eq r0,r3
	bt loc_8C08664c
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C08667a
	mov.l @r15+,r14

loc_8c08664c:
	bsr bank08.loc_8c08651a
	mov r14,r4
	mov.l @(bank08.loc_8c0866f4,pc),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c086666
	mov 0x02,r0
	mov.b r0,@(0x04,r14) 
	mov 0x00,r3
	mov.w @(bank08.loc_8c0866d6,pc),r0
	mov.b r3,@(r0,r14) 

loc_8c086666:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8C08666C:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0866D6,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8C08667A:
	mov.l @(loc_8C0866F8,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;==============================================
loc_8C086680:
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x01,r6
	mov.l @(0x74,PC),r3
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov r6,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0866b6
	mov r0,r4
	mov.l @(0x64,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.w @(0x3A,PC),r3
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)
	mov.w @(0x34,PC),r0
	mov.l @(0x18,r4),r2
	mov.w @(r0,r2),r3
	mov.w r3,@(r0,r4)
	mov 0x23,r0
	mov.l @r15,r2
	mov.b @(r0,r2),r3
	mov.b r3,@(r0,r4)

loc_8C0866B6:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;-------------------------------------------------------------------------------
loc_8C0866BE:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C086704,pc),r1 ; r1 set to 0x8C15431c
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0866D2:
	#data 0x00dc
loc_8C0866D4:
	#data 0x00c0
loc_8C0866D6:
	#data 0x012c
loc_8C0866D8:
	#data 0x01a3
loc_8C0866Da:
	#data 0x0108
loc_8C0866Dc:
	#data 0x1705
loc_8C0866De:
	#data 0x0130
	#align4

loc_8C0866E0:
	#data bank12.loc_8c129560
loc_8C0866E4:
	#data bank12.loc_8c1294C8
loc_8C0866E8:
	#data bank15.loc_8c154314
loc_8C0866EC:
	#data bank03.loc_8c034e8c
loc_8C0866F0:
	#data 0x3ECCCCCd
loc_8C0866F4:
	#data bank03.loc_8c034dee
loc_8C0866F8:
	#data bank04.loc_8c0450C0
loc_8C0866FC:
	#data bank04.loc_8c044F12
loc_8C086700:
	#data loc_8C0866Be
loc_8C086704:
	#data bank15.loc_8c15431c

;==============================================
loc_8C086708:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov 0x00,r12 ; r12 set to 0x00
	mov.w @(loc_8C086816,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C086816,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C08682C,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C086818,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???	
	mov.w @(loc_8C08681A,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C08681C,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C086830,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov r13,r5
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C08681A,pc),r0 ; r0 set to 0x12c
	mov.b r12,@(r0,r14)
	bsr loc_8C08651a
	mov r14,r4
	mov.l @(loc_8C086834,pc),r2 ; r2 set to 0x8C034E8c
	mov 0x17,r5 ; r5 set to 0x17
	mov 0x14,r6 ; r6 set to 0x14
	jsr @r2
	mov r14,r4
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r3 ; r3 ??? bc r13 is ???	
	mov 0xFF,r2 ; r2 set to 0xFFFFFFFf
	mov 0x42,r4 ; r4 set to 0x42
	mov.b r3,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C08681E,pc),r0 ; r0 set to 0x19c
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x19d
	mov.b r4,@(r0,r14)
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt loc_8C0867Aa
	cmp/eq 0x04,r0
	bt loc_8C0867B2
	cmp/eq 0x05,r0
	bt loc_8C0867B8
	bra loc_8C0867C0
	nop

loc_8C0867AA:
	mov.w @(loc_8C086820,pc),r0 ; r0 set to 0x1A1
	mov 0x3F,r3 ; r3 set to 0x3f
	bra loc_8C0867Ca
	mov.b r3,@(r0,r14)

loc_8C0867B2:
	mov.w @(loc_8C086820,pc),r0 ; r0 set to 0x1A1
	bra loc_8C0867Ca
	mov.b r4,@(r0,r14)

loc_8C0867B8:
	mov.w @(loc_8C086820,pc),r0 ; r0 set to 0x1A1
	mov 0x43,r2 ; r2 set to 0x43
	bra loc_8C0867Ca
	mov.b r2,@(r0,r14)

loc_8c0867c0:
	mov 0x23,r0
	mov.b @(r0,r14),r3
	mov.w @(bank08.loc_8c086820,pc),r0
	add 0x46,r3
	mov.b r3,@(r0,r14) 

loc_8C0867CA:
	mov.w @(loc_8C086822,pc),r0 ; r0 set to 0x1Ac
	mov.l @(loc_8C086838,pc),r3 ; r3 set to 0x8C2896B0
	mov.w r12,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19e
	mov.b r12,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r12,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(loc_8C086824,pc),r0 ; r0 set to 0x19f
	mov.b r12,@(r0,r14)
	mov r12,r0 ; r0 ??? bc r12 is ???	
	nop
	mov.b r0,@(0x05,r14)
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8C08686c
	mov.w @(loc_8C086826,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???	
	tst r3,r3
	bt loc_8C086844
	mov.l @(loc_8C08683C,pc),r3 ; r3 set to 0x8C11E2E0
	mov.w @(loc_8C086828,pc),r4 ; r4 set to 0x1B06
	jsr @r3
	nop
	mova @(loc_8C086840,pc),r0  ; r0 set to 0x8C086840
	fmov fr0,fr3 ; r3 ??	
	fmov.s @r0,fr2
	bra loc_8C086856
	fmul fr2,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C086816:
	#data 0x00Dc
loc_8C086818:
	#data 0x00C0
loc_8C08681A:
	#data 0x012c
loc_8C08681C:
	#data 0x01A3
loc_8C08681E:
	#data 0x019c
loc_8C086820:
	#data 0x01A1
loc_8C086822:
	#data 0x01Ac
loc_8C086824:
	#data 0x019f
loc_8C086826:
	#data 0x0130
loc_8C086828:
	#data 0x1B06
	#align4

loc_8C08682C:
	#data bank12.loc_8c129560
loc_8C086830:
	#data bank12.loc_8c1294C8
loc_8C086834:
	#data bank03.loc_8c034e8c
loc_8C086838:
	#data 0x8C2896B0
loc_8C08683C:
	#data bank11.loc_8c11E2E0
loc_8C086840:
	#data 0x41BAAAAb

;==============================================
loc_8C086844:
	mov.l @(loc_8C086908,pc),r3 ; r3 set to 0x8C11E2E0
	mov.w @(loc_8C086902,pc),r4 ; r4 set to 0x1B06
	jsr @r3
	nop
	mova @(loc_8C08690C,pc),r0  ; r0 init to 0x8C08690c
	fmov.s @r0,fr3 ; r3 ??	
	fmul fr3,fr0 ; r0 ??? bc r3 is ???	
	fmov fr0,fr3
	fneg fr3

loc_8C086856:
	mov.l @(loc_8C086910,pc),r3 ; r3 set to 0x8C11E860, r3 set to 0x8C11E860
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	mov.w @(loc_8C086902,pc),r4 ; r4 set to 0x1B06, r4 set to 0x1B06
	jsr @r3
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C08690C,pc),r0  ; r0 set to 0x8C08690C, r0 set to 0x8C08690c
	fmov.s @r0,fr3 ; r3 ??, r3 ??	
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmul fr3,fr0 ; r0 ??? bc r3 is ???, r0 ??? bc r3 is ???	
	bra loc_8C086882
	fmov.s fr0,@(r0,r14)

loc_8C08686C:
	mov.w @(loc_8C086904,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8C08687a
	mova @(loc_8C08690C,pc),r0  ; r0 set to 0x8C08690c
	bra loc_8C08687e
	fmov.s @r0,fr3

loc_8c08687a:
	mova @(loc_8C086914,pc),r0 
	fmov.s @r0,fr3

loc_8c08687e:
	mov 0x5C,r0
	fmov.s fr3,@(r0,r14) 

loc_8c086882:
	mov r13,r5
	mov 0x1E,r0
	mov.w r0,@(0x1C,r14) 
	mov r14,r4
	lds.l @r15+,pr 
	mov.l @r15+,r12
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c086892:
	mov.w @(loc_8C086906,pc),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0868a6
	mov.b @(0x05,r14),r0 
	add 0x01,r0
	mov.b r0,@(0x05,r14) 

loc_8c0868a6:
	mov.w @(0x1C,r14),r0 
	tst r0,r0
	bt loc_8c0868b4
	mov.w @(0x1C,r14),r0 
	add 0xFF,r0
	bra loc_8c0868b8
	mov.w r0,@(0x1C,r14)

loc_8c0868b4:
	mov 0x02,r0
	mov.b r0,@(0x04,r14) 

loc_8c0868b8:
	mov.b @(0x05,r14),r0 
	tst r0,r0
	bf loc_8c0868c4
	mov.l @(bank08.loc_8c086918,pc),r3
	jsr @r3
	mov r14,r4

loc_8c0868c4:
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
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8c086902:
	#data 0x1B06
loc_8c086904:
	#data 0x0130
loc_8C086906:
	#data 0x019F
	#align4

loc_8c086908:
	#data bank11.loc_8c11e2e0
loc_8c08690c:
	#data 0x41baaaab
loc_8c086910:
	#data bank11.loc_8c11e860
loc_8C086914:
	#data 0xC1BAAAAB
loc_8c086918:
	#data bank04.loc_8c045748

;==============================================
loc_8c08691c:
	add 0xFC,r15
	mov.l @(0x130,PC),r1
	mov.b r5,@r15
	mov.b @r15,r0
	mov.b @r15,r5
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r0
	jmp @r0
	add 0x04,r15

;==============================================
loc_8c086930:
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
	bt.s loc_8c08696a
	mov r0,r4
	mov.l @(0x108,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @(0x8,r15),r2
	mov.l r2,@(0x18,r4)
	mov 0x00,r2
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov 0x23,r0
	mov.b r2,@(r0,r4)

loc_8c08696a:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

loc_8C086972:
	mov r4,r3
	mov.l @(loc_8C086A5C,pc),r1 ; r1 set to 0x8C154330
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C086984:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(loc_8C086A60,pc),r3 ; r3 set to 0x8C13AEEc
	mov.w @(loc_8C086A44,pc),r1 ; r1 set to 0xDc
	mov.w @(loc_8C086A44,pc),r2 ; r2 set to 0xDc
	mov.l @(0x18,r14),r13
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.l r3,@r15
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C086A64,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C086A46,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???	
	mov.w @(loc_8C086A48,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C086A4A,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C086A68,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov 0x09,r3 ; r3 set to 0x09
	mov.l @(loc_8C086A6C,pc),r2 ; r2 set to 0x8C03319e
	jsr @r2
	mov.b r3,@(r0,r14)
	mov r0,r4 ; r4 set to 0x24
	add 0x80,r4 ; r4 set to 0xFFFFFFA4
	mov r4,r3 ; r3 set to 0xFFFFFFA4
	shll2 r4 ; r4 set to 0xFFFFFE90
	add r3,r4 ; r4 set to 0xFFFFFE34
	mov.w @(loc_8C086A4C,pc),r0 ; r0 set to 0x20c
	shll2 r4 ; r4 set to 0xFFFFF8D0
	shll2 r4 ; r4 set to 0xFFFFE340
	shll2 r4 ; r4 set to 0xFFFF8D00
	mov 0xF8,r3 ; r3 set to 0xFFFFFFF8
	shll r4 ; r4 set to 0xFFFF1A00
	shad r3, r4 ; r4 ??	
	mov.l @(r0,r13),r3 ; r3 ??? bc r13 is ???	
	lds r4,fpul
	mov 0x34,r0 ; r0 set to 0x34
	float fpul,fr3
	fmov fr3,fr4
	fmov.s @(r0,r3),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C086A4C,pc),r0 ; r0 set to 0x20c
	mov.l @(r0,r13),r3
	mova @(loc_8C086A70,pc),r0  ; r0 set to 0x8C086A70
	fmov.s @r0,fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r3),fr2 ; r2 ??? bc r3 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C086A4C,pc),r0 ; r0 set to 0x20c
	mov.l @(r0,r13),r3
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r3),fr2
	mov.l @(loc_8C086A6C,pc),r2 ; r2 set to 0x8C03319e
	mov.l @(loc_8C086A74,pc),r3 ; r3 set to 0xB000
	fmov.s fr2,@(r0,r14)
	mov 0x48,r0 ; r0 set to 0x48
	jsr @r2
	mov.l r3,@(r0,r14)
	cmp/pz r0
	bf/s loc_8C086A78
	mov r0,r4 ; r4 set to 0x48
	bra loc_8C086A82
	and 0x03,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C086A44:
	#data 0x00Dc
loc_8C086A46:
	#data 0x00C0
loc_8C086A48:
	#data 0x012c
loc_8C086A4A:
	#data 0x01A3
loc_8C086A4C:
	#data 0x020c
	#align4

loc_8C086A50:
	#data bank15.loc_8c15432c
loc_8C086A54:
	#data bank04.loc_8c044F12
loc_8C086A58:
	#data loc_8C086972
loc_8C086A5C:
	#data bank15.loc_8c154330
loc_8C086A60:
	#data bank13.loc_8c13AEEc
loc_8C086A64:
	#data bank12.loc_8c129560
loc_8C086A68:
	#data bank12.loc_8c1294C8
loc_8C086A6C:
	#data bank03.loc_8c03319e
loc_8C086A70:
	#data 0x43960000
loc_8C086A74:
	#data 0x0000B000

;----------------------------------------------
loc_8C086A78:
	not r0,r0
	add 0x01,r0
	and 0x03,r0
	not r0,r0
	add 0x01,r0

loc_8C086A82:
	mov.l @r15,r3
	mov r0,r5
	shll2 r5
	add r3,r5
	fmov.s @r5,fr3
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	mov 0x42,r4 ; r4 set to 0x42, r4 set to 0x42
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
	fmov.s @r5,fr3
	mov 0x31,r3 ; r3 set to 0x31, r3 set to 0x31
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C086BA6,pc),r0 ; r0 set to 0x19C, r0 set to 0x19c
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x19D, r0 set to 0x19d
	mov.b r4,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x1A1, r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC, r0 set to 0x1Ac
	mov 0x00,r4 ; r4 set to 0x00, r4 set to 0x00
	mov.l @(loc_8C086BB0,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19e
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4
	shll r0 ; r0 set to 0x188, r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	mov.l @(loc_8C086BB4,pc),r2 ; r2 set to 0x8C034E8C, r2 set to 0x8C034E8c
	mov 0x01,r6 ; r6 set to 0x01, r6 set to 0x01
	jsr @r2
	mov r14,r4 ; r4 ??? bc r14 is ???, r4 ??? bc r14 is ???	
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C086ADA:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x05,r14),r0
	mov.l @(loc_8C086BB8,pc),r1 ; r1 set to 0x8C154340, r1 set to 0x8C154340, r1 set to 0x8C154340
	extu.b r0,r0 ; r0 set to 0x88, r0 set to 0x88
	mov.l @(0x18,r14),r5 ; r5 ??? bc r14 is ???, r5 ??? bc r14 is ???	
	shll2 r0 ; r0 set to 0x220, r0 set to 0x220
	mov.l @(r0,r1),r3 ; r3 ??, r3 ??	
	jmp @r3
	mov.l @r15+,r14

loc_8C086AEE:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C086BBC,pc),r3 ; r3 set to 0x8C034DEe
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C086B5c
	mov.b @(0x05,r14),r0
	mov 0x17,r5 ; r5 set to 0x17
	mov.l @(loc_8C086BC0,pc),r1 ; r1 set to 0x42D55555
	mov 0x02,r6 ; r6 set to 0x02
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C086BA8,pc),r0 ; r0 set to 0x130
	lds r1,fpul
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???	
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2
	fsts fpul,fr3
	tst r3,r3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C086BAA,pc),r0 ; r0 set to 0x41c
	mov.l @r15,r3
	fmov.s @(r0,r3),fr3
	mov 0x38,r0 ; r0 set to 0x38
	mov 0x00,r3 ; r3 set to 0x00
	fmov.s fr3,@(r0,r14)
	mov 0x48,r0 ; r0 set to 0x48
	mov.l r3,@(r0,r14)
	mov.l @(loc_8C086BB4,pc),r3 ; r3 set to 0x8C034E8c
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C086BC4,pc),r1 ; r1 set to 0x3E800000
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r14),fr2
	lds r1,fpul
	mov.l @(loc_8C086BC8,pc),r1 ; r1 set to 0x3EC00000
	fsts fpul,fr3
	fmul fr3,fr2
	lds r1,fpul
	fmov.s fr2,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r14),fr1 ; r1 ??? bc r14 is ???	
	fsts fpul,fr2
	fmul fr2,fr1
	fmov.s fr1,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C086B5C:
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C086BCC,pc),r3 ; r3 set to 0x8C045748
	jmp @r3
	mov.l @r15+,r14

;unused rts
loc_8c086b68:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C086B70:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x44,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c086b8c
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x20,PC),r0
	mov.b r3,@(r0,r14)

loc_8C086B8C:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C086B92:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C086BAC,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;-------------------------------------------------------------------------------
loc_8C086BA0:
	mov.l @(loc_8C086BD0,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C086BA6:
	#data 0x019c
loc_8C086BA8:
	#data 0x0130
loc_8C086BAA:
	#data 0x041c
loc_8C086BAC:
	#data 0x012c
	#align4

loc_8C086BB0:
	#data 0x8C2896B0
loc_8C086BB4:
	#data bank03.loc_8c034e8c
loc_8C086BB8:
	#data bank15.loc_8c154340
loc_8C086BBC:
	#data bank03.loc_8c034dee
loc_8C086BC0:
	#data 0x42D55555
loc_8C086BC4:
	#data 0x3E800000
loc_8C086BC8:
	#data 0x3EC00000
loc_8C086BCC:
	#data bank04.loc_8c045748
loc_8C086BD0:
	#data bank04.loc_8c0450C0

;==============================================
loc_8c086bd4:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x118,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x01,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c086bfa
	mov r0,r4
	mov.l @(0x108,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.b r3,@(r0,r4)

loc_8c086bfa:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;-------------------------------------------------------------------------------
loc_8C086C02:
	mov r4,r3
	mov.l @(loc_8C086CFC,pc),r1 ; r1 set to 0x8C154360
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C086C14:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C086CE8,pc),r3 ; r3 set to 0x1801
	mov.l r13,@-r15
	mov.w @(loc_8C086CEA,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C086CEA,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov 0x26,r0 ; r0 set to 0x26
	mov.w r3,@(r0,r14)
	mov.w @(loc_8C086CEC,pc),r0 ; r0 set to 0xC0
	mov.l @(loc_8C086D00,pc),r3 ; r3 set to 0x8C129560
	mov.l @(0x18,r14),r4
	jsr @r3
	add r4,r2 ; r2 ??? bc r4 is ???	
	mov.w @(loc_8C086CEE,pc),r0 ; r0 set to 0x12c
	mov 0x01,r7 ; r7 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r7,@(r0,r14)
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
	mov.w @(loc_8C086CF0,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C086D04,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r4),r2
	mov 0x00,r5 ; r5 set to 0x00
	mov 0x10,r6 ; r6 set to 0x10
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C086CEE,pc),r0 ; r0 set to 0x12c
	mov.b r7,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x130
	mov.w r5,@(r0,r14)
	add 0x0C,r0 ; r0 set to 0x13c
	mov.b r6,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13d
	mov.b r6,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13e
	mov.b r6,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13f
	mov.b r6,@(r0,r14)
	mov r7,r0 ; r0 set to 0x01
	nop
	mov.w r0,@(0x1C,r14)
	mov 0x64,r0 ; r0 set to 0x64
	mov.w r0,@(0x1E,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r13
	mov 0x22,r0 ; r0 set to 0x22
	mov.l @(loc_8C086D08,pc),r3 ; r3 set to 0x8C154348
	mov r14,r1
	extu.b r13,r13
	shll2 r13
	shll r13
	add r3,r13
	mov.l @(loc_8C086D04,pc),r3 ; r3 set to 0x8C1294C8
	mov.b @r13,r2
	add 0x34,r1
	mov.b r2,@(r0,r14)
	mov r4,r2
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mova @(loc_8C086D0C,pc),r0  ; r0 set to 0x8C086D0c
	fmov.s @r0,fr4
	mov.w @(loc_8C086CF2,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r4),r3 ; r3 ??? bc r4 is ???	
	tst r3,r3
	bf loc_8C086D10
	mov r14,r2
	mov 0x34,r0 ; r0 set to 0x34
	add r0,r2
	fmov fr4,fr0 ; r0 ??? bc r4 is ???	
	mov.l r2,@-r15
	mov.w @(0x02,r13),r0
	mov r0,r3
	lds r3,fpul
	mov.l @r15+,r3
	float fpul,fr3
	fmov.s @r3,fr2
	fmac fr0,fr3,fr2
	bra loc_8C086D36
	fmov.s fr2,@r3

;##############################################
loc_8C086CE8:
	#data 0x1801
loc_8C086CEA:
	#data 0x00Dc
loc_8C086CEC:
	#data 0x00C0
loc_8C086CEE:
	#data 0x012c
loc_8C086CF0:
	#data 0x01A3
loc_8C086CF2:
	#data 0x0130
	#align4

loc_8C086CF4:
	#data bank04.loc_8c044F12
loc_8C086CF8:
	#data loc_8C086C02
loc_8C086CFC:
	#data bank15.loc_8c154360
loc_8C086D00:
	#data bank12.loc_8c129560
loc_8C086D04:
	#data bank12.loc_8c1294C8
loc_8C086D08:
	#data bank15.loc_8c154348
loc_8C086D0C:
	#data 0x3FD55555

;----------------------------------------------
loc_8C086D10:
	mov.w @(0x02,r13),r0
	mov 0x34,r2 ; r2 set to 0x34
	add r14,r2 ; r2 ??? bc r14 is ???	
	mov r0,r3
	lds r3,fpul
	fmov.s @r2,fr2
	mov 0x22,r0 ; r0 set to 0x22
	mov 0x22,r1 ; r1 set to 0x22
	float fpul,fr3
	add r14,r1 ; r1 ??? bc r14 is ???	
	fmul fr4,fr3
	fneg fr3
	fadd fr3,fr2
	fmov.s fr2,@r2
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
	neg r0,r0
	add 0x20,r0
	and 0x1F,r0
	mov.b r0,@r1

loc_8C086D36:
	mov r14,r2
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	add r0,r2
	fldi0 fr4
	mov 0x42,r4 ; r4 set to 0x42, r4 set to 0x42
	mov.l r2,@-r15
	mov.w @(0x04,r13),r0
	mov.w @(loc_8C086E5A,pc),r1 ; r1 set to 0x1A1, r1 set to 0x1A1
	mov r0,r3 ; r3 set to 0x38, r3 set to 0x38
	mova @(loc_8C086E64,pc),r0  ; r0 set to 0x8C086E64, r0 set to 0x8C086E64
	fmov.s @r0,fr0 ; r0 ??, r0 ??	
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	lds r3,fpul
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
	mov.l @r15+,r3 ; r3 ??? bc r15 is ???, r3 ??? bc r15 is ???	
	float fpul,fr3
	fmov.s @r3,fr2
	fmac fr0,fr3,fr2
	fmov.s fr2,@r3
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mov.w @(loc_8C086E58,pc),r0 ; r0 set to 0x19C, r0 set to 0x19c
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x19D, r0 set to 0x19d
	mov.b r4,@(r0,r14)
	mov.b @(0x07,r13),r0
	mov.b r0,@r1
	mov.w @(loc_8C086E5C,pc),r0 ; r0 set to 0x1AC, r0 set to 0x1Ac
	mov.w r5,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19e
	mov.b r5,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4
	mov.l @(loc_8C086E68,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
	mov.l r5,@(r0,r14)
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4
	shll r0 ; r0 set to 0x188, r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.b @(0x06,r13),r0
	mov.l @(loc_8C086E6C,pc),r2 ; r2 set to 0x8C034E8C, r2 set to 0x8C034E8c
	mov r0,r6 ; r6 set to 0x188, r6 set to 0x188
	jsr @r2
	mov r14,r4 ; r4 ??? bc r14 is ???, r4 ??? bc r14 is ???	
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C086DA0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x18,r14),r5 ; r5 ??? bc r14 is ???, r5 ??? bc r14 is ???	
	mov 0x02,r3 ; r3 set to 0x02, r3 set to 0x02, r3 set to 0x02
	mov.b @(0x04,r5),r0
	extu.b r0,r0 ; r0 set to 0x88, r0 set to 0x88
	cmp/ge r3,r0
	bf loc_8C086DC0
	mov.b @(0x04,r14),r0
	mov 0x00,r2 ; r2 set to 0x00, r2 set to 0x00, r2 set to 0x00
	add 0x01,r0 ; r0 set to 0x89, r0 set to 0x89
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C086E5E,pc),r0 ; r0 set to 0x12C, r0 set to 0x12C, r0 set to 0x12c
	mov.b r2,@(r0,r14)
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C086DC0:
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C086E70,pc),r1 ; r1 set to 0x8C154370
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C086DD0:
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C086DD4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x82,PC),r0
	mov r4,r14
	mov.l r5,@r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c086dee
	mov.w @(0x78,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c086e00

loc_8C086DEE:
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x00,r0
	mov.b r0,@(0x6,r14)
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C086E00:
	mov.l @(0x70,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @r15,r5
	bsr loc_8c086f30
	mov r14,r4
	mov.l @(0x68,PC),r2
	mov.w @(0x4C,PC),r5
	jsr @r2
	mov r14,r4
	mov.l @(0x64,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c086e32
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x34,PC),r0
	mov.b r3,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C086E32:
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x44,PC),r3
	jmp @r3
	mov.l @r15+,r14
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C086E46:
	mov r4,r3
	mov.l @(loc_8C086E84,pc),r1 ; r1 set to 0x8C154378
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C086E58:
	#data 0x019c
loc_8C086E5A:
	#data 0x01A1
loc_8C086E5C:
	#data 0x01Ac
loc_8C086E5E:
	#data 0x012c
loc_8C086E60:
	#data 0x019e
loc_8C086E62:
	#data 0x019F
	#align4

loc_8C086E64:
	#data 0x40092492
loc_8C086E68:
	#data 0x8C2896B0
loc_8C086E6C:
	#data bank03.loc_8c034e8c
loc_8C086E70:
	#data bank15.loc_8c154370
loc_8C086E74:
	#data bank03.loc_8c034dee
loc_8C086E78:
	#data bank03.loc_8c033674
loc_8C086E7C:
	#data bank03.loc_8c0332E0
loc_8C086E80:
	#data bank04.loc_8c045748
loc_8C086E84:
	#data bank15.loc_8c154378

;==============================================
loc_8C086E88:
	mov.b @(0x6,r4),r0
	fldi1 fr3
	add 0x01,r0
	mov.b r0,@(0x6,r4)
	mov 0x0A,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x110,PC),r0
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	fmov fr3,@(r0,r4)
	mov 0x50,r0
	fmov fr3,@(r0,r4)

loc_8C086EA0:
	mova @(0x10C,PC),r0
	fmov @r0,fr4
	mov 0x50,r1
	mov.w @(0x1C,r4),r0
	add r4,r1
	fmov @r1,fr3
	mov 0x50,r2
	mov r0,r3
	lds r3,fpul
	fneg fr3
	fadd fr4,fr3
	add r4,r2
	float fpul,fr2
	mov 0x54,r1
	add r4,r1
	fdiv fr2,fr3
	fmov @r2,fr2
	fadd fr3,fr2
	fmov fr2,@r2
	mov 0x54,r2
	mov.w @(0x1C,r4),r0
	add r4,r2
	fmov @r1,fr3
	mov r0,r3
	lds r3,fpul
	fneg fr3
	fadd fr4,fr3
	float fpul,fr2
	fdiv fr2,fr3
	fmov @r2,fr2
	fadd fr3,fr2
	fmov fr2,@r2
	mov.w @(0x1C,r4),r0
	mov.w @(0xC2,PC),r1
	mov r0,r3
	lds r3,fpul
	add r4,r1
	fldi0 fr2
	fmov @r1,fr3
	float fpul,fr1
	mov.w @(0xB4,PC),r2
	fneg fr3
	fadd fr2,fr3
	add r4,r2
	fdiv fr1,fr3
	fmov @r2,fr1
	fadd fr3,fr1
	fmov fr1,@r2
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c086f18
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x92,PC),r0
	mov.b r3,@(r0,r4)

loc_8C086F18:
	rts
	nop

;-------------------------------------------------------------------------------
loc_8C086F1C:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C086FAA,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;-------------------------------------------------------------------------------
loc_8C086F2A:
	mov.l @(loc_8C086FB4,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;==============================================
loc_8C086F30:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c086fa0
	mov.w @(0x64,PC),r0
	mov r14,r4
	mov.l @(0x6C,PC),r3
	mov.l @(r0,r5),r2
	mov r2,r5
	mov.l r2,@r15
	add 0x34,r5
	jsr @r3
	add 0x34,r4
	extu.b r0,r4
	mov 0x22,r0
	mov.b @(r0,r14),r2
	shlr2 r4
	shlr r4
	extu.b r2,r2
	extu.b r4,r5
	cmp/eq r2,r5
	bt loc_8c086f8c
	mov.b @(r0,r14),r2
	mov 0x1F,r3
	extu.b r2,r2
	sub r2,r5
	mov 0x0F,r2
	and r3,r5
	cmp/gt r2,r5
	bt loc_8c086f7e
	mov.b @(r0,r14),r1
	bra loc_8c086f82
	add 0x01,r1

loc_8C086F7E:
	mov.b @(r0,r14),r1
	add 0xff,r1

loc_8C086F82:
	mov 0x1F,r3
	mov.b r1,@(r0,r14)
	mov.b @(r0,r14),r2
	and r3,r2
	mov.b r2,@(r0,r14)

loc_8C086F8C:
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c086f9c
	bra loc_8c086f9e
	mov 0xFF,r0

loc_8C086F9C:
	mov 0x05,r0

loc_8C086F9E:
	mov.w r0,@(0x1C,r14)

loc_8C086FA0:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C086FA8:
	#data 0x0108
loc_8C086FAA:
	#data 0x012c
loc_8C086FAc:
	#data 0x020c
	#align4

loc_8C086Fb0:
	#data 0x40400000
loc_8C086FB4:
	#data bank04.loc_8c0450C0
loc_8C086FB8:
	#data bank03.loc_8c03362c

;==============================================
loc_8C086FBC:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0x10C,PC),r3
	mov.l r4,@(0x8,r15)
	mov.l r5,@(0x4,r15)
	mov 0x01,r5
	mov.b r6,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c086fe8
	mov r0,r4
	mov.l @(0xFC,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x8,r15),r2
	mov.l r2,@(0x18,r4)
	mov.l @(0x4,r15),r3
	mov.l r3,@(0x14,r4)
	mov.b @r15,r2
	mov.b r2,@(r0,r4)

loc_8C086FE8:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C086FF0:
	mov r4,r3
	mov.l @(loc_8C0870D8,pc),r1 ; r1 set to 0x8C1543A0
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C087002:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xB8,PC),r3
	mov.l r13,@-r15
	mov.w @(0xB6,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0xAE,PC),r2
	add 0x01,r0
	mov.l @(0x18,r14),r4
	mov.b r0,@(0x4,r14)
	mov 0x26,r0
	mov.w r3,@(r0,r14)
	mov.w @(0xA4,PC),r0
	mov.l @(0xB8,PC),r3
	jsr @r3
	add r4,r2
	mov.w @(0x9E,PC),r0
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
	mov.w @(0x82,PC),r0
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
	mov.l @(0x84,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.l @(0x80,PC),r3
	mov.b @(r0,r4),r2
	mov 0x24,r1
	add r14,r1
	mov.b r2,@(r0,r14)
	mov.w @(0x58,PC),r0
	mov.b r5,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r13
	extu.b r13,r13
	shll2 r13
	shll r13
	add r3,r13
	mov.b @(0x4,r13),r0
	mov.b r0,@r1
	mov 0x20,r0
	mov.b @(r0,r14),r4
	extu.b r4,r4
	tst r4,r4
	bt loc_8c087092
	mov r4,r0
	nop 
	cmp/eq 0x01,r0
	bf loc_8c087096

loc_8C087092:
	bra loc_8c087098
	mov.l @(0x18,r14),r4

loc_8C087096:
	mov.l @(0x14,r14),r4

loc_8C087098:
	mov r4,r2
	mov.l @(0x44,PC),r3
	mov r14,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mova @(0x40,PC),r0
	fmov @r0,fr4
	mov.w @(0x1E,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bf loc_8c0870ec
	mov.w @r13,r3
	mov 0x34,r0
	fmov @(r0,r14),fr2
	lds r3,fpul
	fmov fr4,fr0
	float fpul,fr3
	bra loc_8c0870fc
	fmac fr0,fr3,fr2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0870c2:
	#data 0x1802
loc_8c0870c4:
	#data 0x00Dc
loc_8c0870c6:
	#data 0x00C0
loc_8c0870c8:
	#data 0x012c
loc_8c0870ca:
	#data 0x01A3
loc_8c0870cc:
	#data 0x0130
	#align4

loc_8C0870D0:
	#data bank04.loc_8c044F12
loc_8C0870D4:
	#data loc_8C086FF0
loc_8C0870D8:
	#data bank15.loc_8c1543A0
loc_8C0870DC:
	#data bank12.loc_8c129560
loc_8C0870E0:
	#data bank12.loc_8c1294C8
loc_8C0870E4:
	#data bank15.loc_8c154380
loc_8c0870e8:
	#data 0x3FD55555

;----------------------------------------------
loc_8C0870EC:
	mov.w @r13,r3
	mov 0x34,r0
	fmov @(r0,r14),fr2
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fneg fr3
	fadd fr3,fr2

loc_8C0870FC:
	fmov fr2,@(r0,r14)
	mov r14,r2
	mov 0x38,r0
	mov.w @(0x104,PC),r1
	add r0,r2
	mov 0x42,r4
	mov.l r2,@-r15
	mov.w @(0x2,r13),r0
	add r14,r1
	mov r0,r3
	mova @(0x108,PC),r0
	fmov @r0,fr0
	mov.w @(0xF0,PC),r0
	lds r3,fpul
	mov.l @r15+,r3
	float fpul,fr3
	fmov @r3,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@r3
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x00,r4
	mov.b @(0x7,r13),r0
	mov.l @(0xF0,PC),r3
	mov.b r0,@r1
	mov.w @(0xD8,PC),r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov 0x17,r5
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.b @(0x6,r13),r0
	mov.l @(0xD0,PC),r2
	mov r0,r6
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C087160:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x18,r14),r5
	mov 0x02,r3 ; r3 set to 0x02
	mov.b @(0x04,r5),r0
	extu.b r0,r0
	cmp/ge r3,r0
	bf loc_8C087180
	mov.b @(0x04,r14),r0
	mov 0x00,r2 ; r2 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C08720E,pc),r0 ; r0 set to 0x12c
	mov.b r2,@(r0,r14)
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C087180:
	mov 0x20,r0 ; r0 set to 0x20
	mov r14,r4
	mov.b @(r0,r14),r3
	mov.l @(loc_8C087228,pc),r0 ; r0 set to 0x8C1543B0
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8c087192:
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C087196:
	mov r4,r3
	mov.l @(loc_8C08722C,pc),r1 ; r1 set to 0x8C1543C0
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0871A8:
	mov.w @(0x64,PC),r0
	mov.l r14,@-r15
	mov r5,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c0871cc
	mov r4,r13
	mov.w @(0x54,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0871cc
	mov.w @(0x4C,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0871da

loc_8C0871CC:
	mov.b @(0x4,r13),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r13)
	mov.w @(0x36,PC),r0
	bra loc_8c0872b8
	mov.b r3,@(r0,r13)

loc_8C0871DA:
	mova @(0x54,PC),r0
	mov.l @(0x54,PC),r4
	fmov @r0,fr4
	mov.w @(0x32,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c087238
	mov.w r3,@(r0,r13)
	mov.w @(0x2A,PC),r0
	fmov fr4,fr0
	mov.b @(r0,r14),r1
	mov 0x34,r0
	fmov @(r0,r14),fr2
	mov r1,r3
	shll2 r3
	shll r1
	add r3,r1
	add r4,r1
	mov.w @r1,r3
	lds r3,fpul
	float fpul,fr3
	bra loc_8c087254
	fmac fr0,fr3,fr2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c087208:
	#data 0x019c
loc_8c08720a:
	#data 0x01a1
loc_8c08720c:
	#data 0x01ac
loc_8c08720e:
	#data 0x012c
loc_8c087210:
	#data 0x0141
loc_8c087212:
	#data 0x01d0
loc_8c087214:
	#data 0x01e9
loc_8c087216:
	#data 0x0130
loc_8c087218:
	#data 0x0140
	#align4

loc_8c08721c:
	#data 0x40092492
loc_8C087220:
	#data 0x8C2896B0
loc_8C087224:
	#data bank03.loc_8c034e8c
loc_8C087228:
	#data bank15.loc_8c1543B0
loc_8C08722C:
	#data bank15.loc_8c1543C0
loc_8C087230:
	#data 0x3FD55555
loc_8C087234:
	#data bank15.loc_8c1543Cc

;==============================================
loc_8C087238:
	mov.w @(0x14C,PC),r0
	mov.b @(r0,r14),r2
	mov 0x34,r0
	fmov @(r0,r14),fr2
	mov r2,r3
	shll2 r3
	shll r2
	add r3,r2
	add r4,r2
	mov.w @r2,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fsub fr3,fr2

loc_8C087254:
	fmov fr2,@(r0,r13)
	mov 0x48,r1
	mov.w @(0x12C,PC),r0
	add r13,r1
	mov.b @(r0,r14),r3
	mov r3,r2
	shll2 r2
	shll r3
	add r2,r3
	add r4,r3
	mov.w @(0x2,r3),r0
	mov r0,r3
	lds r3,fpul
	mov 0x38,r0
	fmov @(r0,r14),fr2
	mova @(0x120,PC),r0
	float fpul,fr3
	fmov @r0,fr0
	mov 0x38,r0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r13)
	mov.w @(0x106,PC),r0
	mov.b @(r0,r14),r3
	mov r3,r2
	shll2 r2
	shll r3
	add r2,r3
	add r3,r4
	mov.w @(0x4,r4),r0
	mov.l r0,@r1
	mov.w @(0xF6,PC),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x02,r0
	bf loc_8c0872b8
	mov.b @(0x5,r13),r0
	mov 0x0B,r3
	mov 0x11,r5
	add 0x01,r0
	mov.b r0,@(0x5,r13)
	mov 0x24,r0
	mov.b r3,@(r0,r13)
	mov.l @(0xF0,PC),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r4
	mov r14,r5
	mov.l @r15+,r13
	bra loc_8c0872c0
	mov.l @r15+,r14

loc_8C0872B8:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C0872C0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xD4,PC),r3
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov.w @(0xB6,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0872ec
	mov.b @(0x5,r14),r0
	mov r14,r5
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0xA8,PC),r0
	mov.l @r15,r6
	mov.b @(r0,r6),r6
	add 0x02,r6
	bsr loc_8c086fbc
	mov.l @r15,r4

loc_8C0872EC:
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0xAC,PC),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C0872F8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x9C,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c087314
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x7A,PC),r0
	mov.b r3,@(r0,r14)

loc_8C087314:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C08731A:
	mov r4,r3
	mov.l @(loc_8C0873A4,pc),r1 ; r1 set to 0x8C1543E4
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C08732C:
	mov.b @(0x05,r4),r0
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	mov.w @(loc_8C087390,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r5),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C0873A8,pc),r0  ; r0 set to 0x8C0873A8
	fmov.s @r0,fr3
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr3,@(r0,r4)

loc_8C087342:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C08739C,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	exts.b r0,r0 ; r0 ??	
	cmp/pz r0
	bt loc_8C087364
	mov.b @(0x04,r14),r0
	mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C08738E,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C087364:
	lds.l @r15+,pr
	mov.l @(loc_8C0873A0,pc),r3 ; r3 set to 0x8C045748
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;Unused
loc_8c08736e:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C087374:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C08738E,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;-------------------------------------------------------------------------------
loc_8C087382:
	mov.l @(loc_8C0873AC,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c087388:
	#data 0x0140
loc_8c08738a:
	#data 0x0141
loc_8c08738c:
	#data 0x01A3
loc_8C08738E:
	#data 0x012c
loc_8C087390:
	#data 0x041c
	#align4

loc_8c087394:
	#data 0x40092492
loc_8C087398:
	#data bank0d.loc_8c0d5E24
loc_8C08739C:
	#data bank03.loc_8c034dee
loc_8C0873A0:
	#data bank04.loc_8c045748
loc_8C0873A4:
	#data bank15.loc_8c1543E4
loc_8C0873A8:
	#data 0x3FC00000
loc_8C0873AC:
	#data bank04.loc_8c0450C0

;==============================================
loc_8c0873b0:
	mov.l r14,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x04,r0
	mov.l @(0x138,PC),r3
	mov.b r5,@r15
	mov 0x01,r5
	mov r4,r14
	mov 0x00,r6
	fmov fr4,fr15
	fmov fr5,@(r0,r15)
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c087408
	mov r0,r4
	mov.l @(0x124,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.b @r15,r2
	mov.w @(0x106,PC),r3
	mov.b r2,@(r0,r4)
	mov 0x26,r0
	mov.l r14,@(0x18,r4)
	mov.w r3,@(r0,r4)
	mov.w @(0xFE,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0873ee
	fneg fr15

loc_8c0873ee:
	mov.w @(0xF6,PC),r0
	mov.w @(r0,r14),r3
	mov.w @(0xF4,PC),r0
	mov.w r3,@(r0,r4)
	mov.w @(0xF2,PC),r0
	mov.b @r15,r2
	mov.b r2,@(r0,r4)
	add 0xF8,r0
	fmov fr15,@(r0,r4)
	mov 0x04,r0
	fmov @(r0,r15),fr3
	mov.w @(0xE6,PC),r0
	fmov fr3,@(r0,r4)

loc_8c087408:
	mov r4,r0
	nop 
	add 0x08,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8c087416:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r4,r12
	mov.l r11,@-r15
	mov 0x00,r4
	mov.l r10,@-r15
	mov 0x0A,r11
	mov.l r9,@-r15
	mov r4,r14
	mov.l r8,@-r15
	mov r4,r13
	sts.l pr,@-r15
	mov.l @(loc_8c0874fc,pc),r8
	mov 0x01,r10
	mov.w @(loc_8C0874E4,pc),r9

loc_8c087436:
	mov.l @(loc_8c0874f4,pc),r3
	mov 0x01,r5
	mov 0x02,r6
	jsr @r3
	mov r12,r4
	tst r0,r0
	bt/s loc_8c087464
	mov r0,r4
	mov 0x20,r0
	mov.l @(bank08.loc_8c0874f8,pc),r3
	mov.l r3,@(0x10,r4) 
	mov.b r10,@(r0,r4) 
	mov 0x26,r0
	mov.l r12,@(0x18,r4) 
	mov.w r9,@(r0,r4) 
	add 0x68,r0
	mov.b r13,@(r0,r4) 
	mov 0x10,r0
	mov.l @r8,r3
	add 0x01,r13
	mov.b @(r0,r3),r2
	mov.w @(loc_8C0874EC,pc),r0
	mov.b r2,@(r0,r4)

loc_8c087464:
	add 0x01,r14
	exts.b r14,r3
	cmp/ge r11,r3
	bf loc_8c087436
	lds.l @r15+,pr 
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8c08747e:
	mov.l @(0x18,r4),r3
	mov 0x34,r0
	mov.l @(0x78,PC),r2
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
	mova @(0x60,PC),r0
	fmov @r0,fr2
	mov.w @(0x4A,PC),r0
	float fpul,fr3
	mov.w @(r0,r4),r3
	tst r3,r3
	fmov fr3,fr4
	bf.s loc_8c0874b2
	fmul fr2,fr4
	fneg fr4

loc_8c0874b2:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	rts 
	fmov fr3,@(r0,r4)

;==============================================
loc_8C0874BC:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.l @(loc_8C0874FC,pc),r4 ; r4 set to 0x8C28C610
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C087508
	mov.w @(loc_8C0874F2,pc),r3 ; r3 set to 0x88
	mov.l @(loc_8C087504,pc),r1 ; r1 set to 0x8C1543Ec
	add r14,r3 ; r3 ??? bc r14 is ???	
	mov.l r3,@r4 ; r4 ??? bc r3 is ???	
	mov r14,r4
	mov.b @(0x04,r14),r0
	lds.l @r15+,pr
	extu.b r0,r0 ; r0 set to 0x20
	shll2 r0 ; r0 set to 0x80
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0874e4:
	#data 0x1803
loc_8c0874e6:
	#data 0x01d2
loc_8c0874e8:
	#data 0x0158
loc_8c0874ea:
	#data 0x009a
loc_8c0874ec:
	#data 0x0098
loc_8c0874ee:
	#data 0x0094
loc_8c0874f0:
	#data 0x0130
loc_8C0874F2:
	#data 0x0088
	#align4

loc_8C0874F4:
	#data bank04.loc_8c044F12
loc_8C0874F8:
	#data loc_8C0874Bc
loc_8C0874FC:
	#data 0x8C28C610
loc_8C087500:
	#data 0x3FD55555
loc_8C087504:
	#data bank15.loc_8c1543Ec

;==============================================
loc_8C087508:
	mov.w @(loc_8C087616,pc),r2 ; r2 set to 0x88
	add r14,r2 ; r2 ??? bc r14 is ???	
	mov.l r2,@r4
	mov.w @(loc_8C087616,pc),r2 ; r2 set to 0x88
	mov.l @(0x18,r14),r3
	add r3,r2 ; r2 ??? bc r3 is ???	
	mov.l @(loc_8C08761C,pc),r3 ; r3 set to 0x8C28C614
	mov.l r2,@r3 ; r3 ??? bc r2 is ???	
	bsr loc_8C08747e
	mov r14,r4
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov.l @(loc_8C087620,pc),r1 ; r1 set to 0x8C1543Fc
	extu.b r0,r0
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C08752E:
	mov.l @(0x18,r4),r3
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C087624,pc),r7 ; r7 set to 0x8C28C610
	mov 0x08,r1 ; r1 set to 0x08
	fmov.s @(r0,r3),fr3
	mov.l @(loc_8C08762C,pc),r5 ; r5 set to 0x8C15440c
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @r7,r3
	fmov.s @(r0,r4),fr2
	add r3,r1 ; r1 ??? bc r3 is ???	
	fmov.s @r1,fr3
	mov 0x0C,r1 ; r1 set to 0x0c
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @r7,r3
	fmov.s @(r0,r4),fr2
	add r3,r1 ; r1 ??? bc r3 is ???	
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C087628,pc),r0  ; r0 set to 0x8C087628
	fmov.s @r0,fr4
	mov.w @(loc_8C087618,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r4),r3
	tst r3,r3
	bf/s loc_8C087586
	mov.l @r7,r6
	mov.b @r6,r3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r4),fr2
	shll r3
	fmov fr4,fr0 ; r0 ??? bc r4 is ???	
	add r3,r5 ; r5 ??? bc r3 is ???	
	mov.w @r5,r3
	lds r3,fpul
	float fpul,fr3
	bra loc_8C08759a
	fmac fr0,fr3,fr2

loc_8C087586:
	mov.b @r6,r2
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r4),fr2
	shll r2
	add r2,r5
	mov.w @r5,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fsub fr3,fr2

loc_8C08759A:
	rts
	fmov.s fr2,@(r0,r4)

;-------------------------------------------------------------------------------
loc_8C08759E:
	mov.l @(0x84,PC),r5
	mov 0x0A,r3
	mov.l @r5,r4
	mov.b @(0x2,r4),r0
	extu.b r0,r0
	cmp/ge r3,r0
	bt loc_8c0875c6
	mov.b @(0x3,r4),r0
	add 0xFF,r0
	mov.b r0,@(0x3,r4)
	extu.b r0,r0
	cmp/pl r0
	bt loc_8c0875c6
	mov.l @r5,r1
	mov 0x01,r0
	mov.b r0,@(0x3,r1)
	mov.l @r5,r2
	mov.b @(0x2,r2),r0
	add 0x01,r0
	mov.b r0,@(0x2,r2)

loc_8C0875C6:
	rts
	nop

;-------------------------------------------------------------------------------
loc_8C0875CA:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c0875f4
	mov 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov.l @(0x48,PC),r4
	mov.l @r4,r3
	mov.b @r3,r2
	add 0x01,r2
	mov.b r2,@r3
	mov.l @r4,r3
	mov.b @r3,r2
	mov 0x07,r3
	cmp/ge r3,r2
	bf loc_8c0875f4
	mov.l @r4,r1
	mov 0x04,r2
	mov.b r2,@r1

loc_8C0875F4:
	rts
	nop

;-------------------------------------------------------------------------------
loc_8C0875F8:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c087612
	mov.l @(0x1C,PC),r2
	mov 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov.l @r2,r3
	mov.b @r3,r1
	add 0xFF,r1
	mov.b r1,@r3

loc_8C087612:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C087616:
	#data 0x0088
loc_8C087618:
	#data 0x0130
	#align4

loc_8C08761C:
	#data 0x8C28C614
loc_8C087620:
	#data bank15.loc_8c1543Fc
loc_8C087624:
	#data 0x8C28C610
loc_8C087628:
	#data 0x3FD55555
loc_8C08762C:
	#data bank15.loc_8c15440c

;==============================================
loc_8c087630:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l @(loc_8C087700,pc),r13
	mov.l @(loc_8C087704,pc),r3
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @r13,r4
	mov.l @r3,r5
	mov.b @r4,r2
	mov.b @r5,r1
	cmp/eq r1,r2
	bt loc_8c087670
	mov.b @r5,r1
	mov.b r1,@r4
	mov.l @r13,r12
	mov.l @r13,r1
	mov.b @r12,r12
	mov.b @(0x06,r1),r0 
	mov r12,r2
	shll r12
	tst r0,r0
	bt/s loc_8c087666
	add r2,r12
	mov.l @r13,r2
	mov.b @(0x01,r2),r0 
	add r0,r12

loc_8c087666:
	mov.l @(bank08.loc_8c087708,pc),r3
	mov 0x19,r5
	extu.b r12,r6
	jsr @r3
	mov r14,r4

loc_8c087670:
	mov.l @r13,r4
	mov 0x04,r2
	fldi1 fr4
	mov.b @r4,r3
	cmp/ge r2,r3
	bf/s loc_8c087688
	fadd fr4,fr4
	mov 0x50,r0
	fmov.s fr4,@(r0,r14) 
	mov 0x54,r0
	bra loc_8c08769e
	fmov.s fr4,@(r0,r14) 

loc_8c087688:
	mov.b @r4,r0
	cmp/eq 0x03,r0 
	bf/s loc_8c087696
	fldi1 fr5
	mov 0x50,r0
	bra loc_8c08769a
	fmov.s fr4,@(r0,r14) 

loc_8c087696:
	mov 0x50,r0
	fmov.s fr5,@(r0,r14) 

loc_8c08769a:
	mov 0x54,r0
	fmov.s fr5,@(r0,r14) 

loc_8c08769e:
	lds.l @r15+,pr 
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8c0876a8:
	mov.w @(0x4E,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bf.s loc_8c0876d0
	mov 0x01,r5
	mov.w @(0x46,PC),r0
	mov.b @(r0,r4),r3
	mova @(0x54,PC),r0
	fmov @r0,fr2
	mov 0x34,r0
	extu.b r3,r3
	lds r3,fpul
	mov.l @(0x4C,PC),r3
	float fpul,fr3
	fmov @r3,fr1
	fmul fr2,fr3
	fsub fr3,fr1
	fmov @(r0,r4),fr3
	fcmp/gt fr3,fr1
	bt loc_8c0876f4               ; loc_8c0876a8+0x4c

loc_8c0876d0:
	mov.w @(0x26,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c0876f6
	mov.w @(0x20,PC),r0
	mov.l @(0x38,PC),r2
	mov.b @(r0,r4),r3
	mova @(0x2C,PC),r0
	fmov @r0,fr0
	mov 0x34,r0
	extu.b r3,r3
	fmov @r2,fr2
	lds r3,fpul
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov @(r0,r4),fr3
	fcmp/gt fr2,fr3
	bf loc_8c0876f6

loc_8c0876f4:
	mov 0x00,r5

loc_8c0876f6:
	rts 
	mov r5,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0876fa:
	#data 0x0130
loc_8c0876fc:
	#data 0x013F
	#align4

loc_8C087700:
	#data 0x8C28C610
loc_8C087704:
	#data 0x8C28C614
loc_8c087708:
	#data bank03.loc_8c034e8c
loc_8c08770c:
	#data 0x3fd55555
loc_8c087710:
	#data 0x8c26a5a0
loc_8c087714:
	#data 0x8c26a5a4

;==============================================
loc_8C087718:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C087854,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.l @(loc_8C087860,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C087854,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C087856,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C087858,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C087864,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov.b r3,@(r0,r14)
	mov.b @(0x01,r14),r0
	mov.l @(0x18,r14),r3
	mov r0,r2 ; r2 set to 0x24
	mov.b @(0x01,r3),r0
	cmp/eq r0,r2
	bt/s loc_8C0877A0
	mov 0x00,r6 ; r6 set to 0x00
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C087856,pc),r0 ; r0 set to 0x12c
	mov.b r6,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C0877A0:
	mov.l @(loc_8C087868,pc),r4 ; r4 set to 0x8C28C610
	mov.w @(loc_8C087856,pc),r0 ; r0 set to 0x12c
	mov.b r6,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r6,@(r0,r14)
	mov.l @r4,r3
	mov r3,r2
	mov r6,r0 ; r0 ??? bc r6 is ???	
	nop
	mov.b r0,@(0x07,r2)
	mov.b r0,@r3
	mov r5,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov 0x22,r0 ; r0 set to 0x22
	mov 0x0C,r3 ; r3 set to 0x0c
	mov.b r3,@(r0,r14)
	mov 0x42,r6 ; r6 set to 0x42
	mov.w @(loc_8C08785A,pc),r0 ; r0 set to 0x19c
	mov.b r6,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x19d
	mov.b r6,@(r0,r14)
	mov.l @r4,r3 ; r3 ??	
	mov r5,r0 ; r0 ??? bc r5 is ???	
	nop
	mov.b r0,@(0x02,r3)
	mov.l @r4,r3
	mov.b r0,@(0x03,r3)
	bsr loc_8C08752e
	mov r14,r4 ; r4 ??? bc r14 is ???	
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C087416
	mov.l @r15+,r14

;unused return
loc_8c0877e4:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C0877EA:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8C08786C,pc),r1 ; r1 set to 0x8C15441c
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C08752e
	mov.l @r15+,r14

loc_8C087806:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x01,r14),r0
	mov.l @(0x18,r14),r3
	mov r0,r2
	mov.b @(0x01,r3),r0
	cmp/eq r0,r2
	bt/s loc_8C08782a
	mov 0x00,r6 ; r6 set to 0x00
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C087856,pc),r0 ; r0 set to 0x12c
	mov.b r6,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C08782A:
	mov.l @(0x18,r14),r3
	mov 0x03,r7 ; r7 set to 0x03
	mov.w @(loc_8C08785C,pc),r0 ; r0 set to 0x158
	mov.l @(loc_8C087868,pc),r4 ; r4 set to 0x8C28C610
	mov.w @(r0,r3),r2
	mov.w @(loc_8C08785E,pc),r3 ; r3 set to 0x1503
	extu.w r2,r2
	cmp/eq r3,r2
	bt/s loc_8C087870
	mov 0x01,r5 ; r5 set to 0x01
	mov.b @(0x05,r14),r0
	add 0x01,r0 ; r0 set to 0x159
	mov.b r0,@(0x05,r14)
	mov.l @r4,r2
	mov.b r7,@r2
	mov r5,r0 ; r0 set to 0x01
	nop
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C087854:
	#data 0x00Dc
loc_8C087856:
	#data 0x012c
loc_8C087858:
	#data 0x01A3
loc_8C08785A:
	#data 0x019c
loc_8C08785C:
	#data 0x0158
loc_8C08785E:
	#data 0x1503
	#align4

loc_8C087860:
	#data bank12.loc_8c129560
loc_8C087864:
	#data bank12.loc_8c1294C8
loc_8C087868:
	#data 0x8C28C610
loc_8C08786C:
	#data bank15.loc_8c15441c

;===============================================
loc_8c087870:
	mov.l @(loc_8C0879BC,pc),r0
	mov.l @(loc_8C0879B8,pc),r2
	mov.b @r0,r1
	mov.w @r2,r3
	mov r5,r2
	extu.b r1,r1
	shad r1, r2
	extu.w r3,r3
	tst r2,r3
	bf loc_8c0878b0
	mov.l @r4,r2
	mov r6,r0
	nop 
	mov.b r0,@(0x07,r2) 
	mov.l @(0x18,r14),r3
	mov.w @(0x1C,r3),r0 
	cmp/pl r0
	bt loc_8c0878a4
	mov.b @(0x05,r14),r0 
	add 0x01,r0
	mov.b r0,@(0x05,r14) 
	mov.l @r4,r3
	mov.b r7,@r3
	mov r5,r0
	nop 
	mov.w r0,@(0x1C,r14) 

loc_8c0878a4:
	bsr loc_8c08759e
	mov r14,r4
	lds.l @r15+,pr 
	mov r14,r4
	bra loc_8c0875ca
	mov.l @r15+,r14

loc_8c0878b0:
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8c0878b6:
	mov.l @(0x108,PC),r2
	mov 0x00,r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.b r0,@(0x7,r3)
	bsr loc_8c0875f8
	mov r14,r4
	mov.l @(0xF4,PC),r3
	mov.l @r3,r2
	mov.b @r2,r1
	cmp/pz r1
	bt loc_8c0878de
	mov.b @(0x4,r14),r0
	mov 0x00,r2
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xCE,PC),r0
	mov.b r2,@(r0,r14)

loc_8c0878de:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

loc_8C0878E4:
	mov.w @(loc_8C0879AC,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)

loc_8C0878EA:
	mov.l @(loc_8C0879C4,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8C0878F0:
	mov.w @(loc_8C0879AE,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C0879C8,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0879AE,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0879AC,pc),r0 ; r0 set to 0x12c
	mov 0x01,r7 ; r7 set to 0x01
	mov r4,r1
	add 0x50,r1
	mov.b r7,@(r0,r4)
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
	mov.w @(loc_8C0879B0,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0879CC,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov.b r3,@(r0,r4)
	mov.b @(0x01,r4),r0
	mov.l @(0x18,r4),r3
	mov r0,r2 ; r2 set to 0x24
	mov.b @(0x01,r3),r0
	cmp/eq r0,r2
	bt/s loc_8C087972
	mov 0x00,r5 ; r5 set to 0x00
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x04,r4)
	lds.l @r15+,pr
	mov.w @(loc_8C0879AC,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r5,@(r0,r4)

;-------------------------------------------------------------------------------
loc_8C087972:
	mov.w @(loc_8C0879AC,pc),r0 ; r0 set to 0x12c
	mov 0x0C,r3 ; r3 set to 0x0c
	mov 0x42,r6 ; r6 set to 0x42
	mov.l @(loc_8C0879C0,pc),r1 ; r1 set to 0x8C28C610
	mov.b r5,@(r0,r4)
	mov 0x22,r0 ; r0 set to 0x22
	mov.b r3,@(r0,r4)
	mov 0x0B,r3 ; r3 set to 0x0b
	mov.w @(loc_8C0879B2,pc),r0 ; r0 set to 0x19c
	mov.b r6,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x19d
	mov.b r6,@(r0,r4)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r4)
	mov.l @r1,r3 ; r3 ??	
	mov.b @(0x06,r3),r0
	tst r0,r0
	bf/s loc_8C0879D0
	mov 0x10,r6 ; r6 set to 0x10
	mov.w @(loc_8C0879B4,pc),r0 ; r0 set to 0x13c
	mov.w @(loc_8C0879B6,pc),r3 ; r3 set to 0x80
	mov.b r6,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x13d
	mov.b r6,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x13e
	mov.b r6,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x13f
	bra loc_8C0879E0
	mov.b r3,@(r0,r4)

;##############################################
loc_8C0879AC:
	#data 0x012c
loc_8C0879AE:
	#data 0x00Dc
loc_8C0879B0:
	#data 0x01A3
loc_8C0879B2:
	#data 0x019c
loc_8C0879B4:
	#data 0x013c
loc_8C0879B6:
	#data 0x0080
	#align4

loc_8c0879b8:
	#data 0x8C28962c
loc_8c0879bc:
	#data 0x8C28962b
loc_8C0879C0:
	#data 0x8C28C610
loc_8C0879C4:
	#data bank04.loc_8c0450C0
loc_8C0879C8:
	#data bank12.loc_8c129560
loc_8C0879CC:
	#data bank12.loc_8c1294C8

;----------------------------------------------
loc_8C0879D0:
	mov.w @(loc_8C087A92,pc),r0 ; r0 set to 0x13c
	mov.b r6,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x13d
	mov.b r6,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x13e
	mov.b r6,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x13f
	mov.b r6,@(r0,r4)

loc_8C0879E0:
	mov.l @r1,r3
	mov 0xFF,r2 ; r2 set to 0xFFFFFFFF, r2 set to 0xFFFFFFFf
	mov.b r2,@r3
	mov.l @r1,r3
	mov r5,r0 ; r0 ??? bc r5 is ???	
	nop
	mov.b r0,@(0x05,r3)
	mov.l @r1,r3
	mov r7,r0
	nop
	mov.b r0,@(0x01,r3)
	mov 0x35,r3 ; r3 set to 0x35, r3 set to 0x35
	mov.w @(loc_8C087A94,pc),r0 ; r0 set to 0x1A1, r0 set to 0x1A1
	mov.b r3,@(r0,r4)
	add 0x0B,r0 ; r0 set to 0x1AC, r0 set to 0x1Ac
	mov.w r5,@(r0,r4)
	add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19e
	mov.b r5,@(r0,r4)
	add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4
	mov.l @(loc_8C087A98,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
	mov.l r5,@(r0,r4)
	mov.b @(0x02,r4),r0
	mov.l @r3,r2 ; r2 ??, r2 ??	
	extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4
	shll r0 ; r0 set to 0x188, r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	bra loc_8C087630
	lds.l @r15+,pr

;unused return
loc_8c087a1e:
	lds.l @r15+,pr
	rts
	nop

;-------------------------------------------------------------------------------
loc_8C087A24:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x02,r6 ; r6 set to 0x02
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.l @(0x18,r14),r3
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	cmp/ge r6,r0
	bf/s loc_8C087A5a
	mov 0x00,r12 ; r12 set to 0x00
	mov.b @(0x04,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C087A96,pc),r0 ; r0 set to 0x12c
	mov.b r12,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12 ; r12 ??? bc r15 is ???	
	mov.l @r15+,r13
	bra loc_8C0878Ea
	mov.l @r15+,r14

loc_8C087A5A:
	mov.l @(loc_8C087A9C,pc),r4 ; r4 set to 0x8C2895F0
	mov 0x3C,r0 ; r0 set to 0x3c
	mov 0x01,r11 ; r11 set to 0x01
	mov.w @(r0,r4),r2
	mov 0x3B,r0 ; r0 set to 0x3b
	mov.b @(r0,r4),r3
	mov r11,r1 ; r1 set to 0x01
	extu.w r2,r2
	extu.b r3,r3
	shad r3, r1 ; r1 ??? bc r3 is ???	
	tst r1,r2
	bf loc_8C087B5a
	mov.l @(loc_8C087AA0,pc),r13 ; r13 set to 0x8C28C610
	mov.l @r13,r2
	mov r11,r0 ; r0 set to 0x01
	nop
	mov.l @(loc_8C087AA4,pc),r10 ; r10 set to 0x8C28C614
	mov.b r0,@(0x01,r2)
	mov.l @r10,r4 ; r4 ??	
	mov.l @r13,r3
	mov.b @(0x02,r4),r0
	mov r0,r2 ; r2 set to 0x01
	mov.b @(0x06,r3),r0
	cmp/hs r0,r2
	bt loc_8C087AA8
	mov.w @(loc_8C087A96,pc),r0 ; r0 set to 0x12c
	bra loc_8C087B5a
	mov.b r12,@(r0,r14)

;##############################################
loc_8C087A92:
	#data 0x013c
loc_8C087A94:
	#data 0x01A1
loc_8C087A96:
	#data 0x012c
	#align4

loc_8C087A98:
	#data 0x8C2896B0
loc_8C087A9C:
	#data 0x8C2895F0
loc_8C087AA0:
	#data 0x8C28C610
loc_8C087AA4:
	#data 0x8C28C614

;----------------------------------------------
loc_8c087aa8:
	mov.b @(0x02,r4),r0 
	mov.l @r13,r5
	mov r0,r3
	mov.b @(0x06,r5),r0 
	cmp/eq r0,r3
	bf/s loc_8c087ac2
	mov r14,r4
	mov r6,r0
	nop 
	mov 0xFF,r2
	mov.b r0,@(0x01,r5) 
	mov.l @r13,r3
	mov.b r2,@r3

loc_8c087ac2:
	bsr loc_8c0876a8
	nop 
	mov.w @(bank08.loc_8c087b74,pc),r1
	add r14,r1
	mov.b r0,@r1
	mov.w @(loc_8C087B76,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c087b34
	mov.l @r13,r3
	mov r11,r0
	nop 
	mov.b r0,@(0x01,r3) 
	mov 0xFF,r2
	mov.l @r13,r3
	mov.w @(loc_8C087B78,pc),r0
	mov.b r2,@r3
	mov.l @r10,r3
	mov.b r0,@(0x07,r3) 
	mov.w @(loc_8C087B7A,pc),r0
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14) 
	exts.b r3,r3
	tst r3,r3
	bf loc_8c087b34
	mov.l @r13,r3
	mov.b @(0x05,r3),r0 
	add 0x01,r0
	mov.b r0,@(0x05,r3) 
	mov 0x04,r3
	extu.b r0,r0
	cmp/ge r3,r0
	bf/s loc_8c087b12
	mov 0x35,r4
	mov.l @r13,r1
	mov r12,r0
	nop 
	mov 0x36,r4
	mov.b r0,@(0x05,r1) 

loc_8c087b12:
	mov.w @(loc_8C087B7C,pc),r0
	mov.l @(loc_8C087B80,pc),r3
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

loc_8c087b34:
	mov.w @(bank08.loc_8c087b74,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c087b40
	bsr loc_8c087630
	mov r14,r4

loc_8c087b40:
	mov.l @r10,r2
	mov.b @(0x07,r2),r0 
	tst r0,r0
	bf loc_8c087b5a
	lds.l @r15+,pr 
	mov.l @(bank08.loc_8c087b84,pc),r3
	mov r14,r4
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C087B5A:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C087B68:
	mov.w @(loc_8C087B74,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)

loc_8C087B6E:
	mov.l @(loc_8C087B88,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C087B74:
	#data 0x012c
loc_8c087b76:
	#data 0x019e
loc_8c087b78:
	#data 0x00Ff
loc_8c087b7a:
	#data 0x01A0
loc_8c087b7c:
	#data 0x01A1
	#align4

loc_8c087b80:
	#data 0x8C2896B0
loc_8C087B84:
	#data bank04.loc_8c045748
loc_8C087B88:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C087B8C:
	mov r4,r3
	mov.l @(loc_8C087BA0,pc),r1 ; r1 set to 0x8C154470
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C087BA0:
	#data bank15.loc_8c154470

;==============================================
loc_8C087BA4:
	mov.l r14,@-r15
	mov r4,r14
	fmov fr15,@-r15
	fmov fr14,@-r15
	mov.w @(0x17A,PC),r3
	fmov fr13,@-r15
	fmov fr12,@-r15
	mov.w @(0x176,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x16E,PC),r2
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov 0x26,r0
	mov.w r3,@(r0,r14)
	mov.w @(0x166,PC),r0
	mov.l @(0x174,PC),r3
	mov.l @(0x18,r14),r4
	jsr @r3
	add r4,r2
	mov.w @(0x15E,PC),r0
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
	mov.w @(0x142,PC),r0
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
	mov.l @(0x13C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r4),r2
	mov 0x10,r4
	mov.b r2,@(r0,r14)
	mov 0x21,r2
	mov.w @(0x11A,PC),r0
	add r14,r2
	mov.b r5,@(r0,r14)
	add 0x10,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r0
	mov.b @r2,r2
	extu.b r0,r0
	mov r0,r3
	shll2 r3
	shll r0
	add r3,r0
	mov.l @(0x108,PC),r3
	extu.b r2,r2
	add r0,r3
	add r3,r2
	mov.b @r2,r1
	mov 0x23,r0
	mov.b r1,@(r0,r14)
	mova @(0x100,PC),r0
	fmov @r0,fr13
	mova @(0x100,PC),r0
	fmov @r0,fr14
	mova @(0x100,PC),r0
	fmov @r0,fr15
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov.l @(0xFC,PC),r0
	extu.b r3,r3
	mov.l @(0x100,PC),r2
	shll2 r3
	fmov @(r0,r3),fr12
	mov 0x21,r0
	mov.b @(r0,r14),r4
	extu.b r4,r4
	mov r4,r3
	shll2 r4
	shll2 r4
	sub r3,r4
	mov.l @(0xE8,PC),r3
	add 0x3C,r4
	lds r4,fpul
	float fpul,fr3
	fmov fr3,fr2
	fmul fr13,fr2
	fdiv fr14,fr2
	fmov fr2,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	fmul fr0,fr12
	mov 0x5C,r0
	mov.l @(0xD0,PC),r2
	fmov fr12,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov.l @(0xBC,PC),r0
	extu.b r3,r3
	shll2 r3
	fmov @(r0,r3),fr12
	mov 0x21,r0
	mov.b @(r0,r14),r4
	extu.b r4,r4
	mov r4,r3
	shll2 r4
	shll2 r4
	sub r3,r4
	mov.l @(0xAC,PC),r3
	add 0x3C,r4
	lds r4,fpul
	float fpul,fr3
	fmov fr3,fr2
	fmul fr13,fr2
	fdiv fr14,fr2
	fmov fr2,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	fmul fr0,fr12
	mov 0x60,r0
	fmov fr12,@(r0,r14)
	mov.w @(0x66,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c087cdc
	fldi0 fr4
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8C087CDC:
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov 0x42,r4
	mov.w @(0x4C,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x23,r0
	mov.b @(r0,r14),r3
	mov 0x00,r4
	mov.w @(0x40,PC),r0
	add 0x37,r3
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
	mov 0x23,r0
	mov.b @(r0,r14),r6
	mov.l @(0x48,PC),r2
	mov 0x17,r5
	add 0x04,r6
	jsr @r2
	mov r14,r4
	bra loc_8c087d6c
	mov r14,r4

;##############################################
loc_8c087d2a:
	#data 0x1804
loc_8c087d2c:
	#data 0x00dc
loc_8c087d2e:
	#data 0x00c0
loc_8c087d30:
	#data 0x012c
loc_8c087d32:
	#data 0x01a3
loc_8c087d34:
	#data 0x0130
loc_8c087d36:
	#data 0x019c
loc_8c087d38:
	#data 0x01a1
	#align4

loc_8C087D3C:
	#data bank12.loc_8c129560
loc_8C087D40:
	#data bank12.loc_8c1294C8
loc_8C087D44:
	#data bank15.loc_8c154424
loc_8C087D48:
	#data 0x47800000
loc_8C087D4c:
	#data 0x43B40000
loc_8C087D50:
	#data 0x3F000000
loc_8C087D54:
	#data bank15.loc_8c154454
loc_8C087D58:
	#data 0x0000FFFf
loc_8C087D5C:
	#data bank11.loc_8c11E860
loc_8C087D60:
	#data bank11.loc_8c11E2E0
loc_8C087D64:
	#data 0x8C2896B0
loc_8C087D68:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C087D6C:
	bsr loc_8c087e30
	nop 
	lds.l @r15+,pr
	mov r14,r4
	fmov @r15+,fr12
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r14

loc_8C087D7E:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov 0x02,r3
	mov.b @(0x4,r4),r0
	extu.b r0,r0
	cmp/ge r3,r0
	bt loc_8c087dd2
	mov 0x5C,r1
	mov.l @(0x12C,PC),r3
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
	bf loc_8c087de4

loc_8C087DD2:
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xD8,PC),r0
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C087DE4:
	lds.l @r15+,pr
	mov.l @(0xDC,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;Unused Return
loc_8c087dee:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C087DF4:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C087EB6,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;-------------------------------------------------------------------------------
loc_8C087E02:
	mov.l @(loc_8C087EC8,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8C087E08:
	sts.l pr,@-r15
	mov.l @(0x18,r4),r5
	mov 0x02,r3 ; r3 set to 0x02
	mov.b @(0x04,r5),r0
	extu.b r0,r0
	cmp/ge r3,r0
	bf loc_8C087E1c
	mov.l @(loc_8C087EC8,pc),r1 ; r1 set to 0x8C0450C0
	jmp @r1
	lds.l @r15+,pr

loc_8C087E1C:
	mov r5,r2
	mov.l @(loc_8C087ECC,pc),r3 ; r3 set to 0x8C1294C8
	mov r4,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C087E30:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x98,PC),r3
	mov 0x07,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c087eae
	mov r0,r14
	mov.w @(0x6C,PC),r2
	mov 0x26,r0
	mov.l @r15,r3
	mov.l r3,@(0x18,r14)
	mov 0x01,r3
	mov.w r2,@(r0,r14)
	mov.l @(0x7C,PC),r2
	mov.w @(0x5C,PC),r0
	mov.b r3,@(r0,r14)
	add 0xA0,r0
	mov.l r2,@(0x10,r14)
	mov 0x1F,r3
	mov.l @(0x74,PC),r2
	jsr @r2
	mov.l r3,@(r0,r14)
	mov.w @(0x50,PC),r3
	cmp/pz r0
	bf.s loc_8c087e72
	mov 0x48,r1
	bra loc_8c087e7c
	and r3,r0

loc_8C087E72:
	not r0,r0
	add 0x01,r0
	and r3,r0
	not r0,r0
	add 0x01,r0

loc_8C087E7C:
	add r14,r1
	mov.l @(0x5C,PC),r2
	mov.l r0,@r1
	mov r14,r1
	mov.l @(0x44,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @r15,r3
	mov 0x23,r2
	mov.l @(0x4C,PC),r0
	add r3,r2
	mov.l @(0x4C,PC),r1
	mov.b @r2,r3
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r3
	mov.l @r1,r0
	shll2 r3
	mov.l @r0,r2
	add r2,r3
	mov.w @(0x12,PC),r2
	mov.l @r3,r0
	add r14,r2
	mov.l r0,@r2

loc_8C087EAE:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c087eb6:
	#data 0x012c
loc_8c087eb8:
	#data 0x1804
loc_8c087eba:
	#data 0x3fff
loc_8c087ebc:
	#data 0x0084
	#align4

loc_8C087EC0:
	#data bank03.loc_8c0332E0
loc_8C087EC4:
	#data bank04.loc_8c045748
loc_8C087EC8:
	#data bank04.loc_8c0450C0
loc_8C087ECC:
	#data bank12.loc_8c1294C8
loc_8C087ED0:
	#data bank04.loc_8c044F12
loc_8C087ED4:
	#data loc_8C087E08
loc_8C087ED8:
	#data bank11.loc_8c11e730
loc_8C087EDC:
	#data bank15.loc_8c154464
loc_8C087EE0:
	#data bank15.loc_8c15443c
loc_8c087ee4:
	#data 0x8C26A904

;==============================================
loc_8c087ee8:
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l r4,@(0xC,r15)
	mov.l r5,@(0x8,r15)
	mov r6,r0
	nop 
	mov.l @(0x70,PC),r3
	mov 0x01,r5
	mov 0x00,r6
	mov.b r0,@(0x4,r15)
	mov.b r7,@r15
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c087f2a
	mov r0,r4
	mov.l @(0x60,PC),r2
	mov r4,r1
	mov.l @(0xC,r15),r3
	add 0x34,r1
	mov.l r3,@(0x18,r4)
	mov.l r2,@(0x10,r4)
	mov.l @(0x58,PC),r3
	mov.l @(0x8,r15),r2
	jsr @r3
	mov 0x0C,r0
	mov 0x20,r1
	mov.b @(0x4,r15),r0
	add r4,r1
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)

loc_8c087f2a:
	add 0x10,r15
	lds.l @r15+,pr
	rts 
	nop 
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@(0x4,r15)
	mov.l r5,@r15
	mov r6,r0
	nop 
	mov 0x00,r14
	mov.b r0,@(0x8,r15)
	mov 0x06,r13

loc_8c087f48:
	mov.b @(0x8,r15),r0
	mov r14,r7
	mov.l @r15,r5
	mov r0,r6
	bsr loc_8c087ee8
	mov.l @(0x4,r15),r4
	add 0x01,r14
	extu.b r14,r2
	cmp/ge r13,r2
	bf loc_8c087f48
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C087F68:
	#data bank04.loc_8c044F12
loc_8C087F6C:
	#data loc_8C087B8c
loc_8C087F70:
	#data bank12.loc_8c1294C8

;==============================================
;Unused
loc_8c087f74:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@(0x8,r15)
	mov r5,r0
	nop 
	mov.l @(0x44,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c087fa8
	mov r0,r4
	mov.l @(0x34,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @(0x8,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x23,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)

loc_8c087fa8:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C087FB0:
	mov r4,r3
	mov.l @(loc_8C087FCC,pc),r1 ; r1 set to 0x8C154488
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C087FC4:
	#data bank04.loc_8c044F12
loc_8C087FC8:
	#data loc_8C087FB0
loc_8C087FCC:
	#data bank15.loc_8c154488

;==============================================
loc_8C087FD0:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x134,PC),r3
	mov.w @(0x134,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x12C,PC),r2
	add 0x01,r0
	mov.l @(0x18,r14),r4
	mov.b r0,@(0x4,r14)
	mov 0x26,r0
	mov.w r3,@(r0,r14)
	mov.w @(0x122,PC),r0
	mov.l @(0x130,PC),r3
	jsr @r3
	add r4,r2
	mov.w @(0x11C,PC),r0
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
	mov.w @(0x100,PC),r0
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
	mov.l @(0xFC,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r4),r2
	mov 0x00,r5
	mov 0x0A,r3
	mov.b r2,@(r0,r14)
	mov.w @(0xDC,PC),r0
	mov.w r5,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov 0x31,r0
	mov.b r5,@(r0,r14)
	mov 0x21,r0
	mov.b r5,@(r0,r14)
	mov 0x20,r0
	mov.b r5,@(r0,r14)
	mov 0x50,r0
	fmov @(r0,r14),fr3
	mov 0x64,r0
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r14),fr3
	mov 0x70,r0
	fmov fr3,@(r0,r14)
	mov 0x23,r0
	mov.b @(r0,r14),r3
	mov.l @(0xC8,PC),r0
	extu.b r3,r3
	shll r3
	mov.w @(r0,r3),r3
	mova @(0xC4,PC),r0
	lds r3,fpul
	float fpul,fr3
	fmov @r0,fr2
	mov.w @(0xA4,PC),r0
	fmov fr3,fr4
	mov.w @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c08807c
	fmul fr2,fr4
	fneg fr4

loc_8C08807C:
	mov.l @(0xB0,PC),r3
	mov 0x34,r0
	mov 0x30,r2
	fmov @r3,fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x8C,PC),r0
	fmov @(r0,r4),fr3
	mov 0x38,r0
	mov 0x44,r4
	fmov fr3,@(r0,r14)
	mov.w @(0x84,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x04,r0
	mov.b r2,@(r0,r14)
	add 0x0B,r0
	mov.w r5,@(r0,r14)
	add 0xF2,r0
	mov.b r5,@(r0,r14)
	add 0x26,r0
	mov.l @(0x88,PC),r2
	mov.l r5,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r2,r1
	extu.b r0,r0
	shll r0
	add 0x7C,r1
	mov.w @(r0,r1),r3
	add 0x01,r3
	mov.w r3,@(r0,r1)
	mov.w @(0x5C,PC),r0
	mov 0x17,r5
	mov 0x03,r6
	mov.w @(r0,r14),r1
	mov r0,r3
	add 0x54,r3
	or r3,r1
	mov.w r1,@(r0,r14)
	mov.l @(0x68,PC),r1
	jsr @r1
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8C0880D8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x18,r14),r5
	mov 0x02,r3 ; r3 set to 0x02
	mov.b @(0x04,r5),r0
	extu.b r0,r0
	cmp/ge r3,r0
	bf loc_8C0880F8
	mov.b @(0x04,r14),r0
	mov 0x00,r2 ; r2 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C088112,pc),r0 ; r0 set to 0x12c
	mov.b r2,@(r0,r14)
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C0880F8:
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C08813C,pc),r1 ; r1 set to 0x8C154498
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused return
loc_8c088108:
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8c08810c:
	#data 0x1900
loc_8c08810e:
	#data 0x00dc
loc_8c088110:
	#data 0x00c0
loc_8c088112:
	#data 0x012c
loc_8c088114:
	#data 0x01a3
loc_8c088116:
	#data 0x0130
loc_8c088118:
	#data 0x041c
loc_8c08811a:
	#data 0x019c
loc_8c08811c:
	#data 0x01ac
	#align4

loc_8C088120:
	#data bank12.loc_8c129560
loc_8C088124:
	#data bank12.loc_8c1294C8
loc_8C088128:
	#data bank15.loc_8c154480
loc_8c08812c:
	#data 0x3FD55555
loc_8C088130:
	#data 0x8C26A524
loc_8C088134:
	#data 0x8C2896B0
loc_8C088138:
	#data bank03.loc_8c034e8c
loc_8C08813C:
	#data bank15.loc_8c154498

;==============================================
loc_8C088140:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C088244,pc),r3 ; r3 set to 0x8C034DEe
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0881De
	mov.b @(0x05,r14),r0
	mov.l @(loc_8C088248,pc),r1 ; r1 set to 0x41C80000
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C088236,pc),r0 ; r0 set to 0xB4
	lds r1,fpul
	mov.w r0,@(0x1C,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	mov.l @(loc_8C08824C,pc),r1 ; r1 set to 0x43766DB6
	lds r1,fpul
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr1 ; r1 ??? bc r14 is ???	
	fsts fpul,fr2
	fadd fr2,fr1
	fmov.s fr1,@(r0,r14)
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r14),r4
	mov.l @(loc_8C088250,pc),r0 ; r0 set to 0x8C1544Ac
	extu.b r4,r3 ; r3 ??? bc r4 is ???	
	shll2 r3
	shll r3
	extu.b r4,r4
	fmov.s @(r0,r3),fr4
	tst r4,r4
	bf loc_8C0881A4
	mov.w @(loc_8C088238,pc),r0 ; r0 set to 0x20c
	mov.l @r15,r2
	mov.l @(r0,r2),r3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr0 ; r0 ??? bc r14 is ???	
	fmov.s @(r0,r3),fr1
	fcmp/gt fr0,fr1
	bt loc_8C0881Ae
	bra loc_8C0881B0
	nop

loc_8c0881a4:
	mov.w @(loc_8C08823A,pc),r0
	mov.l @r15,r2
	mov.w @(r0,r2),r3
	tst r3,r3
	bt loc_8c0881b0

loc_8c0881ae:
	fneg fr4

loc_8c0881b0:
	mov 0x5C,r0
	fmov.s fr4,@(r0,r14) 
	mov 0x23,r0
	mov.b @(r0,r14),r3
	mov 0x17,r5
	mov.l @(bank08.loc_8c088254,pc),r0
	mov 0x04,r6
	extu.b r3,r3
	shll2 r3
	shll r3
	fmov.s @(r0,r3),fr3
	mov 0x60,r0
	mov.l @(bank08.loc_8c08825c,pc),r3
	fmov.s fr3,@(r0,r14) 
	mov 0x68,r0
	fldi0 fr3
	fmov.s fr3,@(r0,r14) 
	mova @(loc_8C088258,pc),r0 
	fmov.s @r0,fr3
	mov 0x6C,r0
	fmov.s fr3,@(r0,r14) 
	jsr @r3
	mov r14,r4

loc_8C0881DE:
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C088260,pc),r2 ; r2 set to 0x8C045748
	jmp @r2
	mov.l @r15+,r14

loc_8C0881EA:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(0x05,r13),r0
	tst r0,r0
	bf/s loc_8C0882C2
	mov r4,r14
	mov.w @(loc_8C08823C,pc),r0 ; r0 set to 0x19f
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C0882C2
	mov.w @(loc_8C08823E,pc),r0 ; r0 set to 0x2E4
	mov.l @(r0,r13),r3
	tst r3,r3
	bf loc_8C0882C2
	mov.w @(loc_8C088240,pc),r0 ; r0 set to 0x19e
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8C088268
	mov.l @(loc_8C088264,pc),r3 ; r3 set to 0x8C05264c
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8C0882C2
	mov.b @(0x05,r14),r0
	mov r13,r5
	mov r14,r4
	add 0x01,r0 ; r0 set to 0x19f
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C08823E,pc),r0 ; r0 set to 0x2E4
	mov.l @(r0,r13),r3 ; r3 ??? bc r13 is ???	
	add 0x01,r3
	mov.l r3,@(r0,r13)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8C0884D8
	mov.l @r15+,r14

;##############################################
loc_8C088236:
	#data 0x00B4
loc_8C088238:
	#data 0x020c
loc_8c08823a:
	#data 0x0130
loc_8C08823C:
	#data 0x019f
loc_8C08823E:
	#data 0x02E4
loc_8C088240:
	#data 0x019e
	#align4

loc_8C088244:
	#data bank03.loc_8c034dee
loc_8C088248:
	#data 0x41C80000
loc_8C08824C:
	#data 0x43766DB6
loc_8C088250:
	#data bank15.loc_8c1544Ac
loc_8C088254:
	#data bank15.loc_8c1544B0
loc_8c088258:
	#data 0xBE892492
loc_8C08825C:
	#data bank03.loc_8c034e8c
loc_8C088260:
	#data bank04.loc_8c045748
loc_8C088264:
	#data bank05.loc_8c05264c

;----------------------------------------------
loc_8C088268:
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
	tst r0,r0
	bt loc_8C0882C2
	mov r13,r5
	bsr loc_8C088576
	mov r14,r4
	bsr loc_8C088504
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8C088378,pc),r3 ; r3 set to 0x8C045748
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0882C2:
	mov 0x04,r0 ; r0 set to 0x04
	mov.b r0,@(0x05,r14)
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x06,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C0882D2:
	mov.l r14,@-r15
	mov.w @(0x90,PC),r0
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(r0,r13),r14
	add 0xF0,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c08835e
	mov r5,r12
	mov.b @(0x5,r13),r0
	mov 0x0E,r5
	mov.l @(0x8C,PC),r3
	mov 0x00,r6
	add 0x01,r0
	mov.b r0,@(0x5,r13)
	mov 0x64,r0
	fmov @(r0,r13),fr3
	mov 0x50,r0
	fmov fr3,@(r0,r13)
	mov 0x70,r0
	fmov @(r0,r13),fr3
	mov 0x54,r0
	fmov fr3,@(r0,r13)
	jsr @r3
	mov r14,r4
	mov.l @(0x74,PC),r2
	mov r14,r5
	jsr @r2
	mov r13,r4
	mov.w @(0x54,PC),r0
	mov 0x01,r5
	mov.l @(r0,r12),r3
	mov.w @(0x50,PC),r0
	mov.l r3,@(r0,r13)
	add 0xE4,r0
	mov.w r0,@(0x1C,r13)
	mov.w @(0x46,PC),r0
	mov.l @(0x60,PC),r3
	jsr @r3
	mov.l @(r0,r12),r4
	mov.w @(0x42,PC),r0
	mov 0x06,r2
	mov.w @(0x40,PC),r3
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.b r3,@(r0,r12)
	mov 0x01,r2
	mov.b r3,@(r0,r14)
	add 0xF3,r0
	mov.b r2,@(r0,r12)
	mov 0xFF,r3
	mov.w @(0x30,PC),r0
	mov.b r3,@(r0,r12)
	mov.w @(0x2E,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c08835e
	mov 0x6C,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	fmov fr3,@(r0,r14)

loc_8C08835E:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c088368:
	#data 0x01b0
loc_8c08836a:
	#data 0x01c8
loc_8c08836c:
	#data 0x00d0
loc_8c08836e:
	#data 0x01f6
loc_8c088370:
	#data 0x00c0
loc_8c088372:
	#data 0x015a
loc_8c088374:
	#data 0x01f9
	#align4

loc_8C088378:
	#data bank04.loc_8c045748
loc_8C08837C:
	#data bank03.loc_8c034e8c
loc_8C088380:
	#data bank05.loc_8c05248e
loc_8C088384:
	#data bank05.loc_8c050552

;==============================================
loc_8C088388:
	mov.l r14,@-r15
	mov.w @(0x108,PC),r0
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(r0,r13),r14
	mov.w @(0xFE,PC),r0
	mov.l @(r0,r13),r3
	mov.l @(r0,r3),r2
	cmp/eq r13,r2
	bf.s loc_8c08841a
	mov 0x00,r12
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c08841a
	mov.w @(0xEC,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0883ba
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt loc_8c08841a

loc_8C0883BA:
	bsr loc_8c0884d8
	mov r13,r4
	mov.l @(0xE8,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8c0883ce
	mov.w @(0x1C,r13),r0
	add 0xFD,r0
	mov.w r0,@(0x1C,r13)

loc_8C0883CE:
	mov.w @(0x1C,r13),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r13)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c088426
	mov.w @(0xBE,PC),r0
	mov 0x08,r3
	mov.b r12,@(r0,r14)
	add 0xF9,r0
	mov.b r3,@(r0,r14)
	mov.w @(0xB6,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bf loc_8c0883f4
	mov.w @(0xAC,PC),r0
	mov 0x07,r2
	bra loc_8c08840e
	mov.b r2,@(r0,r14)

loc_8C0883F4:
	mov.w @(0xA8,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c088408
	mov.l @(0xAC,PC),r2
	jsr @r2
	mov r14,r4
	bra loc_8c08840e
	nop 

loc_8C088408:
	mov.l @(0xA4,PC),r2
	jsr @r2
	mov r14,r4

loc_8C08840E:
	mov.b @(0x4,r13),r0
	add 0x01,r0
	mov.b r0,@(0x4,r13)
	mov.w @(0x8A,PC),r0
	bra loc_8c088426
	mov.b r12,@(r0,r13)

loc_8C08841A:
	mov.b @(0x5,r13),r0
	add 0x01,r0
	mov.b r0,@(0x5,r13)
	mov r12,r0
	nop 
	mov.b r0,@(0x6,r13)

loc_8C088426:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C088430:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	tst r0,r0
	bf loc_8c088478
	mov.b @(0x6,r14),r0
	mov 0x0A,r3
	mov 0x00,r2
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov 0x31,r0
	mov.b r2,@(r0,r14)
	mova @(0x64,PC),r0
	fmov @r0,fr4
	mov 0x64,r0
	fmov @(r0,r14),fr3
	mov 0x50,r0
	mov.l @(0x60,PC),r3
	mov 0x17,r5
	fmul fr4,fr3
	mov 0x05,r6
	fmov fr3,@(r0,r14)
	mov 0x70,r0
	fmov @(r0,r14),fr3
	mov 0x54,r0
	fmul fr4,fr3
	fmov fr3,@(r0,r14)
	mova @(0x48,PC),r0
	fmov @r0,fr3
	mov.w @(0x30,PC),r0
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_8C088478:
	mov.l @(0x44,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c088490
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x12,PC),r0
	mov.b r3,@(r0,r14)

loc_8C088490:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c088496:
	#data 0x00d0
loc_8c088498:
	#data 0x01cc
loc_8c08849a:
	#data 0x019f
loc_8c08849c:
	#data 0x01f6
loc_8c08849e:
	#data 0x0420
loc_8c0884a0:
	#data 0x01f9
loc_8c0884a2:
	#data 0x012c
loc_8c0884a4:
	#data 0x0108
	#align4

loc_8C0884A8:
	#data bank05.loc_8c0505B8
loc_8C0884AC:
	#data bank05.loc_8c051648
loc_8C0884B0:
	#data bank05.loc_8c0517Be
loc_8C0884B4:
	#data 0x3F99999a
loc_8C0884B8:
	#data 0x3F000000
loc_8C0884BC:
	#data bank03.loc_8c034e8c
loc_8C0884C0:
	#data bank03.loc_8c034dee

;==============================================
loc_8C0884C4:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0885DC,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8C0884D2:
	mov.l @(loc_8C0885E8,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8C0884D8:
	mov.w @(loc_8C0885DE,pc),r0 ; r0 set to 0x1B0
	mov 0x00,r2 ; r2 set to 0x00
	mov.l @(r0,r4),r5
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0885E0,pc),r0 ; r0 set to 0x13c
	mov.b @(r0,r5),r3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r5),fr2 ; r2 ??? bc r5 is ???	
	mova @(loc_8C0885EC,pc),r0  ; r0 set to 0x8C0885Ec
	extu.b r3,r3
	fmov.s @r0,fr0 ; r0 ??	
	cmp/gt r3,r2
	mov 0x38,r0 ; r0 set to 0x38
	addc r2,r3
	shar r3
	lds r3,fpul
	float fpul,fr3
	fmac fr0,fr3,fr2
	rts
	fmov.s fr2,@(r0,r4)

;==============================================
loc_8c088504:
	mov 0x20,r0
	mov.l @(bank08.loc_8c0885f0,pc),r6
	mov.b @(r0,r4),r3
	mov 0x1E,r7
	tst r3,r3
	bt/s loc_8c08853e
	mov 0x00,r5
	mov.b @(r0,r4),r0
	extu.b r0,r0
	add 0xFF,r0
	shll2 r0
	fmov.s @(r0,r6),fr3
	mov 0x64,r0
	fmov.s @(r0,r4),fr2
	mov 0x50,r0
	fmul fr2,fr3
	fmov.s fr3,@(r0,r4) 
	mov 0x20,r0
	mov.b @(r0,r4),r3
	add 0x01,r3
	mov.b r3,@(r0,r4) 
	extu.b r3,r3
	cmp/gt r7,r3
	bf loc_8c08853e
	mov.b r5,@(r0,r4) 
	mov 0x64,r0
	fmov.s @(r0,r4),fr3
	mov 0x50,r0
	fmov.s fr3,@(r0,r4) 

loc_8c08853e:
	mov 0x21,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c088572
	mov.b @(r0,r4),r0
	extu.b r0,r0
	add 0xFF,r0
	shll2 r0
	fmov.s @(r0,r6),fr3
	mov 0x70,r0
	fmov.s @(r0,r4),fr2
	mov 0x54,r0
	fmul fr2,fr3
	fmov.s fr3,@(r0,r4) 
	mov 0x21,r0
	mov.b @(r0,r4),r3
	add 0x01,r3
	mov.b r3,@(r0,r4) 
	extu.b r3,r3
	cmp/gt r7,r3
	bf loc_8c088572
	mov.b r5,@(r0,r4) 
	mov 0x70,r0
	fmov.s @(r0,r4),fr3
	mov 0x54,r0
	fmov.s fr3,@(r0,r4) 

loc_8c088572:
	rts
	nop

loc_8C088576:
	mov 0x5C,r0 ; r0 set to 0x5c
	fldi0 fr3
	fmov.s @(r0,r4),fr2
	mov.l @(loc_8C0885F4,pc),r7 ; r7 set to 0x8C26A518
	fcmp/gt fr2,fr3
	bf/s loc_8C08859a
	mov 0x00,r6 ; r6 set to 0x00
	mova @(loc_8C0885F8,pc),r0  ; r0 set to 0x8C0885F8
	fmov.s @r0,fr3
	mov.w @(loc_8C0885E2,pc),r0 ; r0 set to 0x88
	fmov.s @(r0,r7),fr2
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r4),fr1
	fadd fr3,fr2
	fcmp/gt fr1,fr2
	bt loc_8C0885Ac
	bra loc_8C0885Bc
	nop

loc_8c08859a:
	mova @(loc_8C0885FC,pc),r0 
	fmov.s @r0,fr3
	mov.w @(loc_8C0885E4,pc),r0
	fmov.s @(r0,r7),fr2
	mov 0x34,r0
	fmov.s @(r0,r4),fr1
	fadd fr3,fr2
	fcmp/gt fr2,fr1
	bf loc_8c0885bc

loc_8c0885ac:
	mov 0x5C,r0
	fmov.s @(r0,r4),fr3
	mov 0x01,r3
	add 0x01,r6
	fneg fr3
	fmov.s fr3,@(r0,r4) 
	mov 0x20,r0
	mov.b r3,@(r0,r4) 

loc_8C0885BC:
	mov 0x60,r0 ; r0 set to 0x60
	fldi0 fr3
	fmov.s @(r0,r4),fr2
	fcmp/gt fr2,fr3
	bt loc_8C088604
	mova @(loc_8C088600,pc),r0  ; r0 set to 0x8C088600
	fmov.s @r0,fr3
	mov.w @(loc_8C0885E6,pc),r0 ; r0 set to 0x90
	fmov.s @(r0,r7),fr2
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r4),fr1
	fadd fr3,fr2
	fcmp/gt fr2,fr1
	bt loc_8C088616
	bra loc_8C088626
	nop

;##############################################
loc_8C0885DC:
	#data 0x012c
loc_8C0885DE:
	#data 0x01B0
loc_8C0885E0:
	#data 0x013c
loc_8C0885E2:
	#data 0x0088
loc_8c0885e4:
	#data 0x008c
loc_8C0885E6:
	#data 0x0090
	#align4

loc_8C0885E8:
	#data bank04.loc_8c0450C0
loc_8C0885EC:
	#data 0x40092492
loc_8C0885F0:
	#data bank15.loc_8c1544C4
loc_8C0885F4:
	#data 0x8C26A518
loc_8C0885F8:
	#data 0x42A00000
loc_8c0885fc:
	#data 0xC2A00000
loc_8C088600:
	#data 0xC2CDB6Db

;----------------------------------------------
loc_8c088604:
	mova @(loc_8C08862C,pc),r0 
	fmov.s @r0,fr3
	mov.w @(loc_8C08862A,pc),r0
	fmov.s @(r0,r5),fr2
	mov 0x38,r0
	fmov.s @(r0,r4),fr1
	fadd fr3,fr2
	fcmp/gt fr1,fr2
	bf loc_8c088626

loc_8c088616:
	mov 0x60,r0
	fmov.s @(r0,r4),fr3
	mov 0x01,r3
	add 0x01,r6
	fneg fr3
	fmov.s fr3,@(r0,r4)
	mov 0x21,r0
	mov.b r3,@(r0,r4)

loc_8C088626:
	rts
	tst r6,r6

;==============================================
loc_8c08862a:
	mov.b @(r0,r1),r4

loc_8c08862c:
	bsr loc_8c0893e6
	shld r12,r2
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x164,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x01,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c088656
	mov r0,r4
	mov.l @(0x154,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.b r3,@(r0,r4)

loc_8c088656:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C08865E:
	mov r4,r3
	mov.l @(loc_8C0887A4,pc),r1 ; r1 set to 0x8C15453c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C088670:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C088788,pc),r3 ; r3 set to 0x1901
	mov.w @(loc_8C08878A,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C08878A,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(0x18,r14),r4
	mov.b r0,@(0x04,r14)
	mov 0x26,r0 ; r0 set to 0x26
	mov.w r3,@(r0,r14)
	mov.w @(loc_8C08878C,pc),r0 ; r0 set to 0xC0
	mov.l @(loc_8C0887A8,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r4,r2 ; r2 ??? bc r4 is ???	
	mov.w @(loc_8C08878E,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C088790,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0887AC,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x09,r3 ; r3 set to 0x09
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r4),r2
	mov 0x42,r4 ; r4 set to 0x42
	mov.b r3,@(r0,r14)
	mov 0x17,r5 ; r5 set to 0x17
	mov.w @(loc_8C088792,pc),r0 ; r0 set to 0x19c
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x19d
	mov.b r4,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
	mov 0x00,r4 ; r4 set to 0x00
	mov.w @(loc_8C088794,pc),r0 ; r0 set to 0x1A1
	mov r4,r6 ; r6 set to 0x00
	add 0x37,r3
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1Ac
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19e
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(loc_8C0887B0,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(loc_8C0887B4,pc),r2 ; r2 set to 0x8C034E8c
	jsr @r2
	mov r14,r4 ; r4 ??? bc r14 is ???	
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8C088718:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x02,r3 ; r3 set to 0x02, r3 set to 0x02
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov.b @(0x04,r4),r0
	extu.b r0,r0 ; r0 set to 0x88
	cmp/ge r3,r0
	bf/s loc_8C08873c
	mov 0x00,r13 ; r13 set to 0x00, r13 set to 0x00
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0x89
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C08878E,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	bra loc_8C08882c
	mov.b r13,@(r0,r14)

loc_8C08873C:
	mov.w @(loc_8C088796,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r4),r3
	tst r3,r3
	bf loc_8C08874a
	mova @(loc_8C0887B8,pc),r0  ; r0 set to 0x8C0887B8
	bra loc_8C08874e
	fmov.s @r0,fr3

loc_8C08874A:
	mova @(loc_8C0887BC,pc),r0  ; r0 init to 0x8C0887Bc
	fmov.s @r0,fr3

loc_8C08874E:
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r4),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0887C0,pc),r0  ; r0 set to 0x8C0887C0, r0 set to 0x8C0887C0
	fmov.s @r0,fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r4),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C088798,pc),r0 ; r0 set to 0x141, r0 set to 0x141
	mov.b @(r0,r4),r3
	tst r3,r3
	bf/s loc_8C0887C4
	fldi1 fr15
	mov.b @(0x04,r14),r0
	mov 0x01,r6 ; r6 set to 0x01, r6 set to 0x01
	mov.l @(loc_8C0887B4,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	add 0x01,r0 ; r0 set to 0x142, r0 set to 0x142
	mov r14,r4
	mov.b r0,@(0x04,r14)
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	fmov.s fr15,@(r0,r14)
	lds.l @r15+,pr
	fmov.s @r15+,fr15
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C088788:
	#data 0x1901
loc_8C08878A:
	#data 0x00Dc
loc_8C08878C:
	#data 0x00C0
loc_8C08878E:
	#data 0x012c
loc_8C088790:
	#data 0x01A3
loc_8C088792:
	#data 0x019c
loc_8C088794:
	#data 0x01A1
loc_8C088796:
	#data 0x0130
loc_8C088798:
	#data 0x0141
	#align4

loc_8C08879C:
	#data bank04.loc_8c044F12
loc_8C0887A0:
	#data loc_8C08865e
loc_8C0887A4:
	#data bank15.loc_8c15453c
loc_8C0887A8:
	#data bank12.loc_8c129560
loc_8C0887AC:
	#data bank12.loc_8c1294C8
loc_8C0887B0:
	#data 0x8C2896B0
loc_8C0887B4:
	#data bank03.loc_8c034e8c
loc_8C0887B8:
	#data 0xC2C15555
loc_8C0887BC:
	#data 0x42C15555
loc_8C0887C0:
	#data 0x43340000

;==============================================
loc_8C0887C4:
	mov.l @(loc_8C088864,pc),r2 ; r2 set to 0x8C034DEe
	jsr @r2
	mov r14,r4
	mov.w @(loc_8C08885E,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C0887E8
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C0887E4
	fldi1 fr3
	fadd fr3,fr3
	mov 0x50,r0 ; r0 set to 0x50
	bra loc_8C0887E8
	fmov.s fr3,@(r0,r14)

loc_8c0887e4:
	mov 0x50,r0
	fmov.s fr15,@(r0,r14) 

loc_8c0887e8:
	mov 0x20,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c08881e
	mov.w @(loc_8C088860,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c08881e
	mov.b r13,@(r0,r14) 
	add 0x61,r0
	mov 0x38,r3
	mov.b r3,@(r0,r14) 
	add 0x0B,r0
	mov.w r13,@(r0,r14) 
	add 0xF2,r0
	mov.b r13,@(r0,r14) 
	add 0x26,r0
	mov.l @(loc_8C088868,pc),r3
	mov.l r13,@(r0,r14) 
	mov.b @(0x02,r14),r0 
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2) 

loc_8c08881e:
	lds.l @r15+,pr
	mov.l @(bank08.loc_8c08886c,pc),r3
	mov r14,r4
	fmov.s @r15+,fr15
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C08882C:
	lds.l @r15+,pr
	fmov.s @r15+,fr15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C088836:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x28,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c088852
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x10,PC),r0
	mov.b r3,@(r0,r14)

loc_8C088852:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C088858:
	mov.l @(loc_8C088870,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C08885E:
	#data 0x0141
loc_8c088860:
	#data 0x0140
loc_8c088862:
	#data 0x012C
	#align4

loc_8C088864:
	#data bank03.loc_8c034dee
loc_8c088868:
	#data 0x8C2896B0
loc_8C08886C:
	#data bank04.loc_8c045748
loc_8C088870:
	#data bank04.loc_8c0450C0

;==============================================
;Unused
loc_8c088874:
#data 0x7FF44F22
#data 0x60531F42
#data 0xD3430009
#data 0x80F4E501
#data 0xE6002F60
#data 0x6463430b
#data 0x8D0B2008
#data 0xD33F6403
#data 0x314CE120
#data 0x52F21434
#data 0x84F41426
#data 0xE0232100
#data 0x043463F0
#data 0x4F267F0c
#data 0x6043000b

;-------------------------------------------------------------------------------
loc_8C0888B0:
	mov r4,r3
	mov.l @(loc_8C088994,pc),r1 ; r1 set to 0x8C15464c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0888C2:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C088980,pc),r3 ; r3 set to 0x1902
	mov.w @(loc_8C088982,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C088982,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(0x18,r14),r4
	mov.b r0,@(0x04,r14)
	mov 0x26,r0 ; r0 set to 0x26
	mov.w r3,@(r0,r14)
	mov.w @(loc_8C088984,pc),r0 ; r0 set to 0xC0
	mov.l @(loc_8C088998,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r4,r2 ; r2 ??? bc r4 is ???	
	mov.w @(loc_8C088986,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C088988,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C08899C,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x08,r3 ; r3 set to 0x08
	mov r14,r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r4),r2
	mov 0x10,r6 ; r6 set to 0x10
	mov.b r3,@(r0,r14)
	mov r4,r2
	mov.w @(loc_8C088986,pc),r0 ; r0 set to 0x12c
	add 0x34,r2
	mov.l @(loc_8C08899C,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r1
	mov.b r5,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x130
	mov 0x00,r5 ; r5 set to 0x00
	mov.w r5,@(r0,r14)
	add 0x0C,r0 ; r0 set to 0x13c
	mov.b r6,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13d
	mov.b r6,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13e
	mov.b r6,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13f
	mov.b r6,@(r0,r14)
	mov 0x14,r0 ; r0 set to 0x14
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mova @(loc_8C0889A4,pc),r0  ; r0 set to 0x8C0889A4
	mov.l @(loc_8C0889A0,pc),r7 ; r7 set to 0x8C1545Cc
	fmov.s @r0,fr4
	mov.w @(loc_8C08898A,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r4),r3 ; r3 ??? bc r4 is ???	
	tst r3,r3
	bf/s loc_8C0889A8
	mov r7,r6 ; r6 set to 0x8C1545Cc
	mov 0x23,r3 ; r3 set to 0x23
	fmov fr4,fr0 ; r0 ??? bc r4 is ???	
	add r14,r3 ; r3 ??? bc r14 is ???	
	mov.b @r3,r3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2
	extu.b r3,r3
	shll2 r3
	add r3,r6 ; r6 ??? bc r3 is ???	
	mov.w @r6,r3
	lds r3,fpul
	float fpul,fr3
	bra loc_8C0889C2
	fmac fr0,fr3,fr2

;##############################################
loc_8C088980:
	#data 0x1902
loc_8C088982:
	#data 0x00Dc
loc_8C088984:
	#data 0x00C0
loc_8C088986:
	#data 0x012c
loc_8C088988:
	#data 0x01A3
loc_8C08898A:
	#data 0x0130
	#align4

loc_8C08898C:
	#data bank04.loc_8c044F12
loc_8C088990:
	#data loc_8C0888B0
loc_8C088994:
	#data bank15.loc_8c15464c
loc_8C088998:
	#data bank12.loc_8c129560
loc_8C08899C:
	#data bank12.loc_8c1294C8
loc_8C0889A0:
	#data bank15.loc_8c1545Cc
loc_8C0889A4:
	#data 0x3FD55555

;----------------------------------------------
loc_8c0889a8:
	mov 0x23,r2
	add r14,r2
	mov.b @r2,r2
	mov 0x34,r0
	fmov.s @(r0,r14),fr2
	extu.b r2,r2
	shll2 r2
	add r2,r6
	mov.w @r6,r3
	lds r3,fpul 
	float fpul,fr3
	fmul fr4,fr3
	fsub fr3,fr2

loc_8c0889c2:
	mov 0x23,r3
	fmov.s fr2,@(r0,r14) 
	add r14,r3
	mov r14,r2
	mov 0x38,r0
	add r0,r2
	mov.l r2,@-r15
	mov.b @r3,r3
	extu.b r3,r3
	shll2 r3
	add r3,r7
	mov.w @(0x02,r7),r0 
	mov r0,r3
	lds r3,fpul 
	mov.l @r15+,r3
	mova @(loc_8C088ACC,pc),r0 
	fmov.s @r0,fr0
	float fpul,fr3
	fmov.s @r3,fr2
	mov.w @(loc_8C088AC2,pc),r0
	fmac fr0,fr3,fr2
	fmov.s fr2,@r3
	mov.w @(r0,r4),r2
	tst r2,r2
	bt loc_8c088a04
	mov 0x23,r0
	mov.b @(r0,r14),r0
	mov 0x23,r1
	add r14,r1
	neg r0,r0
	add 0x20,r0
	and 0x1F,r0 
	mov.b r0,@r1

loc_8c088a04:
	mov 0x23,r0
	mov.b @(r0,r14),r3
	mov 0x22,r0
	mov 0x42,r4
	mov.b r3,@(r0,r14) 
	mov 0x31,r3
	mov.w @(loc_8C088AC4,pc),r0
	mov 0x02,r6
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
	mov.l @(loc_8C088AD0,pc),r3
	mov.l r5,@(r0,r14) 
	mov 0x17,r5
	mov.b @(0x02,r14),r0 
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2) 
	mov.l @(bank08.loc_8c088ad4,pc),r2
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr 
	mov r14,r4
	mov.l @r15+,r14

loc_8C088A4A:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov 0x02,r3 ; r3 set to 0x02
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/ge r3,r0
	bt loc_8C088A7c
	mov.l @(loc_8C088AD8,pc),r3 ; r3 set to 0x8C033718
	mov.w @(loc_8C088AC6,pc),r5 ; r5 set to 0x708
	jsr @r3
	mov r14,r4
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bt loc_8C088A72
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	bra loc_8C088A8e
	mov.w r0,@(0x1C,r14)

loc_8c088a72:
	mov.l @(bank08.loc_8c088adc,pc),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf bank08.loc_8c088a8e

loc_8C088A7C:
	mov.b @(0x04,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C088AC8,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C088A8E:
	mov 0x22,r0 ; r0 set to 0x22
	mov r14,r4
	mov.b @(r0,r14),r2
	mov.l @(loc_8C088AE0,pc),r0 ; r0 set to 0x8C15454c
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	mov 0x48,r0 ; r0 set to 0x48
	mov.l r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @(loc_8C088AE4,pc),r3 ; r3 set to 0x8C045748
	jmp @r3
	mov.l @r15+,r14

;Unused Return
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C088AAE:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C088AC8,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C088ABC:
	mov.l @(loc_8C088AE8,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c088ac2:
	#data 0x0130
loc_8c088ac4:
	#data 0x019c
loc_8C088AC6:
	#data 0x0708
loc_8C088AC8:
	#data 0x012c
	#align4

loc_8c088acc:
	#data 0x40092492
loc_8c088ad0:
	#data 0x8C2896B0
loc_8C088AD4:
	#data bank03.loc_8c034e8c
loc_8C088AD8:
	#data bank03.loc_8c033718
loc_8C088ADC:
	#data bank03.loc_8c0332E0
loc_8C088AE0:
	#data bank15.loc_8c15454c
loc_8C088AE4:
	#data bank04.loc_8c045748
loc_8C088AE8:
	#data bank04.loc_8c0450C0

;==============================================
;Unused
loc_8c08aec:
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
	bt.s loc_8c088b26
	mov r0,r4
	mov.l @(0x114,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.w @(0x100,PC),r2
	mov.l r3,@(0x10,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x26,r0
	mov.l @r15,r3
	mov.l r3,@(0x18,r4)
	mov.w r2,@(r0,r4)
	mov.w @(0xF2,PC),r0
	mov.l @r15,r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)

loc_8c088b26:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;-------------------------------------------------------------------------------
loc_8c088b2e:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r4
	mov.l r12,@-r15
	mov r4,r13
	mov.l r11,@-r15
	mov 0x10,r11
	mov.l r10,@-r15
	mov r4,r12
	mov.l r9,@-r15
	mov 0x01,r10
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(bank08.loc_8c088c1c,pc),r8
	mov.w @(loc_8C088C12,pc),r9

loc_8c088b4e:
	mov 0x01,r5
	mov 0x02,r6
	jsr @r8
	mov r14,r4
	tst r0,r0
	bt/s loc_8c088b76
	mov r0,r4
	mov 0x20,r0
	mov.l @(bank08.loc_8c088c20,pc),r2
	mov.l r2,@(0x10,r4) 
	mov.b r10,@(r0,r4) 
	mov 0x26,r0
	mov.l r14,@(0x18,r4) 
	mov.w r9,@(r0,r4) 
	mov.w @(loc_8C088C14,pc),r0
	mov.b @(r0,r14),r3
	mov.b r3,@(r0,r4) 
	mov 0x23,r0
	mov.b r12,@(r0,r4) 
	add 0x01,r12

loc_8c088b76:
	add 0x01,r13
	exts.b r13,r3
	cmp/ge r11,r3
	bf loc_8c088b4e
	lds.l @r15+,pr 
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

loc_8C088B90:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C088C24,pc),r4 ; r4 set to 0x8C28C618
	tst r3,r3
	bf loc_8C088BB4
	mov.w @(loc_8C088C16,pc),r3 ; r3 set to 0xCc
	mov.l @(loc_8C088C28,pc),r1 ; r1 set to 0x8C15465c
	add r14,r3 ; r3 ??? bc r14 is ???	
	mov.l r3,@r4 ; r4 ??? bc r3 is ???	
	mov r14,r4
	mov.b @(0x04,r14),r0
	extu.b r0,r0 ; r0 set to 0x20
	shll2 r0 ; r0 set to 0x80
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C088BB4:
	mov.w @(loc_8C088C16,pc),r2 ; r2 set to 0xCc
	mov.l @(loc_8C088C30,pc),r1 ; r1 set to 0x8C15466c
	add r14,r2 ; r2 ??? bc r14 is ???	
	mov.l r2,@r4
	mov r14,r4
	mov.w @(loc_8C088C16,pc),r2 ; r2 set to 0xCc
	mov.l @(0x18,r14),r3
	add r3,r2 ; r2 ??? bc r3 is ???	
	mov.l @(loc_8C088C2C,pc),r3 ; r3 set to 0x8C28C61c
	mov.l r2,@r3 ; r3 ??? bc r2 is ???	
	mov.b @(0x04,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C088BD4:
	mov.l @(0x18,r4),r3
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C088C38,pc),r6 ; r6 set to 0x8C15467c
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C088C34,pc),r0  ; r0 set to 0x8C088C34
	fmov.s @r0,fr4
	mov.w @(loc_8C088C18,pc),r0 ; r0 set to 0x130
	mov.l @(0x18,r4),r3
	mov.w @(r0,r3),r2
	tst r2,r2
	bf/s loc_8C088C3c
	mov r6,r5 ; r5 set to 0x8C15467c
	mov.w @(loc_8C088C1A,pc),r3 ; r3 set to 0x140
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r4),r2
	fmov.s @(r0,r4),fr2
	add r2,r3 ; r3 ??? bc r2 is ???	
	fmov fr4,fr0 ; r0 ??? bc r4 is ???	
	mov.b @r3,r3
	shll2 r3
	add r3,r5 ; r5 ??? bc r3 is ???	
	mov.w @r5,r3
	lds r3,fpul
	float fpul,fr3
	bra loc_8C088C56
	fmac fr0,fr3,fr2

;##############################################
loc_8c088c12:
	#data 0x1903
loc_8c088c14:
	#data 0x01A3
loc_8C088C16:
	#data 0x00Cc
loc_8C088C18:
	#data 0x0130
loc_8C088C1A:
	#data 0x0140
	#align4

loc_8C088C1C:
	#data bank04.loc_8c044F12
loc_8C088C20:
	#data loc_8C088B90
loc_8C088C24:
	#data 0x8C28C618
loc_8C088C28:
	#data bank15.loc_8c15465c
loc_8C088C2C:
	#data 0x8C28C61c
loc_8C088C30:
	#data bank15.loc_8c15466c
loc_8C088C34:
	#data 0x3FD55555
loc_8C088C38:
	#data bank15.loc_8c15467c

;----------------------------------------------
loc_8C088C3C:
	mov.w @(loc_8C088D4A,pc),r3 ; r3 set to 0x140
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r4),r2
	fmov.s @(r0,r4),fr2
	add r2,r3 ; r3 ??? bc r2 is ???	
	mov.b @r3,r3
	shll2 r3
	add r3,r5
	mov.w @r5,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fsub fr3,fr2

loc_8C088C56:
	fmov.s fr2,@(r0,r4)
	mov r4,r2
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	add r0,r2
	mov.l r2,@-r15
	mov.w @(loc_8C088D4A,pc),r2 ; r2 set to 0x140, r2 set to 0x140
	mov.l @(0x18,r4),r3
	add r3,r2 ; r2 ??? bc r3 is ???, r2 ??? bc r3 is ???	
	mov.b @r2,r2
	shll2 r2
	add r2,r6
	mov.w @(0x02,r6),r0
	mov r0,r3 ; r3 set to 0x38, r3 set to 0x38
	lds r3,fpul
	mov.l @r15+,r3 ; r3 ??? bc r15 is ???, r3 ??? bc r15 is ???	
	mova @(loc_8C088D50,pc),r0  ; r0 set to 0x8C088D50, r0 set to 0x8C088D50
	fmov.s @r0,fr0 ; r0 ??, r0 ??	
	float fpul,fr3
	fmov.s @r3,fr2
	fmac fr0,fr3,fr2
	rts
	fmov.s fr2,@r3

;-------------------------------------------------------------------------------
loc_8C088C82:
	mov.l @(0x18,r4),r2
	mov 0x34,r0
	fmov @(r0,r2),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x23,r0
	mov.b @(r0,r4),r3
	mova @(0xBC,PC),r0
	fmov @r0,fr2
	extu.b r3,r3
	mov.w @(0xAC,PC),r0
	shll2 r3
	shll2 r3
	shll r3
	lds r3,fpul
	mov.w @(r0,r4),r3
	float fpul,fr3
	tst r3,r3
	fmov fr3,fr4
	bf.s loc_8c088cb4
	fmul fr2,fr4
	fneg fr4

loc_8C088CB4:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mov 0x50,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	rts 
	fmov fr3,@(r0,r4)

;-------------------------------------------------------------------------------
loc_8C088CCE:
	mov.l @(0x88,PC),r5
	mov.l @r5,r3
	mov.b @(0x1,r3),r0
	mov 0x10,r3
	extu.b r0,r0
	cmp/ge r3,r0
	bt loc_8c088cf4
	mov.w @(0x1E,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r4)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c088cf4
	mov 0x01,r0
	mov.w r0,@(0x1E,r4)
	mov.l @r5,r2
	mov.b @(0x1,r2),r0
	add 0x01,r0
	mov.b r0,@(0x1,r2)

loc_8C088CF4:
	rts
	nop

;-------------------------------------------------------------------------------
loc_8C088CF8:
	mov.w @(0x50,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bf.s loc_8c088d20
	mov 0x01,r5
	mov.w @(0x48,PC),r0
	mov.b @(r0,r4),r3
	mova @(0x4C,PC),r0
	fmov @r0,fr2
	mov 0x34,r0
	extu.b r3,r3
	lds r3,fpul
	mov.l @(0x48,PC),r3
	float fpul,fr3
	fmov @r3,fr1
	fmul fr2,fr3
	fsub fr3,fr1
	fmov @(r0,r4),fr3
	fcmp/gt fr3,fr1
	bt loc_8c088d44               ; loc_8c088cf8+0x4c

loc_8C088D20:
	mov.w @(0x28,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c088d46
	mov.w @(0x22,PC),r0
	mov.l @(0x34,PC),r2
	mov.b @(r0,r4),r3
	mova @(0x24,PC),r0
	fmov @r0,fr0
	mov 0x34,r0
	extu.b r3,r3
	fmov @r2,fr2
	lds r3,fpul
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov @(r0,r4),fr3
	fcmp/gt fr2,fr3
	bf loc_8c088d46

loc_8C088D44:
	mov 0x00,r5

loc_8C088D46:
	rts 
	mov r5,r0

;-------------------------------------------------------------------------------
loc_8C088D4A:
	#data 0x0140
loc_8C088D4c:
	#data 0x0130
loc_8C088D4e:
	#data 0x013F
	#align4

loc_8C088D50:
	#data 0x40092492
loc_8C088D54:
	#data 0x3FD55555
loc_8C088D58:
	#data 0x8C28C618
loc_8C088D5c:
	#data 0x8C26A5A0
loc_8C088D60:
	#data 0x8C26A5A4

;==============================================
loc_8C088D64:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C088E74,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.l @(loc_8C088E84,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C088E74,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C088E76,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C088E78,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C088E88,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @(loc_8C088E8C,pc),r6 ; r6 set to 0x8C28C618
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	fldi1 fr3
	mov.b r3,@(r0,r14)
	mov 0x0B,r3 ; r3 set to 0x0b
	mov.w @(loc_8C088E76,pc),r0 ; r0 set to 0x12c
	mov.b r5,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr3,@(r0,r14)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s fr3,@(r0,r14)
	mov.l @r6,r3 ; r3 ??	
	mov r5,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x03,r3)
	mov.l @r6,r3
	mov r4,r0 ; r0 set to 0x01
	nop
	mov.b r0,@(0x01,r3)
	mov.w r0,@(0x1E,r14)
	bsr loc_8C088B2e
	mov r14,r4 ; r4 ??? bc r14 is ???	
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8C088E04:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov 0x02,r3 ; r3 set to 0x02, r3 set to 0x02
	mov.b @(0x04,r4),r0
	extu.b r0,r0 ; r0 set to 0x01
	cmp/ge r3,r0
	bf loc_8C088E28
	mov.b @(0x04,r14),r0
	mov 0x00,r2 ; r2 set to 0x00, r2 set to 0x00
	add 0x01,r0 ; r0 set to 0x02
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C088E76,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	mov.b r2,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C088E28:
	mov.b @(0x05,r14),r0
	mov.l @(loc_8C088E90,pc),r1 ; r1 set to 0x8C154694
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C088BD4
	mov.l @r15+,r14

;unused return
loc_8c088e3e:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C088E44:
	mov.w @(loc_8C088E7A,pc),r0 ; r0 set to 0x158
	mov.l @(0x18,r4),r6
	mov.w @(loc_8C088E7C,pc),r3 ; r3 set to 0x1506
	mov.w @(r0,r6),r6
	extu.w r6,r6
	cmp/eq r3,r6
	bt/s loc_8C088E94
	mov 0x01,r5 ; r5 set to 0x01
	mov.w @(loc_8C088E7E,pc),r1 ; r1 set to 0x1508
	cmp/eq r1,r6
	bt loc_8C088E94
	mov.w @(loc_8C088E80,pc),r2 ; r2 set to 0x1507
	cmp/eq r2,r6
	bt loc_8C088E94
	mov.w @(loc_8C088E82,pc),r1 ; r1 set to 0x1509
	cmp/eq r1,r6
	bt loc_8C088E94
	mov.b @(0x05,r4),r0
	add 0x01,r0 ; r0 set to 0x159
	mov.b r0,@(0x05,r4)
	mov r5,r0 ; r0 set to 0x01
	nop
	rts
	mov.w r0,@(0x1C,r4)

;-------------------------------------------------------------------------------
loc_8C088E74:
	#data 0x00Dc
loc_8C088E76:
	#data 0x012c
loc_8C088E78:
	#data 0x01A3
loc_8C088E7A:
	#data 0x0158
loc_8C088E7C:
	#data 0x1506
loc_8C088E7E:
	#data 0x1508
loc_8C088E80:
	#data 0x1507
loc_8C088E82:
	#data 0x1509
	#align4

loc_8C088E84:
	#data bank12.loc_8c129560
loc_8C088E88:
	#data bank12.loc_8c1294C8
loc_8C088E8C:
	#data 0x8C28C618
loc_8C088E90:
	#data bank15.loc_8c154694

;==============================================
loc_8C088E94:
	mov.l @(loc_8C088F4C,pc),r6 ; r6 set to 0x8C2895F0
	mov 0x3C,r0 ; r0 set to 0x3c
	mov r5,r1
	mov.w @(r0,r6),r3
	mov 0x3B,r0 ; r0 set to 0x3b
	mov.b @(r0,r6),r2
	extu.w r3,r3
	extu.b r2,r2
	shad r2, r1
	tst r1,r3
	bf loc_8C088EFc
	mov.l @(loc_8C088F50,pc),r2 ; r2 set to 0x8C28C618
	mov 0x00,r0 ; r0 set to 0x00
	mov.l @r2,r1
	mov.b r0,@(0x03,r1)
	mov.w @(loc_8C088F44,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8C088ECc
	mov.l @(0x18,r4),r1
	mov.w @(0x1C,r1),r0
	tst r5,r0
	bt loc_8C088EC6
	bra loc_8C088EDc
	fldi1 fr3

loc_8C088EC6:
	mova @(loc_8C088F54,pc),r0  ; r0 init to 0x8C088F54
	bra loc_8C088EDc
	fmov.s @r0,fr3

loc_8C088ECC:
	mov.l @(0x18,r4),r3
	mov.w @(0x1C,r3),r0
	tst r5,r0
	bt loc_8C088ED8
	bra loc_8C088EDc
	fldi1 fr3

loc_8c088ed8:
	mova @(loc_8C088F58,pc),r0 
	fmov.s @r0,fr3

loc_8c088edc:
	mov 0x54,r0
	fmov.s fr3,@(r0,r4) 
	mov.l @(0x18,r4),r3
	mov.w @(0x1C,r3),r0 
	cmp/pl r0
	bt loc_8c088ef8
	mov.b @(0x05,r4),r0 
	fldi1 fr3
	add 0x01,r0
	mov.b r0,@(0x05,r4) 
	mov 0x0A,r0
	mov.w r0,@(0x1C,r4) 
	mov 0x54,r0
	fmov.s fr3,@(r0,r4) 

loc_8c088ef8:
	bra bank08.loc_8c088cce
	nop 

loc_8C088EFC:
	rts
	nop

;-------------------------------------------------------------------------------
loc_8C088F00:
	mov.l @(0x4C,PC),r2
	mov 0x54,r1
	mov.w @(0x3E,PC),r0
	add r4,r1
	mov.l @r2,r3
	mov 0x54,r2
	fldi0 fr2
	add r4,r2
	mov.b r0,@(0x3,r3)
	mov.w @(0x1C,r4),r0
	fmov @r1,fr3
	mov r0,r3
	lds r3,fpul
	fneg fr3
	fadd fr2,fr3
	float fpul,fr1
	fdiv fr1,fr3
	fmov @r2,fr1
	fadd fr3,fr1
	fmov fr1,@r2
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c088f40
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x8,PC),r0
	mov.b r3,@(r0,r4)

loc_8C088F40:
	rts
	nop

;-------------------------------------------------------------------------------
loc_8C088F44:
	#data 0x01A3
loc_8C088F46:
	#data 0x00Ff
loc_8C088F48:
	#data 0x012c
	#align4

loc_8C088F4C:
	#data 0x8C2895F0
loc_8C088F50:
	#data 0x8C28C618
loc_8C088F54:
	#data 0x3F000000
loc_8c088f58:
	#data 0x3F266666

;==============================================
loc_8C088F5C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(loc_8C0890A8,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.l @(loc_8C0890B4,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0890A8,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0890AA,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0890AC,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0890B8,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x10,r4 ; r4 set to 0x10
	mov.l @(loc_8C0890BC,pc),r13 ; r13 set to 0x8C28C618
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0890AE,pc),r0 ; r0 set to 0x13c
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13d
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13e
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13f
	mov.b r4,@(r0,r14)
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r14),r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r3,r3
	bf/s loc_8C088FEe
	mov.l @r13,r5
	bra loc_8C088FF2
	mov.b r4,@r5

loc_8C088FEE:
	mov 0x02,r2 ; r2 set to 0x02
	mov.b r2,@r5

loc_8C088FF2:
	mov.l @r13,r3
	mov r4,r0
	nop
	mov.b r0,@(0x02,r3)
	mov 0x42,r5 ; r5 set to 0x42, r5 set to 0x42
	mov.w @(loc_8C0890B0,pc),r0 ; r0 set to 0x19C, r0 set to 0x19c
	mov.b r5,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x19D, r0 set to 0x19d
	mov.b r5,@(r0,r14)
	add 0x06,r0 ; r0 set to 0x1A3, r0 set to 0x1A3
	mov.b @(r0,r14),r3
	add 0xFE,r0 ; r0 set to 0x1A1, r0 set to 0x1A1
	add 0x33,r3
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC, r0 set to 0x1Ac
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19e
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4
	mov.l @(loc_8C0890C0,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2 ; r2 ??	
	extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4
	shll r0 ; r0 set to 0x188, r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @r13,r6
	mov.w @(loc_8C0890AC,pc),r0 ; r0 set to 0x1A3, r0 set to 0x1A3
	mov.b @r6,r6
	mov.b @(r0,r14),r2
	extu.b r6,r6
	shll r6
	extu.b r2,r2
	add r2,r6
	mov.l @(loc_8C0890C4,pc),r2 ; r2 set to 0x8C034E8C, r2 set to 0x8C034E8c
	mov 0x19,r5 ; r5 set to 0x19, r5 set to 0x19
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C08904C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x02,r3 ; r3 set to 0x02, r3 set to 0x02, r3 set to 0x02
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov.b @(0x04,r4),r0
	extu.b r0,r0 ; r0 set to 0xA3, r0 set to 0xA3
	cmp/ge r3,r0
	bf/s loc_8C089070
	mov 0x00,r13 ; r13 set to 0x00, r13 set to 0x00, r13 set to 0x00
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0xA4, r0 set to 0xA4
	bra loc_8C0890A2
	mov.b r0,@(0x04,r14)

loc_8C089070:
	mov.l @(loc_8C0890C8,pc),r4 ; r4 set to 0x8C2895F0
	mov 0x3C,r0 ; r0 set to 0x3c
	mov 0x01,r12 ; r12 set to 0x01
	mov.w @(r0,r4),r3
	mov 0x3B,r0 ; r0 set to 0x3b
	mov.b @(r0,r4),r2
	mov r12,r1 ; r1 set to 0x01
	extu.w r3,r3
	extu.b r2,r2
	shad r2, r1 ; r1 ??? bc r2 is ???	
	tst r1,r3
	bt loc_8C08908c
	bra loc_8C089198
	nop

loc_8C08908C:
	mov 0x23,r0 ; r0 set to 0x23
	mov.l @(loc_8C0890CC,pc),r10 ; r10 set to 0x8C28C61c
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0890BC,pc),r11 ; r11 set to 0x8C28C618
	tst r3,r3
	bt/s loc_8C0890De
	mov.l @r10,r4
	mov.b @(r0,r14),r1
	mov.b @(0x01,r4),r0
	cmp/hi r0,r1
	bf loc_8C0890D0

loc_8C0890A2:
	mov.w @(loc_8C0890AA,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	bra loc_8C089198
	mov.b r13,@(r0,r14)

;##############################################
loc_8C0890A8:
	#data 0x00Dc
loc_8C0890AA:
	#data 0x012c
loc_8C0890AC:
	#data 0x01A3
loc_8C0890AE:
	#data 0x013c
loc_8C0890B0:
	#data 0x019c
	#align4

loc_8C0890B4:
	#data bank12.loc_8c129560
loc_8C0890B8:
	#data bank12.loc_8c1294C8
loc_8C0890BC:
	#data 0x8C28C618
loc_8C0890C0:
	#data 0x8C2896B0
loc_8C0890C4:
	#data bank03.loc_8c034e8c
loc_8C0890C8:
	#data 0x8C2895F0
loc_8C0890CC:
	#data 0x8C28C61c

;----------------------------------------------
loc_8c0890d0:
	mov 0x23,r0
	mov.b @(r0,r14),r3
	mov.b @(0x01,r4),r0 
	cmp/eq r0,r3
	bt loc_8c0890de
	mov.l @r11,r2
	mov.b r12,@r2

loc_8c0890de:
	bsr bank08.loc_8c088c82
	mov r14,r4
	bsr bank08.loc_8c088cf8
	mov r14,r4
	mov.w @(bank08.loc_8c0891ba,pc),r1
	add r14,r1
	mov.b r0,@r1
	mov.w @(loc_8C0891BC,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c089148
	mov.w @(loc_8C0891BE,pc),r0
	mov.l @r10,r3
	mov.b r0,@(0x03,r3) 
	mov.w @(loc_8C0891C0,pc),r0
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14) 
	exts.b r3,r3
	tst r3,r3
	bf loc_8c089148
	mov.w @(loc_8C0891C2,pc),r0
	mov.l @r11,r3
	mov.b @(r0,r14),r4
	mov.b @(0x02,r3),r0 
	extu.b r4,r4
	add 0x01,r0
	mov.b r0,@(0x02,r3) 
	extu.b r0,r0
	tst r12,r0
	bt/s loc_8c089126
	add 0x33,r4
	mov.w @(loc_8C0891C2,pc),r0
	mov.b @(r0,r14),r4
	extu.b r4,r4
	add 0x35,r4

loc_8c089126:
	mov.w @(loc_8C0891C4,pc),r0
	mov.l @(loc_8C0891C8,pc),r3
	mov.b r4,@(r0,r14) 
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

loc_8c089148:
	mov.w @(bank08.loc_8c0891ba,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c089168
	mov.l @r11,r6
	mov 0x19,r5
	mov.w @(loc_8C0891C2,pc),r0
	mov.b @r6,r6
	mov.b @(r0,r14),r3
	extu.b r6,r6
	extu.b r3,r3
	shll r6
	add r3,r6
	mov.l @(bank08.loc_8c0891cc,pc),r3
	jsr @r3
	mov r14,r4

loc_8c089168:
	mov.l @r10,r2
	mov.b @(0x03,r2),r0
	tst r0,r0
	bf loc_8c089198
	mov 0x23,r0
	mov.l @(loc_8C0891D0,pc),r3
	mov.b @(r0,r14),r0
	extu.b r0,r0
	and 0x01,r0 
	mov r0,r2
	mov.l @r3,r0
	mov.l @(0x1C,r0),r0
	and 0x01,r0 
	cmp/eq r0,r2
	bf loc_8c089198
	lds.l @r15+,pr 
	mov.l @(bank08.loc_8c0891d4,pc),r3
	mov r14,r4
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C089198:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0891A6:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0891BA,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0891B4:
	mov.l @(loc_8C0891D8,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0891BA:
	#data 0x012c
loc_8c0891bc:
	#data 0x019e
loc_8c0891be:
	#data 0x00FF
loc_8c0891c0:
	#data 0x01A0
loc_8c0891c2:
	#data 0x01A3
loc_8c0891c4:
	#data 0x01A1
	#align4

loc_8c0891c8:
	#data 0x8C2896B0
loc_8C0891CC:
	#data bank03.loc_8c034e8c
loc_8c0891d0:
	#data 0x8C26823c
loc_8C0891D4:
	#data bank04.loc_8c045748
loc_8C0891D8:
	#data bank04.loc_8c0450C0

;==============================================
loc_8c0891dc:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop 
	mov.b r0,@(0x8,r15)
	mov r6,r0
	nop 
	mov.l @(0x104,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c089224
	mov r0,r4
	mov 0x20,r1
	mov.l @(0xF4,PC),r3
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.w @(0xE4,PC),r3
	mov.l r2,@(0x18,r4)
	mov 0x21,r2
	mov.b @(0x8,r15),r0
	add r4,r2
	mov.b r0,@r1
	mov.b @(0x4,r15),r0
	mov.w @(0xD8,PC),r1
	mov.b r0,@r2
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov.l @r15,r0
	mov.w @(r0,r1),r0
	mov.w r0,@(0x1E,r4)

loc_8c089224:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;-------------------------------------------------------------------------------
loc_8c08922c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b r5,@r15
	mov 0x01,r5
	mov.l @(bank08.loc_8c0892f4,pc),r3
	mov r4,r14
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt/s loc_8c089260
	mov r0,r4
	mov.l @(bank08.loc_8c0892f8,pc),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4) 
	mov.l @(0x18,r14),r2
	mov.l r2,@(0x18,r4) 
	mov.w @(loc_8C0892F0,pc),r2
	mov.l r14,@(0x14,r4) 
	mov.b @r15,r3
	mov.b r3,@(r0,r4) 
	mov 0x26,r0
	mov.w r2,@(r0,r4) 
	mov.w @(0x1E,r14),r0 
	mov.w r0,@(0x1E,r4) 

loc_8c089260:
	mov r4,r0
	nop 
	add 0x04,r15
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8c08926c:
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov r6,r0
	nop 
	mov.b r0,@(0xC,r15)
	mov r7,r0
	nop 
	mov.l @(0x74,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x8,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0892c2
	mov r0,r4
	mov 0x20,r1
	mov.l @(0x64,PC),r3
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l @(0x60,PC),r3
	mov.l r2,@(0x18,r4)
	mov 0x21,r2
	mov.b @(0xC,r15),r0
	add r4,r2
	mov.b r0,@r1
	mov r4,r1
	mov.b @(0x8,r15),r0
	add 0x34,r1
	mov.b r0,@r2
	mov.l @(0x4,r15),r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x38,PC),r1
	mov 0x26,r0
	mov.w r1,@(r0,r4)
	mov.w @(0x34,PC),r1
	mov.l @r15,r0
	mov.w @(r0,r1),r0
	mov.w r0,@(0x1E,r4)

loc_8c0892c2:
	add 0x10,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;==============================================
loc_8C0892CA:
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C089300,pc),r0 ; r0 set to 0x8C15469c
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

loc_8C0892DE:
	mov r4,r3
	mov.l @(loc_8C089304,pc),r1 ; r1 set to 0x8C1546C0
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0892f0:
	#data 0x1A00
loc_8c0892f2:
	#data 0x0158
	#align4

loc_8C0892F4:
	#data bank04.loc_8c044F12
loc_8C0892F8:
	#data loc_8C0892Ca
loc_8C0892FC:
	#data bank12.loc_8c1294C8
loc_8C089300:
	#data bank15.loc_8c15469c
loc_8C089304:
	#data bank15.loc_8c1546C0

;==============================================
loc_8C089308:
	mov.w @(0x152,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add r4,r1
	mov.l @(0x15C,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x144,PC),r0
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x13C,PC),r0
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
	mov.w @(0x118,PC),r0
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
	mov.l @(0x110,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r4),r1
	mov 0x24,r0
	mov 0x38,r2
	mov.b @(r0,r1),r3
	mov 0x00,r5
	mov 0x42,r6
	mov.b r3,@(r0,r4)
	mov.w @(0xEA,PC),r0
	mov.l @(0xFC,PC),r3
	mov.b r2,@(r0,r4)
	add 0x0B,r0
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
	mov.w @(0xCA,PC),r0
	mov.w @(0xCA,PC),r2
	mov.b r6,@(r0,r4)
	add 0x01,r0
	mov.b r6,@(r0,r4)
	mov 0x24,r0
	mov.b r5,@(r0,r4)
	mov 0x22,r0
	mov.b r2,@(r0,r4)
	lds.l @r15+,pr

loc_8C0893AC:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xAC,PC),r0
	mov.l r13,@-r15
	mov 0x00,r13
	mov.w @(0xAE,PC),r2
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov.b r13,@(r0,r14)
	add 0x1F,r0
	mov.b @(r0,r4),r3
	extu.b r3,r3
	cmp/eq r2,r3
	bt loc_8c0893d4
	mov.w @(0x9E,PC),r3
	mov.w @(0x1E,r14),r0
	add r4,r3
	mov.w @r3,r3
	cmp/eq r3,r0
	bt loc_8c0893da

loc_8C0893D4:
	mov 0x02,r0
	bra loc_8c089456
	mov.b r0,@(0x4,r14)

loc_8C0893DA:
	mov.w @(0x8E,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c089456
	mov.w @(0x7A,PC),r0
	mov 0x01,r3

loc_8c0893e6:
	mov r4,r2
	mov r14,r1
	mov.b r3,@(r0,r14)
	add 0x34,r2
	mov.l @(0x84,PC),r3
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x72,PC),r0
	mov.b @(r0,r4),r2
	mov 0x22,r0

loc_8c0893fc:
	mov.b @(r0,r14),r3
	cmp/eq r3,r2
	bt loc_8c08944a
	mov.w @(0x66,PC),r0
	mov 0x17,r5
	mov.l @(0x74,PC),r3
	mov 0x04,r6
	mov.b @(r0,r4),r2
	mov 0x22,r0
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r7
	extu.b r7,r7
	add 0xFF,r7
	jsr @r3
	mov r14,r4
	mov.w @(0x4E,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c08944a
	mov.b r13,@(r0,r14)
	mov.b @(r0,r14),r3
	add 0x56,r0
	add 0x38,r3
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l @(0x40,PC),r3
	mov.l r13,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)

loc_8C08944A:
	lds.l @r15+,pr
	mov.l @(0x30,PC),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C089456:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c08945e:
	#data 0x00dc
loc_8c089460:
	#data 0x012c
loc_8c089462:
	#data 0x01a3
loc_8c089464:
	#data 0x01a1
loc_8c089466:
	#data 0x019c
loc_8c089468:
	#data 0x00ff
loc_8c08946a:
	#data 0x0158
loc_8c08946c:
	#data 0x014b
	#align4

loc_8C089470:
	#data bank12.loc_8c129560
loc_8C089474:
	#data bank12.loc_8c1294C8
loc_8c089478:
	#data 0x8C2896B0
loc_8C08947C:
	#data bank03.loc_8c034F54
loc_8C089480:
	#data bank04.loc_8c045748

;==============================================
loc_8C089484:
	mov r4,r3
	mov.l @(loc_8C0895DC,pc),r1 ; r1 set to 0x8C1546D0
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C089496:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(loc_8C0895CE,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0895CE,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0895E0,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0895D0,pc),r0 ; r0 set to 0xC0
	mov.l @(0x18,r14),r13
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???	
	mov.w @(loc_8C0895D2,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0895D4,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0895E4,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.l @(loc_8C0895E8,pc),r3 ; r3 set to 0x8C03319e
	mov.b @(r0,r13),r2
	jsr @r3
	mov.b r2,@(r0,r14)
	mov.l @(loc_8C0895EC,pc),r1 ; r1 set to 0x8C1546E0
	and 0x0F,r0
	mov 0x00,r3 ; r3 set to 0x00
	mov.b @(r0,r1),r2
	mov 0x22,r0 ; r0 set to 0x22
	mov r14,r1 ; r1 ??? bc r14 is ???	
	add 0x34,r1
	mov.b r2,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r14)
	mov r13,r2
	mov.l @(loc_8C0895E4,pc),r3 ; r3 set to 0x8C1294C8
	add 0x5C,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mova @(loc_8C0895F0,pc),r0  ; r0 set to 0x8C0895F0
	fmov.s @r0,fr4
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???	
	fmul fr4,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r14),fr2
	fmul fr4,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C0895D6,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r13),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bf loc_8C089562
	mova @(loc_8C0895F4,pc),r0  ; r0 set to 0x8C0895F4
	fmov.s @r0,fr4
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r14),fr3
	mov 0x01,r3 ; r3 set to 0x01
	fmul fr4,fr3 ; r3 ??? bc r4 is ???	
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r14),fr2
	fmul fr4,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C0895D8,pc),r0 ; r0 set to 0x12d
	mov.b r3,@(r0,r14)
	add 0x77,r0 ; r0 set to 0x1A4
	mov.b @(r0,r14),r2
	mov.l @(loc_8C0895F8,pc),r0 ; r0 set to 0x8C1355D4
	extu.b r2,r2
	mov.b @(r0,r2),r3
	mov.w @(loc_8C0895DA,pc),r0 ; r0 set to 0x12e
	add 0x02,r3
	bra loc_8C089576
	mov.w r3,@(r0,r14)

loc_8C089562:
	mova @(loc_8C0895FC,pc),r0  ; r0 init to 0x8C0895Fc
	fmov.s @r0,fr4
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r14),fr3
	fmul fr4,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r14),fr2
	fmul fr4,fr2
	fmov.s fr2,@(r0,r14)

loc_8C089576:
	mov 0x22,r0 ; r0 set to 0x22, r0 set to 0x22
	mov.b @(r0,r14),r3
	mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48
	mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
	extu.b r3,r3
	shll8 r3
	shll2 r3
	shll r3
	extu.w r3,r3
	mov.l r3,@(r0,r14)
	mov 0x01,r6 ; r6 set to 0x01, r6 set to 0x01
	mov.l @(loc_8C089600,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C08959A:
	mov.w @(loc_8C0895D2,pc),r0 ; r0 set to 0x12C, r0 set to 0x12C, r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00, r3 set to 0x00
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov.b r3,@(r0,r14)
	add 0x2C,r0 ; r0 set to 0x158, r0 set to 0x158, r0 set to 0x158
	mov.w @(r0,r4),r2
	mov.w @(0x1E,r14),r0
	cmp/eq r0,r2
	bt loc_8C0895B6
	bra loc_8C0895C6
	mov 0x02,r0

loc_8C0895B6:
	mov.l @(loc_8C089604,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C089608
	mov.b @(0x04,r14),r0
	add 0x01,r0

loc_8C0895C6:
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C0895CE:
	#data 0x00Dc
loc_8C0895D0:
	#data 0x00C0
loc_8C0895D2:
	#data 0x012c
loc_8C0895D4:
	#data 0x01A3
loc_8C0895D6:
	#data 0x041c
loc_8C0895D8:
	#data 0x012d
loc_8C0895DA:
	#data 0x012e
	#align4

loc_8C0895DC:
	#data bank15.loc_8c1546D0
loc_8C0895E0:
	#data bank12.loc_8c129560
loc_8C0895E4:
	#data bank12.loc_8c1294C8
loc_8C0895E8:
	#data bank03.loc_8c03319e
loc_8C0895EC:
	#data bank15.loc_8c1546E0
loc_8C0895F0:
	#data 0x3F19999a
loc_8C0895F4:
	#data 0x3F4CCCCd
loc_8C0895F8:
	#data bank13.loc_8c1355D4
loc_8C0895FC:
	#data 0x3F99999a
loc_8C089600:
	#data bank03.loc_8c034C38
loc_8C089604:
	#data bank03.loc_8c034D8c

;==============================================
loc_8c089608:
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0 
	bf loc_8c089624
	mov.w @(loc_8C089762,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c089624
	mov 0x00,r3
	mov 0x03,r5
	mov.b r3,@(r0,r14) 
	bsr bank08.loc_8c08922c
	mov r14,r4

loc_8c089624:
	mov.w @(loc_8C089764,pc),r0
	mov 0x01,r2
	mov.b r2,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8C089630:
	mov r4,r3
	mov.l @(loc_8C089774,pc),r1 ; r1 set to 0x8C1546F0
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C089642:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.b @(0x4,r14),r0
	mov.w @(0x114,PC),r1
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	add r14,r1
	mov.l @(0x18,r14),r3
	mov.w @(0x10A,PC),r0
	mov.l r3,@r15
	mov.l @(0x8,r14),r2
	mov.l @(0x118,PC),r3
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0xFA,PC),r0
	mov 0x01,r1
	mov.b r1,@(r0,r14)
	mov r14,r1
	mov.l @(0x8,r14),r0
	add 0x50,r1
	mov.b @(0x2,r0),r0
	mov.b r0,@(0x2,r14)
	mov.l @(0x8,r14),r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r14)
	mov 0x50,r0
	mov.l @(0x8,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	mov.l @(0x8,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xD8,PC),r0
	mov.l @(0x8,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.l @(0x8,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0
	mov.l @(0x8,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.l @(0x8,r14),r2
	mov.l @(0xD4,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x8,r14),r1
	mov 0x24,r0
	mov 0x42,r4
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov.w @(0xAE,PC),r0
	mov.l @(0xC4,PC),r3
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	jsr @r3
	mov 0x35,r13
	mov.l @(0xBC,PC),r2
	mov r0,r1
	jsr @r2
	mov 0x03,r0
	tst r0,r0
	bf loc_8c0896d4
	mov 0x34,r13

loc_8C0896D4:
	mov.w @(0x94,PC),r0
	mov 0x00,r4
	mov.l @(0xAC,PC),r3
	mov.b r13,@(r0,r14)
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
	mov.w @(0x6C,PC),r1
	mov.l @r15,r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c08970c
	mov.w @(0x66,PC),r2
	mov 0x10,r0
	add r14,r2
	mov.w r0,@r2

loc_8C08970C:
	mov.w @(0x62,PC),r0
	mov r14,r1
	mov.w @(0x5C,PC),r3
	add 0x34,r1
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r3,@(r0,r14)
	mov.l @(0x8,r14),r2
	mov.l @(0x5C,PC),r3
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	fldi0 fr4
	mov 0x07,r1
	mov.l @(0x68,PC),r3
	mov.b r1,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mova @(0x54,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	mov 0x17,r5
	fmov fr3,@(r0,r14)
	mova @(0x4C,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	mov 0x05,r6
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	bsr loc_8c08979c
	mov r14,r4
	mov r14,r4
	mov 0x1C,r5
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x3C,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c089762:
	#data 0x0141
loc_8c089764:
	#data 0x012c
loc_8c089766:
	#data 0x00DC
loc_8c089768:
	#data 0x01A3
loc_8c08976a:
	#data 0x019C
loc_8c08976c:
	#data 0x01A1
loc_8c08976e:
	#data 0x01AC
loc_8c089770:
	#data 0x0080
loc_8c089772:
	#data 0x013D
	#align4

loc_8C089774:
	#data bank15.loc_8c1546F0
loc_8C089778:
	#data bank12.loc_8c129560
loc_8C08977C:
	#data bank12.loc_8c1294C8
loc_8C089780:
	#data bank03.loc_8c03319e
loc_8C089784:
	#data bank12.loc_8c12939c
loc_8C089788:
	#data 0x8C2896B0
loc_8C08978c:
	#data 0x41AB6DB6
loc_8C089790:
	#data 0x40092492
loc_8C089794:
	#data bank03.loc_8c034e8c
loc_8C089798:
	#data bank04.loc_8c042008

;==============================================
loc_8C08979C:
	mov.w @(loc_8C089900,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.l r14,@-r15
	mov r4,r14
	mov 0x5C,r1 ; r1 set to 0x5c
	add r14,r1 ; r1 ??? bc r14 is ???	
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
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
	mov.l @(loc_8C08990C,pc),r3 ; r3 set to 0x8C034DEe
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C089910,pc),r2 ; r2 set to 0x8C033568
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8C0897Fc
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0x61
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C0897FC:
	mov.w @(loc_8C089900,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov r14,r4
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @(loc_8C089914,pc),r3 ; r3 set to 0x8C045748
	jmp @r3
	mov.l @r15+,r14

;Unused Return
loc_8c08980c:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C089812:
	mov r4,r3
	mov.l @(loc_8C089918,pc),r1 ; r1 set to 0x8C154700
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C089824:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C089902,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C089902,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C08991C,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C089904,pc),r0 ; r0 set to 0xC0
	mov.l @(0x18,r14),r4
	jsr @r3
	add r4,r2 ; r2 ??? bc r4 is ???	
	mov.w @(loc_8C089900,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C089906,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C089920,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r4),r2
	mov 0x31,r3 ; r3 set to 0x31
	mov 0x00,r4 ; r4 set to 0x00
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C089908,pc),r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1Ac
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19e
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(loc_8C089924,pc),r3 ; r3 set to 0x8C2896B0
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
	mov.w @(loc_8C08990A,pc),r0 ; r0 set to 0x19c
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x19d
	mov.b r4,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.l @(0x18,r14),r2
	mov.b @(r0,r2),r1
	mov 0xFF,r2 ; r2 set to 0xFFFFFFFf
	mov.b r1,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r2,@(r0,r14)
	mov 0x17,r5 ; r5 set to 0x17
	mov.l @(loc_8C089928,pc),r2 ; r2 set to 0x8C034E8c
	mov 0x09,r6 ; r6 set to 0x09
	jsr @r2
	mov r14,r4 ; r4 ??? bc r14 is ???	
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
	tst r3,r3
	bf loc_8C0898Da
	lds.l @r15+,pr
	mov.l @(loc_8C089914,pc),r3 ; r3 set to 0x8C045748
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0898DA:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C0898E0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C08990C,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C08992c
	mov.b @(0x04,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C089900,pc),r0 ; r0 set to 0x12c
	bra loc_8C089960
	mov.b r3,@(r0,r14)

loc_8C089900:
	#data 0x012c
loc_8C089902:
	#data 0x00Dc
loc_8C089904:
	#data 0x00C0
loc_8C089906:
	#data 0x01A3
loc_8C089908:
	#data 0x01A1
loc_8C08990A:
	#data 0x019c
	#align4

loc_8C08990C:
	#data bank03.loc_8c034dee
loc_8C089910:
	#data bank03.loc_8c033568
loc_8C089914:
	#data bank04.loc_8c045748
loc_8C089918:
	#data bank15.loc_8c154700
loc_8C08991C:
	#data bank12.loc_8c129560
loc_8C089920:
	#data bank12.loc_8c1294C8
loc_8C089924:
	#data 0x8C2896B0
loc_8C089928:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c08992c:
	mov.l @(0x18,r14),r2
	mov 0x24,r0
	mov.b @(r0,r2),r3
	mov.b r3,@(r0,r14) 
	mov.w @(loc_8C089A6A,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c08994c
	mov 0x00,r2
	mov 0x07,r13
	mov.b r2,@(r0,r14) 

loc_8c089942:
	mov 0x05,r5
	bsr bank08.loc_8c08922c
	mov r14,r4
	dt r13
	bf loc_8c089942

loc_8c08994c:
	mov 0x21,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c089960
	lds.l @r15+,pr 
	mov.l @(bank08.loc_8c089a78,pc),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C089960:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C089968:
	mov r4,r3
	mov.l @(loc_8C089A7C,pc),r1 ; r1 set to 0x8C154710
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C08997A:
	mov.w @(loc_8C089A6C,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C089A80,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C089A6C,pc),r0 ; r0 set to 0xDc
	mov.l @(0x14,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C089A6E,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C089A70,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C089A84,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x14,r4),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x31,r2 ; r2 set to 0x31
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov 0x00,r5 ; r5 set to 0x00
	mov.b r3,@(r0,r4)
	mov.w @(loc_8C089A72,pc),r0 ; r0 set to 0x1A1
	mov.l @(loc_8C089A88,pc),r3 ; r3 set to 0x8C2896B0
	mov.b r2,@(r0,r4)
	add 0x0B,r0 ; r0 set to 0x1Ac
	mov.w r5,@(r0,r4)
	add 0xF2,r0 ; r0 set to 0x19e
	mov.b r5,@(r0,r4)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r5,@(r0,r4)
	mov 0x42,r5 ; r5 set to 0x42
	mov.b @(0x02,r4),r0
	mov.l @r3,r2 ; r2 ??	
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x21,r0 ; r0 set to 0x21
	mov.w @(loc_8C089A74,pc),r2 ; r2 set to 0xFf
	mov.b r2,@(r0,r4)
	mov.w @(loc_8C089A76,pc),r0 ; r0 set to 0x19c
	mov.b r5,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x19d
	mov.b r5,@(r0,r4)
	mov.l @(0x08,r4),r2 ; r2 ??? bc r4 is ???	
	mov 0x31,r0 ; r0 set to 0x31
	mov.b @(r0,r2),r1
	mov.b r1,@(r0,r4)
	lds.l @r15+,pr

loc_8C089A22:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x14,r14),r3 ; r3 ??? bc r14 is ???	
	mov 0x02,r4 ; r4 set to 0x02, r4 set to 0x02
	mov.b @(0x04,r3),r0
	extu.b r0,r0 ; r0 set to 0x31
	cmp/ge r4,r0
	bf loc_8C089A46
	mov r4,r0 ; r0 set to 0x02, r0 set to 0x02
	nop
	mov.b r0,@(0x04,r14)
	mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
	mov.w @(loc_8C089A6E,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C089A46:
	mov.l @(0x08,r14),r2
	mov r14,r1
	mov.l @(loc_8C089A84,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x08,r14),r0 ; r0 ??? bc r14 is ???	
	mov 0x20,r1 ; r1 set to 0x20
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8C089A90
	mov.l @(loc_8C089A8C,pc),r2 ; r2 set to 0x439936Db
	mov 0x38,r0 ; r0 set to 0x38
	lds r2,fpul
	bra loc_8C089A98
	fsts fpul,fr0

;##############################################
loc_8c089a6a:
	#data 0x0141
loc_8C089A6C:
	#data 0x00Dc
loc_8C089A6E:
	#data 0x012c
loc_8C089A70:
	#data 0x01A3
loc_8C089A72:
	#data 0x01A1
loc_8C089A74:
	#data 0x00Ff
loc_8C089A76:
	#data 0x019c
	#align4

loc_8C089A78:
	#data bank04.loc_8c045748
loc_8C089A7C:
	#data bank15.loc_8c154710
loc_8C089A80:
	#data bank12.loc_8c129560
loc_8C089A84:
	#data bank12.loc_8c1294C8
loc_8C089A88:
	#data 0x8C2896B0
loc_8C089A8C:
	#data 0x439936Db

;==============================================
loc_8c089a90:
	mov.l @(loc_8C089B04,pc),r2
	mov 0x38,r0
	lds r2,fpul 
	fsts fpul,fr0

loc_8c089a98:
	mov 0x54,r2
	fmov.s @(r0,r14),fr2
	add r14,r2
	mov.w @(loc_8C089B00,pc),r1
	fmov.s @r2,fr3
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r14) 
	mov 0x21,r0
	mov.l @(0x14,r14),r2
	mov.b @(r0,r14),r3
	add r2,r1
	mov.b @(0x01,r1),r0 
	extu.b r3,r3
	cmp/eq r0,r3
	bt loc_8c089ad6
	mov.w @(loc_8C089B00,pc),r3
	mov 0x21,r1
	mov.l @(0x14,r14),r2
	add r14,r1
	mov 0x17,r5
	add r2,r3
	mov.b @(0x01,r3),r0 
	mov 0x0A,r6
	mov.l @(bank08.loc_8c089b08,pc),r3
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @(r0,r14),r7
	extu.b r7,r7
	add 0xFF,r7
	jsr @r3
	mov r14,r4

loc_8c089ad6:
	mov 0x21,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c089ae8
	lds.l @r15+,pr 
	mov.l @(bank08.loc_8c089b0c,pc),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c089ae8:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8C089AEE:
	mov r4,r3
	mov.l @(loc_8C089B10,pc),r1 ; r1 set to 0x8C154720
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c089b00:
	#data 0x0150
	#align4

loc_8c089b04:
	#data 0x4284DB6d
loc_8C089B08:
	#data bank03.loc_8c034F54
loc_8C089B0C:
	#data bank04.loc_8c045748
loc_8C089B10:
	#data bank15.loc_8c154720

;==============================================
loc_8C089B14:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.w @(0x134,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x12C,PC),r2
	add 0x01,r0
	mov.l @(0x134,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0x126,PC),r0
	mov.l @(0x18,r14),r13
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
	mov.l @(0xF8,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x00,r12
	mov.l @(0xF0,PC),r3
	mov 0x24,r0
	mov r14,r1
	mov.b @(r0,r13),r2
	mov r13,r2
	mov.b r12,@(r0,r14)
	mova @(0xE8,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov @(r0,r14),fr3
	add 0x34,r2
	add 0x34,r1
	fmul fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r14),fr2
	fmul fr4,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xD0,PC),r2
	jsr @r2
	nop 
	mov.l @(0xD0,PC),r3
	mov r0,r1
	jsr @r3
	mov 0x07,r0
	mov r0,r4
	shll2 r4
	shll r4
	neg r4,r4
	lds r4,fpul
	mov 0x50,r0
	fmov @(r0,r13),fr2
	mova @(0xBC,PC),r0
	float fpul,fr3
	fmul fr2,fr3
	fmov @r0,fr2
	mov 0x5C,r0
	fmul fr2,fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x96,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c089bd2
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8C089BD2:
	mov 0x21,r0
	mov.l @(0xA0,PC),r3
	mov.b @(r0,r14),r1
	extu.b r1,r1
	jsr @r3
	mov 0x03,r0
	shll2 r0
	shll2 r0
	shll r0
	add 0x38,r0
	lds r0,fpul
	mov 0x54,r0
	fmov @(r0,r13),fr2
	mova @(0x8C,PC),r0
	float fpul,fr3
	fmul fr2,fr3
	fmov @r0,fr2
	mov 0x60,r0
	fmul fr2,fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x5E,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c089c0a
	mov 0x22,r0
	mov 0x04,r3
	bra loc_8c089c10
	mov.b r3,@(r0,r14)

loc_8C089C0A:
	mov 0x22,r0
	mov 0x0C,r1
	mov.b r1,@(r0,r14)

loc_8C089C10:
	mov 0x21,r0
	mov.b @(r0,r14),r3
	cmp/pz r3
	bf loc_8c089c88               ; loc_8c089c5c+0x2c
	mov.l @(0x64,PC),r2
	mov 0x17,r5
	mov 0x0E,r6
	jsr @r2
	mov r14,r4
	mov.w @(0x38,PC),r0
	mov 0x42,r4
	mov 0x36,r3
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x04,r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r12,@(r0,r14)
	add 0xF2,r0
	mov.b r12,@(r0,r14)
	add 0x26,r0
	mov.l @(0x44,PC),r3
	mov.l r12,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	bra loc_8c089c92              ; loc_8c089c5c+0x36
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c089c54:
	#data 0x00dc
loc_8c089c56:
	#data 0x00c0
loc_8c089c58:
	#data 0x012c
loc_8c089c5a:
	#data 0x01a3
loc_8c089c5c:
	#data 0x0130
loc_8c089c5e:
	#data 0x019c
	#align4

loc_8C089C60:
	#data bank12.loc_8c129560
loc_8C089C64:
	#data bank12.loc_8c1294C8
loc_8C089C68:
	#data 0x3F000000
loc_8C089C6C:
	#data bank03.loc_8c03319e
loc_8C089C70:
	#data bank12.loc_8c12939c
loc_8C089C74:
	#data 0x3FD55555
loc_8C089C78:
	#data bank12.loc_8c1292D4
loc_8C089C7c:
	#data 0x40092492
loc_8C089C80:
	#data bank03.loc_8c034e8c
loc_8C089C84:
	#data 0x8C2896B0

;==============================================
loc_8C089C88:
	mov.l @(0xC0,PC),r3
	mov 0x1B,r5
	mov 0x03,r6
	jsr @r3
	mov r14,r4

loc_8C089C92:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C089C9C:
	mov.w @(loc_8C089D4A,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov.b r3,@(r0,r14)
	add 0x2C,r0 ; r0 set to 0x158
	mov.w @(r0,r4),r2
	mov.w @(0x1E,r14),r0
	cmp/eq r0,r2
	bt loc_8C089CC0
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r2
	cmp/pz r2
	bt loc_8C089CC0
	bra loc_8C089D24
	mov 0x02,r0

loc_8C089CC0:
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r14),fr3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r4),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r4),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3
	cmp/pz r3
	bf loc_8C089D14
	mov.l @(loc_8C089D50,pc),r2 ; r2 set to 0x8C034DEe
	jsr @r2
	mov r14,r4
	exts.b r0,r0 ; r0 ??	
	cmp/pz r0
	bt loc_8C089D0a
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r2 ; r2 ??? bc r14 is ???	
	cmp/pz r2
	bf loc_8C089D0a
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov 0x07,r5 ; r5 set to 0x07
	add 0x01,r0 ; r0 set to 0x22
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	bra loc_8C08922c
	mov.l @r15+,r14

loc_8C089D0A:
	mov.l @(loc_8C089D54,pc),r2 ; r2 set to 0x8C045748
	jsr @r2
	mov r14,r4
	bra loc_8C089D2c
	nop

loc_8C089D14:
	mov.l @(loc_8C089D58,pc),r2 ; r2 set to 0x8C034D8c
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C089D2c
	mov.b @(0x04,r14),r0
	add 0x01,r0

loc_8C089D24:
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C089D2C:
	mov.w @(loc_8C089D4A,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C089D38:
	mov r4,r3
	mov.l @(loc_8C089D5C,pc),r1 ; r1 set to 0x8C154730
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C089D4A:
	#data 0x012c
	#align4

loc_8C089D4C:
	#data bank03.loc_8c034C38
loc_8C089D50:
	#data bank03.loc_8c034dee
loc_8C089D54:
	#data bank04.loc_8c045748
loc_8C089D58:
	#data bank03.loc_8c034D8c
loc_8C089D5C:
	#data bank15.loc_8c154730

;----------------------------------------------
loc_8C089D60:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x11E,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x124,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.l @(0x8,r14),r2
	mov.w @(0x10E,PC),r0
	mov.l @(0x18,r14),r4
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x106,PC),r0
	mov 0x01,r5
	mov r14,r1
	add 0x50,r1
	mov.b r5,@(r0,r14)
	mov.l @(0x8,r14),r0
	mov.b @(0x2,r0),r0
	mov.b r0,@(0x2,r14)
	mov.l @(0x8,r14),r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r14)
	mov 0x50,r0
	mov.l @(0x8,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	mov.l @(0x8,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xE2,PC),r0
	mov.l @(0x8,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.l @(0x8,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0
	mov.l @(0x8,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.l @(0x8,r14),r2
	mov.l @(0xD8,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x8,r14),r1
	mov 0x24,r0
	mov 0x42,r6
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov 0x36,r3
	mov.w @(0xB6,PC),r0
	mov.b r6,@(r0,r14)
	add 0x01,r0
	mov.b r6,@(r0,r14)
	add 0x04,r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov 0x00,r6
	mov.l @(0xB8,PC),r3
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
	mov.w @(0x8C,PC),r0
	mov.l @(0x9C,PC),r2
	mov.l r2,@(r0,r14)
	mov.l @(0x8,r14),r2
	mov.l @(0x90,PC),r3
	mov r14,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mova @(0x90,PC),r0
	fmov @r0,fr3
	mov 0x50,r0
	fmov @(r0,r14),fr4
	mov.w @(0x72,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c089e26
	fmul fr3,fr4
	fneg fr4

loc_8C089E26:
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fadd fr4,fr3
	fldi0 fr4
	fmov fr3,@(r0,r14)
	mov 0x24,r0
	mov.b r6,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mova @(0x68,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0x64,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x40,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c089e64
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8C089E64:
	mov.w @(0x2A,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c089ec0
	mov.l @(0x40,PC),r2
	mov.l @r2,r0
	mov.l @(0x1C,r0),r0
	and 0x03,r0
	cmp/eq 0x00,r0
	bt loc_8c089e80
	cmp/eq 0x01,r0
	bt loc_8c089eb8
	bra loc_8c089ec0
	nop 

loc_8C089E80:
	mova @(0x30,PC),r0
	bra loc_8c089ebc
	fmov @r0,fr3

;##############################################
loc_8c089e86:
	#data 0x00dc
loc_8c089e88:
	#data 0x012c
loc_8c089e8a:
	#data 0x01a3
loc_8c089e8c:
	#data 0x019c
loc_8c089e8e:
	#data 0x013c
loc_8c089e90:
	#data 0x0130
loc_8c089e92:
	#data 0x01e9

loc_8C089E94:
	#data bank12.loc_8c129560
loc_8C089E98:
	#data bank12.loc_8c1294C8
loc_8C089E9C:
	#data 0x8C2896B0
loc_8C089Ea0:
	#data 0x302828F0
loc_8C089Ea4:
	#data 0x43BAAAAa
loc_8C089Ea8:
	#data 0xC1A00000
loc_8C089Eac:
	#data 0xBED55555
loc_8C089EB0:
	#data 0x8C26823c
loc_8C089EB4:
	#data 0x40092492

;==============================================
loc_8C089EB8:
	mova @(0x138,PC),r0
	fmov @r0,fr3

loc_8C089EBC:
	mov 0x60,r0
	fmov fr3,@(r0,r14)

loc_8C089EC0:
	mova @(0x134,PC),r0
	fmov @r0,fr5
	mova @(0x134,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov @(r0,r4),fr3
	fmov @(r0,r14),fr2
	mov 0x64,r0
	fmul fr4,fr3
	fsub fr2,fr3
	fdiv fr5,fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r4),fr3
	fmov @(r0,r14),fr2
	mov 0x70,r0
	fmul fr4,fr3
	fsub fr2,fr3
	fdiv fr5,fr3
	fmov fr3,@(r0,r14)
	mov 0x05,r0
	mov.w r0,@(0x1C,r14)
	mov 0x78,r0
	mov.w r0,@(0x1E,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov.w @(0xF4,PC),r0
	fmov fr3,@(r0,r14)
	mov 0x22,r0
	mov.b r5,@(r0,r14)
	mov.w @(0xEE,PC),r0
	mov.b r5,@(r0,r14)
	mov.l @(0xFC,PC),r3
	mov 0x17,r5
	mov 0x00,r7
	mov 0x0B,r6
	jsr @r3
	mov r14,r4
	bsr loc_8c089f1c
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0xF0,PC),r3
	mov 0x1B,r5
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C089F1C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov.l @(0x18,r14),r13
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
	bf loc_8c089fc0
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov.w @(0x76,PC),r0
	fmov @(r0,r14),fr2
	mov 0x50,r0
	fsub fr3,fr2
	fmov @(r0,r14),fr3
	mova @(0x88,PC),r0
	fdiv fr3,fr2
	fmov @r0,fr3
	fdiv fr3,fr2
	ftrc fr2,fpul
	sts fpul,r4
	exts.w r4,r3
	cmp/pz r3
	bt loc_8c089f90
	neg r4,r4

loc_8C089F90:
	mov.w @(0x5C,PC),r6
	exts.w r4,r5
	cmp/ge r6,r5
	bf loc_8c089fac
	mov.l @(0x70,PC),r3
	mov 0x22,r0
	mov 0x01,r2
	mov 0x17,r5
	mov.b r2,@(r0,r14)
	mov 0x0B,r6
	jsr @r3
	mov r14,r4
	bra loc_8c089fc0
	nop

loc_8C089FAC:
	mov 0xFB,r3
	and r6,r5
	shad r3,r5
	mov.l @(0x4C,PC),r3
	mov.w r5,@r15
	mov 0x17,r5
	mov.w @r15,r7
	mov 0x0D,r6
	jsr @r3
	mov r14,r4

loc_8C089FC0:
	mov.l @(0x4C,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(0x24,PC),r1
	mov.l @(0x48,PC),r11
	add r14,r1
	mov.b r0,@r1
	mova @(0x2C,PC),r0
	fmov @r0,fr15
	mov.b @(0x7,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8c08a018
	mov 0x00,r12
	cmp/eq 0x01,r0
	bt loc_8c08a090
	cmp/eq 0x02,r0
	bf loc_8c089fe8
	bra loc_8c08a110
	nop 

loc_8C089FE8:
	bra loc_8c08a124
	nop 

;##############################################
loc_8c089fec:
	#data 0x00cc
loc_8c089fee:
	#data 0x012c
loc_8c089ff0:
	#data 0x00e0
	#align4

loc_8c089ff4:
	#data 0xC0092492
loc_8c089ff8:
	#data 0x41F00000
loc_8c089ffc:
	#data 0x3F99999a
loc_8C08A000:
	#data bank03.loc_8c034F54
loc_8C08A004:
	#data bank04.loc_8c042008
loc_8c08a008:
	#data 0x3FD55555
loc_8C08A00C:
	#data bank03.loc_8c034e8c
loc_8C08A010:
	#data bank03.loc_8c03340c
loc_8C08A014:
	#data bank03.loc_8c034dee

;==============================================
loc_8C08A018:
	jsr @r11
	mov r14,r4
	mov 0x50,r0
	fmov @(r0,r13),fr3
	fmov @(r0,r14),fr2
	fmul fr15,fr3
	fcmp/gt fr2,fr3
	bf loc_8c08a034
	mov 0x64,r1
	fmov @(r0,r14),fr2
	add r14,r1
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)

loc_8C08A034:
	mov 0x54,r0
	fmov @(r0,r13),fr3
	fmov @(r0,r14),fr2
	fmul fr15,fr3
	fcmp/gt fr2,fr3
	bf loc_8c08a04c
	mov 0x70,r1
	fmov @(r0,r14),fr2
	add r14,r1
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)

loc_8C08A04C:
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/pl r0
	bf loc_8c08a06c
	mov.w @(0xEA,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c08a0fc
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c08a088

loc_8C08A06C:
	mov 0x02,r0
	mov r14,r4
	mov 0x17,r5
	mov.b r0,@(0x7,r14)
	mov 0x0C,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0xD4,PC),r3
	fmov @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C08A088:
	mov.b @(0x7,r14),r0
	add 0x01,r0
	bra loc_8c08a0fc
	mov.b r0,@(0x7,r14)

loc_8C08A090:
	jsr @r11
	mov r14,r4
	mov 0x50,r0
	fmov @(r0,r13),fr3
	fmov @(r0,r14),fr2
	fmul fr15,fr3
	fcmp/gt fr2,fr3
	bf loc_8c08a0ac
	mov 0x64,r1
	fmov @(r0,r14),fr2
	add r14,r1
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)

loc_8C08A0AC:
	mov 0x54,r0
	fmov @(r0,r13),fr3
	fmov @(r0,r14),fr2
	fmul fr15,fr3
	fcmp/gt fr2,fr3
	bf loc_8c08a0c4
	mov 0x70,r1
	fmov @(r0,r14),fr2
	add r14,r1
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)

loc_8C08A0C4:
	mov.w @(0x80,PC),r0
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	exts.b r3,r3
	cmp/pl r3
	bt loc_8c08a124
	mov.b @(0x7,r14),r0
	mov 0x36,r3
	add 0xFF,r0
	mov.b r0,@(0x7,r14)
	mov.w @(0x6C,PC),r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r12,@(r0,r14)
	add 0xF2,r0
	mov.b r12,@(r0,r14)
	add 0x26,r0
	mov.l @(0x68,PC),r3
	mov.l r12,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)

loc_8C08A0FC:
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x54,PC),r3
	fmov @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C08A110:
	jsr @r11
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c08a124
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x28,PC),r0
	mov.b r12,@(r0,r14)

loc_8C08A124:
	add 0x04,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C08A134:
	mov r4,r3
	mov.l @(loc_8C08A15C,pc),r1 ; r1 set to 0x8C154740
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c08a146:
	#data 0x019e
loc_8c08a148:
	#data 0x01A0
loc_8c08a14a:
	#data 0x01A1
loc_8c08a14c:
	#data 0x012c
	#align4

loc_8C08A150:
	#data bank03.loc_8c034e8c
loc_8C08A154:
	#data 0x8C2896B0
loc_8C08A158:
	#data bank04.loc_8c045748
loc_8C08A15C:
	#data bank15.loc_8c154740

;==============================================
loc_8C08A160:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C08A258,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.l @(loc_8C08A264,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C08A258,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C08A25A,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C08A25C,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C08A268,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x17,r5 ; r5 set to 0x17
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov 0x10,r6 ; r6 set to 0x10
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C08A26C,pc),r3 ; r3 set to 0x8C034E8c
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C08A25E,pc),r0 ; r0 set to 0x19c
	mov 0x42,r4 ; r4 set to 0x42
	mov.l @(loc_8C08A270,pc),r1 ; r1 set to 0x3FC00000
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x19d
	mov.b r4,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x00,r4 ; r4 set to 0x00
	mov.w @(loc_8C08A260,pc),r3 ; r3 set to 0x19a
	mov.b r4,@(r0,r14)
	mov 0x48,r0 ; r0 set to 0x48
	lds r1,fpul
	mov.l r3,@(r0,r14)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r14),fr2
	mov 0x3B,r3 ; r3 set to 0x3b
	fsts fpul,fr3
	fmul fr3,fr2
	mov.l @(loc_8C08A274,pc),r1 ; r1 set to 0x3F2AAAAb
	lds r1,fpul
	fmov.s fr2,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r14),fr1 ; r1 ??? bc r14 is ???	
	fsts fpul,fr2
	fmul fr2,fr1
	fmov.s fr1,@(r0,r14)
	mov 0x08,r0 ; r0 set to 0x08
	mov.w r0,@(0x1C,r14)
	mov.w @(loc_8C08A262,pc),r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1Ac
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19e
	mov.l @(loc_8C08A278,pc),r3 ; r3 set to 0x8C2896B0
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r4,@(r0,r14)
	mov r14,r4 ; r4 ??? bc r14 is ???	
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x01,r0 ; r0 set to 0x01
	mov.b r0,@(0x07,r14)
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C08A23A:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???	
	mov.b @(0x05,r3),r0
	tst r0,r0
	bt/s loc_8C08A27c
	mov 0x00,r13 ; r13 set to 0x00, r13 set to 0x00
	mov.w @(loc_8C08A25A,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	mov.b r13,@(r0,r14)
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0x12D, r0 set to 0x12d
	bra loc_8C08A360
	mov.b r0,@(0x04,r14)

;##############################################
loc_8C08A258:
	#data 0x00Dc
loc_8C08A25A:
	#data 0x012c
loc_8C08A25C:
	#data 0x01A3
loc_8C08A25E:
	#data 0x019c
loc_8C08A260:
	#data 0x019a
loc_8C08A262:
	#data 0x01A1

loc_8C08A264:
	#data bank12.loc_8c129560
loc_8C08A268:
	#data bank12.loc_8c1294C8
loc_8C08A26C:
	#data bank03.loc_8c034e8c
loc_8C08A270:
	#data 0x3FC00000
loc_8C08A274:
	#data 0x3F2AAAAb
loc_8C08A278:
	#data 0x8C2896B0

;==============================================
loc_8c08a27c:
	mov.l @(0x18,r14),r2
	mov r14,r1
	mov.l @(bank08.loc_8c08a388,pc),r3
	add 0x34,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mova @(loc_8C08A38C,pc),r0 
	mov.l @(0x18,r14),r1
	fmov.s @r0,fr3
	mov 0x50,r0
	fmov.s @(r0,r1),fr2
	mov.w @(loc_8C08A37C,pc),r0
	fmul fr3,fr2
	mov.w @(r0,r14),r3
	tst r3,r3
	fmov fr2,fr4
	bt/s loc_8c08a2a4
	fneg fr4
	fneg fr4

loc_8c08a2a4:
	mov 0x34,r0
	mov.l @(loc_8C08A390,pc),r1
	fmov.s @(r0,r14),fr3
	lds r1,fpul 
	mov 0x54,r1
	fadd fr4,fr3
	fsts fpul,fr0
	fmov.s fr3,@(r0,r14) 
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r14),fr2
	add r3,r1
	fmov.s @r1,fr3
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r14) 
	mov.b @(0x05,r14),r0 
	tst r0,r0
	bf loc_8c08a34a
	mov.l @(bank08.loc_8c08a394,pc),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x1C,r14),r0 
	add 0xFF,r0
	mov.w r0,@(0x1C,r14) 
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c08a318
	mov 0x10,r0
	mov.l @(bank08.loc_8c08a398,pc),r3
	mov.w r0,@(0x1C,r14) 
	mov.b @(0x07,r14),r0 
	add 0x01,r0
	extu.b r0,r1
	mov.b r0,@(0x07,r14) 
	jsr @r3
	mov 0x03,r0
	tst r0,r0
	bf loc_8c08a2f4
	bra loc_8c08a2f6
	mov 0x3B,r4

loc_8c08a2f4:
	mov 0x3C,r4

loc_8c08a2f6:
	mov.w @(loc_8C08A37E,pc),r0
	mov.l @(loc_8C08A39C,pc),r3
	mov.b r4,@(r0,r14) 
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

loc_8c08a318:
	mov.w @(loc_8C08A380,pc),r0
	mov.l @(0x18,r14),r3
	mov.w @(r0,r3),r2
	mov.w @(0x1E,r14),r0 
	cmp/eq r0,r2
	bt loc_8c08a33e
	mov.b @(0x05,r14),r0 
	mov 0x17,r5
	mov.w @(loc_8C08A382,pc),r3
	mov 0x11,r6
	add 0x01,r0
	mov.l @(bank08.loc_8c08a3a0,pc),r1
	mov.b r0,@(0x05,r14) 
	mov.w @(loc_8C08A37E,pc),r0
	mov.b @(r0,r14),r2
	or r3,r2
	mov.b r2,@(r0,r14) 
	jsr @r1
	mov r14,r4

loc_8c08a33e:
	lds.l @r15+,pr 
	mov.l @(loc_8c08a3a4,pc),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c08a34a:
	mov.l @(bank08.loc_8c08a394,pc),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c08a360
	mov.b @(0x04,r14),r0 
	add 0x01,r0
	mov.b r0,@(0x04,r14) 
	mov.w @(bank08.loc_8c08a384,pc),r0
	mov.b r13,@(r0,r14) 

loc_8C08A360:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C08A368:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C08A384,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C08A376:
	mov.l @(loc_8C08A3A8,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;==============================================
loc_8c08a37c:
	#data 0x0130
loc_8c08a37e:
	#data 0x01A1
loc_8c08a380:
	#data 0x0158
loc_8c08a382:
	#data 0x0080
loc_8C08A384:
	#data 0x012c
	#align4

loc_8C08A388:
	#data bank12.loc_8c1294C8
loc_8c08a38c:
	#data 0x4330AAAa
loc_8c08a390:
	#data 0x42F00000
loc_8C08A394:
	#data bank03.loc_8c034dee
loc_8C08A398:
	#data bank12.loc_8c1292D4
loc_8c08a39c:
	#data 0x8C2896B0
loc_8C08A3A0:
	#data bank03.loc_8c034e8c
loc_8C08A3A4:
	#data bank04.loc_8c045748
loc_8C08A3A8:
	#data bank04.loc_8c0450C0

;==============================================
loc_8c08a3ac:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x38,PC),r3
	mov 0x01,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c08a3d0
	mov r0,r4
	mov.l @(0x2C,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.w @(0x1E,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)

loc_8c08a3d0:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C08A3D8:
	mov r4,r3
	mov.l @(loc_8C08A3F4,pc),r1 ; r1 set to 0x8C154750
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c08a3e8:
	#data 0x1A01
	#align4

loc_8C08A3EC:
	#data bank04.loc_8c044F12
loc_8C08A3F0:
	#data loc_8C08A3D8
loc_8C08A3F4:
	#data bank15.loc_8c154750

loc_8C08A3F8:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x124,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x11C,PC),r2
	add 0x01,r0
	mov.l @(0x12C,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0x116,PC),r0
	mov.l @(0x18,r14),r4
	jsr @r3
	add r4,r2
	mov.w @(0x110,PC),r0
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
	mov.w @(0xF4,PC),r0
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
	mov.l @(0xF0,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r4),r2
	mov 0x00,r4
	mov 0x45,r3
	mov.b r2,@(r0,r14)
	mov 0x17,r5
	mov.w @(0xCA,PC),r0
	mov 0x0F,r6
	mov.b r4,@(r0,r14)
	add 0x70,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r3,@(r0,r14)
	mov.l @(0xD4,PC),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8C08A474:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r13
	mov.l @(0x18,r13),r14
	mov.b @r14,r3
	tst r3,r3
	bt loc_8c08a50c
	mov r14,r2
	mov.l @(0xB0,PC),r3
	mov r13,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mova @(0xAC,PC),r0
	fmov @r0,fr3
	mov 0x50,r0
	fmov @(r0,r14),fr4
	mov.w @(0x8C,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c08a4a8
	fmul fr3,fr4
	fneg fr4

loc_8C08A4A8:
	mov 0x34,r0
	mov.l @(0x9C,PC),r1
	fmov @(r0,r13),fr3
	lds r1,fpul
	mov 0x54,r1
	fadd fr4,fr3
	add r14,r1
	fsts fpul,fr0
	fmov fr3,@(r0,r13)
	mov 0x38,r0
	fmov @(r0,r13),fr2
	fmov @r1,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r13)
	mov.w @(0x66,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c08a50c
	mov.w @(0x60,PC),r0
	mov.b @(r0,r13),r1
	tst r1,r1
	bt loc_8c08a4e2
	mov.l @(0x74,PC),r3
	jsr @r3
	mov r13,r4
	mov.l @(0x74,PC),r2
	mov 0x0F,r5
	jsr @r2
	mov r13,r4

loc_8C08A4E2:
	mov.w @(0x4C,PC),r4
	add r14,r4
	mov.l r4,@r15
	mov.b @r4,r3
	tst r3,r3
	bf loc_8c08a4f4
	mov.b @(0x1,r4),r0
	tst r0,r0
	bt loc_8c08a50c

loc_8C08A4F4:
	mov.w @(0x3C,PC),r0
	fldi1 fr3
	fmov @(r0,r14),fr2
	fcmp/eq fr3,fr2
	bf loc_8c08a50c
	mov r13,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x4C,PC),r2
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C08A50C:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C08A516:
	mov.b @(0x04,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x04,r4)

;-------------------------------------------------------------------------------
loc_8C08A51E:
	mov.l @(loc_8C08A558,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c08a524:
	#data 0x00Dc
loc_8c08a526:
	#data 0x00C0
loc_8c08a528:
	#data 0x012c
loc_8c08a52a:
	#data 0x01A3
loc_8c08a52c:
	#data 0x0130
loc_8c08a52e:
	#data 0x019D
loc_8C08A530:
	#data 0x019f
loc_8C08A532:
	#data 0x02A4
loc_8C08A534:
	#data 0x02A8
	#align4

loc_8C08A538:
	#data bank12.loc_8c129560
loc_8C08A53C:
	#data bank12.loc_8c1294C8
loc_8C08A540:
	#data bank03.loc_8c034e8c
loc_8C08A544:
	#data 0x42200000
loc_8C08A548:
	#data 0x434DB6Db
loc_8C08A54C:
	#data bank05.loc_8c057B6e
loc_8C08A550:
	#data bank04.loc_8C04218c
loc_8C08A554:
	#data bank04.loc_8c045748
loc_8C08A558:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c08a55c:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@(0x8,r15)
	mov r5,r0
	nop 
	mov.l @(0xD4,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c08a596
	mov r0,r4
	mov.l @(0xC4,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @(0x8,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @(0x4,r15),r0
	mov.w @(0xAA,PC),r2
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8c08a596:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;-------------------------------------------------------------------------------
loc_8c08a59e:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8C08A636,pc),r13
	extu.b r6,r11
	mov.l @(loc_8c08a63c,pc),r10
	cmp/pl r11
	mov r4,r12
	mov.b r5,@r15
	bf/s loc_8c08a5e8
	mov 0x00,r14

loc_8c08a5bc:
	mov 0x01,r5
	mov 0x00,r6
	jsr @r10
	mov r6,r4
	tst r0,r0
	bt/s loc_8c08a5e8
	mov r0,r4
	mov.l @(bank08.loc_8c08a640,pc),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4) 
	mov.l @(0x18,r12),r2
	mov.l r2,@(0x18,r4) 
	mov.l r12,@(0x14,r4) 
	mov.b @r15,r3
	mov.b r3,@(r0,r4) 
	mov 0x21,r0
	mov.b r14,@(r0,r4) 
	mov 0x26,r0
	add 0x01,r14
	mov.w r13,@(r0,r4) 
	cmp/ge r11,r14
	bf loc_8c08a5bc

loc_8c08a5e8:
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

loc_8C08A5FC:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C08A638,pc),r2 ; r2 set to 0x2A4
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(0x18,r14),r3
	mov r14,r4
	mov.w @(loc_8C08A63A,pc),r1 ; r1 set to 0xCc
	add r3,r2 ; r2 ??? bc r3 is ???	
	mov.l @(loc_8C08A644,pc),r3 ; r3 set to 0x8C28C624
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.l r2,@r3 ; r3 ??? bc r2 is ???	
	mov.l @(loc_8C08A648,pc),r2 ; r2 set to 0x8C28C620
	mov.l r1,@r2 ; r2 ??? bc r1 is ???	
	mov.b @(r0,r14),r3
	mov.l @(loc_8C08A64C,pc),r0 ; r0 set to 0x8C154760
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r1
	jmp @r1
	mov.l @r15+,r14

loc_8C08A624:
	mov r4,r3
	mov.l @(loc_8C08A650,pc),r1 ; r1 set to 0x8C154790
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c08a636:
	#data 0x1B00
loc_8C08A638:
	#data 0x02A4
loc_8C08A63A:
	#data 0x00Cc
	#align4

loc_8C08A63C:
	#data bank04.loc_8c044F12
loc_8C08A640:
	#data loc_8C08A5Fc
loc_8C08A644:
	#data 0x8C28C624
loc_8C08A648:
	#data 0x8C28C620
loc_8C08A64C:
	#data bank15.loc_8c154760
loc_8C08A650:
	#data bank15.loc_8c154790

;==============================================
loc_8C08A654:
	mov.l r8,@-r15
	mov.w @(loc_8C08A792,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C08A7A8,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.l @(0x18,r4),r6
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C08A792,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C08A794,pc),r0 ; r0 set to 0x12c
	mov 0x01,r7 ; r7 set to 0x01
	mov r4,r1
	add 0x50,r1
	mov.b r7,@(r0,r4)
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
	mov.w @(loc_8C08A796,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C08A7AC,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x00,r5 ; r5 set to 0x00
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov.l @(loc_8C08A7B4,pc),r1 ; r1 set to 0x8C28C620
	mov.b r3,@(r0,r4)
	mov.w @(loc_8C08A798,pc),r0 ; r0 set to 0x130
	mov.l @(0x18,r4),r2
	mov.w @(r0,r2),r3
	mov.l @(loc_8C08A7B0,pc),r2 ; r2 set to 0x8C28C624
	mov.w r3,@(r0,r4)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r5,@(r0,r4)
	mov.l @r2,r3
	mov.w @(loc_8C08A79A,pc),r2 ; r2 set to 0x158
	mov.b r7,@r3
	mov 0x42,r7 ; r7 set to 0x42
	mov.l @(0x18,r4),r0 ; r0 ??? bc r4 is ???	
	mov.l @r1,r3
	mov.w @(r0,r2),r0
	mov.w r0,@r3
	mov.w @(loc_8C08A79C,pc),r0 ; r0 set to 0x19c
	mov.b r7,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x19d
	mov.b r7,@(r0,r4)
	mov.w @(loc_8C08A79E,pc),r0 ; r0 set to 0x255
	mov.b @(r0,r6),r0 ; r0 ??? bc r6 is ???	
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8C08A6Fc
	mov.w @(loc_8C08A7A0,pc),r0 ; r0 set to 0x1A1
	mov 0x52,r2 ; r2 set to 0x52
	bra loc_8C08A702
	mov.b r2,@(r0,r4)

loc_8C08A6FC:
	mov.w @(loc_8C08A7A0,pc),r0 ; r0 set to 0x1A1
	mov 0x30,r3 ; r3 set to 0x30
	mov.b r3,@(r0,r4)

loc_8C08A702:
	mov.w @(loc_8C08A7A2,pc),r0 ; r0 set to 0x1AC, r0 set to 0x1Ac
	mov 0x34,r8 ; r8 set to 0x34, r8 set to 0x34
	mov.l @(loc_8C08A7B8,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
	mov.w r5,@(r0,r4)
	add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19e
	mov.b r5,@(r0,r4)
	add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4
	mov.l r5,@(r0,r4)
	mov 0x20,r5 ; r5 set to 0x20, r5 set to 0x20
	mov.b @(0x02,r4),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4
	shll r0 ; r0 set to 0x188, r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(loc_8C08A7A4,pc),r0 ; r0 set to 0x13E, r0 set to 0x13e
	mov.b r5,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x13F, r0 set to 0x13f
	mov.b r5,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???, r3 ??? bc r4 is ???	
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C08A798,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r4),r3
	tst r3,r3
	bt/s loc_8C08A74e
	add r4,r8 ; r8 ??? bc r4 is ???, r8 ??? bc r4 is ???	
	mov.l @(loc_8C08A7BC,pc),r1 ; r1 set to 0x43055555, r1 set to 0x43055555
	lds r1,fpul
	bra loc_8C08A754
	fsts fpul,fr3

loc_8C08A74E:
	mov.l @(loc_8C08A7C0,pc),r2 ; r2 set to 0xC3055555
	lds r2,fpul
	fsts fpul,fr3

loc_8C08A754:
	fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(loc_8C08A7C4,pc),r1 ; r1 set to 0x43092492, r1 set to 0x43092492
	fadd fr3,fr2
	fldi0 fr4
	lds r1,fpul
	fmov.s fr2,@r8
	fmov.s @(r0,r4),fr2
	fsts fpul,fr3
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
	mov.w @(loc_8C08A798,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8C08A7Cc
	mov.w @(loc_8C08A796,pc),r0 ; r0 set to 0x1A3, r0 set to 0x1A3
	mov.b @(r0,r4),r3
	mov.l @(loc_8C08A7C8,pc),r0 ; r0 set to 0x8C1547A0, r0 set to 0x8C1547A0
	extu.b r3,r3
	shll2 r3
	fmov.s @(r0,r3),fr2
	bra loc_8C08A7Da
	nop

;==============================================
loc_8C08A792:
	#data 0x00Dc
loc_8C08A794:
	#data 0x012c
loc_8C08A796:
	#data 0x01A3
loc_8C08A798:
	#data 0x0130
loc_8C08A79A:
	#data 0x0158
loc_8C08A79C:
	#data 0x019c
loc_8C08A79E:
	#data 0x0255
loc_8C08A7A0:
	#data 0x01A1
loc_8C08A7A2:
	#data 0x01Ac
loc_8C08A7A4:
	#data 0x013e
	#align4

loc_8C08A7A8:
	#data bank12.loc_8c129560
loc_8C08A7AC:
	#data bank12.loc_8c1294C8
loc_8C08A7B0:
	#data 0x8C28C624
loc_8C08A7B4:
	#data 0x8C28C620
loc_8C08A7B8:
	#data 0x8C2896B0
loc_8C08A7BC:
	#data 0x43055555
loc_8C08A7C0:
	#data 0xC3055555
loc_8C08A7C4:
	#data 0x43092492
loc_8C08A7C8:
	#data bank15.loc_8c1547A0

;==============================================
loc_8C08A7CC:
	mov.w @(loc_8C08A8D2,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r4),r2
	mov.l @(loc_8C08A8D8,pc),r0 ; r0 set to 0x8C1547A0
	extu.b r2,r2
	shll2 r2
	fmov.s @(r0,r2),fr2
	fneg fr2

loc_8C08A7DA:
	mov.l @(loc_8C08A8DC,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	mov 0x14,r5 ; r5 set to 0x14, r5 set to 0x14
	fmov.s fr2,@(r0,r4)
	lds.l @r15+,pr
	mov 0x00,r6 ; r6 set to 0x00, r6 set to 0x00
	jmp @r3
	mov.l @r15+,r8

;==============================================
loc_8C08A7EA:
	mov.w @(0xE6,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	add 0x72,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c08a80a
	mov 0x00,r13
	mov.w @(0xD0,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c08a838

loc_8C08A80A:
	mov.b @(0x4,r14),r0
	mov 0x01,r6
	fldi0 fr4
	mov 0x14,r5
	add 0x01,r0
	mov.l @(0xC8,PC),r2
	mov.b r0,@(0x4,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov r14,r4
	mov.l @r2,r3
	mov.b r13,@r3
	lds.l @r15+,pr
	mov.l @(0xA8,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C08A838:
	mov.l @(0xA8,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c08a852
	mov.l @(0x9C,PC),r3
	mov r14,r4
	mov.l @r3,r2
	mov.b r13,@r2
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c08b7dc
	mov.l @r15+,r14

loc_8C08A852:
	mov.l @(0x94,PC),r3
	mov 0x24,r0
	mov.b r13,@(r0,r14)
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
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C08A8A0:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C08A8E8,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C08A8B8
	mov.l @r15,r4
	add 0x04,r15
	bra loc_8C08B7Dc
	lds.l @r15+,pr

loc_8C08A8B8:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;-------------------------------------------------------------------------------
loc_8C08A8C0:
	mov r4,r3
	mov.l @(loc_8C08A8F0,pc),r1 ; r1 set to 0x8C1547A8
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C08A8D2:
	#data 0x01A3
loc_8C08A8D4:
	#data 0x012c
loc_8C08A8D6:
	#data 0x019F
	#align4

loc_8C08A8D8:
	#data bank15.loc_8c1547A0
loc_8C08A8DC:
	#data bank03.loc_8c034e8c
loc_8c08a8e0:
	#data 0x8C28C624
loc_8C08A8E4:
	#data bank03.loc_8c03340c
loc_8C08A8E8:
	#data bank03.loc_8c034dee
loc_8C08A8EC:
	#data bank04.loc_8c045748
loc_8C08A8F0:
	#data bank15.loc_8c1547A8

;==============================================
loc_8C08A8F4:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C08AA44,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.l @(loc_8C08AA50,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C08AA44,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C08AA46,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C08AA48,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C08AA54,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(loc_8C08AA58,pc),r2 ; r2 set to 0x8C28C624
	mov 0x24,r0 ; r0 set to 0x24
	mov.l @(0x18,r14),r1
	mov 0x00,r4 ; r4 set to 0x00
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov.b r4,@(r0,r14)
	mov.l @r2,r3
	mov r5,r0 ; r0 set to 0x01
	nop
	mov.b r0,@(0x01,r3)
	mov.l @(0x18,r14),r0 ; r0 ??? bc r14 is ???	
	mov.w @(loc_8C08AA4A,pc),r2 ; r2 set to 0x158
	mov.l @(loc_8C08AA5C,pc),r1 ; r1 set to 0x8C28C620
	mov.w @(r0,r2),r0
	mov.l @r1,r3
	mov.w r0,@r3
	mov r4,r0 ; r0 set to 0x00
	nop
	mov 0x08,r5 ; r5 set to 0x08
	mov.b r0,@(0x07,r14)
	mov r5,r0 ; r0 set to 0x08
	nop
	mov.w r0,@(0x1C,r14)
	mov 0x44,r2 ; r2 set to 0x44
	mov.l @(0x18,r14),r3
	mov.w r0,@(0x1E,r3)
	mov 0x43,r3 ; r3 set to 0x43
	mov.w @(loc_8C08AA4C,pc),r0 ; r0 set to 0x19c
	mov.b r3,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x19d
	mov.b r2,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x1A1
	mov 0x40,r3 ; r3 set to 0x40
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1Ac
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19e
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(loc_8C08AA60,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2 ; r2 ??	
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1 ; r1 ??? bc r2 is ???	
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r14),r2
	fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???	
	fmov.s fr3,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r2),fr3
	fmov.s fr3,@(r0,r14)
	bsr loc_8C08AB24
	mov r14,r4 ; r4 ??? bc r14 is ???	
	mov.l @(loc_8C08AA64,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x14,r5 ; r5 set to 0x14
	mov 0x02,r6 ; r6 set to 0x02
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8C08AA68,pc),r2 ; r2 set to 0x8C045748
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C08A9E2:
	mov.l @(loc_8C08AA5C,pc),r2 ; r2 set to 0x8C28C620
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C08AA4A,pc),r0 ; r0 set to 0x158
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.w @r3,r1
	mov.l @(0x18,r14),r3
	mov.w @(r0,r3),r0 ; r0 ??? bc r3 is ???	
	cmp/eq r0,r1
	bt loc_8C08AA04
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C08B7Dc
	mov.l @r15+,r14

loc_8C08AA04:
	mov.l @(0x18,r14),r3
	mov 0x34,r0 ; r0 set to 0x34
	mov 0x00,r13 ; r13 set to 0x00
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C08AA4E,pc),r0 ; r0 set to 0x19f
	mov.b r13,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0 ; r0 set to 0x19e
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0 ; r0 ??	
	cmp/pz r0
	bt loc_8C08AAC4
	mov.b @(0x07,r14),r0
	mov.l @(loc_8C08AA6C,pc),r1 ; r1 set to 0x8C1547B8
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.b @(0x07,r14),r0
	extu.b r0,r0
	shll r0
	mov.w @(r0,r1),r0
	mov.w r0,@(0x1C,r14)
	mov.l @(0x18,r14),r0
	mov.w @(0x1E,r0),r0
	cmp/eq 0x01,r0
	bf loc_8C08AA70
	bra loc_8C08AA72
	mov 0x41,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C08AA44:
	#data 0x00Dc
loc_8C08AA46:
	#data 0x012c
loc_8C08AA48:
	#data 0x01A3
loc_8C08AA4A:
	#data 0x0158
loc_8C08AA4C:
	#data 0x019c
loc_8C08AA4E:
	#data 0x019f
	#align4

loc_8C08AA50:
	#data bank12.loc_8c129560
loc_8C08AA54:
	#data bank12.loc_8c1294C8
loc_8C08AA58:
	#data 0x8C28C624
loc_8C08AA5C:
	#data 0x8C28C620
loc_8C08AA60:
	#data 0x8C2896B0
loc_8C08AA64:
	#data bank03.loc_8c034e8c
loc_8C08AA68:
	#data bank04.loc_8c045748
loc_8C08AA6C:
	#data bank15.loc_8c1547B8

;==============================================
loc_8C08AA70:
	mov 0x40,r3 ; r3 set to 0x40

loc_8C08AA72:
	mov.w @(loc_8C08AB74,pc),r0 ; r0 set to 0x1A1, r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC, r0 set to 0x1Ac
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19e
	mov.b r13,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4
	mov.l @(loc_8C08AB80,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
	mov.l r13,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4
	shll r0 ; r0 set to 0x188, r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	bsr loc_8C08AB24
	mov r14,r4
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
	mov.w @(0x1E,r3),r0
	add 0xFF,r0 ; r0 set to 0x187, r0 set to 0x187
	mov.w r0,@(0x1E,r3)
	exts.w r0,r0 ; r0 ??, r0 ??	
	cmp/pz r0
	bt loc_8C08AAC4
	mov.l @(loc_8C08AB84,pc),r2 ; r2 set to 0x8C28C624, r2 set to 0x8C28C624
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.l @r2,r3
	mov r13,r0
	nop
	mov.b r0,@(0x01,r3)
	mov 0x14,r5 ; r5 set to 0x14, r5 set to 0x14
	mov.l @(loc_8C08AB88,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov 0x04,r6 ; r6 set to 0x04, r6 set to 0x04
	jsr @r3
	mov r14,r4
	bra loc_8C08AACa
	nop

loc_8C08AAC4:
	mov.l @(loc_8C08AB8C,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r14,r4

loc_8C08AACA:
	lds.l @r15+,pr
	mov.l @(loc_8C08AB90,pc),r2 ; r2 set to 0x8C045748, r2 set to 0x8C045748
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C08AAD6:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov.b @(0x5,r4),r0
	tst r0,r0
	bf loc_8c08ab16
	mov.w @(0x8E,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c08ab16
	mov.w @(0x86,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c08ab16
	mov 0x34,r0
	fmov @(r0,r4),fr3
	mov 0x00,r3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov.l @(0x80,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c08ab1e

loc_8C08AB16:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c08b7dc
	mov.l @r15+,r14

loc_8C08AB1E:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C08AB24:
	mov.w @(loc_8C08AB7A,pc),r0 ; r0 set to 0x20c
	mov.l @(0x18,r4),r1
	mov.l @(r0,r1),r5
	mov.w @(0x1E,r1),r0
	cmp/eq 0x01,r0
	bt loc_8C08AB5e
	mov.w @(loc_8C08AB7C,pc),r0 ; r0 set to 0x1D2
	mov.b @(r0,r1),r3
	tst r3,r3
	bt loc_8C08AB3e
	mova @(loc_8C08AB94,pc),r0  ; r0 set to 0x8C08AB94
	bra loc_8C08AB42
	fmov.s @r0,fr3

loc_8c08ab3e:
	mova @(loc_8C08AB98,pc),r0 
	fmov.s @r0,fr3

loc_8c08ab42:
	mov 0x34,r0
	fmov.s @(r0,r1),fr4
	fadd fr3,fr4
	fmov fr4,fr3
	fmov.s @(r0,r5),fr4
	mova @(loc_8C08AB9C,pc),r0 
	fsub fr3,fr4
	fmov.s @r0,fr3
	fabs fr4
	fcmp/gt fr3,fr4
	bf loc_8c08ab5e
	mov.w @(loc_8C08AB7E,pc),r0
	mov 0x10,r2
	mov.w r2,@(r0,r4) 

loc_8C08AB5E:
	rts
	nop

;-------------------------------------------------------------------------------
loc_8C08AB62:
	mov r4,r3
	mov.l @(loc_8C08ABA0,pc),r1 ; r1 set to 0x8C1547D8
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C08AB74:
	#data 0x01A1
loc_8C08AB76:
	#data 0x01D0
loc_8C08AB78:
	#data 0x01E9
loc_8C08AB7A:
	#data 0x020c
loc_8C08AB7C:
	#data 0x01D2
loc_8c08ab7e:
	#data 0x01Ac
	#align4

loc_8C08AB80:
	#data 0x8C2896B0
loc_8C08AB84:
	#data 0x8C28C624
loc_8C08AB88:
	#data bank03.loc_8c034e8c
loc_8C08AB8C:
	#data bank03.loc_8c034dee
loc_8C08AB90:
	#data bank04.loc_8c045748
loc_8C08AB94:
	#data 0x42D55555
loc_8c08ab98:
	#data 0xC2D55555
loc_8c08ab9c:
	#data 0x42A00000
loc_8C08ABA0:
	#data bank15.loc_8c1547D8

;==============================================
loc_8C08ABA4:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C08AC94,pc),r3 ; r3 set to 0xDc
	mov 0x01,r4 ; r4 set to 0x01
	mov.w @(loc_8C08AC94,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C08AC92,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov.l @(0x18,r14),r2
	add r3,r2
	mov.l @(loc_8C08ACA0,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add 0x94,r0 ; r0 set to 0xC0
	mov.w @(loc_8C08AC92,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C08AC96,pc),r0 ; r0 set to 0x1A3
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
	add 0x50,r2
	mov.l @(loc_8C08ACA4,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x17,r5 ; r5 set to 0x17
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov 0x00,r6 ; r6 set to 0x00
	mov.l @(loc_8C08ACA8,pc),r1 ; r1 set to 0x8C28C620
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C08AC98,pc),r0 ; r0 set to 0x130
	mov.l @(0x18,r14),r2
	mov.w @(r0,r2),r3
	mov.w r3,@(r0,r14)
	add 0x28,r0 ; r0 set to 0x158
	mov.l @(0x18,r14),r3
	mov.l @r1,r2
	mov.w @(r0,r3),r3
	mov.w r3,@r2
	mov.l @(loc_8C08ACAC,pc),r3 ; r3 set to 0x8C034E8c
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???	
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8C08AC38:
	mov.l @(loc_8C08ACA8,pc),r2 ; r2 set to 0x8C28C620, r2 set to 0x8C28C620
	mov.w @(loc_8C08AC9A,pc),r0 ; r0 set to 0x158, r0 set to 0x158
	mov.l @r2,r3 ; r3 ??	
	mov.w @r3,r1 ; r1 ??? bc r3 is ???	
	mov.l @(0x18,r4),r3
	mov.w @(r0,r3),r0 ; r0 ??? bc r3 is ???, r0 ??? bc r3 is ???	
	cmp/eq r0,r1
	bt loc_8C08AC4c
	bra loc_8C08B7Dc
	nop

loc_8C08AC4C:
	mov.l @(0x18,r4),r3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	mov 0x00,r3 ; r3 set to 0x00
	fmov.s fr3,@(r0,r4)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r4)
	mov.w @(loc_8C08AC9C,pc),r3 ; r3 set to 0x150
	mov.l @(0x18,r4),r2
	add r2,r3 ; r3 ??? bc r2 is ???	
	mov.b @(0x01,r3),r0
	mov.w @(loc_8C08AC9C,pc),r3 ; r3 set to 0x150
	mov r0,r2 ; r2 set to 0x24
	add r4,r3 ; r3 ??? bc r4 is ???	
	mov.b @(0x01,r3),r0
	cmp/eq r0,r2
	bt loc_8C08AC7c
	mov.l @(loc_8C08ACB0,pc),r3 ; r3 set to 0x8C034DEe
	jmp @r3
	nop

loc_8C08AC7C:
	rts
	nop

;-------------------------------------------------------------------------------
loc_8C08AC80:
	mov r4,r3
	mov.l @(loc_8C08ACB4,pc),r1 ; r1 set to 0x8C1547E8
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C08AC92:
	#data 0x012c
loc_8C08AC94:
	#data 0x00Dc
loc_8C08AC96:
	#data 0x01A3
loc_8C08AC98:
	#data 0x0130
loc_8C08AC9A:
	#data 0x0158
loc_8C08AC9C:
	#data 0x0150
	#align4

loc_8C08ACA0:
	#data bank12.loc_8c129560
loc_8C08ACA4:
	#data bank12.loc_8c1294C8
loc_8C08ACA8:
	#data 0x8C28C620
loc_8C08ACAC:
	#data bank03.loc_8c034e8c
loc_8C08ACB0:
	#data bank03.loc_8c034dee
loc_8C08ACB4:
	#data bank15.loc_8c1547E8

;==============================================
loc_8C08ACB8:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C08ADE6,pc),r3 ; r3 set to 0xDc
	mov 0x01,r4 ; r4 set to 0x01
	mov.w @(loc_8C08ADE6,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C08ADE4,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov.l @(0x18,r14),r2
	add r3,r2
	mov.l @(loc_8C08ADF0,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add 0x94,r0 ; r0 set to 0xC0
	mov.w @(loc_8C08ADE4,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C08ADE8,pc),r0 ; r0 set to 0x1A3
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
	add 0x50,r2
	mov.l @(loc_8C08ADF4,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0 ; r0 set to 0x24
	fldi0 fr4
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov.l @(loc_8C08ADF8,pc),r4 ; r4 set to 0x8C28C620
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C08ADEA,pc),r0 ; r0 set to 0x130
	mov.l @(0x18,r14),r2
	mov.w @(r0,r2),r3
	mov.w r3,@(r0,r14)
	add 0x28,r0 ; r0 set to 0x158
	mov.l @(0x18,r14),r2
	mov.l @r4,r3
	mov.w @(r0,r2),r1
	mov 0x5C,r0 ; r0 set to 0x5c
	mov.w r1,@r3
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mov 0x04,r0 ; r0 set to 0x04
	mov.l @r4,r3
	fmov.s fr4,@(r0,r3)
	mov.w @(loc_8C08ADEA,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8C08AD62
	mova @(loc_8C08ADFC,pc),r0  ; r0 set to 0x8C08ADFc
	bra loc_8C08AD66
	fmov.s @r0,fr3

loc_8c08ad62:
	mova @(loc_8C08AE00,pc),r0 
	fmov.s @r0,fr3

loc_8c08ad66:
	mov.l @(bank08.loc_8c08ae04,pc),r3
	mov 0x5C,r0
	mov 0x17,r5
	fmov.s fr3,@(r0,r14) 
	mov 0x03,r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr 
	mov r14,r4
	mov.l @r15+,r14

loc_8c08ad7a:
	mov.l @(bank08.loc_8c08adf8,pc),r5
	mov.w @(loc_8C08ADEC,pc),r0
	mov.l @r5,r3
	mov.w @r3,r2
	mov.l @(0x18,r4),r3
	mov.w @(r0,r3),r1
	cmp/eq r1,r2
	bf loc_8c08adc8
	mov.l @(0x18,r4),r3
	mov 0x34,r0
	mov 0x5C,r1
	fmov.s @(r0,r3),fr3
	add r4,r1
	fmov.s fr3,@(r0,r4) 
	mov 0x38,r0
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	mov 0x00,r3
	fmov.s fr3,@(r0,r4) 
	mov 0x24,r0
	mov.b r3,@(r0,r4) 
	mov 0x04,r0
	mov.l @r5,r2
	fmov.s @r1,fr3
	mov 0x04,r1
	fmov.s @(r0,r2),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r2) 
	mov 0x34,r0
	mov.l @r5,r3
	fmov.s @(r0,r4),fr2
	add r3,r1
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4) 
	mov.l @(0x18,r4),r3
	mov.w @(0x1E,r3),r0 
	cmp/pl r0
	bt loc_8c08adcc

loc_8c08adc8:
	bra loc_8c08b7dc
	nop 

loc_8c08adcc:
	mov.l @(loc_8c08ae08,pc),r3
	jmp @r3
	nop 

loc_8C08ADD2:
	mov r4,r3
	mov.l @(loc_8C08AE0C,pc),r1 ; r1 set to 0x8C1547F8
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C08ADE4:
	#data 0x012c
loc_8C08ADE6:
	#data 0x00Dc
loc_8C08ADE8:
	#data 0x01A3
loc_8C08ADEA:
	#data 0x0130
loc_8c08adec:
	#data 0x0158
	#align4

loc_8C08ADF0:
	#data bank12.loc_8c129560
loc_8C08ADF4:
	#data bank12.loc_8c1294C8
loc_8C08ADF8:
	#data 0x8C28C620
loc_8C08ADFC:
	#data 0x3FD55555
loc_8c08ae00:
	#data 0xBFD55555
loc_8C08AE04:
	#data bank03.loc_8c034e8c
loc_8C08AE08:
	#data bank03.loc_8c034dee
loc_8C08AE0C:
	#data bank15.loc_8c1547F8

;==============================================
loc_8C08AE10:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C08AF34,pc),r3 ; r3 set to 0xDc
	mov 0x01,r4 ; r4 set to 0x01
	mov.w @(loc_8C08AF34,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C08AF32,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov.l @(0x18,r14),r2
	add r3,r2
	mov.l @(loc_8C08AF40,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add 0x94,r0 ; r0 set to 0xC0
	mov.w @(loc_8C08AF32,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C08AF36,pc),r0 ; r0 set to 0x1A3
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
	add 0x50,r2
	mov.l @(loc_8C08AF44,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x17,r5 ; r5 set to 0x17
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov 0x08,r6 ; r6 set to 0x08
	mov.l @(loc_8C08AF48,pc),r1 ; r1 set to 0x8C28C620
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C08AF38,pc),r0 ; r0 set to 0x130
	mov.l @(0x18,r14),r2
	mov.w @(r0,r2),r3
	mov 0x00,r2 ; r2 set to 0x00
	mov.w r3,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r2,@(r0,r14)
	mov.l @(0x18,r14),r2 ; r2 ??? bc r14 is ???	
	mov.w @(loc_8C08AF3A,pc),r0 ; r0 set to 0x158
	mov.l @r1,r3
	mov.w @(r0,r2),r2
	mov.w r2,@r3
	mov.l @(loc_8C08AF4C,pc),r3 ; r3 set to 0x8C034E8c
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???	
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8C08AEAA:
	mov.l @(loc_8C08AF48,pc),r2 ; r2 set to 0x8C28C620, r2 set to 0x8C28C620
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C08AF3A,pc),r0 ; r0 set to 0x158, r0 set to 0x158
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @r2,r3 ; r3 ??	
	mov.w @r3,r1 ; r1 ??? bc r3 is ???	
	mov.l @(0x18,r14),r3
	mov.w @(r0,r3),r0 ; r0 ??? bc r3 is ???, r0 ??? bc r3 is ???	
	cmp/eq r0,r1
	bt loc_8C08AECc
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C08B7Dc
	mov.l @r15+,r14

loc_8C08AECC:
	mov.l @(0x18,r14),r3
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C08AF50,pc),r13 ; r13 set to 0x8C034DEe
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8C08AF14
	mov.w @(loc_8C08AF3C,pc),r2 ; r2 set to 0x150
	mov.l @(0x18,r14),r3
	add r3,r2 ; r2 ??? bc r3 is ???	
	mov.b @(0x01,r2),r0
	cmp/pz r0
	bt loc_8C08AEFc
	mov.b @(0x05,r14),r0
	add 0x01,r0 ; r0 set to 0x39
	bra loc_8C08AF14
	mov.b r0,@(0x05,r14)

loc_8C08AEF8:
	jsr @r13
	mov r14,r4

loc_8C08AEFC:
	mov.w @(loc_8C08AF3C,pc),r3 ; r3 set to 0x150, r3 set to 0x150
	mov.w @(loc_8C08AF3C,pc),r2 ; r2 set to 0x150, r2 set to 0x150
	add r14,r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
	mov.b @(0x01,r3),r0
	mov.l @(0x18,r14),r3
	mov r0,r1
	add r3,r2 ; r2 ??? bc r3 is ???, r2 ??? bc r3 is ???	
	mov.b @(0x01,r2),r0
	cmp/eq r0,r1
	bf loc_8C08AEF8
	bra loc_8C08AF18
	nop

loc_8C08AF14:
	jsr @r13
	mov r14,r4

loc_8C08AF18:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C08AF20:
	mov r4,r3
	mov.l @(loc_8C08AF54,pc),r1 ; r1 set to 0x8C154808
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C08AF32:
	#data 0x012c
loc_8C08AF34:
	#data 0x00Dc
loc_8C08AF36:
	#data 0x01A3
loc_8C08AF38:
	#data 0x0130
loc_8C08AF3A:
	#data 0x0158
loc_8C08AF3C:
	#data 0x0150
	#align4

loc_8C08AF40:
	#data bank12.loc_8c129560
loc_8C08AF44:
	#data bank12.loc_8c1294C8
loc_8C08AF48:
	#data 0x8C28C620
loc_8C08AF4C:
	#data bank03.loc_8c034e8c
loc_8C08AF50:
	#data bank03.loc_8c034dee
loc_8C08AF54:
	#data bank15.loc_8c154808

;==============================================
loc_8C08AF58:
	mov.w @(loc_8C08B05C,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C08B06C,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.l @(0x18,r4),r5
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C08B05C,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C08B05E,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C08B060,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C08B070,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x00,r6 ; r6 set to 0x00
	mov 0x24,r0 ; r0 set to 0x24
	mov.l @(loc_8C08B074,pc),r2 ; r2 set to 0x8C28C620
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov 0x42,r7 ; r7 set to 0x42
	mov.b r6,@(r0,r4)
	mov.w @(loc_8C08B062,pc),r0 ; r0 set to 0x158
	mov.l @r2,r3
	mov.w @(r0,r5),r1
	add 0x44,r0 ; r0 set to 0x19c
	mov.w r1,@r3
	mov.b r7,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x19d
	mov.b r7,@(r0,r4)
	add 0x33,r0 ; r0 set to 0x1D0
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8C08AFF4
	mov.w @(loc_8C08B064,pc),r0 ; r0 set to 0x1E9
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
	extu.b r0,r0
	cmp/eq 0x0F,r0
	bf loc_8C08AFF4
	mov.w @(loc_8C08B066,pc),r0 ; r0 set to 0x1A1
	mov 0x61,r2 ; r2 set to 0x61
	bra loc_8C08B006
	mov.b r2,@(r0,r4)

loc_8C08AFF4:
	mov.w @(loc_8C08B060,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r4),r1
	tst r1,r1
	bt loc_8C08B000
	bra loc_8C08B002
	mov 0x59,r3

loc_8C08B000:
	mov 0x57,r3 ; r3 set to 0x57

loc_8C08B002:
	mov.w @(loc_8C08B066,pc),r0 ; r0 set to 0x1A1, r0 set to 0x1A1
	mov.b r3,@(r0,r4)

loc_8C08B006:
	mov.w @(loc_8C08B068,pc),r0 ; r0 set to 0x1AC, r0 set to 0x1AC, r0 set to 0x1Ac
	mov 0x14,r5 ; r5 set to 0x14, r5 set to 0x14, r5 set to 0x14
	mov.l @(loc_8C08B078,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
	mov.w r6,@(r0,r4)
	add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19E, r0 set to 0x19e
	mov.b r6,@(r0,r4)
	add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4, r0 set to 0x1C4
	mov.l r6,@(r0,r4)
	mov 0x08,r6 ; r6 set to 0x08, r6 set to 0x08, r6 set to 0x08
	mov.b @(0x02,r4),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4, r0 set to 0xC4
	shll r0 ; r0 set to 0x188, r0 set to 0x188, r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34, r0 set to 0x34
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???, r3 ??? bc r4 is ???, r3 ??? bc r4 is ???	
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38, r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	mov.l @(loc_8C08B07C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	fmov.s fr3,@(r0,r4)
	jmp @r3
	lds.l @r15+,pr

loc_8C08B03E:
	mov.l @(loc_8C08B074,pc),r2 ; r2 set to 0x8C28C620
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C08B062,pc),r0 ; r0 set to 0x158
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.w @r3,r1
	mov.l @(0x18,r14),r3
	mov.w @(r0,r3),r0 ; r0 ??? bc r3 is ???	
	cmp/eq r0,r1
	bt loc_8C08B080
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C08B7Dc
	mov.l @r15+,r14

;##############################################
loc_8C08B05C:
	#data 0x00Dc
loc_8C08B05E:
	#data 0x012c
loc_8C08B060:
	#data 0x01A3
loc_8C08B062:
	#data 0x0158
loc_8C08B064:
	#data 0x01E9
loc_8C08B066:
	#data 0x01A1
loc_8C08B068:
	#data 0x01Ac
	#align4

loc_8C08B06C:
	#data bank12.loc_8c129560
loc_8C08B070:
	#data bank12.loc_8c1294C8
loc_8C08B074:
	#data 0x8C28C620
loc_8C08B078:
	#data 0x8C2896B0
loc_8C08B07C:
	#data bank03.loc_8c034e8c

;----------------------------------------------
loc_8c08b080:
	mov.l @(0x18,r14),r3
	mov 0x34,r0
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14) 
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14) 
	mov.w @(loc_8C08B124,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c08b0dc
	mov.w @(loc_8C08B126,pc),r0
	mov 0x00,r4
	mov.b r4,@(r0,r14) 
	add 0xFF,r0
	mov.b @(r0,r14),r5
	tst r5,r5
	bt loc_8c08b0dc
	exts.b r5,r0
	tst 0x01,r0 
	bf loc_8c08b0dc
	mov.w @(loc_8C08B128,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c08b0dc
	mov.b @(r0,r14),r3
	add 0x56,r0
	mov.b r3,@(r0,r14) 
	add 0x0B,r0
	mov.w r4,@(r0,r14) 
	add 0xF2,r0
	mov.b r4,@(r0,r14) 
	add 0x26,r0
	mov.l @(loc_8C08B12C,pc),r3
	mov.l r4,@(r0,r14) 
	mov.b @(0x02,r14),r0 
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2) 
	mov.w @(loc_8C08B128,pc),r0
	mov.b r4,@(r0,r14) 

loc_8c08b0dc:
	mov.l @(bank08.loc_8c08b130,pc),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c08b0fa
	mov.b @(0x04,r14),r0 
	add 0x01,r0
	mov.b r0,@(0x04,r14) 
	mov 0x02,r0
	mov.l @(0x18,r14),r3
	mov.b r0,@(0x07,r3) 
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8c08b0fa:
	mov.w @(loc_8C08B126,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c08b10c
	lds.l @r15+,pr 
	mov.l @(bank08.loc_8c08b134,pc),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c08b10c:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8C08B112:
	mov r4,r3
	mov.l @(loc_8C08B138,pc),r1 ; r1 set to 0x8C154818
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c08b124:
	#data 0x01A3
loc_8c08b126:
	#data 0x019F
loc_8c08b128:
	#data 0x014b
	#align4

loc_8c08b12c:
	#data 0x8C2896B0
loc_8C08B130:
	#data bank03.loc_8c034dee
loc_8C08B134:
	#data bank04.loc_8c045748
loc_8C08B138:
	#data bank15.loc_8c154818

;==============================================
loc_8C08B13C:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x13A,PC),r3
	mov 0x00,r4
	mov.w @(0x136,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x128,PC),r0
	mov.b r4,@(r0,r14)
	mov.l @(0x18,r14),r2
	add r3,r2
	mov.l @(0x12C,PC),r3
	jsr @r3
	add 0x94,r0
	mov.w @(0x11A,PC),r0
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
	mov 0x17,r5
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov.w @(0xCE,PC),r0
	mov.l @(0x18,r14),r2
	mov.w @(r0,r2),r3
	mov.l @(0xD8,PC),r2
	mov.w r3,@(r0,r14)
	mov 0x24,r0
	mov.b r4,@(r0,r14)
	mov.l @(0x18,r14),r1
	mov.w @(0xC0,PC),r0
	mov.l @r2,r3
	mov.w @(r0,r1),r1
	mov 0x34,r0
	mov.w r1,@r3
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	mov.l @(0xC0,PC),r3
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r6
	mov.l @(0xB4,PC),r0
	extu.b r6,r6
	shll2 r6
	mov.l @(r0,r6),r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8C08B1F0:
	mov.l @(0x9C,PC),r2
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x8A,PC),r0
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.w @r3,r1
	mov.l @(0x18,r14),r3
	mov.w @(r0,r3),r0
	cmp/eq r0,r1
	bf loc_8c08b21c
	mov.w @(0x78,PC),r3
	mov.l @(0x18,r14),r0
	add r3,r0
	mov.b @(0x1,r0),r0
	and 0xFE,r0
	mov r0,r13
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c08b228

loc_8C08B21C:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c08b7dc
	mov.l @r15+,r14

loc_8C08B228:
	exts.b r13,r2
	tst r2,r2
	bf loc_8c08b236
	mov.w @(0x4A,PC),r0
	mov 0x00,r3
	bra loc_8c08b260
	mov.b r3,@(r0,r14)

loc_8C08B236:
	mov.w @(0x42,PC),r0
	mov 0x01,r2
	mov.l @(0x60,PC),r12
	mov.b r2,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	bra loc_8c08b254
	fmov fr3,@(r0,r14)
 
loc_8C08B250:
	jsr @r12
	mov r14,r4

loc_8C08B254:
	mov.w @(0x2E,PC),r2
	exts.b r13,r3
	add r14,r2
	mov.b @(0x1,r2),r0
	cmp/eq r3,r0
	bf loc_8c08b250

loc_8C08B260:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C08B26A:
	mov r4,r3
	mov.l @(loc_8C08B2A0,pc),r1 ; r1 set to 0x8C154838
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c08b27c:
	#data 0x012c
loc_8c08b27e:
	#data 0x00dc
loc_8c08b280:
	#data 0x01a3
loc_8c08b282:
	#data 0x0130
loc_8c08b284:
	#data 0x0158
loc_8c08b286:
	#data 0x0150

loc_8C08B288:
	#data bank12.loc_8c129560
loc_8C08B28C:
	#data bank12.loc_8c1294C8
loc_8C08B290:
	#data 0x8C28C620
loc_8C08B294:
	#data bank15.loc_8c154828
loc_8C08B298:
	#data bank03.loc_8c034e8c
loc_8C08B29C:
	#data bank03.loc_8c034dee
loc_8C08B2A0:
	#data bank15.loc_8c154838

loc_8C08B2A4:
	mov.w @(0x12C,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add r4,r1
	mov.l @(0x134,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x11E,PC),r0
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x116,PC),r0
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
	mov.w @(0xF2,PC),r0
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
	mov.l @(0xE8,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r4),r1
	mov 0x24,r0
	mov 0x00,r2
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r4)
	mov.w @(0xC4,PC),r0
	mov.b r2,@(r0,r4)
	mov 0x0A,r0
	mov.w r0,@(0x1C,r4)
	mov 0x10,r0
	mov.w r0,@(0x1E,r4)
	lds.l @r15+,pr

loc_8C08B31C:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bt.s loc_8c08b32e
	mov.l @(0x18,r14),r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)

loc_8C08B32E:
	mov.b @(0x5,r4),r0
	tst r0,r0
	bf loc_8c08b350
	mov.w @(0xA2,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c08b350
	mov.w @(0x9A,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x0B,r0
	bf loc_8c08b350
	mov.w @(0x92,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8c08b356

loc_8C08B350:
	mov r14,r4
	bra loc_8c08b7dc
	mov.l @r15+,r14

loc_8C08B356:
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x90,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C08B366:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x02,r0 ; r0 set to 0x02
	sts.l pr,@-r15
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1E,r14),r0
	add 0xFF,r0 ; r0 set to 0x01
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0 ; r0 ??	
	cmp/pz r0
	bt loc_8C08B3Aa
	mov.b @(0x05,r14),r0
	mov.l @(loc_8C08B3F0,pc),r3 ; r3 set to 0x8C11E730
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C08B3E0,pc),r0 ; r0 set to 0x168
	mov.w r0,@(0x1C,r14)
	mov.w @(loc_8C08B3E2,pc),r0 ; r0 set to 0x8a
	jsr @r3
	mov.w r0,@(0x1E,r14)
	tst 0x07,r0
	bt/s loc_8C08B398
	mov 0x0A,r5 ; r5 set to 0x0a
	bra loc_8C08B39a
	mov 0x07,r6

loc_8C08B398:
	mov 0x08,r6 ; r6 set to 0x08

loc_8C08B39A:
	bsr loc_8C08A59e
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov 0x05,r6 ; r6 set to 0x05, r6 set to 0x05
	mov 0x09,r5 ; r5 set to 0x09, r5 set to 0x09
	bra loc_8C08A59e
	mov.l @r15+,r14

loc_8C08B3AA:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C08B3B0:
	mov 0x02,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1E,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c08b3d0
	mov.b @(0x5,r4),r0
	mov 0x40,r5
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov r5,r0
	nop 
	mov.w r0,@(0x1C,r4)
	mov.w r0,@(0x1E,r4)

loc_8C08B3D0:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c08b3d4:
	#data 0x00dc
loc_8c08b3d6:
	#data 0x012c
loc_8c08b3d8:
	#data 0x01a3
loc_8c08b3da:
	#data 0x01d0
loc_8c08b3dc:
	#data 0x01e9
loc_8c08b3de:
	#data 0x0411
loc_8C08B3E0:
	#data 0x0168
loc_8C08B3E2:
	#data 0x008a
	#align4

loc_8C08B3E4:
	#data bank12.loc_8c129560
loc_8C08B3E8:
	#data bank12.loc_8c1294C8
loc_8C08B3EC:
	#data bank15.loc_8c154848
loc_8C08B3F0:
	#data bank11.loc_8c11e730

;==============================================
loc_8C08B3F4:
	mov.w @(0x140,PC),r0
	mov.l @(0x18,r4),r5
	mov.l @(r0,r5),r5
	mov 0x02,r0
	mov.w r0,@(0x1C,r4)
	mov.b @(0x5,r5),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c08b41a
	mov.w @(0x130,PC),r0
	mov.b @(r0,r5),r2
	tst r2,r2
	bf loc_8c08b41a
	mov.w @(0x1E,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r4)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c08b420

loc_8C08B41A:
	mov 0x00,r0
	bra loc_8c08b7dc
	mov.w r0,@(0x1C,r4)

loc_8C08B420:
	rts
	nop

;-------------------------------------------------------------------------------
loc_8C08B424:
	mov r4,r3
	mov.l @(loc_8C08B548,pc),r1 ; r1 set to 0x8C154854
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C08B436:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xFE,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x108,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xF0,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0xE8,PC),r0
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
	mov.w @(0xC4,PC),r0
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
	mov 0x00,r4
	mov.l @(0xB4,PC),r5
	mov.b @(r0,r1),r3
	mov.l @(0xAC,PC),r1
	mov.b r3,@(r0,r14)
	mov 0x0B,r3
	mov.w @(0x90,PC),r0
	mov.b r4,@(r0,r14)
	add 0x04,r0
	mov.w r4,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r0
	mov.l @(0xA0,PC),r4
	extu.b r0,r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	mov.w r0,@(0x1C,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov 0x0C,r0
	fmov @(r0,r5),fr2
	mova @(0x90,PC),r0
	extu.b r3,r3
	shll2 r3
	shll r3
	add r4,r3
	fmov @r3,fr3
	fadd fr3,fr2
	fmov @r0,fr3
	mov 0x34,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov 0x04,r0
	extu.b r3,r3
	shll2 r3
	shll r3
	add r3,r4
	fmov @(r0,r4),fr2
	mov.w @(0x4C,PC),r0
	fmov @(r0,r5),fr1
	mova @(0x6C,PC),r0
	mov 0x17,r5
	fsub fr2,fr1
	fmov @r0,fr2
	mov 0x38,r0
	fadd fr2,fr1
	fmov fr1,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov.l @(0x5C,PC),r0
	extu.b r3,r3
	shll r3
	mov.b @(r0,r3),r2
	mov.w @(0x30,PC),r0
	mov.l @(0x58,PC),r3
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8C08B522:
	mov.l @(0x14,r4),r3
	mov.w @(0x1C,r3),r0
	tst r0,r0
	bt.s loc_8c08b534
	mov.l @(0x18,r4),r5
	mov.w @(0x16,PC),r0
	mov.b @(r0,r5),r2
	tst r2,r2
	bt loc_8c08b570

loc_8C08B534:
	bra loc_8c08b7dc
	nop 

;##############################################
loc_8c08b538:
	#data 0x01c8
loc_8c08b53a:
	#data 0x01f6
loc_8c08b53c:
	#data 0x00dc
loc_8c08b53e:
	#data 0x012c
loc_8c08b540:
	#data 0x01a3
loc_8c08b542:
	#data 0x00a8
loc_8c08b544:
	#data 0x0158
loc_8c08b546:
	#data 0x0411
	#align4

loc_8C08B548:
	#data bank15.loc_8c154854
loc_8C08B54C:
	#data bank12.loc_8c129560
loc_8C08B550:
	#data bank12.loc_8c1294C8
loc_8C08B554:
	#data bank15.loc_8c154864
loc_8C08B558:
	#data 0x8C26A518
loc_8C08B55C:
	#data bank15.loc_8c154874
loc_8c08b560:
	#data 0xC3D55555
loc_8c08b564:
	#data 0x43892492
loc_8C08B568:
	#data bank15.loc_8c15486a
loc_8C08B56C:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C08B570:
	mov.b @(0x5,r4),r0
	tst r0,r0
	bf loc_8c08b58e
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c08b58e
	mov.b @(0x5,r4),r0
	mov 0x01,r3
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov.w @(0x122,PC),r0
	mov.b r3,@(r0,r4)

loc_8C08B58E:
	rts
	nop

;-------------------------------------------------------------------------------
loc_8C08B592:
	mov r4,r3
	mov.l @(loc_8C08B6BC,pc),r1 ; r1 set to 0x8C15489c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C08B5A4:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C08B6B2,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.l @(loc_8C08B6C0,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C08B6B2,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C08B6B0,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C08B6B4,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C08B6C4,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @(loc_8C08B6CC,pc),r5 ; r5 set to 0x8C1548Bc
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov.w @(loc_8C08B6B6,pc),r1 ; r1 set to 0x158
	mov.b r3,@(r0,r14)
	mov 0x0C,r3 ; r3 set to 0x0c
	mov.w @(loc_8C08B6B0,pc),r0 ; r0 set to 0x12c
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.b r4,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x130
	mov.w r4,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
	mov.l @(loc_8C08B6C8,pc),r4 ; r4 set to 0x8C1548Ac
	extu.b r0,r0
	shll r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	mov.w r0,@(0x1C,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
	extu.b r3,r3
	shll r3
	add r3,r4 ; r4 ??? bc r3 is ???	
	mov.b @(0x01,r4),r0
	mov.l @(loc_8C08B6D0,pc),r4 ; r4 set to 0x8C26A518
	mov.b r0,@r1
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3
	mov 0x0C,r0 ; r0 set to 0x0c
	fmov.s @(r0,r4),fr2
	mova @(loc_8C08B6D4,pc),r0  ; r0 set to 0x8C08B6D4
	extu.b r3,r3
	shll2 r3
	shll r3
	add r5,r3
	fmov.s @r3,fr3
	fadd fr3,fr2
	fmov.s @r0,fr3
	mov 0x34,r0 ; r0 set to 0x34
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3
	mov 0x04,r0 ; r0 set to 0x04
	extu.b r3,r3
	shll2 r3
	shll r3
	add r3,r5 ; r5 ??? bc r3 is ???	
	fmov.s @(r0,r5),fr2
	mov.w @(loc_8C08B6B8,pc),r0 ; r0 set to 0xA8
	fmov.s @(r0,r4),fr1
	mova @(loc_8C08B6D8,pc),r0  ; r0 set to 0x8C08B6D8
	fsub fr2,fr1
	fmov.s @r0,fr2
	mov 0x38,r0 ; r0 set to 0x38
	fadd fr2,fr1
	fmov.s fr1,@(r0,r14)
	mov.w @(loc_8C08B6B6,pc),r0 ; r0 set to 0x158
	mov.b @(r0,r14),r6
	lds.l @r15+,pr
	mov.l @(loc_8C08B6DC,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x17,r5 ; r5 set to 0x17
	mov r14,r4 ; r4 ??? bc r14 is ???	
	jmp @r3
	mov.l @r15+,r14

loc_8C08B694:
	mov.l @(0x18,r4),r5
	mov.b @(0x5,r5),r0
	tst r0,r0
	bf loc_8c08b6ac
	mov.w @(0x1A,PC),r0
	mov.b @(r0,r5),r2
	tst r2,r2
	bf loc_8c08b6ac
	mov.l @(0x14,r4),r2
	mov.w @(0x1C,r2),r0
	tst r0,r0
	bf loc_8c08b6e0

loc_8C08B6AC:
	bra loc_8c08b7dc
	nop 

;##############################################
loc_8C08B6B0:
	#data 0x012c

loc_8C08B6B2:
	#data 0x00Dc

loc_8C08B6B4:
	#data 0x01A3

loc_8C08B6B6:
	#data 0x0158

loc_8C08B6B8:
	#data 0x00A8
loc_8C08B6Ba:
	#data 0x0411
	#align4

loc_8C08B6BC:
	#data bank15.loc_8c15489c
loc_8C08B6C0:
	#data bank12.loc_8c129560
loc_8C08B6C4:
	#data bank12.loc_8c1294C8
loc_8C08B6C8:
	#data bank15.loc_8c1548Ac
loc_8C08B6CC:
	#data bank15.loc_8c1548Bc
loc_8C08B6D0:
	#data 0x8C26A518
loc_8C08B6D4:
	#data 0xC3D55555
loc_8C08B6D8:
	#data 0x43892492
loc_8C08B6DC:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C08B6E0:
	mov.b @(0x5,r4),r0
	tst r0,r0
	bf loc_8c08b6fe
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c08b704
	mov.b @(0x5,r4),r0
	mov 0x01,r3
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov.w @(0xF2,PC),r0
	mov.b r3,@(r0,r4)

loc_8C08B6FE:
	mov.l @(0xF8,PC),r3
	jmp @r3
	nop 

loc_8C08B704:
	rts
	nop

;-------------------------------------------------------------------------------
loc_8C08B708:
	mov r4,r3
	mov.l @(loc_8C08B7FC,pc),r1 ; r1 set to 0x8C1548Fc
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C08B71A:
	mov.w @(loc_8C08B7F2,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C08B800,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C08B7F2,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C08B7F0,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C08B7F4,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C08B804,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x0B,r2 ; r2 set to 0x0b
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r2,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r4),r3
	mov 0x0B,r6 ; r6 set to 0x0b
	mov.l @(loc_8C08B808,pc),r2 ; r2 set to 0x8C28C620
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.l @(0x18,r4),r1
	mov.w @(loc_8C08B7F6,pc),r0 ; r0 set to 0x158
	mov.l @r2,r3
	mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???	
	mov.w r0,@r3
	mov.l @(loc_8C08B80C,pc),r3 ; r3 set to 0x8C034E8c
	jmp @r3
	lds.l @r15+,pr

loc_8C08B7AA:
	mov.l @(loc_8C08B808,pc),r2 ; r2 set to 0x8C28C620
	mov.l r14,@-r15
	mov.l @r2,r3
	mov.w @(loc_8C08B7F6,pc),r0 ; r0 set to 0x158
	mov.l @(0x18,r4),r14
	mov.w @r3,r1
	mov.w @(r0,r14),r3
	cmp/eq r3,r1
	bf loc_8C08B7D8
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C08B810,pc),r2 ; r2 set to 0x8C28C624
	fmov.s @(r0,r14),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr3
	fmov.s fr3,@(r0,r4)
	mov.l @r2,r3
	mov.b @(0x01,r3),r0
	tst r0,r0
	bt loc_8C08B7D8
	mov.l @(loc_8C08B7F8,pc),r3 ; r3 set to 0x8C034DEe
	jmp @r3
	mov.l @r15+,r14

loc_8C08B7D8:
	bra loc_8C08B7Dc
	mov.l @r15+,r14

loc_8C08B7DC:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C08B7F0,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;-------------------------------------------------------------------------------
loc_8C08B7EA:
	mov.l @(loc_8C08B814,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C08B7F0:
	#data 0x012c
loc_8C08B7F2:
	#data 0x00Dc
loc_8C08B7F4:
	#data 0x01A3
loc_8C08B7F6:
	#data 0x0158
	#align4

loc_8C08B7F8:
	#data bank03.loc_8c034dee
loc_8C08B7FC:
	#data bank15.loc_8c1548Fc
loc_8C08B800:
	#data bank12.loc_8c129560
loc_8C08B804:
	#data bank12.loc_8c1294C8
loc_8C08B808:
	#data 0x8C28C620
loc_8C08B80C:
	#data bank03.loc_8c034e8c
loc_8C08B810:
	#data 0x8C28C624
loc_8C08B814:
	#data bank04.loc_8c0450C0

;==============================================
;Unused
loc_8c08b818:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x128,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x01,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c08b83e
	mov r0,r4
	mov.l @(0x118,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.b r3,@(r0,r4)

loc_8c08b83e:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;-------------------------------------------------------------------------------
loc_8C08B846:
	mov r4,r3
	mov.l @(loc_8C08B950,pc),r1 ; r1 set to 0x8C15495c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C08B858:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xD8,PC),r3
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.w @(0xD4,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0xCC,PC),r2
	add 0x01,r0
	mov.l @(0x18,r14),r13
	mov.b r0,@(0x4,r14)
	mov 0x26,r0
	mov.w r3,@(r0,r14)
	mov.w @(0xC2,PC),r0
	mov.l @(0xD8,PC),r3
	jsr @r3
	add r13,r2
	mov.w @(0xBC,PC),r0
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
	mov.w @(0xA0,PC),r0
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
	mov 0x08,r3
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0x10,r4
	mov.b r3,@(r0,r14)
	mov.w @(0x7C,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov.b @(0x1,r13),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c08b8e6
	mov.w @(0x66,PC),r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.w @(r0,r14),r3
	add 0xFE,r3
	mov.w r3,@(r0,r14)

loc_8C08B8E6:
	mov 0x20,r0
	mov.l @(0x70,PC),r3
	mov.b @(r0,r14),r12
	mov r13,r2
	mov r14,r1
	add 0x34,r2
	extu.b r12,r12
	shll2 r12
	shll2 r12
	add r3,r12
	mov.l @(0x5C,PC),r3
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mova @(0x5C,PC),r0
	fmov @r0,fr5
	mova @(0x5C,PC),r0
	fmov @r0,fr4
	mov.w @(0x38,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c08b968
	mov r14,r2
	mov 0x34,r0
	add r0,r2
	fmov fr5,fr0
	mov.l r2,@-r15
	mov.w @(0x8,r12),r0
	mov r0,r3
	lds r3,fpul
	mov.l @r15+,r3
	float fpul,fr3
	fmov @r3,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@r3
	mov.l @r12,r2
	lds r2,fpul
	float fpul,fr3
	fmul fr5,fr3
	bra loc_8c08b98a
	fdiv fr4,fr3

;==============================================
loc_8c08b938:
	#data 0x1c00
loc_8c08b93a:
	#data 0x00dc
loc_8c08b93c:
	#data 0x00c0
loc_8c08b93e:
	#data 0x012c
loc_8c08b940:
	#data 0x01a3
loc_8c08b942:
	#data 0x013c
loc_8c08b944:
	#data 0x012d
loc_8c08b946:
	#data 0x0130
	#align4

loc_8C08B948:
	#data bank04.loc_8c044F12
loc_8C08B94C:
	#data loc_8C08B846
loc_8C08B950:
	#data bank15.loc_8c15495c
loc_8C08B954:
	#data bank12.loc_8c129560
loc_8C08B958:
	#data bank12.loc_8c1294C8
loc_8C08B95C:
	#data bank15.loc_8c15490c
loc_8c08b960:
	#data 0x3FD55555
loc_8c08b964:
	#data 0x47800000

;==============================================
loc_8C08B968:
	mov.w @(0x8,r12),r0
	mov 0x34,r2
	add r14,r2
	mov r0,r3
	lds r3,fpul
	fmov @r2,fr2
	float fpul,fr3
	fmul fr5,fr3
	fneg fr3
	fadd fr3,fr2
	fmov fr2,@r2
	mov.l @r12,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fneg fr3

loc_8C08B98A:
	mov 0x5C,r0
	mov r14,r2
	fmov fr3,@(r0,r14)
	mova @(0x144,PC),r0
	fmov @r0,fr5
	mov 0x38,r0
	add r0,r2
	mov.l r2,@-r15
	mov 0x42,r4
	mov.w @(0xA,r12),r0
	fmov fr5,fr0
	mov r0,r3
	lds r3,fpul
	mov.l @r15+,r3
	mov 0x60,r0
	float fpul,fr3
	fmov @r3,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@r3
	mov.l @(0x4,r12),r2
	lds r2,fpul
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fldi0 fr4
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov.w @(0x102,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.w @(0xFE,PC),r1
	mov.b r4,@(r0,r14)
	mov 0x00,r4
	mov.b @(0xD,r12),r0
	add r14,r1
	mov.l @(0x104,PC),r3
	mov 0x17,r5
	mov.b r0,@r1
	mov.w @(0xF0,PC),r0
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
	mov.b @(0xC,r12),r0
	mov.l @(0xE4,PC),r2
	mov r0,r6
	jsr @r2
	mov r14,r4
	mov.l @(0xE0,PC),r3
	mov 0x25,r5
	jsr @r3
	mov r13,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C08BA14:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x05,r14),r0
	mov.l @(loc_8C08BAE8,pc),r1 ; r1 set to 0x8C15496c
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C08BA28:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C08BAEC,pc),r3 ; r3 set to 0x8C03340c
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8C08BA4e
	mov 0x03,r0 ; r0 set to 0x03
	mov.b r0,@(0x04,r14)
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C08BAD2,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8c08ba4e:
	mov.w @(loc_8C08BAD4,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c08ba5e
	mov.w @(loc_8C08BAD6,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c08ba82

loc_8c08ba5e:
	mov.b @(0x05,r14),r0 
	add 0x01,r0
	mov.b r0,@(0x05,r14) 
	mov.l @r15,r0
	mov.b @(0x01,r0),r0 
	extu.b r0,r0
	cmp/eq 0x1C,r0 
	bf/s loc_8c08ba74
	mov 0x17,r5
	bra loc_8c08ba76
	mov 0x01,r6

loc_8c08ba74:
	mov 0x03,r6

loc_8c08ba76:
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr 
	mov.l @(loc_8c08bae0,pc),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c08ba82:
	mov 0x5C,r1
	mov.l @(loc_8c08baf0,pc),r3
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
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr 
	mov.l @(bank08.loc_8c08baf4,pc),r2
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c08bacc:
	#data 0x019C
loc_8c08bace:
	#data 0x01A1
loc_8c08bad0:
	#data 0x01AC
loc_8c08bad2:
	#data 0x012C
loc_8C08BAD4:
	#data 0x019E
loc_8C08BAD6:
	#data 0x019F
	#align4

loc_8c08bad8:
	#data 0x40092492
loc_8c08badc:
	#data 0x8C2896B0
loc_8c08bae0:
	#data bank03.loc_8c034e8c
loc_8c08bae4:
	#data bank04.loc_8C042008
loc_8c08bae8:
	#data bank15.loc_8C15496C
loc_8c08baec:
	#data bank03.loc_8C03340C
loc_8c08baf0:
	#data bank03.loc_8c034dee
loc_8c08baf4:
	#data bank04.loc_8c045748

;==============================================
loc_8c08baf8:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8c08bb00:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x30,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c08bb1c
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x1A,PC),r0
	mov.b r3,@(r0,r14)

loc_8c08bb1c:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

loc_8C08BB22:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C08BB36,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;-------------------------------------------------------------------------------
loc_8C08BB30:
	mov.l @(loc_8C08BB3C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C08BB36:
	#data 0x012c
loc_8C08BB38:
	#data bank03.loc_8c034dee
loc_8C08BB3C:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c08bb40:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop 
	mov.w @(0x134,PC),r2
	mov 0x01,r5
	mov 0x00,r6
	mov.b r0,@(0x4,r15)
	mov.l @r15,r3
	add r3,r2
	mov.l @(0x13C,PC),r3
	mov.l r2,@(0x8,r15)
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c08bb80
	mov r0,r4
	mov.l @(0x130,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov.l @(0x8,r15),r3
	mov.w @(0x10A,PC),r1
	mov.b @(0x2,r3),r0
	add r4,r1
	extu.b r0,r0
	mov.l r0,@r1

loc_8c08bb80:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;-------------------------------------------------------------------------------
loc_8C08BB88:
	mov r4,r3
	mov.l @(loc_8C08BC9C,pc),r1 ; r1 set to 0x8C1549A4
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C08BB9A:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xE4,PC),r3
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.w @(0xE0,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0xD8,PC),r2
	add 0x01,r0
	mov.l @(0x18,r14),r13
	mov.b r0,@(0x4,r14)
	mov 0x26,r0
	mov.w r3,@(r0,r14)
	mov 0xFF,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0xCA,PC),r0
	mov.l @(0xE0,PC),r3
	jsr @r3
	add r13,r2
	mov.w @(0xC4,PC),r0
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
	mov.w @(0xA8,PC),r0
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
	mov.l @(0xA8,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x08,r3
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0x10,r4
	mov.b r3,@(r0,r14)
	mov.w @(0x80,PC),r0
	mov.b r5,@(r0,r14)
	add 0x10,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov.b @(0x1,r13),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c08bc30
	mov.w @(0x68,PC),r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.w @(r0,r14),r3
	add 0xFE,r3
	mov.w r3,@(r0,r14)

loc_8C08BC30:
	mov 0x20,r0
	mov.l @(0x74,PC),r3
	mov.b @(r0,r14),r12
	mov r13,r2
	mov r14,r1
	add 0x34,r2
	extu.b r12,r12
	shll2 r12
	shll2 r12
	add r3,r12
	mov.l @(0x5C,PC),r3
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mova @(0x5C,PC),r0
	fmov @r0,fr5
	mova @(0x5C,PC),r0
	fmov @r0,fr4
	mov.w @(0x3A,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c08bcb4
	mov r14,r2
	mov 0x34,r0
	add r0,r2
	fmov fr5,fr0
	mov.l r2,@-r15
	mov.w @(0x8,r12),r0
	mov r0,r3
	lds r3,fpul
	mov.l @r15+,r3
	float fpul,fr3
	fmov @r3,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@r3
	mov.l @r12,r2
	lds r2,fpul
	float fpul,fr3
	fmul fr5,fr3
	bra loc_8c08bcd6
	fdiv fr4,fr3

;##############################################
loc_8c08bc82:
	#data 0x02a4
loc_8c08bc84:
	#data 0x00cc
loc_8c08bc86:
	#data 0x1c01
loc_8c08bc88:
	#data 0x00dc
loc_8c08bc8a:
	#data 0x00c0
loc_8c08bc8c:
	#data 0x012c
loc_8c08bc8e:
	#data 0x01a3
loc_8c08bc90:
	#data 0x012d
loc_8c08bc92:
	#data 0x0130
	#align4

loc_8C08BC94:
	#data bank04.loc_8c044F12
loc_8C08BC98:
	#data loc_8C08BB88
loc_8C08BC9C:
	#data bank15.loc_8c1549A4
loc_8C08BCA0:
	#data bank12.loc_8c129560
loc_8C08BCA4:
	#data bank12.loc_8c1294C8
loc_8C08BCA8:
	#data bank15.loc_8c154974
loc_8C08BCAc:
	#data 0x3FD55555
loc_8C08BCb0:
	#data 0x47800000

;==============================================
loc_8C08BCB4:
	mov.w @(0x8,r12),r0
	mov 0x34,r2
	add r14,r2
	mov r0,r3
	lds r3,fpul
	fmov @r2,fr2
	float fpul,fr3
	fmul fr5,fr3
	fneg fr3
	fadd fr3,fr2
	fmov fr2,@r2
	mov.l @r12,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fneg fr3

loc_8C08BCD6:
	mov 0x5C,r0
	mov r14,r2
	fmov fr3,@(r0,r14)
	mova @(0x114,PC),r0
	fmov @r0,fr5
	mov 0x38,r0
	add r0,r2
	mov.l r2,@-r15
	mov 0x42,r4
	mov.w @(0xA,r12),r0
	fmov fr5,fr0
	mov r0,r3
	lds r3,fpul
	mov.l @r15+,r3
	mov 0x60,r0
	float fpul,fr3
	fmov @r3,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@r3
	mov.l @(0x4,r12),r2
	lds r2,fpul
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fldi0 fr4
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov.w @(0xD0,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.w @(0xCC,PC),r1
	mov.b r4,@(r0,r14)
	mov 0x00,r4
	mov.b @(0xD,r12),r0
	add r14,r1
	mov.l @(0xD4,PC),r3
	mov 0x17,r5
	mov.b r0,@r1
	mov.w @(0xBE,PC),r0
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
	mov.b @(0xC,r12),r0
	mov.l @(0xB4,PC),r2
	mov r0,r6
	jsr @r2
	mov r14,r4
	mov.l @(0xB0,PC),r3
	mov 0x26,r5
	jsr @r3
	mov r13,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C08BD60:
	mov.w @(loc_8C08BDEC,pc),r0 ; r0 set to 0x1A0
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bt/s loc_8C08BD78
	mov.l @(0x18,r14),r5
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C08BD78:
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C08BE04,pc),r1 ; r1 set to 0x8C1549B4
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused return
loc_8c08bd88:
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C08BD8C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov 0x00,r12 ; r12 set to 0x00
	sts.l pr,@-r15
	mov.l @(loc_8C08BE08,pc),r3 ; r3 set to 0x8C03340c
	jsr @r3
	mov 0x03,r13 ; r13 set to 0x03
	tst r0,r0
	bf loc_8C08BDAe
	mov r13,r0 ; r0 set to 0x03
	nop
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C08BDEE,pc),r0 ; r0 set to 0x12c
	bra loc_8C08BEEa
	mov.b r12,@(r0,r14)

loc_8C08BDAE:
	mov.w @(loc_8C08BDF0,pc),r0 ; r0 set to 0x19e
	mov.l @(loc_8C08BE0C,pc),r4 ; r4 set to 0x8C154974
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C08BE10
	mov.w @(loc_8C08BDF2,pc),r0 ; r0 set to 0xCc
	mov.l @(r0,r14),r3
	add 0xFF,r3
	tst r3,r3
	bt/s loc_8C08BE44
	mov.l r3,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r1
	extu.b r1,r1
	shll2 r1
	shll2 r1
	add r1,r4 ; r4 ??? bc r1 is ???	
	mov.b @(0x0D,r4),r0
	mov r0,r4 ; r4 set to 0x20
	mov.w @(0x1C,r14),r0
	add 0x01,r0 ; r0 set to 0x21
	mov.w r0,@(0x1C,r14)
	add 0xFF,r0 ; r0 set to 0x20
	exts.w r0,r0 ; r0 ??	
	tst r13,r0
	bt loc_8C08BE7c
	bra loc_8C08BE7c
	add 0x01,r4

;##############################################
loc_8C08BDE6:
	#data 0x019c
loc_8C08BDE8:
	#data 0x01A1
loc_8C08BDEa:
	#data 0x01AC
loc_8C08BDEC:
	#data 0x01A0
loc_8C08BDEE:
	#data 0x012c
loc_8C08BDF0:
	#data 0x019e
loc_8C08BDF2:
	#data 0x00Cc
	#align4

loc_8c08bdf4:
	#data 0x40092492
loc_8c08bdf8:
	#data 0x8C2896B0
loc_8C08BDFC:
	#data bank03.loc_8c034e8c
loc_8C08BE00:
	#data bank04.loc_8c042008
loc_8C08BE04:
	#data bank15.loc_8c1549B4
loc_8C08BE08:
	#data bank03.loc_8c03340c
loc_8C08BE0C:
	#data bank15.loc_8c154974

;==============================================
loc_8c08be10:
	mov.w @(loc_8C08BF2A,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt bank08.loc_8c08be9e
	mov.w @(loc_8C08BF2C,pc),r0
	mov.l @(r0,r14),r5
	tst r5,r5
	bt loc_8c08be28
	mov.b @(0x02,r5),r0 
	extu.b r0,r0
	tst 0x20,r0 
	bf loc_8c08be38

loc_8c08be28:
	mov.w @(loc_8C08BF2E,pc),r0
	mov.l @(r0,r14),r2
	add 0xFF,r2
	tst r2,r2
	bf/s loc_8c08be5c
	mov.l r2,@(r0,r14) 
	bra loc_8c08be44
	nop 

loc_8c08be38:
	mov.w @(loc_8C08BF2E,pc),r0
	mov.l @(r0,r14),r1
	add 0xFD,r1
	cmp/pl r1
	bt/s bank08.loc_8c08be5c
	mov.l r1,@(r0,r14) 

loc_8C08BE44:
	mov.b @(0x05,r14),r0
	mov 0x03,r6 ; r6 set to 0x03
	mov.l @(loc_8C08BF34,pc),r3 ; r3 set to 0x8C034E8c
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x17,r5 ; r5 set to 0x17
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C08BE5C:
	mov 0x20,r0
	mov.b @(r0,r14),r2
	extu.b r2,r2
	shll2 r2
	shll2 r2
	add r2,r4
	mov.b @(0xD,r4),r0
	mov r0,r4
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	add 0xFF,r0
	exts.w r0,r0
	tst r13,r0
	bt loc_8c08be7c
	add 0x01,r4

loc_8c08be7c:
	mov.w @(loc_8C08BF30,pc),r0
	mov.l @(loc_8C08BF38,pc),r3
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

loc_8c08be9e:
	mov 0x5C,r1
	mov.l @(bank08.loc_8c08bf3c,pc),r3
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
	mov.l @(bank08.loc_8c08bf40,pc),r2
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C08BEEA:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C08BEF4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x40,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c08bf10
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x22,PC),r0
	mov.b r3,@(r0,r14)

loc_8C08BF10:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C08BF16:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C08BF32,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;-------------------------------------------------------------------------------
loc_8C08BF24:
	mov.l @(loc_8C08BF44,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c08bf2a:
	#data 0x019f
loc_8c08bf2c:
	#data 0x01Bc
loc_8c08bf2e:
	#data 0x00CC
loc_8c08bf30:
	#data 0x01A1
loc_8C08BF32:
	#data 0x012c
	#align4

loc_8C08BF34:
	#data bank03.loc_8c034e8c
loc_8c08bf38:
	#data 0x8C2896B0
loc_8C08BF3C:
	#data bank03.loc_8c034dee
loc_8C08BF40:
	#data bank04.loc_8c045748
loc_8C08BF44:
	#data bank04.loc_8c0450C0

;==============================================
;Unused
loc_8c08bf48:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(0x148,PC),r2
	mov r4,r3
	mov 0x01,r5
	mov.l r4,@r15
	add r3,r2
	mov.l @(0x150,PC),r3
	mov 0x00,r6
	mov.l r2,@(0x4,r15)
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c08bf7c
	mov r0,r4
	mov.l @(0x144,PC),r3
	mov 0x20,r0
	mov 0x00,r5
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.b r5,@(r0,r4)
	mov.l @(0x4,r15),r3
	mov r5,r0
	nop 
	mov.b r0,@(0x4,r3)

loc_8c08bf7c:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;-------------------------------------------------------------------------------
loc_8C08BF84:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.w @(loc_8C08C098,pc),r4 ; r4 set to 0x2A4
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov 0x00,r0 ; r0 set to 0x00
	add r5,r4 ; r4 ??? bc r5 is ???	
	mov.b r0,@(0x05,r4)
	mov.w @(loc_8C08C09A,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bf/s loc_8C08BFAe
	fldi0 fr4
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr3
	fadd fr4,fr3
	bra loc_8C08BFBa
	fmov.s fr3,@r15

loc_8C08BFAE:
	mova @(loc_8C08C0B0,pc),r0  ; r0 init to 0x8C08C0B0
	fmov.s @r0,fr3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	fmov.s fr2,@r15

loc_8C08BFBA:
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(loc_8C08C0B4,pc),r3 ; r3 set to 0x8C10235C, r3 set to 0x8C10235c
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	mov r15,r5
	mov 0x01,r6 ; r6 set to 0x01, r6 set to 0x01
	fadd fr4,fr3
	mov 0x08,r7 ; r7 set to 0x08, r7 set to 0x08
	fmov.s fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C08C0B8,pc),r2 ; r2 set to 0x8C04223A, r2 set to 0x8C04223a
	mov 0x49,r5 ; r5 set to 0x49, r5 set to 0x49
	jsr @r2
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C08BFE0:
	mov r4,r3
	mov.l @(loc_8C08C0BC,pc),r1 ; r1 set to 0x8C1549Bc
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C08BFF2:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xA2,PC),r3
	mov.w @(0xA2,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x9A,PC),r2
	add 0x01,r0
	mov.l @(0x18,r14),r5
	mov.b r0,@(0x4,r14)
	mov 0x26,r0
	mov.w r3,@(r0,r14)
	mov.w @(0x90,PC),r0
	mov.l @(0xB0,PC),r3
	jsr @r3
	add r5,r2
	mov.w @(0x8A,PC),r0
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
	mov.w @(0x6E,PC),r0
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
	mov.l @(0x78,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r14)
	mov.w @(0x4A,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c08c06e
	mov.b @(r0,r14),r3
	mov 0x0A,r2
	extu.b r3,r3
	cmp/ge r2,r3
	bt loc_8c08c06e
	bsr loc_8c08c606
	mov r14,r4

loc_8C08C06E:
	mov 0x20,r0
	mov.l @(0x58,PC),r3
	mov.b @(r0,r14),r6
	mov 0x17,r5
	mov.l @(0x50,PC),r0
	extu.b r6,r6
	mov.b @(r0,r6),r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8C08C086:
	mov 0x20,r0 ; r0 set to 0x20
	mov.l r14,@-r15
	mov.b @(r0,r4),r3
	tst r3,r3
	bt/s loc_8C08C0D0
	mov.l @(0x18,r4),r14
	mov r14,r5
	bra loc_8C08C5C8
	mov.l @r15+,r14

;##############################################
loc_8C08C098:
	#data 0x02A4
loc_8C08C09A:
	#data 0x0130
loc_8c08c09c:
	#data 0x1c00
loc_8c08c09e:
	#data 0x00dc
loc_8c08c0a0:
	#data 0x00c0
loc_8c08c0a2:
	#data 0x012c
loc_8c08c0a4:
	#data 0x01a3
	#align4

loc_8C08C0A8:
	#data bank04.loc_8c044F12
loc_8C08C0AC:
	#data loc_8C08BFE0
loc_8C08C0B0:
	#data 0x80000000
loc_8C08C0B4:
	#data bank10.loc_8c10235c
loc_8C08C0B8:
	#data bank04.loc_8c04223a
loc_8C08C0BC:
	#data bank15.loc_8c1549Bc
loc_8C08C0C0:
	#data bank12.loc_8c129560
loc_8C08C0C4:
	#data bank12.loc_8c1294C8
loc_8C08C0C8:
	#data bank15.loc_8c1549Cc
loc_8C08C0CC:
	#data bank03.loc_8c034e8c

;---------------------------------
loc_8C08C0D0:
	mov r14,r5
	bra loc_8C08C0D6
	mov.l @r15+,r14

loc_8c08c0d6:
	mov 0x02,r3
	mov.l r14,@-r15
	mov.b @(0x04,r5),r0 
	extu.b r0,r0
	cmp/ge r3,r0
	bt/s loc_8c08c0ee
	mov r4,r14
	mov.b @(0x01,r14),r0 
	mov r0,r2
	mov.b @(0x01,r5),r0 
	cmp/eq r0,r2
	bt loc_8c08c0fa

loc_8c08c0ee:
	mov.b @(0x04,r14),r0 
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x04,r14) 
	mov.w @(loc_8C08C204,pc),r0
	mov.b r3,@(r0,r14) 

loc_8c08c0fa:
	mov.w @(0x1E,r14),r0 
	mov r14,r4
	mov.l @(bank08.loc_8c08c20c,pc),r1
	add 0x01,r0
	mov.w r0,@(0x1E,r14) 
	mov.b @(0x05,r14),r0 
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C08C110:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.b @(0x05,r4),r0
	mov 0x08,r6 ; r6 set to 0x08
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	mov.w @(loc_8C08C206,pc),r0 ; r0 set to 0x13c
	mov.b r6,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x13d
	mov.b r6,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x13e
	mov.b r6,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x13f
	mov.b r6,@(r0,r4)
	mova @(loc_8C08C210,pc),r0  ; r0 set to 0x8C08C210
	fmov.s @r0,fr4
	mov.b @(0x01,r5),r0
	extu.b r0,r0 ; r0 set to 0x10
	cmp/eq 0x1C,r0
	bf/s loc_8C08C142
	mov r15,r6 ; r6 ??? bc r15 is ???	
	mova @(loc_8C08C214,pc),r0  ; r0 set to 0x8C08C214
	fmov.s fr4,@r6
	bra loc_8C08C148
	fmov.s @r0,fr3

loc_8C08C142:
	mova @(loc_8C08C218,pc),r0  ; r0 init to 0x8C08C218
	fmov.s fr4,@r6
	fmov.s @r0,fr3

loc_8C08C148:
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	fmov.s fr3,@(r0,r6)
	mov.w @(loc_8C08C208,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r5),r3
	tst r3,r3
	bf/s loc_8C08C164
	fmov.s @r6,fr4
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r5),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C08C21C,pc),r0  ; r0 set to 0x8C08C21C, r0 set to 0x8C08C21c
	bra loc_8C08C170
	fmov.s @r0,fr3

loc_8C08C164:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r5),fr3
	fsub fr4,fr3
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C08C220,pc),r0  ; r0 set to 0x8C08C220
	fmov.s @r0,fr3

loc_8C08C170:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fldi0 fr4
	fmov.s fr3,@(r0,r4)
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	fmov.s @(r0,r6),fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r5),fr2
	mov 0x0B,r3 ; r3 set to 0x0B, r3 set to 0x0b
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fmov.s fr4,@(r0,r4)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr4,@(r0,r4)
	mova @(loc_8C08C224,pc),r0  ; r0 set to 0x8C08C224, r0 set to 0x8C08C224
	fmov.s @r0,fr3 ; r3 ??, r3 ??	
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr3,@(r0,r4)
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
	mov.b r3,@(r0,r4)
	bsr loc_8C08C1A4
	nop
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;-------------------------------------------------------------------------------
loc_8c08c1a4:
	mov 0x5C,r1
	add r4,r1
	mov 0x34,r0
	fmov.s @r1,fr3
	fmov.s @(r0,r4),fr2
	mov 0x68,r1
	add r4,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4) 
	mov 0x5C,r0
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	mov 0x60,r1
	add r4,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4) 
	mov 0x38,r0
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1
	add r4,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4) 
	mov 0x60,r0
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4) 
	mova @(loc_8C08C228,pc),r0 
	fmov.s @r0,fr4
	mov.w @(loc_8C08C20A,pc),r0
	fmov.s @(r0,r5),fr3
	fadd fr4,fr3
	mov 0x38,r0
	fmov.s @(r0,r4),fr2
	fcmp/gt fr3,fr2
	bt loc_8c08c1fe
	mov.b @(0x05,r4),r0 
	add 0x01,r0
	mov.b r0,@(0x05,r4) 
	mov.w @(loc_8C08C20A,pc),r0
	fmov.s @(r0,r5),fr3
	mov 0x38,r0
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4) 

loc_8c08c1fe:
	mov.l @(bank08.loc_8c08c22c,pc),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c08c204:
	#data 0x012C
loc_8c08c206:
	#data 0x013C
loc_8c08c208:
	#data 0x0130
loc_8C08C20A:
	#data 0x041C
	#align4

loc_8c08c20c:
	#data bank15.loc_8c1549d8
loc_8c08c210:
	#data 0xC2555555
loc_8c08c214:
	#data 0x42BC9249
loc_8c08c218:
	#data 0x429E9249
loc_8c08c21c:
	#data 0xC0200000
loc_8c08c220:
	#data 0x40200000
loc_8c08c224:
	#data 0xBF892492
loc_8C08C228:
	#data 0x41000000
loc_8c08c22c:
	#data bank03.loc_8c034dee

;==============================================
loc_8c08c230:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(0x11E,PC),r0
	mov r5,r13
	mov.w @(0x118,PC),r12
	mov r4,r14
	mov.b @(r0,r13),r3
	tst r3,r3
	bf.s loc_8c08c25e
	add r13,r12
	mov.b @(0x4,r12),r0
	tst r0,r0
	bf loc_8c08c25e
	mov.l @(0x11C,PC),r2
	mov 0x05,r1
	mov.b @r2,r3
	extu.b r3,r3
	cmp/ge r1,r3
	bf loc_8c08c268

loc_8c08c25e:
	mov r13,r5
	bsr loc_8c08bf84
	mov r14,r4
	bra loc_8c08c34e
	nop

loc_8c08c268:
	mov.w @(0xF4,PC),r0
	mov.b @(r0,r13),r4
	extu.b r4,r0
	cmp/eq 0x08,r0
	bt.s loc_8c08c292
	mov r0,r4
	mov r4,r0
	nop 
	cmp/eq 0x0A,r0
	bt loc_8c08c292
	mov.w @(0xE2,PC),r0
	mov.w @(0xE2,PC),r2
	mov.w @(r0,r13),r3
	extu.w r3,r3
	cmp/eq r2,r3
	bt loc_8c08c292
	mov.w @(r0,r13),r1
	mov.w @(0xD8,PC),r3
	extu.w r1,r1
	cmp/eq r3,r1
	bf loc_8c08c34e

loc_8c08c292:
	mov r13,r5
	bsr loc_8c08c758
	mov r14,r4
	tst r0,r0
	bt loc_8c08c34e
	mov.b @(0x5,r14),r0
	mov.l @(0xD4,PC),r4
	add 0x01,r0
	fldi0 fr15
	mov.b r0,@(0x5,r14)
	mov.w @(0xBE,PC),r0
	mov.b r0,@(0x5,r12)
	mov 0x21,r0
	mov 0x00,r12
	mov.b r12,@(r0,r14)
	mov 0x08,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0xB2,PC),r0
	mov.b @(r0,r13),r3
	mov 0x5C,r0
	extu.b r3,r3
	shll2 r3
	shll r3
	add r4,r3
	fmov @r3,fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xA0,PC),r0
	mov.b @(r0,r13),r3
	mov 0x04,r0
	extu.b r3,r3
	shll2 r3
	shll r3
	add r3,r4
	fmov @(r0,r4),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov fr15,@(r0,r14)
	mov 0x6C,r0
	fmov fr15,@(r0,r14)
	mov.w @(0x86,PC),r0
	mov.w @(r0,r13),r3
	tst r3,r3
	bt.s loc_8c08c2f4
	mov.w r3,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8c08c2f4:
	mov r13,r5
	bsr loc_8c08c606
	mov r14,r4
	mov 0x08,r0
	mov.l @(0x78,PC),r3
	fmov fr15,@(r0,r15)
	mov 0x04,r0
	mov r15,r5
	mov 0x00,r6
	fmov fr15,@(r0,r15)
	fmov fr15,@r15
	jsr @r3
	mov r14,r4
	mov.l @(0x6C,PC),r2
	mov 0x00,r5
	jsr @r2
	mov r14,r4
	mov.w @(0x54,PC),r0
	mov 0x44,r4
	mov 0x39,r3
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x04,r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r12,@(r0,r14)
	add 0xF2,r0
	mov.b r12,@(r0,r14)
	add 0x26,r0
	mov.l @(0x4C,PC),r3
	mov 0x17,r5
	mov.l r12,@(r0,r14)
	mov 0x13,r6
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(0x38,PC),r2
	jsr @r2
	mov r14,r4

loc_8c08c34e:
	add 0x0C,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8c08c35c:
	#data 0x02A4
loc_8c08c35e:
	#data 0x0411
loc_8c08c360:
	#data 0x0159
loc_8c08c362:
	#data 0x0158
loc_8c08c364:
	#data 0x1403
loc_8c08c366:
	#data 0x150F
loc_8c08c368:
	#data 0x00FF
loc_8c08c36a:
	#data 0x01F9
loc_8c08c36c:
	#data 0x0130
loc_8c08c36e:
	#data 0x019C
	#align4

loc_8c08c370:
	#data 0x8C2895F0
loc_8c08c374:
	#data bank15.loc_8C1549F0
loc_8c08c378:
	#data bank0f.loc_8c0fdab6
loc_8c08c37c:
	#data bank04.loc_8c04223a
loc_8c08c380:
	#data 0x8C2896B0
loc_8c08c384:
	#data bank03.loc_8C034E8C

;==============================================
loc_8c08c388:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	mov.w @(0x78,PC),r4
	mov r5,r13
	add r13,r4
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf loc_8c08c3a6
	mov.w @(0x6E,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c08c3b0

loc_8c08c3a6:
	mov r13,r5
	bsr loc_8c08bf84
	mov r14,r4
	bra loc_8c08c4f2
	nop 

loc_8c08c3b0:
	mov.w @(0x5E,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c08c3c8
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov 0x03,r2
	extu.b r3,r3
	cmp/ge r2,r3
	bt loc_8c08c3c8
	mov 0x02,r1
	mov.b r1,@(r0,r14)

loc_8c08c3c8:
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
	tst r0,r0
	bt loc_8c08c414
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	bra loc_8c08c4ce
	mov.w r0,@(0x1C,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c08c40e:
	#data 0x02A4
loc_8c08c410:
	#data 0x019F
loc_8c08c412:
	#data 0x019E
	#align4

;==============================================
loc_8c08c414:
	mov.w @(0x104,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x0C,r0
	bf loc_8c08c4ce
	mov r13,r5
	bsr loc_8c08c758
	mov r14,r4
	tst r0,r0
	bt loc_8c08c4ce
	mov 0x21,r0
	mov.l @(0xFC,PC),r4
	mov.b @(r0,r14),r2
	fldi0 fr4
	add 0x01,r2
	mov.b r2,@(r0,r14)
	mov 0x08,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0xE2,PC),r0
	mov.b @(r0,r13),r3
	mov 0x5C,r0
	extu.b r3,r3
	shll2 r3
	shll r3
	add r4,r3
	fmov @r3,fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xD0,PC),r0
	mov.b @(r0,r13),r3
	mov 0x04,r0
	extu.b r3,r3
	shll2 r3
	shll r3
	add r3,r4
	fmov @(r0,r4),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov.w @(0xB6,PC),r0
	mov.w @(r0,r13),r3
	tst r3,r3
	bt.s loc_8c08c478
	mov.w r3,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8c08c478:
	mov 0x08,r0
	mov.l @(0xB0,PC),r3
	fmov fr4,@(r0,r15)
	mov 0x04,r0
	mov r15,r5
	mov 0x00,r6
	fmov fr4,@(r0,r15)
	fmov fr4,@r15
	jsr @r3
	mov r14,r4
	mov.l @(0xA0,PC),r2
	mov 0x1F,r5
	jsr @r2
	mov r14,r4
	mov.w @(0x8A,PC),r0
	mov 0x39,r3
	mov 0x00,r4
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0x8C,PC),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x21,r0
	mov.b @(r0,r14),r2
	mov 0x03,r1
	extu.b r2,r2
	cmp/ge r1,r2
	bf loc_8c08c4ce
	mov.b @(0x5,r14),r0
	add 0x01,r0
	bra loc_8c08c4e6
	mov.b r0,@(0x5,r14)

loc_8c08c4ce:
	mov r13,r5
	bsr loc_8c08c646
	mov r14,r4
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov 0x03,r2
	extu.b r3,r3
	cmp/ge r2,r3
	bf loc_8c08c4e6
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)

loc_8c08c4e6:
	mov.l @(0x50,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(0x4C,PC),r2
	jsr @r2
	mov r14,r4

loc_8c08c4f2:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C08C4FC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8C08C526,pc),r0 ; r0 set to 0x19f
	mov r4,r14
	mov.w @(loc_8C08C524,pc),r3 ; r3 set to 0x2A4
	add r5,r3 ; r3 ??? bc r5 is ???	
	mov.l r3,@r15
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8C08C540
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C08BF84
	mov.l @r15+,r14

;##############################################
loc_8c08c51c:
	#data 0x0159
loc_8c08c51e:
	#data 0x01A3
loc_8c08c520:
	#data 0x0130
loc_8c08c522:
	#data 0x01A1
loc_8C08C524:
	#data 0x02A4
loc_8C08C526:
	#data 0x019f
	#align4

loc_8C08C528:
	#data bank15.loc_8c154A00
loc_8C08C52C:
	#data bank0f.loc_8c0fDAB6
loc_8C08C530:
	#data bank04.loc_8c042008
loc_8C08C534:
	#data 0x8C2896B0
loc_8C08C538:
	#data bank03.loc_8c034dee
loc_8C08C53C:
	#data bank04.loc_8c045748

;==============================================
loc_8c08c540:
	mov.l @(loc_8c08c674,pc),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c08c55a
	mov.b @(0x05,r14),r0 
	add 0x01,r0
	mov.b r0,@(0x05,r14) 
	mov 0x00,r0
	mov.l @r15,r3
	mov.b r0,@(0x05,r3) 
	mov 0x07,r0
	mov.w r0,@(0x1C,r14) 

loc_8c08c55a:
	mov 0x5C,r1
	mov.l @(bank08.loc_8c08c678,pc),r3
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
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr 
	mov.l @(loc_8c08c67c,pc),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C08C5A4:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8C08C5Be
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C08C670,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;-------------------------------------------------------------------------------
loc_8C08C5BE:
	mov.l @(loc_8C08C678,pc),r3 ; r3 set to 0x8C034DEe
	jmp @r3
	nop

loc_8c08c5c4:
;unused return
	rts
	nop

;-------------------------------------------------------------------------------
loc_8c08c5c8:
	mov.b @(0x04,r5),r0 
	mov 0x02,r6
	extu.b r0,r0
	cmp/ge r6,r0
	bt/s loc_8c08c5dc
	mov.l @(0x14,r4),r7
	mov.b @(0x04,r7),r0 
	extu.b r0,r0
	cmp/ge r6,r0
	bf loc_8c08c5ea

loc_8c08c5dc:
	mov.b @(0x04,r4),r0 
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x04,r4) 
	mov.w @(bank08.loc_8c08c670,pc),r0
	rts 
	mov.b r3,@(r0,r4) 

;-------------------------------------------------------------------------------
loc_8c08c5ea:
	bra bank08.loc_8c08c72c
	nop

;unused
loc_8C08C5ee:
	rts
	nop
;==============================================
loc_8C08C5F2:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C08C670,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;-------------------------------------------------------------------------------
loc_8C08C600:
	mov.l @(loc_8C08C680,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8C08C606:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	mov 0x01,r5
	mov.l @(0x70,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c08c63e
	mov r0,r4
	mov.l @(0x64,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r4)
	mov 0x31,r0
	mov.l r14,@(0x14,r4)
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r4)
	mov 0x00,r0
	mov.w r0,@(0x1E,r14)


loc_8C08C63E:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C08C646:
	mov 0x5C,r0
	fldi0 fr3
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x00,r13
	fmov @(r0,r4),fr2
	mov.l @(0x38,PC),r14
	fcmp/gt fr2,fr3
	bf.s loc_8c08c694
	mov r13,r6
	mova @(0x34,PC),r0
	fmov @r0,fr3
	mov.w @(0x10,PC),r0
	fmov @(r0,r14),fr2
	mov 0x34,r0
	fmov @(r0,r4),fr1
	fadd fr3,fr2
	fcmp/gt fr1,fr2
	bt loc_8c08c6a6               ; loc_8c08c646+0x60
	bra loc_8c08c6b0              ; loc_8c08c646+0x6a
	nop 

;##############################################
loc_8C08C670:
	#data 0x012c
loc_8C08C672:
	#data 0x0088
	#align4

loc_8C08C674:
	#data bank03.loc_8c0332E0
loc_8C08C678:
	#data bank03.loc_8c034dee
loc_8C08C67C:
	#data bank04.loc_8c045748
loc_8C08C680:
	#data bank04.loc_8c0450C0
loc_8C08C684:
	#data bank04.loc_8c044F12
loc_8C08C688:
	#data loc_8C08BFE0
loc_8C08C68c:
	#data 0x8C26A518
loc_8C08C690:
	#data 0x41D55555

;==============================================
loc_8C08C694:
	mova @(0xAC,PC),r0
	fmov @r0,fr3
	mov.w @(0xA0,PC),r0
	fmov @(r0,r14),fr2
	mov 0x34,r0
	fmov @(r0,r4),fr1
	fadd fr3,fr2
	fcmp/gt fr2,fr1
	bf loc_8c08c6b0

loc_8C08C6A6:
	mov 0x5C,r0
	fmov @(r0,r4),fr3
	add 0x01,r6
	fneg fr3
	fmov fr3,@(r0,r4)

loc_8C08C6B0:
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r4),fr2
	fcmp/gt fr2,fr3
	bt loc_8c08c6d0
	mova @(0x8C,PC),r0
	fmov @r0,fr3
	mov.w @(0x7C,PC),r0
	fmov @(r0,r14),fr2
	mov 0x38,r0
	fmov @(r0,r4),fr1
	fadd fr3,fr2
	fcmp/gt fr2,fr1
	bt loc_8c08c6e2
	bra loc_8c08c6ec
	nop 

loc_8C08C6D0:
	mova @(0x78,PC),r0
	fmov @r0,fr3
	mov.w @(0x68,PC),r0
	fmov @(r0,r5),fr2
	mov 0x38,r0
	fmov @(r0,r4),fr1
	fadd fr3,fr2
	fcmp/gt fr1,fr2
	bf loc_8c08c6ec

loc_8C08C6E2:
	mov 0x60,r0
	fmov @(r0,r4),fr3
	add 0x01,r6
	fneg fr3
	fmov fr3,@(r0,r4)

loc_8C08C6EC:
	tst r6,r6
	bt loc_8c08c726
	mov 0x21,r0
	mov.b @(r0,r4),r2
	mov 0x39,r3
	mov 0x1F,r5
	add 0x01,r2
	mov.b r2,@(r0,r4)
	mov.w @(0x42,PC),r0
	mov.b r3,@(r0,r4)
	add 0x0B,r0
	mov.w r13,@(r0,r4)
	add 0xF2,r0
	mov.b r13,@(r0,r4)
	add 0x26,r0
	mov.l @(0x44,PC),r3
	mov.l r13,@(r0,r4)
	mov.b @(0x2,r4),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(0x34,PC),r2
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C08C726:
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C08C72C:
	mov.l @(0x14,r4),r5
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	rts 
	fmov fr3,@(r0,r4)

;-------------------------------------------------------------------------------
loc_8c08c73c:
	#data 0x008c
loc_8c08c73e:
	#data 0x0090
loc_8c08c740:
	#data 0x041c
loc_8c08c742:
	#data 0x01A1
	#align4

loc_8c08c744:
	#data 0xC1D55555
loc_8c08c748:
	#data 0xC1CDB6Db
loc_8c08c74c:
	#data 0x41892492
loc_8c08c750:
	#data 0x8C2896B0
loc_8C08C754:
	#data bank04.loc_8c042008

;==============================================
loc_8C08C758:
	mov.w @(0xE6,PC),r0
	mov.l @(r0,r4),r7
	mov.w @(0x4,r7),r0
	extu.w r0,r7
	mov.w @(0xE0,PC),r0
	shll2 r7
	mov.l @(r0,r4),r3
	mova @(0xE0,PC),r0
	fmov @r0,fr6
	shll r7
	mov.w @(0xD2,PC),r0
	add r3,r7
	mov.w @r7,r3
	mov.l @(r0,r5),r6
	add 0xB0,r0
	lds r3,fpul
	mov.w @r6,r6
	mov.l @(r0,r5),r3
	add 0xC0,r0
	extu.w r6,r6
	float fpul,fr3
	shll2 r6
	shll r6
	add r3,r6
	mov.w @r6,r3
	fmov fr3,fr4
	fmul fr6,fr4
	lds r3,fpul
	mov.w @(r0,r4),r3
	float fpul,fr3
	tst r3,r3
	fmov fr3,fr5
	bt.s loc_8c08c79e
	fmul fr6,fr5
	fneg fr4


loc_8C08C79E:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	mov.w @(0xA0,PC),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bt.s loc_8c08c7ae
	fadd fr3,fr4
	fneg fr5

loc_8C08C7AE:
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fadd fr3,fr5
	fldi0 fr3
	fsub fr5,fr4
	fcmp/gt fr4,fr3
	bf.s loc_8c08c7c0
	mov.w @(0x2,r6),r0
	fneg fr4

loc_8C08C7C0:
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fmov fr3,fr5
	fmul fr6,fr5
	fldi0 fr3
	fcmp/eq fr3,fr5
	bt loc_8c08c83c
	mov.w @(0x2,r7),r0
	fmov fr6,fr0
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fmac fr0,fr3,fr5
	fcmp/gt fr4,fr5
	bf loc_8c08c83c
	mova @(0x68,PC),r0
	fmov @r0,fr5
	mov.w @(0x4,r7),r0
	mov r0,r3
	lds r3,fpul
	mov 0x38,r0
	float fpul,fr3
	fmov fr3,fr4
	fmul fr5,fr4
	fmov @(r0,r4),fr3
	mov.w @(0x4,r6),r0
	mov r0,r3
	lds r3,fpul
	fneg fr4
	fadd fr3,fr4
	mov 0x38,r0
	float fpul,fr3
	fmov fr3,fr6
	fmul fr5,fr6
	fmov @(r0,r5),fr3
	fneg fr6
	fadd fr3,fr6
	fldi0 fr3
	fsub fr6,fr4
	fcmp/gt fr4,fr3
	bf.s loc_8c08c818
	mov.w @(0x6,r6),r0
	fneg fr4

loc_8C08C818:
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fmov fr3,fr6
	fmul fr5,fr6
	fldi0 fr3
	fcmp/eq fr3,fr6
	bt loc_8c08c83c
	mov.w @(0x6,r7),r0
	fmov fr5,fr0
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fmac fr0,fr3,fr6
	fcmp/gt fr4,fr6
	bf loc_8c08c83c
	rts 
	mov 0x01,r0

;-------------------------------------------------------------------------------
loc_8C08C83C:
	mov 0x00,r0
	rts 
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c08c842:
	#data 0x01c0
loc_8c08c844:
	#data 0x0170
loc_8c08c846:
	#data 0x0130
	#align4

loc_8c08c848:
	#data 0x3fd55555
loc_8c08c84c:
	#data 0x40092492

;==============================================
;Unused
loc_8c08c850:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x15C,PC),r3
	mov 0x01,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c08c87e
	mov r0,r4
	mov.l @(0x150,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov 0x00,r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.b r3,@(r0,r4)
	mov.l @r15,r5
	mov.w @(0x12C,PC),r3
	mov.w @(0x12C,PC),r0
	add r3,r5
	mov.b r0,@(0x6,r5)

loc_8c08c87e:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;-------------------------------------------------------------------------------
loc_8C08C886:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r0
	nop 
	mov.l @(0x120,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov 0x02,r6
	jsr @r3
	mov.l @r15,r4
	tst r0,r0
	bt.s loc_8c08c8b2
	mov r0,r4
	mov 0x20,r1
	mov.l @(0x110,PC),r3
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1

loc_8C08C8B2:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;-------------------------------------------------------------------------------
loc_8C08C8BA:
	mov r4,r3
	mov.l @(loc_8C08C9BC,pc),r1 ; r1 set to 0x8C154A44
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C08C8CC:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C08C9AA,pc),r3 ; r3 set to 0x1C03
	mov.l r13,@-r15
	mov.w @(loc_8C08C9AC,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C08C9AC,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(0x18,r14),r4
	mov.b r0,@(0x04,r14)
	mov 0x26,r0 ; r0 set to 0x26
	mov.w r3,@(r0,r14)
	mov.w @(loc_8C08C9AE,pc),r0 ; r0 set to 0xC0
	mov.l @(loc_8C08C9C0,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r4,r2 ; r2 ??? bc r4 is ???	
	mov.w @(loc_8C08C9B0,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C08C9B2,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C08C9C4,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r4),r2
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C08C9B0,pc),r0 ; r0 set to 0x12c
	mov.l @(loc_8C08C9C8,pc),r2 ; r2 set to 0x8C154A18
	mov.b r5,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r13
	extu.b r13,r13
	mov r13,r3 ; r3 ??? bc r13 is ???	
	shll2 r3
	shll r13
	add r3,r13
	mov.l @(loc_8C08C9CC,pc),r3 ; r3 set to 0x8C034E8c
	add r2,r13
	mov.b @(0x05,r13),r0
	mov r0,r6 ; r6 set to 0x20
	mov.b @(0x04,r13),r0
	mov r0,r5 ; r5 set to 0x20
	jsr @r3
	mov r14,r4
	mov 0x24,r0 ; r0 set to 0x24
	mov r14,r4
	mov 0x0B,r2 ; r2 set to 0x0b
	mov.b r2,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b @r13,r3 ; r3 ??? bc r13 is ???	
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C08C968:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C08C9D0,pc),r0 ; r0 set to 0x8C154A54, r0 set to 0x8C154A54
	extu.b r3,r3
	mov.l @(0x18,r14),r5 ; r5 ??? bc r14 is ???	
	shll2 r3
	mov.l @(r0,r3),r2 ; r2 ??? bc r3 is ???	
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C08C97E:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x4,r5),r0
	mov 0x02,r4
	extu.b r0,r0
	cmp/ge r4,r0
	bt.s loc_8c08c998
	mov 0x00,r6
	mov.b @(0x1,r14),r0
	mov r0,r3
	mov.b @(0x1,r5),r0
	cmp/eq r0,r3
	bt loc_8c08c9d4

loc_8C08C998:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xE,PC),r0
	mov.b r6,@(r0,r14)
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c08c9a6:
	#data 0x02A4
loc_8c08c9a8:
	#data 0x00Ff
loc_8C08C9AA:
	#data 0x1C03
loc_8C08C9AC:
	#data 0x00Dc
loc_8C08C9AE:
	#data 0x00C0
loc_8C08C9B0:
	#data 0x012c
loc_8C08C9B2:
	#data 0x01A3
	#align4

loc_8C08C9B4:
	#data bank04.loc_8c044F12
loc_8C08C9B8:
	#data loc_8C08C8Ba
loc_8C08C9BC:
	#data bank15.loc_8c154A44
loc_8C08C9C0:
	#data bank12.loc_8c129560
loc_8C08C9C4:
	#data bank12.loc_8c1294C8
loc_8C08C9C8:
	#data bank15.loc_8c154A18
loc_8C08C9CC:
	#data bank03.loc_8c034e8c
loc_8C08C9D0:
	#data bank15.loc_8c154A54

;==============================================
loc_8C08C9D4:
	mov.b @(0x5,r5),r0
	extu.b r0,r0
	cmp/ge r4,r0
	bf loc_8c08c9f4
	mov.b @(0x4,r14),r0
	mov.w @(0x142,PC),r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	add r5,r4
	mov.w @(0x138,PC),r0
	mov.b r6,@(r0,r14)
	mov r6,r0
	nop 
	mov.b r0,@(0x6,r4)
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C08C9F4:
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x134,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused
loc_8c08ca04:
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C08CA08:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.b @(0x05,r4),r0
	mov 0x00,r14 ; r14 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	mov.w @(loc_8C08CB26,pc),r0 ; r0 set to 0xD4
	mov.l r14,@(r0,r4)
	mova @(loc_8C08CB34,pc),r0  ; r0 set to 0x8C08CB34
	fmov.s @r0,fr4
	mov.b @(0x01,r5),r0
	extu.b r0,r0 ; r0 set to 0x34
	cmp/eq 0x1C,r0
	bf/s loc_8C08CA30
	mov r15,r6
	mova @(loc_8C08CB38,pc),r0  ; r0 set to 0x8C08CB38
	fmov.s fr4,@r6
	bra loc_8C08CA36
	fmov.s @r0,fr3

loc_8C08CA30:
	mova @(loc_8C08CB3C,pc),r0  ; r0 init to 0x8C08CB3c
	fmov.s fr4,@r6
	fmov.s @r0,fr3

loc_8C08CA36:
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	mov.l @(loc_8C08CB40,pc),r7 ; r7 set to 0x8C154A80, r7 set to 0x8C154A80
	fmov.s fr3,@(r0,r6)
	mov.w @(loc_8C08CB28,pc),r0 ; r0 set to 0x1D2, r0 set to 0x1D2
	mov.b @(r0,r5),r3
	tst r3,r3
	bf/s loc_8C08CA74
	fmov.s @r6,fr4
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r5),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C08CB2A,pc),r0 ; r0 set to 0x1A3, r0 set to 0x1A3
	mov.b @(r0,r5),r3
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r7,r3
	fmov.s @r3,fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C08CB2A,pc),r0 ; r0 set to 0x1A3, r0 set to 0x1A3
	mov.b @(r0,r5),r3
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r7,r3
	fmov.s @(r0,r3),fr3
	bra loc_8C08CAA2
	nop

loc_8C08CA74:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r5),fr3
	fsub fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C08CB2A,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r5),r3
	mov 0x5C,r0 ; r0 set to 0x5c
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r7,r3
	fmov.s @r3,fr3
	fneg fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C08CB2A,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r5),r3
	mov 0x04,r0 ; r0 set to 0x04
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r7,r3
	fmov.s @(r0,r3),fr3
	fneg fr3

loc_8C08CAA2:
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fmov.s fr3,@(r0,r4)
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	fmov.s @(r0,r6),fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r5),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(loc_8C08CB2A,pc),r0 ; r0 set to 0x1A3, r0 set to 0x1A3
	mov.b @(r0,r5),r3
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r7,r3
	fmov.s @(r0,r3),fr3
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C08CB2A,pc),r0 ; r0 set to 0x1A3, r0 set to 0x1A3
	mov.b @(r0,r5),r3
	mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r3,r7
	mov.l @(loc_8C08CB44,pc),r3 ; r3 set to 0x8C154AA0, r3 set to 0x8C154AA0
	fmov.s @(r0,r7),fr3 ; r3 ??? bc r7 is ???, r3 ??? bc r7 is ???	
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr3,@(r0,r4)
	add 0x60,r0 ; r0 set to 0xCC, r0 set to 0xCc
	mov.w @r3,r2
	mov.l r2,@(r0,r4)
	add 0x04,r0 ; r0 set to 0xD0, r0 set to 0xD0
	mov 0x01,r1 ; r1 set to 0x01, r1 set to 0x01
	mov.l r1,@(r0,r4)
	mov 0x42,r6 ; r6 set to 0x42, r6 set to 0x42
	mov.w @(loc_8C08CB2C,pc),r0 ; r0 set to 0x19C, r0 set to 0x19c
	mov 0x3A,r2 ; r2 set to 0x3A, r2 set to 0x3a
	mov.b r6,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x19D, r0 set to 0x19d
	mov.b r6,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x1A1, r0 set to 0x1A1
	mov.b r2,@(r0,r4)
	add 0x0B,r0 ; r0 set to 0x1AC, r0 set to 0x1Ac
	mov.w r14,@(r0,r4)
	add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19e
	mov.b r14,@(r0,r4)
	add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4
	mov.l @(loc_8C08CB48,pc),r2 ; r2 set to 0x8C2896B0, r2 set to 0x8C2896B0
	mov.l r14,@(r0,r4)
	mov.b @(0x02,r4),r0
	mov.l @r2,r1 ; r1 ??, r1 ??	
	extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4
	shll r0 ; r0 set to 0x188, r0 set to 0x188
	add 0x7C,r1
	mov.w @(r0,r1),r3
	add 0x01,r3
	mov.w r3,@(r0,r1)
	bsr loc_8C08CB4c
	nop
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C08CB22:
	#data 0x012c
loc_8C08CB24:
	#data 0x02A4
loc_8C08CB26:
	#data 0x00D4
loc_8C08CB28:
	#data 0x01D2
loc_8C08CB2A:
	#data 0x01A3
loc_8C08CB2C:
	#data 0x019c
	#align4

loc_8C08CB30:
	#data bank15.loc_8c154A70
loc_8C08CB34:
	#data 0xC2555555
loc_8C08CB38:
	#data 0x42BC9249
loc_8C08CB3C:
	#data 0x42A2DB6d
loc_8C08CB40:
	#data bank15.loc_8c154A80
loc_8C08CB44:
	#data bank15.loc_8c154AA0
loc_8C08CB48:
	#data 0x8C2896B0

;==============================================
loc_8C08CB4C:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5c
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov 0x34,r0 ; r0 set to 0x34
	sts.l pr,@-r15
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	fmov.s @(r0,r14),fr2
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
	add 0x74,r0 ; r0 set to 0xD4
	mov.l @(r0,r14),r3
	tst r3,r3
	bf loc_8C08CBDa
	mov 0x5C,r0 ; r0 set to 0x5c
	fldi0 fr3
	fmov.s @(r0,r14),fr2
	mov.l @(loc_8C08CC2C,pc),r4 ; r4 set to 0x8C26A518
	fcmp/gt fr2,fr3
	bf loc_8C08CBB4
	mova @(loc_8C08CC30,pc),r0  ; r0 set to 0x8C08CC30
	fmov.s @r0,fr2
	mov.w @(loc_8C08CC22,pc),r0 ; r0 set to 0x88
	fmov.s @(r0,r4),fr1
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr0 ; r0 ??? bc r14 is ???	
	fadd fr2,fr1
	fcmp/gt fr1,fr0
	bf loc_8C08CBC6
	bra loc_8C08CBDa
	nop

loc_8c08cbb4:
	mova @(loc_8C08CC34,pc),r0 
	fmov.s @r0,fr2
	mov.w @(loc_8C08CC24,pc),r0
	fmov.s @(r0,r4),fr1
	mov 0x34,r0
	fmov.s @(r0,r14),fr0
	fadd fr2,fr1
	fcmp/gt fr0,fr1
	bt loc_8c08cbda

loc_8c08cbc6:
	mov.w @(loc_8C08CC26,pc),r2
	mov r2,r0
	nop 
	add 0xD5,r0
	fldi0 fr4
	mov.l r2,@(r0,r14) 
	mov 0x5C,r0
	fmov.s fr4,@(r0,r14) 
	mov 0x68,r0
	fmov.s fr4,@(r0,r14) 

loc_8c08cbda:
	mov.w @(loc_8C08CC28,pc),r0
	fmov.s @(r0,r5),fr3
	mov 0x38,r0
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c08cc12
	mov.b @(0x05,r14),r0 
	mov 0x0F,r3
	mov 0x05,r6
	add 0x01,r0
	mov.b r0,@(0x05,r14) 
	mov.w @(loc_8C08CC28,pc),r0
	fmov.s @(r0,r5),fr3
	mov 0x38,r0
	mov 0x17,r5
	fmov.s fr3,@(r0,r14) 
	mov.l @(bank08.loc_8c08cc38,pc),r0
	mov.w @r0,r0
	mov.w r0,@(0x1C,r14) 
	mov 0x24,r0
	mov.b r3,@(r0,r14) 
	mov.l @(bank08.loc_8c08cc3c,pc),r3
	jsr @r3
	mov r14,r4
	mov.l @(bank08.loc_8c08cc40,pc),r2
	mov 0x4B,r5
	jsr @r2
	mov r14,r4

loc_8c08cc12:
	mov.l @(bank08.loc_8c08cc44,pc),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr 
	mov.l @(bank08.loc_8c08cc48,pc),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c08cc22:
	#data 0x0088
loc_8C08CC24:
	#data 0x008C
loc_8C08CC26:
	#data 0x00FF
loc_8C08CC28:
	#data 0x041C
	#align4

loc_8c08cc2c:
	#data 0x8C26A518
loc_8c08cc30:
	#data 0x42555555
loc_8C08CC34:
	#data 0xC2555555
loc_8c08cc38:
	#data bank15.loc_8c154aa2
loc_8c08cc3c:
	#data bank03.loc_8c034e8c
loc_8c08cc40:
	#data bank04.loc_8c04223a
loc_8c08cc44:
	#data bank03.loc_8c034dee
loc_8c08cc48:
	#data bank04.loc_8c045748

;==============================================
loc_8c08cc4c:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c08cc8a
	mov.l @(0x13C,PC),r4
	mov.w @(0x4,r4),r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x128,PC),r0
	mov.l @(r0,r14),r3
	add 0xFF,r3
	tst r3,r3
	bf.s loc_8c08cc7a
	mov.l r3,@(r0,r14)
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x6,r4),r0
	mov.w r0,@(0x1C,r14)

loc_8c08cc7a:
	mov.w @(0x114,PC),r0
	mov.l @(r0,r14),r5
	bsr loc_8c08c886
	mov r14,r4
	mov.w @(0x10C,PC),r0
	mov.l @(r0,r14),r2
	add 0x01,r2
	mov.l r2,@(r0,r14)

loc_8c08cc8a:
	mov.l @(0x114,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x100,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c08ccc0
	mov 0x00,r4
	mov.b r4,@(r0,r14)
	add 0x60,r0
	mov 0x3A,r3
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0xF4,PC),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)

loc_8c08ccc0:
	lds.l @r15+,pr
	mov.l @(0xE4,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C08CCCA:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	mov.w @(loc_8C08CD96,pc),r4 ; r4 set to 0x2A4
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	add r5,r4 ; r4 ??? bc r5 is ???	
	bf/s loc_8C08CCF2
	mov 0x00,r13 ; r13 set to 0x00
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov r13,r0 ; r0 set to 0x00
	nop
	bra loc_8C08CD32
	mov.b r0,@(0x06,r4)

loc_8c08ccf2:
	mov.l @(bank08.loc_8c08cda0,pc),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C08CD94,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt/s loc_8c08cd28
	mov r14,r4
	mov.b r13,@(r0,r14) 
	add 0x60,r0
	mov 0x3A,r3
	mov.b r3,@(r0,r14) 
	add 0x0B,r0
	mov.w r13,@(r0,r14) 
	add 0xF2,r0
	mov.b r13,@(r0,r14) 
	add 0x26,r0
	mov.l @(loc_8C08CDA4,pc),r3
	mov.l r13,@(r0,r14) 
	mov.b @(0x02,r14),r0 
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2) 

loc_8c08cd28:
	lds.l @r15+,pr 
	mov.l @(bank08.loc_8c08cda8,pc),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C08CD32:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C08CD3A:
	mov.b @(0x5,r4),r0
	tst r0,r0
	bf loc_8c08cd6e
	mov.b @(0x5,r4),r0
	mov.l @(0x68,PC),r2
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r6
	mov 0x34,r0
	fmov @(r0,r5),fr3
	extu.b r6,r6
	mov r6,r3
	shll2 r3
	shll r6
	fmov fr3,@(r0,r4)
	add r3,r6
	add r2,r6
	mov.w @(0x2,r6),r0
	mov r0,r3
	lds r3,fpul
	mov 0x38,r0
	fmov @(r0,r5),fr2
	float fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)

loc_8C08CD6E:
	mov.b @(0x4,r5),r0
	mov 0x02,r3
	extu.b r0,r0
	cmp/ge r3,r0
	bf loc_8c08cd86
	mov.b @(0x4,r4),r0
	mov 0x00,r2
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x14,PC),r0
	rts 
	mov.b r2,@(r0,r4)

;-------------------------------------------------------------------------------
loc_8C08CD86:
	mov.l @(0x18,PC),r3
	jmp @r3
	nop

;unused Return
	rts
	nop

;-------------------------------------------------------------------------------
loc_8c08cd90:
	#data 0x00Cc
loc_8c08cd92:
	#data 0x00D0
loc_8c08cd94:
	#data 0x0141
loc_8C08CD96:
	#data 0x02A4
loc_8C08CD98:
	#data 0x012c
	#align4

loc_8C08CD9C:
	#data bank15.loc_8c154AA0
loc_8C08CDA0:
	#data bank03.loc_8c034dee
loc_8c08cda4:
	#data 0x8C2896B0
loc_8C08CDA8:
	#data bank04.loc_8c045748
loc_8C08CDAC:
	#data bank15.loc_8c154A18

;==============================================
loc_8C08CDB0:
	mov r4,r3
	mov.l @(loc_8C08CE68,pc),r1 ; r1 set to 0x8C154AA8
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C08CDC2:
	mov.b @(0x5,r4),r0
	mov.l @(0xA4,PC),r2
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r6
	mov 0x34,r0
	fmov @(r0,r5),fr3
	extu.b r6,r6
	mov r6,r3
	shll2 r3
	shll r6
	fmov fr3,@(r0,r4)
	add r3,r6
	add r2,r6
	mov.w @(0x2,r6),r0
	mov r0,r3
	lds r3,fpul
	mov 0x38,r0
	fmov @(r0,r5),fr2
	float fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)

loc_8C08CDF0:
	mov.l r14,@-r15
	mov 0x02,r3
	sts.l pr,@-r15
	mov.b @(0x4,r5),r0
	extu.b r0,r0
	cmp/ge r3,r0
	bf.s loc_8c08ce10
	mov r4,r14
	mov.b @(0x5,r14),r0
	mov 0x17,r5
	mov.l @(0x68,PC),r2
	mov 0x07,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	jsr @r2
	mov r14,r4

loc_8C08CE10:
	lds.l @r15+,pr
	mov.l @(0x60,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C08CE1A:
	sts.l pr,@-r15
	add 0xF8,r15
	mov r5,r3
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov.b @(0x4,r3),r0
	mov 0x02,r3
	extu.b r0,r0
	cmp/ge r3,r0
	bt loc_8c08ce3a
	mov.l @(0x44,PC),r3
	jsr @r3
	mov.l @(0x4,r15),r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c08ce4a

loc_8C08CE3A:
	mov.l @r15,r3
	mov 0x00,r2
	mov.b @(0x4,r3),r0
	add 0x01,r0
	mov.b r0,@(0x4,r3)
	mov.w @(0x1E,PC),r0
	mov.l @r15,r3
	mov.b r2,@(r0,r3)

loc_8C08CE4A:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	nop 

;-------------------------------------------------------------------------------
loc_8C08CE52:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C08CE66,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;-------------------------------------------------------------------------------
loc_8C08CE60:
	mov.l @(loc_8C08CE78,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C08CE66:
	#data 0x012c
	#align4

loc_8C08CE68:
	#data bank15.loc_8c154AA8
loc_8C08CE6C:
	#data bank15.loc_8c154A18
loc_8C08CE70:
	#data bank03.loc_8c034e8c
loc_8C08CE74:
	#data bank03.loc_8c034dee
loc_8C08CE78:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c08ce7c:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x98,PC),r3
	mov 0x01,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c08ceb6
	mov r0,r4
	mov.l @(0x8C,PC),r3
	mov 0x20,r0
	mov 0x00,r6
	mov.l r3,@(0x10,r4)
	mov 0x01,r7
	mov.w @(0x78,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.b r6,@(r0,r4)
	mov.l @r15,r5
	add r3,r5
	mov r7,r0
	nop 
	mov.b r0,@(0x7,r5)
	mov.b r0,@(0x8,r5)
	mov r6,r0
	nop 
	mov.b r0,@(0x9,r5)

loc_8c08ceb6:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;-------------------------------------------------------------------------------
loc_8C08CEBE:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r0
	nop 
	mov.l @(0x50,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov 0x02,r6
	jsr @r3
	mov.l @r15,r4
	tst r0,r0
	bt.s loc_8c08ceea
	mov r0,r4
	mov 0x20,r1
	mov.l @(0x40,PC),r3
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1

loc_8C08CEEA:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;-------------------------------------------------------------------------------
loc_8C08CEF2:
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C08CF24,pc),r0 ; r0 set to 0x8C154AB4
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

loc_8C08CF06:
	mov r4,r3
	mov.l @(loc_8C08CF28,pc),r1 ; r1 set to 0x8C154AD8
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c08cf18:
	#data 0x02A4
	#align4

loc_8C08CF1C:
	#data bank04.loc_8c044F12
loc_8C08CF20:
	#data loc_8C08CEF2
loc_8C08CF24:
	#data bank15.loc_8c154AB4
loc_8C08CF28:
	#data bank15.loc_8c154AD8

;==============================================
loc_8C08CF2C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov 0x08,r11
	mov.w @(0x132,PC),r3
	mov r11,r12
	mov.l r10,@-r15
	mov.w @(0x12E,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x126,PC),r2
	add 0x01,r0
	mov.l @(0x18,r14),r4
	mov.b r0,@(0x4,r14)
	mov 0x26,r0
	mov.w r3,@(r0,r14)
	mov.w @(0x11C,PC),r0
	mov.l @(0x128,PC),r3
	jsr @r3
	add r4,r2
	mov.w @(0x116,PC),r0
	mov 0x01,r10
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
	mov.w @(0xFA,PC),r0
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
	mov.l @(0xF4,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.w @(0xDE,PC),r3
	mov.b @(r0,r4),r2
	mov 0x00,r4
	mov 0x30,r5
	mov r4,r13
	mov.b r2,@(r0,r14)
	mov.w @(0xCE,PC),r0
	mov.b r4,@(r0,r14)
	mov.w r0,@(0x1C,r14)
	add 0x10,r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	add 0x8D,r0
	mov.l r4,@(r0,r14)
	add 0x04,r0
	mov.l r4,@(r0,r14)
	add 0x04,r0
	mov.l r3,@(r0,r14)

loc_8C08CFC4:
	mov r12,r5
	bsr loc_8c08cebe
	mov r14,r4
	tst r0,r0
	bt loc_8c08cfe6
	mov r10,r2
	mov.w @(0xA6,PC),r0
	exts.w r13,r3
	shad r3,r2
	mov.l @(r0,r14),r3
	add 0x01,r13
	or r2,r3
	mov.l r3,@(r0,r14)
	exts.w r13,r3
	cmp/ge r11,r3
	add 0xFF,r12
	bf loc_8c08cfc4

loc_8C08CFE6:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C08CFF4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x18,r14),r5
	mov 0x02,r4
	mov.b @(0x4,r5),r0
	extu.b r0,r0
	cmp/ge r4,r0
	bt loc_8c08d00e
	mov.b @(0x1,r14),r0
	mov r0,r3
	mov.b @(0x1,r5),r0
	cmp/eq r0,r3
	bt loc_8c08d016

loc_8C08D00E:
	mov 0x03,r0
	mov.b r0,@(0x4,r14)
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C08D016:
	mov.w @(0x60,PC),r0
	mov.l @(r0,r14),r3
	tst r3,r3
	bf loc_8c08d030
	mov r4,r0
	nop 
	mov.w @(0x56,PC),r4
	mov.b r0,@(0x4,r14)
	mov 0x00,r0
	add r5,r4
	mov.b r0,@(0x7,r4)
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C08D030:
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x50,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused return
loc_8c08d040:
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C08D044:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x02,r4 ; r4 set to 0x02
	mov.w @(loc_8C08D07C,pc),r13 ; r13 set to 0x2A4
	mov.l r12,@-r15
	mov r5,r12
	mov.l r11,@-r15
	add r12,r13 ; r13 ??? bc r12 is ???	
	sts.l pr,@-r15
	mov.b @(0x08,r13),r0
	tst r0,r0
	bf/s loc_8C08D08c
	mov 0x00,r11 ; r11 set to 0x00
	mov r4,r0 ; r0 set to 0x02
	nop
	mov.b r0,@(0x04,r14)
	mov r11,r0 ; r0 set to 0x00
	nop
	bra loc_8C08D10e
	mov.b r0,@(0x07,r13)

;##############################################
loc_8c08d06e:
	#data 0x1C04
loc_8c08d070:
	#data 0x00Dc
loc_8c08d072:
	#data 0x00C0
loc_8c08d074:
	#data 0x012c
loc_8c08d076:
	#data 0x01A3
loc_8c08d078:
	#data 0x00Ff
loc_8c08d07a:
	#data 0x00CC
loc_8C08D07C:
	#data 0x02A4
	#align4

loc_8C08D080:
	#data bank12.loc_8c129560
loc_8C08D084:
	#data bank12.loc_8c1294C8
loc_8C08D088:
	#data bank15.loc_8c154AE8

;----------------------------------------------
loc_8c08d08c:
	mov.b @(0x0B,r13),r0 
	tst r0,r0
	bf loc_8c08d09a
	mov.b @(0x05,r12),r0 
	extu.b r0,r0
	cmp/ge r4,r0
	bf loc_8c08d0aa

loc_8c08d09a:
	mov r4,r0
	nop 
	mov.b r0,@(0x04,r14) 
	mov r11,r0
	nop 
	mov.b r0,@(0x07,r13) 
	bra loc_8c08d10e
	mov.b r0,@(0x08,r13) 

loc_8c08d0aa:
	mov r12,r5
	bsr bank08.loc_8c08d544
	mov r14,r4
	mov.b @(0x09,r13),r0 
	tst r0,r0
	bt loc_8c08d0f4
	mov.b @(0x05,r14),r0 
	add 0x01,r0
	mov.b r0,@(0x05,r14) 
	mov r11,r0
	nop 
	mov.b r0,@(0x08,r13) 
	mov 0x01,r3
	mov.w @(loc_8C08D1B4,pc),r0
	mov.l r11,@(r0,r14) 
	add 0xFC,r0
	mov.l r3,@(r0,r14) 
	mov 0x10,r0
	mov.w r0,@(0x1C,r14) 
	mov 0x24,r0
	mov 0x0A,r3
	mov.b r3,@(r0,r14) 
	mov.w @(loc_8C08D1B6,pc),r0
	mov.b @(r0,r12),r2
	tst r2,r2
	bf loc_8c08d0e4
	mova @(loc_8C08D1C0,pc),r0 
	bra loc_8c08d0e8
	fmov.s @r0,fr3

loc_8c08d0e4:
	mova @(loc_8C08D1C4,pc),r0 
	fmov.s @r0,fr3

loc_8c08d0e8:
	mov 0x5C,r0
	fmov.s fr3,@(r0,r14) 
	mov 0x68,r0
	fldi0 fr3
	bra loc_8c08d10e
	fmov.s fr3,@(r0,r14)

loc_8c08d0f4:
	lds.l @r15+,pr 
	mov.b @(0x06,r14),r0 
	mov r12,r5
	mov.l @(bank08.loc_8c08d1c8,pc),r1
	mov r14,r4
	mov.l @r15+,r11
	extu.b r0,r0
	shll2 r0
	mov.l @r15+,r12
	mov.l @(r0,r1),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C08D10E:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C08D11A:
	mov.w @(loc_8C08D1BA,pc),r0 ; r0 set to 0x1A0
	mov.w @(loc_8C08D1B8,pc),r6 ; r6 set to 0x2A4
	mov.b @(r0,r5),r3
	tst r3,r3
	bt/s loc_8C08D12e
	add r5,r6 ; r6 ??? bc r5 is ???	
	mov.b @(0x06,r4),r0
	add 0x01,r0 ; r0 set to 0x1A1
	rts
	mov.b r0,@(0x06,r4)

;-------------------------------------------------------------------------------
loc_8c08d12e:
	mov.b @(0x07,r6),r0 
	cmp/pz r0
	bf loc_8c08d14c
	mov.w @(0x1C,r4),r0 
	add 0xFF,r0
	mov.w r0,@(0x1C,r4) 
	exts.w r0,r0
	tst r0,r0
	bf loc_8c08d14c
	mov 0x00,r5
	mov r5,r0
	nop 
	mov.b r0,@(0x08,r6) 
	mov.w @(loc_8C08D1B4,pc),r0
	mov.l r5,@(r0,r4) 

loc_8c08d14c:
	rts
	nop

;-------------------------------------------------------------------------------
loc_8c08d150:
	mov.w @(0x66,PC),r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bf loc_8c08d15c
	mov 0x00,r0
	mov.b r0,@(0x6,r4)

loc_8c08d15c:
	rts
	nop

;-------------------------------------------------------------------------------
loc_8c08d160:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c08d1b0
	mov.b @(0x5,r4),r0
	mov 0xFF,r3
	mov 0x5C,r1
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	add r4,r1
	mov.w @(0x40,PC),r0
	mov.l r3,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
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

loc_8c08d1b0:
	rts
	nop

;-------------------------------------------------------------------------------
loc_8C08D1B4:
	#data 0x00D4
loc_8c08d1b6:
	#data 0x01D2
loc_8c08d1b8:
	#data 0x02A4
loc_8c08d1ba:
	#data 0x01A0
loc_8c08d1bc:
	#data 0x00D0
	#align4

loc_8c08d1c0:
	#data 0xC0D55555
loc_8c08d1c4:
	#data 0x40D55555
loc_8c08d1c8:
	#data bank15.loc_8C154AF4

;==============================================
loc_8C08D1CC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C08D330,pc),r3 ; r3 set to 0x8C03340c
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8C08D1F6
	mov.w @(loc_8C08D322,pc),r3 ; r3 set to 0x2A4
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x04,r14)
	mov 0x00,r0 ; r0 set to 0x00
	mov.l @r15,r4
	add r3,r4
	mov.b r0,@(0x07,r4)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C08D1F6:
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
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C08D236:
	mov.b @(0x04,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x04,r4)

;-------------------------------------------------------------------------------
loc_8C08D23E:
	mov r4,r3
	mov.l @(loc_8C08D334,pc),r1 ; r1 set to 0x8C154AFc
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C08D250:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C08D324,pc),r3 ; r3 set to 0x1C04
	mov.w @(loc_8C08D326,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C08D326,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(0x18,r14),r4
	mov.b r0,@(0x04,r14)
	mov 0x26,r0 ; r0 set to 0x26
	mov.w r3,@(r0,r14)
	mov.w @(loc_8C08D328,pc),r0 ; r0 set to 0xC0
	mov.l @(loc_8C08D338,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r4,r2 ; r2 ??? bc r4 is ???	
	mov.w @(loc_8C08D32A,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C08D32C,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C08D33C,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.l @(loc_8C08D340,pc),r1 ; r1 set to 0x8C154B0c
	mov.b @(r0,r4),r2
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov 0x09,r6 ; r6 set to 0x09
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C08D32A,pc),r0 ; r0 set to 0x12c
	mov.b r5,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
	mov 0x17,r5 ; r5 set to 0x17
	mov.l @(loc_8C08D344,pc),r3 ; r3 set to 0x8C034E8c
	extu.b r0,r0
	add 0xFF,r0
	shll r0
	mov.w @(r0,r1),r0
	mov.w r0,@(0x1E,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8C08D2DC:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x18,r14),r5 ; r5 ??? bc r14 is ???	
	mov 0x02,r3 ; r3 set to 0x02, r3 set to 0x02
	mov.b @(0x04,r5),r0
	extu.b r0,r0
	cmp/ge r3,r0
	bf loc_8C08D30e
	mov.b @(0x04,r14),r0
	mov 0x01,r1 ; r1 set to 0x01, r1 set to 0x01
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00
	mov.b r0,@(0x05,r14)
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	mov.b @(r0,r14),r2
	mov.w @(loc_8C08D32E,pc),r0 ; r0 set to 0xCC, r0 set to 0xCc
	extu.b r2,r2
	mov.l @(r0,r5),r3 ; r3 ??? bc r5 is ???, r3 ??? bc r5 is ???	
	shad r2, r1 ; r1 ??? bc r2 is ???, r1 ??? bc r2 is ???	
	not r1,r1
	and r1,r3
	mov.l r3,@(r0,r5)
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C08D30E:
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C08D348,pc),r1 ; r1 set to 0x8C154B1c
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;Unused return
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C08D322:
	#data 0x02A4
loc_8C08D324:
	#data 0x1C04
loc_8C08D326:
	#data 0x00Dc
loc_8C08D328:
	#data 0x00C0
loc_8C08D32A:
	#data 0x012c
loc_8C08D32C:
	#data 0x01A3
loc_8C08D32E:
	#data 0x00Cc
	#align4

loc_8C08D330:
	#data bank03.loc_8c03340c
loc_8C08D334:
	#data bank15.loc_8c154AFc
loc_8C08D338:
	#data bank12.loc_8c129560
loc_8C08D33C:
	#data bank12.loc_8c1294C8
loc_8C08D340:
	#data bank15.loc_8c154B0c
loc_8C08D344:
	#data bank03.loc_8c034e8c
loc_8C08D348:
	#data bank15.loc_8c154B1c

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C08D34C:
	mov.w @(loc_8C08D482,pc),r0 ; r0 set to 0xD0
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(r0,r5),r3
	tst r3,r3
	bt/s loc_8C08D3Aa
	mov r4,r14
	mov.b @(0x05,r14),r0
	mov 0x44,r4 ; r4 set to 0x44
	mov 0x48,r3 ; r3 set to 0x48
	add 0x01,r0 ; r0 set to 0xD1
	mov.b r0,@(0x05,r14)
	mov 0x17,r5 ; r5 set to 0x17
	mov.w @(loc_8C08D484,pc),r0 ; r0 set to 0x19c
	mov 0x0A,r6 ; r6 set to 0x0a
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x19d
	mov.b r4,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1Ac
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @(loc_8C08D48C,pc),r3 ; r3 set to 0x8C2896B0
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19e
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(loc_8C08D490,pc),r2 ; r2 set to 0x8C034E8c
	jsr @r2
	mov r14,r4 ; r4 ??? bc r14 is ???	
	mov.l @(loc_8C08D494,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8C08D498,pc),r2 ; r2 set to 0x8C045748
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C08D3AA:
	bsr loc_8C08D5D4
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8C08D494,pc),r2 ; r2 set to 0x8C034DEe
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C08D3B8:
	mov.w @(0xCA,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c08d3ce
	mov.w @(0xBE,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c08d3f2

loc_8C08D3CE:
	mov.b @(0x4,r14),r0
	mov 0x01,r2
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov.w @(0xA8,PC),r0
	extu.b r3,r3
	shad r3,r2
	mov.l @(r0,r5),r3
	not r2,r2
	and r2,r3
	mov.l r3,@(r0,r5)
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C08D3F2:
	mov.w @(0x8C,PC),r0
	mov.l @(r0,r5),r2
	cmp/pz r2
	bt loc_8c08d404
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	bsr loc_8c08d5d4
	mov r14,r4

loc_8C08D404:
	mov.l @(0x8C,PC),r2
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x88,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C08D41A:
	mov.w @(0x68,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c08d430
	mov.w @(0x5C,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c08d454

loc_8C08D430:
	mov.b @(0x4,r14),r0
	mov 0x01,r2
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov.w @(0x46,PC),r0
	extu.b r3,r3
	shad r3,r2
	mov.l @(r0,r5),r3
	not r2,r2
	and r2,r3
	mov.l r3,@(r0,r5)
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C08D454:
	bsr loc_8c08d5d4
	mov r14,r4
	mov.l @(0x38,PC),r2
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x34,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C08D46E:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x05,r14),r0
	mov.l @(loc_8C08D49C,pc),r1 ; r1 set to 0x8C154B28
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C08D482:
	#data 0x00D0
loc_8C08D484:
	#data 0x019c
loc_8C08D486:
	#data 0x019e
loc_8C08D488:
	#data 0x019f
loc_8C08D48a:
	#data 0x00CC
	#align4

loc_8C08D48C:
	#data 0x8C2896B0
loc_8C08D490:
	#data bank03.loc_8c034e8c
loc_8C08D494:
	#data bank03.loc_8c034dee
loc_8C08D498:
	#data bank04.loc_8c045748
loc_8C08D49C:
	#data bank15.loc_8c154B28

loc_8C08D4A0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	fldi0 fr4
	mov.l r5,@r15
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x10,r0
	mov.w r0,@(0x1C,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mova @(0xF0,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	add 0x68,r0
	mov.l @(r0,r14),r3
	tst r3,r3
	bt loc_8c08d4de
	mov.l @(0xE4,PC),r3
	mov 0x17,r5
	mov 0x04,r7
	mov 0x09,r6
	jsr @r3
	mov r14,r4

loc_8C08D4DE:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C08D4E8:
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
	bf loc_8c08d532
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)


loc_8C08D532:
	mov.w @(0x78,PC),r1
	mov.w @(0x1C,r4),r0
	add r4,r1
	and 0x01,r0
	rts 
	mov.b r0,@r1

;-------------------------------------------------------------------------------
loc_8C08D53E:
	mov.l @(loc_8C08D5BC,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8C08D544:
	mov 0x24,r0
	mov.l @(0x78,PC),r6
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	mov.b @(0x1,r5),r0
	extu.b r0,r0
	cmp/eq 0x1C,r0
	bf loc_8c08d57c
	mov.w @(0x58,PC),r0
	mov.w @(r0,r5),r2
	tst r2,r2
	bf loc_8c08d562
	mova @(0x64,PC),r0
	bra loc_8c08d566
	fmov @r0,fr3


loc_8C08D562:
	mova @(0x64,PC),r0
	fmov @r0,fr3

loc_8C08D566:
	mov 0x34,r0
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x40,PC),r0
	mov.b @(r0,r5),r3
	extu.b r3,r3
	shll2 r3
	add r3,r6
	bra loc_8c08d5a4
	fmov @r6,fr3

loc_8C08D57C:
	mov.w @(0x30,PC),r0
	mov.w @(r0,r5),r2
	tst r2,r2
	bf loc_8c08d58a
	mova @(0x44,PC),r0
	bra loc_8c08d58e
	fmov @r0,fr3

loc_8C08D58A:
	mova @(0x44,PC),r0
	fmov @r0,fr3

loc_8C08D58E:
	mov 0x34,r0
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x18,PC),r0
	mov.b @(r0,r5),r3
	mov 0x10,r0
	extu.b r3,r3
	shll2 r3
	add r3,r6
	fmov @(r0,r6),fr3

loc_8C08D5A4:
	mov 0x38,r0
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	rts 
	fmov fr2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c08d5ae:
	#data 0x012c
loc_8c08d5b0:
	#data 0x0130
loc_8c08d5b2:
	#data 0x01f9
	#align4

loc_8c08d5b4:
	#data 0xbe892492
loc_8C08D5B8:
	#data bank03.loc_8c034F54
loc_8C08D5BC:
	#data bank04.loc_8c0450C0
loc_8C08D5C0:
	#data bank15.loc_8c154B30
loc_8C08D5C4:
	#data 0xC13AAAAa
loc_8C08D5C8:
	#data 0x413AAAAa
loc_8C08D5Cc:
	#data 0xC0D55555
loc_8C08D5d0:
	#data 0x40D55555

;==============================================
loc_8C08D5D4:
	mov.l r14,@-r15
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	fmov.s fr13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x24,r0 ; r0 set to 0x24
	mov r4,r14
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r5),fr3
	mov.l @(loc_8C08D678,pc),r3 ; r3 set to 0x8C11E2E0
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C08D66C,pc),r0  ; r0 set to 0x8C08D66c
	fmov.s @r0,fr15
	mov.w @(0x1E,r14),r0
	neg r0,r0 ; r0 ??	
	add 0x48,r0
	and 0x3F,r0
	shll8 r0
	shll2 r0
	mov.w r0,@(0x04,r15)
	mova @(loc_8C08D670,pc),r0  ; r0 set to 0x8C08D670
	fmov.s @r0,fr13
	mova @(loc_8C08D674,pc),r0  ; r0 set to 0x8C08D674
	fmov.s @r0,fr14
	mov.w @(0x04,r15),r0
	mov.l r0,@r15
	jsr @r3
	mov r0,r4 ; r4 set to 0x8C08D674
	fmov fr15,fr3
	fmul fr0,fr3
	mova @(loc_8C08D67C,pc),r0  ; r0 set to 0x8C08D67c
	mov.l @(loc_8C08D684,pc),r3 ; r3 set to 0x8C11E860
	fmov.s @r0,fr0 ; r0 ??	
	mova @(loc_8C08D680,pc),r0  ; r0 set to 0x8C08D680
	fmul fr14,fr3 ; r3 ??? bc r14 is ???	
	fdiv fr0,fr3
	fmov.s @r0,fr0 ; r0 ??	
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2
	fdiv fr13,fr3
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov.l @r15,r4 ; r4 ??? bc r15 is ???	
	fmul fr0,fr15
	mova @(loc_8C08D688,pc),r0  ; r0 set to 0x8C08D688
	fmov.s @r0,fr0 ; r0 ??	
	mova @(loc_8C08D68C,pc),r0  ; r0 set to 0x8C08D68c
	fmul fr14,fr15
	fdiv fr0,fr15
	fmov.s @r0,fr0 ; r0 ??	
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr3
	fdiv fr13,fr15
	fmac fr0,fr15,fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(0x1E,r14),r0
	add 0x01,r0 ; r0 set to 0x39
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	and 0x3F,r0
	mov.w r0,@(0x1E,r14)
	add 0x08,r15
	lds.l @r15+,pr
	fmov.s @r15+,fr13
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
	#align4
loc_8C08D66C:
	#data 0x4973C000
loc_8C08D670:
	#data 0x43800000
loc_8C08D674:
	#data 0x447A0000
loc_8C08D678:
	#data bank11.loc_8c11E2E0
loc_8C08D67C:
	#data 0x47C35000
loc_8C08D680:
	#data 0x3FD55555
loc_8C08D684:
	#data bank11.loc_8c11E860
loc_8C08D688:
	#data 0x47F42400
loc_8C08D68C:
	#data 0x40092492

;==============================================
;Unused
loc_8c08d690:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x15C,PC),r3
	mov 0x01,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c08d6b4
	mov r0,r4
	mov.l @(0x150,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov 0x00,r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.b r3,@(r0,r4)

loc_8c08d6b4:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;-------------------------------------------------------------------------------
loc_8C08D6BC:
	mov r4,r3
	mov.l @(loc_8C08D7FC,pc),r1 ; r1 set to 0x8C154B50
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C08D6CE:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x10A,PC),r3
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	mov.l @(0x18,r14),r13
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov 0x26,r0
	mov.w r3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c08d72c
	mov 0x01,r12
	mov.w @(0xEE,PC),r0
	mov 0x00,r4
	mov 0x02,r3
	mov.l r4,@(r0,r14)
	add 0xFC,r0
	mov.l r4,@(r0,r14)
	add 0x08,r0
	mov r3,r6
	mov.l r3,@(r0,r14)
	mov.l @(0xF0,PC),r3
	mov 0x01,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt.s loc_8c08d72c
	mov r0,r4
	mov.l @(0xE4,PC),r3
	mov 0x20,r0
	mov.w @(0xCC,PC),r5
	mov.l r3,@(0x10,r4)
	mov.l @(0x18,r14),r2
	mov.l r2,@(0x18,r4)
	mov.b r12,@(r0,r4)
	mov r5,r0
	nop 
	add 0xD1,r0
	mov.l r5,@(r0,r4)
	add 0xFC,r0
	mov.l r5,@(r0,r4)
	mov.l r14,@(0x14,r4)

loc_8C08D72C:
	mov.w @(0xB6,PC),r1
	mov.w @(0xB6,PC),r0
	mov.l @(0xCC,PC),r3
	add r14,r1
	mov.w @(0xAE,PC),r2
	jsr @r3
	add r13,r2
	mov.w @(0xAC,PC),r0
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
	mov.l @(0x94,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0x0A,r3
	mov 0x40,r4
	mov.b r2,@(r0,r14)
	mov.w @(0x6A,PC),r0
	mov.b r12,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov.w @(0x66,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov 0x20,r4
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mova @(0x70,PC),r0
	fmov @r0,fr3
	mov 0x50,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x4E,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c08d7b0
	mov 0x42,r4
	mov 0x22,r0
	mov 0x0C,r1
	bra loc_8c08d7b6
	mov.b r1,@(r0,r14)

loc_8C08D7B0:
	mov 0x22,r0
	mov 0x04,r2
	mov.b r2,@(r0,r14)

loc_8C08D7B6:
	mov.w @(0x38,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov r14,r4
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C08D7C8:
	mov 0x20,r0 ; r0 set to 0x20
	mov.l r14,@-r15
	mov.b @(r0,r4),r3
	tst r3,r3
	bf/s loc_8C08D7Da
	mov.l @(0x18,r4),r14
	mov r14,r5
	bra loc_8C08D80c
	mov.l @r15+,r14

loc_8C08D7DA:
	mov r14,r5
	bra loc_8C08D896
	mov.l @r15+,r14

;##############################################
loc_8c08d7e0:
	#data 0x1C05
loc_8c08d7e2:
	#data 0x00D0
loc_8c08d7e4:
	#data 0x00Ff
loc_8c08d7e6:
	#data 0x00DC
loc_8c08d7e8:
	#data 0x00C0
loc_8c08d7ea:
	#data 0x012C
loc_8c08d7ec:
	#data 0x01A3
loc_8c08d7ee:
	#data 0x013C
loc_8c08d7f0:
	#data 0x0130
loc_8c08d7f2:
	#data 0x019C
	#align4

loc_8C08D7F4:
	#data bank04.loc_8c044F12
loc_8C08D7F8:
	#data loc_8C08D6Bc
loc_8C08D7FC:
	#data bank15.loc_8c154B50
loc_8C08D800:
	#data bank12.loc_8c129560
loc_8C08D804:
	#data bank12.loc_8c1294C8
loc_8c08d808:
	#data 0x3F8147Ae

;==============================================
loc_8C08D80C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8C08D8FA,pc),r0 ; r0 set to 0x158
	mov r4,r14
	mov r5,r4
	mov.w @(loc_8C08D8FC,pc),r3 ; r3 set to 0x1603
	mov.l r5,@r15
	mov.w @(r0,r4),r4
	extu.w r4,r4
	cmp/eq r3,r4
	bt/s loc_8C08D83a
	mov 0x00,r13 ; r13 set to 0x00
	mov.w @(loc_8C08D8FE,pc),r1 ; r1 set to 0x161b
	cmp/eq r1,r4
	bt loc_8C08D83a
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0x159
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C08D900,pc),r0 ; r0 set to 0x12c
	bra loc_8C08D88c
	mov.b r13,@(r0,r14)

loc_8c08d83a:
	mov.l @(bank08.loc_8c08d910,pc),r3
	mov 0x01,r5
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt/s loc_8c08d87a
	mov r0,r4
	mov.l @(bank08.loc_8c08d914,pc),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4) 
	mov 0x01,r3
	mov.l @(0x18,r14),r2
	mov.l r2,@(0x18,r4) 
	mov.b r3,@(r0,r4) 
	mov.w @(loc_8C08D902,pc),r0
	mov.l r13,@(r0,r4) 
	mov.w @(loc_8C08D904,pc),r0
	mov.l r14,@(0x14,r4) 
	mov.l r13,@(r0,r4) 
	add 0x04,r0
	mov.l @(r0,r14),r3
	add 0xFF,r3
	tst r3,r3
	bf/s loc_8c08d87a
	mov.l r3,@(r0,r14) 
	mov.w @(loc_8C08D906,pc),r0
	mov 0x05,r1
	mov.w @(loc_8C08D908,pc),r3
	mov.l r1,@(r0,r14) 
	add 0xFC,r0
	mov.l r3,@(r0,r4) 

loc_8c08d87a:
	mov.l @r15,r5
	bsr bank08.loc_8c08d9ce
	mov r14,r4
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr 
	mov.l @r15+,r13
	bra bank08.loc_8c08d986
	mov.l @r15+,r14

loc_8C08D88C:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8c08d896:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l r5,@r15
	mov.l @(0x14,r14),r4
	mov 0x02,r5
	mov.l @(0x08,r14),r6
	mov.b @(0x04,r4),r0 
	extu.b r0,r0
	cmp/ge r5,r0
	bt/s loc_8c08d8d6
	mov 0x00,r13
	mov.b @(0x04,r6),r0 
	extu.b r0,r0
	cmp/ge r5,r0
	bt loc_8c08d8d6
	mov.l @r15,r5
	bsr bank08.loc_8c08d9f6
	mov r14,r4
	bsr bank08.loc_8c08d9a4
	mov r14,r4
	mov 0x20,r0
	mov.l @(bank08.loc_8c08d918,pc),r2
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14) 
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c08d8e0

loc_8c08d8d6:
	mov 0x03,r0
	mov.b r0,@(0x04,r14) 
	mov.w @(bank08.loc_8c08d900,pc),r0
	bra loc_8c08d968
	mov.b r13,@(r0,r14) 

loc_8c08d8e0:
	mov.w @(loc_8C08D90A,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c08d8f2
	mov.w @(loc_8C08D90C,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c08d91c
	mov.w @(loc_8C08D90C,pc),r0

loc_8c08d8f2:
	mov.b r13,@(r0,r14) 
	mov.w @(loc_8C08D904,pc),r0
	bra loc_8c08d968
	mov.l r13,@(r0,r14) 

;##############################################
loc_8c08d8fa:
	#data 0x0158
loc_8c08d8fc:
	#data 0x1603
loc_8c08d8fe:
	#data 0x161B
loc_8c08d900:
	#data 0x012C
loc_8c08d902:
	#data 0x00CC
loc_8C08D904:
	#data 0x00D0
loc_8c08d906:
	#data 0x00D4
loc_8c08d908:
	#data 0x00FF
loc_8C08D90A:
	#data 0x019F
loc_8C08D90C:
	#data 0x019E
	#align4

loc_8c08d910:
	#data bank04.loc_8C044F12
loc_8c08d914:
	#data loc_8C08D6BC
loc_8c08d918:
	#data bank03.loc_8c03340c

loc_8c08d91c:
	mov.w @(loc_8C08DA1C,pc),r4
	mov 0x42,r3
	mov.w @(loc_8C08DA1A,pc),r0
	add r14,r4
	mov.b r3,@(r0,r14) 
	mov.l @r4,r3
	tst r3,r3
	bf loc_8c08d934
	mov.l @(0x04,r4),r3
	tst r3,r3
	bf loc_8c08d934
	mov.b r13,@(r0,r14) 

loc_8c08d934:
	mov.w @(loc_8C08DA1E,pc),r0
	mov r14,r4
	mov.l @r15,r3
	mov.b @(r0,r3),r2
	mov.l @(loc_8C08DA24,pc),r3
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
	add 0x04,r15
	lds.l @r15+,pr 
	mov.l @(bank08.loc_8c08da28,pc),r2
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c08d968:
	add 0x04,r15
	lds.l @r15+,pr 
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

loc_8C08D972:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C08DA20,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;-------------------------------------------------------------------------------
loc_8C08D980:
	mov.l @(loc_8C08DA2C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;==============================================
loc_8C08D986:
	mov.l @(0xA8,PC),r3
	mov.l @r3,r0
	mov.l @(0x1C,r0),r0
	tst 0x01,r0
	bf loc_8c08d99a
	mov.l @(0xA0,PC),r1
	mov 0x1D,r6
	mov 0x00,r7
	jmp @r1
	mov 0x16,r5

loc_8C08D99A:
	mov.l @(0x98,PC),r2
	mov 0x1D,r6
	mov 0x01,r7
	jmp @r2
	mov 0x16,r5

loc_8C08D9A4:
	mov.l @(0x88,PC),r3
	mov.l r14,@-r15
	mov.l @r3,r0
	mov.l @(0x1C,r0),r0
	and 0x01,r0
	mov r0,r14
	mov.w @(0x68,PC),r0
	mov.l @(r0,r4),r2
	tst r2,r2
	bt loc_8c08d9be
	mov.l @(0x7C,PC),r0
	bra loc_8c08d9c0
	nop 

loc_8C08D9BE:
	mov.l @(0x7C,PC),r0

loc_8C08D9C0:
	mov.b @(r0,r14),r7
	mov 0x16,r5
	mov.l @(0x6C,PC),r2
	mov 0x1D,r6
	extu.b r7,r7
	jmp @r2
	mov.l @r15+,r14

loc_8C08D9CE:
	mov.w @(0x50,PC),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bf loc_8c08d9dc
	mova @(0x68,PC),r0
	bra loc_8c08d9e0
	fmov @r0,fr3

loc_8C08D9DC:
	mova @(0x64,PC),r0
	fmov @r0,fr3

loc_8C08D9E0:
	mov 0x34,r0
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mova @(0x5C,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	rts 
	fmov fr2,@(r0,r4)

;-------------------------------------------------------------------------------
loc_8C08D9F6:
	mov 0x20,r0
	mov.b @(r0,r6),r3
	tst r3,r3
	bf loc_8c08da54
	mov.w @(0x20,PC),r0
	mov.w @(r0,r5),r1
	tst r1,r1
	bf loc_8c08da0c
	mova @(0x44,PC),r0
	bra loc_8c08da10
	fmov @r0,fr3

loc_8C08DA0C:
	mova @(0x40,PC),r0
	fmov @r0,fr3

loc_8C08DA10:
	mov 0x34,r0
	fmov @(r0,r6),fr2
	fadd fr3,fr2
	bra loc_8c08da6e
	fmov fr2,@(r0,r4)

;##############################################
loc_8c08da1a:
	#data 0x019C
loc_8c08da1c:
	#data 0x00Cc
loc_8c08da1e:
	#data 0x01A1
loc_8C08DA20:
	#data 0x012c
loc_8C08DA22:
	#data 0x0130
	#align4

loc_8c08da24:
	#data 0x8C2896B0
loc_8C08DA28:
	#data bank04.loc_8c045748
loc_8C08DA2C:
	#data bank04.loc_8c0450C0
loc_8C08DA30:
	#data 0x8C26823c
loc_8C08DA34:
	#data bank03.loc_8c034F54
loc_8C08DA38:
	#data bank15.loc_8c154B62
loc_8C08DA3C:
	#data bank15.loc_8c154B60
loc_8C08DA40:
	#data 0xC3375555
loc_8C08DA44:
	#data 0x43375555
loc_8C08DA48:
	#data 0x43766DB6
loc_8C08DA4c:
	#data 0xC2D55555
loc_8C08DA50:
	#data 0x42D55555

;==============================================
loc_8C08DA54:
	mov.w @(0x1E,PC),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bf loc_8c08da62
	mova @(0x18,PC),r0
	bra loc_8c08da66
	fmov @r0,fr3

loc_8C08DA62:
	mova @(0x18,PC),r0
	fmov @r0,fr3

loc_8C08DA66:
	mov 0x34,r0
	fmov @(r0,r6),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)

loc_8C08DA6E:
	mov 0x38,r0
	fmov @(r0,r6),fr3
	rts 
	fmov fr3,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c08da76:
	#data 0x0130
	#align4
loc_8c08da78:
	#data 0xc2555555
loc_8c08da7c:
	#data 0x42555555

;==============================================
;unused
loc_8c08da80:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x124,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x01,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c08daa6
	mov r0,r4
	mov.l @(0x114,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.b r3,@(r0,r4)

loc_8c08daa6:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;-------------------------------------------------------------------------------
loc_8c08daae:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r0
	nop 
	mov.l @(bank08.loc_8c08dbac,pc),r3
	mov 0x01,r5
	mov.b r0,@(0x04,r15) 
	mov 0x02,r6
	jsr @r3
	mov.l @r15,r4
	tst r0,r0
	bt/s loc_8c08dada
	mov r0,r4
	mov 0x20,r1
	mov.l @(bank08.loc_8c08dbb0,pc),r3
	add r4,r1
	mov.l r3,@(0x10,r4) 
	mov.l @r15,r2
	mov.l r2,@(0x18,r4) 
	mov.b @(0x04,r15),r0 
	mov.b r0,@r1

loc_8c08dada:
	add 0x08,r15
	lds.l @r15+,pr 
	rts 
	mov r4,r0

loc_8C08DAE2:
	mov r4,r3
	mov.l @(loc_8C08DBB4,pc),r1 ; r1 set to 0x8C154DA4
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C08DAF4:
	mov.w @(loc_8C08DBA2,pc),r3 ; r3 set to 0x1C06
	mov.w @(loc_8C08DBA4,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.w @(loc_8C08DBA4,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(0x18,r4),r5
	mov.b r0,@(0x04,r4)
	mov 0x26,r0 ; r0 set to 0x26
	mov.w r3,@(r0,r4)
	mov.w @(loc_8C08DBA6,pc),r0 ; r0 set to 0xC0
	mov.l @(loc_8C08DBB8,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???	
	mov.w @(loc_8C08DBA8,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C08DBAA,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C08DBBC,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x08,r3 ; r3 set to 0x08
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov.b r3,@(r0,r4)
	mov.w @(loc_8C08DBA8,pc),r0 ; r0 set to 0x12c
	mov.b r6,@(r0,r4)
	lds.l @r15+,pr

loc_8C08DB5A:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x18,r14),r5
	mov 0x02,r3 ; r3 set to 0x02, r3 set to 0x02
	mov.b @(0x04,r5),r0
	extu.b r0,r0 ; r0 set to 0x2c
	cmp/ge r3,r0
	bf loc_8C08DB7a
	mov.b @(0x04,r14),r0
	mov 0x00,r2 ; r2 set to 0x00, r2 set to 0x00
	add 0x01,r0 ; r0 set to 0x2d
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C08DBA8,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	mov.b r2,@(r0,r14)
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C08DB7A:
	mov 0x20,r0 ; r0 set to 0x20
	mov r14,r4
	mov.b @(r0,r14),r3
	mov.l @(loc_8C08DBC0,pc),r0 ; r0 set to 0x8C154DB4
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;Unused return
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C08DB90:
	mov r4,r3
	mov.l @(loc_8C08DBC4,pc),r1 ; r1 set to 0x8C154DF4
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C08DBA2:
	#data 0x1C06
loc_8C08DBA4:
	#data 0x00Dc
loc_8C08DBA6:
	#data 0x00C0
loc_8C08DBA8:
	#data 0x012c
loc_8C08DBAA:
	#data 0x01A3
	#align4

loc_8C08DBAC:
	#data bank04.loc_8c044F12
loc_8C08DBB0:
	#data loc_8C08DAE2
loc_8C08DBB4:
	#data bank15.loc_8c154DA4
loc_8C08DBB8:
	#data bank12.loc_8c129560
loc_8C08DBBC:
	#data bank12.loc_8c1294C8
loc_8C08DBC0:
	#data bank15.loc_8c154DB4
loc_8C08DBC4:
	#data bank15.loc_8c154DF4

;==============================================
loc_8C08DBC8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov 0x10,r4 ; r4 set to 0x10
	mov.l @(loc_8C08DD30,pc),r3 ; r3 set to 0x8C154B64
	mov r14,r1
	mov.l r5,@r15
	add 0x34,r1
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C08DD22,pc),r0 ; r0 set to 0x13c
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13d
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13e
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13f
	mov.b r4,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r13
	mov.l @r15,r2
	extu.b r13,r13
	shll2 r13
	shll2 r13
	add r3,r13
	mov.l @(loc_8C08DD34,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mova @(loc_8C08DD38,pc),r0  ; r0 set to 0x8C08DD38
	fmov.s @r0,fr5
	mova @(loc_8C08DD3C,pc),r0  ; r0 set to 0x8C08DD3c
	fmov.s @r0,fr4 ; r4 ??	
	mov.w @(loc_8C08DD24,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???	
	tst r3,r3
	bf loc_8C08DC3e
	mov r14,r2
	mov 0x34,r0 ; r0 set to 0x34
	add r0,r2
	fmov fr5,fr0 ; r0 ??? bc r5 is ???	
	mov.l r2,@-r15
	mov.w @(0x08,r13),r0
	mov r0,r3
	lds r3,fpul
	mov.l @r15+,r3
	float fpul,fr3
	fmov.s @r3,fr2
	fmac fr0,fr3,fr2
	fmov.s fr2,@r3
	mov.l @r13,r2
	lds r2,fpul
	float fpul,fr3
	fmul fr5,fr3
	bra loc_8C08DC60
	fdiv fr4,fr3

loc_8c08dc3e:
	mov.w @(0x08,r13),r0 
	mov 0x34,r2
	add r14,r2
	mov r0,r3
	lds r3,fpul 
	fmov.s @r2,fr2
	float fpul,fr3
	fmul fr5,fr3
	fneg fr3
	fadd fr3,fr2
	fmov.s fr2,@r2
	mov.l @r13,r3
	lds r3,fpul 
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fneg fr3

loc_8c08dc60:
	mov 0x5C,r0
	mov r14,r2
	fmov.s fr3,@(r0,r14) 
	mova @(loc_8C08DD40,pc),r0 
	fmov.s @r0,fr5
	mov 0x38,r0
	add r0,r2
	mov.l r2,@-r15
	mov 0x44,r4
	mov.w @(0x0A,r13),r0 
	fmov fr5,fr0
	mov r0,r3
	lds r3,fpul 
	mov.l @r15+,r3
	mov 0x60,r0
	float fpul,fr3
	fmov.s @r3,fr2
	fmac fr0,fr3,fr2
	fmov.s fr2,@r3
	mov.l @(0x04,r13),r2
	lds r2,fpul 
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fldi0 fr4
	fmov.s fr3,@(r0,r14) 
	mov 0x68,r0
	fmov.s fr4,@(r0,r14) 
	mov 0x6C,r0
	fmov.s fr4,@(r0,r14) 
	mov.w @(loc_8C08DD26,pc),r0
	mov.b r4,@(r0,r14) 
	add 0x01,r0
	mov.w @(loc_8C08DD28,pc),r1
	mov.b r4,@(r0,r14) 
	mov 0x00,r4
	mov.b @(0x0D,r13),r0 
	add r14,r1
	mov.l @(loc_8C08DD44,pc),r3
	mov 0x17,r5
	mov.b r0,@r1
	mov.w @(loc_8C08DD2A,pc),r0
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
	mov.b @(0x0C,r13),r0 
	mov.l @(bank08.loc_8c08dd48,pc),r2
	mov r0,r6
	jsr @r2
	mov r14,r4
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr 
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c08dce4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(bank08.loc_8c08dd4c,pc),r3
	jsr @r3
	mov r4,r14
	mov.w @(loc_8C08DD2C,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf/s loc_8c08dd1a
	mov r14,r4
	mov.b @(0x05,r14),r0 
	mov 0x5C,r1
	add r14,r1
	add 0x01,r0
	mov.b r0,@(0x05,r14) 
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

loc_8c08dd1a:
	lds.l @r15+,pr 
	mov.l @(bank08.loc_8c08dd50,pc),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c08dd22:
	#data 0x013C
loc_8c08dd24:
	#data 0x0130
loc_8C08DD26:
	#data 0x019C
loc_8C08DD28:
	#data 0x01A1
loc_8C08DD2A:
	#data 0x01AC
loc_8C08DD2C:
	#data 0x0141
	#align4

loc_8c08dd30:
	#data bank15.loc_8C154B64
loc_8c08dd34:
	#data bank12.loc_8C1294C8
loc_8c08dd38:
	#data 0x3FD55555
loc_8c08dd3c:
	#data 0x47800000
loc_8C08DD40:
	#data 0x40092492
loc_8C08DD44:
	#data 0x8C2896B0
loc_8c08dd48:
	#data bank03.loc_8c034e8c
loc_8c08dd4c:
	#data bank03.loc_8c034dee
loc_8c08dd50:
	#data bank04.loc_8c045748

;==============================================
loc_8c08dd54:
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
	tst r0,r0
	bf.s loc_8c08dd8e
	mov r14,r4
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x9A,PC),r0
	mov.b r3,@(r0,r14)

loc_8c08dd8e:
	mov.l @(0xA4,PC),r3
	jsr @r3
	nop 
	lds.l @r15+,pr
	mov.l @(0xA0,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C08DD9E:
	mov r4,r3
	mov.l @(loc_8C08DE3C,pc),r1 ; r1 set to 0x8C154E00
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C08DDB0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov 0x18,r4 ; r4 set to 0x18
	mov.l @(loc_8C08DE40,pc),r3 ; r3 set to 0x8C154B64
	mov r14,r1
	mov.l r5,@r15
	add 0x34,r1
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C08DE2A,pc),r0 ; r0 set to 0x13c
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13d
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13e
	mov 0x10,r4 ; r4 set to 0x10
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13f
	mov.b r4,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r13
	mov.l @r15,r2
	extu.b r13,r13
	shll2 r13
	shll2 r13
	add r3,r13
	mov.l @(loc_8C08DE44,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mova @(loc_8C08DE48,pc),r0  ; r0 set to 0x8C08DE48
	fmov.s @r0,fr5
	mova @(loc_8C08DE4C,pc),r0  ; r0 set to 0x8C08DE4c
	fmov.s @r0,fr4 ; r4 ??	
	mov.w @(loc_8C08DE2C,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???	
	tst r3,r3
	bf loc_8C08DE50
	mov r14,r2
	mov 0x34,r0 ; r0 set to 0x34
	add r0,r2
	fmov fr5,fr0 ; r0 ??? bc r5 is ???	
	mov.l r2,@-r15
	mov.w @(0x08,r13),r0
	mov r0,r3
	lds r3,fpul
	mov.l @r15+,r3
	float fpul,fr3
	fmov.s @r3,fr2
	fmac fr0,fr3,fr2
	fmov.s fr2,@r3
	mov.l @r13,r2
	lds r2,fpul
	float fpul,fr3
	fmul fr5,fr3
	bra loc_8C08DE72
	fdiv fr4,fr3

;##############################################
loc_8C08DE28:
	#data 0x012c
loc_8C08DE2A:
	#data 0x013c
loc_8C08DE2C:
	#data 0x0130
	#align4

loc_8C08DE30:
	#data bank03.loc_8c0332E0
loc_8C08DE34:
	#data bank03.loc_8c034dee
loc_8C08DE38:
	#data bank04.loc_8c045748
loc_8C08DE3C:
	#data bank15.loc_8c154E00
loc_8C08DE40:
	#data bank15.loc_8c154B64
loc_8C08DE44:
	#data bank12.loc_8c1294C8
loc_8C08DE48:
	#data 0x3FD55555
loc_8C08DE4C:
	#data 0x47800000

;----------------------------------------------
loc_8c08de50:
	mov.w @(0x08,r13),r0 
	mov 0x34,r2
	add r14,r2
	mov r0,r3
	lds r3,fpul 
	fmov.s @r2,fr2
	float fpul,fr3
	fmul fr5,fr3
	fneg fr3
	fadd fr3,fr2
	fmov.s fr2,@r2
	mov.l @r13,r3
	lds r3,fpul 
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fneg fr3

loc_8c08de72:
	mov 0x5C,r0
	mov r14,r2
	fmov.s fr3,@(r0,r14) 
	mova @(loc_8C08DFC8,pc),r0 
	fmov.s @r0,fr5
	mov 0x38,r0
	add r0,r2
	mov.l r2,@-r15
	mov 0x44,r4
	mov.w @(0x0A,r13),r0 
	fmov fr5,fr0
	mov r0,r3
	lds r3,fpul 
	mov.l @r15+,r3
	mov 0x60,r0
	float fpul,fr3
	fmov.s @r3,fr2
	fmac fr0,fr3,fr2
	fmov.s fr2,@r3
	mov.l @(0x04,r13),r2
	lds r2,fpul 
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fmov.s fr3,@(r0,r14) 
	mov 0x68,r0
	fldi0 fr3
	fmov.s fr3,@(r0,r14) 
	mova @(loc_8C08DFCC,pc),r0 
	fmov.s @r0,fr3
	mov 0x6C,r0
	fmov.s fr3,@(r0,r14) 
	mov.w @(loc_8C08DFBE,pc),r0
	mov 0x17,r5
	mov.w @(loc_8C08DFC0,pc),r1
	mov.b r4,@(r0,r14) 
	add 0x01,r0
	mov.b r4,@(r0,r14) 
	add r14,r1
	mov.b @(0x0D,r13),r0 
	mov 0x00,r4
	mov.l @(loc_8C08DFD0,pc),r3
	mov.b r0,@r1
	mov.w @(loc_8C08DFC2,pc),r0
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
	mov.b @(0x0C,r13),r0 
	mov.l @(bank08.loc_8c08dfd4,pc),r2
	mov r0,r6
	jsr @r2
	mov r14,r4
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr 
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c08defa:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(bank08.loc_8c08dfd8,pc),r3
	jsr @r3
	mov r4,r14
	mov.w @(loc_8C08DFC4,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf/s loc_8c08df4c
	mov r14,r4
	mov.b @(0x05,r14),r0 
	mov 0x5C,r1
	add r14,r1
	add 0x01,r0
	mov.b r0,@(0x05,r14) 
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

loc_8c08df4c:
	lds.l @r15+,pr 
	mov.l @(bank08.loc_8c08dfdc,pc),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c08df54:
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
	mov.w @(0x30,PC),r0
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt.s loc_8c08dfae
	mov r14,r4
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x1C,PC),r0
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)

loc_8c08dfae:
	mov.l @(0x28,PC),r3
	jsr @r3
	nop 
	lds.l @r15+,pr
	mov.l @(0x24,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C08DFBE:
	#data 0x019C
loc_8C08DFC0:
	#data 0x01A1
loc_8C08DFC2:
	#data 0x01AC
loc_8C08DFC4:
	#data 0x0141
loc_8C08DFC6:
	#data 0x041C
	#align4

loc_8C08DFC8:
	#data 0x40092492
loc_8C08DFCC:
	#data 0xBF892492
loc_8C08DFD0:
	#data 0x8C2896B0
loc_8c08dfd4:
	#data bank03.loc_8c034e8c
loc_8c08dfd8:
	#data bank03.loc_8c034dee
loc_8c08dfdc:
	#data bank04.loc_8c045748

;==============================================
loc_8c08dfe0:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x5C,r1
	mov.l @(0xBC,PC),r3
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
	tst r0,r0
	bf.s loc_8c08e01a
	mov r14,r4
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x84,PC),r0
	mov.b r3,@(r0,r14)

loc_8c08e01a:
	mov.l @(0x8C,PC),r3
	jsr @r3
	nop 
	lds.l @r15+,pr
	mov.l @(0x88,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C08E02A:
	mov r4,r3
	mov.l @(loc_8C08E0B0,pc),r1 ; r1 set to 0x8C154E10
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C08E03C:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x00,r4 ; r4 set to 0x00
	mov.l r13,@-r15
	mov r5,r13
	mov 0x10,r5 ; r5 set to 0x10
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	mov r13,r2
	mov.l @(loc_8C08E0B4,pc),r3 ; r3 set to 0x8C1294C8
	mov r14,r1
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	add 0x34,r2
	mov.w @(loc_8C08E0A0,pc),r0 ; r0 set to 0x130
	add 0x34,r1
	mov.w r4,@(r0,r14)
	add 0x0C,r0 ; r0 set to 0x13c
	mov.b r5,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13d
	mov.b r5,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13e
	mov.b r5,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13f
	mov.b r5,@(r0,r14)
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mova @(loc_8C08E0B8,pc),r0  ; r0 set to 0x8C08E0B8
	mov.l @(loc_8C08E0BC,pc),r6 ; r6 set to 0x8C154B94
	fmov.s @r0,fr4 ; r4 ??	
	mov.w @(loc_8C08E0A0,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???	
	tst r3,r3
	bf/s loc_8C08E0C0
	mov r6,r5 ; r5 set to 0x8C154B94
	mov 0x20,r3 ; r3 set to 0x20
	fmov fr4,fr0 ; r0 ??? bc r4 is ???	
	add r14,r3 ; r3 ??? bc r14 is ???	
	mov.b @r3,r3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2
	extu.b r3,r3
	add 0xFD,r3
	shll2 r3
	shll r3
	add r3,r5 ; r5 ??? bc r3 is ???	
	fmov.s @r5,fr3
	bra loc_8C08E0Dc
	fmac fr0,fr3,fr2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c08e09e:
	#data 0x012c
loc_8C08E0A0:
	#data 0x0130
	#align4

loc_8C08E0A4:
	#data bank03.loc_8c0332E0
loc_8C08E0A8:
	#data bank03.loc_8c034dee
loc_8C08E0AC:
	#data bank04.loc_8c045748
loc_8C08E0B0:
	#data bank15.loc_8c154E10
loc_8C08E0B4:
	#data bank12.loc_8c1294C8
loc_8C08E0B8:
	#data 0x3FD55555
loc_8C08E0BC:
	#data bank15.loc_8c154B94

;==============================================
loc_8C08E0C0:
	mov 0x20,r2 ; r2 set to 0x20
	add r14,r2 ; r2 ??? bc r14 is ???	
	mov.b @r2,r2
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2
	extu.b r2,r2
	add 0xFD,r2
	shll2 r2
	shll r2
	add r2,r5
	fmov.s @r5,fr3
	fmul fr4,fr3
	fneg fr3
	fadd fr3,fr2

loc_8C08E0DC:
	mov 0x20,r3 ; r3 set to 0x20, r3 set to 0x20
	mov.l @(loc_8C08E1D4,pc),r1 ; r1 set to 0x40092492, r1 set to 0x40092492
	add r14,r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
	fmov.s fr2,@(r0,r14)
	mov.b @r3,r3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	lds r1,fpul
	mov 0x04,r1 ; r1 set to 0x04, r1 set to 0x04
	extu.b r3,r3
	fmov.s @(r0,r14),fr2
	add 0xFD,r3
	shll2 r3
	fsts fpul,fr0
	shll r3
	add r3,r6
	add r6,r1 ; r1 ??? bc r6 is ???, r1 ??? bc r6 is ???	
	fmov.s @r1,fr3
	mov 0x44,r5 ; r5 set to 0x44, r5 set to 0x44
	mov 0x43,r3 ; r3 set to 0x43, r3 set to 0x43
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C08E1CE,pc),r0 ; r0 set to 0x19C, r0 set to 0x19c
	mov.b r5,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x19D, r0 set to 0x19d
	mov.b r5,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x1A1, r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC, r0 set to 0x1Ac
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19e
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4
	mov.l @(loc_8C08E1D8,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	mov.l r4,@(r0,r14)
	mov 0x0B,r6 ; r6 set to 0x0B, r6 set to 0x0b
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4
	shll r0 ; r0 set to 0x188, r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(loc_8C08E1DC,pc),r2 ; r2 set to 0x8C034E8C, r2 set to 0x8C034E8c
	jsr @r2
	mov r14,r4
	mov r13,r5 ; r5 ??? bc r13 is ???, r5 ??? bc r13 is ???	
	bsr loc_8C08E292
	mov r14,r4
	mov 0x22,r1 ; r1 set to 0x22, r1 set to 0x22
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
	mov.b r0,@r1
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
	mov 0x0F,r5 ; r5 set to 0x0F, r5 set to 0x0f
	mov.l @(loc_8C08E1E0,pc),r0 ; r0 set to 0x8C154D74, r0 set to 0x8C154D74
	extu.b r3,r3
	add 0xFD,r3
	shll2 r3
	mov.l @(r0,r3),r2 ; r2 ??? bc r3 is ???, r2 ??? bc r3 is ???	
	mov 0x01,r0 ; r0 set to 0x01, r0 set to 0x01
	mov.l r2,@(0x14,r14)
	mov.w r0,@(0x1C,r14)
	bsr loc_8C08DAAe
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???, r5 ??? bc r13 is ???	
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C08E16A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8C08E2A2
	mov r4,r14
	mov.l @(loc_8C08E1E4,pc),r2 ; r2 set to 0x8C033674, r2 set to 0x8C033674, r2 set to 0x8C033674
	mov.w @(loc_8C08E1D0,pc),r5 ; r5 set to 0x2BC, r5 set to 0x2BC, r5 set to 0x2Bc
	jsr @r2
	mov r14,r4
	mov.l @(loc_8C08E1E8,pc),r3 ; r3 set to 0x8C0332E0, r3 set to 0x8C0332E0, r3 set to 0x8C0332E0
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8C08E196
	mov.b @(0x04,r14),r0
	mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00, r3 set to 0x00
	add 0x01,r0 ; r0 set to 0x02, r0 set to 0x02
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C08E1D2,pc),r0 ; r0 set to 0x12C, r0 set to 0x12C, r0 set to 0x12c
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C08E196:
	mov 0x22,r0 ; r0 set to 0x22
	mov.l @(loc_8C08E1EC,pc),r2 ; r2 set to 0x8C034F54
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
	mov 0x0F,r7 ; r7 set to 0x0f
	mov 0x17,r5 ; r5 set to 0x17
	extu.b r0,r0
	shlr r0
	and r0,r7 ; r7 ??? bc r0 is ???	
	mov 0x0B,r6 ; r6 set to 0x0b
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8C08E1F0,pc),r3 ; r3 set to 0x8C045748
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;unused return
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C08E1BC:
	mov r4,r3
	mov.l @(loc_8C08E1F4,pc),r1 ; r1 set to 0x8C154E18
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C08E1CE:
	#data 0x019c
loc_8C08E1D0:
	#data 0x02Bc
loc_8C08E1D2:
	#data 0x012c
	#align4

loc_8C08E1D4:
	#data 0x40092492
loc_8C08E1D8:
	#data 0x8C2896B0
loc_8C08E1DC:
	#data bank03.loc_8c034e8c
loc_8C08E1E0:
	#data bank15.loc_8c154D74
loc_8C08E1E4:
	#data bank03.loc_8c033674
loc_8C08E1E8:
	#data bank03.loc_8c0332E0
loc_8C08E1EC:
	#data bank03.loc_8c034F54
loc_8C08E1F0:
	#data bank04.loc_8c045748
loc_8C08E1F4:
	#data bank15.loc_8c154E18

;==============================================
loc_8C08E1F8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov 0x00,r3 ; r3 set to 0x00
	mov 0x01,r2 ; r2 set to 0x01
	mov r14,r1
	mov.l r5,@r15
	add 0x34,r1
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C08E2DC,pc),r0 ; r0 set to 0x130
	mov.w r3,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r2,@(r0,r14)
	mov.l @r15,r2 ; r2 ??? bc r15 is ???	
	mov.l @(loc_8C08E2E4,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(loc_8C08E2E8,pc),r2 ; r2 set to 0x8C034C38
	mov 0x1B,r5 ; r5 set to 0x1b
	mov 0x2B,r6 ; r6 set to 0x2b
	jsr @r2
	mov r14,r4
	mov.l @r15,r5 ; r5 ??? bc r15 is ???	
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C08E236:
	mov.l r14,@-r15
	mov r4,r1
	mov.l r13,@-r15
	mov r5,r2 ; r2 ??? bc r5 is ???	
	sts.l pr,@-r15
	mov.l @(loc_8C08E2E4,pc),r3 ; r3 set to 0x8C1294C8, r3 set to 0x8C1294C8
	add 0x34,r2
	mov r4,r14
	mov r5,r13
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
	mov.l @(loc_8C08E2EC,pc),r3 ; r3 set to 0x8C034D8C, r3 set to 0x8C034D8c
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C08E2DE,pc),r0 ; r0 set to 0x140, r0 set to 0x140
	mov.b @(r0,r13),r3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???	
	mov.b @(r0,r14),r2
	cmp/eq r3,r2
	bt loc_8C08E276
	lds.l @r15+,pr
	mov.b @(r0,r13),r7
	mov 0x2B,r6 ; r6 set to 0x2B, r6 set to 0x2b
	mov.l @(loc_8C08E2F0,pc),r3 ; r3 set to 0x8C034CD6, r3 set to 0x8C034CD6
	mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
	mov.l @r15+,r13
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C08E276:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C08E27E:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C08E2E0,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;-------------------------------------------------------------------------------
loc_8C08E28C:
	mov.l @(loc_8C08E2F4,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8c08e292:
	mov.w @(bank08.loc_8c08e2dc,pc),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bt/s loc_8c08e29e
	mov 0x18,r4
	mov 0x08,r4

loc_8c08e29e:
	rts
	mov r4,r0

;-------------------------------------------------------------------------------
loc_8c08e2a2:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c08e2d8
	mov.w @(0x2A,PC),r0
	mov.l @(0x14,r4),r6
	mov.w @(r0,r5),r3
	mov.b @r6+,r7
	shll r7
	tst r3,r3
	bt loc_8c08e2c4
	mov 0x20,r0
	sub r7,r0
	mov 0x1F,r7
	and r0,r7

loc_8c08e2c4:
	mov 0x22,r0
	mov.w @(0x18,PC),r3
	mov.b r7,@(r0,r4)
	mov.b @r6+,r0
	extu.b r0,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/eq r3,r0
	bt loc_8c08e2d8
	mov.l r6,@(0x14,r4)


loc_8c08e2d8:
	rts
	nop

;-------------------------------------------------------------------------------
loc_8c08e2dc:
	#data 0x0130
loc_8c08e2de:
	#data 0x0140
loc_8c08e2e0:
	#data 0x012C
loc_8c08e2e2:
	#data 0x00FF
	#align4

loc_8c08e2e4:
	#data bank12.loc_8C1294C8
loc_8c08e2e8:
	#data bank03.loc_8C034C38
loc_8c08e2ec:
	#data bank03.loc_8C034D8C
loc_8c08e2f0:
	#data bank03.loc_8C034CD6
loc_8c08e2f4:
	#data bank04.loc_8C0450C0

;==============================================
;unused
loc_8c08e2f8:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x164,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x01,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c08e31e
	mov r0,r4
	mov.l @(0x154,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.b r3,@(r0,r4)

loc_8c08e31e:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;----------------------------------------------
loc_8C08E326:
	mov r4,r3
	mov.l @(loc_8C08E46C,pc),r1 ; r1 set to 0x8C154E90
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C08E338:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C08E456,pc),r3 ; r3 set to 0x1C07
	mov.l r13,@-r15
	mov.w @(loc_8C08E458,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C08E458,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(0x18,r14),r4
	mov.b r0,@(0x04,r14)
	mov 0x26,r0 ; r0 set to 0x26
	mov.w r3,@(r0,r14)
	mov.w @(loc_8C08E45A,pc),r0 ; r0 set to 0xC0
	mov.l @(loc_8C08E470,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r4,r2 ; r2 ??? bc r4 is ???	
	mov.w @(loc_8C08E45C,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C08E45E,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C08E474,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.l @(loc_8C08E478,pc),r3 ; r3 set to 0x8C154E20
	mov.b @(r0,r4),r2
	mov.w @(loc_8C08E460,pc),r1 ; r1 set to 0xCc
	mov.b r2,@(r0,r14)
	mov 0x00,r0 ; r0 set to 0x00
	mov.w r0,@(0x1C,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r13
	mova @(loc_8C08E47C,pc),r0  ; r0 set to 0x8C08E47c
	fmov.s @r0,fr2
	mov 0x5C,r0 ; r0 set to 0x5c
	extu.b r13,r13
	shll2 r13
	shll r13
	add r3,r13
	mov.w @r13,r2
	lds r2,fpul
	float fpul,fr3
	fmul fr2,fr3 ; r3 ??? bc r2 is ???	
	fmov.s fr3,@(r0,r14)
	mov.w @(0x02,r13),r0
	mov r0,r2 ; r2 set to 0x5c
	lds r2,fpul
	mova @(loc_8C08E480,pc),r0  ; r0 set to 0x8C08E480
	fmov.s @r0,fr1 ; r1 ??	
	mov 0x60,r0 ; r0 set to 0x60
	float fpul,fr3
	fmul fr1,fr3
	fmov.s fr3,@(r0,r14)
	mov.b @(0x04,r13),r0
	extu.b r0,r0 ; r0 set to 0x60
	add r14,r1
	mov.l r0,@r1
	mov 0x31,r2 ; r2 set to 0x31
	mov.b @(0x05,r13),r0
	add r14,r2 ; r2 ??? bc r14 is ???	
	mov 0x16,r5 ; r5 set to 0x16
	mov.b r0,@r2
	mov.b @(0x06,r13),r0
	mov.l @(loc_8C08E484,pc),r2 ; r2 set to 0x8C034E8c
	mov r0,r6 ; r6 set to 0x60
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C08E3F6:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(loc_8C08E462,pc),r0 ; r0 set to 0x1D0, r0 set to 0x1D0
	sts.l pr,@-r15
	mov.l @(0x18,r14),r13
	mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???, r0 ??? bc r13 is ???	
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bt loc_8C08E418
	mov.b @(0x04,r14),r0
	mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C08E45C,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	bra loc_8C08E43a
	mov.b r3,@(r0,r14)

loc_8C08E418:
	mov 0x24,r0 ; r0 set to 0x24
	mov r13,r5
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	bsr loc_8C08E830
	mov r14,r4
	mov.b @(0x05,r14),r0
	mov r13,r5
	lds.l @r15+,pr
	mov.l @(loc_8C08E488,pc),r1 ; r1 set to 0x8C154EA0
	extu.b r0,r0 ; r0 set to 0x24
	shll2 r0 ; r0 set to 0x90
	mov r14,r4
	mov.l @r15+,r13
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C08E43A:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C08E442:
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C08E48C,pc),r0 ; r0 set to 0x8C154EA8
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C08E456:
	#data 0x1C07
loc_8C08E458:
	#data 0x00Dc
loc_8C08E45A:
	#data 0x00C0
loc_8C08E45C:
	#data 0x012c
loc_8C08E45E:
	#data 0x01A3
loc_8C08E460:
	#data 0x00Cc
loc_8C08E462:
	#data 0x01D0
	#align4

loc_8C08E464:
	#data bank04.loc_8c044F12
loc_8C08E468:
	#data loc_8C08E326
loc_8C08E46C:
	#data bank15.loc_8c154E90
loc_8C08E470:
	#data bank12.loc_8c129560
loc_8C08E474:
	#data bank12.loc_8c1294C8
loc_8C08E478:
	#data bank15.loc_8c154E20
loc_8C08E47C:
	#data 0x3FD55555
loc_8C08E480:
	#data 0x40092492
loc_8C08E484:
	#data bank03.loc_8c034e8c
loc_8C08E488:
	#data bank15.loc_8c154EA0
loc_8C08E48C:
	#data bank15.loc_8c154EA8

;==============================================
loc_8C08E490:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C08E5B8,pc),r4 ; r4 set to 0x2A4
	mov 0x01,r7 ; r7 set to 0x01
	sts.l pr,@-r15
	add r5,r4 ; r4 ??? bc r5 is ???	
	mov.w @(0x1E,r4),r0
	tst r0,r0
	bf/s loc_8C08E4Bc
	mov 0x00,r6 ; r6 set to 0x00
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov r6,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x06,r14)
	mov r14,r4
	mov.w @(loc_8C08E5BA,pc),r0 ; r0 set to 0x12c
	mov.b r7,@(r0,r14)
	lds.l @r15+,pr
	bra loc_8C08E7E6
	mov.l @r15+,r14

loc_8c08e4bc:
	mov.w @(bank08.loc_8c08e5ba,pc),r0
	mov.b r7,@(r0,r14) 
	mov 0x19,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt/s loc_8c08e4ce
	mov r14,r4
	mov.w @(bank08.loc_8c08e5ba,pc),r0
	mov.b r6,@(r0,r14) 

loc_8c08e4ce:
	bsr bank08.loc_8c08e868
	nop 
	lds.l @r15+,pr 
	mov.l @(bank08.loc_8c08e5c4,pc),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C08E4DC:
	mov.w @(loc_8C08E5B8,pc),r6 ; r6 set to 0x2A4
	mov 0x01,r7 ; r7 set to 0x01
	mov.l r14,@-r15
	mov r4,r14
	add r5,r6 ; r6 ??? bc r5 is ???	
	sts.l pr,@-r15
	mov.w @(0x1E,r6),r0
	tst r0,r0
	bf/s loc_8C08E508
	mov 0x00,r4 ; r4 set to 0x00
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov r4,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x06,r14)
	mov r14,r4 ; r4 ??? bc r14 is ???	
	mov.w @(loc_8C08E5BA,pc),r0 ; r0 set to 0x12c
	mov.b r7,@(r0,r14)
	lds.l @r15+,pr
	bra loc_8C08E7E6
	mov.l @r15+,r14

loc_8c08e508:
	mov.w @(bank08.loc_8c08e5ba,pc),r0
	mov.b r7,@(r0,r14) 
	mov 0x19,r0
	mov.b @(r0,r6),r3
	tst r3,r3
	bt/s loc_8c08e51a
	mov 0x49,r7
	mov.w @(bank08.loc_8c08e5ba,pc),r0
	mov.b r4,@(r0,r14) 

loc_8c08e51a:
	mov.b @(0x06,r14),r0 
	tst r0,r0
	bf loc_8c08e558
	mov.b @(0x06,r14),r0 
	mov 0x44,r3
	mov r3,r2
	add 0x01,r0
	mov.b r0,@(0x06,r14) 
	mov.w @(loc_8C08E5BC,pc),r0
	mov.b r3,@(r0,r14) 
	add 0x01,r0
	mov.b r2,@(r0,r14) 
	add 0x04,r0
	mov.b r7,@(r0,r14) 
	add 0x0B,r0
	mov.w r4,@(r0,r14) 
	add 0xF2,r0
	mov.b r4,@(r0,r14) 
	add 0x26,r0
	mov.l @(loc_8C08E5C8,pc),r3
	mov.l r4,@(r0,r14) 
	mov.b @(0x02,r14),r0 
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2) 
	mov 0x02,r0
	mov.w r0,@(0x1E,r14) 

loc_8c08e558:
	mov.w @(loc_8C08E5BE,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c08e5a4
	mov.b r4,@(r0,r14) 
	mov 0x0A,r3
	mov.w @(0x1E,r6),r0 
	cmp/gt r3,r0
	bt loc_8c08e56e
	bra loc_8c08e582
	mov 0x4D,r6

loc_8c08e56e:
	mov.w @(0x1E,r14),r0 
	add 0xFF,r0
	mov.w r0,@(0x1E,r14) 
	exts.w r0,r0
	tst r0,r0
	bf/s loc_8c08e582
	mov r7,r6
	mov 0x02,r0
	mov 0x45,r6
	mov.w r0,@(0x1E,r14) 

loc_8c08e582:
	mov.w @(loc_8C08E5C0,pc),r0
	mov.l @(loc_8C08E5C8,pc),r3
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

loc_8c08e5a4:
	bsr bank08.loc_8c08e868
	mov r14,r4
	mov.l @(bank08.loc_8c08e5c4,pc),r2
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr 
	mov.l @(bank08.loc_8c08e5cc,pc),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c08e5b8:
	#data 0x02A4
loc_8c08e5ba:
	#data 0x012C
loc_8C08E5BC:
	#data 0x019C
loc_8C08E5BE:
	#data 0x0141
loc_8C08E5C0:
	#data 0x01A1
	#align4

loc_8c08e5c4:
	#data bank03.loc_8c034dee
loc_8C08E5C8:
	#data 0x8C2896B0
loc_8c08e5cc:
	#data bank04.loc_8c045748

;==============================================
loc_8c08e5d0:
	mov.b @(0x7,r5),r0
	mov.w @(0xEE,PC),r6
	extu.b r0,r0
	cmp/eq 0x07,r0
	bf.s loc_8c08e5ee
	add r5,r6
	mov 0x18,r0
	mov.b @(r0,r6),r2
	mov 0x03,r3
	extu.b r2,r2
	cmp/ge r3,r2
	bt loc_8c08e5ee
	mov.w @(0x1E,r6),r0
	tst r0,r0
	bf loc_8c08e5fc

loc_8c08e5ee:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0xCC,PC),r0
	rts 
	mov.b r3,@(r0,r4)

;-------------------------------------------------------------------------------
loc_8c08e5fc:
	mov.l @(0xC8,PC),r3
	jmp @r3
	nop 

;unused return
	rts
	nop 

;==============================================
loc_8C08E606:
	mov.w @(loc_8C08E6C4,pc),r6 ; r6 set to 0x2A4
	add r5,r6 ; r6 ??? bc r5 is ???	
	mov.w @(0x1E,r6),r0
	tst r0,r0
	bf/s loc_8C08E628
	mov 0x00,r7 ; r7 set to 0x00
	mov.b @(0x05,r4),r0
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	mov r7,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x06,r4)
	mov 0x01,r3 ; r3 set to 0x01
	mov.w @(loc_8C08E6C6,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)
	bra loc_8C08E7E6
	nop

loc_8c08e628:
	mov.w @(bank08.loc_8c08e6c6,pc),r0
	mov 0x01,r2
	mov.b r2,@(r0,r4) 
	mov 0x19,r0
	mov.b @(r0,r6),r3
	tst r3,r3
	bt loc_8c08e63a
	mov.w @(bank08.loc_8c08e6c6,pc),r0
	mov.b r7,@(r0,r4) 

loc_8c08e63a:
	mov.l @(bank08.loc_8c08e6c8,pc),r3
	jmp @r3
	nop 

loc_8C08E640:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C08E6C4,pc),r4 ; r4 set to 0x2A4
	mov 0x01,r7 ; r7 set to 0x01
	add r5,r4 ; r4 ??? bc r5 is ???	
	mov.w @(0x1E,r4),r0
	tst r0,r0
	bf/s loc_8C08E668
	mov 0x00,r6 ; r6 set to 0x00
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov r6,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x06,r14)
	mov r14,r4
	mov.w @(loc_8C08E6C6,pc),r0 ; r0 set to 0x12c
	mov.b r7,@(r0,r14)
	bra loc_8C08E7E6
	mov.l @r15+,r14

loc_8c08e668:
	mov.w @(bank08.loc_8c08e6c6,pc),r0
	mov.b r7,@(r0,r14) 
	mov 0x19,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c08e678
	mov.w @(bank08.loc_8c08e6c6,pc),r0
	mov.b r6,@(r0,r14) 

loc_8c08e678:
	mov.b @(0x06,r14),r0 
	mov r14,r4
	mov.l @(bank08.loc_8c08e6cc,pc),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C08E688:
	mov.b @(0x07,r5),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8C08E694
	bra loc_8C08E69a
	mov 0x01,r0

loc_8C08E694:
	cmp/eq 0x02,r0
	bf loc_8C08E69e
	mov 0x02,r0 ; r0 set to 0x02

loc_8C08E69A:
	bra loc_8C08E6Aa
	mov.b r0,@(0x06,r4)

loc_8c08e69e:
	mov.b @(0x07,r5),r0 
	extu.b r0,r0
	cmp/eq 0x07,r0 
	bf loc_8c08e6ae
	mov 0x03,r0
	mov.b r0,@(0x06,r4) 

loc_8c08e6aa:
	mov 0x00,r0
	mov.b r0,@(0x07,r4) 

loc_8c08e6ae:
	rts 
	nop 

loc_8C08E6B2:
	mov r4,r3
	mov.l @(loc_8C08E6D0,pc),r1 ; r1 set to 0x8C154EF0
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C08E6C4:
	#data 0x02A4

loc_8C08E6C6:
	#data 0x012c
	#align4

loc_8C08E6C8:
	#data bank03.loc_8c034dee
loc_8C08E6CC:
	#data bank15.loc_8c154EE0
loc_8C08E6D0:
	#data bank15.loc_8c154EF0

;==============================================
loc_8C08E6D4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(loc_8C08E81C,pc),r3 ; r3 set to 0x8C034F54
	mov.l r5,@r15
	mov 0x16,r5 ; r5 set to 0x16
	mov.b @(0x07,r14),r0
	mov 0x0D,r6 ; r6 set to 0x0d
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.w @(loc_8C08E812,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r7
	jsr @r3
	mov r14,r4
	mov.l @r15,r5 ; r5 ??? bc r15 is ???	
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C08E6FC:
	mov.b @(0x07,r5),r0
	extu.b r0,r0 ; r0 set to 0x41
	cmp/eq 0x01,r0
	bt loc_8C08E70a
	mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00
	rts
	mov.b r0,@(0x06,r4)

;-------------------------------------------------------------------------------
loc_8C08E70A:
	mov.l @(loc_8C08E820,pc),r3 ; r3 set to 0x8C034DEe
	jmp @r3
	nop

;Unused return
	rts
	nop
;-------------------------------------------------------------------------------
loc_8C08E714:
	mov r4,r3
	mov.l @(loc_8C08E824,pc),r1 ; r1 set to 0x8C154EF8
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C08E726:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(loc_8C08E81C,pc),r3 ; r3 set to 0x8C034F54
	mov.l r5,@r15
	mov 0x16,r5 ; r5 set to 0x16
	mov.b @(0x07,r14),r0
	mov 0x23,r6 ; r6 set to 0x23
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.w @(loc_8C08E814,pc),r0 ; r0 set to 0x140
	mov.b @(r0,r14),r7
	jsr @r3
	mov r14,r4
	mov.l @r15,r5 ; r5 ??? bc r15 is ???	
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C08E74E:
	mov.b @(0x07,r5),r0
	extu.b r0,r0 ; r0 set to 0x40
	cmp/eq 0x02,r0
	bt loc_8C08E75c
	mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00
	rts
	mov.b r0,@(0x06,r4)

;-------------------------------------------------------------------------------
loc_8C08E75C:
	mov.l @(loc_8C08E820,pc),r3 ; r3 set to 0x8C034DEe
	jmp @r3
	nop

;Unused
	rts
	nop

;-------------------------------------------------------------------------------
loc_8C08E766:
	mov r4,r3
	mov.l @(loc_8C08E828,pc),r1 ; r1 set to 0x8C154F00
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C08E778:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(loc_8C08E81C,pc),r3 ; r3 set to 0x8C034F54
	mov.l r5,@r15
	mov 0x16,r5 ; r5 set to 0x16
	mov.b @(0x07,r14),r0
	mov 0x24,r6 ; r6 set to 0x24
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.w @(loc_8C08E812,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r7
	jsr @r3
	mov r14,r4
	mov.l @r15,r5 ; r5 ??? bc r15 is ???	
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C08E7A0:
	mov.b @(0x07,r5),r0
	extu.b r0,r0 ; r0 set to 0x41
	cmp/eq 0x07,r0
	bt loc_8C08E7Ae
	mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00
	rts
	mov.b r0,@(0x06,r4)

;-------------------------------------------------------------------------------
loc_8C08E7AE:
	mov.l @(loc_8C08E820,pc),r3 ; r3 set to 0x8C034DEe
	jmp @r3
	nop

;unused
	rts
	nop

;-------------------------------------------------------------------------------
loc_8C08E7B8:
	mov.w @(0x5A,PC),r3
	mov 0x18,r0
	mov 0x03,r1
	add r3,r5
	mov.b @(r0,r5),r2
	extu.b r2,r2
	cmp/ge r1,r2
	bt loc_8c08e7ce
	mov.w @(0x1E,r5),r0
	tst r0,r0
	bf loc_8c08e7dc

loc_8C08E7CE:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x3E,PC),r0
	rts 
	mov.b r3,@(r0,r4)

;-------------------------------------------------------------------------------
loc_8C08E7DC:
	mov.l @(0x40,PC),r3
	jmp @r3
	nop 

;unused
	rts
	nop 

;-------------------------------------------------------------------------------
loc_8c08e7e6:
	mov.w @(bank08.loc_8c08e812,pc),r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bf loc_8c08e7fa
	mov.b @(0x04,r4),r0 
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x04,r4) 
	mov.w @(bank08.loc_8c08e818,pc),r0
	mov.b r3,@(r0,r4) 

loc_8c08e7fa:
	rts 
	nop 

loc_8C08E7FE:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C08E818,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;-------------------------------------------------------------------------------
loc_8C08E80C:
	mov.l @(loc_8C08E82C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C08E812:
	#data 0x0141
loc_8C08E814:
	#data 0x0140
loc_8C08E816:
	#data 0x02A4
loc_8C08E818:
	#data 0x012c
	#align4

loc_8C08E81C:
	#data bank03.loc_8c034F54
loc_8C08E820:
	#data bank03.loc_8c034dee
loc_8C08E824:
	#data bank15.loc_8c154EF8
loc_8C08E828:
	#data bank15.loc_8c154F00
loc_8C08E82C:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C08E830:
mov.w @(loc_8C08E8CE,pc),r0 ; r0 set to 0xCc
mov.w @(r0,r4),r3
add 0x64,r0 ; r0 set to 0x130
mov.w @(r0,r5),r2
xor r3,r2
mov.w r2,@(r0,r4)
exts.w r2,r2
tst r2,r2
bf loc_8C08E84e
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r4),fr3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr2
bra loc_8C08E858
fadd fr3,fr2

loc_8C08E84E:
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r4),fr3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr2
fsub fr3,fr2

loc_8C08E858:
fmov.s fr2,@(r0,r4)
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s @(r0,r4),fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r5),fr2
fadd fr3,fr2
rts
fmov.s fr2,@(r0,r4)
;-------------------------------------------------------------------------------

#align4
loc_8C08E868:
#data 0xE3038457
#data 0x3633660c
#data 0xE1068B02
#data 0x8B163613

#align4
loc_8C08E878:
#data 0xE238854e
#data 0x324CD115
#data 0xF1284000
#data 0xC714031d
#data 0x435AF208
#data 0xF322F32d
#data 0xF21AF131
#data 0x70FF854e
#data 0x600F814e
#data 0x89144011
#data 0xA012E00f
#data 0x814e

loc_8C08E8A6:
#data 0x9213
#data 0xE301E018
#data 0x065C352c
#data 0x3637666c
#data 0xE1038B02
#data 0x8B063617

#align4
loc_8C08E8BC:
#data 0xE038D107
#data 0x415AF246
#data 0xF231F30d
#data 0xF427

loc_8C08E8CA:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C08E8CE:
#data 0x00Cc
#data 0x000002A4

#align4
loc_8C08E8D4:
#data bank15.loc_8c154F08
#data 0x40092492
#data 0x412B6DB6
#data 0x7FF84F22
#data 0xE600D352
#data 0x2F501F41
#data 0x430BE501
#data 0x20086463
#data 0x64038D07
#data 0xE020D34e
#data 0x52F11434
#data 0x63F01426
#data 0x7F080434
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C08E90E:
mov r4,r3
mov.l @(loc_8C08EA38,pc),r1 ; r1 set to 0x8C154F34
mov.l r4,@-r15
mov.b @(0x04,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C08E920:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C08EA1E,pc),r3 ; r3 set to 0x1C08
mov.l r13,@-r15
mov.w @(loc_8C08EA20,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C08EA20,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(0x18,r14),r4
mov.b r0,@(0x04,r14)
mov 0x26,r0 ; r0 set to 0x26
mov.w r3,@(r0,r14)
mov.w @(loc_8C08EA22,pc),r0 ; r0 set to 0xC0
mov.l @(loc_8C08EA3C,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C08EA24,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C08EA26,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C08EA40,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov 0x00,r5 ; r5 set to 0x00
mov.b r2,@(r0,r14)
mov r5,r0 ; r0 set to 0x00
nop
mov.w r0,@(0x1C,r14)
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r13
mov 0x31,r0 ; r0 set to 0x31
mov.l @(loc_8C08EA44,pc),r3 ; r3 set to 0x8C154F28
extu.b r13,r13
shll r13
add r3,r13
mov.b @r13,r2
mov.b r2,@(r0,r14)
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r2
tst r2,r2
bf/s loc_8C08E9B4
mov 0x42,r4 ; r4 set to 0x42
mov.w @(loc_8C08EA28,pc),r0 ; r0 set to 0x19c
mov.b r4,@(r0,r14)
add 0x01,r0 ; r0 set to 0x19d
mov.b r4,@(r0,r14)
bra loc_8C08E9C6
mov 0x4E,r2

#align4
loc_8c08e9b4:
mov.b @(r0,r14),r0
extu.b r0,r0
cmp/eq 0x04,r0 
bf loc_8c08e9e8
mov.w @(bank08.loc_8c08ea28,pc),r0
mov 0x3F,r2
mov.b r4,@(r0,r14) 
add 0x01,r0
mov.b r4,@(r0,r14) 

loc_8c08e9c6:
add 0x04,r0
mov.l @(loc_8C08EA48,pc),r3
mov.b r2,@(r0,r14) 
mov.w @(loc_8C08EA2A,pc),r0
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

loc_8c08e9e8:
mov.b @(0x01,r13),r0 
mov 0x16,r5
mov.l @(bank08.loc_8c08ea4c,pc),r3
mov r0,r6
jsr @r3
mov r14,r4
lds.l @r15+,pr 
mov r14,r4
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C08E9FC:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.w @(loc_8C08EA2C,pc),r0 ; r0 set to 0x1D0
sts.l pr,@-r15
mov.l @(0x18,r14),r13
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
extu.b r0,r0
cmp/eq 0x1D,r0
bt loc_8C08EA50
mov.b @(0x04,r14),r0
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r14)
mov.w @(loc_8C08EA24,pc),r0 ; r0 set to 0x12c
bra loc_8C08EA72
mov.b r3,@(r0,r14)

loc_8C08EA1E:
#data 0x1C08

loc_8C08EA20:
#data 0x00Dc

loc_8C08EA22:
#data 0x00C0

loc_8C08EA24:
#data 0x012c

loc_8C08EA26:
#data 0x01A3

loc_8C08EA28:
#data 0x019c
loc_8c08ea2a:
#data 0x01Ac

loc_8C08EA2C:
#data 0x01D0
#data 0x0000

#align4
loc_8C08EA30:
#data bank04.loc_8c044F12

loc_8C08EA34:
#data loc_8C08E90e

loc_8C08EA38:
#data bank15.loc_8c154F34

loc_8C08EA3C:
#data bank12.loc_8c129560

loc_8C08EA40:
#data bank12.loc_8c1294C8

loc_8C08EA44:
#data bank15.loc_8c154F28
loc_8c08ea48:
#data 0x8C2896B0

#align4
loc_8C08EA4C:
#data bank03.loc_8c034e8c


loc_8C08EA50:
mov 0x24,r0 ; r0 set to 0x24
mov r13,r5
mov.b @(r0,r13),r2
mov.b r2,@(r0,r14)
bsr loc_8C08EC70
mov r14,r4
mov.b @(0x05,r14),r0
mov r13,r5
lds.l @r15+,pr
mov.l @(loc_8C08EB9C,pc),r1 ; r1 set to 0x8C154F44
extu.b r0,r0 ; r0 set to 0x24
shll2 r0 ; r0 set to 0x90
mov r14,r4
mov.l @r15+,r13
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C08EA72:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C08EA7A:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C08EB92,pc),r4 ; r4 set to 0x2A4
mov 0x01,r7 ; r7 set to 0x01
add r5,r4 ; r4 ??? bc r5 is ???	
mov.w @(0x1E,r4),r0
tst r0,r0
bf/s loc_8C08EAA2
mov 0x00,r6 ; r6 set to 0x00
mov.b @(0x05,r14),r0
add 0x01,r0
mov.b r0,@(0x05,r14)
mov r6,r0 ; r0 set to 0x00
nop
mov.b r0,@(0x06,r14)
mov r14,r4
mov.w @(loc_8C08EB94,pc),r0 ; r0 set to 0x12c
mov.b r7,@(r0,r14)
bra loc_8C08EC44
mov.l @r15+,r14

loc_8c08eaa2:
mov.w @(bank08.loc_8c08eb94,pc),r0
mov.b r7,@(r0,r14) 
mov 0x19,r0
mov.b @(r0,r4),r3
tst r3,r3
bt loc_8c08eab2
mov.w @(bank08.loc_8c08eb94,pc),r0
mov.b r6,@(r0,r14) 

loc_8c08eab2:
mov 0x20,r0
mov r14,r4
mov.b @(r0,r14),r3
mov.l @(bank08.loc_8c08eba0,pc),r0
extu.b r3,r3
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C08EAC4:
mov.l r14,@-r15
mov r4,r14
mov.l @(loc_8C08EBA4,pc),r1 ; r1 set to 0x8C154F60
sts.l pr,@-r15
mov.b @(0x06,r14),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jsr @r3
nop
lds.l @r15+,pr
mov.l @(loc_8C08EBA8,pc),r3 ; r3 set to 0x8C045748
mov r14,r4
jmp @r3
mov.l @r15+,r14

loc_8C08EAE2:
#data 0x9356
#data 0x845C353c
#data 0xC801600c
#data 0x84468907
#data 0x7001E201
#data 0xE01C8046
#data 0x212B015c
#data 0x0514

loc_8C08EAFE:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C08EB02:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C08EBAC,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r4,r14
mov.w @(loc_8C08EB96,pc),r0 ; r0 set to 0x141
mov.b @(r0,r14),r2
tst r2,r2
bt loc_8C08EB36
mov.b @(0x06,r14),r0
add 0x01,r0 ; r0 set to 0x142
mov.b r0,@(0x06,r14)
mov.w @(0x1C,r14),r0
add 0x01,r0 ; r0 set to 0x143
mov.w r0,@(0x1C,r14)
exts.w r0,r0 ; r0 ??	
tst 0x03,r0
bf/s loc_8C08EB2c
mov r14,r4
bra loc_8C08EB2e
mov 0x00,r5

loc_8C08EB2C:
mov 0x02,r5 ; r5 set to 0x02

loc_8C08EB2E:
lds.l @r15+,pr
mov.l @(loc_8C08EBB0,pc),r2 ; r2 set to 0x8C08ECA8, r2 set to 0x8C08ECA8
jmp @r2
mov.l @r15+,r14

loc_8C08EB36:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C08EB3C:
#data 0x7FF84F22
#data 0x2F42D31a
#data 0x430B1F51
#data 0x600E64F2
#data 0x890A4011
#data 0xE00063F2
#data 0x80369220
#data 0x931AE01c
#data 0x343C54F1
#data 0x2129014c
#data 0x0414

loc_8C08EB66:
#data 0x7F08
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C08EB6E:
mov.l @(loc_8C08EBAC,pc),r3 ; r3 set to 0x8C034DEe
jmp @r3
nop

loc_8C08EB74:
mov.l r14,@-r15
mov r4,r14
mov.l @(loc_8C08EBB4,pc),r1 ; r1 set to 0x8C154F6c
sts.l pr,@-r15
mov.b @(0x06,r14),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jsr @r3
nop
lds.l @r15+,pr
mov.l @(loc_8C08EBA8,pc),r3 ; r3 set to 0x8C045748
mov r14,r4
jmp @r3
mov.l @r15+,r14

loc_8C08EB92:
#data 0x02A4

loc_8C08EB94:
#data 0x012c

loc_8C08EB96:
#data 0x0141
#data 0x000000Fe

#align4
loc_8C08EB9C:
#data bank15.loc_8c154F44

loc_8C08EBA0:
#data bank15.loc_8c154F4c

loc_8C08EBA4:
#data bank15.loc_8c154F60

loc_8C08EBA8:
#data bank04.loc_8c045748

loc_8C08EBAC:
#data bank03.loc_8c034dee

loc_8C08EBB0:
#data loc_8C08ECA8

loc_8C08EBB4:
#data bank15.loc_8c154F6c

loc_8C08EBB8:
#data 0x353C9368
#data 0x600C845c
#data 0x8907C802
#data 0xE2028446
#data 0x80467001
#data 0x015CE01c
#data 0x0514212b

#align4
loc_8C08EBD4:
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C08EBD8:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C08EC98,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r4,r14
mov.w @(loc_8C08EC8E,pc),r0 ; r0 set to 0x141
mov.b @(r0,r14),r2
tst r2,r2
bt loc_8C08EC0c
mov.b @(0x06,r14),r0
add 0x01,r0 ; r0 set to 0x142
mov.b r0,@(0x06,r14)
mov.w @(0x1C,r14),r0
add 0x01,r0 ; r0 set to 0x143
mov.w r0,@(0x1C,r14)
exts.w r0,r0 ; r0 ??	
tst 0x03,r0
bf/s loc_8C08EC02
mov r14,r4
bra loc_8C08EC04
mov 0x01,r5

loc_8C08EC02:
mov 0x03,r5 ; r5 set to 0x03

loc_8C08EC04:
lds.l @r15+,pr
mov.l @(loc_8C08EC9C,pc),r2 ; r2 set to 0x8C08ECA8, r2 set to 0x8C08ECA8
jmp @r2
mov.l @r15+,r14

loc_8C08EC0C:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C08EC12:
#data 0x4F22
#data 0xD3207FF8
#data 0x1F512F42
#data 0x64F2430b
#data 0x4011600e
#data 0x63F2890a
#data 0x9231E000
#data 0xE01C8036
#data 0x54F1932c
#data 0x014C343c
#data 0x04142129

#align4
loc_8C08EC3C:
#data 0x4F267F08
#data 0x0009000b
;-------------------------------------------------------------------------------

#align4
loc_8c08ec44:
mov.w @(bank08.loc_8c08ec8e,pc),r0
mov.b @(r0,r5),r3
tst r3,r3
bf loc_8c08ec58
mov.b @(0x04,r4),r0 
mov 0x00,r3
add 0x01,r0
mov.b r0,@(0x04,r4) 
mov.w @(bank08.loc_8c08ec92,pc),r0
mov.b r3,@(r0,r4) 

loc_8c08ec58:
rts 
nop 

loc_8C08EC5C:
mov.b @(0x04,r4),r0
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4)
mov.w @(loc_8C08EC92,pc),r0 ; r0 set to 0x12c
rts
mov.b r3,@(r0,r4)
;-------------------------------------------------------------------------------

loc_8C08EC6A:
mov.l @(loc_8C08ECA0,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop

loc_8C08EC70:
mov.w @(loc_8C08EC94,pc),r0 ; r0 set to 0x130
mov r5,r2
sts.l pr,@-r15
mov.w @(r0,r5),r3
mov r4,r1
add 0x34,r2
mov.w r3,@(r0,r4)
add 0x34,r1
mov.l @(loc_8C08ECA4,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------
#data 0x02A4

loc_8C08EC8E:
#data 0x0141
#data 0x00Fd

loc_8C08EC92:
#data 0x012c

loc_8C08EC94:
#data 0x0130
#data 0x0000

#align4
loc_8C08EC98:
#data bank03.loc_8c034dee

loc_8C08EC9C:
#data loc_8C08ECA8

loc_8C08ECA0:
#data bank04.loc_8c0450C0

loc_8C08ECA4:
#data bank12.loc_8c1294C8

loc_8C08ECA8:
#data 0x7FF84F22
#data 0xE600D340
#data 0x2F501F41
#data 0x430BE501
#data 0x20086463
#data 0x64038D07
#data 0xE020D33c
#data 0x52F11434
#data 0x63F01426
#data 0x0434

loc_8C08ECCE:
#data 0x7F08
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C08ECD6:
mov r4,r3
mov.l @(loc_8C08EDB8,pc),r1 ; r1 set to 0x8C154FB8
mov.l r4,@-r15
mov.b @(0x04,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C08ECE8:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C08EDA4,pc),r3 ; r3 set to 0x1C09
mov.l r13,@-r15
mov.w @(loc_8C08EDA6,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C08EDA6,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.b r0,@(0x04,r14)
mov 0x26,r0 ; r0 set to 0x26
mov.w r3,@(r0,r14)
mov.w @(loc_8C08EDA8,pc),r0 ; r0 set to 0xC0
mov.l @(loc_8C08EDBC,pc),r3 ; r3 set to 0x8C129560
mov.l @(0x18,r14),r4
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C08EDAA,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C08EDAC,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C08EDC0,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov r14,r1
mov.b @(r0,r4),r2
add 0x34,r1
mov.b r2,@(r0,r14)
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
mov r4,r2
mov.b @(r0,r14),r13
add 0x34,r2
extu.b r3,r3
extu.b r13,r13
tst r5,r3
mov.l @(loc_8C08EDC4,pc),r3 ; r3 set to 0x8C154F78
shll2 r13
shll2 r13
add r3,r13
mov.l @(loc_8C08EDC0,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mova @(loc_8C08EDC8,pc),r0  ; r0 set to 0x8C08EDC8
fmov.s @r0,fr5 ; r5 ??	
mova @(loc_8C08EDCC,pc),r0  ; r0 set to 0x8C08EDCc
fmov.s @r0,fr4
mov.w @(loc_8C08EDAE,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???	
tst r3,r3
bf loc_8C08EDD0
mov r14,r2
mov 0x34,r0 ; r0 set to 0x34
add r0,r2
fmov fr5,fr0 ; r0 ??? bc r5 is ???	
mov.l r2,@-r15
mov.w @(0x08,r13),r0
mov r0,r3
lds r3,fpul
mov.l @r15+,r3
float fpul,fr3
fmov.s @r3,fr2
fmac fr0,fr3,fr2
fmov.s fr2,@r3
mov.l @r13,r2
lds r2,fpul
float fpul,fr3
fmul fr5,fr3
bra loc_8C08EDF2
fdiv fr4,fr3

loc_8C08EDA4:
#data 0x1C09

loc_8C08EDA6:
#data 0x00Dc

loc_8C08EDA8:
#data 0x00C0

loc_8C08EDAA:
#data 0x012c

loc_8C08EDAC:
#data 0x01A3

loc_8C08EDAE:
#data 0x0130

#align4
loc_8C08EDB0:
#data bank04.loc_8c044F12

loc_8C08EDB4:
#data loc_8C08ECD6

loc_8C08EDB8:
#data bank15.loc_8c154FB8

loc_8C08EDBC:
#data bank12.loc_8c129560

loc_8C08EDC0:
#data bank12.loc_8c1294C8

loc_8C08EDC4:
#data bank15.loc_8c154F78

loc_8C08EDC8:
#data 0x3FD55555

#align4
loc_8C08EDCC:
#data 0x47800000


loc_8C08EDD0:
mov.w @(0x08,r13),r0
mov 0x34,r2 ; r2 set to 0x34
add r14,r2 ; r2 ??? bc r14 is ???	
mov r0,r3
lds r3,fpul
fmov.s @r2,fr2
float fpul,fr3
fmul fr5,fr3
fneg fr3
fadd fr3,fr2
fmov.s fr2,@r2
mov.l @r13,r3
lds r3,fpul
float fpul,fr3
fmul fr5,fr3
fdiv fr4,fr3
fneg fr3

loc_8C08EDF2:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
mov r14,r2
fmov.s fr3,@(r0,r14)
mova @(loc_8C08EF38,pc),r0  ; r0 set to 0x8C08EF38, r0 set to 0x8C08EF38
fmov.s @r0,fr5
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
add r0,r2
mov.l r2,@-r15
mov 0x44,r4 ; r4 set to 0x44, r4 set to 0x44
mov.w @(0x0A,r13),r0
fmov fr5,fr0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???	
mov r0,r3
lds r3,fpul
mov.l @r15+,r3
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
float fpul,fr3
fmov.s @r3,fr2
fmac fr0,fr3,fr2
fmov.s fr2,@r3
mov.l @(0x04,r13),r2
lds r2,fpul
float fpul,fr3
fmul fr5,fr3
fdiv fr4,fr3
fldi0 fr4
fmov.s fr3,@(r0,r14)
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r14)
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr4,@(r0,r14)
mov.w @(loc_8C08EF2C,pc),r0 ; r0 set to 0x19C, r0 set to 0x19c
mov.b r4,@(r0,r14)
add 0x01,r0 ; r0 set to 0x19D, r0 set to 0x19d
mov.w @(loc_8C08EF2E,pc),r1 ; r1 set to 0x1A1, r1 set to 0x1A1
mov.b r4,@(r0,r14)
mov 0x00,r4 ; r4 set to 0x00, r4 set to 0x00
mov.b @(0x0D,r13),r0
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
mov.l @(loc_8C08EF3C,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
mov 0x16,r5 ; r5 set to 0x16, r5 set to 0x16
mov.b r0,@r1
mov.w @(loc_8C08EF30,pc),r0 ; r0 set to 0x1AC, r0 set to 0x1Ac
mov.w r4,@(r0,r14)
add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19e
mov.b r4,@(r0,r14)
add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4
mov.l r4,@(r0,r14)
mov.b @(0x02,r14),r0
mov.l @r3,r2
extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4
shll r0 ; r0 set to 0x188, r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2)
mov.b @(0x0C,r13),r0
mov.l @(loc_8C08EF40,pc),r2 ; r2 set to 0x8C034E8C, r2 set to 0x8C034E8c
mov r0,r6 ; r6 set to 0x188, r6 set to 0x188
jsr @r2
mov r14,r4 ; r4 ??? bc r14 is ???, r4 ??? bc r14 is ???	
lds.l @r15+,pr
mov r14,r4
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C08EE72:
mov.l r14,@-r15
mov r4,r14
mov.l @(0x18,r14),r5 ; r5 ??? bc r14 is ???, r5 ??? bc r14 is ???	
mov 0x02,r3 ; r3 set to 0x02, r3 set to 0x02, r3 set to 0x02
mov.b @(0x04,r5),r0
extu.b r0,r0 ; r0 set to 0x88, r0 set to 0x88
cmp/ge r3,r0
bf loc_8C08EE92
mov.b @(0x04,r14),r0
mov 0x00,r2 ; r2 set to 0x00, r2 set to 0x00, r2 set to 0x00
add 0x01,r0 ; r0 set to 0x89, r0 set to 0x89
mov.b r0,@(0x04,r14)
mov.w @(loc_8C08EF32,pc),r0 ; r0 set to 0x12C, r0 set to 0x12C, r0 set to 0x12c
mov.b r2,@(r0,r14)
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C08EE92:
mov 0x20,r0 ; r0 set to 0x20
mov r14,r4
mov.b @(r0,r14),r3
mov.l @(loc_8C08EF44,pc),r0 ; r0 set to 0x8C154FC8
extu.b r3,r3
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C08EEA8:
mov r4,r3
mov.l @(loc_8C08EF48,pc),r1 ; r1 set to 0x8C154FD8
mov.l r4,@-r15
mov.b @(0x05,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C08EEBA:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov 0x08,r4 ; r4 set to 0x08
mov.l @(loc_8C08EF4C,pc),r3 ; r3 set to 0x8C04223a
mov.l r5,@r15
mov 0x46,r5 ; r5 set to 0x46
mov.b @(0x05,r14),r0
add 0x01,r0
mov.b r0,@(0x05,r14)
mov.w @(loc_8C08EF34,pc),r0 ; r0 set to 0x13c
mov.b r4,@(r0,r14)
add 0x01,r0 ; r0 set to 0x13d
mov.b r4,@(r0,r14)
add 0x01,r0 ; r0 set to 0x13e
mov.b r4,@(r0,r14)
add 0x01,r0 ; r0 set to 0x13f
mov.b r4,@(r0,r14)
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???	
mov.l @r15,r5 ; r5 ??? bc r15 is ???	
mov r14,r4
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r14

loc_8C08EEEE:
mov.l r14,@-r15
mov r4,r14
mov 0x5C,r1 ; r1 set to 0x5C, r1 set to 0x5c
mov.l @(loc_8C08EF50,pc),r3 ; r3 set to 0x8C03340C, r3 set to 0x8C03340c
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
sts.l pr,@-r15
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???	
mov 0x68,r1 ; r1 set to 0x68, r1 set to 0x68
fmov.s @(r0,r14),fr2
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8C08EF54
mov.b @(0x04,r14),r0
mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
add 0x01,r0 ; r0 set to 0x5D, r0 set to 0x5d
mov.b r0,@(0x04,r14)
mov.w @(loc_8C08EF32,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
mov.b r3,@(r0,r14)
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C08EF2C:
#data 0x019c

loc_8C08EF2E:
#data 0x01A1

loc_8C08EF30:
#data 0x01Ac

loc_8C08EF32:
#data 0x012c

loc_8C08EF34:
#data 0x013c
#data 0x0000

#align4
loc_8C08EF38:
#data 0x40092492

#align4
loc_8C08EF3C:
#data 0x8C2896B0

#align4
loc_8C08EF40:
#data bank03.loc_8c034e8c

loc_8C08EF44:
#data bank15.loc_8c154FC8

loc_8C08EF48:
#data bank15.loc_8c154FD8

loc_8C08EF4C:
#data bank04.loc_8c04223a

loc_8C08EF50:
#data bank03.loc_8c03340c

loc_8c08ef54:
mov.w @(loc_8C08F05A,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bf loc_8c08ef64
mov.w @(loc_8C08F05C,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bt loc_8c08ef78

loc_8c08ef64:
mov.b @(0x05,r14),r0 
mov r14,r4
mov.l @(bank08.loc_8c08f064,pc),r3
mov 0x1F,r6
add 0x01,r0
mov.b r0,@(0x05,r14) 
mov 0x16,r5
lds.l @r15+,pr 
jmp @r3
mov.l @r15+,r14

loc_8c08ef78:
mov.l @(bank08.loc_8c08f068,pc),r2
jsr @r2
mov r14,r4
lds.l @r15+,pr 
mov.l @(bank08.loc_8c08f06c,pc),r3
mov r14,r4
jmp @r3
mov.l @r15+,r14
#data 0x4F26
#data 0x000B
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c08ef8e:
#data 0x2FE6
#data 0x4F22
#data 0xD335
#data 0x430B
#data 0x6E43
#data 0x600E
#data 0x4011
#data 0x8905
#data 0x84E4
#data 0xE300
#data 0x7001
#data 0x80E4
#data 0x905A
#data 0x0E34

loc_8c08efaa:
#data 0x4F26
#data 0x000B
#data 0x6EF6

loc_8C08EFB0:
mov r4,r3
mov.l @(loc_8C08F070,pc),r1 ; r1 set to 0x8C154FE4
mov.l r4,@-r15
mov.b @(0x05,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C08EFC2:
mov.b @(0x05,r4),r0
mov 0x18,r6 ; r6 set to 0x18
add 0x01,r0
mov.b r0,@(0x05,r4)
mov.w @(loc_8C08F060,pc),r0 ; r0 set to 0x13c
mov.b r6,@(r0,r4)
add 0x01,r0 ; r0 set to 0x13d
mov.b r6,@(r0,r4)
add 0x01,r0 ; r0 set to 0x13e
mov 0x10,r6 ; r6 set to 0x10
mov.b r6,@(r0,r4)
add 0x01,r0 ; r0 set to 0x13f
mov.b r6,@(r0,r4)
mova @(loc_8C08F074,pc),r0  ; r0 set to 0x8C08F074
fmov.s @r0,fr3
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr3,@(r0,r4)

loc_8C08EFE4:
mov.l r14,@-r15
fmov.s fr15,@-r15
sts.l pr,@-r15
add 0xF0,r15
mov 0x5C,r1 ; r1 set to 0x5C, r1 set to 0x5c
mov r4,r14
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
mov.l @(loc_8C08F078,pc),r3 ; r3 set to 0x8C03340C, r3 set to 0x8C03340c
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
mov.l r5,@r15
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???	
mov 0x68,r1 ; r1 set to 0x68, r1 set to 0x68
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
fldi0 fr15
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60, r1 set to 0x60
fmov.s @(r0,r14),fr2
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6C, r1 set to 0x6c
fmov.s @(r0,r14),fr2
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s @r1,fr3
fmov.s @(r0,r14),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8C08F042
mov.b @(0x04,r14),r0
mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
add 0x01,r0 ; r0 set to 0x61, r0 set to 0x61
mov.b r0,@(0x04,r14)
mov.w @(loc_8C08F05E,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
bra loc_8C08F0Ec
mov.b r3,@(r0,r14)

loc_8c08f042:
mov.w @(loc_8C08F05A,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bf loc_8c08f052
mov.w @(loc_8C08F05C,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bt loc_8c08f07c

loc_8c08f052:
mov.b @(0x04,r14),r0 
add 0x01,r0
bra loc_8c08f09a
mov.b r0,@(0x04,r14) 

loc_8C08F05A:
#data 0x019E

loc_8C08F05C:
#data 0x019F

loc_8c08f05e:
#data 0x012C

loc_8c08f060:
#data 0x013C
#data 0x0000

loc_8c08f064:
#data 0x4E8C
#data 0x8C03

loc_8c08f068:
#data 0x4DEE
#data 0x8C03

loc_8c08f06c:
#data 0x5748
#data 0x8C04

loc_8c08f070:
#data 0x4FE4
#data 0x8C15

loc_8c08f074:
#data 0x2492
#data 0xBF89

loc_8c08f078:
#data 0x340C
#data 0x8C03


loc_8c08f07c:
mov.w @(loc_8C08F10A,pc),r0
mov.l @r15,r3
fmov.s @(r0,r3),fr3
mov 0x38,r0
fmov.s @(r0,r14),fr2
fcmp/gt fr3,fr2
bt loc_8c08f0e0
mov.b @(0x04,r14),r0 
add 0x01,r0
mov.b r0,@(0x04,r14) 
mov.w @(loc_8C08F10A,pc),r0
mov.l @r15,r3
fmov.s @(r0,r3),fr3
mov 0x38,r0
fmov.s fr3,@(r0,r14) 

loc_8c08f09a:
mov.w @(loc_8C08F10C,pc),r0
mov.w @(r0,r14),r3
tst r3,r3
bf loc_8c08f0ae
mov 0x34,r0
fmov.s @(r0,r14),fr3
mov 0x04,r0
fadd fr15,fr3
bra loc_8c08f0bc
fmov.s fr3,@(r0,r15) 

loc_8c08f0ae:
mova @(loc_8C08F110,pc),r0 
fmov.s @r0,fr3
mov 0x34,r0
fmov.s @(r0,r14),fr2
mov 0x04,r0
fadd fr3,fr2
fmov.s fr2,@(r0,r15) 

loc_8c08f0bc:
mov 0x38,r0
mov r15,r5
fmov.s @(r0,r14),fr3
mov 0x08,r0
mov.l @(bank08.loc_8c08f114,pc),r3
add 0x04,r5
fadd fr15,fr3
mov 0x08,r7
mov 0x01,r6
fmov.s fr3,@(r0,r15) 
jsr @r3
mov r14,r4
mov.l @(bank08.loc_8c08f118,pc),r2
mov 0x49,r5
jsr @r2
mov r14,r4
bra loc_8c08f0ec
nop 

loc_8c08f0e0:
mov.l @(bank08.loc_8c08f11c,pc),r3
jsr @r3
mov r14,r4
mov.l @(bank08.loc_8c08f120,pc),r2
jsr @r2
mov r14,r4

loc_8C08F0EC:
add 0x10,r15
lds.l @r15+,pr
fmov.s @r15+,fr15
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C08F0F6:
mov.b @(0x04,r4),r0
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4)
mov.w @(loc_8C08F10E,pc),r0 ; r0 set to 0x12c
rts
mov.b r3,@(r0,r4)
;-------------------------------------------------------------------------------

loc_8C08F104:
mov.l @(loc_8C08F124,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop
loc_8c08f10a:
#data 0x041c
loc_8c08f10c:
#data 0x0130

loc_8C08F10E:
#data 0x012c
loc_8c08f110:
#data 0x80000000

#align4
loc_8C08F114:
#data bank10.loc_8c10235c

loc_8C08F118:
#data bank04.loc_8c04223a

loc_8C08F11C:
#data bank03.loc_8c034dee

loc_8C08F120:
#data bank04.loc_8c045748

loc_8C08F124:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0x60532F42
#data 0xD3420009
#data 0x80F4E501
#data 0x430BE600
#data 0x20086463
#data 0x64038D0f
#data 0xE120D33e
#data 0x1434314c
#data 0x936C62F2
#data 0x84F41426
#data 0xE01D2100
#data 0x353C65F2
#data 0x7201025c
#data 0x7F080524
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C08F16A:
mov r4,r3
mov.l @(loc_8C08F244,pc),r1 ; r1 set to 0x8C15503c
mov.l r4,@-r15
mov.b @(0x04,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C08F17C:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C08F22C,pc),r3 ; r3 set to 0x1D00
mov.l r13,@-r15
mov.w @(loc_8C08F22E,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C08F22E,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(0x18,r14),r4
mov.b r0,@(0x04,r14)
mov 0x26,r0 ; r0 set to 0x26
mov.w r3,@(r0,r14)
mov.w @(loc_8C08F230,pc),r0 ; r0 set to 0xC0
mov.l @(loc_8C08F248,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C08F232,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C08F234,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C08F24C,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x0B,r3 ; r3 set to 0x0b
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov.b r3,@(r0,r14)
mov.w @(loc_8C08F236,pc),r0 ; r0 set to 0x12d
mov.l @(loc_8C08F250,pc),r2 ; r2 set to 0x8C154FEc
mov.b r5,@(r0,r14)
add 0x01,r0 ; r0 set to 0x12e
mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???	
add 0x06,r3
mov.w r3,@(r0,r14)
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r13
mova @(loc_8C08F254,pc),r0  ; r0 set to 0x8C08F254
fmov.s @r0,fr5 ; r5 ??	
mova @(loc_8C08F258,pc),r0  ; r0 set to 0x8C08F258
extu.b r13,r13
fmov.s @r0,fr4
mov r13,r3
mov.w @(loc_8C08F238,pc),r0 ; r0 set to 0x130
shll2 r13
add r3,r13
mov.w @(r0,r14),r3
shll2 r13
tst r3,r3
bf/s loc_8C08F25c
add r2,r13
mov.l @r13,r3
mov 0x5C,r0 ; r0 set to 0x5c
lds r3,fpul
float fpul,fr3
fmul fr5,fr3
fdiv fr4,fr3
fmov.s fr3,@(r0,r14)
mov.l @(0x04,r13),r3
lds r3,fpul
float fpul,fr3
fmul fr5,fr3
bra loc_8C08F278
fdiv fr4,fr3
#data 0x02A4

loc_8C08F22C:
#data 0x1D00

loc_8C08F22E:
#data 0x00Dc

loc_8C08F230:
#data 0x00C0

loc_8C08F232:
#data 0x012c

loc_8C08F234:
#data 0x01A3

loc_8C08F236:
#data 0x012d

loc_8C08F238:
#data 0x0130
#data 0x0000

#align4
loc_8C08F23C:
#data bank04.loc_8c044F12

loc_8C08F240:
#data loc_8C08F16a

loc_8C08F244:
#data bank15.loc_8c15503C

loc_8C08F248:
#data bank12.loc_8c129560

loc_8C08F24C:
#data bank12.loc_8c1294C8

loc_8C08F250:
#data bank15.loc_8c154FEC

loc_8C08F254:
#data 0x3FD55555

#align4
loc_8C08F258:
#data 0x47800000


loc_8C08F25C:
mov.l @r13,r1
mov 0x5C,r0 ; r0 set to 0x5c
lds r1,fpul
float fpul,fr3
fmul fr5,fr3
fdiv fr4,fr3
fneg fr3
fmov.s fr3,@(r0,r14)
mov.l @(0x04,r13),r3
lds r3,fpul
float fpul,fr3
fmul fr5,fr3
fdiv fr4,fr3
fneg fr3

loc_8C08F278:
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr3,@(r0,r14)
mova @(loc_8C08F374,pc),r0  ; r0 set to 0x8C08F374, r0 set to 0x8C08F374
mov.l @(0x08,r13),r3
mov 0x44,r4 ; r4 set to 0x44, r4 set to 0x44
fmov.s @r0,fr5
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
lds r3,fpul
float fpul,fr3
fmul fr5,fr3
fdiv fr4,fr3
fmov.s fr3,@(r0,r14)
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
mov.l @(0x0C,r13),r3
lds r3,fpul
float fpul,fr3
fmul fr5,fr3
fdiv fr4,fr3
fmov.s fr3,@(r0,r14)
mov.w @(loc_8C08F366,pc),r0 ; r0 set to 0x19C, r0 set to 0x19c
mov.b r4,@(r0,r14)
add 0x01,r0 ; r0 set to 0x19D, r0 set to 0x19d
mov.b r4,@(r0,r14)
mov 0x11,r0 ; r0 set to 0x11, r0 set to 0x11
mov.b @(r0,r13),r3
mov 0x00,r4 ; r4 set to 0x00, r4 set to 0x00
mov.w @(loc_8C08F368,pc),r0 ; r0 set to 0x1A1, r0 set to 0x1A1
mov.b r3,@(r0,r14)
add 0x0B,r0 ; r0 set to 0x1AC, r0 set to 0x1Ac
mov.w r4,@(r0,r14)
add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19e
mov.b r4,@(r0,r14)
add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4
mov.l @(loc_8C08F378,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
mov.l r4,@(r0,r14)
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
mov.b @(0x02,r14),r0
mov.l @r3,r2
extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4
shll r0 ; r0 set to 0x188, r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2)
mov 0x10,r0 ; r0 set to 0x10, r0 set to 0x10
mov.l @(loc_8C08F37C,pc),r2 ; r2 set to 0x8C034E8C, r2 set to 0x8C034E8c
mov.b @(r0,r13),r6
jsr @r2
mov r14,r4 ; r4 ??? bc r14 is ???, r4 ??? bc r14 is ???	
lds.l @r15+,pr
mov r14,r4
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C08F2E2:
mov.l r14,@-r15
mov r4,r14
mov.l @(0x18,r14),r5 ; r5 ??? bc r14 is ???, r5 ??? bc r14 is ???	
mov 0x02,r3 ; r3 set to 0x02, r3 set to 0x02, r3 set to 0x02
mov.b @(0x04,r5),r0
extu.b r0,r0 ; r0 set to 0x10, r0 set to 0x10
cmp/ge r3,r0
bf loc_8C08F302
mov.b @(0x04,r14),r0
mov 0x00,r2 ; r2 set to 0x00, r2 set to 0x00, r2 set to 0x00
add 0x01,r0 ; r0 set to 0x11, r0 set to 0x11
mov.b r0,@(0x04,r14)
mov.w @(loc_8C08F36A,pc),r0 ; r0 set to 0x12C, r0 set to 0x12C, r0 set to 0x12c
mov.b r2,@(r0,r14)
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c08f302:
mov.w @(loc_8C08F36C,pc),r0
mov.b @(r0,r5),r0
extu.b r0,r0
cmp/eq 0x1D,r0 
bf loc_8c08f318
mov.w @(loc_8C08F36E,pc),r0
mov.b @(r0,r5),r2
mov.b r2,@(r0,r14) 
add 0x01,r0
mov.w @(r0,r5),r3
mov.w r3,@(r0,r14) 

loc_8c08f318:
mov.b @(0x05,r14),r0 
mov r14,r4
mov.l @(bank08.loc_8c08f380,pc),r1
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x000B
#data 0x6EF6

loc_8C08F32C:
mov.w @(loc_8C08F370,pc),r0 ; r0 set to 0x141
mov.b @(r0,r5),r3
tst r3,r3
bt loc_8C08F33c
mov.b @(0x05,r4),r0
add 0x01,r0 ; r0 set to 0x142
rts
mov.b r0,@(0x05,r4)
;-------------------------------------------------------------------------------

#align4
loc_8c08f33c:
mov.w @(loc_8C08F36C,pc),r0
mov.b @(r0,r5),r0
extu.b r0,r0
cmp/eq 0x15,r0 
bf loc_8c08f350
mov.w @(loc_8C08F372,pc),r0
mov.b @(r0,r5),r0
extu.b r0,r0
cmp/eq 0x02,r0 
bt loc_8c08f35e

loc_8c08f350:
mov.b @(0x04,r4),r0 
mov 0x00,r3
add 0x01,r0
mov.b r0,@(0x04,r4) 
mov.w @(bank08.loc_8c08f36a,pc),r0
rts 
mov.b r3,@(r0,r4) 
;-------------------------------------------------------------------------------

loc_8c08f35e:
bra bank08.loc_8c08f48c
nop 
#data 0x000B
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c08f366:
#data 0x019C

loc_8c08f368:
#data 0x01A1

loc_8c08f36a:
#data 0x012C

loc_8C08F36C:
#data 0x01D0
loc_8c08f36e:
#data 0x012D

loc_8c08f370:
#data 0x0141

loc_8C08F372:
#data 0x01E9

loc_8c08f374:
#data 0x2492
#data 0x4009

loc_8c08f378:
#data 0x96B0
#data 0x8C28

loc_8c08f37c:
#data 0x4E8C
#data 0x8C03

loc_8c08f380:
#data 0x504C
#data 0x8C15

loc_8c08f384:
#data 0x2FE6
#data 0x4F22
#data 0x7FF4
#data 0xE15C
#data 0x6E43
#data 0x31EC
#data 0xE034
#data 0xF318
#data 0xF2E6
#data 0xE168
#data 0x31EC
#data 0xF230
#data 0xFE27
#data 0xE05C
#data 0xF2E6
#data 0xF318
#data 0xE160
#data 0x31EC
#data 0xF230
#data 0xFE27
#data 0xE038
#data 0xF2E6
#data 0xF318
#data 0xE16C
#data 0x31EC
#data 0xF230
#data 0xFE27
#data 0xE060
#data 0xF2E6
#data 0xF318
#data 0xF230
#data 0xFE27
#data 0x84E6
#data 0x2008
#data 0x8B0E
#data 0xE068
#data 0xF3E6
#data 0xE05C
#data 0xF2E6
#data 0xF232
#data 0xF38D
#data 0xF235
#data 0x8B06
#data 0x84E6
#data 0x7001
#data 0x80E6
#data 0xE068
#data 0xFE37
#data 0xE05C
#data 0xFE37

loc_8c08f3e8:
#data 0x9064
#data 0x03EC
#data 0x2338
#data 0x8B1A
#data 0x9061
#data 0x03EC
#data 0x2338
#data 0x8B16
#data 0xC732
#data 0xF308
#data 0x905C
#data 0xF256
#data 0xE004
#data 0xF230
#data 0xFF27
#data 0xE038
#data 0xF1E6
#data 0xF125
#data 0x8904
#data 0xE004
#data 0xF2F6
#data 0xE038
#data 0xA007
#data 0xFE27

loc_8c08f418:
#data 0xD22B
#data 0x420B
#data 0x64E3
#data 0x7F0C
#data 0x4F26
#data 0x000B
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c08f426:
#data 0x84E4
#data 0xE300
#data 0x65F3
#data 0xE601
#data 0x7001
#data 0x80E4
#data 0xE708
#data 0x9041
#data 0x0E34
#data 0xE034
#data 0xF3E6
#data 0xC723
#data 0xD324
#data 0xFF3A
#data 0xF308
#data 0xE038
#data 0xF2E6
#data 0xE004
#data 0xF230
#data 0xFF27
#data 0x430B
#data 0x64E3
#data 0xD220
#data 0xE549
#data 0x420B
#data 0x64E3
#data 0x7F0C
#data 0x4F26
#data 0x000B
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c08f462:
#data 0x8444
#data 0xE200
#data 0x5546
#data 0x7001
#data 0x9327
#data 0x8044
#data 0x9024
#data 0x353C
#data 0x0424
#data 0xE01D
#data 0x015C
#data 0x2118
#data 0x8902
#data 0x025C
#data 0x72FF
#data 0x0524

loc_8c08f482:
#data 0x000B
#data 0x0009

loc_8C08F486:
mov.l @(loc_8C08F4D8,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop

#align4
loc_8C08F48C:
#data 0xD714C713
#data 0x9014F408
#data 0x2338035d
#data 0x66738F24
#data 0xF04C9010
#data 0xE034015c
#data 0x4108F256
#data 0x6361361c
#data 0xF32D435a
#data 0xF23EA023
#data 0x019F019e
#data 0x012C041c
#data 0x013002A4
#data 0x00000140
#data 0x41892492

#align4
loc_8C08F4C8:
#data bank04.loc_8c045748
#data 0xC1892492

#align4
loc_8C08F4D0:
#data bank10.loc_8c10235c

loc_8C08F4D4:
#data bank04.loc_8c04223a

loc_8C08F4D8:
#data bank04.loc_8c0450C0
#data 0x3FD55555

#align4
loc_8C08F4E0:
#data bank15.loc_8c155054

loc_8C08F4E4:
#data 0x025C901a
#data 0xF256E034
#data 0x362C4208
#data 0x435A6361
#data 0xF342F32d
#data 0xF231

loc_8C08F4FA:
#data 0xF427
#data 0x035C900e
#data 0x373C4308
#data 0x63038571
#data 0xE038435a
#data 0xC704F256
#data 0xF008F32d
#data 0xF23EE038
#data 0xF427000b
;-------------------------------------------------------------------------------
#data 0x00000140
#data 0x40092492
#data 0x7FFC4F22
#data 0xE501D351
#data 0xE6002F42
#data 0x6463430b
#data 0x8D072008
#data 0xD34E6403
#data 0x1434E020
#data 0x62F2E300
#data 0x04341426
#data 0x4F267F04
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C08F550:
mov r4,r3
mov.l @(loc_8C08F678,pc),r1 ; r1 set to 0x8C155064
mov.l r4,@-r15
mov.b @(0x04,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C08F562:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C08F65C,pc),r3 ; r3 set to 0x1D05
mov.l r13,@-r15
mov.w @(loc_8C08F65E,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C08F65E,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(0x18,r14),r4
mov.b r0,@(0x04,r14)
mov 0x26,r0 ; r0 set to 0x26
mov.w r3,@(r0,r14)
mov.w @(loc_8C08F660,pc),r0 ; r0 set to 0xC0
mov.l @(loc_8C08F67C,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C08F662,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C08F664,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C08F680,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov 0x0A,r3 ; r3 set to 0x0a
mov 0x20,r4 ; r4 set to 0x20
mov.b r2,@(r0,r14)
mov.w @(loc_8C08F662,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r14)
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14)
mov.w @(loc_8C08F666,pc),r0 ; r0 set to 0x13c
mov.b r4,@(r0,r14)
add 0x01,r0 ; r0 set to 0x13d
mov.b r4,@(r0,r14)
add 0x01,r0 ; r0 set to 0x13e
mov.b r4,@(r0,r14)
add 0x01,r0 ; r0 set to 0x13f
mov.b r4,@(r0,r14)
add 0xF1,r0 ; r0 set to 0x130
mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???	
tst r3,r3
bf/s loc_8C08F5F4
mov 0x42,r4 ; r4 set to 0x42
mov 0x22,r0 ; r0 set to 0x22
mov 0x0C,r1 ; r1 set to 0x0c
bra loc_8C08F5Fa
mov.b r1,@(r0,r14)

loc_8C08F5F4:
mov 0x22,r0 ; r0 set to 0x22
mov 0x04,r2 ; r2 set to 0x04
mov.b r2,@(r0,r14)

loc_8C08F5FA:
mov.w @(loc_8C08F668,pc),r0 ; r0 set to 0x19C, r0 set to 0x19c
mov.l @(loc_8C08F684,pc),r13 ; r13 set to 0x8C034E8C, r13 set to 0x8C034E8c
mov.b r4,@(r0,r14)
add 0x01,r0 ; r0 set to 0x19D, r0 set to 0x19d
mov.b r4,@(r0,r14)
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
mov.b @(r0,r14),r3
tst r3,r3
bf loc_8C08F628
mov.w @(loc_8C08F66A,pc),r0 ; r0 set to 0xD0, r0 set to 0xD0
mov 0x00,r4 ; r4 set to 0x00, r4 set to 0x00
mov 0x02,r3 ; r3 set to 0x02, r3 set to 0x02
mov.l r4,@(r0,r14)
add 0xFC,r0 ; r0 set to 0xCC, r0 set to 0xCc
mov.l r4,@(r0,r14)
add 0x08,r0 ; r0 set to 0xD4, r0 set to 0xD4
mov 0x16,r5 ; r5 set to 0x16, r5 set to 0x16
mov.l r3,@(r0,r14)
mov 0x1D,r6 ; r6 set to 0x1D, r6 set to 0x1d
jsr @r13
mov r14,r4 ; r4 ??? bc r14 is ???, r4 ??? bc r14 is ???	
bra loc_8C08F63c
nop

loc_8C08F628:
mov.w @(loc_8C08F66C,pc),r0 ; r0 set to 0xCc
mov.l @(r0,r14),r2
tst r2,r2
bt/s loc_8C08F636
mov 0x16,r5 ; r5 set to 0x16
bra loc_8C08F638
mov 0x2A,r6

loc_8C08F636:
mov 0x29,r6 ; r6 set to 0x29

loc_8C08F638:
jsr @r13
mov r14,r4

loc_8C08F63C:
lds.l @r15+,pr
mov r14,r4
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C08F644:
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20, r0 set to 0x20, r0 set to 0x20
mov.l r14,@-r15
mov.b @(r0,r4),r3
tst r3,r3
bf/s loc_8C08F656
mov.l @(0x18,r4),r14
mov r14,r5
bra loc_8C08F688
mov.l @r15+,r14

loc_8C08F656:
mov r14,r5
bra loc_8C08F7A8
mov.l @r15+,r14

loc_8C08F65C:
#data 0x1D05

loc_8C08F65E:
#data 0x00Dc

loc_8C08F660:
#data 0x00C0

loc_8C08F662:
#data 0x012c

loc_8C08F664:
#data 0x01A3

loc_8C08F666:
#data 0x013c

loc_8C08F668:
#data 0x019c

loc_8C08F66A:
#data 0x00D0

loc_8C08F66C:
#data 0x00Cc
#data 0x0000

#align4
loc_8C08F670:
#data bank04.loc_8c044F12

loc_8C08F674:
#data loc_8C08F550

loc_8C08F678:
#data bank15.loc_8c155064

loc_8C08F67C:
#data bank12.loc_8c129560

loc_8C08F680:
#data bank12.loc_8c1294C8

loc_8C08F684:
#data bank03.loc_8c034e8c


loc_8C08F688:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C08F786,pc),r0 ; r0 set to 0x158
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C08F788,pc),r3 ; r3 set to 0x1603
sts.l pr,@-r15
mov.w @(r0,r13),r4
extu.w r4,r4
cmp/eq r3,r4
bt loc_8C08F6Be
mov.w @(loc_8C08F78A,pc),r1 ; r1 set to 0x1601
cmp/eq r1,r4
bt loc_8C08F6Be
mov.w @(loc_8C08F78C,pc),r2 ; r2 set to 0x1602
cmp/eq r2,r4
bt loc_8C08F6Be
mov.w @(loc_8C08F78E,pc),r1 ; r1 set to 0x161b
cmp/eq r1,r4
bt loc_8C08F6Be
mov.b @(0x04,r14),r0
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0 ; r0 set to 0x159
mov.b r0,@(0x04,r14)
mov.w @(loc_8C08F790,pc),r0 ; r0 set to 0x12c
bra loc_8C08F6E0
mov.b r3,@(r0,r14)

loc_8C08F6BE:
mov.b @(0x05,r14),r0
tst r0,r0
bf loc_8C08F6Ce
mov r13,r5
bsr loc_8C08F6E8
mov r14,r4
bra loc_8C08F6D4
nop

loc_8C08F6CE:
mov r13,r5
bsr loc_8C08F734
mov r14,r4

loc_8C08F6D4:
lds.l @r15+,pr
mov r13,r5
mov r14,r4
mov.l @r15+,r13
bra loc_8C08F8A8
mov.l @r15+,r14

loc_8C08F6E0:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8c08f6e8:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(bank08.loc_8c08f79c,pc),r3
jsr @r3
mov r4,r14
mov.w @(loc_8C08F792,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bf loc_8c08f72e
mov.b @(0x05,r14),r0 
mov 0x01,r5
mov.l @(bank08.loc_8c08f7a0,pc),r3
mov 0x02,r6
add 0x01,r0
mov.b r0,@(0x05,r14) 
jsr @r3
mov r14,r4
tst r0,r0
bt/s loc_8c08f72e
mov r0,r4
mov.l @(bank08.loc_8c08f7a4,pc),r3
mov 0x20,r0
mov.w @(loc_8C08F794,pc),r5
mov.l r3,@(0x10,r4) 
mov 0x01,r3
mov.l @(0x18,r14),r2
mov.l r2,@(0x18,r4) 
mov.b r3,@(r0,r4) 
mov r5,r0
nop 
add 0xD1,r0
mov.l r5,@(r0,r4) 
mov.w @(loc_8C08F796,pc),r0
mov.l r5,@(r0,r4) 
mov.l r14,@(0x14,r4) 

loc_8c08f72e:
lds.l @r15+,pr 
rts 
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c08f734:
#data 0x2FE6
#data 0x4F22
#data 0xD318
#data 0x430B
#data 0x6E43
#data 0xD218
#data 0xE501
#data 0xE602
#data 0x420B
#data 0x64E3
#data 0x2008
#data 0x8D19
#data 0x6403
#data 0xD215
#data 0xE020
#data 0xE500
#data 0x1424
#data 0xE201
#data 0x53E6
#data 0x1436
#data 0x0424
#data 0x901A
#data 0x0456
#data 0x9019
#data 0x14E5
#data 0x0456
#data 0x7004
#data 0x03EE
#data 0x73FF
#data 0x2338
#data 0x8F06
#data 0x0E36
#data 0x9011
#data 0xE105
#data 0x930C
#data 0x0E16
#data 0x70FC
#data 0x0436

loc_8c08f780:
#data 0x4F26
#data 0x000B
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c08f786:
#data 0x0158

loc_8c08f788:
#data 0x1603

loc_8c08f78a:
#data 0x1601

loc_8c08f78c:
#data 0x1602

loc_8c08f78e:
#data 0x161B

loc_8c08f790:
#data 0x012C

loc_8C08F792:
#data 0x0141

loc_8C08F794:
#data 0x00FF

loc_8C08F796:
#data 0x00CC
#data 0x00D0
#data 0x00D4

#align4
loc_8c08f79c:
#data bank03.loc_8c034dee

loc_8c08f7a0:
#data bank04.loc_8c044f12

loc_8c08f7a4:
#data bank08.loc_8c08f550

loc_8c08f7a8:
#data 0x2FE6
#data 0x2FD6
#data 0x2FC6
#data 0x4F22
#data 0x7FFC
#data 0x6E43
#data 0xE402
#data 0x2F52
#data 0x5CE5
#data 0x56E2
#data 0x84C4
#data 0x600C
#data 0x3043
#data 0x8D13
#data 0xED00
#data 0x8464
#data 0x600C
#data 0x3043
#data 0x890E
#data 0x65F2
#data 0xB092
#data 0x64E3
#data 0x65C3
#data 0xB052
#data 0x64E3
#data 0xE020
#data 0xD23A
#data 0x03EC
#data 0x7301
#data 0x0E34
#data 0x420B
#data 0x64E3
#data 0x2008
#data 0x8B04

loc_8c08f7ec:
#data 0xE003
#data 0x80E4
#data 0x9061
#data 0xA034
#data 0x0ED4

loc_8c08f7f6:
#data 0x905F
#data 0x03EC
#data 0x2338
#data 0x8B04
#data 0x905C
#data 0x02EC
#data 0x2228
#data 0x8904
#data 0x9058

loc_8c08f808:
#data 0x0ED4
#data 0x9057
#data 0xA027
#data 0x0ED6

loc_8c08f810:
#data 0x9456
#data 0xE342
#data 0x9053
#data 0x34EC
#data 0x0E34
#data 0x6342
#data 0x2338
#data 0x8B03
#data 0x5341
#data 0x2338
#data 0x8B00
#data 0x0ED4

loc_8c08f828:
#data 0x904B
#data 0x64E3
#data 0x63F2
#data 0x023C
#data 0xD326
#data 0x0E24
#data 0x700B
#data 0x0ED5
#data 0x70F2
#data 0x0ED4
#data 0x7026
#data 0x0ED6
#data 0x84E2
#data 0x6232
#data 0x600C
#data 0x4000
#data 0x727C
#data 0x012D
#data 0x7101
#data 0x0215
#data 0x7F04
#data 0x4F26
#data 0xD21E
#data 0x6CF6
#data 0x6DF6
#data 0x422B
#data 0x6EF6

loc_8c08f85e:
#data 0x7F04
#data 0x4F26
#data 0x6CF6
#data 0x6DF6
#data 0x000B
#data 0x6EF6

loc_8C08F86A:
mov.b @(0x04,r4),r0
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4)
mov.w @(loc_8C08F8B6,pc),r0 ; r0 set to 0x12c
rts
mov.b r3,@(r0,r4)
;-------------------------------------------------------------------------------

loc_8C08F878:
mov.l @(loc_8C08F8D4,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop

loc_8C08F87E:
#data 0x7FFc
#data 0x2F52901e
#data 0x2338034e
#data 0xE5168D07
#data 0xE701911a
#data 0x001C60F2
#data 0xA0042709
#data 0xE62a

loc_8C08F89A:
#data 0x9013
#data 0x67F2E629
#data 0x077c

loc_8C08F8A2:
#data 0xD30d
#data 0x7F04432b


loc_8C08F8A8:
mov.w @(loc_8C08F8C6,pc),r0 ; r0 set to 0x130
mov.w @(r0,r5),r3
tst r3,r3
bf loc_8C08F8E0
mova @(loc_8C08F8DC,pc),r0  ; r0 set to 0x8C08F8Dc
bra loc_8C08F8E2
fmov.s @r0,fr3

loc_8C08F8B6:
#data 0x012c
#data 0x019E019f
#data 0x019C00D0
#data 0x01A100Cc
#data 0x0141

loc_8C08F8C6:
#data 0x0130

#align4
loc_8C08F8C8:
#data bank03.loc_8c03340c
#data 0x8C2896B0

#align4
loc_8C08F8D0:
#data bank04.loc_8c045748

loc_8C08F8D4:
#data bank04.loc_8c0450C0

loc_8C08F8D8:
#data bank03.loc_8c034F54

loc_8C08F8DC:
#data 0x80000000


loc_8C08F8E0:
fldi0 fr3

loc_8C08F8E2:
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r5),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r4)
mova @(loc_8C08F944,pc),r0  ; r0 set to 0x8C08F944, r0 set to 0x8C08F944
fmov.s @r0,fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r5),fr2
fadd fr3,fr2
rts
fmov.s fr2,@(r0,r4)
;-------------------------------------------------------------------------------

#align4
loc_8C08F8F8:
#data 0x034E9022
#data 0x89062338
#data 0x036CE020
#data 0x8B092338
#data 0xA009C70f
#data 0xF408

loc_8C08F90E:
#data 0xE020
#data 0x2228026c
#data 0xC70D8B02
#data 0xF408A002

#align4
loc_8C08F91C:
#data 0xF408C70c

#align4
loc_8C08F920:
#data 0x035D900f
#data 0x8B032338
#data 0xF366E034
#data 0xF340A003

#align4
loc_8C08F930:
#data 0xF366E034
#data 0xF341

loc_8C08F936:
#data 0xF437
#data 0xF366E038
#data 0xF437000b
;-------------------------------------------------------------------------------
#data 0x013000Cc

#align4
loc_8C08F944:
#data 0x43892492
#data 0xC2055555
#data 0xC2A6AAAa
#data 0xC2555555
#data 0x7FF84F22
#data 0xE600D340
#data 0x2F501F41
#data 0x430BE501
#data 0x20086463
#data 0x64038D07
#data 0xE020D33c
#data 0x52F11434
#data 0x63F01426
#data 0x7F080434
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C08F982:
mov r4,r3
mov.l @(loc_8C08FA64,pc),r1 ; r1 set to 0x8C1550C4
mov.l r4,@-r15
mov.b @(0x04,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C08F994:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C08FA50,pc),r3 ; r3 set to 0x1D06
mov.l r13,@-r15
mov.w @(loc_8C08FA52,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C08FA52,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.b r0,@(0x04,r14)
mov 0x26,r0 ; r0 set to 0x26
mov.w r3,@(r0,r14)
mov.w @(loc_8C08FA54,pc),r0 ; r0 set to 0xC0
mov.l @(loc_8C08FA68,pc),r3 ; r3 set to 0x8C129560
mov.l @(0x18,r14),r4
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C08FA56,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C08FA58,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C08FA6C,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x08,r3 ; r3 set to 0x08
mov r14,r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov r4,r2
mov.b r3,@(r0,r14)
add 0x34,r2
mov.w @(loc_8C08FA56,pc),r0 ; r0 set to 0x12c
add 0x34,r1
mov.l @(loc_8C08FA70,pc),r3 ; r3 set to 0x8C155074
mov.b r5,@(r0,r14)
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r13
extu.b r13,r13
shll2 r13
shll2 r13
add r3,r13
mov.l @(loc_8C08FA6C,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mova @(loc_8C08FA74,pc),r0  ; r0 set to 0x8C08FA74
fmov.s @r0,fr5 ; r5 ??	
mova @(loc_8C08FA78,pc),r0  ; r0 set to 0x8C08FA78
fmov.s @r0,fr4
mov.w @(loc_8C08FA5A,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???	
tst r3,r3
bf loc_8C08FA7c
mov r14,r2
mov 0x34,r0 ; r0 set to 0x34
add r0,r2
fmov fr5,fr0 ; r0 ??? bc r5 is ???	
mov.l r2,@-r15
mov.w @(0x08,r13),r0
mov r0,r3
lds r3,fpul
mov.l @r15+,r3
float fpul,fr3
fmov.s @r3,fr2
fmac fr0,fr3,fr2
fmov.s fr2,@r3
mov.l @r13,r2
lds r2,fpul
float fpul,fr3
fmul fr5,fr3
bra loc_8C08FA9e
fdiv fr4,fr3

loc_8C08FA50:
#data 0x1D06

loc_8C08FA52:
#data 0x00Dc

loc_8C08FA54:
#data 0x00C0

loc_8C08FA56:
#data 0x012c

loc_8C08FA58:
#data 0x01A3

loc_8C08FA5A:
#data 0x0130

#align4
loc_8C08FA5C:
#data bank04.loc_8c044F12

loc_8C08FA60:
#data loc_8C08F982

loc_8C08FA64:
#data bank15.loc_8c1550C4

loc_8C08FA68:
#data bank12.loc_8c129560

loc_8C08FA6C:
#data bank12.loc_8c1294C8

loc_8C08FA70:
#data bank15.loc_8c155074

loc_8C08FA74:
#data 0x3FD55555

#align4
loc_8C08FA78:
#data 0x47800000


loc_8C08FA7C:
mov.w @(0x08,r13),r0
mov 0x34,r2 ; r2 set to 0x34
add r14,r2 ; r2 ??? bc r14 is ???	
mov r0,r3
lds r3,fpul
fmov.s @r2,fr2
float fpul,fr3
fmul fr5,fr3
fneg fr3
fadd fr3,fr2
fmov.s fr2,@r2
mov.l @r13,r3
lds r3,fpul
float fpul,fr3
fmul fr5,fr3
fdiv fr4,fr3
fneg fr3

loc_8C08FA9E:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
mov r14,r2
fmov.s fr3,@(r0,r14)
mova @(loc_8C08FBC8,pc),r0  ; r0 set to 0x8C08FBC8, r0 set to 0x8C08FBC8
fmov.s @r0,fr5
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
add r0,r2
mov.l r2,@-r15
mov 0x44,r4 ; r4 set to 0x44, r4 set to 0x44
mov.w @(0x0A,r13),r0
fmov fr5,fr0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???	
mov r0,r3
lds r3,fpul
mov.l @r15+,r3
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
float fpul,fr3
fmov.s @r3,fr2
fmac fr0,fr3,fr2
fmov.s fr2,@r3
mov.l @(0x04,r13),r2
lds r2,fpul
float fpul,fr3
fmul fr5,fr3
fdiv fr4,fr3
fldi0 fr4
fmov.s fr3,@(r0,r14)
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r14)
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr4,@(r0,r14)
mov.w @(loc_8C08FBBC,pc),r0 ; r0 set to 0x19C, r0 set to 0x19c
mov.b r4,@(r0,r14)
add 0x01,r0 ; r0 set to 0x19D, r0 set to 0x19d
mov.w @(loc_8C08FBBE,pc),r1 ; r1 set to 0x1A1, r1 set to 0x1A1
mov.b r4,@(r0,r14)
mov 0x00,r4 ; r4 set to 0x00, r4 set to 0x00
mov.b @(0x0D,r13),r0
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
mov.l @(loc_8C08FBCC,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
mov.b r0,@r1
mov.w @(loc_8C08FBC0,pc),r0 ; r0 set to 0x1AC, r0 set to 0x1Ac
mov.w r4,@(r0,r14)
add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19e
mov.b r4,@(r0,r14)
add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4
mov.l r4,@(r0,r14)
mov.b @(0x02,r14),r0
mov.l @r3,r2
extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4
shll r0 ; r0 set to 0x188, r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2)
mov.b @(0x0C,r13),r0
mov.l @(loc_8C08FBD0,pc),r2 ; r2 set to 0x8C034E8C, r2 set to 0x8C034E8c
mov r0,r6 ; r6 set to 0x188, r6 set to 0x188
jsr @r2
mov r14,r4 ; r4 ??? bc r14 is ???, r4 ??? bc r14 is ???	
lds.l @r15+,pr
mov r14,r4
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C08FB1E:
mov.l r14,@-r15
mov r4,r14
mov.l @(0x18,r14),r5 ; r5 ??? bc r14 is ???, r5 ??? bc r14 is ???	
mov 0x02,r3 ; r3 set to 0x02, r3 set to 0x02, r3 set to 0x02
mov.b @(0x04,r5),r0
extu.b r0,r0 ; r0 set to 0x88, r0 set to 0x88
cmp/ge r3,r0
bf loc_8C08FB3e
mov.b @(0x04,r14),r0
mov 0x00,r2 ; r2 set to 0x00, r2 set to 0x00, r2 set to 0x00
add 0x01,r0 ; r0 set to 0x89, r0 set to 0x89
mov.b r0,@(0x04,r14)
mov.w @(loc_8C08FBC2,pc),r0 ; r0 set to 0x12C, r0 set to 0x12C, r0 set to 0x12c
mov.b r2,@(r0,r14)
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C08FB3E:
mov 0x20,r0 ; r0 set to 0x20
mov r14,r4
mov.b @(r0,r14),r3
mov.l @(loc_8C08FBD4,pc),r0 ; r0 set to 0x8C1550D4
extu.b r3,r3
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C08FB54:
mov r4,r3
mov.l @(loc_8C08FBD8,pc),r1 ; r1 set to 0x8C1550E8
mov.l r4,@-r15
mov.b @(0x05,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C08FB66:
#data 0x8445
#data 0x7001E610
#data 0x90298045
#data 0x70010464
#data 0x70010464
#data 0x70010464
#data 0x0464

loc_8C08FB7E:
#data 0x2FE6
#data 0xD3164F22
#data 0x6E43430b
#data 0x02EC901d
#data 0x8F112228
#data 0x84E564E3
#data 0x31ECE15c
#data 0x80E57001
#data 0xF2E6E034
#data 0xE168F318
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xF318F2E6
#data 0xFE27F230

#align4
loc_8C08FBB4:
#data 0xD30A4F26
#data 0x6EF6432b

loc_8C08FBBC:
#data 0x019c

loc_8C08FBBE:
#data 0x01A1

loc_8C08FBC0:
#data 0x01Ac

loc_8C08FBC2:
#data 0x012c
#data 0x0141013c

#align4
loc_8C08FBC8:
#data 0x40092492

#align4
loc_8C08FBCC:
#data 0x8C2896B0

#align4
loc_8C08FBD0:
#data bank03.loc_8c034e8c

loc_8C08FBD4:
#data bank15.loc_8c1550D4

loc_8C08FBD8:
#data bank15.loc_8c1550E8

loc_8C08FBDC:
#data bank03.loc_8c034dee

loc_8C08FBE0:
#data bank04.loc_8c045748

loc_8C08FBE4:
#data 0x6E432FE6
#data 0xD351E15c
#data 0xE03431Ec
#data 0xF3184F22
#data 0xF2E6E168
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x64E3430b
#data 0x8F062008
#data 0x84E464E3
#data 0x7001E300
#data 0x908480E4
#data 0x0E34

loc_8C08FC1E:
#data 0xD345
#data 0x0009430b
#data 0xD2444F26
#data 0x422B64E3
#data 0x6EF6


loc_8C08FC2E:
mov r4,r3
mov.l @(loc_8C08FD3C,pc),r1 ; r1 set to 0x8C1550F4
mov.l r4,@-r15
mov.b @(0x05,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

#align4
loc_8C08FC40:
#data 0xE6188445
#data 0x80457001
#data 0x0464906e
#data 0x04647001
#data 0xE6107001
#data 0x70010464
#data 0xC7390464
#data 0xE06CF308
#data 0xF437

loc_8C08FC62:
#data 0x2FE6
#data 0xD3334F22
#data 0x6E43430b
#data 0x02EC905d
#data 0x8F1F2228
#data 0x84E564E3
#data 0x31ECE15c
#data 0x80E57001
#data 0xF2E6E034
#data 0xE168F318
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

#align4
loc_8C08FCB4:
#data 0xD3204F26
#data 0x6EF6432b

#align4
loc_8C08FCBC:
#data 0xE15C2FE6
#data 0x31EC6E43
#data 0x4F22E034
#data 0xF318F2E6
#data 0x31ECE168
#data 0xFE27F230
#data 0xF318E05c
#data 0xF2E6E160
#data 0xF23031Ec
#data 0xE038FE27
#data 0xF318F2E6
#data 0x31ECE16c
#data 0xFE27F230
#data 0xF2E6E060
#data 0xF230F318
#data 0x9017FE27
#data 0xE038F356
#data 0xF235F2E6
#data 0x64E38D07
#data 0x700184E5
#data 0x900D80E5
#data 0xE038F356
#data 0xFE37

loc_8C08FD16:
#data 0xD307
#data 0x0009430b
#data 0xD2064F26
#data 0x422B64E3
#data 0x012C6EF6
#data 0x0141013c
#data 0x0000041c

#align4
loc_8C08FD30:
#data bank03.loc_8c0332E0

loc_8C08FD34:
#data bank03.loc_8c034dee

loc_8C08FD38:
#data bank04.loc_8c045748

loc_8C08FD3C:
#data bank15.loc_8c1550F4
#data 0xBF892492

#align4
loc_8C08FD44:
#data 0x6E432FE6
#data 0xD33CE15c
#data 0xE03431Ec
#data 0xF3184F22
#data 0xF2E6E168
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x64E3430b
#data 0x8F062008
#data 0x84E464E3
#data 0x7001E300
#data 0x905D80E4
#data 0x0E34

loc_8C08FD7E:
#data 0xD330
#data 0x0009430b
#data 0xD22F4F26
#data 0x422B64E3
#data 0x6EF6


loc_8C08FD8E:
mov r4,r3
mov.l @(loc_8C08FE48,pc),r1 ; r1 set to 0x8C155104
mov.l r4,@-r15
mov.b @(0x05,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C08FDA0:
mov.b @(0x05,r4),r0
mov 0x10,r6 ; r6 set to 0x10
add 0x01,r0
mov.b r0,@(0x05,r4)
mov.w @(loc_8C08FE3A,pc),r0 ; r0 set to 0x13c
mov.b r6,@(r0,r4)
add 0x01,r0 ; r0 set to 0x13d
mov.b r6,@(r0,r4)
add 0x01,r0 ; r0 set to 0x13e
mov 0x20,r6 ; r6 set to 0x20
mov.b r6,@(r0,r4)
add 0x01,r0 ; r0 set to 0x13f
mov.b r6,@(r0,r4)

loc_8C08FDBA:
mov.l r14,@-r15
mov 0x5C,r1 ; r1 set to 0x5C, r1 set to 0x5c
mov r4,r14
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
mov.l @(loc_8C08FE3C,pc),r3 ; r3 set to 0x8C0332E0, r3 set to 0x8C0332E0
sts.l pr,@-r15
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???	
mov 0x68,r1 ; r1 set to 0x68, r1 set to 0x68
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60, r1 set to 0x60
fmov.s @(r0,r14),fr2
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6C, r1 set to 0x6c
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8C08FE14
mov.b @(0x04,r14),r0
mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
add 0x01,r0 ; r0 set to 0x61, r0 set to 0x61
mov.b r0,@(0x04,r14)
mov.w @(loc_8C08FE38,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
mov.b r3,@(r0,r14)
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C08FE14:
lds.l @r15+,pr
mov.l @(loc_8C08FE44,pc),r3 ; r3 set to 0x8C045748
mov r14,r4
jmp @r3
mov.l @r15+,r14
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C08FE24:
mov.b @(0x04,r4),r0
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4)
mov.w @(loc_8C08FE38,pc),r0 ; r0 set to 0x12c
rts
mov.b r3,@(r0,r4)
;-------------------------------------------------------------------------------

loc_8C08FE32:
mov.l @(loc_8C08FE4C,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop

loc_8C08FE38:
#data 0x012c

loc_8C08FE3A:
#data 0x013c

#align4
loc_8C08FE3C:
#data bank03.loc_8c0332E0

loc_8C08FE40:
#data bank03.loc_8c034dee

loc_8C08FE44:
#data bank04.loc_8c045748

loc_8C08FE48:
#data bank15.loc_8c155104

loc_8C08FE4C:
#data bank04.loc_8c0450C0
#data 0x4F222FE6
#data 0x2F507FFc
#data 0xD347E501
#data 0xE6006E43
#data 0x6463430b
#data 0x8D0F2008
#data 0xE0206403
#data 0x1434D343
#data 0x937C62F0
#data 0x14E60424
#data 0x804184E1
#data 0x0435E026
#data 0x02ED9076
#data 0x04259075
#data 0x00096043
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C08FE94:
mov.l r14,@-r15
sts.l pr,@-r15
bsr bank09.loc_8c090418
mov r4,r14
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r2
tst r2,r2
bf loc_8C08FEB6
mov.b @(0x04,r14),r0
mov r14,r4
mov.l @(loc_8C08FF80,pc),r1 ; r1 set to 0x8C15510c
extu.b r0,r0 ; r0 set to 0x20
lds.l @r15+,pr
shll2 r0 ; r0 set to 0x80
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C08FEB6:
mov.b @(0x04,r14),r0
mov r14,r4
mov.l @(loc_8C08FF84,pc),r1 ; r1 set to 0x8C15511c
extu.b r0,r0
lds.l @r15+,pr
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C08FEC8:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov.w @(loc_8C08FF72,pc),r3 ; r3 set to 0xCc
mov r4,r14
add r14,r3 ; r3 ??? bc r14 is ???	
mov.l r3,@(0x04,r15)
mov.w @(loc_8C08FF74,pc),r3 ; r3 set to 0x2A4
mov.b @(0x04,r14),r0
add 0x01,r0
mov.b r0,@(0x04,r14)
mov.l @(0x18,r14),r13
add r13,r3 ; r3 ??? bc r13 is ???	
mov.l r3,@r15
bsr bank09.loc_8c0902De
mov r14,r4
mov.l @(0x04,r15),r3
mov.w @(loc_8C08FF70,pc),r0 ; r0 set to 0x158
mov.w @r3,r2
mov.w @(r0,r13),r3
cmp/eq r3,r2
bt loc_8C08FEFc
mov 0x02,r0 ; r0 set to 0x02
bra loc_8C08FF34
mov.b r0,@(0x04,r14)

#align4
loc_8c08fefc:
mov 0x20,r0
mov.b @(r0,r14),r3
tst r3,r3
bf loc_8c08ff0a
mov.l @r15,r3
mov 0x01,r0
mov.b r0,@(0x02,r3) 

loc_8c08ff0a:
mov.w @(loc_8C08FF76,pc),r0
mov r14,r4
mov.l @(bank08.loc_8c08ff88,pc),r2
mov r13,r5
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
add 0x08,r15
lds.l @r15+,pr 
mov.l @r15+,r13
bra bank09.loc_8c09037c
mov.l @r15+,r14

loc_8C08FF34:
add 0x08,r15
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C08FF3E:
mov.l r14,@-r15
mov 0x24,r0 ; r0 set to 0x24
mov 0x0B,r3 ; r3 set to 0x0b
mov r4,r14
mov.b r3,@(r0,r14)
mov r14,r4
mov.b @(0x05,r14),r0
mov.l @(loc_8C08FF8C,pc),r1 ; r1 set to 0x8C15512c
extu.b r0,r0 ; r0 set to 0x24
shll2 r0 ; r0 set to 0x90
mov.l @(r0,r1),r3 ; r3 ??	
jmp @r3
mov.l @r15+,r14

loc_8C08FF58:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C08FF90,pc),r3 ; r3 set to 0x8C03340c
jsr @r3
mov r4,r14
tst r0,r0
bf loc_8C08FF94
lds.l @r15+,pr
mov r14,r4
bra loc_8C09002a
mov.l @r15+,r14
#data 0x1E00

loc_8C08FF70:
#data 0x0158

loc_8C08FF72:
#data 0x00Cc

loc_8C08FF74:
#data 0x02A4
loc_8c08ff76:
#data 0x01A3

#align4
loc_8C08FF78:
#data bank04.loc_8c044F12

loc_8C08FF7C:
#data loc_8C08FE94

loc_8C08FF80:
#data bank15.loc_8c15510c

loc_8C08FF84:
#data bank15.loc_8c15511c

loc_8C08FF88:
#data bank13.loc_8c13AEFc

loc_8C08FF8C:
#data bank15.loc_8c15512c

loc_8C08FF90:
#data bank03.loc_8c03340c

loc_8c08ff94:
mov.w @(loc_8C0900CE,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bf loc_8c08ffa8
mov.w @(loc_8C0900D0,pc),r0
mov.b @(r0,r14),r2
tst r2,r2
bt loc_8c08ffc2
mov 0x00,r3
mov.b r3,@(r0,r14) 

loc_8c08ffa8:
mov 0x5C,r0
fldi0 fr4
fmov.s fr4,@(r0,r14) 
mov 0x60,r0
fmov.s fr4,@(r0,r14) 
mov 0x68,r0
fmov.s fr4,@(r0,r14) 
mov 0x6C,r0
mov r14,r4
fmov.s fr4,@(r0,r14) 
lds.l @r15+,pr 
bra loc_8c08ffee
mov.l @r15+,r14

loc_8c08ffc2:
mov 0x5C,r1
mov.l @(bank08.loc_8c0900dc,pc),r3
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
mov.l @(bank08.loc_8c0900e0,pc),r2
mov r14,r4
jmp @r2
mov.l @r15+,r14

loc_8c08ffee:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.w @(loc_8C0900D2,pc),r3
mov.l @(0x18,r14),r13
mov 0x15,r5
mov 0x0D,r6
add r13,r3
mov.l r3,@r15
mov.b @(0x05,r14),r0 
mov.l @(bank08.loc_8c0900e4,pc),r3
add 0x01,r0
mov.b r0,@(0x05,r14) 
jsr @r3
mov r14,r4
mov.b @(0x01,r14),r0 
mov r0,r3
mov.b @(0x01,r13),r0 
cmp/eq r0,r3
bf loc_8c090020
mov.l @r15,r3
mov 0x00,r0
mov.b r0,@(0x02,r3) 

loc_8c090020:
add 0x04,r15
lds.l @r15+,pr 
mov.l @r15+,r13
rts 
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c09002a:
#data 0xE002
#data 0x9651
#data 0x8044
#data 0x8441
#data 0x5546
#data 0x6303
#data 0x8451
#data 0x3300
#data 0x8F02
#data 0x365C
#data 0xE000
#data 0x8062

loc_8c090042:
#data 0x000B
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c090046:
#data 0x2FE6
#data 0xE15C
#data 0x6E43
#data 0x31EC
#data 0xE034
#data 0xD322
#data 0x4F22
#data 0xF2E6
#data 0xF318
#data 0xE168
#data 0x31EC
#data 0xF230
#data 0xFE27
#data 0xE05C
#data 0xF318
#data 0xE160
#data 0xF2E6
#data 0x31EC
#data 0xF230
#data 0xFE27
#data 0xE038
#data 0xF2E6
#data 0xF318
#data 0xE16C
#data 0x31EC
#data 0xF230
#data 0xFE27
#data 0xE060
#data 0xF2E6
#data 0xF318
#data 0xF230
#data 0xFE27
#data 0x430B
#data 0x64E3
#data 0x600E
#data 0x4011
#data 0x8904
#data 0xE002
#data 0x80E4
#data 0xE300
#data 0x901D
#data 0x0E34

loc_8c09009a:
#data 0x4F26
#data 0x000B
#data 0x6EF6

loc_8C0900A0:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.w @(loc_8C0900D6,pc),r3 ; r3 set to 0xCc
add r14,r3 ; r3 ??? bc r14 is ???	
mov.l r3,@r15
mov.b @(0x04,r14),r0
add 0x01,r0
mov.b r0,@(0x04,r14)
mov.l @(0x18,r14),r13
bsr bank09.loc_8c0902De
mov r14,r4
mov.l @r15,r2
mov.w @(loc_8C0900D8,pc),r0 ; r0 set to 0x158
mov.w @r2,r3
mov.w @(r0,r13),r2
cmp/eq r2,r3
bt loc_8C0900E8
mov 0x02,r0 ; r0 set to 0x02
bra loc_8C090112
mov.b r0,@(0x04,r14)
loc_8c0900ce:
#data 0x019e
loc_8c0900d0:
#data 0x019f
loc_8c0900d2:
#data 0x02A4
#data 0x012c

loc_8C0900D6:
#data 0x00Cc

loc_8C0900D8:
#data 0x0158
#data 0x0000

#align4
loc_8C0900DC:
#data bank03.loc_8c034dee

loc_8C0900E0:
#data bank04.loc_8c045748

loc_8C0900E4:
#data bank03.loc_8c034e8c


loc_8C0900E8:
mov.w @(loc_8C090238,pc),r0 ; r0 set to 0x1A3
mov r14,r4
mov.l @(loc_8C090244,pc),r2 ; r2 set to 0x8C13AEFc
mov r13,r5
mov.b @(r0,r14),r6
mov 0x20,r0 ; r0 set to 0x20
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
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r13
bra bank09.loc_8c09037c
mov.l @r15+,r14

loc_8C090112:
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C09011C:
mov.l r14,@-r15
mov 0x24,r0 ; r0 set to 0x24
mov 0x0B,r3 ; r3 set to 0x0b
mov r4,r14
mov.b r3,@(r0,r14)
mov r14,r4
mov.b @(0x05,r14),r0
mov.l @(loc_8C090248,pc),r1 ; r1 set to 0x8C155134
extu.b r0,r0 ; r0 set to 0x24
shll2 r0 ; r0 set to 0x90
mov.l @(r0,r1),r3 ; r3 ??	
jmp @r3
mov.l @r15+,r14

loc_8C090136:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
fmov.s fr15,@-r15
sts.l pr,@-r15
mov.l @(loc_8C09024C,pc),r3 ; r3 set to 0x8C03340c
jsr @r3
mov.l @(0x18,r14),r13
tst r0,r0
bf loc_8C090156
lds.l @r15+,pr
mov r14,r4
fmov.s @r15+,fr15
mov.l @r15+,r13
bra bank09.loc_8c09025c
mov.l @r15+,r14

loc_8C090156:
#data 0x9070
#data 0xE038F3D6
#data 0xF235F2E6
#data 0xFF8D8D0e
#data 0xF3D69069
#data 0xFE37E038
#data 0xFEF7E05c
#data 0xFEF7E060
#data 0xFEF7E068
#data 0xFEF7E06c
#data 0x64E3B03e

#align4
loc_8C090180:
#data 0x02EC905c
#data 0x8B052228
#data 0x02EC9059
#data 0x890F2228
#data 0x0E34E300

#align4
loc_8C090194:
#data 0x64E3E05c
#data 0xE060FEF7
#data 0xE068FEF7
#data 0xE06CFEF7
#data 0x4F26FEF7
#data 0x6DF6FFF9
#data 0x6EF6A026

#align4
loc_8C0901B0:
#data 0xD327E15c
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
#data 0x64E3D218
#data 0x6DF6FFF9
#data 0x6EF6422b

#align4
loc_8C0901FC:
#data 0x2FD62FE6
#data 0x7FFC4F22
#data 0x931B6E43
#data 0xE5155DE6
#data 0x33DCE612
#data 0x84E52F32
#data 0x7001D310
#data 0x430B80E5
#data 0x84E164E3
#data 0x84D16303
#data 0x8B023300
#data 0xE00063F2
#data 0x8032

loc_8C09022E:
#data 0x7F04
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C090238:
#data 0x01A3
#data 0x041c
#data 0x019F019e
#data 0x000002A4

#align4
loc_8C090244:
#data bank13.loc_8c13AEFc

loc_8C090248:
#data bank15.loc_8c155134

loc_8C09024C:
#data bank03.loc_8c03340c

loc_8C090250:
#data bank03.loc_8c034dee

loc_8C090254:
#data bank04.loc_8c045748

loc_8C090258:
#data bank03.loc_8c034e8c
