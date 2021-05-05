;==============================================
loc_8C0F0050:
	mov r4,r3
	mov.l @(loc_8C0F0178,pc),r1 ; r1 set to 0x8C15FF58
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0F0062:
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov 0x14,r0 ; r0 set to 0x14
	mov.w r0,@(0x1C,r4)
	rts
	mov.w r0,@(0x1E,r4)

;==============================================
loc_8C0F0070:
	mov.l @(loc_8C0F017C,pc),r7 ; r7 set to 0x8C2895F0
	mov.l r14,@-r15
	mov.l r12,@-r15
	mov.b @(0x06,r7),r0
	tst r0,r0
	bf/s loc_8C0F0086
	mov r4,r14
	mov.b @(0x04,r14),r0
	add 0x01,r0
	bra loc_8C0F00F6
	mov.b r0,@(0x04,r14)

loc_8C0F0086:
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bt loc_8C0F00A4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8C0F00F6
	mov.l @(loc_8C0F0180,pc),r4 ; r4 set to 0x8C26A518
	mov.b @(0x01,r4),r0
	mov.b r0,@(0x03,r4)
	mov.b @(0x02,r4),r0
	bra loc_8C0F00F6
	mov.b r0,@(0x04,r4)

loc_8c0f00a4:
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c0f00f6
	mov.b @(0x04,r14),r0
	mov 0x01,r6
	mov 0x00,r4
	add 0x01,r0
	mov 0x0A,r1
	mov.b r0,@(0x04,r14)
	mov 0x0C,r12

loc_8c0f00be:
	mov.b @(0x02,r14),r0
	mov r7,r2
	add 0x18,r2
	extu.b r0,r0
	xor r6,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r2,r0
	mov.l @(r0,r4),r5
	mov.b @r5,r3
	tst r3,r3
	bt loc_8c0f00e6
	mov.b @(0x05,r5),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c0f00e6
	mov.w @(loc_8C0F0172,pc),r0
	mov.b r1,@(r0,r5)

loc_8c0f00e6:
	add 0x04,r4
	cmp/hs r12,r4
	bf loc_8c0f00be
	mov.l @(loc_8c0f0184,pc),r2
	mov.l @r15+,r12
	mov.l @(0x18,r14),r4
	jmp @r2
	mov.l @r15+,r14

loc_8C0F00F6:
	mov.l @r15+,r12
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0F00FC:
	mov r4,r3
	mov.l @(loc_8C0F0188,pc),r1 ; r1 set to 0x8C15FF68
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0F010E:
	mov.w @(0x62,PC),r0
	mov.l @(0x18,r4),r5
	mov.w @(r0,r5),r3
	tst r3,r3
	bf loc_8c0f0120
	mov.w @(0x5A,PC),r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bt loc_8c0f0126

loc_8C0F0120:
	mov 0x02,r0
	rts 
	mov.b r0,@(0x4,r4)

;==============================================
loc_8C0F0126:
	mov.l @(0x64,PC),r2
	mov 0x40,r0
	mov.l @(0x64,PC),r1
	mov.w r0,@(0x1C,r4)
	mov 0x3C,r0
	mov.l @r2,r3
	mov.w r1,@(r0,r3)
	mov.b @(0x4,r4),r0
	add 0x01,r0
	bra loc_8c0f0140
	mov.b r0,@(0x4,r4)

;unused
	rts 
	nop 

;==============================================
loc_8C0F0140:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c0f015c
	mov.b @(0x4,r4),r0
	mov 0x00,r1
	mov.l @(0x38,PC),r2
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x3C,r0
	mov.l @r2,r3
	mov.w r1,@(r0,r3)

loc_8C0F015C:
	rts 
	nop 
 
;==============================================
loc_8C0F0160:
	mov r4,r3
	mov.l @(loc_8C0F0194,pc),r1 ; r1 set to 0x8C15FF78
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f0172:
	#data 0x01A0
loc_8c0f0174:
	#data 0x0420
loc_8c0f0176:
	#data 0x0411
	#align4

loc_8C0F0178:
	#data bank15.loc_8c15FF58
loc_8C0F017C:
	#data 0x8C2895F0
loc_8C0F0180:
	#data 0x8C26A518
loc_8C0F0184:
	#data bank05.loc_8c050FE0
loc_8C0F0188:
	#data bank15.loc_8c15FF68
loc_8C0F018C:
	#data 0x8C2896B0
loc_8C0F0190:
	#data 0x0000AAAa
loc_8C0F0194:
	#data bank15.loc_8c15FF78

;==============================================
loc_8C0F0198:
	mov.b @(0x04,r4),r0
	mov 0x20,r5 ; r5 set to 0x20
	mov.l @(loc_8C0F01EC,pc),r3 ; r3 set to 0x8C0355B2
	mov 0x01,r6 ; r6 set to 0x01
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov 0x5C,r0 ; r0 set to 0x5c
	mov.w r0,@(0x1C,r4)
	jmp @r3
	mov 0xFF,r4

loc_8C0F01AC:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8C0F01Cc
	mov.b @(0x04,r4),r0
	mov 0x20,r5 ; r5 set to 0x20
	mov.l @(loc_8C0F01EC,pc),r3 ; r3 set to 0x8C0355B2
	mov 0x00,r6 ; r6 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov 0x30,r0 ; r0 set to 0x30
	mov.w r0,@(0x1C,r4)
	jmp @r3
	mov 0xFF,r4

loc_8C0F01CC:
	mov.w @(0x1C,r4),r0
	cmp/eq 0x28,r0
	bf loc_8C0F01D8
	mov.l @(loc_8C0F01F0,pc),r3 ; r3 set to 0x8C0514D0
	jmp @r3
	nop

loc_8C0F01D8:
	rts
	nop

;==============================================
loc_8C0F01DC:
	mov.b @(0x04,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x04,r4)

;==============================================
loc_8C0F01E4:
	mov.l @(loc_8C0F01F4,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C0F01EC:
	#data bank03.loc_8c0355B2
loc_8C0F01F0:
	#data bank05.loc_8c0514D0
loc_8C0F01F4:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0F01F8:
	mov.l r14,@-r15
	mov 0x04,r5
	sts.l pr,@-r15
	mov.l @(0x120,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0f0278
	mov r0,r4
	mov.l @(0x114,PC),r3
	mov.w @(0xFE,PC),r1
	mov.l r3,@(0x10,r4)
	mov.w @(0xFA,PC),r2
	add r4,r1
	mov.w @(0xF8,PC),r0
	mov.l @(0x10C,PC),r3
	mov.l r14,@(0x18,r4)
	jsr @r3
	add r14,r2
	mov.w @(0xF0,PC),r0
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
	mov.w @(0xD4,PC),r0
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
	mov.l @(0xD4,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.l @(0xCC,PC),r3
	mov.b @(r0,r14),r2
	mov r4,r1
	add 0x34,r1
	mov.b r2,@(r0,r4)
	mov r14,r2
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0xA6,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)

loc_8C0F0278:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C0F027E:
	mov r4,r3
	mov.l @(loc_8C0F0330,pc),r1 ; r1 set to 0x8C15FF88
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0F0290:
	mov.b @(0x04,r4),r0
	mov 0x0F,r2 ; r2 set to 0x0f
	mov.l @(loc_8C0F0334,pc),r3 ; r3 set to 0x80204040
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0F031C,pc),r0 ; r0 set to 0x13c
	mov.l r3,@(r0,r4)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r2,@(r0,r4)
	mov 0x3C,r0 ; r0 set to 0x3c
	rts
	mov.w r0,@(0x1C,r4)

;==============================================
loc_8C0F02A8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8C0F0394
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bt loc_8C0F02D6
	mov.l @(loc_8C0F0338,pc),r2 ; r2 set to 0x8C0332E0
	jsr @r2
	mov r14,r4
	mov.w @(loc_8C0F0316,pc),r1 ; r1 set to 0x12c
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.b r0,@r1
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0F02D6:
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	mov.w r0,@(0x1C,r14)
	mov.l @(0x18,r14),r0 ; r0 ??? bc r14 is ???
	mov.b @(0x01,r0),r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bf loc_8C0F02F4
	mov.l @(loc_8C0F033C,pc),r2 ; r2 set to 0x8C0BF214
	jsr @r2
	mov.l @(0x18,r14),r4
	bra loc_8C0F03B2
	nop

loc_8c0f02f4:
	mov.l @(0x18,r14),r4
	mov.b @(0x01,r4),r0
	extu.b r0,r0
	cmp/eq 0x1C,r0
	bt/s loc_8c0f0308
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x1D,r0
	bf loc_8c0f0344

loc_8c0f0308:
	mov.l @(loc_8c0f0340,pc),r3
	jsr @r3
	mov.l @(0x18,r14),r4
	bra loc_8c0f03b2
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f0312:
	#data 0x00dc
loc_8c0f0314:
	#data 0x00c0
loc_8c0f0316:
	#data 0x012c
loc_8c0f0318:
	#data 0x01a3
loc_8c0f031a:
	#data 0x041c
loc_8c0f031c:
	#data 0x013c
	#align4

loc_8c0f0320:
	#data bank04.loc_8c044f12
loc_8c0f0324:
	#data loc_8c0f027e
loc_8c0f0328:
	#data bank12.loc_8c129560
loc_8c0f032c:
	#data bank12.loc_8c1294c8
loc_8c0f0330:
	#data bank15.loc_8c15ff88
loc_8c0f0334:
	#data 0x80204040
loc_8c0f0338:
	#data bank03.loc_8c0332e0
loc_8c0f033c:
	#data bank0b.loc_8c0bf214
loc_8c0f0340:
	#data bank0d.loc_8c0db578

;==============================================
loc_8c0f0344:
	mov.w @(loc_8C0F03E6,pc),r1
	mov.l @(0x18,r14),r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c0f037e
	mov.l @(0x18,r14),r2
	mov r15,r1
	mov.l @(loc_8c0f03f0,pc),r3
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8C0F03E8,pc),r0
	mov r15,r5
	mov.l @(0x18,r14),r1
	mov 0x01,r6
	mov.w @(loc_8C0F03EA,pc),r7
	fmov.s @(r0,r1),fr3
	mov 0x04,r0
	mov.l @(loc_8c0f03f4,pc),r3
	fmov.s fr3,@(r0,r15)
	jsr @r3
	mov.l @(0x18,r14),r4
	mov.l @(loc_8C0F03F8,pc),r4
	mov 0x03,r0
	mov.b r0,@(0x05,r4)
	mov 0x01,r0
	bra loc_8c0f03b2
	mov.b r0,@(0x06,r4)

loc_8c0f037e:
	mov.l @(0x18,r14),r0
	mov.b @(0x01,r0),r0
	extu.b r0,r0
	cmp/eq 0x3A,r0
	bf loc_8c0f03ca
	mov.l @(loc_8c0f03fc,pc),r2
	mov 0x00,r5
	jsr @r2
	mov.l @(0x18,r14),r4
	bra loc_8c0f03b2
	nop

;==============================================
loc_8c0f0394:
	mov.l @(0x68,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(0x4E,PC),r1
	add r14,r1
	mov.b r0,@r1
	exts.b r0,r0
	tst r0,r0
	bt loc_8c0f03b2
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0f03c0

loc_8C0F03B2:
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0F03C0:
	mov.w @(0x28,PC),r1
	mov.w @(0x1C,r14),r0
	add r14,r1
	and 0x01,r0
	mov.b r0,@r1

loc_8C0F03CA:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C0F03D2:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0F03EC,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8C0F03E0:
	mov.l @(loc_8C0F0404,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f03e6:
	#data 0x0202
loc_8c0f03e8:
	#data 0x041c
loc_8c0f03ea:
	#data 0x0179
loc_8C0F03EC:
	#data 0x012c
	#align4

loc_8C0F03F0:
	#data bank12.loc_8c1294C8
loc_8C0F03F4:
	#data bank10.loc_8c10235c
loc_8c0f03f8:
	#data 0x8C26A518
loc_8C0F03FC:
	#data bank0e.loc_8c0eD3E4
loc_8C0F0400:
	#data bank03.loc_8c0332E0
loc_8C0F0404:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0F0408:
	sts.l pr,@-r15
	mov.l @(0x50,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0f0450
	mov r0,r4
	mov.w @(0x3C,PC),r0
	mov 0x01,r3
	mov.l @(0x44,PC),r1
	mov.l @(0x3C,PC),r2
	mov.b r3,@(r0,r4)
	add 0xC4,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0x94,r0
	mov.l @(0x30,PC),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(0x2C,PC),r2
	mov.l @(0x30,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x2C,PC),r2
	mov r4,r1
	mov.l @(0x24,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0

loc_8C0F0450:
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8C0F0456:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f045a:
	#data 0x012c
	#align4

loc_8C0F045C:
	#data bank04.loc_8c044F12
loc_8C0F0460:
	#data loc_8c0f0456
loc_8C0F0464:
	#data 0x8C26A90c
loc_8C0F0468:
	#data 0x0001081f
loc_8C0F046C:
	#data bank15.loc_8c15FF98
loc_8C0F0470:
	#data bank12.loc_8c1294C8
loc_8C0F0474:
	#data bank15.loc_8c15FFA4

;==============================================
loc_8C0F0478:
	rts
	nop

;==============================================
loc_8C0F047C:
	mov.l @(loc_8C0F04C0,pc),r3 ; r3 set to 0x8C26823c
	mov.l @r3,r0
	mov.l @(0x14,r0),r0
	cmp/eq 0x40,r0
	bt loc_8C0F048a
	bra loc_8C0F0B3e
	nop

loc_8C0F048A:
	rts
	nop

;==============================================
loc_8C0F048E:
	mov.l r14,@-r15
	mov 0x00,r14
	mov.l r13,@-r15
	mov 0x06,r13
	sts.l pr,@-r15

loc_8C0F0498:
	bsr loc_8c0f04c4
	mov r14,r4
	add 0x01,r14
	cmp/ge r13,r14
	bf loc_8c0f0498
	mov 0x00,r14
	mov 0x02,r13

loc_8C0F04A6:
	mov 0x00,r5
	bsr loc_8c0f06ec
	mov r14,r4
	mov 0x01,r5
	bsr loc_8c0f06ec
	mov r14,r4
	add 0x01,r14
	cmp/ge r13,r14
	bf loc_8c0f04a6
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C0F04C0:
	#data 0x8C26823c

;==============================================
loc_8C0F04C4:
	mov.l r14,@-r15
	mov 0x0B,r5
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	mov.l @(0xF4,PC),r3
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0f05b0
	mov r0,r14
	mov.l @(0xE8,PC),r3
	mov 0x01,r5
	mov.w @(0xD4,PC),r0
	tst r13,r5
	mov.b r5,@(r0,r14)
	mov.l r3,@(0x10,r14)
	bt.s loc_8c0f04ee
	mov 0x3D,r4
	mov 0x46,r4

loc_8C0F04EE:
	mov.l @(0xDC,PC),r3
	shll2 r4
	mov.w @(0xC8,PC),r5
	mov.l @r3,r0
	mov.w @(0xC6,PC),r6
	mov.l @r0,r0
	mov.l @(r0,r4),r2
	mov.w @(0xBC,PC),r4
	mov.w @(0xB8,PC),r0
	mul.l r4,r13
	mov.l r2,@(r0,r14)
	mov.l @(0xC8,PC),r2
	sts macl,r4
	add r2,r4
	mov.b @(0x2,r4),r0
	add r4,r5
	mov.b @r5,r5
	add r4,r6
	extu.b r0,r0
	mov.l @r6,r1
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(0xB8,PC),r3
	extu.b r5,r5
	add r0,r5
	mov.l @(0xB0,PC),r0
	mov 0x00,r2
	and r3,r1
	mov.b @(r0,r5),r5
	or r2,r1
	tst r1,r1
	bt.s loc_8c0f0534
	extu.b r5,r5
	add 0x12,r5

loc_8C0F0534:
	mov r5,r2
	shll r2
	mov r5,r3
	mov.l @(0xA0,PC),r0
	add r3,r2
	mov.l @(0xA0,PC),r3
	shll2 r2
	mov r14,r1
	add 0x34,r1
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x72,PC),r0
	mov.l @(0x94,PC),r1
	mov.l @(0x94,PC),r2
	mov.l r1,@(r0,r14)
	mov 0x01,r0
	and r13,r0
	mov r14,r1
	mov.b r0,@(0x2,r14)
	mov 0x20,r0
	mov.b r13,@(r0,r14)
	add 0x74,r1
	mov.w @(0x58,PC),r0
	mov.b @(r0,r4),r3
	mov 0x21,r0
	mov.b r3,@(r0,r14)
	mov.l @(0x80,PC),r3
	mov.l r4,@(0x18,r14)
	jsr @r3
	mov 0x10,r0
	mov.l @(0x7C,PC),r4
	mov 0x00,r0
	mov r0,r1
	mov r13,r5
	mov.w r0,@(0x1C,r14)
	mov r1,r3
	mov.l r0,@r4
	add 0x04,r4
	mov.l r1,@r4
	add 0x04,r4
	mov.l r1,@r4
	add 0x04,r4
	mov.l r1,@r4
	add 0x04,r4
	mov.l r1,@r4
	add 0x04,r4
	mov.l r1,@r4
	bsr loc_8c0f05f4
	mov r14,r4
	mov r13,r5
	bsr loc_8c0f0824
	mov r14,r4
	mov r13,r5
	bsr loc_8c0f08b0
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0f0a1a
	mov.l @r15+,r14

loc_8C0F05B0:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f05b8:
	#data 0x012c
loc_8c0f05ba:
	#data 0x0084
loc_8c0f05bc:
	#data 0x05a4
loc_8c0f05be:
	#data 0x0411
loc_8c0f05c0:
	#data 0x0414
loc_8c0f05c2:
	#data 0x00cc
	#align4

loc_8C0F05C4:
	#data bank04.loc_8c044F12
loc_8C0F05C8:
	#data loc_8c0f0CB2
loc_8C0F05CC:
	#data 0x8C26A90c
loc_8C0F05d0:
	#data 0x8C268340
loc_8C0F05D4:
	#data bank16.loc_8c1604C8
loc_8C0F05d8:
	#data 0x07000000
loc_8C0F05DC:
	#data bank15.loc_8c15FFE0
loc_8C0F05E0:
	#data bank12.loc_8c1294C8
loc_8C0F05e4:
	#data 0x00010C21
loc_8C0F05E8:
	#data bank16.loc_8c160370
loc_8C0F05EC:
	#data bank12.loc_8c1294Bc
loc_8C0F05f0:
	#data 0x8C28C720

;==============================================
loc_8C0F05F4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r5,r13
	mov.l @(0xB8,PC),r3
	mov 0x0B,r5
	mov r4,r11
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0f069e
	mov r0,r14
	mov.l @(0xA8,PC),r2
	mov 0x01,r3
	mov.w @(0x90,PC),r0
	mov.b r3,@(r0,r14)
	mov.l r2,@(0x10,r14)
	mov.l @(0xA8,PC),r0
	mov.l @(0xA0,PC),r2
	mov.b @(r0,r13),r1
	mov.l @r2,r3
	extu.b r1,r1
	mov.l @(0xA0,PC),r2
	mov.l @r3,r0
	shll2 r1
	mov.l @(r0,r1),r3
	mov.w @(0x7A,PC),r1
	add r14,r1
	mov.l r3,@r1
	mov r14,r1
	mov.l @(0x94,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x6C,PC),r0
	mov.l @(0x90,PC),r1
	mov.w @(0x6A,PC),r3
	mov.w @(0x6A,PC),r12
	mov.l r1,@(r0,r14)
	add 0xFC,r0
	add r11,r3
	mul.l r12,r13
	mov.l r3,@(r0,r14)
	mov.b @(0x2,r11),r0
	mov.l @(0x80,PC),r3
	mov.b r0,@(0x2,r14)
	mov 0x20,r0
	sts macl,r12
	mov.b r13,@(r0,r14)
	mov.w @(0x54,PC),r0
	add r3,r12
	mov.b @(r0,r12),r2
	mov 0x21,r0
	mov.b r2,@(r0,r14)
	mov.w @(0x4C,PC),r0
	mov.l @(0x70,PC),r2
	mov.w @(r0,r12),r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x3A,PC),r0
	mov.l r12,@(0x18,r14)
	mov.l r11,@(0x14,r14)
	mov.l @(r0,r14),r5
	mov.l r5,@r15
	jsr @r2
	mov r5,r4
	mov.w @(0x38,PC),r0
	mov 0x04,r14
	mov.l @(0x5C,PC),r3
	mov.b @(r0,r12),r13
	mov.l @(0x5C,PC),r11
	shll2 r13
	mov.l @(0x5C,PC),r12
	shll2 r13
	add r3,r13

loc_8C0F0690:
	jsr @r11
	nop 
	mov r13,r4
	jsr @r12
	add 0x04,r13
	dt r14
	bf loc_8c0f0690

loc_8C0F069E:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c0f06ac:
	#data 0x012c
loc_8c0f06ae:
	#data 0x0084
loc_8c0f06b0:
	#data 0x00cc
loc_8c0f06b2:
	#data 0x0088
loc_8c0f06b4:
	#data 0x05a4
loc_8c0f06b6:
	#data 0x0411
loc_8c0f06b8:
	#data 0x0420
loc_8c0f06ba:
	#data 0x04c9
	#align4

loc_8C0F06BC:
	#data bank04.loc_8c044F12
loc_8C0F06C0:
	#data loc_8c0f0F72
loc_8C0F06C4:
	#data 0x8C26A90c
loc_8C0F06C8:
	#data bank16.loc_8c1604Ce
loc_8C0F06CC:
	#data bank16.loc_8c1601B4
loc_8C0F06D0:
	#data bank12.loc_8c1294C8
loc_8C0F06D4:
	#data 0x00010C10
loc_8C0F06D8:
	#data 0x8C268340
loc_8C0F06DC:
	#data bank10.loc_8c108060
loc_8C0F06E0:
	#data bank15.loc_8c15FFB0
loc_8C0F06E4:
	#data bank10.loc_8c108086
loc_8C0F06E8:
	#data bank10.loc_8c108204

;==============================================
loc_8C0F06EC:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r5,r13
	mov.l @(0xF0,PC),r3
	mov 0x0B,r5
	mov r4,r14
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0f07d2
	mov r0,r4
	mov.l @(0xE0,PC),r2
	mov 0x01,r3
	mov.w @(0xCC,PC),r0
	tst r14,r14
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	bt.s loc_8c0f071a
	mov 0x3F,r5
	mov 0x48,r5

loc_8C0F071A:
	mov.l @(0xD4,PC),r3
	shll2 r5
	mov.l @r3,r0
	mov.l @(0xD0,PC),r3
	mov.l @r0,r0
	mov.l @(r0,r5),r2
	mov.w @(0xB4,PC),r0
	mov.l r2,@(r0,r4)
	mov r14,r2
	shll r2
	add r13,r2
	mov r2,r1
	shll r2
	add r1,r2
	mov r4,r1
	shll2 r2
	add r3,r2
	mov.l @(0xB8,PC),r3
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xB4,PC),r2
	mov r4,r1
	mov.l @(0xAC,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x8C,PC),r0
	mov 0x00,r5
	mov.l @(0xA8,PC),r1
	fldi1 fr3
	mov.l r1,@(r0,r4)
	mov 0x20,r0
	mov.b r14,@(r0,r4)
	mov 0x21,r0
	mov.b r13,@(r0,r4)
	mov 0x22,r0
	mov.b r5,@(r0,r4)
	add 0x5E,r0
	mov.w @(0x76,PC),r3
	mov.l @(0x98,PC),r2
	mul.l r3,r14
	sts macl,r14
	add r2,r14
	mov.l r14,@(0x18,r4)
	fmov fr3,@(r0,r4)
	mov 0x7C,r0
	fmov fr3,@(r0,r4)
	mov 0x78,r0
	fmov fr3,@(r0,r4)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r4)
	mova @(0x80,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r4)
	mova @(0x7C,PC),r0
	fmov @r0,fr3
	mov 0x70,r0
	fmov fr3,@(r0,r4)
	mov r5,r0
	nop 
	mov.w @(0x48,PC),r1
	mov.w r0,@(0x1C,r4)
	mov.w r0,@(0x1E,r4)
	mov.l @(0x18,r4),r6
	mov.l @(0x6C,PC),r3
	mov.l r6,@r15
	add r1,r6
	mov.l @r6,r0
	and r3,r0
	tst r0,r0
	bt loc_8c0f07d2
	mov.l @(0x64,PC),r3
	mov r4,r1
	mov.w @(0x26,PC),r0
	add 0x74,r1
	mov.l @(0x60,PC),r2
	mov.b r5,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @(0x5C,PC),r3
	jsr @r3
	mov 0x10,r0
	tst r13,r13
	bt loc_8c0f07d2
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x54,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0F07D2:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c0f07dc:
	#data 0x012c
loc_8c0f07de:
	#data 0x0084
loc_8c0f07e0:
	#data 0x00cc
loc_8c0f07e2:
	#data 0x05a4
loc_8c0f07e4:
	#data 0x0414
	#align4

loc_8C0F07E8:
	#data bank04.loc_8c044F12
loc_8C0F07EC:
	#data loc_8c0f0FDc
loc_8C0F07F0:
	#data 0x8C26A90c
loc_8C0F07F4:
	#data bank16.loc_8c160100
loc_8C0F07F8:
	#data bank12.loc_8c1294C8
loc_8C0F07FC:
	#data bank16.loc_8c1601B4
loc_8C0F0800:
	#data 0x00010C11
loc_8C0F0804:
	#data 0x8C268340
loc_8C0F0808:
	#data 0x46AAAA00
loc_8C0F080c:
	#data 0x472AAA00
loc_8C0F0810:
	#data 0x07000000
loc_8C0F0814:
	#data loc_8c0f0478
loc_8C0F0818:
	#data bank16.loc_8c160360
loc_8C0F081C:
	#data bank12.loc_8c1294Bc
loc_8C0F0820:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0F0824:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r5,r14
	mov.l @(0x12C,PC),r3
	mov 0x0B,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0f08a8
	mov r0,r4
	mov.l @(0x120,PC),r3
	mov 0x01,r5
	mov.w @(0x108,PC),r0
	mov.l @(0x120,PC),r2
	mov.b r5,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov r14,r3
	mov.l @(0x114,PC),r0
	shll2 r3
	mov.l @(r0,r3),r1
	mov.l @r2,r0
	mov r14,r2
	shll2 r1
	mov.l @r0,r3
	and r5,r2
	add r3,r1
	mov r2,r3
	mov.l @r1,r0
	shll r2
	mov.w @(0xE8,PC),r1
	add r3,r2
	mov.l @(0x104,PC),r3
	shll2 r2
	add r4,r1
	mov.l r0,@r1
	mov r4,r1
	mov.l @(0xF8,PC),r0
	add 0x34,r1
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0xD4,PC),r5
	mov.l @(0xF4,PC),r1
	mul.l r5,r14
	mov.w @(0xCC,PC),r0
	mov.l @(0xF0,PC),r3
	mov.l r1,@(r0,r4)
	mov 0x20,r0
	sts macl,r5
	mov.b r14,@(r0,r4)
	mov.w @(0xC4,PC),r0
	add r3,r5
	mov.b @(r0,r5),r2
	mov 0x21,r0
	mov.b r2,@(r0,r4)
	mov.w @(0xBE,PC),r0
	mov.l r5,@(0x18,r4)
	mov.l @r15,r2
	mov.l r2,@(0x14,r4)
	mov.w @(0xB4,PC),r2
	mov.l @r15,r1
	add r1,r2
	mov.l r2,@(r0,r4)

loc_8C0F08A8:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C0F08B0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r5,r14
	mov.l @(0xA0,PC),r3
	mov 0x0B,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0f0946
	mov r0,r4
	mov.w @(0x80,PC),r0
	mov 0x00,r3
	mov.l @(0x98,PC),r1
	mov.l @(0xA8,PC),r2
	mov.b r3,@(r0,r4)
	add 0x10,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r14,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov 0x01,r2
	mov.w @(0x6A,PC),r0
	and r14,r2
	mov.l r3,@(r0,r4)
	mov r2,r3
	shll2 r2
	shll r2
	shar r1
	add r3,r2
	mov r1,r3
	shll r1
	add r3,r1
	mov.l @(0x84,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(0x70,PC),r3
	shll2 r1
	add r1,r2
	mov r4,r1
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x42,PC),r0
	mov.l @(0x74,PC),r1
	mov.w @(0x40,PC),r5
	mov.l r1,@(r0,r4)
	mova @(0x70,PC),r0
	fmov @r0,fr3
	mov 0x50,r0
	mul.l r5,r14
	fmov fr3,@(r0,r4)
	mov 0x58,r0
	fldi1 fr3
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	fmov fr3,@(r0,r4)
	mov 0x20,r0
	sts macl,r5
	mov.l @(0x48,PC),r3
	mov.b r14,@(r0,r4)
	mov.w @(0x22,PC),r0
	add r3,r5
	mov.w @(0x20,PC),r1
	mov.b @(r0,r5),r2
	mov 0x21,r0
	mov.b r2,@(r0,r4)
	mov.w @(0x1A,PC),r0
	mov.l r5,@(0x18,r4)
	mov.l @r15,r2
	add r2,r1
	mov.l r1,@(r0,r4)

loc_8C0F0946:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f094e:
	#data 0x012c
loc_8c0f0950:
	#data 0x0084
loc_8c0f0952:
	#data 0x00cc
loc_8c0f0954:
	#data 0x05a4
loc_8c0f0956:
	#data 0x0411
loc_8c0f0958:
	#data 0x0088
loc_8c0f095a:
	#data 0x00c8
	#align4

loc_8C0F095C:
	#data bank04.loc_8c044F12
loc_8C0F0960:
	#data loc_8c0f10Fe
loc_8C0F0964:
	#data bank16.loc_8c160130
loc_8C0F0968:
	#data 0x8C26A90c
loc_8C0F096C:
	#data bank16.loc_8c160148
loc_8C0F0970:
	#data bank12.loc_8c1294C8
loc_8C0F0974:
	#data 0x00010C21
loc_8C0F0978:
	#data 0x8C268340
loc_8C0F097C:
	#data loc_8c0f114c
loc_8C0F0980:
	#data bank16.loc_8c160160
loc_8C0F0984:
	#data 0x00010811
loc_8C0F0988:
	#data 0x40A00000

;==============================================
loc_8C0F098C:
	mov.l r14,@-r15
	mov r5,r14
	mov.l r13,@-r15
	mov 0x0B,r5
	sts.l pr,@-r15
	mov.l @(0x11C,PC),r3
	mov r4,r13
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0f0a12
	mov r0,r4
	mov.w @(0xFC,PC),r0
	mov 0x01,r3
	mov.l @(0x110,PC),r1
	mov.l @(0x108,PC),r2
	mov.b r3,@(r0,r4)
	add 0x14,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov.w @(0xE6,PC),r0
	mov.w @(0xE6,PC),r2
	mov.l r3,@(r0,r4)
	add r14,r2
	mov.b @(0x2,r14),r0
	mov.b @r2,r2
	extu.b r0,r0
	extu.b r2,r2
	shll r0
	add r0,r2
	mov.l @(0xEC,PC),r0
	add 0xFF,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(0xE4,PC),r3
	shll2 r2
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xDC,PC),r3
	mov r4,r1
	add 0x68,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0xB8,PC),r0
	mov.l @(0xD4,PC),r1
	mov.l r1,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r4)
	mov.w @(0xAA,PC),r0
	mov.b @(r0,r14),r2
	mov 0x21,r0
	mov.b r2,@(r0,r4)
	mov.w @(0xA6,PC),r0
	mov.l r14,@(0x18,r4)
	mov.l r13,@(0x14,r4)
	mov.l @(r0,r13),r3
	mov.l r3,@(r0,r4)
	mov 0x00,r0
	mov.w r0,@(0x1C,r4)

loc_8C0F0A12:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C0F0A1A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r5,r14
	mov.l @(0x90,PC),r3
	mov 0x0B,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0f0a9e
	mov r0,r4
	mov.l @(0x94,PC),r3
	mov 0x01,r6
	mov.w @(0x6A,PC),r0
	tst r14,r6
	mov.b r6,@(r0,r4)
	mov.l r3,@(0x10,r4)
	bt.s loc_8c0f0a46
	mov 0x6A,r5
	mov 0x6B,r5

loc_8C0F0A46:
	mov.l @(0x74,PC),r3
	shll2 r5
	mov r4,r1
	add 0x50,r1
	mov.l @r3,r0
	mov.l @(0x70,PC),r3
	mov.l @r0,r0
	mov.l @(r0,r5),r2
	mov.w @(0x4E,PC),r0
	mov.l r2,@(r0,r4)
	mov.l @(0x74,PC),r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x48,PC),r0
	mov.l @(0x70,PC),r1
	fldi0 fr4
	mov.l r1,@(r0,r4)
	mov 0x34,r0
	fmov fr4,@(r0,r4)
	mov 0x38,r0
	fmov fr4,@(r0,r4)
	mova @(0x64,PC),r0
	mov.w @(0x3C,PC),r5
	fmov @r0,fr3
	mov 0x3C,r0
	mul.l r5,r14
	mov.w @(0x32,PC),r1
	fmov fr3,@(r0,r4)
	mov.l @r15,r3
	mov.w @(0x2A,PC),r0
	add r3,r1
	mov.l @(0x54,PC),r3
	mov.l r1,@(r0,r4)
	mov 0x20,r0
	sts macl,r5
	mov.b r14,@(r0,r4)
	mov.w @(0x18,PC),r0
	add r3,r5
	mov.b @(r0,r5),r2
	mov 0x21,r0
	mov.b r2,@(r0,r4)
	mov.l r5,@(0x18,r4)
	mov.l @r15,r2
	mov.l r2,@(0x14,r4)

loc_8C0F0A9E:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f0aa6:
	#data 0x012c
loc_8c0f0aa8:
	#data 0x0084
loc_8c0f0aaa:
	#data 0x0411
loc_8c0f0aac:
	#data 0x00cc
loc_8c0f0aae:
	#data 0x00c8
loc_8c0f0ab0:
	#data 0x0088
loc_8c0f0ab2:
	#data 0x05a4
	#align4

loc_8C0F0AB4:
	#data bank04.loc_8c044F12
loc_8C0F0AB8:
	#data loc_8c0f1198
loc_8C0F0ABC:
	#data 0x8C26A90c
loc_8C0F0AC0:
	#data bank16.loc_8c1601C0
loc_8C0F0AC4:
	#data bank12.loc_8c1294C8
loc_8C0F0Ac8:
	#data 0x00010801
loc_8C0F0ACC:
	#data loc_8c0f123c
loc_8C0F0AD0:
	#data bank16.loc_8c1601B4
loc_8C0F0Ad4:
	#data 0x00010C11
loc_8C0F0AD8:
	#data 0xBE000000
loc_8C0F0ADC:
	#data 0x8C268340

;==============================================
loc_8C0F0AE0:
	mov.l r14,@-r15
	mov 0x02,r6
	sts.l pr,@-r15
	mov.l @(0x110,PC),r3
	mov r4,r14
	jsr @r3
	mov 0x0B,r5
	tst r0,r0
	bt.s loc_8c0f0b38
	mov r0,r4
	mov.w @(0xF8,PC),r0
	mov 0x01,r3
	mov.l @(0x100,PC),r2
	mov.b r3,@(r0,r4)
	mov.l @(0x100,PC),r1
	mov.l @(0x104,PC),r3
	mov.l r2,@(0x10,r4)
	mov.b @(0x2,r14),r0
	extu.b r0,r0
	mov.b @(r0,r1),r2
	mov r4,r1
	mov.l @r3,r0
	add 0x34,r1
	extu.b r2,r2
	mov.l @r0,r0
	shll2 r2
	mov.l @(r0,r2),r2
	mov.w @(0xD8,PC),r0
	mov.l r2,@(r0,r4)
	mov.b @(0x2,r14),r0
	mov.l @(0xE8,PC),r2
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(0xE4,PC),r3
	shll2 r0
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0xC0,PC),r0
	mov.l @(0xDC,PC),r2
	mov.l r2,@(r0,r4)
	mov.l r14,@(0x18,r4)

loc_8C0F0B38:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c0f0b3e:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r5,r12
	mov.l r6,@r15
	mov.w @r12,r3
	tst r3,r3
	bt/s loc_8c0f0be4
	mov r4,r13
	mov.l @(loc_8c0f0bf8,pc),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c0f0be4
	mov r0,r14
	mov.w @(loc_8C0F0BF0,pc),r0
	mov 0x01,r3
	mov.l @(loc_8c0f0c14,pc),r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c0f0c18,pc),r1
	mov.l @(loc_8C0F0C04,pc),r3
	mov.l r2,@(0x10,r14)
	mov.b @(0x02,r13),r0
	extu.b r0,r0
	mov.b @(r0,r1),r2
	mov r14,r1
	mov.l @r3,r0
	add 0x34,r1
	extu.b r2,r2
	mov.l @r0,r0
	shll2 r2
	mov.l @(r0,r2),r2
	mov.w @(loc_8C0F0BF2,pc),r0
	mov.l r2,@(r0,r14)
	mov.b @(0x02,r13),r0
	mov.l @(loc_8c0f0c1c,pc),r2
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(loc_8c0f0c0c,pc),r3
	shll2 r0
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c0f0c20,pc),r2
	mov r14,r1
	mov.l @(loc_8c0f0c0c,pc),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.b @(0x02,r13),r0
	mov r14,r1
	mov.l @(loc_8C0F0C24,pc),r3
	add 0x74,r1
	mov.b r0,@(0x02,r14)
	mov.w @(loc_8C0F0BF4,pc),r0
	mov.l r13,@(0x18,r14)
	mov.l r3,@(r0,r14)
	add 0x04,r0
	mov.l @(loc_8c0f0c28,pc),r3
	mov.l r12,@(r0,r14)
	mov.w @r12,r0
	mov.w r0,@(0x1C,r14)
	mov.l @r15,r2
	shll2 r2
	shll2 r2
	add r3,r2
	mov.l @(loc_8c0f0c2c,pc),r3
	jsr @r3
	mov 0x10,r0
	bsr loc_8c0f0ae0
	mov r14,r4
	mov.w @(loc_8C0F0BF6,pc),r0
	mov.b @(r0,r13),r3
	mov.l @(loc_8C0F0C30,pc),r0
	extu.b r3,r3
	shll2 r3
	mov.l r14,@(r0,r3)

loc_8c0f0be4:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F0BF0:
	#data 0x012C
loc_8C0F0BF2:
	#data 0x0084
loc_8C0F0BF4:
	#data 0x00CC
loc_8C0F0BF6:
	#data 0x01A4
	#align4

loc_8c0f0bf8:
	#data bank04.loc_8c044f12
loc_8c0f0bfc:
	#data loc_8c0f1264
loc_8c0f0c00:
	#data bank16.loc_8c1604d4
loc_8C0F0C04:
	#data 0x8C26A90C
loc_8c0f0c08:
	#data bank16.loc_8C1601F0
loc_8c0f0c0c:
	#data bank12.loc_8c1294c8
loc_8c0f0c10:
	#data 0x00010801
loc_8c0f0c14:
	#data loc_8c0f12b0
loc_8c0f0c18:
	#data bank16.loc_8c1604d6
loc_8c0f0c1c:
	#data bank16.loc_8c160208
loc_8c0f0c20:
	#data bank16.loc_8c1601b4
loc_8C0F0C24:
	#data 0x00010C11
loc_8c0f0c28:
	#data bank16.loc_8c160390
loc_8c0f0c2c:
	#data bank12.loc_8c1294bc
loc_8C0F0C30:
	#data 0x8C28C720

;==============================================
loc_8c0f0c34:
	mov.l @(0x150,PC),r3
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @r3,r0
	mov.l @(0x14,r0),r0
	cmp/eq 0x40,r0
	bt.s loc_8c0f0cac
	mov r4,r14
	mov.l @(0x144,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0f0cac
	mov r0,r4
	mov.w @(0x128,PC),r0
	mov 0x01,r3
	mov.l @(0x134,PC),r2
	mov.b r3,@(r0,r4)
	mov.l @(0x134,PC),r1
	mov.l @(0x138,PC),r3
	mov.l r2,@(0x10,r4)
	mov.b @(0x2,r14),r0
	extu.b r0,r0
	mov.b @(r0,r1),r2
	mov.l @r3,r0
	extu.b r2,r2
	mov.l @(0x12C,PC),r3
	mov.l @r0,r0
	shll2 r2
	mov.l @(r0,r2),r2
	mov.w @(0x10A,PC),r0
	mov.l r2,@(r0,r4)
	mov 0x78,r0
	mov.w r0,@(0x1E,r4)
	add 0x54,r0
	mov.l r3,@(r0,r4)
	mov.w @(0x100,PC),r0
	mov.l r14,@(0x18,r4)
	mov.b @(r0,r14),r2
	mov.b @(0x2,r14),r0
	extu.b r2,r2
	extu.b r0,r0
	shll r2
	add r0,r2
	mov r2,r3
	shll r2
	mov.l @(0x108,PC),r0
	add r3,r2
	mov.l @(0x108,PC),r3
	shll2 r2
	mov r4,r1
	add r0,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0xDA,PC),r0
	mov.b @(r0,r14),r0
	mov.b r0,@(0x7,r4)

loc_8c0f0cac:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c0f0cb2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(0x18,r14),r4
	mov.w @(0xC6,PC),r3
	mov 0x00,r0
	mov.l r4,@r15
	add r3,r4
	mov.l @(0xE0,PC),r2
	mov.l @r4,r1
	and r2,r1
	or r0,r1
	tst r1,r1
	bf loc_8c0f0ce0
	mov.b @(0x4,r14),r0
	mov.l @(0xD8,PC),r1
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	mov r14,r4

loc_8c0f0ce0:
	mov.l @(0x18,r14),r5
	bsr loc_8c0f0e5e
	mov r14,r4
	mov.l @(0x18,r14),r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c0f0ef0
	mov.l @r15+,r14

loc_8c0f0cf2:
	mov.w @(0x8E,PC),r0
	sts.l pr,@-r15
	mov.b @(r0,r5),r6
	mov 0x21,r0
	mov.b @(r0,r4),r3
	extu.b r6,r6
	extu.b r3,r3
	cmp/eq r6,r3
	bt loc_8c0f0d7a
	mov.b @(0x4,r4),r0
	mov 0x20,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x23,r0
	mov.b r3,@(r0,r4)
	mov 0x00,r0
	extu.b r6,r3
	mov.w r0,@(0x1E,r4)
	tst r3,r3
	mov 0x21,r0
	bt.s loc_8c0f0d26
	mov.b r6,@(r0,r4)
	mov.w @(0x1E,r4),r0
	mov.l @(0x8C,PC),r3
	or r3,r0
	mov.w r0,@(0x1E,r4)

loc_8c0f0d26:
	mov.b @(0x2,r5),r0
	shll r6
	mov.l @(0x88,PC),r5
	extu.b r0,r0
	add r0,r6
	mov r6,r3
	shll r6
	mova @(0x80,PC),r0
	add r3,r6
	fmov @r0,fr4
	shll2 r6
	mov 0x34,r0
	add r6,r5
	fmov @(r0,r4),fr3
	fmov @r5,fr2
	mov 0x5C,r0
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	mov 0x04,r0
	fmov @(r0,r5),fr2
	mov 0x60,r0
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r4)
	mov 0x3C,r0
	fmov @(r0,r4),fr3
	mov 0x08,r0
	fmov @(r0,r5),fr2
	fsub fr3,fr2
	fdiv fr4,fr2
	mov r4,r2
	mov.l @(0x38,PC),r3
	mov r4,r1
	mov 0x64,r0
	add 0x34,r2
	add 0x68,r1
	fmov fr2,@(r0,r4)
	jsr @r3
	mov 0x0C,r0

loc_8c0f0d7a:
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c0f0d80:
	#data 0x012c
loc_8c0f0d82:
	#data 0x0084
loc_8c0f0d84:
	#data 0x0411
loc_8c0f0d86:
	#data 0x0414
	#align4

loc_8c0f0d88:
	#data 0x8C26823C
loc_8c0f0d8c:
	#data bank04.loc_8c044f12
loc_8c0f0d90:
	#data loc_8c0f1354
loc_8c0f0d94:
	#data bank16.loc_8c1604d8
loc_8c0f0d98:
	#data 0x8C26A90C
loc_8c0f0d9c:
	#data 0x00010801
loc_8c0f0da0:
	#data bank16.loc_8c160480
loc_8c0f0da4:
	#data bank12.loc_8c1294c8
loc_8c0f0da8:
	#data 0x07000000
loc_8c0f0dac:
	#data bank16.loc_8c1604dc
loc_8c0f0db0:
	#data 0x00008000
loc_8c0f0db4:
	#data bank15.loc_8c15ffe0
loc_8c0f0db8:
	#data 0x42000000

;==============================================
loc_8c0f0dbc:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov.l r5,@r15
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	mov 0x60,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x6C,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x64,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x1E,r14),r0
	cmp/pz r0
	bf.s loc_8c0f0e10
	fldi0 fr4
	mov.l @(0xDC,PC),r3
	mov.w @(0x1E,r14),r0
	jsr @r3
	mov r0,r4
	mova @(0xD8,PC),r0
	fmov fr0,fr4
	fmov @r0,fr3
	mov.w @(0x1E,r14),r0
	mov.w @(0xC6,PC),r3
	fmul fr3,fr4
	add r3,r0
	mov.w r0,@(0x1E,r14)

loc_8c0f0e10:
	mov 0x6C,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x23,r0
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	extu.b r3,r0
	tst 0x80,r0
	bt loc_8c0f0e56
	mov 0x00,r0
	mov.l @(0xB4,PC),r2
	mov.b r0,@(0x4,r14)
	mov r14,r1
	mov.w @(0xA0,PC),r0
	add 0x34,r1
	mov.l @r15,r4
	mov.l @r15,r3
	mov.b @(r0,r4),r4
	mov.b @(0x2,r3),r0
	extu.b r4,r4
	extu.b r0,r0
	shll r4
	add r0,r4
	mov r4,r3
	shll r4
	add r3,r4
	mov.l @(0x98,PC),r3
	shll2 r4
	add r2,r4
	mov r4,r2
	jsr @r3
	mov 0x0C,r0

loc_8c0f0e56:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c0f0e5e:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x84,PC),r4
	mov 0x04,r0
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	fmov @(r0,r4),fr3
	mov 0x78,r0
	fmov fr3,@(r0,r14)
	mov 0x08,r0
	fmov @(r0,r4),fr3
	mov 0x7C,r0
	fmov fr3,@(r0,r14)
	mov 0x0C,r0
	fmov @(r0,r4),fr3
	add 0x74,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x50,PC),r0
	mov.w @(r0,r13),r3
	tst r3,r3
	bt loc_8c0f0ea4
	mov.l @(0x60,PC),r4
	mov 0x04,r0
	fmov @(r0,r4),fr3
	mov 0x78,r0
	fmov fr3,@(r0,r14)
	mov 0x08,r0
	fmov @(r0,r4),fr3
	mov 0x7C,r0
	fmov fr3,@(r0,r14)
	mov 0x0C,r0
	fmov @(r0,r4),fr3
	add 0x74,r0
	fmov fr3,@(r0,r14)

loc_8c0f0ea4:
	mov.w @(0x2E,PC),r3
	mov.w @(0x1C,r14),r0
	add r13,r3
	mov.w @r3,r3
	cmp/eq r3,r0
	bt loc_8c0f0ec4
	mov.w @(0x22,PC),r0
	mov.w @(r0,r13),r3
	tst r3,r3
	bf loc_8c0f0ec4
	mov.w @(0x18,PC),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bt loc_8c0f0ec4
	bsr loc_8c0f0c34
	mov r13,r4

loc_8c0f0ec4:
	mov.w @(0xE,PC),r0
	mov.w @(r0,r13),r0
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c0f0ed2:
	#data 0x0400
loc_8c0f0ed4:
	#data 0x0411
loc_8c0f0ed6:
	#data 0x02A0
	#align4

loc_8c0f0ed8:
	#data bank11.loc_8c11e860
loc_8c0f0edc:
	#data 0x41a00000
loc_8c0f0ee0:
	#data bank15.loc_8c15ffe0
loc_8c0f0ee4:
	#data bank12.loc_8c1294c8
loc_8c0f0ee8:
	#data bank16.loc_8c160370
loc_8c0f0eec:
	#data bank16.loc_8c160380

;==============================================
loc_8c0f0ef0:
	mov.w @(0xD0,PC),r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bf.s loc_8c0f0f06
	mov 0x00,r6
	mov.w @(0xC8,PC),r0
	mov.w @(r0,r5),r3
	cmp/pl r3
	bt loc_8c0f0f06
	mov.w @(0xC2,PC),r0
	mov.b r6,@(r0,r4)

loc_8c0f0f06:
	mov.w @(0xBE,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c0f0f52
	mov.w @(0xB2,PC),r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bt loc_8c0f0f6e
	mov.b @r5,r3
	tst r3,r3
	bf loc_8c0f0f6e
	mov.b @(0x2,r5),r0
	mov 0x03,r2
	mov.l @(0xA8,PC),r1
	extu.b r0,r0
	mov.b @(r0,r1),r3
	cmp/ge r2,r3
	bf loc_8c0f0f32
	mov.w @(0x9C,PC),r0
	mov.b @(r0,r5),r0
	tst r0,r0
	bt loc_8c0f0f68

loc_8c0f0f32:
	mov.l @(0x9C,PC),r1
	mov 0x74,r0
	fmov @(r0,r4),fr2
	lds r1,fpul
	fsts fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r4)
	fmov @(r0,r4),fr1
	fldi0 fr2
	fcmp/gt fr1,fr2
	bf loc_8c0f0f6e
	mov.w @(0x7C,PC),r0
	mov.b r6,@(r0,r4)
	mov 0x74,r0
	bra loc_8c0f0f6e
	fmov fr2,@(r0,r4)

loc_8c0f0f52:
	mov.w @(0x6E,PC),r0
	mov.b @(r0,r5),r2
	tst r2,r2
	bf loc_8c0f0f6e
	mov.w @(0x68,PC),r0
	mov.w @(r0,r5),r3
	cmp/pl r3
	bf loc_8c0f0f6e
	mov.w @(0x62,PC),r0
	mov 0x01,r2
	mov.b r2,@(r0,r4)

loc_8c0f0f68:
	mov 0x74,r0
	fldi1 fr3
	fmov fr3,@(r0,r4)

loc_8c0f0f6e:
	rts
	nop

;==============================================
loc_8c0f0f72:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r4,r1
	sts.l pr,@-r15
	mov.l @(0x14,r14),r2
	add 0x74,r1
	mov.l @(0x50,PC),r3
	add 0x74,r2
	jsr @r3
	mov 0x10,r0
	mov.w @(0x3A,PC),r0
	mov.l @(0x18,r14),r13
	mov.w @(r0,r13),r3
	mova @(0x48,PC),r0
	fmov @r0,fr2
	mov 0x50,r0
	lds r3,fpul
	mov.w @(0x2C,PC),r3
	float fpul,fr3
	add r13,r3
	fdiv fr2,fr3
	fmov fr3,@(r0,r14)
	mov.w @r3,r3
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bt loc_8c0f0fb6
	mov.w @(0x1E,PC),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bt loc_8c0f0fb6
	mov r13,r5
	bsr loc_8c0f098c
	mov r14,r4

loc_8c0f0fb6:
	mov.w @(0xC,PC),r0
	mov.w @(r0,r13),r0
	mov.w r0,@(0x1E,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f0fc4:
	#data 0x01DC
loc_8c0f0fc6:
	#data 0x0420
loc_8c0f0fc8:
	#data 0x012C
loc_8c0f0fca:
	#data 0x0411
	#align4

loc_8c0f0fCC:
	#data 0x8C289626
loc_8c0f0fd0:
	#data 0x3D000000
loc_8c0f0fd4:
	#data bank12.loc_8C1294BC
loc_8c0f0fd8:
	#data 0x43100000

;==============================================
loc_8C0F0FDC:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x20,r0 ; r0 set to 0x20
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r8,@-r15
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r13
	mov.l @(loc_8C0F1120,pc),r0 ; r0 set to 0x8C28964a
	extu.b r13,r13
	mov.l @(loc_8C0F1124,pc),r12 ; r12 set to 0x8C11E860
	mov.b @(r0,r13),r13
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C0F1072
	mov r13,r2
	add 0x01,r2
	mov.l @(loc_8C0F1128,pc),r3 ; r3 set to 0x8C160220
	shll2 r2
	shll2 r2
	mov r14,r1
	add r3,r2
	mov.l @(loc_8C0F112C,pc),r3 ; r3 set to 0x8C1294Bc
	add 0x74,r1
	jsr @r3
	mov 0x10,r0 ; r0 set to 0x10
	mova @(loc_8C0F1134,pc),r0  ; r0 set to 0x8C0F1134
	mov.l @(loc_8C0F1130,pc),r11 ; r11 set to 0x8C289BD2
	mov 0x78,r8 ; r8 set to 0x78
	fmov.s @r0,fr14
	add r14,r8 ; r8 ??? bc r14 is ???
	fldi1 fr15
	jsr @r12
	mov.w @r11,r4
	fdiv fr14,fr0 ; r0 ??? bc r14 is ???
	fmov.s @r8,fr3 ; r3 ??? bc r8 is ???
	fadd fr15,fr0
	fmul fr0,fr3
	fmov.s fr3,@r8
	mov 0x7C,r8 ; r8 set to 0x7c
	add r14,r8 ; r8 ??? bc r14 is ???
	jsr @r12
	mov.w @r11,r4
	fdiv fr14,fr0
	fmov.s @r8,fr3
	fadd fr15,fr0
	fmul fr0,fr3
	fmov.s fr3,@r8
	mov.w @(loc_8C0F111C,pc),r8 ; r8 set to 0x80
	add r14,r8 ; r8 ??? bc r14 is ???
	jsr @r12
	mov.w @r11,r4
	fdiv fr14,fr0
	mov 0x20,r0 ; r0 set to 0x20
	fmov.s @r8,fr3
	fadd fr15,fr0 ; r0 ??? bc r15 is ???
	fmul fr0,fr3
	fmov.s fr3,@r8
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0F1138,pc),r0 ; r0 set to 0x8C289646
	extu.b r3,r3
	shll r3
	mov.w @(r0,r3),r3
	mova @(loc_8C0F113C,pc),r0  ; r0 set to 0x8C0F113c
	fmov.s @r0,fr2
	mov 0x50,r0 ; r0 set to 0x50
	lds r3,fpul
	float fpul,fr3
	fdiv fr2,fr3
	bra loc_8C0F10E8
	fmov.s fr3,@(r0,r14)

loc_8c0f1072:
	mov.w @(loc_8c0f111e,pc),r0
	mov.b r13,@(r0,r14)
	mov 0x22,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	cmp/eq r13,r3
	bt loc_8c0f1094
	mov r13,r2
	mov.l @(loc_8c0f1140,pc),r3
	shll2 r2
	mov r14,r1
	shll2 r2
	add r3,r2
	mov.l @(loc_8c0f112c,pc),r3
	add 0x74,r1
	jsr @r3
	mov 0x10,r0

loc_8c0f1094:
	mov r13,r0
	nop
	cmp/eq 0x05,r0
	bf loc_8c0f10e8
	mova @(loc_8C0F1148,pc),r0
	fldi1 fr14
	fmov.s @r0,fr15
	mov 0x68,r0
	fmov.s @(r0,r14),fr3
	fadd fr14,fr14
	mov.l @(loc_8C0F1144,pc),r11
	ftrc fr3,fpul
	mov.w @r11,r4
	sts fpul,r3
	jsr @r12
	add r3,r4
	fdiv fr14,fr0
	mov 0x78,r0
	fadd fr15,fr0
	fmov.s fr0,@(r0,r14)
	mov 0x6C,r0
	fmov.s @(r0,r14),fr3
	mov.w @r11,r4
	ftrc fr3,fpul
	sts fpul,r3
	jsr @r12
	add r3,r4
	fdiv fr14,fr0
	mov 0x7C,r0
	fadd fr15,fr0
	fmov.s fr0,@(r0,r14)
	mov 0x70,r0
	fmov.s @(r0,r14),fr3
	mov.w @r11,r4
	ftrc fr3,fpul
	sts fpul,r3
	jsr @r12
	add r3,r4
	fdiv fr14,fr0
	mov.w @(loc_8c0f111c,pc),r0
	fadd fr15,fr0
	fmov.s fr0,@(r0,r14)

loc_8C0F10E8:
	mov 0x22,r0 ; r0 set to 0x22
	mov.b r13,@(r0,r14)
	lds.l @r15+,pr
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r8
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0F10FE:
	mov.w @(loc_8C0F111E,pc),r0 ; r0 set to 0x12c
	mov r4,r1
	sts.l pr,@-r15
	mov.l @(0x14,r4),r3
	add 0x74,r1
	mov.b @(r0,r3),r2
	mov.l @(loc_8C0F112C,pc),r3 ; r3 set to 0x8C1294Bc
	mov.b r2,@(r0,r4)
	mov.l @(0x14,r4),r2
	add 0x74,r2
	jsr @r3
	mov 0x10,r0 ; r0 set to 0x10
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F111C:
	#data 0x0080
loc_8C0F111E:
	#data 0x012c
	#align4

loc_8C0F1120:
	#data 0x8C28964a
loc_8C0F1124:
	#data bank11.loc_8c11E860
loc_8C0F1128:
	#data bank16.loc_8c160220
loc_8C0F112C:
	#data bank12.loc_8c1294Bc
loc_8C0F1130:
	#data 0x8C289BD2
loc_8C0F1134:
	#data 0x41000000
loc_8C0F1138:
	#data 0x8C289646
loc_8C0F113C:
	#data 0x43100000
loc_8C0F1140:
	#data bank16.loc_8c1602C0
loc_8c0f1144:
	#data 0x8C289BD4
loc_8c0f1148:
	#data 0x3F000000

;==============================================
loc_8C0F114C:
	mov.w @(0x130,PC),r0
	mov 0x00,r1
	sts.l pr,@-r15
	mov.b r1,@(r0,r4)
	mov.w @(0x12A,PC),r0
	mov.l @(0x18,r4),r5
	mov.w @(r0,r5),r3
	tst r3,r3
	bt loc_8c0f1192
	mov.w @(0x11E,PC),r0
	mov 0x01,r3
	mov.w @(0x11E,PC),r2
	mov.b r3,@(r0,r4)
	mov.b @(0x2,r5),r0
	add r5,r2
	mov.b @r2,r2
	extu.b r0,r0
	mov.l @(0x11C,PC),r1
	mov r0,r3
	shll2 r0
	shll r0
	extu.b r2,r2
	add r3,r0
	mov r2,r3
	shll r2
	shll2 r0
	add r3,r2
	mov.l @(0x10C,PC),r3
	add r0,r1
	shll2 r2
	add r1,r2
	mov r4,r1
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0

loc_8C0F1192:
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8C0F1198:
	mov.w @(0xE4,PC),r0
	mov 0x01,r1
	mov.w @(0xE4,PC),r2
	sts.l pr,@-r15
	mov.b r1,@(r0,r4)
	mov r4,r1
	mov.l @(0x18,r4),r5
	add 0x34,r1
	add r5,r2
	mov.b @(0x2,r5),r0
	mov.b @r2,r2
	extu.b r0,r0
	extu.b r2,r2
	shll r0
	add r0,r2
	mov.l @(0xDC,PC),r0
	add 0xFF,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(0xCC,PC),r3
	shll2 r2
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mova @(0xCC,PC),r0
	mov.l @(0x14,r4),r6
	fmov @r0,fr3
	mov 0x50,r0
	fmov @(r0,r6),fr2
	mov 0x20,r0
	mov.b @(r0,r4),r0
	fmul fr3,fr2
	extu.b r0,r0
	tst 0x01,r0
	fmov fr2,fr4
	bt.s loc_8c0f11e6
	fneg fr4
	fneg fr4

loc_8C0F11E6:
	mov 0x68,r0
	mov.l @(0xB0,PC),r2
	fmov @(r0,r4),fr3
	mov 0x34,r0
	mov.w @(0x94,PC),r1
	fadd fr3,fr4
	fmov fr4,@(r0,r4)
	mov.w @(0x1C,r4),r0
	mov.l @r2,r3
	shar r0
	shar r0
	mov.l @r3,r3
	shar r0
	shll2 r0
	add r3,r0
	mov.l @(r0,r1),r1
	mov 0x28,r3
	mov.w @(0x7C,PC),r0
	mov.l r1,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	cmp/gt r3,r0
	bt loc_8c0f122a
	mov.w @(0x68,PC),r0
	mov.b @(r0,r5),r0
	tst r0,r0
	bt loc_8c0f122a
	mov.l @(0x7C,PC),r2
	mov.b @r2,r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bt loc_8c0f1236

loc_8C0F122A:
	mov.w @(0x52,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r4)
	mov.l @(0x70,PC),r3
	jmp @r3
	lds.l @r15+,pr

loc_8C0F1236:
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8C0F123C:
	sts.l pr,@-r15
	mov.l @(0x14,r4),r2
	mov r4,r1
	mov.l @(loc_8C0F12A8,pc),r3 ; r3 set to 0x8C1294Bc
	add 0x74,r1
	add 0x74,r2
	jsr @r3
	mov 0x10,r0 ; r0 set to 0x10
	mov.w @(loc_8C0F128A,pc),r0 ; r0 set to 0x424
	mov.l @(0x18,r4),r5
	lds.l @r15+,pr
	mov.w @(r0,r5),r3 ; r3 ??? bc r5 is ???
	mova @(loc_8C0F12AC,pc),r0  ; r0 set to 0x8C0F12Ac
	fmov.s @r0,fr2
	mov 0x50,r0 ; r0 set to 0x50
	lds r3,fpul
	float fpul,fr3
	fdiv fr2,fr3
	rts
	fmov.s fr3,@(r0,r4)

;==============================================
loc_8C0F1264:
	mov.w @(loc_8C0F1280,pc),r0 ; r0 set to 0x12c
	mov.l @(0x18,r4),r5
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	mov.w @(0x1C,r5),r0
	tst r0,r0
	bf loc_8C0F127c
	mov.l @(loc_8C0F12A4,pc),r3 ; r3 set to 0x8C0450C0
	mov 0x00,r2 ; r2 set to 0x00
	mov.w @(loc_8C0F1280,pc),r0 ; r0 set to 0x12c
	jmp @r3
	mov.b r2,@(r0,r4)

loc_8C0F127C:
	rts
	nop

;==============================================
loc_8C0F1280:
	#data 0x012c
loc_8c0f1282:
	#data 0x02a0
loc_8c0f1284:
	#data 0x0411
loc_8c0f1286:
	#data 0x0140
loc_8c0f1288:
	#data 0x0084
loc_8c0f128a:
	#data 0x0424
	#align4

loc_8C0F128C:
	#data bank16.loc_8c160160
loc_8C0F1290:
	#data bank12.loc_8c1294C8
loc_8C0F1294:
	#data bank16.loc_8c1601C0
loc_8C0F1298:
	#data 0x42600000
loc_8C0F129C:
	#data 0x8C26A90c
loc_8C0F12a0:
	#data 0x8C2895F0
loc_8C0F12A4:
	#data bank04.loc_8c0450C0
loc_8C0F12A8:
	#data bank12.loc_8c1294Bc
loc_8C0F12AC:
	#data 0x43100000

;==============================================
loc_8C0F12B0:
	mov.w @(0x8E,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(0x18,r4),r5
	mov.b r3,@(r0,r4)
	mov.w @(0x84,PC),r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bt.s loc_8c0f12ca
	mov 0x00,r6
	mov.w @(0x78,PC),r0
	mov.b r6,@(r0,r4)

loc_8C0F12CA:
	mov.w @(0x78,PC),r0
	mov.l @(0x7C,PC),r13
	mov.w @(r0,r5),r3
	cmp/pl r3
	bf loc_8c0f1320
	mov.w @(0x1C,r4),r0
	tst r0,r0
	bt loc_8c0f1320
	mov.w @(0x6A,PC),r0
	mov.l @(r0,r4),r7
	mov.w @(0x1C,r4),r0
	mov.w @r7,r3
	lds r3,fpul
	mov r0,r3
	mov 0x50,r0
	float fpul,fr3
	lds r3,fpul
	float fpul,fr2
	fdiv fr2,fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x54,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r13),r14
	tst r14,r14
	bt loc_8c0f1310
	cmp/eq r14,r4
	bt loc_8c0f1310
	mov.w @(0x40,PC),r0
	mov.l @(r0,r14),r3
	cmp/eq r3,r7
	bt loc_8c0f1320
	mov.w @(0x32,PC),r0
	mov.b r6,@(r0,r14)

loc_8C0F1310:
	mov.w @(0x36,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	shll2 r0
	mov.l r4,@(r0,r13)
	mov.w @r7,r3
	cmp/pl r3
	bt loc_8c0f133c

loc_8C0F1320:
	mov r6,r0
	nop 
	mov.w r0,@(0x1C,r4)
	mov.w @(0x18,PC),r0
	mov.l @(0x24,PC),r3
	mov.b r6,@(r0,r4)
	add 0x78,r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	shll2 r0
	mov.l r6,@(r0,r13)
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0F133C:
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f1342:
	#data 0x012c
loc_8c0f1344:
	#data 0x0411
loc_8c0f1346:
	#data 0x0420
loc_8c0f1348:
	#data 0x00d0
loc_8c0f134a:
	#data 0x01a4
	#align4

loc_8C0F134c:
	#data 0x8C28C720
loc_8C0F1350:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0F1354:
	mov.w @(0xA6,PC),r3
	mov.l @(0x18,r4),r5
	mov.b @(0x7,r4),r0
	add r5,r3
	mov.b @r3,r3
	cmp/eq r3,r0
	bf loc_8c0f13f0
	mov.w @(0x98,PC),r0
	mov.b @(r0,r5),r0
	mov.b r0,@(0x7,r4)
	extu.b r0,r0
	tst r0,r0
	bt loc_8c0f13f0
	mov.b @r5,r3
	tst r3,r3
	bf loc_8c0f13f0
	mov.w @(0x88,PC),r0
	mov 0x00,r2
	mov 0x01,r7
	mov.l @(0x88,PC),r3
	mov.b r2,@(r0,r4)
	mov.b @(0x2,r5),r0
	mov.l @r3,r6
	extu.b r0,r0
	xor r7,r0
	mov r6,r1
	mov r0,r2
	shll r0
	add r2,r0
	add 0x18,r1
	shll2 r0
	mov.l @(r0,r1),r2
	mov.w @(0x6A,PC),r0
	mov.b @(r0,r2),r1
	tst r1,r1
	bf loc_8c0f13fa
	mov.b @(0x2,r5),r0
	mov r6,r2
	add 0x18,r2
	extu.b r0,r0
	xor r7,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r2,r0
	mov.l @(0x4,r0),r3
	mov.w @(0x4C,PC),r0
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c0f13fa
	mov.b @(0x2,r5),r0
	mov r6,r2
	add 0x18,r2
	extu.b r0,r0
	xor r7,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r2,r0
	mov.l @(0x8,r0),r3
	mov.w @(0x2E,PC),r0
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c0f13fa
	mov.l @(0x2C,PC),r1
	mov.w @r1,r2
	cmp/pz r2
	bf loc_8c0f13e4
	mov.w @(0x1C,PC),r0
	mov.b r7,@(r0,r4)

loc_8C0F13E4:
	mov.w @(0x1E,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r4)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c0f13fa

loc_8C0F13F0:
	mov.l @(0x18,PC),r3
	mov 0x00,r2
	mov.w @(0x8,PC),r0
	jmp @r3
	mov.b r2,@(r0,r4)


loc_8C0F13FA:
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f13fe:
	#data 0x0411
loc_8c0f1400:
	#data 0x012c
loc_8c0f1402:
	#data 0x0277
	#align4

loc_8c0f1404:
	#data 0x8C2896B0
loc_8c0f1408:
	#data 0x8C289BD2
loc_8C0F140C:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0F1410:
	mov.l r14,@-r15
	mov 0x00,r14 ; r14 set to 0x00
	mov.l r13,@-r15
	mov 0x06,r13 ; r13 set to 0x06
	sts.l pr,@-r15

loc_8C0F141A:
	bsr loc_8C0F142c
	mov r14,r4 ; r4 set to 0x00
	add 0x01,r14 ; r14 set to 0x01
	cmp/ge r13,r14
	bf loc_8C0F141a
	lds.l @r15+,pr
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0f142c:
	mov.l r14,@-r15
	mov 0x0B,r5
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	mov.l @(loc_8c0f14e4,pc),r3
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c0f14d0
	mov r0,r4
	mov.l @(loc_8c0f14e8,pc),r2
	mov 0x01,r3
	mov.w @(loc_8C0F14D8,pc),r0
	mov.w @(loc_8C0F14DC,pc),r14
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov r13,r2
	mov.l @(loc_8c0f14ec,pc),r0
	shll2 r2
	mov.l @(loc_8C0F14F0,pc),r3
	mov.l @(r0,r2),r1
	mov.l @r3,r0
	mul.l r14,r13
	mov.l @r0,r2
	shll2 r1
	mov.w @(loc_8C0F14DE,pc),r5
	add r2,r1
	mov.l @(loc_8C0F14F4,pc),r2
	mov.l @r1,r0
	sts macl,r14
	mov.w @(loc_8C0F14DA,pc),r1
	add r4,r1
	add r2,r14
	mov.l r0,@r1
	mov.b @(0x02,r14),r0
	add r14,r5
	mov.b @r5,r5
	extu.b r0,r0
	mov r0,r1
	shll r0
	extu.b r5,r5
	add r1,r0
	add r0,r5
	mov.l @(loc_8c0f14f8,pc),r0
	mov r4,r1
	add 0x34,r1
	mov.b @(r0,r5),r5
	extu.b r5,r5
	mov r5,r2
	shll r2
	mov r5,r3
	add r3,r2
	mov.l @(loc_8c0f14fc,pc),r3
	shll2 r2
	add r3,r2
	mov.l @(loc_8c0f1500,pc),r3
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8C0F14E0,pc),r0
	mov.l @(loc_8C0F1504,pc),r1
	mov.l @(loc_8c0f1508,pc),r2
	mov.l r1,@(r0,r4)
	mov r4,r1
	mov.l @(loc_8c0f1500,pc),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x20,r0
	mov.l @(loc_8c0f150c,pc),r2
	mov.b r13,@(r0,r4)
	mov r4,r1
	mov.w @(loc_8C0F14DE,pc),r0
	add 0x74,r1
	mov.b @(r0,r14),r3
	mov 0x21,r0
	mov.b r3,@(r0,r4)
	mov.l @(loc_8c0f1510,pc),r3
	jsr @r3
	mov 0x10,r0
	mov.l r14,@(0x18,r4)

loc_8c0f14d0:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F14D8:
	#data 0x012C
loc_8C0F14DA:
	#data 0x0084
loc_8C0F14DC:
	#data 0x05A4
loc_8C0F14DE:
	#data 0x0411
loc_8C0F14E0:
	#data 0x00CC
	#align4

loc_8c0f14e4:
	#data bank04.loc_8c044f12
loc_8c0f14e8:
	#data loc_8c0f1514
loc_8c0f14ec:
	#data bank16.loc_8c1604e4
loc_8C0F14F0:
	#data 0x8C26A90C
loc_8C0F14F4:
	#data 0x8C268340
loc_8c0f14f8:
	#data bank16.loc_8c16057c
loc_8c0f14fc:
	#data bank16.loc_8c1604fc
loc_8c0f1500:
	#data bank12.loc_8c1294c8
loc_8C0F1504:
	#data 0x00010C31
loc_8c0f1508:
	#data bank16.loc_8c160550
loc_8c0f150c:
	#data bank16.loc_8c16055c
loc_8c0f1510:
	#data bank12.loc_8c1294bc

;==============================================
loc_8c0f1514:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(0x11A,PC),r0
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(0x18,r14),r13
	mov.b @(r0,r13),r4
	mov 0x21,r0
	mov.b @(r0,r14),r3
	extu.b r4,r4
	extu.b r3,r3
	cmp/eq r4,r3
	bt.s loc_8c0f1562
	mov 0x00,r12
	mov.b @(0x2,r13),r0
	mov r4,r5
	shll r5
	mov.l @(0x108,PC),r2
	extu.b r0,r0
	mov r14,r1
	add r0,r5
	mov r5,r3
	shll r5
	add r3,r5
	mov.l @(0x100,PC),r3
	shll2 r5
	add r2,r5
	mov r5,r2
	add 0x5C,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x21,r0
	mov.b r4,@(r0,r14)
	mov 0x20,r0
	mov.w r0,@(0x1C,r14)
	mov r12,r0
	nop 
	mov.w r0,@(0x1E,r14)

loc_8c0f1562:
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bt loc_8c0f159e
	mov.w @(0x1C,r14),r0
	cmp/eq 0x10,r0
	bf loc_8c0f1584
	mov.w @(0x1E,r14),r0
	mov r14,r2
	mov.l @(0xD8,PC),r3
	mov r14,r1
	add 0x5C,r2
	add r3,r0
	mov.l @(0xCC,PC),r3
	mov.w r0,@(0x1E,r14)
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0

loc_8c0f1584:
	mov.l @(0xC8,PC),r3
	mov.w @(0x1E,r14),r0
	jsr @r3
	mov r0,r4
	mov 0x50,r0
	mov.w @(0xA8,PC),r3
	fmov fr0,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1E,r14),r0
	add r3,r0
	mov.w r0,@(0x1E,r14)

loc_8c0f159e:
	mov.l @(0xB4,PC),r4
	mov 0x04,r0
	fmov @(r0,r4),fr3
	mov 0x78,r0
	fmov fr3,@(r0,r14)
	mov 0x08,r0
	fmov @(r0,r4),fr3
	mov 0x7C,r0
	fmov fr3,@(r0,r14)
	mov 0x0C,r0
	fmov @(r0,r4),fr3
	add 0x74,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x80,PC),r0
	mov.w @(r0,r13),r3
	tst r3,r3
	bt loc_8c0f15da
	mov.l @(0x94,PC),r4
	mov 0x04,r0
	fmov @(r0,r4),fr3
	mov 0x78,r0
	fmov fr3,@(r0,r14)
	mov 0x08,r0
	fmov @(r0,r4),fr3
	mov 0x7C,r0
	fmov fr3,@(r0,r14)
	mov 0x0C,r0
	fmov @(r0,r4),fr3
	add 0x74,r0
	fmov fr3,@(r0,r14)

loc_8c0f15da:
	mov.w @(0x60,PC),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bf loc_8c0f15ee
	mov.w @(0x5A,PC),r0
	mov.w @(r0,r13),r3
	cmp/pl r3
	bt loc_8c0f15ee
	mov.w @(0x54,PC),r0
	mov.b r12,@(r0,r14)

loc_8c0f15ee:
	mov.w @(0x50,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0f166a
	mov.w @(0x44,PC),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bt loc_8c0f1686
	mov.b @r13,r3
	tst r3,r3
	bf loc_8c0f1686
	mov.b @(0x2,r13),r0
	mov 0x03,r2
	mov.l @(0x50,PC),r1
	extu.b r0,r0
	mov.b @(r0,r1),r3
	cmp/ge r2,r3
	bf loc_8c0f161a
	mov.w @(0x22,PC),r0
	mov.b @(r0,r13),r0
	tst r0,r0
	bt loc_8c0f1680

loc_8c0f161a:
	mov.l @(0x44,PC),r1
	mov 0x74,r0
	fmov @(r0,r14),fr2
	lds r1,fpul
	fsts fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r14)
	fmov @(r0,r14),fr1
	fldi0 fr2
	fcmp/gt fr1,fr2
	bf loc_8c0f1686
	mov.w @(0xE,PC),r0
	mov.b r12,@(r0,r14)
	bra loc_8c0f1664
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f1638:
	#data 0x0411
loc_8c0f163a:
	#data 0x0400
loc_8c0f163c:
	#data 0x02a0
loc_8c0f163e:
	#data 0x01dc
loc_8c0f1640:
	#data 0x0420
loc_8c0f1642:
	#data 0x012c
	#align4

loc_8c0f1644:
	#data bank16.loc_8c1604fc
loc_8c0f1648:
	#data bank12.loc_8c1294c8
loc_8c0f164c:
	#data 0x00008000
loc_8c0f1650:
	#data bank11.loc_8c11e2e0
loc_8c0f1654:
	#data bank16.loc_8c16055c
loc_8c0f1658:
	#data bank16.loc_8c16056c
loc_8c0f165C:
	#data 0x8C289626
loc_8c0f1660:
	#data 0x3D000000

;==============================================
loc_8c0f1664:
	mov 0x74,r0
	bra loc_8c0f1686
	fmov fr2,@(r0,r14)

loc_8c0f166a:
	mov.w @(0x22,PC),r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bf loc_8c0f1686
	mov.w @(0x1C,PC),r0
	mov.w @(r0,r13),r3
	cmp/pl r3
	bf loc_8c0f1686
	mov.w @(0x16,PC),r0
	mov 0x01,r2
	mov.b r2,@(r0,r14)

loc_8c0f1680:
	mov 0x74,r0
	fldi1 fr3
	fmov fr3,@(r0,r14)

loc_8c0f1686:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f1690:
	#data 0x01dc
loc_8c0f1692:
	#data 0x0420
loc_8c0f1694:
	#data 0x012c
	#align4

;==============================================
loc_8C0F1698:
	mov.l @(loc_8C0F17F0,pc),r3 ; r3 set to 0x8C26823c
	sts.l pr,@-r15
	mov.l @r3,r0
	mov.l @(0x14,r0),r0
	cmp/eq 0x40,r0
	bt loc_8C0F16Ae
	bsr loc_8C0F16B4
	mov 0x00,r4 ; r4 set to 0x00
	mov 0x01,r4 ; r4 set to 0x01
	bra loc_8C0F16B4
	lds.l @r15+,pr

loc_8C0F16AE:
	lds.l @r15+,pr
	rts
	nop

loc_8c0f16b4:
	mov.l r14,@-r15
	mov 0x0C,r5
	sts.l pr,@-r15
	mov.l @(loc_8c0f17f4,pc),r3
	mov r4,r14
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c0f172c
	mov r0,r4
	mov.w @(loc_8C0F17DA,pc),r0
	mov 0x01,r3
	mov 0x00,r5
	mov.l @(loc_8c0f17f8,pc),r2
	mov.b r3,@(r0,r4)
	mov.w @(loc_8C0F17DC,pc),r0
	mov.l r2,@(0x10,r4)
	mov.l r5,@(r0,r4)
	add 0x48,r0
	mov.l r5,@(r0,r4)
	mov r14,r0
	nop
	mov r0,r2
	shll r2
	mov r0,r3
	add r3,r2
	mov.b r0,@(0x02,r4)
	shll2 r2
	mov.l @(loc_8c0f17fc,pc),r0
	shll r2
	mov.l @(loc_8c0f1800,pc),r3
	mov r4,r1
	add r0,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c0f1804,pc),r2
	mov r4,r1
	mov.l @(loc_8c0f1800,pc),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8C0F17DE,pc),r6
	mov.l @(loc_8C0F1808,pc),r3
	mul.l r6,r14
	mov.w @(loc_8C0F17E0,pc),r7
	add r4,r7
	sts macl,r6
	add r3,r6
	mov.l r6,@(0x18,r4)
	mov.b @(0x01,r6),r0
	mov 0x04,r6
	mov.b r0,@(0x01,r4)
	mov r5,r4

loc_8c0f1722:
	add 0x01,r4
	mov.l r5,@r7
	cmp/ge r6,r4
	bf/s loc_8c0f1722
	add 0x04,r7

loc_8c0f172c:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0F1732:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x02,r14),r0
	mov r14,r4
	mov.l @(loc_8C0F180C,pc),r1 ; r1 set to 0x8C289608
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	mov.l @(r0,r1),r2
	mov.w @(loc_8C0F17E2,pc),r0 ; r0 set to 0x138
	mov.l r2,@(r0,r14)
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0F1810,pc),r2 ; r2 set to 0x8C160B00
	extu.b r0,r0 ; r0 set to 0x38
	shll2 r0 ; r0 set to 0xE0
	mov.l @(r0,r2),r3
	mov.w @(loc_8C0F17E2,pc),r0 ; r0 set to 0x138
	mov.l @(r0,r14),r5
	jmp @r3
	mov.l @r15+,r14

;=============================================
loc_8C0F175E:
	mov.b @(0x4,r4),r0
	mov 0x00,r6
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x7A,PC),r0
	mov.w r6,@(r0,r4)
	add 0x06,r0
	mov.w r6,@(r0,r4)
	add 0xFC,r0
	mov.w r6,@(r0,r4)
	add 0x0F,r0
	mov.b r6,@(r0,r4)
	add 0xFF,r0
	mov.b r6,@(r0,r4)
	mov 0x20,r0
	mov.b r6,@(r0,r4)
	mov.w @(0x64,PC),r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bt loc_8c0f1790
	mov.w @(0x5E,PC),r3
	mov r3,r0
	nop 
	add 0x3F,r0
	mov.b r3,@(r0,r4)

loc_8C0F1790:
	rts 
	nop 

;==============================================
loc_8C0F1794:
	mov.w @(0x4C,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(r0,r14),r3
	add 0x06,r0
	mov.w r3,@(r0,r14)
	add 0x0B,r0
	mov.b @(r0,r14),r2
	mov.w @(0x42,PC),r0
	extu.b r2,r2
	mov.b @(r0,r5),r3
	cmp/ge r3,r2
	bt loc_8c0f17ba
	mov.b @(r0,r5),r2
	mov 0x00,r3
	mov.w @(0x36,PC),r0
	mov.b r2,@(r0,r14)
	mov.w @(0x30,PC),r0
	mov.b r3,@(r0,r5)

loc_8C0F17BA:
	mov.w @(0x2E,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0f17c8
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)

loc_8C0F17C8:
	mov 0x20,r0
	mov r14,r4
	mov.b @(r0,r14),r2
	mov.l @(0x44,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f17da:
	#data 0x012C
loc_8c0f17dc:
	#data 0x0084
loc_8c0f17de:
	#data 0x05A4
loc_8c0f17e0:
	#data 0x019c
loc_8C0F17E2:
	#data 0x0138
loc_8c0f17e4:
	#data 0x012e
loc_8c0f17e6:
	#data 0x0525
loc_8c0f17e8:
	#data 0x00ff
loc_8c0f17ea:
	#data 0x01ee
loc_8c0f17ec:
	#data 0x013f
	#align4

loc_8C0F17F0:
	#data 0x8C26823c
loc_8C0F17F4:
	#data bank04.loc_8c044F12
loc_8C0F17F8:
	#data loc_8c0f1732
loc_8C0F17FC:
	#data bank16.loc_8c160584
loc_8C0F1800:
	#data bank12.loc_8c1294C8
loc_8C0F1804:
	#data bank16.loc_8c1605B4
loc_8c0f1808:
	#data 0x8C268340
loc_8C0F180C:
	#data 0x8C289608
loc_8C0F1810:
	#data bank16.loc_8c160B00
loc_8C0F1814:
	#data bank16.loc_8c160B10

;==============================================
loc_8C0F1818:
	mov r4,r3
	mov.l @(loc_8C0F192C,pc),r1 ; r1 set to 0x8C160B28
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0F182A:
	mov.l @(loc_8C0F1930,pc),r3 ; r3 set to 0x8C26823c
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @r3,r0
	mov.b @(0x02,r0),r0
	cmp/eq 0x02,r0
	bf/s loc_8C0F18A4
	mov r4,r14
	mov.l @(loc_8C0F1934,pc),r6 ; r6 set to 0x8C2895F0
	mov 0x05,r3 ; r3 set to 0x05
	mov.b @r6,r4
	extu.b r4,r4
	cmp/ge r3,r4
	bt loc_8C0F18A4
	mov 0x04,r1 ; r1 set to 0x04
	cmp/ge r1,r4
	bf loc_8C0F18A4
	mov.b @(0x02,r6),r0
	extu.b r0,r4
	tst r4,r4
	bt loc_8C0F18A4
	mov.b @(0x02,r5),r0
	mov 0x7F,r2 ; r2 set to 0x7f
	and r2,r4
	extu.b r0,r0
	cmp/eq r4,r0
	bt/s loc_8C0F1872
	mov 0x00,r13 ; r13 set to 0x00
	mov r13,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x05,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov 0x01,r3 ; r3 set to 0x01
	bra loc_8C0F18A4
	mov.b r3,@(r0,r14)

loc_8c0f1872:
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0F1926,pc),r0
	mov.b r13,@(r0,r14)
	mov.b @(r0,r14),r6
	extu.b r6,r6
	bsr loc_8c0f1f84
	mov r14,r4
	mov.l @(loc_8c0f1930,pc),r3
	mov 0x18,r0
	mov.l @r3,r2
	mov.b @(r0,r2),r1
	mov 0x01,r2
	mov.b @(0x02,r14),r0
	extu.b r0,r0
	shad r0, r2
	tst r2,r1
	bt loc_8c0f189e
	mov.l @(loc_8c0f1938,pc),r2
	jsr @r2
	mov 0x0A,r4

loc_8c0f189e:
	mov r13,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8C0F18A4:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0F18AC:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov.l r5,@(0x04,r15)
	bsr loc_8C0F1EFe
	mov.l @r15,r4
	mov.l @r15,r4
	mov.l @(0x04,r15),r5
	add 0x08,r15
	lds.l @r15+,pr

loc_8C0F18C0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	bsr loc_8C0F204c
	mov r5,r13
	mov.w @(0x1C,r14),r0
	mov.w @(loc_8C0F1928,pc),r3 ; r3 set to 0x96, r3 set to 0x96
	exts.w r0,r4
	cmp/gt r3,r4
	add 0x01,r0
	bt/s loc_8C0F191e
	mov.w r0,@(0x1C,r14)
	mov 0x78,r1 ; r1 set to 0x78, r1 set to 0x78
	cmp/ge r1,r4
	bf loc_8C0F191e
	mov r13,r5
	bsr loc_8C0F1D48
	mov r14,r4
	tst r0,r0
	bt loc_8C0F191e
	mov r13,r5
	bsr loc_8C0F1DA0
	mov r14,r4
	tst r0,r0
	bt loc_8C0F191e
	mov r13,r5
	bsr loc_8C0F1CF6
	mov r14,r4
	tst r0,r0
	bt loc_8C0F191e
	mov r13,r5
	bsr loc_8C0F1E04
	mov r14,r4
	tst r0,r0
	bt loc_8C0F191e
	mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00
	mov r13,r5
	mov.b r0,@(0x05,r14)
	mov 0x01,r3 ; r3 set to 0x01, r3 set to 0x01
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	mov r14,r4
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8C0F1F4c
	mov.l @r15+,r14

loc_8C0F191E:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f1926:
	#data 0x013c
loc_8C0F1928:
	#data 0x0096
	#align4

loc_8C0F192C:
	#data bank16.loc_8c160B28
loc_8C0F1930:
	#data 0x8C26823c
loc_8C0F1934:
	#data 0x8C2895F0
loc_8C0F1938:
	#data bank04.loc_8c04257c

;==============================================
loc_8C0F193C:
	mov.l r14,@-r15
	mov 0x00,r3 ; r3 set to 0x00
	mov.l r13,@-r15
	mov r4,r14
	mov.w @(loc_8C0F1A60,pc),r0 ; r0 set to 0x130
	mov r5,r13
	sts.l pr,@-r15
	mov r13,r5
	mov.w r3,@(r0,r14)
	bsr loc_8C0F1CF6
	mov r14,r4
	tst r0,r0
	bt loc_8C0F1980
	mov r13,r5
	bsr loc_8C0F1D48
	mov r14,r4
	tst r0,r0
	bt loc_8C0F1980
	mov r13,r5
	bsr loc_8C0F1DA0
	mov r14,r4
	tst r0,r0
	bt loc_8C0F1980
	mov r13,r5
	bsr loc_8C0F1E04
	mov r14,r4
	tst r0,r0
	bt loc_8C0F1980
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C0F1E5c
	mov.l @r15+,r14

loc_8C0F1980:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0F1988:
	mov r4,r3
	mov.l @(loc_8C0F1A64,pc),r1 ; r1 set to 0x8C160B34
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0F199A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov 0x00,r4 ; r4 set to 0x00
	mov.l r5,@r15
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov r4,r0 ; r0 set to 0x00
	nop
	mov.w r0,@(0x1C,r14)
	mov.w @(loc_8C0F1A62,pc),r0 ; r0 set to 0x13d
	mov.b r4,@(r0,r14)
	mov.l @r15,r5
	bsr loc_8C0F20Dc
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C0F19C6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	bsr loc_8C0F1EFe
	mov r5,r14
	mov r14,r5
	bsr loc_8C0F1EBa
	mov r13,r4
	mov r14,r5
	bsr loc_8C0F2104
	mov r13,r4
	lds.l @r15+,pr
	mov r13,r4
	mov r14,r5
	mov.l @r15+,r13
	bra loc_8C0F1B82
	mov.l @r15+,r14

loc_8C0F19EA:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	bsr loc_8C0F1EBa
	mov r5,r13
	tst r0,r0
	bt loc_8C0F1A0c
	mov r13,r5
	bsr loc_8C0F2104
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C0F1B82
	mov.l @r15+,r14

loc_8C0F1A0C:
	mov.b @(0x05,r14),r0
	mov r13,r5
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x00,r0 ; r0 set to 0x00
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8C0F1A22
	mov.l @r15+,r14

loc_8C0F1A22:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	bsr loc_8C0F2104
	mov r5,r13
	mov.w @(0x1C,r14),r0
	mov 0x1E,r3 ; r3 set to 0x1e
	exts.w r0,r4
	cmp/gt r3,r4
	add 0x01,r0
	bt/s loc_8C0F1A68
	mov.w r0,@(0x1C,r14)
	mov r4,r0
	nop
	cmp/eq 0x1E,r0
	bt loc_8C0F1A4e
	bra loc_8C0F1B74
	nop

loc_8C0F1A4E:
	mov r14,r4
	mov r13,r5
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8C0F1D48
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F1A60:
	#data 0x0130
loc_8C0F1A62:
	#data 0x013d
	#align4

loc_8C0F1A64:
	#data bank16.loc_8c160B34

;==============================================
loc_8C0F1A68:
	mov.w @(loc_8C0F1AF6,pc),r0 ; r0 set to 0x12e
	mov 0x03,r3 ; r3 set to 0x03
	mov 0x01,r5 ; r5 set to 0x01
	mov.w @(r0,r14),r4
	cmp/ge r3,r4
	bt/s loc_8C0F1A92
	mov 0x00,r12 ; r12 set to 0x00
	mov r12,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x05,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b r5,@(r0,r14)
	mov r14,r4
	mov r13,r5 ; r5 ??? bc r13 is ???
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12 ; r12 ??? bc r15 is ???
	mov.l @r15+,r13
	bra loc_8C0F1F4c
	mov.l @r15+,r14

loc_8c0f1a92:
	mov.w @(loc_8C0F1AF8,pc),r0
	mov 0x01,r3
	mov.l @(loc_8c0f1b00,pc),r11
	mov.w @(r0,r14),r2
	and r3,r2
	mov.w r2,@(r0,r14)
	exts.w r2,r2
	tst r2,r2
	bt/s loc_8c0f1b08
	mov 0x06,r6
	mov.w @(loc_8C0F1AFA,pc),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	tst r3,r0
	bt loc_8c0f1b08
	mov.w @(loc_8C0F1AF8,pc),r0
	mov 0x0A,r3
	mov.l @(loc_8C0F1B04,pc),r7
	mov.w r12,@(r0,r14)
	add 0x0C,r0
	mov.b r3,@(r0,r14)
	mov 0x29,r0
	mov.l @r7,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c0f1acc
	mov.w @(loc_8C0F1AFC,pc),r0
	mov 0x0B,r2
	mov.b r2,@(r0,r14)

loc_8c0f1acc:
	cmp/ge r6,r4
	bf loc_8c0f1b44
	mov.l @r7,r4
	mov 0x18,r0
	mov.b @(r0,r4),r2
	mov.b @(0x02,r14),r0
	extu.b r0,r0
	shad r0, r5
	tst r5,r2
	bt loc_8c0f1b44
	mov 0x29,r0
	mov.b @(r0,r4),r1
	tst r1,r1
	bf loc_8c0f1aec
	bra loc_8c0f1aee
	mov 0x0C,r4

loc_8c0f1aec:
	mov 0x0D,r4

loc_8c0f1aee:
	jsr @r11
	nop
	bra loc_8c0f1b44
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f1af6:
	#data 0x012E
loc_8C0F1AF8:
	#data 0x0130
loc_8C0F1AFA:
	#data 0x0274
loc_8C0F1AFC:
	#data 0x013C
	#align4

loc_8c0f1b00:
	#data bank04.loc_8c04257c
loc_8C0F1B04:
	#data 0x8C26823C

;==============================================
loc_8c0f1b08:
	mov 0x04,r7
	cmp/ge r7,r4
	bf/s loc_8c0f1b12
	mov 0x0D,r5
	mov r7,r5

loc_8c0f1b12:
	cmp/ge r6,r4
	bf/s loc_8c0f1b1a
	mov 0x08,r7
	mov 0x05,r5

loc_8c0f1b1a:
	cmp/ge r7,r4
	bf/s loc_8c0f1b22
	mov 0x0A,r2
	mov r6,r5

loc_8c0f1b22:
	cmp/ge r2,r4
	bf/s loc_8c0f1b2a
	mov 0x1E,r2
	mov 0x07,r5

loc_8c0f1b2a:
	cmp/ge r2,r4
	bf/s loc_8c0f1b32
	mov 0x32,r2
	mov r7,r5

loc_8c0f1b32:
	cmp/ge r2,r4
	bf/s loc_8c0f1b3a
	mov 0x64,r2
	mov 0x0E,r5

loc_8c0f1b3a:
	cmp/ge r2,r4
	bf loc_8c0f1b40
	mov 0x09,r5

loc_8c0f1b40:
	mov.w @(loc_8c0f1bfe,pc),r0
	mov.b r5,@(r0,r14)

loc_8c0f1b44:
	mov r12,r0
	nop
	mov.b r0,@(0x05,r14)
	mov 0x20,r0
	mov 0x03,r3
	mov r13,r5
	mov.b r3,@(r0,r14)
	bsr loc_8c0f1fb8
	mov r14,r4
	mov r13,r5
	bsr loc_8c0f1f4c
	mov r14,r4
	mov.w @(loc_8c0f1bfe,pc),r0
	mov.l @(loc_8c0f1c00,pc),r1
	mov.b @(r0,r14),r0
	extu.b r0,r0
	and 0x0F,r0
	mov.b @(r0,r1),r3
	extu.b r3,r3
	tst r3,r3
	bt/s loc_8c0f1b74
	mov.l r3,@r15
	jsr @r11
	mov r3,r4

loc_8C0F1B74:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0F1B82:
	mov.w @(0x1C,r4),r0
	mov 0x1E,r3 ; r3 set to 0x1e
	cmp/ge r3,r0
	bf loc_8C0F1B8e
	bra loc_8C0F1D48
	nop

loc_8C0F1B8E:
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	rts
	mov.w r0,@(0x1C,r4)

;==============================================
loc_8C0F1B96:
	mov r4,r3
	mov.l @(loc_8C0F1C04,pc),r1 ; r1 set to 0x8C160B44
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0F1BA8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r4 ; r4 set to 0x00
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	mov r5,r13
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov r4,r0 ; r0 set to 0x00
	nop
	mov.w r0,@(0x1C,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov r13,r5
	mov.b r4,@(r0,r14)
	bsr loc_8C0F1F4c
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.w @(loc_8C0F1BFE,pc),r0 ; r0 set to 0x13c
	mov r13,r5
	mov.b @(r0,r14),r6
	extu.b r6,r6
	bsr loc_8C0F1F84
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0F1BE0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	bsr loc_8C0F1EFe
	mov r5,r14
	mov r14,r5
	bsr loc_8C0F204c
	mov r13,r4
	lds.l @r15+,pr
	mov r13,r4
	mov r14,r5
	mov.l @r15+,r13
	bra loc_8C0F1C24
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F1BFE:
	#data 0x013c
	#align4

loc_8C0F1C00:
	#data bank16.loc_8c160AF0
loc_8C0F1C04:
	#data bank16.loc_8c160B44

;==============================================
loc_8C0F1C08:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	bsr loc_8c0f1eba
	mov r5,r14
	mov r14,r5
	bsr loc_8c0f204c
	mov r13,r4
	lds.l @r15+,pr
	mov r13,r4
	mov r14,r5
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c0f1c24:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x5A,r3
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	mov r5,r13
	exts.w r0,r4
	cmp/gt r3,r4
	add 0x01,r0
	bt/s loc_8c0f1c76
	mov.w r0,@(0x1C,r14)
	mov 0x1E,r1
	cmp/ge r1,r4
	bf loc_8c0f1ca4
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bt loc_8c0f1c6a
	mov r13,r5
	bsr loc_8c0f1d48
	mov r14,r4
	tst r0,r0
	bt loc_8c0f1ca4
	mov r13,r5
	bsr loc_8c0f1da0
	mov r14,r4
	tst r0,r0
	bt loc_8c0f1ca4
	mov r13,r5
	bsr loc_8c0f1e04
	mov r14,r4
	tst r0,r0
	bt loc_8c0f1ca4

loc_8c0f1c6a:
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0f1cf6
	mov.l @r15+,r14

loc_8c0f1c76:
	mov r13,r5
	bsr loc_8c0f1f4c
	mov r14,r4
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bt loc_8c0f1c92
	mov 0x00,r0
	mov.b r0,@(0x05,r14)
	mov 0x20,r0
	mov 0x01,r3
	bra loc_8c0f1ca4
	mov.b r3,@(r0,r14)

loc_8c0f1c92:
	mov.b @(0x05,r14),r0
	mov r13,r5
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c0f1cac
	mov.l @r15+,r14

loc_8c0f1ca4:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14


;==============================================
loc_8c0f1cac:
	mov.l @(loc_8C0F1D18,pc),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c0f1cc4
	mov 0x00,r5
	mov r5,r0
	nop
	mov.b r0,@(0x05,r4)
	mov 0x20,r0
	mov.b r5,@(r0,r4)
	mov 0x21,r0
	mov.b r5,@(r0,r4)

loc_8c0f1cc4:
	rts
	nop

;==============================================
loc_8c0f1cc8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l r5,@r15
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c0f1ce4
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.l @r15,r5
	bsr loc_8c0f1f4c
	mov r14,r4

loc_8c0f1ce4:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c0f1cac
	mov.l @r15+,r14

;==============================================
loc_8C0F1CF0:
	mov.l @(loc_8C0F1D1C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;==============================================
loc_8c0f1cf6:
	mov.l @(loc_8C0F1D18,pc),r6
	mov.b @r6,r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c0f1d14
	mov.b @(0x02,r4),r0
	mov r6,r3
	add 0x4E,r3
	extu.b r0,r0
	shll r0
	add r3,r0
	mov.w @r0,r6
	mov 0x02,r7
	cmp/ge r7,r6
	bt loc_8c0f1d20

loc_8c0f1d14:
	rts
	mov 0x01,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C0F1D18:
	#data 0x8C2895F0
loc_8c0f1d1c:
	#data bank04.loc_8C0450C0

;==============================================
loc_8c0f1d20:
	mov.w @(loc_8C0F1E44,pc),r0
	mov.w @(loc_8C0F1E46,pc),r3
	mov.w r6,@(r0,r4)
	add 0x02,r0
	add r5,r3
	mov.w @(r0,r4),r2
	mov.w @r3,r3
	mov 0x00,r5
	or r3,r2
	mov.w r2,@(r0,r4)
	mov r5,r0
	nop
	mov.b r0,@(0x05,r4)
	mov.w r0,@(0x1C,r4)
	mov 0x20,r0
	mov.b r7,@(r0,r4)
	mov r5,r0
	nop
	rts
	nop

;==============================================
loc_8C0F1D48:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8C0F1E50,pc),r4 ; r4 set to 0x8C2895F0
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @r4,r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bt/s loc_8C0F1D60
	mov r5,r13
	bra loc_8C0F1D98
	mov 0x01,r0

;==============================================
loc_8c0f1d60:
	mov.b @(0x03,r4),r0
	tst r0,r0
	bf loc_8c0f1d7e
	mov 0x3E,r0
	mov.b @(r0,r4),r3
	mov.b @(0x02,r13),r0
	extu.b r0,r0
	cmp/eq r0,r3
	bf loc_8c0f1d7e
	mov.l @(0x08,r4),r2
	tst r2,r2
	bt loc_8c0f1d7e
	mov r13,r5
	bsr loc_8c0f1f4c
	mov r14,r4

loc_8c0f1d7e:
	mov r13,r5
	bsr loc_8c0f1f4c
	mov r14,r4
	mov 0x00,r4
	mov r4,r0
	nop
	mov.b r0,@(0x05,r14)
	mov 0x05,r3
	mov.w r0,@(0x1C,r14)
	mov 0x20,r0
	mov.b r3,@(r0,r14)
	mov r4,r0
	nop

loc_8C0F1D98:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0f1da0:
	mov.l @(loc_8c0f1e50,pc),r3
	sts.l pr,@-r15
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c0f1dc0
	mov.w @(loc_8C0F1E48,pc),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x1B,r0
	bf loc_8c0f1dc0
	mov.w @(loc_8C0F1E4A,pc),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x1B,r0
	bf loc_8c0f1dc6

loc_8c0f1dc0:
	lds.l @r15+,pr
	rts
	mov 0x01,r0

;==============================================
loc_8c0f1dc6:
	mov.w @(loc_8C0F1E48,pc),r0
	mov 0x01,r6
	mov.b @(r0,r5),r2
	add 0x01,r0
	mov.b r2,@(r0,r5)
	mov 0x00,r5
	mov.w @(loc_8C0F1E4C,pc),r0
	mov.b r6,@(r0,r4)
	mov r5,r0
	nop
	mov.l @(loc_8C0F1E54,pc),r1
	mov 0x03,r3
	mov.b r0,@(0x05,r4)
	mov.w r0,@(0x1C,r4)
	mov 0x20,r0
	mov.b r3,@(r0,r4)
	mov 0x18,r0
	mov.l @r1,r2
	mov.b @(r0,r2),r3
	mov.b @(0x02,r4),r0
	extu.b r0,r0
	shad r0, r6
	tst r6,r3
	bt loc_8c0f1dfc
	mov.l @(loc_8c0f1e58,pc),r3
	jsr @r3
	mov 0x0B,r4

loc_8c0f1dfc:
	mov 0x00,r0
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c0f1e04:
	mov.l @(0x48,PC),r3
	sts.l pr,@-r15
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c0f1e18
	mov.w @(0x3A,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c0f1e1e

loc_8c0f1e18:
	lds.l @r15+,pr
	rts 
	mov 0x01,r0

;==============================================
loc_8c0f1e1e:
	mov 0x00,r5
	mov.b r5,@(r0,r4)
	add 0xFD,r0
	mov 0x02,r3
	mov.b r3,@(r0,r4)
	mov r5,r0
	nop 
	mov.b r0,@(0x5,r4)
	mov 0x03,r3
	mov.w r0,@(0x1C,r4)
	mov 0x20,r0
	mov.b r3,@(r0,r4)
	mov.l @(0x20,PC),r3
	jsr @r3
	mov 0x0E,r4
	mov 0x00,r0
	lds.l @r15+,pr
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f1e44:
	#data 0x012E
loc_8c0f1e46:
	#data 0x0264
loc_8C0F1E48:
	#data 0x01D0
loc_8C0F1E4A:
	#data 0x01D1
loc_8C0F1E4C:
	#data 0x013C
loc_8C0F1E4e:
	#data 0x013F
	#align4

loc_8c0f1e50:
	#data 0x8C2895F0
loc_8C0F1E54:
	#data 0x8C26823C
loc_8c0f1e58:
	#data bank04.loc_8c04257c

;==============================================
loc_8c0f1e5c:
	mov.l @(0x10C,PC),r3
	sts.l pr,@-r15
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c0f1e88
	mov.w @(0xEC,PC),r0
	mov 0x01,r6
	mov.b @(r0,r5),r2
	add 0x9A,r0
	extu.b r2,r2
	shlr r2
	shad r2,r6
	mov.b @(r0,r4),r2
	extu.b r2,r2
	tst r6,r2
	bf loc_8c0f1e88
	mov.w @(0xD8,PC),r0
	mov 0x20,r2
	mov.w @(r0,r5),r3
	cmp/gt r2,r3
	bf loc_8c0f1e8e

loc_8c0f1e88:
	lds.l @r15+,pr
	rts 
	mov 0x01,r0

;==============================================
loc_8c0f1e8e:
	mov.w @(0xCA,PC),r0
	mov 0x0C,r3
	mov 0x00,r5
	mov.b @(r0,r4),r2
	or r6,r2
	mov.b r2,@(r0,r4)
	add 0xFE,r0
	mov.b r3,@(r0,r4)
	mov r5,r0
	nop 
	mov.b r0,@(0x5,r4)
	mov 0x03,r3
	mov.w r0,@(0x1C,r4)
	mov 0x20,r0
	mov.b r3,@(r0,r4)
	mov.l @(0xC0,PC),r3
	jsr @r3
	mov 0x0F,r4
	mov 0x00,r0
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c0f1eba:
	mov.w @(0xA0,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c0f1ef0
	mov.w @(0x9C,PC),r3
	mov 0x01,r6
	mov.w @(0x96,PC),r0
	add r5,r3
	mov.w @(r0,r4),r2
	mov.w @r3,r3
	or r3,r2
	mov.w r2,@(r0,r4)
	mov.b @(0x2,r4),r0
	extu.b r0,r5
	mov.l @(0x9C,PC),r0
	shll r5
	mov.w @(r0,r5),r5
	cmp/gt r6,r5
	bt loc_8c0f1ef4
	tst r5,r5
	bf loc_8c0f1eec
	mov.w @(0x7C,PC),r0
	mov.w @(r0,r4),r3
	add 0xFA,r0
	mov.w r3,@(r0,r4)

loc_8c0f1eec:
	mov.w @(0x6E,PC),r0
	mov.b r6,@(r0,r4)

loc_8c0f1ef0:
	rts 
	mov 0x00,r0

loc_8c0f1ef4:
	mov.w @(0x6E,PC),r0
	mov.w r5,@(r0,r4)
	mov 0x01,r0
	rts 
	nop 

;==============================================
loc_8c0f1efe:
	mova @(0x78,PC),r0
	fmov @r0,fr5
	mov 0x34,r0
	fmov @(r0,r4),fr3
	mov 0x70,r0
	fmov @(r0,r4),fr4
	fsub fr3,fr4
	fldi0 fr3
	fcmp/eq fr3,fr4
	bf loc_8c0f1f26
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov 0x34,r0
	fmov @(r0,r4),fr3
	mov 0x70,r0
	fmov @(r0,r4),fr2
	fsub fr3,fr2
	fmov fr2,fr4
	fmul fr5,fr4

loc_8c0f1f26:
	fdiv fr5,fr4
	mova @(0x50,PC),r0
	fmov @r0,fr3
	fcmp/gt fr4,fr3
	bf loc_8c0f1f42
	mova @(0x4C,PC),r0
	fmov @r0,fr2
	fcmp/gt fr2,fr4
	bf loc_8c0f1f42
	mov 0x34,r0
	fmov @(r0,r4),fr3
	mov 0x70,r0
	fmov @(r0,r4),fr4
	fsub fr3,fr4

loc_8c0f1f42:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	rts 
	fmov fr3,@(r0,r4)

loc_8C0F1F4C:
	mov.w @(loc_8C0F1F68,pc),r0 ; r0 set to 0xD4
	mov 0x00,r5 ; r5 set to 0x00
	mov.l r5,@(r0,r4)
	add 0x04,r0 ; r0 set to 0xD8
	rts
	mov.l r5,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f1f58:
	#data 0x01a4
loc_8c0f1f5a:
	#data 0x0420
loc_8c0f1f5c:
	#data 0x013e
loc_8c0f1f5e:
	#data 0x013d
loc_8c0f1f60:
	#data 0x0130
loc_8c0f1f62:
	#data 0x0264
loc_8c0f1f64:
	#data 0x0134
loc_8c0f1f66:
	#data 0x012e
loc_8c0f1f68:
	#data 0x00d4
	#align4

loc_8C0F1F6c:
	#data 0x8C2895F0
loc_8C0F1F70:
	#data bank04.loc_8c04257c
loc_8C0F1F74:
	#data 0x8C28963e
loc_8C0F1F78:
	#data 0x40800000
loc_8C0F1F7c:
	#data 0x3D000000
loc_8C0F1F80:
	#data 0xBD000000

;==============================================
loc_8c0f1f84:
	mov 0x0F,r3
	mov.l @(loc_8c0f20a4,pc),r0
	and r3,r6
	shll2 r6
	fmov.s @(r0,r6),fr6
	mova @(loc_8C0F20A8,pc),r0
	fmov.s @r0,fr4
	mov.b @(0x02,r5),r0
	fmov fr4,fr5
	tst r0,r0
	bf/s loc_8c0f1fa6
	fsub fr6,fr4
	mova @(loc_8C0F20AC,pc),r0
	fmov.s @r0,fr7
	fmov fr7,fr5
	fsub fr6,fr5
	fmov fr7,fr4

loc_8c0f1fa6:
	mov 0x34,r0
	fmov.s fr5,@(r0,r4)
	mov 0x70,r0
	fmov.s fr4,@(r0,r4)
	mova @(loc_8C0F20B0,pc),r0
	fmov.s @r0,fr3
	mov 0x38,r0
	bra loc_8c0f204c
	fmov.s fr3,@(r0,r4)

loc_8c0f1fb8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov r5,r3
	mov.l @(0xF0,PC),r1
	mov.l r5,@r15
	mov r15,r14
	mov.b @(0x2,r3),r0
	add 0x04,r14
	mov.l @(0xE8,PC),r2
	mov r4,r13
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	mov.l r3,@-r15
	mov.l @(0xE0,PC),r3
	mov.l r2,@-r15
	jsr @r3
	mov r14,r4
	add 0x08,r15
	mov.w @(0xB0,PC),r5
	mov 0x08,r6
	mov 0x00,r4
	add r13,r5
	mov 0x00,r7

loc_8c0f1fec:
	mov r14,r0
	nop 
	mov.b @(r0,r4),r3
	add 0xD0,r3
	mov.b r3,@r5
	exts.b r3,r3
	cmp/pz r3
	bt.s loc_8c0f2000
	add 0x01,r4
	add 0x01,r7

loc_8c0f2000:
	cmp/hs r6,r4
	bf.s loc_8c0f1fec
	add 0x01,r5
	lds r7,fpul
	cmp/pz r7
	bt.s loc_8c0f2016
	float fpul,fr3
	mov.l @(0xB0,PC),r3
	lds r3,fpul
	fsts fpul,fr2
	fadd fr2,fr3

loc_8c0f2016:
	mova @(0xAC,PC),r0
	mov.l @r15,r3
	fmov @r0,fr2
	mov.b @(0x2,r3),r0
	fmul fr2,fr3
	tst r0,r0
	fmov fr3,fr4
	bt.s loc_8c0f203e
	fneg fr4
	mov.w @(0x6C,PC),r0
	mov.l @(0x9C,PC),r1
	mov.b @(r0,r13),r0
	lds r1,fpul
	extu.b r0,r0
	mov.l @(0x70,PC),r1
	and 0x0F,r0
	shll2 r0
	fsts fpul,fr3
	fmov @(r0,r1),fr4
	fadd fr3,fr4

loc_8c0f203e:
	mov 0x64,r0
	fmov fr4,@(r0,r13)
	add 0x10,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C0F204C:
	mov.w @(loc_8C0F2098,pc),r0 ; r0 set to 0x13c
	mov 0x0F,r6 ; r6 set to 0x0f
	mov.b @(r0,r4),r3
	mov.l @(loc_8C0F20CC,pc),r0 ; r0 set to 0x8C160A70
	extu.b r3,r3
	and r6,r3
	shll2 r3
	mov.l @(r0,r3),r2
	mov.w @(loc_8C0F209A,pc),r0 ; r0 set to 0xD4
	mov.l r2,@(r0,r4)
	add 0x68,r0 ; r0 set to 0x13c
	mov.b @(r0,r4),r3
	mov.l @(loc_8C0F20D0,pc),r0 ; r0 set to 0x8C160AF0
	extu.b r3,r3
	and r6,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8C0F2092
	mov.l @(loc_8C0F20D4,pc),r1 ; r1 set to 0x8C26823c
	mov.w @(loc_8C0F209C,pc),r0 ; r0 set to 0x8b
	mov.l @r1,r2
	mov.b @(r0,r2),r3
	tst r3,r3
	bf loc_8C0F208c
	mov.w @(loc_8C0F209E,pc),r0 ; r0 set to 0x525
	mov.b @(r0,r5),r3
	tst r3,r3
	bf loc_8C0F208c
	mov.w @(loc_8C0F20A0,pc),r0 ; r0 set to 0xD8
	mov.l @(loc_8C0F20D8,pc),r3 ; r3 set to 0x8C160648
	bra loc_8C0F2092
	mov.l r3,@(r0,r4)

loc_8c0f208c:
	mov.w @(loc_8c0f20a0,pc),r0
	mov 0x00,r1
	mov.l r1,@(r0,r4)

loc_8C0F2092:
	rts
	nop

;==============================================
loc_8C0F2096:
	#data 0x019c
loc_8C0F2098:
	#data 0x013c
loc_8C0F209A:
	#data 0x00D4
loc_8C0F209C:
	#data 0x008b
loc_8C0F209E:
	#data 0x0525
loc_8C0F20A0:
	#data 0x00D8
	#align4

loc_8C0F20A4:
	#data bank16.loc_8c160AB0
loc_8c0f20a8:
	#data 0x42200000
loc_8c0f20ac:
	#data 0xC2200000
loc_8c0f20b0:
	#data 0x40A00000
loc_8c0f20b4:
	#data 0x8C28965c
loc_8C0F20B8:
	#data bank13.loc_8c13b794
loc_8C0F20BC:
	#data bank12.loc_8c129740
loc_8c0f20c0:
	#data 0x4F800000
loc_8c0f20c4:
	#data 0x3FE00000
loc_8c0f20c8:
	#data 0xC1C00000
loc_8C0F20CC:
	#data bank16.loc_8c160A70
loc_8C0F20D0:
	#data bank16.loc_8c160AF0
loc_8C0F20D4:
	#data 0x8C26823c
loc_8C0F20D8:
	#data bank16.loc_8c160648

;==============================================
loc_8c0f20dc:
	mova @(loc_8C0F220C,pc),r0
	fmov.s @r0,fr5
	mova @(loc_8C0F2210,pc),r0
	fmov.s @r0,fr4
	mov.b @(0x02,r5),r0
	tst r0,r0
	bf loc_8c0f20f2
	mova @(loc_8C0F2214,pc),r0
	fmov.s @r0,fr5
	mova @(loc_8C0F2218,pc),r0
	fmov.s @r0,fr4

loc_8c0f20f2:
	mov 0x34,r0
	fmov.s fr5,@(r0,r4)
	mov 0x70,r0
	fmov.s fr4,@(r0,r4)
	mova @(loc_8C0F221C,pc),r0
	fmov.s @r0,fr3
	mov 0x38,r0
	rts
	fmov.s fr3,@(r0,r4)

;==============================================
loc_8c0f2104:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0xEC,PC),r0
	mov r4,r14
	mov r15,r13
	mov.l @(0x10C,PC),r2
	mov.w @(r0,r14),r3
	mov.l r3,@-r15
	mov.l @(0x108,PC),r3
	mov.l r2,@-r15
	jsr @r3
	mov r13,r4
	add 0x08,r15
	mov.w @(0xDA,PC),r1
	mov 0x00,r0
	mov.w @(0xD4,PC),r4
	mov 0x03,r7
	mov r1,r6
	add 0x2F,r6
	add r14,r4

loc_8c0f2130:
	mov.b @(r0,r13),r3
	add r1,r3
	mov.b r3,@r4
	mov.b @r4,r2
	extu.b r2,r2
	cmp/pz r2
	bt.s loc_8c0f2142
	add 0x01,r0
	mov.b r6,@r4

loc_8c0f2142:
	cmp/ge r7,r0
	bf.s loc_8c0f2130
	add 0x01,r4
	mov.w @(0xB6,PC),r0
	mov 0x00,r2
	mov.l @(0xD8,PC),r3
	mov.l r3,@(r0,r14)
	add 0x04,r0
	mov.l r2,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C0F215E:
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
	add 0xFC,r15
	mov.w @(loc_8C0F2204,pc),r0 ; r0 set to 0x12c
	mov r4,r12
	mov.b @(r0,r12),r3
	tst r3,r3
	bf loc_8C0F2184
	bra loc_8C0F232a
	nop

loc_8C0F2184:
	mov.w @(loc_8C0F2202,pc),r0 ; r0 set to 0xD4
	mov.l @(r0,r12),r14
	tst r14,r14
	bf loc_8C0F2190
	bra loc_8C0F232a
	nop

loc_8C0F2190:
	mov.l @(loc_8C0F222C,pc),r2 ; r2 set to 0x8C120950
	jsr @r2
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @(loc_8C0F2230,pc),r3 ; r3 set to 0x8C121100
	jsr @r3
	nop
	mov.l @(loc_8C0F2234,pc),r2 ; r2 set to 0x8C1210E0
	mov r12,r4 ; r4 ??? bc r12 is ???
	jsr @r2
	add 0x34,r4
	mov.l @(loc_8C0F2238,pc),r3 ; r3 set to 0x8C11FA80
	mov.w @(loc_8C0F2206,pc),r4 ; r4 set to 0x88
	jsr @r3
	add r12,r4 ; r4 ??? bc r12 is ???
	mov.l @(loc_8C0F223C,pc),r2 ; r2 set to 0x8C120900
	jsr @r2
	mov 0x01,r4 ; r4 set to 0x01
	mov.l @(loc_8C0F2240,pc),r3 ; r3 set to 0x8C02E334
	jsr @r3
	nop
	mov.l @(loc_8C0F222C,pc),r2 ; r2 set to 0x8C120950
	jsr @r2
	mov 0x00,r4 ; r4 set to 0x00
	mova @(loc_8C0F2244,pc),r0  ; r0 init to 0x8C0F2244
	mov.l @(loc_8C0F224C,pc),r11 ; r11 set to 0x8C26A90c
	mov.l @(loc_8C0F2248,pc),r8 ; r8 set to 0x8C1605F0
	mov 0x07,r10 ; r10 set to 0x07
	fmov.s @r0,fr13
	fldi1 fr15
	fldi0 fr14
	bra loc_8C0F22Fe
	mov 0x00,r3

;==============================================
loc_8C0F21D0:
	mov.l @(loc_8C0F2250,pc),r3 ; r3 set to 0x8C1201E0
	mov.w @(loc_8C0F2206,pc),r4 ; r4 set to 0x88
	jsr @r3
	add r12,r4 ; r4 ??? bc r12 is ???
	mov.b @r15,r2
	tst r2,r2
	bt loc_8C0F21F6
	mov.w @(loc_8C0F2208,pc),r0 ; r0 set to 0xD8
	mov.l @(r0,r12),r14
	tst r14,r14
	bf loc_8C0F21Ea
	bra loc_8C0F230c
	nop

loc_8c0f21ea:
	mov.l @(loc_8c0f2254,pc),r3
	mov 0x64,r0
	fmov fr14,fr6
	fmov fr13,fr5
	jsr @r3
	fmov.s @(r0,r12),fr4

loc_8C0F21F6:
	mov.w @(loc_8C0F21FE,pc),r13 ; r13 set to 0x19c
	bra loc_8C0F22F4
	add r12,r13

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F21Fc:
	#data 0x012e
loc_8C0F21FE:
	#data 0x019c
loc_8C0F2200:
	#data 0x00D0
loc_8C0F2202:
	#data 0x00D4
loc_8C0F2204:
	#data 0x012c
loc_8C0F2206:
	#data 0x0088
loc_8C0F2208:
	#data 0x00D8
	#align4

loc_8c0f220c:
	#data 0x42200000
loc_8c0f2210:
	#data 0x41800000
loc_8c0f2214:
	#data 0xC2800000
loc_8c0f2218:
	#data 0xC2200000
loc_8c0f221c:
	#data 0x40A00000
loc_8C0F2220:
	#data bank13.loc_8c13b798
loc_8C0F2224:
	#data bank12.loc_8c129740
loc_8C0F2228:
	#data bank16.loc_8c160610
loc_8C0F222C:
	#data bank12.loc_8c120950
loc_8C0F2230:
	#data bank12.loc_8c121100
loc_8C0F2234:
	#data bank12.loc_8c1210E0
loc_8C0F2238:
	#data bank11.loc_8c11FA80
loc_8C0F223C:
	#data bank12.loc_8c120900
loc_8C0F2240:
	#data bank02.loc_8c02E334
loc_8C0F2244:
	#data 0xC0C00000
loc_8C0F2248:
	#data bank16.loc_8c1605F0
loc_8C0F224C:
	#data 0x8C26A90c
loc_8C0F2250:
	#data bank11.loc_8c1201E0
loc_8C0F2254:
	#data bank12.loc_8c1210B0

;==============================================
loc_8c0f2258:
	mov.l @(loc_8c0f234c,pc),r3
	mov 0x04,r0
	fmov fr14,fr6
	fmov fr14,fr5
	jsr @r3
	fmov.s @(r0,r14),fr4
	mov.b @(0x02,r14),r0
	tst r0,r0
	bt loc_8c0f2288
	mov.b @(0x02,r14),r0
	mov.l @(loc_8c0f2350,pc),r3
	and r10,r0
	shll2 r0
	jsr @r3
	mov.l @(r0,r8),r4
	mov.b @(0x02,r14),r0
	mov.l @(loc_8c0f2354,pc),r3
	and r10,r0
	shll2 r0
	jsr @r3
	mov.l @(r0,r8),r4
	mov.l @(loc_8c0f2358,pc),r2
	jsr @r2
	fmov fr0,fr4

loc_8c0f2288:
	mov.l @(loc_8c0f235c,pc),r3
	fmov fr15,fr5
	fmov fr15,fr6
	jsr @r3
	fmov fr15,fr4
	mov.b @(0x01,r14),r0
	cmp/pz r0
	bf/s loc_8c0f22c8
	mov.l @r11,r9
	mov.b @r13,r2
	cmp/pz r2
	bf loc_8c0f22c4
	mov.b @r14,r2
	cmp/pl r2
	bf loc_8c0f22b6
	mov.b @r13,r4
	mov.b @r14,r5
	mov.l @r9,r0
	shll2 r4
	mov.l @(loc_8c0f2360,pc),r3
	add 0xFF,r5
	jsr @r3
	mov.l @(r0,r4),r4

loc_8c0f22b6:
	mov.l @r11,r0
	mov.b @r13,r4
	mov.l @r0,r0
	mov.l @(loc_8c0f2364,pc),r3
	shll2 r4
	jsr @r3
	mov.l @(r0,r4),r4
	
loc_8c0f22c4:
	bra loc_8c0f22f2
	add 0x01,r13

loc_8c0f22c8:
	mov.b @r14,r3
	cmp/pl r3
	bf loc_8c0f22e0
	mov.b @(0x03,r14),r0
	mov.b @r14,r5
	mov r0,r4
	mov.l @r9,r0
	mov.l @(loc_8c0f2360,pc),r3
	add 0xFF,r5
	shll2 r4
	jsr @r3
	mov.l @(r0,r4),r4

loc_8c0f22e0:
	mov.b @(0x03,r14),r0
	mov.l @(loc_8c0f2364,pc),r2
	mov r0,r4
	mov.l @r11,r0
	shll2 r4
	mov.l @r0,r3
	add r3,r4
	jsr @r2
	mov.l @r4,r4

loc_8c0f22f2:
	add 0x08,r14

loc_8C0F22F4:
	mov.b @r14,r3
	cmp/pz r3
	bt loc_8C0F2258
	mov.b @r15,r3
	add 0x01,r3

loc_8C0F22FE:
	mov.b r3,@r15
	mov 0x02,r3 ; r3 set to 0x02, r3 set to 0x02
	mov.b @r15,r2
	cmp/ge r3,r2
	bt loc_8C0F230c
	bra loc_8C0F21D0
	nop

loc_8C0F230C:
	mov 0x01,r4 ; r4 set to 0x01
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0F2368,pc),r3 ; r3 set to 0x8C120900
	fmov.s @r15+,fr13
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0F232A:
	add 0x04,r15
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

;==============================================
loc_8c02f2a:
	add 0xE0,r15
	rts 
	add 0x20,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C0F234C:
	#data bank12.loc_8c1210B0
loc_8C0F2350:
	#data bank12.loc_8c120FF0
loc_8C0F2354:
	#data bank03.loc_8c0301B4
loc_8C0F2358:
	#data bank12.loc_8c122710
loc_8C0F235C:
	#data bank12.loc_8c123780
loc_8C0F2360:
	#data bank03.loc_8c032FAe
loc_8C0F2364:
	#data bank12.loc_8c1235B0
loc_8C0F2368:
	#data bank12.loc_8c120900

;==============================================
loc_8C0F236C:
	mov.l @(0x9C,PC),r3
	mov 0x4D,r1
	sts.l pr,@-r15
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x03,r0
	bt loc_8c0f237e
	bsr loc_8c0f238c
	mov 0x00,r4

loc_8C0F237E:
	bsr loc_8c0f238c
	mov 0x01,r4
	bsr loc_8c0f242c
	mov 0x00,r4
	mov 0x01,r4
	bra loc_8c0f242c
	lds.l @r15+,pr

loc_8C0F238C:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x7C,PC),r3
	mov 0x0B,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0f23fc
	mov r0,r4
	mov.w @(0x5E,PC),r0
	mov 0x01,r3
	mov.l @(0x70,PC),r5
	mov.l @(0x68,PC),r2
	mov.b r3,@(r0,r4)
	add 0x28,r0
	mov.l r2,@(0x10,r4)
	mov.l @r5,r3
	mov.l @r3,r2
	mov.l @(r0,r2),r1
	mov.w @(0x4C,PC),r0
	mov.l r1,@(r0,r4)
	mov r4,r1
	mov.l @r15,r2
	add 0x34,r1
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(0x54,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(0x50,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x32,PC),r0
	mov.l @(0x4C,PC),r1
	mov.l @(0x34,PC),r2
	mov.l r1,@(r0,r4)
	mov 0x20,r0
	mov.l @r15,r3
	mov 0x4D,r1
	mov.b r3,@(r0,r4)
	mov.l @r2,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x03,r0
	bf loc_8c0f23fc
	mov.l @(0x3C,PC),r0
	mov.l r0,@(0x10,r4)
	mov.l @r5,r3
	mov.w @(0x16,PC),r0
	mov.l @r3,r2
	mov.l @(r0,r2),r0
	mov.w @(0xC,PC),r2
	add r4,r2
	mov.l r0,@r2

loc_8C0F23FC:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c0f2404:
	#data 0x012c
loc_8c0f2406:
	#data 0x0084
loc_8c0f2408:
	#data 0x00cc
loc_8c0f240a:
	#data 0x017c
	#align4

loc_8c0f240c:
	#data 0x8C26823c
loc_8C0F2410:
	#data bank04.loc_8c044F12
loc_8C0F2414:
	#data loc_8c0f24Da
loc_8C0F2418:
	#data 0x8C26A90c
loc_8C0F241C:
	#data bank16.loc_8c160EE4
loc_8C0F2420:
	#data bank12.loc_8c1294C8
loc_8C0F2424:
	#data 0x00010801
loc_8C0F2428:
	#data loc_8c0f2666

;==============================================
loc_8C0F242C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.w @(0xE0,PC),r4
	mov.l @(0xEC,PC),r3
	mul.l r4,r14
	mov.w @(0xDC,PC),r2
	mov.l @(0xE8,PC),r1
	sts macl,r4
	add r3,r4
	mov.l r4,@r15
	add r2,r4
	mov.l @r4,r0
	and r1,r0
	tst r0,r0
	bf loc_8c0f24d2
	mov.l @(0xDC,PC),r2
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r2
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0f24d2
	mov r0,r4
	mov.w @(0xBA,PC),r0
	mov 0x01,r2
	mov.l @(0xD0,PC),r1
	mov.l @(0xC8,PC),r3
	mov.b r2,@(r0,r4)
	add 0x54,r0
	mov.l r3,@(0x10,r4)
	mov.l @r1,r2
	mov r4,r1
	add 0x34,r1
	mov.l @r2,r3
	mov r14,r2
	shll r2
	mov.l @(r0,r3),r3
	mov.w @(0xA0,PC),r0
	mov.l r3,@(r0,r4)
	mov r14,r3
	add r3,r2
	mov.l @(0xB4,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(0xB0,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x8E,PC),r0
	mov 0x00,r5
	mov.l @(0xAC,PC),r1
	mov.l r1,@(r0,r4)
	mov 0x20,r0
	mov.b r14,@(r0,r4)
	mov r5,r0
	nop 
	mov.l @(0xA4,PC),r2
	mov r4,r1
	mov.l @(0x98,PC),r3
	add 0x50,r1
	mov.w r0,@(0x1C,r4)
	mov.w r0,@(0x1E,r4)
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x70,PC),r0
	fldi1 fr3
	fmov fr3,@(r0,r4)
	mov 0x7C,r0
	fmov fr3,@(r0,r4)
	mov 0x78,r0
	fmov fr3,@(r0,r4)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r4)
	mova @(0x84,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r4)
	mova @(0x80,PC),r0
	fmov @r0,fr3
	mov 0x70,r0
	fmov fr3,@(r0,r4)

loc_8C0F24D2:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14
 
;=============================================
loc_8C0F24DA:
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(loc_8C0F2550,pc),r3 ; r3 set to 0x8C289630
	sts.l pr,@-r15
	mov.b @(r0,r4),r2
	mov.b @r3,r5
	tst r2,r2
	bf/s loc_8C0F24F8
	mov 0x0A,r6 ; r6 set to 0x0a
	mov r6,r0 ; r0 set to 0x0a
	nop
	mov.l @(loc_8C0F2554,pc),r2 ; r2 set to 0x8C129128
	jsr @r2
	mov r5,r1
	bra loc_8C0F2502
	nop

loc_8C0F24F8:
	mov r6,r0
	nop
	mov.l @(loc_8C0F2558,pc),r2 ; r2 set to 0x8C1292D4
	jsr @r2
	mov r5,r1

loc_8C0F2502:
	mov.l @(loc_8C0F2534,pc),r3 ; r3 set to 0x8C26A90C, r3 set to 0x8C26A90c
	mov r0,r5
	add 0x55,r5
	mov.l @r3,r0
	shll2 r5
	lds.l @r15+,pr
	mov.l @r0,r0
	mov.l @(r0,r5),r2 ; r2 ??? bc r5 is ???
	mov.w @(loc_8C0F251E,pc),r0 ; r0 set to 0x84, r0 set to 0x84
	rts
	mov.l r2,@(r0,r4)

;==============================================
loc_8c0f2518:
	#data 0x05a4
loc_8c0f251a:
	#data 0x0414
loc_8c0f251c:
	#data 0x012c
loc_8c0f251e:
	#data 0x0084
loc_8c0f2520:
	#data 0x00cc
loc_8c0f2522:
	#data 0x0080
	#align4

loc_8c0f2524:
	#data 0x8C268340
loc_8c0f2528:
	#data 0x07000000
loc_8C0F252C:
	#data bank04.loc_8c044F12
loc_8C0F2530:
	#data loc_8c0f255c
loc_8C0F2534:
	#data 0x8C26A90c
loc_8C0F2538:
	#data bank16.loc_8c160EFc
loc_8C0F253C:
	#data bank12.loc_8c1294C8
loc_8c0f2540:
	#data 0x00010C11
loc_8C0F2544:
	#data bank16.loc_8c160F20
loc_8c0f2548:
	#data 0x46AAAA00
loc_8c0f254c:
	#data 0x472AAA00
loc_8C0F2550:
	#data 0x8C289630
loc_8C0F2554:
	#data bank12.loc_8c129128
loc_8C0F2558:
	#data bank12.loc_8c1292D4

;==============================================
loc_8C0F255C:
	mov.l r14,@-r15
	mov 0x20,r0
	mov.l r13,@-r15
	mov r4,r14
	mov.l r12,@-r15
	mov 0x05,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r13
	mov.l @(0xF8,PC),r0
	extu.b r13,r13
	mov.b @(r0,r13),r13
	cmp/ge r12,r13
	bf loc_8c0f2580
	mov r12,r13

loc_8C0F2580:
	mov.l @(0xF4,PC),r11
	cmp/ge r12,r13
	mov.l @(0xEC,PC),r10
	bf loc_8c0f25a2
	jsr @r11
	mov.w @r10,r4
	mova @(0xEC,PC),r0
	fmov @r0,fr3
	mova @(0xEC,PC),r0
	fmov @r0,fr2
	mov 0x54,r0
	fdiv fr3,fr0
	fadd fr2,fr0
	fmov fr0,@(r0,r14)
	mov 0x50,r0
	bra loc_8c0f25ae
	fmov fr0,@(r0,r14)

loc_8C0F25A2:
	mov.l @(0xE0,PC),r2
	mov r14,r1
	mov.l @(0xE0,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0

loc_8C0F25AE:
	mova @(0xDC,PC),r0
	cmp/ge r12,r13
	fmov @r0,fr14
	fldi1 fr15
	bf.s loc_8c0f25fe
	fadd fr15,fr15
	mov 0x68,r0
	mov.w @r10,r4
	fmov @(r0,r14),fr3
	ftrc fr3,fpul
	sts fpul,r3
	jsr @r11
	add r3,r4
	fdiv fr15,fr0
	mov 0x78,r0
	fadd fr14,fr0
	fmov fr0,@(r0,r14)
	mov 0x6C,r0
	fmov @(r0,r14),fr3
	mov.w @r10,r4
	ftrc fr3,fpul
	sts fpul,r3
	jsr @r11
	add r3,r4
	fdiv fr15,fr0
	mov 0x7C,r0
	fadd fr14,fr0
	fmov fr0,@(r0,r14)
	mov 0x70,r0
	fmov @(r0,r14),fr3
	mov.w @r10,r4
	ftrc fr3,fpul
	sts fpul,r3
	jsr @r11
	add r3,r4
	fdiv fr15,fr0
	mov.w @(0x70,PC),r0
	fadd fr14,fr0
	bra loc_8c0f263c
	fmov fr0,@(r0,r14)

loc_8C0F25FE:
	mov.l @(0x90,PC),r2
	jsr @r11
	mov.w @r2,r4
	fdiv fr15,fr0
	mov.l @(0x8C,PC),r4
	mov 0x04,r0
	mov r4,r5
	add 0x10,r5
	fmov @(r0,r5),fr5
	fmov @(r0,r4),fr6
	mov 0x78,r0
	fsub fr5,fr6
	fmov fr0,fr4
	fadd fr14,fr4
	fmov fr4,fr0
	fmac fr0,fr6,fr5
	fmov fr5,@(r0,r14)
	mov 0x08,r0
	fmov @(r0,r4),fr6
	fmov @(r0,r5),fr5
	mov 0x7C,r0
	fsub fr5,fr6
	fmac fr0,fr6,fr5
	fmov fr5,@(r0,r14)
	mov 0x0C,r0
	fmov @(r0,r4),fr6
	fmov @(r0,r5),fr5
	add 0x74,r0
	fsub fr5,fr6
	fmac fr0,fr6,fr5
	fmov fr5,@(r0,r14)

loc_8C0F263C:
	cmp/ge r12,r13
	bf loc_8c0f2642
	mov 0x09,r13

loc_8C0F2642:
	mov.l @(0x54,PC),r3
	shll2 r13
	mov.w @(0x22,PC),r0
	mov.l @r3,r2
	mov.l @r2,r2
	add r2,r13
	mov.l @(r0,r13),r1
	mov.w @(0x1A,PC),r0
	mov.l r1,@(r0,r14)
	lds.l @r15+,pr
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C0F2666:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f266a:
	#data 0x0080
loc_8c0f266c:
	#data 0x0180
loc_8c0f266e:
	#data 0x0084
	#align4

loc_8C0F2670:
	#data 0x8C28964a
loc_8C0F2674:
	#data 0x8C289BD4
loc_8C0F2678:
	#data bank11.loc_8c11E860
loc_8C0F267C:
	#data 0x41800000
loc_8C0F2680:
	#data 0x3FA00000
loc_8C0F2684:
	#data bank16.loc_8c160F20
loc_8C0F2688:
	#data bank12.loc_8c1294C8
loc_8C0F268C:
	#data 0x3F000000
loc_8C0F2690:
	#data 0x8C289BD0
loc_8C0F2694:
	#data bank16.loc_8c160F2c
loc_8C0F2698:
	#data 0x8C26A90c

;==============================================
loc_8C0F269C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8C0F2722
	mov r4,r14
	mov.l @(loc_8C0F27B4,pc),r2 ; r2 set to 0x8C044F12
	mov 0x0B,r5 ; r5 set to 0x0b
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r2
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C0F271c
	mov r0,r4 ; r4 ??? bc r0 is ???
	mov.w @(loc_8C0F27AA,pc),r0 ; r0 set to 0x12c
	mov 0x00,r6 ; r6 set to 0x00
	mov.l @(loc_8C0F27B8,pc),r3 ; r3 set to 0x8C0F275a
	mov r14,r5 ; r5 ??? bc r14 is ???
	mov.l @(loc_8C0F27BC,pc),r2 ; r2 set to 0x8C26A90c
	shll2 r5
	mov.b r6,@(r0,r4)
	mov.l @(loc_8C0F27C0,pc),r0 ; r0 set to 0x8C160FDc
	mov.l r3,@(0x10,r4)
	mov.l @r2,r3 ; r3 ??
	mov r14,r2 ; r2 ??? bc r14 is ???
	mov.l @(r0,r5),r1
	shll r2
	mov.l @r3,r0 ; r0 ??? bc r3 is ???
	shll2 r1
	mov.l @(r0,r1),r3
	mov 0x05,r0 ; r0 set to 0x05
	mov.w @(loc_8C0F27AC,pc),r1 ; r1 set to 0x84
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l r3,@r1
	mov r14,r3
	mov.w @(loc_8C0F27AE,pc),r1 ; r1 set to 0xCc
	add r3,r2
	mov r2,r3
	shll r2
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l r0,@r1
	mov r4,r1
	mov.l @(loc_8C0F27C4,pc),r0 ; r0 set to 0x8C160FE8
	add r3,r2
	add 0x34,r1
	shll2 r2
	mov.l @(loc_8C0F27C8,pc),r3 ; r3 set to 0x8C1294C8
	add r0,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(loc_8C0F27CC,pc),r0 ; r0 set to 0x8C161054
	mov 0x44,r2 ; r2 set to 0x44
	add r4,r2 ; r2 ??? bc r4 is ???
	mov.l @(r0,r5),r3 ; r3 ??? bc r5 is ???
	mov 0x20,r0 ; r0 set to 0x20
	mov.l r3,@r2
	mov.b r14,@(r0,r4)
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8C0F2718
	mov.w @(loc_8C0F27B0,pc),r0 ; r0 set to 0xD0
	mov 0x50,r1 ; r1 set to 0x50
	bra loc_8C0F271c
	mov.l r1,@(r0,r4)

loc_8c0f2718:
	mov.w @(loc_8c0f27b0,pc),r0
	mov.l r6,@(r0,r4)

loc_8C0F271C:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0F2722:
	sts.l pr,@-r15
	mov r4,r0
	nop
	cmp/eq 0x00,r0
	bt loc_8C0F2738
	cmp/eq 0x01,r0
	bt loc_8C0F274c
	cmp/eq 0x02,r0
	bt loc_8C0F2754
	bra loc_8C0F2754
	nop

loc_8C0F2738:
	mov.l @(loc_8C0F27D0,pc),r3 ; r3 set to 0x8C03319e
	jsr @r3
	nop
	mov.l @(loc_8C0F27D4,pc),r2 ; r2 set to 0x8C1292D4
	mov r0,r1
	jsr @r2
	mov 0x03,r0 ; r0 set to 0x03
	mov r0,r4 ; r4 set to 0x03
	bra loc_8C0F274e
	add 0x06,r4

loc_8c0f274c:
	mov 0x09,r4

loc_8C0F274E:
	mov.l @(loc_8C0F27D8,pc),r3 ; r3 set to 0x8C04257c
	jmp @r3
	lds.l @r15+,pr

loc_8C0F2754:
	lds.l @r15+,pr
	rts
	nop

;=============================================
loc_8C0F275A:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	fmov.s fr15,@-r15
	mov.l @(loc_8C0F27C4,pc),r2 ; r2 set to 0x8C160FE8
	sts.l pr,@-r15
	mov.b @(r0,r14),r13
	mov.w @(0x1E,r14),r0
	extu.b r13,r13
	mov r13,r3
	shll r13
	add r3,r13
	add r0,r13
	mov r13,r3
	mova @(loc_8C0F27DC,pc),r0  ; r0 set to 0x8C0F27Dc
	fmov.s @r0,fr15
	shll r13
	mov.b @(0x04,r14),r0
	add r3,r13
	shll2 r13
	extu.b r0,r0 ; r0 set to 0xDc
	add r2,r13
	cmp/eq 0x00,r0
	mov r13,r12
	bt/s loc_8C0F27E0
	add 0x0C,r12
	cmp/eq 0x01,r0
	bt loc_8C0F2830
	cmp/eq 0x02,r0
	bf loc_8C0F279e
	bra loc_8C0F28Aa
	nop

loc_8C0F279E:
	cmp/eq 0x03,r0
	bf loc_8C0F27A6
	bra loc_8C0F2936
	nop

loc_8C0F27A6:
	bra loc_8C0F299c
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F27AA:
	#data 0x012c
loc_8C0F27AC:
	#data 0x0084
loc_8C0F27AE:
	#data 0x00Cc
loc_8C0F27B0:
	#data 0x00D0
	#align4

loc_8C0F27B4:
	#data bank04.loc_8c044F12
loc_8C0F27B8:
	#data loc_8c0f275a
loc_8C0F27BC:
	#data 0x8C26A90c
loc_8C0F27C0:
	#data bank16.loc_8c160FDc
loc_8C0F27C4:
	#data bank16.loc_8c160FE8
loc_8C0F27C8:
	#data bank12.loc_8c1294C8
loc_8C0F27CC:
	#data bank16.loc_8c161054
loc_8C0F27D0:
	#data bank03.loc_8c03319e
loc_8C0F27D4:
	#data bank12.loc_8c1292D4
loc_8C0F27D8:
	#data bank04.loc_8c04257c
loc_8C0F27DC:
	#data 0x41700000

;==============================================
loc_8C0F27E0:
	mov.l @(loc_8C0F28CC,pc),r3 ; r3 set to 0x8C0310F2
	jsr @r3
	nop
	tst r0,r0
	bt loc_8C0F27Ee
	bra loc_8C0F299c
	nop

loc_8C0F27EE:
	mov.w @(loc_8C0F28C8,pc),r0 ; r0 set to 0xD0
	mov.l @(r0,r14),r3
	add 0xFF,r3
	cmp/pl r3
	mov.l r3,@(r0,r14)
	bf loc_8C0F27Fe
	bra loc_8C0F299c
	nop

loc_8C0F27FE:
	mov.w @(loc_8C0F28CA,pc),r0 ; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov.b r2,@(r0,r14)
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0x12d
	mov.b r0,@(0x04,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8C0F2830
	mov.l @(loc_8C0F28D0,pc),r3 ; r3 set to 0x8C2896B0
	mov 0x3E,r0 ; r0 set to 0x3e
	mov.l @r3,r2 ; r2 ??
	mov.b @(r0,r2),r1
	cmp/pz r1
	bt loc_8C0F282a
	mov.l @(loc_8C0F28D4,pc),r1 ; r1 set to 0x8C0F2EE4
	jsr @r1
	mov 0x01,r4 ; r4 set to 0x01
	bra loc_8C0F298c
	nop

loc_8c0f282a:
	mov.l @(loc_8c0f28d8,pc),r1
	jsr @r1
	mov 0x28,r4

loc_8c0f2830:
	mov 0x20,r0
	mov.b @(r0,r14),r4
	extu.b r4,r4
	tst r4,r4
	bt loc_8c0f2842
	mov r4,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c0f2846

loc_8c0f2842:
	bsr loc_8c0f29a8
	mov r14,r4

loc_8c0f2846:
	fmov.s @r12,fr3
	fmov.s @r13,fr4
	mov.w @(0x1C,r14),r0
	fsub fr4,fr3
	fmov fr4,fr2
	mov r0,r3
	lds r3,fpul
	mov 0x34,r0
	fdiv fr15,fr3
	float fpul,fr0
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x08,r0
	fmov.s @(r0,r12),fr3
	fmov.s @(r0,r13),fr4
	mov.w @(0x1C,r14),r0
	fsub fr4,fr3
	fmov fr4,fr2
	mov r0,r3
	lds r3,fpul
	mov 0x3C,r0
	mov 0x0F,r3
	fdiv fr15,fr3
	float fpul,fr0
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/ge r3,r0
	bt loc_8c0f288a
	bra loc_8c0f299c
	nop

loc_8c0f288a:
	mov.b @(0x04,r14),r0
	mov r14,r1
	mov.l @(loc_8c0f28dc,pc),r3
	mov r12,r2
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)
	add 0x34,r1
	mov.w @(0x1E,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	jsr @r3
	mov 0x0C,r0
	bra loc_8c0f299c
	nop

loc_8C0F28AA:
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r1
	mov 0x02,r3 ; r3 set to 0x02
	extu.b r1,r1
	cmp/ge r3,r1
	bt loc_8C0F28Fa
	mov.w @(0x1C,r14),r0
	mov 0x0F,r2 ; r2 set to 0x0f
	cmp/ge r2,r0
	bt loc_8C0F28Fa
	mov.w @(0x1C,r14),r0
	cmp/pz r0
	bf loc_8C0F28E0
	bra loc_8C0F28Ea
	and 0x01,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F28C8:
	#data 0x00D0
loc_8C0F28CA:
	#data 0x012c
	#align4

loc_8C0F28CC:
	#data bank03.loc_8c0310F2
loc_8C0F28D0:
	#data 0x8C2896B0
loc_8C0F28D4:
	#data loc_8c0f2EE4
loc_8C0F28D8:
	#data bank04.loc_8c04257c
loc_8C0F28DC:
	#data bank12.loc_8c1294C8

;==============================================
loc_8c0f28e0:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8c0f28ea:
	lds r0,fpul
	mova @(loc_8C0F2A24,pc),r0
	fmov.s @r0,fr0
	mov 0x34,r0
	fmov.s @r13,fr2
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r14)

loc_8C0F28FA:
	mov 0x20,r3 ; r3 set to 0x20
	mov.w @(0x1C,r14),r0
	add r14,r3 ; r3 ??? bc r14 is ???
	add 0x01,r0
	exts.w r0,r1
	mov.w r0,@(0x1C,r14)
	mov.b @r3,r3
	mov.l @(loc_8C0F2A28,pc),r0 ; r0 set to 0x8C161060
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	cmp/ge r2,r1
	bf loc_8C0F299c
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0x8C161061
	mov.b r0,@(0x04,r14)
	mov 0x00,r0 ; r0 set to 0x00
	mov.w r0,@(0x1C,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8C0F299c
	lds.l @r15+,pr
	mov.l @(loc_8C0F2A2C,pc),r2 ; r2 set to 0x8C030F9e
	fmov.s @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c0f2936:
	mov 0x20,r0
	mov.b @(r0,r14),r4
	extu.b r4,r4
	tst r4,r4
	bt loc_8c0f2948
	mov r4,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c0f294c

loc_8c0f2948:
	bsr loc_8c0f29a8
	mov r14,r4

loc_8c0f294c:
	fmov.s @r12,fr3
	fmov.s @r13,fr4
	mov.w @(0x1C,r14),r0
	fsub fr4,fr3
	fmov fr4,fr2
	mov r0,r3
	lds r3,fpul
	mov 0x34,r0
	fdiv fr15,fr3
	float fpul,fr0
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x08,r0
	fmov.s @(r0,r12),fr3
	fmov.s @(r0,r13),fr4
	mov.w @(0x1C,r14),r0
	fsub fr4,fr3
	fmov fr4,fr2
	mov r0,r3
	lds r3,fpul
	mov 0x3C,r0
	mov 0x0F,r3
	fdiv fr15,fr3
	float fpul,fr0
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8c0f299c

loc_8C0F298C:
	lds.l @r15+,pr
	mov.l @(loc_8C0F2A30,pc),r3 ; r3 set to 0x8C0450C0
	mov r14,r4
	fmov.s @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0F299C:
	lds.l @r15+,pr
	fmov.s @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0F29A8:
	mov.l r14,@-r15
	mov 0x0B,r5
	sts.l pr,@-r15
	mov.l @(0x84,PC),r3
	mov r4,r14
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0f29f6
	mov r0,r4
	mov.w @(0x5A,PC),r0
	mov 0x01,r3
	mov.w @(0x5A,PC),r1
	mov.b r3,@(r0,r4)
	mov.w @(0x54,PC),r0
	add r4,r1
	mov.l @(0x6C,PC),r2
	mov.l r2,@(0x10,r4)
	mov r14,r2
	mov.l @(r0,r14),r3
	add 0x34,r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l @(r0,r14),r0
	mov.l @(0x60,PC),r3
	or 0x20,r0
	mov.l r0,@r1
	mov r4,r1
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x44,r0
	mov.l @(r0,r14),r2
	mov.l r2,@(r0,r4)
	mova @(0x50,PC),r0
	fmov @r0,fr3
	mov 0x74,r0
	fmov fr3,@(r0,r4)

loc_8C0F29F6:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0F29FC:
	mov.l @(loc_8C0F2A44,pc),r1 ; r1 set to 0x3DCCCCCd
	mov 0x74,r0 ; r0 set to 0x74
	fmov.s @(r0,r4),fr2
	lds r1,fpul
	fsts fpul,fr3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r4)
	fmov.s @(r0,r4),fr1 ; r1 ??? bc r4 is ???
	fldi0 fr2
	fcmp/gt fr2,fr1
	bt loc_8C0F2A18
	mov.l @(loc_8C0F2A30,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8C0F2A18:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f2a1c:
	#data 0x012c
loc_8c0f2a1e:
	#data 0x0084
loc_8c0f2a20:
	#data 0x00cc
	#align4

loc_8c0f2a24:
	#data 0x3E4CCCCd
loc_8C0F2A28:
	#data bank16.loc_8c161060
loc_8C0F2A2C:
	#data bank03.loc_8c030F9e
loc_8C0F2A30:
	#data bank04.loc_8c0450C0
loc_8C0F2A34:
	#data bank04.loc_8c044F12
loc_8C0F2A38:
	#data loc_8c0f29Fc
loc_8C0F2A3C:
	#data bank12.loc_8c1294C8
loc_8C0F2A40:
	#data 0x3F000000
loc_8C0F2A44:
	#data 0x3DCCCCCd

;==============================================
loc_8C0F2A48:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l @(loc_8C0F2AB0,pc),r3 ; r3 set to 0x8C26823c
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @r3,r0
	mov.l @(0x14,r0),r0
	cmp/eq 0x40,r0
	bf/s loc_8C0F2A6a
	mov r5,r10
	bra loc_8C0F2B94
	nop

loc_8C0F2A6A:
	mov.w @(loc_8C0F2AAC,pc),r4 ; r4 set to 0x414
	mov 0x00,r1 ; r1 set to 0x00
	mov.l @(loc_8C0F2AB4,pc),r3 ; r3 set to 0x7000000
	add r14,r4 ; r4 ??? bc r14 is ???
	mov.l @r4,r2
	and r3,r2
	or r1,r2
	tst r2,r2
	bt loc_8C0F2A80
	bra loc_8C0F2B94
	nop

loc_8C0F2A80:
	extu.b r10,r3
	tst r3,r3
	mov 0x01,r11 ; r11 set to 0x01
	bt/s loc_8C0F2A9a
	mov 0x00,r13 ; r13 set to 0x00
	mov.w @(loc_8C0F2AAE,pc),r0 ; r0 set to 0x259
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	cmp/eq 0x01,r0
	bf/s loc_8C0F2A98
	mov r0,r11 ; r11 ??? bc r0 is ???
	bra loc_8C0F2A9a
	mov r13,r10

loc_8c0f2a98:
	mov 0x03,r11

loc_8C0F2A9A:
	extu.b r10,r3
	mov.l @(loc_8C0F2AB8,pc),r9 ; r9 set to 0x8C2896B0
	tst r3,r3
	bf loc_8C0F2AC0
	mov.l @(loc_8C0F2ABC,pc),r2 ; r2 set to 0x8C039F78
	jsr @r2
	mov r14,r4
	bra loc_8C0F2B02
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F2AAC:
	#data 0x0414
loc_8C0F2AAE:
	#data 0x0259
	#align4

loc_8C0F2AB0:
	#data 0x8C26823c
loc_8C0F2AB4:
	#data 0x07000000
loc_8C0F2AB8:
	#data 0x8C2896B0
loc_8C0F2ABC:
	#data bank03.loc_8c039F78

;==============================================
loc_8c0f2ac0:
	mov.b @(0x02,r14),r0
	mov.l @r9,r4
	extu.b r0,r0
	mov.l @(loc_8c0f2bc0,pc),r12
	mov r0,r3
	shll r0
	add r3,r0
	add 0x18,r4
	shll2 r0
	jsr @r12
	mov.l @(r0,r4),r4
	mov.b @(0x02,r14),r0
	mov.l @r9,r4
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	add 0x18,r4
	shll2 r0
	add r0,r4
	jsr @r12
	mov.l @(0x04,r4),r4
	mov.b @(0x02,r14),r0
	mov.l @r9,r4
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	add 0x18,r4
	shll2 r0
	add r0,r4
	jsr @r12
	mov.l @(0x08,r4),r4

loc_8c0f2b02:
	cmp/pl r11
	mov r13,r12
	bf/s loc_8c0f2b94
	mov r13,r8

loc_8c0f2b0a:
	mov.b @(0x02,r14),r0
	mov r12,r13
	mov.l @r9,r2
	shll2 r13
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add 0x18,r2
	add r2,r0
	mov.l @(r0,r13),r13
	mov r11,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c0f2b2e
	tst r12,r12
	bt loc_8c0f2b4a

loc_8c0f2b2e:
	mov.w @(loc_8C0F2BB8,pc),r0
	mov 0x00,r1
	mov.b @(r0,r14),r3
	mov.w @(loc_8C0F2BBA,pc),r0
	extu.b r3,r3
	mov.b @(r0,r13),r2
	extu.b r2,r2
	cmp/gt r2,r1
	addc r1,r2
	mov 0x01,r1
	shar r2
	shad r2, r1
	tst r1,r3
	bt loc_8c0f2b8e

loc_8c0f2b4a:
	mov.l @(loc_8c0f2bc4,pc),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c0f2b8e
	mov r0,r4
	mov.l @(loc_8c0f2bc8,pc),r3
	mov.l r3,@(0x10,r4)
	mov.l r14,@(0x18,r4)
	mov.b @(0x02,r14),r0
	mov.b r0,@(0x02,r4)
	mov.b @(0x01,r13),r0
	mov.b r0,@(0x01,r4)
	mov.w @(loc_8C0F2BBC,pc),r0
	mov.b @(r0,r13),r3
	mov 0x22,r0
	mov.b r3,@(r0,r4)
	mov.w @(loc_8C0F2BBA,pc),r0
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r4)
	add 0x8C,r0
	mov.l r13,@(0x14,r4)
	mov.w @(r0,r14),r3
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.b r10,@(r0,r4)
	mov 0x21,r0
	mov.b r8,@(r0,r4)
	mov 0x06,r3
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	add 0x01,r8

loc_8c0f2b8e:
	add 0x01,r12
	cmp/ge r11,r12
	bf loc_8c0f2b0a

loc_8C0F2B94:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0F2BA6:
	mov r4,r3
	mov.l @(loc_8C0F2BCC,pc),r1 ; r1 set to 0x8C1610B4
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f2bb8:
	#data 0x0329
loc_8c0f2bba:
	#data 0x01A4
loc_8c0f2bbc:
	#data 0x0411
	#align4

loc_8C0F2BC0:
	#data bank03.loc_8c039F9a
loc_8C0F2BC4:
	#data bank04.loc_8c044F12
loc_8C0F2BC8:
	#data loc_8c0f2BA6
loc_8C0F2BCC:
	#data bank16.loc_8c1610B4

;==============================================
loc_8C0F2BD0:
	mov 0x01,r6 ; r6 set to 0x01
	mov.l @(loc_8C0F2C8C,pc),r5 ; r5 set to 0x8C26A90c
	mov 0x15,r3 ; r3 set to 0x15
	fldi1 fr5
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	fldi1 fr4
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0F2C82,pc),r0 ; r0 set to 0x12c
	mov.b r6,@(r0,r4)
	add 0xA0,r0 ; r0 set to 0xCc
	mov.l r3,@(r0,r4)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r3 ; r3 ??? bc r4 is ???
	tst r3,r3
	bf/s loc_8C0F2CA8
	fadd fr4,fr4
	mov.l @r5,r3
	mov.w @(loc_8C0F2C84,pc),r0 ; r0 set to 0x1B0
	mov.l @r3,r2
	mov.l @(r0,r2),r1
	mov.w @(loc_8C0F2C86,pc),r0 ; r0 set to 0x84
	mov.l r1,@(r0,r4)
	mova @(loc_8C0F2C90,pc),r0  ; r0 set to 0x8C0F2C90
	fmov.s @r0,fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C0F2C94,pc),r0  ; r0 set to 0x8C0F2C94
	fmov.s @r0,fr3
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s fr3,@(r0,r4)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s fr4,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr4,@(r0,r4)
	mov 0x58,r0 ; r0 set to 0x58
	fmov.s fr5,@(r0,r4)
	mov.w @(loc_8C0F2C88,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r4),r3
	mova @(loc_8C0F2C98,pc),r0  ; r0 set to 0x8C0F2C98
	fmov.s @r0,fr2
	mov 0x34,r0 ; r0 set to 0x34
	shll r3
	neg r3,r3
	add 0x01,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr2,fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0F2C88,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r4),r3
	mova @(loc_8C0F2C9C,pc),r0  ; r0 set to 0x8C0F2C9c
	fmov.s @r0,fr1
	mov 0x68,r0 ; r0 set to 0x68
	shll r3
	neg r3,r3
	add 0x01,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr1,fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0F2C88,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r4),r3
	mov 0x44,r0 ; r0 set to 0x44
	neg r3,r3
	add 0x01,r3
	shll8 r3
	shll2 r3
	shll2 r3
	shll2 r3
	shll r3
	mov.l r3,@(r0,r4)
	mov 0x09,r0 ; r0 set to 0x09
	mov.w r0,@(0x1C,r4)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r4),fr3
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s @(r0,r4),fr0 ; r0 ??? bc r4 is ???
	mova @(loc_8C0F2CA0,pc),r0  ; r0 set to 0x8C0F2CA0
	fsub fr3,fr0 ; r0 ??? bc r3 is ???
	fmov.s @r0,fr3
	fdiv fr3,fr0
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr0,@(r0,r4)
	mova @(loc_8C0F2CA4,pc),r0  ; r0 set to 0x8C0F2CA4
	fmov.s @r0,fr2
	bra loc_8C0F2D86
	mov 0x60,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F2C82:
	#data 0x012c
loc_8C0F2C84:
	#data 0x01B0
loc_8C0F2C86:
	#data 0x0084
loc_8C0F2C88:
	#data 0x0130
	#align4

loc_8C0F2C8C:
	#data 0x8C26A90c
loc_8C0F2C90:
	#data 0xC28C0000
loc_8C0F2C94:
	#data 0xC3480000
loc_8C0F2C98:
	#data 0x423C0000
loc_8C0F2C9C:
	#data 0x43160000
loc_8C0F2CA0:
	#data 0x41700000
loc_8C0F2CA4:
	#data 0x40955555

;==============================================
loc_8c0f2ca8:
	mov 0x50,r0
	fmov.s fr4,@(r0,r4)
	mov 0x54,r0
	fmov.s fr4,@(r0,r4)
	mov 0x58,r0
	fmov.s fr5,@(r0,r4)
	mov 0x00,r1
	mov.w @(loc_8C0F2DF4,pc),r0
	mov.l @r5,r3
	mov r1,r5
	mov.b @(r0,r4),r2
	add 0x10,r0
	mov.l @r3,r3
	extu.b r2,r2
	cmp/gt r2,r1
	addc r1,r2
	mov.w @(loc_8C0F2DF8,pc),r1
	shar r2
	shll2 r2
	add r3,r2
	mov.l @(r0,r2),r2
	mov.w @(loc_8C0F2DF6,pc),r0
	mov.l r2,@(r0,r4)
	mov.l @(0x18,r4),r0
	mov.b @(r0,r1),r0
	cmp/eq 0x03,r0
	bt loc_8c0f2ce0
	mov r6,r5

loc_8c0f2ce0:
	mov 0x21,r0
	mov.l @(loc_8c0f2dfc,pc),r6
	mov.b @(r0,r4),r2
	extu.b r5,r7
	mov r4,r1
	add 0x34,r1
	extu.b r2,r2
	add r7,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c0f2e00,pc),r3
	shll2 r2
	shll r2
	add r6,r2
	jsr @r3
	mov 0x0C,r0
	mov 0x21,r0
	mov r4,r1
	mov.b @(r0,r4),r2
	add 0x68,r1
	extu.b r2,r2
	add r7,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c0f2e00,pc),r3
	shll2 r2
	shll r2
	add r6,r2
	add 0x0C,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8C0F2DFA,pc),r0
	mov.w @(r0,r4),r1
	tst r1,r1
	bf loc_8c0f2d3a
	mov 0x34,r0
	fmov.s @(r0,r4),fr3
	fneg fr3
	fmov.s fr3,@(r0,r4)
	mov 0x68,r0
	fmov.s @(r0,r4),fr3
	fneg fr3
	fmov.s fr3,@(r0,r4)

loc_8c0f2d3a:
	mov 0x0A,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(loc_8C0F2DFA,pc),r0
	mov.w @(r0,r4),r3
	mov 0x44,r0
	neg r3,r3
	add 0x01,r3
	shll8 r3
	shll2 r3
	shll2 r3
	shll2 r3
	shll r3
	mov.l r3,@(r0,r4)
	mova @(loc_8C0F2E04,pc),r0
	fmov.s @r0,fr4
	mov 0x34,r0
	fmov.s @(r0,r4),fr3
	mov 0x68,r0
	fmov.s @(r0,r4),fr2
	mov 0x5C,r0
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x38,r0
	fmov.s @(r0,r4),fr3
	mov 0x6C,r0
	fmov.s @(r0,r4),fr2
	mov 0x60,r0
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x3C,r0
	fmov.s @(r0,r4),fr3
	mov 0x70,r0
	fmov.s @(r0,r4),fr2
	mov 0x64,r0
	fsub fr3,fr2
	fdiv fr4,fr2

loc_8C0F2D86:
	fmov.s fr2,@(r0,r4)
	lds.l @r15+,pr

loc_8C0F2D8A:
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	sts.l pr,@-r15
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8C0F2E32
	mov.b @(0x05,r4),r0
	tst r0,r0
	bf/s loc_8C0F2E10
	mov 0x04,r5 ; r5 set to 0x04, r5 set to 0x04
	mov 0x5C,r1 ; r1 set to 0x5C, r1 set to 0x5c
	add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @r1,fr3
	fmov.s @(r0,r4),fr2
	mov 0x60,r1 ; r1 set to 0x60, r1 set to 0x60
	add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C0F2E08,pc),r0  ; r0 set to 0x8C0F2E08, r0 set to 0x8C0F2E08
	fmov.s @r0,fr4
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	fmov.s @(r0,r4),fr3
	fsub fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
	fmov.s @(r0,r4),fr2
	fsub fr4,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0xFF,r0 ; r0 set to 0x53, r0 set to 0x53
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0 ; r0 ??, r0 ??
	cmp/pl r0
	bt loc_8C0F2EB6
	mov.b @(0x05,r4),r0
	mov.l @(loc_8C0F2E0C,pc),r1 ; r1 set to 0x41A00000, r1 set to 0x41A00000
	add 0x01,r0
	lds r1,fpul
	mov.b r0,@(0x05,r4)
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fmov.s @(r0,r4),fr2
	fsts fpul,fr3
	fdiv fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov r5,r0 ; r0 set to 0x04, r0 set to 0x04
	nop
	bra loc_8C0F2EB6
	mov.w r0,@(0x1C,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f2df4:
	#data 0x01A4
loc_8c0f2df6:
	#data 0x0084
loc_8c0f2df8:
	#data 0x0259
loc_8c0f2dfa:
	#data 0x0130
	#align4

loc_8C0F2DFC:
	#data bank16.loc_8c16106c
loc_8C0F2E00:
	#data bank12.loc_8c1294C8
loc_8c0f2e04:
	#data 0x41200000
loc_8C0F2E08:
	#data 0x3D888889
loc_8C0F2E0C:
	#data 0x41A00000

;==============================================
loc_8C0F2E10:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8C0F2EA0
	mov r5,r0
	nop
	mov 0x5C,r1 ; r1 set to 0x5c
	mov.w r0,@(0x1C,r4)
	add r4,r1 ; r1 ??? bc r4 is ???
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3
	fmov.s @(r0,r4),fr2
	fadd fr3,fr2
	bra loc_8C0F2EA0
	fmov.s fr2,@(r0,r4)

loc_8c0f2e32:
	mov.b @(0x05,r4),r0
	tst r0,r0
	bf loc_8c0f2ea0
	mov 0x5C,r1
	add r4,r1
	mov 0x34,r0
	fmov.s @r1,fr3
	fmov.s @(r0,r4),fr2
	mov 0x60,r1
	add r4,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x38,r0
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	mov 0x64,r1
	add r4,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x3C,r0
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C0F2ED4,pc),r0
	fmov.s @r0,fr4
	mov 0x50,r0
	fmov.s @(r0,r4),fr3
	fsub fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0
	fmov.s @(r0,r4),fr2
	fsub fr4,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c0f2ea0
	mov.b @(0x05,r4),r0
	mov r4,r2
	fldi1 fr4
	mov r4,r1
	add 0x01,r0
	mov.l @(loc_8c0f2ed8,pc),r3
	mov.b r0,@(0x05,r4)
	mov 0x50,r0
	fmov.s fr4,@(r0,r4)
	mov 0x54,r0
	add 0x68,r2
	fmov.s fr4,@(r0,r4)
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0

loc_8c0f2ea0:
	mov.l @(loc_8C0F2EDC,pc),r1
	mov.l @r1,r2
	mov.b @(0x06,r2),r0
	tst r0,r0
	bf loc_8c0f2eb6
	mov.b @(0x04,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8c0f2ed0,pc),r0
	mov.b r3,@(r0,r4)

loc_8C0F2EB6:
	lds.l @r15+,pr
	rts
	nop

;=============================================
loc_8C0F2EBC:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0F2ED0,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;=============================================
loc_8C0F2ECA:
	mov.l @(loc_8C0F2EE0,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F2ED0:
	#data 0x012c
	#align4

loc_8c0f2ed4:
	#data 0x3DCCCCCd
loc_8C0F2ED8:
	#data bank12.loc_8c1294C8
loc_8c0f2edc:
	#data 0x8C2896B0
loc_8C0F2EE0:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0F2EE4:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0F3020,pc),r3 ; r3 set to 0x8C044F12
	mov 0x0C,r5 ; r5 set to 0x0c
	mov.l r4,@r15
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C0F2F28
	mov r0,r4 ; r4 ??? bc r0 is ???
	mov.w @(loc_8C0F301A,pc),r0 ; r0 set to 0x12c
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @(loc_8C0F3024,pc),r3 ; r3 set to 0x8C0F2F30
	mov 0x20,r1 ; r1 set to 0x20
	mov.b r5,@(r0,r4)
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.w @(loc_8C0F301C,pc),r0 ; r0 set to 0x84
	mov.l r3,@(0x10,r4)
	mov 0x07,r3 ; r3 set to 0x07
	mov.l r5,@(r0,r4)
	add 0x48,r0 ; r0 set to 0xCc
	mov.l r5,@(r0,r4)
	mov 0x26,r0 ; r0 set to 0x26
	mov.w r3,@(r0,r4)
	mov.l @r15,r0 ; r0 ??? bc r15 is ???
	and 0x0F,r0
	mov.b r0,@r1
	mov.l @r15,r0
	tst 0x80,r0
	bt loc_8C0F2F28
	add 0x04,r15
	bra loc_8C0F309c
	lds.l @r15+,pr

loc_8C0F2F28:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;=============================================
loc_8C0F2F30:
	mov r4,r3
	mov.l @(loc_8C0F3028,pc),r1 ; r1 set to 0x8C1613A8
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;=============================================
loc_8C0F2F42:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xE4,PC),r3
	jsr @r3
	mov r4,r14
	tst r0,r0
	bf loc_8c0f2fba
	mov.b @(0x4,r14),r0
	mov 0x01,r3
	fldi1 fr2
	fadd fr2,fr2
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xBA,PC),r0
	mov.b r3,@(r0,r14)
	mov 0x3C,r0
	mov.w r0,@(0x1C,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov.l @(0xC4,PC),r0
	extu.b r3,r3
	shll2 r3
	fmov @(r0,r3),fr3
	mov 0x34,r0
	fneg fr3
	fdiv fr2,fr3
	fmov fr3,@(r0,r14)
	mova @(0xB8,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov.l @(0xAC,PC),r0
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	mov 0x00,r3
	mov.w @(0x86,PC),r0
	mov.l r2,@(r0,r14)
	add 0x04,r0
	mov.l r3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r4
	mov.l @(0x98,PC),r0
	extu.b r4,r4
	mov.b @(r0,r4),r4
	extu.b r4,r3
	tst r3,r3
	bt loc_8c0f2fb2
	mov.l @(0x90,PC),r2
	jsr @r2
	nop 

loc_8C0F2FB2:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0f2fc0
	mov.l @r15+,r14

loc_8C0F2FBA:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0F2FC0:
	mov r4,r3
	mov.l @(loc_8C0F3044,pc),r1 ; r1 set to 0x8C1613B8
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;=============================================
loc_8C0F2FD2:
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov 0x0C,r0
	mov.w r0,@(0x1C,r4)
	mov 0x3C,r0
	fmov @(r0,r4),fr3
	mova @(0x64,PC),r0
	fmov @r0,fr2
	mova @(0x64,PC),r0
	fneg fr3
	fadd fr2,fr3
	fmov @r0,fr1
	mov 0x64,r0
	fdiv fr1,fr3
	fmov fr3,@(r0,r4)

loc_8C0F2FF2:
	mov 0x64,r1
	add r4,r1
	mov 0x3C,r0
	fmov @r1,fr3
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c0f3016
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov 0x3C,r0
	mov.w r0,@(0x1C,r4)

loc_8C0F3016:
	rts
	nop

;=============================================
loc_8C0F301A:
	#data 0x012c
loc_8C0F301C:
	#data 0x0084
loc_8C0F301e:
	#data 0x00D4
	#align4

loc_8C0F3020:
	#data bank04.loc_8c044F12
loc_8C0F3024:
	#data loc_8c0f2F30
loc_8C0F3028:
	#data bank16.loc_8c1613A8
loc_8C0F302C:
	#data bank03.loc_8c0310F2
loc_8C0F3030:
	#data bank16.loc_8c161358
loc_8C0F3034:
	#data 0xC0C80000
loc_8C0F3038:
	#data bank16.loc_8c161318
loc_8C0F303C:
	#data bank16.loc_8c161398
loc_8C0F3040:
	#data bank04.loc_8c04257c
loc_8C0F3044:
	#data bank16.loc_8c1613B8
loc_8C0F3048:
	#data 0xC2200000
loc_8C0F304c:
	#data 0x41400000

;=============================================
loc_8C0F3050:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c0f307a
	mov.b @(0x5,r4),r0
	fldi0 fr2
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov 0x0C,r0
	mov.w r0,@(0x1C,r4)
	mov 0x3C,r0
	fmov @(r0,r4),fr3
	mova @(0x5C,PC),r0
	fmov @r0,fr1
	mov 0x64,r0
	fneg fr3
	fadd fr2,fr3
	fdiv fr1,fr3
	fmov fr3,@(r0,r4)

loc_8C0F307A:
	rts
	nop

;=============================================
loc_8C0F307E:
	mov 0x64,r1 ; r1 set to 0x64
	add r4,r1 ; r1 ??? bc r4 is ???
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @r1,fr3
	fmov.s @(r0,r4),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0xFF,r0 ; r0 set to 0x3b
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0 ; r0 ??
	cmp/pl r0
	bf loc_8C0F309c
	rts
	nop

;=============================================
loc_8c0f309c:
	mov.w @(loc_8C0F30C8,pc),r0
	mov 0x00,r3
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c0f30be
	mov.l @(loc_8C0F30D0,pc),r3
	mov.l @(loc_8c0f30d4,pc),r2
	mov.w @(loc_8C0F30CA,pc),r0
	mov.l @r3,r4
	jsr @r2
	mov.b @(r0,r4),r4

loc_8c0f30be:
	lds.l @r15+,pr
	mov.l @(loc_8c0f30d8,pc),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F30C8:
	#data 0x012C
loc_8C0F30CA:
	#data 0x008B
	#align4

loc_8C0F30cc:
	#data 0x41400000
loc_8C0F30D0:
	#data 0x8C26823C
loc_8c0f30d4:
	#data loc_8c0f30dc
loc_8c0f30d8:
	#data bank04.loc_8c0450c0

;==============================================
loc_8C0F30DC:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	fmov.s fr13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0F3194,pc),r3 ; r3 set to 0x8C04257c
	mov.l r4,@r15
	jsr @r3
	mov 0x3F,r4 ; r4 set to 0x3f
	mova @(loc_8C0F3198,pc),r0  ; r0 init to 0x8C0F3198
	mov.l @r15,r3 ; r3 ??? bc r15 is ???
	fmov.s @r0,fr14
	mova @(loc_8C0F319C,pc),r0  ; r0 set to 0x8C0F319c
	fmov.s @r0,fr15
	tst r3,r3
	bf/s loc_8C0F31B4
	fldi0 fr13
	mov 0x03,r5 ; r5 set to 0x03
	bsr loc_8C0F3236
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bf/s loc_8C0F3114
	mov r0,r13 ; r13 set to 0x8C0F319c
	bra loc_8C0F3224
	nop

loc_8C0F3114:
	mova @(loc_8C0F31A0,pc),r0  ; r0 init to 0x8C0F31A0
	mov.w @(loc_8C0F3190,pc),r5 ; r5 set to 0x1Cc
	fmov.s @r0,fr3
	mov 0x38,r0 ; r0 set to 0x38
	mov.w @(loc_8C0F3192,pc),r4 ; r4 set to 0x1C8
	add r13,r5 ; r5 ??? bc r13 is ???
	mov.l @(loc_8C0F31A4,pc),r3 ; r3 set to 0x8C05AAC4
	fmov.s fr3,@(r0,r13)
	jsr @r3
	add r13,r4 ; r4 ??? bc r13 is ???
	bsr loc_8C0F341c
	mov r13,r4
	mov 0x02,r5 ; r5 set to 0x02
	bsr loc_8C0F3236
	mov r13,r4
	tst r0,r0
	bt/s loc_8C0F321e
	mov r0,r14 ; r14 set to 0x38
	mov.w @(loc_8C0F3190,pc),r5 ; r5 set to 0x1Cc
	mov 0x38,r0 ; r0 set to 0x38
	mov.w @(loc_8C0F3192,pc),r4 ; r4 set to 0x1C8
	mov.l @(loc_8C0F31A8,pc),r3 ; r3 set to 0x8C05AA62
	add r14,r5 ; r5 set to 0x204
	fmov.s fr13,@(r0,r14)  ; r14 ??? bc r13 is ???
	jsr @r3
	add r14,r4 ; r4 ??? bc r14 is ???
	bsr loc_8C0F341c
	mov r14,r4
	mov 0x01,r5 ; r5 set to 0x01
	bsr loc_8C0F3236
	mov r14,r4
	tst r0,r0
	bt/s loc_8C0F321e
	mov r0,r14 ; r14 set to 0x38
	mov.w @(loc_8C0F3190,pc),r5 ; r5 set to 0x1Cc
	mov 0x38,r0 ; r0 set to 0x38
	mov.w @(loc_8C0F3192,pc),r4 ; r4 set to 0x1C8
	mov.l @(loc_8C0F31AC,pc),r3 ; r3 set to 0x8C05AA1e
	add r14,r5 ; r5 set to 0x204
	fmov.s fr15,@(r0,r14)  ; r14 ??? bc r15 is ???
	jsr @r3
	add r14,r4 ; r4 ??? bc r14 is ???
	bsr loc_8C0F341c
	mov r14,r4
	mov 0x00,r5 ; r5 set to 0x00
	bsr loc_8C0F3236
	mov r14,r4
	tst r0,r0
	bt/s loc_8C0F321e
	mov r0,r14 ; r14 set to 0x38
	mov.w @(loc_8C0F3190,pc),r5 ; r5 set to 0x1Cc
	mov 0x38,r0 ; r0 set to 0x38
	mov.w @(loc_8C0F3192,pc),r4 ; r4 set to 0x1C8
	mov.l @(loc_8C0F31B0,pc),r3 ; r3 set to 0x8C05A8B4
	add r14,r5 ; r5 set to 0x204
	fmov.s fr14,@(r0,r14)  ; r14 ??
	jsr @r3
	add r14,r4 ; r4 ??? bc r14 is ???
	bsr loc_8C0F341c
	mov r14,r4
	bra loc_8C0F321e
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F3190:
	#data 0x01Cc
loc_8C0F3192:
	#data 0x01C8
	#align4

loc_8C0F3194:
	#data bank04.loc_8c04257c
loc_8C0F3198:
	#data 0x41200000
loc_8C0F319C:
	#data 0x40A00000
loc_8C0F31A0:
	#data 0xC1200000
loc_8C0F31A4:
	#data bank05.loc_8c05AAC4
loc_8C0F31A8:
	#data bank05.loc_8c05AA62
loc_8C0F31AC:
	#data bank05.loc_8c05AA1e
loc_8C0F31B0:
	#data bank05.loc_8c05A8B4

;==============================================
loc_8c0f31b4:
	mov 0x06,r5
	bsr loc_8c0f3236
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c0f3224
	mov r0,r13
	mov.l @(loc_8C0F3304,pc),r12
	mov 0x38,r0
	fmov.s fr13,@(r0,r13)
	mov.w @(loc_8C0F32FA,pc),r1
	mov.w @(0x10,r12),r0
	add r13,r1
	extu.w r0,r0
	mov.l r0,@r1
	bsr loc_8c0f34f2
	mov r13,r4
	mov 0x05,r5
	bsr loc_8c0f3236
	mov r13,r4
	tst r0,r0
	bt/s loc_8c0f321e
	mov r0,r14
	mov 0x38,r0
	mov r12,r2
	fmov.s fr15,@(r0,r14)
	mov 0x3E,r0
	mov.b @(r0,r12),r3
	add 0x78,r2
	mov.w @(loc_8C0F32FA,pc),r0
	shll r3
	add r2,r3
	mov.w @r3,r1
	mov.l r1,@(r0,r14)
	bsr loc_8c0f34a2
	mov r14,r4
	mov 0x04,r5
	bsr loc_8c0f3236
	mov r14,r4
	tst r0,r0
	bt/s loc_8c0f321e
	mov r0,r14
	mov 0x38,r0
	mov.w @(loc_8C0F32FC,pc),r2
	fmov.s fr14,@(r0,r14)
	mov 0x3E,r0
	mov.b @(r0,r12),r3
	add r12,r2
	mov.w @(loc_8C0F32FA,pc),r0
	add r2,r3
	mov.b @r3,r1
	mov.l r1,@(r0,r14)
	bsr loc_8c0f34a2
	mov r14,r4

loc_8c0f321e:
	mov 0x21,r0
	mov 0x01,r2
	mov.b r2,@(r0,r14)

loc_8C0F3224:
	add 0x04,r15
	lds.l @r15+,pr
	fmov.s @r15+,fr13
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;=============================================
loc_8c0f3236:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	tst r14,r14
	mov.l r5,@r15
	bf/s loc_8c0f324a
	mov 0x03,r13
	mov 0x01,r13

loc_8c0f324a:
	mov.l @(loc_8c0f3308,pc),r2
	mov 0x0C,r5
	mov r13,r6
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt/s loc_8c0f329e
	mov r0,r4
	mov.w @(loc_8C0F32FE,pc),r0
	mov 0x00,r5
	mov.l @(loc_8c0f330c,pc),r3
	mov.b r5,@(r0,r4)
	mov.w @(loc_8C0F3300,pc),r0
	mov.l r3,@(0x10,r4)
	mov 0x08,r3
	mov.l r5,@(r0,r4)
	add 0x48,r0
	mov.l r5,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.l @r15,r2
	fldi0 fr4
	mov.b r2,@(r0,r4)
	mov 0x34,r0
	fmov.s fr4,@(r0,r4)
	mov 0x38,r0
	fmov.s fr4,@(r0,r4)
	mova @(loc_8c0f3310,pc),r0
	fmov.s @r0,fr3
	mov 0x3C,r0
	mov.l @(loc_8c0f3314,pc),r1
	fmov.s fr3,@(r0,r4)
	mov.l r14,@(0x14,r4)
	mov.l @r15,r0
	shll r0
	mov.w @(r0,r1),r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	neg r0,r0
	add 0x78,r0
	mov.w r0,@(0x1E,r4)

loc_8c0f329e:
	mov r4,r0
	nop
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8C0F32AC:
	mov r4,r3
	mov.l @(loc_8C0F3318,pc),r1 ; r1 set to 0x8C161758
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0F32BE:
	mov.b @(0x04,r4),r0
	fldi0 fr3
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C0F3310,pc),r0  ; r0 set to 0x8C0F3310
	fmov.s @r0,fr3
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s fr3,@(r0,r4)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r3
	mov.l @(loc_8C0F331C,pc),r0 ; r0 set to 0x8C16172c
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C0F3302,pc),r0 ; r0 set to 0xD4
	mov.l r2,@(r0,r4)
	add 0x04,r0 ; r0 set to 0xD8
	mov.l r3,@(r0,r4)

loc_8C0F32E8:
	mov r4,r3 ; r3 ??? bc r4 is ???
	mov.l @(loc_8C0F3320,pc),r1 ; r1 set to 0x8C161768, r1 set to 0x8C161768
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0 ; r0 set to 0xD8
	shll2 r0 ; r0 set to 0x360
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f32fa:
	#data 0x01Cc
loc_8c0f32fc:
	#data 0x009c
loc_8c0f32fe:
	#data 0x012C
loc_8c0f3300:
	#data 0x0084
loc_8C0F3302:
	#data 0x00D4
	#align4

loc_8c0f3304:
	#data 0x8C2895F0
loc_8C0F3308:
	#data bank04.loc_8c044F12
loc_8C0F330C:
	#data loc_8c0f32Ac
loc_8C0F3310:
	#data 0xC2200000
loc_8C0F3314:
	#data bank16.loc_8c161748
loc_8C0F3318:
	#data bank16.loc_8c161758
loc_8C0F331C:
	#data bank16.loc_8c16172c
loc_8C0F3320:
	#data bank16.loc_8c161768

;==============================================
loc_8C0F3324:
	mov.l @(0xE4,PC),r3
	mov 0x18,r0
	mov 0x01,r6
	mov.l @r3,r5
	mov.b @(r0,r5),r2
	tst r6,r2
	bt loc_8c0f333e
	mov.l @(0xDC,PC),r2
	mov.w @(0xCE,PC),r1
	mov.w @r2,r3
	extu.w r3,r3
	tst r1,r3
	bf loc_8c0f335c

loc_8C0F333E:
	mov.b @(r0,r5),r0
	tst 0x02,r0
	bt loc_8c0f3350
	mov.l @(0xCC,PC),r2
	mov.w @(0xBC,PC),r1
	mov.w @r2,r3
	extu.w r3,r3
	tst r1,r3
	bf loc_8c0f335c

loc_8C0F3350:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c0f3368

loc_8C0F335C:
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov.w @(0xA2,PC),r0
	bra loc_8c0f336c
	mov.b r6,@(r0,r4)

loc_8C0F3368:
	rts
	nop

;=============================================
loc_8C0F336C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x21,r0
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0f33f0
	mov.l @(0x8C,PC),r3
	mov 0x18,r0
	mov 0x01,r5
	mov.l @r3,r4
	mov.b @(r0,r4),r2
	tst r5,r2
	bt loc_8c0f3398
	mov.l @(0x80,PC),r2
	mov.w @(0x74,PC),r1
	mov.w @r2,r3
	extu.w r3,r3
	tst r1,r3
	bf loc_8c0f33aa

loc_8C0F3398:
	mov.b @(r0,r4),r0
	tst 0x02,r0
	bt loc_8c0f33b8
	mov.l @(0x74,PC),r2
	mov.w @(0x62,PC),r1
	mov.w @r2,r3
	extu.w r3,r3
	tst r1,r3
	bt loc_8c0f33b8

loc_8C0F33AA:
	mov.w @(0x1E,r14),r0
	mov 0x1E,r4
	cmp/ge r4,r0
	bf loc_8c0f33b8
	mov r4,r0
	nop 
	mov.w r0,@(0x1E,r14)

loc_8C0F33B8:
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c0f33f0
	mov.l @(0x14,r14),r2
	tst r2,r2
	bt loc_8c0f33e4
	mov r5,r13
	bra loc_8c0f33e0
	mov 0x00,r12

loc_8C0F33D0:
	mov.l @(0xC,r14),r2
	mov.l @(0x14,r2),r3
	tst r3,r3
	bf.s loc_8c0f33dc
	mov.l @(0xC,r14),r4
	mov r12,r13

loc_8C0F33DC:
	bsr loc_8c0f33fa
	nop 

loc_8C0F33E0:
	tst r13,r13
	bf loc_8c0f33d0
 
loc_8C0F33E4:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0f33fa
	mov.l @r15+,r14

loc_8C0F33F0:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0F33FA:
	mov.w @(loc_8C0F3408,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0F3418,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f3406:
	#data 0x0360
loc_8c0f3408:
	#data 0x012c
	#align4

loc_8C0F340c:
	#data 0x8C26823c
loc_8C0F3410:
	#data 0x8C2681Dc
loc_8C0F3414:
	#data 0x8C2681F0
loc_8C0F3418:
	#data bank04.loc_8c0450C0

;==============================================
loc_8c0f341c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8C0F353E,pc),r0
	mov r4,r11
	mov 0x09,r13
	mov.w @(loc_8C0F353C,pc),r14
	mov.l @(r0,r11),r12
	cmp/hi r13,r12
	bf/s loc_8c0f343c
	add r11,r14
	mov r13,r12

loc_8c0f343c:
	mov.l @(loc_8c0f354c,pc),r2
	mov.l r12,@-r15
	mov.l @(loc_8c0f3548,pc),r10
	mov.l r2,@-r15
	jsr @r10
	mov r14,r4
	tst r12,r12
	bt/s loc_8c0f345a
	add 0x08,r15
	mov.w @(loc_8C0F3540,pc),r0
	mov.l @(loc_8c0f3550,pc),r3
	mov.l @(r0,r11),r2
	mov.l r2,@-r15
	bra loc_8c0f3466
	nop

loc_8c0f345a:
	mov.w @(loc_8C0F3540,pc),r0
	mov 0x20,r3
	mov.b r3,@r14
	mov.l @(r0,r11),r2
	mov.l @(loc_8c0f3554,pc),r3
	mov.l r2,@-r15

loc_8c0f3466:
	mov r14,r4
	mov.l r3,@-r15
	jsr @r10
	add 0x01,r4
	add 0x08,r15
	mov r14,r4
	mov 0xFF,r7
	mov r4,r5
	mov 0x00,r6
	mov.l r4,@r15

loc_8c0f347a:
	mov.b @r5,r3
	add 0xD0,r3
	mov.b r3,@r5
	exts.b r3,r3
	cmp/pz r3
	bt/s loc_8c0f348a
	add 0x01,r6
	mov.b r7,@r4

loc_8c0f348a:
	cmp/hs r13,r6
	add 0x01,r4
	bf/s loc_8c0f347a
	add 0x01,r5
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;=============================================
loc_8c0f34a2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x94,PC),r0
	mov.w @(0x94,PC),r3
	mov.l @(r0,r4),r5
	mov.w @(0x8A,PC),r14
	cmp/hs r3,r5
	bf.s loc_8c0f34b8
	add r4,r14
	mov.w @(0x8A,PC),r5

loc_8c0f34b8:
	mov.l @(0x9C,PC),r3
	mov.l @(0x8C,PC),r2
	mov.l r5,@-r15
	mov.l r3,@-r15
	jsr @r2
	mov r14,r4
	add 0x08,r15
	mov r14,r5
	mov 0xFF,r7
	mov r5,r4
	mov 0x03,r14
	mov 0x00,r6
	mov.l r5,@r15
 
loc_8c0f34d2:
	mov.b @r4,r3
	add 0xD0,r3
	mov.b r3,@r4
	exts.b r3,r3
	cmp/pz r3
	bt.s loc_8c0f34e2
	add 0x01,r6
	mov.b r7,@r5

loc_8c0f34e2:
	cmp/hs r14,r6
	add 0x01,r5
	bf.s loc_8c0f34d2
	add 0x01,r4
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;=============================================
loc_8c0f34f2:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(0x3A,PC),r14
	mov.w @(0x3C,PC),r0
	add r4,r14
	mov.w @(0x3E,PC),r6
	mov.l @(r0,r4),r4
	extu.w r4,r5
	mov r5,r1
	mov r6,r0
	nop 
	mov.l @(0x48,PC),r3
	jsr @r3
	nop 
	mov r0,r4
	mov 0x09,r3
	extu.w r4,r2
	mov r14,r12
	cmp/gt r3,r2
	add 0x01,r12
	mov r14,r11
	bf.s loc_8c0f3560
	add 0x03,r11
	mov 0x35,r1
	mov 0x39,r4
	mov.b r4,@r14
	mov.b r1,@r12
	mov r4,r0
	nop 
	mov.b r0,@(0x2,r14)
	mov.b r0,@r11
	bra loc_8c0f35b2
	mov.b r0,@(0x4,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F353C:
	#data 0x019C
loc_8C0F353E:
	#data 0x01C8
loc_8C0F3540:
	#data 0x01CC
loc_8C0F3542:
	#data 0x03E8
loc_8C0F3544:
	#data 0x03E7
loc_8C0F3546:
	#data 0x0E10
	#align4

loc_8c0f3548:
	#data bank12.loc_8c129740
loc_8c0f354c:
	#data bank13.loc_8c13b7b8
loc_8c0f3550:
	#data bank13.loc_8c13b7bc
loc_8c0f3554:
	#data bank13.loc_8c13b7c4
loc_8c0f3558:
	#data bank13.loc_8C13B7C8
loc_8c0f355c:
	#data bank12.loc_8C129128

;==============================================
loc_8c0f3560:
	mov.l @(0x88,PC),r3
	add 0x30,r4
	mov r5,r1
	mov.b r4,@r14
	jsr @r3
	mov r6,r0
	mov r0,r4
	mov.l @(0x80,PC),r3
	extu.w r4,r1
	mov 0x3C,r13
	mov.l r1,@r15
	jsr @r3
	mov r13,r0
	mov.w r0,@(0x4,r15)
	extu.w r0,r0
	mov.l @(0x74,PC),r3
	mov.l @(0x74,PC),r2
	mov.l r0,@-r15
	mov.l r3,@-r15
	jsr @r2
	mov r12,r4
	mov.l @(0x60,PC),r3
	mov.l @(0x8,r15),r1
	jsr @r3
	mov r13,r0
	mov 0x64,r1
	mov r0,r4
	mulu.w r1,r4
	mov.l @(0x54,PC),r3
	sts macl,r1
	jsr @r3
	mov r13,r0
	mov.w r0,@(0x8,r15)
	extu.w r0,r0
	mov.l @(0x4C,PC),r3
	mov.l @(0x50,PC),r2
	mov.l r0,@-r15
	mov.l r3,@-r15
	jsr @r2
	mov r11,r4
	add 0x10,r15

loc_8c0f35b2:
	mov 0x00,r4
	mov.w @(0x32,PC),r7
	add r14,r4
	mov 0x00,r6
	mov.l r4,@r15
	mov 0x05,r14
	bra loc_8c0f35d6
	mov r4,r5

loc_8c0f35c2:
	mov.b @r5,r2
	add 0xD0,r2
	mov.b r2,@r5
	extu.b r2,r2
	cmp/pz r2
	bt.s loc_8c0f35d2
	add 0x01,r6
	mov.b r7,@r4

loc_8c0f35d2:
	add 0x01,r5
	add 0x01,r4

loc_8c0f35d6:
	extu.w r6,r2
	cmp/ge r14,r2
	bf loc_8c0f35c2
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f35ea:
	#data 0x00FF
	#align4

loc_8c0f35ec:
	#data bank12.loc_8c1292d4
loc_8c0f35f0:
	#data bank12.loc_8c129128
loc_8c0f35f4:
	#data bank13.loc_8c13b7cc
loc_8c0f35f8:
	#data bank12.loc_8c129740

;==============================================
loc_8C0F35FC:
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
	add 0xFC,r15
	mov.l @(loc_8C0F36EC,pc),r8 ; r8 set to 0x8C044F12
	mov 0x05,r5 ; r5 set to 0x05
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r8
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C0F36C2
	mov r0,r14
	mov.l @(loc_8C0F36F4,pc),r9 ; r9 set to 0x8C26A910
	mov 0x01,r12 ; r12 set to 0x01
	mov.l @(loc_8C0F36F0,pc),r3 ; r3 set to 0x8C0F378a
	mov.w @(loc_8C0F36E0,pc),r0 ; r0 set to 0x12c
	mov.l @(loc_8C0F36F8,pc),r4 ; r4 set to 0x8C161770
	mov.b r12,@(r0,r14)
	mov.l r3,@(0x10,r14)
	mov.l @r9,r2
	mov.w @(loc_8C0F36E2,pc),r0 ; r0 set to 0x84
	mov.l @r2,r3 ; r3 ??? bc r2 is ???
	mov r4,r2 ; r2 set to 0x8C161770
	mov.l @r3,r1
	mov.l @(loc_8C0F36FC,pc),r3 ; r3 set to 0x8C1294C8
	mov.l r1,@(r0,r14)
	mov r14,r1
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x44,r0 ; r0 set to 0x44
	mov.w @(loc_8C0F36E4,pc),r10 ; r10 set to 0x805
	mov 0x00,r11 ; r11 set to 0x00
	mov r12,r13 ; r13 set to 0x01
	mov.l r11,@(r0,r14)
	mov.w @(loc_8C0F36E6,pc),r0 ; r0 set to 0xCc
	mov.l r10,@(r0,r14)
	add 0x0C,r0 ; r0 set to 0xD8
	mov.l r11,@(r0,r14)
	mova @(loc_8C0F3700,pc),r0  ; r0 set to 0x8C0F3700
	mov.l r4,@r15
	fmov.s @r0,fr13 ; r13 ??
	mova @(loc_8C0F3704,pc),r0  ; r0 set to 0x8C0F3704
	fmov.s @r0,fr14
	mova @(loc_8C0F3708,pc),r0  ; r0 set to 0x8C0F3708
	fmov.s @r0,fr15

loc_8C0F3668:
	mov 0x05,r5 ; r5 set to 0x05
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r8
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bf/s loc_8C0F367a
	mov r0,r4 ; r4 set to 0x8C0F3708
	bra loc_8C0F36C6
	mov r4,r0

loc_8c0f367a:
	mov.l @(loc_8c0f36f0,pc),r3
	mov.w @(loc_8c0f36e0,pc),r0
	mov.b r12,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r9,r2
	mov.w @(loc_8c0f36e2,pc),r0
	mov.l @r2,r3
	mov.l @r3,r1
	mov.l @(loc_8c0f36fc,pc),r3
	mov.l r1,@(r0,r4)
	mov r4,r1
	mov.l @r15,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	extu.b r13,r3
	mov.w @(loc_8c0f36e6,pc),r0
	lds r3,fpul
	add 0x01,r13
	mov.l @(loc_8C0F370C,pc),r2
	mov 0x20,r1
	mov.l r10,@(r0,r4)
	mov 0x44,r0
	float fpul,fr3
	fmul fr15,fr3
	fdiv fr14,fr3
	fadd fr13,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r2,r3
	mov.l r3,@(r0,r4)
	extu.b r13,r3
	mov.w @(loc_8C0F36E8,pc),r0
	cmp/ge r1,r3
	bf/s loc_8c0f3668
	mov.l r11,@(r0,r4)

loc_8C0F36C2:
	mov r14,r0
	nop

loc_8C0F36C6:
	add 0x04,r15
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F36E0:
	#data 0x012c
loc_8C0F36E2:
	#data 0x0084
loc_8C0F36E4:
	#data 0x0805
loc_8C0F36E6:
	#data 0x00Cc
loc_8c0f36e8:
	#data 0x00D8
	#align4

loc_8C0F36EC:
	#data bank04.loc_8c044F12
loc_8C0F36F0:
	#data loc_8c0f378a
loc_8C0F36F4:
	#data 0x8C26A910
loc_8C0F36F8:
	#data bank16.loc_8c161770
loc_8C0F36FC:
	#data bank12.loc_8c1294C8
loc_8C0F3700:
	#data 0x3F000000
loc_8C0F3704:
	#data 0x43B40000
loc_8C0F3708:
	#data 0x49340000
loc_8c0f370c:
	#data 0x0000FFFf

;==============================================
loc_8c0f3710:
	sts.l pr,@-r15
	mov.l @(0x120,PC),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0f3784
	mov r0,r4
	mov.w @(0x102,PC),r0
	mov 0x01,r3
	mov.l @(0x114,PC),r1
	mov.l @(0x10C,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(0xF4,PC),r0
	add 0x34,r1
	mov.l @r3,r2

loc_8c0f3738:
	mov.l @r2,r3
	mov.l @(0x104,PC),r2
	mov.l r3,@(r0,r4)
	mov.l @(0x104,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.w @(0xE6,PC),r0
	mov 0x05,r5
	mov.w @(0xE0,PC),r1
	mov 0x01,r6
	mov.l @(0xE4,PC),r3
	mov.l r1,@(r0,r4)
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0f3784
	mov r0,r4
	mov.w @(0xCA,PC),r0
	mov 0x01,r3
	mov.l @(0xDC,PC),r1
	mov.l @(0xD4,PC),r2
	mov.b r3,@(r0,r4)
	add 0xE0,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov.w @(0xB4,PC),r0
	mov.l @(0xD0,PC),r2
	mov.l r3,@(r0,r4)
	mov.l @(0xC8,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.w @(0xAC,PC),r0
	mov.w @(0xA8,PC),r1
	mov.l r1,@(r0,r4)

loc_8c0f3784:
	lds.l @r15+,pr
	rts 
	nop 

;=============================================
loc_8C0F378A:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(loc_8C0F384C,pc),r4 ; r4 set to 0x8C28C410
	mov 0x36,r0 ; r0 set to 0x36
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8C0F3870
	mov.b @(0x04,r14),r0
	extu.b r0,r0 ; r0 set to 0x36
	cmp/eq 0x00,r0
	bt loc_8C0F37B0
	cmp/eq 0x01,r0
	bt loc_8C0F3816
	bra loc_8C0F3870
	nop

loc_8C0F37B0:
	mov 0x33,r0 ; r0 set to 0x33
	mov.b @(r0,r4),r3
	mov.w @(loc_8C0F3830,pc),r0 ; r0 set to 0xD8
	mov.b @(r0,r14),r13
	xor r3,r13
	extu.b r13,r2
	tst r2,r2
	bt loc_8C0F3870
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0F3840,pc),r12 ; r12 set to 0x8C161770
	add 0x01,r0 ; r0 set to 0xD9
	mov.b r0,@(0x04,r14)
	mov 0x19,r0 ; r0 set to 0x19
	mov.w r0,@(0x1C,r14)
	mov 0x33,r0 ; r0 set to 0x33
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8C0F37E6
	mov 0x04,r0 ; r0 set to 0x04
	mov r12,r3 ; r3 set to 0x8C161770
	mov 0x00,r7 ; r7 set to 0x00
	mov.l r12,@r15
	fmov.s @(r0,r12),fr5
	mov r7,r6 ; r6 set to 0x00
	bra loc_8C0F3800
	fmov.s @r3,fr4

loc_8C0F37E6:
	extu.b r13,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	add r12,r3
	mov r3,r2
	mov 0x04,r0 ; r0 set to 0x04
	mov 0x00,r7 ; r7 set to 0x00
	mov.l r3,@r15
	fmov.s @(r0,r3),fr5
	mov r7,r6 ; r6 set to 0x00
	fmov.s @r2,fr4

loc_8C0F3800:
	mov.w @(0x1C,r14),r0
	mov.l @(loc_8C0F3850,pc),r3 ; r3 set to 0x8C03C870, r3 set to 0x8C03C870
	mov r0,r5 ; r5 set to 0x04
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0F3830,pc),r0 ; r0 set to 0xD8, r0 set to 0xD8
	extu.b r13,r13
	mov.l @(r0,r14),r2
	or r13,r2
	bra loc_8C0F3870
	mov.l r2,@(r0,r14)

loc_8C0F3816:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/pl r0
	bt loc_8C0F3854
	mov 0x00,r0 ; r0 set to 0x00
	bra loc_8C0F3862
	mov.b r0,@(0x04,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f3828:
	#data 0x012c
loc_8c0f382a:
	#data 0x0084
loc_8c0f382c:
	#data 0x0805
loc_8c0f382e:
	#data 0x00cc
loc_8c0f3830:
	#data 0x00d8
	#align4

loc_8C0F3834:
	#data bank04.loc_8c044F12
loc_8C0F3838:
	#data loc_8c0f378a
loc_8C0F383C:
	#data 0x8C26A910
loc_8C0F3840:
	#data bank16.loc_8c161770
loc_8C0F3844:
	#data bank12.loc_8c1294C8
loc_8C0F3848:
	#data bank16.loc_8c161794
loc_8C0F384C:
	#data 0x8C28C410
loc_8C0F3850:
	#data bank03.loc_8c03C870

;==============================================
loc_8c0f3854:
	mov 0x5C,r1
	add r14,r1
	mov 0x34,r0
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)

loc_8c0f3862:
	mov 0x68,r1
	add r14,r1
	mov 0x5C,r0
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)

loc_8C0F3870:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0F387C:
	sts.l pr,@-r15
	mov.l @(0xBC,PC),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0f38e0
	mov r0,r4
	mov.l @(0xB0,PC),r2
	mov 0x01,r3
	mov.w @(0x9A,PC),r0
	mov.l @(0xAC,PC),r1
	mov.b r3,@(r0,r4)
	add 0x9C,r0
	mov.l r2,@(0x10,r4)
	mov.w @(0x92,PC),r2
	mov.l @r1,r3
	fldi0 fr4
	add r3,r2
	fldi1 fr3
	mov.l r2,@(r0,r4)
	add 0xBC,r0
	mov.l @(0x9C,PC),r2
	fneg fr3
	mov.l @r2,r3
	mov.l @r3,r1
	mov.l @(0x4,r1),r3
	mov.l r3,@(r0,r4)
	mov 0x34,r0
	fmov fr4,@(r0,r4)
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	mov.w @(0x70,PC),r3
	fmov fr4,@(r0,r4)
	mov 0x44,r0
	mov.l r3,@(r0,r4)
	mova @(0x80,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov fr4,@(r0,r4)
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	mov 0x58,r0
	fldi1 fr3
	mov.w @(0x5A,PC),r3
	fmov fr3,@(r0,r4)
	add 0x74,r0
	mov.l r3,@(r0,r4)

loc_8C0F38E0:
	lds.l @r15+,pr
	rts 
	nop 

;=============================================
loc_8C0F38E6:
	mov 0x44,r0 ; r0 set to 0x44
	mov.w @(loc_8C0F3938,pc),r3 ; r3 set to 0x100
	mov.l @(r0,r4),r2
	sub r3,r2
	mov.l r2,@(r0,r4)
	mov.b @(0x04,r4),r0
	extu.b r0,r0 ; r0 set to 0x44
	cmp/eq 0x00,r0
	bt loc_8C0F3900
	cmp/eq 0x01,r0
	bt loc_8C0F392c
	bra loc_8C0F392c
	nop

loc_8c0f3900:
	mova @(loc_8C0F3950,pc),r0
	fmov.s @r0,fr4
	mov 0x50,r0
	fmov.s @(r0,r4),fr3
	fsub fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0
	fmov.s @(r0,r4),fr2
	fsub fr4,fr2
	fldi1 fr4
	fmov.s fr2,@(r0,r4)
	mov 0x50,r0
	fmov.s @(r0,r4),fr3
	fcmp/gt fr3,fr4
	bf loc_8c0f392c
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov 0x50,r0
	fmov.s fr4,@(r0,r4)
	mov 0x54,r0
	fmov.s fr4,@(r0,r4)

loc_8C0F392C:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f3930:
	#data 0x012c
loc_8c0f3932:
	#data 0x0088
loc_8c0f3934:
	#data 0x4000
loc_8c0f3936:
	#data 0x0815
loc_8c0f3938:
	#data 0x0100
	#align4

loc_8C0F393C:
	#data bank04.loc_8c044F12
loc_8C0F3940:
	#data loc_8c0f38E6
loc_8C0F3944:
	#data 0x8C28C468
loc_8C0F3948:
	#data 0x8C26A910
loc_8C0F394c:
	#data 0x40800000
loc_8c0f3950:
	#data 0x3D4CCCCd

;==============================================
loc_8C0F3954:
	mov.l r14,@-r15
	mov 0x05,r5 ; r5 set to 0x05
	sts.l pr,@-r15
	mov.l @(loc_8C0F3A24,pc),r3 ; r3 set to 0x8C044F12
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C0F399c
	mov r0,r14
	mov.w @(loc_8C0F3A18,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8C0F3A2C,pc),r1 ; r1 set to 0x8C26A910
	mov.l @(loc_8C0F3A28,pc),r2 ; r2 set to 0x8C0F39A2
	mov.b r3,@(r0,r14)
	mov.l r2,@(0x10,r14)
	mov.l @r1,r3 ; r3 ??
	mov r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0F3A1A,pc),r0 ; r0 set to 0x84
	add 0x34,r1
	mov.l @r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(0x18,r2),r3
	mov.l @(loc_8C0F3A30,pc),r2 ; r2 set to 0x8C1617A0
	mov.l r3,@(r0,r14)
	mov.l @(loc_8C0F3A34,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C0F3A1E,pc),r0 ; r0 set to 0xCc
	mov.w @(loc_8C0F3A1C,pc),r1 ; r1 set to 0x801
	mov.l @(loc_8C0F3A38,pc),r3 ; r3 set to 0x8C108210
	mov.l r1,@(r0,r14)
	add 0xB8,r0 ; r0 set to 0x84
	lds.l @r15+,pr
	mov.l @(r0,r14),r4 ; r4 ??? bc r14 is ???
	jmp @r3
	mov.l @r15+,r14

loc_8C0F399C:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0F39A2:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.w @(0x1C,r14),r0
	mov.w @(0x68,PC),r3
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8c0f39c4
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)

loc_8C0F39C4:
	mov.l @(0x64,PC),r3
	mov.w @(0x50,PC),r0
	mov.l @r3,r4
	mov.l @(0x70,PC),r1
	mov.l @r4,r2
	mov.l @(r0,r14),r5
	jsr @r1
	mov.l @(0x1C,r2),r4
	mov.l @(0x70,PC),r13
	mova @(0x74,PC),r0
	mov.l @(0x68,PC),r12
	mov.l @(0x64,PC),r11
	bra loc_8c0f3a00
	fmov @r0,fr15
 
loc_8C0F39E0:
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
	float fpul,fr3
	fmul fr15,fr3
	fsub fr3,fr2
	fmov fr2,@r15
	jsr @r11
	add 0x04,r4

loc_8C0F3A00:
	jsr @r12
	nop 
	tst r0,r0
	bt loc_8c0f39e0
	add 0x08,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0F3A18:
	#data 0x012c
loc_8C0F3A1A:
	#data 0x0084
loc_8C0F3A1C:
	#data 0x0801
loc_8C0F3A1E:
	#data 0x00Cc
loc_8C0F3A20:
	#data 0x03E8
	#align4

loc_8C0F3A24:
	#data bank04.loc_8c044F12
loc_8C0F3A28:
	#data loc_8c0f39A2
loc_8C0F3A2C:
	#data 0x8C26A910
loc_8C0F3A30:
	#data bank16.loc_8c1617A0
loc_8C0F3A34:
	#data bank12.loc_8c1294C8
loc_8C0F3A38:
	#data bank10.loc_8c108210
loc_8C0F3A3C:
	#data bank10.loc_8c108060
loc_8C0F3A40:
	#data bank10.loc_8c1081E6
loc_8C0F3A44:
	#data bank10.loc_8c108086
loc_8C0F3A48:
	#data bank10.loc_8c108192
;part of Character Sel BG
loc_8c0f3a4c:
	#data 0x3A83126f

;==============================================
loc_8C0F3A50:
	mov.l r14,@-r15
	mov 0x00,r4 ; r4 set to 0x00
	mov.l r13,@-r15
	mov 0x3B,r13 ; r13 set to 0x3b
	mov.l @(loc_8C0F3B34,pc),r3 ; r3 set to 0x8C28C749
	mov r4,r14 ; r14 set to 0x00
	mov.l @(loc_8C0F3B38,pc),r2 ; r2 set to 0x8C28C748
	sts.l pr,@-r15
	mov.b r4,@r3 ; r3 ??
	mov.b r4,@r2 ; r2 ??

loc_8C0F3A64:
	bsr loc_8C0F3A76
	mov r14,r4 ; r4 set to 0x00
	add 0x01,r14 ; r14 set to 0x01
	cmp/ge r13,r14
	bf loc_8C0F3A64
	lds.l @r15+,pr
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0F3A76:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x18,r3 ; r3 set to 0x18
	mov r4,r13
	cmp/ge r3,r13
	bf loc_8C0F3A90
	mov 0x1A,r1 ; r1 set to 0x1a
	cmp/gt r1,r13
	bt loc_8C0F3A90
	bra loc_8C0F3D46
	nop

loc_8C0F3A90:
	mov.l @(loc_8C0F3B3C,pc),r3 ; r3 set to 0x8C044F12
	mov 0x05,r5 ; r5 set to 0x05
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bf/s loc_8C0F3AA4
	mov r0,r14
	bra loc_8C0F3D46
	nop

loc_8C0F3AA4:
	mov.w @(loc_8C0F3B2E,pc),r5 ; r5 set to 0xFd
	mov 0x1B,r6 ; r6 set to 0x1b
	cmp/ge r6,r13
	bf loc_8C0F3AB6
	mov r13,r2
	mov 0x20,r0 ; r0 set to 0x20
	add r5,r2
	bra loc_8C0F3ABa
	mov.b r2,@(r0,r14)

loc_8C0F3AB6:
	mov 0x20,r0 ; r0 set to 0x20
	mov.b r13,@(r0,r14)

loc_8C0F3ABA:
	mov.l @(loc_8C0F3B40,pc),r2 ; r2 set to 0x8C0F3DE2, r2 set to 0x8C0F3DE2
	mov 0x01,r3 ; r3 set to 0x01, r3 set to 0x01
	mov.w @(loc_8C0F3B30,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	mov.l @(loc_8C0F3B44,pc),r1 ; r1 set to 0x8C28C468, r1 set to 0x8C28C468
	mov.b r3,@(r0,r14)
	add 0x9C,r0 ; r0 set to 0xC8, r0 set to 0xC8
	mov.l r2,@(0x10,r14)
	mov.w @(loc_8C0F3B32,pc),r2 ; r2 set to 0x88, r2 set to 0x88
	mov.l @r1,r3 ; r3 ??, r3 ??
	mov.l @(loc_8C0F3B48,pc),r4 ; r4 set to 0x8C26A910, r4 set to 0x8C26A910
	add r3,r2 ; r2 ??? bc r3 is ???, r2 ??? bc r3 is ???
	mov.l r2,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	mov.b @(r0,r14),r2
	add 0x64,r0 ; r0 set to 0x84, r0 set to 0x84
	mov.l @r4,r3
	extu.b r2,r2
	mov.l @r3,r3
	shll2 r2
	add r3,r2
	mov.l @(0x28,r2),r3
	mov.l r3,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	mov.l @(loc_8C0F3B4C,pc),r3 ; r3 set to 0x8C13B7D4, r3 set to 0x8C13B7D4
	mov.b r13,@(r0,r14)
	mov.b @(r0,r14),r7
	extu.b r7,r7
	shll r7
	add r3,r7
	mov.l r7,@r15
	mov.b @r7,r7
	mov.l @r15,r2
	mov.b @(0x01,r2),r0
	extu.b r7,r7
	mov.l @(loc_8C0F3B50,pc),r2 ; r2 set to 0x8C161FAC, r2 set to 0x8C161FAc
	mov.b r0,@r15
	mov.b @r15,r0 ; r0 ??? bc r15 is ???, r0 ??? bc r15 is ???
	extu.b r0,r0
	shll2 r0
	shll r0
	add r2,r0
	mov.b @(r0,r7),r0
	mov.b r0,@(0x07,r14)
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	mov.b @(r0,r14),r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???
	mov.b @(0x07,r14),r0
	cmp/eq r0,r1
	bt loc_8C0F3BAe
	mov.b @(0x07,r14),r0
	extu.b r0,r0 ; r0 set to 0x21, r0 set to 0x21
	cmp/ge r6,r0
	bf loc_8C0F3B54
	mov.b @(0x07,r14),r0
	mov 0x20,r1 ; r1 set to 0x20, r1 set to 0x20
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???
	add r5,r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???
	bra loc_8C0F3B5c
	mov.b r0,@r1

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F3B2E:
	#data 0x00Fd
loc_8C0F3B30:
	#data 0x012c
loc_8C0F3B32:
	#data 0x0088
	#align4

loc_8C0F3B34:
	#data 0x8C28C749
loc_8C0F3B38:
	#data 0x8C28C748
loc_8C0F3B3C:
	#data bank04.loc_8c044F12
loc_8C0F3B40:
	#data loc_8c0f3DE2
loc_8C0F3B44:
	#data 0x8C28C468
loc_8C0F3B48:
	#data 0x8C26A910
loc_8C0F3B4C:
	#data bank13.loc_8c13b7D4
loc_8C0F3B50:
	#data bank16.loc_8c161FAc

;==============================================
loc_8c0f3b54:
	mov 0x20,r3
	mov.b @(0x07,r14),r0
	add r14,r3
	mov.b r0,@r3

loc_8c0f3b5c:
	mov 0x20,r0
	mov.l @r4,r2
	mov.b @(r0,r14),r3
	add 0x64,r0
	mov.l @r2,r2
	extu.b r3,r3
	shll2 r3
	add r2,r3
	mov.l @(0x28,r3),r1
	mov.l @(loc_8c0f3c80,pc),r3
	mov.l r1,@(r0,r14)
	mov.b @(0x07,r14),r0
	mov.l @(loc_8c0f3c80,pc),r1
	extu.b r0,r0
	shll2 r0
	shll r0
	add r0,r3
	mov 0x21,r0
	mov.l r3,@r15
	mov.b @(r0,r14),r2
	mov 0x04,r0
	extu.b r2,r2
	shll2 r2
	shll r2
	add r2,r1
	mov.l r1,@(0x04,r15)
	fmov.s @(r0,r1),fr3
	fmov.s @(r0,r3),fr5
	mov r1,r3
	mov.l @r15,r2
	fsub fr3,fr5
	fmov.s @r2,fr3
	fmov.s @r3,fr4
	mov 0x20,r0
	mov.b @(r0,r14),r5
	fsub fr3,fr4
	mov.l @(loc_8c0f3c84,pc),r3
	extu.b r5,r5
	add 0x0A,r5
	jsr @r3
	mov r14,r4

loc_8C0F3BAE:
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x27,r0
	bt/s loc_8C0F3BFa
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x21,r0
	bt loc_8C0F3BFa
	cmp/eq 0x25,r0
	bt loc_8C0F3BFa
	cmp/eq 0x26,r0
	bt loc_8C0F3BFa
	cmp/eq 0x20,r0
	bt loc_8C0F3BFa
	cmp/eq 0x23,r0
	bt loc_8C0F3BFa
	cmp/eq 0x24,r0
	bt loc_8C0F3BFa
	cmp/eq 0x3A,r0
	bt loc_8C0F3BFa
	cmp/eq 0x36,r0
	bt loc_8C0F3BFa
	cmp/eq 0x2E,r0
	bt loc_8C0F3BFa
	cmp/eq 0x33,r0
	bt loc_8C0F3BFa
	cmp/eq 0x34,r0
	bt loc_8C0F3BFa
	cmp/eq 0x2B,r0
	bt loc_8C0F3BFa
	cmp/eq 0x35,r0
	bt loc_8C0F3BFa
	cmp/eq 0x31,r0
	bt loc_8C0F3BFa
	cmp/eq 0x32,r0
	bt loc_8C0F3BFa
	bra loc_8C0F3C02
	nop

loc_8C0F3BFA:
	mov 0x26,r0 ; r0 set to 0x26
	mov 0x01,r3 ; r3 set to 0x01
	bra loc_8C0F3C06
	mov.w r3,@(r0,r14)

loc_8c0f3c02:
	mov 0x26,r0
	mov.w r13,@(r0,r14)

loc_8C0F3C06:
	mov.b @(0x07,r14),r0
	mov.l @(loc_8C0F3C88,pc),r4 ; r4 set to 0x8C1617B8
	extu.b r0,r0
	fldi0 fr3
	mov r0,r3
	shll r0
	add r3,r0
	mov r4,r5 ; r5 set to 0x8C1617B8
	shll2 r0
	add r5,r0
	fmov.s @r0,fr2
	fcmp/gt fr2,fr3
	bf loc_8C0F3C34
	mov.b @(0x07,r14),r0
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r0,r5 ; r5 ??? bc r0 is ???
	mova @(loc_8C0F3C8C,pc),r0  ; r0 set to 0x8C0F3C8c
	bra loc_8C0F3C46
	fmov.s @r0,fr2

loc_8C0F3C34:
	mov.b @(0x07,r14),r0
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r0,r5
	mova @(loc_8C0F3C90,pc),r0  ; r0 set to 0x8C0F3C90
	fmov.s @r0,fr2

loc_8C0F3C46:
	fmov.s @r5,fr1
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	mov.l @(loc_8C0F3C94,pc),r1 ; r1 set to 0x432D0000, r1 set to 0x432D0000
	mov r4,r5
	fadd fr2,fr1 ; r1 ??? bc r2 is ???, r1 ??? bc r2 is ???
	lds r1,fpul
	mov 0x04,r1 ; r1 set to 0x04, r1 set to 0x04
	fmov.s fr1,@(r0,r14)
	mov.b @(0x07,r14),r0
	fsts fpul,fr3
	extu.b r0,r0 ; r0 set to 0x34, r0 set to 0x34
	mov r0,r3 ; r3 set to 0x34, r3 set to 0x34
	shll r0 ; r0 set to 0x68, r0 set to 0x68
	add r3,r0 ; r0 set to 0x9C, r0 set to 0x9c
	shll2 r0 ; r0 set to 0x270, r0 set to 0x270
	add r5,r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???
	fmov.s @(r0,r1),fr2
	fcmp/gt fr2,fr3 ; r3 ??? bc r2 is ???, r3 ??? bc r2 is ???
	bt loc_8C0F3C9c
	mov.b @(0x07,r14),r0
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r0,r5
	mova @(loc_8C0F3C98,pc),r0  ; r0 set to 0x8C0F3C98, r0 set to 0x8C0F3C98
	bra loc_8C0F3CAe
	fmov.s @r0,fr2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C0F3C80:
	#data bank16.loc_8c161D40
loc_8C0F3C84:
	#data bank03.loc_8c03D21a
loc_8C0F3C88:
	#data bank16.loc_8c1617B8
loc_8C0F3C8C:
	#data 0xC4610000
loc_8C0F3C90:
	#data 0x44610000
loc_8C0F3C94:
	#data 0x432D0000
loc_8C0F3C98:
	#data 0x42C80000

;==============================================
loc_8C0F3C9C:
	mov.b @(0x07,r14),r0
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r0,r5
	mova @(loc_8C0F3DA0,pc),r0  ; r0 set to 0x8C0F3DA0
	fmov.s @r0,fr2

loc_8C0F3CAE:
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	fmov.s @(r0,r5),fr1
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fadd fr2,fr1
	fmov.s fr1,@(r0,r14)
	mov.b @(0x07,r14),r0
	extu.b r0,r0 ; r0 set to 0x38, r0 set to 0x38
	mov r0,r3 ; r3 set to 0x38, r3 set to 0x38
	shll r0 ; r0 set to 0x70, r0 set to 0x70
	add r3,r0 ; r0 set to 0xA8, r0 set to 0xA8
	shll2 r0 ; r0 set to 0x2A0, r0 set to 0x2A0
	add r0,r4
	mova @(loc_8C0F3DA4,pc),r0  ; r0 set to 0x8C0F3DA4, r0 set to 0x8C0F3DA4
	fmov.s @r0,fr3 ; r3 ??, r3 ??
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
	fmov.s @(r0,r4),fr2
	mov 0x3C,r0 ; r0 set to 0x3C, r0 set to 0x3c
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	bsr loc_8C0F4224
	mov r14,r4
	mov.l @(loc_8C0F3DA8,pc),r2 ; r2 set to 0x8C11E730, r2 set to 0x8C11E730
	jsr @r2
	nop
	mov r0,r4 ; r4 set to 0x3C, r4 set to 0x3c
	mov.w @(0x1C,r14),r0
	mov 0x03,r3 ; r3 set to 0x03, r3 set to 0x03
	mov r14,r2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???
	and r3,r4 ; r4 ??, r4 ??
	add r4,r0 ; r0 ??? bc r4 is ???, r0 ??? bc r4 is ???
	mov.w r0,@(0x1C,r14)
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	add 0x40,r2
	mov.l r13,@r2
	mov.b @(r0,r14),r5
	bsr loc_8C0F3D50
	mov r14,r4
	mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48
	mov.w @(loc_8C0F3D98,pc),r3 ; r3 set to 0xC1F, r3 set to 0xC1f
	mov.l r13,@(r0,r14)
	mov.w @(loc_8C0F3D9A,pc),r0 ; r0 set to 0xCC, r0 set to 0xCc
	fldi1 fr4
	mov.l r3,@(r0,r14)
	mov 0x78,r0 ; r0 set to 0x78, r0 set to 0x78
	fmov.s fr4,@(r0,r14)
	mov 0x7C,r0 ; r0 set to 0x7C, r0 set to 0x7c
	fmov.s fr4,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x80, r0 set to 0x80
	fmov.s fr4,@(r0,r14)
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	fmov.s fr4,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
	fmov.s fr4,@(r0,r14)
	mov 0x58,r0 ; r0 set to 0x58, r0 set to 0x58
	fmov.s fr4,@(r0,r14)
	mov.w @(loc_8C0F3D9C,pc),r0 ; r0 set to 0xD8, r0 set to 0xD8
	mov.l r13,@(r0,r14)
	mov 0x22,r0 ; r0 set to 0x22, r0 set to 0x22
	mov.b r13,@(r0,r14)
	mov 0x26,r0 ; r0 set to 0x26, r0 set to 0x26
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???
	tst r3,r3
	bt loc_8C0F3D34
	bsr loc_8C0F428c
	mov r14,r4
	bra loc_8C0F3D38
	nop

loc_8C0F3D34:
	bsr loc_8C0F42Be
	mov r14,r4

loc_8C0F3D38:
	mov r14,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0F3DAC,pc),r2 ; r2 set to 0x8C0F6658, r2 set to 0x8C0F6658
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C0F3D46:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0F3D50:
	mov.l @(loc_8C0F3DB0,pc),r0 ; r0 set to 0x8C13B7D4
	extu.b r5,r5
	shll r5
	mov.b @(r0,r5),r5
	extu.b r5,r0 ; r0 ??? bc r5 is ???
	cmp/eq 0x00,r0
	bt loc_8C0F3D7e
	cmp/eq 0x01,r0
	bt loc_8C0F3D86
	cmp/eq 0x02,r0
	bt loc_8C0F3D8c
	cmp/eq 0x03,r0
	bt loc_8C0F3D92
	cmp/eq 0x04,r0
	bt loc_8C0F3DC4
	cmp/eq 0x05,r0
	bt loc_8C0F3DCa
	cmp/eq 0x06,r0
	bt loc_8C0F3DD0
	cmp/eq 0x07,r0
	bt loc_8C0F3DD8
	bra loc_8C0F3DDe
	nop

loc_8C0F3D7E:
	mov.l @(loc_8C0F3DB4,pc),r3 ; r3 set to 0xE402
	mov 0x44,r0 ; r0 set to 0x44
	bra loc_8C0F3DDe
	mov.l r3,@(r0,r4)

loc_8C0F3D86:
	mov.l @(loc_8C0F3DB8,pc),r1 ; r1 set to 0xEC02
	bra loc_8C0F3DDa
	nop

loc_8C0F3D8C:
	mov.l @(loc_8C0F3DBC,pc),r2 ; r2 set to 0xF402
	bra loc_8C0F3DD2
	nop

loc_8C0F3D92:
	mov.l @(loc_8C0F3DC0,pc),r1 ; r1 set to 0xFC02
	bra loc_8C0F3DDa
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F3D98:
	#data 0x0C1f
loc_8C0F3D9A:
	#data 0x00Cc
loc_8C0F3D9C:
	#data 0x00D8
	#align4

loc_8C0F3DA0:
	#data 0xC2C80000
loc_8C0F3DA4:
	#data 0x44480000
loc_8C0F3DA8:
	#data bank11.loc_8c11e730
loc_8C0F3DAC:
	#data loc_8c0f6658
loc_8C0F3DB0:
	#data bank13.loc_8c13b7D4
loc_8C0F3DB4:
	#data 0x0000E402
loc_8C0F3DB8:
	#data 0x0000EC02
loc_8C0F3DBC:
	#data 0x0000F402
loc_8C0F3DC0:
	#data 0x0000FC02

;==============================================
loc_8C0F3DC4:
	mov.w @(loc_8C0F3EEE,pc),r2 ; r2 set to 0x3Ff
	bra loc_8C0F3DD2
	nop

loc_8C0F3DCA:
	mov.w @(loc_8C0F3EF0,pc),r1 ; r1 set to 0xBFf
	bra loc_8C0F3DDa
	nop

loc_8c0f3dd0:
	mov.w @(loc_8C0F3EF2,pc),r2

loc_8C0F3DD2:
	mov 0x44,r0 ; r0 set to 0x44
	bra loc_8C0F3DDe
	mov.l r2,@(r0,r4)

loc_8c0f3dd8:
	mov.w @(loc_8C0F3EF4,pc),r1

loc_8c0f3dda:
	mov 0x44,r0
	mov.l r1,@(r0,r4)

loc_8C0F3DDE:
	rts
	nop

;=============================================
loc_8C0F3DE2:
	mov r4,r3
	mov.l @(loc_8C0F3EF8,pc),r1 ; r1 set to 0x8C161F18
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0F3DF4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0F3EFC,pc),r2 ; r2 set to 0x8C1617B8
	mov 0x02,r7 ; r7 set to 0x02
	add 0x01,r0
	mov r7,r6 ; r6 set to 0x02
	mov.b r0,@(0x04,r14)
	mov.b @(0x07,r14),r0
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r2,r0
	mov 0x04,r3 ; r3 set to 0x04
	mov r0,r1
	mov.l r0,@r15
	fmov.s @(r0,r3),fr5
	mov.w @(0x1C,r14),r0
	mov.l @(loc_8C0F3F00,pc),r3 ; r3 set to 0x8C03C870
	fmov.s @r1,fr4
	mov r0,r5
	jsr @r3
	mov r14,r4
	mov.b @(0x07,r14),r0
	mov 0x3C,r1 ; r1 set to 0x3c
	add r14,r1 ; r1 ??? bc r14 is ???
	extu.b r0,r0
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	mov r0,r3
	shll r0
	mov.l @(loc_8C0F3F04,pc),r1 ; r1 set to 0x8C1617C0
	add r3,r0
	shll2 r0
	fmov.s @(r0,r1),fr2 ; r2 ??
	mov.w @(0x1C,r14),r0
	fsub fr3,fr2
	mov r0,r3
	lds r3,fpul
	mov 0x64,r0 ; r0 set to 0x64
	float fpul,fr3
	fdiv fr3,fr2
	fldi0 fr3
	fmov.s fr2,@(r0,r14)
	mov 0x70,r0 ; r0 set to 0x70
	fmov.s fr3,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0F3E5E:
	sts.l pr,@-r15
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	cmp/pz r0
	bt loc_8C0F3E94
	mov.b @(0x04,r4),r0
	mov r4,r1
	mov.l @(loc_8C0F3EFC,pc),r2 ; r2 set to 0x8C1617B8
	add 0x34,r1
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.b @(0x07,r4),r0
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(loc_8C0F3F08,pc),r3 ; r3 set to 0x8C1294C8
	shll2 r0
	add r0,r2 ; r2 ??? bc r0 is ???
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(loc_8C0F3F0C,pc),r1 ; r1 set to 0x8C28C41b
	mov 0x01,r2 ; r2 set to 0x01
	bra loc_8C0F3EE8
	mov.b r2,@r1

loc_8C0F3E94:
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
	mov 0x64,r1 ; r1 set to 0x64
	add r4,r1 ; r1 ??? bc r4 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @r1,fr3
	fmov.s @(r0,r4),fr2
	mov 0x70,r1 ; r1 set to 0x70
	add r4,r1 ; r1 ??? bc r4 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x64,r0 ; r0 set to 0x64
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)

loc_8C0F3EE8:
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F3EEE:
	#data 0x03Ff
loc_8C0F3EF0:
	#data 0x0BFf
loc_8c0f3ef2:
	#data 0x13Ff
loc_8c0f3ef4:
	#data 0x1BFf
	#align4

loc_8C0F3EF8:
	#data bank16.loc_8c161F18
loc_8C0F3EFC:
	#data bank16.loc_8c1617B8
loc_8C0F3F00:
	#data bank03.loc_8c03C870
loc_8C0F3F04:
	#data bank16.loc_8c1617C0
loc_8C0F3F08:
	#data bank12.loc_8c1294C8
loc_8C0F3F0C:
	#data 0x8C28C41b

;==============================================
loc_8C0F3F10:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mova @(loc_8C0F4090,pc),r0  ; r0 init to 0x8C0F4090
	mov r4,r14
	fmov.s @r0,fr4
	mov 0x78,r0 ; r0 set to 0x78
	fldi1 fr15
	fmov.s fr4,@(r0,r14)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s fr4,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x80
	fmov.s fr4,@(r0,r14)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s fr15,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr15,@(r0,r14)
	mov 0x58,r0 ; r0 set to 0x58
	fmov.s fr15,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3
	mov 0x08,r0 ; r0 set to 0x08
	mov.l @(loc_8C0F408C,pc),r12 ; r12 set to 0x8C161A7c
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	add r12,r3
	fmov.s @(r0,r3),fr3
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s fr3,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	add r12,r3
	fmov.s @r3,fr3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s fr3,@(r0,r14)
	mov 0x26,r0 ; r0 set to 0x26
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_8C0F3F7e
	mov r15,r13
	bsr loc_8C0F428c
	mov r14,r4
	bra loc_8C0F3F82
	nop

loc_8C0F3F7E:
	bsr loc_8C0F4334
	mov r14,r4

loc_8C0F3F82:
	mov.l @(loc_8C0F4094,pc),r3 ; r3 set to 0x8C26823C, r3 set to 0x8C26823c
	mov.l @r3,r2
	mov.b @(0x07,r2),r0
	tst r0,r0
	bf loc_8C0F3F90
	bra loc_8C0F4086
	nop

loc_8C0F3F90:
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s fr15,@(r0,r14)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s fr15,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x80
	fmov.s fr15,@(r0,r14)
	bsr loc_8C0F4224
	mov r14,r4
	mov 0x01,r4 ; r4 set to 0x01
	fldi0 fr3
	extu.b r15,r0 ; r0 ??? bc r15 is ???
	and r0,r4 ; r4 ??? bc r0 is ???
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bt loc_8C0F3FEc
	mova @(loc_8C0F4098,pc),r0  ; r0 set to 0x8C0F4098
	fmov.s @r0,fr4
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2
	fcmp/gt fr4,fr2
	bf loc_8C0F3FDa
	tst r4,r4
	bt loc_8C0F3FCc
	mova @(loc_8C0F409C,pc),r0  ; r0 set to 0x8C0F409c
	bra loc_8C0F3FD0
	fmov.s @r0,fr2

loc_8C0F3FCC:
	mova @(loc_8C0F40A0,pc),r0  ; r0 init to 0x8C0F40A0
	fmov.s @r0,fr2

loc_8C0F3FD0:
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r14),fr1
	fadd fr2,fr1
	bra loc_8C0F400e
	fmov.s fr1,@r13

loc_8C0F3FDA:
	tst r4,r4
	bt loc_8C0F3FE4
	mova @(loc_8C0F40A4,pc),r0  ; r0 init to 0x8C0F40A4
	bra loc_8C0F401c
	fmov.s @r0,fr2

loc_8C0F3FE4:
	fmov.s @(r0,r14),fr2
	fadd fr4,fr2
	bra loc_8C0F402c
	fmov.s fr2,@r13

loc_8C0F3FEC:
	mova @(loc_8C0F40A8,pc),r0  ; r0 init to 0x8C0F40A8
	fmov.s @r0,fr4
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2
	fcmp/gt fr2,fr4
	bf loc_8C0F4014
	tst r4,r4
	bt loc_8C0F4002
	mova @(loc_8C0F40AC,pc),r0  ; r0 set to 0x8C0F40Ac
	bra loc_8C0F4006
	fmov.s @r0,fr2

loc_8C0F4002:
	mova @(loc_8C0F40B0,pc),r0  ; r0 init to 0x8C0F40B0
	fmov.s @r0,fr2

loc_8C0F4006:
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r14),fr1
	fadd fr2,fr1
	fmov.s fr1,@r13

loc_8C0F400E:
	mova @(loc_8C0F40B4,pc),r0  ; r0 set to 0x8C0F40B4, r0 set to 0x8C0F40B4, r0 init to 0x8C0F40B4
	bra loc_8C0F4030
	fmov.s @r0,fr3

loc_8C0F4014:
	tst r4,r4
	bt loc_8C0F4026
	mova @(loc_8C0F40B8,pc),r0  ; r0 init to 0x8C0F40B8
	fmov.s @r0,fr2

loc_8C0F401C:
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r14),fr1
	fadd fr2,fr1
	bra loc_8C0F402c
	fmov.s fr1,@r13

loc_8C0F4026:
	fmov.s @(r0,r14),fr2
	fadd fr4,fr2
	fmov.s fr2,@r13

loc_8C0F402C:
	mova @(loc_8C0F40BC,pc),r0  ; r0 init to 0x8C0F40BC, r0 init to 0x8C0F40Bc
	fmov.s @r0,fr3

loc_8C0F4030:
	mov 0x3C,r0 ; r0 set to 0x3C, r0 set to 0x3C, r0 set to 0x3c
	fmov.s @(r0,r14),fr2
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08, r0 set to 0x08
	fadd fr3,fr2
	fmov.s fr2,@(r0,r13)
	mova @(loc_8C0F40C0,pc),r0  ; r0 set to 0x8C0F40C0, r0 set to 0x8C0F40C0, r0 set to 0x8C0F40C0
	fmov.s @r0,fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bf loc_8C0F404c
	mova @(loc_8C0F40C4,pc),r0  ; r0 set to 0x8C0F40C4, r0 set to 0x8C0F40C4, r0 set to 0x8C0F40C4
	bra loc_8C0F4050
	fmov.s @r0,fr2

loc_8C0F404C:
	mova @(loc_8C0F40C8,pc),r0  ; r0 init to 0x8C0F40C8
	fmov.s @r0,fr2

loc_8C0F4050:
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(loc_8C0F40CC,pc),r3 ; r3 set to 0x8C03C870, r3 set to 0x8C03C870
	fmov.s @(r0,r14),fr1
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	mov 0x01,r7 ; r7 set to 0x01, r7 set to 0x01
	fadd fr2,fr1
	mov r7,r6 ; r6 set to 0x01, r6 set to 0x01
	fmov.s fr1,@(r0,r13)
	mov.w @(0x1C,r14),r0
	fmov.s @r13,fr4
	mov r0,r5 ; r5 set to 0x04, r5 set to 0x04
	fmov fr1,fr5 ; r5 ??? bc r1 is ???, r5 ??? bc r1 is ???
	jsr @r3
	mov r14,r4
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
	mov.l @(loc_8C0F40D0,pc),r3 ; r3 set to 0x8C03C952, r3 set to 0x8C03C952
	fmov.s @(r0,r13),fr4
	mov 0x01,r6 ; r6 set to 0x01, r6 set to 0x01
	mov.w @(0x1C,r14),r0
	mov r0,r5 ; r5 set to 0x08, r5 set to 0x08
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C0F40D4,pc),r2 ; r2 set to 0x8C0F66D2, r2 set to 0x8C0F66D2
	jsr @r2
	mov r14,r4
	bra loc_8C0F4190
	nop

loc_8C0F4086:
	bra loc_8C0F4188
	mov 0x00,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C0F408C:
	#data bank16.loc_8c161A7c
loc_8C0F4090:
	#data 0x3F333333
loc_8C0F4094:
	#data 0x8C26823c
loc_8C0F4098:
	#data 0x42480000
loc_8C0F409C:
	#data 0x42F00000
loc_8C0F40A0:
	#data 0x43200000
loc_8C0F40A4:
	#data 0x41F00000
loc_8C0F40A8:
	#data 0xC2480000
loc_8C0F40AC:
	#data 0xC2F00000
loc_8C0F40B0:
	#data 0xC3200000
loc_8C0F40B4:
	#data 0x44480000
loc_8C0F40B8:
	#data 0xC1F00000
loc_8C0F40BC:
	#data 0x447A0000
loc_8C0F40C0:
	#data 0x43160000
loc_8C0F40C4:
	#data 0x42200000
loc_8C0F40C8:
	#data 0xC2200000
loc_8C0F40CC:
	#data bank03.loc_8c03C870
loc_8C0F40D0:
	#data bank03.loc_8c03C952
loc_8C0F40D4:
	#data loc_8c0f66D2

;==============================================
loc_8C0F40D8:
	mov.l @(0x128,PC),r6
	exts.w r4,r5
	mov r6,r3
	add 0x30,r3
	add r3,r5
	mov.b @r5,r2
	tst r2,r2
	bt loc_8c0f4186
	mov 0x21,r0
	mov.b @r5,r3
	mov.w @(0x10E,PC),r6
	mov.b @(r0,r14),r2
	add r3,r6
	extu.b r6,r3
	extu.b r2,r2
	cmp/eq r3,r2
	bf loc_8c0f4186
	mov 0x78,r0
	fmov fr15,@(r0,r14)
	extu.b r6,r5
	mov 0x7C,r0
	mov r5,r3
	fmov fr15,@(r0,r14)
	exts.w r4,r2
	shll r5
	add 0x04,r0
	tst r2,r2
	fmov fr15,@(r0,r14)
	add r3,r5
	bt.s loc_8c0f4146
	shll2 r5
	mova @(0xF0,PC),r0
	mov r5,r3
	fmov @r0,fr4
	mov 0x50,r0
	add r12,r3
	fmov fr4,@(r0,r14)
	mov 0x54,r0
	fmov fr4,@(r0,r14)
	mov 0x58,r0
	fmov fr4,@(r0,r14)
	mova @(0xE0,PC),r0
	fmov @r0,fr4
	mov 0x08,r0
	fmov @(r0,r3),fr3
	mov 0x3C,r0
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr2
	fldi0 fr3
	fcmp/gt fr2,fr3
	bt loc_8c0f4172
	bra loc_8c0f4178
	nop 

loc_8C0F4146:
	mova @(0xC8,PC),r0
	mov r5,r3
	fmov @r0,fr4
	mov 0x50,r0
	add r12,r3
	fmov fr4,@(r0,r14)
	mov 0x54,r0
	fmov fr4,@(r0,r14)
	mov 0x58,r0
	fmov fr4,@(r0,r14)
	mova @(0xB8,PC),r0
	fmov @r0,fr4
	mov 0x08,r0
	fmov @(r0,r3),fr3
	mov 0x3C,r0
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr2
	fldi0 fr3
	fcmp/gt fr2,fr3
	bf loc_8c0f4178

loc_8C0F4172:
	mova @(0xA4,PC),r0
	bra loc_8c0f417c
	fmov @r0,fr4

loc_8C0F4178:
	fldi1 fr4
	fadd fr4,fr4

loc_8C0F417C:
	add r12,r5
	fmov @r5,fr3
	mov 0x34,r0
	fadd fr4,fr3
	fmov fr3,@(r0,r14)

loc_8C0F4186:
	add 0x01,r4

loc_8c0f4188:
	exts.w r4,r3
	mov 0x02,r5
	cmp/ge r5,r3
	bf loc_8c0f40d8

loc_8C0F4190:
	add 0x0C,r15
	lds.l @r15+,pr
	fmov.s @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0F419E:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	cmp/pz r0
	bt loc_8C0F41B8
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0F4200,pc),r0 ; r0 set to 0x12c
	bra loc_8C0F41F4
	mov.b r3,@(r0,r4)

loc_8C0F41B8:
	mov 0x5C,r1 ; r1 set to 0x5c
	mov.l @(loc_8C0F421C,pc),r3 ; r3 set to 0x8C03CB58
	add r4,r1 ; r1 ??? bc r4 is ???
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
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
	jmp @r3
	fmov.s fr2,@(r0,r4)

loc_8C0F41F4:
	rts
	nop

;=============================================
loc_8C0F41F8:
	mov.l @(loc_8C0F4220,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F41fe:
	#data 0x00Ff
loc_8C0F4200:
	#data 0x012c
	#align4

loc_8c0f4204:
	#data 0x8C28C410
loc_8c0f4208:
	#data 0x3F933333
loc_8c0f420c:
	#data 0x40C00000
loc_8c0f4210:
	#data 0x3F99999a
loc_8c0f4214:
	#data 0x41000000
loc_8c0f4218:
	#data 0xC0000000
loc_8C0F421C:
	#data bank03.loc_8c03CB58
loc_8C0F4220:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0F4224:
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r4),r5
	mov.l @(loc_8C0F431C,pc),r0 ; r0 set to 0x8C13B7D4
	extu.b r5,r5
	shll r5
	mov.b @(r0,r5),r5
	extu.b r5,r0 ; r0 ??? bc r5 is ???
	cmp/eq 0x00,r0
	bt loc_8C0F424e
	cmp/eq 0x07,r0
	bt loc_8C0F424e
	cmp/eq 0x01,r0
	bt loc_8C0F4252
	cmp/eq 0x06,r0
	bt loc_8C0F4252
	cmp/eq 0x02,r0
	bt loc_8C0F4256
	cmp/eq 0x05,r0
	bt loc_8C0F4256
	bra loc_8C0F425a
	nop

loc_8C0F424E:
	bra loc_8C0F425c
	mov 0x28,r0

loc_8C0F4252:
	bra loc_8C0F425c
	mov 0x26,r0

loc_8C0F4256:
	bra loc_8C0F425c
	mov 0x24,r0

loc_8c0f425a:
	mov 0x22,r0

loc_8C0F425C:
	rts
	mov.w r0,@(0x1C,r4)

;=============================================
loc_8C0F4260:
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r4),r3
	mov 0x20,r2 ; r2 set to 0x20
	extu.b r3,r3
	cmp/ge r2,r3
	bf loc_8C0F427c
	mov.l @(loc_8C0F4320,pc),r7 ; r7 set to 0x8C28C420
	mov.l @(0x04,r7),r1
	mov.l @(0x0C,r7),r3
	or r3,r1
	mov.l r1,@r6
	mov.b @(r0,r4),r3
	bra loc_8C0F4288
	add 0xE0,r3

loc_8C0F427C:
	mov.l @(loc_8C0F4320,pc),r7 ; r7 set to 0x8C28C420
	mov.l @r7,r1
	mov.l @(0x08,r7),r3
	or r3,r1
	mov.l r1,@r6
	mov.b @(r0,r4),r3

loc_8C0F4288:
	rts
	mov.b r3,@r5

;=============================================
loc_8C0F428C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r15,r6
	add 0x04,r6
	mov r4,r14
	bsr loc_8C0F4260
	mov r15,r5
	mov.b @r15,r2
	mov 0x01,r4 ; r4 set to 0x01
	mov r4,r3 ; r3 set to 0x01
	shad r2, r3 ; r3 ??? bc r2 is ???
	mov.l @(0x04,r15),r2
	tst r2,r3
	bf loc_8C0F42B2
	mov.w @(loc_8C0F431A,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	bra loc_8C0F42B6
	mov.b r3,@(r0,r14)

loc_8C0F42B2:
	mov.w @(loc_8C0F431A,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)

loc_8C0F42B6:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;=============================================
loc_8c0f42be:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r15,r6
	add 0x04,r6
	mov r4,r14
	bsr loc_8c0f4260
	mov r15,r5
	mov.b @r15,r2
	mov 0x01,r3
	shad r2, r3
	mov.l @(0x04,r15),r2
	tst r2,r3
	bf loc_8c0f4312
	mov 0x21,r0
	mov.l @(loc_8c0f4324,pc),r2
	mov.b @(r0,r14),r3
	mova @(loc_8C0F4328,pc),r0
	extu.b r3,r3
	shll2 r3
	shll r3
	add r3,r2
	mov r2,r3
	mov.l r2,@(0x08,r15)
	fmov.s @r0,fr3
	mov 0x04,r0
	fmov.s @(r0,r2),fr5
	mova @(loc_8C0F432C,pc),r0
	fmov.s @r0,fr4
	mov 0x20,r0
	fmov.s @r3,fr2
	fadd fr3,fr5
	mov.b @(r0,r14),r5
	fsub fr2,fr4
	mov.l @(loc_8c0f4330,pc),r3
	extu.b r5,r5
	add 0x0A,r5
	jsr @r3
	mov r14,r4
	mov 0x22,r0
	mov 0x01,r2
	mov.b r2,@(r0,r14)

loc_8c0f4312:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;=============================================
loc_8c0f431a:
	#data 0x012C
	#align4

loc_8c0f431c:
	#data bank13.loc_8C13B7D4
loc_8c0f4320:
	#data 0x8C28C420
loc_8c0f4324:
	#data bank16.loc_8c161d40
loc_8C0F4328:
	#data 0xBE800000
loc_8C0F432C:
	#data 0x3F000000
loc_8c0f4330:
	#data bank03.loc_8c03d21a

;==============================================
loc_8c0f4334:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r15,r6
	add 0x04,r6
	mov r4,r14
	bsr loc_8c0f4260
	mov r15,r5
	mov.b @r15,r2
	mov 0x01,r3
	shad r2,r3
	mov.l @(0x4,r15),r2
	tst r2,r3
	bt loc_8c0f4392
	mov 0x22,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0f4392
	mov 0x21,r0
	mov.l @(0x40,PC),r3
	mov.b @(r0,r14),r1
	mov 0x04,r0
	extu.b r1,r1
	shll2 r1
	shll r1
	add r1,r3
	mov.l r3,@(0x8,r15)
	fmov @(r0,r3),fr3
	mova @(0x30,PC),r0
	fmov @r0,fr2
	mova @(0x30,PC),r0
	fneg fr3
	fmov fr3,fr5
	fadd fr2,fr5
	fmov @r3,fr4
	fmov @r0,fr3
	mov 0x20,r0
	mov.b @(r0,r14),r5
	fadd fr3,fr4
	mov.l @(0x24,PC),r3
	extu.b r5,r5
	add 0x0A,r5
	jsr @r3
	mov r14,r4
	mov 0x22,r0
	mov 0x00,r2
	mov.b r2,@(r0,r14)

loc_8c0f4392:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c0f439c:
	#data bank16.loc_8c161d40
loc_8c0f43a0:
	#data 0x3E800000
loc_8c0f43a4:
	#data 0xBF000000
loc_8c0f43a8:
	#data bank03.loc_8C03D21A

;==============================================
loc_8C0F43AC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.b r4,@r15
	mov r5,r0
	nop
	mov.l @(loc_8C0F4508,pc),r3 ; r3 set to 0x8C044F12
	mov 0x05,r5 ; r5 set to 0x05
	mov.b r0,@(0x04,r15)
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C0F4460
	mov r0,r14
	mov.w @(loc_8C0F44F4,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov 0x21,r1 ; r1 set to 0x21
	mov.b r3,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @r15,r2
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C0F450C,pc),r3 ; r3 set to 0x8C0F4468
	mov 0x00,r4 ; r4 set to 0x00
	mov.b r2,@(r0,r14)
	mov.b @(0x04,r15),r0
	mov.b r0,@r1
	mov.l @(loc_8C0F4510,pc),r1 ; r1 set to 0x8C28C468
	mov.l r3,@(0x10,r14)
	mov.w @(loc_8C0F44F6,pc),r3 ; r3 set to 0x88
	mov.l @r1,r2
	mov.w @(loc_8C0F44F8,pc),r0 ; r0 set to 0xC8
	add r2,r3 ; r3 ??? bc r2 is ???
	mov.l r3,@(r0,r14)
	mov.l @(loc_8C0F4514,pc),r3 ; r3 set to 0x8C26A910
	mov.b @r15,r1 ; r1 ??? bc r15 is ???
	mov.l @r3,r2
	extu.b r1,r1
	mov.w @(loc_8C0F44FA,pc),r0 ; r0 set to 0x25c
	mov.l @r2,r2
	shll r1
	shll2 r1
	add r2,r1
	mov r14,r2
	mov.l @(r0,r1),r1
	mov.w @(loc_8C0F44FC,pc),r0 ; r0 set to 0x84
	mov.l r1,@(r0,r14)
	mov 0x44,r0 ; r0 set to 0x44
	fldi1 fr3
	add 0x40,r2
	mov.l r4,@r2
	mov.l r4,@(r0,r14)
	mov 0x48,r0 ; r0 set to 0x48
	mov.l r4,@(r0,r14)
	mov.w @(loc_8C0F4500,pc),r0 ; r0 set to 0xCc
	mov.w @(loc_8C0F44FE,pc),r2 ; r2 set to 0x4830
	mov.l r2,@(r0,r14)
	mova @(loc_8C0F4518,pc),r0  ; r0 set to 0x8C0F4518
	fmov.s @r0,fr4 ; r4 ??
	mov 0x50,r0 ; r0 set to 0x50
	mov.l @(loc_8C0F451C,pc),r2 ; r2 set to 0x8C108210
	fmov.s fr4,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr4,@(r0,r14)
	mov 0x58,r0 ; r0 set to 0x58
	fmov.s fr4,@(r0,r14)
	mov 0x74,r0 ; r0 set to 0x74
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0F4502,pc),r0 ; r0 set to 0xFf
	mov.b r0,@(0x01,r14)
	add 0x85,r0 ; r0 set to 0x84
	jsr @r2
	mov.l @(r0,r14),r4
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt/s loc_8C0F4450
	mov r14,r4
	mov.w @(loc_8C0F4504,pc),r3 ; r3 set to 0xE000
	mov 0x48,r0 ; r0 set to 0x48
	bra loc_8C0F4456
	mov.l r3,@(r0,r14)

loc_8C0F4450:
	mov.w @(loc_8C0F4506,pc),r1 ; r1 set to 0x2000
	mov 0x48,r0 ; r0 set to 0x48
	mov.l r1,@(r0,r14)

loc_8C0F4456:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0F4520,pc),r3 ; r3 set to 0x8C0F688C, r3 set to 0x8C0F688c
	jmp @r3
	mov.l @r15+,r14

loc_8C0F4460:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0F4468:
	mov r4,r3
	mov.l @(loc_8C0F4524,pc),r1 ; r1 set to 0x8C16202c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0F447A:
	mova @(0xAC,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	fmov @r0,fr4
	mov 0x50,r0
	fmov @(r0,r14),fr3
	fsub fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r14),fr2
	fsub fr4,fr2
	fmov fr2,@(r0,r14)
	mov 0x58,r0
	fmov @(r0,r14),fr3
	fsub fr4,fr3
	fldi1 fr4
	fmov fr3,@(r0,r14)
	mov 0x50,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr4,fr2
	bt.s loc_8c0f44ba
	mov r14,r4
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov 0x50,r0
	fmov fr4,@(r0,r14)
	mov 0x54,r0
	fmov fr4,@(r0,r14)
	mov 0x58,r0
	fmov fr4,@(r0,r14)

loc_8C0F44BA:
	bsr loc_8c0f44c6
	nop 
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0f45b4
	mov.l @r15+,r14

loc_8C0F44C6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8C0F4604
	mov r4,r14
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(loc_8C0F452C,pc),r5 ; r5 set to 0x8C28C410
	mov.b @(r0,r14),r2
	mov 0x21,r0 ; r0 set to 0x21
	mov r5,r3 ; r3 set to 0x8C28C410
	add 0x02,r3 ; r3 set to 0x8C28C412
	extu.b r2,r2
	add r3,r2
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	mov.b @r2,r1
	mov 0x01,r2 ; r2 set to 0x01
	extu.b r3,r3
	shad r3, r2 ; r2 ??? bc r3 is ???
	extu.b r1,r1
	tst r2,r1
	bt loc_8C0F4530
	mov 0x02,r0 ; r0 set to 0x02
	bra loc_8C0F4564
	mov.b r0,@(0x04,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F44F4:
	#data 0x012c
loc_8C0F44F6:
	#data 0x0088
loc_8C0F44F8:
	#data 0x00C8
loc_8C0F44FA:
	#data 0x025c
loc_8C0F44FC:
	#data 0x0084
loc_8C0F44FE:
	#data 0x4830
loc_8C0F4500:
	#data 0x00Cc
loc_8C0F4502:
	#data 0x00Ff
loc_8C0F4504:
	#data 0xE000
loc_8C0F4506:
	#data 0x2000
	#align4

loc_8C0F4508:
	#data bank04.loc_8c044F12
loc_8C0F450C:
	#data loc_8c0f4468
loc_8C0F4510:
	#data 0x8C28C468
loc_8C0F4514:
	#data 0x8C26A910
loc_8C0F4518:
	#data 0x3F99999a
loc_8C0F451C:
	#data bank10.loc_8c108210
loc_8C0F4520:
	#data loc_8c0f688c
loc_8C0F4524:
	#data bank16.loc_8c16202c
loc_8C0F4528:
	#data 0x3D23D70a
loc_8C0F452C:
	#data 0x8C28C410

;==============================================
loc_8c0f4530:
	mov 0x20,r0
	mov.w @(loc_8C0F4652,pc),r3
	mov.b @(r0,r14),r4
	mov.l @(loc_8C0F4660,pc),r0
	extu.b r4,r4
	mulu.w r3,r4
	sts macl,r4
	mov.l @(r0,r4),r4
	mov.w @(loc_8C0F4654,pc),r0
	mov.b @(r0,r4),r2
	mov.b @(0x01,r14),r0
	extu.b r0,r0
	cmp/eq r0,r2
	bt loc_8c0f4564
	mov.w @(loc_8C0F4654,pc),r0
	mov r5,r1
	add 0x30,r1
	mov.b @(r0,r4),r0
	mov.b r0,@(0x01,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov.b @(0x01,r14),r0
	extu.b r2,r2
	add 0x01,r0
	add r1,r2
	mov.b r0,@r2

loc_8C0F4564:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0F45B4
	mov.l @r15+,r14

loc_8C0F456C:
	mova @(loc_8C0F4664,pc),r0  ; r0 init to 0x8C0F4664
	mov.l @(loc_8C0F4668,pc),r1 ; r1 set to 0x3D4CCCCd
	fmov.s @r0,fr4
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r4),fr3
	lds r1,fpul
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r4),fr2
	fsts fpul,fr3
	fadd fr4,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x74,r0 ; r0 set to 0x74
	fmov.s @(r0,r4),fr2
	fsub fr3,fr2
	fmov.s fr2,@(r0,r4)
	fmov.s @(r0,r4),fr1 ; r1 ??? bc r4 is ???
	fldi0 fr2
	fcmp/gt fr2,fr1
	bt loc_8C0F45A6
	fmov.s fr2,@(r0,r4)
	mov 0x00,r3 ; r3 set to 0x00
	mov.b @(0x04,r4),r0
	add 0x01,r0 ; r0 set to 0x75
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0F4656,pc),r0 ; r0 set to 0x12c
	bra loc_8C0F45Aa
	mov.b r3,@(r0,r4)

loc_8C0F45A6:
	bra loc_8C0F45B4
	nop

loc_8C0F45AA:
	rts
	nop

;=============================================
loc_8C0F45AE:
	mov.l @(loc_8C0F466C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;=============================================
loc_8C0F45B4:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(loc_8C0F4670,pc),r3 ; r3 set to 0x8C120950
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @(loc_8C0F4674,pc),r2 ; r2 set to 0x8C1201E0
	mov.w @(loc_8C0F4658,pc),r4 ; r4 set to 0x88
	jsr @r2
	add r14,r4 ; r4 ??? bc r14 is ???
	mov.l @(loc_8C0F4678,pc),r3 ; r3 set to 0x8C121100
	jsr @r3
	nop
	mov.l @(loc_8C0F467C,pc),r2 ; r2 set to 0x8C1210E0
	mov r14,r4
	jsr @r2
	add 0x34,r4
	mov 0x48,r0 ; r0 set to 0x48
	mov.l @(loc_8C0F4680,pc),r5 ; r5 set to 0x8C161A7c
	mov.l @(r0,r14),r6
	mov r14,r4
	mov.b @(0x01,r14),r0
	mov.l @(loc_8C0F4684,pc),r2 ; r2 set to 0x8C02DBD6
	extu.b r0,r0 ; r0 set to 0x48
	mov r0,r3 ; r3 set to 0x48
	shll r0 ; r0 set to 0x90
	add r3,r0 ; r0 set to 0xD8
	shll2 r0 ; r0 set to 0x360
	add r0,r5 ; r5 set to 0x8C161DDc
	jsr @r2
	add 0x34,r4
	mov.l @(loc_8C0F4688,pc),r3 ; r3 set to 0x8C11FA80
	mov.w @(loc_8C0F4658,pc),r4 ; r4 set to 0x88
	jsr @r3
	add r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	mov.l @(loc_8C0F468C,pc),r2 ; r2 set to 0x8C120900
	mov 0x01,r4 ; r4 set to 0x01
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c0f4604:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.w @(0x1C,r14),r0
	mov 0x32,r3
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8c0f4626
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)

loc_8c0f4626:
	mov.w @(loc_8C0F465A,pc),r0
	mov.l @(loc_8C0F4690,pc),r3
	mov.l @(r0,r14),r5
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov.w @(loc_8C0F465C,pc),r1
	extu.b r2,r2
	mov.l @r3,r4
	shll r2
	mov.l @(loc_8c0f4694,pc),r3
	mov.l @r4,r4
	add r1,r2
	shll2 r2
	add r2,r4
	jsr @r3
	mov.l @(0x04,r4),r4
	mov.l @(loc_8c0f46a0,pc),r13
	mova @(loc_8C0F46A4,pc),r0
	mov.l @(loc_8c0f469c,pc),r12
	mov.l @(loc_8c0f4698,pc),r11
	bra loc_8c0f46c8
	fmov.s @r0,fr15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f4652:
	#data 0x05A4
loc_8c0f4654:
	#data 0x052C
loc_8c0f4656:
	#data 0x012C
loc_8c0f4658:
	#data 0x0088
loc_8C0F465A:
	#data 0x0084
loc_8C0F465C:
	#data 0x0097
	#align4

loc_8c0f4660:
	#data 0x8C268358
loc_8c0f4664:
	#data 0x3C23D70A
loc_8c0f4668:
	#data 0x3D4CCCCD
loc_8c0f466c:
	#data bank04.loc_8c0450c0
loc_8c0f4670:
	#data bank12.loc_8c120950
loc_8c0f4674:
	#data bank11.loc_8c1201e0
loc_8c0f4678:
	#data bank12.loc_8c121100
loc_8c0f467c:
	#data bank12.loc_8c1210e0
loc_8c0f4680:
	#data bank16.loc_8c161a7c
loc_8c0f4684:
	#data bank02.loc_8c02dbd6
loc_8c0f4688:
	#data bank11.loc_8c11fa80
loc_8c0f468c:
	#data bank12.loc_8c120900
loc_8C0F4690:
	#data 0x8C26A910
loc_8c0f4694:
	#data bank10.loc_8c108060
loc_8c0f4698:
	#data bank10.loc_8c1081e6
loc_8c0f469c:
	#data bank10.loc_8c108086
loc_8c0f46a0:
	#data bank10.loc_8c108192
loc_8C0F46A4:
	#data 0x3CA3D70A

;==============================================
loc_8c0f46a8:
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

loc_8c0f46c8:
	jsr @r12
	nop
	tst r0,r0
	bt loc_8c0f46a8
	add 0x08,r15
	lds.l @r15+,pr
	fmov.s @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8C0F46E0:
	mov.w @(loc_8C0F4794,pc),r0 ; r0 set to 0x524
	mov.l @(0x18,r4),r5
	mov.b @(r0,r4),r3
	add 0x08,r0 ; r0 set to 0x52c
	mov.l @(loc_8C0F479C,pc),r6 ; r6 set to 0x8C28C410
	mov.b @(r0,r5),r1
	add 0xF8,r0 ; r0 set to 0x524
	mov r6,r2 ; r2 set to 0x8C28C410
	mov.l @(loc_8C0F4798,pc),r7 ; r7 set to 0x8C13B7D4
	shll r1
	add 0x04,r2 ; r2 set to 0x8C28C414
	add r7,r1
	add r2,r3
	mov.b @r1,r2 ; r2 ??? bc r1 is ???
	mov.b r2,@r3
	mov r6,r2 ; r2 set to 0x8C28C410
	mov.b @(r0,r4),r3
	add 0x08,r0 ; r0 set to 0x52c
	mov.b @(r0,r5),r1
	add 0x06,r2 ; r2 set to 0x8C28C416
	add r2,r3
	shll r1
	add r1,r7 ; r7 ??? bc r1 is ???
	mov.b @(0x01,r7),r0
	rts
	mov.b r0,@r3

;=============================================
loc_8C0F4714:
	mov.l @(0x84,PC),r6
	extu.b r4,r5
	mov 0x08,r7
	mov r6,r3
	add 0x06,r3
	add r5,r3
	mov.b @r3,r2
	cmp/ge r7,r2
	bf.s loc_8c0f4732
	mov 0x07,r4
	mov r6,r2
	add 0x06,r2
	mov 0x00,r3
	add r5,r2
	mov.b r3,@r2

loc_8C0F4732:
	mov r6,r2
	add 0x06,r2
	add r5,r2
	mov.b @r2,r3
	cmp/pz r3
	bt loc_8c0f4746
	mov r6,r3
	add 0x06,r3
	add r5,r3
	mov.b r4,@r3

loc_8C0F4746:
	mov r6,r2
	add 0x04,r2
	add r5,r2
	mov.b @r2,r3
	cmp/ge r7,r3
	bf loc_8c0f475c
	mov r6,r3
	add 0x04,r3
	mov 0x00,r2
	add r5,r3
	mov.b r2,@r3

loc_8C0F475C:
	mov r6,r3
	add 0x04,r3
	add r5,r3
	mov.b @r3,r2
	cmp/pz r2
	bt loc_8c0f4770
	mov r6,r2
	add 0x04,r2
	add r2,r5
	mov.b r4,@r5

loc_8C0F4770:
	rts
	nop

;==============================================================================
;char select id highlight
;=============================================
loc_8C0F4774:
	mov.l @(loc_8C0F479C,pc),r5 ; r5 set to 0x8C28C410
	extu.b r4,r6
	mov r5,r0 ; r0 set to 0x8C28C410
	nop
	mov r5,r3 ; r3 set to 0x8C28C410
	add 0x06,r0 ; r0 set to 0x8C28C416
	add 0x04,r3 ; r3 set to 0x8C28C414
	mov.b @(r0,r6),r0 ; r0 ??? bc r6 is ???
	add r6,r3 ; r3 ??? bc r6 is ???
	mov.b @r3,r2
	shll2 r0
	mov.l @(loc_8C0F47A0,pc),r3 ; r3 set to 0x8C161FEc
	shll r0
	add r3,r0
	rts
	mov.b @(r0,r2),r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F4794:
	#data 0x0524
	#align4

loc_8C0F4798:
	#data bank13.loc_8c13b7D4
loc_8C0F479C:
	#data 0x8C28C410
loc_8C0F47A0:
	#data bank16.loc_8c161FEc

;==============================================
loc_8C0F47A4:
	mov.l r14,@-r15
	mov 0x05,r5 ; r5 set to 0x05
	sts.l pr,@-r15
	mov.l @(loc_8C0F48E0,pc),r3 ; r3 set to 0x8C044F12
	mov r4,r14
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C0F4840
	mov r0,r4 ; r4 ??? bc r0 is ???
	mov.w @(loc_8C0F48D6,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8C0F48E8,pc),r1 ; r1 set to 0x8C26A910
	mov.b r3,@(r0,r4)
	mov.w @(loc_8C0F48D8,pc),r0 ; r0 set to 0x524
	mov.l r14,@(0x18,r4)
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	mov 0x20,r0 ; r0 set to 0x20
	mov.b r3,@(r0,r4)
	mov.w @(0x1E,r14),r0
	mov.l @(loc_8C0F48E4,pc),r3 ; r3 set to 0x8C0F4846
	mov r0,r2 ; r2 set to 0x20
	mov 0x21,r0 ; r0 set to 0x21
	mov.b r2,@(r0,r4)
	mov 0x20,r0 ; r0 set to 0x20
	mov.l r3,@(0x10,r4)
	mov.b @(r0,r4),r3 ; r3 ??? bc r4 is ???
	add 0x64,r0 ; r0 set to 0x84
	mov.l @r1,r2 ; r2 ??
	extu.b r3,r3
	mov.l @r2,r2
	shll2 r3
	add r2,r3
	mov.l @(0x10,r3),r3
	mov.l r3,@(r0,r4)
	mov.w @(loc_8C0F48D8,pc),r0 ; r0 set to 0x524
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8C0F4800
	mova @(loc_8C0F48EC,pc),r0  ; r0 set to 0x8C0F48Ec
	mov.w @(loc_8C0F48DA,pc),r3 ; r3 set to 0x11C7
	fmov.s @r0,fr3 ; r3 ??
	mov 0x34,r0 ; r0 set to 0x34
	bra loc_8C0F480a
	fmov.s fr3,@(r0,r4)

loc_8c0f4800:
	mova @(loc_8C0F48F0,pc),r0
	mov.l @(loc_8C0F48F4,pc),r3
	fmov.s @r0,fr3
	mov 0x34,r0
	fmov.s fr3,@(r0,r4)

loc_8c0f480a:
	mov 0x48,r0
	mov.l @(loc_8C0F4900,pc),r2
	mov.l r3,@(r0,r4)
	mova @(loc_8C0F48F8,pc),r0
	fmov.s @r0,fr3
	mov 0x38,r0
	mov r4,r3
	add 0x40,r3
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C0F48FC,pc),r0
	fmov.s @r0,fr3
	mov 0x3C,r0
	fldi1 fr4
	fmov.s fr3,@(r0,r4)
	mov 0x44,r0
	mov.l r2,@r3
	mov 0x00,r3
	mov.l r3,@(r0,r4)
	mov 0x50,r0
	fmov.s fr4,@(r0,r4)
	mov 0x54,r0
	fmov.s fr4,@(r0,r4)
	mov 0x58,r0
	mov.w @(loc_8C0F48DC,pc),r3
	fmov.s fr4,@(r0,r4)
	add 0x74,r0
	mov.l r3,@(r0,r4)

loc_8C0F4840:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0F4846:
	mov r4,r3
	mov.l @(loc_8C0F4904,pc),r1 ; r1 set to 0x8C16203c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0F4858:
	mov 0x20,r0
	mov.b @(r0,r4),r3
	mov 0x01,r1
	mov.l @(0xA8,PC),r0
	extu.b r3,r3
	mov.b @(r0,r3),r2
	mov 0x21,r0
	mov.b @(r0,r4),r3
	extu.b r2,r2
	extu.b r3,r3
	shad r3,r1
	tst r1,r2
	bt loc_8c0f4878
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)

loc_8C0F4878:
	rts
	nop

;=============================================
loc_8C0F487C:
	mova @(0x8C,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	fmov @(r0,r4),fr2
	fadd fr4,fr2
	fmov fr2,@(r0,r4)
	mova @(0x7C,PC),r0
	fmov @r0,fr3
	mov 0x50,r0
	fmov @(r0,r4),fr2
	fcmp/gt fr2,fr3
	bt loc_8c0f48a2
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)

loc_8C0F48A2:
	rts
	nop

;=============================================
loc_8C0F48A6:
	mova @(0x64,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov @(r0,r4),fr3
	fsub fr4,fr3
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	fmov @(r0,r4),fr2
	fsub fr4,fr2
	fldi1 fr4
	fmov fr2,@(r0,r4)
	mov 0x50,r0
	fmov @(r0,r4),fr3
	fcmp/gt fr4,fr3
	bt loc_8c0f48d2
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	mov 0x50,r0
	fmov fr4,@(r0,r4)
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)

loc_8C0F48D2:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F48D6:
	#data 0x012c
loc_8C0F48D8:
	#data 0x0524
loc_8C0F48DA:
	#data 0x11C7
loc_8c0f48dc:
	#data 0x081b
	#align4

loc_8C0F48E0:
	#data bank04.loc_8c044F12
loc_8C0F48E4:
	#data loc_8c0f4846
loc_8C0F48E8:
	#data 0x8C26A910
loc_8C0F48EC:
	#data 0x43120000
loc_8c0f48f0:
	#data 0xC3120000
loc_8c0f48f4:
	#data 0x0000EE3a
loc_8c0f48f8:
	#data 0x42100000
loc_8c0f48fc:
	#data 0x43820000
loc_8c0f4900:
	#data 0x0000D556
loc_8C0F4904:
	#data bank16.loc_8c16203c
loc_8C0F4908:
	#data 0x8C28C412
loc_8C0F490c:
	#data 0x3DCCCCCd
loc_8C0F4910:
	#data 0x3FA66666

;==============================================
loc_8C0F4914:
	mov 0x20,r0
	mov.l @(0x44,PC),r5
	mov.b @(r0,r4),r3
	mov 0x21,r0
	mov r5,r2
	add 0x02,r2
	extu.b r3,r3
	add r2,r3
	mov.b @r3,r1
	mov 0x10,r2
	mov.b @(r0,r4),r3
	extu.b r1,r1
	extu.b r3,r3
	shad r3,r2
	tst r2,r1
	bt loc_8c0f494e
	mov 0x20,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c0f494e
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0xA,PC),r0
	mov.b r3,@(r0,r4)

loc_8C0F494E:
	rts
	nop

;=============================================
loc_8C0F4952:
	mov.l @(loc_8C0F4960,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f4958:
	#data 0x012c
	#align4

loc_8c0f495c:
	#data 0x8C28C410
loc_8C0F4960:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0F4964:
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r0
	nop 
	mov.l @(0x13C,PC),r3
	mov 0x01,r6
	mov.b r0,@(0x4,r15)
	mov.l r5,@r15
	mov 0x05,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0f49a8
	mov r0,r4
	mov.w @(0x118,PC),r0
	mov 0x00,r5
	mov 0x20,r1
	mov.l @(0x128,PC),r3
	mov.b r5,@(r0,r4)
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov r5,r0
	nop 
	mov.w r0,@(0x1C,r4)
	mov 0x21,r0
	mov 0x02,r3
	mov.b r3,@(r0,r4)
	mov.w @(0xFC,PC),r0
	mov.l r5,@(r0,r4)
	mov.w @(0xFA,PC),r0
	mov.l @r15,r3
	mov.l r3,@(r0,r4)

loc_8C0F49A8:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;=============================================
loc_8C0F49B0:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xF4,PC),r3
	mov 0x05,r5
	mov.b r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0f49e4
	mov r0,r4
	mov.w @(0xD2,PC),r0
	mov 0x00,r5
	mov.l @(0xE8,PC),r3
	mov.b r5,@(r0,r4)
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.b @r15,r2
	mov.b r2,@(r0,r4)
	mov r5,r0
	nop 
	mov.w r0,@(0x1C,r4)
	mov 0x21,r0
	mov.b r5,@(r0,r4)
	mov.w @(0xBA,PC),r0
	mov.l r5,@(r0,r4)

loc_8C0F49E4:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;=============================================
loc_8C0F49EC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b r5,@r15
	mov 0x05,r5 ; r5 set to 0x05
	mov.l @(loc_8C0F4AAC,pc),r3 ; r3 set to 0x8C044F12
	mov r4,r14
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bf/s loc_8C0F4A0a
	mov r0,r4 ; r4 ??? bc r0 is ???
	bra loc_8C0F4B7e
	nop

loc_8C0F4A0A:
	mov.w @(loc_8C0F4A9C,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8C0F4AB8,pc),r1 ; r1 set to 0x8C268340
	mov.b r3,@(r0,r4)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r2
	mov.b r2,@(r0,r4)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	mov.b r3,@(r0,r4)
	mov.b @(r0,r14),r2
	mov.w @(loc_8C0F4AA2,pc),r0 ; r0 set to 0xD0
	extu.b r2,r2
	mov.l r2,@(r0,r4)
	mov 0x21,r0 ; r0 set to 0x21
	mov.l r14,@(0x18,r4)
	mov.b @(r0,r4),r3
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r2
	extu.b r3,r3
	extu.b r2,r2
	shll r3
	add r2,r3
	mov.w @(loc_8C0F4AA4,pc),r2 ; r2 set to 0x5A4
	mul.l r2,r3
	sts macl,r3
	add r1,r3
	mov.l r3,@(0x14,r4)
	mov.l @(loc_8C0F4ABC,pc),r3 ; r3 set to 0x8C26A910
	mov.b @(r0,r4),r1 ; r1 ??? bc r4 is ???
	mov.l @r3,r2 ; r2 ??
	extu.b r1,r1
	mov r1,r3 ; r3 ??? bc r1 is ???
	shll r1
	mov 0x21,r0 ; r0 set to 0x21
	mov.l @(loc_8C0F4AC0,pc),r5 ; r5 set to 0x8C162050
	add r3,r1
	mov.b @(r0,r4),r3
	mov.w @(loc_8C0F4AA6,pc),r0 ; r0 set to 0x118
	extu.b r3,r3
	add r3,r1
	mov.l @r2,r3
	shll2 r1
	add r3,r1
	mov.l @(r0,r1),r2
	mov 0x6C,r3 ; r3 set to 0x6c
	mov.w @(loc_8C0F4AA8,pc),r0 ; r0 set to 0x84
	mov.l r2,@(r0,r4)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r2
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r4),r1
	extu.b r2,r2
	mulu.w r3,r2
	extu.b r1,r1
	mov r1,r3 ; r3 ??? bc r1 is ???
	shll r1
	add r3,r1
	sts macl,r2
	shll2 r1
	add r5,r2
	add r1,r2
	mov r4,r1
	add 0x34,r1
	mov.l @(loc_8C0F4AC4,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.b @r15,r1
	tst r1,r1
	bt loc_8C0F4ACc
	mov.l @(loc_8C0F4AC8,pc),r1 ; r1 set to 0x8C0F5312
	bra loc_8C0F4B16
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F4A9C:
	#data 0x012c
loc_8C0F4A9e:
	#data 0x00D8
loc_8C0F4AA0:
	#data 0x00D4
loc_8C0F4AA2:
	#data 0x00D0
loc_8C0F4AA4:
	#data 0x05A4
loc_8C0F4AA6:
	#data 0x0118
loc_8C0F4AA8:
	#data 0x0084
	#align4

loc_8C0F4AAC:
	#data bank04.loc_8c044F12
loc_8C0F4AB0:
	#data loc_8c0f4B86
loc_8C0F4AB4:
	#data loc_8c0f4D88
loc_8C0F4AB8:
	#data 0x8C268340
loc_8C0F4ABC:
	#data 0x8C26A910
loc_8C0F4AC0:
	#data bank16.loc_8c162050
loc_8C0F4AC4:
	#data bank12.loc_8c1294C8
loc_8C0F4AC8:
	#data loc_8c0f5312

;==============================================
loc_8c0f4acc:
	mov.w @(loc_8C0F4BF6,pc),r0
	mov.l @(r0,r14),r2
	tst r2,r2
	bf loc_8c0f4ae4
	mov 0x20,r0
	mov.l @(loc_8c0f4c00,pc),r1
	mov.b @(r0,r4),r0
	extu.b r0,r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x77,r0
	bf loc_8c0f4b14

loc_8c0f4ae4:
	mov 0x21,r0
	mov.l @(loc_8c0f4c04,pc),r3
	mov.b @(r0,r4),r6
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov 0x6C,r3
	mov.b @(r0,r4),r2
	add 0xFE,r6
	neg r6,r6
	extu.b r2,r2
	mulu.w r3,r2
	exts.b r6,r6
	mov.l @(loc_8c0f4c08,pc),r3
	mov r6,r1
	shll r6
	add r1,r6
	mov r4,r1
	sts macl,r2
	shll2 r6
	add 0x34,r1
	add r5,r2
	add r6,r2
	jsr @r3
	mov 0x0C,r0

loc_8c0f4b14:
	mov.l @(loc_8c0f4c0c,pc),r1

loc_8C0F4B16:
	mov 0x20,r0 ; r0 set to 0x20
	mov.l r1,@(0x10,r4)
	mov.b @(r0,r4),r2
	mov r4,r3
	mov.l @(loc_8C0F4C10,pc),r5 ; r5 set to 0x8C162128
	add 0x40,r3
	extu.b r2,r2
	mov r2,r1
	shll r2
	add r1,r2
	shll2 r2
	add r5,r2
	mov.l @r2,r2
	mov.l r2,@r3
	mov.b @(r0,r4),r3
	mov 0x44,r0 ; r0 set to 0x44
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	add r5,r3
	mov.l @(0x04,r3),r1
	mov.l r1,@(r0,r4)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r3
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	add r3,r5 ; r5 ??? bc r3 is ???
	mov.l @(0x08,r5),r3
	mov 0x48,r0 ; r0 set to 0x48
	mov.w @(loc_8C0F4BF8,pc),r2 ; r2 set to 0x81f
	mov 0x00,r5 ; r5 set to 0x00
	mov.l r3,@(r0,r4)
	mov.w @(loc_8C0F4BFA,pc),r0 ; r0 set to 0xCc
	fldi1 fr4
	mov.l r2,@(r0,r4)
	mova @(loc_8C0F4C14,pc),r0  ; r0 set to 0x8C0F4C14
	fmov.s @r0,fr3
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr4,@(r0,r4)
	mov 0x58,r0 ; r0 set to 0x58
	fmov.s fr4,@(r0,r4)
	mov.w @(loc_8C0F4BFC,pc),r0 ; r0 set to 0xD8
	mov.l r5,@(r0,r4)
	mov 0x23,r0 ; r0 set to 0x23
	mov.b r5,@(r0,r4)

loc_8C0F4B7E:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0F4B86:
	mov r4,r3
	mov.l @(loc_8C0F4C18,pc),r1 ; r1 set to 0x8C162140
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0F4B98:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/pl r0
	bt loc_8c0f4bc2
	mov.b @(0x4,r14),r0
	mov 0x00,r5
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov 0x05,r0
	mov.w r0,@(0x1C,r14)
	bsr loc_8c0f49ec
	mov r14,r4
	mov 0x21,r0
	mov.b @(r0,r14),r2
	add 0xFF,r2
	mov.b r2,@(r0,r14)

loc_8C0F4BC2:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0F4BC8:
	mov r4,r3
	mov.l @(loc_8C0F4C1C,pc),r1 ; r1 set to 0x8C162154
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0F4BDA:
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(loc_8C0F4C00,pc),r1 ; r1 set to 0x8C28C412
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	extu.b r0,r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x77,r0
	bf loc_8C0F4BEe
	bra loc_8C0F4BF2
	mov 0x06,r0

loc_8C0F4BEE:
	mov.b @(0x05,r4),r0
	add 0x01,r0

loc_8C0F4BF2:
	rts
	mov.b r0,@(0x05,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f4bf6:
	#data 0x00D4
loc_8C0F4BF8:
	#data 0x081f
loc_8C0F4BFA:
	#data 0x00Cc
loc_8C0F4BFC:
	#data 0x00D8
	#align4

loc_8C0F4C00:
	#data 0x8C28C412
loc_8C0F4C04:
	#data loc_8c0f5312
loc_8C0F4C08:
	#data bank12.loc_8c1294C8
loc_8C0F4C0C:
	#data loc_8c0f4DC2
loc_8C0F4C10:
	#data bank16.loc_8c162128
loc_8C0F4C14:
	#data 0x3DCCCCCd
loc_8C0F4C18:
	#data bank16.loc_8c162140
loc_8C0F4C1C:
	#data bank16.loc_8c162154

;==============================================
loc_8C0F4C20:
	mov 0x20,r0
	mov.w @(0x118,PC),r2
	mov.b @(r0,r4),r3
	mov.l @(0x118,PC),r0
	extu.b r3,r3
	mulu.w r2,r3
	sts macl,r3
	mov.w @(r0,r3),r1
	tst r1,r1
	bf loc_8c0f4c68
	mov 0x20,r0
	mov.l @(0x10C,PC),r5
	mov.b @(r0,r4),r0
	mov r5,r3
	add 0x02,r3
	extu.b r0,r0
	mov.b @(r0,r3),r0
	extu.b r0,r0
	tst 0x10,r0
	bt loc_8c0f4c68
	mov.b @(0x5,r4),r0
	mov 0x00,r3
	mov 0x01,r1
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov 0x22,r0
	mov.b r3,@(r0,r4)
	mov 0x20,r3
	add r4,r3
	mov.b @r3,r3
	mov 0x36,r0
	extu.b r3,r3
	shad r3,r1
	mov.b @(r0,r5),r3
	or r1,r3
	mov.b r3,@(r0,r5)

loc_8C0F4C68:
	rts
	nop

;=============================================
loc_8C0F4C6C:
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	extu.b r0,r0
	cmp/eq 0x07,r0
	bf loc_8C0F4CA2
	mov.b @(0x05,r4),r0
	mov 0x03,r1 ; r1 set to 0x03
	mov.l @(loc_8C0F4D44,pc),r5 ; r5 set to 0x8C28C410
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r3
	mov r5,r2 ; r2 set to 0x8C28C410
	extu.b r3,r3
	add r2,r3
	mov.b r1,@r3
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8C0F4C98
	mov 0x36,r0 ; r0 set to 0x36
	bra loc_8C0F4C9c
	mov 0x0D,r3

loc_8c0f4c98:
	mov 0x0E,r3
	mov 0x36,r0

loc_8c0f4c9c:
	mov.b @(r0,r5),r2
	and r3,r2
	mov.b r2,@(r0,r5)

loc_8C0F4CA2:
	rts
	nop

;=============================================
loc_8C0F4CA6:
	mov 0x20,r0
	mov.w @(0x92,PC),r3
	mov.b @(r0,r4),r0
	mov.l @(0x90,PC),r1
	extu.b r0,r0
	mulu.w r3,r0
	sts macl,r0
	mov.w @(r0,r1),r0
	cmp/eq 0x01,r0
	bf loc_8c0f4cee
	mov 0x20,r0
	mov.l @(0x84,PC),r5
	mov.b @(r0,r4),r0
	mov r5,r3
	add 0x02,r3
	extu.b r0,r0
	mov.b @(r0,r3),r0
	extu.b r0,r0
	tst 0x20,r0
	bt loc_8c0f4cee
	mov.b @(0x5,r4),r0
	mov 0x00,r3
	mov 0x01,r2
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov 0x22,r0
	mov.b r3,@(r0,r4)
	mov 0x20,r3
	add r4,r3
	mov.b @r3,r3
	mov 0x36,r0
	extu.b r3,r3
	shad r3,r2
	mov.b @(r0,r5),r3
	or r2,r3
	mov.b r3,@(r0,r5)

loc_8C0F4CEE:
	rts
	nop

;=============================================
loc_8C0F4CF2:
	mov 0x20,r0
	mov.w @(0x46,PC),r3
	mov.b @(r0,r4),r0
	mov.l @(0x44,PC),r1
	extu.b r0,r0
	mulu.w r3,r0
	sts macl,r0
	mov.w @(r0,r1),r0
	cmp/eq 0x02,r0
	bf loc_8c0f4d3a
	mov 0x20,r0
	mov.l @(0x38,PC),r5
	mov.b @(r0,r4),r0
	mov r5,r3
	add 0x02,r3
	extu.b r0,r0
	mov.b @(r0,r3),r0
	extu.b r0,r0
	tst 0x40,r0
	bt loc_8c0f4d3a
	mov.b @(0x5,r4),r0
	mov 0x00,r3
	mov 0x01,r2
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov 0x22,r0
	mov.b r3,@(r0,r4)
	mov 0x20,r3
	add r4,r3
	mov.b @r3,r3
	mov 0x36,r0
	extu.b r3,r3
	shad r3,r2
	mov.b @(r0,r5),r3
	or r2,r3
	mov.b r3,@(r0,r5)

loc_8C0F4D3A:
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f4d3e:
	#data 0x05a4
	#align4

loc_8c0f4d40:
	#data 0x8C26835e
loc_8C0F4D44:
	#data 0x8C28C410

;==============================================
loc_8C0F4D48:
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	extu.b r0,r0
	cmp/eq 0x07,r0
	bf loc_8C0F4D7e
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(loc_8C0F4EA0,pc),r5 ; r5 set to 0x8C28C410
	mov.b @(r0,r4),r2
	mov 0x04,r0 ; r0 set to 0x04
	mov r5,r3 ; r3 set to 0x8C28C410
	mov 0x03,r1 ; r1 set to 0x03
	extu.b r2,r2
	add r3,r2
	mov.b r1,@r2
	mov.b r0,@(0x04,r4)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r3 ; r3 ??? bc r4 is ???
	tst r3,r3
	bt loc_8C0F4D74
	mov 0x36,r0 ; r0 set to 0x36
	bra loc_8C0F4D78
	mov 0x0D,r3

loc_8c0f4d74:
	mov 0x0E,r3
	mov 0x36,r0

loc_8c0f4d78:
	mov.b @(r0,r5),r2
	and r3,r2
	mov.b r2,@(r0,r5)

loc_8C0F4D7E:
	rts
	nop

;=============================================
loc_8C0F4D82:
	mov.l @(loc_8C0F4EA4,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;=============================================
loc_8C0F4D88:
	mov r4,r3
	mov.l @(loc_8C0F4EA8,pc),r1 ; r1 set to 0x8C162170
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;=============================================
loc_8C0F4D9A:
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	bra loc_8C0F49Ec
	mov 0x01,r5
	
;==============================================
loc_8C0F4DA4:
	mov 0x22,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c0f4dbe
	mov.b @(0x4,r4),r0
	mov 0x03,r2
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r3
	mov.l @(0xE4,PC),r0
	extu.b r3,r3
	mov.b r2,@(r0,r3)

loc_8C0F4DBE:
	rts
	nop

;=============================================
loc_8C0F4DC2:
	mov r4,r3
	mov.l @(loc_8C0F4EAC,pc),r1 ; r1 set to 0x8C16217c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;=============================================
loc_8C0F4DD4:
	mov.l @(loc_8C0F4EB0,pc),r1 ; r1 set to 0x3DCCCCCd
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r4),fr2
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	fmov.s @(r0,r4),fr1 ; r1 ??? bc r4 is ???
	fldi1 fr2
	fcmp/gt fr1,fr2
	bt loc_8C0F4E0a
	mov.b @(0x04,r4),r0
	add 0x01,r0 ; r0 set to 0x51
	mov.b r0,@(0x04,r4)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8C0F4E0a
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r1
	mov 0x00,r3 ; r3 set to 0x00
	mov.l @(loc_8C0F4EA0,pc),r0 ; r0 set to 0x8C28C410
	extu.b r1,r1
	mov.b r3,@(r0,r1)
	mov.l @(loc_8C0F4EB4,pc),r3 ; r3 set to 0x8C04257c
	jmp @r3
	mov 0x39,r4

loc_8C0F4E0A:
	rts
	nop

;=============================================
loc_8C0F4E0E:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0F4EB8,pc),r3 ; r3 set to 0x8C0F5424
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8C0F4EBC,pc),r2 ; r2 set to 0x8C0F568c
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C0F4E2A:
	mov r4,r3
	mov.l @(loc_8C0F4EC0,pc),r1 ; r1 set to 0x8C16218c
	mov.l r4,@-r15
	mov.l @(0x18,r3),r2
	mov.b @(0x05,r2),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0F4E3E:
	mov 0x00,r0 ; r0 set to 0x00
	bra loc_8C0F532e
	mov.b r0,@(0x05,r4)

loc_8C0F4E44:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C0F4E72
	cmp/eq 0x01,r0
	bf loc_8C0F4E66
	bra loc_8C0F4FDe
	nop

loc_8C0F4E66:
	cmp/eq 0x02,r0
	bf loc_8C0F4E6e
	bra loc_8C0F5076
	nop

loc_8C0F4E6E:
	bra loc_8C0F5076
	nop

loc_8C0F4E72:
	mov.b @(0x05,r14),r0
	fldi0 fr4
	add 0x01,r0
	mov.l @(loc_8C0F4EC4,pc),r3 ; r3 set to 0x8C28C443
	mov.b r0,@(0x05,r14)
	mov 0x30,r0 ; r0 set to 0x30
	mov.w r0,@(0x1C,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mov.b @r3,r0 ; r0 ??
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf/s loc_8C0F4EC8
	mov 0x00,r10 ; r10 set to 0x00
	bra loc_8C0F4ECc
	mov r10,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C0F4EA0:
	#data 0x8C28C410
loc_8C0F4EA4:
	#data bank04.loc_8c0450C0
loc_8C0F4EA8:
	#data bank16.loc_8c162170
loc_8C0F4EAC:
	#data bank16.loc_8c16217c
loc_8C0F4EB0:
	#data 0x3DCCCCCd
loc_8C0F4EB4:
	#data bank04.loc_8c04257c
loc_8C0F4EB8:
	#data loc_8c0f5424
loc_8C0F4EBC:
	#data loc_8c0f568c
loc_8C0F4EC0:
	#data bank16.loc_8c16218c
loc_8C0F4EC4:
	#data 0x8C28C443

;==============================================
loc_8C0F4EC8:
	mov.w @(loc_8C0F500A,pc),r0 ; r0 set to 0xD8
	mov.l @(r0,r14),r4

loc_8C0F4ECC:
	mov r10,r0 ; r0 ??? bc r10 is ???
	nop
	extu.b r4,r12
	mov.b r0,@(0x06,r14)
	mov r12,r3
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???
	shll2 r12
	shll r12
	mov.l @(loc_8C0F5014,pc),r11 ; r11 set to 0x8C03C952, r11 set to 0x8C03C952
	mov.l @(loc_8C0F5010,pc),r9 ; r9 set to 0x8C03C8F6, r9 set to 0x8C03C8F6
	extu.b r0,r0
	mov.l @(loc_8C0F5018,pc),r13 ; r13 set to 0x8C162050, r13 set to 0x8C162050
	add r3,r12
	cmp/eq 0x00,r0
	shll2 r12
	bt/s loc_8C0F4EFc
	mov r13,r8 ; r8 set to 0x8C162050, r8 set to 0x8C162050
	cmp/eq 0x01,r0
	bt loc_8C0F4F5a
	cmp/eq 0x02,r0
	bt loc_8C0F4F9a
	bra loc_8C0F5076
	nop

loc_8C0F4EFC:
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(loc_8C0F501C,pc),r3 ; r3 set to 0x8C04257c
	mov.b @(r0,r14),r4
	jsr @r3
	add 0x3A,r4
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r2
	mov 0x6C,r3 ; r3 set to 0x6c
	mov 0x18,r0 ; r0 set to 0x18
	extu.b r2,r2
	mulu.w r3,r2
	mov 0x02,r6 ; r6 set to 0x02
	sts macl,r2
	add r13,r2
	add r12,r2
	fmov.s @(r0,r2),fr4
	mov.w @(0x1C,r14),r0
	mov r0,r5 ; r5 set to 0x18
	jsr @r9
	mov r14,r4
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	mov 0x6C,r2 ; r2 set to 0x6c
	mov 0x02,r6 ; r6 set to 0x02
	extu.b r3,r3
	mulu.w r2,r3
	sts macl,r3
	add r3,r13
	add r12,r13
	fmov.s @(r0,r13),fr4
	mov.w @(0x1C,r14),r0
	mov r0,r5 ; r5 set to 0x20
	jsr @r11
	mov r14,r4
	mova @(loc_8C0F5020,pc),r0  ; r0 set to 0x8C0F5020
	mov.l @(loc_8C0F5024,pc),r3 ; r3 set to 0x8C03CB04
	fmov.s @r0,fr3 ; r3 ??
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	mov r0,r5 ; r5 set to 0x6c
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0F500C,pc),r0 ; r0 set to 0xD0
	mov 0x02,r2 ; r2 set to 0x02
	bra loc_8C0F5076
	mov.l r2,@(r0,r14)

loc_8C0F4F5A:
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r2
	mov 0x6C,r3 ; r3 set to 0x6c
	mov.w @(0x1C,r14),r0
	mov 0x02,r6 ; r6 set to 0x02
	extu.b r2,r2
	mulu.w r3,r2
	mov r0,r5 ; r5 set to 0x20
	sts macl,r2
	add r2,r8
	add r12,r8
	fmov.s @r8,fr4
	jsr @r9
	mov r14,r4
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	mov 0x6C,r2 ; r2 set to 0x6c
	mov 0x08,r0 ; r0 set to 0x08
	extu.b r3,r3
	mulu.w r2,r3
	mov 0x02,r6 ; r6 set to 0x02
	sts macl,r3
	add r3,r13
	add r12,r13
	fmov.s @(r0,r13),fr4
	mov.w @(0x1C,r14),r0
	mov r0,r5 ; r5 set to 0x08
	jsr @r11
	mov r14,r4
	mov.w @(loc_8C0F500C,pc),r0 ; r0 set to 0xD0
	bra loc_8C0F5076
	mov.l r10,@(r0,r14)

loc_8C0F4F9A:
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r2
	mov 0x6C,r3 ; r3 set to 0x6c
	mov 0x0C,r0 ; r0 set to 0x0c
	extu.b r2,r2
	mulu.w r3,r2
	mov 0x02,r6 ; r6 set to 0x02
	sts macl,r2
	add r2,r8
	add r12,r8
	fmov.s @(r0,r8),fr4
	mov.w @(0x1C,r14),r0
	mov r0,r5 ; r5 set to 0x0c
	jsr @r9
	mov r14,r4
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	mov 0x6C,r2 ; r2 set to 0x6c
	mov 0x14,r0 ; r0 set to 0x14
	extu.b r3,r3
	mulu.w r2,r3
	mov 0x02,r6 ; r6 set to 0x02
	sts macl,r3
	add r3,r13
	add r12,r13
	fmov.s @(r0,r13),fr4
	mov.w @(0x1C,r14),r0
	mov r0,r5 ; r5 set to 0x14
	jsr @r11
	mov r14,r4
	mov.w @(loc_8C0F500C,pc),r0 ; r0 set to 0xD0
	mov 0x01,r3 ; r3 set to 0x01
	bra loc_8C0F5076
	mov.l r3,@(r0,r14)

loc_8C0F4FDE:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/pz r0
	bt loc_8C0F5028
	mov 0x21,r2 ; r2 set to 0x21
	mov.b @(0x05,r14),r0
	add r14,r2 ; r2 ??? bc r14 is ???
	add 0x01,r0
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r0,@(0x05,r14)
	mov.b @r2,r2
	mov 0x22,r0 ; r0 set to 0x22
	mov.l @(0x18,r14),r3
	extu.b r2,r2
	shad r2, r1 ; r1 ??? bc r2 is ???
	mov.b @(r0,r3),r2
	or r1,r2
	mov.b r2,@(r0,r3)
	bra loc_8C0F5076
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F500A:
	#data 0x00D8
loc_8C0F500C:
	#data 0x00D0
	#align4

loc_8C0F5010:
	#data bank03.loc_8c03C8F6
loc_8C0F5014:
	#data bank03.loc_8c03C952
loc_8C0F5018:
	#data bank16.loc_8c162050
loc_8C0F501C:
	#data bank04.loc_8c04257c
loc_8C0F5020:
	#data 0x3F9A4924
loc_8C0F5024:
	#data bank03.loc_8c03CB04

;==============================================
loc_8C0F5028:
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
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @(loc_8C0F5160,pc),r3 ; r3 set to 0x8C03CB58
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0F5076:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14
	
;=============================================
loc_8C0F5088:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C0F50B4
	cmp/eq 0x01,r0
	bf loc_8C0F50A8
	bra loc_8C0F5214
	nop

loc_8C0F50A8:
	cmp/eq 0x02,r0
	bf loc_8C0F50B0
	bra loc_8C0F528c
	nop

loc_8C0F50B0:
	bra loc_8C0F528c
	nop

loc_8C0F50B4:
	mov.b @(0x05,r14),r0
	fldi0 fr4
	add 0x01,r0
	mov.l @(loc_8C0F5164,pc),r3 ; r3 set to 0x8C28C443
	mov.b r0,@(0x05,r14)
	mov 0x30,r0 ; r0 set to 0x30
	mov.w r0,@(0x1C,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mov.b @r3,r0 ; r0 ??
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf/s loc_8C0F50E0
	mov 0x00,r9 ; r9 set to 0x00
	bra loc_8C0F50E4
	mov r9,r4

loc_8C0F50E0:
	mov.w @(loc_8C0F515E,pc),r0 ; r0 set to 0xD8
	mov.l @(r0,r14),r4

loc_8C0F50E4:
	mov r9,r0 ; r0 ??? bc r9 is ???
	nop
	mov.b r0,@(0x06,r14)
	extu.b r4,r12
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	mov r12,r3
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???
	shll2 r12
	mov.l @(loc_8C0F516C,pc),r11 ; r11 set to 0x8C03C952, r11 set to 0x8C03C952
	shll r12
	mov.l @(loc_8C0F5168,pc),r10 ; r10 set to 0x8C03C8F6, r10 set to 0x8C03C8F6
	extu.b r0,r0
	mov.l @(loc_8C0F5170,pc),r13 ; r13 set to 0x8C162050, r13 set to 0x8C162050
	cmp/eq 0x00,r0
	add r3,r12
	bt/s loc_8C0F5112
	shll2 r12
	cmp/eq 0x01,r0
	bt loc_8C0F5174
	cmp/eq 0x02,r0
	bt loc_8C0F51D4
	bra loc_8C0F528c
	nop

loc_8C0F5112:
	mov 0x70,r0 ; r0 set to 0x70
	fmov.s fr4,@(r0,r14)
	mov 0x64,r0 ; r0 set to 0x64
	fmov.s fr4,@(r0,r14)
	add 0x6C,r0 ; r0 set to 0xD0
	mov 0x02,r3 ; r3 set to 0x02
	mov.l r3,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov r3,r6 ; r6 set to 0x02
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	mov 0x6C,r2 ; r2 set to 0x6c
	extu.b r3,r3
	mulu.w r2,r3
	mov 0x18,r0 ; r0 set to 0x18
	sts macl,r3
	add r13,r3
	add r12,r3
	fmov.s @(r0,r3),fr4
	mov.w @(0x1C,r14),r0
	mov r0,r5 ; r5 set to 0x18
	jsr @r10
	mov r14,r4
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3
	mov 0x6C,r2 ; r2 set to 0x6c
	mov 0x02,r6 ; r6 set to 0x02
	extu.b r3,r3
	mulu.w r2,r3
	sts macl,r3
	add r3,r13
	add r12,r13
	fmov.s @(r0,r13),fr4
	mov.w @(0x1C,r14),r0
	mov r0,r5 ; r5 set to 0x20
	jsr @r11
	mov r14,r4
	bra loc_8C0F528c
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F515E:
	#data 0x00D8
	#align4

loc_8C0F5160:
	#data bank03.loc_8c03CB58
loc_8C0F5164:
	#data 0x8C28C443
loc_8C0F5168:
	#data bank03.loc_8c03C8F6
loc_8C0F516C:
	#data bank03.loc_8c03C952
loc_8C0F5170:
	#data bank16.loc_8c162050

;==============================================
loc_8C0F5174:
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(loc_8C0F52C4,pc),r3 ; r3 set to 0x8C04257c
	mov.b @(r0,r14),r4
	jsr @r3
	add 0x3A,r4
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r2
	mov 0x6C,r3 ; r3 set to 0x6c
	mov 0x0C,r0 ; r0 set to 0x0c
	extu.b r2,r2
	mulu.w r3,r2
	mov 0x02,r6 ; r6 set to 0x02
	sts macl,r2
	add r13,r2
	add r12,r2
	fmov.s @(r0,r2),fr4
	mov.w @(0x1C,r14),r0
	mov r0,r5 ; r5 set to 0x0c
	jsr @r10
	mov r14,r4
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	mov 0x6C,r2 ; r2 set to 0x6c
	mov 0x14,r0 ; r0 set to 0x14
	extu.b r3,r3
	mulu.w r2,r3
	mov 0x02,r6 ; r6 set to 0x02
	sts macl,r3
	add r3,r13
	add r12,r13
	fmov.s @(r0,r13),fr4
	mov.w @(0x1C,r14),r0
	mov r0,r5 ; r5 set to 0x14
	jsr @r11
	mov r14,r4
	mova @(loc_8C0F52C8,pc),r0  ; r0 set to 0x8C0F52C8
	mov.l @(loc_8C0F52CC,pc),r3 ; r3 set to 0x8C03CB04
	fmov.s @r0,fr3 ; r3 ??
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	mov r0,r5 ; r5 set to 0x6c
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0F52C0,pc),r0 ; r0 set to 0xD0
	mov 0x01,r2 ; r2 set to 0x01
	bra loc_8C0F528c
	mov.l r2,@(r0,r14)

loc_8C0F51D4:
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r2
	mov 0x6C,r3 ; r3 set to 0x6c
	mov.w @(0x1C,r14),r0
	mov 0x02,r6 ; r6 set to 0x02
	extu.b r2,r2
	mulu.w r3,r2
	mov r0,r5 ; r5 set to 0x20
	sts macl,r2
	add r13,r2
	add r12,r2
	fmov.s @r2,fr4
	jsr @r10
	mov r14,r4
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	mov 0x6C,r2 ; r2 set to 0x6c
	mov 0x08,r0 ; r0 set to 0x08
	extu.b r3,r3
	mulu.w r2,r3
	mov 0x02,r6 ; r6 set to 0x02
	sts macl,r3
	add r3,r13
	add r12,r13
	fmov.s @(r0,r13),fr4
	mov.w @(0x1C,r14),r0
	mov r0,r5 ; r5 set to 0x08
	jsr @r11
	mov r14,r4
	mov.w @(loc_8C0F52C0,pc),r0 ; r0 set to 0xD0
	bra loc_8C0F528c
	mov.l r9,@(r0,r14)

loc_8C0F5214:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/pz r0
	bt loc_8C0F5240
	mov 0x21,r2 ; r2 set to 0x21
	mov.b @(0x05,r14),r0
	add r14,r2 ; r2 ??? bc r14 is ???
	add 0x01,r0
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r0,@(0x05,r14)
	mov.b @r2,r2
	mov 0x22,r0 ; r0 set to 0x22
	mov.l @(0x18,r14),r3
	extu.b r2,r2
	shad r2, r1 ; r1 ??? bc r2 is ???
	mov.b @(r0,r3),r2
	or r1,r2
	mov.b r2,@(r0,r3)
	bra loc_8C0F528c
	nop

loc_8C0F5240:
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
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @(loc_8C0F52D0,pc),r3 ; r3 set to 0x8C03CB58
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0F528C:
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0F529C:
	mov.b @(0x05,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C0F52B0
	cmp/eq 0x01,r0
	bt loc_8C0F52D4
	cmp/eq 0x02,r0
	bt loc_8C0F5306
	bra loc_8C0F530a
	nop

loc_8C0F52B0:
	mov.b @(0x05,r4),r0
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	mov 0x3A,r0 ; r0 set to 0x3a
	mov.w r0,@(0x1C,r4)
	mov 0x00,r0 ; r0 set to 0x00
	bra loc_8C0F530a
	mov.b r0,@(0x06,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F52C0:
	#data 0x00D0
	#align4

loc_8C0F52C4:
	#data bank04.loc_8c04257c
loc_8C0F52C8:
	#data 0x3F9A4924
loc_8C0F52CC:
	#data bank03.loc_8c03CB04
loc_8C0F52D0:
	#data bank03.loc_8c03CB58

;==============================================
loc_8C0F52D4:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	cmp/pz r0
	bt loc_8C0F530a
	mov.b @(0x05,r4),r0
	mov 0x21,r2 ; r2 set to 0x21
	add r4,r2 ; r2 ??? bc r4 is ???
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	mov 0x01,r1 ; r1 set to 0x01
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @r2,r2
	mov.l @(0x18,r4),r3
	extu.b r2,r2
	shad r2, r1 ; r1 ??? bc r2 is ???
	mov.b @(r0,r3),r2
	or r1,r2
	mov.b r2,@(r0,r3)
	bra loc_8C0F530a
	nop

loc_8C0F5306:
	bra loc_8C0F532e
	nop

loc_8C0F530A:
	rts
	nop

;=============================================
loc_8C0F530E:
	bra loc_8C0F532e
	nop

;=============================================
loc_8C0F5312:
	mov r4,r3
	mov.l @(loc_8C0F5410,pc),r1 ; r1 set to 0x8C1621A8
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0F5324:
	mov.b @(0x04,r4),r0
	mov.l @(loc_8C0F5414,pc),r3 ; r3 set to 0x8C0F5424
	add 0x01,r0
	jmp @r3
	mov.b r0,@(0x04,r4)

loc_8C0F532E:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x36,r0 ; r0 set to 0x36
	mov.l @(loc_8C0F5418,pc),r4 ; r4 set to 0x8C28C410
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8C0F5400
	mov.b @(0x06,r14),r0
	extu.b r0,r0 ; r0 set to 0x36
	cmp/eq 0x00,r0
	bt loc_8C0F5352
	cmp/eq 0x01,r0
	bt loc_8C0F53Cc
	bra loc_8C0F5400
	nop

loc_8C0F5352:
	mov 0x33,r0 ; r0 set to 0x33
	mov.b @(r0,r4),r3
	mov.w @(loc_8C0F540A,pc),r0 ; r0 set to 0xD8
	mov.b @(r0,r14),r13
	xor r3,r13
	extu.b r13,r2
	tst r2,r2
	bt loc_8C0F5400
	mov.b @(0x06,r14),r0
	mov.l @(loc_8C0F541C,pc),r12 ; r12 set to 0x8C162050
	add 0x01,r0 ; r0 set to 0xD9
	mov.b r0,@(0x06,r14)
	mov 0x1E,r0 ; r0 set to 0x1e
	mov.w r0,@(0x1E,r14)
	mov 0x33,r0 ; r0 set to 0x33
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8C0F5388
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r2
	mov 0x6C,r3 ; r3 set to 0x6c
	mov 0x00,r6 ; r6 set to 0x00
	extu.b r2,r2
	mulu.w r3,r2
	bra loc_8C0F53A4
	sts macl,r2

loc_8C0F5388:
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r2
	mov 0x6C,r3 ; r3 set to 0x6c
	mov 0x00,r6 ; r6 set to 0x00
	extu.b r2,r2
	mulu.w r3,r2
	sts macl,r2
	add r2,r12
	extu.b r13,r2
	mov r2,r1
	shll2 r2
	shll r2
	add r1,r2
	shll2 r2

loc_8C0F53A4:
	mov.w @(loc_8C0F540C,pc),r0 ; r0 set to 0xD0, r0 set to 0xD0
	add r2,r12
	mov.l @(r0,r14),r2
	mov.w @(0x1E,r14),r0
	mov r2,r1
	shll r2
	add r1,r2
	mov r0,r5 ; r5 set to 0xD0, r5 set to 0xD0
	shll2 r2
	add r2,r12
	mov.l @(loc_8C0F5420,pc),r2 ; r2 set to 0x8C03C8F6, r2 set to 0x8C03C8F6
	fmov.s @r12,fr4
	jsr @r2
	mov r14,r4
	mov.w @(loc_8C0F540A,pc),r0 ; r0 set to 0xD8, r0 set to 0xD8
	extu.b r13,r13
	mov.l @(r0,r14),r3 ; r3 ??? bc r14 is ???
	or r13,r3
	bra loc_8C0F5400
	mov.l r3,@(r0,r14)

loc_8C0F53CC:
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/pl r0
	bt loc_8C0F53E4
	mov 0x00,r4 ; r4 set to 0x00
	mov r4,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x05,r14)
	bra loc_8C0F53F2
	mov.b r0,@(0x06,r14)

loc_8c0f53e4:
	mov 0x5C,r1
	add r14,r1
	mov 0x34,r0
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)

loc_8c0f53f2:
	mov 0x68,r1
	add r14,r1
	mov 0x5C,r0
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)

loc_8C0F5400:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F540A:
	#data 0x00D8
loc_8C0F540C:
	#data 0x00D0
	#align4

loc_8C0F5410:
	#data bank16.loc_8c1621A8
loc_8C0F5414:
	#data loc_8c0f5424
loc_8C0F5418:
	#data 0x8C28C410
loc_8C0F541C:
	#data bank16.loc_8c162050
loc_8C0F5420:
	#data bank03.loc_8c03C8F6

;==============================================
loc_8C0F5424:
	mov.l r14,@-r15
	mov 0x05,r5 ; r5 set to 0x05
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov 0x01,r6 ; r6 set to 0x01
	sts.l pr,@-r15
	mov.l @(loc_8C0F556C,pc),r3 ; r3 set to 0x8C044F12
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bf/s loc_8C0F5442
	mov r0,r14
	bra loc_8C0F5542
	nop

loc_8c0f5442:
	mov.w @(loc_8C0F555E,pc),r0
	mov 0x01,r12
	mov.w @(loc_8C0F5560,pc),r2
	mov r14,r1
	mov.b r12,@(r0,r14)
	add 0x9C,r0
	add r13,r2
	mov.l @(loc_8c0f5570,pc),r3
	add 0x34,r1
	mov.l r3,@(0x10,r14)
	mov.l r13,@(0x18,r14)
	mov.l r2,@(r0,r14)
	mov 0x20,r0
	mov.l @(0x14,r13),r3
	mov.l r3,@(0x14,r14)
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r13),r2
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c0f5574,pc),r3
	shll2 r2
	add r3,r2
	mov.l @(loc_8c0f5578,pc),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8C0F557C,pc),r0
	mov 0x00,r4
	mov.l @r0,r1
	mov 0x20,r0
	mov.b @(r0,r13),r3
	mov 0x21,r0
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	mov.b @(r0,r13),r2
	mov.w @(loc_8C0F5562,pc),r0
	extu.b r2,r2
	add r2,r3
	mov.l @r1,r2
	shll2 r3
	add r2,r3
	mov.l @(r0,r3),r3
	mov.w @(loc_8C0F5564,pc),r0
	mov.l r3,@(r0,r14)
	mov 0x44,r0
	mov r14,r3
	add 0x40,r3
	mov.l r4,@r3
	mov.l r4,@(r0,r14)
	mov 0x48,r0
	mov.l r4,@(r0,r14)
	mov.w @(loc_8C0F5568,pc),r0
	mov.w @(loc_8C0F5566,pc),r3
	mov.l r3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r13),r2
	mov.l @(loc_8C0F5580,pc),r0
	extu.b r2,r2
	mov r12,r1
	mov.b @(r0,r2),r3
	mov 0x21,r0
	mov.b @(r0,r13),r2
	extu.b r3,r3
	extu.b r2,r2
	shad r2, r1
	tst r1,r3
	bt loc_8c0f5534
	mov 0x06,r0
	mov.l @(loc_8C0F5588,pc),r4
	mov.b r0,@(0x04,r14)
	mov 0x20,r0
	mov.l @(loc_8C0F5584,pc),r3
	mov.b r12,@r3
	mov.b @(r0,r14),r2
	mov 0x21,r0
	mov.b @r4,r1
	add 0x01,r2
	or r2,r1
	mov.b r1,@r4
	mov.b @(r0,r14),r4
	mov 0x20,r0
	mov.b @(r0,r14),r2
	extu.b r4,r4
	extu.b r2,r2
	shll r4
	add r2,r4
	mov.l @(loc_8c0f558c,pc),r2
	jsr @r2
	nop
	mov 0x20,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0f5512
	mov.l @(loc_8C0F5590,pc),r3
	mov 0x44,r0
	mov.l r3,@(r0,r14)

loc_8c0f5512:
	mov.l @(loc_8C0F5594,pc),r2
	mov.w @(loc_8C0F556A,pc),r1
	mov.l @r2,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x07,r0
	bt loc_8c0f5528
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c0f5542

loc_8c0f5528:
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov.l @(loc_8C0F5598,pc),r0
	extu.b r2,r2
	bra loc_8c0f5542
	mov.b r12,@(r0,r2)

loc_8c0f5534:
	mov.b @(r0,r13),r0
	extu.b r0,r0
	mov r0,r3
	shll2 r0
	add r3,r0
	shll r0
	mov.w r0,@(0x1C,r14)

loc_8C0F5542:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0F554C:
	mov r4,r3
	mov.l @(loc_8C0F559C,pc),r1 ; r1 set to 0x8C1621D0
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f555e:
	#data 0x012c
loc_8c0f5560:
	#data 0x0088
loc_8c0f5562:
	#data 0x0130
loc_8c0f5564:
	#data 0x0084
loc_8c0f5566:
	#data 0x0805
loc_8c0f5568:
	#data 0x00Cc
loc_8c0f556a:
	#data 0x0081
	#align4

loc_8C0F556C:
	#data bank04.loc_8c044F12
loc_8C0F5570:
	#data loc_8c0f554c
loc_8C0F5574:
	#data bank16.loc_8c1621B8
loc_8C0F5578:
	#data bank12.loc_8c1294C8
loc_8c0f557c:
	#data 0x8C26A910
loc_8c0f5580:
	#data 0x8C28C412
loc_8c0f5584:
	#data 0x8C26A960
loc_8c0f5588:
	#data 0x8C26A961
loc_8C0F558C:
	#data bank03.loc_8c0397A4
loc_8c0f5590:
	#data 0x00008000
loc_8c0f5594:
	#data 0x8C26823c
loc_8c0f5598:
	#data 0x8C28C410
loc_8C0F559C:
	#data bank16.loc_8c1621D0

;==============================================
loc_8C0F55A0:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	cmp/pl r0
	bt loc_8c0f55b2
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)

loc_8C0F55B2:
	rts
	nop

;=============================================
loc_8C0F55B6:
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x21,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c0f55d2
	mov 0x20,r0
	mov.b @(r0,r4),r2
	mov 0x01,r3
	mov.l @(0xB0,PC),r0
	extu.b r2,r2
	mov.b r3,@(r0,r2)

loc_8C0F55D2:
	rts
	nop

;=============================================
loc_8C0F55D6:
	mov 0x20,r0
	mov.l @(0xA4,PC),r5
	mov.b @(r0,r4),r3
	mov r5,r2
	add 0x34,r2
	extu.b r3,r3
	add r2,r3
	mov.b @r3,r1
	tst r1,r1
	bt loc_8c0f5618
	mov.b @(r0,r4),r1
	mov r5,r3
	add 0x34,r3
	extu.b r1,r1
	add r3,r1
	mov 0x21,r0
	mov.b @r1,r2
	mov.b @(r0,r4),r3
	extu.b r2,r2
	extu.b r3,r3
	add 0xFF,r2
	cmp/eq r3,r2
	bf loc_8c0f5618
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c0f5618
	mov.l @(0x70,PC),r3
	mov 0x44,r0
	mov.l r3,@(r0,r4)

loc_8C0F5618:
	rts
	nop

;=============================================
loc_8C0F561C:
	mov 0x20,r0
	mov.b @(r0,r4),r2
	mov 0x01,r1
	mov.l @(0x64,PC),r0
	extu.b r2,r2
	mov.b @(r0,r2),r3
	mov 0x21,r0
	mov.b @(r0,r4),r2
	extu.b r3,r3
	extu.b r2,r2
	shad r2,r1
	tst r1,r3
	bt loc_8c0f563c
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)

loc_8C0F563C:
	rts
	nop

;=============================================
loc_8C0F5640:
	mov 0x20,r0
	mov.b @(r0,r4),r3
	mov 0x10,r1
	mov.l @(0x40,PC),r0
	extu.b r3,r3
	mov.b @(r0,r3),r2
	mov 0x21,r0
	mov.b @(r0,r4),r3
	extu.b r2,r2
	extu.b r3,r3
	shad r3,r1
	tst r1,r2
	bt loc_8c0f5660
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)

loc_8C0F5660:
	rts
	nop

;=============================================
loc_8C0F5664:
	mov 0x20,r0
	mov.l @(0x18,PC),r1
	mov.b @(r0,r4),r0
	extu.b r0,r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c0f567a
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)

loc_8C0F567A:
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c0f5680:
	#data 0x8C28C410
loc_8c0f5684:
	#data 0x00008000
loc_8c0f5688:
	#data 0x8C28C412

;==============================================
loc_8C0F568C:
	mov.l r14,@-r15
	mov 0x05,r5
	sts.l pr,@-r15
	mov.l @(0xC0,PC),r3
	mov r4,r14
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0f56dc
	mov r0,r4
	mov.w @(0xA2,PC),r0
	mov 0x00,r3
	mov.l @(0xB0,PC),r2
	mov.b r3,@(r0,r4)
	add 0x9C,r0
	mov.w @(0x9A,PC),r3
	mov.l r2,@(0x10,r4)
	add r14,r3
	fldi0 fr4
	fldi1 fr3
	mov.l r14,@(0x18,r4)
	mov.l r3,@(r0,r4)
	mov 0x20,r0
	mov.l @(0x14,r14),r2
	mov.l r2,@(0x14,r4)
	mov.b @(r0,r14),r3
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.b @(r0,r14),r2
	mov.w @(0x80,PC),r3
	mov.b r2,@(r0,r4)
	mov 0x34,r0
	fmov fr4,@(r0,r4)
	mov 0x38,r0
	fmov fr4,@(r0,r4)
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov.w @(0x72,PC),r0
	mov.l r3,@(r0,r4)

loc_8C0F56DC:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0F56E2:
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C0F56F2
	cmp/eq 0x01,r0
	bt loc_8C0F5744
	bra loc_8C0F5744
	nop

loc_8c0f56f2:
	mov 0x20,r0
	mov.b @(r0,r4),r3
	mov 0x10,r1
	mov.l @(loc_8C0F575C,pc),r0
	extu.b r3,r3
	mov.b @(r0,r3),r2
	mov 0x21,r0
	mov.b @(r0,r4),r3
	extu.b r2,r2
	extu.b r3,r3
	shad r3, r1
	tst r1,r2
	bt loc_8c0f5744
	mov.b @(0x04,r4),r0
	mov 0x01,r3
	mov.l @(loc_8C0F5760,pc),r2
	add 0x01,r0
	mov.l @(0x14,r4),r5
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0F5748,pc),r0
	mov.b r3,@(r0,r4)
	mov 0x20,r3
	add r4,r3
	mov.l @r2,r0
	mov.b @r3,r3
	mov.l @(loc_8c0f5764,pc),r2
	extu.b r3,r3
	mov.l @r0,r0
	mov r3,r1
	shll r3
	add r1,r3
	mov.w @(loc_8C0F5750,pc),r1
	add r2,r3
	add r5,r1
	mov.b @r1,r1
	add r3,r1
	mov.b @r1,r3
	shll2 r3
	mov.l @(r0,r3),r1
	mov.w @(loc_8C0F5752,pc),r0
	mov.l r1,@(r0,r4)

loc_8C0F5744:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f5748:
	#data 0x012c
loc_8c0f574a:
	#data 0x0088
loc_8c0f574c:
	#data 0x0801
loc_8c0f574e:
	#data 0x00CC
loc_8c0f5750:
	#data 0x04C9
loc_8c0f5752:
	#data 0x0084
	#align4

loc_8C0F5754:
	#data bank04.loc_8c044F12
loc_8C0F5758:
	#data loc_8c0f56E2
loc_8c0f575c:
	#data 0x8C28C412
loc_8c0f5760:
	#data 0x8C26A910
loc_8C0F5764:
	#data bank16.loc_8c1621Ec

;==============================================
loc_8C0F5768:
	mov.l r14,@-r15
	mov 0x00,r14 ; r14 set to 0x00
	mov.l r13,@-r15
	mov 0x02,r13 ; r13 set to 0x02
	sts.l pr,@-r15

loc_8C0F5772:
	bsr loc_8C0F5784
	mov r14,r4 ; r4 set to 0x00
	add 0x01,r14 ; r14 set to 0x01
	cmp/ge r13,r14
	bf loc_8C0F5772
	lds.l @r15+,pr
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	rts
	mov.l @r15+,r14

;=============================================
loc_8c0f5784:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c0f5828,pc),r3
	mov 0x05,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c0f57ec
	mov r0,r4
	mov.w @(loc_8C0F581A,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C0F582C,pc),r1
	mov 0x00,r5
	mov.b r3,@(r0,r4)
	add 0x9C,r0
	mov.w @(loc_8C0F581C,pc),r3
	mov.l @r1,r2
	mov.l @(loc_8C0F5834,pc),r1
	add r2,r3
	mov.l @(loc_8c0f5830,pc),r2
	mov.l r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.l @r15,r2
	mov.l @r3,r3
	shll2 r2
	fldi0 fr4
	add r3,r2
	mov r4,r3
	mov.l @(0x20,r2),r0
	add 0x40,r3
	mov.w @(loc_8C0F581E,pc),r2
	add r4,r2
	mov.l r0,@r2
	mov 0x34,r0
	fmov.s fr4,@(r0,r4)
	mov 0x38,r0
	fmov.s fr4,@(r0,r4)
	mov 0x3C,r0
	fmov.s fr4,@(r0,r4)
	mov.l r5,@r3
	mov 0x44,r0
	mov.w @(loc_8C0F5820,pc),r3
	mov.l r5,@(r0,r4)
	mov 0x48,r0
	mov.l r5,@(r0,r4)
	mov.w @(loc_8C0F5822,pc),r0
	mov.l r3,@(r0,r4)
	add 0x0C,r0
	mov.l r5,@(r0,r4)

loc_8c0f57ec:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C0F57F4:
	mov r4,r3
	add 0x40,r3
	mov.l @r3,r1
	mov 0x44,r0 ; r0 set to 0x44
	mov.w @(loc_8C0F5824,pc),r2 ; r2 set to 0x100
	add r2,r1
	mov.l r1,@r3
	mov 0x44,r1 ; r1 set to 0x44
	mov.l @(r0,r4),r0 ; r0 ??? bc r4 is ???
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.w @(loc_8C0F5826,pc),r3 ; r3 set to 0x180
	add 0x80,r2 ; r2 set to 0x80
	add r3,r0
	mov.l r0,@r1
	mov 0x48,r0 ; r0 set to 0x48
	mov.l @(r0,r4),r1
	add r2,r1
	rts
	mov.l r1,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f581a:
	#data 0x012c
loc_8c0f581c:
	#data 0x0088
loc_8c0f581e:
	#data 0x0084
loc_8c0f5820:
	#data 0x080f
loc_8c0f5822:
	#data 0x00CC
loc_8C0F5824:
	#data 0x0100
loc_8C0F5826:
	#data 0x0180
	#align4

loc_8C0F5828:
	#data bank04.loc_8c044F12
loc_8c0f582c:
	#data 0x8C28C468
loc_8C0F5830:
	#data loc_8c0f57F4
loc_8c0f5834:
	#data 0x8C26A910

;==============================================
loc_8C0F5838:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b r5,@r15
	mov.b @r15,r3
	tst r3,r3
	bt.s loc_8c0f5854
	mov r4,r14
	mov.l @(0x100,PC),r3
	mov.w @(0xEA,PC),r1
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x07,r0
	bt loc_8c0f591e

loc_8C0F5854:
	mov.l @(0xF8,PC),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0f591e
	mov r0,r4
	mov.w @(0xD2,PC),r0
	mov 0x01,r3
	mov.l @(0xE8,PC),r5
	mov.b r3,@(r0,r4)
	mov.w @(0xCC,PC),r0
	mov.l r14,@(0x18,r4)
	mov.b @(r0,r14),r3
	mov 0x20,r0
	mov.b r3,@(r0,r4)
	mov.w @(0x1E,r14),r0
	mov r0,r2
	mov 0x21,r0
	mov.b r2,@(r0,r4)
	mov.w @(0xBA,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0f5898
	mov.l @(0xD0,PC),r3
	mov 0x44,r0
	mov.l r3,@(r0,r4)
	mov.l @r5,r2
	mov.w @(0xAC,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r1
	bra loc_8c0f58a6
	nop 

loc_8C0F5898:
	mov 0x44,r0
	mov 0x00,r2
	mov.l r2,@(r0,r4)
	mov.l @r5,r3
	mov.w @(0x9C,PC),r0
	mov.l @r3,r2
	mov.l @(r0,r2),r1

loc_8C0F58A6:
	mov.w @(0x98,PC),r0
	mov.l @(0xB0,PC),r7
	mov.l r1,@(r0,r4)
	mov 0x33,r0
	mov.b @(r0,r7),r6
	mov.l @(0xAC,PC),r5
	extu.b r6,r0
	cmp/eq 0x03,r0
	bf loc_8c0f58d6
	mov.w @(0x80,PC),r0
	mov r4,r1
	add 0x34,r1
	mov.b @(r0,r14),r2
	mov r2,r3
	shll2 r2
	shll r2
	add r3,r2
	mov.l @(0x98,PC),r3
	shll2 r2
	add r5,r2
	jsr @r3
	mov 0x0C,r0
	bra loc_8c0f58fc
	nop 

loc_8C0F58D6:
	mov.w @(0x62,PC),r0
	extu.b r6,r6
	mov r4,r1
	add 0x34,r1
	mov.b @(r0,r14),r2
	mov r2,r3
	shll2 r2
	shll r2
	add r3,r2
	mov r6,r3
	shll r6
	add r3,r6
	mov.l @(0x74,PC),r3
	shll2 r2
	add r5,r2
	shll2 r6
	add r6,r2
	jsr @r3
	mov 0x0C,r0

loc_8C0F58FC:
	mov.w @(0x46,PC),r0
	mov.w @(0x42,PC),r1
	mov.l r1,@(r0,r4)
	mov 0x33,r0
	mov.b @(r0,r7),r3
	mov.w @(0x3E,PC),r0
	extu.b r3,r3
	mov.l r3,@(r0,r4)
	mov.b @r15,r2
	tst r2,r2
	bt.s loc_8c0f591a
	mov r4,r0
	mov.l @(0x50,PC),r2
	bra loc_8c0f591e
	mov.l r2,@(0x10,r4)

loc_8C0F591A:
	mov.l @(0x50,PC),r1
	mov.l r1,@(0x10,r4)

loc_8C0F591E:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0F5926:
	mov r4,r3
	mov.l @(loc_8C0F5970,pc),r1 ; r1 set to 0x8C162258
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f5938:
	#data 0x0081
loc_8c0f593a:
	#data 0x012C
loc_8c0f593c:
	#data 0x0524
loc_8c0f593e:
	#data 0x02C8
loc_8c0f5940:
	#data 0x02C4
loc_8c0f5942:
	#data 0x0084
loc_8c0f5944:
	#data 0x0801
loc_8c0f5946:
	#data 0x00CC
loc_8c0f5948:
	#data 0x00D8
	#align4

loc_8C0F594c:
	#data 0x8C26823c
loc_8C0F5950:
	#data bank04.loc_8c044F12
loc_8C0F5954:
	#data 0x8C26A910
loc_8C0F5958:
	#data 0x00008000
loc_8C0F595c:
	#data 0x8C28C410
loc_8C0F5960:
	#data bank16.loc_8c162210
loc_8C0F5964:
	#data bank12.loc_8c1294C8
loc_8C0F5968:
	#data bank03.loc_8c03D46a
loc_8C0F596C:
	#data loc_8c0f5926
loc_8C0F5970:
	#data bank16.loc_8c162258

;==============================================
loc_8C0F5974:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c0f59dc
	mov r4,r14
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov 0x01,r1
	mov.l @(0x108,PC),r0
	extu.b r2,r2
	mov.b @(r0,r2),r3
	mov 0x21,r0
	mov.b @(r0,r14),r2
	extu.b r3,r3
	extu.b r2,r2
	shad r2,r1
	tst r1,r3
	bt loc_8c0f599c
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8C0F599C:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0F59A2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c0f59dc
	mov r4,r14
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov 0x10,r1
	mov.l @(0xD8,PC),r0
	extu.b r2,r2
	mov.b @(r0,r2),r3
	mov 0x21,r0
	mov.b @(r0,r14),r2
	extu.b r3,r3
	extu.b r2,r2
	shad r2,r1
	tst r1,r3
	bt loc_8c0f59d0
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xB6,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0F59D0:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0F59D6:
mov.l @(loc_8C0F5A90,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop

;=============================================
loc_8C0F59DC:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x36,r0
	mov.l @(0xAC,PC),r4
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c0f5abc
	mov.b @(0x6,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c0f5a00
	cmp/eq 0x01,r0
	bt loc_8c0f5a74
	bra loc_8c0f5abc
	nop 

loc_8C0F5A00:
	mov 0x33,r0
	mov.b @(r0,r4),r3
	mov.w @(0x80,PC),r0
	mov.b @(r0,r14),r13
	xor r3,r13
	extu.b r13,r2
	tst r2,r2
	bt loc_8c0f5abc
	mov.b @(0x6,r14),r0
	mov.l @(0x84,PC),r12
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x1E,r0
	mov.w r0,@(0x1E,r14)
	mov 0x33,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c0f5a3c
	mov 0x20,r0
	mov.b @(r0,r14),r2
	extu.b r2,r2
	mov r2,r3
	shll2 r2
	shll r2
	add r3,r2
	shll2 r2
	add r2,r12
	bra loc_8c0f5a5c
	mov 0x00,r6

loc_8C0F5A3C:
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov 0x00,r6
	extu.b r3,r3
	mov r3,r2
	shll2 r3
	shll r3
	add r2,r3
	shll2 r3
	add r3,r12
	extu.b r13,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	add r3,r12

loc_8C0F5A5C:
	mov.w @(0x1E,r14),r0
	mov.l @(0x3C,PC),r3
	fmov @r12,fr4
	mov r0,r5
	jsr @r3
	mov r14,r4
	mov.w @(0x1C,PC),r0
	extu.b r13,r13
	mov.l @(r0,r14),r2
	or r13,r2
	bra loc_8c0f5abc
	mov.l r2,@(r0,r14)

loc_8C0F5A74:
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/pl r0
	bt loc_8c0f5aa0
	mov 0x00,r0
	bra loc_8c0f5aae
	mov.b r0,@(0x6,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f5a86:
	#data 0x012c
loc_8c0f5a88:
	#data 0x00d8
	#align4

loc_8C0F5A8c:
	#data 0x8C28C412
loc_8C0F5A90:
	#data bank04.loc_8c0450C0
loc_8C0F5A94:
	#data 0x8C28C410
loc_8C0F5A98:
	#data bank16.loc_8c162210
loc_8C0F5A9C:
	#data bank03.loc_8c03C8F6

;==============================================
loc_8C0F5AA0:
	mov 0x5C,r1
	add r14,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)

loc_8C0F5AAE:
	mov 0x68,r1
	add r14,r1
	mov 0x5C,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)

loc_8C0F5ABC:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

;==============================================
loc_8C0F5AC8:
	mov.l r14,@-r15
	mov r5,r14
	mov.l r13,@-r15
	mov 0x05,r5
	sts.l pr,@-r15
	mov.l @(0xF4,PC),r3
	mov r4,r13
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0f5b7c
	mov r0,r4
	mov.l @(0xE8,PC),r2
	mov 0x01,r3
	mov.w @(0xCC,PC),r0
	mov.l @(0xE4,PC),r1
	mov.b r3,@(r0,r4)
	add 0x9C,r0
	mov.l r2,@(0x10,r4)
	mov.w @(0xC4,PC),r2
	mov.l @r1,r3
	extu.b r14,r1
	shll2 r1
	mov.l @(0xDC,PC),r6
	add r3,r2
	mov.l r2,@(r0,r4)
	mov 0x20,r0
	mov.l @(0xD0,PC),r2
	mov.b r14,@(r0,r4)
	mov.l @r2,r3
	mov.w @(0xB0,PC),r0
	mov.l @r3,r3
	add r3,r1
	mov r4,r3
	mov.l @(r0,r1),r1
	add 0x40,r3
	mov.w @(0xA6,PC),r0
	mov.l r1,@(r0,r4)
	mova @(0xC4,PC),r0
	fmov @r0,fr6
	mova @(0xC4,PC),r0
	fmov @r0,fr5
	mova @(0xC4,PC),r0
	fmov @r0,fr4
	mov.w @(0x98,PC),r1
	extu.b r14,r5
	mov.l @(0xC0,PC),r0
	mulu.w r1,r5
	sts macl,r5
	add r0,r5
	mov.w @(0x8E,PC),r0
	mov.b @(r0,r13),r2
	shll2 r2
	shll r2
	add r5,r2
	mov.l @r2,r2
	lds r2,fpul
	float fpul,fr3
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r6,r2
	mov.l r2,@r3
	mov.b @(r0,r13),r3
	shll2 r3
	shll r3
	add r3,r5
	mov.l @(0x4,r5),r3
	lds r3,fpul
	float fpul,fr3
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	mov 0x44,r0
	mov 0x00,r2
	and r6,r3
	mov.l r3,@(r0,r4)
	mov 0x48,r0
	mov.l r2,@(r0,r4)
	mov.w @(0x50,PC),r0
	mov.w @(0x4C,PC),r3
	mov.l r3,@(r0,r4)
	mov.w @(0x46,PC),r0
	mov.b @(r0,r13),r0
	mov.b r0,@(0x1,r4)

loc_8C0F5B7C:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0F5B84:
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C0F5B94
	cmp/eq 0x01,r0
	bt loc_8C0F5BAc
	bra loc_8C0F5BB2
	nop

loc_8C0F5B94:
	mov.l @(loc_8C0F5BEC,pc),r2 ; r2 set to 0x8C26823c
	mov.l @r2,r3
	mov.b @(0x07,r3),r0
	tst r0,r0
	bt loc_8C0F5BB2
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0F5BB6,pc),r0 ; r0 set to 0x12c
	bra loc_8C0F5BB2
	mov.b r3,@(r0,r4)

loc_8C0F5BAC:
	mov.l @(loc_8C0F5BF0,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8C0F5BB2:
rts
nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f5bb6:
	#data 0x012c
loc_8c0f5bb8:
	#data 0x0088
loc_8c0f5bba:
	#data 0x0110
loc_8c0f5bbc:
	#data 0x0084
loc_8c0f5bbe:
	#data 0x01d8
loc_8c0f5bc0:
	#data 0x052c
loc_8c0f5bc2:
	#data 0x0806
loc_8c0f5bc4:
	#data 0x00cc
	#align4

loc_8C0F5BC8:
	#data bank04.loc_8c044F12
loc_8C0F5BCC:
#data loc_8c0f5B84
loc_8C0F5BD0:
	#data 0x8C28C468
loc_8C0F5BD4:
	#data 0x8C26A910
loc_8C0F5BD8:
	#data 0x0000FFFf
loc_8C0F5BDc:
	#data 0x47800000
loc_8C0F5BE0:
	#data 0x43B40000
loc_8C0F5BE4:
	#data 0x3F000000
loc_8C0F5BE8:
	#data bank16.loc_8c162264
loc_8C0F5BEC:
	#data 0x8C26823c
loc_8C0F5BF0:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0F5BF4:
	mov.l r14,@-r15
	mov 0x05,r5 ; r5 set to 0x05
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	mov.l @(loc_8C0F5CFC,pc),r3 ; r3 set to 0x8C044F12
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C0F5CE4
	mov r0,r14
	mov.w @(loc_8C0F5CEC,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8C0F5D00,pc),r2 ; r2 set to 0x8C0F5E1c
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0F5CEE,pc),r3 ; r3 set to 0x524
	mov.l r2,@(0x10,r14)
	add r13,r3 ; r3 ??? bc r13 is ???
	mov.w @(loc_8C0F5CF0,pc),r2 ; r2 set to 0x5A4
	mov.l r13,@(0x18,r14)
	mov.w @(0x1E,r13),r0
	mov.b @r3,r3
	shll r0 ; r0 set to 0x258
	add r3,r0 ; r0 ??? bc r3 is ???
	mov.l @(loc_8C0F5D04,pc),r3 ; r3 set to 0x8C268340
	mul.l r2,r0
	sts macl,r0
	add r3,r0
	mov.l r0,@(0x14,r14)
	mov.w @(loc_8C0F5CEE,pc),r0 ; r0 set to 0x524
	mov.b @(r0,r13),r1
	mov 0x20,r0 ; r0 set to 0x20
	mov.b r1,@(r0,r14)
	mov.w @(0x1E,r13),r0
	mov.l @(loc_8C0F5D08,pc),r1 ; r1 set to 0x8C26A910
	mov r0,r3 ; r3 set to 0x20
	mov 0x21,r0 ; r0 set to 0x21
	mov.b r3,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt/s loc_8C0F5C56
	mov.l @r1,r4 ; r4 ??
	mov.w @(loc_8C0F5CF2,pc),r0 ; r0 set to 0x1A4
	mov.l @r4,r3
	mov.l @(r0,r3),r2 ; r2 ??? bc r3 is ???
	bra loc_8C0F5C5c
	nop

loc_8C0F5C56:
	mov.w @(loc_8C0F5CF4,pc),r0 ; r0 set to 0x188
	mov.l @r4,r3
	mov.l @(r0,r3),r2

loc_8C0F5C5C:
	mov.w @(loc_8C0F5CF6,pc),r0 ; r0 set to 0x84, r0 set to 0x84
	mov r14,r1
	add 0x34,r1
	mov.l r2,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	mov.b @(r0,r14),r2
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8C0F5D0C,pc),r3 ; r3 set to 0x8C162614, r3 set to 0x8C162614
	shll2 r2
	add r3,r2
	mov.l @(loc_8C0F5D10,pc),r3 ; r3 set to 0x8C1294C8, r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	mov.l @(loc_8C0F5D14,pc),r4 ; r4 set to 0x8C16262C, r4 set to 0x8C16262c
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???
	mov r14,r2
	add 0x40,r2
	extu.b r3,r3
	mov r3,r1
	shll r3
	add r1,r3
	shll2 r3
	add r4,r3
	mov.l @r3,r3
	mov.l r3,@r2
	mov.b @(r0,r14),r2
	mov 0x44,r0 ; r0 set to 0x44, r0 set to 0x44
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	shll2 r2
	add r4,r2
	mov.l @(0x04,r2),r1
	mov.l r1,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	mov.b @(r0,r14),r3
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	add r3,r4 ; r4 ??? bc r3 is ???, r4 ??? bc r3 is ???
	mov.l @(0x08,r4),r3
	mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48
	mov.w @(loc_8C0F5CF8,pc),r2 ; r2 set to 0x80F, r2 set to 0x80f
	mov.l r3,@(r0,r14)
	mov.w @(loc_8C0F5CFA,pc),r0 ; r0 set to 0xCC, r0 set to 0xCc
	mov.l @(loc_8C0F5D18,pc),r3 ; r3 set to 0x8C0F60C0, r3 set to 0x8C0F60C0
	mov.l r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C0F5D1C,pc),r2 ; r2 set to 0x8C0F5FBC, r2 set to 0x8C0F5FBc
	mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	mov.l @(loc_8C0F5D20,pc),r3 ; r3 set to 0x8C04257C, r3 set to 0x8C04257c
	mov.b @(r0,r14),r4
	mov.l @r15+,r13
	add 0x4C,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0F5CE4:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0F5CEC:
	#data 0x012c
loc_8C0F5CEE:
	#data 0x0524
loc_8C0F5CF0:
	#data 0x05A4
loc_8C0F5CF2:
	#data 0x01A4
loc_8C0F5CF4:
	#data 0x0188
loc_8C0F5CF6:
	#data 0x0084
loc_8C0F5CF8:
	#data 0x080f
loc_8C0F5CFA:
	#data 0x00Cc
	#align4

loc_8C0F5CFC:
	#data bank04.loc_8c044F12
loc_8C0F5D00:
	#data loc_8c0f5E1c
loc_8C0F5D04:
	#data 0x8C268340
loc_8C0F5D08:
	#data 0x8C26A910
loc_8C0F5D0C:
	#data bank16.loc_8c162614
loc_8C0F5D10:
	#data bank12.loc_8c1294C8
loc_8C0F5D14:
	#data bank16.loc_8c16262c
loc_8C0F5D18:
	#data loc_8c0f60C0
loc_8C0F5D1C:
	#data loc_8c0f5FBc
loc_8C0F5D20:
	#data bank04.loc_8c04257c

;==============================================
loc_8C0F5D24:
	mov.l r14,@-r15
	mov 0x05,r5 ; r5 set to 0x05
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	mov.l @(loc_8C0F5E7C,pc),r3 ; r3 set to 0x8C044F12
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C0F5E14
	mov r0,r14
	mov.w @(loc_8C0F5E6A,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8C0F5E80,pc),r2 ; r2 set to 0x8C0F5F50
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0F5E6C,pc),r3 ; r3 set to 0x524
	mov.l r2,@(0x10,r14)
	add r13,r3 ; r3 ??? bc r13 is ???
	mov.w @(loc_8C0F5E6E,pc),r2 ; r2 set to 0x5A4
	mov.l r13,@(0x18,r14)
	mov.w @(0x1E,r13),r0
	mov.b @r3,r3
	shll r0 ; r0 set to 0x258
	add r3,r0 ; r0 ??? bc r3 is ???
	mov.l @(loc_8C0F5E84,pc),r3 ; r3 set to 0x8C268340
	mul.l r2,r0
	sts macl,r0
	add r3,r0
	mov.l r0,@(0x14,r14)
	mov.w @(loc_8C0F5E6C,pc),r0 ; r0 set to 0x524
	mov.b @(r0,r13),r1
	mov 0x20,r0 ; r0 set to 0x20
	mov.b r1,@(r0,r14)
	mov.w @(0x1E,r13),r0
	mov.l @(loc_8C0F5E88,pc),r1 ; r1 set to 0x8C26A910
	mov r0,r3 ; r3 set to 0x20
	mov 0x21,r0 ; r0 set to 0x21
	mov.b r3,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt/s loc_8C0F5D86
	mov.l @r1,r4 ; r4 ??
	mov.w @(loc_8C0F5E70,pc),r0 ; r0 set to 0x1A4
	mov.l @r4,r3
	mov.l @(r0,r3),r2 ; r2 ??? bc r3 is ???
	bra loc_8C0F5D8c
	nop

loc_8C0F5D86:
	mov.w @(loc_8C0F5E72,pc),r0 ; r0 set to 0x188
	mov.l @r4,r3
	mov.l @(r0,r3),r2

loc_8C0F5D8C:
	mov.w @(loc_8C0F5E74,pc),r0 ; r0 set to 0x84, r0 set to 0x84
	mov r14,r1
	add 0x34,r1
	mov.l r2,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	mov.b @(r0,r14),r2
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8C0F5E8C,pc),r3 ; r3 set to 0x8C162614, r3 set to 0x8C162614
	shll2 r2
	add r3,r2
	mov.l @(loc_8C0F5E90,pc),r3 ; r3 set to 0x8C1294C8, r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	mov.l @(loc_8C0F5E94,pc),r4 ; r4 set to 0x8C16262C, r4 set to 0x8C16262c
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???
	mov r14,r2
	add 0x40,r2
	extu.b r3,r3
	mov r3,r1
	shll r3
	add r1,r3
	shll2 r3
	add r4,r3
	mov.l @r3,r3
	mov.l r3,@r2
	mov.b @(r0,r14),r2
	mov 0x44,r0 ; r0 set to 0x44, r0 set to 0x44
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	shll2 r2
	add r4,r2
	mov.l @(0x04,r2),r1
	mov.l r1,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	mov.b @(r0,r14),r3
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	add r3,r4 ; r4 ??? bc r3 is ???, r4 ??? bc r3 is ???
	mov.l @(0x08,r4),r3
	mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48
	mov.w @(loc_8C0F5E76,pc),r2 ; r2 set to 0x80F, r2 set to 0x80f
	mov.l r3,@(r0,r14)
	mov 0x01,r5 ; r5 set to 0x01, r5 set to 0x01
	mov.w @(loc_8C0F5E78,pc),r0 ; r0 set to 0xCC, r0 set to 0xCc
	mov.l @(loc_8C0F5E98,pc),r3 ; r3 set to 0x8C0F5FBC, r3 set to 0x8C0F5FBc
	mov.l r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C0F5E9C,pc),r2 ; r2 set to 0x8C0F6294, r2 set to 0x8C0F6294
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	mov.l @(loc_8C0F5EA0,pc),r3 ; r3 set to 0x8C04257C, r3 set to 0x8C04257c
	mov.b @(r0,r14),r4
	mov.l @r15+,r13
	add 0x4C,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0F5E14:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14

;=============================================
loc_8C0F5E1C:
	mov r4,r3
	mov.l @(loc_8C0F5EA4,pc),r1 ; r1 set to 0x8C162644
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;=============================================
loc_8C0F5E2E:
	mov 0x20,r0 ; r0 set to 0x20
	mov.w @(loc_8C0F5E7A,pc),r5 ; r5 set to 0x200
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8C0F5E4a
	mov 0x48,r0 ; r0 set to 0x48
	mov.l @(r0,r4),r3
	sub r5,r3
	mov r3,r2
	cmp/pl r2
	mov.l r3,@(r0,r4)
	bf loc_8C0F5E5a
	bra loc_8C0F5E66
	nop

loc_8c0f5e4a:
	mov 0x48,r0
	mov.l @(loc_8C0F5EA8,pc),r3
	mov.l @(r0,r4),r1
	add r5,r1
	mov r1,r2
	cmp/ge r3,r2
	mov.l r1,@(r0,r4)
	bf loc_8c0f5e66

loc_8c0f5e5a:
	mov.b @(0x04,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov 0x48,r0
	mov.l r3,@(r0,r4)

loc_8C0F5E66:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F5E6A:
	#data 0x012c
loc_8C0F5E6C:
	#data 0x0524
loc_8C0F5E6E:
	#data 0x05A4
loc_8C0F5E70:
	#data 0x01A4
loc_8C0F5E72:
	#data 0x0188
loc_8C0F5E74:
	#data 0x0084
loc_8C0F5E76:
	#data 0x080f
loc_8C0F5E78:
	#data 0x00Cc
loc_8C0F5E7A:
	#data 0x0200
	#align4

loc_8C0F5E7C:
	#data bank04.loc_8c044F12
loc_8C0F5E80:
	#data loc_8c0f5F50
loc_8C0F5E84:
	#data 0x8C268340
loc_8C0F5E88:
	#data 0x8C26A910
loc_8C0F5E8C:
	#data bank16.loc_8c162614
loc_8C0F5E90:
	#data bank12.loc_8c1294C8
loc_8C0F5E94:
	#data bank16.loc_8c16262c
loc_8C0F5E98:
	#data loc_8c0f5FBc
loc_8C0F5E9C:
	#data loc_8c0f6294
loc_8C0F5EA0:
	#data bank04.loc_8c04257c
loc_8C0F5EA4:
	#data bank16.loc_8c162644
loc_8c0f5ea8:
	#data 0x00010000

;==============================================
loc_8C0F5EAC:
	mov.b @(0x04,r4),r0
	mov 0x02,r2 ; r2 set to 0x02
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r3
	mov.l @(loc_8C0F5FA8,pc),r0 ; r0 set to 0x8C28C410
	extu.b r3,r3
	rts
	mov.b r2,@(r0,r3)

;=============================================
loc_8C0F5EC0:
	mov 0x20,r0
	mov.b @(r0,r4),r3
	mov 0x10,r1
	mov.l @(0xE4,PC),r0
	extu.b r3,r3
	mov.b @(r0,r3),r2
	mov 0x21,r0
	mov.b @(r0,r4),r3
	extu.b r2,r2
	extu.b r3,r3
	shad r3,r1
	tst r1,r2
	bt loc_8c0f5ee4
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x0A,r0
	mov.w r0,@(0x1C,r4)

loc_8C0F5EE4:
	rts
	nop

;=============================================
loc_8C0F5EE8:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	cmp/pl r0
	bt loc_8c0f5efa
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)


loc_8C0F5EFA:
	rts
	nop

;=============================================
loc_8C0F5EFE:
	mov 0x20,r0 ; r0 set to 0x20
	mov.w @(loc_8C0F5F9E,pc),r5 ; r5 set to 0x200
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8C0F5F1c
	mov 0x48,r0 ; r0 set to 0x48
	mov.w @(loc_8C0F5FA0,pc),r2 ; r2 set to 0x2000
	mov.l @(r0,r4),r3
	add r5,r3
	mov r3,r1
	cmp/ge r2,r1
	mov.l r3,@(r0,r4)
	bt loc_8C0F5F2c
	bra loc_8C0F5F38
	nop

loc_8c0f5f1c:
	mov 0x48,r0
	mov.w @(loc_8C0F5FA2,pc),r2
	mov.l @(r0,r4),r3
	sub r5,r3
	mov r3,r1
	cmp/gt r2,r1
	mov.l r3,@(r0,r4)
	bt loc_8c0f5f38

loc_8c0f5f2c:
	mov.b @(0x04,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8c0f5fa4,pc),r0
	mov.b r3,@(r0,r4)

loc_8C0F5F38:
	rts
	nop

;=============================================
loc_8C0F5F3C:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0F5FA4,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;=============================================
loc_8C0F5F4A:
	mov.l @(loc_8C0F5FB0,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;=============================================
loc_8C0F5F50:
	mov r4,r3
	mov.l @(loc_8C0F5FB4,pc),r1 ; r1 set to 0x8C162660
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;=============================================
loc_8C0F5F62:
	mov.b @(0x04,r4),r0
	mov 0x04,r2 ; r2 set to 0x04
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r3
	mov.l @(loc_8C0F5FA8,pc),r0 ; r0 set to 0x8C28C410
	extu.b r3,r3
	rts
	mov.b r2,@(r0,r3)

;=============================================
loc_8C0F5F76:
	mov.l @(0x40,PC),r1
	mov.b @r1,r3
	tst r3,r3
	bt loc_8c0f5f88
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x0A,r0
	mov.w r0,@(0x1C,r4)

loc_8C0F5F88:
	rts
	nop

;=============================================
loc_8C0F5F8C:
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r3
	mov 0x05,r2 ; r2 set to 0x05
	mov.l @(loc_8C0F5FA8,pc),r0 ; r0 set to 0x8C28C410
	extu.b r3,r3
	mov.b r2,@(r0,r3)
	mov.l @(loc_8C0F5FB0,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F5F9E:
	#data 0x0200
loc_8C0F5FA0:
	#data 0x2000
loc_8c0f5fa2:
	#data 0xE000
loc_8C0F5FA4:
	#data 0x012c
	#align4

loc_8C0F5FA8:
	#data 0x8C28C410
loc_8C0F5FAC:
	#data 0x8C28C412
loc_8C0F5FB0:
	#data bank04.loc_8c0450C0
loc_8C0F5FB4:
	#data bank16.loc_8c162660
loc_8C0F5Fb8:
	#data 0x8C28C442

;==============================================
loc_8C0F5FBC:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b r5,@r15
	mov 0x05,r5 ; r5 set to 0x05
	mov.l @(loc_8C0F60A0,pc),r3 ; r3 set to 0x8C044F12
	mov r4,r13
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C0F6060
	mov r0,r14
	mov.w @(loc_8C0F6096,pc),r0 ; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov.l @(loc_8C0F60A8,pc),r1 ; r1 set to 0x8C26A910
	mov.l r13,@(0x18,r14)
	mov.l @(0x14,r13),r3 ; r3 ??? bc r13 is ???
	mov.l r3,@(0x14,r14)
	mov.b r2,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(loc_8C0F60A4,pc),r3 ; r3 set to 0x8C0F606a
	mov.l r3,@(0x10,r14)
	mov.b @(r0,r13),r2 ; r2 ??? bc r13 is ???
	mov.b r2,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r13),r3 ; r3 ??? bc r13 is ???
	mov.b r3,@(r0,r14)
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @r15,r2
	mov.b r2,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r13),r2
	mov.l @r1,r3
	mov r14,r1 ; r1 ??? bc r14 is ???
	extu.b r2,r2
	mov.w @(loc_8C0F6098,pc),r0 ; r0 set to 0x1B8
	mov.l @r3,r3
	shll2 r2
	add 0x34,r1
	add r3,r2
	mov.l @(r0,r2),r2
	mov.w @(loc_8C0F609A,pc),r0 ; r0 set to 0x84
	mov.l r2,@(r0,r14)
	mov r13,r2
	mov.l @(loc_8C0F60AC,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov r13,r3 ; r3 ??? bc r13 is ???
	add 0x40,r3
	mov.l @r3,r1
	mov 0x44,r0 ; r0 set to 0x44
	mov r14,r2
	add 0x40,r2
	mov.l r1,@r2
	mov.l @(r0,r13),r3
	mov.l r3,@(r0,r14)
	mov 0x48,r0 ; r0 set to 0x48
	mov.l @(r0,r13),r2
	mov.w @(loc_8C0F609C,pc),r3 ; r3 set to 0x809
	mov.l r2,@(r0,r14)
	mov.w @(loc_8C0F609E,pc),r0 ; r0 set to 0xCc
	mov.l r3,@(r0,r14)
	mov.b @r15,r2
	tst r2,r2
	bt loc_8C0F6060
	mova @(loc_8C0F60B0,pc),r0  ; r0 set to 0x8C0F60B0
	mov r14,r4 ; r4 ??? bc r14 is ???
	fmov.s @r0,fr4
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r5 ; r5 ??? bc r14 is ???
	fldi0 fr5
	extu.b r5,r5
	add 0x6E,r5
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0F60B4,pc),r3 ; r3 set to 0x8C03D21a
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0F6060:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0F606A:
	mov r4,r3
	mov.l @(loc_8C0F60B8,pc),r1 ; r1 set to 0x8C162690
	mov.l r4,@-r15
	mov.l @(0x18,r3),r2
	mov.b @(0x04,r2),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0F607E:
	mov.w @(loc_8C0F6096,pc),r0 ; r0 set to 0x12c
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x48,r0 ; r0 set to 0x48
	mov.l @(0x18,r4),r3
	mov.l @(r0,r3),r2
	rts
	mov.l r2,@(r0,r4)

;=============================================
loc_8C0F6090:
	mov.l @(loc_8C0F60BC,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F6096:
	#data 0x012c
loc_8C0F6098:
	#data 0x01B8
loc_8C0F609A:
	#data 0x0084
loc_8C0F609C:
	#data 0x0809
loc_8C0F609E:
	#data 0x00Cc
	#align4

loc_8C0F60A0:
	#data bank04.loc_8c044F12
loc_8C0F60A4:
	#data loc_8c0f606a
loc_8C0F60A8:
	#data 0x8C26A910
loc_8C0F60AC:
	#data bank12.loc_8c1294C8
loc_8C0F60B0:
	#data 0x3E400000
loc_8C0F60B4:
	#data bank03.loc_8c03D21a
loc_8C0F60B8:
	#data bank16.loc_8c162690
loc_8C0F60BC:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0F60C0:
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
	add 0xFC,r15
	mov r4,r13
	mova @(0x130,PC),r0
	mov.l @(0x14,r13),r3
	mov 0x00,r12
	mov.w @(0x11A,PC),r11
	mov 0x03,r9
	mov.w @(0x114,PC),r8
	mov 0x01,r10
	mov.l r3,@r15
	mov r12,r14
	fmov @r0,fr14
	fldi1 fr15

loc_8C0F60EE:
	mov.l @(0x120,PC),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0f618c
	mov r0,r4
	mov.w @(0xFC,PC),r3
	mov.w @(0xFC,PC),r0
	add r13,r3
	mov.w @(0xFA,PC),r1
	mov.l r13,@(0x18,r4)
	mov.l r3,@(r0,r4)
	add 0x64,r0
	mov.l @(0x14,r13),r2
	mov.l @(0x104,PC),r3
	mov.l r2,@(0x14,r4)
	mov.b r10,@(r0,r4)
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r4)
	mov 0x21,r0
	mov.b r14,@(r0,r4)
	mov.l @r15,r0
	mov.l @(0xF4,PC),r2
	mov.b @(r0,r1),r0
	mov.b r0,@(0x1,r4)
	exts.w r14,r0
	mov.l @r2,r3
	shll2 r0
	mov.l @r3,r3
	add r3,r0
	mov.w @(0xCE,PC),r3
	mov.l @(r0,r3),r3
	mov.w @(0xCC,PC),r0
	mov.l r3,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r2
	extu.b r2,r2
	mov r2,r3
	shll2 r2
	shll r2
	exts.w r14,r1
	add r3,r2
	mov r1,r3
	shll r1
	add r3,r1
	mov.l @(0xC8,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(0xC8,PC),r3
	shll2 r1
	add r1,r2
	mov r4,r1
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x44,r0
	mov r4,r1
	add 0x40,r1
	mov.l r11,@r1
	mov.l r12,@(r0,r4)
	mov 0x48,r0
	mov.l r12,@(r0,r4)
	mov.w @(0x92,PC),r0
	mov.l r8,@(r0,r4)
	mov 0x50,r0
	fmov fr15,@(r0,r4)
	mov 0x54,r0
	fmov fr14,@(r0,r4)
	mov 0x58,r0
	bsr loc_8c0f61a4
	fmov fr15,@(r0,r4)
	add 0x01,r14
	exts.w r14,r2
	cmp/ge r9,r2
	bf loc_8c0f60ee

loc_8C0F618C:
	add 0x04,r15
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

;=============================================
loc_8C0F61A4:
	mov.l r14,@-r15
	mov 0x05,r5
	sts.l pr,@-r15
	mov.l @(0x64,PC),r3
	mov r4,r14
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0f628e
	mov r0,r4
	mov.w @(0x42,PC),r0
	mov.l @(0x68,PC),r1
	mov.l r14,@(0x18,r4)
	mov.l @(r0,r14),r3
	mov.l r3,@(r0,r4)
	mov 0x01,r3
	add 0x64,r0
	mov.l @(0x14,r14),r2
	mov.l r2,@(0x14,r4)
	mov.b r3,@(r0,r4)
	mov 0x20,r0
	mov.l @(0x50,PC),r2
	mov.l r2,@(0x10,r4)
	mov.b @(r0,r14),r3
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.b @(r0,r14),r2
	mov.l @(0x38,PC),r3
	mov.b r2,@(r0,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x29,r0
	mov.l @r1,r2
	mov.b @(r0,r2),r0
	tst r0,r0
	bt.s loc_8c0f622c
	mov.l @r3,r5
	mov.w @(0x16,PC),r0
	mov.l @r5,r3
	mov.l @(r0,r3),r2
	bra loc_8c0f6232
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f61fa:
	#data 0x0813
loc_8c0f61fc:
	#data 0x2000
loc_8c0f61fe:
	#data 0x0088
loc_8c0f6200:
	#data 0x00c8
loc_8c0f6202:
	#data 0x052c
loc_8c0f6204:
	#data 0x018c
loc_8c0f6206:
	#data 0x0084
loc_8c0f6208:
	#data 0x00cc
loc_8c0f620a:
	#data 0x01b0
	#align4

loc_8c0f620c:
	#data 0x3C23D70a
loc_8C0F6210:
	#data bank04.loc_8c044F12
loc_8C0F6214:
	#data loc_8c0f6368
loc_8C0F6218:
	#data 0x8C26A910
loc_8C0F621C:
	#data bank16.loc_8c1626A8
loc_8C0F6220:
	#data bank12.loc_8c1294C8
loc_8C0F6224:
	#data loc_8c0f6596
loc_8C0F6228:
	#data 0x8C26823c

;==============================================
loc_8C0F622C:
	mov.w @(0x156,PC),r0
	mov.l @r5,r3
	mov.l @(r0,r3),r2

loc_8C0F6232:
	mov.w @(0x152,PC),r0
	mov.l r2,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r2
	mov 0x21,r0
	mov.b @(r0,r4),r1
	extu.b r2,r2
	mov r2,r3
	shll2 r2
	shll r2
	extu.b r1,r1
	add r3,r2
	mov r1,r3
	shll r1
	add r3,r1
	mov.l @(0x144,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(0x144,PC),r3
	shll2 r1
	add r1,r2
	mov r4,r1
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x124,PC),r2
	mov r4,r1
	mov.w @(0x122,PC),r0
	add 0x40,r1
	fldi1 fr4
	mov.w @(0x118,PC),r3
	mov.l @(0x130,PC),r5
	mov.l r3,@r1
	mov.l r2,@(r0,r4)
	mov 0x50,r0
	fmov fr4,@(r0,r4)
	mova @(0x124,PC),r0
	fmov @r0,fr3
	mov 0x54,r0
	mov.l @(0x124,PC),r3
	fmov fr3,@(r0,r4)
	mov 0x58,r0
	fmov fr4,@(r0,r4)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8C0F628E:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0F6294:
	mov.l r14,@-r15
	mova @(0x108,PC),r0
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	mov r4,r12
	mov.l r11,@-r15
	mov r13,r14
	mov.l r10,@-r15
	mov 0x01,r10
	mov.l r9,@-r15
	mov 0x02,r9
	mov.l r8,@-r15
	mov 0x6B,r8
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	fmov @r0,fr14
	mov.w @(0xCE,PC),r11
	fldi1 fr15

loc_8C0F62BC:
	mov.l @(0xEC,PC),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0f6352
	mov r0,r4
	mov.w @(0xC0,PC),r3
	mov r8,r1
	mov.w @(0xBE,PC),r0
	add r12,r3
	mov.l r12,@(0x18,r4)
	mov.l r3,@(r0,r4)
	add 0x64,r0
	mov.l @(0x14,r12),r2
	mov.l @(0xD0,PC),r3
	mov.l r2,@(0x14,r4)
	mov.b r10,@(r0,r4)
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.b @(r0,r12),r2
	mov.l @(0xC8,PC),r3
	mov.b r2,@(r0,r4)
	mov 0x21,r0
	mov.b r14,@(r0,r4)
	exts.w r14,r2
	mov.l @r3,r0
	sub r2,r1
	shll2 r1
	mov.l @r0,r0
	mov.l @(r0,r1),r2
	mov.w @(0x88,PC),r0
	mov.l r2,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r2
	extu.b r2,r2
	mov r2,r1
	shll r2
	add r1,r2
	exts.w r14,r1
	mov r1,r3
	shll2 r2
	shll r2
	shll r1
	add r3,r1
	mov.l @(0x9C,PC),r3
	shll2 r1
	add r3,r2
	mov.l @(0x7C,PC),r3
	add r1,r2
	mov r4,r1
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x44,r0
	mov.w @(0x5C,PC),r3
	add 0x01,r14
	mov r4,r1
	add 0x40,r1
	mov.l r11,@r1
	mov.l r13,@(r0,r4)
	mov 0x48,r0
	mov.l r13,@(r0,r4)
	mov.w @(0x4E,PC),r0
	mov.l r3,@(r0,r4)
	mov 0x50,r0
	fmov fr15,@(r0,r4)
	mov 0x54,r0
	exts.w r14,r3
	fmov fr14,@(r0,r4)
	cmp/ge r9,r3
	mov 0x58,r0
	bf.s loc_8c0f62bc
	fmov fr15,@(r0,r4)

loc_8C0F6352:
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

;=============================================
loc_8C0F6368:
	mov r4,r3
	mov.l @(loc_8C0F63BC,pc),r1 ; r1 set to 0x8C16283c
	mov.l r4,@-r15
	mov.l @(0x18,r3),r2
	mov.b @(0x04,r2),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0F637C:
	mov.w @(loc_8C0F6394,pc),r0 ; r0 set to 0x12c
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	rts
	mov.b r2,@(r0,r4)

;=============================================
loc_8c0f6386:
	#data 0x0198
loc_8c0f6388:
	#data 0x0084
loc_8c0f638a:
	#data 0x2000
loc_8c0f638c:
	#data 0x0813
loc_8c0f638e:
	#data 0x00CC
loc_8c0f6390:
	#data 0x0088
loc_8c0f6392:
	#data 0x00C8
loc_8C0F6394:
	#data 0x012c
	#align4

loc_8C0F6398:
	#data bank16.loc_8c1626A8
loc_8C0F639C:
	#data bank12.loc_8c1294C8
loc_8C0F63a0:
	#data 0x3C23D70a
loc_8C0F63A4:
	#data loc_8c0f65E8
loc_8C0F63A8:
	#data bank03.loc_8c0305Ca
loc_8C0F63AC:
	#data bank04.loc_8c044F12
loc_8C0F63B0:
	#data loc_8c0f649a
loc_8C0F63b4:
	#data 0x8C26A910
loc_8C0F63B8:
	#data bank16.loc_8c1626F0
loc_8C0F63BC:
	#data bank16.loc_8c16283c

;==============================================
loc_8C0F63C0:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C0F63Da
	cmp/eq 0x01,r0
	bt loc_8C0F63F4
	cmp/eq 0x02,r0
	bt loc_8C0F6412
	bra loc_8C0F6412
	nop

loc_8c0f63da:
	mov.b @(0x05,r14),r0
	mov 0x00,r5
	mov.l @(loc_8c0f64b0,pc),r3
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c0f64b4,pc),r2
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c0f64b8,pc),r3
	jsr @r3
	mov r14,r4

loc_8c0f63f4:
	mov.l @(loc_8c0f64bc,pc),r1
	mov 0x54,r0
	fmov.s @(r0,r14),fr2
	lds r1,fpul
	fldi1 fr4
	fsts fpul,fr3
	fadd fr3,fr2
	fcmp/gt fr2,fr4
	bt/s loc_8c0f6412
	fmov.s fr2,@(r0,r14)
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x54,r0
	fmov.s fr4,@(r0,r14)

loc_8C0F6412:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0F6418:
	mov.l @(0x18,r4),r3
	mov 0x48,r0 ; r0 set to 0x48
	mov.l @(r0,r3),r2
	mov.l r2,@(r0,r4)
	mova @(loc_8C0F64BC,pc),r0  ; r0 set to 0x8C0F64Bc
	fmov.s @r0,fr4
	mov.b @(0x06,r4),r0
	extu.b r0,r0 ; r0 set to 0xBc
	cmp/eq 0x00,r0
	bt/s loc_8C0F643e
	mov 0x63,r5 ; r5 set to 0x63
	cmp/eq 0x01,r0
	bt loc_8C0F6458
	cmp/eq 0x02,r0
	bt loc_8C0F6474
	cmp/eq 0x63,r0
	bt loc_8C0F6490
	bra loc_8C0F6490
	nop

loc_8C0F643E:
	mov.w @(loc_8C0F64AE,pc),r0 ; r0 set to 0x4C9
	mov.l @(0x14,r4),r3
	mov.b @(r0,r3),r2
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r4),r3
	extu.b r3,r3
	cmp/eq r3,r2
	bf loc_8C0F6452
	bra loc_8C0F6454
	mov 0x01,r0

loc_8C0F6452:
	mov 0x02,r0 ; r0 set to 0x02

loc_8C0F6454:
	bra loc_8C0F6490
	mov.b r0,@(0x06,r4)

loc_8C0F6458:
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r4),fr3
	fadd fr4,fr3
	fldi1 fr4
	fmov fr3,fr2
	fcmp/gt fr2,fr4
	bt/s loc_8C0F6490
	fmov.s fr3,@(r0,r4)
	mov r5,r0 ; r0 ??? bc r5 is ???
	nop
	mov.b r0,@(0x06,r4)
	mov 0x54,r0 ; r0 set to 0x54
	bra loc_8C0F6490
	fmov.s fr4,@(r0,r4)

loc_8c0f6474:
	mov 0x54,r0
	fldi0 fr2
	fmov.s @(r0,r4),fr3
	fsub fr4,fr3
	fcmp/gt fr2,fr3
	bt/s loc_8c0f6490
	fmov.s fr3,@(r0,r4)
	mov r5,r0
	nop
	mov.b r0,@(0x06,r4)
	mova @(loc_8C0F64C0,pc),r0
	fmov.s @r0,fr3
	mov 0x54,r0
	fmov.s fr3,@(r0,r4)

loc_8C0F6490:
	rts
	nop

;=============================================
loc_8C0F6494:
	mov.l @(loc_8C0F64C4,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8C0F649A:
	mov r4,r3
	mov.l @(loc_8C0F64C8,pc),r1 ; r1 set to 0x8C162854
	mov.l r4,@-r15
	mov.l @(0x18,r3),r2
	mov.b @(0x04,r2),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F64AE:
	#data 0x04C9
	#align4

loc_8C0F64B0:
	#data loc_8c0f69F0
loc_8C0F64B4:
	#data loc_8c0f6CF8
loc_8C0F64B8:
	#data loc_8c0f7E0c
loc_8C0F64BC:
	#data 0x3DCCCCCd
loc_8c0f64c0:
	#data 0x3C23D70a
loc_8C0F64C4:
	#data bank04.loc_8c0450C0
loc_8C0F64C8:
	#data bank16.loc_8c162854

;==============================================
loc_8C0F64CC:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C0F64E6
	cmp/eq 0x01,r0
	bt loc_8C0F64F4
	cmp/eq 0x02,r0
	bt loc_8C0F6512
	bra loc_8C0F6512
	nop

loc_8c0f64e6:
	mov.b @(0x05,r14),r0
	mov 0x01,r5
	mov.l @(loc_8c0f65d0,pc),r3
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	jsr @r3
	mov r14,r4

loc_8c0f64f4:
	mov.l @(loc_8c0f65d4,pc),r1
	mov 0x54,r0
	fmov.s @(r0,r14),fr2
	lds r1,fpul
	fldi1 fr4
	fsts fpul,fr3
	fadd fr3,fr2
	fcmp/gt fr2,fr4
	bt/s loc_8c0f6512
	fmov.s fr2,@(r0,r14)
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x54,r0
	fmov.s fr4,@(r0,r14)

loc_8C0F6512:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0F6518:
	mov.l @(0x18,r4),r3
	mov 0x48,r0 ; r0 set to 0x48
	mov.l @(r0,r3),r2
	mov.l r2,@(r0,r4)
	mova @(loc_8C0F65D4,pc),r0  ; r0 set to 0x8C0F65D4
	fmov.s @r0,fr4
	mov.b @(0x06,r4),r0
	extu.b r0,r0 ; r0 set to 0xD4
	cmp/eq 0x00,r0
	bt/s loc_8C0F653e
	mov 0x63,r5 ; r5 set to 0x63
	cmp/eq 0x01,r0
	bt loc_8C0F655a
	cmp/eq 0x02,r0
	bt loc_8C0F6576
	cmp/eq 0x63,r0
	bt loc_8C0F6592
	bra loc_8C0F6592
	nop

loc_8C0F653E:
	mov.l @(loc_8C0F65D8,pc),r2 ; r2 set to 0x8C26823c
	mov.w @(loc_8C0F65CC,pc),r0 ; r0 set to 0x89
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r4),r3
	extu.b r3,r3
	cmp/eq r3,r1
	bf loc_8C0F6554
	bra loc_8C0F6556
	mov 0x01,r0

loc_8C0F6554:
	mov 0x02,r0 ; r0 set to 0x02

loc_8C0F6556:
	bra loc_8C0F6592
	mov.b r0,@(0x06,r4)

loc_8C0F655A:
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r4),fr3
	fadd fr4,fr3
	fldi1 fr4
	fmov fr3,fr2
	fcmp/gt fr2,fr4
	bt/s loc_8C0F6592
	fmov.s fr3,@(r0,r4)
	mov r5,r0 ; r0 ??? bc r5 is ???
	nop
	mov.b r0,@(0x06,r4)
	mov 0x54,r0 ; r0 set to 0x54
	bra loc_8C0F6592
	fmov.s fr4,@(r0,r4)

loc_8c0f6576:
	mov 0x54,r0
	fldi0 fr2
	fmov.s @(r0,r4),fr3
	fsub fr4,fr3
	fcmp/gt fr2,fr3
	bt/s loc_8c0f6592
	fmov.s fr3,@(r0,r4)
	mov r5,r0
	nop
	mov.b r0,@(0x06,r4)
	mova @(loc_8C0F65DC,pc),r0
	fmov.s @r0,fr3
	mov 0x54,r0
	fmov.s fr3,@(r0,r4)

loc_8C0F6592:
	rts
	nop

;=============================================
loc_8C0F6596:
	add 0xFC,r15
	mov.l @(0x18,r4),r3
	mov.l @(loc_8C0F65E0,pc),r1 ; r1 set to 0x8C16286c
	mov.l @(0x18,r3),r2
	mov r2,r3
	mov.l r2,@r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0F65AE:
	mov.w @(loc_8C0F65CE,pc),r0 ; r0 set to 0x12c
	mov r4,r1
	sts.l pr,@-r15
	mov.l @(0x18,r4),r3
	add 0x50,r1
	mov.b @(r0,r3),r2
	mov.l @(loc_8C0F65E4,pc),r3 ; r3 set to 0x8C1294C8
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F65CC:
	#data 0x0089
loc_8C0F65CE:
	#data 0x012c
	#align4

loc_8C0F65D0:
	#data loc_8c0f69F0
loc_8C0F65D4:
	#data 0x3DCCCCCd
loc_8C0F65D8:
	#data 0x8C26823c
loc_8c0f65dc:
	#data 0x3C23D70a
loc_8C0F65E0:
	#data bank16.loc_8c16286c
loc_8C0F65E4:
	#data bank12.loc_8c1294C8

;==============================================
loc_8C0F65E8:
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	add 0xFC,r15
	mov.b @(0x01,r4),r0
	mov 0x21,r5 ; r5 set to 0x21
	add r4,r5 ; r5 ??? bc r4 is ???
	mov.l @(loc_8C0F6650,pc),r2 ; r2 set to 0x8C26823c
	extu.b r0,r0
	mov.b @r5,r5
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(loc_8C0F6648,pc),r3 ; r3 set to 0x8C162788
	extu.b r5,r5
	add r0,r3 ; r3 ??? bc r0 is ???
	add r3,r5
	mov.l @(loc_8C0F664C,pc),r3 ; r3 set to 0x8C162720
	mov.b @r5,r5
	mov 0x04,r0 ; r0 set to 0x04
	mov r3,r6 ; r6 set to 0x8C162720
	mov.l r3,@r15
	exts.b r5,r7
	fmov.s @r6,fr3 ; r3 ??
	shll2 r7
	fmov.s @(r0,r6),fr14
	shll r7
	add r3,r7
	mov.l @r2,r3
	fmov.s @r7,fr15
	fsub fr3,fr15
	fmov.s @(r0,r7),fr3
	mov 0x29,r0 ; r0 set to 0x29
	mov.b @(r0,r3),r1
	tst r1,r1
	bt/s loc_8C0F6638
	fsub fr3,fr14
	fmov fr15,fr4
	fmov fr14,fr5
	bra loc_8C0F663e
	mov 0x6D,r5

loc_8C0F6638:
	mov 0x67,r5 ; r5 set to 0x67
	fmov fr15,fr4
	fmov fr14,fr5 ; r5 ??? bc r14 is ???

loc_8C0F663E:
	add 0x04,r15
	mov.l @(loc_8C0F6654,pc),r3 ; r3 set to 0x8C03D21A, r3 set to 0x8C03D21a
	fmov.s @r15+,fr14
	jmp @r3
	fmov.s @r15+,fr15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C0F6648:
	#data bank16.loc_8c162788
loc_8C0F664C:
	#data bank16.loc_8c162720
loc_8C0F6650:
	#data 0x8C26823c
loc_8C0F6654:
	#data bank03.loc_8c03D21a

;==============================================
loc_8C0F6658:
	mov.l r14,@-r15
	mov 0x05,r5
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	mov.l @(0xF8,PC),r3
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0f66c6
	mov r0,r14
	mov.w @(0xDC,PC),r0
	mov 0x01,r2
	mov.l @(0xE8,PC),r3
	mov.b r2,@(r0,r14)
	add 0x9C,r0
	mov.w @(0xD4,PC),r2
	mov.l r3,@(0x10,r14)
	add r13,r2
	mov.l @(0xE0,PC),r1
	fldi0 fr4
	mov.l r13,@(0x18,r14)
	mov.l r2,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov.b @(r0,r13),r3
	mov.l @(0xD4,PC),r0
	extu.b r3,r3
	mov.l @r1,r2
	shll r3
	mov.b @(r0,r3),r3
	mov.l @r2,r2
	extu.b r3,r3
	mov.w @(0xB2,PC),r0
	shll2 r3
	add r2,r3
	mov.l @(r0,r3),r3
	mov.w @(0xAC,PC),r0
	mov.l r3,@(r0,r14)
	mov 0x34,r0
	fmov fr4,@(r0,r14)
	mov 0x38,r0
	fmov fr4,@(r0,r14)
	mov 0x3C,r0
	fmov fr4,@(r0,r14)
	mov 0x21,r0
	mov.l @(0xB0,PC),r3
	mov.b @(r0,r14),r5
	jsr @r3
	mov r14,r4
	mov.w @(0x96,PC),r0
	mov.w @(0x92,PC),r2
	mov.l r2,@(r0,r14)

loc_8C0F66C6:
	mov r14,r0
	nop 
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0F66D2:
	sts.l pr,@-r15
	bsr loc_8c0f6658
	nop 
	tst r0,r0
	bt.s loc_8c0f66e2
	mov r0,r5
	mov.l @(0x90,PC),r3
	mov.l r3,@(0x10,r5)
 
loc_8C0F66E2:
	lds.l @r15+,pr
	rts
	nop

;=============================================
loc_8C0F66E8:
	mov r4,r3
	mov.l @(loc_8C0F6774,pc),r1 ; r1 set to 0x8C162884
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;=============================================
loc_8C0F66FA:
	mova @(0x7C,PC),r0
	mov.l @(0x18,r4),r5
	fmov @r0,fr3
	mov 0x3C,r0
	fmov @(r0,r5),fr2
	fcmp/gt fr2,fr3
	bt loc_8c0f6712
	mov.b @(0x4,r5),r0
	mov 0x02,r3
	extu.b r0,r0
	cmp/ge r3,r0
	bf loc_8c0f671e

loc_8C0F6712:
	mov.w @(0x3A,PC),r0
	mov 0x00,r1
	mov.b r1,@(r0,r4)
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)

loc_8C0F671E:
	rts
	nop

;=============================================
loc_8C0F6722:
	mov.l @(loc_8C0F677C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;=============================================
loc_8C0F6728:
	mov.w @(loc_8C0F6750,pc),r0 ; r0 set to 0x12c
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.b @(0x04,r4),r0
	tst r0,r0
	bf loc_8C0F6746
	mov.w @(loc_8C0F6750,pc),r0 ; r0 set to 0x12c
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8C0F674c
	mov.b @(0x04,r4),r0
	add 0x01,r0 ; r0 set to 0x12d
	bra loc_8C0F674c
	mov.b r0,@(0x04,r4)

loc_8C0F6746:
	mov.l @(loc_8C0F677C,pc),r2 ; r2 set to 0x8C0450C0
	jmp @r2
	nop

loc_8C0F674C:
	rts
	nop

;=============================================
loc_8c0f6750:
	#data 0x012c
loc_8c0f6752:
	#data 0x0088
loc_8c0f6754:
	#data 0x01e4
loc_8c0f6756:
	#data 0x0084
loc_8c0f6758:
	#data 0x0805
loc_8c0f675a:
	#data 0x00cc
	#align4

loc_8C0F675C:
	#data bank04.loc_8c044F12
loc_8C0F6760:
	#data loc_8c0f66E8
loc_8C0F6764:
	#data 0x8C26A910
loc_8C0F6768:
	#data {bank13.loc_8c13b7D4 + 1}
loc_8C0F676C:
	#data loc_8c0f3D50
loc_8C0F6770:
	#data loc_8c0f6728
loc_8C0F6774:
	#data bank16.loc_8c162884
loc_8C0F6778:
	#data 0x432A0000
loc_8C0F677C:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0F6780:
	mov.l r14,@-r15
	mova @(0xEC,PC),r0
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	mov r13,r14
	mov.l r11,@-r15
	mov 0x11,r11
	mov.l r10,@-r15
	mov 0x01,r12
	mov.l r9,@-r15
	mov.l r8,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	mov.w @(0xC2,PC),r10
	fmov @r0,fr14
	mov.w @(0xBC,PC),r9
	mov.l @(0xC4,PC),r8
	fldi0 fr15

loc_8C0F67A8:
	mov 0x05,r5
	mov 0x01,r6
	jsr @r8
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0f6800
	mov r0,r4
	mov.w @(0xAC,PC),r0
	extu.b r14,r5
	mov.l @(0xB8,PC),r3
	shll2 r5
	mov.b r12,@(r0,r4)
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov r4,r3
	mov.b r14,@(r0,r4)
	mov 0x34,r0
	fmov fr15,@(r0,r4)
	mov 0x38,r0
	fmov fr14,@(r0,r4)
	mov 0x3C,r0
	fmov fr15,@(r0,r4)
	add 0x40,r3
	mov.l @(0xA0,PC),r0
	mov 0x44,r2
	mov.l r13,@r3
	add r4,r2
	mov.l @(r0,r5),r3
	mov 0x48,r0
	mov.l r3,@r2
	mov.l @(0x94,PC),r3
	mov.l r13,@(r0,r4)
	mov.l @r3,r0
	mov.l @r0,r0
	add r5,r0
	mov.l @(r0,r9),r2
	mov.w @(0x74,PC),r0
	mov.l r2,@(r0,r4)
	add 0x48,r0
	add 0x01,r14
	extu.b r14,r2
	cmp/ge r11,r2
	bf.s loc_8c0f67a8
	mov.l r10,@(r0,r4)

loc_8C0F6800:
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

;=============================================
loc_8C0F6816:
	mov r4,r3
	mov.l @(loc_8C0F6880,pc),r1 ; r1 set to 0x8C1628D0
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;=============================================
loc_8C0F6828:
	mov.l @(loc_8C0F6884,pc),r2 ; r2 set to 0x8C26823c
	mov.l @r2,r3
	mov.b @(0x03,r3),r0
	mov 0x02,r3 ; r3 set to 0x02
	cmp/ge r3,r0
	bf loc_8C0F6842
	mov.b @(0x04,r4),r0
	mov 0x00,r1 ; r1 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0F6866,pc),r0 ; r0 set to 0x12c
	bra loc_8C0F6850
	mov.b r1,@(r0,r4)

loc_8C0F6842:
	mov 0x44,r0 ; r0 set to 0x44
	mov.w @(loc_8C0F686A,pc),r1 ; r1 set to 0x100
	mov.l @(r0,r4),r0 ; r0 ??? bc r4 is ???
	mov 0x44,r2 ; r2 set to 0x44
	add r4,r2 ; r2 ??? bc r4 is ???
	sub r1,r0
	mov.l r0,@r2

loc_8C0F6850:
	rts
	nop

;=============================================
loc_8C0F6854:
	mov.b @(0x04,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x04,r4)

;=============================================
loc_8C0F685C:
	mov.l @(loc_8C0F6888,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f6862:
	#data 0x0218
loc_8c0f6864:
	#data 0x0805
loc_8c0f6866:
	#data 0x012c
loc_8c0f6868:
	#data 0x0084
loc_8c0f686a:
	#data 0x0100
	#align4

loc_8C0F686C:
	#data bank04.loc_8c044F12
loc_8C0F6870:
	#data 0x43C80000
loc_8C0F6874:
	#data loc_8c0f6816
loc_8C0F6878:
	#data bank16.loc_8c16288c
loc_8C0F687c:
	#data 0x8C26A910
loc_8C0F6880:
	#data bank16.loc_8c1628D0
loc_8C0F6884:
	#data 0x8C26823c
loc_8C0F6888:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0F688C:
	mov.l r14,@-r15
	mov 0x05,r5
	sts.l pr,@-r15
	mov.l @(0x138,PC),r3
	mov r4,r14
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0f6916
	mov r0,r4
	mov.w @(0x114,PC),r0
	mov 0x01,r3
	mov.l @(0x12C,PC),r1
	mov.b r3,@(r0,r4)
	add 0x9C,r0
	mov.w @(0x10C,PC),r3
	mov.l r14,@(0x18,r4)
	add r14,r3
	mov.l r3,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov.b r2,@(r0,r4)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov.l @(0x110,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x20,r0
	mov.l r2,@(0x10,r4)
	mov.b @(r0,r14),r2
	add 0x64,r0
	mov.l @r1,r3
	extu.b r2,r2
	mov.l @r3,r3
	shll2 r2
	add r3,r2
	mov.l @(0x8,r2),r3
	mov.l r3,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r14),r2
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(0xF0,PC),r3
	shll2 r2
	mov r4,r1
	add r3,r2
	mov.l @(0xEC,PC),r3
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x48,r0
	mov.w @(0xC4,PC),r3
	mov 0x00,r1
	fldi1 fr4
	mov.l r1,@(r0,r4)
	mov.w @(0xBE,PC),r0
	mov.l r3,@(r0,r4)
	mov 0x50,r0
	fmov fr4,@(r0,r4)
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	mov 0x58,r0
	fmov fr4,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov 0x22,r0
	mov.b r3,@(r0,r4)

loc_8C0F6916:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0F691C:
	mov r4,r3
	mov.l @(loc_8C0F69E0,pc),r1 ; r1 set to 0x8C1628F4
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0F692E:
	mov 0x20,r0 ; r0 set to 0x20
	mov.w @(loc_8C0F69C2,pc),r5 ; r5 set to 0x400
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8C0F6942
	mov 0x48,r0 ; r0 set to 0x48
	mov.l @(r0,r4),r3
	sub r5,r3
	bra loc_8C0F694a
	mov.l r3,@(r0,r4)

loc_8c0f6942:
	mov 0x48,r0
	mov.l @(r0,r4),r1
	add r5,r1
	mov.l r1,@(r0,r4)

loc_8c0f694a:
	mov 0x20,r0
	mov.b @(r0,r4),r3
	mov 0x01,r1
	mov.l @(loc_8C0F69E4,pc),r0
	extu.b r3,r3
	mov.b @(r0,r3),r2
	mov 0x21,r0
	mov.b @(r0,r4),r3
	extu.b r2,r2
	extu.b r3,r3
	shad r3, r1
	tst r1,r2
	bt loc_8c0f6994
	mov.b @(0x04,r4),r0
	mov.l @(loc_8C0F69D4,pc),r2
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.l @(0x18,r4),r1
	mov.l @r2,r3
	mov.b @(0x01,r1),r0
	mov.l @(loc_8c0f69e8,pc),r1
	extu.b r0,r0
	mov.l @r3,r3
	shll r0
	mov.b @(r0,r1),r1
	mov.w @(loc_8C0F69C4,pc),r0
	extu.b r1,r1
	shll2 r1
	add r3,r1
	mov.w @(loc_8C0F69C8,pc),r3
	mov.l @(r0,r1),r1
	mov.w @(loc_8C0F69C6,pc),r0
	mov.l r1,@(r0,r4)
	add 0x48,r0
	mov.l r3,@(r0,r4)
	mov 0x14,r0
	mov.w r0,@(0x1C,r4)

loc_8c0f6994:
	rts
	nop

;=============================================
loc_8c0f6998:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	cmp/pl r0
	bt loc_8c0f69b0
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0xA,PC),r0
	mov.b r3,@(r0,r4)

loc_8c0f69b0:
	rts
	nop

;=============================================
loc_8C0F69B4:
	mov.l @(loc_8C0F69EC,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f69ba:
	#data 0x012c
loc_8c0f69bc:
	#data 0x0088
loc_8c0f69be:
	#data 0x0819
loc_8c0f69c0:
	#data 0x00cc
loc_8C0F69C2:
	#data 0x0400
loc_8c0f69c4:
	#data 0x01E0
loc_8c0f69c6:
	#data 0x0084
loc_8c0f69c8:
	#data 0x0810
	#align4

loc_8C0F69CC:
	#data bank04.loc_8c044F12
loc_8C0F69D0:
	#data loc_8c0f691c
loc_8c0f69d4:
	#data 0x8C26A910
loc_8C0F69D8:
	#data bank16.loc_8c1628Dc
loc_8C0F69DC:
	#data bank12.loc_8c1294C8
loc_8C0F69E0:
	#data bank16.loc_8c1628F4
loc_8c0f69e4:
	#data 0x8C28C412
loc_8C0F69E8:
	#data {bank13.loc_8c13b7D4 + 1}
loc_8C0F69EC:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0F69F0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b r5,@r15
	mov 0x05,r5 ; r5 set to 0x05
	mov.l @(loc_8C0F6B28,pc),r3 ; r3 set to 0x8C044F12
	mov r4,r13
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C0F6A8c
	mov r0,r14
	mov.w @(loc_8C0F6B16,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8C0F6B2C,pc),r1 ; r1 set to 0x8C26A910
	mov.b r3,@(r0,r14)
	add 0x9C,r0 ; r0 set to 0xC8
	mov.w @(loc_8C0F6B18,pc),r3 ; r3 set to 0x88
	mov.l @(0x18,r13),r2
	add r13,r3 ; r3 ??? bc r13 is ???
	mov.l r2,@(0x18,r14)
	mov.l r3,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(0x14,r13),r2
	mov.l r2,@(0x14,r14)
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov.l @r1,r3
	mov.w @(loc_8C0F6B1A,pc),r0 ; r0 set to 0x2Bc
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov.w @(loc_8C0F6B1C,pc),r0 ; r0 set to 0x84
	mov.l r3,@(r0,r14)
	mov.b @r15,r2
	tst r2,r2
	bt loc_8C0F6A48
	mov.l @(loc_8C0F6B30,pc),r2 ; r2 set to 0x8C0F6B7c
	bra loc_8C0F6A4c
	mov.l r2,@(0x10,r14)

loc_8C0F6A48:
	mov.l @(loc_8C0F6B34,pc),r0 ; r0 set to 0x8C0F6A96
	mov.l r0,@(0x10,r14)

loc_8C0F6A4C:
	mov.w @(loc_8C0F6B20,pc),r0 ; r0 set to 0xCC, r0 set to 0xCc
	mov 0x00,r4 ; r4 set to 0x00, r4 set to 0x00
	mov.w @(loc_8C0F6B1E,pc),r3 ; r3 set to 0x810, r3 set to 0x810
	fldi1 fr4
	mov.l r3,@(r0,r14)
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	fmov.s fr4,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
	fmov.s fr4,@(r0,r14)
	mov 0x58,r0 ; r0 set to 0x58, r0 set to 0x58
	fmov.s fr4,@(r0,r14)
	mov 0x22,r0 ; r0 set to 0x22, r0 set to 0x22
	mov.b r4,@(r0,r14)
	mov r4,r0 ; r0 set to 0x00, r0 set to 0x00
	nop
	mov.w r0,@(0x1C,r14)
	mov 0x06,r3 ; r3 set to 0x06, r3 set to 0x06
	mov.w r0,@(0x1E,r14)
	mov.w @(loc_8C0F6B22,pc),r0 ; r0 set to 0xD0, r0 set to 0xD0
	mov.l r3,@(r0,r14)
	mova @(loc_8C0F6B38,pc),r0  ; r0 set to 0x8C0F6B38, r0 set to 0x8C0F6B38
	fmov.s @r0,fr3 ; r3 ??, r3 ??
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fmov.s fr3,@(r0,r14)
	add 0x28,r0 ; r0 set to 0x84, r0 set to 0x84
	mov.l @(r0,r14),r4 ; r4 ??? bc r14 is ???, r4 ??? bc r14 is ???
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0F6B3C,pc),r3 ; r3 set to 0x8C108210, r3 set to 0x8C108210
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0F6A8C:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0F6A96:
	mov r4,r3
	mov.l @(loc_8C0F6B40,pc),r1 ; r1 set to 0x8C162900
	mov.l r4,@-r15
	mov.l @(0x18,r3),r2
	mov.b @(0x04,r2),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0F6AAA:
	mov.w @(loc_8C0F6B16,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	rts
	mov.b r3,@(r0,r4)

;=============================================
loc_8C0F6AB2:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C0F6AC8
	cmp/eq 0x01,r0
	bt loc_8C0F6ACe
	bra loc_8C0F6AFa
	nop

loc_8C0F6AC8:
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)

loc_8C0F6ACE:
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	mov.l @(0x14,r14),r4
	mov.b @(r0,r14),r3
	mov.w @(loc_8C0F6B24,pc),r0 ; r0 set to 0x4C9, r0 set to 0x4C9
	extu.b r3,r3
	mov.b @(r0,r4),r2
	cmp/eq r2,r3
	bt/s loc_8C0F6AE8
	mov r14,r4
	mov.w @(loc_8C0F6B16,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	mov 0x00,r2 ; r2 set to 0x00, r2 set to 0x00
	bra loc_8C0F6AEe
	mov.b r2,@(r0,r14)

loc_8C0F6AE8:
	mov.w @(loc_8C0F6B16,pc),r0 ; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r14)

loc_8C0F6AEE:
	bsr loc_8C0F6BE0
	nop
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0F6C58
	mov.l @r15+,r14

loc_8C0F6AFA:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0F6B00:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C0F6B44
	cmp/eq 0x01,r0
	bt loc_8C0F6B58
	bra loc_8C0F6B64
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F6B16:
	#data 0x012c
loc_8C0F6B18:
	#data 0x0088
loc_8C0F6B1A:
	#data 0x02Bc
loc_8C0F6B1C:
	#data 0x0084
loc_8C0F6B1E:
	#data 0x0810
loc_8C0F6B20:
	#data 0x00Cc
loc_8C0F6B22:
	#data 0x00D0
loc_8C0F6B24:
	#data 0x04C9
	#align4

loc_8C0F6B28:
	#data bank04.loc_8c044F12
loc_8C0F6B2C:
	#data 0x8C26A910
loc_8C0F6B30:
	#data loc_8c0f6B7c
loc_8C0F6B34:
	#data loc_8c0f6A96
loc_8C0F6B38:
	#data 0x3C23D70a
loc_8C0F6B3C:
	#data bank10.loc_8c108210
loc_8C0F6B40:
	#data bank16.loc_8c162900

;==============================================
loc_8C0F6B44:
	mov.b @(0x06,r14),r0
	mov 0x03,r3 ; r3 set to 0x03
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_8C0F6C40,pc),r0 ; r0 set to 0xD0
	mov.l r3,@(r0,r14)
	mova @(loc_8C0F6C44,pc),r0  ; r0 set to 0x8C0F6C44
	fmov.s @r0,fr3 ; r3 ??
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr3,@(r0,r14)

loc_8C0F6B58:
	bsr loc_8C0F6BE0
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0F6C58
	mov.l @r15+,r14

loc_8C0F6B64:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0F6B6A:
	mov.w @(loc_8C0F6C42,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	rts
	mov.b r3,@(r0,r4)

;=============================================
loc_8C0F6B72:
	mov.l @(loc_8C0F6C48,pc),r3 ; r3 set to 0x8C0450C0
	mov 0x00,r2 ; r2 set to 0x00
	mov.w @(loc_8C0F6C42,pc),r0 ; r0 set to 0x12c
	jmp @r3
	mov.b r2,@(r0,r4)

;=============================================
loc_8C0F6B7C:
	mov r4,r3
	mov.l @(loc_8C0F6C4C,pc),r1 ; r1 set to 0x8C162918
	mov.l r4,@-r15
	mov.l @(0x18,r3),r2
	mov.b @(0x04,r2),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;=============================================
loc_8C0F6B90:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C0F6BA6
	cmp/eq 0x01,r0
	bt loc_8C0F6BAc
	bra loc_8C0F6BDa
	nop

loc_8C0F6BA6:
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)

loc_8C0F6BAC:
	mov.l @(loc_8C0F6C50,pc),r1 ; r1 set to 0x8C26823C, r1 set to 0x8C26823c
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	mov.b @(r0,r14),r3
	add 0x68,r0 ; r0 set to 0x89, r0 set to 0x89
	mov.l @r1,r2
	extu.b r3,r3
	mov.b @(r0,r2),r2
	cmp/eq r2,r3
	bt/s loc_8C0F6BC8
	mov r14,r4
	mov.w @(loc_8C0F6C42,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	mov 0x00,r2 ; r2 set to 0x00, r2 set to 0x00
	bra loc_8C0F6BCe
	mov.b r2,@(r0,r14)

loc_8C0F6BC8:
	mov.w @(loc_8C0F6C42,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.b r3,@(r0,r14)

loc_8C0F6BCE:
	bsr loc_8C0F6BE0
	nop
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0F6C58
	mov.l @r15+,r14

loc_8C0F6BDA:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0F6BE0:
	mov.w @(0x1E,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r4)
	mov.w @(0x1E,r4),r0
	cmp/pl r0
	bt loc_8C0F6C3c
	mov.w @(loc_8C0F6C40,pc),r0 ; r0 set to 0xD0
	mov.w @(r0,r4),r0 ; r0 ??? bc r4 is ???
	mov.w r0,@(0x1E,r4)
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8C0F6C1e
	mov 0x5C,r1 ; r1 set to 0x5c
	add r4,r1 ; r1 ??? bc r4 is ???
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @r1,fr3
	fmov.s @(r0,r4),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C0F6C54,pc),r0  ; r0 set to 0x8C0F6C54
	fmov.s @r0,fr4
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r4),fr3
	fcmp/gt fr3,fr4
	bt loc_8C0F6C3c
	fmov.s fr4,@(r0,r4)
	mov 0x22,r0 ; r0 set to 0x22
	mov 0x00,r3 ; r3 set to 0x00
	bra loc_8C0F6C3c
	mov.b r3,@(r0,r4)

loc_8c0f6c1e:
	mov 0x5C,r1
	fldi1 fr4
	add r4,r1
	mov 0x50,r0
	fmov.s @r1,fr3
	fmov.s @(r0,r4),fr2
	fsub fr3,fr2
	fmov fr2,fr3
	fcmp/gt fr4,fr3
	bt/s loc_8c0f6c3c
	fmov.s fr2,@(r0,r4)
	fmov.s fr4,@(r0,r4)
	mov 0x22,r0
	mov 0x01,r3
	mov.b r3,@(r0,r4)

loc_8C0F6C3C:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F6C40:
	#data 0x00D0
loc_8C0F6C42:
	#data 0x012c
	#align4

loc_8C0F6C44:
	#data 0x3D23D70a
loc_8C0F6C48:
	#data bank04.loc_8c0450C0
loc_8C0F6C4C:
	#data bank16.loc_8c162918
loc_8C0F6C50:
	#data 0x8C26823c
loc_8C0F6C54:
	#data 0x3F83D70a

;==============================================
loc_8c0f6c58:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x21,r0
	mov r4,r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0f6cc8
	mov.w @(0x1C,r14),r0
	mov.w @(loc_8C0F6CD8,pc),r3
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8c0f6c82
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)

loc_8c0f6c82:
	mov.l @(loc_8C0F6CE0,pc),r3
	mov.w @(loc_8C0F6CDA,pc),r0
	mov.l @r3,r4
	mov.l @(r0,r14),r5
	mov.l @(loc_8c0f6ce4,pc),r1
	mov.w @(loc_8C0F6CDC,pc),r0
	mov.l @r4,r2
	jsr @r1
	mov.l @(r0,r2),r4
	mov.l @(loc_8c0f6cf0,pc),r13
	mova @(loc_8C0F6CF4,pc),r0
	mov.l @(loc_8c0f6cec,pc),r12
	mov.l @(loc_8c0f6ce8,pc),r11
	bra loc_8c0f6cc0
	fmov.s @r0,fr15

loc_8c0f6ca0:
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
	float fpul,fr3
	fmul fr15,fr3
	fsub fr3,fr2
	fmov.s fr2,@r15
	jsr @r11
	add 0x04,r4

loc_8c0f6cc0:
	jsr @r12
	nop
	tst r0,r0
	bt loc_8c0f6ca0

loc_8c0f6cc8:
	add 0x08,r15
	lds.l @r15+,pr
	fmov.s @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F6CD8:
	#data 0x01F4
loc_8C0F6CDA:
	#data 0x0084
loc_8C0F6CDC:
	#data 0x02C0
	#align4

loc_8C0F6CE0:
	#data 0x8C26A910
loc_8c0f6ce4:
	#data bank10.loc_8c108060
loc_8c0f6ce8:
	#data bank10.loc_8c1081e6
loc_8c0f6cec:
	#data bank10.loc_8c108086
loc_8c0f6cf0:
	#data bank10.loc_8c108192
loc_8C0F6CF4:
	#data 0x3B03126F

;==============================================
loc_8C0F6CF8:
	mov.l r14,@-r15
	mov 0x00,r14 ; r14 set to 0x00
	mov.l r13,@-r15
	mov r14,r13 ; r13 set to 0x00
	mov.l r12,@-r15
	mov r4,r12
	mov.l r11,@-r15
	sts.l pr,@-r15

loc_8C0F6D08:
	mov.l @(loc_8C0F6E40,pc),r11 ; r11 set to 0x8C044F12, r11 set to 0x8C044F12
	mov 0x05,r5 ; r5 set to 0x05, r5 set to 0x05
	mov 0x01,r6 ; r6 set to 0x01, r6 set to 0x01
	jsr @r11
	mov 0x00,r4 ; r4 set to 0x00, r4 set to 0x00
	tst r0,r0
	bf/s loc_8C0F6D1c
	mov r0,r4 ; r4 ??? bc r0 is ???, r4 ??? bc r0 is ???
	bra loc_8C0F6EC0
	nop

loc_8C0F6D1C:
	mov.l @(loc_8C0F6E44,pc),r3 ; r3 set to 0x8C0F6ECc
	mov.w @(loc_8C0F6E32,pc),r0 ; r0 set to 0x12c
	mov.l @(loc_8C0F6E48,pc),r5 ; r5 set to 0x8C162930
	mov.b r14,@(r0,r4)
	add 0x9C,r0 ; r0 set to 0xC8
	mov.l r3,@(0x10,r4)
	mov.w @(loc_8C0F6E34,pc),r3 ; r3 set to 0x88
	mov.l @(0x18,r12),r2
	add r12,r3 ; r3 ??? bc r12 is ???
	mov.l r2,@(0x18,r4)
	mov.l r3,@(r0,r4)
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(0x14,r12),r2
	mov.l r2,@(0x14,r4)
	mov.b @(r0,r12),r3
	mov.b r3,@(r0,r4)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r12),r2
	mov.b r2,@(r0,r4)
	mov 0x22,r0 ; r0 set to 0x22
	mov.b r13,@(r0,r4)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r2
	mov 0x21,r0 ; r0 set to 0x21
	extu.b r2,r2
	mov r2,r3
	shll2 r2
	shll r2
	add r3,r2
	shll2 r2
	shll r2
	add r5,r2
	mov.b @(r0,r4),r1
	extu.b r1,r1
	mov r1,r3
	shll r1
	add r3,r1
	mov.l @(loc_8C0F6E4C,pc),r3 ; r3 set to 0x8C1294C8
	shll2 r1
	shll r1
	add r1,r2
	mov r4,r1
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x44,r0 ; r0 set to 0x44
	mov r4,r2
	mov.l @(loc_8C0F6E50,pc),r6 ; r6 set to 0xE001
	add 0x40,r2
	fldi1 fr5
	mov.l r6,@r2
	mov.l r14,@(r0,r4)
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	mov.w @(loc_8C0F6E36,pc),r6 ; r6 set to 0xC27
	extu.b r0,r0
	mov.l @(loc_8C0F6E54,pc),r7 ; r7 set to 0x8C26A910
	mov r0,r3 ; r3 ??? bc r0 is ???
	shll r0
	add r3,r0
	fldi0 fr4
	add 0x0A,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(loc_8C0F6E38,pc),r0 ; r0 set to 0xCc
	mov.l r6,@(r0,r4)
	mov 0x74,r0 ; r0 set to 0x74
	fmov.s fr5,@(r0,r4)
	extu.b r13,r0 ; r0 ??? bc r13 is ???
	cmp/eq 0x04,r0
	bt/s loc_8C0F6DB2
	mov.l @r7,r6 ; r6 ??
	cmp/eq 0x05,r0
	bt loc_8C0F6DC4
	bra loc_8C0F6E60
	nop

loc_8C0F6DB2:
	mov 0x21,r0 ; r0 set to 0x21
	mov.l @r6,r3
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	mov.w @(loc_8C0F6E3A,pc),r5 ; r5 set to 0x1D0
	extu.b r0,r0
	shll2 r0
	add r3,r0
	bra loc_8C0F6E6a
	nop

loc_8c0f6dc4:
	mov.w @(loc_8C0F6E3C,pc),r6
	mov.l @(loc_8c0f6e58,pc),r1
	mov.l r1,@(0x10,r4)
	mov.l @r7,r0
	mov.l @r0,r0
	mov.l @(r0,r6),r3
	mov.w @(loc_8C0F6E3E,pc),r0
	mov.l r3,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r2
	mov 0x21,r0
	mov.b @(r0,r4),r1
	extu.b r2,r2
	mov r2,r3
	shll2 r2
	shll r2
	extu.b r1,r1
	add r3,r2
	mov r1,r3
	shll2 r2
	shll r2
	shll r1
	add r3,r1
	mov.l @(loc_8c0f6e4c,pc),r3
	shll2 r1
	shll r1
	add r5,r2
	add r1,r2
	mov r4,r1
	add 0x0C,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x20,r0
	mov r4,r1
	add 0x40,r1
	mov.l r14,@r1
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c0f6e1a
	mov.l @(loc_8C0F6E5C,pc),r5
	mov 0x44,r0
	mov.l r5,@(r0,r4)

loc_8c0f6e1a:
	mov 0x50,r0
	fmov.s fr4,@(r0,r4)
	mov 0x54,r0
	fmov.s fr4,@(r0,r4)
	mov 0x58,r0
	fmov.s fr4,@(r0,r4)
	add 0x74,r0
	mov.l @(r0,r4),r3
	mov 0x10,r5
	or r5,r3
	bra loc_8c0f6e70
	mov.l r3,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f6e32:
	#data 0x012C
loc_8c0f6e34:
	#data 0x0088
loc_8c0f6e36:
	#data 0x0C27
loc_8c0f6e38:
	#data 0x00CC
loc_8c0f6e3a:
	#data 0x01D0
loc_8C0F6E3C:
	#data 0x01DC
loc_8C0F6E3E:
	#data 0x0084
	#align4

loc_8c0f6e40:
	#data bank04.loc_8c044f12
loc_8c0f6e44:
	#data loc_8c0f6ecc
loc_8c0f6e48:
	#data bank16.loc_8c162930
loc_8c0f6e4c:
	#data bank12.loc_8c1294c8
loc_8c0f6e50:
	#data 0x0000E001
loc_8c0f6e54:
	#data 0x8C26A910
loc_8c0f6e58:
	#data loc_8c0f6f7e
loc_8C0F6E5C:
	#data 0x00008000

;==============================================
loc_8c0f6e60:
	extu.b r13,r0
	mov.l @r6,r3
	shll2 r0
	mov.w @(0xF6,PC),r5
	add r3,r0

loc_8C0F6E6A:
	mov.l @(r0,r5),r2
	mov.w @(loc_8C0F6F62,pc),r0 ; r0 set to 0x84
	mov.l r2,@(r0,r4)

loc_8C0F6E70:
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C0F6E86
	cmp/eq 0x01,r0
	bt loc_8C0F6E90
	cmp/eq 0x02,r0
	bt loc_8C0F6E9e
	bra loc_8C0F6EB2
	nop

loc_8C0F6E86:
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s fr5,@(r0,r4)
	mova @(loc_8C0F6F68,pc),r0  ; r0 set to 0x8C0F6F68
	bra loc_8C0F6EAa
	fmov.s @r0,fr4

loc_8C0F6E90:
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s fr4,@(r0,r4)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s fr5,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x80
	bra loc_8C0F6EB2
	fmov.s fr4,@(r0,r4)

loc_8c0f6e9e:
	mova @(loc_8C0F6F6C,pc),r0
	fmov.s @r0,fr4
	mov 0x78,r0
	fmov.s fr4,@(r0,r4)
	mova @(loc_8C0F6F70,pc),r0
	fmov.s @r0,fr4

loc_8C0F6EAA:
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s fr4,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x80
	fmov.s fr5,@(r0,r4)

loc_8C0F6EB2:
	add 0x01,r13
	extu.b r13,r2
	mov 0x06,r4 ; r4 set to 0x06, r4 set to 0x06
	cmp/ge r4,r2
	bt loc_8C0F6EC0
	bra loc_8C0F6D08
	nop

loc_8C0F6EC0:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0F6ECC:
	mov r4,r3
	mov.l @(loc_8C0F6F74,pc),r1 ; r1 set to 0x8C1629C0
	mov.l r4,@-r15
	mov.l @(0x18,r3),r2
	mov.b @(0x04,r2),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0F6EE0:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C0F6EFa
	cmp/eq 0x01,r0
	bt loc_8C0F6F1c
	cmp/eq 0x02,r0
	bt loc_8C0F6F40
	bra loc_8C0F6F52
	nop

loc_8C0F6EFA:
	bsr loc_8C0F7040
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8C0F6F52
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	add 0x0A,r0
	bra loc_8C0F6F52
	mov.w r0,@(0x1C,r14)

loc_8C0F6F1C:
	bsr loc_8C0F7040
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8C0F6F4a
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/pl r0
	bt loc_8C0F6F52
	mov.b @(0x05,r14),r0
	mov 0x01,r3 ; r3 set to 0x01
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0F6F64,pc),r0 ; r0 set to 0x12c
	bra loc_8C0F6F52
	mov.b r3,@(r0,r14)

loc_8c0f6f40:
	bsr loc_8c0f7040
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c0f6f52

loc_8C0F6F4A:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0F7054
	mov.l @r15+,r14

loc_8C0F6F52:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0F6F58:
	mov.w @(loc_8C0F6F64,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	rts
	mov.b r3,@(r0,r4)


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F6F60:
	#data 0x01C0
loc_8C0F6F62:
	#data 0x0084
loc_8C0F6F64:
	#data 0x012c
	#align4

loc_8C0F6F68:
	#data 0x3F000000
loc_8c0f6f6c:
	#data 0x3E4CCCCd
loc_8c0f6f70:
	#data 0x3F51EB85
loc_8C0F6F74:
	#data bank16.loc_8c1629C0

;==============================================
loc_8C0F6F78:
	mov.l @(loc_8C0F7068,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;==============================================
loc_8C0F6F7E:
	mov r4,r3
	mov.l @(loc_8C0F706C,pc),r1 ; r1 set to 0x8C1629D8
	mov.l r4,@-r15
	mov.l @(0x18,r3),r2
	mov.b @(0x04,r2),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0F6F92:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C0F6FAc
	cmp/eq 0x01,r0
	bt loc_8C0F6FDe
	cmp/eq 0x02,r0
	bt loc_8C0F7028
	bra loc_8C0F703a
	nop

loc_8C0F6FAC:
	bsr loc_8C0F7040
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8C0F703a
	mov.b @(0x05,r14),r0
	mov 0x01,r3 ; r3 set to 0x01
	fldi0 fr4
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0F7062,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s fr4,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr4,@(r0,r14)
	mov 0x58,r0 ; r0 set to 0x58
	fmov.s fr4,@(r0,r14)
	mov 0x0A,r0 ; r0 set to 0x0a
	mov.w r0,@(0x1C,r14)
	mova @(loc_8C0F7070,pc),r0  ; r0 set to 0x8C0F7070
	fmov.s @r0,fr3 ; r3 ??
	mov 0x5C,r0 ; r0 set to 0x5c
	bra loc_8C0F703a
	fmov.s fr3,@(r0,r14)

loc_8C0F6FDE:
	bsr loc_8C0F7040
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8C0F7032
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/pl r0
	bt loc_8C0F6FFc
	mov.b @(0x05,r14),r0
	add 0x01,r0
	bra loc_8C0F703a
	mov.b r0,@(0x05,r14)

loc_8C0F6FFC:
	mov 0x5C,r1 ; r1 set to 0x5c
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	mov 0x5C,r1 ; r1 set to 0x5c
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x5C,r1 ; r1 set to 0x5c
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x58,r0 ; r0 set to 0x58
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	bra loc_8C0F703a
	fmov.s fr2,@(r0,r14)

loc_8c0f7028:
	bsr loc_8c0f7040
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c0f703a

loc_8C0F7032:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0F7054
	mov.l @r15+,r14

loc_8C0F703A:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0F7040:
	mov 0x21,r0 ; r0 set to 0x21
	mov.l @(0x14,r4),r5
	mov.b @(r0,r4),r3
	mov.w @(loc_8C0F7064,pc),r0 ; r0 set to 0x4C9
	extu.b r3,r3
	mov.b @(r0,r5),r2
	cmp/eq r2,r3
	movt r0
	rts
	nop

;=============================================
loc_8C0F7054:
	mov.w @(loc_8C0F7062,pc),r0 ; r0 set to 0x12c
	mov 0x00,r5 ; r5 set to 0x00
	mov.b r5,@(r0,r4)
	mov r5,r0 ; r0 set to 0x00
	nop
	rts
	mov.b r0,@(0x05,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F7062:
	#data 0x012c
loc_8C0F7064:
	#data 0x04C9
	#align4

loc_8C0F7068:
	#data bank04.loc_8c0450C0
loc_8C0F706C:
	#data bank16.loc_8c1629D8
loc_8C0F7070:
	#data 0x3DCCCCCd

;==============================================
loc_8C0F7074:
	sts.l pr,@-r15
	mov.l @(loc_8C0F7174,pc),r3 ; r3 set to 0x8C044F12
	mov 0x05,r5 ; r5 set to 0x05
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C0F70E4
	mov r0,r4 ; r4 ??? bc r0 is ???
	mov.w @(loc_8C0F716E,pc),r0 ; r0 set to 0x12c
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @(loc_8C0F717C,pc),r6 ; r6 set to 0x8C26823c
	mov 0x01,r7 ; r7 set to 0x01
	mov.l @(loc_8C0F7178,pc),r3 ; r3 set to 0x8C0F70Ea
	mov.b r5,@(r0,r4)
	mov.w @(loc_8C0F7170,pc),r0 ; r0 set to 0x84
	mov.l r3,@(0x10,r4)
	mov.l @r6,r2
	mov r2,r3 ; r3 ??? bc r2 is ???
	mov.b @(r0,r3),r3
	add 0x01,r0 ; r0 set to 0x85
	mov.b @(r0,r2),r2
	mov 0x23,r0 ; r0 set to 0x23
	or r3,r2
	mov.b r2,@(r0,r4)
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt/s loc_8C0F70Bc
	mov 0x02,r6 ; r6 set to 0x02
	cmp/eq 0x02,r0
	bt loc_8C0F70C6
	cmp/eq 0x03,r0
	bt loc_8C0F70D8
	bra loc_8C0F70E4
	nop

loc_8C0F70BC:
	mov 0x20,r0 ; r0 set to 0x20
	mov.b r7,@(r0,r4)
	mov 0x21,r0 ; r0 set to 0x21
	bra loc_8C0F70Ce
	mov.b r6,@(r0,r4)

loc_8c0f70c6:
	mov 0x20,r0
	mov.b r6,@(r0,r4)
	mov 0x21,r0
	mov.b r7,@(r0,r4)

loc_8C0F70CE:
	mov r5,r0
	nop
	mov.b r0,@(0x04,r4)
	bra loc_8C0F70E4
	mov.b r0,@(0x05,r4)

loc_8c0f70d8:
	mov r6,r0
	nop
	mov.l @(loc_8C0F7180,pc),r2
	mov 0x03,r3
	mov.b r0,@(0x04,r4)
	mov.b r3,@r2

loc_8C0F70E4:
	lds.l @r15+,pr
	rts
	nop

;=============================================
loc_8C0F70EA:
	mov.l @(loc_8C0F7184,pc),r0 ; r0 set to 0x8C28C446
	mov.b @r0,r1
	tst r1,r1
	bf loc_8C0F710c
	mov.b @(0x04,r4),r0
	extu.b r0,r0 ; r0 set to 0x46
	cmp/eq 0x00,r0
	bt loc_8C0F7102
	cmp/eq 0x02,r0
	bt loc_8C0F7106
	bra loc_8C0F710c
	nop

loc_8C0F7102:
	bra loc_8C0F7110
	nop

loc_8C0F7106:
	mov.l @(loc_8C0F7188,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8C0F710C:
	rts
	nop

;=============================================
loc_8C0F7110:
	mov.b @(0x06,r4),r0
	mov.l @(loc_8C0F717C,pc),r7 ; r7 set to 0x8C26823c
	extu.b r0,r0
	mov.l @(loc_8C0F718C,pc),r6 ; r6 set to 0x8C28C410
	cmp/eq 0x00,r0
	bt loc_8C0F7128
	cmp/eq 0x01,r0
	bt loc_8C0F7146
	cmp/eq 0x02,r0
	bt loc_8C0F71A4
	bra loc_8C0F71A4
	nop

loc_8C0F7128:
	mov.l @r7,r3
	mov.b @(0x03,r3),r0
	mov 0x03,r3 ; r3 set to 0x03
	cmp/ge r3,r0
	bf loc_8C0F71A4
	mov.b @(0x06,r4),r0
	mov 0x20,r3 ; r3 set to 0x20
	add r4,r3 ; r3 ??? bc r4 is ???
	add 0x01,r0
	mov.b r0,@(0x06,r4)
	mov 0x33,r0 ; r0 set to 0x33
	mov.b @(r0,r6),r2
	mov.b @r3,r3
	or r3,r2
	mov.b r2,@(r0,r6)

loc_8C0F7146:
	mov.l @r7,r5
	mov.b @(0x03,r5),r0
	cmp/eq 0x03,r0
	bf loc_8C0F7190
	mov.w @(loc_8C0F7172,pc),r0 ; r0 set to 0x85, r0 set to 0x85
	mov.b @(r0,r5),r2
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	mov.b @(r0,r4),r3
	extu.b r3,r3
	tst r3,r2
	bt loc_8C0F71A4
	mov 0x33,r0 ; r0 set to 0x33, r0 set to 0x33
	mov.b @(r0,r6),r2
	mov 0x03,r3 ; r3 set to 0x03, r3 set to 0x03
	or r3,r2
	mov.b r2,@(r0,r6)
	mov.b @(0x06,r4),r0
	add 0x01,r0 ; r0 set to 0x34, r0 set to 0x34
	bra loc_8C0F71A4
	mov.b r0,@(0x06,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F716E:
	#data 0x012c
loc_8C0F7170:
	#data 0x0084
loc_8C0F7172:
	#data 0x0085
	#align4

loc_8C0F7174:
	#data bank04.loc_8c044F12
loc_8C0F7178:
	#data loc_8c0f70Ea
loc_8C0F717C:
	#data 0x8C26823c
loc_8c0f7180:
	#data 0x8C28C443
loc_8C0F7184:
	#data 0x8C28C446
loc_8C0F7188:
	#data bank04.loc_8c0450C0
loc_8C0F718C:
	#data 0x8C28C410

;==============================================
loc_8c0f7190:
	cmp/eq 0x05,r0
	bf loc_8c0f71a4
	mov.b @(0x06,r4),r0
	mov 0x03,r3
	add 0x01,r0
	mov.b r0,@(0x06,r4)
	mov 0x33,r0
	mov.b @(r0,r6),r2
	or r3,r2
	mov.b r2,@(r0,r6)

loc_8C0F71A4:
	rts
	nop

;=============================================
loc_8C0F71A8:
	sts.l pr,@-r15
	mov.l @(loc_8C0F72A0,pc),r3 ; r3 set to 0x8C044F12
	mov 0x05,r5 ; r5 set to 0x05
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C0F720a
	mov r0,r4 ; r4 ??? bc r0 is ???
	mov.w @(loc_8C0F7290,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8C0F72A4,pc),r1 ; r1 set to 0x8C28C468
	mov.b r3,@(r0,r4)
	add 0x9C,r0 ; r0 set to 0xC8
	mov.w @(loc_8C0F7292,pc),r3 ; r3 set to 0x88
	mov.l @r1,r2
	fldi1 fr3
	add r2,r3 ; r3 ??? bc r2 is ???
	mov.l @(loc_8C0F72A8,pc),r2 ; r2 set to 0x8C0F7530
	mov.l r3,@(r0,r4)
	mova @(loc_8C0F72AC,pc),r0  ; r0 set to 0x8C0F72Ac
	mov.l r2,@(0x10,r4)
	fmov.s @r0,fr4
	mov 0x50,r0 ; r0 set to 0x50
	mov.l @(loc_8C0F72B0,pc),r2 ; r2 set to 0x8C26A910
	fmov.s fr4,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr4,@(r0,r4)
	mov 0x58,r0 ; r0 set to 0x58
	fmov.s fr4,@(r0,r4)
	mov 0x74,r0 ; r0 set to 0x74
	fmov.s fr3,@(r0,r4)
	mov.l @r2,r3
	mov.w @(loc_8C0F7294,pc),r0 ; r0 set to 0x160
	mov.l @r3,r1 ; r1 ??? bc r3 is ???
	mov.l @(loc_8C0F72B4,pc),r3 ; r3 set to 0xC71c
	mov.l @(r0,r1),r0 ; r0 ??? bc r1 is ???
	mov.w @(loc_8C0F7296,pc),r1 ; r1 set to 0x84
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l r0,@r1
	mov 0x44,r0 ; r0 set to 0x44
	mov.l r3,@(r0,r4)
	mov.w @(loc_8C0F729A,pc),r0 ; r0 set to 0xCc
	mov.w @(loc_8C0F7298,pc),r1 ; r1 set to 0x835
	mov.l @(loc_8C0F72B8,pc),r3 ; r3 set to 0x8C04257c
	mov.l r1,@(r0,r4)
	mov 0x32,r4 ; r4 set to 0x32
	jmp @r3
	lds.l @r15+,pr

loc_8C0F720A:
	lds.l @r15+,pr
	rts
	nop

;=============================================
loc_8C0F7210:
	mov.l r14,@-r15
	mov 0x00,r14 ; r14 set to 0x00
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov 0x07,r11 ; r11 set to 0x07
	mov.l @(loc_8C0F72C0,pc),r3 ; r3 set to 0x8C26823c
	mov r11,r1 ; r1 set to 0x07
	mov.l r10,@-r15
	add 0x7A,r1 ; r1 set to 0x81
	mov.l r9,@-r15
	mov.l r8,@-r15
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	mov.l @r3,r0
	mov.l @(loc_8C0F72BC,pc),r8 ; r8 set to 0x8C1629F0
	mov.b @(r0,r1),r0
	mov.w @(loc_8C0F729C,pc),r10 ; r10 set to 0x825
	cmp/eq 0x07,r0
	bf/s loc_8C0F72Cc
	mov 0x01,r9 ; r9 set to 0x01
	mov.l @(loc_8C0F72A0,pc),r2 ; r2 set to 0x8C044F12
	mov 0x05,r5 ; r5 set to 0x05
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r2
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C0F7338
	mov r0,r4 ; r4 ??? bc r0 is ???
	mov.w @(loc_8C0F7290,pc),r0 ; r0 set to 0x12c
	mov r4,r1 ; r1 ??? bc r4 is ???
	mov.w @(loc_8C0F7292,pc),r3 ; r3 set to 0x88
	add 0x34,r1
	mov.l @(loc_8C0F72C4,pc),r2 ; r2 set to 0x8C0F76B6
	mov.b r9,@(r0,r4)
	add 0x9C,r0 ; r0 set to 0xC8
	add r13,r3 ; r3 ??? bc r13 is ???
	mov.l r13,@(0x18,r4)
	mov.l r3,@(r0,r4)
	mov 0x20,r0 ; r0 set to 0x20
	mov.l r2,@(0x10,r4)
	mov r8,r2 ; r2 set to 0x8C1629F0
	mov.l @(loc_8C0F72C8,pc),r3 ; r3 set to 0x8C1294C8
	add 0x54,r2 ; r2 set to 0x8C162A44
	mov.b r11,@(r0,r4)
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(loc_8C0F72B0,pc),r1 ; r1 set to 0x8C26A910
	mov.w @(loc_8C0F729E,pc),r0 ; r0 set to 0x184
	mov.l @r1,r2 ; r2 ??
	fldi1 fr3
	mov.l @r2,r3 ; r3 ??? bc r2 is ???
	mov.w @(loc_8C0F7296,pc),r2 ; r2 set to 0x84
	mov.l @(r0,r3),r0 ; r0 ??? bc r3 is ???
	add r4,r2 ; r2 ??? bc r4 is ???
	mov.l r0,@r2
	mov.w @(loc_8C0F729A,pc),r0 ; r0 set to 0xCc
	mov.l r10,@(r0,r4)
	mov 0x74,r0 ; r0 set to 0x74
	fmov.s fr3,@(r0,r4)
	mov 0x44,r0 ; r0 set to 0x44
	bra loc_8C0F7338
	mov.l r14,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F7290:
	#data 0x012c
loc_8C0F7292:
	#data 0x0088
loc_8C0F7294:
	#data 0x0160
loc_8C0F7296:
	#data 0x0084
loc_8C0F7298:
	#data 0x0835
loc_8C0F729A:
	#data 0x00Cc
loc_8C0F729C:
	#data 0x0825
loc_8C0F729E:
	#data 0x0184
	#align4

loc_8C0F72A0:
	#data bank04.loc_8c044F12
loc_8C0F72A4:
	#data 0x8C28C468
loc_8C0F72A8:
	#data loc_8c0f7530
loc_8C0F72AC:
	#data 0x3FB33333
loc_8C0F72B0:
	#data 0x8C26A910
loc_8C0F72B4:
	#data 0x0000C71c
loc_8C0F72B8:
	#data bank04.loc_8c04257c
loc_8C0F72BC:
	#data bank16.loc_8c1629F0
loc_8C0F72C0:
	#data 0x8C26823c
loc_8C0F72C4:
	#data loc_8c0f76B6
loc_8C0F72C8:
	#data bank12.loc_8c1294C8

;==============================================
loc_8c0f72cc:
	fldi0 fr15
	mov r14,r12

loc_8c0f72d0:
	mov.l @(loc_8c0f7430,pc),r2
	mov 0x05,r5
	mov 0x01,r6
	jsr @r2
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c0f7338
	mov r0,r4
	mov.w @(loc_8C0F741E,pc),r0
	mov r4,r1
	mov.w @(loc_8C0F7420,pc),r3
	add 0x34,r1
	mov.l @(loc_8c0f7434,pc),r2
	mov.b r9,@(r0,r4)
	add 0x9C,r0
	add r13,r3
	mov.l r13,@(0x18,r4)
	mov.l r3,@(r0,r4)
	mov 0x20,r0
	mov.l r2,@(0x10,r4)
	exts.w r14,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c0f7438,pc),r3
	shll2 r2
	mov.b r14,@(r0,r4)
	add r8,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8C0F743C,pc),r0
	exts.w r14,r3
	shll2 r3
	mov.l @r0,r1
	add 0x01,r14
	mov.w @(loc_8C0F7422,pc),r0
	mov.l @r1,r2
	add r2,r3
	mov.l @(r0,r3),r3
	exts.w r14,r2
	mov.w @(loc_8C0F7424,pc),r0
	cmp/ge r11,r2
	mov.l r3,@(r0,r4)
	mov 0x44,r0
	mov.l r12,@(r0,r4)
	mov.w @(loc_8C0F7426,pc),r0
	mov.w @(loc_8C0F7428,pc),r3
	mov.l r10,@(r0,r4)
	mov 0x74,r0
	fmov.s fr15,@(r0,r4)
	bf/s loc_8c0f72d0
	add r3,r12

loc_8C0F7338:
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

;=============================================
loc_8C0F734C:
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
	add 0xF8,r15
	mov.l @(0xC8,PC),r3
	mov 0x05,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bf.s loc_8c0f737c
	mov r0,r12
	bra loc_8c0f7514
	nop 

loc_8C0F737C:
	mov 0x34,r0
	fldi0 fr14
	mov.l @r15,r3
	mov 0x00,r13
	mov.l @(0xB8,PC),r2
	mov.l r3,@(0x18,r12)
	mov r12,r3
	add 0x40,r3
	mov.l @(0xAC,PC),r1
	mov.l r2,@(0x10,r12)
	fmov fr14,@(r0,r12)
	mova @(0xB0,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r12)
	mov 0x3C,r0
	fmov fr14,@(r0,r12)
	mov 0x44,r0
	mov.l r13,@r3
	mov.l r13,@(r0,r12)
	mov 0x48,r0
	mov.l r13,@(r0,r12)
	mov.w @(0x7A,PC),r0
	mov.w @(0x7C,PC),r3
	mov.l r3,@(r0,r12)
	mov.l @r1,r2
	mov.w @(0x78,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r3
	mov.w @(0x6A,PC),r0
	mov.l r3,@(r0,r12)
	mov.w @(0x60,PC),r0
	fldi1 fr13
	fadd fr13,fr13
	mov.b r13,@(r0,r12)
	mova @(0x84,PC),r0
	mov.l @(0x84,PC),r10
	mov r13,r11
	fmov @r0,fr12
	mov 0x01,r8
	fldi1 fr15

loc_8C0F73CE:
	mov.l @(0x60,PC),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bf.s loc_8c0f73e2
	mov r0,r14
	bra loc_8c0f7514
	nop 

loc_8C0F73E2:
	mov.l @r15,r3
	exts.b r11,r9
	mov.w @(0x44,PC),r0
	shll2 r9
	mov.l r3,@(0x18,r14)
	shll r9
	mov.w @(0x2E,PC),r3
	mov.l r12,@(0x14,r14)
	add r12,r3
	mov.l r3,@(r0,r14)
	add 0x64,r0
	mov.l @(0x54,PC),r3
	mov.b r8,@(r0,r14)
	mov 0x20,r0
	mov.l r3,@(0x10,r14)
	mov r9,r3
	mov.b r11,@(r0,r14)
	add r10,r3
	mova @(0x4C,PC),r0
	fmov @r3,fr2
	fmov @r0,fr3
	exts.b r11,r3
	tst r8,r3
	fmul fr3,fr2
	mov 0x34,r0
	bt.s loc_8c0f7458
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	bra loc_8c0f7466
	fmov fr14,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f741e:
	#data 0x012C
loc_8c0f7420:
	#data 0x0088
loc_8c0f7422:
	#data 0x0168
loc_8c0f7424:
	#data 0x0084
loc_8c0f7426:
	#data 0x00CC
loc_8c0f7428:
	#data 0x0e39
loc_8c0f742a:
	#data 0x0809
loc_8c0f742c:
	#data 0x0208
loc_8c0f742e:
	#data 0x00c8
	#align4

loc_8C0F7430:
	#data bank04.loc_8c044F12
loc_8C0F7434:
	#data loc_8c0f76B6
loc_8C0F7438:
	#data bank12.loc_8c1294C8
loc_8c0f743c:
	#data 0x8C26A910
loc_8C0F7440:
	#data loc_8c0f77B0
loc_8C0F7444:
	#data 0x433E0000
loc_8C0F7448:
	#data 0x43660000
loc_8C0F744C:
	#data bank16.loc_8c162A50
loc_8C0F7450:
	#data loc_8c0f77D8
loc_8c0f7454:
	#data 0x40A00000

;==============================================
loc_8C0F7458:
	mov r9,r2
	mov 0x04,r0
	add r10,r2
	fmov @(r0,r2),fr2
	mov 0x38,r0
	fmul fr13,fr2
	fmov fr2,@(r0,r14)

loc_8C0F7466:
	mova @(0x120,PC),r0
	mov r9,r3
	fmov @r0,fr3
	mov 0x3C,r0
	add r10,r3
	fmov fr3,@(r0,r14)
	mov 0x1E,r0
	mov.w r0,@(0x1C,r14)
	mov 0x04,r0
	mov.l r3,@(0x4,r15)
	mov 0x02,r7
	fmov @(r0,r3),fr5
	mov r7,r6
	fmov @r3,fr4
	mov.w @(0x1C,r14),r0
	mov.l @(0x104,PC),r3
	mov r0,r5
	jsr @r3
	mov r14,r4
	mov.w @(0x1C,r14),r0
	mov 0x02,r6
	mov.l @(0xFC,PC),r3
	mov r0,r5
	fmov fr12,fr4
	jsr @r3
	mov r14,r4
	mov.l @(0xF8,PC),r4
	mov r14,r2
	add 0x40,r2
	add r9,r4
	mov.l @r4,r3
	mov 0x48,r0
	mov.l r3,@r2
	mov.l @(0x4,r4),r2
	mov.l r2,@(r0,r14)
	mov 0x44,r0
	mov.l r13,@(r0,r14)
	mova @(0xE4,PC),r0
	mov.l @(0xE8,PC),r2
	fmov @r0,fr3
	mov 0x74,r0
	fmov fr3,@(r0,r14)
	mov.l @r2,r3
	mov.w @(0xC0,PC),r0
	mov.l @r3,r1
	mov.l @(r0,r1),r0
	mov.w @(0xBC,PC),r1
	add r14,r1
	mov.l r0,@r1
	mov 0x04,r0
	mov.w r0,@(0x1E,r14)
	mov 0x22,r0
	mov.b r13,@(r0,r14)
	mov 0x23,r0
	mov.b r13,@(r0,r14)
	mov 0x50,r0
	fmov fr15,@(r0,r14)
	mov 0x54,r0
	fmov fr15,@(r0,r14)
	mov 0x58,r0
	mov.w @(0xA2,PC),r3
	add 0x01,r11
	fmov fr15,@(r0,r14)
	add 0x74,r0
	mov.l r3,@(r0,r14)
	mov 0x03,r1
	exts.b r11,r3
	cmp/ge r1,r3
	bt loc_8c0f74f4
	bra loc_8c0f73ce
	nop 

loc_8C0F74F4:
	mov 0x39,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(0xA4,PC),r2
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
	jmp @r2
	mov.l @r15+,r14

loc_8C0F7514:
	add 0x08,r15
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

;=============================================
loc_8C0F7530:
	mov r4,r3
	mov.l @(loc_8C0F75A4,pc),r1 ; r1 set to 0x8C162A80
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0F7542:
	mova @(loc_8C0F75A8,pc),r0  ; r0 init to 0x8C0F75A8
	fmov.s @r0,fr4
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r4),fr3
	fsub fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r4),fr2
	fsub fr4,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x58,r0 ; r0 set to 0x58
	fmov.s @(r0,r4),fr3
	fsub fr4,fr3
	fldi1 fr4
	fmov.s fr3,@(r0,r4)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r4),fr2
	fcmp/gt fr4,fr2
	bt loc_8C0F757c
	mov.b @(0x04,r4),r0
	add 0x01,r0 ; r0 set to 0x51
	mov.b r0,@(0x04,r4)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s fr4,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr4,@(r0,r4)
	mov 0x58,r0 ; r0 set to 0x58
	bra loc_8C0F7210
	fmov.s fr4,@(r0,r4)

loc_8C0F757C:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f7580:
	#data 0x0208
loc_8c0f7582:
	#data 0x0084
loc_8c0f7584:
	#data 0x083f
	#align4

loc_8C0F7588:
	#data 0x448FC000
loc_8C0F758C:
	#data bank03.loc_8c03C870
loc_8C0F7590:
	#data bank03.loc_8c03C952
loc_8C0F7594:
	#data bank16.loc_8c162A68
loc_8C0F7598:
	#data 0x3E4CCCCd
loc_8C0F759c:
	#data 0x8C26A910
loc_8C0F75A0:
	#data bank04.loc_8c04257c
loc_8C0F75A4:
	#data bank16.loc_8c162A80
loc_8C0F75A8:
	#data 0x3CA3D70a

;==============================================
loc_8C0F75AC:
	mov.l r14,@-r15
	mov 0x44,r0
	mov r4,r14
	mov.w @(0x128,PC),r3
	mov.l @(0x134,PC),r5
	mov.l @(0x138,PC),r4
	sts.l pr,@-r15
	mov.l @(r0,r14),r2
	sub r3,r2
	mov.l r2,@(r0,r14)
	mov.l @(r0,r14),r1
	mov.l @(0x124,PC),r2
	and r2,r1
	mov.l r1,@(r0,r14)
	mov.w @(0x114,PC),r1
	mov.l @r5,r0
	mov.b @(r0,r1),r0
	shll2 r0
	mov.l @(r0,r4),r3
	mov 0x44,r0
	mov.l @(r0,r14),r0
	cmp/gt r3,r0
	bt loc_8c0f75f6
	mov.b @(0x4,r14),r0
	mov.w @(0x100,PC),r2
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.l @r5,r0
	mov.b @(r0,r2),r0
	shll2 r0
	mov.l @(r0,r4),r3
	mov 0x44,r0
	mov.l r3,@(r0,r14)
	bsr loc_8c0f734c
	mov r14,r4
	mov 0x5A,r0
	mov.w r0,@(0x1C,r14)

loc_8C0F75F6:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0F75FC:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	cmp/pl r0
	bt loc_8C0F7614
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov 0x28,r0 ; r0 set to 0x28
	bra loc_8C0F762e
	mov.w r0,@(0x1C,r4)

loc_8c0f7614:
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bf loc_8c0f762e
	mov 0x44,r0
	mov.w @(loc_8C0F76DE,pc),r3
	mov.l @(r0,r4),r2
	sub r3,r2
	mov.l r2,@(r0,r4)
	mov.l @(r0,r4),r1
	mov.l @(loc_8C0F76E8,pc),r2
	and r2,r1
	mov.l r1,@(r0,r4)

loc_8C0F762E:
rts
nop

;=============================================
loc_8C0F7632:
	mov 0x44,r0
	mov.w @(0xA6,PC),r3
	mov.l @(r0,r4),r2
	sub r3,r2
	mov.l r2,@(r0,r4)
	mov.l @(r0,r4),r1
	mov.l @(0xA8,PC),r2
	and r2,r1
	mov r1,r5
	cmp/pl r5
	bf.s loc_8c0f765a
	mov.l r1,@(r0,r4)
	mov.w @(0x94,PC),r1
	cmp/ge r1,r5
	bt loc_8c0f765a
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x3C,r0
	mov.w r0,@(0x1C,r4)

loc_8C0F765A:
	rts
	nop
;=============================================
loc_8C0F765E:
	mov 0x44,r0
	mov.w @(0x7A,PC),r3
	mov.l @(r0,r4),r2
	sub r3,r2
	mov.l r2,@(r0,r4)
	mov.l @(r0,r4),r1
	mov.l @(0x7C,PC),r2
	and r2,r1
	mov.l r1,@(r0,r4)
	mova @(0x80,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	fmov @(r0,r4),fr2
	fadd fr4,fr2
	fmov fr2,@(r0,r4)
	mov 0x74,r0
	fmov @(r0,r4),fr3
	fldi0 fr2
	fsub fr4,fr3
	fcmp/gt fr2,fr3
	bt.s loc_8c0f76a6
	fmov fr3,@(r0,r4)
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x74,r0
	fmov fr2,@(r0,r4)
	mov.w @(0x42,PC),r0
	mov.b r3,@(r0,r4)
	mov 0x3C,r0
	mov.w r0,@(0x1C,r4)

loc_8C0F76A6:
	rts
	nop

;=============================================
loc_8C0F76AA:
	mov.l @(loc_8C0F76F8,pc),r2 ; r2 set to 0x8C28C41b
	mov 0x02,r3 ; r3 set to 0x02
	mov.b r3,@r2 ; r2 ??
	mov.l @(loc_8C0F76FC,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8C0F76B6:
	mov r4,r3
	mov.l @(loc_8C0F7700,pc),r1 ; r1 set to 0x8C162AC4
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0F76C8:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x18,r14),r5
	mov 0x06,r3 ; r3 set to 0x06
	mov.b @(0x04,r5),r0
	extu.b r0,r0
	cmp/ge r3,r0
	bf loc_8C0F7704
	bra loc_8C0F7710
	mov 0x02,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f76de:
	#data 0x0100
loc_8c0f76e0:
	#data 0x0081
loc_8c0f76e2:
	#data 0x071c
loc_8c0f76e4:
	#data 0x012c
	#align4

loc_8c0f76e8:
	#data 0x0000FFFf
loc_8c0f76ec:
	#data 0x8C26823c
loc_8C0F76F0:
	#data bank16.loc_8c162AA4
loc_8c0f76f4:
	#data 0x3D4CCCCd
loc_8C0F76F8:
	#data 0x8C28C41b
loc_8C0F76FC:
	#data bank04.loc_8c0450C0
loc_8C0F7700:
	#data bank16.loc_8c162AC4

;==============================================
loc_8C0F7704:
	bsr loc_8C0F7788
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8C0F7714
	mov 0x01,r0 ; r0 set to 0x01

loc_8C0F7710:
	bra loc_8C0F772c
	mov.b r0,@(0x04,r14)

loc_8c0f7714:
	mov.l @(loc_8C0F77F0,pc),r1
	mov 0x74,r0
	fmov.s @(r0,r14),fr2
	lds r1,fpul
	fsts fpul,fr3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r14)
	fmov.s @(r0,r14),fr1
	fldi0 fr2
	fcmp/gt fr2,fr1
	bt loc_8c0f772c
	fmov.s fr2,@(r0,r14)

loc_8C0F772C:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0F7732:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x18,r14),r5
	mov 0x06,r3 ; r3 set to 0x06
	mov.b @(0x04,r5),r0
	extu.b r0,r0
	cmp/ge r3,r0
	bf loc_8C0F7748
	bra loc_8C0F7754
	mov 0x02,r0

loc_8C0F7748:
	bsr loc_8C0F7788
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8C0F7758
	mov 0x00,r0 ; r0 set to 0x00

loc_8C0F7754:
	bra loc_8C0F776e
	mov.b r0,@(0x04,r14)

loc_8c0f7758:
	mov.l @(loc_8C0F77F0,pc),r1
	mov 0x74,r0
	fmov.s @(r0,r14),fr2
	lds r1,fpul
	fldi1 fr4
	fsts fpul,fr3
	fadd fr3,fr2
	fcmp/gt fr2,fr4
	bt/s loc_8c0f776e
	fmov.s fr2,@(r0,r14)
	fmov.s fr4,@(r0,r14)

loc_8C0F776E:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0F7774:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0F77EA,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;=============================================
loc_8C0F7782:
	mov.l @(loc_8C0F77F4,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;==============================================
loc_8C0F7788:
	mov 0x44,r0 ; r0 set to 0x44
	mov.l @(r0,r5),r2
	mov.l @(r0,r4),r3
	mova @(loc_8C0F77F8,pc),r0  ; r0 set to 0x8C0F77F8
	fmov.s @r0,fr2
	add r3,r2
	lds r2,fpul
	float fpul,fr3
	fmov fr3,fr4
	fcmp/gt fr2,fr4
	bf loc_8C0F77Aa
	mova @(loc_8C0F77FC,pc),r0  ; r0 set to 0x8C0F77Fc
	fmov.s @r0,fr3
	fcmp/gt fr4,fr3
	bf loc_8C0F77Aa
	rts
	mov 0x01,r0

;=============================================
loc_8C0F77AA:
	mov 0x00,r0 ; r0 set to 0x00
	rts
	nop

;=============================================
loc_8C0F77B0:
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C0F77D4
	cmp/eq 0x01,r0
	bt loc_8C0F77C4
	cmp/eq 0x02,r0
	bt loc_8C0F77Ca
	bra loc_8C0F77D4
	nop

loc_8c0f77c4:
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)

loc_8c0f77ca:
	mov 0x48,r0
	mov.w @(loc_8C0F77EC,pc),r3
	mov.l @(r0,r4),r2
	add r3,r2
	mov.l r2,@(r0,r4)

loc_8C0F77D4:
	rts
	nop

;=============================================
loc_8C0F77D8:
	mov r4,r3
	mov.l @(loc_8C0F7800,pc),r1 ; r1 set to 0x8C162AD4
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F77EA:
	#data 0x012c
loc_8c0f77ec:
	#data 0x0280
	#align4

loc_8c0f77f0:
	#data 0x3D4CCCCd
loc_8C0F77F4:
	#data bank04.loc_8c0450C0
loc_8C0F77F8:
	#data 0x46639000
loc_8C0F77FC:
	#data 0x47471C00
loc_8C0F7800:
	#data bank16.loc_8c162AD4

;==============================================
loc_8C0F7804:
	mov.l @(0x13C,PC),r1
	mov 0x74,r0
	fmov @(r0,r4),fr2
	lds r1,fpul
	fldi1 fr4
	fsts fpul,fr3
	fadd fr3,fr2
	fcmp/gt fr4,fr2
	bf.s loc_8c0f781a
	fmov fr2,@(r0,r4)
	fmov fr4,@(r0,r4)

loc_8C0F781A:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	cmp/pl r0
	bt loc_8c0f7872
	mov.b @(0x4,r4),r0
	mov.l @(0x11C,PC),r5
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r3
	mov 0x34,r0
	extu.b r3,r3
	shll2 r3
	shll r3
	add r5,r3
	fmov @r3,fr3
	fmov fr3,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r3
	mov 0x04,r0
	extu.b r3,r3
	shll2 r3
	shll r3
	add r3,r5
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mova @(0xF4,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov 0x74,r0
	fmov fr4,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c0f78ae
	mov.l @(0x14,r4),r3
	mov 0x01,r0
	mov.b r0,@(0x4,r3)
	bra loc_8c0f78ae
	nop 

loc_8C0F7872:
	mov 0x5C,r1
	mov.l @(0xD8,PC),r3
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
	jmp @r3
	fmov fr2,@(r0,r4)

loc_8C0F78AE:
	rts
	nop

;=============================================
loc_8C0F78B2:
	mov.l @(0x18,r4),r5
	mov 0x03,r3 ; r3 set to 0x03
	mov.b @(0x04,r5),r0
	extu.b r0,r0
	cmp/ge r3,r0
	bf loc_8C0F78C6
	mov.b @(0x04,r4),r0
	add 0x01,r0
	bra loc_8C0F790c
	mov.b r0,@(0x04,r4)

loc_8c0f78c6:
	mov.w @(0x1E,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r4)
	mov.w @(0x1E,r4),r0
	cmp/pl r0
	bt loc_8c0f790c
	mov 0x04,r0
	mov.w r0,@(0x1E,r4)
	mov 0x22,r0
	mov.b @(r0,r4),r2
	add 0x01,r2
	mov.b r2,@(r0,r4)
	mov 0x05,r2
	mov.b @(r0,r4),r1
	extu.b r1,r1
	cmp/gt r2,r1
	bf loc_8c0f78ec
	mov 0x00,r1
	mov.b r1,@(r0,r4)

loc_8c0f78ec:
	mov 0x22,r2
	mov.l @(loc_8c0f7954,pc),r0
	add r4,r2
	mov.l @(loc_8C0F7958,pc),r3
	mov.b @r2,r2
	extu.b r2,r2
	mov.b @(r0,r2),r1
	mov.l @r3,r0
	extu.b r1,r1
	mov.l @r0,r2
	shll2 r1
	add r2,r1
	mov.l @r1,r0
	mov.w @(loc_8C0F7940,pc),r1
	add r4,r1
	mov.l r0,@r1

loc_8C0F790C:
	rts
	nop

;=============================================
loc_8C0F7910:
	mov.l @(0x30,PC),r1
	mov 0x74,r0
	fmov @(r0,r4),fr2
	lds r1,fpul
	fsts fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r4)
	fmov @(r0,r4),fr1
	fldi0 fr2
	fcmp/gt fr2,fr1
	bt loc_8c0f7936
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x74,r0
	fmov fr2,@(r0,r4)
	mov.w @(0xC,PC),r0
	mov.b r3,@(r0,r4)

loc_8C0F7936:
	rts
	nop

;=============================================
loc_8C0F793A:
	mov.l @(loc_8C0F795C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f7940:
	#data 0x0084
loc_8c0f7942:
	#data 0x012c
	#align4
loc_8C0F7944:
	#data 0x3D4CCCCd
loc_8C0F7948:
	#data bank16.loc_8c162A50
loc_8C0F794c:
	#data 0x43660000
loc_8C0F7950:
	#data bank03.loc_8c03CB58
loc_8C0F7954:
	#data bank13.loc_8c13b84c
loc_8c0f7958:
	#data 0x8C26A910
loc_8C0F795C:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0F7960:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0xC4,PC),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0f7a1e
	mov r0,r13
	mov.l @(0xBC,PC),r5
	mov 0x18,r0
	mov.w @(0xA8,PC),r4
	mov 0x00,r10
	mov.l @(0xB0,PC),r3
	mov 0x01,r11
	add r13,r4
	mov.l r3,@(0x10,r13)
	mov.l r10,@(0x4,r4)
	mov.l r10,@r4
	mov.l @r5,r2
	mov.l @(0xA8,PC),r4
	mov.b @(r0,r2),r3
	tst r11,r3
	bt.s loc_8c0f79b8
	mov 0x02,r9
	mov.w @(0x8C,PC),r0
	mov.l @(0x3C,r4),r3
	mov.l @(r0,r13),r2
	or r3,r2
	mov.l r2,@(r0,r13)
	mov 0x40,r0
	mov.l @(r0,r4),r3
	mov.w @(0x80,PC),r0
	mov.l @(r0,r13),r1
	or r3,r1
	mov.l r1,@(r0,r13)

loc_8C0F79B8:
	mov.l @r5,r3
	mov 0x18,r0
	mov.b @(r0,r3),r2
	tst r9,r2
	bt.s loc_8c0f79dc
	mov 0x20,r8
	mov 0x44,r0
	mov.l @(r0,r4),r3
	mov.w @(0x66,PC),r0
	mov.l @(r0,r13),r1
	or r3,r1
	mov.l r1,@(r0,r13)
	mov 0x48,r0
	mov.l @(r0,r4),r3
	mov.w @(0x5C,PC),r0
	mov.l @(r0,r13),r2
	or r3,r2
	mov.l r2,@(r0,r13)


loc_8C0F79DC:
	mov r10,r12

loc_8C0F79DE:
	extu.b r12,r3
	mov r10,r14
	shll2 r3
	mov.l r3,@r15
	mov r12,r0
	nop 
	shll2 r0
	shll2 r0
	shll r0
	mov.b r0,@(0x4,r15)

loc_8C0F79F2:
	mov r11,r4
	extu.b r14,r3
	mov.w @(0x38,PC),r2
	shad r3,r4
	mov.l @r15,r3
	add r13,r2
	add r3,r2
	mov.l @r2,r1
	tst r1,r4
	bt loc_8c0f7a0e
	mov.b @(0x4,r15),r0
	mov r0,r4
	bsr loc_8c0f7a48
	add r14,r4

loc_8C0F7A0E:
	add 0x01,r14
	extu.b r14,r3
	cmp/ge r8,r3
	bf loc_8c0f79f2
	add 0x01,r12
	extu.b r12,r3
	cmp/ge r9,r3
	bf loc_8c0f79de

loc_8C0F7A1E:
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
loc_8c0f7a32:
	#data 0x00CC
loc_8c0f7a34:
	#data 0x00D0
	#align4

loc_8C0F7A38:
	#data bank04.loc_8c044F12
loc_8C0F7A3C:
	#data loc_8c0f7B20
loc_8C0F7A40:
	#data 0x8C26823c
loc_8C0F7A44:
	#data 0x8C28C410

;==============================================
loc_8C0F7A48:
	mov.l r14,@-r15
	mov 0x05,r5
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	mov.l @(0xA4,PC),r3
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0f7ae4
	mov r0,r14
	mov.w @(0x88,PC),r0
	mov 0x01,r3
	mov.l @(0x94,PC),r1
	mov.b r3,@(r0,r14)
	add 0x9C,r0
	mov.w @(0x80,PC),r3
	mov.l @r1,r2
	mov r14,r1
	add 0x34,r1
	add r2,r3
	mov.l @(0x88,PC),r2
	mov.l r3,@(r0,r14)
	mov 0x21,r0
	mov.l r2,@(0x10,r14)
	extu.b r13,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(0x7C,PC),r3
	shll2 r2
	mov.b r13,@(r0,r14)
	add r3,r2
	mov.l @(0x78,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x78,PC),r1
	extu.b r13,r0
	shll r0
	mov.l @(0x74,PC),r2
	mov.b @(r0,r1),r0
	lds r2,fpul
	extu.b r0,r0
	mov.w @(0x4C,PC),r2
	shll r0
	mov.w r0,@(0x1E,r14)
	mov 0x3C,r0
	fmov @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.l @(0x60,PC),r0
	mov.l @r0,r3
	mov.w @(0x1E,r14),r0
	mov.l @r3,r3
	shll2 r0
	add r3,r0
	mov.w @(0x34,PC),r3
	mov.l @(r0,r2),r2
	mov.w @(0x2E,PC),r0
	mov.l r2,@(r0,r14)
	add 0x48,r0
	mov.l r3,@(r0,r14)
	mov 0x21,r0
	mov.l @(0x4C,PC),r3
	mov.b @(r0,r14),r5
	jsr @r3
	mov r14,r4
	mov 0x00,r0
	mov.l @(0x44,PC),r3
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	mov.w @(0x14,PC),r0
	mov.l @r15+,r13
	mov.l @(r0,r14),r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0F7AE4:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;=============================================
loc_8c0f7aec:
	#data 0x012c
loc_8c0f7aee:
	#data 0x0088
loc_8c0f7af0:
	#data 0x0274
loc_8c0f7af2:
	#data 0x0084
loc_8c0f7af4:
	#data 0x0815
	#align4

loc_8C0F7AF8:
	#data bank04.loc_8c044F12
loc_8C0F7AFC:
	#data 0x8C28C468
loc_8C0F7B00:
	#data loc_8c0f7C04
loc_8C0F7B04:
	#data bank16.loc_8c161A7c
loc_8C0F7B08:
	#data bank12.loc_8c1294C8
loc_8C0F7B0C:
	#data {bank13.loc_8c13b7D4 + 1}
loc_8C0F7B10:
	#data 0x3F000000
loc_8C0F7B14:
	#data 0x8C26A910
loc_8C0F7B18:
	#data loc_8c0f3D50
loc_8C0F7B1C:
	#data bank10.loc_8c108210

;==============================================
loc_8C0F7B20:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xEC,r15
	mov.l @(0xFC,PC),r7
	mov r15,r11
	mov 0x18,r0
	mov.l r4,@r15
	add 0x0C,r11
	mov.l @(0xF4,PC),r4
	mov r11,r6
	mov 0x01,r10
	mov r11,r5
	mov 0x00,r9
	add 0x04,r6
	mov.l r9,@r6
	mov.l r9,@r5
	mov.l @r7,r3
	mov.b @(r0,r3),r2
	tst r10,r2
	bt.s loc_8c0f7b68
	mov 0x02,r8
	mov.l @r5,r1
	mov 0x40,r0
	mov.l @(0x3C,r4),r3
	or r3,r1
	mov.l r1,@r5
	mov.l @r6,r2
	mov.l @(r0,r4),r3
	or r3,r2
	mov.l r2,@r6

loc_8C0F7B68:
	mov.l @r7,r3
	mov 0x18,r0
	mov.b @(r0,r3),r2
	tst r8,r2
	bt.s loc_8c0f7b88
	mov r9,r12
	mov 0x44,r0
	mov.l @r5,r1
	mov.l @(r0,r4),r3
	mov 0x48,r0
	or r3,r1
	mov.l r1,@r5
	mov.l @r6,r2
	mov.l @(r0,r4),r3
	or r3,r2
	mov.l r2,@r6

loc_8C0F7B88:
	mov.l @r15,r0
	exts.b r12,r13
	mov.w @(0x9E,PC),r3
	shll2 r13
	mov r13,r4
	add r11,r4
	add r0,r3
	mov.l @r4,r2
	add r13,r3
	mov.l @r3,r3
	xor r3,r2
	mov r2,r1
	tst r1,r1
	bt.s loc_8c0f7be8
	mov.l r2,@r4
	mov r13,r3
	add r11,r3
	mov.l r3,@(0x4,r15)
	mov r9,r14
	mov r12,r0
	nop 
	shll2 r0
	shll2 r0
	shll r0
	mov.b r0,@(0x8,r15)

loc_8C0F7BBA:
	mov.l @(0x4,r15),r2
	mov r10,r4
	exts.b r14,r3
	shad r3,r4
	mov.l @r2,r3
	tst r4,r3
	bt loc_8c0f7bde
	mov.w @(0x62,PC),r3
	mov.l @r15,r0
	add r0,r3
	add r13,r3
	mov.l @r3,r2
	or r4,r2
	mov r14,r4
	mov.l r2,@r3
	mov.b @(0x8,r15),r0
	bsr loc_8c0f7a48
	add r0,r4

loc_8C0F7BDE:
	add 0x01,r14
	mov 0x20,r3
	exts.b r14,r2
	cmp/ge r3,r2
	bf loc_8c0f7bba

loc_8C0F7BE8:
	add 0x01,r12
	exts.b r12,r3
	cmp/ge r8,r3
	bf loc_8c0f7b88
	add 0x14,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0F7C04:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0F7C38,pc),r13 ; r13 set to 0x8C161A7c
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C0F7C3c
	cmp/eq 0x01,r0
	bf loc_8C0F7C2a
	bra loc_8C0F7DE2
	nop

loc_8C0F7C2A:
	bra loc_8C0F7DE8
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F7C2e:
	#data 0x00Cc
	#align4

loc_8C0F7C30:
	#data 0x8C26823c
loc_8C0F7C34:
	#data 0x8C28C410
loc_8C0F7C38:
	#data bank16.loc_8c161A7c

;==============================================
loc_8C0F7C3C:
	mov 0x50,r0 ; r0 set to 0x50
	fldi1 fr4
	fmov.s fr4,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr4,@(r0,r14)
	mov 0x58,r0 ; r0 set to 0x58
	fmov.s fr4,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3
	mova @(loc_8C0F7D68,pc),r0  ; r0 set to 0x8C0F7D68
	fmov.s @r0,fr3
	mov 0x08,r0 ; r0 set to 0x08
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	add r13,r3
	fmov.s @(r0,r3),fr2
	mov 0x3C,r0 ; r0 set to 0x3c
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3
	mov 0x34,r0 ; r0 set to 0x34
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	add r13,r3
	fmov.s @r3,fr2
	mov.l @(loc_8C0F7D6C,pc),r2 ; r2 set to 0x8C26823c
	fmov.s fr2,@(r0,r14)
	mov.l @r2,r3
	mov.b @(0x07,r3),r0
	tst r0,r0
	bt/s loc_8C0F7C96
	mov 0x00,r11 ; r11 set to 0x00
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0x35
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0F7D5E,pc),r0 ; r0 set to 0x12c
	bra loc_8C0F7DE8
	mov.b r11,@(r0,r14)

loc_8c0f7c96:
	mov.w @(0x1C,r14),r0
	mov.w @(loc_8C0F7D60,pc),r3
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8c0f7caa
	mov r11,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8c0f7caa:
	mov.w @(loc_8C0F7D62,pc),r0
	mov.l @(loc_8C0F7D70,pc),r3
	mov.l @(r0,r14),r5
	mov.w @(loc_8C0F7D64,pc),r2
	mov.w @(0x1E,r14),r0
	mov.l @r3,r4
	add r2,r0
	mov.l @(loc_8c0f7d74,pc),r1
	mov.l @r4,r4
	shll2 r0
	add r0,r4
	jsr @r1
	mov.l @(0x04,r4),r4
	mov.l @(loc_8c0f7d80,pc),r12
	mova @(loc_8C0F7D84,pc),r0
	mov.l @(loc_8c0f7d7c,pc),r10
	mov.l @(loc_8c0f7d78,pc),r9
	bra loc_8c0f7cf0
	fmov.s @r0,fr15
	
loc_8c0f7cd0:
	mov r15,r4
	mov r15,r5
	jsr @r12
	add 0x04,r4
	mov.w @(0x1C,r14),r0
	mov r15,r4
	fmov.s @r15,fr2
	mov r15,r5
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr15,fr3
	fsub fr3,fr2
	fmov.s fr2,@r15
	jsr @r9
	add 0x04,r4

loc_8c0f7cf0:
	jsr @r10
	nop
	tst r0,r0
	bt loc_8c0f7cd0
	bra loc_8c0f7dd6
	mov r11,r4

loc_8c0f7cfc:
	mov.l @(loc_8C0F7D88,pc),r6
	exts.w r4,r5
	mov r6,r3
	add 0x30,r3
	add r3,r5
	mov.b @r5,r2
	tst r2,r2
	bt loc_8c0f7dd4
	mov 0x21,r0
	mov.b @r5,r3
	mov.w @(loc_8C0F7D66,pc),r6
	mov.b @(r0,r14),r2
	add r3,r6
	extu.b r6,r3
	extu.b r2,r2
	cmp/eq r3,r2
	bf loc_8c0f7dd4
	extu.b r6,r5
	mov r5,r3
	exts.w r4,r2
	shll r5
	tst r2,r2
	add r3,r5
	bt/s loc_8c0f7d94
	shll2 r5
	mova @(loc_8C0F7D8C,pc),r0
	mov r5,r3
	fmov.s @r0,fr4
	mov 0x50,r0
	add r13,r3
	fmov.s fr4,@(r0,r14)
	mov 0x54,r0
	fmov.s fr4,@(r0,r14)
	mov 0x58,r0
	fmov.s fr4,@(r0,r14)
	mova @(loc_8C0F7D90,pc),r0
	fmov.s @r0,fr4
	mov 0x08,r0
	fmov.s @(r0,r3),fr3
	mov 0x3C,r0
	fadd fr4,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x34,r0
	fmov.s @(r0,r14),fr2
	fldi0 fr3
	fcmp/gt fr2,fr3
	bt loc_8c0f7dc0
	bra loc_8c0f7dc6
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f7d5e:
	#data 0x012C
loc_8C0F7D60:
	#data 0x01F4
loc_8C0F7D62:
	#data 0x0084
loc_8C0F7D64:
	#data 0x009D
loc_8C0F7D66:
	#data 0x00FF
	#align4

loc_8c0f7d68:
	#data 0x3F000000
loc_8c0f7d6c:
	#data 0x8C26823C
loc_8C0F7D70:
	#data 0x8C26A910
loc_8c0f7d74:
	#data bank10.loc_8c108060
loc_8c0f7d78:
	#data bank10.loc_8c1081e6
loc_8c0f7d7c:
	#data bank10.loc_8c108086
loc_8c0f7d80:
	#data bank10.loc_8c108192
loc_8C0F7D84:
	#data 0x3B03126F
loc_8C0F7D88:
	#data 0x8C28C410
loc_8C0F7D8C:
	#data 0x3F933333
loc_8C0F7D90:
	#data 0x40D00000

;==============================================
loc_8c0f7d94:
	mova @(loc_8C0F7DFC,pc),r0
	mov r5,r3
	fmov.s @r0,fr4
	mov 0x50,r0
	add r13,r3
	fmov.s fr4,@(r0,r14)
	mov 0x54,r0
	fmov.s fr4,@(r0,r14)
	mov 0x58,r0
	fmov.s fr4,@(r0,r14)
	mova @(loc_8C0F7E00,pc),r0
	fmov.s @r0,fr4
	mov 0x08,r0
	fmov.s @(r0,r3),fr3
	mov 0x3C,r0
	fadd fr4,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x34,r0
	fmov.s @(r0,r14),fr2
	fldi0 fr3
	fcmp/gt fr2,fr3
	bf loc_8c0f7dc6

loc_8c0f7dc0:
	mova @(loc_8C0F7E04,pc),r0
	bra loc_8c0f7dca
	fmov.s @r0,fr4

loc_8c0f7dc6:
	fldi1 fr4
	fadd fr4,fr4

loc_8c0f7dca:
	add r13,r5
	fmov.s @r5,fr3
	mov 0x34,r0
	fadd fr4,fr3
	fmov.s fr3,@(r0,r14)

loc_8c0f7dd4:
	add 0x01,r4

loc_8c0f7dd6:
	exts.w r4,r3
	mov 0x02,r5
	cmp/ge r5,r3
	bf loc_8c0f7cfc
	bra loc_8c0f7de8
	nop

loc_8c0f7de2:
	mov.l @(0x24,PC),r2
	jsr @r2
	mov r14,r4

loc_8C0F7DE8:
	add 0x08,r15
	lds.l @r15+,pr
	fmov.s @r15+,fr15
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c0f7dfc:
	#data 0x3F99999a
loc_8c0f7e00:
	#data 0x41080000
loc_8c0f7e04:
	#data 0xC0000000
loc_8C0F7E08:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0F7E0C:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x21,r0 ; r0 set to 0x21
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	mov.w @(loc_8C0F7F16,pc),r0 ; r0 set to 0x52c
	mov.l @(0x14,r14),r4
	extu.b r3,r3
	mov.b @(r0,r4),r2
	mov.l @(loc_8C0F7F28,pc),r0 ; r0 set to 0x8C162B2c
	mov.b @(r0,r2),r1
	cmp/eq r1,r3
	bt loc_8C0F7E2a
	bra loc_8C0F7FA4
	nop

loc_8C0F7E2A:
	mov.l @(loc_8C0F7F2C,pc),r2 ; r2 set to 0x8C044F12
	mov 0x05,r5 ; r5 set to 0x05
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r2
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bf/s loc_8C0F7E3e
	mov r0,r4 ; r4 ??? bc r0 is ???
	bra loc_8C0F7FA4
	nop

loc_8C0F7E3E:
	mov.w @(loc_8C0F7F18,pc),r0 ; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov.l @(loc_8C0F7F30,pc),r1 ; r1 set to 0x8C26A910
	mov.b r2,@(r0,r4)
	add 0x9C,r0 ; r0 set to 0xC8
	mov.w @(loc_8C0F7F1A,pc),r2 ; r2 set to 0x88
	mov.l @(0x18,r14),r3
	add r14,r2 ; r2 ??? bc r14 is ???
	mov.l r3,@(0x18,r4)
	mov.l r2,@(r0,r4)
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(0x14,r14),r3
	mov.l r3,@(0x14,r4)
	mov.b @(r0,r14),r2
	mov.b r2,@(r0,r4)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3
	mov.b r3,@(r0,r4)
	mov.l @r1,r2
	mov.w @(loc_8C0F7F1C,pc),r0 ; r0 set to 0x2Cc
	mov.l @r2,r3
	mov.l @(loc_8C0F7F34,pc),r2 ; r2 set to 0x8C0F7FAa
	mov.l @(r0,r3),r3
	mov.w @(loc_8C0F7F1E,pc),r0 ; r0 set to 0x84
	mov.l r3,@(r0,r4)
	mov 0x20,r0 ; r0 set to 0x20
	mov.l r2,@(0x10,r4)
	mov.b @(r0,r4),r2 ; r2 ??? bc r4 is ???
	extu.b r2,r2
	mov r2,r3
	shll2 r2
	shll r2
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r4),r1 ; r1 ??? bc r4 is ???
	add r3,r2
	shll2 r2
	extu.b r1,r1
	mov r1,r3
	shll r1
	add r3,r1
	mov.l @(loc_8C0F7F38,pc),r3 ; r3 set to 0x8C162AE4
	shll2 r1
	add r3,r2
	mov.l @(loc_8C0F7F3C,pc),r3 ; r3 set to 0x8C1294C8
	add r1,r2
	mov r4,r1
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r1
	tst r1,r1
	bt/s loc_8C0F7EB8
	mov 0x44,r0 ; r0 set to 0x44
	mov.w @(loc_8C0F7F20,pc),r3 ; r3 set to 0x2000
	mov r4,r1
	mov.l @(loc_8C0F7F40,pc),r2 ; r2 set to 0x8000
	add 0x40,r1
	mov.l r3,@r1
	bra loc_8C0F7EC2
	nop

loc_8C0F7EB8:
	mov.l @(loc_8C0F7F44,pc),r3 ; r3 set to 0xE001
	mov r4,r1
	add 0x40,r1
	mov 0x00,r2 ; r2 set to 0x00
	mov.l r3,@r1

loc_8C0F7EC2:
	mov.l r2,@(r0,r4)
	mov 0x05,r5 ; r5 set to 0x05, r5 set to 0x05
	mov.w @(loc_8C0F7F24,pc),r0 ; r0 set to 0xCC, r0 set to 0xCc
	mov 0x01,r6 ; r6 set to 0x01, r6 set to 0x01
	mov.w @(loc_8C0F7F22,pc),r3 ; r3 set to 0x807, r3 set to 0x807
	mov.l r3,@(r0,r4)
	mov.l @(loc_8C0F7F2C,pc),r3 ; r3 set to 0x8C044F12, r3 set to 0x8C044F12
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00, r4 set to 0x00
	tst r0,r0
	bt/s loc_8C0F7FA4
	mov r0,r4 ; r4 set to 0xCC, r4 set to 0xCc
	mov.w @(loc_8C0F7F18,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01, r3 set to 0x01
	mov.l @(loc_8C0F7F48,pc),r1 ; r1 set to 0x8C26823C, r1 set to 0x8C26823c
	mov.b r3,@(r0,r4)  ; r4 ??, r4 ??
	add 0x9C,r0 ; r0 set to 0xC8, r0 set to 0xC8
	mov.w @(loc_8C0F7F1A,pc),r3 ; r3 set to 0x88, r3 set to 0x88
	mov.l @(0x18,r14),r2 ; r2 ??? bc r14 is ???
	add r14,r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???
	mov.l r2,@(0x18,r4)
	mov.l r3,@(r0,r4)
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	mov.l @(0x14,r14),r2
	mov.l r2,@(0x14,r4)
	mov.b @(r0,r14),r3
	mov.b r3,@(r0,r4)
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	mov.b @(r0,r14),r2
	mov.l @(loc_8C0F7F30,pc),r3 ; r3 set to 0x8C26A910, r3 set to 0x8C26A910
	mov.b r2,@(r0,r4)
	mov 0x29,r0 ; r0 set to 0x29, r0 set to 0x29
	mov.l @r1,r2
	mov.b @(r0,r2),r0 ; r0 ??? bc r2 is ???, r0 ??? bc r2 is ???
	tst r0,r0
	bt/s loc_8C0F7F4c
	mov.l @r3,r5 ; r5 ??, r5 ??
	mov.w @(loc_8C0F7F26,pc),r0 ; r0 set to 0x2B8, r0 set to 0x2B8
	mov.l @r5,r3 ; r3 ??? bc r5 is ???, r3 ??? bc r5 is ???
	mov.l @(r0,r3),r2
	bra loc_8C0F7F52
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F7F16:
	#data 0x052c
loc_8C0F7F18:
	#data 0x012c
loc_8C0F7F1A:
	#data 0x0088
loc_8C0F7F1C:
	#data 0x02Cc
loc_8C0F7F1E:
	#data 0x0084
loc_8C0F7F20:
	#data 0x2000
loc_8C0F7F22:
	#data 0x0807
loc_8C0F7F24:
	#data 0x00Cc
loc_8C0F7F26:
	#data 0x02B8
	#align4

loc_8C0F7F28:
	#data bank16.loc_8c162B2c
loc_8C0F7F2C:
	#data bank04.loc_8c044F12
loc_8C0F7F30:
	#data 0x8C26A910
loc_8C0F7F34:
	#data loc_8c0f7FAa
loc_8C0F7F38:
	#data bank16.loc_8c162AE4
loc_8C0F7F3C:
	#data bank12.loc_8c1294C8
loc_8C0F7F40:
	#data 0x00008000
loc_8C0F7F44:
	#data 0x0000E001
loc_8C0F7F48:
	#data 0x8C26823c

;==============================================
loc_8c0f7f4c:
	mov.w @(loc_8C0F7FD0,pc),r0
	mov.l @r5,r3
	mov.l @(r0,r3),r2

loc_8c0f7f52:
	mov.w @(loc_8C0F7FD2,pc),r0
	mov.l @(loc_8c0f7fdc,pc),r3
	mov.l r2,@(r0,r4)
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.b @(r0,r4),r2
	mov 0x21,r0
	mov.b @(r0,r4),r1
	extu.b r2,r2
	mov r2,r3
	shll2 r2
	shll r2
	add r3,r2
	extu.b r1,r1
	mov r1,r3
	shll r1
	add r3,r1
	mov.l @(loc_8c0f7fe0,pc),r3
	shll2 r2
	add r3,r2
	mov.l @(loc_8c0f7fe4,pc),r3
	shll2 r1
	add r1,r2
	mov r4,r1
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8C0F7FE8,pc),r1
	mov 0x3C,r0
	fmov.s @(r0,r4),fr2
	mov r4,r3
	lds r1,fpul
	add 0x40,r3
	mov.l @(loc_8C0F7FEC,pc),r2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.l r2,@r3
	mov.w @(loc_8C0F7FD6,pc),r0
	mov.w @(loc_8C0F7FD4,pc),r3
	mov.l r3,@(r0,r4)

loc_8C0F7FA4:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0F7FAA:
	mov r4,r3
	mov.l @(loc_8C0F7FF0,pc),r1 ; r1 set to 0x8C162B68
	mov.l r4,@-r15
	mov.l @(0x18,r3),r2
	mov.b @(0x04,r2),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0F7FBE:
	mov.w @(loc_8C0F7FD8,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	rts
	mov.b r3,@(r0,r4)

;=============================================
loc_8C0F7FC6:
	mov.l @(loc_8C0F7FF4,pc),r3 ; r3 set to 0x8C0450C0
	mov 0x00,r2 ; r2 set to 0x00
	mov.w @(loc_8C0F7FD8,pc),r0 ; r0 set to 0x12c
	jmp @r3
	mov.b r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f7fd0:
	#data 0x02D0
loc_8c0f7fd2:
	#data 0x0084
loc_8c0f7fd4:
	#data 0x0803
loc_8c0f7fd6:
	#data 0x00CC
loc_8C0F7FD8:
	#data 0x012c
	#align4

loc_8C0F7FDC:
	#data loc_8c0f7FAa
loc_8C0F7FE0:
	#data bank16.loc_8c162AE4
loc_8C0F7FE4:
	#data bank12.loc_8c1294C8
loc_8c0f7fe8:
	#data 0x3DCCCCCd
loc_8c0f7fec:
	#data 0x0000E001
loc_8C0F7FF0:
	#data bank16.loc_8c162B68
loc_8C0F7FF4:
	#data bank04.loc_8c0450C0

;==============================================
loc_8c0f7ff8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xEC,r15
	mov r4,r14
	mov.w @(0x1E,r14),r0
	mov r15,r5
	mov r15,r6
	mov r0,r3
	lds r3,fpul
	mova @(loc_8C0F81E4,pc),r0
	mov.l @(loc_8c0f81e8,pc),r3
	fmov.s @r0,fr2
	add 0x04,r5
	float fpul,fr3
	add 0x08,r6
	fmov fr3,fr4
	fdiv fr2,fr4
	jsr @r3
	mov r15,r4
	mov.w @(0x1C,r14),r0
	mov.l @(loc_8c0f81ec,pc),r12
	mov r0,r5
	add 0xFF,r5
	mov r5,r4
	mov r5,r3
	shll r4
	mov r0,r2
	add r3,r4
	mov r0,r3
	shll2 r4
	mov.l @(loc_8c0f81f0,pc),r6
	mov r4,r7
	mov r4,r5
	mov r0,r4
	shll r4
	add r3,r4
	mov r0,r1
	add 0x01,r2
	mov r2,r3
	mov.l r2,@(0x0C,r15)
	shll2 r4
	shll r2
	mov r4,r13
	add r3,r2
	shll2 r2
	add r12,r7
	mov.l r2,@(0x10,r15)
	add r12,r13
	add r2,r12
	add r6,r4
	add r6,r5
	mova @(loc_8C0F81F4,pc),r0
	fmov.s @r4,fr3
	fmov.s @r0,fr6
	mova @(loc_8C0F81F8,pc),r0
	fmov.s @r0,fr5
	mova @(loc_8C0F81FC,pc),r0
	fmov.s @r0,fr4
	mov 0x04,r0
	fmov.s @(r0,r15),fr0
	mov r2,r3
	fmov.s @r5,fr2
	mov 0x08,r0
	fmul fr0,fr3
	fmov.s @r15,fr0
	add r3,r6
	mov.l @(loc_8C0F8200,pc),r1
	mov r14,r3
	add 0x40,r3
	fmac fr0,fr2,fr3
	fmov.s @r6,fr2
	fmov.s @(r0,r15),fr0
	mov 0x04,r0
	fmac fr0,fr2,fr3
	fmul fr5,fr3
	fdiv fr6,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r1,r2
	mov.l r2,@r3
	fmov.s @(r0,r15),fr0
	mov 0x04,r0
	fmov.s @(r0,r4),fr3
	mov 0x04,r0
	fmov.s @(r0,r5),fr2
	mov 0x08,r0
	fmul fr0,fr3
	fmov.s @r15,fr0
	fmac fr0,fr2,fr3
	fmov.s @(r0,r15),fr0
	mov 0x04,r0
	fmov.s @(r0,r6),fr2
	mov 0x44,r0
	fmac fr0,fr2,fr3
	fmul fr5,fr3
	fdiv fr6,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r1,r3
	mov.l r3,@(r0,r14)
	mov 0x04,r0
	fmov.s @(r0,r15),fr0
	mov 0x08,r0
	fmov.s @(r0,r4),fr3
	mov 0x08,r0
	fmov.s @(r0,r5),fr2
	mov 0x08,r0
	fmul fr0,fr3
	fmov.s @r15,fr0
	fmac fr0,fr2,fr3
	fmov.s @(r0,r15),fr0
	mov 0x08,r0
	fmov.s @(r0,r6),fr2
	fmac fr0,fr2,fr3
	mov 0x48,r0
	fmul fr5,fr3
	fdiv fr6,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r1,r3
	mov.l r3,@(r0,r14)
	mov 0x04,r0
	fmov.s @r4,fr3
	fmov.s @(r0,r15),fr0
	mov 0x08,r0
	fmov.s @r5,fr2
	fmul fr0,fr3
	fmov.s @r15,fr0
	fmac fr0,fr2,fr3
	fmov.s @r6,fr2
	fmov.s @(r0,r15),fr0
	mov 0x68,r0
	fmac fr0,fr2,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x04,r0
	fmov.s @(r0,r15),fr0
	mov 0x04,r0
	fmov.s @(r0,r4),fr3
	mov 0x04,r0
	fmov.s @(r0,r5),fr2
	mov 0x08,r0
	fmul fr0,fr3
	fmov.s @r15,fr0
	fmac fr0,fr2,fr3
	fmov.s @(r0,r15),fr0
	mov 0x04,r0
	fmov.s @(r0,r6),fr2
	mov 0x6C,r0
	fmac fr0,fr2,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x04,r0
	fmov.s @(r0,r15),fr0
	mov 0x08,r0
	fmov.s @(r0,r4),fr3
	mov 0x08,r0
	fmov.s @(r0,r5),fr2
	mov 0x08,r0
	fmul fr0,fr3
	fmov.s @r15,fr0
	fmac fr0,fr2,fr3
	fmov.s @(r0,r15),fr0
	mov 0x08,r0
	fmov.s @(r0,r6),fr2
	mov 0x70,r0
	fmac fr0,fr2,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x04,r0
	fmov.s @r13,fr3
	fmov.s @(r0,r15),fr0
	mov 0x08,r0
	fmov.s @r7,fr2
	fmul fr0,fr3
	fmov.s @r15,fr0
	fmac fr0,fr2,fr3
	fmov.s @r12,fr2
	fmov.s @(r0,r15),fr0
	fmac fr0,fr2,fr3
	mov 0x34,r0
	fmov.s fr3,@(r0,r14)
	mov 0x04,r0
	fmov.s @(r0,r15),fr0
	mov 0x04,r0
	fmov.s @(r0,r13),fr3
	mov 0x04,r0
	fmov.s @(r0,r7),fr2
	mov 0x08,r0
	fmul fr0,fr3
	fmov.s @r15,fr0
	fmac fr0,fr2,fr3
	fmov.s @(r0,r15),fr0
	mov 0x04,r0
	fmov.s @(r0,r12),fr2
	mov 0x38,r0
	fmac fr0,fr2,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x04,r0
	fmov.s @(r0,r15),fr0
	mov 0x08,r0
	fmov.s @(r0,r13),fr3
	mov 0x08,r0
	fmov.s @(r0,r7),fr2
	mov 0x08,r0
	fmul fr0,fr3
	fmov.s @r15,fr0
	fmac fr0,fr2,fr3
	fmov.s @(r0,r15),fr0
	mov 0x08,r0
	fmov.s @(r0,r12),fr2
	fmac fr0,fr2,fr3
	mov 0x3C,r0
	mov 0x1E,r1
	mov.l @(loc_8c0f8204,pc),r3
	add r14,r1
	fmov.s fr3,@(r0,r14)
	mov.w @(0x1E,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	mov 0x05,r0
	jsr @r3
	mov.w @r1,r1
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	tst r0,r0
	bf loc_8c0f81d8
	mov.w @(0x1C,r14),r0
	mov 0x29,r3
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8c0f81d8
	mov 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov 0x00,r0
	mov.w r0,@(0x1E,r14)

loc_8c0f81d8:
	add 0x14,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C0F81E4:
	#data 0x40A00000
loc_8c0f81e8:
	#data bank10.loc_8c109458
loc_8c0f81ec:
	#data bank13.loc_8c13b854
loc_8c0f81f0:
	#data bank13.loc_8c13ba4c
loc_8C0F81F4:
	#data 0x43B40000
loc_8C0F81F8:
	#data 0x47800000
loc_8C0F81FC:
	#data 0x3F000000
loc_8C0F8200:
	#data 0x0000FFFF
loc_8c0f8204:
	#data bank12.loc_8c1292d4

;==============================================
loc_8c0f8208:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xCC,PC),r3
	mov 0x05,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0f82a8
	mov r0,r4
	mov.w @(0xB2,PC),r0
	mov 0x01,r3
	mov.l @(0xC0,PC),r1
	mov.b r3,@(r0,r4)
	mov 0x20,r0
	mov.l @r15,r2
	mov.l @(0xB4,PC),r3
	mov.b r2,@(r0,r4)
	add 0x64,r0
	mov.l r3,@(0x10,r4)
	mov.l @r1,r2
	mov r4,r1
	add 0x34,r1
	mov.l @r2,r3
	mov.l @(0xAC,PC),r2
	mov.l @r3,r3
	mov.l r3,@(r0,r4)
	mov.l @(0xA8,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xB8,PC),r6
	mova @(0xA4,PC),r0
	fmov @r0,fr6
	mova @(0xA4,PC),r0
	fmov @r6,fr3
	mov r4,r3
	fmov @r0,fr5
	mova @(0xA0,PC),r0
	fmul fr6,fr3
	fmov @r0,fr4
	mov 0x04,r0
	mov.l @(0x9C,PC),r5
	add 0x40,r3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r5,r2
	mov.l r2,@r3
	fmov @(r0,r6),fr3
	mov 0x44,r0
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r5,r3
	mov.l r3,@(r0,r4)
	mov 0x08,r0
	fmov @(r0,r6),fr3
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	mov 0x48,r0
	mov.w @(0x48,PC),r2
	ftrc fr3,fpul
	sts fpul,r3
	and r5,r3
	mov.l r3,@(r0,r4)
	mov.w @(0x40,PC),r0
	mov.l @(0x6C,PC),r3
	mov.l r2,@(r0,r4)
	mov.l @r3,r0
	mov.w @(0x10,r0),r0
	and 0x1F,r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov 0x00,r0
	mov.w r0,@(0x1E,r4)

loc_8c0f82a8:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C0F82B0:
	sts.l pr,@-r15
	add 0xFC,r15
	bsr loc_8C0F7FF8
	mov.l r4,@r15
	mov.l @(loc_8C0F8304,pc),r3 ; r3 set to 0x8C26823c
	mov.l @r3,r0
	mov.b @(0x03,r0),r0
	cmp/eq 0x02,r0
	bt loc_8C0F82Cc
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_8C0F8308,pc),r2 ; r2 set to 0x8C0450C0
	jmp @r2
	lds.l @r15+,pr

loc_8C0F82CC:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f82d4:
	#data 0x012c
loc_8c0f82d6:
	#data 0x080f
loc_8c0f82d8:
	#data 0x00cc
	#align4
loc_8C0F82DC:
	#data bank04.loc_8c044F12
loc_8C0F82E0:
	#data loc_8c0f82B0
loc_8C0F82E4:
	#data 0x8C26A914
loc_8C0F82E8:
	#data bank13.loc_8c13b854
loc_8C0F82EC:
	#data bank12.loc_8c1294C8
loc_8C0F82F0:
	#data 0x47800000
loc_8C0F82f4:
	#data 0x43B40000
loc_8C0F82f8:
	#data 0x3F000000
loc_8C0F82fc:
	#data 0x0000FFFf
loc_8C0F8300:
	#data bank13.loc_8c13ba4c
loc_8C0F8304:
	#data 0x8C26823c
loc_8C0F8308:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0F830C:
	mov 0x20,r0
	mov.l @(0x134,PC),r2
	mov.b @(r0,r4),r1
	mova @(0x134,PC),r0
	fmov @r0,fr4
	extu.b r1,r1
	mov.w @(0x1C,r4),r0
	shll r1
	mov r1,r3
	shll r1
	add r3,r1
	mov r0,r3
	shll2 r1
	lds r3,fpul
	add r2,r1
	mov r1,r5
	add 0x0C,r5
	fmov @r1,fr5
	float fpul,fr0
	fmov @r5,fr3
	mov 0x34,r0
	fmov fr5,fr2
	fsub fr5,fr3
	fdiv fr4,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x04,r0
	fmov @(r0,r5),fr3
	fmov @(r0,r1),fr5
	mov.w @(0x1C,r4),r0
	fsub fr5,fr3
	fdiv fr4,fr3
	mov r0,r3
	lds r3,fpul
	fmov fr5,fr2
	mov 0x38,r0
	float fpul,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x08,r0
	fmov @(r0,r5),fr3
	fmov @(r0,r1),fr5
	mov.w @(0x1C,r4),r0
	fsub fr5,fr3
	fmov fr5,fr2
	mov r0,r3
	lds r3,fpul
	mov 0x3C,r0
	fdiv fr4,fr3
	float fpul,fr0
	fmac fr0,fr3,fr2
	rts 
	fmov fr2,@(r0,r4)

;=============================================
loc_8C0F8376:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r14,r1
	sts.l pr,@-r15
	mov 0x03,r4
	mov r4,r0
	nop 
	mov.l @(0xC4,PC),r3
	jsr @r3
	nop 
	cmp/eq 0x01,r0
	bt.s loc_8c0f83b8
	mov r0,r13
	mov r13,r3
	mov r14,r1
	shll r3
	mov r4,r0
	nop 
	mov.l @(0xB0,PC),r2
	jsr @r2
	nop 
	mov r3,r4
	mov.w @(0x94,PC),r3
	add r0,r4
	mov.l @(0xA8,PC),r0
	mul.l r3,r4
	mov r13,r1
	add 0x18,r1
	sts macl,r4
	mov.b @(r0,r4),r2
	cmp/eq r1,r2
	bt loc_8c0f840c

loc_8C0F83B8:
	mov.l @(0x9C,PC),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0f840c
	mov r0,r4
	mov.w @(0x72,PC),r0
	mov 0x01,r3
	mov.l @(0x90,PC),r1
	mov.b r3,@(r0,r4)
	mov 0x20,r0
	mov.l @(0x88,PC),r3
	mov.b r14,@(r0,r4)
	add 0x64,r0
	mov.l r3,@(0x10,r4)
	mov r14,r3
	mov.l @r1,r2
	shll2 r3
	mov r4,r1
	add 0x34,r1
	mov.l @r2,r2
	add r2,r3
	mov r14,r2
	mov.l @(0x4,r3),r3
	shll r2
	mov.l r3,@(r0,r4)
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(0x4C,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(0x64,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x3C,PC),r0
	mov.w @(0x38,PC),r1
	mov.l r1,@(r0,r4)
	mov 0x00,r0
	mov.w r0,@(0x1C,r4)

loc_8C0F840C:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0F8414:
	mov.l @(0x50,PC),r3
	mov.l @r3,r5
	mov.b @(0x3,r5),r0
	cmp/eq 0x02,r0
	bf loc_8c0f8424
	mov.w @(0xE,r5),r0
	cmp/eq 0x03,r0
	bf loc_8c0f842a
  
loc_8C0F8424:
	mov.l @(0x44,PC),r3
	jmp @r3
	nop 


loc_8C0F842A:
	mov.w @(0x1C,r4),r0
	cmp/eq 0x1E,r0
	bt loc_8c0f8438
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	bra loc_8c0f830c
	mov.w r0,@(0x1C,r4)

loc_8C0F8438:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f843c:
	#data 0x05a4
loc_8c0f843e:
	#data 0x012c
loc_8c0f8440:
	#data 0x0801
loc_8c0f8442:
	#data 0x00cc
	#align4

loc_8C0F8444:
	#data bank13.loc_8c13bc44
loc_8C0F8448:
	#data 0x41F00000
loc_8C0F844C:
	#data bank12.loc_8c1292D4
loc_8C0F8450:
	#data bank12.loc_8c129128
loc_8C0F8454:
	#data 0x8C26886c
loc_8C0F8458:
	#data bank04.loc_8c044F12
loc_8C0F845C:
	#data loc_8c0f8414
loc_8C0F8460:
	#data 0x8C26A914
loc_8C0F8464:
	#data bank12.loc_8c1294C8
loc_8C0F8468:
	#data 0x8C26823c
loc_8C0F846C:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0F8470:
	mov 0x23,r0 ; r0 set to 0x23
	lds r5,fpul
	mov.b @(r0,r4),r1
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r2
	extu.b r1,r1
	float fpul,fr2
	mov r1,r3
	shll r1
	shll2 r3
	mov.w @(0x1C,r4),r0
	extu.b r2,r2
	add r3,r1
	add r2,r1
	mov.l @(loc_8C0F85D8,pc),r2 ; r2 set to 0x8C13BCD4
	mov r1,r3
	shll r1
	add r3,r1
	fmov fr2,fr4
	add r6,r1
	mov r1,r3
	shll r1
	add r3,r1
	mov r0,r3 ; r3 set to 0x20
	shll2 r1
	add r2,r1
	mov r1,r6
	add 0x0C,r6
	fmov.s @r6,fr3 ; r3 ??? bc r6 is ???
	fmov.s @r1,fr5
	fsub fr5,fr3
	fdiv fr2,fr3
	lds r3,fpul
	mov 0x34,r0 ; r0 set to 0x34
	fmov fr5,fr2 ; r2 ??? bc r5 is ???
	float fpul,fr0
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @(r0,r6),fr3
	fmov.s @(r0,r1),fr5
	mov.w @(0x1C,r4),r0
	fsub fr5,fr3
	fmov fr5,fr2
	mov r0,r3 ; r3 set to 0x04
	lds r3,fpul
	mov 0x38,r0 ; r0 set to 0x38
	fdiv fr4,fr3 ; r3 ??? bc r4 is ???
	float fpul,fr0
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s @(r0,r6),fr3
	fmov.s @(r0,r1),fr5
	mov.w @(0x1C,r4),r0
	fsub fr5,fr3
	fmov fr5,fr2
	mov r0,r3 ; r3 set to 0x08
	lds r3,fpul
	mov 0x3C,r0 ; r0 set to 0x3c
	fdiv fr4,fr3 ; r3 ??? bc r4 is ???
	float fpul,fr0
	fmac fr0,fr3,fr2
	rts
	fmov.s fr2,@(r0,r4)

;=============================================
loc_8C0F84F2:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(0xDC,PC),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0f857e
	mov r0,r4
	mov.w @(0xC2,PC),r0
	mov 0x00,r3
	mov r13,r5
	mov.l @(0xD0,PC),r1
	mov.b r3,@(r0,r4)
	shll r5
	mov.l @(0xC4,PC),r3
	mov 0x20,r0
	mov.b r14,@(r0,r4)
	mov 0x23,r0
	mov.b r13,@(r0,r4)
	add 0x61,r0
	mov.l r3,@(0x10,r4)
	mov r13,r3
	shll2 r3
	mov.l @r1,r2
	add r3,r5
	add r14,r5
	mov.l @r2,r2
	mov r5,r3
	shll2 r3
	add r2,r3
	mov r5,r2
	mov.l @(0x1C,r3),r3
	shll r2
	mov.l r3,@(r0,r4)
	mov r5,r3
	add r3,r2
	mov r2,r3
	shll r2
	add r3,r2
	shll2 r2
	mov.l @(0x88,PC),r3
	mov r4,r1
	add 0x34,r1
	add r3,r2
	mov.l @(0x90,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x90,PC),r2
	mov r4,r1
	mov.l @(0x88,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x6C,PC),r0
	mov.w @(0x68,PC),r1
	mov.l r1,@(r0,r4)
	mov r13,r0
	nop 
	mov 0x0D,r3
	muls.w r3,r14
	shll r0
	sts macl,r14
	add r14,r0
	add 0x3C,r0
	mov.w r0,@(0x1C,r4)

loc_8C0F857E:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0F8586:
	mov.l @(0x68,PC),r3
	mov.l r14,@-r15
	mov r4,r14
	mov.l @r3,r4
	mov.b @(0x3,r4),r0
	cmp/eq 0x02,r0
	bf loc_8c0f859a
	mov.w @(0xE,r4),r0
	cmp/eq 0x03,r0
	bf loc_8c0f85a2

loc_8C0F859A:
	mov.l @(0x58,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0F85A2:
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x50,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0F85B2:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0f85ce
	mov.b @(0x5,r4),r0
	mov 0x01,r3
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov.w @(0x8,PC),r0
	mov.b r3,@(r0,r4)
	mov 0x00,r0
	mov.w r0,@(0x1C,r4)

loc_8C0F85CE:
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f85d2:
	#data 0x012C
loc_8c0f85d4:
	#data 0x0811
loc_8c0f85d6:
	#data 0x00CC
	#align4

loc_8C0F85D8:
	#data bank13.loc_8c13bcD4
loc_8C0F85DC:
	#data bank04.loc_8c044F12
loc_8C0F85E0:
	#data loc_8c0f8586
loc_8C0F85E4:
	#data 0x8C26A914
loc_8C0F85E8:
	#data bank12.loc_8c1294C8
loc_8C0F85EC:
	#data bank13.loc_8c13be84
loc_8C0F85F0:
	#data 0x8C26823c
loc_8C0F85F4:
	#data bank04.loc_8c0450C0
loc_8C0F85F8:
	#data bank16.loc_8c162B80

;==============================================
loc_8C0F85FC:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	add 0xFF,r0
	exts.w r0,r0
	cmp/eq 0x08,r0
	bt loc_8C0F8638
	mov.w @(0x1C,r14),r0
	mov r14,r4
	fldi1 fr2
	mov 0x08,r5 ; r5 set to 0x08
	neg r0,r0
	add 0x08,r0
	lds r0,fpul
	mova @(loc_8C0F8714,pc),r0  ; r0 set to 0x8C0F8714
	fmov.s @r0,fr0 ; r0 ??
	mov 0x50,r0 ; r0 set to 0x50
	mov 0x00,r6 ; r6 set to 0x00
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov fr2,fr3
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	bra loc_8C0F8470
	mov.l @r15+,r14

loc_8C0F8638:
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x0D,r0 ; r0 set to 0x0d
	mov.w r0,@(0x1C,r14)
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r14),r2
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r1
	extu.b r2,r2
	mov r2,r3
	shll2 r3
	shll r2
	extu.b r1,r1
	add r3,r2
	add r1,r2
	mov r14,r1
	mov r2,r3
	shll r2
	add r3,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8C0F8718,pc),r3 ; r3 set to 0x8C13BCE0
	shll2 r2
	add r3,r2
	mov.l @(loc_8C0F871C,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(loc_8C0F8720,pc),r2 ; r2 set to 0x8C13BE84
	mov r14,r1
	mov.l @(loc_8C0F871C,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(loc_8C0F871C,pc),r3 ; r3 set to 0x8C1294C8
	mov r14,r2 ; r2 ??? bc r14 is ???
	sub r0,r15
	add 0x34,r2
	jsr @r3
	mov r15,r1
	mov.l @(loc_8C0F8724,pc),r2 ; r2 set to 0x8C0F8734
	jsr @r2
	mov 0x00,r4 ; r4 set to 0x00
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0F8728,pc),r3 ; r3 set to 0x8C04257c
	mov 0x45,r4 ; r4 set to 0x45
	jmp @r3
	mov.l @r15+,r14

;=============================================
loc_8C0F86A0:
	mov.l @(0x88,PC),r2
	mov.l @r2,r3
	mov.w @(0xE,r3),r0
	tst r0,r0
	bt loc_8c0f86b4
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov 0x00,r0
	mov.w r0,@(0x1C,r4)

loc_8C0F86B4:
	rts
	nop

;=============================================
loc_8C0F86B8:
	sts.l pr,@-r15
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	add 0xFF,r0
	exts.w r0,r0
	cmp/eq 0x08,r0
	bt loc_8C0F86D0
	mov 0x08,r5 ; r5 set to 0x08
	mov 0x01,r6 ; r6 set to 0x01
	bra loc_8C0F8470
	lds.l @r15+,pr

loc_8C0F86D0:
	mov.b @(0x05,r4),r0
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r4),r2
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r1
	extu.b r2,r2
	mov r2,r3
	shll r2
	shll2 r3
	extu.b r1,r1
	add r3,r2
	add r1,r2
	mov r4,r1
	mov r2,r3
	shll r2
	add r3,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8C0F8730,pc),r3 ; r3 set to 0x8C13BCEc
	shll2 r2
	add r3,r2
	mov.l @(loc_8C0F871C,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	lds.l @r15+,pr
	rts
	nop

;=============================================
loc_8C0F870E:
	rts
	nop

;=============================================
	#align4

loc_8C0F8714:
	#data 0x3EC00000
loc_8C0F8718:
	#data bank13.loc_8c13bcE0
loc_8C0F871C:
	#data bank12.loc_8c1294C8
loc_8C0F8720:
	#data bank13.loc_8c13be84
loc_8C0F8724:
	#data loc_8c0f8734
loc_8C0F8728:
	#data bank04.loc_8c04257c
loc_8C0F872C:
	#data 0x8C26823c
loc_8C0F8730:
	#data bank13.loc_8c13bcEc

;==============================================
loc_8C0F8734:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xA4,PC),r3
	mov 0x05,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0f8794
	mov r0,r4
	mov.w @(0x8A,PC),r0
	mov 0x01,r3
	mov.l @(0x98,PC),r1
	mov.b r3,@(r0,r4)
	mov 0x20,r0
	mov.l @r15,r2
	mov.l @(0x8C,PC),r3
	mov.b r2,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r1,r2
	mov r4,r1
	mov.l @r15,r3
	add 0x50,r1
	mov.l @r2,r2
	shll2 r3
	add r2,r3
	mov.w @(0x6C,PC),r2
	add 0x4C,r3
	mov.l @r3,r0
	add r4,r2
	mov.l @(0x7C,PC),r3
	mov.l r0,@r2
	mov.l @(0x74,PC),r2
	jsr @r3
	mov 0x0C,r0
	mov r15,r2
	mov.l @(0x70,PC),r3
	mov r4,r1
	add 0x08,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x50,PC),r0
	mov.w @(0x4C,PC),r2
	mov.l r2,@(r0,r4)
	mov 0x00,r0
	mov.w r0,@(0x1C,r4)

loc_8C0F8794:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;=============================================
loc_8C0F879C:
	mov.l @(loc_8C0F87F4,pc),r3 ; r3 set to 0x8C26823c
	mov.l @r3,r0
	mov.b @(0x03,r0),r0
	cmp/eq 0x02,r0
	bf loc_8C0F87Ce
	mov.w @(0x1C,r4),r0
	cmp/eq 0x08,r0
	bt loc_8C0F87Ce
	mov.w @(0x1C,r4),r0
	fldi1 fr2
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	mov r0,r3 ; r3 ??? bc r0 is ???
	lds r3,fpul
	mova @(loc_8C0F87F8,pc),r0  ; r0 set to 0x8C0F87F8
	fmov.s @r0,fr0 ; r0 ??
	mov 0x50,r0 ; r0 set to 0x50
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov fr2,fr3
	bra loc_8C0F87D4
	fmov.s fr3,@(r0,r4)

loc_8C0F87CE:
	mov.l @(loc_8C0F87FC,pc),r2 ; r2 set to 0x8C0450C0
	jmp @r2
	nop

loc_8C0F87D4:
	rts
	nop

;=============================================
loc_8c0f87d8:
	#data 0x012c
loc_8c0f87da:
	#data 0x0084
loc_8c0f87dc:
	#data 0x0811
loc_8c0f87de:
	#data 0x00cc
	#align4

loc_8C0F87E0:
	#data bank04.loc_8c044F12
loc_8C0F87E4:
#data loc_8c0f879c
loc_8C0F87E8:
	#data 0x8C26A914
loc_8C0F87EC:
	#data bank13.loc_8c13be90
loc_8C0F87F0:
	#data bank12.loc_8c1294C8
loc_8C0F87F4:
	#data 0x8C26823c
loc_8C0F87F8:
	#data 0x3EC00000
loc_8C0F87FC:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0F8800:
	mov.l @(0x178,PC),r5
	mova @(0x180,PC),r0
	fmov @r0,fr4
	mov r5,r1
	add 0x0C,r1
	mov r5,r7
	fmov @r1,fr3
	fmov @r7,fr5
	mov.w @(0x1C,r4),r0
	fsub fr5,fr3
	fmov fr5,fr2
	mov r0,r3
	lds r3,fpul
	mov 0x34,r0
	mov.l @(0x160,PC),r6
	fdiv fr4,fr3
	mov r6,r5
	float fpul,fr0
	add 0x0C,r6
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x04,r0
	fmov @(r0,r1),fr3
	fmov @(r0,r7),fr5
	mov.w @(0x1C,r4),r0
	fsub fr5,fr3
	fmov fr5,fr2
	mov r0,r3
	lds r3,fpul
	fdiv fr4,fr3
	float fpul,fr0
	fmac fr0,fr3,fr2
	mov 0x38,r0
	fmov fr2,@(r0,r4)
	mov 0x08,r0
	fmov @(r0,r1),fr3
	fmov @(r0,r7),fr5
	mov.w @(0x1C,r4),r0
	fsub fr5,fr3
	fmov fr5,fr2
	mov r0,r3
	lds r3,fpul
	mov 0x3C,r0
	mov r4,r3
	mov.l @(0x134,PC),r7
	add 0x40,r3
	fdiv fr4,fr3
	float fpul,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r4)
	mova @(0x120,PC),r0
	fmov @r6,fr3
	fmov @r5,fr8
	fmov @r0,fr7
	mova @(0x11C,PC),r0
	fsub fr8,fr3
	fmov @r0,fr6
	mova @(0x120,PC),r0
	fmov @r0,fr5
	mov.w @(0x1C,r4),r0
	fdiv fr4,fr3
	mov r0,r2
	lds r2,fpul
	float fpul,fr0
	fmov fr8,fr2
	fmac fr0,fr3,fr2
	mov 0x04,r0
	fmul fr5,fr2
	fdiv fr7,fr2
	fadd fr6,fr2
	ftrc fr2,fpul
	sts fpul,r2
	and r7,r2
	mov.l r2,@r3
	fmov @(r0,r5),fr8
	fmov @(r0,r6),fr3
	mov.w @(0x1C,r4),r0
	fsub fr8,fr3
	fmov fr8,fr2
	mov r0,r3
	lds r3,fpul
	mov 0x44,r0
	fdiv fr4,fr3
	float fpul,fr0
	fmac fr0,fr3,fr2
	fmul fr5,fr2
	fdiv fr7,fr2
	fadd fr6,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r7,r3
	mov.l r3,@(r0,r4)
	mov 0x08,r0
	fmov @(r0,r6),fr3
	fmov @(r0,r5),fr8
	fsub fr8,fr3
	fdiv fr4,fr3
	mov.w @(0x1C,r4),r0
	fmov fr8,fr2
	mov r0,r3
	lds r3,fpul
	mov 0x48,r0
	float fpul,fr0
	fmac fr0,fr3,fr2
	fmul fr5,fr2
	fdiv fr7,fr2
	fadd fr6,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r7,r3
	rts 
	mov.l r3,@(r0,r4)

;=============================================
loc_8C0F88E0:
	sts.l pr,@-r15
	mov.l @(0xB4,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0f896e
	mov r0,r4
	mov.l @(0xAC,PC),r1
	mov 0x01,r7
	mov.l @(0xA4,PC),r3
	mov.w @(0x78,PC),r0
	mov.b r7,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r1,r2
	mov r4,r1
	mov.w @(0x70,PC),r0
	add 0x34,r1
	mov.l @r2,r3
	mov.l @(0x70,PC),r2
	mov.l @r3,r3
	mov.l r3,@(r0,r4)
	mov.l @(0x94,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x68,PC),r5
	mova @(0x7C,PC),r0
	fmov @r0,fr6
	mova @(0x6C,PC),r0
	fmov @r5,fr3
	mov r4,r3
	fmov @r0,fr5
	mova @(0x68,PC),r0
	fmul fr6,fr3
	fmov @r0,fr4
	mov 0x04,r0
	mov.l @(0x64,PC),r6
	add 0x40,r3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r6,r2
	mov.l r2,@r3
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
	mov 0x05,r2
	ftrc fr3,fpul
	sts fpul,r3
	and r6,r3
	mov.l r3,@(r0,r4)
	mov.w @(0x12,PC),r0
	mov.l r2,@(r0,r4)
	mov 0x00,r0
	mov r7,r0
	nop 
	mov.w r0,@(0x1C,r4)

loc_8C0F896E:
	lds.l @r15+,pr
	rts
	nop

;=============================================
loc_8c0f8974:
	#data 0x012c
loc_8c0f8976:
	#data 0x0084
loc_8c0f8978:
	#data 0x00Cc
	#align4

loc_8C0F897C:
	#data bank13.loc_8c13be9c
loc_8C0F8980:
	#data bank13.loc_8c13beB4
loc_8C0F8984:
	#data 0x42700000
loc_8C0F8988:
	#data 0x43B40000
loc_8C0F898c:
	#data 0x3F000000
loc_8C0F8990:
	#data 0x0000FFFf
loc_8C0F8994:
	#data 0x47800000
loc_8C0F8998:
	#data bank04.loc_8c044F12
loc_8C0F899C:
	#data loc_8c0f89A8
loc_8C0F89a0:
	#data 0x8C26A91c
loc_8C0F89A4:
	#data bank12.loc_8c1294C8

;==============================================
loc_8C0F89A8:
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
	add 0xF4,r15
	mov r4,r14
	mov.w @(0x1C,r14),r0
	cmp/eq 0x3C,r0
	bt loc_8c0f89d4
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	bsr loc_8c0f8800
	mov r14,r4

loc_8C0F89D4:
	mov.w @(0x1E,r14),r0
	mov.w @(0x9C,PC),r3
	add 0x14,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c0f89e6
	mov 0x00,r0
	mov.w r0,@(0x1E,r14)

loc_8C0F89E6:
	mov.l @(0x94,PC),r3
	mov.w @(0x8C,PC),r0
	mov.l @r3,r4
	mov.l @(0x90,PC),r1
	mov.l @r4,r2
	mov.l @(r0,r14),r5
	jsr @r1
	mov.l @(0x4,r2),r4
	mova @(0x9C,PC),r0
	mov.l @(0xA4,PC),r12
	fmov @r0,fr12
	mova @(0x98,PC),r0
	fmov @r0,fr13
	mova @(0x98,PC),r0
	mov.l @(0x84,PC),r9
	mov 0x00,r13
	mov.l @(0x7C,PC),r8
	mov.l @(0x84,PC),r11
	mov.l @(0x80,PC),r10
	bra loc_8c0f8a52
	fmov @r0,fr14

loc_8C0F8A10:
	jsr @r11
	mov r15,r4
	mov 0x04,r0
	fmov @(r0,r15),fr15
	fmov fr15,fr3
	fmul fr15,fr3
	fmov fr3,@-r15
	mov.w @(0x1E,r14),r0
	mov r0,r4
	add r13,r4
	lds r4,fpul
	float fpul,fr2
	fmov fr2,fr1
	fmul fr12,fr1
	fdiv fr13,fr1
	fmov fr1,fr2
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r8
	and r12,r4
	fmov @r15+,fr3
	mova @(0x64,PC),r0
	add 0x14,r13
	fmul fr0,fr3
	fmov @r0,fr0
	mov 0x08,r0
	fmov @(r0,r15),fr2
	mov 0x08,r0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r15)
	jsr @r10
	mov r15,r4

loc_8C0F8A52:
	jsr @r9
	nop 
	tst r0,r0
	bt loc_8c0f8a10
	add 0x0C,r15
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
loc_8c0f8a76:
	#data 0x0168
loc_8c0f8a78:
	#data 0x0084
	#align4

loc_8c0f8a7c:
	#data 0x8C26A91c
loc_8C0F8A80:
	#data bank10.loc_8c108060
loc_8C0F8A84:
	#data bank11.loc_8c11E860
loc_8C0F8A88:
	#data bank10.loc_8c108086
loc_8C0F8A8C:
	#data bank10.loc_8c1081B4
loc_8C0F8A90:
	#data bank10.loc_8c108168
loc_8C0F8A94:
#data 0x47800000
loc_8C0F8A98:
	#data 0x43B40000
loc_8C0F8A9c:
	#data 0x3F000000
loc_8C0F8Aa0:
	#data 0x0000FFFf
loc_8C0F8Aa4:
	#data 0x3CA3D70a

;==============================================
loc_8C0F8AA8:
	mov 0x20,r0
	mov.l @(0x144,PC),r2
	mov.b @(r0,r4),r1
	mova @(0x144,PC),r0
	fmov @r0,fr4
	extu.b r1,r1
	mov.w @(0x1C,r4),r0
	shll r1
	mov r1,r3
	shll r1
	add r3,r1
	mov r0,r3
	shll2 r1
	lds r3,fpul
	add r2,r1
	mov r1,r5
	add 0x0C,r5
	fmov @r1,fr5
	float fpul,fr0
	fmov @r5,fr3
	mov 0x34,r0
	fmov fr5,fr2
	fsub fr5,fr3
	fdiv fr4,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x04,r0
	fmov @(r0,r5),fr3
	fmov @(r0,r1),fr5
	mov.w @(0x1C,r4),r0
	fsub fr5,fr3
	fdiv fr4,fr3
	mov r0,r3
	lds r3,fpul
	fmov fr5,fr2
	mov 0x38,r0
	float fpul,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x08,r0
	fmov @(r0,r5),fr3
	fmov @(r0,r1),fr5
	mov.w @(0x1C,r4),r0
	fsub fr5,fr3
	fmov fr5,fr2
	mov r0,r3
	lds r3,fpul
	mov 0x3C,r0
	fdiv fr4,fr3
	float fpul,fr0
	fmac fr0,fr3,fr2
	rts 
	fmov fr2,@(r0,r4)

;=============================================
loc_8C0F8B12:
	mov.l r14,@-r15
	mov 0x0B,r5 ; r5 set to 0x0b
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	mov.l @(loc_8C0F8BF8,pc),r3 ; r3 set to 0x8C044F12
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C0F8BE2
	mov r0,r14
	mov.w @(loc_8C0F8BEA,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov 0x22,r2 ; r2 set to 0x22
	mov.l @(loc_8C0F8C04,pc),r1 ; r1 set to 0x8C26A91c
	mov.b r3,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(loc_8C0F8BFC,pc),r3 ; r3 set to 0x8C0F8C24
	add r14,r2 ; r2 ??? bc r14 is ???
	mov.b r13,@(r0,r14)
	mov.l @(loc_8C0F8C00,pc),r0 ; r0 set to 0x8C13BF98
	mov.l r3,@(0x10,r14)
	mov.b @(r0,r13),r3 ; r3 ??? bc r13 is ???
	mov.b r3,@r2
	mov 0x22,r3 ; r3 set to 0x22
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l @r1,r0 ; r0 ??
	mov.b @r3,r3
	mov r14,r1 ; r1 ??? bc r14 is ???
	mov.l @r0,r0
	add 0x34,r1
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	mov.w @(loc_8C0F8BEC,pc),r0 ; r0 set to 0x84
	mov.l r2,@(r0,r14)
	mov r13,r2
	shll r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8C0F8BF0,pc),r3 ; r3 set to 0x8C13BECc
	shll2 r2
	add r3,r2
	mov.l @(loc_8C0F8C08,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(loc_8C0F8C0C,pc),r5 ; r5 set to 0x8C13BF8c
	mova @(loc_8C0F8C10,pc),r0  ; r0 set to 0x8C0F8C10
	fmov.s @r0,fr6 ; r6 ??
	mova @(loc_8C0F8C14,pc),r0  ; r0 set to 0x8C0F8C14
	fmov.s @r5,fr3 ; r3 ??
	mov r14,r3
	fmov.s @r0,fr5 ; r5 ??
	mova @(loc_8C0F8C18,pc),r0  ; r0 set to 0x8C0F8C18
	fmul fr6,fr3
	fmov.s @r0,fr4 ; r4 ??
	mov 0x04,r0 ; r0 set to 0x04
	mov.l @(loc_8C0F8C1C,pc),r4 ; r4 set to 0xFFFf
	add 0x40,r3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r4,r2
	mov.l r2,@r3
	fmov.s @(r0,r5),fr3
	mov 0x44,r0 ; r0 set to 0x44
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r4,r3
	mov.l r3,@(r0,r14)
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s @(r0,r5),fr3
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	mov 0x48,r0 ; r0 set to 0x48
	mov 0x03,r2 ; r2 set to 0x03
	ftrc fr3,fpul
	sts fpul,r3
	and r4,r3
	mov.l r3,@(r0,r14)
	mov 0x00,r4 ; r4 set to 0x00
	mov.w @(loc_8C0F8BEE,pc),r0 ; r0 set to 0xCc
	mov.l r2,@(r0,r14)
	mov r4,r0 ; r0 set to 0x00
	nop
	mov 0x02,r3 ; r3 set to 0x02
	mov.w r0,@(0x1C,r14)
	cmp/ge r3,r13
	bt/s loc_8C0F8BE2
	mov.w r0,@(0x1E,r14)
	lds.l @r15+,pr
	mov.w @(loc_8C0F8BEC,pc),r0 ; r0 set to 0x84
	mov.l @(loc_8C0F8C20,pc),r3 ; r3 set to 0x8C108210
	mov.l @r15+,r13
	mov.l @(r0,r14),r4 ; r4 ??? bc r14 is ???
	jmp @r3
	mov.l @r15+,r14

loc_8C0F8BE2:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0F8BEA:
	#data 0x012c
loc_8C0F8BEC:
	#data 0x0084
loc_8C0F8BEE:
	#data 0x00Cc
	#align4

loc_8C0F8BF0:
	#data bank13.loc_8c13beCc
loc_8C0F8BF4:
	#data 0x41F00000
loc_8C0F8BF8:
	#data bank04.loc_8c044F12
loc_8C0F8BFC:
	#data loc_8c0f8C24
loc_8C0F8C00:
	#data bank13.loc_8c13bf98
loc_8C0F8C04:
	#data 0x8C26A91c
loc_8C0F8C08:
	#data bank12.loc_8c1294C8
loc_8C0F8C0C:
	#data bank13.loc_8c13bf8c
loc_8C0F8C10:
	#data 0x47800000
loc_8C0F8C14:
	#data 0x43B40000
loc_8C0F8C18:
	#data 0x3F000000
loc_8C0F8C1C:
	#data 0x0000FFFf
loc_8C0F8C20:
	#data bank10.loc_8c108210

;==============================================
loc_8C0F8C24:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.w @(0x1C,r14),r0
	cmp/eq 0x1E,r0
	bt loc_8c0f8c48
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	bsr loc_8c0f8aa8
	mov r14,r4

loc_8C0F8C48:
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov 0x02,r3
	extu.b r2,r2
	cmp/ge r3,r2
	bt loc_8c0f8cd6
	mov.w @(0x1E,r14),r0
	mov.w @(0x90,PC),r3
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c0f8c66
	mov 0x00,r0
	mov.w r0,@(0x1E,r14)

loc_8C0F8C66:
	mov.w @(0x82,PC),r0
	mov.l @(0x84,PC),r3
	mov.l @(r0,r14),r5
	mov 0x22,r0
	mov.b @(r0,r14),r2
	mov.l @r3,r4
	extu.b r2,r2
	mov.l @r4,r4
	shll2 r2
	add r2,r4
	mov.l @(0x78,PC),r2
	jsr @r2
	mov.l @(0x4,r4),r4
	mov.l @(0x7C,PC),r12
	mova @(0x80,PC),r0
	mov.l @(0x74,PC),r11
	mov 0x01,r13
	mov.l @(0x6C,PC),r10
	fldi1 fr14
	bra loc_8c0f8cce
	fmov @r0,fr15

loc_8C0F8C90:
	mov r15,r5
	add 0x04,r5
	jsr @r12
	mov r15,r4
	mov 0x20,r0
	mov.b @(r0,r14),r2
	extu.b r2,r2
	tst r13,r2
	bt loc_8c0f8cb2
	mov.w @(0x1E,r14),r0
	fmov @r15,fr2
	mov r0,r3
	lds r3,fpul
	fmov fr15,fr0
	float fpul,fr3
	bra loc_8c0f8cc4
	fmac fr0,fr3,fr2

loc_8C0F8CB2:
	mov.w @(0x1E,r14),r0
	fmov @r15,fr2
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr15,fr3
	fneg fr3
	fadd fr14,fr3
	fadd fr3,fr2

loc_8C0F8CC4:
	mov r15,r5
	add 0x04,r5
	fmov fr2,@r15
	jsr @r10
	mov r15,r4

loc_8C0F8CCE:
	jsr @r11
	nop 
	tst r0,r0
	bt loc_8c0f8c90

loc_8C0F8CD6:
	add 0x08,r15
	lds.l @r15+,pr
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f8cea:
	#data 0x00c8
loc_8c0f8cec:
	#data 0x0084
	#align4

loc_8C0F8CF0:
	#data 0x8C26A91c
loc_8C0F8CF4:
	#data bank10.loc_8c108060
loc_8C0F8CF8:
	#data bank10.loc_8c1081E6
loc_8C0F8CFC:
	#data bank10.loc_8c108086
loc_8C0F8D00:
	#data bank10.loc_8c108192
loc_8C0F8d04:
	#data 0x3BA3D70a

;==============================================
loc_8C0F8D08:
	mov.l r14,@-r15
	mov 0x05,r5 ; r5 set to 0x05
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	mov.l @(loc_8C0F8E20,pc),r3 ; r3 set to 0x8C044F12
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C0F8E0a
	mov r0,r14
	mov.w @(loc_8C0F8E12,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov 0x22,r2 ; r2 set to 0x22
	mov.l @(loc_8C0F8E2C,pc),r1 ; r1 set to 0x8C26A924
	mov.b r3,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(loc_8C0F8E24,pc),r3 ; r3 set to 0x8C0F8E54
	add r14,r2 ; r2 ??? bc r14 is ???
	mov.b r13,@(r0,r14)
	mov r13,r6 ; r6 ??? bc r13 is ???
	mov.l @(loc_8C0F8E28,pc),r0 ; r0 set to 0x8C162B94
	shll r6
	mov.l r3,@(0x10,r14)
	mov.b @(r0,r13),r3 ; r3 ??? bc r13 is ???
	mov.b r3,@r2
	mov 0x22,r3 ; r3 set to 0x22
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l @r1,r0 ; r0 ??
	mov.b @r3,r3
	mov r14,r1 ; r1 ??? bc r14 is ???
	mov.l @r0,r0
	add 0x34,r1
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	mov r13,r3
	mov.w @(loc_8C0F8E14,pc),r0 ; r0 set to 0x84
	add r3,r6
	shll2 r6
	mov.l r2,@(r0,r14)
	mov.l @(loc_8C0F8E30,pc),r2 ; r2 set to 0x8C162B98
	add r6,r2 ; r2 ??? bc r6 is ???
	mov.l @(loc_8C0F8E34,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(loc_8C0F8E48,pc),r5 ; r5 set to 0x8C162BBc
	mova @(loc_8C0F8E38,pc),r0  ; r0 set to 0x8C0F8E38
	fmov.s @r0,fr6
	mova @(loc_8C0F8E3C,pc),r0  ; r0 set to 0x8C0F8E3c
	add r6,r5 ; r5 ??? bc r6 is ???
	fmov.s @r0,fr5
	fmov.s @r5,fr3 ; r3 ??? bc r5 is ???
	mova @(loc_8C0F8E40,pc),r0  ; r0 set to 0x8C0F8E40
	fmov.s @r0,fr4 ; r4 ??
	mov 0x04,r0 ; r0 set to 0x04
	fmul fr6,fr3
	mov.l @(loc_8C0F8E44,pc),r4 ; r4 set to 0xFFFf
	mov r14,r3
	add 0x40,r3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r4,r2
	mov.l r2,@r3
	fmov.s @(r0,r5),fr3
	mov 0x44,r0 ; r0 set to 0x44
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r4,r3
	mov.l r3,@(r0,r14)
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s @(r0,r5),fr3
	fmul fr6,fr3
	fdiv fr5,fr3
	mov 0x48,r0 ; r0 set to 0x48
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r4,r3
	mov.l r3,@(r0,r14)
	mov r13,r0 ; r0 ??? bc r13 is ???
	nop
	cmp/eq 0x00,r0
	bt loc_8C0F8DC8
	cmp/eq 0x01,r0
	bt loc_8C0F8DC8
	cmp/eq 0x02,r0
	bt loc_8C0F8DDc
	bra loc_8C0F8DF2
	nop

loc_8C0F8DC8:
	mov.l @(loc_8C0F8E4C,pc),r3 ; r3 set to 0x8C108210
	mov.w @(loc_8C0F8E14,pc),r0 ; r0 set to 0x84
	jsr @r3
	mov.l @(r0,r14),r4
	mov.w @(loc_8C0F8E18,pc),r0 ; r0 set to 0xCc
	mov.w @(loc_8C0F8E16,pc),r2 ; r2 set to 0x80f
	mov.l r2,@(r0,r14)
	mov 0x00,r0 ; r0 set to 0x00
	bra loc_8C0F8DF2
	mov.w r0,@(0x1E,r14)

loc_8c0f8ddc:
	mov.w @(loc_8c0f8e18,pc),r0
	mov.w @(loc_8C0F8E1A,pc),r2
	mov.l r2,@(r0,r14)
	mov 0x40,r0
	mov.w r0,@(0x1C,r14)
	mov 0x03,r0
	mov.w r0,@(0x1E,r14)
	mova @(loc_8C0F8E50,pc),r0
	fmov.s @r0,fr3
	mov 0x5C,r0
	fmov.s fr3,@(r0,r14)

loc_8c0f8df2:
	mov.w @(loc_8c0f8e18,pc),r0
	mov.w @(loc_8C0F8E1C,pc),r3
	mov.l @(r0,r14),r2
	fldi1 fr4
	or r3,r2
	mov.l r2,@(r0,r14)
	mov 0x78,r0
	fmov.s fr4,@(r0,r14)
	mov 0x7C,r0
	fmov.s fr4,@(r0,r14)
	add 0x04,r0
	fmov.s fr4,@(r0,r14)

loc_8C0F8E0A:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0F8E12:
	#data 0x012c
loc_8C0F8E14:
	#data 0x0084
loc_8C0F8E16:
	#data 0x080f
loc_8C0F8E18:
	#data 0x00Cc
loc_8c0f8e1a:
	#data 0x4800
loc_8c0f8e1c:
	#data 0x0400
	#align4

loc_8C0F8E20:
	#data bank04.loc_8c044F12
loc_8C0F8E24:
	#data loc_8c0f8E54
loc_8C0F8E28:
	#data bank16.loc_8c162B94
loc_8C0F8E2C:
	#data 0x8C26A924
loc_8C0F8E30:
	#data bank16.loc_8c162B98
loc_8C0F8E34:
	#data bank12.loc_8c1294C8
loc_8C0F8E38:
	#data 0x47800000
loc_8C0F8E3C:
	#data 0x43B40000
loc_8C0F8E40:
	#data 0x3F000000
loc_8C0F8E44:
	#data 0x0000FFFf
loc_8C0F8E48:
	#data bank16.loc_8c162BBc
loc_8C0F8E4C:
	#data bank10.loc_8c108210
loc_8c0f8e50:
	#data 0x42400000

;==============================================
loc_8C0F8E54:
	mov.l @(0x138,PC),r2
	mov.l r14,@-r15
	mov.l @r2,r3
	mov.b @(0x2,r3),r0
	mov 0x03,r3
	cmp/ge r3,r0
	bf.s loc_8c0f8e88
	mov r4,r14
	mova @(0x12C,PC),r0
	fmov @r0,fr3
	mov 0x78,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bt loc_8c0f8e88
	mov.l @(0x124,PC),r1
	fmov @(r0,r14),fr1
	lds r1,fpul
	fsts fpul,fr2
	fsub fr2,fr1
	fmov fr1,@(r0,r14)
	mov 0x7C,r0
	fmov fr1,@(r0,r14)
	mov 0x78,r0
	fmov @(r0,r14),fr1
	add 0x08,r0
	fmov fr1,@(r0,r14)

loc_8C0F8E88:
	mov 0x20,r0
	mov r14,r4
	mov.b @(r0,r14),r3
	mov.l @(0x10C,PC),r0
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C0F8E9A:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r3
	add 0x40,r3
	mov r4,r14
	mov.l @r3,r1
	mov.w @(0xD2,PC),r2
	add r2,r1
	mov.l r1,@r3
	mov.w @(0x1E,r14),r0
	mov.w @(0xCC,PC),r3
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c0f8eca
	mov 0x00,r0
	mov.w r0,@(0x1E,r14)

loc_8C0F8ECA:
	mov.w @(0xBE,PC),r0
	mov.l @(0xD0,PC),r3
	mov.l @(r0,r14),r5
	mov 0x22,r0
	mov.b @(r0,r14),r2
	mov.l @r3,r4
	extu.b r2,r2
	mov.l @r4,r4
	shll2 r2
	add r2,r4
	mov.l @(0xC4,PC),r2
	jsr @r2
	mov.l @(0x4,r4),r4
	mova @(0xCC,PC),r0
	mov.l @(0xC8,PC),r13
	fmov @r0,fr14
	mov.l @(0xBC,PC),r11
	mov.l @(0xBC,PC),r12
	bra loc_8c0f8f16
	fldi1 fr15
  
loc_8C0F8EF2:
	mov r15,r4
	mov r15,r5
	jsr @r13
	add 0x04,r4
	mov.w @(0x1E,r14),r0
	mov r15,r4
	fmov @r15,fr2
	mov r15,r5
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr14,fr3
	fneg fr3
	fadd fr15,fr3
	fadd fr3,fr2
	fmov fr2,@r15
	jsr @r11
	add 0x04,r4

loc_8C0F8F16:
	jsr @r12
	nop 
	tst r0,r0
	bt loc_8c0f8ef2
	add 0x08,r15
	lds.l @r15+,pr
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0F8F30:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r3
	add 0x40,r3
	mov r4,r14
	mov.l @r3,r1
	mov.w @(0x3C,PC),r2
	sub r2,r1
	mov.l r1,@r3
	mov.w @(0x1E,r14),r0
	mov.w @(0x36,PC),r3
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c0f8f60
	mov 0x00,r0
	mov.w r0,@(0x1E,r14)

loc_8C0F8F60:
	mov.w @(0x28,PC),r0
	mov.l @(0x3C,PC),r3
	mov.l @(r0,r14),r5
	mov 0x22,r0
	mov.b @(r0,r14),r2
	mov.l @r3,r4
	extu.b r2,r2
	mov.l @r4,r4
	shll2 r2
	add r2,r4
	mov.l @(0x2C,PC),r2
	jsr @r2
	mov.l @(0x4,r4),r4
	mova @(0x38,PC),r0
	mov.l @(0x30,PC),r13
	fmov @r0,fr14
	mov.l @(0x24,PC),r11
	mov.l @(0x28,PC),r12
	bra loc_8c0f8fdc
	fldi1 fr15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f8f88:
	#data 0x0100
loc_8c0f8f8a:
	#data 0x00c8
loc_8c0f8f8c:
	#data 0x0084
	#align4

loc_8C0F8F90:
	#data 0x8C26823c
loc_8C0F8F94:
	#data 0x3F000000
loc_8C0F8F98:
	#data 0x3C23D70a
loc_8C0F8F9C:
	#data bank16.loc_8c162BE0
loc_8C0F8Fa0:
	#data 0x8C26A924
loc_8C0F8FA4:
	#data bank10.loc_8c108060
loc_8C0F8FA8:
	#data bank10.loc_8c1081E6
loc_8C0F8FAC:
	#data bank10.loc_8c108086
loc_8C0F8FB0:
	#data bank10.loc_8c108192
loc_8C0F8Fb4:
	#data 0x3BA3D70a

;==============================================
loc_8C0F8FB8:
	mov r15,r4
	mov r15,r5
	jsr @r13
	add 0x04,r4
	mov.w @(0x1E,r14),r0
	mov r15,r4
	fmov @r15,fr2
	mov r15,r5
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr14,fr3
	fneg fr3
	fadd fr15,fr3
	fadd fr3,fr2
	fmov fr2,@r15
	jsr @r11
	add 0x04,r4

loc_8C0F8FDC:
	jsr @r12
	nop 
	tst r0,r0
	bt loc_8c0f8fb8
	add 0x08,r15
	lds.l @r15+,pr
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0F8FF6:
	mov.l r14,@-r15
	mov r4,r14
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8C0F9042
	mov 0x40,r0 ; r0 set to 0x40
	mov r14,r1
	mov.w r0,@(0x1C,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r2
	add 0x34,r1
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8C0F90BC,pc),r3 ; r3 set to 0x8C162B98
	shll2 r2
	add r3,r2
	mov.l @(loc_8C0F90C0,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(0x1E,r14),r0
	add 0xFF,r0 ; r0 set to 0x0b
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0 ; r0 ??
	tst r0,r0
	bf loc_8C0F9042
	lds.l @r15+,pr
	mov.l @(loc_8C0F90C4,pc),r2 ; r2 set to 0x8C0450C0
	mov r14,r4
	fmov.s @r15+,fr15
	jmp @r2
	mov.l @r15+,r14

loc_8C0F9042:
	mov.l @(loc_8C0F90C8,pc),r3 ; r3 set to 0x8C120950
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @(loc_8C0F90CC,pc),r2 ; r2 set to 0x8C1201E0
	mov.w @(loc_8C0F90B2,pc),r4 ; r4 set to 0x88
	jsr @r2
	add r14,r4 ; r4 ??? bc r14 is ???
	mov.l @(loc_8C0F90D0,pc),r3 ; r3 set to 0x8C121100
	jsr @r3
	nop
	mov.l @(loc_8C0F90D4,pc),r2 ; r2 set to 0x8C1210E0
	mov r14,r4
	jsr @r2
	add 0x34,r4
	mov.l @(loc_8C0F90D8,pc),r3 ; r3 set to 0x8C120D90
	mov 0x48,r0 ; r0 set to 0x48
	jsr @r3
	mov.l @(r0,r14),r4
	mov.l @(loc_8C0F90DC,pc),r3 ; r3 set to 0x8C120CD0
	mov 0x44,r0 ; r0 set to 0x44
	jsr @r3
	mov.l @(r0,r14),r4
	mov.l @(loc_8C0F90E0,pc),r3 ; r3 set to 0x8C120B20
	mov r14,r4
	add 0x40,r4
	jsr @r3
	mov.l @r4,r4
	mov.l @(loc_8C0F90E4,pc),r3 ; r3 set to 0x8C1210B0
	mov 0x5C,r0 ; r0 set to 0x5c
	fldi0 fr15
	fmov fr15,fr6
	fmov fr15,fr5
	jsr @r3
	fmov.s @(r0,r14),fr4
	mov.l @(loc_8C0F90E8,pc),r2 ; r2 set to 0x8C11FA80
	mov.w @(loc_8C0F90B2,pc),r4 ; r4 set to 0x88
	jsr @r2
	add r14,r4 ; r4 ??? bc r14 is ???
	mov.w @(loc_8C0F90B4,pc),r0 ; r0 set to 0xB8
	mov 0x01,r4 ; r4 set to 0x01
	mov.l @(loc_8C0F90EC,pc),r3 ; r3 set to 0x8C120900
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0F90B6,pc),r0 ; r0 set to 0xBc
	fmov.s @(r0,r14),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0F90B8,pc),r0 ; r0 set to 0xC0
	fmov.s @(r0,r14),fr3
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	fmov.s @r15+,fr15
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F90B2:
	#data 0x0088
loc_8C0F90B4:
	#data 0x00B8
loc_8C0F90B6:
	#data 0x00Bc
loc_8C0F90B8:
	#data 0x00C0
	#align4

loc_8C0F90BC:
	#data bank16.loc_8c162B98
loc_8C0F90C0:
	#data bank12.loc_8c1294C8
loc_8C0F90C4:
	#data bank04.loc_8c0450C0
loc_8C0F90C8:
	#data bank12.loc_8c120950
loc_8C0F90CC:
	#data bank11.loc_8c1201e0
loc_8C0F90D0:
	#data bank12.loc_8c121100
loc_8C0F90D4:
	#data bank12.loc_8c1210E0
loc_8C0F90D8:
	#data bank12.loc_8c120D90
loc_8C0F90DC:
	#data bank12.loc_8c120CD0
loc_8C0F90E0:
	#data bank12.loc_8c120B20
loc_8C0F90E4:
	#data bank12.loc_8c1210B0
loc_8C0F90E8:
	#data bank11.loc_8c11FA80
loc_8C0F90EC:
	#data bank12.loc_8c120900

;==============================================
loc_8C0F90F0:
	mov.l r14,@-r15
	mov 0x05,r5
	sts.l pr,@-r15
	mov.l @(0x138,PC),r3
	mov r4,r14
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0f91ee
	mov r0,r4
	mov.w @(0x11C,PC),r0
	mov 0x01,r3
	mov.l @(0x12C,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x20,r0
	mov.l @(0x120,PC),r3
	mov.b r14,@(r0,r4)
	mov.l @(0x124,PC),r0
	mov.l r3,@(0x10,r4)
	mov.b @(r0,r14),r1
	mov.l @r2,r3
	mov r14,r2
	extu.b r1,r1
	mov.l @r3,r0
	shll2 r1
	shll r2
	mov.l @(r0,r1),r3
	mov.w @(0xFC,PC),r1
	mov.l @(0x114,PC),r0
	add r4,r1
	mov.l r3,@r1
	mov r14,r3
	add r3,r2
	mov.l @(0x10C,PC),r3
	shll2 r2
	mov r4,r1
	add 0x34,r1
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x114,PC),r5
	mova @(0x104,PC),r0
	fmov @r0,fr6
	mova @(0x104,PC),r0
	fmov @r5,fr3
	mov r4,r3
	fmov @r0,fr5
	mova @(0x100,PC),r0
	fmul fr6,fr3
	fmov @r0,fr4
	mov 0x04,r0
	mov.l @(0xEC,PC),r6
	add 0x40,r3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r6,r2
	mov.l r2,@r3
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
	mov.l @(0xD4,PC),r2
	mov r4,r1
	add 0x50,r1
	ftrc fr3,fpul
	sts fpul,r3
	and r6,r3
	mov.l r3,@(r0,r4)
	mov.l @(0xAC,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x8E,PC),r0
	mov.w @(0x8A,PC),r1
	fldi1 fr4
	mov.l r1,@(r0,r4)
	mov 0x78,r0
	fmov fr4,@(r0,r4)
	mov 0x7C,r0
	fmov fr4,@(r0,r4)
	add 0x04,r0
	fmov fr4,@(r0,r4)
	mov r14,r0
	nop 
	cmp/eq 0x02,r0
	bf loc_8c0f91ee
	mov.l @(0xA8,PC),r5
	mov r4,r1
	mov.w @(0x70,PC),r0
	add 0x34,r1
	mov.l @r5,r2
	mov.b @(r0,r2),r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(0x98,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(0x74,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x56,PC),r1
	mov.l @r5,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x3A,r0
	bf loc_8c0f91ee
	mova @(0x88,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov fr4,@(r0,r4)
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	mov 0x58,r0
	fmov fr4,@(r0,r4)

loc_8C0F91EE:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0F91F4:
	mov.l @(loc_8C0F9260,pc),r3 ; r3 set to 0x8C26823c
	mov 0x03,r2 ; r2 set to 0x03
	mov.l @r3,r5
	mov.b @(0x02,r5),r0
	cmp/ge r2,r0
	bf loc_8C0F9270
	mova @(loc_8C0F9254,pc),r0  ; r0 init to 0x8C0F9254
	fmov.s @r0,fr3 ; r3 ??
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s @(r0,r4),fr2 ; r2 ??? bc r4 is ???
	fcmp/gt fr2,fr3
	bt loc_8C0F927e
	mov.l @(loc_8C0F926C,pc),r1 ; r1 set to 0x3C23D70a
	fmov.s @(r0,r4),fr1 ; r1 ??? bc r4 is ???
	lds r1,fpul
	fsts fpul,fr2
	fsub fr2,fr1
	fmov.s fr1,@(r0,r4)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s fr1,@(r0,r4)
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s @(r0,r4),fr1
	add 0x08,r0 ; r0 set to 0x80
	bra loc_8C0F927e
	fmov.s fr1,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f9226:
	#data 0x012c
loc_8c0f9228:
	#data 0x0084
loc_8c0f922a:
	#data 0x0C1F
loc_8c0f922c:
	#data 0x00Cc
loc_8c0f922e:
	#data 0x008F
	#align4

loc_8C0F9230:
	#data bank04.loc_8c044F12
loc_8C0F9234:
	#data loc_8c0f91F4
loc_8C0F9238:
	#data 0x8C26A924
loc_8C0F923C:
	#data bank16.loc_8c162BEc
loc_8C0F9240:
	#data bank16.loc_8c162BF0
loc_8C0F9244:
	#data bank12.loc_8c1294C8
loc_8C0F9248:
	#data 0x0000FFFf
loc_8C0F924c:
	#data 0x47800000
loc_8C0F9250:
	#data 0x43B40000
loc_8C0F9254:
	#data 0x3F000000
loc_8C0F9258:
	#data bank16.loc_8c162C14
loc_8C0F925C:
	#data bank13.loc_8c13bfA0
loc_8C0F9260:
	#data 0x8C26823c
loc_8C0F9264:
	#data bank13.loc_8c13bfAc
loc_8C0F9268:
	#data 0x3F400000
loc_8C0F926C:
	#data 0x3C23D70a

;==============================================
loc_8C0F9270:
	mov.w @(loc_8C0F9282,pc),r0 ; r0 set to 0x8d
	mov.b @(r0,r5),r1
	tst r1,r1
	bt loc_8C0F927e
	mov.l @(loc_8C0F9284,pc),r1 ; r1 set to 0x8C0450C0
	jmp @r1
	nop

loc_8C0F927E:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F9282:
	#data 0x008d
	#align4

loc_8C0F9284:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0F9288:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	mov 0x05,r5 ; r5 set to 0x05
	mov.l @(loc_8C0F93D8,pc),r3 ; r3 set to 0x8C044F12
	mov r4,r13
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C0F935c
	mov r0,r14
	mov.w @(loc_8C0F93CE,pc),r0 ; r0 set to 0x12c
	mov 0x00,r6 ; r6 set to 0x00
	mov.l @(loc_8C0F93DC,pc),r3 ; r3 set to 0x8C0F9410
	mov r13,r7
	mov.b r6,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b r13,@(r0,r14)
	shll r7
	mov.l @(loc_8C0F93E0,pc),r0 ; r0 set to 0x8C162C20
	mov.l r3,@(0x10,r14)
	mov.l @r15,r2
	mov.b @(r0,r2),r3 ; r3 ??? bc r2 is ???
	mov 0x22,r0 ; r0 set to 0x22
	mov.l @(loc_8C0F93E4,pc),r2 ; r2 set to 0x8C26A924
	mov.b r3,@(r0,r14)
	mov 0x22,r3 ; r3 set to 0x22
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l @r2,r0 ; r0 ??
	mov.b @r3,r3
	mov.l @r0,r0
	extu.b r3,r3
	mov.l @(loc_8C0F93E8,pc),r2 ; r2 set to 0x8C162C30
	shll2 r3
	mov.l @(r0,r3),r1
	mov r13,r3
	mov.w @(loc_8C0F93D0,pc),r0 ; r0 set to 0x84
	add r3,r7
	shll2 r7
	mov.l r1,@(r0,r14)
	mov r14,r1
	add r7,r2 ; r2 ??? bc r7 is ???
	add 0x34,r1
	mov.l @(loc_8C0F93EC,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mova @(loc_8C0F93F0,pc),r0  ; r0 set to 0x8C0F93F0
	mov.l @(loc_8C0F9400,pc),r5 ; r5 set to 0x8C162C90
	fmov.s @r0,fr6 ; r6 ??
	mova @(loc_8C0F93F4,pc),r0  ; r0 set to 0x8C0F93F4
	fmov.s @r0,fr5 ; r5 ??
	add r7,r5
	mova @(loc_8C0F93F8,pc),r0  ; r0 set to 0x8C0F93F8
	fmov.s @r5,fr3 ; r3 ??? bc r5 is ???
	fmov.s @r0,fr4 ; r4 ??
	mov 0x04,r0 ; r0 set to 0x04
	mov.l @(loc_8C0F93FC,pc),r4 ; r4 set to 0xFFFf
	mov r14,r3
	fmul fr4,fr3
	add 0x40,r3
	fdiv fr6,fr3
	fadd fr5,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r4,r2
	mov.l r2,@r3
	fmov.s @(r0,r5),fr3
	mov 0x44,r0 ; r0 set to 0x44
	fmul fr4,fr3
	fdiv fr6,fr3
	fadd fr5,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r4,r3
	mov.l r3,@(r0,r14)
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s @(r0,r5),fr3
	fmul fr4,fr3
	fdiv fr6,fr3
	mov 0x48,r0 ; r0 set to 0x48
	mov.w @(loc_8C0F93D2,pc),r2 ; r2 set to 0x80f
	fadd fr5,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r4,r3
	mov.l r3,@(r0,r14)
	mov.w @(loc_8C0F93D4,pc),r0 ; r0 set to 0xCc
	mov.l r2,@(r0,r14)
	mov r6,r0 ; r0 ??? bc r6 is ???
	nop
	mov 0x04,r3 ; r3 set to 0x04
	mov.w r0,@(0x1C,r14)
	cmp/ge r3,r13
	bt/s loc_8C0F935c
	mov.w r0,@(0x1E,r14)
	mov.w @(loc_8C0F93D0,pc),r0 ; r0 set to 0x84
	mov.l @(r0,r14),r4 ; r4 ??? bc r14 is ???
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0F9404,pc),r3 ; r3 set to 0x8C108210
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0F935C:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0F9366:
	mov 0x20,r0
	mov.l @(0x7C,PC),r6
	mov.b @(r0,r4),r5
	mova @(0x9C,PC),r0
	mov.l @(0x98,PC),r2
	extu.b r5,r5
	fmov @r0,fr4
	mov r5,r3
	shll r5
	add r3,r5
	mov.w @(0x1C,r4),r0
	shll2 r5
	add r5,r6
	mov r0,r3
	add r2,r5
	fmov @r6,fr5
	fmov @r5,fr3
	mov 0x34,r0
	lds r3,fpul
	fsub fr5,fr3
	fmov fr5,fr2
	float fpul,fr0
	fdiv fr4,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x04,r0
	fmov @(r0,r5),fr3
	fmov @(r0,r6),fr5
	mov.w @(0x1C,r4),r0
	fsub fr5,fr3
	mov r0,r3
	fdiv fr4,fr3
	lds r3,fpul
	mov 0x38,r0
	fmov fr5,fr2
	float fpul,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x08,r0
	fmov @(r0,r5),fr3
	fmov @(r0,r6),fr5
	mov.w @(0x1C,r4),r0
	fsub fr5,fr3
	fmov fr5,fr2
	mov r0,r3
	lds r3,fpul
	mov 0x3C,r0
	fdiv fr4,fr3
	float fpul,fr0
	fmac fr0,fr3,fr2
	rts 
	fmov fr2,@(r0,r4)

;=============================================
loc_8C0F93CE:
	#data 0x012c
loc_8C0F93D0:
	#data 0x0084
loc_8C0F93D2:
	#data 0x080f
loc_8C0F93D4:
	#data 0x00Cc
	#align4

loc_8C0F93D8:
	#data bank04.loc_8c044F12
loc_8C0F93DC:
	#data loc_8c0f9410
loc_8C0F93E0:
	#data bank16.loc_8c162C20
loc_8C0F93E4:
	#data 0x8C26A924
loc_8C0F93E8:
	#data bank16.loc_8c162C30
loc_8C0F93EC:
	#data bank12.loc_8c1294C8
loc_8C0F93F0:
	#data 0x43B40000
loc_8C0F93F4:
	#data 0x3F000000
loc_8C0F93F8:
	#data 0x47800000
loc_8C0F93FC:
	#data 0x0000FFFf
loc_8C0F9400:
	#data bank16.loc_8c162C90
loc_8C0F9404:
	#data bank10.loc_8c108210
loc_8C0F9408:
	#data bank16.loc_8c162CF0
loc_8C0F940c:
	#data 0x41F00000

;==============================================
loc_8C0F9410:
	mov.l @(0x120,PC),r3
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @r3,r4
	mov.b @(0x3,r4),r0
	cmp/eq 0x04,r0
	bf loc_8c0f9428
	mov.w @(0x108,PC),r0
	mov.b @(r0,r4),r1
	tst r1,r1
	bt loc_8c0f9432

loc_8C0F9428:
	lds.l @r15+,pr
	mov.l @(0x10C,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0F9432:
	mov.b @(0x4,r14),r0
	tst r0,r0
	bf loc_8c0f9480
	mov.w @(0xE,r4),r0
	tst r0,r0
	bt loc_8c0f9494
	mov.w @(0xEC,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r14)
	mov 0x1E,r3
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8c0f9474
	mov.b @(0x4,r14),r0
	mov.l @(0xEC,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r2
	extu.b r2,r2
	mov r2,r1
	shll r2
	add r1,r2
	mov r14,r1
	shll2 r2
	add r3,r2
	mov.l @(0xD8,PC),r3
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0F9474:
	add 0x01,r0
	mov r14,r4
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	bra loc_8c0f9366
	mov.l @r15+,r14

loc_8C0F9480:
	mov 0x20,r0
	mov r14,r4
	mov.b @(r0,r14),r3
	mov.l @(0xBC,PC),r0
	extu.b r3,r3
	lds.l @r15+,pr
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C0F9494:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0F949A:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.w @(0x1E,r14),r0
	mov.w @(0x80,PC),r3
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c0f94bc
	mov 0x00,r0
	mov.w r0,@(0x1E,r14)

loc_8C0F94BC:
	mov.w @(0x72,PC),r0
	mov.l @(0x88,PC),r3
	mov.l @(r0,r14),r5
	mov 0x22,r0
	mov.b @(r0,r14),r2
	mov.l @r3,r4
	extu.b r2,r2
	mov.l @r4,r4
	shll2 r2
	add r2,r4
	mov.l @(0x78,PC),r2
	jsr @r2
	mov.l @(0x4,r4),r4
	mov.l @(0x80,PC),r13
	mova @(0x80,PC),r0
	mov.l @(0x78,PC),r12
	mov.l @(0x70,PC),r11
	bra loc_8c0f9514
	fmov @r0,fr15

loc_8C0F94E2:
	mov r15,r5
	add 0x04,r5
	jsr @r13
	mov r15,r4
	mov.w @(0x1E,r14),r0
	mov r15,r5
	fmov @r15,fr2
	add 0x04,r5
	mov r0,r3
	lds r3,fpul
	fmov fr15,fr0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@r15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mov 0x04,r0
	fmov @(r0,r15),fr2
	mov 0x04,r0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r15)
	jsr @r11
	mov r15,r4

loc_8C0F9514:
	jsr @r12
	nop 
	tst r0,r0
	bt loc_8c0f94e2
	add 0x08,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f952c:
	#data 0x008d
loc_8c0f952e:
	#data 0x012c
loc_8c0f9530:
	#data 0x00c8
loc_8c0f9532:
	#data 0x0084
	#align4

loc_8c0f9534:
	#data 0x8C26823c
loc_8C0F9538:
	#data bank04.loc_8c0450C0
loc_8C0F953C:
	#data bank16.loc_8c162CF0
loc_8C0F9540:
	#data bank12.loc_8c1294C8
loc_8C0F9544:
	#data bank16.loc_8c162D50
loc_8c0f9548:
	#data 0x8C26A924
loc_8C0F954C:
	#data bank10.loc_8c108060
loc_8C0F9550:
	#data bank10.loc_8c1081E6
loc_8C0F9554:
	#data bank10.loc_8c108086
loc_8C0F9558:
	#data bank10.loc_8c108192
loc_8c0f955c:
	#data 0x3BA3D70a

;==============================================
loc_8C0F9560:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(loc_8C0F95EC,pc),r0 ; r0 set to 0x84
	mov r4,r5
	mov.l @(loc_8C0F95F0,pc),r3 ; r3 set to 0x8C26A924
	mov.l r4,@(0x08,r15)
	mov.l @(0x08,r15),r2
	mov.l @(r0,r5),r5
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r2),r1
	mov.l @r3,r4
	extu.b r1,r1
	mov.l @(loc_8C0F95F4,pc),r2 ; r2 set to 0x8C108060
	mov.l @r4,r4
	shll2 r1
	add r1,r4
	jsr @r2
	mov.l @(0x04,r4),r4
	mova @(loc_8C0F9604,pc),r0  ; r0 set to 0x8C0F9604
	mov.l @(loc_8C0F9608,pc),r14 ; r14 set to 0x8C26823c
	fmov.s @r0,fr14 ; r14 ??
	mov.l @(loc_8C0F95F8,pc),r11 ; r11 set to 0x8C108086
	mov.l @(loc_8C0F95FC,pc),r12 ; r12 set to 0x8C1081E6
	mov.l @(loc_8C0F9600,pc),r13 ; r13 set to 0x8C108192
	bra loc_8C0F95Ce
	fldi1 fr15

loc_8C0F95A0:
	mov r15,r4
	mov r15,r5
	jsr @r13
	add 0x04,r4
	mov.l @r14,r2
	mov r15,r4
	mov.l @r14,r3
	mov r15,r5
	mov.w @(0x0A,r2),r0
	fmov.s @r15,fr2
	shll2 r0
	shll r0
	mov r0,r2
	mov.w @(0x0C,r3),r0
	add r0,r2
	lds r2,fpul
	float fpul,fr3
	fmul fr15,fr3
	fdiv fr14,fr3
	fadd fr3,fr2
	fmov.s fr2,@r15
	jsr @r12
	add 0x04,r4

loc_8C0F95CE:
	jsr @r11
	nop
	tst r0,r0
	bt loc_8C0F95A0
	add 0x0C,r15
	lds.l @r15+,pr
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0F95E8:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F95EC:
	#data 0x0084
	#align4

loc_8C0F95F0:
	#data 0x8C26A924
loc_8C0F95F4:
	#data bank10.loc_8c108060
loc_8C0F95F8:
	#data bank10.loc_8c108086
loc_8C0F95FC:
	#data bank10.loc_8c1081E6
loc_8C0F9600:
	#data bank10.loc_8c108192
loc_8C0F9604:
	#data 0x42800000
loc_8C0F9608:
	#data 0x8C26823c

;==============================================
loc_8C0F960C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	mov 0x05,r5 ; r5 set to 0x05
	mov.l @(loc_8C0F972C,pc),r3 ; r3 set to 0x8C044F12
	mov r4,r14
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C0F96Fc
	mov r0,r4 ; r4 ??? bc r0 is ???
	mov.w @(loc_8C0F9722,pc),r0 ; r0 set to 0x12c
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @(loc_8C0F9730,pc),r2 ; r2 set to 0x8C0F9704
	mov.b r5,@(r0,r4)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b r14,@(r0,r4)
	mov 0x22,r0 ; r0 set to 0x22
	mov.l @r15,r3 ; r3 ??? bc r15 is ???
	fldi1 fr4
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @(loc_8C0F9738,pc),r0 ; r0 set to 0x8C162D70
	mov.l @(loc_8C0F9734,pc),r2 ; r2 set to 0x8C26A924
	mov.b @(r0,r14),r1
	mov.l @r2,r3
	extu.b r1,r1
	mov.l @r3,r0 ; r0 ??? bc r3 is ???
	shll2 r1
	mov.l @(r0,r1),r3
	mov 0x50,r0 ; r0 set to 0x50
	mov.w @(loc_8C0F9724,pc),r1 ; r1 set to 0x84
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l r3,@r1
	fmov.s fr4,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr4,@(r0,r4)
	mov 0x58,r0 ; r0 set to 0x58
	mov.w @(loc_8C0F9726,pc),r3 ; r3 set to 0x81f
	fmov.s fr4,@(r0,r4)
	add 0x74,r0 ; r0 set to 0xCc
	mov.l r3,@(r0,r4)
	mov r5,r0 ; r0 set to 0x00
	nop
	mov.w r0,@(0x1C,r4)
	mov 0x1E,r0 ; r0 set to 0x1e
	mov.l @(loc_8C0F973C,pc),r6 ; r6 set to 0x8C162DF8
	mov.w r0,@(0x1E,r4)
	mov.l @r15,r2 ; r2 ??? bc r15 is ???
	mov r2,r3 ; r3 ??? bc r2 is ???
	shll r2
	add r3,r2
	mov r14,r0 ; r0 ??? bc r14 is ???
	nop
	cmp/eq 0x00,r0
	bt/s loc_8C0F9692
	shll2 r2
	cmp/eq 0x03,r0
	bt loc_8C0F9692
	cmp/eq 0x01,r0
	bt loc_8C0F9698
	cmp/eq 0x02,r0
	bt loc_8C0F96A2
	bra loc_8C0F96A6
	nop

loc_8C0F9692:
	mov.l @(loc_8C0F9740,pc),r7 ; r7 set to 0x8C162D74
	bra loc_8C0F969a
	nop

loc_8c0f9698:
	mov.l @(loc_8c0f9744,pc),r7

loc_8C0F969A:
	mov r2,r5
	add r2,r7
	bra loc_8C0F96A6
	add r6,r5

loc_8c0f96a2:
	mov.l @(loc_8c0f974c,pc),r5
	mov.l @(loc_8c0f9748,pc),r7

loc_8c0f96a6:
	mov.l @(loc_8c0f9750,pc),r3
	mov r4,r1
	mov r7,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mova @(loc_8C0F9754,pc),r0
	fmov.s @r5,fr3
	fmov.s @r0,fr6
	mova @(loc_8C0F9758,pc),r0
	fmov.s @r0,fr5
	mova @(loc_8C0F975C,pc),r0
	fmul fr6,fr3
	fmov.s @r0,fr4
	mov 0x04,r0
	mov.l @(loc_8C0F9760,pc),r6
	mov r4,r3
	add 0x40,r3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r6,r2
	mov.l r2,@r3
	fmov.s @(r0,r5),fr3
	mov 0x44,r0
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r6,r3
	mov.l r3,@(r0,r4)
	mov 0x08,r0
	fmov.s @(r0,r5),fr3
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	mov 0x48,r0
	sts fpul,r3
	and r6,r3
	mov.l r3,@(r0,r4)

loc_8C0F96FC:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0F9704:
	mov.l @(0x5C,PC),r3
	mov.l r14,@-r15
	mov r4,r14
	mov.l @r3,r4
	mov.b @(0x3,r4),r0
	cmp/eq 0x04,r0
	bf loc_8c0f971a
	mov.w @(0x12,PC),r0
	mov.b @(r0,r4),r1
	tst r1,r1
	bt loc_8c0f976c

loc_8C0F971A:
	mov.l @(0x4C,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F9722:
	#data 0x012c
loc_8C0F9724:
	#data 0x0084
loc_8C0F9726:
	#data 0x081f
loc_8C0F9728:
	#data 0x008d
	#align4

loc_8C0F972C:
	#data bank04.loc_8c044F12
loc_8C0F9730:
	#data loc_8c0f9704
loc_8C0F9734:
	#data 0x8C26A924
loc_8C0F9738:
	#data bank16.loc_8c162D70
loc_8C0F973C:
	#data bank16.loc_8c162DF8
loc_8C0F9740:
	#data bank16.loc_8c162D74
loc_8C0F9744:
	#data bank16.loc_8c162DB0
loc_8C0F9748:
	#data bank16.loc_8c162DEc
loc_8C0F974C:
	#data bank16.loc_8c162E34
loc_8C0F9750:
	#data bank12.loc_8c1294C8
loc_8c0f9754:
	#data 0x47800000
loc_8c0f9758:
	#data 0x43B40000
loc_8c0f975c:
	#data 0x3F000000
loc_8c0f9760:
	#data 0x0000FFFf
loc_8C0F9764:
	#data 0x8C26823c
loc_8C0F9768:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0F976C:
	mov.w @(0xE,r4),r0
	cmp/eq 0x03,r0
	bf loc_8c0f9784
	mov 0x20,r0
	mov r14,r4
	mov.b @(r0,r14),r2
	mov.l @(0xEC,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0F9784:
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0F9788:
	mov.w @(0xDA,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r4)
	mov.w @(0x1E,r4),r0
	tst r0,r0
	bt loc_8c0f97fe
	mov.w @(0x1E,r4),r0
	mov.l @(0xD4,PC),r2
	add 0xFF,r0
	mov.l @(0xD4,PC),r6
	mov.w r0,@(0x1E,r4)
	mov 0x22,r0
	mov.b @(r0,r4),r5
	mova @(0xD0,PC),r0
	fmov @r6,fr3
	extu.b r5,r5
	fmov @r0,fr4
	mov r5,r3
	shll r5
	add r3,r5
	mov.w @(0x1E,r4),r0
	shll2 r5
	add r2,r5
	mov r0,r3
	fmov @r5,fr5
	mov 0x34,r0
	lds r3,fpul
	fsub fr5,fr3
	fmov fr5,fr2
	float fpul,fr0
	fdiv fr4,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x04,r0
	fmov @(r0,r6),fr3
	fmov @(r0,r5),fr5
	fsub fr5,fr3
	fdiv fr4,fr3
	mov.w @(0x1E,r4),r0
	fmov fr5,fr2
	mov r0,r3
	lds r3,fpul
	mov 0x38,r0
	float fpul,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x08,r0
	fmov @(r0,r6),fr3
	fmov @(r0,r5),fr5
	mov.w @(0x1E,r4),r0
	fsub fr5,fr3
	fmov fr5,fr2
	mov r0,r3
	lds r3,fpul
	mov 0x3C,r0
	fdiv fr4,fr3
	float fpul,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r4)

loc_8C0F97FE:
	rts
	nop

;=============================================
loc_8C0F9802:
	mov.w @(0x1E,r4),r0
	tst r0,r0
	bt loc_8C0F9810
	mov.w @(0x1E,r4),r0
	add 0xFF,r0
	rts
	mov.w r0,@(0x1E,r4)

;=============================================
loc_8C0F9810:
	mov.w @(loc_8C0F9866,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.b r3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	cmp/eq 0x1E,r0
	bf loc_8C0F9822
	mova @(loc_8C0F9878,pc),r0  ; r0 set to 0x8C0F9878
	bra loc_8C0F983e
	fmov.s @r0,fr3

loc_8C0F9822:
	add 0x01,r0
	fldi1 fr0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	mov r0,r3
	lds r3,fpul
	mova @(loc_8C0F987C,pc),r0  ; r0 set to 0x8C0F987c
	fmov.s @r0,fr2
	mova @(loc_8C0F9874,pc),r0  ; r0 set to 0x8C0F9874
	float fpul,fr3
	fmov.s @r0,fr1
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr0,fr3

loc_8C0F983E:
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	fmov.s fr3,@(r0,r4)
	rts
	nop

;=============================================
loc_8C0F9846:
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	add 0xFF,r0
	exts.w r0,r0
	cmp/eq 0x1E,r0
	bf loc_8c0f9862
	mov 0x00,r0
	mov.w r0,@(0x1C,r4)
	mov 0x01,r3
	mov.w @(0x8,PC),r0
	mov.b @(r0,r4),r2
	xor r3,r2
	mov.b r2,@(r0,r4)

loc_8C0F9862:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F9866:
	#data 0x012c
	#align4

loc_8C0F9868:
	#data bank16.loc_8c162E40
loc_8C0F986C:
	#data bank16.loc_8c162D74
loc_8C0F9870:
	#data 0x8C26A524
loc_8C0F9874:
	#data 0x41F00000
loc_8C0F9878:
	#data 0x43003333
loc_8C0F987C:
	#data 0x42FE6666

;=============================================
loc_8C0F9880:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x88,PC),r3
	mov 0x0B,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0f98cc
	mov r0,r4
	mov.l @(0x7C,PC),r2
	mov 0x01,r3
	mov.w @(0x68,PC),r0
	fldi0 fr3
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r15,r2
	mov.l @(0x70,PC),r0
	mov.l @(0x74,PC),r3
	shll2 r2
	mov.l @(r0,r2),r2
	mov.l @r3,r0
	shll2 r2
	mov.l @r0,r1
	add r1,r2
	mov.w @(0x50,PC),r1
	mov.l @r2,r0
	add r4,r1
	mov.l r0,@r1
	mov 0x20,r0
	mov.l @r15,r2
	mov.w @(0x46,PC),r1
	mov.b r2,@(r0,r4)
	mov.w @(0x44,PC),r0
	mov.l r1,@(r0,r4)
	mov 0x74,r0
	fmov fr3,@(r0,r4)

loc_8C0F98CC:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;=============================================
loc_8C0F98D4:
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C0F98E4
	cmp/eq 0x01,r0
	bt loc_8C0F9902
	bra loc_8C0F9902
	nop

loc_8c0f98e4:
	mov.l @(loc_8C0F9920,pc),r1
	mov 0x74,r0
	fmov.s @(r0,r4),fr2
	lds r1,fpul
	fldi1 fr4
	fsts fpul,fr3
	fadd fr3,fr2
	fcmp/gt fr2,fr4
	bt/s loc_8c0f9902
	fmov.s fr2,@(r0,r4)
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov 0x74,r0
	fmov.s fr4,@(r0,r4)

loc_8C0F9902:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f9906:
	#data 0x012c
loc_8c0f9908:
	#data 0x0084
loc_8c0f990a:
	#data 0x0820
loc_8c0f990c:
	#data 0x00Cc
	#align4

loc_8C0F9910:
	#data bank04.loc_8c044F12
loc_8C0F9914:
	#data loc_8c0f98D4
loc_8C0F9918:
	#data bank13.loc_8c13c270
loc_8C0F991c:
	#data 0x8C26A928
loc_8c0f9920:
	#data 0x3E4CCCCd

;==============================================
loc_8C0F9924:
	sts.l pr,@-r15
	mov.l @(loc_8C0F9A40,pc),r3 ; r3 set to 0x8C044F12
	mov 0x0B,r5 ; r5 set to 0x0b
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C0F995e
	mov r0,r4 ; r4 ??? bc r0 is ???
	mov.w @(loc_8C0F9A36,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8C0F9A48,pc),r1 ; r1 set to 0x8C26A928
	mov.l @(loc_8C0F9A44,pc),r2 ; r2 set to 0x8C0F9964
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3 ; r3 ??
	mov.w @(loc_8C0F9A38,pc),r0 ; r0 set to 0x84
	mov.l @r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(0x14,r2),r3
	mov.w @(loc_8C0F9A3A,pc),r2 ; r2 set to 0x800
	mov.l r3,@(r0,r4)
	add 0x48,r0 ; r0 set to 0xCc
	mov.l r2,@(r0,r4)
	mov.l @r1,r4
	mov.l @(loc_8C0F9A4C,pc),r2 ; r2 set to 0x8C108210
	mov.l @r4,r3
	mov.l @(0x14,r3),r4
	jmp @r2
	lds.l @r15+,pr

loc_8C0F995E:
	lds.l @r15+,pr
	rts
	nop

;=============================================
loc_8C0F9964:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xD0,PC),r3
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/ge r3,r0
	bf.s loc_8c0f9980
	mov 0x00,r4
	mov r4,r0
	nop 
	mov.w r0,@(0x1C,r14)

loc_8C0F9980:
	mov.w @(0x1E,r14),r0
	mov.w @(0xB8,PC),r3
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8c0f9994
	mov r4,r0
	nop 
	mov.w r0,@(0x1E,r14)

loc_8C0F9994:
	mov.l @(0xB8,PC),r3
	jsr @r3
	nop 
	tst r0,r0
	bf loc_8c0f99ba
	mov 0x78,r0
	fldi1 fr3
	fmov @(r0,r14),fr4
	fcmp/gt fr4,fr3
	bf loc_8c0f99ba
	mova @(0xA8,PC),r0
	fmov @r0,fr2
	mov 0x78,r0
	fadd fr2,fr4
	fmov fr4,@(r0,r14)
	mov 0x7C,r0
	fmov fr4,@(r0,r14)
	add 0x04,r0
	fmov fr4,@(r0,r14)

loc_8C0F99BA:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xEC,r15
	mov.l @(0x78,PC),r3
	mov r4,r14
	mov.w @(0x62,PC),r0
	mov.l @r3,r4
	mov.l @(0x80,PC),r1
	mov.l @r4,r2
	mov.l @(r0,r14),r5
	jsr @r1
	mov.l @(0x18,r2),r4
	mov.l @(0x80,PC),r13
	mova @(0x84,PC),r0
	mov.l @(0x78,PC),r12
	mov.l @(0x74,PC),r11
	bra loc_8c0f9a1e
	fmov @r0,fr15

loc_8C0F99EC:
	mov r15,r5
	add 0x04,r5
	jsr @r11
	mov r15,r4
	mov.w @(0x1E,r14),r0
	mov r15,r5
	fmov @r15,fr2
	add 0x04,r5
	mov r0,r3
	lds r3,fpul
	fmov fr15,fr0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@r15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mov 0x04,r0
	fmov @(r0,r15),fr2
	mov 0x04,r0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r15)
	jsr @r13
	mov r15,r4

loc_8C0F9A1E:
	jsr @r12
	nop 
	tst r0,r0
	bt loc_8c0f99ec
	add 0x14,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0F9A36:
	#data 0x012c
loc_8C0F9A38:
	#data 0x0084
loc_8C0F9A3A:
	#data 0x0800
loc_8C0F9A3c:
	#data 0x0168
loc_8C0F9A3e:
	#data 0x00C8
	#align4

loc_8C0F9A40:
	#data bank04.loc_8c044F12
loc_8C0F9A44:
	#data loc_8c0f9964
loc_8C0F9A48:
	#data 0x8C26A928
loc_8C0F9A4C:
	#data bank10.loc_8c108210
loc_8C0F9A50:
	#data bank03.loc_8c03594a
loc_8C0F9A54:
	#data 0x3B4CCCCd
loc_8C0F9A58:
	#data bank10.loc_8c108060
loc_8C0F9A5C:
	#data bank10.loc_8c108192
loc_8C0F9A60:
	#data bank10.loc_8c108086
loc_8C0F9A64:
	#data bank10.loc_8c1081E6
loc_8C0F9A68:
	#data 0x3BA3D70a

;==============================================
loc_8C0F9A6C:
	mov.l r14,@-r15
	mov 0x0B,r5
	sts.l pr,@-r15
	mov.l @(0xA4,PC),r3
	mov r4,r14
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0f9ae4
	mov r0,r4
	mov.w @(0x8A,PC),r0
	mov 0x01,r3
	mov.l @(0x98,PC),r1
	mov r14,r5
	mov.l @(0x90,PC),r2
	shll r5
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov r14,r2
	mov.l @r1,r3
	shll2 r2
	mov.w @(0x76,PC),r0
	mov r4,r1
	mov.l @r3,r3
	add 0x34,r1
	add r3,r2
	mov.l @(0x2C,r2),r3
	mov.w @(0x6C,PC),r2
	mov.l r3,@(r0,r4)
	mov r14,r3
	add r3,r5
	mov r5,r3
	add 0x48,r0
	shll r5
	mov.l r2,@(r0,r4)
	mov.l @(0x6C,PC),r2
	add r3,r5
	mov.l @(0x6C,PC),r3
	mov 0x20,r0
	shll2 r5
	mov.b r14,@(r0,r4)
	add r5,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x64,PC),r2
	mov r4,r1
	mov.l @(0x5C,PC),r3
	add 0x50,r1
	add r5,r2
	jsr @r3
	mov 0x0C,r0
	mova @(0x58,PC),r0
	fmov @r0,fr4
	mov 0x78,r0
	fmov fr4,@(r0,r4)
	mov 0x7C,r0
	fmov fr4,@(r0,r4)
	add 0x04,r0
	fmov fr4,@(r0,r4)

loc_8C0F9AE4:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0F9AEA:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.b @(0x04,r4),r0
	mov.l @(loc_8C0F9B34,pc),r5 ; r5 set to 0x8C26823c
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C0F9B38
	cmp/eq 0x01,r0
	bf loc_8C0F9B04
	bra loc_8C0F9C4c
	nop

loc_8C0F9B04:
	cmp/eq 0x02,r0
	bf loc_8C0F9B0c
	bra loc_8C0F9C6c
	nop

loc_8C0F9B0C:
	bra loc_8C0F9C9e
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0f9b10:
	#data 0x012c
loc_8c0f9b12:
	#data 0x0084
loc_8c0f9b14:
	#data 0x0c11
	#align4

loc_8C0F9B18:
	#data bank04.loc_8c044F12
loc_8C0F9B1C:
	#data loc_8c0f9AEa
loc_8C0F9B20:
	#data 0x8C26A928
loc_8C0F9B24:
	#data bank16.loc_8c162E80
loc_8C0F9B28:
	#data bank12.loc_8c1294C8
loc_8C0F9B2C:
	#data bank16.loc_8c163030
loc_8C0F9B30:
	#data 0x3F4CCCCd
loc_8C0F9B34:
	#data 0x8C26823c

;==============================================
loc_8C0F9B38:
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r7
	mov.w @(0x1E,r4),r0
	extu.b r7,r7
	mov r7,r3
	shll r7
	add r3,r7
	mov r0,r5 ; r5 set to 0x20
	add r7,r5 ; r5 ??? bc r7 is ???
	mov r0,r6 ; r6 set to 0x20
	mov r5,r3
	mov r5,r2
	shll r5
	mov.l @(loc_8C0F9CB0,pc),r7 ; r7 set to 0x8C162E80
	add 0x01,r2
	mov.l @(loc_8C0F9CAC,pc),r0 ; r0 set to 0x8C13C29c
	mov r2,r14
	add r3,r5
	shll2 r5
	mov r2,r3
	shll r14
	add r3,r14
	shll2 r14
	shll2 r6 ; r6 set to 0x80
	mov.l @(r0,r6),r6 ; r6 ??
	mov 0x34,r0 ; r0 set to 0x34
	mov.l r2,@(0x08,r15)
	mov.l r5,@(0x04,r15)
	add r7,r5
	mov.l r14,@r15
	add r7,r14
	fmov.s @r5,fr3
	lds r6,fpul
	mov 0x04,r1 ; r1 set to 0x04
	fmov.s @r14,fr2
	add r5,r1 ; r1 ??? bc r5 is ???
	fmov.s @(r0,r4),fr1
	fsub fr3,fr2
	float fpul,fr3
	fdiv fr3,fr2
	fmov fr3,fr4
	fadd fr2,fr1
	fmov.s fr1,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @r1,fr3
	mov 0x04,r1 ; r1 set to 0x04
	add r14,r1 ; r1 ??? bc r14 is ???
	fmov.s @r1,fr2
	mov 0x08,r1 ; r1 set to 0x08
	add r5,r1 ; r1 ??? bc r5 is ???
	fsub fr3,fr2
	fmov.s @(r0,r4),fr3
	fdiv fr4,fr2
	fadd fr2,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @r1,fr3
	mov 0x08,r1 ; r1 set to 0x08
	add r14,r1 ; r1 ??? bc r14 is ???
	fmov.s @r1,fr2
	fsub fr3,fr2
	fmov.s @(r0,r4),fr3
	fdiv fr4,fr2
	fadd fr2,fr3
	mov.l @(loc_8C0F9CB4,pc),r13 ; r13 set to 0x8C163030
	mov 0x04,r1 ; r1 set to 0x04
	fmov.s fr3,@(r0,r4)
	mov 0x50,r0 ; r0 set to 0x50
	mov.l @(0x04,r15),r14
	mov.l @r15,r5
	add r13,r14
	add r13,r5
	fmov.s @r14,fr3
	fmov.s @r5,fr2
	add r14,r1 ; r1 ??? bc r14 is ???
	fsub fr3,fr2
	fmov.s @(r0,r4),fr3
	fdiv fr4,fr2
	fadd fr2,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @r1,fr3
	mov 0x04,r1 ; r1 set to 0x04
	add r5,r1 ; r1 ??? bc r5 is ???
	fmov.s @r1,fr2
	mov 0x08,r1 ; r1 set to 0x08
	add r14,r1 ; r1 ??? bc r14 is ???
	fsub fr3,fr2
	fmov.s @(r0,r4),fr3
	fdiv fr4,fr2
	fadd fr2,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x58,r0 ; r0 set to 0x58
	fmov.s @r1,fr3
	mov 0x08,r1 ; r1 set to 0x08
	add r5,r1 ; r1 ??? bc r5 is ???
	fmov.s @r1,fr2
	fsub fr3,fr2
	fmov.s @(r0,r4),fr3
	fdiv fr4,fr2
	fadd fr2,fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0 ; r0 set to 0x59
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0 ; r0 ??
	cmp/ge r6,r0
	bf loc_8C0F9C9e
	mov r4,r1
	mov 0x00,r0 ; r0 set to 0x00
	mov.l @(loc_8C0F9CB8,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r1
	mov.w r0,@(0x1C,r4)
	mov.l @r15,r2
	add r7,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @r15,r2
	mov r4,r1
	mov.l @(loc_8C0F9CB8,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r1
	add r13,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(0x1E,r4),r0
	mov 0x02,r3 ; r3 set to 0x02
	add 0x01,r0 ; r0 set to 0x0d
	mov.w r0,@(0x1E,r4)
	exts.w r0,r0 ; r0 ??
	cmp/hs r3,r0
	bf loc_8C0F9C9e
	mov.b @(0x04,r4),r0
	fldi0 fr3
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov 0x58,r0 ; r0 set to 0x58
	bra loc_8C0F9C9e
	fmov.s fr3,@(r0,r4)

loc_8C0F9C4C:
	mov.l @r5,r2
	mov.w @(loc_8C0F9CA8,pc),r3 ; r3 set to 0x15e
	mov.w @(0x0A,r2),r0
	cmp/ge r3,r0
	bf loc_8C0F9C9e
	mov.b @(0x04,r4),r0
	fldi1 fr4
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s fr4,@(r0,r4)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s fr4,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x80
	bra loc_8C0F9C9e
	fmov.s fr4,@(r0,r4)

loc_8C0F9C6C:
	mova @(loc_8C0F9CBC,pc),r0  ; r0 init to 0x8C0F9CBc
	fmov.s @r0,fr4
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s @(r0,r4),fr3
	fsub fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s @(r0,r4),fr2
	fsub fr4,fr2
	fmov.s fr2,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x80
	fmov.s @(r0,r4),fr3
	fsub fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov.l @r5,r3
	mov.w @(0x0A,r3),r0
	mov.w @(loc_8C0F9CAA,pc),r3 ; r3 set to 0x186
	cmp/ge r3,r0
	bf loc_8C0F9C9e
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0F9CC0,pc),r1 ; r1 set to 0x8C0450C0
	mov.l @r15+,r13
	jmp @r1
	mov.l @r15+,r14

loc_8C0F9C9E:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F9CA8:
	#data 0x015e
loc_8C0F9CAA:
	#data 0x0186
	#align4

loc_8C0F9CAC:
	#data bank13.loc_8c13c29c
loc_8C0F9CB0:
	#data bank16.loc_8c162E80
loc_8C0F9CB4:
	#data bank16.loc_8c163030
loc_8C0F9CB8:
	#data bank12.loc_8c1294C8
loc_8C0F9CBC:
	#data 0x3CCCCCCd
loc_8C0F9CC0:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0F9CC4:
	mov.l r14,@-r15
	mov 0x0B,r5
	sts.l pr,@-r15
	mov.l @(0xD8,PC),r3
	mov r4,r14
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0f9d14
	mov r0,r4
	mov.w @(0xC0,PC),r0
	mov 0x01,r3
	mov.l @(0xC8,PC),r2
	mov r4,r1
	mov.b r3,@(r0,r4)
	add 0xA0,r0
	mov.w @(0xB6,PC),r3
	add 0x34,r1
	mov.l r2,@(0x10,r4)
	mov r14,r2
	mov.l r3,@(r0,r4)
	mov r14,r3
	shll r2
	add r3,r2
	mov.l @(0xB4,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(0xB0,PC),r3
	mov 0x20,r0
	mov.b r14,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xAC,PC),r0
	shll2 r14
	fmov @(r0,r14),fr3
	mov 0x50,r0
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	fmov fr3,@(r0,r4)

loc_8C0F9D14:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0F9D1A:
	mov.l @(loc_8C0F9DB8,pc),r2 ; r2 set to 0x8C26A928
	mov 0x68,r0 ; r0 set to 0x68
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.l @r3,r1
	mov.l @(r0,r1),r0 ; r0 ??? bc r1 is ???
	mov.w @(loc_8C0F9DA2,pc),r1 ; r1 set to 0x84
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l r0,@r1
	mova @(loc_8C0F9DBC,pc),r0  ; r0 set to 0x8C0F9DBc
	fmov.s @r0,fr4
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r14),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
	fadd fr4,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	mov r0,r3 ; r3 set to 0x54
	shll r0 ; r0 set to 0xA8
	add r3,r0 ; r0 set to 0xFc
	lds r0,fpul
	mova @(loc_8C0F9DC0,pc),r0  ; r0 set to 0x8C0F9DC0
	fmov.s @r0,fr2
	mova @(loc_8C0F9DC4,pc),r0  ; r0 set to 0x8C0F9DC4
	fmov.s @r0,fr1
	float fpul,fr3
	fmul fr2,fr3 ; r3 ??? bc r2 is ???
	fdiv fr1,fr3
	mova @(loc_8C0F9DC8,pc),r0  ; r0 set to 0x8C0F9DC8
	fmov.s @r0,fr0 ; r0 ??
	mov.l @(loc_8C0F9DD0,pc),r1 ; r1 set to 0x8C11E860
	mov.l @(loc_8C0F9DCC,pc),r3 ; r3 set to 0xFFFf
	fadd fr0,fr3 ; r3 ??? bc r0 is ???
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r1
	and r3,r4
	mov 0x78,r0 ; r0 set to 0x78
	fmov fr0,fr3
	fmov.s fr0,@(r0,r14)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s fr3,@(r0,r14)
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s @(r0,r14),fr3
	add 0x08,r0 ; r0 set to 0x80
	mov 0x3C,r3 ; r3 set to 0x3c
	fmov.s fr3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0x01,r0 ; r0 set to 0x81
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0 ; r0 ??
	cmp/ge r3,r0
	bf loc_8C0F9D98
	lds.l @r15+,pr
	mov.l @(loc_8C0F9DD4,pc),r1 ; r1 set to 0x8C0450C0
	mov r14,r4
	jmp @r1
	mov.l @r15+,r14

loc_8C0F9D98:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0F9D9e:
	#data 0x012c
loc_8C0F9Da0:
	#data 0x0C19
loc_8C0F9DA2:
	#data 0x0084
	#align4

loc_8C0F9DA4:
	#data bank04.loc_8c044F12
loc_8C0F9DA8:
	#data loc_8c0f9D1a
loc_8C0F9DAC:
	#data bank16.loc_8c1631F8
loc_8C0F9DB0:
	#data bank12.loc_8c1294C8
loc_8C0F9DB4:
	#data bank16.loc_8c163240
loc_8C0F9DB8:
	#data 0x8C26A928
loc_8C0F9DBC:
	#data 0x3D23D70a
loc_8C0F9DC0:
	#data 0x47800000
loc_8C0F9DC4:
	#data 0x43B40000
loc_8C0F9DC8:
	#data 0x3F000000
loc_8C0F9DCC:
	#data 0x0000FFFf
loc_8C0F9DD0:
	#data bank11.loc_8c11E860
loc_8C0F9DD4:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0F9DD8:
	mov.l r14,@-r15
	mov 0x0B,r5 ; r5 set to 0x0b
	sts.l pr,@-r15
	mov.l @(loc_8C0F9EB0,pc),r3 ; r3 set to 0x8C044F12
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C0F9E88
	mov r0,r14
	mov.w @(loc_8C0F9EA8,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8C0F9EB8,pc),r1 ; r1 set to 0x8C26A928
	mov.l @(loc_8C0F9EB4,pc),r2 ; r2 set to 0x8C0F9E8e
	mov.b r3,@(r0,r14)
	mov.l r2,@(0x10,r14)
	mov.l @r1,r3 ; r3 ??
	mov r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0F9EAA,pc),r0 ; r0 set to 0x84
	add 0x34,r1
	mov.l @r3,r2 ; r2 ??? bc r3 is ???
	mov.l @r2,r3
	mov.w @(loc_8C0F9EAC,pc),r2 ; r2 set to 0xC17
	mov.l r3,@(r0,r14)
	add 0x48,r0 ; r0 set to 0xCc
	mov.l r2,@(r0,r14)
	mov.l @(loc_8C0F9EC0,pc),r3 ; r3 set to 0x8C1294C8
	mov.l @(loc_8C0F9EBC,pc),r2 ; r2 set to 0x8C13C2Bc
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(loc_8C0F9ED4,pc),r4 ; r4 set to 0x8C13C310
	mova @(loc_8C0F9EC8,pc),r0  ; r0 set to 0x8C0F9EC8
	fmov.s @r0,fr6 ; r6 ??
	mova @(loc_8C0F9ECC,pc),r0  ; r0 set to 0x8C0F9ECc
	fmov.s @r4,fr3 ; r3 ??
	mov r14,r3
	fmov.s @r0,fr5 ; r5 ??
	mova @(loc_8C0F9ED0,pc),r0  ; r0 set to 0x8C0F9ED0
	fmul fr6,fr3
	fmov.s @r0,fr4 ; r4 ??
	mov 0x04,r0 ; r0 set to 0x04
	mov.l @(loc_8C0F9EC4,pc),r5 ; r5 set to 0xFFFf
	add 0x40,r3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r5,r2 ; r2 ??
	mov.l r2,@r3
	fmov.s @(r0,r4),fr3
	mov 0x44,r0 ; r0 set to 0x44
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r5,r3
	mov.l r3,@(r0,r14)
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s @(r0,r4),fr3
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	mov 0x48,r0 ; r0 set to 0x48
	mov r14,r1
	mov.l @(loc_8C0F9ED8,pc),r2 ; r2 set to 0x8C13C364
	add 0x50,r1
	ftrc fr3,fpul
	sts fpul,r3
	and r5,r3
	mov.l r3,@(r0,r14)
	mov.l @(loc_8C0F9EC0,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mova @(loc_8C0F9EDC,pc),r0  ; r0 set to 0x8C0F9EDc
	fmov.s @r0,fr4
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s fr4,@(r0,r14)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s fr4,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x80
	fmov.s fr4,@(r0,r14)
	bsr loc_8C0FA112
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0FA202
	mov.l @r15+,r14

loc_8C0F9E88:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0F9E8E:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C0F9EE0
	cmp/eq 0x01,r0
	bf loc_8C0F9EA4
	bra loc_8C0FA0Aa
	nop

loc_8C0F9EA4:
	bra loc_8C0FA0Aa
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0F9EA8:
	#data 0x012c
loc_8C0F9EAA:
	#data 0x0084
loc_8C0F9EAC:
	#data 0x0C17
	#align4

loc_8C0F9EB0:
	#data bank04.loc_8c044F12
loc_8C0F9EB4:
	#data loc_8c0f9E8e
loc_8C0F9EB8:
	#data 0x8C26A928
loc_8C0F9EBC:
	#data bank13.loc_8c13c2Bc
loc_8C0F9EC0:
	#data bank12.loc_8c1294C8
loc_8C0F9EC4:
	#data 0x0000FFFf
loc_8C0F9EC8:
	#data 0x47800000
loc_8C0F9ECC:
	#data 0x43B40000
loc_8C0F9ED0:
	#data 0x3F000000
loc_8C0F9ED4:
	#data bank13.loc_8c13c310
loc_8C0F9ED8:
	#data bank13.loc_8c13c364
loc_8C0F9EDC:
	#data 0x3E99999a

;==============================================
loc_8C0F9EE0:
	mov.l @(loc_8C0FA080,pc),r6 ; r6 set to 0x8C13C2Bc
	mova @(loc_8C0FA084,pc),r0  ; r0 init to 0x8C0FA084
	fmov.s @r0,fr4
	mov r6,r5 ; r5 set to 0x8C13C2Bc
	mov r6,r7 ; r7 set to 0x8C13C2Bc
	add 0x48,r5 ; r5 set to 0x8C13C304
	fmov.s @r7,fr5 ; r5 ??
	fmov.s @r5,fr3
	mov.w @(0x1C,r4),r0
	fsub fr5,fr3
	fmov fr5,fr2
	mov r0,r3 ; r3 set to 0x8C0FA084
	lds r3,fpul
	mov 0x34,r0 ; r0 set to 0x34
	fdiv fr4,fr3 ; r3 ??? bc r4 is ???
	float fpul,fr0
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @(r0,r5),fr3
	fmov.s @(r0,r7),fr5
	mov.w @(0x1C,r4),r0
	fsub fr5,fr3
	fmov fr5,fr2
	mov r0,r3 ; r3 set to 0x04
	lds r3,fpul
	mov 0x38,r0 ; r0 set to 0x38
	fdiv fr4,fr3 ; r3 ??? bc r4 is ???
	float fpul,fr0
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s @(r0,r5),fr3
	fmov.s @(r0,r7),fr5
	mov.w @(0x1C,r4),r0
	fsub fr5,fr3
	mov.l @(loc_8C0FA088,pc),r7 ; r7 set to 0x8C13C310
	mov r0,r3 ; r3 set to 0x08
	lds r3,fpul
	mov r7,r13 ; r13 set to 0x8C13C310
	fmov fr5,fr2
	mov r7,r14 ; r14 set to 0x8C13C310
	add 0x48,r13 ; r13 set to 0x8C13C358
	fdiv fr4,fr3 ; r3 ??? bc r4 is ???
	mov 0x3C,r0 ; r0 set to 0x3c
	float fpul,fr0
	mov.l @(loc_8C0FA090,pc),r5 ; r5 set to 0xFFFf
	mov r4,r3
	add 0x40,r3
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C0FA08C,pc),r0  ; r0 set to 0x8C0FA08c
	fmov.s @r13,fr3
	fmov.s @r14,fr8
	fmov.s @r0,fr7 ; r7 ??
	mova @(loc_8C0FA094,pc),r0  ; r0 set to 0x8C0FA094
	fsub fr8,fr3
	fmov.s @r0,fr6 ; r6 ??
	mova @(loc_8C0FA098,pc),r0  ; r0 set to 0x8C0FA098
	fmov.s @r0,fr5 ; r5 ??
	mov.w @(0x1C,r4),r0
	fdiv fr4,fr3
	mov r0,r2 ; r2 set to 0x8C0FA098
	lds r2,fpul
	float fpul,fr0
	fmov fr8,fr2 ; r2 ??? bc r8 is ???
	fmac fr0,fr3,fr2
	fmul fr6,fr2
	fdiv fr7,fr2
	fadd fr5,fr2
	ftrc fr2,fpul
	sts fpul,r2
	and r5,r2
	mov.l r2,@r3
	fmov.s @r14,fr8
	fmov.s @r13,fr3
	mov.w @(0x1C,r4),r0
	fsub fr8,fr3
	fmov fr8,fr2
	mov r0,r3 ; r3 set to 0x8C0FA098
	lds r3,fpul
	mov 0x44,r0 ; r0 set to 0x44
	fdiv fr4,fr3 ; r3 ??? bc r4 is ???
	float fpul,fr0
	fmac fr0,fr3,fr2
	fmul fr6,fr2
	fdiv fr7,fr2
	fadd fr5,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r5,r3
	mov.l r3,@(r0,r4)
	fmov.s @r13,fr3
	fmov.s @r14,fr8
	fsub fr8,fr3
	fdiv fr4,fr3
	mov.w @(0x1C,r4),r0
	fmov fr8,fr2
	mov r0,r3 ; r3 set to 0x44
	lds r3,fpul
	mov.l @(loc_8C0FA09C,pc),r13 ; r13 set to 0x8C13C364
	mov 0x48,r0 ; r0 set to 0x48
	float fpul,fr0
	mov r13,r1 ; r1 set to 0x8C13C364
	add r0,r1 ; r1 set to 0x8C13C3Ac
	mov r13,r14 ; r14 set to 0x8C13C364
	fmac fr0,fr3,fr2
	fmul fr6,fr2
	fdiv fr7,fr2
	fadd fr5,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r5,r3 ; r3 ??? bc r5 is ???
	mov.l r3,@(r0,r4)
	fmov.s @r14,fr8
	fmov.s @r1,fr3
	mov.w @(0x1C,r4),r0
	fsub fr8,fr3
	fmov fr8,fr2
	mov r0,r3 ; r3 set to 0x48
	lds r3,fpul
	mov 0x50,r0 ; r0 set to 0x50
	fdiv fr4,fr3 ; r3 ??? bc r4 is ???
	float fpul,fr0
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @(r0,r14),fr8
	fmov.s @(r0,r1),fr3
	mov.w @(0x1C,r4),r0
	fsub fr8,fr3
	fmov fr8,fr2
	mov r0,r3 ; r3 set to 0x04
	lds r3,fpul
	mov 0x54,r0 ; r0 set to 0x54
	fdiv fr4,fr3 ; r3 ??? bc r4 is ???
	float fpul,fr0
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s @(r0,r1),fr3
	fmov.s @(r0,r14),fr8
	mov.w @(0x1C,r4),r0
	fsub fr8,fr3
	fmov fr8,fr2
	mov r0,r3 ; r3 set to 0x08
	lds r3,fpul
	mov 0x58,r0 ; r0 set to 0x58
	mov.w @(loc_8C0FA07E,pc),r3 ; r3 set to 0x10e
	fdiv fr4,fr3 ; r3 ??? bc r4 is ???
	float fpul,fr0
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0 ; r0 set to 0x59
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0 ; r0 ??
	cmp/ge r3,r0
	bf loc_8C0FA0Aa
	mov.b @(0x04,r4),r0
	mov r6,r2
	mov.l @(loc_8C0FA0A0,pc),r3 ; r3 set to 0x8C1294C8
	mov r4,r1 ; r1 ??? bc r4 is ???
	add 0x01,r0
	add 0x48,r2
	mov.b r0,@(0x04,r4)
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov r7,r6
	add 0x48,r6
	fmov.s @r6,fr3 ; r3 ??? bc r6 is ???
	mov 0x04,r0 ; r0 set to 0x04
	mov r4,r2
	add 0x40,r2
	fmul fr6,fr3
	fdiv fr7,fr3
	fadd fr5,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r5,r3
	mov.l r3,@r2
	fmov.s @(r0,r6),fr3
	mov 0x44,r0 ; r0 set to 0x44
	fmul fr6,fr3
	fdiv fr7,fr3
	fadd fr5,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r5,r3
	mov.l r3,@(r0,r4)
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s @(r0,r6),fr3
	mov 0x48,r0 ; r0 set to 0x48
	fmul fr6,fr3
	fdiv fr7,fr3
	fadd fr5,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r5,r3
	mov.l r3,@(r0,r4)
	mov r4,r1
	mov r13,r2 ; r2 set to 0x8C13C364
	add 0x50,r1
	add r0,r2 ; r2 set to 0x8C13C3Ac
	bra loc_8C0FA0A4
	mov 0x0C,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0FA07E:
	#data 0x010e
	#align4

loc_8C0FA080:
	#data bank13.loc_8c13c2Bc
loc_8C0FA084:
	#data 0x43870000
loc_8C0FA088:
	#data bank13.loc_8c13c310
loc_8C0FA08C:
	#data 0x43B40000
loc_8C0FA090:
	#data 0x0000FFFf
loc_8C0FA094:
	#data 0x47800000
loc_8C0FA098:
	#data 0x3F000000
loc_8C0FA09C:
	#data bank13.loc_8c13c364
loc_8C0FA0A0:
	#data bank12.loc_8c1294C8

;==============================================
loc_8c0fa0a4:
	mov.l @(loc_8c0fa1a0,pc),r3
	jsr @r3
	nop

loc_8C0FA0AA:
	mov.b @(0x05,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C0FA0Be
	cmp/eq 0x01,r0
	bt loc_8C0FA0D2
	cmp/eq 0x02,r0
	bt loc_8C0FA10a
	bra loc_8C0FA10a
	nop

loc_8C0FA0BE:
	mov.l @(loc_8C0FA1A4,pc),r2 ; r2 set to 0x8C26823c
	mov.l @r2,r3
	mov.w @(0x0A,r3),r0
	mov.w @(loc_8C0FA192,pc),r3 ; r3 set to 0x17c
	cmp/ge r3,r0
	bf loc_8C0FA10a
	mov.b @(0x05,r4),r0
	add 0x01,r0
	bra loc_8C0FA10a
	mov.b r0,@(0x05,r4)

loc_8c0fa0d2:
	mova @(loc_8C0FA1A8,pc),r0
	fmov.s @r0,fr4
	mov 0x78,r0
	fmov.s @(r0,r4),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x7C,r0
	fmov.s @(r0,r4),fr2
	fadd fr4,fr2
	fmov.s fr2,@(r0,r4)
	add 0x04,r0
	fmov.s @(r0,r4),fr3
	fadd fr4,fr3
	fldi1 fr4
	fmov.s fr3,@(r0,r4)
	mov 0x78,r0
	fmov.s @(r0,r4),fr2
	fcmp/gt fr2,fr4
	bt loc_8c0fa10a
	mov.b @(0x05,r4),r0
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	mov 0x78,r0
	fmov.s fr4,@(r0,r4)
	mov 0x7C,r0
	fmov.s fr4,@(r0,r4)
	add 0x04,r0
	fmov.s fr4,@(r0,r4)

loc_8C0FA10A:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;=============================================
loc_8c0fa112:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c0fa1ac,pc),r3
	mov 0x0B,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c0fa162
	mov r0,r4
	mov.w @(loc_8C0FA194,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C0FA1B4,pc),r1
	mov.l @(loc_8c0fa1b0,pc),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.w @(loc_8C0FA196,pc),r0
	mov.l @r3,r2
	fldi1 fr4
	mov.l @(r0,r2),r3
	add 0x04,r0
	mov.l @(loc_8C0FA1B8,pc),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @r15,r3
	mov.w @(loc_8C0FA19A,pc),r0
	mov.l r3,@(0x14,r4)
	mov.w @(loc_8C0FA198,pc),r3
	mov.l @r15,r2
	add r2,r3
	mov.l r3,@(r0,r4)
	mov 0x78,r0
	fmov.s fr4,@(r0,r4)
	mov 0x7C,r0
	fmov.s fr4,@(r0,r4)
	add 0x04,r0
	fmov.s fr4,@(r0,r4)

loc_8c0fa162:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C0FA16A:
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C0FA17e
	cmp/eq 0x01,r0
	bt loc_8C0FA1Bc
	cmp/eq 0x02,r0
	bt loc_8C0FA1F8
	bra loc_8C0FA1Fe
	nop

loc_8C0FA17E:
	mov.l @(loc_8C0FA1A4,pc),r2 ; r2 set to 0x8C26823c
	mov.l @r2,r3
	mov.w @(0x0A,r3),r0
	mov.w @(loc_8C0FA19C,pc),r3 ; r3 set to 0x190
	cmp/ge r3,r0
	bf loc_8C0FA1Fe
	mov.b @(0x04,r4),r0
	add 0x01,r0
	bra loc_8C0FA1Fe
	mov.b r0,@(0x04,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0FA192:
	#data 0x017c
loc_8c0fa194:
	#data 0x012c
loc_8c0fa196:
	#data 0x0080
loc_8c0fa198:
	#data 0x0088
loc_8c0fa19a:
	#data 0x00C8
loc_8C0FA19C:
	#data 0x0190
	#align4

loc_8C0FA1A0:
	#data bank12.loc_8c1294C8
loc_8C0FA1A4:
	#data 0x8C26823c
loc_8c0fa1a8:
	#data 0x3DCCCCCd
loc_8C0FA1AC:
	#data bank04.loc_8c044F12
loc_8C0FA1B0:
	#data loc_8c0fA16a
loc_8c0fa1b4:
	#data 0x8C26A928
loc_8c0fa1b8:
	#data 0x00008C00

;==============================================
loc_8C0FA1BC:
	mova @(loc_8C0FA2D4,pc),r0  ; r0 init to 0x8C0FA2D4
	fmov.s @r0,fr4
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s @(r0,r4),fr3
	fsub fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s @(r0,r4),fr2
	fsub fr4,fr2
	fmov.s fr2,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x80
	fmov.s @(r0,r4),fr3
	fldi0 fr2
	fsub fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s @(r0,r4),fr3
	fcmp/gt fr2,fr3
	bt loc_8C0FA1Fe
	mov.b @(0x04,r4),r0
	fmov fr2,fr4
	add 0x01,r0 ; r0 set to 0x79
	mov.b r0,@(0x04,r4)
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s fr4,@(r0,r4)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s fr4,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x80
	bra loc_8C0FA1Fe
	fmov.s fr4,@(r0,r4)

loc_8C0FA1F8:
	mov.l @(loc_8C0FA2D8,pc),r2 ; r2 set to 0x8C0450C0
	jmp @r2
	nop

loc_8C0FA1FE:
	rts
	nop

;=============================================
loc_8c0fa202:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c0fa2dc,pc),r3
	mov 0x0B,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c0fa250
	mov r0,r4
	mov.w @(loc_8C0FA2C6,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C0FA2E4,pc),r1
	mov.l @(loc_8c0fa2e0,pc),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.w @(loc_8C0FA2C8,pc),r0
	mov.l @r3,r2
	fldi1 fr4
	mov.l @(r0,r2),r3
	mov.w @(loc_8C0FA2CA,pc),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @r15,r3
	mov.w @(loc_8C0FA2CE,pc),r0
	mov.l r3,@(0x14,r4)
	mov.w @(loc_8C0FA2CC,pc),r3
	mov.l @r15,r2
	add r2,r3
	mov.l r3,@(r0,r4)
	mov 0x78,r0
	fmov.s fr4,@(r0,r4)
	mov 0x7C,r0
	fmov.s fr4,@(r0,r4)
	add 0x04,r0
	fmov.s fr4,@(r0,r4)

loc_8c0fa250:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C0FA258:
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C0FA26c
	cmp/eq 0x01,r0
	bt loc_8C0FA280
	cmp/eq 0x02,r0
	bt loc_8C0FA2Bc
	bra loc_8C0FA2C2
	nop

loc_8C0FA26C:
	mov.l @(loc_8C0FA2E8,pc),r2 ; r2 set to 0x8C26823c
	mov.l @r2,r3
	mov.w @(0x0A,r3),r0
	mov.w @(loc_8C0FA2D0,pc),r3 ; r3 set to 0x190
	cmp/ge r3,r0
	bf loc_8C0FA2C2
	mov.b @(0x04,r4),r0
	add 0x01,r0
	bra loc_8C0FA2C2
	mov.b r0,@(0x04,r4)

loc_8C0FA280:
	mova @(loc_8C0FA2D4,pc),r0  ; r0 init to 0x8C0FA2D4
	fmov.s @r0,fr4
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s @(r0,r4),fr3
	fsub fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s @(r0,r4),fr2
	fsub fr4,fr2
	fmov.s fr2,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x80
	fmov.s @(r0,r4),fr3
	fldi0 fr2
	fsub fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s @(r0,r4),fr3
	fcmp/gt fr2,fr3
	bt loc_8C0FA2C2
	mov.b @(0x04,r4),r0
	fmov fr2,fr4
	add 0x01,r0 ; r0 set to 0x79
	mov.b r0,@(0x04,r4)
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s fr4,@(r0,r4)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s fr4,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x80
	bra loc_8C0FA2C2
	fmov.s fr4,@(r0,r4)

loc_8C0FA2BC:
	mov.l @(loc_8C0FA2D8,pc),r2 ; r2 set to 0x8C0450C0
	jmp @r2
	nop

loc_8C0FA2C2:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0fa2c6:
	#data 0x012c
loc_8c0fa2c8:
	#data 0x0084
loc_8c0fa2ca:
	#data 0x0C00
loc_8c0fa2cc:
	#data 0x0088
loc_8c0fa2ce:
	#data 0x00C8
loc_8C0FA2D0:
	#data 0x0190
	#align4

loc_8C0FA2D4:
	#data 0x3C23D70a
loc_8C0FA2D8:
	#data bank04.loc_8c0450C0
loc_8C0FA2DC:
	#data bank04.loc_8c044F12
loc_8C0FA2E0:
	#data loc_8c0fA258
loc_8c0fa2e4:
	#data 0x8C26A928
loc_8C0FA2E8:
	#data 0x8C26823c

;==============================================
loc_8C0FA2EC:
	sts.l pr,@-r15
	mov.l @(loc_8C0FA3D8,pc),r3 ; r3 set to 0x8C044F12
	mov 0x0B,r5 ; r5 set to 0x0b
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C0FA326
	mov r0,r4 ; r4 ??? bc r0 is ???
	mov.w @(loc_8C0FA3CE,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8C0FA3E0,pc),r1 ; r1 set to 0x8C26A928
	mov.l @(loc_8C0FA3DC,pc),r2 ; r2 set to 0x8C0FA32c
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3 ; r3 ??
	mov.w @(loc_8C0FA3D0,pc),r0 ; r0 set to 0x84
	mov.l @r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(0x1C,r2),r3
	mov 0x00,r2 ; r2 set to 0x00
	mov.l r3,@(r0,r4)
	add 0x48,r0 ; r0 set to 0xCc
	mov.l r2,@(r0,r4)
	mov.l @r1,r4
	mov.l @(loc_8C0FA3E4,pc),r2 ; r2 set to 0x8C108210
	mov.l @r4,r3
	mov.l @(0x1C,r3),r4
	jmp @r2
	lds.l @r15+,pr

loc_8C0FA326:
	lds.l @r15+,pr
	rts
	nop

;=============================================
loc_8C0FA32C:
	mov.w @(0x1C,r4),r0
	mov.w @(0xA0,PC),r3
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/ge r3,r0
	bf.s loc_8c0fa342
	mov 0x00,r5
	mov r5,r0
	nop 
	mov.w r0,@(0x1C,r4)

loc_8C0FA342:
	mov.w @(0x1E,r4),r0
	mov.w @(0x8C,PC),r3
	add 0x01,r0
	mov.w r0,@(0x1E,r4)
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8c0fa356
	mov r5,r0
	nop 
	mov.w r0,@(0x1E,r4)

loc_8C0FA356:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xEC,r15
	mov.l @(0x78,PC),r3
	mov r4,r14
	mov.w @(0x64,PC),r0
	mov.l @r3,r4
	mov.l @(0x78,PC),r1
	mov.l @r4,r2
	mov.l @(r0,r14),r5
	jsr @r1
	mov.l @(0x20,r2),r4
	mov.l @(0x7C,PC),r13
	mova @(0x7C,PC),r0
	mov.l @(0x74,PC),r12
	mov.l @(0x6C,PC),r11
	bra loc_8c0fa3b6
	fmov @r0,fr15

loc_8C0FA382:
	mov r15,r5
	add 0x04,r5
	jsr @r11
	mov r15,r4
	mov.w @(0x1E,r14),r0
	mov r15,r5
	fmov @r15,fr2
	add 0x04,r5
	mov r0,r3
	lds r3,fpul
	fmov fr15,fr0
	float fpul,fr3
	fmul fr15,fr3
	fsub fr3,fr2
	fmov fr2,@r15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mov 0x04,r0
	fmov @(r0,r15),fr2
	mov 0x04,r0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r15)
	jsr @r13
	mov r15,r4

loc_8C0FA3B6:
	jsr @r12
	nop 
	tst r0,r0
	bt loc_8c0fa382
	add 0x14,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0FA3CE:
	#data 0x012c
loc_8C0FA3D0:
	#data 0x0084
loc_8C0FA3D2:
	#data 0x0168
loc_8C0FA3D4:
	#data 0x00C8
	#align4

loc_8C0FA3D8:
	#data bank04.loc_8c044F12
loc_8C0FA3DC:
	#data loc_8c0fA32c
loc_8C0FA3E0:
	#data 0x8C26A928
loc_8C0FA3E4:
	#data bank10.loc_8c108210
loc_8C0FA3E8:
	#data bank10.loc_8c108060
loc_8C0FA3EC:
	#data bank10.loc_8c108192
loc_8C0FA3F0:
	#data bank10.loc_8c108086
loc_8C0FA3F4:
	#data bank10.loc_8c1081E6
loc_8C0FA3f8:
	#data 0x3BA3D70a

;==============================================
loc_8C0FA3FC:
	sts.l pr,@-r15
	mov.l @(0x74,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0fa438
	mov r0,r4
	mov.w @(0x5C,PC),r0
	mov 0x01,r3
	mov.l @(0x68,PC),r1
	mov.l @(0x60,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.w @(0x50,PC),r0
	mov.l @r3,r2
	fldi1 fr4
	mov.l @(0x28,r2),r3
	mov.w @(0x4A,PC),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov 0x78,r0
	fmov fr4,@(r0,r4)
	mov 0x7C,r0
	fmov fr4,@(r0,r4)
	add 0x04,r0
	fmov fr4,@(r0,r4)

loc_8C0FA438:
	lds.l @r15+,pr
	rts 
	nop 

;=============================================
loc_8C0FA43E:
	mova @(loc_8C0FA480,pc),r0  ; r0 init to 0x8C0FA480
	fmov.s @r0,fr4
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s @(r0,r4),fr3
	fsub fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s @(r0,r4),fr2
	fsub fr4,fr2
	fmov.s fr2,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x80
	fmov.s @(r0,r4),fr3
	fldi0 fr2
	fsub fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s @(r0,r4),fr3
	fcmp/gt fr2,fr3
	bt loc_8C0FA46a
	mov.l @(loc_8C0FA484,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8C0FA46A:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0fa46e:
	#data 0x012c
loc_8c0fa470:
	#data 0x0084
loc_8c0fa472:
	#data 0x0C00
	#align4

loc_8C0FA474:
	#data bank04.loc_8c044F12
loc_8C0FA478:
	#data loc_8c0fA43e
loc_8C0FA47C:
	#data 0x8C26A928
loc_8C0FA480:
	#data 0x3D4CCCCd
loc_8C0FA484:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0FA488:
	sts.l pr,@-r15
	mov.l @(0xD0,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0fa4b6
	mov r0,r4
	mov.w @(0xB4,PC),r0
	mov 0x01,r3
	mov.l @(0xC4,PC),r1
	mov.l @(0xBC,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.w @(0xA8,PC),r0
	mov.l @r3,r2
	mov.l @(0x24,r2),r3
	mov.w @(0xA4,PC),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)

loc_8C0FA4B6:
	lds.l @r15+,pr
	rts
	nop

;=============================================
loc_8C0FA4BC:
	mov.l r14,@-r15
	mova @(loc_8C0FA568,pc),r0  ; r0 init to 0x8C0FA568
	fmov.s fr15,@-r15
	mov r4,r14
	sts.l pr,@-r15
	fmov.s @r0,fr15
	mov.b @(0x04,r14),r0
	extu.b r0,r0 ; r0 set to 0x68
	cmp/eq 0x00,r0
	bt loc_8C0FA4D8
	cmp/eq 0x01,r0
	bt loc_8C0FA4Fc
	bra loc_8C0FA54a
	nop

loc_8c0fa4d8:
	mov 0x78,r0
	fmov.s @(r0,r14),fr4
	mova @(loc_8C0FA56C,pc),r0
	fmov.s @r0,fr3
	fadd fr3,fr4
	fcmp/gt fr4,fr15
	bt loc_8c0fa4ee
	mov.b @(0x04,r14),r0
	fmov fr15,fr4
	add 0x01,r0
	mov.b r0,@(0x04,r14)

loc_8c0fa4ee:
	mov 0x78,r0
	fmov.s fr4,@(r0,r14)
	mov 0x7C,r0
	fmov.s fr4,@(r0,r14)
	add 0x04,r0
	bra loc_8c0fa54a
	fmov.s fr4,@(r0,r14)

loc_8c0fa4fc:
	mov.w @(0x1C,r14),r0
	mov.l @(0x80,PC),r2
	mov r0,r3
	lds r3,fpul
	mova @(0x68,PC),r0
	mov.l @(0x74,PC),r3
	fmov @r0,fr2
	mova @(0x68,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	mova @(0x64,PC),r0
	fmov @r0,fr0
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	mova @(0x60,PC),r0
	fmov fr0,fr3
	fmov @r0,fr0
	mov 0x78,r0
	mov.w @(0x2A,PC),r3
	fmac fr0,fr3,fr15
	fmov fr15,fr4
	fmov fr4,@(r0,r14)
	mov 0x7C,r0
	fmov fr4,@(r0,r14)
	add 0x04,r0
	fmov fr4,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0x05,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8c0fa54a
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)

loc_8C0FA54A:
	lds.l @r15+,pr
	fmov.s @r15+,fr15
	rts
	mov.l @r15+,r14

;=============================================
loc_8c0fa552:
	#data 0x012c
loc_8c0fa554:
	#data 0x0084
loc_8c0fa556:
	#data 0x0C00
loc_8c0fa558:
	#data 0x0168
	#align4

loc_8C0FA55C:
	#data bank04.loc_8c044F12
loc_8C0FA560:
	#data loc_8c0fA4Bc
loc_8C0FA564:
	#data 0x8C26A928
loc_8C0FA568:
	#data 0x3F400000
loc_8c0fa56c:
	#data 0x3C23D70a
loc_8C0FA570:
	#data 0x47800000
loc_8C0FA574:
	#data 0x43B40000
loc_8C0FA578:
	#data 0x3F000000
loc_8C0FA57c:
	#data 0x0000FFFf
loc_8C0FA580:
	#data bank11.loc_8c11E860
loc_8C0FA584:
	#data 0x3E800000

;==============================================
loc_8C0FA588:
	sts.l pr,@-r15
	mov.l @(0x48,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0fa5c2
	mov r0,r4
	mov.w @(0x2E,PC),r0
	mov 0x01,r3
	mov.l @(0x3C,PC),r1
	mov.l @(0x34,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(0x20,PC),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @r2,r3
	mov.w @(0x1A,PC),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(0x24,PC),r2
	mov.l @(0x24,PC),r3
	jsr @r3
	mov 0x0C,r0

loc_8C0FA5C2:
	lds.l @r15+,pr
	rts
	nop

;=============================================
loc_8C0FA5C8:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0fa5cc:
	#data 0x012c
loc_8c0fa5ce:
	#data 0x0084
loc_8c0fa5d0:
	#data 0x0801
	#align4

loc_8C0FA5D4:
	#data bank04.loc_8c044F12
loc_8C0FA5D8:
	#data loc_8c0fA5C8
loc_8C0FA5DC:
	#data 0x8C26A928
loc_8C0FA5E0:
	#data bank13.loc_8c13c3D0
loc_8C0FA5E4:
	#data bank12.loc_8c1294C8

;==============================================
loc_8c0fa5e8:
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
	add 0xEC,r15
	mov 0x23,r0
	mov r4,r14
	mov.b @(r0,r14),r0
	mov.l @(loc_8c0fa720,pc),r13
	extu.b r0,r0
	cmp/eq 0x34,r0
	bt/s loc_8c0fa6a0
	mov 0x00,r10
	mov 0x26,r0
	mov.w @(r0,r14),r2
	add 0x24,r2
	mov.w r2,@(r0,r14)
	mov.w @(r0,r14),r3
	mov.w @(loc_8C0FA71C,pc),r2
	extu.w r3,r3
	cmp/ge r2,r3
	bf loc_8c0fa624
	mov.w r10,@(r0,r14)

loc_8c0fa624:
	mov.w @(loc_8C0FA71E,pc),r0
	mov.l @(loc_8C0FA724,pc),r3
	mov.l @(r0,r14),r5
	mov 0x23,r0
	mov.b @(r0,r14),r2
	mov.l @r3,r4
	extu.b r2,r2
	mov.l @r4,r4
	shll2 r2
	add r2,r4
	mov.l @(loc_8c0fa728,pc),r2
	jsr @r2
	mov.l @(0x04,r4),r4
	mova @(loc_8C0FA734,pc),r0
	mov r10,r11
	fmov.s @r0,fr13
	mova @(loc_8C0FA738,pc),r0
	fmov.s @r0,fr14
	mov r10,r12
	mov.l @(loc_8C0FA730,pc),r9
	mova @(loc_8C0FA73C,pc),r0
	mov.l @(loc_8c0fa72c,pc),r8
	mov 0x01,r10
	bra loc_8c0fa694
	fmov.s @r0,fr15

loc_8c0fa656:
	mov.l @(loc_8c0fa740,pc),r2
	mov r15,r4
	jsr @r2
	add 0x08,r4
	mov 0x26,r0
	mov.w @(r0,r14),r4
	extu.w r4,r4
	add r12,r4
	lds r4,fpul
	float fpul,fr3
	fmov fr3,fr2
	fmul fr14,fr2
	fdiv fr13,fr2
	fmov fr2,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r8
	and r9,r4
	fmul fr15,fr0
	add 0x01,r11
	mov r11,r3
	tst r10,r3
	mov 0x10,r0
	bf/s loc_8c0fa68c
	fmov.s fr0,@(r0,r15)
	add 0x28,r12

loc_8c0fa68c:
	mov.l @(loc_8c0fa744,pc),r3
	mov r15,r4
	jsr @r3
	add 0x08,r4

loc_8c0fa694:
	jsr @r13
	nop
	tst r0,r0
	bt loc_8c0fa656
	bra loc_8c0fa702
	nop

loc_8c0fa6a0:
	mov 0x26,r0
	mov.w @(r0,r14),r2
	add 0x01,r2
	mov.w r2,@(r0,r14)
	mov 0x32,r2
	mov.w @(r0,r14),r3
	extu.w r3,r3
	cmp/gt r2,r3
	bf loc_8c0fa6b4
	mov.w r10,@(r0,r14)

loc_8c0fa6b4:
	mov.w @(loc_8C0FA71E,pc),r0
	mov.l @(loc_8C0FA724,pc),r3
	mov.l @(r0,r14),r5
	mov 0x23,r0
	mov.b @(r0,r14),r2
	mov.l @r3,r4
	extu.b r2,r2
	mov.l @r4,r4
	shll2 r2
	add r2,r4
	mov.l @(loc_8c0fa728,pc),r2
	jsr @r2
	mov.l @(0x04,r4),r4
	mov.l @(loc_8c0fa74c,pc),r12
	mova @(loc_8C0FA750,pc),r0
	mov.l @(loc_8c0fa748,pc),r11
	bra loc_8c0fa6fa
	fmov.s @r0,fr15

loc_8c0fa6d8:
	mov r15,r4
	mov r15,r5
	jsr @r12
	add 0x04,r4
	mov 0x26,r0
	fmov.s @r15,fr2
	mov.w @(r0,r14),r3
	mov r15,r4
	fmov fr15,fr0
	mov r15,r5
	extu.w r3,r3
	lds r3,fpul
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov.s fr2,@r15
	jsr @r11
	add 0x04,r4

loc_8c0fa6fa:
	jsr @r13
	nop
	tst r0,r0
	bt loc_8c0fa6d8

loc_8c0fa702:
	add 0x14,r15
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0FA71C:
	#data 0x0168
loc_8C0FA71E:
	#data 0x0084
	#align4

loc_8c0fa720:
	#data bank10.loc_8c108086
loc_8C0FA724:
	#data 0x8C26A92C
loc_8c0fa728:
	#data bank10.loc_8c108060
loc_8c0fa72c:
	#data bank11.loc_8c11e860
loc_8C0FA730:
	#data 0x0000FFFF
loc_8C0FA734:
	#data 0x43B40000
loc_8C0FA738:
	#data 0x47800000
loc_8C0FA73C:
	#data 0x3F000000
loc_8c0fa740:
	#data bank10.loc_8c108168
loc_8c0fa744:
	#data bank10.loc_8c1081b4
loc_8c0fa748:
	#data bank10.loc_8c1081e6
loc_8c0fa74c:
	#data bank10.loc_8c108192
loc_8C0FA750:
	#data 0x3CA3D70A

;==============================================
loc_8C0FA754:
	sts.l pr,@-r15
	add 0xF4,r15
	fmov.s @r4+,fr2
	mov r15,r6
	fmov.s @r5+,fr3
	mov 0x04,r0 ; r0 set to 0x04
	mov.l @(loc_8C0FA8B8,pc),r3 ; r3 set to 0x8C1294C8
	mov r6,r2
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov.s fr2,@r6
	fmov.s @r4+,fr2
	fmov.s @r5+,fr3 ; r3 ??? bc r5 is ???
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r6)
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s @r4,fr2
	fmov.s @r5,fr3
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r6)
	mov.l @(0x10,r15),r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	nop

;=============================================
loc_8C0FA78E:
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
	add 0xE0,r15
	mova @(0x110,PC),r0
	mov r4,r14
	fmov @r0,fr15
	mov 0x23,r0
	mov.b @(r0,r14),r0
	mov 0x00,r8
	mov r15,r12
	extu.b r0,r0
	cmp/eq 0x28,r0
	bf.s loc_8c0fa814
	add 0x14,r12
	mov.l @(0x10,r14),r5
	mov r5,r13
	add 0x10,r13
	mov.w @r13,r4
	exts.w r4,r0
	cmp/eq 0xFF,r0
	bf loc_8c0fa7d0
	bra loc_8c0fab44
	nop 

loc_8C0FA7D0:
	mov.w @r13,r4
	mov.w @r5,r3
	sub r3,r4
	mov r4,r0
	nop 
	mov.w r0,@(0x1C,r14)
	mov r5,r11
	mov r13,r4
	add 0x04,r11
	add 0x04,r4
	mov.l r13,@(0x10,r14)
	mov.w @(0x1C,r14),r0
	mov r11,r5
	mov r0,r3
	lds r3,fpul
	float fpul,fr4
	bsr loc_8c0fa754
	mov.l r12,@-r15
	add 0x04,r15
	fmov @r11+,fr3
	mov 0x3C,r0
	fmul fr15,fr3
	fmov fr3,@(r0,r14)
	mov 0x58,r0
	fmov @r11,fr3
	fmov fr3,@(r0,r14)
	mov 0x64,r0
	fmov @r12,fr3
	fmov fr3,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r12),fr3
	mov 0x70,r0
	bra loc_8c0fab76
	fmov fr3,@(r0,r14)

loc_8C0FA814:
	mova @(0xAC,PC),r0
	mov.l @(0xA8,PC),r9
	fmov @r0,fr13
	mov 0x23,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x27,r0
	bf loc_8c0fa8d0
	mov.l @(0x10,r14),r5
	mov r5,r13
	add 0x18,r13
	mov.w @r13,r4
	exts.w r4,r0
	cmp/eq 0xFF,r0
	bf loc_8c0fa836
	bra loc_8c0fab44
	nop 

loc_8C0FA836:
	mov.w @r13,r4
	mov.w @r5,r3
	sub r3,r4
	mov r4,r0
	nop 
	mov.w r0,@(0x1C,r14)
	mov 0x04,r0
	fmov @(r0,r5),fr5
	fmov @(r0,r13),fr4
	mov.w @(0x1C,r14),r0
	fsub fr5,fr4
	mov r0,r3
	lds r3,fpul
	mov 0x64,r0
	float fpul,fr3
	fdiv fr3,fr4
	fmul fr15,fr4
	fmov fr4,@(r0,r14)
	mov.w @(0x8,r13),r0
	mov r0,r3
	lds r3,fpul
	mov.w @(0x8,r5),r0
	mov r0,r3
	float fpul,fr5
	lds r3,fpul
	mov.w @(0x1C,r14),r0
	float fpul,fr4
	mov r0,r3
	lds r3,fpul
	mova @(0x54,PC),r0
	float fpul,fr3
	fsub fr4,fr5
	fmov fr5,fr4
	fdiv fr3,fr4
	fmov @r0,fr3
	fmul fr3,fr4
	fdiv fr13,fr4
	mova @(0x48,PC),r0
	mov r13,r4
	fmov @r0,fr2
	add 0x0C,r4
	mov.w @(0x28,PC),r0
	add 0x0C,r5
	fadd fr2,fr4
	ftrc fr4,fpul
	sts fpul,r3
	and r9,r3
	mov.l r3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	mov r0,r3
	lds r3,fpul
	float fpul,fr4
	bsr loc_8c0fa754
	mov.l r12,@-r15
	add 0x04,r15
	mov.l @(0x10,PC),r3
	mov r14,r1
	mov r12,r2
	add 0x68,r1
	jsr @r3
	mov 0x0C,r0
	bra loc_8c0fab76
	mov.l r13,@(0x10,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0fa8b4:
	#data 0x00D8
	#align4

loc_8C0FA8B8:
	#data bank12.loc_8c1294C8
loc_8C0FA8BC:
	#data 0x41200000
loc_8C0FA8C0:
	#data 0x0000FFFf
loc_8C0FA8C4:
	#data 0x43B40000
loc_8C0FA8C8:
	#data 0x47800000
loc_8C0FA8CC:
	#data 0x3F000000

;==============================================
loc_8C0FA8D0:
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c0fa8f2
	cmp/eq 0x02,r0
	bt loc_8c0fa90c
	cmp/eq 0x03,r0
	bt loc_8c0fa936
	cmp/eq 0x04,r0
	bt loc_8c0fa96a
	cmp/eq 0x05,r0
	bt loc_8c0fa990
	cmp/eq 0x06,r0
	bt loc_8c0fa9c4
	bra loc_8c0fab76
	nop 

loc_8C0FA8F2:
	mov.l @(0x10,r14),r6
	mov r6,r11
	add 0x10,r11
	mov.w @r11,r13
	exts.w r13,r0
	cmp/eq 0xFF,r0
	bf loc_8c0fa904
	bra loc_8c0fab44
	nop 

loc_8C0FA904:
	mov.w @r11,r5
	mov.w @r6,r3
	bra loc_8c0fa95e
	sub r3,r5

loc_8C0FA90C:
	mov.l @(0x10,r14),r4
	mov r4,r11
	add 0x04,r11
	mov.w @r11,r13
	exts.w r13,r0
	cmp/eq 0xFF,r0
	bf loc_8c0fa91e
	bra loc_8c0fab44
	nop 
  
loc_8C0FA91E:
	mov.w @r11,r5
	mov.w @r4,r3
	mov.w @(0x2,r11),r0
	sub r3,r5
	mov r0,r3
	lds r3,fpul
	mov.w @(0x2,r4),r0
	float fpul,fr12
	mov r0,r3
	lds r3,fpul
	bra loc_8c0fa966
	float fpul,fr14

loc_8C0FA936:
	mov.l @(0x10,r14),r6
	mov r6,r11
	add 0x10,r11
	mov.w @r11,r13
	exts.w r13,r0
	cmp/eq 0xFF,r0
	bf loc_8c0fa948
	bra loc_8c0fab44
	nop 

loc_8C0FA948:
	mov.w @r11,r5
	mov.w @r6,r3
	mov.w @(0x2,r11),r0
	sub r3,r5
	mov r0,r3
	lds r3,fpul
	mov.w @(0x2,r6),r0
	mov r0,r3
	float fpul,fr12
	lds r3,fpul
	float fpul,fr14

loc_8C0FA95E:
	mov r6,r10
	mov r11,r4
	add 0x04,r10
	add 0x04,r4

loc_8C0FA966:
	bra loc_8c0faa20
	mov.l r11,@(0x10,r14)

loc_8C0FA96A:
	mov.l @(0x10,r14),r4
	mov r4,r10
	add 0x0C,r10
	mov.w @r10,r13
	exts.w r13,r0
	cmp/eq 0xFF,r0
	bf loc_8c0fa97c
	bra loc_8c0fab44
	nop 

loc_8C0FA97C:
	mov r10,r2
	mov.w @r10,r5
	mov.w @r4,r3
	mov r4,r11
	add 0x04,r2
	add 0x04,r11
	mov.l r2,@(0x4,r15)
	sub r3,r5
	bra loc_8c0faa20
	mov.l r10,@(0x10,r14)

loc_8C0FA990:
	mov.l @(0x10,r14),r6
	mov r6,r13
	add 0x18,r13
	mov.l r13,@r15
	mov.w @r13,r13
	exts.w r13,r0
	cmp/eq 0xFF,r0
	bf loc_8c0fa9a4
	bra loc_8c0fab44
	nop 

loc_8C0FA9A4:
	mov.l @r15,r5
	mov r6,r11
	mov.w @r6,r3
	mov r6,r10
	mov.w @r5,r5
	add 0x10,r11
	mov.l @r15,r7
	add 0x04,r10
	sub r3,r5
	mov r7,r3
	add 0x10,r3
	mov r7,r4
	mov.l r3,@(0x4,r15)
	add 0x04,r4
	bra loc_8c0faa20
	mov.l r7,@(0x10,r14)

loc_8C0FA9C4:
	mov.l @(0x10,r14),r4
	mov.w @(0xC,r4),r0
	mov r0,r13
	exts.w r13,r0
	cmp/eq 0xFF,r0
	bf loc_8c0fa9d4
	bra loc_8c0fab44
	nop 

loc_8C0FA9D4:
	exts.w r13,r0
	cmp/eq 0xFD,r0
	bf loc_8c0fa9f4
	mov r4,r2
	add 0xF4,r2
	mov.w @(0x2,r2),r0
	mov r4,r6
	add 0xE8,r6
	mov r0,r3
	lds r3,fpul
	mov.w @(0x2,r6),r0
	float fpul,fr12
	mov r0,r3
	lds r3,fpul
	bra loc_8c0faa12
	mov 0x3C,r5

loc_8C0FA9F4:
	cmp/eq 0xFE,r0
	bf loc_8c0fa9fa
	add 0xE8,r4

loc_8C0FA9FA:
	mov r4,r6
	add 0x0C,r6
	mov.w @r6,r5
	mov.w @r4,r3
	mov.w @(0x2,r6),r0
	sub r3,r5
	mov r0,r3
	lds r3,fpul
	mov.w @(0x2,r4),r0
	float fpul,fr12
	mov r0,r3
	lds r3,fpul

loc_8C0FAA12:
	float fpul,fr14
	mov r6,r2
	mov r4,r11
	add 0x04,r2
	add 0x04,r11
	mov.l r2,@(0x4,r15)
	mov.l r6,@(0x10,r14)
  
loc_8C0FAA20:
	mov r5,r0
	nop 
	mov.w r0,@(0x1C,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x01,r0
	bt loc_8c0faa6e
	mov.w @(0x1C,r14),r0
	mov r10,r5
	mov r0,r3
	lds r3,fpul
	float fpul,fr4
	bsr loc_8c0fa754
	mov.l r12,@-r15
	add 0x04,r15
	fmov @r10+,fr3
	mov 0x34,r0
	fmul fr15,fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @r10+,fr3
	fmul fr15,fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	fmov @r10,fr3
	fmul fr15,fr3
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	fmov @r12,fr3
	fmov fr3,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r12),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x08,r0
	fmov @(r0,r12),fr3
	mov 0x64,r0
	fmov fr3,@(r0,r14)

loc_8C0FAA6E:
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x02,r0
	bt.s loc_8c0faafa
	exts.w r13,r12
	mov.w @(0x1C,r14),r0
	fsub fr14,fr12
	fmov fr14,fr2
	mov r0,r3
	lds r3,fpul
	mova @(0x28,PC),r0
	fmov fr12,fr4
	float fpul,fr3
	fdiv fr3,fr4
	fmov @r0,fr3
	mova @(0x24,PC),r0
	fmul fr3,fr2
	fmov @r0,fr1
	mov 0x20,r0
	mov.b @(r0,r14),r0
	fdiv fr13,fr2
	extu.b r0,r0
	cmp/eq 0x03,r0
	fadd fr1,fr2
	ftrc fr2,fpul
	sts fpul,r4
	bf.s loc_8c0faab8
	and r9,r4
	mov 0x44,r0
	bra loc_8c0faac4
	mov.l r4,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c0faab0:
	#data 0x47800000
loc_8c0faab4:
	#data 0x3F000000

;==============================================
loc_8C0FAAB8:
	mov r12,r0
	nop 
	cmp/eq 0xFD,r0
	bt loc_8c0faac4
	mov 0x48,r0
	mov.l r4,@(r0,r14)

loc_8C0FAAC4:
	mov.w @(0x10A,PC),r0
	fmov fr4,fr2
	mov.l r8,@(r0,r14)
	mova @(0x110,PC),r0
	fmov @r0,fr3
	mova @(0x110,PC),r0
	fmov @r0,fr1
	mov 0x20,r0
	fmul fr3,fr2
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	fdiv fr13,fr2
	fadd fr1,fr2
	ftrc fr2,fpul
	sts fpul,r4
	bf.s loc_8c0faaf2
	and r9,r4
	mov.w @(0xE8,PC),r0
	mov.l r4,@(r0,r14)
	add 0x04,r0
	bra loc_8c0faafa
	mov.l r8,@(r0,r14)

loc_8C0FAAF2:
	mov.w @(0xDE,PC),r0
	mov.l r8,@(r0,r14)
	add 0x04,r0
	mov.l r4,@(r0,r14)

loc_8C0FAAFA:
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x04,r0
	bt loc_8c0fab76
	mov.w @(0x1C,r14),r0
	mov r15,r13
	mov.l @(0x4,r15),r4
	add 0x08,r13
	mov r0,r3
	lds r3,fpul
	mov r11,r5
	float fpul,fr4
	bsr loc_8c0fa754
	mov.l r13,@-r15
	mov r12,r0
	nop 
	cmp/eq 0xFD,r0
	bt.s loc_8c0fab2e
	add 0x04,r15
	fmov @r11+,fr3
	mov 0x50,r0
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov @r11,fr3
	fmov fr3,@(r0,r14)

loc_8C0FAB2E:
	fmov @r13,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r13),fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov 0x70,r0
	fldi0 fr3
	bra loc_8c0fab76
	fmov fr3,@(r0,r14)

loc_8C0FAB44:
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x02,r0
	bf.s loc_8c0fab5a
	fldi0 fr3
	mov.w @(0x82,PC),r4
	add r14,r4
	mov.l r8,@(0xC,r4)
	mov.l r8,@(0x8,r4)
	mov.l r8,@(0x4,r4)

loc_8C0FAB5A:
	mov 0x64,r0
	fmov fr3,@(r0,r14)
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov 0x70,r0
	fmov fr3,@(r0,r14)
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x62,PC),r0
	mov.w r0,@(0x1C,r14)

loc_8C0FAB76:
	add 0x20,r15
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

;=============================================
loc_8C0FAB92:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x4C,PC),r0
	shll2 r14
	mov.l @(r0,r14),r14
	tst r14,r14
	bt loc_8c0fabce
	mov.w @(0x36,PC),r0
	mov 0x01,r4
	mov.b r4,@(r0,r14)
	mov.l r5,@(0x10,r14)
	mov r4,r0
	nop 
	mov.w r0,@(0x1C,r14)
	mov 0x58,r0
	fldi1 fr3
	mov r14,r4
	mov 0x00,r3
	add 0x40,r4
	mov.l r3,@(0x8,r4)
	mov.l r3,@(0x4,r4)
	mov.l r3,@r4
	mov r14,r4
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov fr3,@(r0,r14)
	mov 0x50,r0
	fmov fr3,@(r0,r14)
	bra loc_8c0fa78e
	mov.l @r15+,r14


loc_8C0FABCE:
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0fabd2:
	#data 0x00d0
loc_8c0fabd4:
	#data 0x00d4
loc_8c0fabd6:
	#data 0x00cc
loc_8c0fabd8:
	#data 0x00f0
loc_8c0fabda:
	#data 0x012c
	#align4

loc_8c0fabdc:
	#data 0x47800000
loc_8c0fabe0:
	#data 0x3F000000
loc_8c0fabe4:
	#data 0x8C28C750

;==============================================
loc_8C0FABE8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8C0FACB0,pc),r3 ; r3 set to 0x8C26823c
	mov 0x31,r0 ; r0 set to 0x31
	mov.l r13,@-r15
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	fmov.s fr13,@-r15
	sts.l pr,@-r15
	mov.l @r3,r4
	mov.b @(r0,r14),r5
	mov.w @(0x0A,r4),r0
	mov.w @(loc_8C0FACAE,pc),r6 ; r6 set to 0x5Bb
	fldi1 fr15
	cmp/ge r6,r0
	bf/s loc_8C0FACC0
	mov 0x00,r13 ; r13 set to 0x00
	mov 0x14,r1 ; r1 set to 0x14
	cmp/ge r1,r5
	bf loc_8C0FAC30
	mov 0x1F,r0 ; r0 set to 0x1f
	cmp/gt r0,r5
	bt loc_8C0FAC30
	mov.l @(loc_8C0FACB4,pc),r1 ; r1 set to 0x3D851EB8
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r14),fr2
	lds r1,fpul
	fsts fpul,fr3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r14)
	fmov.s @(r0,r14),fr1 ; r1 ??? bc r14 is ???
	fldi0 fr2
	fcmp/gt fr2,fr1
	bf loc_8C0FACAa
	bra loc_8C0FAF8c
	nop

loc_8c0fac30:
	mov 0x09,r2
	cmp/ge r2,r5
	bf loc_8c0fac3c
	mov 0x13,r1
	cmp/gt r1,r5
	bf loc_8c0fac44

loc_8c0fac3c:
	mov r5,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c0fac90

loc_8c0fac44:
	mov 0x23,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x20,r0
	bt loc_8c0fac90
	mov 0x23,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x22,r0
	bt loc_8c0fac90
	mov 0x23,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x25,r0
	bt loc_8c0fac90
	mov.w @(0x0A,r4),r0
	mov 0x3C,r3
	add r14,r3
	sub r6,r0
	lds r0,fpul
	mova @(loc_8C0FACB8,pc),r0
	fmov.s @r0,fr2
	mova @(loc_8C0FACBC,pc),r0
	fmov.s @r0,fr0
	mov 0x3C,r0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov.s @r3,fr3
	fadd fr2,fr3
	fldi0 fr2
	fmov.s fr3,@r3
	fmov.s @(r0,r14),fr3
	fcmp/gt fr3,fr2
	bf loc_8c0fac8c
	bra loc_8c0faf8c
	nop

loc_8c0fac8c:
	bra loc_8c0facaa
	nop

loc_8c0fac90:
	mov r5,r0
	nop
	cmp/eq 0x04,r0
	bt loc_8c0faca0
	mov r5,r0
	nop
	cmp/eq 0x03,r0
	bf loc_8c0facc0

loc_8c0faca0:
	mov 0x3C,r0
	fldi0 fr3
	fmov.s @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bt loc_8c0facc0

loc_8C0FACAA:
	bra loc_8C0FAF8c
	mov.b r13,@r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0FACAE:
	#data 0x05Bb
	#align4

loc_8C0FACB0:
	#data 0x8C26823c
loc_8C0FACB4:
	#data 0x3D851EB8
loc_8c0facb8:
	#data 0x3F400000
loc_8c0facbc:
	#data 0x3CA3D70a

;==============================================
loc_8C0FACC0:
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x0A,r0
	bt loc_8C0FAD1e
	cmp/eq 0x0B,r0
	bt loc_8C0FAD1e
	cmp/eq 0x0C,r0
	bt loc_8C0FAD1e
	cmp/eq 0x0D,r0
	bt loc_8C0FAD32
	cmp/eq 0x0E,r0
	bt loc_8C0FAD46
	cmp/eq 0x10,r0
	bt loc_8C0FAD46
	cmp/eq 0x1F,r0
	bt loc_8C0FAD6e
	cmp/eq 0x20,r0
	bt loc_8C0FAD82
	cmp/eq 0x2F,r0
	bt loc_8C0FAD9c
	cmp/eq 0x34,r0
	bf loc_8C0FACF2
	bra loc_8C0FADDe
	nop

loc_8C0FACF2:
	cmp/eq 0x36,r0
	bf loc_8C0FACFa
	bra loc_8C0FADF2
	nop

loc_8C0FACFA:
	cmp/eq 0x37,r0
	bf loc_8C0FAD02
	bra loc_8C0FAE00
	nop

loc_8C0FAD02:
	cmp/eq 0x38,r0
	bf loc_8C0FAD0a
	bra loc_8C0FAE00
	nop

loc_8C0FAD0A:
	cmp/eq 0x39,r0
	bf loc_8C0FAD12
	bra loc_8C0FAE00
	nop

loc_8C0FAD12:
	cmp/eq 0x3A,r0
	bt loc_8C0FAE00
	cmp/eq 0x3B,r0
	bt loc_8C0FAE00
	bra loc_8C0FAE6c
	nop

loc_8C0FAD1E:
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8C0FAD2e
	bra loc_8C0FAF86
	nop

loc_8C0FAD2E:
	bra loc_8C0FAE6c
	nop

loc_8C0FAD32:
	mov.w @(loc_8C0FAD7A,pc),r3 ; r3 set to 0x1Bd
	mov.w @(0x0A,r4),r0
	cmp/eq r3,r0
	bt loc_8C0FAD3e
	bra loc_8C0FAE6c
	nop

loc_8C0FAD3E:
	mov 0x25,r0 ; r0 set to 0x25
	mov 0x02,r1 ; r1 set to 0x02
	bra loc_8C0FAE6c
	mov.b r1,@(r0,r14)

loc_8C0FAD46:
	mov.w @(loc_8C0FAD7C,pc),r3 ; r3 set to 0x1E3
	mov.w @(0x0A,r4),r0
	cmp/eq r3,r0
	bf loc_8C0FAD52
	bra loc_8C0FAF86
	nop

loc_8C0FAD52:
	mov.w @(loc_8C0FAD7E,pc),r3 ; r3 set to 0x1Cf
	mov.w @(0x0A,r4),r0
	cmp/gt r3,r0
	bt loc_8C0FAD5e
	bra loc_8C0FAE6c
	nop

loc_8C0FAD5E:
	lds.l @r15+,pr
	mov r14,r4
	fmov.s @r15+,fr13
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r13
	bra loc_8C0FA5E8
	mov.l @r15+,r14

loc_8C0FAD6E:
	mov.w @(loc_8C0FAD80,pc),r3 ; r3 set to 0x20b
	mov.w @(0x0A,r4),r0
	cmp/eq r3,r0
	bt loc_8C0FAD8a
	bra loc_8C0FAE6c
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0FAD7A:
	#data 0x01Bd
loc_8C0FAD7C:
	#data 0x01E3
loc_8C0FAD7E:
	#data 0x01Cf
loc_8C0FAD80:
	#data 0x020b

;==============================================
loc_8c0fad82:
	mov.w @(loc_8C0FAE4C,pc),r3
	mov.w @(0x0A,r4),r0
	cmp/eq r3,r0
	bf loc_8c0fae6c

loc_8C0FAD8A:
	mov.w @(loc_8C0FAE4E,pc),r0 ; r0 set to 0x80
	fmov.s fr15,@(r0,r14)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s fr15,@(r0,r14)
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s fr15,@(r0,r14)
	mov 0x74,r0 ; r0 set to 0x74
	bra loc_8C0FAE6c
	fmov.s fr15,@(r0,r14)

loc_8C0FAD9C:
	mov.w @(loc_8C0FAE50,pc),r3 ; r3 set to 0x3B4
	mov.w @(0x0A,r4),r0
	cmp/ge r3,r0
	bf loc_8C0FAE6c
	mova @(loc_8C0FAE58,pc),r0  ; r0 init to 0x8C0FAE58
	fmov.s @r0,fr4
	mov.w @(0x0A,r4),r0
	and 0x03,r0
	cmp/eq 0x00,r0
	bt loc_8C0FADC0
	cmp/eq 0x01,r0
	bt loc_8C0FADC4
	cmp/eq 0x02,r0
	bt loc_8C0FADCc
	cmp/eq 0x03,r0
	bt loc_8C0FADD4
	bra loc_8C0FAE6c
	nop

loc_8C0FADC0:
	bra loc_8C0FADD4
	nop

loc_8C0FADC4:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr3
	bra loc_8C0FADDa
	fsub fr4,fr3

loc_8C0FADCC:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr3
	bra loc_8C0FADDa
	fsub fr4,fr3

loc_8C0FADD4:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr3
	fadd fr4,fr3

loc_8C0FADDA:
	bra loc_8C0FAE6c
	fmov.s fr3,@(r0,r14)

loc_8C0FADDE:
	mov r14,r4
	add 0x48,r4
	mov.l @r4,r2
	mov.w @(loc_8C0FAE52,pc),r3 ; r3 set to 0xB6
	add r3,r2
	mov.l r2,@r4
	bsr loc_8C0FA5E8
	mov r14,r4
	bra loc_8C0FAE6c
	nop

loc_8C0FADF2:
	mov r14,r4
	add 0x48,r4
	mov.l @r4,r2
	mov.w @(loc_8C0FAE54,pc),r3 ; r3 set to 0x38e
	add r3,r2
	bra loc_8C0FAE6c
	mov.l r2,@r4

loc_8C0FAE00:
	mov.l @(loc_8C0FAE5C,pc),r5 ; r5 set to 0x8C28C7F4
	mov 0x08,r0 ; r0 set to 0x08
	mov.w @(loc_8C0FAE56,pc),r3 ; r3 set to 0x41a
	fmov.s @(r0,r5),fr13
	mov.w @(0x0A,r4),r0
	cmp/ge r3,r0
	bf/s loc_8C0FAE2a
	fmov.s @r5,fr14
	mov 0x34,r0 ; r0 set to 0x34
	fmov fr14,fr5 ; r5 ??? bc r14 is ???
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x3C,r0 ; r0 set to 0x3c
	mov.l @(loc_8C0FAE60,pc),r2 ; r2 set to 0x8C11E210
	fsub fr3,fr5
	fmov.s @(r0,r14),fr3
	fmov fr13,fr4
	jsr @r2
	fsub fr3,fr4
	mov.l @(loc_8C0FAE64,pc),r3 ; r3 set to 0xFFFf
	bra loc_8C0FAE42
	and r3,r0

loc_8C0FAE2A:
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov fr13,fr5
	fmov.s @(r0,r14),fr3
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C0FAE60,pc),r2 ; r2 set to 0x8C11E210
	fsub fr3,fr5
	fmov.s @(r0,r14),fr3
	fmov fr14,fr4
	jsr @r2
	fsub fr3,fr4
	mov.l @(loc_8C0FAE68,pc),r3 ; r3 set to 0x8000
	add r3,r0 ; r0 set to 0x8034

loc_8C0FAE42:
	mov 0x44,r1 ; r1 set to 0x44, r1 set to 0x44
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???
	mov.l r0,@r1
	bra loc_8C0FAF8c
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0fae4c:
	#data 0x03E8
loc_8C0FAE4E:
	#data 0x0080
loc_8C0FAE50:
	#data 0x03B4
loc_8C0FAE52:
	#data 0x00B6
loc_8C0FAE54:
	#data 0x038e
loc_8C0FAE56:
	#data 0x041a
	#align4

loc_8C0FAE58:
	#data 0x3E4CCCCd
loc_8C0FAE5C:
	#data 0x8C28C7F4
loc_8C0FAE60:
	#data bank11.loc_8c11E210
loc_8C0FAE64:
	#data 0x0000FFFf
loc_8C0FAE68:
	#data 0x00008000

;==============================================
loc_8c0fae6c:
	mov 0x25,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0fae9a
	mov.l @(loc_8C0FAFA0,pc),r1
	mov 0x78,r0
	fmov.s @(r0,r14),fr2
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	fcmp/gt fr2,fr15
	bt/s loc_8c0fae8e
	fmov.s fr2,@(r0,r14)
	fmov.s fr15,@(r0,r14)
	mov 0x25,r0
	mov.b r13,@(r0,r14)

loc_8c0fae8e:
	mov 0x78,r0
	fmov.s @(r0,r14),fr3
	add 0x08,r0
	fmov.s fr3,@(r0,r14)
	mov 0x7C,r0
	fmov.s fr3,@(r0,r14)

loc_8c0fae9a:
	mov 0x25,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c0faec4
	mov.l @(loc_8C0FAFA4,pc),r1
	mov 0x78,r0
	fmov.s @(r0,r14),fr2
	lds r1,fpul
	fsts fpul,fr3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r14)
	fmov.s @(r0,r14),fr1
	fldi0 fr2
	fcmp/gt fr2,fr1
	bf loc_8c0faf86
	fmov.s @(r0,r14),fr3
	add 0x08,r0
	fmov.s fr3,@(r0,r14)
	mov 0x7C,r0
	fmov.s fr3,@(r0,r14)

loc_8c0faec4:
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x01,r0
	bt loc_8c0faefe
	mova @(loc_8C0FAFA8,pc),r0
	mov 0x5C,r1
	fmov.s @r0,fr4
	add r14,r1
	mov 0x34,r0
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	mov 0x60,r1
	fmov fr4,fr0
	add r14,r1
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x64,r1
	add r14,r1
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x3C,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r14)

loc_8c0faefe:
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x02,r0
	bt loc_8c0faf2e
	mov.w @(loc_8C0FAF9A,pc),r0
	mov r14,r2
	add 0x40,r2
	mov.l @r2,r1
	mov.l @(r0,r14),r3
	add 0x04,r0
	add r3,r1
	mov.l r1,@r2
	mov.l @(r0,r14),r3
	mov 0x44,r0
	mov.l @(r0,r14),r2
	add r3,r2
	mov.l r2,@(r0,r14)
	mov.w @(loc_8C0FAF9C,pc),r0
	mov.l @(r0,r14),r3
	mov 0x48,r0
	mov.l @(r0,r14),r1
	add r3,r1
	mov.l r1,@(r0,r14)

loc_8c0faf2e:
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x04,r0
	bt loc_8c0faf62
	mov 0x68,r1
	add r14,r1
	mov 0x50,r0
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	mov 0x6C,r1
	add r14,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x54,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x70,r1
	add r14,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x58,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)

loc_8c0faf62:
	mov 0x20,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0faf8c
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c0faf8c
	lds.l @r15+,pr
	mov r14,r4
	fmov.s @r15+,fr13
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r13
	bra loc_8c0fa78e
	mov.l @r15+,r14

loc_8c0faf86:
	mov.w @(loc_8C0FAF9E,pc),r0
	mov.b r13,@r14
	mov.b r13,@(r0,r14)

loc_8C0FAF8C:
	lds.l @r15+,pr
	fmov.s @r15+,fr13
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;=============================================
loc_8c0faf9a:
	#data 0x00D0
loc_8c0faf9c:
	#data 0x00D8
loc_8c0faf9e:
	#data 0x012C
	#align4

loc_8c0fafa0:
	#data 0x3D4CCCCd
loc_8c0fafa4:
	#data 0x3D088889
loc_8c0fafa8:
	#data 0x41200000

;==============================================
loc_8C0FAFAC:
	mov r5,r3
	mov 0x23,r0
	add 0x37,r3
	mov.l @(0x100,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x23,r3
	add r4,r3
	mov.l @r2,r0
	mov.b @r3,r3
	mov 0x00,r6
	mov.l @r0,r0
	add 0x0D,r5
	extu.b r3,r3
	fldi0 fr3
	shll2 r3
	mov.l @(r0,r3),r1
	mov r4,r3
	mov.w @(0xDC,PC),r0
	add 0x40,r3
	mov.l r1,@(r0,r4)
	mov 0x20,r0
	mov.b r6,@(r0,r4)
	mov 0x74,r0
	fmov fr3,@(r0,r4)
	add 0x58,r0
	mov.l r6,@(r0,r4)
	mov 0x31,r0
	mov.b r5,@(r0,r4)
	mov 0x48,r0
	mov.l r6,@r3
	rts 
	mov.l r6,@(r0,r4)

;=============================================
loc_8C0FAFEC:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xD0,r15
	mov.l @(0xB4,PC),r3
	mov 0x00,r9
	jsr @r3
	mov r9,r4
	mov.l @(0xB4,PC),r2
	mov.l @(0xB0,PC),r4
	jsr @r2
	nop 
	mov.l @(0xB0,PC),r12
	mov r15,r4
	add 0x28,r4
	mov.w @(0x96,PC),r13
	mov r4,r3
	mov.l r3,@(0xC,r15)
	mov.l @r12,r2
	add 0x04,r4
	mov.l @(0x30,r2),r1
	mov.l r1,@r3
	mov.l r4,@(0x10,r15)
	mov.l @r12,r3
	mov.l @(0x34,r3),r2
	mov.l @(0x9C,PC),r3
	mov.l r2,@r4
	mov 0x1C,r2
	mov.l @r3,r4
	cmp/ge r2,r4
	bf loc_8c0fb03a
	bra loc_8c0fb21c
	nop 

loc_8C0FB03A:
	mov.l @(0x90,PC),r3
	mov r4,r1
	jsr @r3
	mov 0x05,r0
	mov.l r0,@r15
	mov.l @r12,r3
	mov.w @(0xA,r3),r0
	cmp/ge r13,r0
	bf loc_8c0fb052
	mov.l @(0x80,PC),r0
	bra loc_8c0fb054
	nop 

loc_8C0FB052:
mov.l @(0x80,PC),r0

loc_8C0FB054:
	mov.b @(r0,r4),r11
	mov.l @(0x80,PC),r0
	extu.b r11,r10
	shll2 r10
	shll2 r10
	add r0,r10
	mova @(0x78,PC),r0
	fmov @r10,fr3
	fmov @r0,fr15
	mov r10,r3
	mov 0x1C,r0
	mov r10,r2
	fmul fr15,fr3
	add 0x04,r3
	add 0x08,r2
	fmov fr3,@(r0,r15)
	mov 0x20,r0
	mov.l r3,@(0x4,r15)
	fmov @r3,fr3
	fmul fr15,fr3
	fmov fr3,@(r0,r15)
	mov 0x24,r0
	mov.l r2,@(0x8,r15)
	fmov @r2,fr3
	fmul fr15,fr3
	fmov fr3,@(r0,r15)
	mov.l @r12,r1
	mov.w @(0xA,r1),r0
	cmp/ge r13,r0
	bf loc_8c0fb096
	mova @(0x4C,PC),r0
	bra loc_8c0fb0ec
	fmov @r0,fr4

loc_8C0FB096:
	mov.l @(0x30,PC),r2
	mov.l @r2,r0
	cmp/eq 0x0D,r0
	bt.s loc_8c0fb0a8
	mov r0,r4
	mov r4,r0
	nop 
	cmp/eq 0x1B,r0
	bf loc_8c0fb0e8

loc_8C0FB0A8:
	mova @(0x38,PC),r0
	bra loc_8c0fb0ec
	fmov @r0,fr4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0fb0ae:
	#data 0x0084
loc_8c0fb0b0:
	#data 0x041a
	#align4

loc_8c0fb0b4:
	#data 0x8C26A92c
loc_8C0FB0B8:
	#data bank12.loc_8c120950
loc_8C0FB0Bc:
	#data 0x8C28C80c
loc_8C0FB0C0:
	#data bank11.loc_8c1201e0
loc_8C0FB0C4:
	#data 0x8C26823c
loc_8C0FB0C8:
	#data 0x8C28C858
loc_8C0FB0CC:
	#data bank12.loc_8c1292D4
loc_8C0FB0D0:
	#data bank16.loc_8c163650
loc_8C0FB0D4:
	#data bank16.loc_8c16366c
loc_8C0FB0D8:
	#data bank16.loc_8c1632A0
loc_8C0FB0DC:
	#data 0x41200000
loc_8C0FB0E0:
	#data 0xC0A00000
loc_8C0FB0E4:
	#data 0x41400000

;===============================================
loc_8C0FB0E8:
	mova @(0x110,PC),r0
	fmov @r0,fr4

loc_8C0FB0EC:
	mov 0x1C,r0
	mov r15,r5
	fmov @(r0,r15),fr3
	mov 0x1C,r0
	mov.l @(0x108,PC),r3
	mov r15,r4
	fadd fr4,fr3
	add 0x14,r5
	fmov fr3,@(r0,r15)
	jsr @r3
	add 0x1C,r4
	mov.l @r12,r4
	mov.w @(0xA,r4),r0
	mov r0,r4
	cmp/ge r13,r4
	bf loc_8c0fb118
	mova @(0xF4,PC),r0
	fmov @r0,fr3
	mov 0x14,r0
	fmov @(r0,r15),fr2
	fcmp/gt fr3,fr2
	bf loc_8c0fb12e

loc_8C0FB118:
	cmp/ge r13,r4
	bf loc_8c0fb120
	bra loc_8c0fb27e
	nop 

loc_8C0FB120:
	mov 0x14,r0
	fldi0 fr3
	fmov @(r0,r15),fr2
	fcmp/gt fr2,fr3
	bf loc_8c0fb12e
	bra loc_8c0fb27e
	nop 

loc_8C0FB12E:
	mov.l @(0xDC,PC),r3
	mov 0x01,r8
	mov.l @r15,r14
	extu.b r11,r5
	mov.l @(0xD0,PC),r0
	mov.l @(0xD4,PC),r1
	shll2 r14
	mov.l @(r0,r14),r14
	mov.b r8,@r3
	mov.l @r15,r2
	mov.l @(0xD0,PC),r3
	add 0x06,r2
	mov.b r2,@r1
	jsr @r3
	mov.l @r15,r4
	mov.w @(0xA2,PC),r0
	mov.b r8,@r14
	mov.b r8,@(r0,r14)
	mov 0x34,r0
	fmov @r10,fr3
	fmul fr15,fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x4,r15),r3
	fmov @r3,fr3
	fmul fr15,fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	mov.l @(0x8,r15),r3
	fmov @r3,fr3
	fmul fr15,fr3
	fmov fr3,@(r0,r14)
	mov 0x0C,r0
	fmov @(r0,r10),fr3
	mov 0x58,r0
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov fr3,@(r0,r14)
	mov 0x50,r0
	fmov fr3,@(r0,r14)
	mov.l @r12,r3
	mov.w @(0xA,r3),r0
	cmp/ge r13,r0
	bf loc_8c0fb18e
	mov.w @(0x6A,PC),r2
	mov 0x44,r0
	bra loc_8c0fb194
	mov.l r2,@(r0,r14)

loc_8C0FB18E:
	mov.w @(0x64,PC),r1
	mov 0x44,r0
	mov.l r1,@(r0,r14)

loc_8C0FB194:
	mov 0x20,r2
	extu.b r11,r3
	cmp/ge r2,r3
	bt loc_8c0fb1ae
	mov.l @(0xC,r15),r3
	extu.b r11,r11
	mov r8,r1
	shad r11,r1
	mov.l @r3,r3
	tst r3,r1
	bf loc_8c0fb1be
	bra loc_8c0fb1c2
	nop 

loc_8C0FB1AE:
	mov.l @(0x10,r15),r1
	extu.b r11,r11
	add 0xE0,r11
	mov r8,r3
	mov.l @r1,r1
	shad r11,r3
	tst r1,r3
	bt loc_8c0fb1c2

loc_8C0FB1BE:
	bra loc_8c0fb1c4
	mov r8,r4

loc_8C0FB1C2:
	mov r9,r4

loc_8C0FB1C4:
	lds r4,fpul
	fldi1 fr2
	mov.w @(0x2C,PC),r0
	float fpul,fr3
	fmul fr2,fr3
	fmov fr3,@(r0,r14)
	mov 0x7C,r0
	fmov fr3,@(r0,r14)
	mov 0x78,r0
	fmov fr3,@(r0,r14)
	mov 0x74,r0
	fmov fr3,@(r0,r14)
	mov 0x25,r0
	mov.b r9,@(r0,r14)
	mov r9,r0
	nop 
	mov.l @(0x30,PC),r3
	mov.w r0,@(0x1C,r14)
	mov.l @r3,r2
	add 0x01,r2
	mov.l r2,@r3
	bra loc_8c0fb27e
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0fb1f2:
	#data 0x012C
loc_8c0fb1f4:
	#data 0x10F2
loc_8c0fb1f6:
	#data 0x6EB7
loc_8c0fb1f8:
	#data 0x0080
	#align4

loc_8C0FB1fc:
	#data 0x40C00000
loc_8C0FB200:
	#data bank12.loc_8c121FE0
loc_8C0FB204:
	#data 0x44200000
loc_8C0FB208:
	#data 0x8C28C784
loc_8C0FB20c:
	#data 0x8C26A960
loc_8C0FB210:
	#data 0x8C26A961
loc_8C0FB214:
	#data bank03.loc_8c039A16
loc_8C0FB218:
	#data 0x8C28C858

;==============================================
loc_8C0FB21C:
	mov r15,r2
	mov.l @(0xA4,PC),r3
	mov r15,r1
	add 0x34,r2
	add 0x1C,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @r12,r3
	mova @(0x98,PC),r0
	fmov @r0,fr4
	mov.w @(0xA,r3),r0
	cmp/ge r13,r0
	bf loc_8c0fb23e
	mov 0x1C,r0
	fmov @(r0,r15),fr3
	bra loc_8c0fb244
	fadd fr4,fr3

loc_8C0FB23E:
	mov 0x1C,r0
	fmov @(r0,r15),fr3
	fsub fr4,fr3

loc_8C0FB244:
	mov r15,r5
	mov.l @(0x84,PC),r3
	mov 0x1C,r0
	mov r15,r4
	fmov fr3,@(r0,r15)
	add 0x14,r5
	jsr @r3
	add 0x1C,r4
	mov.l @r12,r4
	mov.w @(0xA,r4),r0
	mov r0,r4
	cmp/ge r13,r4
	bf loc_8c0fb268
	mov 0x14,r0
	fldi0 fr3
	fmov @(r0,r15),fr2
	fcmp/gt fr2,fr3
	bt loc_8c0fb278

loc_8C0FB268:
	cmp/ge r13,r4
	bt loc_8c0fb27e
	mova @(0x60,PC),r0
	fmov @r0,fr3
	mov 0x14,r0
	fmov @(r0,r15),fr2
	fcmp/gt fr3,fr2
	bf loc_8c0fb27e

loc_8C0FB278:
	mov.w @(0x44,PC),r0
	mov.b r9,@(r0,r15)
	mov.b r9,@r15

loc_8C0FB27E:
	mov.l @(0x54,PC),r3
	jsr @r3
	mov 0x01,r4
	add 0x30,r15
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

;=============================================
loc_8C0FB29A:
	mov 0x1C,r3
	mov.l @(0x38,PC),r2
	mul.l r3,r4
	mov 0x18,r0
	mov.l @(0x38,PC),r5
	mov.l r14,@-r15
	sts.l pr,@-r15
	sts macl,r4
	add r2,r4
	mov.b @(r0,r4),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r5),r3
	tst r3,r3
	bf loc_8c0fb2e0
	lds.l @r15+,pr
	mov 0x00,r0
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0fb2c0:
	#data 0x012c
	#align4

loc_8C0FB2C4:
	#data bank12.loc_8c1294C8
loc_8C0FB2C8:
	#data 0x41A00000
loc_8C0FB2CC:
	#data bank12.loc_8c121FE0
loc_8C0FB2D0:
	#data 0x44200000
loc_8C0FB2D4:
	#data bank12.loc_8c120900
loc_8C0FB2D8:
	#data bank16.loc_8c1642D0
loc_8C0FB2DC:
	#data 0x8C28C750

;==============================================
loc_8C0FB2E0:
	mov.l @(r0,r5),r14
	mov 0x01,r6
	mov.w @(0xD4,PC),r0
	mov 0x23,r1
	mov.l @(0xD4,PC),r2
	add r14,r1
	mov.b r6,@r14
	mov.b r6,@(r0,r14)
	mov.l @(0x14,r4),r3
	mov.l r3,@(0x10,r14)
	mov.b @(0x2,r4),r0
	mov.b r0,@r1
	mov 0x29,r0
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bt loc_8c0fb332
	mov 0x23,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x14,r0
	bf loc_8c0fb312
	mov 0x23,r0
	mov 0x2C,r1
	mov.b r1,@(r0,r14)

loc_8C0FB312:
	mov 0x23,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bf loc_8c0fb322
	mov 0x23,r0
	mov 0x29,r2
	mov.b r2,@(r0,r14)

loc_8C0FB322:
	mov 0x23,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x19,r0
	bf loc_8c0fb332
	mov 0x23,r0
	mov 0x2A,r2
	mov.b r2,@(r0,r14)

loc_8C0FB332:
	mov 0x23,r2
	mov.l @(0x8C,PC),r3
	add r14,r2
	fldi0 fr4
	mov.b @r2,r2
	mov 0x00,r5
	mov.l @r3,r0
	extu.b r2,r2
	mov.l @r0,r0
	shll2 r2
	mov.l @(r0,r2),r1
	mov 0x20,r2
	mov.w @(0x70,PC),r0
	add r14,r2
	mov.l r1,@(r0,r14)
	mov.b @(0x3,r4),r0
	mov.b r0,@r2
	mov 0x74,r0
	fmov fr4,@(r0,r14)
	add 0x58,r0
	mov.l r5,@(r0,r14)
	mov 0x18,r0
	mov.b @(r0,r4),r2
	mov 0x31,r0
	mov.b r2,@(r0,r14)
	mova @(0x60,PC),r0
	fmov @r0,fr5
	mov 0x08,r0
	fmov @(r0,r4),fr3
	mov 0x34,r0
	fmul fr5,fr3
	fmov fr3,@(r0,r14)
	mov 0x0C,r0
	mov r14,r7
	fmov @(r0,r4),fr3
	mov 0x38,r0
	add 0x40,r7
	fmul fr5,fr3
	fmov fr3,@(r0,r14)
	mov 0x10,r0
	fmov @(r0,r4),fr3
	mov 0x3C,r0
	fmul fr5,fr3
	fldi1 fr5
	fmov fr3,@(r0,r14)
	mov 0x58,r0
	mov.l r5,@(0x8,r7)
	mov.l r5,@(0x4,r7)
	mov.l r5,@r7
	fmov fr5,@(r0,r14)
	mov 0x54,r0
	fmov fr5,@(r0,r14)
	mov 0x50,r0
	fmov fr5,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r4),fr3
	add 0x7C,r0
	fmov fr3,@(r0,r14)
	mov 0x7C,r0
	fmov fr3,@(r0,r14)
	fcmp/eq fr5,fr3
	mov 0x78,r0
	fmov fr3,@(r0,r14)
	mov 0x74,r0
	bf.s loc_8c0fb3cc
	fmov fr3,@(r0,r14)
	mov 0x25,r0
	bra loc_8c0fb3d0
	mov.b r5,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0fb3bc:
	#data 0x012c
loc_8c0fb3be:
	#data 0x0084
	#align4

loc_8c0fb3c0:
	#data 0x8c26823c
loc_8c0fb3c4:
	#data 0x8c26a92c
loc_8c0fb3c8:
	#data 0x41200000

;==============================================
loc_8C0FB3CC:
	mov 0x25,r0
	mov.b r6,@(r0,r14)

loc_8C0FB3D0:
	mov 0x23,r0
	mov.b @(r0,r14),r4
	extu.b r4,r0
	cmp/eq 0x1F,r0
	bt.s loc_8c0fb3e4
	mov r0,r4
	mov r4,r0
	nop 
	cmp/eq 0x20,r0
	bf loc_8c0fb3e8

loc_8C0FB3E4:
	mov 0x25,r0
	mov.b r5,@(r0,r14)

loc_8C0FB3E8:
	mov 0x23,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x2B,r0
	bf loc_8c0fb416
	mov 0x31,r0
	mov.b @(r0,r14),r0
	cmp/eq 0x22,r0
	bt.s loc_8c0fb404
	mov r0,r4
	mov r4,r0
	nop 
	cmp/eq 0x21,r0
	bf loc_8c0fb410

loc_8C0FB404:
	mova @(0x8C,PC),r0
	fmov @r0,fr3
	mov 0x54,r0
	fmov fr3,@(r0,r14)
	mov 0x50,r0
	fmov fr3,@(r0,r14)

loc_8C0FB410:
	mov 0x25,r0
	mov 0x02,r3
	mov.b r3,@(r0,r14)

loc_8C0FB416:
	mov 0x23,r0
	mov.b @(r0,r14),r4
	extu.b r4,r0
	cmp/eq 0x1D,r0
	bt.s loc_8c0fb42a
	mov r0,r4
	mov r4,r0
	nop 
	cmp/eq 0x1E,r0
	bf loc_8c0fb45c

loc_8C0FB42A:
	mov.l @(0x6C,PC),r4
	mov.l @(0x6C,PC),r0
	mov.l @r4,r3
	add 0x01,r3
	mov.l r3,@r4
	add 0xFF,r3
	shll r3
	mov.w @(r0,r3),r2
	mova @(0x64,PC),r0
	fmov @r0,fr2
	mova @(0x64,PC),r0
	lds r2,fpul
	fmov @r0,fr1
	mova @(0x60,PC),r0
	fmov @r0,fr0
	mov 0x48,r0
	float fpul,fr3
	mov.l @(0x5C,PC),r2
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r2,r3
	mov.l r3,@(r0,r14)

loc_8C0FB45C:
	mov 0x64,r0
	mov.w @(0x2E,PC),r4
	add r14,r4
	mov.l r5,@(0xC,r4)
	mov.l r5,@(0x8,r4)
	mov.l r5,@(0x4,r4)
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x70,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	bsr loc_8c0fa78e
	mov r14,r4
	mov.w @(0xC,PC),r0
	mov.w r0,@(0x1E,r14)
	mov r14,r0
	nop 
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0fb490:
	#data 0x00cc
loc_8c0fb492:
	#data 0x00f0
	#align4

loc_8c0fb494:
	#data 0x3F6147Ae
loc_8c0fb498:
	#data 0x8C28C854
loc_8C0FB49C:
	#data bank16.loc_8c1649D0
loc_8c0fb4a0:
	#data 0x47800000
loc_8c0fb4a4:
	#data 0x43B40000
loc_8c0fb4a8:
	#data 0x3F000000
loc_8c0fb4ac:
	#data 0x0000FFFf

;==============================================
loc_8C0FB4B0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0xEC,PC),r8
	mova @(0xE0,PC),r0
	fmov @r0,fr4
	mov 0x09,r10
	mov.l @(0xF4,PC),r13
	mov 0x0D,r9
	mov.l @(0xEC,PC),r11
	mov 0x00,r14
	mov.l @(0xE0,PC),r6
	mov 0x01,r12
	mov.l @(0xD4,PC),r7
	mov.l @(0xDC,PC),r5
	mov.l r13,@r15
	mov.l @r8,r0
	mov.w @(0xA,r0),r0
	cmp/eq 0x00,r0
	bt.s loc_8c0fb54c
	mov r5,r4
	cmp/eq 0x3C,r0
	bt loc_8c0fb56e
	cmp/eq 0x5A,r0
	bt loc_8c0fb576
	cmp/eq 0x6E,r0
	bt loc_8c0fb586
	mov.w @(0x9E,PC),r1
	cmp/eq r1,r0
	bt loc_8c0fb5d8
	mov.w @(0x9A,PC),r1
	cmp/eq r1,r0
	bf loc_8c0fb502
	bra loc_8c0fb60a
	nop 

loc_8C0FB502:
	mov.w @(0x92,PC),r1
	cmp/eq r1,r0
	bf loc_8c0fb50c
	bra loc_8c0fb688
	nop 

loc_8C0FB50C:
	mov.w @(0x8A,PC),r1
	cmp/eq r1,r0
	bf loc_8c0fb516
	bra loc_8c0fb718
	nop 

loc_8C0FB516:
	mov.w @(0x82,PC),r1
	cmp/eq r1,r0
	bf loc_8c0fb520
	bra loc_8c0fb7b0
	nop 

loc_8C0FB520:
	mov.w @(0x7A,PC),r1
	cmp/eq r1,r0
	bf loc_8c0fb52a
	bra loc_8c0fb810
	nop 

loc_8C0FB52A:
	mov.w @(0x72,PC),r1
	cmp/eq r1,r0
	bf loc_8c0fb534
	bra loc_8c0fb87e
	nop 

loc_8C0FB534:
	mov.w @(0x6A,PC),r1
	cmp/eq r1,r0
	bf loc_8c0fb53e
	bra loc_8c0fb88c
	nop 

loc_8C0FB53E:
	mov.w @(0x62,PC),r1
	cmp/eq r1,r0
	bf loc_8c0fb548
	bra loc_8c0fb8a6
	nop 

loc_8C0FB548:
	bra loc_8c0fb8b2
	nop 

loc_8C0FB54C:
	mov.l @(0x74,PC),r3
	mov.l r6,@r4
	mov.l r6,@(0x4,r5)
	mov 0x1E,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	mov.l @(0x6C,PC),r2
	jsr @r2
	mov 0x00,r4
	mov.l @(0x68,PC),r1
	mov 0x00,r3
	mov.l r3,@r11
	mov r3,r2
	mov.l r3,@r1
	bra loc_8c0fb8b2
	nop 

loc_8C0FB56E:
	mov 0x3C,r5
	mov 0x01,r6
	bra loc_8c0fb8ac
	mov 0x00,r4

loc_8C0FB576:
	mov.l @(0x58,PC),r2
	jsr @r2
	mov 0x13,r4
	mov.l @(0x54,PC),r3
	jsr @r3
	nop 
	bra loc_8c0fb8b2
	nop 

loc_8C0FB586:
	mov.l @(0x3C,PC),r3
	mov 0x78,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	bra loc_8c0fb8b2
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0fb594:
	#data 0x01e3
loc_8c0fb596:
	#data 0x0233
loc_8c0fb598:
	#data 0x0346
loc_8c0fb59a:
	#data 0x03ca
loc_8c0fb59c:
	#data 0x041a
loc_8c0fb59e:
	#data 0x052f
loc_8c0fb5a0:
	#data 0x060b
loc_8c0fb5a2:
	#data 0x0615
loc_8c0fb5a4:
	#data 0x06b5
	#align4

loc_8c0fb5a8:
	#data 0x3E800000
loc_8c0fb5ac:
	#data 0x8C26A688
loc_8c0fb5b0:
	#data 0x8C26823c
loc_8c0fb5b4:
	#data 0xFF000000
loc_8c0fb5b8:
	#data 0x8C28C85c
loc_8c0fb5bc:
	#data 0x8C28C84c
loc_8c0fb5c0:
	#data 0x8C28C750
loc_8C0FB5C4:
	#data bank03.loc_8c0355B2
loc_8C0FB5C8:
	#data bank04.loc_8c042538
loc_8c0fb5CC:
	#data 0x8C28C854
loc_8C0FB5D0:
	#data bank04.loc_8c041DDe
loc_8C0FB5D4:
	#data bank04.loc_8c041E44

;==============================================
loc_8C0FB5D8:
	mov.l @(0x94,PC),r3
	mov.l @(0x9C,PC),r1
	mov.l r3,@r4
	mov 0x04,r3
	mov.w @(0x86,PC),r0
	mov.l @(0x90,PC),r2
	mov.l r6,@(0x4,r5)
	mov.b r12,@r2
	mov.b r3,@r1
	mov.l @(0x14,r13),r4
	mov.w @(0x7C,PC),r3
	mov.b r14,@(r0,r4)
	add r3,r4
	mov.l @(0x88,PC),r2
	mov.b r14,@(r0,r4)
	add r3,r4
	mov.l r2,@(0x10,r4)
	mov r12,r0
	nop 
	mov.l @(0x80,PC),r2
	mov.w r0,@(0x1C,r4)
	add r3,r4
	mov.l r2,@(0x10,r4)
	bra loc_8c0fb8b2
	mov.w r0,@(0x1C,r4)

loc_8C0FB60A:
	mov 0xFF,r2
	mov r2,r3
	mov.l r2,@r4
	mov.l r2,@(0x4,r5)
	mov r14,r4
	mov.l @(0x6C,PC),r2
	mov.b r12,@r7
	mov.l r14,@r2

loc_8C0FB61A:
	mov r4,r0
	nop 
	shll2 r0
	mov.l @(r0,r13),r5
	add 0x01,r4
	mov.w @(0x42,PC),r0
	cmp/ge r10,r4
	bf.s loc_8c0fb61a
	mov.b r14,@(r0,r5)
	cmp/ge r9,r4
	bt loc_8c0fb644

loc_8C0FB630:
	mov r4,r0
	nop 
	shll2 r0
	mov.l @(r0,r13),r5
	add 0x01,r4
	mov.w @(0x2C,PC),r0
	cmp/ge r9,r4
	mov.b r14,@r5
	bf.s loc_8c0fb630
	mov.b r14,@(r0,r5)

loc_8C0FB644:
	mov r4,r9
	mov r13,r14
	shll2 r9
	mov r4,r12
	add 0x48,r14
	add r13,r9
	cmp/hs r14,r9
	bf.s loc_8c0fb65a
	add 0xF3,r12
	bra loc_8c0fb8b2
	nop 

loc_8C0FB65A:
	mov.l @r9+,r4
	bsr loc_8c0fafac
	mov r12,r5
	cmp/hs r14,r9
	bf.s loc_8c0fb65a
	add 0x01,r12
	bra loc_8c0fb8b2
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0fb66a:
	#data 0x012C
loc_8c0fb66c:
	#data 0x01D0
	#align4

loc_8C0FB670:
	#data 0xFF0000Ff
loc_8C0FB674:
	#data 0x8C26A960
loc_8C0FB678:
	#data 0x8C26A961
loc_8C0FB67C:
	#data bank16.loc_8c163B28
loc_8C0FB680:
	#data bank16.loc_8c163BF4
loc_8C0FB684:
	#data 0x8C28C858

;==============================================
loc_8C0FB688:
	mov.l r6,@r4
	mov.l r6,@(0x4,r5)
	mov r13,r6
	mov r13,r5
	add 0x48,r6
	mov.b r14,@r7
	add 0x34,r5

loc_8C0FB696:
	mov.l @r5+,r4
	mov.w @(0xDA,PC),r0
	cmp/hs r6,r5
	mov.b r14,@r4
	bf.s loc_8c0fb696
	mov.b r14,@(r0,r4)
	mov.w @(0xD4,PC),r6
	mov.w @(0xD0,PC),r4
	add r13,r6
	add r13,r4

loc_8C0FB6AA:
	mov.l @r4+,r5
	cmp/hs r6,r4
	bf.s loc_8c0fb6aa
	mov.b r14,@(r0,r5)
	mov.l @(0xCC,PC),r2
	mov.l @(0xCC,PC),r5
	mov.l r14,@r2
	bsr loc_8c0fab92
	mov 0x05,r4
	mov.l @(0xC8,PC),r5
	bsr loc_8c0fab92
	mov 0x06,r4
	mov.l @(0xC8,PC),r5
	bsr loc_8c0fab92
	mov 0x07,r4
	mov.l @(0xC4,PC),r5
	bsr loc_8c0fab92
	mov 0x08,r4
	mov r14,r9

loc_8C0FB6D0:
	mov r9,r0
	nop 
	shll2 r0
	mov.l @(r0,r13),r4
	mov.w @(0x9A,PC),r0
	mov.b r12,@(r0,r4)
	mov r9,r0
	nop 
	cmp/eq 0x01,r0
	bf loc_8c0fb6f8
	mov.l @(0xAC,PC),r3
	mov.l @r3,r2
	mov.l @r2,r1
	mov.l @(0xAC,PC),r2
	mov.l @(0x8,r1),r0
	mov.w @(0x8A,PC),r1
	add r4,r1
	mov.l r0,@r1
	bsr loc_8c0fa78e
	mov.l r2,@(0x10,r4)

loc_8C0FB6F8:
	mov 0x05,r3
	add 0x01,r9
	cmp/ge r3,r9
	bf loc_8c0fb6d0
	mov r13,r6
	mov r13,r5
	add 0x48,r6
	add 0x24,r5

loc_8C0FB708:
	mov.l @r5+,r4
	mov.w @(0x68,PC),r0
	cmp/hs r6,r5
	mov.b r14,@r4
	bf.s loc_8c0fb708
	mov.b r14,@(r0,r4)
	bra loc_8c0fb8b2
	nop 

loc_8C0FB718:
	mov.l @(0x80,PC),r3
	mov.l @(0x88,PC),r1
	mov.l r3,@r4
	mov 0x05,r3
	mov.l @(0x7C,PC),r2
	mov.l r6,@(0x4,r5)
	mov.b r12,@r2
	mov.b r3,@r1
	mov.l @(0x7C,PC),r3
	mov.l @(0x14,r13),r4
	mov.l r3,@(0x10,r4)
	mov r12,r0
	nop 
	mov.w @(0x48,PC),r3
	mov r13,r6
	mov.w r0,@(0x1C,r4)
	add 0x34,r6
	mov.l @(0x70,PC),r2
	add r3,r4
	mov.l r2,@(0x10,r4)
	mov.w r0,@(0x1C,r4)
	add r3,r4
	mov.w @(0x2E,PC),r0
	mov.b r14,@(r0,r4)
	add r3,r4
	mov.b r14,@(r0,r4)
	mov r13,r4
	add 0x24,r4

loc_8C0FB750:
	mov.l @r4+,r5
	cmp/hs r6,r4
	bf.s loc_8c0fb750
	mov.b r14,@(r0,r5)
	mov 0x44,r0
	mov r13,r6
	mov.l @(r0,r13),r4
	mov r13,r5
	mov.w @(0x12,PC),r0
	add 0x60,r6
	add 0x50,r5
	mov.b r14,@r4
	mov.b r14,@(r0,r4)

loc_8C0FB76A:
	mov.l @r5+,r4
	cmp/hs r6,r5
	bf.s loc_8c0fb76a
	mov.b r14,@(r0,r4)
	bra loc_8c0fb8b2
	nop 
  
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0fb776:
	#data 0x012C
loc_8c0fb778:
	#data 0x008c
loc_8c0fb77a:
	#data 0x0098
loc_8c0fb77c:
	#data 0x0084
loc_8c0fb77e:
	#data 0x01D0
	#align4

loc_8C0FB780:
	#data 0x8C28C854
loc_8C0FB784:
	#data bank16.loc_8c1639D8
loc_8C0FB788:
	#data bank16.loc_8c163A98
loc_8C0FB78C:
	#data bank16.loc_8c163B58
loc_8C0FB790:
	#data bank16.loc_8c163C24
loc_8C0FB794:
	#data 0x8C26A92c
loc_8C0FB798:
	#data bank16.loc_8c163930
loc_8C0FB79c:
	#data 0xFFFF0000
loc_8C0FB7a0:
	#data 0x8C26A960
loc_8C0FB7a4:
	#data 0x8C26A961
loc_8C0FB7A8:
	#data bank16.loc_8c163B28
loc_8C0FB7AC:
	#data bank16.loc_8c163BF4

;==============================================
loc_8C0FB7B0:
	mov 0xFF,r3
	mov r13,r6
	mov r3,r2
	mov.l r3,@r4
	mov.l r3,@(0x4,r5)
	add 0x24,r6
	mov.l @(0x104,PC),r3
	mov r13,r4
	mov.b r12,@r7
	mov.l r14,@r3

loc_8C0FB7C4:
	mov.l @r4+,r5
	mov.w @(0xF2,PC),r0
	cmp/hs r6,r4
	bf.s loc_8c0fb7c4
	mov.b r14,@(r0,r5)
	mov r13,r2
	mov r13,r3
	add 0x48,r3
	mov r14,r9
	add 0x34,r2
	mov.l r2,@r15
	mov.l r3,@(0x4,r15)

loc_8C0FB7DC:
	mov.l @r15,r4
	mov.w @(0xDA,PC),r0
	add 0x04,r4
	mov.l r4,@r15
	add 0xFC,r4
	mov.l @r4,r4
	mov.b r14,@r4
	mov.b r14,@(r0,r4)
	bsr loc_8c0fafac
	mov r9,r5
	mov.l @r15,r3
	mov.l @(0x4,r15),r2
	cmp/hs r2,r3
	bf.s loc_8c0fb7dc
	add 0x01,r9
	mov.w @(0xC2,PC),r6
	mov.w @(0xBE,PC),r5
	add r13,r6
	add r13,r5

loc_8C0FB802:
	mov.l @r5+,r4
	mov.w @(0xB4,PC),r0
	cmp/hs r6,r5
	bf.s loc_8c0fb802
	mov.b r12,@(r0,r4)
	bra loc_8c0fb8b2
	nop 

loc_8C0FB810:
	mov.l r6,@r4
	mov.l r6,@(0x4,r5)
	mov.l @(0xB0,PC),r5
	mov.b r14,@r7
	bsr loc_8c0fab92
	mov 0x05,r4
	mov.l @(0xAC,PC),r5
	bsr loc_8c0fab92
	mov 0x06,r4
	mov.l @(0xAC,PC),r5
	bsr loc_8c0fab92
	mov 0x07,r4
	mov.l @(0xA8,PC),r5
	bsr loc_8c0fab92
	mov 0x08,r4
	mov r14,r4

loc_8C0FB830:
	mov r4,r0
	nop 
	shll2 r0
	mov.l @(r0,r13),r5
	add 0x01,r4
	mov.w @(0x7E,PC),r0
	cmp/ge r9,r4
	bf.s loc_8c0fb830
	mov.b r12,@(r0,r5)
	mov r13,r6
	shll2 r4
	add 0x48,r6
	add r13,r4
	cmp/hs r6,r4
	bt loc_8c0fb858

loc_8C0FB84E:
	mov.l @r4+,r5
	cmp/hs r6,r4
	mov.b r14,@r5
	bf.s loc_8c0fb84e
	mov.b r14,@(r0,r5)

loc_8C0FB858:
	mov r13,r6
	mov r13,r4
	add 0x60,r6
	add 0x50,r4

loc_8C0FB860:
	mov.l @r4+,r5
	cmp/hs r6,r4
	bf.s loc_8c0fb860
	mov.b r12,@(r0,r5)
	mov.w @(0x54,PC),r6
	mov.w @(0x50,PC),r5
	add r13,r6
	add r13,r5

loc_8C0FB870:
	mov.l @r5+,r4
	cmp/hs r6,r5
	mov.b r14,@(r0,r4)
	bf.s loc_8c0fb870
	mov.b r14,@r4
	bra loc_8c0fb8b2
	nop 

loc_8C0FB87E:
	mov.l @r15,r3
	mov 0x64,r0
	mov.l @(0xC,r3),r4
	fmov fr4,@(r0,r4)
	mov 0x20,r0
	bra loc_8c0fb8b2
	mov.b r12,@(r0,r4)
 
loc_8C0FB88C:
	mov.l @r15,r2
	mov 0x64,r0
	mov 0x02,r5
	mov.l @(0x10,r2),r4
	fmov fr4,@(r0,r4)
	mov 0x20,r0
	mov.b r12,@(r0,r4)
	mov 0x25,r0
	mov.l @r13,r4
	mov.b r5,@(r0,r4)
	mov.l @(0x8,r13),r4
	bra loc_8c0fb8b2
	mov.b r5,@(r0,r4)

loc_8C0FB8A6:
	mov 0xFF,r4
	mov 0x05,r5
	mov 0x01,r6

loc_8C0FB8AC:
	mov.l @(0x28,PC),r2
	jsr @r2
	nop 

loc_8C0FB8B2:
	mov.l @(0x28,PC),r9
	mov 0x50,r13
	mov 0x5A,r12
	bra loc_8c0fb90c
	mov 0x1C,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0fb8bc:
	#data 0x012c
loc_8c0fb8be:
	#data 0x008c
loc_8c0fb8c0:
	#data 0x0098
	#align4

loc_8C0FB8C4:
	#data 0x8C28C858
loc_8C0FB8C8:
	#data bank16.loc_8c1639D8
loc_8C0FB8CC:
	#data bank16.loc_8c163A98
loc_8C0FB8D0:
	#data bank16.loc_8c163B58
loc_8C0FB8D4:
	#data bank16.loc_8c163C24
loc_8C0FB8D8:
	#data bank03.loc_8c0355B2
loc_8C0FB8DC:
	#data bank16.loc_8c1642D0

;==============================================
loc_8C0FB8E0:
	bsr loc_8c0fb29a
	mov.l @r11,r4
	mov.l @r11,r3
	cmp/ge r10,r3
	bf.s loc_8c0fb8fa
	mov r0,r4
	mov.l @r11,r2
	mov 0x0B,r1
	cmp/gt r1,r2
	bt loc_8c0fb8fa
	mov r13,r0
	nop 
	mov.w r0,@(0x1E,r4)

loc_8C0FB8FA:
	mov.l @r11,r0
	cmp/eq 0x0C,r0
	bf loc_8c0fb906
	mov r12,r0
	nop 
	mov.w r0,@(0x1E,r4)

loc_8C0FB906:
	mov.l @r11,r3
	add 0x01,r3
	mov.l r3,@r11

loc_8C0FB90C:
	mov.l @r11,r2
	mul.l r14,r2
	sts macl,r2
	add r9,r2
	mov.w @r2,r3
	mov.l @r8,r2
	mov.w @(0xA,r2),r0
	cmp/eq r0,r3
	bt loc_8c0fb8e0
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

;=============================================
loc_8C0FB932:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xA8,r15
	mov.w @(0x6A,PC),r0
	mov r4,r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0fb99e
	mov.l @(0x68,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.w @(0x5C,PC),r0
	mov.l @(0x64,PC),r3
	fmov @(r0,r14),fr6
	mov 0x7C,r0
	fmov @(r0,r14),fr5
	mov 0x78,r0
	jsr @r3
	fmov @(r0,r14),fr4
	mov.l @(0x58,PC),r2
	mov r14,r4
	jsr @r2
	add 0x34,r4
	mov.l @(0x54,PC),r3
	mov 0x48,r0
	jsr @r3
	mov.l @(r0,r14),r4
	mov.l @(0x50,PC),r3
	mov 0x44,r0
	jsr @r3
	mov.l @(r0,r14),r4
	mov.l @(0x4C,PC),r2
	mov r14,r4
	jsr @r2
	add 0x50,r4
	mov.l @(0x48,PC),r3
	mov r14,r4
	jsr @r3
	add 0x50,r4
	lds r0,fpul
	mov.l @(0x44,PC),r3
	float fpul,fr3
	jsr @r3
	fmov fr3,fr4
	mov.l @(0x40,PC),r3
	mov.w @(0x1A,PC),r0
	jsr @r3
	mov.l @(r0,r14),r4
	mov 0x01,r4
	add 0x58,r15
	lds.l @r15+,pr
	mov.l @(0x34,PC),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C0FB99E:
	add 0x58,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0fb9a6:
	#data 0x012C
loc_8c0fb9a8:
	#data 0x0080
loc_8c0fb9aa:
	#data 0x0084
	#align4

loc_8C0FB9AC:
	#data bank12.loc_8c120950
loc_8C0FB9B0:
	#data bank12.loc_8c123780
loc_8C0FB9B4:
	#data bank12.loc_8c1210E0
loc_8C0FB9B8:
	#data bank12.loc_8c120D90
loc_8C0FB9BC:
	#data bank12.loc_8c120CD0
loc_8C0FB9C0:
	#data bank12.loc_8c120FF0
loc_8C0FB9C4:
	#data bank03.loc_8c0301B4
loc_8C0FB9C8:
	#data bank12.loc_8c122710
loc_8C0FB9CC:
	#data bank12.loc_8c1235E0
loc_8C0FB9D0:
	#data bank12.loc_8c120900

;==============================================
loc_8C0FB9D4:
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
	add 0xF0,r15
	mova @(0xE4,PC),r0
	mov.l @(0xF8,PC),r2
	fmov @r0,fr12
	mova @(0xE4,PC),r0
	fmov @r0,fr13
	mova @(0xE8,PC),r0
	fmov @r0,fr14
	mov.l @r2,r0
	mov.l @(0xD0,PC),r3
	mov.w @(0xA,r0),r0
	mov.l @(0xE4,PC),r11
	mov.l @(0xC4,PC),r13
	cmp/eq 0x00,r0
	mov.l @r3,r14
	mov.l @(0xCC,PC),r8
	mov.l @(0xD0,PC),r9
	mov.l @(0xB8,PC),r12
	fldi0 fr15
	bt.s loc_8c0fba48
	mov 0x00,r10
	mov.w @(0x9C,PC),r1
	cmp/eq r1,r0
	bt loc_8c0fba9c
	mov.w @(0x98,PC),r1
	cmp/eq r1,r0
	bt loc_8c0fbaf8
	mov.w @(0x94,PC),r1
	cmp/eq r1,r0
	bt loc_8c0fbaf8
	cmp/eq 0x6E,r0
	bt loc_8c0fbb0e
	mov.w @(0x8C,PC),r1
	cmp/eq r1,r0
	bt loc_8c0fbb0e
	mov.w @(0x88,PC),r1
	cmp/eq r1,r0
	bt loc_8c0fbb0e
	mov.w @(0x84,PC),r1
	cmp/eq r1,r0
	bt loc_8c0fbb0e
	mov.w @(0x80,PC),r1
	cmp/eq r1,r0
	bt loc_8c0fbb2a
	bra loc_8c0fbb7e
	nop 

loc_8C0FBA48:
	jsr @r11
	mov 0x03,r4
	jsr @r9
	nop 
	mov.w @(0x70,PC),r4
	fmov fr14,fr5
	fmov fr13,fr6
	jsr @r8
	fmov fr12,fr4
	jsr @r11
	mov 0x01,r4
	mov 0x04,r0
	mov.l @(0x90,PC),r3
	fmov fr15,@r12
	fmov fr15,@(r0,r12)
	mov 0x08,r0
	fmov fr15,@(r0,r12)
	mov 0x04,r0
	fmov fr15,@r13
	fmov fr15,@(r0,r13)
	mova @(0x7C,PC),r0
	fmov @r0,fr3
	mov 0x08,r0
	fmov fr3,@(r0,r13)
	mov 0x64,r0
	fmov fr15,@(r0,r14)
	mov 0x60,r0
	fmov fr15,@(r0,r14)
	mov 0x5C,r0
	fmov fr15,@(r0,r14)
	mov 0x58,r0
	fmov fr15,@(r0,r14)
	mov 0x54,r0
	fmov fr15,@(r0,r14)
	mov 0x50,r0
	fmov fr15,@(r0,r14)
	mov.w @(0x32,PC),r0
	mov.w r0,@(0x1C,r14)
	add 0xA0,r0
	mov.l r10,@(r0,r14)
	bra loc_8c0fbce2
	mov.l r10,@r3

loc_8C0FBA9C:
	jsr @r11
	mov 0x03,r4
	jsr @r9
	nop 
	mov.w @(0x1C,PC),r4
	fmov fr14,fr5
	fmov fr13,fr6
	jsr @r8
	fmov fr12,fr4
	jsr @r11
	mov 0x01,r4
	bra loc_8c0fbb0e
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0fbab6:
	#data 0x0346
loc_8c0fbab8:
	#data 0x0233
loc_8c0fbaba:
	#data 0x041A
loc_8c0fbabc:
	#data 0x01E3
loc_8c0fbabe:
	#data 0x03CA
loc_8c0fbac0:
	#data 0x05Bb
loc_8c0fbac2:
	#data 0x052F
loc_8c0fbac4:
	#data 0x4000
loc_8c0fbac6:
	#data 0x012C
	#align4

loc_8c0fbac8:
	#data 0x8C28C7F4
loc_8c0fbacc:
	#data 0x8C28C800
loc_8C0FBAD0:
	#data 0x8C28C7F0
loc_8C0FBAD4:
	#data 0x3FAAAAAb
loc_8C0FBAD8:
	#data bank12.loc_8c121730
loc_8C0FBADc:
	#data 0x463B8000
loc_8C0FBAE0:
	#data bank12.loc_8c121100
loc_8C0FBAe4:
	#data 0x3DCCCCCd
loc_8C0FBAE8:
	#data bank12.loc_8c1204F0
loc_8C0FBAec:
	#data 0x8C26823c
loc_8C0FBAf0:
	#data 0xC3160000
loc_8C0FBAf4:
	#data 0x8C28C850

;==============================================
loc_8C0FBAF8:
	jsr @r11
	mov 0x03,r4
	jsr @r9
	nop 
	mov.w @(0x14A,PC),r4
	fmov fr14,fr5
	fmov fr13,fr6
	jsr @r8
	fmov fr12,fr4
	jsr @r11
	mov 0x01,r4

loc_8C0FBB0E:
	mov.l @(0x14C,PC),r3
	mov.w @(0x13C,PC),r0
	mov.l r10,@(r0,r14)
	mov 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.l @r3,r2
	mov.l @(0x13C,PC),r0
	add 0x01,r2
	mov.l r2,@r3
	add 0xFF,r2
	shll2 r2
	mov.l @(r0,r2),r3
	bra loc_8c0fbb7e
	mov.l r3,@(0x10,r14)

loc_8C0FBB2A:
	jsr @r11
	mov 0x03,r4
	jsr @r9
	nop 
	mov.w @(0x11C,PC),r4
	fmov fr14,fr5
	fmov fr13,fr6
	jsr @r8
	fmov fr12,fr4
	jsr @r11
	mov 0x01,r4
	mova @(0x11C,PC),r0
	fmov fr15,@r12
	fmov @r0,fr4
	mov 0x04,r0
	fmov fr4,@(r0,r12)
	mova @(0x118,PC),r0
	fmov @r0,fr3
	mov 0x08,r0
	fmov fr3,@(r0,r12)
	mov 0x04,r0
	fmov fr15,@r13
	fmov fr4,@(r0,r13)
	mova @(0x10C,PC),r0
	fmov @r0,fr3
	mov 0x08,r0
	fmov fr3,@(r0,r13)
	mov 0x64,r0
	fmov fr15,@(r0,r14)
	mov 0x60,r0
	fmov fr15,@(r0,r14)
	mov 0x5C,r0
	fmov fr15,@(r0,r14)
	mov 0x58,r0
	fmov fr15,@(r0,r14)
	mov 0x54,r0
	fmov fr15,@(r0,r14)
	mov 0x50,r0
	fmov fr15,@(r0,r14)
	mov.w @(0xD8,PC),r0
	bra loc_8c0fbce2
	mov.w r0,@(0x1C,r14)

loc_8C0FBB7E:
	mova @(0xEC,PC),r0
	fmov @r0,fr14
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bt loc_8c0fbb92
	bra loc_8c0fbc94
	nop 

loc_8C0FBB92:
	mov.w @(0xBA,PC),r0
	mov 0x1C,r11
	mov.l @(0x10,r14),r4
	mov.l @(r0,r14),r10
	mul.l r11,r10
	sts macl,r11
	add r4,r11
	mov.w @(0x1C,r11),r0
	cmp/eq 0xFF,r0
	bt loc_8c0fbc78
	mov r11,r8
	add 0x1C,r8
	mov.w @r8,r0
	mov r8,r4
	mov.w @r11,r3
	mov r11,r5
	mov.l @(0xBC,PC),r2
	mov r15,r9
	sub r3,r0
	mov.w r0,@(0x1C,r14)
	add 0x04,r5
	mov.w @(0x1C,r14),r0
	add 0x04,r4
	add 0x04,r9
	mov.w r0,@r15
	mov.w @r15,r3
	lds r3,fpul
	float fpul,fr4
	jsr @r2
	mov.l r9,@-r15
	mov.l @(0xA4,PC),r3
	mov r14,r1
	mov r9,r2
	add 0x5C,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x1C,r14),r0
	mov r8,r4
	mov.l @(0x90,PC),r2
	mov r11,r5
	mov r0,r3
	lds r3,fpul
	add 0x10,r5
	add 0x10,r4
	float fpul,fr4
	jsr @r2
	mov.l r9,@-r15
	add 0x08,r15
	mov.l @(0x80,PC),r3
	mov r14,r1
	mov r9,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	tst r10,r10
	bf loc_8c0fbc44
	mov 0x04,r0
	fmov @(r0,r11),fr3
	mov 0x08,r0
	fmul fr14,fr3
	fmov fr3,@r12
	fmov @(r0,r11),fr3
	mov 0x04,r0
	fmul fr14,fr3
	fmov fr3,@(r0,r12)
	mov 0x0C,r0
	fmov @(r0,r11),fr3
	mov 0x08,r0
	fmul fr14,fr3
	fmov fr3,@(r0,r12)
	mov 0x10,r0
	fmov @(r0,r11),fr3
	mov 0x14,r0
	fmul fr14,fr3
	fmov fr3,@r13
	fmov @(r0,r11),fr3
	mov 0x04,r0
	fmul fr14,fr3
	fmov fr3,@(r0,r13)
	mov 0x18,r0
	fmov @(r0,r11),fr3
	mov 0x08,r0
	fmul fr14,fr3
	fmov fr3,@(r0,r13)
	mov.w @(0x12,PC),r0
	mov.l @(r0,r14),r3
	add 0x01,r3
	bra loc_8c0fbce2
	mov.l r3,@(r0,r14)

loc_8C0FBC44:
	mov.w @(0x8,PC),r0
	mov.l @(r0,r14),r2
	add 0x01,r2
	bra loc_8c0fbc94
	mov.l r2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0fbc4e:
	#data 0x0975
loc_8c0fbc50:
	#data 0x00cc
loc_8c0fbc52:
	#data 0x4000
loc_8c0fbc54:
	#data 0x012c
	#align4

loc_8C0FBC58:
#data bank16.loc_8c1638D4
loc_8C0FBC5C:
	#data 0x8C28C850
loc_8C0FBC60:
	#data 0xC1F00000
loc_8C0FBC64:
	#data 0xC2480000
loc_8C0FBC68:
	#data 0xC3160000
loc_8C0FBC6c:
	#data 0x41200000
loc_8C0FBC70:
	#data loc_8c0fA754
loc_8C0FBC74:
	#data bank12.loc_8c1294C8

;==============================================
loc_8C0FBC78:
	mov 0x64,r0
	fmov fr15,@(r0,r14)
	mov 0x60,r0
	fmov fr15,@(r0,r14)
	mov 0x5C,r0
	fmov fr15,@(r0,r14)
	mov 0x58,r0
	fmov fr15,@(r0,r14)
	mov 0x54,r0
	fmov fr15,@(r0,r14)
	mov 0x50,r0
	fmov fr15,@(r0,r14)
	mov.w @(0x10C,PC),r0
	mov.w r0,@(0x1C,r14)

loc_8C0FBC94:
	mov 0x5C,r0
	fmov @r12,fr2
	fmov @(r0,r14),fr3
	mov 0x60,r1
	fmov fr14,fr0
	add r14,r1
	fmac fr0,fr3,fr2
	mov 0x04,r0
	fmov fr2,@r12
	fmov @(r0,r12),fr2
	fmov @r1,fr3
	mov 0x64,r1
	add r14,r1
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r12)
	mov 0x08,r0
	fmov @(r0,r12),fr2
	fmov @r1,fr3
	mov 0x54,r1
	add r14,r1
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r12)
	mov 0x50,r0
	fmov @r13,fr2
	fmov @(r0,r14),fr3
	mov 0x04,r0
	fmac fr0,fr3,fr2
	fmov fr2,@r13
	fmov @(r0,r13),fr2
	fmov @r1,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r13)
	mov 0x58,r1
	add r14,r1
	mov 0x08,r0
	fmov @r1,fr3
	fmov @(r0,r13),fr2
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r13)

loc_8C0FBCE2:
	add 0x10,r15
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

;=============================================
loc_8C0FBCFE:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(0xA0,PC),r3
	jsr @r3
	nop 
	mov.l @(0x9C,PC),r2
	jsr @r2
	nop 
	mov.l @(0x9C,PC),r3
	jsr @r3
	nop 
	mov.l @(0x98,PC),r2
	jsr @r2
	nop 
	mov.l @(0x98,PC),r3
	jsr @r3
	nop 
	mova @(0x98,PC),r0
	mov.l @(0x94,PC),r4
	mov 0x0F,r3
	mov.l @(0x98,PC),r13
	mov 0x00,r2
	mov 0x0B,r5
	mov.b r2,@r4
	mov 0x01,r6
	mov.l r3,@(0x4,r4)
	fmov @r0,fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r4)
	mov.w @(0x62,PC),r0
	mov.b r0,@(0x9,r4)
	mov.b r0,@(0xA,r4)
	mov.b r0,@(0xB,r4)
	jsr @r13
	mov r2,r4
	mov.l @(0x80,PC),r4
	mov.w @(0x56,PC),r12
	mov.l @(0x78,PC),r3
	mov r4,r14
	add r4,r12
	mov.l r0,@r3
 
loc_8C0FBD54:
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r13
	mov 0x00,r4
	mov.l r0,@r14
	add 0x04,r14
	cmp/hs r12,r14
	bf loc_8c0fbd54
	mov.l @(0x68,PC),r3
	jsr @r3
	nop 
	mov.l @(0x68,PC),r2
	jsr @r2
	nop 
	mov.l @(0x64,PC),r3
	jsr @r3
	mov 0x0C,r4
	mov.l @(0x64,PC),r2
	jsr @r2
	mov 0x05,r4
	mov.l @(0x60,PC),r2
	mov 0x00,r0
	mov.l @r2,r3
	mov.w r0,@(0xA,r3)
	bsr loc_8c0fb9d4
	nop 
	bsr loc_8c0fb4b0
	nop 
	mov.l @(0x50,PC),r2
	mov.l @r2,r3
	mov.b @(0x2,r3),r0
	add 0x01,r0
	mov.b r0,@(0x2,r3)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;=============================================
loc_8c0fbda0:
	#data 0x00f0
loc_8c0fbda2:
	#data 0x00ff
loc_8c0fbda4:
	#data 0x00a0
	#align4

loc_8C0FBDA8:
	#data bank04.loc_8c044D8c
loc_8C0FBDAC:
	#data bank03.loc_8c0357D8
loc_8C0FBDB0:
	#data bank03.loc_8c03580c
loc_8C0FBDB4:
	#data bank03.loc_8c030F24
loc_8C0FBDB8:
	#data bank03.loc_8c030E30
loc_8C0FBDBC:
	#data 0x8C26A688
loc_8C0FBDc0:
	#data 0x44520000
loc_8C0FBDC4:
	#data bank04.loc_8c044F12
loc_8C0FBDc8:
	#data 0x8C28C7F0
loc_8C0FBDcc:
	#data 0x8C28C750
loc_8C0FBDD0:
	#data bank04.loc_8c041D84
loc_8C0FBDD4:
	#data bank04.loc_8c041C08
loc_8C0FBDD8:
	#data bank03.loc_8c032BE0
loc_8C0FBDDC:
	#data bank02.loc_8c027B64
loc_8C0FBDe0:
	#data 0x8C26823c

;==============================================
loc_8C0FBDE4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xE8,PC),r5
	mov.l @(0xF0,PC),r3
	mov.l @(0xE8,PC),r4
	mov.l @r5,r5
	jsr @r3
	mov.l @r4,r4
	mov.l @(0xE8,PC),r13
	mov.l @r13,r2
	mov.w @(0xA,r2),r0
	add 0x01,r0
	bsr loc_8c0fb9d4
	mov.w r0,@(0xA,r2)
	bsr loc_8c0fb4b0
	nop 
	mov.l @(0xDC,PC),r2
	mov.l @r2,r3
	mov.l r3,@r15
	mov.l @(0xDC,PC),r3
	jsr @r3
	mov 0x02,r4
	mov.l @(0xD8,PC),r2
	jsr @r2
	nop 
	mov.l @(0xE0,PC),r3
	mov.l @(0xD8,PC),r4
	mov.l @(0xD4,PC),r5
	jsr @r3
	mov 0x00,r6
	mov.l @(0xD8,PC),r2
	mov.w @(0xA0,PC),r3
	mov.l @r15,r4
	jsr @r2
	add r3,r4
	mov.l @(0xBC,PC),r3
	jsr @r3
	mov 0x01,r4
	mov.l @(0xB8,PC),r2
	jsr @r2
	nop 
	mov.l @(0xC8,PC),r3
	jsr @r3
	mov 0x00,r4
	mova @(0xC4,PC),r0
	mov.l @(0xCC,PC),r3
	fmov @r0,fr5
	mova @(0xC4,PC),r0
	jsr @r3
	fmov @r0,fr4
	mov.l @(0xB0,PC),r2
	mov.l @(0xC4,PC),r4
	jsr @r2
	nop 
	mov.l @(0xC0,PC),r3
	jsr @r3
	mov 0x01,r4
	mov.l @r13,r4
	mov.w @(0x6C,PC),r3
	mov.w @(0xA,r4),r0
	mov r0,r4
	cmp/ge r3,r4
	bf loc_8c0fbe70
	mov.w @(0x64,PC),r1
	cmp/ge r1,r4
	bf loc_8c0fbe7c

loc_8C0FBE70:
	mov.w @(0x60,PC),r3
	cmp/ge r3,r4
	bf loc_8c0fbe80
	mov.w @(0x5C,PC),r1
	cmp/ge r1,r4
	bt loc_8c0fbe80

loc_8C0FBE7C:
	bsr loc_8c0fafec
	nop 

loc_8C0FBE80:
	mov.w @(0x54,PC),r11
	mov.l @(0x9C,PC),r12
	add r12,r11
	mov r12,r14

loc_8C0FBE88:
	mov.l @r14+,r4
	tst r4,r4
	bt loc_8c0fbe9a
	mov.b @r4,r2
	tst r2,r2
	bt loc_8c0fbe9a
	mov.l @(0x8C,PC),r3
	jsr @r3
	nop 

loc_8C0FBE9A:
	cmp/hs r11,r14
	bf loc_8c0fbe88
	mov r12,r14
	mov r12,r4
	mov.w @(0x32,PC),r12
	add r4,r12

loc_8C0FBEA6:
	mov.l @r14+,r4
	tst r4,r4
	bt loc_8c0fbeb6
	mov.b @r4,r2
	tst r2,r2
	bt loc_8c0fbeb6
	bsr loc_8c0fb932
	nop 

loc_8C0FBEB6:
	cmp/hs r12,r14
	bf loc_8c0fbea6
	mov.l @r13,r4
	mov.w @(0x1A,PC),r3
	mov.w @(0xA,r4),r0
	cmp/gt r3,r0
	bf.s loc_8c0fbf30
	add 0x04,r15
	mov 0x00,r0
	mov.b r0,@(0x2,r4)
	bra loc_8c0fbf28
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0fbece:
	#data 0x0088
loc_8c0fbed0:
	#data 0x0233
loc_8c0fbed2:
	#data 0x0346
loc_8c0fbed4:
	#data 0x041a
loc_8c0fbed6:
	#data 0x052F
loc_8c0fbed8:
	#data 0x00A0
loc_8c0fbeda:
	#data 0x06BA
	#align4

loc_8C0FBEdc:
	#data 0x8C28C860
loc_8C0FBEE0:
	#data 0x8C28C85c
loc_8C0FBEE4:
	#data bank02.loc_8c02DC32
loc_8C0FBEE8:
	#data 0x8C26823c
loc_8C0FBEEC:
	#data 0x8C28C7F0
loc_8C0FBEF0:
	#data bank12.loc_8c1204F0
loc_8C0FBEF4:
	#data bank12.loc_8c121100
loc_8C0FBEF8:
	#data 0x8C28C800
loc_8C0FBEFc:
	#data 0x8C28C7F4
loc_8C0FBF00:
	#data bank11.loc_8c11FF90
loc_8C0FBF04:
	#data bank11.loc_8c11FA80
loc_8C0FBF08:
	#data bank12.loc_8c120950
loc_8C0FBF0c:
	#data 0x43F00000
loc_8C0FBF10:
	#data 0x44200000
loc_8C0FBF14:
	#data bank12.loc_8c1216C0
loc_8C0FBF18:
	#data 0x8C28C80c
loc_8C0FBF1C:
	#data bank12.loc_8c120900
loc_8C0FBF20:
	#data 0x8C28C750
loc_8C0FBF24:
	#data loc_8c0fABE8

;==============================================
loc_8C0FBF28:
	mov.l @r13,r2
	mov.b @(0x1,r2),r0
	add 0x01,r0
	mov.b r0,@(0x1,r2)

loc_8C0FBF30:
	lds.l @r15+,pr
	mov.l @(0x20,PC),r3
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0FBF3E:
	mov.l @(0x18,PC),r2
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.b @(0x2,r3),r0
	tst r0,r0
	bf loc_8c0fbf4e
	bsr loc_8c0fbcfe
	nop 


loc_8C0FBF4E:
	bra loc_8c0fbde4
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C0FBF54:
	#data bank03.loc_8c030E3a
loc_8C0FBF58:
	#data 0x8C26823c

;==============================================
loc_8C0FBF5C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	bsr loc_8C0FBF7c
	nop
	mov 0x00,r14 ; r14 set to 0x00
	mov 0x07,r13 ; r13 set to 0x07

loc_8C0FBF6A:
	bsr loc_8C0FC148
	mov r14,r4 ; r4 set to 0x00
	add 0x01,r14 ; r14 set to 0x01
	cmp/ge r13,r14
	bf loc_8C0FBF6a
	lds.l @r15+,pr
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	rts
	mov.l @r15+,r14

;=============================================
loc_8c0fbf7c:
	sts.l pr,@-r15
	mov.l @(loc_8c0fc020,pc),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c0fbffc
	mov r0,r4
	mov.w @(loc_8C0FC018,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C0FC028,pc),r1
	mov.l @(loc_8c0fc024,pc),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.w @(loc_8C0FC01A,pc),r0
	mov.l @r3,r2
	mov.l @(loc_8c0fc03c,pc),r5
	mov.l @r2,r3
	mov.w @(loc_8C0FC01C,pc),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov 0x20,r0
	mov 0x00,r3
	mov.l @(loc_8C0FC02C,pc),r6
	mov.b r3,@(r0,r4)
	mova @(loc_8C0FC030,pc),r0
	fmov.s @r5,fr3
	mov r4,r3
	fmov.s @r0,fr6
	mova @(loc_8C0FC034,pc),r0
	fmov.s @r0,fr5
	mova @(loc_8C0FC038,pc),r0
	fmul fr6,fr3
	fmov.s @r0,fr4
	add 0x40,r3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	mov 0x04,r0
	sts fpul,r2
	and r6,r2
	mov.l r2,@r3
	fmov.s @(r0,r5),fr3
	mov 0x44,r0
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r6,r3
	mov.l r3,@(r0,r4)
	mov 0x08,r0
	fmov.s @(r0,r5),fr3
	mov 0x48,r0
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r6,r3
	mov.l r3,@(r0,r4)

loc_8c0fbffc:
	lds.l @r15+,pr
	rts
	nop

loc_8C0FC002:
	mov.l r14,@-r15
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C0FC040
	cmp/eq 0x01,r0
	bf loc_8C0FC014
	bra loc_8C0FC144
	nop

loc_8C0FC014:
	bra loc_8C0FC144
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0fc018:
	#data 0x012c
loc_8c0fc01a:
	#data 0x0084
loc_8c0fc01c:
	#data 0x080e
	#align4

loc_8C0FC020:
	#data bank04.loc_8c044F12
loc_8C0FC024:
	#data loc_8c0fC002
loc_8c0fc028:
	#data 0x8C26A930
loc_8c0fc02c:
	#data 0x0000FFFf
loc_8c0fc030:
	#data 0x47800000
loc_8c0fc034:
	#data 0x43B40000
loc_8c0fc038:
	#data 0x3F000000
loc_8C0FC03C:
	#data bank13.loc_8c13c3F4

;==============================================
loc_8c0fc040:
	mov.w @(0x1E,r4),r0
	mov.l @(loc_8c0fc1a4,pc),r7
	mov r0,r6
	mov r0,r5
	add 0x01,r6
	mov r6,r0
	nop
	shll2 r0
	mov.l @(r0,r7),r14
	mov r5,r0
	nop
	shll2 r0
	mov.l @(loc_8c0fc1a8,pc),r2
	mov.l @(r0,r7),r3
	mov r5,r7
	shll r7
	sub r3,r14
	mov r5,r3
	mov r6,r5
	add r3,r7
	mov r6,r3
	shll r5
	add r3,r5
	lds r14,fpul
	shll2 r5
	mov.l @(loc_8C0FC1B4,pc),r6
	shll2 r7
	mov r4,r3
	add r2,r5
	add r2,r7
	fmov.s @r5,fr2
	fmov.s @r7,fr3
	mova @(loc_8C0FC1AC,pc),r0
	fmov.s @r0,fr6
	mova @(loc_8C0FC1B0,pc),r0
	fsub fr3,fr2
	fmov.s @r0,fr5
	float fpul,fr3
	mova @(loc_8C0FC1B8,pc),r0
	fmov.s @r0,fr4
	add 0x40,r3
	fdiv fr3,fr2
	fmov fr3,fr7
	fmul fr5,fr2
	mov.l @r3,r0
	fdiv fr6,fr2
	fadd fr4,fr2
	ftrc fr2,fpul
	sts fpul,r1
	and r6,r1
	add r1,r0
	mov.l r0,@r3
	mov 0x04,r0
	fmov.s @(r0,r5),fr2
	fmov.s @(r0,r7),fr3
	mov 0x44,r0
	mov.l @(r0,r4),r1
	fsub fr3,fr2
	fdiv fr7,fr2
	fmul fr5,fr2
	fdiv fr6,fr2
	fadd fr4,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r6,r3
	add r3,r1
	mov.l r1,@(r0,r4)
	mov 0x08,r0
	fmov.s @(r0,r5),fr2
	fmov.s @(r0,r7),fr3
	fsub fr3,fr2
	fdiv fr7,fr2
	fmul fr5,fr2
	fdiv fr6,fr2
	fadd fr4,fr2
	ftrc fr2,fpul
	mov 0x48,r0
	mov.l @(r0,r4),r1
	sts fpul,r3
	and r6,r3
	add r3,r1
	mov.l r1,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/ge r14,r0
	bf loc_8c0fc144
	mov 0x00,r0
	mov r4,r3
	mov.w r0,@(0x1C,r4)
	mov 0x04,r0
	fmov.s @r5,fr3
	add 0x40,r3
	fmul fr5,fr3
	fdiv fr6,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r1
	and r6,r1
	mov.l r1,@r3
	fmov.s @(r0,r5),fr3
	mov 0x44,r0
	fmul fr5,fr3
	fdiv fr6,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r6,r3
	mov.l r3,@(r0,r4)
	mov 0x08,r0
	fmov.s @(r0,r5),fr3
	mov 0x48,r0
	fmul fr5,fr3
	fdiv fr6,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r6,r3
	mov.l r3,@(r0,r4)
	mov.w @(0x1E,r4),r0
	mov 0x31,r3
	add 0x01,r0
	mov.w r0,@(0x1E,r4)
	exts.w r0,r0
	cmp/hs r3,r0
	bf loc_8c0fc144
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)

loc_8C0FC144:
	rts
	mov.l @r15+,r14

;=============================================
loc_8c0fc148:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c0fc1bc,pc),r3
	mov 0x05,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c0fc194
	mov r0,r4
	mov.w @(loc_8C0FC19C,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C0FC1C4,pc),r1
	mov.b r3,@(r0,r4)
	mov.l @(loc_8c0fc1c0,pc),r2
	mov.w @(loc_8C0FC19E,pc),r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.l @r15,r5
	add 0x34,r1
	mov.l @r3,r3
	shll2 r5
	add r5,r3
	mov.l @(0x04,r3),r2
	mov.w @(loc_8C0FC1A0,pc),r3
	mov.l r2,@(r0,r4)
	add 0x48,r0
	mov.l r3,@(r0,r4)
	mov 0x20,r0
	mov.l @r15,r2
	mov.l @(loc_8c0fc1cc,pc),r3
	mov.b r2,@(r0,r4)
	mov.l @(loc_8c0fc1c8,pc),r0
	mov.l @(r0,r5),r2
	jsr @r3
	mov 0x0C,r0

loc_8c0fc194:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;=============================================
loc_8C0FC19C:
	#data 0x012C
loc_8C0FC19E:
	#data 0x0084
loc_8C0FC1A0:
	#data 0x0801
	#align4

loc_8c0fc1a4:
	#data bank13.loc_8c13d66c
loc_8c0fc1a8:
	#data bank13.loc_8c13c3f4
loc_8c0fc1ac:
	#data 0x43b40000
loc_8c0fc1b0:
	#data 0x47800000
loc_8c0fc1b4:
	#data 0x0000ffff
loc_8c0fc1b8:
	#data 0x3f000000
loc_8c0fc1bc:
	#data bank04.loc_8c044f12
loc_8c0fc1c0:
	#data loc_8c0fc1d0
loc_8C0FC1C4:
	#data 0x8C26A930
loc_8c0fc1c8:
	#data bank16.loc_8c1649e8
loc_8c0fc1cc:
	#data bank12.loc_8c1294c8

;==============================================
loc_8C0FC1D0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C0FC1E6
	cmp/eq 0x01,r0
	bt loc_8C0FC29e
	bra loc_8C0FC29e
	nop

loc_8c0fc1e6:
	mov.w @(0x1E,r4),r0
	mov.l @(loc_8c0fc2b8,pc),r6
	mov r0,r7
	mov r0,r5
	add 0x01,r7
	mov r7,r0
	nop
	shll2 r0
	mov.l @(r0,r6),r14
	mov r5,r0
	nop
	shll2 r0
	mov.l @(r0,r6),r3
	mov 0x20,r0
	mov.b @(r0,r4),r6
	mov.l @(loc_8c0fc2bc,pc),r0
	sub r3,r14
	extu.b r6,r6
	mov r5,r3
	shll2 r6
	lds r14,fpul
	shll r5
	mov.l @(r0,r6),r6
	add r3,r5
	mov r7,r3
	shll2 r5
	mov.l r6,@r15
	add r5,r6
	mov r7,r5
	shll r5
	mov.l @r15,r2
	add r3,r5
	fmov.s @r6,fr3
	shll2 r5
	add r2,r5
	fmov.s @r5,fr2
	mov 0x34,r0
	fmov.s @(r0,r4),fr1
	fsub fr3,fr2
	float fpul,fr3
	fdiv fr3,fr2
	fmov fr3,fr4
	fadd fr2,fr1
	mov 0x04,r1
	fmov.s fr1,@(r0,r4)
	add r6,r1
	fmov.s @r1,fr3
	mov 0x04,r1
	add r5,r1
	fmov.s @r1,fr2
	mov 0x38,r0
	mov 0x08,r1
	fsub fr3,fr2
	fmov.s @(r0,r4),fr3
	add r6,r1
	fdiv fr4,fr2
	fadd fr2,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x3C,r0
	fmov.s @r1,fr3
	mov 0x08,r1
	add r5,r1
	fmov.s @r1,fr2
	fsub fr3,fr2
	fmov.s @(r0,r4),fr3
	fdiv fr4,fr2
	fadd fr2,fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/ge r14,r0
	bf loc_8c0fc29e
	mov r4,r1
	mov.l @(loc_8c0fc2c0,pc),r3
	mov 0x00,r0
	mov r5,r2
	mov.w r0,@(0x1C,r4)
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x1E,r4),r0
	mov 0x30,r3
	add 0x01,r0
	mov.w r0,@(0x1E,r4)
	exts.w r0,r0
	cmp/hs r3,r0
	bf loc_8c0fc29e
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)

loc_8c0fc29e:
	mov 0x20,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c0fc2ae
	mov.b @(0x05,r4),r0
	add 0x01,r0
	mov.b r0,@(0x05,r4)

loc_8c0fc2ae:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c0fc2b8:
	#data bank13.loc_8c13d66c
loc_8c0fc2bc:
	#data bank16.loc_8c1649e8
loc_8c0fc2c0:
	#data bank12.loc_8c1294c8

;==============================================
loc_8c0fc2c4:
	sts.l pr,@-r15
	mov.l @(0x3C,PC),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0fc2f2
	mov r0,r4
	mov.w @(0x22,PC),r0
	mov 0x01,r3
	mov.l @(0x30,PC),r1
	mov.l @(0x28,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.w @(0x16,PC),r0
	mov.l @r3,r2
	mov.l @(0x20,r2),r3
	mov.w @(0x12,PC),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)

loc_8c0fc2f2:
	lds.l @r15+,pr
	rts
	nop

loc_8C0FC2F8:
	rts
	nop


;=============================================
loc_8c0fc2fc:
	#data 0x012c
loc_8c0fc2fe:
	#data 0x0084
loc_8c0fc300:
	#data 0x0800
	#align4

loc_8C0FC304:
	#data bank04.loc_8c044F12
loc_8C0FC308:
	#data loc_8c0fC2F8
loc_8C0FC30C:
	#data 0x8C26A930

;==============================================
;unused?
loc_8C0FC310:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x5C,PC),r3
	mov 0x0B,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0fc34e
	mov r0,r4
	mov.w @(0x44,PC),r0
	mov 0x00,r5
	mov.l @(0x4C,PC),r2
	mov.b r5,@(r0,r4)
	mov 0x20,r0
	mov.l @r15,r3
	mov.b r3,@(r0,r4)
	mov.l @(0x44,PC),r3
	mov.l r2,@(0x10,r4)
	mov.l @r3,r0
	mov.l @r15,r2
	mov.l @r0,r0
	shll2 r2
	mov.l @(r0,r2),r2
	mov.w @(0x2A,PC),r0
	mov.l r2,@(r0,r4)
	add 0x48,r0
	mov.l r5,@(r0,r4)
	mov.w @(0x24,PC),r0
	mov.w r0,@(0x1C,r4)

loc_8c0fc34e:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;=============================================
loc_8C0FC356:
	mov.w @(0x1C,r4),r0
	tst r0,r0
	bt loc_8C0FC364
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	rts
	mov.w r0,@(0x1C,r4)

;=============================================
loc_8C0FC364:
	mov.w @(loc_8C0FC36E,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.b r3,@(r0,r4)
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0FC36E:
	#data 0x012c
loc_8C0FC370:
	#data 0x0084
loc_8C0FC372:
	#data 0x01E0
	#align4

loc_8C0FC374:
	#data bank04.loc_8c044F12
loc_8C0FC378:
	#data loc_8c0fC356
loc_8C0FC37c:
	#data 0x8C26A934

;==============================================
loc_8C0FC380:
	mova @(loc_8C0FC4A4,pc),r0  ; r0 init to 0x8C0FC4A4
	mov.l @(loc_8C0FC4A0,pc),r6 ; r6 set to 0x8C13D730
	fmov.s @r0,fr4
	mov.w @(0x1C,r4),r0
	mov r6,r5 ; r5 set to 0x8C13D730
	add 0x0C,r6 ; r6 set to 0x8C13D73c
	fmov.s @r5,fr5 ; r5 ??
	mov r0,r3 ; r3 set to 0x8C0FC4A4
	lds r3,fpul
	fmov.s @r6,fr3 ; r3 ??
	mov 0x34,r0 ; r0 set to 0x34
	float fpul,fr2
	fsub fr5,fr3
	fmul fr2,fr3
	fmov fr5,fr2
	fdiv fr4,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @(r0,r6),fr3
	fmov.s @(r0,r5),fr5
	mov.w @(0x1C,r4),r0
	fsub fr5,fr3
	mov r0,r3 ; r3 set to 0x04
	lds r3,fpul
	mov 0x38,r0 ; r0 set to 0x38
	float fpul,fr2
	fmul fr2,fr3 ; r3 ??? bc r2 is ???
	fmov fr5,fr2
	fdiv fr4,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s @(r0,r6),fr3
	fmov.s @(r0,r5),fr5
	mov.w @(0x1C,r4),r0
	fsub fr5,fr3
	mov r0,r3 ; r3 set to 0x08
	lds r3,fpul
	mov 0x3C,r0 ; r0 set to 0x3c
	float fpul,fr2
	fmul fr2,fr3 ; r3 ??? bc r2 is ???
	fmov fr5,fr2
	fdiv fr4,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C0FC4A8,pc),r0  ; r0 set to 0x8C0FC4A8
	fmov.s @r0,fr4
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r4),fr3
	fdiv fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r4),fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r4),fr3
	fdiv fr4,fr3
	rts
	fmov.s fr3,@(r0,r4)

;=============================================
loc_8C0FC3FA:
	sts.l pr,@-r15
	mov.l @(0xAC,PC),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0fc44e
	mov r0,r4
	mov.w @(0x88,PC),r0
	mov 0x01,r3
	mov.l @(0xA0,PC),r1
	mov.l @(0x9C,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(0x7A,PC),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(0x10,r2),r3
	mov.l @(0x78,PC),r2
	mov.l r3,@(r0,r4)
	mov.l @(0x8C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x6C,PC),r0
	mov 0x00,r5
	mov.w @(0x66,PC),r1
	mov.l r1,@(r0,r4)
	mov r5,r0
	nop 
	mov.w r0,@(0x1C,r4)
	mov.w r0,@(0x1E,r4)
	mova @(0x7C,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov fr4,@(r0,r4)
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	mov 0x58,r0
	fmov fr4,@(r0,r4)

loc_8C0FC44E:
	lds.l @r15+,pr
	rts
	nop

;=============================================
loc_8C0FC454:
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
	mov.l @(loc_8C0FC4C0,pc),r3 ; r3 set to 0x8C26823c
	mov.l @r3,r0
	mov.b @(0x02,r0),r0
	cmp/eq 0x05,r0
	bt/s loc_8C0FC484
	mov r4,r14
	mov.l @(loc_8C0FC4C4,pc),r1 ; r1 set to 0x8C0450C0
	jsr @r1
	mov r14,r4
	bra loc_8C0FC54e
	nop

loc_8C0FC484:
	mov.w @(0x1C,r14),r0
	cmp/eq 0x3C,r0
	bt loc_8C0FC4C8
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	bsr loc_8C0FC380
	mov r14,r4
	bra loc_8C0FC54e
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0fc498:
	#data 0x012c
loc_8c0fc49a:
	#data 0x0084
loc_8c0fc49c:
	#data 0x0811
loc_8c0fc49e:
	#data 0x00CC
	#align4
loc_8C0FC4A0:
	#data bank13.loc_8c13d730
loc_8C0FC4A4:
	#data 0x42700000
loc_8C0FC4A8:
	#data 0x41200000
loc_8C0FC4AC:
	#data bank04.loc_8c044F12
loc_8C0FC4B0:
	#data loc_8c0fC454
loc_8C0FC4B4:
	#data 0x8C26A938
loc_8C0FC4B8:
	#data bank12.loc_8c1294C8
loc_8C0FC4BC:
	#data 0x3DCCCCCd
loc_8C0FC4C0:
	#data 0x8C26823c
loc_8C0FC4C4:
	#data bank04.loc_8c0450C0

;==============================================
loc_8c0fc4c8:
	mov.w @(0x1E,r14),r0
	mov.w @(loc_8C0FC56A,pc),r3
	add 0x14,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c0fc4da
	mov 0x00,r0
	mov.w r0,@(0x1E,r14)

loc_8c0fc4da:
	mov.l @(loc_8C0FC570,pc),r3
	mov.w @(loc_8C0FC56C,pc),r0
	mov.l @r3,r4
	mov.l @(loc_8c0fc574,pc),r1
	mov.l @r4,r2
	mov.l @(r0,r14),r5
	jsr @r1
	mov.l @(0x14,r2),r4
	mova @(loc_8C0FC588,pc),r0
	mov.l @(loc_8C0FC594,pc),r12
	fmov.s @r0,fr12
	mova @(loc_8C0FC58C,pc),r0
	fmov.s @r0,fr13
	mova @(loc_8C0FC590,pc),r0
	mov.l @(loc_8c0fc57c,pc),r9
	mov 0x00,r13
	mov.l @(loc_8c0fc578,pc),r8
	mov.l @(loc_8c0fc584,pc),r11
	mov.l @(loc_8c0fc580,pc),r10
	bra loc_8c0fc546
	fmov.s @r0,fr14

loc_8c0fc504:
	jsr @r11
	mov r15,r4
	mov 0x04,r0
	fmov.s @(r0,r15),fr15
	fmov fr15,fr3
	fmul fr15,fr3
	fmov.s fr3,@-r15
	mov.w @(0x1E,r14),r0
	mov r0,r4
	add r13,r4
	lds r4,fpul
	float fpul,fr2
	fmov fr2,fr1
	fmul fr12,fr1
	fdiv fr13,fr1
	fmov fr1,fr2
	fadd fr14,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r10
	and r12,r4
	fmov.s @r15+,fr3
	mova @(loc_8C0FC598,pc),r0
	add 0x14,r13
	fmul fr0,fr3
	fmov.s @r0,fr0
	mov 0x08,r0
	fmov.s @(r0,r15),fr2
	mov 0x08,r0
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r15)
	jsr @r9
	mov r15,r4

loc_8c0fc546:
	jsr @r8
	nop
	tst r0,r0
	bt loc_8c0fc504

loc_8C0FC54E:
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

;=============================================
loc_8c0fc56a:
	#data 0x0168
loc_8c0fc56c:
	#data 0x0084
	#align4

loc_8c0fc570:
	#data 0x8C26A938
loc_8C0FC574:
	#data bank10.loc_8c108060
loc_8C0FC578:
	#data bank10.loc_8c108086
loc_8C0FC57C:
	#data bank10.loc_8c1081B4
loc_8C0FC580:
	#data bank11.loc_8c11E860
loc_8C0FC584:
	#data bank10.loc_8c108168
loc_8c0fc588:
	#data 0x47800000
loc_8c0fc58c:
	#data 0x43B40000
loc_8c0fc590:
	#data 0x3F000000
loc_8c0fc594:
	#data 0x0000FFFf
loc_8c0fc598:
	#data 0x3CA3D70a

;==============================================
loc_8C0FC59C:
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(loc_8C0FC628,pc),r2 ; r2 set to 0x8C13D748
	mov.b @(r0,r4),r1
	mova @(loc_8C0FC62C,pc),r0  ; r0 set to 0x8C0FC62c
	fmov.s @r0,fr4
	extu.b r1,r1
	mov.w @(0x1C,r4),r0
	shll r1
	mov r1,r3
	shll r1
	add r3,r1
	mov r0,r3 ; r3 set to 0x8C0FC62c
	shll2 r1
	lds r3,fpul
	add r2,r1
	mov r1,r5
	add 0x0C,r5
	fmov.s @r1,fr5
	float fpul,fr2
	fmov.s @r5,fr3 ; r3 ??? bc r5 is ???
	mov 0x34,r0 ; r0 set to 0x34
	fsub fr5,fr3
	fmul fr2,fr3
	fmov fr5,fr2 ; r2 ??? bc r5 is ???
	fdiv fr4,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @(r0,r5),fr3
	fmov.s @(r0,r1),fr5
	mov.w @(0x1C,r4),r0
	fsub fr5,fr3
	mov r0,r3 ; r3 set to 0x04
	lds r3,fpul
	mov 0x38,r0 ; r0 set to 0x38
	float fpul,fr2
	fmul fr2,fr3 ; r3 ??? bc r2 is ???
	fmov fr5,fr2
	fdiv fr4,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s @(r0,r5),fr3
	fmov.s @(r0,r1),fr5
	mov.w @(0x1C,r4),r0
	fsub fr5,fr3
	mov r0,r3 ; r3 set to 0x08
	lds r3,fpul
	mov 0x3C,r0 ; r0 set to 0x3c
	float fpul,fr2
	fmul fr2,fr3 ; r3 ??? bc r2 is ???
	fmov fr5,fr2
	fdiv fr4,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C0FC630,pc),r0  ; r0 set to 0x8C0FC630
	fmov.s @r0,fr4
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r4),fr3
	fdiv fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r4),fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r4),fr3
	fdiv fr4,fr3
	rts
	fmov.s fr3,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C0FC628:
	#data bank13.loc_8c13d748
loc_8C0FC62C:
	#data 0x42B40000
loc_8C0FC630:
	#data 0x41200000

;==============================================
loc_8C0FC634:
	mov.l r14,@-r15
	mov 0x0B,r5 ; r5 set to 0x0b
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	mov.l @(loc_8C0FC770,pc),r3 ; r3 set to 0x8C044F12
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C0FC724
	mov r0,r14
	mov.w @(loc_8C0FC766,pc),r0 ; r0 set to 0x12c
	mov 0x01,r6 ; r6 set to 0x01
	mov 0x07,r3 ; r3 set to 0x07
	mov.l @(loc_8C0FC77C,pc),r1 ; r1 set to 0x8C26A938
	mov.b r6,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	cmp/ge r3,r13
	mov.l @(loc_8C0FC774,pc),r3 ; r3 set to 0x8C0FC72c
	mov.b r13,@(r0,r14)
	mov 0x22,r2 ; r2 set to 0x22
	mov.l @(loc_8C0FC778,pc),r0 ; r0 set to 0x8C13D8B0
	add r14,r2 ; r2 ??? bc r14 is ???
	mov.l r3,@(0x10,r14)
	movt r7
	mov.b @(r0,r13),r3 ; r3 ??? bc r13 is ???
	mov.b r3,@r2
	mov 0x22,r3 ; r3 set to 0x22
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l @r1,r0 ; r0 ??
	mov.b @r3,r3
	mov.l @r0,r0
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	mov.w @(loc_8C0FC768,pc),r0 ; r0 set to 0x84
	mov.l r2,@(r0,r14)
	mov r13,r2
	shll r2
	mov r2,r3
	shll r2
	add r3,r2
	shll2 r2
	mov.l @(loc_8C0FC780,pc),r3 ; r3 set to 0x8C13D748
	mov r14,r1 ; r1 ??? bc r14 is ???
	add 0x34,r1
	add r3,r2
	mov.l @(loc_8C0FC784,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov r7,r4 ; r4 ??? bc r7 is ???
	mova @(loc_8C0FC788,pc),r0  ; r0 set to 0x8C0FC788
	shll r4
	fmov.s @r0,fr6 ; r6 ??
	mov r7,r2
	add r2,r4
	mova @(loc_8C0FC78C,pc),r0  ; r0 set to 0x8C0FC78c
	mov.l @(loc_8C0FC798,pc),r1 ; r1 set to 0x8C13D898
	fmov.s @r0,fr5 ; r5 ??
	shll2 r4
	add r1,r4
	mov.l @(loc_8C0FC790,pc),r5 ; r5 set to 0xFFFf
	mova @(loc_8C0FC794,pc),r0  ; r0 set to 0x8C0FC794
	fmov.s @r4,fr3 ; r3 ??? bc r4 is ???
	fmov.s @r0,fr4
	mov 0x04,r0 ; r0 set to 0x04
	mov r14,r3
	add 0x40,r3
	fmul fr4,fr3
	fdiv fr6,fr3
	fadd fr5,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r5,r2
	mov.l r2,@r3
	fmov.s @(r0,r4),fr3
	fmul fr4,fr3
	fdiv fr6,fr3
	fadd fr5,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r5,r3
	mov 0x44,r0 ; r0 set to 0x44
	mov.w @(loc_8C0FC76A,pc),r2 ; r2 set to 0x813
	mov.l r3,@(r0,r14)
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s @(r0,r4),fr3
	mov 0x48,r0 ; r0 set to 0x48
	mov 0x00,r4 ; r4 set to 0x00
	fmul fr4,fr3
	fdiv fr6,fr3
	fadd fr5,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r5,r3
	mov.l r3,@(r0,r14)
	mov.w @(loc_8C0FC76C,pc),r0 ; r0 set to 0xCc
	mov.l r2,@(r0,r14)
	mov r4,r0 ; r0 set to 0x00
	nop
	mov.w r0,@(0x1C,r14)
	cmp/gt r6,r13
	mov.w r0,@(0x1E,r14)
	mova @(loc_8C0FC79C,pc),r0  ; r0 set to 0x8C0FC79c
	fmov.s @r0,fr4 ; r4 ??
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s fr4,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr4,@(r0,r14)
	mov 0x58,r0 ; r0 set to 0x58
	bt/s loc_8C0FC724
	fmov.s fr4,@(r0,r14)
	lds.l @r15+,pr
	mov.w @(loc_8C0FC768,pc),r0 ; r0 set to 0x84
	mov.l @(loc_8C0FC7A0,pc),r3 ; r3 set to 0x8C108210
	mov.l @r15+,r13
	mov.l @(r0,r14),r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0FC724:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0FC72C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8C0FC7A4,pc),r3 ; r3 set to 0x8C26823c
	mov.l @r3,r0
	mov.b @(0x02,r0),r0
	cmp/eq 0x05,r0
	bt/s loc_8C0FC752
	mov r4,r14
	mov.l @(loc_8C0FC7A8,pc),r1 ; r1 set to 0x8C0450C0
	jsr @r1
	mov r14,r4
	bra loc_8C0FC81e
	nop

loc_8C0FC752:
	mov.w @(0x1C,r14),r0
	cmp/eq 0x5A,r0
	bt loc_8C0FC7Ac
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	bsr loc_8C0FC59c
	mov r14,r4
	bra loc_8C0FC81e
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0FC766:
	#data 0x012c
loc_8C0FC768:
	#data 0x0084
loc_8C0FC76A:
	#data 0x0813
loc_8C0FC76C:
	#data 0x00Cc
	#align4

loc_8C0FC770:
	#data bank04.loc_8c044F12
loc_8C0FC774:
	#data loc_8c0fC72c
loc_8C0FC778:
	#data bank13.loc_8c13d8B0
loc_8C0FC77C:
	#data 0x8C26A938
loc_8C0FC780:
	#data bank13.loc_8c13d748
loc_8C0FC784:
	#data bank12.loc_8c1294C8
loc_8C0FC788:
	#data 0x43B40000
loc_8C0FC78C:
	#data 0x3F000000
loc_8C0FC790:
	#data 0x0000FFFf
loc_8C0FC794:
	#data 0x47800000
loc_8C0FC798:
	#data bank13.loc_8c13d898
loc_8C0FC79C:
	#data 0x3DCCCCCd
loc_8C0FC7A0:
	#data bank10.loc_8c108210
loc_8C0FC7A4:
	#data 0x8C26823c
loc_8C0FC7A8:
	#data bank04.loc_8c0450C0

;==============================================
loc_8c0fc7ac:
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov 0x01,r3
	extu.b r2,r2
	cmp/gt r3,r2
	bt loc_8c0fc81e
	mov.w @(0x1E,r14),r0
	mov.w @(loc_8C0FC830,pc),r3
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c0fc7ca
	mov 0x00,r0
	mov.w r0,@(0x1E,r14)

loc_8c0fc7ca:
	mov.w @(loc_8C0FC832,pc),r0
	mov.l @(loc_8C0FC834,pc),r3
	mov.l @(r0,r14),r5
	mov 0x22,r0
	mov.b @(r0,r14),r2
	mov.l @r3,r4
	extu.b r2,r2
	mov.l @r4,r4
	shll2 r2
	add r2,r4
	mov.l @(loc_8c0fc838,pc),r2
	jsr @r2
	mov.l @(0x04,r4),r4
	mova @(loc_8C0FC848,pc),r0
	mov.l @(loc_8c0fc844,pc),r13
	fmov.s @r0,fr14
	mov.l @(loc_8c0fc83c,pc),r11
	mov.l @(loc_8c0fc840,pc),r12
	bra loc_8c0fc816
	fldi1 fr15

loc_8c0fc7f2:
	mov r15,r4
	mov r15,r5
	jsr @r13
	add 0x04,r4
	mov.w @(0x1E,r14),r0
	mov r15,r4
	fmov.s @r15,fr2
	mov r15,r5
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr14,fr3
	fneg fr3
	fadd fr15,fr3
	fadd fr3,fr2
	fmov.s fr2,@r15
	jsr @r12
	add 0x04,r4

loc_8c0fc816:
	jsr @r11
	nop
	tst r0,r0
	bt loc_8c0fc7f2

loc_8C0FC81E:
	add 0x08,r15
	lds.l @r15+,pr
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0fc830:
	#data 0x00C8
loc_8c0fc832:
	#data 0x0084
	#align4

loc_8c0fc834:
	#data 0x8C26A938
loc_8C0FC838:
	#data bank10.loc_8c108060
loc_8C0FC83C:
	#data bank10.loc_8c108086
loc_8C0FC840:
	#data bank10.loc_8c1081E6
loc_8C0FC844:
	#data bank10.loc_8c108192
loc_8c0fc848:
	#data 0x3BA3D70a

;==============================================
loc_8C0FC84C:
	mova @(0x160,PC),r0
	mov.l @(0x15C,PC),r6
	fmov @r0,fr4
	mov.w @(0x1C,r4),r0
	mov r6,r5
	add 0x0C,r6
	fmov @r5,fr5
	mov r0,r3
	lds r3,fpul
	fmov @r6,fr3
	mov 0x34,r0
	float fpul,fr2
	fsub fr5,fr3
	fmul fr2,fr3
	fmov fr5,fr2
	fdiv fr4,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x04,r0
	fmov @(r0,r6),fr3
	fmov @(r0,r5),fr5
	mov.w @(0x1C,r4),r0
	fsub fr5,fr3
	mov r0,r3
	lds r3,fpul
	mov 0x38,r0
	float fpul,fr2
	fmul fr2,fr3
	fmov fr5,fr2
	fdiv fr4,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x08,r0
	fmov @(r0,r6),fr3
	fmov @(r0,r5),fr5
	mov.w @(0x1C,r4),r0
	fsub fr5,fr3
	mov r0,r3
	lds r3,fpul
	mov 0x3C,r0
	float fpul,fr2
	fmul fr2,fr3
	fmov fr5,fr2
	fdiv fr4,fr3
	fadd fr3,fr2
	rts 
	fmov fr2,@(r0,r4)

;=============================================
loc_8C0FC8AA:
	mov.l r14,@-r15
	mov 0x0B,r5 ; r5 set to 0x0b
	sts.l pr,@-r15
	mov.l @(loc_8C0FC9B4,pc),r3 ; r3 set to 0x8C044F12
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C0FC944
	mov r0,r14
	mov.w @(loc_8C0FC9A2,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8C0FC9BC,pc),r1 ; r1 set to 0x8C26A938
	mov.l @(loc_8C0FC9B8,pc),r2 ; r2 set to 0x8C0FC94a
	mov.b r3,@(r0,r14)
	mov.l r2,@(0x10,r14)
	mov.l @r1,r3 ; r3 ??
	mov r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C0FC9A4,pc),r0 ; r0 set to 0x84
	add 0x34,r1
	mov.l @r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(0x18,r2),r3
	mov.l @(loc_8C0FC9AC,pc),r2 ; r2 set to 0x8C13D8C0
	mov.l r3,@(r0,r14)
	mov.l @(loc_8C0FC9C0,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(loc_8C0FC9D4,pc),r4 ; r4 set to 0x8C13D8D8
	mova @(loc_8C0FC9C4,pc),r0  ; r0 set to 0x8C0FC9C4
	fmov.s @r0,fr6 ; r6 ??
	mova @(loc_8C0FC9C8,pc),r0  ; r0 set to 0x8C0FC9C8
	fmov.s @r4,fr3 ; r3 ??
	mov r14,r3
	fmov.s @r0,fr5 ; r5 ??
	mova @(loc_8C0FC9CC,pc),r0  ; r0 set to 0x8C0FC9Cc
	fmul fr6,fr3
	fmov.s @r0,fr4 ; r4 ??
	mov 0x04,r0 ; r0 set to 0x04
	mov.l @(loc_8C0FC9D0,pc),r5 ; r5 set to 0xFFFf
	add 0x40,r3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r5,r2 ; r2 ??
	mov.l r2,@r3
	fmov.s @(r0,r4),fr3
	mov 0x44,r0 ; r0 set to 0x44
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r5,r3
	mov.l r3,@(r0,r14)
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s @(r0,r4),fr3
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	mov 0x48,r0 ; r0 set to 0x48
	mov.w @(loc_8C0FC9A6,pc),r2 ; r2 set to 0x80f
	ftrc fr3,fpul
	sts fpul,r3
	and r5,r3
	mov.l r3,@(r0,r14)
	mov.w @(loc_8C0FC9A8,pc),r0 ; r0 set to 0xCc
	mov.l @(loc_8C0FC9D8,pc),r3 ; r3 set to 0x8C108210
	mov.l r2,@(r0,r14)
	mov 0x00,r0 ; r0 set to 0x00
	mov.w r0,@(0x1C,r14)
	mov.w r0,@(0x1E,r14)
	mov.w @(loc_8C0FC9A4,pc),r0 ; r0 set to 0x84
	lds.l @r15+,pr
	mov.l @(r0,r14),r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0FC944:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0FC94A:
	mov.l @(loc_8C0FC9DC,pc),r3 ; r3 set to 0x8C26823c
	mov.l r14,@-r15
	mov.l @r3,r0
	mov.b @(0x02,r0),r0
	cmp/eq 0x03,r0
	bt/s loc_8C0FC960
	mov r4,r14
	mov.l @(loc_8C0FC9E0,pc),r1 ; r1 set to 0x8C0450C0
	mov r14,r4
	jmp @r1
	mov.l @r15+,r14

loc_8C0FC960:
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov.l @(loc_8C0FC9E4,pc),r1 ; r1 set to 0x8C164A04
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0FC970:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	bsr loc_8c0fc84c
	mov r14,r4
	mov.w @(0x1C,r14),r0
	cmp/eq 0x1E,r0
	bf loc_8c0fc99c
	mov.b @(0x4,r14),r0
	mov r14,r1
	mov.l @(0x5C,PC),r2
	add 0x34,r1
	add 0x01,r0
	mov.l @(0x2C,PC),r3
	mov.b r0,@(0x4,r14)
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov 0x0C,r0

loc_8C0FC99C:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0FC9A2:
	#data 0x012c
loc_8C0FC9A4:
	#data 0x0084
loc_8C0FC9A6:
	#data 0x080f
loc_8C0FC9A8:
	#data 0x00Cc
	#align4

loc_8C0FC9AC:
	#data bank13.loc_8c13d8C0
loc_8C0FC9B0:
	#data 0x41F00000
loc_8C0FC9B4:
	#data bank04.loc_8c044F12
loc_8C0FC9B8:
	#data loc_8c0fC94a
loc_8C0FC9BC:
	#data 0x8C26A938
loc_8C0FC9C0:
	#data bank12.loc_8c1294C8
loc_8C0FC9C4:
	#data 0x47800000
loc_8C0FC9C8:
	#data 0x43B40000
loc_8C0FC9CC:
	#data 0x3F000000
loc_8C0FC9D0:
	#data 0x0000FFFf
loc_8C0FC9D4:
	#data bank13.loc_8c13d8D8
loc_8C0FC9D8:
	#data bank10.loc_8c108210
loc_8C0FC9DC:
	#data 0x8C26823c
loc_8C0FC9E0:
	#data bank04.loc_8c0450C0
loc_8C0FC9E4:
	#data bank16.loc_8c164A04
loc_8C0FC9E8:
	#data bank13.loc_8c13d8Cc

;==============================================
loc_8C0FC9EC:
	sts.l pr,@-r15
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mova @(0xC0,PC),r0
	fmov @r0,fr4
	mov.w @(0x1C,r4),r0
	tst 0x01,r0
	bt loc_8c0fca02
	mova @(0xBC,PC),r0
	fmov @r0,fr4

loc_8C0FCA02:
	mov.l @(0xBC,PC),r5
	mov 0x10,r0
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	cmp/eq 0x14,r0
	bf loc_8c0fca2c
	mov.b @(0x4,r4),r0
	mov r4,r1
	mov r5,r2
	mov.l @(0xA8,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x00,r0
	add 0x0C,r2
	mov.w r0,@(0x1C,r4)
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0

loc_8C0FCA2C:
	lds.l @r15+,pr
	rts 
	nop 

;=============================================
loc_8C0FCA32:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.w @(0x1E,r14),r0
	mov.w @(0x68,PC),r3
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c0fca56
	mov 0x00,r0
	mov.w r0,@(0x1E,r14)

loc_8C0FCA56:
	mov.l @(0x70,PC),r3
	mov.w @(0x58,PC),r0
	mov.l @r3,r4
	mov.l @(0x6C,PC),r1
	mov.l @r4,r2
	mov.l @(r0,r14),r5
	jsr @r1
	mov.l @(0x1C,r2),r4
	mova @(0x74,PC),r0
	mov.l @(0x6C,PC),r13
	fmov @r0,fr14
	mov.l @(0x60,PC),r11
	mov.l @(0x64,PC),r12
	bra loc_8c0fca98
	fldi1 fr15

loc_8C0FCA74:
	mov r15,r5
	add 0x04,r5
	jsr @r13
	mov r15,r4
	mov.w @(0x1E,r14),r0
	mov r15,r5
	fmov @r15,fr2
	add 0x04,r5
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr14,fr3
	fneg fr3
	fadd fr15,fr3
	fadd fr3,fr2
	fmov fr2,@r15
	jsr @r11
	mov r15,r4

loc_8C0FCA98:
	jsr @r12
	nop 
	tst r0,r0
	bt loc_8c0fca74
	add 0x08,r15
	lds.l @r15+,pr
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0fcab2:
	#data 0x00c8
loc_8c0fcab4:
	#data 0x0084
	#align4

loc_8c0fcab8:
	#data 0x3D4CCCCd
loc_8c0fcabc:
	#data 0xBD4CCCCd
loc_8C0FCAC0:
	#data bank13.loc_8c13d8C0
loc_8C0FCAC4:
	#data bank12.loc_8c1294C8
loc_8C0FCAC8:
	#data 0x8C26A938
loc_8C0FCACC:
	#data bank10.loc_8c108060
loc_8C0FCAD0:
	#data bank10.loc_8c1081E6
loc_8C0FCAD4:
	#data bank10.loc_8c108086
loc_8C0FCAD8:
	#data bank10.loc_8c108192
loc_8C0FCADC:
	#data 0x3BA3D70a

;==============================================
loc_8C0FCAE0:
	mova @(0x168,PC),r0
	mov.l @(0x164,PC),r6
	fmov @r0,fr4
	mov.w @(0x1C,r4),r0
	mov r6,r5
	add 0x0C,r6
	fmov @r5,fr5
	mov r0,r3
	lds r3,fpul
	fmov @r6,fr3
	mov 0x34,r0
	float fpul,fr2
	fsub fr5,fr3
	fmul fr2,fr3
	fmov fr5,fr2
	fdiv fr4,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x04,r0
	fmov @(r0,r6),fr3
	fmov @(r0,r5),fr5
	mov.w @(0x1C,r4),r0
	fsub fr5,fr3
	mov r0,r3
	lds r3,fpul
	mov 0x38,r0
	float fpul,fr2
	fmul fr2,fr3
	fmov fr5,fr2
	fdiv fr4,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x08,r0
	fmov @(r0,r6),fr3
	fmov @(r0,r5),fr5
	mov.w @(0x1C,r4),r0
	fsub fr5,fr3
	mov r0,r3
	lds r3,fpul
	mov 0x3C,r0
	float fpul,fr2
	fmul fr2,fr3
	fmov fr5,fr2
	fdiv fr4,fr3
	fadd fr3,fr2
	rts 
	fmov fr2,@(r0,r4)

;=============================================
loc_8C0FCB3E:
	mov r4,r3
	mov.l @(0x10C,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;=============================================
loc_8C0FCB50:
	mov.b @(0x05,r4),r0
	mov.l @(loc_8C0FCC54,pc),r5 ; r5 set to 0x8C13D914
	add 0x01,r0
	mov.l @(loc_8C0FCC58,pc),r3 ; r3 set to 0x8C26823c
	mov.b r0,@(0x05,r4)
	mov.b @(0x06,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_8C0FCB6c
	mov.l @r3,r6
	cmp/eq 0x01,r0
	bt loc_8C0FCB76
	bra loc_8C0FCB80
	nop

loc_8C0FCB6C:
	mov.w @(0x0C,r6),r0
	shll2 r0
	add r0,r5
	bra loc_8C0FCB7e
	mov 0x19,r0

loc_8c0fcb76:
	mov.w @(0x0C,r6),r0
	shll2 r0
	add r0,r5
	mov 0x0A,r0

loc_8C0FCB7E:
	mov.w r0,@(0x1C,r4)

loc_8C0FCB80:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fmov.s @r5,fr2
	fmov.s @(r0,r4),fr3
	mov.w @(0x1C,r4),r0
	fsub fr3,fr2
	mov r0,r3 ; r3 set to 0x5C, r3 set to 0x5c
	lds r3,fpul
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	float fpul,fr3
	fdiv fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	fmov.s @r5,fr3 ; r3 ??? bc r5 is ???, r3 ??? bc r5 is ???
	fmov.s fr3,@(r0,r4)

loc_8C0FCB9C:
	mov.l r14,@-r15
	mova @(loc_8C0FCC5C,pc),r0  ; r0 set to 0x8C0FCC5C, r0 set to 0x8C0FCC5C, r0 init to 0x8C0FCC5c
	mov.l r8,@-r15
	mov r4,r14
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	fmov.s fr13,@-r15
	sts.l pr,@-r15
	fmov.s @r0,fr13
	mova @(loc_8C0FCC60,pc),r0  ; r0 set to 0x8C0FCC60, r0 set to 0x8C0FCC60, r0 set to 0x8C0FCC60
	fmov.s @r0,fr14
	mova @(loc_8C0FCC64,pc),r0  ; r0 set to 0x8C0FCC64, r0 set to 0x8C0FCC64, r0 set to 0x8C0FCC64
	fmov.s @r0,fr15
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bt loc_8C0FCBEc
	mov.w @(0x1C,r14),r0
	mov 0x68,r1 ; r1 set to 0x68, r1 set to 0x68, r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???
	mov r14,r3
	add 0xFF,r0 ; r0 set to 0x8C0FCC63, r0 set to 0x8C0FCC63, r0 set to 0x8C0FCC63
	mov.w r0,@(0x1C,r14)
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C, r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	add 0x40,r3
	fmov.s @r1,fr3
	mov.l @(loc_8C0FCC68,pc),r1 ; r1 set to 0xFFFF, r1 set to 0xFFFF, r1 set to 0xFFFf
	fadd fr3,fr2
	fmov fr2,fr3
	fmul fr13,fr3
	fmov.s fr2,@(r0,r14)
	mov 0x01,r0 ; r0 set to 0x01, r0 set to 0x01, r0 set to 0x01
	fdiv fr14,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r1,r2
	mov.l r2,@r3
	bra loc_8C0FCC94
	mov.w r0,@(0x1E,r14)

loc_8C0FCBEC:
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r14),fr3
	mov 0x5C,r0 ; r0 set to 0x5c
	mov 0x0A,r3 ; r3 set to 0x0a
	fmov.s fr3,@(r0,r14)
	mov.w @(0x1E,r14),r0
	cmp/gt r3,r0
	bt loc_8C0FCC70
	mov.w @(0x1E,r14),r0
	mov 0x5C,r8 ; r8 set to 0x5c
	mov r0,r4 ; r4 set to 0x5c
	exts.w r4,r0 ; r0 ??
	cmp/pz r0
	bf/s loc_8C0FCC0e
	add r14,r8 ; r8 ??? bc r14 is ???
	bra loc_8C0FCC18
	and 0x01,r0

loc_8C0FCC0E:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C0FCC18:
	tst r0,r0
	bt loc_8C0FCC2a
	exts.w r4,r2
	lds r2,fpul
	float fpul,fr3
	fmov fr3,fr2
	fldi1 fr3
	bra loc_8C0FCC38
	fadd fr3,fr3

loc_8C0FCC2A:
	exts.w r4,r2
	mov.l @(loc_8C0FCC6C,pc),r1 ; r1 set to 0xC0000000
	lds r2,fpul
	float fpul,fr3
	lds r1,fpul
	fmov fr3,fr2
	fsts fpul,fr3

loc_8C0FCC38:
	fdiv fr2,fr3
	fmov.s @r8,fr2
	fadd fr3,fr2
	fmov.s fr2,@r8
	mov.w @(0x1E,r14),r0
	add 0x01,r0
	bra loc_8C0FCC7c
	mov.w r0,@(0x1E,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C0FCC48:
	#data bank13.loc_8c13d8F0
loc_8C0FCC4C:
	#data 0x41A00000
loc_8C0FCC50:
	#data bank16.loc_8c164A10
loc_8C0FCC54:
	#data bank13.loc_8c13d914
loc_8C0FCC58:
	#data 0x8C26823c
loc_8C0FCC5C:
	#data 0x47800000
loc_8C0FCC60:
	#data 0x43B40000
loc_8C0FCC64:
	#data 0x3F000000
loc_8C0FCC68:
	#data 0x0000FFFf
loc_8C0FCC6C:
	#data 0xC0000000

;==============================================
loc_8c0fcc70:
	mov.w @(loc_8C0FCD44,pc),r0
	mov.l @(r0,r14),r2
	tst r2,r2
	bf loc_8c0fcc7c
	bsr loc_8c0fcf80
	mov r14,r4

loc_8C0FCC7C:
	mov 0x5C,r0 ; r0 set to 0x5c
	mov.l @(loc_8C0FCD50,pc),r1 ; r1 set to 0xFFFf
	fmov.s @(r0,r14),fr3
	mov r14,r3
	add 0x40,r3
	fmul fr13,fr3
	fdiv fr14,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r1,r2
	mov.l r2,@r3

loc_8C0FCC94:
	lds.l @r15+,pr
	fmov.s @r15+,fr13
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0FCCA2:
	sts.l pr,@-r15
	mov.l @(loc_8C0FCD54,pc),r3 ; r3 set to 0x8C044F12
	mov 0x0B,r5 ; r5 set to 0x0b
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C0FCD3e
	mov r0,r4 ; r4 ??? bc r0 is ???
	mov.w @(loc_8C0FCD46,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8C0FCD5C,pc),r1 ; r1 set to 0x8C26A938
	mov.l @(loc_8C0FCD58,pc),r2 ; r2 set to 0x8C0FD2Ac
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3 ; r3 ??
	mov r4,r1 ; r1 ??? bc r4 is ???
	mov.w @(loc_8C0FCD48,pc),r0 ; r0 set to 0x84
	add 0x34,r1
	mov.l @r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(0x20,r2),r3
	mov.l @(loc_8C0FCD60,pc),r2 ; r2 set to 0x8C13D8F0
	mov.l r3,@(r0,r4)
	mov.l @(loc_8C0FCD64,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(loc_8C0FCD68,pc),r6 ; r6 set to 0x8C13D908
	mova @(loc_8C0FCD6C,pc),r0  ; r0 set to 0x8C0FCD6c
	fmov.s @r0,fr6 ; r6 ??
	mova @(loc_8C0FCD70,pc),r0  ; r0 set to 0x8C0FCD70
	fmov.s @r6,fr3 ; r3 ??? bc r6 is ???
	mov r4,r3
	fmov.s @r0,fr5 ; r5 ??
	mova @(loc_8C0FCD74,pc),r0  ; r0 set to 0x8C0FCD74
	fmul fr6,fr3
	fmov.s @r0,fr4
	mov 0x04,r0 ; r0 set to 0x04
	mov.l @(loc_8C0FCD50,pc),r5 ; r5 set to 0xFFFf
	add 0x40,r3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r5,r2 ; r2 ??
	mov.l r2,@r3
	fmov.s @(r0,r6),fr3
	mov 0x44,r0 ; r0 set to 0x44
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r5,r3
	mov.l r3,@(r0,r4)
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s @(r0,r6),fr3
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	mov 0x48,r0 ; r0 set to 0x48
	mov.w @(loc_8C0FCD4A,pc),r2 ; r2 set to 0x80f
	ftrc fr3,fpul
	sts fpul,r3
	and r5,r3
	mov.l r3,@(r0,r4)
	mov 0x00,r5 ; r5 set to 0x00
	mov.w @(loc_8C0FCD4C,pc),r0 ; r0 set to 0xCc
	mov.l r2,@(r0,r4)
	mov r5,r0 ; r0 set to 0x00
	nop
	mov.l @(loc_8C0FCD78,pc),r3 ; r3 set to 0x8C13D938
	mov.w r0,@(0x1C,r4)
	mov.w r0,@(0x1E,r4)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @r3,fr3 ; r3 ??
	fmov.s fr3,@(r0,r4)
	bra loc_8C0FCD7c
	lds.l @r15+,pr

loc_8C0FCD3E:
	lds.l @r15+,pr
	rts
	nop

;=============================================
loc_8c0fcd44:
	#data 0x00D4
loc_8C0FCD46:
	#data 0x012c
loc_8C0FCD48:
	#data 0x0084
loc_8C0FCD4A:
	#data 0x080f
loc_8C0FCD4C:
	#data 0x00Cc
	#align4

loc_8C0FCD50:
	#data 0x0000FFFf
loc_8C0FCD54:
	#data bank04.loc_8c044F12
loc_8C0FCD58:
	#data loc_8c0fD2Ac
loc_8C0FCD5C:
	#data 0x8C26A938
loc_8C0FCD60:
	#data bank13.loc_8c13d8F0
loc_8C0FCD64:
	#data bank12.loc_8c1294C8
loc_8C0FCD68:
	#data bank13.loc_8c13d908
loc_8C0FCD6C:
	#data 0x47800000
loc_8C0FCD70:
	#data 0x43B40000
loc_8C0FCD74:
	#data 0x3F000000
loc_8C0FCD78:
	#data bank13.loc_8c13d938

;==============================================
loc_8c0fcd7c:
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
	add 0xF8,r15
	mova @(loc_8C0FCEA4,pc),r0
	mov.l @(loc_8c0fce9c,pc),r3
	mov.l @(loc_8c0fcea0,pc),r13
	mov 0x00,r11
	mov.l @(loc_8C0FCEB0,pc),r14
	mov r11,r12
	mov.w @(loc_8C0FCE92,pc),r8
	mov 0x01,r10
	mov.l r4,@r15
	mov 0x02,r9
	mov.l r3,@(0x04,r15)
	fmov.s @r0,fr13
	mova @(loc_8C0FCEA8,pc),r0
	fmov.s @r0,fr14
	mova @(loc_8C0FCEAC,pc),r0
	fmov.s @r0,fr15
	fldi1 fr12

loc_8c0fcdb8:
	mov.l @(loc_8c0fceb4,pc),r3
	mov 0x0B,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c0fce64
	mov r0,r4
	mov.l @r15,r3
	mov 0x23,r0
	mov.l @(loc_8C0FCEBC,pc),r1
	mov.l r3,@(0x18,r4)
	mov.l @(loc_8c0fceb8,pc),r3
	mov.b r12,@(r0,r4)
	mov.w @(loc_8C0FCE94,pc),r0
	mov.b r10,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r1,r2
	mov r4,r1
	mov.w @(loc_8C0FCE96,pc),r0
	add 0x34,r1
	mov.l @r2,r3
	mov.l @(0x20,r3),r3
	mov.l r3,@(r0,r4)
	mov.l @(loc_8c0fcec0,pc),r3
	mov.l @(0x04,r15),r2
	jsr @r3
	mov 0x0C,r0
	fmov.s @r13,fr3
	mov 0x04,r0
	mov r4,r1
	add 0x40,r1
	fmul fr13,fr3
	fdiv fr14,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r14,r3
	mov.l r3,@r1
	fmov.s @(r0,r13),fr3
	mov 0x44,r0
	fmul fr13,fr3
	fdiv fr14,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r14,r3
	mov.l r3,@(r0,r4)
	mov 0x08,r0
	fmov.s @(r0,r13),fr3
	mov 0x48,r0
	fmul fr13,fr3
	fdiv fr14,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r14,r3
	mov.l r3,@(r0,r4)
	mov.w @(loc_8C0FCE98,pc),r0
	mov.l r8,@(r0,r4)
	mov r11,r0
	nop
	mov.w r0,@(0x1C,r4)
	mov 0x23,r0
	mov.b @(r0,r4),r3
	mova @(loc_8C0FCEC4,pc),r0
	fmov.s @r0,fr2
	mov r4,r2
	extu.b r3,r3
	mov r4,r1
	add 0x01,r3
	lds r3,fpul
	mov 0x74,r0
	mov.l @(loc_8c0fcec0,pc),r3
	add 0x34,r2
	add 0x50,r1
	float fpul,fr3
	fmul fr2,fr3
	fneg fr3
	fadd fr12,fr3
	fmov.s fr3,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	add 0x01,r12
	cmp/ge r9,r12
	bf loc_8c0fcdb8

loc_8c0fce64:
	add 0x08,r15
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

loc_8C0FCE80:
	mov.l @(loc_8C0FCEC8,pc),r3 ; r3 set to 0x8C26823c
	sts.l pr,@-r15
	mov.l @r3,r0
	mov.b @(0x02,r0),r0
	cmp/eq 0x03,r0
	bt loc_8C0FCED0
	mov.l @(loc_8C0FCECC,pc),r1 ; r1 set to 0x8C0450C0
	jmp @r1
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0fce92:
	#data 0x082f
loc_8c0fce94:
	#data 0x012c
loc_8c0fce96:
	#data 0x0084
loc_8c0fce98:
	#data 0x00Cc
	#align4

loc_8C0FCE9C:
	#data bank13.loc_8c13d8F0
loc_8C0FCEA0:
	#data bank13.loc_8c13d908
loc_8c0fcea4:
	#data 0x47800000
loc_8c0fcea8:
	#data 0x43B40000
loc_8c0fceac:
	#data 0x3F000000
loc_8c0fceb0:
	#data 0x0000FFFf
loc_8C0FCEB4:
	#data bank04.loc_8c044F12
loc_8C0FCEB8:
	#data loc_8c0fCE80
loc_8c0fcebc:
	#data 0x8C26A938
loc_8C0FCEC0:
	#data bank12.loc_8c1294C8
loc_8c0fcec4:
	#data 0x3E4CCCCd
loc_8C0FCEC8:
	#data 0x8C26823c
loc_8C0FCECC:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0FCED0:
	mov.l @(0x18,r4),r3
	mov.b @(0x06,r3),r0
	tst r0,r0
	bf/s loc_8C0FCF60
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @(0x18,r4),r6
	mov.w @(0x1C,r6),r0
	tst r0,r0
	bf loc_8C0FCF4c
	mov.w @(0x1E,r6),r0
	mov 0x0A,r3 ; r3 set to 0x0a
	cmp/gt r3,r0
	bt loc_8C0FCF4c
	mov.w @(loc_8C0FCF6A,pc),r0 ; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r4)
	mov.w @(0x1C,r4),r0
	tst r0,r0
	bf loc_8C0FCF44
	mov r4,r2
	mov.l @(loc_8C0FCF6C,pc),r3 ; r3 set to 0x8C1294C8
	mov r4,r1 ; r1 ??? bc r4 is ???
	add 0x50,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mova @(loc_8C0FCF70,pc),r0  ; r0 set to 0x8C0FCF70
	mov.l @(loc_8C0FCF7C,pc),r1 ; r1 set to 0xFFFf
	fmov.s @r0,fr3 ; r3 ??
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r4),fr2
	mova @(loc_8C0FCF74,pc),r0  ; r0 set to 0x8C0FCF74
	fmov.s @r0,fr1 ; r1 ??
	mova @(loc_8C0FCF78,pc),r0  ; r0 set to 0x8C0FCF78
	fmul fr3,fr2
	fmov.s @r0,fr0 ; r0 ??
	mov 0x23,r0 ; r0 set to 0x23
	mov r4,r2
	add 0x40,r2
	fdiv fr1,fr2
	fadd fr0,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r1,r3
	mov r4,r1
	mov.l r3,@r2
	add 0x50,r1
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	mov.l @(loc_8C0FCF6C,pc),r3 ; r3 set to 0x8C1294C8
	extu.b r0,r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov.l @(0x18,r4),r2
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	bra loc_8C0FCF56
	nop

loc_8C0FCF44:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	bra loc_8C0FCF64
	mov.w r0,@(0x1C,r4)

loc_8C0FCF4C:
	mov.w @(loc_8C0FCF6A,pc),r0 ; r0 set to 0x12c
	mov.b r5,@(r0,r4)
	mov r5,r0 ; r0 ??? bc r5 is ???
	nop
	mov.w r0,@(0x1C,r4)

loc_8C0FCF56:
	mov.l @(0x18,r4),r3
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fmov.s @(r0,r3),fr3
	bra loc_8C0FCF64
	fmov.s fr3,@(r0,r4)

loc_8C0FCF60:
	mov.w @(loc_8C0FCF6A,pc),r0 ; r0 set to 0x12c
	mov.b r5,@(r0,r4)

loc_8C0FCF64:
	lds.l @r15+,pr
	rts
	nop

;=============================================
loc_8C0FCF6A:
	#data 0x012c
	#align4

loc_8C0FCF6C:
	#data bank12.loc_8c1294C8
loc_8C0FCF70:
	#data 0x47800000
loc_8C0FCF74:
	#data 0x43B40000
loc_8C0FCF78:
	#data 0x3F000000
loc_8C0FCF7C:
	#data 0x0000FFFf

;==============================================
loc_8C0FCF80:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xF8,PC),r3
	mov 0x0B,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0fd038
	mov r0,r4
	mov.l @r15,r3
	mov 0x01,r7
	mov.l @(0xEC,PC),r1
	mov.l r3,@(0x18,r4)
	mov.l @(0xE4,PC),r3
	mov.w @(0xD2,PC),r0
	mov.b r7,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r1,r2
	mov r4,r1
	mov.w @(0xCA,PC),r0
	add 0x34,r1
	mov.l @r2,r3
	mov.l @(0xD8,PC),r2
	mov.l @(0x24,r3),r3
	mov.l r3,@(r0,r4)
	mov.l @(0xD8,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xE4,PC),r5
	mova @(0xD4,PC),r0
	fmov @r0,fr6
	mova @(0xD4,PC),r0
	fmov @r5,fr3
	mov r4,r3
	fmov @r0,fr5
	mova @(0xD0,PC),r0
	fmul fr6,fr3
	fmov @r0,fr4
	mov 0x04,r0
	mov.l @(0xCC,PC),r6
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
	mov.w @(0x76,PC),r1
	ftrc fr3,fpul
	sts fpul,r3
	and r6,r3
	mov.l r3,@(r0,r4)
	mov.w @(0x6E,PC),r0
	mov.l r1,@(r0,r4)
	mova @(0x98,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov fr4,@(r0,r4)
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	mov 0x58,r0
	fmov fr4,@(r0,r4)
	mov 0x5C,r0
	fmov @r5,fr3
	fldi1 fr4
	fmov fr3,@(r0,r4)
	add 0x78,r0
	mov.l @(0x18,r4),r3
	mov.l r7,@(r0,r3)
	mov 0x78,r0
	fmov fr4,@(r0,r4)
	mov 0x7C,r0
	fmov fr4,@(r0,r4)
	add 0x04,r0
	fmov fr4,@(r0,r4)

loc_8C0FD038:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;=============================================
loc_8C0FD040:
	mov.l @(0x68,PC),r3
	mov.l r14,@-r15
	mov.l @r3,r0
	mov.b @(0x2,r0),r0
	cmp/eq 0x03,r0
	bf.s loc_8c0fd05e
	mov r4,r14
	mov.l @(0x18,r14),r3
	mov.w @(0x1C,r3),r0
	tst r0,r0
	bt loc_8c0fd066
	mov.w @(0x24,PC),r0
	mov 0x00,r3
	mov.l @(0x18,r14),r2
	mov.l r3,@(r0,r2)

loc_8C0FD05E:
	mov.l @(0x50,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0FD066:
	mov.b @(0x4,r14),r0
	mov r14,r4
	mov.l @(0x48,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0fd076:
	#data 0x012c
loc_8c0fd078:
	#data 0x0084
loc_8c0fd07a:
	#data 0x0c1f
loc_8c0fd07c:
	#data 0x00cc
loc_8c0fd07e:
	#data 0x00d4
	#align4

loc_8C0FD080:
	#data bank04.loc_8c044F12
loc_8C0FD084:
	#data loc_8c0fD040
loc_8C0FD088:
	#data 0x8C26A938
loc_8C0FD08C:
	#data bank13.loc_8c13d93c
loc_8C0FD090:
	#data bank12.loc_8c1294C8
loc_8C0FD094:
	#data 0x47800000
loc_8C0FD098:
	#data 0x43B40000
loc_8C0FD09c:
	#data 0x3F000000
loc_8C0FD0A0:
	#data 0x0000FFFf
loc_8C0FD0A4:
	#data bank13.loc_8c13d948
loc_8C0FD0A8:
	#data 0x3F19999a
loc_8C0FD0AC:
	#data 0x8C26823c
loc_8C0FD0B0:
	#data bank04.loc_8c0450C0
loc_8C0FD0B4:
	#data bank16.loc_8c164A18

;==============================================
loc_8C0FD0B8:
	mov.w @(loc_8C0FD214,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8C0FD218,pc),r5 ; r5 set to 0x8C13D948
	mov 0x0A,r6 ; r6 set to 0x0a
	mov.l @(loc_8C0FD228,pc),r1 ; r1 set to 0xFFFf
	sts.l pr,@-r15
	mov.b r3,@(r0,r4)
	mova @(loc_8C0FD21C,pc),r0  ; r0 set to 0x8C0FD21c
	fmov.s @r0,fr4
	mova @(loc_8C0FD220,pc),r0  ; r0 set to 0x8C0FD220
	fmov.s @r0,fr3 ; r3 ??
	mova @(loc_8C0FD224,pc),r0  ; r0 set to 0x8C0FD224
	fmov.s @r5,fr2
	mov r4,r3
	fmov.s @r0,fr1 ; r1 ??
	add 0x40,r3
	fmul fr3,fr2
	mov 0x5C,r0 ; r0 set to 0x5c
	fdiv fr1,fr2
	fadd fr4,fr2
	ftrc fr2,fpul
	sts fpul,r2
	and r1,r2
	mov.l r2,@r3
	mov.l @(loc_8C0FD230,pc),r3 ; r3 set to 0x8C13D958
	fmov.s @r5,fr2
	mov.l @(loc_8C0FD22C,pc),r5 ; r5 set to 0x8C26823c
	fmov.s fr2,@(r0,r4)
	fmov.s @r3,fr0 ; r0 ??
	mov.l @r5,r1
	fsub fr2,fr0
	mov.w @(0x0E,r1),r0
	mov.l @(loc_8C0FD234,pc),r2 ; r2 set to 0x8C129128
	mov r0,r1
	jsr @r2
	mov r6,r0 ; r0 set to 0x0a
	lds r0,fpul
	mov 0x68,r0 ; r0 set to 0x68
	mov.l @(loc_8C0FD234,pc),r2 ; r2 set to 0x8C129128
	float fpul,fr2
	fdiv fr2,fr0 ; r0 ??
	fmov.s fr0,@(r0,r4)
	mov.l @r5,r1
	mov.w @(0x0E,r1),r0
	mov r0,r1
	jsr @r2
	mov r6,r0 ; r0 set to 0x0a
	lds r0,fpul
	mova @(loc_8C0FD238,pc),r0  ; r0 set to 0x8C0FD238
	fmov.s @r0,fr0 ; r0 ??
	mov 0x6C,r0 ; r0 set to 0x6c
	mov.l @(loc_8C0FD234,pc),r2 ; r2 set to 0x8C129128
	float fpul,fr2
	fdiv fr2,fr0 ; r0 ??
	fmov.s fr0,@(r0,r4)
	mov.l @r5,r1
	mov.w @(0x0E,r1),r0
	mov r0,r1
	jsr @r2
	mov r6,r0 ; r0 set to 0x0a
	lds r0,fpul
	mov 0x70,r0 ; r0 set to 0x70
	mov.l @(loc_8C0FD234,pc),r2 ; r2 set to 0x8C129128
	float fpul,fr3
	fdiv fr3,fr4
	fmov.s fr4,@(r0,r4)
	mov.b @(0x04,r4),r0
	add 0x01,r0 ; r0 set to 0x71
	mov.b r0,@(0x04,r4)
	mov.l @r5,r1
	mov.w @(0x0E,r1),r0
	mov r0,r1 ; r1 set to 0x71
	jsr @r2
	mov r6,r0 ; r0 set to 0x0a
	mov.w r0,@(0x1E,r4)
	lds.l @r15+,pr

loc_8C0FD150:
	sts.l pr,@-r15
	mov.w @(0x1E,r4),r0
	cmp/pl r0
	bf loc_8C0FD160
	mov.w @(0x1E,r4),r0
	add 0xFF,r0 ; r0 set to 0x09
	bra loc_8C0FD1Ae
	mov.w r0,@(0x1E,r4)

loc_8C0FD160:
	mov.b @(0x04,r4),r0
	mov 0x03,r5 ; r5 set to 0x03
	mov.l @(loc_8C0FD22C,pc),r6 ; r6 set to 0x8C26823c
	add 0x01,r0
	mov.l @(loc_8C0FD234,pc),r3 ; r3 set to 0x8C129128
	mov.b r0,@(0x04,r4)
	mova @(loc_8C0FD21C,pc),r0  ; r0 set to 0x8C0FD21c
	mov.l @r6,r1
	fmov.s @r0,fr4
	mov.w @(0x0E,r1),r0
	mov r0,r1 ; r1 set to 0x8C0FD21c
	jsr @r3
	mov r5,r0 ; r0 set to 0x03
	lds r0,fpul
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov fr4,fr2
	mov.l @(loc_8C0FD234,pc),r3 ; r3 set to 0x8C129128
	float fpul,fr3
	fdiv fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.l @r6,r1 ; r1 ??
	mov.w @(0x0E,r1),r0
	mov r0,r1 ; r1 set to 0x6c
	jsr @r3
	mov r5,r0 ; r0 set to 0x03
	lds r0,fpul
	mov 0x70,r0 ; r0 set to 0x70
	mov.l @(loc_8C0FD234,pc),r3 ; r3 set to 0x8C129128
	float fpul,fr3
	fdiv fr3,fr4
	fmov.s fr4,@(r0,r4)
	mov.l @r6,r1 ; r1 ??
	mov.w @(0x0E,r1),r0
	mov r0,r1 ; r1 set to 0x70
	jsr @r3
	mov r5,r0 ; r0 set to 0x03
	lds.l @r15+,pr
	rts
	mov.w r0,@(0x1E,r4)

;=============================================
loc_8C0FD1AE:
	mov 0x6C,r1 ; r1 set to 0x6c
	add r4,r1 ; r1 ??? bc r4 is ???
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @r1,fr3
	fmov.s @(r0,r4),fr2
	mov 0x6C,r1 ; r1 set to 0x6c
	add r4,r1 ; r1 ??? bc r4 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6c
	add r4,r1 ; r1 ??? bc r4 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x58,r0 ; r0 set to 0x58
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	mov 0x70,r1 ; r1 set to 0x70
	add r4,r1 ; r1 ??? bc r4 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	mov 0x70,r1 ; r1 set to 0x70
	add r4,r1 ; r1 ??? bc r4 is ???
	fsub fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s @r1,fr3
	fmov.s @(r0,r4),fr2
	mov 0x70,r1 ; r1 set to 0x70
	add r4,r1 ; r1 ??? bc r4 is ???
	mov r4,r3
	fsub fr3,fr2
	add 0x40,r3
	mov.w @(loc_8C0FD216,pc),r2 ; r2 set to 0xE39
	fmov.s fr2,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x80
	fmov.s @(r0,r4),fr2 ; r2 ??? bc r4 is ???
	fmov.s @r1,fr3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.l @r3,r1
	add r2,r1
	mov.l r1,@r3
	lds.l @r15+,pr
	rts
	nop

;=============================================
loc_8C0FD214:
	#data 0x012c
loc_8C0FD216:
	#data 0x0E39
	#align4

loc_8C0FD218:
	#data bank13.loc_8c13d948
loc_8C0FD21C:
	#data 0x3F000000
loc_8C0FD220:
	#data 0x47800000
loc_8C0FD224:
	#data 0x43B40000
loc_8C0FD228:
	#data 0x0000FFFf
loc_8C0FD22C:
	#data 0x8C26823c
loc_8C0FD230:
	#data bank13.loc_8c13d958
loc_8C0FD234:
	#data bank12.loc_8c129128
loc_8C0FD238:
	#data 0x3F333333

;==============================================
loc_8C0FD23C:
	mov.w @(0x1E,r4),r0
	tst r0,r0
	bt loc_8c0fd2a8
	mov.w @(0x1E,r4),r0
	mov 0x6C,r1
	add r4,r1
	add 0xFF,r0
	mov.w r0,@(0x1E,r4)
	mov 0x50,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	mov 0x6C,r1
	add r4,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x54,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	mov 0x6C,r1
	add r4,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x58,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	mov 0x70,r1
	add r4,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x78,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x7C,r0
	mov 0x70,r1
	fmov @(r0,r4),fr2
	add r4,r1
	mov r4,r3
	fmov @r1,fr3
	mov 0x70,r1
	add r4,r1
	mov.w @(0xE2,PC),r2
	fsub fr3,fr2
	add 0x40,r3
	fmov fr2,@(r0,r4)
	add 0x04,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r4)
	mov.l @r3,r1
	add r2,r1
	mov.l r1,@r3

loc_8C0FD2A8:
	rts
	nop

;=============================================
loc_8C0FD2AC:
	mov.l @(loc_8C0FD37C,pc),r3 ; r3 set to 0x8C26823c
	mov.l r14,@-r15
	mov.l @r3,r0
	mov.b @(0x02,r0),r0
	cmp/eq 0x03,r0
	bt/s loc_8C0FD2C2
	mov r4,r14
	mov.l @(loc_8C0FD380,pc),r1 ; r1 set to 0x8C0450C0
	mov r14,r4
	jmp @r1
	mov.l @r15+,r14

loc_8C0FD2C2:
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov.l @(loc_8C0FD384,pc),r1 ; r1 set to 0x8C164A24
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0FD2D2:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	bsr loc_8c0fcae0
	mov r14,r4
	mov.w @(0x1C,r14),r0
	cmp/eq 0x14,r0
	bf loc_8c0fd30e
	mov.b @(0x4,r14),r0
	mov r14,r1
	mov.l @(0x98,PC),r2
	add 0x34,r1
	add 0x01,r0
	mov.l @(0x98,PC),r3
	mov.b r0,@(0x4,r14)
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x7C,PC),r0
	mov.l @r0,r1
	mov.w @(0xC,r1),r0
	mov.w @(0x70,PC),r1
	add r14,r1
	mov.l r0,@r1
	mov 0x01,r0
	mov.b r0,@(0x6,r14)

loc_8C0FD30E:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0FD314:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l @(0x60,PC),r13
	sts.l pr,@-r15
	mov.l @r13,r3
	mov.w @(0xC,r3),r0
	mov.w @(0x52,PC),r3
	add r14,r3
	mov.l @r3,r3
	cmp/eq r0,r3
	bt loc_8c0fd360
	mov 0x00,r4
	mov r4,r0
	nop 
	mov.b r0,@(0x5,r14)
	mov.l @r13,r3
	mov.w @(0xC,r3),r0
	mov.w @(0x3C,PC),r3
	add r14,r3
	mov.l @r3,r3
	cmp/gt r0,r3
	bf loc_8c0fd34e
	mov r4,r0
	nop 
	mov.l @(0x48,PC),r3
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov 0x3F,r4

loc_8C0FD34E:
	mov.w @(0x26,PC),r3
	mov.l @r13,r2
	add r14,r3
	mov.l @r3,r3
	mov.w @(0xC,r2),r0
	cmp/ge r0,r3
	bt loc_8c0fd360
	mov 0x01,r0
	mov.b r0,@(0x6,r14)

loc_8C0FD360:
	bsr loc_8c0fcb3e
	mov r14,r4
	mov.l @r13,r2
	mov.w @(0xE,PC),r1
	mov.w @(0xC,r2),r0
	add r14,r1
	mov.l r0,@r1
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0fd376:
	#data 0x0e39
loc_8c0fd378:
	#data 0x00d8
	#align4

loc_8C0FD37C:
	#data 0x8C26823c
loc_8C0FD380:
	#data bank04.loc_8c0450C0
loc_8C0FD384:
	#data bank16.loc_8c164A24
loc_8C0FD388:
	#data bank13.loc_8c13d8Fc
loc_8C0FD38C:
	#data bank12.loc_8c1294C8
loc_8C0FD390:
	#data bank04.loc_8c04257c

;==============================================
loc_8C0FD394:
	mov.w @(0x1E,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r4)
	exts.w r0,r0
	cmp/pz r0
	bf loc_8C0FD3A4
	bra loc_8C0FD3Ae
	and 0x03,r0

loc_8C0FD3A4:
	not r0,r0
	add 0x01,r0
	and 0x03,r0
	not r0,r0
	add 0x01,r0

loc_8C0FD3AE:
	tst r0,r0
	bf loc_8C0FD3E0
	mov.w @(0x1C,r4),r0
	mov.l @(loc_8C0FD4A4,pc),r3 ; r3 set to 0x8C164AA8, r3 set to 0x8C164AA8
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	mov.l @r3,r2
	cmp/ge r2,r0
	bf loc_8C0FD3C8
	mov.l @(loc_8C0FD4A8,pc),r1 ; r1 set to 0x8C0450C0, r1 set to 0x8C0450C0
	jmp @r1
	nop

loc_8c0fd3c8:
	mov.l @(loc_8C0FD4AC,pc),r3
	mov.l @(loc_8c0fd4b0,pc),r2
	mov.l @r3,r0
	mov.l @r2,r1
	mov.l @r0,r3
	mov.w @(0x1C,r4),r0
	shll2 r0
	mov.l @(r0,r1),r0
	shll2 r0
	mov.l @(r0,r3),r1
	mov.w @(loc_8C0FD49A,pc),r0
	mov.l r1,@(r0,r4)

loc_8C0FD3E0:
	mov 0x5C,r1 ; r1 set to 0x5c
	add r4,r1 ; r1 ??? bc r4 is ???
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3
	fmov.s @(r0,r4),fr2
	mov 0x64,r1 ; r1 set to 0x64
	add r4,r1 ; r1 ??? bc r4 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	rts
	fmov.s fr2,@(r0,r4)

;=============================================
loc_8C0FD3FE:
	mov.l r14,@-r15
	fmov fr12,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l @(0xAC,PC),r3
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov 0x05,r5
	mov.l r6,@(0xC,r15)
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bf.s loc_8c0fd420
	mov r0,r14
	bra loc_8c0fd540
	nop 

loc_8C0FD420:
	mov.w @(0x78,PC),r0
	mov 0x01,r3
	mov.l @(0x90,PC),r2
	mov r14,r1
	mov.b r3,@(r0,r14)
	add 0xA0,r0
	mov.w @(0x6E,PC),r3
	add 0x34,r1
	mov.l r2,@(0x10,r14)
	mov.l r3,@(r0,r14)
	mov.l @(0x84,PC),r3
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0
	mov 0x3C,r2
	mov.l @(0x4,r15),r1
	mov.l @(0x7C,PC),r3
	shll2 r1
	add r3,r1
	mov.l @(0x88,PC),r3
	mov.l r1,@(0x8,r15)
	mov.l @(0xC,r15),r0
	fmov @r1,fr12
	mul.l r2,r0
	mova @(0x70,PC),r0
	mov.l @(0x80,PC),r2
	fmov @r0,fr2
	mova @(0x70,PC),r0
	fmov @r0,fr1
	mova @(0x70,PC),r0
	sts macl,r4
	fmov @r0,fr0
	lds r4,fpul
	float fpul,fr3
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r4
	and r3,r4
	jsr @r2
	mov.l r4,@r15
	fmul fr0,fr12
	mov 0x5C,r0
	fmov fr12,@(r0,r14)
	mov.l @(0x8,r15),r3
	fmov @r3,fr12
	mov.l @(0x58,PC),r3
	jsr @r3
	mov.l @r15,r4
	fmul fr0,fr12
	mov.l @(0x54,PC),r3
	mov 0x64,r0
	jsr @r3
	fmov fr12,@(r0,r14)
	mov.w @(0xE,PC),r3
	cmp/pz r0
	bf.s loc_8c0fd4e0
	mov 0x48,r1
	bra loc_8c0fd4ea
	and r3,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0fd49a:
	#data 0x0084
loc_8c0fd49c:
	#data 0x012c
loc_8c0fd49e:
	#data 0x0119
loc_8c0fd4a0:
	#data 0x3FFf
	#align4

loc_8C0FD4A4:
	#data bank16.loc_8c164AA8
loc_8C0FD4A8:
	#data bank04.loc_8c0450C0
loc_8c0fd4ac:
	#data 0x8C26A908
loc_8C0FD4B0:
	#data bank16.loc_8c164A98
loc_8C0FD4B4:
	#data bank04.loc_8c044F12
loc_8C0FD4B8:
	#data loc_8c0fD394
loc_8C0FD4BC:
	#data bank12.loc_8c1294C8
loc_8C0FD4C0:
	#data bank16.loc_8c164AC4
loc_8C0FD4C4:
	#data 0x47800000
loc_8C0FD4C8:
	#data 0x43B40000
loc_8C0FD4Cc:
	#data 0x3F000000
loc_8C0FD4D0:
	#data 0x0000FFFf
loc_8C0FD4D4:
	#data bank11.loc_8c11E860
loc_8C0FD4D8:
	#data bank11.loc_8c11E2E0
loc_8C0FD4DC:
	#data bank11.loc_8c11e730

;==============================================
loc_8C0FD4E0:
	not r0,r0
	add 0x01,r0
	and r3,r0
	not r0,r0
	add 0x01,r0

loc_8C0FD4EA:
	add r14,r1
	mov.l r0,@r1
	mov r14,r1
	mov.l @(0x4,r15),r2
	add 0x50,r1
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(0xD0,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(0xCC,PC),r3
	jsr @r3
	mov 0x0C,r0
	mova @(0xCC,PC),r0
	mov.l @(0xCC,PC),r3
	fmov @r0,fr4
	mov 0x50,r0
	fmov @(r0,r14),fr3
	mov.l @(0xC8,PC),r2
	fmul fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r14),fr2
	fldi1 fr3
	fmul fr4,fr2
	fmov fr2,@(r0,r14)
	mov 0x58,r0
	fmov @(r0,r14),fr2
	fmul fr3,fr2
	fmov fr2,@(r0,r14)
	mov.l @r3,r0
	mov.l @r2,r1
	mov.l @r0,r3
	mov.w @(0x1C,r14),r0
	shll2 r0
	mov.l @(r0,r1),r0
	shll2 r0
	mov.l @(r0,r3),r1
	mov.w @(0x8E,PC),r0
	mov.l r1,@(r0,r14)
	mov 0x00,r0
	mov.w r0,@(0x1E,r14)

loc_8C0FD540:
	add 0x10,r15
	lds.l @r15+,pr
	fmov @r15+,fr12
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0FD54A:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x02,r3
	exts.b r5,r13
	cmp/gt r3,r13
	bt.s loc_8c0fd570
	mov.l r4,@r15
	mov 0x00,r14
	mov 0x06,r12

loc_8C0FD562:
	mov r13,r5
	mov r14,r6
	bsr loc_8c0fd3fe
	mov.l @r15,r4
	add 0x01,r14
	cmp/ge r12,r14
	bf loc_8c0fd562

loc_8C0FD570:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0FD57C:
	mov.l @(loc_8C0FD5D8,pc),r3 ; r3 set to 0x8C26A908
	mov.l @(loc_8C0FD5DC,pc),r2 ; r2 set to 0x8C164A98
	mov.l @r3,r0
	mov.l @r2,r1
	mov.l @r0,r3 ; r3 ??? bc r0 is ???
	mov.w @(0x1C,r4),r0
	shll2 r0
	mov.l @(r0,r1),r0
	shll2 r0
	mov.l @(r0,r3),r1
	mov.w @(loc_8C0FD5CA,pc),r0 ; r0 set to 0x84
	mov.l @(loc_8C0FD5E0,pc),r3 ; r3 set to 0x8C164AA8
	mov.l r1,@(r0,r4)
	mov 0x5C,r1 ; r1 set to 0x5c
	add r4,r1 ; r1 ??? bc r4 is ???
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r4),fr2 ; r2 ??? bc r4 is ???
	mov 0x64,r1 ; r1 set to 0x64
	add r4,r1 ; r1 ??? bc r4 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0 ; r0 set to 0x3d
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0 ; r0 ??
	mov.l @r3,r1
	cmp/ge r1,r0
	bf loc_8C0FD5C6
	mov.l @(loc_8C0FD5E4,pc),r0 ; r0 set to 0x8C0450C0
	jmp @r0
	nop

loc_8C0FD5C6:
	rts
	nop

;=============================================
loc_8C0FD5CA:
	#data 0x0084
	#align4

loc_8C0FD5CC:
	#data bank16.loc_8c164AD0
loc_8C0FD5D0:
	#data bank12.loc_8c1294C8
loc_8C0FD5D4:
	#data 0x42480000
loc_8C0FD5D8:
	#data 0x8C26A908
loc_8C0FD5DC:
	#data bank16.loc_8c164A98
loc_8C0FD5E0:
	#data bank16.loc_8c164AA8
loc_8C0FD5E4:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0FD5E8:
	mov.l r14,@-r15
	fmov fr12,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l @(0x128,PC),r3
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov 0x07,r5
	mov.l r6,@(0x8,r15)
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0fd6a6
	mov r0,r14
	mov.w @(0x10A,PC),r0
	mov 0x01,r3
	mov.l @(0x114,PC),r2
	mov r14,r1
	mov.b r3,@(r0,r14)
	add 0xA0,r0
	mov.w @(0x100,PC),r3
	add 0x34,r1
	mov.l r2,@(0x10,r14)
	mov.l r3,@(r0,r14)
	mov.l @(0x108,PC),r3
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0
	mov 0x3C,r2
	mov.l @(0x4,r15),r1
	mov.l @(0x100,PC),r3
	shll2 r1
	add r3,r1
	mov.l @(0x108,PC),r3
	mov.l r1,@(0xC,r15)
	mov.l @(0x8,r15),r0
	fmov @r1,fr12
	mul.l r2,r0
	mova @(0xF4,PC),r0
	mov.l @(0x100,PC),r2
	fmov @r0,fr2
	mova @(0xF0,PC),r0
	fmov @r0,fr1
	mova @(0xF0,PC),r0
	sts macl,r4
	fmov @r0,fr0
	lds r4,fpul
	float fpul,fr3
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r4
	and r3,r4
	jsr @r2
	mov.l r4,@r15
	fmul fr0,fr12
	mov 0x5C,r0
	fmov fr12,@(r0,r14)
	mov.l @(0xC,r15),r3
	fmov @r3,fr12
	mov.l @(0xD8,PC),r3
	jsr @r3
	mov.l @r15,r4
	fmul fr0,fr12
	mov.l @(0xD4,PC),r3
	mov 0x64,r0
	jsr @r3
	fmov fr12,@(r0,r14)
	mov.w @(0xA0,PC),r3
	cmp/pz r0
	bf.s loc_8c0fd680
	mov 0x48,r1
	bra loc_8c0fd68a
	and r3,r0

loc_8C0FD680:
	not r0,r0
	add 0x01,r0
	and r3,r0
	not r0,r0
	add 0x01,r0

loc_8C0FD68A:
	add r14,r1
	mov.l r0,@r1
	mov r14,r1
	mov.l @(0x4,r15),r2
	add 0x50,r1
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(0xAC,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(0x80,PC),r3
	jsr @r3
	mov 0x0C,r0

loc_8C0FD6A6:
	add 0x10,r15
	lds.l @r15+,pr
	fmov @r15+,fr12
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0FD6B0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x02,r3
	exts.b r5,r13
	cmp/gt r3,r13
	bt.s loc_8c0fd6d6
	mov.l r4,@r15
	mov 0x00,r14
	mov 0x06,r12

loc_8C0FD6C8:
	mov r13,r5
	mov r14,r6
	bsr loc_8c0fd5e8
	mov.l @r15,r4
	add 0x01,r14
	cmp/ge r12,r14
	bf loc_8c0fd6c8

loc_8C0FD6D6:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0FD6E2:
	mov.l @(loc_8C0FD74C,pc),r3 ; r3 set to 0x8C26A908
	mov.l @(loc_8C0FD750,pc),r2 ; r2 set to 0x8C164A98
	mov.l @r3,r0
	mov.l @r2,r1
	mov.l @r0,r3 ; r3 ??? bc r0 is ???
	mov.w @(0x1C,r4),r0
	shll2 r0
	mov.l @(r0,r1),r0
	shll2 r0
	mov.l @(r0,r3),r1
	mov.w @(loc_8C0FD71A,pc),r0 ; r0 set to 0x84
	mov.l @(loc_8C0FD754,pc),r3 ; r3 set to 0x8C164AA8
	mov.l r1,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0 ; r0 set to 0x85
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0 ; r0 ??
	mov.l @r3,r1
	cmp/ge r1,r0
	bf loc_8C0FD710
	mov.l @(loc_8C0FD758,pc),r0 ; r0 set to 0x8C0450C0
	jmp @r0
	nop

loc_8C0FD710:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0fd714:
	#data 0x012c
loc_8c0fd716:
	#data 0x0109
loc_8c0fd718:
	#data 0x3FFf
loc_8C0FD71A:
	#data 0x0084
	#align4

loc_8C0FD71C:
	#data bank04.loc_8c044F12
loc_8C0FD720:
	#data loc_8c0fD57c
loc_8C0FD724:
	#data bank12.loc_8c1294C8
loc_8C0FD728:
	#data bank16.loc_8c164AC4
loc_8C0FD72C:
	#data 0x47800000
loc_8C0FD730:
	#data 0x43B40000
loc_8C0FD734:
	#data 0x3F000000
loc_8C0FD738:
	#data 0x0000FFFf
loc_8C0FD73C:
	#data bank11.loc_8c11E860
loc_8C0FD740:
	#data bank11.loc_8c11E2E0
loc_8C0FD744:
	#data bank11.loc_8c11e730
loc_8C0FD748:
	#data bank16.loc_8c164AD0
loc_8C0FD74C:
	#data 0x8C26A908
loc_8C0FD750:
	#data bank16.loc_8c164A98
loc_8C0FD754:
	#data bank16.loc_8c164AA8
loc_8C0FD758:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0FD75C:
	mov.l r14,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.b r5,@r15
	mov r4,r14
	mov r6,r0
	nop
	mov.b r0,@(0x0C,r15)
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s fr4,@(r0,r15)
	mov 0x08,r0 ; r0 set to 0x08
	mov.l @(loc_8C0FD88C,pc),r3 ; r3 set to 0x8C044F12
	mov 0x07,r5 ; r5 set to 0x07
	fmov.s fr5,@(r0,r15)
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C0FD7F4
	mov r0,r4 ; r4 set to 0x08
	mov.w @(loc_8C0FD886,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	fldi0 fr4
	mov 0x34,r8 ; r8 set to 0x34
	mov.b r3,@(r0,r4)  ; r4 ??
	mov 0x11,r3 ; r3 set to 0x11
	add 0xA0,r0 ; r0 set to 0xCc
	mov.l @(loc_8C0FD890,pc),r2 ; r2 set to 0x8C0FD6E2
	mov.l r2,@(0x10,r4)
	mov.l r3,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s fr4,@(r0,r4)
	mov.w @(loc_8C0FD888,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r2 ; r2 ??? bc r14 is ???
	tst r2,r2
	bt/s loc_8C0FD7Ba
	add r4,r8 ; r8 ??? bc r4 is ???
	mov.b @r15,r3
	bra loc_8C0FD7C0
	extu.b r3,r3

loc_8c0fd7ba:
	mov.b @r15,r2
	extu.b r2,r2
	neg r2,r3

loc_8c0fd7c0:
	lds r3,fpul
	mov 0x38,r0
	mov r0,r2
	fmov.s @r8,fr2
	add r4,r2
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@r8
	mov.b @(0x0C,r15),r0
	fmov.s @r2,fr2
	mov r0,r3
	extu.b r3,r3
	lds r3,fpul
	mov 0x04,r0
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@r2
	fmov.s @(r0,r15),fr3
	mov 0x50,r0
	fmov.s fr3,@(r0,r4)
	mov 0x08,r0
	fmov.s @(r0,r15),fr3
	mov 0x54,r0
	fmov.s fr3,@(r0,r4)
	mov 0x58,r0
	fmov.s fr4,@(r0,r4)

loc_8C0FD7F4:
	add 0x10,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14


;=============================================
;unused?
loc_8c0fd7fe:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x04,r0
	mov r5,r13
	mov.l @(0x80,PC),r3
	mov 0x01,r6
	mov 0x07,r5
	mov r4,r14
	fmov fr4,@(r0,r15)
	fmov fr5,@r15
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0fd87c
	mov r0,r4
	mov.w @(0x62,PC),r0
	mov 0x01,r3
	fldi0 fr4
	mov.b r3,@(r0,r4)
	mov 0x11,r3
	add 0xA0,r0
	mov.l @(0x60,PC),r2
	mov.l r2,@(0x10,r4)
	mov 0x34,r2
	mov.l r3,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	fmov fr4,@(r0,r4)
	mov.w @(0x40,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c0fd852
	add r4,r2
	bra loc_8c0fd856
	fmov @r13,fr3

loc_8c0fd852:
	fmov @r13,fr3
	fneg fr3

loc_8c0fd856:
	fmov @r2,fr2
	mov 0x04,r1
	add r13,r1
	fadd fr3,fr2
	mov 0x38,r0
	fmov fr2,@r2
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x04,r0
	fmov @(r0,r15),fr3
	mov 0x50,r0
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	fmov @r15,fr3
	fmov fr3,@(r0,r4)
	mov 0x58,r0
	fmov fr4,@(r0,r4)

loc_8c0fd87c:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0FD886:
	#data 0x012c
loc_8C0FD888:
	#data 0x0130
	#align4

loc_8C0FD88C:
	#data bank04.loc_8c044F12
loc_8C0FD890:
	#data loc_8c0fD6E2

;==============================================
loc_8C0FD894:
	mov.l r14,@-r15
	mov 0x07,r5 ; r5 set to 0x07
	sts.l pr,@-r15
	mov.l @(loc_8C0FD90C,pc),r3 ; r3 set to 0x8C044F12
	mov r4,r14
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C0FD8Fe
	mov r0,r4 ; r4 ??? bc r0 is ???
	mov.w @(loc_8C0FD904,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	fldi0 fr4
	mov 0x34,r1 ; r1 set to 0x34
	mov.b r3,@(r0,r4)
	mov 0x11,r3 ; r3 set to 0x11
	add 0xA0,r0 ; r0 set to 0xCc
	mov.l @(loc_8C0FD910,pc),r2 ; r2 set to 0x8C0FD6E2
	mov.l r2,@(0x10,r4)
	mov.l r3,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s fr4,@(r0,r4)
	mov.w @(loc_8C0FD906,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r2 ; r2 ??? bc r14 is ???
	tst r2,r2
	bt/s loc_8C0FD8Dc
	add r4,r1 ; r1 ??? bc r4 is ???
	bra loc_8C0FD8De
	mov 0xE0,r3

loc_8c0fd8dc:
	mov 0x20,r3

loc_8c0fd8de:
	lds r3,fpul
	fmov.s @r1,fr2
	mov.w @(loc_8C0FD908,pc),r0
	float fpul,fr3
	fldi1 fr5
	fadd fr3,fr2
	fmov.s fr2,@r1
	fmov.s @(r0,r14),fr3
	mov 0x38,r0
	fmov.s fr3,@(r0,r4)
	mov 0x50,r0
	fmov.s fr5,@(r0,r4)
	mov 0x54,r0
	fmov.s fr5,@(r0,r4)
	mov 0x58,r0
	fmov.s fr4,@(r0,r4)
	
loc_8C0FD8FE:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0FD904:
	#data 0x012c
loc_8C0FD906:
	#data 0x0130
loc_8c0fd908:
	#data 0x041c
	#align4

loc_8C0FD90C:
	#data bank04.loc_8c044F12
loc_8C0FD910:
	#data loc_8c0fD6E2

;==============================================
loc_8c0fd914:
	add 0xF4,r15
	mov.b @r5,r7
	mov 0x04,r0
	extu.b r7,r7
	shll2 r7
	shll r7
	add r4,r7
	mov r7,r3
	add 0x08,r3
	mov.l r3,@(0x04,r15)
	exts.w r6,r4
	mov.l @r3,r2
	mov.l r2,@(0x08,r15)
	mov.l @r7,r3
	sub r3,r2
	mov.l r3,@r15
	mov.l @(0x04,r15),r3
	lds r2,fpul
	mov r4,r2
	fmov.s @(r0,r3),fr4
	mov.l @r15,r3
	float fpul,fr3
	fmov.s @(r0,r7),fr5
	sub r3,r2
	lds r2,fpul
	fsub fr5,fr4
	mov.l @(0x08,r15),r2
	fmov fr3,fr6
	float fpul,fr3
	cmp/ge r2,r4
	fmul fr4,fr3
	fmov fr5,fr4
	fdiv fr6,fr3
	bf/s loc_8c0fd960
	fadd fr3,fr4
	mov.b @r5,r2
	add 0x01,r2
	mov.b r2,@r5

loc_8c0fd960:
	fmov fr4,fr0
	rts
	add 0x0C,r15

loc_8C0FD966:
	mov.l r14,@-r15
	mov r6,r14
	mov.l @(loc_8C0FD994,pc),r3 ; r3 set to 0x8C289650
	mov 0x05,r2 ; r2 set to 0x05
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @r3,r6
	cmp/gt r2,r6
	bt/s loc_8C0FDA20
	mov r7,r12
	mov 0x08,r13 ; r13 set to 0x08
	mov r14,r0
	nop
	mov 0x11,r1 ; r1 set to 0x11
	cmp/hs r1,r0
	bt loc_8C0FDA20
	shll r0
	mov r0,r1 ; r1 ??? bc r0 is ???
	mova @(loc_8C0FD998,pc),r0  ; r0 set to 0x8C0FD998
	mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???

braf_8c0fd990:
	braf r0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C0FD994:
	#data 0x8C289650

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0FD998:
	#data16 {loc_8c0fd9ba-braf_8c0fd990-4};0x0026
	#data16 {loc_8c0fd9c6-braf_8c0fd990-4};0x0032
	#data16 {loc_8c0fd9d4-braf_8c0fd990-4};0x0040
	#data16 {loc_8c0fd9e2-braf_8c0fd990-4};0x004E
	#data16 {loc_8c0fd9f0-braf_8c0fd990-4};0x005c
	#data16 {loc_8c0fd9f0-braf_8c0fd990-4};0x005C
	#data16 {loc_8c0fd9f0-braf_8c0fd990-4};0x005c
	#data16 {loc_8c0fda04-braf_8c0fd990-4};0x0070
	#data16 {loc_8c0fd9e2-braf_8c0fd990-4};0x004e
	#data16 {loc_8c0fda14-braf_8c0fd990-4};0x0080
	#data16 {loc_8c0fda14-braf_8c0fd990-4};0x0080
	#data16 {loc_8c0fda14-braf_8c0fd990-4};0x0080
	#data16 {loc_8c0fda14-braf_8c0fd990-4};0x0080
	#data16 {loc_8c0fda14-braf_8c0fd990-4};0x0080
	#data16 {loc_8c0fda14-braf_8c0fd990-4};0x0080
	#data16 {loc_8c0fda14-braf_8c0fd990-4};0x0080
	#data16 {loc_8c0fda14-braf_8c0fd990-4};0x0080

;==============================================
loc_8c0fd9ba:
	mov r12,r7
	mov.l r13,@-r15
	bsr loc_8c0fdbac
	mov r14,r6
	bra loc_8c0fda1e
	nop 

;==============================================
loc_8c0fd9c6:
	mov.l @(0x64,PC),r3
	mov r12,r7
	mov.l r13,@-r15
	jsr @r3
	mov r14,r6
	bra loc_8c0fda1e
	nop 

;==============================================
loc_8c0fd9d4:
	mov.l @(0x54,PC),r3
	mov r12,r7
	mov.l r13,@-r15
	jsr @r3
	mov r14,r6
	bra loc_8c0fda1e
	nop 

;==============================================
loc_8c0fd9e2:
	mov.l @(0x4C,PC),r3
	extu.b r12,r7
	mov.l r13,@-r15
	jsr @r3
	mov r14,r6
	bra loc_8c0fda1e
	nop 

;==============================================
loc_8c0fd9f0:
	mov 0x03,r3
	cmp/gt r3,r6
	bt loc_8c0fda20
	mov.l @(0x3C,PC),r3
	mov r12,r7
	mov.l r13,@-r15
	jsr @r3
	mov r14,r6
	bra loc_8c0fda1e
	nop 

;==============================================
loc_8c0fda04:
	lds.l @r15+,pr
	mov.l @(0x30,PC),r3
	mov 0x08,r6
	mov r14,r5
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c0fda14:
	mov.l @(0x24,PC),r3
	mov r12,r7
	mov.l r13,@-r15
	jsr @r3
	mov r14,r6

loc_8c0fda1e:
	 add 0x04,r15

loc_8C0FDA20:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C0FDA2C:
	#data loc_8c0fEF5c
loc_8C0FDA30:
	#data loc_8c0fEFFc
loc_8C0FDA34:
	#data bank10.loc_8c102FE8
loc_8C0FDA38:
	#data loc_8c0fF66a
loc_8C0FDA3C:
	#data bank10.loc_8c10766c

;==============================================
;unused?
loc_8c0fda40:
	mov.l r14,@-r15
	mov 0x09,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0FDA60,PC),r13
	mov r6,r0
	nop 
	mov 0x11,r1
	cmp/hs r1,r0
	bt loc_8c0fdaae
	shll r0
	mov r0,r1
	mova @(loc_8c0fda64,PC),r0
	mov.w @(r0,r1),r0

braf_8c0fda5c:
	braf r0
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C0FDA60:
	#data loc_8c0fEF5c

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0fda64:
	#data16 {loc_8c0fda86-braf_8c0fda5c-4};0x0026
	#data16 {loc_8c0fda8e-braf_8c0fda5c-4};0x002E
	#data16 {loc_8c0fda96-braf_8c0fda5c-4};0x0036
	#data16 {loc_8c0fda9e-braf_8c0fda5c-4};0x003E
	#data16 {loc_8c0fdaa6-braf_8c0fda5c-4};0x0046
	#data16 {loc_8c0fdaa6-braf_8c0fda5c-4};0x0046
	#data16 {loc_8c0fdaa6-braf_8c0fda5c-4};0x0046
	#data16 {loc_8c0fdaa6-braf_8c0fda5c-4};0x0046
	#data16 {loc_8c0fda9e-braf_8c0fda5c-4};0x003E
	#data16 {loc_8c0fdaa6-braf_8c0fda5c-4};0x0046
	#data16 {loc_8c0fdaa6-braf_8c0fda5c-4};0x0046
	#data16 {loc_8c0fdaa6-braf_8c0fda5c-4};0x0046
	#data16 {loc_8c0fdaa6-braf_8c0fda5c-4};0x0046
	#data16 {loc_8c0fdaa6-braf_8c0fda5c-4};0x0046
	#data16 {loc_8c0fdaa6-braf_8c0fda5c-4};0x0046
	#data16 {loc_8c0fdaa6-braf_8c0fda5c-4};0x0046
	#data16 {loc_8c0fdaa6-braf_8c0fda5c-4};0x0046


;==============================================
loc_8c0fda86:
	bsr loc_8c0fdbac
	mov.l r14,@-r15
	bra loc_8c0fdaac
	nop 

;=============================================
loc_8c0fda8e:
	jsr @r13
	mov.l r14,@-r15
	bra loc_8c0fdaac
	nop 

;=============================================
loc_8c0fda96:
	jsr @r13
	mov.l r14,@-r15
	bra loc_8c0fdaac
	nop 

;=============================================
loc_8c0fda9e:
	jsr @r13
	mov.l r14,@-r15
	bra loc_8c0fdaac
	nop 

;=============================================
loc_8c0fdaa6:
	mov.l @(0x100,PC),r2
	jsr @r2
	mov.l r14,@-r15

loc_8c0fdaac:
	add 0x04,r15

loc_8c0fdaae:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0FDAB6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(loc_8C0FDBA4,pc),r0 ; r0 set to 0x130
	mov r4,r14
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8C0FDAD0
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r5,fr3
	fmov.s @(r0,r14),fr2
	bra loc_8C0FDAD8
	fsub fr3,fr2

loc_8C0FDAD0:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r5,fr3
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2

loc_8C0FDAD8:
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	fmov.s fr2,@r15
	fmov.s @(r0,r5),fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r14),fr2
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	mov 0x00,r7 ; r7 set to 0x00, r7 set to 0x00
	fadd fr3,fr2
	fmov.s fr2,@(r0,r15)
	mov 0x3C,r0 ; r0 set to 0x3C, r0 set to 0x3c
	fmov.s @(r0,r14),fr3
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
	fmov.s fr3,@(r0,r15)
	mov.w @(loc_8C0FDBA4,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r14),r5
	bsr loc_8C0FD966
	mov r15,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;=============================================
;unused?
loc_8c0fdb02:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(0x98,PC),r0
	mov r4,r14
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0fdb1c
	mov 0x34,r0
	fmov @r5,fr3
	fmov @(r0,r14),fr2
	bra loc_8c0fdb24
	fsub fr3,fr2

loc_8c0fdb1c:
	mov 0x34,r0
	fmov @r5,fr3
	fmov @(r0,r14),fr2
	fadd fr3,fr2

loc_8c0fdb24:
	mov 0x04,r0
	fmov fr2,@r15
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	mov 0x04,r0
	mov 0x00,r7
	fadd fr3,fr2
	fmov fr2,@(r0,r15)
	mov 0x3C,r0
	fmov @(r0,r14),fr3
	mov 0x08,r0
	fmov fr3,@(r0,r15)
	mov.w @(0x62,PC),r0
	mov.w @(r0,r14),r5
	bsr loc_8c0fda40
	mov r15,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0FDB4E:
	sts.l pr,@-r15
	add 0xF0,r15
	mov.w @(loc_8C0FDBA6,pc),r0 ; r0 set to 0x1C8
	mov.l @(r0,r4),r3
	mov.w @(loc_8C0FDBA4,pc),r0 ; r0 set to 0x130
	mov.l r3,@r15
	mov.w @(r0,r4),r2
	tst r2,r2
	bt loc_8C0FDB6a
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r5,fr3
	fmov.s @(r0,r4),fr2
	bra loc_8C0FDB72
	fsub fr3,fr2

loc_8C0FDB6A:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r5,fr3
	fmov.s @(r0,r4),fr2
	fadd fr3,fr2

loc_8C0FDB72:
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	fmov.s fr2,@(r0,r15)
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	fmov.s @(r0,r5),fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r4),fr2
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
	mov 0x00,r7 ; r7 set to 0x00, r7 set to 0x00
	fadd fr3,fr2
	mov 0x01,r6 ; r6 set to 0x01, r6 set to 0x01
	fmov.s fr2,@(r0,r15)
	mov 0x3C,r0 ; r0 set to 0x3C, r0 set to 0x3c
	fmov.s @(r0,r4),fr3
	mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
	mov r15,r4
	fmov.s fr3,@(r0,r15)
	mov.l @r15,r5
	mov.w @(loc_8C0FDBA4,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r5),r5
	bsr loc_8C0FD966
	add 0x04,r4
	add 0x10,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0FDBA4:
	#data 0x0130
loc_8C0FDBA6:
	#data 0x01C8
	#align4

loc_8C0FDBA8:
	#data bank10.loc_8c10766c

;==============================================
loc_8C0FDBAC:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov.l r6,@(0x4,r15)
	mov r7,r0
	nop 
	mov.b r0,@(0x8,r15)
	mov 0x18,r0
	mov.b @(r0,r15),r13
	mov 0x01,r6
	mov.l @(0x11C,PC),r3
	mov r13,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0fdc22
	mov r0,r14
	mov.l @(0x114,PC),r3
	mov r14,r1
	mov.w @(0xFC,PC),r0
	add 0x34,r1
	mov.b @r3,r2
	add 0x01,r2
	mov.b r2,@r3
	mov 0x00,r3
	mov.l @(0x108,PC),r2
	mov.b r3,@(r0,r14)
	mov.l r2,@(0x10,r14)
	mov.l @(0x104,PC),r3
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0xE6,PC),r0
	mov r13,r5
	mov.w @(0xE0,PC),r1
	mov.l r1,@(r0,r14)
	bsr loc_8c0fdc52
	mov r14,r4
	mov r13,r5
	bsr loc_8c0fdd04
	mov r14,r4
	mov r13,r5
	bsr loc_8c0fdd88
	mov r14,r4
	mov r13,r5
	bsr loc_8c0fde9c
	mov r14,r4
	mov.b @(0x8,r15),r0
	mov r13,r7
	mov.l @(0x4,r15),r5
	mov.l @r15,r4
	mov r0,r6
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c0fdfb2
	mov.l @r15+,r14

loc_8c0fdc22:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0FDC2C:
	sts.l pr,@-r15
	mov.w @(0x1C,r4),r0
	mov 0x0A,r3 ; r3 set to 0x0a
	cmp/gt r3,r0
	bf loc_8C0FDC48
	mov.l @(loc_8C0FDCF4,pc),r1 ; r1 set to 0x8C0450C0
	jsr @r1
	nop
	mov.l @(loc_8C0FDCE8,pc),r3 ; r3 set to 0x8C289650
	lds.l @r15+,pr
	mov.b @r3,r2
	add 0xFF,r2
	rts
	mov.b r2,@r3

;=============================================
loc_8C0FDC48:
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	lds.l @r15+,pr
	rts
	nop

;=============================================
loc_8c0fdc52:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x8C,PC),r3
	mov 0x01,r6
	mov.l r4,@r15
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0fdc8e
	mov r0,r4
	mov.w @(0x6C,PC),r0
	mov 0x01,r3
	mov.l @(0x90,PC),r1
	mov.l @(0x88,PC),r2
	mov.b r3,@(r0,r4)
	add 0x1C,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov.w @(0x5E,PC),r0
	mov.w @(0x5E,PC),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.w @(0x58,PC),r2
	mov.l @r15,r3
	mov.w @(0x56,PC),r0
	add r3,r2
	mov.l r2,@(r0,r4)

loc_8c0fdc8e:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;=============================================
loc_8C0FDC96:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	mov 0x03,r3 ; r3 set to 0x03
	cmp/gt r3,r0
	bf loc_8C0FDCAe
	lds.l @r15+,pr
	mov.l @(loc_8C0FDCF4,pc),r1 ; r1 set to 0x8C0450C0
	mov r14,r4
	jmp @r1
	mov.l @r15+,r14

loc_8C0FDCAE:
	mov.l @(loc_8C0FDD00,pc),r4 ; r4 set to 0x8C164B0c
	mov r14,r5
	mov r0,r6
	bsr loc_8C0FD914
	add 0x04,r5
	mov 0x78,r0 ; r0 set to 0x78
	fmov fr0,fr3
	fmov.s fr0,@(r0,r14)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s fr3,@(r0,r14)
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s @(r0,r14),fr3
	add 0x08,r0 ; r0 set to 0x80
	fmov.s fr3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0x01,r0 ; r0 set to 0x81
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;=============================================
loc_8c0fdcd6:
	#data 0x012c
loc_8c0fdcd8:
	#data 0x0181
loc_8c0fdcda:
	#data 0x00CC
loc_8c0fdcdc:
	#data 0x0084
loc_8c0fdcde:
	#data 0x0400
loc_8c0fdce0:
	#data 0x0088
loc_8c0fdce2:
	#data 0x00C8
	#align4

loc_8C0FDCE4:
	#data bank04.loc_8c044F12
loc_8C0FDCE8:
	#data 0x8C289650
loc_8C0FDCEC:
	#data loc_8c0fDC2c
loc_8C0FDCF0:
	#data bank12.loc_8c1294C8
loc_8C0FDCF4:
	#data bank04.loc_8c0450C0
loc_8C0FDCF8:
	#data loc_8c0fDC96
loc_8C0FDCFC:
	#data 0x8C26A908
loc_8C0FDD00:
	#data bank16.loc_8c164B0c

;==============================================
loc_8C0FDD04:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xF8,PC),r3
	mov 0x01,r6
	mov.l r4,@r15
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0fdd40
	mov r0,r4
	mov.w @(0xD8,PC),r0
	mov 0x01,r3
	mov.l @(0xEC,PC),r1
	mov.l @(0xE8,PC),r2
	mov.b r3,@(r0,r4)
	add 0x20,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov.w @(0xC6,PC),r0
	mov.w @(0xC6,PC),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.w @(0xC0,PC),r2
	mov.l @r15,r3
	mov.w @(0xBE,PC),r0
	add r3,r2
	mov.l r2,@(r0,r4)

loc_8c0fdd40:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;=============================================
loc_8C0FDD48:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	mov 0x08,r3 ; r3 set to 0x08
	cmp/gt r3,r0
	bf loc_8C0FDD60
	lds.l @r15+,pr
	mov.l @(loc_8C0FDE10,pc),r1 ; r1 set to 0x8C0450C0
	mov r14,r4
	jmp @r1
	mov.l @r15+,r14

loc_8C0FDD60:
	mov.l @(loc_8C0FDE14,pc),r4 ; r4 set to 0x8C164B1c
	mov r14,r5
	mov r0,r6
	bsr loc_8C0FD914
	add 0x04,r5
	mov 0x78,r0 ; r0 set to 0x78
	fmov fr0,fr3
	fmov.s fr0,@(r0,r14)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s fr3,@(r0,r14)
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s @(r0,r14),fr3
	add 0x08,r0 ; r0 set to 0x80
	fmov.s fr3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0x01,r0 ; r0 set to 0x81
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;=============================================
loc_8c0fdd88:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x74,PC),r3
	mov 0x01,r6
	mov.l r4,@r15
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0fddd0
	mov r0,r4
	mov.w @(0x54,PC),r0
	mov 0x01,r3
	mov.l @(0x68,PC),r1
	mov.l @(0x74,PC),r2
	mov.b r3,@(r0,r4)
	add 0x24,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	add 0x50,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov.w @(0x3E,PC),r0
	mov.l @(0x64,PC),r2
	mov.l r3,@(r0,r4)
	mov.l @(0x64,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x3C,PC),r0
	mov.w @(0x38,PC),r1
	mov.l r1,@(r0,r4)
	mov.w @(0x30,PC),r1
	mov.l @r15,r3
	mov.w @(0x2E,PC),r0
	add r3,r1
	mov.l r1,@(r0,r4)

loc_8c0fddd0:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;=============================================
loc_8C0FDDD8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r8,@-r15
	mov 0x0A,r3 ; r3 set to 0x0a
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	cmp/gt r3,r0
	bf loc_8C0FDE24
	lds.l @r15+,pr
	mov.l @(loc_8C0FDE10,pc),r1 ; r1 set to 0x8C0450C0
	mov r14,r4
	mov.l @r15+,r8
	jmp @r1
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0fddf4:
	#data 0x012c
loc_8c0fddf6:
	#data 0x0084
loc_8c0fddf8:
	#data 0x0400
loc_8c0fddfa:
	#data 0x0088
loc_8c0fddfc:
	#data 0x00C8
loc_8c0fddfe:
	#data 0x0412
loc_8c0fde00:
	#data 0x00Cc
	#align4

loc_8C0FDE04:
	#data bank04.loc_8c044F12
loc_8C0FDE08:
	#data loc_8c0fDD48
loc_8C0FDE0C:
	#data 0x8C26A908
loc_8C0FDE10:
	#data bank04.loc_8c0450C0
loc_8C0FDE14:
	#data bank16.loc_8c164B1c
loc_8C0FDE18:
	#data loc_8c0fDDD8
loc_8C0FDE1C:
	#data bank16.loc_8c164AF4
loc_8C0FDE20:
	#data bank12.loc_8c1294C8

;==============================================
loc_8C0FDE24:
	mov.l @(loc_8C0FDF3C,pc),r4 ; r4 set to 0x8C164B34
	mov r14,r5
	mov r0,r6
	bsr loc_8C0FD914
	add 0x04,r5
	mov 0x54,r0 ; r0 set to 0x54
	mov.l @(loc_8C0FDF40,pc),r4 ; r4 set to 0x8C164B4c
	fmov.s fr0,@(r0,r14)
	mov r14,r5
	mov.w @(0x1C,r14),r0
	mov r0,r6 ; r6 set to 0x54
	bsr loc_8C0FD914
	add 0x05,r5
	mov 0x58,r0 ; r0 set to 0x58
	mov r14,r3
	fmov.s fr0,@(r0,r14)
	add 0x40,r3
	mov.w @(0x1C,r14),r0
	mov r14,r5
	mov.l @(loc_8C0FDF44,pc),r4 ; r4 set to 0x8C164B64
	mov r3,r8
	mov r0,r6 ; r6 set to 0x58
	bsr loc_8C0FD914
	add 0x06,r5
	mova @(loc_8C0FDF48,pc),r0  ; r0 set to 0x8C0FDF48
	mov.l @(loc_8C0FDF54,pc),r2 ; r2 set to 0xFFFf
	fmov.s @r0,fr3
	mova @(loc_8C0FDF4C,pc),r0  ; r0 set to 0x8C0FDF4c
	fmov.s @r0,fr2 ; r2 ??
	mova @(loc_8C0FDF50,pc),r0  ; r0 set to 0x8C0FDF50
	fmul fr3,fr0 ; r0 ??? bc r3 is ???
	fmov.s @r0,fr1
	mov.l @(loc_8C0FDF58,pc),r4 ; r4 set to 0x8C164B74
	mov r14,r5
	fdiv fr2,fr0
	fadd fr1,fr0
	ftrc fr0,fpul
	sts fpul,r3
	and r2,r3
	mov.l r3,@r8
	mov.w @(0x1C,r14),r0
	mov r0,r6 ; r6 ??? bc r0 is ???
	bsr loc_8C0FD914
	add 0x07,r5
	mov 0x78,r0 ; r0 set to 0x78
	fmov fr0,fr3
	fmov.s fr0,@(r0,r14)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s fr3,@(r0,r14)
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s @(r0,r14),fr3
	add 0x08,r0 ; r0 set to 0x80
	fmov.s fr3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0x01,r0 ; r0 set to 0x81
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

;=============================================
loc_8c0fde9c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xB8,PC),r3
	mov 0x01,r6
	mov.l r4,@r15
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0fdefa
	mov r0,r14
	mov.w @(0x7C,PC),r0
	mov 0x00,r3
	mov.l @(0xA8,PC),r2
	mov.b r3,@(r0,r14)
	mov.l @(0xA8,PC),r3
	jsr @r3
	mov.l r2,@(0x10,r14)
	mov.l @(0xA4,PC),r3
	mov r0,r1
	jsr @r3
	mov 0x5A,r0
	lds r0,fpul
	mova @(0x7C,PC),r0
	fmov @r0,fr2
	mova @(0x7C,PC),r0
	fmov @r0,fr1
	mova @(0x7C,PC),r0
	float fpul,fr3
	fmov @r0,fr0
	mov.l @(0x78,PC),r2
	mov 0x48,r0
	mov.w @(0x54,PC),r1
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r2,r3
	mov.l r3,@(r0,r14)
	mov.w @(0x46,PC),r0
	mov.l r1,@(r0,r14)
	mov.w @(0x44,PC),r1
	mov.l @r15,r3
	mov.w @(0x42,PC),r0
	add r3,r1
	mov.l r1,@(r0,r14)

loc_8c0fdefa:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0FDF02:
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C0FDF12
	cmp/eq 0x01,r0
	bt loc_8C0FDF6c
	bra loc_8C0FDFAe
	nop

loc_8C0FDF12:
	mov.w @(0x1C,r4),r0
	mov 0x02,r3 ; r3 set to 0x02
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/gt r3,r0
	bf loc_8C0FDFAe
	mov.b @(0x04,r4),r0
	mov 0x01,r2 ; r2 set to 0x01
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov 0x00,r0 ; r0 set to 0x00
	mov.w r0,@(0x1C,r4)
	mov.w @(loc_8C0FDF32,pc),r0 ; r0 set to 0x12c
	bra loc_8C0FDFAe
	mov.b r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0fdf32:
	#data 0x012c
loc_8c0fdf34:
	#data 0x0408
loc_8c0fdf36:
	#data 0x00cc
loc_8c0fdf38:
	#data 0x0088
loc_8c0fdf3a:
	#data 0x00c8
	#align4

loc_8C0FDF3C:
	#data bank16.loc_8c164B34
loc_8C0FDF40:
	#data bank16.loc_8c164B4c
loc_8C0FDF44:
	#data bank16.loc_8c164B64
loc_8C0FDF48:
	#data 0x47800000
loc_8C0FDF4C:
	#data 0x43B40000
loc_8C0FDF50:
	#data 0x3F000000
loc_8C0FDF54:
	#data 0x0000FFFf
loc_8C0FDF58:
	#data bank16.loc_8c164B74
loc_8C0FDF5C:
	#data bank04.loc_8c044F12
loc_8C0FDF60:
	#data loc_8c0fDF02
loc_8C0FDF64:
	#data bank11.loc_8c11e730
loc_8C0FDF68:
	#data bank12.loc_8c1292D4

;==============================================
loc_8C0FDF6C:
	mov.w @(0x1C,r4),r0
	mov 0x05,r3 ; r3 set to 0x05
	cmp/gt r3,r0
	bf loc_8C0FDF7a
	mov.l @(loc_8C0FE018,pc),r2 ; r2 set to 0x8C0450C0
	jmp @r2
	nop

loc_8c0fdf7a:
	mov.w @(0x1C,r4),r0
	mov.l @(loc_8c0fe01c,pc),r1
	mov.l @(loc_8C0FE020,pc),r3
	shll2 r0
	mov.l @(r0,r1),r2
	mov.l @r3,r0
	shll2 r2
	mov.l @r0,r0
	mov.l @(r0,r2),r2
	mov.w @(loc_8C0FE014,pc),r0
	mov.l r2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	mov.l @(loc_8c0fe024,pc),r2
	shll2 r0
	fmov.s @(r0,r2),fr3
	mov 0x78,r0
	fmov.s fr3,@(r0,r4)
	mov 0x7C,r0
	fmov.s fr3,@(r0,r4)
	mov 0x78,r0
	fmov.s @(r0,r4),fr3
	add 0x08,r0
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)

loc_8C0FDFAE:
	rts
	nop

;=============================================
loc_8C0FDFB2:
	mov.l r14,@-r15
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r6,r0
	nop
	mov.b r0,@(0x08,r15)
	mov r7,r0
	nop
	mov.b r0,@(0x04,r15)
	mov r5,r0
	nop
	cmp/eq 0x00,r0
	bt loc_8C0FDFE0
	cmp/eq 0x01,r0
	bt loc_8C0FDFE6
	cmp/eq 0x02,r0
	bt loc_8C0FDFEc
	cmp/eq 0x03,r0
	bt loc_8C0FDFF2
	bra loc_8C0FDFF6
	nop

loc_8C0FDFE0:
	mova @(loc_8C0FE028,pc),r0  ; r0 init to 0x8C0FE028
	bra loc_8C0FDFF6
	fmov.s @r0,fr15

loc_8C0FDFE6:
	mova @(loc_8C0FE02C,pc),r0  ; r0 init to 0x8C0FE02c
	bra loc_8C0FDFF6
	fmov.s @r0,fr15

loc_8C0FDFEC:
	mova @(loc_8C0FE030,pc),r0  ; r0 init to 0x8C0FE030
	bra loc_8C0FDFF6
	fmov.s @r0,fr15

loc_8c0fdff2:
	mova @(loc_8C0FE034,pc),r0
	fmov.s @r0,fr15

loc_8C0FDFF6:
	mov 0x0A,r14 ; r14 set to 0x0a

loc_8C0FDFF8:
	mov.b @(0x04,r15),r0
	fmov fr15,fr4
	mov r0,r6
	mov.b @(0x08,r15),r0
	mov r0,r5
	bsr loc_8C0FE038
	mov.l @r15,r4
	dt r14
	bf loc_8C0FDFF8
	add 0x0C,r15
	lds.l @r15+,pr
	fmov.s @r15+,fr15
	rts
	mov.l @r15+,r14

;=============================================
loc_8c0fe014:
	#data 0x0084
	#align4

loc_8C0FE018:
	#data bank04.loc_8c0450C0
loc_8C0FE01C:
	#data bank16.loc_8c164B84
loc_8c0fe020:
	#data 0x8C26A908
loc_8C0FE024:
	#data bank16.loc_8c164B9c
loc_8C0FE028:
	#data 0x41200000
loc_8C0FE02C:
	#data 0x41A00000
loc_8C0FE030:
	#data 0x41F00000
loc_8c0fe034:
	#data 0x42200000

;==============================================
loc_8c0fe038:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r8,@-r15
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	fmov.s fr13,@-r15
	fmov.s fr12,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	fmov fr4,fr14
	mov.l r4,@(0x04,r15)
	mov r5,r0
	nop
	mov.l @(loc_8c0fe184,pc),r3
	mov.b r0,@(0x08,r15)
	mov.b r6,@r15
	mov 0x01,r6
	mov.b @r15,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c0fe134
	mov r0,r14
	mov.w @(loc_8C0FE180,pc),r0
	mov 0x01,r3
	mov.l @(loc_8c0fe188,pc),r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0FE18C,pc),r3
	mov.l r2,@(0x10,r14)
	mov.l @(loc_8c0fe190,pc),r2
	mov.l @r3,r0
	jsr @r2
	mov.l @r0,r8
	mov.l @(loc_8c0fe194,pc),r3
	mov r0,r1
	jsr @r3
	mov 0x03,r0
	add 0x60,r0
	mov r14,r1
	shll2 r0
	mov.l @(r0,r8),r3
	add 0x34,r1
	mov.w @(loc_8C0FE182,pc),r0
	mov.l r3,@(r0,r14)
	mov.l @(loc_8c0fe198,pc),r3
	mov.l @(0x04,r15),r2
	jsr @r3
	mov 0x0C,r0
	mova @(loc_8C0FE19C,pc),r0
	mov.l @(loc_8c0fe1a0,pc),r13
	fmov.s @r0,fr13
	mova @(loc_8C0FE1A4,pc),r0
	jsr @r13
	fmov.s @r0,fr15
	mov.b @(0x08,r15),r0
	mov.l @(loc_8c0fe1b4,pc),r2
	mov r0,r3
	extu.b r3,r3
	lds r3,fpul
	mova @(loc_8C0FE1A8,pc),r0
	fmov.s @r0,fr2
	mova @(loc_8C0FE1AC,pc),r0
	fmov.s @r0,fr1
	float fpul,fr3
	mov.l @(loc_8C0FE1B0,pc),r3
	fmov fr0,fr12
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r4
	and r3,r4
	jsr @r2
	mov.l r4,@r15
	fmov fr0,fr3
	mov 0x5C,r0
	fmov fr15,fr0
	fmac fr0,fr3,fr12
	fmov fr14,fr3
	fadd fr13,fr12
	fmul fr12,fr3
	jsr @r13
	fmov.s fr3,@(r0,r14)
	mov.l @(loc_8c0fe1b8,pc),r3
	fmov fr0,fr12
	jsr @r3
	mov.l @r15,r4
	fmov fr0,fr3
	mov 0x60,r0
	fmov fr15,fr0
	fmac fr0,fr3,fr12
	fmov fr14,fr3
	fadd fr13,fr12
	fmul fr12,fr3
	jsr @r13
	fmov.s fr3,@(r0,r14)
	fmul fr0,fr14
	mov 0x64,r0
	mov 0x21,r3
	fmul fr15,fr14
	fmov.s fr14,@(r0,r14)
	mova @(loc_8C0FE1BC,pc),r0
	fmov.s @r0,fr4
	mov 0x5C,r0
	fmov.s @(r0,r14),fr3
	mov 0x68,r0
	fneg fr3
	fdiv fr4,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x60,r0
	fmov.s @(r0,r14),fr3
	mov 0x6C,r0
	fneg fr3
	fdiv fr4,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x64,r0
	fmov.s @(r0,r14),fr3
	mov 0x70,r0
	fneg fr3
	fdiv fr4,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x74,r0
	fldi1 fr3
	fmov.s fr3,@(r0,r14)
	add 0x58,r0
	mov.l r3,@(r0,r14)

loc_8c0fe134:
	add 0x0C,r15
	lds.l @r15+,pr
	fmov.s @r15+,fr12
	fmov.s @r15+,fr13
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r8
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8C0FE148:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	mov 0x1E,r3 ; r3 set to 0x1e
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/gt r3,r0
	bf loc_8C0FE166
	lds.l @r15+,pr
	mov.l @(loc_8C0FE1C0,pc),r1 ; r1 set to 0x8C0450C0
	mov r14,r4
	jmp @r1
	mov.l @r15+,r14

loc_8C0FE166:
	mov.l @(loc_8C0FE1C4,pc),r3 ; r3 set to 0x8C1087Ce
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C0FE1C8,pc),r1 ; r1 set to 0x3C888889
	mov 0x74,r0 ; r0 set to 0x74
	fmov.s @(r0,r14),fr2
	lds r1,fpul
	fsts fpul,fr3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0fe180:
	#data 0x012c
loc_8c0fe182:
	#data 0x0084
	#align4

loc_8C0FE184:
	#data bank04.loc_8c044F12
loc_8C0FE188:
	#data loc_8c0fE148
loc_8c0fe18c:
	#data 0x8C26A908
loc_8C0FE190:
	#data bank11.loc_8c11e730
loc_8C0FE194:
	#data bank12.loc_8c1292D4
loc_8C0FE198:
	#data bank12.loc_8c1294C8
loc_8c0fe19c:
	#data 0xBF000000
loc_8C0FE1A0:
	#data bank11.loc_8c11E750
loc_8c0fe1a4:
	#data 0x3F000000
loc_8c0fe1a8:
	#data 0x49340000
loc_8c0fe1ac:
	#data 0x43B40000
loc_8c0fe1b0:
	#data 0x0000FFFf
loc_8C0FE1B4:
	#data bank11.loc_8c11E860
loc_8C0FE1B8:
	#data bank11.loc_8c11E2E0
loc_8c0fe1bc:
	#data 0x41F00000
loc_8C0FE1C0:
	#data bank04.loc_8c0450C0
loc_8C0FE1C4:
	#data bank10.loc_8c1087Ce
loc_8C0FE1C8:
	#data 0x3C888889

;==============================================
;unused?
loc_8c0fe1cc:
	mov.l r14,@-r15
	mov 0x00,r7
	sts.l pr,@-r15
	mov r7,r6
	mov r4,r14
	bsr loc_8c0fe26e
	mov 0x07,r5
	mov 0x07,r5
	mov 0x01,r6
	mov 0x00,r7
	bsr loc_8c0fe26e
	mov r14,r4
	mov 0x06,r5
	mov 0x00,r6
	mov 0x01,r7
	bsr loc_8c0fe26e
	mov r14,r4
	lds.l @r15+,pr
	mov 0x01,r7
	mov r14,r4
	mov r7,r6
	mov 0x06,r5
	bra loc_8c0fe26e
	mov.l @r15+,r14

;==============================================
;unused?
loc_8c0fe1fc:
	mov.l r14,@-r15
	mov 0x03,r6
	sts.l pr,@-r15
	mov 0x00,r7
	mov r4,r14
	bsr loc_8c0fe26e
	mov 0x05,r5
	mov 0x07,r5
	mov 0x04,r6
	mov 0x00,r7
	bsr loc_8c0fe26e
	mov r14,r4
	mov 0x07,r5
	mov 0x04,r6
	mov 0x01,r7
	bsr loc_8c0fe26e
	mov r14,r4
	mov 0x07,r5
	mov 0x04,r6
	mov 0x02,r7
	bsr loc_8c0fe26e
	mov r14,r4
	mov 0x07,r5
	mov 0x04,r6
	mov 0x03,r7
	bsr loc_8c0fe26e
	mov r14,r4
	mov 0x04,r7
	mov 0x07,r5
	mov r7,r6
	bsr loc_8c0fe26e
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov 0x07,r5
	mov 0x05,r7
	mov 0x04,r6
	bra loc_8c0fe26e
	mov.l @r15+,r14

;==============================================
loc_8C0FE24A:
	mov.l r14,@-r15
	mov 0x05,r6
	sts.l pr,@-r15
	mov 0x00,r7
	mov r4,r14
	bsr loc_8c0fe26e
	mov 0x07,r5
	mov 0x07,r5
	mov 0x05,r6
	mov 0x01,r7
	bsr loc_8c0fe26e
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov 0x02,r7
	mov 0x05,r6
	mov.l @r15+,r14
	mov 0x07,r5

loc_8C0FE26E:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@(0x8,r15)
	mov r6,r0
	nop 
	mov.l @(0xAC,PC),r3
	mov 0x01,r6
	mov.b r0,@(0x4,r15)
	mov.b r7,@r15
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0fe2a0
	mov r0,r4
	mov.l @(0xA0,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @(0x8,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)

loc_8C0FE2A0:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	nop

;=============================================
loc_8C0FE2A8:
	mov r4,r3
	mov.l @(loc_8C0FE330,pc),r1 ; r1 set to 0x8C164BEc
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;=============================================
loc_8C0FE2BA:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0FE334,pc),r0 ; r0 set to 0x8C164BFc
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0FE626
	mov.l @r15+,r14

;==============================================
loc_8C0FE2DE:
	mov.l @(0x58,PC),r1
	mov 0x2D,r3
	mov.w @(0x3A,PC),r0
	fldi1 fr3
	sts.l pr,@-r15
	mov.l r3,@(r0,r4)
	mov.l @r1,r2
	mov.w @(0x32,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r3
	mov.w @(0x2E,PC),r0
	mov.l r3,@(r0,r4)
	mov 0x74,r0
	fmov fr3,@(r0,r4)
	mov.b @(0x3,r4),r0
	extu.b r0,r0
	cmp/eq 0x07,r0
	bf loc_8c0fe31a
	mov.w @(0x1A,PC),r0
	mov r4,r1
	mov.w @(0x16,PC),r2
	add 0x50,r1
	mov.l @(r0,r4),r0
	add r4,r2
	mov.l @(0x30,PC),r3
	or 0x10,r0
	mov.l r0,@r2
	mov.l @(0x24,PC),r2
	jsr @r3
	mov 0x0C,r0

loc_8C0FE31A:
	lds.l @r15+,pr
	rts
	nop

;=============================================
loc_8c0fe320:
	#data 0x00Cc
loc_8c0fe322:
	#data 0x0168
loc_8c0fe324:
	#data 0x0084
	#align4

loc_8C0FE328:
	#data bank04.loc_8c044F12
loc_8C0FE32C:
	#data loc_8c0fE2A8
loc_8C0FE330:
	#data bank16.loc_8c164BEc
loc_8C0FE334:
	#data bank16.loc_8c164BFc
loc_8C0FE338:
	#data 0x8C26A904
loc_8C0FE33C:
	#data bank16.loc_8c164BD4
loc_8C0FE340:
	#data bank12.loc_8c1294C8

;==============================================
loc_8C0FE344:
	mov.l @(0xF0,PC),r1
	mov.w @(0xE0,PC),r3
	mov.w @(0xE0,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	fldi1 fr3
	fldi0 fr4
	sts.l pr,@-r15
	mov.l r3,@(r0,r14)
	mov.l @r1,r2
	mov.w @(0xD2,PC),r0
	mov.l @r2,r3
	mov.l @(r0,r3),r3
	mov.w @(0xCE,PC),r0
	mov.l r3,@(r0,r14)
	mov 0x78,r0
	fmov fr3,@(r0,r14)
	mov 0x7C,r0
	fmov fr4,@(r0,r14)
	add 0x04,r0
	fmov fr4,@(r0,r14)
	mov.b @(0x3,r14),r0
	extu.b r0,r0
	cmp/eq 0x07,r0
	bf loc_8c0fe38e
	mov.w @(0xB2,PC),r0
	mov r14,r1
	mov.w @(0xAE,PC),r2
	add 0x50,r1
	mov.l @(r0,r14),r0
	add r14,r2
	mov.l @(0xBC,PC),r3
	or 0x10,r0
	mov.l r0,@r2
	mov.l @(0xB0,PC),r2
	jsr @r3
	mov 0x0C,r0

loc_8C0FE38E:
	mov.b @(0x3,r14),r0
	mov 0x02,r6
	mov.l @(0xB0,PC),r3
	mov r0,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt.s loc_8c0fe3b6
	mov r0,r4
	mov.l @(0xA4,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x18,r14),r2
	mov.l r2,@(0x18,r4)
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.b @(r0,r14),r2
	mov.b r2,@(r0,r4)

loc_8C0FE3B6:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0FE3BC:
	mov.w @(loc_8C0FE42C,pc),r0 ; r0 set to 0xCc
	mov.l @(loc_8C0FE438,pc),r1 ; r1 set to 0x8C26A904
	sts.l pr,@-r15
	mov.l @(0x08,r4),r5
	mov.l @(r0,r5),r3
	mov.l r3,@(r0,r4)
	mov.l @r1,r2
	mov r4,r1 ; r1 ??? bc r4 is ???
	mov.w @(loc_8C0FE432,pc),r0 ; r0 set to 0x164
	add 0x74,r1
	mov.l @r2,r3
	mov r5,r2
	add 0x74,r2
	mov.l @(r0,r3),r3
	mov.w @(loc_8C0FE430,pc),r0 ; r0 set to 0x84
	mov.l r3,@(r0,r4)
	mov.l @(loc_8C0FE44C,pc),r3 ; r3 set to 0x8C1294Bc
	jsr @r3
	mov 0x10,r0 ; r0 set to 0x10
	mov r5,r2
	mov.l @(loc_8C0FE440,pc),r3 ; r3 set to 0x8C1294C8
	mov r4,r1
	add 0x50,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	lds.l @r15+,pr
	rts
	nop

;=============================================
loc_8C0FE3F6:
	mov.l @(loc_8C0FE438,pc),r1 ; r1 set to 0x8C26A904
	mov 0x3D,r2 ; r2 set to 0x3d
	mov.w @(loc_8C0FE42C,pc),r0 ; r0 set to 0xCc
	sts.l pr,@-r15
	mov.l r2,@(r0,r4)
	mov.l @r1,r3
	mov r4,r1 ; r1 ??? bc r4 is ???
	mov.w @(loc_8C0FE434,pc),r0 ; r0 set to 0x168
	add 0x50,r1
	mov.l @r3,r2 ; r2 ??? bc r3 is ???
	fldi1 fr3
	mov.l @(r0,r2),r3
	mov.w @(loc_8C0FE430,pc),r0 ; r0 set to 0x84
	mov.l @(loc_8C0FE450,pc),r2 ; r2 set to 0x8C164BE0
	mov.l r3,@(r0,r4)
	mov 0x74,r0 ; r0 set to 0x74
	mov.l @(loc_8C0FE440,pc),r3 ; r3 set to 0x8C1294C8
	fmov.s fr3,@(r0,r4)
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C0FE436,pc),r0 ; r0 set to 0xD2
	mov 0x10,r5 ; r5 set to 0x10
	mov.l @(loc_8C0FE454,pc),r3 ; r3 set to 0x8C04218c
	mov.w r0,@(0x1E,r4)
	jmp @r3
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0fe42a:
	#data 0x040d
loc_8C0FE42C:
	#data 0x00Cc
loc_8c0fe42E:
	#data 0x0160
loc_8C0FE430:
	#data 0x0084
loc_8C0FE432:
	#data 0x0164
loc_8C0FE434:
	#data 0x0168
loc_8C0FE436:
	#data 0x00D2
	#align4

loc_8C0FE438:
	#data 0x8C26A904
loc_8C0FE43C:
	#data bank16.loc_8c164BD4
loc_8C0FE440:
	#data bank12.loc_8c1294C8
loc_8C0FE444:
	#data bank04.loc_8c044F12
loc_8C0FE448:
	#data loc_8c0fE2A8
loc_8C0FE44C:
	#data bank12.loc_8c1294Bc
loc_8C0FE450:
	#data bank16.loc_8c164BE0
loc_8C0FE454:
	#data bank04.loc_8c04218c

;==============================================
loc_8C0FE458:
	mov.w @(loc_8C0FE5AE,pc),r0 ; r0 set to 0x12c
	mov 0x01,r5 ; r5 set to 0x01
	mov.w @(loc_8C0FE5B0,pc),r3 ; r3 set to 0x41f
	mov.l @(loc_8C0FE5C0,pc),r1 ; r1 set to 0x8C26A904
	fldi1 fr3
	fldi0 fr4
	sts.l pr,@-r15
	mov.b r5,@(r0,r4)
	add 0xA0,r0 ; r0 set to 0xCc
	mov.l r3,@(r0,r4)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r4),r3 ; r3 ??? bc r4 is ???
	mov.l @r1,r2
	mov r4,r1 ; r1 ??? bc r4 is ???
	extu.b r3,r3
	mov.w @(loc_8C0FE5B2,pc),r0 ; r0 set to 0x160
	mov.l @r2,r2
	and r5,r3
	shll2 r3
	add r2,r3
	mov.l @(loc_8C0FE5C4,pc),r2 ; r2 set to 0x8C164BD4
	mov.l @(r0,r3),r3
	add 0x50,r1
	mov.w @(loc_8C0FE5B4,pc),r0 ; r0 set to 0x84
	mov.l r3,@(r0,r4)
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s fr3,@(r0,r4)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s fr4,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x80
	mov.l @(loc_8C0FE5C8,pc),r3 ; r3 set to 0x8C1294C8
	fmov.s fr4,@(r0,r4)
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x21,r0 ; r0 set to 0x21
	mov r4,r1
	mov r4,r5 ; r5 ??? bc r4 is ???
	mov 0x00,r6 ; r6 set to 0x00
	add 0x40,r5
	add 0x5C,r1
	mov.l r6,@(0x08,r5)
	mov.l r6,@(0x04,r5)
	mov.l r6,@r5
	mov.b @(r0,r4),r3 ; r3 ??? bc r4 is ???
	mov.l @(loc_8C0FE5CC,pc),r0 ; r0 set to 0x8C164C18
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r3
	mov.l r3,@r1
	mov r6,r0 ; r0 set to 0x00
	nop
	mov.w r0,@(0x1C,r4)
	mova @(loc_8C0FE5D0,pc),r0  ; r0 set to 0x8C0FE5D0
	fmov.s @r0,fr4
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r4),r3
	mov 0x68,r0 ; r0 set to 0x68
	mov.l @(loc_8C0FE5D4,pc),r5 ; r5 set to 0x8C164C30
	extu.b r3,r3
	mov r3,r1
	shll r3
	add r1,r3
	shll2 r3
	add r5,r3
	fmov.s @r3,fr3
	fmul fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r4),r3
	mov 0x04,r0 ; r0 set to 0x04
	extu.b r3,r3
	mov r3,r1
	shll r3
	add r1,r3
	shll2 r3
	add r5,r3
	fmov.s @(r0,r3),fr3
	mov 0x6C,r0 ; r0 set to 0x6c
	fmul fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r4),r3
	extu.b r3,r3
	mov r3,r1
	shll r3
	add r1,r3
	shll2 r3
	mov 0x08,r0 ; r0 set to 0x08
	add r3,r5 ; r5 ??? bc r3 is ???
	fmov.s @(r0,r5),fr3
	mov 0x70,r0 ; r0 set to 0x70
	lds.l @r15+,pr
	fmul fr4,fr3
	rts
	fmov.s fr3,@(r0,r4)

;=============================================
loc_8C0FE516:
	mov.l @(0xC0,PC),r1
	mov.w @(0x9C,PC),r0
	mov.w @(0x98,PC),r3
	fldi1 fr4
	sts.l pr,@-r15
	mov.l r3,@(r0,r4)
	mov.l @r1,r2
	mov r4,r1
	mov.w @(0x90,PC),r0
	add 0x50,r1
	mov.l @r2,r3
	mov.l @(0xAC,PC),r2
	mov.l @(r0,r3),r3
	mov.w @(0x80,PC),r0
	mov.l r3,@(r0,r4)
	mov 0x74,r0
	fmov fr4,@(r0,r4)
	add 0x0C,r0
	fmov fr4,@(r0,r4)
	mov 0x7C,r0
	fmov fr4,@(r0,r4)
	mov 0x78,r0
	mov.l @(0x84,PC),r3
	fmov fr4,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	mov 0x21,r0
	mov.w @(0x6C,PC),r3
	mov r4,r1
	add 0x40,r1
	mov.l r3,@r1
	mov.b @(r0,r4),r5
	extu.b r5,r0
	cmp/eq 0x02,r0
	bt.s loc_8c0fe566
	mov r0,r5
	mov r5,r0
	nop 
	cmp/eq 0x05,r0
	bf loc_8c0fe572

loc_8C0FE566:
	mov r4,r3
	add 0x40,r3
	mov.l @r3,r1
	mov.w @(0x4E,PC),r2
	add r2,r1
	mov.l r1,@r3

loc_8C0FE572:
	mov 0x21,r0
	mov r4,r1
	mov.b @(r0,r4),r2
	add 0x5C,r1
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(0x5C,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(0x3C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x21,r0
	mov.l @(0x50,PC),r5
	mov.b @(r0,r4),r0
	extu.b r0,r0
	shll2 r0
	mov.w @(r0,r5),r0
	mov.w r0,@(0x1C,r4)
	mov 0x21,r0
	mov.b @(r0,r4),r0
	lds.l @r15+,pr
	extu.b r0,r0
	shll2 r0
	add r5,r0
	mov.w @(0x2,r0),r0
	rts 
	mov.w r0,@(0x1E,r4)

;=============================================
loc_8C0FE5AE:
	#data 0x012c
loc_8C0FE5B0:
	#data 0x041f
loc_8C0FE5B2:
	#data 0x0160
loc_8C0FE5B4:
	#data 0x0084
loc_8c0fe5b6:
	#data 0x0413
loc_8c0fe5b8:
	#data 0x00Cc
loc_8c0fe5ba:
	#data 0x02DC
	#align4

loc_8C0FE5BC:
	#data 0x40001555
loc_8C0FE5C0:
	#data 0x8C26A904
loc_8C0FE5C4:
	#data bank16.loc_8c164BD4
loc_8C0FE5C8:
	#data bank12.loc_8c1294C8
loc_8C0FE5CC:
	#data bank16.loc_8c164C18
loc_8C0FE5D0:
	#data 0x3DCCCCCd
loc_8C0FE5D4:
	#data bank16.loc_8c164C30
loc_8C0FE5D8:
	#data 0x8C26A908
loc_8C0FE5DC:
	#data bank16.loc_8c164BE0
loc_8C0FE5E0:
	#data bank16.loc_8c164C78
loc_8C0FE5E4:
	#data bank16.loc_8c164C9c

;==============================================
loc_8C0FE5E8:
	mov.w @(loc_8C0FE72A,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8C0FE73C,pc),r1 ; r1 set to 0x8C26A908
	mov.w @(loc_8C0FE72C,pc),r2 ; r2 set to 0x411
	fldi1 fr3
	sts.l pr,@-r15
	mov.b r3,@(r0,r4)
	add 0xA0,r0 ; r0 set to 0xCc
	mov.l r2,@(r0,r4)
	mov.l @r1,r3 ; r3 ??
	mov r4,r1 ; r1 ??? bc r4 is ???
	mov.w @(loc_8C0FE72E,pc),r0 ; r0 set to 0x218
	add 0x50,r1
	mov.l @r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(r0,r2),r3
	mov.w @(loc_8C0FE730,pc),r0 ; r0 set to 0x84
	mov.l @(loc_8C0FE740,pc),r2 ; r2 set to 0x8C164BE0
	mov.l r3,@(r0,r4)
	add 0xFC,r0 ; r0 set to 0x80
	fmov.s fr3,@(r0,r4)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s fr3,@(r0,r4)
	mov 0x78,r0 ; r0 set to 0x78
	mov.l @(loc_8C0FE744,pc),r3 ; r3 set to 0x8C1294C8
	fmov.s fr3,@(r0,r4)
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	lds.l @r15+,pr
	mov 0x00,r0 ; r0 set to 0x00
	rts
	mov.w r0,@(0x1C,r4)

;=============================================
loc_8C0FE626:
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C0FE748,pc),r0 ; r0 set to 0x8C164CA8
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

loc_8C0FE63A:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x21,r0
	mov.w @(0xEC,PC),r4
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.l @(0x18,r14),r13
	mov.b @(r0,r14),r3
	add r13,r4
	mov.w @(0xD8,PC),r0
	extu.b r3,r3
	mov r4,r2
	add r2,r3
	mov.b @r3,r1
	tst r1,r1
	bt.s loc_8c0fe720
	mov.b r1,@(r0,r14)
	mov 0x04,r0
	mov r13,r2
	fmov @(r0,r4),fr3
	mov r14,r1
	mov.l @(0xDC,PC),r3
	mov 0x74,r0
	add 0x34,r2
	fmov fr3,@(r0,r14)
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mova @(0xD4,PC),r0
	fmov @r0,fr3
	mov 0x50,r0
	fmov @(r0,r13),fr4
	mov.w @(0xB4,PC),r0
	mov.w @(r0,r13),r3
	tst r3,r3
	bf.s loc_8c0fe688
	fmul fr3,fr4
	fneg fr4

loc_8C0FE688:
	mov 0x34,r0
	mov.l @(0xC4,PC),r1
	fmov @(r0,r14),fr3
	lds r1,fpul
	mov 0x54,r1
	fadd fr4,fr3
	add r13,r1
	fsts fpul,fr0
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x8E,PC),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bf loc_8c0fe700
	mov.w @(0x1C,r14),r0
	mov.l @(0xA8,PC),r4
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mova @(0x9C,PC),r0
	fmov @r0,fr6
	mova @(0xA0,PC),r0
	fmov @r0,fr5
	mova @(0xA0,PC),r0
	fmov @r0,fr4
	mov.w @(0x1C,r14),r0
	mov r0,r3
	mov.w @(0x1E,r14),r0
	add r0,r3
	shll r3
	lds r3,fpul
	mov 0x44,r0
	float fpul,fr3
	fmul fr4,fr3
	fdiv fr5,fr3
	fadd fr6,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r4,r3
	mov.l r3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	mov r0,r3
	mov.w @(0x1E,r14),r0
	add r0,r3
	mov r3,r2
	shll r3
	add r2,r3
	lds r3,fpul
	mov 0x48,r0
	float fpul,fr3
	fmul fr4,fr3
	fdiv fr5,fr3
	fadd fr6,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r4,r3
	mov.l r3,@(r0,r14)

loc_8C0FE700:
	mov.w @(0x34,PC),r0
	lds.l @r15+,pr
	fmov @(r0,r13),fr15
	mov 0x78,r0
	fmov @(r0,r13),fr5
	mov 0x74,r0
	fmov fr15,fr7
	fmov fr15,fr6
	fmov @r15+,fr15
	fmov @(r0,r13),fr4
	add 0x10,r0
	mov.l @(0x4C,PC),r3
	mov.l @r15+,r13
	mov.l @(r0,r14),r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0FE720:
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0FE72A:
	#data 0x012c
loc_8C0FE72C:
	#data 0x0411
loc_8C0FE72E:
	#data 0x0218
loc_8C0FE730:
	#data 0x0084
loc_8c0fe732:
	#data 0x02A4
loc_8c0fe734:
	#data 0x0130
loc_8c0fe736:
	#data 0x01A0
loc_8c0fe738:
	#data 0x0080
	#align4

loc_8C0FE73C:
	#data 0x8C26A908
loc_8C0FE740:
	#data bank16.loc_8c164BE0
loc_8C0FE744:
	#data bank12.loc_8c1294C8
loc_8C0FE748:
	#data bank16.loc_8c164CA8
loc_8c0fe74c:
	#data 0x42200000
loc_8c0fe750:
	#data 0x434DB6Db
loc_8c0fe754:
	#data 0x3F000000
loc_8c0fe758:
	#data 0x0000FFFf
loc_8c0fe75c:
	#data 0x43B40000
loc_8c0fe760:
	#data 0x47800000
loc_8C0FE764:
	#data bank10.loc_8c10837c

;==============================================
loc_8C0FE768:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x21,r0 ; r0 set to 0x21
	mov.w @(loc_8C0FE8BC,pc),r13 ; r13 set to 0x2A4
	mov.l r12,@-r15
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	fmov.s fr13,@-r15
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov.b @(r0,r14),r3
	add r4,r13 ; r13 ??? bc r4 is ???
	mov.w @(loc_8C0FE8BE,pc),r0 ; r0 set to 0x12c
	extu.b r3,r3
	mov r13,r2
	add r2,r3
	mov.b @r3,r1
	tst r1,r1
	bf/s loc_8C0FE796
	mov.b r1,@(r0,r14)
	bra loc_8C0FE8Ac
	nop

loc_8c0fe796:
	mov r4,r2
	mov.l @(loc_8c0fe8c8,pc),r3
	mov r14,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mova @(loc_8C0FE8CC,pc),r0
	fmov.s @r0,fr3
	mov 0x50,r0
	fmov.s @(r0,r4),fr4
	mov.w @(loc_8C0FE8C0,pc),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bf/s loc_8c0fe7b8
	fmul fr3,fr4
	fneg fr4

loc_8c0fe7b8:
	mov 0x34,r0
	mov.l @(loc_8C0FE8D0,pc),r1
	fmov.s @(r0,r14),fr3
	lds r1,fpul
	mov 0x54,r1
	fadd fr4,fr3
	add r4,r1
	fsts fpul,fr0
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C0FE8C2,pc),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c0fe89a
	mov.w @(0x1C,r14),r0
	mov.l @(loc_8C0FE8DC,pc),r12
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mova @(loc_8C0FE8D4,pc),r0
	fmov.s @r0,fr13
	mova @(loc_8C0FE8D8,pc),r0
	fmov.s @r0,fr14
	mova @(loc_8C0FE8E0,pc),r0
	fmov.s @r0,fr15
	mov.w @(0x1C,r14),r0
	mov r0,r3
	mov.w @(0x1E,r14),r0
	add r0,r3
	shll r3
	lds r3,fpul
	mov 0x44,r0
	float fpul,fr3
	fmul fr13,fr3
	fdiv fr14,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r12,r3
	mov.l r3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	mov r0,r3
	mov.w @(0x1E,r14),r0
	add r0,r3
	mov r3,r2
	shll r3
	add r2,r3
	lds r3,fpul
	mov 0x48,r0
	float fpul,fr3
	fmul fr13,fr3
	fdiv fr14,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r12,r3
	mov.l r3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	mov.l @(loc_8c0fe8e4,pc),r3
	mov r0,r1
	mov.w @(loc_8C0FE8C4,pc),r0
	jsr @r3
	nop
	lds r0,fpul
	mov.l @(loc_8c0fe8e8,pc),r3
	float fpul,fr3
	fmov fr3,fr2
	fmul fr13,fr2
	fdiv fr14,fr2
	fmov fr2,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r3
	and r12,r4
	fmov fr0,fr3
	mov 0x04,r0
	fmov fr15,fr0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	fmov.s @(r0,r13),fr3
	mov 0x78,r0
	mov.l @(loc_8c0fe8e4,pc),r3
	fmul fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	mov r0,r1
	mov.w @(loc_8C0FE8C4,pc),r0
	jsr @r3
	nop
	lds r0,fpul
	mov.l @(loc_8c0fe8ec,pc),r3
	float fpul,fr3
	fmov fr3,fr2
	fmul fr13,fr2
	fdiv fr14,fr2
	fmov fr2,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r3
	and r12,r4
	fmov fr0,fr3
	mov 0x04,r0
	fmov fr15,fr0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	fmov.s @(r0,r13),fr3
	bra loc_8c0fe8a8
	fmul fr3,fr2

loc_8c0fe89a:
	mov 0x04,r0
	fldi1 fr3
	fmov.s @(r0,r13),fr2
	mov 0x78,r0
	fmul fr3,fr2
	fmov.s fr2,@(r0,r14)
	fldi0 fr2

loc_8c0fe8a8:
	mov 0x7C,r0
	fmov.s fr2,@(r0,r14)

loc_8C0FE8AC:
	lds.l @r15+,pr
	fmov.s @r15+,fr13
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0FE8BC:
	#data 0x02A4
loc_8C0FE8BE:
	#data 0x012c
loc_8c0fe8c0:
	#data 0x0130
loc_8c0fe8c2:
	#data 0x01A0
loc_8c0fe8c4:
	#data 0x0168
	#align4

loc_8C0FE8C8:
	#data bank12.loc_8c1294C8
loc_8c0fe8cc:
	#data 0x42200000
loc_8c0fe8d0:
	#data 0x434DB6Db
loc_8c0fe8d4:
	#data 0x47800000
loc_8c0fe8d8:
	#data 0x43B40000
loc_8c0fe8dc:
	#data 0x0000FFFf
loc_8c0fe8e0:
	#data 0x3F000000
loc_8C0FE8E4:
	#data bank12.loc_8c1292D4
loc_8C0FE8E8:
	#data bank11.loc_8c11E860
loc_8C0FE8EC:
	#data bank11.loc_8c11E2E0

;==============================================
loc_8C0FE8F0:
	mov.w @(0xFC,PC),r0
	mov 0x00,r3
	sts.l pr,@-r15
	mov.l @(0x8,r4),r5
	mov.b r3,@(r0,r4)
	mov 0x02,r3
	mov.b @(0x4,r5),r0
	mov.b r0,@(0x4,r4)
	extu.b r0,r0
	cmp/ge r3,r0
	bt loc_8c0fe952
	mov.w @(0xE6,PC),r0
	mov.b @(r0,r5),r1
	tst r1,r1
	bt.s loc_8c0fe952
	mov.b r1,@(r0,r4)
	mov r5,r2
	mov.l @(0xE0,PC),r3
	mov r4,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov r5,r2
	mov.l @(0xD4,PC),r3
	mov r4,r1
	add 0x74,r2
	add 0x74,r1
	jsr @r3
	mov 0x10,r0
	mov r5,r2
	mov.l @(0xC4,PC),r3
	mov r4,r1
	add 0x50,r2
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov r5,r3
	add 0x40,r3
	mov 0x44,r0
	mov.l @r3,r1
	mov r4,r2
	add 0x40,r2
	mov.l r1,@r2
	mov.l @(r0,r5),r3
	mov.l r3,@(r0,r4)
	mov 0x48,r0
	mov.l @(r0,r5),r2
	mov.l r2,@(r0,r4)

loc_8C0FE952:
	lds.l @r15+,pr
	rts
	nop

;=============================================
loc_8C0FE958:
	mov.l r14,@-r15
	mov 0x01,r3 ; r3 set to 0x01
	mov.w @(loc_8C0FE9F0,pc),r0 ; r0 set to 0x12c
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	bsr loc_8C0FEC30
	mov r14,r4
	mov.w @(0x1C,r14),r0
	mov.l @(loc_8C0FE9FC,pc),r4 ; r4 set to 0xFFFf
	add 0x01,r0 ; r0 set to 0x12d
	mov.w r0,@(0x1C,r14)
	mova @(loc_8C0FEA00,pc),r0  ; r0 set to 0x8C0FEA00
	fmov.s @r0,fr6
	mova @(loc_8C0FEA04,pc),r0  ; r0 set to 0x8C0FEA04
	fmov.s @r0,fr5
	mova @(loc_8C0FEA08,pc),r0  ; r0 set to 0x8C0FEA08
	fmov.s @r0,fr4 ; r4 ??
	mov.w @(0x1C,r14),r0
	shll r0 ; r0 set to 0x181FD410
	lds r0,fpul
	mov 0x44,r0 ; r0 set to 0x44
	float fpul,fr3
	fmul fr6,fr3 ; r3 ??? bc r6 is ???
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r4,r3
	mov.l r3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	mov r0,r3 ; r3 set to 0x44
	shll r0 ; r0 set to 0x88
	add r3,r0 ; r0 set to 0xCc
	lds r0,fpul
	float fpul,fr3
	fmul fr6,fr3 ; r3 ??? bc r6 is ???
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	mov 0x48,r0 ; r0 set to 0x48
	and r4,r3
	mov.l r3,@(r0,r14)
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8C0FE9Ca
	mov.w @(0x1E,r14),r0
	add 0xFF,r0 ; r0 set to 0x47
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0 ; r0 ??
	cmp/pl r0
	bt loc_8C0FE9Ea
	mov.b @(0x05,r14),r0
	add 0x01,r0
	bra loc_8C0FE9Ea
	mov.b r0,@(0x05,r14)

loc_8c0fe9ca:
	mov.l @(loc_8C0FEA0C,pc),r1
	mov 0x74,r0
	fmov.s @(r0,r14),fr2
	lds r1,fpul
	fldi0 fr1
	fsts fpul,fr3
	fsub fr3,fr2
	fcmp/gt fr2,fr1
	bf/s loc_8c0fe9ea
	fmov.s fr2,@(r0,r14)
	mov.b @(0x04,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8c0fe9f0,pc),r0
	mov.b r3,@(r0,r14)

loc_8C0FE9EA:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0FE9F0:
	#data 0x012c
	#align4

loc_8C0FE9F4:
	#data bank12.loc_8c1294C8
loc_8C0FE9F8:
	#data bank12.loc_8c1294Bc
loc_8C0FE9FC:
	#data 0x0000FFFf
loc_8C0FEA00:
	#data 0x47800000
loc_8C0FEA04:
	#data 0x43B40000
loc_8C0FEA08:
	#data 0x3F000000
loc_8c0fea0c:
	#data 0x3D088889

;==============================================
loc_8C0FEA10:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c0fec30
	mov r4,r14
	mov r14,r3
	mov r14,r2
	add 0x5C,r3
	add 0x40,r2
	mov.l @r3,r3
	mov.l @r2,r1
	mov 0x44,r0
	add r3,r1
	mov.l r1,@r2
	mov r14,r2
	add 0x5C,r2
	mov.l @(r0,r14),r1
	mov.l @r2,r3
	mov r14,r2
	add 0x5C,r2
	add r3,r1
	mov.l r1,@(r0,r14)
	mov 0x48,r0
	mov.l @(r0,r14),r1
	mov.l @r2,r3
	add r3,r1
	mov.l r1,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf.s loc_8c0fea68
	mov 0x01,r4
	mov.w @(0x1C,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(0xA4,PC),r0
	fmov @r0,fr2
	float fpul,fr3
	fcmp/eq fr2,fr3
	bf loc_8c0fea68
	mov r4,r0
	nop 
	mov.b r0,@(0x5,r14)

loc_8C0FEA68:
	mov.b @(0x6,r14),r0
	tst r0,r0
	bf loc_8c0fea84
	mov.w @(0x1C,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(0x8C,PC),r0
	fmov @r0,fr2
	float fpul,fr3
	fcmp/eq fr2,fr3
	bf loc_8c0fea84
	mov r4,r0
	nop 
	mov.b r0,@(0x6,r14)

loc_8C0FEA84:
	mov.b @(0x5,r14),r0
	tst r0,r0
	bt loc_8c0feab4
	mov 0x68,r1
	add r14,r1
	mov 0x50,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	mov 0x6C,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x70,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x58,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)

loc_8C0FEAB4:
	mov.b @(0x6,r14),r0
	tst r0,r0
	bt loc_8c0feaf8
	mov.l @(0x4C,PC),r1
	mov 0x78,r0
	fmov @(r0,r14),fr2
	lds r1,fpul
	fldi0 fr1
	fsts fpul,fr3
	fsub fr3,fr2
	fcmp/gt fr1,fr2
	bt.s loc_8c0feaf8
	fmov fr2,@(r0,r14)
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x24,PC),r0
	mov.b r3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0feaf8
	mov.l @(0x28,PC),r2
	jsr @r2
	nop 
	bsr loc_8c0fe24a
	mov.l @(0x18,r14),r4
	lds.l @r15+,pr
	mov.l @(0x20,PC),r2
	mov 0x11,r5
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C0FEAF8:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0feafe:
	#data 0x012C
	#align4

loc_8c0feb00:
	#data 0x42C80000
loc_8c0feb04:
	#data 0x43200000
loc_8c0feb08:
	#data 0x3D4CCCCd
loc_8C0FEB0C:
	#data bank03.loc_8c030F9e
loc_8C0FEB10:
	#data bank04.loc_8c04218c

;===============================================
loc_8C0FEB14:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c0feb38
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c0febb0
	mov.b @(0x5,r14),r0
	mov 0x01,r3
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0xE8,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0FEB38:
	bsr loc_8c0fec30
	mov r14,r4
	mov 0x5C,r1
	add r14,r1
	mov 0x50,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	mov 0x60,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x64,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x58,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.b @(0x6,r14),r0
	tst r0,r0
	bf loc_8c0feb7c
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c0feb7c
	mov 0x01,r0
	mov.b r0,@(0x6,r14)

loc_8C0FEB7C:
	mov.b @(0x6,r14),r0
	tst r0,r0
	bt loc_8c0febb0
	mova @(0xA0,PC),r0
	fmov @r0,fr4
	mov 0x78,r0
	fmov @(r0,r14),fr3
	fsub fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x7C,r0
	fmov @(r0,r14),fr2
	fsub fr4,fr2
	fmov fr2,@(r0,r14)
	add 0x04,r0
	fmov @(r0,r14),fr3
	fldi0 fr2
	fsub fr4,fr3
	fcmp/gt fr3,fr2
	bf.s loc_8c0febb0
	fmov fr3,@(r0,r14)
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x70,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0FEBB0:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0FEBB6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8C0FEC30
	mov r4,r14
	mova @(loc_8C0FEC28,pc),r0  ; r0 init to 0x8C0FEC28
	fmov.s @r0,fr4
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r14),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r14),fr2
	fadd fr4,fr2
	fmov.s fr2,@(r0,r14)
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8C0FEBEc
	mov.w @(0x1C,r14),r0
	add 0xFF,r0 ; r0 set to 0x53
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_8C0FEC1a
	mov.b @(0x05,r14),r0
	add 0x01,r0
	bra loc_8C0FEC1a
	mov.b r0,@(0x05,r14)

loc_8c0febec:
	mova @(loc_8C0FEC2C,pc),r0
	fmov.s @r0,fr4
	mov 0x78,r0
	fmov.s @(r0,r14),fr3
	fsub fr4,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x7C,r0
	fmov.s @(r0,r14),fr2
	fsub fr4,fr2
	fmov.s fr2,@(r0,r14)
	add 0x04,r0
	fmov.s @(r0,r14),fr3
	fldi0 fr2
	fsub fr4,fr3
	fcmp/gt fr3,fr2
	bf/s loc_8c0fec1a
	fmov.s fr3,@(r0,r14)
	mov.b @(0x04,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0FEC20,pc),r0
	mov.b r3,@(r0,r14)

loc_8C0FEC1A:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0fec20:
	#data 0x012c
	#align4

loc_8C0FEC24:
	#data 0x3DCCCCCd
loc_8C0FEC28:
	#data 0x3E000000
loc_8c0fec2c:
	#data 0x3D4CCCCd

;==============================================
loc_8c0fec30:
	sts.l pr,@-r15
	mov.l @(0x18,r4),r5
	mov r4,r1
	mov.l @(loc_8c0fec90,pc),r3
	add 0x34,r1
	mov r5,r2
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mova @(loc_8C0FEC94,pc),r0
	fmov.s @r0,fr3
	mov 0x50,r0
	fmov.s @(r0,r5),fr4
	mov.w @(loc_8C0FEC8A,pc),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bf/s loc_8c0fec56
	fmul fr3,fr4
	fneg fr4

loc_8c0fec56:
	mov 0x34,r0
	mov.l @(loc_8C0FEC98,pc),r1
	fmov.s @(r0,r4),fr3
	lds r1,fpul
	mov 0x54,r1
	fadd fr4,fr3
	add r5,r1
	fsts fpul,fr0
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	lds.l @r15+,pr
	fmac fr0,fr3,fr2
	rts
	fmov.s fr2,@(r0,r4)

loc_8C0FEC76:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0FEC8C,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;=============================================
loc_8C0FEC84:
	mov.l @(loc_8C0FEC9C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0fec8a:
	#data 0x0130
loc_8C0FEC8C:
	#data 0x012c
	#align4

loc_8C0FEC90:
	#data bank12.loc_8c1294C8
loc_8c0fec94:
	#data 0x42200000
loc_8c0fec98:
	#data 0x434DB6Db
loc_8C0FEC9C:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0FECA0:
	mov.l @(loc_8C0FEDD4,pc),r1 ; r1 set to 0x42480000
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r4),fr2
	mov 0x3C,r3 ; r3 set to 0x3c
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0 ; r0 set to 0x39
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0 ; r0 ??
	cmp/ge r3,r0
	bf loc_8C0FECC2
	mov.l @(loc_8C0FEDD8,pc),r2 ; r2 set to 0x8C0450C0
	jmp @r2
	nop

loc_8C0FECC2:
	rts
	nop

;=============================================
loc_8c0fecc6:
	mov.l r14,@-r15
	mov 0x08,r5
	sts.l pr,@-r15
	mov.l @(loc_8c0feddc,pc),r3
	mov r4,r14
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c0fed0e
	mov r0,r4
	mov.l @(loc_8c0fede0,pc),r3
	mov 0x01,r5
	mov.l @(loc_8C0FEDE4,pc),r2
	mov.w @(loc_8C0FEDD2,pc),r0
	mov.b r5,@(r0,r4)
	add 0xA0,r0
	mov.l r3,@(0x10,r4)
	mov.l r5,@(r0,r4)
	add 0xB8,r0
	mov.l @r2,r3
	mov.l @r3,r1
	mov.l @(0x28,r1),r3
	mov.l r3,@(r0,r4)
	mov.l r14,@(0x18,r4)
	mov.w @(0x1C,r14),r0
	mov.w r0,@(0x1C,r4)
	mov 0x34,r0
	fmov.s @(r0,r14),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0
	fmov.s @(r0,r14),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x3C,r0
	fmov.s @(r0,r14),fr3
	fmov.s fr3,@(r0,r4)

loc_8c0fed0e:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8C0FED14:
	mov.l r14,@-r15
	fmov.s fr13,@-r15
	fmov.s fr12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0FEDE8,pc),r3 ; r3 set to 0x8C26A530
	mov 0x08,r0 ; r0 set to 0x08
	mov r4,r14
	mov r3,r2 ; r2 set to 0x8C26A530
	mov.l r3,@r15
	fmov.s @(r0,r2),fr0 ; r0 ??
	mova @(loc_8C0FEDEC,pc),r0  ; r0 set to 0x8C0FEDEc
	fmov.s @r0,fr3 ; r3 ??
	mov 0x32,r2 ; r2 set to 0x32
	mov.w @(0x1C,r14),r0
	fdiv fr0,fr3
	fmov.s @r3,fr13
	add 0x01,r0 ; r0 set to 0x8C0FEDEd
	mov.l @(loc_8C0FEDF0,pc),r3 ; r3 set to 0x8C11E750
	mul.l r2,r0 ; r0 ??
	sts macl,r0
	lds r0,fpul
	float fpul,fr2
	fmul fr2,fr3 ; r3 ??
	jsr @r3
	fmov fr3,fr12
	mova @(loc_8C0FEDF4,pc),r0  ; r0 set to 0x8C0FEDF4
	mov.l @(loc_8C0FEDE8,pc),r2 ; r2 set to 0x8C26A530
	fmov.s @r0,fr3
	mov 0x34,r0 ; r0 set to 0x34
	mov 0x32,r3 ; r3 set to 0x32
	fadd fr3,fr0 ; r0 ??
	fmac fr0,fr12,fr13
	fmov.s fr13,@(r0,r14)
	mova @(loc_8C0FEDF8,pc),r0  ; r0 set to 0x8C0FEDF8
	fmov.s @r0,fr2 ; r2 ??
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0x01,r0 ; r0 set to 0x39
	mul.l r3,r0 ; r0 ??
	sts macl,r0
	lds r0,fpul
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s @(r0,r2),fr1
	mov 0x3C,r0 ; r0 set to 0x3c
	float fpul,fr2
	fneg fr2
	fadd fr1,fr2
	fmov.s fr2,@(r0,r14)
	bsr loc_8C0FECC6
	mov r14,r4
	mov.w @(0x1C,r14),r0
	mov 0x3C,r3 ; r3 set to 0x3c
	add 0x01,r0 ; r0 set to 0x3d
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0 ; r0 ??
	cmp/ge r3,r0
	bf loc_8C0FED9a
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0FEDD8,pc),r1 ; r1 set to 0x8C0450C0
	fmov.s @r15+,fr12
	fmov.s @r15+,fr13
	jmp @r1
	mov.l @r15+,r14

loc_8C0FED9A:
	add 0x04,r15
	lds.l @r15+,pr
	fmov.s @r15+,fr12
	fmov.s @r15+,fr13
	rts
	mov.l @r15+,r14

;=============================================
;unused
loc_8c0feda6:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x30,PC),r3
	mov 0x08,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0fedca
	mov r0,r4
	mov.w @(0x12,PC),r0
	mov 0x00,r3
	mov.l @(0x38,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r15,r3
	mov.l r3,@(0x18,r4)

loc_8c0fedca:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0fedd2:
	#data 0x012C
	#align4

loc_8C0FEDD4:
	#data 0x42480000
loc_8C0FEDD8:
	#data bank04.loc_8c0450C0
loc_8C0FEDDC:
	#data bank04.loc_8c044F12
loc_8C0FEDE0:
	#data loc_8c0fECA0
loc_8c0fede4:
	#data 0x8C26A908
loc_8C0FEDE8:
	#data 0x8C26A530
loc_8C0FEDEC:
	#data 0x44200000
loc_8C0FEDF0:
	#data bank11.loc_8c11E750
loc_8C0FEDF4:
	#data 0xBF000000
loc_8C0FEDF8:
	#data 0xC2480000
loc_8C0FEDFC:
	#data loc_8c0fED14

;==============================================
loc_8C0FEE00:
	mov.l @(0x128,PC),r1
	sts.l pr,@-r15
	mov.w @(0x1C,r4),r0
	lds r1,fpul
	add 0x01,r0
	mov.l @(0x124,PC),r3
	mov.w r0,@(0x1C,r4)
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	mov r0,r1
	jsr @r3
	mov 0x14,r0
	tst r0,r0
	bf loc_8c0fee32
	mov.l @(0x10C,PC),r1
	mov 0x38,r0
	fmov @(r0,r4),fr1
	lds r1,fpul
	fsts fpul,fr2
	fsub fr2,fr1
	fmov fr1,@(r0,r4)

loc_8C0FEE32:
	mov.w @(0x1C,r4),r0
	mov 0x3C,r3
	cmp/ge r3,r0
	bf loc_8c0fee40
	mov.l @(0xFC,PC),r1
	jmp @r1
	lds.l @r15+,pr

loc_8C0FEE40:
	lds.l @r15+,pr
	rts 
	nop 

;=============================================
loc_8c0fee46:
	mov.l r14,@-r15
	mov 0x08,r5
	sts.l pr,@-r15
	mov.l @(loc_8c0fef3c,pc),r3
	mov r4,r14
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c0fee8c
	mov r0,r4
	mov.l @(loc_8c0fef40,pc),r3
	mov 0x01,r5
	mov.l @(loc_8C0FEF44,pc),r2
	mov.w @(loc_8C0FEF26,pc),r0
	mov.b r5,@(r0,r4)
	add 0xA0,r0
	mov.l r3,@(0x10,r4)
	mov.l r5,@(r0,r4)
	mov 0x70,r0
	mov.l @r2,r3
	mov.l @r3,r1
	mov.l @(r0,r1),r3
	add 0x14,r0
	mov.l r3,@(r0,r4)
	mov 0x34,r0
	mov.l r14,@(0x18,r4)
	fmov.s @(r0,r14),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0
	fmov.s @(r0,r14),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x3C,r0
	fmov.s @(r0,r14),fr3
	fmov.s fr3,@(r0,r4)

loc_8c0fee8c:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8C0FEE92:
	mov.l r14,@-r15
	mov r4,r14
	fmov.s fr12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0FEF4C,pc),r2 ; r2 set to 0x8C11E730
	mov.l @(loc_8C0FEF48,pc),r3 ; r3 set to 0x8C26A530
	jsr @r2
	fmov.s @r3,fr12
	mov r0,r1
	mov.l @(loc_8C0FEF30,pc),r3 ; r3 set to 0x8C1292D4
	mov.w @(loc_8C0FEF28,pc),r0 ; r0 set to 0xC80
	jsr @r3
	nop
	mov.w @(loc_8C0FEF2A,pc),r2 ; r2 set to 0xF9C0
	add r2,r0 ; r0 set to 0x10640
	lds r0,fpul
	mov 0x34,r0 ; r0 set to 0x34
	float fpul,fr3
	fadd fr3,fr12
	fmov.s fr12,@(r0,r14)
	mova @(loc_8C0FEF50,pc),r0  ; r0 set to 0x8C0FEF50
	fmov.s @r0,fr3 ; r3 ??
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	mov r0,r3 ; r3 set to 0x38
	lds r3,fpul
	mova @(loc_8C0FEF54,pc),r0  ; r0 set to 0x8C0FEF54
	fmov.s @r0,fr2 ; r2 ??
	mov 0x3C,r0 ; r0 set to 0x3c
	float fpul,fr3
	fadd fr2,fr3 ; r3 ??? bc r2 is ???
	fmov.s fr3,@(r0,r14)
	bsr loc_8C0FEE46
	mov r14,r4
	mov.w @(0x1C,r14),r0
	mov 0x0A,r3 ; r3 set to 0x0a
	add 0x01,r0 ; r0 set to 0x3d
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0 ; r0 ??
	cmp/ge r3,r0
	bf loc_8C0FEEF2
	lds.l @r15+,pr
	mov.l @(loc_8C0FEF38,pc),r1 ; r1 set to 0x8C0450C0
	mov r14,r4
	fmov.s @r15+,fr12
	jmp @r1
	mov.l @r15+,r14

loc_8C0FEEF2:
	lds.l @r15+,pr
	fmov.s @r15+,fr12
	rts
	mov.l @r15+,r14

;=============================================
loc_8c0feefa:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x3C,PC),r3
	mov 0x08,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0fef1e
	mov r0,r4
	mov.w @(0x12,PC),r0
	mov 0x00,r3
	mov.l @(0x40,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r15,r3
	mov.l r3,@(0x18,r4)

loc_8C0Fef1E:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0fef26:
	#data 0x012C
loc_8C0FEF28:
	#data 0x0C80
loc_8C0FEF2A:
	#data 0xF9C0
	#align4

loc_8C0FEF2c:
	#data 0x42480000
loc_8C0FEF30:
	#data bank12.loc_8c1292D4
loc_8C0FEF34:
	#data 0x447A0000
loc_8C0FEF38:
	#data bank04.loc_8c0450C0
loc_8C0FEF3C:
	#data bank04.loc_8c044F12
loc_8C0FEF40:
	#data loc_8c0fEE00
loc_8c0fef44:
	#data 0x8C26A908
loc_8C0FEF48:
	#data 0x8C26A530
loc_8C0FEF4C:
	#data bank11.loc_8c11e730
loc_8C0FEF50:
	#data 0xC32F0000
loc_8C0FEF54:
	#data 0xC5200000
loc_8C0FEF58:
	#data loc_8c0fEE92

;==============================================
loc_8C0FEF5C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@(0x4,r15)
	mov.l r6,@r15
	mov r7,r0
	nop 
	mov.b r0,@(0x8,r15)
	mov 0x18,r0
	mov.b @(r0,r15),r13
	mov 0x01,r6
	mov.l @(0x118,PC),r3
	mov r13,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0feff2
	mov r0,r14
	mov.l @(0x110,PC),r3
	mov r14,r1
	mov.w @(0xFE,PC),r0
	add 0x34,r1
	mov.b @r3,r2
	add 0x01,r2
	mov.b r2,@r3
	mov 0x00,r3
	mov.l @(0x104,PC),r2
	mov.b r3,@(r0,r14)
	mov.l r2,@(0x10,r14)
	mov.l @(0x100,PC),r3
	mov.l @(0x4,r15),r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0xE8,PC),r0
	mov.w @(0xE4,PC),r1
	mov.l r1,@(r0,r14)
	mov.l @r15,r0
	cmp/eq 0x01,r0
	bf loc_8c0fefc4
	mov.w @(0xDC,PC),r0
	mov.w @(0xDA,PC),r1
	mov.l @(r0,r14),r0
	add r14,r1
	mov.l @(0xE8,PC),r2
	or 0x10,r0
	mov.l @(0xE0,PC),r3
	mov.l r0,@r1
	mov r14,r1
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0

loc_8C0FEFC4:
	mov r13,r5
	bsr loc_8c0ff0c4
	mov r14,r4
	mov r13,r5
	bsr loc_8c0ff14a
	mov r14,r4
	mov r13,r5
	bsr loc_8c0ff21c
	mov r14,r4
	mov r13,r5
	bsr loc_8c0ff296
	mov r14,r4
	mov.b @(0x8,r15),r0
	mov r13,r7
	mov.l @r15,r5
	mov.l @(0x4,r15),r4
	mov r0,r6
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @(0xB8,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0FEFF2:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0FEFFC:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x14,r0
	mov.l @(0x88,PC),r3
	mov.l r4,@(0x4,r15)
	mov.l r6,@r15
	mov 0x01,r6
	mov.b @(r0,r15),r13
	mov r13,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0ff07e
	mov r0,r14
	mov.l @(0x74,PC),r3
	mov r14,r1
	mov.w @(0x64,PC),r0
	add 0x34,r1
	mov.b @r3,r2
	add 0x01,r2
	mov.b r2,@r3
	mov 0x00,r3
	mov.l @(0x68,PC),r2
	mov.b r3,@(r0,r14)
	mov.l r2,@(0x10,r14)
	mov.l @(0x68,PC),r3
	mov.l @(0x4,r15),r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x4E,PC),r0
	mov.w @(0x4A,PC),r1
	mov.l r1,@(r0,r14)
	mov.l @r15,r0
	cmp/eq 0x01,r0
	bf loc_8c0ff05e
	mov.w @(0x42,PC),r0
	mov.w @(0x40,PC),r1
	mov.l @(r0,r14),r0
	add r14,r1
	mov.l @(0x50,PC),r2
	or 0x10,r0
	mov.l @(0x48,PC),r3
	mov.l r0,@r1
	mov r14,r1
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0

loc_8C0FF05E:
	mov r13,r5
	bsr loc_8c0ff0c4
	mov r14,r4
	mov r13,r5
	bsr loc_8c0ff14a
	mov r14,r4
	mov r13,r5
	bsr loc_8c0ff21c
	mov r14,r4
	mov r14,r4
	mov r13,r5
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c0ff296
	mov.l @r15+,r14
 
loc_8C0FF07E:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ff088:
	#data 0x012c
loc_8c0ff08a:
	#data 0x0181
loc_8c0ff08c:
	#data 0x00Cc
	#align4

loc_8C0FF090:
	#data bank04.loc_8c044F12
loc_8C0FF094:
	#data 0x8C289650
loc_8C0FF098:
	#data loc_8c0fF0A8
loc_8C0FF09C:
	#data bank12.loc_8c1294C8
loc_8C0FF0A0:
	#data bank16.loc_8c164CD0
loc_8C0FF0A4:
	#data loc_8c0fDFB2

;==============================================
loc_8C0FF0A8:
	mov.w @(0x1C,r4),r0
	mov 0x0A,r3 ; r3 set to 0x0a
	cmp/gt r3,r0
	bf loc_8C0FF0Be
	mov.l @(loc_8C0FF1F4,pc),r1 ; r1 set to 0x8C289650
	mov.b @r1,r2
	add 0xFF,r2
	mov.b r2,@r1 ; r1 ??? bc r2 is ???
	mov.l @(loc_8C0FF1F8,pc),r1 ; r1 set to 0x8C0450C0
	jmp @r1
	nop

loc_8C0FF0BE:
	add 0x01,r0
	rts
	mov.w r0,@(0x1C,r4)

;=============================================
loc_8C0FF0C4:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x130,PC),r3
	mov 0x01,r6
	mov.l r4,@r15
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0ff100
	mov r0,r4
	mov.w @(0x10C,PC),r0
	mov 0x01,r3
	mov.l @(0x124,PC),r1
	mov.l @(0x120,PC),r2
	mov.b r3,@(r0,r4)
	add 0x1C,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov.w @(0xFA,PC),r0
	mov.w @(0xFA,PC),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.w @(0xF4,PC),r2
	mov.l @r15,r3
	mov.w @(0xF2,PC),r0
	add r3,r2
	mov.l r2,@(r0,r4)

loc_8C0FF100:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;=============================================
loc_8C0FF108:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	mov 0x04,r3 ; r3 set to 0x04
	cmp/ge r3,r0
	bf loc_8C0FF120
	lds.l @r15+,pr
	mov.l @(loc_8C0FF1F8,pc),r1 ; r1 set to 0x8C0450C0
	mov r14,r4
	jmp @r1
	mov.l @r15+,r14

loc_8C0FF120:
	mov.l @(loc_8C0FF208,pc),r4 ; r4 set to 0x8C164CDc
	mov r0,r6
	mov.l @(loc_8C0FF20C,pc),r3 ; r3 set to 0x8C0FD914
	mov r14,r5
	jsr @r3
	add 0x04,r5
	mov 0x78,r0 ; r0 set to 0x78
	fmov fr0,fr3 ; r3 ??
	fmov.s fr0,@(r0,r14)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s fr3,@(r0,r14)
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s @(r0,r14),fr3
	add 0x08,r0 ; r0 set to 0x80
	fmov.s fr3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0x01,r0 ; r0 set to 0x81
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;=============================================
loc_8C0FF14A:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xAC,PC),r3
	mov 0x01,r6
	mov.l r4,@r15
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0ff186
	mov r0,r4
	mov.w @(0x86,PC),r0
	mov 0x01,r3
	mov.l @(0xA0,PC),r1
	mov.l @(0xA8,PC),r2
	mov.b r3,@(r0,r4)
	add 0x20,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov.w @(0x74,PC),r0
	mov.w @(0x7A,PC),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.w @(0x6E,PC),r2
	mov.l @r15,r3
	mov.w @(0x6C,PC),r0
	add r3,r2
	mov.l r2,@(r0,r4)

loc_8C0FF186:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;=============================================
loc_8C0FF18E:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	mov 0x05,r3 ; r3 set to 0x05
	cmp/ge r3,r0
	bf loc_8C0FF1A6
	lds.l @r15+,pr
	mov.l @(loc_8C0FF1F8,pc),r1 ; r1 set to 0x8C0450C0
	mov r14,r4
	jmp @r1
	mov.l @r15+,r14

loc_8C0FF1A6:
	mov.l @(loc_8C0FF214,pc),r4 ; r4 set to 0x8C164CEc
	mov r0,r6
	mov.l @(loc_8C0FF20C,pc),r3 ; r3 set to 0x8C0FD914
	mov r14,r5
	jsr @r3
	add 0x04,r5
	mov 0x50,r0 ; r0 set to 0x50
	fmov fr0,fr3 ; r3 ??
	fmov.s fr0,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr3,@(r0,r14)
	mov r14,r5
	mov.w @(0x1C,r14),r0
	mov.l @(loc_8C0FF218,pc),r4 ; r4 set to 0x8C164CFc
	mov.l @(loc_8C0FF20C,pc),r3 ; r3 set to 0x8C0FD914
	mov r0,r6 ; r6 set to 0x54
	jsr @r3
	add 0x05,r5
	mov 0x78,r0 ; r0 set to 0x78
	fmov fr0,fr3 ; r3 ??
	fmov.s fr0,@(r0,r14)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s fr3,@(r0,r14)
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s @(r0,r14),fr3
	add 0x08,r0 ; r0 set to 0x80
	fmov.s fr3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0x01,r0 ; r0 set to 0x81
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;=============================================
loc_8c0ff1e8:
	#data 0x012c
loc_8c0ff1ea:
	#data 0x0084
loc_8c0ff1ec:
	#data 0x0400
loc_8c0ff1ee:
	#data 0x0088
loc_8c0ff1f0:
	#data 0x00C8
loc_8c0ff1f2:
	#data 0x0410
	#align4

loc_8C0FF1F4:
	#data 0x8C289650
loc_8C0FF1F8:
	#data bank04.loc_8c0450C0
loc_8C0FF1FC:
	#data bank04.loc_8c044F12
loc_8C0FF200:
	#data loc_8c0fF108
loc_8C0FF204:
	#data 0x8C26A908
loc_8C0FF208:
	#data bank16.loc_8c164CDc
loc_8C0FF20C:
	#data loc_8c0fD914
loc_8C0FF210:
	#data loc_8c0fF18e
loc_8C0FF214:
	#data bank16.loc_8c164CEc
loc_8C0FF218:
	#data bank16.loc_8c164CFc

;==============================================
loc_8C0FF21C:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xF8,PC),r3
	mov 0x01,r6
	mov.l r4,@r15
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0ff24a
	mov r0,r4
	mov.w @(0xDC,PC),r0
	mov 0x01,r3
	mov.l @(0xE8,PC),r2
	mov.b r3,@(r0,r4)
	add 0xA0,r0
	mov.w @(0xD4,PC),r3
	mov.l r2,@(0x10,r4)
	mov.l r3,@(r0,r4)
	mov.w @(0xD0,PC),r3
	mov.l @r15,r2
	mov.w @(0xCE,PC),r0
	add r2,r3
	mov.l r3,@(r0,r4)

loc_8C0FF24A:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;=============================================
loc_8C0FF252:
	mov.w @(0x1C,r4),r0
	mov 0x06,r3 ; r3 set to 0x06
	cmp/ge r3,r0
	bf loc_8C0FF260
	mov.l @(loc_8C0FF324,pc),r2 ; r2 set to 0x8C0450C0
	jmp @r2
	nop

loc_8C0FF260:
	mov.w @(0x1C,r4),r0
	mov.l @(loc_8C0FF328,pc),r1 ; r1 set to 0x8C164D0c
	mov.l @(loc_8C0FF32C,pc),r3 ; r3 set to 0x8C26A908
	shll2 r0
	mov.l @(r0,r1),r2
	mov.l @r3,r0
	shll2 r2
	mov.l @r0,r0
	mov.l @(r0,r2),r2
	mov.w @(loc_8C0FF318,pc),r0 ; r0 set to 0x84
	mov.l r2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	mov.l @(loc_8C0FF330,pc),r2 ; r2 set to 0x8C164D24
	shll2 r0 ; r0 set to 0x210
	fmov.s @(r0,r2),fr3 ; r3 ??
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s fr3,@(r0,r4)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s fr3,@(r0,r4)
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s @(r0,r4),fr3
	add 0x08,r0 ; r0 set to 0x80
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0 ; r0 set to 0x81
	rts
	mov.w r0,@(0x1C,r4)

;=============================================
loc_8C0FF296:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x80,PC),r3
	mov 0x01,r6
	mov.l r4,@r15
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0ff2c4
	mov r0,r4
	mov.w @(0x62,PC),r0
	mov 0x01,r3
	mov.l @(0x84,PC),r2
	mov.b r3,@(r0,r4)
	add 0xA0,r0
	mov.w @(0x5A,PC),r3
	mov.l r2,@(0x10,r4)
	mov.l r3,@(r0,r4)
	mov.w @(0x56,PC),r3
	mov.l @r15,r2
	mov.w @(0x54,PC),r0
	add r2,r3
	mov.l r3,@(r0,r4)

loc_8C0FF2C4:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;=============================================
loc_8C0FF2CC:
	mov.w @(0x1C,r4),r0
	mov 0x07,r3 ; r3 set to 0x07
	cmp/ge r3,r0
	bf loc_8C0FF2Da
	mov.l @(loc_8C0FF324,pc),r2 ; r2 set to 0x8C0450C0
	jmp @r2
	nop

loc_8C0FF2DA:
	mov.w @(0x1C,r4),r0
	mov.l @(loc_8C0FF338,pc),r1 ; r1 set to 0x8C164D3c
	mov.l @(loc_8C0FF32C,pc),r3 ; r3 set to 0x8C26A908
	shll2 r0
	mov.l @(r0,r1),r2
	mov.l @r3,r0
	shll2 r2
	mov.l @r0,r0
	mov.l @(r0,r2),r2
	mov.w @(loc_8C0FF318,pc),r0 ; r0 set to 0x84
	mov.l r2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	mov.l @(loc_8C0FF33C,pc),r2 ; r2 set to 0x8C164D58
	shll2 r0 ; r0 set to 0x210
	fmov.s @(r0,r2),fr3 ; r3 ??
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s fr3,@(r0,r4)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s fr3,@(r0,r4)
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s @(r0,r4),fr3
	add 0x08,r0 ; r0 set to 0x80
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0 ; r0 set to 0x81
	rts
	mov.w r0,@(0x1C,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ff310:
	#data 0x012c
loc_8c0ff312:
	#data 0x0400
loc_8c0ff314:
	#data 0x0088
loc_8c0ff316:
	#data 0x00c8
loc_8C0FF318:
	#data 0x0084
	#align4

loc_8C0FF31C:
	#data bank04.loc_8c044F12
loc_8C0FF320:
	#data loc_8c0fF252
loc_8C0FF324:
	#data bank04.loc_8c0450C0
loc_8C0FF328:
	#data bank16.loc_8c164D0c
loc_8C0FF32C:
	#data 0x8C26A908
loc_8C0FF330:
	#data bank16.loc_8c164D24
loc_8C0FF334:
	#data loc_8c0fF2Cc
loc_8C0FF338:
	#data bank16.loc_8c164D3c
loc_8C0FF33C:
	#data bank16.loc_8c164D58

;==============================================
loc_8C0FF340:
	mova @(loc_8C0FF460,pc),r0  ; r0 init to 0x8C0FF460
	fmov.s @r0,fr4
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r4),fr3
	mov 0x0A,r3 ; r3 set to 0x0a
	fadd fr4,fr3 ; r3 ??? bc r4 is ???
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r4),fr2
	fadd fr4,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x58,r0 ; r0 set to 0x58
	fmov.s @(r0,r4),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	cmp/ge r3,r0
	bf loc_8C0FF36a
	mov.l @(loc_8C0FF464,pc),r2 ; r2 set to 0x8C0450C0
	jmp @r2
	nop

loc_8C0FF36A:
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	rts
	mov.w r0,@(0x1C,r4)

;=============================================
loc_8C0FF372:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xF0,PC),r3
	mov 0x07,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0ff3c6
	mov r0,r4
	mov.w @(0xCA,PC),r0
	mov 0x01,r3
	mov.l @(0xE0,PC),r1
	mov.l @(0xDC,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x5C,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0x28,r0
	mov.l r3,@(r0,r4)
	mov.l @r15,r2
	mov.l @(0xCC,PC),r3
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0xA6,PC),r1
	mov 0x48,r0
	mov.l @(0xC4,PC),r2
	mov.l r1,@(r0,r4)
	mov r4,r1
	mov.l @(0xB8,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x98,PC),r0
	mov.w @(0x94,PC),r1
	mov.l r1,@(r0,r4)

loc_8C0FF3C6:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;=============================================
loc_8C0FF3CE:
	mova @(loc_8C0FF460,pc),r0  ; r0 init to 0x8C0FF460
	fmov.s @r0,fr4
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r4),fr3
	mov 0x0A,r3 ; r3 set to 0x0a
	fadd fr4,fr3 ; r3 ??? bc r4 is ???
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r4),fr2
	fadd fr4,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x58,r0 ; r0 set to 0x58
	fmov.s @(r0,r4),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	cmp/ge r3,r0
	bf loc_8C0FF3F8
	mov.l @(loc_8C0FF464,pc),r2 ; r2 set to 0x8C0450C0
	jmp @r2
	nop

loc_8C0FF3F8:
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	rts
	mov.w r0,@(0x1C,r4)

;=============================================
loc_8C0FF400:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x60,PC),r3
	mov 0x07,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0ff44e
	mov r0,r4
	mov.w @(0x3C,PC),r0
	mov 0x01,r3
	mov.l @(0x54,PC),r1
	mov.l @(0x5C,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x60,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0x24,r0
	mov.l r3,@(r0,r4)
	mov.l @r15,r2
	mov.l @(0x3C,PC),r3
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x38,PC),r2
	mov r4,r1
	mov.l @(0x30,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x10,PC),r0
	mov.w @(0x10,PC),r1
	mov.l r1,@(r0,r4)

loc_8C0FF44E:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ff456:
	#data 0x012C
loc_8c0ff458:
	#data 0x1555
loc_8c0ff45a:
	#data 0x0199
loc_8c0ff45c:
	#data 0x00Cc
loc_8c0ff45e:
	#data 0x0191
	#align4

loc_8C0FF460:
	#data 0x3F4CCCCd
loc_8C0FF464:
	#data bank04.loc_8c0450C0
loc_8C0FF468:
	#data bank04.loc_8c044F12
loc_8C0FF46C:
	#data loc_8c0fF340
loc_8C0FF470:
	#data 0x8C26A908
loc_8C0FF474:
	#data bank12.loc_8c1294C8
loc_8C0FF478:
	#data bank16.loc_8c164D74
loc_8C0FF47C:
	#data loc_8c0fF3Ce

;==============================================
loc_8C0FF480:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	cmp/eq 0x02,r0
	bf loc_8c0ff490
	bsr loc_8c0ff372
	mov r14,r4

loc_8C0FF490:
	mov.w @(0x1C,r14),r0
	cmp/eq 0x0A,r0
	bf loc_8c0ff49a
	bsr loc_8c0ff400
	mov r14,r4

loc_8C0FF49A:
	mov.w @(0x1C,r14),r0
	mov 0x0A,r3
	cmp/ge r3,r0
	bf loc_8c0ff4ac
	lds.l @r15+,pr
	mov.l @(0x108,PC),r1
	mov r14,r4
	jmp @r1
	mov.l @r15+,r14

loc_8C0FF4AC:
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0FF4B6:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xF8,PC),r3
	mov 0x07,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0ff4e2
	mov r0,r4
	mov.l @(0xE8,PC),r2
	mov 0x00,r3
	mov.w @(0xD4,PC),r0
	mov r4,r1
	add 0x34,r1
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @(0xE0,PC),r3
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0

loc_8C0FF4E2:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;=============================================
loc_8C0FF4EA:
	mova @(loc_8C0FF5C0,pc),r0  ; r0 init to 0x8C0FF5C0
	fmov.s @r0,fr4
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r4),fr3
	mov 0x0A,r3 ; r3 set to 0x0a
	fadd fr4,fr3 ; r3 ??? bc r4 is ???
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r4),fr2
	fadd fr4,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x58,r0 ; r0 set to 0x58
	fmov.s @(r0,r4),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	cmp/ge r3,r0
	bf loc_8C0FF514
	mov.l @(loc_8C0FF5B0,pc),r2 ; r2 set to 0x8C0450C0
	jmp @r2
	nop

loc_8C0FF514:
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	rts
	mov.w r0,@(0x1C,r4)

;=============================================
loc_8C0FF51C:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x90,PC),r3
	mov 0x01,r6
	mov.l r4,@r15
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0ff56e
	mov r0,r4
	mov.w @(0x74,PC),r0
	mov 0x01,r3
	mov.l @(0x90,PC),r1
	mov.l @(0x8C,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x5C,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0x28,r0
	mov.l r3,@(r0,r4)
	mov.l @r15,r2
	mov.l @(0x6C,PC),r3
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x50,PC),r1
	mov 0x48,r0
	mov.l @(0x70,PC),r2
	mov.l r1,@(r0,r4)
	mov r4,r1
	mov.l @(0x58,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x42,PC),r0
	mov.w @(0x3E,PC),r1
	mov.l r1,@(r0,r4)

loc_8C0FF56E:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;=============================================
loc_8C0FF576:
	mova @(loc_8C0FF5C0,pc),r0  ; r0 init to 0x8C0FF5C0
	fmov.s @r0,fr4
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r4),fr3
	mov 0x0A,r3 ; r3 set to 0x0a
	fadd fr4,fr3 ; r3 ??? bc r4 is ???
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r4),fr2
	fadd fr4,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x58,r0 ; r0 set to 0x58
	fmov.s @(r0,r4),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	cmp/ge r3,r0
	bf loc_8C0FF5A0
	mov.l @(loc_8C0FF5B0,pc),r2 ; r2 set to 0x8C0450C0
	jmp @r2
	nop

loc_8C0FF5A0:
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	rts
	mov.w r0,@(0x1C,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ff5a8:
	#data 0x012c
loc_8c0ff5aa:
	#data 0x1555
loc_8c0ff5ac:
	#data 0x0199
loc_8c0ff5ae:
	#data 0x00CC
	#align4

loc_8C0FF5B0:
	#data bank04.loc_8c0450C0
loc_8C0FF5B4:
	#data bank04.loc_8c044F12
loc_8C0FF5B8:
	#data loc_8c0fF480
loc_8C0FF5BC:
	#data bank12.loc_8c1294C8
loc_8C0FF5C0:
	#data 0x3F4CCCCd
loc_8C0FF5C4:
	#data loc_8c0fF4Ea
loc_8C0FF5C8:
	#data 0x8C26A908
loc_8C0FF5CC:
	#data bank16.loc_8c164D74

;==============================================
loc_8C0FF5D0:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xDC,PC),r3
	mov 0x01,r6
	mov.l r4,@r15
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0ff61c
	mov r0,r4
	mov.w @(0xC6,PC),r0
	mov 0x01,r3
	mov.l @(0xD0,PC),r1
	mov.l @(0xCC,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x60,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0x24,r0
	mov.l r3,@(r0,r4)
	mov.l @r15,r2
	mov.l @(0xBC,PC),r3
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xB8,PC),r2
	mov r4,r1
	mov.l @(0xB0,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x98,PC),r0
	mov.w @(0x94,PC),r1
	mov.l r1,@(r0,r4)

loc_8C0FF61C:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;=============================================
loc_8C0FF624:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	cmp/eq 0x02,r0
	bf loc_8c0ff638
	mov 0x23,r0
	mov.b @(r0,r14),r5
	bsr loc_8c0ff51c
	mov r14,r4

loc_8C0FF638:
	mov.w @(0x1C,r14),r0
	cmp/eq 0x0A,r0
	bf loc_8c0ff646
	mov 0x23,r0
	mov.b @(r0,r14),r5
	bsr loc_8c0ff5d0
	mov r14,r4

loc_8C0FF646:
	mov.w @(0x1C,r14),r0
	mov 0x0A,r3
	cmp/ge r3,r0
	bf loc_8c0ff660
	mov.l @(0x78,PC),r1
	mov r14,r4
	mov.b @r1,r2
	add 0xFF,r2
	mov.b r2,@r1
	lds.l @r15+,pr
	mov.l @(0x70,PC),r1
	jmp @r1
	mov.l @r15+,r14

loc_8C0FF660:
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;=============================================
loc_8C0FF66A:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x44,PC),r3
	mov.l r4,@(0x4,r15)
	mov.b r6,@r15
	mov 0x01,r6
	mov.b @r15,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0ff6a6
	mov r0,r4
	mov.l @(0x44,PC),r3
	mov r4,r1
	mov.w @(0x24,PC),r0
	add 0x34,r1
	mov.b @r3,r2
	add 0x01,r2
	mov.b r2,@r3
	mov 0x00,r3
	mov.l @(0x3C,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @(0x24,PC),r3
	mov.l @(0x4,r15),r2
	jsr @r3
	mov 0x0C,r0
	mov.b @r15,r1
	mov 0x23,r0
	mov.b r1,@(r0,r4)

loc_8C0FF6A6:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ff6ae:
	#data 0x012C
loc_8c0ff6b0:
	#data 0x0191
loc_8c0ff6b2:
	#data 0x00CC
	#align4

loc_8C0FF6B4:
	#data bank04.loc_8c044F12
loc_8C0FF6B8:
	#data loc_8c0fF576
loc_8C0FF6BC:
	#data 0x8C26A908
loc_8C0FF6C0:
	#data bank12.loc_8c1294C8
loc_8C0FF6C4:
	#data bank16.loc_8c164D74
loc_8C0FF6C8:
	#data 0x8C289650
loc_8C0FF6CC:
	#data bank04.loc_8c0450C0
loc_8C0FF6D0:
	#data loc_8c0fF624

;==============================================
loc_8C0FF6D4:
	mov 0x5C,r1 ; r1 set to 0x5c
	add r4,r1 ; r1 ??? bc r4 is ???
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3
	fmov.s @(r0,r4),fr2
	mov 0x60,r1 ; r1 set to 0x60
	add r4,r1 ; r1 ??? bc r4 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	mov 0x64,r1 ; r1 set to 0x64
	add r4,r1 ; r1 ??? bc r4 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	rts
	fmov.s fr2,@(r0,r4)

;=============================================
loc_8C0FF700:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c0ff6d4
	mov r4,r14
	mova @(0x10C,PC),r0
	mov.l @(0x110,PC),r2
	fmov @r0,fr4
	mov 0x50,r0
	fmov @(r0,r14),fr3
	fsub fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r14),fr2
	fsub fr4,fr2
	fmov fr2,@(r0,r14)
	mov 0x58,r0
	fmov @(r0,r14),fr3
	fsub fr4,fr3
	fmov fr3,@(r0,r14)
	add 0x35,r0
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bf loc_8c0ff738
	mov.w @(0x1C,r14),r0
	mov 0x0F,r3
	cmp/ge r3,r0
	bf loc_8c0ff742

loc_8C0FF738:
	lds.l @r15+,pr
	mov.l @(0xE4,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0FF742:
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;=============================================
loc_8c0ff74c:
sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c0ff824,pc),r3
	mov 0x01,r6
	mov.l r4,@(0x04,r15)
	mov.l r5,@r15
	mov 0x08,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c0ff808
	mov r0,r4
	mov.w @(loc_8C0FF810,pc),r0
	mov 0x01,r3
	mov.l @(loc_8c0ff828,pc),r2
	mov.l @(loc_8C0FF82C,pc),r1
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.l @r15,r2
	add 0x34,r1
	mov.l @r3,r3
	mov.w @(loc_8C0FF812,pc),r0
	shll2 r2
	add r3,r2
	mov.w @(loc_8C0FF814,pc),r3
	mov.l @(r0,r2),r2
	add 0xD4,r0
	mov.l r2,@(r0,r4)
	add 0x48,r0
	mov.l r3,@(r0,r4)
	mov.l @(loc_8c0ff830,pc),r3
	mov.l @(0x04,r15),r2
	jsr @r3
	mov 0x0C,r0
	mov.l @r15,r5
	mov 0x34,r0
	mov.l @(loc_8c0ff834,pc),r2
	mov 0x04,r1
	mov r5,r3
	shll r5
	add r3,r5
	fmov.s @(r0,r4),fr2
	shll2 r5
	add r2,r5
	fmov.s @r5,fr3
	add r5,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x38,r0
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	mov 0x08,r1
	add r5,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x3C,r0
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C0FF838,pc),r0
	fmov.s @r5,fr3
	fmov.s @r0,fr4
	mov 0x5C,r0
	fneg fr3
	fdiv fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x04,r0
	fmov.s @(r0,r5),fr3
	mov 0x60,r0
	fneg fr3
	fdiv fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x08,r0
	fmov.s @(r0,r5),fr3
	mov 0x64,r0
	fneg fr3
	fdiv fr4,fr3
	fldi1 fr4
	fmov.s fr3,@(r0,r4)
	mov 0x50,r0
	fmov.s fr4,@(r0,r4)
	mov 0x54,r0
	fmov.s fr4,@(r0,r4)
	mov 0x58,r0
	fmov.s fr4,@(r0,r4)
	mov 0x78,r0
	fmov.s fr4,@(r0,r4)
	mov 0x7C,r0
	fmov.s fr4,@(r0,r4)
	add 0x04,r0
	fmov.s fr4,@(r0,r4)
loc_8c0ff808:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;=============================================
loc_8C0FF810:
	#data 0x012C
loc_8C0FF812:
	#data 0x00B0
loc_8C0FF814:
	#data 0x0401
	#align4
loc_8c0ff818:
	#data 0x3d088889
loc_8c0ff81c:
	#data 0x8c26823c
loc_8c0ff820:
	#data bank04.loc_8c0450c0
loc_8c0ff824:
	#data bank04.loc_8c044f12
loc_8c0ff828:
	#data loc_8c0ff700
loc_8C0FF82C:
	#data 0x8C26A908
loc_8c0ff830:
	#data bank12.loc_8c1294c8
loc_8c0ff834:
	#data bank16.loc_8c164d98
loc_8C0FF838:
	#data 0x41700000

;==============================================
loc_8C0FF83C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8C0FF6D4
	mov r4,r14
	mov 0x5C,r1 ; r1 set to 0x5c
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	mov 0x5C,r1 ; r1 set to 0x5c
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x5C,r1 ; r1 set to 0x5c
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x58,r0 ; r0 set to 0x58
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0FF994,pc),r0  ; r0 set to 0x8C0FF994
	fmov.s @r0,fr4
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s @(r0,r14),fr3
	fsub fr4,fr3
	mov.l @(loc_8C0FF998,pc),r2 ; r2 set to 0x8C26823c
	fmov.s fr3,@(r0,r14)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
	fsub fr4,fr2
	fmov.s fr2,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x80
	fmov.s @(r0,r14),fr3
	fsub fr4,fr3
	fmov.s fr3,@(r0,r14)
	add 0x0D,r0 ; r0 set to 0x8d
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bt loc_8C0FF8Ac
	mov.w @(loc_8C0FF98C,pc),r0 ; r0 set to 0x12c
	mov 0x00,r1 ; r1 set to 0x00
	bra loc_8C0FF8B4
	mov.b r1,@(r0,r14)

loc_8C0FF8AC:
	mov.w @(0x1C,r14),r0
	mov 0x0A,r3 ; r3 set to 0x0a
	cmp/ge r3,r0
	bf loc_8C0FF8Be

loc_8C0FF8B4:
	lds.l @r15+,pr
	mov.l @(loc_8C0FF99C,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0FF8BE:
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;=============================================
loc_8c0ff8c8:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c0ff9a0,pc),r3
	mov 0x08,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c0ff936
	mov r0,r4
	mov.w @(loc_8c0ff98c,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C0FF9A8,pc),r1
	mov.l @(loc_8c0ff9a4,pc),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(loc_8C0FF98E,pc),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0xDC,r0
	mov.w @(loc_8C0FF990,pc),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(loc_8c0ff9ac,pc),r3
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0
	mova @(loc_8C0FF9B0,pc),r0
	fmov.s @r0,fr3
	mov 0x5C,r0
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C0FF9B4,pc),r0
	fmov.s @r0,fr3
	mov 0x68,r0
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C0FF9B8,pc),r0
	fmov.s @r0,fr4
	mov 0x50,r0
	fmov.s fr4,@(r0,r4)
	mov 0x54,r0
	fmov.s fr4,@(r0,r4)
	mov 0x58,r0
	fmov.s fr4,@(r0,r4)
	mov 0x78,r0
	fldi1 fr4
	fmov.s fr4,@(r0,r4)
	mov 0x7C,r0
	fmov.s fr4,@(r0,r4)
	add 0x04,r0
	fmov.s fr4,@(r0,r4)

loc_8c0ff936:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C0FF93E:
	mova @(loc_8C0FF9BC,pc),r0  ; r0 init to 0x8C0FF9Bc
	fmov.s @r0,fr4
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r4),fr3
	mov 0x0F,r3 ; r3 set to 0x0f
	fadd fr4,fr3 ; r3 ??? bc r4 is ???
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r4),fr2
	fadd fr4,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x58,r0 ; r0 set to 0x58
	fmov.s @(r0,r4),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C0FF9C0,pc),r0  ; r0 set to 0x8C0FF9C0
	fmov.s @r0,fr4
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s @(r0,r4),fr3
	fsub fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s @(r0,r4),fr2
	fsub fr4,fr2
	fmov.s fr2,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x80
	fmov.s @(r0,r4),fr3
	fsub fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	cmp/ge r3,r0
	bf loc_8C0FF984
	mov.l @(loc_8C0FF99C,pc),r2 ; r2 set to 0x8C0450C0
	jmp @r2
	nop

loc_8C0FF984:
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	rts
	mov.w r0,@(0x1C,r4)

;=============================================
loc_8C0FF98C:
	#data 0x012c
loc_8c0ff98e:
	#data 0x00A8
loc_8c0ff990:
	#data 0x0411
	#align4

loc_8C0FF994:
	#data 0x3DCCCCCd
loc_8C0FF998:
	#data 0x8C26823c
loc_8C0FF99C:
	#data bank04.loc_8c0450C0
loc_8C0FF9A0:
	#data bank04.loc_8c044F12
loc_8C0FF9A4:
	#data loc_8c0fF83c
loc_8c0ff9a8:
	#data 0x8C26A908
loc_8C0FF9AC:
	#data bank12.loc_8c1294C8
loc_8c0ff9b0:
	#data 0x3ECCCCCd
loc_8c0ff9b4:
	#data 0xBD23D70a
loc_8c0ff9b8:
	#data 0x3F000000
loc_8C0FF9BC:
	#data 0x3CA3D70a
loc_8C0FF9C0:
	#data 0x3D4CCCCd

;==============================================
loc_8c0ff9c4:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c0ffac0,pc),r3
	mov 0x08,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c0ffa22
	mov r0,r4
	mov.w @(loc_8c0ffab8,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C0FFAC8,pc),r1
	mov.l @(loc_8c0ffac4,pc),r2
	mov.b r3,@(r0,r4)
	add 0x80,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0xD8,r0
	mov.w @(loc_8C0FFABA,pc),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(loc_8c0ffacc,pc),r3
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0
	mova @(loc_8C0FFAD0,pc),r0
	fmov.s @r0,fr4
	mov 0x50,r0
	fmov.s fr4,@(r0,r4)
	mov 0x54,r0
	fmov.s fr4,@(r0,r4)
	mov 0x58,r0
	fmov.s fr4,@(r0,r4)
	mov 0x78,r0
	fldi1 fr4
	fmov.s fr4,@(r0,r4)
	mov 0x7C,r0
	fmov.s fr4,@(r0,r4)
	add 0x04,r0
	fmov.s fr4,@(r0,r4)

loc_8c0ffa22:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C0FFA2A:
	mov.l @(loc_8C0FFAD4,pc),r2 ; r2 set to 0x8C26823c
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0FFABC,pc),r0 ; r0 set to 0x8d
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bt/s loc_8C0FFA48
	mov 0x00,r12 ; r12 set to 0x00
	mov.w @(loc_8C0FFAB8,pc),r0 ; r0 set to 0x12c
	bra loc_8C0FFAA0
	mov.b r12,@(r0,r14)

loc_8C0FFA48:
	mov.b @(0x04,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C0FFA5c
	cmp/eq 0x01,r0
	bt loc_8C0FFA78
	cmp/eq 0x02,r0
	bt loc_8C0FFA9a
	bra loc_8C0FFAAe
	nop

loc_8C0FFA5C:
	mov r12,r13
	bra loc_8C0FFA6c
	mov 0x0D,r12

loc_8C0FFA62:
	mov r14,r4
	mov r13,r5
	bsr loc_8C0FF74c
	add 0x34,r4
	add 0x01,r13

loc_8C0FFA6C:
	cmp/ge r12,r13
	bf loc_8C0FFA62
	mov.b @(0x04,r14),r0
	add 0x01,r0
	bra loc_8C0FFAAe
	mov.b r0,@(0x04,r14)

loc_8C0FFA78:
	mov.w @(0x1C,r14),r0
	mov 0x0F,r3 ; r3 set to 0x0f
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/gt r3,r0
	bf loc_8C0FFAAe
	mov r14,r4
	bsr loc_8C0FF8C8
	add 0x34,r4
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov r12,r0
	nop
	bra loc_8C0FFAAe
	mov.w r0,@(0x1C,r14)

loc_8C0FFA9A:
	mov r14,r4
	bsr loc_8C0FF9C4
	add 0x34,r4

loc_8C0FFAA0:
	lds.l @r15+,pr
	mov.l @(loc_8C0FFAD8,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0FFAAE:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0FFAB8:
	#data 0x012c
loc_8c0ffaba:
	#data 0x0411
loc_8C0FFABC:
	#data 0x008d
	#align4

loc_8C0FFAC0:
	#data bank04.loc_8c044F12
loc_8C0FFAC4:
	#data loc_8c0fF93e
loc_8c0ffac8:
	#data 0x8C26A908
loc_8C0FFACC:
	#data bank12.loc_8c1294C8
loc_8c0ffad0:
	#data 0x3F000000
loc_8C0FFAD4:
	#data 0x8C26823c
loc_8C0FFAD8:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0FFADC:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x30,PC),r3
	mov 0x08,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0ffb08
	mov r0,r4
	mov.l @(0x24,PC),r2
	mov 0x00,r3
	mov.w @(0x16,PC),r0
	mov r4,r1
	add 0x34,r1
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @(0x18,PC),r3
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0

loc_8C0FFB08:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ffb10:
	#data 0x012c
	#align4

loc_8C0FFB14:
	#data bank04.loc_8c044F12
loc_8C0FFB18:
	#data loc_8c0fFA2a
loc_8C0FFB1C:
	#data bank12.loc_8c1294C8

;==============================================
loc_8C0FFB20:
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C0FFB30
	cmp/eq 0x01,r0
	bt loc_8C0FFB5a
	bra loc_8C0FFB82
	nop

loc_8C0FFB30:
	mova @(loc_8C0FFC3C,pc),r0  ; r0 init to 0x8C0FFC3c
	fmov.s @r0,fr4
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r4),fr3
	mov 0x08,r3 ; r3 set to 0x08
	fadd fr4,fr3 ; r3 ??? bc r4 is ???
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r4),fr2
	fadd fr4,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0 ; r0 set to 0x55
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0 ; r0 ??
	cmp/ge r3,r0
	bf loc_8C0FFB82
	mov.b @(0x04,r4),r0
	add 0x01,r0
	bra loc_8C0FFB82
	mov.b r0,@(0x04,r4)

loc_8C0FFB5A:
	mova @(loc_8C0FFC40,pc),r0  ; r0 init to 0x8C0FFC40
	fmov.s @r0,fr4
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r4),fr3
	mov 0x14,r3 ; r3 set to 0x14
	fsub fr4,fr3 ; r3 ??? bc r4 is ???
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r4),fr2
	fsub fr4,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0 ; r0 set to 0x55
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0 ; r0 ??
	cmp/ge r3,r0
	bf loc_8C0FFB82
	mov.l @(loc_8C0FFC44,pc),r2 ; r2 set to 0x8C0450C0
	jmp @r2
	nop

loc_8C0FFB82:
	rts
	nop

;=============================================
loc_8c0ffb86:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c0ffc48,pc),r3
	mov 0x08,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c0ffbe0
	mov r0,r4
	mov.w @(loc_8C0FFC34,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C0FFC50,pc),r1
	mov.l @(loc_8c0ffc4c,pc),r2
	mov.b r3,@(r0,r4)
	add 0xB8,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0xA0,r0
	mov.w @(loc_8C0FFC36,pc),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(loc_8c0ffc54,pc),r3
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0
	mov 0x50,r0
	fldi1 fr4
	fmov.s fr4,@(r0,r4)
	mov 0x54,r0
	fmov.s fr4,@(r0,r4)
	mov 0x58,r0
	fmov.s fr4,@(r0,r4)
	mov 0x78,r0
	fmov.s fr4,@(r0,r4)
	mov 0x7C,r0
	fmov.s fr4,@(r0,r4)
	add 0x04,r0
	fmov.s fr4,@(r0,r4)

loc_8c0ffbe0:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C0FFBE8:
	mov 0x48,r0 ; r0 set to 0x48
	mov.w @(loc_8C0FFC38,pc),r3 ; r3 set to 0x333
	mov.l @(r0,r4),r2
	add r3,r2
	mov.l r2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0 ; r0 set to 0x49
	mov.w r0,@(0x1C,r4)
	mov.b @(0x04,r4),r0
	extu.b r0,r0 ; r0 set to 0x49
	cmp/eq 0x00,r0
	bt/s loc_8C0FFC0a
	mov 0x14,r5 ; r5 set to 0x14
	cmp/eq 0x01,r0
	bt loc_8C0FFC5c
	bra loc_8C0FFC7c
	nop

loc_8C0FFC0A:
	mova @(loc_8C0FFC58,pc),r0  ; r0 init to 0x8C0FFC58
	fmov.s @r0,fr4
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r4),fr3
	mov 0x07,r2 ; r2 set to 0x07
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r4),fr2 ; r2 ??? bc r4 is ???
	fadd fr4,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0 ; r0 set to 0x55
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0 ; r0 ??
	cmp/ge r2,r0
	bf loc_8C0FFC7c
	mov.b @(0x04,r4),r0
	add 0x01,r0
	bra loc_8C0FFC7c
	mov.b r0,@(0x04,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ffc34:
	#data 0x012c
loc_8c0ffc36:
	#data 0x0411
loc_8C0FFC38:
	#data 0x0333
	#align4

loc_8C0FFC3C:
	#data 0x3D7DF3B6
loc_8C0FFC40:
	#data 0x3D2C0831
loc_8C0FFC44:
	#data bank04.loc_8c0450C0
loc_8C0FFC48:
	#data bank04.loc_8c044F12
loc_8C0FFC4C:
	#data loc_8c0fFB20
loc_8c0ffc50:
	#data 0x8C26A908
loc_8C0FFC54:
	#data bank12.loc_8c1294C8
loc_8C0FFC58:
	#data 0x3F126E98

;==============================================
loc_8c0ffc5c:
	mova @(loc_8C0FFD70,pc),r0
	fmov.s @r0,fr4
	mov 0x50,r0
	fmov.s @(r0,r4),fr3
	fsub fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0
	fmov.s @(r0,r4),fr2
	fsub fr4,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/ge r5,r0
	bt loc_8c0ffcea

loc_8C0FFC7C:
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C0FFC90
	cmp/eq 0x01,r0
	bt loc_8C0FFCB8
	cmp/eq 0x02,r0
	bt loc_8C0FFCC8
	bra loc_8C0FFCF0
	nop

loc_8C0FFC90:
	mova @(loc_8C0FFD74,pc),r0  ; r0 init to 0x8C0FFD74
	fmov.s @r0,fr4
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s @(r0,r4),fr3
	mov 0x02,r3 ; r3 set to 0x02
	fadd fr4,fr3 ; r3 ??? bc r4 is ???
	fmov.s fr3,@(r0,r4)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s @(r0,r4),fr2
	fadd fr4,fr2
	fmov.s fr2,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x80
	fmov.s @(r0,r4),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	cmp/ge r3,r0
	bt loc_8C0FFCC0
	bra loc_8C0FFCF0
	nop

loc_8c0ffcb8:
	mov.w @(0x1C,r4),r0
	mov 0x0C,r3
	cmp/ge r3,r0
	bf loc_8c0ffcf0

loc_8C0FFCC0:
	mov.b @(0x05,r4),r0
	add 0x01,r0
	bra loc_8C0FFCF0
	mov.b r0,@(0x05,r4)

loc_8C0FFCC8:
	mova @(loc_8C0FFD78,pc),r0  ; r0 init to 0x8C0FFD78
	fmov.s @r0,fr4
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s @(r0,r4),fr3
	fsub fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s @(r0,r4),fr2
	fsub fr4,fr2
	fmov.s fr2,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x80
	fmov.s @(r0,r4),fr3
	fsub fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	cmp/ge r5,r0
	bf loc_8C0FFCF0

loc_8C0FFCEA:
	mov.l @(loc_8C0FFD7C,pc),r2 ; r2 set to 0x8C0450C0
	jmp @r2
	nop

loc_8C0FFCF0:
	rts
	nop

;=============================================
loc_8c0ffcf4:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c0ffd80,pc),r3
	mov 0x08,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c0ffd50
	mov r0,r4
	mov.w @(loc_8C0FFD6A,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C0FFD88,pc),r1
	mov.l @(loc_8c0ffd84,pc),r2
	mov.b r3,@(r0,r4)
	add 0xBC,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0x9C,r0
	mov.w @(loc_8C0FFD6C,pc),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(loc_8c0ffd8c,pc),r3
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0
	mov 0x50,r0
	fldi1 fr4
	fmov.s fr4,@(r0,r4)
	mov 0x54,r0
	fmov.s fr4,@(r0,r4)
	mov 0x58,r0
	fmov.s fr4,@(r0,r4)
	mov 0x78,r0
	fldi0 fr4
	fmov.s fr4,@(r0,r4)
	mov 0x7C,r0
	fmov.s fr4,@(r0,r4)
	add 0x04,r0
	fmov.s fr4,@(r0,r4)

loc_8c0ffd50:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C0FFD58:
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_8C0FFD90
	mov 0x14,r5 ; r5 set to 0x14
	cmp/eq 0x01,r0
	bt loc_8C0FFDBa
	bra loc_8C0FFDDa
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ffd6a:
	#data 0x012c
loc_8c0ffd6c:
	#data 0x0411
	#align4

loc_8c0ffd70:
	#data 0x3E9DB22d
loc_8C0FFD74:
	#data 0x3F000000
loc_8C0FFD78:
	#data 0x3E000000
loc_8C0FFD7C:
	#data bank04.loc_8c0450C0
loc_8C0FFD80:
	#data bank04.loc_8c044F12
loc_8C0FFD84:
	#data loc_8c0fFBE8
loc_8c0ffd88:
	#data 0x8C26A908
loc_8C0FFD8C:
	#data bank12.loc_8c1294C8

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0FFD90:
	mova @(loc_8C0FFEBC,pc),r0  ; r0 init to 0x8C0FFEBc
	fmov.s @r0,fr4
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r4),fr3
	mov 0x07,r3 ; r3 set to 0x07
	fadd fr4,fr3 ; r3 ??? bc r4 is ???
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r4),fr2
	fadd fr4,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0 ; r0 set to 0x55
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0 ; r0 ??
	cmp/ge r3,r0
	bf loc_8C0FFDDa
	mov.b @(0x04,r4),r0
	add 0x01,r0
	bra loc_8C0FFDDa
	mov.b r0,@(0x04,r4)

loc_8c0ffdba:
	mova @(loc_8C0FFEC0,pc),r0
	fmov.s @r0,fr4
	mov 0x50,r0
	fmov.s @(r0,r4),fr3
	fsub fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0
	fmov.s @(r0,r4),fr2
	fsub fr4,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/ge r5,r0
	bt loc_8c0ffe48

loc_8C0FFDDA:
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C0FFDEe
	cmp/eq 0x01,r0
	bt loc_8C0FFE16
	cmp/eq 0x02,r0
	bt loc_8C0FFE26
	bra loc_8C0FFE4e
	nop

loc_8C0FFDEE:
	mova @(loc_8C0FFEC4,pc),r0  ; r0 init to 0x8C0FFEC4
	fmov.s @r0,fr4
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s @(r0,r4),fr3
	mov 0x02,r3 ; r3 set to 0x02
	fadd fr4,fr3 ; r3 ??? bc r4 is ???
	fmov.s fr3,@(r0,r4)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s @(r0,r4),fr2
	fadd fr4,fr2
	fmov.s fr2,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x80
	fmov.s @(r0,r4),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	cmp/ge r3,r0
	bt loc_8C0FFE1e
	bra loc_8C0FFE4e
	nop

loc_8c0ffe16:
	mov.w @(0x1C,r4),r0
	mov 0x0C,r3
	cmp/ge r3,r0
	bf loc_8c0ffe4e

loc_8C0FFE1E:
	mov.b @(0x05,r4),r0
	add 0x01,r0
	bra loc_8C0FFE4e
	mov.b r0,@(0x05,r4)

loc_8C0FFE26:
	mova @(loc_8C0FFEC8,pc),r0  ; r0 init to 0x8C0FFEC8
	fmov.s @r0,fr4
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s @(r0,r4),fr3
	fsub fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s @(r0,r4),fr2
	fsub fr4,fr2
	fmov.s fr2,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x80
	fmov.s @(r0,r4),fr3
	fsub fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	cmp/ge r5,r0
	bf loc_8C0FFE4e

loc_8C0FFE48:
	mov.l @(loc_8C0FFECC,pc),r2 ; r2 set to 0x8C0450C0
	jmp @r2
	nop

loc_8C0FFE4E:
	rts
	nop

;=============================================
loc_8c0ffe52:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c0ffed0,pc),r3
	mov 0x08,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c0ffeae
	mov r0,r4
	mov.w @(loc_8C0FFEB6,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C0FFED8,pc),r1
	mov.l @(loc_8c0ffed4,pc),r2
	mov.b r3,@(r0,r4)
	add 0xC0,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0x98,r0
	mov.w @(loc_8C0FFEB8,pc),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(loc_8c0ffedc,pc),r3
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0
	mov 0x50,r0
	fldi1 fr4
	fmov.s fr4,@(r0,r4)
	mov 0x54,r0
	fmov.s fr4,@(r0,r4)
	mov 0x58,r0
	fmov.s fr4,@(r0,r4)
	mov 0x78,r0
	fldi0 fr4
	fmov.s fr4,@(r0,r4)
	mov 0x7C,r0
	fmov.s fr4,@(r0,r4)
	add 0x04,r0
	fmov.s fr4,@(r0,r4)

loc_8c0ffeae:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0FFEB6:
	#data 0x012C
loc_8C0FFEB8:
	#data 0x0411
	#align4

loc_8c0ffebc:
	#data 0x3edb22d1
loc_8c0ffec0:
	#data 0x3e6b851f
loc_8c0ffec4:
	#data 0x3f000000
loc_8c0ffec8:
	#data 0x3e000000
loc_8c0ffecc:
	#data bank04.loc_8c0450c0
loc_8c0ffed0:
	#data bank04.loc_8c044f12
loc_8c0ffed4:
	#data loc_8c0ffd58
loc_8C0FFED8:
	#data 0x8C26A908
loc_8c0ffedc:
	#data bank12.loc_8c1294c8

;==============================================
loc_8C0FFEE0:
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_8C0FFEF2
	mov 0x14,r5 ; r5 set to 0x14
	cmp/eq 0x01,r0
	bt loc_8C0FFF1a
	bra loc_8C0FFF3a
	nop

loc_8C0FFEF2:
	mova @(loc_8C0FFFB0,pc),r0  ; r0 init to 0x8C0FFFB0
	fmov.s @r0,fr4
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r4),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r4),fr2
	fadd fr4,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0 ; r0 set to 0x55
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0 ; r0 ??
	cmp/ge r5,r0
	bf loc_8C0FFF3a
	mov.b @(0x04,r4),r0
	add 0x01,r0
	bra loc_8C0FFF3a
	mov.b r0,@(0x04,r4)

loc_8c0fff1a:
	mova @(loc_8C0FFFB4,pc),r0
	fmov.s @r0,fr4
	mov 0x50,r0
	fmov.s @(r0,r4),fr3
	fsub fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0
	fmov.s @(r0,r4),fr2
	fsub fr4,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/ge r5,r0
	bt loc_8c0fffa4

loc_8C0FFF3A:
	mova @(loc_8C0FFFB8,pc),r0  ; r0 init to 0x8C0FFFB8
	fmov.s @r0,fr4
	mov.b @(0x04,r4),r0
	extu.b r0,r0 ; r0 set to 0xB8
	cmp/eq 0x00,r0
	bt loc_8C0FFF52
	cmp/eq 0x01,r0
	bt loc_8C0FFF76
	cmp/eq 0x02,r0
	bt loc_8C0FFF86
	bra loc_8C0FFFAa
	nop

loc_8C0FFF52:
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s @(r0,r4),fr3
	mov 0x05,r3 ; r3 set to 0x05
	fadd fr4,fr3 ; r3 ??? bc r4 is ???
	fmov.s fr3,@(r0,r4)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s @(r0,r4),fr2
	fadd fr4,fr2
	fmov.s fr2,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x80
	fmov.s @(r0,r4),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	cmp/ge r3,r0
	bt loc_8C0FFF7e
	bra loc_8C0FFFAa
	nop

loc_8c0fff76:
	mov.w @(0x1C,r4),r0
	mov 0x0F,r3
	cmp/ge r3,r0
	bf loc_8c0fffaa

loc_8C0FFF7E:
	mov.b @(0x05,r4),r0
	add 0x01,r0
	bra loc_8C0FFFAa
	mov.b r0,@(0x05,r4)

loc_8C0FFF86:
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s @(r0,r4),fr3
	fsub fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s @(r0,r4),fr2
	fsub fr4,fr2
	fmov.s fr2,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x80
	fmov.s @(r0,r4),fr3
	fsub fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	cmp/ge r5,r0
	bf loc_8C0FFFAa

loc_8C0FFFA4:
	mov.l @(loc_8C0FFFBC,pc),r2 ; r2 set to 0x8C0450C0
	jmp @r2
	nop

loc_8C0FFFAA:
	rts
	nop

;=============================================
	#align4
loc_8C0FFFB0:
	#data 0x3EE66666
loc_8c0fffb4:
	#data 0x3E6B851f
loc_8C0FFFB8:
	#data 0x3E4CCCCd
loc_8C0FFFBC:
	#data bank04.loc_8c0450C0

;=============================================
loc_8c0fffc0:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c1000c4,pc),r3
	mov 0x08,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c10001c
	mov r0,r4
	mov.w @(loc_8C1000BE,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C1000CC,pc),r1
	mov.l @(loc_8c1000c8,pc),r2
	mov.b r3,@(r0,r4)
	add 0xC4,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0x94,r0
	mov.w @(loc_8C1000C0,pc),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(loc_8c1000d0,pc),r3
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0
	mov 0x50,r0
	fldi1 fr4
	fmov.s fr4,@(r0,r4)
	mov 0x54,r0
	fmov.s fr4,@(r0,r4)
	mov 0x58,r0
	fmov.s fr4,@(r0,r4)
	mov 0x78,r0
	fldi0 fr4
	fmov.s fr4,@(r0,r4)
	mov 0x7C,r0
	fmov.s fr4,@(r0,r4)
	add 0x04,r0
	fmov.s fr4,@(r0,r4)

loc_8c10001c:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C100024:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	bsr loc_8C0FFB86
	add 0x34,r4
	mov r14,r4
	bsr loc_8C0FFCF4
	add 0x34,r4
	mov r14,r4
	bsr loc_8C0FFE52
	add 0x34,r4
	mov r14,r4
	bsr loc_8C0FFFC0
	add 0x34,r4
	lds.l @r15+,pr
	mov.l @(loc_8C1000D4,pc),r3 ; r3 set to 0x8C0450C0
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C10004A:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(loc_8C1000C2,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8C100060
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r5,fr3
	fmov.s @(r0,r4),fr2
	bra loc_8C100068
	fsub fr3,fr2

loc_8C100060:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r5,fr3
	fmov.s @(r0,r4),fr2
	fadd fr3,fr2

loc_8C100068:
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	fmov.s fr2,@r15
	fmov.s @(r0,r5),fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r4),fr2
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	fadd fr3,fr2
	fldi0 fr3
	fmov.s fr2,@(r0,r15)
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
	fmov.s fr3,@(r0,r15)
	bsr loc_8C10008a
	mov r15,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	nop

;=============================================
loc_8C10008A:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x34,PC),r3
	mov 0x08,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c1000b6
	mov r0,r4
	mov.l @(0x34,PC),r2
	mov 0x00,r3
	mov.w @(0x16,PC),r0
	mov r4,r1
	add 0x34,r1
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @(0x20,PC),r3
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0


loc_8C1000B6:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1000be:
	#data 0x012C
loc_8c1000c0:
	#data 0x0411
loc_8C1000C2:
	#data 0x0130
	#align4

loc_8C1000C4:
	#data bank04.loc_8c044F12
loc_8C1000C8:
	#data loc_8c0fFEE0
loc_8c1000cc:
	#data 0x8C26A908
loc_8C1000D0:
	#data bank12.loc_8c1294C8
loc_8C1000D4:
	#data bank04.loc_8c0450C0
loc_8C1000D8:
	#data loc_8c100024
