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
	bf bank10.loc_8c100352

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
#align4
loc_8C100364:
#data 0x7FFC4F22
#data 0xE507D336
#data 0xE6012F42
#data 0xE400430b
#data 0x8D1B2008
#data 0x905D6403
#data 0xD133E301
#data 0x0434D231
#data 0x142470D0
#data 0x61436312
#data 0x62327134
#data 0x7088032e
#data 0xD32E0436
#data 0x430B62F2
#data 0xD22DE00c
#data 0xD32B6143
#data 0x430B7150
#data 0x9046E00c
#data 0x0416E139

#align4
loc_8C1003B0:
#data 0x4F267F04
#data 0x0009000b

;==============================================
#align4
loc_8C1003B8:
#data 0x7001854e
#data 0x8444814e
#data 0x8800600c
#data 0xC7248B10
#data 0xE050F408
#data 0xE314F346
#data 0xF437F340
#data 0xF246E058
#data 0xF427F240
#data 0x3033854e
#data 0x84448B02
#data 0x80447001

#align4
loc_8C1003E8:
#data 0x600C8445
#data 0x89038800
#data 0x89108801
#data 0x0009A016

#align4
loc_8C1003F8:
#data 0xE054D118
#data 0xE308F246
#data 0xF30D415a
#data 0xF427F230
#data 0x3033854e
#data 0x84458B0a
#data 0xA0077001
#data 0x8045

loc_8C100416:
#data 0xD112
#data 0xF246E054
#data 0xF30D415a
#data 0xF427F230

#align4
loc_8C100424:
#data 0x600C8446
#data 0x891B8800
#data 0x89318801
#data 0x89378802
#data 0x0009A048

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
#data 0x012c
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
	#data 0x8c164E34
loc_8C100458:
	#data 0x3D4CCCCd
loc_8C10045c:
	#data 0x3E400000
loc_8C100460:
	#data 0xBE000000

;==============================================
loc_8C100464:
#data 0xF408C746
#data 0xF346E074
#data 0xF340E307
#data 0xE078F437
#data 0xF240F246
#data 0xE07CF427
#data 0xF340F346
#data 0x7004F437
#data 0xF240F246
#data 0x854EF427
#data 0x89053033
#data 0x0009A01a

#align4
loc_8C100494:
#data 0xE311854e
#data 0x8B153033

#align4
loc_8C10049C:
#data 0x70018446
#data 0x8046A012

#align4
loc_8C1004A4:
#data 0xF408C737
#data 0xF346E074
#data 0xF437F340
#data 0xF246E078
#data 0xF427F240
#data 0xF346E07c
#data 0xF437F340
#data 0xF2467004
#data 0xF427F240

#align4
loc_8C1004C8:
#data 0xE314854e
#data 0x8B023037
#data 0x422BD22d
#data 0x0009

loc_8C1004D6:
#data 0x000b
#data 0x0009

;==============================================
loc_8C1004DA:
#data 0x4F22
#data 0xD32B7FFc
#data 0x2F42E507
#data 0x430BE601
#data 0x2008E400
#data 0x64038D1b
#data 0xE3019043
#data 0xD226D127
#data 0x70D40434
#data 0x63121424
#data 0x71346143
#data 0x032E6232
#data 0x04367084
#data 0x62F2D322
#data 0xE00C430b
#data 0x6143D221
#data 0x7150D31f
#data 0xE00C430b
#data 0xE139902c
#data 0x0416

loc_8C100526:
#data 0x7F04
#data 0x000B4F26
#data 0x0009

;==============================================
loc_8C10052E:
#data 0x854e
#data 0x814E7001
#data 0x600C8444
#data 0x8B098800
#data 0xF408C718
#data 0xF346E050
#data 0xF437F340
#data 0xF246E058
#data 0xF427F240

#align4
loc_8C100550:
#data 0x600C8445
#data 0x8B068800
#data 0xE054D112
#data 0x415AF246
#data 0xF230F30d
#data 0xF427

loc_8C100566:
#data 0x8446
#data 0x8800600c
#data 0x8801891c
#data 0x88028932
#data 0xA0498938
#data 0x012C0009
#data 0x000000Cc
#data 0x3E124925
#data 0xBEAAAAAb

#align4
loc_8C100588:
#data bank04.loc_8c0450C0

loc_8C10058C:
#data bank04.loc_8c044F12

loc_8C100590:
#data loc_8c1003B8
#data 0x8C26A908

#align4
loc_8C100598:
#data bank12.loc_8c1294C8

loc_8C10059C:
#data 0x8c164E34
#data 0x3D4CCCCd
#data 0xBCCCCCCd

#align4
loc_8C1005A8:
#data 0xF408C740
#data 0xF346E074
#data 0xF340E30a
#data 0xE078F437
#data 0xF240F246
#data 0xE07CF427
#data 0xF340F346
#data 0x7004F437
#data 0xF240F246
#data 0x854EF427
#data 0x89053033
#data 0x0009A01a

#align4
loc_8C1005D8:
#data 0xE30D854e
#data 0x8B153033

#align4
loc_8C1005E0:
#data 0x70018446
#data 0x8046A012

#align4
loc_8C1005E8:
#data 0xF408C731
#data 0xF346E074
#data 0xF437F340
#data 0xF246E078
#data 0xF427F240
#data 0xF346E07c
#data 0xF437F340
#data 0xF2467004
#data 0xF427F240

#align4
loc_8C10060C:
#data 0xE314854e
#data 0x8B023037
#data 0x422BD227
#data 0x0009

loc_8C10061A:
#data 0x000b
#data 0x0009

;==============================================
loc_8C10061E:
#data 0x4F22
#data 0xD3257FFc
#data 0x2F42E507
#data 0x430BE601
#data 0x2008E400
#data 0x64038D1b
#data 0xE3019037
#data 0xD220D121
#data 0x70D80434
#data 0x63121424
#data 0x71346143
#data 0x032E6232
#data 0x04367080
#data 0x62F2D31c
#data 0xE00C430b
#data 0x6143D21b
#data 0x7150D319
#data 0xE00C430b
#data 0xE1399020
#data 0x0416

loc_8C10066A:
#data 0x7F04
#data 0x000B4F26
#data 0x0009

;==============================================
loc_8C100672:
#data 0x2FE6
#data 0x7FFC4F22
#data 0x43116353
#data 0x8F076E43
#data 0xD2122F52
#data 0xD312E101
#data 0x2210E504
#data 0x64F2430b

#align4
loc_8C100690:
#data 0x64E3BDAc
#data 0x64E3BE66
#data 0x64E3BF1f
#data 0x7F0464E3
#data 0xAFBC4F26
#data 0x012C6EF6
#data 0x000000Cc
#data 0x3DCCCCCd
#data 0xBE124925

#align4
loc_8C1006B4:
#data bank04.loc_8c0450C0

loc_8C1006B8:
#data bank04.loc_8c044F12

loc_8C1006BC:
#data loc_8c10052e
#data 0x8C26A908

#align4
loc_8C1006C4:
#data bank12.loc_8c1294C8

loc_8C1006C8:
#data 0x8c164E34
#data 0x8C289623

#align4
loc_8C1006D0:
#data bank03.loc_8c031B48


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
mov.l @(bank10.loc_8c100844,pc),r1
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
mov.l @(bank10.loc_8c100848,pc),r6
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
mov.l @(bank10.loc_8c10084c,pc),r7
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
mov.l @(bank10.loc_8c100850,pc),r3
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
#data 0x4F22
#data 0x7FFC
#data 0xD31E
#data 0xE507
#data 0x2F42
#data 0xE601
#data 0x430B
#data 0xE400
#data 0x2008
#data 0x8D24
#data 0x6403
#data 0x9026
#data 0xE301
#data 0xD11B
#data 0xD219
#data 0x0434
#data 0x70DC
#data 0x1424
#data 0x6312
#data 0x6143
#data 0x7134
#data 0x6232
#data 0x032E
#data 0xE211
#data 0x901A
#data 0x0436
#data 0x7048
#data 0x0426
#data 0xD314
#data 0x62F2
#data 0x430B
#data 0xE00C
#data 0xD213
#data 0x6143
#data 0xD311
#data 0x7150
#data 0x430B
#data 0xE00C
#data 0xE074
#data 0xF48D
#data 0xF447
#data 0xE078
#data 0xF447
#data 0xE07C
#data 0xF447
#data 0x7004
#data 0xF447

loc_8c100832:
#data 0x7F04
#data 0x4F26
#data 0x000B
#data 0x0009

;==============================================
	#data 0x012c
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
#data 0x94C8
#data 0x8C12

loc_8c100864:
#data 0x4E40
#data 0x8C16

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

loc_8c100882:
mov.w @(0x1C,r4),r0
mov.l @(bank10.loc_8c1009d8,pc),r1
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
mov.l @(bank10.loc_8c1009dc,pc),r6
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
mov.l @(bank10.loc_8c1009e0,pc),r7
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
mov.l @(bank10.loc_8c1009e4,pc),r3
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
#data 0x4F22
#data 0x7FFC
#data 0xD31E
#data 0xE507
#data 0x2F42
#data 0xE601
#data 0x430B
#data 0xE400
#data 0x2008
#data 0x8D24
#data 0x6403
#data 0x9026
#data 0xE301
#data 0xD11B
#data 0xD219
#data 0x0434
#data 0x70E0
#data 0x1424
#data 0x6312
#data 0x6143
#data 0x7134
#data 0x6232
#data 0x032E
#data 0xE211
#data 0x901A
#data 0x0436
#data 0x7048
#data 0x0426
#data 0xD314
#data 0x62F2
#data 0x430B
#data 0xE00C
#data 0xD213
#data 0x6143
#data 0xD311
#data 0x7150
#data 0x430B
#data 0xE00C
#data 0xE074
#data 0xF48D
#data 0xF447
#data 0xE078
#data 0xF447
#data 0xE07C
#data 0xF447
#data 0x7004
#data 0xF447

loc_8c1009c6:
#data 0x7F04
#data 0x4F26
#data 0x000B
#data 0x0009

;==============================================
#data 0x012C
#data 0x0084
	#align4

loc_8c1009d4:
#data 0x50C0
#data 0x8C04

#align4
loc_8c1009d8:
#data bank16.loc_8c164e9c

loc_8c1009dc:
#data bank16.loc_8c164ea4

loc_8c1009e0:
#data bank16.loc_8c164ec4

loc_8c1009e4:
#data bank16.loc_8c164e94

loc_8c1009e8:
#data 0x4F12
#data 0x8C04

loc_8c1009ec:
#data 0x0868
#data 0x8C10
#data 0xA908
#data 0x8C26

loc_8c1009f4:
#data 0x94C8
#data 0x8C12

loc_8c1009f8:
#data 0x4E40
#data 0x8C16

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
mov.l @(bank10.loc_8c100b6c,pc),r1
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
mov.l @(bank10.loc_8c100b70,pc),r6
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
mov.l @(bank10.loc_8c100b74,pc),r7
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
mov.l @(bank10.loc_8c100b78,pc),r3
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
#data 0x4F22
#data 0x7FFC
#data 0xD31E
#data 0xE507
#data 0x2F42
#data 0xE601
#data 0x430B
#data 0xE400
#data 0x2008
#data 0x8D24
#data 0x6403
#data 0x9026
#data 0xE301
#data 0xD11B
#data 0xD219
#data 0x0434
#data 0x70E4
#data 0x1424
#data 0x6312
#data 0x6143
#data 0x7134
#data 0x6232
#data 0x032E
#data 0xE211
#data 0x901A
#data 0x0436
#data 0x7048
#data 0x0426
#data 0xD314
#data 0x62F2
#data 0x430B
#data 0xE00C
#data 0xD213
#data 0x6143
#data 0xD311
#data 0x7150
#data 0x430B
#data 0xE00C
#data 0xE074
#data 0xF48D
#data 0xF447
#data 0xE078
#data 0xF447
#data 0xE07C
#data 0xF447
#data 0x7004
#data 0xF447

loc_8c100b5a:
#data 0x7F04
#data 0x4F26
#data 0x000B
#data 0x0009

;==============================================
#data 0x012C
#data 0x0084
#data 0x0000

loc_8c100b68:
#data 0x50C0
#data 0x8C04

#align4
loc_8c100b6c:
#data bank16.loc_8c164edc

loc_8c100b70:
#data bank16.loc_8c164ee4

loc_8c100b74:
#data bank16.loc_8c164ef4

loc_8c100b78:
#data bank16.loc_8c164ed4

loc_8c100b7c:
#data 0x4F12
#data 0x8C04

loc_8c100b80:
#data 0x09FC
#data 0x8C10
#data 0xA908
#data 0x8C26

loc_8c100b88:
#data 0x94C8
#data 0x8C12

loc_8c100b8c:
#data 0x4E40
#data 0x8C16

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
mov.l @(bank10.loc_8c100d00,pc),r1
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
mov.l @(bank10.loc_8c100d04,pc),r6
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
mov.l @(bank10.loc_8c100d08,pc),r7
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
mov.l @(bank10.loc_8c100d0c,pc),r3
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
#data 0x4F22
#data 0x7FFC
#data 0xD31E
#data 0xE507
#data 0x2F42
#data 0xE601
#data 0x430B
#data 0xE400
#data 0x2008
#data 0x8D24
#data 0x6403
#data 0x9026
#data 0xE301
#data 0xD11B
#data 0xD219
#data 0x0434
#data 0x70E8
#data 0x1424
#data 0x6312
#data 0x6143
#data 0x7134
#data 0x6232
#data 0x032E
#data 0xE211
#data 0x901A
#data 0x0436
#data 0x7048
#data 0x0426
#data 0xD314
#data 0x62F2
#data 0x430B
#data 0xE00C
#data 0xD213
#data 0x6143
#data 0xD311
#data 0x7150
#data 0x430B
#data 0xE00C
#data 0xE074
#data 0xF48D
#data 0xF447
#data 0xE078
#data 0xF447
#data 0xE07C
#data 0xF447
#data 0x7004
#data 0xF447

loc_8c100cee:
#data 0x7F04
#data 0x4F26
#data 0x000B
#data 0x0009

;==============================================
#data 0x012C
#data 0x0084
#data 0x0000

loc_8c100cfc:
#data 0x50C0
#data 0x8C04

#align4
loc_8c100d00:
#data bank16.loc_8c164f0c

loc_8c100d04:
#data bank16.loc_8c164f14

loc_8c100d08:
#data bank16.loc_8c164f3c

loc_8c100d0c:
#data bank16.loc_8c164f04

loc_8c100d10:
#data 0x4F12
#data 0x8C04

loc_8c100d14:
#data 0x0B90
#data 0x8C10
#data 0xA908
#data 0x8C26

loc_8c100d1c:
#data 0x94C8
#data 0x8C12

loc_8c100d20:
#data 0x4E40
#data 0x8C16

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
#align4
loc_8c100d5c:
mov.l r14,@-r15
fmov.s fr15,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov.l @(bank10.loc_8c100e78,pc),r3
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
mov.l @(bank10.loc_8c100e7c,pc),r2
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
mov.l @(bank10.loc_8c100e84,pc),r3
mov.l @r15,r2
jsr @r3
mov 0x0C,r0
mov.l @(bank10.loc_8c100e88,pc),r2
mov r14,r1
mov.l @(bank10.loc_8c100e84,pc),r3
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
mov.l @(bank10.loc_8c100ea0,pc),r1
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
mov.l @(bank10.loc_8c100ea4,pc),r3
mov 0x5C,r0
jsr @r3
fmov.s fr0,@(r0,r14)
mov.l @(bank10.loc_8c100ea8,pc),r2
mov r0,r1
jsr @r2
mov 0x14,r0
add 0x1E,r0
mov.l @(bank10.loc_8c100eac,pc),r3
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
#data 0x00000084

#align4
loc_8C100E6C:
#data bank04.loc_8c0450C0

loc_8C100E70:
#data loc_8c1087Ce

loc_8C100E74:
#data 0x3D088889

#align4
loc_8C100E78:
#data bank04.loc_8c044F12

loc_8C100E7C:
#data loc_8c100D24
loc_8c100e80:
#data 0x8C26A908

#align4
loc_8C100E84:
#data bank12.loc_8c1294C8

loc_8C100E88:
#data 0x8c164E40
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

#align4
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

#align4
loc_8C100ED0:
#data 0x6E432FE6
#data 0xED282FD6
#data 0xFFEBFFFb
#data 0xFFCBFFDb
#data 0x85EE4F22
#data 0x700154E5
#data 0x600F81Ee
#data 0x8F0230D3
#data 0xE00061E3
#data 0x81Ee

loc_8C100EF6:
#data 0xD343
#data 0x71346243
#data 0x430B7234
#data 0xC741E00c
#data 0xFC0863E3
#data 0xFD08C740
#data 0xFE08C740
#data 0xFF08C740
#data 0x330CE034
#data 0x2F369170
#data 0x201F85Ee
#data 0x60D3011a
#data 0xD33C0009
#data 0x0009430b
#data 0xD13CE420
#data 0xD23A34Ec
#data 0xE35A6440
#data 0x243E644c
#data 0x340C041a
#data 0xF32D445a
#data 0xF2D2F23c
#data 0xF32CF2E3
#data 0xF33DF3F0
#data 0x410B045a
#data 0x62F62429
#data 0xF30CE038
#data 0xF22863E3
#data 0xF23EF0Cc
#data 0x415AD12f
#data 0xF22A9148
#data 0xF30DF2E6
#data 0xFE27F230
#data 0x330CE03c
#data 0x85EE2F36
#data 0x011A201f
#data 0x000960D3
#data 0x430BD324
#data 0xE4200009
#data 0x34ECD126
#data 0x6440D222
#data 0x644CE35a
#data 0x041A243e
#data 0x445A340c
#data 0xF12CF22d
#data 0xF1E3F1D2
#data 0xF2F0F21c
#data 0x045AF23d
#data 0x2429410b
#data 0xE04462F6
#data 0xF2289321
#data 0xF0CCF30c
#data 0xF22AF23e
#data 0x921B01Ee
#data 0x0E16313c
#data 0x700185Ef
#data 0x600F81Ef
#data 0x8B093027
#data 0xD1144F26
#data 0xFCF964E3
#data 0xFEF9FDF9
#data 0x6DF6FFF9
#data 0x6EF6412b

#align4
loc_8C100FEC:
#data 0xFCF94F26
#data 0xFEF9FDF9
#data 0x6DF6FFF9
#data 0x6EF6000b

;==============================================
#data 0x0CCD0168
#data 0x0000012c

#align4
loc_8C101004:
#data bank12.loc_8c1294C8
#data 0x42480000
#data 0x47800000
#data 0x43B40000
#data 0x3F000000

#align4
loc_8C101018:
#data bank12.loc_8c129128
#data 0x0000FFFf

#align4
loc_8C101020:
#data bank11.loc_8c11E860
#data 0x437A0000

#align4
loc_8C101028:
#data bank11.loc_8c11E2E0

loc_8C10102C:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0xE601D31a
#data 0x2F521F41
#data 0x430BE505
#data 0x2008E400
#data 0x64038D14
#data 0xE3019028
#data 0xD215D116
#data 0x14240434
#data 0x90226312
#data 0x032E6232
#data 0xE20570E0
#data 0x70480436
#data 0xE0200426
#data 0x143553F1
#data 0x042462F2
#data 0x4F267F08
#data 0x0009000b

;==============================================
#data 0x2FD62FE6
#data 0x7FFC4F22
#data 0x2F42EE00
#data 0x65E3ED04
#data 0x64F2BFD2
#data 0x3ED37E01
#data 0x7F048BF9
#data 0x6DF64F26
#data 0x6EF6000b

;==============================================
#data 0x00A4012c

#align4
loc_8C1010A0:
#data bank04.loc_8c044F12

loc_8C1010A4:
#data loc_8c100ED0
#data 0x8C26A908


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
#data 0x4F22
#data 0xD3297FFc
#data 0x2F42E507
#data 0x430BE601
#data 0x2008E400
#data 0x64038D15
#data 0xE3019039
#data 0xD224D125
#data 0x70180434
#data 0x63121424
#data 0x71346143
#data 0x032E6232
#data 0x902DE211
#data 0x70480436
#data 0xD31F0426
#data 0x430B62F2
#data 0xE00c

loc_8C101166:
#data 0x7F04
#data 0x000B4F26
#data 0x0009

;==============================================
loc_8C10116E:
#data 0x2FE6
#data 0xD31B4F22
#data 0x6E43430b
#data 0xF38DE038
#data 0xF325F2E6
#data 0xD1188B08
#data 0xF1E6E060
#data 0xF20D415a
#data 0xFE17F122
#data 0xFE37E038

#align4
loc_8C101194:
#data 0xE33C85Ee
#data 0x81EE7001
#data 0x3033600f
#data 0x4F268B04
#data 0x64E3D104
#data 0x6EF6412b

#align4
loc_8C1011AC:
#data 0x000B4F26
#data 0x012C6EF6
#data 0x00000084

#align4
loc_8C1011B8:
#data bank04.loc_8c0450C0

loc_8C1011BC:
#data bank0f.loc_8c0fD914

loc_8C1011C0:
#data 0x8c164F70

loc_8C1011C4:
#data 0x8c164F80

loc_8C1011C8:
#data 0x8c164F98

loc_8C1011CC:
#data 0x8c164FA8

loc_8C1011D0:
#data bank04.loc_8c044F12

loc_8C1011D4:
#data loc_8c1010Ac
#data 0x8C26A908

#align4
loc_8C1011DC:
#data bank12.loc_8c1294C8

loc_8C1011E0:
#data loc_8c1087Ce
#data 0xBF000000

#align4
loc_8C1011E8:
#data 0x2FD62FE6
#data 0x4F22FFFb
#data 0x6D537FF8
#data 0xE507D343
#data 0xE6012F42
#data 0xE400430b
#data 0x8D4E2008
#data 0xD1416E03
#data 0xD33FE401
#data 0x0E449076
#data 0x1E3470F4
#data 0x621263D3
#data 0x61E34308
#data 0x62227134
#data 0x033E332c
#data 0x0E36906b
#data 0xD3397048
#data 0x62F20E46
#data 0xE00C430b
#data 0xE0209164
#data 0x0D17D336
#data 0x011A0ED4
#data 0xE009430b
#data 0xD2397014
#data 0xC7331F01
#data 0xFF0853F1
#data 0x435AC732
#data 0xC732F208
#data 0xC732F108
#data 0xF008F32d
#data 0xF322D331
#data 0xF300F313
#data 0x045AF33d
#data 0x420B2439
#data 0xF0F22F42
#data 0xE05CD32e
#data 0xFE07430b
#data 0xF30CC72d
#data 0xE060F008
#data 0xF23EF2Fc
#data 0xFE27D32b
#data 0x64F2430b
#data 0xD22AF0F2
#data 0x61E3D31e
#data 0x7168E064
#data 0x430BFE07
#data 0xE00c

loc_8C1012A2:
#data 0x7F08
#data 0xFFF94F26
#data 0x000B6DF6
#data 0x6EF6

;==============================================
loc_8C1012AE:
#data 0x2FE6
#data 0x2FD66E43
#data 0x4F222FC6
#data 0x700185Ee
#data 0x85EE81Ee
#data 0x8B028806
#data 0xBF2E64E3
#data 0x7434

loc_8C1012CA:
#data 0x85Ee
#data 0x3037E30f
#data 0xED008B0f
#data 0xEC09

loc_8C1012D6:
#data 0x64E3
#data 0xBF8565D3
#data 0x7D017434
#data 0x8BF83DC3
#data 0xD3164F26
#data 0x6CF664E3
#data 0x432B6DF6
#data 0x6EF6

loc_8C1012F2:
#data 0x4F26
#data 0x6DF66CF6
#data 0x6EF6000b

;==============================================
#data 0x0084012c
#data 0x00000168

#align4
loc_8C101304:
#data bank04.loc_8c044F12

loc_8C101308:
#data loc_8c10116e
#data 0x8C26A908

#align4
loc_8C101310:
#data bank12.loc_8c1294C8

loc_8C101314:
#data bank12.loc_8c129128
#data 0x41200000
#data 0x47800000
#data 0x43B40000
#data 0x3F000000
#data 0x0000FFFf

#align4
loc_8C10132C:
#data bank11.loc_8c11E860

loc_8C101330:
#data bank11.loc_8c11E750
#data 0x41A00000

#align4
loc_8C101338:
#data bank11.loc_8c11E2E0

loc_8C10133C:
#data 0x8c164F64

loc_8C101340:
#data bank04.loc_8c0450C0
#data 0x7FFC4F22
#data 0xE507D318
#data 0xE6012F42
#data 0xE400430b
#data 0x8D232008
#data 0x90256403
#data 0xD115E301
#data 0x0434D213
#data 0x142470F0
#data 0x61436312
#data 0x62327134
#data 0xE211032e
#data 0x04369019
#data 0x04267048
#data 0xD30E62F2
#data 0x430B7234
#data 0xD10DE00c
#data 0xF246E038
#data 0x6143415a
#data 0x7150D20b
#data 0xF30DD308
#data 0xF427F230
#data 0xE00C430b
#data 0x4F267F04
#data 0x0009000b

;==============================================
#data 0x0084012c

#align4
loc_8C1013AC:
#data bank04.loc_8c044F12

loc_8C1013B0:
#data loc_8c1012Ae
#data 0x8C26A908

#align4
loc_8C1013B8:
#data bank12.loc_8c1294C8
#data 0x42C80000

#align4
loc_8C1013C0:
#data 0x8c164F58


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
mov.l @(bank10.loc_8c10152c,pc),r3
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
mov.l @(bank10.loc_8c101530,pc),r2
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
mov.l @(bank10.loc_8c101538,pc),r3
mov.l @(0x04,r15),r2
jsr @r3
mov 0x0C,r0
mov.l @r15,r1
mov.l @(bank10.loc_8c10153c,pc),r0
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
mov.l @(bank10.loc_8c10152c,pc),r3
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
mov.l @(bank10.loc_8c101548,pc),r2
mov.b r3,@(r0,r4)
mov.l r2,@(0x10,r4)
mov.l @r1,r3
mov r4,r1
mov.w @(loc_8C10151A,pc),r0
add 0x34,r1
mov.l @r3,r2
mov.l @(r0,r2),r3
mov.l r3,@(r0,r4)
mov.l @(bank10.loc_8c101538,pc),r3
mov.l @(0x04,r15),r2
jsr @r3
mov 0x0C,r0
mov.l @r15,r1
mov.l @(bank10.loc_8c10153c,pc),r0
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
#data 0x0000

loc_8c101520:
#data 0x50C0
#data 0x8C04

loc_8c101524:
#data 0x4FEC
#data 0x8C16

loc_8c101528:
#data 0xD914
#data 0x8C0F

#align4
loc_8c10152c:
#data bank04.loc_8c044f12

loc_8c101530:
#data 0x13C4
#data 0x8C10

#align4
loc_8C101534:
#data 0x8C26A908

#align4
loc_8c101538:
#data bank12.loc_8c1294c8

loc_8c10153c:
#data bank16.loc_8c164fcc

loc_8c101540:
#data 0x4FFC
#data 0x8C16

loc_8c101544:
#data 0x501C
#data 0x8C16

#align4
loc_8c101548:
#data bank10.loc_8c10145c

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
#align4
loc_8c1015cc:
sts.l pr,@-r15
add 0xF8,r15
mov.l @(bank10.loc_8c101690,pc),r3
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
mov.l @(bank10.loc_8c101694,pc),r2
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
mov.l @(bank10.loc_8c10169c,pc),r3
mov.l @(0x04,r15),r2
jsr @r3
mov 0x0C,r0
mov.l @r15,r1
mov.l @(bank10.loc_8c1016a0,pc),r0
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
mov.l @(bank10.loc_8c1016a4,pc),r3
shll2 r2
add r3,r2
mov.l @(bank10.loc_8c10169c,pc),r3
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
#data 0x2FD62FE6
#data 0x4F226D43
#data 0x6E53BED1
#data 0xBF2A65E3
#data 0x4F2664D3
#data 0x65E364D3
#data 0xAFAB6DF6
#data 0x6EF6
loc_8c101676:
#data 0x012C
loc_8c101678:
#data 0x00A0
loc_8c10167a:
#data 0x0515
loc_8c10167c:
#data 0x000000Cc

#align4
loc_8C101680:
#data bank04.loc_8c0450C0

loc_8C101684:
#data 0x8c165034

loc_8C101688:
#data bank0f.loc_8c0fD914

loc_8C10168C:
#data 0x8c165054

loc_8C101690:
#data bank04.loc_8c044F12

loc_8C101694:
#data loc_8c10154c
loc_8c101698:
#data 0x8C26A908

#align4
loc_8C10169C:
#data bank12.loc_8c1294C8

loc_8C1016A0:
#data 0x8c164FCc

loc_8C1016A4:
#data 0x8c164FD4


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
mov.l @(bank10.loc_8c101828,pc),r3
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
mov.l @(bank10.loc_8c10182c,pc),r2
mov.b r3,@(r0,r4)
mov.l r2,@(0x10,r4)
mov.l @r1,r3
mov r4,r1
mov.w @(loc_8C101812,pc),r0
add 0x34,r1
mov.l @r3,r2
mov.l @(0x30,r2),r3
mov.l r3,@(r0,r4)
mov.l @(bank10.loc_8c101834,pc),r3
mov.l @(0x04,r15),r2
jsr @r3
mov 0x0C,r0
mov.l @r15,r1
mov.l @(bank10.loc_8c101838,pc),r0
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
mov.l @(bank10.loc_8c10183c,pc),r3
shll2 r2
add r3,r2
mov.l @(bank10.loc_8c101834,pc),r3
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
#data 0x8c165098

loc_8C101820:
#data bank0f.loc_8c0fD914

loc_8C101824:
#data 0x8c1650B8

loc_8C101828:
#data bank04.loc_8c044F12

loc_8C10182C:
#data loc_8c1016A8
loc_8c101830:
#data 0x8C26A908

#align4
loc_8C101834:
#data bank12.loc_8c1294C8

loc_8C101838:
#data 0x8c165078

loc_8C10183C:
#data 0x8c165080

loc_8C101840:
#data 0x8c1650D0

loc_8C101844:
#data 0x8c1650F8

loc_8c101848:
sts.l pr,@-r15
add 0xF8,r15
mov.l @(bank10.loc_8c101998,pc),r3
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
mov.l @(bank10.loc_8c10199c,pc),r2
mov.b r3,@(r0,r4)
mov.l r2,@(0x10,r4)
mov.l @r1,r3
mov r4,r1
mov.w @(loc_8C101990,pc),r0
add 0x34,r1
mov.l @r3,r2
mov.l @(0x34,r2),r3
mov.l r3,@(r0,r4)
mov.l @(bank10.loc_8c1019a4,pc),r3
mov.l @(0x04,r15),r2
jsr @r3
mov 0x0C,r0
mov.l @r15,r1
mov.l @(bank10.loc_8c1019a8,pc),r0
shll2 r1
mov.l @(bank10.loc_8c1019ac,pc),r2
mov.l @(r0,r1),r3
mov 0x44,r0
mov r4,r1
add 0x50,r1
mov.l r3,@(r0,r4)
mov.l @(bank10.loc_8c1019a4,pc),r3
jsr @r3
mov 0x0C,r0
mov.l @r15,r2
mov r4,r1
add 0x5C,r1
mov r2,r3
shll r2
add r3,r2
mov.l @(bank10.loc_8c1019b0,pc),r3
shll2 r2
add r3,r2
mov.l @(bank10.loc_8c1019a4,pc),r3
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
mov.l @(bank10.loc_8c101998,pc),r3
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
mov.l @(bank10.loc_8c1019d4,pc),r2
mov.b r3,@(r0,r4)
mov.l r2,@(0x10,r4)
mov.l @r1,r3
mov r4,r1
mov.w @(loc_8C101990,pc),r0
add 0x34,r1
mov.l @r3,r2
mov.l @(0x38,r2),r3
mov.l r3,@(r0,r4)
mov.l @(bank10.loc_8c1019a4,pc),r3
mov.l @(0x04,r15),r2
jsr @r3
mov 0x0C,r0
mov.l @r15,r1
mov.l @(bank10.loc_8c1019a8,pc),r0
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

;==============================================
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

loc_8c101998:
#data 0x4F12
#data 0x8C04

loc_8c10199c:
#data 0x1792
#data 0x8C10

#align4
loc_8C1019A0:
#data 0x8C26A908

#align4
loc_8c1019a4:
#data bank12.loc_8c1294c8

loc_8c1019a8:
#data bank16.loc_8c165078

loc_8c1019ac:
#data 0x506C
#data 0x8C16

loc_8c1019b0:
#data 0x5080
#data 0x8C16

loc_8c1019b4:
#data 0x50C0
#data 0x8C04

loc_8c1019b8:
#data 0x5110
#data 0x8C16

loc_8c1019bc:
#data 0xD914
#data 0x8C0F

loc_8c1019c0:
#data 0x0000
#data 0x4780

loc_8c1019c4:
#data 0x0000
#data 0x43B4

loc_8c1019c8:
#data 0x0000
#data 0x3F00

loc_8c1019cc:
#data 0xFFFF
#data 0x0000

loc_8c1019d0:
#data 0x5120
#data 0x8C16

#align4
loc_8c1019d4:
#data bank10.loc_8c1018c0

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
mov.l @(bank10.loc_8c101af4,pc),r3
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
mov.l @(bank10.loc_8c101af8,pc),r2
mov.b r3,@(r0,r4)
mov.l r2,@(0x10,r4)
mov.l @r1,r3
mov r4,r1
mov.w @(loc_8C101ACC,pc),r0
add 0x34,r1
mov.l @r3,r2
mov.l @(0x3C,r2),r3
mov.l r3,@(r0,r4)
mov.l @(bank10.loc_8c101b00,pc),r3
mov.l @(0x04,r15),r2
jsr @r3
mov 0x0C,r0
mov.l @r15,r1
mov.l @(bank10.loc_8c101b04,pc),r0
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
loc_8c101aca:
#data 0x012c
loc_8c101acc:
#data 0x0084
loc_8c101ace:
#data 0x0507
loc_8c101ad0:
#data 0x000000Cc

#align4
loc_8C101AD4:
#data bank04.loc_8c0450C0

loc_8C101AD8:
#data 0x8c165138

loc_8C101ADC:
#data bank0f.loc_8c0fD914

loc_8C101AE0:
#data 0x47800000

#align4
loc_8C101AE4:
#data 0x43B40000

#align4
loc_8C101AE8:
#data 0x3F000000

#align4
loc_8C101AEC:
#data 0x0000FFFf

#align4
loc_8C101AF0:
#data 0x8c165148

loc_8C101AF4:
#data bank04.loc_8c044F12

loc_8C101AF8:
#data loc_8c1019D8
loc_8c101afc:
#data 0x8C26A908

#align4
loc_8C101B00:
#data bank12.loc_8c1294C8

loc_8C101B04:
#data 0x8c165078


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

loc_8C101B1A:
mov.w @(loc_8C101C58,pc),r0 ; r0 set to 0xD0
mov.l @(r0,r4),r3
tst r3,r3
bt loc_8C101B2a
mov.l @(r0,r4),r3
add 0xFF,r3
rts
mov.l r3,@(r0,r4)

;==============================================
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
#data 0xD145
#data 0xE074
#data 0xF246
#data 0x415A
#data 0xE15C
#data 0x314C
#data 0xF30D
#data 0xF230
#data 0xF427
#data 0xE034
#data 0xF146
#data 0xF218
#data 0xE168
#data 0x314C
#data 0xF120
#data 0xF417
#data 0xE05C
#data 0xF146
#data 0xF218
#data 0xE160
#data 0x314C
#data 0xF120
#data 0xF417
#data 0xE038
#data 0xF146
#data 0xF218
#data 0xE16C
#data 0x314C
#data 0xF120
#data 0xF417
#data 0xE060
#data 0xF218
#data 0xF146
#data 0xF120
#data 0xF417
#data 0x854E
#data 0x70FF
#data 0x814E
#data 0x600F
#data 0x2008
#data 0x8B04
#data 0x8444
#data 0x7001
#data 0x8044
#data 0xE008
#data 0x814E

loc_8c101ba6:
#data 0x000B
#data 0x0009

;==============================================
loc_8c101baa:
#data 0xE15C
#data 0x314C
#data 0xE034
#data 0xF318
#data 0xF246
#data 0xE168
#data 0x314C
#data 0xF230
#data 0xF427
#data 0xE05C
#data 0xF246
#data 0xF318
#data 0xE160
#data 0x314C
#data 0xF230
#data 0xF427
#data 0xE038
#data 0xF246
#data 0xF318
#data 0xE16C
#data 0x314C
#data 0xF230
#data 0xF427
#data 0xE060
#data 0xF246
#data 0xF318
#data 0xF230
#data 0xF427
#data 0x854E
#data 0x70FF
#data 0x814E
#data 0x600F
#data 0x2008
#data 0x8B04
#data 0x8444
#data 0x7001
#data 0x8044
#data 0xE002
#data 0x814E

loc_8c101bf8:
#data 0x000B
#data 0x0009

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

;==============================================
loc_8C101C58:
#data 0x00D0
loc_8c101c5a:
#data 0x012c

#align4
loc_8C101C5C:
#data 0x8c1651Cc
#data 0x3E800000

#align4
loc_8C101C64:
#data 0x3F000000

#align4
loc_8C101C68:
#data bank04.loc_8c0450C0

loc_8C101C6C:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0xFFFB2F86
#data 0xFFDBFFEb
#data 0x4F22FFCb
#data 0xE0487FE8
#data 0xE2401F53
#data 0x1F71FF4a
#data 0x633D03Fd
#data 0x8F022328
#data 0xA0A51F32
#data 0x0009

loc_8C101C9E:
#data 0xE001
#data 0x8B0D3607
#data 0x401150F1
#data 0xA0058B01
#data 0xC901

loc_8C101CAE:
#data 0x6007
#data 0xC9017001
#data 0x70016007

#align4
loc_8C101CB8:
#data 0x8B012008
#data 0x0009A094

#align4
loc_8C101CC0:
#data 0x53F1C713
#data 0xC713FC08
#data 0xC714FD08
#data 0x4308FF08
#data 0xEB00DA0e
#data 0xED04DC10
#data 0xFE8D4300
#data 0xA07F68B3
#data 0x1F34

loc_8C101CE2:
#data 0x6383
#data 0x4308D20e
#data 0x332C69B3
#data 0x1F35

loc_8C101CEE:
#data 0x52F2
#data 0x2238930a
#data 0xE5058916
#data 0x4A0BE601
#data 0x2008E400
#data 0x6E038D72
#data 0x0009A015
#data 0x00000200

#align4
loc_8C101D0C:
#data bank04.loc_8c044F12
#data 0xBF000000
#data 0x41F00000

#align4
loc_8C101D18:
#data bank11.loc_8c11E750
#data 0x41600000

#align4
loc_8C101D20:
#data 0x8c1651Bc

loc_8C101D24:
#data 0xE601E507
#data 0xE4004A0b
#data 0x8D5B2008
#data 0x6E03

