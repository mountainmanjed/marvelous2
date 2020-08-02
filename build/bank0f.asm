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

loc_8C0F0062:
mov.b @(0x04,r4),r0 	
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov 0x14,r0 ; r0 set to 0x14
mov.w r0,@(0x1C,r4) 	
rts 	
mov.w r0,@(0x1E,r4) 	
;-------------------------------------------------------------------------------

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

#align4
loc_8C0F00A4:
#data 0x70FF85Ef
#data 0x600F81Ef
#data 0x89224011
#data 0xE60184E4
#data 0x7001E400
#data 0x80E4E10a
#data 0xEC0c

loc_8C0F00BE:
#data 0x84E2
#data 0x72186273
#data 0x206A600c
#data 0x40006303
#data 0x4008303c
#data 0x054E302c
#data 0x23386350
#data 0x84558905
#data 0x8802600c
#data 0x90468901
#data 0x0514

loc_8C0F00E6:
#data 0x7404
#data 0x8BE834C2
#data 0x6CF6D225
#data 0x422B54E6
#data 0x6EF6


loc_8C0F00F6:
mov.l @r15+,r12
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

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

loc_8C0F010E:
#data 0x9031
#data 0x035D5546
#data 0x8B032338
#data 0x035C902d
#data 0x89022338

#align4
loc_8C0F0120:
#data 0x000BE002
#data 0x8044
;-------------------------------------------------------------------------------

loc_8C0F0126:
#data 0xD219
#data 0xD119E040
#data 0xE03C814e
#data 0x03156322
#data 0x70018444
#data 0x8044A002
#data 0x0009000b
;-------------------------------------------------------------------------------

#align4
loc_8C0F0140:
#data 0x70FF854e
#data 0x600F814e
#data 0x89074011
#data 0xE1008444
#data 0x7001D20e
#data 0xE03C8044
#data 0x03156322

#align4
loc_8C0F015C:
#data 0x0009000b
;-------------------------------------------------------------------------------

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
#data 0x01A0
#data 0x04110420

#align4
loc_8C0F0178:
#data bank15.loc_8c15FF58

loc_8C0F017C:
#data 0x8C2895F0

#align4
loc_8C0F0180:
#data 0x8C26A518

#align4
loc_8C0F0184:
#data bank05.loc_8c050FE0

loc_8C0F0188:
#data bank15.loc_8c15FF68
#data 0x8C2896B0
#data 0x0000AAAa

#align4
loc_8C0F0194:
#data bank15.loc_8c15FF78


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
;-------------------------------------------------------------------------------

loc_8C0F01DC:
mov.b @(0x04,r4),r0 	
add 0x01,r0
rts 	
mov.b r0,@(0x04,r4) 	
;-------------------------------------------------------------------------------

loc_8C0F01E4:
mov.l @(loc_8C0F01F4,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x0000

#align4
loc_8C0F01EC:
#data bank03.loc_8c0355B2

loc_8C0F01F0:
#data bank05.loc_8c0514D0

loc_8C0F01F4:
#data bank04.loc_8c0450C0

loc_8C0F01F8:
#data 0xE5042FE6
#data 0xD3484F22
#data 0xE6006E43
#data 0x6463430b
#data 0x8D352008
#data 0xD3456403
#data 0x1434917f
#data 0x314C927d
#data 0xD343907c
#data 0x430B14E6
#data 0x907832Ec
#data 0x6143E201
#data 0x04247150
#data 0x804284E2
#data 0x804184E1
#data 0xF3E6E050
#data 0xE054F437
#data 0xF437F3E6
#data 0x03EC906a
#data 0x70010434
#data 0x042402Ec
#data 0x03ECE030
#data 0x725062E3
#data 0xD3350434
#data 0xE00C430b
#data 0xD333E024
#data 0x614302Ec
#data 0x04247134
#data 0x723462E3
#data 0xE00C430b
#data 0xF3E69053
#data 0xF437E038

#align4
loc_8C0F0278:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

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

#align4
loc_8C0F02F4:
#data 0x844154E6
#data 0x881C600c
#data 0x64038D04
#data 0x00096043
#data 0x8B1D881d

#align4
loc_8C0F0308:
#data 0x430BD30d
#data 0xA05054E6
#data 0x00DC0009
#data 0x00C0

loc_8C0F0316:
#data 0x012c
#data 0x041C01A3

loc_8C0F031C:
#data 0x013c
#data 0x0000

#align4
loc_8C0F0320:
#data bank04.loc_8c044F12

loc_8C0F0324:
#data loc_8c0f027e

loc_8C0F0328:
#data bank12.loc_8c129560

loc_8C0F032C:
#data bank12.loc_8c1294C8

loc_8C0F0330:
#data bank15.loc_8c15FF88

loc_8C0F0334:
#data 0x80204040

#align4
loc_8C0F0338:
#data bank03.loc_8c0332E0

loc_8C0F033C:
#data bank0b.loc_8c0bF214

loc_8C0F0340:
#data bank0d.loc_8c0dB578

loc_8C0F0344:
#data 0x50E6914f
#data 0x600C001c
#data 0x8916C880
#data 0x61F352E6
#data 0x7234D326
#data 0xE00C430b
#data 0x65F39044
#data 0xE60151E6
#data 0xF3169741
#data 0xD322E004
#data 0x430BFF37
#data 0xD42154E6
#data 0x8045E003
#data 0xA01AE001
#data 0x8046

loc_8C0F037E:
#data 0x50E6
#data 0x600C8401
#data 0x8B20883a
#data 0xE500D21c
#data 0x54E6420b
#data 0x0009A00f

#align4
loc_8C0F0394:
#data 0x420BD21a
#data 0x912764E3
#data 0x210031Ec
#data 0x2008600e
#data 0x85EE8905
#data 0x81EE70Ff
#data 0x2008600f
#data 0x8B06


loc_8C0F03B2:
mov.b @(0x04,r14),r0 	
add 0x01,r0
mov.b r0,@(0x04,r14) 	
add 0x0C,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0F03C0:
#data 0x85EE9114
#data 0xC90131Ec
#data 0x2100

loc_8C0F03CA:
#data 0x7F0c
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0F03D2:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0F03EC,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0F03E0:
mov.l @(loc_8C0F0404,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x0202
#data 0x0179041c

loc_8C0F03EC:
#data 0x012c
#data 0x0000

#align4
loc_8C0F03F0:
#data bank12.loc_8c1294C8

loc_8C0F03F4:
#data bank10.loc_8c10235c
#data 0x8C26A518

#align4
loc_8C0F03FC:
#data bank0e.loc_8c0eD3E4

loc_8C0F0400:
#data bank03.loc_8c0332E0

loc_8C0F0404:
#data bank04.loc_8c0450C0

loc_8C0F0408:
#data 0xD3144F22
#data 0xE601E50b
#data 0xE400430b
#data 0x8D1B2008
#data 0x901E6403
#data 0xD111E301
#data 0x0434D20f
#data 0x142470C4
#data 0x61436312
#data 0x62327134
#data 0x7094032e
#data 0x0436D20c
#data 0x04267048
#data 0xD30CD20b
#data 0xE00C430b
#data 0x6143D20b
#data 0x7150D309
#data 0xE00C430b

#align4
loc_8C0F0450:
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0F0456:
rts 	
nop 	
;-------------------------------------------------------------------------------
#data 0x012c

#align4
loc_8C0F045C:
#data bank04.loc_8c044F12

loc_8C0F0460:
#data loc_8c0f0456
#data 0x8C26A90c
#data 0x0001081f

#align4
loc_8C0F046C:
#data bank15.loc_8c15FF98

loc_8C0F0470:
#data bank12.loc_8c1294C8

loc_8C0F0474:
#data bank15.loc_8c15FFA4


loc_8C0F0478:
rts 	
nop 	
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

loc_8C0F048E:
#data 0x2FE6
#data 0x2FD6EE00
#data 0x4F22ED06

#align4
loc_8C0F0498:
#data 0x64E3B014
#data 0x3ED37E01
#data 0xEE008BFa
#data 0xED02

loc_8C0F04A6:
#data 0xE500
#data 0x64E3B120
#data 0xB11DE501
#data 0x7E0164E3
#data 0x8BF63ED3
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0F04C0:
#data 0x8C26823c

#align4
loc_8C0F04C4:
#data 0xE50B2FE6
#data 0x6D432FD6
#data 0xD33D4F22
#data 0x430BE601
#data 0x2008E400
#data 0x6E038D6a
#data 0xE501D33a
#data 0x25D8906a
#data 0x1E340E54
#data 0xE43D8D01
#data 0xE446

loc_8C0F04EE:
#data 0xD337
#data 0x95644408
#data 0x96636032
#data 0x024E6002
#data 0x905C945e
#data 0x0E260D47
#data 0x041AD232
#data 0x8442342c
#data 0x6550354c
#data 0x600C364c
#data 0x63036162
#data 0x303C4000
#data 0x655CD32e
#data 0xD02C350c
#data 0x2139E200
#data 0x212B055c
#data 0x8D012118
#data 0x7512655c

#align4
loc_8C0F0534:
#data 0x42006253
#data 0xD0286353
#data 0xD328323c
#data 0x61E34208
#data 0x320C7134
#data 0xE00C430b
#data 0xD1259039
#data 0x0E16D225
#data 0x20D9E001
#data 0x80E261E3
#data 0x0ED4E020
#data 0x902C7174
#data 0xE021034c
#data 0xD3200E34
#data 0x430B1E46
#data 0xD41FE010
#data 0x6103E000
#data 0x81EE65D3
#data 0x24026313
#data 0x24127404
#data 0x24127404
#data 0x24127404
#data 0x24127404
#data 0x24127404
#data 0x64E3B02e
#data 0xB14365D3
#data 0x65D364E3
#data 0x64E3B186
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6A235

#align4
loc_8C0F05B0:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x0084012c
#data 0x041105A4
#data 0x00CC0414

#align4
loc_8C0F05C4:
#data bank04.loc_8c044F12

loc_8C0F05C8:
#data loc_8c0f0CB2
#data 0x8C26A90c
#data 0x8C268340

#align4
loc_8C0F05D4:
#data bank16.loc_8c1604C8
#data 0x07000000

#align4
loc_8C0F05DC:
#data bank15.loc_8c15FFE0

loc_8C0F05E0:
#data bank12.loc_8c1294C8
#data 0x00010C21

#align4
loc_8C0F05E8:
#data bank16.loc_8c160370

loc_8C0F05EC:
#data bank12.loc_8c1294Bc
#data 0x8C28C720

#align4
loc_8C0F05F4:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x7FFC4F22
#data 0xD32E6D53
#data 0x6B43E50b
#data 0x430BE601
#data 0x2008E400
#data 0x6E038D45
#data 0xE301D22a
#data 0x0E349048
#data 0xD02A1E24
#data 0x01DCD228
#data 0x611C6322
#data 0x6032D228
#data 0x031E4108
#data 0x31EC913d
#data 0x61E32132
#data 0x7150D325
#data 0xE00C430b
#data 0xD1249036
#data 0x9C359335
#data 0x70FC0E16
#data 0x0DC733Bc
#data 0x84B20E36
#data 0x80E2D320
#data 0x0C1AE020
#data 0x902A0ED4
#data 0x02CC3C3c
#data 0x0E24E021
#data 0xD21C9026
#data 0x81EF00Cd
#data 0x1EC6901d
#data 0x05EE1EB5
#data 0x420B2F52
#data 0x901C6453
#data 0xD317EE04
#data 0xDB170DCc
#data 0xDC174D08
#data 0x3D3C4D08

#align4
loc_8C0F0690:
#data 0x00094B0b
#data 0x4C0B64D3
#data 0x4E107D04
#data 0x8BF8

loc_8C0F069E:
#data 0x7F04
#data 0x6BF64F26
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x0084012c
#data 0x008800Cc
#data 0x041105A4
#data 0x04C90420

#align4
loc_8C0F06BC:
#data bank04.loc_8c044F12

loc_8C0F06C0:
#data loc_8c0f0F72
#data 0x8C26A90c

#align4
loc_8C0F06C8:
#data bank16.loc_8c1604Ce

loc_8C0F06CC:
#data bank16.loc_8c1601B4

loc_8C0F06D0:
#data bank12.loc_8c1294C8
#data 0x00010C10
#data 0x8C268340

#align4
loc_8C0F06DC:
#data bank10.loc_8c108060

loc_8C0F06E0:
#data bank15.loc_8c15FFB0

loc_8C0F06E4:
#data bank10.loc_8c108086

loc_8C0F06E8:
#data bank10.loc_8c108204

loc_8C0F06EC:
#data 0x2FD62FE6
#data 0x7FFC4F22
#data 0xD33C6D53
#data 0x6E43E50b
#data 0x430BE601
#data 0x2008E400
#data 0x64038D65
#data 0xE301D238
#data 0x2EE89066
#data 0x14240434
#data 0xE53F8D01
#data 0xE548

loc_8C0F071A:
#data 0xD335
#data 0x60324508
#data 0x6002D334
#data 0x905A025e
#data 0x62E30426
#data 0x32DC4200
#data 0x42006123
#data 0x6143321c
#data 0x323C4208
#data 0x7134D32e
#data 0xE00C430b
#data 0x6143D22d
#data 0x7150D32b
#data 0xE00C430b
#data 0xE5009046
#data 0xF39DD12a
#data 0xE0200416
#data 0xE02104E4
#data 0xE02204D4
#data 0x705E0454
#data 0xD226933b
#data 0x0E1A0E37
#data 0x14E63E2c
#data 0xE07CF437
#data 0xE078F437
#data 0xE068F437
#data 0xF437F38d
#data 0xF308C720
#data 0xF437E06c
#data 0xF308C71f
#data 0xF437E070
#data 0x00096053
#data 0x814E9124
#data 0x5646814f
#data 0x2F62D31b
#data 0x6062361c
#data 0x20082039
#data 0xD3198911
#data 0x90136143
#data 0xD2187174
#data 0x14340454
#data 0x430BD317
#data 0x2DD8E010
#data 0x7F048905
#data 0xD3154F26
#data 0x432B6DF6
#data 0x6EF6

loc_8C0F07D2:
#data 0x7F04
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x0084012c
#data 0x05A400Cc
#data 0x00000414

#align4
loc_8C0F07E8:
#data bank04.loc_8c044F12

loc_8C0F07EC:
#data loc_8c0f0FDc
#data 0x8C26A90c

#align4
loc_8C0F07F4:
#data bank16.loc_8c160100

loc_8C0F07F8:
#data bank12.loc_8c1294C8

loc_8C0F07FC:
#data bank16.loc_8c1601B4
#data 0x00010C11
#data 0x8C268340
#data 0x46AAAA00
#data 0x472AAA00
#data 0x07000000

#align4
loc_8C0F0814:
#data loc_8c0f0478

loc_8C0F0818:
#data bank16.loc_8c160360

loc_8C0F081C:
#data bank12.loc_8c1294Bc

loc_8C0F0820:
#data bank04.loc_8c0450C0

loc_8C0F0824:
#data 0x4F222FE6
#data 0x6E537FFc
#data 0xE50BD34b
#data 0xE6012F42
#data 0xE400430b
#data 0x8D352008
#data 0xD3486403
#data 0x9084E501
#data 0x0454D248
#data 0x63E31434
#data 0x4308D045
#data 0x6022013e
#data 0x410862E3
#data 0x22596302
#data 0x6323313c
#data 0x42006012
#data 0x323C9174
#data 0x4208D341
#data 0x2102314c
#data 0xD03E6143
#data 0x320C7134
#data 0xE00C430b
#data 0xD13D956a
#data 0x90660E57
#data 0x0416D33c
#data 0x051AE020
#data 0x906204E4
#data 0x025C353c
#data 0x0424E021
#data 0x1456905f
#data 0x142562F2
#data 0x61F2925a
#data 0x0426321c

#align4
loc_8C0F08A8:
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0F08B0:
#data 0x4F222FE6
#data 0x6E537FFc
#data 0xE50BD328
#data 0xE6012F42
#data 0xE400430b
#data 0x8D3E2008
#data 0x90406403
#data 0xD126E300
#data 0x0434D22a
#data 0x14247010
#data 0x61E36312
#data 0x032E6232
#data 0x9035E201
#data 0x043622E9
#data 0x42086323
#data 0x41214200
#data 0x6313323c
#data 0x313C4100
#data 0x4208D321
#data 0xD31C323c
#data 0x321C4108
#data 0x71346143
#data 0xE00C430b
#data 0xD11D9021
#data 0x04169520
#data 0xF308C71c
#data 0x0E57E050
#data 0xE058F437
#data 0xF437F39d
#data 0xF437E054
#data 0x051AE020
#data 0x04E4D312
#data 0x353C9011
#data 0x025C9110
#data 0x0424E021
#data 0x1456900d
#data 0x312C62F2
#data 0x0416

loc_8C0F0946:
#data 0x7F04
#data 0x000B4F26
#data 0x012C6EF6
#data 0x00CC0084
#data 0x041105A4
#data 0x00C80088

#align4
loc_8C0F095C:
#data bank04.loc_8c044F12

loc_8C0F0960:
#data loc_8c0f10Fe

loc_8C0F0964:
#data bank16.loc_8c160130
#data 0x8C26A90c

#align4
loc_8C0F096C:
#data bank16.loc_8c160148

loc_8C0F0970:
#data bank12.loc_8c1294C8
#data 0x00010C21
#data 0x8C268340

#align4
loc_8C0F097C:
#data loc_8c0f114c

loc_8C0F0980:
#data bank16.loc_8c160160
#data 0x00010811
#data 0x40A00000

#align4
loc_8C0F098C:
#data 0x6E532FE6
#data 0xE50B2FD6
#data 0xD3474F22
#data 0xE6016D43
#data 0xE400430b
#data 0x8D362008
#data 0x907E6403
#data 0xD144E301
#data 0x0434D242
#data 0x14247014
#data 0x61436312
#data 0x62327134
#data 0x9073032e
#data 0x04369273
#data 0x84E232Ec
#data 0x600C6220
#data 0x4000622c
#data 0xD03B320c
#data 0x632372Ff
#data 0x323C4200
#data 0x4208D339
#data 0x430B320c
#data 0xD337E00c
#data 0x71686143
#data 0xE00C430b
#data 0xD135905c
#data 0xE0200416
#data 0x043403Dc
#data 0x02EC9055
#data 0x0424E021
#data 0x14E69053
#data 0x03DE14D5
#data 0xE0000436
#data 0x814e

loc_8C0F0A12:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0F0A1A:
#data 0x2FE6
#data 0x7FFC4F22
#data 0xD3246E53
#data 0x2F42E50b
#data 0x430BE601
#data 0x2008E400
#data 0x64038D35
#data 0xE601D325
#data 0x26E89035
#data 0x14340464
#data 0xE56A8D01
#data 0xE56b

loc_8C0F0A46:
#data 0xD31d
#data 0x61434508
#data 0x60327150
#data 0x6002D31c
#data 0x9027025e
#data 0xD21D0426
#data 0xE00C430b
#data 0xD11C9024
#data 0x0416F48d
#data 0xF447E034
#data 0xF447E038
#data 0x951EC719
#data 0xE03CF308
#data 0x91190E57
#data 0x63F2F437
#data 0x313C9015
#data 0x0416D315
#data 0x051AE020
#data 0x900C04E4
#data 0x025C353c
#data 0x0424E021
#data 0x62F21456
#data 0x1425

loc_8C0F0A9E:
#data 0x7F04
#data 0x000B4F26
#data 0x012C6EF6
#data 0x04110084
#data 0x00C800Cc
#data 0x05A40088

#align4
loc_8C0F0AB4:
#data bank04.loc_8c044F12

loc_8C0F0AB8:
#data loc_8c0f1198
#data 0x8C26A90c

#align4
loc_8C0F0AC0:
#data bank16.loc_8c1601C0

loc_8C0F0AC4:
#data bank12.loc_8c1294C8
#data 0x00010801

#align4
loc_8C0F0ACC:
#data loc_8c0f123c

loc_8C0F0AD0:
#data bank16.loc_8c1601B4
#data 0x00010C11
#data 0xBE000000
#data 0x8C268340

#align4
loc_8C0F0AE0:
#data 0xE6022FE6
#data 0xD3444F22
#data 0x430B6E43
#data 0x2008E50b
#data 0x64038D22
#data 0xE301907c
#data 0x0434D240
#data 0xD341D140
#data 0x84E21424
#data 0x021C600c
#data 0x60326143
#data 0x622C7134
#data 0x42086002
#data 0x906C022e
#data 0x84E20426
#data 0x600CD23a
#data 0x40006303
#data 0xD339303c
#data 0x320C4008
#data 0xE00C430b
#data 0xD2379060
#data 0x14E60426

#align4
loc_8C0F0B38:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0F0B3E:
#data 0x2FE6
#data 0x2FC62FD6
#data 0x7FFC4F22
#data 0x2F626C53
#data 0x233863C1
#data 0x6D438D48
#data 0xE50BD328
#data 0x430BE601
#data 0x2008E400
#data 0x6E038D40
#data 0xE3019044
#data 0x0E34D22a
#data 0xD325D12a
#data 0x84D21E24
#data 0x021C600c
#data 0x603261E3
#data 0x622C7134
#data 0x42086002
#data 0x9034022e
#data 0x84D20E26
#data 0x600CD223
#data 0x40006303
#data 0xD31D303c
#data 0x320C4008
#data 0xE00C430b
#data 0x61E3D21f
#data 0x7150D319
#data 0xE00C430b
#data 0x61E384D2
#data 0x7174D31c
#data 0x901D80E2
#data 0x0E361ED6
#data 0xD31A7004
#data 0x60C10EC6
#data 0x62F281Ee
#data 0x42084208
#data 0xD317323c
#data 0xE010430b
#data 0x64E3BF84
#data 0x03DC900d
#data 0x633CD014
#data 0x03E64308

#align4
loc_8C0F0BE4:
#data 0x4F267F04
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x0084012c
#data 0x01A400Cc

#align4
loc_8C0F0BF8:
#data bank04.loc_8c044F12

loc_8C0F0BFC:
#data loc_8c0f1264

loc_8C0F0C00:
#data bank16.loc_8c1604D4
#data 0x8C26A90c

#align4
loc_8C0F0C08:
#data bank16.loc_8c1601F0

loc_8C0F0C0C:
#data bank12.loc_8c1294C8
#data 0x00010801

#align4
loc_8C0F0C14:
#data loc_8c0f12B0

loc_8C0F0C18:
#data bank16.loc_8c1604D6

loc_8C0F0C1C:
#data bank16.loc_8c160208

loc_8C0F0C20:
#data bank16.loc_8c1601B4
#data 0x00010C11

#align4
loc_8C0F0C28:
#data bank16.loc_8c160390

loc_8C0F0C2C:
#data bank12.loc_8c1294Bc
#data 0x8C28C720

#align4
loc_8C0F0C34:
#data 0x2FE6D354
#data 0x60324F22
#data 0x88405005
#data 0x6E438D34
#data 0xE50BD351
#data 0x430BE601
#data 0x2008E400
#data 0x64038D2c
#data 0xE3019094
#data 0x0434D24d
#data 0xD34ED14d
#data 0x84E21424
#data 0x021C600c
#data 0x622C6032
#data 0x6002D34b
#data 0x022E4208
#data 0x04269085
#data 0x814FE078
#data 0x04367054
#data 0x14E69080
#data 0x84E202Ec
#data 0x600C622c
#data 0x320C4200
#data 0x42006323
#data 0x323CD042
#data 0x4208D342
#data 0x320C6143
#data 0x430B7134
#data 0x906DE00c
#data 0x804700Ec

#align4
loc_8C0F0CAC:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0F0CB2:
#data 0x2FE6
#data 0x7FFC4F22
#data 0x54E66E43
#data 0xE0009363
#data 0x343C2F42
#data 0x6142D238
#data 0x210B2129
#data 0x8B072118
#data 0xD13684E4
#data 0x55E6600c
#data 0x031E4008
#data 0x64E3430b

#align4
loc_8C0F0CE0:
#data 0xB0BC55E6
#data 0x55E664E3
#data 0x7F0464E3
#data 0xA0FF4F26
#data 0x6EF6

loc_8C0F0CF2:
#data 0x9047
#data 0x065C4F22
#data 0x034CE021
#data 0x633C666c
#data 0x893A3360
#data 0xE3208444
#data 0x80447001
#data 0x0434E023
#data 0x636CE000
#data 0x2338814f
#data 0x8D04E021
#data 0x854F0464
#data 0x203BD323
#data 0x814f

loc_8C0F0D26:
#data 0x8452
#data 0xD5224600
#data 0x360C600c
#data 0x46006363
#data 0x363CC720
#data 0x4608F408
#data 0x356CE034
#data 0xF258F346
#data 0xF231E05c
#data 0xF427F243
#data 0xF346E038
#data 0xF256E004
#data 0xF231E060
#data 0xF427F243
#data 0xF346E03c
#data 0xF256E008
#data 0xF243F231
#data 0xD30E6243
#data 0xE0646143
#data 0x71687234
#data 0x430BF427
#data 0xE00c

loc_8C0F0D7A:
#data 0x4F26
#data 0x0009000b
;-------------------------------------------------------------------------------
#data 0x0084012c
#data 0x04140411
#data 0x8C26823c

#align4
loc_8C0F0D8C:
#data bank04.loc_8c044F12

loc_8C0F0D90:
#data loc_8c0f1354

loc_8C0F0D94:
#data bank16.loc_8c1604D8
#data 0x8C26A90c
#data 0x00010801

#align4
loc_8C0F0DA0:
#data bank16.loc_8c160480

loc_8C0F0DA4:
#data bank12.loc_8c1294C8
#data 0x07000000

#align4
loc_8C0F0DAC:
#data bank16.loc_8c1604Dc
#data 0x00008000

#align4
loc_8C0F0DB4:
#data bank15.loc_8c15FFE0
#data 0x42000000

#align4
loc_8C0F0DBC:
#data 0x4F222FE6
#data 0xE15C7FFc
#data 0x31EC6E43
#data 0xE0342F52
#data 0xF2E6F318
#data 0x31ECE160
#data 0xFE27F230
#data 0xF2E6E06c
#data 0xE164F318
#data 0xF23031Ec
#data 0xE03CFE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x401185Ef
#data 0xF48D8F0c
#data 0x85EFD337
#data 0x6403430b
#data 0xF40CC736
#data 0x85EFF308
#data 0xF4329363
#data 0x81EF303c

#align4
loc_8C0F0E10:
#data 0xF3E6E06c
#data 0xF340E038
#data 0xE023FE37
#data 0x73FF03Ec
#data 0x603C0E34
#data 0x8916C880
#data 0xD22DE000
#data 0x61E380E4
#data 0x71349050
#data 0x63F264F2
#data 0x8432044c
#data 0x600C644c
#data 0x340C4400
#data 0x44006343
#data 0xD326343c
#data 0x342C4408
#data 0x430B6243
#data 0xE00c

loc_8C0F0E56:
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0F0E5E:
#data 0x2FE6
#data 0xD4216E43
#data 0x2FD6E004
#data 0x4F226D53
#data 0xE078F346
#data 0xE008FE37
#data 0xE07CF346
#data 0xE00CFE37
#data 0x7074F346
#data 0x9028FE37
#data 0x233803Dd
#data 0xD418890c
#data 0xF346E004
#data 0xFE37E078
#data 0xF346E008
#data 0xFE37E07c
#data 0xF346E00c
#data 0xFE377074

#align4
loc_8C0F0EA4:
#data 0x85EE9317
#data 0x633133Dc
#data 0x89093030
#data 0x03DD9011
#data 0x8B052338
#data 0x03DC900c
#data 0x89012338
#data 0x64D3BEB8

#align4
loc_8C0F0EC4:
#data 0x00DD9007
#data 0x4F2681Ee
#data 0x000B6DF6
#data 0x04006EF6
#data 0x02A00411

#align4
loc_8C0F0ED8:
#data bank11.loc_8c11E860
#data 0x41A00000

#align4
loc_8C0F0EE0:
#data bank15.loc_8c15FFE0

loc_8C0F0EE4:
#data bank12.loc_8c1294C8

loc_8C0F0EE8:
#data bank16.loc_8c160370

loc_8C0F0EEC:
#data bank16.loc_8c160380

loc_8C0F0EF0:
#data 0x035C9068
#data 0x8F062338
#data 0x9064E600
#data 0x4315035d
#data 0x90618901
#data 0x0464

loc_8C0F0F06:
#data 0x905f
#data 0x2338034c
#data 0x90598921
#data 0x2338035c
#data 0x6350892b
#data 0x8B282338
#data 0xE2038452
#data 0x600CD12a
#data 0x3323031c
#data 0x904E8B03
#data 0x2008005c
#data 0x891a

loc_8C0F0F32:
#data 0xD127
#data 0xF246E074
#data 0xF30D415a
#data 0xF427F231
#data 0xF28DF146
#data 0x8B12F215
#data 0x0464903e
#data 0xA00EE074
#data 0xF427

loc_8C0F0F52:
#data 0x9037
#data 0x2228025c
#data 0x90348B09
#data 0x4315035d
#data 0x90318B05
#data 0x0424E201

#align4
loc_8C0F0F68:
#data 0xF39DE074
#data 0xF437

loc_8C0F0F6E:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0F0F72:
#data 0x2FE6
#data 0x2FD66E43
#data 0x4F226143
#data 0x717452E5
#data 0x7274D314
#data 0xE010430b
#data 0x5DE6901d
#data 0xC71203Dd
#data 0xE050F208
#data 0x9316435a
#data 0x33DCF32d
#data 0xFE37F323
#data 0x85EF6331
#data 0x89063033
#data 0x03DC900f
#data 0x89022338
#data 0xBCEB65D3
#data 0x64E3

loc_8C0F0FB6:
#data 0x9006
#data 0x81EF00Dd
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x042001Dc
#data 0x0411012c
#data 0x8C289626
#data 0x3D000000

#align4
loc_8C0F0FD4:
#data bank12.loc_8c1294Bc
#data 0x43100000


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

loc_8C0F1072:
#data 0x9054
#data 0xE0220ED4
#data 0x633C03Ec
#data 0x890933D0
#data 0xD32F62D3
#data 0x61E34208
#data 0x323C4208
#data 0x7174D327
#data 0xE010430b

#align4
loc_8C0F1094:
#data 0x000960D3
#data 0x8B258805
#data 0xFE9DC72a
#data 0xE068FF08
#data 0xFEE0F3E6
#data 0xF33DDB26
#data 0x035A64B1
#data 0x343C4C0b
#data 0xE078F0E3
#data 0xFE07F0F0
#data 0xF3E6E06c
#data 0xF33D64B1
#data 0x4C0B035a
#data 0xF0E3343c
#data 0xF0F0E07c
#data 0xE070FE07
#data 0x64B1F3E6
#data 0x035AF33d
#data 0x343C4C0b
#data 0x901BF0E3
#data 0xFE07F0F0


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
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

loc_8C0F111C:
#data 0x0080

loc_8C0F111E:
#data 0x012c

#align4
loc_8C0F1120:
#data 0x8C28964a

#align4
loc_8C0F1124:
#data bank11.loc_8c11E860

loc_8C0F1128:
#data bank16.loc_8c160220

loc_8C0F112C:
#data bank12.loc_8c1294Bc

loc_8C0F1130:
#data 0x8C289BD2

#align4
loc_8C0F1134:
#data 0x41000000

#align4
loc_8C0F1138:
#data 0x8C289646

#align4
loc_8C0F113C:
#data 0x43100000

#align4
loc_8C0F1140:
#data bank16.loc_8c1602C0
#data 0x8C289BD4
#data 0x3F000000

#align4
loc_8C0F114C:
#data 0xE1009098
#data 0x04144F22
#data 0x55469095
#data 0x2338035d
#data 0x908F8919
#data 0x928FE301
#data 0x84520434
#data 0x6220325c
#data 0xD147600c
#data 0x40086303
#data 0x622C4000
#data 0x6323303c
#data 0x40084200
#data 0xD343323c
#data 0x4208310c
#data 0x6143321c
#data 0x430B7134
#data 0xE00c

loc_8C0F1192:
#data 0x4F26
#data 0x0009000b
;-------------------------------------------------------------------------------

#align4
loc_8C0F1198:
#data 0xE1019072
#data 0x4F229272
#data 0x61430414
#data 0x71345546
#data 0x8452325c
#data 0x600C6220
#data 0x4000622c
#data 0xD037320c
#data 0x632372Ff
#data 0x323C4200
#data 0x4208D333
#data 0x430B320c
#data 0xC733E00c
#data 0xF3085645
#data 0xF266E050
#data 0x004CE020
#data 0x600CF232
#data 0xF42CC801
#data 0xF44D8D01
#data 0xF44d

loc_8C0F11E6:
#data 0xE068
#data 0xF346D22c
#data 0x914AE034
#data 0xF447F430
#data 0x6322854e
#data 0x40214021
#data 0x40216332
#data 0x303C4008
#data 0xE328011e
#data 0x0416903e
#data 0x7001854e
#data 0x854E814e
#data 0x89083037
#data 0x005C9034
#data 0x89042008
#data 0x6020D21f
#data 0x8804600c
#data 0x8905

loc_8C0F122A:
#data 0x9029
#data 0x0434E300
#data 0x432BD31c
#data 0x4F26

loc_8C0F1236:
#data 0x4F26
#data 0x0009000b
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

loc_8C0F1280:
#data 0x012c
#data 0x02A0
#data 0x01400411
#data 0x0084

loc_8C0F128A:
#data 0x0424

#align4
loc_8C0F128C:
#data bank16.loc_8c160160

loc_8C0F1290:
#data bank12.loc_8c1294C8

loc_8C0F1294:
#data bank16.loc_8c1601C0
#data 0x42600000
#data 0x8C26A90c
#data 0x8C2895F0

#align4
loc_8C0F12A4:
#data bank04.loc_8c0450C0

loc_8C0F12A8:
#data bank12.loc_8c1294Bc

loc_8C0F12AC:
#data 0x43100000

#align4
loc_8C0F12B0:
#data 0xE3019047
#data 0x2FD62FE6
#data 0x04345546
#data 0x035C9042
#data 0x8D022338
#data 0x903CE600
#data 0x0464

loc_8C0F12CA:
#data 0x903c
#data 0x035DDD1f
#data 0x8B254315
#data 0x2008854e
#data 0x90358922
#data 0x854E074e
#data 0x435A6371
#data 0xE0506303
#data 0x435AF32d
#data 0xF323F22d
#data 0x902AF437
#data 0x600C005c
#data 0x0EDE4008
#data 0x89072EE8
#data 0x890534E0
#data 0x03EE9020
#data 0x89093730
#data 0x0E649019

#align4
loc_8C0F1310:
#data 0x005C901b
#data 0x4008600c
#data 0x63710D46
#data 0x890D4315

#align4
loc_8C0F1320:
#data 0x00096063
#data 0x900C814e
#data 0x0464D309
#data 0x005C7078
#data 0x4008600c
#data 0x6DF60D66
#data 0x6EF6432b

#align4
loc_8C0F133C:
#data 0x000B6DF6
#data 0x012C6EF6
#data 0x04200411
#data 0x01A400D0
#data 0x8C28C720

#align4
loc_8C0F1350:
#data bank04.loc_8c0450C0

loc_8C0F1354:
#data 0x55469353
#data 0x335C8447
#data 0x30306330
#data 0x904C8B46
#data 0x8047005c
#data 0x2008600c
#data 0x63508940
#data 0x8B3D2338
#data 0xE2009044
#data 0xD322E701
#data 0x84520424
#data 0x600C6632
#data 0x6163207a
#data 0x40006203
#data 0x7118302c
#data 0x021E4008
#data 0x012C9035
#data 0x8B2E2118
#data 0x62638452
#data 0x600C7218
#data 0x6303207a
#data 0x303C4000
#data 0x302C4008
#data 0x90265301
#data 0x2228023c
#data 0x84528B1f
#data 0x72186263
#data 0x207A600c
#data 0x40006303
#data 0x4008303c
#data 0x5302302c
#data 0x023C9017
#data 0x8B102228
#data 0x6211D10b
#data 0x8B014211
#data 0x0474900e

#align4
loc_8C0F13E4:
#data 0x70FF854f
#data 0x600F814f
#data 0x89044015

#align4
loc_8C0F13F0:
#data 0xE200D306
#data 0x432B9004
#data 0x0424

loc_8C0F13FA:
#data 0x000b
#data 0x04110009
#data 0x0277012c
#data 0x8C2896B0
#data 0x8C289BD2

#align4
loc_8C0F140C:
#data bank04.loc_8c0450C0


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
;-------------------------------------------------------------------------------

#align4
loc_8C0F142C:
#data 0xE50B2FE6
#data 0x6D432FD6
#data 0xD32B4F22
#data 0x430BE601
#data 0x2008E400
#data 0x64038D46
#data 0xE301D228
#data 0x9E479046
#data 0x14240434
#data 0xD02662D3
#data 0xD3264208
#data 0x6032012e
#data 0x62020DE7
#data 0x953C4108
#data 0xD223312c
#data 0x0E1A6012
#data 0x314C9135
#data 0x21023E2c
#data 0x35EC84E2
#data 0x600C6550
#data 0x40006103
#data 0x301C655c
#data 0xD01C350c
#data 0x71346143
#data 0x655C055c
#data 0x42006253
#data 0x323C6353
#data 0x4208D318
#data 0xD318323c
#data 0xE00C430b
#data 0xD117901c
#data 0x0416D217
#data 0xD3146143
#data 0x430B7150
#data 0xE020E00c
#data 0x04D4D214
#data 0x900E6143
#data 0x03EC7174
#data 0x0434E021
#data 0x430BD311
#data 0x14E6E010

#align4
loc_8C0F14D0:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x0084012c
#data 0x041105A4
#data 0x000000Cc

#align4
loc_8C0F14E4:
#data bank04.loc_8c044F12

loc_8C0F14E8:
#data loc_8c0f1514

loc_8C0F14EC:
#data bank16.loc_8c1604E4
#data 0x8C26A90c
#data 0x8C268340

#align4
loc_8C0F14F8:
#data bank16.loc_8c16057c

loc_8C0F14FC:
#data bank16.loc_8c1604Fc

loc_8C0F1500:
#data bank12.loc_8c1294C8
#data 0x00010C31

#align4
loc_8C0F1508:
#data bank16.loc_8c160550

loc_8C0F150C:
#data bank16.loc_8c16055c

loc_8C0F1510:
#data bank12.loc_8c1294Bc

loc_8C0F1514:
#data 0x6E432FE6
#data 0x908D2FD6
#data 0x4F222FC6
#data 0x04DC5DE6
#data 0x03ECE021
#data 0x633C644c
#data 0x8D183340
#data 0x84D2EC00
#data 0x45006543
#data 0x600CD242
#data 0x350C61E3
#data 0x45006353
#data 0xD340353c
#data 0x352C4508
#data 0x715C6253
#data 0xE00C430b
#data 0x0E44E021
#data 0x81EEE020
#data 0x000960C3
#data 0x81Ef

loc_8C0F1562:
#data 0x85Ee
#data 0x891A2008
#data 0x881085Ee
#data 0x85EF8B0a
#data 0xD33662E3
#data 0x725C61E3
#data 0xD333303c
#data 0x713481Ef
#data 0xE00C430b

#align4
loc_8C0F1584:
#data 0x85EFD332
#data 0x6403430b
#data 0x9354E050
#data 0x85EEFE07
#data 0x81EE70Ff
#data 0x303C85Ef
#data 0x81Ef

loc_8C0F159E:
#data 0xD42d
#data 0xF346E004
#data 0xFE37E078
#data 0xF346E008
#data 0xFE37E07c
#data 0xF346E00c
#data 0xFE377074
#data 0x03DD9040
#data 0x890C2338
#data 0xE004D425
#data 0xE078F346
#data 0xE008FE37
#data 0xE07CF346
#data 0xE00CFE37
#data 0x7074F346
#data 0xFE37

loc_8C0F15DA:
#data 0x9030
#data 0x233803Dc
#data 0x902D8B05
#data 0x431503Dd
#data 0x902A8901
#data 0x0EC4

loc_8C0F15EE:
#data 0x9028
#data 0x233803Ec
#data 0x90228939
#data 0x233803Dc
#data 0x63D08943
#data 0x8B402338
#data 0xE20384D2
#data 0x600CD114
#data 0x3323031c
#data 0x90118B03
#data 0x200800Dc
#data 0x8932

loc_8C0F161A:
#data 0xD111
#data 0xF2E6E074
#data 0xF30D415a
#data 0xFE27F231
#data 0xF28DF1E6
#data 0x8B2AF215
#data 0x0EC49007
#data 0x0009A016
#data 0x04000411
#data 0x01DC02A0
#data 0x012C0420

#align4
loc_8C0F1644:
#data bank16.loc_8c1604Fc

loc_8C0F1648:
#data bank12.loc_8c1294C8
#data 0x00008000

#align4
loc_8C0F1650:
#data bank11.loc_8c11E2E0

loc_8C0F1654:
#data bank16.loc_8c16055c

loc_8C0F1658:
#data bank16.loc_8c16056c
#data 0x8C289626
#data 0x3D000000

#align4
loc_8C0F1664:
#data 0xA00EE074
#data 0xFE27

loc_8C0F166A:
#data 0x9011
#data 0x222802Dc
#data 0x900E8B09
#data 0x431503Dd
#data 0x900B8B05
#data 0x0E24E201

#align4
loc_8C0F1680:
#data 0xF39DE074
#data 0xFE37

loc_8C0F1686:
#data 0x4F26
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x042001Dc
#data 0x0000012c


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
;-------------------------------------------------------------------------------

#align4
loc_8C0F16B4:
#data 0xE50C2FE6
#data 0xD34E4F22
#data 0xE6016E43
#data 0xE400430b
#data 0x8D312008
#data 0x90866403
#data 0xE500E301
#data 0x0434D249
#data 0x14249082
#data 0x70480456
#data 0x60E30456
#data 0x62030009
#data 0x63034200
#data 0x8042323c
#data 0xD0434208
#data 0xD3434200
#data 0x320C6143
#data 0x430B7134
#data 0xD241E00c
#data 0xD33F6143
#data 0x430B7150
#data 0x9668E00c
#data 0x0E67D33e
#data 0x374C9766
#data 0x363C061a
#data 0x84611466
#data 0x8041E604
#data 0x6453

loc_8C0F1722:
#data 0x7401
#data 0x34632752
#data 0x77048FFb

#align4
loc_8C0F172C:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

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

loc_8C0F175E:
#data 0x8444
#data 0x7001E600
#data 0x903D8044
#data 0x70060465
#data 0x70FC0465
#data 0x700F0465
#data 0x70FF0464
#data 0xE0200464
#data 0x90320464
#data 0x2338035c
#data 0x932F8904
#data 0x00096033
#data 0x0434703f

#align4
loc_8C0F1790:
#data 0x0009000b
;-------------------------------------------------------------------------------

#align4
loc_8C0F1794:
#data 0x2FE69026
#data 0x03ED6E43
#data 0x0E357006
#data 0x02EC700b
#data 0x622C9021
#data 0x3233035c
#data 0x025C8905
#data 0x901BE300
#data 0x90180E24
#data 0x0534

loc_8C0F17BA:
#data 0x9017
#data 0x222802Ec
#data 0x03EC8902
#data 0x0E3473Ff

#align4
loc_8C0F17C8:
#data 0x64E3E020
#data 0xD01102Ec
#data 0x4208622c
#data 0x432B032e
#data 0x012C6EF6
#data 0x05A40084
#data 0x019c

loc_8C0F17E2:
#data 0x0138
#data 0x0525012e
#data 0x01EE00Ff
#data 0x0000013f

#align4
loc_8C0F17F0:
#data 0x8C26823c

#align4
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
#data 0x8C268340

#align4
loc_8C0F180C:
#data 0x8C289608

#align4
loc_8C0F1810:
#data bank16.loc_8c160B00

loc_8C0F1814:
#data bank16.loc_8c160B10


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

loc_8C0F1872:
#data 0x84E5
#data 0x80E57001
#data 0x0ED49055
#data 0x666C06Ec
#data 0x64E3B380
#data 0xE018D32a
#data 0x012C6232
#data 0x84E2E201
#data 0x420C600c
#data 0x89022128
#data 0x420BD227
#data 0xE40a

loc_8C0F189E:
#data 0x60D3
#data 0x81EE0009


loc_8C0F18A4:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------
#data 0x013c

loc_8C0F1928:
#data 0x0096
#data 0x0000

#align4
loc_8C0F192C:
#data bank16.loc_8c160B28

loc_8C0F1930:
#data 0x8C26823c

#align4
loc_8C0F1934:
#data 0x8C2895F0

#align4
loc_8C0F1938:
#data bank04.loc_8c04257c


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
;-------------------------------------------------------------------------------

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

loc_8C0F1A60:
#data 0x0130

loc_8C0F1A62:
#data 0x013d

#align4
loc_8C0F1A64:
#data bank16.loc_8c160B34


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

loc_8C0F1A92:
#data 0x9031
#data 0xDB1AE301
#data 0x223902Ed
#data 0x622F0E25
#data 0x8D312228
#data 0x9028E606
#data 0x600C00Dc
#data 0x892B2038
#data 0xE30A9022
#data 0x0EC5D713
#data 0x0E34700c
#data 0x6372E029
#data 0x2228023c
#data 0x90198902
#data 0x0E24E20b

#align4
loc_8C0F1ACC:
#data 0x8B393463
#data 0xE0186472
#data 0x84E2024c
#data 0x450C600c
#data 0x89312258
#data 0x014CE029
#data 0x8B012118
#data 0xE40CA001

loc_8C0F1AEC:
#data 0xE40d

loc_8C0F1AEE:
#data 0x4B0b
#data 0xA0270009
#data 0x0009

loc_8C0F1AF6:
#data 0x012e
#data 0x02740130
#data 0x0000013c

#align4
loc_8C0F1B00:
#data bank04.loc_8c04257c
#data 0x8C26823c

#align4
loc_8C0F1B08:
#data 0x3473E704
#data 0xE50D8F01
#data 0x6573

loc_8C0F1B12:
#data 0x3463
#data 0xE7088F01
#data 0xE505

loc_8C0F1B1A:
#data 0x3473
#data 0xE20A8F01
#data 0x6563

loc_8C0F1B22:
#data 0x3423
#data 0xE21E8F01
#data 0xE507

loc_8C0F1B2A:
#data 0x3423
#data 0xE2328F01
#data 0x6573

loc_8C0F1B32:
#data 0x3423
#data 0xE2648F01
#data 0xE50e

loc_8C0F1B3A:
#data 0x3423
#data 0xE5098B00

#align4
loc_8C0F1B40:
#data 0x0E54905d

#align4
loc_8C0F1B44:
#data 0x000960C3
#data 0xE02080E5
#data 0x65D3E303
#data 0xB2310E34
#data 0x65D364E3
#data 0x64E3B1F8
#data 0xD128904f
#data 0x600C00Ec
#data 0x031CC90f
#data 0x2338633c
#data 0x2F328D02
#data 0x64334B0b


loc_8C0F1B74:
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

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

loc_8C0F1BFE:
#data 0x013c

#align4
loc_8C0F1C00:
#data bank16.loc_8c160AF0

loc_8C0F1C04:
#data bank16.loc_8c160B44

loc_8C0F1C08:
#data 0x2FD62FE6
#data 0x4F226D43
#data 0x6E53B153
#data 0xB21965E3
#data 0x4F2664D3
#data 0x65E364D3
#data 0x6EF66DF6

#align4
loc_8C0F1C24:
#data 0x6E432FE6
#data 0xE35A2FD6
#data 0x85EE4F22
#data 0x640F6D53
#data 0x70013437
#data 0x81EE8D1d
#data 0x3413E11e
#data 0xE0208B30
#data 0x600C00Ec
#data 0x890E8804
#data 0xB07B65D3
#data 0x200864E3
#data 0x65D38926
#data 0x64E3B0A2
#data 0x89212008
#data 0xB0CF65D3
#data 0x200864E3
#data 0x891c

loc_8C0F1C6A:
#data 0x4F26
#data 0x64E365D3
#data 0xA0406DF6
#data 0x6EF6

loc_8C0F1C76:
#data 0x65D3
#data 0x64E3B168
#data 0x00ECE020
#data 0x8804600c
#data 0xE0008905
#data 0xE02080E5
#data 0xA009E301
#data 0x0E34

loc_8C0F1C92:
#data 0x84E5
#data 0x64E365D3
#data 0x80E57001
#data 0x6DF64F26
#data 0x6EF6A004

#align4
loc_8C0F1CA4:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0F1CAC:
#data 0x6320D21a
#data 0x89072338
#data 0x6053E500
#data 0x80450009
#data 0x0454E020
#data 0x0454E021

#align4
loc_8C0F1CC4:
#data 0x0009000b
;-------------------------------------------------------------------------------

#align4
loc_8C0F1CC8:
#data 0x4F222FE6
#data 0x6E437FFc
#data 0x84E52F52
#data 0x8B052008
#data 0x700184E5
#data 0x65F280E5
#data 0x64E3B134

#align4
loc_8C0F1CE4:
#data 0x64E365F2
#data 0x4F267F04
#data 0x6EF6AFDe


loc_8C0F1CF0:
mov.l @(loc_8C0F1D1C,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0F1CF6:
#data 0xD608
#data 0x600C6060
#data 0x8B098804
#data 0x63638442
#data 0x600C734e
#data 0x303C4000
#data 0xE7026601
#data 0x89053673

#align4
loc_8C0F1D14:
#data 0xE001000b
;-------------------------------------------------------------------------------
#data 0x8C2895F0

#align4
loc_8C0F1D1C:
#data bank04.loc_8c0450C0

loc_8C0F1D20:
#data 0x93909090
#data 0x70020465
#data 0x024D335c
#data 0xE5006331
#data 0x0425223b
#data 0x00096053
#data 0x814E8045
#data 0x0474E020
#data 0x00096053
#data 0x0009000b
;-------------------------------------------------------------------------------

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

#align4
loc_8C0F1D60:
#data 0x20088443
#data 0xE03E8B0b
#data 0x84D2034c
#data 0x3300600c
#data 0x52428B05
#data 0x89022228
#data 0xB0E765D3
#data 0x64E3

loc_8C0F1D7E:
#data 0x65D3
#data 0x64E3B0E4
#data 0x6043E400
#data 0x80E50009
#data 0x81EEE305
#data 0x0E34E020
#data 0x00096043


loc_8C0F1D98:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0F1DA0:
#data 0x4F22D32b
#data 0x600C6030
#data 0x8B098804
#data 0x005C904c
#data 0x881B600c
#data 0x90488B04
#data 0x600C005c
#data 0x8B02881b

#align4
loc_8C0F1DC0:
#data 0x000B4F26
#data 0xE001
;-------------------------------------------------------------------------------

loc_8C0F1DC6:
#data 0x903f
#data 0x025CE601
#data 0x05247001
#data 0x903BE500
#data 0x60530464
#data 0xD11E0009
#data 0x8045E303
#data 0xE020814e
#data 0xE0180434
#data 0x032C6212
#data 0x600C8442
#data 0x2368460c
#data 0xD3188902
#data 0xE40B430b

#align4
loc_8C0F1DFC:
#data 0x4F26E000
#data 0x0009000b
;-------------------------------------------------------------------------------

#align4
loc_8C0F1E04:
#data 0x4F22D312
#data 0x600C6030
#data 0x8B038804
#data 0x034C901d
#data 0x8B022338

#align4
loc_8C0F1E18:
#data 0x000B4F26
#data 0xE001
;-------------------------------------------------------------------------------

loc_8C0F1E1E:
#data 0xE500
#data 0x70FD0454
#data 0x0434E302
#data 0x00096053
#data 0xE3038045
#data 0xE020814e
#data 0xD3080434
#data 0xE40E430b
#data 0x4F26E000
#data 0x0009000b
;-------------------------------------------------------------------------------
#data 0x0264012e
#data 0x01D101D0
#data 0x013F013c

#align4
loc_8C0F1E50:
#data 0x8C2895F0
#data 0x8C26823c

#align4
loc_8C0F1E58:
#data bank04.loc_8c04257c

loc_8C0F1E5C:
#data 0x4F22D343
#data 0x600C6030
#data 0x8B0F8804
#data 0xE6019076
#data 0x709A025c
#data 0x4201622c
#data 0x024C462c
#data 0x2268622c
#data 0x906C8B04
#data 0x035DE220
#data 0x8B023327

#align4
loc_8C0F1E88:
#data 0x000B4F26
#data 0xE001
;-------------------------------------------------------------------------------

loc_8C0F1E8E:
#data 0x9065
#data 0xE500E30c
#data 0x226B024c
#data 0x70FE0424
#data 0x60530434
#data 0x80450009
#data 0x814EE303
#data 0x0434E020
#data 0x430BD330
#data 0xE000E40f
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0F1EBA:
#data 0x9050
#data 0x2338034c
#data 0x934E8B16
#data 0x904BE601
#data 0x024D335c
#data 0x223B6331
#data 0x84420425
#data 0xD027650c
#data 0x055D4500
#data 0x89093567
#data 0x8B032558
#data 0x034D903e
#data 0x043570Fa

#align4
loc_8C0F1EEC:
#data 0x04649037

#align4
loc_8C0F1EF0:
#data 0xE000000b
;-------------------------------------------------------------------------------

#align4
loc_8C0F1EF4:
#data 0x04559037
#data 0x000BE001
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0F1EFE:
#data 0xC71e
#data 0xE034F508
#data 0xE070F346
#data 0xF431F446
#data 0xF434F38d
#data 0x84458B09
#data 0x80457001
#data 0xF346E034
#data 0xF246E070
#data 0xF42CF231
#data 0xF452

loc_8C0F1F26:
#data 0xF453
#data 0xF308C714
#data 0x8B08F345
#data 0xF208C713
#data 0x8B04F425
#data 0xF346E034
#data 0xF446E070
#data 0xF431

loc_8C0F1F42:
#data 0xE034
#data 0xF340F346
#data 0xF437000b
;-------------------------------------------------------------------------------

loc_8C0F1F4C:
mov.w @(loc_8C0F1F68,pc),r0 ; r0 set to 0xD4
mov 0x00,r5 ; r5 set to 0x00
mov.l r5,@(r0,r4) 	
add 0x04,r0 ; r0 set to 0xD8
rts 	
mov.l r5,@(r0,r4) 	
;-------------------------------------------------------------------------------
#data 0x042001A4
#data 0x013D013e
#data 0x02640130
#data 0x012E0134

loc_8C0F1F68:
#data 0x00D4
#data 0x0000
#data 0x8C2895F0

#align4
loc_8C0F1F70:
#data bank04.loc_8c04257c
#data 0x8C28963e
#data 0x40800000
#data 0x3D000000
#data 0xBD000000

#align4
loc_8C0F1F84:
#data 0xD047E30f
#data 0x46082639
#data 0xC746F666
#data 0x8452F408
#data 0x2008F54c
#data 0xF4618F05
#data 0xF708C743
#data 0xF561F57c
#data 0xF47c

loc_8C0F1FA6:
#data 0xE034
#data 0xE070F457
#data 0xC740F447
#data 0xE038F308
#data 0xF437A04a

#align4
loc_8C0F1FB8:
#data 0x2FD62FE6
#data 0x7FF04F22
#data 0xD13C6353
#data 0x6EF32F52
#data 0x7E048432
#data 0x6D43D23a
#data 0x4008600c
#data 0x2F36031e
#data 0x2F26D338
#data 0x64E3430b
#data 0x95587F08
#data 0xE400E608
#data 0xE70035Dc

#align4
loc_8C0F1FEC:
#data 0x000960E3
#data 0x73D0034c
#data 0x633E2530
#data 0x8D014311
#data 0x77017401

#align4
loc_8C0F2000:
#data 0x8FF33462
#data 0x475A7501
#data 0x8D044711
#data 0xD32CF32d
#data 0xF20D435a
#data 0xF320

loc_8C0F2016:
#data 0xC72b
#data 0xF20863F2
#data 0xF3228432
#data 0xF43C2008
#data 0xF44D8D0b
#data 0xD1279036
#data 0x415A00Dc
#data 0xD11C600c
#data 0x4008C90f
#data 0xF416F30d
#data 0xF430

loc_8C0F203E:
#data 0xE064
#data 0x7F10FD47
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

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

#align4
loc_8C0F208C:
#data 0xE1009008
#data 0x0416


loc_8C0F2092:
rts 	
nop 	
;-------------------------------------------------------------------------------
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
#data 0x0000

#align4
loc_8C0F20A4:
#data bank16.loc_8c160AB0
#data 0x42200000
#data 0xC2200000
#data 0x40A00000
#data 0x8C28965c

#align4
loc_8C0F20B8:
#data bank13.loc_8c13b794

loc_8C0F20BC:
#data bank12.loc_8c129740
#data 0x4F800000
#data 0x3FE00000
#data 0xC1C00000

#align4
loc_8C0F20CC:
#data bank16.loc_8c160A70

loc_8C0F20D0:
#data bank16.loc_8c160AF0

loc_8C0F20D4:
#data 0x8C26823c

#align4
loc_8C0F20D8:
#data bank16.loc_8c160648

loc_8C0F20DC:
#data 0xF508C74b
#data 0xF408C74b
#data 0x20088452
#data 0xC74A8B03
#data 0xC74AF508
#data 0xF408

loc_8C0F20F2:
#data 0xE034
#data 0xE070F457
#data 0xC748F447
#data 0xE038F308
#data 0xF437000b
;-------------------------------------------------------------------------------

#align4
loc_8C0F2104:
#data 0x2FD62FE6
#data 0x7FFC4F22
#data 0x6E439076
#data 0xD2436DF3
#data 0x2F3603Ed
#data 0x2F26D342
#data 0x64D3430b
#data 0x916D7F08
#data 0x946AE000
#data 0x6613E703
#data 0x34EC762f

#align4
loc_8C0F2130:
#data 0x331C03Dc
#data 0x62402430
#data 0x4211622c
#data 0x70018D01
#data 0x2460

loc_8C0F2142:
#data 0x3073
#data 0x74018FF4
#data 0xE200905b
#data 0x0E36D336
#data 0x0E267004
#data 0x4F267F04
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

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

loc_8C0F21EA:
#data 0xD31a
#data 0xF6ECE064
#data 0x430BF5Dc
#data 0xF4C6


loc_8C0F21F6:
mov.w @(loc_8C0F21FE,pc),r13 ; r13 set to 0x19c
bra loc_8C0F22F4
add r12,r13
#data 0x012e

loc_8C0F21FE:
#data 0x019c
#data 0x00D0

loc_8C0F2202:
#data 0x00D4

loc_8C0F2204:
#data 0x012c

loc_8C0F2206:
#data 0x0088

loc_8C0F2208:
#data 0x00D8
#data 0x0000
#data 0x42200000
#data 0x41800000
#data 0xC2800000
#data 0xC2200000
#data 0x40A00000

#align4
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

#align4
loc_8C0F2248:
#data bank16.loc_8c1605F0

loc_8C0F224C:
#data 0x8C26A90c

#align4
loc_8C0F2250:
#data bank11.loc_8c1201E0

loc_8C0F2254:
#data bank12.loc_8c1210B0

loc_8C0F2258:
#data 0xE004D33c
#data 0xF5ECF6Ec
#data 0xF4E6430b
#data 0x200884E2
#data 0x84E2890e
#data 0x20A9D338
#data 0x430B4008
#data 0x84E2048e
#data 0x20A9D336
#data 0x430B4008
#data 0xD235048e
#data 0xF40C420b

#align4
loc_8C0F2288:
#data 0xF5FCD334
#data 0x430BF6Fc
#data 0x84E1F4Fc
#data 0x8F174011
#data 0x62D069B2
#data 0x8B114211
#data 0x421562E0
#data 0x64D08B07
#data 0x609265E0
#data 0xD32C4408
#data 0x430B75Ff
#data 0x044e

loc_8C0F22B6:
#data 0x60B2
#data 0x600264D0
#data 0x4408D329
#data 0x044E430b

#align4
loc_8C0F22C4:
#data 0x7D01A015

#align4
loc_8C0F22C8:
#data 0x431563E0
#data 0x84E38B08
#data 0x640365E0
#data 0xD3226092
#data 0x440875Ff
#data 0x044E430b

#align4
loc_8C0F22E0:
#data 0xD22084E3
#data 0x60B26403
#data 0x63024408
#data 0x420B343c
#data 0x6442

loc_8C0F22F2:
#data 0x7E08


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
;-------------------------------------------------------------------------------
#data 0x000B7FE0
#data 0x00007F20

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

loc_8C0F236C:
#data 0xE14DD327
#data 0x60324F22
#data 0x8803001c
#data 0xB0078901
#data 0xE400

loc_8C0F237E:
#data 0xB005
#data 0xB053E401
#data 0xE401E400
#data 0x4F26A050

#align4
loc_8C0F238C:
#data 0x7FFC4F22
#data 0xE50BD31f
#data 0xE6012F42
#data 0xE400430b
#data 0x8D2D2008
#data 0x902F6403
#data 0xD51CE301
#data 0x0434D21a
#data 0x14247028
#data 0x62326352
#data 0x9026012e
#data 0x61430416
#data 0x713462F2
#data 0x42006323
#data 0xD315323c
#data 0x323C4208
#data 0x430BD314
#data 0x9019E00c
#data 0xD20DD113
#data 0xE0200416
#data 0xE14D63F2
#data 0x60220434
#data 0x8803001c
#data 0xD00F8B08
#data 0x63521404
#data 0x6232900b
#data 0x9206002e
#data 0x2202324c

#align4
loc_8C0F23FC:
#data 0x4F267F04
#data 0x0009000b
;-------------------------------------------------------------------------------
#data 0x0084012c
#data 0x017C00Cc
#data 0x8C26823c

#align4
loc_8C0F2410:
#data bank04.loc_8c044F12

loc_8C0F2414:
#data loc_8c0f24Da
#data 0x8C26A90c

#align4
loc_8C0F241C:
#data bank16.loc_8c160EE4

loc_8C0F2420:
#data bank12.loc_8c1294C8
#data 0x00010801

#align4
loc_8C0F2428:
#data loc_8c0f2666

loc_8C0F242C:
#data 0x4F222FE6
#data 0x6E437FFc
#data 0xD33B9470
#data 0x926E0E47
#data 0x041AD13a
#data 0x2F42343c
#data 0x6042342c
#data 0x20082019
#data 0xD2378B41
#data 0xE601E50b
#data 0xE400420b
#data 0x8D3A2008
#data 0x905D6403
#data 0xD134E201
#data 0x0424D332
#data 0x14347054
#data 0x61436212
#data 0x63227134
#data 0x420062E3
#data 0x9050033e
#data 0x63E30436
#data 0xD32D323c
#data 0x323C4208
#data 0x430BD32c
#data 0x9047E00c
#data 0xD12BE500
#data 0xE0200416
#data 0x605304E4
#data 0xD2290009
#data 0xD3266143
#data 0x814E7150
#data 0x430B814f
#data 0x9038E00c
#data 0xF437F39d
#data 0xF437E07c
#data 0xF437E078
#data 0xF38DE068
#data 0xC721F437
#data 0xE06CF308
#data 0xC720F437
#data 0xE070F308
#data 0xF437

loc_8C0F24D2:
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------
#data 0x041405A4
#data 0x012c

loc_8C0F251E:
#data 0x0084
#data 0x008000Cc
#data 0x8C268340
#data 0x07000000

#align4
loc_8C0F252C:
#data bank04.loc_8c044F12

loc_8C0F2530:
#data loc_8c0f255c

loc_8C0F2534:
#data 0x8C26A90c

#align4
loc_8C0F2538:
#data bank16.loc_8c160EFc

loc_8C0F253C:
#data bank12.loc_8c1294C8
#data 0x00010C11

#align4
loc_8C0F2544:
#data bank16.loc_8c160F20
#data 0x46AAAA00
#data 0x472AAA00

#align4
loc_8C0F2550:
#data 0x8C289630

#align4
loc_8C0F2554:
#data bank12.loc_8c129128

loc_8C0F2558:
#data bank12.loc_8c1292D4

loc_8C0F255C:
#data 0xE0202FE6
#data 0x6E432FD6
#data 0xEC052FC6
#data 0x2FA62FB6
#data 0xFFEBFFFb
#data 0x0DEC4F22
#data 0x6DDCD03e
#data 0x3DC30DDc
#data 0x6DC38B00

#align4
loc_8C0F2580:
#data 0x3DC3DB3d
#data 0x8B0CDA3b
#data 0x64A14B0b
#data 0xF308C73b
#data 0xF208C73b
#data 0xF033E054
#data 0xFE07F020
#data 0xA006E050
#data 0xFE07

loc_8C0F25A2:
#data 0xD238
#data 0xD33861E3
#data 0x430B7150
#data 0xE00c

loc_8C0F25AE:
#data 0xC737
#data 0xFE083DC3
#data 0x8F22FF9d
#data 0xE068FFF0
#data 0xF3E664A1
#data 0x035AF33d
#data 0x343C4B0b
#data 0xE078F0F3
#data 0xFE07F0E0
#data 0xF3E6E06c
#data 0xF33D64A1
#data 0x4B0B035a
#data 0xF0F3343c
#data 0xF0E0E07c
#data 0xE070FE07
#data 0x64A1F3E6
#data 0x035AF33d
#data 0x343C4B0b
#data 0x9038F0F3
#data 0xA01FF0E0
#data 0xFE07

loc_8C0F25FE:
#data 0xD224
#data 0x64214B0b
#data 0xD423F0F3
#data 0x6543E004
#data 0xF5567510
#data 0xE078F646
#data 0xF40CF651
#data 0xF04CF4E0
#data 0xFE57F56e
#data 0xF646E008
#data 0xE07CF556
#data 0xF56EF651
#data 0xE00CFE57
#data 0xF556F646
#data 0xF6517074
#data 0xFE57F56e

#align4
loc_8C0F263C:
#data 0x8B003DC3
#data 0xED09

loc_8C0F2642:
#data 0xD315
#data 0x90114D08
#data 0x62226232
#data 0x01DE3D2c
#data 0x0E16900d
#data 0xFEF94F26
#data 0x6AF6FFF9
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0F2666:
rts 	
nop 	
;-------------------------------------------------------------------------------
#data 0x0080
#data 0x00840180
#data 0x8C28964a
#data 0x8C289BD4

#align4
loc_8C0F2678:
#data bank11.loc_8c11E860
#data 0x41800000
#data 0x3FA00000

#align4
loc_8C0F2684:
#data bank16.loc_8c160F20

loc_8C0F2688:
#data bank12.loc_8c1294C8
#data 0x3F000000
#data 0x8C289BD0

#align4
loc_8C0F2694:
#data bank16.loc_8c160F2c
#data 0x8C26A90c


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

#align4
loc_8C0F2718:
#data 0x0466904a


loc_8C0F271C:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

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

loc_8C0F274C:
#data 0xE409


loc_8C0F274E:
mov.l @(loc_8C0F27D8,pc),r3 ; r3 set to 0x8C04257c
jmp @r3
lds.l @r15+,pr 	

loc_8C0F2754:
lds.l @r15+,pr 	
rts 	
nop 	
;-------------------------------------------------------------------------------

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

loc_8C0F27AA:
#data 0x012c

loc_8C0F27AC:
#data 0x0084

loc_8C0F27AE:
#data 0x00Cc

loc_8C0F27B0:
#data 0x00D0
#data 0x0000

#align4
loc_8C0F27B4:
#data bank04.loc_8c044F12

loc_8C0F27B8:
#data loc_8c0f275a

loc_8C0F27BC:
#data 0x8C26A90c

#align4
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

loc_8C0F282A:
#data 0xD12b
#data 0xE428410b

#align4
loc_8C0F2830:
#data 0x04ECE020
#data 0x2448644c
#data 0x60438903
#data 0x88010009
#data 0x8B01

loc_8C0F2842:
#data 0xB0B1
#data 0x64E3

loc_8C0F2846:
#data 0xF3C8
#data 0x85EEF4D8
#data 0xF24CF341
#data 0x435A6303
#data 0xF3F3E034
#data 0xF23EF02d
#data 0xE008FE27
#data 0xF4D6F3C6
#data 0xF34185Ee
#data 0x6303F24c
#data 0xE03C435a
#data 0xF3F3E30f
#data 0xF23EF02d
#data 0x85EEFE27
#data 0x81EE7001
#data 0x3033600f
#data 0xA0898901
#data 0x0009

loc_8C0F288A:
#data 0x84E4
#data 0xD31361E3
#data 0x700162C3
#data 0xE00080E4
#data 0x713481Ee
#data 0x700185Ef
#data 0x430B81Ef
#data 0xA079E00c
#data 0x0009


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

loc_8C0F28C8:
#data 0x00D0

loc_8C0F28CA:
#data 0x012c

#align4
loc_8C0F28CC:
#data bank03.loc_8c0310F2

loc_8C0F28D0:
#data 0x8C2896B0

#align4
loc_8C0F28D4:
#data loc_8c0f2EE4

loc_8C0F28D8:
#data bank04.loc_8c04257c

loc_8C0F28DC:
#data bank12.loc_8c1294C8

loc_8C0F28E0:
#data 0x70016007
#data 0x6007C901
#data 0x7001

loc_8C0F28EA:
#data 0x405a
#data 0xF008C74d
#data 0xF2D8E034
#data 0xF23EF32d
#data 0xFE27


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

loc_8C0F2936:
#data 0xE020
#data 0x644C04Ec
#data 0x89032448
#data 0x00096043
#data 0x8B018801

#align4
loc_8C0F2948:
#data 0x64E3B02e

#align4
loc_8C0F294C:
#data 0xF4D8F3C8
#data 0xF34185Ee
#data 0x6303F24c
#data 0xE034435a
#data 0xF02DF3F3
#data 0xFE27F23e
#data 0xF3C6E008
#data 0x85EEF4D6
#data 0xF24CF341
#data 0x435A6303
#data 0xE30FE03c
#data 0xF02DF3F3
#data 0xFE27F23e
#data 0x700185Ee
#data 0x600F81Ee
#data 0x8B073033


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
;-------------------------------------------------------------------------------

#align4
loc_8C0F29A8:
#data 0xE50B2FE6
#data 0xD3214F22
#data 0xE6016E43
#data 0xE400430b
#data 0x8D1C2008
#data 0x902D6403
#data 0x912DE301
#data 0x902A0434
#data 0xD21B314c
#data 0x62E31424
#data 0x723403Ee
#data 0x70480436
#data 0xD31800Ee
#data 0x2102CB20
#data 0x71346143
#data 0xE00C430b
#data 0x02EEE044
#data 0xC7140426
#data 0xE074F308
#data 0xF437

loc_8C0F29F6:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------
#data 0x0084012c
#data 0x000000Cc
#data 0x3E4CCCCd

#align4
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
#data 0x3F000000

#align4
loc_8C0F2A44:
#data 0x3DCCCCCd


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

loc_8C0F2A98:
#data 0xEB03


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

loc_8C0F2AAC:
#data 0x0414

loc_8C0F2AAE:
#data 0x0259

#align4
loc_8C0F2AB0:
#data 0x8C26823c

#align4
loc_8C0F2AB4:
#data 0x07000000

#align4
loc_8C0F2AB8:
#data 0x8C2896B0

#align4
loc_8C0F2ABC:
#data bank03.loc_8c039F78

loc_8C0F2AC0:
#data 0x649284E2
#data 0xDC3E600c
#data 0x40006303
#data 0x7418303c
#data 0x4C0B4008
#data 0x84E2044e
#data 0x600C6492
#data 0x40006303
#data 0x7418303c
#data 0x340C4008
#data 0x54414C0b
#data 0x649284E2
#data 0x6303600c
#data 0x303C4000
#data 0x40087418
#data 0x4C0B340c
#data 0x5442

loc_8C0F2B02:
#data 0x4B15
#data 0x8F456CD3
#data 0x68D3

loc_8C0F2B0A:
#data 0x84E2
#data 0x62926DC3
#data 0x600C4D08
#data 0x40006303
#data 0x4008303c
#data 0x302C7218
#data 0x60B30DDe
#data 0x88010009
#data 0x2CC88B01
#data 0x890d

loc_8C0F2B2E:
#data 0x9043
#data 0x03ECE100
#data 0x633C9041
#data 0x622C02Dc
#data 0x321E3127
#data 0x4221E101
#data 0x2318412c
#data 0x8921

loc_8C0F2B4A:
#data 0xD31e
#data 0xE601E50b
#data 0xE400430b
#data 0x8D1A2008
#data 0xD31B6403
#data 0x14E61434
#data 0x804284E2
#data 0x804184D1
#data 0x03DC9028
#data 0x0434E022
#data 0x02DC9023
#data 0x708C0424
#data 0x03ED14D5
#data 0xE0200435
#data 0xE02104A4
#data 0xE3060484
#data 0x0435E026
#data 0x7801

loc_8C0F2B8E:
#data 0x7C01
#data 0x8BBA3CB3


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
;-------------------------------------------------------------------------------

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
#data 0x01A40329
#data 0x00000411

#align4
loc_8C0F2BC0:
#data bank03.loc_8c039F9a

loc_8C0F2BC4:
#data bank04.loc_8c044F12

loc_8C0F2BC8:
#data loc_8c0f2BA6

loc_8C0F2BCC:
#data bank16.loc_8c1610B4


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

loc_8C0F2C82:
#data 0x012c

loc_8C0F2C84:
#data 0x01B0

loc_8C0F2C86:
#data 0x0084

loc_8C0F2C88:
#data 0x0130
#data 0x0000

#align4
loc_8C0F2C8C:
#data 0x8C26A90c

#align4
loc_8C0F2C90:
#data 0xC28C0000

#align4
loc_8C0F2C94:
#data 0xC3480000

#align4
loc_8C0F2C98:
#data 0x423C0000

#align4
loc_8C0F2C9C:
#data 0x43160000

#align4
loc_8C0F2CA0:
#data 0x41700000

#align4
loc_8C0F2CA4:
#data 0x40955555

#align4
loc_8C0F2CA8:
#data 0xF447E050
#data 0xF447E054
#data 0xF457E058
#data 0x909DE100
#data 0x65136352
#data 0x7010024c
#data 0x622C6332
#data 0x321E3127
#data 0x42219196
#data 0x323C4208
#data 0x9090022e
#data 0x50460426
#data 0x8803001c
#data 0x65638900

#align4
loc_8C0F2CE0:
#data 0xD646E021
#data 0x675C024c
#data 0x71346143
#data 0x327C622c
#data 0x42006323
#data 0xD342323c
#data 0x42004208
#data 0x430B326c
#data 0xE021E00c
#data 0x024C6143
#data 0x622C7168
#data 0x6323327c
#data 0x323C4200
#data 0x4208D33a
#data 0x326C4200
#data 0x430B720c
#data 0x906AE00c
#data 0x2118014d
#data 0xE0348B07
#data 0xF34DF346
#data 0xE068F437
#data 0xF34DF346
#data 0xF437

loc_8C0F2D3A:
#data 0xE00a
#data 0x905C814e
#data 0xE044034d
#data 0x7301633b
#data 0x43084318
#data 0x43084308
#data 0x04364300
#data 0xF408C72b
#data 0xF346E034
#data 0xF246E068
#data 0xF231E05c
#data 0xF427F243
#data 0xF346E038
#data 0xF246E06c
#data 0xF231E060
#data 0xF427F243
#data 0xF346E03c
#data 0xF246E070
#data 0xF231E064
#data 0xF243


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
#data 0x008401A4
#data 0x01300259

#align4
loc_8C0F2DFC:
#data bank16.loc_8c16106c

loc_8C0F2E00:
#data bank12.loc_8c1294C8
#data 0x41200000

#align4
loc_8C0F2E08:
#data 0x3D888889

#align4
loc_8C0F2E0C:
#data 0x41A00000


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

loc_8C0F2E32:
#data 0x8445
#data 0x8B332008
#data 0x314CE15c
#data 0xF318E034
#data 0xE160F246
#data 0xF230314c
#data 0xE038F427
#data 0xF318F246
#data 0x314CE164
#data 0xF427F230
#data 0xF246E03c
#data 0xF230F318
#data 0xC71CF427
#data 0xE050F408
#data 0xF341F346
#data 0xE054F437
#data 0xF241F246
#data 0x854EF427
#data 0x814E70Ff
#data 0x4015600f
#data 0x8445890e
#data 0xF49D6243
#data 0x70016143
#data 0x8045D312
#data 0xF447E050
#data 0x7268E054
#data 0x7134F447
#data 0xE00C430b

#align4
loc_8C0F2EA0:
#data 0x6212D10e
#data 0x20088426
#data 0x84448B05
#data 0x7001E300
#data 0x900D8044
#data 0x0434


loc_8C0F2EB6:
lds.l @r15+,pr 	
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0F2EBC:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0F2ED0,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0F2ECA:
mov.l @(loc_8C0F2EE0,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0F2ED0:
#data 0x012c
#data 0x0000
#data 0x3DCCCCCd

#align4
loc_8C0F2ED8:
#data bank12.loc_8c1294C8
#data 0x8C2896B0

#align4
loc_8C0F2EE0:
#data bank04.loc_8c0450C0


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
;-------------------------------------------------------------------------------

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

loc_8C0F2F42:
#data 0x2FE6
#data 0xD3394F22
#data 0x6E43430b
#data 0x8B342008
#data 0xE30184E4
#data 0xF220F29d
#data 0x80E47001
#data 0x0E34905d
#data 0x81EEE03c
#data 0x03ECE020
#data 0x633CD031
#data 0xF3364308
#data 0xF34DE034
#data 0xFE37F323
#data 0xF308C72e
#data 0xFE37E038
#data 0xF38DE03c
#data 0xE020FE37
#data 0xD02B03Ec
#data 0x4308633c
#data 0xE300023e
#data 0x0E269043
#data 0x0E367004
#data 0x04ECE020
#data 0x644CD026
#data 0x634C044c
#data 0x89022338
#data 0x420BD224
#data 0x0009

loc_8C0F2FB2:
#data 0x4F26
#data 0xA00364E3
#data 0x6EF6

loc_8C0F2FBA:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

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

loc_8C0F2FD2:
#data 0x8445
#data 0x80457001
#data 0x814EE00c
#data 0xF346E03c
#data 0xF208C719
#data 0xF34DC719
#data 0xF108F320
#data 0xF313E064
#data 0xF437

loc_8C0F2FF2:
#data 0xE164
#data 0xE03C314c
#data 0xF246F318
#data 0xF427F230
#data 0x70FF854e
#data 0x600F814e
#data 0x89044015
#data 0x70018445
#data 0xE03C8045
#data 0x814e

loc_8C0F3016:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0F301A:
#data 0x012c

loc_8C0F301C:
#data 0x0084
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
#data 0xC0C80000

#align4
loc_8C0F3038:
#data bank16.loc_8c161318

loc_8C0F303C:
#data bank16.loc_8c161398

loc_8C0F3040:
#data bank04.loc_8c04257c

loc_8C0F3044:
#data bank16.loc_8c1613B8
#data 0xC2200000
#data 0x41400000

#align4
loc_8C0F3050:
#data 0x70FF854e
#data 0x600F814e
#data 0x890E4015
#data 0xF28D8445
#data 0x80457001
#data 0x814EE00c
#data 0xF346E03c
#data 0xF108C717
#data 0xF34DE064
#data 0xF313F320
#data 0xF437

loc_8C0F307A:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

#align4
loc_8C0F309C:
#data 0xE3009014
#data 0x6E432FE6
#data 0x0E344F22
#data 0x00ECE020
#data 0x8803600c
#data 0xD3078B05
#data 0x9008D207
#data 0x420B6432
#data 0x044c

loc_8C0F30BE:
#data 0x4F26
#data 0x64E3D305
#data 0x6EF6432b
#data 0x008B012c
#data 0x41400000
#data 0x8C26823c

#align4
loc_8C0F30D4:
#data loc_8c0f30Dc

loc_8C0F30D8:
#data bank04.loc_8c0450C0


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

loc_8C0F3190:
#data 0x01Cc

loc_8C0F3192:
#data 0x01C8

#align4
loc_8C0F3194:
#data bank04.loc_8c04257c

loc_8C0F3198:
#data 0x41200000

#align4
loc_8C0F319C:
#data 0x40A00000

#align4
loc_8C0F31A0:
#data 0xC1200000

#align4
loc_8C0F31A4:
#data bank05.loc_8c05AAC4

loc_8C0F31A8:
#data bank05.loc_8c05AA62

loc_8C0F31AC:
#data bank05.loc_8c05AA1e

loc_8C0F31B0:
#data bank05.loc_8c05A8B4

loc_8C0F31B4:
#data 0xB03EE506
#data 0x2008E400
#data 0x6D038D32
#data 0xE038DC50
#data 0x9198FDD7
#data 0x31DC85C8
#data 0x2102600d
#data 0x64D3B18f
#data 0xB02EE505
#data 0x200864D3
#data 0x6E038D1f
#data 0x62C3E038
#data 0xE03EFEF7
#data 0x727803Cc
#data 0x43009085
#data 0x6131332c
#data 0xB1540E16
#data 0xE50464E3
#data 0x64E3B01b
#data 0x8D0C2008
#data 0xE0386E03
#data 0xFEE79278
#data 0x03CCE03e
#data 0x907232Cc
#data 0x6130332c
#data 0xB1420E16
#data 0x64E3

loc_8C0F321E:
#data 0xE021
#data 0x0E24E201


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
;-------------------------------------------------------------------------------

loc_8C0F3236:
#data 0x2FE6
#data 0x4F222FD6
#data 0x6E437FFc
#data 0x2F522EE8
#data 0xED038F01
#data 0xED01

loc_8C0F324A:
#data 0xD22f
#data 0x66D3E50c
#data 0x64E3420b
#data 0x8D222008
#data 0x90506403
#data 0xD32BE500
#data 0x904D0454
#data 0xE3081434
#data 0x70480456
#data 0xE0260456
#data 0xE0200435
#data 0xF48D62F2
#data 0xE0340424
#data 0xE038F447
#data 0xC723F447
#data 0xE03CF308
#data 0xF437D122
#data 0x60F214E5
#data 0x001D4000
#data 0x854E814e
#data 0x7078600b
#data 0x814f

loc_8C0F329E:
#data 0x6043
#data 0x7F040009
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

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
#data 0x01Cc
#data 0x012C009c
#data 0x0084

loc_8C0F3302:
#data 0x00D4
#data 0x8C2895F0

#align4
loc_8C0F3308:
#data bank04.loc_8c044F12

loc_8C0F330C:
#data loc_8c0f32Ac

loc_8C0F3310:
#data 0xC2200000

#align4
loc_8C0F3314:
#data bank16.loc_8c161748

loc_8C0F3318:
#data bank16.loc_8c161758

loc_8C0F331C:
#data bank16.loc_8c16172c

loc_8C0F3320:
#data bank16.loc_8c161768

loc_8C0F3324:
#data 0xE018D339
#data 0x6532E601
#data 0x2268025c
#data 0xD2378905
#data 0x63219167
#data 0x2318633d
#data 0x8B0e

loc_8C0F333E:
#data 0x005c
#data 0x8905C802
#data 0x915ED233
#data 0x633D6321
#data 0x8B052318

#align4
loc_8C0F3350:
#data 0x70FF854e
#data 0x600F814e
#data 0x89054015

#align4
loc_8C0F335C:
#data 0x70018445
#data 0x90518045
#data 0x0464A002

#align4
loc_8C0F3368:
#data 0x0009000b
;-------------------------------------------------------------------------------

#align4
loc_8C0F336C:
#data 0x6E432FE6
#data 0xE0212FD6
#data 0x4F222FC6
#data 0x233803Ec
#data 0xD3238938
#data 0xE501E018
#data 0x024C6432
#data 0x89052258
#data 0x913AD220
#data 0x633D6321
#data 0x8B082318

#align4
loc_8C0F3398:
#data 0xC802004c
#data 0xD21D890c
#data 0x63219131
#data 0x2318633d
#data 0x8906

loc_8C0F33AA:
#data 0x85Ef
#data 0x3043E41e
#data 0x60438B02
#data 0x81EF0009

#align4
loc_8C0F33B8:
#data 0x70FF85Ef
#data 0x600F81Ef
#data 0x89154015
#data 0x222852E5
#data 0x6D53890c
#data 0xEC00A008

#align4
loc_8C0F33D0:
#data 0x532552E3
#data 0x8F012338
#data 0x6DC354E3

#align4
loc_8C0F33DC:
#data 0x0009B00d

#align4
loc_8C0F33E0:
#data 0x8BF52DD8

#align4
loc_8C0F33E4:
#data 0x64E34F26
#data 0x6DF66CF6
#data 0x6EF6A005

#align4
loc_8C0F33F0:
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0F33FA:
mov.w @(loc_8C0F3408,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0F3418,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x0360

loc_8C0F3408:
#data 0x012c
#data 0x0000
#data 0x8C26823c
#data 0x8C2681Dc
#data 0x8C2681F0

#align4
loc_8C0F3418:
#data bank04.loc_8c0450C0

loc_8C0F341C:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x4F222FA6
#data 0x90887FFc
#data 0xED096B43
#data 0x0CBE9E84
#data 0x8F013CD6
#data 0x6CD33EBc

#align4
loc_8C0F343C:
#data 0x2FC6D243
#data 0x2F26DA41
#data 0x64E34A0b
#data 0x8D062CC8
#data 0x90777F08
#data 0x02BED33f
#data 0xA0062F26
#data 0x0009

loc_8C0F345A:
#data 0x9071
#data 0x2E30E320
#data 0xD33C02Be
#data 0x2F26

loc_8C0F3466:
#data 0x64E3
#data 0x4A0B2F36
#data 0x7F087401
#data 0xE7FF64E3
#data 0xE6006543
#data 0x2F42

loc_8C0F347A:
#data 0x6350
#data 0x253073D0
#data 0x4311633e
#data 0x76018D01
#data 0x2470

loc_8C0F348A:
#data 0x36D2
#data 0x8FF47401
#data 0x7F047501
#data 0x6AF64F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0F34A2:
#data 0x2FE6
#data 0x7FFC4F22
#data 0x934A904a
#data 0x9E45054e
#data 0x8F013532
#data 0x95453E4c

#align4
loc_8C0F34B8:
#data 0xD223D327
#data 0x2F362F56
#data 0x64E3420b
#data 0x65E37F08
#data 0x6453E7Ff
#data 0xE600EE03
#data 0x2F52

loc_8C0F34D2:
#data 0x6340
#data 0x243073D0
#data 0x4311633e
#data 0x76018D01
#data 0x2570

loc_8C0F34E2:
#data 0x36E2
#data 0x8FF47501
#data 0x7F047401
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0F34F2:
#data 0x2FE6
#data 0x2FC62FD6
#data 0x4F222FB6
#data 0x9E1D7FF8
#data 0x3E4C901e
#data 0x044E961f
#data 0x6153654d
#data 0x00096063
#data 0x430BD312
#data 0x64030009
#data 0x624DE309
#data 0x32376CE3
#data 0x6BE37C01
#data 0x7B038F1c
#data 0xE439E135
#data 0x2C102E40
#data 0x00096043
#data 0x2B0080E2
#data 0x80E4A03b
#data 0x01C8019c
#data 0x03E801Cc
#data 0x0E1003E7

#align4
loc_8C0F3548:
#data bank12.loc_8c129740

loc_8C0F354C:
#data bank13.loc_8c13b7B8

loc_8C0F3550:
#data bank13.loc_8c13b7Bc

loc_8C0F3554:
#data bank13.loc_8c13b7C4

loc_8C0F3558:
#data bank13.loc_8c13b7C8

loc_8C0F355C:
#data bank12.loc_8c129128

loc_8C0F3560:
#data 0x7430D322
#data 0x2E406153
#data 0x6063430b
#data 0xD3206403
#data 0xED3C614d
#data 0x430B2F12
#data 0x81F260D3
#data 0xD31D600d
#data 0x2F06D21d
#data 0x420B2F36
#data 0xD31864C3
#data 0x430B51F2
#data 0xE16460D3
#data 0x241E6403
#data 0x011AD315
#data 0x60D3430b
#data 0x600D81F4
#data 0xD214D313
#data 0x2F362F06
#data 0x64B3420b
#data 0x7F10

loc_8C0F35B2:
#data 0xE400
#data 0x34EC9719
#data 0x2F42E600
#data 0xA00AEE05
#data 0x6543

loc_8C0F35C2:
#data 0x6250
#data 0x252072D0
#data 0x4211622c
#data 0x76018D01
#data 0x2470

loc_8C0F35D2:
#data 0x7501
#data 0x7401

loc_8C0F35D6:
#data 0x626d
#data 0x8BF232E3
#data 0x4F267F08
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00FF6EF6

#align4
loc_8C0F35EC:
#data bank12.loc_8c1292D4

loc_8C0F35F0:
#data bank12.loc_8c129128

loc_8C0F35F4:
#data bank13.loc_8c13b7Cc

loc_8C0F35F8:
#data bank12.loc_8c129740


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

loc_8C0F367A:
#data 0xD31d
#data 0x04C49030
#data 0x62921434
#data 0x6322902d
#data 0xD31C6132
#data 0x61430416
#data 0x713462F2
#data 0xE00C430b
#data 0x902463Dc
#data 0x7D01435a
#data 0xE120D21a
#data 0xE04404A6
#data 0xF3F2F32d
#data 0xF3D0F3E3
#data 0x035AF33d
#data 0x04362329
#data 0x901563Dc
#data 0x8FD33313
#data 0x04B6


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
;-------------------------------------------------------------------------------

loc_8C0F36E0:
#data 0x012c

loc_8C0F36E2:
#data 0x0084

loc_8C0F36E4:
#data 0x0805

loc_8C0F36E6:
#data 0x00Cc
#data 0x000000D8

#align4
loc_8C0F36EC:
#data bank04.loc_8c044F12

loc_8C0F36F0:
#data loc_8c0f378a

loc_8C0F36F4:
#data 0x8C26A910

#align4
loc_8C0F36F8:
#data bank16.loc_8c161770

loc_8C0F36FC:
#data bank12.loc_8c1294C8

loc_8C0F3700:
#data 0x3F000000

#align4
loc_8C0F3704:
#data 0x43B40000

#align4
loc_8C0F3708:
#data 0x49340000
#data 0x0000FFFf
#data 0xD3484F22
#data 0xE601E505
#data 0xE400430b
#data 0x8D312008
#data 0x90816403
#data 0xD145E301
#data 0x0434D243
#data 0x63121424
#data 0x907A6143
#data 0x62327134
#data 0xD2416322
#data 0xD3410436
#data 0xE00C430b
#data 0xE5059073
#data 0xE6019170
#data 0x0416D339
#data 0xE400430b
#data 0x8D152008
#data 0x90656403
#data 0xD137E301
#data 0x0434D235
#data 0x142470E0
#data 0x61436312
#data 0x62327134
#data 0x905A032e
#data 0x0436D234
#data 0x430BD332
#data 0x9056E00c
#data 0x04169154
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

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
#data 0x0084012c
#data 0x00CC0805

loc_8C0F3830:
#data 0x00D8
#data 0x0000

#align4
loc_8C0F3834:
#data bank04.loc_8c044F12

loc_8C0F3838:
#data loc_8c0f378a
#data 0x8C26A910

#align4
loc_8C0F3840:
#data bank16.loc_8c161770

loc_8C0F3844:
#data bank12.loc_8c1294C8

loc_8C0F3848:
#data bank16.loc_8c161794

loc_8C0F384C:
#data 0x8C28C410

#align4
loc_8C0F3850:
#data bank03.loc_8c03C870

loc_8C0F3854:
#data 0x31ECE15c
#data 0xF318E034
#data 0xF230F2E6
#data 0xFE27

loc_8C0F3862:
#data 0xE168
#data 0xE05C31Ec
#data 0xF2E6F318
#data 0xFE27F230


loc_8C0F3870:
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0F387C:
#data 0xD32F4F22
#data 0xE601E505
#data 0xE400430b
#data 0x8D292008
#data 0xD22C6403
#data 0x904DE301
#data 0x0434D12b
#data 0x1424709c
#data 0x63129249
#data 0x323CF48d
#data 0x0426F39d
#data 0xD22770Bc
#data 0x6322F34d
#data 0x53116132
#data 0xE0340436
#data 0xE038F447
#data 0xE03CF437
#data 0xF4479338
#data 0x0436E044
#data 0xF408C720
#data 0xF447E050
#data 0xF447E054
#data 0xF39DE058
#data 0xF437932d
#data 0x04367074

#align4
loc_8C0F38E0:
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

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

#align4
loc_8C0F3900:
#data 0xF408C713
#data 0xF346E050
#data 0xF437F341
#data 0xF246E054
#data 0xF49DF241
#data 0xE050F427
#data 0xF435F346
#data 0x84448B06
#data 0x80447001
#data 0xF447E050
#data 0xF447E054


loc_8C0F392C:
rts 	
nop 	
;-------------------------------------------------------------------------------
#data 0x0088012c
#data 0x08154000

loc_8C0F3938:
#data 0x0100
#data 0x0000

#align4
loc_8C0F393C:
#data bank04.loc_8c044F12

loc_8C0F3940:
#data loc_8c0f38E6
#data 0x8C28C468
#data 0x8C26A910
#data 0x40800000
#data 0x3D4CCCCd


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
;-------------------------------------------------------------------------------

loc_8C0F39A2:
#data 0x2FE6
#data 0x2FC62FD6
#data 0xFFFB2FB6
#data 0x7FF84F22
#data 0x85EE6E43
#data 0x70019334
#data 0x85EE81Ee
#data 0x8B013033
#data 0x81EEE000

#align4
loc_8C0F39C4:
#data 0x9028D319
#data 0xD11C6432
#data 0x05EE6242
#data 0x5427410b
#data 0xC71DDD1c
#data 0xDB19DC1a
#data 0xFF08A010

#align4
loc_8C0F39E0:
#data 0x65F364F3
#data 0x74044D0b
#data 0x64F385Ee
#data 0x65F3F2F8
#data 0x435A6303
#data 0xF3F2F32d
#data 0xFF2AF231
#data 0x74044B0b

#align4
loc_8C0F3A00:
#data 0x00094C0b
#data 0x89EB2008
#data 0x4F267F08
#data 0x6BF6FFF9
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0F3A18:
#data 0x012c

loc_8C0F3A1A:
#data 0x0084

loc_8C0F3A1C:
#data 0x0801

loc_8C0F3A1E:
#data 0x00Cc
#data 0x000003E8

#align4
loc_8C0F3A24:
#data bank04.loc_8c044F12

loc_8C0F3A28:
#data loc_8c0f39A2

loc_8C0F3A2C:
#data 0x8C26A910

#align4
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
#data 0x3A83126f


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
;-------------------------------------------------------------------------------

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

loc_8C0F3B2E:
#data 0x00Fd

loc_8C0F3B30:
#data 0x012c

loc_8C0F3B32:
#data 0x0088

#align4
loc_8C0F3B34:
#data 0x8C28C749

#align4
loc_8C0F3B38:
#data 0x8C28C748

#align4
loc_8C0F3B3C:
#data bank04.loc_8c044F12

loc_8C0F3B40:
#data loc_8c0f3DE2

loc_8C0F3B44:
#data 0x8C28C468

#align4
loc_8C0F3B48:
#data 0x8C26A910

#align4
loc_8C0F3B4C:
#data bank13.loc_8c13b7D4

loc_8C0F3B50:
#data bank16.loc_8c161FAc

loc_8C0F3B54:
#data 0x84E7E320
#data 0x230033Ec

#align4
loc_8C0F3B5C:
#data 0x6242E020
#data 0x706403Ec
#data 0x633C6222
#data 0x332C4308
#data 0xD344513a
#data 0x84E70E16
#data 0x600CD142
#data 0x40004008
#data 0xE021330c
#data 0x02EC2F32
#data 0x622CE004
#data 0x42004208
#data 0x1F11312c
#data 0xF536F316
#data 0x62F26313
#data 0xF328F531
#data 0xE020F438
#data 0xF43105Ec
#data 0x655CD337
#data 0x430B750a
#data 0x64E3


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

loc_8C0F3C02:
#data 0xE026
#data 0x0ED5


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

#align4
loc_8C0F3C80:
#data bank16.loc_8c161D40

loc_8C0F3C84:
#data bank03.loc_8c03D21a

loc_8C0F3C88:
#data bank16.loc_8c1617B8

loc_8C0F3C8C:
#data 0xC4610000

#align4
loc_8C0F3C90:
#data 0x44610000

#align4
loc_8C0F3C94:
#data 0x432D0000

#align4
loc_8C0F3C98:
#data 0x42C80000


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
;-------------------------------------------------------------------------------

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

loc_8C0F3D98:
#data 0x0C1f

loc_8C0F3D9A:
#data 0x00Cc

loc_8C0F3D9C:
#data 0x00D8
#data 0x0000

#align4
loc_8C0F3DA0:
#data 0xC2C80000

#align4
loc_8C0F3DA4:
#data 0x44480000

#align4
loc_8C0F3DA8:
#data bank11.loc_8c11e730

loc_8C0F3DAC:
#data loc_8c0f6658

loc_8C0F3DB0:
#data bank13.loc_8c13b7D4

loc_8C0F3DB4:
#data 0x0000E402

#align4
loc_8C0F3DB8:
#data 0x0000EC02

#align4
loc_8C0F3DBC:
#data 0x0000F402

#align4
loc_8C0F3DC0:
#data 0x0000FC02


loc_8C0F3DC4:
mov.w @(loc_8C0F3EEE,pc),r2 ; r2 set to 0x3Ff
bra loc_8C0F3DD2
nop 	

loc_8C0F3DCA:
mov.w @(loc_8C0F3EF0,pc),r1 ; r1 set to 0xBFf
bra loc_8C0F3DDa
nop 	

loc_8C0F3DD0:
#data 0x928f


loc_8C0F3DD2:
mov 0x44,r0 ; r0 set to 0x44
bra loc_8C0F3DDe
mov.l r2,@(r0,r4) 	

loc_8C0F3DD8:
#data 0x918c

loc_8C0F3DDA:
#data 0xE044
#data 0x0416


loc_8C0F3DDE:
rts 	
nop 	
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

loc_8C0F3EEE:
#data 0x03Ff

loc_8C0F3EF0:
#data 0x0BFf
#data 0x13Ff
#data 0x00001BFf

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
#data 0x0000

#align4
loc_8C0F408C:
#data bank16.loc_8c161A7c

loc_8C0F4090:
#data 0x3F333333

#align4
loc_8C0F4094:
#data 0x8C26823c

#align4
loc_8C0F4098:
#data 0x42480000

#align4
loc_8C0F409C:
#data 0x42F00000

#align4
loc_8C0F40A0:
#data 0x43200000

#align4
loc_8C0F40A4:
#data 0x41F00000

#align4
loc_8C0F40A8:
#data 0xC2480000

#align4
loc_8C0F40AC:
#data 0xC2F00000

#align4
loc_8C0F40B0:
#data 0xC3200000

#align4
loc_8C0F40B4:
#data 0x44480000

#align4
loc_8C0F40B8:
#data 0xC1F00000

#align4
loc_8C0F40BC:
#data 0x447A0000

#align4
loc_8C0F40C0:
#data 0x43160000

#align4
loc_8C0F40C4:
#data 0x42200000

#align4
loc_8C0F40C8:
#data 0xC2200000

#align4
loc_8C0F40CC:
#data bank03.loc_8c03C870

loc_8C0F40D0:
#data bank03.loc_8c03C952

loc_8C0F40D4:
#data loc_8c0f66D2

loc_8C0F40D8:
#data 0x654FD64a
#data 0x73306363
#data 0x6250353c
#data 0x894E2228
#data 0x6350E021
#data 0x02EC9687
#data 0x636C363c
#data 0x3230622c
#data 0xE0788B45
#data 0x656CFEF7
#data 0x6353E07c
#data 0x624FFEF7
#data 0x70044500
#data 0xFEF72228
#data 0x8D18353c
#data 0xC73C4508
#data 0xF4086353
#data 0x33CCE050
#data 0xE054FE47
#data 0xE058FE47
#data 0xC738FE47
#data 0xE008F408
#data 0xE03CF336
#data 0xFE37F340
#data 0xF2E6E034
#data 0xF325F38d
#data 0xA0198917
#data 0x0009

loc_8C0F4146:
#data 0xC732
#data 0xF4086353
#data 0x33CCE050
#data 0xE054FE47
#data 0xE058FE47
#data 0xC72EFE47
#data 0xE008F408
#data 0xE03CF336
#data 0xFE37F340
#data 0xF2E6E034
#data 0xF325F38d
#data 0x8B02

loc_8C0F4172:
#data 0xC729
#data 0xF408A002

#align4
loc_8C0F4178:
#data 0xF440F49d

#align4
loc_8C0F417C:
#data 0xF35835Cc
#data 0xF340E034
#data 0xFE37

loc_8C0F4186:
#data 0x7401

#align4
loc_8C0F4188:
#data 0xE502634f
#data 0x8BA33353


loc_8C0F4190:
add 0x0C,r15
lds.l @r15+,pr 	
fmov.s @r15+,fr15
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

loc_8C0F41F8:
mov.l @(loc_8C0F4220,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x00Ff

loc_8C0F4200:
#data 0x012c
#data 0x0000
#data 0x8C28C410
#data 0x3F933333
#data 0x40C00000
#data 0x3F99999a
#data 0x41000000
#data 0xC0000000

#align4
loc_8C0F421C:
#data bank03.loc_8c03CB58

loc_8C0F4220:
#data bank04.loc_8c0450C0


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

loc_8C0F425A:
#data 0xE022


loc_8C0F425C:
rts 	
mov.w r0,@(0x1C,r4) 	
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

loc_8C0F42BE:
#data 0x2FE6
#data 0x7FF44F22
#data 0x760466F3
#data 0xBFC96E43
#data 0x62F065F3
#data 0x432CE301
#data 0x232852F1
#data 0xE0218B1b
#data 0x03ECD211
#data 0x633CC711
#data 0x43004308
#data 0x6323323c
#data 0xF3081F22
#data 0xF526E004
#data 0xF408C70d
#data 0xF238E020
#data 0x05ECF530
#data 0xD30BF421
#data 0x750A655c
#data 0x64E3430b
#data 0xE201E022
#data 0x0E24

loc_8C0F4312:
#data 0x7F0c
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0F431A:
#data 0x012c

#align4
loc_8C0F431C:
#data bank13.loc_8c13b7D4

loc_8C0F4320:
#data 0x8C28C420

#align4
loc_8C0F4324:
#data bank16.loc_8c161D40
#data 0xBE800000
#data 0x3F000000

#align4
loc_8C0F4330:
#data bank03.loc_8c03D21a

loc_8C0F4334:
#data 0x4F222FE6
#data 0x66F37FF4
#data 0x6E437604
#data 0x65F3BF8e
#data 0xE30162F0
#data 0x52F1432c
#data 0x89202328
#data 0x03ECE022
#data 0x891C2338
#data 0xD310E021
#data 0xE00401Ec
#data 0x4108611c
#data 0x331C4100
#data 0xF3361F32
#data 0xF208C70c
#data 0xF34DC70c
#data 0xF520F53c
#data 0xF308F438
#data 0x05ECE020
#data 0xD309F430
#data 0x750A655c
#data 0x64E3430b
#data 0xE200E022
#data 0x0E24

loc_8C0F4392:
#data 0x7F0c
#data 0x000B4F26
#data 0x00006EF6

#align4
loc_8C0F439C:
#data bank16.loc_8c161D40
#data 0x3E800000
#data 0xBF000000

#align4
loc_8C0F43A8:
#data bank03.loc_8c03D21a


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
;-------------------------------------------------------------------------------

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
#data 0xC72b
#data 0x6E432FE6
#data 0xF4084F22
#data 0xF3E6E050
#data 0xFE37F341
#data 0xF2E6E054
#data 0xFE27F241
#data 0xF3E6E058
#data 0xF49DF341
#data 0xE050FE37
#data 0xF245F2E6
#data 0x64E38D09
#data 0x700184E4
#data 0xE05080E4
#data 0xE054FE47
#data 0xE058FE47
#data 0xFE47

loc_8C0F44BA:
#data 0xB004
#data 0x4F260009
#data 0xA07764E3
#data 0x6EF6


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

#align4
loc_8C0F4514:
#data 0x8C26A910

#align4
loc_8C0F4518:
#data 0x3F99999a

#align4
loc_8C0F451C:
#data bank10.loc_8c108210

loc_8C0F4520:
#data loc_8c0f688c

loc_8C0F4524:
#data bank16.loc_8c16202c
#data 0x3D23D70a

#align4
loc_8C0F452C:
#data 0x8C28C410

#align4
loc_8C0F4530:
#data 0x938EE020
#data 0xD04A04Ec
#data 0x243E644c
#data 0x044E041a
#data 0x024C9088
#data 0x600C84E1
#data 0x890B3200
#data 0x61539082
#data 0x004C7130
#data 0xE02080E1
#data 0x84E102Ec
#data 0x7001622c
#data 0x2200321c


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
;-------------------------------------------------------------------------------

loc_8C0F45AE:
mov.l @(loc_8C0F466C,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

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

#align4
loc_8C0F4604:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x4F22FFFb
#data 0x6E437FF8
#data 0xE33285Ee
#data 0x81EE7001
#data 0x303385Ee
#data 0xE0008B01
#data 0x81Ee

loc_8C0F4626:
#data 0x9018
#data 0x05EED319
#data 0x02ECE020
#data 0x622C9114
#data 0x42006432
#data 0x6442D316
#data 0x4208321c
#data 0x430B342c
#data 0xDD165441
#data 0xDC14C716
#data 0xA03BDB12
#data 0x05A4FF08
#data 0x052c

loc_8C0F4656:
#data 0x012c

loc_8C0F4658:
#data 0x0088
#data 0x0084
#data 0x00000097
#data 0x8C268358

#align4
loc_8C0F4664:
#data 0x3C23D70a

#align4
loc_8C0F4668:
#data 0x3D4CCCCd

#align4
loc_8C0F466C:
#data bank04.loc_8c0450C0

loc_8C0F4670:
#data bank12.loc_8c120950

loc_8C0F4674:
#data bank11.loc_8c1201e0

loc_8C0F4678:
#data bank12.loc_8c121100

loc_8C0F467C:
#data bank12.loc_8c1210E0

loc_8C0F4680:
#data bank16.loc_8c161A7c

loc_8C0F4684:
#data bank02.loc_8c02DBD6

loc_8C0F4688:
#data bank11.loc_8c11FA80

loc_8C0F468C:
#data bank12.loc_8c120900
#data 0x8C26A910

#align4
loc_8C0F4694:
#data bank10.loc_8c108060

loc_8C0F4698:
#data bank10.loc_8c1081E6

loc_8C0F469C:
#data bank10.loc_8c108086

loc_8C0F46A0:
#data bank10.loc_8c108192
#data 0x3CA3D70a

#align4
loc_8C0F46A8:
#data 0x65F364F3
#data 0x74044D0b
#data 0x64F385Ee
#data 0x65F3F2F8
#data 0x435A6303
#data 0xF32DF0Fc
#data 0xFF2AF23e
#data 0x74044B0b

#align4
loc_8C0F46C8:
#data 0x00094C0b
#data 0x89EB2008
#data 0x4F267F08
#data 0x6BF6FFF9
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

#align4
loc_8C0F4714:
#data 0x654CD621
#data 0x6363E708
#data 0x335C7306
#data 0x32736230
#data 0xE4078F05
#data 0x72066263
#data 0x325CE300
#data 0x2230

loc_8C0F4732:
#data 0x6263
#data 0x325C7206
#data 0x43116320
#data 0x63638903
#data 0x335C7306
#data 0x2340

loc_8C0F4746:
#data 0x6263
#data 0x325C7204
#data 0x33736320
#data 0x63638B04
#data 0xE2007304
#data 0x2320335c

#align4
loc_8C0F475C:
#data 0x73046363
#data 0x6230335c
#data 0x89034211
#data 0x72046263
#data 0x2540352c

#align4
loc_8C0F4770:
#data 0x0009000b
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

loc_8C0F4794:
#data 0x0524
#data 0x0000

#align4
loc_8C0F4798:
#data bank13.loc_8c13b7D4

loc_8C0F479C:
#data 0x8C28C410

#align4
loc_8C0F47A0:
#data bank16.loc_8c161FEc


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

#align4
loc_8C0F4800:
#data 0xD33CC73b
#data 0xE034F308
#data 0xF437

loc_8C0F480A:
#data 0xE048
#data 0x0436D23c
#data 0xF308C739
#data 0x6343E038
#data 0xF4377340
#data 0xF308C737
#data 0xF49DE03c
#data 0xE044F437
#data 0xE3002322
#data 0xE0500436
#data 0xE054F447
#data 0xE058F447
#data 0xF4479350
#data 0x04367074


loc_8C0F4840:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

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

#align4
loc_8C0F4858:
#data 0x034CE020
#data 0xD02AE101
#data 0x023C633c
#data 0x034CE021
#data 0x633C622c
#data 0x2218413c
#data 0x84448902
#data 0x80447001

#align4
loc_8C0F4878:
#data 0x0009000b
;-------------------------------------------------------------------------------

#align4
loc_8C0F487C:
#data 0xF408C723
#data 0xF346E050
#data 0xF437F340
#data 0xF246E054
#data 0xF427F240
#data 0xF308C71f
#data 0xF246E050
#data 0x8902F325
#data 0x70018444
#data 0x8044

loc_8C0F48A2:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0F48A6:
#data 0xC719
#data 0xE050F408
#data 0xF341F346
#data 0xE054F437
#data 0xF241F246
#data 0xF427F49d
#data 0xF346E050
#data 0x8906F345
#data 0xF447E054
#data 0xF447E050
#data 0x70018444
#data 0x8044

loc_8C0F48D2:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0F48D6:
#data 0x012c

loc_8C0F48D8:
#data 0x0524

loc_8C0F48DA:
#data 0x11C7
#data 0x0000081b

#align4
loc_8C0F48E0:
#data bank04.loc_8c044F12

loc_8C0F48E4:
#data loc_8c0f4846

loc_8C0F48E8:
#data 0x8C26A910

#align4
loc_8C0F48EC:
#data 0x43120000
#data 0xC3120000
#data 0x0000EE3a
#data 0x42100000
#data 0x43820000
#data 0x0000D556

#align4
loc_8C0F4904:
#data bank16.loc_8c16203c
#data 0x8C28C412
#data 0x3DCCCCCd
#data 0x3FA66666

#align4
loc_8C0F4914:
#data 0xD511E020
#data 0xE021034c
#data 0x72026253
#data 0x332C633c
#data 0xE2106130
#data 0x611C034c
#data 0x423C633c
#data 0x890C2128
#data 0x004CE020
#data 0x005C600c
#data 0x8803600c
#data 0x84448B05
#data 0x7001E300
#data 0x90058044
#data 0x0434

loc_8C0F494E:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0F4952:
mov.l @(loc_8C0F4960,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x0000012c
#data 0x8C28C410

#align4
loc_8C0F4960:
#data bank04.loc_8c0450C0

loc_8C0F4964:
#data 0x7FF84F22
#data 0x00096043
#data 0xE601D34f
#data 0x2F5280F4
#data 0x430BE505
#data 0x2008E400
#data 0x64038D14
#data 0xE500908c
#data 0xD34AE120
#data 0x314C0454
#data 0x84F41434
#data 0x60532100
#data 0x814E0009
#data 0xE302E021
#data 0x907E0434
#data 0x907D0456
#data 0x043663F2

#align4
loc_8C0F49A8:
#data 0x4F267F08
#data 0x0009000b
;-------------------------------------------------------------------------------

#align4
loc_8C0F49B0:
#data 0x7FFC4F22
#data 0xE505D33d
#data 0xE6012F40
#data 0xE400430b
#data 0x8D0F2008
#data 0x90696403
#data 0xD33AE500
#data 0xE0200454
#data 0x62F01434
#data 0x60530424
#data 0x814E0009
#data 0x0454E021
#data 0x0456905d

#align4
loc_8C0F49E4:
#data 0x4F267F04
#data 0x0009000b
;-------------------------------------------------------------------------------

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

loc_8C0F4A9C:
#data 0x012c
#data 0x00D8
#data 0x00D4

loc_8C0F4AA2:
#data 0x00D0

loc_8C0F4AA4:
#data 0x05A4

loc_8C0F4AA6:
#data 0x0118

loc_8C0F4AA8:
#data 0x0084
#data 0x0000

#align4
loc_8C0F4AAC:
#data bank04.loc_8c044F12

loc_8C0F4AB0:
#data loc_8c0f4B86

loc_8C0F4AB4:
#data loc_8c0f4D88

loc_8C0F4AB8:
#data 0x8C268340

#align4
loc_8C0F4ABC:
#data 0x8C26A910

#align4
loc_8C0F4AC0:
#data bank16.loc_8c162050

loc_8C0F4AC4:
#data bank12.loc_8c1294C8

loc_8C0F4AC8:
#data loc_8c0f5312

loc_8C0F4ACC:
#data 0x02EE9093
#data 0x8B072228
#data 0xD14AE020
#data 0x600C004c
#data 0x600C001c
#data 0x8B178877

#align4
loc_8C0F4AE4:
#data 0xD347E021
#data 0xE020064c
#data 0xE36C1434
#data 0x76FE024c
#data 0x622C666b
#data 0x666E223e
#data 0x6163D342
#data 0x361C4600
#data 0x021A6143
#data 0x71344608
#data 0x326C325c
#data 0xE00C430b

loc_8C0F4B14:
#data 0xD13d


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
;-------------------------------------------------------------------------------

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

#align4
loc_8C0F4B98:
#data 0x6E432FE6
#data 0x85EE4F22
#data 0x81EE70Ff
#data 0x401585Ee
#data 0x84E4890b
#data 0x7001E500
#data 0xE00580E4
#data 0xBF1981Ee
#data 0xE02164E3
#data 0x72FF02Ec
#data 0x0E24

loc_8C0F4BC2:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------
#data 0x00D4

loc_8C0F4BF8:
#data 0x081f

loc_8C0F4BFA:
#data 0x00Cc

loc_8C0F4BFC:
#data 0x00D8
#data 0x0000

#align4
loc_8C0F4C00:
#data 0x8C28C412

#align4
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

#align4
loc_8C0F4C18:
#data bank16.loc_8c162140

loc_8C0F4C1C:
#data bank16.loc_8c162154

loc_8C0F4C20:
#data 0x928CE020
#data 0xD046034c
#data 0x232E633c
#data 0x013D031a
#data 0x8B192118
#data 0xD543E020
#data 0x6353004c
#data 0x600C7302
#data 0x600C003c
#data 0x890FC810
#data 0xE3008445
#data 0x7001E101
#data 0xE0228045
#data 0xE3200434
#data 0x6330334c
#data 0x633CE036
#data 0x035C413c
#data 0x0534231b

#align4
loc_8C0F4C68:
#data 0x0009000b
;-------------------------------------------------------------------------------

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

#align4
loc_8C0F4C98:
#data 0xE036E30e

#align4
loc_8C0F4C9C:
#data 0x2239025c
#data 0x0524


loc_8C0F4CA2:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0F4CA6:
#data 0xE020
#data 0x004C9349
#data 0x600CD124
#data 0x001A203e
#data 0x8801001d
#data 0xE0208B19
#data 0x004CD521
#data 0x73026353
#data 0x003C600c
#data 0xC820600c
#data 0x8445890f
#data 0xE201E300
#data 0x80457001
#data 0x0434E022
#data 0x334CE320
#data 0xE0366330
#data 0x423C633c
#data 0x232B035c
#data 0x0534

loc_8C0F4CEE:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0F4CF2:
#data 0xE020
#data 0x004C9323
#data 0x600CD111
#data 0x001A203e
#data 0x8802001d
#data 0xE0208B19
#data 0x004CD50e
#data 0x73026353
#data 0x003C600c
#data 0xC840600c
#data 0x8445890f
#data 0xE201E300
#data 0x80457001
#data 0x0434E022
#data 0x334CE320
#data 0xE0366330
#data 0x423C633c
#data 0x232B035c
#data 0x0534

loc_8C0F4D3A:
#data 0x000b
#data 0x05A40009
#data 0x8C26835e

#align4
loc_8C0F4D44:
#data 0x8C28C410


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

#align4
loc_8C0F4D74:
#data 0xE036E30e

#align4
loc_8C0F4D78:
#data 0x2239025c
#data 0x0524


loc_8C0F4D7E:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0F4D82:
mov.l @(loc_8C0F4EA4,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

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

loc_8C0F4D9A:
mov.b @(0x04,r4),r0 	
add 0x01,r0
mov.b r0,@(0x04,r4) 	
bra loc_8C0F49Ec
mov 0x01,r5

#align4
loc_8C0F4DA4:
#data 0x034CE022
#data 0x89082338
#data 0xE2038444
#data 0x80447001
#data 0x034CE020
#data 0x633CD039
#data 0x0324

loc_8C0F4DBE:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

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
#data 0x0000

#align4
loc_8C0F4EA0:
#data 0x8C28C410

#align4
loc_8C0F4EA4:
#data bank04.loc_8c0450C0

loc_8C0F4EA8:
#data bank16.loc_8c162170

loc_8C0F4EAC:
#data bank16.loc_8c16217c

loc_8C0F4EB0:
#data 0x3DCCCCCd

#align4
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

loc_8C0F500A:
#data 0x00D8

loc_8C0F500C:
#data 0x00D0
#data 0x0000

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

#align4
loc_8C0F5024:
#data bank03.loc_8c03CB04


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
;-------------------------------------------------------------------------------

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

loc_8C0F515E:
#data 0x00D8

#align4
loc_8C0F5160:
#data bank03.loc_8c03CB58

loc_8C0F5164:
#data 0x8C28C443

#align4
loc_8C0F5168:
#data bank03.loc_8c03C8F6

loc_8C0F516C:
#data bank03.loc_8c03C952

loc_8C0F5170:
#data bank16.loc_8c162050


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
;-------------------------------------------------------------------------------

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

loc_8C0F52C0:
#data 0x00D0
#data 0x0000

#align4
loc_8C0F52C4:
#data bank04.loc_8c04257c

loc_8C0F52C8:
#data 0x3F9A4924

#align4
loc_8C0F52CC:
#data bank03.loc_8c03CB04

loc_8C0F52D0:
#data bank03.loc_8c03CB58


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
;-------------------------------------------------------------------------------

loc_8C0F530E:
bra loc_8C0F532e
nop 	

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

#align4
loc_8C0F53E4:
#data 0x31ECE15c
#data 0xF318E034
#data 0xF230F2E6
#data 0xFE27

loc_8C0F53F2:
#data 0xE168
#data 0xE05C31Ec
#data 0xF2E6F318
#data 0xFE27F230


loc_8C0F5400:
lds.l @r15+,pr 	
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0F540A:
#data 0x00D8

loc_8C0F540C:
#data 0x00D0
#data 0x0000

#align4
loc_8C0F5410:
#data bank16.loc_8c1621A8

loc_8C0F5414:
#data loc_8c0f5424

loc_8C0F5418:
#data 0x8C28C410

#align4
loc_8C0F541C:
#data bank16.loc_8c162050

loc_8C0F5420:
#data bank03.loc_8c03C8F6


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

loc_8C0F5442:
#data 0x908c
#data 0x928BEC01
#data 0x0EC461E3
#data 0x32DC709c
#data 0x7134D347
#data 0x1ED61E34
#data 0xE0200E26
#data 0x1E3553D5
#data 0x0E2402Dc
#data 0x03DCE021
#data 0xE0200E34
#data 0x622C02Dc
#data 0x42006323
#data 0xD33F323c
#data 0x323C4208
#data 0x430BD33e
#data 0xD03EE00c
#data 0x6102E400
#data 0x03DCE020
#data 0x633CE021
#data 0x43006233
#data 0x02DC332c
#data 0x622C9063
#data 0x6212332c
#data 0x332C4308
#data 0x905D033e
#data 0xE0440E36
#data 0x734063E3
#data 0x0E462342
#data 0x0E46E048
#data 0x93549056
#data 0xE0200E36
#data 0xD02F02Dc
#data 0x61C3622c
#data 0xE021032c
#data 0x633C02Dc
#data 0x412C622c
#data 0x892D2318
#data 0xD42BE006
#data 0xE02080E4
#data 0x23C0D328
#data 0xE02102Ec
#data 0x72016140
#data 0x2410212b
#data 0xE02004Ec
#data 0x644C02Ec
#data 0x4400622c
#data 0xD223342c
#data 0x0009420b
#data 0x03ECE020
#data 0x8B022338
#data 0xE044D320
#data 0x0E36

loc_8C0F5512:
#data 0xD220
#data 0x60229129
#data 0x8807001c
#data 0xE0218904
#data 0x600C00Ec
#data 0x8B0C8802

#align4
loc_8C0F5528:
#data 0x02ECE020
#data 0x622CD01a
#data 0x02C4A007

#align4
loc_8C0F5534:
#data 0x600C00Dc
#data 0x40086303
#data 0x4000303c
#data 0x81Ee


loc_8C0F5542:
lds.l @r15+,pr 	
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

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
#data 0x012c
#data 0x01300088
#data 0x08050084
#data 0x008100Cc

#align4
loc_8C0F556C:
#data bank04.loc_8c044F12

loc_8C0F5570:
#data loc_8c0f554c

loc_8C0F5574:
#data bank16.loc_8c1621B8

loc_8C0F5578:
#data bank12.loc_8c1294C8
#data 0x8C26A910
#data 0x8C28C412
#data 0x8C26A960
#data 0x8C26A961

#align4
loc_8C0F558C:
#data bank03.loc_8c0397A4
#data 0x00008000
#data 0x8C26823c
#data 0x8C28C410

#align4
loc_8C0F559C:
#data bank16.loc_8c1621D0

loc_8C0F55A0:
#data 0x70FF854e
#data 0x854E814e
#data 0x89024015
#data 0x70018444
#data 0x8044

loc_8C0F55B2:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0F55B6:
#data 0x8444
#data 0x80447001
#data 0x004CE021
#data 0x8802600c
#data 0xE0208B05
#data 0xE301024c
#data 0x622CD02c
#data 0x0234

loc_8C0F55D2:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0F55D6:
#data 0xE020
#data 0x034CD529
#data 0x72346253
#data 0x332C633c
#data 0x21186130
#data 0x014C8916
#data 0x73346353
#data 0x313C611c
#data 0x6210E021
#data 0x622C034c
#data 0x72FF633c
#data 0x8B093230
#data 0x70018444
#data 0xE0208044
#data 0x2338034c
#data 0xD31C8B02
#data 0x0436E044

#align4
loc_8C0F5618:
#data 0x0009000b
;-------------------------------------------------------------------------------

#align4
loc_8C0F561C:
#data 0x024CE020
#data 0xD019E101
#data 0x032C622c
#data 0x024CE021
#data 0x622C633c
#data 0x2318412c
#data 0x84448902
#data 0x80447001

#align4
loc_8C0F563C:
#data 0x0009000b
;-------------------------------------------------------------------------------

#align4
loc_8C0F5640:
#data 0x034CE020
#data 0xD010E110
#data 0x023C633c
#data 0x034CE021
#data 0x633C622c
#data 0x2218413c
#data 0x84448902
#data 0x80447001

#align4
loc_8C0F5660:
#data 0x0009000b
;-------------------------------------------------------------------------------

#align4
loc_8C0F5664:
#data 0xD106E020
#data 0x600C004c
#data 0x600C001c
#data 0x8B028803
#data 0x70018444
#data 0x8044

loc_8C0F567A:
#data 0x000b
#data 0x00000009
#data 0x8C28C410
#data 0x00008000
#data 0x8C28C412

#align4
loc_8C0F568C:
#data 0xE5052FE6
#data 0xD3304F22
#data 0xE6016E43
#data 0xE400430b
#data 0x8D1D2008
#data 0x90516403
#data 0xD22CE300
#data 0x709C0434
#data 0x1424934d
#data 0xF48D33Ec
#data 0x14E6F39d
#data 0xE0200436
#data 0x142552E5
#data 0x043403Ec
#data 0x02ECE021
#data 0x04249340
#data 0xF447E034
#data 0xF447E038
#data 0xF437E03c
#data 0x04369039

#align4
loc_8C0F56DC:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0F56E2:
mov.b @(0x04,r4),r0 	
extu.b r0,r0
cmp/eq 0x00,r0 	
bt loc_8C0F56F2
cmp/eq 0x01,r0 	
bt loc_8C0F5744
bra loc_8C0F5744
nop 	

loc_8C0F56F2:
#data 0xE020
#data 0xE110034c
#data 0x633CD018
#data 0xE021023c
#data 0x622C034c
#data 0x413C633c
#data 0x891B2218
#data 0xE3018444
#data 0x7001D213
#data 0x80445545
#data 0x04349016
#data 0x334CE320
#data 0x63306022
#data 0x633CD20f
#data 0x61336002
#data 0x331C4300
#data 0x332C910e
#data 0x6110315c
#data 0x6310313c
#data 0x013E4308
#data 0x04169007


loc_8C0F5744:
rts 	
nop 	
;-------------------------------------------------------------------------------
#data 0x0088012c
#data 0x00CC0801
#data 0x008404C9

#align4
loc_8C0F5754:
#data bank04.loc_8c044F12

loc_8C0F5758:
#data loc_8c0f56E2
#data 0x8C28C412
#data 0x8C26A910

#align4
loc_8C0F5764:
#data bank16.loc_8c1621Ec


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
;-------------------------------------------------------------------------------

#align4
loc_8C0F5784:
#data 0x7FFC4F22
#data 0xE505D327
#data 0xE6012F42
#data 0xE400430b
#data 0x8D292008
#data 0x903E6403
#data 0xD123E301
#data 0x0434E500
#data 0x9339709c
#data 0xD1226212
#data 0xD220332c
#data 0x14240436
#data 0x62F26312
#data 0x42086332
#data 0x323CF48d
#data 0x50286343
#data 0x922A7340
#data 0x2202324c
#data 0xF447E034
#data 0xF447E038
#data 0xF447E03c
#data 0xE0442352
#data 0x04569320
#data 0x0456E048
#data 0x0436901d
#data 0x0456700c

#align4
loc_8C0F57EC:
#data 0x4F267F04
#data 0x0009000b
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------
#data 0x012c
#data 0x00840088
#data 0x00CC080f

loc_8C0F5824:
#data 0x0100

loc_8C0F5826:
#data 0x0180

#align4
loc_8C0F5828:
#data bank04.loc_8c044F12
#data 0x8C28C468

#align4
loc_8C0F5830:
#data loc_8c0f57F4
#data 0x8C26A910

#align4
loc_8C0F5838:
#data 0x4F222FE6
#data 0x2F507FFc
#data 0x233863F0
#data 0x6E438D06
#data 0x9175D340
#data 0x001C6032
#data 0x89648807

#align4
loc_8C0F5854:
#data 0xE505D33e
#data 0x430BE601
#data 0x2008E400
#data 0x64038D5d
#data 0xE3019069
#data 0x0434D53a
#data 0x14E69066
#data 0xE02003Ec
#data 0x85EF0434
#data 0xE0216203
#data 0x905D0424
#data 0x233803Ec
#data 0xD3348908
#data 0x0436E044
#data 0x90566252
#data 0x013E6322
#data 0x0009A007

#align4
loc_8C0F5898:
#data 0xE200E044
#data 0x63520426
#data 0x6232904e
#data 0x012e

loc_8C0F58A6:
#data 0x904c
#data 0x0416D72c
#data 0x067CE033
#data 0x606CD52b
#data 0x8B0E8803
#data 0x61439040
#data 0x02EC7134
#data 0x42086323
#data 0x323C4200
#data 0x4208D326
#data 0x430B325c
#data 0xA013E00c
#data 0x0009

loc_8C0F58D6:
#data 0x9031
#data 0x6143666c
#data 0x02EC7134
#data 0x42086323
#data 0x323C4200
#data 0x46006363
#data 0xD31D363c
#data 0x325C4208
#data 0x326C4608
#data 0xE00C430b

#align4
loc_8C0F58FC:
#data 0x91219023
#data 0xE0330416
#data 0x901F037c
#data 0x0436633c
#data 0x222862F0
#data 0x60438D03
#data 0xA002D214
#data 0x1424

loc_8C0F591A:
#data 0xD114
#data 0x1414

loc_8C0F591E:
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

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
#data 0x012C0081
#data 0x02C80524
#data 0x008402C4
#data 0x00CC0801
#data 0x000000D8
#data 0x8C26823c

#align4
loc_8C0F5950:
#data bank04.loc_8c044F12
#data 0x8C26A910
#data 0x00008000
#data 0x8C28C410

#align4
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

loc_8C0F5974:
#data 0x4F222FE6
#data 0x6E43B030
#data 0x02ECE020
#data 0xD042E101
#data 0x032C622c
#data 0x02ECE021
#data 0x622C633c
#data 0x2318412c
#data 0x84E48902
#data 0x80E47001

#align4
loc_8C0F599C:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0F59A2:
#data 0x2FE6
#data 0xB0194F22
#data 0xE0206E43
#data 0xE11002Ec
#data 0x622CD036
#data 0xE021032c
#data 0x633C02Ec
#data 0x412C622c
#data 0x89052318
#data 0xE30084E4
#data 0x80E47001
#data 0x0E34905b

#align4
loc_8C0F59D0:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0F59D6:
mov.l @(loc_8C0F5A90,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

#align4
loc_8C0F59DC:
#data 0x6E432FE6
#data 0xE0362FD6
#data 0x2FC6D42b
#data 0x034C4F22
#data 0x8B652338
#data 0x600C84E6
#data 0x89038800
#data 0x893B8801
#data 0x0009A05e

#align4
loc_8C0F5A00:
#data 0x034CE033
#data 0x0DEC9040
#data 0x62DC2D3a
#data 0x89552228
#data 0xDC2184E6
#data 0x80E67001
#data 0x81EFE01e
#data 0x004CE033
#data 0x8803600c
#data 0xE0208B0a
#data 0x622C02Ec
#data 0x42086323
#data 0x323C4200
#data 0x3C2C4208
#data 0xE600A010

#align4
loc_8C0F5A3C:
#data 0x03ECE020
#data 0x633CE600
#data 0x43086233
#data 0x332C4300
#data 0x3C3C4308
#data 0x623363Dc
#data 0x332C4300
#data 0x3C3C4308

#align4
loc_8C0F5A5C:
#data 0xD30F85Ef
#data 0x6503F4C8
#data 0x64E3430b
#data 0x6DDC900e
#data 0x22DB02Ee
#data 0x0E26A024

#align4
loc_8C0F5A74:
#data 0x70FF85Ef
#data 0x85EF81Ef
#data 0x890F4015
#data 0xA014E000
#data 0x012C80E6
#data 0x000000D8
#data 0x8C28C412

#align4
loc_8C0F5A90:
#data bank04.loc_8c0450C0
#data 0x8C28C410

#align4
loc_8C0F5A98:
#data bank16.loc_8c162210

loc_8C0F5A9C:
#data bank03.loc_8c03C8F6

loc_8C0F5AA0:
#data 0x31ECE15c
#data 0xF318E034
#data 0xF230F2E6
#data 0xFE27

loc_8C0F5AAE:
#data 0xE168
#data 0xE05C31Ec
#data 0xF2E6F318
#data 0xFE27F230

#align4
loc_8C0F5ABC:
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x00006EF6

#align4
loc_8C0F5AC8:
#data 0x6E532FE6
#data 0xE5052FD6
#data 0xD33D4F22
#data 0xE6016D43
#data 0xE400430b
#data 0x8D4D2008
#data 0xD23A6403
#data 0x9066E301
#data 0x0434D139
#data 0x1424709c
#data 0x63129262
#data 0x410861Ec
#data 0x323CD637
#data 0xE0200426
#data 0x04E4D234
#data 0x90586322
#data 0x313C6332
#data 0x011E6343
#data 0x90537340
#data 0xC7310416
#data 0xC731F608
#data 0xC731F508
#data 0x914CF408
#data 0xD03065Ec
#data 0x051A251e
#data 0x9047350c
#data 0x420802Dc
#data 0x325C4200
#data 0x425A6222
#data 0xF362F32d
#data 0xF340F353
#data 0x025AF33d
#data 0x23222269
#data 0x430803Dc
#data 0x353C4300
#data 0x435A5351
#data 0xF362F32d
#data 0xF340F353
#data 0x035AF33d
#data 0xE200E044
#data 0x04362369
#data 0x0426E048
#data 0x93269028
#data 0x90230436
#data 0x804100Dc

#align4
loc_8C0F5B7C:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

loc_8C0F5BB6:
#data 0x012c
#data 0x01100088
#data 0x01D80084
#data 0x0806052c
#data 0x000000Cc

#align4
loc_8C0F5BC8:
#data bank04.loc_8c044F12

loc_8C0F5BCC:
#data loc_8c0f5B84
#data 0x8C28C468
#data 0x8C26A910
#data 0x0000FFFf
#data 0x47800000
#data 0x43B40000
#data 0x3F000000

#align4
loc_8C0F5BE8:
#data bank16.loc_8c162264

loc_8C0F5BEC:
#data 0x8C26823c

#align4
loc_8C0F5BF0:
#data bank04.loc_8c0450C0


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
;-------------------------------------------------------------------------------

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

#align4
loc_8C0F5D08:
#data 0x8C26A910

#align4
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
;-------------------------------------------------------------------------------

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

loc_8C0F5E4A:
#data 0xE048
#data 0x014ED316
#data 0x6213315c
#data 0x04163233
#data 0x8B05

loc_8C0F5E5A:
#data 0x8444
#data 0x7001E300
#data 0xE0488044
#data 0x0436


loc_8C0F5E66:
rts 	
nop 	
;-------------------------------------------------------------------------------

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

#align4
loc_8C0F5E88:
#data 0x8C26A910

#align4
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
#data 0x00010000


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
;-------------------------------------------------------------------------------

#align4
loc_8C0F5EC0:
#data 0x034CE020
#data 0xD039E110
#data 0x023C633c
#data 0x034CE021
#data 0x633C622c
#data 0x2218413c
#data 0x84448904
#data 0x80447001
#data 0x814EE00a

#align4
loc_8C0F5EE4:
#data 0x0009000b
;-------------------------------------------------------------------------------

#align4
loc_8C0F5EE8:
#data 0x70FF854e
#data 0x854E814e
#data 0x89024015
#data 0x70018444
#data 0x8044

loc_8C0F5EFA:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

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

#align4
loc_8C0F5F1C:
#data 0x9240E048
#data 0x3358034e
#data 0x31276133
#data 0x89050436

#align4
loc_8C0F5F2C:
#data 0xE3008444
#data 0x80447001
#data 0x04349036


loc_8C0F5F38:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0F5F3C:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0F5FA4,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0F5F4A:
mov.l @(loc_8C0F5FB0,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

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
;-------------------------------------------------------------------------------

loc_8C0F5F76:
#data 0xD110
#data 0x23386310
#data 0x84448904
#data 0x80447001
#data 0x814EE00a

#align4
loc_8C0F5F88:
#data 0x0009000b
;-------------------------------------------------------------------------------

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

loc_8C0F5F9E:
#data 0x0200

loc_8C0F5FA0:
#data 0x2000
#data 0xE000

loc_8C0F5FA4:
#data 0x012c
#data 0x0000

#align4
loc_8C0F5FA8:
#data 0x8C28C410
#data 0x8C28C412

#align4
loc_8C0F5FB0:
#data bank04.loc_8c0450C0

loc_8C0F5FB4:
#data bank16.loc_8c162660
#data 0x8C28C442


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
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

loc_8C0F6090:
mov.l @(loc_8C0F60BC,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

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

#align4
loc_8C0F60AC:
#data bank12.loc_8c1294C8

loc_8C0F60B0:
#data 0x3E400000

#align4
loc_8C0F60B4:
#data bank03.loc_8c03D21a

loc_8C0F60B8:
#data bank16.loc_8c162690

loc_8C0F60BC:
#data bank04.loc_8c0450C0

loc_8C0F60C0:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0xFFFB2F86
#data 0x4F22FFEb
#data 0x6D437FFc
#data 0x53D5C74c
#data 0x9B8DEC00
#data 0x988AE903
#data 0x2F32EA01
#data 0xFE086EC3
#data 0xFF9d

loc_8C0F60EE:
#data 0xD348
#data 0xE601E505
#data 0xE400430b
#data 0x8D472008
#data 0x937E6403
#data 0x33DC907e
#data 0x14D6917d
#data 0x70640436
#data 0xD34152D5
#data 0x04A41425
#data 0x1434E020
#data 0x042402Dc
#data 0x04E4E021
#data 0xD23D60F2
#data 0x8041001c
#data 0x632260Ef
#data 0x63324008
#data 0x9367303c
#data 0x9066033e
#data 0xE0200436
#data 0x622C024c
#data 0x42086323
#data 0x61EF4200
#data 0x6313323c
#data 0x313C4100
#data 0x4208D332
#data 0xD332323c
#data 0x321C4108
#data 0x71346143
#data 0xE00C430b
#data 0x6143E044
#data 0x21B27140
#data 0xE04804C6
#data 0x904904C6
#data 0xE0500486
#data 0xE054F4F7
#data 0xE058F4E7
#data 0xF4F7B010
#data 0x62EF7E01
#data 0x8BB03293

#align4
loc_8C0F618C:
#data 0x4F267F04
#data 0xFFF9FEF9
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0F61A4:
#data 0xE5052FE6
#data 0xD3194F22
#data 0xE6016E43
#data 0xE400430b
#data 0x8D6A2008
#data 0x90216403
#data 0x14E6D11a
#data 0x043603Ee
#data 0x7064E301
#data 0x142552E5
#data 0xE0200434
#data 0x1424D214
#data 0x043403Ec
#data 0x02ECE021
#data 0x0424D30e
#data 0x804184E1
#data 0x6212E029
#data 0x2008002c
#data 0x65328D1e
#data 0x6352900b
#data 0xA01C023e
#data 0x08130009
#data 0x00882000
#data 0x052C00C8
#data 0x0084018c
#data 0x01B000Cc
#data 0x3C23D70a

#align4
loc_8C0F6210:
#data bank04.loc_8c044F12

loc_8C0F6214:
#data loc_8c0f6368
#data 0x8C26A910

#align4
loc_8C0F621C:
#data bank16.loc_8c1626A8

loc_8C0F6220:
#data bank12.loc_8c1294C8

loc_8C0F6224:
#data loc_8c0f6596
#data 0x8C26823c

#align4
loc_8C0F622C:
#data 0x635290Ab
#data 0x023e

loc_8C0F6232:
#data 0x90A9
#data 0xE0200426
#data 0xE021024c
#data 0x622C014c
#data 0x42086323
#data 0x611C4200
#data 0x6313323c
#data 0x313C4100
#data 0x4208D351
#data 0xD351323c
#data 0x321C4108
#data 0x71346143
#data 0xE00C430b
#data 0x61439292
#data 0x71409091
#data 0x938CF49d
#data 0x2132D54c
#data 0xE0500426
#data 0xC749F447
#data 0xE054F308
#data 0xF437D349
#data 0xF447E058
#data 0x432B4F26
#data 0x6EF6

loc_8C0F628E:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0F6294:
#data 0xC7422FE6
#data 0xED002FD6
#data 0x6C432FC6
#data 0x6ED32FB6
#data 0xEA012FA6
#data 0xE9022F96
#data 0xE86B2F86
#data 0xFFEBFFFb
#data 0xFE084F22
#data 0xFF9D9B67

#align4
loc_8C0F62BC:
#data 0xE505D33b
#data 0x430BE601
#data 0x2008E400
#data 0x64038D43
#data 0x61839360
#data 0x33CC905f
#data 0x043614C6
#data 0x52C57064
#data 0x1425D334
#data 0xE02004A4
#data 0x02CC1434
#data 0x0424D332
#data 0x04E4E021
#data 0x603262Ef
#data 0x41083128
#data 0x021E6002
#data 0x04269044
#data 0x024CE020
#data 0x6123622c
#data 0x321C4200
#data 0x631361Ef
#data 0x42004208
#data 0x313C4100
#data 0x4108D327
#data 0xD31F323c
#data 0x6143321c
#data 0x430B7134
#data 0xE044E00c
#data 0x7E01932e
#data 0x71406143
#data 0x04D621B2
#data 0x04D6E048
#data 0x04369027
#data 0xF4F7E050
#data 0x63EFE054
#data 0x3393F4E7
#data 0x8FB5E058
#data 0xF4F7

loc_8C0F6352:
#data 0x4F26
#data 0xFFF9FEF9
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------
#data 0x0198
#data 0x20000084
#data 0x00CC0813
#data 0x00C80088

loc_8C0F6394:
#data 0x012c
#data 0x0000

#align4
loc_8C0F6398:
#data bank16.loc_8c1626A8

loc_8C0F639C:
#data bank12.loc_8c1294C8
#data 0x3C23D70a

#align4
loc_8C0F63A4:
#data loc_8c0f65E8

loc_8C0F63A8:
#data bank03.loc_8c0305Ca

loc_8C0F63AC:
#data bank04.loc_8c044F12

loc_8C0F63B0:
#data loc_8c0f649a
#data 0x8C26A910

#align4
loc_8C0F63B8:
#data bank16.loc_8c1626F0

loc_8C0F63BC:
#data bank16.loc_8c16283c


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

loc_8C0F63DA:
#data 0x84E5
#data 0xD334E500
#data 0x80E57001
#data 0x64E3430b
#data 0x420BD232
#data 0xD33264E3
#data 0x64E3430b

#align4
loc_8C0F63F4:
#data 0xE054D131
#data 0x415AF2E6
#data 0xF30DF49d
#data 0xF425F230
#data 0xFE278D05
#data 0x700184E5
#data 0xE05480E5
#data 0xFE47


loc_8C0F6412:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

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

#align4
loc_8C0F6474:
#data 0xF28DE054
#data 0xF341F346
#data 0x8D07F325
#data 0x6053F437
#data 0x80460009
#data 0xF308C70d
#data 0xF437E054


loc_8C0F6490:
rts 	
nop 	
;-------------------------------------------------------------------------------

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
#data 0x3C23D70a

#align4
loc_8C0F64C4:
#data bank04.loc_8c0450C0

loc_8C0F64C8:
#data bank16.loc_8c162854


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

loc_8C0F64E6:
#data 0x84E5
#data 0xD339E501
#data 0x80E57001
#data 0x64E3430b

#align4
loc_8C0F64F4:
#data 0xE054D137
#data 0x415AF2E6
#data 0xF30DF49d
#data 0xF425F230
#data 0xFE278D05
#data 0x700184E5
#data 0xE05480E5
#data 0xFE47


loc_8C0F6512:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

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

loc_8C0F6576:
#data 0xE054
#data 0xF346F28d
#data 0xF325F341
#data 0xF4378D07
#data 0x00096053
#data 0xC7148046
#data 0xE054F308
#data 0xF437


loc_8C0F6592:
rts 	
nop 	
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

loc_8C0F65CC:
#data 0x0089

loc_8C0F65CE:
#data 0x012c

#align4
loc_8C0F65D0:
#data loc_8c0f69F0

loc_8C0F65D4:
#data 0x3DCCCCCd

#align4
loc_8C0F65D8:
#data 0x8C26823c
#data 0x3C23D70a

#align4
loc_8C0F65E0:
#data bank16.loc_8c16286c

loc_8C0F65E4:
#data bank12.loc_8c1294C8


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

#align4
loc_8C0F6648:
#data bank16.loc_8c162788

loc_8C0F664C:
#data bank16.loc_8c162720

loc_8C0F6650:
#data 0x8C26823c

#align4
loc_8C0F6654:
#data bank03.loc_8c03D21a

loc_8C0F6658:
#data 0xE5052FE6
#data 0x6D432FD6
#data 0xD33E4F22
#data 0x430BE601
#data 0x2008E400
#data 0x6E038D2b
#data 0xE201906e
#data 0x0E24D33a
#data 0x926A709c
#data 0x32DC1E34
#data 0xF48DD138
#data 0x0E261ED6
#data 0x03DCE021
#data 0x03DC0E34
#data 0x633CD035
#data 0x43006212
#data 0x6222033c
#data 0x9059633c
#data 0x332C4308
#data 0x9056033e
#data 0xE0340E36
#data 0xE038FE47
#data 0xE03CFE47
#data 0xE021FE47
#data 0x05ECD32c
#data 0x64E3430b
#data 0x9249904b
#data 0x0E26

loc_8C0F66C6:
#data 0x60E3
#data 0x4F260009
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0F66D2:
#data 0x4F22
#data 0x0009BFC0
#data 0x8D022008
#data 0xD3246503
#data 0x1534

loc_8C0F66E2:
#data 0x4F26
#data 0x0009000b
;-------------------------------------------------------------------------------

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

loc_8C0F66FA:
#data 0xC71f
#data 0xF3085546
#data 0xF256E03c
#data 0x8904F325
#data 0xE3028454
#data 0x3033600c
#data 0x8B05

loc_8C0F6712:
#data 0x901d
#data 0x0414E100
#data 0x70018444
#data 0x8044

loc_8C0F671E:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0F6722:
mov.l @(loc_8C0F677C,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

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
;-------------------------------------------------------------------------------

loc_8C0F6750:
#data 0x012c
#data 0x0088
#data 0x008401E4
#data 0x00CC0805

#align4
loc_8C0F675C:
#data bank04.loc_8c044F12

loc_8C0F6760:
#data loc_8c0f66E8
#data 0x8C26A910

#align4
loc_8C0F6768:
;#data {bank13.loc_8c13b7D4 + 1}
#data bank13.loc_8c13b7D5

loc_8C0F676C:
#data loc_8c0f3D50

loc_8C0F6770:
#data loc_8c0f6728

loc_8C0F6774:
#data bank16.loc_8c162884
#data 0x432A0000

#align4
loc_8C0F677C:
#data bank04.loc_8c0450C0

loc_8C0F6780:
#data 0xC73B2FE6
#data 0xED002FD6
#data 0x6ED32FC6
#data 0xEB112FB6
#data 0xEC012FA6
#data 0x2F862F96
#data 0xFFEBFFFb
#data 0x9A614F22
#data 0x995EFE08
#data 0xFF8DD831

#align4
loc_8C0F67A8:
#data 0xE601E505
#data 0xE400480b
#data 0x8D252008
#data 0x90566403
#data 0xD32E65Ec
#data 0x04C44508
#data 0x1434E020
#data 0x04E46343
#data 0xF4F7E034
#data 0xF4E7E038
#data 0xF4F7E03c
#data 0xD0287340
#data 0x23D2E244
#data 0x035E324c
#data 0x2232E048
#data 0x04D6D325
#data 0x60026032
#data 0x029E305c
#data 0x0426903a
#data 0x7E017048
#data 0x32B362Ec
#data 0x04A68FD4

#align4
loc_8C0F6800:
#data 0xFEF94F26
#data 0x68F6FFF9
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

loc_8C0F6854:
mov.b @(0x04,r4),r0 	
add 0x01,r0
rts 	
mov.b r0,@(0x04,r4) 	
;-------------------------------------------------------------------------------

loc_8C0F685C:
mov.l @(loc_8C0F6888,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x0218
#data 0x0805

loc_8C0F6866:
#data 0x012c
#data 0x0084

loc_8C0F686A:
#data 0x0100

#align4
loc_8C0F686C:
#data bank04.loc_8c044F12
#data 0x43C80000

#align4
loc_8C0F6874:
#data loc_8c0f6816

loc_8C0F6878:
#data bank16.loc_8c16288c
#data 0x8C26A910

#align4
loc_8C0F6880:
#data bank16.loc_8c1628D0

loc_8C0F6884:
#data 0x8C26823c

#align4
loc_8C0F6888:
#data bank04.loc_8c0450C0

loc_8C0F688C:
#data 0xE5052FE6
#data 0xD34E4F22
#data 0xE6016E43
#data 0xE400430b
#data 0x8D3A2008
#data 0x908A6403
#data 0xD14BE301
#data 0x709C0434
#data 0x14E69386
#data 0x043633Ec
#data 0x02ECE020
#data 0xE0210424
#data 0xD24403Ec
#data 0xE0200434
#data 0x02EC1424
#data 0x63127064
#data 0x6332622c
#data 0x323C4208
#data 0x04365322
#data 0x02ECE020
#data 0x6323622c
#data 0x323C4200
#data 0x4208D33c
#data 0x323C6143
#data 0x7134D33b
#data 0xE00C430b
#data 0x9362E048
#data 0xF49DE100
#data 0x905F0416
#data 0xE0500436
#data 0xE054F447
#data 0xE058F447
#data 0xE020F447
#data 0xE02203Ec
#data 0x0434

loc_8C0F6916:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

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

loc_8C0F6942:
#data 0xE048
#data 0x315C014e
#data 0x0416

loc_8C0F694A:
#data 0xE020
#data 0xE101034c
#data 0x633CD024
#data 0xE021023c
#data 0x622C034c
#data 0x413C633c
#data 0x89172218
#data 0xD21B8444
#data 0x80447001
#data 0x63225146
#data 0xD11D8411
#data 0x6332600c
#data 0x011C4000
#data 0x611C9022
#data 0x313C4108
#data 0x011E9320
#data 0x0416901d
#data 0x04367048
#data 0x814EE014

#align4
loc_8C0F6994:
#data 0x0009000b
;-------------------------------------------------------------------------------

#align4
loc_8C0F6998:
#data 0x70FF854e
#data 0x854E814e
#data 0x89054015
#data 0xE3008444
#data 0x80447001
#data 0x04349005

#align4
loc_8C0F69B0:
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0F69B4:
mov.l @(loc_8C0F69EC,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x012c
#data 0x08190088
#data 0x00Cc

loc_8C0F69C2:
#data 0x0400
#data 0x008401E0
#data 0x00000810

#align4
loc_8C0F69CC:
#data bank04.loc_8c044F12

loc_8C0F69D0:
#data loc_8c0f691c
#data 0x8C26A910

#align4
loc_8C0F69D8:
#data bank16.loc_8c1628Dc

loc_8C0F69DC:
#data bank12.loc_8c1294C8

loc_8C0F69E0:
#data bank16.loc_8c1628F4
#data 0x8C28C412

#align4
loc_8C0F69E8:
;#data {bank13.loc_8c13b7D4 + 1}
#data bank13.loc_8c13b7D5

loc_8C0F69EC:
#data bank04.loc_8c0450C0


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
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

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
#data 0x0000

#align4
loc_8C0F6B28:
#data bank04.loc_8c044F12

loc_8C0F6B2C:
#data 0x8C26A910

#align4
loc_8C0F6B30:
#data loc_8c0f6B7c

loc_8C0F6B34:
#data loc_8c0f6A96

loc_8C0F6B38:
#data 0x3C23D70a

#align4
loc_8C0F6B3C:
#data bank10.loc_8c108210

loc_8C0F6B40:
#data bank16.loc_8c162900


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
;-------------------------------------------------------------------------------

loc_8C0F6B6A:
mov.w @(loc_8C0F6C42,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0F6B72:
mov.l @(loc_8C0F6C48,pc),r3 ; r3 set to 0x8C0450C0
mov 0x00,r2 ; r2 set to 0x00
mov.w @(loc_8C0F6C42,pc),r0 ; r0 set to 0x12c
jmp @r3
mov.b r2,@(r0,r4) 	

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
;-------------------------------------------------------------------------------

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

loc_8C0F6C1E:
#data 0xE15c
#data 0x314CF49d
#data 0xF318E050
#data 0xF231F246
#data 0xF345F32c
#data 0xF4278D04
#data 0xE022F447
#data 0x0434E301


loc_8C0F6C3C:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0F6C40:
#data 0x00D0

loc_8C0F6C42:
#data 0x012c

#align4
loc_8C0F6C44:
#data 0x3D23D70a

#align4
loc_8C0F6C48:
#data bank04.loc_8c0450C0

loc_8C0F6C4C:
#data bank16.loc_8c162918

loc_8C0F6C50:
#data 0x8C26823c

#align4
loc_8C0F6C54:
#data 0x3F83D70a

#align4
loc_8C0F6C58:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x4F22FFFb
#data 0xE0217FF8
#data 0x03EC6E43
#data 0x8B2B2338
#data 0x933185Ee
#data 0x81EE7001
#data 0x303385Ee
#data 0xE0008B01
#data 0x81Ee

loc_8C0F6C82:
#data 0xD317
#data 0x64329029
#data 0xD11605Ee
#data 0x62429026
#data 0x042E410b
#data 0xC717DD16
#data 0xDB13DC14
#data 0xFF08A010

#align4
loc_8C0F6CA0:
#data 0x65F364F3
#data 0x74044D0b
#data 0x64F385Ee
#data 0x65F3F2F8
#data 0x435A6303
#data 0xF3F2F32d
#data 0xFF2AF231
#data 0x74044B0b

#align4
loc_8C0F6CC0:
#data 0x00094C0b
#data 0x89EB2008

#align4
loc_8C0F6CC8:
#data 0x4F267F08
#data 0x6BF6FFF9
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x008401F4
#data 0x000002C0
#data 0x8C26A910

#align4
loc_8C0F6CE4:
#data bank10.loc_8c108060

loc_8C0F6CE8:
#data bank10.loc_8c1081E6

loc_8C0F6CEC:
#data bank10.loc_8c108086

loc_8C0F6CF0:
#data bank10.loc_8c108192
#data 0x3B03126f


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

#align4
loc_8C0F6DC4:
#data 0xD124963a
#data 0x60721414
#data 0x036E6002
#data 0x04369035
#data 0x024CE020
#data 0x014CE021
#data 0x6323622c
#data 0x42004208
#data 0x323C611c
#data 0x42086313
#data 0x41004200
#data 0xD316313c
#data 0x41004108
#data 0x321C325c
#data 0x720C6143
#data 0x430B7134
#data 0xE020E00c
#data 0x71406143
#data 0x034C21E2
#data 0x89022338
#data 0xE044D511
#data 0x0456

loc_8C0F6E1A:
#data 0xE050
#data 0xE054F447
#data 0xE058F447
#data 0x7074F447
#data 0xE510034e
#data 0xA01F235b
#data 0x0436

loc_8C0F6E32:
#data 0x012c

loc_8C0F6E34:
#data 0x0088

loc_8C0F6E36:
#data 0x0C27

loc_8C0F6E38:
#data 0x00Cc

loc_8C0F6E3A:
#data 0x01D0
#data 0x008401Dc

#align4
loc_8C0F6E40:
#data bank04.loc_8c044F12

loc_8C0F6E44:
#data loc_8c0f6ECc

loc_8C0F6E48:
#data bank16.loc_8c162930

loc_8C0F6E4C:
#data bank12.loc_8c1294C8

loc_8C0F6E50:
#data 0x0000E001

#align4
loc_8C0F6E54:
#data 0x8C26A910

#align4
loc_8C0F6E58:
#data loc_8c0f6F7e
#data 0x00008000

#align4
loc_8C0F6E60:
#data 0x636260Dc
#data 0x957B4008
#data 0x303c


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

loc_8C0F6E9E:
#data 0xC733
#data 0xE078F408
#data 0xC732F447
#data 0xF408


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
;-------------------------------------------------------------------------------

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

#align4
loc_8C0F6F40:
#data 0x64E3B07e
#data 0x2008600c
#data 0x8B03


loc_8C0F6F4A:
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0F7054
mov.l @r15+,r14

loc_8C0F6F52:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0F6F58:
mov.w @(loc_8C0F6F64,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------
#data 0x01C0

loc_8C0F6F62:
#data 0x0084

loc_8C0F6F64:
#data 0x012c
#data 0x0000

#align4
loc_8C0F6F68:
#data 0x3F000000
#data 0x3E4CCCCd
#data 0x3F51EB85

#align4
loc_8C0F6F74:
#data bank16.loc_8c1629C0


loc_8C0F6F78:
mov.l @(loc_8C0F7068,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

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

#align4
loc_8C0F7028:
#data 0x64E3B00a
#data 0x2008600c
#data 0x8B03


loc_8C0F7032:
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0F7054
mov.l @r15+,r14

loc_8C0F703A:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

loc_8C0F7054:
mov.w @(loc_8C0F7062,pc),r0 ; r0 set to 0x12c
mov 0x00,r5 ; r5 set to 0x00
mov.b r5,@(r0,r4) 	
mov r5,r0 ; r0 set to 0x00
nop 	
rts 	
mov.b r0,@(0x05,r4) 	
;-------------------------------------------------------------------------------

loc_8C0F7062:
#data 0x012c

loc_8C0F7064:
#data 0x04C9
#data 0x0000

#align4
loc_8C0F7068:
#data bank04.loc_8c0450C0

loc_8C0F706C:
#data bank16.loc_8c1629D8

loc_8C0F7070:
#data 0x3DCCCCCd


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

loc_8C0F70C6:
#data 0xE020
#data 0xE0210464
#data 0x0474


loc_8C0F70CE:
mov r5,r0
nop 	
mov.b r0,@(0x04,r4) 	
bra loc_8C0F70E4
mov.b r0,@(0x05,r4) 	

#align4
loc_8C0F70D8:
#data 0x00096063
#data 0xE303D228
#data 0x22308044


loc_8C0F70E4:
lds.l @r15+,pr 	
rts 	
nop 	
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

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
#data 0x8C28C443

#align4
loc_8C0F7184:
#data 0x8C28C446

#align4
loc_8C0F7188:
#data bank04.loc_8c0450C0

loc_8C0F718C:
#data 0x8C28C410

#align4
loc_8C0F7190:
#data 0x8B078805
#data 0xE3038446
#data 0x80467001
#data 0x026CE033
#data 0x0624223b


loc_8C0F71A4:
rts 	
nop 	
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

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

#align4
loc_8C0F72A8:
#data loc_8c0f7530

loc_8C0F72AC:
#data 0x3FB33333

#align4
loc_8C0F72B0:
#data 0x8C26A910

#align4
loc_8C0F72B4:
#data 0x0000C71c

#align4
loc_8C0F72B8:
#data bank04.loc_8c04257c

loc_8C0F72BC:
#data bank16.loc_8c1629F0

loc_8C0F72C0:
#data 0x8C26823c

#align4
loc_8C0F72C4:
#data loc_8c0f76B6

loc_8C0F72C8:
#data bank12.loc_8c1294C8

loc_8C0F72CC:
#data 0x6CE3FF8d

#align4
loc_8C0F72D0:
#data 0xE505D257
#data 0x420BE601
#data 0x2008E400
#data 0x64038D2c
#data 0x6143909d
#data 0x7134939c
#data 0x0494D252
#data 0x33DC709c
#data 0x043614D6
#data 0x1424E020
#data 0x632362Ef
#data 0x323C4200
#data 0x4208D34d
#data 0x328C04E4
#data 0xE00C430b
#data 0x63EFD04b
#data 0x61024308
#data 0x90847E01
#data 0x332C6212
#data 0x62EF033e
#data 0x32B39080
#data 0xE0440436
#data 0x907C04C6
#data 0x04A6937c
#data 0xF4F7E074
#data 0x3C3C8FCc


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
;-------------------------------------------------------------------------------

#align4
loc_8C0F734C:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0xFFFB2F86
#data 0xFFDBFFEb
#data 0x4F22FFCb
#data 0xD3327FF8
#data 0x2F42E505
#data 0x430BE601
#data 0x2008E400
#data 0x6C038F02
#data 0x0009A0Cc

#align4
loc_8C0F737C:
#data 0xFE8DE034
#data 0xED0063F2
#data 0x1C36D22e
#data 0x734063C3
#data 0x1C24D12b
#data 0xC72CFCE7
#data 0xE038F308
#data 0xE03CFC37
#data 0xE044FCE7
#data 0x0CD623D2
#data 0x0CD6E048
#data 0x933E903d
#data 0x62120C36
#data 0x6322903c
#data 0x9035033e
#data 0x90300C36
#data 0xFDD0FD9d
#data 0xC7210CD4
#data 0x6BD3DA21
#data 0xE801FC08
#data 0xFF9d

loc_8C0F73CE:
#data 0xD318
#data 0xE601E505
#data 0xE400430b
#data 0x8F022008
#data 0xA0996E03
#data 0x0009

loc_8C0F73E2:
#data 0x63F2
#data 0x902269Be
#data 0x1E364908
#data 0x93174900
#data 0x33CC1EC5
#data 0x70640E36
#data 0x0E84D315
#data 0x1E34E020
#data 0x0EB46393
#data 0xC71333Ac
#data 0xF308F238
#data 0x238863Be
#data 0xE034F232
#data 0xFE278D20
#data 0xA024E038
#data 0x012CFEE7
#data 0x01680088
#data 0x00CC0084
#data 0x08090E39
#data 0x00C80208

#align4
loc_8C0F7430:
#data bank04.loc_8c044F12

loc_8C0F7434:
#data loc_8c0f76B6

loc_8C0F7438:
#data bank12.loc_8c1294C8
#data 0x8C26A910

#align4
loc_8C0F7440:
#data loc_8c0f77B0
#data 0x433E0000
#data 0x43660000

#align4
loc_8C0F744C:
#data bank16.loc_8c162A50

loc_8C0F7450:
#data loc_8c0f77D8
#data 0x40A00000

#align4
loc_8C0F7458:
#data 0xE0046293
#data 0xF22632Ac
#data 0xF2D2E038
#data 0xFE27

loc_8C0F7466:
#data 0xC748
#data 0xF3086393
#data 0x33ACE03c
#data 0xE01EFE37
#data 0xE00481Ee
#data 0xE7021F31
#data 0x6673F536
#data 0x85EEF438
#data 0x6503D341
#data 0x64E3430b
#data 0xE60285Ee
#data 0x6503D33f
#data 0x430BF4Cc
#data 0xD43E64E3
#data 0x724062E3
#data 0x6342349c
#data 0x2232E048
#data 0x0E265241
#data 0x0ED6E044
#data 0xD23AC739
#data 0xE074F308
#data 0x6322FE37
#data 0x61329060
#data 0x915E001e
#data 0x210231Ec
#data 0x81EFE004
#data 0x0ED4E022
#data 0x0ED4E023
#data 0xFEF7E050
#data 0xFEF7E054
#data 0x9351E058
#data 0xFEF77B01
#data 0x0E367074
#data 0x63BEE103
#data 0x89013313
#data 0x0009AF6d

#align4
loc_8C0F74F4:
#data 0x7F08E439
#data 0xD2294F26
#data 0xFDF9FCF9
#data 0xFFF9FEF9
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6422b

#align4
loc_8C0F7514:
#data 0x4F267F08
#data 0xFDF9FCF9
#data 0xFFF9FEF9
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------
#data 0x00840208
#data 0x0000083f
#data 0x448FC000

#align4
loc_8C0F758C:
#data bank03.loc_8c03C870

loc_8C0F7590:
#data bank03.loc_8c03C952

loc_8C0F7594:
#data bank16.loc_8c162A68
#data 0x3E4CCCCd
#data 0x8C26A910

#align4
loc_8C0F75A0:
#data bank04.loc_8c04257c

loc_8C0F75A4:
#data bank16.loc_8c162A80

loc_8C0F75A8:
#data 0x3CA3D70a

#align4
loc_8C0F75AC:
#data 0xE0442FE6
#data 0x93946E43
#data 0xD44ED54d
#data 0x02EE4F22
#data 0x0E263238
#data 0xD24901Ee
#data 0x0E162129
#data 0x6052918a
#data 0x4008001c
#data 0xE044034e
#data 0x303700Ee
#data 0x84E4890d
#data 0x70019280
#data 0x605280E4
#data 0x4008002c
#data 0xE044034e
#data 0xBEAD0E36
#data 0xE05A64E3
#data 0x81Ee

loc_8C0F75F6:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

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

#align4
loc_8C0F7614:
#data 0x600C8444
#data 0x8B088805
#data 0x935EE044
#data 0x3238024e
#data 0x014E0426
#data 0x2129D22f
#data 0x0416


loc_8C0F762E:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0F7632:
#data 0xE044
#data 0x024E9353
#data 0x04263238
#data 0xD22A014e
#data 0x65132129
#data 0x8F084515
#data 0x914A0416
#data 0x89043513
#data 0x70018444
#data 0xE03C8044
#data 0x814e

loc_8C0F765A:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0F765E:
#data 0xE044
#data 0x024E933d
#data 0x04263238
#data 0xD21F014e
#data 0x04162129
#data 0xF408C720
#data 0xF346E050
#data 0xF437F340
#data 0xF246E054
#data 0xF427F240
#data 0xF346E074
#data 0xF341F28d
#data 0x8D0AF325
#data 0x8444F437
#data 0x7001E300
#data 0xE0748044
#data 0x9021F427
#data 0xE03C0434
#data 0x814e

loc_8C0F76A6:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

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
#data 0x0100
#data 0x071C0081
#data 0x0000012c
#data 0x0000FFFf
#data 0x8C26823c

#align4
loc_8C0F76F0:
#data bank16.loc_8c162AA4
#data 0x3D4CCCCd

#align4
loc_8C0F76F8:
#data 0x8C28C41b

#align4
loc_8C0F76FC:
#data bank04.loc_8c0450C0

loc_8C0F7700:
#data bank16.loc_8c162AC4


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

#align4
loc_8C0F7714:
#data 0xE074D136
#data 0x415AF2E6
#data 0xF231F30d
#data 0xF1E6FE27
#data 0xF125F28d
#data 0xFE278900


loc_8C0F772C:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

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

#align4
loc_8C0F7758:
#data 0xE074D125
#data 0x415AF2E6
#data 0xF30DF49d
#data 0xF425F230
#data 0xFE278D01
#data 0xFE47


loc_8C0F776E:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0F7774:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0F77EA,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0F7782:
mov.l @(loc_8C0F77F4,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

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
;-------------------------------------------------------------------------------

loc_8C0F77AA:
mov 0x00,r0 ; r0 set to 0x00
rts 	
nop 	
;-------------------------------------------------------------------------------

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

#align4
loc_8C0F77C4:
#data 0x70018444
#data 0x8044

loc_8C0F77CA:
#data 0xE048
#data 0x024E930e
#data 0x0426323c


loc_8C0F77D4:
rts 	
nop 	
;-------------------------------------------------------------------------------

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

loc_8C0F77EA:
#data 0x012c
#data 0x00000280
#data 0x3D4CCCCd

#align4
loc_8C0F77F4:
#data bank04.loc_8c0450C0

loc_8C0F77F8:
#data 0x46639000

#align4
loc_8C0F77FC:
#data 0x47471C00

#align4
loc_8C0F7800:
#data bank16.loc_8c162AD4

loc_8C0F7804:
#data 0xE074D14f
#data 0x415AF246
#data 0xF30DF49d
#data 0xF245F230
#data 0xF4278F01
#data 0xF447

loc_8C0F781A:
#data 0x854e
#data 0x814E70Ff
#data 0x4015854e
#data 0x84448925
#data 0x7001D547
#data 0xE0208044
#data 0xE034034c
#data 0x4308633c
#data 0x335C4300
#data 0xF437F338
#data 0x034CE020
#data 0x633CE004
#data 0x43004308
#data 0xF356353c
#data 0xF437E038
#data 0xF308C73d
#data 0xF437E03c
#data 0xF447E074
#data 0x034CE020
#data 0x8B222338
#data 0xE0015345
#data 0xA01E8034
#data 0x0009

loc_8C0F7872:
#data 0xE15c
#data 0x314CD336
#data 0xF318E034
#data 0xE168F246
#data 0xF230314c
#data 0xE05CF427
#data 0xF318F246
#data 0x314CE160
#data 0xF427F230
#data 0xF246E038
#data 0xE16CF318
#data 0xF230314c
#data 0xE060F427
#data 0xF318F246
#data 0x432BF230
#data 0xF427

loc_8C0F78AE:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

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

loc_8C0F78C6:
#data 0x854f
#data 0x814F70Ff
#data 0x4015854f
#data 0xE004891c
#data 0xE022814f
#data 0x7201024c
#data 0xE2050424
#data 0x611C014c
#data 0x8B013127
#data 0x0414E100

#align4
loc_8C0F78EC:
#data 0xD019E222
#data 0xD319324c
#data 0x622C6220
#data 0x6032012c
#data 0x6202611c
#data 0x312C4108
#data 0x911B6012
#data 0x2102314c


loc_8C0F790C:
rts 	
nop 	
;-------------------------------------------------------------------------------

#align4
loc_8C0F7910:
#data 0xE074D10c
#data 0x415AF246
#data 0xF231F30d
#data 0xF146F427
#data 0xF125F28d
#data 0x84448907
#data 0x7001E300
#data 0xE0748044
#data 0x9006F427
#data 0x0434

loc_8C0F7936:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0F793A:
mov.l @(loc_8C0F795C,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x012C0084
#data 0x3D4CCCCd

#align4
loc_8C0F7948:
#data bank16.loc_8c162A50
#data 0x43660000

#align4
loc_8C0F7950:
#data bank03.loc_8c03CB58

loc_8C0F7954:
#data bank13.loc_8c13b84c
#data 0x8C26A910

#align4
loc_8C0F795C:
#data bank04.loc_8c0450C0

loc_8C0F7960:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x4F222F86
#data 0xD3317FF8
#data 0xE601E505
#data 0xE400430b
#data 0x8D4E2008
#data 0xD52F6D03
#data 0x9454E018
#data 0xD32CEA00
#data 0x34DCEB01
#data 0x14A11D34
#data 0x625224A2
#data 0x032CD42a
#data 0x8D0B23B8
#data 0x9046E902
#data 0x02DE534f
#data 0x0D26223b
#data 0x034EE040
#data 0x01DE9040
#data 0x0D16213b

#align4
loc_8C0F79B8:
#data 0xE0186352
#data 0x2298023c
#data 0xE8208D0c
#data 0x034EE044
#data 0x01DE9033
#data 0x0D16213b
#data 0x034EE048
#data 0x02DE902e
#data 0x0D26223b

loc_8C0F79DC:
#data 0x6CA3

loc_8C0F79DE:
#data 0x63Cc
#data 0x43086EA3
#data 0x60C32F32
#data 0x40080009
#data 0x40004008
#data 0x80F4

loc_8C0F79F2:
#data 0x64B3
#data 0x921C63Ec
#data 0x63F2443c
#data 0x323C32Dc
#data 0x24186122
#data 0x84F48903
#data 0xB01D6403
#data 0x34Ec

loc_8C0F7A0E:
#data 0x7E01
#data 0x338363Ec
#data 0x7C018BEd
#data 0x339363Cc
#data 0x8BDf

loc_8C0F7A1E:
#data 0x7F08
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00CC6EF6
#data 0x000000D0

#align4
loc_8C0F7A38:
#data bank04.loc_8c044F12

loc_8C0F7A3C:
#data loc_8c0f7B20
#data 0x8C26823c
#data 0x8C28C410

#align4
loc_8C0F7A48:
#data 0xE5052FE6
#data 0x6D432FD6
#data 0xD3294F22
#data 0x430BE601
#data 0x2008E400
#data 0x6E038D42
#data 0xE3019044
#data 0x0E34D125
#data 0x9340709c
#data 0x61E36212
#data 0x332C7134
#data 0x0E36D222
#data 0x1E24E021
#data 0x632362Dc
#data 0x323C4200
#data 0x4208D31f
#data 0x323C0ED4
#data 0x430BD31e
#data 0xD11EE00c
#data 0x400060Dc
#data 0x001CD21d
#data 0x600C425a
#data 0x40009226
#data 0xE03C81Ef
#data 0xF30DF2E6
#data 0xFE27F230
#data 0x6302D018
#data 0x633285Ef
#data 0x303C4008
#data 0x022E931a
#data 0x0E269017
#data 0x0E367048
#data 0xD313E021
#data 0x430B05Ec
#data 0xE00064E3
#data 0x81EED311
#data 0x900A4F26
#data 0x04EE6DF6
#data 0x6EF6432b

#align4
loc_8C0F7AE4:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x0088012c
#data 0x00840274
#data 0x00000815

#align4
loc_8C0F7AF8:
#data bank04.loc_8c044F12
#data 0x8C28C468

#align4
loc_8C0F7B00:
#data loc_8c0f7C04

loc_8C0F7B04:
#data bank16.loc_8c161A7c

loc_8C0F7B08:
#data bank12.loc_8c1294C8

loc_8C0F7B0C:
;#data {bank13.loc_8c13b7D4 + 1}
#data bank13.loc_8c13b7D5
#data 0x3F000000
#data 0x8C26A910

#align4
loc_8C0F7B18:
#data loc_8c0f3D50

loc_8C0F7B1C:
#data bank10.loc_8c108210

loc_8C0F7B20:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x4F222F86
#data 0xD73F7FEc
#data 0xE0186BF3
#data 0x7B0C2F42
#data 0x66B3D43d
#data 0x65B3EA01
#data 0x7604E900
#data 0x25922692
#data 0x023C6372
#data 0x8D0922A8
#data 0x6152E802
#data 0x534FE040
#data 0x2512213b
#data 0x034E6262
#data 0x2622223b

#align4
loc_8C0F7B68:
#data 0xE0186372
#data 0x2288023c
#data 0x6C938D0a
#data 0x6152E044
#data 0xE048034e
#data 0x2512213b
#data 0x034E6262
#data 0x2622223b

#align4
loc_8C0F7B88:
#data 0x6DCE60F2
#data 0x4D08934f
#data 0x34BC64D3
#data 0x6242330c
#data 0x633233Dc
#data 0x6123223a
#data 0x8D212118
#data 0x63D32422
#data 0x1F3133Bc
#data 0x60C36E93
#data 0x40080009
#data 0x40004008
#data 0x80F8

loc_8C0F7BBA:
#data 0x52F1
#data 0x63EE64A3
#data 0x6322443c
#data 0x890A2348
#data 0x60F29331
#data 0x33DC330c
#data 0x224B6232
#data 0x232264E3
#data 0xBF3584F8
#data 0x340c

loc_8C0F7BDE:
#data 0x7E01
#data 0x62EEE320
#data 0x8BE83233

#align4
loc_8C0F7BE8:
#data 0x63CE7C01
#data 0x8BCB3383
#data 0x4F267F14
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

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
#data 0x00Cc
#data 0x8C26823c
#data 0x8C28C410

#align4
loc_8C0F7C38:
#data bank16.loc_8c161A7c


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

loc_8C0F7C96:
#data 0x85Ee
#data 0x70019362
#data 0x85EE81Ee
#data 0x8B023033
#data 0x000960B3
#data 0x81Ee

loc_8C0F7CAA:
#data 0x905a
#data 0x05EED330
#data 0x85EF9258
#data 0x302C6432
#data 0x6442D12e
#data 0x340C4008
#data 0x5441410b
#data 0xC72FDC2e
#data 0xD92BDA2c
#data 0xFF08A010

#align4
loc_8C0F7CD0:
#data 0x65F364F3
#data 0x74044C0b
#data 0x64F385Ee
#data 0x65F3F2F8
#data 0x435A6303
#data 0xF3F2F32d
#data 0xFF2AF231
#data 0x7404490b

#align4
loc_8C0F7CF0:
#data 0x00094A0b
#data 0x89EB2008
#data 0x64B3A06d

#align4
loc_8C0F7CFC:
#data 0x654FD622
#data 0x73306363
#data 0x6250353c
#data 0x89632228
#data 0x6350E021
#data 0x02EC9629
#data 0x636C363c
#data 0x3230622c
#data 0x656C8B5a
#data 0x624F6353
#data 0x22284500
#data 0x8D33353c
#data 0xC7174508
#data 0xF4086353
#data 0x33DCE050
#data 0xE054FE47
#data 0xE058FE47
#data 0xC713FE47
#data 0xE008F408
#data 0xE03CF336
#data 0xFE37F340
#data 0xF2E6E034
#data 0xF325F38d
#data 0xA0348932
#data 0x0009

loc_8C0F7D5E:
#data 0x012c
#data 0x008401F4
#data 0x00FF009d

#align4
loc_8C0F7D68:
#data 0x3F000000

#align4
loc_8C0F7D6C:
#data 0x8C26823c
#data 0x8C26A910

#align4
loc_8C0F7D74:
#data bank10.loc_8c108060

loc_8C0F7D78:
#data bank10.loc_8c1081E6

loc_8C0F7D7C:
#data bank10.loc_8c108086

loc_8C0F7D80:
#data bank10.loc_8c108192
#data 0x3B03126f
#data 0x8C28C410
#data 0x3F933333
#data 0x40D00000

#align4
loc_8C0F7D94:
#data 0x6353C719
#data 0xE050F408
#data 0xFE4733Dc
#data 0xFE47E054
#data 0xFE47E058
#data 0xF408C715
#data 0xF336E008
#data 0xF340E03c
#data 0xE034FE37
#data 0xF38DF2E6
#data 0x8B02F325

#align4
loc_8C0F7DC0:
#data 0xA002C710
#data 0xF408

loc_8C0F7DC6:
#data 0xF49d
#data 0xF440

loc_8C0F7DCA:
#data 0x35Dc
#data 0xE034F358
#data 0xFE37F340

loc_8C0F7DD4:
#data 0x7401

loc_8C0F7DD6:
#data 0x634f
#data 0x3353E502
#data 0xA0038B8e
#data 0x0009

loc_8C0F7DE2:
#data 0xD209
#data 0x64E3420b


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
;-------------------------------------------------------------------------------
#data 0x3F99999a
#data 0x41080000
#data 0xC0000000

#align4
loc_8C0F7E08:
#data bank04.loc_8c0450C0


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

#align4
loc_8C0F7F34:
#data loc_8c0f7FAa

loc_8C0F7F38:
#data bank16.loc_8c162AE4

loc_8C0F7F3C:
#data bank12.loc_8c1294C8

loc_8C0F7F40:
#data 0x00008000

#align4
loc_8C0F7F44:
#data 0x0000E001

#align4
loc_8C0F7F48:
#data 0x8C26823c

#align4
loc_8C0F7F4C:
#data 0x63529040
#data 0x023e

loc_8C0F7F52:
#data 0x903e
#data 0x0426D321
#data 0x1434E020
#data 0xE021024c
#data 0x622C014c
#data 0x42086323
#data 0x323C4200
#data 0x6313611c
#data 0x313C4100
#data 0x4208D31a
#data 0xD31A323c
#data 0x321C4108
#data 0x71346143
#data 0xE00C430b
#data 0xE03CD117
#data 0x6343F246
#data 0x7340415a
#data 0xF30DD215
#data 0xF427F230
#data 0x901A2322
#data 0x04369318


loc_8C0F7FA4:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

loc_8C0F7FC6:
mov.l @(loc_8C0F7FF4,pc),r3 ; r3 set to 0x8C0450C0
mov 0x00,r2 ; r2 set to 0x00
mov.w @(loc_8C0F7FD8,pc),r0 ; r0 set to 0x12c
jmp @r3
mov.b r2,@(r0,r4) 	
#data 0x008402D0
#data 0x00CC0803

loc_8C0F7FD8:
#data 0x012c
#data 0x0000

#align4
loc_8C0F7FDC:
#data loc_8c0f7FAa

loc_8C0F7FE0:
#data bank16.loc_8c162AE4

loc_8C0F7FE4:
#data bank12.loc_8c1294C8
#data 0x3DCCCCCd
#data 0x0000E001

#align4
loc_8C0F7FF0:
#data bank16.loc_8c162B68

loc_8C0F7FF4:
#data bank04.loc_8c0450C0

loc_8C0F7FF8:
#data 0x2FD62FE6
#data 0x4F222FC6
#data 0x6E437FEc
#data 0x65F385Ef
#data 0x630366F3
#data 0xC775435a
#data 0xF208D375
#data 0xF32D7504
#data 0xF43C7608
#data 0x430BF423
#data 0x85EE64F3
#data 0x6503DC71
#data 0x645375Ff
#data 0x44006353
#data 0x343C6203
#data 0x44086303
#data 0x6743D66d
#data 0x64036543
#data 0x343C4400
#data 0x72016103
#data 0x1F236323
#data 0x42004408
#data 0x323C6D43
#data 0x37CC4208
#data 0x3DCC1F24
#data 0x346C3C2c
#data 0xC764356c
#data 0xF608F348
#data 0xF508C763
#data 0xF408C763
#data 0xF0F6E004
#data 0xF2586323
#data 0xF302E008
#data 0x363CF0F8
#data 0x63E3D15f
#data 0xF32E7340
#data 0xF0F6F268
#data 0xF32EE004
#data 0xF363F352
#data 0xF33DF340
#data 0x2219025a
#data 0xF0F62322
#data 0xF346E004
#data 0xF256E004
#data 0xF302E008
#data 0xF32EF0F8
#data 0xE004F0F6
#data 0xE044F266
#data 0xF352F32e
#data 0xF340F363
#data 0x035AF33d
#data 0x0E362319
#data 0xF0F6E004
#data 0xF346E008
#data 0xF256E008
#data 0xF302E008
#data 0xF32EF0F8
#data 0xE008F0F6
#data 0xF32EF266
#data 0xF352E048
#data 0xF340F363
#data 0x035AF33d
#data 0x0E362319
#data 0xF348E004
#data 0xE008F0F6
#data 0xF302F258
#data 0xF32EF0F8
#data 0xF0F6F268
#data 0xF32EE068
#data 0xE004FE37
#data 0xE004F0F6
#data 0xE004F346
#data 0xE008F256
#data 0xF0F8F302
#data 0xF0F6F32e
#data 0xF266E004
#data 0xF32EE06c
#data 0xE004FE37
#data 0xE008F0F6
#data 0xE008F346
#data 0xE008F256
#data 0xF0F8F302
#data 0xF0F6F32e
#data 0xF266E008
#data 0xF32EE070
#data 0xE004FE37
#data 0xF0F6F3D8
#data 0xF278E008
#data 0xF0F8F302
#data 0xF2C8F32e
#data 0xF32EF0F6
#data 0xFE37E034
#data 0xF0F6E004
#data 0xF3D6E004
#data 0xF276E004
#data 0xF302E008
#data 0xF32EF0F8
#data 0xE004F0F6
#data 0xE038F2C6
#data 0xFE37F32e
#data 0xF0F6E004
#data 0xF3D6E008
#data 0xF276E008
#data 0xF302E008
#data 0xF32EF0F8
#data 0xE008F0F6
#data 0xF32EF2C6
#data 0xE11EE03c
#data 0x31ECD316
#data 0x85EFFE37
#data 0x81EF7001
#data 0x430BE005
#data 0x81EF6111
#data 0x200885Ef
#data 0x85EE8B0a
#data 0x7001E329
#data 0x600F81Ee
#data 0x8B033033
#data 0x81EEE001
#data 0x81EFE000

#align4
loc_8C0F81D8:
#data 0x4F267F14
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x40A00000

#align4
loc_8C0F81E8:
#data bank10.loc_8c109458

loc_8C0F81EC:
#data bank13.loc_8c13b854

loc_8C0F81F0:
#data bank13.loc_8c13ba4c
#data 0x43B40000
#data 0x47800000
#data 0x3F000000
#data 0x0000FFFf

#align4
loc_8C0F8204:
#data bank12.loc_8c1292D4

loc_8C0F8208:
#data 0x7FFC4F22
#data 0xE505D333
#data 0xE6012F42
#data 0xE400430b
#data 0x8D452008
#data 0x90596403
#data 0xD130E301
#data 0xE0200434
#data 0xD32D62F2
#data 0x70640424
#data 0x62121434
#data 0x71346143
#data 0xD22B6322
#data 0x04366332
#data 0x430BD32a
#data 0xD62EE00c
#data 0xF608C729
#data 0xF368C729
#data 0xF5086343
#data 0xF362C728
#data 0xE004F408
#data 0x7340D527
#data 0xF340F353
#data 0x025AF33d
#data 0x23222259
#data 0xE044F366
#data 0xF353F362
#data 0xF33DF340
#data 0x2359035a
#data 0xE0080436
#data 0xF362F366
#data 0xF340F353
#data 0x9224E048
#data 0x035AF33d
#data 0x04362359
#data 0xD31B9020
#data 0x60320426
#data 0xC91F8508
#data 0x814E7001
#data 0x814FE000

#align4
loc_8C0F82A8:
#data 0x4F267F04
#data 0x0009000b
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------
#data 0x080F012c
#data 0x000000Cc

#align4
loc_8C0F82DC:
#data bank04.loc_8c044F12

loc_8C0F82E0:
#data loc_8c0f82B0
#data 0x8C26A914

#align4
loc_8C0F82E8:
#data bank13.loc_8c13b854

loc_8C0F82EC:
#data bank12.loc_8c1294C8
#data 0x47800000
#data 0x43B40000
#data 0x3F000000
#data 0x0000FFFf

#align4
loc_8C0F8300:
#data bank13.loc_8c13ba4c

loc_8C0F8304:
#data 0x8C26823c

#align4
loc_8C0F8308:
#data bank04.loc_8c0450C0

loc_8C0F830C:
#data 0xD24DE020
#data 0xC74D014c
#data 0x611CF408
#data 0x4100854e
#data 0x41006313
#data 0x6303313c
#data 0x435A4108
#data 0x6513312c
#data 0xF518750c
#data 0xF358F02d
#data 0xF25CE034
#data 0xF343F351
#data 0xF427F23e
#data 0xF356E004
#data 0x854EF516
#data 0xF343F351
#data 0x435A6303
#data 0xE038F25c
#data 0xF23EF02d
#data 0xE008F427
#data 0xF516F356
#data 0xF351854e
#data 0x6303F25c
#data 0xE03C435a
#data 0xF02DF343
#data 0x000BF23e
#data 0xF427
;-------------------------------------------------------------------------------

loc_8C0F8376:
#data 0x2FE6
#data 0x2FD66E43
#data 0x4F2261E3
#data 0x6043E403
#data 0xD3310009
#data 0x0009430b
#data 0x8D138801
#data 0x63D36D03
#data 0x430061E3
#data 0x00096043
#data 0x420BD22c
#data 0x64330009
#data 0x340C934a
#data 0x0437D02a
#data 0x711861D3
#data 0x024C041a
#data 0x89293210

#align4
loc_8C0F83B8:
#data 0xE505D327
#data 0x430BE601
#data 0x2008E400
#data 0x64038D22
#data 0xE3019039
#data 0x0434D124
#data 0xD322E020
#data 0x706404E4
#data 0x63E31434
#data 0x43086212
#data 0x71346143
#data 0x332C6222
#data 0x533162E3
#data 0x04364200
#data 0x42006323
#data 0xD313323c
#data 0x323C4208
#data 0x430BD319
#data 0x901EE00c
#data 0x0416911c
#data 0x814EE000

#align4
loc_8C0F840C:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0F8414:
#data 0x6532D314
#data 0x88028453
#data 0x85578B02
#data 0x8B028803

#align4
loc_8C0F8424:
#data 0x432BD311
#data 0x0009

loc_8C0F842A:
#data 0x854e
#data 0x8903881e
#data 0x7001854e
#data 0x814EAF6a

#align4
loc_8C0F8438:
#data 0x0009000b
;-------------------------------------------------------------------------------
#data 0x012C05A4
#data 0x00CC0801

#align4
loc_8C0F8444:
#data bank13.loc_8c13bc44
#data 0x41F00000

#align4
loc_8C0F844C:
#data bank12.loc_8c1292D4

loc_8C0F8450:
#data bank12.loc_8c129128
#data 0x8C26886c

#align4
loc_8C0F8458:
#data bank04.loc_8c044F12

loc_8C0F845C:
#data loc_8c0f8414
#data 0x8C26A914

#align4
loc_8C0F8464:
#data bank12.loc_8c1294C8
#data 0x8C26823c

#align4
loc_8C0F846C:
#data bank04.loc_8c0450C0


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
;-------------------------------------------------------------------------------

loc_8C0F84F2:
#data 0x2FE6
#data 0x2FD66E43
#data 0x4F226D53
#data 0xE505D337
#data 0x430BE601
#data 0x2008E400
#data 0x64038D39
#data 0xE3009061
#data 0xD13465D3
#data 0x45000434
#data 0xE020D331
#data 0xE02304E4
#data 0x706104D4
#data 0x63D31434
#data 0x62124308
#data 0x35EC353c
#data 0x63536222
#data 0x332C4308
#data 0x53376253
#data 0x04364200
#data 0x323C6353
#data 0x42006323
#data 0x4208323c
#data 0x6143D322
#data 0x323C7134
#data 0x430BD324
#data 0xD224E00c
#data 0xD3226143
#data 0x430B7150
#data 0x9036E00c
#data 0x04169134
#data 0x000960D3
#data 0x2E3FE30d
#data 0x0E1A4000
#data 0x703C30Ec
#data 0x814e

loc_8C0F857E:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0F8586:
#data 0xD31a
#data 0x6E432FE6
#data 0x84436432
#data 0x8B028802
#data 0x88038547
#data 0x8B03

loc_8C0F859A:
#data 0xD316
#data 0x432B64E3
#data 0x6EF6

loc_8C0F85A2:
#data 0x84E5
#data 0xD11464E3
#data 0x4008600c
#data 0x432B031e
#data 0x6EF6

loc_8C0F85B2:
#data 0x854e
#data 0x814E70Ff
#data 0x2008600f
#data 0x84458B07
#data 0x7001E301
#data 0x90048045
#data 0xE0000434
#data 0x814e

loc_8C0F85CE:
#data 0x000b
#data 0x012C0009
#data 0x00CC0811

#align4
loc_8C0F85D8:
#data bank13.loc_8c13bcD4

loc_8C0F85DC:
#data bank04.loc_8c044F12

loc_8C0F85E0:
#data loc_8c0f8586
#data 0x8C26A914

#align4
loc_8C0F85E8:
#data bank12.loc_8c1294C8

loc_8C0F85EC:
#data bank13.loc_8c13be84
#data 0x8C26823c

#align4
loc_8C0F85F4:
#data bank04.loc_8c0450C0

loc_8C0F85F8:
#data bank16.loc_8c162B80


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

#align4
loc_8C0F86A0:
#data 0x6322D222
#data 0x20088537
#data 0x84458904
#data 0x80457001
#data 0x814EE000

#align4
loc_8C0F86B4:
#data 0x0009000b
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

loc_8C0F870E:
rts 	
nop 	
;-------------------------------------------------------------------------------
#data 0x0000

#align4
loc_8C0F8714:
#data 0x3EC00000

#align4
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
#data 0x8C26823c

#align4
loc_8C0F8730:
#data bank13.loc_8c13bcEc

loc_8C0F8734:
#data 0x7FFC4F22
#data 0xE505D329
#data 0xE6012F42
#data 0xE400430b
#data 0x8D252008
#data 0x90456403
#data 0xD126E301
#data 0xE0200434
#data 0xD32362F2
#data 0x14340424
#data 0x61436212
#data 0x715063F2
#data 0x43086222
#data 0x9236332c
#data 0x6032734c
#data 0xD31F324c
#data 0xD21D2202
#data 0xE00C430b
#data 0xD31C62F3
#data 0x72086143
#data 0x430B7134
#data 0x9028E00c
#data 0x04269226
#data 0x814EE000

#align4
loc_8C0F8794:
#data 0x4F267F04
#data 0x0009000b
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------
#data 0x0084012c
#data 0x00CC0811

#align4
loc_8C0F87E0:
#data bank04.loc_8c044F12

loc_8C0F87E4:
#data loc_8c0f879c
#data 0x8C26A914

#align4
loc_8C0F87EC:
#data bank13.loc_8c13be90

loc_8C0F87F0:
#data bank12.loc_8c1294C8

loc_8C0F87F4:
#data 0x8C26823c

#align4
loc_8C0F87F8:
#data 0x3EC00000

#align4
loc_8C0F87FC:
#data bank04.loc_8c0450C0

loc_8C0F8800:
#data 0xC760D55e
#data 0x6153F408
#data 0x6753710c
#data 0xF578F318
#data 0xF351854e
#data 0x6303F25c
#data 0xE034435a
#data 0xF343D658
#data 0xF02D6563
#data 0xF23E760c
#data 0xE004F427
#data 0xF576F316
#data 0xF351854e
#data 0x6303F25c
#data 0xF343435a
#data 0xF23EF02d
#data 0xF427E038
#data 0xF316E008
#data 0x854EF576
#data 0xF25CF351
#data 0x435A6303
#data 0x6343E03c
#data 0x7340D74d
#data 0xF02DF343
#data 0xF427F23e
#data 0xF368C748
#data 0xF708F858
#data 0xF381C747
#data 0xC748F608
#data 0x854EF508
#data 0x6203F343
#data 0xF02D425a
#data 0xF23EF28c
#data 0xF252E004
#data 0xF260F273
#data 0x025AF23d
#data 0x23222279
#data 0xF366F856
#data 0xF381854e
#data 0x6303F28c
#data 0xE044435a
#data 0xF02DF343
#data 0xF252F23e
#data 0xF260F273
#data 0x035AF23d
#data 0x04362379
#data 0xF366E008
#data 0xF381F856
#data 0x854EF343
#data 0x6303F28c
#data 0xE048435a
#data 0xF23EF02d
#data 0xF273F252
#data 0xF23DF260
#data 0x2379035a
#data 0x0436000b
;-------------------------------------------------------------------------------

#align4
loc_8C0F88E0:
#data 0xD32D4F22
#data 0xE601E50b
#data 0xE400430b
#data 0x8D3E2008
#data 0xD12B6403
#data 0xD329E701
#data 0x0474903c
#data 0x62121434
#data 0x90386143
#data 0x63227134
#data 0x6332D21c
#data 0xD3250436
#data 0xE00C430b
#data 0xC71FD51a
#data 0xC71BF608
#data 0x6343F358
#data 0xC71AF508
#data 0xF408F362
#data 0xD619E004
#data 0xF3537340
#data 0xF33DF340
#data 0x2269025a
#data 0xF3562322
#data 0xF362E044
#data 0xF340F353
#data 0x035AF33d
#data 0x04362369
#data 0xF356E008
#data 0xF353F362
#data 0xE048F340
#data 0xF33DE205
#data 0x2369035a
#data 0x90090436
#data 0xE0000426
#data 0x00096073
#data 0x814e

loc_8C0F896E:
#data 0x4F26
#data 0x0009000b
;-------------------------------------------------------------------------------
#data 0x0084012c
#data 0x000000Cc

#align4
loc_8C0F897C:
#data bank13.loc_8c13be9c

loc_8C0F8980:
#data bank13.loc_8c13beB4
#data 0x42700000
#data 0x43B40000
#data 0x3F000000
#data 0x0000FFFf
#data 0x47800000

#align4
loc_8C0F8998:
#data bank04.loc_8c044F12

loc_8C0F899C:
#data loc_8c0f89A8
#data 0x8C26A91c

#align4
loc_8C0F89A4:
#data bank12.loc_8c1294C8

loc_8C0F89A8:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0xFFFB2F86
#data 0xFFDBFFEb
#data 0x4F22FFCb
#data 0x6E437FF4
#data 0x883C85Ee
#data 0x85EE8904
#data 0x81EE7001
#data 0x64E3BF16

#align4
loc_8C0F89D4:
#data 0x934E85Ef
#data 0x81EF7014
#data 0x303385Ef
#data 0xE0008B01
#data 0x81Ef

loc_8C0F89E6:
#data 0xD325
#data 0x64329046
#data 0x6242D124
#data 0x410B05Ee
#data 0xC7275421
#data 0xFC08DC29
#data 0xFD08C726
#data 0xD921C726
#data 0xD81FED00
#data 0xDA20DB21
#data 0xFE08A021

#align4
loc_8C0F8A10:
#data 0x64F34B0b
#data 0xFFF6E004
#data 0xF3F2F3Fc
#data 0x85EFFF3b
#data 0x34DC6403
#data 0xF22D445a
#data 0xF1C2F12c
#data 0xF21CF1D3
#data 0xF23DF2E0
#data 0x480B045a
#data 0xF3F924C9
#data 0x7D14C719
#data 0xF008F302
#data 0xF2F6E008
#data 0xF23EE008
#data 0x4A0BFF27
#data 0x64F3

loc_8C0F8A52:
#data 0x490b
#data 0x20080009
#data 0x7F0C89Da
#data 0xFCF94F26
#data 0xFEF9FDF9
#data 0x68F6FFF9
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x01686EF6
#data 0x00000084
#data 0x8C26A91c

#align4
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
#data 0x47800000
#data 0x43B40000
#data 0x3F000000
#data 0x0000FFFf
#data 0x3CA3D70a

#align4
loc_8C0F8AA8:
#data 0xD251E020
#data 0xC751014c
#data 0x611CF408
#data 0x4100854e
#data 0x41006313
#data 0x6303313c
#data 0x435A4108
#data 0x6513312c
#data 0xF518750c
#data 0xF358F02d
#data 0xF25CE034
#data 0xF343F351
#data 0xF427F23e
#data 0xF356E004
#data 0x854EF516
#data 0xF343F351
#data 0x435A6303
#data 0xE038F25c
#data 0xF23EF02d
#data 0xE008F427
#data 0xF516F356
#data 0xF351854e
#data 0x6303F25c
#data 0xE03C435a
#data 0xF02DF343
#data 0x000BF23e
#data 0xF427
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

loc_8C0F8BEA:
#data 0x012c

loc_8C0F8BEC:
#data 0x0084

loc_8C0F8BEE:
#data 0x00Cc

#align4
loc_8C0F8BF0:
#data bank13.loc_8c13beCc
#data 0x41F00000

#align4
loc_8C0F8BF8:
#data bank04.loc_8c044F12

loc_8C0F8BFC:
#data loc_8c0f8C24

loc_8C0F8C00:
#data bank13.loc_8c13bf98

loc_8C0F8C04:
#data 0x8C26A91c

#align4
loc_8C0F8C08:
#data bank12.loc_8c1294C8

loc_8C0F8C0C:
#data bank13.loc_8c13bf8c

loc_8C0F8C10:
#data 0x47800000

#align4
loc_8C0F8C14:
#data 0x43B40000

#align4
loc_8C0F8C18:
#data 0x3F000000

#align4
loc_8C0F8C1C:
#data 0x0000FFFf

#align4
loc_8C0F8C20:
#data bank10.loc_8c108210

loc_8C0F8C24:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0xFFFB2FA6
#data 0x4F22FFEb
#data 0x6E437FF8
#data 0x881E85Ee
#data 0x85EE8904
#data 0x81EE7001
#data 0x64E3BF30

#align4
loc_8C0F8C48:
#data 0x02ECE020
#data 0x622CE302
#data 0x89403233
#data 0x934885Ef
#data 0x81EF7001
#data 0x303385Ef
#data 0xE0008B01
#data 0x81Ef

loc_8C0F8C66:
#data 0x9041
#data 0x05EED321
#data 0x02ECE022
#data 0x622C6432
#data 0x42086442
#data 0xD21E342c
#data 0x5441420b
#data 0xC720DC1f
#data 0xED01DB1d
#data 0xFE9DDA1b
#data 0xFF08A01f

#align4
loc_8C0F8C90:
#data 0x750465F3
#data 0x64F34C0b
#data 0x02ECE020
#data 0x22D8622c
#data 0x85EF8907
#data 0x6303F2F8
#data 0xF0FC435a
#data 0xA009F32d
#data 0xF23e

loc_8C0F8CB2:
#data 0x85Ef
#data 0x6303F2F8
#data 0xF32D435a
#data 0xF34DF3F2
#data 0xF230F3E0

#align4
loc_8C0F8CC4:
#data 0x750465F3
#data 0x4A0BFF2a
#data 0x64F3

loc_8C0F8CCE:
#data 0x4B0b
#data 0x20080009
#data 0x89Dc

loc_8C0F8CD6:
#data 0x7F08
#data 0xFEF94F26
#data 0x6AF6FFF9
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00C86EF6
#data 0x00000084
#data 0x8C26A91c

#align4
loc_8C0F8CF4:
#data bank10.loc_8c108060

loc_8C0F8CF8:
#data bank10.loc_8c1081E6

loc_8C0F8CFC:
#data bank10.loc_8c108086

loc_8C0F8D00:
#data bank10.loc_8c108192
#data 0x3BA3D70a


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

#align4
loc_8C0F8DDC:
#data 0x921C901c
#data 0xE0400E26
#data 0xE00381Ee
#data 0xC71981Ef
#data 0xE05CF308
#data 0xFE37

loc_8C0F8DF2:
#data 0x9011
#data 0x02EE9312
#data 0x223BF49d
#data 0xE0780E26
#data 0xE07CFE47
#data 0x7004FE47
#data 0xFE47


loc_8C0F8E0A:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0F8E12:
#data 0x012c

loc_8C0F8E14:
#data 0x0084

loc_8C0F8E16:
#data 0x080f

loc_8C0F8E18:
#data 0x00Cc
#data 0x4800
#data 0x00000400

#align4
loc_8C0F8E20:
#data bank04.loc_8c044F12

loc_8C0F8E24:
#data loc_8c0f8E54

loc_8C0F8E28:
#data bank16.loc_8c162B94

loc_8C0F8E2C:
#data 0x8C26A924

#align4
loc_8C0F8E30:
#data bank16.loc_8c162B98

loc_8C0F8E34:
#data bank12.loc_8c1294C8

loc_8C0F8E38:
#data 0x47800000

#align4
loc_8C0F8E3C:
#data 0x43B40000

#align4
loc_8C0F8E40:
#data 0x3F000000

#align4
loc_8C0F8E44:
#data 0x0000FFFf

#align4
loc_8C0F8E48:
#data bank16.loc_8c162BBc

loc_8C0F8E4C:
#data bank10.loc_8c108210
#data 0x42400000

#align4
loc_8C0F8E54:
#data 0x2FE6D24e
#data 0x84326322
#data 0x3033E303
#data 0x6E438F12
#data 0xF308C74b
#data 0xF2E6E078
#data 0x890BF325
#data 0xF1E6D149
#data 0xF20D415a
#data 0xFE17F121
#data 0xFE17E07c
#data 0xF1E6E078
#data 0xFE177008

#align4
loc_8C0F8E88:
#data 0x64E3E020
#data 0xD04303Ec
#data 0x4308633c
#data 0x422B023e
#data 0x6EF6

loc_8C0F8E9A:
#data 0x2FE6
#data 0x2FC62FD6
#data 0xFFFB2FB6
#data 0x4F22FFEb
#data 0x63437FF8
#data 0x6E437340
#data 0x92696132
#data 0x2312312c
#data 0x936685Ef
#data 0x81EF7001
#data 0x303385Ef
#data 0xE0008B01
#data 0x81Ef

loc_8C0F8ECA:
#data 0x905f
#data 0x05EED334
#data 0x02ECE022
#data 0x622C6432
#data 0x42086442
#data 0xD231342c
#data 0x5441420b
#data 0xDD32C733
#data 0xDB2FFE08
#data 0xA012DC2f
#data 0xFF9d

loc_8C0F8EF2:
#data 0x64F3
#data 0x4D0B65F3
#data 0x85EF7404
#data 0xF2F864F3
#data 0x630365F3
#data 0xF32D435a
#data 0xF34DF3E2
#data 0xF230F3F0
#data 0x4B0BFF2a
#data 0x7404

loc_8C0F8F16:
#data 0x4C0b
#data 0x20080009
#data 0x7F0889E9
#data 0xFEF94F26
#data 0x6BF6FFF9
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0F8F30:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0xFFEBFFFb
#data 0x7FF84F22
#data 0x73406343
#data 0x61326E43
#data 0x3128921e
#data 0x85EF2312
#data 0x7001931b
#data 0x85EF81Ef
#data 0x8B013033
#data 0x81EFE000

#align4
loc_8C0F8F60:
#data 0xD30F9014
#data 0xE02205Ee
#data 0x643202Ec
#data 0x6442622c
#data 0x342C4208
#data 0x420BD20b
#data 0xC70E5441
#data 0xFE08DD0c
#data 0xDC0ADB09
#data 0xFF9DA02a
#data 0x00C80100
#data 0x00000084
#data 0x8C26823c
#data 0x3F000000
#data 0x3C23D70a

#align4
loc_8C0F8F9C:
#data bank16.loc_8c162BE0
#data 0x8C26A924

#align4
loc_8C0F8FA4:
#data bank10.loc_8c108060

loc_8C0F8FA8:
#data bank10.loc_8c1081E6

loc_8C0F8FAC:
#data bank10.loc_8c108086

loc_8C0F8FB0:
#data bank10.loc_8c108192
#data 0x3BA3D70a

#align4
loc_8C0F8FB8:
#data 0x65F364F3
#data 0x74044D0b
#data 0x64F385Ef
#data 0x65F3F2F8
#data 0x435A6303
#data 0xF3E2F32d
#data 0xF3F0F34d
#data 0xFF2AF230
#data 0x74044B0b

#align4
loc_8C0F8FDC:
#data 0x00094C0b
#data 0x89E92008
#data 0x4F267F08
#data 0xFFF9FEF9
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

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

loc_8C0F90B2:
#data 0x0088

loc_8C0F90B4:
#data 0x00B8

loc_8C0F90B6:
#data 0x00Bc

loc_8C0F90B8:
#data 0x00C0
#data 0x0000

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

loc_8C0F90F0:
#data 0xE5052FE6
#data 0xD34E4F22
#data 0xE6016E43
#data 0xE400430b
#data 0x8D742008
#data 0x908E6403
#data 0xD24BE301
#data 0xE0200434
#data 0x04E4D348
#data 0x1434D049
#data 0x632201Ec
#data 0x611C62E3
#data 0x41086032
#data 0x031E4200
#data 0xD045917e
#data 0x2132314c
#data 0x323C63E3
#data 0x4208D343
#data 0x71346143
#data 0x430B320c
#data 0xD545E00c
#data 0xF608C741
#data 0xF358C741
#data 0xF5086343
#data 0xF362C740
#data 0xE004F408
#data 0x7340D63b
#data 0xF340F353
#data 0x025AF33d
#data 0x23222269
#data 0xE044F356
#data 0xF353F362
#data 0xF33DF340
#data 0x2369035a
#data 0xE0080436
#data 0xF362F356
#data 0xF340F353
#data 0xD235E048
#data 0x71506143
#data 0x035AF33d
#data 0x04362369
#data 0x430BD32b
#data 0x9047E00c
#data 0xF49D9145
#data 0xE0780416
#data 0xE07CF447
#data 0x7004F447
#data 0x60E3F447
#data 0x88020009
#data 0xD52A8B1b
#data 0x90386143
#data 0x62527134
#data 0x6323022c
#data 0x323C4200
#data 0x4208D326
#data 0xD31D323c
#data 0xE00C430b
#data 0x6052912b
#data 0x883A001c
#data 0xC7228B07
#data 0xE050F408
#data 0xE054F447
#data 0xE058F447
#data 0xF447

loc_8C0F91EE:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

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
#data 0x012c
#data 0x0C1F0084
#data 0x008F00Cc

#align4
loc_8C0F9230:
#data bank04.loc_8c044F12

loc_8C0F9234:
#data loc_8c0f91F4
#data 0x8C26A924

#align4
loc_8C0F923C:
#data bank16.loc_8c162BEc

loc_8C0F9240:
#data bank16.loc_8c162BF0

loc_8C0F9244:
#data bank12.loc_8c1294C8
#data 0x0000FFFf
#data 0x47800000
#data 0x43B40000

#align4
loc_8C0F9254:
#data 0x3F000000

#align4
loc_8C0F9258:
#data bank16.loc_8c162C14

loc_8C0F925C:
#data bank13.loc_8c13bfA0

loc_8C0F9260:
#data 0x8C26823c

#align4
loc_8C0F9264:
#data bank13.loc_8c13bfAc
#data 0x3F400000

#align4
loc_8C0F926C:
#data 0x3C23D70a


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
;-------------------------------------------------------------------------------

loc_8C0F9282:
#data 0x008d

#align4
loc_8C0F9284:
#data bank04.loc_8c0450C0


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
;-------------------------------------------------------------------------------

loc_8C0F9366:
#data 0xE020
#data 0x054CD61f
#data 0xD226C727
#data 0xF408655c
#data 0x45006353
#data 0x854E353c
#data 0x365C4508
#data 0x352C6303
#data 0xF358F568
#data 0x435AE034
#data 0xF25CF351
#data 0xF343F02d
#data 0xF427F23e
#data 0xF356E004
#data 0x854EF566
#data 0x6303F351
#data 0x435AF343
#data 0xF25CE038
#data 0xF23EF02d
#data 0xE008F427
#data 0xF566F356
#data 0xF351854e
#data 0x6303F25c
#data 0xE03C435a
#data 0xF02DF343
#data 0x000BF23e
#data 0xF427
;-------------------------------------------------------------------------------

loc_8C0F93CE:
#data 0x012c

loc_8C0F93D0:
#data 0x0084

loc_8C0F93D2:
#data 0x080f

loc_8C0F93D4:
#data 0x00Cc
#data 0x0000

#align4
loc_8C0F93D8:
#data bank04.loc_8c044F12

loc_8C0F93DC:
#data loc_8c0f9410

loc_8C0F93E0:
#data bank16.loc_8c162C20

loc_8C0F93E4:
#data 0x8C26A924

#align4
loc_8C0F93E8:
#data bank16.loc_8c162C30

loc_8C0F93EC:
#data bank12.loc_8c1294C8

loc_8C0F93F0:
#data 0x43B40000

#align4
loc_8C0F93F4:
#data 0x3F000000

#align4
loc_8C0F93F8:
#data 0x47800000

#align4
loc_8C0F93FC:
#data 0x0000FFFf

#align4
loc_8C0F9400:
#data bank16.loc_8c162C90

loc_8C0F9404:
#data bank10.loc_8c108210

loc_8C0F9408:
#data bank16.loc_8c162CF0
#data 0x41F00000

#align4
loc_8C0F9410:
#data 0x2FE6D348
#data 0x4F226E43
#data 0x84436432
#data 0x8B038804
#data 0x014C9084
#data 0x89042118

#align4
loc_8C0F9428:
#data 0xD3434F26
#data 0x432B64E3
#data 0x6EF6

loc_8C0F9432:
#data 0x84E4
#data 0x8B232008
#data 0x20088547
#data 0x9076892a
#data 0x0E34E301
#data 0x85EEE31e
#data 0x8B133033
#data 0xD33B84E4
#data 0x80E47001
#data 0x02ECE020
#data 0x6123622c
#data 0x321C4200
#data 0x420861E3
#data 0xD336323c
#data 0x430B7134
#data 0x4F26E00c
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0F9474:
#data 0x64E37001
#data 0x4F2681Ee
#data 0x6EF6AF73

#align4
loc_8C0F9480:
#data 0x64E3E020
#data 0xD02F03Ec
#data 0x4F26633c
#data 0x023E4308
#data 0x6EF6422b

#align4
loc_8C0F9494:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0F949A:
#data 0x2FE6
#data 0x2FC62FD6
#data 0xFFFB2FB6
#data 0x7FF84F22
#data 0x85EF6E43
#data 0x70019340
#data 0x85EF81Ef
#data 0x8B013033
#data 0x81EFE000

#align4
loc_8C0F94BC:
#data 0xD3229039
#data 0xE02205Ee
#data 0x643202Ec
#data 0x6442622c
#data 0x342C4208
#data 0x420BD21e
#data 0xDD205441
#data 0xDC1EC720
#data 0xA019DB1c
#data 0xFF08

loc_8C0F94E2:
#data 0x65F3
#data 0x4D0B7504
#data 0x85EF64F3
#data 0xF2F865F3
#data 0x63037504
#data 0xF0FC435a
#data 0xF23EF32d
#data 0x85EFFF2a
#data 0x435A6303
#data 0xF2F6E004
#data 0xF32DE004
#data 0xFF27F23e
#data 0x64F34B0b

#align4
loc_8C0F9514:
#data 0x00094C0b
#data 0x89E22008
#data 0x4F267F08
#data 0x6BF6FFF9
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x012C008d
#data 0x008400C8
#data 0x8C26823c

#align4
loc_8C0F9538:
#data bank04.loc_8c0450C0

loc_8C0F953C:
#data bank16.loc_8c162CF0

loc_8C0F9540:
#data bank12.loc_8c1294C8

loc_8C0F9544:
#data bank16.loc_8c162D50
#data 0x8C26A924

#align4
loc_8C0F954C:
#data bank10.loc_8c108060

loc_8C0F9550:
#data bank10.loc_8c1081E6

loc_8C0F9554:
#data bank10.loc_8c108086

loc_8C0F9558:
#data bank10.loc_8c108192
#data 0x3BA3D70a


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
;-------------------------------------------------------------------------------

loc_8C0F95E8:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0F95EC:
#data 0x0084
#data 0x0000

#align4
loc_8C0F95F0:
#data 0x8C26A924

#align4
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

#align4
loc_8C0F9608:
#data 0x8C26823c


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

loc_8C0F9698:
#data 0xD72a


loc_8C0F969A:
mov r2,r5
add r2,r7
bra loc_8C0F96A6
add r6,r5

loc_8C0F96A2:
#data 0xD52a
#data 0xD728

loc_8C0F96A6:
#data 0xD32a
#data 0x62736143
#data 0x430B7134
#data 0xC728E00c
#data 0xF608F358
#data 0xF508C727
#data 0xF362C727
#data 0xE004F408
#data 0x6343D626
#data 0xF3537340
#data 0xF33DF340
#data 0x2269025a
#data 0xF3562322
#data 0xF362E044
#data 0xF340F353
#data 0x035AF33d
#data 0x04362369
#data 0xF356E008
#data 0xF353F362
#data 0xF33DF340
#data 0x035AE048
#data 0x04362369


loc_8C0F96FC:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0F9704:
#data 0x2FE6D317
#data 0x64326E43
#data 0x88048443
#data 0x90098B03
#data 0x2118014c
#data 0x8928

loc_8C0F971A:
#data 0xD313
#data 0x432B64E3
#data 0x6EF6

loc_8C0F9722:
#data 0x012c

loc_8C0F9724:
#data 0x0084

loc_8C0F9726:
#data 0x081f
#data 0x0000008d

#align4
loc_8C0F972C:
#data bank04.loc_8c044F12

loc_8C0F9730:
#data loc_8c0f9704

loc_8C0F9734:
#data 0x8C26A924

#align4
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
#data 0x47800000
#data 0x43B40000
#data 0x3F000000
#data 0x0000FFFf
#data 0x8C26823c

#align4
loc_8C0F9768:
#data bank04.loc_8c0450C0

loc_8C0F976C:
#data 0x88038547
#data 0xE0208B08
#data 0x02EC64E3
#data 0x622CD03b
#data 0x032E4208
#data 0x6EF6432b

#align4
loc_8C0F9784:
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0F9788:
#data 0xE301906d
#data 0x854F0434
#data 0x89342008
#data 0xD235854f
#data 0xD63570Ff
#data 0xE022814f
#data 0xC734054c
#data 0x655CF368
#data 0x6353F408
#data 0x353C4500
#data 0x4508854f
#data 0x6303352c
#data 0xE034F558
#data 0xF351435a
#data 0xF02DF25c
#data 0xF23EF343
#data 0xE004F427
#data 0xF556F366
#data 0xF343F351
#data 0xF25C854f
#data 0x435A6303
#data 0xF02DE038
#data 0xF427F23e
#data 0xF366E008
#data 0x854FF556
#data 0xF25CF351
#data 0x435A6303
#data 0xF343E03c
#data 0xF23EF02d
#data 0xF427

loc_8C0F97FE:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0F9802:
mov.w @(0x1E,r4),r0 	
tst r0,r0
bt loc_8C0F9810
mov.w @(0x1E,r4),r0 	
add 0xFF,r0
rts 	
mov.w r0,@(0x1E,r4) 	
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

loc_8C0F9846:
#data 0x854e
#data 0x814E7001
#data 0x600F70Ff
#data 0x8B06881e
#data 0x814EE000
#data 0x9004E301
#data 0x223A024c
#data 0x0424

loc_8C0F9862:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0F9866:
#data 0x012c

#align4
loc_8C0F9868:
#data bank16.loc_8c162E40

loc_8C0F986C:
#data bank16.loc_8c162D74
#data 0x8C26A524

#align4
loc_8C0F9874:
#data 0x41F00000

#align4
loc_8C0F9878:
#data 0x43003333

#align4
loc_8C0F987C:
#data 0x42FE6666

#align4
loc_8C0F9880:
#data 0x7FFC4F22
#data 0xE50BD322
#data 0xE6012F42
#data 0xE400430b
#data 0x8D1B2008
#data 0xD21F6403
#data 0x9034E301
#data 0x0434F38d
#data 0x62F21424
#data 0xD31DD01c
#data 0x022E4208
#data 0x42086032
#data 0x321C6102
#data 0x60229128
#data 0x2102314c
#data 0x62F2E020
#data 0x04249123
#data 0x04169022
#data 0xF437E074

#align4
loc_8C0F98CC:
#data 0x4F267F04
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0F98D4:
mov.b @(0x04,r4),r0 	
extu.b r0,r0
cmp/eq 0x00,r0 	
bt loc_8C0F98E4
cmp/eq 0x01,r0 	
bt loc_8C0F9902
bra loc_8C0F9902
nop 	

#align4
loc_8C0F98E4:
#data 0xE074D10e
#data 0x415AF246
#data 0xF30DF49d
#data 0xF425F230
#data 0xF4278D05
#data 0x70018444
#data 0xE0748044
#data 0xF447


loc_8C0F9902:
rts 	
nop 	
;-------------------------------------------------------------------------------
#data 0x012c
#data 0x08200084
#data 0x000000Cc

#align4
loc_8C0F9910:
#data bank04.loc_8c044F12

loc_8C0F9914:
#data loc_8c0f98D4

loc_8C0F9918:
#data bank13.loc_8c13c270
#data 0x8C26A928
#data 0x3E4CCCCd


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
;-------------------------------------------------------------------------------

#align4
loc_8C0F9964:
#data 0x6E432FE6
#data 0x4F229368
#data 0x700185Ee
#data 0x600F81Ee
#data 0x8F033033
#data 0x6043E400
#data 0x81EE0009

#align4
loc_8C0F9980:
#data 0x935C85Ef
#data 0x81EF7001
#data 0x3033600f
#data 0x60438B02
#data 0x81EF0009

#align4
loc_8C0F9994:
#data 0x430BD32e
#data 0x20080009
#data 0xE0788B0d
#data 0xF4E6F39d
#data 0x8B08F345
#data 0xF208C72a
#data 0xF420E078
#data 0xE07CFE47
#data 0x7004FE47
#data 0xFE47

loc_8C0F99BA:
#data 0x4F26
#data 0x6EF664E3
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x4F22FFFb
#data 0xD31E7FEc
#data 0x90316E43
#data 0xD1206432
#data 0x05EE6242
#data 0x5426410b
#data 0xC721DD20
#data 0xDB1DDC1e
#data 0xFF08A019

#align4
loc_8C0F99EC:
#data 0x750465F3
#data 0x64F34B0b
#data 0x65F385Ef
#data 0x7504F2F8
#data 0x435A6303
#data 0xF32DF0Fc
#data 0xFF2AF23e
#data 0x630385Ef
#data 0xE004435a
#data 0xE004F2F6
#data 0xF23EF32d
#data 0x4D0BFF27
#data 0x64F3

loc_8C0F9A1E:
#data 0x4C0b
#data 0x20080009
#data 0x7F1489E2
#data 0xFFF94F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0F9A36:
#data 0x012c

loc_8C0F9A38:
#data 0x0084

loc_8C0F9A3A:
#data 0x0800
#data 0x00C80168

#align4
loc_8C0F9A40:
#data bank04.loc_8c044F12

loc_8C0F9A44:
#data loc_8c0f9964

loc_8C0F9A48:
#data 0x8C26A928

#align4
loc_8C0F9A4C:
#data bank10.loc_8c108210

loc_8C0F9A50:
#data bank03.loc_8c03594a
#data 0x3B4CCCCd

#align4
loc_8C0F9A58:
#data bank10.loc_8c108060

loc_8C0F9A5C:
#data bank10.loc_8c108192

loc_8C0F9A60:
#data bank10.loc_8c108086

loc_8C0F9A64:
#data bank10.loc_8c1081E6
#data 0x3BA3D70a

#align4
loc_8C0F9A6C:
#data 0xE50B2FE6
#data 0xD3294F22
#data 0xE6016E43
#data 0xE400430b
#data 0x8D312008
#data 0x90456403
#data 0xD126E301
#data 0xD22465E3
#data 0x04344500
#data 0x62E31424
#data 0x42086312
#data 0x6143903b
#data 0x71346332
#data 0x532B323c
#data 0x04369236
#data 0x353C63E3
#data 0x70486353
#data 0x04264500
#data 0x353CD21b
#data 0xE020D31b
#data 0x04E44508
#data 0x430B325c
#data 0xD219E00c
#data 0xD3176143
#data 0x325C7150
#data 0xE00C430b
#data 0xF408C716
#data 0xF447E078
#data 0xF447E07c
#data 0xF4477004

#align4
loc_8C0F9AE4:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

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
#data 0x0084012c
#data 0x00000C11

#align4
loc_8C0F9B18:
#data bank04.loc_8c044F12

loc_8C0F9B1C:
#data loc_8c0f9AEa
#data 0x8C26A928

#align4
loc_8C0F9B24:
#data bank16.loc_8c162E80

loc_8C0F9B28:
#data bank12.loc_8c1294C8

loc_8C0F9B2C:
#data bank16.loc_8c163030
#data 0x3F4CCCCd

#align4
loc_8C0F9B34:
#data 0x8C26823c


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
;-------------------------------------------------------------------------------

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

#align4
loc_8C0F9CC0:
#data bank04.loc_8c0450C0

loc_8C0F9CC4:
#data 0xE50B2FE6
#data 0xD3364F22
#data 0xE6016E43
#data 0xE400430b
#data 0x8D1D2008
#data 0x90606403
#data 0xD232E301
#data 0x04346143
#data 0x935B70A0
#data 0x14247134
#data 0x043662E3
#data 0x420063E3
#data 0xD32D323c
#data 0x323C4208
#data 0xE020D32c
#data 0x430B04E4
#data 0xD02BE00c
#data 0xF3E64E08
#data 0xF437E050
#data 0xF437E054

#align4
loc_8C0F9D14:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------
#data 0x012c
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

#align4
loc_8C0F9DBC:
#data 0x3D23D70a

#align4
loc_8C0F9DC0:
#data 0x47800000

#align4
loc_8C0F9DC4:
#data 0x43B40000

#align4
loc_8C0F9DC8:
#data 0x3F000000

#align4
loc_8C0F9DCC:
#data 0x0000FFFf

#align4
loc_8C0F9DD0:
#data bank11.loc_8c11E860

loc_8C0F9DD4:
#data bank04.loc_8c0450C0


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
;-------------------------------------------------------------------------------

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

loc_8C0F9EA8:
#data 0x012c

loc_8C0F9EAA:
#data 0x0084

loc_8C0F9EAC:
#data 0x0C17
#data 0x0000

#align4
loc_8C0F9EB0:
#data bank04.loc_8c044F12

loc_8C0F9EB4:
#data loc_8c0f9E8e

loc_8C0F9EB8:
#data 0x8C26A928

#align4
loc_8C0F9EBC:
#data bank13.loc_8c13c2Bc

loc_8C0F9EC0:
#data bank12.loc_8c1294C8

loc_8C0F9EC4:
#data 0x0000FFFf

#align4
loc_8C0F9EC8:
#data 0x47800000

#align4
loc_8C0F9ECC:
#data 0x43B40000

#align4
loc_8C0F9ED0:
#data 0x3F000000

#align4
loc_8C0F9ED4:
#data bank13.loc_8c13c310

loc_8C0F9ED8:
#data bank13.loc_8c13c364

loc_8C0F9EDC:
#data 0x3E99999a


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

loc_8C0FA07E:
#data 0x010e

#align4
loc_8C0FA080:
#data bank13.loc_8c13c2Bc

loc_8C0FA084:
#data 0x43870000

#align4
loc_8C0FA088:
#data bank13.loc_8c13c310

loc_8C0FA08C:
#data 0x43B40000

#align4
loc_8C0FA090:
#data 0x0000FFFf

#align4
loc_8C0FA094:
#data 0x47800000

#align4
loc_8C0FA098:
#data 0x3F000000

#align4
loc_8C0FA09C:
#data bank13.loc_8c13c364

loc_8C0FA0A0:
#data bank12.loc_8c1294C8

loc_8C0FA0A4:
#data 0x430BD33e
#data 0x0009


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

loc_8C0FA0D2:
#data 0xC735
#data 0xE078F408
#data 0xF340F346
#data 0xE07CF437
#data 0xF240F246
#data 0x7004F427
#data 0xF340F346
#data 0xF437F49d
#data 0xF246E078
#data 0x8908F425
#data 0x70018445
#data 0xE0788045
#data 0xE07CF447
#data 0x7004F447
#data 0xF447


loc_8C0FA10A:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0FA112:
#data 0x4F22
#data 0xD3257FFc
#data 0x2F42E50b
#data 0x430BE601
#data 0x2008E400
#data 0x64038D1d
#data 0xE3019034
#data 0xD220D121
#data 0x14240434
#data 0x902E6312
#data 0xF49D6232
#data 0x7004032e
#data 0x0436D21d
#data 0x04267048
#data 0x902663F2
#data 0x93231435
#data 0x332C62F2
#data 0xE0780436
#data 0xE07CF447
#data 0x7004F447
#data 0xF447

loc_8C0FA162:
#data 0x7F04
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

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

loc_8C0FA192:
#data 0x017c
#data 0x0080012c
#data 0x00C80088

loc_8C0FA19C:
#data 0x0190
#data 0x0000

#align4
loc_8C0FA1A0:
#data bank12.loc_8c1294C8

loc_8C0FA1A4:
#data 0x8C26823c
#data 0x3DCCCCCd

#align4
loc_8C0FA1AC:
#data bank04.loc_8c044F12

loc_8C0FA1B0:
#data loc_8c0fA16a
#data 0x8C26A928
#data 0x00008C00


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
;-------------------------------------------------------------------------------

loc_8C0FA202:
#data 0x4F22
#data 0xD3357FFc
#data 0x2F42E50b
#data 0x430BE601
#data 0x2008E400
#data 0x64038D1c
#data 0xE3019055
#data 0xD230D131
#data 0x14240434
#data 0x904F6312
#data 0xF49D6232
#data 0x924C032e
#data 0x70480436
#data 0x63F20426
#data 0x14359049
#data 0x62F29346
#data 0x0436332c
#data 0xF447E078
#data 0xF447E07c
#data 0xF4477004

#align4
loc_8C0FA250:
#data 0x4F267F04
#data 0x0009000b
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------
#data 0x012c
#data 0x0C000084
#data 0x00C80088

loc_8C0FA2D0:
#data 0x0190
#data 0x0000

#align4
loc_8C0FA2D4:
#data 0x3C23D70a

#align4
loc_8C0FA2D8:
#data bank04.loc_8c0450C0

loc_8C0FA2DC:
#data bank04.loc_8c044F12

loc_8C0FA2E0:
#data loc_8c0fA258
#data 0x8C26A928

#align4
loc_8C0FA2E8:
#data 0x8C26823c


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
;-------------------------------------------------------------------------------

#align4
loc_8C0FA32C:
#data 0x9350854e
#data 0x814E7001
#data 0x3033600f
#data 0xE5008F03
#data 0x00096053
#data 0x814e

loc_8C0FA342:
#data 0x854f
#data 0x70019346
#data 0x600F814f
#data 0x8B023033
#data 0x00096053
#data 0x814f

loc_8C0FA356:
#data 0x2FE6
#data 0x2FC62FD6
#data 0xFFFB2FB6
#data 0x7FEC4F22
#data 0x6E43D31e
#data 0x64329032
#data 0x6242D11e
#data 0x410B05Ee
#data 0xDD1F5428
#data 0xDC1DC71f
#data 0xA01ADB1b
#data 0xFF08

loc_8C0FA382:
#data 0x65F3
#data 0x4B0B7504
#data 0x85EF64F3
#data 0xF2F865F3
#data 0x63037504
#data 0xF0FC435a
#data 0xF3F2F32d
#data 0xFF2AF231
#data 0x630385Ef
#data 0xE004435a
#data 0xE004F2F6
#data 0xF23EF32d
#data 0x4D0BFF27
#data 0x64F3

loc_8C0FA3B6:
#data 0x4C0b
#data 0x20080009
#data 0x7F1489E1
#data 0xFFF94F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0FA3CE:
#data 0x012c

loc_8C0FA3D0:
#data 0x0084
#data 0x0168
#data 0x000000C8

#align4
loc_8C0FA3D8:
#data bank04.loc_8c044F12

loc_8C0FA3DC:
#data loc_8c0fA32c

loc_8C0FA3E0:
#data 0x8C26A928

#align4
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
#data 0x3BA3D70a

#align4
loc_8C0FA3FC:
#data 0xD31D4F22
#data 0xE601E50b
#data 0xE400430b
#data 0x8D152008
#data 0x902E6403
#data 0xD11AE301
#data 0x0434D218
#data 0x63121424
#data 0x62329028
#data 0x532AF49d
#data 0x04369225
#data 0x04267048
#data 0xF447E078
#data 0xF447E07c
#data 0xF4477004

#align4
loc_8C0FA438:
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------
#data 0x012c
#data 0x0C000084

#align4
loc_8C0FA474:
#data bank04.loc_8c044F12

loc_8C0FA478:
#data loc_8c0fA43e
#data 0x8C26A928

#align4
loc_8C0FA480:
#data 0x3D4CCCCd

#align4
loc_8C0FA484:
#data bank04.loc_8c0450C0

loc_8C0FA488:
#data 0xD3344F22
#data 0xE601E50b
#data 0xE400430b
#data 0x8D0E2008
#data 0x905A6403
#data 0xD131E301
#data 0x0434D22f
#data 0x63121424
#data 0x62329054
#data 0x92525329
#data 0x70480436
#data 0x0426

loc_8C0FA4B6:
#data 0x4F26
#data 0x0009000b
;-------------------------------------------------------------------------------

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

#align4
loc_8C0FA4D8:
#data 0xF4E6E078
#data 0xF308C723
#data 0xFF45F430
#data 0x84E48903
#data 0x7001F4Fc
#data 0x80E4

loc_8C0FA4EE:
#data 0xE078
#data 0xE07CFE47
#data 0x7004FE47
#data 0xFE47A027

#align4
loc_8C0FA4FC:
#data 0xD22085Ee
#data 0x435A6303
#data 0xD31DC71a
#data 0xC71AF208
#data 0xF108F32d
#data 0xF008C719
#data 0xF313F322
#data 0xF33DF300
#data 0x420B045a
#data 0xC7182439
#data 0xF008F30c
#data 0x9315E078
#data 0xF4FCFF3e
#data 0xE07CFE47
#data 0x7004FE47
#data 0x85EEFE47
#data 0x81EE7005
#data 0x303385Ee
#data 0xE0008B01
#data 0x81Ee


loc_8C0FA54A:
lds.l @r15+,pr 	
fmov.s @r15+,fr15
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x012c
#data 0x0C000084
#data 0x00000168

#align4
loc_8C0FA55C:
#data bank04.loc_8c044F12

loc_8C0FA560:
#data loc_8c0fA4Bc
#data 0x8C26A928

#align4
loc_8C0FA568:
#data 0x3F400000
#data 0x3C23D70a
#data 0x47800000
#data 0x43B40000
#data 0x3F000000
#data 0x0000FFFf

#align4
loc_8C0FA580:
#data bank11.loc_8c11E860
#data 0x3E800000

#align4
loc_8C0FA588:
#data 0xD3124F22
#data 0xE601E50b
#data 0xE400430b
#data 0x8D142008
#data 0x90176403
#data 0xD10FE301
#data 0x0434D20d
#data 0x63121424
#data 0x90106143
#data 0x62327134
#data 0x920D6322
#data 0x70480436
#data 0xD2090426
#data 0x430BD309
#data 0xE00c

loc_8C0FA5C2:
#data 0x4F26
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0FA5C8:
rts 	
nop 	
;-------------------------------------------------------------------------------
#data 0x0084012c
#data 0x00000801

#align4
loc_8C0FA5D4:
#data bank04.loc_8c044F12

loc_8C0FA5D8:
#data loc_8c0fA5C8
#data 0x8C26A928

#align4
loc_8C0FA5E0:
#data bank13.loc_8c13c3D0

loc_8C0FA5E4:
#data bank12.loc_8c1294C8

loc_8C0FA5E8:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0xFFFB2F86
#data 0xFFDBFFEb
#data 0x7FEC4F22
#data 0x6E43E023
#data 0xDD4600Ec
#data 0x8834600c
#data 0xEA008D48
#data 0x02EDE026
#data 0x0E257224
#data 0x927F03Ed
#data 0x3323633d
#data 0x0EA58B00

#align4
loc_8C0FA624:
#data 0xD33F907b
#data 0xE02305Ee
#data 0x643202Ec
#data 0x6442622c
#data 0x342C4208
#data 0x420BD23b
#data 0xC73D5441
#data 0xFD086BA3
#data 0xFE08C73c
#data 0xD9396CA3
#data 0xD837C73b
#data 0xA01FEA01
#data 0xFF08

loc_8C0FA656:
#data 0xD23a
#data 0x420B64F3
#data 0xE0267408
#data 0x644D04Ed
#data 0x445A34Cc
#data 0xF23CF32d
#data 0xF2D3F2E2
#data 0xF3F0F32c
#data 0x045AF33d
#data 0x2499480b
#data 0x7B01F0F2
#data 0x23A863B3
#data 0x8F01E010
#data 0x7C28FF07

#align4
loc_8C0FA68C:
#data 0x64F3D32d
#data 0x7408430b

#align4
loc_8C0FA694:
#data 0x00094D0b
#data 0x89DC2008
#data 0x0009A031

#align4
loc_8C0FA6A0:
#data 0x02EDE026
#data 0x0E257201
#data 0x03EDE232
#data 0x3327633d
#data 0x0EA58B00

#align4
loc_8C0FA6B4:
#data 0xD31B9033
#data 0xE02305Ee
#data 0x643202Ec
#data 0x6442622c
#data 0x342C4208
#data 0x420BD217
#data 0xDC1F5441
#data 0xDB1DC71f
#data 0xFF08A011

#align4
loc_8C0FA6D8:
#data 0x65F364F3
#data 0x74044C0b
#data 0xF2F8E026
#data 0x64F303Ed
#data 0x65F3F0Fc
#data 0x435A633d
#data 0xF23EF32d
#data 0x4B0BFF2a
#data 0x7404

loc_8C0FA6FA:
#data 0x4D0b
#data 0x20080009
#data 0x89Ea

loc_8C0FA702:
#data 0x7F14
#data 0xFDF94F26
#data 0xFFF9FEF9
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x00840168

#align4
loc_8C0FA720:
#data bank10.loc_8c108086
#data 0x8C26A92c

#align4
loc_8C0FA728:
#data bank10.loc_8c108060

loc_8C0FA72C:
#data bank11.loc_8c11E860
#data 0x0000FFFf
#data 0x43B40000
#data 0x47800000
#data 0x3F000000

#align4
loc_8C0FA740:
#data bank10.loc_8c108168

loc_8C0FA744:
#data bank10.loc_8c1081B4

loc_8C0FA748:
#data bank10.loc_8c1081E6

loc_8C0FA74C:
#data bank10.loc_8c108192
#data 0x3CA3D70a


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
;-------------------------------------------------------------------------------

loc_8C0FA78E:
#data 0x2FE6
#data 0x2FC62FD6
#data 0x2FA62FB6
#data 0x2F862F96
#data 0xFFEBFFFb
#data 0xFFCBFFDb
#data 0x7FE04F22
#data 0x6E43C744
#data 0xE023FF08
#data 0xE80000Ec
#data 0x600C6CF3
#data 0x8F2B8828
#data 0x55E47C14
#data 0x7D106D53
#data 0x604F64D1
#data 0x8B0188Ff
#data 0x0009A1Ba

#align4
loc_8C0FA7D0:
#data 0x635164D1
#data 0x60433438
#data 0x81EE0009
#data 0x64D36B53
#data 0x74047B04
#data 0x85EE1ED4
#data 0x630365B3
#data 0xF42D435a
#data 0x2FC6BFB0
#data 0xF3B97F04
#data 0xF3F2E03c
#data 0xE058FE37
#data 0xFE37F3B8
#data 0xF3C8E064
#data 0xE004FE37
#data 0xE070F3C6
#data 0xFE37A1B1

#align4
loc_8C0FA814:
#data 0xD92AC72b
#data 0xE023FD08
#data 0x600C00Ec
#data 0x8B558827
#data 0x6D5355E4
#data 0x64D17D18
#data 0x88FF604f
#data 0xA1878B01
#data 0x0009

loc_8C0FA836:
#data 0x64D1
#data 0x34386351
#data 0x00096043
#data 0xE00481Ee
#data 0xF4D6F556
#data 0xF45185Ee
#data 0x435A6303
#data 0xF32DE064
#data 0xF4F2F433
#data 0x85D4FE47
#data 0x435A6303
#data 0x63038554
#data 0x435AF52d
#data 0xF42D85Ee
#data 0x435A6303
#data 0xF32DC715
#data 0xF45CF541
#data 0xF308F433
#data 0xF4D3F432
#data 0x64D3C712
#data 0x740CF208
#data 0x750C9014
#data 0xF43DF420
#data 0x2399035a
#data 0x85EE0E36
#data 0x435A6303
#data 0xBF59F42d
#data 0x7F042FC6
#data 0x61E3D304
#data 0x716862C3
#data 0xE00C430b
#data 0x1ED4A161
#data 0x000000D8

#align4
loc_8C0FA8B8:
#data bank12.loc_8c1294C8
#data 0x41200000
#data 0x0000FFFf
#data 0x43B40000
#data 0x47800000
#data 0x3F000000

#align4
loc_8C0FA8D0:
#data 0x00ECE020
#data 0x8801600c
#data 0x8802890b
#data 0x88038916
#data 0x88048929
#data 0x88058941
#data 0x88068952
#data 0xA142896a
#data 0x0009

loc_8C0FA8F2:
#data 0x56E4
#data 0x7B106B63
#data 0x60DF6DB1
#data 0x8B0188Ff
#data 0x0009A120

#align4
loc_8C0FA904:
#data 0x636165B1
#data 0x3538A029

#align4
loc_8C0FA90C:
#data 0x6B4354E4
#data 0x6DB17B04
#data 0x88FF60Df
#data 0xA1138B01
#data 0x0009

loc_8C0FA91E:
#data 0x65B1
#data 0x85B16341
#data 0x63033538
#data 0x8541435a
#data 0x6303FC2d
#data 0xA018435a
#data 0xFE2d

loc_8C0FA936:
#data 0x56E4
#data 0x7B106B63
#data 0x60DF6DB1
#data 0x8B0188Ff
#data 0x0009A0Fe

#align4
loc_8C0FA948:
#data 0x636165B1
#data 0x353885B1
#data 0x435A6303
#data 0x63038561
#data 0x435AFC2d
#data 0xFE2d

loc_8C0FA95E:
#data 0x6A63
#data 0x7A0464B3
#data 0x7404

loc_8C0FA966:
#data 0xA05b
#data 0x1EB4

loc_8C0FA96A:
#data 0x54E4
#data 0x7A0C6A43
#data 0x60DF6DA1
#data 0x8B0188Ff
#data 0x0009A0E4

#align4
loc_8C0FA97C:
#data 0x65A162A3
#data 0x6B436341
#data 0x7B047204
#data 0x35381F21
#data 0x1EA4A048

#align4
loc_8C0FA990:
#data 0x6D6356E4
#data 0x2FD27D18
#data 0x60DF6DD1
#data 0x8B0188Ff
#data 0x0009A0D0

#align4
loc_8C0FA9A4:
#data 0x6B6365F2
#data 0x6A636361
#data 0x7B106551
#data 0x7A0467F2
#data 0x63733538
#data 0x64737310
#data 0x74041F31
#data 0x1E74A02e

#align4
loc_8C0FA9C4:
#data 0x854654E4
#data 0x60DF6D03
#data 0x8B0188Ff
#data 0x0009A0B8

#align4
loc_8C0FA9D4:
#data 0x88FD60Df
#data 0x62438B0c
#data 0x852172F4
#data 0x76E86643
#data 0x435A6303
#data 0xFC2D8561
#data 0x435A6303
#data 0xE53CA00f

#align4
loc_8C0FA9F4:
#data 0x8B0088Fe
#data 0x74E8

loc_8C0FA9FA:
#data 0x6643
#data 0x6561760c
#data 0x85616341
#data 0x63033538
#data 0x8541435a
#data 0x6303FC2d
#data 0x435a

loc_8C0FAA12:
#data 0xFE2d
#data 0x6B436263
#data 0x7B047204
#data 0x1E641F21

#align4
loc_8C0FAA20:
#data 0x00096053
#data 0xE02081Ee
#data 0x600C00Ec
#data 0x891EC801
#data 0x65A385Ee
#data 0x435A6303
#data 0xBE8BF42d
#data 0x7F042FC6
#data 0xE034F3A9
#data 0xFE37F3F2
#data 0xF3A9E038
#data 0xFE37F3F2
#data 0xF3A8E03c
#data 0xFE37F3F2
#data 0xF3C8E05c
#data 0xE004FE37
#data 0xE060F3C6
#data 0xE008FE37
#data 0xE064F3C6
#data 0xFE37

loc_8C0FAA6E:
#data 0xE020
#data 0x600C00Ec
#data 0x8D40C802
#data 0x85EE6CDf
#data 0xF2ECFCE1
#data 0x435A6303
#data 0xF4CCC70a
#data 0xF433F32d
#data 0xC709F308
#data 0xF108F232
#data 0x00ECE020
#data 0x600CF2D3
#data 0xF2108803
#data 0x045AF23d
#data 0x24998F08
#data 0xA00BE044
#data 0x00000E46
#data 0x47800000
#data 0x3F000000

#align4
loc_8C0FAAB8:
#data 0x000960C3
#data 0x890188Fd
#data 0x0E46E048

#align4
loc_8C0FAAC4:
#data 0xF24C9085
#data 0xC7440E86
#data 0xC744F308
#data 0xE020F108
#data 0x00ECF232
#data 0x8803600c
#data 0xF210F2D3
#data 0x045AF23d
#data 0x24998F05
#data 0x0E469074
#data 0xA0047004
#data 0x0E86

loc_8C0FAAF2:
#data 0x906f
#data 0x70040E86
#data 0x0E46

loc_8C0FAAFA:
#data 0xE020
#data 0x600C00Ec
#data 0x8938C804
#data 0x6DF385Ee
#data 0x7D0854F1
#data 0x435A6303
#data 0xF42D65B3
#data 0x2FD6BE1e
#data 0x000960C3
#data 0x8D0688Fd
#data 0xF3B97F04
#data 0xFE37E050
#data 0xF3B8E054
#data 0xFE37

loc_8C0FAB2E:
#data 0xF3D8
#data 0xFE37E068
#data 0xF3D6E004
#data 0xFE37E06c
#data 0xF38DE070
#data 0xFE37A019

#align4
loc_8C0FAB44:
#data 0x00ECE020
#data 0xC802600c
#data 0xF38D8F05
#data 0x34EC9441
#data 0x14821483
#data 0x1481

loc_8C0FAB5A:
#data 0xE064
#data 0xE060FE37
#data 0xE05CFE37
#data 0xE070FE37
#data 0xE06CFE37
#data 0xE068FE37
#data 0x9031FE37
#data 0x81Ee

loc_8C0FAB76:
#data 0x7F20
#data 0xFCF94F26
#data 0xFEF9FDF9
#data 0x68F6FFF9
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0FAB92:
#data 0x2FE6
#data 0xD0136E43
#data 0x0EEE4E08
#data 0x89162EE8
#data 0xE401901b
#data 0x1E540E44
#data 0x00096043
#data 0xE05881Ee
#data 0x64E3F39d
#data 0x7440E300
#data 0x14311432
#data 0x64E32432
#data 0xE054FE37
#data 0xE050FE37
#data 0xADE0FE37
#data 0x6EF6

loc_8C0FABCE:
#data 0x000b
#data 0x00D06EF6
#data 0x00CC00D4
#data 0x012C00F0
#data 0x47800000
#data 0x3F000000
#data 0x8C28C750


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

#align4
loc_8C0FAC30:
#data 0x3523E209
#data 0xE1138B02
#data 0x8B033517

#align4
loc_8C0FAC3C:
#data 0x00096053
#data 0x8B258801

#align4
loc_8C0FAC44:
#data 0x00ECE023
#data 0x8820600c
#data 0xE0238920
#data 0x600C00Ec
#data 0x891B8822
#data 0x00ECE023
#data 0x8825600c
#data 0x85458916
#data 0x33ECE33c
#data 0x405A3068
#data 0xF208C712
#data 0xF008C712
#data 0xF32DE03c
#data 0xF338F23e
#data 0xF28DF320
#data 0xF3E6F33a
#data 0x8B01F235
#data 0x0009A180

#align4
loc_8C0FAC8C:
#data 0x0009A00d

#align4
loc_8C0FAC90:
#data 0x00096053
#data 0x89038804
#data 0x00096053
#data 0x8B0F8803

#align4
loc_8C0FACA0:
#data 0xF38DE03c
#data 0xF325F2E6
#data 0x890a


loc_8C0FACAA:
bra loc_8C0FAF8c
mov.b r13,@r14

loc_8C0FACAE:
#data 0x05Bb

#align4
loc_8C0FACB0:
#data 0x8C26823c

#align4
loc_8C0FACB4:
#data 0x3D851EB8
#data 0x3F400000
#data 0x3CA3D70a


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

loc_8C0FAD7A:
#data 0x01Bd

loc_8C0FAD7C:
#data 0x01E3

loc_8C0FAD7E:
#data 0x01Cf

loc_8C0FAD80:
#data 0x020b

loc_8C0FAD82:
#data 0x9363
#data 0x30308545
#data 0x8B70


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

#align4
loc_8C0FAE5C:
#data 0x8C28C7F4

#align4
loc_8C0FAE60:
#data bank11.loc_8c11E210

loc_8C0FAE64:
#data 0x0000FFFf

#align4
loc_8C0FAE68:
#data 0x00008000

#align4
loc_8C0FAE6C:
#data 0x00ECE025
#data 0x8801600c
#data 0xD14A8B11
#data 0xF2E6E078
#data 0xF30D415a
#data 0xFF25F230
#data 0xFE278D03
#data 0xE025FEF7
#data 0x0ED4

loc_8C0FAE8E:
#data 0xE078
#data 0x7008F3E6
#data 0xE07CFE37
#data 0xFE37

loc_8C0FAE9A:
#data 0xE025
#data 0x600C00Ec
#data 0x8B0F8802
#data 0xE078D13f
#data 0x415AF2E6
#data 0xF231F30d
#data 0xF1E6FE27
#data 0xF125F28d
#data 0xF3E68B65
#data 0xFE377008
#data 0xFE37E07c

#align4
loc_8C0FAEC4:
#data 0x00ECE020
#data 0xC801600c
#data 0xC7368917
#data 0xF408E15c
#data 0xE03431Ec
#data 0xF2E6F318
#data 0xF04CE160
#data 0xF23E31Ec
#data 0xE038FE27
#data 0xF318F2E6
#data 0x31ECE164
#data 0xFE27F23e
#data 0xF2E6E03c
#data 0xF23EF318
#data 0xFE27

loc_8C0FAEFE:
#data 0xE020
#data 0x600C00Ec
#data 0x8912C802
#data 0x62E39047
#data 0x61227240
#data 0x700403Ee
#data 0x2212313c
#data 0xE04403Ee
#data 0x323C02Ee
#data 0x903B0E26
#data 0xE04803Ee
#data 0x313C01Ee
#data 0x0E16

loc_8C0FAF2E:
#data 0xE020
#data 0x600C00Ec
#data 0x8914C804
#data 0x31ECE168
#data 0xF318E050
#data 0xE16CF2E6
#data 0xF23031Ec
#data 0xE054FE27
#data 0xF318F2E6
#data 0x31ECE170
#data 0xFE27F230
#data 0xF2E6E058
#data 0xF230F318
#data 0xFE27

loc_8C0FAF62:
#data 0xE020
#data 0x233803Ec
#data 0x85EE8910
#data 0x81EE70Ff
#data 0x4015600f
#data 0x4F26890a
#data 0xFDF964E3
#data 0xFFF9FEF9
#data 0xAC046DF6
#data 0x6EF6

loc_8C0FAF86:
#data 0x900a
#data 0x0ED42ED0


loc_8C0FAF8C:
lds.l @r15+,pr 	
fmov.s @r15+,fr13
fmov.s @r15+,fr14
fmov.s @r15+,fr15
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x00D0
#data 0x012C00D8
#data 0x3D4CCCCd
#data 0x3D088889
#data 0x41200000

#align4
loc_8C0FAFAC:
#data 0xE0236353
#data 0xD2407337
#data 0xE3230434
#data 0x6022334c
#data 0xE6006330
#data 0x750D6002
#data 0xF38D633c
#data 0x013E4308
#data 0x906E6343
#data 0x04167340
#data 0x0464E020
#data 0xF437E074
#data 0x04667058
#data 0x0454E031
#data 0x2362E048
#data 0x0466000b
;-------------------------------------------------------------------------------

#align4
loc_8C0FAFEC:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0xFFFB2F86
#data 0x7FD04F22
#data 0xE900D32d
#data 0x6493430b
#data 0xD42CD22d
#data 0x0009420b
#data 0x64F3DC2c
#data 0x9D4B7428
#data 0x1F336343
#data 0x740462C2
#data 0x2312512c
#data 0x63C21F44
#data 0xD327523d
#data 0xE21C2422
#data 0x34236432
#data 0xA0F18B01
#data 0x0009

loc_8C0FB03A:
#data 0xD324
#data 0x430B6143
#data 0x2F02E005
#data 0x853563C2
#data 0x8B0230D3
#data 0xA001D020
#data 0x0009

loc_8C0FB052:
#data 0xD020

#align4
loc_8C0FB054:
#data 0xD0200B4c
#data 0x4A086ABc
#data 0x3A0C4A08
#data 0xF3A8C71e
#data 0x63A3FF08
#data 0x62A3E01c
#data 0x7304F3F2
#data 0xFF377208
#data 0x1F31E020
#data 0xF3F2F338
#data 0xE024FF37
#data 0xF3281F22
#data 0xFF37F3F2
#data 0x851561C2
#data 0x8B0230D3
#data 0xA02BC713
#data 0xF408

loc_8C0FB096:
#data 0xD20c
#data 0x880D6022
#data 0x64038D04
#data 0x00096043
#data 0x8B1F881b

#align4
loc_8C0FB0A8:
#data 0xA01FC70e
#data 0x0084F408
#data 0x0000041a
#data 0x8C26A92c

#align4
loc_8C0FB0B8:
#data bank12.loc_8c120950
#data 0x8C28C80c

#align4
loc_8C0FB0C0:
#data bank11.loc_8c1201e0
#data 0x8C26823c
#data 0x8C28C858

#align4
loc_8C0FB0CC:
#data bank12.loc_8c1292D4

loc_8C0FB0D0:
#data bank16.loc_8c163650

loc_8C0FB0D4:
#data bank16.loc_8c16366c

loc_8C0FB0D8:
#data bank16.loc_8c1632A0
#data 0x41200000
#data 0xC0A00000
#data 0x41400000

#align4
loc_8C0FB0E8:
#data 0xF408C744

#align4
loc_8C0FB0EC:
#data 0x65F3E01c
#data 0xE01CF3F6
#data 0x64F3D342
#data 0x7514F340
#data 0x430BFF37
#data 0x64C2741c
#data 0x64038545
#data 0x8B0534D3
#data 0xF308C73d
#data 0xF2F6E014
#data 0x8B0AF235

#align4
loc_8C0FB118:
#data 0x8B0134D3
#data 0x0009A0Af

#align4
loc_8C0FB120:
#data 0xF38DE014
#data 0xF325F2F6
#data 0xA0A88B01
#data 0x0009

loc_8C0FB12E:
#data 0xD337
#data 0x6EF2E801
#data 0xD03465Bc
#data 0x4E08D135
#data 0x23800EEe
#data 0xD33462F2
#data 0x21207206
#data 0x64F2430b
#data 0x2E809051
#data 0xE0340E84
#data 0xF3F2F3A8
#data 0xE038FE37
#data 0xF33853F1
#data 0xFE37F3F2
#data 0x53F2E03c
#data 0xF3F2F338
#data 0xE00CFE37
#data 0xE058F3A6
#data 0xE054FE37
#data 0xE050FE37
#data 0x63C2FE37
#data 0x30D38535
#data 0x92358B03
#data 0xA003E044
#data 0x0E26

loc_8C0FB18E:
#data 0x9132
#data 0x0E16E044

#align4
loc_8C0FB194:
#data 0x63BCE220
#data 0x89083323
#data 0x6BBC53F3
#data 0x41BC6183
#data 0x21386332
#data 0xA00A8B09
#data 0x0009

loc_8C0FB1AE:
#data 0x51F4
#data 0x7BE06BBc
#data 0x61126383
#data 0x231843Bc
#data 0x8901

loc_8C0FB1BE:
#data 0xA001
#data 0x6483

loc_8C0FB1C2:
#data 0x6493

#align4
loc_8C0FB1C4:
#data 0xF29D445a
#data 0xF32D9016
#data 0xFE37F322
#data 0xFE37E07c
#data 0xFE37E078
#data 0xFE37E074
#data 0x0E94E025
#data 0x00096093
#data 0x81EED30c
#data 0x72016232
#data 0xA0462322
#data 0x012C0009
#data 0x6EB710F2
#data 0x00000080
#data 0x40C00000

#align4
loc_8C0FB200:
#data bank12.loc_8c121FE0
#data 0x44200000
#data 0x8C28C784
#data 0x8C26A960
#data 0x8C26A961

#align4
loc_8C0FB214:
#data bank03.loc_8c039A16
#data 0x8C28C858

#align4
loc_8C0FB21C:
#data 0xD32962F3
#data 0x723461F3
#data 0x430B711c
#data 0x63C2E00c
#data 0xF408C726
#data 0x30D38535
#data 0xE01C8B03
#data 0xA003F3F6
#data 0xF340

loc_8C0FB23E:
#data 0xE01c
#data 0xF341F3F6

#align4
loc_8C0FB244:
#data 0xD32165F3
#data 0x64F3E01c
#data 0x7514FF37
#data 0x741C430b
#data 0x854564C2
#data 0x34D36403
#data 0xE0148B04
#data 0xF2F6F38d
#data 0x8907F325

#align4
loc_8C0FB268:
#data 0x890834D3
#data 0xF308C718
#data 0xF2F6E014
#data 0x8B02F235

#align4
loc_8C0FB278:
#data 0x0F949022
#data 0x2F90

loc_8C0FB27E:
#data 0xD315
#data 0xE401430b
#data 0x4F267F30
#data 0x68F6FFF9
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0FB29A:
#data 0xE31c
#data 0x0437D20e
#data 0xD50EE018
#data 0x4F222FE6
#data 0x342C041a
#data 0x600C004c
#data 0x035E4008
#data 0x8B132338
#data 0xE0004F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x0000012c

#align4
loc_8C0FB2C4:
#data bank12.loc_8c1294C8
#data 0x41A00000

#align4
loc_8C0FB2CC:
#data bank12.loc_8c121FE0
#data 0x44200000

#align4
loc_8C0FB2D4:
#data bank12.loc_8c120900

loc_8C0FB2D8:
#data bank16.loc_8c1642D0
#data 0x8C28C750

#align4
loc_8C0FB2E0:
#data 0xE6010E5e
#data 0xE123906a
#data 0x31ECD235
#data 0x0E642E60
#data 0x1E345345
#data 0x21008442
#data 0x6322E029
#data 0x2118013c
#data 0xE0238917
#data 0x600C00Ec
#data 0x8B028814
#data 0xE12CE023
#data 0x0E14

loc_8C0FB312:
#data 0xE023
#data 0x600C00Ec
#data 0x8B028816
#data 0xE229E023
#data 0x0E24

loc_8C0FB322:
#data 0xE023
#data 0x600C00Ec
#data 0x8B028819
#data 0xE22AE023
#data 0x0E24

loc_8C0FB332:
#data 0xE223
#data 0x32ECD323
#data 0x6220F48d
#data 0x6032E500
#data 0x6002622c
#data 0x012E4208
#data 0x9038E220
#data 0x0E1632Ec
#data 0x22008443
#data 0xFE47E074
#data 0x0E567058
#data 0x024CE018
#data 0x0E24E031
#data 0xF508C718
#data 0xF346E008
#data 0xF352E034
#data 0xE00CFE37
#data 0xF34667E3
#data 0x7740E038
#data 0xFE37F352
#data 0xF346E010
#data 0xF352E03c
#data 0xFE37F59d
#data 0x1752E058
#data 0x27521751
#data 0xE054FE57
#data 0xE050FE57
#data 0xE004FE57
#data 0x707CF346
#data 0xE07CFE37
#data 0xF354FE37
#data 0xFE37E078
#data 0x8F0BE074
#data 0xE025FE37
#data 0x0E54A00a
#data 0x0084012c
#data 0x8C26823c
#data 0x8C26A92c
#data 0x41200000

#align4
loc_8C0FB3CC:
#data 0x0E64E025

#align4
loc_8C0FB3D0:
#data 0x04ECE023
#data 0x881F604c
#data 0x64038D04
#data 0x00096043
#data 0x8B018820

#align4
loc_8C0FB3E4:
#data 0x0E54E025

#align4
loc_8C0FB3E8:
#data 0x00ECE023
#data 0x882B600c
#data 0xE0318B11
#data 0x882200Ec
#data 0x64038D04
#data 0x00096043
#data 0x8B058821

#align4
loc_8C0FB404:
#data 0xF308C723
#data 0xFE37E054
#data 0xFE37E050

#align4
loc_8C0FB410:
#data 0xE302E025
#data 0x0E34

loc_8C0FB416:
#data 0xE023
#data 0x604C04Ec
#data 0x8D04881d
#data 0x60436403
#data 0x881E0009
#data 0x8B18

loc_8C0FB42A:
#data 0xD41b
#data 0x6342D01b
#data 0x24327301
#data 0x430073Ff
#data 0xC719023d
#data 0xC719F208
#data 0xF108425a
#data 0xF008C718
#data 0xF32DE048
#data 0xF322D217
#data 0xF300F313
#data 0x035AF33d
#data 0x0E362329

#align4
loc_8C0FB45C:
#data 0x9417E064
#data 0x145334Ec
#data 0x14511452
#data 0xE060FE47
#data 0xE05CFE47
#data 0xE070FE47
#data 0xE06CFE47
#data 0xE068FE47
#data 0xB986FE47
#data 0x900664E3
#data 0x60E381Ef
#data 0x4F260009
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x00F000Cc
#data 0x3F6147Ae
#data 0x8C28C854

#align4
loc_8C0FB49C:
#data bank16.loc_8c1649D0
#data 0x47800000
#data 0x43B40000
#data 0x3F000000
#data 0x0000FFFf

#align4
loc_8C0FB4B0:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x4F222F86
#data 0xD83B7FF8
#data 0xF408C738
#data 0xDD3DEA09
#data 0xDB3BE90d
#data 0xD638EE00
#data 0xD735EC01
#data 0x2FD2D537
#data 0x85056082
#data 0x8D338800
#data 0x883C6453
#data 0x885A8941
#data 0x886E8943
#data 0x914F8949
#data 0x896F3010
#data 0x3010914d
#data 0xA0848B01
#data 0x0009

loc_8C0FB502:
#data 0x9149
#data 0x8B013010
#data 0x0009A0Be

#align4
loc_8C0FB50C:
#data 0x30109145
#data 0xA1018B01
#data 0x0009

loc_8C0FB516:
#data 0x9141
#data 0x8B013010
#data 0x0009A148

#align4
loc_8C0FB520:
#data 0x3010913d
#data 0xA1738B01
#data 0x0009

loc_8C0FB52A:
#data 0x9139
#data 0x8B013010
#data 0x0009A1A5

#align4
loc_8C0FB534:
#data 0x30109135
#data 0xA1A78B01
#data 0x0009

loc_8C0FB53E:
#data 0x9131
#data 0x8B013010
#data 0x0009A1Af

#align4
loc_8C0FB548:
#data 0x0009A1B3

#align4
loc_8C0FB54C:
#data 0x2462D31d
#data 0xE51E1561
#data 0x430BE600
#data 0xD21B6463
#data 0xE400420b
#data 0xE300D11a
#data 0x62332B32
#data 0xA1A22132
#data 0x0009

loc_8C0FB56E:
#data 0xE53c
#data 0xA19BE601
#data 0xE400

loc_8C0FB576:
#data 0xD216
#data 0xE413420b
#data 0x430BD315
#data 0xA1960009
#data 0x0009

loc_8C0FB586:
#data 0xD30f
#data 0xE600E578
#data 0x6463430b
#data 0x0009A18f
#data 0x023301E3
#data 0x03CA0346
#data 0x052F041a
#data 0x0615060b
#data 0x000006B5
#data 0x3E800000
#data 0x8C26A688
#data 0x8C26823c
#data 0xFF000000
#data 0x8C28C85c
#data 0x8C28C84c
#data 0x8C28C750

#align4
loc_8C0FB5C4:
#data bank03.loc_8c0355B2

loc_8C0FB5C8:
#data bank04.loc_8c042538
#data 0x8C28C854

#align4
loc_8C0FB5D0:
#data bank04.loc_8c041DDe

loc_8C0FB5D4:
#data bank04.loc_8c041E44

loc_8C0FB5D8:
#data 0xD127D325
#data 0xE3042432
#data 0xD2249043
#data 0x22C01561
#data 0x54D52130
#data 0x04E4933e
#data 0xD222343c
#data 0x343C04E4
#data 0x60C31424
#data 0xD2200009
#data 0x343C814e
#data 0xA1541424
#data 0x814e

loc_8C0FB60A:
#data 0xE2Ff
#data 0x24226323
#data 0x64E31521
#data 0x27C0D21b
#data 0x22E2

loc_8C0FB61A:
#data 0x6043
#data 0x40080009
#data 0x740105De
#data 0x34A39021
#data 0x05E48FF7
#data 0x89093493

#align4
loc_8C0FB630:
#data 0x00096043
#data 0x05DE4008
#data 0x90167401
#data 0x25E03493
#data 0x05E48FF6

#align4
loc_8C0FB644:
#data 0x6ED36943
#data 0x6C434908
#data 0x39DC7E48
#data 0x8F0239E2
#data 0xA12C7CF3
#data 0x0009

loc_8C0FB65A:
#data 0x6496
#data 0x65C3BCA6
#data 0x8FFA39E2
#data 0xA1247C01
#data 0x012C0009
#data 0x000001D0
#data 0xFF0000Ff
#data 0x8C26A960
#data 0x8C26A961

#align4
loc_8C0FB67C:
#data bank16.loc_8c163B28

loc_8C0FB680:
#data bank16.loc_8c163BF4
#data 0x8C28C858

#align4
loc_8C0FB688:
#data 0x15612462
#data 0x65D366D3
#data 0x27E07648
#data 0x7534

loc_8C0FB696:
#data 0x6456
#data 0x3562906d
#data 0x8FFA24E0
#data 0x966A04E4
#data 0x36DC9468
#data 0x34Dc

loc_8C0FB6AA:
#data 0x6546
#data 0x8FFC3462
#data 0xD23305E4
#data 0x22E2D533
#data 0xE405BA6b
#data 0xBA68D532
#data 0xD532E406
#data 0xE407BA65
#data 0xBA62D531
#data 0x69E3E408

#align4
loc_8C0FB6D0:
#data 0x00096093
#data 0x04DE4008
#data 0x04C4904d
#data 0x00096093
#data 0x8B098801
#data 0x6232D32b
#data 0xD22B6122
#data 0x91455012
#data 0x2102314c
#data 0x1424B84b

#align4
loc_8C0FB6F8:
#data 0x7901E305
#data 0x8BE73933
#data 0x65D366D3
#data 0x75247648

#align4
loc_8C0FB708:
#data 0x90346456
#data 0x24E03562
#data 0x04E48FFa
#data 0x0009A0Cd

#align4
loc_8C0FB718:
#data 0xD122D320
#data 0xE3052432
#data 0x1561D21f
#data 0x213022C0
#data 0x54D5D31f
#data 0x60C31434
#data 0x93240009
#data 0x814E66D3
#data 0xD21C7634
#data 0x1424343c
#data 0x343C814e
#data 0x04E49017
#data 0x04E4343c
#data 0x742464D3

#align4
loc_8C0FB750:
#data 0x34626546
#data 0x05E48FFc
#data 0x66D3E044
#data 0x65D304De
#data 0x76609009
#data 0x24E07550
#data 0x04E4

loc_8C0FB76A:
#data 0x6456
#data 0x8FFC3562
#data 0xA09E04E4
#data 0x012C0009
#data 0x0098008c
#data 0x01D00084
#data 0x8C28C854

#align4
loc_8C0FB784:
#data bank16.loc_8c1639D8

loc_8C0FB788:
#data bank16.loc_8c163A98

loc_8C0FB78C:
#data bank16.loc_8c163B58

loc_8C0FB790:
#data bank16.loc_8c163C24
#data 0x8C26A92c

#align4
loc_8C0FB798:
#data bank16.loc_8c163930
#data 0xFFFF0000
#data 0x8C26A960
#data 0x8C26A961

#align4
loc_8C0FB7A8:
#data bank16.loc_8c163B28

loc_8C0FB7AC:
#data bank16.loc_8c163BF4

loc_8C0FB7B0:
#data 0x66D3E3Ff
#data 0x24326233
#data 0x76241531
#data 0x64D3D341
#data 0x23E227C0

#align4
loc_8C0FB7C4:
#data 0x90796546
#data 0x8FFB3462
#data 0x62D305E4
#data 0x734863D3
#data 0x723469E3
#data 0x1F312F22

#align4
loc_8C0FB7DC:
#data 0x906D64F2
#data 0x2F427404
#data 0x644274Fc
#data 0x04E424E0
#data 0x6593BBDe
#data 0x52F163F2
#data 0x8FF13322
#data 0x96617901
#data 0x36DC955f
#data 0x35Dc

loc_8C0FB802:
#data 0x6456
#data 0x3562905a
#data 0x04C48FFb
#data 0x0009A051

#align4
loc_8C0FB810:
#data 0x15612462
#data 0x27E0D52c
#data 0xE405B9Bb
#data 0xB9B8D52b
#data 0xD52BE406
#data 0xE407B9B5
#data 0xB9B2D52a
#data 0x64E3E408

#align4
loc_8C0FB830:
#data 0x00096043
#data 0x05DE4008
#data 0x903F7401
#data 0x8FF73493
#data 0x66D305C4
#data 0x76484408
#data 0x346234Dc
#data 0x8904

loc_8C0FB84E:
#data 0x6546
#data 0x25E03462
#data 0x05E48FFb

#align4
loc_8C0FB858:
#data 0x64D366D3
#data 0x74507660

#align4
loc_8C0FB860:
#data 0x34626546
#data 0x05C48FFc
#data 0x9528962a
#data 0x35DC36Dc

#align4
loc_8C0FB870:
#data 0x35626456
#data 0x8FFB04E4
#data 0xA01A24E0
#data 0x0009

loc_8C0FB87E:
#data 0x63F2
#data 0x5433E064
#data 0xE020F447
#data 0x04C4A013

#align4
loc_8C0FB88C:
#data 0xE06462F2
#data 0x5424E502
#data 0xE020F447
#data 0xE02504C4
#data 0x045464D2
#data 0xA00654D2
#data 0x0454

loc_8C0FB8A6:
#data 0xE4Ff
#data 0xE601E505

#align4
loc_8C0FB8AC:
#data 0x420BD20a
#data 0x0009

loc_8C0FB8B2:
#data 0xD90a
#data 0xEC5AED50
#data 0xEE1CA028
#data 0x008C012c
#data 0x00000098
#data 0x8C28C858

#align4
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

loc_8C0FB8E0:
#data 0x64B2BCDb
#data 0x33A363B2
#data 0x64038F07
#data 0xE10B62B2
#data 0x89023217
#data 0x000960D3
#data 0x814f

loc_8C0FB8FA:
#data 0x60B2
#data 0x8B02880c
#data 0x000960C3
#data 0x814f

loc_8C0FB906:
#data 0x63B2
#data 0x2B327301

#align4
loc_8C0FB90C:
#data 0x02E762B2
#data 0x329C021a
#data 0x62826321
#data 0x33008525
#data 0x7F0889E0
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0FB932:
#data 0x2FE6
#data 0x7FA84F22
#data 0x6E439035
#data 0x233803Ec
#data 0xD31A892d
#data 0xE400430b
#data 0xD319902e
#data 0xE07CF6E6
#data 0xE078F5E6
#data 0xF4E6430b
#data 0x64E3D216
#data 0x7434420b
#data 0xE048D315
#data 0x04EE430b
#data 0xE044D314
#data 0x04EE430b
#data 0x64E3D213
#data 0x7450420b
#data 0x64E3D312
#data 0x7450430b
#data 0xD311405a
#data 0x430BF32d
#data 0xD310F43c
#data 0x430B900d
#data 0xE40104Ee
#data 0x4F267F58
#data 0x422BD20d
#data 0x6EF6

loc_8C0FB99E:
#data 0x7F58
#data 0x000B4F26
#data 0x012C6EF6
#data 0x00840080

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

loc_8C0FB9D4:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0xFFFB2F86
#data 0xFFDBFFEb
#data 0x4F22FFCb
#data 0xC7397FF0
#data 0xFC08D23e
#data 0xFD08C739
#data 0xFE08C73a
#data 0xD3346022
#data 0xDB398505
#data 0x8800DD31
#data 0xD8336E32
#data 0xDC2ED934
#data 0x8D19FF8d
#data 0x914EEA00
#data 0x893F3010
#data 0x3010914c
#data 0x914A896a
#data 0x89673010
#data 0x8970886e
#data 0x30109146
#data 0x9144896d
#data 0x896A3010
#data 0x30109142
#data 0x91408967
#data 0x89723010
#data 0x0009A09b

#align4
loc_8C0FBA48:
#data 0xE4034B0b
#data 0x0009490b
#data 0xF5EC9438
#data 0x480BF6Dc
#data 0x4B0BF4Cc
#data 0xE004E401
#data 0xFCFAD324
#data 0xE008FCF7
#data 0xE004FCF7
#data 0xFDF7FDFa
#data 0xF308C71f
#data 0xFD37E008
#data 0xFEF7E064
#data 0xFEF7E060
#data 0xFEF7E05c
#data 0xFEF7E058
#data 0xFEF7E054
#data 0xFEF7E050
#data 0x81EE9019
#data 0x0EA670A0
#data 0x23A2A123

#align4
loc_8C0FBA9C:
#data 0xE4034B0b
#data 0x0009490b
#data 0xF5EC940e
#data 0x480BF6Dc
#data 0x4B0BF4Cc
#data 0xA02CE401
#data 0x03460009
#data 0x041A0233
#data 0x03CA01E3
#data 0x052F05Bb
#data 0x012C4000
#data 0x8C28C7F4
#data 0x8C28C800
#data 0x8C28C7F0
#data 0x3FAAAAAb

#align4
loc_8C0FBAD8:
#data bank12.loc_8c121730
#data 0x463B8000

#align4
loc_8C0FBAE0:
#data bank12.loc_8c121100
#data 0x3DCCCCCd

#align4
loc_8C0FBAE8:
#data bank12.loc_8c1204F0
#data 0x8C26823c
#data 0xC3160000
#data 0x8C28C850

#align4
loc_8C0FBAF8:
#data 0xE4034B0b
#data 0x0009490b
#data 0xF5EC94A5
#data 0x480BF6Dc
#data 0x4B0BF4Cc
#data 0xE401

loc_8C0FBB0E:
#data 0xD353
#data 0x0EA6909e
#data 0x81EEE001
#data 0xD04F6232
#data 0x23227201
#data 0x420872Ff
#data 0xA02A032e
#data 0x1E34

loc_8C0FBB2A:
#data 0x4B0b
#data 0x490BE403
#data 0x948E0009
#data 0xF6DCF5Ec
#data 0xF4CC480b
#data 0xE4014B0b
#data 0xFCFAC747
#data 0xE004F408
#data 0xC746FC47
#data 0xE008F308
#data 0xE004FC37
#data 0xFD47FDFa
#data 0xF308C743
#data 0xFD37E008
#data 0xFEF7E064
#data 0xFEF7E060
#data 0xFEF7E05c
#data 0xFEF7E058
#data 0xFEF7E054
#data 0xFEF7E050
#data 0xA0B2906c
#data 0x81Ee

loc_8C0FBB7E:
#data 0xC73b
#data 0x85EEFE08
#data 0x81EE70Ff
#data 0x2008600f
#data 0xA0818901
#data 0x0009

loc_8C0FBB92:
#data 0x905d
#data 0x54E4EB1c
#data 0x0AB70AEe
#data 0x3B4C0B1a
#data 0x88FF85Be
#data 0x68B38968
#data 0x6081781c
#data 0x63B16483
#data 0xD22F65B3
#data 0x303869F3
#data 0x750481Ee
#data 0x740485Ee
#data 0x2F017904
#data 0x435A63F1
#data 0x420BF42d
#data 0xD3292F96
#data 0x629361E3
#data 0x430B715c
#data 0x85EEE00c
#data 0xD2246483
#data 0x630365B3
#data 0x7510435a
#data 0xF42D7410
#data 0x2F96420b
#data 0xD3207F08
#data 0x629361E3
#data 0x430B7150
#data 0x2AA8E00c
#data 0xE0048B20
#data 0xE008F3B6
#data 0xFC3AF3E2
#data 0xE004F3B6
#data 0xFC37F3E2
#data 0xF3B6E00c
#data 0xF3E2E008
#data 0xE010FC37
#data 0xE014F3B6
#data 0xFD3AF3E2
#data 0xE004F3B6
#data 0xFD37F3E2
#data 0xF3B6E018
#data 0xF3E2E008
#data 0x9009FD37
#data 0x730103Ee
#data 0x0E36A04f

#align4
loc_8C0FBC44:
#data 0x02EE9004
#data 0xA0237201
#data 0x09750E26
#data 0x400000Cc
#data 0x0000012c

#align4
loc_8C0FBC58:
#data bank16.loc_8c1638D4
#data 0x8C28C850
#data 0xC1F00000
#data 0xC2480000
#data 0xC3160000
#data 0x41200000

#align4
loc_8C0FBC70:
#data loc_8c0fA754

loc_8C0FBC74:
#data bank12.loc_8c1294C8

loc_8C0FBC78:
#data 0xFEF7E064
#data 0xFEF7E060
#data 0xFEF7E05c
#data 0xFEF7E058
#data 0xFEF7E054
#data 0xFEF7E050
#data 0x81EE9086

#align4
loc_8C0FBC94:
#data 0xF2C8E05c
#data 0xE160F3E6
#data 0x31ECF0Ec
#data 0xE004F23e
#data 0xF2C6FC2a
#data 0xE164F318
#data 0xF23E31Ec
#data 0xE008FC27
#data 0xF318F2C6
#data 0x31ECE154
#data 0xFC27F23e
#data 0xF2D8E050
#data 0xE004F3E6
#data 0xFD2AF23e
#data 0xF318F2D6
#data 0xFD27F23e
#data 0x31ECE158
#data 0xF318E008
#data 0xF23EF2D6
#data 0xFD27

loc_8C0FBCE2:
#data 0x7F10
#data 0xFCF94F26
#data 0xFEF9FDF9
#data 0x68F6FFF9
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0FBCFE:
#data 0x2FE6
#data 0x2FC62FD6
#data 0xD3284F22
#data 0x0009430b
#data 0x420BD227
#data 0xD3270009
#data 0x0009430b
#data 0x420BD226
#data 0xD3260009
#data 0x0009430b
#data 0xD425C726
#data 0xDD26E30f
#data 0xE50BE200
#data 0xE6012420
#data 0xF3081431
#data 0xF437E00c
#data 0x80499031
#data 0x804B804a
#data 0x64234D0b
#data 0x9C2BD420
#data 0x6E43D31e
#data 0x23023C4c

#align4
loc_8C0FBD54:
#data 0xE601E50b
#data 0xE4004D0b
#data 0x7E042E02
#data 0x8BF73EC2
#data 0x430BD31a
#data 0xD21A0009
#data 0x0009420b
#data 0x430BD319
#data 0xD219E40c
#data 0xE405420b
#data 0xE000D218
#data 0x81356322
#data 0x0009BE26
#data 0x0009BB92
#data 0x6322D214
#data 0x70018432
#data 0x4F268032
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x00FF00F0
#data 0x000000A0

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
#data 0x8C26A688
#data 0x44520000

#align4
loc_8C0FBDC4:
#data bank04.loc_8c044F12
#data 0x8C28C7F0
#data 0x8C28C750

#align4
loc_8C0FBDD0:
#data bank04.loc_8c041D84

loc_8C0FBDD4:
#data bank04.loc_8c041C08

loc_8C0FBDD8:
#data bank03.loc_8c032BE0

loc_8C0FBDDC:
#data bank02.loc_8c027B64
#data 0x8C26823c

#align4
loc_8C0FBDE4:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x7FFC4F22
#data 0xD33CD53a
#data 0x6552D43a
#data 0x6442430b
#data 0x62D2DD3a
#data 0x70018525
#data 0x8125BDE6
#data 0x0009BB52
#data 0x6322D237
#data 0xD3372F32
#data 0xE402430b
#data 0x420BD236
#data 0xD3380009
#data 0xD535D436
#data 0xE600430b
#data 0x9350D236
#data 0x420B64F2
#data 0xD32F343c
#data 0xE401430b
#data 0x420BD22e
#data 0xD3320009
#data 0xE400430b
#data 0xD333C731
#data 0xC731F508
#data 0xF408430b
#data 0xD431D22c
#data 0x0009420b
#data 0x430BD330
#data 0x64D2E401
#data 0x85459336
#data 0x34336403
#data 0x91328B02
#data 0x8B053413

#align4
loc_8C0FBE70:
#data 0x34339330
#data 0x912E8B04
#data 0x89013413

#align4
loc_8C0FBE7C:
#data 0x0009B8B6

#align4
loc_8C0FBE80:
#data 0xDC279B2a
#data 0x6EC33BCc

#align4
loc_8C0FBE88:
#data 0x244864E6
#data 0x62408905
#data 0x89022228
#data 0x430BD323
#data 0x0009

loc_8C0FBE9A:
#data 0x3EB2
#data 0x6EC38BF4
#data 0x9C1964C3
#data 0x3C4c

loc_8C0FBEA6:
#data 0x64E6
#data 0x89042448
#data 0x22286240
#data 0xBD3E8901
#data 0x0009

loc_8C0FBEB6:
#data 0x3EC2
#data 0x64D28BF5
#data 0x8545930d
#data 0x8F353037
#data 0xE0007F04
#data 0xA02D8042
#data 0x00880009
#data 0x03460233
#data 0x052F041a
#data 0x06BA00A0
#data 0x8C28C860
#data 0x8C28C85c

#align4
loc_8C0FBEE4:
#data bank02.loc_8c02DC32
#data 0x8C26823c
#data 0x8C28C7F0

#align4
loc_8C0FBEF0:
#data bank12.loc_8c1204F0

loc_8C0FBEF4:
#data bank12.loc_8c121100
#data 0x8C28C800
#data 0x8C28C7F4

#align4
loc_8C0FBF00:
#data bank11.loc_8c11FF90

loc_8C0FBF04:
#data bank11.loc_8c11FA80

loc_8C0FBF08:
#data bank12.loc_8c120950
#data 0x43F00000
#data 0x44200000

#align4
loc_8C0FBF14:
#data bank12.loc_8c1216C0
#data 0x8C28C80c

#align4
loc_8C0FBF1C:
#data bank12.loc_8c120900
#data 0x8C28C750

#align4
loc_8C0FBF24:
#data loc_8c0fABE8

loc_8C0FBF28:
#data 0x842162D2
#data 0x80217001

#align4
loc_8C0FBF30:
#data 0xD3084F26
#data 0x6CF66BF6
#data 0x432B6DF6
#data 0x6EF6

loc_8C0FBF3E:
#data 0xD206
#data 0x63224F22
#data 0x20088432
#data 0xBED88B01
#data 0x0009

loc_8C0FBF4E:
#data 0xAF49
#data 0x00004F26

#align4
loc_8C0FBF54:
#data bank03.loc_8c030E3a
#data 0x8C26823c


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
;-------------------------------------------------------------------------------

#align4
loc_8C0FBF7C:
#data 0xD3284F22
#data 0xE601E505
#data 0xE400430b
#data 0x8D372008
#data 0x90436403
#data 0xD125E301
#data 0x0434D223
#data 0x63121424
#data 0x6232903d
#data 0x6322D526
#data 0x0436923a
#data 0x04267048
#data 0xE300E020
#data 0x0434D61e
#data 0xF358C71e
#data 0xF6086343
#data 0xF508C71d
#data 0xF362C71d
#data 0x7340F408
#data 0xF340F353
#data 0xE004F33d
#data 0x2269025a
#data 0xF3562322
#data 0xF362E044
#data 0xF340F353
#data 0x035AF33d
#data 0x04362369
#data 0xF356E008
#data 0xF362E048
#data 0xF340F353
#data 0x035AF33d
#data 0x04362369

#align4
loc_8C0FBFFC:
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

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
#data 0x0084012c
#data 0x0000080e

#align4
loc_8C0FC020:
#data bank04.loc_8c044F12

loc_8C0FC024:
#data loc_8c0fC002
#data 0x8C26A930
#data 0x0000FFFf
#data 0x47800000
#data 0x43B40000
#data 0x3F000000

#align4
loc_8C0FC03C:
#data bank13.loc_8c13c3F4

loc_8C0FC040:
#data 0xD758854f
#data 0x65036603
#data 0x60637601
#data 0x40080009
#data 0x60530E7e
#data 0x40080009
#data 0x037ED253
#data 0x47006753
#data 0x63533E38
#data 0x373C6563
#data 0x45006363
#data 0x4E5A353c
#data 0xD6504508
#data 0x63434708
#data 0x372C352c
#data 0xF378F258
#data 0xF608C74a
#data 0xF231C74a
#data 0xF32DF508
#data 0xF408C74a
#data 0xF2337340
#data 0xF252F73c
#data 0xF2636032
#data 0xF23DF240
#data 0x2169015a
#data 0x2302301c
#data 0xF256E004
#data 0xE044F376
#data 0xF231014e
#data 0xF252F273
#data 0xF240F263
#data 0x035AF23d
#data 0x313C2369
#data 0xE0080416
#data 0xF376F256
#data 0xF273F231
#data 0xF263F252
#data 0xF23DF240
#data 0x014EE048
#data 0x2369035a
#data 0x0416313c
#data 0x7001854e
#data 0x600F814e
#data 0x8B2930E3
#data 0x6343E000
#data 0xE004814e
#data 0x7340F358
#data 0xF363F352
#data 0xF33DF340
#data 0x2169015a
#data 0xF3562312
#data 0xF352E044
#data 0xF340F363
#data 0x035AF33d
#data 0x04362369
#data 0xF356E008
#data 0xF352E048
#data 0xF340F363
#data 0x035AF33d
#data 0x04362369
#data 0xE331854f
#data 0x814F7001
#data 0x3032600f
#data 0x84448B02
#data 0x80447001


loc_8C0FC144:
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0FC148:
#data 0x7FFC4F22
#data 0xE505D31b
#data 0xE6012F42
#data 0xE400430b
#data 0x8D1B2008
#data 0x901D6403
#data 0xD118E301
#data 0xD2160434
#data 0x14249019
#data 0x61436312
#data 0x713465F2
#data 0x45086332
#data 0x5231335c
#data 0x04269310
#data 0x04367048
#data 0x62F2E020
#data 0x0424D310
#data 0x025ED00e
#data 0xE00C430b

#align4
loc_8C0FC194:
#data 0x4F267F04
#data 0x0009000b
;-------------------------------------------------------------------------------
#data 0x0084012c
#data 0x00000801

#align4
loc_8C0FC1A4:
#data bank13.loc_8c13d66c

loc_8C0FC1A8:
#data bank13.loc_8c13c3F4
#data 0x43B40000
#data 0x47800000
#data 0x0000FFFf
#data 0x3F000000

#align4
loc_8C0FC1BC:
#data bank04.loc_8c044F12

loc_8C0FC1C0:
#data loc_8c0fC1D0
#data 0x8C26A930

#align4
loc_8C0FC1C8:
#data bank16.loc_8c1649E8

loc_8C0FC1CC:
#data bank12.loc_8c1294C8


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

loc_8C0FC1E6:
#data 0x854f
#data 0x6703D633
#data 0x77016503
#data 0x00096073
#data 0x0E6E4008
#data 0x00096053
#data 0x036E4008
#data 0x064CE020
#data 0x3E38D02d
#data 0x6353666c
#data 0x4E5A4608
#data 0x066E4500
#data 0x6373353c
#data 0x2F624508
#data 0x6573365c
#data 0x62F24500
#data 0xF368353c
#data 0x352C4508
#data 0xE034F258
#data 0xF231F146
#data 0xF233F32d
#data 0xF120F43c
#data 0xF417E104
#data 0xF318316c
#data 0x315CE104
#data 0xE038F218
#data 0xF231E108
#data 0x316CF346
#data 0xF320F243
#data 0xE03CF437
#data 0xE108F318
#data 0xF218315c
#data 0xF346F231
#data 0xF320F243
#data 0x854EF437
#data 0x814E7001
#data 0x30E3600f
#data 0x61438B11
#data 0xE000D310
#data 0x814E6253
#data 0x430B7134
#data 0x854FE00c
#data 0x7001E330
#data 0x600F814f
#data 0x8B023032
#data 0x70018444
#data 0x8044

loc_8C0FC29E:
#data 0xE020
#data 0x600C004c
#data 0x8B028804
#data 0x70018445
#data 0x8045

loc_8C0FC2AE:
#data 0x7F04
#data 0x000B4F26
#data 0x00006EF6

#align4
loc_8C0FC2B8:
#data bank13.loc_8c13d66c

loc_8C0FC2BC:
#data bank16.loc_8c1649E8

loc_8C0FC2C0:
#data bank12.loc_8c1294C8

loc_8C0FC2C4:
#data 0xD30F4F22
#data 0xE601E505
#data 0xE400430b
#data 0x8D0E2008
#data 0x90116403
#data 0xD10CE301
#data 0x0434D20a
#data 0x63121424
#data 0x6232900b
#data 0x92095328
#data 0x70480436
#data 0x0426

loc_8C0FC2F2:
#data 0x4F26
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0FC2F8:
rts 	
nop 	
;-------------------------------------------------------------------------------
#data 0x0084012c
#data 0x00000800

#align4
loc_8C0FC304:
#data bank04.loc_8c044F12

loc_8C0FC308:
#data loc_8c0fC2F8
#data 0x8C26A930
#data 0x7FFC4F22
#data 0xE50BD317
#data 0xE6012F42
#data 0xE400430b
#data 0x8D142008
#data 0x90226403
#data 0xD213E500
#data 0xE0200454
#data 0x043463F2
#data 0x1424D311
#data 0x62F26032
#data 0x42086002
#data 0x9015022e
#data 0x70480426
#data 0x90120456
#data 0x7F04814e
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0FC356:
mov.w @(0x1C,r4),r0 	
tst r0,r0
bt loc_8C0FC364
mov.w @(0x1C,r4),r0 	
add 0xFF,r0
rts 	
mov.w r0,@(0x1C,r4) 	
;-------------------------------------------------------------------------------

loc_8C0FC364:
mov.w @(loc_8C0FC36E,pc),r0 ; r0 set to 0x12c
mov 0x01,r3 ; r3 set to 0x01
mov.b r3,@(r0,r4) 	
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0FC36E:
#data 0x012c
#data 0x01E00084

#align4
loc_8C0FC374:
#data bank04.loc_8c044F12

loc_8C0FC378:
#data loc_8c0fC356
#data 0x8C26A934


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
;-------------------------------------------------------------------------------

loc_8C0FC3FA:
#data 0x4F22
#data 0xE50BD32b
#data 0x430BE601
#data 0x2008E400
#data 0x64038D21
#data 0xE3019044
#data 0xD227D128
#data 0x14240434
#data 0x61436312
#data 0x7134903d
#data 0x53246232
#data 0x0436D21e
#data 0x430BD323
#data 0x9036E00c
#data 0x9133E500
#data 0x60530416
#data 0x814E0009
#data 0xC71F814f
#data 0xE050F408
#data 0xE054F447
#data 0xE058F447
#data 0xF447

loc_8C0FC44E:
#data 0x4F26
#data 0x0009000b
;-------------------------------------------------------------------------------

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
#data 0x0084012c
#data 0x00CC0811

#align4
loc_8C0FC4A0:
#data bank13.loc_8c13d730

loc_8C0FC4A4:
#data 0x42700000

#align4
loc_8C0FC4A8:
#data 0x41200000

#align4
loc_8C0FC4AC:
#data bank04.loc_8c044F12

loc_8C0FC4B0:
#data loc_8c0fC454
#data 0x8C26A938

#align4
loc_8C0FC4B8:
#data bank12.loc_8c1294C8
#data 0x3DCCCCCd

#align4
loc_8C0FC4C0:
#data 0x8C26823c

#align4
loc_8C0FC4C4:
#data bank04.loc_8c0450C0

loc_8C0FC4C8:
#data 0x934E85Ef
#data 0x81EF7014
#data 0x303385Ef
#data 0xE0008B01
#data 0x81Ef

loc_8C0FC4DA:
#data 0xD325
#data 0x64329046
#data 0x6242D124
#data 0x410B05Ee
#data 0xC7275425
#data 0xFC08DC29
#data 0xFD08C726
#data 0xD921C726
#data 0xD81FED00
#data 0xDA20DB21
#data 0xFE08A021

#align4
loc_8C0FC504:
#data 0x64F34B0b
#data 0xFFF6E004
#data 0xF3F2F3Fc
#data 0x85EFFF3b
#data 0x34DC6403
#data 0xF22D445a
#data 0xF1C2F12c
#data 0xF21CF1D3
#data 0xF23DF2E0
#data 0x4A0B045a
#data 0xF3F924C9
#data 0x7D14C719
#data 0xF008F302
#data 0xF2F6E008
#data 0xF23EE008
#data 0x490BFF27
#data 0x64F3

loc_8C0FC546:
#data 0x480b
#data 0x20080009
#data 0x89Da


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
;-------------------------------------------------------------------------------
#data 0x0168
#data 0x00000084
#data 0x8C26A938

#align4
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
#data 0x47800000
#data 0x43B40000
#data 0x3F000000
#data 0x0000FFFf
#data 0x3CA3D70a


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
;-------------------------------------------------------------------------------

#align4
loc_8C0FC628:
#data bank13.loc_8c13d748

loc_8C0FC62C:
#data 0x42B40000

#align4
loc_8C0FC630:
#data 0x41200000


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
;-------------------------------------------------------------------------------

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

loc_8C0FC766:
#data 0x012c

loc_8C0FC768:
#data 0x0084

loc_8C0FC76A:
#data 0x0813

loc_8C0FC76C:
#data 0x00Cc
#data 0x0000

#align4
loc_8C0FC770:
#data bank04.loc_8c044F12

loc_8C0FC774:
#data loc_8c0fC72c

loc_8C0FC778:
#data bank13.loc_8c13d8B0

loc_8C0FC77C:
#data 0x8C26A938

#align4
loc_8C0FC780:
#data bank13.loc_8c13d748

loc_8C0FC784:
#data bank12.loc_8c1294C8

loc_8C0FC788:
#data 0x43B40000

#align4
loc_8C0FC78C:
#data 0x3F000000

#align4
loc_8C0FC790:
#data 0x0000FFFf

#align4
loc_8C0FC794:
#data 0x47800000

#align4
loc_8C0FC798:
#data bank13.loc_8c13d898

loc_8C0FC79C:
#data 0x3DCCCCCd

#align4
loc_8C0FC7A0:
#data bank10.loc_8c108210

loc_8C0FC7A4:
#data 0x8C26823c

#align4
loc_8C0FC7A8:
#data bank04.loc_8c0450C0

loc_8C0FC7AC:
#data 0x02ECE020
#data 0x622CE301
#data 0x89323237
#data 0x933985Ef
#data 0x81EF7001
#data 0x303385Ef
#data 0xE0008B01
#data 0x81Ef

loc_8C0FC7CA:
#data 0x9032
#data 0x05EED319
#data 0x02ECE022
#data 0x622C6432
#data 0x42086442
#data 0xD216342c
#data 0x5441420b
#data 0xDD17C718
#data 0xDB14FE08
#data 0xA012DC14
#data 0xFF9d

loc_8C0FC7F2:
#data 0x64F3
#data 0x4D0B65F3
#data 0x85EF7404
#data 0xF2F864F3
#data 0x630365F3
#data 0xF32D435a
#data 0xF34DF3E2
#data 0xF230F3F0
#data 0x4C0BFF2a
#data 0x7404

loc_8C0FC816:
#data 0x4B0b
#data 0x20080009
#data 0x89E9


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
;-------------------------------------------------------------------------------
#data 0x008400C8
#data 0x8C26A938

#align4
loc_8C0FC838:
#data bank10.loc_8c108060

loc_8C0FC83C:
#data bank10.loc_8c108086

loc_8C0FC840:
#data bank10.loc_8c1081E6

loc_8C0FC844:
#data bank10.loc_8c108192
#data 0x3BA3D70a

#align4
loc_8C0FC84C:
#data 0xD657C758
#data 0x854EF408
#data 0x760C6563
#data 0x6303F558
#data 0xF368435a
#data 0xF22DE034
#data 0xF322F351
#data 0xF343F25c
#data 0xF427F230
#data 0xF366E004
#data 0x854EF556
#data 0x6303F351
#data 0xE038435a
#data 0xF322F22d
#data 0xF343F25c
#data 0xF427F230
#data 0xF366E008
#data 0x854EF556
#data 0x6303F351
#data 0xE03C435a
#data 0xF322F22d
#data 0xF343F25c
#data 0x000BF230
#data 0xF427
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

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

#align4
loc_8C0FC970:
#data 0x6E432FE6
#data 0x85EE4F22
#data 0x81EE7001
#data 0x64E3BF66
#data 0x881E85Ee
#data 0x84E48B0a
#data 0xD21761E3
#data 0x70017134
#data 0x80E4D30b
#data 0x81EEE000
#data 0xE00C430b

#align4
loc_8C0FC99C:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0FC9A2:
#data 0x012c

loc_8C0FC9A4:
#data 0x0084

loc_8C0FC9A6:
#data 0x080f

loc_8C0FC9A8:
#data 0x00Cc
#data 0x0000

#align4
loc_8C0FC9AC:
#data bank13.loc_8c13d8C0
#data 0x41F00000

#align4
loc_8C0FC9B4:
#data bank04.loc_8c044F12

loc_8C0FC9B8:
#data loc_8c0fC94a

loc_8C0FC9BC:
#data 0x8C26A938

#align4
loc_8C0FC9C0:
#data bank12.loc_8c1294C8

loc_8C0FC9C4:
#data 0x47800000

#align4
loc_8C0FC9C8:
#data 0x43B40000

#align4
loc_8C0FC9CC:
#data 0x3F000000

#align4
loc_8C0FC9D0:
#data 0x0000FFFf

#align4
loc_8C0FC9D4:
#data bank13.loc_8c13d8D8

loc_8C0FC9D8:
#data bank10.loc_8c108210

loc_8C0FC9DC:
#data 0x8C26823c

#align4
loc_8C0FC9E0:
#data bank04.loc_8c0450C0

loc_8C0FC9E4:
#data bank16.loc_8c164A04

loc_8C0FC9E8:
#data bank13.loc_8c13d8Cc

loc_8C0FC9EC:
#data 0x854E4F22
#data 0x814E7001
#data 0xF408C730
#data 0xC801854e
#data 0xC72F8901
#data 0xF408

loc_8C0FCA02:
#data 0xD52f
#data 0xF356E010
#data 0xF340E038
#data 0x854EF437
#data 0x8B0B8814
#data 0x61438444
#data 0xD32A6253
#data 0x80447001
#data 0x720CE000
#data 0x7134814e
#data 0xE00C430b

#align4
loc_8C0FCA2C:
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0FCA32:
#data 0x2FE6
#data 0x2FC62FD6
#data 0xFFFB2FB6
#data 0x4F22FFEb
#data 0x6E437FF8
#data 0x933485Ef
#data 0x81EF7001
#data 0x303385Ef
#data 0xE0008B01
#data 0x81Ef

loc_8C0FCA56:
#data 0xD31c
#data 0x6432902c
#data 0x6242D11b
#data 0x410B05Ee
#data 0xC71D5427
#data 0xFE08DD1b
#data 0xDC19DB18
#data 0xFF9DA012

#align4
loc_8C0FCA74:
#data 0x750465F3
#data 0x64F34D0b
#data 0x65F385Ef
#data 0x7504F2F8
#data 0x435A6303
#data 0xF3E2F32d
#data 0xF3F0F34d
#data 0xFF2AF230
#data 0x64F34B0b

#align4
loc_8C0FCA98:
#data 0x00094C0b
#data 0x89E92008
#data 0x4F267F08
#data 0xFFF9FEF9
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00C86EF6
#data 0x00000084
#data 0x3D4CCCCd
#data 0xBD4CCCCd

#align4
loc_8C0FCAC0:
#data bank13.loc_8c13d8C0

loc_8C0FCAC4:
#data bank12.loc_8c1294C8
#data 0x8C26A938

#align4
loc_8C0FCACC:
#data bank10.loc_8c108060

loc_8C0FCAD0:
#data bank10.loc_8c1081E6

loc_8C0FCAD4:
#data bank10.loc_8c108086

loc_8C0FCAD8:
#data bank10.loc_8c108192
#data 0x3BA3D70a

#align4
loc_8C0FCAE0:
#data 0xD659C75a
#data 0x854EF408
#data 0x760C6563
#data 0x6303F558
#data 0xF368435a
#data 0xF22DE034
#data 0xF322F351
#data 0xF343F25c
#data 0xF427F230
#data 0xF366E004
#data 0x854EF556
#data 0x6303F351
#data 0xE038435a
#data 0xF322F22d
#data 0xF343F25c
#data 0xF427F230
#data 0xF366E008
#data 0x854EF556
#data 0x6303F351
#data 0xE03C435a
#data 0xF322F22d
#data 0xF343F25c
#data 0x000BF230
#data 0xF427
;-------------------------------------------------------------------------------

loc_8C0FCB3E:
#data 0x6343
#data 0x2F46D143
#data 0x600C8435
#data 0x031E4008
#data 0x7F04432b


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

loc_8C0FCB76:
#data 0x8566
#data 0x350C4008
#data 0xE00a


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

#align4
loc_8C0FCC48:
#data bank13.loc_8c13d8F0
#data 0x41A00000

#align4
loc_8C0FCC50:
#data bank16.loc_8c164A10

loc_8C0FCC54:
#data bank13.loc_8c13d914

loc_8C0FCC58:
#data 0x8C26823c

#align4
loc_8C0FCC5C:
#data 0x47800000

#align4
loc_8C0FCC60:
#data 0x43B40000

#align4
loc_8C0FCC64:
#data 0x3F000000

#align4
loc_8C0FCC68:
#data 0x0000FFFf

#align4
loc_8C0FCC6C:
#data 0xC0000000

#align4
loc_8C0FCC70:
#data 0x02EE9068
#data 0x8B012228
#data 0x64E3B182


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
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------
#data 0x00D4

loc_8C0FCD46:
#data 0x012c

loc_8C0FCD48:
#data 0x0084

loc_8C0FCD4A:
#data 0x080f

loc_8C0FCD4C:
#data 0x00Cc
#data 0x0000

#align4
loc_8C0FCD50:
#data 0x0000FFFf

#align4
loc_8C0FCD54:
#data bank04.loc_8c044F12

loc_8C0FCD58:
#data loc_8c0fD2Ac

loc_8C0FCD5C:
#data 0x8C26A938

#align4
loc_8C0FCD60:
#data bank13.loc_8c13d8F0

loc_8C0FCD64:
#data bank12.loc_8c1294C8

loc_8C0FCD68:
#data bank13.loc_8c13d908

loc_8C0FCD6C:
#data 0x47800000

#align4
loc_8C0FCD70:
#data 0x43B40000

#align4
loc_8C0FCD74:
#data 0x3F000000

#align4
loc_8C0FCD78:
#data bank13.loc_8c13d938

loc_8C0FCD7C:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0xFFFB2F86
#data 0xFFDBFFEb
#data 0x4F22FFCb
#data 0xC7437FF8
#data 0xDD41D340
#data 0xDE44EB00
#data 0x98766CB3
#data 0x2F42EA01
#data 0x1F31E902
#data 0xC73EFD08
#data 0xC73EFE08
#data 0xFC9DFF08

#align4
loc_8C0FCDB8:
#data 0xE50BD33e
#data 0x430BE601
#data 0x2008E400
#data 0x64038D4e
#data 0xE02363F2
#data 0x1436D13b
#data 0x04C4D339
#data 0x04A4905e
#data 0x62121434
#data 0x905A6143
#data 0x63227134
#data 0x04365338
#data 0x52F1D335
#data 0xE00C430b
#data 0xE004F3D8
#data 0x71406143
#data 0xF3E3F3D2
#data 0xF33DF3F0
#data 0x23E9035a
#data 0xF3D62132
#data 0xF3D2E044
#data 0xF3F0F3E3
#data 0x035AF33d
#data 0x043623E9
#data 0xF3D6E008
#data 0xF3D2E048
#data 0xF3F0F3E3
#data 0x035AF33d
#data 0x043623E9
#data 0x04869034
#data 0x000960B3
#data 0xE023814e
#data 0xC722034c
#data 0x6243F208
#data 0x6143633c
#data 0x435A7301
#data 0xD31DE074
#data 0x71507234
#data 0xF322F32d
#data 0xF3C0F34d
#data 0x430BF437
#data 0x7C01E00c
#data 0x8BA93C93

#align4
loc_8C0FCE64:
#data 0x4F267F08
#data 0xFDF9FCF9
#data 0xFFF9FEF9
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

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
#data 0x082f
#data 0x0084012c
#data 0x000000Cc

#align4
loc_8C0FCE9C:
#data bank13.loc_8c13d8F0

loc_8C0FCEA0:
#data bank13.loc_8c13d908
#data 0x47800000
#data 0x43B40000
#data 0x3F000000
#data 0x0000FFFf

#align4
loc_8C0FCEB4:
#data bank04.loc_8c044F12

loc_8C0FCEB8:
#data loc_8c0fCE80
#data 0x8C26A938

#align4
loc_8C0FCEC0:
#data bank12.loc_8c1294C8
#data 0x3E4CCCCd

#align4
loc_8C0FCEC8:
#data 0x8C26823c

#align4
loc_8C0FCECC:
#data bank04.loc_8c0450C0


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
;-------------------------------------------------------------------------------

loc_8C0FCF6A:
#data 0x012c

#align4
loc_8C0FCF6C:
#data bank12.loc_8c1294C8

loc_8C0FCF70:
#data 0x47800000

#align4
loc_8C0FCF74:
#data 0x43B40000

#align4
loc_8C0FCF78:
#data 0x3F000000

#align4
loc_8C0FCF7C:
#data 0x0000FFFf

#align4
loc_8C0FCF80:
#data 0x7FFC4F22
#data 0xE50BD33e
#data 0xE6012F42
#data 0xE400430b
#data 0x8D512008
#data 0x63F26403
#data 0xD13BE701
#data 0xD3391436
#data 0x04749069
#data 0x62121434
#data 0x90656143
#data 0x63227134
#data 0x5339D236
#data 0xD3360436
#data 0xE00C430b
#data 0xC735D539
#data 0xC735F608
#data 0x6343F358
#data 0xC734F508
#data 0xF408F362
#data 0xD633E004
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
#data 0xF33D913b
#data 0x2369035a
#data 0x90370436
#data 0xC7260416
#data 0xE050F408
#data 0xE054F447
#data 0xE058F447
#data 0xE05CF447
#data 0xF49DF358
#data 0x7078F437
#data 0x03765346
#data 0xF447E078
#data 0xF447E07c
#data 0xF4477004

#align4
loc_8C0FD038:
#data 0x4F267F04
#data 0x0009000b
;-------------------------------------------------------------------------------

#align4
loc_8C0FD040:
#data 0x2FE6D31a
#data 0x84026032
#data 0x8F088803
#data 0x53E66E43
#data 0x2008853e
#data 0x90128907
#data 0x52E6E300
#data 0x0236

loc_8C0FD05E:
#data 0xD314
#data 0x432B64E3
#data 0x6EF6

loc_8C0FD066:
#data 0x84E4
#data 0xD11264E3
#data 0x4008600c
#data 0x432B031e
#data 0x012C6EF6
#data 0x0C1F0084
#data 0x00D400Cc

#align4
loc_8C0FD080:
#data bank04.loc_8c044F12

loc_8C0FD084:
#data loc_8c0fD040
#data 0x8C26A938

#align4
loc_8C0FD08C:
#data bank13.loc_8c13d93c

loc_8C0FD090:
#data bank12.loc_8c1294C8
#data 0x47800000
#data 0x43B40000
#data 0x3F000000
#data 0x0000FFFf

#align4
loc_8C0FD0A4:
#data bank13.loc_8c13d948
#data 0x3F19999a
#data 0x8C26823c

#align4
loc_8C0FD0B0:
#data bank04.loc_8c0450C0

loc_8C0FD0B4:
#data bank16.loc_8c164A18


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
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

loc_8C0FD214:
#data 0x012c

loc_8C0FD216:
#data 0x0E39

#align4
loc_8C0FD218:
#data bank13.loc_8c13d948

loc_8C0FD21C:
#data 0x3F000000

#align4
loc_8C0FD220:
#data 0x47800000

#align4
loc_8C0FD224:
#data 0x43B40000

#align4
loc_8C0FD228:
#data 0x0000FFFf

#align4
loc_8C0FD22C:
#data 0x8C26823c

#align4
loc_8C0FD230:
#data bank13.loc_8c13d958

loc_8C0FD234:
#data bank12.loc_8c129128

loc_8C0FD238:
#data 0x3F333333

#align4
loc_8C0FD23C:
#data 0x2008854f
#data 0x854F8932
#data 0x314CE16c
#data 0x814F70Ff
#data 0xF246E050
#data 0xE16CF318
#data 0xF230314c
#data 0xE054F427
#data 0xF318F246
#data 0x314CE16c
#data 0xF427F230
#data 0xF246E058
#data 0xE170F318
#data 0xF230314c
#data 0xE078F427
#data 0xF318F246
#data 0xF427F231
#data 0xE170E07c
#data 0x314CF246
#data 0xF3186343
#data 0x314CE170
#data 0xF2319271
#data 0xF4277340
#data 0xF2467004
#data 0xF231F318
#data 0x6132F427
#data 0x2312312c

#align4
loc_8C0FD2A8:
#data 0x0009000b
;-------------------------------------------------------------------------------

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
#data 0x2FE6
#data 0x4F226E43
#data 0x700185Ee
#data 0xBBFF81Ee
#data 0x85EE64E3
#data 0x8B128814
#data 0x61E384E4
#data 0x7134D226
#data 0xD3267001
#data 0xE00080E4
#data 0x430B81Ee
#data 0xD01FE00c
#data 0x85166102
#data 0x31EC9138
#data 0xE0012102
#data 0x80E6

loc_8C0FD30E:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0FD314:
#data 0x6E432FE6
#data 0xDD182FD6
#data 0x63D24F22
#data 0x93298536
#data 0x633233Ec
#data 0x89193300
#data 0x6043E400
#data 0x80E50009
#data 0x853663D2
#data 0x33EC931e
#data 0x33076332
#data 0x60438B05
#data 0xD3120009
#data 0x430B80E6
#data 0xE43f

loc_8C0FD34E:
#data 0x9313
#data 0x33EC62D2
#data 0x85266332
#data 0x89013303
#data 0x80E6E001

#align4
loc_8C0FD360:
#data 0x64E3BBEd
#data 0x910762D2
#data 0x31EC8526
#data 0x4F262102
#data 0x000B6DF6
#data 0x0E396EF6
#data 0x000000D8

#align4
loc_8C0FD37C:
#data 0x8C26823c

#align4
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

#align4
loc_8C0FD3C8:
#data 0xD239D338
#data 0x61226032
#data 0x854E6302
#data 0x001E4008
#data 0x013E4008
#data 0x0416905d


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
;-------------------------------------------------------------------------------

loc_8C0FD3FE:
#data 0x2FE6
#data 0x4F22FFCb
#data 0xD32B7FF0
#data 0x1F512F42
#data 0x1F63E505
#data 0x430BE601
#data 0x2008E400
#data 0x6E038F02
#data 0x0009A090

#align4
loc_8C0FD420:
#data 0xE301903c
#data 0x61E3D224
#data 0x70A00E34
#data 0x71349337
#data 0x0E361E24
#data 0x62F2D321
#data 0xE00C430b
#data 0x51F1E23c
#data 0x4108D31f
#data 0xD322313c
#data 0x50F31F12
#data 0x0027FC18
#data 0xD220C71c
#data 0xC71CF208
#data 0xC71CF108
#data 0xF008041a
#data 0xF32D445a
#data 0xF313F322
#data 0xF33DF300
#data 0x2439045a
#data 0x2F42420b
#data 0xE05CFC02
#data 0x53F2FEC7
#data 0xD316FC38
#data 0x64F2430b
#data 0xD315FC02
#data 0x430BE064
#data 0x9307FEC7
#data 0x8F254011
#data 0xA028E148
#data 0x00842039
#data 0x0119012c
#data 0x00003FFf

#align4
loc_8C0FD4A4:
#data bank16.loc_8c164AA8

loc_8C0FD4A8:
#data bank04.loc_8c0450C0
#data 0x8C26A908

#align4
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
#data 0x47800000
#data 0x43B40000
#data 0x3F000000
#data 0x0000FFFf

#align4
loc_8C0FD4D4:
#data bank11.loc_8c11E860

loc_8C0FD4D8:
#data bank11.loc_8c11E2E0

loc_8C0FD4DC:
#data bank11.loc_8c11e730

loc_8C0FD4E0:
#data 0x70016007
#data 0x60072039
#data 0x7001

loc_8C0FD4EA:
#data 0x31Ec
#data 0x61E32102
#data 0x715052F1
#data 0x42006323
#data 0xD334323c
#data 0x323C4208
#data 0x430BD333
#data 0xC733E00c
#data 0xF408D333
#data 0xF3E6E050
#data 0xF342D232
#data 0xE054FE37
#data 0xF39DF2E6
#data 0xFE27F242
#data 0xF2E6E058
#data 0xFE27F232
#data 0x61226032
#data 0x85EE6302
#data 0x001E4008
#data 0x013E4008
#data 0x0E169047
#data 0x81EFE000

#align4
loc_8C0FD540:
#data 0x4F267F10
#data 0x000BFCF9
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0FD54A:
#data 0x2FE6
#data 0x2FC62FD6
#data 0x7FFC4F22
#data 0x6D5EE302
#data 0x8D093D37
#data 0xEE002F42
#data 0xEC06

loc_8C0FD562:
#data 0x65D3
#data 0xBF4A66E3
#data 0x7E0164F2
#data 0x8BF83EC3

#align4
loc_8C0FD570:
#data 0x4F267F04
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

loc_8C0FD5CA:
#data 0x0084

#align4
loc_8C0FD5CC:
#data bank16.loc_8c164AD0

loc_8C0FD5D0:
#data bank12.loc_8c1294C8
#data 0x42480000

#align4
loc_8C0FD5D8:
#data 0x8C26A908

#align4
loc_8C0FD5DC:
#data bank16.loc_8c164A98

loc_8C0FD5E0:
#data bank16.loc_8c164AA8

loc_8C0FD5E4:
#data bank04.loc_8c0450C0

loc_8C0FD5E8:
#data 0xFFCB2FE6
#data 0x7FF04F22
#data 0x2F42D34a
#data 0xE5071F51
#data 0xE6011F62
#data 0xE400430b
#data 0x8D502008
#data 0x90856E03
#data 0xD245E301
#data 0x0E3461E3
#data 0x938070A0
#data 0x1E247134
#data 0xD3420E36
#data 0x430B62F2
#data 0xE23CE00c
#data 0xD34051F1
#data 0x313C4108
#data 0x1F13D342
#data 0xFC1850F2
#data 0xC73D0027
#data 0xF208D240
#data 0xF108C73c
#data 0x041AC73c
#data 0x445AF008
#data 0xF322F32d
#data 0xF300F313
#data 0x045AF33d
#data 0x420B2439
#data 0xFC022F42
#data 0xFEC7E05c
#data 0xFC3853F3
#data 0x430BD336
#data 0xFC0264F2
#data 0xE064D335
#data 0xFEC7430b
#data 0x40119350
#data 0xE1488F02
#data 0x2039A005

#align4
loc_8C0FD680:
#data 0x70016007
#data 0x60072039
#data 0x7001

loc_8C0FD68A:
#data 0x31Ec
#data 0x61E32102
#data 0x715052F1
#data 0x42006323
#data 0xD32B323c
#data 0x323C4208
#data 0x430BD320
#data 0xE00c

loc_8C0FD6A6:
#data 0x7F10
#data 0xFCF94F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0FD6B0:
#data 0x2FD62FE6
#data 0x4F222FC6
#data 0xE3027FFc
#data 0x3D376D5e
#data 0x2F428D09
#data 0xEC06EE00

#align4
loc_8C0FD6C8:
#data 0x66E365D3
#data 0x64F2BF8c
#data 0x3EC37E01
#data 0x8BF8

loc_8C0FD6D6:
#data 0x7F04
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------
#data 0x0109012c
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
#data 0x47800000
#data 0x43B40000
#data 0x3F000000
#data 0x0000FFFf

#align4
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

#align4
loc_8C0FD750:
#data bank16.loc_8c164A98

loc_8C0FD754:
#data bank16.loc_8c164AA8

loc_8C0FD758:
#data bank04.loc_8c0450C0


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

loc_8C0FD7BA:
#data 0x62F0
#data 0x632B622c

#align4
loc_8C0FD7C0:
#data 0xE038435a
#data 0xF2886203
#data 0xF32D324c
#data 0xF82AF230
#data 0xF22884Fc
#data 0x633C6303
#data 0xE004435a
#data 0xF230F32d
#data 0xF3F6F22a
#data 0xF437E050
#data 0xF3F6E008
#data 0xF437E054
#data 0xF447E058


loc_8C0FD7F4:
add 0x10,r15
lds.l @r15+,pr 	
mov.l @r15+,r8
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x2FE6
#data 0x4F222FD6
#data 0xE0047FF8
#data 0xD3206D53
#data 0xE507E601
#data 0xFF476E43
#data 0x430BFF5a
#data 0x2008E400
#data 0x64038D2e
#data 0xE3019031
#data 0x0434F48d
#data 0x70A0E311
#data 0x1424D218
#data 0x0436E234
#data 0xF3E6E034
#data 0xE038F437
#data 0xF437F3E6
#data 0xF447E03c
#data 0x03ED9020
#data 0x8D022338
#data 0xA002324c
#data 0xF3D8F3D8
#data 0xF228F34d
#data 0x31DCE104
#data 0xE038F230
#data 0xF246F22a
#data 0xF230F318
#data 0xE004F427
#data 0xE050F3F6
#data 0xE054F437
#data 0xF437F3F8
#data 0xF447E058
#data 0x4F267F08
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0FD886:
#data 0x012c

loc_8C0FD888:
#data 0x0130
#data 0x0000

#align4
loc_8C0FD88C:
#data bank04.loc_8c044F12

loc_8C0FD890:
#data loc_8c0fD6E2


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

loc_8C0FD8DC:
#data 0xE320

loc_8C0FD8DE:
#data 0x435a
#data 0x9011F218
#data 0xF59DF32d
#data 0xF12AF230
#data 0xE038F3E6
#data 0xE050F437
#data 0xE054F457
#data 0xE058F457
#data 0xF447


loc_8C0FD8FE:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0FD904:
#data 0x012c

loc_8C0FD906:
#data 0x0130
#data 0x0000041c

#align4
loc_8C0FD90C:
#data bank04.loc_8c044F12

loc_8C0FD910:
#data loc_8c0fD6E2

loc_8C0FD914:
#data 0x67507FF4
#data 0x677CE004
#data 0x47004708
#data 0x6373374c
#data 0x1F317308
#data 0x6232646f
#data 0x63721F22
#data 0x2F323238
#data 0x425A53F1
#data 0xF4366243
#data 0xF32D63F2
#data 0x3238F576
#data 0xF451425a
#data 0xF63C52F2
#data 0x3423F32d
#data 0xF45CF342
#data 0x8F03F363
#data 0x6250F430
#data 0x25207201

#align4
loc_8C0FD960:
#data 0x000BF04c
#data 0x7F0c
;-------------------------------------------------------------------------------

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
braf r0
nop 	

#align4
loc_8C0FD994:
#data 0x8C289650

#align4
loc_8C0FD998:
#data 0x00320026
#data 0x004E0040
#data 0x005C005c
#data 0x0070005c
#data 0x0080004e
#data 0x00800080
#data 0x00800080
#data 0x00800080
#data 0x67C30080
#data 0xB0F52FD6
#data 0xA02C66E3
#data 0xD3190009
#data 0x2FD667C3
#data 0x66E3430b
#data 0x0009A025
#data 0x67C3D315
#data 0x430B2FD6
#data 0xA01E66E3
#data 0xD3130009
#data 0x2FD667Cc
#data 0x66E3430b
#data 0x0009A017
#data 0x3637E303
#data 0xD30F8914
#data 0x2FD667C3
#data 0x66E3430b
#data 0x0009A00d
#data 0xD30C4F26
#data 0x65E3E608
#data 0x6DF66CF6
#data 0x6EF6432b
#data 0x67C3D309
#data 0x430B2FD6
#data 0x7F0466E3


loc_8C0FDA20:
lds.l @r15+,pr 	
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x0000

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
#data 0xEE092FE6
#data 0x4F222FD6
#data 0x6063DD05
#data 0xE1110009
#data 0x892C3012
#data 0x61034000
#data 0x001DC702
#data 0x00090023

#align4
loc_8C0FDA60:
#data loc_8c0fEF5c
#data 0x002E0026
#data 0x003E0036
#data 0x00460046
#data 0x00460046
#data 0x0046003e
#data 0x00460046
#data 0x00460046
#data 0x00460046
#data 0xB0910046
#data 0xA00F2FE6
#data 0x4D0B0009
#data 0xA00B2FE6
#data 0x4D0B0009
#data 0xA0072FE6
#data 0x4D0B0009
#data 0xA0032FE6
#data 0xD2400009
#data 0x2FE6420b
#data 0x4F267F04
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------
#data 0x2FE6
#data 0x7FF44F22
#data 0x6E43904c
#data 0x233803Ed
#data 0xE0348904
#data 0xF2E6F358
#data 0xF231A004
#data 0xF358E034
#data 0xF230F2E6
#data 0xFF2AE004
#data 0xE038F356
#data 0xE004F2E6
#data 0xF230E700
#data 0xE03CFF27
#data 0xE008F3E6
#data 0x9031FF37
#data 0xBF7D05Ed
#data 0x7F0C64F3
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

loc_8C0FDBA4:
#data 0x0130

loc_8C0FDBA6:
#data 0x01C8

#align4
loc_8C0FDBA8:
#data bank10.loc_8c10766c
#data 0x2FD62FE6
#data 0x7FF44F22
#data 0x1F612F42
#data 0x00096073
#data 0xE01880F8
#data 0xE6010DFc
#data 0x65D3D347
#data 0xE400430b
#data 0x8D282008
#data 0xD3456E03
#data 0x907E61E3
#data 0x62307134
#data 0x23207201
#data 0xD242E300
#data 0x1E240E34
#data 0x62F2D341
#data 0xE00C430b
#data 0x65D39073
#data 0x0E169170
#data 0x64E3B02b
#data 0xB08165D3
#data 0x65D364E3
#data 0x64E3B0C0
#data 0xB14765D3
#data 0x84F864E3
#data 0x55F167D3
#data 0x660364F2
#data 0x4F267F0c
#data 0xA1C86DF6
#data 0x7F0C6EF6
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

loc_8C0FDC48:
add 0x01,r0
mov.w r0,@(0x1C,r4) 	
lds.l @r15+,pr 	
rts 	
nop 	
;-------------------------------------------------------------------------------
#data 0x4F22
#data 0xD3237FFc
#data 0x2F42E601
#data 0xE400430b
#data 0x8D142008
#data 0x90366403
#data 0xD124E301
#data 0x0434D222
#data 0x1424701c
#data 0x62326312
#data 0x902F032e
#data 0x0436922f
#data 0x04267048
#data 0x63F2922c
#data 0x323C902b
#data 0x7F040426
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------
#data 0x012c
#data 0x00CC0181
#data 0x04000084
#data 0x00C80088

#align4
loc_8C0FDCE4:
#data bank04.loc_8c044F12

loc_8C0FDCE8:
#data 0x8C289650

#align4
loc_8C0FDCEC:
#data loc_8c0fDC2c

loc_8C0FDCF0:
#data bank12.loc_8c1294C8

loc_8C0FDCF4:
#data bank04.loc_8c0450C0

loc_8C0FDCF8:
#data loc_8c0fDC96
#data 0x8C26A908

#align4
loc_8C0FDD00:
#data bank16.loc_8c164B0c
#data 0x7FFC4F22
#data 0xE601D33e
#data 0x430B2F42
#data 0x2008E400
#data 0x64038D14
#data 0xE301906c
#data 0xD23AD13b
#data 0x70200434
#data 0x63121424
#data 0x032E6232
#data 0x92639063
#data 0x70480436
#data 0x92600426
#data 0x905F63F2
#data 0x0426323c
#data 0x4F267F04
#data 0x0009000b
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------
#data 0x7FFC4F22
#data 0xE601D31d
#data 0x430B2F42
#data 0x2008E400
#data 0x64038D1a
#data 0xE301902a
#data 0xD21DD11a
#data 0x70240434
#data 0x63121424
#data 0x71506143
#data 0x032E6232
#data 0xD219901f
#data 0xD3190436
#data 0xE00C430b
#data 0x911C901e
#data 0x91180416
#data 0x901763F2
#data 0x0416313c
#data 0x4F267F04
#data 0x0009000b
;-------------------------------------------------------------------------------

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
#data 0x0084012c
#data 0x00880400
#data 0x041200C8
#data 0x000000Cc

#align4
loc_8C0FDE04:
#data bank04.loc_8c044F12

loc_8C0FDE08:
#data loc_8c0fDD48
#data 0x8C26A908

#align4
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
;-------------------------------------------------------------------------------
#data 0x4F222FE6
#data 0xD32E7FFc
#data 0x2F42E601
#data 0xE400430b
#data 0x8D242008
#data 0x903E6E03
#data 0xD22AE300
#data 0xD32A0E34
#data 0x1E24430b
#data 0x6103D329
#data 0xE05A430b
#data 0xC71F405a
#data 0xC71FF208
#data 0xC71FF108
#data 0xF008F32d
#data 0xE048D21e
#data 0xF322912a
#data 0xF300F313
#data 0x035AF33d
#data 0x0E362329
#data 0x0E169023
#data 0x63F29122
#data 0x313C9021
#data 0x7F040E16
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

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

loc_8C0FDF32:
#data 0x012c
#data 0x00CC0408
#data 0x00C80088

#align4
loc_8C0FDF3C:
#data bank16.loc_8c164B34

loc_8C0FDF40:
#data bank16.loc_8c164B4c

loc_8C0FDF44:
#data bank16.loc_8c164B64

loc_8C0FDF48:
#data 0x47800000

#align4
loc_8C0FDF4C:
#data 0x43B40000

#align4
loc_8C0FDF50:
#data 0x3F000000

#align4
loc_8C0FDF54:
#data 0x0000FFFf

#align4
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


loc_8C0FDF6C:
mov.w @(0x1C,r4),r0 	
mov 0x05,r3 ; r3 set to 0x05
cmp/gt r3,r0
bf loc_8C0FDF7a
mov.l @(loc_8C0FE018,pc),r2 ; r2 set to 0x8C0450C0
jmp @r2
nop 	

loc_8C0FDF7A:
#data 0x854e
#data 0xD328D127
#data 0x021E4008
#data 0x42086032
#data 0x022E6002
#data 0x04269042
#data 0xD224854e
#data 0xF3264008
#data 0xF437E078
#data 0xF437E07c
#data 0xF346E078
#data 0xF4377008
#data 0x7001854e
#data 0x814e


loc_8C0FDFAE:
rts 	
nop 	
;-------------------------------------------------------------------------------

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

loc_8C0FDFF2:
#data 0xC710
#data 0xFF08


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
;-------------------------------------------------------------------------------
#data 0x00000084

#align4
loc_8C0FE018:
#data bank04.loc_8c0450C0

loc_8C0FE01C:
#data bank16.loc_8c164B84
#data 0x8C26A908

#align4
loc_8C0FE024:
#data bank16.loc_8c164B9c

loc_8C0FE028:
#data 0x41200000

#align4
loc_8C0FE02C:
#data 0x41A00000

#align4
loc_8C0FE030:
#data 0x41F00000
#data 0x42200000

#align4
loc_8C0FE038:
#data 0x2FD62FE6
#data 0xFFFB2F86
#data 0xFFDBFFEb
#data 0x4F22FFCb
#data 0xFE4C7FF4
#data 0x60531F41
#data 0xD34C0009
#data 0x2F6080F8
#data 0x65F0E601
#data 0xE400430b
#data 0x8D672008
#data 0x908B6E03
#data 0xD247E301
#data 0xD3470E34
#data 0xD2471E24
#data 0x420B6032
#data 0xD3466802
#data 0x430B6103
#data 0x7060E003
#data 0x400861E3
#data 0x7134038e
#data 0x0E369079
#data 0x52F1D341
#data 0xE00C430b
#data 0xDD41C740
#data 0xC741FD08
#data 0xFF084D0b
#data 0xD24384F8
#data 0x633C6303
#data 0xC73E435a
#data 0xC73EF208
#data 0xF32DF108
#data 0xFC0CD33d
#data 0xF313F322
#data 0xF33DF3F0
#data 0x2439045a
#data 0x2F42420b
#data 0xE05CF30c
#data 0xFC3EF0Fc
#data 0xFCD0F3Ec
#data 0x4D0BF3C2
#data 0xD336FE37
#data 0x430BFC0c
#data 0xF30C64F2
#data 0xF0FCE060
#data 0xF3ECFC3e
#data 0xF3C2FCD0
#data 0xFE374D0b
#data 0xE064FE02
#data 0xFEF2E321
#data 0xC72EFEE7
#data 0xE05CF408
#data 0xE068F3E6
#data 0xF343F34d
#data 0xE060FE37
#data 0xE06CF3E6
#data 0xF343F34d
#data 0xE064FE37
#data 0xE070F3E6
#data 0xF343F34d
#data 0xE074FE37
#data 0xFE37F39d
#data 0x0E367058

#align4
loc_8C0FE134:
#data 0x4F267F0c
#data 0xFDF9FCF9
#data 0xFFF9FEF9
#data 0x6DF668F6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------
#data 0x0084012c

#align4
loc_8C0FE184:
#data bank04.loc_8c044F12

loc_8C0FE188:
#data loc_8c0fE148
#data 0x8C26A908

#align4
loc_8C0FE190:
#data bank11.loc_8c11e730

loc_8C0FE194:
#data bank12.loc_8c1292D4

loc_8C0FE198:
#data bank12.loc_8c1294C8
#data 0xBF000000

#align4
loc_8C0FE1A0:
#data bank11.loc_8c11E750
#data 0x3F000000
#data 0x49340000
#data 0x43B40000
#data 0x0000FFFf

#align4
loc_8C0FE1B4:
#data bank11.loc_8c11E860

loc_8C0FE1B8:
#data bank11.loc_8c11E2E0
#data 0x41F00000

#align4
loc_8C0FE1C0:
#data bank04.loc_8c0450C0

loc_8C0FE1C4:
#data bank10.loc_8c1087Ce

loc_8C0FE1C8:
#data 0x3C888889
#data 0xE7002FE6
#data 0x66734F22
#data 0xB04A6E43
#data 0xE507E507
#data 0xE700E601
#data 0x64E3B045
#data 0xE600E506
#data 0xB040E701
#data 0x4F2664E3
#data 0x64E3E701
#data 0xE5066673
#data 0x6EF6A039
#data 0xE6032FE6
#data 0xE7004F22
#data 0xB0326E43
#data 0xE507E505
#data 0xE700E604
#data 0x64E3B02d
#data 0xE604E507
#data 0xB028E701
#data 0xE50764E3
#data 0xE702E604
#data 0x64E3B023
#data 0xE604E507
#data 0xB01EE703
#data 0xE70464E3
#data 0x6673E507
#data 0x64E3B019
#data 0x64E34F26
#data 0xE705E507
#data 0xA012E604
#data 0x6EF6

loc_8C0FE24A:
#data 0x2FE6
#data 0x4F22E605
#data 0x6E43E700
#data 0xE507B00b
#data 0xE605E507
#data 0xB006E701
#data 0x4F2664E3
#data 0xE70264E3
#data 0x6EF6E605
#data 0xE507

loc_8C0FE26E:
#data 0x4F22
#data 0x1F427FF4
#data 0x00096063
#data 0xE601D32b
#data 0x2F7080F4
#data 0xE400430b
#data 0x8D0B2008
#data 0xD3286403
#data 0x314CE120
#data 0x52F21434
#data 0x84F41426
#data 0xE0212100
#data 0x043463F0

#align4
loc_8C0FE2A0:
#data 0x4F267F0c
#data 0x0009000b
;-------------------------------------------------------------------------------

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

loc_8C0FE2DE:
#data 0xD116
#data 0x901DE32d
#data 0x4F22F39d
#data 0x62120436
#data 0x63229019
#data 0x9017033e
#data 0xE0740436
#data 0x8443F437
#data 0x8807600c
#data 0x900D8B0b
#data 0x920B6143
#data 0x004E7150
#data 0xD30C324c
#data 0x2202CB10
#data 0x430BD209
#data 0xE00c

loc_8C0FE31A:
#data 0x4F26
#data 0x0009000b
;-------------------------------------------------------------------------------
#data 0x016800Cc
#data 0x00000084

#align4
loc_8C0FE328:
#data bank04.loc_8c044F12

loc_8C0FE32C:
#data loc_8c0fE2A8

loc_8C0FE330:
#data bank16.loc_8c164BEc

loc_8C0FE334:
#data bank16.loc_8c164BFc
#data 0x8C26A904

#align4
loc_8C0FE33C:
#data bank16.loc_8c164BD4

loc_8C0FE340:
#data bank12.loc_8c1294C8

loc_8C0FE344:
#data 0x9370D13c
#data 0x2FE69070
#data 0xF39D6E43
#data 0x4F22F48d
#data 0x62120E36
#data 0x63229069
#data 0x9067033e
#data 0xE0780E36
#data 0xE07CFE37
#data 0x7004FE47
#data 0x84E3FE47
#data 0x8807600c
#data 0x90598B0b
#data 0x925761E3
#data 0x00EE7150
#data 0xD32F32Ec
#data 0x2202CB10
#data 0x430BD22c
#data 0xE00c

loc_8C0FE38E:
#data 0x84E3
#data 0xD32CE602
#data 0x430B6503
#data 0x200864E3
#data 0x64038D0b
#data 0xE020D329
#data 0x52E61434
#data 0x03EC1426
#data 0x04347301
#data 0x02ECE021
#data 0x0424

loc_8C0FE3B6:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

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
#data 0x040d

loc_8C0FE42C:
#data 0x00Cc
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

#align4
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
;-------------------------------------------------------------------------------

loc_8C0FE516:
#data 0xD130
#data 0x934C904e
#data 0x4F22F49d
#data 0x62120436
#data 0x90486143
#data 0x63227150
#data 0x033ED22b
#data 0x04369040
#data 0xF447E074
#data 0xF447700c
#data 0xF447E07c
#data 0xD321E078
#data 0x430BF447
#data 0xE021E00c
#data 0x61439336
#data 0x21327140
#data 0x605C054c
#data 0x8D048802
#data 0x60536503
#data 0x88050009
#data 0x8B05

loc_8C0FE566:
#data 0x6343
#data 0x61327340
#data 0x312C9227
#data 0x2312

loc_8C0FE572:
#data 0xE021
#data 0x024C6143
#data 0x622C715c
#data 0x42006323
#data 0xD317323c
#data 0x323C4208
#data 0x430BD30f
#data 0xE021E00c
#data 0x004CD514
#data 0x4008600c
#data 0x814E005d
#data 0x004CE021
#data 0x600C4F26
#data 0x305C4008
#data 0x000B8501
#data 0x814f
;-------------------------------------------------------------------------------

loc_8C0FE5AE:
#data 0x012c

loc_8C0FE5B0:
#data 0x041f

loc_8C0FE5B2:
#data 0x0160

loc_8C0FE5B4:
#data 0x0084
#data 0x0413
#data 0x02DC00Cc
#data 0x40001555

#align4
loc_8C0FE5C0:
#data 0x8C26A904

#align4
loc_8C0FE5C4:
#data bank16.loc_8c164BD4

loc_8C0FE5C8:
#data bank12.loc_8c1294C8

loc_8C0FE5CC:
#data bank16.loc_8c164C18

loc_8C0FE5D0:
#data 0x3DCCCCCd

#align4
loc_8C0FE5D4:
#data bank16.loc_8c164C30
#data 0x8C26A908

#align4
loc_8C0FE5DC:
#data bank16.loc_8c164BE0

loc_8C0FE5E0:
#data bank16.loc_8c164C78

loc_8C0FE5E4:
#data bank16.loc_8c164C9c


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
;-------------------------------------------------------------------------------

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
#data 0x2FE6
#data 0x2FD66E43
#data 0x9476E021
#data 0x4F22FFFb
#data 0x03EC5DE6
#data 0x906C34Dc
#data 0x6243633c
#data 0x6130332c
#data 0x8D612118
#data 0xE0040E14
#data 0xF34662D3
#data 0xD33761E3
#data 0x7234E074
#data 0x7134FE37
#data 0xE00C430b
#data 0xF308C735
#data 0xF4D6E050
#data 0x03DD905a
#data 0x8F012338
#data 0xF44DF432

#align4
loc_8C0FE688:
#data 0xD131E034
#data 0x415AF3E6
#data 0xF340E154
#data 0xF00D31Dc
#data 0xE038FE37
#data 0xF318F2E6
#data 0xFE27F23e
#data 0x03DC9047
#data 0x8B292338
#data 0xD42A85Ee
#data 0x81EE7001
#data 0xF608C727
#data 0xF508C728
#data 0xF408C728
#data 0x630385Ee
#data 0x330C85Ef
#data 0x435A4300
#data 0xF32DE044
#data 0xF353F342
#data 0xF33DF360
#data 0x2349035a
#data 0x85EE0E36
#data 0x85EF6303
#data 0x6233330c
#data 0x332C4300
#data 0xE048435a
#data 0xF342F32d
#data 0xF360F353
#data 0x035AF33d
#data 0x0E362349

#align4
loc_8C0FE700:
#data 0x4F26901a
#data 0xE078FFD6
#data 0xE074F5D6
#data 0xF6FCF7Fc
#data 0xF4D6FFF9
#data 0xD3137010
#data 0x04EE6DF6
#data 0x6EF6432b

#align4
loc_8C0FE720:
#data 0xFFF94F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0FE72A:
#data 0x012c

loc_8C0FE72C:
#data 0x0411

loc_8C0FE72E:
#data 0x0218

loc_8C0FE730:
#data 0x0084
#data 0x02A4
#data 0x01A00130
#data 0x00000080

#align4
loc_8C0FE73C:
#data 0x8C26A908

#align4
loc_8C0FE740:
#data bank16.loc_8c164BE0

loc_8C0FE744:
#data bank12.loc_8c1294C8

loc_8C0FE748:
#data bank16.loc_8c164CA8
#data 0x42200000
#data 0x434DB6Db
#data 0x3F000000
#data 0x0000FFFf
#data 0x43B40000
#data 0x47800000

#align4
loc_8C0FE764:
#data bank10.loc_8c10837c


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

loc_8C0FE796:
#data 0x6243
#data 0x61E3D34b
#data 0x71347234
#data 0xE00C430b
#data 0xF308C749
#data 0xF446E050
#data 0x034D9088
#data 0x8F012338
#data 0xF44DF432

#align4
loc_8C0FE7B8:
#data 0xD145E034
#data 0x415AF3E6
#data 0xF340E154
#data 0xF00D314c
#data 0xE038FE37
#data 0xF318F2E6
#data 0xFE27F23e
#data 0x034C9075
#data 0x8B5E2338
#data 0xDC3F85Ee
#data 0x81EE7001
#data 0xFD08C73b
#data 0xFE08C73b
#data 0xFF08C73c
#data 0x630385Ee
#data 0x330C85Ef
#data 0x435A4300
#data 0xF32DE044
#data 0xF3E3F3D2
#data 0xF33DF3F0
#data 0x23C9035a
#data 0x85EE0E36
#data 0x85EF6303
#data 0x6233330c
#data 0x332C4300
#data 0xE048435a
#data 0xF3D2F32d
#data 0xF3F0F3E3
#data 0x035AF33d
#data 0x0E3623C9
#data 0xD32C85Ee
#data 0x90456103
#data 0x0009430b
#data 0xD32A405a
#data 0xF23CF32d
#data 0xF2E3F2D2
#data 0xF3F0F32c
#data 0x045AF33d
#data 0x24C9430b
#data 0xE004F30c
#data 0xF2FCF0Fc
#data 0xF3D6F23e
#data 0xD320E078
#data 0xFE27F232
#data 0x610385Ee
#data 0x430B902a
#data 0x405A0009
#data 0xF32DD31d
#data 0xF2D2F23c
#data 0xF32CF2E3
#data 0xF33DF3F0
#data 0x430B045a
#data 0xF30C24C9
#data 0xF0FCE004
#data 0xF23EF2Fc
#data 0xA007F3D6
#data 0xF232

loc_8C0FE89A:
#data 0xE004
#data 0xF2D6F39d
#data 0xF232E078
#data 0xF28DFE27

#align4
loc_8C0FE8A8:
#data 0xFE27E07c


loc_8C0FE8AC:
lds.l @r15+,pr 	
fmov.s @r15+,fr13
fmov.s @r15+,fr14
fmov.s @r15+,fr15
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0FE8BC:
#data 0x02A4

loc_8C0FE8BE:
#data 0x012c
#data 0x01A00130
#data 0x00000168

#align4
loc_8C0FE8C8:
#data bank12.loc_8c1294C8
#data 0x42200000
#data 0x434DB6Db
#data 0x47800000
#data 0x43B40000
#data 0x0000FFFf
#data 0x3F000000

#align4
loc_8C0FE8E4:
#data bank12.loc_8c1292D4

loc_8C0FE8E8:
#data bank11.loc_8c11E860

loc_8C0FE8EC:
#data bank11.loc_8c11E2E0

loc_8C0FE8F0:
#data 0xE300907e
#data 0x55424F22
#data 0xE3020434
#data 0x80448454
#data 0x3033600c
#data 0x90738925
#data 0x2118015c
#data 0x04148D21
#data 0xD3386253
#data 0x72346143
#data 0x430B7134
#data 0x6253E00c
#data 0x6143D335
#data 0x71747274
#data 0xE010430b
#data 0xD3316253
#data 0x72506143
#data 0x430B7150
#data 0x6353E00c
#data 0xE0447340
#data 0x62436132
#data 0x22127240
#data 0x0436035e
#data 0x025EE048
#data 0x0426

loc_8C0FE952:
#data 0x4F26
#data 0x0009000b
;-------------------------------------------------------------------------------

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

loc_8C0FE9CA:
#data 0xD110
#data 0xF2E6E074
#data 0xF18D415a
#data 0xF231F30d
#data 0x8F06F125
#data 0x84E4FE27
#data 0x7001E300
#data 0x900380E4
#data 0x0E34


loc_8C0FE9EA:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0FE9F0:
#data 0x012c
#data 0x0000

#align4
loc_8C0FE9F4:
#data bank12.loc_8c1294C8

loc_8C0FE9F8:
#data bank12.loc_8c1294Bc

loc_8C0FE9FC:
#data 0x0000FFFf

#align4
loc_8C0FEA00:
#data 0x47800000

#align4
loc_8C0FEA04:
#data 0x43B40000

#align4
loc_8C0FEA08:
#data 0x3F000000
#data 0x3D088889

#align4
loc_8C0FEA10:
#data 0x4F222FE6
#data 0x6E43B10c
#data 0x62E363E3
#data 0x7240735c
#data 0x61226332
#data 0x313CE044
#data 0x62E32212
#data 0x01EE725c
#data 0x62E36322
#data 0x313C725c
#data 0xE0480E16
#data 0x632201Ee
#data 0x0E16313c
#data 0x700185Ee
#data 0x84E581Ee
#data 0x8F0B2008
#data 0x85EEE401
#data 0x435A6303
#data 0xF208C729
#data 0xF324F32d
#data 0x60438B02
#data 0x80E50009

#align4
loc_8C0FEA68:
#data 0x200884E6
#data 0x85EE8B0a
#data 0x435A6303
#data 0xF208C723
#data 0xF324F32d
#data 0x60438B02
#data 0x80E60009

#align4
loc_8C0FEA84:
#data 0x200884E5
#data 0xE1688914
#data 0xE05031Ec
#data 0xF2E6F318
#data 0x31ECE16c
#data 0xFE27F230
#data 0xF2E6E054
#data 0xE170F318
#data 0xF23031Ec
#data 0xE058FE27
#data 0xF318F2E6
#data 0xFE27F230

#align4
loc_8C0FEAB4:
#data 0x200884E6
#data 0xD113891e
#data 0xF2E6E078
#data 0xF18D415a
#data 0xF231F30d
#data 0x8D15F215
#data 0x84E4FE27
#data 0x7001E300
#data 0x901280E4
#data 0xE0210E34
#data 0x222802Ec
#data 0xD20A8B0a
#data 0x0009420b
#data 0x54E6BBAf
#data 0xD2084F26
#data 0x64E3E511
#data 0x6EF6422b

#align4
loc_8C0FEAF8:
#data 0x000B4F26
#data 0x012C6EF6
#data 0x42C80000
#data 0x43200000
#data 0x3D4CCCCd

#align4
loc_8C0FEB0C:
#data bank03.loc_8c030F9e

loc_8C0FEB10:
#data bank04.loc_8c04218c

loc_8C0FEB14:
#data 0x6E432FE6
#data 0x84E54F22
#data 0x8B0B2008
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x89414015
#data 0xE30184E5
#data 0x80E57001
#data 0x0E349074

#align4
loc_8C0FEB38:
#data 0x64E3B07a
#data 0x31ECE15c
#data 0xF318E050
#data 0xE160F2E6
#data 0xF23031Ec
#data 0xE054FE27
#data 0xF318F2E6
#data 0x31ECE164
#data 0xFE27F230
#data 0xF2E6E058
#data 0xF230F318
#data 0x84E6FE27
#data 0x8B072008
#data 0x70FF85Ef
#data 0x600F81Ef
#data 0x89014015
#data 0x80E6E001

#align4
loc_8C0FEB7C:
#data 0x200884E6
#data 0xC7288916
#data 0xE078F408
#data 0xF341F3E6
#data 0xE07CFE37
#data 0xF241F2E6
#data 0x7004FE27
#data 0xF28DF3E6
#data 0xF235F341
#data 0xFE378F06
#data 0xE30084E4
#data 0x80E47001
#data 0x0E349038

#align4
loc_8C0FEBB0:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

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

#align4
loc_8C0FEBEC:
#data 0xF408C70f
#data 0xF3E6E078
#data 0xFE37F341
#data 0xF2E6E07c
#data 0xFE27F241
#data 0xF3E67004
#data 0xF341F28d
#data 0x8F06F235
#data 0x84E4FE37
#data 0x7001E300
#data 0x900380E4
#data 0x0E34


loc_8C0FEC1A:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x0000012c
#data 0x3DCCCCCd

#align4
loc_8C0FEC28:
#data 0x3E000000
#data 0x3D4CCCCd

#align4
loc_8C0FEC30:
#data 0x55464F22
#data 0xD3166143
#data 0x62537134
#data 0x430B7234
#data 0xC714E00c
#data 0xE050F308
#data 0x901EF456
#data 0x2338035d
#data 0xF4328F01
#data 0xF44d

loc_8C0FEC56:
#data 0xE034
#data 0xF346D10f
#data 0xE154415a
#data 0x315CF340
#data 0xF437F00d
#data 0xF246E038
#data 0x4F26F318
#data 0x000BF23e
#data 0xF427
;-------------------------------------------------------------------------------

loc_8C0FEC76:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0FEC8C,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0FEC84:
mov.l @(loc_8C0FEC9C,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x0130

loc_8C0FEC8C:
#data 0x012c
#data 0x0000

#align4
loc_8C0FEC90:
#data bank12.loc_8c1294C8
#data 0x42200000
#data 0x434DB6Db

#align4
loc_8C0FEC9C:
#data bank04.loc_8c0450C0


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
;-------------------------------------------------------------------------------

loc_8C0FECC6:
#data 0x2FE6
#data 0x4F22E508
#data 0x6E43D343
#data 0x430BE601
#data 0x2008E400
#data 0x64038D19
#data 0xE501D340
#data 0x9076D240
#data 0x70A00454
#data 0x04561434
#data 0x632270B8
#data 0x531A6132
#data 0x14E60436
#data 0x814E85Ee
#data 0xF3E6E034
#data 0xE038F437
#data 0xF437F3E6
#data 0xF3E6E03c
#data 0xF437

loc_8C0FED0E:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------
#data 0x4F22
#data 0xD30C7FFc
#data 0x2F42E508
#data 0x430BE601
#data 0x2008E400
#data 0x64038D07
#data 0xE3009009
#data 0x0434D20e
#data 0x63F21424
#data 0x7F041436
#data 0x000B4F26
#data 0x012C0009

#align4
loc_8C0FEDD4:
#data 0x42480000

#align4
loc_8C0FEDD8:
#data bank04.loc_8c0450C0

loc_8C0FEDDC:
#data bank04.loc_8c044F12

loc_8C0FEDE0:
#data loc_8c0fECA0
#data 0x8C26A908

#align4
loc_8C0FEDE8:
#data 0x8C26A530

#align4
loc_8C0FEDEC:
#data 0x44200000

#align4
loc_8C0FEDF0:
#data bank11.loc_8c11E750

loc_8C0FEDF4:
#data 0xBF000000

#align4
loc_8C0FEDF8:
#data 0xC2480000

#align4
loc_8C0FEDFC:
#data loc_8c0fED14

loc_8C0FEE00:
#data 0x4F22D14a
#data 0x415A854e
#data 0xD3497001
#data 0xE038814e
#data 0xF30DF246
#data 0xF427F230
#data 0x6103854e
#data 0xE014430b
#data 0x8B062008
#data 0xE038D143
#data 0x415AF146
#data 0xF121F20d
#data 0xF417

loc_8C0FEE32:
#data 0x854e
#data 0x3033E33c
#data 0xD13F8B02
#data 0x4F26412b

#align4
loc_8C0FEE40:
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0FEE46:
#data 0x2FE6
#data 0x4F22E508
#data 0x6E43D33b
#data 0x430BE601
#data 0x2008E400
#data 0x64038D18
#data 0xE501D338
#data 0x9060D238
#data 0x70A00454
#data 0x04561434
#data 0x6322E070
#data 0x031E6132
#data 0x04367014
#data 0x14E6E034
#data 0xF437F3E6
#data 0xF3E6E038
#data 0xE03CF437
#data 0xF437F3E6

#align4
loc_8C0FEE8C:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------
#data 0x4F22
#data 0xD30F7FFc
#data 0x2F42E508
#data 0x430BE601
#data 0x2008E400
#data 0x64038D07
#data 0xE3009009
#data 0x0434D210
#data 0x63F21424
#data 0x7F041436
#data 0x000B4F26
#data 0x012C0009

loc_8C0FEF28:
#data 0x0C80

loc_8C0FEF2A:
#data 0xF9C0
#data 0x42480000

#align4
loc_8C0FEF30:
#data bank12.loc_8c1292D4
#data 0x447A0000

#align4
loc_8C0FEF38:
#data bank04.loc_8c0450C0

loc_8C0FEF3C:
#data bank04.loc_8c044F12

loc_8C0FEF40:
#data loc_8c0fEE00
#data 0x8C26A908

#align4
loc_8C0FEF48:
#data 0x8C26A530

#align4
loc_8C0FEF4C:
#data bank11.loc_8c11e730

loc_8C0FEF50:
#data 0xC32F0000

#align4
loc_8C0FEF54:
#data 0xC5200000

#align4
loc_8C0FEF58:
#data loc_8c0fEE92

loc_8C0FEF5C:
#data 0x2FD62FE6
#data 0x7FF44F22
#data 0x2F621F41
#data 0x00096073
#data 0xE01880F8
#data 0xE6010DFc
#data 0x65D3D346
#data 0xE400430b
#data 0x8D382008
#data 0xD3446E03
#data 0x907F61E3
#data 0x62307134
#data 0x23207201
#data 0xD241E300
#data 0x1E240E34
#data 0x52F1D340
#data 0xE00C430b
#data 0x91729074
#data 0x60F20E16
#data 0x8B0B8801
#data 0x916D906e
#data 0x31EC00Ee
#data 0xCB10D23a
#data 0x2102D338
#data 0x715061E3
#data 0xE00C430b

#align4
loc_8C0FEFC4:
#data 0xB07D65D3
#data 0x65D364E3
#data 0x64E3B0Bd
#data 0xB12365D3
#data 0x65D364E3
#data 0x64E3B15d
#data 0x67D384F8
#data 0x54F165F2
#data 0x7F0C6603
#data 0xD32E4F26
#data 0x432B6DF6
#data 0x6EF6

loc_8C0FEFF2:
#data 0x7F0c
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0FEFFC:
#data 0x2FD62FE6
#data 0x7FF84F22
#data 0xD322E014
#data 0x2F621F41
#data 0x0DFCE601
#data 0x430B65D3
#data 0x2008E400
#data 0x6E038D31
#data 0x61E3D31d
#data 0x71349032
#data 0x72016230
#data 0xE3002320
#data 0x0E34D21a
#data 0xD31A1E24
#data 0x430B52F1
#data 0x9027E00c
#data 0x0E169125
#data 0x880160F2
#data 0x90218B0b
#data 0x00EE9120
#data 0xD21431Ec
#data 0xD312CB10
#data 0x61E32102
#data 0x430B7150
#data 0xE00c

loc_8C0FF05E:
#data 0x65D3
#data 0x64E3B030
#data 0xB07065D3
#data 0x65D364E3
#data 0x64E3B0D6
#data 0x65D364E3
#data 0x4F267F08
#data 0xA10C6DF6
#data 0x6EF6

loc_8C0FF07E:
#data 0x7F08
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x0181012c
#data 0x000000Cc

#align4
loc_8C0FF090:
#data bank04.loc_8c044F12
#data 0x8C289650

#align4
loc_8C0FF098:
#data loc_8c0fF0A8

loc_8C0FF09C:
#data bank12.loc_8c1294C8

loc_8C0FF0A0:
#data bank16.loc_8c164CD0

loc_8C0FF0A4:
#data loc_8c0fDFB2


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
;-------------------------------------------------------------------------------

#align4
loc_8C0FF0C4:
#data 0x7FFC4F22
#data 0xE601D34c
#data 0x430B2F42
#data 0x2008E400
#data 0x64038D14
#data 0xE3019086
#data 0xD248D149
#data 0x701C0434
#data 0x63121424
#data 0x032E6232
#data 0x927D907d
#data 0x70480436
#data 0x927A0426
#data 0x907963F2
#data 0x0426323c

#align4
loc_8C0FF100:
#data 0x4F267F04
#data 0x0009000b
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

loc_8C0FF14A:
#data 0x4F22
#data 0xD32B7FFc
#data 0x2F42E601
#data 0xE400430b
#data 0x8D142008
#data 0x90436403
#data 0xD128E301
#data 0x0434D22a
#data 0x14247020
#data 0x62326312
#data 0x903A032e
#data 0x0436923d
#data 0x04267048
#data 0x63F29237
#data 0x323C9036
#data 0x0426

loc_8C0FF186:
#data 0x7F04
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------
#data 0x0084012c
#data 0x00880400
#data 0x041000C8

#align4
loc_8C0FF1F4:
#data 0x8C289650

#align4
loc_8C0FF1F8:
#data bank04.loc_8c0450C0

loc_8C0FF1FC:
#data bank04.loc_8c044F12

loc_8C0FF200:
#data loc_8c0fF108
#data 0x8C26A908

#align4
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

loc_8C0FF21C:
#data 0x7FFC4F22
#data 0xE601D33e
#data 0x430B2F42
#data 0x2008E400
#data 0x64038D0d
#data 0xE301906e
#data 0x0434D23a
#data 0x936A70A0
#data 0x04361424
#data 0x62F29368
#data 0x332C9067
#data 0x0436

loc_8C0FF24A:
#data 0x7F04
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

loc_8C0FF296:
#data 0x4F22
#data 0xD3207FFc
#data 0x2F42E601
#data 0xE400430b
#data 0x8D0D2008
#data 0x90316403
#data 0xD221E301
#data 0x70A00434
#data 0x1424932d
#data 0x932B0436
#data 0x902A62F2
#data 0x0436332c

#align4
loc_8C0FF2C4:
#data 0x4F267F04
#data 0x0009000b
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------
#data 0x0400012c
#data 0x00C80088

loc_8C0FF318:
#data 0x0084
#data 0x0000

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

#align4
loc_8C0FF330:
#data bank16.loc_8c164D24

loc_8C0FF334:
#data loc_8c0fF2Cc

loc_8C0FF338:
#data bank16.loc_8c164D3c

loc_8C0FF33C:
#data bank16.loc_8c164D58


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
;-------------------------------------------------------------------------------

loc_8C0FF372:
#data 0x4F22
#data 0xD33C7FFc
#data 0x2F42E507
#data 0x430BE601
#data 0x2008E400
#data 0x64038D1f
#data 0xE3019065
#data 0xD237D138
#data 0xE05C0434
#data 0x63121424
#data 0x71346143
#data 0x032E6232
#data 0x04367028
#data 0xD33362F2
#data 0x430B7234
#data 0x9153E00c
#data 0xD231E048
#data 0x61430416
#data 0x7150D32e
#data 0xE00C430b
#data 0x914A904c
#data 0x0416

loc_8C0FF3C6:
#data 0x7F04
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

#align4
loc_8C0FF400:
#data 0x7FFC4F22
#data 0xE507D318
#data 0xE6012F42
#data 0xE400430b
#data 0x8D1C2008
#data 0x901E6403
#data 0xD115E301
#data 0x0434D217
#data 0x1424E060
#data 0x61436312
#data 0x62327134
#data 0x7024032e
#data 0x62F20436
#data 0x7234D30f
#data 0xE00C430b
#data 0x6143D20e
#data 0x7150D30c
#data 0xE00C430b
#data 0x91089008
#data 0x0416

loc_8C0FF44E:
#data 0x7F04
#data 0x000B4F26
#data 0x012C0009
#data 0x01991555
#data 0x019100Cc

#align4
loc_8C0FF460:
#data 0x3F4CCCCd

#align4
loc_8C0FF464:
#data bank04.loc_8c0450C0

loc_8C0FF468:
#data bank04.loc_8c044F12

loc_8C0FF46C:
#data loc_8c0fF340
#data 0x8C26A908

#align4
loc_8C0FF474:
#data bank12.loc_8c1294C8

loc_8C0FF478:
#data bank16.loc_8c164D74

loc_8C0FF47C:
#data loc_8c0fF3Ce

loc_8C0FF480:
#data 0x6E432FE6
#data 0x85EE4F22
#data 0x8B018802
#data 0x64E3BF71

#align4
loc_8C0FF490:
#data 0x880A85Ee
#data 0xBFB38B01
#data 0x64E3

loc_8C0FF49A:
#data 0x85Ee
#data 0x3033E30a
#data 0x4F268B04
#data 0x64E3D142
#data 0x6EF6412b

#align4
loc_8C0FF4AC:
#data 0x81EE7001
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0FF4B6:
#data 0x4F22
#data 0xD33E7FFc
#data 0x2F42E507
#data 0x430BE601
#data 0x2008E400
#data 0x64038D0b
#data 0xE300D23a
#data 0x6143906a
#data 0x04347134
#data 0xD3381424
#data 0x430B62F2
#data 0xE00c

loc_8C0FF4E2:
#data 0x7F04
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

#align4
loc_8C0FF51C:
#data 0x7FFC4F22
#data 0xE601D324
#data 0x430B2F42
#data 0x2008E400
#data 0x64038D1f
#data 0xE301903a
#data 0xD223D124
#data 0xE05C0434
#data 0x63121424
#data 0x71346143
#data 0x032E6232
#data 0x04367028
#data 0xD31B62F2
#data 0x430B7234
#data 0x9128E00c
#data 0xD21CE048
#data 0x61430416
#data 0x7150D316
#data 0xE00C430b
#data 0x911F9021
#data 0x0416

loc_8C0FF56E:
#data 0x7F04
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------
#data 0x1555012c
#data 0x00CC0199

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

#align4
loc_8C0FF5C4:
#data loc_8c0fF4Ea
#data 0x8C26A908

#align4
loc_8C0FF5CC:
#data bank16.loc_8c164D74

loc_8C0FF5D0:
#data 0x7FFC4F22
#data 0xE601D337
#data 0x430B2F42
#data 0x2008E400
#data 0x64038D1c
#data 0xE3019063
#data 0xD233D134
#data 0xE0600434
#data 0x63121424
#data 0x71346143
#data 0x032E6232
#data 0x04367024
#data 0xD32F62F2
#data 0x430B7234
#data 0xD22EE00c
#data 0xD32C6143
#data 0x430B7150
#data 0x904CE00c
#data 0x0416914a

#align4
loc_8C0FF61C:
#data 0x4F267F04
#data 0x0009000b
;-------------------------------------------------------------------------------

#align4
loc_8C0FF624:
#data 0x6E432FE6
#data 0x85EE4F22
#data 0x8B038802
#data 0x05ECE023
#data 0x64E3BF72

#align4
loc_8C0FF638:
#data 0x880A85Ee
#data 0xE0238B03
#data 0xBFC505Ec
#data 0x64E3

loc_8C0FF646:
#data 0x85Ee
#data 0x3033E30a
#data 0xD11E8B08
#data 0x621064E3
#data 0x212072Ff
#data 0xD11C4F26
#data 0x6EF6412b

#align4
loc_8C0FF660:
#data 0x81EE7001
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0FF66A:
#data 0x4F22
#data 0xD3117FF8
#data 0x2F601F41
#data 0x65F0E601
#data 0xE400430b
#data 0x8D122008
#data 0xD3116403
#data 0x90126143
#data 0x62307134
#data 0x23207201
#data 0xD20FE300
#data 0x14240434
#data 0x52F1D309
#data 0xE00C430b
#data 0xE02361F0
#data 0x0414

loc_8C0FF6A6:
#data 0x7F08
#data 0x000B4F26
#data 0x012C0009
#data 0x00CC0191

#align4
loc_8C0FF6B4:
#data bank04.loc_8c044F12

loc_8C0FF6B8:
#data loc_8c0fF576
#data 0x8C26A908

#align4
loc_8C0FF6C0:
#data bank12.loc_8c1294C8

loc_8C0FF6C4:
#data bank16.loc_8c164D74
#data 0x8C289650

#align4
loc_8C0FF6CC:
#data bank04.loc_8c0450C0

loc_8C0FF6D0:
#data loc_8c0fF624


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
;-------------------------------------------------------------------------------

#align4
loc_8C0FF700:
#data 0x4F222FE6
#data 0x6E43BFE6
#data 0xD244C743
#data 0xE050F408
#data 0xF341F3E6
#data 0xE054FE37
#data 0xF241F2E6
#data 0xE058FE27
#data 0xF341F3E6
#data 0x7035FE37
#data 0x013C6322
#data 0x8B032118
#data 0xE30F85Ee
#data 0x8B043033

#align4
loc_8C0FF738:
#data 0xD3394F26
#data 0x432B64E3
#data 0x6EF6

loc_8C0FF742:
#data 0x7001
#data 0x4F2681Ee
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0FF74C:
#data 0x7FF84F22
#data 0xE601D334
#data 0x2F521F41
#data 0x430BE508
#data 0x2008E400
#data 0x64038D52
#data 0xE3019054
#data 0xD130D22f
#data 0x14240434
#data 0x61436312
#data 0x713462F2
#data 0x904A6332
#data 0x323C4208
#data 0x022E9348
#data 0x042670D4
#data 0x04367048
#data 0x52F1D328
#data 0xE00C430b
#data 0xE03465F2
#data 0xE104D226
#data 0x45006353
#data 0xF246353c
#data 0x352C4508
#data 0x315CF358
#data 0xF427F230
#data 0xF246E038
#data 0xE108F318
#data 0xF230315c
#data 0xE03CF427
#data 0xF318F246
#data 0xF427F230
#data 0xF358C71b
#data 0xE05CF408
#data 0xF343F34d
#data 0xE004F437
#data 0xE060F356
#data 0xF343F34d
#data 0xE008F437
#data 0xE064F356
#data 0xF343F34d
#data 0xF437F49d
#data 0xF447E050
#data 0xF447E054
#data 0xF447E058
#data 0xF447E078
#data 0xF447E07c
#data 0xF4477004

#align4
loc_8C0FF808:
#data 0x4F267F08
#data 0x0009000b
;-------------------------------------------------------------------------------
#data 0x00B0012c
#data 0x00000401
#data 0x3D088889
#data 0x8C26823c

#align4
loc_8C0FF820:
#data bank04.loc_8c0450C0

loc_8C0FF824:
#data bank04.loc_8c044F12

loc_8C0FF828:
#data loc_8c0fF700
#data 0x8C26A908

#align4
loc_8C0FF830:
#data bank12.loc_8c1294C8

loc_8C0FF834:
#data bank16.loc_8c164D98
#data 0x41700000


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
;-------------------------------------------------------------------------------

#align4
loc_8C0FF8C8:
#data 0x7FFC4F22
#data 0xE508D334
#data 0xE6012F42
#data 0xE400430b
#data 0x8D2C2008
#data 0x90556403
#data 0xD131E301
#data 0x0434D22f
#data 0x63121424
#data 0x904E6143
#data 0x62327134
#data 0x70DC032e
#data 0x0436924a
#data 0x04267048
#data 0x62F2D32a
#data 0xE00C430b
#data 0xF308C729
#data 0xF437E05c
#data 0xF308C728
#data 0xF437E068
#data 0xF408C727
#data 0xF447E050
#data 0xF447E054
#data 0xF447E058
#data 0xF49DE078
#data 0xE07CF447
#data 0x7004F447
#data 0xF447

loc_8C0FF936:
#data 0x7F04
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

loc_8C0FF98C:
#data 0x012c
#data 0x00A8
#data 0x00000411

#align4
loc_8C0FF994:
#data 0x3DCCCCCd

#align4
loc_8C0FF998:
#data 0x8C26823c

#align4
loc_8C0FF99C:
#data bank04.loc_8c0450C0

loc_8C0FF9A0:
#data bank04.loc_8c044F12

loc_8C0FF9A4:
#data loc_8c0fF83c
#data 0x8C26A908

#align4
loc_8C0FF9AC:
#data bank12.loc_8c1294C8
#data 0x3ECCCCCd
#data 0xBD23D70a
#data 0x3F000000

#align4
loc_8C0FF9BC:
#data 0x3CA3D70a

#align4
loc_8C0FF9C0:
#data 0x3D4CCCCd

#align4
loc_8C0FF9C4:
#data 0x7FFC4F22
#data 0xE508D33d
#data 0xE6012F42
#data 0xE400430b
#data 0x8D242008
#data 0x906D6403
#data 0xD13AE301
#data 0x0434D238
#data 0x14247080
#data 0x61436312
#data 0x62327134
#data 0x70D8032e
#data 0x04369261
#data 0x04267048
#data 0x62F2D333
#data 0xE00C430b
#data 0xF408C732
#data 0xF447E050
#data 0xF447E054
#data 0xF447E058
#data 0xF49DE078
#data 0xE07CF447
#data 0x7004F447
#data 0xF447

loc_8C0FFA22:
#data 0x7F04
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

loc_8C0FFAB8:
#data 0x012c
#data 0x0411

loc_8C0FFABC:
#data 0x008d
#data 0x0000

#align4
loc_8C0FFAC0:
#data bank04.loc_8c044F12

loc_8C0FFAC4:
#data loc_8c0fF93e
#data 0x8C26A908

#align4
loc_8C0FFACC:
#data bank12.loc_8c1294C8
#data 0x3F000000

#align4
loc_8C0FFAD4:
#data 0x8C26823c

#align4
loc_8C0FFAD8:
#data bank04.loc_8c0450C0

loc_8C0FFADC:
#data 0x7FFC4F22
#data 0xE508D30c
#data 0xE6012F42
#data 0xE400430b
#data 0x8D0B2008
#data 0xD2096403
#data 0x900BE300
#data 0x71346143
#data 0x14240434
#data 0x62F2D306
#data 0xE00C430b

#align4
loc_8C0FFB08:
#data 0x4F267F04
#data 0x0009000b
;-------------------------------------------------------------------------------
#data 0x0000012c

#align4
loc_8C0FFB14:
#data bank04.loc_8c044F12

loc_8C0FFB18:
#data loc_8c0fFA2a

loc_8C0FFB1C:
#data bank12.loc_8c1294C8


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
;-------------------------------------------------------------------------------

loc_8C0FFB86:
#data 0x4F22
#data 0xD32F7FFc
#data 0x2F42E508
#data 0x430BE601
#data 0x2008E400
#data 0x64038D22
#data 0xE301904a
#data 0xD22AD12b
#data 0x70B80434
#data 0x63121424
#data 0x71346143
#data 0x032E6232
#data 0x923E70A0
#data 0x70480436
#data 0xD3250426
#data 0x430B62F2
#data 0xE050E00c
#data 0xF447F49d
#data 0xF447E054
#data 0xF447E058
#data 0xF447E078
#data 0xF447E07c
#data 0xF4477004

#align4
loc_8C0FFBE0:
#data 0x4F267F04
#data 0x0009000b
;-------------------------------------------------------------------------------

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
#data 0x0411012c

loc_8C0FFC38:
#data 0x0333
#data 0x0000

#align4
loc_8C0FFC3C:
#data 0x3D7DF3B6

#align4
loc_8C0FFC40:
#data 0x3D2C0831

#align4
loc_8C0FFC44:
#data bank04.loc_8c0450C0

loc_8C0FFC48:
#data bank04.loc_8c044F12

loc_8C0FFC4C:
#data loc_8c0fFB20
#data 0x8C26A908

#align4
loc_8C0FFC54:
#data bank12.loc_8c1294C8

loc_8C0FFC58:
#data 0x3F126E98

#align4
loc_8C0FFC5C:
#data 0xF408C744
#data 0xF346E050
#data 0xF437F341
#data 0xF246E054
#data 0xF427F241
#data 0x7001854e
#data 0x600F814e
#data 0x89363053


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

#align4
loc_8C0FFCB8:
#data 0xE30C854e
#data 0x8B173033


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
;-------------------------------------------------------------------------------

#align4
loc_8C0FFCF4:
#data 0x7FFC4F22
#data 0xE508D321
#data 0xE6012F42
#data 0xE400430b
#data 0x8D232008
#data 0x902E6403
#data 0xD11EE301
#data 0x0434D21c
#data 0x142470Bc
#data 0x61436312
#data 0x62327134
#data 0x709C032e
#data 0x04369222
#data 0x04267048
#data 0x62F2D317
#data 0xE00C430b
#data 0xF49DE050
#data 0xE054F447
#data 0xE058F447
#data 0xE078F447
#data 0xF447F48d
#data 0xF447E07c
#data 0xF4477004

#align4
loc_8C0FFD50:
#data 0x4F267F04
#data 0x0009000b
;-------------------------------------------------------------------------------

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
#data 0x012c
#data 0x00000411
#data 0x3E9DB22d

#align4
loc_8C0FFD74:
#data 0x3F000000

#align4
loc_8C0FFD78:
#data 0x3E000000

#align4
loc_8C0FFD7C:
#data bank04.loc_8c0450C0

loc_8C0FFD80:
#data bank04.loc_8c044F12

loc_8C0FFD84:
#data loc_8c0fFBE8
#data 0x8C26A908

#align4
loc_8C0FFD8C:
#data bank12.loc_8c1294C8


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

loc_8C0FFDBA:
#data 0xC741
#data 0xE050F408
#data 0xF341F346
#data 0xE054F437
#data 0xF241F246
#data 0x854EF427
#data 0x814E7001
#data 0x3053600f
#data 0x8936


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

loc_8C0FFE16:
#data 0x854e
#data 0x3033E30c
#data 0x8B17


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
;-------------------------------------------------------------------------------

loc_8C0FFE52:
#data 0x4F22
#data 0xD31E7FFc
#data 0x2F42E508
#data 0x430BE601
#data 0x2008E400
#data 0x64038D23
#data 0xE3019025
#data 0xD219D11a
#data 0x70C00434
#data 0x63121424
#data 0x71346143
#data 0x032E6232
#data 0x92197098
#data 0x70480436
#data 0xD3140426
#data 0x430B62F2
#data 0xE050E00c
#data 0xF447F49d
#data 0xF447E054
#data 0xF447E058
#data 0xF48DE078
#data 0xE07CF447
#data 0x7004F447
#data 0xF447

loc_8C0FFEAE:
#data 0x7F04
#data 0x000B4F26
#data 0x012C0009
#data 0x00000411

#align4
loc_8C0FFEBC:
#data 0x3EDB22D1
#data 0x3E6B851f

#align4
loc_8C0FFEC4:
#data 0x3F000000

#align4
loc_8C0FFEC8:
#data 0x3E000000

#align4
loc_8C0FFECC:
#data bank04.loc_8c0450C0

loc_8C0FFED0:
#data bank04.loc_8c044F12

loc_8C0FFED4:
#data loc_8c0fFD58
#data 0x8C26A908

#align4
loc_8C0FFEDC:
#data bank12.loc_8c1294C8


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

loc_8C0FFF1A:
#data 0xC726
#data 0xE050F408
#data 0xF341F346
#data 0xE054F437
#data 0xF241F246
#data 0x854EF427
#data 0x814E7001
#data 0x3053600f
#data 0x8934


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

loc_8C0FFF76:
#data 0x854e
#data 0x3033E30f
#data 0x8B15


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
;-------------------------------------------------------------------------------
#data 0x0000

#align4
loc_8C0FFFB0:
#data 0x3EE66666
#data 0x3E6B851f

#align4
loc_8C0FFFB8:
#data 0x3E4CCCCd

#align4
loc_8C0FFFBC:
#data bank04.loc_8c0450C0

loc_8C0FFFC0:
#data 0x7FFC4F22
#data 0xE508D33f
#data 0xE6012F42
#data 0xE400430b
#data 0x8D232008
#data 0x90726403
#data 0xD13CE301
#data 0x0434D23a
#data 0x142470C4
#data 0x61436312
#data 0x62327134
#data 0x7094032e
#data 0x04369266
#data 0x04267048
#data 0x62F2D335
#data 0xE00C430b
#data 0xF49DE050
#data 0xE054F447
#data 0xE058F447
#data 0xE078F447
#data 0xF447F48d
#data 0xF447E07c
#data 0xF4477004

#align4
loc_8C10001C:
#data 0x4F267F04
#data 0x0009000b
;-------------------------------------------------------------------------------

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
;-------------------------------------------------------------------------------

loc_8C10008A:
#data 0x4F22
#data 0xD30D7FFc
#data 0x2F42E508
#data 0x430BE601
#data 0x2008E400
#data 0x64038D0b
#data 0xE300D20d
#data 0x6143900b
#data 0x04347134
#data 0xD3081424
#data 0x430B62F2
#data 0xE00c

loc_8C1000B6:
#data 0x7F04
#data 0x000B4F26
#data 0x012C0009
#data 0x0411

loc_8C1000C2:
#data 0x0130

#align4
loc_8C1000C4:
#data bank04.loc_8c044F12

loc_8C1000C8:
#data loc_8c0fFEE0
#data 0x8C26A908

#align4
loc_8C1000D0:
#data bank12.loc_8c1294C8

loc_8C1000D4:
#data bank04.loc_8c0450C0

loc_8C1000D8:
#data loc_8c100024
