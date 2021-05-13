loc_8C1000DC:
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov.b @(0x4,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bf loc_8c10010c
	mova @(0xE8,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov @(r0,r4),fr3
	mov 0x10,r3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mov 0x58,r0
	fmov @(r0,r4),fr2
	fadd fr4,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	cmp/ge r3,r0
	bf loc_8c10010c
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)

loc_8C10010C:
	mov.b @(0x5,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c10011c
	cmp/eq 0x01,r0
	bt loc_8c10013a
	bra loc_8c100148
	nop

loc_8C10011C:
	mov.l @(0xB8,PC),r1
	mov 0x54,r0
	fmov @(r0,r4),fr2
	mov 0x06,r3
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	cmp/ge r3,r0
	bf loc_8c100148
	mov.b @(0x5,r4),r0
	add 0x01,r0
	bra loc_8c100148
	mov.b r0,@(0x5,r4)

loc_8C10013A:
	mov.l @(0xA0,PC),r1
	mov 0x54,r0
	fmov @(r0,r4),fr2
	lds r1,fpul
	fsts fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r4)

loc_8C100148:
	mov.b @(0x6,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c10015c
	cmp/eq 0x01,r0
	bt loc_8c10018c
	cmp/eq 0x02,r0
	bt loc_8c10019c
	bra loc_8c1001c0
	nop

loc_8C10015C:
	mova @(0x80,PC),r0
	fmov @r0,fr4
	mov 0x74,r0
	fmov @(r0,r4),fr3
	mov 0x04,r3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mov 0x78,r0
	fmov @(r0,r4),fr2
	fadd fr4,fr2
	fmov fr2,@(r0,r4)
	mov 0x7C,r0
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	add 0x04,r0
	fmov @(r0,r4),fr2
	fadd fr4,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	cmp/ge r3,r0
	bt loc_8c100194
	bra loc_8c1001c0
	nop

loc_8C10018C:
	mov.w @(0x1C,r4),r0
	mov 0x0A,r3
	cmp/ge r3,r0
	bf loc_8c1001c0

loc_8C100194:
	mov.b @(0x6,r4),r0
	add 0x01,r0
	bra loc_8c1001c0
	mov.b r0,@(0x6,r4)

loc_8C10019C:
	mova @(0x44,PC),r0
	fmov @r0,fr4
	mov 0x74,r0
	fmov @(r0,r4),fr3
	fsub fr4,fr3
	fmov fr3,@(r0,r4)
	mov 0x78,r0
	fmov @(r0,r4),fr2
	fsub fr4,fr2
	fmov fr2,@(r0,r4)
	mov 0x7C,r0
	fmov @(r0,r4),fr3
	fsub fr4,fr3
	fmov fr3,@(r0,r4)
	add 0x04,r0
	fmov @(r0,r4),fr2
	fsub fr4,fr2
	fmov fr2,@(r0,r4)

loc_8C1001C0:
	mov.w @(0x1C,r4),r0
	mov 0x14,r3
	cmp/gt r3,r0
	bf loc_8c1001ce
	mov.l @(0x1C,PC),r2
	jmp @r2
	nop

loc_8C1001CE:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c1001d4:
	#data 0x3CCCCCCd
loc_8c1001d8:
	#data 0x3DA9FBE7
loc_8c1001dc:
	#data 0x3D1374Bc
loc_8c1001e0:
	#data 0x3E800000
loc_8c1001e4:
	#data 0x3DCCCCCd
loc_8C1001E8:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C1001EC:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x108,PC),r3
	mov 0x07,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c100238
	mov r0,r4
	mov.w @(0xF2,PC),r0
	mov 0x01,r3
	mov.l @(0xFC,PC),r1
	mov.l @(0xF4,PC),r2
	mov.b r3,@(r0,r4)
	add 0xCC,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0x8C,r0
	mov.l r3,@(r0,r4)
	mov.l @(0xE8,PC),r3
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xE4,PC),r2
	mov r4,r1
	mov.l @(0xDC,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0xC4,PC),r0
	mov 0x31,r1
	mov.l r1,@(r0,r4)

loc_8C100238:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C100240:
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_8C100258
	mov 0x07,r5 ; r5 set to 0x07
	cmp/eq 0x01,r0
	bt loc_8C100266
	bra loc_8C10027a
	nop

loc_8C100258:
	mov.w @(0x1C,r4),r0
	cmp/ge r5,r0
	bf loc_8C10027a
	mov.b @(0x04,r4),r0
	add 0x01,r0
	bra loc_8C10027a
	mov.b r0,@(0x04,r4)

loc_8c100266:
	mova @(loc_8C100310,pc),r0
	fmov.s @r0,fr4
	mov 0x50,r0
	fmov.s @(r0,r4),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x58,r0
	fmov.s @(r0,r4),fr2
	fadd fr4,fr2
	fmov.s fr2,@(r0,r4)

loc_8C10027A:
	mov.b @(0x05,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C10028a
	cmp/eq 0x01,r0
	bt loc_8C1002A6
	bra loc_8C1002B4
	nop

loc_8C10028A:
	mov.l @(loc_8C100314,pc),r1 ; r1 set to 0x3F122D0e
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r4),fr2
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	cmp/ge r5,r0
	bf loc_8C1002B4
	mov.b @(0x05,r4),r0
	add 0x01,r0 ; r0 set to 0x55
	bra loc_8C1002B4
	mov.b r0,@(0x05,r4)

loc_8c1002a6:
	mov.l @(loc_8C100318,pc),r1
	mov 0x54,r0
	fmov.s @(r0,r4),fr2
	lds r1,fpul
	fsts fpul,fr3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r4)

loc_8C1002B4:
	mov.b @(0x06,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C1002C8
	cmp/eq 0x01,r0
	bt loc_8C100320
	cmp/eq 0x02,r0
	bt loc_8C100352
	bra loc_8C100352
	nop

loc_8C1002C8:
	mova @(loc_8C10031C,pc),r0  ; r0 init to 0x8C10031c
	fmov.s @r0,fr4
	mov 0x74,r0 ; r0 set to 0x74
	fmov.s @(r0,r4),fr3
	mov 0x06,r3 ; r3 set to 0x06
	fadd fr4,fr3 ; r3 ??? bc r4 is ???
	fmov.s fr3,@(r0,r4)
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s @(r0,r4),fr2
	fadd fr4,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s @(r0,r4),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x80
	fmov.s @(r0,r4),fr2
	fadd fr4,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	cmp/ge r3,r0
	bt loc_8C10034c
	bra loc_8C100352
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1002f8:
	#data 0x012c
loc_8c1002fa:
	#data 0x00CC
	#align4

loc_8C1002FC:
	#data bank04.loc_8c044F12
loc_8C100300:
	#data loc_8c1000Dc
loc_8C100304:
	#data 0x8C26A908
loc_8C100308:
	#data bank12.loc_8c1294C8
loc_8C10030C:
	#data bank16.loc_8c164E34
loc_8c100310:
	#data 0x3d3c6a7f
loc_8c100314:
	#data 0x3f122d0e
loc_8c100318:
	#data 0x3e9db22d
loc_8c10031c:
	#data 0x3e23d70a

;==============================================
loc_8c100320:
	mova @(loc_8C10043C,pc),r0
	fmov.s @r0,fr4
	mov 0x74,r0
	fmov.s @(r0,r4),fr3
	mov 0x12,r3
	fsub fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x78,r0
	fmov.s @(r0,r4),fr2
	fsub fr4,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x7C,r0
	fmov.s @(r0,r4),fr3
	fsub fr4,fr3
	fmov.s fr3,@(r0,r4)
	add 0x04,r0
	fmov.s @(r0,r4),fr2
	fsub fr4,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	cmp/ge r3,r0
	bf loc_8c100352

loc_8C10034C:
	mov.b @(0x06,r4),r0
	add 0x01,r0
	mov.b r0,@(0x06,r4)

loc_8C100352:
	mov.w @(0x1C,r4),r0
	mov 0x14,r3 ; r3 set to 0x14, r3 set to 0x14
	cmp/gt r3,r0
	bf loc_8C100360
	mov.l @(loc_8C100440,pc),r2 ; r2 set to 0x8C0450C0, r2 set to 0x8C0450C0
	jmp @r2
	nop

loc_8C100360:
	rts
	nop

;==============================================
loc_8C100364:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xD8,PC),r3
	mov 0x07,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c1003b0
	mov r0,r4
	mov.w @(0xBA,PC),r0
	mov 0x01,r3
	mov.l @(0xCC,PC),r1
	mov.l @(0xC4,PC),r2
	mov.b r3,@(r0,r4)
	add 0xD0,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0x88,r0
	mov.l r3,@(r0,r4)
	mov.l @(0xB8,PC),r3
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xB4,PC),r2
	mov r4,r1
	mov.l @(0xAC,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x8C,PC),r0
	mov 0x39,r1
	mov.l r1,@(r0,r4)

loc_8C1003B0:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C1003B8:
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov.b @(0x4,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bf loc_8c1003e8
	mova @(0x90,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov @(r0,r4),fr3
	mov 0x14,r3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mov 0x58,r0
	fmov @(r0,r4),fr2
	fadd fr4,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	cmp/ge r3,r0
	bf loc_8c1003e8
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)

loc_8C1003E8:
	mov.b @(0x5,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c1003f8
	cmp/eq 0x01,r0
	bt loc_8c100416
	bra loc_8c100424
	nop

loc_8C1003F8:
	mov.l @(0x60,PC),r1
	mov 0x54,r0
	fmov @(r0,r4),fr2
	mov 0x08,r3
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	cmp/ge r3,r0
	bf loc_8c100424
	mov.b @(0x5,r4),r0
	add 0x01,r0
	bra loc_8c100424
	mov.b r0,@(0x5,r4)

loc_8C100416:
	mov.l @(0x48,PC),r1
	mov 0x54,r0
	fmov @(r0,r4),fr2
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)

loc_8C100424:
	mov.b @(0x6,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c100464
	cmp/eq 0x01,r0
	bt loc_8c100494
	cmp/eq 0x02,r0
	bt loc_8c1004a4
	bra loc_8c1004c8
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c100438:
	#data 0x012c
loc_8c10043a:
	#data 0x00CC
	#align4

loc_8c10043c:
	#data 0x3DA9FBE7
loc_8C100440:
	#data bank04.loc_8c0450C0
loc_8C100444:
	#data bank04.loc_8c044F12
loc_8C100448:
	#data loc_8c100240
loc_8C10044C:
	#data 0x8C26A908
loc_8C100450:
	#data bank12.loc_8c1294C8
loc_8C100454:
	#data bank16.loc_8c164E34
loc_8C100458:
	#data 0x3D4CCCCd
loc_8C10045c:
	#data 0x3E400000
loc_8C100460:
	#data 0xBE000000

;==============================================
loc_8C100464:
	mova @(0x118,PC),r0
	fmov @r0,fr4
	mov 0x74,r0
	fmov @(r0,r4),fr3
	mov 0x07,r3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mov 0x78,r0
	fmov @(r0,r4),fr2
	fadd fr4,fr2
	fmov fr2,@(r0,r4)
	mov 0x7C,r0
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	add 0x04,r0
	fmov @(r0,r4),fr2
	fadd fr4,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	cmp/ge r3,r0
	bt loc_8c10049c
	bra loc_8c1004c8
	nop

loc_8C100494:
	mov.w @(0x1C,r4),r0
	mov 0x11,r3
	cmp/ge r3,r0
	bf loc_8c1004c8

loc_8C10049C:
	mov.b @(0x6,r4),r0
	add 0x01,r0
	bra loc_8c1004c8
	mov.b r0,@(0x6,r4)

loc_8C1004A4:
	mova @(0xDC,PC),r0
	fmov @r0,fr4
	mov 0x74,r0
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mov 0x78,r0
	fmov @(r0,r4),fr2
	fadd fr4,fr2
	fmov fr2,@(r0,r4)
	mov 0x7C,r0
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	add 0x04,r0
	fmov @(r0,r4),fr2
	fadd fr4,fr2
	fmov fr2,@(r0,r4)

loc_8C1004C8:
	mov.w @(0x1C,r4),r0
	mov 0x14,r3
	cmp/gt r3,r0
	bf loc_8c1004d6
	mov.l @(0xB4,PC),r2
	jmp @r2
	nop

loc_8C1004D6:
	rts
	nop

;==============================================
loc_8C1004DA:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xAC,PC),r3
	mov 0x07,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c100526
	mov r0,r4
	mov.w @(0x86,PC),r0
	mov 0x01,r3
	mov.l @(0x9C,PC),r1
	mov.l @(0x98,PC),r2
	mov.b r3,@(r0,r4)
	add 0xD4,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0x84,r0
	mov.l r3,@(r0,r4)
	mov.l @(0x88,PC),r3
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x84,PC),r2
	mov r4,r1
	mov.l @(0x7C,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x58,PC),r0
	mov 0x39,r1
	mov.l r1,@(r0,r4)

loc_8C100526:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C10052E:
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov.b @(0x4,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bf loc_8c100550
	mova @(0x60,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mov 0x58,r0
	fmov @(r0,r4),fr2
	fadd fr4,fr2
	fmov fr2,@(r0,r4)

loc_8C100550:
	mov.b @(0x5,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bf loc_8c100566
	mov.l @(0x48,PC),r1
	mov 0x54,r0
	fmov @(r0,r4),fr2
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)

loc_8C100566:
	mov.b @(0x6,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c1005a8
	cmp/eq 0x01,r0
	bt loc_8c1005d8
	cmp/eq 0x02,r0
	bt loc_8c1005e8
	bra loc_8c10060c
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10057a:
	#data 0x012C
loc_8c10057c:
	#data 0x00Cc
	#align4

loc_8C100580:
	#data 0x3E124925
loc_8C100584:
	#data 0xBEAAAAAb
loc_8C100588:
	#data bank04.loc_8c0450C0
loc_8C10058C:
	#data bank04.loc_8c044F12
loc_8C100590:
	#data loc_8c1003B8
loc_8C100594:
	#data 0x8C26A908
loc_8C100598:
	#data bank12.loc_8c1294C8
loc_8C10059C:
	#data bank16.loc_8c164E34
loc_8C1005A0:
	#data 0x3D4CCCCd
loc_8C1005A4:
	#data 0xBCCCCCCd

;==============================================
loc_8C1005A8:
	mova @(0x100,PC),r0
	fmov @r0,fr4
	mov 0x74,r0
	fmov @(r0,r4),fr3
	mov 0x0A,r3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mov 0x78,r0
	fmov @(r0,r4),fr2
	fadd fr4,fr2
	fmov fr2,@(r0,r4)
	mov 0x7C,r0
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	add 0x04,r0
	fmov @(r0,r4),fr2
	fadd fr4,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	cmp/ge r3,r0
	bt loc_8c1005e0
	bra loc_8c10060c
	nop

loc_8C1005D8:
	mov.w @(0x1C,r4),r0
	mov 0x0D,r3
	cmp/ge r3,r0
	bf loc_8c10060c

loc_8C1005E0:
	mov.b @(0x6,r4),r0
	add 0x01,r0
	bra loc_8c10060c
	mov.b r0,@(0x6,r4)

loc_8C1005E8:
	mova @(0xC4,PC),r0
	fmov @r0,fr4
	mov 0x74,r0
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mov 0x78,r0
	fmov @(r0,r4),fr2
	fadd fr4,fr2
	fmov fr2,@(r0,r4)
	mov 0x7C,r0
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	add 0x04,r0
	fmov @(r0,r4),fr2
	fadd fr4,fr2
	fmov fr2,@(r0,r4)

loc_8C10060C:
	mov.w @(0x1C,r4),r0
	mov 0x14,r3
	cmp/gt r3,r0
	bf loc_8c10061a
	mov.l @(0x9C,PC),r2
	jmp @r2
	nop

loc_8C10061A:
	rts
	nop

;==============================================
loc_8C10061E:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x94,PC),r3
	mov 0x07,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c10066a
	mov r0,r4
	mov.w @(0x6E,PC),r0
	mov 0x01,r3
	mov.l @(0x84,PC),r1
	mov.l @(0x80,PC),r2
	mov.b r3,@(r0,r4)
	add 0xD8,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0x80,r0
	mov.l r3,@(r0,r4)
	mov.l @(0x70,PC),r3
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x6C,PC),r2
	mov r4,r1
	mov.l @(0x64,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x40,PC),r0
	mov 0x39,r1
	mov.l r1,@(r0,r4)

loc_8C10066A:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C100672:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r5,r3
	cmp/pz r3
	mov r4,r14
	bf.s loc_8c100690
	mov.l r5,@r15
	mov.l @(0x48,PC),r2
	mov 0x01,r1
	mov.l @(0x48,PC),r3
	mov 0x04,r5
	mov.b r1,@r2
	jsr @r3
	mov.l @r15,r4

loc_8C100690:
	bsr loc_8c1001ec
	mov r14,r4
	bsr loc_8c100364
	mov r14,r4
	bsr loc_8c1004da
	mov r14,r4
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c10061e
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1006a6:
	#data 0x012C
loc_8c1006a8:
	#data 0x00Cc
	#align4

loc_8c1006ac:
	#data 0x3DCCCCCd
loc_8c1006b0:
	#data 0xBE124925
loc_8C1006B4:
	#data bank04.loc_8c0450C0
loc_8C1006B8:
	#data bank04.loc_8c044F12
loc_8C1006BC:
	#data loc_8c10052e
loc_8c1006c0:
	#data 0x8C26A908
loc_8C1006C4:
	#data bank12.loc_8c1294C8
loc_8C1006C8:
	#data bank16.loc_8c164E34
loc_8c1006cc:
	#data 0x8C289623
loc_8C1006D0:
	#data bank03.loc_8c031B48

;==============================================
loc_8C1006D4:
	mov.l r8,@-r15
	add 0xFC,r15
	mov.w @(0x1C,r4),r0
	mov 0x0F,r3 ; r3 set to 0x0f
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	cmp/gt r3,r0
	bf loc_8C1006Ee
	add 0x04,r15
	mov.l @(loc_8C100840,pc),r1 ; r1 set to 0x8C0450C0
	jmp @r1
	mov.l @r15+,r8

loc_8c1006ee:
	mov.w @(0x1C,r4),r0
	mov.l @(loc_8c100844,pc),r1
	mov r0,r3
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	shll2 r0
	shll r0
	mov.l @(r0,r1),r2
	cmp/ge r2,r3
	bf loc_8c100708
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)

loc_8c100708:
	mov.w @(0x1C,r4),r0
	mov.l @(loc_8c100848,pc),r6
	mov r0,r3
	mov.b @(0x05,r4),r0
	extu.b r0,r0
	shll2 r0
	shll r0
	add r6,r0
	mov.l @(0x08,r0),r2
	cmp/ge r2,r3
	bf loc_8c100724
	mov.b @(0x05,r4),r0
	add 0x01,r0
	mov.b r0,@(0x05,r4)

loc_8c100724:
	mov.w @(0x1C,r4),r0
	mov.l @(loc_8c10084c,pc),r7
	mov r0,r3
	mov.b @(0x06,r4),r0
	extu.b r0,r0
	shll2 r0
	shll r0
	add r7,r0
	mov.l @(0x08,r0),r2
	cmp/ge r2,r3
	bf/s loc_8c100742
	mov 0x50,r8
	mov.b @(0x06,r4),r0
	add 0x01,r0
	mov.b r0,@(0x06,r4)

loc_8c100742:
	mov.b @(0x04,r4),r0
	add r4,r8
	mov.l @(loc_8c100850,pc),r3
	extu.b r0,r0
	mov r0,r5
	shll2 r5
	shll r5
	add r3,r5
	mov r5,r2
	mov 0x04,r0
	add 0x08,r2
	mov.l r2,@r15
	mov 0x54,r3
	fmov.s @(r0,r2),fr2
	add r4,r3
	mov.l @r5,r1
	mov.l @r2,r2
	fmov.s @(r0,r5),fr3
	sub r1,r2
	lds r2,fpul
	fsub fr3,fr2
	float fpul,fr3
	fdiv fr3,fr2
	fmov.s @r8,fr3
	fadd fr2,fr3
	fmov.s fr3,@r8
	mov.b @(0x05,r4),r0
	extu.b r0,r0
	mov r0,r5
	shll2 r5
	shll r5
	add r6,r5
	mov r5,r2
	mov 0x04,r0
	add 0x08,r2
	mov.l r2,@r15
	fmov.s @(r0,r2),fr2
	mov.l @r5,r1
	mov.l @r2,r2
	fmov.s @(r0,r5),fr3
	sub r1,r2
	lds r2,fpul
	fsub fr3,fr2
	mov 0x58,r1
	add r4,r1
	float fpul,fr3
	fdiv fr3,fr2
	fmov.s @r3,fr3
	fadd fr2,fr3
	fmov.s fr3,@r3
	mov.b @(0x06,r4),r0
	extu.b r0,r5
	shll2 r5
	shll r5
	add r7,r5
	mov r5,r6
	mov 0x04,r0
	add 0x08,r6
	fmov.s @(r0,r5),fr3
	fmov.s @(r0,r6),fr2
	mov.l @r5,r3
	fsub fr3,fr2
	mov.l @r6,r2
	sub r3,r2
	lds r2,fpul
	float fpul,fr3
	fdiv fr3,fr2
	fmov.s @r1,fr3
	fadd fr2,fr3
	fmov.s fr3,@r1
	add 0x04,r15
	rts
	mov.l @r15+,r8

;==============================================
loc_8c1007d4:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x78,PC),r3
	mov 0x07,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c100832
	mov r0,r4
	mov.w @(0x4C,PC),r0
	mov 0x01,r3
	mov.l @(0x6C,PC),r1
	mov.l @(0x64,PC),r2
	mov.b r3,@(r0,r4)
	add 0xDC,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov 0x11,r2
	mov.w @(0x34,PC),r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(0x50,PC),r3
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x4C,PC),r2
	mov r4,r1
	mov.l @(0x44,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x74,r0
	fldi0 fr4
	fmov fr4,@(r0,r4)
	mov 0x78,r0
	fmov fr4,@(r0,r4)
	mov 0x7C,r0
	fmov fr4,@(r0,r4)
	add 0x04,r0
	fmov fr4,@(r0,r4)

loc_8c100832:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10083a:
	#data 0x012c
loc_8c10083c:
	#data 0x0084
	#align4

loc_8c100840:
	#data bank04.loc_8C0450C0
loc_8c100844:
	#data bank16.loc_8c164e54
loc_8c100848:
	#data bank16.loc_8c164e64
loc_8c10084c:
	#data bank16.loc_8c164e7c
loc_8c100850:
	#data bank16.loc_8c164e4c
loc_8c100854:
	#data bank04.loc_8C044F12
loc_8c100858:
	#data loc_8C1006D4
loc_8c10085C:
	#data 0x8C26A908
loc_8c100860:
	#data bank12.loc_8C1294C8
loc_8c100864:
	#data bank16.loc_8C164E40

;==============================================
loc_8C100868:
	mov.l r8,@-r15
	add 0xFC,r15
	mov.w @(0x1C,r4),r0
	mov 0x0F,r3 ; r3 set to 0x0f
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	cmp/gt r3,r0
	bf loc_8C100882
	add 0x04,r15
	mov.l @(loc_8C1009D4,pc),r1 ; r1 set to 0x8C0450C0
	jmp @r1
	mov.l @r15+,r8

;==============================================
loc_8c100882:
	mov.w @(0x1C,r4),r0
	mov.l @(loc_8c1009d8,pc),r1
	mov r0,r3
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	shll2 r0
	shll r0
	mov.l @(r0,r1),r2
	cmp/ge r2,r3
	bf loc_8c10089c
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)

loc_8c10089c:
	mov.w @(0x1C,r4),r0
	mov.l @(loc_8c1009dc,pc),r6
	mov r0,r3
	mov.b @(0x05,r4),r0
	extu.b r0,r0
	shll2 r0
	shll r0
	add r6,r0
	mov.l @(0x08,r0),r2
	cmp/ge r2,r3
	bf loc_8c1008b8
	mov.b @(0x05,r4),r0
	add 0x01,r0
	mov.b r0,@(0x05,r4)

loc_8c1008b8:
	mov.w @(0x1C,r4),r0
	mov.l @(loc_8c1009e0,pc),r7
	mov r0,r3
	mov.b @(0x06,r4),r0
	extu.b r0,r0
	shll2 r0
	shll r0
	add r7,r0
	mov.l @(0x08,r0),r2
	cmp/ge r2,r3
	bf/s loc_8c1008d6
	mov 0x50,r8
	mov.b @(0x06,r4),r0
	add 0x01,r0
	mov.b r0,@(0x06,r4)

loc_8c1008d6:
	mov.b @(0x04,r4),r0
	add r4,r8
	mov.l @(loc_8c1009e4,pc),r3
	extu.b r0,r0
	mov r0,r5
	shll2 r5
	shll r5
	add r3,r5
	mov r5,r2
	mov 0x04,r0
	add 0x08,r2
	mov.l r2,@r15
	mov 0x54,r3
	fmov.s @(r0,r2),fr2
	add r4,r3
	mov.l @r5,r1
	mov.l @r2,r2
	fmov.s @(r0,r5),fr3
	sub r1,r2
	lds r2,fpul
	fsub fr3,fr2
	float fpul,fr3
	fdiv fr3,fr2
	fmov.s @r8,fr3
	fadd fr2,fr3
	fmov.s fr3,@r8
	mov.b @(0x05,r4),r0
	extu.b r0,r0
	mov r0,r5
	shll2 r5
	shll r5
	add r6,r5
	mov r5,r2
	mov 0x04,r0
	add 0x08,r2
	mov.l r2,@r15
	fmov.s @(r0,r2),fr2
	mov.l @r5,r1
	mov.l @r2,r2
	fmov.s @(r0,r5),fr3
	sub r1,r2
	lds r2,fpul
	fsub fr3,fr2
	mov 0x58,r1
	add r4,r1
	float fpul,fr3
	fdiv fr3,fr2
	fmov.s @r3,fr3
	fadd fr2,fr3
	fmov.s fr3,@r3
	mov.b @(0x06,r4),r0
	extu.b r0,r5
	shll2 r5
	shll r5
	add r7,r5
	mov r5,r6
	mov 0x04,r0
	add 0x08,r6
	fmov.s @(r0,r5),fr3
	fmov.s @(r0,r6),fr2
	mov.l @r5,r3
	fsub fr3,fr2
	mov.l @r6,r2
	sub r3,r2
	lds r2,fpul
	float fpul,fr3
	fdiv fr3,fr2
	fmov.s @r1,fr3
	fadd fr2,fr3
	fmov.s fr3,@r1
	add 0x04,r15
	rts
	mov.l @r15+,r8

;==============================================
loc_8c100968:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x78,PC),r3
	mov 0x07,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c1009c6
	mov r0,r4
	mov.w @(0x4C,PC),r0
	mov 0x01,r3
	mov.l @(0x6C,PC),r1
	mov.l @(0x64,PC),r2
	mov.b r3,@(r0,r4)
	add 0xE0,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov 0x11,r2
	mov.w @(0x34,PC),r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(0x50,PC),r3
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x4C,PC),r2
	mov r4,r1
	mov.l @(0x44,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x74,r0
	fldi0 fr4
	fmov fr4,@(r0,r4)
	mov 0x78,r0
	fmov fr4,@(r0,r4)
	mov 0x7C,r0
	fmov fr4,@(r0,r4)
	add 0x04,r0
	fmov fr4,@(r0,r4)

loc_8c1009c6:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1009ce:
	#data 0x012C
loc_8c1009d0:
	#data 0x0084
	#align4

loc_8c1009d4:
	#data bank04.loc_8C0450C0
loc_8c1009d8:
	#data bank16.loc_8c164e9c
loc_8c1009dc:
	#data bank16.loc_8c164ea4
loc_8c1009e0:
	#data bank16.loc_8c164ec4
loc_8c1009e4:
	#data bank16.loc_8c164e94
loc_8c1009e8:
	#data bank04.loc_8c044f12
loc_8c1009ec:
	#data loc_8c100868
loc_8c1009f0:
	#data 0x8C26A908
loc_8c1009f4:
	#data bank12.loc_8c1294c8
loc_8c1009f8:
	#data bank16.loc_8c164e40

;==============================================
loc_8C1009FC:
	mov.l r8,@-r15
	add 0xFC,r15
	mov.w @(0x1C,r4),r0
	mov 0x0F,r3 ; r3 set to 0x0f
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	cmp/gt r3,r0
	bf loc_8C100A16
	add 0x04,r15
	mov.l @(loc_8C100B68,pc),r1 ; r1 set to 0x8C0450C0
	jmp @r1
	mov.l @r15+,r8

loc_8c100a16:
	mov.w @(0x1C,r4),r0
	mov.l @(loc_8c100b6c,pc),r1
	mov r0,r3
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	shll2 r0
	shll r0
	mov.l @(r0,r1),r2
	cmp/ge r2,r3
	bf loc_8c100a30
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)

loc_8c100a30:
	mov.w @(0x1C,r4),r0
	mov.l @(loc_8c100b70,pc),r6
	mov r0,r3
	mov.b @(0x05,r4),r0
	extu.b r0,r0
	shll2 r0
	shll r0
	add r6,r0
	mov.l @(0x08,r0),r2
	cmp/ge r2,r3
	bf loc_8c100a4c
	mov.b @(0x05,r4),r0
	add 0x01,r0
	mov.b r0,@(0x05,r4)

loc_8c100a4c:
	mov.w @(0x1C,r4),r0
	mov.l @(loc_8c100b74,pc),r7
	mov r0,r3
	mov.b @(0x06,r4),r0
	extu.b r0,r0
	shll2 r0
	shll r0
	add r7,r0
	mov.l @(0x08,r0),r2
	cmp/ge r2,r3
	bf/s loc_8c100a6a
	mov 0x50,r8
	mov.b @(0x06,r4),r0
	add 0x01,r0
	mov.b r0,@(0x06,r4)

loc_8c100a6a:
	mov.b @(0x04,r4),r0
	add r4,r8
	mov.l @(loc_8c100b78,pc),r3
	extu.b r0,r0
	mov r0,r5
	shll2 r5
	shll r5
	add r3,r5
	mov r5,r2
	mov 0x04,r0
	add 0x08,r2
	mov.l r2,@r15
	mov 0x54,r3
	fmov.s @(r0,r2),fr2
	add r4,r3
	mov.l @r5,r1
	mov.l @r2,r2
	fmov.s @(r0,r5),fr3
	sub r1,r2
	lds r2,fpul
	fsub fr3,fr2
	float fpul,fr3
	fdiv fr3,fr2
	fmov.s @r8,fr3
	fadd fr2,fr3
	fmov.s fr3,@r8
	mov.b @(0x05,r4),r0
	extu.b r0,r0
	mov r0,r5
	shll2 r5
	shll r5
	add r6,r5
	mov r5,r2
	mov 0x04,r0
	add 0x08,r2
	mov.l r2,@r15
	fmov.s @(r0,r2),fr2
	mov.l @r5,r1
	mov.l @r2,r2
	fmov.s @(r0,r5),fr3
	sub r1,r2
	lds r2,fpul
	fsub fr3,fr2
	mov 0x58,r1
	add r4,r1
	float fpul,fr3
	fdiv fr3,fr2
	fmov.s @r3,fr3
	fadd fr2,fr3
	fmov.s fr3,@r3
	mov.b @(0x06,r4),r0
	extu.b r0,r5
	shll2 r5
	shll r5
	add r7,r5
	mov r5,r6
	mov 0x04,r0
	add 0x08,r6
	fmov.s @(r0,r5),fr3
	fmov.s @(r0,r6),fr2
	mov.l @r5,r3
	fsub fr3,fr2
	mov.l @r6,r2
	sub r3,r2
	lds r2,fpul
	float fpul,fr3
	fdiv fr3,fr2
	fmov.s @r1,fr3
	fadd fr2,fr3
	fmov.s fr3,@r1
	add 0x04,r15
	rts
	mov.l @r15+,r8

;==============================================
loc_8c100afc:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x78,PC),r3
	mov 0x07,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c100b5a
	mov r0,r4
	mov.w @(0x4C,PC),r0
	mov 0x01,r3
	mov.l @(0x6C,PC),r1
	mov.l @(0x64,PC),r2
	mov.b r3,@(r0,r4)
	add 0xE4,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov 0x11,r2
	mov.w @(0x34,PC),r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(0x50,PC),r3
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x4C,PC),r2
	mov r4,r1
	mov.l @(0x44,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x74,r0
	fldi0 fr4
	fmov fr4,@(r0,r4)
	mov 0x78,r0
	fmov fr4,@(r0,r4)
	mov 0x7C,r0
	fmov fr4,@(r0,r4)
	add 0x04,r0
	fmov fr4,@(r0,r4)

loc_8c100b5a:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c100b62:
	#data 0x012C
loc_8c100b64:
	#data 0x0084
	#align4

loc_8c100b68:
	#data bank04.loc_8c0450c0
loc_8c100b6c:
	#data bank16.loc_8c164edc
loc_8c100b70:
	#data bank16.loc_8c164ee4
loc_8c100b74:
	#data bank16.loc_8c164ef4
loc_8c100b78:
	#data bank16.loc_8c164ed4
loc_8c100b7c:
	#data bank04.loc_8c044f12
loc_8c100b80:
	#data loc_8C1009FC
loc_8c100b84:
	#data 0x8C26A908
loc_8c100b88:
	#data bank12.loc_8C1294C8
loc_8c100b8c:
	#data bank16.loc_8C164E40

;==============================================
loc_8C100B90:
	mov.l r8,@-r15
	add 0xFC,r15
	mov.w @(0x1C,r4),r0
	mov 0x0F,r3 ; r3 set to 0x0f
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	cmp/gt r3,r0
	bf loc_8C100BAa
	add 0x04,r15
	mov.l @(loc_8C100CFC,pc),r1 ; r1 set to 0x8C0450C0
	jmp @r1
	mov.l @r15+,r8

loc_8c100baa:
	mov.w @(0x1C,r4),r0
	mov.l @(loc_8c100d00,pc),r1
	mov r0,r3
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	shll2 r0
	shll r0
	mov.l @(r0,r1),r2
	cmp/ge r2,r3
	bf loc_8c100bc4
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)

loc_8c100bc4:
	mov.w @(0x1C,r4),r0
	mov.l @(loc_8c100d04,pc),r6
	mov r0,r3
	mov.b @(0x05,r4),r0
	extu.b r0,r0
	shll2 r0
	shll r0
	add r6,r0
	mov.l @(0x08,r0),r2
	cmp/ge r2,r3
	bf loc_8c100be0
	mov.b @(0x05,r4),r0
	add 0x01,r0
	mov.b r0,@(0x05,r4)

loc_8c100be0:
	mov.w @(0x1C,r4),r0
	mov.l @(loc_8c100d08,pc),r7
	mov r0,r3
	mov.b @(0x06,r4),r0
	extu.b r0,r0
	shll2 r0
	shll r0
	add r7,r0
	mov.l @(0x08,r0),r2
	cmp/ge r2,r3
	bf/s loc_8c100bfe
	mov 0x50,r8
	mov.b @(0x06,r4),r0
	add 0x01,r0
	mov.b r0,@(0x06,r4)

loc_8c100bfe:
	mov.b @(0x04,r4),r0
	add r4,r8
	mov.l @(loc_8c100d0c,pc),r3
	extu.b r0,r0
	mov r0,r5
	shll2 r5
	shll r5
	add r3,r5
	mov r5,r2
	mov 0x04,r0
	add 0x08,r2
	mov.l r2,@r15
	mov 0x54,r3
	fmov.s @(r0,r2),fr2
	add r4,r3
	mov.l @r5,r1
	mov.l @r2,r2
	fmov.s @(r0,r5),fr3
	sub r1,r2
	lds r2,fpul
	fsub fr3,fr2
	float fpul,fr3
	fdiv fr3,fr2
	fmov.s @r8,fr3
	fadd fr2,fr3
	fmov.s fr3,@r8
	mov.b @(0x05,r4),r0
	extu.b r0,r0
	mov r0,r5
	shll2 r5
	shll r5
	add r6,r5
	mov r5,r2
	mov 0x04,r0
	add 0x08,r2
	mov.l r2,@r15
	fmov.s @(r0,r2),fr2
	mov.l @r5,r1
	mov.l @r2,r2
	fmov.s @(r0,r5),fr3
	sub r1,r2
	lds r2,fpul
	fsub fr3,fr2
	mov 0x58,r1
	add r4,r1
	float fpul,fr3
	fdiv fr3,fr2
	fmov.s @r3,fr3
	fadd fr2,fr3
	fmov.s fr3,@r3
	mov.b @(0x06,r4),r0
	extu.b r0,r5
	shll2 r5
	shll r5
	add r7,r5
	mov r5,r6
	mov 0x04,r0
	add 0x08,r6
	fmov.s @(r0,r5),fr3
	fmov.s @(r0,r6),fr2
	mov.l @r5,r3
	fsub fr3,fr2
	mov.l @r6,r2
	sub r3,r2
	lds r2,fpul
	float fpul,fr3
	fdiv fr3,fr2
	fmov.s @r1,fr3
	fadd fr2,fr3
	fmov.s fr3,@r1
	add 0x04,r15
	rts
	mov.l @r15+,r8

;==============================================
loc_8c100c90:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x78,PC),r3
	mov 0x07,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c100cee
	mov r0,r4
	mov.w @(0x4C,PC),r0
	mov 0x01,r3
	mov.l @(0x6C,PC),r1
	mov.l @(0x64,PC),r2
	mov.b r3,@(r0,r4)
	add 0xE8,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov 0x11,r2
	mov.w @(0x34,PC),r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(0x50,PC),r3
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x4C,PC),r2
	mov r4,r1
	mov.l @(0x44,PC),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x74,r0
	fldi0 fr4
	fmov fr4,@(r0,r4)
	mov 0x78,r0
	fmov fr4,@(r0,r4)
	mov 0x7C,r0
	fmov fr4,@(r0,r4)
	add 0x04,r0
	fmov fr4,@(r0,r4)

loc_8c100cee:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c100cf6:
	#data 0x012C
loc_8c100cf8:
	#data 0x0084
	#align4

loc_8c100cfc:
	#data bank04.loc_8c0450c0
loc_8c100d00:
	#data bank16.loc_8c164f0c
loc_8c100d04:
	#data bank16.loc_8c164f14
loc_8c100d08:
	#data bank16.loc_8c164f3c
loc_8c100d0c:
	#data bank16.loc_8c164f04
loc_8c100d10:
	#data bank04.loc_8c044f12
loc_8c100d14:
	#data loc_8C100B90
loc_8c100d18:
	#data 0x8C26A908
loc_8c100d1c:
	#data bank12.loc_8C1294C8
loc_8c100d20:
	#data bank16.loc_8C164E40

;==============================================
loc_8C100D24:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	mov 0x1E,r3 ; r3 set to 0x1e
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/gt r3,r0
	bf loc_8C100D42
	lds.l @r15+,pr
	mov.l @(loc_8C100E6C,pc),r1 ; r1 set to 0x8C0450C0
	mov r14,r4
	jmp @r1
	mov.l @r15+,r14

loc_8C100D42:
	mov.l @(loc_8C100E70,pc),r3 ; r3 set to 0x8C1087Ce
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C100E74,pc),r1 ; r1 set to 0x3D088889
	mov 0x74,r0 ; r0 set to 0x74
	fmov.s @(r0,r14),fr2
	lds r1,fpul
	fsts fpul,fr3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c100d5c:
	mov.l r14,@-r15
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c100e78,pc),r3
	mov 0x01,r6
	mov.l r4,@r15
	mov.l r5,@(0x04,r15)
	mov 0x07,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c100e38
	mov r0,r14
	mov.w @(loc_8C100E66,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C100E80,pc),r1
	mov.l @(loc_8c100e7c,pc),r2
	mov.b r3,@(r0,r14)
	add 0xEC,r0
	mov.l r2,@(0x10,r14)
	mov.l @r1,r3
	mov r14,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov 0x21,r2
	mov.w @(loc_8C100E68,pc),r0
	mov.l r3,@(r0,r14)
	add 0x48,r0
	mov.l r2,@(r0,r14)
	mov.l @(loc_8c100e84,pc),r3
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c100e88,pc),r2
	mov r14,r1
	mov.l @(loc_8c100e84,pc),r3
	add 0x50,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x04,r15),r4
	mova @(loc_8C100E8C,pc),r0
	fmov.s @r0,fr15
	mova @(loc_8C100E90,pc),r0
	mov r4,r3
	shll2 r4
	shll r4
	fmov.s @r0,fr2
	add r3,r4
	mov.l @(loc_8C100E9C,pc),r3
	shll2 r4
	mov.l @(loc_8c100ea0,pc),r1
	lds r4,fpul
	mova @(loc_8C100E94,pc),r0
	fmov.s @r0,fr1
	mova @(loc_8C100E98,pc),r0
	fmov.s @r0,fr0
	float fpul,fr3
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r4
	and r3,r4
	jsr @r1
	mov.l r4,@r15
	fmul fr15,fr0
	mov.l @(loc_8c100ea4,pc),r3
	mov 0x5C,r0
	jsr @r3
	fmov.s fr0,@(r0,r14)
	mov.l @(loc_8c100ea8,pc),r2
	mov r0,r1
	jsr @r2
	mov 0x14,r0
	add 0x1E,r0
	mov.l @(loc_8c100eac,pc),r3
	lds r0,fpul
	mov 0x60,r0
	float fpul,fr3
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov.l @r15,r4
	fmul fr15,fr0
	mov 0x64,r0
	fmov.s fr0,@(r0,r14)
	mova @(loc_8C100EB0,pc),r0
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

loc_8c100e38:
	add 0x08,r15
	lds.l @r15+,pr
	fmov.s @r15+,fr15
	rts
	mov.l @r15+,r14

loc_8C100E42:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x00,r14 ; r14 set to 0x00
	mov.l r4,@r15
	mov 0x0A,r13 ; r13 set to 0x0a

loc_8C100E50:
	mov r14,r5 ; r5 set to 0x00
	bsr loc_8C100D5c
	mov.l @r15,r4
	add 0x01,r14 ; r14 set to 0x01
	cmp/ge r13,r14
	bf loc_8C100E50
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	rts
	mov.l @r15+,r14

;==============================================
loc_8c100e66:
	#data 0x012c
loc_8c100e68:
	#data 0x0084
	#align4

loc_8C100E6C:
	#data bank04.loc_8c0450C0
loc_8C100E70:
	#data loc_8c1087Ce
loc_8C100E74:
	#data 0x3D088889
loc_8C100E78:
	#data bank04.loc_8c044F12
loc_8C100E7C:
	#data loc_8c100D24
loc_8c100e80:
	#data 0x8C26A908
loc_8C100E84:
	#data bank12.loc_8c1294C8
loc_8C100E88:
	#data bank16.loc_8c164E40
loc_8c100e8c:
	#data 0x41200000
loc_8c100e90:
	#data 0x47800000
loc_8c100e94:
	#data 0x43B40000
loc_8c100e98:
	#data 0x3F000000
loc_8c100e9c:
	#data 0x0000FFFf
loc_8C100EA0:
	#data bank11.loc_8c11E860
loc_8C100EA4:
	#data bank11.loc_8c11e730
loc_8C100EA8:
	#data bank12.loc_8c1292D4
loc_8C100EAC:
	#data bank11.loc_8c11E2E0
loc_8c100eb0:
	#data 0x41F00000

;==============================================
loc_8C100EB4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8C1007D4
	mov r4,r14
	bsr loc_8C100968
	mov r14,r4
	bsr loc_8C100AFc
	mov r14,r4
	bsr loc_8C100C90
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C100E42
	mov.l @r15+,r14

;==============================================
loc_8C100ED0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x28,r13
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	fmov fr12,@-r15
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	mov.l @(0x14,r14),r4
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/ge r13,r0
	bf.s loc_8c100ef6
	mov r14,r1
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)

loc_8C100EF6:
	mov.l @(0x10C,PC),r3
	mov r4,r2
	add 0x34,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mova @(0x104,PC),r0
	mov r14,r3
	fmov @r0,fr12
	mova @(0x100,PC),r0
	fmov @r0,fr13
	mova @(0x100,PC),r0
	fmov @r0,fr14
	mova @(0x100,PC),r0
	fmov @r0,fr15
	mov 0x34,r0
	add r0,r3
	mov.w @(0xE0,PC),r1
	mov.l r3,@-r15
	mov.w @(0x1C,r14),r0
	muls.w r1,r0
	sts macl,r1
	mov r13,r0
	nop
	mov.l @(0xF0,PC),r3
	jsr @r3
	nop
	mov 0x20,r4
	mov.l @(0xF0,PC),r1
	add r14,r4
	mov.l @(0xE8,PC),r2
	mov.b @r4,r4
	mov 0x5A,r3
	extu.b r4,r4
	mulu.w r3,r4
	sts macl,r4
	add r0,r4
	lds r4,fpul
	float fpul,fr3
	fmov fr3,fr2
	fmul fr13,fr2
	fdiv fr14,fr2
	fmov fr2,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r1
	and r2,r4
	mov.l @r15+,r2
	mov 0x38,r0
	fmov fr0,fr3
	mov r14,r3
	fmov @r2,fr2
	fmov fr12,fr0
	fmac fr0,fr3,fr2
	mov.l @(0xBC,PC),r1
	lds r1,fpul
	mov.w @(0x90,PC),r1
	fmov fr2,@r2
	fmov @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x3C,r0
	add r0,r3
	mov.l r3,@-r15
	mov.w @(0x1C,r14),r0
	muls.w r1,r0
	sts macl,r1
	mov r13,r0
	nop
	mov.l @(0x90,PC),r3
	jsr @r3
	nop
	mov 0x20,r4
	mov.l @(0x98,PC),r1
	add r14,r4
	mov.l @(0x88,PC),r2
	mov.b @r4,r4
	mov 0x5A,r3
	extu.b r4,r4
	mulu.w r3,r4
	sts macl,r4
	add r0,r4
	lds r4,fpul
	float fpul,fr2
	fmov fr2,fr1
	fmul fr13,fr1
	fdiv fr14,fr1
	fmov fr1,fr2
	fadd fr15,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r1
	and r2,r4
	mov.l @r15+,r2
	mov 0x44,r0
	mov.w @(0x42,PC),r3
	fmov @r2,fr2
	fmov fr0,fr3
	fmov fr12,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@r2
	mov.l @(r0,r14),r1
	mov.w @(0x36,PC),r2
	add r3,r1
	mov.l r1,@(r0,r14)
	mov.w @(0x1E,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/gt r2,r0
	bf loc_8c100fec               ; loc_8c100fea+0x2
	lds.l @r15+,pr
	mov.l @(0x50,PC),r1
	mov r14,r4
	fmov @r15+,fr12
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r13
	jmp @r1
	mov.l @r15+,r14

loc_8C100FEC:
	lds.l @r15+,pr
	fmov @r15+,fr12
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c100ffc:
	#data 0x0168
loc_8c100ffe:
	#data 0x0CCD
loc_8c101000:
	#data 0x012c
	#align4

loc_8C101004:
	#data bank12.loc_8c1294C8
loc_8C101008:
	#data 0x42480000
loc_8C10100c:
	#data 0x47800000
loc_8C101010:
	#data 0x43B40000
loc_8C101014:
	#data 0x3F000000
loc_8C101018:
	#data bank12.loc_8c129128
loc_8C10101c:
	#data 0x0000FFFf
loc_8C101020:
	#data bank11.loc_8c11E860
loc_8C101024:
	#data 0x437A0000
loc_8C101028:
	#data bank11.loc_8c11E2E0
loc_8C10102C:
	#data bank04.loc_8c0450C0

;==============================================
loc_8c101030:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x68,PC),r3
	mov 0x01,r6
	mov.l r4,@(0x4,r15)
	mov.l r5,@r15
	mov 0x05,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c101070
	mov r0,r4
	mov.w @(0x50,PC),r0
	mov 0x01,r3
	mov.l @(0x58,PC),r1
	mov.l @(0x54,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.w @(0x44,PC),r0
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0xE0,r0
	mov 0x05,r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov 0x20,r0
	mov.l @(0x4,r15),r3
	mov.l r3,@(0x14,r4)
	mov.l @r15,r2
	mov.b r2,@(r0,r4)

loc_8c101070:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
;unused?
loc_8c101078:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x00,r14
	mov.l r4,@r15
	mov 0x04,r13

loc_8c101086:
	mov r14,r5
	bsr loc_8c101030
	mov.l @r15,r4
	add 0x01,r14
	cmp/ge r13,r14
	bf loc_8c101086
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C10109c:
	#data 0x012c
loc_8C10109e:
	#data 0x00A4
	#align4

loc_8C1010A0:
	#data bank04.loc_8c044F12
loc_8C1010A4:
	#data loc_8c100ED0
loc_8C1010A8:
	#data 0x8C26A908

;==============================================
loc_8C1010AC:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x09,r3 ; r3 set to 0x09
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8C1010C8
	lds.l @r15+,pr
	mov.l @(loc_8C1011B8,pc),r1 ; r1 set to 0x8C0450C0
	mov r14,r4
	mov.l @r15+,r13
	jmp @r1
	mov.l @r15+,r14

loc_8C1010C8:
	mov.w @(0x1C,r14),r0
	mov r14,r5
	mov.l @(loc_8C1011C0,pc),r4 ; r4 set to 0x8C164F70
	mov.l @(loc_8C1011BC,pc),r13 ; r13 set to 0x8C0FD914
	mov r0,r6
	jsr @r13
	add 0x04,r5
	mov 0x50,r0 ; r0 set to 0x50
	mov.l @(loc_8C1011C4,pc),r4 ; r4 set to 0x8C164F80
	fmov.s fr0,@(r0,r14)
	mov r14,r5
	mov.w @(0x1C,r14),r0
	mov r0,r6 ; r6 set to 0x50
	jsr @r13
	add 0x05,r5
	mov 0x54,r0 ; r0 set to 0x54
	mov.l @(loc_8C1011C8,pc),r4 ; r4 set to 0x8C164F98
	fmov.s fr0,@(r0,r14)
	mov r14,r5
	mov.w @(0x1C,r14),r0
	mov r0,r6 ; r6 set to 0x54
	jsr @r13
	add 0x06,r5
	mov 0x58,r0 ; r0 set to 0x58
	mov.l @(loc_8C1011CC,pc),r4 ; r4 set to 0x8C164FA8
	fmov.s fr0,@(r0,r14)
	mov r14,r5
	mov.w @(0x1C,r14),r0
	mov r0,r6 ; r6 set to 0x58
	jsr @r13
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
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	rts
	mov.l @r15+,r14

;==============================================
loc_8C101126:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xA4,PC),r3
	mov 0x07,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c101166
	mov r0,r4
	mov.w @(0x72,PC),r0
	mov 0x01,r3
	mov.l @(0x94,PC),r1
	mov.l @(0x90,PC),r2
	mov.b r3,@(r0,r4)
	add 0x18,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov 0x11,r2
	mov.w @(0x5A,PC),r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(0x7C,PC),r3
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0

loc_8C101166:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C10116E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x6C,PC),r3
	jsr @r3
	mov r4,r14
	mov 0x38,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_8c101194
	mov.l @(0x60,PC),r1
	mov 0x60,r0
	fmov @(r0,r14),fr1
	lds r1,fpul
	fsts fpul,fr2
	fmul fr2,fr1
	fmov fr1,@(r0,r14)
	mov 0x38,r0
	fmov fr3,@(r0,r14)

loc_8C101194:
	mov.w @(0x1C,r14),r0
	mov 0x3C,r3
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8c1011ac
	lds.l @r15+,pr
	mov.l @(0x10,PC),r1
	mov r14,r4
	jmp @r1
	mov.l @r15+,r14

loc_8C1011AC:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1011b2:
	#data 0x012c
loc_8c1011b4:
	#data 0x0084
	#align4

loc_8C1011B8:
	#data bank04.loc_8c0450C0
loc_8C1011BC:
	#data bank0f.loc_8c0fD914
loc_8C1011C0:
	#data bank16.loc_8c164F70
loc_8C1011C4:
	#data bank16.loc_8c164F80
loc_8C1011C8:
	#data bank16.loc_8c164F98
loc_8C1011CC:
	#data bank16.loc_8c164FA8
loc_8C1011D0:
	#data bank04.loc_8c044F12
loc_8C1011D4:
	#data loc_8c1010Ac
loc_8C1011D8:
	#data 0x8C26A908
loc_8C1011DC:
	#data bank12.loc_8c1294C8
loc_8C1011E0:
	#data loc_8c1087Ce
loc_8C1011E4:
	#data 0xBF000000

;==============================================
loc_8C1011E8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r5,r13
	mov.l @(0x10C,PC),r3
	mov 0x07,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c1012a2
	mov r0,r14
	mov.l @(0x104,PC),r1
	mov 0x01,r4
	mov.l @(0xFC,PC),r3
	mov.w @(0xEC,PC),r0
	mov.b r4,@(r0,r14)
	add 0xF4,r0
	mov.l r3,@(0x10,r14)
	mov r13,r3
	mov.l @r1,r2
	shll2 r3
	mov r14,r1
	add 0x34,r1
	mov.l @r2,r2
	add r2,r3
	mov.l @(r0,r3),r3
	mov.w @(0xD6,PC),r0
	mov.l r3,@(r0,r14)
	add 0x48,r0
	mov.l @(0xE4,PC),r3
	mov.l r4,@(r0,r14)
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0xC8,PC),r1
	mov 0x20,r0
	mov.l @(0xD8,PC),r3
	mul.l r1,r13
	mov.b r13,@(r0,r14)
	sts macl,r1
	jsr @r3
	mov 0x09,r0
	add 0x14,r0
	mov.l @(0xE4,PC),r2
	mov.l r0,@(0x4,r15)
	mova @(0xCC,PC),r0
	mov.l @(0x4,r15),r3
	fmov @r0,fr15
	mova @(0xC8,PC),r0
	lds r3,fpul
	fmov @r0,fr2
	mova @(0xC8,PC),r0
	fmov @r0,fr1
	mova @(0xC8,PC),r0
	float fpul,fr3
	fmov @r0,fr0
	mov.l @(0xC4,PC),r3
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r4
	and r3,r4
	jsr @r2
	mov.l r4,@r15
	fmul fr15,fr0
	mov.l @(0xB8,PC),r3
	mov 0x5C,r0
	jsr @r3
	fmov fr0,@(r0,r14)
	mova @(0xB4,PC),r0
	fmov fr0,fr3
	fmov @r0,fr0
	mov 0x60,r0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	mov.l @(0xAC,PC),r3
	fmov fr2,@(r0,r14)
	jsr @r3
	mov.l @r15,r4
	fmul fr15,fr0
	mov.l @(0xA8,PC),r2
	mov.l @(0x78,PC),r3
	mov r14,r1
	mov 0x64,r0
	add 0x68,r1
	fmov fr0,@(r0,r14)
	jsr @r3
	mov 0x0C,r0

loc_8C1012A2:
	add 0x08,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C1012AE:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/eq 0x06,r0
	bf loc_8c1012ca
	mov r14,r4
	bsr loc_8c101126
	add 0x34,r4

loc_8C1012CA:
	mov.w @(0x1C,r14),r0
	mov 0x0F,r3
	cmp/gt r3,r0
	bf loc_8c1012f2
	mov 0x00,r13
	mov 0x09,r12

loc_8C1012D6:
	mov r14,r4
	mov r13,r5
	bsr loc_8c1011e8
	add 0x34,r4
	add 0x01,r13
	cmp/ge r12,r13
	bf loc_8c1012d6
	lds.l @r15+,pr
	mov.l @(0x58,PC),r3
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C1012F2:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14


;==============================================
loc_8c1012fc:
	#data 0x012c
loc_8c1012fe:
	#data 0x0084
loc_8c101300:
	#data 0x0168
	#align4

loc_8C101304:
	#data bank04.loc_8c044F12
loc_8C101308:
	#data loc_8c10116e
loc_8C10130c:
	#data 0x8C26A908
loc_8C101310:
	#data bank12.loc_8c1294C8
loc_8C101314:
	#data bank12.loc_8c129128
loc_8C101318:
	#data 0x41200000
loc_8C10131c:
	#data 0x47800000
loc_8C101320:
	#data 0x43B40000
loc_8C101324:
	#data 0x3F000000
loc_8C101328:
	#data 0x0000FFFf
loc_8C10132C:
	#data bank11.loc_8c11E860
loc_8C101330:
	#data bank11.loc_8c11E750
loc_8C101334:
	#data 0x41A00000
loc_8C101338:
	#data bank11.loc_8c11E2E0
loc_8C10133C:
	#data bank16.loc_8c164F64
loc_8C101340:
	#data bank04.loc_8c0450C0

;==============================================
;unused?
loc_8c101344:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x60,PC),r3
	mov 0x07,r5

loc_8c10134c:
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c1013a0
	mov r0,r4
	mov.w @(0x4A,PC),r0
	mov 0x01,r3
	mov.l @(0x54,PC),r1
	mov.l @(0x4C,PC),r2
	mov.b r3,@(r0,r4)
	add 0xF0,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov 0x11,r2
	mov.w @(0x32,PC),r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @r15,r2
	mov.l @(0x38,PC),r3
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x34,PC),r1
	mov 0x38,r0
	fmov @(r0,r4),fr2
	lds r1,fpul
	mov r4,r1
	mov.l @(0x2C,PC),r2
	add 0x50,r1
	mov.l @(0x20,PC),r3
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	jsr @r3
	mov 0x0C,r0

loc_8c1013a0:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1013A8:
	#data 0x012c
loc_8C1013AA:
	#data 0x0084
	#align4

loc_8C1013AC:
	#data bank04.loc_8c044F12
loc_8C1013B0:
	#data loc_8c1012Ae
loc_8C1013B4:
	#data 0x8C26A908
loc_8C1013B8:
	#data bank12.loc_8c1294C8
loc_8C1013BC:
	#data 0x42C80000
loc_8C1013C0:
	#data bank16.loc_8c164F58

;==============================================
loc_8C1013C4:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	mov 0x06,r3 ; r3 set to 0x06
	cmp/ge r3,r0
	bf loc_8C1013Dc
	lds.l @r15+,pr
	mov.l @(loc_8C101520,pc),r1 ; r1 set to 0x8C0450C0
	mov r14,r4
	jmp @r1
	mov.l @r15+,r14

;==============================================
loc_8C1013DC:
	mov.l @(loc_8C101524,pc),r4 ; r4 set to 0x8C164FEc
	mov r0,r6
	mov.l @(loc_8C101528,pc),r3 ; r3 set to 0x8C0FD914
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

;==============================================
loc_8c101406:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c10152c,pc),r3
	mov 0x01,r6
	mov.l r4,@(0x04,r15)
	mov.l r5,@r15
	mov 0x07,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c101454
	mov r0,r4
	mov.w @(loc_8C101512,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C101534,pc),r1
	mov.l @(loc_8c101530,pc),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(loc_8C101514,pc),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0x04,r0
	mov.l r3,@(r0,r4)
	mov.l @(loc_8c101538,pc),r3
	mov.l @(0x04,r15),r2
	jsr @r3
	mov 0x0C,r0
	mov.l @r15,r1
	mov.l @(loc_8c10153c,pc),r0
	shll2 r1
	mov.w @(loc_8C101516,pc),r2
	mov.l @(r0,r1),r3
	mov 0x44,r0
	mov.l r3,@(r0,r4)
	mov.w @(loc_8C101518,pc),r0
	mov.l r2,@(r0,r4)

loc_8c101454:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C10145C:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	mov 0x0C,r3 ; r3 set to 0x0c
	cmp/ge r3,r0
	bf loc_8C101474
	lds.l @r15+,pr
	mov.l @(loc_8C101520,pc),r1 ; r1 set to 0x8C0450C0
	mov r14,r4
	jmp @r1
	mov.l @r15+,r14

loc_8C101474:
	mov 0x50,r0 ; r0 set to 0x50
	fldi1 fr3
	fmov.s fr3,@(r0,r14)
	mov r14,r5
	mov.w @(0x1C,r14),r0
	mov.l @(loc_8C101540,pc),r4 ; r4 set to 0x8C164FFc
	mov.l @(loc_8C101528,pc),r3 ; r3 set to 0x8C0FD914
	mov r0,r6 ; r6 set to 0x50
	jsr @r3
	add 0x04,r5
	mov 0x54,r0 ; r0 set to 0x54
	fmov fr0,fr3 ; r3 ??
	fmov.s fr0,@(r0,r14)
	mov 0x58,r0 ; r0 set to 0x58
	fmov.s fr3,@(r0,r14)
	mov r14,r5
	mov.w @(0x1C,r14),r0
	mov.l @(loc_8C101544,pc),r4 ; r4 set to 0x8C16501c
	mov.l @(loc_8C101528,pc),r3 ; r3 set to 0x8C0FD914
	mov r0,r6 ; r6 set to 0x58
	jsr @r3
	add 0x06,r5
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

;==============================================
loc_8c1014be:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c10152c,pc),r3
	mov 0x01,r6
	mov.l r4,@(0x04,r15)
	mov.l r5,@r15
	mov 0x07,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c10150a
	mov r0,r4
	mov.w @(loc_8C101512,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C101534,pc),r1
	mov.l @(loc_8c101548,pc),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(loc_8C10151A,pc),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov.l r3,@(r0,r4)
	mov.l @(loc_8c101538,pc),r3
	mov.l @(0x04,r15),r2
	jsr @r3
	mov 0x0C,r0
	mov.l @r15,r1
	mov.l @(loc_8c10153c,pc),r0
	shll2 r1
	mov.w @(loc_8C10151C,pc),r2
	mov.l @(r0,r1),r3
	mov 0x44,r0
	mov.l r3,@(r0,r4)
	mov.w @(loc_8C101518,pc),r0
	mov.l r2,@(r0,r4)

loc_8c10150a:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C101512:
	#data 0x012C
loc_8c101514:
	#data 0x0080
loc_8c101516:
	#data 0x0505
loc_8C101518:
	#data 0x00CC
loc_8C10151A:
	#data 0x0084
loc_8C10151C:
	#data 0x0515
	#align4

loc_8c101520:
	#data bank04.loc_8c0450c0
loc_8c101524:
	#data bank16.loc_8c164fec
loc_8c101528:
	#data bank0f.loc_8c0fd914
loc_8c10152c:
	#data bank04.loc_8c044f12
loc_8c101530:
	#data bank10.loc_8c1013c4
loc_8c101534:
	#data 0x8c26a908
loc_8c101538:
	#data bank12.loc_8c1294c8
loc_8c10153c:
	#data bank16.loc_8c164fcc
loc_8c101540:
	#data bank16.loc_8c164ffc
loc_8c101544:
	#data bank16.loc_8c16501c
loc_8c101548:
	#data bank10.loc_8c10145c

;==============================================
loc_8C10154C:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	mov 0x0C,r3 ; r3 set to 0x0c
	cmp/ge r3,r0
	bf loc_8C101564
	lds.l @r15+,pr
	mov.l @(loc_8C101680,pc),r1 ; r1 set to 0x8C0450C0
	mov r14,r4
	jmp @r1
	mov.l @r15+,r14

loc_8C101564:
	mov 0x5C,r1 ; r1 set to 0x5c
	mov.l @(loc_8C101684,pc),r4 ; r4 set to 0x8C165034
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C101688,pc),r3 ; r3 set to 0x8C0FD914
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2
	mov 0x64,r1 ; r1 set to 0x64
	add r14,r1 ; r1 ??? bc r14 is ???
	mov r14,r5
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	mov r0,r6 ; r6 set to 0x3c
	jsr @r3
	add 0x04,r5
	mov 0x50,r0 ; r0 set to 0x50
	fmov fr0,fr3
	fmov.s fr0,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr3,@(r0,r14)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r14),fr3
	mov 0x58,r0 ; r0 set to 0x58
	mov.l @(loc_8C10168C,pc),r4 ; r4 set to 0x8C165054
	mov r14,r5
	fmov.s fr3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	mov.l @(loc_8C101688,pc),r3 ; r3 set to 0x8C0FD914
	mov r0,r6 ; r6 set to 0x58
	jsr @r3
	add 0x06,r5
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

;==============================================
loc_8c1015cc:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c101690,pc),r3
	mov 0x01,r6
	mov.l r4,@(0x04,r15)
	mov.l r5,@r15
	mov 0x07,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c101632
	mov r0,r4
	mov.w @(loc_8C101676,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C101698,pc),r1
	mov.l @(loc_8c101694,pc),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(loc_8C101678,pc),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0xE4,r0
	mov.l r3,@(r0,r4)
	mov.l @(loc_8c10169c,pc),r3
	mov.l @(0x04,r15),r2
	jsr @r3
	mov 0x0C,r0
	mov.l @r15,r1
	mov.l @(loc_8c1016a0,pc),r0
	shll2 r1
	mov.l @(r0,r1),r3
	mov 0x44,r0
	mov r4,r1
	add 0x5C,r1
	mov.l r3,@(r0,r4)
	mov.l @r15,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c1016a4,pc),r3
	shll2 r2
	add r3,r2
	mov.l @(loc_8c10169c,pc),r3
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8C10167C,pc),r0
	mov.w @(loc_8C10167A,pc),r1
	mov.l r1,@(r0,r4)

loc_8c101632:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C10163A:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	bsr loc_8C101406
	mov r5,r14
	mov r14,r5
	bsr loc_8C1014Be
	mov r13,r4
	lds.l @r15+,pr
	mov r13,r4
	mov r14,r5
	mov.l @r15+,r13
	bra loc_8C1015Cc
	mov.l @r15+,r14

;==============================================
loc_8c101658:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	bsr loc_8c101406
	mov r5,r14
	mov r14,r5
	bsr loc_8c1014be
	mov r13,r4
	lds.l @r15+,pr
	mov r13,r4
	mov r14,r5
	mov.l @r15+,r13
	bra loc_8c1015cc
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c101676:
	#data 0x012C
loc_8c101678:
	#data 0x00A0
loc_8c10167a:
	#data 0x0515
loc_8c10167c:
	#data 0x00Cc
	#align4

loc_8C101680:
	#data bank04.loc_8c0450C0
loc_8C101684:
	#data bank16.loc_8c165034
loc_8C101688:
	#data bank0f.loc_8c0fD914
loc_8C10168C:
	#data bank16.loc_8c165054
loc_8C101690:
	#data bank04.loc_8c044F12
loc_8C101694:
	#data loc_8c10154c
loc_8c101698:
	#data 0x8C26A908
loc_8C10169C:
	#data bank12.loc_8c1294C8
loc_8C1016A0:
	#data bank16.loc_8c164FCc
loc_8C1016A4:
	#data bank16.loc_8c164FD4

;==============================================
loc_8C1016A8:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	mov 0x0D,r3 ; r3 set to 0x0d
	cmp/ge r3,r0
	bf loc_8C1016C0
	lds.l @r15+,pr
	mov.l @(loc_8C101818,pc),r1 ; r1 set to 0x8C0450C0
	mov r14,r4
	jmp @r1
	mov.l @r15+,r14

loc_8C1016C0:
	mov.l @(loc_8C10181C,pc),r4 ; r4 set to 0x8C165098
	mov r0,r6
	mov.l @(loc_8C101820,pc),r3 ; r3 set to 0x8C0FD914
	mov r14,r5
	jsr @r3
	add 0x04,r5
	mov 0x50,r0 ; r0 set to 0x50
	fmov fr0,fr3 ; r3 ??
	fmov.s fr0,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr3,@(r0,r14)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r14),fr3
	mov 0x58,r0 ; r0 set to 0x58
	mov 0x5C,r1 ; r1 set to 0x5c
	mov.l @(loc_8C101824,pc),r4 ; r4 set to 0x8C1650B8
	fmov.s fr3,@(r0,r14)
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	mov 0x64,r1 ; r1 set to 0x64
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C101820,pc),r3 ; r3 set to 0x8C0FD914
	fadd fr3,fr2
	mov r14,r5
	fmov.s fr2,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	mov r0,r6 ; r6 set to 0x3c
	jsr @r3
	add 0x06,r5
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

;==============================================
loc_8c101726:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c101828,pc),r3
	mov 0x01,r6
	mov.l r4,@(0x04,r15)
	mov.l r5,@r15
	mov 0x07,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c10178a
	mov r0,r4
	mov.w @(loc_8C101810,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C101830,pc),r1
	mov.l @(loc_8c10182c,pc),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(loc_8C101812,pc),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(0x30,r2),r3
	mov.l r3,@(r0,r4)
	mov.l @(loc_8c101834,pc),r3
	mov.l @(0x04,r15),r2
	jsr @r3
	mov 0x0C,r0
	mov.l @r15,r1
	mov.l @(loc_8c101838,pc),r0
	shll2 r1
	mov.l @(r0,r1),r3
	mov 0x44,r0
	mov r4,r1
	add 0x5C,r1
	mov.l r3,@(r0,r4)
	mov.l @r15,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c10183c,pc),r3
	shll2 r2
	add r3,r2
	mov.l @(loc_8c101834,pc),r3
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8C101816,pc),r0
	mov.w @(loc_8C101814,pc),r1
	mov.l r1,@(r0,r4)

loc_8c10178a:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C101792:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	mov 0x0D,r3 ; r3 set to 0x0d
	cmp/ge r3,r0
	bf loc_8C1017Aa
	lds.l @r15+,pr
	mov.l @(loc_8C101818,pc),r1 ; r1 set to 0x8C0450C0
	mov r14,r4
	jmp @r1
	mov.l @r15+,r14

loc_8C1017AA:
	mov 0x50,r0 ; r0 set to 0x50
	fldi1 fr3
	fmov.s fr3,@(r0,r14)
	mov r14,r5
	mov.w @(0x1C,r14),r0
	mov.l @(loc_8C101840,pc),r4 ; r4 set to 0x8C1650D0
	mov.l @(loc_8C101820,pc),r3 ; r3 set to 0x8C0FD914
	mov r0,r6 ; r6 set to 0x50
	jsr @r3
	add 0x04,r5
	mov 0x54,r0 ; r0 set to 0x54
	fmov fr0,fr3 ; r3 ??
	fmov.s fr0,@(r0,r14)
	mov 0x58,r0 ; r0 set to 0x58
	mov 0x5C,r1 ; r1 set to 0x5c
	fmov.s fr3,@(r0,r14)
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C101844,pc),r4 ; r4 set to 0x8C1650F8
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	mov 0x64,r1 ; r1 set to 0x64
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_8C101820,pc),r3 ; r3 set to 0x8C0FD914
	fadd fr3,fr2
	mov r14,r5
	fmov.s fr2,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	mov r0,r6 ; r6 set to 0x3c
	jsr @r3
	add 0x06,r5
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

;==============================================
loc_8c101810:
	#data 0x012c
loc_8c101812:
	#data 0x0084
loc_8c101814:
	#data 0x0515
loc_8c101816:
	#data 0x00CC
	#align4

loc_8C101818:
	#data bank04.loc_8c0450C0
loc_8C10181C:
	#data bank16.loc_8c165098
loc_8C101820:
	#data bank0f.loc_8c0fD914
loc_8C101824:
	#data bank16.loc_8c1650B8
loc_8C101828:
	#data bank04.loc_8c044F12
loc_8C10182C:
	#data loc_8c1016A8
loc_8c101830:
	#data 0x8C26A908
loc_8C101834:
	#data bank12.loc_8c1294C8
loc_8C101838:
	#data bank16.loc_8c165078
loc_8C10183C:
	#data bank16.loc_8c165080
loc_8C101840:
	#data bank16.loc_8c1650D0
loc_8C101844:
	#data bank16.loc_8c1650F8

;==============================================
loc_8c101848:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c101998,pc),r3
	mov 0x01,r6
	mov.l r4,@(0x04,r15)
	mov.l r5,@r15
	mov 0x07,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c1018b8
	mov r0,r4
	mov.w @(loc_8C10198E,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C1019A0,pc),r1
	mov.l @(loc_8c10199c,pc),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(loc_8C101990,pc),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(0x34,r2),r3
	mov.l r3,@(r0,r4)
	mov.l @(loc_8c1019a4,pc),r3
	mov.l @(0x04,r15),r2
	jsr @r3
	mov 0x0C,r0
	mov.l @r15,r1
	mov.l @(loc_8c1019a8,pc),r0
	shll2 r1
	mov.l @(loc_8c1019ac,pc),r2
	mov.l @(r0,r1),r3
	mov 0x44,r0
	mov r4,r1
	add 0x50,r1
	mov.l r3,@(r0,r4)
	mov.l @(loc_8c1019a4,pc),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @r15,r2
	mov r4,r1
	add 0x5C,r1
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c1019b0,pc),r3
	shll2 r2
	add r3,r2
	mov.l @(loc_8c1019a4,pc),r3
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8C101994,pc),r0
	mov.w @(loc_8C101992,pc),r1
	mov.l r1,@(r0,r4)

loc_8c1018b8:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C1018C0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r8,@-r15
	mov 0x0D,r3 ; r3 set to 0x0d
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8C1018Dc
	lds.l @r15+,pr
	mov.l @(loc_8C1019B4,pc),r1 ; r1 set to 0x8C0450C0
	mov r14,r4
	mov.l @r15+,r8
	jmp @r1
	mov.l @r15+,r14

loc_8C1018DC:
	mov r14,r3
	add 0x40,r3
	mov.w @(0x1C,r14),r0
	mov r3,r8
	mov.l @(loc_8C1019B8,pc),r4 ; r4 set to 0x8C165110
	mov r14,r5
	mov.l @(loc_8C1019BC,pc),r3 ; r3 set to 0x8C0FD914
	mov r0,r6
	jsr @r3
	add 0x04,r5
	mova @(loc_8C1019C0,pc),r0  ; r0 init to 0x8C1019C0
	mov.l @(loc_8C1019CC,pc),r2 ; r2 set to 0xFFFf
	fmov.s @r0,fr3 ; r3 ??
	mova @(loc_8C1019C4,pc),r0  ; r0 set to 0x8C1019C4
	fmov.s @r0,fr2 ; r2 ??
	mova @(loc_8C1019C8,pc),r0  ; r0 set to 0x8C1019C8
	fmul fr3,fr0 ; r0 ??? bc r3 is ???
	fmov.s @r0,fr1
	mov.l @(loc_8C1019D0,pc),r4 ; r4 set to 0x8C165120
	mov r14,r5
	fdiv fr2,fr0
	fadd fr1,fr0
	ftrc fr0,fpul
	sts fpul,r3
	and r2,r3
	mov.l r3,@r8
	mov.w @(0x1C,r14),r0
	mov.l @(loc_8C1019BC,pc),r3 ; r3 set to 0x8C0FD914
	mov r0,r6
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
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

;==============================================
loc_8c10193a:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c101998,pc),r3
	mov 0x01,r6
	mov.l r4,@(0x04,r15)
	mov.l r5,@r15
	mov 0x07,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c101986
	mov r0,r4
	mov.w @(loc_8C10198E,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C1019A0,pc),r1
	mov.l @(loc_8c1019d4,pc),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(loc_8C101990,pc),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(0x38,r2),r3
	mov.l r3,@(r0,r4)
	mov.l @(loc_8c1019a4,pc),r3
	mov.l @(0x04,r15),r2
	jsr @r3
	mov 0x0C,r0
	mov.l @r15,r1
	mov.l @(loc_8c1019a8,pc),r0
	shll2 r1
	mov.w @(loc_8C101996,pc),r2
	mov.l @(r0,r1),r3
	mov 0x44,r0
	mov.l r3,@(r0,r4)
	mov.w @(loc_8C101994,pc),r0
	mov.l r2,@(r0,r4)

loc_8c101986:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C10198E:
	#data 0x012C
loc_8C101990:
	#data 0x0084
loc_8c101992:
	#data 0x0515
loc_8C101994:
	#data 0x00CC
loc_8C101996:
	#data 0x0507
	#align4

loc_8c101998:
	#data bank04.loc_8c044f12
loc_8c10199c:
	#data loc_8C101792
loc_8C1019A0:
	#data 0x8C26A908
loc_8c1019a4:
	#data bank12.loc_8c1294c8
loc_8c1019a8:
	#data bank16.loc_8c165078
loc_8c1019ac:
	#data bank16.loc_8c16506c
loc_8c1019b0:
	#data bank16.loc_8c165080
loc_8c1019b4:
	#data bank04.loc_8c0450c0
loc_8c1019b8:
	#data bank16.loc_8c165110
loc_8c1019bc:
	#data bank0f.loc_8c0fd914
loc_8c1019c0:
	#data 0x47800000
loc_8c1019c4:
	#data 0x43b40000
loc_8c1019c8:
	#data 0x3f000000
loc_8c1019cc:
	#data 0x0000ffff
loc_8c1019d0:
	#data bank16.loc_8c165120
loc_8c1019d4:
	#data loc_8c1018c0

;==============================================
loc_8C1019D8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r8,@-r15
	mov 0x0D,r3 ; r3 set to 0x0d
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8C1019F4
	lds.l @r15+,pr
	mov.l @(loc_8C101AD4,pc),r1 ; r1 set to 0x8C0450C0
	mov r14,r4
	mov.l @r15+,r8
	jmp @r1
	mov.l @r15+,r14

loc_8C1019F4:
	mov r14,r3
	add 0x40,r3
	mov.w @(0x1C,r14),r0
	mov r3,r8
	mov.l @(loc_8C101AD8,pc),r4 ; r4 set to 0x8C165138
	mov r14,r5
	mov.l @(loc_8C101ADC,pc),r3 ; r3 set to 0x8C0FD914
	mov r0,r6
	jsr @r3
	add 0x04,r5
	mova @(loc_8C101AE0,pc),r0  ; r0 init to 0x8C101AE0
	mov.l @(loc_8C101AEC,pc),r2 ; r2 set to 0xFFFf
	fmov.s @r0,fr3 ; r3 ??
	mova @(loc_8C101AE4,pc),r0  ; r0 set to 0x8C101AE4
	fmov.s @r0,fr2 ; r2 ??
	mova @(loc_8C101AE8,pc),r0  ; r0 set to 0x8C101AE8
	fmul fr3,fr0 ; r0 ??? bc r3 is ???
	fmov.s @r0,fr1
	mov.l @(loc_8C101AF0,pc),r4 ; r4 set to 0x8C165148
	mov r14,r5
	fdiv fr2,fr0
	fadd fr1,fr0
	ftrc fr0,fpul
	sts fpul,r3
	and r2,r3
	mov.l r3,@r8
	mov.w @(0x1C,r14),r0
	mov.l @(loc_8C101ADC,pc),r3 ; r3 set to 0x8C0FD914
	mov r0,r6
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
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

;==============================================
loc_8c101a52:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c101af4,pc),r3
	mov 0x01,r6
	mov.l r4,@(0x04,r15)
	mov.l r5,@r15
	mov 0x07,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c101a9e
	mov r0,r4
	mov.w @(loc_8C101ACA,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C101AFC,pc),r1
	mov.l @(loc_8c101af8,pc),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(loc_8C101ACC,pc),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(0x3C,r2),r3
	mov.l r3,@(r0,r4)
	mov.l @(loc_8c101b00,pc),r3
	mov.l @(0x04,r15),r2
	jsr @r3
	mov 0x0C,r0
	mov.l @r15,r1
	mov.l @(loc_8c101b04,pc),r0
	shll2 r1
	mov.w @(loc_8C101ACE,pc),r2
	mov.l @(r0,r1),r3
	mov 0x44,r0
	mov.l r3,@(r0,r4)
	mov.w @(loc_8C101AD0,pc),r0
	mov.l r2,@(r0,r4)

loc_8c101a9e:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C101AA6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	bsr loc_8C101726
	mov r5,r14
	mov r14,r5
	bsr loc_8C101848
	mov r13,r4
	mov r14,r5
	bsr loc_8C10193a
	mov r13,r4
	lds.l @r15+,pr
	mov r13,r4
	mov r14,r5
	mov.l @r15+,r13
	bra loc_8C101A52
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c101aca:
	#data 0x012c
loc_8c101acc:
	#data 0x0084
loc_8c101ace:
	#data 0x0507
loc_8c101ad0:
	#data 0x00Cc
	#align4

loc_8C101AD4:
	#data bank04.loc_8c0450C0
loc_8C101AD8:
	#data bank16.loc_8c165138
loc_8C101ADC:
	#data bank0f.loc_8c0fD914
loc_8C101AE0:
	#data 0x47800000
loc_8C101AE4:
	#data 0x43B40000
loc_8C101AE8:
	#data 0x3F000000
loc_8C101AEC:
	#data 0x0000FFFf
loc_8C101AF0:
	#data bank16.loc_8c165148
loc_8C101AF4:
	#data bank04.loc_8c044F12
loc_8C101AF8:
	#data loc_8c1019D8
loc_8c101afc:
	#data 0x8C26A908
loc_8C101B00:
	#data bank12.loc_8c1294C8
loc_8C101B04:
	#data bank16.loc_8c165078

;==============================================
loc_8C101B08:
	mov r4,r3
	mov.l @(loc_8C101C5C,pc),r1 ; r1 set to 0x8C1651Cc
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C101B1A:
	mov.w @(loc_8C101C58,pc),r0 ; r0 set to 0xD0
	mov.l @(r0,r4),r3
	tst r3,r3
	bt loc_8C101B2a
	mov.l @(r0,r4),r3
	add 0xFF,r3
	rts
	mov.l r3,@(r0,r4)

loc_8c101b2a:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c101b46
	mov.w @(loc_8C101C5A,pc),r0
	mov 0x01,r2
	mov.b r2,@(r0,r4)
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov 0x04,r0
	mov.w r0,@(0x1C,r4)

loc_8c101b46:
	rts
	nop

;==============================================
loc_8c101b4a:
	mov.l @(0x114,PC),r1
	mov 0x74,r0
	fmov @(r0,r4),fr2
	lds r1,fpul
	mov 0x5C,r1
	add r4,r1
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r4),fr1
	fmov @r1,fr2
	mov 0x68,r1
	add r4,r1
	fadd fr2,fr1
	fmov fr1,@(r0,r4)
	mov 0x5C,r0
	fmov @(r0,r4),fr1
	fmov @r1,fr2
	mov 0x60,r1
	add r4,r1
	fadd fr2,fr1
	fmov fr1,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r4),fr1
	fmov @r1,fr2
	mov 0x6C,r1
	add r4,r1
	fadd fr2,fr1
	fmov fr1,@(r0,r4)
	mov 0x60,r0
	fmov @r1,fr2
	fmov @(r0,r4),fr1
	fadd fr2,fr1
	fmov fr1,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c101ba6
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x08,r0
	mov.w r0,@(0x1C,r4)

loc_8c101ba6:
	rts
	nop

;==============================================
loc_8c101baa:
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
	bf loc_8c101bf8
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x02,r0
	mov.w r0,@(0x1C,r4)

loc_8c101bf8:
	rts
	nop

loc_8C101BFC:
	mov.l @(loc_8C101C64,pc),r1 ; r1 set to 0x3F000000
	mov 0x74,r0 ; r0 set to 0x74
	fmov.s @(r0,r4),fr2
	lds r1,fpul
	mov 0x5C,r1 ; r1 set to 0x5c
	add r4,r1 ; r1 ??? bc r4 is ???
	fsts fpul,fr3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r4),fr1
	fmov.s @r1,fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r4,r1 ; r1 ??? bc r4 is ???
	fadd fr2,fr1
	fmov.s fr1,@(r0,r4)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r4),fr1
	fmov.s @r1,fr2
	mov 0x60,r1 ; r1 set to 0x60
	add r4,r1 ; r1 ??? bc r4 is ???
	fadd fr2,fr1
	fmov.s fr1,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r4),fr1
	fmov.s @r1,fr2
	mov 0x6C,r1 ; r1 set to 0x6c
	add r4,r1 ; r1 ??? bc r4 is ???
	fadd fr2,fr1
	fmov.s fr1,@(r0,r4)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @r1,fr2
	fmov.s @(r0,r4),fr1
	fadd fr2,fr1
	fmov.s fr1,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0xFF,r0 ; r0 set to 0x5f
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0 ; r0 ??
	tst r0,r0
	bf loc_8C101C54
	mov.l @(loc_8C101C68,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8C101C54:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C101C58:
	#data 0x00D0
loc_8c101c5a:
	#data 0x012c
	#align4

loc_8C101C5C:
	#data bank16.loc_8c1651Cc
loc_8C101C60:
	#data 0x3E800000
loc_8C101C64:
	#data 0x3F000000
loc_8C101C68:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C101C6C:
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
	add 0xE8,r15
	mov 0x48,r0
	mov.l r5,@(0xC,r15)
	mov 0x40,r2
	fmov fr4,@r15
	mov.l r7,@(0x4,r15)
	mov.w @(r0,r15),r3
	extu.w r3,r3
	tst r2,r3
	bf.s loc_8c101c9e
	mov.l r3,@(0x8,r15)
	bra loc_8c101de8              ; loc_8c101c6c+0x17c
	nop

loc_8C101C9E:
	mov 0x01,r0
	cmp/gt r0,r6
	bf loc_8c101cc0
	mov.l @(0x4,r15),r0
	cmp/pz r0
	bf loc_8c101cae
	bra loc_8c101cb8
	and 0x01,r0

loc_8C101CAE:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C101CB8:
	tst r0,r0
	bf loc_8c101cc0
	bra loc_8c101de8
	nop

loc_8C101CC0:
	mova @(0x4C,PC),r0
	mov.l @(0x4,r15),r3
	fmov @r0,fr12
	mova @(0x4C,PC),r0
	fmov @r0,fr13
	mova @(0x50,PC),r0
	fmov @r0,fr15
	shll2 r3
	mov.l @(0x38,PC),r10
	mov 0x00,r11
	mov.l @(0x40,PC),r12
	mov 0x04,r13
	shll r3
	fldi0 fr14
	mov r11,r8
	bra loc_8c101de0
	mov.l r3,@(0x10,r15)

loc_8C101CE2:
	mov r8,r3
	mov.l @(0x38,PC),r2
	shll2 r3
	mov r11,r9
	add r2,r3
	mov.l r3,@(0x14,r15)

loc_8C101CEE:
	mov.l @(0x8,r15),r2
	mov.w @(0x14,PC),r3
	tst r3,r2
	bt loc_8c101d24
	mov 0x05,r5
	mov 0x01,r6
	jsr @r10
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c101de8
	mov r0,r14
	bra loc_8c101d32
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c101d08:
	#data 0x0200
	#align4

loc_8C101D0C:
	#data bank04.loc_8c044F12
loc_8C101D10:
	#data 0xBF000000
loc_8C101D14:
	#data 0x41F00000
loc_8C101D18:
	#data bank11.loc_8c11E750
loc_8C101D1c:
	#data 0x41600000
loc_8C101D20:
	#data bank16.loc_8c1651Bc

;==============================================
loc_8C101D24:
	mov 0x07,r5
	mov 0x01,r6
	jsr @r10
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c101de8
	mov r0,r14

loc_8C101D32:
	mov.w @(0x154,PC),r0
	mov r14,r1
	mov.w @(0x152,PC),r2
	add 0x34,r1
	mov.l @(0x158,PC),r3
	mov.b r11,@(r0,r14)
	add 0xA0,r0
	mov.l r3,@(0x10,r14)
	mov.l r2,@(r0,r14)
	mov.l @(0x150,PC),r3
	mov.l @(0xC,r15),r2
	jsr @r3
	mov 0x0C,r0
	mov r13,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov 0x74,r0
	fmov fr14,@(r0,r14)
	mov 0x78,r0
	fldi1 fr3
	fmov fr3,@(r0,r14)
	mov 0x7C,r0
	fmov fr14,@(r0,r14)
	add 0x04,r0
	mov.l @(0x138,PC),r3
	fmov fr14,@(r0,r14)
	mov.l @(0x14,r15),r2
	mov.l @r3,r0
	mov.l @r2,r2
	mov.l @r0,r0
	shll2 r2
	mov.l @(r0,r2),r1
	mov.w @(0x118,PC),r0
	jsr @r12
	mov.l r1,@(r0,r14)
	fadd fr12,fr0
	mov 0x5C,r0
	fmul fr13,fr0
	jsr @r12
	fmov fr0,@(r0,r14)
	fadd fr12,fr0
	mov 0x60,r0
	fmul fr13,fr0
	jsr @r12
	fmov fr0,@(r0,r14)
	mova @(0x110,PC),r0
	fmov @r0,fr3
	mov 0x64,r0
	fmul fr3,fr0
	fmov fr0,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	mov 0x68,r0
	fneg fr2
	fdiv fr15,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	mov 0x6C,r0
	fneg fr2
	fdiv fr15,fr2
	fmov fr2,@(r0,r14)
	mov 0x64,r0
	fmov @(r0,r14),fr2
	mov 0x70,r0
	fneg fr2
	fdiv fr15,fr2
	fmov fr2,@(r0,r14)
	mov 0x50,r0
	fmov @r15,fr2
	fmov fr2,@(r0,r14)
	mov 0x54,r0
	fmov @r15,fr2
	fmov fr2,@(r0,r14)
	mov 0x58,r0
	fmov @r15,fr2
	fmov fr2,@(r0,r14)
	mov.l @(0x4,r15),r3
	mov 0x23,r0
	add 0x01,r9
	mov.b r3,@(r0,r14)
	cmp/ge r13,r9
	mov.w @(0xB6,PC),r0
	mov.l @(0x10,r15),r2
	bf.s loc_8c101cee             ; loc_8c101c6c+0x82
	mov.l r2,@(r0,r14)
	add 0x01,r8

loc_8C101DE0:
	cmp/ge r13,r8
	bt loc_8c101de8
	bra loc_8c101ce2
	nop

loc_8C101DE8:
	add 0x18,r15
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

;==============================================
loc_8C101E04:
	mov.w @(loc_8C101E90,pc),r0 ; r0 set to 0xD0
	mov.l @(r0,r4),r3
	tst r3,r3
	bt loc_8C101E14
	mov.l @(r0,r4),r3
	add 0xFF,r3
	rts
	mov.l r3,@(r0,r4)

;==============================================
loc_8c101e14:
	mov.w @(loc_8C101E92,pc),r3
	mov 0x01,r5
	mov.w @(loc_8C101E8A,pc),r0
	add r4,r3
	mov.b r5,@(r0,r4)
	mova @(loc_8C101EA4,pc),r0
	mov.l @r3,r3
	fmov.s @r0,fr4
	mov 0x50,r0
	lds r3,fpul
	fmov.s @(r0,r4),fr2
	fmov fr4,fr0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x58,r0
	mov r0,r3
	add 0x7C,r3
	add r4,r3
	fmov.s @(r0,r4),fr2
	mov.l @r3,r3
	lds r3,fpul
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c101e74
	mov r5,r0
	nop
	mov.w r0,@(0x1C,r4)
	mova @(loc_8C101EA8,pc),r0
	fmov.s @r0,fr4
	mov 0x78,r0
	fmov.s @(r0,r4),fr3
	fsub fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x7C,r0
	fmov.s @(r0,r4),fr2
	fsub fr4,fr2
	fmov.s fr2,@(r0,r4)
	add 0x04,r0
	fmov.s @(r0,r4),fr3
	fsub fr4,fr3
	fmov.s fr3,@(r0,r4)

loc_8c101e74:
	mov.w @(0x1E,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c101e86
	mov.l @(loc_8c101eac,pc),r3
	jmp @r3
	nop

loc_8c101e86:
	rts
	nop

;==============================================
loc_8C101E8A:
	#data 0x012C
loc_8C101E8C:
	#data 0x0431
loc_8C101E8E:
	#data 0x0084
loc_8c101e90:
	#data 0x00D0
loc_8C101E92:
	#data 0x00D4
	#align4

loc_8c101e94:
	#data 0x8C101B08
loc_8c101e98:
	#data 0x8C1294C8
loc_8c101e9C:
	#data 0x8C26A908
loc_8C101EA0:
	#data 0x41700000
loc_8C101EA4:
	#data 0x3E8E38E4
loc_8C101EA8:
	#data 0x3E800000
loc_8c101eac:
	#data bank04.loc_8c0450c0

;==============================================
loc_8c101eb0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x20,r3
	fmov fr4,fr15
	mov r4,r14
	mov.l r5,@r15
	mov.w @(0x18,r15),r0
	mov r0,r13
	extu.w r13,r13
	tst r13,r3
	bt.s loc_8c101fa0
	mov r7,r12
	mov 0x01,r1
	cmp/gt r1,r6
	bf loc_8c101edc
	add 0xFF,r6
	cmp/eq r6,r12
	bf loc_8c101fa0

loc_8c101edc:
	mov.w @(0xDE,PC),r3
	tst r13,r3
	bt loc_8c101ef6
	mov.l @(0xE8,PC),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c101fa0
	mov r0,r4
	bra loc_8c101f06
	nop

loc_8c101ef6:
	mov.l @(0xD4,PC),r2
	mov 0x07,r5
	mov 0x01,r6
	jsr @r2
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c101fa0
	mov r0,r4

loc_8c101f06:
	mov.w @(0xB6,PC),r0
	mov 0x00,r2
	fldi1 fr4
	mov.b r2,@(r0,r4)
	add 0xA0,r0
	mov.w @(0xAE,PC),r2
	mov.l @(0xBC,PC),r3
	mov.l r3,@(0x10,r4)
	mov.l r2,@(r0,r4)
	mov 0x0E,r0
	mov.w r0,@(0x1C,r4)
	mov 0x12,r0
	mov.w r0,@(0x1E,r4)
	mov 0x78,r0
	fmov fr4,@(r0,r4)
	mov 0x7C,r0
	mov.l @(0xAC,PC),r2
	fmov fr4,@(r0,r4)
	add 0x04,r0
	fmov fr4,@(r0,r4)
	mov.l @r2,r3
	mov.w @(0x90,PC),r0
	mov.l @r3,r1
	mov.l @(r0,r1),r0
	mov.w @(0x8C,PC),r1
	add r4,r1
	mov.l r0,@r1
	mov 0x50,r0
	fmov fr15,@(r0,r4)
	mov 0x54,r0
	fmov fr15,@(r0,r4)
	mov 0x58,r0
	mov 0x02,r3
	fmov fr15,@(r0,r4)
	tst r3,r13
	mov 0x23,r0
	bt.s loc_8c101f84
	mov.b r12,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x6C,PC),r0
	mov.b @(r0,r14),r2
	extu.b r2,r2
	cmp/pz r2
	bt loc_8c101f64
	add 0x07,r2

loc_8c101f64:
	shar r2
	shar r2
	shar r2
	lds r2,fpul
	mov 0x54,r0
	fmov @(r0,r14),fr0
	mov 0x38,r0
	fmov @(r0,r14),fr2
	mova @(0x60,PC),r0
	float fpul,fr3
	fmul fr0,fr3
	fmov @r0,fr0
	mov 0x38,r0
	fmac fr0,fr3,fr2
	bra loc_8c101f90
	fmov fr2,@(r0,r4)

loc_8c101f84:
	mov.l @(0x54,PC),r3
	mov r4,r1
	mov.l @r15,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0

loc_8c101f90:
	ftrc fr15,fpul
	mov.w @(0x34,PC),r0
	shll2 r12
	shll r12
	mov.l r12,@(r0,r4)
	add 0x04,r0
	sts fpul,r3
	mov.l r3,@(r0,r4)

loc_8c101fa0:
	add 0x04,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8C101FAE:
	mov.w @(loc_8C101FCA,pc),r0 ; r0 set to 0xD0
	mov.l @(r0,r4),r2
	tst r2,r2
	bt loc_8C101FE0
	mov.l @(r0,r4),r2
	add 0xFF,r2
	rts
	mov.l r2,@(r0,r4)

;==============================================
loc_8C101Fbe:
	#data 0x0200
loc_8C101FC0:
	#data 0x012c
loc_8C101FC2:
	#data 0x0411
loc_8C101FC4:
	#data 0x02Dc
loc_8C101FC6:
	#data 0x0084
loc_8C101FC8:
	#data 0x013c
loc_8C101FCA:
	#data 0x00D0
	#align4

loc_8C101FCC:
	#data bank04.loc_8c044F12
loc_8C101FD0:
	#data loc_8c101E04
loc_8C101FD4:
	#data 0x8C26A908
loc_8C101FD8:
	#data 0x40092492
loc_8C101FDC:
	#data bank12.loc_8c1294C8

;==============================================
loc_8c101fe0:
	mov.w @(loc_8C102110,pc),r3
	mov 0x01,r5
	mov.w @(loc_8C10210E,pc),r0
	add r4,r3
	mov.b r5,@(r0,r4)
	mova @(loc_8C10211C,pc),r0
	mov.l @r3,r3
	fmov.s @r0,fr4
	mov 0x50,r0
	lds r3,fpul
	mov.w @(loc_8C102110,pc),r3
	fmov.s @(r0,r4),fr2
	float fpul,fr3
	add r4,r3
	fmov fr4,fr0
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x54,r0
	mov.l @r3,r3
	fmov.s @(r0,r4),fr2
	lds r3,fpul
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c102030
	mov r5,r0
	nop
	mov.l @(loc_8C102120,pc),r1
	mov.w r0,@(0x1C,r4)
	mov 0x74,r0
	lds r1,fpul
	fmov.s @(r0,r4),fr2
	fsts fpul,fr3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r4)
	
loc_8c102030:
	mov.w @(0x1E,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c102042
	mov.l @(loc_8c102124,pc),r3
	jmp @r3
	nop

loc_8c102042:
	rts
	nop

;==============================================
loc_8c102046:
	mov.l r14,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x10,r3
	fmov fr4,fr15
	mov.l r5,@r15
	mov.w @(0x10,r15),r0
	mov r0,r4
	extu.w r4,r4
	tst r4,r3
	bt.s loc_8c1020f2
	mov r7,r14
	mov 0x01,r1
	cmp/gt r1,r6
	bf loc_8c10206c
	add 0xFF,r6
	cmp/eq r6,r14
	bf loc_8c1020f2               ; loc_8c102046+0xac

loc_8c10206c:
	mov.w @(0xA2,PC),r3
	tst r3,r4
	bt loc_8c102086
	mov.l @(0xB4,PC),r1
	mov 0x05,r5
	mov 0x01,r6
	jsr @r1
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c1020f2             ; loc_8c102046+0xac
	mov r0,r4
	bra loc_8c102096
	nop

loc_8c102086:
	mov.l @(0xA0,PC),r1
	mov 0x07,r5
	mov 0x01,r6
	jsr @r1
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c1020f2             ; loc_8c102046+0xac
	mov r0,r4

loc_8c102096:
	mov.w @(0x74,PC),r0
	mov 0x00,r2
	mov.l @(0x90,PC),r3
	mov r4,r1
	mov.b r2,@(r0,r4)
	add 0xA0,r0
	mov 0x31,r2
	mov.l r3,@(0x10,r4)
	mov.l r2,@(r0,r4)
	add 0x34,r1
	mov.l @(0x84,PC),r3
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0
	mov 0x09,r0
	mov.l @(0x80,PC),r2
	mov.w r0,@(0x1C,r4)
	mov 0x0F,r0
	mov.w r0,@(0x1E,r4)
	mova @(0x74,PC),r0
	fmov @r0,fr3
	mov 0x74,r0
	ftrc fr15,fpul
	fmov fr3,@(r0,r4)
	mov.l @r2,r3
	mov.w @(0x48,PC),r0
	mov.l @r3,r1
	sts fpul,r3
	mov.l @(r0,r1),r0
	mov.w @(0x42,PC),r1
	add r4,r1
	mov.l r0,@r1
	mov 0x50,r0
	fmov fr15,@(r0,r4)
	mov 0x54,r0
	fmov fr15,@(r0,r4)
	mov 0x58,r0
	fmov fr15,@(r0,r4)
	mov 0x23,r0
	mov.b r14,@(r0,r4)
	shll2 r14
	mov.w @(0x2C,PC),r0
	shll r14
	mov.l r14,@(r0,r4)
	add 0x04,r0
	mov.l r3,@(r0,r4)

loc_8c1020f2:
	add 0x04,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

loc_8C1020FC:
	mov r4,r3
	mov.l @(loc_8C10213C,pc),r1 ; r1 set to 0x8C1651Dc
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10210e:
	#data 0x012c
loc_8c102110:
	#data 0x00D4
loc_8c102112:
	#data 0x0200
loc_8c102114:
	#data 0x02D8
loc_8c102116:
	#data 0x0084
loc_8c102118:
	#data 0x00D0
	#align4

loc_8c10211c:
	#data 0x3EEEEEEf
loc_8c102120:
	#data 0x3DAAAAAb
loc_8C102124:
	#data bank04.loc_8c0450C0
loc_8C102128:
	#data bank04.loc_8c044F12
loc_8C10212C:
	#data loc_8c101FAe
loc_8C102130:
	#data bank12.loc_8c1294C8
loc_8C102134:
	#data 0x3F000000
loc_8C102138:
	#data 0x8C26A908
loc_8C10213C:
	#data bank16.loc_8c1651Dc

;==============================================
loc_8C102140:
	mov.w @(loc_8C102214,pc),r0 ; r0 set to 0xD0
	mov.l @(r0,r4),r3
	tst r3,r3
	bt loc_8C102150
	mov.l @(r0,r4),r3
	add 0xFF,r3
	rts
	mov.l r3,@(r0,r4)

;==============================================
loc_8c102150:
	mov.w @(0x1C,r4),r0
	tst r0,r0
	bt loc_8c102186
	mov.l @(loc_8C102224,pc),r3
	mov.l @(loc_8c102228,pc),r2
	mov.l @r3,r0
	mov.l @r2,r1
	mov.l @r0,r0
	shll2 r1
	mov.l @(loc_8c102220,pc),r5
	mov.l @(r0,r1),r1
	mov.w @(loc_8C102216,pc),r0
	mov.l @(loc_8c10221c,pc),r6
	mov.l r1,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	shll r0
	add r0,r5
	mov.w @r5,r0
	mov.w r0,@(0x1E,r4)
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	shll2 r0
	add r0,r6
	fmov.s @r6,fr3
	mov 0x74,r0
	fmov.s fr3,@(r0,r4)

loc_8c102186:
	mov.b @(0x04,r4),r0
	add 0x01,r0
	bra loc_8c102192
	mov.b r0,@(0x04,r4)

;???
	rts
	nop

loc_8C102192:
	mov.w @(0x1E,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8C1021Be
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x04,r4)
	mov 0x11,r3 ; r3 set to 0x11
	mov.w @(0x1C,r4),r0
	add 0x01,r0 ; r0 set to 0x01
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0 ; r0 ??
	cmp/ge r3,r0
	bf loc_8C1021Be
	mov.l @(loc_8C10222C,pc),r1 ; r1 set to 0x8C289667
	mov.b @r1,r2
	add 0xFF,r2
	mov.b r2,@r1 ; r1 ??? bc r2 is ???
	mov.l @(loc_8C102230,pc),r1 ; r1 set to 0x8C0450C0
	jmp @r1
	nop

loc_8C1021BE:
	rts
	nop

;==============================================
loc_8C1021C2:
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x08,r3
	mov.l r5,@(0x4,r15)
	mov.l r7,@r15
	mov.w @(0x10,r15),r0
	mov r0,r4
	extu.w r4,r4
	tst r4,r3
	bt.s loc_8c102204
	fmov fr4,fr15
	mov.w @(0x3A,PC),r1
	tst r1,r4
	bt loc_8c1021f4
	mov.l @(0x50,PC),r2
	mov 0x05,r5
	mov 0x01,r6
	jsr @r2
	mov 0x00,r4
	tst r0,r0
	bf.s loc_8c102238
	mov r0,r4
	bra loc_8c102204              ; loc_8c1021c2+0x42
	nop

loc_8C1021F4:
	mov.l @(0x3C,PC),r2
	mov 0x07,r5
	mov 0x01,r6
	jsr @r2
	mov 0x00,r4
	tst r0,r0
	bf.s loc_8c102238
	mov r0,r4

loc_8C102204:
	mov.l @(0x24,PC),r2
	mov.b @r2,r3
	add 0xFF,r3
	mov.b r3,@r2
	add 0x08,r15
	lds.l @r15+,pr
	rts
	fmov @r15+,fr15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C102214:
	#data 0x00D0
loc_8c102216:
	#data 0x0084
loc_8c102218:
	#data 0x0200
	#align4

loc_8C10221C:
	#data bank13.loc_8c13d9Dc
loc_8C102220:
	#data bank13.loc_8c13da1c
loc_8c102224:
	#data 0x8C26A908
loc_8C102228:
	#data bank16.loc_8c165164
loc_8C10222C:
	#data 0x8C289667
loc_8C102230:
	#data bank04.loc_8c0450C0
loc_8C102234:
	#data bank04.loc_8c044F12

;==============================================
loc_8C102238:
	mov.w @(0xE8,PC),r0
	mov 0x01,r2
	mov.l @(0xEC,PC),r3
	mov r4,r1
	mov.b r2,@(r0,r4)
	add 0xA0,r0
	mov 0x31,r2
	mov.l r3,@(0x10,r4)
	mov.l r2,@(r0,r4)
	add 0x34,r1
	mov.l @(0xE0,PC),r3
	mov.l @(0x4,r15),r2
	jsr @r3
	mov 0x0C,r0
	mov 0x00,r0
	mov.l @(0xDC,PC),r3
	mov.w r0,@(0x1C,r4)
	mov 0x03,r0
	mov.l @(0xD8,PC),r2
	mov.w r0,@(0x1E,r4)
	mov.l @r3,r0
	mov.l @r2,r1
	mov.l @r0,r0
	shll2 r1
	mov.l @(0xD0,PC),r5
	mov.l @(r0,r1),r1
	mov.w @(0xB6,PC),r0
	mov.l r1,@(r0,r4)
	mov 0x50,r0
	fmov fr15,@(r0,r4)
	mov 0x54,r0
	fmov fr15,@(r0,r4)
	mov 0x58,r0
	fmov fr15,@(r0,r4)
	mov 0x23,r0
	mov.l @r15,r3
	mov.b r3,@(r0,r4)
	mov.l @r15,r1
	mov.w @(0xA0,PC),r0
	shll2 r1
	shll r1
	mov.l r1,@(r0,r4)
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(0xAC,PC),r3
	jmp @r3
	fmov @r15+,fr15
	add 0x08,r15
	lds.l @r15+,pr
	rts
	fmov @r15+,fr15

;==============================================
loc_8C10229E:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r13
	mov.w @(0x1C,r13),r0
	mov.l @(loc_8C102344,pc),r14 ; r14 set to 0x8C13D95c
	tst r0,r0
	bt loc_8C102310
	mov.l @(loc_8C102334,pc),r3 ; r3 set to 0x8C26A908
	mov.l @(loc_8C102348,pc),r2 ; r2 set to 0x8C165164
	mov.l @r3,r4
	mov.l @r2,r3 ; r3 ??
	mov.l @r4,r4
	shll2 r3
	mov.w @(loc_8C102326,pc),r0 ; r0 set to 0x84
	add r3,r4
	mov.l @(loc_8C10234C,pc),r3 ; r3 set to 0x8C108060
	mov.l @(r0,r13),r5
	jsr @r3
	mov.l @(0x04,r4),r4
	mov.w @(0x1C,r13),r0
	mov.l @(loc_8C102354,pc),r11 ; r11 set to 0x8C108192
	add 0xFF,r0 ; r0 set to 0x83
	mov.l @(loc_8C102358,pc),r13 ; r13 set to 0x8C108086
	shll r0 ; r0 set to 0x106
	mov.l @(loc_8C102350,pc),r10 ; r10 set to 0x8C1081E6
	shll2 r0 ; r0 set to 0x418
	add r0,r14 ; r14 set to 0x8C13DD74
	mov r14,r12 ; r12 set to 0x8C13DD74
	bra loc_8C102308
	add 0x04,r12

loc_8C1022E4:
	mov r15,r5
	add 0x04,r5
	jsr @r11
	mov r15,r4
	fmov @r15,fr2
	mov 0x04,r0
	fmov @r14,fr3
	mov r15,r5
	add 0x04,r5
	fadd fr3,fr2
	fmov fr2,@r15
	fmov @(r0,r15),fr1
	mov 0x04,r0
	fmov @r12,fr3
	fsub fr3,fr1
	fmov fr1,@(r0,r15)
	jsr @r10
	mov r15,r4

loc_8c102308:
	jsr @r13
	nop
	tst r0,r0
	bt loc_8c1022e4

loc_8C102310:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C102320:
	rts
	nop

;==============================================
loc_8C102324:
	#data 0x012c
loc_8C102326:
	#data 0x0084
loc_8C102328:
	#data 0x00D0
	#align4

loc_8C10232C:
	#data loc_8c1020Fc
loc_8C102330:
	#data bank12.loc_8c1294C8
loc_8C102334:
	#data 0x8C26A908
loc_8C102338:
	#data bank16.loc_8c165160
loc_8C10233C:
	#data loc_8c10229e
loc_8C102340:
	#data bank03.loc_8c0305Ca
loc_8C102344:
	#data bank13.loc_8c13d95c
loc_8C102348:
	#data bank16.loc_8c165164
loc_8C10234C:
	#data loc_8c108060
loc_8C102350:
	#data loc_8c1081E6
loc_8C102354:
	#data loc_8c108192
loc_8C102358:
	#data loc_8c108086

;==============================================
loc_8C10235C:
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
	mov r7,r10
	mov.l @(loc_8C102490,pc),r7 ; r7 set to 0x8C2895F0
	mov 0x77,r0 ; r0 set to 0x77
	mov r4,r14
	mov.b @(r0,r7),r4
	mov r5,r8
	mov 0x06,r5 ; r5 set to 0x06
	exts.b r4,r3
	cmp/gt r5,r3
	bf loc_8C10238e
	bra loc_8C1025Ae
	nop

loc_8c10238e:
	extu.b r6,r3
	exts.b r4,r2
	add r3,r2
	cmp/gt r5,r2
	bf/s loc_8c10239e
	mov.b @(r0,r7),r3
	neg r4,r6
	add 0x06,r6

loc_8c10239e:
	add r6,r3
	mov.l @(loc_8c10249c,pc),r9
	mov.b r3,@(r0,r7)
	mova @(loc_8C102494,pc),r0
	fmov.s @r0,fr12
	mova @(loc_8C102498,pc),r0
	extu.b r6,r12
	fmov.s @r0,fr13
	cmp/pl r12
	mov 0x00,r13
	fldi1 fr14
	bt/s loc_8c1023bc
	extu.w r10,r11
	bra loc_8c1025ae
	nop

loc_8c1023bc:
	mov 0x02,r2
	tst r11,r2
	bf loc_8c1023c6
	bra loc_8c102514
	nop

loc_8c1023c6:
	mov.l @(loc_8c1024a0,pc),r3
	mov r14,r2
	mov r15,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	jsr @r9
	nop
	mov r0,r4
	mov.w @(loc_8C10248A,pc),r0
	mov.b @(r0,r14),r3
	mov 0x50,r0
	fmov.s @(r0,r14),fr2
	mova @(loc_8C1024A4,pc),r0
	extu.b r3,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr2,fr3
	fmov.s @r0,fr2
	fmul fr2,fr3
	ftrc fr3,fpul
	mov r4,r0
	nop
	cmp/pz r0
	bf/s loc_8c1023fe
	sts fpul,r5
	bra loc_8c102408
	and 0x01,r0

loc_8c1023fe:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8c102408:
	tst r0,r0
	bt loc_8c102418
	mov.l @(loc_8c1024a8,pc),r3
	mov r4,r1
	jsr @r3
	mov r5,r0
	bra loc_8c102422
	mov r0,r3

loc_8c102418:
	mov.l @(loc_8c1024a8,pc),r2
	mov r4,r1
	jsr @r2
	mov r5,r0
	neg r0,r3

loc_8c102422:
	lds r3,fpul
	fmov.s @r15,fr2
	float fpul,fr3
	fadd fr3,fr2
	jsr @r9
	fmov.s fr2,@r15
	mov r0,r4
	mov.w @(loc_8C10248C,pc),r0
	mov r4,r1
	mov.b @(r0,r14),r3
	mov 0x54,r0
	fmov.s @(r0,r14),fr2
	mova @(loc_8C1024AC,pc),r0
	extu.b r3,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr2,fr3
	fmov.s @r0,fr2
	fmul fr2,fr3
	ftrc fr3,fpul
	sts fpul,r5
	mov r5,r0
	nop
	mov.l @(loc_8c1024a8,pc),r3
	jsr @r3
	nop
	lds r0,fpul
	mov 0x04,r0
	fmov.s @(r0,r15),fr1
	mov 0x04,r3
	tst r11,r3
	float fpul,fr3
	mov 0x04,r0
	fadd fr3,fr1
	bt/s loc_8c1024b6
	fmov.s fr1,@(r0,r15)
	jsr @r9
	nop
	cmp/pz r0
	bf/s loc_8c102478
	mov r0,r4
	bra loc_8c102482
	and 0x01,r0

loc_8c102478:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8c102482:
	tst r0,r0
	bt loc_8c1024b0
	bra loc_8c1024ce
	fldi1 fr15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C10248A:
	#data 0x013E
loc_8C10248C:
	#data 0x013C
	#align4

loc_8c102490:
	#data 0x8C2895F0
loc_8C102494:
	#data 0x3F19999A
loc_8C102498:
	#data 0x41200000
loc_8c10249c:
	#data bank11.loc_8c11e730
loc_8c1024a0:
	#data bank12.loc_8c1294c8
loc_8C1024A4:
	#data 0x3FD55555
loc_8c1024a8:
	#data bank12.loc_8c1292d4
loc_8C1024AC:
	#data 0x40092492

;==============================================
loc_8c1024b0:
	mova @(loc_8C10255C,pc),r0
	bra loc_8c1024ce
	fmov.s @r0,fr15

loc_8c1024b6:
	mov.w @(loc_8C102556,pc),r3
	tst r11,r3
	bt loc_8c1024c2
	mova @(loc_8C10255C,pc),r0
	bra loc_8c1024ce
	fmov.s @r0,fr15

loc_8c1024c2:
	mov.w @(loc_8C102558,pc),r2
	tst r11,r2
	bt loc_8c1024cc
	bra loc_8c1024ce
	fmov fr12,fr15

loc_8c1024cc:
	fmov fr14,fr15

loc_8c1024ce:
	mov.w @(loc_8C10255A,pc),r3
	tst r11,r3
	bt/s loc_8c1024d8
	mov.l r10,@-r15
	fmul fr13,fr15

loc_8c1024d8:
	mov r15,r5
	add 0x04,r5
	fmov fr15,fr4
	mov r13,r7
	mov r12,r6
	bsr loc_8c1021c2
	mov r14,r4
	mov.l r10,@-r15
	mov r13,r7
	mov r15,r5
	add 0x08,r5
	fmov fr15,fr4
	mov r12,r6
	bsr loc_8c102046
	mov r14,r4
	mov.l r10,@-r15
	mov r13,r7
	mov r15,r5
	add 0x0C,r5
	fmov fr15,fr4
	mov r12,r6
	bsr loc_8c101eb0
	mov r14,r4
	mov.l r10,@-r15
	mov r13,r7
	fmov fr15,fr4
	mov r15,r5
	mov r12,r6
	bra loc_8c10259e
	add 0x10,r5

loc_8c102514:
	mov 0x04,r2
	tst r11,r2
	bt loc_8c102540
	jsr @r9
	nop
	cmp/pz r0
	bf/s loc_8c102528
	mov r0,r4
	bra loc_8c102532
	and 0x01,r0

loc_8c102528:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8c102532:
	tst r0,r0
	bt loc_8c10253a
	bra loc_8c102562
	fldi1 fr15

loc_8c10253a:
	mova @(loc_8C10255C,pc),r0
	bra loc_8c102562
	fmov.s @r0,fr15

loc_8c102540:
	mov.w @(loc_8C102556,pc),r3
	tst r11,r3
	bt loc_8c10254c
	mova @(loc_8C10255C,pc),r0
	bra loc_8c102562
	fmov.s @r0,fr15

loc_8c10254c:
	mov.w @(loc_8C102558,pc),r2
	tst r11,r2
	bt loc_8c102560
	bra loc_8c102562
	fmov fr12,fr15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C102556:
	#data 0x0100
loc_8C102558:
	#data 0x0400
loc_8C10255A:
	#data 0x0200
	#align4

loc_8C10255C:
	#data 0x3FC00000

;==============================================
loc_8c102560:
	fmov fr14,fr15

loc_8c102562:
	mov.w @(loc_8C10263A,pc),r3
	tst r11,r3
	bt/s loc_8c10256c
	mov.l r10,@-r15
	fmul fr13,fr15

loc_8c10256c:
	fmov fr15,fr4
	mov r8,r5
	mov r13,r7
	mov r12,r6
	bsr loc_8c1021c2
	mov r14,r4
	fmov fr15,fr4
	mov r8,r5
	mov r12,r6
	mov.l r10,@-r15
	mov r13,r7
	bsr loc_8c102046
	mov r14,r4
	fmov fr15,fr4
	mov r8,r5
	mov r12,r6
	mov.l r10,@-r15
	mov r13,r7
	bsr loc_8c101eb0
	mov r14,r4
	fmov fr15,fr4
	mov r8,r5
	mov r12,r6
	mov.l r10,@-r15
	mov r13,r7

loc_8c10259e:
	bsr loc_8c101c6c
	mov r14,r4
	add 0x01,r13
	cmp/ge r12,r13
	bt/s loc_8c1025ae
	add 0x10,r15
	bra loc_8c1023bc
	nop

loc_8C1025AE:
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

;==============================================
;unused
loc_8c1025ca:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x77,r0
	mov.l @(0x68,PC),r4
	mov 0x06,r2
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r4),r3
	cmp/ge r2,r3
	bt loc_8c102630
	mov.b @(r0,r4),r2
	extu.b r5,r5
	tst r5,r5
	add 0x01,r2
	bt.s loc_8c1025f2
	mov.b r2,@(r0,r4)

loc_8c1025ec:
	mova @(0x50,PC),r0
	bra loc_8c1025f4
	fmov @r0,fr15

loc_8c1025f2:
	fldi1 fr15

loc_8c1025f4:
	mov 0x79,r13
	fmov fr15,fr4
	mov r14,r5
	mov 0x01,r6
	mov.l r13,@-r15
	mov 0x00,r7
	bsr loc_8c1021c2
	mov r7,r4
	fmov fr15,fr4
	mov r14,r5
	mov 0x01,r6
	mov.l r13,@-r15
	mov 0x00,r7
	bsr loc_8c102046
	mov r7,r4
	fmov fr15,fr4
	mov r14,r5
	mov 0x01,r6
	mov.l r13,@-r15
	mov 0x00,r7
	bsr loc_8c101eb0
	mov r7,r4
	fmov fr15,fr4
	mov r14,r5
	mov 0x01,r6
	mov.l r13,@-r15
	mov 0x00,r7
	bsr loc_8c101c6c
	mov r7,r4
	add 0x10,r15

loc_8c102630:
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10263a:
	#data 0x0200
	#align4

loc_8C10263c:
	#data 0x8C2895F0
loc_8C102640:
	#data 0x3FC00000

;==============================================
loc_8C102644:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C102748,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.l @(loc_8C102750,pc),r5 ; r5 set to 0x8C289608
	mov.l @r5,r5 ; r5 ??
	mov.b r3,@(r0,r14)
	mov.l @(0x14,r14),r2
	mov.b @(r0,r2),r3 ; r3 ??? bc r2 is ???
	tst r3,r3
	bf loc_8C102694
	mov.w @(loc_8C10274A,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r5),r3
	tst r3,r3
	bt loc_8C102666
	bra loc_8C102668
	mov 0x00,r0

loc_8C102666:
	mov.w @(loc_8C10274C,pc),r0 ; r0 set to 0xFF4c

loc_8C102668:
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	mov.l @(loc_8C102760,pc),r2 ; r2 set to 0xFFFF, r2 set to 0xFFFf
	mov r0,r3 ; r3 set to 0xFF4c
	lds r3,fpul
	mova @(loc_8C102754,pc),r0  ; r0 set to 0x8C102754, r0 init to 0x8C102754
	fmov.s @r0,fr2 ; r2 ??, r2 ??
	mova @(loc_8C102758,pc),r0  ; r0 set to 0x8C102758, r0 set to 0x8C102758
	float fpul,fr3
	fmov.s @r0,fr1
	mova @(loc_8C10275C,pc),r0  ; r0 set to 0x8C10275C, r0 set to 0x8C10275c
	fmov.s @r0,fr0 ; r0 ??, r0 ??
	mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48
	fmul fr2,fr3 ; r3 ??? bc r2 is ???
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r2,r3
	mov.l r3,@(r0,r14)
	rts
	mov.l @r15+,r14

;==============================================
loc_8C102694:
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov.l @(loc_8C102764,pc),r1 ; r1 set to 0x8C1651E4
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	rts
	mov.l @r15+,r14

;==============================================
loc_8C1026A8:
	mov.l r14,@-r15
	mov 0x01,r3 ; r3 set to 0x01
	mov.l r13,@-r15
	mov r4,r14
	mov.w @(loc_8C102748,pc),r0 ; r0 set to 0x12c
	mov r5,r13
	sts.l pr,@-r15
	mov r13,r5
	mov.b r3,@(r0,r14)
	bsr loc_8C1027Ba
	mov r14,r4
	extu.b r0,r0 ; r0 set to 0x2c
	tst r0,r0
	bt loc_8C1026D6
	mov.b @(0x04,r14),r0
	mov r13,r5
	mov r14,r4
	add 0x01,r0 ; r0 set to 0x2d
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8C102714
	mov.l @r15+,r14

loc_8C1026D6:
	mov.w @(loc_8C10274A,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r13),r3
	tst r3,r3
	bt loc_8C1026E2
	bra loc_8C1026E4
	mov 0x00,r0

loc_8C1026E2:
	mov.w @(loc_8C10274C,pc),r0 ; r0 set to 0xFF4c

loc_8C1026E4:
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	mov.l @(loc_8C102760,pc),r2 ; r2 set to 0xFFFF, r2 set to 0xFFFf
	mov r0,r3 ; r3 set to 0xFF4c
	lds r3,fpul
	mova @(loc_8C102754,pc),r0  ; r0 set to 0x8C102754, r0 init to 0x8C102754
	fmov.s @r0,fr2 ; r2 ??, r2 ??
	mova @(loc_8C102758,pc),r0  ; r0 set to 0x8C102758, r0 set to 0x8C102758
	float fpul,fr3
	fmov.s @r0,fr1
	mova @(loc_8C10275C,pc),r0  ; r0 set to 0x8C10275C, r0 set to 0x8C10275c
	fmov.s @r0,fr0 ; r0 ??, r0 ??
	mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48
	fmul fr2,fr3 ; r3 ??? bc r2 is ???
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r2,r3
	mov.l r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C102714:
	mov.l r14,@-r15
	mov 0x01,r3 ; r3 set to 0x01
	mov.w @(loc_8C102748,pc),r0 ; r0 set to 0x12c
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	bsr loc_8C1027Ba
	mov r14,r4
	mova @(loc_8C102768,pc),r0  ; r0 set to 0x8C102768
	fmov.s @r0,fr4
	mov.b @(0x05,r14),r0
	tst r0,r0
	bt/s loc_8C10276c
	mov 0x00,r4 ; r4 set to 0x00
	mov.w @(0x1C,r14),r0
	lds r0,fpul
	float fpul,fr3
	fadd fr4,fr3 ; r3 ??
	ftrc fr3,fpul
	sts fpul,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/pz r0
	bf loc_8C10278e
	bra loc_8C102786
	mov r4,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C102748:
	#data 0x012c
loc_8C10274A:
	#data 0x0130
loc_8C10274C:
	#data 0xFF4c
	#align4

loc_8C102750:
	#data 0x8C289608
loc_8C102754:
	#data 0x47800000
loc_8C102758:
	#data 0x43B40000
loc_8C10275C:
	#data 0x3F000000
loc_8C102760:
	#data 0x0000FFFf
loc_8C102764:
	#data bank16.loc_8c1651E4
loc_8C102768:
	#data 0x41200000

;==============================================
loc_8c10276c:
	mov.w @(0x1C,r14),r0
	mov.w @(loc_8C10289A,pc),r5
	lds r0,fpul
	float fpul,fr3
	fsub fr4,fr3
	ftrc fr3,fpul
	sts fpul,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/gt r5,r0
	bt loc_8c10278e
	mov r5,r0
	nop

loc_8c102786:
	mov.w r0,@(0x1C,r14)
	mov r4,r0
	nop
	mov.b r0,@(0x04,r14)

loc_8C10278E:
	mov.w @(0x1C,r14),r0
	mov.l @(loc_8C1028B0,pc),r2 ; r2 set to 0xFFFf
	mov r0,r3
	lds r3,fpul
	mova @(loc_8C1028A4,pc),r0  ; r0 init to 0x8C1028A4
	fmov.s @r0,fr2 ; r2 ??
	mova @(loc_8C1028A8,pc),r0  ; r0 set to 0x8C1028A8
	float fpul,fr3
	fmov.s @r0,fr1
	mova @(loc_8C1028AC,pc),r0  ; r0 set to 0x8C1028Ac
	fmov.s @r0,fr0 ; r0 ??
	mov 0x48,r0 ; r0 set to 0x48
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r2,r3
	mov.l r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C1027BA:
	mov.w @(loc_8C10289C,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r5),r2
	mov.b @(0x07,r4),r0
	extu.b r0,r0 ; r0 set to 0x30
	cmp/eq r0,r2
	bt loc_8C1027D6
	mov.w @(loc_8C10289C,pc),r0 ; r0 set to 0x130
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???
	mov.b r0,@(0x05,r4)
	mov.w @(loc_8C10289C,pc),r0 ; r0 set to 0x130
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???
	mov.b r0,@(0x07,r4)
	rts
	mov 0x01,r0

;==============================================
loc_8C1027D6:
	mov.w @(loc_8C10289C,pc),r0 ; r0 set to 0x130
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???
	mov.b r0,@(0x07,r4)
	mov 0x00,r0 ; r0 set to 0x00
	rts
	nop

;==============================================
loc_8c1027e2:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c1028b4,pc),r3
	mov 0x07,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c102832
	mov r0,r4
	mov.w @(loc_8C10289E,pc),r0
	mov 0x00,r3
	mov.l @(loc_8C1028BC,pc),r1
	mov.l @(loc_8c1028b8,pc),r2
	mov.b r3,@(r0,r4)
	mov 0x40,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	fldi1 fr4
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0x44,r0
	mov 0x19,r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @r15,r3
	mov.w @(loc_8C1028A2,pc),r0
	mov.l r3,@(0x14,r4)
	mov.w @(loc_8C1028A0,pc),r3
	mov.l @r15,r2
	add r2,r3
	mov.l r3,@(r0,r4)
	mov 0x50,r0
	fmov.s fr4,@(r0,r4)
	mov 0x54,r0
	fmov.s fr4,@(r0,r4)
	mov 0x58,r0
	fmov.s fr4,@(r0,r4)

loc_8c102832:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c10283a:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x80,PC),r4
	mov 0x00,r3
	mov.w @(0x58,PC),r0
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0x18,r4),r13
	mov.b r3,@(r0,r14)
	mov 0x03,r3
	mov.b @r4,r2
	extu.b r2,r2
	cmp/gt r3,r2
	bf loc_8c102866
	mov.l @(0x6C,PC),r1
	jsr @r1
	mov r13,r4
	tst r0,r0
	bf loc_8c102866
	mov.w @(0x3A,PC),r0
	mov 0x01,r2
	mov.b r2,@(r0,r14)

loc_8c102866:
	mov r13,r2
	mov.l @(0x5C,PC),r3
	mov r14,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mova @(0x58,PC),r0
	mov.l @(0x54,PC),r2
	fmov @r0,fr3
	mov 0x04,r0
	fmov @(r0,r2),fr2
	mov 0x38,r0
	mov.l @(0x50,PC),r1
	fadd fr3,fr2
	lds r1,fpul
	fmov fr2,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r14),fr1
	fsts fpul,fr2
	fadd fr2,fr1
	fmov fr1,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c10289a:
	#data 0xFF4C
loc_8c10289c:
	#data 0x0130
loc_8C10289E:
	#data 0x012C
loc_8C1028A0:
	#data 0x0088
loc_8C1028A2:
	#data 0x00C8
	#align4

loc_8c1028a4:
	#data 0x47800000
loc_8c1028a8:
	#data 0x43b40000
loc_8c1028ac:
	#data 0x3f000000
loc_8c1028b0:
	#data 0x0000ffff
loc_8c1028b4:
	#data bank04.loc_8c044f12
loc_8c1028b8:
	#data loc_8c102644
loc_8c1028bc:
	#data 0x8c26a908
loc_8c1028c0:
	#data 0x8c2895f0
loc_8c1028c4:
	#data bank03.loc_8c0335e2
loc_8c1028c8:
	#data bank12.loc_8c1294c8
loc_8c1028cc:
	#data 0x8c26a524
loc_8c1028d0:
	#data 0xc2480000
loc_8c1028d4:
	#data 0x40800000

;==============================================
loc_8C1028D8:
	sts.l pr,@-r15
	mov.l @(loc_8C1029F8,pc),r3 ; r3 set to 0x8C044F12
	mov 0x07,r5 ; r5 set to 0x07
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C10291a
	mov r0,r4 ; r4 ??? bc r0 is ???
	mov.l @(loc_8C1029FC,pc),r2 ; r2 set to 0x8C10283a
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C1029F0,pc),r0 ; r0 set to 0x12c
	mov.l @(loc_8C102A00,pc),r1 ; r1 set to 0x8C26A908
	mov.b r3,@(r0,r4)
	mov 0x15,r3 ; r3 set to 0x15
	mov.l r2,@(0x10,r4)
	add 0xA0,r0 ; r0 set to 0xCc
	mov.l r3,@(r0,r4)
	mov 0x44,r0 ; r0 set to 0x44
	mov.l @r1,r2 ; r2 ??
	fldi1 fr4
	mov.l @r2,r3 ; r3 ??? bc r2 is ???
	mov.l @(r0,r3),r3
	add 0x40,r0 ; r0 set to 0x84
	mov.l r3,@(r0,r4)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s fr4,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr4,@(r0,r4)
	mov 0x58,r0 ; r0 set to 0x58
	fmov.s fr4,@(r0,r4)
	bra loc_8C1027E2
	lds.l @r15+,pr

loc_8C10291A:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C102920:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C1029F0,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.l @(loc_8C102A04,pc),r5 ; r5 set to 0x8C289614
	mov.l @r5,r5 ; r5 ??
	mov.b r3,@(r0,r14)
	mov.l @(0x14,r14),r2
	mov.b @(r0,r2),r3 ; r3 ??? bc r2 is ???
	tst r3,r3
	bf loc_8C102970
	mov.w @(loc_8C1029F2,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r5),r3
	tst r3,r3
	bt loc_8C102942
	bra loc_8C102944
	mov 0x00,r0

loc_8C102942:
	mov.w @(loc_8C1029F4,pc),r0 ; r0 set to 0xFF4c

loc_8C102944:
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	mov.l @(loc_8C102A14,pc),r2 ; r2 set to 0xFFFF, r2 set to 0xFFFf
	mov r0,r3 ; r3 set to 0xFF4c
	lds r3,fpul
	mova @(loc_8C102A08,pc),r0  ; r0 set to 0x8C102A08, r0 init to 0x8C102A08
	fmov.s @r0,fr2 ; r2 ??, r2 ??
	mova @(loc_8C102A0C,pc),r0  ; r0 set to 0x8C102A0C, r0 set to 0x8C102A0c
	float fpul,fr3
	fmov.s @r0,fr1
	mova @(loc_8C102A10,pc),r0  ; r0 set to 0x8C102A10, r0 set to 0x8C102A10
	fmov.s @r0,fr0 ; r0 ??, r0 ??
	mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48
	fmul fr2,fr3 ; r3 ??? bc r2 is ???
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r2,r3
	mov.l r3,@(r0,r14)
	rts
	mov.l @r15+,r14

;==============================================
loc_8C102970:
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov.l @(loc_8C102A18,pc),r1 ; r1 set to 0x8C1651Ec
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	rts
	mov.l @r15+,r14

;==============================================
loc_8C102984:
	mov.l r14,@-r15
	mov 0x01,r3 ; r3 set to 0x01
	mov.l r13,@-r15
	mov r4,r14
	mov.w @(loc_8C1029F0,pc),r0 ; r0 set to 0x12c
	mov r5,r13
	sts.l pr,@-r15
	mov r13,r5
	mov.b r3,@(r0,r14)
	bsr loc_8C1027Ba
	mov r14,r4
	extu.b r0,r0 ; r0 set to 0x2c
	tst r0,r0
	bt loc_8C1029B2
	mov.b @(0x04,r14),r0
	mov r13,r5
	mov r14,r4
	add 0x01,r0 ; r0 set to 0x2d
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8C102A1c
	mov.l @r15+,r14

loc_8C1029B2:
	mov.w @(loc_8C1029F2,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r13),r3
	tst r3,r3
	bt loc_8C1029Be
	bra loc_8C1029C0
	mov 0x00,r0

loc_8C1029BE:
	mov.w @(loc_8C1029F4,pc),r0 ; r0 set to 0xFF4c

loc_8C1029C0:
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	mov.l @(loc_8C102A14,pc),r2 ; r2 set to 0xFFFF, r2 set to 0xFFFf
	mov r0,r3 ; r3 set to 0xFF4c
	lds r3,fpul
	mova @(loc_8C102A08,pc),r0  ; r0 set to 0x8C102A08, r0 init to 0x8C102A08
	fmov.s @r0,fr2 ; r2 ??, r2 ??
	mova @(loc_8C102A0C,pc),r0  ; r0 set to 0x8C102A0C, r0 set to 0x8C102A0c
	float fpul,fr3
	fmov.s @r0,fr1
	mova @(loc_8C102A10,pc),r0  ; r0 set to 0x8C102A10, r0 set to 0x8C102A10
	fmov.s @r0,fr0 ; r0 ??, r0 ??
	mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48
	fmul fr2,fr3 ; r3 ??? bc r2 is ???
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r2,r3
	mov.l r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C1029F0:
	#data 0x012c
loc_8C1029F2:
	#data 0x0130
loc_8C1029F4:
	#data 0xFF4c
	#align4

loc_8C1029F8:
	#data bank04.loc_8c044F12
loc_8C1029FC:
	#data loc_8c10283a
loc_8C102A00:
	#data 0x8C26A908
loc_8C102A04:
	#data 0x8C289614
loc_8C102A08:
	#data 0x47800000
loc_8C102A0C:
	#data 0x43B40000
loc_8C102A10:
	#data 0x3F000000
loc_8C102A14:
	#data 0x0000FFFf
loc_8C102A18:
	#data bank16.loc_8c1651Ec

;==============================================
loc_8C102A1C:
	mov.l r14,@-r15
	mov 0x01,r3 ; r3 set to 0x01
	mov.w @(loc_8C102B56,pc),r0 ; r0 set to 0x12c
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	bsr loc_8C1027Ba
	mov r14,r4
	mova @(loc_8C102B60,pc),r0  ; r0 set to 0x8C102B60
	fmov.s @r0,fr4
	mov.b @(0x05,r14),r0
	tst r0,r0
	bt/s loc_8C102A50
	mov 0x00,r4 ; r4 set to 0x00
	mov.w @(0x1C,r14),r0
	lds r0,fpul
	float fpul,fr3
	fadd fr4,fr3 ; r3 ??
	ftrc fr3,fpul
	sts fpul,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/pz r0
	bf loc_8C102A72
	bra loc_8C102A6a
	mov r4,r0

loc_8c102a50:
	mov.w @(0x1C,r14),r0
	mov.w @(loc_8C102B58,pc),r5
	lds r0,fpul
	float fpul,fr3
	fsub fr4,fr3
	ftrc fr3,fpul
	sts fpul,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/gt r5,r0
	bt loc_8c102a72
	mov r5,r0
	nop

loc_8c102a6a:
	mov.w r0,@(0x1C,r14)
	mov r4,r0
	nop
	mov.b r0,@(0x04,r14)

loc_8C102A72:
	mov.w @(0x1C,r14),r0
	mov.l @(loc_8C102B70,pc),r2 ; r2 set to 0xFFFf
	mov r0,r3
	lds r3,fpul
	mova @(loc_8C102B64,pc),r0  ; r0 init to 0x8C102B64
	fmov.s @r0,fr2 ; r2 ??
	mova @(loc_8C102B68,pc),r0  ; r0 set to 0x8C102B68
	float fpul,fr3
	fmov.s @r0,fr1
	mova @(loc_8C102B6C,pc),r0  ; r0 set to 0x8C102B6c
	fmov.s @r0,fr0 ; r0 ??
	mov 0x48,r0 ; r0 set to 0x48
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r2,r3
	mov.l r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c102a9e:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c102b74,pc),r3
	mov 0x07,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c102aee
	mov r0,r4
	mov.w @(loc_8c102b56,pc),r0
	mov 0x00,r3
	mov.l @(loc_8C102B7C,pc),r1
	mov.l @(loc_8c102b78,pc),r2
	mov.b r3,@(r0,r4)
	mov 0x48,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	fldi1 fr4
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0x3C,r0
	mov 0x19,r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @r15,r3
	mov.w @(loc_8C102B5C,pc),r0
	mov.l r3,@(0x14,r4)
	mov.w @(loc_8C102B5A,pc),r3
	mov.l @r15,r2
	add r2,r3
	mov.l r3,@(r0,r4)
	mov 0x50,r0
	fmov.s fr4,@(r0,r4)
	mov 0x54,r0
	fmov.s fr4,@(r0,r4)
	mov 0x58,r0
	fmov.s fr4,@(r0,r4)

loc_8c102aee:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c102af6:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x84,PC),r4
	mov 0x00,r3
	mov.w @(0x54,PC),r0
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0x24,r4),r13
	mov.b r3,@(r0,r14)
	mov 0x03,r3
	mov.b @r4,r2
	extu.b r2,r2
	cmp/gt r3,r2
	bf loc_8c102b22
	mov.l @(0x70,PC),r1
	jsr @r1
	mov r13,r4
	tst r0,r0
	bf loc_8c102b22
	mov.w @(0x36,PC),r0
	mov 0x01,r2
	mov.b r2,@(r0,r14)

loc_8c102b22:
	mov r13,r2
	mov.l @(0x60,PC),r3
	mov r14,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mova @(0x5C,PC),r0
	mov.l @(0x58,PC),r2
	fmov @r0,fr3
	mov 0x04,r0
	fmov @(r0,r2),fr2
	mov 0x38,r0
	mov.l @(0x54,PC),r1
	fadd fr3,fr2
	lds r1,fpul
	fmov fr2,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r14),fr1
	fsts fpul,fr2
	fadd fr2,fr1
	fmov fr1,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c102b56:
	#data 0x012C
loc_8c102b58:
	#data 0xFF4C
loc_8C102B5A:
	#data 0x0088
loc_8C102B5C:
	#data 0x00C8
	#align4

loc_8c102b60:
	#data 0x41200000
loc_8c102b64:
	#data 0x47800000
loc_8c102b68:
	#data 0x43B40000
loc_8c102b6c:
	#data 0x3F000000
loc_8c102b70:
	#data 0x0000FFFF
loc_8c102b74:
	#data bank04.loc_8c044f12
loc_8c102b78:
	#data loc_8c102920
loc_8C102B7C:
	#data 0x8C26A908
loc_8C102B80:
	#data 0x8C2895F0
loc_8c102b84:
	#data bank03.loc_8c0335e2
loc_8c102b88:
	#data bank12.loc_8c1294c8
loc_8c102b8c:
	#data 0x8c26a524
loc_8c102b90:
	#data 0xc2480000
loc_8c102b94:
	#data 0x40a00000

;==============================================
loc_8C102B98:
	sts.l pr,@-r15
	mov.l @(loc_8C102CB8,pc),r3 ; r3 set to 0x8C044F12
	mov 0x07,r5 ; r5 set to 0x07
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C102BDa
	mov r0,r4 ; r4 ??? bc r0 is ???
	mov.l @(loc_8C102CBC,pc),r2 ; r2 set to 0x8C102AF6
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C102CB0,pc),r0 ; r0 set to 0x12c
	mov.l @(loc_8C102CC0,pc),r1 ; r1 set to 0x8C26A908
	mov.b r3,@(r0,r4)
	mov 0x15,r3 ; r3 set to 0x15
	mov.l r2,@(0x10,r4)
	add 0xA0,r0 ; r0 set to 0xCc
	mov.l r3,@(r0,r4)
	mov 0x4C,r0 ; r0 set to 0x4c
	mov.l @r1,r2 ; r2 ??
	fldi1 fr4
	mov.l @r2,r3 ; r3 ??? bc r2 is ???
	mov.l @(r0,r3),r3
	add 0x38,r0 ; r0 set to 0x84
	mov.l r3,@(r0,r4)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s fr4,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr4,@(r0,r4)
	mov 0x58,r0 ; r0 set to 0x58
	fmov.s fr4,@(r0,r4)
	bra loc_8C102A9e
	lds.l @r15+,pr

loc_8C102BDA:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C102BE0:
	mov.l @(0xE0,PC),r6
	mov 0x00,r3
	mov.w @(0xC8,PC),r0
	sts.l pr,@-r15
	mov.l @(0x28,r6),r5
	mov.b r3,@(r0,r4)
	mov.b @r5,r2
	tst r2,r2
	bt loc_8c102c10
	mov.w @(0xBC,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bf loc_8c102c10
	mov.b @r6,r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c102c10
	mov.w @(0xA8,PC),r0
	mov.b @(r0,r5),r2
	tst r2,r2
	bt loc_8c102c10
	mov 0x01,r3
	mov.b r3,@(r0,r4)

loc_8C102C10:
	mov r5,r2
	mov.l @(0xB4,PC),r3
	mov r4,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x92,PC),r3
	mov 0x54,r1
	add r5,r1
	mov.l @(0xA4,PC),r2
	add r5,r3
	fmov @r1,fr0
	mov.b @r3,r3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	extu.b r3,r3
	lds r3,fpul
	mov.l @(0x9C,PC),r3
	float fpul,fr3
	lds r2,fpul
	fmul fr0,fr3
	fsts fpul,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r4)
	mova @(0x8C,PC),r0
	fmov @r0,fr5
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fadd fr5,fr3
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	fmov @(r0,r4),fr2
	fldi1 fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x38,r0
	fmov @r3,fr4
	fadd fr5,fr4
	fmov @(r0,r4),fr2
	fcmp/gt fr4,fr2
	bt loc_8c102c66
	fmov fr4,@(r0,r4)

loc_8C102C66:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c102c6c:
	sts.l pr,@-r15
	mov.l @(loc_8c102cb8,pc),r3
	mov 0x07,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c102caa
	mov r0,r4
	mov.l @(loc_8c102cd8,pc),r2
	mov 0x00,r3
	mov.w @(loc_8c102cb0,pc),r0
	mov.l @(loc_8c102cc0,pc),r1
	mov.b r3,@(r0,r4)
	mov 0x15,r3
	mov.l r2,@(0x10,r4)
	add 0xA0,r0
	mov.l r3,@(r0,r4)
	mov 0x54,r0
	mov.l @r1,r2
	fldi1 fr4
	mov.l @r2,r3
	mov.l @(r0,r3),r3
	add 0x30,r0
	mov.l r3,@(r0,r4)
	mov 0x50,r0
	fmov.s fr4,@(r0,r4)
	mov 0x54,r0
	fmov.s fr4,@(r0,r4)
	mov 0x58,r0
	fmov.s fr4,@(r0,r4)

loc_8c102caa:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c102cb0:
	#data 0x012C
loc_8c102cb2:
	#data 0x0255
loc_8c102cb4:
	#data 0x013C
loc_8c102cb6:
	#data 0x0000
	#align4

loc_8c102cb8:
	#data bank04.loc_8c044f12
loc_8c102cbc:
	#data loc_8C102AF6
loc_8c102cc0:
	#data 0x8C26A908
loc_8c102cc4:
	#data 0x8C2895F0
loc_8c102cc8:
	#data 0x8C1294C8
loc_8c102ccc:
	#data 0x40092492
loc_8c102cd0:
	#data 0x42C80000
loc_8c102cd4:
	#data 0x8C26A5AC
loc_8c102cd8:
	#data loc_8c102be0

;==============================================
loc_8c102cdc:
	mov.l @(0xD4,PC),r6
	mov 0x00,r3
	mov.w @(0xC8,PC),r0
	sts.l pr,@-r15
	mov.l @(0x1C,r6),r5
	mov.b r3,@(r0,r4)
	mov.b @r5,r2
	tst r2,r2
	bt loc_8c102d0c
	mov.w @(0xBC,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bf loc_8c102d0c
	mov.b @r6,r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c102d0c
	mov.w @(0xA8,PC),r0
	mov.b @(r0,r5),r2
	tst r2,r2
	bt loc_8c102d0c
	mov 0x01,r3
	mov.b r3,@(r0,r4)

loc_8c102d0c:
	mov r5,r2
	mov.l @(0xA8,PC),r3
	mov r4,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x92,PC),r3
	mov 0x54,r1
	add r5,r1
	mov.l @(0x98,PC),r2
	add r5,r3
	fmov @r1,fr0
	mov.b @r3,r3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	extu.b r3,r3
	lds r3,fpul
	mov.l @(0x90,PC),r3
	float fpul,fr3
	lds r2,fpul
	fmul fr0,fr3
	fsts fpul,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r4)
	mova @(0x80,PC),r0
	fmov @r0,fr5
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fadd fr5,fr3
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	fmov @(r0,r4),fr2
	fldi0 fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x38,r0
	fmov @r3,fr4
	fadd fr5,fr4
	fmov @(r0,r4),fr2
	fcmp/gt fr4,fr2
	bt loc_8c102d62
	fmov fr4,@(r0,r4)

loc_8c102d62:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c102d68:
	sts.l pr,@-r15
	mov.l @(0x5C,PC),r3
	mov 0x07,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c102da6
	mov r0,r4
	mov.l @(0x50,PC),r2
	mov 0x00,r3
	mov.w @(0x2A,PC),r0
	mov.l @(0x4C,PC),r1
	mov.b r3,@(r0,r4)
	mov 0x15,r3
	mov.l r2,@(0x10,r4)
	add 0xA0,r0
	mov.l r3,@(r0,r4)
	mov 0x50,r0
	mov.l @r1,r2
	fldi1 fr4
	mov.l @r2,r3
	mov.l @(r0,r3),r3
	add 0x34,r0
	mov.l r3,@(r0,r4)
	mov 0x50,r0
	fmov fr4,@(r0,r4)
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	mov 0x58,r0
	fmov fr4,@(r0,r4)

loc_8c102da6:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c102dac:
	#data 0x012c
loc_8c102dae:
	#data 0x0255
loc_8c102db0:
	#data 0x013c
	#align4

loc_8c102db4:
	#data 0x8c2895f0
loc_8c102db8:
	#data bank12.loc_8c1294c8
loc_8c102dbc:
	#data 0x40092492
loc_8c102dc0:
	#data 0x42c80000
loc_8c102dc4:
	#data 0x8c26a5ac
loc_8c102dc8:
	#data bank04.loc_8c044f12
loc_8c102dcc:
	#data loc_8c102cdc
loc_8c102dd0:
	#data 0x8c26a908

;==============================================
loc_8c102dd4:
	mov.l @(0xD8,PC),r6
	mov 0x00,r3
	mov.w @(0xCC,PC),r0
	sts.l pr,@-r15
	mov.l @(0x2C,r6),r5
	mov.b r3,@(r0,r4)
	mov.b @r5,r2
	tst r2,r2
	bt loc_8c102e04
	mov.w @(0xC0,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bf loc_8c102e04
	mov.b @r6,r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c102e04
	mov.w @(0xAC,PC),r0
	mov.b @(r0,r5),r2
	tst r2,r2
	bt loc_8c102e04
	mov 0x01,r3
	mov.b r3,@(r0,r4)

loc_8c102e04:
	mov r5,r2
	mov.l @(0xAC,PC),r3
	mov r4,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x96,PC),r3
	mov 0x54,r1
	add r5,r1
	mov.l @(0x9C,PC),r2
	add r5,r3
	fmov @r1,fr0
	mov.b @r3,r3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	extu.b r3,r3
	mov.l @(0x98,PC),r1
	lds r3,fpul
	mov.l @(0x98,PC),r3
	float fpul,fr3
	lds r2,fpul
	fmul fr0,fr3
	fsts fpul,fr0
	lds r1,fpul
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r4)
	mova @(0x80,PC),r0
	fmov @r0,fr5
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fadd fr5,fr3
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	fmov @(r0,r4),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	fmov @r3,fr4
	fadd fr5,fr4
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fcmp/gt fr4,fr2
	bt loc_8c102e5e
	fmov fr4,@(r0,r4)

loc_8c102e5e:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c102e64:
	sts.l pr,@-r15
	mov.l @(0x60,PC),r3
	mov 0x07,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c102ea2
	mov r0,r4
	mov.l @(0x54,PC),r2
	mov 0x00,r3
	mov.w @(0x2A,PC),r0
	mov.l @(0x50,PC),r1
	mov.b r3,@(r0,r4)
	mov 0x15,r3
	mov.l r2,@(0x10,r4)
	add 0xA0,r0
	mov.l r3,@(r0,r4)
	mov 0x54,r0
	mov.l @r1,r2
	fldi1 fr4
	mov.l @r2,r3
	mov.l @(r0,r3),r3
	add 0x30,r0
	mov.l r3,@(r0,r4)
	mov 0x50,r0
	fmov fr4,@(r0,r4)
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	mov 0x58,r0
	fmov fr4,@(r0,r4)

loc_8c102ea2:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c102ea8:
	#data 0x012C
loc_8c102eaa:
	#data 0x0255
loc_8c102eac:
	#data 0x013C
	#align4

loc_8c102eb0:
	#data 0x8c2895f0
loc_8c102eb4:
	#data bank12.loc_8c1294c8
loc_8c102eb8:
	#data 0x40092492
loc_8c102ebc:
	#data 0x42c80000
loc_8c102ec0:
	#data 0x40400000
loc_8c102ec4:
	#data 0x8c26a5ac
loc_8c102ec8:
	#data bank04.loc_8c044f12
loc_8c102ecc:
	#data loc_8c102dd4
loc_8c102ed0:
	#data 0x8c26a908

;==============================================
loc_8c102ed4:
	mov.l @(0xF0,PC),r6
	mov 0x00,r3
	mov.w @(0xE4,PC),r0
	sts.l pr,@-r15
	mov.l @(0x20,r6),r5
	mov.b r3,@(r0,r4)
	mov.b @r5,r2
	tst r2,r2
	bt loc_8c102f04
	mov.w @(0xD8,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bf loc_8c102f04
	mov.b @r6,r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c102f04
	mov.w @(0xC4,PC),r0
	mov.b @(r0,r5),r2
	tst r2,r2
	bt loc_8c102f04
	mov 0x01,r3
	mov.b r3,@(r0,r4)

loc_8c102f04:
	mov r5,r2
	mov.l @(0xC4,PC),r3
	mov r4,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0xAE,PC),r3
	mov 0x54,r1
	add r5,r1
	mov.l @(0xB4,PC),r2
	add r5,r3
	fmov @r1,fr0
	mov.b @r3,r3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	extu.b r3,r3
	lds r3,fpul
	mov.l @(0xAC,PC),r3
	float fpul,fr3
	lds r2,fpul
	fmul fr0,fr3
	fsts fpul,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r4)
	mova @(0x9C,PC),r0
	fmov @r0,fr5
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fadd fr5,fr3
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	fldi1 fr3
	fadd fr3,fr3
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	fmov @r3,fr4
	fadd fr5,fr4
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fcmp/gt fr4,fr2
	bt loc_8c102f5c
	fmov fr4,@(r0,r4)

loc_8c102f5c:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c102f62:
	sts.l pr,@-r15
	mov.l @(0x74,PC),r3
	mov 0x07,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c102fa0
	mov r0,r4
	mov.l @(0x68,PC),r2
	mov 0x00,r3
	mov.w @(0x44,PC),r0
	mov.l @(0x68,PC),r1
	mov.b r3,@(r0,r4)
	mov 0x11,r3
	mov.l r2,@(0x10,r4)
	add 0xA0,r0
	mov.l r3,@(r0,r4)
	mov 0x50,r0
	mov.l @r1,r2
	fldi1 fr4
	mov.l @r2,r3
	mov.l @(r0,r3),r3
	add 0x34,r0
	mov.l r3,@(r0,r4)
	mov 0x50,r0
	fmov fr4,@(r0,r4)
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	mov 0x58,r0
	fmov fr4,@(r0,r4)

loc_8c102fa0:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C102FA6:
	sts.l pr,@-r15
	bsr loc_8C1028D8
	nop
	bsr loc_8C102B98
	nop
	bsr loc_8C102D68
	nop
	bsr loc_8C102C6c
	nop
	bsr loc_8C102F62
	nop
	bra loc_8C102E64
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c102fc0:
	#data 0x012c
loc_8c102fc2:
	#data 0x0255
loc_8c102fc4:
	#data 0x013c
	#align4

loc_8C102FC8:
	#data 0x8C2895F0
loc_8C102FCC:
	#data bank12.loc_8c1294C8
loc_8C102FD0:
	#data 0x40092492
loc_8C102FD4:
	#data 0x42C80000
loc_8C102FD8:
	#data 0x8C26A5Ac
loc_8C102FDC:
	#data bank04.loc_8c044F12
loc_8C102FE0:
	#data loc_8c102ED4
loc_8C102FE4:
	#data 0x8C26A908

;==============================================
loc_8C102FE8:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0xE8,PC),r3
	mov 0x01,r6
	mov.l r4,@(0x4,r15)
	mov.b r7,@r15
	mov.b @(0xC,r15),r0
	mov r0,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c103058
	mov r0,r4
	mov.l @(0xD8,PC),r3
	mov r4,r1
	mov.w @(0xC6,PC),r0
	add 0x34,r1
	mov.b @r3,r2
	add 0x01,r2
	mov.b r2,@r3
	mov 0x00,r3
	mov.l @(0xCC,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @(0xC8,PC),r3
	mov.l @(0x4,r15),r2
	jsr @r3
	mov 0x0C,r0
	mov 0x23,r1
	mov.b @(0xC,r15),r0
	add r4,r1
	mov.l @(0xCC,PC),r2
	mov.b r0,@r1
	mova @(0xBC,PC),r0
	mov.b @r15,r3
	fmov @r0,fr2
	mova @(0xB8,PC),r0
	extu.b r3,r3
	fmov @r0,fr1
	lds r3,fpul
	mova @(0xB4,PC),r0
	fmov @r0,fr0
	mov 0x48,r0
	mov.l @(0xB8,PC),r1
	float fpul,fr3
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r2,r3
	mov.w @(0x80,PC),r2
	add r1,r3
	mov.l r3,@(r0,r4)
	mov.w @(0x7C,PC),r0
	mov.l r2,@(r0,r4)

loc_8C103058:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C103060:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	cmp/eq 0x00,r0
	bt loc_8C103090
	cmp/eq 0x03,r0
	bt loc_8C1030A4
	cmp/eq 0x04,r0
	bt loc_8C1030B0
	cmp/eq 0x06,r0
	bt loc_8C1030B8
	cmp/eq 0x07,r0
	bt loc_8C1030C8
	cmp/eq 0x09,r0
	bt loc_8C1030Fc
	cmp/eq 0x0A,r0
	bt loc_8C103108
	cmp/eq 0x0C,r0
	bt loc_8C103110
	cmp/eq 0x0E,r0
	bt loc_8C103118
	bra loc_8C103122
	nop

loc_8C103090:
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r14),r5
	bsr loc_8C103148
	mov r14,r4
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r14),r5
	bsr loc_8C10344a
	mov r14,r4
	bra loc_8C103122
	nop

loc_8C1030A4:
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r14),r5
	bsr loc_8C1031Ee
	mov r14,r4
	bra loc_8C103122
	nop

	loc_8C1030B0:
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r14),r6
	bra loc_8C10311e
	mov 0x00,r5

	loc_8C1030B8:
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r14),r5
	bsr loc_8C1032C6
	mov r14,r4
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r14),r6
	bra loc_8C10311e
	mov 0x01,r5

	loc_8C1030C8:
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r14),r6
	bra loc_8C10311e
	mov 0x03,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1030d0:
	#data 0x012c
loc_8c1030d2:
	#data 0x0189
loc_8c1030d4:
	#data 0x00Cc
	#align4

loc_8C1030D8:
	#data bank04.loc_8c044F12
loc_8C1030DC:
	#data 0x8C289650
loc_8C1030E0:
	#data loc_8c103060
loc_8C1030E4:
	#data bank12.loc_8c1294C8
loc_8C1030e8:
	#data 0x49340000
loc_8C1030ec:
	#data 0x43B40000
loc_8c1030f0:
	#data 0x3F000000
loc_8c1030f4:
	#data 0x0000FFFf
loc_8c1030f8:
	#data 0x0000C000

;==============================================
loc_8C1030FC:
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r14),r5
	bsr loc_8C10336c
	mov r14,r4
	bra loc_8C103122
	nop

loc_8C103108:
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r14),r6
	bra loc_8C10311e
	mov 0x02,r5

loc_8C103110:
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r14),r6
	bra loc_8C10311e
	mov 0x05,r5

loc_8c103118:
	mov 0x23,r0
	mov.b @(r0,r14),r6
	mov 0x04,r5

loc_8c10311e:
	bsr loc_8c103584
	mov r14,r4

loc_8C103122:
	mov.w @(0x1C,r14),r0
	mov 0x12,r3 ; r3 set to 0x12
	cmp/gt r3,r0
	bf loc_8C10313e
	mov.l @(loc_8C103240,pc),r1 ; r1 set to 0x8C0450C0
	jsr @r1
	mov r14,r4
	mov.l @(loc_8C103244,pc),r3 ; r3 set to 0x8C289650
	mov.b @r3,r2
	add 0xFF,r2
	mov.b r2,@r3 ; r3 ??? bc r2 is ???
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C10313E:
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c103148:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c103248,pc),r3
	mov 0x01,r6
	mov.l r4,@r15
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c103184
	mov r0,r4
	mov.w @(loc_8C103232,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C103250,pc),r1
	mov.l @(loc_8c10324c,pc),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.w @(loc_8C103234,pc),r0
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov.w @(loc_8C103236,pc),r0
	mov.w @(loc_8C103238,pc),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.w @(loc_8C10323A,pc),r2
	mov.l @r15,r3
	mov.w @(loc_8C10323C,pc),r0
	add r3,r2
	mov.l r2,@(r0,r4)

loc_8c103184:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C10318C:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	mov 0x06,r3 ; r3 set to 0x06
	cmp/gt r3,r0
	bf loc_8C1031A4
	lds.l @r15+,pr
	mov.l @(loc_8C103240,pc),r1 ; r1 set to 0x8C0450C0
	mov r14,r4
	jmp @r1
	mov.l @r15+,r14

loc_8C1031A4:
	mov.l @(loc_8C103254,pc),r4 ; r4 set to 0x8C165200
	mov r0,r6
	mov.l @(loc_8C103258,pc),r3 ; r3 set to 0x8C0FD914
	mov r14,r5
	jsr @r3
	add 0x04,r5
	mov 0x50,r0 ; r0 set to 0x50
	fmov fr0,fr3 ; r3 ??
	fmov.s fr0,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr3,@(r0,r14)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r14),fr3
	mov 0x58,r0 ; r0 set to 0x58
	mov.l @(loc_8C10325C,pc),r4 ; r4 set to 0x8C165210
	mov r14,r5
	fmov.s fr3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	mov.l @(loc_8C103258,pc),r3 ; r3 set to 0x8C0FD914
	mov r0,r6 ; r6 set to 0x58
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

;==============================================
loc_8c1031ee:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c103248,pc),r3
	mov 0x01,r6
	mov.l r4,@r15
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c10322a
	mov r0,r4
	mov.w @(loc_8C103232,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C103250,pc),r1
	mov.l @(loc_8c103260,pc),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.w @(loc_8C10323E,pc),r0
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov.w @(loc_8C103236,pc),r0
	mov.w @(loc_8C103238,pc),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.w @(loc_8C10323A,pc),r2
	mov.l @r15,r3
	mov.w @(loc_8C10323C,pc),r0
	add r3,r2
	mov.l r2,@(r0,r4)

loc_8c10322a:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C103232:
	#data 0x012C
loc_8c103234:
	#data 0x01F0
loc_8C103236:
	#data 0x0084
loc_8C103238:
	#data 0x0410
loc_8C10323A:
	#data 0x0088
loc_8C10323C:
	#data 0x00C8
loc_8C10323E:
	#data 0x01F4
loc_8c103240:
	#data bank04.loc_8c0450c0
loc_8c103244:
	#data 0x8C289650
loc_8c103248:
	#data bank04.loc_8c044f12
loc_8c10324c:
	#data loc_8C10318C
loc_8C103250:
	#data 0x8C26A908
loc_8c103254:
	#data bank16.loc_8C165200
loc_8c103258:
	#data bank0f.loc_8C0FD914
loc_8c10325c:
	#data bank16.loc_8C165210
loc_8c103260:
	#data loc_8c103264

;==============================================
loc_8C103264:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	mov 0x04,r3 ; r3 set to 0x04
	cmp/gt r3,r0
	bf loc_8C10327c
	lds.l @r15+,pr
	mov.l @(loc_8C1033C0,pc),r1 ; r1 set to 0x8C0450C0
	mov r14,r4
	jmp @r1
	mov.l @r15+,r14

loc_8C10327C:
	mov.l @(loc_8C1033C4,pc),r4 ; r4 set to 0x8C165220
	mov r0,r6
	mov.l @(loc_8C1033C8,pc),r3 ; r3 set to 0x8C0FD914
	mov r14,r5
	jsr @r3
	add 0x04,r5
	mov 0x50,r0 ; r0 set to 0x50
	fmov fr0,fr3 ; r3 ??
	fmov.s fr0,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr3,@(r0,r14)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r14),fr3
	mov 0x58,r0 ; r0 set to 0x58
	mov.l @(loc_8C1033CC,pc),r4 ; r4 set to 0x8C165230
	mov r14,r5
	fmov.s fr3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	mov.l @(loc_8C1033C8,pc),r3 ; r3 set to 0x8C0FD914
	mov r0,r6 ; r6 set to 0x58
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

;==============================================
loc_8c1032c6:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c1033d0,pc),r3
	mov 0x01,r6
	mov.l r4,@r15
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c103302
	mov r0,r4
	mov.w @(loc_8C1033B0,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C1033D8,pc),r1
	mov.l @(loc_8c1033d4,pc),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.w @(loc_8C1033B2,pc),r0
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov.w @(loc_8C1033B4,pc),r0
	mov.w @(loc_8C1033B6,pc),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.w @(loc_8C1033B8,pc),r2
	mov.l @r15,r3
	mov.w @(loc_8C1033BA,pc),r0
	add r3,r2
	mov.l r2,@(r0,r4)
	
loc_8c103302:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C10330A:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	mov 0x04,r3 ; r3 set to 0x04
	cmp/gt r3,r0
	bf loc_8C103322
	lds.l @r15+,pr
	mov.l @(loc_8C1033C0,pc),r1 ; r1 set to 0x8C0450C0
	mov r14,r4
	jmp @r1
	mov.l @r15+,r14

loc_8C103322:
	mov.l @(loc_8C1033DC,pc),r4 ; r4 set to 0x8C165248
	mov r0,r6
	mov.l @(loc_8C1033C8,pc),r3 ; r3 set to 0x8C0FD914
	mov r14,r5
	jsr @r3
	add 0x04,r5
	mov 0x50,r0 ; r0 set to 0x50
	fmov fr0,fr3 ; r3 ??
	fmov.s fr0,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr3,@(r0,r14)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r14),fr3
	mov 0x58,r0 ; r0 set to 0x58
	mov.l @(loc_8C1033E0,pc),r4 ; r4 set to 0x8C165258
	mov r14,r5
	fmov.s fr3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	mov.l @(loc_8C1033C8,pc),r3 ; r3 set to 0x8C0FD914
	mov r0,r6 ; r6 set to 0x58
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

;==============================================
loc_8c10336c:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c1033d0,pc),r3
	mov 0x01,r6
	mov.l r4,@r15
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c1033a8
	mov r0,r4
	mov.w @(loc_8C1033B0,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C1033D8,pc),r1
	mov.l @(loc_8c1033e4,pc),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.w @(loc_8C1033BC,pc),r0
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov.w @(loc_8C1033B4,pc),r0
	mov.w @(loc_8C1033B6,pc),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.w @(loc_8C1033B8,pc),r2
	mov.l @r15,r3
	mov.w @(loc_8C1033BA,pc),r0
	add r3,r2
	mov.l r2,@(r0,r4)

loc_8c1033a8:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C1033B0:
	#data 0x012C
loc_8c1033b2:
	#data 0x01F8
loc_8C1033B4:
	#data 0x0084
loc_8C1033B6:
	#data 0x0410
loc_8C1033B8:
	#data 0x0088
loc_8C1033BA:
	#data 0x00C8
loc_8C1033BC:
	#data 0x01FC
	#align4

loc_8c1033c0:
	#data bank04.loc_8c0450c0
loc_8c1033c4:
	#data bank16.loc_8c165220
loc_8c1033c8:
	#data bank0f.loc_8c0fd914
loc_8c1033cc:
	#data bank16.loc_8c165230
loc_8c1033d0:
	#data bank04.loc_8c044f12
loc_8c1033d4:
	#data bank10.loc_8c10330a
loc_8C1033D8:
	#data 0x8C26A908
loc_8c1033dc:
	#data bank16.loc_8c165248
loc_8c1033e0:
	#data bank16.loc_8c165258
loc_8c1033e4:
	#data loc_8c1033e8

;==============================================
loc_8C1033E8:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	mov 0x06,r3 ; r3 set to 0x06
	cmp/gt r3,r0
	bf loc_8C103400
	lds.l @r15+,pr
	mov.l @(loc_8C103548,pc),r1 ; r1 set to 0x8C0450C0
	mov r14,r4
	jmp @r1
	mov.l @r15+,r14

loc_8C103400:
	mov.l @(loc_8C10354C,pc),r4 ; r4 set to 0x8C165270
	mov r0,r6
	mov.l @(loc_8C103550,pc),r3 ; r3 set to 0x8C0FD914
	mov r14,r5
	jsr @r3
	add 0x04,r5
	mov 0x50,r0 ; r0 set to 0x50
	fmov fr0,fr3 ; r3 ??
	fmov.s fr0,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr3,@(r0,r14)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r14),fr3
	mov 0x58,r0 ; r0 set to 0x58
	mov.l @(loc_8C103554,pc),r4 ; r4 set to 0x8C165280
	mov r14,r5
	fmov.s fr3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	mov.l @(loc_8C103550,pc),r3 ; r3 set to 0x8C0FD914
	mov r0,r6 ; r6 set to 0x58
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

;==============================================
loc_8c10344a:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c103558,pc),r3
	mov 0x01,r6
	mov.l r4,@r15
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c103486
	mov r0,r4
	mov.w @(loc_8C10353A,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C103560,pc),r1
	mov.l @(loc_8c10355c,pc),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.w @(loc_8C10353C,pc),r0
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov.w @(loc_8C10353E,pc),r0
	mov.w @(loc_8C103540,pc),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.w @(loc_8C103542,pc),r2
	mov.l @r15,r3
	mov.w @(loc_8C103544,pc),r0
	add r3,r2
	mov.l r2,@(r0,r4)

loc_8c103486:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C10348E:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x0F,r3 ; r3 set to 0x0f
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	cmp/gt r3,r0
	bf loc_8C1034Ae
	lds.l @r15+,pr
	mov.l @(loc_8C103548,pc),r1 ; r1 set to 0x8C0450C0
	mov r14,r4
	mov.l @r15+,r8
	mov.l @r15+,r13
	jmp @r1
	mov.l @r15+,r14

loc_8C1034AE:
	mov.w @(0x1C,r14),r0
	mov r14,r5
	mov.l @(loc_8C103564,pc),r4 ; r4 set to 0x8C165298
	mov.l @(loc_8C103550,pc),r13 ; r13 set to 0x8C0FD914
	mov r0,r6
	jsr @r13
	add 0x04,r5
	mov 0x50,r0 ; r0 set to 0x50
	fmov fr0,fr3
	fmov.s fr0,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr3,@(r0,r14)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r14),fr3
	mov 0x58,r0 ; r0 set to 0x58
	mov r14,r3
	mov.l @(loc_8C103568,pc),r4 ; r4 set to 0x8C1652A8
	fmov.s fr3,@(r0,r14)
	add 0x40,r3
	mov.w @(0x1C,r14),r0
	mov r14,r5
	mov r3,r8
	mov r0,r6 ; r6 set to 0x58
	jsr @r13
	add 0x05,r5
	mova @(loc_8C10356C,pc),r0  ; r0 set to 0x8C10356c
	mov.l @(loc_8C103578,pc),r2 ; r2 set to 0xFFFf
	fmov.s @r0,fr3
	mova @(loc_8C103570,pc),r0  ; r0 set to 0x8C103570
	fmov.s @r0,fr2 ; r2 ??
	mova @(loc_8C103574,pc),r0  ; r0 set to 0x8C103574
	fmul fr3,fr0 ; r0 ??? bc r3 is ???
	fmov.s @r0,fr1
	mov.l @(loc_8C10357C,pc),r4 ; r4 set to 0x8C1652B8
	mov r14,r5
	fdiv fr2,fr0
	fadd fr1,fr0
	ftrc fr0,fpul
	sts fpul,r3
	and r2,r3
	mov.l r3,@r8
	mov.w @(0x1C,r14),r0
	mov r0,r6 ; r6 ??? bc r0 is ???
	jsr @r13
	add 0x06,r5
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C103580,pc),r4 ; r4 set to 0x8C1652C8
	fmov.s fr0,@(r0,r14)
	mov r14,r5
	mov.w @(0x1C,r14),r0
	mov r0,r6 ; r6 set to 0x34
	jsr @r13
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
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10353a:
	#data 0x012c
loc_8c10353c:
	#data 0x0200
loc_8c10353e:
	#data 0x0084
loc_8c103540:
	#data 0x0413
loc_8c103542:
	#data 0x0088
loc_8c103544:
	#data 0x00C8
	#align4

loc_8C103548:
	#data bank04.loc_8c0450C0
loc_8C10354C:
	#data bank16.loc_8c165270
loc_8C103550:
	#data bank0f.loc_8c0fD914
loc_8C103554:
	#data bank16.loc_8c165280
loc_8C103558:
	#data bank04.loc_8c044F12
loc_8C10355C:
	#data loc_8c10348e
loc_8c103560:
	#data 0x8C26A908
loc_8C103564:
	#data bank16.loc_8c165298
loc_8C103568:
	#data bank16.loc_8c1652A8
loc_8C10356C:
	#data 0x47800000
loc_8C103570:
	#data 0x43B40000
loc_8C103574:
	#data 0x3F000000
loc_8C103578:
	#data 0x0000FFFf
loc_8C10357C:
	#data bank16.loc_8c1652B8
loc_8C103580:
	#data bank16.loc_8c1652C8

;==============================================
loc_8C103584:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@(0x4,r15)
	mov.l r5,@r15
	mov r6,r0
	nop
	mov.b r0,@(0x8,r15)
	mov 0x01,r6
	mov.b @(0x8,r15),r0
	mov.l @(0xB0,PC),r3
	mov r0,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c1035c4
	mov r0,r4
	mov.w @(0x96,PC),r0
	mov 0x01,r3
	mov.l @(0xA0,PC),r2
	mov.b r3,@(r0,r4)
	add 0xA0,r0
	mov.w @(0x8E,PC),r3
	mov.l r2,@(0x10,r4)
	mov.l r3,@(r0,r4)
	mov.w @(0x8A,PC),r3
	mov.l @(0x4,r15),r2
	mov.w @(0x88,PC),r0
	add r2,r3
	mov.l r3,@(r0,r4)
	mov 0x20,r0
	mov.l @r15,r2
	mov.b r2,@(r0,r4)

loc_8C1035C4:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C1035CC:
	mov 0x20,r3 ; r3 set to 0x20
	mov.l @(loc_8C103650,pc),r0 ; r0 set to 0x8C1653F8
	add r4,r3 ; r3 ??? bc r4 is ???
	mov.b @r3,r3
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	mov.w @(0x1C,r4),r0
	cmp/ge r2,r0
	bf loc_8C1035E6
	mov.l @(loc_8C103654,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8C1035E6:
	mov 0x20,r2 ; r2 set to 0x20
	mov.l @(loc_8C103658,pc),r5 ; r5 set to 0x8C1653E0
	add r4,r2 ; r2 ??? bc r4 is ???
	mov.w @(0x1C,r4),r0
	mov.b @r2,r2
	shll2 r0
	mov.l @(loc_8C10365C,pc),r3 ; r3 set to 0x8C26A908
	extu.b r2,r2
	shll2 r2
	add r5,r2
	mov.l @r2,r2
	shll r0
	mov.l @(r0,r2),r1
	mov.l @r3,r0
	shll2 r1
	mov.l @r0,r2
	add r2,r1
	mov.l @r1,r0
	mov.w @(loc_8C103646,pc),r1 ; r1 set to 0x84
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l r0,@r1
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r5),r2
	mov.w @(0x1C,r4),r0
	shll2 r0
	shll r0
	add r0,r2
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???
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

;==============================================
loc_8c10363e:
	#data 0x012c
loc_8c103640:
	#data 0x0400
loc_8c103642:
	#data 0x0088
loc_8c103644:
	#data 0x00c8
loc_8c103646:
	#data 0x0084
	#align4

loc_8C103648:
	#data bank04.loc_8c044F12
loc_8C10364C:
	#data loc_8c1035Cc
loc_8C103650:
	#data bank16.loc_8c1653F8
loc_8C103654:
	#data bank04.loc_8c0450C0
loc_8C103658:
	#data bank16.loc_8c1653E0
loc_8C10365C:
	#data 0x8C26A908

;==============================================
;unused?
loc_8C103660:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(0x146,PC),r0
	mov r4,r14
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c10367a
	mov 0x34,r0
	fmov @r5,fr3
	fmov @(r0,r14),fr2
	bra loc_8c103682
	fsub fr3,fr2

loc_8c10367a:
	mov 0x34,r0
	fmov @r5,fr3
	fmov @(r0,r14),fr2
	fadd fr3,fr2

loc_8c103682:
	mov 0x04,r0
	fmov fr2,@r15
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	mov 0x04,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r15)
	mov 0x3C,r0
	fmov @(r0,r14),fr3
	mov 0x08,r0
	fmov fr3,@(r0,r15)
	bsr loc_8c1036ac
	mov r15,r4
	mov.l @(0x118,PC),r2
	jsr @r2
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
;unused?
loc_8c1036ac:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x05,r13
	mov.l r12,@-r15
	mov 0x03,r12
	mov.l r11,@-r15
	mov 0x00,r11
	mov.l r10,@-r15
	mov r4,r10
	sts.l pr,@-r15

loc_8c1036c0:
	mov r11,r14

loc_8c1036c2:
	mov r14,r5
	bsr loc_8c1036e0
	mov r10,r4
	add 0x01,r14
	cmp/ge r12,r14
	bf loc_8c1036c2
	dt r13
	bf loc_8c1036c0
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
;unused?
loc_8c1036e0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0xD0,PC),r3
	mov 0x01,r6
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov 0x07,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c1037f0
	mov r0,r14
	mov.w @(0xB0,PC),r0
	mov 0x01,r3
	mov.l @(0xBC,PC),r2
	mov.l @(0xBC,PC),r1
	mov.b r3,@(r0,r14)
	mov.l r2,@(0x10,r14)
	mov.l @r1,r3
	mov r14,r1
	mov.l @(0x4,r15),r2
	add 0x34,r1
	mov.l @r3,r3
	mov.w @(0x9C,PC),r0
	shll2 r2
	add r3,r2
	mov.l @(0xAC,PC),r3
	mov.l @(r0,r2),r2
	mov.w @(0x94,PC),r0
	mov.l r2,@(r0,r14)
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xA0,PC),r13
	jsr @r13
	mov 0x1E,r12
	mov r0,r1
	mov r12,r0
	nop
	mov.l @(0x98,PC),r2
	jsr @r2
	nop
	add 0xF1,r0
	lds r0,fpul
	mov 0x5C,r0
	float fpul,fr3
	jsr @r13
	fmov fr3,@(r0,r14)
	mov r0,r1
	mov r12,r0
	nop
	mov.l @(0x80,PC),r3
	jsr @r3
	nop
	add 0xF1,r0
	lds r0,fpul
	mov 0x60,r0
	float fpul,fr3
	jsr @r13
	fmov fr3,@(r0,r14)
	mov r0,r1
	mov r12,r0
	nop
	mov.l @(0x68,PC),r3
	jsr @r3
	nop
	add 0xF1,r0
	lds r0,fpul
	mov 0x64,r0
	float fpul,fr3
	fmov fr3,@(r0,r14)
	mova @(0x5C,PC),r0
	fmov @r0,fr4

loc_8c103778:
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	mov 0x68,r0
	fneg fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr3
	mov 0x6C,r0
	fneg fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x64,r0
	fmov @(r0,r14),fr3
	mov 0x70,r0
	fneg fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x74,r0
	fldi1 fr3
	jsr @r13
	fmov fr3,@(r0,r14)
	mov.l @(0x30,PC),r3
	cmp/pz r0
	bf.s loc_8c1037dc
	mov 0x48,r1
	bra loc_8c1037e6
	and r3,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1037b0:
	#data 0x0130
loc_8c1037b2:
	#data 0x012c
loc_8c1037b4:
	#data 0x01e4
loc_8c1037b6:
	#data 0x0084
	#align4

loc_8C1037B8:
	#data bank04.loc_8c0424Fe
loc_8C1037BC:
	#data bank04.loc_8c044F12
loc_8C1037C0:
	#data loc_8c1037Fc
loc_8C1037C4:
	#data 0x8C26A908
loc_8C1037C8:
	#data bank12.loc_8c1294C8
loc_8C1037CC:
	#data bank11.loc_8c11e730
loc_8C1037D0:
	#data bank12.loc_8c1292D4
loc_8C1037D4:
	#data 0x41F00000
loc_8C1037D8:
	#data 0x0000FFFf

;==============================================
loc_8C1037DC:
	not r0,r0
	add 0x01,r0
	and r3,r0
	not r0,r0
	add 0x01,r0

loc_8c1037e6:
	add r14,r1
	mov.l r0,@r1
	mov 0x27,r3
	mov.w @(0x64,PC),r0
	mov.l r3,@(r0,r14)

loc_8c1037f0:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C1037FC:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	mov 0x1E,r3 ; r3 set to 0x1e
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/gt r3,r0
	bf loc_8C10381a
	lds.l @r15+,pr
	mov.l @(loc_8C103858,pc),r1 ; r1 set to 0x8C0450C0
	mov r14,r4
	jmp @r1
	mov.l @r15+,r14

;==============================================
loc_8C10381A:
	mov.l @(loc_8C10385C,pc),r3 ; r3 set to 0x8C1087Ce
	jsr @r3
	mov r14,r4
	mov r14,r4
	add 0x40,r4
	mov.l @r4,r2
	mov 0x74,r0 ; r0 set to 0x74
	mov.l @(0x08,r4),r3 ; r3 ??? bc r4 is ???
	add r3,r2
	mov.l r2,@r4
	mov r14,r4
	add 0x40,r4
	mov.l @(0x08,r4),r3
	mov 0x00,r2 ; r2 set to 0x00
	mov.l @(0x04,r4),r1
	cmp/gt r3,r2
	addc r2,r3
	shar r3
	add r3,r1
	mov.l r1,@(0x04,r4)
	mov.l @(loc_8C103860,pc),r1 ; r1 set to 0x3C888889
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
	lds r1,fpul
	fsts fpul,fr3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c103854:
	#data 0x00Cc
	#align4

loc_8C103858:
	#data bank04.loc_8c0450C0
loc_8C10385C:
	#data loc_8c1087Ce
loc_8C103860:
	#data 0x3C888889

;==============================================
loc_8C103864:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8C10387e
	mov r4,r14
	bsr loc_8C1038Ea
	mov r14,r4
	bsr loc_8C103970
	mov r14,r4
	bsr loc_8C1039Dc
	mov r14,r4
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c10387e:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c103958,pc),r3
	mov 0x07,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c1038e2
	mov r0,r4
	mov.w @(loc_8C103950,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C103960,pc),r1
	mov.l @(loc_8c10395c,pc),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(loc_8C103952,pc),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov.w @(loc_8C103954,pc),r0
	mov.l r3,@(r0,r4)
	mov.l @(loc_8c103964,pc),r3
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8C103968,pc),r1
	mov 0x38,r0
	fmov.s @(r0,r4),fr2
	mov 0x31,r3
	lds r1,fpul
	fldi1 fr4
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(loc_8C103956,pc),r0
	mov.l r3,@(r0,r4)
	mov 0x00,r0
	mov.w r0,@(0x1C,r4)
	mov 0x74,r0
	fmov.s fr4,@(r0,r4)
	mov 0x50,r0
	fmov.s fr4,@(r0,r4)
	mov 0x54,r0
	fmov.s fr4,@(r0,r4)
	mov 0x58,r0
	fmov.s fr4,@(r0,r4)

loc_8c1038e2:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1038ea:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x68,PC),r3
	mov 0x07,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c103948
	mov r0,r4
	mov.w @(0x4C,PC),r0
	mov 0x01,r3
	mov.l @(0x58,PC),r1
	mov.l @(0x64,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(0x3E,PC),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov.w @(0x38,PC),r0
	mov.l r3,@(r0,r4)
	mov.l @(0x44,PC),r3
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x40,PC),r1
	mov 0x38,r0
	fmov @(r0,r4),fr2
	mov 0x21,r3
	lds r1,fpul
	mov 0x00,r5
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x1C,PC),r0
	mov.l r3,@(r0,r4)
	mov r5,r0
	nop
	mov.w r0,@(0x1C,r4)
	mov.w r0,@(0x1E,r4)
	mov 0x74,r0
	fldi1 fr2
	fmov fr2,@(r0,r4)

loc_8c103948:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop
 
;==============================================
loc_8C103950:
	#data 0x012C
loc_8C103952:
	#data 0x02E8
loc_8C103954:
	#data 0x0084
loc_8C103956:
	#data 0x00CC
	#align4

loc_8c103958:
	#data bank04.loc_8c044f12
loc_8c10395c:
	#data loc_8c103a48
loc_8C103960:
	#data 0x8C26A908
loc_8c103964:
	#data bank12.loc_8c1294c8
loc_8C103968:
	#data 0x43092492
loc_8c10396c:
	#data loc_8C103A7E

;==============================================
loc_8c103970:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x158,PC),r3
	mov 0x07,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c1039d4
	mov r0,r4
	mov.w @(0x13A,PC),r0
	mov 0x01,r3
	mov.l @(0x14C,PC),r1
	mov.l @(0x144,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(0x12C,PC),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov.w @(0x126,PC),r0
	mov.l r3,@(r0,r4)
	mov.l @(0x138,PC),r3
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x134,PC),r1
	mov 0x38,r0
	fmov @(r0,r4),fr2
	mov 0x31,r3
	lds r1,fpul
	fldi1 fr4
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x10A,PC),r0
	mov.l r3,@(r0,r4)
	mov 0x00,r0
	mov.w r0,@(0x1C,r4)
	mov 0x74,r0
	fmov fr4,@(r0,r4)
	mov 0x50,r0
	fmov fr4,@(r0,r4)
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	mov 0x58,r0
	fmov fr4,@(r0,r4)

loc_8c1039d4:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1039dc:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xEC,PC),r3
	mov 0x07,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c103a40
	mov r0,r4
	mov.w @(0xCE,PC),r0
	mov 0x01,r3
	mov.l @(0xE0,PC),r1
	mov.l @(0xE8,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(0xC6,PC),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov.w @(0xBA,PC),r0
	mov.l r3,@(r0,r4)
	mov.l @(0xCC,PC),r3
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xC8,PC),r1
	mov 0x38,r0
	fmov @(r0,r4),fr2
	mov 0x31,r3
	lds r1,fpul
	fldi1 fr4
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x9E,PC),r0
	mov.l r3,@(r0,r4)
	mov 0x00,r0
	mov.w r0,@(0x1C,r4)
	mov 0x74,r0
	fmov fr4,@(r0,r4)
	mov 0x50,r0
	fmov fr4,@(r0,r4)
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	mov 0x58,r0
	fmov fr4,@(r0,r4)

loc_8c103a40:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C103A48:
	mov.w @(0x1C,r4),r0
	mov 0x0F,r3 ; r3 set to 0x0f
	cmp/gt r3,r0
	bf loc_8C103A56
	mov.l @(loc_8C103AE8,pc),r2 ; r2 set to 0x8C0450C0
	jmp @r2
	nop

loc_8C103A56:
	mov.w @(0x1C,r4),r0
	mov.l @(loc_8C103AEC,pc),r1 ; r1 set to 0x8C165410
	shll2 r0
	fmov.s @(r0,r1),fr3
	mov 0x74,r0 ; r0 set to 0x74
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C103AF0,pc),r0  ; r0 set to 0x8C103AF0
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
	rts
	mov.w r0,@(0x1C,r4)

;==============================================
loc_8C103A7E:
	mov.l @(loc_8C103AD8,pc),r2 ; r2 set to 0x8C26A908
	mov.w @(0x1E,r4),r0
	mov.l @r2,r3
	mov.w @(loc_8C103ACE,pc),r1 ; r1 set to 0x2E8
	shll2 r0
	mov.l @r3,r3
	add r3,r0
	mov.l @(r0,r1),r1 ; r1 ??
	mov 0x0F,r3 ; r3 set to 0x0f
	mov.w @(loc_8C103AC8,pc),r0 ; r0 set to 0x84
	mov.l r1,@(r0,r4)
	mov.w @(0x1C,r4),r0
	cmp/gt r3,r0
	bf loc_8C103AA0
	mov.l @(loc_8C103AE8,pc),r1 ; r1 set to 0x8C0450C0
	jmp @r1
	nop

loc_8c103aa0:
	mov.w @(0x1C,r4),r0
	mov 0x08,r3
	mov.l @(loc_8c103af4,pc),r1
	shll2 r0
	fmov.s @(r0,r1),fr3
	mov 0x74,r0
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	cmp/ge r3,r0
	bt loc_8c103ac0
	mov.w @(0x1E,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r4)

loc_8c103ac0:
	rts
	nop

;==============================================
loc_8c103ac4:
	#data 0x012C
loc_8c103ac6:
	#data 0x030C
loc_8c103ac8:
	#data 0x0084
loc_8c103aca:
	#data 0x00CC
loc_8c103acc:
	#data 0x0310
loc_8c103ace:
	#data 0x02E8
	#align4

loc_8c103ad0:
	#data bank04.loc_8c044f12
loc_8c103ad4:
	#data loc_8c103af8
loc_8c103ad8:
	#data 0x8c26a908
loc_8c103adc:
	#data bank12.loc_8c1294c8
loc_8c103ae0:
	#data 0x43092492
loc_8c103ae4:
	#data bank10.loc_8c103b46
loc_8c103ae8:
	#data bank04.loc_8c0450c0
loc_8c103aec:
	#data bank16.loc_8c165410
loc_8c103af0:
	#data 0x3df5c28f
loc_8c103af4:
	#data bank16.loc_8c165488

;==============================================
loc_8C103AF8:
	mov.w @(0x1C,r4),r0
	mov 0x0E,r3 ; r3 set to 0x0e
	cmp/gt r3,r0
	bf loc_8C103B06
	mov.l @(loc_8C103B94,pc),r2 ; r2 set to 0x8C0450C0
	jmp @r2
	nop

loc_8c103b06:
	mov.w @(0x1C,r4),r0
	mov 0x09,r3
	mov.l @(loc_8c103b98,pc),r1
	shll2 r0
	fmov.s @(r0,r1),fr3
	mov 0x74,r0
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C103B9C,pc),r0
	fmov.s @r0,fr4
	mov.w @(0x1C,r4),r0
	cmp/ge r3,r0
	bt loc_8c103b34
	mov 0x50,r0
	mov.l @(loc_8C103BA0,pc),r1
	fmov.s @(r0,r4),fr3
	lds r1,fpul
	fsub fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0
	fmov.s @(r0,r4),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)

loc_8c103b34:
	mov 0x50,r0
	fmov.s @(r0,r4),fr3
	fcmp/gt fr3,fr4
	bf loc_8c103b3e
	fmov.s fr4,@(r0,r4)

loc_8c103b3e:
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	rts
	mov.w r0,@(0x1C,r4)

;==============================================
loc_8C103B46:
	mov.w @(0x1C,r4),r0
	mov 0x0E,r3 ; r3 set to 0x0e
	cmp/gt r3,r0
	bf loc_8C103B54
	mov.l @(loc_8C103B94,pc),r2 ; r2 set to 0x8C0450C0
	jmp @r2
	nop

loc_8c103b54:
	mov.w @(0x1C,r4),r0
	mov 0x09,r3
	mov.l @(loc_8c103b98,pc),r1
	shll2 r0
	fmov.s @(r0,r1),fr3
	mov 0x74,r0
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C103B9C,pc),r0
	fmov.s @r0,fr4
	mov.w @(0x1C,r4),r0
	cmp/ge r3,r0
	bt loc_8c103b82
	mov.l @(loc_8C103BA0,pc),r1
	mov 0x50,r0
	fmov.s @(r0,r4),fr2
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x54,r0
	fmov.s @(r0,r4),fr2
	fsub fr4,fr2
	fmov.s fr2,@(r0,r4)

loc_8c103b82:
	mov 0x54,r0
	fmov.s @(r0,r4),fr3
	fcmp/gt fr3,fr4
	bf loc_8c103b8c
	fmov.s fr4,@(r0,r4)

loc_8c103b8c:
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	rts
	mov.w r0,@(0x1C,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c103b94:
	#data bank04.loc_8c0450c0
loc_8c103b98:
	#data bank16.loc_8c16544c
loc_8C103B9C:
	#data 0x3DCCCCCD
loc_8C103BA0:
	#data 0x3E800000

;==============================================
loc_8C103BA4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	bsr loc_8C103BD0
	mov r5,r14
	mov r14,r5
	bsr loc_8C103C62
	mov r13,r4
	mov r14,r5
	bsr loc_8C103D10
	mov r13,r4
	mov r14,r5
	bsr loc_8C103D78
	mov r13,r4
	mov r14,r5
	bsr loc_8C103DE0
	mov r13,r4
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C103BD0:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8C103CF4,pc),r3 ; r3 set to 0x8C044F12
	mov 0x01,r6 ; r6 set to 0x01
	mov.l r4,@r15
	mov.l r5,@(0x04,r15)
	mov 0x07,r5 ; r5 set to 0x07
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C103C5a
	mov r0,r4 ; r4 ??? bc r0 is ???
	mov.w @(loc_8C103CE4,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8C103CFC,pc),r1 ; r1 set to 0x8C26A908
	mov.l @(loc_8C103CF8,pc),r2 ; r2 set to 0x8C103E68
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3 ; r3 ??
	mov r4,r1 ; r1 ??? bc r4 is ???
	mov.w @(loc_8C103CE6,pc),r0 ; r0 set to 0x2A4
	add 0x34,r1
	mov.l @r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(r0,r2),r3
	mov.w @(loc_8C103CE8,pc),r0 ; r0 set to 0x84
	mov.l r3,@(r0,r4)
	mov.l @(loc_8C103D00,pc),r3 ; r3 set to 0x8C1294C8
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(loc_8C103D04,pc),r1 ; r1 set to 0x41200000
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r4),fr2
	mov 0x00,r5 ; r5 set to 0x00
	lds r1,fpul
	mov.w @(loc_8C103CEA,pc),r3 ; r3 set to 0x405
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(loc_8C103CEC,pc),r0 ; r0 set to 0xCc
	mov.l r3,@(r0,r4)
	mov r5,r0 ; r0 set to 0x00
	nop
	mov.w r0,@(0x1C,r4)
	mov.w r0,@(0x1E,r4)
	mov 0x74,r0 ; r0 set to 0x74
	fldi1 fr2
	fmov.s fr2,@(r0,r4)
	mov 0x78,r0 ; r0 set to 0x78
	fldi0 fr4
	fmov.s fr4,@(r0,r4)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s fr4,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x80
	fmov.s fr4,@(r0,r4)
	mov.w @(loc_8C103CEE,pc),r0 ; r0 set to 0x130
	mov.l @(0x04,r15),r3 ; r3 ??? bc r15 is ???
	mov.w r3,@(r0,r4)
	mov.w @(r0,r4),r1 ; r1 ??? bc r4 is ???
	tst r1,r1
	bt/s loc_8C103C52
	mov 0x44,r0 ; r0 set to 0x44
	mov.l @(loc_8C103D08,pc),r2 ; r2 set to 0x8000
	bra loc_8C103C54
	nop

loc_8c103c52:
	mov 0x00,r2

loc_8c103c54:
	mov.l @(r0,r4),r1
	add r2,r1
	mov.l r1,@(r0,r4)

loc_8C103C5A:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C103C62:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8C103CF4,pc),r3 ; r3 set to 0x8C044F12
	mov 0x01,r6 ; r6 set to 0x01
	mov.l r4,@r15
	mov.l r5,@(0x04,r15)
	mov 0x07,r5 ; r5 set to 0x07
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C103CDc
	mov r0,r4 ; r4 ??? bc r0 is ???
	mov.l @(loc_8C103D0C,pc),r2 ; r2 set to 0x8C103EB4
	mov 0x01,r3 ; r3 set to 0x01
	mov.w @(loc_8C103CE4,pc),r0 ; r0 set to 0x12c
	mov r4,r1
	add 0x34,r1
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @(loc_8C103D00,pc),r3 ; r3 set to 0x8C1294C8
	mov.l @r15,r2 ; r2 ??? bc r15 is ???
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C103CEC,pc),r0 ; r0 set to 0xCc
	mov 0x00,r5 ; r5 set to 0x00
	mov.w @(loc_8C103CF0,pc),r1 ; r1 set to 0x415
	mov.l r1,@(r0,r4)
	mov r5,r0 ; r0 set to 0x00
	nop
	mov.w r0,@(0x1C,r4)
	mov.w r0,@(0x1E,r4)
	mov 0x74,r0 ; r0 set to 0x74
	fldi1 fr4
	fmov.s fr4,@(r0,r4)
	mov 0x78,r0 ; r0 set to 0x78
	fldi0 fr5
	fmov.s fr5,@(r0,r4)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s fr5,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x80
	fmov.s fr5,@(r0,r4)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s fr4,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr4,@(r0,r4)
	mov 0x58,r0 ; r0 set to 0x58
	fmov.s fr4,@(r0,r4)
	mov.w @(loc_8C103CEE,pc),r0 ; r0 set to 0x130
	mov.l @(0x04,r15),r3 ; r3 ??? bc r15 is ???
	mov.w r3,@(r0,r4)
	mov.w @(r0,r4),r1 ; r1 ??? bc r4 is ???
	tst r1,r1
	bt/s loc_8C103CD4
	mov 0x44,r0 ; r0 set to 0x44
	mov.l @(loc_8C103D08,pc),r2 ; r2 set to 0x8000
	bra loc_8C103CD6
	nop

loc_8c103cd4:
	mov 0x00,r2

loc_8c103cd6:
	mov.l @(r0,r4),r1
	add r2,r1
	mov.l r1,@(r0,r4)

loc_8C103CDC:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C103CE4:
	#data 0x012c
loc_8C103CE6:
	#data 0x02A4
loc_8C103CE8:
	#data 0x0084
loc_8C103CEA:
	#data 0x0405
loc_8C103CEC:
	#data 0x00Cc
loc_8C103CEE:
	#data 0x0130
loc_8C103CF0:
	#data 0x0415
	#align4

loc_8C103CF4:
	#data bank04.loc_8c044F12
loc_8C103CF8:
	#data loc_8c103E68
loc_8C103CFC:
	#data 0x8C26A908
loc_8C103D00:
	#data bank12.loc_8c1294C8
loc_8C103D04:
	#data 0x41200000
loc_8C103D08:
	#data 0x00008000
loc_8C103D0C:
	#data loc_8c103EB4

;==============================================
loc_8C103D10:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8C103E50,pc),r3 ; r3 set to 0x8C044F12
	mov 0x01,r6 ; r6 set to 0x01
	mov.l r4,@r15
	mov.l r5,@(0x04,r15)
	mov 0x07,r5 ; r5 set to 0x07
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C103D70
	mov r0,r4 ; r4 ??? bc r0 is ???
	mov.l @(loc_8C103E54,pc),r2 ; r2 set to 0x8C103F46
	mov 0x01,r3 ; r3 set to 0x01
	mov.w @(loc_8C103E48,pc),r0 ; r0 set to 0x12c
	mov r4,r1
	add 0x34,r1
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @(loc_8C103E58,pc),r3 ; r3 set to 0x8C1294C8
	mov.l @r15,r2 ; r2 ??? bc r15 is ???
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C103E4A,pc),r0 ; r0 set to 0xCc
	mov 0x25,r1 ; r1 set to 0x25
	mov 0x00,r5 ; r5 set to 0x00
	mov.l r1,@(r0,r4)
	mov r5,r0 ; r0 set to 0x00
	nop
	mov.w r0,@(0x1C,r4)
	mov.w r0,@(0x1E,r4)
	mov 0x74,r0 ; r0 set to 0x74
	fldi0 fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C103E4C,pc),r0 ; r0 set to 0x130
	mov.l @(0x04,r15),r3 ; r3 ??? bc r15 is ???
	mov.w r3,@(r0,r4)
	mov.w @(r0,r4),r1 ; r1 ??? bc r4 is ???
	tst r1,r1
	bt/s loc_8C103D68
	mov 0x44,r0 ; r0 set to 0x44
	mov.l @(loc_8C103E5C,pc),r2 ; r2 set to 0x8000
	bra loc_8C103D6a
	nop

loc_8c103d68:
	mov 0x00,r2

loc_8c103d6a:
	mov.l @(r0,r4),r1
	add r2,r1
	mov.l r1,@(r0,r4)

loc_8C103D70:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C103D78:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8C103E50,pc),r3 ; r3 set to 0x8C044F12
	mov 0x01,r6 ; r6 set to 0x01
	mov.l r4,@r15
	mov.l r5,@(0x04,r15)
	mov 0x07,r5 ; r5 set to 0x07
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C103DD8
	mov r0,r4 ; r4 ??? bc r0 is ???
	mov.l @(loc_8C103E60,pc),r2 ; r2 set to 0x8C103F90
	mov 0x01,r3 ; r3 set to 0x01
	mov.w @(loc_8C103E48,pc),r0 ; r0 set to 0x12c
	mov r4,r1
	add 0x34,r1
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @(loc_8C103E58,pc),r3 ; r3 set to 0x8C1294C8
	mov.l @r15,r2 ; r2 ??? bc r15 is ???
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C103E4A,pc),r0 ; r0 set to 0xCc
	mov 0x25,r1 ; r1 set to 0x25
	mov 0x00,r5 ; r5 set to 0x00
	mov.l r1,@(r0,r4)
	mov r5,r0 ; r0 set to 0x00
	nop
	mov.w r0,@(0x1C,r4)
	mov.w r0,@(0x1E,r4)
	mov 0x74,r0 ; r0 set to 0x74
	fldi0 fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C103E4C,pc),r0 ; r0 set to 0x130
	mov.l @(0x04,r15),r3 ; r3 ??? bc r15 is ???
	mov.w r3,@(r0,r4)
	mov.w @(r0,r4),r1 ; r1 ??? bc r4 is ???
	tst r1,r1
	bt/s loc_8C103DD0
	mov 0x44,r0 ; r0 set to 0x44
	mov.l @(loc_8C103E5C,pc),r2 ; r2 set to 0x8000
	bra loc_8C103DD2
	nop

loc_8c103dd0:
	mov 0x00,r2

loc_8c103dd2:
	mov.l @(r0,r4),r1
	add r2,r1
	mov.l r1,@(r0,r4)

loc_8C103DD8:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C103DE0:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8C103E50,pc),r3 ; r3 set to 0x8C044F12
	mov 0x01,r6 ; r6 set to 0x01
	mov.l r4,@r15
	mov.l r5,@(0x04,r15)
	mov 0x07,r5 ; r5 set to 0x07
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C103E40
	mov r0,r4 ; r4 ??? bc r0 is ???
	mov.l @(loc_8C103E64,pc),r2 ; r2 set to 0x8C10400a
	mov 0x01,r3 ; r3 set to 0x01
	mov.w @(loc_8C103E48,pc),r0 ; r0 set to 0x12c
	mov r4,r1
	add 0x34,r1
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @(loc_8C103E58,pc),r3 ; r3 set to 0x8C1294C8
	mov.l @r15,r2 ; r2 ??? bc r15 is ???
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C103E4A,pc),r0 ; r0 set to 0xCc
	mov 0x25,r1 ; r1 set to 0x25
	mov 0x00,r5 ; r5 set to 0x00
	mov.l r1,@(r0,r4)
	mov r5,r0 ; r0 set to 0x00
	nop
	mov.w r0,@(0x1C,r4)
	mov.w r0,@(0x1E,r4)
	mov 0x74,r0 ; r0 set to 0x74
	fldi0 fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C103E4C,pc),r0 ; r0 set to 0x130
	mov.l @(0x04,r15),r3 ; r3 ??? bc r15 is ???
	mov.w r3,@(r0,r4)
	mov.w @(r0,r4),r1 ; r1 ??? bc r4 is ???
	tst r1,r1
	bt/s loc_8C103E38
	mov 0x44,r0 ; r0 set to 0x44
	mov.l @(loc_8C103E5C,pc),r2 ; r2 set to 0x8000
	bra loc_8C103E3a
	nop

loc_8c103e38:
	mov 0x00,r2

loc_8c103e3a:
	mov.l @(r0,r4),r1
	add r2,r1
	mov.l r1,@(r0,r4)

loc_8C103E40:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C103E48:
	#data 0x012c
loc_8C103E4A:
	#data 0x00Cc
loc_8C103E4C:
	#data 0x0130
	#align4

loc_8C103E50:
	#data bank04.loc_8c044F12
loc_8C103E54:
	#data loc_8c103F46
loc_8C103E58:
	#data bank12.loc_8c1294C8
loc_8C103E5C:
	#data 0x00008000
loc_8C103E60:
	#data loc_8c103F90
loc_8C103E64:
	#data loc_8c10400a

;==============================================
loc_8C103E68:
	mov.w @(0x1C,r4),r0
	mov 0x14,r3 ; r3 set to 0x14
	cmp/gt r3,r0
	bf loc_8C103E76
	mov.l @(loc_8C103FAC,pc),r2 ; r2 set to 0x8C0450C0
	jmp @r2
	nop

loc_8c103e76:
	mov.w @(0x1C,r4),r0
	mov 0x08,r3
	cmp/ge r3,r0
	bt loc_8c103e8c
	mov.l @(loc_8C103FB0,pc),r1
	mov 0x38,r0
	fmov.s @(r0,r4),fr2
	lds r1,fpul
	fsts fpul,fr3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r4)

loc_8c103e8c:
	mov.w @(0x1C,r4),r0
	mov.l @(loc_8c103fb4,pc),r5
	shll2 r0
	fmov.s @(r0,r5),fr3
	mov 0x78,r0
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	shll2 r0
	fmov.s @(r0,r5),fr3
	mov 0x7C,r0
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	shll2 r0
	fmov.s @(r0,r5),fr3
	mov.w @(loc_8c103fa0,pc),r0
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	rts
	mov.w r0,@(0x1C,r4)

loc_8C103EB4:
	mov.w @(0x1C,r4),r0
	mov 0x07,r3 ; r3 set to 0x07
	cmp/ge r3,r0
	bt loc_8C103EC4
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	rts
	mov.w r0,@(0x1C,r4)

;==============================================
loc_8C103EC4:
	mov.w @(0x1E,r4),r0
	mov 0x0A,r3 ; r3 set to 0x0a
	cmp/gt r3,r0
	bf loc_8C103ED2
	mov.l @(loc_8C103FAC,pc),r2 ; r2 set to 0x8C0450C0
	jmp @r2
	nop

loc_8C103ED2:
	mov.l @(loc_8C103FB8,pc),r2 ; r2 set to 0x8C26A908
	mov.w @(loc_8C103FA2,pc),r0 ; r0 set to 0x2A8
	mov.l @r2,r3
	mov.l @(loc_8C103FBC,pc),r5 ; r5 set to 0x8C165518
	mov.l @r3,r1
	mov.l @(r0,r1),r0 ; r0 ??? bc r1 is ???
	mov.w @(loc_8C103FA4,pc),r1 ; r1 set to 0x84
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l r0,@r1
	mov.w @(0x1C,r4),r0
	shll2 r0
	fmov.s @(r0,r5),fr3
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	shll2 r0 ; r0 set to 0x1E0
	fmov.s @(r0,r5),fr3
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	shll2 r0 ; r0 set to 0x1F0
	fmov.s @(r0,r5),fr3
	mov.w @(loc_8C103FA0,pc),r0 ; r0 set to 0x80
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C103FC0,pc),r0  ; r0 set to 0x8C103FC0
	fmov.s @r0,fr4
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r4),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x58,r0 ; r0 set to 0x58
	fmov.s @(r0,r4),fr2 ; r2 ??? bc r4 is ???
	fadd fr4,fr2
	mov.l @(loc_8C103FC4,pc),r1 ; r1 set to 0x3D3A2E8c
	lds r1,fpul
	fmov.s fr2,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r4),fr2
	fsts fpul,fr3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	tst r0,r0
	bt loc_8C103F32
	mov.w @(loc_8C103FA6,pc),r3 ; r3 set to 0xBA3
	bra loc_8C103F34
	nop

loc_8C103F32:
	mov.w @(loc_8C103FA8,pc),r3 ; r3 set to 0xF45d

loc_8C103F34:
	mov 0x44,r0 ; r0 set to 0x44, r0 set to 0x44
	mov.l @(r0,r4),r1
	add r3,r1
	mov.l r1,@(r0,r4)
	mov.w @(0x1E,r4),r0
	add 0x01,r0 ; r0 set to 0x45, r0 set to 0x45
	mov.w r0,@(0x1E,r4)
	rts
	nop

;==============================================
loc_8C103F46:
	mov.w @(0x1C,r4),r0
	mov 0x09,r3 ; r3 set to 0x09
	cmp/ge r3,r0
	bt loc_8C103F56
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	rts
	mov.w r0,@(0x1C,r4)

;==============================================
loc_8C103F56:
	mov.w @(0x1E,r4),r0
	mov 0x0A,r3 ; r3 set to 0x0a
	cmp/gt r3,r0
	bf loc_8C103F64
	mov.l @(loc_8C103FAC,pc),r2 ; r2 set to 0x8C0450C0
	jmp @r2
	nop

loc_8C103F64:
	mov.w @(0x1E,r4),r0
	mov.l @(loc_8C103FC8,pc),r1 ; r1 set to 0x8C165578
	mov.l @(loc_8C103FB8,pc),r3 ; r3 set to 0x8C26A908
	shll2 r0
	mov.l @(r0,r1),r2
	mov.l @r3,r0
	shll2 r2
	mov.l @r0,r0
	mov.l @(r0,r2),r2
	mov.w @(loc_8C103FA4,pc),r0 ; r0 set to 0x84
	mov.l r2,@(r0,r4)
	mov.w @(0x1E,r4),r0
	mov.l @(loc_8C103FCC,pc),r2 ; r2 set to 0x8C165548
	shll2 r0 ; r0 set to 0x210
	fmov.s @(r0,r2),fr3 ; r3 ??
	mov 0x74,r0 ; r0 set to 0x74
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1E,r4),r0
	add 0x01,r0 ; r0 set to 0x75
	mov.w r0,@(0x1E,r4)
	rts
	nop

;==============================================
loc_8C103F90:
	mov.w @(0x1C,r4),r0
	mov 0x09,r3 ; r3 set to 0x09
	cmp/ge r3,r0
	bt loc_8C103FD0
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	rts
	mov.w r0,@(0x1C,r4)

;==============================================
loc_8C103FA0:
	#data 0x0080
loc_8C103FA2:
	#data 0x02A8
loc_8C103FA4:
	#data 0x0084
loc_8C103FA6:
	#data 0x0BA3
loc_8C103FA8:
	#data 0xF45d
	#align4

loc_8C103FAC:
	#data bank04.loc_8c0450C0
loc_8c103fb0:
	#data 0x40C00000
loc_8C103FB4:
	#data bank16.loc_8c1654C4
loc_8C103FB8:
	#data 0x8C26A908
loc_8C103FBC:
	#data bank16.loc_8c165518
loc_8C103FC0:
	#data 0x3E0BA2E9
loc_8C103FC4:
	#data 0x3D3A2E8c
loc_8C103FC8:
	#data bank16.loc_8c165578
loc_8C103FCC:
	#data bank16.loc_8c165548

;==============================================
loc_8C103FD0:
	mov.w @(0x1E,r4),r0
	mov 0x0A,r3 ; r3 set to 0x0a
	cmp/gt r3,r0
	bf loc_8C103FDe
	mov.l @(loc_8C104058,pc),r2 ; r2 set to 0x8C0450C0
	jmp @r2
	nop

loc_8C103FDE:
	mov.w @(0x1E,r4),r0
	mov.l @(loc_8C10405C,pc),r1 ; r1 set to 0x8C1655A4
	mov.l @(loc_8C104060,pc),r3 ; r3 set to 0x8C26A908
	shll2 r0
	mov.l @(r0,r1),r2
	mov.l @r3,r0
	shll2 r2
	mov.l @r0,r0
	mov.l @(r0,r2),r2
	mov.w @(loc_8C104054,pc),r0 ; r0 set to 0x84
	mov.l r2,@(r0,r4)
	mov.w @(0x1E,r4),r0
	mov.l @(loc_8C104064,pc),r2 ; r2 set to 0x8C165548
	shll2 r0 ; r0 set to 0x210
	fmov.s @(r0,r2),fr3 ; r3 ??
	mov 0x74,r0 ; r0 set to 0x74
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1E,r4),r0
	add 0x01,r0 ; r0 set to 0x75
	mov.w r0,@(0x1E,r4)
	rts
	nop

;==============================================
loc_8C10400A:
	mov.w @(0x1C,r4),r0
	mov 0x09,r3 ; r3 set to 0x09
	cmp/ge r3,r0
	bt loc_8C10401a
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	rts
	mov.w r0,@(0x1C,r4)

loc_8C10401A:
	mov.w @(0x1E,r4),r0
	mov 0x0A,r3 ; r3 set to 0x0a
	cmp/gt r3,r0
	bf loc_8C104028
	mov.l @(loc_8C104058,pc),r2 ; r2 set to 0x8C0450C0
	jmp @r2
	nop

loc_8C104028:
	mov.w @(0x1E,r4),r0
	mov.l @(loc_8C104068,pc),r1 ; r1 set to 0x8C1655D0
	mov.l @(loc_8C104060,pc),r3 ; r3 set to 0x8C26A908
	shll2 r0
	mov.l @(r0,r1),r2
	mov.l @r3,r0
	shll2 r2
	mov.l @r0,r0
	mov.l @(r0,r2),r2
	mov.w @(loc_8C104054,pc),r0 ; r0 set to 0x84
	mov.l r2,@(r0,r4)
	mov.w @(0x1E,r4),r0
	mov.l @(loc_8C104064,pc),r2 ; r2 set to 0x8C165548
	shll2 r0 ; r0 set to 0x210
	fmov.s @(r0,r2),fr3 ; r3 ??
	mov 0x74,r0 ; r0 set to 0x74
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1E,r4),r0
	add 0x01,r0 ; r0 set to 0x75
	mov.w r0,@(0x1E,r4)
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C104054:
	#data 0x0084
	#align4

loc_8C104058:
	#data bank04.loc_8c0450C0
loc_8C10405C:
	#data bank16.loc_8c1655A4
loc_8C104060:
	#data 0x8C26A908
loc_8C104064:
	#data bank16.loc_8c165548
loc_8C104068:
	#data bank16.loc_8c1655D0

;==============================================
loc_8C10406C:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov r14,r5
	mov.l @(loc_8C1041C0,pc),r1 ; r1 set to 0x8C1655Fc
	extu.b r0,r0
	mov.l @(0x18,r14),r4
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C104082:
	mov.w @(0x12C,PC),r0
	mov.l r14,@-r15
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt.s loc_8c104096
	mov r5,r14
	mov.w @(0x120,PC),r0
	mov 0x00,r2
	mov.l r2,@(r0,r14)

loc_8C104096:
	mov.w @(0x11A,PC),r0
	mov.l @(r0,r14),r3
	add 0xFF,r3
	mov.l r3,@(r0,r14)
	add 0x01,r3
	tst r3,r3
	bf loc_8c1040b2
	mov.l @(0x11C,PC),r5
	mov 0x01,r0
	mov.l @(0x11C,PC),r3
	mov r14,r4
	mov.b r0,@(0x4,r14)
	jmp @r3
	mov.l @r15+,r14

loc_8C1040B2:
	rts
	mov.l @r15+,r14

;==============================================
loc_8C1040B6:
	mov.w @(0xFC,PC),r0
	mov.l @(0x114,PC),r6
	mov.l @(r0,r5),r3
	mov.l @(0x10C,PC),r7
	shll2 r3
	shll r3
	shll r3
	add r3,r6
	mov.l @(r0,r5),r3
	add 0x54,r0
	shll2 r3
	shll r3
	shll2 r3
	add r3,r7
	mov 0x01,r3
	mov.b r3,@(r0,r5)
	mov.w @(0x1C,r5),r0
	shll r0
	add r0,r6
	mov.w @r6,r0
	mov.w r0,@(0x1E,r5)
	mov.w @(0x1C,r5),r0
	shll2 r0
	add r0,r7
	fmov @r7,fr3
	mov 0x74,r0
	fmov fr3,@(r0,r5)
	mov 0x02,r0
	mov.b r0,@(0x4,r5)
	mov.b @(0x7,r5),r0
	tst r0,r0
	bt loc_8c10410e
	mov 0x5C,r0
	fmov @(r0,r5),fr3
	mov 0x34,r0
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r5)
	mov 0x60,r0
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r5)

loc_8C10410E:
	mov.b @(0x7,r5),r0
	tst r0,r0
	bt loc_8c104130
	mov 0x00,r0
	mov.b r0,@(0x7,r5)
	mov 0x5C,r0
	fmov @(r0,r5),fr3
	mov 0x34,r0
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r5)
	mov 0x60,r0
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r5)

loc_8C104130:
	mov.w @(0x1E,r5),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r5)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c104156
	mov 0x01,r0
	mov.b r0,@(0x4,r5)
	mov 0x08,r3
	mov.w @(0x1C,r5),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r5)
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8c104156
	mov 0x03,r0
	mov.b r0,@(0x4,r5)
	mov 0x07,r0
	mov.w r0,@(0x1C,r5)

loc_8C104156:
	rts
	nop

;==============================================
loc_8C10415A:
	mov.l r14,@-r15
	mov r5,r14
	sts.l pr,@-r15
	mov.l @(loc_8C1041C8,pc),r3 ; r3 set to 0x8C0305Ca
	mov 0x00,r5 ; r5 set to 0x00
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C1041B8,pc),r0 ; r0 set to 0x12c
	mov 0x00,r2 ; r2 set to 0x00
	mov.b r2,@(r0,r14)
	mov 0x04,r0 ; r0 set to 0x04
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C104178:
	mov.l @(loc_8C1041D4,pc),r3 ; r3 set to 0x8C0450C0
	mov r5,r4
	mov.l r5,@-r15
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C104182:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r13
	mov.w @(0x1C,r13),r0
	mov.l @(loc_8C1041D8,pc),r14 ; r14 set to 0x8C13DA3c
	shll r0
	mov.l @(loc_8C1041DC,pc),r3 ; r3 set to 0x8C26A908
	shll2 r0
	add r0,r14 ; r14 ??? bc r0 is ???
	mov.w @(loc_8C1041B6,pc),r0 ; r0 set to 0xD8
	mov.l @(r0,r13),r2
	tst r2,r2
	bt/s loc_8C1041E0
	mov.l @r3,r12
	mov.w @(loc_8C1041BA,pc),r0 ; r0 set to 0x84
	mov.l @(r0,r13),r5
	mov.w @(loc_8C1041BC,pc),r0 ; r0 set to 0x198
	bra loc_8C1041E8
	mov.l @r12,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1041B2:
	#data 0x022a
loc_8C1041B4:
	#data 0x00D4
loc_8C1041B6:
	#data 0x00D8
loc_8C1041B8:
	#data 0x012c
loc_8C1041BA:
	#data 0x0084
loc_8C1041BC:
	#data 0x0198
	#align4

loc_8C1041C0:
	#data bank16.loc_8c1655Fc
loc_8C1041C4:
	#data loc_8c104182
loc_8C1041C8:
	#data bank03.loc_8c0305Ca
loc_8C1041CC:
	#data bank13.loc_8c13daBc
loc_8C1041D0:
	#data bank13.loc_8c13daFc
loc_8C1041D4:
	#data bank04.loc_8c0450C0
loc_8C1041D8:
	#data bank13.loc_8c13da3c
loc_8C1041DC:
	#data 0x8C26A908

;==============================================
loc_8C1041E0:
	mov.w @(loc_8C1042EE,pc),r0 ; r0 set to 0x84
	mov.l @r12,r2
	mov.l @(r0,r13),r5
	mov.w @(loc_8C1042F0,pc),r0 ; r0 set to 0x19c

loc_8C1041E8:
	mov.l @(loc_8C1042FC,pc),r1 ; r1 set to 0x8C108060, r1 set to 0x8C108060
	jsr @r1
	mov.l @(r0,r2),r4
	mov.l @(loc_8C104308,pc),r12 ; r12 set to 0x8C108086, r12 set to 0x8C108086
	mov r14,r13
	mov.l @(loc_8C104304,pc),r11 ; r11 set to 0x8C108192, r11 set to 0x8C108192
	mov.l @(loc_8C104300,pc),r10 ; r10 set to 0x8C1081E6, r10 set to 0x8C1081E6
	bra loc_8C10421e
	add 0x04,r13

loc_8C1041FA:
	mov r15,r5
	add 0x04,r5
	jsr @r11
	mov r15,r4
	fmov.s @r15,fr2
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @r14,fr3
	mov r15,r5
	add 0x04,r5
	fadd fr3,fr2
	fmov.s fr2,@r15
	fmov.s @(r0,r15),fr1
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @r13,fr3
	fsub fr3,fr1
	fmov.s fr1,@(r0,r15)
	jsr @r10
	mov r15,r4

loc_8C10421E:
	jsr @r12
	nop
	tst r0,r0
	bt loc_8C1041Fa
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C104236:
	mov.l r14,@-r15
	mova @(loc_8C10430C,pc),r0  ; r0 init to 0x8C10430c
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov 0x00,r10 ; r10 set to 0x00
	mov.l r9,@-r15
	mov r10,r12 ; r12 set to 0x00
	mov.l r8,@-r15
	mov 0x04,r8 ; r8 set to 0x04
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	fmov.s fr13,@-r15
	sts.l pr,@-r15
	fmov.s @r0,fr13
	mova @(loc_8C104310,pc),r0  ; r0 set to 0x8C104310
	fmov.s @r0,fr14
	mov.l @(loc_8C104314,pc),r11 ; r11 set to 0x8C11E730
	mov.w @(loc_8C1042F2,pc),r9 ; r9 set to 0x194
	fldi1 fr15

loc_8C104262:
	mov.l @(loc_8C104318,pc),r3 ; r3 set to 0x8C044F12, r3 set to 0x8C044F12
	mov 0x07,r5 ; r5 set to 0x07, r5 set to 0x07
	mov 0x01,r6 ; r6 set to 0x01, r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00, r4 set to 0x00
	tst r0,r0
	bf/s loc_8C104276
	mov r0,r14 ; r14 set to 0x8C104310
	bra loc_8C104406
	nop

loc_8C104276:
	mov.w @(loc_8C1042F4,pc),r0 ; r0 set to 0x12c
	mov 0x25,r2 ; r2 set to 0x25
	mov.l @(loc_8C10431C,pc),r3 ; r3 set to 0x8C10406c
	mov.b r10,@(r0,r14)
	add 0xA0,r0 ; r0 set to 0xCc
	mov.l r3,@(0x10,r14)
	mov.l r2,@(r0,r14)
	mov 0x23,r0 ; r0 set to 0x23
	mov.b r12,@(r0,r14)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s fr15,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr15,@(r0,r14)
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	mov.w @(loc_8C1042F6,pc),r0 ; r0 set to 0xD4
	extu.b r3,r3
	shll2 r3
	shll r3
	mov.l r3,@(r0,r14)
	add 0x5C,r0 ; r0 set to 0x130
	mov.l r13,@(0x18,r14)
	mov.w @(r0,r13),r2 ; r2 ??? bc r13 is ???
	tst r2,r2
	bt/s loc_8C1042Ae
	mov 0x44,r0 ; r0 set to 0x44
	bra loc_8C1042B0
	mov 0x00,r3

loc_8C1042AE:
	mov.l @(loc_8C104320,pc),r3 ; r3 set to 0x8000

loc_8C1042B0:
	mov.l @(loc_8C104324,pc),r2 ; r2 set to 0x8C03319E, r2 set to 0x8C03319e
	jsr @r2
	mov.l r3,@(r0,r14)
	mov.w @(loc_8C1042F8,pc),r1 ; r1 set to 0xD8, r1 set to 0xD8
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???
	mov.l r0,@r1
	mov.w @(loc_8C1042F8,pc),r0 ; r0 set to 0xD8, r0 set to 0xD8
	mov.l @(r0,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???
	cmp/pz r0
	bf loc_8C1042C8
	bra loc_8C1042D2
	and 0x01,r0

loc_8C1042C8:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C1042D2:
	mov.w @(loc_8C1042F8,pc),r2 ; r2 set to 0xD8, r2 set to 0xD8
	mov.l @(loc_8C104328,pc),r1 ; r1 set to 0x8C26A908, r1 set to 0x8C26A908
	add r14,r2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???
	mov.l r0,@r2
	mov.w @(loc_8C1042F8,pc),r0 ; r0 set to 0xD8, r0 set to 0xD8
	mov.l @(r0,r14),r3
	tst r3,r3
	bt/s loc_8C10432c
	mov.l @r1,r4
	mov.l @r4,r0 ; r0 ??? bc r4 is ???, r0 ??? bc r4 is ???
	mov.l @(r0,r9),r3
	mov.w @(loc_8C1042EE,pc),r0 ; r0 set to 0x84, r0 set to 0x84
	bra loc_8C104336
	mov.l r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1042EE:
	#data 0x0084
loc_8C1042F0:
	#data 0x019c
loc_8C1042F2:
	#data 0x0194
loc_8C1042F4:
	#data 0x012c
loc_8C1042F6:
	#data 0x00D4
loc_8C1042F8:
	#data 0x00D8
	#align4

loc_8C1042FC:
	#data loc_8c108060
loc_8C104300:
	#data loc_8c1081E6
loc_8C104304:
	#data loc_8c108192
loc_8C104308:
	#data loc_8c108086
loc_8C10430C:
	#data 0x40092492
loc_8C104310:
	#data 0x3FD55555
loc_8C104314:
	#data bank11.loc_8c11e730
loc_8C104318:
	#data bank04.loc_8c044F12
loc_8C10431C:
	#data loc_8c10406c
loc_8C104320:
	#data 0x00008000
loc_8C104324:
	#data bank03.loc_8c03319e
loc_8C104328:
	#data 0x8C26A908

;==============================================
loc_8C10432C:
	mov.w @(loc_8C104422,pc),r0 ; r0 set to 0x18c
	mov.l @r4,r3
	mov.l @(r0,r3),r2
	mov.w @(loc_8C104424,pc),r0 ; r0 set to 0x84
	mov.l r2,@(r0,r14)

loc_8C104336:
	jsr @r11
	nop
	mov r0,r4 ; r4 set to 0x84
	mov.w @(loc_8C104426,pc),r0 ; r0 set to 0x13E, r0 set to 0x13e
	mov.b @(r0,r13),r3
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	fmov.s @(r0,r13),fr2
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	extu.b r3,r3
	lds r3,fpul
	add r14,r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???
	mov.l r0,@-r15
	float fpul,fr3
	fmul fr2,fr3
	fmul fr14,fr3
	ftrc fr3,fpul
	mov r4,r0 ; r0 set to 0x84
	nop
	cmp/pz r0
	bf/s loc_8C104364
	sts fpul,r5
	bra loc_8C10436e
	and 0x01,r0

loc_8C104364:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C10436E:
	tst r0,r0
	bt loc_8C10437e
	mov.l @(loc_8C10442C,pc),r3 ; r3 set to 0x8C1292D4, r3 set to 0x8C1292D4
	mov r4,r1
	jsr @r3
	mov r5,r0
	bra loc_8C104388
	mov r0,r3

loc_8C10437E:
	mov.l @(loc_8C10442C,pc),r2 ; r2 set to 0x8C1292D4
	mov r4,r1
	jsr @r2
	mov r5,r0
	neg r0,r3

loc_8C104388:
	lds r3,fpul
	mov.l @r15+,r3
	float fpul,fr3
	fmov.s @r3,fr2 ; r2 ??? bc r3 is ???
	fadd fr3,fr2
	jsr @r11
	fmov.s fr2,@r3
	mov r0,r5
	mov.w @(loc_8C104428,pc),r0 ; r0 set to 0x13C, r0 set to 0x13c
	mov 0x60,r2 ; r2 set to 0x60, r2 set to 0x60
	mov r5,r1
	mov.b @(r0,r13),r3
	mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
	fmov.s @(r0,r13),fr2 ; r2 ??? bc r13 is ???, r2 ??? bc r13 is ???
	add r14,r2
	extu.b r3,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr2,fr3
	fmul fr13,fr3
	ftrc fr3,fpul
	sts fpul,r4
	mov r4,r0 ; r0 ??? bc r4 is ???, r0 ??? bc r4 is ???
	nop
	mov.l @(loc_8C10442C,pc),r3 ; r3 set to 0x8C1292D4, r3 set to 0x8C1292D4
	jsr @r3
	nop
	lds r0,fpul
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fmov.s @r2,fr2
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@r2
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r13),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s @(r0,r14),fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r13),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C10442A,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r14),r2
	tst r2,r2
	bt/s loc_8C1043Ee
	mov 0x44,r0 ; r0 set to 0x44, r0 set to 0x44
	bra loc_8C1043F0
	mov 0x00,r3

loc_8C1043EE:
	mov.l @(loc_8C104430,pc),r3 ; r3 set to 0x8000

loc_8C1043F0:
	mov.l r3,@(r0,r14)
	mov r8,r0
	nop
	add 0x01,r12
	mov 0x05,r2 ; r2 set to 0x05, r2 set to 0x05
	extu.b r12,r3 ; r3 ??? bc r12 is ???
	cmp/ge r2,r3
	bt/s loc_8C104406
	mov.b r0,@(0x07,r14)
	bra loc_8C104262
	nop

loc_8C104406:
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
loc_8C10441E:
	bra loc_8C104236
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C104422:
	#data 0x018c
loc_8C104424:
	#data 0x0084
loc_8C104426:
	#data 0x013e
loc_8C104428:
	#data 0x013c
loc_8C10442A:
	#data 0x0130
	#align4

loc_8C10442C:
	#data bank12.loc_8c1292D4
loc_8C104430:
	#data 0x00008000

;==============================================
;60+ refrences to this
loc_8C104434:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x120,PC),r3
	mov 0x06,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c10447a
	mov r0,r4
	mov.l @(0x118,PC),r1
	mov 0x00,r5
	mov.l @(0x110,PC),r3
	mov.w @(0xFA,PC),r0
	fldi1 fr3
	mov.b r5,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r1,r2
	mov.w @(0xF2,PC),r0
	mov.l @r2,r3
	mov.w @(0xF0,PC),r2
	mov.l @(0x2C,r3),r3
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @r15,r3
	mov.l r3,@(0x18,r4)
	mov.l @r15,r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov 0x54,r0
	fmov fr3,@(r0,r4)
	add 0x74,r0
	mov.l r5,@(r0,r4)

loc_8C10447A:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C104482:
	mov.l @(0x18,r4),r5
	mov 0x02,r3 ; r3 set to 0x02
	mov.b @(0x04,r5),r0
	extu.b r0,r0
	cmp/ge r3,r0
	bf/s loc_8C104498
	mov 0x00,r6 ; r6 set to 0x00
	mov.l @(loc_8C104568,pc),r3 ; r3 set to 0x8C0450C0
	mov.w @(loc_8C10454E,pc),r0 ; r0 set to 0x12c
	jmp @r3
	mov.b r6,@(r0,r4)

loc_8c104498:
	mov.b @r5,r2
	tst r2,r2
	bt loc_8c1044aa
	mov.w @(loc_8C104554,pc),r0
	mov.w @(loc_8C104556,pc),r2
	mov.b @(r0,r5),r3
	extu.b r3,r3
	cmp/eq r2,r3
	bf loc_8c1044b0

loc_8c1044aa:
	mov.w @(loc_8c10454e,pc),r0
	bra loc_8c104532
	mov.b r6,@(r0,r4)

loc_8c1044b0:
	mov.w @(loc_8c10454e,pc),r0
	mov 0x01,r2
	mov.b r2,@(r0,r4)
	mov.b @(0x01,r5),r0
	extu.b r0,r6
	mov.l @(loc_8c10456c,pc),r0
	shll2 r6
	mov.l @(r0,r6),r6
	mov.w @(loc_8C104554,pc),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	and 0x1F,r0
	shll r0
	mov.w @(r0,r6),r3
	mova @(loc_8C104570,pc),r0
	fmov.s @r0,fr2
	lds r3,fpul
	mov.w @(loc_8C104558,pc),r0
	float fpul,fr3
	mov.w @(r0,r5),r3
	tst r3,r3
	fmov fr3,fr4
	bt/s loc_8c1044e2
	fmul fr2,fr4
	fneg fr4

loc_8c1044e2:
	mov 0x34,r0
	fmov.s @(r0,r5),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x3C,r0
	fmov.s @(r0,r5),fr2
	mov 0x38,r0
	fldi1 fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x3C,r0
	fldi0 fr2
	fmov.s fr2,@(r0,r4)
	mov.b @(0x01,r5),r0
	extu.b r0,r6
	mov.l @(loc_8c104574,pc),r0
	shll2 r6
	mov.l @(r0,r6),r6
	mov.w @(loc_8C104554,pc),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	shlr2 r0
	shlr2 r0
	and 0x0E,r0
	shll2 r0
	add r0,r6
	mova @(loc_8C104578,pc),r0
	fmov.s @r6+,fr2
	fmov.s @r0,fr4
	mov 0x50,r0
	fmul fr4,fr2
	fmov.s fr2,@(r0,r4)
	fmov.s @r6,fr2
	mov 0x58,r0
	fmul fr4,fr2
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C10457C,pc),r0
	fmov.s @r0,fr2
	mov 0x74,r0
	fmov.s fr2,@(r0,r4)

loc_8c104532:
	rts
	nop

;==============================================
;unused
loc_8c104536:
	rts
	nop

;==============================================
;unused
loc_8c10453a:
	rts
	nop

;==============================================
;unused
loc_8c10453e:
	rts
	nop

;==============================================
;unused
loc_8c104542:
	rts
	nop

;==============================================
;unused
loc_8c104546:
	rts
	nop

;==============================================
;unused
loc_8c10454a:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10454e:
	#data 0x012C
loc_8C104550:
	#data 0x0084
loc_8C104552:
	#data 0x0931
loc_8C104554:
	#data 0x0149
loc_8C104556:
	#data 0x00FF
loc_8C104558:
	#data 0x0130
	#align4

loc_8c10455c:
	#data bank04.loc_8c044f12
loc_8c104560:
	#data bank10.loc_8C104482
loc_8c104564:
	#data 0x8C26A908
loc_8c104568:
	#data bank04.loc_8c0450c0
loc_8c10456c:
	#data bank16.loc_8c1697f0
loc_8C104570:
	#data 0x3FD55555
loc_8c104574:
	#data bank16.loc_8c1695c4
loc_8C104578:
	#data 0x3F99999A
loc_8C10457C:
	#data 0x3F000000

;==============================================
loc_8C104580:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov r14,r5
	mov.l @(loc_8C1046D0,pc),r1 ; r1 set to 0x8C165610
	extu.b r0,r0
	mov.l @(0x18,r14),r4
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C104596:
	mov.w @(0x12C,PC),r0
	mov.l r14,@-r15
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt.s loc_8c1045aa
	mov r5,r14
	mov.w @(0x120,PC),r0
	mov 0x00,r2
	mov.l r2,@(r0,r14)

loc_8C1045AA:
	mov.w @(0x11A,PC),r0
	mov.l @(r0,r14),r3
	add 0xFF,r3
	mov.l r3,@(r0,r14)
	add 0x01,r3
	tst r3,r3
	bf loc_8c1045c6
	mov.l @(0x118,PC),r5
	mov 0x01,r0
	mov.l @(0x118,PC),r3
	mov r14,r4
	mov.b r0,@(0x4,r14)
	jmp @r3
	mov.l @r15+,r14

loc_8C1045C6:
	rts
	mov.l @r15+,r14


;==============================================
loc_8C1045CA:
	mov.w @(0xFC,PC),r0
	mov.l @(0x110,PC),r6
	mov.l @(r0,r5),r3
	mov.l @(0x108,PC),r7
	shll2 r3
	shll r3
	shll r3
	add r3,r6
	mov.l @(r0,r5),r3
	add 0x54,r0
	shll2 r3
	shll r3
	shll2 r3
	add r3,r7
	mov 0x01,r3
	mov.b r3,@(r0,r5)
	mov.w @(0x1C,r5),r0
	shll r0
	add r0,r6
	mov.w @r6,r0
	mov.w r0,@(0x1E,r5)
	mov.w @(0x1C,r5),r0
	shll2 r0
	add r0,r7
	fmov @r7,fr3
	mov 0x74,r0
	fmov fr3,@(r0,r5)
	mov 0x02,r0
	mov.b r0,@(0x4,r5)
	mov.b @(0x7,r5),r0
	tst r0,r0
	bt loc_8c104622
	mov 0x5C,r0
	fmov @(r0,r5),fr3
	mov 0x34,r0
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r5)
	mov 0x60,r0
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r5)

loc_8C104622:
	mov.b @(0x7,r5),r0
	tst r0,r0
	bt loc_8c104644
	mov 0x00,r0
	mov.b r0,@(0x7,r5)
	mov 0x5C,r0
	fmov @(r0,r5),fr3
	mov 0x34,r0
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r5)
	mov 0x60,r0
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r5)

loc_8C104644:
	mov.w @(0x1E,r5),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r5)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c10466a
	mov 0x01,r0
	mov.b r0,@(0x4,r5)
	mov 0x08,r3
	mov.w @(0x1C,r5),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r5)
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8c10466a
	mov 0x03,r0
	mov.b r0,@(0x4,r5)
	mov 0x07,r0
	mov.w r0,@(0x1C,r5)

loc_8C10466A:
	rts
	nop

;==============================================
loc_8C10466E:
	mov.l r14,@-r15
	mov r5,r14
	sts.l pr,@-r15
	mov.l @(loc_8C1046D8,pc),r3 ; r3 set to 0x8C0305Ca
	mov 0x00,r5 ; r5 set to 0x00
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C1046CC,pc),r0 ; r0 set to 0x12c
	mov 0x00,r2 ; r2 set to 0x00
	mov.b r2,@(r0,r14)
	mov 0x04,r0 ; r0 set to 0x04
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C10468C:
	mov.l @(loc_8C1046E4,pc),r3 ; r3 set to 0x8C0450C0
	mov r5,r4
	mov.l r5,@-r15
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C104696:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r13
	mov.w @(0x1C,r13),r0
	mov.l @(loc_8C1046E8,pc),r14 ; r14 set to 0x8C13DB1c
	shll r0
	mov.l @(loc_8C1046EC,pc),r3 ; r3 set to 0x8C26A908
	shll2 r0
	add r0,r14 ; r14 ??? bc r0 is ???
	mov.w @(loc_8C1046CA,pc),r0 ; r0 set to 0xD8
	mov.l @(r0,r13),r2
	tst r2,r2
	bt/s loc_8C1046F0
	mov.l @r3,r12
	mov.w @(loc_8C1046CE,pc),r0 ; r0 set to 0x84
	mov.l @r12,r2
	mov.l @(r0,r13),r5
	bra loc_8C1046F8
	mov 0x78,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1046C6:
	#data 0x022a
loc_8C1046C8:
	#data 0x00D4
loc_8C1046CA:
	#data 0x00D8
loc_8C1046CC:
	#data 0x012c
loc_8C1046CE:
	#data 0x0084
	#align4

loc_8C1046D0:
	#data bank16.loc_8c165610
loc_8C1046D4:
	#data loc_8c104696
loc_8C1046D8:
	#data bank03.loc_8c0305Ca
loc_8C1046DC:
	#data bank13.loc_8c13db9c
loc_8C1046E0:
	#data bank13.loc_8c13dbDc
loc_8C1046E4:
	#data bank04.loc_8c0450C0
loc_8C1046E8:
	#data bank13.loc_8c13db1c
loc_8C1046EC:
	#data 0x8C26A908

;==============================================
loc_8C1046F0:
	mov.w @(loc_8C104800,pc),r0 ; r0 set to 0x84
	mov.l @r12,r2
	mov.l @(r0,r13),r5
	mov 0x68,r0 ; r0 set to 0x68

loc_8C1046F8:
	mov.l @(loc_8C104808,pc),r1 ; r1 set to 0x8C108060, r1 set to 0x8C108060
	jsr @r1
	mov.l @(r0,r2),r4
	mov.l @(loc_8C104814,pc),r12 ; r12 set to 0x8C108086, r12 set to 0x8C108086
	mov r14,r13
	mov.l @(loc_8C104810,pc),r11 ; r11 set to 0x8C108192, r11 set to 0x8C108192
	mov.l @(loc_8C10480C,pc),r10 ; r10 set to 0x8C1081E6, r10 set to 0x8C1081E6
	bra loc_8C10472e
	add 0x04,r13

loc_8C10470A:
	mov r15,r5
	add 0x04,r5
	jsr @r11
	mov r15,r4
	fmov.s @r15,fr2
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @r14,fr3
	mov r15,r5
	add 0x04,r5
	fadd fr3,fr2
	fmov.s fr2,@r15
	fmov.s @(r0,r15),fr1
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @r13,fr3
	fsub fr3,fr1
	fmov.s fr1,@(r0,r15)
	jsr @r10
	mov r15,r4

loc_8C10472E:
	jsr @r12
	nop
	tst r0,r0
	bt loc_8C10470a
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C104746:
	mov.l r14,@-r15
	mova @(loc_8C104818,pc),r0  ; r0 init to 0x8C104818
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov 0x00,r10 ; r10 set to 0x00
	mov.l r9,@-r15
	mov 0x02,r9 ; r9 set to 0x02
	mov.l r8,@-r15
	mov 0x04,r8 ; r8 set to 0x04
	fmov.s fr15,@-r15
	mov r10,r12 ; r12 set to 0x00
	fmov.s fr14,@-r15
	fmov.s fr13,@-r15
	sts.l pr,@-r15
	fmov.s @r0,fr13
	mova @(loc_8C10481C,pc),r0  ; r0 set to 0x8C10481c
	mov.l @(loc_8C104820,pc),r11 ; r11 set to 0x8C11E730
	fmov.s @r0,fr14
	fldi1 fr15

loc_8C104772:
	mov.l @(loc_8C104824,pc),r3 ; r3 set to 0x8C044F12, r3 set to 0x8C044F12
	mov 0x07,r5 ; r5 set to 0x07, r5 set to 0x07
	mov 0x01,r6 ; r6 set to 0x01, r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00, r4 set to 0x00
	tst r0,r0
	bf/s loc_8C104786
	mov r0,r14 ; r14 set to 0x8C10481c
	bra loc_8C104904
	nop

loc_8C104786:
	mov.w @(loc_8C104802,pc),r0 ; r0 set to 0x12c
	mov 0x25,r2 ; r2 set to 0x25
	mov.l @(loc_8C104828,pc),r3 ; r3 set to 0x8C104580
	mov.b r10,@(r0,r14)
	add 0xA0,r0 ; r0 set to 0xCc
	mov.l r3,@(0x10,r14)
	mov.l r2,@(r0,r14)
	mov 0x23,r0 ; r0 set to 0x23
	mov.b r12,@(r0,r14)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s fr15,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr15,@(r0,r14)
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	mov.w @(loc_8C104804,pc),r0 ; r0 set to 0xD4
	extu.b r3,r3
	shll2 r3
	shll r3
	mov.l r3,@(r0,r14)
	add 0x5C,r0 ; r0 set to 0x130
	mov.l r13,@(0x18,r14)
	mov.w @(r0,r13),r2 ; r2 ??? bc r13 is ???
	tst r2,r2
	bt/s loc_8C1047C0
	mov 0x44,r0 ; r0 set to 0x44
	mov.l @(loc_8C10482C,pc),r3 ; r3 set to 0x8000
	bra loc_8C1047C2
	nop

loc_8C1047C0:
	mov 0x00,r3 ; r3 set to 0x00

loc_8C1047C2:
	mov.l @(loc_8C104830,pc),r2 ; r2 set to 0x8C03319E, r2 set to 0x8C03319e
	jsr @r2
	mov.l r3,@(r0,r14)
	mov.w @(loc_8C104806,pc),r1 ; r1 set to 0xD8, r1 set to 0xD8
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???
	mov.l r0,@r1
	mov.w @(loc_8C104806,pc),r0 ; r0 set to 0xD8, r0 set to 0xD8
	mov.l @(r0,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???
	cmp/pz r0
	bf loc_8C1047Da
	bra loc_8C1047E4
	and 0x01,r0

loc_8C1047DA:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C1047E4:
	mov.w @(loc_8C104806,pc),r2 ; r2 set to 0xD8, r2 set to 0xD8
	mov.l @(loc_8C104834,pc),r1 ; r1 set to 0x8C26A908, r1 set to 0x8C26A908
	add r14,r2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???
	mov.l r0,@r2
	mov.w @(loc_8C104806,pc),r0 ; r0 set to 0xD8, r0 set to 0xD8
	mov.l @(r0,r14),r3
	tst r3,r3
	bt/s loc_8C104838
	mov.l @r1,r4
	mov.l @r4,r3
	mov 0x74,r0 ; r0 set to 0x74, r0 set to 0x74
	mov.l @(r0,r3),r2
	bra loc_8C104840
	add 0x10,r0


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C104800:
	#data 0x0084
loc_8C104802:
	#data 0x012c
loc_8C104804:
	#data 0x00D4
loc_8C104806:
	#data 0x00D8
	#align4

loc_8C104808:
	#data loc_8c108060
loc_8C10480C:
	#data loc_8c1081E6
loc_8C104810:
	#data loc_8c108192
loc_8C104814:
	#data loc_8c108086
loc_8C104818:
	#data 0x3FD55555
loc_8C10481C:
	#data 0x40092492
loc_8C104820:
	#data bank11.loc_8c11e730
loc_8C104824:
	#data bank04.loc_8c044F12
loc_8C104828:
	#data loc_8c104580
loc_8C10482C:
	#data 0x00008000
loc_8C104830:
	#data bank03.loc_8c03319e
loc_8C104834:
	#data 0x8C26A908

;==============================================
loc_8C104838:
	mov.l @r4,r3
	mov 0x64,r0 ; r0 set to 0x64
	mov.l @(r0,r3),r2
	add 0x20,r0 ; r0 set to 0x84

loc_8C104840:
	jsr @r11
	mov.l r2,@(r0,r14)
	mov r0,r4 ; r4 set to 0x84
	mov.w @(loc_8C104998,pc),r0 ; r0 set to 0x13E, r0 set to 0x13e
	mov.b @(r0,r13),r3
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	fmov.s @(r0,r13),fr2
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	extu.b r3,r3
	lds r3,fpul
	add r14,r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???
	mov.l r0,@-r15
	float fpul,fr3
	fmul fr2,fr3
	fmul fr13,fr3
	ftrc fr3,fpul
	mov r4,r0 ; r0 set to 0x84
	nop
	cmp/pz r0
	bf/s loc_8C10486e
	sts fpul,r5
	bra loc_8C104878
	and 0x01,r0

loc_8C10486E:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C104878:
	tst r0,r0
	bt loc_8C104888
	mov.l @(loc_8C1049A0,pc),r3 ; r3 set to 0x8C1292D4, r3 set to 0x8C1292D4
	mov r4,r1
	jsr @r3
	mov r5,r0
	bra loc_8C104892
	mov r0,r3

loc_8C104888:
	mov.l @(loc_8C1049A0,pc),r2 ; r2 set to 0x8C1292D4
	mov r4,r1
	jsr @r2
	mov r5,r0
	neg r0,r3

loc_8C104892:
	lds r3,fpul
	mov.l @r15+,r3
	float fpul,fr3
	fmov.s @r3,fr2 ; r2 ??? bc r3 is ???
	fadd fr3,fr2
	jsr @r11
	fmov.s fr2,@r3
	mov r0,r5
	mov.w @(loc_8C10499A,pc),r0 ; r0 set to 0x13C, r0 set to 0x13c
	mov 0x60,r2 ; r2 set to 0x60, r2 set to 0x60
	mov r5,r1
	mov.b @(r0,r13),r3
	mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
	fmov.s @(r0,r13),fr2 ; r2 ??? bc r13 is ???, r2 ??? bc r13 is ???
	add r14,r2
	extu.b r3,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr2,fr3
	fmul fr14,fr3
	ftrc fr3,fpul
	sts fpul,r4
	mov r4,r0 ; r0 ??? bc r4 is ???, r0 ??? bc r4 is ???
	nop
	mov.l @(loc_8C1049A0,pc),r3 ; r3 set to 0x8C1292D4, r3 set to 0x8C1292D4
	jsr @r3
	nop
	lds r0,fpul
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fmov.s @r2,fr2
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@r2
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r13),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s @(r0,r14),fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r13),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov r8,r0 ; r0 ??? bc r8 is ???, r0 ??? bc r8 is ???
	nop
	mov.b r0,@(0x07,r14)
	mov r9,r0
	nop
	add 0x01,r12
	mov 0x05,r2 ; r2 set to 0x05, r2 set to 0x05
	extu.b r12,r3
	cmp/ge r2,r3
	bt/s loc_8C104904
	mov.w r0,@(0x1C,r14)
	bra loc_8C104772
	nop

loc_8C104904:
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
loc_8C10491C:
	bra loc_8C104746
	nop

;==============================================
loc_8C104920:
	mov r4,r3
	mov.l @(loc_8C1049A4,pc),r1 ; r1 set to 0x8C165624
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C104932:
	mov.w @(0x66,PC),r0
	mov.l @(0x74,PC),r5
	mov.l @(r0,r4),r3
	mov.l @(0x6C,PC),r6
	shll2 r3
	shll r3
	shll r3
	add r3,r5
	mov.l @(r0,r4),r3
	add 0x54,r0
	shll2 r3
	shll r3
	shll2 r3
	add r3,r6
	mov 0x01,r3
	mov.b r3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	shll r0
	add r0,r5
	mov.w @r5,r0
	mov.w r0,@(0x1E,r4)
	mov.w @(0x1C,r4),r0
	shll2 r0
	add r0,r6
	fmov @r6,fr3
	mov 0x74,r0
	fmov fr3,@(r0,r4)
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)

loc_8C10496E:
	mov.w @(0x1E,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c104994
	mov 0x00,r0
	mov.b r0,@(0x4,r4)
	mov 0x08,r3
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8c104994
	mov 0x02,r0
	mov.b r0,@(0x4,r4)
	mov 0x07,r0
	mov.w r0,@(0x1C,r4)

loc_8C104994:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C104998:
	#data 0x013e
loc_8C10499A:
	#data 0x013c
loc_8C10499C:
	#data 0x00D8
	#align4

loc_8C1049A0:
	#data bank12.loc_8c1292D4
loc_8C1049A4:
	#data bank16.loc_8c165624
loc_8C1049A8:
	#data bank13.loc_8c13db9c
loc_8C1049AC:
	#data bank13.loc_8c13dbDc

;==============================================
loc_8C1049B0:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(loc_8C104ABC,pc),r3 ; r3 set to 0x8C0305Ca
	jsr @r3
	mov 0x00,r5 ; r5 set to 0x00
	mov.w @(loc_8C104AB6,pc),r0 ; r0 set to 0x12c
	mov 0x00,r2 ; r2 set to 0x00
	mov.b r2,@(r0,r14)
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0x12d
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C1049CE:
	mov.l @(loc_8C104AC0,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;==============================================
loc_8C1049D4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r13
	mov.w @(0x1C,r13),r0
	mov.l @(loc_8C104AC4,pc),r14 ; r14 set to 0x8C13DB1c
	shll r0
	mov.l @(loc_8C104AC8,pc),r3 ; r3 set to 0x8C26A908
	shll2 r0
	add r0,r14 ; r14 ??? bc r0 is ???
	mov.w @(loc_8C104AB8,pc),r0 ; r0 set to 0xD8
	mov.l @(r0,r13),r2
	tst r2,r2
	bt/s loc_8C104A04
	mov.l @r3,r12
	mov.w @(loc_8C104ABA,pc),r0 ; r0 set to 0x84
	mov.l @r12,r2
	mov.l @(r0,r13),r5
	bra loc_8C104A0c
	mov 0x78,r0

loc_8C104A04:
	mov.w @(loc_8C104ABA,pc),r0 ; r0 set to 0x84
	mov.l @r12,r2
	mov.l @(r0,r13),r5
	mov 0x68,r0 ; r0 set to 0x68

loc_8C104A0C:
	mov.l @(loc_8C104ACC,pc),r1 ; r1 set to 0x8C108060, r1 set to 0x8C108060
	jsr @r1
	mov.l @(r0,r2),r4
	mov.l @(loc_8C104AD8,pc),r12 ; r12 set to 0x8C108086, r12 set to 0x8C108086
	mov r14,r13
	mov.l @(loc_8C104AD4,pc),r11 ; r11 set to 0x8C108192, r11 set to 0x8C108192
	mov.l @(loc_8C104AD0,pc),r10 ; r10 set to 0x8C1081E6, r10 set to 0x8C1081E6
	bra loc_8C104A42
	add 0x04,r13

loc_8C104A1E:
	mov r15,r5
	add 0x04,r5
	jsr @r11
	mov r15,r4
	fmov.s @r15,fr2
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @r14,fr3
	mov r15,r5
	add 0x04,r5
	fadd fr3,fr2
	fmov.s fr2,@r15
	fmov.s @(r0,r15),fr1
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @r13,fr3
	fsub fr3,fr1
	fmov.s fr1,@(r0,r15)
	jsr @r10
	mov r15,r4

loc_8C104A42:
	jsr @r12
	nop
	tst r0,r0
	bt loc_8C104A1e
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
;unused
loc_8c104a5a:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x78,PC),r3
	mov 0x01,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x05,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c104b3e
	mov r0,r14
	mov.w @(0x3E,PC),r0
	mov 0x00,r3
	mov.l @(0x64,PC),r2
	mov.b r3,@(r0,r14)
	mov 0x35,r3
	add 0xA0,r0
	mov.l r2,@(0x10,r14)
	mov.l r3,@(r0,r14)
	mova @(0x5C,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov fr4,@(r0,r14)
	mov 0x54,r0
	fmov fr4,@(r0,r14)
	mov.b @r15,r2
	tst r2,r2
	bt.s loc_8c104a9c
	mov 0x44,r0
	bra loc_8c104a9e
	mov 0x00,r3

loc_8c104a9c:
	mov.l @(0x48,PC),r3

loc_8C104a9e:
	mov.l @(0x4C,PC),r2
	jsr @r2
	mov.l r3,@(r0,r14)
	mov.w @(0x10,PC),r1
	add r14,r1
	mov.l r0,@r1
	mov.w @(0xA,PC),r0
	mov.l @(r0,r14),r0
	cmp/pz r0
	bf loc_8c104af0
	bra loc_8c104afa
	and 0x01,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C104AB6:
	#data 0x012c
loc_8C104AB8:
	#data 0x00D8
loc_8C104ABA:
	#data 0x0084
	#align4

loc_8C104ABC:
	#data bank03.loc_8c0305Ca
loc_8C104AC0:
	#data bank04.loc_8c0450C0
loc_8C104AC4:
	#data bank13.loc_8c13db1c
loc_8C104AC8:
	#data 0x8C26A908
loc_8C104ACC:
	#data loc_8c108060
loc_8C104AD0:
	#data loc_8c1081E6
loc_8C104AD4:
	#data loc_8c108192
loc_8C104AD8:
	#data loc_8c108086
loc_8C104ADC:
	#data bank04.loc_8c044F12
loc_8C104AE0:
	#data loc_8c104920
loc_8C104ae4:
	#data 0x41200000
loc_8C104ae8:
	#data 0x00008000
loc_8C104AEC:
	#data bank03.loc_8c03319e

;==============================================
loc_8c104af0:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8c104afa:
	mov.w @(0x48,PC),r2
	mov.l @(0x48,PC),r1
	add r14,r2
	mov.l r0,@r2
	mov.w @(0x40,PC),r0
	mov.l @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c104b16
	mov.l @r1,r4
	mov.l @r4,r3
	mov 0x74,r0
	mov.l @(r0,r3),r2
	bra loc_8c104b1e
	add 0x10,r0

loc_8c104b16:
	mov.l @r4,r3
	mov 0x64,r0
	mov.l @(r0,r3),r2
	add 0x20,r0

loc_8c104b1e:
	mov.l r2,@(r0,r14)
	mov r14,r1
	mov.l @(0x28,PC),r3
	add 0x34,r1
	mov.l @(0x4,r15),r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x20,PC),r5
	mov 0x02,r0
	mov r14,r4
	mov.w r0,@(0x1C,r14)
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(0x18,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c104b3e:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C104B46:
	#data 0x00D8
	#align4

loc_8C104b48:
	#data 0x8C26A908
loc_8C104B4C:
	#data bank12.loc_8c1294C8
loc_8C104B50:
	#data loc_8c1049D4
loc_8C104B54:
	#data bank03.loc_8c0305Ca

;==============================================
loc_8C104B58:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov.b @r4,r3
	tst r3,r3
	bf loc_8C104B70
	lds.l @r15+,pr
	mov.l @(loc_8C104C50,pc),r3 ; r3 set to 0x8C0450C0
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C104B70:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r4),fr3
	mov 0x50,r2 ; r2 set to 0x50
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C104C4C,pc),r0 ; r0 set to 0x13c
	mov.b @(r0,r4),r3
	extu.b r3,r3
	cmp/gt r2,r3
	bf loc_8C104BBc
	mov r14,r3
	mov 0x38,r0 ; r0 set to 0x38
	add r0,r3
	mov.w @(loc_8C104C4C,pc),r0 ; r0 set to 0x13c
	mov.l r3,@-r15
	mov.b @(r0,r4),r1
	add 0x01,r0 ; r0 set to 0x13d
	mov.b @(r0,r4),r3
	extu.b r1,r1
	extu.b r3,r3
	sub r3,r1
	mov.l @(loc_8C104C54,pc),r3 ; r3 set to 0x8C129128
	jsr @r3
	mov 0x05,r0 ; r0 set to 0x05
	lds r0,fpul
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r4),fr0 ; r0 ??? bc r4 is ???
	mova @(loc_8C104C58,pc),r0  ; r0 set to 0x8C104C58
	mov.l @r15+,r1
	float fpul,fr3
	fmov.s @r1,fr2 ; r2 ??? bc r1 is ???
	fmul fr0,fr3 ; r3 ??
	fmov.s @r0,fr0 ; r0 ??
	fmac fr0,fr3,fr2
	bra loc_8C104BE4
	fmov.s fr2,@r1

loc_8C104BBC:
	mov.w @(loc_8C104C4C,pc),r3 ; r3 set to 0x13c
	mov 0x54,r1 ; r1 set to 0x54
	add r4,r1 ; r1 ??? bc r4 is ???
	add r4,r3 ; r3 ??? bc r4 is ???
	fmov.s @r1,fr0
	mov.b @r3,r3
	mova @(loc_8C104C5C,pc),r0  ; r0 set to 0x8C104C5c
	fmov.s @r0,fr2
	mova @(loc_8C104C60,pc),r0  ; r0 set to 0x8C104C60
	extu.b r3,r3
	lds r3,fpul
	mov 0x38,r2 ; r2 set to 0x38
	add r14,r2 ; r2 ??? bc r14 is ???
	float fpul,fr3
	fmul fr0,fr3
	fmov.s @r0,fr0 ; r0 ??
	fmac fr0,fr3,fr2
	fmov.s @r2,fr3
	fadd fr2,fr3
	fmov.s fr3,@r2

loc_8C104BE4:
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov.l @(loc_8C104C64,pc),r1 ; r1 set to 0x8C165634, r1 set to 0x8C165634
	extu.b r0,r0
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C104BF6:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.w @(0x1E,r14),r0
	tst r0,r0
	bt loc_8C104C0c
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	bra loc_8C104C92
	mov.w r0,@(0x1E,r14)

loc_8C104C0C:
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C104C72
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(loc_8C104C68,pc),r13 ; r13 set to 0x8C04257c
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C104C38
	cmp/eq 0x01,r0
	bt loc_8C104C3c
	cmp/eq 0x02,r0
	bt loc_8C104C40
	cmp/eq 0x03,r0
	bt loc_8C104C44
	cmp/eq 0x04,r0
	bt loc_8C104C48
	cmp/eq 0x05,r0
	bt loc_8C104C6c
	bra loc_8C104C72
	nop

loc_8C104C38:
	bra loc_8C104C6c
	nop

loc_8C104C3C:
	bra loc_8C104C6e
	mov 0x1C,r4

loc_8C104C40:
	bra loc_8C104C6e
	mov 0x1B,r4

loc_8C104C44:
	bra loc_8C104C6e
	mov 0x1E,r4

loc_8C104C48:
	bra loc_8C104C6e
	mov 0x1A,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C104C4C:
	#data 0x013c
	#align4

loc_8C104C50:
	#data bank04.loc_8c0450C0
loc_8C104C54:
	#data bank12.loc_8c129128
loc_8C104C58:
	#data 0x40892492
loc_8C104C5C:
	#data 0x41F00000
loc_8C104C60:
	#data 0x40092492
loc_8C104C64:
	#data bank16.loc_8c165634
loc_8C104C68:
	#data bank04.loc_8c04257c

;==============================================
loc_8c104c6c:
	mov 0x1D,r4

loc_8c104c6e:
	jsr @r13
	nop

loc_8C104C72:
	mov.w @(loc_8C104D5A,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	fldi1 fr3
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov 0x0A,r0 ; r0 set to 0x0a
	mov.w r0,@(0x1E,r14)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s fr3,@(r0,r14)
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0x51
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8C104C9a
	mov.l @r15+,r14

loc_8C104C92:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C104C9A:
	mov.w @(0x1E,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r4)
	exts.w r0,r0
	tst r0,r0
	bt loc_8C104CB6
	mov.l @(loc_8C104D5C,pc),r1 ; r1 set to 0x3E19999a
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r4),fr2
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	bra loc_8C104CCe
	fmov.s fr2,@(r0,r4)

loc_8C104CB6:
	mov 0x50,r0 ; r0 set to 0x50
	fldi1 fr3
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C104D60,pc),r0  ; r0 set to 0x8C104D60
	fmov.s @r0,fr3
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr3,@(r0,r4)
	mov.b @(0x04,r4),r0
	add 0x01,r0 ; r0 set to 0x55
	mov.b r0,@(0x04,r4)
	mov 0x0A,r0 ; r0 set to 0x0a
	mov.w r0,@(0x1E,r4)

loc_8C104CCE:
	rts
	nop

;==============================================
loc_8C104CD2:
	mov.w @(0x1E,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r4)
	exts.w r0,r0
	tst r0,r0
	bt loc_8C104CEe
	mov.l @(loc_8C104D64,pc),r1 ; r1 set to 0x3D4CCCCd
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r4),fr2
	lds r1,fpul
	fsts fpul,fr3
	fsub fr3,fr2
	bra loc_8C104D02
	fmov.s fr2,@(r0,r4)

loc_8C104CEE:
	mov 0x50,r0 ; r0 set to 0x50
	fldi1 fr4
	fmov.s fr4,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr4,@(r0,r4)
	mov.b @(0x04,r4),r0
	add 0x01,r0 ; r0 set to 0x55
	mov.b r0,@(0x04,r4)
	mov 0x28,r0 ; r0 set to 0x28
	mov.w r0,@(0x1E,r4)

loc_8C104D02:
	rts
	nop

;==============================================
loc_8C104D06:
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8C104D14
	mov.l @(loc_8C104D68,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8c104d14:
	mov.w @(0x1E,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c104d2a
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov 0x04,r0
	mov.w r0,@(0x1E,r4)

loc_8c104d2a:
	rts
	nop

loc_8C104D2E:
	mov.w @(0x1E,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r4)
	exts.w r0,r0
	tst r0,r0
	bt loc_8C104D50
	mova @(loc_8C104D6C,pc),r0  ; r0 set to 0x8C104D6c
	fmov.s @r0,fr4
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r4),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r4),fr2
	fsub fr4,fr2
	bra loc_8C104D56
	fmov.s fr2,@(r0,r4)

loc_8C104D50:
	mov.l @(loc_8C104D68,pc),r2 ; r2 set to 0x8C0450C0
	jmp @r2
	nop

loc_8C104D56:
	rts
	nop

;==============================================
loc_8C104D5A:
	#data 0x012c
	#align4

loc_8C104D5C:
	#data 0x3E19999a
loc_8C104D60:
	#data 0x3FC00000
loc_8C104D64:
	#data 0x3D4CCCCd
loc_8C104D68:
	#data bank04.loc_8c0450C0
loc_8C104D6C:
	#data 0x3E800000

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c104d70:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	mov r4,r12
	mov.l r11,@-r15
	mov r5,r11
	mov.l r10,@-r15
	mov 0x03,r10
	mov.l r9,@-r15
	mov 0x11,r9
	mov.l r8,@-r15
	exts.b r11,r8
	mov.l @(loc_8c104e00,pc),r4
	shll r8
	sts.l pr,@-r15
	mov r13,r14
	add r4,r8

loc_8c104d94:
	mov.l @(loc_8c104e04,pc),r3
	mov 0x07,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c104de6
	mov r0,r4
	mov.l @(loc_8c104e08,pc),r3
	mov r4,r1
	mov.w @(loc_8C104DFC,pc),r0
	mov r12,r2
	add 0x34,r2
	mov.b r13,@(r0,r4)
	add 0xA0,r0
	mov.l r3,@(0x10,r4)
	add 0x34,r1
	mov.l @(loc_8c104e0c,pc),r3
	mov.l r9,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8C104E10,pc),r2
	mov.w @r8,r3
	mov.l @r2,r0
	shll2 r3
	mov.l @r0,r0
	mov.l @(r0,r3),r1
	mov.w @(loc_8C104DFE,pc),r0
	mov.l r1,@(r0,r4)
	mov 0x23,r0
	mov.l r12,@(0x18,r4)
	mov.b r14,@(r0,r4)
	mov r14,r0
	nop
	shll r0
	add 0x01,r14
	mov.w r0,@(0x1E,r4)
	cmp/ge r10,r14
	mov 0x20,r0
	bf/s loc_8c104d94
	mov.b r11,@(r0,r4)

loc_8c104de6:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8C104DF8:
	bra loc_8C104D70
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c104dfc:
	#data 0x012c
loc_8c104dfe:
	#data 0x0084
	#align4

loc_8C104E00:
	#data bank13.loc_8c13dbFc
loc_8C104E04:
	#data bank04.loc_8c044F12
loc_8C104E08:
	#data loc_8c104B58
loc_8C104E0C:
	#data bank12.loc_8c1294C8
loc_8c104e10:
	#data 0x8C26A908

;==============================================
loc_8C104E14:
	mov r4,r3
	mov.l @(loc_8C104F44,pc),r1 ; r1 set to 0x8C165648
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C104E26:
	mov.w @(0x1C,r4),r0
	mov 0x0A,r3
	mov.l @(0x11C,PC),r5
	shll2 r0
	mov.l @(0x11C,PC),r1
	add r0,r5
	fmov @r5,fr3
	mov 0x78,r0
	lds r1,fpul
	fmov fr3,@(r0,r4)
	mov 0x7C,r0
	fmov @r5,fr3
	mov.l @(0x110,PC),r1
	fmov fr3,@(r0,r4)
	add 0x04,r0
	fmov @r5,fr3
	fmov fr3,@(r0,r4)
	mov 0x50,r0
	fmov @(r0,r4),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	lds r1,fpul
	fmov fr2,@(r0,r4)
	mov 0x54,r0
	fmov @(r0,r4),fr1
	fsts fpul,fr2
	fsub fr2,fr1
	fmov fr1,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8c104e78
	mov 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0xC0,PC),r0
	mov.l @(0x14,r4),r2
	mov.l @(r0,r2),r1
	add 0xFF,r1
	mov.l r1,@(r0,r2)

loc_8C104E78:
	rts
	nop

;==============================================
loc_8C104E7C:
	mov.l r14,@-r15
	mov 0x07,r5
	mov.l r13,@-r15
	mov 0x01,r6
	mov.l r12,@-r15
	mov r4,r12
	sts.l pr,@-r15
	mov.l @(0xC8,PC),r3
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bf.s loc_8c104e9a
	mov r0,r14
	bra loc_8c104fd8
	nop

loc_8C104E9A:
	mov.w @(0x96,PC),r0
	mov 0x01,r3
	mov.l @(0xB8,PC),r2
	fldi0 fr4
	mov.l @(0x18,r12),r13
	mov.b r3,@(r0,r14)
	add 0xA0,r0
	mov.w @(0x8A,PC),r3
	mov.l r2,@(0x10,r14)
	mov.l r3,@(r0,r14)
	mov 0x78,r0
	mov.l @(0xA8,PC),r2
	fmov fr4,@(r0,r14)
	mov 0x7C,r0
	fmov fr4,@(r0,r14)
	add 0x04,r0
	fmov fr4,@(r0,r14)
	mov 0x58,r0
	mov.l @r2,r3
	mov.l @r3,r1
	mov.l @(r0,r1),r0
	mov.w @(0x70,PC),r1
	add r14,r1
	mov.l r0,@r1
	mov.w @(0x6C,PC),r0
	mov.b @(r0,r13),r3
	mov 0x50,r0
	fmov @(r0,r13),fr2
	extu.b r3,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr2,fr3
	mova @(0x84,PC),r0
	mov.l @(0x88,PC),r1
	fmov @r0,fr2
	mov.w @(0x4E,PC),r0
	fmul fr2,fr3
	ftrc fr3,fpul
	sts fpul,r3
	mov.l r3,@(r0,r14)
	add 0x6C,r0
	mov.b @(r0,r13),r3
	mov 0x54,r0
	fmov @(r0,r13),fr1
	mova @(0x70,PC),r0
	extu.b r3,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr1,fr3
	fmov @r0,fr1
	mov.w @(0x3A,PC),r0
	fmul fr1,fr3
	ftrc fr3,fpul
	sts fpul,r3
	jsr @r1
	mov.l r3,@(r0,r14)
	mov.w @(0x30,PC),r1
	mov.w @(0x30,PC),r4
	add r14,r1
	mov.l @(0x58,PC),r3
	add r14,r4
	mov.l r0,@r1
	mov.l @(0x4,r4),r0
	jsr @r3
	mov.l @(0xC,r4),r1
	mov.l r0,@(0xC,r4)
	mov.w @(0x20,PC),r0
	mov.w @(0x1C,PC),r4
	mov.w @(r0,r13),r3
	add r14,r4
	tst r3,r3
	bt.s loc_8c104f70
	add 0x0C,r4
	mov.l @r4,r2
	bra loc_8c104f72
	neg r2,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c104f32:
	#data 0x00D0
loc_8c104f34:
	#data 0x012c
loc_8c104f36:
	#data 0x0411
loc_8c104f38:
	#data 0x0084
loc_8c104f3a:
	#data 0x013E
loc_8c104f3c:
	#data 0x00D4
loc_8c104f3e:
	#data 0x00D8
loc_8c104f40:
	#data 0x00Cc
loc_8c104f42:
	#data 0x0130
	#align4

loc_8C104F44:
	#data bank16.loc_8c165648
loc_8C104F48:
#data bank13.loc_8c13dc08
loc_8C104F4c:
	#data 0x3CF5C28d
loc_8C104F50:
	#data 0x3DA3D70a
loc_8C104F54:
	#data bank04.loc_8c044F12
loc_8C104F58:
	#data loc_8c104E14
loc_8C104F5c:
	#data 0x8C26A908
loc_8C104F60:
	#data 0x3FD55555
loc_8C104F64:
	#data 0x40092492
loc_8C104F68:
	#data bank03.loc_8c03319e
loc_8C104F6C:
	#data bank12.loc_8c1292D4

;==============================================
loc_8C104F70:
	mov.l @r4,r2

loc_8C104F72:
	mov.w @(0x110,PC),r0
	mov.l @(0x11C,PC),r3
	mov.l r2,@r4
	mov.l @(r0,r14),r1
	mov 0x5C,r0
	lds r1,fpul
	float fpul,fr3
	jsr @r3
	fmov fr3,@(r0,r14)
	mov.w @(0xFE,PC),r1
	mov.w @(0xFE,PC),r4
	add r14,r1
	mov.l @(0x10C,PC),r3
	add r14,r4
	mov.l r0,@r1
	mov.l @(0x8,r4),r0
	jsr @r3
	mov.l @(0xC,r4),r1
	mov.l r0,@(0xC,r4)
	mov.w @(0xEA,PC),r0
	fldi1 fr4
	mov.l @(r0,r14),r2
	mov 0x60,r0
	lds r2,fpul
	float fpul,fr3
	fmov fr3,@(r0,r14)
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
	mov.w @(0xC8,PC),r0
	mov.l r13,@(0x18,r14)
	mov.l r12,@(0x14,r14)
	mov.w @(r0,r13),r3
	mov.w r3,@(r0,r14)
	mov 0x50,r0
	fmov fr4,@(r0,r14)
	mov 0x54,r0
	fmov fr4,@(r0,r14)
	add 0x7C,r0
	mov.l @(r0,r12),r3
	add 0x01,r3
	mov.l r3,@(r0,r12)

loc_8C104FD8:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C104FE2:
	mov r4,r3
	mov.l @(loc_8C10509C,pc),r1 ; r1 set to 0x8C165654
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C104FF4:
	mov.l @(0x18,r4),r5
	mov.b @(0x5,r5),r0
	tst r0,r0
	bf loc_8c105006
	mov.w @(0x8C,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x0A,r0
	bt loc_8c105014

loc_8C105006:
	mov.w @(0x84,PC),r0
	mov.l @(r0,r4),r2
	tst r2,r2
	bf loc_8c10503c
	mov 0x01,r0
	rts
	mov.b r0,@(0x4,r4)

loc_8C105014:
	mov.w @(0x1E,r4),r0
	tst r0,r0
	bt loc_8c10503c
	mov.w @(0x1E,r4),r0
	mov 0x04,r3
	add 0xFF,r0
	mov.w r0,@(0x1E,r4)
	mov.w @(0x68,PC),r0
	mov.l @(r0,r4),r2
	cmp/ge r3,r2
	bt loc_8c10503c
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c10503c
	mov 0x08,r0
	bra loc_8c104e7c
	mov.w r0,@(0x1C,r4)

loc_8C10503C:
	rts
	nop

;==============================================
loc_8c105040:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c1050a0,pc),r3
	mov 0x07,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c105066
	mov r0,r4
	mov 0x08,r0
	mov.l @(loc_8c1050a4,pc),r3
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.w r0,@(0x1C,r4)
	mov 0x78,r0
	mov.w r0,@(0x1E,r4)

loc_8c105066:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C10506E:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C105090,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8C10507C:
	mov.l @(loc_8C1050A8,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8C105082:
	bra loc_8C105040
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C105086:
	#data 0x00D8
loc_8C105088:
	#data 0x00Cc
loc_8C10508a:
	#data 0x0130
loc_8C10508c:
	#data 0x01D0
loc_8C10508e:
	#data 0x00D0
loc_8C105090:
	#data 0x012c
	#align4

loc_8C105094:
	#data bank03.loc_8c03319e
loc_8C105098:
	#data bank12.loc_8c1292D4
loc_8C10509C:
	#data bank16.loc_8c165654
loc_8C1050A0:
	#data bank04.loc_8c044F12
loc_8C1050A4:
	#data loc_8c104FE2
loc_8C1050A8:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C1050AC:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x14,r14),r2
	mov r4,r1
	mov.l @(0x12C,PC),r3
	add 0x34,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mova @(0x124,PC),r0
	mov.l @(0x14,r14),r5
	fmov @r0,fr3
	mov 0x50,r0
	fmov @(r0,r5),fr2
	mov.w @(0x10A,PC),r0
	fmul fr3,fr2
	mov.w @(r0,r5),r3
	tst r3,r3
	ftrc fr2,fpul
	bf.s loc_8c1050da
	sts fpul,r4
	neg r4,r4

loc_8C1050DA:
	exts.w r4,r4
	mov.l @(0x14,r14),r3
	lds r4,fpul
	mov 0x34,r0
	fmov @(r0,r3),fr2
	mov.l @(0x104,PC),r1
	float fpul,fr3
	lds r1,fpul
	mov 0x54,r1
	fsts fpul,fr0
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x14,r14),r3
	fmov @(r0,r14),fr2
	add r3,r1
	fmov @r1,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0xD6,PC),r0
	mov.l @(0x14,r14),r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c10515e
	mov.w @(0x1C,r14),r0
	mov.l @(0xEC,PC),r4
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mova @(0xDC,PC),r0
	fmov @r0,fr6
	mova @(0xDC,PC),r0
	fmov @r0,fr5
	mova @(0xDC,PC),r0
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
	fdiv fr6,fr3
	fadd fr5,fr3
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
	fdiv fr6,fr3
	fadd fr5,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r4,r3
	mov.l r3,@(r0,r14)

loc_8C10515E:
	mov.l @(0x14,r14),r2
	mov.b @(0x4,r2),r0
	tst r0,r0
	bt loc_8c10516c
	mov.l @(0x98,PC),r3
	jsr @r3
	mov r14,r4

loc_8C10516C:
	mov.l @(0x14,r14),r0
	mov.b @(0x1,r0),r0
	extu.b r0,r0
	cmp/eq 0x18,r0
	bt loc_8c105180
	lds.l @r15+,pr
	mov.l @(0x84,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C105180:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c105186:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x78,PC),r3
	mov 0x05,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c1051d0
	mov r0,r4
	mov.l @(0x68,PC),r2
	mov 0x01,r3
	mov.w @(0x38,PC),r0
	mov.l @(0x68,PC),r1
	mov.b r3,@(r0,r4)
	mov 0x3D,r3
	mov.l r2,@(0x10,r4)
	add 0xA0,r0
	mov.l r3,@(r0,r4)
	mov.l @r1,r2
	mov r4,r1
	mov.w @(0x28,PC),r0
	add 0x50,r1
	mov.l @r2,r3
	fldi1 fr3
	mov.l @(r0,r3),r3
	mov.w @(0x20,PC),r0
	mov.l r3,@(r0,r4)
	mov 0x74,r0
	mov.l @r15,r2
	mov.l @(0x1C,PC),r3
	mov.l r2,@(0x14,r4)
	mov.l @(0x44,PC),r2
	fmov fr3,@(r0,r4)
	jsr @r3
	mov 0x0C,r0

loc_8c1051d0:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1051d8:
	#data 0x0130
loc_8c1051da:
	#data 0x01A0
loc_8c1051dc:
	#data 0x012c
loc_8c1051de:
	#data 0x0168
loc_8c1051e0:
	#data 0x0084
	#align4

loc_8C1051E4:
	#data bank12.loc_8c1294C8
loc_8C1051E8:
	#data 0x41555555
loc_8C1051Ec:
	#data 0x435EDB6d
loc_8C1051f0:
	#data 0x43B40000
loc_8C1051f4:
	#data 0x3F000000
loc_8C1051f8:
	#data 0x47800000
loc_8C1051fc:
	#data 0x0000FFFf
loc_8C105200:
	#data bank04.loc_8c0450C0
loc_8C105204:
	#data bank04.loc_8c044F12
loc_8C105208:
	#data loc_8c1050Ac
loc_8C10520c:
	#data 0x8C26A904
loc_8C105210:
	#data bank16.loc_8c165660

;==============================================
loc_8C105214:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r4,r1
	fmov fr15,@-r15
	add 0x34,r1
	fmov fr14,@-r15
	fmov fr13,@-r15
	sts.l pr,@-r15
	mov.l @(0x14,r14),r2
	mov.l @(0x140,PC),r3
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mova @(0x13C,PC),r0
	mov.l @(0x14,r14),r5
	fmov @r0,fr3
	mov 0x50,r0
	fmov @(r0,r5),fr2
	mov.w @(0x128,PC),r0
	fmul fr3,fr2
	mov.w @(r0,r5),r3
	tst r3,r3
	ftrc fr2,fpul
	bf.s loc_8c10524a
	sts fpul,r4
	neg r4,r4

loc_8C10524A:
	exts.w r4,r4
	mov.l @(0x14,r14),r3
	lds r4,fpul
	mov 0x34,r0
	fmov @(r0,r3),fr2
	mov.l @(0x11C,PC),r1
	float fpul,fr3
	lds r1,fpul
	mov 0x54,r1
	fsts fpul,fr0
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x14,r14),r3
	fmov @(r0,r14),fr2
	add r3,r1
	fmov @r1,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0xF4,PC),r0
	mov.l @(0x14,r14),r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c10532e
	mov.w @(0x1C,r14),r0
	mov.l @(0xFC,PC),r13
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mova @(0xF4,PC),r0
	fmov @r0,fr13
	mova @(0xF8,PC),r0
	fmov @r0,fr14
	mova @(0xF8,PC),r0
	fmov @r0,fr15
	mov.w @(0x1C,r14),r0
	mov r0,r3
	mov.w @(0x1E,r14),r0
	add r0,r3
	shll r3
	lds r3,fpul
	mov 0x44,r0
	float fpul,fr3
	fmul fr14,fr3
	fdiv fr13,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r13,r3
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
	fmul fr14,fr3
	fdiv fr13,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r13,r3
	mov.l r3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	mov.l @(0xB4,PC),r3
	mov r0,r1
	mov.w @(0x92,PC),r0
	jsr @r3
	nop
	lds r0,fpul
	mov.l @(0xAC,PC),r3
	float fpul,fr3
	fmov fr3,fr2
	fmul fr14,fr2
	fdiv fr13,fr2
	fmov fr2,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r3
	and r13,r4
	fmov fr0,fr3
	mov 0x78,r0
	fmov fr15,fr0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	mov.l @(0x88,PC),r3
	fmov fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	mov r0,r1
	mov.w @(0x62,PC),r0
	jsr @r3
	nop
	lds r0,fpul
	mov.l @(0x80,PC),r3
	float fpul,fr3
	fmov fr3,fr2
	fmul fr14,fr2
	fdiv fr13,fr2
	fmov fr2,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r3
	and r13,r4
	fmov fr0,fr3
	mov 0x7C,r0
	fmov fr15,fr0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)

loc_8C10532E:
	mov.l @(0x14,r14),r3
	mov.b @(0x4,r3),r0
	tst r0,r0
	bt loc_8c10533c
	mov.l @(0x5C,PC),r3
	jsr @r3
	mov r14,r4

loc_8C10533C:
	mov.l @(0x14,r14),r0
	mov.b @(0x1,r0),r0
	extu.b r0,r0
	cmp/eq 0x18,r0
	bt loc_8c105358
	lds.l @r15+,pr
	mov.l @(0x48,PC),r2
	mov r14,r4
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C105358:
	lds.l @r15+,pr
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c105366:
	#data 0x0130
loc_8c105368:
	#data 0x01A0
loc_8c10536a:
	#data 0x0168
	#align4

loc_8C10536C:
	#data bank12.loc_8c1294C8
loc_8C105370:
	#data 0x41555555
loc_8C105374:
	#data 0x435EDB6d
loc_8C105378:
	#data 0x43B40000
loc_8C10537c:
	#data 0x0000FFFf
loc_8C105380:
	#data 0x47800000
loc_8C105384:
	#data 0x3F000000
loc_8C105388:
	#data bank12.loc_8c1292D4
loc_8C10538C:
	#data bank11.loc_8c11E860
loc_8C105390:
	#data bank11.loc_8c11E2E0
loc_8C105394:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C105398:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xF4,PC),r3
	mov 0x05,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c1053fe
	mov r0,r14
	mov.w @(0xD4,PC),r0
	mov 0x01,r3
	mov.l @(0xE0,PC),r2
	mov.l @(0xE4,PC),r1
	mov.b r3,@(r0,r14)
	add 0xA0,r0
	mov.w @(0xCA,PC),r3
	mov.l r2,@(0x10,r14)
	mov.l r3,@(r0,r14)
	mov.l @r1,r2
	mov.w @(0xC4,PC),r0
	mov.l @r2,r3
	fldi1 fr3
	mov.l @(r0,r3),r3
	mov.w @(0xBE,PC),r0
	fldi0 fr4
	mov.l r3,@(r0,r14)
	mov 0x78,r0
	mov.l @r15,r2
	mov.l @(0xC8,PC),r3
	mov.l r2,@(0x14,r14)
	fmov fr3,@(r0,r14)
	mov 0x7C,r0
	fmov fr4,@(r0,r14)
	add 0x04,r0
	jsr @r3
	fmov fr4,@(r0,r14)
	mov r0,r1
	mov.l @(0xB8,PC),r2
	mov.w @(0xA2,PC),r0
	jsr @r2
	nop
	mov.l @(0xB4,PC),r2
	mov r14,r1
	mov.l @(0xB4,PC),r3
	add 0x50,r1
	mov.w r0,@(0x1E,r14)
	jsr @r3
	mov 0x0C,r0

loc_8c1053fe:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c105406:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x84,PC),r3
	mov 0x05,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c10546c
	mov r0,r14
	mov.w @(0x66,PC),r0
	mov 0x01,r3
	mov.l @(0x74,PC),r2
	mov.l @(0x74,PC),r1
	mov.b r3,@(r0,r14)
	add 0xA0,r0
	mov.w @(0x5C,PC),r3
	mov.l r2,@(0x10,r14)
	mov.l r3,@(r0,r14)
	mov.l @r1,r2
	mov.w @(0x5C,PC),r0
	mov.l @r2,r3
	fldi1 fr3
	mov.l @(r0,r3),r3
	mov.w @(0x50,PC),r0
	fldi0 fr4
	mov.l r3,@(r0,r14)
	mov 0x78,r0
	mov.l @r15,r2
	mov.l @(0x58,PC),r3
	mov.l r2,@(0x14,r14)
	fmov fr3,@(r0,r14)
	mov 0x7C,r0
	fmov fr4,@(r0,r14)
	add 0x04,r0
	jsr @r3
	fmov fr4,@(r0,r14)
	mov r0,r1
	mov.l @(0x4C,PC),r2
	mov.w @(0x34,PC),r0
	jsr @r2
	nop
	mov.l @(0x48,PC),r2
	mov r14,r1
	mov.l @(0x48,PC),r3
	add 0x50,r1
	mov.w r0,@(0x1E,r14)
	jsr @r3
	mov 0x0C,r0

loc_8c10546c:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c105474:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c105186
	mov r4,r14
	bsr loc_8c105398
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c105406
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c105488:
	#data 0x012c
loc_8c10548a:
	#data 0x041D
loc_8c10548c:
	#data 0x0160
loc_8c10548e:
	#data 0x0084
loc_8c105490:
	#data 0x0168
loc_8c105492:
	#data 0x0164
	#align4

loc_8C105494:
	#data bank04.loc_8c044F12
loc_8C105498:
	#data loc_8c105214
loc_8C10549c:
	#data 0x8C26A904
loc_8C1054A0:
	#data bank11.loc_8c11e730
loc_8C1054A4:
	#data bank12.loc_8c1292D4
loc_8C1054A8:
	#data bank16.loc_8c165660
loc_8C1054AC:
	#data bank12.loc_8c1294C8

;==============================================
loc_8C1054B0:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0
mov r14,r5
mov.l @(loc_8C105604,pc),r1 ; r1 set to 0x8C16566c
extu.b r0,r0
mov.l @(0x18,r14),r4
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

;==============================================
loc_8C1054C6:
	mov.w @(0x12C,PC),r0
	mov.l r14,@-r15
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt.s loc_8c1054da
	mov r5,r14
	mov.w @(0x120,PC),r0
	mov 0x00,r2
	mov.l r2,@(r0,r14)

loc_8C1054DA:
	mov.w @(0x11A,PC),r0
	mov.l @(r0,r14),r3
	add 0xFF,r3
	mov.l r3,@(r0,r14)
	add 0x01,r3
	tst r3,r3
	bf loc_8c1054f6
	mov.l @(0x11C,PC),r5
	mov 0x01,r0
	mov.l @(0x11C,PC),r3
	mov r14,r4
	mov.b r0,@(0x4,r14)
	jmp @r3
	mov.l @r15+,r14

loc_8C1054F6:
	rts
	mov.l @r15+,r14

;==============================================
loc_8C1054FA:
	mov.w @(0xFC,PC),r0
	mov.l @(0x114,PC),r6
	mov.l @(r0,r5),r3
	mov.l @(0x10C,PC),r7
	shll2 r3
	shll r3
	shll r3
	add r3,r6
	mov.l @(r0,r5),r3
	add 0x54,r0
	shll2 r3
	shll r3
	shll2 r3
	add r3,r7
	mov 0x01,r3
	mov.b r3,@(r0,r5)
	mov.w @(0x1C,r5),r0
	shll r0
	add r0,r6
	mov.w @r6,r0
	mov.w r0,@(0x1E,r5)
	mov.w @(0x1C,r5),r0
	shll2 r0
	add r0,r7
	fmov @r7,fr3
	mov 0x74,r0
	fmov fr3,@(r0,r5)
	mov 0x02,r0
	mov.b r0,@(0x4,r5)
	mov.b @(0x7,r5),r0
	tst r0,r0
	bt loc_8c105552
	mov 0x5C,r0
	fmov @(r0,r5),fr3
	mov 0x34,r0
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r5)
	mov 0x60,r0
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r5)

loc_8C105552:
	mov.b @(0x7,r5),r0
	tst r0,r0
	bt loc_8c105574
	mov 0x00,r0
	mov.b r0,@(0x7,r5)
	mov 0x5C,r0
	fmov @(r0,r5),fr3
	mov 0x34,r0
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r5)
	mov 0x60,r0
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r5)

loc_8C105574:
	mov.w @(0x1E,r5),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r5)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c10559a
	mov 0x01,r0
	mov.b r0,@(0x4,r5)
	mov 0x08,r3
	mov.w @(0x1C,r5),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r5)
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8c10559a
	mov 0x03,r0
	mov.b r0,@(0x4,r5)
	mov 0x07,r0
	mov.w r0,@(0x1C,r5)

loc_8C10559A:
	rts
	nop

;==============================================
loc_8C10559E:
	mov.l r14,@-r15
	mov r5,r14
	sts.l pr,@-r15
	mov.l @(loc_8C10560C,pc),r3 ; r3 set to 0x8C0305Ca
	mov 0x00,r5 ; r5 set to 0x00
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C1055FC,pc),r0 ; r0 set to 0x12c
	mov 0x00,r2 ; r2 set to 0x00
	mov.b r2,@(r0,r14)
	mov 0x04,r0 ; r0 set to 0x04
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C1055BC:
	mov.l @(loc_8C105618,pc),r3 ; r3 set to 0x8C0450C0
	mov r5,r4
	mov.l r5,@-r15
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C1055C6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r13
	mov.w @(0x1C,r13),r0
	mov.l @(loc_8C10561C,pc),r14 ; r14 set to 0x8C13DC30
	shll r0
	mov.l @(loc_8C105620,pc),r3 ; r3 set to 0x8C26A908
	shll2 r0
	add r0,r14 ; r14 ??? bc r0 is ???
	mov.w @(loc_8C1055FA,pc),r0 ; r0 set to 0xD8
	mov.l @(r0,r13),r2
	tst r2,r2
	bt/s loc_8C105624
	mov.l @r3,r12
	mov.w @(loc_8C1055FE,pc),r0 ; r0 set to 0x84
	mov.l @(r0,r13),r5
	mov.w @(loc_8C105600,pc),r0 ; r0 set to 0x1Ac
	bra loc_8C10562c
	mov.l @r12,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1055F6:
	#data 0x022a
loc_8C1055F8:
	#data 0x00D4
loc_8C1055FA:
	#data 0x00D8
loc_8C1055FC:
	#data 0x012c
loc_8C1055FE:
	#data 0x0084
loc_8C105600:
	#data 0x01Ac
	#align4

loc_8C105604:
	#data bank16.loc_8c16566c
loc_8C105608:
	#data loc_8c1055C6
loc_8C10560C:
	#data bank03.loc_8c0305Ca
loc_8C105610:
	#data bank13.loc_8c13dcB0
loc_8C105614:
	#data bank13.loc_8c13dcF0
loc_8C105618:
	#data bank04.loc_8c0450C0
loc_8C10561C:
	#data bank13.loc_8c13dc30
loc_8C105620:
	#data 0x8C26A908

;==============================================
loc_8C105624:
	mov.w @(loc_8C105730,pc),r0 ; r0 set to 0x84
	mov.l @r12,r2
	mov.l @(r0,r13),r5
	mov.w @(loc_8C105732,pc),r0 ; r0 set to 0x1A4

loc_8C10562C:
	mov.l @(loc_8C10573C,pc),r1 ; r1 set to 0x8C108060, r1 set to 0x8C108060
	jsr @r1
	mov.l @(r0,r2),r4
	mov.l @(loc_8C105748,pc),r12 ; r12 set to 0x8C108086, r12 set to 0x8C108086
	mov r14,r13
	mov.l @(loc_8C105744,pc),r11 ; r11 set to 0x8C108192, r11 set to 0x8C108192
	mov.l @(loc_8C105740,pc),r10 ; r10 set to 0x8C1081E6, r10 set to 0x8C1081E6
	bra loc_8C105662
	add 0x04,r13

loc_8C10563E:
	mov r15,r5
	add 0x04,r5
	jsr @r11
	mov r15,r4
	fmov.s @r15,fr2
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @r14,fr3
	mov r15,r5
	add 0x04,r5
	fadd fr3,fr2
	fmov.s fr2,@r15
	fmov.s @(r0,r15),fr1
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @r13,fr3
	fsub fr3,fr1
	fmov.s fr1,@(r0,r15)
	jsr @r10
	mov r15,r4

loc_8C105662:
	jsr @r12
	nop
	tst r0,r0
	bt loc_8C10563e
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C10567A:
	mov.l r14,@-r15
	mova @(loc_8C10574C,pc),r0  ; r0 init to 0x8C10574c
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov 0x00,r10 ; r10 set to 0x00
	mov.l r9,@-r15
	mov r10,r12 ; r12 set to 0x00
	mov.l r8,@-r15
	mov 0x02,r9 ; r9 set to 0x02
	fmov.s fr15,@-r15
	mov 0x25,r8 ; r8 set to 0x25
	fmov.s fr14,@-r15
	fmov.s fr13,@-r15
	sts.l pr,@-r15
	fmov.s @r0,fr13
	mova @(loc_8C105750,pc),r0  ; r0 set to 0x8C105750
	fmov.s @r0,fr14
	mov.l @(loc_8C105754,pc),r11 ; r11 set to 0x8C11E730
	fldi1 fr15

loc_8C1056A6:
	mov.l @(loc_8C105758,pc),r3 ; r3 set to 0x8C044F12, r3 set to 0x8C044F12
	mov 0x07,r5 ; r5 set to 0x07, r5 set to 0x07
	mov 0x01,r6 ; r6 set to 0x01, r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00, r4 set to 0x00
	tst r0,r0
	bf/s loc_8C1056Ba
	mov r0,r14 ; r14 set to 0x8C105750
	bra loc_8C105836
	nop

loc_8C1056BA:
	mov.w @(loc_8C105734,pc),r0 ; r0 set to 0x12c
	mov.l @(loc_8C10575C,pc),r3 ; r3 set to 0x8C1054B0
	mov.b r10,@(r0,r14)
	add 0xA0,r0 ; r0 set to 0xCc
	mov.l r3,@(0x10,r14)
	mov.l r8,@(r0,r14)
	mov 0x23,r0 ; r0 set to 0x23
	mov.b r12,@(r0,r14)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s fr15,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr15,@(r0,r14)
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	mov.w @(loc_8C105736,pc),r0 ; r0 set to 0xD4
	extu.b r3,r3
	shll2 r3
	shll r3
	mov.l r3,@(r0,r14)
	add 0x5C,r0 ; r0 set to 0x130
	mov.l r13,@(0x18,r14)
	mov.w @(r0,r13),r2
	tst r2,r2
	bt/s loc_8C1056F0
	mov 0x44,r0 ; r0 set to 0x44
	bra loc_8C1056F2
	mov 0x00,r3

loc_8C1056F0:
	mov.l @(loc_8C105760,pc),r3 ; r3 set to 0x8000

loc_8C1056F2:
	mov.l @(loc_8C105764,pc),r2 ; r2 set to 0x8C03319E, r2 set to 0x8C03319e
	jsr @r2
	mov.l r3,@(r0,r14)
	mov.w @(loc_8C105738,pc),r1 ; r1 set to 0xD8, r1 set to 0xD8
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???
	mov.l r0,@r1
	mov.w @(loc_8C105738,pc),r0 ; r0 set to 0xD8, r0 set to 0xD8
	mov.l @(r0,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???
	cmp/pz r0
	bf loc_8C10570a
	bra loc_8C105714
	and 0x01,r0

loc_8C10570A:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C105714:
	mov.w @(loc_8C105738,pc),r2 ; r2 set to 0xD8, r2 set to 0xD8
	mov.l @(loc_8C105768,pc),r1 ; r1 set to 0x8C26A908, r1 set to 0x8C26A908
	add r14,r2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???
	mov.l r0,@r2
	mov.w @(loc_8C105738,pc),r0 ; r0 set to 0xD8, r0 set to 0xD8
	mov.l @(r0,r14),r3
	tst r3,r3
	bt/s loc_8C10576c
	mov.l @r1,r4
	mov.w @(loc_8C10573A,pc),r0 ; r0 set to 0x1A8, r0 set to 0x1A8
	mov.l @r4,r3
	mov.l @(r0,r3),r2
	bra loc_8C105772
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C105730:
	#data 0x0084
loc_8C105732:
	#data 0x01A4
loc_8C105734:
	#data 0x012c
loc_8C105736:
	#data 0x00D4
loc_8C105738:
	#data 0x00D8
loc_8C10573A:
	#data 0x01A8
	#align4

loc_8C10573C:
	#data loc_8c108060
loc_8C105740:
	#data loc_8c1081E6
loc_8C105744:
	#data loc_8c108192
loc_8C105748:
	#data loc_8c108086
loc_8C10574C:
	#data 0x40092492
loc_8C105750:
	#data 0x3FD55555
loc_8C105754:
	#data bank11.loc_8c11e730
loc_8C105758:
	#data bank04.loc_8c044F12
loc_8C10575C:
	#data loc_8c1054B0
loc_8C105760:
	#data 0x00008000
loc_8C105764:
	#data bank03.loc_8c03319e
loc_8C105768:
	#data 0x8C26A908

;==============================================
loc_8C10576C:
	mov.w @(loc_8C105852,pc),r0 ; r0 set to 0x1A0
	mov.l @r4,r3
	mov.l @(r0,r3),r2

loc_8C105772:
	mov.w @(loc_8C105854,pc),r0 ; r0 set to 0x84, r0 set to 0x84
	jsr @r11
	mov.l r2,@(r0,r14)
	mov r0,r4 ; r4 set to 0x84, r4 set to 0x84
	mov.w @(loc_8C105856,pc),r0 ; r0 set to 0x13E, r0 set to 0x13e
	mov.b @(r0,r13),r3
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	fmov.s @(r0,r13),fr2
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	extu.b r3,r3
	lds r3,fpul
	add r14,r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???
	mov.l r0,@-r15
	float fpul,fr3
	fmul fr2,fr3
	fmul fr14,fr3
	ftrc fr3,fpul
	mov r4,r0 ; r0 set to 0x84, r0 set to 0x84
	nop
	cmp/pz r0
	bf/s loc_8C1057A2
	sts fpul,r5
	bra loc_8C1057Ac
	and 0x01,r0

loc_8C1057A2:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C1057AC:
	tst r0,r0
	bt loc_8C1057Bc
	mov.l @(loc_8C10585C,pc),r3 ; r3 set to 0x8C1292D4, r3 set to 0x8C1292D4
	mov r4,r1
	jsr @r3
	mov r5,r0
	bra loc_8C1057C6
	mov r0,r3

loc_8C1057BC:
	mov.l @(loc_8C10585C,pc),r2 ; r2 set to 0x8C1292D4
	mov r4,r1
	jsr @r2
	mov r5,r0
	neg r0,r3

loc_8C1057C6:
	lds r3,fpul
	mov.l @r15+,r3
	float fpul,fr3
	fmov.s @r3,fr2 ; r2 ??? bc r3 is ???
	fadd fr3,fr2
	jsr @r11
	fmov.s fr2,@r3
	mov r0,r4
	mov.w @(loc_8C105858,pc),r0 ; r0 set to 0x13C, r0 set to 0x13c
	mov 0x60,r2 ; r2 set to 0x60, r2 set to 0x60
	mov r4,r1
	mov.b @(r0,r13),r3
	mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
	fmov.s @(r0,r13),fr2 ; r2 ??? bc r13 is ???, r2 ??? bc r13 is ???
	add r14,r2
	extu.b r3,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr2,fr3
	fmul fr13,fr3
	ftrc fr3,fpul
	sts fpul,r5
	mov r5,r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???
	nop
	mov.l @(loc_8C10585C,pc),r3 ; r3 set to 0x8C1292D4, r3 set to 0x8C1292D4
	jsr @r3
	nop
	lds r0,fpul
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fmov.s @r2,fr2
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@r2
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r13),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s @(r0,r14),fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r13),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	mov.b r0,@(0x07,r14)
	mov r9,r0 ; r0 ??? bc r9 is ???, r0 ??? bc r9 is ???
	nop
	add 0x01,r12
	mov 0x05,r2 ; r2 set to 0x05, r2 set to 0x05
	extu.b r12,r3
	cmp/ge r2,r3
	bt/s loc_8C105836
	mov.w r0,@(0x1C,r14)
	bra loc_8C1056A6
	nop

loc_8C105836:
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
loc_8C10584E:
	bra loc_8C10567a
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C105852:
	#data 0x01A0
loc_8C105854:
	#data 0x0084
loc_8C105856:
	#data 0x013e
loc_8C105858:
	#data 0x013c
	#align4

loc_8C10585C:
	#data bank12.loc_8c1292D4

;==============================================
loc_8C105860:
	sts.l pr,@-r15
	bsr loc_8c10589a
	mov r15,r4
	bsr loc_8c10597c
	mov r15,r4
	mov.l @(0xE8,PC),r4
	mov 0x48,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bf loc_8c10588c
	mov.l @(0xE0,PC),r3
	mov.w @(0xC8,PC),r0
	mov.l @r3,r2
	mov.b @(r0,r2),r1
	tst r1,r1
	bf loc_8c10588c
	mov 0x45,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c105894

loc_8C10588C:
	mov.l @(0xCC,PC),r2
	mov 0x01,r4
	jmp @r2
	lds.l @r15+,pr

loc_8C105894:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C10589A:
	mov.l r14,@-r15
	mov 0x09,r5
	sts.l pr,@-r15
	mov.l @(0xBC,PC),r3
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c1058ec
	mov r0,r14
	mov.w @(0x94,PC),r0
	mov 0x01,r3
	mov.l @(0xB4,PC),r1
	mov.l @(0xAC,PC),r2
	mov.b r3,@(r0,r14)
	mov.l r2,@(0x10,r14)
	mov.l @r1,r3
	mov.w @(0x88,PC),r0
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov.l @(0xA8,PC),r2
	mov.w @(0x82,PC),r0
	mov.l r3,@(r0,r14)
	mov 0x34,r0
	fmov @r2,fr3
	mov 0x0B,r3
	fmov fr3,@(r0,r14)
	mova @(0x9C,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x70,PC),r0
	mov.l r3,@(r0,r14)
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)
	bsr loc_8c105c1c
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c1058f2
	mov.l @r15+,r14

loc_8C1058EC:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C1058F2:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x68,PC),r3
	mov 0x09,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c10593c
	mov r0,r4
	mov.w @(0x3A,PC),r0
	mov 0x01,r3
	mov.l @(0x58,PC),r1
	mov.l @(0x64,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.w @(0x34,PC),r0
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov 0x0B,r2
	mov.w @(0x28,PC),r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	add 0x7D,r2
	mov.l @r15,r3
	mov.w @(0x22,PC),r0
	add r3,r2
	mov.l r2,@(r0,r4)
	mova @(0x44,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov 0x00,r0
	mov.w r0,@(0x1C,r4)

loc_8C10593C:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c105944:
	#data 0x008b
loc_8c105946:
	#data 0x012C
loc_8c105948:
	#data 0x03B8
loc_8c10594a:
	#data 0x0084
loc_8c10594c:
	#data 0x00Cc
loc_8c10594e:
	#data 0x03BC
loc_8c105950:
	#data 0x00C8
	#align4

loc_8c105954:
	#data 0x8C2895F0
loc_8c105958:
	#data 0x8C26823c
loc_8C10595C:
	#data bank04.loc_8c041A90
loc_8C105960:
	#data bank04.loc_8c044F26
loc_8C105964:
	#data loc_8c1059Da
loc_8c105968:
	#data 0x8C26A908
loc_8c10596c:
	#data 0x8C26A524
loc_8c105970:
	#data 0xC7C35000
loc_8C105974:
	#data loc_8c105B0e
loc_8c105978:
	#data 0x476A6000

;==============================================
loc_8C10597C:
	sts.l pr,@-r15
	mov.l @(0xF8,PC),r3
	mov 0x09,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c1059d4
	mov r0,r4
	mov.w @(0xDA,PC),r0
	mov 0x01,r3
	mov.l @(0xEC,PC),r1
	mov.l @(0xE4,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.w @(0xCE,PC),r0
	mov.l @r3,r2
	mov.l @(0xE0,PC),r5
	mov.l @(r0,r2),r3
	mov.w @(0xC8,PC),r0
	mov.l r3,@(r0,r4)
	mov 0x0C,r0
	fmov @(r0,r5),fr3
	mov 0x34,r0
	mov 0x2B,r3
	fmov fr3,@(r0,r4)
	add 0x74,r0
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mova @(0xCC,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov.w @(0xAC,PC),r0
	fldi1 fr3
	mov.l r3,@(r0,r4)
	mov 0x00,r0
	mov.w r0,@(0x1C,r4)
	mov 0x74,r0
	fmov fr3,@(r0,r4)
	bra loc_8c105c1c
	lds.l @r15+,pr

loc_8C1059D4:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C1059DA:
	mov.l @(loc_8C105A8C,pc),r3 ; r3 set to 0x8C26A524
	mov 0x34,r0 ; r0 set to 0x34
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	fmov.s @r3,fr3 ; r3 ??
	fmov.s fr3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bf loc_8C1059F2
	bra loc_8C105AFe
	nop

loc_8c1059f2:
	mov.w @(0x1C,r14),r0
	mov 0x0A,r2
	cmp/gt r2,r0
	bf loc_8c105abe
	mov.w @(0x1C,r14),r0
	mov 0x23,r3
	cmp/gt r3,r0
	bt loc_8c105a12
	mov.l @(loc_8C105A90,pc),r1
	mov 0x3C,r0
	lds r1,fpul
	fsts fpul,fr3

loc_8c105a0a:
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	bra loc_8c105abe
	fmov.s fr2,@(r0,r14)

loc_8c105a12:
	mov 0x3C,r3
	cmp/gt r3,r0
	bt loc_8c105a22
	mov.l @(loc_8C105A94,pc),r1
	mov 0x3C,r0
	lds r1,fpul
	bra loc_8c105a0a
	fsts fpul,fr3

loc_8c105a22:
	mov.w @(0x1C,r14),r0
	mov 0x55,r3
	cmp/gt r3,r0
	bt loc_8c105a34
	mov.l @(loc_8C105A98,pc),r1
	mov 0x3C,r0
	lds r1,fpul
	bra loc_8c105a0a
	fsts fpul,fr3

loc_8c105a34:
	mov 0x6E,r3
	cmp/gt r3,r0
	bt loc_8c105a44
	mov.l @(loc_8C105A9C,pc),r1
	mov 0x3C,r0
	lds r1,fpul
	bra loc_8c105a0a
	fsts fpul,fr3

loc_8c105a44:
	mov.w @(loc_8C105A74,pc),r3
	mov.w @(0x1C,r14),r0
	cmp/gt r3,r0
	bt loc_8c105a56
	mov.l @(loc_8C105AA0,pc),r1
	mov 0x3C,r0
	lds r1,fpul
	bra loc_8c105a0a
	fsts fpul,fr3

loc_8c105a56:
	mov.w @(loc_8C105A76,pc),r3
	cmp/gt r3,r0
	bt loc_8c105aa8
	mov.l @(loc_8C105AA4,pc),r1
	mov 0x3C,r0
	fmov.s @(r0,r14),fr2
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	bra loc_8c105abe
	fmov.s fr2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c105a6c:
	#data 0x012c
loc_8c105a6e:
	#data 0x03c0
loc_8c105a70:
	#data 0x0084
loc_8c105a72:
	#data 0x00cc
loc_8c105a74:
	#data 0x0087
loc_8c105a76:
	#data 0x00a0
	#align4

loc_8c105a78:
	#data bank04.loc_8c044f26
loc_8c105a7c:
	#data loc_8c105bd6
loc_8c105a80:
	#data 0x8c26a908
loc_8c105a84:
	#data 0x8c26a518
loc_8c105a88:
	#data 0xc71c4000
loc_8c105a8c:
	#data 0x8c26a524
loc_8C105A90:
	#data 0x43480000
loc_8C105A94:
	#data 0x43C80000
loc_8C105A98:
	#data 0x44480000
loc_8C105A9C:
	#data 0x44960000
loc_8C105AA0:
	#data 0x44C80000
loc_8C105AA4:
	#data 0x44FA0000

;==============================================
loc_8c105aa8:
	mov.w @(loc_8C105B9E,pc),r3
	mov.w @(0x1C,r14),r0
	cmp/gt r3,r0
	bt loc_8c105acc
	mov.l @(loc_8C105BAC,pc),r1
	mov 0x3C,r0
	fmov.s @(r0,r14),fr2
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)

loc_8c105abe:
	mov.w @(0x1C,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	bra loc_8c105c1c
	mov.l @r15+,r14

loc_8c105acc:
	mov.l @(loc_8c105bb0,pc),r2
	jsr @r2
	mov r14,r4
	mov.l @(loc_8C105BB4,pc),r4
	mov 0x48,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bf loc_8c105af4
	mov.l @(loc_8C105BB8,pc),r3
	mov.w @(loc_8C105BA0,pc),r0
	mov.l @r3,r2
	mov.b @(r0,r2),r1
	tst r1,r1
	bf loc_8c105af4
	mov 0x45,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c105b08

loc_8c105af4:
	lds.l @r15+,pr
	mov.l @(loc_8c105bbc,pc),r2
	mov 0x3C,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c105afe:
	bsr loc_8c105c1c
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)

loc_8c105b08:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C105B0E:
	mov.w @(0x1C,r4),r0
	tst r0,r0
	bt loc_8C105BCc
	mov.w @(0x1C,r4),r0
	mov 0x0A,r3 ; r3 set to 0x0a
	cmp/gt r3,r0
	bf loc_8C105BCc
	mov.w @(0x1C,r4),r0
	mov 0x23,r3 ; r3 set to 0x23
	cmp/gt r3,r0
	bt loc_8C105B36
	mov.l @(loc_8C105BC0,pc),r1 ; r1 set to 0x43C80000
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r4),fr2
	lds r1,fpul
	mov.w @(loc_8C105BA2,pc),r2 ; r2 set to 0x1B5
	fsts fpul,fr3
	fadd fr3,fr2 ; r2 ??
	bra loc_8C105B78
	fmov.s fr2,@(r0,r4)

loc_8C105B36:
	mov 0x3C,r3 ; r3 set to 0x3c
	cmp/gt r3,r0
	bt loc_8C105B42
	mov.w @(loc_8C105BA4,pc),r2 ; r2 set to 0x2D8
	bra loc_8C105B58
	nop

loc_8C105B42:
	mova @(loc_8C105BC4,pc),r0  ; r0 init to 0x8C105BC4
	fmov.s @r0,fr4
	mov 0x55,r3 ; r3 set to 0x55
	mov.w @(0x1C,r4),r0
	cmp/gt r3,r0
	bt loc_8C105B62
	mov 0x3C,r0 ; r0 set to 0x3c
	mov.w @(loc_8C105BA6,pc),r2 ; r2 set to 0x765
	fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4)

loc_8C105B58:
	mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48
	mov.l @(r0,r4),r1
	add r2,r1
	bra loc_8C105BCc
	mov.l r1,@(r0,r4)

loc_8C105B62:
	mov 0x6E,r3 ; r3 set to 0x6e
	cmp/gt r3,r0
	bt loc_8C105B86
	mov.l @(loc_8C105BC8,pc),r1 ; r1 set to 0x44160000
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r4),fr2
	lds r1,fpul
	mov.w @(loc_8C105BA8,pc),r2 ; r2 set to 0x36a
	fsts fpul,fr3
	fadd fr3,fr2 ; r2 ??
	fmov.s fr2,@(r0,r4)

loc_8C105B78:
	mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48
	mov.l @(r0,r4),r0 ; r0 ??? bc r4 is ???, r0 ??? bc r4 is ???
	mov 0x48,r3 ; r3 set to 0x48, r3 set to 0x48
	add r4,r3 ; r3 ??? bc r4 is ???, r3 ??? bc r4 is ???
	add r2,r0
	bra loc_8C105BCc
	mov.l r0,@r3

loc_8C105B86:
	mov.w @(loc_8C105BAA,pc),r3 ; r3 set to 0x87
	mov.w @(0x1C,r4),r0
	cmp/gt r3,r0
	bt loc_8C105B98
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???
	fadd fr4,fr3
	bra loc_8C105BCc
	fmov.s fr3,@(r0,r4)

loc_8C105B98:
	mov.l @(loc_8C105BB0,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c105b9e:
	#data 0x00B9
loc_8c105ba0:
	#data 0x008b
loc_8C105BA2:
	#data 0x01B5
loc_8C105BA4:
	#data 0x02D8
loc_8C105BA6:
	#data 0x0765
loc_8C105BA8:
	#data 0x036a
loc_8C105BAA:
	#data 0x0087
	#align4

loc_8c105bac:
	#data 0x447A0000
loc_8C105BB0:
	#data bank04.loc_8c0450C0
loc_8c105bb4:
	#data 0x8C2895F0
loc_8c105bb8:
	#data 0x8C26823c
loc_8C105BBC:
	#data bank04.loc_8c041AA6
loc_8C105BC0:
	#data 0x43C80000
loc_8C105BC4:
	#data 0xC4160000
loc_8C105BC8:
	#data 0x44160000

;==============================================
loc_8C105BCC:
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	rts
	nop

;==============================================
loc_8C105BD6:
	mov.l @(0xC4,PC),r3
	mov 0x34,r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	fmov @r3,fr3
	mov 0x50,r2
	fmov fr3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r2,r0
	bf loc_8c105bfa
	mov.l @(0xB0,PC),r1
	mov 0x74,r0
	fmov @(r0,r14),fr2
	lds r1,fpul
	fsts fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r14)

loc_8C105BFA:
	mov.w @(0x9A,PC),r3
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8c105c0c
	lds.l @r15+,pr
	mov.l @(0x9C,PC),r1
	mov r14,r4
	jmp @r1
	mov.l @r15+,r14

loc_8C105C0C:
	bsr loc_8c105c1c
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C105C1C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x08,r0
	mov.l @(0x80,PC),r13
	mov r14,r3
	mov.l r8,@-r15
	add 0x40,r3
	mov r13,r4
	add 0x0C,r4
	sts.l pr,@-r15
	fmov @(r0,r4),fr4
	mov 0x3C,r0
	fmov @(r0,r14),fr3
	mov 0x04,r0
	fmov fr4,fr2
	mov r3,r8
	fsub fr3,fr2
	fmov @(r0,r4),fr3
	mov.w @(0x54,PC),r0
	fmov @(r0,r13),fr1
	mov 0x38,r0
	fsub fr3,fr1
	fmul fr1,fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r14),fr3
	mov 0x14,r0
	fmov @(r0,r13),fr5
	mov 0x38,r0
	fsub fr3,fr5
	mov.l @(0x4C,PC),r3
	jsr @r3
	fmov @(r0,r14),fr4
	mov.l r0,@r8
	mov 0x3C,r0
	fmov @(r0,r14),fr3
	mov 0x14,r0
	fmov @(r0,r13),fr4
	fsub fr3,fr4
	fldi0 fr3
	fcmp/gt fr4,fr3
	bf.s loc_8c105c82
	mov 0x38,r0
	mov r14,r2
	add 0x40,r2
	mov.l @r2,r1
	mov.l @(0x30,PC),r3
	add r3,r1
	mov.l r1,@r2

loc_8C105C82:
	mov 0x10,r1
	fmov @(r0,r14),fr2
	add r13,r1
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c105c98:
	#data 0x0096
loc_8c105c9a:
	#data 0x00A8
	#align4

loc_8C105C9c:
	#data 0x8C26A524
loc_8C105CA0:
	#data 0x3C6A0EA1
loc_8C105CA4:
	#data bank04.loc_8c0450C0
loc_8C105CA8:
	#data 0x8C26A518
loc_8C105CAC:
	#data bank11.loc_8c11E210
loc_8C105Cb0:
	#data 0x00008000

;==============================================
loc_8C105CB4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8C105CC8
	mov r4,r14
	bsr loc_8C105D26
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C105D92
	mov.l @r15+,r14

loc_8c105cc8:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c105e00,pc),r3
	mov 0x08,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c105d1e
	mov r0,r4
	mov.w @(loc_8C105DF2,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C105E08,pc),r1
	mov.l @(loc_8c105e04,pc),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(loc_8C105DF4,pc),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov.w @(loc_8C105DF6,pc),r0
	mov.l r3,@(r0,r4)
	mov.l @(loc_8c105e0c,pc),r3
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8C105DF8,pc),r0
	mov 0x25,r1
	fldi0 fr4
	mov.l r1,@(r0,r4)
	mov 0x00,r0
	mov.w r0,@(0x1C,r4)
	mov 0x74,r0
	fmov.s fr4,@(r0,r4)
	mov 0x78,r0
	fmov.s fr4,@(r0,r4)
	mov 0x7C,r0
	fmov.s fr4,@(r0,r4)
	add 0x04,r0
	fmov.s fr4,@(r0,r4)

loc_8c105d1e:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c105d26:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xD4,PC),r3
	mov 0x08,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c105d8a
	mov r0,r4
	mov.w @(0xB2,PC),r0
	mov 0x01,r3
	mov.l @(0xC4,PC),r1
	mov.l @(0xCC,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(0xAA,PC),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov.w @(0x9E,PC),r0
	mov.l r3,@(r0,r4)
	mov.l @(0xB0,PC),r3
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x94,PC),r0
	mov 0x35,r1
	fldi1 fr4
	mov.l r1,@(r0,r4)
	mov 0x00,r0
	mov.w r0,@(0x1C,r4)
	mov 0x50,r0
	fmov fr4,@(r0,r4)
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	mov 0x58,r0
	fmov fr4,@(r0,r4)
	mov 0x74,r0
	fldi0 fr4
	fmov fr4,@(r0,r4)
	mov 0x78,r0
	fmov fr4,@(r0,r4)
	mov 0x7C,r0
	fmov fr4,@(r0,r4)
	add 0x04,r0
	fmov fr4,@(r0,r4)

loc_8c105d8a:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c105d92:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x68,PC),r3
	mov 0x08,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c105dea
	mov r0,r4
	mov.w @(0x46,PC),r0
	mov 0x01,r3
	mov.l @(0x58,PC),r1
	mov.l @(0x64,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(0x40,PC),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov.w @(0x32,PC),r0
	mov.l r3,@(r0,r4)
	mov.l @(0x44,PC),r3
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x28,PC),r0
	mov 0x25,r1
	fldi1 fr3
	mov.l r1,@(r0,r4)
	mov 0x00,r0
	mov.w r0,@(0x1C,r4)
	mov 0x74,r0
	fmov fr3,@(r0,r4)
	mov 0x78,r0
	fldi0 fr4
	fmov fr4,@(r0,r4)
	mov 0x7C,r0
	fmov fr4,@(r0,r4)
	add 0x04,r0
	fmov fr4,@(r0,r4)

loc_8c105dea:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C105DF2:
	#data 0x012C
loc_8C105DF4:
	#data 0x0370
loc_8C105DF6:
	#data 0x0084
loc_8C105DF8:
	#data 0x00CC
loc_8C105DFa:
	#data 0x0374
loc_8C105DFc:
	#data 0x0378
	#align4

loc_8c105e00:
	#data bank04.loc_8c044f12
loc_8c105e04:
	#data loc_8c105e18
loc_8C105E08:
	#data 0x8C26A908
loc_8c105e0c:
	#data bank12.loc_8c1294c8
loc_8c105e10:
	#data loc_8C105E3A
loc_8c105e14:
	#data loc_8C105E8E

;==============================================
loc_8C105E18:
	mov.w @(0x1C,r4),r0
	mov 0x28,r3 ; r3 set to 0x28
	cmp/gt r3,r0
	bf loc_8C105E26
	mov.l @(loc_8C105EC8,pc),r2 ; r2 set to 0x8C0450C0
	jmp @r2
	nop

loc_8C105E26:
	mov.w @(0x1C,r4),r0
	mov.l @(loc_8C105ECC,pc),r1 ; r1 set to 0x8C165680
	shll2 r0
	fmov.s @(r0,r1),fr3
	mov 0x74,r0 ; r0 set to 0x74
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0 ; r0 set to 0x75
	rts
	mov.w r0,@(0x1C,r4)

;==============================================
loc_8C105E3A:
	mov.w @(0x1C,r4),r0
	mov 0x28,r3 ; r3 set to 0x28
	cmp/gt r3,r0
	bf loc_8C105E48
	mov.l @(loc_8C105EC8,pc),r2 ; r2 set to 0x8C0450C0
	jmp @r2
	nop

loc_8c105e48:
	mov.w @(0x1C,r4),r0
	mov 0x1C,r3
	cmp/ge r3,r0
	bf loc_8c105e6c
	mov.l @(loc_8C105ED0,pc),r1
	mov 0x50,r0
	fmov.s @(r0,r4),fr2
	lds r1,fpul
	mov.l @(loc_8C105ED4,pc),r1
	fsts fpul,fr3
	fadd fr3,fr2
	lds r1,fpul
	fmov.s fr2,@(r0,r4)
	mov 0x54,r0
	fmov.s @(r0,r4),fr1
	fsts fpul,fr2
	fsub fr2,fr1
	fmov.s fr1,@(r0,r4)

loc_8c105e6c:
	mova @(loc_8C105ED8,pc),r0
	fmov.s @r0,fr4
	mov 0x54,r0
	fmov.s @(r0,r4),fr3
	fcmp/gt fr3,fr4
	bf loc_8c105e7a
	fmov.s fr4,@(r0,r4)

loc_8c105e7a:
	mov.w @(0x1C,r4),r0
	mov.l @(loc_8c105edc,pc),r1
	shll2 r0
	fmov.s @(r0,r1),fr3
	mov 0x74,r0
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	rts
	mov.w r0,@(0x1C,r4)

loc_8C105E8E:
	mov.w @(0x1C,r4),r0
	mov 0x16,r3 ; r3 set to 0x16
	cmp/ge r3,r0
	bf loc_8C105E9c
	mov.l @(loc_8C105EC8,pc),r2 ; r2 set to 0x8C0450C0
	jmp @r2
	nop

loc_8C105E9C:
	mov.w @(0x1C,r4),r0
	mov.l @(loc_8C105EE0,pc),r1 ; r1 set to 0x8C1657C8
	mov.l @(loc_8C105EE4,pc),r3 ; r3 set to 0x8C26A908
	shll2 r0
	mov.l @(r0,r1),r2
	mov.l @r3,r0
	shll2 r2
	mov.l @r0,r0
	mov.l @(r0,r2),r2
	mov.w @(loc_8C105EC6,pc),r0 ; r0 set to 0x84
	mov.l r2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	mov.l @(loc_8C105EE8,pc),r2 ; r2 set to 0x8C165820
	shll2 r0 ; r0 set to 0x210
	fmov.s @(r0,r2),fr3 ; r3 ??
	mov 0x74,r0 ; r0 set to 0x74
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0 ; r0 set to 0x75
	rts
	mov.w r0,@(0x1C,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C105EC6:
	#data 0x0084
	#align4

loc_8C105EC8:
	#data bank04.loc_8c0450C0
loc_8C105ECC:
	#data bank16.loc_8c165680
loc_8c105ed0:
	#data 0x3ED55555
loc_8c105ed4:
	#data 0x3E2740Db
loc_8c105ed8:
	#data 0x3CA3D70a
loc_8C105EDC:
	#data bank16.loc_8c165724
loc_8C105EE0:
	#data bank16.loc_8c1657C8
loc_8C105EE4:
	#data 0x8C26A908
loc_8C105EE8:
	#data bank16.loc_8c165820

;==============================================
loc_8C105EEC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x108,PC),r3
	mov 0x06,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c105f4e
	mov r0,r14
	mov.w @(0xE2,PC),r0
	mov 0x01,r3
	mov.l @(0xF8,PC),r1
	mov.l @(0xF4,PC),r2
	mov.b r3,@(r0,r14)
	mov.l r2,@(0x10,r14)
	mov.l @r1,r3
	mov.w @(0xD6,PC),r0
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov.w @(0xD2,PC),r0
	mov.w @(0xD2,PC),r2
	mov.l r3,@(r0,r14)
	add 0x48,r0
	mov.l r2,@(r0,r14)
	mov.w @(0xCC,PC),r2
	mov.l @r15,r3
	mov.w @(0xCA,PC),r0
	add r3,r2
	mov.l r2,@(r0,r14)
	mov.l @r15,r3
	mov.w @(0xBC,PC),r0
	mov.l r3,@(0x18,r14)
	mov.l @(0xD4,PC),r3
	jsr @r3
	mov.l @(r0,r14),r4
	mov.l @(0x18,r14),r2
	mov r14,r4
	mov.l @(0xCC,PC),r5
	mov.b @(0x5,r2),r0
	add 0x01,r0
	mov.b r0,@(0x5,r2)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0xC4,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C105F4E:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C105F56:
	mov r4,r3
	mov.l @(loc_8C106014,pc),r1 ; r1 set to 0x8C165898
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C105F68:
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r3
	mov.l r4,@r15
	mov.b @(0x04,r3),r0
	add 0x01,r0
	mov.b r0,@(0x04,r3)
	mov.l @(loc_8C106018,pc),r3 ; r3 set to 0x8C11E730
	jsr @r3
	nop
	mov r0,r1
	mov.l @(loc_8C10601C,pc),r2 ; r2 set to 0x8C1292D4
	mov.w @(loc_8C105FF6,pc),r0 ; r0 set to 0xFA0
	jsr @r2
	nop
	mov.l @r15,r3 ; r3 ??? bc r15 is ???
	mov r0,r4 ; r4 set to 0xFA0
	mov r4,r0 ; r0 set to 0xFA0
	nop
	cmp/pz r0
	bf loc_8C105F96
	bra loc_8C105FA0
	and 0x01,r0

loc_8C105F96:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C105FA0:
	tst r0,r0
	bt loc_8C105FA8
	bra loc_8C105FAa
	mov r4,r2

loc_8C105FA8:
	neg r4,r2

loc_8C105FAA:
	lds r2,fpul
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	float fpul,fr3
	fmov.s fr3,@(r0,r3)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C105FBA:
	mov.w @(loc_8C105FEA,pc),r0 ; r0 set to 0x12c
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov 0x14,r3 ; r3 set to 0x14
	mov.b r2,@(r0,r4)
	mova @(loc_8C106020,pc),r0  ; r0 set to 0x8C106020
	fmov.s @r0,fr4
	mov.w @(loc_8C105FF8,pc),r0 ; r0 set to 0xD8
	mov.l @(r0,r4),r2
	cmp/gt r3,r2
	bt loc_8C105FDa
	mov 0x74,r0 ; r0 set to 0x74
	fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???
	fadd fr4,fr3
	bra loc_8C10602a
	fmov.s fr3,@(r0,r4)

loc_8C105FDA:
	mov.l @(r0,r4),r2
	mov 0x28,r1 ; r1 set to 0x28
	cmp/ge r1,r2
	bf loc_8C106024
	mov 0x74,r0 ; r0 set to 0x74
	fmov.s @(r0,r4),fr3
	bra loc_8C106028
	fsub fr4,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C105FEA:
	#data 0x012c
loc_8C105Fec:
	#data 0x0294
loc_8C105Fee:
	#data 0x0084
loc_8C105Ff0:
	#data 0x0821
loc_8C105Ff2:
	#data 0x0088
loc_8C105Ff4:
	#data 0x00C8
loc_8C105FF6:
	#data 0x0FA0
loc_8C105FF8:
	#data 0x00D8
	#align4

loc_8C105FFC:
	#data bank04.loc_8c044F12
loc_8C106000:
	#data loc_8c105F56
loc_8C106004:
	#data 0x8C26A908
loc_8C106008:
	#data loc_8c108210
loc_8C10600C:
	#data loc_8c106062
loc_8C106010:
	#data bank03.loc_8c0305Ca
loc_8C106014:
	#data bank16.loc_8c165898
loc_8C106018:
	#data bank11.loc_8c11e730
loc_8C10601C:
	#data bank12.loc_8c1292D4
loc_8C106020:
	#data 0x3D4CCCCd

;==============================================
loc_8c106024:
	mov 0x74,r0
	fldi1 fr3

loc_8c106028:
	fmov.s fr3,@(r0,r4)

loc_8c10602a:
	mov.w @(0x1E,r4),r0
	mov 0x50,r3
	add 0x01,r0
	mov.w r0,@(0x1E,r4)
	mov.w @(0x1E,r4),r0
	cmp/ge r3,r0
	bf loc_8c10603c
	mov 0x00,r0
	mov.w r0,@(0x1E,r4)

loc_8c10603c:
	mov.w @(loc_8C106148,pc),r0
	mov 0x3C,r2
	mov.l @(r0,r4),r3
	add 0x01,r3
	cmp/gt r2,r3
	mov.l r3,@(r0,r4)
	bt loc_8c106052
	mov.w @(loc_8c10614a,pc),r0
	mov.b @(r0,r4),r1
	tst r1,r1
	bf loc_8c10605e

loc_8c106052:
	mov.b @(0x04,r4),r0
	mov.l @(loc_8c106158,pc),r3
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	jmp @r3
	mov 0x00,r5

loc_8c10605e:
	rts
	nop

;==============================================
loc_8C106062:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8C10615C,pc),r3 ; r3 set to 0x8C26A908
	mov r4,r14
	mov.w @(loc_8C10614C,pc),r0 ; r0 set to 0x84
	mov.l @r3,r4
	mov.l @(r0,r14),r5
	mov.l @(loc_8C106160,pc),r1 ; r1 set to 0x8C108060
	mov.w @(loc_8C10614E,pc),r0 ; r0 set to 0x298
	mov.l @r4,r2
	jsr @r1
	mov.l @(r0,r2),r4
	mov.l @(loc_8C10616C,pc),r13 ; r13 set to 0x8C1081E6
	mova @(loc_8C106170,pc),r0  ; r0 set to 0x8C106170
	mov.l @(loc_8C106168,pc),r12 ; r12 set to 0x8C108086
	mov.l @(loc_8C106164,pc),r11 ; r11 set to 0x8C108192
	fldi1 fr14
	bra loc_8C1060B8
	fmov.s @r0,fr15

loc_8C106094:
	mov r15,r4
	mov r15,r5
	jsr @r11
	add 0x04,r4
	mov.w @(0x1E,r14),r0
	mov r15,r4
	fmov.s @r15,fr2
	mov r15,r5
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr15,fr3
	fneg fr3
	fadd fr14,fr3
	fadd fr3,fr2
	fmov.s fr2,@r15
	jsr @r13
	add 0x04,r4

loc_8C1060B8:
	jsr @r12
	nop
	tst r0,r0
	bt loc_8C106094
	add 0x08,r15
	lds.l @r15+,pr
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C1060D2:
	mov.w @(loc_8C10614A,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov.b @(0x04,r4),r0
	add 0x01,r0 ; r0 set to 0x12d
	rts
	mov.b r0,@(0x04,r4)

;==============================================
loc_8C1060E0:
	mov.l @(0x18,r4),r3
	mov.b @(0x05,r3),r0
	add 0xFF,r0
	mov.b r0,@(0x05,r3)
	mov.l @(loc_8C106174,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;==============================================
loc_8c1060ee:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c106178,pc),r3
	mov 0x06,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c106136
	mov r0,r4
	mov.w @(loc_8c10614a,pc),r0
	mov 0x01,r3
	mov.l @(loc_8c10615c,pc),r1
	mov.l @(loc_8c10617c,pc),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.w @(loc_8C106150,pc),r0
	mov.l @r3,r2
	fldi1 fr3
	mov.l @(r0,r2),r3
	mov.w @(loc_8c10614c,pc),r0
	mov.w @(loc_8C106152,pc),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.w @(loc_8C106154,pc),r2
	mov.l @r15,r3
	mov.w @(loc_8C106156,pc),r0
	add r3,r2
	mov.l r2,@(r0,r4)
	mov 0x74,r0
	mov.l @r15,r3
	mov.l r3,@(0x18,r4)
	fmov.s fr3,@(r0,r4)

loc_8c106136:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C10613E:
	mov.w @(loc_8C10614A,pc),r0 ; r0 set to 0x12c
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	rts
	mov.b r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c106148:
	#data 0x00D8
loc_8C10614A:
	#data 0x012c
loc_8C10614C:
	#data 0x0084
loc_8C10614E:
	#data 0x0298
loc_8c106150:
	#data 0x0274
loc_8c106152:
	#data 0x0821
loc_8c106154:
	#data 0x0088
loc_8c106156:
	#data 0x00C8
	#align4

loc_8C106158:
	#data bank03.loc_8c0305Ca
loc_8C10615C:
	#data 0x8C26A908
loc_8C106160:
	#data loc_8c108060
loc_8C106164:
	#data loc_8c108192
loc_8C106168:
	#data loc_8c108086
loc_8C10616C:
	#data loc_8c1081E6
loc_8C106170:
	#data 0x3C4CCCCd
loc_8C106174:
	#data bank04.loc_8c0450C0
loc_8C106178:
	#data bank04.loc_8c044F12
loc_8C10617C:
	#data loc_8c10613e

;==============================================
loc_8C106180:
	mov.l @(0xE0,PC),r3
	mov.w @(0xD8,PC),r0
	mov.l @r3,r5
	mov.b @(r0,r5),r2
	tst r2,r2
	bt loc_8c106198
	mov.l @(0xD8,PC),r1
	mov.b @r1,r2
	tst r2,r2
	bf loc_8c10624a
	bra loc_8c1061aa
	nop

loc_8C106198:
	mov.w @(0xC4,PC),r0
	mov.b @(r0,r5),r0
	and 0x0F,r0
	cmp/eq 0x04,r0
	bf loc_8c1061a6
	bra loc_8c10624a
	nop

loc_8C1061A6:
	bra loc_8c1061aa
	nop

loc_8C1061AA:
	mov.l @(0xB8,PC),r3
	mov.w @(0xB0,PC),r1
	sts.l pr,@-r15
	mov.l @r3,r0
	mov.l @(0xBC,PC),r2
	mov.b @(r0,r1),r0
	mov 0x0F,r1
	mov.l @(0xB0,PC),r5
	and r0,r1
	add 0xFF,r1
	jsr @r2
	mov 0x03,r0
	mov r0,r2
	shll r0
	add r2,r0
	shll2 r0
	add r0,r5
	mov.w @(0x92,PC),r0
	mov.l @(r0,r4),r1
	tst r1,r1
	bf loc_8c10620c
	mova @(0x9C,PC),r0
	fmov @r5,fr2
	fmov @r0,fr4
	mov 0x78,r0
	fmov @(r0,r4),fr3
	mov 0x50,r0
	mov 0x14,r2
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r4)
	mov 0x7C,r0
	fmov @(r0,r4),fr3
	mov 0x04,r0
	fmov @(r0,r5),fr2
	mov 0x54,r0
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r4)
	add 0x2C,r0
	fmov @(r0,r4),fr3
	mov 0x08,r0
	fmov @(r0,r5),fr2
	mov 0x58,r0
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x56,PC),r0
	mov.l r2,@(r0,r4)

loc_8C10620C:
	mov.w @(0x52,PC),r0
	mov.l @(r0,r4),r3
	tst r3,r3
	bt loc_8c106244
	mov.l @(r0,r4),r3
	mov 0x50,r1
	add r4,r1
	add 0xFF,r3
	mov.l r3,@(r0,r4)
	mov 0x78,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	mov 0x54,r1
	add r4,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x7C,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	mov 0x58,r1
	add r4,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	add 0x04,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
 
loc_8C106244:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C10624A:
	mov 0x23,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(0x24,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10625e:
	#data 0x00AC
loc_8c106260:
	#data 0x0098
loc_8c106262:
	#data 0x00D8
	#align4

loc_8c106264:
	#data 0x8C26823c
loc_8c106268:
	#data 0x8C289628
loc_8C10626C:
	#data bank13.loc_8c13dd10
loc_8C106270:
	#data bank12.loc_8c1292D4
loc_8C106274:
	#data 0x41A00000
loc_8C106278:
	#data bank16.loc_8c1658A8

;==============================================
loc_8C10627C:
	mov 0x07,r1 ; r1 set to 0x07
	mov.l @(loc_8C106350,pc),r3 ; r3 set to 0x8C1292D4
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C10634C,pc),r5 ; r5 set to 0x8C13DD10
	sts.l pr,@-r15
	mov.b @(0x07,r4),r0
	add 0x01,r0
	mov.b r0,@(0x07,r4)
	mov 0x03,r0 ; r0 set to 0x03
	mov.b @r1,r1
	jsr @r3
	extu.b r1,r1
	mov.b r0,@(0x07,r4)
	mov.b @(0x07,r4),r0
	extu.b r0,r0 ; r0 set to 0x03
	mov r0,r3 ; r3 set to 0x03
	shll r0 ; r0 set to 0x06
	add r3,r0 ; r0 set to 0x09
	shll2 r0 ; r0 set to 0x24
	add r0,r5 ; r5 set to 0x8C13DD34
	mova @(loc_8C106354,pc),r0  ; r0 set to 0x8C106354
	fmov.s @r5,fr2
	fmov.s @r0,fr4
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???
	mov 0x50,r0 ; r0 set to 0x50
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s @(r0,r4),fr3
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @(r0,r5),fr2
	mov 0x54,r0 ; r0 set to 0x54
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r4)
	add 0x2C,r0 ; r0 set to 0x80
	fmov.s @(r0,r4),fr3
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s @(r0,r5),fr2
	mov 0x58,r0 ; r0 set to 0x58
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x14,r3 ; r3 set to 0x14
	mov.w @(loc_8C106348,pc),r0 ; r0 set to 0xD8
	mov.l r3,@(r0,r4)
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r4),r3 ; r3 ??? bc r4 is ???
	add 0x01,r3
	mov.b r3,@(r0,r4)
	lds.l @r15+,pr

loc_8C1062E6:
	mov.w @(loc_8C106348,pc),r0 ; r0 set to 0xD8, r0 set to 0xD8
	mov.l @(r0,r4),r3
	tst r3,r3
	bt loc_8C106320
	mov.l @(r0,r4),r3
	mov 0x50,r1 ; r1 set to 0x50, r1 set to 0x50
	add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???
	add 0xFF,r3
	mov.l r3,@(r0,r4)
	mov 0x78,r0 ; r0 set to 0x78, r0 set to 0x78
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	mov 0x54,r1 ; r1 set to 0x54, r1 set to 0x54
	add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x7C,r0 ; r0 set to 0x7C, r0 set to 0x7c
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	mov 0x58,r1 ; r1 set to 0x58, r1 set to 0x58
	add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x80, r0 set to 0x80
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	bra loc_8C106326
	fmov.s fr2,@(r0,r4)

loc_8C106320:
	mov 0x23,r0 ; r0 set to 0x23
	mov 0x00,r2 ; r2 set to 0x00
	mov.b r2,@(r0,r4)

loc_8C106326:
	rts
	nop

;==============================================
loc_8C10632A:
	mov.l @(0x2C,PC),r3
	mov.w @(0x1A,PC),r1
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	and 0x0F,r0
	cmp/eq 0x00,r0
	bt loc_8c106344
	cmp/eq 0x04,r0
	bf loc_8c106340
	bra loc_8c1063f8
	nop

loc_8C106340:
	bra loc_8c10635c
	nop

loc_8C106344:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C106348:
	#data 0x00D8
loc_8C10634a:
	#data 0x0098
	#align4

loc_8C10634C:
	#data bank13.loc_8c13dd10
loc_8C106350:
	#data bank12.loc_8c1292D4
loc_8C106354:
	#data 0x41A00000
loc_8C106358:
	#data 0x8C26823c

;==============================================
loc_8C10635C:
	mov.l @(0x164,PC),r3
	mov 0x0F,r7
	mov.w @(0x156,PC),r0
	mov.l @r3,r6
	mov.l @(0x158,PC),r5
	mov.b @(r0,r6),r2
	tst r7,r2
	bt loc_8c1063bc
	mov.b @(r0,r6),r2
	add 0x40,r0
	and r7,r2
	add 0xFF,r2
	mov r2,r1
	shll r2
	add r1,r2
	shll2 r2
	add r2,r5
	mov.l @(r0,r4),r2
	tst r2,r2
	bf loc_8c1063bc
	mova @(0x140,PC),r0
	fmov @r5,fr2
	fmov @r0,fr4
	mov 0x78,r0
	fmov @(r0,r4),fr3
	mov 0x50,r0
	mov 0x14,r2
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r4)
	mov 0x7C,r0
	fmov @(r0,r4),fr3
	mov 0x04,r0
	fmov @(r0,r5),fr2
	mov 0x54,r0
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r4)
	add 0x2C,r0
	fmov @(r0,r4),fr3
	mov 0x08,r0
	fmov @(r0,r5),fr2
	mov 0x58,r0
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x100,PC),r0
	mov.l r2,@(r0,r4)

loc_8C1063BC:
	mov.w @(0xFC,PC),r0
	mov.l @(r0,r4),r3
	tst r3,r3
	bt loc_8c1063f4
	mov.l @(r0,r4),r3
	mov 0x50,r1
	add r4,r1
	add 0xFF,r3
	mov.l r3,@(r0,r4)
	mov 0x78,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	mov 0x54,r1
	add r4,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x7C,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	mov 0x58,r1
	add r4,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	add 0x04,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)

loc_8C1063F4:
	rts
	nop

;==============================================
loc_8C1063F8:
	mov 0x23,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(0xC8,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

loc_8C10640C:
	mov 0x07,r1 ; r1 set to 0x07
	mov.l @(loc_8C1064D0,pc),r3 ; r3 set to 0x8C1292D4
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C1064C0,pc),r5 ; r5 set to 0x8C13DDC0
	sts.l pr,@-r15
	mov.b @(0x07,r4),r0
	add 0x01,r0
	mov.b r0,@(0x07,r4)
	mov 0x03,r0 ; r0 set to 0x03
	mov.b @r1,r1
	jsr @r3
	extu.b r1,r1
	mov.b r0,@(0x07,r4)
	mov.b @(0x07,r4),r0
	extu.b r0,r0 ; r0 set to 0x03
	mov r0,r3 ; r3 set to 0x03
	shll r0 ; r0 set to 0x06
	add r3,r0 ; r0 set to 0x09
	shll2 r0 ; r0 set to 0x24
	add r0,r5 ; r5 set to 0x8C13DDE4
	mova @(loc_8C1064C8,pc),r0  ; r0 set to 0x8C1064C8
	fmov.s @r5,fr2
	fmov.s @r0,fr4
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???
	mov 0x50,r0 ; r0 set to 0x50
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s @(r0,r4),fr3
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @(r0,r5),fr2
	mov 0x54,r0 ; r0 set to 0x54
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r4)
	add 0x2C,r0 ; r0 set to 0x80
	fmov.s @(r0,r4),fr3
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s @(r0,r5),fr2
	mov 0x58,r0 ; r0 set to 0x58
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x14,r3 ; r3 set to 0x14
	mov.w @(loc_8C1064BC,pc),r0 ; r0 set to 0xD8
	mov.l r3,@(r0,r4)
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r4),r3 ; r3 ??? bc r4 is ???
	add 0x01,r3
	mov.b r3,@(r0,r4)
	lds.l @r15+,pr

loc_8C106476:
	mov.w @(loc_8C1064BC,pc),r0 ; r0 set to 0xD8, r0 set to 0xD8
	mov.l @(r0,r4),r3
	tst r3,r3
	bt loc_8C1064B0
	mov.l @(r0,r4),r3
	mov 0x50,r1 ; r1 set to 0x50, r1 set to 0x50
	add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???
	add 0xFF,r3
	mov.l r3,@(r0,r4)
	mov 0x78,r0 ; r0 set to 0x78, r0 set to 0x78
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	mov 0x54,r1 ; r1 set to 0x54, r1 set to 0x54
	add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x7C,r0 ; r0 set to 0x7C, r0 set to 0x7c
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	mov 0x58,r1 ; r1 set to 0x58, r1 set to 0x58
	add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x80, r0 set to 0x80
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	bra loc_8C1064B6
	fmov.s fr2,@(r0,r4)

loc_8C1064B0:
	mov 0x23,r0 ; r0 set to 0x23
	mov 0x00,r2 ; r2 set to 0x00
	mov.b r2,@(r0,r4)

loc_8C1064B6:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1064Ba:
	#data 0x0098
loc_8C1064BC:
	#data 0x00D8
	#align4

loc_8C1064C0:
	#data bank13.loc_8c13ddC0
loc_8C1064C4:
	#data 0x8C26823c
loc_8C1064C8:
	#data 0x41A00000
loc_8C1064CC:
	#data bank16.loc_8c1658B0
loc_8C1064D0:
	#data bank12.loc_8c1292D4

;==============================================
loc_8C1064D4:
	mov.l @(0xD0,PC),r3
	mov.w @(0xC8,PC),r1
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	and 0x0F,r0
	cmp/eq 0x00,r0
	bt loc_8c1064ee
	cmp/eq 0x04,r0
	bf loc_8c1064ea
	bra loc_8c10658e
	nop

loc_8C1064EA:
	bra loc_8c1064f2
	nop

loc_8C1064EE:
	rts
	nop

;==============================================
loc_8C1064F2:
	mov.l @(0xB4,PC),r3
	mov 0x0F,r7
	mov.w @(0xA8,PC),r0
	mov.l @r3,r6
	mov.l @(0xB0,PC),r5
	mov.b @(r0,r6),r2
	tst r7,r2
	bt loc_8c106552
	mov.b @(r0,r6),r2
	add 0x40,r0
	and r7,r2
	add 0xFF,r2
	mov r2,r1
	shll r2
	add r1,r2
	shll2 r2
	add r2,r5
	mov.l @(r0,r4),r2
	tst r2,r2
	bf loc_8c106552
	mova @(0x94,PC),r0
	fmov @r5,fr2
	fmov @r0,fr4
	mov 0x78,r0
	fmov @(r0,r4),fr3
	mov 0x5C,r0
	mov 0x14,r2
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r4)
	mov 0x7C,r0
	fmov @(r0,r4),fr3
	mov 0x04,r0
	fmov @(r0,r5),fr2
	mov 0x60,r0
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r4)
	add 0x20,r0
	fmov @(r0,r4),fr3
	mov 0x08,r0
	fmov @(r0,r5),fr2
	mov 0x68,r0
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r4)
	add 0x70,r0
	mov.l r2,@(r0,r4)


loc_8C106552:
	mov.w @(0x4E,PC),r0
	mov.l @(r0,r4),r3
	tst r3,r3
	bt loc_8c10658a
	mov.l @(r0,r4),r3
	mov 0x5C,r1
	add r4,r1
	add 0xFF,r3
	mov.l r3,@(r0,r4)
	mov 0x78,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	mov 0x60,r1
	add r4,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x7C,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	mov 0x68,r1
	add r4,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	add 0x04,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)

loc_8C10658A:
	rts
	nop

;==============================================
loc_8C10658E:
	mov 0x23,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(0x1C,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1065a2:
	#data 0x0098
loc_8c1065a4:
	#data 0x00D8
	#align4

loc_8C1065A8:
	#data 0x8C26823c
loc_8C1065AC:
	#data bank13.loc_8c13ddF0
loc_8C1065B0:
	#data 0x41A00000
loc_8C1065B4:
	#data bank16.loc_8c1658B8

;==============================================
loc_8C1065B8:
	mov 0x07,r1 ; r1 set to 0x07
	mov.l @(loc_8C10666C,pc),r3 ; r3 set to 0x8C1292D4
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C106668,pc),r5 ; r5 set to 0x8C13DDF0
	sts.l pr,@-r15
	mov.b @(0x07,r4),r0
	add 0x01,r0
	mov.b r0,@(0x07,r4)
	mov 0x03,r0 ; r0 set to 0x03
	mov.b @r1,r1
	jsr @r3
	extu.b r1,r1
	mov.b r0,@(0x07,r4)
	mov.b @(0x07,r4),r0
	extu.b r0,r0 ; r0 set to 0x03
	mov r0,r3 ; r3 set to 0x03
	shll r0 ; r0 set to 0x06
	add r3,r0 ; r0 set to 0x09
	shll2 r0 ; r0 set to 0x24
	add r0,r5 ; r5 set to 0x8C13DE14
	mova @(loc_8C106670,pc),r0  ; r0 set to 0x8C106670
	fmov.s @r5,fr2
	fmov.s @r0,fr4
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???
	mov 0x5C,r0 ; r0 set to 0x5c
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s @(r0,r4),fr3
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @(r0,r5),fr2
	mov 0x60,r0 ; r0 set to 0x60
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r4)
	add 0x20,r0 ; r0 set to 0x80
	fmov.s @(r0,r4),fr3
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s @(r0,r5),fr2
	mov 0x68,r0 ; r0 set to 0x68
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r4)
	add 0x70,r0 ; r0 set to 0xD8
	mov 0x14,r3 ; r3 set to 0x14
	mov.l r3,@(r0,r4)
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r4),r3 ; r3 ??? bc r4 is ???
	add 0x01,r3
	mov.b r3,@(r0,r4)
	lds.l @r15+,pr

loc_8C106622:
	mov.w @(loc_8C106666,pc),r0 ; r0 set to 0xD8, r0 set to 0xD8
	mov.l @(r0,r4),r3
	tst r3,r3
	bt loc_8C10665c
	mov.l @(r0,r4),r3
	mov 0x5C,r1 ; r1 set to 0x5C, r1 set to 0x5c
	add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???
	add 0xFF,r3
	mov.l r3,@(r0,r4)
	mov 0x78,r0 ; r0 set to 0x78, r0 set to 0x78
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60, r1 set to 0x60
	add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x7C,r0 ; r0 set to 0x7C, r0 set to 0x7c
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	mov 0x68,r1 ; r1 set to 0x68, r1 set to 0x68
	add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x80, r0 set to 0x80
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	bra loc_8C106662
	fmov.s fr2,@(r0,r4)

loc_8C10665C:
	mov 0x23,r0 ; r0 set to 0x23
	mov 0x00,r2 ; r2 set to 0x00
	mov.b r2,@(r0,r4)

loc_8C106662:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C106666:
	#data 0x00D8
	#align4

loc_8C106668:
	#data bank13.loc_8c13ddF0
loc_8C10666C:
	#data bank12.loc_8c1292D4
loc_8C106670:
	#data 0x41A00000

;==============================================
loc_8C106674:
	mov.l r14,@-r15
	mov 0x06,r5 ; r5 set to 0x06
	mov.l r13,@-r15
	mov 0x01,r6 ; r6 set to 0x01
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C1067AC,pc),r10 ; r10 set to 0x8C044F12
	jsr @r10
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C10678a
	mov r0,r14
	mov.w @(loc_8C10679E,pc),r0 ; r0 set to 0x12c
	mov 0x01,r12 ; r12 set to 0x01
	mov.l @(loc_8C1067B0,pc),r3 ; r3 set to 0x8C1067C0
	mov 0x47,r2 ; r2 set to 0x47
	mov.b r12,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(loc_8C1067B4,pc),r9 ; r9 set to 0x8C26A908
	mov 0x00,r13 ; r13 set to 0x00
	mov.b r12,@(r0,r14)
	mov 0x22,r0 ; r0 set to 0x22
	mov.l r3,@(0x10,r14)
	mov.b r2,@(r0,r14)
	mov.l @r9,r3 ; r3 ??
	mov.w @(loc_8C1067A0,pc),r0 ; r0 set to 0x11c
	mov.l @r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(loc_8C1067B8,pc),r8 ; r8 set to 0x8C26A518
	mov.l @(r0,r2),r1
	mov.w @(loc_8C1067A2,pc),r0 ; r0 set to 0x84
	fldi0 fr15
	mov.l r1,@(r0,r14)
	mov 0x0C,r0 ; r0 set to 0x0c
	fmov.s @(r0,r8),fr3
	mov 0x34,r0 ; r0 set to 0x34
	mov.w @(loc_8C1067A4,pc),r11 ; r11 set to 0xC01
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr15,@(r0,r14)
	mov.w @(loc_8C1067A6,pc),r0 ; r0 set to 0xCc
	mov.l r11,@(r0,r14)
	mov r13,r0 ; r0 set to 0x00
	nop
	mov.w r0,@(0x1C,r14)
	mov.w r0,@(0x1E,r14)
	mov.l @(loc_8C1067BC,pc),r3 ; r3 set to 0x8C108210
	mov.w @(loc_8C1067A2,pc),r0 ; r0 set to 0x84
	jsr @r3
	mov.l @(r0,r14),r4 ; r4 ??? bc r14 is ???
	bsr loc_8C1060Ee
	mov r14,r4
	mov 0x06,r5 ; r5 set to 0x06
	mov r12,r6 ; r6 set to 0x01
	jsr @r10
	mov r13,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C10678a
	mov r0,r14 ; r14 set to 0x84
	mov.w @(loc_8C10679E,pc),r0 ; r0 set to 0x12c
	mov 0x02,r3 ; r3 set to 0x02
	mov.l @(loc_8C1067B0,pc),r2 ; r2 set to 0x8C1067C0
	mov.b r12,@(r0,r14)  ; r14 ??
	mov 0x20,r0 ; r0 set to 0x20
	mov.b r3,@(r0,r14)
	mov 0x22,r0 ; r0 set to 0x22
	mov.l r2,@(0x10,r14)
	mov 0x4A,r3 ; r3 set to 0x4a
	mov.b r3,@(r0,r14)
	mov.l @r9,r2 ; r2 ??
	mov.w @(loc_8C1067A8,pc),r0 ; r0 set to 0x128
	mov.l @r2,r3 ; r3 ??? bc r2 is ???
	mov.l @(r0,r3),r1
	mov.w @(loc_8C1067A2,pc),r0 ; r0 set to 0x84
	mov.l r1,@(r0,r14)
	mov 0x0C,r0 ; r0 set to 0x0c
	fmov.s @(r0,r8),fr3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr15,@(r0,r14)
	mov.w @(loc_8C1067A6,pc),r0 ; r0 set to 0xCc
	mov.l r11,@(r0,r14)
	mov r13,r0 ; r0 set to 0x00
	nop
	mov.w r0,@(0x1C,r14)
	mov.w r0,@(0x1E,r14)
	mov.l @(loc_8C1067BC,pc),r3 ; r3 set to 0x8C108210
	mov.w @(loc_8C1067A2,pc),r0 ; r0 set to 0x84
	jsr @r3
	mov.l @(r0,r14),r4 ; r4 ??? bc r14 is ???
	mov 0x06,r5 ; r5 set to 0x06
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r10
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C10678a
	mov r0,r14 ; r14 set to 0x84
	mov.w @(loc_8C10679E,pc),r0 ; r0 set to 0x12c
	mov.l @(loc_8C1067B0,pc),r3 ; r3 set to 0x8C1067C0
	mov.b r12,@(r0,r14)  ; r14 ??
	mov 0x20,r0 ; r0 set to 0x20
	mov.b r13,@(r0,r14)
	mov.l r3,@(0x10,r14)
	mov.l @r9,r2
	mov.w @(loc_8C1067AA,pc),r0 ; r0 set to 0x124
	mov.l @r2,r3 ; r3 ??? bc r2 is ???
	mov.l @(r0,r3),r1
	mov.w @(loc_8C1067A2,pc),r0 ; r0 set to 0x84
	mov.l r1,@(r0,r14)
	mov 0x0C,r0 ; r0 set to 0x0c
	fmov.s @(r0,r8),fr3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr15,@(r0,r14)
	mov.w @(loc_8C1067A6,pc),r0 ; r0 set to 0xCc
	mov.l r11,@(r0,r14)
	mov r13,r0 ; r0 set to 0x00
	nop
	mov.w r0,@(0x1C,r14)
	mov.w r0,@(0x1E,r14)
	lds.l @r15+,pr
	mov.w @(loc_8C1067A2,pc),r0 ; r0 set to 0x84
	mov.l @(loc_8C1067BC,pc),r3 ; r3 set to 0x8C108210
	fmov.s @r15+,fr15
	mov.l @(r0,r14),r4 ; r4 ??? bc r14 is ???
	mov.l @r15+,r8 ; r8 ??? bc r15 is ???
	mov.l @r15+,r9 ; r9 ??? bc r15 is ???
	mov.l @r15+,r10 ; r10 ??? bc r15 is ???
	mov.l @r15+,r11 ; r11 ??? bc r15 is ???
	mov.l @r15+,r12 ; r12 ??? bc r15 is ???
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	jmp @r3
	mov.l @r15+,r14

loc_8C10678A:
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C10679E:
	#data 0x012c
loc_8C1067A0:
	#data 0x011c
loc_8C1067A2:
	#data 0x0084
loc_8C1067A4:
	#data 0x0C01
loc_8C1067A6:
	#data 0x00Cc
loc_8C1067A8:
	#data 0x0128
loc_8C1067AA:
	#data 0x0124
	#align4

loc_8C1067AC:
	#data bank04.loc_8c044F12
loc_8C1067B0:
	#data loc_8c1067C0
loc_8C1067B4:
	#data 0x8C26A908
loc_8C1067B8:
	#data 0x8C26A518
loc_8C1067BC:
	#data loc_8c108210

;==============================================
loc_8C1067C0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0xE0,PC),r2
	mov 0x00,r13
	mov.w @(0xD0,PC),r0
	mov r4,r14
	mov.l @r2,r3
	fldi1 fr15
	mov.b @(r0,r3),r1
	mov.w @(0xC8,PC),r0
	tst r1,r1
	bt.s loc_8c1067fc
	mov.b r1,@(r0,r14)
	mov.w @(0xBE,PC),r1
	mov.l @r2,r0
	mov.b @(r0,r1),r0
	and 0x0F,r0
	cmp/eq 0x01,r0
	bf loc_8c10682c
	mov.l @(0xC0,PC),r3
	mov.b @r3,r1
	tst r1,r1
	bt loc_8c10682c

loc_8C1067FC:
	mov.w @(0xAC,PC),r0
	fldi0 fr4
	mov.b r13,@(r0,r14)
	mov 0x78,r0
	fmov fr4,@(r0,r14)
	mov 0x7C,r0
	fmov fr4,@(r0,r14)
	add 0x04,r0
	fmov fr15,@(r0,r14)
	mov r13,r0
	nop
	mov.b r0,@(0x7,r14)
	mov 0x23,r0
	mov.b r13,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c106826
	bra loc_8c106976
	nop

loc_8C106826:
	mov.w @(0x84,PC),r0
	bra loc_8c106976
	mov.l r13,@(r0,r14)

loc_8C10682C:
	bsr loc_8c106180
	mov r14,r4
	mov 0x20,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c1068fc
	mov.w @(0x1E,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c106854
	mov.w @(0x64,PC),r3
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bt loc_8c10685c
	bra loc_8c106862
	nop

loc_8C106854:
	mov.w @(0x1E,r14),r0
	mov 0x28,r3
	cmp/ge r3,r0
	bf loc_8c106862

loc_8C10685C:
	mov r13,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8C106862:
	mov.w @(0x4C,PC),r0
	mov.l @(0x54,PC),r3
	mov.l @(r0,r14),r5
	mov 0x22,r0
	mov.b @(r0,r14),r2
	mov.l @r3,r4
	extu.b r2,r2
	mov.l @r4,r4
	shll2 r2
	add r2,r4
	mov.l @(0x48,PC),r2
	jsr @r2
	mov.l @(0x4,r4),r4
	mova @(0x50,PC),r0
	mov.l @(0x4C,PC),r13
	fmov @r0,fr13
	mova @(0x50,PC),r0
	mov.l @(0x3C,PC),r11
	mov.l @(0x40,PC),r12
	bra loc_8c1068f4
	fmov @r0,fr14

loc_8C10688C:
	mov r15,r4
	mov r15,r5
	jsr @r13
	add 0x04,r4
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c1068d8
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	bra loc_8c1068e2
	fmul fr13,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1068aa:
	#data 0x0098
loc_8c1068ac:
	#data 0x012c
loc_8c1068ae:
	#data 0x00d0
loc_8c1068b0:
	#data 0x00a0
loc_8c1068b2:
	#data 0x0084
	#align4

loc_8c1068b4:
	#data 0x8C26823c
loc_8c1068b8:
	#data 0x8C2895F6
loc_8c1068bc:
	#data 0x8C26A908
loc_8C1068C0:
	#data loc_8c108060
loc_8C1068C4:
	#data loc_8c108086
loc_8C1068C8:
	#data loc_8c1081E6
loc_8C1068CC:
	#data loc_8c108192
loc_8C1068D0:
	#data 0x3BCCCCCd
loc_8C1068D4:
	#data 0x3CCCCCCd

;==============================================
loc_8C1068D8:
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr14,fr3

loc_8C1068E2:
	fneg fr3
	fadd fr15,fr3
	fmov @r15,fr2
	mov r15,r4
	mov r15,r5
	fadd fr3,fr2
	fmov fr2,@r15
	jsr @r12
	add 0x04,r4

loc_8C1068F4:
	jsr @r11
	nop
	tst r0,r0
	bt loc_8c10688c

loc_8C1068FC:
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c106928
	mov.b @(0x5,r14),r0
	mov 0x02,r3
	extu.b r0,r0
	cmp/ge r3,r0
	bt loc_8c106928
	mov.w @(0x76,PC),r0
	mov.l @(r0,r14),r1
	tst r1,r1
	bt loc_8c106920
	mov.l @(r0,r14),r2
	add 0xFF,r2
	bra loc_8c106928
	mov.l r2,@(r0,r14)

loc_8C106920:
	mov 0x28,r2
	mov.l r2,@(r0,r14)
	bsr loc_8c105eec
	mov r14,r4

loc_8C106928:
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c106976
	mov.b @(0x5,r14),r0
	mov 0x03,r3
	extu.b r0,r0
	cmp/ge r3,r0
	bt loc_8c106954
	mov.w @(0x4A,PC),r0
	mov.l @(r0,r14),r1
	tst r1,r1
	bt loc_8c10694c
	mov.l @(r0,r14),r2
	add 0xFF,r2
	bra loc_8c106954
	mov.l r2,@(r0,r14)

loc_8C10694C:
	mov 0x0A,r2
	mov.l r2,@(r0,r14)
	bsr loc_8c10698e
	mov r14,r4

loc_8C106954:
	mov.b @(0x6,r14),r0
	mov 0x03,r3
	extu.b r0,r0
	cmp/ge r3,r0
	bt loc_8c106976
	mov.w @(0x2A,PC),r0
	mov.l @(r0,r14),r1
	tst r1,r1
	bt loc_8c10696e
	mov.l @(r0,r14),r2
	add 0xFF,r2
	bra loc_8c106976
	mov.l r2,@(r0,r14)


loc_8C10696E:
	mov 0x32,r2
	mov.l r2,@(r0,r14)
	bsr loc_8c106b80
	mov r14,r4

loc_8C106976:
	add 0x08,r15
	lds.l @r15+,pr
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10698a:
	#data 0x00D0
loc_8c10698c:
	#data 0x00D4

;==============================================
loc_8C10698E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x124,PC),r3
	mov 0x08,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c106a66
	mov r0,r14
	mov.w @(0x102,PC),r0
	mov 0x01,r3
	mov.l @(0x118,PC),r1
	mov.l @(0x110,PC),r2
	mov.b r3,@(r0,r14)
	add 0x04,r0
	mov.l r2,@(0x10,r14)
	mov.l @r1,r3
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	mov.w @(0xF0,PC),r0
	mov.w @(0xF0,PC),r2
	mov.l r3,@(r0,r14)
	add 0x48,r0
	mov.l r2,@(r0,r14)
	mov.w @(0xEA,PC),r2
	mov.l @r15,r3
	mov.w @(0xE8,PC),r0
	add r3,r2
	mov.l r2,@(r0,r14)
	mov.l @(0xF8,PC),r2
	mov.l @r15,r3
	jsr @r2
	mov.l r3,@(0x18,r14)
	mov r0,r1
	mov.l @(0xF0,PC),r3
	mov.w @(0xD8,PC),r0
	jsr @r3
	nop
	cmp/pz r0
	mov 0x34,r1
	mov r0,r4
	bf.s loc_8c1069ee
	add r14,r1
	bra loc_8c1069f8
	and 0x01,r0

loc_8C1069EE:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C1069F8:
	tst r0,r0
	bt loc_8c106a00
	bra loc_8c106a02
	mov r4,r2

loc_8C106A00:
	neg r4,r2

loc_8C106A02:
	lds r2,fpul
	fmov @r1,fr2
	mov.l @(0xC0,PC),r3
	float fpul,fr3
	fadd fr3,fr2
	jsr @r3
	fmov fr2,@r1
	mov r0,r1
	mov.l @(0xB8,PC),r2
	mov.w @(0xA0,PC),r0
	jsr @r2
	nop
	cmp/pz r0
	mov 0x38,r1
	mov r0,r4
	bf.s loc_8c106a28
	add r14,r1
	bra loc_8c106a32
	and 0x01,r0

loc_8C106A28:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C106A32:
	tst r0,r0
	bt loc_8c106a3a
	bra loc_8c106a3c
	mov r4,r3

loc_8C106A3A:
	neg r4,r3

loc_8C106A3C:
	lds r3,fpul
	mov 0x38,r0
	fmov @r1,fr2
	mov.l @(0x8C,PC),r3
	float fpul,fr3
	fadd fr3,fr2
	fmov fr2,@r1
	fmov @(r0,r14),fr2
	fmov @r3,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mova @(0x80,PC),r0
	fmov @r0,fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r14)
	mov 0x1E,r0
	mov.w r0,@(0x1C,r14)
	mov.l @(0x18,r14),r2
	mov.b @(0x5,r2),r0
	add 0x01,r0
	mov.b r0,@(0x5,r2)

loc_8C106A66:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C106A6E:
	mov r4,r3
	mov.l @(loc_8C106AD8,pc),r1 ; r1 set to 0x8C1658C0
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C106A80:
	mov.w @(loc_8C106AAC,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C106ADC,pc),r3 ; r3 set to 0x8C03319e
	add 0x01,r0 ; r0 set to 0x12d
	jsr @r3
	mov.b r0,@(0x04,r14)
	mova @(loc_8C106AE0,pc),r0  ; r0 set to 0x8C106AE0
	fmov.s @r0,fr3 ; r3 ??
	mov 0x64,r0 ; r0 set to 0x64
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C106AE4,pc),r0  ; r0 set to 0x8C106AE4
	fmov.s @r0,fr3
	mov 0x70,r0 ; r0 set to 0x70
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C106AAC:
	#data 0x012c
loc_8C106Aae:
	#data 0x0084
loc_8C106Ab0:
	#data 0x0401
loc_8C106Ab2:
	#data 0x0088
loc_8C106Ab4:
	#data 0x00C8
loc_8C106Ab6:
	#data 0x05DC
loc_8C106Ab8:
	#data 0x00F0
	#align4

loc_8C106ABC:
	#data bank04.loc_8c044F12
loc_8C106AC0:
	#data loc_8c106A6e
loc_8C106Ac4:
	#data 0x8C26A908
loc_8C106AC8:
	#data bank11.loc_8c11e730
loc_8C106ACC:
	#data bank12.loc_8c1292D4
loc_8C106Ad0:
	#data 0x8C26A5C0
loc_8C106Ad4:
	#data 0x44610000
loc_8C106AD8:
	#data bank16.loc_8c1658C0
loc_8C106ADC:
	#data bank03.loc_8c03319e
loc_8C106AE0:
	#data 0xC2C80000
loc_8C106AE4:
	#data 0xC1200000

;==============================================
loc_8C106AE8:
	mov.l @(0x128,PC),r5
	mov.w @(0x116,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @r5,r3
	mov.b @(r0,r3),r2
	mov.w @(0x10C,PC),r0
	tst r2,r2
	bt.s loc_8c106b14
	mov.b r2,@(r0,r14)
	mov.l @(0x114,PC),r3
	mov.w @(0x100,PC),r1
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	and 0x0F,r0
	cmp/eq 0x01,r0
	bf loc_8c106b20
	mov.l @(0x108,PC),r2
	mov.b @r2,r0
	tst r0,r0
	bt loc_8c106b20

loc_8C106B14:
	mov.w @(0xEE,PC),r0
	mov 0x00,r4
	mov.b r4,@(r0,r14)
	mov r4,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8C106B20:
	mov.w @(0xE0,PC),r0
	mov.l @r5,r3
	mov.b @(r0,r3),r2
	mov.w @(0xDC,PC),r0
	mov.b r2,@(r0,r14)
	bsr loc_8c10632a
	mov r14,r4
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bt loc_8c106b58
	mov.w @(0x1C,r14),r0
	mov 0x70,r1
	add r14,r1
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	mov 0x64,r0
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
	bra loc_8c106b66
	fmov fr2,@(r0,r14)

loc_8C106B58:
	mov.l @(0x18,r14),r2
	mov.b @(0x5,r2),r0
	add 0xFF,r0
	mov.b r0,@(0x5,r2)
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8C106B66:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C106B6C:
	mov.w @(loc_8C106C06,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov.b @(0x04,r4),r0
	add 0x01,r0 ; r0 set to 0x12d
	rts
	mov.b r0,@(0x04,r4)

;==============================================
loc_8C106B7A:
	mov.l @(loc_8C106C1C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;==============================================
loc_8C106B80:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x94,PC),r3
	mov 0x08,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bf.s loc_8c106ba0
	mov r0,r14
	bra loc_8c106d24              ; loc_8c106b80+0x1a4
	nop

loc_8C106BA0:
	mov.w @(0x62,PC),r0
	mov 0x01,r3
	mov.l @(0x7C,PC),r2
	mov.b r3,@(r0,r14)
	add 0xA0,r0
	mov.w @(0x5A,PC),r3
	mov.l r2,@(0x10,r14)
	mov.l r3,@(r0,r14)
	mov.w @(0x56,PC),r3
	mov.l @r15,r2
	mov.w @(0x54,PC),r0
	mov.l @(0x70,PC),r1
	add r2,r3
	mov.l r3,@(r0,r14)
	mov.l @r15,r2
	mov.w @(0x4C,PC),r0
	mov.l r2,@(0x18,r14)
	mov.l @r1,r3
	mov.l @(0x64,PC),r13
	mov.l @r3,r2
	mov.l @(r0,r2),r0
	mov.w @(0x42,PC),r2
	add r14,r2
	jsr @r13
	mov.l r0,@r2
	mov r0,r1
	mov.l @(0x58,PC),r3
	mov.w @(0x38,PC),r0
	jsr @r3
	nop
	cmp/pz r0
	mov 0x34,r8
	mov r0,r4
	bf.s loc_8c106bea
	add r14,r8
	bra loc_8c106bf4              ; loc_8c106b80+0x74
	and 0x01,r0

loc_8C106BEA:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C106BF4:
	tst r0,r0
	bt loc_8c106c38
	lds r4,fpul
	mov.l @(0x38,PC),r1
	float fpul,fr3
	lds r1,fpul
	bra loc_8c106c44
	fsts fpul,fr2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C106C04:
	#data 0x0098
loc_8C106C06:
	#data 0x012c
loc_8C106C08:
	#data 0x0415
loc_8C106C0a:
	#data 0x0088
loc_8C106C0c:
	#data 0x00C8
loc_8C106C0e:
	#data 0x0134
loc_8C106C10:
	#data 0x0084
loc_8C106C12:
	#data 0x1770
	#align4

loc_8C106C14:
	#data 0x8C26823c
loc_8C106C18:
	#data 0x8C2895F6
loc_8C106C1C:
	#data bank04.loc_8c0450C0
loc_8C106C20:
	#data bank04.loc_8c044F12
loc_8C106C24:
	#data loc_8c106D30
loc_8C106C28:
	#data 0x8C26A908
loc_8C106C2C:
	#data bank11.loc_8c11e730
loc_8C106C30:
	#data bank12.loc_8c1292D4
loc_8C106C34:
	#data 0x453B8000

;==============================================
loc_8C106C38:
	neg r4,r3
	mov.l @(0x130,PC),r1
	lds r3,fpul
	float fpul,fr3
	lds r1,fpul
	fsts fpul,fr2

loc_8C106C44:
	fadd fr2,fr3
	fmov @r8,fr2
	fadd fr3,fr2
	jsr @r13
	fmov fr2,@r8
	mov r0,r1
	mov.l @(0x11C,PC),r3
	mov.w @(0x10E,PC),r0
	jsr @r3
	nop
	mov r0,r4
	mova @(0x118,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	mov r0,r1
	fmov fr3,@(r0,r14)
	mov r4,r0
	nop
	cmp/pz r0
	bf.s loc_8c106c72
	add r14,r1
	bra loc_8c106c7c              ; loc_8c106b80+0xfc
	and 0x01,r0

loc_8C106C72:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C106C7C:
	tst r0,r0
	bt loc_8c106c84
	bra loc_8c106c86
	mov r4,r3

loc_8C106C84:
	neg r4,r3

loc_8C106C86:
	lds r3,fpul
	fmov @r1,fr2
	float fpul,fr3
	fadd fr3,fr2
	jsr @r13
	fmov fr2,@r1
	mov r0,r1
	mov.l @(0xD8,PC),r3
	mov.w @(0xCC,PC),r0
	jsr @r3
	nop
	cmp/pz r0
	mov 0x3C,r1
	mov r0,r4
	bf.s loc_8c106caa
	add r14,r1
	bra loc_8c106cb4              ; loc_8c106b80+0x134
	and 0x01,r0

loc_8C106CAA:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C106CB4:
	tst r0,r0
	bt loc_8c106cbc
	bra loc_8c106cbe
	mov r4,r2

loc_8C106CBC:
	neg r4,r2

loc_8C106CBE:
	lds r2,fpul
	mov 0x3C,r0
	fmov @r1,fr2
	float fpul,fr3
	fadd fr3,fr2
	fmov fr2,@r1
	mov.l @(0xAC,PC),r1
	fmov @(r0,r14),fr2
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	add 0x64,r0
	mov.w r0,@(0x1E,r14)
	mov.l @(0x18,r14),r3
	mov.b @(0x6,r3),r0
	add 0x01,r0
	jsr @r13
	mov.b r0,@(0x6,r3)
	cmp/pz r0
	bf loc_8c106cec
	bra loc_8c106cf6
	and 0x01,r0

loc_8C106CEC:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C106CF6:
	mov r0,r4
	tst r4,r4
	bt.s loc_8c106d02
	mov 0x44,r0
	bra loc_8c106d04              ; loc_8c106b80+0x184
	mov 0x00,r2


loc_8C106D02:
	mov.l @(0x78,PC),r2

loc_8C106D04:
	mov.l r2,@(r0,r14)
	mov 0x78,r0
	fldi1 fr4
	fmov fr4,@(r0,r14)
	mov 0x7C,r0
	fmov fr4,@(r0,r14)
	add 0x04,r0
	fmov fr4,@(r0,r14)
	mova @(0x68,PC),r0
	fmov @r0,fr5
	mov 0x50,r0
	fmov fr5,@(r0,r14)
	mov 0x54,r0
	fmov fr5,@(r0,r14)
	mov 0x58,r0
	fmov fr4,@(r0,r14)

loc_8C106D24:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C106D30:
	mov r4,r3
	mov.l @(loc_8C106D84,pc),r1 ; r1 set to 0x8C1658D0
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C106D42:
	mov.w @(loc_8C106D68,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8C106D90,pc),r5 ; r5 set to 0x8C106EC4
	mov.b r3,@(r0,r4)
	mov.b @(0x04,r4),r0
	mov.l @(loc_8C106D94,pc),r3 ; r3 set to 0x8C0305Ca
	add 0x01,r0 ; r0 set to 0x12d
	mov.b r0,@(0x04,r4)
	mova @(loc_8C106D88,pc),r0  ; r0 set to 0x8C106D88
	fmov.s @r0,fr3 ; r3 ??
	mov 0x64,r0 ; r0 set to 0x64
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C106D8C,pc),r0  ; r0 set to 0x8C106D8c
	fmov.s @r0,fr3
	mov 0x70,r0 ; r0 set to 0x70
	jmp @r3
	fmov.s fr3,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C106D64:
	#data 0x03E8
loc_8C106D66:
	#data 0x0960
loc_8C106D68:
	#data 0x012c
	#align4

loc_8C106D6c:
	#data 0xC53B8000
loc_8C106D70:
	#data bank12.loc_8c1292D4
loc_8C106D74:
	#data 0x447A0000
loc_8C106D78:
	#data 0xC4C80000
loc_8C106D7c:
	#data 0x00008000
loc_8C106D80:
	#data 0x40800000
loc_8C106D84:
	#data bank16.loc_8c1658D0
loc_8C106D88:
	#data 0xC2B40000
loc_8C106D8C:
	#data 0xC1200000
loc_8C106D90:
	#data loc_8c106EC4
loc_8C106D94:
	#data bank03.loc_8c0305Ca

;==============================================
loc_8C106D98:
	mov.l @(0x110,PC),r2
	mov.w @(0x104,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	mov.w @(0xFA,PC),r0
	tst r1,r1
	bt.s loc_8c106dc2
	mov.b r1,@(r0,r14)
	mov.w @(0xF0,PC),r1
	mov.l @r2,r0
	mov.b @(r0,r1),r0
	and 0x0F,r0
	cmp/eq 0x01,r0
	bf loc_8c106dce
	mov.l @(0xF4,PC),r3
	mov.b @r3,r1
	tst r1,r1
	bt loc_8c106dce

loc_8C106DC2:
	mov.w @(0xDE,PC),r0
	mov 0x00,r4
	mov.b r4,@(r0,r14)
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8C106DCE:
	bsr loc_8c1064d4
	mov r14,r4
	mov.b @(0x6,r14),r0
	mov 0x06,r1
	add r14,r1
	mov.l @(0xD8,PC),r3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x05,r0
	mov.b @r1,r1
	jsr @r3
	extu.b r1,r1
	mov.b r0,@(0x6,r14)
	extu.b r0,r0
	tst r0,r0
	bf loc_8c106e34
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/pz r0
	bf loc_8c106dfe
	bra loc_8c106e08
	and 0x0F,r0

loc_8C106DFE:
	not r0,r0
	add 0x01,r0
	and 0x0F,r0
	not r0,r0
	add 0x01,r0

loc_8C106E08:
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bf loc_8c106e34
	mov.b @(0x5,r14),r0
	mov.l @(0xA4,PC),r3
	xor 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.b @(0x5,r14),r0
	tst r0,r0
	bt.s loc_8c106e2a
	mov.l @r3,r4
	mov.w @(0x82,PC),r0
	mov.l @r4,r2
	mov.l @(r0,r2),r1
	bra loc_8c106e30
	nop

loc_8C106E2A:
	mov.w @(0x7A,PC),r0
	mov.l @r4,r2
	mov.l @(r0,r2),r1

loc_8C106E30:
	mov.w @(0x76,PC),r0
	mov.l r1,@(r0,r14)

loc_8C106E34:
	mov.w @(0x1E,r14),r0
	tst r0,r0
	bt loc_8c106e82
	mov.w @(0x1E,r14),r0
	mov 0x70,r1
	add r14,r1
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	mov 0x64,r0
	fmov @(r0,r14),fr2
	mov 0x08,r3
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
	cmp/gt r3,r0
	bt loc_8c106e9c
	mova @(0x54,PC),r0
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
	fsub fr4,fr3
	bra loc_8c106e9c
	fmov fr3,@(r0,r14)

loc_8C106E82:
	mov.l @(0x18,r14),r2
	mov 0x00,r5
	mov.l @(0x38,PC),r3
	mov r14,r4
	mov.b @(0x6,r2),r0
	add 0xFF,r0
	mov.b r0,@(0x6,r2)
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8C106E9C:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
#data 0x0098
#data 0x012c
#data 0x013C
#data 0x0134
#data 0x0084
	#align4

loc_8C106Eac:
	#data 0x8C26823c
loc_8C106EB0:
	#data 0x8C2895F6
loc_8C106EB4:
	#data bank12.loc_8c1292D4
loc_8C106EB8:
	#data 0x8C26A908
loc_8C106EBc:
	#data 0x3E000000
loc_8C106EC0:
	#data bank03.loc_8c0305Ca

;==============================================
loc_8C106EC4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r13
	mov.w @(0x1C,r13),r0
	mov.l @(loc_8C106F50,pc),r14 ; r14 set to 0x8C13DD40
	shll r0
	mov.l @(loc_8C106F54,pc),r3 ; r3 set to 0x8C26A908
	shll2 r0
	add r0,r14 ; r14 ??? bc r0 is ???
	mov.b @(0x05,r13),r0
	tst r0,r0
	bt/s loc_8C106EF2
	mov.l @r3,r12
	mov.w @(loc_8C106F48,pc),r0 ; r0 set to 0x84
	mov.l @(r0,r13),r5
	mov.w @(loc_8C106F4A,pc),r0 ; r0 set to 0x230
	bra loc_8C106EFa
	mov.l @r12,r2

loc_8C106EF2:
	mov.w @(loc_8C106F48,pc),r0 ; r0 set to 0x84
	mov.l @r12,r2
	mov.l @(r0,r13),r5
	mov.w @(loc_8C106F4C,pc),r0 ; r0 set to 0x138

loc_8C106EFA:
	mov.l @(loc_8C106F58,pc),r1 ; r1 set to 0x8C108060, r1 set to 0x8C108060
	jsr @r1
	mov.l @(r0,r2),r4
	mov.l @(loc_8C106F64,pc),r12 ; r12 set to 0x8C108086, r12 set to 0x8C108086
	mov r14,r13
	mov.l @(loc_8C106F60,pc),r11 ; r11 set to 0x8C108192, r11 set to 0x8C108192
	mov.l @(loc_8C106F5C,pc),r10 ; r10 set to 0x8C1081E6, r10 set to 0x8C1081E6
	bra loc_8C106F30
	add 0x04,r13

loc_8C106F0C:
	mov r15,r5
	add 0x04,r5
	jsr @r11
	mov r15,r4
	fmov.s @r15,fr2
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @r14,fr3
	mov r15,r5
	add 0x04,r5
	fadd fr3,fr2
	fmov.s fr2,@r15
	fmov.s @(r0,r15),fr1
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @r13,fr3
	fsub fr3,fr1
	fmov.s fr1,@(r0,r15)
	jsr @r10
	mov r15,r4

loc_8C106F30:
	jsr @r12
	nop
	tst r0,r0
	bt loc_8C106F0c
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C106F48:
	#data 0x0084
loc_8C106F4A:
	#data 0x0230
loc_8C106F4C:
	#data 0x0138
	#align4

loc_8C106F50:
	#data bank13.loc_8c13dd40
loc_8C106F54:
	#data 0x8C26A908
loc_8C106F58:
	#data loc_8c108060
loc_8C106F5C:
	#data loc_8c1081E6
loc_8C106F60:
	#data loc_8c108192
loc_8C106F64:
	#data loc_8c108086

;==============================================
loc_8C106F68:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov r14,r5
	mov.l @(loc_8C1070AC,pc),r1 ; r1 set to 0x8C1658E0
	extu.b r0,r0
	mov.l @(0x18,r14),r4
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C106F7E:
	mov.w @(0x11C,PC),r0
	mov.l r14,@-r15
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt.s loc_8c106f92
	mov r5,r14
	mov.w @(0x110,PC),r0
	mov 0x00,r2
	mov.l r2,@(r0,r14)

loc_8C106F92:
	mov.w @(0x10A,PC),r0
	mov.l @(r0,r14),r3
	add 0xFF,r3
	mov.l r3,@(r0,r14)
	add 0x01,r3
	tst r3,r3
	bf loc_8c106fae
	mov.l @(0x10C,PC),r5
	mov 0x01,r0
	mov.l @(0x10C,PC),r3
	mov r14,r4
	mov.b r0,@(0x4,r14)
	jmp @r3
	mov.l @r15+,r14

loc_8C106FAE:
	rts
	mov.l @r15+,r14

;==============================================
loc_8C106FB2:
	mov.w @(0xEC,PC),r0
	mov.l @(0x104,PC),r6
	mov.l @(r0,r5),r3
	mov.l @(0xFC,PC),r7
	shll2 r3
	shll r3
	shll r3
	add r3,r6
	mov.l @(r0,r5),r3
	add 0x54,r0
	shll2 r3
	shll r3
	shll2 r3
	add r3,r7
	mov 0x01,r3
	mov.b r3,@(r0,r5)
	mov.w @(0x1C,r5),r0
	shll r0
	add r0,r6
	mov.w @r6,r0
	mov.w r0,@(0x1E,r5)
	mov.w @(0x1C,r5),r0
	shll2 r0
	add r0,r7
	fmov @r7,fr3
	mov 0x74,r0
	fmov fr3,@(r0,r5)
	mov 0x02,r0
	mov.b r0,@(0x4,r5)
	mov 0x5C,r0
	fmov @(r0,r5),fr3
	mov 0x34,r0
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r5)
	mov 0x60,r0
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r5)

loc_8C107004:
	mov 0x5C,r0
	fmov @(r0,r5),fr3
	mov 0x34,r0
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r5)
	mov 0x60,r0
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r5)
	mov.w @(0x1E,r5),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r5)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c107042
	mov 0x01,r0
	mov.b r0,@(0x4,r5)
	mov 0x08,r3
	mov.w @(0x1C,r5),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r5)
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8c107042
	mov 0x03,r0
	mov.b r0,@(0x4,r5)
	mov 0x07,r0
	mov.w r0,@(0x1C,r5)

loc_8C107042:
	rts
	nop

;==============================================
loc_8C107046:
	mov.l r14,@-r15
	mov r5,r14
	sts.l pr,@-r15
	mov.l @(loc_8C1070B4,pc),r3 ; r3 set to 0x8C0305Ca
	mov 0x00,r5 ; r5 set to 0x00
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C1070A4,pc),r0 ; r0 set to 0x12c
	mov 0x00,r2 ; r2 set to 0x00
	mov.b r2,@(r0,r14)
	mov 0x04,r0 ; r0 set to 0x04
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C107064:
	mov.l @(loc_8C1070C0,pc),r3 ; r3 set to 0x8C0450C0
	mov r5,r4
	mov.l r5,@-r15
	jmp @r3
	add 0x04,r15

loc_8C10706E:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r13
	mov.w @(0x1C,r13),r0
	mov.l @(loc_8C1070C4,pc),r14 ; r14 set to 0x8C13DE20
	shll r0
	mov.l @(loc_8C1070C8,pc),r3 ; r3 set to 0x8C26A908
	shll2 r0
	add r0,r14 ; r14 ??? bc r0 is ???
	mov.w @(loc_8C1070A2,pc),r0 ; r0 set to 0xD8
	mov.l @(r0,r13),r2
	tst r2,r2
	bt/s loc_8C1070Cc
	mov.l @r3,r12
	mov.w @(loc_8C1070A6,pc),r0 ; r0 set to 0x84
	mov.l @(r0,r13),r5
	mov.w @(loc_8C1070A8,pc),r0 ; r0 set to 0x144
	bra loc_8C1070D4
	mov.l @r12,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C10709e:
	#data 0x022a
loc_8C1070a0:
	#data 0x00D4
loc_8C1070A2:
	#data 0x00D8
loc_8C1070A4:
	#data 0x012c
loc_8C1070A6:
	#data 0x0084
loc_8C1070A8:
	#data 0x0144
	#align4

loc_8C1070AC:
	#data bank16.loc_8c1658E0
loc_8C1070B0:
	#data loc_8c10706e
loc_8C1070B4:
	#data bank03.loc_8c0305Ca
loc_8C1070B8:
	#data bank13.loc_8c13deA0
loc_8C1070BC:
	#data bank13.loc_8c13deE0
loc_8C1070C0:
	#data bank04.loc_8c0450C0
loc_8C1070C4:
	#data bank13.loc_8c13de20
loc_8C1070C8:
	#data 0x8C26A908

;==============================================
loc_8C1070CC:
	mov.w @(loc_8C1071D8,pc),r0 ; r0 set to 0x84
	mov.l @r12,r2
	mov.l @(r0,r13),r5
	mov.w @(loc_8C1071DA,pc),r0 ; r0 set to 0x15c

loc_8C1070D4:
	mov.l @(loc_8C1071E4,pc),r1 ; r1 set to 0x8C108060, r1 set to 0x8C108060
	jsr @r1
	mov.l @(r0,r2),r4
	mov.l @(loc_8C1071F0,pc),r12 ; r12 set to 0x8C108086, r12 set to 0x8C108086
	mov r14,r13
	mov.l @(loc_8C1071EC,pc),r11 ; r11 set to 0x8C108192, r11 set to 0x8C108192
	mov.l @(loc_8C1071E8,pc),r10 ; r10 set to 0x8C1081E6, r10 set to 0x8C1081E6
	bra loc_8C10710a
	add 0x04,r13

loc_8C1070E6:
	mov r15,r5
	add 0x04,r5
	jsr @r11
	mov r15,r4
	fmov.s @r15,fr2
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @r14,fr3
	mov r15,r5
	add 0x04,r5
	fadd fr3,fr2
	fmov.s fr2,@r15
	fmov.s @(r0,r15),fr1
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @r13,fr3
	fsub fr3,fr1
	fmov.s fr1,@(r0,r15)
	jsr @r10
	mov r15,r4

loc_8C10710A:
	jsr @r12
	nop
	tst r0,r0
	bt loc_8C1070E6
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C107122:
	mov.l r14,@-r15
	mova @(loc_8C1071F4,pc),r0  ; r0 init to 0x8C1071F4
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov 0x00,r10 ; r10 set to 0x00
	mov.l r9,@-r15
	mov r10,r11 ; r11 set to 0x00
	mov.l r8,@-r15
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	fmov.s fr13,@-r15
	mov.w @(loc_8C1071DC,pc),r8 ; r8 set to 0x140
	sts.l pr,@-r15
	fmov.s @r0,fr13
	mova @(loc_8C1071F8,pc),r0  ; r0 set to 0x8C1071F8
	mov.l @(loc_8C1071FC,pc),r12 ; r12 set to 0x8C11E730
	mov r8,r9 ; r9 set to 0x140
	fmov.s @r0,fr14
	add 0x18,r9 ; r9 set to 0x158
	fldi1 fr15

loc_8C107150:
	mov.l @(loc_8C107200,pc),r3 ; r3 set to 0x8C044F12, r3 set to 0x8C044F12
	mov 0x07,r5 ; r5 set to 0x07, r5 set to 0x07
	mov 0x01,r6 ; r6 set to 0x01, r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00, r4 set to 0x00
	tst r0,r0
	bf/s loc_8C107164
	mov r0,r14 ; r14 set to 0x8C1071F8
	bra loc_8C10734e
	nop

loc_8C107164:
	mov.w @(loc_8C1071DE,pc),r0 ; r0 set to 0x12c
	mov 0x2F,r2 ; r2 set to 0x2f
	mov.l @(loc_8C107204,pc),r3 ; r3 set to 0x8C106F68
	mov.b r10,@(r0,r14)
	add 0xA0,r0 ; r0 set to 0xCc
	mov.l r3,@(0x10,r14)
	mov.l r2,@(r0,r14)
	mov 0x23,r0 ; r0 set to 0x23
	mov.b r11,@(r0,r14)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s fr15,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr15,@(r0,r14)
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	mov.w @(loc_8C1071E0,pc),r0 ; r0 set to 0xD4
	extu.b r3,r3
	shll2 r3
	shll r3
	mov.l r3,@(r0,r14)
	add 0x5C,r0 ; r0 set to 0x130
	mov.l r13,@(0x18,r14)
	mov.w @(r0,r13),r2 ; r2 ??? bc r13 is ???
	tst r2,r2
	bt/s loc_8C10719c
	mov 0x44,r0 ; r0 set to 0x44
	bra loc_8C10719e
	mov 0x00,r3

loc_8C10719C:
	mov.l @(loc_8C107208,pc),r3 ; r3 set to 0x8000

loc_8C10719E:
	mov.l @(loc_8C10720C,pc),r2 ; r2 set to 0x8C03319E, r2 set to 0x8C03319e
	jsr @r2
	mov.l r3,@(r0,r14)
	mov.w @(loc_8C1071E2,pc),r1 ; r1 set to 0xD8, r1 set to 0xD8
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???
	mov.l r0,@r1
	mov.w @(loc_8C1071E2,pc),r0 ; r0 set to 0xD8, r0 set to 0xD8
	mov.l @(r0,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???
	cmp/pz r0
	bf loc_8C1071B6
	bra loc_8C1071C0
	and 0x01,r0

loc_8C1071B6:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C1071C0:
	mov.w @(loc_8C1071E2,pc),r2 ; r2 set to 0xD8, r2 set to 0xD8
	mov.l @(loc_8C107210,pc),r1 ; r1 set to 0x8C26A908, r1 set to 0x8C26A908
	add r14,r2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???
	mov.l r0,@r2
	mov.w @(loc_8C1071E2,pc),r0 ; r0 set to 0xD8, r0 set to 0xD8
	mov.l @(r0,r14),r3
	tst r3,r3
	bt/s loc_8C107214
	mov.l @r1,r4
	mov.l @r4,r0 ; r0 ??? bc r4 is ???, r0 ??? bc r4 is ???
	bra loc_8C107218
	mov.l @(r0,r8),r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1071D8:
	#data 0x0084
loc_8C1071DA:
	#data 0x015c
loc_8C1071DC:
	#data 0x0140
loc_8C1071DE:
	#data 0x012c
loc_8C1071E0:
	#data 0x00D4
loc_8C1071E2:
	#data 0x00D8
	#align4

loc_8C1071E4:
	#data loc_8c108060
loc_8C1071E8:
	#data loc_8c1081E6
loc_8C1071EC:
	#data loc_8c108192
loc_8C1071F0:
	#data loc_8c108086
loc_8C1071F4:
	#data 0x40092492
loc_8C1071F8:
	#data 0x3FD55555
loc_8C1071FC:
	#data bank11.loc_8c11e730
loc_8C107200:
	#data bank04.loc_8c044F12
loc_8C107204:
	#data loc_8c106F68
loc_8C107208:
	#data 0x00008000
loc_8C10720C:
	#data bank03.loc_8c03319e
loc_8C107210:
	#data 0x8C26A908

;==============================================
loc_8C107214:
	mov.l @r4,r0
	mov.l @(r0,r9),r3

loc_8C107218:
	mov.w @(loc_8C10732E,pc),r0 ; r0 set to 0x84, r0 set to 0x84
	jsr @r12
	mov.l r3,@(r0,r14)
	mov r0,r4 ; r4 set to 0x84, r4 set to 0x84
	mov.w @(loc_8C107330,pc),r0 ; r0 set to 0x13E, r0 set to 0x13e
	mov.b @(r0,r13),r3
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	fmov.s @(r0,r13),fr2
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	extu.b r3,r3
	lds r3,fpul
	add r14,r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???
	mov.l r0,@-r15
	float fpul,fr3
	fmul fr2,fr3
	fmul fr14,fr3
	ftrc fr3,fpul
	mov r4,r0 ; r0 set to 0x84, r0 set to 0x84
	nop
	cmp/pz r0
	bf/s loc_8C107248
	sts fpul,r5
	bra loc_8C107252
	and 0x01,r0

loc_8C107248:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C107252:
	tst r0,r0
	bt loc_8C107262
	mov.l @(loc_8C107334,pc),r3 ; r3 set to 0x8C1292D4, r3 set to 0x8C1292D4
	mov r4,r1
	jsr @r3
	mov r5,r0
	bra loc_8C10726c
	mov r0,r3

loc_8C107262:
	mov.l @(loc_8C107334,pc),r2 ; r2 set to 0x8C1292D4
	mov r4,r1
	jsr @r2
	mov r5,r0
	neg r0,r3

loc_8C10726C:
	lds r3,fpul
	mov.l @r15+,r3
	float fpul,fr3
	fmov.s @r3,fr2 ; r2 ??? bc r3 is ???
	fadd fr3,fr2
	jsr @r12
	fmov.s fr2,@r3
	mov r0,r5
	mov.w @(loc_8C107332,pc),r0 ; r0 set to 0x13C, r0 set to 0x13c
	mov 0x60,r2 ; r2 set to 0x60, r2 set to 0x60
	mov r5,r1
	mov.b @(r0,r13),r3
	mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
	fmov.s @(r0,r13),fr2 ; r2 ??? bc r13 is ???, r2 ??? bc r13 is ???
	add r14,r2
	extu.b r3,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr2,fr3
	fmul fr13,fr3
	ftrc fr3,fpul
	sts fpul,r4
	mov r4,r0 ; r0 ??? bc r4 is ???, r0 ??? bc r4 is ???
	nop
	mov.l @(loc_8C107334,pc),r3 ; r3 set to 0x8C1292D4, r3 set to 0x8C1292D4
	jsr @r3
	nop
	lds r0,fpul
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fmov.s @r2,fr2
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@r2
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r13),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s @(r0,r14),fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r13),fr2
	fadd fr3,fr2
	jsr @r12
	fmov.s fr2,@(r0,r14)
	cmp/pz r0
	mov r14,r3
	mov r0,r4 ; r4 set to 0x38, r4 set to 0x38
	bf/s loc_8C1072D4
	add 0x40,r3
	bra loc_8C1072De
	and 0x01,r0

loc_8C1072D4:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C1072DE:
	tst r0,r0
	bt loc_8C1072E6
	bra loc_8C1072E8
	mov 0x00,r2

loc_8C1072E6:
	mov.l @(loc_8C107338,pc),r2 ; r2 set to 0x8000

loc_8C1072E8:
	jsr @r12
	mov.l r2,@r3
	cmp/pz r0
	bf/s loc_8C1072F6
	mov r0,r4
	bra loc_8C107300
	and 0x01,r0

loc_8C1072F6:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C107300:
	tst r0,r0
	bt/s loc_8C10730a
	mov 0x44,r0 ; r0 set to 0x44, r0 set to 0x44
	bra loc_8C10730c
	mov 0x00,r3

loc_8C10730A:
	mov.l @(loc_8C107338,pc),r3 ; r3 set to 0x8000

loc_8C10730C:
	jsr @r12
	mov.l r3,@(r0,r14)
	cmp/pz r0
	bf/s loc_8C10731a
	mov r0,r4
	bra loc_8C107324
	and 0x01,r0

loc_8C10731A:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C107324:
	tst r0,r0
	bt/s loc_8C10733c
	mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48
	bra loc_8C10733e
	mov 0x00,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C10732E:
	#data 0x0084
loc_8C107330:
	#data 0x013e
loc_8C107332:
	#data 0x013c
	#align4

loc_8C107334:
	#data bank12.loc_8c1292D4
loc_8C107338:
	#data 0x00008000

;==============================================
loc_8C10733C:
	mov.l @(loc_8C10736C,pc),r3 ; r3 set to 0x8000

loc_8C10733E:
	add 0x01,r11
	mov.l r3,@(r0,r14)
	mov 0x05,r2 ; r2 set to 0x05, r2 set to 0x05
	extu.b r11,r3 ; r3 ??? bc r11 is ???
	cmp/ge r2,r3
	bt loc_8C10734e
	bra loc_8C107150
	nop

loc_8C10734E:
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
loc_8C107366:
	bra loc_8C107122
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C10736C:
	#data 0x00008000

;==============================================
loc_8C107370:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r5,r14
	mov 0x10,r0 ; r0 set to 0x10
	mov.l @(loc_8C107438,pc),r3 ; r3 set to 0x8C044F12
	mov.l r4,@r15
	mov.l r6,@(0x04,r15)
	mov 0x01,r6 ; r6 set to 0x01
	mov.b @(r0,r15),r5
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bf/s loc_8C107392
	mov r0,r4 ; r4 set to 0x10
	bra loc_8C107484
	nop

loc_8C107392:
	mov.l @(loc_8C10743C,pc),r3 ; r3 set to 0x8C289650
	mov r4,r1
	mov.w @(loc_8C10742C,pc),r0 ; r0 set to 0x12c
	add 0x34,r1
	mov.b @r3,r2
	add 0x01,r2
	mov.b r2,@r3 ; r3 ??? bc r2 is ???
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8C107440,pc),r2 ; r2 set to 0x8C10748c
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @(loc_8C107444,pc),r3 ; r3 set to 0x8C1294C8
	mov.l @r15,r2 ; r2 ??? bc r15 is ???
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(loc_8C107448,pc),r2 ; r2 set to 0x8C26A908
	mov.w @(loc_8C107430,pc),r0 ; r0 set to 0xCc
	mov.w @(loc_8C10742E,pc),r1 ; r1 set to 0x419
	mov.l r1,@(r0,r4)
	mov.l @r2,r3 ; r3 ??
	mov.w @(loc_8C107432,pc),r0 ; r0 set to 0x17c
	mov.l @r3,r1 ; r1 ??? bc r3 is ???
	mov.l @(r0,r1),r3
	mov.w @(loc_8C107434,pc),r0 ; r0 set to 0x84
	mov.l r3,@(r0,r4)
	mov.l @(0x04,r15),r0 ; r0 ??? bc r15 is ???
	cmp/eq 0x09,r0
	bt loc_8C1073Ea
	cmp/eq 0x0A,r0
	bt loc_8C1073F8
	cmp/eq 0x0B,r0
	bt loc_8C107408
	cmp/eq 0x0C,r0
	bt loc_8C10740e
	cmp/eq 0x0D,r0
	bt loc_8C10741e
	cmp/eq 0x0E,r0
	bt loc_8C10745c
	cmp/eq 0x0F,r0
	bt loc_8C10746c
	cmp/eq 0x10,r0
	bt loc_8C107474
	bra loc_8C107484
	nop

loc_8C1073EA:
	tst r14,r14
	bt loc_8C1073F4
	mov.l @(loc_8C10744C,pc),r3 ; r3 set to 0x8000
	bra loc_8C107480
	nop

loc_8C1073F4:
	bra loc_8C107480
	mov 0x00,r3

loc_8C1073F8:
	tst r14,r14
	bt loc_8C107402
	mov.l @(loc_8C107450,pc),r1 ; r1 set to 0xA000
	bra loc_8C10746e
	nop

loc_8C107402:
	mov.l @(loc_8C107454,pc),r1 ; r1 set to 0xE000
	bra loc_8C10746e
	nop

loc_8C107408:
	mov.l @(loc_8C107458,pc),r3 ; r3 set to 0xC000
	bra loc_8C107480
	nop

loc_8C10740E:
	tst r14,r14
	bt loc_8C107418
	mov.l @(loc_8C107454,pc),r3 ; r3 set to 0xE000
	bra loc_8C107480
	nop

loc_8C107418:
	mov.l @(loc_8C107450,pc),r3 ; r3 set to 0xA000
	bra loc_8C107480
	nop

loc_8C10741E:
	tst r14,r14
	bt loc_8C107426
	bra loc_8C10746e
	mov 0x00,r1

loc_8C107426:
	mov.l @(loc_8C10744C,pc),r1 ; r1 set to 0x8000
	bra loc_8C10746e
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C10742C:
	#data 0x012c
loc_8C10742E:
	#data 0x0419
loc_8C107430:
	#data 0x00Cc
loc_8C107432:
	#data 0x017c
loc_8C107434:
	#data 0x0084
	#align4

loc_8C107438:
	#data bank04.loc_8c044F12
loc_8C10743C:
	#data 0x8C289650
loc_8C107440:
	#data loc_8c10748c
loc_8C107444:
	#data bank12.loc_8c1294C8
loc_8C107448:
	#data 0x8C26A908
loc_8C10744C:
	#data 0x00008000
loc_8C107450:
	#data 0x0000A000
loc_8C107454:
	#data 0x0000E000
loc_8C107458:
	#data 0x0000C000

;==============================================
loc_8C10745C:
	tst r14,r14
	bt loc_8C107466
	mov.w @(loc_8C10754E,pc),r3 ; r3 set to 0x2000
	bra loc_8C107480
	nop

loc_8C107466:
	mov.w @(loc_8C107550,pc),r3 ; r3 set to 0x6000
	bra loc_8C107480
	nop

loc_8c10746c:
	mov.w @(loc_8C107552,pc),r1

loc_8C10746E:
	mov 0x48,r0 ; r0 set to 0x48
	bra loc_8C107484
	mov.l r1,@(r0,r4)

loc_8C107474:
	tst r14,r14
	bt loc_8C10747e
	mov.w @(loc_8C107550,pc),r3 ; r3 set to 0x6000
	bra loc_8C107480
	nop

loc_8c10747e:
	mov.w @(loc_8c10754e,pc),r3

loc_8C107480:
	mov 0x48,r0 ; r0 set to 0x48
	mov.l r3,@(r0,r4)

loc_8C107484:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C10748C:
	sts.l pr,@-r15
	mov.w @(0x1C,r4),r0
	mov 0x0C,r3 ; r3 set to 0x0c
	mov.l @(loc_8C107564,pc),r5 ; r5 set to 0x8C13DF68
	mov.l @(loc_8C10755C,pc),r6 ; r6 set to 0x8C13DF00
	cmp/ge r3,r0
	mov.l @(loc_8C107560,pc),r7 ; r7 set to 0x8C13DF34
	bf loc_8C1074Ae
	mov.l @(loc_8C107568,pc),r1 ; r1 set to 0x8C0450C0
	jsr @r1
	nop
	mov.l @(loc_8C10756C,pc),r3 ; r3 set to 0x8C289650
	lds.l @r15+,pr
	mov.b @r3,r2
	add 0xFF,r2
	rts
	mov.b r2,@r3

;==============================================
loc_8C1074AE:
	shll2 r0
	fmov.s @(r0,r6),fr3
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	shll2 r0 ; r0 set to 0x140
	fmov.s @(r0,r7),fr3
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	shll2 r0 ; r0 set to 0x150
	fmov.s @(r0,r5),fr3
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	shll2 r0 ; r0 set to 0x1E0
	fmov.s @(r0,r5),fr3
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	shll2 r0 ; r0 set to 0x1F0
	fmov.s @(r0,r5),fr3
	mov.w @(loc_8C107554,pc),r0 ; r0 set to 0x80
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0 ; r0 set to 0x81
	mov.w r0,@(0x1C,r4)
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C1074EA:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r5,r14
	mov 0x10,r0 ; r0 set to 0x10
	mov.l @(loc_8C107570,pc),r3 ; r3 set to 0x8C044F12
	mov.l r4,@r15
	mov.l r6,@(0x04,r15)
	mov 0x01,r6 ; r6 set to 0x01
	mov.b @(r0,r15),r5
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bf/s loc_8C10750c
	mov r0,r4 ; r4 set to 0x10
	bra loc_8C1075Fa
	nop

loc_8C10750C:
	mov.l @(loc_8C107574,pc),r2 ; r2 set to 0x8C107602
	mov 0x01,r3 ; r3 set to 0x01
	mov.w @(loc_8C107556,pc),r0 ; r0 set to 0x12c
	mov r4,r1
	add 0x34,r1
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @(loc_8C107578,pc),r3 ; r3 set to 0x8C1294C8
	mov.l @r15,r2 ; r2 ??? bc r15 is ???
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C10755A,pc),r0 ; r0 set to 0xCc
	mov.w @(loc_8C107558,pc),r1 ; r1 set to 0x419
	mov.l r1,@(r0,r4)
	mov.l @(0x04,r15),r0 ; r0 ??? bc r15 is ???
	cmp/eq 0x09,r0
	bt loc_8C10757c
	cmp/eq 0x0A,r0
	bt loc_8C10758e
	cmp/eq 0x0B,r0
	bt loc_8C10759e
	cmp/eq 0x0C,r0
	bt loc_8C1075A4
	cmp/eq 0x0D,r0
	bt loc_8C1075B4
	cmp/eq 0x0E,r0
	bt loc_8C1075C2
	cmp/eq 0x0F,r0
	bt loc_8C1075D2
	cmp/eq 0x10,r0
	bt loc_8C1075Da
	bra loc_8C1075Ea
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C10754E:
	#data 0x2000
loc_8C107550:
	#data 0x6000
loc_8c107552:
	#data 0x4000
loc_8C107554:
	#data 0x0080
loc_8C107556:
	#data 0x012c
loc_8C107558:
	#data 0x0419
loc_8C10755A:
	#data 0x00Cc
	#align4

loc_8C10755C:
	#data bank13.loc_8c13df00
loc_8C107560:
	#data bank13.loc_8c13df34
loc_8C107564:
	#data bank13.loc_8c13df68
loc_8C107568:
	#data bank04.loc_8c0450C0
loc_8C10756C:
	#data 0x8C289650
loc_8C107570:
	#data bank04.loc_8c044F12
loc_8C107574:
	#data loc_8c107602
loc_8C107578:
	#data bank12.loc_8c1294C8

;==============================================
loc_8C10757C:
	tst r14,r14
	bt/s loc_8C107588
	mov 0x48,r0 ; r0 set to 0x48
	mov.l @(loc_8C107650,pc),r3 ; r3 set to 0x8000
	bra loc_8C10758a
	nop

loc_8C107588:
	mov 0x00,r3 ; r3 set to 0x00

loc_8C10758A:
	bra loc_8C1075Ea
	mov.l r3,@(r0,r4)

loc_8C10758E:
	tst r14,r14
	bt loc_8C107598
	mov.l @(loc_8C107654,pc),r1 ; r1 set to 0xA000
	bra loc_8C1075E6
	nop

loc_8C107598:
	mov.l @(loc_8C107658,pc),r1 ; r1 set to 0xE000
	bra loc_8C1075E6
	nop

loc_8C10759E:
	mov.l @(loc_8C10765C,pc),r2 ; r2 set to 0xC000
	bra loc_8C1075D4
	nop

loc_8C1075A4:
	tst r14,r14
	bt loc_8C1075Ae
	mov.l @(loc_8C107658,pc),r1 ; r1 set to 0xE000
	bra loc_8C1075E6
	nop

loc_8C1075AE:
	mov.l @(loc_8C107654,pc),r1 ; r1 set to 0xA000
	bra loc_8C1075E6
	nop

loc_8C1075B4:
	tst r14,r14
	bt loc_8C1075Bc
	bra loc_8C1075D4
	mov 0x00,r2

loc_8C1075BC:
	mov.l @(loc_8C107650,pc),r2 ; r2 set to 0x8000
	bra loc_8C1075D4
	nop

loc_8C1075C2:
	tst r14,r14
	bt loc_8C1075Cc
	mov.w @(loc_8C107642,pc),r1 ; r1 set to 0x2000
	bra loc_8C1075E6
	nop

loc_8C1075CC:
	mov.w @(loc_8C107644,pc),r1 ; r1 set to 0x6000
	bra loc_8C1075E6
	nop

loc_8c1075d2:
	mov.w @(loc_8C107646,pc),r2

loc_8C1075D4:
	mov 0x48,r0 ; r0 set to 0x48
	bra loc_8C1075Ea
	mov.l r2,@(r0,r4)

loc_8C1075DA:
	tst r14,r14
	bt loc_8C1075E4
	mov.w @(loc_8C107644,pc),r1 ; r1 set to 0x6000
	bra loc_8C1075E6
	nop

loc_8c1075e4:
	mov.w @(loc_8c107642,pc),r1

loc_8c1075e6:
	mov 0x48,r0
	mov.l r1,@(r0,r4)

loc_8C1075EA:
	mov.l @(loc_8C107660,pc),r3 ; r3 set to 0x8C26A908
	mov.w @(loc_8C107648,pc),r0 ; r0 set to 0x178
	mov.l @r3,r2
	mov.l @r2,r1
	mov.l @(r0,r1),r0 ; r0 ??? bc r1 is ???
	mov.w @(loc_8C10764A,pc),r1 ; r1 set to 0x84
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l r0,@r1

loc_8C1075FA:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C107602:
	mov.w @(0x1C,r4),r0
	mov 0x06,r3 ; r3 set to 0x06
	mov.l @(loc_8C107664,pc),r5 ; r5 set to 0x8C13DF9c
	cmp/ge r3,r0
	bf loc_8C107612
	mov.l @(loc_8C107668,pc),r2 ; r2 set to 0x8C0450C0
	jmp @r2
	nop

loc_8C107612:
	mov 0x48,r0 ; r0 set to 0x48
	mov.w @(loc_8C10764C,pc),r3 ; r3 set to 0x38e
	mov.l @(r0,r4),r2
	add r3,r2
	mov.l r2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	shll2 r0 ; r0 set to 0x120
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	shll2 r0 ; r0 set to 0x1E0
	fmov.s @(r0,r5),fr3
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	shll2 r0 ; r0 set to 0x1F0
	fmov.s @(r0,r5),fr3
	mov.w @(loc_8C10764E,pc),r0 ; r0 set to 0x80
	fmov.s fr3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0 ; r0 set to 0x81
	rts
	mov.w r0,@(0x1C,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C107642:
	#data 0x2000
loc_8C107644:
	#data 0x6000
loc_8c107646:
	#data 0x4000
loc_8C107648:
	#data 0x0178
loc_8C10764A:
	#data 0x0084
loc_8C10764C:
	#data 0x038e
loc_8C10764E:
	#data 0x0080
	#align4

loc_8C107650:
	#data 0x00008000
loc_8C107654:
	#data 0x0000A000
loc_8C107658:
	#data 0x0000E000
loc_8C10765C:
	#data 0x0000C000
loc_8C107660:
	#data 0x8C26A908
loc_8C107664:
	#data bank13.loc_8c13df9c
loc_8C107668:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C10766C:
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l r4,@r15
	mov.l r5,@(0x04,r15)
	mov.l r6,@(0x08,r15)
	mov r7,r0
	nop
	mov.b r0,@(0x0C,r15)
	mov 0x14,r0 ; r0 set to 0x14
	mov.b @(r0,r15),r3
	mov 0x10,r0 ; r0 set to 0x10
	mov.l r3,@-r15
	mov.l @(0x08,r15),r5
	mov.l @(0x0C,r15),r6
	mov.b @(r0,r15),r7
	bsr loc_8C1074Ea
	mov.l @(0x04,r15),r4
	mov 0x18,r0 ; r0 set to 0x18
	mov.b @(r0,r15),r2
	mov 0x14,r0 ; r0 set to 0x14
	mov.l r2,@-r15
	mov.l @(0x0C,r15),r5
	mov.l @(0x10,r15),r6
	mov.b @(r0,r15),r7
	bsr loc_8C107370
	mov.l @(0x08,r15),r4
	add 0x18,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1076a8:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c107814,pc),r3
	mov 0x08,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c107708
	mov r0,r4
	mov.w @(loc_8C107806,pc),r0
	mov 0x01,r3
	mov.l @(loc_8c107818,pc),r2
	mov.b r3,@(r0,r4)
	add 0xA0,r0
	mov.w @(loc_8C107808,pc),r3
	mov.l r2,@(0x10,r4)
	mov.l @(loc_8C10781C,pc),r2
	mov.l r3,@(r0,r4)
	mov 0x50,r0
	fldi1 fr4
	fmov.s fr4,@(r0,r4)
	mov 0x54,r0
	fmov.s fr4,@(r0,r4)
	mov 0x7C,r0
	mov.l @r2,r3
	mov.l @r3,r1
	mov.l @(loc_8c107820,pc),r3
	mov.l @(r0,r1),r0
	mov.w @(loc_8C10780A,pc),r1
	add r4,r1
	mov.l r0,@r1
	mov r4,r1
	mov.l @r15,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x48,r0
	fldi0 fr4
	mov 0x00,r1
	mov.l r1,@(r0,r4)
	mov 0x78,r0
	fmov.s fr4,@(r0,r4)
	mov 0x7C,r0
	fmov.s fr4,@(r0,r4)
	add 0x04,r0
	fmov.s fr4,@(r0,r4)

loc_8c107708:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C107710:
	mov r4,r3
	mov.l @(loc_8C107824,pc),r1 ; r1 set to 0x8C1658F4
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C107722:
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)

loc_8C107728:
	mov.b @(0x5,r4),r0
	mov.l @(0xFC,PC),r5
	extu.b r0,r0
	mov.w @(0xDA,PC),r3
	shll2 r0
	add r0,r5
	mova @(0xF4,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov @(r0,r4),fr3
	fsub fr4,fr3
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	fmov @(r0,r4),fr2
	fsub fr4,fr2
	fmov fr2,@(r0,r4)
	mov 0x48,r0
	mov.l @(r0,r4),r2
	add r3,r2
	mov.l r2,@(r0,r4)
	mov 0x78,r0
	fmov @r5,fr3
	fmov fr3,@(r0,r4)
	mov 0x7C,r0
	fmov @r5,fr3
	fmov fr3,@(r0,r4)
	add 0x04,r0
	fmov @r5,fr3
	fmov fr3,@(r0,r4)
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov 0x0D,r2
	extu.b r0,r0
	cmp/gt r2,r0
	bf loc_8c107776
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)

loc_8C107776:
	rts
	nop

;==============================================
loc_8c10777a:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c107814,pc),r3
	mov 0x08,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c1077d4
	mov r0,r4
	mov.w @(loc_8C107806,pc),r0
	mov 0x01,r3
	mov.l @(loc_8c107830,pc),r2
	mov.b r3,@(r0,r4)
	add 0xA0,r0
	mov.w @(loc_8C10780E,pc),r3
	mov.l @(loc_8C10781C,pc),r1
	mov.l r2,@(0x10,r4)
	mov 0x02,r2
	mov.l r3,@(r0,r4)
	add 0x04,r0
	mov.l r2,@(r0,r4)
	add 0xB8,r0
	mov.l @r1,r3
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0xFC,r0
	mov.l r3,@(r0,r4)
	mov.l @(loc_8c107820,pc),r3
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0
	mov 0x48,r0
	fldi0 fr4
	mov 0x00,r1
	mov.l r1,@(r0,r4)
	mov 0x78,r0
	fmov.s fr4,@(r0,r4)
	mov 0x7C,r0
	fmov.s fr4,@(r0,r4)
	add 0x04,r0
	fmov.s fr4,@(r0,r4)
	
loc_8c1077d4:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C1077DC:
	mov r4,r3
	mov.l @(loc_8C107834,pc),r1 ; r1 set to 0x8C165904
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C1077EE:
	mov.w @(loc_8C107810,pc),r0 ; r0 set to 0xD0
	mov.l @(r0,r4),r3
	tst r3,r3
	bt loc_8C1077Fe
	mov.l @(r0,r4),r3
	add 0xFF,r3
	rts
	mov.l r3,@(r0,r4)

;==============================================
loc_8C1077FE:
	mov.b @(0x04,r4),r0
	add 0x01,r0
	bra loc_8C10783c
	mov.b r0,@(0x04,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c107806:
	#data 0x012c
loc_8c107808:
	#data 0x0419
loc_8c10780a:
	#data 0x0084
loc_8c10780c:
	#data 0x0348
loc_8c10780e:
	#data 0x0409
loc_8C107810:
	#data 0x00D0
	#align4

loc_8C107814:
	#data bank04.loc_8c044F12
loc_8C107818:
	#data loc_8c107710
loc_8c10781c:
	#data 0x8C26A908
loc_8C107820:
	#data bank12.loc_8c1294C8
loc_8C107824:
	#data bank16.loc_8c1658F4
loc_8C107828:
	#data bank13.loc_8c13dfBc
loc_8C10782c:
	#data 0x3D1D89D9
loc_8C107830:
	#data loc_8c1077Dc
loc_8C107834:
	#data bank16.loc_8c165904

;==============================================
;unused
loc_8c107838:
	rts
	nop

;==============================================
loc_8c10783c:
	mov.b @(0x05,r4),r0
	mov.l @(loc_8c107954,pc),r5
	extu.b r0,r0
	mov.w @(loc_8C107948,pc),r3
	shll2 r0
	add r0,r5
	mov 0x48,r0
	mov.l @(r0,r4),r2
	add r3,r2
	mov.l r2,@(r0,r4)
	mov 0x78,r0
	fmov.s @r5,fr3
	mov 0x06,r2
	fmov.s fr3,@(r0,r4)
	mov 0x7C,r0
	fmov.s @r5,fr3
	fmov.s fr3,@(r0,r4)
	add 0x04,r0
	fmov.s @r5,fr3
	fmov.s fr3,@(r0,r4)
	mov.b @(0x05,r4),r0
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	extu.b r0,r0
	cmp/gt r2,r0
	bf loc_8c107876
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)

loc_8c107876:
	rts
	nop

;==============================================
loc_8c10787a:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xD8,PC),r3
	mov 0x08,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c1078d4
	mov r0,r4
	mov.w @(0xB6,PC),r0
	mov 0x01,r3
	mov.l @(0xC4,PC),r2
	mov.b r3,@(r0,r4)
	add 0xA0,r0
	mov.w @(0xAE,PC),r3
	mov.l @(0xC0,PC),r1
	mov.l r2,@(0x10,r4)
	mov 0x03,r2
	mov.l r3,@(r0,r4)
	add 0x04,r0
	mov.l r2,@(r0,r4)
	add 0xBC,r0
	mov.l @r1,r3
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0xF8,r0
	mov.l r3,@(r0,r4)
	mov.l @(0xA8,PC),r3
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x8A,PC),r1
	mov 0x48,r0
	fldi0 fr4
	mov.l r1,@(r0,r4)
	mov 0x78,r0
	fmov fr4,@(r0,r4)
	mov 0x7C,r0
	fmov fr4,@(r0,r4)
	add 0x04,r0
	fmov fr4,@(r0,r4)

loc_8c1078d4:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C1078DC:
	mov r4,r3
	mov.l @(loc_8C107968,pc),r1 ; r1 set to 0x8C165914
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C1078EE:
	mov.w @(loc_8C107950,pc),r0 ; r0 set to 0xD0
	mov.l @(r0,r4),r3
	tst r3,r3
	bt loc_8C1078Fe
	mov.l @(r0,r4),r3
	add 0xFF,r3
	rts
	mov.l r3,@(r0,r4)

;==============================================
loc_8C1078FE:
	mov.b @(0x04,r4),r0
	add 0x01,r0
	bra loc_8C10790a
	mov.b r0,@(0x04,r4)

;unused
	rts
	nop

;==============================================
loc_8c10790a:
	mov.b @(0x05,r4),r0
	mov.l @(loc_8c107954,pc),r5
	extu.b r0,r0
	mov.w @(loc_8C107948,pc),r3
	shll2 r0
	add r0,r5
	mov 0x48,r0
	mov.l @(r0,r4),r2
	add r3,r2
	mov.l r2,@(r0,r4)
	mov 0x78,r0
	fmov.s @r5,fr3
	mov 0x06,r2
	fmov.s fr3,@(r0,r4)
	mov 0x7C,r0
	fmov.s @r5,fr3
	fmov.s fr3,@(r0,r4)
	add 0x04,r0
	fmov.s @r5,fr3
	fmov.s fr3,@(r0,r4)
	mov.b @(0x05,r4),r0
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	extu.b r0,r0
	cmp/gt r2,r0
	bf loc_8c107944
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)

loc_8c107944:
	rts
	nop

;==============================================
loc_8C107948:
	#data 0x02F7
loc_8C10794a:
	#data 0x012C
loc_8C10794c:
	#data 0x0409
loc_8C10794e:
	#data 0x038E
loc_8c107950:
	#data 0x00D0
	#align4

loc_8c107954:
	#data bank13.loc_8c13dff4
loc_8c107958:
	#data bank04.loc_8c044f12
loc_8c10795c:
	#data bank10.loc_8c1078dc
loc_8c107960:
	#data 0x8c26a908
loc_8c107964:
	#data bank12.loc_8c1294c8
loc_8c107968:
	#data bank16.loc_8c165914

;==============================================
loc_8c10796c:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x154,PC),r3
	mov 0x08,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c1079c6
	mov r0,r4
	mov.w @(0x138,PC),r0
	mov 0x01,r3
	mov.l @(0x144,PC),r2
	mov.b r3,@(r0,r4)
	add 0xA0,r0
	mov.w @(0x130,PC),r3
	mov.l @(0x140,PC),r1
	mov.l r2,@(0x10,r4)
	mov 0x04,r2
	mov.l r3,@(r0,r4)
	add 0x04,r0
	mov.l r2,@(r0,r4)
	add 0xC0,r0
	mov.l @r1,r3
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0xF4,r0
	mov.l r3,@(r0,r4)
	mov.l @(0x128,PC),r3
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x10C,PC),r1
	mov 0x48,r0
	fldi0 fr4
	mov.l r1,@(r0,r4)
	mov 0x78,r0
	fmov fr4,@(r0,r4)
	mov 0x7C,r0
	fmov fr4,@(r0,r4)
	add 0x04,r0
	fmov fr4,@(r0,r4)

loc_8c1079c6:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C1079CE:
	mov r4,r3
	mov.l @(loc_8C107AD8,pc),r1 ; r1 set to 0x8C165924
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C1079E0:
	mov.w @(loc_8C107AC4,pc),r0 ; r0 set to 0xD0
	mov.l @(r0,r4),r3
	tst r3,r3
	bt loc_8C1079F0
	mov.l @(r0,r4),r3
	add 0xFF,r3
	rts
	mov.l r3,@(r0,r4)

;==============================================
loc_8C1079F0:
	mov.b @(0x04,r4),r0
	add 0x01,r0
	bra loc_8C1079Fc
	mov.b r0,@(0x04,r4)

;unused
	rts
	nop

;==============================================
loc_8c1079fc:
	mov.b @(0x05,r4),r0
	mov.l @(loc_8c107adc,pc),r5
	extu.b r0,r0
	mov.w @(loc_8C107AC6,pc),r3
	shll2 r0
	add r0,r5
	mov 0x48,r0
	mov.l @(r0,r4),r2
	add r3,r2
	mov.l r2,@(r0,r4)
	mov 0x78,r0
	fmov.s @r5,fr3
	mov 0x06,r2
	fmov.s fr3,@(r0,r4)
	mov 0x7C,r0
	fmov.s @r5,fr3
	fmov.s fr3,@(r0,r4)
	add 0x04,r0
	fmov.s @r5,fr3
	fmov.s fr3,@(r0,r4)
	mov.b @(0x05,r4),r0
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	extu.b r0,r0
	cmp/gt r2,r0
	bf loc_8c107a36
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)

loc_8c107a36:
	rts
	nop

;==============================================
loc_8c107a3a:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x88,PC),r3
	mov 0x08,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c107a94
	mov r0,r4
	mov.w @(0x6A,PC),r0
	mov 0x01,r3
	mov.l @(0x88,PC),r2
	mov.b r3,@(r0,r4)
	add 0xA0,r0
	mov.w @(0x62,PC),r3
	mov.l @(0x70,PC),r1
	mov.l r2,@(0x10,r4)
	mov 0x05,r2
	mov.l r3,@(r0,r4)
	add 0x04,r0
	mov.l r2,@(r0,r4)
	add 0xC4,r0
	mov.l @r1,r3
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0xF0,r0
	mov.l r3,@(r0,r4)
	mov.l @(0x58,PC),r3
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x3E,PC),r1
	mov 0x48,r0
	fldi0 fr4
	mov.l r1,@(r0,r4)
	mov 0x78,r0
	fmov fr4,@(r0,r4)
	mov 0x7C,r0
	fmov fr4,@(r0,r4)
	add 0x04,r0
	fmov fr4,@(r0,r4)

loc_8c107a94:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C107A9C:
	mov r4,r3
	mov.l @(loc_8C107AE4,pc),r1 ; r1 set to 0x8C165934
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C107AAE:
	mov.w @(loc_8C107AC4,pc),r0 ; r0 set to 0xD0
	mov.l @(r0,r4),r3
	tst r3,r3
	bt loc_8C107AE8
	mov.l @(r0,r4),r3
	add 0xFF,r3
	rts
	mov.l r3,@(r0,r4)

;==============================================
loc_8C107Abe:
	#data 0x012c
loc_8C107AC0:
	#data 0x0409
loc_8C107AC2:
	#data 0x071C
loc_8C107AC4:
	#data 0x00D0
loc_8c107ac6:
	#data 0x02F7
	#align4

loc_8C107AC8:
	#data bank04.loc_8c044F12
loc_8C107ACC:
	#data loc_8c1079Ce
loc_8C107AD0:
	#data 0x8C26A908
loc_8C107AD4:
	#data bank12.loc_8c1294C8
loc_8C107AD8:
	#data bank16.loc_8c165924
loc_8C107ADC:
	#data bank13.loc_8c13dfF4
loc_8C107AE0:
	#data loc_8c107A9c
loc_8C107AE4:
	#data bank16.loc_8c165934

;==============================================
loc_8C107AE8:
	mov.b @(0x04,r4),r0
	add 0x01,r0
	bra loc_8C107AF4
	mov.b r0,@(0x04,r4)

;unused
	rts
	nop

;==============================================
loc_8c107af4:
	mov.b @(0x05,r4),r0
	mov.l @(loc_8c107c3c,pc),r5
	extu.b r0,r0
	mov.w @(loc_8C107C34,pc),r3
	shll2 r0
	add r0,r5
	mov 0x48,r0
	mov.l @(r0,r4),r2
	add r3,r2
	mov.l r2,@(r0,r4)
	mov 0x78,r0
	fmov.s @r5,fr3
	mov 0x06,r2
	fmov.s fr3,@(r0,r4)
	mov 0x7C,r0
	fmov.s @r5,fr3
	fmov.s fr3,@(r0,r4)
	add 0x04,r0
	fmov.s @r5,fr3
	fmov.s fr3,@(r0,r4)
	mov.b @(0x05,r4),r0
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	extu.b r0,r0
	cmp/gt r2,r0
	bf loc_8c107b2e
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)

loc_8c107b2e:
	rts
	nop

;==============================================
loc_8c107b32:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x108,PC),r3
	mov 0x01,r6
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov 0x08,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c107ba2
	mov r0,r4
	mov.w @(0xE8,PC),r0
	mov 0x01,r3
	mov.l @(0xF4,PC),r2
	mov.b r3,@(r0,r4)
	add 0xA0,r0
	mov.w @(0xE0,PC),r3
	mov.l @(0xF0,PC),r1
	mov.l r2,@(0x10,r4)
	mov 0x05,r2
	mov.l r3,@(r0,r4)
	add 0x04,r0
	mov.l r2,@(r0,r4)
	add 0xCC,r0
	mov.l @r1,r3
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0xE8,r0
	mov.l r3,@(r0,r4)
	mov.l @(0xD8,PC),r3
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0
	mov 0x50,r0
	fldi1 fr4
	fmov fr4,@(r0,r4)
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	mov 0x58,r0
	fmov fr4,@(r0,r4)
	mov.l @(0x4,r15),r3
	mov.l @(0xC4,PC),r0
	shll2 r3
	fldi0 fr4
	mov.l @(r0,r3),r3
	mov 0x44,r0
	mov.l r3,@(r0,r4)
	mov 0x78,r0
	fmov fr4,@(r0,r4)
	mov 0x7C,r0
	fmov fr4,@(r0,r4)
	add 0x04,r0
	fmov fr4,@(r0,r4)

loc_8c107ba2:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C107BAA:
	mov r4,r3
	mov.l @(loc_8C107C54,pc),r1 ; r1 set to 0x8C165944
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C107BBC:
	mov.w @(loc_8C107C3A,pc),r0 ; r0 set to 0xD0
	mov.l @(r0,r4),r3
	tst r3,r3
	bt loc_8C107BCc
	mov.l @(r0,r4),r3
	add 0xFF,r3
	rts
	mov.l r3,@(r0,r4)

;==============================================
loc_8C107BCC:
	mov.b @(0x04,r4),r0
	add 0x01,r0
	bra loc_8C107BD8
	mov.b r0,@(0x04,r4)

;unused
	rts
	nop

;==============================================
loc_8c107bd8:
	mov.b @(0x05,r4),r0
	mov 0x0E,r3
	mov.l @(loc_8c107c58,pc),r5
	extu.b r0,r0
	shll2 r0
	add r0,r5
	mova @(loc_8C107C5C,pc),r0
	fmov.s @r0,fr4
	mov 0x50,r0
	fmov.s @(r0,r4),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0
	fmov.s @(r0,r4),fr2
	fadd fr4,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x78,r0
	fmov.s @r5,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x7C,r0
	fmov.s @r5,fr3
	fmov.s fr3,@(r0,r4)
	add 0x04,r0
	fmov.s @r5,fr3
	fmov.s fr3,@(r0,r4)
	mov.b @(0x05,r4),r0
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	extu.b r0,r0
	cmp/gt r3,r0
	bf loc_8c107c1c
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)

loc_8c107c1c:
	rts
	nop

loc_8C107C20:
	mov.w @(loc_8C107C36,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov.b @(0x04,r4),r0
	add 0x01,r0 ; r0 set to 0x12d
	rts
	mov.b r0,@(0x04,r4)

;==============================================
loc_8C107C2E:
	mov.l @(loc_8C107C60,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c107c34:
	#data 0x02F7
loc_8C107C36:
	#data 0x012c
loc_8C107C38:
	#data 0x0515
loc_8C107C3A:
	#data 0x00D0
	#align4

loc_8C107C3C:
	#data bank13.loc_8c13dfF4
loc_8C107C40:
	#data bank04.loc_8c044F12
loc_8C107C44:
	#data loc_8c107BAa
loc_8C107C48:
	#data 0x8C26A908
loc_8C107C4C:
	#data bank12.loc_8c1294C8
loc_8C107C50:
	#data bank13.loc_8c13dfB4
loc_8C107C54:
	#data bank16.loc_8c165944
loc_8C107C58:
	#data bank13.loc_8c13e00c
loc_8c107c5c:
	#data 0x3EB6DB6e
loc_8C107C60:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C107C64:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	bsr loc_8C1076A8
	mov r5,r14
	mov r14,r5
	bsr loc_8C10777a
	mov r13,r4
	mov r14,r5
	bsr loc_8C10787a
	mov r13,r4
	mov r14,r5
	bsr loc_8C10796c
	mov r13,r4
	mov r14,r5
	bsr loc_8C107A3a
	mov r13,r4
	lds.l @r15+,pr
	mov r13,r4
	mov r14,r5
	mov.l @r15+,r13
	bra loc_8C107B32
	mov.l @r15+,r14

;==============================================
loc_8C107C94:
	mov.l r14,@-r15
	mov 0x07,r5
	sts.l pr,@-r15
	mov.l @(0x108,PC),r3
	mov r4,r14
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c107d2a
	mov r0,r4
	mov.w @(0xE4,PC),r0
	mov 0x01,r3
	mov.l @(0xF8,PC),r2
	mov.b r3,@(r0,r4)
	add 0xA0,r0
	mov.w @(0xDC,PC),r3
	fldi1 fr4
	mov.l r2,@(0x10,r4)
	mov.l r3,@(r0,r4)
	mov 0x50,r0
	fmov fr4,@(r0,r4)
	mov 0x54,r0
	mov.l @(0xE8,PC),r2
	fmov fr4,@(r0,r4)
	mov 0x58,r0
	fmov fr4,@(r0,r4)
	mov.l @r2,r3
	mov.w @(0xC6,PC),r0
	mov.l @r3,r1
	mov.l @(0xDC,PC),r5
	mov.l @(r0,r1),r0
	mov.w @(0xC0,PC),r1
	add r4,r1
	mov.l r0,@r1
	mov.w @(0xBC,PC),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bt loc_8c107cea
	cmp/eq 0x02,r0
	bt loc_8c107cf0
	bra loc_8c107cf8
	nop

loc_8C107CEA:
	mov.w @(0xAE,PC),r0
	bra loc_8c107cf2
	nop

loc_8C107CF0:
	mov.w @(0xAA,PC),r0

loc_8C107CF2:
	fmov @(r0,r5),fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)

loc_8C107CF8:
	mov.w @(0xA4,PC),r0
	mov 0x00,r3
	mov.b @(r0,r14),r2
	mov 0x54,r0
	fmov @(r0,r14),fr0
	mov 0x38,r0
	extu.b r2,r2
	fmov @(r0,r14),fr2
	cmp/gt r2,r3
	mova @(0xA8,PC),r0
	addc r3,r2
	shar r2
	lds r2,fpul
	float fpul,fr3
	fmul fr0,fr3
	fmov @r0,fr0
	mov 0x38,r0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x78,r0
	fmov fr4,@(r0,r4)
	mov 0x7C,r0
	fmov fr4,@(r0,r4)
	add 0x04,r0
	fmov fr4,@(r0,r4)

loc_8C107D2A:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C107D30:
	mov r4,r3
	mov.l @(loc_8C107DB8,pc),r1 ; r1 set to 0x8C165954
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C107D42:
	mov.w @(loc_8C107DA2,pc),r0 ; r0 set to 0xD0
	mov.l @(r0,r4),r3
	tst r3,r3
	bt loc_8C107D52
	mov.l @(r0,r4),r3
	add 0xFF,r3
	rts
	mov.l r3,@(r0,r4)

;==============================================
loc_8C107D52:
	mov.b @(0x04,r4),r0
	add 0x01,r0
	bra loc_8C107D5e
	mov.b r0,@(0x04,r4)

;unused
	rts
	nop

;==============================================
loc_8c107d5e:
	mova @(loc_8C107DBC,pc),r0
	fmov.s @r0,fr4
	mov 0x78,r0
	fmov.s @(r0,r4),fr3
	mov 0x06,r3
	fsub fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x7C,r0
	fmov.s @(r0,r4),fr2
	fsub fr4,fr2
	fmov.s fr2,@(r0,r4)
	add 0x04,r0
	fmov.s @(r0,r4),fr3
	fsub fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov.b @(0x05,r4),r0
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	extu.b r0,r0
	cmp/gt r3,r0
	bf loc_8c107d8e
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)

loc_8c107d8e:
	rts
	nop

;==============================================
loc_8c107d92:
	#data 0x012C
loc_8c107d94:
	#data 0x0411
loc_8c107d96:
	#data 0x0154
loc_8c107d98:
	#data 0x0084
loc_8c107d9a:
	#data 0x01FD
loc_8c107d9c:
	#data 0x008C
loc_8c107d9e:
	#data 0x0088
loc_8c107da0:
	#data 0x013C
loc_8c107da2:
	#data 0x00D0
	#align4

loc_8c107da4:
	#data bank04.loc_8c044f12
loc_8c107da8:
	#data loc_8c107d30
loc_8c107dac:
	#data 0x8c26a908
loc_8c107db0:
	#data 0x8c26a518
loc_8c107db4:
	#data 0x40092492
loc_8c107db8:
	#data bank16.loc_8c165954
loc_8C107DBC:
	#data 0x3E2AAAAB

;==============================================
loc_8c107dc0:
	mov.l r14,@-r15
	mov 0x07,r5
	sts.l pr,@-r15
	mov.l @(0x130,PC),r3
	mov r4,r14
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c107e54
	mov r0,r4
	mov.w @(0x106,PC),r0
	mov 0x01,r3
	mov.l @(0x120,PC),r2
	mov.b r3,@(r0,r4)
	add 0xA0,r0
	mov.w @(0xFE,PC),r3
	mov.l @(0x11C,PC),r5
	mov.l r2,@(0x10,r4)
	mov.l r3,@(r0,r4)
	mov.w @(0xF8,PC),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bt loc_8c107df8
	cmp/eq 0x02,r0
	bt loc_8c107dfe
	bra loc_8c107e06
	nop

loc_8c107df8:
	mov.w @(0xEA,PC),r0
	bra loc_8c107e00
	nop

loc_8c107dfe:
	mov.w @(0xE6,PC),r0

loc_8c107e00:
	fmov @(r0,r5),fr3
	mov 0x34,r0
	fmov fr3,@(r0,r4)

loc_8c107e06:
	mov.w @(0xE0,PC),r0
	mov 0x00,r3
	fldi1 fr4
	mov.b @(r0,r14),r2
	mov 0x54,r0
	fmov @(r0,r14),fr0
	mov 0x38,r0
	extu.b r2,r2
	fmov @(r0,r14),fr2
	cmp/gt r2,r3
	mova @(0xE8,PC),r0
	addc r3,r2
	shar r2
	lds r2,fpul
	float fpul,fr3
	fmul fr0,fr3
	fmov @r0,fr0
	mov 0x38,r0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x78,r0
	fmov fr4,@(r0,r4)
	mov 0x7C,r0
	fmov fr4,@(r0,r4)
	add 0x04,r0
	fmov fr4,@(r0,r4)
	mov.w @(0xAE,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c107e4a
	mov 0x44,r0
	mov.w @(0xA6,PC),r3
	bra loc_8c107e4c
	nop

loc_8c107e4a:
	mov.l @(0xBC,PC),r3

loc_8c107e4c:
	mov.l r3,@(r0,r4)
	mov 0x03,r2
	mov.w @(0x9C,PC),r0
	mov.l r2,@(r0,r4)

loc_8c107e54:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8C107E5A:
	mov r4,r3
	mov.l @(loc_8C107F0C,pc),r1 ; r1 set to 0x8C165964
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C107E6C:
	mov.w @(loc_8C107EF0,pc),r0 ; r0 set to 0xD0
	mov.l @(r0,r4),r3
	tst r3,r3
	bt loc_8C107E7c
	mov.l @(r0,r4),r3
	add 0xFF,r3
	rts
	mov.l r3,@(r0,r4)

;==============================================
loc_8C107E7C:
	mov.b @(0x04,r4),r0
	add 0x01,r0
	bra loc_8C107E88
	mov.b r0,@(0x04,r4)

;unused
	rts
	nop

;==============================================
loc_8c107e88:
	mov.l @(loc_8C107F14,pc),r2
	mov.b @(0x05,r4),r0
	mov.l @r2,r3
	extu.b r0,r6
	mov.l @(loc_8c107f10,pc),r5
	mov.l @r3,r1
	shll2 r6
	mov.w @(loc_8C107EF2,pc),r0
	add r6,r5
	add r1,r6
	mov.l @(r0,r6),r3
	mov.w @(loc_8C107EF4,pc),r0
	mov.l r3,@(r0,r4)
	mov 0x78,r0
	fmov.s @r5,fr3
	mov 0x06,r3
	fmov.s fr3,@(r0,r4)
	mov 0x7C,r0
	fmov.s @r5,fr3
	fmov.s fr3,@(r0,r4)
	add 0x04,r0
	fmov.s @r5,fr3
	fmov.s fr3,@(r0,r4)
	mov.b @(0x05,r4),r0
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	extu.b r0,r0
	cmp/gt r3,r0
	bf loc_8c107ec8
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)

loc_8c107ec8:
	rts
	nop

loc_8C107ECC:
	mov.w @(loc_8C107EE0,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov.b @(0x04,r4),r0
	add 0x01,r0 ; r0 set to 0x12d
	rts
	mov.b r0,@(0x04,r4)

;==============================================
loc_8C107EDA:
	mov.l @(loc_8C107F18,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c107ee0:
	#data 0x012c
loc_8c107ee2:
	#data 0x0405
loc_8c107ee4:
	#data 0x01Fd
loc_8c107ee6:
	#data 0x008C
loc_8c107ee8:
	#data 0x0088
loc_8c107eea:
	#data 0x013C
loc_8c107eec:
	#data 0x0130
loc_8c107eee:
	#data 0x4000
loc_8C107EF0:
	#data 0x00D0
loc_8c107ef2:
	#data 0x0160
loc_8c107ef4:
	#data 0x0084
	#align4

loc_8C107EF8:
	#data bank04.loc_8c044F12
loc_8C107EFC:
	#data loc_8c107E5a
loc_8C107f00:
	#data 0x8C26A518
loc_8C107f04:
	#data 0x40092492
loc_8C107f08:
	#data 0x0000C001
loc_8C107F0C:
	#data bank16.loc_8c165964
loc_8C107F10:
	#data bank13.loc_8c13e048
loc_8c107f14:
	#data 0x8C26A908
loc_8C107F18:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C107F1C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c107c94
	mov r4,r14
	bsr loc_8c107dc0
	mov r14,r4
	mov.w @(0x106,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c107f42
	mov.w @(0x100,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c107f42
	mov.l @(0x108,PC),r2
	mov.b @(r0,r14),r1
	mov 0x61,r0
	mov.l @r2,r3
	mov.b r1,@(r0,r3)

loc_8C107F42:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c107f48:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c108048,pc),r3
	mov 0x07,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c107fa4
	mov r0,r4
	mov.w @(loc_8c108036,pc),r0
	mov 0x01,r3
	mov.l @(loc_8c10804c,pc),r2
	mov.b r3,@(r0,r4)
	add 0xA0,r0
	mov.w @(loc_8C108038,pc),r3
	fldi1 fr4
	mov.l r2,@(0x10,r4)
	mov.l r3,@(r0,r4)
	mov 0x50,r0
	fmov.s fr4,@(r0,r4)
	mov 0x54,r0
	mov.l @(loc_8C108050,pc),r2
	fmov.s fr4,@(r0,r4)
	mov 0x58,r0
	fmov.s fr4,@(r0,r4)
	mov.l @r2,r3
	mov.w @(loc_8C10803A,pc),r0
	mov.l @r3,r1
	mov.l @(loc_8c108054,pc),r3
	mov.l @(r0,r1),r0
	mov.w @(loc_8C10803C,pc),r1
	add r4,r1
	mov.l r0,@r1
	mov r4,r1
	mov.l @r15,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x78,r0
	fmov.s fr4,@(r0,r4)
	mov 0x7C,r0
	fmov.s fr4,@(r0,r4)
	add 0x04,r0
	fmov.s fr4,@(r0,r4)

loc_8c107fa4:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C107FAC:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.l @(loc_8C108048,pc),r3 ; r3 set to 0x8C044F12
	mov 0x07,r5 ; r5 set to 0x07
	mov.b r0,@(0x04,r15)
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C10800a
	mov r0,r4 ; r4 ??? bc r0 is ???
	mov.w @(loc_8C108036,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8C108058,pc),r2 ; r2 set to 0x8C107E5a
	mov r4,r1
	mov.b r3,@(r0,r4)
	add 0xA0,r0 ; r0 set to 0xCc
	mov.w @(loc_8C10803E,pc),r3 ; r3 set to 0x405
	add 0x34,r1
	mov.l r2,@(0x10,r4)
	mov.l r3,@(r0,r4)
	mov.l @(loc_8C108054,pc),r3 ; r3 set to 0x8C1294C8
	mov.l @r15,r2 ; r2 ??? bc r15 is ???
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x78,r0 ; r0 set to 0x78
	fldi1 fr4
	fmov.s fr4,@(r0,r4)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s fr4,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x80
	fmov.s fr4,@(r0,r4)
	mov.b @(0x04,r15),r0
	tst r0,r0
	bt loc_8C107FFe
	mov.w @(loc_8C108040,pc),r3 ; r3 set to 0x4000
	bra loc_8C108000
	nop

loc_8c107ffe:
	mov.l @(loc_8C10805C,pc),r3

loc_8c108000:
	mov 0x44,r0
	mov.l r3,@(r0,r4)
	mov 0x03,r2
	mov.w @(loc_8C108042,pc),r0
	mov.l r2,@(r0,r4)

loc_8C10800A:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C108012:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.b r0,@(0x04,r15)
	mov.b @(0x04,r15),r0
	mov r0,r5
	bsr loc_8C107F48
	mov.l @r15,r4
	mov.b @(0x04,r15),r0
	mov.l @r15,r4
	mov r0,r5
	add 0x08,r15
	bra loc_8C107FAc
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C108032:
	#data 0x0235
loc_8C108034:
	#data 0x01Fd
loc_8C108036:
	#data 0x012c
loc_8c108038:
	#data 0x0411
loc_8c10803a:
	#data 0x0154
loc_8c10803c:
	#data 0x0084
loc_8C10803E:
	#data 0x0405
loc_8C108040:
	#data 0x4000
loc_8c108042:
	#data 0x00D0
	#align4

loc_8C108044:
	#data 0x8C2896B0
loc_8C108048:
	#data bank04.loc_8c044F12
loc_8C10804C:
	#data loc_8c107D30
loc_8c108050:
	#data 0x8C26A908
loc_8C108054:
	#data bank12.loc_8c1294C8
loc_8C108058:
	#data loc_8c107E5a
loc_8c10805c:
	#data 0x0000C001

;==============================================
loc_8C108060:
	mov r4,r3
	mov.l @(loc_8C1082B8,pc),r6 ; r6 set to 0x8C28C864
	add 0x18,r3
	mov.l @(loc_8C1082C0,pc),r1 ; r1 set to 0x8C28C868
	mov.l r3,@r6 ; r6 ??? bc r3 is ???
	mov r5,r2
	mov.l @(loc_8C1082BC,pc),r4 ; r4 set to 0x8C28C86c
	add 0x18,r2
	mov.l @(loc_8C1082C4,pc),r0 ; r0 set to 0x8C28C870
	mov.l r2,@r4 ; r4 ??? bc r2 is ???
	mov.l @r6,r3
	mov.l r3,@r1 ; r1 ??? bc r3 is ???
	mov.l @(loc_8C1082C8,pc),r3 ; r3 set to 0x8C28C874
	mov.l @r4,r2
	mov 0x00,r4 ; r4 set to 0x00
	mov.l r2,@r0 ; r0 ??? bc r2 is ???
	mov.l r4,@r3 ; r3 ??
	rts
	mov r4,r0

;==============================================
loc_8C108086:
	mov.l r14,@-r15
	mov.l @(loc_8C1082C4,pc),r7 ; r7 set to 0x8C28C870
	mov.l @(loc_8C1082C0,pc),r14 ; r14 set to 0x8C28C868
	mov.l r13,@-r15
	mov 0x00,r13 ; r13 set to 0x00
	mov.l r12,@-r15
	mov.l @(loc_8C1082BC,pc),r5 ; r5 set to 0x8C28C86c
	mov.l r11,@-r15
	mov.l @(loc_8C1082B8,pc),r4 ; r4 set to 0x8C28C864
	mov.l @(loc_8C1082D0,pc),r6 ; r6 set to 0x8C28C878
	mov.l r10,@-r15
	mov 0x01,r10 ; r10 set to 0x01
	mov.l @r14,r3
	mov.l @(loc_8C1082CC,pc),r11 ; r11 set to 0x8C28C87c
	mov.l @(loc_8C1082C8,pc),r12 ; r12 set to 0x8C28C874
	mov.l r3,@r4 ; r4 ??? bc r3 is ???
	mov.l @r7,r2
	mov.l r2,@r5 ; r5 ??? bc r2 is ???

loc_8C1080AA:
	mov.l @r12,r1
	tst r1,r1
	bf loc_8C108104
	mov.l @r4,r3
	mov.l @r3,r2
	tst r2,r2
	bf loc_8C1080Bc
	bra loc_8C10815c
	mov 0xFF,r0

loc_8c1080bc:
	mov.l @r4,r3
	mov.l @r3,r2
	cmp/pz r2
	bt/s loc_8c1080d2
	mov 0x10,r0
	mov.l @r4,r1
	add 0x50,r1
	mov.l r1,@r4
	mov.l @r5,r3
	add 0x50,r3
	mov.l r3,@r5

loc_8c1080d2:
	mov.l @r4,r2
	add 0x04,r2
	mov.l r2,@r4
	add 0xFC,r2
	mov.l @r2,r3
	tst r0,r3
	bt loc_8c1080e8
	mov.l @r4,r1
	mov.l @r1,r3
	bra loc_8c1080f4
	mov.l r3,@r11

loc_8c1080e8:
	mov.l @r4,r2
	mov.l @r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l r2,@r11

loc_8c1080f4:
	mov.l @r4,r1
	add 0x04,r1
	mov.l r1,@r4
	mov.l @r5,r3
	add 0x08,r3
	mov.l r3,@r5
	mov.l r10,@r12
	mov.l r13,@r6

loc_8c108104:
	mov.l @r4,r2
	mov.l @r2,r3
	tst r10,r3
	bt loc_8c108136
	mov.l @r4,r1
	mov.l r1,@r14
	mov.l @r5,r3
	mov.l r3,@r7
	mov.l @r14,r2
	add 0x20,r2
	mov.l r2,@r14
	mov.l @r7,r3
	add 0x20,r3
	mov.l r3,@r7
	mov.l @r6,r2
	add 0x01,r2
	mov r2,r1
	mov.l r2,@r6
	mov.l @r11,r3
	cmp/ge r3,r1
	bf/s loc_8c108132
	mov 0x00,r0
	mov.l r13,@r12

loc_8c108132:
	bra loc_8c10815c
	nop

loc_8c108136:
	mov.l @r4,r2
	add 0x08,r2
	mov.l r2,@r4
	mov.l @r5,r3
	add 0x08,r3
	mov.l r3,@r5
	mov.l @r4,r2
	mov.l r2,@r14
	mov.l @r5,r3
	mov.l r3,@r7
	mov.l @r6,r2
	add 0x01,r2
	mov r2,r1
	mov.l r2,@r6
	mov.l @r11,r3
	cmp/ge r3,r1
	bf loc_8c1080aa
	bra loc_8c1080aa
	mov.l r13,@r12

loc_8C10815C:
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C108168:
	mov.l @(loc_8C1082B8,pc),r3 ; r3 set to 0x8C28C864
	mov r4,r1
	sts.l pr,@-r15
	mov.l @r3,r2
	mov.l @(loc_8C1082D4,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;==============================================
loc_8C10817C:
	mov.l @(loc_8C1082B8,pc),r3 ; r3 set to 0x8C28C864
	mov r4,r1
	sts.l pr,@-r15
	mov.l @r3,r2
	mov.l @(loc_8C1082D4,pc),r3 ; r3 set to 0x8C1294C8
	add 0x0C,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;==============================================
loc_8C108192:
	mov.l @(loc_8C1082B8,pc),r6 ; r6 set to 0x8C28C864
	mov.l @r6,r3
	add 0x18,r3
	fmov.s @r3,fr3
	fmov.s fr3,@r4
	mov.l @r6,r3
	add 0x1C,r3
	fmov.s @r3,fr3
	fmov.s fr3,@r5
	rts
	mov 0x00,r0

;==============================================
;unused
loc_8c1081a8:
	mov.l @(0x10C,PC),r2
	mov.l @r2,r3
	mov.l @(0x10,r3),r1
	mov.l r1,@r4
	rts
	mov 0x00,r0

;==============================================
loc_8C1081B4:
	mov.l @(loc_8C1082BC,pc),r5 ; r5 set to 0x8C28C86c
	mov r4,r2
	sts.l pr,@-r15
	mov.l @(loc_8C1082D4,pc),r3 ; r3 set to 0x8C1294C8
	mov.l @r5,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @r5,r3 ; r3 ??
	mov.l @r3,r0 ; r0 ??? bc r3 is ???
	or 0x01,r0
	mov.l r0,@r3
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;==============================================
loc_8C1081D0:
	mov.l @(loc_8C1082BC,pc),r3 ; r3 set to 0x8C28C86c
	mov r4,r2
	sts.l pr,@-r15
	mov.l @r3,r1
	mov.l @(loc_8C1082D4,pc),r3 ; r3 set to 0x8C1294C8
	add 0x0C,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;==============================================
loc_8C1081E6:
	mov.l @(loc_8C1082BC,pc),r6 ; r6 set to 0x8C28C86c
	fmov.s @r4,fr3
	mov.l @r6,r3
	add 0x18,r3
	fmov.s fr3,@r3
	mov.l @r6,r3
	fmov.s @r5,fr3
	add 0x1C,r3
	fmov.s fr3,@r3
	mov.l @r6,r3
	mov.l @(0x1C,r3),r0
	or 0x01,r0
	mov.l r0,@(0x1C,r3)
	rts
	mov 0x00,r0

;==============================================
loc_8C108204:
	mov.l @(loc_8C1082BC,pc),r2 ; r2 set to 0x8C28C86c
	mov.l @r4,r1
	mov.l @r2,r3
	mov.l r1,@(0x10,r3)
	rts
	mov 0x00,r0

;==============================================
loc_8C108210:
	mov.l @r4,r3
	cmp/pz r3
	bf loc_8c10823a
	mov.l @(0x18,r4),r1
	tst r1,r1
	bt loc_8c10823a
	mov.l @(0xB8,PC),r6
	mov r4,r5
	add 0x18,r5

loc_8C108222:
	mov r5,r4
	mov 0x4C,r0
	mov.l @(0x8,r4),r2
	mov r4,r5
	add 0x50,r5
	and r6,r2
	mov.l r2,@(0x8,r4)
	mov.l @(r0,r4),r3
	add r3,r5
	mov.l @r5,r2
	tst r2,r2
	bf loc_8c108222

loc_8C10823A:
	rts
	nop

;==============================================
loc_8C10823E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r5,r14
	mov 0x00,r3 ; r3 set to 0x00
	mov.l r4,@r15
	mov.l r3,@r14
	mov.l @r15,r5
	bsr loc_8C108060
	mov r5,r4
	bra loc_8C10825c
	nop

loc_8C108256:
	mov.l @r14,r3
	add 0x01,r3
	mov.l r3,@r14

loc_8C10825C:
	bsr loc_8C108086
	nop
	tst r0,r0
	bt loc_8C108256
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
;unused
loc_8c10826c:
	mov.l r13,@-r15
	mov.l @r4,r2
	cmp/pz r2
	bf loc_8c1082b4
	mov.l @(0x18,r4),r1
	tst r1,r1
	bt loc_8c1082b4
	mov 0x1D,r3
	mov.l @(0x5C,PC),r1
	shll16 r6
	shll8 r6
	shad r3,r5
	mov r5,r13
	shll2 r6
	add r6,r13
	mov 0x07,r7
	add 0x18,r4

loc_8c10828e:
	mov r4,r5
	mov.l @r5,r0
	shlr16 r0
	shlr8 r0
	and r7,r0
	cmp/eq 0x02,r0
	bf.s loc_8c1082a8
	add 0x50,r4
	mov.l @(0x8,r5),r3
	and r1,r3
	mov r3,r2
	or r13,r2
	mov.l r2,@(0x8,r5)

loc_8c1082a8:
	mov 0x4C,r0
	mov.l @(r0,r5),r3
	add r3,r4
	mov.l @r4,r5
	tst r5,r5
	bf loc_8c10828e

loc_8c1082b4:
	rts
	mov.l @r15+,r13

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C1082B8:
	#data 0x8C28C864
loc_8C1082BC:
	#data 0x8C28C86c
loc_8C1082C0:
	#data 0x8C28C868
loc_8C1082C4:
	#data 0x8C28C870
loc_8C1082C8:
	#data 0x8C28C874
loc_8C1082CC:
	#data 0x8C28C87c
loc_8C1082D0:
	#data 0x8C28C878
loc_8C1082D4:
	#data bank12.loc_8c1294C8
loc_8C1082D8:
	#data 0xFFFE7FFf
loc_8C1082Dc:
	#data 0x03FFFFFf

;==============================================
loc_8C1082E0:
	mov.l @r4,r3
	cmp/pz r3
	bf loc_8c108308
	mov.l @(0x18,r4),r1
	tst r1,r1
	bt loc_8c108308
	mov 0x00,r3
	mov.l r3,@r5
	add 0x18,r4

loc_8C1082F2:
	mov 0x4C,r0
	mov r4,r6
	add 0x50,r4
	mov.l @r5,r3
	add 0x01,r3
	mov.l r3,@r5
	mov.l @(r0,r6),r2
	add r2,r4
	mov.l @r4,r6
	tst r6,r6
	bf loc_8c1082f2

loc_8C108308:
	rts
	nop

;==============================================
loc_8C10830C:
	mov.l @r4,r3
	cmp/pz r3
	bf loc_8c108344
	mov.l @(0x18,r4),r1
	tst r1,r1
	bt loc_8c108344
	mov r4,r6
	add 0x18,r6

loc_8C10831C:
	mov r6,r4
	mov.l @r4,r3
	mov 0x4C,r0
	mov.l r3,@r5
	add 0x04,r5
	mov.l @(0x4,r4),r3
	add 0x50,r6
	mov.l r3,@r5
	add 0x04,r5
	mov.l @(0x8,r4),r3
	mov.l r3,@r5
	add 0x04,r5
	mov.l @(0xC,r4),r3
	mov.l r3,@r5
	mov.l @(r0,r4),r2
	add r2,r6
	mov.l @r6,r4
	tst r4,r4
	bf.s loc_8c10831c
	add 0x04,r5

loc_8C108344:
	rts
	nop

;==============================================
loc_8C108348:
	mov.l @r4,r3
	cmp/pz r3
	bf loc_8c108378
	mov.l @(0x18,r4),r1
	tst r1,r1
	bt loc_8c108378
	mov r4,r6
	add 0x18,r6

loc_8C108358:
	mov.l @r5+,r3
	mov r6,r4
	mov 0x4C,r0
	mov.l r3,@r4
	add 0x50,r6
	mov.l @r5+,r3
	mov.l r3,@(0x4,r4)
	mov.l @r5+,r3
	mov.l r3,@(0x8,r4)
	mov.l @r5+,r3
	mov.l r3,@(0xC,r4)
	mov.l @(r0,r4),r2
	add r2,r6
	mov.l @r6,r4
	tst r4,r4
	bf loc_8c108358

loc_8C108378:
	rts
	nop

;==============================================
loc_8C10837C:
	add 0xF0,r15
	mov r15,r3
	add 0x0C,r3
	fmov fr4,@r3
	mov r15,r3
	add 0x04,r3
	mov r15,r2
	add 0x08,r2
	fmov fr5,@r2
	fmov fr6,@r3
	fmov fr7,@r15
	mov.l @r4,r3
	cmp/pz r3
	bf loc_8c1083d2
	mov.l @(0x18,r4),r1
	tst r1,r1
	bt loc_8c1083d2
	mov r4,r5
	add 0x18,r5

loc_8C1083A2:
	mov r15,r2
	add 0x0C,r2
	mov.l @r2,r3
	mov r15,r2
	mov r5,r4
	add 0x08,r2
	mov.l r3,@(0x2C,r4)
	mov 0x4C,r0
	mov.l @r2,r3
	mov r15,r2
	add 0x04,r2
	mov r4,r5
	mov.l r3,@(0x30,r4)
	add 0x50,r5
	mov.l @r2,r3
	mov r15,r2
	mov.l r3,@(0x34,r4)
	mov.l @r2,r3
	mov.l r3,@(0x38,r4)
	mov.l @(r0,r4),r3
	add r3,r5
	mov.l @r5,r2
	tst r2,r2
	bf loc_8c1083a2

loc_8C1083D2:
	rts
	add 0x10,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

;==============================================
loc_8C1083D8:
	mov.l r14,@-r15
	mov 0x0C,r6
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.l @(0x160,PC),r3
	mov.l @(0x15C,PC),r4
	jsr @r3
	mov 0x00,r5
	mov.l @(0x164,PC),r3
	mov.l @(0x15C,PC),r2
	fldi1 fr15
	mov.l @(0x15C,PC),r14
	fmov fr15,@r2
	mov.b @r3,r4
	extu.b r4,r4
	tst r4,r4
	bt loc_8c108402
	mov r4,r0
	nop
	cmp/eq 0x09,r0
	bf loc_8c108406

loc_8C108402:
	bra loc_8c10840a
	mov r14,r4

loc_8C108406:
	mov r14,r4
	add 0x0C,r4

loc_8C10840A:
	mov.l @(0x148,PC),r3
	jsr @r3
	nop
	mov.l @(0x144,PC),r2
	jsr @r2
	fmov fr15,fr4
	bsr loc_8c1086e2
	nop
	bsr loc_8c10848a
	nop
	lds.l @r15+,pr
	fmov @r15+,fr15
	bra loc_8c108430
	mov.l @r15+,r14

loc_8C108426:
	sts.l pr,@-r15
	bsr loc_8C1086E2
	nop
	bra loc_8C1084Fc
	lds.l @r15+,pr

loc_8C108430:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.l @(0x110,PC),r14
	mov.l @(0x120,PC),r11
	mov.l @(0x118,PC),r10
	bra loc_8c10845e
	mov 0x00,r13

loc_8C108446:
	mov.b @r14,r0
	mov r4,r12
	shll2 r12
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r11),r0
	mov.l @(r0,r12),r12
	tst r12,r12
	bt loc_8c10845c
	jsr @r12
	nop

loc_8C10845C:
	add 0x01,r13

loc_8C10845E:
	mov.b @r14,r0
	mov r13,r4
	shll2 r4
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r10),r0
	mov.l @(r0,r4),r4
	mov r4,r0
	nop
	cmp/eq 0xFF,r0
	bf loc_8c108446
	mov.l @(0xC8,PC),r2
	mov.b @r2,r3
	add 0x01,r3
	mov.b r3,@r2
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C10848A:
	mov.l @(0xC4,PC),r2
	mov.l @(0xD4,PC),r1
	mov.b @r2,r4
	mov.l @(0xD4,PC),r5
	extu.b r4,r4
	mov r4,r3
	shll r4
	add r3,r4
	shll2 r4
	add r1,r4
	mov.l @r4,r0
	cmp/eq 0xFF,r0
	bf loc_8c1084aa
	mov 0x00,r0
	bra loc_8c1084f8
	mov.b r0,@r5

loc_8C1084AA:
	mov 0x04,r0
	mov.l @(0xBC,PC),r6
	mov 0x01,r3
	mov.b r3,@r5
	fmov @(r0,r4),fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r5)
	mov.l @r4,r3
	mov.l r3,@(0x4,r5)
	mov.b @(0x9,r4),r0
	extu.b r0,r3
	lds r3,fpul
	mov 0x0C,r0
	fmov @(r0,r6),fr2
	float fpul,fr3
	fmul fr3,fr2
	ftrc fr2,fpul
	sts fpul,r0
	mov.b r0,@(0x9,r5)
	mov.b @(0xA,r4),r0
	extu.b r0,r3
	lds r3,fpul
	mov 0x10,r0
	fmov @(r0,r6),fr2
	float fpul,fr3
	fmul fr3,fr2
	ftrc fr2,fpul
	sts fpul,r0
	mov.b r0,@(0xA,r5)
	mov.b @(0xB,r4),r0
	extu.b r0,r3
	lds r3,fpul
	float fpul,fr3
	mov 0x14,r0
	fmov @(r0,r6),fr2
	fmul fr3,fr2
	ftrc fr2,fpul
	sts fpul,r0
	mov.b r0,@(0xB,r5)

loc_8C1084F8:
	rts
	nop

;==============================================
loc_8C1084FC:
	mov.l @(loc_8C108550,pc),r3 ; r3 set to 0x8C26A95c
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C10850e
	cmp/eq 0x04,r0
	bt loc_8C108512
	bra loc_8C108516
	nop

loc_8C10850E:
	bra loc_8C10851a
	nop

loc_8C108512:
	bra loc_8C108636
	nop

loc_8C108516:
	rts
	nop

;==============================================
loc_8C10851A:
	mov.l @(loc_8C108540,pc),r7 ; r7 set to 0x8C26A8C4
	mov.l @(loc_8C108568,pc),r5 ; r5 set to 0x8C26A688
	mov.b @(0x01,r7),r0
	mov.l @(loc_8C108570,pc),r6 ; r6 set to 0x8C26823c
	cmp/eq 0x00,r0
	bt/s loc_8C108574
	mov.l @r6,r4
	cmp/eq 0x01,r0
	bt loc_8C108582
	cmp/eq 0x02,r0
	bt loc_8C1085D2
	cmp/eq 0x03,r0
	bt loc_8C1085E0
	cmp/eq 0x04,r0
	bf loc_8C10853c
	bra loc_8C108632
	nop

loc_8C10853C:
	bra loc_8C108632
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C108540:
	#data 0x8C26A8C4
loc_8C108544:
	#data bank12.loc_8c129728
loc_8c108548:
	#data 0x8C26A8Cc
loc_8C10854C:
	#data bank16.loc_8c165D74
loc_8C108550:
	#data 0x8C26A95c
loc_8C108554:
	#data bank03.loc_8c031F10
loc_8C108558:
	#data bank03.loc_8c031F24
loc_8C10855C:
	#data bank16.loc_8c165C64
loc_8C108560:
	#data bank16.loc_8c165A78
loc_8C108564:
	#data bank16.loc_8c165CA8
loc_8C108568:
	#data 0x8C26A688
loc_8C10856C:
	#data 0x8C26A89c
loc_8C108570:
	#data 0x8C26823c

;==============================================
loc_8C108574:
	mov.w @(loc_8C10865A,pc),r0 ; r0 set to 0x90
	mov.w @(loc_8C108658,pc),r3 ; r3 set to 0x7D0
	mov.l @(r0,r4),r2
	cmp/hs r3,r2
	bt loc_8C10862c
	bra loc_8C108632
	nop

loc_8c108582:
	mov.w @(loc_8c10865a,pc),r0
	mov.w @(loc_8C10865C,pc),r3
	mov.l @(r0,r4),r1
	add r3,r1
	lds r1,fpul
	cmp/pz r1
	bt/s loc_8c10859a
	float fpul,fr3
	mov.l @(loc_8C108668,pc),r2
	lds r2,fpul
	fsts fpul,fr2
	fadd fr2,fr3

loc_8c10859a:
	mova @(loc_8C10866C,pc),r0
	fmov fr3,fr4
	fmov.s @r0,fr2
	mova @(loc_8C108670,pc),r0
	fmov.s @r0,fr3
	mova @(loc_8C108674,pc),r0
	fdiv fr2,fr4
	fmov.s @r0,fr1
	mova @(loc_8C108678,pc),r0
	mov.w @(loc_8C10865E,pc),r1
	fmov fr4,fr0
	fmac fr0,fr1,fr3
	ftrc fr3,fpul
	sts fpul,r2
	mov.l r2,@(0x04,r5)
	fmov.s @r0,fr3
	mova @(loc_8C10867C,pc),r0
	fmov.s @r0,fr2
	mov 0x0C,r0
	fmac fr0,fr2,fr3
	fmov.s fr3,@(r0,r5)
	mov.w @(loc_8c10865a,pc),r0
	mov.l @r6,r2
	mov.l @(r0,r2),r0
	cmp/hs r1,r0
	bf loc_8c108632
	bra loc_8c10862c
	nop

loc_8C1085D2:
	mov.w @(loc_8C10865A,pc),r0 ; r0 set to 0x90
	mov.w @(loc_8C108660,pc),r3 ; r3 set to 0x1194
	mov.l @(r0,r4),r2
	cmp/hs r3,r2
	bf loc_8C108632
	bra loc_8C10862c
	nop

loc_8c1085e0:
	mov.w @(loc_8c10865a,pc),r0
	mov.w @(loc_8C108662,pc),r3
	mov.l @(r0,r4),r1
	add r3,r1
	lds r1,fpul
	cmp/pz r1
	bt/s loc_8c1085f8
	float fpul,fr3
	mov.l @(loc_8C108668,pc),r2
	lds r2,fpul
	fsts fpul,fr2
	fadd fr2,fr3

loc_8c1085f8:
	mova @(loc_8C108680,pc),r0
	fmov fr3,fr4
	fmov.s @r0,fr2
	mova @(loc_8C108684,pc),r0
	fmov.s @r0,fr3
	mova @(loc_8C108688,pc),r0
	fdiv fr2,fr4
	fmov.s @r0,fr1
	mova @(loc_8C10868C,pc),r0
	mov.w @(loc_8C108664,pc),r1
	fmov fr4,fr0
	fmac fr0,fr1,fr3
	ftrc fr3,fpul
	sts fpul,r2
	mov.l r2,@(0x04,r5)
	fmov.s @r0,fr3
	mova @(loc_8C108690,pc),r0
	fmov.s @r0,fr2
	mov 0x0C,r0
	fmac fr0,fr2,fr3
	fmov.s fr3,@(r0,r5)
	mov.w @(loc_8c10865a,pc),r0
	mov.l @r6,r2
	mov.l @(r0,r2),r0
	cmp/hs r1,r0
	bf loc_8c108632

loc_8C10862C:
	mov.b @(0x01,r7),r0
	add 0x01,r0
	mov.b r0,@(0x01,r7)

loc_8C108632:
	rts
	nop

;==============================================
loc_8C108636:
	mov.l @(loc_8C108698,pc),r5 ; r5 set to 0x8C26A8C4
	mov.l @(loc_8C108694,pc),r6 ; r6 set to 0x8C26823c
	mov.b @(0x01,r5),r0
	cmp/eq 0x00,r0
	bt/s loc_8C10864a
	mov.l @r6,r4
	cmp/eq 0x01,r0
	bt loc_8C10869c
	bra loc_8C1086De
	nop

loc_8C10864A:
	mov.w @(loc_8C10865A,pc),r0 ; r0 set to 0x90
	mov.w @(loc_8C108666,pc),r3 ; r3 set to 0x2D0
	mov.l @(r0,r4),r2
	cmp/hs r3,r2
	bt loc_8C1086D8
	bra loc_8C1086De
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C108658:
	#data 0x07D0
loc_8C10865A:
	#data 0x0090
loc_8c10865c:
	#data 0xF830
loc_8c10865e:
	#data 0x09C4
loc_8C108660:
	#data 0x1194
loc_8c108662:
	#data 0xEE6c
loc_8c108664:
	#data 0x1770
loc_8C108666:
	#data 0x02D0
	#align4

loc_8c108668:
	#data 0x4F800000
loc_8c10866c:
	#data 0x43FA0000
loc_8c108670:
	#data 0x42A40000
loc_8c108674:
	#data 0x41900000
loc_8c108678:
	#data 0x463B8000
loc_8c10867c:
	#data 0x473B8000
loc_8c108680:
	#data 0x44BB8000
loc_8c108684:
	#data 0x42C80000
loc_8c108688:
	#data 0x41A00000
loc_8c10868c:
	#data 0x476A6000
loc_8c108690:
	#data 0x48A60400
loc_8C108694:
	#data 0x8C26823c
loc_8C108698:
	#data 0x8C26A8C4

;==============================================
loc_8c10869c:
	mov.w @(loc_8C108732,pc),r0
	mov.w @(loc_8C108730,pc),r3
	mov.l @(r0,r4),r1
	add r3,r1
	lds r1,fpul
	cmp/pz r1
	bt/s loc_8c1086b4
	float fpul,fr3
	mov.l @(loc_8C108738,pc),r2
	lds r2,fpul
	fsts fpul,fr2
	fadd fr2,fr3

loc_8c1086b4:
	mova @(loc_8C10873C,pc),r0
	fmov fr3,fr4
	fmov.s @r0,fr2
	mova @(loc_8C108740,pc),r0
	fmov.s @r0,fr3
	mova @(loc_8C108744,pc),r0
	fdiv fr2,fr4
	fmov.s @r0,fr0
	mov.w @(loc_8C108732,pc),r3
	mov.l @(loc_8C108748,pc),r2
	mov.w @(loc_8C108734,pc),r0
	fmac fr0,fr4,fr3
	fmov.s fr3,@r2
	mov.l @r6,r1
	add r1,r3
	mov.l @r3,r1
	cmp/hs r0,r1
	bf loc_8c1086de

loc_8C1086D8:
	mov.b @(0x01,r5),r0
	add 0x01,r0
	mov.b r0,@(0x01,r5)

loc_8C1086DE:
	rts
	nop

;==============================================
loc_8c1086e2:
	mov.l r14,@-r15
	add 0xFC,r15
	mov.l @(loc_8C10874C,pc),r3
	mov.b @r3,r14
	extu.b r14,r4
	mov r4,r0
	nop
	cmp/eq 0x03,r0
	bt loc_8c1086fc
	mov r4,r0
	nop
	cmp/eq 0x0C,r0
	bf loc_8c10871a

loc_8c1086fc:
	extu.b r14,r5
	mov.l @(loc_8c108750,pc),r2
	mov r5,r3
	shll r5
	add r3,r5
	shll2 r5
	add r2,r5
	mov.l r5,@r15
	mov.l @r15,r4
	mov.l @(0x04,r5),r5
	mov.l @r4,r4
	add 0x04,r15
	mov.l @(loc_8c108754,pc),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c10871a:
	extu.b r14,r4
	mov.l @(loc_8c108750,pc),r0
	mov r4,r3
	shll r4
	add r3,r4
	shll2 r4
	mov.l @(r0,r4),r4
	add 0x04,r15
	mov.l @(loc_8c108758,pc),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c108730:
	#data 0xFD30
loc_8c108732:
	#data 0x0090
loc_8c108734:
	#data 0x04B0
	#align4

loc_8c108738:
	#data 0x4F800000
loc_8c10873c:
	#data 0x43F00000
loc_8c108740:
	#data 0x46EA6000
loc_8c108744:
	#data 0x49742400
loc_8c108748:
	#data 0x8C26A694
loc_8C10874C:
	#data 0x8C26A95C
loc_8c108750:
	#data bank13.loc_8c13e060
loc_8c108754:
	#data bank02.loc_8c02dc32
loc_8c108758:
	#data bank02.loc_8c02dc1c

;==============================================
loc_8c10875c:
	mov 0x50,r0
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	fmov @(r0,r4),fr2
	fadd fr4,fr2
	fmov fr2,@(r0,r4)
	mov 0x58,r0
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	rts
	fmov fr3,@(r0,r4)

;==============================================
loc_8C108776:
	mov 0x68,r1 ; r1 set to 0x68
	add r4,r1 ; r1 ??? bc r4 is ???
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @r1,fr3
	fmov.s @(r0,r4),fr2
	mov 0x6C,r1 ; r1 set to 0x6c
	add r4,r1 ; r1 ??? bc r4 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	mov 0x70,r1 ; r1 set to 0x70
	add r4,r1 ; r1 ??? bc r4 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x64,r0 ; r0 set to 0x64
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	rts
	fmov.s fr2,@(r0,r4)

;==============================================
loc_8C1087A2:
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

;==============================================
loc_8C1087CE:
	sts.l pr,@-r15
	bsr loc_8C1087A2
	mov.l r4,@-r15
	mov.l @r15,r4
	add 0x04,r15
	bra loc_8C108776
	lds.l @r15+,pr

;==============================================
;unused?
loc_8c1087dc:
	mov 0x78,r0
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mov 0x7C,r0
	fmov @(r0,r4),fr2
	fadd fr4,fr2
	fmov fr2,@(r0,r4)
	add 0x04,r0
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	rts
	fmov fr3,@(r0,r4)
	mov 0x74,r0
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	rts
	fmov fr3,@(r0,r4)

;==============================================
loc_8C108800:
	mov.l r14,@-r15
	mov 0x05,r5
	mov.l r13,@-r15
	mov 0x01,r6
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(0x98,PC),r3
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c10883e
	mov r0,r14
	mov.w @(0x82,PC),r0
	mov 0x01,r4
	mov.w @(0x80,PC),r2
	mov.l @(0x8C,PC),r3
	mov.b r4,@(r0,r14)
	add 0xA0,r0
	mov.l r3,@(0x10,r14)
	mov.l r2,@(r0,r14)
	mov r4,r0
	nop
	mov 0x00,r13
	mov.w r0,@(0x1E,r14)
	mov 0x02,r12

loc_8C108832:
	mov r13,r5
	bsr loc_8c108a5c
	mov r14,r4
	add 0x01,r13
	cmp/ge r12,r13
	bf loc_8c108832

loc_8C10883E:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C108848:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C10886c
	cmp/eq 0x01,r0
	bf loc_8C108868
	bra loc_8C108A2c
	nop

loc_8C108868:
	bra loc_8C108A32
	nop

loc_8C10886C:
	mov.w @(0x1E,r14),r0
	mov.w @(loc_8C1088A2,pc),r5 ; r5 set to 0x7D0
	mov.l @(loc_8C1088B0,pc),r10 ; r10 set to 0x8C13E12c
	mov r0,r11
	cmp/gt r5,r11
	bf loc_8C108886
	mov.w @(loc_8C1088A4,pc),r2 ; r2 set to 0x9C4
	cmp/ge r2,r11
	bt loc_8C108886
	mov.w @(loc_8C10889E,pc),r0 ; r0 set to 0x12c
	mov 0x00,r1 ; r1 set to 0x00
	bra loc_8C1089Ec
	mov.b r1,@(r0,r14)

loc_8C108886:
	mov.w @(loc_8C10889E,pc),r0 ; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov.l @(loc_8C1088B4,pc),r3 ; r3 set to 0x8C26A904
	cmp/gt r5,r11
	mov.b r2,@(r0,r14)
	bt/s loc_8C1088B8
	mov.l @r3,r4
	mov.l @r4,r1
	mov.w @(loc_8C1088A6,pc),r0 ; r0 set to 0x84
	mov.l @(0x04,r1),r2 ; r2 ??? bc r1 is ???
	bra loc_8C1088C0
	mov.l r2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C10889E:
	#data 0x012c
loc_8C1088A0:
	#data 0x080f
loc_8C1088A2:
	#data 0x07D0
loc_8C1088A4:
	#data 0x09C4
loc_8C1088A6:
	#data 0x0084
	#align4

loc_8C1088A8:
	#data bank04.loc_8c044F12
loc_8C1088AC:
	#data loc_8c108848
loc_8C1088B0:
	#data bank13.loc_8c13e12c
loc_8C1088B4:
	#data 0x8C26A904

;==============================================
loc_8C1088B8:
	mov.l @r4,r2
	mov.w @(loc_8C108A42,pc),r0 ; r0 set to 0x84
	mov.l @(0x38,r2),r1
	mov.l r1,@(r0,r14)

loc_8C1088C0:
	mov 0x1C,r13 ; r13 set to 0x1C, r13 set to 0x1c
	mov.w @(0x1C,r14),r0
	mul.l r13,r11
	mov r0,r3 ; r3 set to 0x84
	lds r3,fpul
	mov r15,r5
	mov.l @(loc_8C108A44,pc),r3 ; r3 set to 0x8C109458, r3 set to 0x8C109458
	mov r15,r6
	add 0x04,r5
	sts macl,r13
	float fpul,fr3
	add 0x08,r6
	add r10,r13 ; r13 ??? bc r10 is ???, r13 ??? bc r10 is ???
	mov r13,r12
	add 0x1C,r12
	fmov.s @r12,fr1
	fmov.s @r13,fr2
	fmov fr3,fr4
	fsub fr2,fr1
	fdiv fr1,fr4
	jsr @r3
	mov r15,r4
	mov r11,r4
	mov 0x1C,r3 ; r3 set to 0x1C, r3 set to 0x1c
	add 0xFF,r4
	mul.l r3,r4
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	fmov.s @(r0,r15),fr0 ; r0 ??? bc r15 is ???, r0 ??? bc r15 is ???
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	sts macl,r4
	fmul fr0,fr3
	fmov.s @r15,fr0 ; r0 ??? bc r15 is ???, r0 ??? bc r15 is ???
	add r10,r4
	fmov.s @(r0,r4),fr2
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
	fmac fr0,fr2,fr3
	fmov.s @(r0,r15),fr0 ; r0 ??? bc r15 is ???, r0 ??? bc r15 is ???
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	fmov.s @(r0,r12),fr2
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmac fr0,fr2,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	fmov.s @(r0,r15),fr0 ; r0 ??? bc r15 is ???, r0 ??? bc r15 is ???
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
	fmov.s @(r0,r13),fr3
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
	fmov.s @(r0,r4),fr2
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
	fmul fr0,fr3
	fmov.s @r15,fr0 ; r0 ??? bc r15 is ???, r0 ??? bc r15 is ???
	fmac fr0,fr2,fr3
	fmov.s @(r0,r15),fr0
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
	fmov.s @(r0,r12),fr2
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov r14,r2
	mov.l @(loc_8C108A54,pc),r5 ; r5 set to 0xFFFF, r5 set to 0xFFFf
	fmac fr0,fr2,fr3
	add 0x40,r2
	fmov.s fr3,@(r0,r14)
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	fmov.s @(r0,r15),fr0 ; r0 ??? bc r15 is ???, r0 ??? bc r15 is ???
	mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
	fmov.s @(r0,r13),fr3
	mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
	fmov.s @(r0,r4),fr2
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
	fmul fr0,fr3
	fmov.s @r15,fr0 ; r0 ??? bc r15 is ???, r0 ??? bc r15 is ???
	fmac fr0,fr2,fr3
	fmov.s @(r0,r15),fr0
	mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
	fmov.s @(r0,r12),fr2
	mov 0x3C,r0 ; r0 set to 0x3C, r0 set to 0x3c
	fmac fr0,fr2,fr3
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C108A48,pc),r0  ; r0 set to 0x8C108A48, r0 set to 0x8C108A48
	fmov.s @r0,fr6
	mova @(loc_8C108A4C,pc),r0  ; r0 set to 0x8C108A4C, r0 set to 0x8C108A4c
	fmov.s @r0,fr5 ; r5 ??, r5 ??
	mova @(loc_8C108A50,pc),r0  ; r0 set to 0x8C108A50, r0 set to 0x8C108A50
	fmov.s @r0,fr4
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	fmov.s @(r0,r15),fr0 ; r0 ??? bc r15 is ???, r0 ??? bc r15 is ???
	mov 0x10,r0 ; r0 set to 0x10, r0 set to 0x10
	fmov.s @(r0,r13),fr3
	mov 0x10,r0 ; r0 set to 0x10, r0 set to 0x10
	fmov.s @(r0,r4),fr2
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
	fmul fr0,fr3
	fmov.s @r15,fr0 ; r0 ??? bc r15 is ???, r0 ??? bc r15 is ???
	fmac fr0,fr2,fr3
	fmov.s @(r0,r15),fr0
	mov 0x10,r0 ; r0 set to 0x10, r0 set to 0x10
	fmov.s @(r0,r12),fr2
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	fmac fr0,fr2,fr3
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r1
	and r5,r1
	mov.l r1,@r2
	fmov.s @(r0,r15),fr0 ; r0 ??? bc r15 is ???, r0 ??? bc r15 is ???
	mov 0x14,r0 ; r0 set to 0x14, r0 set to 0x14
	fmov.s @(r0,r13),fr3
	mov 0x14,r0 ; r0 set to 0x14, r0 set to 0x14
	fmov.s @(r0,r4),fr2
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
	fmul fr0,fr3
	fmov.s @r15,fr0 ; r0 ??? bc r15 is ???, r0 ??? bc r15 is ???
	fmac fr0,fr2,fr3
	fmov.s @(r0,r15),fr0
	mov 0x14,r0 ; r0 set to 0x14, r0 set to 0x14
	fmov.s @(r0,r12),fr2
	mov 0x44,r0 ; r0 set to 0x44, r0 set to 0x44
	fmac fr0,fr2,fr3
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r5,r2
	mov.l r2,@(r0,r14)
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	fmov.s @(r0,r15),fr0 ; r0 ??? bc r15 is ???, r0 ??? bc r15 is ???
	mov 0x18,r0 ; r0 set to 0x18, r0 set to 0x18
	fmov.s @(r0,r13),fr3
	mov 0x18,r0 ; r0 set to 0x18, r0 set to 0x18
	fmov.s @(r0,r4),fr2
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
	fmul fr0,fr3
	fmov.s @r15,fr0 ; r0 ??? bc r15 is ???, r0 ??? bc r15 is ???
	fmac fr0,fr2,fr3
	fmov.s @(r0,r15),fr0
	mov 0x18,r0 ; r0 set to 0x18, r0 set to 0x18
	fmov.s @(r0,r12),fr2
	mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48
	fmac fr0,fr2,fr3
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r5,r2
	mov.l r2,@(r0,r14)

loc_8C1089EC:
	mov.w @(0x1C,r14),r0
	mov 0x1C,r4 ; r4 set to 0x1C, r4 set to 0x1C, r4 set to 0x1c
	add 0x01,r0 ; r0 set to 0x49, r0 set to 0x49
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	mov r0,r3 ; r3 set to 0x49, r3 set to 0x49
	mov.w @(0x1E,r14),r0
	lds r3,fpul
	muls.w r4,r0 ; r0 ??, r0 ??
	mov 0x1C,r0 ; r0 set to 0x1C, r0 set to 0x1C, r0 set to 0x1c
	float fpul,fr3
	sts macl,r4
	add r10,r4 ; r4 ??? bc r10 is ???, r4 ??? bc r10 is ???, r4 ??? bc r10 is ???
	fmov.s @(r0,r4),fr1
	fmov.s @r4,fr2
	fsub fr2,fr1
	fcmp/gt fr3,fr1
	bt loc_8C108A32
	mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00, r0 set to 0x00
	mov.w r0,@(0x1C,r14)
	mov 0x09,r3 ; r3 set to 0x09, r3 set to 0x09, r3 set to 0x09
	mov.w @(0x1E,r14),r0
	add 0x01,r0 ; r0 set to 0x01, r0 set to 0x01, r0 set to 0x01
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	add 0x01,r0 ; r0 set to 0x02, r0 set to 0x02, r0 set to 0x02
	cmp/hs r3,r0
	bf loc_8C108A32
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0x03, r0 set to 0x03, r0 set to 0x03
	bra loc_8C108A32
	mov.b r0,@(0x04,r14)

loc_8c108a2c:
	mov.l @(loc_8c108a58,pc),r2
	jsr @r2
	mov r14,r4

loc_8C108A32:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C108A42:
	#data 0x0084
	#align4

loc_8C108A44:
	#data loc_8c109458
loc_8C108A48:
	#data 0x47800000
loc_8C108A4C:
	#data 0x43B40000
loc_8C108A50:
	#data 0x3F000000
loc_8C108A54:
	#data 0x0000FFFf
loc_8C108A58:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C108A5C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r5,r14
	mov.l @(0xB0,PC),r3
	mov 0x05,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c108abe
	mov r0,r4
	mov.l @(0xA8,PC),r1
	mov.l @(0xA0,PC),r3
	mov.l r3,@(0x10,r4)
	mov r14,r3
	mov.l @r1,r2
	shll2 r3
	mov r4,r1
	add 0x34,r1
	mov.l @r2,r2
	add r2,r3
	mov.w @(0x7A,PC),r2
	mov.l @(0x1C,r3),r0
	mov r14,r3
	add r4,r2
	mov.l r0,@r2
	mov r14,r2
	shll r2
	mov.l @(0x88,PC),r0
	add r3,r2
	mov.l @(0x88,PC),r3
	shll2 r2
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x62,PC),r0
	mov.w @(0x5E,PC),r1
	mov.w @(0x60,PC),r2
	mov.l r1,@(r0,r4)
	mov.l @r15,r3
	mov.w @(0x5C,PC),r0
	add r3,r2
	mov.l r2,@(r0,r4)
	mov 0x20,r0
	mov.l @r15,r3
	mov.l r3,@(0x14,r4)
	mov.b r14,@(r0,r4)

loc_8C108ABE:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C108AC6:
	mov.l @(0x14,r4),r0
	mov.b @(0x04,r0),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8C108AD6
	mov.l @(loc_8C108B2C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8C108AD6:
	mov.w @(loc_8C108B12,pc),r0 ; r0 set to 0x12c
	mov.l @(0x14,r4),r3
	mov.w @(loc_8C108B14,pc),r5 ; r5 set to 0x100
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C108AF2
	cmp/eq 0x01,r0
	bt loc_8C108AFc
	bra loc_8C108B04
	nop

loc_8C108AF2:
	mov 0x48,r0 ; r0 set to 0x48
	mov.l @(r0,r4),r3
	sub r5,r3
	bra loc_8C108B04
	mov.l r3,@(r0,r4)

loc_8c108afc:
	mov 0x48,r0
	mov.l @(r0,r4),r1
	add r5,r1
	mov.l r1,@(r0,r4)

loc_8C108B04:
	rts
	nop

;==============================================
loc_8C108B08:
	#data 0x0084
loc_8C108B0a:
	#data 0x0809
loc_8C108B0c:
	#data 0x00Cc
loc_8C108B0e:
	#data 0x0088
loc_8C108B10:
	#data 0x00C8
loc_8C108B12:
	#data 0x012c
loc_8C108B14:
	#data 0x0100
	#align4

loc_8C108B18:
	#data bank04.loc_8c044F12
loc_8C108B1C:
	#data loc_8c108AC6
loc_8C108B20:
	#data 0x8C26A904
loc_8C108B24:
	#data bank13.loc_8c13e228
loc_8C108B28:
	#data bank12.loc_8c1294C8
loc_8C108B2C:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C108B30:
	mov.l r14,@-r15
	mov 0x00,r14 ; r14 set to 0x00
	mov.l r13,@-r15
	mov 0x04,r13 ; r13 set to 0x04
	sts.l pr,@-r15

loc_8C108B3A:
	bsr loc_8C108B4c
	mov r14,r4 ; r4 set to 0x00
	add 0x01,r14 ; r14 set to 0x01
	cmp/ge r13,r14
	bf loc_8C108B3a
	lds.l @r15+,pr
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	rts
	mov.l @r15+,r14

;==============================================
loc_8C108B4C:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C108C04,pc),r3 ; r3 set to 0x8C044F12
	mov 0x05,r5 ; r5 set to 0x05
	mov.l r4,@r15
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C108BCa
	mov r0,r4 ; r4 ??? bc r0 is ???
	mov.l @(loc_8C108C08,pc),r2 ; r2 set to 0x8C108BD2
	mov 0x01,r3 ; r3 set to 0x01
	mov.w @(loc_8C108BF8,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov 0x02,r2 ; r2 set to 0x02
	mov.l @r15,r1
	mov.l @(loc_8C108C0C,pc),r3 ; r3 set to 0x8C26A904
	cmp/ge r2,r1
	bt/s loc_8C108B86
	mov.l @r3,r5 ; r5 ??
	mov.l @r5,r1
	mov.l @(0x08,r1),r0 ; r0 ??? bc r1 is ???
	mov.w @(loc_8C108BFA,pc),r1 ; r1 set to 0x84
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l r0,@r1
	bra loc_8C108B90
	nop

loc_8C108B86:
	mov.l @r5,r1
	mov.l @(0x34,r1),r0
	mov.w @(loc_8C108BFA,pc),r1 ; r1 set to 0x84
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l r0,@r1

loc_8C108B90:
	mov.w @(loc_8C108BFE,pc),r0 ; r0 set to 0xCC, r0 set to 0xCc
	mov.w @(loc_8C108BFC,pc),r3 ; r3 set to 0x805, r3 set to 0x805
	mov.l @(loc_8C108C14,pc),r1 ; r1 set to 0x8C26A95C, r1 set to 0x8C26A95c
	mov.l r3,@(r0,r4)
	mov.l @r15,r5
	mov.l @(loc_8C108C10,pc),r2 ; r2 set to 0x8C165D8C, r2 set to 0x8C165D8c
	mov r5,r3 ; r3 ??? bc r5 is ???, r3 ??? bc r5 is ???
	shll r5
	add r3,r5
	mov.b @r1,r3
	shll2 r5
	tst r3,r3
	bf/s loc_8C108BBc
	add r2,r5
	mov.l @(loc_8C108C18,pc),r3 ; r3 set to 0x8C1294C8, r3 set to 0x8C1294C8
	mov r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???
	mov r5,r2 ; r2 ??? bc r5 is ???, r2 ??? bc r5 is ???
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
	bra loc_8C108BCa
	nop

loc_8c108bbc:
	mov r5,r2
	mov.l @(loc_8c108c18,pc),r3
	mov r4,r1
	add 0x30,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0

loc_8C108BCA:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C108BD2:
	mov.l @(loc_8C108C14,pc),r1 ; r1 set to 0x8C26A95c
	mov.b @r1,r2
	tst r2,r2
	bf loc_8C108BEa
	mov 0x44,r0 ; r0 set to 0x44
	mov.w @(loc_8C108C00,pc),r3 ; r3 set to 0x200
	mov.l @(r0,r4),r0 ; r0 ??? bc r4 is ???
	mov 0x44,r1 ; r1 set to 0x44
	add r4,r1 ; r1 ??? bc r4 is ???
	add r3,r0
	bra loc_8C108BF4
	mov.l r0,@r1

loc_8C108BEA:
	mov 0x44,r0 ; r0 set to 0x44
	mov.w @(loc_8C108C02,pc),r3 ; r3 set to 0x100
	mov.l @(r0,r4),r2
	add r3,r2
	mov.l r2,@(r0,r4)

loc_8C108BF4:
	rts
	nop

;==============================================
loc_8C108BF8:
	#data 0x012c
loc_8C108BFA:
	#data 0x0084
loc_8C108BFC:
	#data 0x0805
loc_8C108BFE:
	#data 0x00Cc
loc_8C108C00:
	#data 0x0200
loc_8C108C02:
	#data 0x0100
	#align4

loc_8C108C04:
	#data bank04.loc_8c044F12
loc_8C108C08:
	#data loc_8c108BD2
loc_8C108C0C:
	#data 0x8C26A904
loc_8C108C10:
	#data bank16.loc_8c165D8c
loc_8C108C14:
	#data 0x8C26A95c
loc_8C108C18:
	#data bank12.loc_8c1294C8

;==============================================
loc_8C108C1C:
	sts.l pr,@-r15
	mov.l @(0x11C,PC),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c108c3e
	mov r0,r4
	mov.w @(0xFA,PC),r0
	mov 0x00,r3
	mov.l @(0x10C,PC),r2
	mov.b r3,@(r0,r4)
	add 0xA0,r0
	mov.w @(0xF2,PC),r3
	mov.l r2,@(0x10,r4)
	mov.l r3,@(r0,r4)

loc_8C108C3E:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C108C44:
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C108C54
	cmp/eq 0x01,r0
	bt loc_8C108C58
	bra loc_8C108C5c
	nop

loc_8C108C54:
	bra loc_8C108C60
	nop

loc_8C108C58:
	bra loc_8C108D60
	nop

loc_8C108C5C:
	rts
	nop

;==============================================
loc_8c108c60:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r8,@-r15
	mov 0x78,r4
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/ge r4,r0
	bf loc_8c108d24
	mov r4,r0
	nop
	mov.l @(loc_8C108D44,pc),r3
	mov.w r0,@(0x1C,r14)
	mov.w @(loc_8C108D30,pc),r0
	mov.l @r3,r4
	mov.w @(loc_8C108D32,pc),r2
	mov.l @(r0,r4),r4
	cmp/hi r2,r4
	bf loc_8c108c90
	mov.w @(loc_8C108D34,pc),r1
	cmp/hs r1,r4
	bf loc_8c108d24

loc_8c108c90:
	mov.w @(loc_8C108D36,pc),r2
	cmp/hi r2,r4
	bt loc_8c108d24
	mov.b @(0x04,r14),r0
	mov 0x00,r4
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov r4,r0
	nop
	mov.l @(loc_8C108D48,pc),r3
	mov.b r0,@(0x05,r14)
	mov.w r0,@(0x1C,r14)
	mov.l @(loc_8c108d4c,pc),r2
	mov.l @r3,r0
	jsr @r2
	mov.l @r0,r8
	cmp/pz r0
	bf loc_8c108cb8
	bra loc_8c108cc2
	and 0x03,r0

loc_8c108cb8:
	not r0,r0
	add 0x01,r0
	and 0x03,r0
	not r0,r0
	add 0x01,r0

loc_8c108cc2:
	add 0x03,r0
	mov.l @(loc_8c108d4c,pc),r2
	shll2 r0
	mov.l @(r0,r8),r3
	mov.w @(loc_8C108D38,pc),r0
	jsr @r2
	mov.l r3,@(r0,r14)
	mov.l @(loc_8c108d50,pc),r3
	mov r0,r1
	jsr @r3
	mov 0x09,r0
	mov r0,r2
	shll r2
	mov r0,r3
	mov r0,r4
	mov.l @(loc_8c108d54,pc),r0
	add r3,r2
	mov.l @(loc_8c108d58,pc),r3
	shll2 r2
	mov r14,r1
	add 0x34,r1
	add r0,r2
	jsr @r3
	mov 0x0C,r0
	mov r4,r5
	mov.l @(loc_8c108d5c,pc),r3
	shll2 r5
	shll r5
	add r3,r5
	fmov.s @r5,fr3
	mov 0x44,r0
	ftrc fr3,fpul
	sts fpul,r2
	mov.l r2,@(r0,r14)
	mov 0x04,r0
	fmov.s @(r0,r5),fr3
	mov 0x48,r0
	ftrc fr3,fpul
	fldi1 fr3
	sts fpul,r1
	mov.l r1,@(r0,r14)
	mov 0x78,r0
	fmov.s fr3,@(r0,r14)
	mov 0x7C,r0
	fmov.s fr3,@(r0,r14)
	mov 0x78,r0
	fmov.s @(r0,r14),fr3
	add 0x08,r0
	fmov.s fr3,@(r0,r14)

loc_8c108d24:
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

;==============================================
loc_8C108D2c:
	#data 0x012C
loc_8C108D2e:
	#data 0x0C0D
loc_8C108D30:
	#data 0x0090
loc_8C108D32:
	#data 0x01F4
loc_8C108D34:
	#data 0x03E8
loc_8C108D36:
	#data 0x0DAC
loc_8C108D38:
	#data 0x0084
	#align4

loc_8c108d3c:
	#data bank04.loc_8c044f12
loc_8c108d40:
	#data loc_8C108C44
loc_8C108D44:
	#data 0x8C26823C
loc_8C108D48:
	#data 0x8C26A904
loc_8c108d4c:
	#data bank11.loc_8c11e730
loc_8c108d50:
	#data bank12.loc_8c12939c
loc_8c108d54:
	#data bank13.loc_8c13e240
loc_8c108d58:
	#data bank12.loc_8c1294c8
loc_8c108d5c:
	#data bank13.loc_8c13e2ac

;==============================================
loc_8C108D60:
	mov.b @(0x05,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_8C108D72
	mov 0x00,r5 ; r5 set to 0x00
	cmp/eq 0x01,r0
	bt loc_8C108DC0
	bra loc_8C108E06
	nop

loc_8C108D72:
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	cmp/pz r0
	bf loc_8C108D82
	bra loc_8C108D8c
	and 0x01,r0

loc_8C108D82:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C108D8C:
	mov.w @(loc_8C108E0A,pc),r1 ; r1 set to 0x12C, r1 set to 0x12c
	mov 0x05,r3 ; r3 set to 0x05, r3 set to 0x05
	add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???
	mov.b r0,@r1
	mov.w @(0x1C,r4),r0
	cmp/ge r3,r0
	bf loc_8C108E06
	mov.b @(0x05,r4),r0
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	mov r5,r0
	nop
	mov.w r0,@(0x1C,r4)
	mov 0x01,r2 ; r2 set to 0x01, r2 set to 0x01
	mov.w @(loc_8C108E0A,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	fldi1 fr3
	mov.b r2,@(r0,r4)
	mov 0x78,r0 ; r0 set to 0x78, r0 set to 0x78
	fmov.s fr3,@(r0,r4)
	mov 0x7C,r0 ; r0 set to 0x7C, r0 set to 0x7c
	fmov.s fr3,@(r0,r4)
	mov 0x78,r0 ; r0 set to 0x78, r0 set to 0x78
	fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???, r3 ??? bc r4 is ???
	add 0x08,r0 ; r0 set to 0x80, r0 set to 0x80
	bra loc_8C108E06
	fmov.s fr3,@(r0,r4)

loc_8C108DC0:
	mov.l @(loc_8C108E10,pc),r1 ; r1 set to 0x3D888889
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s @(r0,r4),fr2
	mov 0x0F,r3 ; r3 set to 0x0f
	lds r1,fpul
	fsts fpul,fr3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s fr2,@(r0,r4)
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s @(r0,r4),fr2
	add 0x08,r0 ; r0 set to 0x80
	fmov.s fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0 ; r0 set to 0x81
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0 ; r0 ??
	cmp/ge r3,r0
	bf loc_8C108E06
	mov r5,r0
	nop
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C108E0A,pc),r0 ; r0 set to 0x12c
	mov.l @(loc_8C108E14,pc),r1 ; r1 set to 0x8C26823c
	mov.b r5,@(r0,r4)
	mov.w @(loc_8C108E0E,pc),r0 ; r0 set to 0x90
	mov.l @r1,r2
	mov.w @(loc_8C108E0C,pc),r3 ; r3 set to 0x1194
	mov.l @(r0,r2),r2
	cmp/hi r3,r2
	bf loc_8C108E06
	mov.l @(loc_8C108E18,pc),r2 ; r2 set to 0x8C0450C0
	jmp @r2
	nop

loc_8C108E06:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C108E0A:
	#data 0x012c
loc_8C108E0C:
	#data 0x1194
loc_8C108E0E:
	#data 0x0090
	#align4

loc_8C108E10:
	#data 0x3D888889
loc_8C108E14:
	#data 0x8C26823c
loc_8C108E18:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C108E1C:
	sts.l pr,@-r15
	mov.l @(0x128,PC),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c108e3e
	mov r0,r4
	mov.w @(0x102,PC),r0
	mov 0x00,r3
	mov.l @(0x118,PC),r2
	mov.b r3,@(r0,r4)
	add 0xA0,r0
	mov.w @(0xFA,PC),r3
	mov.l r2,@(0x10,r4)
	mov.l r3,@(r0,r4)

loc_8C108E3E:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C108E44:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r8,@-r15
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C108F50,pc),r12 ; r12 set to 0x8C165DEc
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_8C108E6c
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bf loc_8C108E68
	bra loc_8C108F68
	nop

loc_8C108E68:
	bra loc_8C10902e
	nop

loc_8C108E6C:
	mov.w @(loc_8C108F34,pc),r0 ; r0 set to 0x12c
	mov 0x3C,r4 ; r4 set to 0x3c
	mov.b r13,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0x01,r0 ; r0 set to 0x12d
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0 ; r0 ??
	cmp/ge r4,r0
	bt loc_8C108E82
	bra loc_8C10902e
	nop

loc_8C108E82:
	mov r4,r0
	nop
	mov.l @(loc_8C108F54,pc),r3 ; r3 set to 0x8C26823c
	mov.w r0,@(0x1C,r14)
	mov.w @(loc_8C108F38,pc),r0 ; r0 set to 0x90
	mov.l @r3,r4
	mov.w @(loc_8C108F3A,pc),r2 ; r2 set to 0x1F4
	mov.l @(r0,r4),r4
	cmp/hi r2,r4
	bf loc_8C108EA0
	mov.w @(loc_8C108F3C,pc),r1 ; r1 set to 0x3E8
	cmp/hs r1,r4
	bt loc_8C108EA0
	bra loc_8C10902e
	nop

loc_8C108EA0:
	mov.w @(loc_8C108F3E,pc),r2 ; r2 set to 0xDAc
	cmp/hi r2,r4
	bf loc_8C108EB0
	mov.w @(loc_8C108F40,pc),r1 ; r1 set to 0x1194
	cmp/hs r1,r4
	bt loc_8C108EB0
	bra loc_8C10902e
	nop

loc_8C108EB0:
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C108F58,pc),r11 ; r11 set to 0x8C11E730
	add 0x01,r0
	jsr @r11
	mov.b r0,@(0x04,r14)
	mov.l @(loc_8C108F5C,pc),r3 ; r3 set to 0x8C12939c
	mov r0,r1
	jsr @r3
	mov 0x06,r0 ; r0 set to 0x06
	mov 0x20,r1 ; r1 set to 0x20
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.b r0,@r1
	mov r13,r0 ; r0 ??? bc r13 is ???
	nop
	mov.w r0,@(0x1C,r14)
	mov 0x01,r3 ; r3 set to 0x01
	mov.w @(loc_8C108F34,pc),r0 ; r0 set to 0x12c
	mov.l @(loc_8C108F60,pc),r2 ; r2 set to 0x8C26A904
	mov.b r3,@(r0,r14)
	mov.l @r2,r0 ; r0 ??
	jsr @r11
	mov.l @r0,r8
	cmp/pz r0
	bf loc_8C108EE4
	bra loc_8C108EEe
	and 0x01,r0

loc_8C108EE4:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C108EEE:
	add 0x09,r0
	mov r14,r1
	shll2 r0
	mov.l @(r0,r8),r3
	add 0x34,r1
	mov.w @(loc_8C108F42,pc),r0 ; r0 set to 0x84, r0 set to 0x84
	mov.l r3,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	mov.b @(r0,r14),r2
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8C108F64,pc),r3 ; r3 set to 0x8C1294C8, r3 set to 0x8C1294C8
	shll2 r2
	shll r2
	add r12,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
	jsr @r11
	nop
	mov.w @(loc_8C108F44,pc),r3 ; r3 set to 0x3FFF, r3 set to 0x3FFf
	cmp/pz r0
	bf/s loc_8C108F24
	mov 0x48,r1 ; r1 set to 0x48, r1 set to 0x48
	bra loc_8C108F2e
	and r3,r0

loc_8C108F24:
	not r0,r0
	add 0x01,r0
	and r3,r0
	not r0,r0
	add 0x01,r0

loc_8C108F2E:
	add r14,r1
	bra loc_8C10902e
	mov.l r0,@r1

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C108F34:
	#data 0x012c
loc_8C108F36:
	#data 0x0B21
loc_8C108F38:
	#data 0x0090
loc_8C108F3A:
	#data 0x01F4
loc_8C108F3C:
	#data 0x03E8
loc_8C108F3E:
	#data 0x0DAc
loc_8C108F40:
	#data 0x1194
loc_8C108F42:
	#data 0x0084
loc_8C108F44:
	#data 0x3FFf
	#align4

loc_8C108F48:
	#data bank04.loc_8c044F12
loc_8C108F4C:
	#data loc_8c108E44
loc_8C108F50:
	#data bank16.loc_8c165DEc
loc_8C108F54:
	#data 0x8C26823c
loc_8C108F58:
	#data bank11.loc_8c11e730
loc_8C108F5C:
	#data bank12.loc_8c12939c
loc_8C108F60:
	#data 0x8C26A904
loc_8C108F64:
	#data bank12.loc_8c1294C8

;==============================================
loc_8c108f68:
	mov 0x20,r4
	add r14,r4
	mov.b @r4,r4
	mov 0x0C,r1
	mova @(loc_8C109040,pc),r0
	extu.b r4,r4
	fmov.s @r0,fr15
	mov r4,r3
	shll r4
	add r3,r4
	shll2 r4
	shll r4
	add r12,r4
	add r4,r1
	fmov.s @r4,fr3
	fmov.s @r1,fr2
	mov 0x20,r4
	add r14,r4
	fsub fr3,fr2
	mov 0x34,r0
	fmov.s @(r0,r14),fr3
	fdiv fr15,fr2
	fadd fr2,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0
	mov.b @r4,r4
	extu.b r4,r4
	mov r4,r3
	shll r4
	add r3,r4
	shll2 r4
	shll r4
	mov 0x04,r1
	add r12,r4
	add r4,r1
	fmov.s @r1,fr3
	mov 0x10,r1
	add r4,r1
	fmov.s @r1,fr2
	mov 0x20,r4
	add r14,r4
	fsub fr3,fr2
	fmov.s @(r0,r14),fr3
	mov 0x08,r1
	fdiv fr15,fr2
	fadd fr2,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x3C,r0
	mov.b @r4,r4
	extu.b r4,r4
	mov r4,r3
	shll r4
	add r3,r4
	shll2 r4
	shll r4
	add r12,r4
	add r4,r1
	fmov.s @r1,fr3
	mov 0x14,r1
	add r4,r1
	fmov.s @r1,fr2
	fsub fr3,fr2
	fmov.s @(r0,r14),fr3
	fdiv fr15,fr2
	fadd fr2,fr3
	mov.l @(loc_8c109054,pc),r2
	fmov.s fr3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(loc_8C109044,pc),r0
	mov.l @(loc_8C109050,pc),r3
	fmov.s @r0,fr2
	mova @(loc_8C109048,pc),r0
	float fpul,fr3
	fmov.s @r0,fr1
	mova @(loc_8C10904C,pc),r0
	fmov.s @r0,fr0
	fdiv fr15,fr3
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	mov 0x74,r0
	fmov.s fr0,@(r0,r14)
	mov 0x78,r3
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8c10902e
	mov r13,r0
	nop
	mov.b r0,@(0x04,r14)
	mov.w r0,@(0x1C,r14)

loc_8C10902E:
	lds.l @r15+,pr
	fmov.s @r15+,fr15
	mov.l @r15+,r8
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c109040:
	#data 0x42F00000
loc_8c109044:
	#data 0x4B340000
loc_8c109048:
	#data 0x43B40000
loc_8c10904c:
	#data 0x3F000000
loc_8c109050:
	#data 0x0000FFFf
loc_8C109054:
	#data bank11.loc_8c11E860

;==============================================
loc_8C109058:
	sts.l pr,@-r15
	mov.l @(loc_8C10917C,pc),r3 ; r3 set to 0x8C044F12
	mov 0x05,r5 ; r5 set to 0x05
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C1090Ae
	mov r0,r4 ; r4 ??? bc r0 is ???
	mov.w @(loc_8C109172,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8C109184,pc),r1 ; r1 set to 0x8C26A904
	mov.l @(loc_8C109180,pc),r2 ; r2 set to 0x8C1090B4
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3 ; r3 ??
	mov.w @(loc_8C109174,pc),r0 ; r0 set to 0x84
	mov.l @r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(loc_8C109188,pc),r5 ; r5 set to 0x8C165E7c
	mov.l @(0x2C,r2),r3
	mov.l @(loc_8C10918C,pc),r2 ; r2 set to 0x8C26A95c
	mov.l r3,@(r0,r4)
	mov.b @r2,r3
	tst r3,r3
	bf loc_8C10909a
	mov.l @(loc_8C109190,pc),r3 ; r3 set to 0x8C1294C8
	mov r4,r1 ; r1 ??? bc r4 is ???
	mov r5,r2 ; r2 set to 0x8C165E7c
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	bra loc_8C1090A8
	nop

loc_8c10909a:
	mov r5,r2
	mov.l @(loc_8c109190,pc),r3
	mov r4,r1
	add 0x0C,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0

loc_8c1090a8:
	mov.w @(loc_8C109178,pc),r0
	mov.w @(loc_8C109176,pc),r2
	mov.l r2,@(r0,r4)

loc_8C1090AE:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C1090B4:
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
	mov.w @(0xA4,PC),r3
	add 0x04,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8c1090e2
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)

loc_8C1090E2:
	mov.l @(0xA0,PC),r3
	mov.w @(0x8C,PC),r0
	mov.l @r3,r4
	mov.l @(0xA8,PC),r1
	mov.l @r4,r2
	mov.l @(r0,r14),r5
	jsr @r1
	mov.l @(0x30,r2),r4
	mova @(0xB4,PC),r0
	mov.l @(0xBC,PC),r12
	fmov @r0,fr12
	mova @(0xB0,PC),r0
	fmov @r0,fr13
	mova @(0xB0,PC),r0
	mov.l @(0x9C,PC),r9
	mov 0x00,r13
	mov.l @(0x94,PC),r8
	mov.l @(0x9C,PC),r11
	mov.l @(0x98,PC),r10
	bra loc_8c10914e
	fmov @r0,fr14

loc_8C10910C:
	jsr @r11
	mov r15,r4
	mov 0x08,r0
	fmov @(r0,r15),fr15
	fcmp/gt fr15,fr14
	bf loc_8c109148
	fmov fr15,fr3
	fmul fr15,fr3
	fmov fr3,@-r15
	mov.w @(0x1C,r14),r0
	mov r0,r4
	add r13,r4
	lds r4,fpul
	mova @(0x90,PC),r0
	fmov @r0,fr1
	float fpul,fr2
	fmul fr1,fr2
	fdiv fr12,fr2
	fadd fr13,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r8
	and r12,r4
	fmov @r15+,fr3
	mova @(0x7C,PC),r0
	fmul fr0,fr3
	fmov @r15,fr2
	fmov @r0,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@r15

loc_8C109148:
	add 0x1E,r13
	jsr @r10
	mov r15,r4

loc_8C10914E:
	jsr @r9
	nop
	tst r0,r0
	bt loc_8c10910c
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
loc_8C109172:
	#data 0x012c
loc_8C109174:
	#data 0x0084
loc_8c109176:
	#data 0x0801
loc_8c109178:
	#data 0x00Cc
loc_8c10917a:
	#data 0x0168
	#align4

loc_8C10917C:
	#data bank04.loc_8c044F12
loc_8C109180:
	#data loc_8c1090B4
loc_8C109184:
	#data 0x8C26A904
loc_8C109188:
	#data bank16.loc_8c165E7c
loc_8C10918C:
	#data 0x8C26A95c
loc_8C109190:
	#data bank12.loc_8c1294C8
loc_8C109194:
	#data loc_8c108060
loc_8C109198:
	#data bank11.loc_8c11E860
loc_8C10919C:
	#data loc_8c108086
loc_8C1091A0:
	#data loc_8c1081B4
loc_8C1091A4:
	#data loc_8c108168
loc_8C1091a8:
	#data 0x43B40000
loc_8C1091ac:
	#data 0x3F000000
loc_8C1091b0:
	#data 0xC1200000
loc_8C1091b4:
	#data 0x0000FFFf
loc_8C1091b8:
	#data 0x47800000
loc_8C1091BC:
	#data 0x3951B717

;==============================================
loc_8C1091C0:
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
	bf loc_8c10922e
	mov.w @(0x1C,r14),r0
	mov.w @(0x94,PC),r3
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8c1091ea
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)

loc_8C1091EA:
	mov.l @(0x90,PC),r3
	mov.w @(0x84,PC),r0
	mov.l @r3,r4
	mov.l @(0x8C,PC),r1
	mov.l @r4,r2
	mov.l @(r0,r14),r5
	jsr @r1
	mov.l @(0x8,r2),r4
	mov.l @(0x90,PC),r13
	mova @(0x90,PC),r0
	mov.l @(0x88,PC),r12
	mov.l @(0x80,PC),r11
	bra loc_8c109226
	fmov @r0,fr15

loc_8C109206:
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

loc_8C109226:
	jsr @r12
	nop
	tst r0,r0
	bt loc_8c109206

loc_8C10922E:
	add 0x08,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C10923E:
	sts.l pr,@-r15
	mov.l @(0x50,PC),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c10926c
	mov r0,r4
	mov.w @(0x22,PC),r0
	mov 0x01,r3
	mov.l @(0x24,PC),r1
	mov.l @(0x40,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov.w @(0x12,PC),r0
	mov.l @r3,r2
	mov.l @(0x4,r2),r3
	mov.w @(0x10,PC),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)

loc_8C10926C:
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c109272:
	#data 0x01F4
loc_8c109274:
	#data 0x0084
loc_8c109276:
	#data 0x012C
loc_8c109278:
	#data 0x0801
	#align4

loc_8c10927c:
	#data 0x8C26A904
loc_8C109280:
	#data loc_8c108060
loc_8C109284:
	#data loc_8c1081E6
loc_8C109288:
	#data loc_8c108086
loc_8C10928C:
	#data loc_8c108192
loc_8C109290:
	#data 0x3B03126f
loc_8C109294:
	#data bank04.loc_8c044F12
loc_8C109298:
	#data loc_8c1091C0

;==============================================
loc_8C10929C:
	mova @(loc_8C1093C8,pc),r0  ; r0 init to 0x8C1093C8
	mov.l r14,@-r15
	mov r4,r14
	mov.l r8,@-r15
	sts.l pr,@-r15
	fmov.s @r0,fr4
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C1093CC,pc),r4 ; r4 set to 0x8C165E94
	extu.b r0,r0 ; r0 set to 0xC8
	cmp/eq 0x00,r0
	bt loc_8C1092Be
	cmp/eq 0x01,r0
	bt loc_8C109318
	cmp/eq 0x02,r0
	bt loc_8C109390
	bra loc_8C1093Be
	nop

loc_8C1092BE:
mov.l @(loc_8C1093D0,pc),r3 ; r3 set to 0x8C046AE0
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt loc_8C1093Be
	mov.b @(0x04,r14),r0
	mov r14,r3 ; r3 ??? bc r14 is ???
	mov.l @(loc_8C1093D8,pc),r2 ; r2 set to 0x8C11E730
	add 0x40,r3
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mova @(loc_8C1093D4,pc),r0  ; r0 set to 0x8C1093D4
	fmov.s @r0,fr3
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr3,@(r0,r14)
	jsr @r2
	mov r3,r8
	mov.l @(loc_8C1093DC,pc),r3 ; r3 set to 0x8C1292D4
	mov r0,r1 ; r1 set to 0x60
	jsr @r3
	mov 0x05,r0 ; r0 set to 0x05
	lds r0,fpul
	mova @(loc_8C1093E0,pc),r0  ; r0 set to 0x8C1093E0
	fmov.s @r0,fr2 ; r2 ??
	mova @(loc_8C1093E4,pc),r0  ; r0 set to 0x8C1093E4
	fmov.s @r0,fr1 ; r1 ??
	mova @(loc_8C1093E8,pc),r0  ; r0 set to 0x8C1093E8
	float fpul,fr3
	fmov.s @r0,fr0 ; r0 ??
	mov.l @(loc_8C1093EC,pc),r2 ; r2 set to 0xFFFf
	mov r14,r4 ; r4 ??? bc r14 is ???
	add 0x40,r4
	fmul fr2,fr3 ; r3 ??
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r2,r3
	mov.l r3,@r8
	mov.l @(loc_8C1093F0,pc),r3 ; r3 set to 0x8C129128
	mov.l @r4,r1
	jsr @r3
	mov 0x1E,r0 ; r0 set to 0x1e
	bra loc_8C1093Be
	mov.l r0,@(0x08,r4)

loc_8C109318:
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	fldi0 fr3
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8C109338
	fmov.s @(r0,r14),fr2
	fadd fr4,fr2
	bra loc_8C10935c
	fmov.s fr2,@(r0,r14)

loc_8C109338:
	mov r14,r5
	add 0x40,r5
	mov.l @(loc_8C1093F4,pc),r1 ; r1 set to 0xC0000000
	fmov.s @(r0,r14),fr1 ; r1 ??? bc r14 is ???
	lds r1,fpul
	fsts fpul,fr2
	fadd fr2,fr1
	fmov.s fr1,@(r0,r14)
	mov.l @(0x04,r5),r2
	mov.l @r5,r3
	add r3,r2
	mov.l r2,@(0x04,r5)
	mov r14,r5
	add 0x40,r5
	mov.l @r5,r2
	mov.l @(0x08,r5),r3
	sub r3,r2
	mov.l r2,@r5

loc_8C10935C:
	mova @(loc_8C1093F8,pc),r0  ; r0 init to 0x8C1093F8, r0 init to 0x8C1093F8
	fmov.s @r0,fr4
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	fmov.s @(r0,r4),fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fadd fr4,fr3
	fcmp/gt fr2,fr3
	bf loc_8C1093Be
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fldi0 fr3
	fmov.s @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_8C1093Be
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0x61, r0 set to 0x61
	mov.b r0,@(0x04,r14)
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	fmov.s @(r0,r4),fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fadd fr4,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fldi0 fr3
	bra loc_8C1093Be
	fmov.s fr3,@(r0,r14)

loc_8c109390:
	mov 0x60,r1
	add r14,r1
	mov 0x38,r0
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0
	fmov.s @(r0,r14),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x04,r0
	fmov.s @(r0,r4),fr2
	mov 0x38,r0
	fmov.s @(r0,r14),fr3
	fcmp/gt fr3,fr2
	bf loc_8c1093be
	mov 0x04,r0
	fmov.s @(r0,r4),fr3
	mov 0x38,r0
	fmov.s fr3,@(r0,r14)
	mov 0x00,r0
	mov.b r0,@(0x04,r14)

loc_8C1093BE:
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

;==============================================
	#align4
loc_8C1093C8:
	#data 0xBECCCCCd
loc_8C1093CC:
	#data bank16.loc_8c165E94
loc_8C1093D0:
	#data bank04.loc_8c046AE0
loc_8C1093D4:
	#data 0x41A00000
loc_8C1093D8:
	#data bank11.loc_8c11e730
loc_8C1093DC:
	#data bank12.loc_8c1292D4
loc_8C1093E0:
	#data 0x47800000
loc_8C1093E4:
	#data 0x43B40000
loc_8C1093E8:
	#data 0x3F000000
loc_8C1093EC:
	#data 0x0000FFFf
loc_8C1093F0:
	#data bank12.loc_8c129128
loc_8C1093F4:
	#data 0xC0000000
loc_8C1093F8:
	#data 0x42480000

;==============================================
loc_8C1093FC:
	sts.l pr,@-r15
	mov.l @(0x44,PC),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c109436
	mov r0,r4
	mov.w @(0x2A,PC),r0
	mov 0x01,r3
	mov.l @(0x38,PC),r1
	mov.l @(0x30,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(0x1C,PC),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(0xC,r2),r3
	mov.w @(0x16,PC),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(0x20,PC),r2
	mov.l @(0x20,PC),r3
	jsr @r3
	mov 0x0C,r0

loc_8C109436:
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10943c:
	#data 0x012c
loc_8c10943e:
	#data 0x0084
loc_8c109440:
	#data 0x0805
	#align4

loc_8C109444:
	#data bank04.loc_8c044F12
loc_8C109448:
	#data loc_8c10929c
loc_8C10944C:
	#data 0x8C26A904
loc_8C109450:
	#data bank16.loc_8c165E94
loc_8C109454:
	#data bank12.loc_8c1294C8

;==============================================
loc_8C109458:
	fldi1 fr6
	fsub fr4,fr6
	mova @(loc_8C109608,pc),r0  ; r0 init to 0x8C109608
	fmov fr4,fr0 ; r0 ??? bc r4 is ???
	fmov.s @r0,fr5
	fmov fr6,fr3
	fmul fr6,fr3
	fmov fr5,fr2
	fmac fr0,fr6,fr2
	fmul fr5,fr3
	fmov.s fr3,@r4
	fmov fr0,fr3
	fmul fr4,fr3
	fmov.s fr2,@r5
	fmul fr5,fr3
	rts
	fmov.s fr3,@r6

;==============================================
loc_8C10947A:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	mov.w @(0x1C,r14),r0
	mov 0x1C,r4
	mov.l @(0x180,PC),r13
	mov r0,r3
	mov.w @(0x1E,r14),r0
	lds r3,fpul
	mov r15,r5
	muls.w r4,r0
	mov 0x1C,r0
	mov r15,r6
	float fpul,fr3
	add 0x04,r5
	add 0x08,r6
	sts macl,r4
	add r13,r4
	fmov fr3,fr4
	fmov @(r0,r4),fr1
	fmov @r4,fr2
	fsub fr2,fr1
	fdiv fr1,fr4
	bsr loc_8c109458
	mov r15,r4
	mov.w @(0x1E,r14),r0
	mov 0x1C,r3
	mov r0,r5
	add 0xFF,r5
	mul.l r3,r5
	mov r0,r7
	mov 0x04,r0
	fmov @(r0,r15),fr0
	mov 0x04,r0
	sts macl,r5
	mul.l r3,r7
	add r13,r5
	sts macl,r4
	add r13,r4
	fmov @(r0,r4),fr3
	mov 0x04,r0
	fmov @(r0,r5),fr2
	mov 0x08,r0
	fmul fr0,fr3
	fmov @r15,fr0
	mov r4,r6
	add 0x1C,r6
	fmac fr0,fr2,fr3
	fmov @(r0,r15),fr0
	mov 0x04,r0
	fmov @(r0,r6),fr2
	mov 0x34,r0
	fmac fr0,fr2,fr3
	fmov fr3,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r15),fr0
	mov 0x08,r0
	fmov @(r0,r4),fr3
	mov 0x08,r0
	fmov @(r0,r5),fr2
	mov 0x08,r0
	fmul fr0,fr3
	fmov @r15,fr0
	mov.l @(0x110,PC),r7
	fmac fr0,fr2,fr3
	fmov @(r0,r15),fr0
	mov 0x08,r0
	fmov @(r0,r6),fr2
	mov 0x38,r0
	fmac fr0,fr2,fr3
	fmov fr3,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r15),fr0
	mov 0x0C,r0
	fmov @(r0,r4),fr3
	mov 0x0C,r0
	fmov @(r0,r5),fr2
	mov 0x08,r0
	fmul fr0,fr3
	fmov @r15,fr0
	fmac fr0,fr2,fr3
	fmov @(r0,r15),fr0
	mov 0x0C,r0
	fmov @(r0,r6),fr2
	mov 0x3C,r0
	fmac fr0,fr2,fr3
	fmov fr3,@(r0,r14)
	mova @(0xD8,PC),r0
	fmov @r0,fr6
	mova @(0xE0,PC),r0
	mov r14,r2
	fmov @r0,fr5
	mova @(0xE0,PC),r0
	fmov @r0,fr4
	mov 0x04,r0
	fmov @(r0,r15),fr0
	mov 0x10,r0
	fmov @(r0,r4),fr3
	mov 0x10,r0
	fmov @(r0,r5),fr2
	mov 0x08,r0
	fmul fr0,fr3
	fmov @r15,fr0
	add 0x40,r2
	fmac fr0,fr2,fr3
	fmov @(r0,r15),fr0
	mov 0x10,r0
	fmov @(r0,r6),fr2
	mov 0x04,r0
	fmac fr0,fr2,fr3
	fmul fr4,fr3
	fdiv fr5,fr3
	fadd fr6,fr3
	ftrc fr3,fpul
	sts fpul,r1
	and r7,r1
	mov.l r1,@r2
	fmov @(r0,r15),fr0
	mov 0x14,r0
	fmov @(r0,r4),fr3
	fmul fr0,fr3
	mov 0x14,r0
	fmov @r15,fr0
	fmov @(r0,r5),fr2
	mov 0x08,r0
	fmac fr0,fr2,fr3
	fmov @(r0,r15),fr0
	mov 0x14,r0
	fmov @(r0,r6),fr2
	mov 0x44,r0
	fmac fr0,fr2,fr3
	fmul fr4,fr3
	fdiv fr5,fr3
	fadd fr6,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r7,r2
	mov.l r2,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r15),fr0
	mov 0x18,r0
	fmov @(r0,r4),fr3
	mov 0x18,r0
	fmov @(r0,r5),fr2
	mov 0x08,r0
	fmul fr0,fr3
	fmov @r15,fr0
	fmac fr0,fr2,fr3
	fmov @(r0,r15),fr0
	mov 0x18,r0
	fmov @(r0,r6),fr2
	fmac fr0,fr2,fr3
	fmul fr4,fr3
	fdiv fr5,fr3
	mov 0x48,r0
	fadd fr6,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r7,r2
	mov.l r2,@(r0,r14)
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
	fmov @r4,fr2
	mov r3,r0
	nop
	fmov @(r0,r4),fr1
	fsub fr2,fr1
	fcmp/gt fr3,fr1
	bt loc_8c1095fa
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)
	mov 0x22,r2
	mov.w @(0x1E,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	add 0x01,r0
	cmp/hs r2,r0
	bf loc_8c1095fa
	mov 0x01,r0
	mov.w r0,@(0x1E,r14)

loc_8C1095FA:
	bsr loc_8c10961c
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C109608:
	#data 0x3F000000
loc_8C10960C:
	#data bank16.loc_8c165EA0
loc_8C109610:
	#data 0x0000FFFf
loc_8C109614:
	#data 0x43B40000
loc_8C109618:
	#data 0x47800000

;==============================================
loc_8C10961C:
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
	add 0xE8,r15
	mov.l @(0x100,PC),r3
	mov r4,r13
	mov.w @(0xF4,PC),r0
	mov.l @r3,r4
	mov.l @(0xFC,PC),r1
	mov.l @r4,r2
	mov.l @(r0,r13),r5
	jsr @r1
	mov.l @(0x3C,r2),r4
	mova @(0x10C,PC),r0
	mov.l @(0x108,PC),r14
	fmov @r0,fr12
	mova @(0x10C,PC),r0
	fmov @r0,fr13
	mova @(0x10C,PC),r0
	mov.l @(0xEC,PC),r9
	mov.l @(0xE8,PC),r8
	mov.l @(0xEC,PC),r10
	mov.l @(0xF4,PC),r12
	mov.l @(0xEC,PC),r11
	bra loc_8c1096d4
	fmov @r0,fr14

loc_8C109662:
	mov r15,r4
	jsr @r8
	add 0x0C,r4
	mov.l @(0xF8,PC),r3
	mov r15,r2
	mov r15,r1
	add 0x0C,r2
	jsr @r3
	mov 0x0C,r0
	jsr @r11
	mov r15,r4
	mov 0x0C,r0
	fmov @(r0,r15),fr4
	fcmp/gt fr4,fr13
	bt.s loc_8c10968a
	fmov fr0,fr15
	mova @(0xE4,PC),r0
	fmov @r0,fr3
	fcmp/gt fr3,fr4
	bf loc_8c1096ce               ; loc_8c10961c+0xb2

loc_8C10968A:
	mova @(0xE0,PC),r0
	fmov @r0,fr3
	mov 0x14,r0
	fmov @(r0,r15),fr2
	fcmp/gt fr2,fr3
	bf loc_8c1096ce
	mov.w @(0x1C,r13),r0
	mov 0x1E,r4
	ftrc fr15,fpul
	muls.w r4,r0
	mova @(0xD0,PC),r0
	fmov @r0,fr2
	mova @(0xD0,PC),r0
	sts fpul,r3
	sts macl,r4
	fmov @r0,fr1
	add r3,r4
	lds r4,fpul
	float fpul,fr3
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr12,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r12
	and r14,r4
	fmov fr15,fr3
	fmul fr0,fr3
	mov 0x10,r0
	fmov fr14,fr0
	fmov @(r0,r15),fr2
	mov 0x10,r0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r15)

loc_8C1096CE:
	mov r15,r4
	jsr @r10
	add 0x0C,r4

loc_8C1096D4:
	jsr @r9
	nop
	tst r0,r0
	bt loc_8c109662
	add 0x18,r15
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

;==============================================
loc_8C1096F8:
	sts.l pr,@-r15
	mov.l @(0x7C,PC),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c10972c
	mov r0,r4
	mov.l @(0x2C,PC),r1
	mov 0x01,r5
	mov.l @(0x6C,PC),r3
	mov.w @(0x20,PC),r0
	mov.b r5,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r1,r2
	mov.w @(0x16,PC),r0
	mov.l @r2,r3
	mov.w @(0x16,PC),r2
	mov.l @(0x38,r3),r3
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov r5,r0
	nop
	mov.w r0,@(0x1E,r4)

loc_8C10972C:
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c109732:
	#data 0x0084
loc_8c109734:
	#data 0x012c
loc_8c109736:
	#data 0x080F
	#align4

loc_8c109738:
	#data 0x8C26A904
loc_8C10973C:
	#data loc_8c108060
loc_8C109740:
	#data loc_8c108168
loc_8C109744:
	#data loc_8c108086
loc_8C109748:
	#data loc_8c1081B4
loc_8C10974C:
	#data bank12.loc_8c121490
loc_8C109750:
	#data bank11.loc_8c11E860
loc_8C109754:
	#data 0x0000FFFf
loc_8C109758:
	#data 0x3F000000
loc_8C10975c:
	#data 0xC3AF0000
loc_8C109760:
	#data 0x3CA3D70a
loc_8C109764:
	#data bank12.loc_8c1294C8
loc_8C109768:
	#data 0x43AF0000
loc_8C10976c:
	#data 0xC2C80000
loc_8C109770:
	#data 0x47800000
loc_8C109774:
	#data 0x43B40000
loc_8C109778:
	#data bank04.loc_8c044F12
loc_8C10977C:
	#data loc_8c10947a

;==============================================
loc_8C109780:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	fmov.s fr13,@-r15
	fmov.s fr12,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C1097Ae
	cmp/eq 0x01,r0
	bf loc_8C1097Aa
	bra loc_8C10992e
	nop

loc_8C1097AA:
	bra loc_8C10992e
	nop

loc_8c1097ae:
	mov.w @(0x1C,r14),r0
	mov.w @(loc_8C1098A4,pc),r3
	add 0x05,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8c1097c0
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)

loc_8c1097c0:
	mov 0x60,r1
	add r14,r1
	mov 0x5C,r0
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	fldi0 fr3
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bf loc_8c1097e4
	mov.l @(loc_8C1098A8,pc),r1
	fmov.s @(r0,r14),fr1
	lds r1,fpul
	fsts fpul,fr2
	fadd fr2,fr1
	fmov.s fr1,@(r0,r14)

loc_8c1097e4:
	mova @(loc_8C1098AC,pc),r0
	fmov.s @r0,fr3
	mov 0x5C,r0
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c109818
	mov.l @(loc_8c1098b0,pc),r3
	fldi0 fr2
	jsr @r3
	fmov.s fr2,@(r0,r14)
	mov.l @(loc_8c1098b0,pc),r2
	jsr @r2
	fmov.s fr0,@-r15
	mova @(loc_8C1098B4,pc),r0
	fmov.s @r15+,fr1
	fmov.s @r0,fr3
	mova @(loc_8C1098B8,pc),r0
	fmul fr3,fr0
	fmov fr0,fr2
	fmov fr3,fr0
	fmac fr0,fr1,fr2
	fmov.s @r0,fr1
	mov 0x60,r0
	fadd fr1,fr2
	fabs fr2
	fmov.s fr2,@(r0,r14)

loc_8c109818:
	mov.w @(loc_8C1098A6,pc),r0
	mov.l @(loc_8C1098BC,pc),r3
	mov.l @(r0,r14),r5
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov.l @r3,r4
	extu.b r2,r2
	shll r2
	mov.l @r4,r4
	add 0x08,r2
	shll2 r2
	add r2,r4
	mov.l @(loc_8c1098c0,pc),r2
	jsr @r2
	mov.l @(0x04,r4),r4
	mova @(loc_8C1098D4,pc),r0
	mov.l @(loc_8C1098D8,pc),r13
	fmov.s @r0,fr13
	mova @(loc_8C1098DC,pc),r0
	mov.l @(loc_8c1098d0,pc),r12
	mov.l @(loc_8c1098c8,pc),r10
	mov.l @(loc_8c1098c4,pc),r9
	mov.l @(loc_8c1098cc,pc),r11
	fldi1 fr12
	bra loc_8c109926
	fmov.s @r0,fr14

loc_8c10984c:
	jsr @r11
	mov r15,r4
	mov 0x04,r0
	fldi0 fr3
	fmov.s @(r0,r15),fr15
	fcmp/gt fr15,fr3
	bf loc_8c109922
	mov 0x20,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c1098e8
	ftrc fr15,fpul
	mov.w @(0x1C,r14),r0
	sts fpul,r4
	add r0,r4
	lds r4,fpul
	mova @(loc_8C1098E0,pc),r0
	float fpul,fr2
	fmov fr2,fr1
	fmul fr14,fr1
	fmov.s @r0,fr2
	fdiv fr13,fr1
	fadd fr2,fr1
	ftrc fr1,fpul
	sts fpul,r4
	jsr @r12
	and r13,r4
	fadd fr12,fr0
	mov 0x04,r0
	fmov.s @(r0,r15),fr4
	mov 0x5C,r0
	fmov.s @(r0,r14),fr3
	mova @(loc_8C1098E4,pc),r0
	fmul fr4,fr0
	fmul fr4,fr0
	fmul fr3,fr0
	fmov.s @r0,fr3
	mov 0x08,r0
	fmov.s @(r0,r15),fr2
	mov 0x08,r0
	fmul fr3,fr0
	fsub fr0,fr2
	bra loc_8c109922
	fmov.s fr2,@(r0,r15)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1098A4:
	#data 0x0168
loc_8C1098A6:
	#data 0x0084
loc_8C1098A8:
	#data 0xB6A7C5AC
loc_8C1098AC:
	#data 0x3851B717
loc_8c1098b0:
	#data bank11.loc_8c11e750
loc_8C1098B4:
	#data 0x38D1B717
loc_8C1098B8:
	#data 0xB8D1B717
loc_8C1098BC:
	#data 0x8C26A904
loc_8c1098c0:
	#data loc_8c108060
loc_8c1098c4:
	#data loc_8c108086
loc_8c1098c8:
	#data loc_8c1081b4
loc_8c1098cc:
	#data loc_8c108168
loc_8c1098d0:
	#data bank11.loc_8c11e860
loc_8C1098D4:
	#data 0x43B40000
loc_8C1098D8:
	#data 0x0000FFFF
loc_8C1098DC:
	#data 0x47800000
loc_8C1098E0:
	#data 0x3F000000
loc_8C1098E4:
	#data 0x40400000

;==============================================
loc_8c1098e8:
	ftrc fr15,fpul
	mov.w @(0x1C,r14),r0
	sts fpul,r4
	add r0,r4
	lds r4,fpul
	mova @(loc_8C1099C8,pc),r0
	float fpul,fr2
	fmov fr2,fr1
	fmul fr14,fr1
	fmov.s @r0,fr2
	fdiv fr13,fr1
	fadd fr2,fr1
	ftrc fr1,fpul
	sts fpul,r4
	jsr @r12
	and r13,r4
	fadd fr12,fr0
	mov 0x04,r0
	fmov.s @(r0,r15),fr4
	mov 0x5C,r0
	fmov.s @(r0,r14),fr3
	mov 0x08,r0
	fmul fr4,fr0
	fmul fr4,fr0
	fmul fr3,fr0
	fmov.s @(r0,r15),fr3
	mov 0x08,r0
	fsub fr0,fr3
	fmov.s fr3,@(r0,r15)

loc_8c109922:
	jsr @r10
	mov r15,r4

loc_8c109926:
	jsr @r9
	nop
	tst r0,r0
	bt loc_8c10984c

loc_8C10992E:
	add 0x0C,r15
	lds.l @r15+,pr
	fmov.s @r15+,fr12
	fmov.s @r15+,fr13
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c109948:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c1099cc,pc),r3
	mov 0x05,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c10999c
	mov r0,r4
	mov.l @(loc_8c1099d0,pc),r2
	mov 0x01,r3
	mov.w @(loc_8C1099C0,pc),r0
	mov.l @(loc_8C1099D4,pc),r1
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r15,r2
	mov.l @r1,r3
	mov r4,r1
	shll r2
	mov.l @r3,r3
	shll2 r2
	add 0x34,r1
	add r3,r2
	mov.l @(loc_8c1099dc,pc),r3
	mov.l @(0x20,r2),r0
	mov.w @(loc_8C1099C2,pc),r2
	add r4,r2
	mov.l r0,@r2
	mov.l @(loc_8c1099d8,pc),r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8C1099E0,pc),r1
	mov 0x44,r0
	mov.w @(loc_8C1099C4,pc),r3
	mov.l r1,@(r0,r4)
	mov.w @(loc_8C1099C6,pc),r0
	mov.l r3,@(r0,r4)
	mov 0x20,r0
	mov.l @r15,r1
	mov.b r1,@(r0,r4)

loc_8c10999c:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C1099A4:
	mov.l r14,@-r15
	mov 0x00,r14 ; r14 set to 0x00
	mov.l r13,@-r15
	mov 0x02,r13 ; r13 set to 0x02
	sts.l pr,@-r15

loc_8C1099AE:
	bsr loc_8C109948
	mov r14,r4 ; r4 set to 0x00
	add 0x01,r14 ; r14 set to 0x01
	cmp/ge r13,r14
	bf loc_8C1099Ae
	lds.l @r15+,pr
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1099c0:
	#data 0x012c
loc_8c1099c2:
	#data 0x0084
loc_8c1099c4:
	#data 0x0805
loc_8c1099c6:
	#data 0x00CC
	#align4

loc_8c1099c8:
	#data 0x3F000000
loc_8C1099CC:
	#data bank04.loc_8c044F12
loc_8C1099D0:
	#data loc_8c109780
loc_8c1099d4:
	#data 0x8C26A904
loc_8C1099D8:
	#data bank16.loc_8c166258
loc_8C1099DC:
	#data bank12.loc_8c1294C8
loc_8c1099e0:
	#data 0x0000DD29

;==============================================
loc_8C1099E4:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bf loc_8c109a72
	mov.l @(0x100,PC),r1
	mov 0x60,r0
	fmov @(r0,r14),fr2
	lds r1,fpul
	mov 0x60,r1
	add r14,r1
	mov.l @(0xF8,PC),r4
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr1
	fmov @r1,fr2
	fadd fr2,fr1
	fmov fr1,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov 0x04,r0
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	add r4,r3
	fmov @(r0,r3),fr2
	mov 0x38,r0
	fmov @(r0,r14),fr1
	fcmp/gt fr1,fr2
	bf loc_8c109a54
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov 0x04,r0
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	shll2 r2
	add r2,r4
	fmov @(r0,r4),fr2
	mov 0x38,r0
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fldi0 fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bt loc_8c109a54
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)

loc_8C109A54:
	mov.l @(0xA4,PC),r3
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt loc_8c109a72
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov.l @(0x9C,PC),r0
	extu.b r3,r3
	shll2 r3
	fmov @(r0,r3),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x01,r0
	mov.w r0,@(0x1C,r14)

loc_8C109A72:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c109a78:
	mov.l r14,@-r15
	mov 0x05,r5
	sts.l pr,@-r15
	mov.l @(loc_8c109b04,pc),r3
	mov r4,r14
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c109acc
	mov r0,r4
	mov.w @(loc_8C109AEE,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C109B0C,pc),r1
	mov.l @(loc_8c109b08,pc),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov r14,r2
	mov.l @r1,r3
	shll2 r2
	mov.w @(loc_8C109AF0,pc),r0
	mov r4,r1
	mov.l @r3,r3
	add 0x34,r1
	add r3,r2
	mov.l @(0x30,r2),r3
	mov.w @(loc_8C109AF2,pc),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov r14,r2
	shll r2
	mov r14,r3
	add r3,r2
	mov.l @(loc_8c109af8,pc),r3
	shll2 r2
	add r3,r2
	mov.l @(loc_8c109b10,pc),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x20,r0
	mov.b r14,@(r0,r4)

loc_8c109acc:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C109AD2:
	mov.l r14,@-r15
	mov 0x00,r14 ; r14 set to 0x00
	mov.l r13,@-r15
	mov 0x02,r13 ; r13 set to 0x02
	sts.l pr,@-r15

loc_8C109ADC:
	bsr loc_8C109A78
	mov r14,r4 ; r4 set to 0x00
	add 0x01,r14 ; r14 set to 0x01
	cmp/ge r13,r14
	bf loc_8C109ADc
	lds.l @r15+,pr
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c109aee:
	#data 0x012c
loc_8c109af0:
	#data 0x0084
loc_8c109af2:
	#data 0x0801
	#align4

loc_8C109AF4:
	#data 0xC0800000
loc_8C109AF8:
	#data bank13.loc_8c13e2F4
loc_8C109AFC:
	#data bank04.loc_8c046AE0
loc_8C109B00:
	#data bank13.loc_8c13e30c
loc_8C109B04:
	#data bank04.loc_8c044F12
loc_8C109B08:
	#data loc_8c1099E4
loc_8c109b0c:
	#data 0x8C26A904
loc_8C109B10:
	#data bank12.loc_8c1294C8

;==============================================
loc_8C109B14:
	sts.l pr,@-r15
	mov.l @(0xD8,PC),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c109b54
	mov r0,r4
	mov.w @(0xBE,PC),r0
	mov 0x01,r3
	mov.l @(0xCC,PC),r1
	mov.l @(0xC4,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(0xB0,PC),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(0x14,r2),r3
	mov.w @(0xAA,PC),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(0xB4,PC),r2
	mov.l @(0xB4,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xB4,PC),r1
	mov 0x44,r0
	mov.l r1,@(r0,r4)

loc_8C109B54:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C109B5A:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	bsr loc_8C109DC6
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C109BFC,pc),r13 ; r13 set to 0x8C166264
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_8C109B7e
	mov 0x00,r12 ; r12 set to 0x00
	cmp/eq 0x01,r0
	bt loc_8C109BA4
	cmp/eq 0x02,r0
	bt loc_8C109C18
	bra loc_8C109C5a
	nop

loc_8C109B7E:
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8C109B92
	mov r12,r0
	nop
	bra loc_8C109B96
	mov.w r0,@(0x1E,r14)

loc_8C109B92:
	bsr loc_8C109D00
	mov r14,r4

loc_8C109B96:
	mov.l @(loc_8C109C08,pc),r3 ; r3 set to 0x8C046AE0, r3 set to 0x8C046AE0
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00, r4 set to 0x00
	tst r0,r0
	bf loc_8C109BDa
	bra loc_8C109C5a
	nop

loc_8c109ba4:
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(loc_8C109C0C,pc),r0
	fmov.s @r0,fr0
	mova @(loc_8C109C10,pc),r0
	float fpul,fr4
	mov 0x14,r3
	fmov fr4,fr3
	fmul fr0,fr3
	fmov.s @r0,fr0
	mova @(loc_8C109C14,pc),r0
	fneg fr3
	fadd fr0,fr3
	fmov.s @r0,fr0
	mov 0x04,r0
	fmov.s @(r0,r13),fr2
	mov 0x38,r0
	fmul fr4,fr3
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(0x1E,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8c109c5a

loc_8C109BDA:
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov r12,r0
	nop
	bra loc_8C109C5a
	mov.w r0,@(0x1E,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c109be8:
	#data 0x012c
loc_8c109bea:
	#data 0x0084
loc_8c109bec:
	#data 0x0805
	#align4

loc_8C109BF0:
	#data bank04.loc_8c044F12
loc_8C109BF4:
	#data loc_8c109B5a
loc_8C109BF8:
	#data 0x8C26A904
loc_8C109BFC:
	#data bank16.loc_8c166264
loc_8C109C00:
	#data bank12.loc_8c1294C8
loc_8C109C04:
	#data 0x0000DD29
loc_8C109C08:
	#data bank04.loc_8c046AE0
loc_8c109c0c:
	#data 0x3E800000
loc_8c109c10:
	#data 0x41200000
loc_8c109c14:
	#data 0x3F000000

;==============================================
loc_8c109c18:
	bsr loc_8c109c64
	mov r14,r4
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(loc_8C109D3C,pc),r0
	fmov.s @r0,fr2
	mov 0x04,r0
	float fpul,fr4
	fmov.s @(r0,r13),fr1
	mova @(loc_8C109D40,pc),r0
	mov 0x14,r3
	fmov fr4,fr3
	fmul fr4,fr3
	fmul fr2,fr3
	fsub fr3,fr1
	fmov.s @r0,fr3
	mov 0x38,r0
	fadd fr3,fr1
	fmov.s fr1,@(r0,r14)
	mov.w @(0x1E,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8c109c5a
	mov r12,r0
	nop
	mov.b r0,@(0x04,r14)
	mov 0x04,r0
	fmov.s @(r0,r13),fr1
	mov 0x38,r0
	fmov.s fr1,@(r0,r14)

loc_8C109C5A:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C109C64:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	fmov fr12,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.w @(0xBE,PC),r0
	mov r4,r14
	mov.l @(0xC4,PC),r3
	mov.l @(r0,r14),r5
	mov.l r5,@r15
	jsr @r3
	mov r5,r4
	mova @(0xCC,PC),r0
	mov.l @(0xC0,PC),r12
	fmov @r0,fr12
	mova @(0xC8,PC),r0
	fmov @r0,fr13
	mova @(0xC8,PC),r0
	fmov @r0,fr14
	mova @(0xC8,PC),r0
	mov.l @(0xB0,PC),r11
	mov.l @(0xB4,PC),r13
	bra loc_8c109ce2
	fmov @r0,fr15

loc_8C109C9E:
	mov r15,r4
	jsr @r12
	add 0x04,r4
	mov 0x08,r0
	fmov @(r0,r15),fr4
	fcmp/gt fr4,fr14
	bf loc_8c109cdc
	mov.w @(0x1E,r14),r0
	fmov fr13,fr0
	mov r0,r3
	lds r3,fpul
	mov 0x08,r0
	fmov fr15,fr2
	float fpul,fr3
	fmul fr12,fr3
	fneg fr3
	fadd fr15,fr3
	fmul fr3,fr4
	fdiv fr15,fr4
	fmov fr4,@(r0,r15)
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mov 0x0C,r0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov @(r0,r15),fr3
	mov 0x0C,r0
	fmul fr2,fr3
	fdiv fr15,fr3
	fmov fr3,@(r0,r15)

loc_8C109CDC:
	mov r15,r4
	jsr @r11
	add 0x04,r4

loc_8C109CE2:
	jsr @r13
	nop
	tst r0,r0
	bt loc_8c109c9e
	add 0x10,r15
	lds.l @r15+,pr
	fmov @r15+,fr12
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C109D00:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	fmov.s fr13,@-r15
	fmov.s fr12,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.w @(loc_8C109D3A,pc),r0 ; r0 set to 0x84
	mov r4,r14
	mov.l @(loc_8C109D44,pc),r3 ; r3 set to 0x8C108060
	mov.l @(r0,r14),r5
	mov.l r5,@r15
	jsr @r3
	mov r5,r4
	mova @(loc_8C109D54,pc),r0  ; r0 set to 0x8C109D54
	mov.l @(loc_8C109D4C,pc),r12 ; r12 set to 0x8C108168
	fmov.s @r0,fr12 ; r12 ??
	mova @(loc_8C109D58,pc),r0  ; r0 set to 0x8C109D58
	fmov.s @r0,fr13
	mova @(loc_8C109D5C,pc),r0  ; r0 set to 0x8C109D5c
	fmov.s @r0,fr14
	mova @(loc_8C109D60,pc),r0  ; r0 set to 0x8C109D60
	mov.l @(loc_8C109D48,pc),r11 ; r11 set to 0x8C1081B4
	mov.l @(loc_8C109D50,pc),r13 ; r13 set to 0x8C108086
	bra loc_8C109DA8
	fmov.s @r0,fr15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C109D3A:
	#data 0x0084
	#align4

loc_8c109d3c:
	#data 0x3E000000
loc_8c109d40:
	#data 0x42480000
loc_8C109D44:
	#data loc_8c108060
loc_8C109D48:
	#data loc_8c1081B4
loc_8C109D4C:
	#data loc_8c108168
loc_8C109D50:
	#data loc_8c108086
loc_8C109D54:
	#data 0x3F000000
loc_8C109D58:
	#data 0x40A00000
loc_8C109D5C:
	#data 0xC2480000
loc_8C109D60:
	#data 0x42C80000

;==============================================
loc_8c109d64:
	mov r15,r4
	jsr @r12
	add 0x04,r4
	mov 0x08,r0
	fmov.s @(r0,r15),fr4
	fcmp/gt fr4,fr14
	bf loc_8c109da2
	mov.w @(0x1E,r14),r0
	fmov fr13,fr0
	mov r0,r3
	lds r3,fpul
	mov 0x08,r0
	fmov fr15,fr2
	float fpul,fr3
	fmul fr12,fr3
	fneg fr3
	fadd fr15,fr3
	fmul fr3,fr4
	fdiv fr15,fr4
	fmov.s fr4,@(r0,r15)
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mov 0x0C,r0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov.s @(r0,r15),fr3
	mov 0x0C,r0
	fmul fr2,fr3
	fdiv fr15,fr3
	fmov.s fr3,@(r0,r15)

loc_8c109da2:
	mov r15,r4
	jsr @r11
	add 0x04,r4

loc_8C109DA8:
	jsr @r13
	nop
	tst r0,r0
	bt loc_8C109D64
	add 0x10,r15
	lds.l @r15+,pr
	fmov.s @r15+,fr12
	fmov.s @r15+,fr13
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c109dc6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	fmov.s fr13,@-r15
	fmov.s fr12,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	mov.w @(0x1C,r14),r0
	mov.w @(loc_8C109E5A,pc),r3
	add 0x02,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8c109df2
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)

loc_8c109df2:
	mov 0x6C,r1
	add r14,r1
	mov 0x68,r0
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	fldi0 fr3
	fmov.s fr2,@(r0,r14)
	mov 0x6C,r0
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bf loc_8c109e16
	mov.l @(loc_8C109E60,pc),r1
	fmov.s @(r0,r14),fr1
	lds r1,fpul
	fsts fpul,fr2
	fadd fr2,fr1
	fmov.s fr1,@(r0,r14)

loc_8c109e16:
	mova @(loc_8C109E64,pc),r0
	fmov.s @r0,fr3
	mov 0x68,r0
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c109e34
	mov.l @(loc_8c109e68,pc),r3
	fldi0 fr2
	jsr @r3
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C109E6C,pc),r0
	fmov.s @r0,fr3
	mov 0x6C,r0
	fmul fr3,fr0
	fmov.s fr0,@(r0,r14)

loc_8c109e34:
	mov.l @(loc_8C109E70,pc),r3
	mov.w @(loc_8C109E5C,pc),r0
	mov.l @r3,r4
	mov.l @(loc_8c109e74,pc),r1
	mov.l @r4,r2
	mov.l @(r0,r14),r5
	jsr @r1
	mov.l @(0x18,r2),r4
	mova @(loc_8C109E8C,pc),r0
	mov.l @(loc_8C109E88,pc),r13
	fmov.s @r0,fr12
	mova @(loc_8C109E90,pc),r0
	fmov.s @r0,fr13
	mov.l @(loc_8c109e7c,pc),r10
	mov.l @(loc_8c109e78,pc),r9
	mov.l @(loc_8c109e84,pc),r12
	mov.l @(loc_8c109e80,pc),r11
	bra loc_8c109eee
	fldi1 fr14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C109E5A:
	#data 0x0168
loc_8C109E5C:
	#data 0x0084
	#align4

loc_8C109E60:
	#data 0xB50637BD
loc_8C109E64:
	#data 0x36A7C5AC
loc_8c109e68:
	#data bank11.loc_8c11e750
loc_8C109E6C:
	#data 0x37A7C5AC
loc_8C109E70:
	#data 0x8C26A904
loc_8c109e74:
	#data loc_8c108060
loc_8c109e78:
	#data bank11.loc_8c11e860
loc_8c109e7c:
	#data loc_8c108086
loc_8c109e80:
	#data loc_8c1081b4
loc_8c109e84:
	#data loc_8c108168
loc_8C109E88:
	#data 0x0000FFFF
loc_8C109E8C:
	#data 0x43B40000
loc_8C109E90:
	#data 0x3F000000

;==============================================
loc_8c109e94:
	jsr @r12
	mov r15,r4
	mov 0x04,r0
	fldi0 fr3
	fmov.s @(r0,r15),fr15
	fcmp/gt fr15,fr3
	bf loc_8c109eea
	fldi1 fr2
	fadd fr2,fr2
	fmov.s @r15,fr1
	ftrc fr15,fpul
	mov.w @(0x1C,r14),r0
	fdiv fr2,fr1
	sts fpul,r4
	add r0,r4
	mova @(loc_8C109F10,pc),r0
	fmov.s @r0,fr0
	ftrc fr1,fpul
	sts fpul,r3
	add r3,r4
	lds r4,fpul
	float fpul,fr1
	fmul fr0,fr1
	fdiv fr12,fr1
	fmov fr1,fr3
	fadd fr13,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r9
	and r13,r4
	fadd fr14,fr0
	mov 0x04,r0
	fmov.s @(r0,r15),fr4
	mov 0x68,r0
	fmov.s @(r0,r14),fr3
	mov 0x08,r0
	fmul fr4,fr0
	fmul fr4,fr0
	fmul fr3,fr0
	fmov.s @(r0,r15),fr3
	mov 0x08,r0
	fsub fr0,fr3
	fmov.s fr3,@(r0,r15)

loc_8c109eea:
	jsr @r11
	mov r15,r4

loc_8c109eee:
	jsr @r10
	nop
	tst r0,r0
	bt loc_8c109e94
	add 0x0C,r15
	lds.l @r15+,pr
	fmov.s @r15+,fr12
	fmov.s @r15+,fr13
	fmov.s @r15+,fr14
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
loc_8C109F10:
	#data 0x47800000

;==============================================
loc_8C109F14:
	add 0xFC,r15
	mov r4,r3
	mov.l @(loc_8C10A04C,pc),r1 ; r1 set to 0x8C166270
	mov.l r4,@r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C109F28:
	mov.l @(loc_8C10A050,pc),r5 ; r5 set to 0x8C13E680
	bra loc_8C109F38
	mov 0x00,r6

loc_8C109F2E:
	mov.w @r5,r2
	add 0x01,r6
	shll r2
	shll r2
	add r2,r5

loc_8C109F38:
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/ge r0,r6
	bf loc_8C109F2e
	mov.b @r5,r0
	mov.b r0,@(0x07,r4)
	mov 0x01,r0 ; r0 set to 0x01, r0 set to 0x01
	bra loc_8C109F4a
	mov.b r0,@(0x05,r4)

loc_8C109F4A:
	sts.l pr,@-r15
	mov.b @(0x06,r4),r0
	extu.b r0,r3
	mov.b @(0x07,r4),r0
	extu.b r0,r0
	add 0xFF,r0
	cmp/ge r0,r3
	bt/s loc_8C109FA2
	mov 0x00,r7 ; r7 set to 0x00
	mov.l @(loc_8C10A050,pc),r5 ; r5 set to 0x8C13E680
	bra loc_8C109F6c
	mov r7,r6

loc_8C109F62:
	mov.w @r5,r2
	add 0x01,r6
	shll r2
	shll r2
	add r2,r5

loc_8C109F6C:
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/ge r0,r6
	bf loc_8C109F62
	mov.b @(0x06,r4),r0
	add 0x02,r5
	extu.b r0,r0
	shll r0
	mov.w @(r0,r5),r3
	mov.w @(loc_8C10A044,pc),r0 ; r0 set to 0xD0, r0 set to 0xD0
	mov.l r3,@(r0,r4)
	mov.b @(0x07,r4),r0
	extu.b r0,r0 ; r0 set to 0xD0, r0 set to 0xD0
	add 0xFF,r0 ; r0 set to 0xCF, r0 set to 0xCf
	shll r0 ; r0 set to 0x19E, r0 set to 0x19e
	add r0,r5
	mov.b @(0x06,r4),r0
	extu.b r0,r0 ; r0 set to 0x9E, r0 set to 0x9e
	shll r0 ; r0 set to 0x13C, r0 set to 0x13c
	add r0,r5
	mov.w @(loc_8C10A046,pc),r0 ; r0 set to 0xD4, r0 set to 0xD4
	mov.w @r5,r3
	mov.l r3,@(r0,r4)
	mov 0x02,r0 ; r0 set to 0x02, r0 set to 0x02
	mov.b r0,@(0x05,r4)
	bra loc_8C109FC4
	lds.l @r15+,pr

loc_8C109FA2:
	mov.b @(0x04,r4),r0
	mov 0x04,r1 ; r1 set to 0x04
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C10A054,pc),r3 ; r3 set to 0x8C1292D4
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov 0x06,r0 ; r0 set to 0x06
	mov.b @r1,r1
	jsr @r3
	extu.b r1,r1
	mov.b r0,@(0x04,r4)
	mov r7,r0 ; r0 ??? bc r7 is ???
	nop
	mov.b r0,@(0x05,r4)
	mov.b r0,@(0x06,r4)
	bra loc_8C109F28
	lds.l @r15+,pr

loc_8c109fc4:
	mov.l r14,@-r15
	mov r4,r14
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(loc_8c10a046,pc),r0
	mov.l @(r0,r14),r3
	tst r3,r3
	bt loc_8c109fe0
	mov.w @(0x1E,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r14)

loc_8c109fe0:
	mov.w @(loc_8C10A048,pc),r3
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c109fec
	mov 0x00,r0
	mov.w r0,@(0x1E,r14)

loc_8c109fec:
	mov.w @(0x1E,r14),r0
	mov.l @(loc_8c10a058,pc),r3
	mov r0,r2
	lds r2,fpul
	mova @(loc_8C10A05C,pc),r0
	mov.l @(loc_8c10a06c,pc),r1
	fmov.s @r0,fr2
	mova @(loc_8C10A060,pc),r0
	float fpul,fr3
	fmov.s @r0,fr1
	mova @(loc_8C10A064,pc),r0
	mov.l @(loc_8C10A068,pc),r2
	fmov.s @r0,fr0
	fmov.s @r3,fr15
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r1
	and r2,r4
	mova @(loc_8C10A070,pc),r0
	fmov fr0,fr3
	fmov.s @r0,fr0
	mov 0x38,r0
	mov.w @(loc_8c10a044,pc),r3
	fmac fr0,fr3,fr15
	add r14,r3
	fmov.s fr15,@(r0,r14)
	mov.l @r3,r3
	mov.w @(0x1C,r14),r0
	cmp/gt r3,r0
	bf loc_8c10a03c
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)
	mov 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.b @(0x06,r14),r0
	add 0x01,r0
	mov.b r0,@(0x06,r14)

loc_8c10a03c:
	lds.l @r15+,pr
	fmov.s @r15+,fr15
	rts
	mov.l @r15+,r14

;==============================================
loc_8c10a044:
	#data 0x00D0
loc_8c10a046:
	#data 0x00D4
loc_8C10A048:
	#data 0x0168
	#align4

loc_8c10a04c:
	#data bank16.loc_8C166270
loc_8c10a050:
	#data bank13.loc_8C13E680
loc_8c10a054:
	#data bank12.loc_8C1292D4
loc_8c10a058:
	#data bank13.loc_8c13e66c
loc_8C10A05C:
	#data 0x47800000
loc_8C10A060:
	#data 0x43B40000
loc_8C10A064:
	#data 0x3F000000
loc_8C10A068:
	#data 0x0000FFFF
loc_8c10a06c:
	#data bank11.loc_8c11e860
loc_8C10A070:
	#data 0x41200000

;==============================================
loc_8c10a074:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x134,PC),r3
	mov 0x05,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c10a10e
	mov r0,r4
	mov.w @(0x116,PC),r0
	mov 0x01,r3
	mov.l @(0x128,PC),r1
	mov.l @(0x120,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x68,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0x1C,r0
	mov.w @(0xFE,PC),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(0x10C,PC),r2
	mov.l @(0x110,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x10C,PC),r6
	mova @(0x110,PC),r0
	fmov @r0,fr6
	mova @(0x110,PC),r0
	fmov @r6,fr3
	mov r4,r3
	fmov @r0,fr5
	mova @(0x10C,PC),r0
	fmul fr6,fr3
	fmov @r0,fr4
	mov 0x04,r0
	mov.l @(0x108,PC),r5
	add 0x40,r3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r1
	and r5,r1
	mov.l r1,@r3
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
	ftrc fr3,fpul
	sts fpul,r3
	and r5,r3
	mov.l r3,@(r0,r4)
	mov.l @r15,r1
	mov.w @(0xA4,PC),r0
	mov.l r1,@(0x14,r4)
	mov.w @(0x9E,PC),r1
	mov.l @r15,r3
	add r3,r1
	mov.l r1,@(r0,r4)

loc_8c10a10e:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C10A116:
	add 0xFC,r15
	mov r4,r3
	mov.l @(loc_8C10A1D8,pc),r1 ; r1 set to 0x8C16627c
	mov.l r4,@r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C10A12A:
	mov.l @(loc_8C10A1DC,pc),r5 ; r5 set to 0x8C13E680
	bra loc_8C10A13a
	mov 0x00,r6

loc_8C10A130:
	mov.w @r5,r2
	add 0x01,r6
	shll r2
	shll r2
	add r2,r5

loc_8C10A13A:
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/ge r0,r6
	bf loc_8C10A130
	mov.b @r5,r0
	mov.b r0,@(0x07,r4)
	mov 0x01,r0 ; r0 set to 0x01, r0 set to 0x01
	bra loc_8C10A14c
	mov.b r0,@(0x05,r4)

loc_8C10A14C:
	sts.l pr,@-r15
	mov.b @(0x06,r4),r0
	extu.b r0,r3
	mov.b @(0x07,r4),r0
	extu.b r0,r0
	add 0xFF,r0
	cmp/ge r0,r3
	bt/s loc_8C10A1E0
	mov 0x00,r7 ; r7 set to 0x00
	mov.l @(loc_8C10A1DC,pc),r5 ; r5 set to 0x8C13E680
	bra loc_8C10A16e
	mov r7,r6

loc_8C10A164:
	mov.w @r5,r2
	add 0x01,r6
	shll r2
	shll r2
	add r2,r5

loc_8C10A16E:
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/ge r0,r6
	bf loc_8C10A164
	mov.b @(0x06,r4),r0
	add 0x02,r5
	extu.b r0,r0
	shll r0
	mov.w @(r0,r5),r3
	mov.w @(loc_8C10A1AC,pc),r0 ; r0 set to 0xD0, r0 set to 0xD0
	mov.l r3,@(r0,r4)
	mov.b @(0x07,r4),r0
	extu.b r0,r0 ; r0 set to 0xD0, r0 set to 0xD0
	add 0xFF,r0 ; r0 set to 0xCF, r0 set to 0xCf
	shll r0 ; r0 set to 0x19E, r0 set to 0x19e
	add r0,r5
	mov.b @(0x06,r4),r0
	extu.b r0,r0 ; r0 set to 0x9E, r0 set to 0x9e
	shll r0 ; r0 set to 0x13C, r0 set to 0x13c
	add r0,r5
	mov.w @(loc_8C10A1AE,pc),r0 ; r0 set to 0xD4, r0 set to 0xD4
	mov.w @r5,r3
	mov.l r3,@(r0,r4)
	mov 0x02,r0 ; r0 set to 0x02, r0 set to 0x02
	mov.b r0,@(0x05,r4)
	bra loc_8C10A202
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C10A1A4:
	#data 0x012c
loc_8C10A1A6:
	#data 0x080F
loc_8C10A1A8:
	#data 0x0088
loc_8C10A1Aa:
	#data 0x00C8
loc_8C10A1AC:
	#data 0x00D0
loc_8C10A1AE:
	#data 0x00D4
	#align4

loc_8C10A1B0:
	#data bank04.loc_8c044F12
loc_8C10A1B4:
	#data loc_8c109F14
loc_8C10A1B8:
	#data 0x8C26A904
loc_8C10A1BC:
	#data bank13.loc_8c13e668
loc_8C10A1C0:
	#data bank12.loc_8c1294C8
loc_8C10A1C4:
	#data bank13.loc_8c13e674
loc_8c10a1c8:
	#data 0x47800000
loc_8c10a1cc:
	#data 0x43B40000
loc_8c10a1d0:
	#data 0x3F000000
loc_8c10a1d4:
	#data 0x0000FFFf
loc_8C10A1D8:
	#data bank16.loc_8c16627c
loc_8C10A1DC:
	#data bank13.loc_8c13e680

;==============================================
loc_8C10A1E0:
	mov.b @(0x04,r4),r0
	mov 0x04,r1 ; r1 set to 0x04
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C10A334,pc),r3 ; r3 set to 0x8C1292D4
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov 0x06,r0 ; r0 set to 0x06
	mov.b @r1,r1
	jsr @r3
	extu.b r1,r1
	mov.b r0,@(0x04,r4)
	mov r7,r0 ; r0 ??? bc r7 is ???
	nop
	mov.b r0,@(0x05,r4)
	mov.b r0,@(0x06,r4)
	bra loc_8C10A12a
	lds.l @r15+,pr

loc_8c10a202:
	mov.l r14,@-r15
	mov r4,r14
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(loc_8C10A324,pc),r0
	mov.l @(r0,r14),r3
	tst r3,r3
	bt loc_8c10a21e
	mov.w @(0x1E,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r14)

loc_8c10a21e:
	mov.w @(loc_8C10A326,pc),r3
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c10a22a
	mov 0x00,r0
	mov.w r0,@(0x1E,r14)

loc_8c10a22a:
	mov.w @(0x1E,r14),r0
	mov.l @(loc_8c10a338,pc),r3
	mov r0,r2
	lds r2,fpul
	mova @(loc_8C10A33C,pc),r0
	mov.l @(loc_8c10a34c,pc),r1
	fmov.s @r0,fr2
	mova @(loc_8C10A340,pc),r0
	float fpul,fr3
	fmov.s @r0,fr1
	mova @(loc_8C10A344,pc),r0
	mov.l @(loc_8C10A348,pc),r2
	fmov.s @r0,fr0
	fmov.s @r3,fr15
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r1
	and r2,r4
	mova @(loc_8C10A350,pc),r0
	fmov fr0,fr3
	fmov.s @r0,fr0
	mov 0x34,r0
	mov.w @(loc_8C10A328,pc),r3
	fmac fr0,fr3,fr15
	add r14,r3
	fmov.s fr15,@(r0,r14)
	mov.l @r3,r3
	mov.w @(0x1C,r14),r0
	cmp/gt r3,r0
	bf loc_8c10a27a
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)
	mov 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.b @(0x06,r14),r0
	add 0x01,r0
	mov.b r0,@(0x06,r14)

loc_8c10a27a:
	lds.l @r15+,pr
	fmov.s @r15+,fr15
	rts
	mov.l @r15+,r14

;==============================================
loc_8c10a282:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xCC,PC),r3
	mov 0x05,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c10a31c
	mov r0,r4
	mov.w @(0x8E,PC),r0
	mov 0x01,r3
	mov.l @(0xBC,PC),r1
	mov.l @(0xB8,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x64,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0x20,r0
	mov.w @(0x76,PC),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(0x7C,PC),r2
	mov.l @(0xA0,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xA0,PC),r6
	mova @(0x74,PC),r0
	fmov @r0,fr6
	mova @(0x74,PC),r0
	fmov @r6,fr3
	mov r4,r3
	fmov @r0,fr5
	mova @(0x70,PC),r0
	fmul fr6,fr3
	fmov @r0,fr4
	mov 0x04,r0
	mov.l @(0x6C,PC),r5
	add 0x40,r3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r1
	and r5,r1
	mov.l r1,@r3
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
	ftrc fr3,fpul
	sts fpul,r3
	and r5,r3
	mov.l r3,@(r0,r4)
	mov.l @r15,r1
	mov.w @(0x1C,PC),r0
	mov.l r1,@(0x14,r4)
	mov.w @(0x16,PC),r1
	mov.l @r15,r3
	add r3,r1
	mov.l r1,@(r0,r4)

loc_8c10a31c:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C10A324:
	#data 0x00D4
loc_8C10A326:
	#data 0x0168
loc_8C10A328:
	#data 0x00D0
loc_8C10A32a:
	#data 0x012C
loc_8C10A32c:
	#data 0x080F
loc_8C10A32e:
	#data 0x0088
loc_8C10A330:
	#data 0x00C8
	#align4

loc_8c10a334:
	#data bank12.loc_8C1292D4
loc_8c10a338:
	#data bank13.loc_8c13e650
loc_8C10A33C:
	#data 0x47800000
loc_8C10A340:
	#data 0x43B40000
loc_8C10A344:
	#data 0x3F000000
loc_8C10A348:
	#data 0x0000FFFF
loc_8c10a34c:
	#data bank11.loc_8c11e860
loc_8C10A350:
	#data 0x41200000
loc_8c10a354:
	#data bank04.loc_8c044f12
loc_8c10a358:
	#data loc_8C10A116
loc_8c10a35c:
	#data 0x8C26A904
loc_8c10a360:
	#data bank12.loc_8C1294C8
loc_8c10a364:
	#data bank13.loc_8C13E65C

;==============================================
loc_8C10A368:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xE8,r15
	mov r4,r14
	mov.w @(loc_8C10A43C,pc),r0 ; r0 set to 0xD8
	mov.l @(0x14,r14),r3
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @(r0,r3),r2
	tst r2,r2
	bt/s loc_8C10A3D8
	mov.l r2,@(r0,r14)
	mov.w @(loc_8C10A43E,pc),r1 ; r1 set to 0xD4
	mov.l @(0x14,r14),r0 ; r0 ??? bc r14 is ???
	mov.w @(loc_8C10A43C,pc),r2 ; r2 set to 0xD8
	mov.l @(r0,r1),r0
	add r14,r2 ; r2 ??? bc r14 is ???
	cmp/eq 0x00,r0
	bt/s loc_8C10A3Ae
	mov.l r0,@r2
	cmp/eq 0x01,r0
	bt loc_8C10A39a
	cmp/eq 0x02,r0
	bt loc_8C10A3A4
	bra loc_8C10A3Ae
	nop

loc_8C10A39A:
	mov 0x38,r0 ; r0 set to 0x38
	fldi1 fr2
	fmov.s @(r0,r14),fr3
	bra loc_8C10A3Ac
	fsub fr2,fr3

loc_8c10a3a4:
	mov 0x38,r0
	fldi1 fr2
	fmov.s @(r0,r14),fr3
	fadd fr2,fr3

loc_8c10a3ac:
	fmov.s fr3,@(r0,r14)

loc_8C10A3AE:
	mov.w @(loc_8C10A440,pc),r0 ; r0 set to 0xC8
	mov.l @(r0,r14),r2
	tst r2,r2
	bf loc_8C10A434
	mov.w @(loc_8C10A442,pc),r2 ; r2 set to 0x88
	mov r14,r1
	mov.l @(0x14,r14),r3
	add 0x34,r1
	add r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(loc_8C10A444,pc),r3 ; r3 set to 0x8C1294C8
	mov.l r2,@(r0,r14)
	mov r14,r2
	add 0x5C,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x44,r0 ; r0 set to 0x44
	mov.l r4,@(r0,r14)
	add 0x18,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c10a3d8:
	mov.w @(loc_8c10a440,pc),r0
	mov.l @(r0,r14),r3
	tst r3,r3
	bt loc_8c10a434
	mov r14,r2
	mov r14,r1
	mov.l @(loc_8c10a444,pc),r3
	add 0x34,r2
	mov.l r4,@(r0,r14)
	add 0x5C,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c10a448,pc),r2
	jsr @r2
	mov 0x00,r4
	mov 0x0C,r0
	fldi0 fr4
	fmov.s fr4,@(r0,r15)
	mov 0x10,r0
	fmov.s fr4,@(r0,r15)
	mov 0x14,r0
	mov.w @(loc_8c10a442,pc),r4
	mov.l @(loc_8c10a44c,pc),r3
	fmov.s fr4,@(r0,r15)
	jsr @r3
	add r14,r4
	mov.l @(loc_8c10a450,pc),r2
	mov r15,r4
	mov r15,r5
	jsr @r2
	add 0x0C,r4
	mov.l @(loc_8c10a444,pc),r3
	mov r14,r1
	mov r15,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c10a454,pc),r2
	jsr @r2
	mov 0x01,r4
	mov.l @(0x14,r14),r3
	mov 0x44,r0
	mov.l @(0x14,r3),r2
	mov.l @(0x14,r2),r1
	mov.l @(r0,r1),r3
	mov.l r3,@(r0,r14)

loc_8C10A434:
	add 0x18,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C10A43C:
	#data 0x00D8
loc_8C10A43E:
	#data 0x00D4
loc_8C10A440:
	#data 0x00C8
loc_8C10A442:
	#data 0x0088
	#align4

loc_8C10A444:
	#data bank12.loc_8c1294C8
loc_8C10A448:
	#data bank12.loc_8c120950
loc_8C10A44C:
	#data bank11.loc_8c1201e0
loc_8C10A450:
	#data bank11.loc_8c11F8B0
loc_8C10A454:
	#data bank12.loc_8c120900

;==============================================
loc_8c10a458:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c10a578,pc),r3
	mov 0x05,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c10a4d2
	mov r0,r4
	mov.w @(loc_8C10A56C,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C10A580,pc),r1
	mov.l @(loc_8c10a57c,pc),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(loc_8C10A56E,pc),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(0x14,r2),r3
	mov.w @(loc_8C10A570,pc),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(loc_8c10a584,pc),r2
	mov.l @(loc_8c10a588,pc),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @r15,r1
	mov.l @(loc_8c10a58c,pc),r5
	mov.l r1,@(0x14,r4)
	mov.l @r15,r3
	mov.w @(loc_8C10A572,pc),r1
	mov.w @(loc_8C10A574,pc),r0
	add r3,r1
	mov r4,r3
	mov.l r1,@(r0,r4)
	mov 0x04,r0
	fmov.s @r5,fr3
	add 0x40,r3
	ftrc fr3,fpul
	sts fpul,r1
	mov.l r1,@r3
	fmov.s @(r0,r5),fr3
	mov 0x44,r0
	ftrc fr3,fpul
	sts fpul,r3
	mov.l r3,@(r0,r4)
	mov 0x08,r0
	fmov.s @(r0,r5),fr3
	mov 0x48,r0
	ftrc fr3,fpul
	sts fpul,r1
	mov.l r1,@(r0,r4)
	mov.w @(loc_8c10a576,pc),r0
	mov.l @(0x14,r4),r3
	mov.l @(r0,r3),r1
	mov.l r1,@(r0,r4)

loc_8c10a4d2:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C10A4DA:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8C10A590,pc),r1 ; r1 set to 0x8C166288
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop
	mov.w @(loc_8C10A576,pc),r0 ; r0 set to 0xD8
	mov.l @(0x14,r14),r3
	mov.l @(r0,r3),r2
	mov.l r2,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C10A4FC:
	mov.l @(loc_8C10A598,pc),r7 ; r7 set to 0x8C13E344
	mov.l @(loc_8C10A594,pc),r5 ; r5 set to 0x8C13E34c
	bra loc_8C10A50e
	mov 0x00,r6

loc_8C10A504:
	mov.w @r5,r2
	add 0x01,r6
	shll r2
	shll r2
	add r2,r5

loc_8C10A50E:
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/ge r0,r6
	bf loc_8C10A504
	mov.b @r5,r0
	mov r4,r3
	mov.l @(loc_8C10A5A8,pc),r1 ; r1 set to 0xFFFF, r1 set to 0xFFFf
	add 0x40,r3
	mov.b r0,@(0x07,r4)
	mov.b @(0x07,r4),r0
	extu.b r0,r0
	shll r0
	add r0,r5
	mov.w @r5,r0
	shll2 r0
	fmov.s @(r0,r7),fr3
	mova @(loc_8C10A59C,pc),r0  ; r0 set to 0x8C10A59C, r0 set to 0x8C10A59c
	fmov.s @r0,fr2
	mova @(loc_8C10A5A0,pc),r0  ; r0 set to 0x8C10A5A0, r0 set to 0x8C10A5A0
	fmov.s @r0,fr1 ; r1 ??, r1 ??
	mova @(loc_8C10A5A4,pc),r0  ; r0 set to 0x8C10A5A4, r0 set to 0x8C10A5A4
	fmul fr2,fr3
	fmov.s @r0,fr0 ; r0 ??, r0 ??
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r1,r2
	mov.l r2,@r3
	mov.b @(0x05,r4),r0
	add 0x01,r0
	bra loc_8C10A550
	mov.b r0,@(0x05,r4)

loc_8C10A550:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.b @(0x06,r4),r0
	extu.b r0,r3
	mov.b @(0x07,r4),r0
	extu.b r0,r0
	add 0xFF,r0
	cmp/ge r0,r3
	bt/s loc_8C10A60c
	mov 0x00,r14 ; r14 set to 0x00
	mov.l @(loc_8C10A598,pc),r7 ; r7 set to 0x8C13E344
	mov.l @(loc_8C10A594,pc),r5 ; r5 set to 0x8C13E34c
	bra loc_8C10A5B6
	mov r14,r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10a56c:
	#data 0x012c
loc_8c10a56e:
	#data 0x0084
loc_8c10a570:
	#data 0x080f
loc_8c10a572:
	#data 0x0088
loc_8c10a574:
	#data 0x00C8
loc_8C10A576:
	#data 0x00D8
	#align4

loc_8C10A578:
	#data bank04.loc_8c044F12
loc_8C10A57C:
	#data loc_8c10A368
loc_8c10a580:
	#data 0x8C26A904
loc_8C10A584:
	#data bank13.loc_8c13e314
loc_8C10A588:
	#data bank12.loc_8c1294C8
loc_8C10A58C:
	#data bank13.loc_8c13e4Bc
loc_8C10A590:
	#data bank16.loc_8c166288
loc_8C10A594:
	#data bank13.loc_8c13e34c
loc_8C10A598:
	#data bank13.loc_8c13e344
loc_8C10A59C:
	#data 0x47800000
loc_8C10A5A0:
	#data 0x43B40000
loc_8C10A5A4:
	#data 0x3F000000
loc_8C10A5A8:
	#data 0x0000FFFf

;==============================================
loc_8C10A5AC:
	mov.w @r5,r2
	add 0x01,r6
	shll r2
	shll r2
	add r2,r5

loc_8C10A5B6:
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/ge r0,r6
	bf loc_8C10A5Ac
	mov.b @(0x06,r4),r0
	add 0x02,r5
	extu.b r0,r0
	shll r0
	mov.w @(r0,r5),r3
	mov.w @(loc_8C10A6B6,pc),r0 ; r0 set to 0xD0, r0 set to 0xD0
	mov.l r3,@(r0,r4)
	mov.b @(0x07,r4),r0
	extu.b r0,r0 ; r0 set to 0xD0, r0 set to 0xD0
	add 0xFF,r0 ; r0 set to 0xCF, r0 set to 0xCf
	shll r0 ; r0 set to 0x19E, r0 set to 0x19e
	add r0,r5
	mov.b @(0x06,r4),r0
	extu.b r0,r0 ; r0 set to 0x9E, r0 set to 0x9e
	shll r0 ; r0 set to 0x13C, r0 set to 0x13c
	add r0,r5
	mov.w @r5+,r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???
	shll2 r0
	fmov.s @(r0,r7),fr3
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	fmov.s fr3,@(r0,r4)
	mov.w @r5,r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???
	shll2 r0
	fmov.s @(r0,r7),fr3
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	fmov.s @(r0,r4),fr2
	mov.w @(loc_8C10A6B6,pc),r0 ; r0 set to 0xD0, r0 set to 0xD0
	fsub fr2,fr3
	mov.l @(r0,r4),r3
	lds r3,fpul
	float fpul,fr2
	fdiv fr2,fr3
	mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
	fmov.s fr3,@(r0,r4)
	mov 0x02,r0 ; r0 set to 0x02, r0 set to 0x02
	mov.b r0,@(0x05,r4)
	lds.l @r15+,pr
	bra loc_8C10A630
	mov.l @r15+,r14

loc_8C10A60C:
	mov.b @(0x04,r4),r0
	mov 0x04,r1 ; r1 set to 0x04
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C10A6BC,pc),r3 ; r3 set to 0x8C1292D4
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov 0x06,r0 ; r0 set to 0x06
	mov.b @r1,r1
	jsr @r3
	extu.b r1,r1
	mov.b r0,@(0x04,r4)
	mov r14,r0 ; r0 ??? bc r14 is ???
	nop
	mov.b r0,@(0x05,r4)
	mov.b r0,@(0x06,r4)
	lds.l @r15+,pr
	bra loc_8C10A4Fc
	mov.l @r15+,r14

loc_8C10A630:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	add 0xEC,r15
	mov.l @(loc_8C10A6C0,pc),r3 ; r3 set to 0x8C26A904
	mov r4,r14
	mov.w @(loc_8C10A6B8,pc),r0 ; r0 set to 0x84
	mov.l @r3,r4
	mov.l @(loc_8C10A6C4,pc),r1 ; r1 set to 0x8C108060
	mov.l @r4,r2
	mov.l @(r0,r14),r5
	jsr @r1
	mov.l @(0x1C,r2),r4
	mov.l @(loc_8C10A6D0,pc),r13 ; r13 set to 0x8C108192
	mova @(loc_8C10A6D4,pc),r0  ; r0 set to 0x8C10A6D4
	mov.l @(loc_8C10A6CC,pc),r12 ; r12 set to 0x8C108086
	mov.l @(loc_8C10A6C8,pc),r11 ; r11 set to 0x8C1081E6
	bra loc_8C10A67c
	fmov.s @r0,fr15

loc_8C10A65C:
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
	fmov fr15,fr0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov.s fr2,@r15
	jsr @r11
	add 0x04,r4

loc_8C10A67C:
	jsr @r12
	nop
	tst r0,r0
	bt loc_8C10A65c
	mov.w @(loc_8C10A6BA,pc),r1 ; r1 set to 0xD4, r1 set to 0xD4
	mov.l @(0x14,r14),r0
	mov r1,r2 ; r2 set to 0xD4, r2 set to 0xD4
	add r14,r2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???
	mov.l @(r0,r1),r0
	cmp/eq 0x00,r0
	bt/s loc_8C10A6E8
	mov.l r0,@r2
	cmp/eq 0x01,r0
	bt loc_8C10A6A0
	cmp/eq 0x02,r0
	bt loc_8C10A6D8
	bra loc_8C10A6E8
	nop

loc_8C10A6A0:
	mov.w @(0x1E,r14),r0
	mov 0x1E,r1 ; r1 set to 0x1e
	mov.l @(loc_8C10A6BC,pc),r3 ; r3 set to 0x8C1292D4
	add r14,r1 ; r1 ??? bc r14 is ???
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	mov 0x32,r0 ; r0 set to 0x32
	jsr @r3
	mov.w @r1,r1
	bra loc_8C10A6E8
	mov.w r0,@(0x1E,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C10A6B6:
	#data 0x00D0
loc_8C10A6B8:
	#data 0x0084
loc_8C10A6BA:
	#data 0x00D4
	#align4

loc_8C10A6BC:
	#data bank12.loc_8c1292D4
loc_8C10A6C0:
	#data 0x8C26A904
loc_8C10A6C4:
	#data loc_8c108060
loc_8C10A6C8:
	#data loc_8c1081E6
loc_8C10A6CC:
	#data loc_8c108086
loc_8C10A6D0:
	#data loc_8c108192
loc_8C10A6D4:
	#data 0x3CA3D70a

;==============================================
loc_8c10a6d8:
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/pz r0
	bt loc_8c10a6e8
	mov 0x31,r0
	mov.w r0,@(0x1E,r14)

loc_8c10a6e8:
	mova @(loc_8C10A784,pc),r0
	mov.l @(loc_8C10A790,pc),r1
	fmov.s @r0,fr3
	mov 0x50,r0
	fmov.s @(r0,r14),fr2
	mova @(loc_8C10A788,pc),r0
	fmov.s @r0,fr1
	mova @(loc_8C10A78C,pc),r0
	fmul fr3,fr2
	fmov.s @r0,fr0
	mov r14,r2
	add 0x40,r2
	fdiv fr1,fr2
	fadd fr0,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r1,r3
	mov.l r3,@r2
	bsr loc_8c10a730
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c10a720
	mov 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.b @(0x06,r14),r0
	add 0x01,r0
	mov.b r0,@(0x06,r14)

loc_8c10a720:
	add 0x14,r15
	lds.l @r15+,pr
	fmov.s @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c10a730:
	mov.w @(0x1C,r4),r0
	mov r4,r3
	mov.l @(loc_8C10A790,pc),r1
	add 0x40,r3
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	mov r0,r2
	lds r2,fpul
	mov 0x54,r0
	fmov.s @(r0,r4),fr2
	mova @(loc_8C10A784,pc),r0
	float fpul,fr3
	fmul fr3,fr2
	fmov.s @r0,fr3
	mova @(loc_8C10A788,pc),r0
	fmov.s @r0,fr1
	mova @(loc_8C10A78C,pc),r0
	fmov.s @r0,fr0
	fmul fr3,fr2
	mov.l @r3,r0
	fdiv fr1,fr2
	fadd fr0,fr2
	ftrc fr2,fpul
	sts fpul,r2
	and r1,r2
	add r2,r0
	mov.l r0,@r3
	mov.w @(loc_8C10A782,pc),r3
	mov.w @(0x1C,r4),r0
	add r4,r3
	mov.l @r3,r3
	cmp/gt r3,r0
	bf loc_8c10a77c
	mov 0x00,r0
	mov.w r0,@(0x1C,r4)
	rts
	mov 0x01,r0

;==============================================
loc_8c10a77c:
	mov 0x00,r0
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C10A782:
	#data 0x00D0
	#align4

loc_8C10A784:
	#data 0x47800000
loc_8C10A788:
	#data 0x43B40000
loc_8C10A78C:
	#data 0x3F000000
loc_8C10A790:
	#data 0x0000FFFF

;==============================================
loc_8C10A794:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C10A8C0,pc),r3 ; r3 set to 0x8C044F12
	mov 0x05,r5 ; r5 set to 0x05
	mov.l r4,@r15
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C10A83a
	mov r0,r4 ; r4 ??? bc r0 is ???
	mov.w @(loc_8C10A8B4,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8C10A8C8,pc),r1 ; r1 set to 0x8C26A904
	mov.l @(loc_8C10A8C4,pc),r2 ; r2 set to 0x8C10A4Da
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3 ; r3 ??
	mov r4,r1 ; r1 ??? bc r4 is ???
	mov.w @(loc_8C10A8B6,pc),r0 ; r0 set to 0x84
	add 0x34,r1
	mov.l @r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(0x18,r2),r3
	mov.w @(loc_8C10A8B8,pc),r2 ; r2 set to 0x803
	mov.l r3,@(r0,r4)
	add 0x48,r0 ; r0 set to 0xCc
	mov.l r2,@(r0,r4)
	mov.l @(loc_8C10A8D0,pc),r3 ; r3 set to 0x8C1294C8
	mov.l @(loc_8C10A8CC,pc),r2 ; r2 set to 0x8C13E320
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C10A8BA,pc),r3 ; r3 set to 0x88
	mov.l @r15,r1
	mov.w @(loc_8C10A8BC,pc),r0 ; r0 set to 0xC8
	add r1,r3 ; r3 ??? bc r1 is ???
	mov.l @(loc_8C10A8D4,pc),r6 ; r6 set to 0x8C13E338
	mov.l r3,@(r0,r4)
	mova @(loc_8C10A8D8,pc),r0  ; r0 set to 0x8C10A8D8
	mov.l @r15,r2 ; r2 ??? bc r15 is ???
	mov r4,r3
	mov.l @(loc_8C10A8E4,pc),r5 ; r5 set to 0xFFFf
	add 0x40,r3
	mov.l r2,@(0x14,r4)
	fmov.s @r6,fr3
	fmov.s @r0,fr6 ; r6 ??
	mova @(loc_8C10A8DC,pc),r0  ; r0 set to 0x8C10A8Dc
	fmov.s @r0,fr5 ; r5 ??
	mova @(loc_8C10A8E0,pc),r0  ; r0 set to 0x8C10A8E0
	fmul fr6,fr3
	fmov.s @r0,fr4
	mov 0x04,r0 ; r0 set to 0x04
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r5,r2
	mov.l r2,@r3
	fmov.s @(r0,r6),fr3
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	mov 0x44,r0 ; r0 set to 0x44
	and r5,r3
	mov.l r3,@(r0,r4)
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s @(r0,r6),fr3
	mov 0x48,r0 ; r0 set to 0x48
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r5,r3
	mov.l r3,@(r0,r4)
	mov.w @(loc_8C10A8BE,pc),r0 ; r0 set to 0xD8
	mov.l @(0x14,r4),r2
	mov.l @(r0,r2),r3
	mov.l r3,@(r0,r4)
	add 0x04,r15
	bra loc_8C10A458
	lds.l @r15+,pr

loc_8C10A83A:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C10A842:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8C10A8E8,pc),r1 ; r1 set to 0x8C166294
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop
	mov.l @(0x14,r14),r3
	mov 0x58,r0 ; r0 set to 0x58
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	add 0x7C,r0 ; r0 set to 0xD4
	mov.l @(r0,r14),r2
	mov.l @(0x14,r14),r3
	mov.l r2,@(r0,r3)
	add 0x04,r0 ; r0 set to 0xD8
	mov.l @(r0,r14),r2
	mov.l @(0x14,r14),r3
	mov.l r2,@(r0,r3)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C10A874:
	mov.l @(loc_8C10A8EC,pc),r5 ; r5 set to 0x8C13E5B0
	bra loc_8C10A884
	mov 0x00,r6

loc_8C10A87A:
	mov.w @r5,r2
	add 0x01,r6
	shll r2
	shll r2
	add r2,r5

loc_8C10A884:
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/ge r0,r6
	bf loc_8C10A87a
	mov.b @r5,r0
	mov.b r0,@(0x07,r4)
	mov 0x01,r0 ; r0 set to 0x01, r0 set to 0x01
	bra loc_8C10A896
	mov.b r0,@(0x05,r4)

loc_8C10A896:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b @(0x06,r4),r0
	extu.b r0,r3
	mov.b @(0x07,r4),r0
	extu.b r0,r0
	add 0xFF,r0
	cmp/ge r0,r3
	bt/s loc_8C10A942
	mov 0x00,r7 ; r7 set to 0x00
	mov.l @(loc_8C10A8F0,pc),r3 ; r3 set to 0x8C13E5A4
	mov.l @(loc_8C10A8EC,pc),r5 ; r5 set to 0x8C13E5B0
	mov.l r3,@r15
	bra loc_8C10A8Fe
	mov r7,r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C10A8B4:
	#data 0x012c
loc_8C10A8B6:
	#data 0x0084
loc_8C10A8B8:
	#data 0x0803
loc_8C10A8BA:
	#data 0x0088
loc_8C10A8BC:
	#data 0x00C8
loc_8C10A8BE:
	#data 0x00D8
	#align4

loc_8C10A8C0:
	#data bank04.loc_8c044F12
loc_8C10A8C4:
	#data loc_8c10A4Da
loc_8C10A8C8:
	#data 0x8C26A904
loc_8C10A8CC:
	#data bank13.loc_8c13e320
loc_8C10A8D0:
	#data bank12.loc_8c1294C8
loc_8C10A8D4:
	#data bank13.loc_8c13e338
loc_8C10A8D8:
	#data 0x47800000
loc_8C10A8DC:
	#data 0x43B40000
loc_8C10A8E0:
	#data 0x3F000000
loc_8C10A8E4:
	#data 0x0000FFFf
loc_8C10A8E8:
	#data bank16.loc_8c166294
loc_8C10A8EC:
	#data bank13.loc_8c13e5B0
loc_8C10A8F0:
	#data bank13.loc_8c13e5A4

;==============================================
loc_8C10A8F4:
	mov.w @r5,r2
	add 0x01,r6
	shll r2
	shll r2
	add r2,r5

loc_8C10A8FE:
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/ge r0,r6
	bf loc_8C10A8F4
	mov.b @(0x06,r4),r0
	add 0x02,r5
	extu.b r0,r0
	shll r0
	mov.w @(r0,r5),r3
	mov.w @(loc_8C10AA46,pc),r0 ; r0 set to 0xD0, r0 set to 0xD0
	mov.l r3,@(r0,r4)
	mov.b @(0x07,r4),r0
	extu.b r0,r0 ; r0 set to 0xD0, r0 set to 0xD0
	add 0xFF,r0 ; r0 set to 0xCF, r0 set to 0xCf
	shll r0 ; r0 set to 0x19E, r0 set to 0x19e
	add r0,r5
	mov.b @(0x06,r4),r0
	extu.b r0,r0 ; r0 set to 0x9E, r0 set to 0x9e
	shll r0 ; r0 set to 0x13C, r0 set to 0x13c
	add r0,r5
	mov.w @(loc_8C10AA48,pc),r0 ; r0 set to 0xD4, r0 set to 0xD4
	mov.w @r5,r3
	mov.l r3,@(r0,r4)
	mov.w @r5,r2
	mov.l @r15,r0 ; r0 ??? bc r15 is ???, r0 ??? bc r15 is ???
	shll2 r2
	fmov.s @(r0,r2),fr3
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	fmov.s fr3,@(r0,r4)
	mov 0x02,r0 ; r0 set to 0x02, r0 set to 0x02
	mov.b r0,@(0x05,r4)
	add 0x04,r15
	bra loc_8C10A966
	lds.l @r15+,pr

loc_8C10A942:
	mov.b @(0x04,r4),r0
	mov 0x04,r1 ; r1 set to 0x04
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C10AA58,pc),r3 ; r3 set to 0x8C1292D4
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov 0x06,r0 ; r0 set to 0x06
	mov.b @r1,r1
	jsr @r3
	extu.b r1,r1
	mov.b r0,@(0x04,r4)
	mov r7,r0 ; r0 ??? bc r7 is ???
	nop
	mov.b r0,@(0x05,r4)
	mov.b r0,@(0x06,r4)
	add 0x04,r15
	bra loc_8C10A874
	lds.l @r15+,pr

loc_8c10a966:
	mov.w @(0x1C,r4),r0
	mov r4,r3
	mov.l @(loc_8C10AA68,pc),r1
	add 0x40,r3
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mova @(loc_8C10AA5C,pc),r0
	fmov.s @r0,fr3
	mov 0x50,r0
	fmov.s @(r0,r4),fr2
	mova @(loc_8C10AA60,pc),r0
	fmov.s @r0,fr1
	mova @(loc_8C10AA64,pc),r0
	fmul fr3,fr2
	fmov.s @r0,fr0
	mov.l @r3,r0
	fdiv fr1,fr2
	fadd fr0,fr2
	ftrc fr2,fpul
	sts fpul,r2
	and r1,r2
	add r2,r0
	mov.l r0,@r3
	mov.w @(loc_8c10aa46,pc),r3
	mov.w @(0x1C,r4),r0
	add r4,r3
	mov.l @r3,r3
	cmp/gt r3,r0
	bf loc_8c10a9c6
	mov 0x50,r0
	fldi1 fr3
	fmov.s @(r0,r4),fr2
	fneg fr3
	fcmp/eq fr3,fr2
	bf/s loc_8c10a9b6
	mov 0x01,r5
	mov.w @(loc_8C10AA4A,pc),r0
	mov.l @(r0,r4),r2
	xor r5,r2
	mov.l r2,@(r0,r4)

loc_8c10a9b6:
	mov 0x00,r0
	mov.w r0,@(0x1C,r4)
	mov r5,r0
	nop
	mov.b r0,@(0x05,r4)
	mov.b @(0x06,r4),r0
	add 0x01,r0
	mov.b r0,@(0x06,r4)
	
loc_8c10a9c6:
	rts
	nop

loc_8C10A9CA:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C10AA6C,pc),r3 ; r3 set to 0x8C044F12
	mov 0x05,r5 ; r5 set to 0x05
	mov.l r4,@r15
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C10AA2a
	mov r0,r4 ; r4 ??? bc r0 is ???
	mov.l @(loc_8C10AA74,pc),r1 ; r1 set to 0x8C26A904
	mov 0x01,r5 ; r5 set to 0x01
	mov.l @(loc_8C10AA70,pc),r3 ; r3 set to 0x8C10A842
	mov.w @(loc_8C10AA4C,pc),r0 ; r0 set to 0x12c
	mov.b r5,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r1,r2
	mov r4,r1 ; r1 ??? bc r4 is ???
	mov.w @(loc_8C10AA4E,pc),r0 ; r0 set to 0x84
	add 0x34,r1
	mov.l @r2,r3 ; r3 ??? bc r2 is ???
	mov.w @(loc_8C10AA50,pc),r2 ; r2 set to 0x803
	mov.l @(0x10,r3),r3
	mov.l r3,@(r0,r4)
	add 0x48,r0 ; r0 set to 0xCc
	mov.l r2,@(r0,r4)
	mov.l @(loc_8C10AA78,pc),r2 ; r2 set to 0x8C13E58c
	mov.l @(loc_8C10AA7C,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @r15,r1
	mov.w @(loc_8C10AA54,pc),r0 ; r0 set to 0xC8
	mov.l r1,@(0x14,r4)
	mov.w @(loc_8C10AA52,pc),r1 ; r1 set to 0x88
	mov.l @r15,r3 ; r3 ??? bc r15 is ???
	add r3,r1 ; r1 ??? bc r3 is ???
	mov.l r1,@(r0,r4)
	add 0x10,r0 ; r0 set to 0xD8
	mov.l r5,@(r0,r4)
	mov 0x58,r0 ; r0 set to 0x58
	mov.l @(0x14,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	add 0x04,r15
	mov.l @(loc_8C10AA80,pc),r3 ; r3 set to 0x8C10B804
	jmp @r3
	lds.l @r15+,pr

loc_8C10AA2A:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C10AA32:
	add 0xFC,r15
	mov r4,r3
	mov.l @(loc_8C10AA84,pc),r1 ; r1 set to 0x8C1662A0
	mov.l r4,@r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C10AA46:
	#data 0x00D0
loc_8C10AA48:
	#data 0x00D4
loc_8c10aa4a:
	#data 0x00D8
loc_8C10AA4C:
	#data 0x012c
loc_8C10AA4E:
	#data 0x0084
loc_8C10AA50:
	#data 0x0803
loc_8C10AA52:
	#data 0x0088
loc_8C10AA54:
	#data 0x00C8
	#align4

loc_8C10AA58:
	#data bank12.loc_8c1292D4
loc_8c10aa5c:
	#data 0x47800000
loc_8c10aa60:
	#data 0x43B40000
loc_8c10aa64:
	#data 0x3F000000
loc_8c10aa68:
	#data 0x0000FFFf
loc_8C10AA6C:
	#data bank04.loc_8c044F12
loc_8C10AA70:
	#data loc_8c10A842
loc_8C10AA74:
	#data 0x8C26A904
loc_8C10AA78:
	#data bank13.loc_8c13e58c
loc_8C10AA7C:
	#data bank12.loc_8c1294C8
loc_8C10AA80:
	#data loc_8c10B804
loc_8C10AA84:
	#data bank16.loc_8c1662A0

;===============================================
loc_8C10AA88:
	mov.l @(loc_8C10AB8C,pc),r5 ; r5 set to 0x8C13E5B0
	bra loc_8C10AA98
	mov 0x00,r6

loc_8C10AA8E:
	mov.w @r5,r2
	add 0x01,r6
	shll r2
	shll r2
	add r2,r5

loc_8C10AA98:
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/ge r0,r6
	bf loc_8C10AA8e
	mov.b @r5,r0
	mov.b r0,@(0x07,r4)
	mov 0x01,r0 ; r0 set to 0x01, r0 set to 0x01
	bra loc_8C10AAAa
	mov.b r0,@(0x05,r4)

loc_8C10AAAA:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b @(0x06,r4),r0
	extu.b r0,r3
	mov.b @(0x07,r4),r0
	extu.b r0,r0
	add 0xFF,r0
	cmp/ge r0,r3
	bt/s loc_8C10AB16
	mov 0x00,r7 ; r7 set to 0x00
	mov.l @(loc_8C10AB90,pc),r3 ; r3 set to 0x8C13E5A4
	mov.l @(loc_8C10AB8C,pc),r5 ; r5 set to 0x8C13E5B0
	mov.l r3,@r15
	bra loc_8C10AAD2
	mov r7,r6

loc_8C10AAC8:
	mov.w @r5,r2
	add 0x01,r6
	shll r2
	shll r2
	add r2,r5

loc_8C10AAD2:
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/ge r0,r6
	bf loc_8C10AAC8
	mov.b @(0x06,r4),r0
	add 0x02,r5
	extu.b r0,r0
	shll r0
	mov.w @(r0,r5),r3
	mov.w @(loc_8C10AB86,pc),r0 ; r0 set to 0xD0, r0 set to 0xD0
	mov.l r3,@(r0,r4)
	mov.b @(0x07,r4),r0
	extu.b r0,r0 ; r0 set to 0xD0, r0 set to 0xD0
	add 0xFF,r0 ; r0 set to 0xCF, r0 set to 0xCf
	shll r0 ; r0 set to 0x19E, r0 set to 0x19e
	add r0,r5
	mov.b @(0x06,r4),r0
	extu.b r0,r0 ; r0 set to 0x9E, r0 set to 0x9e
	shll r0 ; r0 set to 0x13C, r0 set to 0x13c
	add r0,r5
	mov.w @(loc_8C10AB88,pc),r0 ; r0 set to 0xD4, r0 set to 0xD4
	mov.w @r5,r3
	mov.l r3,@(r0,r4)
	mov.w @r5,r2
	mov.l @r15,r0 ; r0 ??? bc r15 is ???, r0 ??? bc r15 is ???
	shll2 r2
	fmov.s @(r0,r2),fr3
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	fmov.s fr3,@(r0,r4)
	mov 0x02,r0 ; r0 set to 0x02, r0 set to 0x02
	mov.b r0,@(0x05,r4)
	add 0x04,r15
	bra loc_8C10AB3a
	lds.l @r15+,pr

loc_8C10AB16:
	mov.b @(0x04,r4),r0
	mov 0x04,r1 ; r1 set to 0x04
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C10AB94,pc),r3 ; r3 set to 0x8C1292D4
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov 0x06,r0 ; r0 set to 0x06
	mov.b @r1,r1
	jsr @r3
	extu.b r1,r1
	mov.b r0,@(0x04,r4)
	mov r7,r0 ; r0 ??? bc r7 is ???
	nop
	mov.b r0,@(0x05,r4)
	mov.b r0,@(0x06,r4)
	add 0x04,r15
	bra loc_8C10AA88
	lds.l @r15+,pr

loc_8c10ab3a:
	mov.w @(0x1C,r4),r0
	mov r4,r3
	mov.l @(loc_8C10ABA4,pc),r1
	add 0x40,r3
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mova @(loc_8C10AB98,pc),r0
	fmov.s @r0,fr3
	mov 0x50,r0
	fmov.s @(r0,r4),fr2
	mova @(loc_8C10AB9C,pc),r0
	fmov.s @r0,fr1
	mova @(loc_8C10ABA0,pc),r0
	fmul fr3,fr2
	fmov.s @r0,fr0
	mov.l @r3,r0
	fdiv fr1,fr2
	fadd fr0,fr2
	ftrc fr2,fpul
	sts fpul,r2
	and r1,r2
	add r2,r0
	mov.l r0,@r3
	mov.w @(loc_8c10ab86,pc),r3
	mov.w @(0x1C,r4),r0
	add r4,r3
	mov.l @r3,r3
	cmp/gt r3,r0
	bf loc_8c10ab82
	mov 0x00,r0
	mov.w r0,@(0x1C,r4)
	mov 0x01,r0
	mov.b r0,@(0x05,r4)
	mov.b @(0x06,r4),r0
	add 0x01,r0
	mov.b r0,@(0x06,r4)

loc_8c10ab82:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10ab86:
	#data 0x00D0
loc_8c10ab88:
	#data 0x00D4
	#align4

loc_8c10ab8c:
	#data bank13.loc_8C13E5B0
loc_8c10ab90:
	#data bank13.loc_8C13E5A4
loc_8c10ab94:
	#data bank12.loc_8C1292D4
loc_8C10AB98:
	#data 0x47800000
loc_8C10AB9C:
	#data 0x43B40000
loc_8C10ABA0:
	#data 0x3F000000
loc_8C10ABA4:
	#data 0x0000FFFF

;==============================================
loc_8c10aba8:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x13C,PC),r3
	mov 0x05,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c10abf4
	mov r0,r4
	mov.w @(0x11C,PC),r0
	mov 0x01,r3
	mov.l @(0x130,PC),r1
	mov.l @(0x128,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(0x10E,PC),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(0x8,r2),r3
	mov.w @(0x108,PC),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(0x118,PC),r2
	mov.l @(0x118,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @r15,r1
	mov.w @(0xFA,PC),r0
	mov.l r1,@(0x14,r4)
	mov.w @(0xF4,PC),r1
	mov.l @r15,r3
	add r3,r1
	mov.l r1,@(r0,r4)

loc_8c10abf4:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C10ABFC:
	add 0xFC,r15
	mov r4,r3
	mov.l @(loc_8C10AD00,pc),r1 ; r1 set to 0x8C1662Ac
	mov.l r4,@r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C10AC10:
	mov.l @(loc_8C10AD08,pc),r7 ; r7 set to 0x8C13E4C8
	mov.l @(loc_8C10AD04,pc),r5 ; r5 set to 0x8C13E4D4
	bra loc_8C10AC22
	mov 0x00,r6

loc_8C10AC18:
	mov.w @r5,r2
	add 0x01,r6
	shll r2
	shll r2
	add r2,r5

loc_8C10AC22:
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/ge r0,r6
	bf loc_8C10AC18
	mov.b @r5,r0
	mov r4,r3
	mov.l @(loc_8C10AD18,pc),r1 ; r1 set to 0xFFFF, r1 set to 0xFFFf
	add 0x40,r3
	mov.b r0,@(0x07,r4)
	mov.b @(0x07,r4),r0
	extu.b r0,r0
	shll r0
	add r0,r5
	mov.w @r5,r0
	shll2 r0
	fmov.s @(r0,r7),fr3
	mova @(loc_8C10AD0C,pc),r0  ; r0 set to 0x8C10AD0C, r0 set to 0x8C10AD0c
	fmov.s @r0,fr2
	mova @(loc_8C10AD10,pc),r0  ; r0 set to 0x8C10AD10, r0 set to 0x8C10AD10
	fmov.s @r0,fr1 ; r1 ??, r1 ??
	mova @(loc_8C10AD14,pc),r0  ; r0 set to 0x8C10AD14, r0 set to 0x8C10AD14
	fmul fr2,fr3
	fmov.s @r0,fr0 ; r0 ??, r0 ??
	mov 0x01,r0 ; r0 set to 0x01, r0 set to 0x01
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r1,r2
	mov.l r2,@r3
	bra loc_8C10AC62
	mov.b r0,@(0x05,r4)

loc_8C10AC62:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.b @(0x06,r4),r0
	extu.b r0,r3
	mov.b @(0x07,r4),r0
	extu.b r0,r0
	add 0xFF,r0
	cmp/ge r0,r3
	bt/s loc_8C10AD1c
	mov 0x00,r14 ; r14 set to 0x00
	mov.l @(loc_8C10AD08,pc),r7 ; r7 set to 0x8C13E4C8
	mov.l @(loc_8C10AD04,pc),r5 ; r5 set to 0x8C13E4D4
	bra loc_8C10AC88
	mov r14,r6

loc_8C10AC7E:
	mov.w @r5,r2
	add 0x01,r6
	shll r2
	shll r2
	add r2,r5

loc_8C10AC88:
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/ge r0,r6
	bf loc_8C10AC7e
	mov.b @(0x06,r4),r0
	add 0x02,r5
	extu.b r0,r0
	shll r0
	mov.w @(r0,r5),r3
	mov.w @(loc_8C10ACE8,pc),r0 ; r0 set to 0xD0, r0 set to 0xD0
	mov.l r3,@(r0,r4)
	mov.b @(0x07,r4),r0
	extu.b r0,r0 ; r0 set to 0xD0, r0 set to 0xD0
	add 0xFF,r0 ; r0 set to 0xCF, r0 set to 0xCf
	shll r0 ; r0 set to 0x19E, r0 set to 0x19e
	add r0,r5
	mov.b @(0x06,r4),r0
	extu.b r0,r0 ; r0 set to 0x9E, r0 set to 0x9e
	shll r0 ; r0 set to 0x13C, r0 set to 0x13c
	add r0,r5
	mov.w @r5+,r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???
	shll2 r0
	fmov.s @(r0,r7),fr3
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	fmov.s fr3,@(r0,r4)
	mov.w @r5,r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???
	shll2 r0
	fmov.s @(r0,r7),fr3
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	fmov.s @(r0,r4),fr2
	mov.w @(loc_8C10ACE8,pc),r0 ; r0 set to 0xD0, r0 set to 0xD0
	fsub fr2,fr3
	mov.l @(r0,r4),r3
	lds r3,fpul
	float fpul,fr2
	fdiv fr2,fr3
	mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
	fmov.s fr3,@(r0,r4)
	mov 0x02,r0 ; r0 set to 0x02, r0 set to 0x02
	mov.b r0,@(0x05,r4)
	lds.l @r15+,pr
	bra loc_8C10AD40
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C10ACde:
	#data 0x012c
loc_8C10ACE0:
	#data 0x0084
loc_8C10ACE2:
	#data 0x0803
loc_8C10ACE4:
	#data 0x0088
loc_8C10ACE6:
	#data 0x00C8
loc_8C10ACE8:
	#data 0x00D0
	#align4

loc_8C10ACEC:
	#data bank04.loc_8c044F12
loc_8C10ACF0:
	#data loc_8c10AA32
loc_8C10ACF4:
	#data 0x8C26A904
loc_8C10ACF8:
	#data bank13.loc_8c13e574
loc_8C10ACFC:
	#data bank12.loc_8c1294C8
loc_8C10AD00:
	#data bank16.loc_8c1662Ac
loc_8C10AD04:
	#data bank13.loc_8c13e4D4
loc_8C10AD08:
	#data bank13.loc_8c13e4C8
loc_8C10AD0C:
	#data 0x47800000
loc_8C10AD10:
	#data 0x43B40000
loc_8C10AD14:
	#data 0x3F000000
loc_8C10AD18:
	#data 0x0000FFFf

;==============================================
loc_8C10AD1C:
	mov.b @(0x04,r4),r0
	mov 0x04,r1 ; r1 set to 0x04
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C10ADD8,pc),r3 ; r3 set to 0x8C1292D4
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov 0x06,r0 ; r0 set to 0x06
	mov.b @r1,r1
	jsr @r3
	extu.b r1,r1
	mov.b r0,@(0x04,r4)
	mov r14,r0 ; r0 ??? bc r14 is ???
	nop
	mov.b r0,@(0x05,r4)
	mov.b r0,@(0x06,r4)
	lds.l @r15+,pr
	bra loc_8C10AC10
	mov.l @r15+,r14

loc_8c10ad40:
	mova @(loc_8C10ADDC,pc),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8C10ADE8,pc),r1
	sts.l pr,@-r15
	fmov.s @r0,fr3
	mov 0x50,r0
	fmov.s @(r0,r14),fr2
	mova @(loc_8C10ADE0,pc),r0
	fmov.s @r0,fr1
	mova @(loc_8C10ADE4,pc),r0
	fmul fr3,fr2
	fmov.s @r0,fr0
	mov r4,r3
	add 0x40,r3
	fdiv fr1,fr2
	fadd fr0,fr2
	ftrc fr2,fpul
	sts fpul,r2
	and r1,r2
	mov.l r2,@r3
	bsr loc_8c10ad84
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c10ad7e
	mov 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.b @(0x06,r14),r0
	add 0x01,r0
	mov.b r0,@(0x06,r14)

loc_8c10ad7e:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c10ad84:
	mov.w @(0x1C,r4),r0
	mov r4,r3
	mov.l @(loc_8C10ADE8,pc),r1
	add 0x40,r3
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	mov r0,r2
	lds r2,fpul
	mov 0x54,r0
	fmov.s @(r0,r4),fr2
	mova @(loc_8C10ADDC,pc),r0
	float fpul,fr3
	fmul fr3,fr2
	fmov.s @r0,fr3
	mova @(loc_8C10ADE0,pc),r0
	fmov.s @r0,fr1
	mova @(loc_8C10ADE4,pc),r0
	fmov.s @r0,fr0
	fmul fr3,fr2
	mov.l @r3,r0
	fdiv fr1,fr2
	fadd fr0,fr2
	ftrc fr2,fpul
	sts fpul,r2
	and r1,r2
	add r2,r0
	mov.l r0,@r3
	mov.w @(loc_8C10ADD6,pc),r3
	mov.w @(0x1C,r4),r0
	add r4,r3
	mov.l @r3,r3
	cmp/gt r3,r0
	bf loc_8c10add0
	mov 0x00,r0
	mov.w r0,@(0x1C,r4)
	rts
	mov 0x01,r0

loc_8c10add0:
	mov 0x00,r0
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C10ADD6:
	#data 0x00D0
	#align4

loc_8c10add8:
	#data bank12.loc_8C1292D4
loc_8C10ADDC:
	#data 0x47800000
loc_8C10ADE0:
	#data 0x43B40000
loc_8C10ADE4:
	#data 0x3F000000
loc_8C10ADE8:
	#data 0x0000FFFF

;==============================================
loc_8C10ADEC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C10AF08,pc),r3 ; r3 set to 0x8C044F12
	mov 0x05,r5 ; r5 set to 0x05
	mov.l r4,@r15
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C10AE74
	mov r0,r14
	mov.w @(loc_8C10AEFC,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8C10AF10,pc),r1 ; r1 set to 0x8C26A904
	mov.l @(loc_8C10AF0C,pc),r2 ; r2 set to 0x8C10ABFc
	mov.b r3,@(r0,r14)
	mov.l r2,@(0x10,r14)
	mov.l @r1,r3 ; r3 ??
	mov r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C10AEFE,pc),r0 ; r0 set to 0x84
	add 0x34,r1
	mov.l @r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(0x0C,r2),r3
	mov.w @(loc_8C10AF00,pc),r2 ; r2 set to 0x803
	mov.l r3,@(r0,r14)
	add 0x48,r0 ; r0 set to 0xCc
	mov.l r2,@(r0,r14)
	mov.l @(loc_8C10AF14,pc),r2 ; r2 set to 0x8C13E4B0
	mov.l @(loc_8C10AF18,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(loc_8C10AF20,pc),r3 ; r3 set to 0x8C13E4C0
	mova @(loc_8C10AF1C,pc),r0  ; r0 set to 0x8C10AF1c
	fmov.s @r0,fr3 ; r3 ??
	mova @(loc_8C10AF24,pc),r0  ; r0 set to 0x8C10AF24
	fmov.s @r3,fr2 ; r2 ??? bc r3 is ???
	mov r14,r1
	fmov.s @r0,fr1
	mova @(loc_8C10AF28,pc),r0  ; r0 set to 0x8C10AF28
	fmul fr3,fr2
	fmov.s @r0,fr0 ; r0 ??
	mov.l @(loc_8C10AF2C,pc),r0 ; r0 set to 0xFFFf
	add 0x40,r1
	fdiv fr1,fr2
	fadd fr0,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r0,r3
	mov.w @(loc_8C10AF04,pc),r0 ; r0 set to 0xC8
	mov.l r3,@r1
	mov.l @r15,r1
	mov.l r1,@(0x14,r14)
	mov.w @(loc_8C10AF02,pc),r1 ; r1 set to 0x88
	mov.l @r15,r3
	add r3,r1 ; r1 ??? bc r3 is ???
	mov.l r1,@(r0,r14)
	bsr loc_8C10A9Ca
	mov r14,r4 ; r4 ??? bc r14 is ???
	bsr loc_8C10A282
	mov r14,r4
	bsr loc_8C10A074
	mov r14,r4
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C10A794
	mov.l @r15+,r14

loc_8C10AE74:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C10AE7C:
	add 0xFC,r15
	mov r4,r3
	mov.l @(loc_8C10AF30,pc),r1 ; r1 set to 0x8C1662B8
	mov.l r4,@r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C10AE90:
	mov.l @(loc_8C10AF38,pc),r7 ; r7 set to 0x8C13E404
	mov.l @(loc_8C10AF34,pc),r5 ; r5 set to 0x8C13E410
	bra loc_8C10AEA2
	mov 0x00,r6

loc_8C10AE98:
	mov.w @r5,r2
	add 0x01,r6
	shll r2
	shll r2
	add r2,r5

loc_8C10AEA2:
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/ge r0,r6
	bf loc_8C10AE98
	mov.b @r5,r0
	mov.l @(loc_8C10AF2C,pc),r2 ; r2 set to 0xFFFF, r2 set to 0xFFFf
	mov.b r0,@(0x07,r4)
	mov.b @(0x07,r4),r0
	extu.b r0,r0
	shll r0
	add r0,r5
	mov.w @r5,r0
	shll2 r0
	fmov.s @(r0,r7),fr3
	mova @(loc_8C10AF1C,pc),r0  ; r0 set to 0x8C10AF1C, r0 set to 0x8C10AF1c
	fmov.s @r0,fr2 ; r2 ??, r2 ??
	mova @(loc_8C10AF24,pc),r0  ; r0 set to 0x8C10AF24, r0 set to 0x8C10AF24
	fmov.s @r0,fr1
	mova @(loc_8C10AF28,pc),r0  ; r0 set to 0x8C10AF28, r0 set to 0x8C10AF28
	fmul fr2,fr3
	fmov.s @r0,fr0 ; r0 ??, r0 ??
	mov 0x44,r0 ; r0 set to 0x44, r0 set to 0x44
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r2,r3
	mov.l r3,@(r0,r4)
	mov 0x01,r0 ; r0 set to 0x01, r0 set to 0x01
	bra loc_8C10AEE0
	mov.b r0,@(0x05,r4)

loc_8C10AEE0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.b @(0x06,r4),r0
	extu.b r0,r3
	mov.b @(0x07,r4),r0
	extu.b r0,r0
	add 0xFF,r0
	cmp/ge r0,r3
	bt/s loc_8C10AF9c
	mov 0x00,r14 ; r14 set to 0x00
	mov.l @(loc_8C10AF38,pc),r7 ; r7 set to 0x8C13E404
	mov.l @(loc_8C10AF34,pc),r5 ; r5 set to 0x8C13E410
	bra loc_8C10AF46
	mov r14,r6


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C10AEFC:
	#data 0x012c
loc_8C10AEFE:
	#data 0x0084
loc_8C10AF00:
	#data 0x0803
loc_8C10AF02:
	#data 0x0088
loc_8C10AF04:
	#data 0x00C8
	#align4

loc_8C10AF08:
	#data bank04.loc_8c044F12
loc_8C10AF0C:
	#data loc_8c10ABFc
loc_8C10AF10:
	#data 0x8C26A904
loc_8C10AF14:
	#data bank13.loc_8c13e4B0
loc_8C10AF18:
	#data bank12.loc_8c1294C8
loc_8C10AF1C:
	#data 0x47800000
loc_8C10AF20:
	#data bank13.loc_8c13e4C0
loc_8C10AF24:
	#data 0x43B40000
loc_8C10AF28:
	#data 0x3F000000
loc_8C10AF2C:
	#data 0x0000FFFf
loc_8C10AF30:
	#data bank16.loc_8c1662B8
loc_8C10AF34:
	#data bank13.loc_8c13e410
loc_8C10AF38:
	#data bank13.loc_8c13e404

;==============================================
loc_8C10AF3C:
	mov.w @r5,r2
	add 0x01,r6
	shll r2
	shll r2
	add r2,r5

loc_8C10AF46:
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/ge r0,r6
	bf loc_8C10AF3c
	mov.b @(0x06,r4),r0
	add 0x02,r5
	extu.b r0,r0
	shll r0
	mov.w @(r0,r5),r3
	mov.w @(loc_8C10B052,pc),r0 ; r0 set to 0xD0, r0 set to 0xD0
	mov.l r3,@(r0,r4)
	mov.b @(0x07,r4),r0
	extu.b r0,r0 ; r0 set to 0xD0, r0 set to 0xD0
	add 0xFF,r0 ; r0 set to 0xCF, r0 set to 0xCf
	shll r0 ; r0 set to 0x19E, r0 set to 0x19e
	add r0,r5
	mov.b @(0x06,r4),r0
	extu.b r0,r0 ; r0 set to 0x9E, r0 set to 0x9e
	shll r0 ; r0 set to 0x13C, r0 set to 0x13c
	add r0,r5
	mov.w @r5+,r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???
	shll2 r0
	fmov.s @(r0,r7),fr3
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	fmov.s fr3,@(r0,r4)
	mov.w @r5,r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???
	shll2 r0
	fmov.s @(r0,r7),fr3
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	fmov.s @(r0,r4),fr2
	mov.w @(loc_8C10B052,pc),r0 ; r0 set to 0xD0, r0 set to 0xD0
	fsub fr2,fr3
	mov.l @(r0,r4),r3
	lds r3,fpul
	float fpul,fr2
	fdiv fr2,fr3
	mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
	fmov.s fr3,@(r0,r4)
	mov 0x02,r0 ; r0 set to 0x02, r0 set to 0x02
	mov.b r0,@(0x05,r4)
	lds.l @r15+,pr
	bra loc_8C10AFC0
	mov.l @r15+,r14

loc_8C10AF9C:
	mov.b @(0x04,r4),r0
	mov 0x04,r1 ; r1 set to 0x04
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.l @(loc_8C10B054,pc),r3 ; r3 set to 0x8C1292D4
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov 0x06,r0 ; r0 set to 0x06
	mov.b @r1,r1
	jsr @r3
	extu.b r1,r1
	mov.b r0,@(0x04,r4)
	mov r14,r0 ; r0 ??? bc r14 is ???
	nop
	mov.b r0,@(0x05,r4)
	mov.b r0,@(0x06,r4)
	lds.l @r15+,pr
	bra loc_8C10AE90
	mov.l @r15+,r14

loc_8c10afc0:
	mova @(loc_8C10B058,pc),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8C10B064,pc),r2
	sts.l pr,@-r15
	fmov.s @r0,fr3
	mov 0x50,r0
	fmov.s @(r0,r14),fr2
	mova @(loc_8C10B05C,pc),r0
	fmov.s @r0,fr1
	mova @(loc_8C10B060,pc),r0
	fmul fr3,fr2
	fmov.s @r0,fr0
	mov 0x44,r0
	fdiv fr1,fr2
	fadd fr0,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r2,r3
	mov.l r3,@(r0,r14)
	bsr loc_8c10b002
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c10affc
	mov 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.b @(0x06,r14),r0
	add 0x01,r0
	mov.b r0,@(0x06,r14)

loc_8c10affc:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c10b002:
	mov.w @(0x1C,r4),r0
	mov.l @(loc_8C10B064,pc),r2
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	mov r0,r3
	lds r3,fpul
	mov 0x54,r0
	fmov.s @(r0,r4),fr2
	mova @(loc_8C10B058,pc),r0
	float fpul,fr3
	fmul fr3,fr2
	fmov.s @r0,fr3
	mova @(loc_8C10B05C,pc),r0
	fmov.s @r0,fr1
	mova @(loc_8C10B060,pc),r0
	fmov.s @r0,fr0
	mov 0x44,r0
	fmul fr3,fr2
	mov.l @(r0,r4),r1
	fdiv fr1,fr2
	fadd fr0,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r2,r3
	add r3,r1
	mov.w @(loc_8c10b052,pc),r3
	mov.l r1,@(r0,r4)
	add r4,r3
	mov.w @(0x1C,r4),r0
	mov.l @r3,r3
	cmp/gt r3,r0
	bf loc_8c10b04c
	mov 0x00,r0
	mov.w r0,@(0x1C,r4)
	rts
	mov 0x01,r0

loc_8c10b04c:
	mov 0x00,r0
	rts
	nop

;==============================================
loc_8c10b052:
	#data 0x00D0
	#align4

loc_8c10b054:
	#data bank12.loc_8C1292D4
loc_8C10B058:
	#data 0x47800000
loc_8C10B05C:
	#data 0x43B40000
loc_8C10B060:
	#data 0x3F000000
loc_8C10B064:
	#data 0x0000FFFF

;==============================================
loc_8C10B068:
	mov.l r14,@-r15
	mov 0x05,r5 ; r5 set to 0x05
	sts.l pr,@-r15
	mov.l @(loc_8C10B0E8,pc),r3 ; r3 set to 0x8C044F12
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C10B0D6
	mov r0,r14
	mov.l @(loc_8C10B0F0,pc),r1 ; r1 set to 0x8C26A904
	mov 0x01,r4 ; r4 set to 0x01
	mov.l @(loc_8C10B0EC,pc),r3 ; r3 set to 0x8C10AE7c
	mov.w @(loc_8C10B0E0,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov.l r3,@(0x10,r14)
	mov.l @r1,r2
	mov r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_8C10B0E2,pc),r0 ; r0 set to 0x84
	add 0x34,r1
	mov.l @r2,r3 ; r3 ??? bc r2 is ???
	mov.w @(loc_8C10B0E4,pc),r2 ; r2 set to 0x805
	mov.l @(0x04,r3),r3
	mov.l r3,@(r0,r14)
	add 0x48,r0 ; r0 set to 0xCc
	mov.l r2,@(r0,r14)
	mov.l @(loc_8C10B0F4,pc),r2 ; r2 set to 0x8C13E3Ec
	mov.l @(loc_8C10B0F8,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(loc_8C10B100,pc),r1 ; r1 set to 0x8C13E3Fc
	mova @(loc_8C10B0FC,pc),r0  ; r0 set to 0x8C10B0Fc
	fmov.s @r0,fr3 ; r3 ??
	mova @(loc_8C10B104,pc),r0  ; r0 set to 0x8C10B104
	fmov.s @r1,fr2 ; r2 ??
	fmov.s @r0,fr1 ; r1 ??
	mova @(loc_8C10B108,pc),r0  ; r0 set to 0x8C10B108
	fmul fr3,fr2
	fmov.s @r0,fr0 ; r0 ??
	mov.l @(loc_8C10B10C,pc),r1 ; r1 set to 0xFFFf
	mov 0x44,r0 ; r0 set to 0x44
	fdiv fr1,fr2
	fadd fr0,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r1,r3
	mov.l r3,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b r4,@(r0,r14)
	bsr loc_8C10ABA8
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C10ADEc
	mov.l @r15+,r14

loc_8C10B0D6:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C10B0DC:
	bra loc_8C10B068
	mov 0x01,r4


loc_8C10B0E0:
	#data 0x012c
loc_8C10B0E2:
	#data 0x0084
loc_8C10B0E4:
	#data 0x0805
	#align4

loc_8C10B0E8:
	#data bank04.loc_8c044F12
loc_8C10B0EC:
	#data loc_8c10AE7c
loc_8C10B0F0:
	#data 0x8C26A904
loc_8C10B0F4:
	#data bank13.loc_8c13e3Ec
loc_8C10B0F8:
	#data bank12.loc_8c1294C8
loc_8C10B0FC:
	#data 0x47800000
loc_8C10B100:
	#data bank13.loc_8c13e3Fc
loc_8C10B104:
	#data 0x43B40000
loc_8C10B108:
	#data 0x3F000000
loc_8C10B10C:
	#data 0x0000FFFf

;==============================================
loc_8C10B110:
	add 0xFC,r15
	mov r4,r3
	mov.l @(loc_8C10B220,pc),r1 ; r1 set to 0x8C1662C4
	mov.l r4,@r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C10B124:
	mov.l @(loc_8C10B22C,pc),r5 ; r5 set to 0x8C13E814
	mov.l @(loc_8C10B228,pc),r7 ; r7 set to 0x8C13E858
	mov.l @(loc_8C10B224,pc),r1 ; r1 set to 0x8C13E80c
	bra loc_8C10B138
	mov 0x00,r6

loc_8C10B12E:
	mov.w @r5,r2
	add 0x01,r6
	shll r2
	shll r2
	add r2,r5

loc_8C10B138:
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/ge r0,r6
	bf loc_8C10B12e
	mov.b @(0x07,r4),r0
	mov.b @r5,r2
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r0,r7
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	mov.b r2,@(r0,r4)
	mov.b @(r0,r4),r3
	mova @(loc_8C10B230,pc),r0  ; r0 set to 0x8C10B230, r0 set to 0x8C10B230
	fmov.s @r0,fr3
	mova @(loc_8C10B234,pc),r0  ; r0 set to 0x8C10B234, r0 set to 0x8C10B234
	extu.b r3,r3
	fmov.s @r0,fr1
	shll r3
	mov.l @(loc_8C10B23C,pc),r2 ; r2 set to 0xFFFF, r2 set to 0xFFFf
	add r3,r5
	mov.w @r5,r3
	mova @(loc_8C10B238,pc),r0  ; r0 set to 0x8C10B238, r0 set to 0x8C10B238
	fmov.s @r0,fr0 ; r0 ??, r0 ??
	mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48
	shll2 r3
	add r3,r1
	fmov.s @r1,fr2 ; r2 ??? bc r1 is ???, r2 ??? bc r1 is ???
	fmul fr3,fr2
	fdiv fr1,fr2
	fadd fr0,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r2,r3
	mov.l r3,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @r7,fr3
	mov 0x01,r5 ; r5 set to 0x01, r5 set to 0x01
	fmov.s fr3,@(r0,r4)
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	fmov.s @(r0,r7),fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s fr3,@(r0,r4)
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
	fmov.s @(r0,r7),fr3
	mov 0x3C,r0 ; r0 set to 0x3C, r0 set to 0x3c
	fmov.s fr3,@(r0,r4)
	mov r5,r0 ; r0 set to 0x01, r0 set to 0x01
	nop
	mov.b r0,@(0x05,r4)
	bra loc_8C10B1A4
	mov.b r0,@(0x06,r4)

loc_8C10B1A4:
	mov 0x21,r0 ; r0 set to 0x21
	mov.l @(loc_8C10B22C,pc),r5 ; r5 set to 0x8C13E814
	mov.b @(r0,r4),r3
	mov.b @(0x05,r4),r0
	mov.l @(loc_8C10B224,pc),r7 ; r7 set to 0x8C13E80c
	cmp/hi r0,r3
	bf loc_8C10B214
	bra loc_8C10B1C0
	mov 0x00,r6

loc_8C10B1B6:
	mov.w @r5,r3
	add 0x01,r6
	shll r3
	shll r3
	add r3,r5

loc_8C10B1C0:
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/ge r0,r6
	bf loc_8C10B1B6
	mov.b @(0x05,r4),r0
	extu.b r0,r0
	shll r0
	mov.w @(r0,r5),r3
	mov.w @(loc_8C10B21E,pc),r0 ; r0 set to 0xD0, r0 set to 0xD0
	mov.l r3,@(r0,r4)
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	mov.b @(r0,r4),r2
	mov.b @(0x05,r4),r0
	extu.b r2,r2
	extu.b r0,r0 ; r0 set to 0x21, r0 set to 0x21
	shll r2
	shll r0 ; r0 set to 0x42, r0 set to 0x42
	add r2,r5
	add r0,r5
	mov r5,r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???
	nop
	add 0xFE,r0
	mov.w @r0,r0
	shll2 r0
	fmov.s @(r0,r7),fr3
	mov 0x70,r0 ; r0 set to 0x70, r0 set to 0x70
	fmov.s fr3,@(r0,r4)
	add 0x60,r0 ; r0 set to 0xD0, r0 set to 0xD0
	mov.w @r5,r3
	shll2 r3
	add r3,r7
	mov.l @(r0,r4),r3
	fmov.s @r7,fr2
	mov 0x64,r0 ; r0 set to 0x64, r0 set to 0x64
	lds r3,fpul
	fsub fr3,fr2
	float fpul,fr3
	fdiv fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x02,r0 ; r0 set to 0x02, r0 set to 0x02
	bra loc_8C10B240
	mov.b r0,@(0x06,r4)

loc_8C10B214:
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x05,r4)
	mov 0x03,r0 ; r0 set to 0x03
	rts
	mov.b r0,@(0x06,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C10B21E:
	#data 0x00D0
	#align4

loc_8C10B220:
	#data bank16.loc_8c1662C4
loc_8C10B224:
	#data bank13.loc_8c13e80c
loc_8C10B228:
	#data bank13.loc_8c13e858
loc_8C10B22C:
	#data bank13.loc_8c13e814
loc_8C10B230:
	#data 0x47800000
loc_8C10B234:
	#data 0x43B40000
loc_8C10B238:
	#data 0x3F000000
loc_8C10B23C:
	#data 0x0000FFFf

;==============================================
loc_8c10b240:
	mova @(loc_8C10B394,pc),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8C10B3A0,pc),r2
	sts.l pr,@-r15
	fmov.s @r0,fr3
	mov 0x70,r0
	fmov.s @(r0,r14),fr2
	mova @(loc_8C10B398,pc),r0
	fmov.s @r0,fr1
	mova @(loc_8C10B39C,pc),r0
	fmul fr3,fr2
	fmov.s @r0,fr0
	mov 0x48,r0
	fdiv fr1,fr2
	fadd fr0,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r2,r3
	mov.l r3,@(r0,r14)
	bsr loc_8c10b282
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c10b27c
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x01,r0
	mov.b r0,@(0x06,r14)

loc_8c10b27c:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c10b282:
	mov.w @(0x1C,r4),r0
	mov.l @(loc_8C10B3A0,pc),r2
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	mov r0,r3
	lds r3,fpul
	mov 0x64,r0
	fmov.s @(r0,r4),fr2
	mova @(loc_8C10B394,pc),r0
	float fpul,fr3
	fmul fr3,fr2
	fmov.s @r0,fr3
	mova @(loc_8C10B398,pc),r0
	fmov.s @r0,fr1
	mova @(loc_8C10B39C,pc),r0
	fmov.s @r0,fr0
	mov 0x48,r0
	fmul fr3,fr2
	mov.l @(r0,r4),r1
	fdiv fr1,fr2
	fadd fr0,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r2,r3
	add r3,r1
	mov.w @(loc_8C10B38A,pc),r3
	mov.l r1,@(r0,r4)
	add r4,r3
	mov.w @(0x1C,r4),r0
	mov.l @r3,r3
	cmp/gt r0,r3
	bt loc_8c10b2cc
	mov 0x00,r0
	mov.w r0,@(0x1C,r4)
	rts
	mov 0x01,r0

;==============================================
loc_8c10b2cc:
	mov 0x00,r0
	rts
	nop

;==============================================
loc_8c10b2d2:
	mov.w @(0xB6,PC),r3
	sts.l pr,@-r15
	mov.w @(0x1E,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r4)
	add 0xFF,r0
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8c10b310
	mov 0x00,r5
	mov r5,r0
	nop
	mov.w r0,@(0x1E,r4)
	mov 0x04,r1
	mov.b r0,@(0x6,r4)
	add r4,r1
	mov.b @(0x4,r4),r0
	mov.l @(0xAC,PC),r2
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x03,r0
	mov.b @r1,r1
	jsr @r2
	extu.b r1,r1
	mov.b r0,@(0x4,r4)
	mov.b @(0x7,r4),r0
	add 0x01,r0
	mov.b r0,@(0x7,r4)
	mov.b @(0x7,r4),r0
	and 0x01,r0
	mov.b r0,@(0x7,r4)

loc_8c10b310:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c10b316:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x8C,PC),r3
	mov 0x05,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c10b36e
	mov r0,r4
	mov.w @(0x5C,PC),r0
	mov 0x01,r3
	mov.l @(0x7C,PC),r1
	mov.l @(0x78,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x5C,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0x28,r0
	mov.w @(0x44,PC),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(0x68,PC),r3
	mov.l @(0x60,PC),r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x36,PC),r3
	mov 0x00,r5
	mov.l @r15,r1
	mov.w @(0x32,PC),r0
	add r1,r3
	mov.l r3,@(r0,r4)
	mov r5,r0
	nop
	mov.b r0,@(0x4,r4)
	mov.b r0,@(0x5,r4)
	mov.b r0,@(0x6,r4)
	mov.b r0,@(0x7,r4)

loc_8c10b36e:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C10B376:
	add 0xFC,r15
	mov r4,r3
	mov.l @(loc_8C10B3BC,pc),r1 ; r1 set to 0x8C1662D4
	mov.l r4,@r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c10b38a:
	#data 0x00D0
loc_8c10b38c:
	#data 0x012c
loc_8c10b38e:
	#data 0x0809
loc_8c10b390:
	#data 0x0088
loc_8c10b392:
	#data 0x00C8
	#align4

loc_8c10b394:
	#data 0x47800000
loc_8c10b398:
	#data 0x43B40000
loc_8c10b39c:
	#data 0x3F000000
loc_8c10b3a0:
	#data 0x0000FFFf
loc_8C10B3A4:
	#data bank12.loc_8c1292D4
loc_8C10B3A8:
	#data bank04.loc_8c044F12
loc_8C10B3AC:
	#data loc_8c10B110
loc_8C10B3b0:
	#data 0x8C26A904
loc_8C10B3B4:
	#data bank13.loc_8c13e738
loc_8C10B3B8:
	#data bank12.loc_8c1294C8
loc_8C10B3BC:
	#data bank16.loc_8c1662D4

;==============================================
loc_8C10B3C0:
	mov.l @(loc_8C10B508,pc),r5 ; r5 set to 0x8C13E7B8
	mov.l @(loc_8C10B504,pc),r7 ; r7 set to 0x8C13E7F4
	mov.l @(loc_8C10B500,pc),r1 ; r1 set to 0x8C13E7Ac
	bra loc_8C10B3D4
	mov 0x00,r6

loc_8C10B3CA:
	mov.w @r5,r2
	add 0x01,r6
	shll r2
	shll r2
	add r2,r5

loc_8C10B3D4:
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/ge r0,r6
	bf loc_8C10B3Ca
	mov.b @(0x07,r4),r0
	mov.b @r5,r2
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r0,r7
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	mov.b r2,@(r0,r4)
	mov.b @(r0,r4),r3
	mova @(loc_8C10B50C,pc),r0  ; r0 set to 0x8C10B50C, r0 set to 0x8C10B50c
	fmov.s @r0,fr3
	mova @(loc_8C10B510,pc),r0  ; r0 set to 0x8C10B510, r0 set to 0x8C10B510
	extu.b r3,r3
	fmov.s @r0,fr1
	shll r3
	mov.l @(loc_8C10B518,pc),r2 ; r2 set to 0xFFFF, r2 set to 0xFFFf
	add r3,r5
	mov.w @r5,r3
	mova @(loc_8C10B514,pc),r0  ; r0 set to 0x8C10B514, r0 set to 0x8C10B514
	fmov.s @r0,fr0 ; r0 ??, r0 ??
	mov 0x44,r0 ; r0 set to 0x44, r0 set to 0x44
	shll2 r3
	add r3,r1
	fmov.s @r1,fr2 ; r2 ??? bc r1 is ???, r2 ??? bc r1 is ???
	fmul fr3,fr2
	fdiv fr1,fr2
	fadd fr0,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r2,r3
	mov.l r3,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @r7,fr3
	mov 0x01,r5 ; r5 set to 0x01, r5 set to 0x01
	fmov.s fr3,@(r0,r4)
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	fmov.s @(r0,r7),fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s fr3,@(r0,r4)
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
	fmov.s @(r0,r7),fr3
	mov 0x3C,r0 ; r0 set to 0x3C, r0 set to 0x3c
	fmov.s fr3,@(r0,r4)
	mov r5,r0 ; r0 set to 0x01, r0 set to 0x01
	nop
	mov.b r0,@(0x05,r4)
	bra loc_8C10B440
	mov.b r0,@(0x06,r4)

loc_8C10B440:
	mov 0x21,r3 ; r3 set to 0x21
	mov.b @(0x05,r4),r0
	add r4,r3 ; r3 ??? bc r4 is ???
	mov.l @(loc_8C10B508,pc),r5 ; r5 set to 0x8C13E7B8
	mov.b @r3,r3
	mov.l @(loc_8C10B500,pc),r7 ; r7 set to 0x8C13E7Ac
	cmp/hs r3,r0
	bt loc_8C10B4B2
	bra loc_8C10B45e
	mov 0x00,r6

loc_8C10B454:
	mov.w @r5,r2
	add 0x01,r6
	shll r2
	shll r2
	add r2,r5

loc_8C10B45E:
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/ge r0,r6
	bf loc_8C10B454
	mov.b @(0x05,r4),r0
	extu.b r0,r0
	shll r0
	mov.w @(r0,r5),r3
	mov.w @(loc_8C10B4FE,pc),r0 ; r0 set to 0xD0, r0 set to 0xD0
	mov.l r3,@(r0,r4)
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	mov.b @(r0,r4),r2
	mov.b @(0x05,r4),r0
	extu.b r2,r2
	extu.b r0,r0 ; r0 set to 0x21, r0 set to 0x21
	shll r2
	shll r0 ; r0 set to 0x42, r0 set to 0x42
	add r2,r5
	add r0,r5
	mov r5,r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???
	nop
	add 0xFE,r0
	mov.w @r0,r0
	shll2 r0
	fmov.s @(r0,r7),fr3
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr3,@(r0,r4)
	add 0x64,r0 ; r0 set to 0xD0, r0 set to 0xD0
	mov.w @r5,r3
	shll2 r3
	add r3,r7
	mov.l @(r0,r4),r3
	fmov.s @r7,fr2
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	lds r3,fpul
	fsub fr3,fr2
	float fpul,fr3
	fdiv fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x02,r0 ; r0 set to 0x02, r0 set to 0x02
	bra loc_8C10B4Bc
	mov.b r0,@(0x06,r4)

loc_8C10B4B2:
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x05,r4)
	mov 0x03,r0 ; r0 set to 0x03
	rts
	mov.b r0,@(0x06,r4)

;==============================================
loc_8c10b4bc:
	mova @(loc_8c10b50c,pc),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8c10b518,pc),r2
	sts.l pr,@-r15
	fmov.s @r0,fr3
	mov 0x6C,r0
	fmov.s @(r0,r14),fr2
	mova @(loc_8c10b510,pc),r0
	fmov.s @r0,fr1
	mova @(loc_8c10b514,pc),r0
	fmul fr3,fr2
	fmov.s @r0,fr0
	mov 0x44,r0
	fdiv fr1,fr2
	fadd fr0,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r2,r3
	mov.l r3,@(r0,r14)
	bsr loc_8c10b51c
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c10b4f8
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x01,r0
	mov.b r0,@(0x06,r14)

loc_8c10b4f8:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c10b4fe:
	#data 0x00D0
	#align4

loc_8c10b500:
	#data bank13.loc_8C13E7AC
loc_8c10b504:
	#data bank13.loc_8C13E7F4
loc_8c10b508:
	#data bank13.loc_8C13E7B8
loc_8c10b50c:
	#data 0x47800000
loc_8c10b510:
	#data 0x43B40000
loc_8c10b514:
	#data 0x3F000000
loc_8c10b518:
	#data 0x0000FFFF

;==============================================
loc_8c10b51c:
	mov.w @(0x1C,r4),r0
	mov.l @(loc_8C10B660,pc),r2
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	mov r0,r3
	lds r3,fpul
	mov 0x60,r0
	fmov.s @(r0,r4),fr2
	mova @(loc_8C10B654,pc),r0
	float fpul,fr3
	fmul fr3,fr2
	fmov.s @r0,fr3
	mova @(loc_8C10B658,pc),r0
	fmov.s @r0,fr1
	mova @(loc_8C10B65C,pc),r0
	fmov.s @r0,fr0
	mov 0x44,r0
	fmul fr3,fr2
	mov.l @(r0,r4),r1
	fdiv fr1,fr2
	fadd fr0,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r2,r3
	add r3,r1
	mov.w @(loc_8C10B64A,pc),r3
	mov.l r1,@(r0,r4)
	add r4,r3
	mov.w @(0x1C,r4),r0
	mov.l @r3,r3
	cmp/gt r0,r3
	bt loc_8c10b566
	mov 0x00,r0
	mov.w r0,@(0x1C,r4)
	rts
	mov 0x01,r0

;==============================================
loc_8c10b566:
	mov 0x00,r0
	rts
	nop

loc_8C10B56C:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C10B664,pc),r3 ; r3 set to 0x8C044F12
	mov 0x05,r5 ; r5 set to 0x05
	mov.l r4,@r15
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C10B5Bc
	mov r0,r4 ; r4 ??? bc r0 is ???
	mov.w @(loc_8C10B64C,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8C10B66C,pc),r1 ; r1 set to 0x8C26A904
	mov.l @(loc_8C10B668,pc),r2 ; r2 set to 0x8C10B376
	mov.b r3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3 ; r3 ??
	mov r4,r1 ; r1 ??? bc r4 is ???
	add 0x34,r1
	mov.l @r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(r0,r2),r3
	add 0x30,r0 ; r0 set to 0x84
	mov.w @(loc_8C10B64E,pc),r2 ; r2 set to 0x805
	mov.l r3,@(r0,r4)
	add 0x48,r0 ; r0 set to 0xCc
	mov.l r2,@(r0,r4)
	mov.l @(loc_8C10B674,pc),r3 ; r3 set to 0x8C1294C8
	mov.l @(loc_8C10B670,pc),r2 ; r2 set to 0x8C13E720
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C10B650,pc),r3 ; r3 set to 0x88
	mov.l @r15,r1
	mov.w @(loc_8C10B652,pc),r0 ; r0 set to 0xC8
	add r1,r3 ; r3 ??? bc r1 is ???
	mov.l r3,@(r0,r4)
	add 0x04,r15
	bra loc_8C10B316
	lds.l @r15+,pr

loc_8C10B5BC:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C10B5C4:
	add 0xFC,r15
	mov r4,r3
	mov.l @(loc_8C10B678,pc),r1 ; r1 set to 0x8C1662E4
	mov.l r4,@r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C10B5D8:
	mov.l @(loc_8C10B684,pc),r5 ; r5 set to 0x8C13E758
	mov.l @(loc_8C10B680,pc),r7 ; r7 set to 0x8C13E794
	mov.l @(loc_8C10B67C,pc),r1 ; r1 set to 0x8C13E750
	bra loc_8C10B5Ec
	mov 0x00,r6

loc_8C10B5E2:
	mov.w @r5,r2
	add 0x01,r6
	shll r2
	shll r2
	add r2,r5

loc_8C10B5EC:
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/ge r0,r6
	bf loc_8C10B5E2
	mov.b @(0x07,r4),r0
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r0,r7
	fmov.s @r7,fr3
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s fr3,@(r0,r4)
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
	fmov.s @(r0,r7),fr3
	mov 0x3C,r0 ; r0 set to 0x3C, r0 set to 0x3c
	fmov.s fr3,@(r0,r4)
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	mov.b @r5,r3
	mov.b r3,@(r0,r4)
	mov.b @(r0,r4),r2
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	extu.b r2,r2
	shll r2
	add r2,r5
	mov.w @r5,r3
	mov 0x01,r5 ; r5 set to 0x01, r5 set to 0x01
	shll2 r3
	add r3,r1
	fmov.s @r1,fr3
	fmov.s fr3,@(r0,r4)
	mov r5,r0 ; r0 set to 0x01, r0 set to 0x01
	nop
	mov.b r0,@(0x05,r4)
	bra loc_8C10B636
	mov.b r0,@(0x06,r4)

loc_8C10B636:
	mov 0x21,r3 ; r3 set to 0x21
	mov.b @(0x05,r4),r0
	add r4,r3 ; r3 ??? bc r4 is ???
	mov.l @(loc_8C10B684,pc),r5 ; r5 set to 0x8C13E758
	mov.b @r3,r3
	mov.l @(loc_8C10B67C,pc),r7 ; r7 set to 0x8C13E750
	cmp/hs r3,r0
	bt loc_8C10B6E6
	bra loc_8C10B692
	mov 0x00,r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10b64a:
	#data 0x00D0
loc_8C10B64C:
	#data 0x012c
loc_8C10B64E:
	#data 0x0805
loc_8C10B650:
	#data 0x0088
loc_8C10B652:
	#data 0x00C8
	#align4

loc_8c10b654:
	#data 0x47800000
loc_8c10b658:
	#data 0x43B40000
loc_8c10b65c:
	#data 0x3F000000
loc_8c10b660:
	#data 0x0000FFFf
loc_8C10B664:
	#data bank04.loc_8c044F12
loc_8C10B668:
	#data loc_8c10B376
loc_8C10B66C:
	#data 0x8C26A904
loc_8C10B670:
	#data bank13.loc_8c13e720
loc_8C10B674:
	#data bank12.loc_8c1294C8
loc_8C10B678:
	#data bank16.loc_8c1662E4
loc_8C10B67C:
	#data bank13.loc_8c13e750
loc_8C10B680:
	#data bank13.loc_8c13e794
loc_8C10B684:
	#data bank13.loc_8c13e758

;==============================================
loc_8C10B688:
	mov.w @r5,r2
	add 0x01,r6
	shll r2
	shll r2
	add r2,r5

loc_8C10B692:
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/ge r0,r6
	bf loc_8C10B688
	mov.b @(0x05,r4),r0
	extu.b r0,r0
	shll r0
	mov.w @(r0,r5),r3
	mov.w @(loc_8C10B7DA,pc),r0 ; r0 set to 0xD0, r0 set to 0xD0
	mov.l r3,@(r0,r4)
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	mov.b @(r0,r4),r2
	mov.b @(0x05,r4),r0
	extu.b r2,r2
	extu.b r0,r0 ; r0 set to 0x21, r0 set to 0x21
	shll r2
	shll r0 ; r0 set to 0x42, r0 set to 0x42
	add r2,r5
	add r0,r5
	mov r5,r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???
	nop
	add 0xFE,r0
	mov.w @r0,r0
	shll2 r0
	fmov.s @(r0,r7),fr3
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr3,@(r0,r4)
	add 0x64,r0 ; r0 set to 0xD0, r0 set to 0xD0
	mov.w @r5,r3
	shll2 r3
	add r3,r7
	mov.l @(r0,r4),r3
	fmov.s @r7,fr2
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	lds r3,fpul
	fsub fr3,fr2
	float fpul,fr3
	fdiv fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x02,r0 ; r0 set to 0x02, r0 set to 0x02
	bra loc_8C10B6F0
	mov.b r0,@(0x06,r4)

loc_8C10B6E6:
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x05,r4)
	mov 0x03,r0 ; r0 set to 0x03
	rts
	mov.b r0,@(0x06,r4)

;==============================================
loc_8c10b6f0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c10b70e
	mov r4,r14
	extu.b r0,r0
	tst r0,r0
	bt loc_8c10b708
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x01,r0
	mov.b r0,@(0x06,r14)

loc_8c10b708:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c10b70e:
	mov.w @(0x1E,r4),r0
	mov 0x60,r1
	add r4,r1
	mov.w @(loc_8c10b7da,pc),r3
	add 0x01,r0
	mov.w r0,@(0x1E,r4)
	mov 0x38,r0
	fmov.s @(r0,r4),fr2
	add r4,r3
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.l @r3,r3
	mov.w @(0x1E,r4),r0
	cmp/gt r0,r3
	bt loc_8c10b736
	mov 0x00,r0
	mov.w r0,@(0x1E,r4)
	rts
	mov 0x01,r0

loc_8c10b736:
	mov 0x00,r0
	rts
	nop

;==============================================
loc_8c10b73c:
	mov.w @(0x9C,PC),r3
	sts.l pr,@-r15
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	add 0xFF,r0
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8c10b78a
	mov 0x00,r5
	mov r5,r0
	nop
	mov.w r0,@(0x1C,r4)
	mov 0x04,r1
	mov.b r0,@(0x6,r4)
	add r4,r1
	mov.b @(0x4,r4),r0
	mov.l @(0x84,PC),r2
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x03,r0
	mov.b @r1,r1
	jsr @r2
	extu.b r1,r1
	mov.b r0,@(0x4,r4)
	mov.b @(0x7,r4),r0
	add 0x01,r0
	mov.b r0,@(0x7,r4)
	mov.b @(0x7,r4),r0
	and 0x01,r0
	mov.b r0,@(0x7,r4)
	mov.w @(0x60,PC),r0
	mov.l @(0x18,r4),r2
	mov.l @(r0,r2),r1
	tst r1,r1
	bt loc_8c10b78a
	mov r5,r0
	nop
	mov.b r0,@(0x7,r4)

loc_8c10b78a:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C10B790:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C10B7E8,pc),r3 ; r3 set to 0x8C044F12
	mov 0x05,r5 ; r5 set to 0x05
	mov.l r4,@r15
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C10B7Fc
	mov r0,r4 ; r4 ??? bc r0 is ???
	mov.w @(loc_8C10B7DC,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8C10B7F0,pc),r1 ; r1 set to 0x8C26A904
	mov.l @(loc_8C10B7EC,pc),r2 ; r2 set to 0x8C10B5C4
	mov.b r3,@(r0,r4)
	mov 0x60,r0 ; r0 set to 0x60
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3 ; r3 ??
	mov r4,r1 ; r1 ??? bc r4 is ???
	add 0x34,r1
	mov.l @r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(r0,r2),r3
	add 0x24,r0 ; r0 set to 0x84
	mov.w @(loc_8C10B7E0,pc),r2 ; r2 set to 0x801
	mov.l r3,@(r0,r4)
	add 0x48,r0 ; r0 set to 0xCc
	mov.l r2,@(r0,r4)
	mov.l @(loc_8C10B7F8,pc),r3 ; r3 set to 0x8C1294C8
	mov.l @(loc_8C10B7F4,pc),r2 ; r2 set to 0x8C13E744
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @r15,r1
	mov.l r1,@(0x18,r4)
	add 0x04,r15
	bra loc_8C10B56c
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C10B7DA:
	#data 0x00D0
loc_8C10B7DC:
	#data 0x012c
loc_8C10B7De:
	#data 0x00D8
loc_8C10B7E0:
	#data 0x0801
	#align4

loc_8C10B7E4:
	#data bank12.loc_8c1292D4
loc_8C10B7E8:
	#data bank04.loc_8c044F12
loc_8C10B7EC:
	#data loc_8c10B5C4
loc_8C10B7F0:
	#data 0x8C26A904
loc_8C10B7F4:
	#data bank13.loc_8c13e744
loc_8C10B7F8:
	#data bank12.loc_8c1294C8

;==============================================
loc_8C10B7FC:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C10B804:
	bra loc_8C10B790
	nop

;==============================================
loc_8C10B808:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x13C,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop
	mov.w @(0x122,PC),r0
	mov.w @(0x122,PC),r2
	mov.l @(r0,r14),r3
	add 0x01,r3
	cmp/gt r2,r3
	mov.l r3,@(r0,r14)
	bf loc_8c10b850
	mov.w @(0x118,PC),r0
	mov.l @(0x120,PC),r3
	mov.l @(r0,r14),r1
	add 0x01,r1
	mov.l r1,@(r0,r14)
	mov 0x0C,r0
	mov.w @(0x10C,PC),r1
	add r14,r1
	jsr @r3
	mov.l @r1,r1
	mov.w @(0x104,PC),r3
	mov 0x00,r4
	add r14,r3
	mov.l r0,@r3
	mov.w @(0xF8,PC),r0
	mov.l r4,@(r0,r14)
	mov r4,r0
	nop
	mov.b r0,@(0x4,r14)

loc_8C10B850:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C10B856:
	mov.w @(loc_8C10B946,pc),r0 ; r0 set to 0xD0
	mov.l @(loc_8C10B954,pc),r5 ; r5 set to 0x8C13E8E8
	mov.l @(r0,r4),r3
	add 0x5C,r0 ; r0 set to 0x12c
	mov r3,r2
	shll2 r3
	add r2,r3
	shll r3
	add r3,r5 ; r5 ??? bc r3 is ???
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r4),r2
	extu.b r2,r2
	shll r2
	add r2,r5
	mov.w @r5,r3 ; r3 ??? bc r5 is ???
	tst r3,r3
	bt loc_8C10B888
	mov.w @(loc_8C10B948,pc),r0 ; r0 set to 0xD4
	mov.w @r5,r3
	mov.l r3,@(r0,r4)
	mov 0x01,r0 ; r0 set to 0x01
	bra loc_8C10B88c
	mov.b r0,@(0x04,r4)

loc_8C10B888:
	rts
	nop

;==============================================
loc_8C10B88C:
	mov.w @(loc_8C10B948,pc),r0 ; r0 set to 0xD4
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(r0,r14),r3
	add 0xFF,r3
	tst r3,r3
	bf/s loc_8C10B8C0
	mov.l r3,@(r0,r14)
	mov.l @(loc_8C10B958,pc),r3 ; r3 set to 0x8C03319e
	mov 0x02,r0 ; r0 set to 0x02
	jsr @r3
	mov.b r0,@(0x04,r14)
	mov 0x05,r1 ; r1 set to 0x05
	mov.l @(loc_8C10B950,pc),r2 ; r2 set to 0x8C1292D4
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.b r0,@(0x05,r14)
	mov.b @r1,r1
	mov 0x03,r0 ; r0 set to 0x03
	jsr @r2
	extu.b r1,r1
	mov r14,r4
	mov.b r0,@(0x05,r14)
	lds.l @r15+,pr
	bra loc_8C10B8C6
	mov.l @r15+,r14

loc_8C10B8C0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c10b8c6:
	mov.w @(loc_8c10b94a,pc),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8c10b95c,pc),r1
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.b @(0x05,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c10b8ea
	mov 0x03,r0
	mov.b r0,@(0x04,r14)

loc_8c10b8ea:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8C10B8F0:
	mov.w @(loc_8C10B94A,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8C10B8F8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8C10B960,pc),r1 ; r1 set to 0x8C166310
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop
	extu.b r0,r0
	tst r0,r0
	bt loc_8C10B91e
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x06,r14)
	mov 0x01,r0 ; r0 set to 0x01
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C10B91E:
	mov 0x00,r0 ; r0 set to 0x00
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C10B926:
	mov 0x74,r0 ; r0 set to 0x74
	fldi1 fr3
	sts.l pr,@-r15
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C10B964,pc),r0  ; r0 set to 0x8C10B964
	fmov.s @r0,fr3
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s fr3,@(r0,r4)
	mov 0x01,r0 ; r0 set to 0x01
	bsr loc_8C10B968
	mov.b r0,@(0x06,r4)
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;==============================================
loc_8C10B942:
	#data 0x00D8
loc_8C10B944:
	#data 0x0514
loc_8C10B946:
	#data 0x00D0
loc_8C10B948:
	#data 0x00D4
loc_8C10B94A:
	#data 0x012c
	#align4

loc_8C10B94C:
	#data bank16.loc_8c1662F4
loc_8C10B950:
	#data bank12.loc_8c1292D4
loc_8C10B954:
	#data bank13.loc_8c13e8E8
loc_8C10B958:
	#data bank03.loc_8c03319e
loc_8C10B95C:
	#data bank16.loc_8c166304
loc_8C10B960:
	#data bank16.loc_8c166310
loc_8C10B964:
	#data 0x3F4CCCCd

;==============================================
loc_8C10B968:
	mov.w @(0x1E,r4),r0
	mov 0x08,r3 ; r3 set to 0x08
	mov 0x00,r5 ; r5 set to 0x00
	cmp/gt r3,r0
	bf/s loc_8C10B984
	fldi1 fr4
	mov r5,r0 ; r0 set to 0x00
	nop
	mov.w r0,@(0x1C,r4)
	mov.w r0,@(0x1E,r4)
	mov 0x74,r0 ; r0 set to 0x74
	fmov.s fr4,@(r0,r4)
	rts
	mov 0x01,r0

loc_8c10b984:
	mov.w @(0x1C,r4),r0
	tst r0,r0
	bf loc_8c10b99e
	mov.l @(loc_8C10BAA0,pc),r2
	mov.w @(0x1E,r4),r0
	mov.l @r2,r3
	shll2 r0
	mov.l @r3,r3
	add r3,r0
	add 0x6C,r0
	mov.l @r0,r1
	mov.w @(loc_8C10BA9C,pc),r0
	mov.l r1,@(r0,r4)

loc_8c10b99e:
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mova @(loc_8C10BAA4,pc),r0
	fmov.s @r0,fr5
	mov 0x74,r0
	fmov.s @(r0,r4),fr3
	fsub fr5,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x50,r0
	fmov.s @(r0,r4),fr2
	fcmp/gt fr2,fr4
	bf loc_8c10b9c6
	fmov.s @(r0,r4),fr3
	fadd fr5,fr3
	fmov fr3,fr2
	fcmp/gt fr2,fr4
	bt/s loc_8c10b9c6
	fmov.s fr3,@(r0,r4)
	fmov.s fr4,@(r0,r4)

loc_8c10b9c6:
	mov.w @(0x1C,r4),r0
	mov 0x07,r3
	cmp/gt r3,r0
	bf loc_8c10b9da
	mov r5,r0
	nop
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1E,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r4)

loc_8c10b9da:
	mov 0x00,r0
	rts
	nop

loc_8C10B9E0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8C10BAA8,pc),r1 ; r1 set to 0x8C166318
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop
	extu.b r0,r0
	tst r0,r0
	bt loc_8C10BA06
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x06,r14)
	mov 0x01,r0 ; r0 set to 0x01
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C10BA06:
	mov 0x00,r0 ; r0 set to 0x00
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C10BA0E:
	mov 0x74,r0 ; r0 set to 0x74
	fldi1 fr4
	sts.l pr,@-r15
	fmov.s fr4,@(r0,r4)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s fr4,@(r0,r4)
	mov 0x01,r0 ; r0 set to 0x01
	mov.b r0,@(0x06,r4)
	mov 0x00,r0 ; r0 set to 0x00
	bsr loc_8C10BA2a
	mov.b r0,@(0x07,r4)
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;==============================================
loc_8C10BA2A:
	mov.w @(0x1E,r4),r0
	mov 0x07,r3 ; r3 set to 0x07
	cmp/gt r3,r0
	bf/s loc_8C10BA56
	mov 0x00,r5 ; r5 set to 0x00
	mov r5,r0 ; r0 set to 0x00
	nop
	mov.w r0,@(0x1C,r4)
	mov 0x13,r2 ; r2 set to 0x13
	mov.w r0,@(0x1E,r4)
	mov.b @(0x07,r4),r0
	add 0x01,r0 ; r0 set to 0x01
	mov.b r0,@(0x07,r4)
	mov.b @(0x07,r4),r0
	extu.b r0,r0 ; r0 set to 0x01
	cmp/gt r2,r0
	bf loc_8C10BA56
	mov r5,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x06,r4)
	rts
	mov 0x01,r0

;==============================================
loc_8c10ba56:
	mov.w @(0x1C,r4),r0
	tst r0,r0
	bf loc_8c10ba70
	mov.l @(loc_8C10BAA0,pc),r2
	mov.w @(0x1E,r4),r0
	mov.l @r2,r3
	shll2 r0
	mov.l @r3,r3
	add r3,r0
	add 0x6C,r0
	mov.l @r0,r1
	mov.w @(loc_8C10BA9C,pc),r0
	mov.l r1,@(r0,r4)

loc_8c10ba70:
	mov.w @(0x1C,r4),r0
	mov.l @(loc_8C10BAAC,pc),r1
	add 0x01,r0
	lds r1,fpul
	mov.w r0,@(0x1C,r4)
	mov 0x74,r0
	fmov.s @(r0,r4),fr2
	fsts fpul,fr3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	cmp/pl r0
	bf loc_8c10ba96
	mov r5,r0
	nop
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1E,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r4)

loc_8c10ba96:
	mov 0x00,r0
	rts
	nop

;==============================================
loc_8C10BA9C:
	#data 0x0084
	#align4

loc_8C10BAA0:
	#data 0x8C26A904
loc_8c10baa4:
	#data 0x3C4CCCCD
loc_8c10baa8:
	#data bank16.loc_8c166318
loc_8C10BAAC:
	#data 0x3BCCCCCD

;==============================================
loc_8C10BAB0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8C10BBC8,pc),r1 ; r1 set to 0x8C166320
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop
	extu.b r0,r0
	tst r0,r0
	bt loc_8C10BAD6
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x06,r14)
	mov 0x01,r0 ; r0 set to 0x01
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C10BAD6:
	mov 0x00,r0 ; r0 set to 0x00
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C10BADE:
	mov 0x74,r0 ; r0 set to 0x74
	fldi1 fr4
	sts.l pr,@-r15
	fmov.s fr4,@(r0,r4)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s fr4,@(r0,r4)
	mov 0x01,r0 ; r0 set to 0x01
	mov.b r0,@(0x06,r4)
	mov 0x00,r0 ; r0 set to 0x00
	bsr loc_8C10BAFa
	mov.b r0,@(0x07,r4)
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;==============================================
	loc_8C10BAFA:
	sts.l pr,@-r15
	mov.w @(0x1E,r4),r0
	mov 0x07,r3 ; r3 set to 0x07
	cmp/gt r3,r0
	bf/s loc_8C10BB18
	mov 0x00,r5 ; r5 set to 0x00
	mov r5,r0 ; r0 set to 0x00
	nop
	mov.w r0,@(0x1C,r4)
	mov.w r0,@(0x1E,r4)
	mov 0x02,r0 ; r0 set to 0x02
	bsr loc_8C10BB5e
	mov.b r0,@(0x06,r4)
	bra loc_8C10BB58
	nop

loc_8c10bb18:
	mov.w @(0x1C,r4),r0
	tst r0,r0
	bf loc_8c10bb32
	mov.l @(loc_8C10BBCC,pc),r2
	mov.w @(0x1E,r4),r0
	mov.l @r2,r3
	shll2 r0
	mov.l @r3,r3
	add r3,r0
	add 0x6C,r0
	mov.l @r0,r1
	mov.w @(loc_8C10BBC4,pc),r0
	mov.l r1,@(r0,r4)

loc_8c10bb32:
	mov.l @(loc_8C10BBD0,pc),r1
	mov 0x74,r0
	fmov.s @(r0,r4),fr2
	lds r1,fpul
	fsts fpul,fr3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pl r0
	bf loc_8c10bb58
	mov r5,r0
	nop
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1E,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r4)

loc_8C10BB58:
	lds.l @r15+,pr
	rts
	mov 0x00,r0

loc_8C10BB5E:
	sts.l pr,@-r15
	mov.w @(0x1E,r4),r0
	mov 0x07,r3 ; r3 set to 0x07
	cmp/gt r3,r0
	bf/s loc_8C10BB7e
	mov 0x00,r5 ; r5 set to 0x00
	mov 0x3C,r0 ; r0 set to 0x3c
	mov.w r0,@(0x1C,r4)
	mov r5,r0 ; r0 set to 0x00
	nop
	mov.w r0,@(0x1E,r4)
	mov 0x03,r0 ; r0 set to 0x03
	bsr loc_8C10BBD4
	mov.b r0,@(0x06,r4)
	bra loc_8C10BBBe
	nop

loc_8c10bb7e:
	mov.w @(0x1C,r4),r0
	tst r0,r0
	bf loc_8c10bb98
	mov.l @(loc_8C10BBCC,pc),r2
	mov.w @(0x1E,r4),r0
	mov.l @r2,r3
	shll2 r0
	mov.l @r3,r3
	add r3,r0
	add 0x6C,r0
	mov.l @r0,r1
	mov.w @(loc_8C10BBC4,pc),r0
	mov.l r1,@(r0,r4)

loc_8c10bb98:
	mov.l @(loc_8C10BBD0,pc),r1
	mov 0x74,r0
	fmov.s @(r0,r4),fr2
	lds r1,fpul
	fsts fpul,fr3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/pl r0
	bf loc_8c10bbbe
	mov r5,r0
	nop
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1E,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r4)

loc_8C10BBBE:
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10bbc4:
	#data 0x0084
	#align4

loc_8C10BBC8:
	#data bank16.loc_8c166320
loc_8c10bbcc:
	#data 0x8C26A904
loc_8c10bbd0:
	#data 0x3D800000

;==============================================
loc_8C10BBD4:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8C10BC02
	mov.b @(0x07,r4),r0
	mov 0x05,r3 ; r3 set to 0x05
	add 0x01,r0
	mov.b r0,@(0x07,r4)
	extu.b r0,r0
	cmp/gt r3,r0
	bf loc_8C10BBF4
	rts
	mov 0x01,r0

loc_8c10bbf4:
	mov 0x74,r0
	fldi1 fr3
	fmov.s fr3,@(r0,r4)
	mov 0x01,r0
	mov.b r0,@(0x06,r4)
	mov 0x00,r0
	mov.w r0,@(0x1C,r4)

loc_8C10BC02:
	mov 0x00,r0 ; r0 set to 0x00
	rts
	nop

;==============================================
loc_8c10bc08:
	mov.l r14,@-r15
	mova @(loc_8C10BD0C,pc),r0
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	mov 0x01,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov 0x05,r10
	mov.l r9,@-r15
	mov.l r8,@-r15
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	fmov.s fr13,@-r15
	fmov.s fr12,@-r15
	sts.l pr,@-r15
	fmov.s @r0,fr12
	mova @(loc_8C10BD14,pc),r0
	fmov.s @r0,fr13
	mova @(loc_8C10BD18,pc),r0
	mov.l @(loc_8c10bd04,pc),r8
	mov.l @(loc_8C10BD10,pc),r14
	mov.w @(loc_8C10BD00,pc),r11
	fmov.s @r0,fr14
	mov.l @(loc_8c10bd08,pc),r9
	fldi1 fr15

loc_8c10bc3c:
	mov 0x05,r5
	mov 0x01,r6
	jsr @r9
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c10bce2
	mov r0,r4
	mov.l @(loc_8C10BD20,pc),r1
	mov r13,r6
	mov.l @(loc_8c10bd1c,pc),r3
	shll r6
	mov.w @(loc_8C10BD02,pc),r0
	mov.b r12,@(r0,r4)
	mov 0x6C,r0
	mov.l r3,@(0x10,r4)
	mov.l @r1,r2
	mov r4,r1
	add 0x34,r1
	mov.l @r2,r3
	mov.l @(loc_8c10bd24,pc),r2
	mov.l @(r0,r3),r3
	add 0x18,r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov r13,r3
	add r3,r6
	mov.l r11,@(r0,r4)
	mov 0x23,r0
	mov.l @(loc_8c10bd28,pc),r3
	shll2 r6
	mov.b r13,@(r0,r4)
	add r6,r2
	jsr @r3
	mov 0x0C,r0
	mov r6,r5
	add r8,r5
	fmov.s @r5,fr3
	mov 0x04,r0
	mov r4,r2
	add 0x40,r2
	fmul fr13,fr3
	fdiv fr14,fr3
	fadd fr12,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r14,r3
	mov.l r3,@r2
	fmov.s @(r0,r5),fr3
	mov 0x44,r0
	fmul fr13,fr3
	fdiv fr14,fr3
	fadd fr12,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r14,r3
	mov.l r3,@(r0,r4)
	mov 0x08,r0
	fmov.s @(r0,r5),fr3
	mov 0x48,r0
	fmul fr13,fr3
	fdiv fr14,fr3
	fadd fr12,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r14,r3
	mov.l r3,@(r0,r4)
	mov 0x50,r0
	fmov.s fr15,@(r0,r4)
	mov 0x54,r0
	fmov.s fr15,@(r0,r4)
	mov 0x58,r0
	fmov.s fr15,@(r0,r4)
	mov 0x74,r0
	fmov.s fr15,@(r0,r4)
	mov 0x78,r0
	fmov.s fr15,@(r0,r4)
	mov 0x7C,r0
	add 0x01,r13
	fmov.s fr15,@(r0,r4)
	cmp/ge r10,r13
	add 0x04,r0
	bf/s loc_8c10bc3c
	fmov.s fr15,@(r0,r4)

loc_8c10bce2:
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

loc_8C10BCFC:
	bra loc_8C10BC08
	mov 0x1B,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10bd00:
	#data 0x0C39
loc_8c10bd02:
	#data 0x012C
	#align4

loc_8C10BD04:
	#data bank13.loc_8c13e8Ac
loc_8C10BD08:
	#data bank04.loc_8c044F12
loc_8c10bd0c:
	#data 0x3F000000
loc_8c10bd10:
	#data 0x0000FFFf
loc_8c10bd14:
	#data 0x47800000
loc_8c10bd18:
	#data 0x43B40000
loc_8C10BD1C:
	#data loc_8c10B808
loc_8c10bd20:
	#data 0x8C26A904
loc_8C10BD24:
	#data bank13.loc_8c13e870
loc_8C10BD28:
	#data bank12.loc_8c1294C8

;==============================================
loc_8C10BD2C:
	mov.w @(0xE0,PC),r0
	mov.l @(0xE8,PC),r5
	fmov @(r0,r5),fr3
	mov 0x34,r0
	fmov @(r0,r4),fr2
	fcmp/gt fr2,fr3
	bt loc_8c10bd46
	mov.w @(0xD4,PC),r0
	mov.w @(r0,r4),r2
	tst r2,r2
	bf loc_8c10bd5e
	bra loc_8c10bd5a
	nop

loc_8C10BD46:
	mov.w @(0xCA,PC),r0
	fmov @(r0,r5),fr3
	mov 0x34,r0
	fmov @(r0,r4),fr2
	fcmp/gt fr3,fr2
	bt loc_8c10bd5e
	mov.w @(0xBC,PC),r0
	mov.w @(r0,r4),r2
	tst r2,r2
	bt loc_8c10bd5e

loc_8C10BD5A:
	rts
	mov 0x01,r0

;==============================================
loc_8C10BD5E:
	mov 0x00,r0
	rts
	nop

;==============================================
loc_8C10BD64:
	add 0xFC,r15
	mov r4,r3
	mov.l @(loc_8C10BE1C,pc),r1 ; r1 set to 0x8C166330
	mov.l r4,@r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C10BD78:
	mov.b @(0x5,r4),r0
	mov.l @(0xA4,PC),r5
	extu.b r0,r0
	mov.l @(0xB0,PC),r2
	shll2 r0
	fmov @(r0,r5),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r4)
	mova @(0x98,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov @(r0,r4),fr2
	mova @(0x94,PC),r0
	fmov @r0,fr1
	mova @(0x94,PC),r0
	fmul fr3,fr2
	fmov @r0,fr0
	mov 0x44,r0
	fdiv fr1,fr2
	fadd fr0,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r2,r3
	mov.l r3,@(r0,r4)
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov.b @(0x5,r4),r0
	and 0x01,r0
	mov.b r0,@(0x5,r4)
	mov.b @(0x5,r4),r0
	extu.b r0,r0
	shll2 r0
	fmov @(r0,r5),fr3
	mov 0x6C,r0
	mov 0x09,r3
	fmov fr3,@(r0,r4)
	mov 0x60,r0
	fmov @(r0,r4),fr3
	mov 0x6C,r0
	fmov @(r0,r4),fr2
	mova @(0x68,PC),r0
	fsub fr3,fr2
	fmov @r0,fr3
	mov 0x54,r0
	fdiv fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x1E,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r4)
	mov.w @(0x1E,r4),r0
	cmp/gt r3,r0
	bf loc_8c10be0a
	mov 0x00,r0
	mov.l @(0x50,PC),r5
	mov.w r0,@(0x1E,r4)
	mov.b @(0x6,r4),r0
	mov.l @(0x50,PC),r1
	add 0x01,r0
	mov.b r0,@(0x6,r4)
	mov.b @(0x6,r4),r0
	and 0x03,r0
	mov.b r0,@(0x6,r4)
	mov.b @(0x6,r4),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r5),r2
	mov.l @r1,r0
	shll2 r2
	mov.l @r0,r0
	mov.l @(r0,r2),r2
	mov.w @(0xC,PC),r0
	mov.l r2,@(r0,r4)

loc_8C10BE0A:
	mov 0x01,r0
	bra loc_8c10be40
	mov.b r0,@(0x4,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10be10:
	#data 0x009c
loc_8c10be12:
	#data 0x0130
loc_8c10be14:
	#data 0x0098
loc_8c10be16:
	#data 0x0084
	#align4

loc_8c10be18:
	#data 0x8C26A518
loc_8C10BE1C:
	#data bank16.loc_8c166330
loc_8C10BE20:
	#data bank13.loc_8c13e988
loc_8C10BE24:
	#data 0x47800000
loc_8C10BE28:
	#data 0x43B40000
loc_8C10BE2c:
	#data 0x3F000000
loc_8C10BE30:
	#data 0x0000FFFf
loc_8C10BE34:
	#data 0x43480000
loc_8C10BE38:
	#data bank13.loc_8c13e990
loc_8C10BE3c:
	#data 0x8C26A904

;==============================================
loc_8C10BE40:
	mov.w @(0x1C,r4),r0
	mov.l @(0xD0,PC),r5
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mova @(0xCC,PC),r0
	fmov @r0,fr6
	mova @(0xCC,PC),r0
	fmov @r0,fr5
	mova @(0xCC,PC),r0
	fmov @r0,fr4
	mov 0x60,r0
	fmov @(r0,r4),fr3
	mov 0x44,r0
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r5,r3
	mov.l r3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	mov r0,r3
	lds r3,fpul
	mov 0x54,r0
	fmov @(r0,r4),fr2
	float fpul,fr3
	fmul fr3,fr2
	fmul fr6,fr2
	fdiv fr5,fr2
	fadd fr4,fr2
	ftrc fr2,fpul
	sts fpul,r3
	mov 0x44,r0
	mov.l @(r0,r4),r2
	and r5,r3
	add r3,r2
	mov.w @(0x7E,PC),r3
	mov.l r2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	cmp/gt r3,r0
	bf loc_8c10be9c
	mov 0x00,r5
	mov r5,r0
	nop
	mov.w r0,@(0x1C,r4)
	mov.b r0,@(0x4,r4)

loc_8C10BE9C:
	rts
	nop

;==============================================
loc_8C10BEA0:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x7C,PC),r3
	mov 0x05,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c10beee
	mov r0,r4
	mov.w @(0x52,PC),r0
	mov 0x01,r3
	mov.l @(0x70,PC),r1
	mov.l @(0x68,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(0x44,PC),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0xF4,r0
	mov.w @(0x3C,PC),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(0x54,PC),r2
	mov.l @(0x58,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x2E,PC),r3
	mov.l @r15,r1
	mov.w @(0x22,PC),r0
	add r1,r3
	mov.l r3,@(r0,r4)
	mov.l @r15,r1
	mov.l r1,@(0x18,r4)

loc_8C10BEEE:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C10BEF6:
	add 0xFC,r15
	mov r4,r3
	mov.l @(loc_8C10BF38,pc),r1 ; r1 set to 0x8C166338
	mov.l r4,@r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10bf0a:
	#data 0x00C8
loc_8c10bf0c:
	#data 0x012c
loc_8c10bf0e:
	#data 0x0090
loc_8c10bf10:
	#data 0x0805
loc_8c10bf12:
	#data 0x0088
	#align4

loc_8c10bf14:
	#data 0x0000FFFf
loc_8c10bf18:
	#data 0x47800000
loc_8c10bf1c:
	#data 0x43B40000
loc_8c10bf20:
	#data 0x3F000000
loc_8C10BF24:
	#data bank04.loc_8c044F12
loc_8C10BF28:
	#data loc_8c10BD64
loc_8C10BF2C:
	#data 0x8C26A904
loc_8C10BF30:
	#data bank13.loc_8c13e97c
loc_8C10BF34:
	#data bank12.loc_8c1294C8
loc_8C10BF38:
	#data bank16.loc_8c166338

;==============================================
loc_8C10BF3C:
	mov.b @(0x5,r4),r0
	mov.l @(0x110,PC),r5
	extu.b r0,r0
	mov.l @(0x11C,PC),r2
	shll2 r0
	fmov @(r0,r5),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r4)
	mova @(0x104,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov @(r0,r4),fr2
	mova @(0x100,PC),r0
	fmov @r0,fr1
	mova @(0x100,PC),r0
	fmul fr3,fr2
	fmov @r0,fr0
	mov 0x44,r0
	fdiv fr1,fr2
	fadd fr0,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r2,r3
	mov.l r3,@(r0,r4)
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov.b @(0x5,r4),r0
	and 0x01,r0
	mov.b r0,@(0x5,r4)
	mov.b @(0x5,r4),r0
	extu.b r0,r0
	shll2 r0
	fmov @(r0,r5),fr3
	mov 0x6C,r0
	mov 0x09,r3
	fmov fr3,@(r0,r4)
	mov 0x60,r0
	fmov @(r0,r4),fr3
	mov 0x6C,r0
	fmov @(r0,r4),fr2
	mova @(0xD4,PC),r0
	fsub fr3,fr2
	fmov @r0,fr3
	mov 0x54,r0
	fdiv fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x1E,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r4)
	mov.w @(0x1E,r4),r0
	cmp/gt r3,r0
	bf loc_8c10bfce
	mov 0x00,r0
	mov.l @(0xBC,PC),r5
	mov.w r0,@(0x1E,r4)
	mov.b @(0x6,r4),r0
	mov.l @(0xBC,PC),r1
	add 0x01,r0
	mov.b r0,@(0x6,r4)
	mov.b @(0x6,r4),r0
	and 0x03,r0
	mov.b r0,@(0x6,r4)
	mov.b @(0x6,r4),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r5),r2
	mov.l @r1,r0
	shll2 r2
	mov.l @r0,r0
	mov.l @(r0,r2),r2
	mov.w @(0x7E,PC),r0
	mov.l r2,@(r0,r4)

loc_8C10BFCE:
	mov 0x01,r0
	bra loc_8c10bfd4
	mov.b r0,@(0x4,r4)

loc_8C10BFD4:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x18,r14),r0
	mov.b @(0x4,r0),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c10bfea
	mov.l @(0x88,PC),r2
	jsr @r2
	mov r14,r4

loc_8C10BFEA:
	mov.w @(0x1C,r14),r0
	mov.l @(0x70,PC),r4
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mova @(0x60,PC),r0
	fmov @r0,fr6
	mova @(0x60,PC),r0
	fmov @r0,fr5
	mova @(0x60,PC),r0
	fmov @r0,fr4
	mov 0x60,r0
	fmov @(r0,r14),fr3
	mov 0x44,r0
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r4,r3
	mov.l r3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	mov r0,r3
	lds r3,fpul
	mov 0x54,r0
	fmov @(r0,r14),fr2
	float fpul,fr3
	fmul fr3,fr2
	fmul fr6,fr2
	fdiv fr5,fr2
	fadd fr4,fr2
	ftrc fr2,fpul
	sts fpul,r3
	mov 0x44,r0
	mov.l @(r0,r14),r2
	and r4,r3
	add r3,r2
	mov.w @(0x18,PC),r3
	mov.l r2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	cmp/gt r3,r0
	bf loc_8c10c046
	mov 0x00,r4
	mov r4,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov.b r0,@(0x4,r14)

loc_8C10C046:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10c04c:
	#data 0x0084
loc_8c10c04e:
	#data 0x00C8
	#align4

loc_8C10C050:
	#data bank13.loc_8c13e988
loc_8C10C054:
	#data 0x47800000
loc_8C10C058:
	#data 0x43B40000
loc_8C10C05c:
	#data 0x3F000000
loc_8C10C060:
	#data 0x0000FFFf
loc_8C10C064:
	#data 0x43480000
loc_8C10C068:
	#data bank13.loc_8c13e990
loc_8C10C06c:
	#data 0x8C26A904
loc_8C10C070:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C10C074:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x128,PC),r3
	mov 0x05,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c10c0c2
	mov r0,r4
	mov.w @(0x108,PC),r0
	mov 0x01,r3
	mov.l @(0x11C,PC),r1
	mov.l @(0x114,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(0xFA,PC),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0xF4,r0
	mov.w @(0xF2,PC),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(0x100,PC),r2
	mov.l @(0x104,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.w @(0xE4,PC),r3
	mov.l @r15,r1
	mov.w @(0xE2,PC),r0
	add r1,r3
	mov.l r3,@(r0,r4)
	mov.l @r15,r1
	mov.l r1,@(0x18,r4)

loc_8C10C0C2:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C10C0CA:
	add 0xFC,r15
	mov r4,r3
	mov.l @(loc_8C10C1B8,pc),r1 ; r1 set to 0x8C166340
	mov.l r4,@r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C10C0DE:
	mov r4,r3
	mov.l @(loc_8C10C1BC,pc),r1 ; r1 set to 0x8C166350
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C10C0F0:
	mov 0x06,r1 ; r1 set to 0x06
	mov.l @(loc_8C10C1C0,pc),r3 ; r3 set to 0x8C1292D4
	add r4,r1 ; r1 ??? bc r4 is ???
	sts.l pr,@-r15
	mov.b @(0x05,r4),r0
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	mov.b @(0x06,r4),r0
	add 0x01,r0
	mov.b r0,@(0x06,r4)
	mov 0x07,r0 ; r0 set to 0x07
	mov.b @r1,r1
	jsr @r3
	extu.b r1,r1
	lds.l @r15+,pr
	rts
	mov.b r0,@(0x06,r4)

;==============================================
loc_8C10C112:
	mov r4,r3
	mov.l @(loc_8C10C1C4,pc),r1 ; r1 set to 0x8C166358
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C10C124:
	mov r4,r3
	mov.l @(loc_8C10C1C8,pc),r1 ; r1 set to 0x8C166374
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C10C136:
	mov.l r14,@-r15
	mov 0x5C,r0 ; r0 set to 0x5c
	fldi0 fr4
	mov r4,r14
	sts.l pr,@-r15
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	mov.l @(loc_8C10C1CC,pc),r3 ; r3 set to 0x8C03319e
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	jsr @r3
	fmov.s fr4,@(r0,r14)
	mov.l @(loc_8C10C1C0,pc),r2 ; r2 set to 0x8C1292D4
	mov r0,r1 ; r1 set to 0x6c
	jsr @r2
	mov 0x5A,r0 ; r0 set to 0x5a
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	add 0x0A,r0 ; r0 set to 0x64
	mov.w r0,@(0x1C,r14)
	mov.b @(0x07,r14),r0
	add 0x01,r0 ; r0 set to 0x65
	mov.b r0,@(0x07,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C10C16E:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1E,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(loc_8C10C1A0,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r2
	tst r2,r2
	bt/s loc_8C10C188
	mov 0x44,r0 ; r0 set to 0x44
	bra loc_8C10C18a
	mov 0x00,r3

loc_8C10C188:
	mov.l @(loc_8C10C1D0,pc),r3 ; r3 set to 0x8000

loc_8C10C18A:
	mov.l r3,@(r0,r14)
	mov.w @(0x1E,r14),r0
	cmp/pz r0
	bf loc_8C10C1D4
	bra loc_8C10C1De
	and 0x07,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C10C196:
	#data 0x012c
loc_8C10C198:
	#data 0x0090
loc_8C10C19a:
	#data 0x0805
loc_8C10C19c:
	#data 0x0088
loc_8C10C19e:
	#data 0x00C8
loc_8C10C1A0:
	#data 0x0130
	#align4

loc_8C10C1A4:
	#data bank04.loc_8c044F12
loc_8C10C1A8:
	#data loc_8c10BEF6
loc_8C10C1Ac:
	#data 0x8C26A904
loc_8C10C1B0:
	#data bank13.loc_8c13e97c
loc_8C10C1B4:
	#data bank12.loc_8c1294C8
loc_8C10C1B8:
	#data bank16.loc_8c166340
loc_8C10C1BC:
	#data bank16.loc_8c166350
loc_8C10C1C0:
	#data bank12.loc_8c1292D4
loc_8C10C1C4:
	#data bank16.loc_8c166358
loc_8C10C1C8:
	#data bank16.loc_8c166374
loc_8C10C1CC:
	#data bank03.loc_8c03319e
loc_8C10C1D0:
	#data 0x00008000

;==============================================
loc_8c10c1d4:
	not r0,r0
	add 0x01,r0
	and 0x07,r0
	not r0,r0
	add 0x01,r0

loc_8c10c1de:
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c10c1f0
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov 0x01,r3
	xor r3,r2
	mov.b r2,@(r0,r14)

loc_8c10c1f0:
	mov 0x20,r0
	mov.b @(r0,r14),r0
	tst r0,r0
	bt loc_8c10c1fe
	mov.w @(loc_8C10C2E2,pc),r1
	bra loc_8c10c200
	nop

loc_8c10c1fe:
	mov.w @(loc_8C10C2E4,pc),r1

loc_8c10c200:
	mov 0x44,r0
	mov.l @(r0,r14),r2
	add r1,r2
	mov.l r2,@(r0,r14)
	bsr loc_8c10ca14
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c10c22a
	mov 0x5C,r0
	fldi0 fr4
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0
	fmov.s fr4,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c10c22a:
	bsr loc_8c10c958
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c10c254
	bsr loc_8c10c81e
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c10c254
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c10c254
	mov 0x00,r4
	mov r4,r0
	nop
	mov.b r0,@(0x07,r14)
	mov.b r0,@(0x05,r14)

loc_8c10c254:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8C10C25A:
	mov r4,r3
	mov.l @(loc_8C10C2E8,pc),r1 ; r1 set to 0x8C16637c
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C10C26C:
	mova @(loc_8C10C2EC,pc),r0  ; r0 init to 0x8C10C2Ec
	fmov.s @r0,fr3
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr3,@(r0,r4)
	mov.b @(0x07,r4),r0
	add 0x01,r0 ; r0 set to 0x69
	rts
	mov.b r0,@(0x07,r4)

;==============================================
loc_8C10C27C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r8,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	bsr loc_8c10ca14
	fldi0 fr15
	extu.b r0,r0
	tst r0,r0
	bf loc_8c10c29a
	bsr loc_8c10c81e
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c10c2ac

loc_8C10C29A:
	mov 0x5C,r0
	fmov fr15,@(r0,r14)
	mov 0x60,r0
	fmov fr15,@(r0,r14)
	mov 0x68,r0
	fmov fr15,@(r0,r14)
	mov 0x6C,r0
	bra loc_8c10c334
	fmov fr15,@(r0,r14)

loc_8C10C2AC:
	mov.w @(0x36,PC),r0
	mov 0x5C,r8
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c10c2c0
	add r14,r8
	mov 0x68,r1
	add r14,r1
	bra loc_8c10c2c8
	fmov @r1,fr3

loc_8C10C2C0:
	mov 0x68,r2
	add r14,r2
	fmov @r2,fr3
	fneg fr3

loc_8C10C2C8:
	fmov @r8,fr2
	fadd fr3,fr2
	fmov fr2,@r8
	mov 0x34,r8
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c10c2f0
	add r14,r8
	mov 0x5C,r1
	add r14,r1
	fmov @r1,fr3
	bra loc_8c10c2f6
	fneg fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10c2e2:
	#data 0x05B0
loc_8c10c2e4:
	#data 0xFA50
loc_8c10c2e6:
	#data 0x0130
	#align4

loc_8C10C2E8:
	#data bank16.loc_8c16637c
loc_8C10C2EC:
	#data 0xBE4CCCCd

;==============================================
loc_8C10C2F0:
	mov 0x5C,r2
	add r14,r2
	fmov @r2,fr3

loc_8C10C2F6:
	fmov @r8,fr2
	mov 0x5C,r0
	fadd fr3,fr2
	fldi0 fr3
	fmov fr2,@r8
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bf loc_8c10c31a
	bsr loc_8c10c958
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c10c334
	bsr loc_8c10bd2c
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c10c334

loc_8C10C31A:
	mov 0x5C,r0
	fmov fr15,@(r0,r14)
	mov 0x60,r0
	fmov fr15,@(r0,r14)
	mov 0x68,r0
	fmov fr15,@(r0,r14)
	mov 0x6C,r0
	mov 0x00,r4
	fmov fr15,@(r0,r14)
	mov r4,r0
	nop
	mov.b r0,@(0x7,r14)
	mov.b r0,@(0x5,r14)

loc_8C10C334:
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

;==============================================
loc_8C10C33E:
	mov r4,r3
	mov.l @(loc_8C10C400,pc),r1 ; r1 set to 0x8C166384
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C10C350:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C10C404,pc),r3 ; r3 set to 0x8C03319e
	jsr @r3
	mov r4,r14
	mov r0,r1
	mov.l @(loc_8C10C408,pc),r2 ; r2 set to 0x8C1292D4
	mov.w @(loc_8C10C3FA,pc),r0 ; r0 set to 0x96
	jsr @r2
	nop
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	add 0x0A,r0 ; r0 set to 0xA0
	mov.w r0,@(0x1C,r14)
	mova @(loc_8C10C40C,pc),r0  ; r0 set to 0x8C10C40c
	fmov.s @r0,fr3 ; r3 ??
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr3,@(r0,r14)
	mov.b @(0x07,r14),r0
	add 0x01,r0 ; r0 set to 0x5d
	mov.b r0,@(0x07,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C10C380:
	mov.l r14,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	bsr loc_8C10CA14
	mov r4,r14
	extu.b r0,r0
	tst r0,r0
	bt loc_8C10C3A4
	mov 0x5C,r0 ; r0 set to 0x5c
	fldi0 fr4
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	bra loc_8C10C46c
	fmov.s fr4,@(r0,r14)

loc_8C10C3A4:
	bsr loc_8C10C958
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8C10C46c
	bsr loc_8C10C81e
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8C10C46c
	mov.w @(0x1E,r14),r0
	mov 0x34,r8 ; r8 set to 0x34
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(loc_8C10C3FC,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_8C10C3D4
	add r14,r8 ; r8 ??? bc r14 is ???
	mov 0x5C,r1 ; r1 set to 0x5c
	add r14,r1 ; r1 ??? bc r14 is ???
	fmov.s @r1,fr3
	bra loc_8C10C3Da
	fneg fr3

loc_8C10C3D4:
	mov 0x5C,r2 ; r2 set to 0x5c
	add r14,r2 ; r2 ??? bc r14 is ???
	fmov.s @r2,fr3

loc_8C10C3DA:
	fmov.s @r8,fr2
	fadd fr3,fr2
	fmov.s fr2,@r8
	mov.w @(r0,r14),r2
	tst r2,r2
	bt/s loc_8C10C3Ec
	mov 0x44,r0 ; r0 set to 0x44, r0 set to 0x44
	bra loc_8C10C3Ee
	mov 0x00,r3

loc_8C10C3EC:
	mov.l @(loc_8C10C410,pc),r3 ; r3 set to 0x8000

loc_8C10C3EE:
	mov.l r3,@(r0,r14)
	mov.w @(0x1E,r14),r0
	cmp/pz r0
	bf loc_8C10C414
	bra loc_8C10C41e
	and 0x07,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C10C3FA:
	#data 0x0096
loc_8C10C3FC:
	#data 0x0130
	#align4

loc_8C10C400:
	#data bank16.loc_8c166384
loc_8C10C404:
	#data bank03.loc_8c03319e
loc_8C10C408:
	#data bank12.loc_8c1292D4
loc_8C10C40C:
	#data 0x40400000
loc_8C10C410:
	#data 0x00008000

;==============================================
loc_8c10c414:
	not r0,r0
	add 0x01,r0
	and 0x07,r0
	not r0,r0
	add 0x01,r0

loc_8c10c41e:
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c10c430
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov 0x01,r3
	xor r3,r2
	mov.b r2,@(r0,r14)

loc_8c10c430:
	mov 0x20,r0
	mov.b @(r0,r14),r0
	tst r0,r0
	bt loc_8c10c43e
	mov.w @(loc_8C10C520,pc),r1
	bra loc_8c10c440
	nop

loc_8c10c43e:
	mov.w @(loc_8C10C522,pc),r1

loc_8c10c440:
	mov 0x44,r0
	mov.l @(r0,r14),r2
	add r1,r2
	mov.l r2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bt loc_8c10c45e
	bsr loc_8c10bd2c
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c10c46c

loc_8c10c45e:
	mov 0x00,r4
	mov r4,r0
	nop
	mov.b r0,@(0x07,r14)
	mov.b r0,@(0x05,r14)
	mov 0x48,r0
	mov.l r4,@(r0,r14)

loc_8C10C46C:
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

;==============================================
loc_8C10C474:
	mov r4,r3
	mov.l @(loc_8C10C528,pc),r1 ; r1 set to 0x8C16638c
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C10C486:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C10C52C,pc),r3 ; r3 set to 0x8C03319e
	jsr @r3
	mov r4,r14
	mov.l @(loc_8C10C530,pc),r2 ; r2 set to 0x8C1292D4
	mov r0,r1
	jsr @r2
	mov 0x05,r0 ; r0 set to 0x05
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	add 0x14,r0 ; r0 set to 0x19
	mov.w r0,@(0x1C,r14)
	mova @(loc_8C10C534,pc),r0  ; r0 set to 0x8C10C534
	fmov.s @r0,fr3 ; r3 ??
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr3,@(r0,r14)
	mov.b @(0x07,r14),r0
	add 0x01,r0 ; r0 set to 0x5d
	mov.b r0,@(0x07,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C10C4B4:
	mov.l r14,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	bsr loc_8c10ca14
	mov r4,r14
	extu.b r0,r0
	tst r0,r0
	bf loc_8c10c4d8
	bsr loc_8c10c958
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c10c5b2
	bsr loc_8c10c81e
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c10c4ec

loc_8C10C4D8:
	mov 0x5C,r0
	fldi0 fr4
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	bra loc_8c10c5b2
	fmov fr4,@(r0,r14)

loc_8C10C4EC:
	mov.w @(0x1E,r14),r0
	mov 0x34,r8
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x2C,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c10c508
	add r14,r8
	mov 0x5C,r1
	add r14,r1
	fmov @r1,fr3
	bra loc_8c10c50e
	fneg fr3

loc_8C10C508:
	mov 0x5C,r2
	add r14,r2
	fmov @r2,fr3

loc_8C10C50E:
	fmov @r8,fr2
	fadd fr3,fr2
	fmov fr2,@r8
	mov.w @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c10c538
	mov 0x44,r0
	bra loc_8c10c53a
	mov 0x00,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10c520:
	#data 0x0889
loc_8c10c522:
	#data 0xF777
loc_8c10c524:
	#data 0x0130
	#align4

loc_8C10C528:
	#data bank16.loc_8c16638c
loc_8C10C52C:
	#data bank03.loc_8c03319e
loc_8C10C530:
	#data bank12.loc_8c1292D4
loc_8C10C534:
	#data 0x40C00000

;==============================================
loc_8C10C538:
	mov.l @(0x104,PC),r3

loc_8C10C53A:
	mov.l r3,@(r0,r14)
	mov.w @(0x1E,r14),r0
	cmp/pz r0
	bf loc_8c10c546
	bra loc_8c10c550
	and 0x03,r0

loc_8C10C546:
	not r0,r0
	add 0x01,r0
	and 0x03,r0
	not r0,r0
	add 0x01,r0

loc_8C10C550:
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c10c562
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov 0x01,r3
	xor r3,r2
	mov.b r2,@(r0,r14)

loc_8C10C562:
	mov 0x20,r0
	mov.b @(r0,r14),r0
	tst r0,r0
	bt loc_8c10c570
	mov.w @(0xC2,PC),r1
	bra loc_8c10c572
	nop

loc_8C10C570:
	mov.w @(0xBE,PC),r1

loc_8C10C572:
	mov 0x44,r0
	mov.l @(r0,r14),r2
	add r1,r2
	mov.l r2,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r1
	tst r1,r1
	bt.s loc_8c10c58a
	mov 0x48,r0
	mov.w @(0xAC,PC),r3
	bra loc_8c10c58c
	nop

loc_8C10C58A:
	mov.w @(0xA8,PC),r3

loc_8C10C58C:
	mov.l r3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bt loc_8c10c5a4
	bsr loc_8c10bd2c
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c10c5b2

loc_8C10C5A4:
	mov 0x48,r0
	mov 0x00,r4
	mov.l r4,@(r0,r14)
	mov r4,r0
	nop
	mov.b r0,@(0x7,r14)
	mov.b r0,@(0x5,r14)

loc_8C10C5B2:
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

;==============================================
loc_8C10C5BA:
	mov r4,r3
	mov.l @(loc_8C10C644,pc),r1 ; r1 set to 0x8C166394
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C10C5CC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C10C648,pc),r3 ; r3 set to 0x8C03319e
	jsr @r3
	mov r4,r14
	cmp/pz r0
	bf loc_8C10C5De
	bra loc_8C10C5E8
	and 0x01,r0

loc_8C10C5DE:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C10C5E8:
	mov.w r0,@(0x1E,r14)
	mov.w @(loc_8C10C638,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r14),r2
	tst r2,r2
	bt/s loc_8C10C5F8
	mov 0x44,r0 ; r0 set to 0x44, r0 set to 0x44
	bra loc_8C10C5Fa
	mov 0x00,r3

loc_8C10C5F8:
	mov.l @(loc_8C10C640,pc),r3 ; r3 set to 0x8000

loc_8C10C5FA:
	mov.l r3,@(r0,r14)
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x0F,r0 ; r0 set to 0x0F, r0 set to 0x0f
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C10C60C:
	mov.w @(0x1E,r4),r0
	tst r0,r0
	bt loc_8C10C618
	mov.w @(loc_8C10C63A,pc),r3 ; r3 set to 0x889
	bra loc_8C10C61a
	nop

loc_8C10C618:
	mov.w @(loc_8C10C63C,pc),r3 ; r3 set to 0xF777

loc_8C10C61A:
	mov 0x44,r0 ; r0 set to 0x44, r0 set to 0x44
	mov.l @(r0,r4),r1
	add r3,r1
	mov.l r1,@(r0,r4)
	mov.w @(0x1C,r4),r0
	tst r0,r0
	bt loc_8C10C64c
	mov.w @(0x1C,r4),r0
	add 0xFF,r0 ; r0 set to 0x43, r0 set to 0x43
	bra loc_8C10C660
	mov.w r0,@(0x1C,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C10C630:
	#data 0x0CCd
loc_8C10C632:
	#data 0xF333
loc_8C10C634:
	#data 0x0AAb
loc_8C10C636:
	#data 0xF555
loc_8C10C638:
	#data 0x0130
loc_8C10C63A:
	#data 0x0889
loc_8C10C63C:
	#data 0xF777
	#align4

loc_8C10C640:
	#data 0x00008000
loc_8C10C644:
	#data bank16.loc_8c166394
loc_8C10C648:
	#data bank03.loc_8c03319e

;==============================================
loc_8C10C64C:
	mov.w @(loc_8C10C754,pc),r0 ; r0 set to 0x130
	mov 0x01,r3 ; r3 set to 0x01
	mov 0x00,r5 ; r5 set to 0x00
	mov.w @(r0,r4),r2
	xor r3,r2
	mov.w r2,@(r0,r4)
	mov r5,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x07,r4)
	mov.b r0,@(0x05,r4)

loc_8C10C660:
	rts
	nop

;==============================================
loc_8C10C664:
	mov r4,r3
	mov.l @(loc_8C10C760,pc),r1 ; r1 set to 0x8C16639c
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C10C676:
	mov 0x5C,r0 ; r0 set to 0x5c
	fldi0 fr4
	fmov.s fr4,@(r0,r4)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r4)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r4)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r4)
	mov 0x00,r0 ; r0 set to 0x00
	mov.w r0,@(0x1E,r4)
	mov.w @(loc_8C10C754,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r4),r2
	tst r2,r2
	bt/s loc_8C10C69a
	mov 0x44,r0 ; r0 set to 0x44
	bra loc_8C10C69c
	mov 0x00,r3

loc_8C10C69A:
	mov.l @(loc_8C10C764,pc),r3 ; r3 set to 0x8000

loc_8C10C69C:
	mov.l r3,@(r0,r4)
	mov.b @(0x07,r4),r0
	add 0x01,r0
	mov.b r0,@(0x07,r4)
	mov 0x0A,r0 ; r0 set to 0x0A, r0 set to 0x0a
	rts
	mov.w r0,@(0x1C,r4)

;==============================================
loc_8C10C6AA:
	mov.w @(0x1C,r4),r0
	tst r0,r0
	bt loc_8C10C6Ce
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1E,r4),r0
	tst r0,r0
	bt loc_8C10C6C2
	mov.w @(loc_8C10C756,pc),r3 ; r3 set to 0x444
	bra loc_8C10C6C4
	nop

loc_8C10C6C2:
	mov.w @(loc_8C10C758,pc),r3 ; r3 set to 0xFBBc

loc_8C10C6C4:
	mov 0x44,r0 ; r0 set to 0x44, r0 set to 0x44
	mov.l @(r0,r4),r1
	add r3,r1
	bra loc_8C10C6D8
	mov.l r1,@(r0,r4)

loc_8C10C6CE:
	mov.b @(0x07,r4),r0
	add 0x01,r0
	mov.b r0,@(0x07,r4)
	mov 0x5A,r0 ; r0 set to 0x5a
	mov.w r0,@(0x1C,r4)

loc_8C10C6D8:
	rts
	nop

;==============================================
loc_8C10C6DC:
	mov.w @(0x1C,r4),r0
	cmp/pz r0
	bf loc_8C10C6E6
	bra loc_8C10C6F0
	and 0x07,r0

loc_8c10c6e6:
	not r0,r0
	add 0x01,r0
	and 0x07,r0
	not r0,r0
	add 0x01,r0

loc_8c10c6f0:
	tst r0,r0
	bf loc_8c10c6fe
	mov 0x20,r0
	mov.b @(r0,r4),r2
	mov 0x01,r3
	xor r3,r2
	mov.b r2,@(r0,r4)

loc_8c10c6fe:
	mov.w @(loc_8c10c754,pc),r0
	mov.w @(r0,r4),r1
	tst r1,r1
	bt loc_8c10c71a
	mov.w @(0x1E,r4),r0
	tst r0,r0
	bt loc_8c10c712
	mov.w @(loc_8C10C75A,pc),r1
	bra loc_8c10c714
	nop

loc_8c10c712:
	mov.w @(loc_8C10C75C,pc),r1

loc_8c10c714:
	mov 0x44,r0
	bra loc_8c10c72c
	mov.l r1,@(r0,r4)

loc_8c10c71a:
	mov.w @(0x1E,r4),r0
	tst r0,r0
	bt loc_8c10c726
	mov.w @(loc_8C10C75C,pc),r2
	bra loc_8c10c728
	nop

loc_8c10c726:
	mov.w @(loc_8C10C75A,pc),r2

loc_8c10c728:
	mov 0x44,r0
	mov.l r2,@(r0,r4)

loc_8c10c72c:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c10c744
	mov.b @(0x07,r4),r0
	add 0x01,r0
	mov.b r0,@(0x07,r4)
	mov 0x0A,r0
	rts
	mov.w r0,@(0x1C,r4)

;==============================================
loc_8c10c744:
	mov 0x20,r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bt/s loc_8c10c768
	mov 0x44,r0
	mov.w @(loc_8C10C75E,pc),r3
	bra loc_8c10c76a
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10c754:
	#data 0x0130
loc_8c10c756:
	#data 0x0444
loc_8c10c758:
	#data 0xFBBC
loc_8C10C75A:
	#data 0x4000
loc_8C10C75C:
	#data 0xC000
loc_8C10C75E:
	#data 0x016C
	#align4

loc_8c10c760:
	#data bank16.loc_8c16639C
loc_8c10c764:
	#data 0x00008000

;==============================================
loc_8c10c768:
	mov.w @(loc_8C10C89C,pc),r3

loc_8c10c76a:
	mov.l @(r0,r4),r1
	add r3,r1
	mov.l r1,@(r0,r4)
	rts
	nop

loc_8C10C774:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8C10C788
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x07,r4)
	rts
	mov.b r0,@(0x05,r4)

;==============================================
loc_8C10C788:
	mov.w @(0x1E,r4),r0
	tst r0,r0
	bt loc_8C10C794
	mov.w @(loc_8C10C89E,pc),r3 ; r3 set to 0xFBBc
	bra loc_8C10C796
	nop

loc_8C10C794:
	mov.w @(loc_8C10C8A0,pc),r3 ; r3 set to 0x444

loc_8C10C796:
	mov 0x44,r0 ; r0 set to 0x44, r0 set to 0x44
	mov.l @(r0,r4),r1
	add r3,r1
	mov.l r1,@(r0,r4)
	rts
	nop

;==============================================
loc_8C10C7A2:
	mov r4,r3
	mov.l @(loc_8C10C8A4,pc),r1 ; r1 set to 0x8C1663Ac
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C10C7B4:
	mov.b @(0x07,r4),r0
	add 0x01,r0
	mov.b r0,@(0x07,r4)
	mova @(loc_8C10C8A8,pc),r0  ; r0 set to 0x8C10C8A8
	fmov.s @r0,fr3
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr3,@(r0,r4)
	mov 0x6C,r0 ; r0 set to 0x6c
	fldi1 fr3
	fneg fr3
	rts
	fmov.s fr3,@(r0,r4)

;==============================================
loc_8C10C7CC:
	mov 0x23,r0
	mov.l @(0xDC,PC),r5
	mov 0x6C,r1
	mov.b @(r0,r4),r3
	mov 0x60,r0
	add r4,r1
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	extu.b r3,r3
	mov r3,r2
	shll r3
	fadd fr3,fr2
	add r2,r3
	shll2 r3
	add r3,r5
	fmov fr2,@(r0,r4)
	mov 0x38,r0
	fmov fr2,fr3
	fmov fr3,@(r0,r4)
	mov 0x04,r0
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fcmp/gt fr3,fr2
	bt loc_8c10c81a
	mov 0x60,r0
	fldi0 fr4
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	fmov fr4,@(r0,r4)
	mov 0x04,r0
	fmov @(r0,r5),fr3
	mov 0x38,r0
	mov 0x00,r5
	fmov fr3,@(r0,r4)
	mov r5,r0
	nop
	mov.b r0,@(0x7,r4)
	mov.b r0,@(0x5,r4)

loc_8C10C81A:
	rts
	nop

;==============================================
loc_8c10c81e:
	mov.b @(0x04,r4),r0
	tst r0,r0
	bf loc_8c10c85c
	mov.l @(loc_8C10C8B0,pc),r6
	mova @(loc_8C10C8B4,pc),r0
	fmov.s @r0,fr4
	mov 0x34,r0
	mov.l @r6,r5
	fmov.s @(r0,r4),fr3
	fmov.s @(r0,r5),fr2
	fsub fr3,fr2
	fabs fr2
	fcmp/gt fr4,fr2
	bf/s loc_8c10c848
	mov.l @(0x0C,r6),r6
	fmov.s @(r0,r6),fr2
	fmov.s @(r0,r4),fr3
	fsub fr3,fr2
	fabs fr2
	fcmp/gt fr4,fr2
	bt loc_8c10c85c

loc_8c10c848:
	mov 0x01,r6
	mov r6,r0
	nop
	mov.b r0,@(0x04,r4)
	mov 0x00,r0
	mov.b r0,@(0x05,r4)
	mov.b r0,@(0x06,r4)
	mov.b r0,@(0x07,r4)
	rts
	mov r6,r0

loc_8c10c85c:
	mov 0x00,r0
	rts
	nop

;==============================================
loc_8C10C862:
	mov r4,r3
	mov.l @(loc_8C10C8B8,pc),r1 ; r1 set to 0x8C1663B4
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C10C874:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.b @(0x06,r14),r0
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.b @(0x06,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8C10C8D6
	mov.l @(loc_8C10C8BC,pc),r3 ; r3 set to 0x8C03319e
	jsr @r3
	nop
	cmp/pz r0
	bf loc_8C10C8C0
	bra loc_8C10C8Ca
	and 0x01,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10c89c:
	#data 0xFE94
loc_8C10C89E:
	#data 0xFBBc
loc_8C10C8A0:
	#data 0x0444
	#align4

loc_8C10C8A4:
	#data bank16.loc_8c1663Ac
loc_8C10C8A8:
	#data 0x41F00000
loc_8C10C8AC:
	#data bank13.loc_8c13e958
loc_8c10c8b0:
	#data 0x8C289608
loc_8c10c8b4:
	#data 0x42480000
loc_8C10C8B8:
	#data bank16.loc_8c1663B4
loc_8C10C8BC:
	#data bank03.loc_8c03319e

;==============================================
loc_8C10C8C0:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C10C8CA:
	tst r0,r0
	bt loc_8C10C8D2
	bra loc_8C10C8D4
	mov 0x01,r0

loc_8c10c8d2:
	mov 0x02,r0

loc_8c10c8d4:
	mov.b r0,@(0x06,r14)

loc_8C10C8D6:
	mov.b @(0x06,r14),r0
	mov 0x04,r3 ; r3 set to 0x04
	extu.b r0,r0
	cmp/ge r3,r0
	bf loc_8C10C8F2
	mov 0x00,r0 ; r0 set to 0x00
	mov r14,r4
	mov.b r0,@(0x04,r14)
	mov.b r0,@(0x05,r14)
	mov.b r0,@(0x06,r14)
	mov.b r0,@(0x07,r14)
	lds.l @r15+,pr
	bra loc_8C10C0Ca
	mov.l @r15+,r14

loc_8C10C8F2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C10C8F8:
	mov r4,r3
	mov.l @(loc_8C10CA3C,pc),r1 ; r1 set to 0x8C1663Bc
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C10C90A:
	mov r4,r3
	mov.l @(loc_8C10CA40,pc),r1 ; r1 set to 0x8C1663Cc
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C10C91C:
	mov.b @(0x05,r4),r0
	mov 0x03,r3 ; r3 set to 0x03
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	mov.b @(0x06,r4),r0
	add 0x01,r0
	mov.b r0,@(0x06,r4)
	mov.b @(0x06,r4),r0
	extu.b r0,r0
	cmp/ge r3,r0
	bf loc_8C10C942
	mov 0x00,r5 ; r5 set to 0x00
	mov r5,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x04,r4)
	mov.b r0,@(0x05,r4)
	mov.b r0,@(0x06,r4)
	bra loc_8C10C0Ca
	mov.b r0,@(0x07,r4)

loc_8C10C942:
	rts
	nop

;==============================================
loc_8C10C946:
	mov r4,r3
	mov.l @(loc_8C10CA44,pc),r1 ; r1 set to 0x8C1663D4
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C10C958:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	tst r0,r0
	bf loc_8C10C982
	mov.l @(loc_8C10CA48,pc),r3 ; r3 set to 0x8C046AE0
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt loc_8C10C982
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x04,r14)
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x05,r14)
	mov.b r0,@(0x06,r14)
	mov.b r0,@(0x07,r14)
	mov 0x01,r0 ; r0 set to 0x01
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C10C982:
	mov 0x00,r0 ; r0 set to 0x00
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C10C98A:
	mov r4,r3
	mov.l @(loc_8C10CA4C,pc),r1 ; r1 set to 0x8C1663E0
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C10C99C:
	mov.b @(0x05,r4),r0
	mov 0x0A,r3 ; r3 set to 0x0a
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	mov.b @(0x06,r4),r0
	add 0x01,r0
	mov.b r0,@(0x06,r4)
	mov.b @(0x06,r4),r0
	extu.b r0,r0
	cmp/ge r3,r0
	bf loc_8C10C9C2
	mov 0x00,r5 ; r5 set to 0x00
	mov r5,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x04,r4)
	mov.b r0,@(0x05,r4)
	mov.b r0,@(0x06,r4)
	bra loc_8C10C0Ca
	mov.b r0,@(0x07,r4)

loc_8C10C9C2:
	rts
	nop

;==============================================
loc_8C10C9C6:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8C10CA50,pc),r1 ; r1 set to 0x8C1663E8
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C10CA0e
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3
	mov 0x0C,r2 ; r2 set to 0x0c
	extu.b r3,r3
	cmp/gt r2,r3
	bt loc_8C10CA0e
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r14),r1 ; r1 ??? bc r14 is ???
	tst r1,r1
	bf loc_8C10CA08
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	bsr loc_8C10CA58
	mov r14,r4
	mov 0x10,r3 ; r3 set to 0x10
	bra loc_8C10CA0c
	mov 0x22,r0

loc_8c10ca08:
	mov.b @(r0,r14),r3
	add 0xFF,r3

loc_8c10ca0c:
	mov.b r3,@(r0,r14)

loc_8C10CA0E:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C10CA14:
	mov.b @(0x04,r4),r0
	tst r0,r0
	bf loc_8C10CA36
	mov.l @(loc_8C10CA54,pc),r2 ; r2 set to 0x8C2895F0
	mov 0x06,r1 ; r1 set to 0x06
	mov.b @r2,r3
	extu.b r3,r3
	cmp/ge r1,r3
	bf loc_8C10CA36
	mov 0x03,r0 ; r0 set to 0x03
	mov.b r0,@(0x04,r4)
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x05,r4)
	mov.b r0,@(0x06,r4)
	mov.b r0,@(0x07,r4)
	rts
	mov 0x01,r0

loc_8C10CA36:
	mov 0x00,r0 ; r0 set to 0x00
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C10CA3C:
	#data bank16.loc_8c1663Bc
loc_8C10CA40:
	#data bank16.loc_8c1663Cc
loc_8C10CA44:
	#data bank16.loc_8c1663D4
loc_8C10CA48:
	#data bank04.loc_8c046AE0
loc_8C10CA4C:
	#data bank16.loc_8c1663E0
loc_8C10CA50:
	#data bank16.loc_8c1663E8
loc_8C10CA54:
	#data 0x8C2895F0

;==============================================
loc_8c10ca58:
	mov.l r14,@-r15
	mov 0x01,r14
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov 0x03,r11
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.w @(loc_8C10CB6C,pc),r10
	mov.w @(loc_8C10CB6E,pc),r12
	mov.l @(loc_8c10cb7c,pc),r9
	mov.l @(loc_8c10cb78,pc),r8

loc_8c10ca76:
	mov 0x05,r5
	mov 0x01,r6
	jsr @r9
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c10cac8
	mov r0,r4
	mov 0x23,r0
	mov.l @(loc_8C10CB84,pc),r2
	mov.b r13,@(r0,r4)
	mov r4,r1
	mov.w @(loc_8C10CB70,pc),r0
	add 0x34,r1
	mov.l @(loc_8c10cb80,pc),r3
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r2,r0
	mov.l @r0,r0
	mov.l @(r0,r10),r3
	mov.w @(loc_8C10CB72,pc),r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r12,@(r0,r4)
	add 0x64,r0
	mov.w r14,@(r0,r4)
	mov 0x23,r0
	mov.b @(r0,r4),r2
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c10cb88,pc),r3
	shll2 r2
	add r8,r2
	jsr @r3
	mov 0x0C,r0
	bsr loc_8c10c074
	nop
	add 0x01,r13
	cmp/ge r11,r13
	bf loc_8c10ca76

loc_8c10cac8:
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
loc_8C10CADA:
	mov r4,r3
	mov.l @(loc_8C10CB8C,pc),r1 ; r1 set to 0x8C166410
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C10CAEC:
	mov.l r14,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C10CB90,pc),r3 ; r3 set to 0x8C03319e
	jsr @r3
	mov r4,r14
	mov r0,r1
	mov.l @(loc_8C10CB94,pc),r2 ; r2 set to 0x8C1292D4
	mov.w @(loc_8C10CB74,pc),r0 ; r0 set to 0x96
	jsr @r2
	nop
	lds r0,fpul
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C10CB98,pc),r3 ; r3 set to 0x8C26A5B4
	mov.l @(loc_8C10CB90,pc),r2 ; r2 set to 0x8C03319e
	float fpul,fr3
	fmov.s @r3,fr2 ; r2 ??
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0x35
	mov.b r0,@(0x04,r14)
	mova @(loc_8C10CB9C,pc),r0  ; r0 set to 0x8C10CB9c
	fmov.s @r0,fr3 ; r3 ??
	mov 0x5C,r0 ; r0 set to 0x5c
	mov r0,r8 ; r8 set to 0x5c
	fmov.s fr3,@(r0,r14)
	jsr @r2
	add r14,r8 ; r8 ??? bc r14 is ???
	mov.l @(loc_8C10CB94,pc),r3 ; r3 set to 0x8C1292D4
	mov r0,r1 ; r1 set to 0x5c
	jsr @r3
	mov 0x0A,r0 ; r0 set to 0x0a
	lds r0,fpul
	fmov.s @r8,fr2
	float fpul,fr3
	fsub fr3,fr2
	fmov.s fr2,@r8
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

;==============================================
loc_8C10CB40:
	mov 0x5C,r1
	mov.l @(0x5C,PC),r3
	add r4,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	fmov @r3,fr3
	fcmp/gt fr3,fr2
	bt loc_8c10cb62
	mov.w @(0x16,PC),r0
	mov 0x00,r1
	mov.b r1,@(r0,r4)
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)

loc_8C10CB62:
	rts
	nop

;==============================================
loc_8C10CB66:
	mov.l @(loc_8C10CBA4,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10cb6c:
	#data 0x008c
loc_8c10cb6e:
	#data 0x0801
loc_8c10cb70:
	#data 0x012c
loc_8c10cb72:
	#data 0x0084
loc_8C10CB74:
	#data 0x0096
	#align4

loc_8C10CB78:
	#data bank13.loc_8c13e958
loc_8C10CB7C:
	#data bank04.loc_8c044F12
loc_8C10CB80:
	#data loc_8c10CADa
loc_8c10cb84:
	#data 0x8C26A904
loc_8C10CB88:
	#data bank12.loc_8c1294C8
loc_8C10CB8C:
	#data bank16.loc_8c166410
loc_8C10CB90:
	#data bank03.loc_8c03319e
loc_8C10CB94:
	#data bank12.loc_8c1292D4
loc_8C10CB98:
	#data 0x8C26A5B4
loc_8C10CB9C:
	#data 0xC0A00000
loc_8C10CBA0:
	#data 0x8C26A5B0
loc_8C10CBA4:
	#data bank04.loc_8c0450C0

;==============================================
loc_8c10cba8:
	mov.l r14,@-r15
	mov 0x01,r14
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	mov 0x03,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.w @(loc_8C10CC2E,pc),r10
	mov.w @(loc_8C10CC30,pc),r11
	mov.l @(loc_8c10cc3c,pc),r9
	mov.l @(loc_8c10cc38,pc),r8

loc_8c10cbc6:
	mov 0x05,r5
	mov 0x01,r6
	jsr @r9
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c10cc18
	mov r0,r4
	mov 0x23,r0
	mov.l @(loc_8C10CC44,pc),r2
	mov.b r13,@(r0,r4)
	mov r4,r1
	mov.w @(loc_8C10CC32,pc),r0
	add 0x34,r1
	mov.l @(loc_8c10cc40,pc),r3
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r2,r0
	mov.l @r0,r0
	mov.l @(r0,r11),r3
	mov.w @(loc_8C10CC34,pc),r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r10,@(r0,r4)
	add 0x64,r0
	mov.w r14,@(r0,r4)
	mov 0x23,r0
	mov.b @(r0,r4),r2
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(loc_8c10cc48,pc),r3
	shll2 r2
	add r8,r2
	jsr @r3
	mov 0x0C,r0
	bsr loc_8c10bea0
	nop
	add 0x01,r13
	cmp/ge r12,r13
	bf loc_8c10cbc6

loc_8c10cc18:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8C10CC2A:
	bra loc_8C10CBA8
	mov 0x23,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10cc2e:
	#data 0x0805
loc_8c10cc30:
	#data 0x008c
loc_8c10cc32:
	#data 0x012C
loc_8c10cc34:
	#data 0x0084
	#align4

loc_8C10CC38:
	#data bank13.loc_8c13e958
loc_8C10CC3C:
	#data bank04.loc_8c044F12
loc_8C10CC40:
	#data loc_8c10C0Ca
loc_8c10cc44:
	#data 0x8C26A904
loc_8C10CC48:
	#data bank12.loc_8c1294C8

;==============================================
loc_8C10CC4C:
	add 0xFC,r15
	mov r4,r3
	mov.l @(loc_8C10CE10,pc),r1 ; r1 set to 0x8C16641c
	mov.l r4,@r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C10CC60:
	mov.l @(loc_8C10CE14,pc),r5 ; r5 set to 0x8C13E9Bc
	mov r4,r1
	sts.l pr,@-r15
	mov.b @(0x05,r4),r0
	mov r5,r2 ; r2 set to 0x8C13E9Bc
	add 0x5C,r1
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(loc_8C10CE18,pc),r3 ; r3 set to 0x8C1294C8
	shll2 r0
	add r0,r2 ; r2 ??? bc r0 is ???
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.b @(0x05,r4),r0
	mov r4,r1
	mov r5,r2 ; r2 set to 0x8C13E9Bc
	add 0x68,r1
	add 0x01,r0 ; r0 set to 0x0d
	mov.b r0,@(0x05,r4)
	mov.b @(0x05,r4),r0
	and 0x01,r0
	mov.b r0,@(0x05,r4)
	mov.b @(0x05,r4),r0
	extu.b r0,r0 ; r0 set to 0x0d
	mov r0,r3 ; r3 set to 0x0d
	shll r0 ; r0 set to 0x1a
	add r3,r0 ; r0 set to 0x27
	mov.l @(loc_8C10CE18,pc),r3 ; r3 set to 0x8C1294C8
	shll2 r0 ; r0 set to 0x9c
	add r0,r2 ; r2 set to 0x8C13EA58
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mova @(loc_8C10CE1C,pc),r0  ; r0 set to 0x8C10CE1c
	mov.l @(loc_8C10CE20,pc),r5 ; r5 set to 0x8C28C8C0
	fmov.s @r0,fr4
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r4),r3 ; r3 ??? bc r4 is ???
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r4),fr3
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s @(r0,r4),fr2 ; r2 ??? bc r4 is ???
	extu.b r3,r3
	mov r3,r2
	shll r3
	fsub fr3,fr2
	add r2,r3
	shll2 r3
	add r5,r3
	mov 0x23,r0 ; r0 set to 0x23
	fdiv fr4,fr2
	fmov.s fr2,@r3
	mov.b @(r0,r4),r3
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r4),fr3
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s @(r0,r4),fr2
	extu.b r3,r3
	mov r3,r2
	shll r3
	fsub fr3,fr2
	add r2,r3
	shll2 r3
	add r5,r3
	fdiv fr4,fr2
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s fr2,@(r0,r3)
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r4),r3
	mov 0x64,r0 ; r0 set to 0x64
	fmov.s @(r0,r4),fr3
	mov 0x70,r0 ; r0 set to 0x70
	fmov.s @(r0,r4),fr2
	extu.b r3,r3
	mov r3,r2
	shll r3
	fsub fr3,fr2
	add r2,r3
	shll2 r3
	mov 0x08,r0 ; r0 set to 0x08
	add r3,r5 ; r5 ??? bc r3 is ???
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r5)
	mov 0x01,r0 ; r0 set to 0x01
	mov.b r0,@(0x04,r4)
	bra loc_8C10CD10
	lds.l @r15+,pr

loc_8C10CD10:
	mov.w @(0x1C,r4),r0
	mov 0x64,r3 ; r3 set to 0x64
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	cmp/gt r3,r0
	bf loc_8C10CD26
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x04,r4)
	rts
	mov.w r0,@(0x1C,r4)

;==============================================
loc_8C10CD26:
	mova @(loc_8C10CE24,pc),r0  ; r0 init to 0x8C10CE24
	mov.l @(loc_8C10CE30,pc),r5 ; r5 set to 0xFFFf
	fmov.s @r0,fr6
	mova @(loc_8C10CE28,pc),r0  ; r0 set to 0x8C10CE28
	fmov.s @r0,fr5 ; r5 ??
	mova @(loc_8C10CE2C,pc),r0  ; r0 set to 0x8C10CE2c
	fmov.s @r0,fr4
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r4),fr3
	mov 0x60,r0 ; r0 set to 0x60
	mov r4,r3
	add 0x40,r3
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r5,r2
	mov.l r2,@r3
	fmov.s @(r0,r4),fr3
	mov 0x44,r0 ; r0 set to 0x44
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r5,r3
	mov.l r3,@(r0,r4)
	mov 0x64,r0 ; r0 set to 0x64
	fmov.s @(r0,r4),fr3
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	mov 0x48,r0 ; r0 set to 0x48
	mov.l @(loc_8C10CE20,pc),r6 ; r6 set to 0x8C28C8C0
	ftrc fr3,fpul
	sts fpul,r3
	and r5,r3
	mov.l r3,@(r0,r4)
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r4),r2
	mov r4,r3
	mov.w @(0x1C,r4),r0
	add 0x40,r3
	extu.b r2,r2
	mov r2,r1
	shll r2
	add r1,r2
	mov r0,r1 ; r1 set to 0x23
	lds r1,fpul
	shll2 r2
	add r6,r2
	mov.l @r3,r1 ; r1 ??? bc r3 is ???
	fmov.s @r2,fr2
	float fpul,fr3
	fmul fr3,fr2
	fmul fr6,fr2
	fdiv fr5,fr2
	fadd fr4,fr2
	ftrc fr2,fpul
	sts fpul,r2
	and r5,r2
	add r2,r1
	mov.l r1,@r3
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r4),r3
	mov.w @(0x1C,r4),r0
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	mov r0,r2 ; r2 set to 0x23
	lds r2,fpul
	shll2 r3
	mov 0x04,r0 ; r0 set to 0x04
	add r6,r3
	float fpul,fr3
	fmov.s @(r0,r3),fr2 ; r2 ??? bc r3 is ???
	mov 0x44,r0 ; r0 set to 0x44
	mov.l @(r0,r4),r2
	fmul fr3,fr2
	fmul fr6,fr2
	fdiv fr5,fr2
	fadd fr4,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r5,r3
	add r3,r2
	mov.l r2,@(r0,r4)
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r4),r3
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	mov.w @(0x1C,r4),r0
	add r3,r6 ; r6 ??? bc r3 is ???
	mov r0,r3 ; r3 set to 0x23
	lds r3,fpul
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s @(r0,r6),fr2
	mov 0x48,r0 ; r0 set to 0x48
	float fpul,fr3
	mov.l @(r0,r4),r2
	fmul fr3,fr2
	fmul fr6,fr2
	fdiv fr5,fr2
	fadd fr4,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r5,r3 ; r3 ??? bc r5 is ???
	add r3,r2
	mov.l r2,@(r0,r4)
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C10CE10:
	#data bank16.loc_8c16641c
loc_8C10CE14:
	#data bank13.loc_8c13e9Bc
loc_8C10CE18:
	#data bank12.loc_8c1294C8
loc_8C10CE1C:
	#data 0x42C80000
loc_8C10CE20:
	#data 0x8C28C8C0
loc_8C10CE24:
	#data 0x47800000
loc_8C10CE28:
	#data 0x43B40000
loc_8C10CE2C:
	#data 0x3F000000
loc_8C10CE30:
	#data 0x0000FFFf

;==============================================
loc_8c10ce34:
	mov.l r14,@-r15
	mova @(loc_8C10CF2C,pc),r0
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	mov 0x01,r12
	mov.l r11,@-r15
	mov 0x02,r11
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	fmov.s fr13,@-r15
	sts.l pr,@-r15
	fmov.s @r0,fr13
	mova @(loc_8C10CF30,pc),r0
	fmov.s @r0,fr14
	mova @(loc_8C10CF38,pc),r0
	mov.l @(loc_8c10cf28,pc),r8
	fmov.s @r0,fr15
	mov.w @(loc_8C10CF22,pc),r10
	mov.l @(loc_8C10CF34,pc),r14
	mov.w @(loc_8C10CF20,pc),r9

loc_8c10ce64:
	mov 0x05,r5
	mov 0x01,r6
	jsr @r8
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c10cef4
	mov r0,r4
	mov.w @(loc_8C10CF24,pc),r0
	mov r13,r6
	mov.l @(loc_8C10CF40,pc),r2
	shll r6
	mov.b r12,@(r0,r4)
	mov r4,r1
	mov.l @(loc_8c10cf3c,pc),r3
	add 0x34,r1
	mov.l r3,@(0x10,r4)
	mov.l @r2,r0
	mov.l @(loc_8c10cf44,pc),r2
	mov.l @r0,r0
	mov.l @(r0,r9),r3
	mov.w @(loc_8C10CF26,pc),r0
	mov.l r3,@(r0,r4)
	mov r13,r3
	add r3,r6
	mov.l @(loc_8c10cf48,pc),r3
	add 0x48,r0
	shll2 r6
	mov.l r10,@(r0,r4)
	add r6,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c10cf4c,pc),r5
	mov 0x04,r0
	mov r4,r2
	add 0x40,r2
	add r6,r5
	fmov.s @r5,fr3
	fmul fr14,fr3
	fdiv fr15,fr3
	fadd fr13,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r14,r3
	mov.l r3,@r2
	fmov.s @(r0,r5),fr3
	mov 0x44,r0
	fmul fr14,fr3
	fdiv fr15,fr3
	fadd fr13,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r14,r3
	mov.l r3,@(r0,r4)
	mov 0x08,r0
	fmov.s @(r0,r5),fr3
	mov 0x48,r0
	fmul fr14,fr3
	fdiv fr15,fr3
	fadd fr13,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r14,r3
	mov.l r3,@(r0,r4)
	mov 0x23,r0
	mov.b r13,@(r0,r4)
	mov r13,r0
	nop
	bsr loc_8c10d124
	mov.b r0,@(0x05,r4)
	add 0x01,r13
	cmp/ge r11,r13
	bf loc_8c10ce64

loc_8c10cef4:
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

loc_8C10CF0C:
	add 0xFC,r15
	mov r4,r3
	mov.l @(loc_8C10CF50,pc),r1 ; r1 set to 0x8C166424
	mov.l r4,@r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10cf20:
	#data 0x009c
loc_8c10cf22:
	#data 0x0807
loc_8c10cf24:
	#data 0x012c
loc_8c10cf26:
	#data 0x0084
	#align4

loc_8C10CF28:
	#data bank04.loc_8c044F12
loc_8c10cf2c:
	#data 0x3F000000
loc_8c10cf30:
	#data 0x47800000
loc_8c10cf34:
	#data 0x0000FFFf
loc_8c10cf38:
	#data 0x43B40000
loc_8C10CF3C:
	#data loc_8c10CC4c
loc_8c10cf40:
	#data 0x8C26A904
loc_8C10CF44:
	#data bank13.loc_8c13e9A4
loc_8C10CF48:
	#data bank12.loc_8c1294C8
loc_8C10CF4C:
	#data bank13.loc_8c13e9Bc
loc_8C10CF50:
	#data bank16.loc_8c166424

;==============================================
loc_8C10CF54:
	mov.l @(loc_8C10D104,pc),r5 ; r5 set to 0x8C13E9E0
	mov r4,r1
	sts.l pr,@-r15
	mov.b @(0x05,r4),r0
	mov r5,r2 ; r2 set to 0x8C13E9E0
	add 0x5C,r1
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(loc_8C10D108,pc),r3 ; r3 set to 0x8C1294C8
	shll2 r0
	add r0,r2 ; r2 ??? bc r0 is ???
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.b @(0x05,r4),r0
	mov r4,r1
	mov r5,r2 ; r2 set to 0x8C13E9E0
	add 0x68,r1
	add 0x01,r0 ; r0 set to 0x0d
	mov.b r0,@(0x05,r4)
	mov.b @(0x05,r4),r0
	and 0x01,r0
	mov.b r0,@(0x05,r4)
	mov.b @(0x05,r4),r0
	extu.b r0,r0 ; r0 set to 0x0d
	mov r0,r3 ; r3 set to 0x0d
	shll r0 ; r0 set to 0x1a
	add r3,r0 ; r0 set to 0x27
	mov.l @(loc_8C10D108,pc),r3 ; r3 set to 0x8C1294C8
	shll2 r0 ; r0 set to 0x9c
	add r0,r2 ; r2 set to 0x8C13EA7c
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mova @(loc_8C10D10C,pc),r0  ; r0 set to 0x8C10D10c
	mov.l @(loc_8C10D110,pc),r5 ; r5 set to 0x8C28C8D8
	fmov.s @r0,fr4
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r4),r3 ; r3 ??? bc r4 is ???
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r4),fr3
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s @(r0,r4),fr2 ; r2 ??? bc r4 is ???
	extu.b r3,r3
	mov r3,r2
	shll r3
	fsub fr3,fr2
	add r2,r3
	shll2 r3
	add r5,r3
	mov 0x23,r0 ; r0 set to 0x23
	fdiv fr4,fr2
	fmov.s fr2,@r3
	mov.b @(r0,r4),r3
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r4),fr3
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s @(r0,r4),fr2
	extu.b r3,r3
	mov r3,r2
	shll r3
	fsub fr3,fr2
	add r2,r3
	shll2 r3
	add r5,r3
	fdiv fr4,fr2
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s fr2,@(r0,r3)
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r4),r3
	mov 0x64,r0 ; r0 set to 0x64
	fmov.s @(r0,r4),fr3
	mov 0x70,r0 ; r0 set to 0x70
	fmov.s @(r0,r4),fr2
	extu.b r3,r3
	mov r3,r2
	shll r3
	fsub fr3,fr2
	add r2,r3
	shll2 r3
	mov 0x08,r0 ; r0 set to 0x08
	add r3,r5 ; r5 ??? bc r3 is ???
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r5)
	mov 0x01,r0 ; r0 set to 0x01
	mov.b r0,@(0x04,r4)
	bra loc_8C10D004
	lds.l @r15+,pr

loc_8C10D004:
	mov.w @(0x1C,r4),r0
	mov 0x64,r3 ; r3 set to 0x64
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	cmp/gt r3,r0
	bf loc_8C10D01a
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x04,r4)
	rts
	mov.w r0,@(0x1C,r4)

;==============================================
loc_8C10D01A:
	mova @(loc_8C10D114,pc),r0  ; r0 init to 0x8C10D114
	mov.l @(loc_8C10D120,pc),r5 ; r5 set to 0xFFFf
	fmov.s @r0,fr6
	mova @(loc_8C10D118,pc),r0  ; r0 set to 0x8C10D118
	fmov.s @r0,fr5 ; r5 ??
	mova @(loc_8C10D11C,pc),r0  ; r0 set to 0x8C10D11c
	fmov.s @r0,fr4
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r4),fr3
	mov 0x60,r0 ; r0 set to 0x60
	mov r4,r3
	add 0x40,r3
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r5,r2
	mov.l r2,@r3
	fmov.s @(r0,r4),fr3
	mov 0x44,r0 ; r0 set to 0x44
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r5,r3
	mov.l r3,@(r0,r4)
	mov 0x64,r0 ; r0 set to 0x64
	fmov.s @(r0,r4),fr3
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	mov 0x48,r0 ; r0 set to 0x48
	mov.l @(loc_8C10D110,pc),r6 ; r6 set to 0x8C28C8D8
	ftrc fr3,fpul
	sts fpul,r3
	and r5,r3
	mov.l r3,@(r0,r4)
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r4),r2
	mov r4,r3
	mov.w @(0x1C,r4),r0
	add 0x40,r3
	extu.b r2,r2
	mov r2,r1
	shll r2
	add r1,r2
	mov r0,r1 ; r1 set to 0x23
	lds r1,fpul
	shll2 r2
	add r6,r2
	mov.l @r3,r1 ; r1 ??? bc r3 is ???
	fmov.s @r2,fr2
	float fpul,fr3
	fmul fr3,fr2
	fmul fr6,fr2
	fdiv fr5,fr2
	fadd fr4,fr2
	ftrc fr2,fpul
	sts fpul,r2
	and r5,r2
	add r2,r1
	mov.l r1,@r3
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r4),r3
	mov.w @(0x1C,r4),r0
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	mov r0,r2 ; r2 set to 0x23
	lds r2,fpul
	shll2 r3
	mov 0x04,r0 ; r0 set to 0x04
	add r6,r3
	float fpul,fr3
	fmov.s @(r0,r3),fr2 ; r2 ??? bc r3 is ???
	mov 0x44,r0 ; r0 set to 0x44
	mov.l @(r0,r4),r2
	fmul fr3,fr2
	fmul fr6,fr2
	fdiv fr5,fr2
	fadd fr4,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r5,r3
	add r3,r2
	mov.l r2,@(r0,r4)
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r4),r3
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	mov.w @(0x1C,r4),r0
	add r3,r6 ; r6 ??? bc r3 is ???
	mov r0,r3 ; r3 set to 0x23
	lds r3,fpul
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s @(r0,r6),fr2
	mov 0x48,r0 ; r0 set to 0x48
	float fpul,fr3
	mov.l @(r0,r4),r2
	fmul fr3,fr2
	fmul fr6,fr2
	fdiv fr5,fr2
	fadd fr4,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r5,r3 ; r3 ??? bc r5 is ???
	add r3,r2
	mov.l r2,@(r0,r4)
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C10D104:
	#data bank13.loc_8c13e9E0
loc_8C10D108:
	#data bank12.loc_8c1294C8
loc_8C10D10C:
	#data 0x42C80000
loc_8C10D110:
	#data 0x8C28C8D8
loc_8C10D114:
	#data 0x47800000
loc_8C10D118:
	#data 0x43B40000
loc_8C10D11C:
	#data 0x3F000000
loc_8C10D120:
	#data 0x0000FFFf

;==============================================
loc_8C10D124:
	mov.l r14,@-r15
	mov 0x05,r5
	sts.l pr,@-r15
	mov.l @(0x98,PC),r3
	mov r4,r14
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c10d1b0
	mov r0,r4
	mov.w @(0x7C,PC),r0
	mov 0x01,r3
	mov.l @(0x8C,PC),r1
	mov.l @(0x84,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(0x6E,PC),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0xE4,r0
	mov.w @(0x66,PC),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(0x70,PC),r2
	mov.l @(0x74,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x80,PC),r5
	mova @(0x74,PC),r0
	fmov @r0,fr6
	mova @(0x74,PC),r0
	fmov @r5,fr3
	mov r4,r3
	fmov @r0,fr5
	mova @(0x70,PC),r0
	fmul fr6,fr3
	fmov @r0,fr4
	mov 0x04,r0
	mov.l @(0x5C,PC),r6
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
	mov.w @(0x20,PC),r3
	mov.w @(0x20,PC),r0
	add r14,r3
	mov.l r14,@(0x14,r4)
	mov.l r3,@(r0,r4)
	mov.b @(0x5,r14),r0
	mov.b r0,@(0x5,r4)
	mov 0x23,r0
	mov.b @(r0,r14),r3
	mov.b r3,@(r0,r4)

loc_8C10D1B0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C10D1B6:
	bra loc_8C10CE34
	mov 0x27,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C10D1Ba:
	#data 0x012c
loc_8C10D1Bc:
	#data 0x00A0
loc_8C10D1Be:
	#data 0x0803
loc_8C10D1c0:
	#data 0x0088
loc_8C10D1c2:
	#data 0x00C8
	#align4

loc_8C10D1C4:
	#data bank04.loc_8c044F12
loc_8C10D1C8:
	#data loc_8c10CF0c
loc_8C10D1cc:
	#data 0x8C26A904
loc_8C10D1D0:
	#data bank13.loc_8c13e9D4
loc_8C10D1D4:
	#data bank12.loc_8c1294C8
loc_8C10D1d8:
	#data 0x0000FFFf
loc_8C10D1dc:
	#data 0x47800000
loc_8C10D1e0:
	#data 0x43B40000
loc_8C10D1e4:
	#data 0x3F000000
loc_8C10D1E8:
	#data bank13.loc_8c13e9E0

;==============================================
loc_8C10D1EC:
	mov.l @(0x14,r4),r3
	mov.b @(0x05,r3),r0
	tst r0,r0
	bt loc_8C10D1Fc
	mov.w @(loc_8C10D32E,pc),r0 ; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	bra loc_8C10D202
	mov.b r2,@(r0,r4)

loc_8C10D1FC:
	mov.w @(loc_8C10D32E,pc),r0 ; r0 set to 0x12c
	mov 0x00,r1 ; r1 set to 0x00
	mov.b r1,@(r0,r4)

loc_8C10D202:
	rts
	nop

;==============================================
loc_8c10d206:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c10d33c,pc),r3
	mov 0x05,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c10d254
	mov r0,r4
	mov.w @(loc_8c10d32e,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C10D344,pc),r1
	mov.l @(loc_8c10d340,pc),r2
	mov.b r3,@(r0,r4)
	add 0x84,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0xD4,r0
	mov.l r3,@(r0,r4)
	mov.w @(loc_8C10D330,pc),r3
	mov.w @(loc_8C10D332,pc),r0
	mov.l @r15,r2
	mov.l r2,@(0x14,r4)
	mov.l r3,@(r0,r4)
	mov.l @(loc_8c10d348,pc),r2
	mov.l @(loc_8c10d34c,pc),r3
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8C10D334,pc),r3
	mov.l @r15,r1
	mov.w @(loc_8C10D336,pc),r0
	add r1,r3
	mov.l r3,@(r0,r4)

loc_8c10d254:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C10D25C:
	add 0xFC,r15
	mov r4,r3
	mov.l @(loc_8C10D350,pc),r1 ; r1 set to 0x8C16642c
	mov.l r4,@r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C10D270:
	sts.l pr,@-r15
	mov.w @(0x1C,r4),r0
	mov 0x1C,r1 ; r1 set to 0x1c
	mov.l @(loc_8C10D354,pc),r3 ; r3 set to 0x8C1292D4
	add r4,r1 ; r1 ??? bc r4 is ???
	add 0x01,r0
	fldi1 fr4
	mov.w r0,@(0x1C,r4)
	mov 0x14,r0 ; r0 set to 0x14
	jsr @r3
	mov.w @r1,r1
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0 ; r0 ??
	tst r0,r0
	bf loc_8C10D2Be
	mov.w @(0x1E,r4),r0
	cmp/eq 0x01,r0
	bf loc_8C10D2A2
	mov 0x78,r0 ; r0 set to 0x78
	fmov.s fr4,@(r0,r4)
	mov 0x7C,r0 ; r0 set to 0x7c
	fmov.s fr4,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x80
	bra loc_8C10D2B0
	fmov.s fr4,@(r0,r4)

loc_8c10d2a2:
	mov 0x78,r0
	fldi0 fr5
	fmov.s fr5,@(r0,r4)
	mov 0x7C,r0
	fmov.s fr5,@(r0,r4)
	add 0x04,r0
	fmov.s fr5,@(r0,r4)

loc_8c10d2b0:
	mov.w @(0x1E,r4),r0
	mov 0xFF,r3
	muls.w r3,r0
	sts macl,r0
	mov.w r0,@(0x1E,r4)
	mov 0x01,r0
	mov.b r0,@(0x04,r4)

loc_8C10D2BE:
	mova @(loc_8C10D358,pc),r0  ; r0 init to 0x8C10D358
	fmov.s @r0,fr5
	mov 0x78,r2 ; r2 set to 0x78
	mov.w @(0x1E,r4),r0
	add r4,r2 ; r2 ??? bc r4 is ???
	fmov.s @r2,fr2
	mov r0,r3 ; r3 set to 0x8C10D358
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3 ; r3 ??? bc r4 is ???
	fdiv fr5,fr3
	fadd fr3,fr2
	fmov.s fr2,@r2
	mov 0x7C,r2 ; r2 set to 0x7c
	mov.w @(0x1E,r4),r0
	add r4,r2 ; r2 ??? bc r4 is ???
	fmov.s @r2,fr2
	mov r0,r3 ; r3 set to 0x8C10D358
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3 ; r3 ??? bc r4 is ???
	fdiv fr5,fr3
	fadd fr3,fr2
	fmov.s fr2,@r2
	mov.w @(0x1E,r4),r0
	mov.w @(loc_8C10D338,pc),r2 ; r2 set to 0x80
	mov r0,r3 ; r3 set to 0x8C10D358
	lds r3,fpul
	add r4,r2 ; r2 ??? bc r4 is ???
	float fpul,fr3
	fmul fr4,fr3 ; r3 ??? bc r4 is ???
	fdiv fr5,fr3
	fmov.s @r2,fr2
	lds.l @r15+,pr
	fadd fr3,fr2
	rts
	fmov.s fr2,@r2

;==============================================
loc_8C10D308:
	sts.l pr,@-r15
	mov.w @(0x1C,r4),r0
	mov 0x1C,r1
	mov.l @(0x44,PC),r3
	add r4,r1
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov 0x28,r0
	jsr @r3
	mov.w @r1,r1
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c10d328
	mov 0x00,r0
	mov.b r0,@(0x4,r4)

loc_8C10D328:
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C10D32E:
	#data 0x012c
loc_8c10d330:
	#data 0x0800
loc_8c10d332:
	#data 0x00CC
loc_8c10d334:
	#data 0x0088
loc_8c10d336:
	#data 0x00C8
loc_8C10D338:
	#data 0x0080
	#align4

loc_8C10D33C:
	#data bank04.loc_8c044F12
loc_8C10D340:
	#data loc_8c10D1Ec
loc_8c10d344:
	#data 0x8C26A904
loc_8C10D348:
	#data bank13.loc_8c13ea48
loc_8C10D34C:
	#data bank12.loc_8c1294C8
loc_8C10D350:
	#data bank16.loc_8c16642c
loc_8C10D354:
	#data bank12.loc_8c1292D4
loc_8C10D358:
	#data 0x41A00000

;==============================================
loc_8c10d35c:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c10d43c,pc),r3
	mov 0x05,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c10d3ac
	mov r0,r4
	mov.l @(loc_8C10D444,pc),r1
	mov 0x01,r5
	mov.l @(loc_8c10d440,pc),r3
	mov.w @(loc_8C10D432,pc),r0
	mov.b r5,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r1,r2
	mov r4,r1
	mov.w @(loc_8C10D434,pc),r0
	add 0x34,r1
	mov.l @r2,r3
	mov.w @(loc_8C10D436,pc),r2
	mov.l @(r0,r3),r3
	add 0xDC,r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(loc_8c10d448,pc),r2
	mov.l @(loc_8c10d44c,pc),r3
	jsr @r3
	mov 0x0C,r0
	mov r5,r0
	nop
	mov.w @(loc_8C10D438,pc),r1
	mov.w r0,@(0x1E,r4)
	mov.l @r15,r3
	mov.w @(loc_8C10D43A,pc),r0
	add r3,r1
	mov.l r1,@(r0,r4)

loc_8c10d3ac:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C10D3B4:
	add 0xFC,r15
	mov r4,r3
	mov.l @(loc_8C10D450,pc),r1 ; r1 set to 0x8C166434
	mov.l r4,@r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8c10d3c8:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c10d43c,pc),r3
	mov 0x05,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c10d418
	mov r0,r4
	mov.l @(loc_8C10D444,pc),r1
	mov 0x01,r5
	mov.l @(loc_8c10d454,pc),r3
	mov.w @(loc_8C10D432,pc),r0
	mov.b r5,@(r0,r4)
	add 0x80,r0
	mov.l r3,@(0x10,r4)
	mov.l @r1,r2
	mov r4,r1
	add 0x34,r1
	mov.l @r2,r3
	mov.w @(loc_8C10D436,pc),r2
	mov.l @(r0,r3),r3
	add 0xD8,r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(loc_8c10d458,pc),r2
	mov.l @(loc_8c10d44c,pc),r3
	jsr @r3
	mov 0x0C,r0
	mov r5,r0
	nop
	mov.w @(loc_8C10D438,pc),r1
	mov.w r0,@(0x1E,r4)
	mov.l @r15,r3
	mov.w @(loc_8C10D43A,pc),r0
	add r3,r1
	mov.l r1,@(r0,r4)

loc_8c10d418:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C10D420:
	mov r4,r3
	mov.l @(loc_8C10D45C,pc),r1 ; r1 set to 0x8C16643c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10d432:
	#data 0x012c
loc_8c10d434:
	#data 0x00A8
loc_8c10d436:
	#data 0x0C00
loc_8c10d438:
	#data 0x0088
loc_8c10d43a:
	#data 0x00C8
	#align4

loc_8C10D43C:
	#data bank04.loc_8c044F12
loc_8C10D440:
	#data loc_8c10D25c
loc_8c10d444:
	#data 0x8C26A904
loc_8C10D448:
	#data bank13.loc_8c13ea18
loc_8C10D44C:
	#data bank12.loc_8c1294C8
loc_8C10D450:
	#data bank16.loc_8c166434
loc_8C10D454:
	#data loc_8c10D3B4
loc_8C10D458:
	#data bank13.loc_8c13ea24
loc_8C10D45C:
	#data bank16.loc_8c16643c

;==============================================
loc_8C10D460:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8C10D570,pc),r4 ; r4 set to 0x8C13EA10
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	mov.l @(loc_8C10D578,pc),r3 ; r3 set to 0x8C03319e
	extu.b r0,r0
	shll2 r0
	fmov.s @(r0,r4),fr3 ; r3 ??
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mov.b @(0x05,r14),r0
	add 0x01,r0 ; r0 set to 0x39
	mov.b r0,@(0x05,r14)
	mov.b @(0x05,r14),r0
	and 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.b @(0x05,r14),r0
	extu.b r0,r0 ; r0 set to 0x39
	shll2 r0 ; r0 set to 0xE4
	fmov.s @(r0,r4),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	mova @(loc_8C10D574,pc),r0  ; r0 set to 0x8C10D574
	fsub fr2,fr3
	fmov.s @r0,fr2
	mov 0x60,r0 ; r0 set to 0x60
	fdiv fr2,fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C10D564,pc),r0 ; r0 set to 0x258
	mov.w r0,@(0x1C,r14)
	mov 0x01,r0 ; r0 set to 0x01
	jsr @r3
	mov.b r0,@(0x06,r14)
	mov.w @(loc_8C10D566,pc),r1 ; r1 set to 0xD8
	mov.l @(loc_8C10D57C,pc),r2 ; r2 set to 0x8C1292D4
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l r0,@r1
	mov.w @(loc_8C10D566,pc),r0 ; r0 set to 0xD8
	mov.w @(loc_8C10D566,pc),r1 ; r1 set to 0xD8
	mov.l @(r0,r14),r3
	add r14,r1 ; r1 ??? bc r14 is ???
	shll2 r3
	mov.l r3,@(r0,r14)
	mov.w @(loc_8C10D568,pc),r0 ; r0 set to 0x3E9
	jsr @r2
	mov.l @r1,r1
	mov.w @(loc_8C10D566,pc),r1 ; r1 set to 0xD8
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.w @(loc_8C10D56A,pc),r3 ; r3 set to 0x1F4
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l r0,@r1
	mov.w @(loc_8C10D566,pc),r0 ; r0 set to 0xD8
	mov.l @(r0,r14),r2 ; r2 ??? bc r14 is ???
	add r3,r2
	mov.l r2,@(r0,r14)
	mov 0x01,r0 ; r0 set to 0x01
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C10D4D8:
	mov 0x60,r1 ; r1 set to 0x60, r1 set to 0x60
	add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r4),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.b @(0x06,r4),r0
	tst r0,r0
	bt loc_8C10D520
	mov.b @(0x05,r4),r0
	tst r0,r0
	bt loc_8C10D506
	mov.w @(loc_8C10D566,pc),r0 ; r0 set to 0xD8, r0 set to 0xD8
	mov.l @(r0,r4),r3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r4),fr2
	lds r3,fpul
	float fpul,fr3
	fcmp/gt fr2,fr3
	bf loc_8C10D516
	bra loc_8C10D520
	nop

loc_8c10d506:
	mov.w @(loc_8c10d566,pc),r0
	mov.l @(r0,r4),r2
	mov 0x38,r0
	fmov.s @(r0,r4),fr2
	lds r2,fpul
	float fpul,fr3
	fcmp/gt fr3,fr2
	bt loc_8c10d520

loc_8c10d516:
	mov.w @(loc_8C10D56C,pc),r0
	mov.w @(loc_8c10d56a,pc),r2
	mov.l r2,@(r0,r4)
	mov 0x03,r0
	mov.b r0,@(0x04,r4)

loc_8c10d520:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c10d534
	mov.w @(loc_8C10D56E,pc),r0
	mov.w r0,@(0x1C,r4)
	mov 0x02,r0
	mov.b r0,@(0x04,r4)

loc_8c10d534:
	rts
	nop

;==============================================
loc_8c10d538:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c10d548
	mov 0x00,r0
	mov.b r0,@(0x4,r4)

loc_8c10d548:
	rts
	nop

;==============================================
loc_8c10d54c:
	mov.w @(0x1C,PC),r0
	mov.l @(r0,r4),r3
	add 0xFF,r3
	tst r3,r3
	bf.s loc_8c10d560
	mov.l r3,@(r0,r4)
	mov 0x00,r0
	mov.b r0,@(0x6,r4)
	mov 0x01,r0
	mov.b r0,@(0x4,r4)

loc_8c10d560:
	rts
	nop

;==============================================
loc_8c10d564:
	#data 0x0258
loc_8c10d566:
	#data 0x00D8
loc_8c10d568:
	#data 0x03E9
loc_8c10d56a:
	#data 0x01F4
loc_8C10D56C:
	#data 0x00D4
loc_8C10D56E:
	#data 0x00C8
	#align4

loc_8c10d570:
	#data bank13.loc_8C13EA10
loc_8c10d574:
	#data 0x44160000
loc_8c10d578:
	#data bank03.loc_8C03319E
loc_8c10d57c:
	#data bank12.loc_8C1292D4

;==============================================
loc_8C10D580:
	mov.l r14,@-r15
	mov 0x05,r5 ; r5 set to 0x05
	sts.l pr,@-r15
	mov.l @(loc_8C10D678,pc),r3 ; r3 set to 0x8C044F12
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C10D61a
	mov r0,r14
	mov.w @(loc_8C10D672,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8C10D680,pc),r1 ; r1 set to 0x8C26A904
	mov.l @(loc_8C10D67C,pc),r2 ; r2 set to 0x8C10D420
	mov.b r3,@(r0,r14)
	mov 0x50,r0 ; r0 set to 0x50
	mov.l r2,@(0x10,r14)
	mov.l @r1,r3 ; r3 ??
	mov r14,r1 ; r1 ??? bc r14 is ???
	add 0x34,r1
	mov.l @r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(r0,r2),r3
	add 0x34,r0 ; r0 set to 0x84
	mov.w @(loc_8C10D674,pc),r2 ; r2 set to 0x801
	mov.l r3,@(r0,r14)
	add 0x48,r0 ; r0 set to 0xCc
	mov.l r2,@(r0,r14)
	mov.l @(loc_8C10D684,pc),r2 ; r2 set to 0x8C13E9F8
	mov.l @(loc_8C10D688,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(loc_8C10D690,pc),r4 ; r4 set to 0x8C13EA04
	mova @(loc_8C10D694,pc),r0  ; r0 set to 0x8C10D694
	fmov.s @r0,fr6 ; r6 ??
	mova @(loc_8C10D698,pc),r0  ; r0 set to 0x8C10D698
	fmov.s @r4,fr3 ; r3 ??
	mov r14,r3
	fmov.s @r0,fr5 ; r5 ??
	mova @(loc_8C10D69C,pc),r0  ; r0 set to 0x8C10D69c
	fmul fr6,fr3
	fmov.s @r0,fr4 ; r4 ??
	mov 0x04,r0 ; r0 set to 0x04
	mov.l @(loc_8C10D68C,pc),r5 ; r5 set to 0xFFFf
	add 0x40,r3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r1
	and r5,r1
	mov.l r1,@r3
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
	ftrc fr3,fpul
	sts fpul,r3
	and r5,r3
	mov.l r3,@(r0,r14)
	bsr loc_8C10D35c
	mov r14,r4
	bsr loc_8C10D3C8
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C10D206
	mov.l @r15+,r14

loc_8C10D61A:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C10D620:
	mov 0x04,r1
	mov.l @(0x7C,PC),r3
	add r4,r1
	fldi1 fr4
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x28,r0
	mov.b @r1,r1
	jsr @r3
	extu.b r1,r1
	mov.b r0,@(0x4,r4)
	extu.b r0,r0
	tst r0,r0
	bf loc_8c10d6a4
	mov.w @(0x1E,r4),r0
	cmp/eq 0x01,r0
	bf loc_8c10d652
	mov 0x78,r0
	fmov fr4,@(r0,r4)
	mov 0x7C,r0
	fmov fr4,@(r0,r4)
	add 0x04,r0
	fmov fr4,@(r0,r4)

loc_8C10D652:
	mov.w @(0x1E,r4),r0
	cmp/eq 0xFF,r0
	bf loc_8c10d666
	mov 0x78,r0
	fldi0 fr4
	fmov fr4,@(r0,r4)
	mov 0x7C,r0
	fmov fr4,@(r0,r4)
	add 0x04,r0
	fmov fr4,@(r0,r4)

loc_8C10D666:
	mov.w @(0x1E,r4),r0
	mov 0xFF,r3
	muls.w r3,r0
	sts macl,r0
	bra loc_8c10d6ea
	mov.w r0,@(0x1E,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C10D672:
	#data 0x012c
loc_8C10D674:
	#data 0x0801
	#align4

loc_8C10D678:
	#data bank04.loc_8c044F12
loc_8C10D67C:
	#data loc_8c10D420
loc_8C10D680:
	#data 0x8C26A904
loc_8C10D684:
	#data bank13.loc_8c13e9F8
loc_8C10D688:
	#data bank12.loc_8c1294C8
loc_8C10D68C:
	#data 0x0000FFFf
loc_8C10D690:
	#data bank13.loc_8c13ea04
loc_8C10D694:
	#data 0x47800000
loc_8C10D698:
	#data 0x43B40000
loc_8C10D69C:
	#data 0x3F000000
loc_8C10D6A0:
	#data bank12.loc_8c1292D4

;==============================================
loc_8C10D6A4:
	mova @(0x100,PC),r0
	fmov @r0,fr5
	mov 0x78,r2
	mov.w @(0x1E,r4),r0
	add r4,r2
	fmov @r2,fr2
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fdiv fr5,fr3
	fadd fr3,fr2
	fmov fr2,@r2
	mov 0x7C,r2
	mov.w @(0x1E,r4),r0
	add r4,r2
	fmov @r2,fr2
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fdiv fr5,fr3
	fadd fr3,fr2
	fmov fr2,@r2
	mov.w @(0x1E,r4),r0
	mov.w @(0xC4,PC),r2
	mov r0,r3
	lds r3,fpul
	add r4,r2
	float fpul,fr3
	fmul fr4,fr3
	fdiv fr5,fr3
	fmov @r2,fr2
	fadd fr3,fr2
	fmov fr2,@r2

loc_8C10D6EA:
	mov.w @(0x1C,r4),r0
	mov 0x1C,r1
	mov.l @(0xBC,PC),r3
	add r4,r1
	add 0x03,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0xA6,PC),r0
	jsr @r3
	mov.w @r1,r1
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	lds.l @r15+,pr
	mov r0,r3
	lds r3,fpul
	mova @(0xA8,PC),r0
	mov.l @(0xB0,PC),r2
	fmov @r0,fr2
	mova @(0xA4,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	mova @(0xA4,PC),r0
	fmov @r0,fr0
	mov 0x44,r0
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r2,r3
	rts
	mov.l r3,@(r0,r4)

;==============================================
loc_8c10d728:
	sts.l pr,@-r15
	mov.l @(loc_8c10d7c0,pc),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c10d78c
	mov r0,r4
	mov.l @(loc_8C10D7C8,pc),r1
	mov 0x01,r5
	mov.l @(loc_8c10d7c4,pc),r3
	mov.w @(loc_8C10D7A2,pc),r0
	mov.b r5,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r1,r2
	mov r4,r1
	mov.w @(loc_8C10D7A4,pc),r0
	add 0x34,r1
	mov.l @r2,r3
	mov.w @(loc_8C10D7A6,pc),r2
	mov.l @(r0,r3),r3
	add 0xE0,r0
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(loc_8c10d7cc,pc),r2
	mov.l @(loc_8c10d7d0,pc),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c10d7d4,pc),r1
	mova @(loc_8C10D7B0,pc),r0
	fmov.s @r0,fr3
	mova @(loc_8C10D7B4,pc),r0
	fmov.s @r1,fr2
	fmov.s @r0,fr1
	mova @(loc_8C10D7B8,pc),r0
	fmul fr3,fr2
	fmov.s @r0,fr0
	mov.l @(loc_8C10D7BC,pc),r1
	mov 0x44,r0
	fdiv fr1,fr2
	fadd fr0,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r1,r3
	mov.l r3,@(r0,r4)
	mov r5,r0
	nop
	mov.w r0,@(0x1E,r4)

loc_8c10d78c:
	lds.l @r15+,pr
	rts
	nop

loc_8C10D792:
	sts.l pr,@-r15
	bsr loc_8C10D580
	mov 0x14,r4 ; r4 set to 0x14
	mov 0x29,r4 ; r4 set to 0x29
	bra loc_8C10D728
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10d79e:
	#data 0x0080
loc_8c10d7a0:
	#data 0x0168
loc_8c10d7a2:
	#data 0x012C
loc_8c10d7a4:
	#data 0x00A4
loc_8c10d7a6:
	#data 0x0C05
	#align4

loc_8c10d7a8:
	#data 0x42200000
loc_8C10D7AC:
	#data bank12.loc_8c1292D4
loc_8c10d7b0:
	#data 0x47800000
loc_8c10d7b4:
	#data 0x43B40000
loc_8c10d7b8:
	#data 0x3F000000
loc_8c10d7bc:
	#data 0x0000FFFf
loc_8C10D7C0:
	#data bank04.loc_8c044F12
loc_8C10D7C4:
	#data loc_8c10D620
loc_8c10d7c8:
	#data 0x8C26A904
loc_8C10D7CC:
	#data bank13.loc_8c13ea30
loc_8C10D7D0:
	#data bank12.loc_8c1294C8
loc_8C10D7D4:
	#data bank13.loc_8c13ea40

;==============================================
loc_8C10D7D8:
	mov.b @(0x4,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bf loc_8c10d81a
	mov.w @(0x1C,r4),r0
	mov r4,r3
	mov.l @(0x138,PC),r1
	add 0x40,r3
	mov r0,r2
	lds r2,fpul
	mova @(0x124,PC),r0
	fmov @r0,fr2
	mova @(0x124,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	mova @(0x124,PC),r0
	fmov @r0,fr0
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r1,r2
	mov.l r2,@r3
	mov.w @(0x1C,r4),r0
	mov.w @(0xFA,PC),r3
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8c10d81a
	mov 0x00,r0
	mov.w r0,@(0x1C,r4)

loc_8C10D81A:
	rts
	nop

;==============================================
loc_8C10D81E:
	sts.l pr,@-r15
	mov.l @(0x100,PC),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c10d858
	mov r0,r4
	mov.w @(0xD6,PC),r0
	mov 0x01,r3
	mov.l @(0xF4,PC),r1
	mov.l @(0xF0,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(0xC8,PC),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(0x20,r2),r3
	mov.w @(0xC2,PC),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(0xDC,PC),r2
	mov.l @(0xE0,PC),r3
	jsr @r3
	mov 0x0C,r0

loc_8C10D858:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C10D85E:
	add 0xFC,r15
	mov r4,r3
	mov.l @(loc_8C10D938,pc),r1 ; r1 set to 0x8C16644c
	mov.l r4,@r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C10D872:
	mov.l @(loc_8C10D93C,pc),r5 ; r5 set to 0x8C13EA78
	mov r4,r1
	sts.l pr,@-r15
	mov.b @(0x05,r4),r0
	mov r5,r2 ; r2 set to 0x8C13EA78
	add 0x5C,r1
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(loc_8C10D934,pc),r3 ; r3 set to 0x8C1294C8
	shll2 r0
	add r0,r2 ; r2 ??? bc r0 is ???
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.b @(0x05,r4),r0
	mov r4,r1
	mov r5,r2 ; r2 set to 0x8C13EA78
	add 0x68,r1
	add 0x01,r0 ; r0 set to 0x0d
	mov.b r0,@(0x05,r4)
	mov.b @(0x05,r4),r0
	and 0x01,r0
	mov.b r0,@(0x05,r4)
	mov.b @(0x05,r4),r0
	extu.b r0,r0 ; r0 set to 0x0d
	mov r0,r3 ; r3 set to 0x0d
	shll r0 ; r0 set to 0x1a
	add r3,r0 ; r0 set to 0x27
	mov.l @(loc_8C10D934,pc),r3 ; r3 set to 0x8C1294C8
	shll2 r0 ; r0 set to 0x9c
	add r0,r2 ; r2 set to 0x8C13EB14
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mova @(loc_8C10D940,pc),r0  ; r0 set to 0x8C10D940
	mov.l @(loc_8C10D944,pc),r5 ; r5 set to 0x8C28C914
	fmov.s @r0,fr4
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s @(r0,r4),fr2 ; r2 ??? bc r4 is ???
	mov 0x60,r0 ; r0 set to 0x60
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov.s fr2,@r5 ; r5 ??? bc r2 is ???
	fmov.s @(r0,r4),fr3
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s @(r0,r4),fr2
	mov 0x04,r0 ; r0 set to 0x04
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r5)
	mov 0x64,r0 ; r0 set to 0x64
	fmov.s @(r0,r4),fr3
	mov 0x70,r0 ; r0 set to 0x70
	fmov.s @(r0,r4),fr2
	mov 0x08,r0 ; r0 set to 0x08
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r5)
	mov 0x01,r0 ; r0 set to 0x01
	mov.b r0,@(0x04,r4)
	bra loc_8C10D8F2
	lds.l @r15+,pr

;==============================================
loc_8C10D8F2:
	mov.w @(0x1C,r4),r0
	mov.w @(loc_8C10D910,pc),r3 ; r3 set to 0x96
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	cmp/gt r3,r0
	bf loc_8C10D948
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x04,r4)
	rts
	mov.w r0,@(0x1C,r4)

;==============================================
loc_8C10D908:
	#data 0x00F0
loc_8C10D90a:
	#data 0x012C
loc_8C10D90c:
	#data 0x0084
loc_8C10D90e:
	#data 0x0803
loc_8C10D910:
	#data 0x0096
	#align4

loc_8C10D914:
	#data 0x47C00000
loc_8C10D918:
	#data 0x43B40000
loc_8C10D91c:
	#data 0x3F000000
loc_8C10D920:
	#data 0x0000FFFf
loc_8C10D924:
	#data bank04.loc_8c044F12
loc_8C10D928:
	#data loc_8c10D7D8
loc_8C10D92c:
	#data 0x8C26A904
loc_8C10D930:
	#data bank13.loc_8c13ea60
loc_8C10D934:
	#data bank12.loc_8c1294C8
loc_8C10D938:
	#data bank16.loc_8c16644c
loc_8C10D93C:
	#data bank13.loc_8c13ea78
loc_8C10D940:
	#data 0x43160000
loc_8C10D944:
	#data 0x8C28C914

;==============================================
loc_8C10D948:
	mova @(loc_8C10DA60,pc),r0  ; r0 init to 0x8C10DA60
	mov.l @(loc_8C10DA6C,pc),r5 ; r5 set to 0xFFFf
	fmov.s @r0,fr6
	mova @(loc_8C10DA64,pc),r0  ; r0 set to 0x8C10DA64
	fmov.s @r0,fr5 ; r5 ??
	mova @(loc_8C10DA68,pc),r0  ; r0 set to 0x8C10DA68
	fmov.s @r0,fr4
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r4),fr3
	mov 0x60,r0 ; r0 set to 0x60
	mov r4,r3
	add 0x40,r3
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r5,r2
	mov.l r2,@r3
	fmov.s @(r0,r4),fr3
	mov 0x44,r0 ; r0 set to 0x44
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r5,r3
	mov.l r3,@(r0,r4)
	mov 0x64,r0 ; r0 set to 0x64
	fmov.s @(r0,r4),fr3
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	mov 0x48,r0 ; r0 set to 0x48
	mov.l @(loc_8C10DA70,pc),r6 ; r6 set to 0x8C28C914
	ftrc fr3,fpul
	sts fpul,r3
	and r5,r3
	mov.l r3,@(r0,r4)
	mov r4,r3
	mov.w @(0x1C,r4),r0
	add 0x40,r3
	fmov.s @r6,fr2
	mov r0,r2 ; r2 set to 0x48
	lds r2,fpul
	mov.l @r3,r1
	float fpul,fr3
	fmul fr3,fr2 ; r2 ??? bc r3 is ???
	fmul fr6,fr2
	fdiv fr5,fr2
	fadd fr4,fr2
	ftrc fr2,fpul
	sts fpul,r2
	and r5,r2
	add r2,r1
	mov.l r1,@r3
	mov.w @(0x1C,r4),r0
	mov r0,r3 ; r3 set to 0x48
	lds r3,fpul
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @(r0,r6),fr2
	float fpul,fr3
	fmul fr3,fr2
	fmul fr6,fr2
	fdiv fr5,fr2
	mov 0x44,r0 ; r0 set to 0x44
	mov.l @(r0,r4),r2
	fadd fr4,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r5,r3 ; r3 ??? bc r5 is ???
	add r3,r2
	mov.l r2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	mov r0,r3 ; r3 set to 0x44
	lds r3,fpul
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s @(r0,r6),fr2
	mov 0x48,r0 ; r0 set to 0x48
	float fpul,fr3
	mov.l @(r0,r4),r2
	fmul fr3,fr2
	fmul fr6,fr2
	fdiv fr5,fr2
	fadd fr4,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r5,r3 ; r3 ??? bc r5 is ???
	add r3,r2
	mov.l r2,@(r0,r4)
	rts
	nop

;==============================================
loc_8C10DA00:
	sts.l pr,@-r15
	mov.l @(loc_8C10DA74,pc),r3 ; r3 set to 0x8C044F12
	mov 0x05,r5 ; r5 set to 0x05
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C10DA3e
	mov r0,r4 ; r4 ??? bc r0 is ???
	mov.w @(loc_8C10DA58,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8C10DA7C,pc),r1 ; r1 set to 0x8C26A904
	mov.l @(loc_8C10DA78,pc),r2 ; r2 set to 0x8C10D85e
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3 ; r3 ??
	mov r4,r1 ; r1 ??? bc r4 is ???
	mov.w @(loc_8C10DA5A,pc),r0 ; r0 set to 0x84
	add 0x34,r1
	mov.l @r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(0x24,r2),r3
	mov.w @(loc_8C10DA5C,pc),r2 ; r2 set to 0x803
	mov.l r3,@(r0,r4)
	add 0x48,r0 ; r0 set to 0xCc
	mov.l r2,@(r0,r4)
	mov.l @(loc_8C10DA80,pc),r2 ; r2 set to 0x8C13EA6c
	mov.l @(loc_8C10DA84,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	bra loc_8C10DBFc
	lds.l @r15+,pr

loc_8C10DA3E:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C10DA44:
	add 0xFC,r15
	mov r4,r3
	mov.l @(loc_8C10DA88,pc),r1 ; r1 set to 0x8C166454
	mov.l r4,@r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C10DA58:
	#data 0x012c
loc_8C10DA5A:
	#data 0x0084
loc_8C10DA5C:
	#data 0x0803
	#align4

loc_8C10DA60:
	#data 0x47800000
loc_8C10DA64:
	#data 0x43B40000
loc_8C10DA68:
	#data 0x3F000000
loc_8C10DA6C:
	#data 0x0000FFFf
loc_8C10DA70:
	#data 0x8C28C914
loc_8C10DA74:
	#data bank04.loc_8c044F12
loc_8C10DA78:
	#data loc_8c10D85e
loc_8C10DA7C:
	#data 0x8C26A904
loc_8C10DA80:
	#data bank13.loc_8c13ea6c
loc_8C10DA84:
	#data bank12.loc_8c1294C8
loc_8C10DA88:
	#data bank16.loc_8c166454

;==============================================
loc_8C10DA8C:
	mov.l @(loc_8C10DBDC,pc),r5 ; r5 set to 0x8C13EA90
	mov r4,r1
	sts.l pr,@-r15
	mov.b @(0x05,r4),r0
	mov r5,r2 ; r2 set to 0x8C13EA90
	add 0x5C,r1
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(loc_8C10DBE0,pc),r3 ; r3 set to 0x8C1294C8
	shll2 r0
	add r0,r2 ; r2 ??? bc r0 is ???
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.b @(0x05,r4),r0
	mov r4,r1
	mov r5,r2 ; r2 set to 0x8C13EA90
	add 0x68,r1
	add 0x01,r0 ; r0 set to 0x0d
	mov.b r0,@(0x05,r4)
	mov.b @(0x05,r4),r0
	and 0x01,r0
	mov.b r0,@(0x05,r4)
	mov.b @(0x05,r4),r0
	extu.b r0,r0 ; r0 set to 0x0d
	mov r0,r3 ; r3 set to 0x0d
	shll r0 ; r0 set to 0x1a
	add r3,r0 ; r0 set to 0x27
	mov.l @(loc_8C10DBE0,pc),r3 ; r3 set to 0x8C1294C8
	shll2 r0 ; r0 set to 0x9c
	add r0,r2 ; r2 set to 0x8C13EB2c
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mova @(loc_8C10DBE4,pc),r0  ; r0 set to 0x8C10DBE4
	mov.l @(loc_8C10DBE8,pc),r5 ; r5 set to 0x8C28C920
	fmov.s @r0,fr4
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s @(r0,r4),fr2 ; r2 ??? bc r4 is ???
	mov 0x60,r0 ; r0 set to 0x60
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov.s fr2,@r5 ; r5 ??? bc r2 is ???
	fmov.s @(r0,r4),fr3
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s @(r0,r4),fr2
	mov 0x04,r0 ; r0 set to 0x04
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r5)
	mov 0x64,r0 ; r0 set to 0x64
	fmov.s @(r0,r4),fr3
	mov 0x70,r0 ; r0 set to 0x70
	fmov.s @(r0,r4),fr2
	mov 0x08,r0 ; r0 set to 0x08
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r5)
	mov 0x01,r0 ; r0 set to 0x01
	mov.b r0,@(0x04,r4)
	bra loc_8C10DB0c
	lds.l @r15+,pr

loc_8C10DB0C:
	mov.w @(0x1C,r4),r0
	mov.w @(loc_8C10DBDA,pc),r3 ; r3 set to 0x96
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	cmp/gt r3,r0
	bf loc_8C10DB22
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x04,r4)
	rts
	mov.w r0,@(0x1C,r4)

;==============================================
loc_8C10DB22:
	mova @(loc_8C10DBEC,pc),r0  ; r0 init to 0x8C10DBEc
	mov.l @(loc_8C10DBF8,pc),r5 ; r5 set to 0xFFFf
	fmov.s @r0,fr6
	mova @(loc_8C10DBF0,pc),r0  ; r0 set to 0x8C10DBF0
	fmov.s @r0,fr5 ; r5 ??
	mova @(loc_8C10DBF4,pc),r0  ; r0 set to 0x8C10DBF4
	fmov.s @r0,fr4
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r4),fr3
	mov 0x60,r0 ; r0 set to 0x60
	mov r4,r3
	add 0x40,r3
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r5,r2
	mov.l r2,@r3
	fmov.s @(r0,r4),fr3
	mov 0x44,r0 ; r0 set to 0x44
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r5,r3
	mov.l r3,@(r0,r4)
	mov 0x64,r0 ; r0 set to 0x64
	fmov.s @(r0,r4),fr3
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	mov 0x48,r0 ; r0 set to 0x48
	mov.l @(loc_8C10DBE8,pc),r6 ; r6 set to 0x8C28C920
	ftrc fr3,fpul
	sts fpul,r3
	and r5,r3
	mov.l r3,@(r0,r4)
	mov r4,r3
	mov.w @(0x1C,r4),r0
	add 0x40,r3
	fmov.s @r6,fr2
	mov r0,r2 ; r2 set to 0x48
	lds r2,fpul
	mov.l @r3,r1
	float fpul,fr3
	fmul fr3,fr2 ; r2 ??? bc r3 is ???
	fmul fr6,fr2
	fdiv fr5,fr2
	fadd fr4,fr2
	ftrc fr2,fpul
	sts fpul,r2
	and r5,r2
	add r2,r1
	mov.l r1,@r3
	mov.w @(0x1C,r4),r0
	mov r0,r3 ; r3 set to 0x48
	lds r3,fpul
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @(r0,r6),fr2
	float fpul,fr3
	fmul fr3,fr2
	fmul fr6,fr2
	fdiv fr5,fr2
	mov 0x44,r0 ; r0 set to 0x44
	mov.l @(r0,r4),r2
	fadd fr4,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r5,r3 ; r3 ??? bc r5 is ???
	add r3,r2
	mov.l r2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	mov r0,r3 ; r3 set to 0x44
	lds r3,fpul
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s @(r0,r6),fr2
	mov 0x48,r0 ; r0 set to 0x48
	float fpul,fr3
	mov.l @(r0,r4),r2
	fmul fr3,fr2
	fmul fr6,fr2
	fdiv fr5,fr2
	fadd fr4,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r5,r3 ; r3 ??? bc r5 is ???
	add r3,r2
	mov.l r2,@(r0,r4)
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C10DBDA:
	#data 0x0096
	#align4

loc_8C10DBDC:
	#data bank13.loc_8c13ea90
loc_8C10DBE0:
	#data bank12.loc_8c1294C8
loc_8C10DBE4:
	#data 0x43160000
loc_8C10DBE8:
	#data 0x8C28C920
loc_8C10DBEC:
	#data 0x47800000
loc_8C10DBF0:
	#data 0x43B40000
loc_8C10DBF4:
	#data 0x3F000000
loc_8C10DBF8:
	#data 0x0000FFFf

;==============================================
loc_8c10dbfc:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c10dd3c,pc),r3
	mov 0x05,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c10dc80
	mov r0,r4
	mov.w @(loc_8C10DD32,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C10DD44,pc),r1
	mov.l @(loc_8c10dd40,pc),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(loc_8C10DD34,pc),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(0x28,r2),r3
	mov.w @(loc_8C10DD36,pc),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(loc_8c10dd48,pc),r2
	mov.l @(loc_8c10dd4c,pc),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c10dd60,pc),r5
	mova @(loc_8C10DD54,pc),r0
	fmov.s @r0,fr6
	mova @(loc_8C10DD58,pc),r0
	fmov.s @r5,fr3
	mov r4,r3
	fmov.s @r0,fr5
	mova @(loc_8C10DD5C,pc),r0
	fmul fr6,fr3
	fmov.s @r0,fr4
	mov 0x04,r0
	mov.l @(loc_8C10DD50,pc),r6
	add 0x40,r3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r1
	and r6,r1
	mov.l r1,@r3
	fmov.s @(r0,r5),fr3
	mov 0x44,r0
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r6,r3
	mov.l r3,@(r0,r4)
	mov.l @r15,r1
	mov.l r1,@(0x14,r4)
	mov.w @(loc_8C10DD38,pc),r1
	mov.l @r15,r3
	mov.w @(loc_8C10DD3A,pc),r0
	add r3,r1
	mov.l r1,@(r0,r4)

loc_8c10dc80:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C10DC88:
	add 0xFC,r15
	mov r4,r3
	mov.l @(loc_8C10DD64,pc),r1 ; r1 set to 0x8C16645c
	mov.l r4,@r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C10DC9C:
	mov.l @(loc_8C10DD68,pc),r5 ; r5 set to 0x8C13EAB4
	mov r4,r1
	sts.l pr,@-r15
	mov.b @(0x05,r4),r0
	mov r5,r2 ; r2 set to 0x8C13EAB4
	add 0x5C,r1
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(loc_8C10DD4C,pc),r3 ; r3 set to 0x8C1294C8
	shll2 r0
	add r0,r2 ; r2 ??? bc r0 is ???
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.b @(0x05,r4),r0
	mov r4,r1
	mov r5,r2 ; r2 set to 0x8C13EAB4
	add 0x68,r1
	add 0x01,r0 ; r0 set to 0x0d
	mov.b r0,@(0x05,r4)
	mov.b @(0x05,r4),r0
	and 0x01,r0
	mov.b r0,@(0x05,r4)
	mov.b @(0x05,r4),r0
	extu.b r0,r0 ; r0 set to 0x0d
	mov r0,r3 ; r3 set to 0x0d
	shll r0 ; r0 set to 0x1a
	add r3,r0 ; r0 set to 0x27
	mov.l @(loc_8C10DD4C,pc),r3 ; r3 set to 0x8C1294C8
	shll2 r0 ; r0 set to 0x9c
	add r0,r2 ; r2 set to 0x8C13EB50
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mova @(loc_8C10DD6C,pc),r0  ; r0 set to 0x8C10DD6c
	mov.l @(loc_8C10DD70,pc),r5 ; r5 set to 0x8C28C8F0
	fmov.s @r0,fr4
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s @(r0,r4),fr2 ; r2 ??? bc r4 is ???
	mov 0x60,r0 ; r0 set to 0x60
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov.s fr2,@r5 ; r5 ??? bc r2 is ???
	fmov.s @(r0,r4),fr3
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s @(r0,r4),fr2
	mov 0x04,r0 ; r0 set to 0x04
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r5)
	mov 0x64,r0 ; r0 set to 0x64
	fmov.s @(r0,r4),fr3
	mov 0x70,r0 ; r0 set to 0x70
	fmov.s @(r0,r4),fr2
	mov 0x08,r0 ; r0 set to 0x08
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r5)
	mov 0x01,r0 ; r0 set to 0x01
	mov.b r0,@(0x04,r4)
	bra loc_8C10DD1c
	lds.l @r15+,pr

loc_8C10DD1C:
	mov.w @(0x1C,r4),r0
	mov 0x64,r3 ; r3 set to 0x64
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	cmp/gt r3,r0
	bf loc_8C10DD74
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x04,r4)
	rts
	mov.w r0,@(0x1C,r4)

;==============================================
loc_8c10dd32:
	#data 0x012c
loc_8c10dd34:
	#data 0x0084
loc_8c10dd36:
	#data 0x0803
loc_8c10dd38:
	#data 0x0088
loc_8c10dd3a:
	#data 0x00C8
	#align4

loc_8C10DD3C:
	#data bank04.loc_8c044F12
loc_8C10DD40:
	#data loc_8c10DA44
loc_8c10dd44:
	#data 0x8C26A904
loc_8C10DD48:
	#data bank13.loc_8c13eaA8
loc_8C10DD4C:
	#data bank12.loc_8c1294C8
loc_8c10dd50:
	#data 0x0000FFFf
loc_8c10dd54:
	#data 0x47800000
loc_8c10dd58:
	#data 0x43B40000
loc_8c10dd5c:
	#data 0x3F000000
loc_8C10DD60:
	#data bank13.loc_8c13ea90
loc_8C10DD64:
	#data bank16.loc_8c16645c
loc_8C10DD68:
	#data bank13.loc_8c13eaB4
loc_8C10DD6C:
	#data 0x42C80000
loc_8C10DD70:
	#data 0x8C28C8F0

;==============================================
loc_8C10DD74:
	mov 0x5C,r0 ; r0 set to 0x5c
	mov r4,r2
	fmov.s @(r0,r4),fr3
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C10DED8,pc),r5 ; r5 set to 0x8C28C8F0
	fmov.s fr3,@(r0,r4)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r4),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r4)
	mov 0x64,r0 ; r0 set to 0x64
	fmov.s @(r0,r4),fr3
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s fr3,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	add r0,r2
	mov.l r2,@-r15
	mov r4,r2
	mov.w @(0x1C,r4),r0
	fmov.s @r5,fr3
	mov r0,r3 ; r3 set to 0x34
	lds r3,fpul
	mov.l @r15+,r3 ; r3 ??? bc r15 is ???
	mov 0x38,r0 ; r0 set to 0x38
	add r0,r2
	float fpul,fr0
	fmov.s @r3,fr2
	fmac fr0,fr3,fr2
	fmov.s fr2,@r3
	mov.l r2,@-r15
	mov.w @(0x1C,r4),r0
	mov r0,r3 ; r3 set to 0x38
	lds r3,fpul
	mov 0x04,r0 ; r0 set to 0x04
	mov.l @r15+,r3 ; r3 ??? bc r15 is ???
	mov r4,r2
	fmov.s @(r0,r5),fr3
	mov 0x3C,r0 ; r0 set to 0x3c
	float fpul,fr0
	fmov.s @r3,fr2
	add r0,r2
	fmac fr0,fr3,fr2
	fmov.s fr2,@r3
	mov.l r2,@-r15
	mov.w @(0x1C,r4),r0
	mov r0,r3 ; r3 set to 0x3c
	lds r3,fpul
	mov.l @r15+,r3 ; r3 ??? bc r15 is ???
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s @(r0,r5),fr3
	float fpul,fr0
	fmov.s @r3,fr2
	fmac fr0,fr3,fr2
	fmov.s fr2,@r3
	rts
	nop

;==============================================
loc_8C10DDE4:
	sts.l pr,@-r15
	mov.l @(loc_8C10DEDC,pc),r3 ; r3 set to 0x8C044F12
	mov 0x05,r5 ; r5 set to 0x05
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C10DE22
	mov r0,r4 ; r4 ??? bc r0 is ???
	mov.w @(loc_8C10DED2,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8C10DEE4,pc),r1 ; r1 set to 0x8C26A904
	mov.l @(loc_8C10DEE0,pc),r2 ; r2 set to 0x8C10DC88
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3 ; r3 ??
	mov r4,r1 ; r1 ??? bc r4 is ???
	mov.w @(loc_8C10DED4,pc),r0 ; r0 set to 0x84
	add 0x34,r1
	mov.l @r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(0x34,r2),r3
	mov.w @(loc_8C10DED6,pc),r2 ; r2 set to 0x801
	mov.l r3,@(r0,r4)
	add 0x48,r0 ; r0 set to 0xCc
	mov.l r2,@(r0,r4)
	mov.l @(loc_8C10DEEC,pc),r3 ; r3 set to 0x8C1294C8
	mov.l @(loc_8C10DEE8,pc),r2 ; r2 set to 0x8C13EAB4
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	bra loc_8C10DFB8
	lds.l @r15+,pr

loc_8C10DE22:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C10DE28:
	add 0xFC,r15
	mov r4,r3
	mov.l @(loc_8C10DEF0,pc),r1 ; r1 set to 0x8C166464
	mov.l r4,@r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C10DE3C:
	mov.l @(loc_8C10DEF4,pc),r5 ; r5 set to 0x8C13EAD8
	mov r4,r1
	sts.l pr,@-r15
	mov.b @(0x05,r4),r0
	mov r5,r2 ; r2 set to 0x8C13EAD8
	add 0x5C,r1
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(loc_8C10DEEC,pc),r3 ; r3 set to 0x8C1294C8
	shll2 r0
	add r0,r2 ; r2 ??? bc r0 is ???
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.b @(0x05,r4),r0
	mov r4,r1
	mov r5,r2 ; r2 set to 0x8C13EAD8
	add 0x68,r1
	add 0x01,r0 ; r0 set to 0x0d
	mov.b r0,@(0x05,r4)
	mov.b @(0x05,r4),r0
	and 0x01,r0
	mov.b r0,@(0x05,r4)
	mov.b @(0x05,r4),r0
	extu.b r0,r0 ; r0 set to 0x0d
	mov r0,r3 ; r3 set to 0x0d
	shll r0 ; r0 set to 0x1a
	add r3,r0 ; r0 set to 0x27
	mov.l @(loc_8C10DEEC,pc),r3 ; r3 set to 0x8C1294C8
	shll2 r0 ; r0 set to 0x9c
	add r0,r2 ; r2 set to 0x8C13EB74
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mova @(loc_8C10DEF8,pc),r0  ; r0 set to 0x8C10DEF8
	mov.l @(loc_8C10DEFC,pc),r5 ; r5 set to 0x8C28C8Fc
	fmov.s @r0,fr4
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s @(r0,r4),fr2 ; r2 ??? bc r4 is ???
	mov 0x60,r0 ; r0 set to 0x60
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov.s fr2,@r5 ; r5 ??? bc r2 is ???
	fmov.s @(r0,r4),fr3
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s @(r0,r4),fr2
	mov 0x04,r0 ; r0 set to 0x04
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r5)
	mov 0x64,r0 ; r0 set to 0x64
	fmov.s @(r0,r4),fr3
	mov 0x70,r0 ; r0 set to 0x70
	fmov.s @(r0,r4),fr2
	mov 0x08,r0 ; r0 set to 0x08
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r5)
	mov 0x01,r0 ; r0 set to 0x01
	mov.b r0,@(0x04,r4)
	bra loc_8C10DEBc
	lds.l @r15+,pr

loc_8C10DEBC:
	mov.w @(0x1C,r4),r0
	mov 0x64,r3 ; r3 set to 0x64
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	cmp/gt r3,r0
	bf loc_8C10DF00
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x04,r4)
	rts
	mov.w r0,@(0x1C,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C10DED2:
	#data 0x012c
loc_8C10DED4:
	#data 0x0084
loc_8C10DED6:
	#data 0x0801
	#align4

loc_8C10DED8:
	#data 0x8C28C8F0
loc_8C10DEDC:
	#data bank04.loc_8c044F12
loc_8C10DEE0:
	#data loc_8c10DC88
loc_8C10DEE4:
	#data 0x8C26A904
loc_8C10DEE8:
	#data bank13.loc_8c13eaB4
loc_8C10DEEC:
	#data bank12.loc_8c1294C8
loc_8C10DEF0:
	#data bank16.loc_8c166464
loc_8C10DEF4:
	#data bank13.loc_8c13eaD8
loc_8C10DEF8:
	#data 0x42C80000
loc_8C10DEFC:
	#data 0x8C28C8Fc

;==============================================
loc_8C10DF00:
	mova @(loc_8C10E064,pc),r0  ; r0 init to 0x8C10E064
	mov.l @(loc_8C10E070,pc),r5 ; r5 set to 0xFFFf
	fmov.s @r0,fr6
	mova @(loc_8C10E068,pc),r0  ; r0 set to 0x8C10E068
	fmov.s @r0,fr5 ; r5 ??
	mova @(loc_8C10E06C,pc),r0  ; r0 set to 0x8C10E06c
	fmov.s @r0,fr4
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r4),fr3
	mov 0x60,r0 ; r0 set to 0x60
	mov r4,r3
	add 0x40,r3
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r5,r2
	mov.l r2,@r3
	fmov.s @(r0,r4),fr3
	mov 0x44,r0 ; r0 set to 0x44
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r5,r3
	mov.l r3,@(r0,r4)
	mov 0x64,r0 ; r0 set to 0x64
	fmov.s @(r0,r4),fr3
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	mov 0x48,r0 ; r0 set to 0x48
	mov.l @(loc_8C10E074,pc),r6 ; r6 set to 0x8C28C8Fc
	ftrc fr3,fpul
	sts fpul,r3
	and r5,r3
	mov.l r3,@(r0,r4)
	mov r4,r3
	mov.w @(0x1C,r4),r0
	add 0x40,r3
	fmov.s @r6,fr2
	mov r0,r2 ; r2 set to 0x48
	lds r2,fpul
	mov.l @r3,r1
	float fpul,fr3
	fmul fr3,fr2 ; r2 ??? bc r3 is ???
	fmul fr6,fr2
	fdiv fr5,fr2
	fadd fr4,fr2
	ftrc fr2,fpul
	sts fpul,r2
	and r5,r2
	add r2,r1
	mov.l r1,@r3
	mov.w @(0x1C,r4),r0
	mov r0,r3 ; r3 set to 0x48
	lds r3,fpul
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @(r0,r6),fr2
	float fpul,fr3
	fmul fr3,fr2
	fmul fr6,fr2
	fdiv fr5,fr2
	mov 0x44,r0 ; r0 set to 0x44
	mov.l @(r0,r4),r2
	fadd fr4,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r5,r3 ; r3 ??? bc r5 is ???
	add r3,r2
	mov.l r2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	mov r0,r3 ; r3 set to 0x44
	lds r3,fpul
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s @(r0,r6),fr2
	mov 0x48,r0 ; r0 set to 0x48
	float fpul,fr3
	mov.l @(r0,r4),r2
	fmul fr3,fr2
	fmul fr6,fr2
	fdiv fr5,fr2
	fadd fr4,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r5,r3 ; r3 ??? bc r5 is ???
	add r3,r2
	mov.l r2,@(r0,r4)
	rts
	nop
	
;==============================================
loc_8c10dfb8:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c10e078,pc),r3
	mov 0x05,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c10e03c
	mov r0,r4
	mov.w @(loc_8C10E058,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C10E080,pc),r1
	mov.l @(loc_8c10e07c,pc),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(loc_8C10E05A,pc),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(0x38,r2),r3
	mov.w @(loc_8C10E05C,pc),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(loc_8c10e084,pc),r2
	mov.l @(loc_8c10e088,pc),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c10e08c,pc),r5
	mova @(loc_8c10e064,pc),r0
	fmov.s @r0,fr6
	mova @(loc_8c10e068,pc),r0
	fmov.s @r5,fr3
	mov r4,r3
	fmov.s @r0,fr5
	mova @(loc_8c10e06c,pc),r0
	fmul fr6,fr3
	fmov.s @r0,fr4
	mov 0x04,r0
	mov.l @(loc_8c10e070,pc),r6
	add 0x40,r3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r1
	and r6,r1
	mov.l r1,@r3
	fmov.s @(r0,r5),fr3
	mov 0x44,r0
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r6,r3
	mov.l r3,@(r0,r4)
	mov.l @r15,r1
	mov.l r1,@(0x14,r4)
	mov.w @(loc_8C10E05E,pc),r1
	mov.l @r15,r3
	mov.w @(loc_8C10E060,pc),r0
	add r3,r1
	mov.l r1,@(r0,r4)

loc_8c10e03c:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C10E044:
	add 0xFC,r15
	mov r4,r3
	mov.l @(loc_8C10E090,pc),r1 ; r1 set to 0x8C16646c
	mov.l r4,@r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10e058:
	#data 0x012c
loc_8c10e05a:
	#data 0x0084
loc_8c10e05c:
	#data 0x0807
loc_8c10e05e:
	#data 0x0088
loc_8c10e060:
	#data 0x00C8
	#align4

loc_8C10E064:
	#data 0x47800000
loc_8C10E068:
	#data 0x43B40000
loc_8C10E06C:
	#data 0x3F000000
loc_8C10E070:
	#data 0x0000FFFf
loc_8C10E074:
	#data 0x8C28C8Fc
loc_8C10E078:
	#data bank04.loc_8c044F12
loc_8C10E07C:
	#data loc_8c10DE28
loc_8c10e080:
	#data 0x8C26A904
loc_8C10E084:
	#data bank13.loc_8c13eaCc
loc_8C10E088:
	#data bank12.loc_8c1294C8
loc_8C10E08C:
	#data bank13.loc_8c13eaD8
loc_8C10E090:
	#data bank16.loc_8c16646c

;==============================================
loc_8C10E094:
	mov.l @(loc_8C10E1E4,pc),r5 ; r5 set to 0x8C13EAFc
	mov r4,r1
	sts.l pr,@-r15
	mov.b @(0x05,r4),r0
	mov r5,r2 ; r2 set to 0x8C13EAFc
	add 0x5C,r1
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(loc_8C10E1E8,pc),r3 ; r3 set to 0x8C1294C8
	shll2 r0
	add r0,r2 ; r2 ??? bc r0 is ???
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.b @(0x05,r4),r0
	mov r4,r1
	mov r5,r2 ; r2 set to 0x8C13EAFc
	add 0x68,r1
	add 0x01,r0 ; r0 set to 0x0d
	mov.b r0,@(0x05,r4)
	mov.b @(0x05,r4),r0
	and 0x01,r0
	mov.b r0,@(0x05,r4)
	mov.b @(0x05,r4),r0
	extu.b r0,r0 ; r0 set to 0x0d
	mov r0,r3 ; r3 set to 0x0d
	shll r0 ; r0 set to 0x1a
	add r3,r0 ; r0 set to 0x27
	mov.l @(loc_8C10E1E8,pc),r3 ; r3 set to 0x8C1294C8
	shll2 r0 ; r0 set to 0x9c
	add r0,r2 ; r2 set to 0x8C13EB98
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mova @(loc_8C10E1EC,pc),r0  ; r0 set to 0x8C10E1Ec
	mov.l @(loc_8C10E1F0,pc),r5 ; r5 set to 0x8C28C908
	fmov.s @r0,fr4
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s @(r0,r4),fr2 ; r2 ??? bc r4 is ???
	mov 0x60,r0 ; r0 set to 0x60
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov.s fr2,@r5 ; r5 ??? bc r2 is ???
	fmov.s @(r0,r4),fr3
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s @(r0,r4),fr2
	mov 0x04,r0 ; r0 set to 0x04
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r5)
	mov 0x64,r0 ; r0 set to 0x64
	fmov.s @(r0,r4),fr3
	mov 0x70,r0 ; r0 set to 0x70
	fmov.s @(r0,r4),fr2
	mov 0x08,r0 ; r0 set to 0x08
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r5)
	mov 0x01,r0 ; r0 set to 0x01
	mov.b r0,@(0x04,r4)
	bra loc_8C10E114
	lds.l @r15+,pr

loc_8C10E114:
	mov.w @(0x1C,r4),r0
	mov 0x64,r3 ; r3 set to 0x64
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	cmp/gt r3,r0
	bf loc_8C10E12a
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x04,r4)
	rts
	mov.w r0,@(0x1C,r4)

;==============================================
	loc_8C10E12A:
	mova @(loc_8C10E1F4,pc),r0  ; r0 init to 0x8C10E1F4
	mov.l @(loc_8C10E200,pc),r5 ; r5 set to 0xFFFf
	fmov.s @r0,fr6
	mova @(loc_8C10E1F8,pc),r0  ; r0 set to 0x8C10E1F8
	fmov.s @r0,fr5 ; r5 ??
	mova @(loc_8C10E1FC,pc),r0  ; r0 set to 0x8C10E1Fc
	fmov.s @r0,fr4
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r4),fr3
	mov 0x60,r0 ; r0 set to 0x60
	mov r4,r3
	add 0x40,r3
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r5,r2
	mov.l r2,@r3
	fmov.s @(r0,r4),fr3
	mov 0x44,r0 ; r0 set to 0x44
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r5,r3
	mov.l r3,@(r0,r4)
	mov 0x64,r0 ; r0 set to 0x64
	fmov.s @(r0,r4),fr3
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	mov 0x48,r0 ; r0 set to 0x48
	mov.l @(loc_8C10E1F0,pc),r6 ; r6 set to 0x8C28C908
	ftrc fr3,fpul
	sts fpul,r3
	and r5,r3
	mov.l r3,@(r0,r4)
	mov r4,r3
	mov.w @(0x1C,r4),r0
	add 0x40,r3
	fmov.s @r6,fr2
	mov r0,r2 ; r2 set to 0x48
	lds r2,fpul
	mov.l @r3,r1
	float fpul,fr3
	fmul fr3,fr2 ; r2 ??? bc r3 is ???
	fmul fr6,fr2
	fdiv fr5,fr2
	fadd fr4,fr2
	ftrc fr2,fpul
	sts fpul,r2
	and r5,r2
	add r2,r1
	mov.l r1,@r3
	mov.w @(0x1C,r4),r0
	mov r0,r3 ; r3 set to 0x48
	lds r3,fpul
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @(r0,r6),fr2
	float fpul,fr3
	fmul fr3,fr2
	fmul fr6,fr2
	fdiv fr5,fr2
	mov 0x44,r0 ; r0 set to 0x44
	mov.l @(r0,r4),r2
	fadd fr4,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r5,r3 ; r3 ??? bc r5 is ???
	add r3,r2
	mov.l r2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	mov r0,r3 ; r3 set to 0x44
	lds r3,fpul
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s @(r0,r6),fr2
	mov 0x48,r0 ; r0 set to 0x48
	float fpul,fr3
	mov.l @(r0,r4),r2
	fmul fr3,fr2
	fmul fr6,fr2
	fdiv fr5,fr2
	fadd fr4,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r5,r3 ; r3 ??? bc r5 is ???
	add r3,r2
	mov.l r2,@(r0,r4)
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C10E1E4:
	#data bank13.loc_8c13eaFc
loc_8C10E1E8:
	#data bank12.loc_8c1294C8
loc_8C10E1EC:
	#data 0x42C80000
loc_8C10E1F0:
	#data 0x8C28C908
loc_8C10E1F4:
	#data 0x47800000
loc_8C10E1F8:
	#data 0x43B40000
loc_8C10E1FC:
	#data 0x3F000000
loc_8C10E200:
	#data 0x0000FFFf

;==============================================
loc_8c10e204:
	sts.l pr,@-r15
	mov.l @(loc_8c10e330,pc),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c10e276
	mov r0,r4
	mov.w @(loc_8C10E326,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C10E338,pc),r1
	mov.l @(loc_8c10e334,pc),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(loc_8C10E328,pc),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(0x3C,r2),r3
	mov.w @(loc_8C10E32A,pc),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(loc_8c10e33c,pc),r2
	mov.l @(loc_8c10e340,pc),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c10e354,pc),r5
	mova @(loc_8C10E348,pc),r0
	fmov.s @r0,fr6
	mova @(loc_8C10E34C,pc),r0
	fmov.s @r5,fr3
	mov r4,r3
	fmov.s @r0,fr5
	mova @(loc_8C10E350,pc),r0
	fmul fr6,fr3
	fmov.s @r0,fr4
	mov 0x04,r0
	mov.l @(loc_8C10E344,pc),r6
	add 0x40,r3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r1
	and r6,r1
	mov.l r1,@r3
	fmov.s @(r0,r5),fr3
	mov 0x44,r0
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r6,r3
	mov.l r3,@(r0,r4)

loc_8c10e276:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c10e27c:
	mov.b @(0x4,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bf loc_8c10e2be
	mov.w @(0x1C,r4),r0
	mov r4,r3
	mov.l @(0xB8,PC),r1
	add 0x40,r3
	mov r0,r2
	lds r2,fpul
	mova @(0xC4,PC),r0
	fmov @r0,fr2
	mova @(0xB4,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	mova @(0xB4,PC),r0
	fmov @r0,fr0
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r1,r2
	mov.l r2,@r3
	mov.w @(0x1C,r4),r0
	mov.w @(0x7A,PC),r3
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8c10e2be
	mov 0x00,r0
	mov.w r0,@(0x1C,r4)

loc_8c10e2be:
	rts
	nop

;==============================================
loc_8c10e2c2:
	sts.l pr,@-r15
	mov.l @(0x68,PC),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c10e320
	mov r0,r4
	mov.w @(0x4E,PC),r0
	mov 0x01,r3
	mov.l @(0x5C,PC),r1
	mov.l @(0x80,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x40,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0x44,r0
	mov.w @(0x38,PC),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(0x68,PC),r2
	mov.l @(0x44,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x64,PC),r1
	mova @(0x44,PC),r0
	fmov @r0,fr3
	mova @(0x44,PC),r0
	fmov @r1,fr2
	fmov @r0,fr1
	mova @(0x44,PC),r0
	fmul fr3,fr2
	fmov @r0,fr0
	mov.l @(0x30,PC),r1
	mov 0x44,r0
	fdiv fr1,fr2
	fadd fr0,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r1,r3
	mov.l r3,@(r0,r4)

loc_8c10e320:
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C10E326:
	#data 0x012C
loc_8C10E328:
	#data 0x0084
loc_8C10E32A:
	#data 0x0807
loc_8C10E32c:
	#data 0x02D0
	#align4

loc_8c10e330:
	#data bank04.loc_8c044f12
loc_8c10e334:
	#data loc_8c10e044
loc_8C10E338:
	#data 0x8C26A904
loc_8c10e33c:
	#data bank13.loc_8c13eaf0
loc_8c10e340:
	#data bank12.loc_8c1294c8
loc_8C10E344:
	#data 0x0000FFFF
loc_8C10E348:
	#data 0x47800000
loc_8C10E34C:
	#data 0x43B40000
loc_8C10E350:
	#data 0x3F000000
loc_8c10e354:
	#data bank13.loc_8c13eafc
loc_8c10e358:
	#data 0x47000000
loc_8c10e35c:
	#data loc_8C10E27C
loc_8c10e360:
	#data bank13.loc_8C13EB14
loc_8c10e364:
	#data bank13.loc_8C13EB24

;==============================================
loc_8c10e368:
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bf loc_8c10e3b8
	mov.w @(0x1C,r4),r0
	mov r4,r3
	mov.l @(0x150,PC),r1
	add 0x40,r3
	mov r0,r2
	lds r2,fpul
	mova @(0x13C,PC),r0
	mov.w @(0x132,PC),r5
	fmov @r0,fr2
	mova @(0x138,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	mova @(0x138,PC),r0
	fmov @r0,fr0
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r1,r2
	mov.l r2,@r3
	mov.w @(0x1C,r4),r0
	add 0x03,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	cmp/ge r5,r0
	bf loc_8c10e3b8
	mov r5,r0
	nop
	mov.l @(0x11C,PC),r2
	mov 0x1C,r1
	add r4,r1
	jsr @r2
	mov.w @r1,r1
	mov.w r0,@(0x1C,r4)

loc_8c10e3b8:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c10e3be:
	sts.l pr,@-r15
	mov.l @(0x10C,PC),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c10e41c
	mov r0,r4
	mov.w @(0xE4,PC),r0
	mov 0x01,r3
	mov.l @(0x100,PC),r1
	mov.l @(0xFC,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x44,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0x40,r0
	mov.w @(0xCC,PC),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(0xE8,PC),r2
	mov.l @(0xE8,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xE8,PC),r1
	mova @(0xBC,PC),r0
	fmov @r0,fr3
	mova @(0xBC,PC),r0
	fmov @r1,fr2
	fmov @r0,fr1
	mova @(0xBC,PC),r0
	fmul fr3,fr2
	fmov @r0,fr0
	mov.l @(0xB8,PC),r1
	mov 0x44,r0
	fdiv fr1,fr2
	fadd fr0,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r1,r3
	mov.l r3,@(r0,r4)

loc_8c10e41c:
	lds.l @r15+,pr
	rts
	nop

loc_8C10E422:
	add 0xFC,r15
	mov r4,r3
	mov.l @(loc_8C10E4E8,pc),r1 ; r1 set to 0x8C166474
	mov.l r4,@r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C10E436:
	mov.l @(loc_8C10E4EC,pc),r5 ; r5 set to 0x8C13EB74
	mov r4,r1
	sts.l pr,@-r15
	mov.b @(0x05,r4),r0
	mov r5,r2 ; r2 set to 0x8C13EB74
	add 0x5C,r1
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(loc_8C10E4E0,pc),r3 ; r3 set to 0x8C1294C8
	shll2 r0
	add r0,r2 ; r2 ??? bc r0 is ???
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.b @(0x05,r4),r0
	mov r4,r1
	mov r5,r2 ; r2 set to 0x8C13EB74
	add 0x68,r1
	add 0x01,r0 ; r0 set to 0x0d
	mov.b r0,@(0x05,r4)
	mov.b @(0x05,r4),r0
	and 0x01,r0
	mov.b r0,@(0x05,r4)
	mov.b @(0x05,r4),r0
	extu.b r0,r0 ; r0 set to 0x0d
	mov r0,r3 ; r3 set to 0x0d
	shll r0 ; r0 set to 0x1a
	add r3,r0 ; r0 set to 0x27
	mov.l @(loc_8C10E4E0,pc),r3 ; r3 set to 0x8C1294C8
	shll2 r0 ; r0 set to 0x9c
	add r0,r2 ; r2 set to 0x8C13EC10
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mova @(loc_8C10E4F0,pc),r0  ; r0 set to 0x8C10E4F0
	mov.l @(loc_8C10E4F4,pc),r5 ; r5 set to 0x8C28C938
	fmov.s @r0,fr4
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s @(r0,r4),fr2 ; r2 ??? bc r4 is ???
	mov 0x60,r0 ; r0 set to 0x60
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov.s fr2,@r5 ; r5 ??? bc r2 is ???
	fmov.s @(r0,r4),fr3
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s @(r0,r4),fr2
	mov 0x04,r0 ; r0 set to 0x04
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r5)
	mov 0x64,r0 ; r0 set to 0x64
	fmov.s @(r0,r4),fr3
	mov 0x70,r0 ; r0 set to 0x70
	fmov.s @(r0,r4),fr2
	mov 0x08,r0 ; r0 set to 0x08
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r5)
	mov 0x01,r0 ; r0 set to 0x01
	mov.b r0,@(0x04,r4)
	bra loc_8C10E4F8
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10e4b6:
	#data 0x0168
loc_8c10e4b8:
	#data 0x012c
loc_8c10e4ba:
	#data 0x0807
	#align4

loc_8C10E4bc:
	#data 0x47800000
loc_8C10E4c0:
	#data 0x43B40000
loc_8C10E4c4:
	#data 0x3F000000
loc_8C10E4c8:
	#data 0x0000FFFf
loc_8C10E4CC:
	#data bank12.loc_8c1292D4
loc_8C10E4D0:
	#data bank04.loc_8c044F12
loc_8C10E4D4:
	#data loc_8c10E368
loc_8C10E4d8:
	#data 0x8C26A904
loc_8C10E4DC:
	#data bank13.loc_8c13eb2c
loc_8C10E4E0:
	#data bank12.loc_8c1294C8
loc_8C10E4E4:
	#data bank13.loc_8c13eb3c
loc_8C10E4E8:
	#data bank16.loc_8c166474
loc_8C10E4EC:
	#data bank13.loc_8c13eb74
loc_8C10E4F0:
	#data 0x42700000
loc_8C10E4F4:
	#data 0x8C28C938

;==============================================
loc_8C10E4F8:
	mov.w @(0x1C,r4),r0
	mov 0x3C,r3 ; r3 set to 0x3c
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	cmp/gt r3,r0
	bf loc_8C10E50e
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x04,r4)
	rts
	mov.w r0,@(0x1C,r4)

loc_8C10E50E:
	mov 0x5C,r0 ; r0 set to 0x5c
	mov r4,r2
	fmov.s @(r0,r4),fr3
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C10E65C,pc),r5 ; r5 set to 0x8C28C938
	fmov.s fr3,@(r0,r4)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r4),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r4)
	mov 0x64,r0 ; r0 set to 0x64
	fmov.s @(r0,r4),fr3
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s fr3,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	add r0,r2
	mov.l r2,@-r15
	mov r4,r2
	mov.w @(0x1C,r4),r0
	fmov.s @r5,fr3
	mov r0,r3 ; r3 set to 0x34
	lds r3,fpul
	mov.l @r15+,r3 ; r3 ??? bc r15 is ???
	mov 0x38,r0 ; r0 set to 0x38
	add r0,r2
	float fpul,fr0
	fmov.s @r3,fr2
	fmac fr0,fr3,fr2
	fmov.s fr2,@r3
	mov.l r2,@-r15
	mov.w @(0x1C,r4),r0
	mov r0,r3 ; r3 set to 0x38
	lds r3,fpul
	mov 0x04,r0 ; r0 set to 0x04
	mov.l @r15+,r3 ; r3 ??? bc r15 is ???
	mov r4,r2
	fmov.s @(r0,r5),fr3
	mov 0x3C,r0 ; r0 set to 0x3c
	float fpul,fr0
	fmov.s @r3,fr2
	add r0,r2
	fmac fr0,fr3,fr2
	fmov.s fr2,@r3
	mov.l r2,@-r15
	mov.w @(0x1C,r4),r0
	mov r0,r3 ; r3 set to 0x3c
	lds r3,fpul
	mov.l @r15+,r3 ; r3 ??? bc r15 is ???
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s @(r0,r5),fr3
	float fpul,fr0
	fmov.s @r3,fr2
	fmac fr0,fr3,fr2
	fmov.s fr2,@r3
	rts
	nop
	
;==============================================
loc_8C10E57E:
	sts.l pr,@-r15
	mov.l @(loc_8C10E660,pc),r3 ; r3 set to 0x8C044F12
	mov 0x05,r5 ; r5 set to 0x05
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C10E5Bc
	mov r0,r4 ; r4 ??? bc r0 is ???
	mov.w @(loc_8C10E656,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8C10E668,pc),r1 ; r1 set to 0x8C26A904
	mov.l @(loc_8C10E664,pc),r2 ; r2 set to 0x8C10E422
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3 ; r3 ??
	mov r4,r1 ; r1 ??? bc r4 is ???
	mov.w @(loc_8C10E658,pc),r0 ; r0 set to 0x84
	add 0x34,r1
	mov.l @r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(0x2C,r2),r3
	mov.w @(loc_8C10E65A,pc),r2 ; r2 set to 0x801
	mov.l r3,@(r0,r4)
	add 0x48,r0 ; r0 set to 0xCc
	mov.l r2,@(r0,r4)
	mov.l @(loc_8C10E670,pc),r3 ; r3 set to 0x8C1294C8
	mov.l @(loc_8C10E66C,pc),r2 ; r2 set to 0x8C13EB74
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	bra loc_8C10E752
	lds.l @r15+,pr

loc_8C10E5BC:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C10E5C2:
	add 0xFC,r15
	mov r4,r3
	mov.l @(loc_8C10E674,pc),r1 ; r1 set to 0x8C16647c
	mov.l r4,@r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C10E5D6:
	mov.l @(loc_8C10E678,pc),r5 ; r5 set to 0x8C13EBA4
	mov r4,r1
	sts.l pr,@-r15
	mov.b @(0x05,r4),r0
	mov r5,r2 ; r2 set to 0x8C13EBA4
	add 0x5C,r1
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(loc_8C10E670,pc),r3 ; r3 set to 0x8C1294C8
	shll2 r0
	add r0,r2 ; r2 ??? bc r0 is ???
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.b @(0x05,r4),r0
	mov r4,r1
	mov r5,r2 ; r2 set to 0x8C13EBA4
	add 0x68,r1
	add 0x01,r0 ; r0 set to 0x0d
	mov.b r0,@(0x05,r4)
	mov.b @(0x05,r4),r0
	and 0x01,r0
	mov.b r0,@(0x05,r4)
	mov.b @(0x05,r4),r0
	extu.b r0,r0 ; r0 set to 0x0d
	mov r0,r3 ; r3 set to 0x0d
	shll r0 ; r0 set to 0x1a
	add r3,r0 ; r0 set to 0x27
	mov.l @(loc_8C10E670,pc),r3 ; r3 set to 0x8C1294C8
	shll2 r0 ; r0 set to 0x9c
	add r0,r2 ; r2 set to 0x8C13EC40
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mova @(loc_8C10E67C,pc),r0  ; r0 set to 0x8C10E67c
	mov.l @(loc_8C10E680,pc),r5 ; r5 set to 0x8C28C92c
	fmov.s @r0,fr4
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s @(r0,r4),fr2 ; r2 ??? bc r4 is ???
	mov 0x60,r0 ; r0 set to 0x60
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov.s fr2,@r5 ; r5 ??? bc r2 is ???
	fmov.s @(r0,r4),fr3
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s @(r0,r4),fr2
	mov 0x04,r0 ; r0 set to 0x04
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r5)
	mov 0x64,r0 ; r0 set to 0x64
	fmov.s @(r0,r4),fr3
	mov 0x70,r0 ; r0 set to 0x70
	fmov.s @(r0,r4),fr2
	mov 0x08,r0 ; r0 set to 0x08
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r5)
	mov 0x01,r0 ; r0 set to 0x01
	mov.b r0,@(0x04,r4)
	bra loc_8C10E684
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C10E656:
	#data 0x012c
loc_8C10E658:
	#data 0x0084
loc_8C10E65A:
	#data 0x0801
	#align4

loc_8C10E65C:
	#data 0x8C28C938
loc_8C10E660:
	#data bank04.loc_8c044F12
loc_8C10E664:
	#data loc_8c10E422
loc_8C10E668:
	#data 0x8C26A904
loc_8C10E66C:
	#data bank13.loc_8c13eb74
loc_8C10E670:
	#data bank12.loc_8c1294C8
loc_8C10E674:
	#data bank16.loc_8c16647c
loc_8C10E678:
	#data bank13.loc_8c13ebA4
loc_8C10E67C:
	#data 0x42700000
loc_8C10E680:
	#data 0x8C28C92c

;==============================================
loc_8C10E684:
	mov.w @(0x1C,r4),r0
	mov 0x3C,r3 ; r3 set to 0x3c
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	cmp/gt r3,r0
	bf loc_8C10E69a
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x04,r4)
	rts
	mov.w r0,@(0x1C,r4)

;==============================================
loc_8C10E69A:
	mova @(loc_8C10E7E8,pc),r0  ; r0 init to 0x8C10E7E8
	mov.l @(loc_8C10E7F4,pc),r5 ; r5 set to 0xFFFf
	fmov.s @r0,fr6
	mova @(loc_8C10E7EC,pc),r0  ; r0 set to 0x8C10E7Ec
	fmov.s @r0,fr5 ; r5 ??
	mova @(loc_8C10E7F0,pc),r0  ; r0 set to 0x8C10E7F0
	fmov.s @r0,fr4
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r4),fr3
	mov 0x60,r0 ; r0 set to 0x60
	mov r4,r3
	add 0x40,r3
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r5,r2
	mov.l r2,@r3
	fmov.s @(r0,r4),fr3
	mov 0x44,r0 ; r0 set to 0x44
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r5,r3
	mov.l r3,@(r0,r4)
	mov 0x64,r0 ; r0 set to 0x64
	fmov.s @(r0,r4),fr3
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	mov 0x48,r0 ; r0 set to 0x48
	mov.l @(loc_8C10E7F8,pc),r6 ; r6 set to 0x8C28C92c
	ftrc fr3,fpul
	sts fpul,r3
	and r5,r3
	mov.l r3,@(r0,r4)
	mov r4,r3
	mov.w @(0x1C,r4),r0
	add 0x40,r3
	fmov.s @r6,fr2
	mov r0,r2 ; r2 set to 0x48
	lds r2,fpul
	mov.l @r3,r1
	float fpul,fr3
	fmul fr3,fr2 ; r2 ??? bc r3 is ???
	fmul fr6,fr2
	fdiv fr5,fr2
	fadd fr4,fr2
	ftrc fr2,fpul
	sts fpul,r2
	and r5,r2
	add r2,r1
	mov.l r1,@r3
	mov.w @(0x1C,r4),r0
	mov r0,r3 ; r3 set to 0x48
	lds r3,fpul
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @(r0,r6),fr2
	float fpul,fr3
	fmul fr3,fr2
	fmul fr6,fr2
	fdiv fr5,fr2
	mov 0x44,r0 ; r0 set to 0x44
	mov.l @(r0,r4),r2
	fadd fr4,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r5,r3 ; r3 ??? bc r5 is ???
	add r3,r2
	mov.l r2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	mov r0,r3 ; r3 set to 0x44
	lds r3,fpul
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s @(r0,r6),fr2
	mov 0x48,r0 ; r0 set to 0x48
	float fpul,fr3
	mov.l @(r0,r4),r2
	fmul fr3,fr2
	fmul fr6,fr2
	fdiv fr5,fr2
	fadd fr4,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r5,r3 ; r3 ??? bc r5 is ???
	add r3,r2
	mov.l r2,@(r0,r4)
	rts
	nop

;==============================================
loc_8c10e752:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c10e7fc,pc),r3
	mov 0x05,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c10e7d6
	mov r0,r4
	mov.w @(loc_8C10E7DE,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C10E804,pc),r1
	mov.l @(loc_8c10e800,pc),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(loc_8C10E7E0,pc),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(0x30,r2),r3
	mov.w @(loc_8C10E7E2,pc),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(loc_8c10e808,pc),r2
	mov.l @(loc_8c10e80c,pc),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c10e810,pc),r5
	mova @(loc_8c10e7e8,pc),r0
	fmov.s @r0,fr6
	mova @(loc_8c10e7ec,pc),r0
	fmov.s @r5,fr3
	mov r4,r3
	fmov.s @r0,fr5
	mova @(loc_8c10e7f0,pc),r0
	fmul fr6,fr3
	fmov.s @r0,fr4
	mov 0x04,r0
	mov.l @(loc_8c10e7f4,pc),r6
	add 0x40,r3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r1
	and r6,r1
	mov.l r1,@r3
	fmov.s @(r0,r5),fr3
	mov 0x44,r0
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r6,r3
	mov.l r3,@(r0,r4)
	mov.l @r15,r1
	mov.l r1,@(0x14,r4)
	mov.w @(loc_8C10E7E4,pc),r1
	mov.l @r15,r3
	mov.w @(loc_8C10E7E6,pc),r0
	add r3,r1
	mov.l r1,@(r0,r4)

loc_8c10e7d6:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C10E7DE:
	#data 0x012C
loc_8C10E7E0:
	#data 0x0084
loc_8C10E7E2:
	#data 0x0807
loc_8C10E7E4:
	#data 0x0088
loc_8C10E7E6:
	#data 0x00C8
	#align4

loc_8c10e7e8:
	#data 0x47800000
loc_8c10e7ec:
	#data 0x43B40000
loc_8c10e7f0:
	#data 0x3F000000
loc_8c10e7f4:
	#data 0x0000FFFF
loc_8c10e7f8:
	#data 0x8C28C92C
loc_8c10e7fc:
	#data bank04.loc_8c044f12
loc_8c10e800:
	#data loc_8c10e5c2
loc_8C10E804:
	#data 0x8C26A904
loc_8c10e808:
	#data bank13.loc_8c13eb98
loc_8c10e80c:
	#data bank12.loc_8c1294c8
loc_8c10e810:
	#data bank13.loc_8c13eba4

;==============================================
loc_8c10e814:
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bf loc_8c10e864
	mov.w @(0x1C,r4),r0
	mov r4,r3
	mov.l @(0x114,PC),r1
	add 0x40,r3
	mov r0,r2
	lds r2,fpul
	mova @(0x100,PC),r0
	mov.w @(0xF4,PC),r5
	fmov @r0,fr2
	mova @(0xFC,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	mova @(0xFC,PC),r0
	fmov @r0,fr0
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r1,r2
	mov.l r2,@r3
	mov.w @(0x1C,r4),r0
	add 0x02,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	cmp/ge r5,r0
	bf loc_8c10e864
	mov r5,r0
	nop
	mov.l @(0xE0,PC),r2
	mov 0x1C,r1
	add r4,r1
	jsr @r2
	mov.w @r1,r1
	mov.w r0,@(0x1C,r4)

loc_8c10e864:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c10e86a:
	sts.l pr,@-r15
	mov.l @(0xD0,PC),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c10e8c8
	mov r0,r4
	mov.w @(0xA6,PC),r0
	mov 0x01,r3
	mov.l @(0xC4,PC),r1
	mov.l @(0xC0,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x48,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0x3C,r0
	mov.w @(0x8E,PC),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(0xAC,PC),r2
	mov.l @(0xAC,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xAC,PC),r1
	mova @(0x80,PC),r0
	fmov @r0,fr3
	mova @(0x80,PC),r0
	fmov @r1,fr2
	fmov @r0,fr1
	mova @(0x80,PC),r0
	fmul fr3,fr2
	fmov @r0,fr0
	mov.l @(0x7C,PC),r1
	mov 0x44,r0
	fdiv fr1,fr2
	fadd fr0,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r1,r3
	mov.l r3,@(r0,r4)

loc_8c10e8c8:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c10e8ce:
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bf loc_8c10e91e
	mov.w @(0x1C,r4),r0
	mov r4,r3
	mov.l @(0x58,PC),r1
	add 0x40,r3
	mov r0,r2
	lds r2,fpul
	mova @(0x44,PC),r0
	mov.w @(0x3A,PC),r5
	fmov @r0,fr2
	mova @(0x44,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	mova @(0x40,PC),r0
	fmov @r0,fr0
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r1,r2
	mov.l r2,@r3
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	cmp/ge r5,r0
	bf loc_8c10e91e
	mov r5,r0
	nop
	mov.l @(0x28,PC),r2
	mov 0x1C,r1
	add r4,r1
	jsr @r2
	mov.w @r1,r1
	mov.w r0,@(0x1C,r4)

loc_8c10e91e:
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10e924:
	#data 0x0168
loc_8c10e926:
	#data 0x012C
loc_8c10e928:
	#data 0x0807
	#align4

loc_8c10e92c:
	#data 0x47800000
loc_8c10e930:
	#data 0x43B40000
loc_8c10e934:
	#data 0x3F000000
loc_8c10e938:
	#data 0x0000FFFF
loc_8c10e93c:
	#data bank12.loc_8C1292D4
loc_8c10e940:
	#data bank04.loc_8c044f12
loc_8c10e944:
	#data loc_8C10E814
loc_8c10e948:
	#data 0x8C26A904
loc_8c10e94c:
	#data bank13.loc_8C13EB44
loc_8c10e950:
	#data bank12.loc_8C1294C8
loc_8c10e954:
	#data bank13.loc_8C13EB54

;==============================================
loc_8c10e958:
	sts.l pr,@-r15
	mov.l @(0x90,PC),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c10e9b6
	mov r0,r4
	mov.w @(0x78,PC),r0
	mov 0x01,r3
	mov.l @(0x84,PC),r1
	mov.l @(0x7C,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x4C,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0x38,r0
	mov.w @(0x60,PC),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(0x68,PC),r2
	mov.l @(0x6C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x6C,PC),r1
	mova @(0x68,PC),r0
	fmov @r0,fr3
	mova @(0x6C,PC),r0
	fmov @r1,fr2
	fmov @r0,fr1
	mova @(0x68,PC),r0
	fmul fr3,fr2
	fmov @r0,fr0
	mov.l @(0x68,PC),r1
	mov 0x44,r0
	fdiv fr1,fr2
	fadd fr0,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r1,r3
	mov.l r3,@(r0,r4)

loc_8c10e9b6:
	lds.l @r15+,pr
	rts
	nop

loc_8C10E9BC:
	sts.l pr,@-r15
	mov.l @(loc_8C10EA14,pc),r3 ; r3 set to 0x8C10D81e
	jsr @r3
	mov 0x08,r4 ; r4 set to 0x08
	bsr loc_8C10DA00
	mov 0x09,r4 ; r4 set to 0x09
	bsr loc_8C10DDE4
	mov 0x0D,r4 ; r4 set to 0x0d
	bsr loc_8C10E204
	mov 0x0F,r4 ; r4 set to 0x0f
	bsr loc_8C10E2C2
	mov 0x10,r4 ; r4 set to 0x10
	bsr loc_8C10E3Be
	mov 0x11,r4 ; r4 set to 0x11
	bsr loc_8C10E86a
	mov 0x12,r4 ; r4 set to 0x12
	bsr loc_8C10E958
	mov 0x13,r4 ; r4 set to 0x13
	mov 0x0B,r4 ; r4 set to 0x0b
	bra loc_8C10E57e
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10e9e6:
	#data 0x012c
loc_8c10e9e8:
	#data 0x0807
	#align4

loc_8C10E9EC:
	#data bank04.loc_8c044F12
loc_8C10E9F0:
	#data loc_8c10E8Ce
loc_8C10E9F4:
	#data 0x8C26A904
loc_8C10E9F8:
	#data bank13.loc_8c13eb5c
loc_8C10E9FC:
	#data bank12.loc_8c1294C8
loc_8C10Ea00:
	#data 0x47800000
loc_8C10EA04:
	#data bank13.loc_8c13eb6c
loc_8C10EA08:
	#data 0x43B40000
loc_8C10EA0c:
	#data 0x3F000000
loc_8C10EA10:
	#data 0x0000FFFf
loc_8C10EA14:
	#data loc_8c10D81e

;==============================================
loc_8C10EA18:
	mov.w @(0x1C,r4),r0
	mov 0x0A,r3
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8c10ea52
	mov 0x00,r0
	mov.l @(0x98,PC),r1
	mov.w r0,@(0x1C,r4)
	mov.b @(0x4,r4),r0
	mov.l @(0x98,PC),r2
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.b @(0x4,r4),r0
	and 0x03,r0
	mov.b r0,@(0x4,r4)
	mov.b @(0x4,r4),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r1
	mov.l @r2,r0
	shll2 r1
	mov.l @r0,r3
	add r3,r1
	mov.l @r1,r0
	mov.w @(0x6E,PC),r1
	add r4,r1
	mov.l r0,@r1

loc_8C10EA52:
	mov.w @(0x1C,r4),r0
	cmp/pz r0
	bf loc_8c10ea5c
	bra loc_8c10ea66
	and 0x01,r0

loc_8C10EA5C:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8C10EA66:
	tst r0,r0
	bf loc_8c10ea74
	mov.w @(0x52,PC),r0
	mov 0x01,r3
	mov.b @(r0,r4),r2
	xor r3,r2
	mov.b r2,@(r0,r4)

loc_8C10EA74:
	rts
	nop

;==============================================
loc_8c10ea78:
	sts.l pr,@-r15
	mov.l @(loc_8c10eacc,pc),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c10eab4
	mov r0,r4
	mov.w @(loc_8C10EAC0,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C10EAC8,pc),r1
	mov.l @(loc_8c10ead0,pc),r2
	mov.b r3,@(r0,r4)
	add 0x88,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0xD0,r0
	mov.w @(loc_8C10EAC2,pc),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(loc_8c10ead4,pc),r2
	mov.l @(loc_8c10ead8,pc),r3
	jsr @r3
	mov 0x0C,r0

loc_8c10eab4:
	lds.l @r15+,pr
	rts
	nop

loc_8C10EABA:
	bra loc_8C10EA78
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10eabe:
	#data 0x0084
loc_8c10eac0:
	#data 0x012c
loc_8c10eac2:
	#data 0x0801
	#align4

loc_8C10EAC4:
	#data bank13.loc_8c13ebBc
loc_8c10eac8:
	#data 0x8C26A904
loc_8C10EACC:
	#data bank04.loc_8c044F12
loc_8C10EAD0:
	#data loc_8c10EA18
loc_8C10EAD4:
	#data bank13.loc_8c13ebCc
loc_8C10EAD8:
	#data bank12.loc_8c1294C8

;==============================================
loc_8C10EADC:
	sts.l pr,@-r15
	mov.l @(0x100,PC),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c10eb38
	mov r0,r4
	mov.w @(0xE8,PC),r0
	mov 0x01,r3
	mov.l @(0xF4,PC),r1
	mov.l @(0xEC,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(0xDA,PC),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(0x4,r2),r3
	mov.w @(0xD4,PC),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(0xDC,PC),r2
	mov.l @(0xDC,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0xE0,PC),r1
	mova @(0xD8,PC),r0
	fmov @r0,fr3
	mova @(0xDC,PC),r0
	fmov @r1,fr2
	fmov @r0,fr1
	mova @(0xDC,PC),r0
	fmul fr3,fr2
	fmov @r0,fr0
	mov.l @(0xD8,PC),r1
	mov 0x44,r0
	fdiv fr1,fr2
	fadd fr0,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r1,r3
	mov.l r3,@(r0,r4)

loc_8C10EB38:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C10EB3E:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0xC4,PC),r1
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	mov r0,r3
	mov.w @(0x1E,r14),r0
	shll2 r0
	mov.l @(r0,r1),r2
	cmp/ge r2,r3
	bf loc_8c10eb78
	mov 0x00,r4
	mov r4,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov 0x22,r3
	mov.w @(0x1E,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/hs r3,r0
	bf loc_8c10eb78
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8C10EB78:
	mova @(0x84,PC),r0
	mov.l @(0x8C,PC),r1
	fmov @r0,fr15
	mov.w @(0x1C,r14),r0
	mov.l @(0x90,PC),r2
	mov r0,r3
	mov.w @(0x1E,r14),r0
	lds r3,fpul
	shll2 r0
	mov.l @(r0,r1),r3
	mova @(0x7C,PC),r0
	float fpul,fr3
	lds r3,fpul
	mov.l @(0x70,PC),r3
	float fpul,fr2
	fdiv fr2,fr3
	fmov @r0,fr2
	mova @(0x74,PC),r0
	fmov @r0,fr0
	mova @(0x54,PC),r0
	fmac fr0,fr3,fr2
	fmov @r0,fr3
	mova @(0x54,PC),r0
	fmov @r0,fr1
	fmul fr3,fr2
	fdiv fr1,fr2
	fmov fr2,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	mov.w @(0x1E,r14),r0
	mov 0x22,r3
	fmov fr0,fr3
	mov r0,r6
	fmov fr15,fr0
	fmov fr15,fr4
	exts.w r6,r0
	fmac fr0,fr3,fr4
	exts.w r6,r6
	add 0x01,r6
	mov.l @(0x48,PC),r4
	cmp/hs r3,r6
	shll2 r0
	bf.s loc_8c10ec1c
	mov.l @(r0,r4),r5
	bra loc_8c10ec26
	mov.l @r4,r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10ebda:
	#data 0x012C
loc_8c10ebdc:
	#data 0x0084
loc_8c10ebde:
	#data 0x0807
	#align4

loc_8C10EBE0:
	#data bank04.loc_8c044F12
loc_8C10EBE4:
	#data loc_8c10EB3e
loc_8C10EBE8:
	#data 0x8C26A904
loc_8C10EBEC:
	#data bank13.loc_8c13ebD8
loc_8C10EBF0:
	#data bank12.loc_8c1294C8
loc_8C10EBF4:
	#data 0x47800000
loc_8C10EBF8:
	#data bank13.loc_8c13ebE8
loc_8C10EBFC:
	#data 0x43B40000
loc_8C10EC00:
	#data 0x3F000000
loc_8C10EC04:
	#data 0x0000FFFf
loc_8C10EC08:
	#data bank16.loc_8c16650c
loc_8C10EC0c:
	#data 0xC2B40000
loc_8C10EC10:
	#data 0x43340000
loc_8C10EC14:
	#data bank11.loc_8c11E860
loc_8C10EC18:
	#data bank16.loc_8c166484

;==============================================
loc_8C10EC1C:
	mov.w @(0x1E,r14),r0
	mov r0,r6
	shll2 r6
	add r4,r6
	mov.l @(0x4,r6),r6

loc_8C10EC26:
	lds.l @r15+,pr
	mov r14,r4
	fmov @r15+,fr15
	mov.l @r15+,r14
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
	mov.l @(0xD0,PC),r3
	mov r4,r9
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt.s loc_8c10ec58
	fmov fr4,fr15
	cmp/eq 0x0C,r0
	bt loc_8c10ec5e
	bra loc_8c10ecfc
	nop

loc_8C10EC58:
	mov.l @(0xBC,PC),r4
	bra loc_8c10ec60
	nop

loc_8C10EC5E:
	mov.l @(0xBC,PC),r4

loc_8C10EC60:
	mov.l @r4,r13
	mov r4,r3
	mov 0x00,r14
	mul.l r13,r6
	mov r13,r7
	shll2 r7
	add r4,r7
	add 0x08,r7
	sts macl,r11
	mul.l r13,r5
	add 0x08,r3
	mov r11,r2
	shll r11
	add r2,r11
	mov.l r3,@r15
	sts macl,r12
	shll2 r11
	add r7,r11
	mov r12,r2
	shll r12
	add r2,r12
	cmp/pl r13
	shll2 r12
	add r7,r12
	add r3,r14
	mov 0x00,r10
	bf.s loc_8c10ecfc
	mov 0x01,r8

loc_8C10EC98:
	mov r11,r5
	mov r12,r4
	fmov @r5,fr3
	mov 0x04,r0
	fmov @r4,fr4
	mov 0x0C,r6
	fmov fr15,fr0
	fsub fr4,fr3
	fmov fr4,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r15)
	mov 0x04,r0
	fmov @(r0,r5),fr3
	fmov @(r0,r4),fr4
	mov 0x08,r0
	fsub fr4,fr3
	fmov fr4,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r15)
	mov 0x08,r0
	fmov @(r0,r5),fr3
	mov r15,r5
	fmov @(r0,r4),fr4
	mov 0x0C,r0
	fsub fr4,fr3
	fmov fr4,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r15)
	mov.l @r14,r4
	shll2 r4
	mov r6,r0
	nop
	add 0x78,r0
	mov.l @(r0,r9),r3
	add r3,r4
	mov.l @(0x40,PC),r3
	jsr @r3
	add 0x04,r5
	mov.w @(0x2A,PC),r0
	add 0x01,r10
	mov.l @r14+,r3
	cmp/ge r13,r10
	mov.l @(r0,r9),r0
	add 0x0C,r11
	shll2 r3
	mov.l @(r0,r3),r2
	or r8,r2
	mov.l r2,@(r0,r3)
	bf.s loc_8c10ec98
	add 0x0C,r12

loc_8C10ECFC:
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10ed12:
	#data 0x0084
	#align4

loc_8c10ed14:
	#data 0x8C26A95c
loc_8c10ed18:
	#data 0x0CEC5020
loc_8c10ed1c:
	#data 0x0CEC4918
loc_8C10ED20:
	#data bank12.loc_8c129668

;==============================================
loc_8C10ED24:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r8,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr12,@-r15
	mov.w @(0x102,PC),r3
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8c10ed44
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)

loc_8C10ED44:
	mova @(0xF8,PC),r0
	mov r14,r3
	fmov @r0,fr14
	mova @(0xF8,PC),r0
	fmov @r0,fr15
	mov 0x20,r0
	mov.b @(r0,r14),r1
	add 0x40,r3
	tst r1,r1
	bt.s loc_8c10ed5e
	mov r3,r8
	bra loc_8c10ed60
	mov 0x01,r2

loc_8C10ED5E:
	mov 0xFF,r2

loc_8C10ED60:
	lds r2,fpul
	mov.w @(0x1C,r14),r0
	mov.l @(0xE8,PC),r2
	mov r0,r3
	float fpul,fr3
	lds r3,fpul
	mova @(0xD8,PC),r0
	fmov @r0,fr1
	mov.l @(0xD8,PC),r3
	float fpul,fr2
	fmov fr3,fr12
	fmul fr1,fr2
	fdiv fr14,fr2
	fadd fr15,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	fmul fr0,fr12
	mova @(0xCC,PC),r0
	fmov @r0,fr3
	mov.l @(0xC0,PC),r2
	fmul fr3,fr12
	fdiv fr14,fr12
	fadd fr15,fr12
	ftrc fr12,fpul
	sts fpul,r3
	and r2,r3
	mov.l r3,@r8
	lds.l @r15+,pr
	fmov @r15+,fr12
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

;==============================================
loc_8c10eda8:
	mov.l r14,@-r15
	mov 0x05,r5
	sts.l pr,@-r15
	mov.l @(loc_8c10ee58,pc),r3
	mov r4,r14
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c10ee24
	mov r0,r4
	mov.w @(loc_8C10EE38,pc),r0
	mov 0x01,r3
	mov.l @(loc_8c10ee5c,pc),r2
	mov.l @(loc_8C10EE60,pc),r1
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov r14,r2
	mov.l @r1,r3
	shll r2
	shll2 r2
	mov.w @(loc_8C10EE3A,pc),r0
	mov.l @r3,r3
	mov r4,r1
	add 0x34,r1
	add r3,r2
	mov.l @(0x0C,r2),r3
	mov.w @(loc_8C10EE3C,pc),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov r14,r2
	shll r2
	mov r14,r3
	add r3,r2
	mov.l @(loc_8c10ee64,pc),r3
	shll2 r2
	add r3,r2
	mov.l @(loc_8c10ee68,pc),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c10ee6c,pc),r0
	mov r14,r1
	shll2 r1
	mov.l @(loc_8C10EE4C,pc),r2
	fmov.s @(r0,r1),fr3
	mova @(loc_8C10EE48,pc),r0
	fmov.s @r0,fr2
	mova @(loc_8C10EE40,pc),r0
	fmov.s @r0,fr1
	mova @(loc_8C10EE44,pc),r0
	fmul fr2,fr3
	fmov.s @r0,fr0
	mov 0x44,r0
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r2,r3
	mov.l r3,@(r0,r4)
	mov 0x20,r0
	mov.b r14,@(r0,r4)

loc_8c10ee24:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8C10EE2A:
	sts.l pr,@-r15
	bsr loc_8C10EDA8
	mov 0x00,r4 ; r4 set to 0x00
	mov 0x01,r4 ; r4 set to 0x01
	bra loc_8C10EDA8
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10ee36:
	#data 0x0168
loc_8c10ee38:
	#data 0x012c
loc_8c10ee3a:
	#data 0x0084
loc_8c10ee3c:
	#data 0x0807
	#align4

loc_8c10ee40:
	#data 0x43B40000
loc_8c10ee44:
	#data 0x3F000000
loc_8c10ee48:
	#data 0x47800000
loc_8c10ee4c:
	#data 0x0000FFFf
loc_8C10EE50:
	#data bank11.loc_8c11E860
loc_8C10EE54:
	#data 0x49600000
loc_8C10EE58:
	#data bank04.loc_8c044F12
loc_8C10EE5C:
	#data loc_8c10ED24
loc_8c10ee60:
	#data 0x8C26A904
loc_8C10EE64:
	#data bank16.loc_8c166594
loc_8C10EE68:
	#data bank12.loc_8c1294C8
loc_8C10EE6C:
	#data bank16.loc_8c1665Ac

;==============================================
loc_8C10EE70:
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
	mov.w @(0xA0,PC),r3
	add 0x04,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8c10ee9e
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)

loc_8C10EE9E:
	mov.l @(0x98,PC),r3
	mov.w @(0x90,PC),r0
	mov.l @r3,r4
	mov.l @(0x94,PC),r1
	mov.l @r4,r2
	mov.l @(r0,r14),r5
	jsr @r1
	mov.l @(0x20,r2),r4
	mova @(0xA0,PC),r0
	mov.l @(0xA8,PC),r12
	fmov @r0,fr12
	mova @(0x9C,PC),r0
	fmov @r0,fr13
	mova @(0x9C,PC),r0
	mov.l @(0x88,PC),r9
	mov 0x00,r13
	mov.l @(0x80,PC),r8
	mov.l @(0x88,PC),r11
	mov.l @(0x84,PC),r10
	bra loc_8c10ef0e
	fmov @r0,fr14

loc_8C10EEC8:
	jsr @r11
	mov r15,r4
	mov 0x04,r0
	fmov @(r0,r15),fr15
	fcmp/gt fr14,fr15
	bf loc_8c10ef08
	fmov fr15,fr3
	fmul fr15,fr3
	fmov fr3,@-r15
	mov.w @(0x1C,r14),r0
	mov r0,r4
	add r13,r4
	lds r4,fpul
	mova @(0x7C,PC),r0
	fmov @r0,fr1
	float fpul,fr2
	fmul fr1,fr2
	fdiv fr12,fr2
	fadd fr13,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r8
	and r12,r4
	fmov @r15+,fr3
	mova @(0x68,PC),r0
	fmul fr0,fr3
	fmov @r0,fr0
	mov 0x08,r0
	fmov @(r0,r15),fr2
	mov 0x08,r0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r15)

loc_8C10EF08:
	add 0x1E,r13
	jsr @r10
	mov r15,r4

loc_8C10EF0E:
	jsr @r9
	nop
	tst r0,r0
	bt loc_8c10eec8
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
loc_8c10ef32:
	#data 0x0168
loc_8c10ef34:
	#data 0x0084
	#align4

loc_8C10EF38:
	#data 0x8C26A904
loc_8C10EF3C:
	#data loc_8c108060
loc_8C10EF40:
	#data bank11.loc_8c11E860
loc_8C10EF44:
	#data loc_8c108086
loc_8C10EF48:
	#data loc_8c1081B4
loc_8C10EF4C:
	#data loc_8c108168
loc_8C10EF50:
	#data 0x43B40000
loc_8C10EF54:
	#data 0x3F000000
loc_8C10EF58:
	#data 0x41200000
loc_8C10EF5c:
	#data 0x0000FFFf
loc_8C10EF60:
	#data 0x47800000
loc_8C10EF64:
	#data 0x3951B717

;==============================================
loc_8C10EF68:
	sts.l pr,@-r15
	mov.l @(0x90,PC),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c10efee
	mov r0,r4
	mov.w @(0x76,PC),r0
	mov 0x01,r3
	mov.l @(0x84,PC),r1
	mov.l @(0x7C,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(0x68,PC),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(0x1C,r2),r3
	mov.l @(0x74,PC),r2
	mov.l r3,@(r0,r4)
	mov.l @(0x74,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x74,PC),r5
	mova @(0x78,PC),r0
	fmov @r0,fr6
	mova @(0x78,PC),r0
	fmov @r5,fr3
	mov r4,r3
	fmov @r0,fr5
	mova @(0x74,PC),r0
	fmul fr6,fr3
	fmov @r0,fr4
	mov 0x04,r0
	mov.l @(0x5C,PC),r6
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
	mov.w @(0x14,PC),r1
	ftrc fr3,fpul
	sts fpul,r3
	and r6,r3
	mov.l r3,@(r0,r4)
	mov.w @(0xC,PC),r0
	mov.l r1,@(r0,r4)

loc_8C10EFEE:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c10eff4:
	#data 0x012c
loc_8c10eff6:
	#data 0x0084
loc_8c10eff8:
	#data 0x080d
loc_8c10effa:
	#data 0x00CC
	#align4

loc_8C10EFFC:
	#data bank04.loc_8c044F12
loc_8C10F000:
	#data loc_8c10EE70
loc_8C10F004:
	#data 0x8C26A904
loc_8C10F008:
	#data bank16.loc_8c1665B4
loc_8C10F00C:
	#data bank12.loc_8c1294C8
loc_8C10F010:
	#data 0x0000FFFf
loc_8C10F014:
	#data bank16.loc_8c1665C0
loc_8C10F018:
	#data 0x47800000
loc_8C10F01c:
	#data 0x43B40000
loc_8C10F020:
	#data 0x3F000000

;==============================================
loc_8C10F024:
	mov r4,r3
	add 0x40,r3
	mov.l @r3,r2
	add 0xF0,r2
	rts
	mov.l r2,@r3

;==============================================
loc_8C10F030:
	mov.l r14,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0x110,PC),r3
	mov 0x01,r6
	mov.l r4,@(0x4,r15)
	mov.l r5,@r15
	mov 0x05,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c10f128
	mov r0,r14
	mov.w @(0xEE,PC),r0
	mov 0x01,r3
	mov.l @(0x100,PC),r1
	mov.l @(0xFC,PC),r2
	mov.b r3,@(r0,r14)
	mov.l r2,@(0x10,r14)
	mov.l @r1,r3
	mov.w @(0xE2,PC),r0
	mov.l @r3,r2
	mov.l @(0x108,PC),r1
	mov.l @(0x28,r2),r3
	mov.l r3,@(r0,r14)
	mov 0x1E,r3
	mov.l @r15,r2
	mova @(0xEC,PC),r0
	fmov @r0,fr15
	mova @(0xEC,PC),r0
	mul.l r3,r2
	fmov @r0,fr2
	mova @(0xEC,PC),r0
	fmov @r0,fr1
	mova @(0xEC,PC),r0
	fmov @r0,fr0
	sts macl,r4
	lds r4,fpul
	float fpul,fr3
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r4
	and r1,r4
	mov.l @(0xDC,PC),r3
	jsr @r3
	mov.l r4,@(0x8,r15)
	fmul fr15,fr0
	mov.l @(0xD8,PC),r3
	mov 0x38,r0
	fmov fr0,@(r0,r14)
	jsr @r3
	mov.l @(0x8,r15),r4
	fmul fr15,fr0
	mov.l @(0xD0,PC),r2
	mov 0x3C,r0
	fmov fr0,@(r0,r14)
	mov 0x78,r0
	mov.l @r15,r4
	mov r4,r3
	shll r4
	add r3,r4
	mov.l @(0xC4,PC),r3
	shll2 r4
	add r2,r4
	fmov @r4,fr3
	fmov fr3,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r4),fr3
	mov 0x7C,r0
	fmov fr3,@(r0,r14)
	mov 0x08,r0
	fmov @(r0,r4),fr3
	add 0x78,r0
	fmov fr3,@(r0,r14)
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x0C,r0
	bf loc_8c10f118
	mova @(0xA8,PC),r0
	mov.l @(0xA8,PC),r1
	fmov @r0,fr4
	mov 0x78,r0
	fmov @(r0,r14),fr3
	lds r1,fpul
	fmul fr4,fr3
	mov.l @(0xA0,PC),r1
	fmov fr3,@(r0,r14)
	mov 0x7C,r0
	fmov @(r0,r14),fr2
	fmul fr4,fr2
	fmov fr2,@(r0,r14)
	add 0x04,r0
	fmov @(r0,r14),fr3
	fmul fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x78,r0
	fmov @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	lds r1,fpul
	mov.l @(0x88,PC),r1
	fmov fr2,@(r0,r14)
	mov 0x7C,r0
	fmov @(r0,r14),fr1
	fsts fpul,fr2
	fadd fr2,fr1
	lds r1,fpul
	fmov fr1,@(r0,r14)
	add 0x04,r0
	fsts fpul,fr1
	fmov @(r0,r14),fr0
	fadd fr1,fr0
	fmov fr0,@(r0,r14)

loc_8C10F118:
	mov.w @(0x28,PC),r0
	mov.w @(0x24,PC),r3
	mov.l r3,@(r0,r14)
	mov.w @(0x24,PC),r3
	mov.l @(0x4,r15),r2
	mov.w @(0x22,PC),r0
	add r2,r3
	mov.l r3,@(r0,r14)

loc_8C10F128:
	add 0x0C,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;==============================================
loc_8C10F132:
	mov r4,r2
	add 0x40,r2
	mov.l @r2,r3
	add 0x10,r3
	rts
	mov.l r3,@r2

;==============================================
loc_8c10f13e:
	#data 0x012c
loc_8c10f140:
	#data 0x0084
loc_8c10f142:
	#data 0x0C03
loc_8c10f144:
	#data 0x00Cc
loc_8c10f146:
	#data 0x0088
loc_8c10f148:
	#data 0x00C8
	#align4

loc_8C10F14C:
	#data bank04.loc_8c044F12
loc_8C10F150:
	#data loc_8c10F024
loc_8C10F154:
	#data 0x8C26A904
loc_8C10F158:
	#data 0x452AA000
loc_8C10F15c:
	#data 0x47800000
loc_8C10F160:
	#data 0x43B40000
loc_8C10F164:
	#data 0x3F000000
loc_8C10F168:
	#data 0x0000FFFf
loc_8C10F16C:
	#data bank11.loc_8c11E2E0
loc_8C10F170:
	#data bank11.loc_8c11E860
loc_8C10F174:
	#data bank16.loc_8c1665D8
loc_8C10F178:
	#data 0x8C26A95c
loc_8C10F17c:
	#data 0x3E4CCCCd
loc_8C10F180:
	#data 0x3EE66666
loc_8C10F184:
	#data 0x3F0CCCCd
loc_8C10F188:
	#data 0x3F19999a

;==============================================
loc_8C10F18C:
	mov.l r14,@-r15
	mov 0x05,r5
	mov.l r13,@-r15
	mov 0x01,r6
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(0x58,PC),r3
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c10f1e2
	mov r0,r14
	mov.w @(0x44,PC),r0
	mov 0x01,r3
	mov.l @(0x50,PC),r1
	mov.l @(0x4C,PC),r2
	mov.b r3,@(r0,r14)
	mov.l r2,@(0x10,r14)
	mov.l @r1,r3
	mov r14,r1
	mov.w @(0x36,PC),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(0x24,r2),r3
	mov.l @(0x40,PC),r2
	mov.l r3,@(r0,r14)
	mov.l @(0x40,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x40,PC),r1
	mov 0x44,r0
	mov.w @(0x22,PC),r3
	mov 0x00,r13
	mov.l r1,@(r0,r14)
	mov 0x0C,r12
	mov.w @(0x1C,PC),r0
	mov.l r3,@(r0,r14)

loc_8C10F1D6:
	mov r13,r5
	bsr loc_8c10f030
	mov r14,r4
	add 0x01,r13
	cmp/ge r12,r13
	bf loc_8c10f1d6

loc_8C10F1E2:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10f1ec:
	#data 0x012c
loc_8c10f1ee:
	#data 0x0084
loc_8c10f1f0:
	#data 0x0807
loc_8c10f1f2:
	#data 0x00CC
	#align4

loc_8C10F1F4:
	#data bank04.loc_8c044F12
loc_8C10F1F8:
	#data loc_8c10F132
loc_8C10F1FC:
	#data 0x8C26A904
loc_8C10F200:
	#data bank16.loc_8c1665Cc
loc_8C10F204:
	#data bank12.loc_8c1294C8
loc_8C10F208:
	#data 0x00009B07

;==============================================
loc_8C10F20C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r8,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	fmov fr12,@-r15
	mov.w @(0x138,PC),r3
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf.s loc_8c10f230
	mov 0x00,r4
	mov r4,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8C10F230:
	mov.w @(0x128,PC),r3
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf.s loc_8c10f240
	fldi1 fr12
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8C10F240:
	mova @(0x120,PC),r0
	mov r14,r3
	fmov @r0,fr13
	mova @(0x120,PC),r0
	fmov @r0,fr14
	mova @(0x124,PC),r0
	fmov @r0,fr15
	add 0x40,r3
	mov.w @(0x1C,r14),r0
	mov r3,r8
	fadd fr12,fr12
	mov.l @(0x114,PC),r13
	mov r0,r3
	lds r3,fpul
	mov 0x20,r0
	mov.l @(0x100,PC),r12
	mov.b @(r0,r14),r4
	mov 0x5A,r3
	float fpul,fr3
	extu.b r4,r4
	mulu.w r3,r4
	fdiv fr12,fr3
	sts macl,r4
	lds r4,fpul
	float fpul,fr2
	fadd fr2,fr3
	fmov fr3,fr2
	fmul fr13,fr2
	fdiv fr14,fr2
	fmov fr2,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r12
	and r13,r4
	mova @(0xEC,PC),r0
	mov.l @(0xEC,PC),r2
	fmov @r0,fr3
	fmul fr3,fr0
	fdiv fr14,fr0
	fadd fr15,fr0
	ftrc fr0,fpul
	sts fpul,r3
	and r13,r3
	mov.l r3,@r8
	mov.w @(0x1C,r14),r0
	mov r0,r3
	lds r3,fpul
	mov 0x20,r0
	mov.b @(r0,r14),r4
	mov 0x5A,r3
	float fpul,fr2
	extu.b r4,r4
	mulu.w r3,r4
	fdiv fr12,fr2
	sts macl,r4
	lds r4,fpul
	float fpul,fr1
	fadd fr1,fr2
	fmov fr2,fr1
	fmul fr13,fr1
	fdiv fr14,fr1
	fmov fr1,fr2
	fadd fr15,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r2
	and r13,r4
	mova @(0xB0,PC),r0
	mov.l @(0xB4,PC),r2
	fmov @r0,fr3
	mov 0x48,r0
	fmul fr3,fr0
	fdiv fr14,fr0
	fadd fr15,fr0
	ftrc fr0,fpul
	sts fpul,r3
	and r13,r3
	mov.l r3,@(r0,r14)
	mov.b @r2,r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c10f388
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(0x94,PC),r0
	fmov @r0,fr1
	float fpul,fr2
	fdiv fr1,fr2
	fmul fr13,fr2
	fdiv fr14,fr2
	fmov fr2,fr0
	fadd fr15,fr0
	ftrc fr0,fpul
	sts fpul,r4
	jsr @r12
	and r13,r4
	fmov fr0,fr3
	mov 0x78,r0
	fmov fr15,fr0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fdiv fr12,fr3
	fmul fr13,fr3
	fdiv fr14,fr3
	fmov fr3,fr2
	fadd fr15,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r12
	and r13,r4
	fmov fr0,fr3
	mov 0x7C,r0
	fmov fr15,fr0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x1E,r14),r0
	fldi1 fr2
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fdiv fr2,fr3
	fmul fr13,fr3
	fdiv fr14,fr3
	fmov fr3,fr1
	fadd fr15,fr1
	ftrc fr1,fpul
	sts fpul,r4
	jsr @r12
	and r13,r4
	fmov fr15,fr2
	fmov fr0,fr3
	bra loc_8c10f400
	fmov fr15,fr0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10f35a:
	#data 0x02D0
loc_8c10f35c:
	#data 0x0438
	#align4

loc_8C10F360:
	#data bank11.loc_8c11E860
loc_8C10F364:
	#data 0x47800000
loc_8C10F368:
	#data 0x43B40000
loc_8C10F36c:
	#data 0x0000FFFf
loc_8C10F370:
	#data 0x3F000000
loc_8C10F374:
	#data 0x49A00000
loc_8C10F378:
	#data bank11.loc_8c11E2E0
loc_8C10F37c:
	#data 0x4A700000
loc_8C10F380:
	#data 0x8C26A95c
loc_8C10F384:
	#data 0x40400000

;==============================================
loc_8C10F388:
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(0x144,PC),r0
	fmov @r0,fr1
	float fpul,fr2
	fdiv fr1,fr2
	fmul fr13,fr2
	fdiv fr14,fr2
	fmov fr2,fr0
	fadd fr15,fr0
	ftrc fr0,fpul
	sts fpul,r4
	jsr @r12
	and r13,r4
	mova @(0x130,PC),r0
	fmov fr0,fr3
	fmov @r0,fr0
	mov 0x78,r0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fdiv fr12,fr3
	fmul fr13,fr3
	fdiv fr14,fr3
	fmov fr3,fr2
	fadd fr15,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r12
	and r13,r4
	mova @(0x108,PC),r0
	fmov fr0,fr3
	fmov @r0,fr0
	mov 0x7C,r0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x1E,r14),r0
	fldi1 fr2
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fdiv fr2,fr3
	fmul fr13,fr3
	fdiv fr14,fr3
	fmov fr3,fr1
	fadd fr15,fr1
	ftrc fr1,fpul
	sts fpul,r4
	jsr @r12
	and r13,r4
	mova @(0xDC,PC),r0
	fmov fr0,fr3
	fmov @r0,fr0
	fmov fr15,fr2

loc_8C10F400:
	fmac fr0,fr3,fr2
	mov.w @(0xC2,PC),r0
	fmov fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1E,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	lds.l @r15+,pr
	fmov @r15+,fr12
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r8
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c10f426:
	mov.l r14,@-r15
	mov 0x05,r5
	sts.l pr,@-r15
	mov.l @(loc_8c10f4dc,pc),r3
	mov r4,r14
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c10f4a6
	mov r0,r4
	mov.w @(loc_8C10F4CA,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C10F4E4,pc),r1
	mov r14,r5
	mov.l @(loc_8c10f4e0,pc),r2
	shll r5
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov r14,r2
	mov.l @r1,r3
	shll2 r2
	mov.w @(loc_8C10F4CC,pc),r0
	mov r4,r1
	mov.l @r3,r3
	add 0x34,r1
	add r3,r2
	add 0x58,r2
	mov.l @r2,r3
	mov.l @(loc_8c10f4e8,pc),r2
	mov.l r3,@(r0,r4)
	mov r14,r3
	add r3,r5
	mov.l @(loc_8c10f4ec,pc),r3
	shll2 r5
	add r5,r2
	jsr @r3
	mov 0x0C,r0
	mova @(loc_8C10F4F0,pc),r0
	mov.l @(loc_8C10F500,pc),r2
	fmov.s @r0,fr3
	mov.l @(loc_8c10f4f4,pc),r0
	mov.w @(loc_8C10F4CE,pc),r1
	fmov.s @(r0,r5),fr2
	mova @(loc_8C10F4F8,pc),r0
	fmov.s @r0,fr1
	mova @(loc_8C10F4FC,pc),r0
	fmul fr3,fr2
	fmov.s @r0,fr0
	mov 0x44,r0
	fdiv fr1,fr2
	fadd fr0,fr2
	ftrc fr2,fpul
	sts fpul,r3
	and r2,r3
	mov.l r3,@(r0,r4)
	mov.w @(loc_8C10F4D0,pc),r0
	mov.l r1,@(r0,r4)
	mov 0x20,r0
	mov.b r14,@(r0,r4)
	mov.w @(loc_8C10F4D2,pc),r0
	muls.w r0,r14
	sts macl,r0
	mov.w r0,@(0x1E,r4)

loc_8c10f4a6:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8C10F4AC:
	mov.l r14,@-r15
	mov 0x00,r14 ; r14 set to 0x00
	mov.l r13,@-r15
	mov 0x04,r13 ; r13 set to 0x04
	sts.l pr,@-r15

loc_8C10F4B6:
	bsr loc_8C10F426
	mov r14,r4 ; r4 set to 0x00
	add 0x01,r14 ; r14 set to 0x01
	cmp/ge r13,r14
	bf loc_8C10F4B6
	lds.l @r15+,pr
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10f4c8:
	#data 0x0080
loc_8c10f4ca:
	#data 0x012C
loc_8c10f4cc:
	#data 0x0084
loc_8c10f4ce:
	#data 0x0C0B
loc_8c10f4d0:
	#data 0x00Cc
loc_8c10f4d2:
	#data 0x010E
	#align4

loc_8C10F4D4:
	#data 0x40400000
loc_8C10F4D8:
	#data 0x3DCCCCCd
loc_8C10F4DC:
	#data bank04.loc_8c044F12
loc_8C10F4E0:
	#data loc_8c10F20c
loc_8c10f4e4:
	#data 0x8C26A904
loc_8C10F4E8:
	#data bank16.loc_8c166668
loc_8C10F4EC:
	#data bank12.loc_8c1294C8
loc_8c10f4f0:
	#data 0x47800000
loc_8C10F4F4:
	#data bank16.loc_8c16669c
loc_8c10f4f8:
	#data 0x43B40000
loc_8c10f4fc:
	#data 0x3F000000
loc_8c10f500:
	#data 0x0000FFFf

;==============================================
loc_8C10F504:
	bra loc_8C10F7D0
	nop

;==============================================
loc_8C10F508:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	mov 0x05,r5
	mov.l @(0x118,PC),r3
	mov r4,r14
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c10f5a0
	mov r0,r4
	mov.w @(0xFC,PC),r0
	mov 0x01,r3
	mov.l @(0x108,PC),r2
	mov r14,r5
	mov.l @(0x108,PC),r1
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov r14,r2
	mov.l @r1,r3
	shll r2
	shll2 r2
	mov.w @(0xE8,PC),r0
	mov.l @r3,r3
	shll r5
	mov r4,r1
	add 0x34,r1
	add r3,r2
	mov.l @(0x10,r2),r3
	mov.l @(0xF0,PC),r2
	mov.l r3,@(r0,r4)
	mov r14,r3
	add r3,r5
	mov.l @(0xEC,PC),r3
	shll2 r5
	add r5,r2
	jsr @r3
	mov 0x0C,r0
	mova @(0xE4,PC),r0
	mov.l @(0xF4,PC),r6
	fmov @r0,fr6
	mova @(0xE4,PC),r0
	fmov @r0,fr5
	mova @(0xE4,PC),r0
	fmov @r0,fr4
	mov 0x04,r0
	add r5,r6
	mov.l @(0xE0,PC),r7
	fmov @(r0,r6),fr3
	mov 0x44,r0
	mov.w @(0xB2,PC),r2
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r7,r3
	mov.l r3,@(r0,r4)
	mov 0x08,r0
	fmov @(r0,r6),fr3
	mov 0x48,r0
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r7,r3
	mov.l r3,@(r0,r4)
	mov.w @(0x90,PC),r0
	mov.l r2,@(r0,r4)
	mov 0x20,r0
	mov.b r14,@(r0,r4)
	mov.l @r15,r3
	mov.l r3,@(0x14,r4)

loc_8C10F5A0:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C10F5A8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	fmov.s fr13,@-r15
	fmov.s fr12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mova @(loc_8C10F644,pc),r0  ; r0 init to 0x8C10F644
	mov r4,r14
	fmov.s @r0,fr13
	mova @(loc_8C10F648,pc),r0  ; r0 set to 0x8C10F648
	fmov.s @r0,fr14
	mova @(loc_8C10F640,pc),r0  ; r0 set to 0x8C10F640
	fmov.s @r0,fr15
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C10F650,pc),r11 ; r11 set to 0x8C1666F8
	extu.b r0,r0 ; r0 set to 0x40
	mov.l @(loc_8C10F64C,pc),r13 ; r13 set to 0xFFFf
	cmp/eq 0x00,r0
	bt/s loc_8C10F5F4
	mov 0x00,r12 ; r12 set to 0x00
	cmp/eq 0x01,r0
	bt loc_8C10F654
	cmp/eq 0x02,r0
	bt loc_8C10F686
	cmp/eq 0x03,r0
	bf loc_8C10F5E8
	bra loc_8C10F72e
	nop

loc_8C10F5E8:
	cmp/eq 0x04,r0
	bf loc_8C10F5F0
	bra loc_8C10F74a
	nop

loc_8C10F5F0:
	bra loc_8C10F7A4
	nop

loc_8C10F5F4:
	mov.l @(0x14,r14),r3
	mov.w @(0x1E,r3),r0
	tst r0,r0
	bt loc_8C10F600
	bra loc_8C10F7A4
	nop

loc_8C10F600:
	mov.l @(0x14,r14),r4
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf/s loc_8C10F610
	mov r0,r4
	bra loc_8C10F73c
	nop

loc_8C10F610:
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r2
	extu.b r2,r2
	cmp/eq r2,r4
	bt loc_8C10F61e
	bra loc_8C10F7A4
	nop

loc_8C10F61E:
	bra loc_8C10F73c
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10f622:
	#data 0x012c
loc_8c10f624:
	#data 0x0084
loc_8c10f626:
	#data 0x080D
loc_8c10f628:
	#data 0x00Cc
	#align4

loc_8C10F62C:
	#data bank04.loc_8c044F12
loc_8C10F630:
	#data loc_8c10F5A8
loc_8C10F634:
	#data 0x8C26A904
loc_8C10F638:
	#data bank16.loc_8c1666E0
loc_8C10F63C:
	#data bank12.loc_8c1294C8
loc_8C10F640:
	#data 0x47800000
loc_8C10F644:
	#data 0x43B40000
loc_8C10F648:
	#data 0x3F000000
loc_8C10F64C:
	#data 0x0000FFFf
loc_8C10F650:
	#data bank16.loc_8c1666F8

;==============================================
loc_8C10F654:
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r2
	mov.l @(loc_8C10F7BC,pc),r0 ; r0 set to 0x8C166728
	extu.b r2,r2
	shll2 r2
	fmov.s @(r0,r2),fr3
	mov 0x44,r0 ; r0 set to 0x44
	mov.l @(r0,r14),r2
	fmul fr15,fr3
	fdiv fr13,fr3
	fadd fr14,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r13,r3
	add r3,r2
	mov.l r2,@(r0,r14)
	mov 0x14,r3 ; r3 set to 0x14
	mov.w @(0x1C,r14),r0
	add 0x01,r0 ; r0 set to 0x45
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bt loc_8C10F6Fc
	bra loc_8C10F7A4
	nop

loc_8c10f686:
	mov 0x20,r0
	mov.b @(r0,r14),r1
	mov 0x1C,r0
	extu.b r1,r1
	mov r1,r3
	shll r1
	add r3,r1
	shll2 r1
	add r11,r1
	fmov.s @(r0,r1),fr3
	fmov.s fr3,@-r15
	mov.w @(0x1C,r14),r0
	mov.l r0,@(0x04,r15)
	neg r0,r0
	mov.l @(0x04,r15),r4
	add 0x3C,r0
	lds r0,fpul
	mova @(loc_8C10F7C0,pc),r0
	mov r4,r3
	shll2 r4
	shll r4
	fmov.s @r0,fr0
	add r3,r4
	float fpul,fr3
	shll2 r4
	lds r4,fpul
	float fpul,fr2
	fdiv fr0,fr3
	fmov fr2,fr1
	fmul fr15,fr1
	fdiv fr13,fr1
	fmov fr3,fr12
	fmov fr1,fr2
	fadd fr14,fr2
	mov.l @(loc_8c10f7c4,pc),r3
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r3
	and r13,r4
	fmul fr0,fr12
	mova @(loc_8C10F7C8,pc),r0
	fmov.s @r15+,fr3
	fmov.s @r0,fr0
	mov 0x44,r0
	fmac fr0,fr12,fr3
	fmul fr15,fr3
	fdiv fr13,fr3
	fadd fr14,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r13,r3
	mov.l r3,@(r0,r14)
	mov 0x3C,r3
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8c10f7a4

loc_8C10F6FC:
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov r12,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3
	mov 0x1C,r0 ; r0 set to 0x1c
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	add r3,r11
	fmov.s @(r0,r11),fr3
	mov 0x44,r0 ; r0 set to 0x44
	fmul fr15,fr3
	fdiv fr13,fr3
	fadd fr14,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r13,r3
	bra loc_8C10F7A4
	mov.l r3,@(r0,r14)

loc_8c10f72e:
	mov.w @(0x1C,r14),r0
	mov 0x3C,r3
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8c10f7a4

loc_8C10F73C:
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov r12,r0
	nop
	bra loc_8C10F7A4
	mov.w r0,@(0x1C,r14)

loc_8c10f74a:
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov.l @(loc_8c10f7cc,pc),r0
	extu.b r2,r2
	shll2 r2
	fmov.s @(r0,r2),fr3
	mov 0x44,r0
	mov.l @(r0,r14),r2
	fmul fr15,fr3
	fdiv fr13,fr3
	fadd fr14,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r13,r3
	add r3,r2
	mov.l r2,@(r0,r14)
	mov 0x64,r3
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8c10f7a4
	mov r12,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov.b r0,@(0x04,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov 0x04,r0
	extu.b r2,r2
	mov r2,r1
	shll r2
	add r1,r2
	shll2 r2
	add r2,r11
	fmov.s @(r0,r11),fr3
	mov 0x44,r0
	fmul fr15,fr3
	fdiv fr13,fr3
	fadd fr14,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r13,r2
	mov.l r2,@(r0,r14)

loc_8C10F7A4:
	add 0x04,r15
	lds.l @r15+,pr
	fmov.s @r15+,fr12
	fmov.s @r15+,fr13
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C10F7BC:
	#data bank16.loc_8c166728
loc_8c10f7c0:
	#data 0x42700000
loc_8C10F7C4:
	#data bank11.loc_8c11E860
loc_8c10f7c8:
	#data 0x41200000
loc_8C10F7CC:
	#data bank16.loc_8c166730

;==============================================
loc_8c10f7d0:
	mov.l r14,@-r15
	mov 0x05,r5
	mov.l r13,@-r15
	mov 0x01,r6
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c10f86c,pc),r3
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c10f85a
	mov r0,r14
	mov.w @(loc_8C10F864,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C10F874,pc),r1
	mov.l @(loc_8c10f870,pc),r2
	mov.b r3,@(r0,r14)
	mov 0x68,r0
	mov.l r2,@(0x10,r14)
	mov.l @r1,r3
	mov r14,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0x1C,r0
	mov.l @(loc_8c10f878,pc),r2
	mov.l r3,@(r0,r14)
	mov.l @(loc_8c10f87c,pc),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(loc_8c10f880,pc),r5
	mova @(loc_8C10F888,pc),r0
	fmov.s @r0,fr6
	mova @(loc_8C10F88C,pc),r0
	fmov.s @r5,fr3
	mov r14,r3
	fmov.s @r0,fr5
	mova @(loc_8C10F890,pc),r0
	fmul fr6,fr3
	fmov.s @r0,fr4
	mov 0x04,r0
	mov.l @(loc_8C10F884,pc),r4
	add 0x40,r3
	mov 0x02,r12
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r1
	and r4,r1
	mov.l r1,@r3
	fmov.s @(r0,r5),fr3
	mov 0x44,r0
	mov.w @(loc_8C10F866,pc),r1
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r4,r3
	mov.l r3,@(r0,r14)
	mov.w @(loc_8C10F868,pc),r0
	mov.l r1,@(r0,r14)
	mov 0x00,r13

loc_8c10f84e:
	mov r14,r5
	bsr loc_8c10f508
	mov r13,r4
	add 0x01,r13
	cmp/ge r12,r13
	bf loc_8c10f84e

loc_8c10f85a:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C10F864:
	#data 0x012C
loc_8C10F866:
	#data 0x0C07
loc_8C10F868:
	#data 0x00CC
	#align4

loc_8c10f86c:
	#data bank04.loc_8c044f12
loc_8c10f870:
	#data loc_8c10f894
loc_8C10F874:
	#data 0x8C26A904
loc_8c10f878:
	#data bank16.loc_8c1666c8
loc_8c10f87c:
	#data bank12.loc_8c1294c8
loc_8c10f880:
	#data bank16.loc_8c1666d4
loc_8C10F884:
	#data 0x0000FFFF
loc_8C10F888:
	#data 0x47800000
loc_8C10F88C:
	#data 0x43B40000
loc_8C10F890:
	#data 0x3F000000

;==============================================
loc_8c10f894:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	mov.w @(0xEC,PC),r3
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8c10f8b6
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)

loc_8c10f8b6:
	mova @(0xE4,PC),r0
	mov.l @(0xE4,PC),r13
	fmov @r0,fr13
	mova @(0xE4,PC),r0
	fmov @r0,fr14
	mova @(0xE4,PC),r0
	fmov @r0,fr15
	mov.w @(0x1C,r14),r0
	mov.l @(0xD0,PC),r12
	mov r0,r3
	lds r3,fpul
	mova @(0xDC,PC),r0
	fmov @r0,fr2
	float fpul,fr3
	fdiv fr2,fr3
	fmul fr14,fr3
	fdiv fr13,fr3
	fmov fr3,fr1
	fadd fr15,fr1
	ftrc fr1,fpul
	sts fpul,r4
	jsr @r12
	and r13,r4
	fmov fr0,fr3
	mov 0x78,r0
	fmov fr15,fr0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	fldi1 fr2
	fadd fr2,fr2
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fdiv fr2,fr3
	fmul fr14,fr3
	fdiv fr13,fr3
	fmov fr3,fr1
	fadd fr15,fr1
	ftrc fr1,fpul
	sts fpul,r4
	jsr @r12
	and r13,r4
	fmov fr0,fr3
	mov 0x7C,r0
	fmov fr15,fr0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	fldi1 fr2
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fdiv fr2,fr3
	fmul fr14,fr3
	fdiv fr13,fr3
	fmov fr3,fr1
	fadd fr15,fr1
	ftrc fr1,fpul
	sts fpul,r4
	jsr @r12
	and r13,r4
	fmov fr0,fr3
	fmov fr15,fr0
	fmov fr15,fr2
	fmac fr0,fr3,fr2
	mov.w @(0x52,PC),r0
	mov.w @(0x52,PC),r3
	fmov fr2,@(r0,r14)
	mov.w @(0x1E,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/ge r3,r0
	bf loc_8c10f982
	mov.l @(0x5C,PC),r2
	mov 0x00,r0
	jsr @r2
	mov.w r0,@(0x1E,r14)
	mov.l @(0x58,PC),r3
	mov r0,r1
	jsr @r3
	mov 0x03,r0
	mov.b r0,@(0x4,r14)
	mov.b @(0x4,r14),r0
	mov.l @(0x50,PC),r2
	tst r0,r0
	bf.s loc_8c10f972
	fmov @r2,fr4
	mova @(0x4C,PC),r0
	fmov @r0,fr3
	fadd fr3,fr4

loc_8c10f972:
	fmul fr14,fr4
	mov 0x44,r0
	fdiv fr13,fr4
	fadd fr15,fr4
	ftrc fr4,fpul
	sts fpul,r3
	and r13,r3
	mov.l r3,@(r0,r14)


loc_8c10f982:
	lds.l @r15+,pr
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10f992:
	#data 0x0438
loc_8c10f994:
	#data 0x0080
loc_8c10f996:
	#data 0x0258
	#align4

loc_8c10f998:
	#data bank11.loc_8c11e860
loc_8c10f99c:
	#data 0x43B40000
loc_8c10f9a0:
	#data 0x0000FFFF
loc_8c10f9a4:
	#data 0x47800000
loc_8c10f9a8:
	#data 0x3F000000
loc_8c10f9ac:
	#data 0x40400000
loc_8c10f9b0:
	#data bank11.loc_8c11e730
loc_8c10f9b4:
	#data bank12.loc_8c1292d4
loc_8c10f9b8:
	#data bank16.loc_8c1666d8
loc_8c10f9bc:
	#data 0x43340000

;==============================================
loc_8C10F9C0:
	mov r4,r3
	add 0x40,r3
	mov.l @r3,r1
	mov.w @(loc_8C10FADE,pc),r2 ; r2 set to 0x200
	add r2,r1
	rts
	mov.l r1,@r3

;==============================================
loc_8C10F9CE:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x118,PC),r3
	mov 0x01,r6
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov 0x05,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c10fa2a
	mov r0,r4
	mov.w @(0xF6,PC),r0
	mov 0x01,r3
	mov.l @(0x108,PC),r1
	mov.l @(0x100,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x74,r0
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0x10,r0
	mov.l r3,@(r0,r4)
	mov.l @(0x4,r15),r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(0xEC,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(0xE8,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.w @(0xCA,PC),r0
	mov.w @(0xC6,PC),r1
	mov.l r1,@(r0,r4)
	mov.l @r15,r3
	mov.w @(0xC6,PC),r0
	mov.l r3,@(0x14,r4)
	mov.w @(0xC0,PC),r3
	mov.l @r15,r2
	add r2,r3
	mov.l r3,@(r0,r4)

loc_8C10FA2A:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C10FA32:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	fmov fr12,@-r15
	mov.w @(0x9C,PC),r3
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8c10fa4e
	mov.w @(0x9C,PC),r0
	mov.w r0,@(0x1C,r14)

loc_8C10FA4E:
	mova @(0xB0,PC),r0
	mov.l @(0xB8,PC),r13
	fmov @r0,fr13
	mova @(0xAC,PC),r0
	fmov @r0,fr14
	mova @(0xAC,PC),r0
	fmov @r0,fr15
	mov.w @(0x1C,r14),r0
	add 0x5A,r0
	lds r0,fpul
	mov 0x44,r0
	float fpul,fr3
	fmul fr13,fr3
	fdiv fr14,fr3
	fadd fr15,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r13,r3
	mov.l r3,@(r0,r14)
	mova @(0x98,PC),r0
	fmov @r0,fr12
	mov.w @(0x1C,r14),r0
	mov r0,r3
	lds r3,fpul
	mov.l @(0x94,PC),r3
	float fpul,fr3
	fmul fr13,fr3
	fdiv fr14,fr3
	fmov fr3,fr2
	fadd fr15,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r3
	and r13,r4
	mov.l @(0x84,PC),r3
	mov 0x34,r0
	fmov fr0,fr3
	fmov @r3,fr2
	fmov fr12,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	mov r0,r2
	lds r2,fpul
	mov.l @(0x74,PC),r2
	float fpul,fr3
	fmul fr13,fr3
	fdiv fr14,fr3
	fmov fr3,fr2
	fadd fr15,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r2
	and r13,r4
	mov.l @(0x64,PC),r3
	mov 0x3C,r0
	fmov fr0,fr3
	fmov @r3,fr2
	fmov fr12,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	fmov @r15+,fr12
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c10fade:
	#data 0x0200
loc_8c10fae0:
	#data 0x012c
loc_8c10fae2:
	#data 0x0803
loc_8c10fae4:
	#data 0x00Cc
loc_8c10fae6:
	#data 0x0088
loc_8c10fae8:
	#data 0x00C8
loc_8c10faea:
	#data 0x00B4
	#align4

loc_8C10FAEC:
	#data bank04.loc_8c044F12
loc_8C10FAF0:
	#data loc_8c10F9C0
loc_8C10FAF4:
	#data 0x8C26A904
loc_8C10FAF8:
	#data bank16.loc_8c166744
loc_8C10FAFC:
	#data bank12.loc_8c1294C8
loc_8C10Fb00:
	#data 0x47800000
loc_8C10Fb04:
	#data 0x43B40000
loc_8C10Fb08:
	#data 0x3F000000
loc_8C10Fb0c:
	#data 0x0000FFFf
loc_8C10Fb10:
	#data 0x44548000
loc_8C10FB14:
	#data bank11.loc_8c11E860
loc_8C10FB18:
	#data bank16.loc_8c166738
loc_8C10FB1C:
	#data bank11.loc_8c11E2E0
loc_8C10FB20:
	#data bank16.loc_8c166740

;==============================================
loc_8C10FB24:
	mov.l r14,@-r15
	mov 0x05,r5
	mov.l r13,@-r15
	mov 0x01,r6
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(0x54,PC),r3
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c10fb76
	mov r0,r14
	mov.w @(0x40,PC),r0
	mov 0x01,r3
	mov.l @(0x4C,PC),r1
	mov.l @(0x48,PC),r2
	mov.b r3,@(r0,r14)
	mov 0x70,r0
	mov.l r2,@(0x10,r14)
	mov.l @r1,r3
	mov r14,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0x14,r0
	mov.l @(0x3C,PC),r2
	mov.l r3,@(r0,r14)
	mov.l @(0x3C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x20,PC),r0
	mov 0x00,r13
	mov.w @(0x1A,PC),r1
	mov 0x02,r12
	mov.l r1,@(r0,r14)

loc_8C10FB6A:
	mov r13,r5
	bsr loc_8c10f9ce
	mov r14,r4
	add 0x01,r13
	cmp/ge r12,r13
	bf loc_8c10fb6a

loc_8C10FB76:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10fb80:
	#data 0x012c
loc_8c10fb82:
	#data 0x0805
loc_8c10fb84:
	#data 0x00Cc
	#align4

loc_8C10FB88:
	#data bank04.loc_8c044F12
loc_8C10FB8C:
	#data loc_8c10FA32
loc_8C10FB90:
	#data 0x8C26A904
loc_8C10FB94:
	#data bank16.loc_8c166738
loc_8C10FB98:
	#data bank12.loc_8c1294C8

;==============================================
loc_8C10FB9C:
	rts
	nop

;==============================================
loc_8C10FBA0:
	mov.l r14,@-r15
	mov 0x05,r5
	mov.l r13,@-r15
	mov 0x01,r6
	sts.l pr,@-r15
	mov.l @(0xA0,PC),r3
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c10fc40
	mov r0,r14
	mov.w @(0x8E,PC),r0
	mov 0x01,r3
	mov.l @(0x98,PC),r1
	mov.l @(0x90,PC),r2
	mov.b r3,@(r0,r14)
	mov 0x78,r0
	mov.l r2,@(0x10,r14)
	mov.l @r1,r3
	mov r14,r1
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(r0,r2),r3
	add 0x0C,r0
	mov.w @(0x76,PC),r2
	mov.l r3,@(r0,r14)
	add 0x48,r0
	mov.l r2,@(r0,r14)
	mov.l @(0x7C,PC),r2
	mov.l @(0x80,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x80,PC),r4
	mova @(0x84,PC),r0
	fmov @r0,fr6
	mova @(0x84,PC),r0
	fmov @r4,fr3
	mov r14,r3
	fmov @r0,fr5
	mova @(0x80,PC),r0
	fmul fr6,fr3
	fmov @r0,fr4
	mov 0x04,r0
	mov.l @(0x68,PC),r5
	add 0x40,r3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r1
	and r5,r1
	mov.l r1,@r3
	fmov @(r0,r4),fr3
	mov 0x44,r0
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	and r5,r3
	mov.l r3,@(r0,r14)
	mov 0x08,r0
	fmov @(r0,r4),fr3
	fmul fr6,fr3
	fdiv fr5,fr3
	fadd fr4,fr3
	mov.l @(0x50,PC),r13
	mov 0x48,r0
	ftrc fr3,fpul
	sts fpul,r3
	and r5,r3
	mov 0x00,r5
	mov.l r3,@(r0,r14)
	jsr @r13
	mov r14,r4
	mov 0x01,r5
	jsr @r13
	mov r14,r4
	mov 0x02,r5
	jsr @r13
	mov r14,r4

loc_8C10FC40:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c10fc48:
	#data 0x012c
loc_8c10fc4a:
	#data 0x080F
	#align4

loc_8C10FC4C:
	#data bank04.loc_8c044F12
loc_8C10FC50:
	#data loc_8c10FB9c
loc_8c10fc54:
	#data 0x8C26A904
loc_8C10FC58:
	#data bank16.loc_8c16675c
loc_8C10FC5C:
	#data bank12.loc_8c1294C8
loc_8C10FC60:
	#data 0x0000FFFf
loc_8C10FC64:
	#data bank16.loc_8c166768
loc_8C10FC68:
	#data 0x47800000
loc_8C10FC6c:
	#data 0x43B40000
loc_8C10FC70:
	#data 0x3F000000
loc_8C10FC74:
	#data loc_8c10FCF8

;==============================================
loc_8C10FC78:
	mov.w @(0x1C,r4),r0
	mov.l @(loc_8C10FD44,pc),r1 ; r1 set to 0x8C1667D4
	shll2 r0
	mov.l @(loc_8C10FD40,pc),r3 ; r3 set to 0x8C26A904
	mov.l @(r0,r1),r0
	mov.l @r3,r5
	mov r0,r2
	shll r0
	add r2,r0
	mov.l @(loc_8C10FD48,pc),r3 ; r3 set to 0x8C166774
	mov 0x20,r2 ; r2 set to 0x20
	add r4,r2 ; r2 ??? bc r4 is ???
	mov.b @r2,r2
	shll2 r0
	add r3,r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r2
	tst r2,r2
	bt loc_8C10FCB6
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @r5,r3 ; r3 ??? bc r5 is ???
	mov.b @(r0,r4),r2
	add 0x64,r0 ; r0 set to 0x84
	extu.b r2,r2
	shll2 r2
	add r3,r2
	add 0x7C,r2
	mov.l @r2,r3
	bra loc_8C10FCCa
	mov.l r3,@(r0,r4)

loc_8c10fcb6:
	mov 0x20,r0
	mov.l @r5,r3
	mov.b @(r0,r4),r2
	add 0x68,r0
	extu.b r2,r2
	shll2 r2
	add r3,r2
	mov.l @(r0,r2),r2
	add 0xFC,r0
	mov.l r2,@(r0,r4)

loc_8c10fcca:
	mov.w @(0x1E,r4),r0
	mov 0x0A,r3
	add 0x01,r0
	mov.w r0,@(0x1E,r4)
	exts.w r0,r0
	cmp/ge r3,r0
	bf loc_8c10fcf4
	mov 0x00,r5
	mov r5,r0
	nop
	mov.w r0,@(0x1E,r4)
	mov 0x14,r2
	mov.w @(0x1C,r4),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	cmp/hs r2,r0
	bf loc_8c10fcf4
	mov r5,r0
	nop
	mov.w r0,@(0x1C,r4)

loc_8c10fcf4:
	rts
	nop

;==============================================
loc_8c10fcf8:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x4C,PC),r3
	mov 0x01,r6
	mov.l r4,@(0x4,r15)
	mov.l r5,@r15
	mov 0x05,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c10fd30
	mov r0,r4
	mov.w @(0x24,PC),r0
	mov 0x01,r3
	mov.l @(0x38,PC),r2
	mov.b r3,@(r0,r4)
	add 0xA0,r0
	mov.w @(0x1C,PC),r3
	mov.l r2,@(0x10,r4)
	mov.l r3,@(r0,r4)
	mov.w @(0x18,PC),r3
	mov.l @(0x4,r15),r2
	mov.w @(0x16,PC),r0
	add r2,r3
	mov.l r3,@(r0,r4)
	mov 0x20,r0
	mov.l @r15,r2
	mov.b r2,@(r0,r4)

loc_8c10fd30:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10fd38:
	#data 0x012C
loc_8c10fd3a:
	#data 0x0800
loc_8c10fd3c:
	#data 0x0088
loc_8c10fd3e:
	#data 0x00C8
	#align4

loc_8c10fd40:
	#data 0x8C26A904
loc_8c10fd44:
	#data bank16.loc_8c1667D4
loc_8c10fd48:
	#data bank16.loc_8c166774
loc_8c10fd4c:
	#data bank04.loc_8c044f12
loc_8c10fd50:
	#data loc_8C10FC78

;==============================================
loc_8C10FD54:
	rts
	nop

;==============================================
loc_8C10FD58:
	sts.l pr,@-r15
	mov.l @(0x44,PC),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c10fd92
	mov r0,r4
	mov.w @(0x2A,PC),r0
	mov 0x01,r3
	mov.l @(0x38,PC),r1
	mov.l @(0x30,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(0x1C,PC),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(0x2C,r2),r3
	mov.l @(0x28,PC),r2
	mov.l r3,@(r0,r4)
	mov.l @(0x28,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.w @(0xE,PC),r0
	mov.w @(0xA,PC),r1
	mov.l r1,@(r0,r4)

loc_8C10FD92:
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10fd98:
	#data 0x012c
loc_8c10fd9a:
	#data 0x0084
loc_8c10fd9c:
	#data 0x0901
loc_8c10fd9e:
	#data 0x00CC
	#align4

loc_8C10FDA0:
	#data bank04.loc_8c044F12
loc_8C10FDA4:
	#data loc_8c10FD54
loc_8C10FDA8:
	#data 0x8C26A904
loc_8C10FDAC:
	#data bank16.loc_8c166824
loc_8C10FDB0:
	#data bank12.loc_8c1294C8

;==============================================
loc_8C10FDB4:
	mov.w @(0x1C,r4),r0
	mov.w @(0x7E,PC),r3
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1C,r4),r0
	cmp/ge r3,r0
	bf.s loc_8c10fdc8
	mov r4,r3
	mov 0x00,r0
	mov.w r0,@(0x1C,r4)

loc_8C10FDC8:
	mov.w @(0x1C,r4),r0
	add 0x40,r3
	mov.l @(0x7C,PC),r1
	mov r0,r2
	lds r2,fpul
	mova @(0x6C,PC),r0
	fmov @r0,fr2
	mova @(0x6C,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	mova @(0x68,PC),r0
	fmov @r0,fr0
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r1,r2
	rts
	mov.l r2,@r3

;==============================================
loc_8C10FDF0:
	sts.l pr,@-r15
	mov.l @(0x5C,PC),r3
	mov 0x05,r5
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c10fe32
	mov r0,r4
	mov.w @(0x34,PC),r0
	mov 0x01,r3
	mov.l @(0x50,PC),r1
	mov.l @(0x48,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r1,r3
	mov r4,r1
	mov.w @(0x26,PC),r0
	add 0x34,r1
	mov.l @r3,r2
	mov.l @(0x4,r2),r3
	mov.w @(0x20,PC),r2
	mov.l r3,@(r0,r4)
	add 0x48,r0
	mov.l r2,@(r0,r4)
	mov.l @(0x3C,PC),r3
	mov.l @(0x34,PC),r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x38,PC),r1
	mov 0x44,r0
	mov.l @r1,r3
	mov.l r3,@(r0,r4)

loc_8C10FE32:
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10fe38:
	#data 0x0168
loc_8c10fe3a:
	#data 0x012C
loc_8c10fe3c:
	#data 0x0084
loc_8c10fe3e:
	#data 0x0807
	#align4

loc_8C10FE40:
	#data 0x47800000
loc_8C10FE44:
	#data 0x43B40000
loc_8C10FE48:
	#data 0x3F000000
loc_8C10FE4c:
	#data 0x0000FFFf
loc_8C10FE50:
	#data bank04.loc_8c044F12
loc_8C10FE54:
	#data loc_8c10FDB4
loc_8C10FE58:
	#data 0x8C26A904
loc_8C10FE5C:
	#data bank16.loc_8c166830
loc_8C10FE60:
	#data bank12.loc_8c1294C8
loc_8C10FE64:
	#data bank16.loc_8c16683c

;==============================================
loc_8C10FE68:
	mov.l r14,@-r15
	mov 0x05,r5 ; r5 set to 0x05
	sts.l pr,@-r15
	mov.l @(loc_8C10FF68,pc),r3 ; r3 set to 0x8C044F12
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C10FEA4
	mov r0,r14
	mov.w @(loc_8C10FF5E,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_8C10FF70,pc),r1 ; r1 set to 0x8C26A904
	mov.l @(loc_8C10FF6C,pc),r2 ; r2 set to 0x8C10FEAa
	mov.b r3,@(r0,r14)
	mov.l r2,@(0x10,r14)
	mov.l @r1,r3 ; r3 ??
	mov.w @(loc_8C10FF60,pc),r0 ; r0 set to 0x84
	mov.l @r3,r2 ; r2 ??? bc r3 is ???
	mov.l @(0x08,r2),r3
	mov.w @(loc_8C10FF62,pc),r2 ; r2 set to 0x800
	mov.l r3,@(r0,r14)
	add 0x48,r0 ; r0 set to 0xCc
	mov.l r2,@(r0,r14)
	add 0xB8,r0 ; r0 set to 0x84
	lds.l @r15+,pr
	mov.l @(loc_8C10FF74,pc),r3 ; r3 set to 0x8C108210
	mov.l @(r0,r14),r4 ; r4 ??? bc r14 is ???
	jmp @r3
	mov.l @r15+,r14

loc_8C10FEA4:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C10FEAA:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C10FF78,pc),r13 ; r13 set to 0x8C26A95c
	extu.b r0,r0
	cmp/eq 0x00,r0
	bf loc_8C10FF4a
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.b @r13,r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8C10FEE2
	mov.w @(0x1C,r14),r0
	mov 0x64,r3 ; r3 set to 0x64
	cmp/ge r3,r0
	bt loc_8C10FEEa
	bra loc_8C10FEEe
	nop

loc_8c10fee2:
	mov.w @(loc_8C10FF64,pc),r3
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bf loc_8c10feee

loc_8c10feea:
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)

loc_8C10FEEE:
	mov.l @(loc_8C10FF70,pc),r3 ; r3 set to 0x8C26A904
	mov.w @(loc_8C10FF60,pc),r0 ; r0 set to 0x84
	mov.l @r3,r4
	mov.l @(loc_8C10FF7C,pc),r1 ; r1 set to 0x8C108060
	mov.l @r4,r2
	mov.l @(r0,r14),r5
	jsr @r1
	mov.l @(0x0C,r2),r4
	mova @(loc_8C10FF8C,pc),r0  ; r0 set to 0x8C10FF8c
	mov.l @(loc_8C10FF88,pc),r12 ; r12 set to 0x8C108192
	fmov.s @r0,fr14
	mova @(loc_8C10FF90,pc),r0  ; r0 set to 0x8C10FF90
	mov.l @(loc_8C10FF80,pc),r10 ; r10 set to 0x8C1081E6
	mov.l @(loc_8C10FF84,pc),r11 ; r11 set to 0x8C108086
	bra loc_8C10FF42
	fmov.s @r0,fr15

loc_8C10FF0E:
	mov r15,r4
	mov r15,r5
	jsr @r12
	add 0x04,r4
	mov.b @r13,r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c10ff2a
	mov.w @(0x1C,r14),r0
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	bra loc_8c10ff34
	fmov fr15,fr0

loc_8C10FF2A:
	mov.w @(0x1C,r14),r0
	fmov fr14,fr0
	mov r0,r3
	lds r3,fpul
	float fpul,fr3

loc_8C10FF34:
	fmov @r15,fr2
	mov r15,r4
	mov r15,r5
	fmac fr0,fr3,fr2
	fmov fr2,@r15
	jsr @r10
	add 0x04,r4

loc_8c10ff42:
	jsr @r11
	nop
	tst r0,r0
	bt loc_8c10ff0e

loc_8C10FF4A:
	add 0x08,r15
	lds.l @r15+,pr
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C10FF5E:
	#data 0x012c
loc_8C10FF60:
	#data 0x0084
loc_8C10FF62:
	#data 0x0800
loc_8c10ff64:
	#data 0x01F4
	#align4

loc_8C10FF68:
	#data bank04.loc_8c044F12
loc_8C10FF6C:
	#data loc_8c10FEAa
loc_8C10FF70:
	#data 0x8C26A904
loc_8C10FF74:
	#data loc_8c108210
loc_8C10FF78:
	#data 0x8C26A95c
loc_8C10FF7C:
	#data loc_8c108060
loc_8C10FF80:
	#data loc_8c1081E6
loc_8C10FF84:
	#data loc_8c108086
loc_8C10FF88:
	#data loc_8c108192
loc_8C10FF8C:
	#data 0x3B03126f
loc_8C10FF90:
	#data 0x3C23D70a

;==============================================
loc_8C10FF94:
	sts.l pr,@-r15
	mov.l @(loc_8C10FFF8,pc),r3 ; r3 set to 0x8C044F12
	mov 0x05,r5 ; r5 set to 0x05
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	tst r0,r0
	bt/s loc_8C10FFCc
	mov r0,r4 ; r4 ??? bc r0 is ???
	mov.l @(loc_8C110000,pc),r1 ; r1 set to 0x8C26A904
	mov 0x01,r5 ; r5 set to 0x01
	mov.l @(loc_8C10FFFC,pc),r3 ; r3 set to 0x8C10FFD2
	mov.w @(loc_8C10FFF0,pc),r0 ; r0 set to 0x12c
	mov.b r5,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r1,r2
	mov.w @(loc_8C10FFF2,pc),r0 ; r0 set to 0x84
	mov.l @r2,r3 ; r3 ??? bc r2 is ???
	mov.w @(loc_8C10FFF4,pc),r2 ; r2 set to 0x80f
	mov.l @(0x10,r3),r3
	mov.l r3,@(r0,r4)
	add 0x48,r0 ; r0 set to 0xCc
	mov.l r2,@(r0,r4)
	mov r5,r0 ; r0 set to 0x01
	nop
	mov.w r0,@(0x1E,r4)
	bra bank11.loc_8C1101B0
	lds.l @r15+,pr

loc_8C10FFCC:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C10FFD2:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C110004
	cmp/eq 0x01,r0
	bf loc_8C10FFEc
	bra loc_8C11018e
	nop

loc_8C10FFEC:
	bra loc_8C11018e
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C10FFF0:
	#data 0x012c
loc_8C10FFF2:
	#data 0x0084
loc_8C10FFF4:
	#data 0x080f
	#align4

loc_8C10FFF8:
	#data bank04.loc_8c044F12
loc_8C10FFFC:
	#data loc_8c10FFD2
loc_8C110000:
	#data 0x8C26A904

;==============================================
loc_8c110004:
	mov.w @(0x1C,r14),r0
	mov 0x1C,r4
	mov.l @(loc_8c110198,pc),r13
	mov r15,r5
	mov r0,r3
	mov.w @(0x1E,r14),r0
	lds r3,fpul
	mov r15,r6
	muls.w r4,r0
	mov 0x1C,r0
	mov.l @(loc_8c11019c,pc),r3
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
	mov r0,r5
	add 0xFF,r5
	mul.l r3,r5
	mov r0,r7
	mov 0x04,r0
	fmov.s @(r0,r15),fr0
	mov 0x04,r0
	sts macl,r5
	mul.l r3,r7
	add r13,r5
	sts macl,r4
	add r13,r4
	fmov.s @(r0,r4),fr3
	mov 0x04,r0
	fmov.s @(r0,r5),fr2
	mov 0x08,r0
	fmul fr0,fr3
	fmov.s @r15,fr0
	mov r4,r6
	add 0x1C,r6
	fmac fr0,fr2,fr3
	fmov.s @(r0,r15),fr0
	mov 0x04,r0
	fmov.s @(r0,r6),fr2
	mov 0x34,r0
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
	mov.l @(loc_8C1101A4,pc),r7
	fmac fr0,fr2,fr3
	fmov.s @(r0,r15),fr0
	mov 0x08,r0
	fmov.s @(r0,r6),fr2
	mov 0x38,r0
	fmac fr0,fr2,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x04,r0
	fmov.s @(r0,r15),fr0
	mov 0x0C,r0
	fmov.s @(r0,r4),fr3
	mov 0x0C,r0
	fmov.s @(r0,r5),fr2
	mov 0x08,r0
	fmul fr0,fr3
	fmov.s @r15,fr0
	fmac fr0,fr2,fr3
	fmov.s @(r0,r15),fr0
	mov 0x0C,r0
	fmov.s @(r0,r6),fr2
	mov 0x3C,r0
	fmac fr0,fr2,fr3
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C1101A0,pc),r0
	fmov.s @r0,fr6
	mova @(loc_8C1101A8,pc),r0
	mov r14,r2
	fmov.s @r0,fr5
	mova @(loc_8C1101AC,pc),r0
	fmov.s @r0,fr4
	mov 0x04,r0
	fmov.s @(r0,r15),fr0
	mov 0x10,r0
	fmov.s @(r0,r4),fr3
	mov 0x10,r0
	fmov.s @(r0,r5),fr2
	mov 0x08,r0
	fmul fr0,fr3
	fmov.s @r15,fr0
	add 0x40,r2
	fmac fr0,fr2,fr3
	fmov.s @(r0,r15),fr0
	mov 0x10,r0
	fmov.s @(r0,r6),fr2
	mov 0x04,r0
	fmac fr0,fr2,fr3
	fmul fr4,fr3
	fdiv fr5,fr3
	fadd fr6,fr3
	ftrc fr3,fpul
	sts fpul,r1
	and r7,r1
	mov.l r1,@r2
	fmov.s @(r0,r15),fr0
	mov 0x14,r0
	fmov.s @(r0,r4),fr3
	fmul fr0,fr3
	mov 0x14,r0
	fmov.s @r15,fr0
	fmov.s @(r0,r5),fr2
	mov 0x08,r0
	fmac fr0,fr2,fr3
	fmov.s @(r0,r15),fr0
	mov 0x14,r0
	fmov.s @(r0,r6),fr2
	mov 0x44,r0
	fmac fr0,fr2,fr3
	fmul fr4,fr3
	fdiv fr5,fr3
	fadd fr6,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r7,r2
	mov.l r2,@(r0,r14)
	mov 0x04,r0
	fmov.s @(r0,r15),fr0
	mov 0x18,r0
	fmov.s @(r0,r4),fr3
	mov 0x18,r0
	fmov.s @(r0,r5),fr2
	mov 0x08,r0
	fmul fr0,fr3
	fmov.s @r15,fr0
	fmac fr0,fr2,fr3
	fmov.s @(r0,r15),fr0
	mov 0x18,r0
	fmov.s @(r0,r6),fr2
	fmac fr0,fr2,fr3
	fmul fr4,fr3
	fdiv fr5,fr3
	mov 0x48,r0
	fadd fr6,fr3
	ftrc fr3,fpul
	sts fpul,r2
	and r7,r2
	mov.l r2,@(r0,r14)
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
	bt loc_8c11018e
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)
	mov 0x06,r2
	mov.w @(0x1E,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	add 0x01,r0
	cmp/hs r2,r0
	bf loc_8c11017e
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)

loc_8c11017e:
	mov.w @(0x1E,r14),r0
	mov 0x04,r3
	add 0x01,r0
	cmp/hs r3,r0
	bf loc_8c11018e
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)

loc_8C11018E:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C110198:
	#data bank16.loc_8c166840
loc_8C11019C:
	#data loc_8c109458
loc_8c1101a0:
	#data 0x3F000000
loc_8c1101a4:
	#data 0x0000FFFf
loc_8c1101a8:
	#data 0x43B40000
loc_8c1101ac:
	#data 0x47800000