loc_8C101D32:
#data 0x90Aa
#data 0x92A961E3
#data 0xD3567134
#data 0x70A00EB4
#data 0x0E261E34
#data 0x52F3D354
#data 0xE00C430b
#data 0x000960D3
#data 0xE07481Ee
#data 0xE078FEE7
#data 0xFE37F39d
#data 0xFEE7E07c
#data 0xD34E7004
#data 0x52F5FEE7
#data 0x62226032
#data 0x42086002
#data 0x908C012e
#data 0x0E164C0b
#data 0xE05CF0C0
#data 0x4C0BF0D2
#data 0xF0C0FE07
#data 0xF0D2E060
#data 0xFE074C0b
#data 0xF308C744
#data 0xF032E064
#data 0xE05CFE07
#data 0xE068F2E6
#data 0xF2F3F24d
#data 0xE060FE27
#data 0xE06CF2E6
#data 0xF2F3F24d
#data 0xE064FE27
#data 0xE070F2E6
#data 0xF2F3F24d
#data 0xE050FE27
#data 0xFE27F2F8
#data 0xF2F8E054
#data 0xE058FE27
#data 0xFE27F2F8
#data 0xE02353F1
#data 0x0E347901
#data 0x905B39D3
#data 0x8F8852F4
#data 0x78010E26

#align4
loc_8C101DE0:
#data 0x890138D3
#data 0x0009AF7d

#align4
loc_8C101DE8:
#data 0x4F267F18
#data 0xFDF9FCF9
#data 0xFFF9FEF9
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b

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
#align4
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
mov.l @(bank10.loc_8c101eac,pc),r3
jmp @r3
nop

loc_8c101e86:
rts
nop

;==============================================
loc_8C101E8A:
#data 0x012C
#data 0x0431
#data 0x0084

loc_8c101e90:
#data 0x00D0

loc_8C101E92:
#data 0x00D4

loc_8c101e94:
#data 0x1B08
#data 0x8C10

loc_8c101e98:
#data 0x94C8
#data 0x8C12
#data 0xA908
#data 0x8C26
#data 0x0000
#data 0x4170

#align4
loc_8C101EA4:
#data 0x3E8E38E4

#align4
loc_8C101EA8:
#data 0x3E800000

#align4
loc_8c101eac:
#data bank04.loc_8c0450c0

loc_8c101eb0:
#data 0x2FE6
#data 0x2FD6
#data 0x2FC6
#data 0xFFFB
#data 0x4F22
#data 0x7FFC
#data 0xE320
#data 0xFF4C
#data 0x6E43
#data 0x2F52
#data 0x85FC
#data 0x6D03
#data 0x6DDD
#data 0x23D8
#data 0x8D68
#data 0x6C73
#data 0xE101
#data 0x3617
#data 0x8B02
#data 0x76FF
#data 0x3C60
#data 0x8B61

loc_8c101edc:
#data 0x936F
#data 0x23D8
#data 0x8909
#data 0xD33A
#data 0xE505
#data 0xE601
#data 0x430B
#data 0xE400
#data 0x2008
#data 0x8D57
#data 0x6403
#data 0xA008
#data 0x0009

loc_8c101ef6:
#data 0xD235
#data 0xE507
#data 0xE601
#data 0x420B
#data 0xE400
#data 0x2008
#data 0x8D4D
#data 0x6403

loc_8c101f06:
#data 0x905B
#data 0xE200
#data 0xF49D
#data 0x0424
#data 0x70A0
#data 0x9257
#data 0xD32F
#data 0x1434
#data 0x0426
#data 0xE00E
#data 0x814E
#data 0xE012
#data 0x814F
#data 0xE078
#data 0xF447
#data 0xE07C
#data 0xD22B
#data 0xF447
#data 0x7004
#data 0xF447
#data 0x6322
#data 0x9048
#data 0x6132
#data 0x001E
#data 0x9146
#data 0x314C
#data 0x2102
#data 0xE050
#data 0xF4F7
#data 0xE054
#data 0xF4F7
#data 0xE058
#data 0xE302
#data 0xF4F7
#data 0x2D38
#data 0xE023
#data 0x8D19
#data 0x04C4
#data 0xE034
#data 0xF3E6
#data 0xF437
#data 0x9036
#data 0x02EC
#data 0x622C
#data 0x4211
#data 0x8900
#data 0x7207

loc_8c101f64:
#data 0x4221
#data 0x4221
#data 0x4221
#data 0x425A
#data 0xE054
#data 0xF0E6
#data 0xE038
#data 0xF2E6
#data 0xC718
#data 0xF32D
#data 0xF302
#data 0xF008
#data 0xE038
#data 0xF23E
#data 0xA006
#data 0xF427

loc_8c101f84:
#data 0xD315
#data 0x6143
#data 0x62F2
#data 0x7134
#data 0x430B
#data 0xE00C

loc_8c101f90:
#data 0xFF3D
#data 0x901A
#data 0x4C08
#data 0x4C00
#data 0x04C6
#data 0x7004
#data 0x035A
#data 0x0436

loc_8c101fa0:
#data 0x7F04
#data 0x4F26
#data 0xFFF9
#data 0x6CF6
#data 0x6DF6
#data 0x000B
#data 0x6EF6

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
#data 0x0200
#data 0x012c
#data 0x0411
#data 0x02Dc
#data 0x0084
#data 0x013c

loc_8C101FCA:
#data 0x00D0

#align4
loc_8C101FCC:
#data bank04.loc_8c044F12

loc_8C101FD0:
#data loc_8c101E04
#data 0x8C26A908
#data 0x40092492

#align4
loc_8C101FDC:
#data bank12.loc_8c1294C8

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
mov.l @(bank10.loc_8c102124,pc),r3
jmp @r3
nop

loc_8c102042:
rts
nop

;==============================================
loc_8c102046:
#data 0x2FE6
#data 0xFFFB
#data 0x4F22
#data 0x7FFC
#data 0xE310
#data 0xFF4C
#data 0x2F52
#data 0x85F8
#data 0x6403
#data 0x644D
#data 0x2348
#data 0x8D49
#data 0x6E73
#data 0xE101
#data 0x3617
#data 0x8B02
#data 0x76FF
#data 0x3E60
#data 0x8B42

loc_8c10206c:
#data 0x9351
#data 0x2438
#data 0x8909
#data 0xD12D
#data 0xE505
#data 0xE601
#data 0x410B
#data 0xE400
#data 0x2008
#data 0x8D38
#data 0x6403
#data 0xA008
#data 0x0009

loc_8c102086:
#data 0xD128
#data 0xE507
#data 0xE601
#data 0x410B
#data 0xE400
#data 0x2008
#data 0x8D2E
#data 0x6403

loc_8c102096:
#data 0x903A
#data 0xE200
#data 0xD324
#data 0x6143
#data 0x0424
#data 0x70A0
#data 0xE231
#data 0x1434
#data 0x0426
#data 0x7134
#data 0xD321
#data 0x62F2
#data 0x430B
#data 0xE00C
#data 0xE009
#data 0xD220
#data 0x814E
#data 0xE00F
#data 0x814F
#data 0xC71D
#data 0xF308
#data 0xE074
#data 0xFF3D
#data 0xF437
#data 0x6322
#data 0x9024
#data 0x6132
#data 0x035A
#data 0x001E
#data 0x9121
#data 0x314C
#data 0x2102
#data 0xE050
#data 0xF4F7
#data 0xE054
#data 0xF4F7
#data 0xE058
#data 0xF4F7
#data 0xE023
#data 0x04E4
#data 0x4E08
#data 0x9016
#data 0x4E00
#data 0x04E6
#data 0x7004
#data 0x0436

loc_8c1020f2:
#data 0x7F04
#data 0x4F26
#data 0xFFF9
#data 0x000B
#data 0x6EF6

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
loc_8c10210e:
#data 0x012c
loc_8c102110:
#data 0x00D4
#data 0x0200
#data 0x02D8
#data 0x0084
#data 0x00D0
#data 0x0000
loc_8c10211c:
#data 0x3EEEEEEf
loc_8c102120:
#data 0x3DAAAAAb

#align4
loc_8C102124:
#data bank04.loc_8c0450C0

loc_8C102128:
#data bank04.loc_8c044F12

loc_8C10212C:
#data loc_8c101FAe

loc_8C102130:
#data bank12.loc_8c1294C8
#data 0x3F000000
#data 0x8C26A908

#align4
loc_8C10213C:
#data 0x8c1651Dc


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
#align4
loc_8c102150:
mov.w @(0x1C,r4),r0
tst r0,r0
bt loc_8c102186
mov.l @(loc_8C102224,pc),r3
mov.l @(bank10.loc_8c102228,pc),r2
mov.l @r3,r0
mov.l @r2,r1
mov.l @r0,r0
shll2 r1
mov.l @(bank10.loc_8c102220,pc),r5
mov.l @(r0,r1),r1
mov.w @(loc_8C102216,pc),r0
mov.l @(bank10.loc_8c10221c,pc),r6
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
#data 0x000B
#data 0x0009

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
#data 0xFFFb
#data 0x7FF84F22
#data 0x1F51E308
#data 0x85F82F72
#data 0x644D6403
#data 0x8D152348
#data 0x911DFF4c
#data 0x89092418
#data 0xE505D214
#data 0x420BE601
#data 0x2008E400
#data 0x64038F24
#data 0x0009A008

#align4
loc_8C1021F4:
#data 0xE507D20f
#data 0x420BE601
#data 0x2008E400
#data 0x64038F1a

#align4
loc_8C102204:
#data 0x6320D209
#data 0x223073Ff
#data 0x4F267F08
#data 0xFFF9000b

;==============================================
loc_8C102214:
#data 0x00D0
loc_8c102216:
#data 0x0084
#data 0x00000200

#align4
loc_8C10221C:
#data bank13.loc_8c13d9Dc

loc_8C102220:
#data bank13.loc_8c13da1c
loc_8c102224:
#data 0x8C26A908

#align4
loc_8C102228:
#data 0x8c165164

loc_8C10222C:
#data 0x8C289667

#align4
loc_8C102230:
#data bank04.loc_8c0450C0

loc_8C102234:
#data bank04.loc_8c044F12

loc_8C102238:
#data 0xE2019074
#data 0x6143D33b
#data 0x70A00424
#data 0x1434E231
#data 0x71340426
#data 0x52F1D338
#data 0xE00C430b
#data 0xD337E000
#data 0xE003814e
#data 0x814FD236
#data 0x61226032
#data 0x41086002
#data 0x011ED534
#data 0x0416905b
#data 0xF4F7E050
#data 0xF4F7E054
#data 0xF4F7E058
#data 0x63F2E023
#data 0x61F20434
#data 0x41089050
#data 0x04164100
#data 0x4F267F08
#data 0x432BD32b
#data 0x7F08FFF9
#data 0x000B4F26
#data 0xFFF9

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

#align4
loc_8C1022E4:
#data 0x750465F3
#data 0x64F34B0b
#data 0xE004F2F8
#data 0x65F3F3E8
#data 0xF2307504
#data 0xF1F6FF2a
#data 0xF3C8E004
#data 0xFF17F131
#data 0x64F34A0b

#align4
loc_8c102308:
jsr @r13
nop
tst r0,r0
bt bank10.loc_8c1022e4

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
#data 0x012c

loc_8C102326:
#data 0x0084
#data 0x00D0
#data 0x0000

#align4
loc_8C10232C:
#data loc_8c1020Fc

loc_8C102330:
#data bank12.loc_8c1294C8

loc_8C102334:
#data 0x8C26A908

#align4
loc_8C102338:
#data 0x8c165160

loc_8C10233C:
#data loc_8c10229e

loc_8C102340:
#data bank03.loc_8c0305Ca

loc_8C102344:
#data bank13.loc_8c13d95c

loc_8C102348:
#data 0x8c165164

loc_8C10234C:
#data loc_8c108060

loc_8C102350:
#data loc_8c1081E6

loc_8C102354:
#data loc_8c108192

loc_8C102358:
#data loc_8c108086


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
mov.l @(bank10.loc_8c10249c,pc),r9
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
mov.l @(bank10.loc_8c1024a0,pc),r3
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
mov.l @(bank10.loc_8c1024a8,pc),r3
mov r4,r1
jsr @r3
mov r5,r0
bra loc_8c102422
mov r0,r3

loc_8c102418:
mov.l @(bank10.loc_8c1024a8,pc),r2
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
mov.l @(bank10.loc_8c1024a8,pc),r3
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

loc_8C10248A:
#data 0x013E

loc_8C10248C:
#data 0x013C
#data 0x0000

loc_8c102490:
#data 0x95F0
#data 0x8C28

#align4
loc_8C102494:
#data 0x3F19999A

#align4
loc_8C102498:
#data 0x41200000

#align4
loc_8c10249c:
#data bank11.loc_8c11e730

loc_8c1024a0:
#data bank12.loc_8c1294c8

loc_8C1024A4:
#data 0x3FD55555

#align4
loc_8c1024a8:
#data bank12.loc_8c1292d4

loc_8C1024AC:
#data 0x40092492


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
bsr bank10.loc_8c1021c2
mov r14,r4
mov.l r10,@-r15
mov r13,r7
mov r15,r5
add 0x08,r5
fmov fr15,fr4
mov r12,r6
bsr bank10.loc_8c102046
mov r14,r4
mov.l r10,@-r15
mov r13,r7
mov r15,r5
add 0x0C,r5
fmov fr15,fr4
mov r12,r6
bsr bank10.loc_8c101eb0
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

loc_8C102556:
#data 0x0100

loc_8C102558:
#data 0x0400

loc_8C10255A:
#data 0x0200

#align4
loc_8C10255C:
#data 0x3FC00000


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
bsr bank10.loc_8c1021c2
mov r14,r4
fmov fr15,fr4
mov r8,r5
mov r12,r6
mov.l r10,@-r15
mov r13,r7
bsr bank10.loc_8c102046
mov r14,r4
fmov fr15,fr4
mov r8,r5
mov r12,r6
mov.l r10,@-r15
mov r13,r7
bsr bank10.loc_8c101eb0
mov r14,r4
fmov fr15,fr4
mov r8,r5
mov r12,r6
mov.l r10,@-r15
mov r13,r7

loc_8c10259e:
bsr bank10.loc_8c101c6c
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
#data 0x2FE6
#data 0x6E43
#data 0x2FD6
#data 0xE077
#data 0xD41A
#data 0xE206
#data 0xFFFB
#data 0x4F22
#data 0x034C
#data 0x3323
#data 0x8927
#data 0x024c
#data 0x655C
#data 0x2558
#data 0x7201
#data 0x8D03
#data 0x0424
#data 0xC714
#data 0xA001
#data 0xFF08
#data 0xFF9D
#data 0xED79
#data 0xF4FC
#data 0x65E3
#data 0xE601
#data 0x2FD6
#data 0xE700
#data 0xBDDf
#data 0x6473
#data 0xF4Fc
#data 0x65E3
#data 0xE601
#data 0x2FD6
#data 0xE700
#data 0xBD1A
#data 0x6473
#data 0xF4FC
#data 0x65E3
#data 0xE601
#data 0x2FD6
#data 0xE700
#data 0xBC48
#data 0x6473
#data 0xF4Fc
#data 0x65E3
#data 0xE601
#data 0x2FD6
#data 0xE700
#data 0xBB1F
#data 0x6473
#data 0x7F10
#data 0x4F26
#data 0xFFF9
#data 0x6DF6
#data 0x000B
#data 0x6EF6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c10263a:
#data 0x0200
	#align4
#data 0x8C2895F0
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
#data 0x6EF6000b

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

loc_8C102748:
#data 0x012c

loc_8C10274A:
#data 0x0130

loc_8C10274C:
#data 0xFF4c
#data 0x0000

#align4
loc_8C102750:
#data 0x8C289608

#align4
loc_8C102754:
#data 0x47800000

#align4
loc_8C102758:
#data 0x43B40000

#align4
loc_8C10275C:
#data 0x3F000000

#align4
loc_8C102760:
#data 0x0000FFFf

#align4
loc_8C102764:
#data 0x8c1651E4

loc_8C102768:
#data 0x41200000

#align4
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
mov.l @(bank10.loc_8c1028b4,pc),r3
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
mov.l @(bank10.loc_8c1028b8,pc),r2
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
#data 0x2FE6
#data 0x6E43
#data 0xD420
#data 0xE300
#data 0x902C
#data 0x2FD6
#data 0x4F22
#data 0x5D46
#data 0x0E34
#data 0xE303
#data 0x6240
#data 0x622C
#data 0x3237
#data 0x8B07
#data 0xD11B
#data 0x410B
#data 0x64D3
#data 0x2008
#data 0x8B02
#data 0x901D
#data 0xE201
#data 0x0E24

loc_8c102866:
#data 0x62D3
#data 0xD317
#data 0x61E3
#data 0x7234
#data 0x7134
#data 0x430B
#data 0xE00C
#data 0xC716
#data 0xD215
#data 0xF308
#data 0xE004
#data 0xF226
#data 0xE038
#data 0xD114
#data 0xF230
#data 0x415A
#data 0xFE27
#data 0xE03C
#data 0xF1E6
#data 0xF20D
#data 0xF120
#data 0xFE17
#data 0x4F26
#data 0x6DF6
#data 0x000B
#data 0x6EF6

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

loc_8c1028a4:
#data 0x0000
#data 0x4780

loc_8c1028a8:
#data 0x0000
#data 0x43B4

loc_8c1028ac:
#data 0x0000
#data 0x3F00

loc_8c1028b0:
#data 0xFFFF
#data 0x0000

#align4
loc_8c1028b4:
#data bank04.loc_8c044f12

loc_8c1028b8:
#data bank10.loc_8c102644

loc_8C1028BC:
#data 0x8C26A908
#data 0x95F0
#data 0x8C28

loc_8c1028c4:
#data 0x35E2
#data 0x8C03

loc_8c1028c8:
#data 0x94C8
#data 0x8C12
#data 0xA524
#data 0x8C26
#data 0x0000
#data 0xC248
#data 0x0000
#data 0x4080

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
#data 0x6EF6000b

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
#data 0x0000

#align4
loc_8C1029F8:
#data bank04.loc_8c044F12

loc_8C1029FC:
#data loc_8c10283a

loc_8C102A00:
#data 0x8C26A908

#align4
loc_8C102A04:
#data 0x8C289614

#align4
loc_8C102A08:
#data 0x47800000

#align4
loc_8C102A0C:
#data 0x43B40000

#align4
loc_8C102A10:
#data 0x3F000000

#align4
loc_8C102A14:
#data 0x0000FFFf

#align4
loc_8C102A18:
#data 0x8c1651Ec


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

#align4
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
mov.l @(bank10.loc_8c102b74,pc),r3
mov 0x07,r5
mov.l r4,@r15
mov 0x01,r6
jsr @r3
mov 0x00,r4
tst r0,r0
bt/s loc_8c102aee
mov r0,r4
mov.w @(bank10.loc_8c102b56,pc),r0
mov 0x00,r3
mov.l @(loc_8C102B7C,pc),r1
mov.l @(bank10.loc_8c102b78,pc),r2
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
#data 0x2FE6
#data 0x6E43
#data 0xD421
#data 0xE300
#data 0x902A
#data 0x2FD6
#data 0x4F22
#data 0x5D49
#data 0x0E34
#data 0xE303
#data 0x6240
#data 0x622C
#data 0x3237
#data 0x8B07
#data 0xD11C
#data 0x410B
#data 0x64D3
#data 0x2008
#data 0x8B02
#data 0x901B
#data 0xE201
#data 0x0E24

loc_8c102b22:
#data 0x62D3
#data 0xD318
#data 0x61E3
#data 0x7234
#data 0x7134
#data 0x430B
#data 0xE00C
#data 0xC717
#data 0xD216
#data 0xF308
#data 0xE004
#data 0xF226
#data 0xE038
#data 0xD115
#data 0xF230
#data 0x415A
#data 0xFE27
#data 0xE03C
#data 0xF1E6
#data 0xF20D
#data 0xF120
#data 0xFE17
#data 0x4F26
#data 0x6DF6
#data 0x000B
#data 0x6EF6

;==============================================
loc_8c102b56:
#data 0x012C
loc_8c102b58:
#data 0xFF4C

loc_8C102B5A:
#data 0x0088

loc_8C102B5C:
#data 0x00C8
#data 0x0000

loc_8c102b60:
#data 0x0000
#data 0x4120

loc_8c102b64:
#data 0x0000
#data 0x4780

loc_8c102b68:
#data 0x0000
#data 0x43B4

loc_8c102b6c:
#data 0x0000
#data 0x3F00

loc_8c102b70:
#data 0xFFFF
#data 0x0000

#align4
loc_8c102b74:
#data bank04.loc_8c044f12

loc_8c102b78:
#data bank10.loc_8c102920

loc_8C102B7C:
#data 0x8C26A908
#data 0x95F0
#data 0x8C28

loc_8c102b84:
#data 0x35E2
#data 0x8C03

loc_8c102b88:
#data 0x94C8
#data 0x8C12
#data 0xA524
#data 0x8C26
#data 0x0000
#data 0xC248
#data 0x0000
#data 0x40A0

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
#align4
loc_8C102BE0:
#data 0xE300D638
#data 0x4F229064
#data 0x0434556a
#data 0x22286250
#data 0x905E890e
#data 0x600C005c
#data 0x8B098808
#data 0x600C6060
#data 0x8B058804
#data 0x025C9054
#data 0x89012228
#data 0x0434E301

#align4
loc_8C102C10:
#data 0xD32D6253
#data 0x72346143
#data 0x430B7134
#data 0x9349E00c
#data 0x315CE154
#data 0x335CD229
#data 0x6330F018
#data 0xF246E038
#data 0x435A633c
#data 0xF32DD327
#data 0xF302425a
#data 0xF23EF00d
#data 0xC723F427
#data 0xE038F508
#data 0xF350F346
#data 0xE03CF437
#data 0xF39DF246
#data 0xF427F230
#data 0xF438E038
#data 0xF246F450
#data 0x8900F245
#data 0xF447

loc_8C102C66:
#data 0x4F26
#data 0x0009000b

;==============================================
#align4
loc_8c102c6c:
sts.l pr,@-r15
mov.l @(bank10.loc_8c102cb8,pc),r3
mov 0x07,r5
mov 0x01,r6
jsr @r3
mov 0x00,r4
tst r0,r0
bt/s loc_8c102caa
mov r0,r4
mov.l @(bank10.loc_8c102cd8,pc),r2
mov 0x00,r3
mov.w @(bank10.loc_8c102cb0,pc),r0
mov.l @(bank10.loc_8c102cc0,pc),r1
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
#data 0x0255
#data 0x013C
#data 0x0000

#align4
loc_8c102cb8:
#data bank04.loc_8c044f12

loc_8c102cbc:
#data 0x2AF6
#data 0x8C10

#align4
loc_8c102cc0:
#data 0x8C26A908
#data 0x95F0
#data 0x8C28

loc_8c102cc8:
#data 0x94C8
#data 0x8C12
#data 0x2492
#data 0x4009
#data 0x0000
#data 0x42C8
#data 0xA5AC
#data 0x8C26

#align4
loc_8c102cd8:
#data bank10.loc_8c102be0

loc_8c102cdc:
#data 0xD635
#data 0xE300
#data 0x9064
#data 0x4F22
#data 0x5567
#data 0x0434
#data 0x6250
#data 0x2228
#data 0x890E
#data 0x905E
#data 0x005C
#data 0x600C
#data 0x8808
#data 0x8B09
#data 0x6060
#data 0x600C
#data 0x8804
#data 0x8B05
#data 0x9054
#data 0x025C
#data 0x2228
#data 0x8901
#data 0xE301
#data 0x0434

loc_8c102d0c:
#data 0x6253
#data 0xD32A
#data 0x6143
#data 0x7234
#data 0x7134
#data 0x430B
#data 0xE00C
#data 0x9349
#data 0xE154
#data 0x315C
#data 0xD226
#data 0x335C
#data 0xF018
#data 0x6330
#data 0xE038
#data 0xF246
#data 0x633C
#data 0x435A
#data 0xD324
#data 0xF32D
#data 0x425A
#data 0xF302
#data 0xF00D
#data 0xF23E
#data 0xF427
#data 0xC720
#data 0xF508
#data 0xE038
#data 0xF346
#data 0xF350
#data 0xF437
#data 0xE03C
#data 0xF246
#data 0xF38D
#data 0xF230
#data 0xF427
#data 0xE038
#data 0xF438
#data 0xF450
#data 0xF246
#data 0xF245
#data 0x8900
#data 0xF447

loc_8c102d62:
#data 0x4F26
#data 0x000B
#data 0x0009

;==============================================
loc_8c102d68:
#data 0x4F22
#data 0xD317
#data 0xE507
#data 0xE601
#data 0x430B
#data 0xE400
#data 0x2008
#data 0x8D16
#data 0x6403
#data 0xD214
#data 0xE300
#data 0x9015
#data 0xD113
#data 0x0434
#data 0xE315
#data 0x1424
#data 0x70A0
#data 0x0436
#data 0xE050
#data 0x6212
#data 0xF49D
#data 0x6322
#data 0x033E
#data 0x7034
#data 0x0436
#data 0xE050
#data 0xF447
#data 0xE054
#data 0xF447
#data 0xE058
#data 0xF447

loc_8c102da6:
#data 0x4F26
#data 0x000B
#data 0x0009

;==============================================
#data 0x012C
#data 0x0255
#data 0x013C
#data 0x0000
#data 0x95F0
#data 0x8C28

loc_8c102db8:
#data 0x94C8
#data 0x8C12
#data 0x2492
#data 0x4009
#data 0x0000
#data 0x42C8
#data 0xA5AC
#data 0x8C26

loc_8c102dc8:
#data 0x4F12
#data 0x8C04

loc_8c102dcc:
#data 0x2CDC
#data 0x8C10
#data 0xA908
#data 0x8C26

loc_8c102dd4:
#data 0xD636
#data 0xE300
#data 0x9066
#data 0x4F22
#data 0x556B
#data 0x0434
#data 0x6250
#data 0x2228
#data 0x890E
#data 0x9060
#data 0x005C
#data 0x600C
#data 0x8808
#data 0x8B09
#data 0x6060
#data 0x600C
#data 0x8804
#data 0x8B05
#data 0x9056
#data 0x025C
#data 0x2228
#data 0x8901
#data 0xE301
#data 0x0434

loc_8c102e04:
#data 0x6253
#data 0xD32B
#data 0x6143
#data 0x7234
#data 0x7134
#data 0x430B
#data 0xE00C
#data 0x934B
#data 0xE154
#data 0x315C
#data 0xD227
#data 0x335C
#data 0xF018
#data 0x6330
#data 0xE038
#data 0xF246
#data 0x633C
#data 0xD126
#data 0x435A
#data 0xD326
#data 0xF32D
#data 0x425A
#data 0xF302
#data 0xF00D
#data 0x415A
#data 0xF23E
#data 0xF427
#data 0xC720
#data 0xF508
#data 0xE038
#data 0xF346
#data 0xF350
#data 0xF437
#data 0xE03C
#data 0xF246
#data 0xF30D
#data 0xF230
#data 0xF427
#data 0xF438
#data 0xF450
#data 0xE038
#data 0xF246
#data 0xF245
#data 0x8900
#data 0xF447

loc_8c102e5e:
#data 0x4F26
#data 0x000B
#data 0x0009

;==============================================
loc_8c102e64:
#data 0x4F22
#data 0xD318
#data 0xE507
#data 0xE601
#data 0x430B
#data 0xE400
#data 0x2008
#data 0x8D16
#data 0x6403
#data 0xD215
#data 0xE300
#data 0x9015
#data 0xD114
#data 0x0434
#data 0xE315
#data 0x1424
#data 0x70A0
#data 0x0436
#data 0xE054
#data 0x6212
#data 0xF49D
#data 0x6322
#data 0x033E
#data 0x7030
#data 0x0436
#data 0xE050
#data 0xF447
#data 0xE054
#data 0xF447
#data 0xE058
#data 0xF447

loc_8c102ea2:
#data 0x4F26
#data 0x000B
#data 0x0009

;==============================================
#data 0x012C
#data 0x0255
#data 0x013C
#data 0x0000
#data 0x95F0
#data 0x8C28

loc_8c102eb4:
#data 0x94C8
#data 0x8C12
#data 0x2492
#data 0x4009
#data 0x0000
#data 0x42C8
#data 0x0000
#data 0x4040
#data 0xA5AC
#data 0x8C26

loc_8c102ec8:
#data 0x4F12
#data 0x8C04

loc_8c102ecc:
#data 0x2DD4
#data 0x8C10
#data 0xA908
#data 0x8C26

loc_8c102ed4:
#data 0xD63C
#data 0xE300
#data 0x9072
#data 0x4F22
#data 0x5568
#data 0x0434
#data 0x6250
#data 0x2228
#data 0x890E
#data 0x906C
#data 0x005C
#data 0x600C
#data 0x8808
#data 0x8B09
#data 0x6060
#data 0x600C
#data 0x8804
#data 0x8B05
#data 0x9062
#data 0x025C
#data 0x2228
#data 0x8901
#data 0xE301
#data 0x0434

loc_8c102f04:
#data 0x6253
#data 0xD331
#data 0x6143
#data 0x7234
#data 0x7134
#data 0x430B
#data 0xE00C
#data 0x9357
#data 0xE154
#data 0x315C
#data 0xD22D
#data 0x335C
#data 0xF018
#data 0x6330
#data 0xE038
#data 0xF246
#data 0x633C
#data 0x435A
#data 0xD32B
#data 0xF32D
#data 0xF302425A
#data 0xF23EF00D
#data 0xC727F427
#data 0xE038F508
#data 0xF350F346
#data 0xE03CF437
#data 0xF330F39D
#data 0xF230F246
#data 0xF438F427
#data 0xE038F450
#data 0xF245F246
#data 0xF4478900

#align4
loc_8c102f5c:
#data 0x000B4F26
#data 0x0009

;==============================================
loc_8c102f62:
#data 0x4F22
#data 0xE507D31D
#data 0x430BE601
#data 0x2008E400
#data 0x64038D16
#data 0xE300D21A
#data 0xD11A9022
#data 0xE3110434
#data 0x70A01424
#data 0xE0500436
#data 0xF49D6212
#data 0x033E6322
#data 0x04367034
#data 0xF447E050
#data 0xF447E054
#data 0xF447E058

#align4
loc_8c102fa0:
#data 0x000B4F26
#data 0x0009

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
#data 0x0255012c
#data 0x0000013c
#data 0x8C2895F0

#align4
loc_8C102FCC:
#data bank12.loc_8c1294C8
#data 0x40092492
#data 0x42C80000
#data 0x8C26A5Ac

#align4
loc_8C102FDC:
#data bank04.loc_8c044F12

loc_8C102FE0:
#data loc_8c102ED4
#data 0x8C26A908

#align4
loc_8C102FE8:
#data 0x7FF84F22
#data 0xE601D33a
#data 0x2F701F41
#data 0x650384Fc
#data 0xE400430b
#data 0x8D2B2008
#data 0xD3366403
#data 0x90636143
#data 0x62307134
#data 0x23207201
#data 0xD233E300
#data 0x14240434
#data 0x52F1D332
#data 0xE00C430b
#data 0x84FCE123
#data 0xD233314c
#data 0xC72F2100
#data 0xF20863F0
#data 0x633CC72e
#data 0x435AF108
#data 0xF008C72d
#data 0xD12EE048
#data 0xF322F32d
#data 0xF300F313
#data 0x035AF33d
#data 0x92402329
#data 0x0436331c
#data 0x0426903e

#align4
loc_8C103058:
#data 0x4F267F08
#data 0x0009000b

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
#data 0x0189012c
#data 0x000000Cc

#align4
loc_8C1030D8:
#data bank04.loc_8c044F12
#data 0x8C289650

#align4
loc_8C1030E0:
#data loc_8c103060

loc_8C1030E4:
#data bank12.loc_8c1294C8
#data 0x49340000
#data 0x43B40000
#data 0x3F000000
#data 0x0000FFFf
#data 0x0000C000


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

#align4
loc_8c103118:
mov 0x23,r0
mov.b @(r0,r14),r6
mov 0x04,r5

loc_8c10311e:
bsr bank10.loc_8c103584
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
#align4
loc_8c103148:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(bank10.loc_8c103248,pc),r3
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
mov.l @(bank10.loc_8c10324c,pc),r2
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
mov.l @(bank10.loc_8c103248,pc),r3
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
mov.l @(bank10.loc_8c103260,pc),r2
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
#data 0x50C0
#data 0x8C04

loc_8c103244:
#data 0x9650
#data 0x8C28

#align4
loc_8c103248:
#data bank04.loc_8c044f12

loc_8c10324c:
#data 0x318C
#data 0x8C10

#align4
loc_8C103250:
#data 0x8C26A908

loc_8c103254:
#data 0x5200
#data 0x8C16

loc_8c103258:
#data 0xD914
#data 0x8C0F

loc_8c10325c:
#data 0x5210
#data 0x8C16

#align4
loc_8c103260:
#data bank10.loc_8c103264

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
mov.l @(bank10.loc_8c1033d0,pc),r3
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
mov.l @(bank10.loc_8c1033d4,pc),r2
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
#align4
loc_8c10336c:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(bank10.loc_8c1033d0,pc),r3
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
mov.l @(bank10.loc_8c1033e4,pc),r2
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
#data 0x0000

loc_8c1033c0:
#data 0x50C0
#data 0x8C04

loc_8c1033c4:
#data 0x5220
#data 0x8C16

loc_8c1033c8:
#data 0xD914
#data 0x8C0F

loc_8c1033cc:
#data 0x5230
#data 0x8C16

#align4
loc_8c1033d0:
#data bank04.loc_8c044f12

loc_8c1033d4:
#data 0x330A
#data 0x8C10

#align4
loc_8C1033D8:
#data 0x8C26A908

loc_8c1033dc:
#data 0x5248
#data 0x8C16

loc_8c1033e0:
#data 0x5258
#data 0x8C16

#align4
loc_8c1033e4:
#data bank10.loc_8c1033e8

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
mov.l @(bank10.loc_8c103558,pc),r3
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
mov.l @(bank10.loc_8c10355c,pc),r2
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

;==============================================
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
#data 0x000000C8

#align4
loc_8C103548:
#data bank04.loc_8c0450C0

loc_8C10354C:
#data 0x8c165270

loc_8C103550:
#data bank0f.loc_8c0fD914

loc_8C103554:
#data 0x8c165280

loc_8C103558:
#data bank04.loc_8c044F12

loc_8C10355C:
#data loc_8c10348e
loc_8c103560:
#data 0x8C26A908

#align4
loc_8C103564:
#data 0x8c165298

loc_8C103568:
#data 0x8c1652A8

loc_8C10356C:
#data 0x47800000

#align4
loc_8C103570:
#data 0x43B40000

#align4
loc_8C103574:
#data 0x3F000000

#align4
loc_8C103578:
#data 0x0000FFFf

#align4
loc_8C10357C:
#data 0x8c1652B8

loc_8C103580:
#data 0x8c1652C8

loc_8C103584:
#data 0x7FF44F22
#data 0x2F521F41
#data 0x00096063
#data 0xE60180F8
#data 0xD32C84F8
#data 0x430B6503
#data 0x2008E400
#data 0x64038D10
#data 0xE301904b
#data 0x0434D228
#data 0x934770A0
#data 0x04361424
#data 0x52F19345
#data 0x332C9044
#data 0xE0200436
#data 0x042462F2

#align4
loc_8C1035C4:
#data 0x4F267F0c
#data 0x0009000b

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
#data 0x012c
#data 0x0400
#data 0x0088
#data 0x00C8

loc_8C103646:
#data 0x0084

#align4
loc_8C103648:
#data bank04.loc_8c044F12

loc_8C10364C:
#data loc_8c1035Cc

loc_8C103650:
#data 0x8c1653F8

loc_8C103654:
#data bank04.loc_8c0450C0

loc_8C103658:
#data 0x8c1653E0

loc_8C10365C:
#data 0x8C26A908
#data 0x4F222FE6
#data 0x90A37FF4
#data 0x03ED6E43
#data 0x89042338
#data 0xF358E034
#data 0xA004F2E6
#data 0xE034F231
#data 0xF2E6F358
#data 0xE004F230
#data 0xF356FF2a
#data 0xF2E6E038
#data 0xF230E004
#data 0xE03CFF27
#data 0xE008F3E6
#data 0xB007FF37
#data 0xD24664F3
#data 0x64E3420b
#data 0x4F267F0c
#data 0x6EF6000b

;==============================================
#data 0x2FD62FE6
#data 0x2FC6ED05
#data 0x2FB6EC03
#data 0x2FA6EB00
#data 0x4F226A43
#data 0x65E36EB3
#data 0x64A3B00c
#data 0x3EC37E01
#data 0x4D108BF9
#data 0x4F268BF6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b

;==============================================
#data 0x2FD62FE6
#data 0x4F222FC6
#data 0xD3347FF8
#data 0x2F42E601
#data 0xE5071F51
#data 0xE400430b
#data 0x8D792008
#data 0x90586E03
#data 0xD22FE301
#data 0x0E34D12f
#data 0x63121E24
#data 0x52F161E3
#data 0x63327134
#data 0x4208904e
#data 0xD32B323c
#data 0x904A022e
#data 0x62F20E26
#data 0xE00C430b
#data 0x4D0BDD28
#data 0x6103EC1e
#data 0x000960C3
#data 0x420BD226
#data 0x70F10009
#data 0xE05C405a
#data 0x4D0BF32d
#data 0x6103FE37
#data 0x000960C3
#data 0x430BD320
#data 0x70F10009
#data 0xE060405a
#data 0x4D0BF32d
#data 0x6103FE37
#data 0x000960C3
#data 0x430BD31a
#data 0x70F10009
#data 0xE064405a
#data 0xFE37F32d
#data 0xF408C717
#data 0xF3E6E05c
#data 0xF34DE068
#data 0xFE37F343
#data 0xF3E6E060
#data 0xF34DE06c
#data 0xFE37F343
#data 0xF3E6E064
#data 0xF34DE070
#data 0xFE37F343
#data 0xF39DE074
#data 0xFE374D0b
#data 0x4011D30c
#data 0xE1488F18
#data 0x2039A01b
#data 0x012C0130
#data 0x008401E4

#align4
loc_8C1037B8:
#data bank04.loc_8c0424Fe

loc_8C1037BC:
#data bank04.loc_8c044F12

loc_8C1037C0:
#data loc_8c1037Fc
#data 0x8C26A908

#align4
loc_8C1037C8:
#data bank12.loc_8c1294C8

loc_8C1037CC:
#data bank11.loc_8c11e730

loc_8C1037D0:
#data bank12.loc_8c1292D4
#data 0x41F00000
#data 0x0000FFFf
#data 0x70016007
#data 0x60072039
#data 0x31EC7001
#data 0xE3272102
#data 0x0E369032
#data 0x4F267F08
#data 0x6DF66CF6
#data 0x6EF6000b

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

;==============================================
#data 0x000000Cc

#align4
loc_8C103858:
#data bank04.loc_8c0450C0

loc_8C10385C:
#data loc_8c1087Ce

loc_8C103860:
#data 0x3C888889


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
mov.l @(bank10.loc_8c103958,pc),r3
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
mov.l @(bank10.loc_8c10395c,pc),r2
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
mov.l @(bank10.loc_8c103964,pc),r3
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
#data 0x4F22
#data 0x7FFC
#data 0xD31A
#data 0xE507
#data 0x2F42
#data 0xE601
#data 0x430B
#data 0xE400
#data 0x2008
#data 0x8D24
#data 0x6403
#data 0x9026
#data 0xE301
#data 0xD116
#data 0xD219
#data 0x0434
#data 0x1424
#data 0x6312
#data 0x6143
#data 0x901F
#data 0x7134
#data 0x6232
#data 0x032E
#data 0x901C
#data 0x0436
#data 0xD311
#data 0x62F2
#data 0x430B
#data 0xE00C
#data 0xD110
#data 0xE038
#data 0xF246
#data 0xE321
#data 0x415A
#data 0xE500
#data 0xF30D
#data 0xF230
#data 0xF427
#data 0x900E
#data 0x0436
#data 0x6053
#data 0x0009
#data 0x814E
#data 0x814F
#data 0xE074
#data 0xF29D
#data 0xF427

loc_8c103948:
#data 0x7F04
#data 0x4F26
#data 0x000B
#data 0x0009

;==============================================
loc_8C103950:
#data 0x012C

loc_8C103952:
#data 0x02E8

loc_8C103954:
#data 0x0084

loc_8C103956:
#data 0x00CC

loc_8c103958:
#data 0x4F12
#data 0x8C04

#align4
loc_8c10395c:
#data bank10.loc_8c103a48

loc_8C103960:
#data 0x8C26A908

#align4
loc_8c103964:
#data bank12.loc_8c1294c8

loc_8C103968:
#data 0x43092492

loc_8c10396c:
#data 0x3A7E
#data 0x8C10

loc_8c103970:
#data 0x4F22
#data 0x7FFC
#data 0xD356
#data 0xE507
#data 0x2F42
#data 0xE601
#data 0x430B
#data 0xE400
#data 0x2008
#data 0x8D27
#data 0x6403
#data 0x909D
#data 0xE301
#data 0xD153
#data 0xD251
#data 0x0434
#data 0x1424
#data 0x6312
#data 0x6143
#data 0x9096
#data 0x7134
#data 0x6232
#data 0x032E
#data 0x9093
#data 0x0436
#data 0xD34E
#data 0x62F2
#data 0x430B
#data 0xE00C
#data 0xD14D
#data 0xE038
#data 0xF246
#data 0xE331
#data 0x415A
#data 0xF49D
#data 0xF30D
#data 0xF230
#data 0xF427
#data 0x9085
#data 0x0436
#data 0xE000
#data 0x814E
#data 0xE074
#data 0xF447
#data 0xE050
#data 0xF447
#data 0xE054
#data 0xF447
#data 0xE058
#data 0xF447

loc_8c1039d4:
#data 0x7F04
#data 0x4F26
#data 0x000B
#data 0x0009

;==============================================
loc_8c1039dc:
#data 0x4F22
#data 0x7FFC
#data 0xD33B
#data 0xE507
#data 0x2F42
#data 0xE601
#data 0x430B
#data 0xE400
#data 0x2008
#data 0x8D27
#data 0x6403
#data 0x9067
#data 0xE301
#data 0xD138
#data 0xD23A
#data 0x0434
#data 0x1424
#data 0x6312
#data 0x6143
#data 0x9063
#data 0x7134
#data 0x6232
#data 0x032E
#data 0x905D
#data 0x0436
#data 0xD333
#data 0x62F2
#data 0x430B
#data 0xE00C
#data 0xD132
#data 0xE038
#data 0xF246
#data 0xE331
#data 0x415A
#data 0xF49D
#data 0xF30D
#data 0xF230
#data 0xF427
#data 0x904F
#data 0x0436
#data 0xE000
#data 0x814E
#data 0xE074
#data 0xF447
#data 0xE050
#data 0xF447
#data 0xE054
#data 0xF447
#data 0xE058
#data 0xF447

loc_8c103a40:
#data 0x7F04
#data 0x4F26
#data 0x000B
#data 0x0009

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

#align4
loc_8c103aa0:
mov.w @(0x1C,r4),r0
mov 0x08,r3
mov.l @(bank10.loc_8c103af4,pc),r1
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
#data 0x012C
#data 0x030C

loc_8c103ac8:
#data 0x0084
#data 0x00CC
#data 0x0310

loc_8c103ace:
#data 0x02E8

loc_8c103ad0:
#data 0x4F12
#data 0x8C04

loc_8c103ad4:
#data 0x3AF8
#data 0x8C10

loc_8c103ad8:
#data 0xA908
#data 0x8C26

loc_8c103adc:
#data 0x94C8
#data 0x8C12
#data 0x2492
#data 0x4309

loc_8c103ae4:
#data 0x3B46
#data 0x8C10

loc_8c103ae8:
#data 0x50C0
#data 0x8C04

loc_8c103aec:
#data 0x5410
#data 0x8C16

loc_8c103af0:
#data 0xC28F
#data 0x3DF5

#align4
loc_8c103af4:
#data bank16.loc_8c165488

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
mov.l @(bank10.loc_8c103b98,pc),r1
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

loc_8C103B46:
mov.w @(0x1C,r4),r0
mov 0x0E,r3 ; r3 set to 0x0e
cmp/gt r3,r0
bf loc_8C103B54
mov.l @(loc_8C103B94,pc),r2 ; r2 set to 0x8C0450C0
jmp @r2
nop

#align4
loc_8c103b54:
mov.w @(0x1C,r4),r0
mov 0x09,r3
mov.l @(bank10.loc_8c103b98,pc),r1
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

;==============================================
loc_8c103b94:
#data 0x50C0
#data 0x8C04

#align4
loc_8c103b98:
#data bank16.loc_8c16544c

loc_8C103B9C:
#data 0x3DCCCCCD

#align4
loc_8C103BA0:
#data 0x3E800000

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

;==============================================
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
#data 0x0000

#align4
loc_8C103CF4:
#data bank04.loc_8c044F12

loc_8C103CF8:
#data loc_8c103E68

loc_8C103CFC:
#data 0x8C26A908

#align4
loc_8C103D00:
#data bank12.loc_8c1294C8

loc_8C103D04:
#data 0x41200000

#align4
loc_8C103D08:
#data 0x00008000

#align4
loc_8C103D0C:
#data loc_8c103EB4


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
#data 0x0000

#align4
loc_8C103E50:
#data bank04.loc_8c044F12

loc_8C103E54:
#data loc_8c103F46

loc_8C103E58:
#data bank12.loc_8c1294C8

loc_8C103E5C:
#data 0x00008000

#align4
loc_8C103E60:
#data loc_8c103F90

loc_8C103E64:
#data loc_8c10400a


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
mov.l @(bank10.loc_8c103fb4,pc),r5
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
mov.w @(bank10.loc_8c103fa0,pc),r0
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
#data 0x0000

#align4
loc_8C103FAC:
#data bank04.loc_8c0450C0
loc_8c103fb0:
#data 0x40C00000

#align4
loc_8C103FB4:
#data 0x8c1654C4

loc_8C103FB8:
#data 0x8C26A908

#align4
loc_8C103FBC:
#data 0x8c165518

loc_8C103FC0:
#data 0x3E0BA2E9

#align4
loc_8C103FC4:
#data 0x3D3A2E8c

#align4
loc_8C103FC8:
#data 0x8c165578

loc_8C103FCC:
#data 0x8c165548


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

;==============================================
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

;==============================================
loc_8C104054:
#data 0x0084
#data 0x0000

#align4
loc_8C104058:
#data bank04.loc_8c0450C0

loc_8C10405C:
#data 0x8c1655A4

loc_8C104060:
#data 0x8C26A908

#align4
loc_8C104064:
#data 0x8c165548

loc_8C104068:
#data 0x8c1655D0


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
#data 0x9096
#data 0x004C2FE6
#data 0x8801600c
#data 0x6E538D03
#data 0xE2009090
#data 0x0E26

loc_8C104096:
#data 0x908d
#data 0x73FF03Ee
#data 0x73010E36
#data 0x8B062338
#data 0xE001D547
#data 0x64E3D347
#data 0x432B80E4
#data 0x6EF6

loc_8C1040B2:
#data 0x000b
#data 0x6EF6

;==============================================
loc_8C1040B6:
#data 0x907e
#data 0x035ED645
#data 0x4308D743
#data 0x43004300
#data 0x035E363c
#data 0x43087054
#data 0x43084300
#data 0xE301373c
#data 0x855E0534
#data 0x360C4000
#data 0x815F6061
#data 0x4008855e
#data 0xF378370c
#data 0xF537E074
#data 0x8054E002
#data 0x20088457
#data 0xE05C890b
#data 0xE034F356
#data 0xF230F246
#data 0xE060F527
#data 0xE038F356
#data 0xF230F246
#data 0xF527

loc_8C10410E:
#data 0x8457
#data 0x890D2008
#data 0x8057E000
#data 0xF356E05c
#data 0xF246E034
#data 0xF527F230
#data 0xF356E060
#data 0xF246E038
#data 0xF527F230

#align4
loc_8C104130:
#data 0x70FF855f
#data 0x600F815f
#data 0x8B0C2008
#data 0x8054E001
#data 0x855EE308
#data 0x815E7001
#data 0x3033600f
#data 0xE0038B03
#data 0xE0078054
#data 0x815e

loc_8C104156:
#data 0x000b
#data 0x0009

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
#data 0x022a
#data 0x00D4

loc_8C1041B6:
#data 0x00D8

loc_8C1041B8:
#data 0x012c

loc_8C1041BA:
#data 0x0084

loc_8C1041BC:
#data 0x0198
#data 0x0000

#align4
loc_8C1041C0:
#data 0x8c1655Fc

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
#data 0x0000

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

#align4
loc_8C104310:
#data 0x3FD55555

#align4
loc_8C104314:
#data bank11.loc_8c11e730

loc_8C104318:
#data bank04.loc_8c044F12

loc_8C10431C:
#data loc_8c10406c

loc_8C104320:
#data 0x00008000

#align4
loc_8C104324:
#data bank03.loc_8c03319e

loc_8C104328:
#data 0x8C26A908


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

#align4
loc_8C104434:
#data 0x7FFC4F22
#data 0xE506D348
#data 0xE6012F42
#data 0xE400430b
#data 0x8D182008
#data 0xD1466403
#data 0xD344E500
#data 0xF39D907d
#data 0x14340454
#data 0x90796212
#data 0x92786322
#data 0x0436533b
#data 0x04267048
#data 0x143663F2
#data 0x840160F2
#data 0xE0548041
#data 0x7074F437
#data 0x0456

loc_8C10447A:
#data 0x7F04
#data 0x000B4F26
#data 0x0009

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

#align4
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
mov.w @(bank10.loc_8c10454e,pc),r0
bra loc_8c104532
mov.b r6,@(r0,r4)

loc_8c1044b0:
mov.w @(bank10.loc_8c10454e,pc),r0
mov 0x01,r2
mov.b r2,@(r0,r4)
mov.b @(0x01,r5),r0
extu.b r0,r6
mov.l @(bank10.loc_8c10456c,pc),r0
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
mov.l @(bank10.loc_8c104574,pc),r0
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
#data 0x000B
#data 0x0009

;==============================================
#data 0x000B
#data 0x0009

;==============================================
#data 0x000B
#data 0x0009

;==============================================
#data 0x000B
#data 0x0009

;==============================================
#data 0x000B
#data 0x0009

;==============================================
#data 0x000B
#data 0x0009

;==============================================
loc_8c10454e:
#data 0x012C
#data 0x0084
#data 0x0931

loc_8C104554:
#data 0x0149

loc_8C104556:
#data 0x00FF

loc_8C104558:
#data 0x0130
#data 0x0000

loc_8c10455c:
#data 0x4F12
#data 0x8C04

loc_8c104560:
#data 0x4482
#data 0x8C10
#data 0xA908
#data 0x8C26

loc_8c104568:
#data 0x50C0
#data 0x8C04

#align4
loc_8c10456c:
#data bank16.loc_8c1697f0

loc_8C104570:
#data 0x3FD55555

#align4
loc_8c104574:
#data bank16.loc_8c1695c4

loc_8C104578:
#data 0x3F99999A

#align4
loc_8C10457C:
#data 0x3F000000

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

loc_8C104596:
#data 0x9096
#data 0x004C2FE6
#data 0x8801600c
#data 0x6E538D03
#data 0xE2009090
#data 0x0E26

loc_8C1045AA:
#data 0x908d
#data 0x73FF03Ee
#data 0x73010E36
#data 0x8B062338
#data 0xE001D546
#data 0x64E3D346
#data 0x432B80E4
#data 0x6EF6

loc_8C1045C6:
#data 0x000b
#data 0x6EF6

;==============================================
loc_8C1045CA:
#data 0x907e
#data 0x035ED644
#data 0x4308D742
#data 0x43004300
#data 0x035E363c
#data 0x43087054
#data 0x43084300
#data 0xE301373c
#data 0x855E0534
#data 0x360C4000
#data 0x815F6061
#data 0x4008855e
#data 0xF378370c
#data 0xF537E074
#data 0x8054E002
#data 0x20088457
#data 0xE05C890b
#data 0xE034F356
#data 0xF230F246
#data 0xE060F527
#data 0xE038F356
#data 0xF230F246
#data 0xF527

loc_8C104622:
#data 0x8457
#data 0x890D2008
#data 0x8057E000
#data 0xF356E05c
#data 0xF246E034
#data 0xF527F230
#data 0xF356E060
#data 0xF246E038
#data 0xF527F230

#align4
loc_8C104644:
#data 0x70FF855f
#data 0x600F815f
#data 0x8B0C2008
#data 0x8054E001
#data 0x855EE308
#data 0x815E7001
#data 0x3033600f
#data 0xE0038B03
#data 0xE0078054
#data 0x815e

loc_8C10466A:
#data 0x000b
#data 0x0009

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
#data 0x022a
#data 0x00D4

loc_8C1046CA:
#data 0x00D8

loc_8C1046CC:
#data 0x012c

loc_8C1046CE:
#data 0x0084

#align4
loc_8C1046D0:
#data 0x8c165610

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

#align4
loc_8C10481C:
#data 0x40092492

#align4
loc_8C104820:
#data bank11.loc_8c11e730

loc_8C104824:
#data bank04.loc_8c044F12

loc_8C104828:
#data loc_8c104580

loc_8C10482C:
#data 0x00008000

#align4
loc_8C104830:
#data bank03.loc_8c03319e

loc_8C104834:
#data 0x8C26A908


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

loc_8C104932:
#data 0x9033
#data 0x034ED51d
#data 0x4308D61b
#data 0x43004300
#data 0x034E353c
#data 0x43087054
#data 0x43084300
#data 0xE301363c
#data 0x854E0434
#data 0x350C4000
#data 0x814F6051
#data 0x4008854e
#data 0xF368360c
#data 0xF437E074
#data 0x70018444
#data 0x8044

loc_8C10496E:
#data 0x854f
#data 0x814F70Ff
#data 0x2008600f
#data 0xE0008B0c
#data 0xE3088044
#data 0x7001854e
#data 0x600F814e
#data 0x8B033033
#data 0x8044E002
#data 0x814EE007

#align4
loc_8C104994:
#data 0x0009000b

;==============================================
loc_8C104998:
#data 0x013e

loc_8C10499A:
#data 0x013c
#data 0x000000D8

#align4
loc_8C1049A0:
#data bank12.loc_8c1292D4

loc_8C1049A4:
#data 0x8c165624

loc_8C1049A8:
#data bank13.loc_8c13db9c

loc_8C1049AC:
#data bank13.loc_8c13dbDc


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
#data 0x2FE6
#data 0x4F22
#data 0x7FF8
#data 0xD31e
#data 0xE601
#data 0x1F41
#data 0x2F50
#data 0xE505
#data 0x430B
#data 0xE400
#data 0x2008
#data 0x8D65
#data 0x6E03
#data 0x901f
#data 0xE300
#data 0xD219
#data 0x0E34
#data 0xE335
#data 0x70A0
#data 0x1E24
#data 0x0E36
#data 0xC717
#data 0xF408
#data 0xE050
#data 0xFE47
#data 0xE054
#data 0xFE47
#data 0x62F0
#data 0x2228
#data 0x8D02
#data 0xE044
#data 0xA001
#data 0xE300
#data 0xD312
#data 0xD213
#data 0x420b
#data 0x0E36
#data 0x9108
#data 0x31EC
#data 0x2102
#data 0x9005
#data 0x00Ee
#data 0x4011
#data 0x8B1e
#data 0xA022
#data 0xC901

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

#align4
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
#data 0x41200000
#data 0x00008000

#align4
loc_8C104AEC:
#data bank03.loc_8c03319e
#data 0x70016007
#data 0x6007C901
#data 0x92247001
#data 0x32ECD112
#data 0x90202202
#data 0x233803Ee
#data 0x64128D05
#data 0xE0746342
#data 0xA004023e
#data 0x63427010
#data 0x023EE064
#data 0x0E267020
#data 0xD30A61E3
#data 0x52F17134
#data 0xE00C430b
#data 0xE002D508
#data 0x81EE64E3
#data 0x4F267F08
#data 0x432BD306
#data 0x7F086EF6
#data 0x000B4F26
#data 0x00D86EF6
#data 0x8C26A908

#align4
loc_8C104B4C:
#data bank12.loc_8c1294C8

loc_8C104B50:
#data loc_8c1049D4

loc_8C104B54:
#data bank03.loc_8c0305Ca


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

loc_8C104C4C:
#data 0x013c
#data 0x0000

#align4
loc_8C104C50:
#data bank04.loc_8c0450C0

loc_8C104C54:
#data bank12.loc_8c129128

loc_8C104C58:
#data 0x40892492

#align4
loc_8C104C5C:
#data 0x41F00000

#align4
loc_8C104C60:
#data 0x40092492

#align4
loc_8C104C64:
#data 0x8c165634

loc_8C104C68:
#data bank04.loc_8c04257c

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

#align4
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

#align4
loc_8C104D60:
#data 0x3FC00000

#align4
loc_8C104D64:
#data 0x3D4CCCCd

#align4
loc_8C104D68:
#data bank04.loc_8c0450C0

loc_8C104D6C:
#data 0x3E800000

#align4
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
mov.l @(bank10.loc_8c104e00,pc),r4
shll r8
sts.l pr,@-r15
mov r13,r14
add r4,r8

loc_8c104d94:
mov.l @(bank10.loc_8c104e04,pc),r3
mov 0x07,r5
mov 0x01,r6
jsr @r3
mov 0x00,r4
tst r0,r0
bt/s loc_8c104de6
mov r0,r4
mov.l @(bank10.loc_8c104e08,pc),r3
mov r4,r1
mov.w @(loc_8C104DFC,pc),r0
mov r12,r2
add 0x34,r2
mov.b r13,@(r0,r4)
add 0xA0,r0
mov.l r3,@(0x10,r4)
add 0x34,r1
mov.l @(bank10.loc_8c104e0c,pc),r3
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

loc_8C104E26:
#data 0x854e
#data 0xD547E30a
#data 0xD1474008
#data 0xF358350c
#data 0x415AE078
#data 0xE07CF437
#data 0xD144F358
#data 0x7004F437
#data 0xF437F358
#data 0xF246E050
#data 0xF230F30d
#data 0xF427415a
#data 0xF146E054
#data 0xF121F20d
#data 0x854EF417
#data 0x814E7001
#data 0x3033600f
#data 0xE0018B06
#data 0x90608044
#data 0x012E5245
#data 0x021671Ff

#align4
loc_8C104E78:
#data 0x0009000b

;==============================================
#align4
loc_8C104E7C:
#data 0xE5072FE6
#data 0xE6012FD6
#data 0x6C432FC6
#data 0xD3324F22
#data 0xE400430b
#data 0x8F022008
#data 0xA09F6E03
#data 0x0009

loc_8C104E9A:
#data 0x904b
#data 0xD22EE301
#data 0x5DC6F48d
#data 0x70A00E34
#data 0x1E249345
#data 0xE0780E36
#data 0xFE47D22a
#data 0xFE47E07c
#data 0xFE477004
#data 0x6322E058
#data 0x001E6132
#data 0x31EC9138
#data 0x90362102
#data 0xE05003Dc
#data 0x633CF2D6
#data 0xF32D435a
#data 0xC721F322
#data 0xF208D122
#data 0xF3229027
#data 0x035AF33d
#data 0x706C0E36
#data 0xE05403Dc
#data 0xC71CF1D6
#data 0x435A633c
#data 0xF312F32d
#data 0x901DF108
#data 0xF33DF312
#data 0x410B035a
#data 0x91180E36
#data 0x31EC9418
#data 0x34ECD316
#data 0x50412102
#data 0x5143430b
#data 0x90101403
#data 0x03DD940e
#data 0x233834Ec
#data 0x740C8D22
#data 0xA0206242
#data 0x00D0622b
#data 0x0411012c
#data 0x013E0084
#data 0x00D800D4
#data 0x013000Cc

#align4
loc_8C104F44:
#data 0x8c165648

loc_8C104F48:
#data bank13.loc_8c13dc08
#data 0x3CF5C28d
#data 0x3DA3D70a

#align4
loc_8C104F54:
#data bank04.loc_8c044F12

loc_8C104F58:
#data loc_8c104E14
#data 0x8C26A908
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C104F68:
#data bank03.loc_8c03319e

loc_8C104F6C:
#data bank12.loc_8c1292D4

loc_8C104F70:
#data 0x6242

loc_8C104F72:
#data 0x9088
#data 0x2422D347
#data 0xE05C01Ee
#data 0xF32D415a
#data 0xFE37430b
#data 0x947F917f
#data 0xD34331Ec
#data 0x210234Ec
#data 0x430B5042
#data 0x14035143
#data 0xF49D9075
#data 0xE06002Ee
#data 0xF32D425a
#data 0xE05CFE37
#data 0xE034F3E6
#data 0xF230F2D6
#data 0xE060FE27
#data 0xE038F3E6
#data 0xF230F2D6
#data 0x9064FE27
#data 0x1EC51ED6
#data 0x0E3503Dd
#data 0xFE47E050
#data 0xFE47E054
#data 0x03CE707c
#data 0x0C367301

#align4
loc_8C104FD8:
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x6EF6

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

#align4
loc_8C104FF4:
#data 0x84555546
#data 0x8B042008
#data 0x005C9046
#data 0x880A600c
#data 0x8906

loc_8C105006:
#data 0x9042
#data 0x2228024e
#data 0xE0018B16
#data 0x8044000b

;==============================================
#align4
loc_8C105014:
#data 0x2008854f
#data 0x854F8910
#data 0x70FFE304
#data 0x9034814f
#data 0x3233024e
#data 0x854E8908
#data 0x814E70Ff
#data 0x2008600f
#data 0xE0088B02
#data 0x814EAF20

#align4
loc_8C10503C:
#data 0x0009000b

;==============================================
#align4
loc_8c105040:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(bank10.loc_8c1050a0,pc),r3
mov 0x07,r5
mov.l r4,@r15
mov 0x01,r6
jsr @r3
mov 0x00,r4
tst r0,r0
bt/s loc_8c105066
mov r0,r4
mov 0x08,r0
mov.l @(bank10.loc_8c1050a4,pc),r3
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
#data 0x00D8
#data 0x013000Cc
#data 0x00D001D0

loc_8C105090:
#data 0x012c
#data 0x0000

#align4
loc_8C105094:
#data bank03.loc_8c03319e

loc_8C105098:
#data bank12.loc_8c1292D4

loc_8C10509C:
#data 0x8c165654

loc_8C1050A0:
#data bank04.loc_8c044F12

loc_8C1050A4:
#data loc_8c104FE2

loc_8C1050A8:
#data bank04.loc_8c0450C0

loc_8C1050AC:
#data 0x6E432FE6
#data 0x52E54F22
#data 0xD34B6143
#data 0x72347134
#data 0xE00C430b
#data 0x55E5C749
#data 0xE050F308
#data 0x9085F256
#data 0x035DF232
#data 0xF23D2338
#data 0x045A8F01
#data 0x644b

loc_8C1050DA:
#data 0x644f
#data 0x445A53E5
#data 0xF236E034
#data 0xF32DD141
#data 0xE154415a
#data 0xF230F00d
#data 0xE038FE27
#data 0xF2E653E5
#data 0xF318313c
#data 0xFE27F23e
#data 0x53E5906b
#data 0x2228023c
#data 0x85EE8B29
#data 0x7001D43b
#data 0xC73781Ee
#data 0xC737F608
#data 0xC737F508
#data 0x85EEF408
#data 0x85EF6303
#data 0x4300330c
#data 0xE044435a
#data 0xF342F32d
#data 0xF350F363
#data 0x035AF33d
#data 0x0E362349
#data 0x630385Ee
#data 0x330C85Ef
#data 0x43006233
#data 0x435A332c
#data 0xF32DE048
#data 0xF363F342
#data 0xF33DF350
#data 0x2349035a
#data 0x0E36

loc_8C10515E:
#data 0x52E5
#data 0x20088424
#data 0xD3268902
#data 0x64E3430b

#align4
loc_8C10516C:
#data 0x840150E5
#data 0x8818600c
#data 0x4F268904
#data 0x64E3D221
#data 0x6EF6422b

#align4
loc_8C105180:
#data 0x000B4F26
#data 0x4F226EF6
#data 0xD31E7FFc
#data 0x2F42E505
#data 0x430BE601
#data 0x2008E400
#data 0x64038D1a
#data 0xE301D21a
#data 0xD11A901c
#data 0xE33D0434
#data 0x70A01424
#data 0x62120436
#data 0x90146143
#data 0x63227150
#data 0x033EF39d
#data 0x04369010
#data 0x62F2E074
#data 0x1425D307
#data 0xF437D211
#data 0xE00C430b
#data 0x4F267F04
#data 0x0009000b

;==============================================
#data 0x01A00130
#data 0x0168012c
#data 0x00000084

#align4
loc_8C1051E4:
#data bank12.loc_8c1294C8
#data 0x41555555
#data 0x435EDB6d
#data 0x43B40000
#data 0x3F000000
#data 0x47800000
#data 0x0000FFFf

#align4
loc_8C105200:
#data bank04.loc_8c0450C0

loc_8C105204:
#data bank04.loc_8c044F12

loc_8C105208:
#data loc_8c1050Ac
#data 0x8C26A904

#align4
loc_8C105210:
#data 0x8c165660

loc_8C105214:
#data 0x6E432FE6
#data 0x61432FD6
#data 0x7134FFFb
#data 0xFFDBFFEb
#data 0x52E54F22
#data 0x7234D350
#data 0xE00C430b
#data 0x55E5C74f
#data 0xE050F308
#data 0x9094F256
#data 0x035DF232
#data 0xF23D2338
#data 0x045A8F01
#data 0x644b

loc_8C10524A:
#data 0x644f
#data 0x445A53E5
#data 0xF236E034
#data 0xF32DD147
#data 0xE154415a
#data 0xF230F00d
#data 0xE038FE27
#data 0xF2E653E5
#data 0xF318313c
#data 0xFE27F23e
#data 0x53E5907a
#data 0x2228023c
#data 0x85EE8B59
#data 0x7001DD3f
#data 0xC73D81Ee
#data 0xC73EFD08
#data 0xC73EFE08
#data 0x85EEFF08
#data 0x85EF6303
#data 0x4300330c
#data 0xE044435a
#data 0xF3E2F32d
#data 0xF3F0F3D3
#data 0x035AF33d
#data 0x0E3623D9
#data 0x630385Ee
#data 0x330C85Ef
#data 0x43006233
#data 0x435A332c
#data 0xF32DE048
#data 0xF3D3F3E2
#data 0xF33DF3F0
#data 0x23D9035a
#data 0x85EE0E36
#data 0x6103D32d
#data 0x430B9049
#data 0x405A0009
#data 0xF32DD32b
#data 0xF2E2F23c
#data 0xF32CF2D3
#data 0xF33DF3F0
#data 0x430B045a
#data 0xF30C24D9
#data 0xF0FCE078
#data 0xF23EF2Fc
#data 0xFE27D322
#data 0x610385Ee
#data 0x430B9031
#data 0x405A0009
#data 0xF32DD320
#data 0xF2E2F23c
#data 0xF32CF2D3
#data 0xF33DF3F0
#data 0x430B045a
#data 0xF30C24D9
#data 0xF0FCE07c
#data 0xF23EF2Fc
#data 0xFE27

loc_8C10532E:
#data 0x53E5
#data 0x20088434
#data 0xD3178902
#data 0x64E3430b

#align4
loc_8C10533C:
#data 0x840150E5
#data 0x8818600c
#data 0x4F268908
#data 0x64E3D212
#data 0xFEF9FDF9
#data 0x6DF6FFF9
#data 0x6EF6422b

#align4
loc_8C105358:
#data 0xFDF94F26
#data 0xFFF9FEF9
#data 0x000B6DF6
#data 0x01306EF6
#data 0x016801A0

#align4
loc_8C10536C:
#data bank12.loc_8c1294C8
#data 0x41555555
#data 0x435EDB6d
#data 0x43B40000
#data 0x0000FFFf
#data 0x47800000
#data 0x3F000000

#align4
loc_8C105388:
#data bank12.loc_8c1292D4

loc_8C10538C:
#data bank11.loc_8c11E860

loc_8C105390:
#data bank11.loc_8c11E2E0

loc_8C105394:
#data bank04.loc_8c0450C0
#data 0x4F222FE6
#data 0xD33D7FFc
#data 0x2F42E505
#data 0x430BE601
#data 0x2008E400
#data 0x6E038D27
#data 0xE301906a
#data 0xD139D238
#data 0x70A00E34
#data 0x1E249365
#data 0x62120E36
#data 0x63229062
#data 0x033EF39d
#data 0xF48D905f
#data 0xE0780E36
#data 0xD33262F2
#data 0xFE371E25
#data 0xFE47E07c
#data 0x430B7004
#data 0x6103FE47
#data 0x9051D22e
#data 0x0009420b
#data 0x61E3D22d
#data 0x7150D32d
#data 0x430B81Ef
#data 0x7F04E00c
#data 0x000B4F26
#data 0x2FE66EF6
#data 0x7FFC4F22
#data 0xE505D321
#data 0xE6012F42
#data 0xE400430b
#data 0x8D272008
#data 0x90336E03
#data 0xD21DE301
#data 0x0E34D11d
#data 0x932E70A0
#data 0x0E361E24
#data 0x902E6212
#data 0xF39D6322
#data 0x9028033e
#data 0x0E36F48d
#data 0x62F2E078
#data 0x1E25D316
#data 0xE07CFE37
#data 0x7004FE47
#data 0xFE47430b
#data 0xD2136103
#data 0x420B901a
#data 0xD2120009
#data 0xD31261E3
#data 0x81EF7150
#data 0xE00C430b
#data 0x4F267F04
#data 0x6EF6000b

;==============================================
#data 0x4F222FE6
#data 0x6E43BE85
#data 0x64E3BF8c
#data 0x64E34F26
#data 0x6EF6AFBf
#data 0x041D012c
#data 0x00840160
#data 0x01640168

#align4
loc_8C105494:
#data bank04.loc_8c044F12

loc_8C105498:
#data loc_8c105214
#data 0x8C26A904

#align4
loc_8C1054A0:
#data bank11.loc_8c11e730

loc_8C1054A4:
#data bank12.loc_8c1292D4

loc_8C1054A8:
#data 0x8c165660

loc_8C1054AC:
#data bank12.loc_8c1294C8


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

loc_8C1054C6:
#data 0x9096
#data 0x004C2FE6
#data 0x8801600c
#data 0x6E538D03
#data 0xE2009090
#data 0x0E26

loc_8C1054DA:
#data 0x908d
#data 0x73FF03Ee
#data 0x73010E36
#data 0x8B062338
#data 0xE001D547
#data 0x64E3D347
#data 0x432B80E4
#data 0x6EF6

loc_8C1054F6:
#data 0x000b
#data 0x6EF6

;==============================================
loc_8C1054FA:
#data 0x907e
#data 0x035ED645
#data 0x4308D743
#data 0x43004300
#data 0x035E363c
#data 0x43087054
#data 0x43084300
#data 0xE301373c
#data 0x855E0534
#data 0x360C4000
#data 0x815F6061
#data 0x4008855e
#data 0xF378370c
#data 0xF537E074
#data 0x8054E002
#data 0x20088457
#data 0xE05C890b
#data 0xE034F356
#data 0xF230F246
#data 0xE060F527
#data 0xE038F356
#data 0xF230F246
#data 0xF527

loc_8C105552:
#data 0x8457
#data 0x890D2008
#data 0x8057E000
#data 0xF356E05c
#data 0xF246E034
#data 0xF527F230
#data 0xF356E060
#data 0xF246E038
#data 0xF527F230

#align4
loc_8C105574:
#data 0x70FF855f
#data 0x600F815f
#data 0x8B0C2008
#data 0x8054E001
#data 0x855EE308
#data 0x815E7001
#data 0x3033600f
#data 0xE0038B03
#data 0xE0078054
#data 0x815e

loc_8C10559A:
#data 0x000b
#data 0x0009

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
#data 0x022a
#data 0x00D4

loc_8C1055FA:
#data 0x00D8

loc_8C1055FC:
#data 0x012c

loc_8C1055FE:
#data 0x0084

loc_8C105600:
#data 0x01Ac
#data 0x0000

#align4
loc_8C105604:
#data 0x8c16566c

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

#align4
loc_8C105750:
#data 0x3FD55555

#align4
loc_8C105754:
#data bank11.loc_8c11e730

loc_8C105758:
#data bank04.loc_8c044F12

loc_8C10575C:
#data loc_8c1054B0

loc_8C105760:
#data 0x00008000

#align4
loc_8C105764:
#data bank03.loc_8c03319e

loc_8C105768:
#data 0x8C26A908


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

loc_8C105852:
#data 0x01A0

loc_8C105854:
#data 0x0084

loc_8C105856:
#data 0x013e

loc_8C105858:
#data 0x013c
#data 0x0000

#align4
loc_8C10585C:
#data bank12.loc_8c1292D4

loc_8C105860:
#data 0xB01A4F22
#data 0xB08964F3
#data 0xD43A64F3
#data 0x004CE048
#data 0x8808600c
#data 0xD3388B0a
#data 0x62329064
#data 0x2118012c
#data 0xE0458B04
#data 0x600C004c
#data 0x8B038802

#align4
loc_8C10588C:
#data 0xE401D233
#data 0x4F26422b

#align4
loc_8C105894:
#data 0x000B4F26
#data 0x0009

;==============================================
loc_8C10589A:
#data 0x2FE6
#data 0x4F22E509
#data 0xE601D32f
#data 0xE400430b
#data 0x8D1F2008
#data 0x904A6E03
#data 0xD12DE301
#data 0x0E34D22b
#data 0x63121E24
#data 0x62329044
#data 0xD22A032e
#data 0x0E369041
#data 0xF328E034
#data 0xFE37E30b
#data 0xF308C727
#data 0xFE37E03c
#data 0x0E369038
#data 0x81EEE000
#data 0x64E3B19c
#data 0x64E34F26
#data 0x6EF6A003

#align4
loc_8C1058EC:
#data 0x000B4F26
#data 0x6EF6

;==============================================
loc_8C1058F2:
#data 0x4F22
#data 0xD31A7FFc
#data 0x2F42E509
#data 0x430BE601
#data 0x2008E400
#data 0x64038D1a
#data 0xE301901d
#data 0xD219D116
#data 0x14240434
#data 0x901A6312
#data 0x032E6232
#data 0x9014E20b
#data 0x70480436
#data 0x727D0426
#data 0x901163F2
#data 0x0426323c
#data 0xF308C711
#data 0xF437E03c
#data 0x814EE000

#align4
loc_8C10593C:
#data 0x4F267F04
#data 0x0009000b

;==============================================
#data 0x012C008b
#data 0x008403B8
#data 0x03BC00Cc
#data 0x000000C8
#data 0x8C2895F0
#data 0x8C26823c

#align4
loc_8C10595C:
#data bank04.loc_8c041A90

loc_8C105960:
#data bank04.loc_8c044F26

loc_8C105964:
#data loc_8c1059Da
#data 0x8C26A908
#data 0x8C26A524
#data 0xC7C35000

#align4
loc_8C105974:
#data loc_8c105B0e
#data 0x476A6000

#align4
loc_8C10597C:
#data 0xD33E4F22
#data 0xE601E509
#data 0xE400430b
#data 0x8D232008
#data 0x906D6403
#data 0xD13BE301
#data 0x0434D239
#data 0x63121424
#data 0x62329067
#data 0x032ED538
#data 0x04369064
#data 0xF356E00c
#data 0xE32BE034
#data 0x7074F437
#data 0xE038F356
#data 0xC733F437
#data 0xE03CF308
#data 0x9056F437
#data 0x0436F39d
#data 0x814EE000
#data 0xF437E074
#data 0x4F26A124

#align4
loc_8C1059D4:
#data 0x000B4F26
#data 0x0009

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
#data 0x012C
#data 0x03C0
#data 0x0084
#data 0x00CC

loc_8C105A74:
#data 0x0087

loc_8C105A76:
#data 0x00A0

loc_8c105a78:
#data 0x4F26
#data 0x8C04

loc_8c105a7c:
#data 0x5BD6
#data 0x8C10
#data 0xA908
#data 0x8C26
#data 0xA518
#data 0x8C26
#data 0x4000
#data 0xC71C

loc_8c105a8c:
#data 0xA524
#data 0x8C26

#align4
loc_8C105A90:
#data 0x43480000

#align4
loc_8C105A94:
#data 0x43C80000

#align4
loc_8C105A98:
#data 0x44480000

#align4
loc_8C105A9C:
#data 0x44960000

#align4
loc_8C105AA0:
#data 0x44C80000

#align4
loc_8C105AA4:
#data 0x44FA0000


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
bra bank10.loc_8c105c1c
mov.l @r15+,r14

loc_8c105acc:
mov.l @(bank10.loc_8c105bb0,pc),r2
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
mov.l @(bank10.loc_8c105bbc,pc),r2
mov 0x3C,r4
jmp @r2
mov.l @r15+,r14

loc_8c105afe:
#data 0xB08D
#data 0x64E3
#data 0x85EE
#data 0x7001
#data 0x81EE


loc_8c105b08:
lds.l @r15+,pr
rts
mov.l @r15+,r14

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
loc_8c105bac:
#data 0x447A0000

#align4
loc_8C105BB0:
#data bank04.loc_8c0450C0
loc_8c105bb4:
#data 0x8C2895F0
loc_8c105bb8:
#data 0x8C26823c

#align4
loc_8C105BBC:
#data bank04.loc_8c041AA6

loc_8C105BC0:
#data 0x43C80000

#align4
loc_8C105BC4:
#data 0xC4160000

#align4
loc_8C105BC8:
#data 0x44160000


loc_8C105BCC:
mov.w @(0x1C,r4),r0
add 0x01,r0
mov.w r0,@(0x1C,r4)
rts
nop

;==============================================
loc_8C105BD6:
#data 0xD331
#data 0x2FE6E034
#data 0x4F226E43
#data 0xE250F338
#data 0x85EEFE37
#data 0x8B063023
#data 0xE074D12c
#data 0x415AF2E6
#data 0xF231F30d
#data 0xFE27

loc_8C105BFA:
#data 0x934d
#data 0x303385Ee
#data 0x4F268B04
#data 0x64E3D127
#data 0x6EF6412b

#align4
loc_8C105C0C:
#data 0x64E3B006
#data 0x700185Ee
#data 0x4F2681Ee
#data 0x6EF6000b

;==============================================
#align4
loc_8C105C1C:
#data 0x6E432FE6
#data 0xE0082FD6
#data 0x63E3DD20
#data 0x73402F86
#data 0x740C64D3
#data 0xF4464F22
#data 0xF3E6E03c
#data 0xF24CE004
#data 0xF2316833
#data 0x902AF346
#data 0xE038F1D6
#data 0xF212F131
#data 0xFE27F243
#data 0xF3E6E03c
#data 0xF5D6E014
#data 0xF531E038
#data 0x430BD313
#data 0x2802F4E6
#data 0xF3E6E03c
#data 0xF4D6E014
#data 0xF38DF431
#data 0x8F06F345
#data 0x62E3E038
#data 0x61227240
#data 0x313CD30c
#data 0x2212

loc_8C105C82:
#data 0xE110
#data 0x31DCF2E6
#data 0xF230F318
#data 0x4F26FE27
#data 0x6DF668F6
#data 0x6EF6000b

;==============================================
#data 0x00A80096
#data 0x8C26A524
#data 0x3C6A0EA1

#align4
loc_8C105CA4:
#data bank04.loc_8c0450C0
#data 0x8C26A518

#align4
loc_8C105CAC:
#data bank11.loc_8c11E210
#data 0x00008000


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

#align4
loc_8c105cc8:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(bank10.loc_8c105e00,pc),r3
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
mov.l @(bank10.loc_8c105e04,pc),r2
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
mov.l @(bank10.loc_8c105e0c,pc),r3
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
#data 0x4F22
#data 0x7FFC
#data 0xD335
#data 0xE508
#data 0x2F42
#data 0xE601
#data 0x430B
#data 0xE400
#data 0x2008
#data 0x8D27
#data 0x6403
#data 0x9059
#data 0xE301
#data 0xD131
#data 0xD233
#data 0x0434
#data 0x1424
#data 0x6312
#data 0x6143
#data 0x9055
#data 0x7134
#data 0x6232
#data 0x032E
#data 0x904F
#data 0x0436
#data 0xD32C
#data 0x62F2
#data 0x430B
#data 0xE00C
#data 0x904A
#data 0xE135
#data 0xF49D
#data 0x0416
#data 0xE000
#data 0x814E
#data 0xE050
#data 0xF447
#data 0xE054
#data 0xF447
#data 0xE058
#data 0xF447
#data 0xE074
#data 0xF48D
#data 0xF447
#data 0xE078
#data 0xF447
#data 0xE07C
#data 0xF447
#data 0x7004
#data 0xF447

loc_8c105d8a:
#data 0x7F04
#data 0x4F26
#data 0x000B
#data 0x0009

;==============================================
loc_8c105d92:
#data 0x4F22
#data 0x7FFC
#data 0xD31A
#data 0xE508
#data 0x2F42
#data 0xE601
#data 0x430B
#data 0xE400
#data 0x2008
#data 0x8D21
#data 0x6403
#data 0x9023
#data 0xE301
#data 0xD116
#data 0xD219
#data 0x0434
#data 0x1424
#data 0x6312
#data 0x6143
#data 0x9020
#data 0x7134
#data 0x6232
#data 0x032E
#data 0x9019
#data 0x0436
#data 0xD311
#data 0x62F2
#data 0x430B
#data 0xE00C
#data 0x9014
#data 0xE125
#data 0xF39D
#data 0x0416
#data 0xE000
#data 0x814E
#data 0xE074
#data 0xF437
#data 0xE078
#data 0xF48D
#data 0xF447
#data 0xE07C
#data 0xF447
#data 0x7004
#data 0xF447

loc_8c105dea:
#data 0x7F04
#data 0x4F26
#data 0x000B
#data 0x0009

;==============================================
loc_8C105DF2:
#data 0x012C

loc_8C105DF4:
#data 0x0370

loc_8C105DF6:
#data 0x0084

loc_8C105DF8:
#data 0x00CC
#data 0x0374
#data 0x0378
#data 0x0000

#align4
loc_8c105e00:
#data bank04.loc_8c044f12

loc_8c105e04:
#data bank10.loc_8c105e18

loc_8C105E08:
#data 0x8C26A908

#align4
loc_8c105e0c:
#data bank12.loc_8c1294c8

loc_8c105e10:
#data 0x5E3A
#data 0x8C10

loc_8c105e14:
#data 0x5E8E
#data 0x8C10

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

#align4
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
mov.l @(bank10.loc_8c105edc,pc),r1
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

;==============================================
loc_8C105EC6:
#data 0x0084

#align4
loc_8C105EC8:
#data bank04.loc_8c0450C0

loc_8C105ECC:
#data 0x8c165680
loc_8c105ed0:
#data 0x3ED55555
loc_8c105ed4:
#data 0x3E2740Db
loc_8c105ed8:
#data 0x3CA3D70a

#align4
loc_8C105EDC:
#data 0x8c165724

loc_8C105EE0:
#data 0x8c1657C8

loc_8C105EE4:
#data 0x8C26A908

#align4
loc_8C105EE8:
#data 0x8c165820

loc_8C105EEC:
#data 0x4F222FE6
#data 0xD3427FFc
#data 0x2F42E506
#data 0x430BE601
#data 0x2008E400
#data 0x6E038D25
#data 0xE3019071
#data 0xD23DD13e
#data 0x1E240E34
#data 0x906B6312
#data 0x032E6232
#data 0x92699069
#data 0x70480E36
#data 0x92660E26
#data 0x906563F2
#data 0x0E26323c
#data 0x905E63F2
#data 0xD3351E36
#data 0x04EE430b
#data 0x64E352E6
#data 0x8425D533
#data 0x80257001
#data 0x4F267F04
#data 0x432BD331
#data 0x6EF6

loc_8C105F4E:
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6

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

loc_8C105FEA:
#data 0x012c
#data 0x00840294
#data 0x00880821
#data 0x00C8

loc_8C105FF6:
#data 0x0FA0

loc_8C105FF8:
#data 0x00D8
#data 0x0000

#align4
loc_8C105FFC:
#data bank04.loc_8c044F12

loc_8C106000:
#data loc_8c105F56
#data 0x8C26A908

#align4
loc_8C106008:
#data loc_8c108210

loc_8C10600C:
#data loc_8c106062

loc_8C106010:
#data bank03.loc_8c0305Ca

loc_8C106014:
#data 0x8c165898

loc_8C106018:
#data bank11.loc_8c11e730

loc_8C10601C:
#data bank12.loc_8c1292D4

loc_8C106020:
#data 0x3D4CCCCd

#align4
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
mov.w @(bank10.loc_8c10614a,pc),r0
mov.b @(r0,r4),r1
tst r1,r1
bf loc_8c10605e

loc_8c106052:
mov.b @(0x04,r4),r0
mov.l @(bank10.loc_8c106158,pc),r3
add 0x01,r0
mov.b r0,@(0x04,r4)
jmp @r3
mov 0x00,r5

loc_8c10605e:
rts
nop

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

loc_8c1060ee:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(bank10.loc_8c106178,pc),r3
mov 0x06,r5
mov.l r4,@r15
mov 0x01,r6
jsr @r3
mov 0x00,r4
tst r0,r0
bt/s loc_8c106136
mov r0,r4
mov.w @(bank10.loc_8c10614a,pc),r0
mov 0x01,r3
mov.l @(bank10.loc_8c10615c,pc),r1
mov.l @(bank10.loc_8c10617c,pc),r2
mov.b r3,@(r0,r4)
mov.l r2,@(0x10,r4)
mov.l @r1,r3
mov.w @(loc_8C106150,pc),r0
mov.l @r3,r2
fldi1 fr3
mov.l @(r0,r2),r3
mov.w @(bank10.loc_8c10614c,pc),r0
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

loc_8C10613E:
mov.w @(loc_8C10614A,pc),r0 ; r0 set to 0x12c
mov.l @(0x18,r4),r3
mov.b @(r0,r3),r2
rts
mov.b r2,@(r0,r4)

;==============================================
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

#align4
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

#align4
loc_8C106174:
#data bank04.loc_8c0450C0

loc_8C106178:
#data bank04.loc_8c044F12

loc_8C10617C:
#data loc_8c10613e

loc_8C106180:
#data 0x906CD338
#data 0x025C6532
#data 0x89052228
#data 0x6210D136
#data 0x8B5A2228
#data 0x0009A009

#align4
loc_8C106198:
#data 0x005C9062
#data 0x8804C90f
#data 0xA0528B01
#data 0x0009

loc_8C1061A6:
#data 0xA000
#data 0x0009

loc_8C1061AA:
#data 0xD32e
#data 0x4F229158
#data 0xD22F6032
#data 0xE10F001c
#data 0x2109D52c
#data 0x420B71Ff
#data 0x6203E003
#data 0x302C4000
#data 0x350C4008
#data 0x014E9049
#data 0x8B1B2118
#data 0xF258C727
#data 0xE078F408
#data 0xE050F346
#data 0xF231E214
#data 0xF427F243
#data 0xF346E07c
#data 0xF256E004
#data 0xF231E054
#data 0xF427F243
#data 0xF346702c
#data 0xF256E008
#data 0xF231E058
#data 0xF427F243
#data 0x0426902b

#align4
loc_8C10620C:
#data 0x034E9029
#data 0x89172338
#data 0xE150034e
#data 0x73FF314c
#data 0xE0780436
#data 0xF318F246
#data 0x314CE154
#data 0xF427F230
#data 0xF246E07c
#data 0xE158F318
#data 0xF230314c
#data 0x7004F427
#data 0xF318F246
#data 0xF427F230

#align4
loc_8C106244:
#data 0x000B4F26
#data 0x0009

;==============================================
loc_8C10624A:
#data 0xE023
#data 0x2F466343
#data 0xD009023c
#data 0x4208622c
#data 0x432B032e
#data 0x00AC7F04
#data 0x00D80098
#data 0x8C26823c
#data 0x8C289628

#align4
loc_8C10626C:
#data bank13.loc_8c13dd10

loc_8C106270:
#data bank12.loc_8c1292D4
#data 0x41A00000

#align4
loc_8C106278:
#data 0x8c1658A8


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
#data 0xD30b
#data 0x6032910d
#data 0xC90F001c
#data 0x89058800
#data 0x8B018804
#data 0x0009A05c

#align4
loc_8C106340:
#data 0x0009A00c

#align4
loc_8C106344:
#data 0x0009000b

;==============================================
loc_8C106348:
#data 0x00D8
#data 0x0098

#align4
loc_8C10634C:
#data bank13.loc_8c13dd10

loc_8C106350:
#data bank12.loc_8c1292D4

loc_8C106354:
#data 0x41A00000
#data 0x8C26823c

#align4
loc_8C10635C:
#data 0xE70FD359
#data 0x663290Ab
#data 0x026CD556
#data 0x89272278
#data 0x7040026c
#data 0x72FF2279
#data 0x42006123
#data 0x4208321c
#data 0x024E352c
#data 0x8B1B2228
#data 0xF258C750
#data 0xE078F408
#data 0xE050F346
#data 0xF231E214
#data 0xF427F243
#data 0xF346E07c
#data 0xF256E004
#data 0xF231E054
#data 0xF427F243
#data 0xF346702c
#data 0xF256E008
#data 0xF231E058
#data 0xF427F243
#data 0x04269080

#align4
loc_8C1063BC:
#data 0x034E907e
#data 0x89172338
#data 0xE150034e
#data 0x73FF314c
#data 0xE0780436
#data 0xF318F246
#data 0x314CE154
#data 0xF427F230
#data 0xF246E07c
#data 0xE158F318
#data 0xF230314c
#data 0x7004F427
#data 0xF318F246
#data 0xF427F230

#align4
loc_8C1063F4:
#data 0x0009000b

;==============================================
#align4
loc_8C1063F8:
#data 0x6343E023
#data 0x023C2F46
#data 0x622CD032
#data 0x032E4208
#data 0x7F04432b


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

;==============================================
#data 0x0098

loc_8C1064BC:
#data 0x00D8
#data 0x0000

#align4
loc_8C1064C0:
#data bank13.loc_8c13ddC0
#data 0x8C26823c

#align4
loc_8C1064C8:
#data 0x41A00000

#align4
loc_8C1064CC:
#data 0x8c1658B0

loc_8C1064D0:
#data bank12.loc_8c1292D4

loc_8C1064D4:
#data 0x9164D334
#data 0x001C6032
#data 0x8800C90f
#data 0x88048905
#data 0xA0528B01
#data 0x0009

loc_8C1064EA:
#data 0xA002
#data 0x0009

loc_8C1064EE:
#data 0x000b
#data 0x0009

;==============================================
loc_8C1064F2:
#data 0xD32d
#data 0x9054E70f
#data 0xD52C6632
#data 0x2278026c
#data 0x026C8927
#data 0x22797040
#data 0x612372Ff
#data 0x321C4200
#data 0x352C4208
#data 0x2228024e
#data 0xC7258B1b
#data 0xF408F258
#data 0xF346E078
#data 0xE214E05c
#data 0xF243F231
#data 0xE07CF427
#data 0xE004F346
#data 0xE060F256
#data 0xF243F231
#data 0x7020F427
#data 0xE008F346
#data 0xE068F256
#data 0xF243F231
#data 0x7070F427
#data 0x0426

loc_8C106552:
#data 0x9027
#data 0x2338034e
#data 0x034E8917
#data 0x314CE15c
#data 0x043673Ff
#data 0xF246E078
#data 0xE160F318
#data 0xF230314c
#data 0xE07CF427
#data 0xF318F246
#data 0x314CE168
#data 0xF427F230
#data 0xF2467004
#data 0xF230F318
#data 0xF427

loc_8C10658A:
#data 0x000b
#data 0x0009

;==============================================
loc_8C10658E:
#data 0xE023
#data 0x2F466343
#data 0xD007023c
#data 0x4208622c
#data 0x432B032e
#data 0x00987F04
#data 0x000000D8
#data 0x8C26823c

#align4
loc_8C1065AC:
#data bank13.loc_8c13ddF0
#data 0x41A00000

#align4
loc_8C1065B4:
#data 0x8c1658B8


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

;==============================================
loc_8C106666:
#data 0x00D8

#align4
loc_8C106668:
#data bank13.loc_8c13ddF0

loc_8C10666C:
#data bank12.loc_8c1292D4

loc_8C106670:
#data 0x41A00000


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

;==============================================
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

#align4
loc_8C1067B8:
#data 0x8C26A518

#align4
loc_8C1067BC:
#data loc_8c108210

loc_8C1067C0:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0xFFEBFFFb
#data 0x4F22FFDb
#data 0xD2387FF8
#data 0x9068ED00
#data 0x63226E43
#data 0x013CFF9d
#data 0x21189064
#data 0x0E148D0a
#data 0x6022915f
#data 0xC90F001c
#data 0x8B1B8801
#data 0x6130D330
#data 0x89172118

#align4
loc_8C1067FC:
#data 0xF48D9056
#data 0xE0780ED4
#data 0xE07CFE47
#data 0x7004FE47
#data 0x60D3FEF7
#data 0x80E70009
#data 0x0ED4E023
#data 0x00ECE020
#data 0x8801600c
#data 0xA0A88901
#data 0x0009

loc_8C106826:
#data 0x9042
#data 0x0ED6A0A5

#align4
loc_8C10682C:
#data 0x64E3BCA8
#data 0x02ECE020
#data 0x89612228
#data 0x700185Ef
#data 0xE02081Ef
#data 0x600C00Ec
#data 0x8B058802
#data 0x85EF9332
#data 0x89053033
#data 0x0009A007

#align4
loc_8C106854:
#data 0xE32885Ef
#data 0x8B023033

#align4
loc_8C10685C:
#data 0x000960D3
#data 0x81Ef

loc_8C106862:
#data 0x9026
#data 0x05EED315
#data 0x02ECE022
#data 0x622C6432
#data 0x42086442
#data 0xD212342c
#data 0x5441420b
#data 0xDD13C714
#data 0xC714FD08
#data 0xDC10DB0f
#data 0xFE08A034

#align4
loc_8C10688C:
#data 0x65F364F3
#data 0x74044D0b
#data 0x00ECE020
#data 0x8802600c
#data 0x85EF8B1c
#data 0x435A6303
#data 0xA01CF32d
#data 0x0098F3D2
#data 0x00D0012c
#data 0x008400A0
#data 0x8C26823c
#data 0x8C2895F6
#data 0x8C26A908

#align4
loc_8C1068C0:
#data loc_8c108060

loc_8C1068C4:
#data loc_8c108086

loc_8C1068C8:
#data loc_8c1081E6

loc_8C1068CC:
#data loc_8c108192
#data 0x3BCCCCCd
#data 0x3CCCCCCd

#align4
loc_8C1068D8:
#data 0x630385Ef
#data 0xF32D435a
#data 0xF3E2

loc_8C1068E2:
#data 0xF34d
#data 0xF2F8F3F0
#data 0x65F364F3
#data 0xFF2AF230
#data 0x74044C0b

#align4
loc_8C1068F4:
#data 0x00094B0b
#data 0x89C72008

#align4
loc_8C1068FC:
#data 0x00ECE020
#data 0x8801600c
#data 0x84E58B10
#data 0x600CE302
#data 0x890B3033
#data 0x01EE903b
#data 0x89032118
#data 0x72FF02Ee
#data 0x0E26A004

#align4
loc_8C106920:
#data 0x0E26E228
#data 0x64E3BAE2

#align4
loc_8C106928:
#data 0x00ECE020
#data 0x8802600c
#data 0x84E58B21
#data 0x600CE303
#data 0x890B3033
#data 0x01EE9025
#data 0x89032118
#data 0x72FF02Ee
#data 0x0E26A004

#align4
loc_8C10694C:
#data 0x0E26E20a
#data 0x64E3B01d

#align4
loc_8C106954:
#data 0xE30384E6
#data 0x3033600c
#data 0x9015890b
#data 0x211801Ee
#data 0x02EE8903
#data 0xA00472Ff
#data 0x0E26

loc_8C10696E:
#data 0xE232
#data 0xB1050E26
#data 0x64E3

loc_8C106976:
#data 0x7F08
#data 0xFDF94F26
#data 0xFFF9FEF9
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00D06EF6
#data 0x00D4

loc_8C10698E:
#data 0x2FE6
#data 0x7FFC4F22
#data 0xE508D349
#data 0xE6012F42
#data 0xE400430b
#data 0x8D602008
#data 0x90816E03
#data 0xD146E301
#data 0x0E34D244
#data 0x1E247004
#data 0x62326312
#data 0x9078032e
#data 0x0E369278
#data 0x0E267048
#data 0x63F29275
#data 0x323C9074
#data 0xD23E0E26
#data 0x420B63F2
#data 0x61031E36
#data 0x906CD33c
#data 0x0009430b
#data 0xE1344011
#data 0x8F026403
#data 0xA00531Ec
#data 0xC901

loc_8C1069EE:
#data 0x6007
#data 0xC9017001
#data 0x70016007

#align4
loc_8C1069F8:
#data 0x89012008
#data 0x6243A001

loc_8C106A00:
#data 0x624b

loc_8C106A02:
#data 0x425a
#data 0xD330F218
#data 0xF230F32d
#data 0xF12A430b
#data 0xD22E6103
#data 0x420B9050
#data 0x40110009
#data 0x6403E138
#data 0x31EC8F02
#data 0xC901A005

#align4
loc_8C106A28:
#data 0x70016007
#data 0x6007C901
#data 0x7001

loc_8C106A32:
#data 0x2008
#data 0xA0018901
#data 0x6343

loc_8C106A3A:
#data 0x634b

#align4
loc_8C106A3C:
#data 0xE038435a
#data 0xD323F218
#data 0xF230F32d
#data 0xF2E6F12a
#data 0xF230F338
#data 0xC720FE27
#data 0xE03CF308
#data 0xE01EFE37
#data 0x52E681Ee
#data 0x70018425
#data 0x8025

loc_8C106A66:
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6

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
#data 0x0084
#data 0x00880401
#data 0x05DC00C8
#data 0x000000F0

#align4
loc_8C106ABC:
#data bank04.loc_8c044F12

loc_8C106AC0:
#data loc_8c106A6e
#data 0x8C26A908

#align4
loc_8C106AC8:
#data bank11.loc_8c11e730

loc_8C106ACC:
#data bank12.loc_8c1292D4
#data 0x8C26A5C0
#data 0x44610000

#align4
loc_8C106AD8:
#data 0x8c1658C0

loc_8C106ADC:
#data bank03.loc_8c03319e

loc_8C106AE0:
#data 0xC2C80000

#align4
loc_8C106AE4:
#data 0xC1200000

#align4
loc_8C106AE8:
#data 0x908BD54a
#data 0x6E432FE6
#data 0x63524F22
#data 0x9086023c
#data 0x8D0B2228
#data 0xD3450E24
#data 0x60329180
#data 0xC90F001c
#data 0x8B098801
#data 0x6020D242
#data 0x89052008

#align4
loc_8C106B14:
#data 0xE4009077
#data 0x60430E44
#data 0x81EE0009

#align4
loc_8C106B20:
#data 0x63529070
#data 0x906E023c
#data 0xBBFE0E24
#data 0x85EE64E3
#data 0x89112008
#data 0xE17085Ee
#data 0x70FF31Ec
#data 0xE06481Ee
#data 0xF318F2E6
#data 0x31ECE164
#data 0xFE27F230
#data 0xF2E6E03c
#data 0xF230F318
#data 0xFE27A007

#align4
loc_8C106B58:
#data 0x842552E6
#data 0x802570Ff
#data 0x700184E4
#data 0x80E4

loc_8C106B66:
#data 0x4F26
#data 0x6EF6000b

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

#align4
loc_8C106B80:
#data 0x2FD62FE6
#data 0x4F222F86
#data 0xD3257FFc
#data 0x2F42E508
#data 0x430BE601
#data 0x2008E400
#data 0x6E038F02
#data 0x0009A0C2

#align4
loc_8C106BA0:
#data 0xE3019031
#data 0x0E34D21f
#data 0x932D70A0
#data 0x0E361E24
#data 0x62F2932b
#data 0xD11C902a
#data 0x0E36332c
#data 0x902662F2
#data 0x63121E26
#data 0x6232DD19
#data 0x9221002e
#data 0x4D0B32Ec
#data 0x61032202
#data 0x901CD316
#data 0x0009430b
#data 0xE8344011
#data 0x8F026403
#data 0xA00538Ec
#data 0xC901

loc_8C106BEA:
#data 0x6007
#data 0xC9017001
#data 0x70016007

#align4
loc_8C106BF4:
#data 0x891F2008
#data 0xD10E445a
#data 0x415AF32d
#data 0xF20DA020
#data 0x0098

loc_8C106C06:
#data 0x012c
#data 0x00880415
#data 0x013400C8
#data 0x17700084
#data 0x8C26823c
#data 0x8C2895F6

#align4
loc_8C106C1C:
#data bank04.loc_8c0450C0

loc_8C106C20:
#data bank04.loc_8c044F12

loc_8C106C24:
#data loc_8c106D30
#data 0x8C26A908

#align4
loc_8C106C2C:
#data bank11.loc_8c11e730

loc_8C106C30:
#data bank12.loc_8c1292D4
#data 0x453B8000

#align4
loc_8C106C38:
#data 0xD14C634b
#data 0xF32D435a
#data 0xF20D415a

#align4
loc_8C106C44:
#data 0xF288F320
#data 0x4D0BF230
#data 0x6103F82a
#data 0x9087D347
#data 0x0009430b
#data 0xC7466403
#data 0xE038F308
#data 0xFE376103
#data 0x00096043
#data 0x8F024011
#data 0xA00531Ec
#data 0xC901

loc_8C106C72:
#data 0x6007
#data 0xC9017001
#data 0x70016007

#align4
loc_8C106C7C:
#data 0x89012008
#data 0x6343A001

loc_8C106C84:
#data 0x634b

loc_8C106C86:
#data 0x435a
#data 0xF32DF218
#data 0x4D0BF230
#data 0x6103F12a
#data 0x9066D336
#data 0x0009430b
#data 0xE13C4011
#data 0x8F026403
#data 0xA00531Ec
#data 0xC901

loc_8C106CAA:
#data 0x6007
#data 0xC9017001
#data 0x70016007

#align4
loc_8C106CB4:
#data 0x89012008
#data 0x6243A001

loc_8C106CBC:
#data 0x624b

loc_8C106CBE:
#data 0x425a
#data 0xF218E03c
#data 0xF230F32d
#data 0xD12BF12a
#data 0x415AF2E6
#data 0xF230F30d
#data 0x7064FE27
#data 0x53E681Ef
#data 0x70018436
#data 0x80364D0b
#data 0x8B014011
#data 0xC901A005

#align4
loc_8C106CEC:
#data 0x70016007
#data 0x6007C901
#data 0x7001

loc_8C106CF6:
#data 0x6403
#data 0x8D022448
#data 0xA001E044
#data 0xE200

loc_8C106D02:
#data 0xD21e

#align4
loc_8C106D04:
#data 0xE0780E26
#data 0xFE47F49d
#data 0xFE47E07c
#data 0xFE477004
#data 0xF508C71a
#data 0xFE57E050
#data 0xFE57E054
#data 0xFE47E058

#align4
loc_8C106D24:
#data 0x4F267F04
#data 0x6DF668F6
#data 0x6EF6000b

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
#data 0x096003E8

loc_8C106D68:
#data 0x012c
#data 0x0000
#data 0xC53B8000

#align4
loc_8C106D70:
#data bank12.loc_8c1292D4
#data 0x447A0000
#data 0xC4C80000
#data 0x00008000
#data 0x40800000

#align4
loc_8C106D84:
#data 0x8c1658D0

loc_8C106D88:
#data 0xC2B40000

#align4
loc_8C106D8C:
#data 0xC1200000

#align4
loc_8C106D90:
#data loc_8c106EC4

loc_8C106D94:
#data bank03.loc_8c0305Ca

loc_8C106D98:
#data 0x9082D244
#data 0x6E432FE6
#data 0x63224F22
#data 0x907D013c
#data 0x8D0A2118
#data 0x91780E14
#data 0x001C6022
#data 0x8801C90f
#data 0xD33D8B09
#data 0x21186130
#data 0x8905

loc_8C106DC2:
#data 0x906f
#data 0x0E44E400
#data 0x00096043
#data 0x81Ef

loc_8C106DCE:
#data 0xBB81
#data 0x84E664E3
#data 0x31ECE106
#data 0x7001D336
#data 0xE00580E6
#data 0x430B6110
#data 0x80E6611c
#data 0x2008600c
#data 0x85EE8B22
#data 0x81EE7001
#data 0x401185Ee
#data 0xA0058B01
#data 0xC90f

loc_8C106DFE:
#data 0x6007
#data 0xC90F7001
#data 0x70016007

#align4
loc_8C106E08:
#data 0x85EE81Ee
#data 0x8B112008
#data 0xD32984E5
#data 0x80E5CA01
#data 0x200884E5
#data 0x64328D05
#data 0x62429041
#data 0xA003012e
#data 0x0009

loc_8C106E2A:
#data 0x903d
#data 0x012E6242

#align4
loc_8C106E30:
#data 0x0E16903b

#align4
loc_8C106E34:
#data 0x200885Ef
#data 0x85EF8923
#data 0x31ECE170
#data 0x81EF70Ff
#data 0xF2E6E064
#data 0xF318E308
#data 0x31ECE164
#data 0xFE27F230
#data 0xF2E6E03c
#data 0xF230F318
#data 0x85EFFE27
#data 0x891B3037
#data 0xF408C715
#data 0xF3E6E078
#data 0xFE37F341
#data 0xF2E6E07c
#data 0xFE27F241
#data 0xF3E67004
#data 0xA00DF341
#data 0xFE37

loc_8C106E82:
#data 0x52E6
#data 0xD30EE500
#data 0x842664E3
#data 0x802670Ff
#data 0x700184E4
#data 0x4F2680E4
#data 0x6EF6432b

#align4
loc_8C106E9C:
#data 0x000B4F26
#data 0x00986EF6
#data 0x013C012c
#data 0x00840134
#data 0x8C26823c
#data 0x8C2895F6

#align4
loc_8C106EB4:
#data bank12.loc_8c1292D4
#data 0x8C26A908
#data 0x3E000000

#align4
loc_8C106EC0:
#data bank03.loc_8c0305Ca


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
#data 0x0000

#align4
loc_8C106F50:
#data bank13.loc_8c13dd40

loc_8C106F54:
#data 0x8C26A908

#align4
loc_8C106F58:
#data loc_8c108060

loc_8C106F5C:
#data loc_8c1081E6

loc_8C106F60:
#data loc_8c108192

loc_8C106F64:
#data loc_8c108086


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

loc_8C106F7E:
#data 0x908e
#data 0x004C2FE6
#data 0x8803600c
#data 0x6E538D03
#data 0xE2009088
#data 0x0E26

loc_8C106F92:
#data 0x9085
#data 0x73FF03Ee
#data 0x73010E36
#data 0x8B062338
#data 0xE001D543
#data 0x64E3D343
#data 0x432B80E4
#data 0x6EF6

loc_8C106FAE:
#data 0x000b
#data 0x6EF6

;==============================================
loc_8C106FB2:
#data 0x9076
#data 0x035ED641
#data 0x4308D73f
#data 0x43004300
#data 0x035E363c
#data 0x43087054
#data 0x43084300
#data 0xE301373c
#data 0x855E0534
#data 0x360C4000
#data 0x815F6061
#data 0x4008855e
#data 0xF378370c
#data 0xF537E074
#data 0x8054E002
#data 0xF356E05c
#data 0xF246E034
#data 0xF527F230
#data 0xF356E060
#data 0xF246E038
#data 0xF527F230

#align4
loc_8C107004:
#data 0xF356E05c
#data 0xF246E034
#data 0xF527F230
#data 0xF356E060
#data 0xF246E038
#data 0xF527F230
#data 0x70FF855f
#data 0x600F815f
#data 0x8B0C2008
#data 0x8054E001
#data 0x855EE308
#data 0x815E7001
#data 0x3033600f
#data 0xE0038B03
#data 0xE0078054
#data 0x815e

loc_8C107042:
#data 0x000b
#data 0x0009

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
#data 0x022a
#data 0x00D4

loc_8C1070A2:
#data 0x00D8

loc_8C1070A4:
#data 0x012c

loc_8C1070A6:
#data 0x0084

loc_8C1070A8:
#data 0x0144
#data 0x0000

#align4
loc_8C1070AC:
#data 0x8c1658E0

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

#align4
loc_8C1071F8:
#data 0x3FD55555

#align4
loc_8C1071FC:
#data bank11.loc_8c11e730

loc_8C107200:
#data bank04.loc_8c044F12

loc_8C107204:
#data loc_8c106F68

loc_8C107208:
#data 0x00008000

#align4
loc_8C10720C:
#data bank03.loc_8c03319e

loc_8C107210:
#data 0x8C26A908


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
#data 0x0000

#align4
loc_8C10736C:
#data 0x00008000


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
#data 0x0000

#align4
loc_8C107438:
#data bank04.loc_8c044F12

loc_8C10743C:
#data 0x8C289650

#align4
loc_8C107440:
#data loc_8c10748c

loc_8C107444:
#data bank12.loc_8c1294C8

loc_8C107448:
#data 0x8C26A908

#align4
loc_8C10744C:
#data 0x00008000

#align4
loc_8C107450:
#data 0x0000A000

#align4
loc_8C107454:
#data 0x0000E000

#align4
loc_8C107458:
#data 0x0000C000


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
mov.w @(bank10.loc_8c10754e,pc),r3

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

#align4
loc_8C107570:
#data bank04.loc_8c044F12

loc_8C107574:
#data loc_8c107602

loc_8C107578:
#data bank12.loc_8c1294C8


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
mov.w @(bank10.loc_8c107642,pc),r1

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

;==============================================
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

#align4
loc_8C107654:
#data 0x0000A000

#align4
loc_8C107658:
#data 0x0000E000

#align4
loc_8C10765C:
#data 0x0000C000

#align4
loc_8C107660:
#data 0x8C26A908

#align4
loc_8C107664:
#data bank13.loc_8c13df9c

loc_8C107668:
#data bank04.loc_8c0450C0


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
#align4
loc_8c1076a8:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(bank10.loc_8c107814,pc),r3
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
mov.l @(bank10.loc_8c107818,pc),r2
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
mov.l @(bank10.loc_8c107820,pc),r3
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

loc_8C107722:
#data 0x8444
#data 0x80447001

#align4
loc_8C107728:
#data 0xD53F8445
#data 0x936D600c
#data 0x350C4008
#data 0xF408C73d
#data 0xF346E050
#data 0xF437F341
#data 0xF246E054
#data 0xF427F241
#data 0x024EE048
#data 0x0426323c
#data 0xF358E078
#data 0xE07CF437
#data 0xF437F358
#data 0xF3587004
#data 0x8445F437
#data 0x80457001
#data 0x600CE20d
#data 0x8B023027
#data 0x70018444
#data 0x8044

loc_8C107776:
#data 0x000b
#data 0x0009

;==============================================
loc_8c10777a:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(bank10.loc_8c107814,pc),r3
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
mov.l @(bank10.loc_8c107830,pc),r2
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
mov.l @(bank10.loc_8c107820,pc),r3
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
loc_8c107806:
#data 0x012c
loc_8c107808:
#data 0x0419
loc_8c10780a:
#data 0x0084
#data 0x0348
loc_8c10780e:
#data 0x0409

loc_8C107810:
#data 0x00D0
#data 0x0000

#align4
loc_8C107814:
#data bank04.loc_8c044F12

loc_8C107818:
#data loc_8c107710
loc_8c10781c:
#data 0x8C26A908

#align4
loc_8C107820:
#data bank12.loc_8c1294C8

loc_8C107824:
#data 0x8c1658F4

loc_8C107828:
#data bank13.loc_8c13dfBc
#data 0x3D1D89D9

#align4
loc_8C107830:
#data loc_8c1077Dc

loc_8C107834:
#data 0x8c165904
#data 0x0009000b

;==============================================
#align4
loc_8c10783c:
mov.b @(0x05,r4),r0
mov.l @(bank10.loc_8c107954,pc),r5
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
#data 0x4F22
#data 0x7FFC
#data 0xD336
#data 0xE508
#data 0x2F42
#data 0xE601
#data 0x430B
#data 0xE400
#data 0x2008
#data 0x8D22
#data 0x6403
#data 0x905B
#data 0xE301
#data 0xD231
#data 0x0434
#data 0x70A0
#data 0x9357
#data 0xD130
#data 0x1424
#data 0xE203
#data 0x0436
#data 0x7004
#data 0x0426
#data 0x70BC
#data 0x6312
#data 0x6143
#data 0x7134
#data 0x6232
#data 0x032E
#data 0x70F8
#data 0x0436
#data 0xD32A
#data 0x62F2
#data 0x430B
#data 0xE00C
#data 0x9145
#data 0xE048
#data 0xF48D
#data 0x0416
#data 0xE078
#data 0xF447
#data 0xE07C
#data 0xF447
#data 0x7004
#data 0xF447

loc_8c1078d4:
#data 0x7F04
#data 0x4F26
#data 0x000B
#data 0x0009

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
#data 0x000b
#data 0x0009

;==============================================
loc_8c10790a:
mov.b @(0x05,r4),r0
mov.l @(bank10.loc_8c107954,pc),r5
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
#data 0x012C
#data 0x0409
#data 0x038E

loc_8c107950:
#data 0x00D0
#data 0x0000

#align4
loc_8c107954:
#data bank13.loc_8c13dff4

loc_8c107958:
#data 0x4F12
#data 0x8C04

loc_8c10795c:
#data 0x78DC
#data 0x8C10
#data 0xA908
#data 0x8C26

loc_8c107964:
#data 0x94C8
#data 0x8C12

loc_8c107968:
#data 0x5914
#data 0x8C16

loc_8c10796c:
#data 0x4F22
#data 0x7FFC
#data 0xD355
#data 0xE508
#data 0x2F42
#data 0xE601
#data 0x430B
#data 0xE400
#data 0x2008
#data 0x8D22
#data 0x6403
#data 0x909C
#data 0xE301
#data 0xD251
#data 0x0434
#data 0x70A0
#data 0x9398
#data 0xD150
#data 0x1424
#data 0xE204
#data 0x0436
#data 0x7004
#data 0x0426
#data 0x70C0
#data 0x6312
#data 0x6143
#data 0x7134
#data 0x6232
#data 0x032E
#data 0x70F4
#data 0x0436
#data 0xD34A
#data 0x62F2
#data 0x430B
#data 0xE00C
#data 0x9186
#data 0xE048
#data 0xF48D
#data 0x0416
#data 0xE078
#data 0xF447
#data 0xE07C
#data 0xF447
#data 0x7004
#data 0xF447

loc_8c1079c6:
#data 0x7F04
#data 0x4F26
#data 0x000B
#data 0x0009

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
#data 0x0009000b

;==============================================
#align4
loc_8c1079fc:
mov.b @(0x05,r4),r0
mov.l @(bank10.loc_8c107adc,pc),r5
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
#data 0x4F22
#data 0x7FFC
#data 0xD322
#data 0xE508
#data 0x2F42
#data 0xE601
#data 0x430B
#data 0xE400
#data 0x2008
#data 0x8D22
#data 0x6403
#data 0x9035
#data 0xE301
#data 0xD222
#data 0x0434
#data 0x70A0
#data 0x9331
#data 0xD11C
#data 0x1424
#data 0xE205
#data 0x0436
#data 0x7004
#data 0x0426
#data 0x70C4
#data 0x6312
#data 0x6143
#data 0x7134
#data 0x6232
#data 0x032E
#data 0x70F0
#data 0x0436
#data 0xD316
#data 0x62F2
#data 0x430B
#data 0xE00C
#data 0x911F
#data 0xE048
#data 0xF48D
#data 0x0416
#data 0xE078
#data 0xF447
#data 0xE07C
#data 0xF447
#data 0x7004
#data 0xF447

loc_8c107a94:
#data 0x7F04
#data 0x4F26
#data 0x000B
#data 0x0009

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
#data 0x012c
#data 0x0409
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
#data 0x8C26A908

#align4
loc_8C107AD4:
#data bank12.loc_8c1294C8

loc_8C107AD8:
#data 0x8c165924

loc_8C107ADC:
#data bank13.loc_8c13dfF4

loc_8C107AE0:
#data loc_8c107A9c

loc_8C107AE4:
#data 0x8c165934


loc_8C107AE8:
mov.b @(0x04,r4),r0
add 0x01,r0
bra loc_8C107AF4
mov.b r0,@(0x04,r4)
#data 0x0009000b

;==============================================
#align4
loc_8c107af4:
mov.b @(0x05,r4),r0
mov.l @(bank10.loc_8c107c3c,pc),r5
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
#data 0x4F22
#data 0x7FF8
#data 0xD342
#data 0xE601
#data 0x2F42
#data 0x1F51
#data 0xE508
#data 0x430B
#data 0xE400
#data 0x2008
#data 0x8D2C
#data 0x6403
#data 0x9074
#data 0xE301
#data 0xD23D
#data 0x0434
#data 0x70A0
#data 0x9370
#data 0xD13C
#data 0x1424
#data 0xE205
#data 0x0436
#data 0x7004
#data 0x0426
#data 0x70CC
#data 0x6312
#data 0x6143
#data 0x7134
#data 0x6232
#data 0x032E
#data 0x70E8
#data 0x0436
#data 0xD336
#data 0x62F2
#data 0x430B
#data 0xE00C
#data 0xE050
#data 0xF49D
#data 0xF447
#data 0xE054
#data 0xF447
#data 0xE058
#data 0xF447
#data 0x53F1
#data 0xD031
#data 0x4308
#data 0xF48D
#data 0x033E
#data 0xE044
#data 0x0436
#data 0xE078
#data 0xF447
#data 0xE07C
#data 0xF447
#data 0x7004
#data 0xF447

loc_8c107ba2:
#data 0x7F08
#data 0x4F26
#data 0x000B
#data 0x0009

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
#data 0x0009000b

;==============================================
#align4
loc_8c107bd8:
mov.b @(0x05,r4),r0
mov 0x0E,r3
mov.l @(bank10.loc_8c107c58,pc),r5
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
loc_8c107c34:
#data 0x02F7

loc_8C107C36:
#data 0x012c
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
#data 0x8C26A908

#align4
loc_8C107C4C:
#data bank12.loc_8c1294C8

loc_8C107C50:
#data bank13.loc_8c13dfB4

loc_8C107C54:
#data 0x8c165944

loc_8C107C58:
#data bank13.loc_8c13e00c
loc_8c107c5c:
#data 0x3EB6DB6e

#align4
loc_8C107C60:
#data bank04.loc_8c0450C0


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

#align4
loc_8C107C94:
#data 0xE5072FE6
#data 0xD3424F22
#data 0xE6016E43
#data 0xE400430b
#data 0x8D402008
#data 0x90726403
#data 0xD23EE301
#data 0x70A00434
#data 0xF49D936e
#data 0x04361424
#data 0xF447E050
#data 0xD23AE054
#data 0xE058F447
#data 0x6322F447
#data 0x61329063
#data 0x001ED537
#data 0x314C9160
#data 0x905E2102
#data 0x880100Ec
#data 0x88028903
#data 0xA0078904
#data 0x0009

loc_8C107CEA:
#data 0x9057
#data 0x0009A001

loc_8C107CF0:
#data 0x9055

loc_8C107CF2:
#data 0xF356
#data 0xF437E034

#align4
loc_8C107CF8:
#data 0xE3009052
#data 0xE05402Ec
#data 0xE038F0E6
#data 0xF2E6622c
#data 0xC72A3327
#data 0x4221323e
#data 0xF32D425a
#data 0xF008F302
#data 0xF23EE038
#data 0xE078F427
#data 0xE07CF447
#data 0x7004F447
#data 0xF447

loc_8C107D2A:
#data 0x4F26
#data 0x6EF6000b

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
#data 0x000b
#data 0x0009

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
#data 0x012C
#data 0x0411
#data 0x0154
#data 0x0084
#data 0x01FD
#data 0x008C
#data 0x0088
#data 0x013C

loc_8c107da2:
#data 0x00D0

loc_8c107da4:
#data 0x4F12
#data 0x8C04

loc_8c107da8:
#data 0x7D30
#data 0x8C10
#data 0xA908
#data 0x8C26
#data 0xA518
#data 0x8C26
#data 0x2492
#data 0x4009

loc_8c107db8:
#data 0x5954
#data 0x8C16

#align4
loc_8C107DBC:
#data 0x3E2AAAAB

loc_8c107dc0:
#data 0x2FE6
#data 0xE507
#data 0x4F22
#data 0xD34C
#data 0x6E43
#data 0xE601
#data 0x430B
#data 0xE400
#data 0x2008
#data 0x8D3F
#data 0x6403
#data 0x9083
#data 0xE301
#data 0xD248
#data 0x0434
#data 0x70A0
#data 0x937F
#data 0xD547
#data 0x1424
#data 0x0436
#data 0x907C
#data 0x00EC
#data 0x8801
#data 0x8903
#data 0x8802
#data 0x8904
#data 0xA007
#data 0x0009

loc_8c107df8:
#data 0x9075
#data 0xA001
#data 0x0009

loc_8c107dfe:
#data 0x9073

loc_8c107e00:
#data 0xF356
#data 0xE034
#data 0xF437

loc_8c107e06:
#data 0x9070
#data 0xE300
#data 0xF49D
#data 0x02EC
#data 0xE054
#data 0xF0E6
#data 0xE038
#data 0x622C
#data 0xF2E6
#data 0x3327
#data 0xC73A
#data 0x323E
#data 0x4221
#data 0x425A
#data 0xF32D
#data 0xF302
#data 0xF008
#data 0xE038
#data 0xF23E
#data 0xF427
#data 0xE078
#data 0xF447
#data 0xE07C
#data 0xF447
#data 0x7004
#data 0xF447
#data 0x9057
#data 0x02ED
#data 0x2228
#data 0x8D03
#data 0xE044
#data 0x9353
#data 0xA001
#data 0x0009

loc_8c107e4a:
#data 0xD32F

loc_8c107e4c:
#data 0x0436
#data 0xE203
#data 0x904E
#data 0x0426

loc_8c107e54:
#data 0x4F26
#data 0x000B
#data 0x6EF6

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
#data 0x0009000b

;==============================================
#align4
loc_8c107e88:
mov.l @(loc_8C107F14,pc),r2
mov.b @(0x05,r4),r0
mov.l @r2,r3
extu.b r0,r6
mov.l @(bank10.loc_8c107f10,pc),r5
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

loc_8C107EE0:
#data 0x012c
#data 0x0405
#data 0x008C01Fd
#data 0x013C0088
#data 0x40000130

loc_8C107EF0:
#data 0x00D0
loc_8c107ef2:
#data 0x0160
loc_8c107ef4:
#data 0x00000084

#align4
loc_8C107EF8:
#data bank04.loc_8c044F12

loc_8C107EFC:
#data loc_8c107E5a
#data 0x8C26A518
#data 0x40092492
#data 0x0000C001

#align4
loc_8C107F0C:
#data 0x8c165964

loc_8C107F10:
#data bank13.loc_8c13e048
loc_8c107f14:
#data 0x8C26A908

#align4
loc_8C107F18:
#data bank04.loc_8c0450C0

loc_8C107F1C:
#data 0x4F222FE6
#data 0x6E43BEB8
#data 0x64E3BF4c
#data 0x03EC9083
#data 0x89082338
#data 0x03EC9080
#data 0x89042338
#data 0x01ECD242
#data 0x6322E061
#data 0x0314

loc_8C107F42:
#data 0x4F26
#data 0x6EF6000b

;==============================================
#align4
loc_8c107f48:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(bank10.loc_8c108048,pc),r3
mov 0x07,r5
mov.l r4,@r15
mov 0x01,r6
jsr @r3
mov 0x00,r4
tst r0,r0
bt/s loc_8c107fa4
mov r0,r4
mov.w @(bank10.loc_8c108036,pc),r0
mov 0x01,r3
mov.l @(bank10.loc_8c10804c,pc),r2
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
mov.l @(bank10.loc_8c108054,pc),r3
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
#data 0x0235
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
#data 0x8C2896B0

#align4
loc_8C108048:
#data bank04.loc_8c044F12

loc_8C10804C:
#data loc_8c107D30
loc_8c108050:
#data 0x8C26A908

#align4
loc_8C108054:
#data bank12.loc_8c1294C8

loc_8C108058:
#data loc_8c107E5a
loc_8c10805c:
#data 0x0000C001


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

#align4
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
bf bank10.loc_8c1080aa
bra bank10.loc_8c1080aa
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
#data 0x6322D243
#data 0x24125134
#data 0xE000000b

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
#align4
loc_8C108210:
#data 0x43116342
#data 0x51468B11
#data 0x890E2118
#data 0x6543D62e
#data 0x7518

loc_8C108222:
#data 0x6453
#data 0x5242E04c
#data 0x75506543
#data 0x14222269
#data 0x353C034e
#data 0x22286252
#data 0x8BF3

loc_8C10823A:
#data 0x000b
#data 0x0009

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
#data 0x62422FD6
#data 0x8B1F4211
#data 0x21185146
#data 0xE31D891c
#data 0x4628D117
#data 0x453C4618
#data 0x46086D53
#data 0xE7073D6c
#data 0x65437418
#data 0x40296052
#data 0x20794019
#data 0x8F058802
#data 0x53527450
#data 0x62332319
#data 0x152222Db
#data 0x035EE04c
#data 0x6542343c
#data 0x8BEC2558
#data 0x6DF6000b

;==============================================
#align4
loc_8C1082B8:
#data 0x8C28C864

#align4
loc_8C1082BC:
#data 0x8C28C86c

#align4
loc_8C1082C0:
#data 0x8C28C868

#align4
loc_8C1082C4:
#data 0x8C28C870

#align4
loc_8C1082C8:
#data 0x8C28C874

#align4
loc_8C1082CC:
#data 0x8C28C87c

#align4
loc_8C1082D0:
#data 0x8C28C878

#align4
loc_8C1082D4:
#data bank12.loc_8c1294C8
#data 0xFFFE7FFf
#data 0x03FFFFFf

#align4
loc_8C1082E0:
#data 0x43116342
#data 0x51468B10
#data 0x890D2118
#data 0x2532E300
#data 0x7418

loc_8C1082F2:
#data 0xE04c
#data 0x74506643
#data 0x73016352
#data 0x026E2532
#data 0x6642342c
#data 0x8BF42668

#align4
loc_8C108308:
#data 0x0009000b

;==============================================
#align4
loc_8C10830C:
#data 0x43116342
#data 0x51468B18
#data 0x89152118
#data 0x76186643

#align4
loc_8C10831C:
#data 0x63426463
#data 0x2532E04c
#data 0x53417504
#data 0x25327650
#data 0x53427504
#data 0x75042532
#data 0x25325343
#data 0x362C024e
#data 0x24486462
#data 0x75048FEc

#align4
loc_8C108344:
#data 0x0009000b

;==============================================
#align4
loc_8C108348:
#data 0x43116342
#data 0x51468B14
#data 0x89112118
#data 0x76186643

#align4
loc_8C108358:
#data 0x64636356
#data 0x2432E04c
#data 0x63567650
#data 0x63561431
#data 0x63561432
#data 0x024E1433
#data 0x6462362c
#data 0x8BEF2448

#align4
loc_8C108378:
#data 0x0009000b

;==============================================
#align4
loc_8C10837C:
#data 0x63F37FF0
#data 0xF34A730c
#data 0x730463F3
#data 0x720862F3
#data 0xF36AF25a
#data 0x6342FF7a
#data 0x8B1C4311
#data 0x21185146
#data 0x65438919
#data 0x7518

loc_8C1083A2:
#data 0x62F3
#data 0x6322720c
#data 0x645362F3
#data 0x143B7208
#data 0x6322E04c
#data 0x720462F3
#data 0x143C6543
#data 0x63227550
#data 0x143D62F3
#data 0x143E6322
#data 0x353C034e
#data 0x22286252
#data 0x8BE7

loc_8C1083D2:
#data 0x000b
#data 0x00007F10

#align4
loc_8C1083D8:
#data 0xE60C2FE6
#data 0x4F22FFFb
#data 0xD457D358
#data 0xE500430b
#data 0xD257D359
#data 0xDE57FF9d
#data 0x6430F2Fa
#data 0x2448644c
#data 0x60438903
#data 0x88090009
#data 0x8B01

loc_8C108402:
#data 0xA002
#data 0x64E3

loc_8C108406:
#data 0x64E3
#data 0x740c

loc_8C10840A:
#data 0xD352
#data 0x0009430b
#data 0x420BD251
#data 0xB164F4Fc
#data 0xB0360009
#data 0x4F260009
#data 0xA005FFF9
#data 0x6EF6


loc_8C108426:
sts.l pr,@-r15
bsr loc_8C1086E2
nop
bra loc_8C1084Fc
lds.l @r15+,pr

#align4
loc_8C108430:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x4F222FA6
#data 0xDB48DE44
#data 0xA00CDA46
#data 0xED00

loc_8C108446:
#data 0x60E0
#data 0x4C086C43
#data 0x4008600c
#data 0x0CCE00Be
#data 0x89012CC8
#data 0x00094C0b

loc_8C10845C:
#data 0x7D01

loc_8C10845E:
#data 0x60E0
#data 0x440864D3
#data 0x4008600c
#data 0x044E00Ae
#data 0x00096043
#data 0x8BE888Ff
#data 0x6320D232
#data 0x22307301
#data 0x6AF64F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6

;==============================================
loc_8C10848A:
#data 0xD231
#data 0x6420D135
#data 0x644CD535
#data 0x44006343
#data 0x4408343c
#data 0x6042341c
#data 0x8B0288Ff
#data 0xA027E000
#data 0x2500

loc_8C1084AA:
#data 0xE004
#data 0xE301D62f
#data 0xF3462530
#data 0xF537E00c
#data 0x15316342
#data 0x630C8449
#data 0xE00C435a
#data 0xF32DF266
#data 0xF23DF232
#data 0x8059005a
#data 0x630C844a
#data 0xE010435a
#data 0xF32DF266
#data 0xF23DF232
#data 0x805A005a
#data 0x630C844b
#data 0xF32D435a
#data 0xF266E014
#data 0xF23DF232
#data 0x805B005a

#align4
loc_8C1084F8:
#data 0x0009000b

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

#align4
loc_8C108540:
#data 0x8C26A8C4

#align4
loc_8C108544:
#data bank12.loc_8c129728
#data 0x8C26A8Cc

#align4
loc_8C10854C:
#data 0x8c165D74

loc_8C108550:
#data 0x8C26A95c

#align4
loc_8C108554:
#data bank03.loc_8c031F10

loc_8C108558:
#data bank03.loc_8c031F24

loc_8C10855C:
#data 0x8c165C64

loc_8C108560:
#data 0x8c165A78

loc_8C108564:
#data 0x8c165CA8

loc_8C108568:
#data 0x8C26A688
#data 0x8C26A89c

#align4
loc_8C108570:
#data 0x8C26823c


loc_8C108574:
mov.w @(loc_8C10865A,pc),r0 ; r0 set to 0x90
mov.w @(loc_8C108658,pc),r3 ; r3 set to 0x7D0
mov.l @(r0,r4),r2
cmp/hs r3,r2
bt loc_8C10862c
bra loc_8C108632
nop

loc_8c108582:
mov.w @(bank10.loc_8c10865a,pc),r0
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
mov.w @(bank10.loc_8c10865a,pc),r0
mov.l @r6,r2
mov.l @(r0,r2),r0
cmp/hs r1,r0
bf bank10.loc_8c108632
bra bank10.loc_8c10862c
nop

loc_8C1085D2:
mov.w @(loc_8C10865A,pc),r0 ; r0 set to 0x90
mov.w @(loc_8C108660,pc),r3 ; r3 set to 0x1194
mov.l @(r0,r4),r2
cmp/hs r3,r2
bf loc_8C108632
bra loc_8C10862c
nop

#align4
loc_8c1085e0:
mov.w @(bank10.loc_8c10865a,pc),r0
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
mov.w @(bank10.loc_8c10865a,pc),r0
mov.l @r6,r2
mov.l @(r0,r2),r0
cmp/hs r1,r0
bf bank10.loc_8c108632

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

#align4
loc_8C108694:
#data 0x8C26823c

#align4
loc_8C108698:
#data 0x8C26A8C4

#align4
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
bf bank10.loc_8c1086de

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
mov.l @(bank10.loc_8c108750,pc),r2
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
mov.l @(bank10.loc_8c108754,pc),r3
jmp @r3
mov.l @r15+,r14

loc_8c10871a:
extu.b r14,r4
mov.l @(bank10.loc_8c108750,pc),r0
mov r4,r3
shll r4
add r3,r4
shll2 r4
mov.l @(r0,r4),r4
add 0x04,r15
mov.l @(bank10.loc_8c108758,pc),r3
jmp @r3
mov.l @r15+,r14
loc_8c108730:
#data 0xFD30
loc_8c108732:
#data 0x0090
loc_8c108734:
#data 0x04B0
#data 0x0000
loc_8c108738:
#data 0x0000
#data 0x4F80
loc_8c10873c:
#data 0x0000
#data 0x43F0
loc_8c108740:
#data 0x6000
#data 0x46EA
loc_8c108744:
#data 0x2400
#data 0x4974
loc_8c108748:
#data 0xA694
#data 0x8C26

#align4
loc_8C10874C:
#data 0x8C26A95C

#align4
loc_8c108750:
#data bank13.loc_8c13e060

loc_8c108754:
#data bank02.loc_8c02dc32

loc_8c108758:
#data bank02.loc_8c02dc1c
#data 0xE050
#data 0xF346
#data 0xF340
#data 0xF437
#data 0xE054
#data 0xF246
#data 0xF240
#data 0xF427
#data 0xE058
#data 0xF346
#data 0xF340
#data 0x000B
#data 0xF437

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
#data 0xF346E078
#data 0xF437F340
#data 0xF246E07c
#data 0xF427F240
#data 0xF3467004
#data 0x000BF340
#data 0xE074F437
#data 0xF340F346
#data 0xF437000b

;==============================================
#align4
loc_8C108800:
#data 0xE5052FE6
#data 0xE6012FD6
#data 0x4F222FC6
#data 0x430BD326
#data 0x2008E400
#data 0x6E038D13
#data 0xE4019041
#data 0xD3239240
#data 0x70A00E44
#data 0x0E261E34
#data 0x00096043
#data 0x81EFED00
#data 0xEC02

loc_8C108832:
#data 0x65D3
#data 0x64E3B112
#data 0x3DC37D01
#data 0x8BF9

loc_8C10883E:
#data 0x4F26
#data 0x6DF66CF6
#data 0x6EF6000b

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

loc_8C10889E:
#data 0x012c
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

#align4
loc_8c108a2c:
mov.l @(bank10.loc_8c108a58,pc),r2
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

;==============================================
loc_8C108A42:
#data 0x0084

#align4
loc_8C108A44:
#data loc_8c109458

loc_8C108A48:
#data 0x47800000

#align4
loc_8C108A4C:
#data 0x43B40000

#align4
loc_8C108A50:
#data 0x3F000000

#align4
loc_8C108A54:
#data 0x0000FFFf

#align4
loc_8C108A58:
#data bank04.loc_8c0450C0

loc_8C108A5C:
#data 0x4F222FE6
#data 0x6E537FFc
#data 0xE505D32c
#data 0xE6012F42
#data 0xE400430b
#data 0x8D242008
#data 0xD12A6403
#data 0x1434D328
#data 0x621263E3
#data 0x61434308
#data 0x62227134
#data 0x923D332c
#data 0x63E35037
#data 0x2202324c
#data 0x420062E3
#data 0x323CD022
#data 0x4208D322
#data 0x430B320c
#data 0x9031E00c
#data 0x9230912f
#data 0x63F20416
#data 0x323C902e
#data 0xE0200426
#data 0x143563F2
#data 0x04E4

loc_8C108ABE:
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6

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

#align4
loc_8c108afc:
mov 0x48,r0
mov.l @(r0,r4),r1
add r5,r1
mov.l r1,@(r0,r4)

loc_8C108B04:
rts
nop

;==============================================
#data 0x08090084
#data 0x008800Cc
#data 0x00C8

loc_8C108B12:
#data 0x012c

loc_8C108B14:
#data 0x0100
#data 0x0000

#align4
loc_8C108B18:
#data bank04.loc_8c044F12

loc_8C108B1C:
#data loc_8c108AC6
#data 0x8C26A904

#align4
loc_8C108B24:
#data bank13.loc_8c13e228

loc_8C108B28:
#data bank12.loc_8c1294C8

loc_8C108B2C:
#data bank04.loc_8c0450C0


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

#align4
loc_8c108bbc:
mov r5,r2
mov.l @(bank10.loc_8c108c18,pc),r3
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

#align4
loc_8C108C10:
#data 0x8c165D8c

loc_8C108C14:
#data 0x8C26A95c

#align4
loc_8C108C18:
#data bank12.loc_8c1294C8

loc_8C108C1C:
#data 0xD3474F22
#data 0xE601E505
#data 0xE400430b
#data 0x8D082008
#data 0x907D6403
#data 0xD243E300
#data 0x70A00434
#data 0x14249379
#data 0x0436

loc_8C108C3E:
#data 0x4F26
#data 0x0009000b

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
#align4
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
mov.l @(bank10.loc_8c108d4c,pc),r2
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
mov.l @(bank10.loc_8c108d4c,pc),r2
shll2 r0
mov.l @(r0,r8),r3
mov.w @(loc_8C108D38,pc),r0
jsr @r2
mov.l r3,@(r0,r14)
mov.l @(bank10.loc_8c108d50,pc),r3
mov r0,r1
jsr @r3
mov 0x09,r0
mov r0,r2
shll r2
mov r0,r3
mov r0,r4
mov.l @(bank10.loc_8c108d54,pc),r0
add r3,r2
mov.l @(bank10.loc_8c108d58,pc),r3
shll2 r2
mov r14,r1
add 0x34,r1
add r0,r2
jsr @r3
mov 0x0C,r0
mov r4,r5
mov.l @(bank10.loc_8c108d5c,pc),r3
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
#data 0x012C
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
#data 0x0000

loc_8c108d3c:
#data 0x4F12
#data 0x8C04

loc_8c108d40:
#data 0x8C44
#data 0x8C10

#align4
loc_8C108D44:
#data 0x8C26823C

#align4
loc_8C108D48:
#data 0x8C26A904

#align4
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

;==============================================
loc_8C108E0A:
#data 0x012c

loc_8C108E0C:
#data 0x1194

loc_8C108E0E:
#data 0x0090

#align4
loc_8C108E10:
#data 0x3D888889

#align4
loc_8C108E14:
#data 0x8C26823c

#align4
loc_8C108E18:
#data bank04.loc_8c0450C0

loc_8C108E1C:
#data 0xD34A4F22
#data 0xE601E505
#data 0xE400430b
#data 0x8D082008
#data 0x90816403
#data 0xD246E300
#data 0x70A00434
#data 0x1424937d
#data 0x0436

loc_8C108E3E:
#data 0x4F26
#data 0x0009000b

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

loc_8C108F34:
#data 0x012c
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
#data 0x0000

#align4
loc_8C108F48:
#data bank04.loc_8c044F12

loc_8C108F4C:
#data loc_8c108E44

loc_8C108F50:
#data 0x8c165DEc

loc_8C108F54:
#data 0x8C26823c

#align4
loc_8C108F58:
#data bank11.loc_8c11e730

loc_8C108F5C:
#data bank12.loc_8c12939c

loc_8C108F60:
#data 0x8C26A904

#align4
loc_8C108F64:
#data bank12.loc_8c1294C8

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
mov.l @(bank10.loc_8c109054,pc),r2
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

;==============================================
#data 0x0000
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

#align4
loc_8C109054:
#data bank11.loc_8c11E860


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
mov.l @(bank10.loc_8c109190,pc),r3
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
#align4
loc_8C1090B4:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0xFFFB2F86
#data 0xFFDBFFEb
#data 0x4F22FFCb
#data 0x6E437FF4
#data 0x935285Ee
#data 0x81EE7004
#data 0x303385Ee
#data 0xE0008B01
#data 0x81Ee

loc_8C1090E2:
#data 0xD328
#data 0x64329046
#data 0x6242D12a
#data 0x410B05Ee
#data 0xC72D542c
#data 0xFC08DC2f
#data 0xFD08C72c
#data 0xD927C72c
#data 0xD825ED00
#data 0xDA26DB27
#data 0xFE08A021

#align4
loc_8C10910C:
#data 0x64F34B0b
#data 0xFFF6E008
#data 0x8B17FEF5
#data 0xF3F2F3Fc
#data 0x85EEFF3b
#data 0x34DC6403
#data 0xC724445a
#data 0xF22DF108
#data 0xF2C3F212
#data 0xF23DF2D0
#data 0x480B045a
#data 0xF3F924C9
#data 0xF302C71f
#data 0xF008F2F8
#data 0xFF2AF23e

#align4
loc_8C109148:
#data 0x4A0B7D1e
#data 0x64F3

loc_8C10914E:
#data 0x490b
#data 0x20080009
#data 0x7F0C89Da
#data 0xFCF94F26
#data 0xFEF9FDF9
#data 0x68F6FFF9
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6

;==============================================
loc_8C109172:
#data 0x012c

loc_8C109174:
#data 0x0084
loc_8c109176:
#data 0x0801
loc_8c109178:
#data 0x016800Cc

#align4
loc_8C10917C:
#data bank04.loc_8c044F12

loc_8C109180:
#data loc_8c1090B4

loc_8C109184:
#data 0x8C26A904

#align4
loc_8C109188:
#data 0x8c165E7c

loc_8C10918C:
#data 0x8C26A95c

#align4
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
#data 0x43B40000
#data 0x3F000000
#data 0xC1200000
#data 0x0000FFFf
#data 0x47800000
#data 0x3951B717

#align4
loc_8C1091C0:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x4F22FFFb
#data 0x6E437FF8
#data 0x600C84E4
#data 0x8B2A8800
#data 0x934A85Ee
#data 0x81EE7001
#data 0x303385Ee
#data 0xE0008B01
#data 0x81Ee

loc_8C1091EA:
#data 0xD324
#data 0x64329042
#data 0x6242D123
#data 0x410B05Ee
#data 0xDD245422
#data 0xDC22C724
#data 0xA010DB20
#data 0xFF08

loc_8C109206:
#data 0x64F3
#data 0x4D0B65F3
#data 0x85EE7404
#data 0xF2F864F3
#data 0x630365F3
#data 0xF0FC435a
#data 0xF23EF32d
#data 0x4B0BFF2a
#data 0x7404

loc_8C109226:
#data 0x4C0b
#data 0x20080009
#data 0x89Eb

loc_8C10922E:
#data 0x7F08
#data 0xFFF94F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6

;==============================================
loc_8C10923E:
#data 0x4F22
#data 0xE505D314
#data 0x430BE601
#data 0x2008E400
#data 0x64038D0e
#data 0xE3019011
#data 0xD210D109
#data 0x14240434
#data 0x90096312
#data 0x53216232
#data 0x04369208
#data 0x04267048

#align4
loc_8C10926C:
#data 0x000B4F26
#data 0x01F40009
#data 0x012C0084
#data 0x00000801
#data 0x8C26A904

#align4
loc_8C109280:
#data loc_8c108060

loc_8C109284:
#data loc_8c1081E6

loc_8C109288:
#data loc_8c108086

loc_8C10928C:
#data loc_8c108192
#data 0x3B03126f

#align4
loc_8C109294:
#data bank04.loc_8c044F12

loc_8C109298:
#data loc_8c1091C0


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

#align4
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
#data 0x0000

#align4
loc_8C1093C8:
#data 0xBECCCCCd

#align4
loc_8C1093CC:
#data 0x8c165E94

loc_8C1093D0:
#data bank04.loc_8c046AE0

loc_8C1093D4:
#data 0x41A00000

#align4
loc_8C1093D8:
#data bank11.loc_8c11e730

loc_8C1093DC:
#data bank12.loc_8c1292D4

loc_8C1093E0:
#data 0x47800000

#align4
loc_8C1093E4:
#data 0x43B40000

#align4
loc_8C1093E8:
#data 0x3F000000

#align4
loc_8C1093EC:
#data 0x0000FFFf

#align4
loc_8C1093F0:
#data bank12.loc_8c129128

loc_8C1093F4:
#data 0xC0000000

#align4
loc_8C1093F8:
#data 0x42480000

#align4
loc_8C1093FC:
#data 0xD3114F22
#data 0xE601E505
#data 0xE400430b
#data 0x8D142008
#data 0x90156403
#data 0xD10EE301
#data 0x0434D20c
#data 0x63121424
#data 0x900E6143
#data 0x62327134
#data 0x920B5323
#data 0x70480436
#data 0xD2080426
#data 0x430BD308
#data 0xE00c

loc_8C109436:
#data 0x4F26
#data 0x0009000b

;==============================================
#data 0x0084012c
#data 0x00000805

#align4
loc_8C109444:
#data bank04.loc_8c044F12

loc_8C109448:
#data loc_8c10929c
#data 0x8C26A904

#align4
loc_8C109450:
#data 0x8c165E94

loc_8C109454:
#data bank12.loc_8c1294C8


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
#data 0x2FE6
#data 0x4F222FD6
#data 0x6E437FF4
#data 0xE41C85Ee
#data 0x6303DD60
#data 0x435A85Ef
#data 0x204F65F3
#data 0x66F3E01c
#data 0x7504F32d
#data 0x041A7608
#data 0xF43C34Dc
#data 0xF248F146
#data 0xF413F121
#data 0x64F3BFD4
#data 0xE31C85Ef
#data 0x75FF6503
#data 0x67030537
#data 0xF0F6E004
#data 0x051AE004
#data 0x35DC0737
#data 0x34DC041a
#data 0xE004F346
#data 0xE008F256
#data 0xF0F8F302
#data 0x761C6643
#data 0xF0F6F32e
#data 0xF266E004
#data 0xF32EE034
#data 0xE004FE37
#data 0xE008F0F6
#data 0xE008F346
#data 0xE008F256
#data 0xF0F8F302
#data 0xF32ED744
#data 0xE008F0F6
#data 0xE038F266
#data 0xFE37F32e
#data 0xF0F6E004
#data 0xF346E00c
#data 0xF256E00c
#data 0xF302E008
#data 0xF32EF0F8
#data 0xE00CF0F6
#data 0xE03CF266
#data 0xFE37F32e
#data 0xF608C736
#data 0x62E3C738
#data 0xC738F508
#data 0xE004F408
#data 0xE010F0F6
#data 0xE010F346
#data 0xE008F256
#data 0xF0F8F302
#data 0xF32E7240
#data 0xE010F0F6
#data 0xE004F266
#data 0xF342F32e
#data 0xF360F353
#data 0x015AF33d
#data 0x22122179
#data 0xE014F0F6
#data 0xF302F346
#data 0xF0F8E014
#data 0xE008F256
#data 0xF0F6F32e
#data 0xF266E014
#data 0xF32EE044
#data 0xF353F342
#data 0xF33DF360
#data 0x2279025a
#data 0xE0040E26
#data 0xE018F0F6
#data 0xE018F346
#data 0xE008F256
#data 0xF0F8F302
#data 0xF0F6F32e
#data 0xF266E018
#data 0xF342F32e
#data 0xE048F353
#data 0xF33DF360
#data 0x2279025a
#data 0x85EE0E26
#data 0x81EE7001
#data 0x620385Ee
#data 0x425A85Ef
#data 0xF32D203f
#data 0x34DC041a
#data 0x6033F248
#data 0xF1460009
#data 0xF135F121
#data 0xE000890b
#data 0xE22281Ee
#data 0x700185Ef
#data 0x85EF81Ef
#data 0x30227001
#data 0xE0018B01
#data 0x81Ef

loc_8C1095FA:
#data 0xB00f
#data 0x7F0C64E3
#data 0x6DF64F26
#data 0x6EF6000b

;==============================================
#align4
loc_8C109608:
#data 0x3F000000

#align4
loc_8C10960C:
#data 0x8c165EA0
#data 0x0000FFFf
#data 0x43B40000
#data 0x47800000

#align4
loc_8C10961C:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0xFFFB2F86
#data 0xFFDBFFEb
#data 0x4F22FFCb
#data 0xD3407FE8
#data 0x907A6D43
#data 0xD13F6432
#data 0x05DE6242
#data 0x542F410b
#data 0xDE42C743
#data 0xC743FC08
#data 0xC743FD08
#data 0xD83AD93b
#data 0xDC3DDA3b
#data 0xA039DB3b
#data 0xFE08

loc_8C109662:
#data 0x64F3
#data 0x740C480b
#data 0x62F3D33e
#data 0x720C61F3
#data 0xE00C430b
#data 0x64F34B0b
#data 0xF4F6E00c
#data 0x8D04FD45
#data 0xC739FF0c
#data 0xF435F308
#data 0x8B21

loc_8C10968A:
#data 0xC738
#data 0xE014F308
#data 0xF325F2F6
#data 0x85DE8B1b
#data 0xFF3DE41e
#data 0xC734204f
#data 0xC734F208
#data 0x041A035a
#data 0x343CF108
#data 0xF32D445a
#data 0xF313F322
#data 0xF33DF3C0
#data 0x4C0B045a
#data 0xF3FC24E9
#data 0xE010F302
#data 0xF2F6F0Ec
#data 0xF23EE010
#data 0xFF27

loc_8C1096CE:
#data 0x64F3
#data 0x740C4A0b

#align4
loc_8C1096D4:
#data 0x0009490b
#data 0x89C22008
#data 0x4F267F18
#data 0xFDF9FCF9
#data 0xFFF9FEF9
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b

;==============================================
#align4
loc_8C1096F8:
#data 0xD31F4F22
#data 0xE601E505
#data 0xE400430b
#data 0x8D112008
#data 0xD10B6403
#data 0xD31BE501
#data 0x04549010
#data 0x62121434
#data 0x6322900b
#data 0x533E920b
#data 0x70480436
#data 0x60530426
#data 0x814F0009

#align4
loc_8C10972C:
#data 0x000B4F26
#data 0x00840009
#data 0x080F012c
#data 0x8C26A904

#align4
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
#data 0x0000FFFf
#data 0x3F000000
#data 0xC3AF0000
#data 0x3CA3D70a

#align4
loc_8C109764:
#data bank12.loc_8c1294C8
#data 0x43AF0000
#data 0xC2C80000
#data 0x47800000
#data 0x43B40000

#align4
loc_8C109778:
#data bank04.loc_8c044F12

loc_8C10977C:
#data loc_8c10947a


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
mov.l @(bank10.loc_8c1098b0,pc),r3
fldi0 fr2
jsr @r3
fmov.s fr2,@(r0,r14)
mov.l @(bank10.loc_8c1098b0,pc),r2
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
mov.l @(bank10.loc_8c1098c0,pc),r2
jsr @r2
mov.l @(0x04,r4),r4
mova @(loc_8C1098D4,pc),r0
mov.l @(loc_8C1098D8,pc),r13
fmov.s @r0,fr13
mova @(loc_8C1098DC,pc),r0
mov.l @(bank10.loc_8c1098d0,pc),r12
mov.l @(bank10.loc_8c1098c8,pc),r10
mov.l @(bank10.loc_8c1098c4,pc),r9
mov.l @(bank10.loc_8c1098cc,pc),r11
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

loc_8C1098A4:
#data 0x0168

loc_8C1098A6:
#data 0x0084

loc_8C1098A8:
#data 0xC5AC
#data 0xB6A7

#align4
loc_8C1098AC:
#data 0x3851B717

#align4
loc_8c1098b0:
#data bank11.loc_8c11e750

loc_8C1098B4:
#data 0x38D1B717

#align4
loc_8C1098B8:
#data 0xB8D1B717

#align4
loc_8C1098BC:
#data 0x8C26A904

#align4
loc_8c1098c0:
#data bank10.loc_8c108060

loc_8c1098c4:
#data bank10.loc_8c108086

loc_8c1098c8:
#data bank10.loc_8c1081b4

loc_8c1098cc:
#data bank10.loc_8c108168

loc_8c1098d0:
#data bank11.loc_8c11e860

loc_8C1098D4:
#data 0x43B40000

#align4
loc_8C1098D8:
#data 0x0000FFFF

#align4
loc_8C1098DC:
#data 0x47800000

#align4
loc_8C1098E0:
#data 0x3F000000

#align4
loc_8C1098E4:
#data 0x40400000


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
#align4
loc_8c109948:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(bank10.loc_8c1099cc,pc),r3
mov 0x05,r5
mov.l r4,@r15
mov 0x01,r6
jsr @r3
mov 0x00,r4
tst r0,r0
bt/s loc_8c10999c
mov r0,r4
mov.l @(bank10.loc_8c1099d0,pc),r2
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
mov.l @(bank10.loc_8c1099dc,pc),r3
mov.l @(0x20,r2),r0
mov.w @(loc_8C1099C2,pc),r2
add r4,r2
mov.l r0,@r2
mov.l @(bank10.loc_8c1099d8,pc),r2
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
loc_8c1099c8:
#data 0x3F000000

#align4
loc_8C1099CC:
#data bank04.loc_8c044F12

loc_8C1099D0:
#data loc_8c109780
loc_8c1099d4:
#data 0x8C26A904

#align4
loc_8C1099D8:
#data 0x8c166258

loc_8C1099DC:
#data bank12.loc_8c1294C8
loc_8c1099e0:
#data 0x0000DD29

#align4
loc_8C1099E4:
#data 0x6E432FE6
#data 0x84E44F22
#data 0x8800600c
#data 0xD1408B3f
#data 0xF2E6E060
#data 0xE160415a
#data 0xD43E31Ec
#data 0xF230F30d
#data 0xE038FE27
#data 0xF218F1E6
#data 0xFE17F120
#data 0x03ECE020
#data 0x633CE004
#data 0x43006233
#data 0x4308332c
#data 0xF236334c
#data 0xF1E6E038
#data 0x8B13F215
#data 0x02ECE020
#data 0x622CE004
#data 0x42006323
#data 0x4208323c
#data 0xF246342c
#data 0xFE27E038
#data 0xF28DE060
#data 0x85EEFE27
#data 0x89012008
#data 0x81EEE000

#align4
loc_8C109A54:
#data 0x430BD329
#data 0x2008E400
#data 0xE0208909
#data 0xD02703Ec
#data 0x4308633c
#data 0xE060F336
#data 0xE001FE37
#data 0x81Ee

loc_8C109A72:
#data 0x4F26
#data 0x6EF6000b

;==============================================
#align4
loc_8c109a78:
mov.l r14,@-r15
mov 0x05,r5
sts.l pr,@-r15
mov.l @(bank10.loc_8c109b04,pc),r3
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
mov.l @(bank10.loc_8c109b08,pc),r2
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
mov.l @(bank10.loc_8c109af8,pc),r3
shll2 r2
add r3,r2
mov.l @(bank10.loc_8c109b10,pc),r3
jsr @r3
mov 0x0C,r0
mov 0x20,r0
mov.b r14,@(r0,r4)

loc_8c109acc:
lds.l @r15+,pr
rts
mov.l @r15+,r14

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

;==============================================
loc_8c109aee:
#data 0x012c
loc_8c109af0:
#data 0x0084
loc_8c109af2:
#data 0x0801
#data 0xC0800000

#align4
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

#align4
loc_8C109B10:
#data bank12.loc_8c1294C8

loc_8C109B14:
#data 0xD3364F22
#data 0xE601E505
#data 0xE400430b
#data 0x8D172008
#data 0x905F6403
#data 0xD133E301
#data 0x0434D231
#data 0x63121424
#data 0x90586143
#data 0x62327134
#data 0x92555325
#data 0x70480436
#data 0xD22D0426
#data 0x430BD32d
#data 0xD12DE00c
#data 0x0416E044

#align4
loc_8C109B54:
#data 0x000B4F26
#data 0x0009

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

#align4
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
bf bank10.loc_8c109c5a

loc_8C109BDA:
mov.b @(0x04,r14),r0
add 0x01,r0
mov.b r0,@(0x04,r14)
mov r12,r0
nop
bra loc_8C109C5a
mov.w r0,@(0x1E,r14)
#data 0x0084012c
#data 0x00000805

#align4
loc_8C109BF0:
#data bank04.loc_8c044F12

loc_8C109BF4:
#data loc_8c109B5a
#data 0x8C26A904

#align4
loc_8C109BFC:
#data 0x8c166264

loc_8C109C00:
#data bank12.loc_8c1294C8
#data 0x0000DD29

#align4
loc_8C109C08:
#data bank04.loc_8c046AE0
loc_8c109c0c:
#data 0x3E800000
loc_8c109c10:
#data 0x41200000
loc_8c109c14:
#data 0x3F000000

#align4
loc_8c109c18:
bsr bank10.loc_8c109c64
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
#align4
loc_8C109C64:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0xFFEBFFFb
#data 0xFFCBFFDb
#data 0x7FF04F22
#data 0x6E43905f
#data 0x05EED331
#data 0x430B2F52
#data 0xC7336453
#data 0xFC08DC30
#data 0xFD08C732
#data 0xFE08C732
#data 0xDB2CC732
#data 0xA022DD2d
#data 0xFF08

loc_8C109C9E:
#data 0x64F3
#data 0x74044C0b
#data 0xF4F6E008
#data 0x8B17FE45
#data 0xF0DC85Ef
#data 0x435A6303
#data 0xF2FCE008
#data 0xF3C2F32d
#data 0xF3F0F34d
#data 0xF4F3F432
#data 0x85EFFF47
#data 0x435A6303
#data 0xF32DE00c
#data 0xF3F6F23e
#data 0xF322E00c
#data 0xFF37F3F3

#align4
loc_8C109CDC:
#data 0x4B0B64F3
#data 0x7404

loc_8C109CE2:
#data 0x4D0b
#data 0x20080009
#data 0x7F1089D9
#data 0xFCF94F26
#data 0xFEF9FDF9
#data 0x6BF6FFF9
#data 0x6DF66CF6
#data 0x6EF6000b

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

loc_8C109D3A:
#data 0x0084
loc_8c109d3c:
#data 0x3E000000
loc_8c109d40:
#data 0x42480000

#align4
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

#align4
loc_8C109D58:
#data 0x40A00000

#align4
loc_8C109D5C:
#data 0xC2480000

#align4
loc_8C109D60:
#data 0x42C80000

#align4
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
mov.l @(bank10.loc_8c109e68,pc),r3
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
mov.l @(bank10.loc_8c109e74,pc),r1
mov.l @r4,r2
mov.l @(r0,r14),r5
jsr @r1
mov.l @(0x18,r2),r4
mova @(loc_8C109E8C,pc),r0
mov.l @(loc_8C109E88,pc),r13
fmov.s @r0,fr12
mova @(loc_8C109E90,pc),r0
fmov.s @r0,fr13
mov.l @(bank10.loc_8c109e7c,pc),r10
mov.l @(bank10.loc_8c109e78,pc),r9
mov.l @(bank10.loc_8c109e84,pc),r12
mov.l @(bank10.loc_8c109e80,pc),r11
bra loc_8c109eee
fldi1 fr14

loc_8C109E5A:
#data 0x0168

loc_8C109E5C:
#data 0x0084
#data 0x0000

#align4
loc_8C109E60:
#data 0xB50637BD

#align4
loc_8C109E64:
#data 0x36A7C5AC

#align4
loc_8c109e68:
#data bank11.loc_8c11e750

loc_8C109E6C:
#data 0x37A7C5AC

#align4
loc_8C109E70:
#data 0x8C26A904

#align4
loc_8c109e74:
#data bank10.loc_8c108060

loc_8c109e78:
#data bank11.loc_8c11e860

loc_8c109e7c:
#data bank10.loc_8c108086

loc_8c109e80:
#data bank10.loc_8c1081b4

loc_8c109e84:
#data bank10.loc_8c108168

loc_8C109E88:
#data 0x0000FFFF

#align4
loc_8C109E8C:
#data 0x43B40000

#align4
loc_8C109E90:
#data 0x3F000000


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

;==============================================
#align4
loc_8C109F10:
#data 0x47800000

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

#align4
loc_8c109fc4:
mov.l r14,@-r15
mov r4,r14
fmov.s fr15,@-r15
sts.l pr,@-r15
mov.w @(0x1C,r14),r0
add 0x01,r0
mov.w r0,@(0x1C,r14)
mov.w @(bank10.loc_8c10a046,pc),r0
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
mov.l @(bank10.loc_8c10a058,pc),r3
mov r0,r2
lds r2,fpul
mova @(loc_8C10A05C,pc),r0
mov.l @(bank10.loc_8c10a06c,pc),r1
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
mov.w @(bank10.loc_8c10a044,pc),r3
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
#data 0x0000

loc_8c10a04c:
#data 0x6270
#data 0x8C16

loc_8c10a050:
#data 0xE680
#data 0x8C13

loc_8c10a054:
#data 0x92D4
#data 0x8C12

#align4
loc_8c10a058:
#data bank13.loc_8c13e66c

loc_8C10A05C:
#data 0x47800000

#align4
loc_8C10A060:
#data 0x43B40000

#align4
loc_8C10A064:
#data 0x3F000000

#align4
loc_8C10A068:
#data 0x0000FFFF

#align4
loc_8c10a06c:
#data bank11.loc_8c11e860

loc_8C10A070:
#data 0x41200000

loc_8c10a074:
#data 0x4F22
#data 0x7FFC
#data 0xD34D
#data 0xE505
#data 0x2F42
#data 0xE601
#data 0x430B
#data 0xE400
#data 0x2008
#data 0x8D42
#data 0x6403
#data 0x908B
#data 0xE301
#data 0xD14A
#data 0xD248
#data 0x0434
#data 0xE068
#data 0x1424
#data 0x6312
#data 0x6143
#data 0x7134
#data 0x6232
#data 0x032E
#data 0x701C
#data 0x927F
#data 0x0436
#data 0x7048
#data 0x0426
#data 0xD243
#data 0xD344
#data 0x430B
#data 0xE00C
#data 0xD643
#data 0xC744
#data 0xF608
#data 0xC744
#data 0xF368
#data 0x6343
#data 0xF508
#data 0xC743
#data 0xF362
#data 0xF408
#data 0xE004
#data 0xD542
#data 0x7340
#data 0xF353
#data 0xF340
#data 0xF33D
#data 0x015A
#data 0x2159
#data 0x2312
#data 0xF366
#data 0xE044
#data 0xF362
#data 0xF353
#data 0xF340
#data 0xF33D
#data 0x035A
#data 0x2359
#data 0x0436
#data 0xE008
#data 0xF366
#data 0xF362
#data 0xF353
#data 0xF340
#data 0xE048
#data 0xF33D
#data 0x035A
#data 0x2359
#data 0x0436
#data 0x61F2
#data 0x9052
#data 0x1415
#data 0x914F
#data 0x63F2
#data 0x313C
#data 0x0416

loc_8c10a10e:
#data 0x7F04
#data 0x4F26
#data 0x000B
#data 0x0009

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
#data 0x080F012c
#data 0x00C80088

loc_8C10A1AC:
#data 0x00D0

loc_8C10A1AE:
#data 0x00D4

#align4
loc_8C10A1B0:
#data bank04.loc_8c044F12

loc_8C10A1B4:
#data loc_8c109F14
#data 0x8C26A904

#align4
loc_8C10A1BC:
#data bank13.loc_8c13e668

loc_8C10A1C0:
#data bank12.loc_8c1294C8

loc_8C10A1C4:
#data bank13.loc_8c13e674
#data 0x47800000
#data 0x43B40000
#data 0x3F000000
#data 0x0000FFFf

#align4
loc_8C10A1D8:
#data 0x8c16627c

loc_8C10A1DC:
#data bank13.loc_8c13e680


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
mov.l @(bank10.loc_8c10a338,pc),r3
mov r0,r2
lds r2,fpul
mova @(loc_8C10A33C,pc),r0
mov.l @(bank10.loc_8c10a34c,pc),r1
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
#data 0x4F22
#data 0x7FFC
#data 0xD333
#data 0xE505
#data 0x2F42
#data 0xE601
#data 0x430B
#data 0xE400
#data 0x2008
#data 0x8D42
#data 0x6403
#data 0x9047
#data 0xE301
#data 0xD12F
#data 0xD22E
#data 0x0434
#data 0xE064
#data 0x1424
#data 0x6312
#data 0x6143
#data 0x7134
#data 0x6232
#data 0x032E
#data 0x7020
#data 0x923B
#data 0x0436
#data 0x7048
#data 0x0426
#data 0xD21F
#data 0xD328
#data 0x430B
#data 0xE00C
#data 0xD628
#data 0xC71D
#data 0xF608
#data 0xC71D
#data 0xF368
#data 0x6343
#data 0xF508
#data 0xC71C
#data 0xF362
#data 0xF408
#data 0xE004
#data 0xD51B
#data 0x7340
#data 0xF353
#data 0xF340
#data 0xF33D
#data 0x015A
#data 0x2159
#data 0x2312
#data 0xF366
#data 0xE044
#data 0xF362
#data 0xF353
#data 0xF340
#data 0xF33D
#data 0x035A
#data 0x2359
#data 0x0436
#data 0xE008
#data 0xF366
#data 0xF362
#data 0xF353
#data 0xF340
#data 0xE048
#data 0xF33D
#data 0x035A
#data 0x2359
#data 0x0436
#data 0x61F2
#data 0x900E
#data 0x1415
#data 0x910B
#data 0x63F2
#data 0x313C
#data 0x0416

loc_8c10a31c:
#data 0x7F04
#data 0x4F26
#data 0x000B
#data 0x0009

;==============================================
loc_8C10A324:
#data 0x00D4

loc_8C10A326:
#data 0x0168

loc_8C10A328:
#data 0x00D0
#data 0x012C
#data 0x080F
#data 0x0088
#data 0x00C8
#data 0x0000

loc_8c10a334:
#data 0x92D4
#data 0x8C12

#align4
loc_8c10a338:
#data bank13.loc_8c13e650

loc_8C10A33C:
#data 0x47800000

#align4
loc_8C10A340:
#data 0x43B40000

#align4
loc_8C10A344:
#data 0x3F000000

#align4
loc_8C10A348:
#data 0x0000FFFF

#align4
loc_8c10a34c:
#data bank11.loc_8c11e860

loc_8C10A350:
#data 0x41200000

loc_8c10a354:
#data 0x4F12
#data 0x8C04

loc_8c10a358:
#data 0xA116
#data 0x8C10
#data 0xA904
#data 0x8C26

loc_8c10a360:
#data 0x94C8
#data 0x8C12

loc_8c10a364:
#data 0xE65C
#data 0x8C13

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

#align4
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
#align4
loc_8c10a3d8:
mov.w @(bank10.loc_8c10a440,pc),r0
mov.l @(r0,r14),r3
tst r3,r3
bt loc_8c10a434
mov r14,r2
mov r14,r1
mov.l @(bank10.loc_8c10a444,pc),r3
add 0x34,r2
mov.l r4,@(r0,r14)
add 0x5C,r1
jsr @r3
mov 0x0C,r0
mov.l @(bank10.loc_8c10a448,pc),r2
jsr @r2
mov 0x00,r4
mov 0x0C,r0
fldi0 fr4
fmov.s fr4,@(r0,r15)
mov 0x10,r0
fmov.s fr4,@(r0,r15)
mov 0x14,r0
mov.w @(bank10.loc_8c10a442,pc),r4
mov.l @(bank10.loc_8c10a44c,pc),r3
fmov.s fr4,@(r0,r15)
jsr @r3
add r14,r4
mov.l @(bank10.loc_8c10a450,pc),r2
mov r15,r4
mov r15,r5
jsr @r2
add 0x0C,r4
mov.l @(bank10.loc_8c10a444,pc),r3
mov r14,r1
mov r15,r2
add 0x34,r1
jsr @r3
mov 0x0C,r0
mov.l @(bank10.loc_8c10a454,pc),r2
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

;==============================================
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

loc_8c10a458:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(bank10.loc_8c10a578,pc),r3
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
mov.l @(bank10.loc_8c10a57c,pc),r2
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
mov.l @(bank10.loc_8c10a584,pc),r2
mov.l @(bank10.loc_8c10a588,pc),r3
jsr @r3
mov 0x0C,r0
mov.l @r15,r1
mov.l @(bank10.loc_8c10a58c,pc),r5
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
mov.w @(bank10.loc_8c10a576,pc),r0
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

#align4
loc_8C10A584:
#data bank13.loc_8c13e314

loc_8C10A588:
#data bank12.loc_8c1294C8

loc_8C10A58C:
#data bank13.loc_8c13e4Bc

loc_8C10A590:
#data 0x8c166288

loc_8C10A594:
#data bank13.loc_8c13e34c

loc_8C10A598:
#data bank13.loc_8c13e344

loc_8C10A59C:
#data 0x47800000

#align4
loc_8C10A5A0:
#data 0x43B40000

#align4
loc_8C10A5A4:
#data 0x3F000000

#align4
loc_8C10A5A8:
#data 0x0000FFFf


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

#align4
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

#align4
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

;==============================================
loc_8C10A782:
#data 0x00D0

#align4
loc_8C10A784:
#data 0x47800000

#align4
loc_8C10A788:
#data 0x43B40000

#align4
loc_8C10A78C:
#data 0x3F000000

#align4
loc_8C10A790:
#data 0x0000FFFF

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

#align4
loc_8C10A8CC:
#data bank13.loc_8c13e320

loc_8C10A8D0:
#data bank12.loc_8c1294C8

loc_8C10A8D4:
#data bank13.loc_8c13e338

loc_8C10A8D8:
#data 0x47800000

#align4
loc_8C10A8DC:
#data 0x43B40000

#align4
loc_8C10A8E0:
#data 0x3F000000

#align4
loc_8C10A8E4:
#data 0x0000FFFf

#align4
loc_8C10A8E8:
#data 0x8c166294

loc_8C10A8EC:
#data bank13.loc_8c13e5B0

loc_8C10A8F0:
#data bank13.loc_8c13e5A4


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
mov.w @(bank10.loc_8c10aa46,pc),r3
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
#data 0x0000

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

#align4
loc_8C10AA6C:
#data bank04.loc_8c044F12

loc_8C10AA70:
#data loc_8c10A842

loc_8C10AA74:
#data 0x8C26A904

#align4
loc_8C10AA78:
#data bank13.loc_8c13e58c

loc_8C10AA7C:
#data bank12.loc_8c1294C8

loc_8C10AA80:
#data loc_8c10B804

loc_8C10AA84:
#data 0x8c1662A0


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
mov.w @(bank10.loc_8c10ab86,pc),r3
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

;==============================================
loc_8c10ab86:
#data 0x00D0

loc_8c10ab88:
#data 0x00D4
#data 0x0000

loc_8c10ab8c:
#data 0xE5B0
#data 0x8C13

loc_8c10ab90:
#data 0xE5A4
#data 0x8C13

loc_8c10ab94:
#data 0x92D4
#data 0x8C12

#align4
loc_8C10AB98:
#data 0x47800000

#align4
loc_8C10AB9C:
#data 0x43B40000

#align4
loc_8C10ABA0:
#data 0x3F000000

#align4
loc_8C10ABA4:
#data 0x0000FFFF

loc_8c10aba8:
#data 0x4F22
#data 0x7FFC
#data 0xD34F
#data 0xE505
#data 0x2F42
#data 0xE601
#data 0x430B
#data 0xE400
#data 0x2008
#data 0x8D1B
#data 0x6403
#data 0x908E
#data 0xE301
#data 0xD14C
#data 0xD24A
#data 0x0434
#data 0x1424
#data 0x6312
#data 0x6143
#data 0x9087
#data 0x7134
#data 0x6232
#data 0x5322
#data 0x9284
#data 0x0436
#data 0x7048
#data 0x0426
#data 0xD246
#data 0xD346
#data 0x430B
#data 0xE00C
#data 0x61F2
#data 0x907D
#data 0x1415
#data 0x917A
#data 0x63F2
#data 0x313C
#data 0x0416

loc_8c10abf4:
#data 0x7F04
#data 0x4F26
#data 0x000B
#data 0x0009

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
#data 0x012c
#data 0x08030084
#data 0x00C80088

loc_8C10ACE8:
#data 0x00D0
#data 0x0000

#align4
loc_8C10ACEC:
#data bank04.loc_8c044F12

loc_8C10ACF0:
#data loc_8c10AA32
#data 0x8C26A904

#align4
loc_8C10ACF8:
#data bank13.loc_8c13e574

loc_8C10ACFC:
#data bank12.loc_8c1294C8

loc_8C10AD00:
#data 0x8c1662Ac

loc_8C10AD04:
#data bank13.loc_8c13e4D4

loc_8C10AD08:
#data bank13.loc_8c13e4C8

loc_8C10AD0C:
#data 0x47800000

#align4
loc_8C10AD10:
#data 0x43B40000

#align4
loc_8C10AD14:
#data 0x3F000000

#align4
loc_8C10AD18:
#data 0x0000FFFf


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

#align4
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

;==============================================
loc_8c10add0:
mov 0x00,r0
rts
nop

;==============================================
loc_8C10ADD6:
#data 0x00D0

loc_8c10add8:
#data 0x92D4
#data 0x8C12

#align4
loc_8C10ADDC:
#data 0x47800000

#align4
loc_8C10ADE0:
#data 0x43B40000

#align4
loc_8C10ADE4:
#data 0x3F000000

#align4
loc_8C10ADE8:
#data 0x0000FFFF

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
#data 0x0000

#align4
loc_8C10AF08:
#data bank04.loc_8c044F12

loc_8C10AF0C:
#data loc_8c10ABFc

loc_8C10AF10:
#data 0x8C26A904

#align4
loc_8C10AF14:
#data bank13.loc_8c13e4B0

loc_8C10AF18:
#data bank12.loc_8c1294C8

loc_8C10AF1C:
#data 0x47800000

#align4
loc_8C10AF20:
#data bank13.loc_8c13e4C0

loc_8C10AF24:
#data 0x43B40000

#align4
loc_8C10AF28:
#data 0x3F000000

#align4
loc_8C10AF2C:
#data 0x0000FFFf

#align4
loc_8C10AF30:
#data 0x8c1662B8

loc_8C10AF34:
#data bank13.loc_8c13e410

loc_8C10AF38:
#data bank13.loc_8c13e404


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

#align4
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
mov.w @(bank10.loc_8c10b052,pc),r3
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

;==============================================
loc_8c10b04c:
mov 0x00,r0
rts
nop

;==============================================
loc_8c10b052:
#data 0x00D0

loc_8c10b054:
#data 0x92D4
#data 0x8C12

#align4
loc_8C10B058:
#data 0x47800000

#align4
loc_8C10B05C:
#data 0x43B40000

#align4
loc_8C10B060:
#data 0x3F000000

#align4
loc_8C10B064:
#data 0x0000FFFF

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
#data 0x0000

#align4
loc_8C10B0E8:
#data bank04.loc_8c044F12

loc_8C10B0EC:
#data loc_8c10AE7c

loc_8C10B0F0:
#data 0x8C26A904

#align4
loc_8C10B0F4:
#data bank13.loc_8c13e3Ec

loc_8C10B0F8:
#data bank12.loc_8c1294C8

loc_8C10B0FC:
#data 0x47800000

#align4
loc_8C10B100:
#data bank13.loc_8c13e3Fc

loc_8C10B104:
#data 0x43B40000

#align4
loc_8C10B108:
#data 0x3F000000

#align4
loc_8C10B10C:
#data 0x0000FFFf


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

;==============================================
loc_8C10B21E:
#data 0x00D0

#align4
loc_8C10B220:
#data 0x8c1662C4

loc_8C10B224:
#data bank13.loc_8c13e80c

loc_8C10B228:
#data bank13.loc_8c13e858

loc_8C10B22C:
#data bank13.loc_8c13e814

loc_8C10B230:
#data 0x47800000

#align4
loc_8C10B234:
#data 0x43B40000

#align4
loc_8C10B238:
#data 0x3F000000

#align4
loc_8C10B23C:
#data 0x0000FFFf

#align4
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
#data 0x935B
#data 0x4F22
#data 0x854F
#data 0x7001
#data 0x814F
#data 0x70FF
#data 0x600F
#data 0x3033
#data 0x8B15
#data 0xE500
#data 0x6053
#data 0x0009
#data 0x814F
#data 0xE104
#data 0x8046
#data 0x314C
#data 0x8444
#data 0xD22B
#data 0x7001
#data 0x8044
#data 0xE003
#data 0x6110
#data 0x420B
#data 0x611C
#data 0x8044
#data 0x8447
#data 0x7001
#data 0x8047
#data 0x8447
#data 0xC901
#data 0x8047

loc_8c10b310:
#data 0x4F26
#data 0x000B
#data 0x0009

;==============================================
loc_8c10b316:
#data 0x4F22
#data 0x7FFC
#data 0xD323
#data 0xE505
#data 0x2F42
#data 0xE601
#data 0x430B
#data 0xE400
#data 0x2008
#data 0x8D21
#data 0x6403
#data 0x902E
#data 0xE301
#data 0xD11F
#data 0xD21E
#data 0x0434
#data 0xE05C
#data 0x1424
#data 0x6312
#data 0x6143
#data 0x7134
#data 0x6232
#data 0x032E
#data 0x7028
#data 0x9222
#data 0x0436
#data 0x7048
#data 0x0426
#data 0xD31A
#data 0xD218
#data 0x430B
#data 0xE00C
#data 0x931B
#data 0xE500
#data 0x61F2
#data 0x9019
#data 0x331C
#data 0x0436
#data 0x6053
#data 0x0009
#data 0x8044
#data 0x8045
#data 0x8046
#data 0x8047

loc_8c10b36e:
#data 0x7F04
#data 0x4F26
#data 0x000B
#data 0x0009

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
loc_8c10b38a:
#data 0x00D0
#data 0x0809012c
#data 0x00C80088
loc_8c10b394:
#data 0x47800000
loc_8c10b398:
#data 0x43B40000
loc_8c10b39c:
#data 0x3F000000
loc_8c10b3a0:
#data 0x0000FFFf

#align4
loc_8C10B3A4:
#data bank12.loc_8c1292D4

loc_8C10B3A8:
#data bank04.loc_8c044F12

loc_8C10B3AC:
#data loc_8c10B110
#data 0x8C26A904

#align4
loc_8C10B3B4:
#data bank13.loc_8c13e738

loc_8C10B3B8:
#data bank12.loc_8c1294C8

loc_8C10B3BC:
#data 0x8c1662D4


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
#align4
loc_8c10b4bc:
mova @(bank10.loc_8c10b50c,pc),r0
mov.l r14,@-r15
mov r4,r14
mov.l @(bank10.loc_8c10b518,pc),r2
sts.l pr,@-r15
fmov.s @r0,fr3
mov 0x6C,r0
fmov.s @(r0,r14),fr2
mova @(bank10.loc_8c10b510,pc),r0
fmov.s @r0,fr1
mova @(bank10.loc_8c10b514,pc),r0
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

loc_8c10b500:
#data 0xE7AC
#data 0x8C13

loc_8c10b504:
#data 0xE7F4
#data 0x8C13

loc_8c10b508:
#data 0xE7B8
#data 0x8C13

#align4
loc_8c10b50c:
#data 0x47800000

#align4
loc_8c10b510:
#data 0x43B40000

#align4
loc_8c10b514:
#data 0x3F000000

#align4
loc_8c10b518:
#data 0x0000FFFF


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
loc_8c10b654:
#data 0x47800000
loc_8c10b658:
#data 0x43B40000
loc_8c10b65c:
#data 0x3F000000
loc_8c10b660:
#data 0x0000FFFf

#align4
loc_8C10B664:
#data bank04.loc_8c044F12

loc_8C10B668:
#data loc_8c10B376

loc_8C10B66C:
#data 0x8C26A904

#align4
loc_8C10B670:
#data bank13.loc_8c13e720

loc_8C10B674:
#data bank12.loc_8c1294C8

loc_8C10B678:
#data 0x8c1662E4

loc_8C10B67C:
#data bank13.loc_8c13e750

loc_8C10B680:
#data bank13.loc_8c13e794

loc_8C10B684:
#data bank13.loc_8c13e758


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
#align4
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
mov.w @(bank10.loc_8c10b7da,pc),r3
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

;==============================================
loc_8c10b736:
mov 0x00,r0
rts
nop

;==============================================
loc_8c10b73c:
#data 0x934E
#data 0x4F22
#data 0x854E
#data 0x7001
#data 0x814E
#data 0x70FF
#data 0x600F
#data 0x3033
#data 0x8B1D
#data 0xE500
#data 0x6053
#data 0x0009
#data 0x814E
#data 0xE104
#data 0x8046
#data 0x314C
#data 0x8444
#data 0xD221
#data 0x7001
#data 0x8044
#data 0xE003
#data 0x6110
#data 0x420B
#data 0x611C
#data 0x8044
#data 0x8447
#data 0x7001
#data 0x8047
#data 0x8447
#data 0xC901
#data 0x8047
#data 0x9030
#data 0x5246
#data 0x012E
#data 0x2118
#data 0x8902
#data 0x6053
#data 0x0009
#data 0x8047

loc_8c10b78a:
#data 0x4F26
#data 0x000B
#data 0x0009

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

loc_8C10B7DA:
#data 0x00D0

loc_8C10B7DC:
#data 0x012c
#data 0x00D8

loc_8C10B7E0:
#data 0x0801
#data 0x0000

#align4
loc_8C10B7E4:
#data bank12.loc_8c1292D4

loc_8C10B7E8:
#data bank04.loc_8c044F12

loc_8C10B7EC:
#data loc_8c10B5C4

loc_8C10B7F0:
#data 0x8C26A904

#align4
loc_8C10B7F4:
#data bank13.loc_8c13e744

loc_8C10B7F8:
#data bank12.loc_8c1294C8


loc_8C10B7FC:
add 0x04,r15
lds.l @r15+,pr
rts
nop

;==============================================
loc_8C10B804:
bra loc_8C10B790
nop

#align4
loc_8C10B808:
#data 0x6E432FE6
#data 0x4F22D14f
#data 0x600C84E4
#data 0x031E4008
#data 0x0009430b
#data 0x92919091
#data 0x730103Ee
#data 0x0E363327
#data 0x908C8B12
#data 0x01EED348
#data 0x0E167101
#data 0x9186E00c
#data 0x430B31Ec
#data 0x93826112
#data 0x33ECE400
#data 0x907C2302
#data 0x60430E46
#data 0x80E40009

#align4
loc_8C10B850:
#data 0x000B4F26
#data 0x6EF6

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
mov.w @(bank10.loc_8c10b94a,pc),r0
mov 0x01,r3
mov.l r14,@-r15
mov r4,r14
mov.l @(bank10.loc_8c10b95c,pc),r1
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
#data 0x00D8
#data 0x0514

loc_8C10B946:
#data 0x00D0

loc_8C10B948:
#data 0x00D4

loc_8C10B94A:
#data 0x012c

#align4
loc_8C10B94C:
#data 0x8c1662F4

loc_8C10B950:
#data bank12.loc_8c1292D4

loc_8C10B954:
#data bank13.loc_8c13e8E8

loc_8C10B958:
#data bank03.loc_8c03319e

loc_8C10B95C:
#data 0x8c166304

loc_8C10B960:
#data 0x8c166310

loc_8C10B964:
#data 0x3F4CCCCd


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

;==============================================
#align4
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
#data 0x0000

#align4
loc_8C10BAA0:
#data 0x8C26A904
loc_8c10baa4:
#data 0xCCCD
#data 0x3C4C

loc_8c10baa8:
#data 0x6318
#data 0x8C16

#align4
loc_8C10BAAC:
#data 0x3BCCCCCD

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

#align4
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

;==============================================
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

;==============================================
loc_8c10bbc4:
#data 0x00000084

#align4
loc_8C10BBC8:
#data 0x8c166320
loc_8c10bbcc:
#data 0x8C26A904
loc_8c10bbd0:
#data 0x3D800000


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

;==============================================
#align4
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
#align4
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
mov.l @(bank10.loc_8c10bd04,pc),r8
mov.l @(loc_8C10BD10,pc),r14
mov.w @(loc_8C10BD00,pc),r11
fmov.s @r0,fr14
mov.l @(bank10.loc_8c10bd08,pc),r9
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
mov.l @(bank10.loc_8c10bd1c,pc),r3
shll r6
mov.w @(loc_8C10BD02,pc),r0
mov.b r12,@(r0,r4)
mov 0x6C,r0
mov.l r3,@(0x10,r4)
mov.l @r1,r2
mov r4,r1
add 0x34,r1
mov.l @r2,r3
mov.l @(bank10.loc_8c10bd24,pc),r2
mov.l @(r0,r3),r3
add 0x18,r0
mov.l r3,@(r0,r4)
add 0x48,r0
mov r13,r3
add r3,r6
mov.l r11,@(r0,r4)
mov 0x23,r0
mov.l @(bank10.loc_8c10bd28,pc),r3
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

#align4
loc_8C10BD1C:
#data loc_8c10B808
loc_8c10bd20:
#data 0x8C26A904

#align4
loc_8C10BD24:
#data bank13.loc_8c13e870

loc_8C10BD28:
#data bank12.loc_8c1294C8

loc_8C10BD2C:
#data 0xD53A9070
#data 0xE034F356
#data 0xF325F246
#data 0x906A8905
#data 0x2228024d
#data 0xA00A8B0d
#data 0x0009

loc_8C10BD46:
#data 0x9065
#data 0xE034F356
#data 0xF235F246
#data 0x905E8905
#data 0x2228024d
#data 0x8901

loc_8C10BD5A:
#data 0x000b
#data 0xE001

;==============================================
loc_8C10BD5E:
#data 0xE000
#data 0x0009000b

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

#align4
loc_8C10BD78:
#data 0xD5298445
#data 0xD22C600c
#data 0xF3564008
#data 0xF437E060
#data 0xF308C726
#data 0xF246E060
#data 0xF108C725
#data 0xF232C725
#data 0xE044F008
#data 0xF200F213
#data 0x035AF23d
#data 0x04362329
#data 0x70018445
#data 0x84458045
#data 0x8045C901
#data 0x600C8445
#data 0xF3564008
#data 0xE309E06c
#data 0xE060F437
#data 0xE06CF346
#data 0xC71AF246
#data 0xF308F231
#data 0xF233E054
#data 0x854FF427
#data 0x814F7001
#data 0x3037854f
#data 0xE0008B13
#data 0x814FD514
#data 0xD1148446
#data 0x80467001
#data 0xC9038446
#data 0x84468046
#data 0x4008600c
#data 0x6012025e
#data 0x60024208
#data 0x9006022e
#data 0x0426

loc_8C10BE0A:
#data 0xE001
#data 0x8044A018
#data 0x0130009c
#data 0x00840098
#data 0x8C26A518

#align4
loc_8C10BE1C:
#data 0x8c166330

loc_8C10BE20:
#data bank13.loc_8c13e988
#data 0x47800000
#data 0x43B40000
#data 0x3F000000
#data 0x0000FFFf
#data 0x43480000

#align4
loc_8C10BE38:
#data bank13.loc_8c13e990
#data 0x8C26A904

#align4
loc_8C10BE40:
#data 0xD534854e
#data 0x814E7001
#data 0xF608C733
#data 0xF508C733
#data 0xF408C733
#data 0xF346E060
#data 0xF362E044
#data 0xF340F353
#data 0x035AF33d
#data 0x04362359
#data 0x6303854e
#data 0xE054435a
#data 0xF32DF246
#data 0xF262F232
#data 0xF240F253
#data 0x035AF23d
#data 0x024EE044
#data 0x323C2359
#data 0x0426933f
#data 0x3037854e
#data 0xE5008B04
#data 0x00096053
#data 0x8044814e

#align4
loc_8C10BE9C:
#data 0x0009000b

;==============================================
#align4
loc_8C10BEA0:
#data 0x7FFC4F22
#data 0xE505D31f
#data 0xE6012F42
#data 0xE400430b
#data 0x8D1C2008
#data 0x90296403
#data 0xD11CE301
#data 0x0434D21a
#data 0x63121424
#data 0x90226143
#data 0x62327134
#data 0x70F4032e
#data 0x0436921e
#data 0x04267048
#data 0xD316D215
#data 0xE00C430b
#data 0x61F29317
#data 0x331C9011
#data 0x61F20436
#data 0x1416

loc_8C10BEEE:
#data 0x7F04
#data 0x000B4F26
#data 0x0009

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
#data 0x00C8
#data 0x0090012c
#data 0x00880805
#data 0x0000FFFf
#data 0x47800000
#data 0x43B40000
#data 0x3F000000

#align4
loc_8C10BF24:
#data bank04.loc_8c044F12

loc_8C10BF28:
#data loc_8c10BD64
#data 0x8C26A904

#align4
loc_8C10BF30:
#data bank13.loc_8c13e97c

loc_8C10BF34:
#data bank12.loc_8c1294C8

loc_8C10BF38:
#data 0x8c166338

loc_8C10BF3C:
#data 0xD5448445
#data 0xD247600c
#data 0xF3564008
#data 0xF437E060
#data 0xF308C741
#data 0xF246E060
#data 0xF108C740
#data 0xF232C740
#data 0xE044F008
#data 0xF200F213
#data 0x035AF23d
#data 0x04362329
#data 0x70018445
#data 0x84458045
#data 0x8045C901
#data 0x600C8445
#data 0xF3564008
#data 0xE309E06c
#data 0xE060F437
#data 0xE06CF346
#data 0xC735F246
#data 0xF308F231
#data 0xF233E054
#data 0x854FF427
#data 0x814F7001
#data 0x3037854f
#data 0xE0008B13
#data 0x814FD52f
#data 0xD12F8446
#data 0x80467001
#data 0xC9038446
#data 0x84468046
#data 0x4008600c
#data 0x6012025e
#data 0x60024208
#data 0x903F022e
#data 0x0426

loc_8C10BFCE:
#data 0xE001
#data 0x8044A000

#align4
loc_8C10BFD4:
#data 0x6E432FE6
#data 0x50E64F22
#data 0x600C8404
#data 0x8B028802
#data 0x420BD222
#data 0x64E3

loc_8C10BFEA:
#data 0x85Ee
#data 0x7001D41c
#data 0xC71881Ee
#data 0xC718F608
#data 0xC718F508
#data 0xE060F408
#data 0xE044F3E6
#data 0xF353F362
#data 0xF33DF340
#data 0x2349035a
#data 0x85EE0E36
#data 0x435A6303
#data 0xF2E6E054
#data 0xF232F32d
#data 0xF253F262
#data 0xF23DF240
#data 0xE044035a
#data 0x234902Ee
#data 0x930C323c
#data 0x85EE0E26
#data 0x8B043037
#data 0x6043E400
#data 0x81EE0009
#data 0x80E4

loc_8C10C046:
#data 0x4F26
#data 0x6EF6000b

;==============================================
#data 0x00C80084

#align4
loc_8C10C050:
#data bank13.loc_8c13e988
#data 0x47800000
#data 0x43B40000
#data 0x3F000000
#data 0x0000FFFf
#data 0x43480000

#align4
loc_8C10C068:
#data bank13.loc_8c13e990
#data 0x8C26A904

#align4
loc_8C10C070:
#data bank04.loc_8c0450C0

loc_8C10C074:
#data 0x7FFC4F22
#data 0xE505D34a
#data 0xE6012F42
#data 0xE400430b
#data 0x8D1C2008
#data 0x90846403
#data 0xD147E301
#data 0x0434D245
#data 0x63121424
#data 0x907D6143
#data 0x62327134
#data 0x70F4032e
#data 0x04369279
#data 0x04267048
#data 0xD341D240
#data 0xE00C430b
#data 0x61F29372
#data 0x331C9071
#data 0x61F20436
#data 0x1416

loc_8C10C0C2:
#data 0x7F04
#data 0x000B4F26
#data 0x0009

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
#data 0x012c
#data 0x08050090
#data 0x00C80088

loc_8C10C1A0:
#data 0x0130
#data 0x0000

#align4
loc_8C10C1A4:
#data bank04.loc_8c044F12

loc_8C10C1A8:
#data loc_8c10BEF6
#data 0x8C26A904

#align4
loc_8C10C1B0:
#data bank13.loc_8c13e97c

loc_8C10C1B4:
#data bank12.loc_8c1294C8

loc_8C10C1B8:
#data 0x8c166340

loc_8C10C1BC:
#data 0x8c166350

loc_8C10C1C0:
#data bank12.loc_8c1292D4

loc_8C10C1C4:
#data 0x8c166358

loc_8C10C1C8:
#data 0x8c166374

loc_8C10C1CC:
#data bank03.loc_8c03319e

loc_8C10C1D0:
#data 0x00008000

#align4
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
bsr bank10.loc_8c10ca14
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
bsr bank10.loc_8c10c958
mov r14,r4
extu.b r0,r0
tst r0,r0
bf loc_8c10c254
bsr bank10.loc_8c10c81e
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
#align4
loc_8C10C27C:
#data 0x6E432FE6
#data 0xFFFB2F86
#data 0xB3C54F22
#data 0x600CFF8d
#data 0x8B042008
#data 0x64E3B2C5
#data 0x2008600c
#data 0x8908

loc_8C10C29A:
#data 0xE05c
#data 0xE060FEF7
#data 0xE068FEF7
#data 0xE06CFEF7
#data 0xFEF7A044

#align4
loc_8C10C2AC:
#data 0xE85C901b
#data 0x233803Ed
#data 0x38EC8D04
#data 0x31ECE168
#data 0xF318A004

#align4
loc_8C10C2C0:
#data 0x32ECE268
#data 0xF34DF328

#align4
loc_8C10C2C8:
#data 0xF230F288
#data 0xE834F82a
#data 0x233803Ed
#data 0x38EC8D0c
#data 0x31ECE15c
#data 0xA00AF318
#data 0xF34d
loc_8c10c2e2:
#data 0x05B0
loc_8c10c2e4:
#data 0x0130FA50

#align4
loc_8C10C2E8:
#data 0x8c16637c

loc_8C10C2EC:
#data 0xBE4CCCCd

#align4
loc_8C10C2F0:
#data 0x32ECE25c
#data 0xF328

loc_8C10C2F6:
#data 0xF288
#data 0xF230E05c
#data 0xF82AF38d
#data 0xF235F2E6
#data 0xB3278B09
#data 0x600C64E3
#data 0x8B112008
#data 0x64E3BD0c
#data 0x2008600c
#data 0x890c

loc_8C10C31A:
#data 0xE05c
#data 0xE060FEF7
#data 0xE068FEF7
#data 0xE06CFEF7
#data 0xFEF7E400
#data 0x00096043
#data 0x80E580E7

#align4
loc_8C10C334:
#data 0xFFF94F26
#data 0x000B68F6
#data 0x6EF6

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

loc_8C10C3FA:
#data 0x0096

loc_8C10C3FC:
#data 0x0130
#data 0x0000

#align4
loc_8C10C400:
#data 0x8c166384

loc_8C10C404:
#data bank03.loc_8c03319e

loc_8C10C408:
#data bank12.loc_8c1292D4

loc_8C10C40C:
#data 0x40400000

#align4
loc_8C10C410:
#data 0x00008000

#align4
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
bsr bank10.loc_8c10bd2c
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
#align4
loc_8C10C4B4:
#data 0x2F862FE6
#data 0xB2AB4F22
#data 0x600C6E43
#data 0x8B092008
#data 0x64E3B248
#data 0x2008600c
#data 0xB1A68B71
#data 0x600C64E3
#data 0x89092008

#align4
loc_8C10C4D8:
#data 0xF48DE05c
#data 0xE060FE47
#data 0xE068FE47
#data 0xE06CFE47
#data 0xFE47A063

#align4
loc_8C10C4EC:
#data 0xE83485Ef
#data 0x81EF7001
#data 0x03ED9016
#data 0x8D052338
#data 0xE15C38Ec
#data 0xF31831Ec
#data 0xF34DA003

#align4
loc_8C10C508:
#data 0x32ECE25c
#data 0xF328

loc_8C10C50E:
#data 0xF288
#data 0xF82AF230
#data 0x222802Ed
#data 0xE0448D0e
#data 0xE300A00d
loc_8c10c520:
#data 0x0889
loc_8c10c522:
#data 0xF777
#data 0x00000130

#align4
loc_8C10C528:
#data 0x8c16638c

loc_8C10C52C:
#data bank03.loc_8c03319e

loc_8C10C530:
#data bank12.loc_8c1292D4

loc_8C10C534:
#data 0x40C00000

loc_8C10C538:
#data 0xD341

loc_8C10C53A:
#data 0x0E36
#data 0x401185Ef
#data 0xA0058B01
#data 0xC903

loc_8C10C546:
#data 0x6007
#data 0xC9037001
#data 0x70016007

#align4
loc_8C10C550:
#data 0x600F81Ef
#data 0x8B042008
#data 0x02ECE020
#data 0x223AE301
#data 0x0E24

loc_8C10C562:
#data 0xE020
#data 0x200800Ec
#data 0x91618902
#data 0x0009A001

loc_8C10C570:
#data 0x915f

loc_8C10C572:
#data 0xE044
#data 0x321C02Ee
#data 0xE0200E26
#data 0x211801Ec
#data 0xE0488D03
#data 0xA0019356
#data 0x0009

loc_8C10C58A:
#data 0x9354

#align4
loc_8C10C58C:
#data 0x85EE0E36
#data 0x81EE70Ff
#data 0x2008600f
#data 0xBBC78904
#data 0x600C64E3
#data 0x89062008

#align4
loc_8C10C5A4:
#data 0xE400E048
#data 0x60430E46
#data 0x80E70009
#data 0x80E5

loc_8C10C5B2:
#data 0x4F26
#data 0x000B68F6
#data 0x6EF6

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
#data 0xF3330CCd
#data 0xF5550AAb

loc_8C10C638:
#data 0x0130

loc_8C10C63A:
#data 0x0889

loc_8C10C63C:
#data 0xF777
#data 0x0000

#align4
loc_8C10C640:
#data 0x00008000

#align4
loc_8C10C644:
#data 0x8c166394

loc_8C10C648:
#data bank03.loc_8c03319e


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
mov.w @(bank10.loc_8c10c754,pc),r0
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

loc_8c10c760:
#data 0x639C
#data 0x8C16

loc_8c10c764:
#data 0x8000
#data 0x0000


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
#align4
loc_8C10C7CC:
#data 0xD537E023
#data 0x034CE16c
#data 0x314CE060
#data 0xF318F246
#data 0x6233633c
#data 0xF2304300
#data 0x4308332c
#data 0xF427353c
#data 0xF32CE038
#data 0xE004F437
#data 0xE038F356
#data 0xF235F246
#data 0xE060890d
#data 0xF447F48d
#data 0xF447E06c
#data 0xF356E004
#data 0xE500E038
#data 0x6053F437
#data 0x80470009
#data 0x8045

loc_8C10C81A:
#data 0x000b
#data 0x0009

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

;==============================================
loc_8c10c85c:
mov 0x00,r0
rts
nop

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
loc_8c10c89c:
#data 0xFE94

loc_8C10C89E:
#data 0xFBBc

loc_8C10C8A0:
#data 0x0444
#data 0x0000

#align4
loc_8C10C8A4:
#data 0x8c1663Ac

loc_8C10C8A8:
#data 0x41F00000

#align4
loc_8C10C8AC:
#data bank13.loc_8c13e958
loc_8c10c8b0:
#data 0x8C289608
loc_8c10c8b4:
#data 0x42480000

#align4
loc_8C10C8B8:
#data 0x8c1663B4

loc_8C10C8BC:
#data bank03.loc_8c03319e


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

#align4
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

;==============================================
loc_8C10CA36:
mov 0x00,r0 ; r0 set to 0x00
rts
nop

;==============================================
#align4
loc_8C10CA3C:
#data 0x8c1663Bc

loc_8C10CA40:
#data 0x8c1663Cc

loc_8C10CA44:
#data 0x8c1663D4

loc_8C10CA48:
#data bank04.loc_8c046AE0

loc_8C10CA4C:
#data 0x8c1663E0

loc_8C10CA50:
#data 0x8c1663E8

loc_8C10CA54:
#data 0x8C2895F0

#align4
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
mov.l @(bank10.loc_8c10cb7c,pc),r9
mov.l @(bank10.loc_8c10cb78,pc),r8

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
mov.l @(bank10.loc_8c10cb80,pc),r3
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
mov.l @(bank10.loc_8c10cb88,pc),r3
shll2 r2
add r8,r2
jsr @r3
mov 0x0C,r0
bsr bank10.loc_8c10c074
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
#align4
loc_8C10CB40:
#data 0xD317E15c
#data 0xE034314c
#data 0xF246F318
#data 0xF427F230
#data 0xF235F338
#data 0x900B8905
#data 0x0414E100
#data 0x70018444
#data 0x8044

loc_8C10CB62:
#data 0x000b
#data 0x0009

;==============================================
loc_8C10CB66:
mov.l @(loc_8C10CBA4,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop
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
#data 0x0000

#align4
loc_8C10CB78:
#data bank13.loc_8c13e958

loc_8C10CB7C:
#data bank04.loc_8c044F12

loc_8C10CB80:
#data loc_8c10CADa
loc_8c10cb84:
#data 0x8C26A904

#align4
loc_8C10CB88:
#data bank12.loc_8c1294C8

loc_8C10CB8C:
#data 0x8c166410

loc_8C10CB90:
#data bank03.loc_8c03319e

loc_8C10CB94:
#data bank12.loc_8c1292D4

loc_8C10CB98:
#data 0x8C26A5B4

#align4
loc_8C10CB9C:
#data 0xC0A00000
#data 0x8C26A5B0

#align4
loc_8C10CBA4:
#data bank04.loc_8c0450C0

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
mov.l @(bank10.loc_8c10cc3c,pc),r9
mov.l @(bank10.loc_8c10cc38,pc),r8

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
mov.l @(bank10.loc_8c10cc40,pc),r3
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
mov.l @(bank10.loc_8c10cc48,pc),r3
shll2 r2
add r8,r2
jsr @r3
mov 0x0C,r0
bsr bank10.loc_8c10bea0
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
loc_8c10cc2e:
#data 0x0805
loc_8c10cc30:
#data 0x008c
loc_8c10cc32:
#data 0x012C
loc_8c10cc34:
#data 0x00000084

#align4
loc_8C10CC38:
#data bank13.loc_8c13e958

loc_8C10CC3C:
#data bank04.loc_8c044F12

loc_8C10CC40:
#data loc_8c10C0Ca
loc_8c10cc44:
#data 0x8C26A904

#align4
loc_8C10CC48:
#data bank12.loc_8c1294C8


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

;==============================================
#data 0x0000

#align4
loc_8C10CE10:
#data 0x8c16641c

loc_8C10CE14:
#data bank13.loc_8c13e9Bc

loc_8C10CE18:
#data bank12.loc_8c1294C8

loc_8C10CE1C:
#data 0x42C80000

#align4
loc_8C10CE20:
#data 0x8C28C8C0

#align4
loc_8C10CE24:
#data 0x47800000

#align4
loc_8C10CE28:
#data 0x43B40000

#align4
loc_8C10CE2C:
#data 0x3F000000

#align4
loc_8C10CE30:
#data 0x0000FFFf

#align4
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
mov.l @(bank10.loc_8c10cf28,pc),r8
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
mov.l @(bank10.loc_8c10cf3c,pc),r3
add 0x34,r1
mov.l r3,@(0x10,r4)
mov.l @r2,r0
mov.l @(bank10.loc_8c10cf44,pc),r2
mov.l @r0,r0
mov.l @(r0,r9),r3
mov.w @(loc_8C10CF26,pc),r0
mov.l r3,@(r0,r4)
mov r13,r3
add r3,r6
mov.l @(bank10.loc_8c10cf48,pc),r3
add 0x48,r0
shll2 r6
mov.l r10,@(r0,r4)
add r6,r2
jsr @r3
mov 0x0C,r0
mov.l @(bank10.loc_8c10cf4c,pc),r5
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
bsr bank10.loc_8c10d124
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

#align4
loc_8C10CF3C:
#data loc_8c10CC4c
loc_8c10cf40:
#data 0x8C26A904

#align4
loc_8C10CF44:
#data bank13.loc_8c13e9A4

loc_8C10CF48:
#data bank12.loc_8c1294C8

loc_8C10CF4C:
#data bank13.loc_8c13e9Bc

loc_8C10CF50:
#data 0x8c166424


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

;==============================================
#data 0x0000

#align4
loc_8C10D104:
#data bank13.loc_8c13e9E0

loc_8C10D108:
#data bank12.loc_8c1294C8

loc_8C10D10C:
#data 0x42C80000

#align4
loc_8C10D110:
#data 0x8C28C8D8

#align4
loc_8C10D114:
#data 0x47800000

#align4
loc_8C10D118:
#data 0x43B40000

#align4
loc_8C10D11C:
#data 0x3F000000

#align4
loc_8C10D120:
#data 0x0000FFFf

#align4
loc_8C10D124:
#data 0xE5052FE6
#data 0xD3264F22
#data 0xE6016E43
#data 0xE400430b
#data 0x8D3B2008
#data 0x903E6403
#data 0xD123E301
#data 0x0434D221
#data 0x63121424
#data 0x90376143
#data 0x62327134
#data 0x70E4032e
#data 0x04369233
#data 0x04267048
#data 0xD31DD21c
#data 0xE00C430b
#data 0xC71DD520
#data 0xC71DF608
#data 0x6343F358
#data 0xC71CF508
#data 0xF408F362
#data 0xD617E004
#data 0xF3537340
#data 0xF33DF340
#data 0x2169015a
#data 0xF3562312
#data 0xF362E044
#data 0xF340F353
#data 0x035AF33d
#data 0x04362369
#data 0x90109310
#data 0x14E533Ec
#data 0x84E50436
#data 0xE0238045
#data 0x043403Ec

#align4
loc_8C10D1B0:
#data 0x000B4F26
#data 0x6EF6

;==============================================
loc_8C10D1B6:
bra loc_8C10CE34
mov 0x27,r4
#data 0x012c
#data 0x080300A0
#data 0x00C80088

#align4
loc_8C10D1C4:
#data bank04.loc_8c044F12

loc_8C10D1C8:
#data loc_8c10CF0c
#data 0x8C26A904

#align4
loc_8C10D1D0:
#data bank13.loc_8c13e9D4

loc_8C10D1D4:
#data bank12.loc_8c1294C8
#data 0x0000FFFf
#data 0x47800000
#data 0x43B40000
#data 0x3F000000

#align4
loc_8C10D1E8:
#data bank13.loc_8c13e9E0


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
mov.l @(bank10.loc_8c10d33c,pc),r3
mov 0x05,r5
mov.l r4,@r15
mov 0x01,r6
jsr @r3
mov 0x00,r4
tst r0,r0
bt/s loc_8c10d254
mov r0,r4
mov.w @(bank10.loc_8c10d32e,pc),r0
mov 0x01,r3
mov.l @(loc_8C10D344,pc),r1
mov.l @(bank10.loc_8c10d340,pc),r2
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
mov.l @(bank10.loc_8c10d348,pc),r2
mov.l @(bank10.loc_8c10d34c,pc),r3
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
#align4
loc_8C10D308:
#data 0x854E4F22
#data 0xD311E11c
#data 0x7001314c
#data 0xE028814e
#data 0x6111430b
#data 0x600F814e
#data 0x8B012008
#data 0x8044E000

#align4
loc_8C10D328:
#data 0x000B4F26
#data 0x0009

;==============================================
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
#data 0x0000

#align4
loc_8C10D33C:
#data bank04.loc_8c044F12

loc_8C10D340:
#data loc_8c10D1Ec
loc_8c10d344:
#data 0x8C26A904

#align4
loc_8C10D348:
#data bank13.loc_8c13ea48

loc_8C10D34C:
#data bank12.loc_8c1294C8

loc_8C10D350:
#data 0x8c16642c

loc_8C10D354:
#data bank12.loc_8c1292D4

loc_8C10D358:
#data 0x41A00000

#align4
loc_8c10d35c:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(bank10.loc_8c10d43c,pc),r3
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
mov.l @(bank10.loc_8c10d440,pc),r3
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
mov.l @(bank10.loc_8c10d448,pc),r2
mov.l @(bank10.loc_8c10d44c,pc),r3
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

#align4
loc_8c10d3c8:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(bank10.loc_8c10d43c,pc),r3
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
mov.l @(bank10.loc_8c10d454,pc),r3
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
mov.l @(bank10.loc_8c10d458,pc),r2
mov.l @(bank10.loc_8c10d44c,pc),r3
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

#align4
loc_8C10D448:
#data bank13.loc_8c13ea18

loc_8C10D44C:
#data bank12.loc_8c1294C8

loc_8C10D450:
#data 0x8c166434

loc_8C10D454:
#data loc_8c10D3B4

loc_8C10D458:
#data bank13.loc_8c13ea24

loc_8C10D45C:
#data 0x8c16643c


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
mov.w @(bank10.loc_8c10d566,pc),r0
mov.l @(r0,r4),r2
mov 0x38,r0
fmov.s @(r0,r4),fr2
lds r2,fpul
float fpul,fr3
fcmp/gt fr3,fr2
bt loc_8c10d520

loc_8c10d516:
mov.w @(loc_8C10D56C,pc),r0
mov.w @(bank10.loc_8c10d56a,pc),r2
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
#data 0x854E
#data 0x70FF
#data 0x814E
#data 0x600F
#data 0x2008
#data 0x8B01
#data 0xE000
#data 0x8044

loc_8c10d548:
#data 0x000B
#data 0x0009

;==============================================
loc_8c10d54c:
#data 0x900E
#data 0x034E
#data 0x73FF
#data 0x2338
#data 0x8F04
#data 0x0436
#data 0xE000
#data 0x8046
#data 0xE001
#data 0x8044

loc_8c10d560:
#data 0x000B
#data 0x0009

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

loc_8c10d570:
#data 0xEA10
#data 0x8C13

loc_8c10d574:
#data 0x0000
#data 0x4416

loc_8c10d578:
#data 0x319E
#data 0x8C03

loc_8c10d57c:
#data 0x92D4
#data 0x8C12

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
#align4
loc_8C10D620:
#data 0xD31FE104
#data 0xF49D314c
#data 0x84444F22
#data 0x80447001
#data 0x6110E028
#data 0x611C430b
#data 0x600C8044
#data 0x8B312008
#data 0x8801854f
#data 0xE0788B05
#data 0xE07CF447
#data 0x7004F447
#data 0xF447

loc_8C10D652:
#data 0x854f
#data 0x8B0688Ff
#data 0xF48DE078
#data 0xE07CF447
#data 0x7004F447
#data 0xF447

loc_8C10D666:
#data 0x854f
#data 0x203FE3Ff
#data 0xA03C001a
#data 0x814f

loc_8C10D672:
#data 0x012c

loc_8C10D674:
#data 0x0801
#data 0x0000

#align4
loc_8C10D678:
#data bank04.loc_8c044F12

loc_8C10D67C:
#data loc_8c10D420

loc_8C10D680:
#data 0x8C26A904

#align4
loc_8C10D684:
#data bank13.loc_8c13e9F8

loc_8C10D688:
#data bank12.loc_8c1294C8

loc_8C10D68C:
#data 0x0000FFFf

#align4
loc_8C10D690:
#data bank13.loc_8c13ea04

loc_8C10D694:
#data 0x47800000

#align4
loc_8C10D698:
#data 0x43B40000

#align4
loc_8C10D69C:
#data 0x3F000000

#align4
loc_8C10D6A0:
#data bank12.loc_8c1292D4

loc_8C10D6A4:
#data 0xF508C740
#data 0x854FE278
#data 0xF228324c
#data 0x435A6303
#data 0xF342F32d
#data 0xF230F353
#data 0xE27CF22a
#data 0x324C854f
#data 0x6303F228
#data 0xF32D435a
#data 0xF353F342
#data 0xF22AF230
#data 0x9262854f
#data 0x435A6303
#data 0xF32D324c
#data 0xF353F342
#data 0xF230F228
#data 0xF22a

loc_8C10D6EA:
#data 0x854e
#data 0xD32FE11c
#data 0x7003314c
#data 0x9053814e
#data 0x6111430b
#data 0x854E814e
#data 0x63034F26
#data 0xC72A435a
#data 0xF208D22c
#data 0xF32DC729
#data 0xC729F108
#data 0xE044F008
#data 0xF313F322
#data 0xF33DF300
#data 0x2329035a
#data 0x0436000b

;==============================================
#align4
loc_8c10d728:
sts.l pr,@-r15
mov.l @(bank10.loc_8c10d7c0,pc),r3
mov 0x05,r5
mov 0x01,r6
jsr @r3
mov 0x00,r4
tst r0,r0
bt/s loc_8c10d78c
mov r0,r4
mov.l @(loc_8C10D7C8,pc),r1
mov 0x01,r5
mov.l @(bank10.loc_8c10d7c4,pc),r3
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
mov.l @(bank10.loc_8c10d7cc,pc),r2
mov.l @(bank10.loc_8c10d7d0,pc),r3
jsr @r3
mov 0x0C,r0
mov.l @(bank10.loc_8c10d7d4,pc),r1
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
#data 0x0080
#data 0x0168
loc_8c10d7a2:
#data 0x012C
loc_8c10d7a4:
#data 0x00A4
loc_8c10d7a6:
#data 0x0C05
#data 0x42200000

#align4
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

#align4
loc_8C10D7C0:
#data bank04.loc_8c044F12

loc_8C10D7C4:
#data loc_8c10D620
loc_8c10d7c8:
#data 0x8C26A904

#align4
loc_8C10D7CC:
#data bank13.loc_8c13ea30

loc_8C10D7D0:
#data bank12.loc_8c1294C8

loc_8C10D7D4:
#data bank13.loc_8c13ea40

loc_8C10D7D8:
#data 0x600C8444
#data 0x8B1C8800
#data 0x6343854e
#data 0x7340D14e
#data 0x425A6203
#data 0xF208C749
#data 0xF32DC749
#data 0xC749F108
#data 0xF322F008
#data 0xF300F313
#data 0x025AF33d
#data 0x23222219
#data 0x937D854e
#data 0x814E7001
#data 0x3033600f
#data 0xE0008B01
#data 0x814e

loc_8C10D81A:
#data 0x000b
#data 0x0009

;==============================================
loc_8C10D81E:
#data 0x4F22
#data 0xE505D340
#data 0x430BE601
#data 0x2008E400
#data 0x64038D14
#data 0xE301906b
#data 0xD23CD13d
#data 0x14240434
#data 0x61436312
#data 0x71349064
#data 0x53286232
#data 0x04369261
#data 0x04267048
#data 0xD338D237
#data 0xE00C430b

#align4
loc_8C10D858:
#data 0x000B4F26
#data 0x0009

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
#data 0x012C00F0
#data 0x08030084

loc_8C10D910:
#data 0x0096
#data 0x0000
#data 0x47C00000
#data 0x43B40000
#data 0x3F000000
#data 0x0000FFFf

#align4
loc_8C10D924:
#data bank04.loc_8c044F12

loc_8C10D928:
#data loc_8c10D7D8
#data 0x8C26A904

#align4
loc_8C10D930:
#data bank13.loc_8c13ea60

loc_8C10D934:
#data bank12.loc_8c1294C8

loc_8C10D938:
#data 0x8c16644c

loc_8C10D93C:
#data bank13.loc_8c13ea78

loc_8C10D940:
#data 0x43160000

#align4
loc_8C10D944:
#data 0x8C28C914


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

loc_8C10DA58:
#data 0x012c

loc_8C10DA5A:
#data 0x0084

loc_8C10DA5C:
#data 0x0803
#data 0x0000

#align4
loc_8C10DA60:
#data 0x47800000

#align4
loc_8C10DA64:
#data 0x43B40000

#align4
loc_8C10DA68:
#data 0x3F000000

#align4
loc_8C10DA6C:
#data 0x0000FFFf

#align4
loc_8C10DA70:
#data 0x8C28C914

#align4
loc_8C10DA74:
#data bank04.loc_8c044F12

loc_8C10DA78:
#data loc_8c10D85e

loc_8C10DA7C:
#data 0x8C26A904

#align4
loc_8C10DA80:
#data bank13.loc_8c13ea6c

loc_8C10DA84:
#data bank12.loc_8c1294C8

loc_8C10DA88:
#data 0x8c166454


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

;==============================================
loc_8C10DBDA:
#data 0x0096

#align4
loc_8C10DBDC:
#data bank13.loc_8c13ea90

loc_8C10DBE0:
#data bank12.loc_8c1294C8

loc_8C10DBE4:
#data 0x43160000

#align4
loc_8C10DBE8:
#data 0x8C28C920

#align4
loc_8C10DBEC:
#data 0x47800000

#align4
loc_8C10DBF0:
#data 0x43B40000

#align4
loc_8C10DBF4:
#data 0x3F000000

#align4
loc_8C10DBF8:
#data 0x0000FFFf

#align4
loc_8c10dbfc:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(bank10.loc_8c10dd3c,pc),r3
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
mov.l @(bank10.loc_8c10dd40,pc),r2
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
mov.l @(bank10.loc_8c10dd48,pc),r2
mov.l @(bank10.loc_8c10dd4c,pc),r3
jsr @r3
mov 0x0C,r0
mov.l @(bank10.loc_8c10dd60,pc),r5
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

#align4
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

#align4
loc_8C10DD60:
#data bank13.loc_8c13ea90

loc_8C10DD64:
#data 0x8c16645c

loc_8C10DD68:
#data bank13.loc_8c13eaB4

loc_8C10DD6C:
#data 0x42C80000

#align4
loc_8C10DD70:
#data 0x8C28C8F0


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

;==============================================
loc_8C10DED2:
#data 0x012c

loc_8C10DED4:
#data 0x0084

loc_8C10DED6:
#data 0x0801

#align4
loc_8C10DED8:
#data 0x8C28C8F0

#align4
loc_8C10DEDC:
#data bank04.loc_8c044F12

loc_8C10DEE0:
#data loc_8c10DC88

loc_8C10DEE4:
#data 0x8C26A904

#align4
loc_8C10DEE8:
#data bank13.loc_8c13eaB4

loc_8C10DEEC:
#data bank12.loc_8c1294C8

loc_8C10DEF0:
#data 0x8c166464

loc_8C10DEF4:
#data bank13.loc_8c13eaD8

loc_8C10DEF8:
#data 0x42C80000

#align4
loc_8C10DEFC:
#data 0x8C28C8Fc


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
#align4
loc_8c10dfb8:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(bank10.loc_8c10e078,pc),r3
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
mov.l @(bank10.loc_8c10e07c,pc),r2
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
mov.l @(bank10.loc_8c10e084,pc),r2
mov.l @(bank10.loc_8c10e088,pc),r3
jsr @r3
mov 0x0C,r0
mov.l @(bank10.loc_8c10e08c,pc),r5
mova @(bank10.loc_8c10e064,pc),r0
fmov.s @r0,fr6
mova @(bank10.loc_8c10e068,pc),r0
fmov.s @r5,fr3
mov r4,r3
fmov.s @r0,fr5
mova @(bank10.loc_8c10e06c,pc),r0
fmul fr6,fr3
fmov.s @r0,fr4
mov 0x04,r0
mov.l @(bank10.loc_8c10e070,pc),r6
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
loc_8c10e058:
#data 0x012c
loc_8c10e05a:
#data 0x0084
loc_8c10e05c:
#data 0x0807
loc_8c10e05e:
#data 0x0088
loc_8c10e060:
#data 0x000000C8

#align4
loc_8C10E064:
#data 0x47800000

#align4
loc_8C10E068:
#data 0x43B40000

#align4
loc_8C10E06C:
#data 0x3F000000

#align4
loc_8C10E070:
#data 0x0000FFFf

#align4
loc_8C10E074:
#data 0x8C28C8Fc

#align4
loc_8C10E078:
#data bank04.loc_8c044F12

loc_8C10E07C:
#data loc_8c10DE28
loc_8c10e080:
#data 0x8C26A904

#align4
loc_8C10E084:
#data bank13.loc_8c13eaCc

loc_8C10E088:
#data bank12.loc_8c1294C8

loc_8C10E08C:
#data bank13.loc_8c13eaD8

loc_8C10E090:
#data 0x8c16646c


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

;==============================================
#data 0x0000

#align4
loc_8C10E1E4:
#data bank13.loc_8c13eaFc

loc_8C10E1E8:
#data bank12.loc_8c1294C8

loc_8C10E1EC:
#data 0x42C80000

#align4
loc_8C10E1F0:
#data 0x8C28C908

#align4
loc_8C10E1F4:
#data 0x47800000

#align4
loc_8C10E1F8:
#data 0x43B40000

#align4
loc_8C10E1FC:
#data 0x3F000000

#align4
loc_8C10E200:
#data 0x0000FFFf

#align4
loc_8c10e204:
sts.l pr,@-r15
mov.l @(bank10.loc_8c10e330,pc),r3
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
mov.l @(bank10.loc_8c10e334,pc),r2
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
mov.l @(bank10.loc_8c10e33c,pc),r2
mov.l @(bank10.loc_8c10e340,pc),r3
jsr @r3
mov 0x0C,r0
mov.l @(bank10.loc_8c10e354,pc),r5
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
#data 0x8444
#data 0x600C
#data 0x8800
#data 0x8B1C
#data 0x854E
#data 0x6343
#data 0xD12E
#data 0x7340
#data 0x6203
#data 0x425A
#data 0xC731
#data 0xF208
#data 0xC72D
#data 0xF32D
#data 0xF108
#data 0xC72D
#data 0xF008
#data 0xF322
#data 0xF313
#data 0xF300
#data 0xF33D
#data 0x025A
#data 0x2219
#data 0x2322
#data 0x854E
#data 0x933D
#data 0x7001
#data 0x814E
#data 0x600F
#data 0x3033
#data 0x8B01
#data 0xE000
#data 0x814E

loc_8c10e2be:
#data 0x000B
#data 0x0009

;==============================================
loc_8c10e2c2:
#data 0x4F22
#data 0xD31A
#data 0xE505
#data 0xE601
#data 0x430B
#data 0xE400
#data 0x2008
#data 0x8D26
#data 0x6403
#data 0x9027
#data 0xE301
#data 0xD117
#data 0xD220
#data 0x0434
#data 0xE040
#data 0x1424
#data 0x6312
#data 0x6143
#data 0x7134
#data 0x6232
#data 0x032E
#data 0x7044
#data 0x921C
#data 0x0436
#data 0x7048
#data 0x0426
#data 0xD21A
#data 0xD311
#data 0x430B
#data 0xE00C
#data 0xD119
#data 0xC711
#data 0xF308
#data 0xC711
#data 0xF218
#data 0xF108
#data 0xC711
#data 0xF232
#data 0xF008
#data 0xD10C
#data 0xE044
#data 0xF213
#data 0xF200
#data 0xF23D
#data 0x035A
#data 0x2319
#data 0x0436

loc_8c10e320:
#data 0x4F26
#data 0x000B
#data 0x0009

;==============================================
loc_8C10E326:
#data 0x012C

loc_8C10E328:
#data 0x0084

loc_8C10E32A:
#data 0x0807
#data 0x02D0
#data 0x0000

#align4
loc_8c10e330:
#data bank04.loc_8c044f12

loc_8c10e334:
#data bank10.loc_8c10e044

loc_8C10E338:
#data 0x8C26A904

#align4
loc_8c10e33c:
#data bank13.loc_8c13eaf0

loc_8c10e340:
#data bank12.loc_8c1294c8

loc_8C10E344:
#data 0x0000FFFF

#align4
loc_8C10E348:
#data 0x47800000

#align4
loc_8C10E34C:
#data 0x43B40000

#align4
loc_8C10E350:
#data 0x3F000000

#align4
loc_8c10e354:
#data bank13.loc_8c13eafc
#data 0x0000
#data 0x4700

loc_8c10e35c:
#data 0xE27C
#data 0x8C10

loc_8c10e360:
#data 0xEB14
#data 0x8C13

loc_8c10e364:
#data 0xEB24
#data 0x8C13

loc_8c10e368:
#data 0x4F22
#data 0x8444
#data 0x600C
#data 0x8800
#data 0x8B22
#data 0x854E
#data 0x6343
#data 0xD154
#data 0x7340
#data 0x6203
#data 0x425A
#data 0xC74F
#data 0x9599
#data 0xF208
#data 0xC74E
#data 0xF32D
#data 0xF108
#data 0xC74E
#data 0xF008
#data 0xF322
#data 0xF313
#data 0xF300
#data 0xF33D
#data 0x025A
#data 0x2219
#data 0x2322
#data 0x854E
#data 0x7003
#data 0x814E
#data 0x854E
#data 0x3053
#data 0x8B07
#data 0x6053
#data 0x0009
#data 0xD247
#data 0xE11C
#data 0x314C
#data 0x420B
#data 0x6111
#data 0x814E

loc_8c10e3b8:
#data 0x4F26
#data 0x000B
#data 0x0009

;==============================================
loc_8c10e3be:
#data 0x4F22
#data 0xD343
#data 0xE505
#data 0xE601
#data 0x430B
#data 0xE400
#data 0x2008
#data 0x8D26
#data 0x6403
#data 0x9072
#data 0xE301
#data 0xD140
#data 0xD23F
#data 0x0434
#data 0xE044
#data 0x1424
#data 0x6312
#data 0x6143
#data 0x7134
#data 0x6232
#data 0x032E
#data 0x7040
#data 0x9266
#data 0x0436
#data 0x7048
#data 0x0426
#data 0xD23A
#data 0xD33A
#data 0x430B
#data 0xE00C
#data 0xD13A
#data 0xC72F
#data 0xF308
#data 0xC72F
#data 0xF218
#data 0xF108
#data 0xC72F
#data 0xF232
#data 0xF008
#data 0xD12E
#data 0xE044
#data 0xF213
#data 0xF200
#data 0xF23D
#data 0x035A
#data 0x2319
#data 0x0436

loc_8c10e41c:
#data 0x4F26
#data 0x000B
#data 0x0009

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
#data 0x0168
#data 0x0807012c
#data 0x47800000
#data 0x43B40000
#data 0x3F000000
#data 0x0000FFFf

#align4
loc_8C10E4CC:
#data bank12.loc_8c1292D4

loc_8C10E4D0:
#data bank04.loc_8c044F12

loc_8C10E4D4:
#data loc_8c10E368
#data 0x8C26A904

#align4
loc_8C10E4DC:
#data bank13.loc_8c13eb2c

loc_8C10E4E0:
#data bank12.loc_8c1294C8

loc_8C10E4E4:
#data bank13.loc_8c13eb3c

loc_8C10E4E8:
#data 0x8c166474

loc_8C10E4EC:
#data bank13.loc_8c13eb74

loc_8C10E4F0:
#data 0x42700000

#align4
loc_8C10E4F4:
#data 0x8C28C938


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

;==============================================
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

loc_8C10E656:
#data 0x012c

loc_8C10E658:
#data 0x0084

loc_8C10E65A:
#data 0x0801

#align4
loc_8C10E65C:
#data 0x8C28C938

#align4
loc_8C10E660:
#data bank04.loc_8c044F12

loc_8C10E664:
#data loc_8c10E422

loc_8C10E668:
#data 0x8C26A904

#align4
loc_8C10E66C:
#data bank13.loc_8c13eb74

loc_8C10E670:
#data bank12.loc_8c1294C8

loc_8C10E674:
#data 0x8c16647c

loc_8C10E678:
#data bank13.loc_8c13ebA4

loc_8C10E67C:
#data 0x42700000

#align4
loc_8C10E680:
#data 0x8C28C92c


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
mov.l @(bank10.loc_8c10e7fc,pc),r3
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
mov.l @(bank10.loc_8c10e800,pc),r2
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
mov.l @(bank10.loc_8c10e808,pc),r2
mov.l @(bank10.loc_8c10e80c,pc),r3
jsr @r3
mov 0x0C,r0
mov.l @(bank10.loc_8c10e810,pc),r5
mova @(bank10.loc_8c10e7e8,pc),r0
fmov.s @r0,fr6
mova @(bank10.loc_8c10e7ec,pc),r0
fmov.s @r5,fr3
mov r4,r3
fmov.s @r0,fr5
mova @(bank10.loc_8c10e7f0,pc),r0
fmul fr6,fr3
fmov.s @r0,fr4
mov 0x04,r0
mov.l @(bank10.loc_8c10e7f4,pc),r6
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

;==============================================
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

loc_8c10e7e8:
#data 0x0000
#data 0x4780

#align4
loc_8c10e7ec:
#data 0x43B40000

#align4
loc_8c10e7f0:
#data 0x3F000000

#align4
loc_8c10e7f4:
#data 0x0000FFFF

loc_8c10e7f8:
#data 0xC92C
#data 0x8C28

#align4
loc_8c10e7fc:
#data bank04.loc_8c044f12

loc_8c10e800:
#data bank10.loc_8c10e5c2

loc_8C10E804:
#data 0x8C26A904

#align4
loc_8c10e808:
#data bank13.loc_8c13eb98

loc_8c10e80c:
#data bank12.loc_8c1294c8

loc_8c10e810:
#data bank13.loc_8c13eba4

loc_8c10e814:
#data 0x4F22
#data 0x8444
#data 0x600C
#data 0x8800
#data 0x8B22
#data 0x854E
#data 0x6343
#data 0xD145
#data 0x7340
#data 0x6203
#data 0x425A
#data 0xC740
#data 0x957A
#data 0xF208
#data 0xC73F
#data 0xF32D
#data 0xF108
#data 0xC73F
#data 0xF008
#data 0xF322
#data 0xF313
#data 0xF300
#data 0xF33D
#data 0x025A
#data 0x2219
#data 0x2322
#data 0x854E
#data 0x7002
#data 0x814E
#data 0x854E
#data 0x3053
#data 0x8B07
#data 0x6053
#data 0x0009
#data 0xD238
#data 0xE11C
#data 0x314C
#data 0x420B
#data 0x6111
#data 0x814E

loc_8c10e864:
#data 0x4F26
#data 0x000B
#data 0x0009

;==============================================
loc_8c10e86a:
#data 0x4F22
#data 0xD334
#data 0xE505
#data 0xE601
#data 0x430B
#data 0xE400
#data 0x2008
#data 0x8D26
#data 0x6403
#data 0x9053
#data 0xE301
#data 0xD131
#data 0xD230
#data 0x0434
#data 0xE048
#data 0x1424
#data 0x6312
#data 0x6143
#data 0x7134
#data 0x6232
#data 0x032E
#data 0x703C
#data 0x9247
#data 0x0436
#data 0x7048
#data 0x0426
#data 0xD22B
#data 0xD32B
#data 0x430B
#data 0xE00C
#data 0xD12B
#data 0xC720
#data 0xF308
#data 0xC720
#data 0xF218
#data 0xF108
#data 0xC720
#data 0xF232
#data 0xF008
#data 0xD11F
#data 0xE044
#data 0xF213
#data 0xF200
#data 0xF23D
#data 0x035A
#data 0x2319
#data 0x0436

loc_8c10e8c8:
#data 0x4F26
#data 0x000B
#data 0x0009

;==============================================
loc_8c10e8ce:
#data 0x4F22
#data 0x8444
#data 0x600C
#data 0x8800
#data 0x8B22
#data 0x854E
#data 0x6343
#data 0xD116
#data 0x7340
#data 0x6203
#data 0x425A
#data 0xC711
#data 0x951D
#data 0xF208
#data 0xC711
#data 0xF32D
#data 0xF108
#data 0xC710
#data 0xF008
#data 0xF322
#data 0xF313
#data 0xF300
#data 0xF33D
#data 0x025A
#data 0x2219
#data 0x2322
#data 0x854E
#data 0x7001
#data 0x814E
#data 0x854E
#data 0x3053
#data 0x8B07
#data 0x6053
#data 0x0009
#data 0xD20A
#data 0xE11C
#data 0x314C
#data 0x420B
#data 0x6111
#data 0x814E

loc_8c10e91e:
#data 0x4F26
#data 0x000B
#data 0x0009

;==============================================
#data 0x0168
#data 0x012C
#data 0x0807
#data 0x0000
#data 0x0000
#data 0x4780
#data 0x0000
#data 0x43B4
#data 0x0000
#data 0x3F00
#data 0xFFFF
#data 0x0000

loc_8c10e93c:
#data 0x92D4
#data 0x8C12

loc_8c10e940:
#data 0x4F12
#data 0x8C04

loc_8c10e944:
#data 0xE814
#data 0x8C10
#data 0xA904
#data 0x8C26

loc_8c10e94c:
#data 0xEB44
#data 0x8C13

loc_8c10e950:
#data 0x94C8
#data 0x8C12

loc_8c10e954:
#data 0xEB54
#data 0x8C13

loc_8c10e958:
#data 0x4F22
#data 0xD324
#data 0xE505
#data 0xE601
#data 0x430B
#data 0xE400
#data 0x2008
#data 0x8D26
#data 0x6403
#data 0x903C
#data 0xE301
#data 0xD121
#data 0xD21F
#data 0x0434
#data 0xE04C
#data 0x1424
#data 0x6312
#data 0x6143
#data 0x7134
#data 0x6232
#data 0x032E
#data 0x7038
#data 0x9230
#data 0x0436
#data 0x7048
#data 0x0426
#data 0xD21A
#data 0xD31B
#data 0x430B
#data 0xE00C
#data 0xD11B
#data 0xC71A
#data 0xF308
#data 0xC71B
#data 0xF218
#data 0xF108
#data 0xC71A
#data 0xF232
#data 0xF008
#data 0xD11A
#data 0xE044
#data 0xF213
#data 0xF200
#data 0xF23D
#data 0x035A
#data 0x2319
#data 0x0436

loc_8c10e9b6:
#data 0x4F26
#data 0x000B
#data 0x0009

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

#data 0x012c
#data 0x0807
#align4

loc_8C10E9EC:
#data bank04.loc_8c044F12

loc_8C10E9F0:
#data loc_8c10E8Ce
#data 0x8C26A904

#align4
loc_8C10E9F8:
#data bank13.loc_8c13eb5c

loc_8C10E9FC:
#data bank12.loc_8c1294C8
#data 0x47800000

#align4
loc_8C10EA04:
#data bank13.loc_8c13eb6c
#data 0x43B40000
#data 0x3F000000
#data 0x0000FFFf

#align4
loc_8C10EA14:
#data loc_8c10D81e

loc_8C10EA18:
#data 0xE30A854e
#data 0x814E7001
#data 0x3033600f
#data 0xE0008B15
#data 0x814ED126
#data 0xD2268444
#data 0x80447001
#data 0xC9038444
#data 0x84448044
#data 0x4008600c
#data 0x6022011e
#data 0x63024108
#data 0x6012313c
#data 0x314C9137
#data 0x2102

loc_8C10EA52:
#data 0x854e
#data 0x8B014011
#data 0xC901A005

#align4
loc_8C10EA5C:
#data 0x70016007
#data 0x6007C901
#data 0x7001

loc_8C10EA66:
#data 0x2008
#data 0x90298B04
#data 0x024CE301
#data 0x0424223a

#align4
loc_8C10EA74:
#data 0x0009000b

;==============================================
#align4
loc_8c10ea78:
sts.l pr,@-r15
mov.l @(bank10.loc_8c10eacc,pc),r3
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
mov.l @(bank10.loc_8c10ead0,pc),r2
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
mov.l @(bank10.loc_8c10ead4,pc),r2
mov.l @(bank10.loc_8c10ead8,pc),r3
jsr @r3
mov 0x0C,r0

loc_8c10eab4:
lds.l @r15+,pr
rts
nop

loc_8C10EABA:
bra loc_8C10EA78
nop
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

#align4
loc_8C10EACC:
#data bank04.loc_8c044F12

loc_8C10EAD0:
#data loc_8c10EA18

loc_8C10EAD4:
#data bank13.loc_8c13ebCc

loc_8C10EAD8:
#data bank12.loc_8c1294C8

loc_8C10EADC:
#data 0xD3404F22
#data 0xE601E505
#data 0xE400430b
#data 0x8D252008
#data 0x90746403
#data 0xD13DE301
#data 0x0434D23b
#data 0x63121424
#data 0x906D6143
#data 0x62327134
#data 0x926A5321
#data 0x70480436
#data 0xD2370426
#data 0x430BD337
#data 0xD138E00c
#data 0xF308C736
#data 0xF218C737
#data 0xC737F108
#data 0xF008F232
#data 0xE044D136
#data 0xF200F213
#data 0x035AF23d
#data 0x04362319

#align4
loc_8C10EB38:
#data 0x000B4F26
#data 0x0009

;==============================================
loc_8C10EB3E:
#data 0x2FE6
#data 0xD1316E43
#data 0x4F22FFFb
#data 0x700185Ee
#data 0x85EE81Ee
#data 0x85EF6303
#data 0x021E4008
#data 0x8B0D3323
#data 0x6043E400
#data 0x81EE0009
#data 0x85EFE322
#data 0x81EF7001
#data 0x303285Ef
#data 0x60438B02
#data 0x81EF0009

#align4
loc_8C10EB78:
#data 0xD123C721
#data 0x85EEFF08
#data 0x6303D224
#data 0x435A85Ef
#data 0x031E4008
#data 0xF32DC71f
#data 0xD31C435a
#data 0xF323F22d
#data 0xC71DF208
#data 0xC715F008
#data 0xF308F23e
#data 0xF108C715
#data 0xF213F232
#data 0xF3F0F32c
#data 0x045AF33d
#data 0x2439420b
#data 0xE32285Ef
#data 0x6603F30c
#data 0xF4FCF0Fc
#data 0xF43E606f
#data 0x7601666f
#data 0x3632D412
#data 0x8F234008
#data 0xA026054e
#data 0x012C6642
#data 0x08070084

#align4
loc_8C10EBE0:
#data bank04.loc_8c044F12

loc_8C10EBE4:
#data loc_8c10EB3e
#data 0x8C26A904

#align4
loc_8C10EBEC:
#data bank13.loc_8c13ebD8

loc_8C10EBF0:
#data bank12.loc_8c1294C8
#data 0x47800000

#align4
loc_8C10EBF8:
#data bank13.loc_8c13ebE8
#data 0x43B40000
#data 0x3F000000
#data 0x0000FFFf

#align4
loc_8C10EC08:
#data 0x8c16650c
#data 0xC2B40000
#data 0x43340000

#align4
loc_8C10EC14:
#data bank11.loc_8c11E860

loc_8C10EC18:
#data 0x8c166484

loc_8C10EC1C:
#data 0x660385Ef
#data 0x364C4608
#data 0x5661

loc_8C10EC26:
#data 0x4F26
#data 0xFFF964E3
#data 0x2FE66EF6
#data 0x2FC62FD6
#data 0x2FA62FB6
#data 0x2F862F96
#data 0x4F22FFFb
#data 0xD3347FF0
#data 0x60306943
#data 0x8803600c
#data 0xFF4C8D04
#data 0x8904880c
#data 0x0009A052

#align4
loc_8C10EC58:
#data 0xA001D42f
#data 0x0009

loc_8C10EC5E:
#data 0xD42f

#align4
loc_8C10EC60:
#data 0x63436D42
#data 0x06D7EE00
#data 0x470867D3
#data 0x7708374c
#data 0x05D70B1a
#data 0x62B37308
#data 0x3B2C4B00
#data 0x0C1A2F32
#data 0x3B7C4B08
#data 0x4C0062C3
#data 0x4D153C2c
#data 0x3C7C4C08
#data 0xEA003E3c
#data 0xE8018F32

#align4
loc_8C10EC98:
#data 0x64C365B3
#data 0xE004F358
#data 0xE60CF448
#data 0xF341F0Fc
#data 0xF23EF24c
#data 0xE004FF27
#data 0xF446F356
#data 0xF341E008
#data 0xF23EF24c
#data 0xE008FF27
#data 0x65F3F356
#data 0xE00CF446
#data 0xF24CF341
#data 0xFF27F23e
#data 0x440864E2
#data 0x00096063
#data 0x039E7078
#data 0xD310343c
#data 0x7504430b
#data 0x7A019015
#data 0x3AD363E6
#data 0x7B0C009e
#data 0x023E4308
#data 0x0326228b
#data 0x7C0C8FCe

#align4
loc_8C10ECFC:
#data 0x4F267F10
#data 0x68F6FFF9
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00846EF6
#data 0x8C26A95c
#data 0x0CEC5020
#data 0x0CEC4918

#align4
loc_8C10ED20:
#data bank12.loc_8c129668

loc_8C10ED24:
#data 0x6E432FE6
#data 0xFFFB2F86
#data 0xFFCBFFEb
#data 0x4F229381
#data 0x700185Ee
#data 0x600F81Ee
#data 0x8B013033
#data 0x81EEE000

#align4
loc_8C10ED44:
#data 0x63E3C73e
#data 0xC73EFE08
#data 0xE020FF08
#data 0x734001Ec
#data 0x8D022118
#data 0xA0016833
#data 0xE201

loc_8C10ED5E:
#data 0xE2Ff

#align4
loc_8C10ED60:
#data 0x85EE425a
#data 0x6303D23a
#data 0x435AF32d
#data 0xF108C736
#data 0xF22DD336
#data 0xF212FC3c
#data 0xF2F0F2E3
#data 0x045AF23d
#data 0x2439420b
#data 0xC733FC02
#data 0xD230F308
#data 0xFCE3FC32
#data 0xFC3DFCF0
#data 0x2329035a
#data 0x4F262832
#data 0xFEF9FCF9
#data 0x68F6FFF9
#data 0x6EF6000b

;==============================================
#align4
loc_8c10eda8:
mov.l r14,@-r15
mov 0x05,r5
sts.l pr,@-r15
mov.l @(bank10.loc_8c10ee58,pc),r3
mov r4,r14
mov 0x01,r6
jsr @r3
mov 0x00,r4
tst r0,r0
bt/s loc_8c10ee24
mov r0,r4
mov.w @(loc_8C10EE38,pc),r0
mov 0x01,r3
mov.l @(bank10.loc_8c10ee5c,pc),r2
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
mov.l @(bank10.loc_8c10ee64,pc),r3
shll2 r2
add r3,r2
mov.l @(bank10.loc_8c10ee68,pc),r3
jsr @r3
mov 0x0C,r0
mov.l @(bank10.loc_8c10ee6c,pc),r0
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
#data 0x0168
loc_8c10ee38:
#data 0x012c
loc_8c10ee3a:
#data 0x0084
loc_8c10ee3c:
#data 0x00000807
loc_8c10ee40:
#data 0x43B40000
loc_8c10ee44:
#data 0x3F000000
loc_8c10ee48:
#data 0x47800000
loc_8c10ee4c:
#data 0x0000FFFf

#align4
loc_8C10EE50:
#data bank11.loc_8c11E860
#data 0x49600000

#align4
loc_8C10EE58:
#data bank04.loc_8c044F12

loc_8C10EE5C:
#data loc_8c10ED24
loc_8c10ee60:
#data 0x8C26A904

#align4
loc_8C10EE64:
#data 0x8c166594

loc_8C10EE68:
#data bank12.loc_8c1294C8

loc_8C10EE6C:
#data 0x8c1665Ac

loc_8C10EE70:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0xFFFB2F86
#data 0xFFDBFFEb
#data 0x4F22FFCb
#data 0x6E437FF4
#data 0x935085Ee
#data 0x81EE7004
#data 0x303385Ee
#data 0xE0008B01
#data 0x81Ee

loc_8C10EE9E:
#data 0xD326
#data 0x64329048
#data 0x6242D125
#data 0x410B05Ee
#data 0xC7285428
#data 0xFC08DC2a
#data 0xFD08C727
#data 0xD922C727
#data 0xD820ED00
#data 0xDA21DB22
#data 0xFE08A023

#align4
loc_8C10EEC8:
#data 0x64F34B0b
#data 0xFFF6E004
#data 0x8B19FFE5
#data 0xF3F2F3Fc
#data 0x85EEFF3b
#data 0x34DC6403
#data 0xC71F445a
#data 0xF22DF108
#data 0xF2C3F212
#data 0xF23DF2D0
#data 0x480B045a
#data 0xF3F924C9
#data 0xF302C71a
#data 0xE008F008
#data 0xE008F2F6
#data 0xFF27F23e

#align4
loc_8C10EF08:
#data 0x4A0B7D1e
#data 0x64F3

loc_8C10EF0E:
#data 0x490b
#data 0x20080009
#data 0x7F0C89D8
#data 0xFCF94F26
#data 0xFEF9FDF9
#data 0x68F6FFF9
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x01686EF6
#data 0x00000084
#data 0x8C26A904

#align4
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
#data 0x43B40000
#data 0x3F000000
#data 0x41200000
#data 0x0000FFFf
#data 0x47800000
#data 0x3951B717

#align4
loc_8C10EF68:
#data 0xD3244F22
#data 0xE601E505
#data 0xE400430b
#data 0x8D3A2008
#data 0x903B6403
#data 0xD121E301
#data 0x0434D21f
#data 0x63121424
#data 0x90346143
#data 0x62327134
#data 0xD21D5327
#data 0xD31D0436
#data 0xE00C430b
#data 0xC71ED51d
#data 0xC71EF608
#data 0x6343F358
#data 0xC71DF508
#data 0xF408F362
#data 0xD617E004
#data 0xF3537340
#data 0xF33DF340
#data 0x2169015a
#data 0xF3562312
#data 0xF362E044
#data 0xF340F353
#data 0x035AF33d
#data 0x04362369
#data 0xF356E008
#data 0xF353F362
#data 0xE048F340
#data 0xF33D910a
#data 0x2369035a
#data 0x90060436
#data 0x0416

loc_8C10EFEE:
#data 0x4F26
#data 0x0009000b

;==============================================
#data 0x0084012c
#data 0x00CC080d

#align4
loc_8C10EFFC:
#data bank04.loc_8c044F12

loc_8C10F000:
#data loc_8c10EE70
#data 0x8C26A904

#align4
loc_8C10F008:
#data 0x8c1665B4

loc_8C10F00C:
#data bank12.loc_8c1294C8
#data 0x0000FFFf

#align4
loc_8C10F014:
#data 0x8c1665C0
#data 0x47800000
#data 0x43B40000
#data 0x3F000000


loc_8C10F024:
mov r4,r3
add 0x40,r3
mov.l @r3,r2
add 0xF0,r2
rts
mov.l r2,@r3

;==============================================
#align4
loc_8C10F030:
#data 0xFFFB2FE6
#data 0x7FF44F22
#data 0xE601D344
#data 0x2F521F41
#data 0x430BE505
#data 0x2008E400
#data 0x6E038D6e
#data 0xE3019077
#data 0xD23FD140
#data 0x1E240E34
#data 0x90716312
#data 0xD1426232
#data 0x0E36532a
#data 0x62F2E31e
#data 0xFF08C73b
#data 0x0237C73b
#data 0xC73BF208
#data 0xC73BF108
#data 0x041AF008
#data 0xF32D445a
#data 0xF313F322
#data 0xF33DF300
#data 0x2419045a
#data 0x430BD337
#data 0xF0F21F42
#data 0xE038D336
#data 0x430BFE07
#data 0xF0F254F2
#data 0xE03CD234
#data 0xE078FE07
#data 0x634364F2
#data 0x343C4400
#data 0x4408D331
#data 0xF348342c
#data 0xE004FE37
#data 0xE07CF346
#data 0xE008FE37
#data 0x7078F346
#data 0x6030FE37
#data 0x880C600c
#data 0xC72A8B22
#data 0xF408D12a
#data 0xF3E6E078
#data 0xF342415a
#data 0xFE37D128
#data 0xF2E6E07c
#data 0xFE27F242
#data 0xF3E67004
#data 0xFE37F342
#data 0xF2E6E078
#data 0xF230F30d
#data 0xD122415a
#data 0xE07CFE27
#data 0xF20DF1E6
#data 0x415AF120
#data 0x7004FE17
#data 0xF0E6F10d
#data 0xFE07F010

#align4
loc_8C10F118:
#data 0x93129014
#data 0x93120E36
#data 0x901152F1
#data 0x0E36332c

#align4
loc_8C10F128:
#data 0x4F267F0c
#data 0x000BFFF9
#data 0x6EF6

;==============================================
loc_8C10F132:
mov r4,r2
add 0x40,r2
mov.l @r2,r3
add 0x10,r3
rts
mov.l r3,@r2

;==============================================
#data 0x012c
#data 0x0084
#data 0x0C03
#data 0x00Cc
#data 0x0088
#data 0x00C8
#data 0x0000

#align4
loc_8C10F14C:
#data bank04.loc_8c044F12

loc_8C10F150:
#data loc_8c10F024
#data 0x8C26A904
#data 0x452AA000
#data 0x47800000
#data 0x43B40000
#data 0x3F000000
#data 0x0000FFFf

#align4
loc_8C10F16C:
#data bank11.loc_8c11E2E0

loc_8C10F170:
#data bank11.loc_8c11E860

loc_8C10F174:
#data 0x8c1665D8
#data 0x8C26A95c
#data 0x3E4CCCCd
#data 0x3EE66666
#data 0x3F0CCCCd
#data 0x3F19999a

#align4
loc_8C10F18C:
#data 0xE5052FE6
#data 0xE6012FD6
#data 0x4F222FC6
#data 0x430BD316
#data 0x2008E400
#data 0x6E038D1f
#data 0xE3019022
#data 0xD213D114
#data 0x1E240E34
#data 0x61E36312
#data 0x7134901b
#data 0x53296232
#data 0x0E36D210
#data 0x430BD310
#data 0xD110E00c
#data 0x9311E044
#data 0x0E16ED00
#data 0x900EEC0c
#data 0x0E36

loc_8C10F1D6:
#data 0x65D3
#data 0x64E3BF2a
#data 0x3DC37D01
#data 0x8BF9

loc_8C10F1E2:
#data 0x4F26
#data 0x6DF66CF6
#data 0x6EF6000b

;==============================================
#data 0x0084012c
#data 0x00CC0807

#align4
loc_8C10F1F4:
#data bank04.loc_8c044F12

loc_8C10F1F8:
#data loc_8c10F132
#data 0x8C26A904

#align4
loc_8C10F200:
#data 0x8c1665Cc

loc_8C10F204:
#data bank12.loc_8c1294C8
#data 0x00009B07

#align4
loc_8C10F20C:
#data 0x6E432FE6
#data 0x2FC62FD6
#data 0xFFFB2F86
#data 0xFFDBFFEb
#data 0x939CFFCb
#data 0x85EE4F22
#data 0x8F033033
#data 0x6043E400
#data 0x81EE0009

#align4
loc_8C10F230:
#data 0x85EF9394
#data 0x8F033033
#data 0x6043FC9d
#data 0x81EF0009

#align4
loc_8C10F240:
#data 0x63E3C748
#data 0xC748FD08
#data 0xC749FE08
#data 0x7340FF08
#data 0x683385Ee
#data 0xDD45FCC0
#data 0x435A6303
#data 0xDC40E020
#data 0xE35A04Ec
#data 0x644CF32d
#data 0xF3C3243e
#data 0x445A041a
#data 0xF320F22d
#data 0xF2D2F23c
#data 0xF32CF2E3
#data 0xF33DF3F0
#data 0x4C0B045a
#data 0xC73B24D9
#data 0xF308D23b
#data 0xF0E3F032
#data 0xF03DF0F0
#data 0x23D9035a
#data 0x85EE2832
#data 0x435A6303
#data 0x04ECE020
#data 0xF22DE35a
#data 0x243E644c
#data 0x041AF2C3
#data 0xF12D445a
#data 0xF12CF210
#data 0xF1E3F1D2
#data 0xF2F0F21c
#data 0x045AF23d
#data 0x24D9420b
#data 0xD22DC72c
#data 0xE048F308
#data 0xF0E3F032
#data 0xF03DF0F0
#data 0x23D9035a
#data 0x60200E36
#data 0x8803600c
#data 0x85EF8B50
#data 0x435A6303
#data 0xF108C725
#data 0xF213F22d
#data 0xF2E3F2D2
#data 0xF0F0F02c
#data 0x045AF03d
#data 0x24D94C0b
#data 0xE078F30c
#data 0xF2FCF0Fc
#data 0xFE27F23e
#data 0x630385Ef
#data 0xF32D435a
#data 0xF3D2F3C3
#data 0xF23CF3E3
#data 0xF23DF2F0
#data 0x4C0B045a
#data 0xF30C24D9
#data 0xF0FCE07c
#data 0xF23EF2Fc
#data 0x85EFFE27
#data 0x6303F29d
#data 0xF32D435a
#data 0xF3D2F323
#data 0xF13CF3E3
#data 0xF13DF1F0
#data 0x4C0B045a
#data 0xF2FC24D9
#data 0xA053F30c
#data 0x02D0F0Fc
#data 0x00000438

#align4
loc_8C10F360:
#data bank11.loc_8c11E860
#data 0x47800000
#data 0x43B40000
#data 0x0000FFFf
#data 0x3F000000
#data 0x49A00000

#align4
loc_8C10F378:
#data bank11.loc_8c11E2E0
#data 0x4A700000
#data 0x8C26A95c
#data 0x40400000

#align4
loc_8C10F388:
#data 0x630385Ef
#data 0xC751435a
#data 0xF22DF108
#data 0xF2D2F213
#data 0xF02CF2E3
#data 0xF03DF0F0
#data 0x4C0B045a
#data 0xC74C24D9
#data 0xF008F30c
#data 0xF2FCE078
#data 0xFE27F23e
#data 0x630385Ef
#data 0xF32D435a
#data 0xF3D2F3C3
#data 0xF23CF3E3
#data 0xF23DF2F0
#data 0x4C0B045a
#data 0xC74224D9
#data 0xF008F30c
#data 0xF2FCE07c
#data 0xFE27F23e
#data 0xF29D85Ef
#data 0x435A6303
#data 0xF323F32d
#data 0xF3E3F3D2
#data 0xF1F0F13c
#data 0x045AF13d
#data 0x24D94C0b
#data 0xF30CC737
#data 0xF2FCF008

#align4
loc_8C10F400:
#data 0x9061F23e
#data 0x85EEFE27
#data 0x81EE7001
#data 0x700185Ef
#data 0x4F2681Ef
#data 0xFDF9FCF9
#data 0xFFF9FEF9
#data 0x6CF668F6
#data 0x000B6DF6
#data 0x6EF6

;==============================================
loc_8c10f426:
mov.l r14,@-r15
mov 0x05,r5
sts.l pr,@-r15
mov.l @(bank10.loc_8c10f4dc,pc),r3
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
mov.l @(bank10.loc_8c10f4e0,pc),r2
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
mov.l @(bank10.loc_8c10f4e8,pc),r2
mov.l r3,@(r0,r4)
mov r14,r3
add r3,r5
mov.l @(bank10.loc_8c10f4ec,pc),r3
shll2 r5
add r5,r2
jsr @r3
mov 0x0C,r0
mova @(loc_8C10F4F0,pc),r0
mov.l @(loc_8C10F500,pc),r2
fmov.s @r0,fr3
mov.l @(bank10.loc_8c10f4f4,pc),r0
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

#data 0x40400000
#data 0x3DCCCCCd

loc_8C10F4DC:
#data bank04.loc_8c044F12

loc_8C10F4E0:
#data loc_8c10F20c
loc_8c10f4e4:
#data 0x8C26A904

#align4
loc_8C10F4E8:
#data 0x8c166668

loc_8C10F4EC:
#data bank12.loc_8c1294C8
loc_8c10f4f0:
#data 0x47800000

#align4
loc_8C10F4F4:
#data 0x8c16669c
loc_8c10f4f8:
#data 0x43B40000
loc_8c10f4fc:
#data 0x3F000000
loc_8c10f500:
#data 0x0000FFFf


loc_8C10F504:
bra loc_8C10F7D0
nop

#align4
loc_8C10F508:
#data 0x4F222FE6
#data 0x2F527FFc
#data 0xD346E505
#data 0xE6016E43
#data 0xE400430b
#data 0x8D3F2008
#data 0x907E6403
#data 0xD242E301
#data 0xD14265E3
#data 0x14240434
#data 0x631262E3
#data 0x42084200
#data 0x63329074
#data 0x61434500
#data 0x323C7134
#data 0xD23C5324
#data 0x63E30436
#data 0xD33B353c
#data 0x325C4508
#data 0xE00C430b
#data 0xD63DC739
#data 0xC739F608
#data 0xC739F508
#data 0xE004F408
#data 0xD738365c
#data 0xE044F366
#data 0xF3629259
#data 0xF340F353
#data 0x035AF33d
#data 0x04362379
#data 0xF366E008
#data 0xF362E048
#data 0xF340F353
#data 0x035AF33d
#data 0x04362379
#data 0x04269048
#data 0x04E4E020
#data 0x143563F2

#align4
loc_8C10F5A0:
#data 0x4F267F04
#data 0x6EF6000b

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
#data 0x012c
#data 0x080D0084
#data 0x000000Cc

#align4
loc_8C10F62C:
#data bank04.loc_8c044F12

loc_8C10F630:
#data loc_8c10F5A8
#data 0x8C26A904

#align4
loc_8C10F638:
#data 0x8c1666E0

loc_8C10F63C:
#data bank12.loc_8c1294C8

loc_8C10F640:
#data 0x47800000

#align4
loc_8C10F644:
#data 0x43B40000

#align4
loc_8C10F648:
#data 0x3F000000

#align4
loc_8C10F64C:
#data 0x0000FFFf

#align4
loc_8C10F650:
#data 0x8c1666F8


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
mov.l @(bank10.loc_8c10f7c4,pc),r3
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
bf bank10.loc_8c10f7a4

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
bf bank10.loc_8c10f7a4

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
mov.l @(bank10.loc_8c10f7cc,pc),r0
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

;==============================================
#data 0x0000

#align4
loc_8C10F7BC:
#data 0x8c166728
loc_8c10f7c0:
#data 0x42700000

#align4
loc_8C10F7C4:
#data bank11.loc_8c11E860
loc_8c10f7c8:
#data 0x41200000

#align4
loc_8C10F7CC:
#data 0x8c166730

loc_8c10f7d0:
mov.l r14,@-r15
mov 0x05,r5
mov.l r13,@-r15
mov 0x01,r6
mov.l r12,@-r15
sts.l pr,@-r15
mov.l @(bank10.loc_8c10f86c,pc),r3
jsr @r3
mov 0x00,r4
tst r0,r0
bt/s loc_8c10f85a
mov r0,r14
mov.w @(loc_8C10F864,pc),r0
mov 0x01,r3
mov.l @(loc_8C10F874,pc),r1
mov.l @(bank10.loc_8c10f870,pc),r2
mov.b r3,@(r0,r14)
mov 0x68,r0
mov.l r2,@(0x10,r14)
mov.l @r1,r3
mov r14,r1
add 0x34,r1
mov.l @r3,r2
mov.l @(r0,r2),r3
add 0x1C,r0
mov.l @(bank10.loc_8c10f878,pc),r2
mov.l r3,@(r0,r14)
mov.l @(bank10.loc_8c10f87c,pc),r3
jsr @r3
mov 0x0C,r0
mov.l @(bank10.loc_8c10f880,pc),r5
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
bsr bank10.loc_8c10f508
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

;==============================================
loc_8C10F864:
#data 0x012C

loc_8C10F866:
#data 0x0C07

loc_8C10F868:
#data 0x00CC
#data 0x0000

#align4
loc_8c10f86c:
#data bank04.loc_8c044f12

loc_8c10f870:
#data loc_8c10f894

loc_8C10F874:
#data 0x8C26A904

#align4
loc_8c10f878:
#data bank16.loc_8c1666c8

loc_8c10f87c:
#data bank12.loc_8c1294c8

loc_8c10f880:
#data bank16.loc_8c1666d4

loc_8C10F884:
#data 0x0000FFFF

#align4
loc_8C10F888:
#data 0x47800000

#align4
loc_8C10F88C:
#data 0x43B40000

#align4
loc_8C10F890:
#data 0x3F000000

loc_8c10f894:
#data 0x2FE6
#data 0x6E43
#data 0x2FD6
#data 0x2FC6
#data 0xFFFB
#data 0xFFEB
#data 0xFFDB
#data 0x9376
#data 0x4F22
#data 0x85EE
#data 0x7001
#data 0x81EE
#data 0x85EE
#data 0x3033
#data 0x8B01
#data 0xE000
#data 0x81EE

loc_8c10f8b6:
#data 0xC739
#data 0xDD39
#data 0xFD08
#data 0xC739
#data 0xFE08
#data 0xC739
#data 0xFF08
#data 0x85EE
#data 0xDC34
#data 0x6303
#data 0x435A
#data 0xC737
#data 0xF208
#data 0xF32D
#data 0xF323
#data 0xF3E2
#data 0xF3D3
#data 0xF13C
#data 0xF1F0
#data 0xF13D
#data 0x045A
#data 0x4C0B
#data 0x24D9
#data 0xF30C
#data 0xE078
#data 0xF0FC
#data 0xF2FC
#data 0xF23E
#data 0xFE27
#data 0x85EE
#data 0xF29D
#data 0xF220
#data 0x6303
#data 0x435A
#data 0xF32D
#data 0xF323
#data 0xF3E2
#data 0xF3D3
#data 0xF13C
#data 0xF1F0
#data 0xF13D
#data 0x045A
#data 0x4C0B
#data 0x24D9
#data 0xF30C
#data 0xF0FCE07C
#data 0xF23EF2FC
#data 0x85EEFE27
#data 0x6303F29D
#data 0xF32D435A
#data 0xF3E2F323
#data 0xF13CF3D3
#data 0xF13DF1F0
#data 0x4C0B045A
#data 0xF30C24D9
#data 0xF2FCF0FC
#data 0x9029F23E
#data 0xFE279329
#data 0x700185EF
#data 0x85EF81EF
#data 0x8B183033
#data 0xE000D217
#data 0x81EF420B
#data 0x6103D316
#data 0xE003430B
#data 0x84E480E4
#data 0x2008D214
#data 0xF4288F03
#data 0xF308C713
#data 0xF430

loc_8c10f972:
#data 0xF4E2
#data 0xF4D3E044
#data 0xF43DF4F0
#data 0x23D9035A
#data 0x0E36

loc_8c10f982:
#data 0x4F26
#data 0xFEF9FDF9
#data 0x6CF6FFF9
#data 0x000B6DF6
#data 0x04386EF6
#data 0x02580080

#align4
loc_8c10f998:
#data bank11.loc_8c11e860
#data 0x43B40000
#data 0x0000FFFF
#data 0x47800000
#data 0x3F000000
#data 0x40400000

#align4
loc_8c10f9b0:
#data bank11.loc_8c11e730

loc_8c10f9b4:
#data bank12.loc_8c1292d4

loc_8c10f9b8:
#data bank16.loc_8c1666d8
#data 0x43340000

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
#data 0x4F22
#data 0xD3467FF8
#data 0x2F42E601
#data 0xE5051F51
#data 0xE400430b
#data 0x8D222008
#data 0x907B6403
#data 0xD142E301
#data 0x0434D240
#data 0x1424E074
#data 0x61436312
#data 0x62327134
#data 0x7010032e
#data 0x52F10436
#data 0x42006323
#data 0xD33B323c
#data 0x323C4208
#data 0x430BD33a
#data 0x9065E00c
#data 0x04169163
#data 0x906363F2
#data 0x93601435
#data 0x332C62F2
#data 0x0436

loc_8C10FA2A:
#data 0x7F08
#data 0x000B4F26
#data 0x0009

;==============================================
loc_8C10FA32:
#data 0x2FE6
#data 0x2FD66E43
#data 0xFFEBFFFb
#data 0xFFCBFFDb
#data 0x4F22934e
#data 0x303385Ee
#data 0x904E8B01
#data 0x81Ee

loc_8C10FA4E:
#data 0xC72c
#data 0xFD08DD2e
#data 0xFE08C72b
#data 0xFF08C72b
#data 0x705A85Ee
#data 0xE044405a
#data 0xF3D2F32d
#data 0xF3F0F3E3
#data 0x035AF33d
#data 0x0E3623D9
#data 0xFC08C726
#data 0x630385Ee
#data 0xD325435a
#data 0xF3D2F32d
#data 0xF23CF3E3
#data 0xF23DF2F0
#data 0x430B045a
#data 0xD32124D9
#data 0xF30CE034
#data 0xF0CCF238
#data 0xFE27F23e
#data 0x620385Ee
#data 0xD21D425a
#data 0xF3D2F32d
#data 0xF23CF3E3
#data 0xF23DF2F0
#data 0x420B045a
#data 0xD31924D9
#data 0xF30CE03c
#data 0xF0CCF238
#data 0xFE27F23e
#data 0x700185Ee
#data 0x4F2681Ee
#data 0xFDF9FCF9
#data 0xFFF9FEF9
#data 0x000B6DF6
#data 0x6EF6

;==============================================
loc_8C10FADE:
#data 0x0200
#data 0x0803012c
#data 0x008800Cc
#data 0x00B400C8

#align4
loc_8C10FAEC:
#data bank04.loc_8c044F12

loc_8C10FAF0:
#data loc_8c10F9C0
#data 0x8C26A904

#align4
loc_8C10FAF8:
#data 0x8c166744

loc_8C10FAFC:
#data bank12.loc_8c1294C8
#data 0x47800000
#data 0x43B40000
#data 0x3F000000
#data 0x0000FFFf
#data 0x44548000

#align4
loc_8C10FB14:
#data bank11.loc_8c11E860

loc_8C10FB18:
#data 0x8c166738

loc_8C10FB1C:
#data bank11.loc_8c11E2E0

loc_8C10FB20:
#data 0x8c166740

loc_8C10FB24:
#data 0xE5052FE6
#data 0xE6012FD6
#data 0x4F222FC6
#data 0x430BD315
#data 0x2008E400
#data 0x6E038D1d
#data 0xE3019020
#data 0xD212D113
#data 0xE0700E34
#data 0x63121E24
#data 0x713461E3
#data 0x032E6232
#data 0xD20F7014
#data 0xD30F0E36
#data 0xE00C430b
#data 0xED009010
#data 0xEC02910d
#data 0x0E16

loc_8C10FB6A:
#data 0x65D3
#data 0x64E3BF2f
#data 0x3DC37D01
#data 0x8BF9

loc_8C10FB76:
#data 0x4F26
#data 0x6DF66CF6
#data 0x6EF6000b

;==============================================
#data 0x0805012c
#data 0x000000Cc

#align4
loc_8C10FB88:
#data bank04.loc_8c044F12

loc_8C10FB8C:
#data loc_8c10FA32
#data 0x8C26A904

#align4
loc_8C10FB94:
#data 0x8c166738

loc_8C10FB98:
#data bank12.loc_8c1294C8


loc_8C10FB9C:
rts
nop

;==============================================
#align4
loc_8C10FBA0:
#data 0xE5052FE6
#data 0xE6012FD6
#data 0xD3284F22
#data 0xE400430b
#data 0x8D452008
#data 0x90476E03
#data 0xD126E301
#data 0x0E34D224
#data 0x1E24E078
#data 0x61E36312
#data 0x62327134
#data 0x700C032e
#data 0x0E36923b
#data 0x0E267048
#data 0xD320D21f
#data 0xE00C430b
#data 0xC721D420
#data 0xC721F608
#data 0x63E3F348
#data 0xC720F508
#data 0xF408F362
#data 0xD51AE004
#data 0xF3537340
#data 0xF33DF340
#data 0x2159015a
#data 0xF3462312
#data 0xF362E044
#data 0xF340F353
#data 0x035AF33d
#data 0x0E362359
#data 0xF346E008
#data 0xF353F362
#data 0xDD14F340
#data 0xF33DE048
#data 0x2359035a
#data 0x0E36E500
#data 0x64E34D0b
#data 0x4D0BE501
#data 0xE50264E3
#data 0x64E34D0b

#align4
loc_8C10FC40:
#data 0x6DF64F26
#data 0x6EF6000b

;==============================================
#data 0x080F012c

#align4
loc_8C10FC4C:
#data bank04.loc_8c044F12

loc_8C10FC50:
#data loc_8c10FB9c
#data 0x8C26A904

#align4
loc_8C10FC58:
#data 0x8c16675c

loc_8C10FC5C:
#data bank12.loc_8c1294C8
#data 0x0000FFFf

#align4
loc_8C10FC64:
#data 0x8c166768
#data 0x47800000
#data 0x43B40000
#data 0x3F000000

#align4
loc_8C10FC74:
#data loc_8c10FCF8


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
#data 0x4F22
#data 0x7FF8
#data 0xD313
#data 0xE601
#data 0x1F41
#data 0x2F52
#data 0xE505
#data 0x430B
#data 0xE400
#data 0x2008
#data 0x8D10
#data 0x6403
#data 0x9012
#data 0xE301
#data 0xD20E
#data 0x0434
#data 0x70A0
#data 0x930E
#data 0x1424
#data 0x0436
#data 0x930C
#data 0x52F1
#data 0x900B
#data 0x332C
#data 0x0436
#data 0xE020
#data 0x62F2
#data 0x0424

loc_8c10fd30:
#data 0x7F08
#data 0x4F26
#data 0x000B
#data 0x0009

;==============================================
#data 0x012C
#data 0x0800
#data 0x0088
#data 0x00C8

loc_8c10fd40:
#data 0xA904
#data 0x8C26

loc_8c10fd44:
#data 0x67D4
#data 0x8C16

loc_8c10fd48:
#data 0x6774
#data 0x8C16

loc_8c10fd4c:
#data 0x4F12
#data 0x8C04

loc_8c10fd50:
#data 0xFC78
#data 0x8C10

loc_8C10FD54:
rts
nop

;==============================================
#align4
loc_8C10FD58:
#data 0xD3114F22
#data 0xE601E505
#data 0xE400430b
#data 0x8D142008
#data 0x90156403
#data 0xD10EE301
#data 0x0434D20c
#data 0x63121424
#data 0x900E6143
#data 0x62327134
#data 0xD20A532b
#data 0xD30A0436
#data 0xE00C430b
#data 0x91059007
#data 0x0416

loc_8C10FD92:
#data 0x4F26
#data 0x0009000b

;==============================================
#data 0x0084012c
#data 0x00CC0901

#align4
loc_8C10FDA0:
#data bank04.loc_8c044F12

loc_8C10FDA4:
#data loc_8c10FD54
#data 0x8C26A904

#align4
loc_8C10FDAC:
#data 0x8c166824

loc_8C10FDB0:
#data bank12.loc_8c1294C8

loc_8C10FDB4:
#data 0x933F854e
#data 0x814E7001
#data 0x3033854e
#data 0x63438F02
#data 0x814EE000

#align4
loc_8C10FDC8:
#data 0x7340854e
#data 0x6203D11f
#data 0xC71B425a
#data 0xC71BF208
#data 0xF108F32d
#data 0xF008C71a
#data 0xF313F322
#data 0xF33DF300
#data 0x2219025a
#data 0x2322000b

;==============================================
#align4
loc_8C10FDF0:
#data 0xD3174F22
#data 0xE601E505
#data 0xE400430b
#data 0x8D182008
#data 0x901A6403
#data 0xD114E301
#data 0x0434D212
#data 0x63121424
#data 0x90136143
#data 0x62327134
#data 0x92105321
#data 0x70480436
#data 0xD30F0426
#data 0x430BD20d
#data 0xD10EE00c
#data 0x6312E044
#data 0x0436

loc_8C10FE32:
#data 0x4F26
#data 0x0009000b

;==============================================
#data 0x012C0168
#data 0x08070084
#data 0x47800000
#data 0x43B40000
#data 0x3F000000
#data 0x0000FFFf

#align4
loc_8C10FE50:
#data bank04.loc_8c044F12

loc_8C10FE54:
#data loc_8c10FDB4
#data 0x8C26A904

#align4
loc_8C10FE5C:
#data 0x8c166830

loc_8C10FE60:
#data bank12.loc_8c1294C8

loc_8C10FE64:
#data 0x8c16683c


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
#data 0x64F3
#data 0x4C0B65F3
#data 0x60D07404
#data 0x8804600c
#data 0x85EE8B05
#data 0x435A6303
#data 0xA005F32d
#data 0xF0Fc

loc_8C10FF2A:
#data 0x85Ee
#data 0x6303F0Ec
#data 0xF32D435a

#align4
loc_8C10FF34:
#data 0x64F3F2F8
#data 0xF23E65F3
#data 0x4A0BFF2a
#data 0x7404

loc_8c10ff42:
jsr @r11
nop
tst r0,r0
bt bank10.loc_8c10ff0e

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
#data 0x000001F4

#align4
loc_8C10FF68:
#data bank04.loc_8c044F12

loc_8C10FF6C:
#data loc_8c10FEAa

loc_8C10FF70:
#data 0x8C26A904

#align4
loc_8C10FF74:
#data loc_8c108210

loc_8C10FF78:
#data 0x8C26A95c

#align4
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

#align4
loc_8C10FF90:
#data 0x3C23D70a


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

loc_8C10FFF0:
#data 0x012c

loc_8C10FFF2:
#data 0x0084

loc_8C10FFF4:
#data 0x080f
#data 0x0000

#align4
loc_8C10FFF8:
#data bank04.loc_8c044F12

loc_8C10FFFC:
#data loc_8c10FFD2

loc_8C110000:
#data 0x8C26A904

#align4
loc_8c110004:
mov.w @(0x1C,r14),r0
mov 0x1C,r4
mov.l @(bank10.loc_8c110198,pc),r13
mov r15,r5
mov r0,r3
mov.w @(0x1E,r14),r0
lds r3,fpul
mov r15,r6
muls.w r4,r0
mov 0x1C,r0
mov.l @(bank10.loc_8c11019c,pc),r3
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

;==============================================
#align4
loc_8C110198:
#data 0x8c166840
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
