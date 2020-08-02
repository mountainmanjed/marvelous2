
loc_8c1B0050:
#data 0xD6842FE6
#data 0x00096063
#data 0x6000702F
#data 0xC801600C
#data 0xE7008D01
#data 0x7701

loc_8c1B0066:
#data 0x6063
#data 0x702F0009
#data 0x600C6000
#data 0x8D01C802
#data 0x77016063

#align4
loc_8c1B0078:
#data 0x6000702F
#data 0xC804600C
#data 0x60638D01
#data 0x7701

loc_8c1B0086:
#data 0x702F
#data 0x600C6000
#data 0x8D01C808
#data 0x77016063

#align4
loc_8c1B0094:
#data 0x6000702F
#data 0xC810600C
#data 0x60638D01
#data 0x7701

loc_8c1B00A2:
#data 0x702F
#data 0x600C6000
#data 0x8D01C820
#data 0x77016063

#align4
loc_8c1B00B0:
#data 0x6000702F
#data 0xC840600C
#data 0x60638D01
#data 0x7701

loc_8c1B00BE:
#data 0x702F
#data 0x600C6000
#data 0x8D01C880
#data 0x7701E201

#align4
loc_8c1B00CC:
#data 0x60632729
#data 0x70300009
#data 0x600C6000
#data 0x8D012028
#data 0x7E01EE00

#align4
loc_8c1B00E0:
#data 0x00096063
#data 0x60007030
#data 0xC802600C
#data 0x60638D01
#data 0x7E01

loc_8c1B00F2:
#data 0x7030
#data 0x600C6000
#data 0x8D01C804
#data 0x7E016063

#align4
loc_8c1B0100:
#data 0x60007030
#data 0xC808600C
#data 0x60638D01
#data 0x7E01

loc_8c1B010E:
#data 0x7030
#data 0x600C6000
#data 0x8D01C810
#data 0x7E016063

#align4
loc_8c1B011C:
#data 0x60007030
#data 0xC820600C
#data 0x60638D01
#data 0x7E01

loc_8c1B012A:
#data 0x7030
#data 0x600C6000
#data 0x8D01C840
#data 0x7E016063

#align4
loc_8c1B0138:
#data 0x60007030
#data 0xC880600C
#data 0xE2018D01
#data 0x7E01

loc_8c1B0146:
#data 0x6363
#data 0x61307317
#data 0xE2302E29
#data 0x2128611C
#data 0x677C8B11
#data 0x8F042778
#data 0x67636EEC
#data 0xA006772F
#data 0x6770

loc_8c1B0166:
#data 0x6063
#data 0x702F0009
#data 0xCB806000
#data 0x6703

loc_8c1B0172:
#data 0x2EE8
#data 0xA028891F
#data 0x0009

loc_8c1B017A:
#data 0x6063
#data 0x70170009
#data 0x600C6000
#data 0x88102029
#data 0x67638B03
#data 0xA012772F
#data 0x6770

loc_8c1B0192:
#data 0x8820
#data 0x677C8B13
#data 0x8D042778
#data 0x67636EEC
#data 0xA006772F
#data 0x6770

loc_8c1B01A6:
#data 0x6063
#data 0x702F0009
#data 0xCB806000
#data 0x6703

loc_8c1B01B2:
#data 0x2EE8
#data 0x8909

loc_8c1B01B6:
#data 0x6E63
#data 0xA00C7E30
#data 0x6EE0

loc_8c1B01BE:
#data 0x6063
#data 0x702F0009
#data 0xCB806000
#data 0x6703

loc_8c1B01CA:
#data 0x6063
#data 0x70300009
#data 0xCB806000
#data 0x6E03

loc_8c1B01D6:
#data 0x2470
#data 0x000B25E0
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1B01DE:
#data 0xD022
#data 0x600C6000
#data 0x8901C880
#data 0x0009ACD8

#align4
loc_8c1B01EC:
#data 0x0009000B
;-------------------------------------------------------------------------------

loc_8c1B01F0:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
mov.l @(loc_8c1B026C,pc),r3 ; r3 set to 0x8C1A11E0
add 0xFC,r15
jsr @r3
nop
mov.l @(loc_8c1B0274,pc),r3 ; r3 set to 0x8C1B3F0C
mov r0,r13
mov.l @(loc_8c1B0270,pc),r2 ; r2 set to 0x8C34B110
jsr @r3
mov.l @r2,r4
mov.l @(loc_8c1B0264,pc),r11 ; r11 set to 0x8C34AF50
mov 0x18,r9 ; r9 set to 0x18
mov.l @(loc_8c1B0278,pc),r14 ; r14 set to 0x8C34B288
mov r0,r12
mov r11,r4 ; r4 set to 0x8C34AF50
add 0x15,r4 ; r4 set to 0x8C34AF65
mov.b @r4,r2 ; r2 ??
mov 0x02,r8 ; r8 set to 0x02
extu.b r2,r2
tst r9,r2
bt/s loc_8c1B02C4
mov 0x04,r10 ; r10 set to 0x04
mov.b @r4,r1
extu.b r1,r1
tst r8,r1
bt loc_8c1B02C4
mov.b @r4,r0
extu.b r0,r0
tst 0x20,r0
bf loc_8c1B0286
exts.b r13,r2
tst r2,r2
bt loc_8c1B0280
mov r14,r4 ; r4 set to 0x8C34B288
add 0x10,r4 ; r4 set to 0x8C34B298
mov.b @r4,r3 ; r3 ??
extu.b r3,r3
tst r10,r3
bt loc_8c1B0286
mov.b @r4,r0
extu.b r0,r0
tst 0x08,r0
bf loc_8c1B0286
exts.b r12,r2
tst r2,r2
bt loc_8c1B0286
mov.l @(loc_8c1B027C,pc),r3 ; r3 set to 0x8C1A122A
jsr @r3
mov 0x01,r4 ; r4 set to 0x01
bra loc_8c1B0286
nop

#align4
loc_8c1B0264:
#data 0x8C34AF50
#data 0x8C34B291

#align4
loc_8c1B026C:
#data bank1a.loc_8c1a11E0

loc_8c1B0270:
#data 0x8C34B110

#align4
loc_8c1B0274:
#data loc_8c1B3F0C

loc_8c1B0278:
#data 0x8C34B288

#align4
loc_8c1B027C:
#data bank1a.loc_8c1a122A

loc_8c1B0280:
#data 0x430BD382
#data 0xE400


loc_8c1B0286:
mov r11,r0
nop
add 0x15,r0
mov.b @r0,r0
extu.b r0,r0
tst 0x40,r0
bf loc_8c1B02C4
exts.b r13,r2
tst r2,r2
bt loc_8c1B02BE
mov r14,r4
add 0x10,r4
mov.b @r4,r3
extu.b r3,r3
tst r10,r3
bt loc_8c1B02C4
mov.b @r4,r0
extu.b r0,r0
tst 0x08,r0
bf loc_8c1B02C4
exts.b r12,r2
tst r2,r2
bt loc_8c1B02C4
mov.l @(loc_8c1B0490,pc),r3 ; r3 set to 0x8C1A124C
jsr @r3
mov 0x01,r4 ; r4 set to 0x01
bra loc_8c1B02C4
nop

loc_8c1B02BE:
#data 0xD374
#data 0xE400430B

#align4
loc_8c1B02C4:
#data 0x60B366B3
#data 0x701B0009
#data 0xE5086000
#data 0x6703C903
#data 0x6373677C
#data 0x2F722338
#data 0x64E38D07
#data 0x600C8446
#data 0x8B39C808
#data 0x880160F2
#data 0x8B36

loc_8c1B02EE:
#data 0x7615
#data 0x622C6260
#data 0x8B012298
#data 0x0009A0AE

#align4
loc_8c1B02FC:
#data 0x2DD86DDE
#data 0x63438945
#data 0x62307310
#data 0x2258622C
#data 0x62438B4B
#data 0x63207210
#data 0x23A8633C
#data 0xA09D8B01
#data 0x0009

loc_8c1B031E:
#data 0x6CCE
#data 0x8B012CC8
#data 0x0009A098

#align4
loc_8c1B0328:
#data 0x73106343
#data 0xC9FB6030
#data 0x60B32300
#data 0x70150009
#data 0x600C6000
#data 0x88082099
#data 0x8810895B
#data 0x88188965
#data 0xA0858901
#data 0x0009

loc_8c1B034E:
#data 0xBC6D
#data 0x84E80009
#data 0x80E8CB04
#data 0xE003A07F

#align4
loc_8c1B035C:
#data 0x600C8446
#data 0x895A2058
#data 0x600C844A
#data 0x890DC820
#data 0x880160F2
#data 0x6CCE8B02
#data 0x896F2CC8

#align4
loc_8c1B0378:
#data 0x6DDE844A
#data 0xC9DF2DD8
#data 0x804A8F65
#data 0x0009A003

#align4
loc_8c1B0388:
#data 0x2DD86DDE
#data 0x8B05

loc_8c1B038E:
#data 0x63E3
#data 0x60307310
#data 0xA05FCB08
#data 0x2300

loc_8c1B039A:
#data 0x6343
#data 0x62307310
#data 0x2258622C
#data 0x8910

loc_8c1B03A6:
#data 0x6543
#data 0x60507510
#data 0x2500C9F7
#data 0xCB046050
#data 0x65B32500
#data 0xD3377519
#data 0x6550D435
#data 0x655C430B
#data 0x0009A048

#align4
loc_8c1B03C8:
#data 0x72106243
#data 0x633C6320
#data 0x894123A8
#data 0x2CC86CCE
#data 0x6343893E
#data 0x60307310
#data 0x2300C9FB
#data 0x000960B3
#data 0x60007015
#data 0x2099600C
#data 0x8B0E8808
#data 0x880160F2
#data 0x8B0B

loc_8c1B03FA:
#data 0x84E6
#data 0x2088600C
#data 0x84E38905
#data 0xC820600C
#data 0xBC738B01
#data 0x0009

loc_8c1B040E:
#data 0xA024
#data 0xE001

loc_8c1B0412:
#data 0xBEE4
#data 0xA0200009
#data 0xE002

loc_8c1B041A:
#data 0x6DDE
#data 0x8B162DD8
#data 0x73106343
#data 0x622C6230
#data 0x8B152258
#data 0x73106343
#data 0xCB086030
#data 0x62E32300
#data 0x6320721F
#data 0x2388633C
#data 0x84E28B0A
#data 0xBBDACB04
#data 0xA00680E2
#data 0xE004

loc_8c1B044E:
#data 0x63E3
#data 0x60307310
#data 0x2300C9F7

loc_8c1B0458:
#data 0xE000

loc_8c1B045A:
#data 0x7F04
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1B046E:
mov.l r14,@-r15
mov.l @(loc_8c1B049C,pc),r14 ; r14 set to 0x8C34B288
sts.l pr,@-r15
mov r14,r4 ; r4 set to 0x8C34B288
mov.b @(0x0E,r4),r0
extu.b r0,r0
tst 0x10,r0
bt loc_8c1B04A0
mov.b @(0x0E,r4),r0
and 0xEF,r0
mov.b r0,@(0x0E,r4)
lds.l @r15+,pr
bra bank1a.loc_8c1aFCF4
mov.l @r15+,r14
#data 0x0000

#align4
loc_8c1B048C:
#data bank1a.loc_8c1a122A

loc_8c1B0490:
#data bank1a.loc_8c1a124C
#data 0x8C34B110

#align4
loc_8c1B0498:
#data loc_8c1B3EEC

loc_8c1B049C:
#data 0x8C34B288

#align4
loc_8c1B04A0:
#data 0x00096043
#data 0x60007015
#data 0xC820600C
#data 0x6343890B
#data 0x60307315
#data 0xBC2DC9DF
#data 0x84E62300
#data 0x80E6CB40
#data 0xCB0184E7
#data 0x80E7

loc_8c1B04C6:
#data 0x4F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------

loc_8c1B04CC:
rts
nop
;-------------------------------------------------------------------------------

loc_8c1B04D0:
mov.l r14,@-r15
mov r4,r14
mov.l @(loc_8c1B05C0,pc),r3 ; r3 set to 0x8C34B200
sts.l pr,@-r15
mov.b r14,@r3 ; r3 ??? bc r14 is ???
mov.l @(loc_8c1B05C4,pc),r2 ; r2 set to 0x8C1A0100
jsr @r2
mov r14,r4
lds.l @r15+,pr
mov.l @(loc_8c1B05D0,pc),r3 ; r3 set to 0x8C1A01E4
mov r14,r4
mov.l @(loc_8c1B05C8,pc),r6 ; r6 set to 0x8C34B1FC
mov.l @(loc_8c1B05CC,pc),r5 ; r5 set to 0x8C34B1F8
jmp @r3
mov.l @r15+,r14

loc_8c1B04EE:
sts.l pr,@-r15
mov.l @(loc_8c1B05D4,pc),r3 ; r3 set to 0x8C1A0164
jsr @r3
nop
exts.b r0,r0
tst r0,r0
bf loc_8c1B0502
lds.l @r15+,pr
rts
mov 0x00,r0
;-------------------------------------------------------------------------------

loc_8c1B0502:
mov 0x01,r0 ; r0 set to 0x01
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c1B050A:
mov.l @(loc_8c1B05C8,pc),r3 ; r3 set to 0x8C34B1FC
mov.w @(loc_8c1B05BC,pc),r7 ; r7 set to 0xFF
bra loc_8c1B054C
mov.l @r3,r6

loc_8c1B0512:
mov.b @r6,r1
extu.b r4,r3
extu.b r1,r1
cmp/eq r3,r1
bf loc_8c1B054A
mov.b @(0x02,r6),r0
mov.b @r5,r4
mov r0,r7
extu.b r7,r3
extu.b r4,r2
cmp/gt r3,r2
bf loc_8c1B052E
bra loc_8c1B0530
mov r4,r3

loc_8c1B052E:
mov r7,r3

loc_8c1B0530:
mov.b r3,@r5
mov.b @(0x03,r6),r0
mov.b @r5,r4
mov r0,r7
extu.b r7,r2
extu.b r4,r3
cmp/ge r2,r3
bt loc_8c1B0544
bra loc_8c1B0546
mov r4,r2

loc_8c1B0544:
mov r7,r2

loc_8c1B0546:
rts
mov.b r2,@r5
;-------------------------------------------------------------------------------

loc_8c1B054A:
add 0x04,r6

loc_8c1B054C:
mov.b @r6,r3
extu.b r3,r3
cmp/eq r7,r3
bf loc_8c1B0512
rts
nop
;-------------------------------------------------------------------------------

loc_8c1B0558:
mov.l r13,@-r15
mov.l @(loc_8c1B05C8,pc),r3 ; r3 set to 0x8C34B1FC
mov.w @(loc_8c1B05BC,pc),r7 ; r7 set to 0xFF
bra loc_8c1B058A
mov.l @r3,r5

loc_8c1B0562:
#data 0x6D50
#data 0x6DDC8452
#data 0x61033D4C
#data 0x621C66D0
#data 0x3327636C
#data 0x66138900

#align4
loc_8c1B0578:
#data 0x636C8453
#data 0x621C6103
#data 0x8B003323
#data 0x6613

loc_8c1B0586:
#data 0x7504
#data 0x2D60


loc_8c1B058A:
mov.b @r5,r3
extu.b r3,r3
cmp/eq r7,r3
bf loc_8c1B0562
rts
mov.l @r15+,r13
;-------------------------------------------------------------------------------
#data 0xD30C
#data 0xA0099710
#data 0x61606632
#data 0x611C634C
#data 0x8B023130
#data 0x000B8461
#data 0x76042500
#data 0x633C6360
#data 0x8BF23370
#data 0x0009000B
;-------------------------------------------------------------------------------

loc_8c1B05BC:
#data 0x00FF
#data 0x0000

#align4
loc_8c1B05C0:
#data 0x8C34B200

#align4
loc_8c1B05C4:
#data bank1a.loc_8c1a0100

loc_8c1B05C8:
#data 0x8C34B1FC

#align4
loc_8c1B05CC:
#data 0x8C34B1F8

#align4
loc_8c1B05D0:
#data bank1a.loc_8c1a01E4

loc_8c1B05D4:
#data bank1a.loc_8c1a0164


loc_8c1B05D8:
mov.l @(loc_8c1B06C4,pc),r5 ; r5 set to 0x8C34B1F8
mov 0x23,r0 ; r0 set to 0x23
mov r0,r2 ; r2 set to 0x23
add 0x67,r2 ; r2 set to 0x8A
mov.l @r5,r3
add r3,r2 ; r2 ??? bc r3 is ???
mov.b @r2,r2
mov.b r2,@(r0,r4)
mov 0x39,r0 ; r0 set to 0x39
mov r0,r2 ; r2 set to 0x39
mov.l @r5,r3
add 0x51,r2 ; r2 set to 0x8A
add r3,r2 ; r2 ??? bc r3 is ???
mov.b @r2,r2
mov.b r2,@(r0,r4)
mov.w @(loc_8c1B06BC,pc),r6 ; r6 set to 0xFF
mov.l @(loc_8c1B06C8,pc),r3 ; r3 set to 0x8C34B1FC
bra loc_8c1B060A
mov.l @r3,r5

loc_8c1B05FE:
mov.b @r5,r0
extu.b r0,r3
mov.b @(0x01,r5),r0
add r4,r3
add 0x04,r5
mov.b r0,@r3

loc_8c1B060A:
mov.b @r5,r3
extu.b r3,r3
cmp/eq r6,r3
bf loc_8c1B05FE
rts
nop
;-------------------------------------------------------------------------------

loc_8c1B0616:
mov.l @(loc_8c1B06CC,pc),r3 ; r3 set to 0x8C34B201
mov 0x00,r4 ; r4 set to 0x00
mov.b r4,@r3 ; r3 ??
mov.l @(loc_8c1B06D0,pc),r2 ; r2 set to 0x8C34B202
mov.b r4,@r2 ; r2 ??
mov.l @(loc_8c1B06D4,pc),r1 ; r1 set to 0x8C34B203
rts
mov.b r4,@r1
;-------------------------------------------------------------------------------

loc_8c1B0626:
mov.l @(loc_8c1B06D8,pc),r3 ; r3 set to 0x8C34B204
mov 0x00,r4 ; r4 set to 0x00
mov.b r4,@r3 ; r3 ??
mov.l @(loc_8c1B06DC,pc),r2 ; r2 set to 0x8C34B205
mov.b r4,@r2 ; r2 ??
mov.l @(loc_8c1B06E0,pc),r1 ; r1 set to 0x8C34B206
mov.b r4,@r1 ; r1 ??
mov.l @(loc_8c1B06E4,pc),r3 ; r3 set to 0x8C34B207
mov.b r4,@r3 ; r3 ??
mov.l @(loc_8c1B06E8,pc),r2 ; r2 set to 0x8C34B208
mov.b r4,@r2 ; r2 ??
mov.l @(loc_8c1B06EC,pc),r1 ; r1 set to 0x8C34B209
mov.b r4,@r1 ; r1 ??
mov.l @(loc_8c1B06F0,pc),r3 ; r3 set to 0x8C34B20A
mov.b r4,@r3 ; r3 ??
mov.l @(loc_8c1B06F4,pc),r2 ; r2 set to 0x8C34B20B
rts
mov.b r4,@r2
;-------------------------------------------------------------------------------

loc_8c1B064A:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r10,@-r15
mov.l @(loc_8c1B06C4,pc),r3 ; r3 set to 0x8C34B1F8
mov.w @(loc_8c1B06BE,pc),r0 ; r0 set to 0xB0
mov.l @r3,r7
mov.w @(loc_8c1B06C0,pc),r1 ; r1 set to 0x800
mov.w @(r0,r7),r2
mov.l @(loc_8c1B06F8,pc),r14 ; r14 set to 0x8C34B106
extu.w r2,r2
mov.l @(loc_8c1B06DC,pc),r13 ; r13 set to 0x8C34B205
tst r1,r2
bf/s loc_8c1B066C
mov 0x00,r12 ; r12 set to 0x00
bra loc_8c1B07E2
nop

loc_8c1B066C:
extu.b r4,r4
mov.b @r13,r3
mov.l @(loc_8c1B06D8,pc),r6 ; r6 set to 0x8C34B204
tst r4,r4
bf/s loc_8c1B074E
extu.b r3,r3
mov r3,r0
nop
cmp/eq 0x00,r0
bt loc_8c1B068C
cmp/eq 0x02,r0
bt loc_8c1B06FC
cmp/eq 0x04,r0
bt loc_8c1B071A
bra loc_8c1B0742
nop

#align4
loc_8c1B068C:
#data 0x037DE030
#data 0x3536633D
#data 0xE0328904
#data 0x622D027D
#data 0x89463522

#align4
loc_8c1B06A0:
#data 0x027DE038
#data 0x3526622D
#data 0xA0948B01
#data 0x0009

loc_8c1B06AE:
#data 0xE03A
#data 0x622D027D
#data 0x892B3522
#data 0x0009A08D

loc_8c1B06BC:
#data 0x00FF

loc_8c1B06BE:
#data 0x00B0

loc_8c1B06C0:
#data 0x0800
#data 0x0000

#align4
loc_8c1B06C4:
#data 0x8C34B1F8

#align4
loc_8c1B06C8:
#data 0x8C34B1FC

#align4
loc_8c1B06CC:
#data 0x8C34B201

#align4
loc_8c1B06D0:
#data 0x8C34B202

#align4
loc_8c1B06D4:
#data 0x8C34B203

#align4
loc_8c1B06D8:
#data 0x8C34B204

#align4
loc_8c1B06DC:
#data 0x8C34B205

#align4
loc_8c1B06E0:
#data 0x8C34B206

#align4
loc_8c1B06E4:
#data 0x8C34B207

#align4
loc_8c1B06E8:
#data 0x8C34B208

#align4
loc_8c1B06EC:
#data 0x8C34B209

#align4
loc_8c1B06F0:
#data 0x8C34B20A

#align4
loc_8c1B06F4:
#data 0x8C34B20B

#align4
loc_8c1B06F8:
#data 0x8C34B106

#align4
loc_8c1B06FC:
#data 0x027DE038
#data 0x3526622D
#data 0xE03A8919
#data 0x622D027D
#data 0x8B143522

#align4
loc_8c1B0710:
#data 0xCB026060
#data 0xA00E2600
#data 0xE203

loc_8c1B071A:
#data 0xE030
#data 0x633D037D
#data 0x890A3536
#data 0x027DE032
#data 0x3522622D
#data 0x8B05

loc_8c1B072E:
#data 0x6060
#data 0xCB01E201
#data 0x2600

loc_8c1B0736:
#data 0xA04E
#data 0x2D20

loc_8c1B073A:
#data 0x6060
#data 0xA003C9FC
#data 0x2600

loc_8c1B0742:
#data 0x6060
#data 0x2600C9FC

#align4
loc_8c1B0748:
#data 0xA0442EC0
#data 0x2DC0


loc_8c1B074E:
mov.b @r6,r10
mov 0x02,r4 ; r4 set to 0x02
mov r3,r0
nop
cmp/eq 0x01,r0
bt/s loc_8c1B0764
extu.b r10,r10
cmp/eq 0x03,r0
bt loc_8c1B079C
bra loc_8c1B07D6
nop

loc_8c1B0764:
mov 0x34,r0 ; r0 set to 0x34
mov.w @(r0,r7),r3
extu.w r3,r3
cmp/hi r3,r5
bt loc_8c1B0792
mov 0x36,r0 ; r0 set to 0x36
mov.w @(r0,r7),r2
extu.w r2,r2
cmp/hs r2,r5
bf loc_8c1B0792
mov r10,r2
tst r4,r2
bt loc_8c1B07D4
mov 0x01,r1 ; r1 set to 0x01
tst r10,r1
bt loc_8c1B07D4
mov.b @r14,r2
add 0x01,r2
mov.b r2,@r14
mov.b @r6,r0 ; r0 ??? bc r6 is ???
and 0xFC,r0
bra loc_8c1B07D4
mov.b r0,@r6

loc_8c1B0792:
mov.b @r6,r0
and 0xFC,r0
mov.b r0,@r6
bra loc_8c1B07C6
mov.b r12,@r14

#align4
loc_8c1B079C:
#data 0x037DE03C
#data 0x3536633D
#data 0xE03E8912
#data 0x622D027D
#data 0x8B0D3522
#data 0x890824A8
#data 0x23A8E301
#data 0x61E08905
#data 0x2E107101
#data 0xC9FC6060
#data 0x2600


loc_8c1B07C6:
mov 0x04,r3 ; r3 set to 0x04
bra loc_8c1B07D6
mov.b r3,@r13

#align4
loc_8c1B07CC:
#data 0xC9FC6060
#data 0x2EC02600

loc_8c1B07D4:
#data 0x2D40


loc_8c1B07D6:
mov.b @r14,r0
extu.b r0,r0
cmp/eq 0x03,r0
bf loc_8c1B07E2
bra loc_8c1B07E4
mov 0x01,r0

loc_8c1B07E2:
mov 0x00,r0 ; r0 set to 0x00

loc_8c1B07E4:
mov.l @r15+,r10
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1B07EE:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r10,@-r15
mov.l @(loc_8c1B08D4,pc),r3 ; r3 set to 0x8C34B1F8
mov.w @(loc_8c1B08C8,pc),r0 ; r0 set to 0xB0
mov.l @r3,r6
mov.w @(loc_8c1B08CA,pc),r1 ; r1 set to 0x1000
mov.w @(r0,r6),r2
mov.l @(loc_8c1B08D0,pc),r14 ; r14 set to 0x8C34B207
extu.w r2,r2
mov.l @(loc_8c1B08CC,pc),r13 ; r13 set to 0x8C34B206
tst r1,r2
bf/s loc_8c1B0810
mov 0x00,r12 ; r12 set to 0x00
bra loc_8c1B098C
nop

loc_8c1B0810:
extu.b r4,r4
mov.b @r13,r3
mov.l @(loc_8c1B08D8,pc),r7 ; r7 set to 0x8C34B204
tst r4,r4
bf/s loc_8c1B08B2
extu.b r3,r3
mov r3,r0
nop
cmp/eq 0x00,r0
bt loc_8c1B0830
cmp/eq 0x02,r0
bt loc_8c1B0860
cmp/eq 0x04,r0
bt loc_8c1B087E
bra loc_8c1B08A6
nop

#align4
loc_8c1B0830:
#data 0x036DE040
#data 0x3536633D
#data 0xE0428904
#data 0x622D026D
#data 0x89263522

#align4
loc_8c1B0844:
#data 0x026DE048
#data 0x3526622D
#data 0xA0958B01
#data 0x0009

loc_8c1B0852:
#data 0xE04A
#data 0x622D026D
#data 0x890B3522
#data 0x0009A08E

#align4
loc_8c1B0860:
#data 0x026DE048
#data 0x3526622D
#data 0xE04A8919
#data 0x622D026D
#data 0x8B143522

#align4
loc_8c1B0874:
#data 0xCB206070
#data 0xA00E2700
#data 0xE203

loc_8c1B087E:
#data 0xE040
#data 0x633D036D
#data 0x890A3536
#data 0x026DE042
#data 0x3522622D
#data 0x8B05

loc_8c1B0892:
#data 0x6070
#data 0xCB10E201
#data 0x2700

loc_8c1B089A:
#data 0xA06F
#data 0x2D20

loc_8c1B089E:
#data 0x6070
#data 0xA003C9CF
#data 0x2700

loc_8c1B08A6:
#data 0x6070
#data 0x2700C9CF

#align4
loc_8c1B08AC:
#data 0xA0652EC0
#data 0x2DC0


loc_8c1B08B2:
mov.b @r7,r10
mov 0x10,r4 ; r4 set to 0x10
mov r3,r0
nop
cmp/eq 0x01,r0
bt/s loc_8c1B08DC
extu.b r10,r10
cmp/eq 0x03,r0
bt loc_8c1B092A
bra loc_8c1B097C
nop

loc_8c1B08C8:
#data 0x00B0

loc_8c1B08CA:
#data 0x1000

#align4
loc_8c1B08CC:
#data 0x8C34B206

#align4
loc_8c1B08D0:
#data 0x8C34B207

#align4
loc_8c1B08D4:
#data 0x8C34B1F8

#align4
loc_8c1B08D8:
#data 0x8C34B204

#align4
loc_8c1B08DC:
#data 0x036DE044
#data 0x3536633D
#data 0xE046891C
#data 0x622D026D
#data 0x8B173522
#data 0x890224A8
#data 0x23A8E320
#data 0x8B0B

loc_8c1B08FA:
#data 0xE044
#data 0xE04C016D
#data 0x3130036D
#data 0xE0468B38
#data 0xE04E026D
#data 0x3230036D
#data 0x8B32

loc_8c1B0912:
#data 0x62E0
#data 0x2E207201
#data 0xC9CF6070
#data 0x2700A02C

#align4
loc_8c1B0920:
#data 0xC9CF6070
#data 0xA0212700
#data 0x2EC0

loc_8c1B092A:
#data 0xE04C
#data 0x633D036D
#data 0x891D3536
#data 0x026DE04E
#data 0x3522622D
#data 0x24A88B18
#data 0xE3208902
#data 0x8B0B23A8

#align4
loc_8c1B0948:
#data 0x016DE044
#data 0x036DE04C
#data 0x8B0B3130
#data 0x026DE046
#data 0x036DE04E
#data 0x8B053230

#align4
loc_8c1B0960:
#data 0x720162E0
#data 0x60702E20
#data 0x2700C9CF

#align4
loc_8c1B096C:
#data 0xE304A005

#align4
loc_8c1B0970:
#data 0xC9CF6070
#data 0x2EC02700

loc_8c1B0978:
#data 0xE302

loc_8c1B097A:
#data 0x2D30


loc_8c1B097C:
mov.b @r14,r2
mov 0x01,r3 ; r3 set to 0x01
extu.b r2,r2
cmp/ge r3,r2
bf loc_8c1B098C
mov.b r12,@r14
bra loc_8c1B098E
mov 0x01,r0

loc_8c1B098C:
mov 0x00,r0 ; r0 set to 0x00

loc_8c1B098E:
mov.l @r15+,r10
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1B0998:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r10,@-r15
mov.l @(loc_8c1B0A80,pc),r3 ; r3 set to 0x8C34B1F8
mov.w @(loc_8c1B0A72,pc),r0 ; r0 set to 0xB0
mov.l @r3,r7
mov.w @(loc_8c1B0A74,pc),r1 ; r1 set to 0x2000
mov.w @(r0,r7),r2
mov.l @(loc_8c1B0A7C,pc),r14 ; r14 set to 0x8C34B209
extu.w r2,r2
mov.l @(loc_8c1B0A78,pc),r13 ; r13 set to 0x8C34B208
tst r1,r2
bf/s loc_8c1B09BA
mov 0x00,r12 ; r12 set to 0x00
bra loc_8c1B0B06
nop

loc_8c1B09BA:
extu.b r4,r4
mov.b @r13,r3
mov.l @(loc_8c1B0A84,pc),r6 ; r6 set to 0x8C34B204
tst r4,r4
bf/s loc_8c1B0A5C
extu.b r3,r3
mov r3,r0
nop
cmp/eq 0x00,r0
bt loc_8c1B09DA
cmp/eq 0x02,r0
bt loc_8c1B0A0A
cmp/eq 0x04,r0
bt loc_8c1B0A28
bra loc_8c1B0A50
nop

loc_8c1B09DA:
#data 0xE060
#data 0x633D037D
#data 0x89043536
#data 0x027DE062
#data 0x3522622D
#data 0x8926

loc_8c1B09EE:
#data 0xE068
#data 0x622D027D
#data 0x8B013526
#data 0x0009A07F

#align4
loc_8c1B09FC:
#data 0x027DE06A
#data 0x3522622D
#data 0xA078890B
#data 0x0009

loc_8c1B0A0A:
#data 0xE068
#data 0x622D027D
#data 0x89193526
#data 0x027DE06A
#data 0x3522622D
#data 0x8B14

loc_8c1B0A1E:
#data 0x6060
#data 0x2600CB08
#data 0xE203A00E

#align4
loc_8c1B0A28:
#data 0x037DE060
#data 0x3536633D
#data 0xE062890A
#data 0x622D027D
#data 0x8B053522

#align4
loc_8c1B0A3C:
#data 0xE2016060
#data 0x2600CB04

#align4
loc_8c1B0A44:
#data 0x2D20A059

#align4
loc_8c1B0A48:
#data 0xC9F36060
#data 0x2600A003

#align4
loc_8c1B0A50:
#data 0xC9F36060
#data 0x2600

loc_8c1B0A56:
#data 0x2EC0
#data 0x2DC0A04F


loc_8c1B0A5C:
mov.b @r6,r10
mov 0x04,r4 ; r4 set to 0x04
mov r3,r0
nop
cmp/eq 0x01,r0
bt/s loc_8c1B0A88
extu.b r10,r10
cmp/eq 0x03,r0
bt loc_8c1B0ABE
bra loc_8c1B0AFA
nop

loc_8c1B0A72:
#data 0x00B0

loc_8c1B0A74:
#data 0x2000
#data 0x0000

#align4
loc_8c1B0A78:
#data 0x8C34B208

#align4
loc_8c1B0A7C:
#data 0x8C34B209

#align4
loc_8c1B0A80:
#data 0x8C34B1F8

#align4
loc_8c1B0A84:
#data 0x8C34B204


loc_8c1B0A88:
mov 0x64,r0 ; r0 set to 0x64
mov.w @(r0,r7),r3
extu.w r3,r3
cmp/hi r3,r5
bt loc_8c1B0AB4
mov 0x66,r0 ; r0 set to 0x66
mov.w @(r0,r7),r2
extu.w r2,r2
cmp/hs r2,r5
bf loc_8c1B0AB4
tst r10,r4
bt loc_8c1B0AF6
mov 0x08,r3 ; r3 set to 0x08
tst r10,r3
bt loc_8c1B0AF6
mov.b @r14,r1
add 0x01,r1
mov.b r1,@r14
mov.b @r6,r0 ; r0 ??? bc r6 is ???
and 0xF3,r0
bra loc_8c1B0AF6
mov.b r0,@r6

loc_8c1B0AB4:
mov.b @r6,r0
and 0xF3,r0
mov.b r0,@r6
bra loc_8c1B0AEA
mov.b r12,@r14

loc_8c1B0ABE:
#data 0xE06C
#data 0x633D037D
#data 0x89123536
#data 0x027DE06E
#data 0x3522622D
#data 0x62A38B0D
#data 0x89082248
#data 0x21A8E108
#data 0x62E08905
#data 0x2E207201
#data 0xC9F36060
#data 0x2600


loc_8c1B0AEA:
bra loc_8c1B0AFA
mov.b r4,@r13

loc_8c1B0AEE:
#data 0x6060
#data 0x2600C9F3
#data 0x2EC0

loc_8c1B0AF6:
#data 0xE202
#data 0x2D20


loc_8c1B0AFA:
mov.b @r14,r0
extu.b r0,r0
cmp/eq 0x03,r0
bf loc_8c1B0B06
bra loc_8c1B0B08
mov 0x01,r0

loc_8c1B0B06:
mov 0x00,r0 ; r0 set to 0x00

loc_8c1B0B08:
mov.l @r15+,r10
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1B0B12:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r10,@-r15
mov.l @(loc_8c1B0B60,pc),r3 ; r3 set to 0x8C34B1F8
mov.w @(loc_8c1B0B54,pc),r0 ; r0 set to 0xB0
mov.l @r3,r7
mov.w @(loc_8c1B0B56,pc),r1 ; r1 set to 0x4000
mov.w @(r0,r7),r2
mov.l @(loc_8c1B0B5C,pc),r14 ; r14 set to 0x8C34B20B
extu.w r2,r2
mov.l @(loc_8c1B0B58,pc),r13 ; r13 set to 0x8C34B20A
tst r1,r2
bf/s loc_8c1B0B34
mov 0x00,r12 ; r12 set to 0x00
bra loc_8c1B0C7A
nop

loc_8c1B0B34:
extu.b r4,r4
mov.b @r13,r3
mov.l @(loc_8c1B0B64,pc),r6 ; r6 set to 0x8C34B204
tst r4,r4
bf/s loc_8c1B0BE6
extu.b r3,r3
mov r3,r0
nop
cmp/eq 0x00,r0
bt loc_8c1B0B68
cmp/eq 0x02,r0
bt loc_8c1B0B94
cmp/eq 0x04,r0
bt loc_8c1B0BB2
bra loc_8c1B0BDA
nop

loc_8c1B0B54:
#data 0x00B0

loc_8c1B0B56:
#data 0x4000

#align4
loc_8c1B0B58:
#data 0x8C34B20A

#align4
loc_8c1B0B5C:
#data 0x8C34B20B

#align4
loc_8c1B0B60:
#data 0x8C34B1F8

#align4
loc_8c1B0B64:
#data 0x8C34B204

#align4
loc_8c1B0B68:
#data 0x037DE050
#data 0x3536633D
#data 0xE0528904
#data 0x622D027D
#data 0x89243522

#align4
loc_8c1B0B7C:
#data 0x027DE058
#data 0x3526622D
#data 0xE05A8973
#data 0x622D027D
#data 0x890B3522
#data 0x0009A06D

#align4
loc_8c1B0B94:
#data 0x027DE058
#data 0x3526622D
#data 0xE05A8919
#data 0x622D027D
#data 0x8B143522

#align4
loc_8c1B0BA8:
#data 0xCB806060
#data 0xA00E2600
#data 0xE203

loc_8c1B0BB2:
#data 0xE050
#data 0x633D037D
#data 0x890A3536
#data 0x027DE052
#data 0x3522622D
#data 0x8B05

loc_8c1B0BC6:
#data 0x6060
#data 0xCB40E201
#data 0x2600

loc_8c1B0BCE:
#data 0xA04E
#data 0x2D20

loc_8c1B0BD2:
#data 0x6060
#data 0xA003C93F
#data 0x2600

loc_8c1B0BDA:
#data 0x6060
#data 0x2600C93F

#align4
loc_8c1B0BE0:
#data 0xA0442EC0
#data 0x2DC0


loc_8c1B0BE6:
mov.b @r6,r10
mov.w @(loc_8c1B0C32,pc),r4 ; r4 set to 0x80
mov r3,r0
nop
cmp/eq 0x01,r0
bt/s loc_8c1B0BFC
extu.b r10,r10
cmp/eq 0x03,r0
bt loc_8c1B0C34
bra loc_8c1B0C6E
nop

loc_8c1B0BFC:
mov 0x54,r0 ; r0 set to 0x54
mov.w @(r0,r7),r3
extu.w r3,r3
cmp/hi r3,r5
bt loc_8c1B0C28
mov 0x56,r0 ; r0 set to 0x56
mov.w @(r0,r7),r2
extu.w r2,r2
cmp/hs r2,r5
bf loc_8c1B0C28
tst r10,r4
bt loc_8c1B0C6A
mov 0x40,r3 ; r3 set to 0x40
tst r10,r3
bt loc_8c1B0C6A
mov.b @r14,r1
add 0x01,r1
mov.b r1,@r14
mov.b @r6,r0 ; r0 ??? bc r6 is ???
and 0x3F,r0
bra loc_8c1B0C6A
mov.b r0,@r6

loc_8c1B0C28:
mov.b @r6,r0
and 0x3F,r0
mov.b r0,@r6
bra loc_8c1B0C5E
mov.b r12,@r14

loc_8c1B0C32:
#data 0x0080

#align4
loc_8c1B0C34:
#data 0x037DE05C
#data 0x3536633D
#data 0xE05E8911
#data 0x622D027D
#data 0x8B0C3522
#data 0x890824A8
#data 0x23A8E340
#data 0x61E08905
#data 0x2E107101
#data 0xC93F6060
#data 0x2600


loc_8c1B0C5E:
bra loc_8c1B0C6C
mov 0x04,r3

loc_8c1B0C62:
#data 0x6060
#data 0x2600C93F
#data 0x2EC0

loc_8c1B0C6A:
#data 0xE302


loc_8c1B0C6C:
mov.b r3,@r13

loc_8c1B0C6E:
mov.b @r14,r0
extu.b r0,r0
cmp/eq 0x03,r0
bf loc_8c1B0C7A
bra loc_8c1B0C7C
mov 0x01,r0

loc_8c1B0C7A:
mov 0x00,r0 ; r0 set to 0x00

loc_8c1B0C7C:
mov.l @r15+,r10
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1B0C86:
mov 0x70,r0 ; r0 set to 0x70
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l @(loc_8c1B0E20,pc),r3 ; r3 set to 0x8C34B1F8
mov.l @(loc_8c1B0E18,pc),r13 ; r13 set to 0x8C34B202
mov.l @r3,r7
mov.l @(loc_8c1B0E1C,pc),r14 ; r14 set to 0x8C34B203
mov.w @(r0,r7),r2
extu.w r2,r2
cmp/pl r2
bt/s loc_8c1B0CA8
mov 0x00,r12 ; r12 set to 0x00
bra loc_8c1B0DD8
nop

loc_8c1B0CA8:
mov.b @r13,r2
extu.b r4,r4
mov.l @(loc_8c1B0E24,pc),r6 ; r6 set to 0x8C34B201
tst r4,r4
mov 0x01,r10 ; r10 set to 0x01
bf/s loc_8c1B0D48
extu.b r2,r2
mov r2,r0
nop
cmp/eq 0x00,r0
bt loc_8c1B0CCA
cmp/eq 0x02,r0
bt loc_8c1B0CF6
cmp/eq 0x04,r0
bt loc_8c1B0D16
bra loc_8c1B0D3C
nop

loc_8c1B0CCA:
#data 0xE070
#data 0x622D027D
#data 0x89043526
#data 0x017DE072
#data 0x3512611D
#data 0x8925

loc_8c1B0CDE:
#data 0xE078
#data 0x633D037D
#data 0x89713536
#data 0x027DE07A
#data 0x3522622D
#data 0xA06B890B
#data 0x0009

loc_8c1B0CF6:
#data 0xE078
#data 0x622D027D
#data 0x89193526
#data 0x017DE07A
#data 0x3512611D
#data 0x8B14

loc_8c1B0D0A:
#data 0x6060
#data 0xCB02E303
#data 0xA05B2600
#data 0x2D30

loc_8c1B0D16:
#data 0xE070
#data 0x622D027D
#data 0x89093526
#data 0x017DE072
#data 0x3512611D
#data 0x8B04

loc_8c1B0D2A:
#data 0x6060
#data 0x2600CB01
#data 0x2DA0A04C

#align4
loc_8c1B0D34:
#data 0xC9FC6060
#data 0x2600A003

#align4
loc_8c1B0D3C:
#data 0xC9FC6060
#data 0x2600

loc_8c1B0D42:
#data 0x2EC0
#data 0x2DC0A042


loc_8c1B0D48:
mov.b @r6,r9
mov r2,r0
nop
cmp/eq 0x01,r0
bt/s loc_8c1B0D5C
extu.b r9,r9
cmp/eq 0x03,r0
bt loc_8c1B0D92
bra loc_8c1B0DCC
nop

loc_8c1B0D5C:
mov 0x74,r0 ; r0 set to 0x74
mov.w @(r0,r7),r1
extu.w r1,r1
cmp/hi r1,r5
bt loc_8c1B0D88
mov 0x76,r0 ; r0 set to 0x76
mov.w @(r0,r7),r1
extu.w r1,r1
cmp/hs r1,r5
bf loc_8c1B0D88
tst r9,r10
bt loc_8c1B0DC8
mov 0x02,r2 ; r2 set to 0x02
tst r9,r2
bt loc_8c1B0DC8
mov.b @r14,r1
add 0x01,r1
mov.b r1,@r14
mov.b @r6,r0 ; r0 ??? bc r6 is ???
and 0xFC,r0
bra loc_8c1B0DC8
mov.b r0,@r6

loc_8c1B0D88:
mov.b @r6,r0
and 0xFC,r0
mov.b r0,@r6
bra loc_8c1B0DBC
mov.b r12,@r14

loc_8c1B0D92:
#data 0xE07C
#data 0x611D017D
#data 0x89113516
#data 0x017DE07E
#data 0x3512611D
#data 0x2A988B0C
#data 0xE2028908
#data 0x89052298
#data 0x710161E0
#data 0x60602E10
#data 0x2600C9FC


loc_8c1B0DBC:
bra loc_8c1B0DCA
mov 0x04,r3

#align4
loc_8c1B0DC0:
#data 0xC9FC6060
#data 0x2EC02600

loc_8c1B0DC8:
#data 0xE302


loc_8c1B0DCA:
mov.b r3,@r13

loc_8c1B0DCC:
mov.b @r14,r0
extu.b r0,r0
cmp/eq 0x01,r0
bf loc_8c1B0DD8
bra loc_8c1B0DDA
mov 0x01,r0

loc_8c1B0DD8:
mov 0x00,r0 ; r0 set to 0x00

loc_8c1B0DDA:
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1B0DE6:
mov.l @(loc_8c1B0E20,pc),r3 ; r3 set to 0x8C34B1F8
mov 0x2E,r1 ; r1 set to 0x2E
mov.l @r3,r0
mov.b @(r0,r1),r0
extu.b r0,r0
cmp/eq 0x00,r0
bt/s loc_8c1B0E0E
extu.b r4,r5
cmp/eq 0x01,r0
bt loc_8c1B0E02
cmp/eq 0x02,r0
bt loc_8c1B0E08
bra loc_8c1B0E0E
nop

loc_8c1B0E02:
mov.l @(loc_8c1B0E28,pc),r0 ; r0 set to 0x8C1C7ED8
bra loc_8c1B0E0A
nop

loc_8c1B0E08:
#data 0xD008


loc_8c1B0E0A:
rts
mov.b @(r0,r5),r0
;-------------------------------------------------------------------------------

loc_8c1B0E0E:
mov r4,r0
nop
rts
nop
;-------------------------------------------------------------------------------
#data 0x0000

#align4
loc_8c1B0E18:
#data 0x8C34B202

#align4
loc_8c1B0E1C:
#data 0x8C34B203

#align4
loc_8c1B0E20:
#data 0x8C34B1F8

#align4
loc_8c1B0E24:
#data 0x8C34B201

#align4
loc_8c1B0E28:
#data bank1c.loc_8c1c7ED8

loc_8c1B0E2C:
#data bank1c.loc_8c1c7EE2


loc_8c1B0E30:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
sts.l pr,@-r15
mov.w @(loc_8c1B0F70,pc),r4 ; r4 set to 0x2E3
mov.l @(loc_8c1B0F78,pc),r3 ; r3 set to 0x8C19E1F8
mov.w @(loc_8c1B0F6E,pc),r11 ; r11 set to 0x3B0
mov.l @(loc_8c1B0F74,pc),r12 ; r12 set to 0x8C34B23C
jsr @r3
mov 0x01,r5 ; r5 set to 0x01
mov 0x00,r14 ; r14 set to 0x00
mov.w r0,@r12 ; r12 ??? bc r0 is ???
mov.l @(loc_8c1B0F80,pc),r10 ; r10 set to 0x8C1C7EF0
mov 0x0F,r13 ; r13 set to 0x0F
mov.l @(loc_8c1B0F7C,pc),r9 ; r9 set to 0x8C19E30C

loc_8c1B0E54:
mov.b @r12,r0
extu.b r14,r5 ; r5 set to 0x00
mov r11,r4 ; r4 set to 0x3B0
mov 0x01,r6 ; r6 set to 0x01, r6 set to 0x01
mov r0,r3 ; r3 ??? bc r0 is ???
shll2 r0
shll2 r0
sub r3,r0
exts.b r0,r0
add r10,r0
mov.b @(r0,r5),r5 ; r5 ??
extu.b r5,r5
jsr @r9
add 0x01,r11 ; r11 set to 0x3B1
add 0x01,r14 ; r14 set to 0x01
extu.b r14,r3 ; r3 set to 0x01
cmp/ge r13,r3
bf loc_8c1B0E54
lds.l @r15+,pr
mov.l @r15+,r9 ; r9 ??? bc r15 is ???
mov.l @r15+,r10 ; r10 ??? bc r15 is ???
mov.l @r15+,r11 ; r11 ??? bc r15 is ???
mov.l @r15+,r12
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1B0E88:
mov.l r14,@-r15
mov.l @(loc_8c1B0F84,pc),r14 ; r14 set to 0x8C347979
sts.l pr,@-r15
mov.b @(0x01,r14),r0
and 0x7F,r0
mov.b r0,@(0x01,r14)
mov.b @r14,r0
and 0xFE,r0
mov.b r0,@r14 ; r14 ??? bc r0 is ???
mov.b @r14,r0
and 0xBF,r0
mov.b r0,@r14
mov.b @r14,r0
and 0xFB,r0
mov.b r0,@r14
mov.b @(0x01,r14),r0
and 0xEF,r0
mov.b r0,@(0x01,r14)
mov.b @(0x01,r14),r0
and 0xBF,r0
mov.b r0,@(0x01,r14)
mov.b @(0x01,r14),r0
and 0xDF,r0
mov.b r0,@(0x01,r14)
mov.b @(0x01,r14),r0
and 0xF7,r0
mov.b r0,@(0x01,r14)
mov.b @(0x01,r14),r0
and 0xFB,r0
mov.b r0,@(0x01,r14)
mov.b @(0x02,r14),r0
and 0xDF,r0
mov.b r0,@(0x02,r14)
mov 0x00,r5 ; r5 set to 0x00
mov.b @(0x02,r14),r0
and 0xBF,r0
mov.b r0,@(0x02,r14)
mov.b @(0x02,r14),r0
and 0x7F,r0
mov.b r0,@(0x02,r14)
mov.b @(0x03,r14),r0
and 0xBF,r0
mov.b r0,@(0x03,r14)
mov.b @(0x03,r14),r0
and 0xDF,r0
mov.b r0,@(0x03,r14)
mov.b @(0x03,r14),r0
and 0xEF,r0
mov.b r0,@(0x03,r14)
mov.b @(0x03,r14),r0
and 0xF7,r0
mov.b r0,@(0x03,r14)
mov.l @(loc_8c1B0F88,pc),r3 ; r3 set to 0x8C347992
mov.w r5,@r3 ; r3 ??
mov.b @(0x02,r14),r0
and 0xEF,r0
mov.b r0,@(0x02,r14)
mov.b @(0x02,r14),r0
and 0xF7,r0
mov.b r0,@(0x02,r14)
mov.b @(0x02,r14),r0
and 0xFB,r0
mov.b r0,@(0x02,r14)
mov.l @(loc_8c1B0F8C,pc),r4 ; r4 set to 0x8C347974
mov.b @(0x01,r4),r0
mov r5,r1 ; r1 set to 0x00
and 0xBF,r0
mov.b r0,@(0x01,r4)
mov.b @(0x01,r4),r0
and 0xDF,r0
mov.b r0,@(0x01,r4)
mov.b @r4,r0
and 0xFD,r0
mov.b r0,@r4 ; r4 ??? bc r0 is ???
mov.b @(0x01,r4),r0
and 0xFD,r0
mov.b r0,@(0x01,r4)
mov.b @r4,r0
and 0xFB,r0
mov.b r0,@r4
mov.l @(loc_8c1B0F90,pc),r2 ; r2 set to 0x8C34B23E
mov.w r5,@r2 ; r2 ??
mov.b @(0x03,r14),r0
and 0xFE,r0
mov.b r0,@(0x03,r14)
mov.b @(0x04,r14),r0
and 0x7F,r0
mov.b r0,@(0x04,r14)
mov.b @(0x04,r14),r0
and 0xBF,r0
mov.b r0,@(0x04,r14)
mov.l @(loc_8c1B0F94,pc),r0 ; r0 set to 0x8C34B234
mov.b r1,@r0 ; r0 ??
mov.l @(loc_8c1B0F98,pc),r3 ; r3 set to 0x8C347970
mov.l @r3,r0
add 0x24,r0
mov.b @r0,r0
tst 0x10,r0
bt loc_8c1B0F62
mov.l @(loc_8c1B0F78,pc),r1 ; r1 set to 0x8C19E1F8
mov.w @(loc_8c1B0F72,pc),r4 ; r4 set to 0x304
jsr @r1
mov 0x01,r5 ; r5 set to 0x01
extu.w r0,r0
tst 0x10,r0
bt loc_8c1B0F62
mov.b @(0x03,r14),r0
bra loc_8c1B0F66
or 0x04,r0

loc_8c1B0F62:
mov.b @(0x03,r14),r0
and 0xFB,r0

loc_8c1B0F66:
lds.l @r15+,pr
mov.b r0,@(0x03,r14)
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1B0F6E:
#data 0x03B0

loc_8c1B0F70:
#data 0x02E3

loc_8c1B0F72:
#data 0x0304

#align4
loc_8c1B0F74:
#data 0x8C34B23C

#align4
loc_8c1B0F78:
#data bank19.loc_8c19E1F8

loc_8c1B0F7C:
#data bank19.loc_8c19E30C

loc_8c1B0F80:
#data bank1c.loc_8c1c7EF0

loc_8c1B0F84:
#data 0x8C347979

#align4
loc_8c1B0F88:
#data 0x8C347992

#align4
loc_8c1B0F8C:
#data 0x8C347974

#align4
loc_8c1B0F90:
#data 0x8C34B23E

#align4
loc_8c1B0F94:
#data 0x8C34B234

#align4
loc_8c1B0F98:
#data 0x8C347970

#align4
loc_8c1B0F9C:
#data 0x4F222FE6
#data 0x7FFCDE3B
#data 0x000960E3
#data 0xC8048403
#data 0xD339892D
#data 0x430B9466
#data 0x2F00E501
#data 0xC802600C
#data 0x65F08907
#data 0xD335E601
#data 0x655C945C
#data 0x420BD234
#data 0x2539

loc_8c1B0FCE:
#data 0x60E3
#data 0x84030009
#data 0x8B18C808
#data 0xE15CD231
#data 0x001C6022
#data 0x8802600C
#data 0x84E38B11
#data 0x80E3CB08
#data 0xD2299449
#data 0xE501420B
#data 0xC801600D
#data 0x7F048907
#data 0x4F26D227
#data 0xE6019440
#data 0x422BE57E
#data 0x6EF6

loc_8c1B100A:
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1B1012:
mov.l r14,@-r15
mov 0x00,r14 ; r14 set to 0x00
mov.l r13,@-r15
sts.l pr,@-r15
mov.w @(loc_8c1B1086,pc),r4 ; r4 set to 0x6C1
mov.l @(loc_8c1B1094,pc),r13 ; r13 set to 0x8C19E1F8
jsr @r13
mov 0x01,r5 ; r5 set to 0x01
extu.w r0,r4 ; r4 ??? bc r0 is ???
or r4,r14 ; r14 ??? bc r4 is ???
mov.w @(loc_8c1B1088,pc),r4 ; r4 set to 0x6C2
jsr @r13
mov 0x01,r5 ; r5 set to 0x01
extu.w r0,r4 ; r4 ??? bc r0 is ???
shll8 r4
or r4,r14
mov.w @(loc_8c1B108A,pc),r4 ; r4 set to 0x6C3
jsr @r13
mov 0x01,r5 ; r5 set to 0x01
extu.w r0,r4 ; r4 ??? bc r0 is ???
shll16 r4
or r4,r14
mov r14,r0
nop
lds.l @r15+,pr
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1B104A:
#data 0x2FE6
#data 0xDE15E300
#data 0x2E304F22
#data 0xD20F941A
#data 0xE501420B
#data 0x6603E540
#data 0xE401

loc_8c1B1062:
#data 0x624C
#data 0x2328636C
#data 0x644C8D03
#data 0x720162E0
#data 0x2E20

loc_8c1B1072:
#data 0x4400
#data 0x3253624C
#data 0x4F268BF3
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x03050303
#data 0x0335

loc_8c1B1086:
#data 0x06C1

loc_8c1B1088:
#data 0x06C2

loc_8c1B108A:
#data 0x06C3
#data 0x000006EA
#data 0x8C347979

#align4
loc_8c1B1094:
#data bank19.loc_8c19E1F8
#data 0x0000FFFD

#align4
loc_8c1B109C:
#data bank19.loc_8c19E30C
#data 0x8C347970
#data 0x8C34B210

#align4
loc_8c1B10A8:
#data 0xEE002FE6
#data 0x4F222FD6
#data 0xDD169428
#data 0xE5024D0B
#data 0x600D9425
#data 0x4D0B3E0C
#data 0x9421E502
#data 0x3E0C600D
#data 0xE5024D0B
#data 0xD310600D
#data 0xE0033E0C
#data 0x61E3430B
#data 0x6E039417
#data 0xE5024D0B
#data 0x60E3610D
#data 0xD30A0009
#data 0x0009430B
#data 0xE306D209
#data 0x22023036
#data 0xA0018B01
#data 0xE001

loc_8c1B10FA:
#data 0xE000

#align4
loc_8c1B10FC:
#data 0x6DF64F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x0A610A62
#data 0x0A630A60

#align4
loc_8c1B110C:
#data bank19.loc_8c19E1F8

loc_8c1B1110:
#data bank12.loc_8c1291DC
#data 0x8C34B22C


loc_8c1B1118:
mov.l r14,@-r15
mov 0x5C,r0 ; r0 set to 0x5C
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
mov.l @(loc_8c1B1240,pc),r13 ; r13 set to 0x8C347970
sts.l pr,@-r15
mov.l @r13,r4
mov.w @(loc_8c1B1236,pc),r5 ; r5 set to 0xFF
add 0xF0,r15
mov.b @(r0,r4),r3
extu.b r3,r3
cmp/eq r5,r3
bf loc_8c1B113E
bra loc_8c1B179C
nop

loc_8c1B113E:
mov 0x58,r0 ; r0 set to 0x58
mov.b @(r0,r4),r2
extu.b r2,r2
cmp/eq r5,r2
bf loc_8c1B114C
bra loc_8c1B179C
nop

#align4
loc_8c1B114C:
#data 0x60C3DC3D
#data 0x84020009
#data 0x8B06C810
#data 0x00096043
#data 0x60007054
#data 0x8801C901
#data 0x8903

loc_8c1B1166:
#data 0xD038
#data 0xC8046000
#data 0x8908

loc_8c1B116E:
#data 0x84C2
#data 0x80C2CB10
#data 0x632362D2
#data 0x60307354
#data 0x2300C9FE

#align4
loc_8c1B1180:
#data 0xE05C64D2
#data 0xE321024C
#data 0x3237622C
#data 0xE0588B0F
#data 0xE222014C
#data 0x3127611C
#data 0xE05C8B09
#data 0xE360014C
#data 0x3133611C
#data 0xD1288903
#data 0xCB026010
#data 0x2100

loc_8c1B11AE:
#data 0xD927
#data 0x000960C3
#data 0xC8808402
#data 0xD2218B19
#data 0x6122E05C
#data 0xE121031C
#data 0x3313633C
#data 0xD2218B11
#data 0x420B9434
#data 0x80F8E501
#data 0xC804600C
#data 0x84C28909
#data 0xCB80E601
#data 0x84F880C2
#data 0x9427D51B
#data 0x490B600C
#data 0x2509

loc_8c1B11EE:
#data 0x63D2
#data 0xDA17E05C
#data 0xE32F023C
#data 0x3237622C
#data 0xEB018F35
#data 0x6000D015
#data 0x8B30C810
#data 0xCB1084C1
#data 0x941480C1
#data 0xE5014A0B
#data 0x20B8600D
#data 0xD0108B27
#data 0x6000D310
#data 0xC810910C
#data 0x002962D2
#data 0x600B70FF
#data 0x7254430B
#data 0xA01784C1
#data 0x0009

loc_8c1B1236:
#data 0x00FF
#data 0x040103A5
#data 0x00000701

#align4
loc_8c1B1240:
#data 0x8C347970
#data 0x8C347979
#data 0x8C347974

#align4
loc_8c1B124C:
#data bank19.loc_8c19E30C

loc_8c1B1250:
#data bank19.loc_8c19E1F8
#data 0x0000FFFB
#data 0x8C34797A
#data 0x8C347975

#align4
loc_8c1B1260:
#data bank13.loc_8c130ECC

loc_8c1B1264:
#data 0xA299CB20
#data 0x80C1

loc_8c1B126A:
#data 0x62D2
#data 0x032CE05C
#data 0x633CE230
#data 0x8B103327
#data 0x6000D038
#data 0x8B0CC840
#data 0xCB4084C2
#data 0x946380C2
#data 0xE5014A0B
#data 0x80F4650C
#data 0xE601D333
#data 0x490B945C
#data 0x2539

loc_8c1B129A:
#data 0x60C3
#data 0x84030009
#data 0x8B0DC840
#data 0xE15CD32F
#data 0x001C6032
#data 0x8848600C
#data 0x84C38B06
#data 0xCB40E601
#data 0x954A80C3
#data 0xE449490B

#align4
loc_8c1B12C0:
#data 0xE15860D2
#data 0x600C001C
#data 0x89018862
#data 0x0009A266

#align4
loc_8c1B12D0:
#data 0x943FD225
#data 0xE502420B
#data 0x600DD324
#data 0x2039923B
#data 0x89013020
#data 0x0009A25A

#align4
loc_8c1B12E8:
#data 0x000960C3
#data 0xC8108402
#data 0xA2538B01
#data 0x0009

loc_8c1B12F6:
#data 0x60C3
#data 0x84020009
#data 0x8901C804
#data 0x0009A24C

#align4
loc_8c1B1304:
#data 0xE200DE1A
#data 0x63D22E22
#data 0x60307374
#data 0xCB02C9F0
#data 0x62D22300
#data 0xE30CE070
#data 0xA0430234
#data 0xE800

loc_8c1B1322:
#data 0x63D2
#data 0x60307374
#data 0x2300CB80
#data 0xE532D211
#data 0x64F3420B
#data 0x0009A024

#align4
loc_8c1B1338:
#data 0x430BD30F
#data 0x600E64F2
#data 0x891D2008
#data 0x9407D30D
#data 0x0009430B
#data 0x0009A226
#data 0x00D00406
#data 0x0E000275
#data 0x00001004
#data 0x8C34797B
#data 0x0000FF7F
#data 0x8C347970

#align4
loc_8c1B1368:
#data bank19.loc_8c19E1F8
#data 0x0000FF00
#data 0x8C34B220

#align4
loc_8c1B1374:
#data loc_8c1B3EEC

loc_8c1B1378:
#data loc_8c1B3F0C

loc_8c1B137C:
#data bank1a.loc_8c1a003E

loc_8c1B1380:
#data 0x707460D2
#data 0xC8806000
#data 0x64D28BD6
#data 0x044CE064
#data 0x644C63D2
#data 0x4418E060
#data 0x622C023C
#data 0x242B63E2
#data 0x334C644D
#data 0x2E327801

#align4
loc_8c1B13A8:
#data 0x628D934A
#data 0x8BB83233
#data 0x411961E2
#data 0x41014109
#data 0x94422E12
#data 0xE5014A0B
#data 0x80F4BE27
#data 0xE351D221
#data 0x61E22202
#data 0x89043132
#data 0x2028D21F
#data 0xA1008901
#data 0xEE16

loc_8c1B13DA:
#data 0x64E2
#data 0x3422E271
#data 0xD01A8906
#data 0x6102D31B
#data 0x89012138
#data 0xEE15A0F5

#align4
loc_8c1B13F0:
#data 0x34229228
#data 0xD0158906
#data 0x6102D317
#data 0x89012138
#data 0xEE14A0EB

#align4
loc_8c1B1404:
#data 0x3422921F
#data 0xD0108906
#data 0x6102D313
#data 0x89012138
#data 0xEE13A0E1

#align4
loc_8c1B1418:
#data 0x34229216
#data 0xD00B8906
#data 0x6102D30F
#data 0x89012138
#data 0xEE12A0D7

#align4
loc_8c1B142C:
#data 0x3422920D
#data 0xD006891A
#data 0x6102D30B
#data 0x89152138
#data 0xEE11A0CD
#data 0x06040190
#data 0x00910081
#data 0x00BD00B1
#data 0x8C34B228
#data 0x00200000
#data 0x00100000
#data 0x00080000
#data 0x00040000
#data 0x00020000
#data 0x00010000

#align4
loc_8c1B1468:
#data 0x3422924E
#data 0xD02F8906
#data 0x6102D32D
#data 0x89012138
#data 0xEE10A0AF

#align4
loc_8c1B147C:
#data 0x34229245
#data 0xD02A8906
#data 0x61029342
#data 0x89012138
#data 0xEE0FA0A5

#align4
loc_8c1B1490:
#data 0x3422923D
#data 0xD0258906
#data 0x6102933A
#data 0x89012138
#data 0xEE0EA09B

#align4
loc_8c1B14A4:
#data 0x34229235
#data 0xD0208906
#data 0x61029332
#data 0x89012138
#data 0xEE0DA091

#align4
loc_8c1B14B8:
#data 0x3422922D
#data 0xD01B8906
#data 0x6102932A
#data 0x89012138
#data 0xEE0CA087

#align4
loc_8c1B14CC:
#data 0x34229225
#data 0xD0168906
#data 0x61029322
#data 0x89012138
#data 0xEE0BA07D

#align4
loc_8c1B14E0:
#data 0x3422921D
#data 0xD0118906
#data 0x6102931A
#data 0x89012138
#data 0xEE0AA073

#align4
loc_8c1B14F4:
#data 0x34229215
#data 0xD00C891A
#data 0x61029312
#data 0x89152138
#data 0xEE09A069
#data 0x00D800D0
#data 0x00E84000
#data 0x00F62000
#data 0x00FB1000
#data 0x01060800
#data 0x011A0400
#data 0x01200200
#data 0x00000100
#data 0x00008000
#data 0x8C34B228

#align4
loc_8c1B1530:
#data 0x34229246
#data 0xD1268905
#data 0xC8806012
#data 0xA04C8901
#data 0xEE08

loc_8c1B1542:
#data 0x933E
#data 0x89053432
#data 0x6012D121
#data 0x8901C840
#data 0xEE07A043

#align4
loc_8c1B1554:
#data 0x34229236
#data 0xD11D8905
#data 0xC8206012
#data 0xA03A8901
#data 0xEE06

loc_8c1B1566:
#data 0x932E
#data 0x89053432
#data 0x6012D118
#data 0x8901C810
#data 0xEE05A031

#align4
loc_8c1B1578:
#data 0x34229226
#data 0xD1148905
#data 0xC8086012
#data 0xA0288901
#data 0xEE04

loc_8c1B158A:
#data 0x931E
#data 0x89053432
#data 0x6012D10F
#data 0x8901C804
#data 0xEE03A01F

#align4
loc_8c1B159C:
#data 0x34229216
#data 0xD10B8905
#data 0xC8026012
#data 0xA0168901
#data 0xEE02

loc_8c1B15AE:
#data 0x930E
#data 0x890F3432
#data 0x6012D106
#data 0x890BC801
#data 0x6EB3A00D
#data 0x0135012A
#data 0x013D0139
#data 0x014F0145
#data 0x01550151
#data 0x8C34B228

#align4
loc_8c1B15D4:
#data 0xCB0884C2
#data 0x80C2

loc_8c1B15DA:
#data 0xBD36
#data 0xD8310009
#data 0x6380D231
#data 0x4301633C
#data 0x2230BD5E
#data 0xE200D32F
#data 0xD12F2300
#data 0x944C2120
#data 0xE5024A0B
#data 0x944981F6
#data 0xE5024A0B
#data 0x85F66703
#data 0x647D9345
#data 0x66806503
#data 0x3530655D
#data 0x666C8F11
#data 0x3417913E
#data 0xE2058B51
#data 0x302760EC
#data 0x36B78B4D
#data 0xA04A8901
#data 0x7EFF

loc_8c1B162E:
#data 0xE306
#data 0x323762EC
#data 0xA0448B45
#data 0x7EFE

loc_8c1B163A:
#data 0xD71E
#data 0x22796253
#data 0x8B113230
#data 0x34279229
#data 0xD31B8904
#data 0x6132E004
#data 0x8B363102

#align4
loc_8c1B1654:
#data 0x622C6280
#data 0x890132B7
#data 0x63B3A001

loc_8c1B1660:
#data 0xE302

loc_8c1B1662:
#data 0xD113
#data 0x2130A02D

#align4
loc_8c1B1668:
#data 0x25799218
#data 0x8D043520
#data 0x51F31F53
#data 0x31009013
#data 0x8B23

loc_8c1B167A:
#data 0x9211
#data 0x8B203427
#data 0x3613E102
#data 0x63808B1D
#data 0x33B7633C
#data 0xA0168B16
#data 0x06C9E202
#data 0x20000A63
#data 0x03E80600
#data 0x40003000
#data 0x00000200
#data 0x8C34B210
#data 0x8C34B211
#data 0x8C34B212
#data 0x8C34B230
#data 0x0000F000
#data 0x8C34B22C

loc_8c1B16BC:
#data 0xE200

loc_8c1B16BE:
#data 0xD13E
#data 0x2120

loc_8c1B16C2:
#data 0xD33D
#data 0x643062EC
#data 0x3217614C
#data 0xA0038B01
#data 0x3E48

loc_8c1B16D2:
#data 0x84C2
#data 0x80C2CB08

#align4
loc_8c1B16D8:
#data 0x62ECD338
#data 0x614C6430
#data 0x8B013217
#data 0x3E48A003

#align4
loc_8c1B16E8:
#data 0xCB0884C2
#data 0x80C2

loc_8c1B16EE:
#data 0xD334
#data 0x643062EC
#data 0x3217614C
#data 0xA0038B01
#data 0x3E48

loc_8c1B16FE:
#data 0x84C2
#data 0x80C2CB08

#align4
loc_8c1B1704:
#data 0x64ECE302
#data 0x8B053437
#data 0x6120D22D
#data 0x8B012118
#data 0x7EFEA008

#align4
loc_8c1B1718:
#data 0x8B0534B7
#data 0x6030D329
#data 0x8801600C
#data 0x7EFF8B00

#align4
loc_8c1B1728:
#data 0x33B763EC
#data 0xA0038B01
#data 0x7EFF

loc_8c1B1732:
#data 0x84C2
#data 0x80C2CB08

#align4
loc_8c1B1738:
#data 0x62EC84F4
#data 0x3207600C
#data 0x84F48B01
#data 0x6E03

loc_8c1B1746:
#data 0x60EC
#data 0x8B028801
#data 0xCB0884C2
#data 0x80C2

loc_8c1B1752:
#data 0x60C3
#data 0x84020009
#data 0x8918C808
#data 0xCB2084C1
#data 0x942580C1
#data 0xE5014A0B
#data 0x9421D517
#data 0x490B2509
#data 0x941EE601
#data 0xE5014A0B
#data 0x941AD513
#data 0x490B2509
#data 0x63D2E601
#data 0x60307354
#data 0xA004CB01
#data 0x2300

loc_8c1B178E:
#data 0x9411
#data 0x490BE601
#data 0x65EC

loc_8c1B1796:
#data 0x84C2
#data 0x80C2CB04


loc_8c1B179C:
add 0x10,r15
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
#data 0x06C00401
#data 0x000002E4
#data 0x8C34B230
#data 0x8C34B211
#data 0x8C34B212
#data 0x8C347986
#data 0x0000FFFE


loc_8c1B17CC:
mov.l r14,@-r15
mov 0x5C,r0 ; r0 set to 0x5C
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
mov.l @(loc_8c1B190C,pc),r13 ; r13 set to 0x8C347970
sts.l pr,@-r15
mov.l @(loc_8c1B1908,pc),r14 ; r14 set to 0x8C347979
mov.w @(loc_8c1B18F4,pc),r11 ; r11 set to 0xFF
mov.l @r13,r4
add 0xF4,r15
mov.w @(loc_8c1B18F2,pc),r8 ; r8 set to 0x401
mov.l @(loc_8c1B1900,pc),r10 ; r10 set to 0x8C19E1F8
mov.l @(loc_8c1B1904,pc),r12 ; r12 set to 0x8C19E30C
mov.b @(r0,r4),r3
extu.b r3,r3
cmp/eq r11,r3
bf loc_8c1B17FA
bra loc_8c1B1D1E
nop

loc_8c1B17FA:
mov 0x58,r0 ; r0 set to 0x58
mov.b @(r0,r4),r2
extu.b r2,r2
cmp/eq r11,r2
bf loc_8c1B1808
bra loc_8c1B1D1E
nop

loc_8c1B1808:
mov r14,r0
nop
mov.b @(0x02,r0),r0
tst 0x08,r0
bt loc_8c1B1832
mov.l @(loc_8c1B1914,pc),r3 ; r3 set to 0x8C1B3F0C
mov.l @(loc_8c1B1910,pc),r1 ; r1 set to 0x8C34B224
jsr @r3
mov.l @r1,r4
exts.b r0,r0
tst r0,r0
bf loc_8c1B1824
bra loc_8c1B1D1E
nop

#align4
loc_8c1B1824:
#data 0xE60165B3
#data 0xE4534C0B
#data 0xC9F784E1
#data 0x80E1

loc_8c1B1832:
#data 0x64D2
#data 0x024CE05C
#data 0x622CE321
#data 0x8B0F3237
#data 0x014CE058
#data 0x611CE222
#data 0x8B093127
#data 0x014CE05C
#data 0x611CE360
#data 0x89033133
#data 0x6010D12F
#data 0x2100CB02

#align4
loc_8c1B1860:
#data 0x000960E3
#data 0xC8808402
#data 0xD2288B19
#data 0x6122E05C
#data 0xE121031C
#data 0x3313633C
#data 0xD2218B11
#data 0x420B943B
#data 0x80F8E501
#data 0xC804600C
#data 0x84E28909
#data 0xCB80E601
#data 0x84F880E2
#data 0x942ED521
#data 0x4C0B600C
#data 0x2509

loc_8c1B189E:
#data 0x9B2B
#data 0x000960E3
#data 0xC8088401
#data 0xD2188B47
#data 0x6122E05C
#data 0xE120031C
#data 0x3313633C
#data 0xD3148B3F
#data 0x012C6232
#data 0x611CE22F
#data 0x89383127
#data 0xCB0884E1
#data 0x60E380E1
#data 0x84020009
#data 0x8930C808
#data 0xCB0460E0
#data 0x950C2E00
#data 0x4C0B940C
#data 0x940AE602
#data 0x4C0BE602
#data 0xA017E500
#data 0x0009

loc_8c1B18F2:
#data 0x0401

loc_8c1B18F4:
#data 0x00FF
#data 0x03A5
#data 0x7FFF02E4
#data 0x0BFB0AFB

#align4
loc_8c1B1900:
#data bank19.loc_8c19E1F8

loc_8c1B1904:
#data bank19.loc_8c19E30C

loc_8c1B1908:
#data 0x8C347979

#align4
loc_8c1B190C:
#data 0x8C347970

#align4
loc_8c1B1910:
#data 0x8C34B224

#align4
loc_8c1B1914:
#data loc_8c1B3F0C
#data 0x8C347974
#data 0x0000FFFB

#align4
loc_8c1B1920:
#data 0xE50E84E1
#data 0xCB40E601
#data 0x4C0B80E1
#data 0x63D264B3
#data 0x60307354
#data 0xA1F2CB01
#data 0x2300

loc_8c1B193A:
#data 0x62D2
#data 0x032CE05C
#data 0x633CE22F
#data 0x8B223327
#data 0x000960E3
#data 0xC8088401
#data 0x84E1891D
#data 0xC9F7E501
#data 0x4A0B80E1
#data 0x600D6483
#data 0x8B03C801
#data 0xCB4084E1
#data 0x80E1A1D9

#align4
loc_8c1B196C:
#data 0x602362D2
#data 0x70540009
#data 0xC9016000
#data 0x8B088801
#data 0xCB1084E2
#data 0x62D280E2
#data 0x73546323
#data 0xC9FE6030
#data 0x2300

loc_8c1B198E:
#data 0x62D2
#data 0x032CE05C
#data 0x633CE230
#data 0x8B0F3327
#data 0x6000D021
#data 0x8B0BC840
#data 0xCB4084E2
#data 0x943780E2
#data 0xE5014A0B
#data 0xE6012F01
#data 0x9431D51C
#data 0x25094C0B

#align4
loc_8c1B19BC:
#data 0x000960E3
#data 0xC8108403
#data 0xD2198B3A
#data 0x6122E05C
#data 0xE147031C
#data 0x3313633C
#data 0x84E38B32
#data 0x80E3CB10
#data 0x4A0B941F
#data 0x600DE501
#data 0x8929C83F
#data 0x4A0B941A
#data 0x600DE501
#data 0x8923C840
#data 0x4A0BE501
#data 0xD50D6483
#data 0x25096483
#data 0xE6014C0B
#data 0xE601940D
#data 0xE5004C0B
#data 0xD409D20A
#data 0xE50A420B
#data 0xCB0884E2
#data 0x80E2A181
#data 0x06EA0406
#data 0x02760368
#data 0x8C34797B
#data 0x0000FF7F
#data 0x8C347970
#data 0x0000FFFE
#data 0x8C34B224

#align4
loc_8c1B1A38:
#data loc_8c1B3EEC

loc_8c1B1A3C:
#data 0x000960E3
#data 0xC8048401
#data 0xD2348B20
#data 0x6122E05C
#data 0xE140031C
#data 0x3313633C
#data 0xD3308B18
#data 0x012C6232
#data 0x611CE24F
#data 0x89113127
#data 0x602362D2
#data 0x70540009
#data 0xC9016000
#data 0x8B068801
#data 0x4A0B944E
#data 0x944BE502
#data 0x4C0B6503
#data 0xE602

loc_8c1B1A82:
#data 0x84E1
#data 0x80E1CB04

#align4
loc_8c1B1A88:
#data 0xE15C60D2
#data 0x600C001C
#data 0x89018863
#data 0x0009A143

#align4
loc_8c1B1A98:
#data 0xE501D220
#data 0xE44D420B
#data 0x8802600D
#data 0xA13A8901
#data 0x0009

loc_8c1B1AAA:
#data 0x60E3
#data 0x84020009
#data 0x8B01C810
#data 0x0009A133

#align4
loc_8c1B1AB8:
#data 0x000960E3
#data 0xC8048402
#data 0xA12C8901
#data 0x0009

loc_8c1B1AC6:
#data 0xD916
#data 0x2942E400
#data 0x737463D2
#data 0xC9F06030
#data 0x2300CB02
#data 0xE07062D2
#data 0x0234E30C
#data 0x2F40A03C

#align4
loc_8c1B1AE4:
#data 0x737463D2
#data 0xCB806030
#data 0xD20D2300
#data 0xE53264F3
#data 0x7404420B
#data 0x0009A01A

#align4
loc_8c1B1AFC:
#data 0x430BD30A
#data 0x600E54F1
#data 0x89132008
#data 0x9404D308
#data 0x0009430B
#data 0x0009A105
#data 0x10180A29
#data 0x8C347970

#align4
loc_8c1B1B1C:
#data bank19.loc_8c19E1F8
#data 0x8C34B21C

#align4
loc_8c1B1B24:
#data loc_8c1B3EEC

loc_8c1B1B28:
#data loc_8c1B3F0C

loc_8c1B1B2C:
#data bank1a.loc_8c1a003E

loc_8c1B1B30:
#data 0x707460D2
#data 0xC8806000
#data 0x64D28BE0
#data 0x044CE064
#data 0x644C63D2
#data 0x4418E060
#data 0x622C023C
#data 0x242B6392
#data 0x334C644D
#data 0x62F02932
#data 0x2F207201

#align4
loc_8c1B1B5C:
#data 0xE23263F0
#data 0x3323633C
#data 0x61928BBE
#data 0x29124119
#data 0x4A0B9447
#data 0x6292E501
#data 0x3232E350
#data 0x64038D03
#data 0x880D604C
#data 0x890E

loc_8c1B1B82:
#data 0x923D
#data 0x35226592
#data 0xE30C8903
#data 0x3133614C
#data 0x8906

loc_8c1B1B92:
#data 0x9236
#data 0x89063522
#data 0x614CE30B
#data 0x8B023133

#align4
loc_8c1B1BA0:
#data 0xA052E601
#data 0xE50B

loc_8c1B1BA6:
#data 0x922D
#data 0x89073522
#data 0x614CE30A
#data 0x8B033133
#data 0xE601E50A
#data 0x0009A047

#align4
loc_8c1B1BBC:
#data 0x35229223
#data 0xE3098907
#data 0x3133614C
#data 0xE5098B03
#data 0xA03CE601
#data 0x0009

loc_8c1B1BD2:
#data 0x9219
#data 0x89073522
#data 0x614CE308
#data 0x8B033133
#data 0xE601E508
#data 0x0009A031

#align4
loc_8c1B1BE8:
#data 0x3522920F
#data 0xE307890E
#data 0x3133614C
#data 0xE5078B0A
#data 0xA026E601
#data 0x06040009
#data 0x00950090
#data 0x00B000A6
#data 0x00D000C0

#align4
loc_8c1B1C0C:
#data 0x35229245
#data 0xE3068907
#data 0x3133614C
#data 0xE5068B03
#data 0xA014E601
#data 0x0009

loc_8c1B1C22:
#data 0x923B
#data 0x89073522
#data 0x614CE305
#data 0x8B033133
#data 0xE601E505
#data 0x0009A009

#align4
loc_8c1B1C38:
#data 0x35229231
#data 0xE3048909
#data 0x3133614C
#data 0xE5048B05
#data 0xE601

loc_8c1B1C4A:
#data 0x4C0B
#data 0xA03964B3
#data 0x0009

loc_8c1B1C52:
#data 0x9225
#data 0x89063522
#data 0x614CE303
#data 0x8B023133
#data 0xA009E601
#data 0xE503

loc_8c1B1C66:
#data 0x921C
#data 0x89093522
#data 0x614CE302
#data 0x8B053133
#data 0xE601E502

#align4
loc_8c1B1C78:
#data 0x64B34C0B
#data 0x0009A00B

#align4
loc_8c1B1C80:
#data 0x35329310
#data 0xE101890F
#data 0x3413644C
#data 0xE6018B0B
#data 0x4C0B6563
#data 0x64B3

loc_8c1B1C96:
#data 0xA015
#data 0x00E0E401
#data 0x00F000E5
#data 0x01050100
#data 0x0110

loc_8c1B1CA6:
#data 0x84E2
#data 0xCB08E501
#data 0x4A0B80E2
#data 0xD53D6483
#data 0x25096483
#data 0xE6014C0B
#data 0xE601946B
#data 0xE5004C0B

#align4
loc_8c1B1CC4:
#data 0x2448644E
#data 0x94658911
#data 0xE5024A0B
#data 0x94622F01
#data 0xE5024A0B
#data 0x640363F1
#data 0x633D644D
#data 0x3348E20A
#data 0x89023327
#data 0xCB0884E2
#data 0x80E2

loc_8c1B1CEE:
#data 0x60E3
#data 0x84020009
#data 0x890FC808
#data 0x4A0BE501
#data 0xD52A6483
#data 0x25096483
#data 0xE6014C0B
#data 0xE6019445
#data 0xE5004C0B
#data 0xD426D227
#data 0xE50A420B

#align4
loc_8c1B1D18:
#data 0xCB0484E2
#data 0x80E2


loc_8c1B1D1E:
add 0x0C,r15
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

loc_8c1B1D32:
extu.b r4,r0
mov.l r14,@-r15
mov.l @(loc_8c1B1DB4,pc),r6 ; r6 set to 0x8C34B23A
cmp/eq 0x0B,r0
mov 0x00,r14 ; r14 set to 0x00
bt/s loc_8c1B1D48
extu.b r5,r7
cmp/eq 0x0C,r0
bt loc_8c1B1D6E
bra loc_8c1B1D8C
nop

loc_8c1B1D48:
mov r7,r0
nop
cmp/eq 0x03,r0
bt loc_8c1B1D64
cmp/eq 0x04,r0
bt loc_8c1B1D5E
cmp/eq 0x05,r0
bf loc_8c1B1D6A
mov.w @(loc_8c1B1D9C,pc),r3 ; r3 set to 0x5F2
bra loc_8c1B1D84
mov.w r3,@r6

loc_8c1B1D5E:
mov.w @(loc_8c1B1D9E,pc),r1 ; r1 set to 0x2C8
bra loc_8c1B1D84
mov.w r1,@r6

loc_8c1B1D64:
mov.w @(loc_8c1B1DA0,pc),r3 ; r3 set to 0x4F5
bra loc_8c1B1D84
mov.w r3,@r6

loc_8c1B1D6A:
bra loc_8c1B1D8E
mov r14,r4

loc_8c1B1D6E:
mov r7,r0
nop
cmp/eq 0x04,r0
bt loc_8c1B1D80
cmp/eq 0x05,r0
bf loc_8c1B1D88
mov.w @(loc_8c1B1DA2,pc),r3 ; r3 set to 0x54D
bra loc_8c1B1D84
mov.w r3,@r6

#align4
loc_8c1B1D80:
#data 0x26219210


loc_8c1B1D84:
bra loc_8c1B1D8E
mov 0x01,r4

loc_8c1B1D88:
bra loc_8c1B1D8E
mov r14,r4

loc_8c1B1D8C:
#data 0x64E3


loc_8c1B1D8E:
mov r4,r0
nop
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x0276
#data 0x06A706A5

loc_8c1B1D9C:
#data 0x05F2

loc_8c1B1D9E:
#data 0x02C8

loc_8c1B1DA0:
#data 0x04F5

loc_8c1B1DA2:
#data 0x054D
#data 0x000003FF
#data 0x0000FFFE
#data 0x8C34B224

#align4
loc_8c1B1DB0:
#data loc_8c1B3EEC

loc_8c1B1DB4:
#data 0x8C34B23A


loc_8c1B1DB8:
mov.l r14,@-r15
mov 0x5C,r1 ; r1 set to 0x5C
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
mov.l @(loc_8c1B1ED4,pc),r14 ; r14 set to 0x8C347970
sts.l pr,@-r15
mov.l @r14,r0
mov.l @(loc_8c1B1EC4,pc),r9 ; r9 set to 0x8C347974
mov.b @(r0,r1),r0
add 0xF4,r15
mov.l @(loc_8c1B1EC0,pc),r8 ; r8 set to 0x8C34797F
extu.b r0,r0
mov.l @(loc_8c1B1EC8,pc),r11 ; r11 set to 0x8C19E1F8
and 0xF0,r0
mov.l @(loc_8c1B1ED0,pc),r13 ; r13 set to 0x8C347979
mov.l @(loc_8c1B1ECC,pc),r12 ; r12 set to 0x8C19E30C
cmp/eq 0x20,r0
bt loc_8c1B1DE8
bra loc_8c1B1EF4
nop

loc_8c1B1DE8:
mov r13,r0
nop
mov.b @(0x03,r0),r0
and 0x01,r0
extu.b r0,r0
tst r0,r0
bf loc_8c1B1E08
mov.l @(loc_8c1B1EDC,pc),r3 ; r3 set to 0x8C1B3EEC
mov.l @(loc_8c1B1ED8,pc),r4 ; r4 set to 0x8C34B258
mov.w @(loc_8c1B1EB8,pc),r5 ; r5 set to 0x320
jsr @r3
nop
mov.b @(0x03,r13),r0
or 0x01,r0
bra loc_8c1B1E32
mov.b r0,@(0x03,r13)

#align4
loc_8c1B1E08:
#data 0xE05CD235
#data 0x6A2063E2
#data 0x003C6AAC
#data 0x3A00600C
#data 0x60E28B06
#data 0xD331E258
#data 0x6130002C
#data 0x890F3100

#align4
loc_8c1B1E28:
#data 0xD42BD32C
#data 0x430B9544
#data 0x0009


loc_8c1B1E32:
mov.l @r14,r2
mov 0x5C,r0 ; r0 set to 0x5C
mov.b @(r0,r2),r3
mov.l @(loc_8c1B1EE0,pc),r1 ; r1 set to 0x8C34B232
mov 0x58,r0 ; r0 set to 0x58
mov.b r3,@r1 ; r1 ??? bc r3 is ???
mov.l @r14,r2
mov.b @(r0,r2),r3
mov.l @(loc_8c1B1EE4,pc),r2 ; r2 set to 0x8C34B233
bra loc_8c1B1F06
mov.b r3,@r2

#align4
loc_8c1B1E48:
#data 0xE05C63E2
#data 0x622C023C
#data 0x89053A20
#data 0xE05862E2
#data 0x633C032C
#data 0x8B523A30

#align4
loc_8c1B1E60:
#data 0xD21DD321
#data 0x6422430B
#data 0x2008600E
#data 0x60D3894B
#data 0x84040009
#data 0x8B16C880
#data 0x4B0BE501
#data 0x650CE452
#data 0xD31A2F00
#data 0x2539E601
#data 0xE4524C0B
#data 0xE6019415
#data 0xE5004C0B
#data 0xD41084D4
#data 0xCB80D210
#data 0x420B950E
#data 0xA03080D4
#data 0x0009

loc_8c1B1EA6:
#data 0xC840
#data 0xD1118B2D
#data 0x0009410B
#data 0xCB4084D4
#data 0x80D4A027

loc_8c1B1EB8:
#data 0x0320
#data 0x02AD
#data 0x00000190

#align4
loc_8c1B1EC0:
#data 0x8C34797F

#align4
loc_8c1B1EC4:
#data 0x8C347974

#align4
loc_8c1B1EC8:
#data bank19.loc_8c19E1F8

loc_8c1B1ECC:
#data bank19.loc_8c19E30C

loc_8c1B1ED0:
#data 0x8C347979

#align4
loc_8c1B1ED4:
#data 0x8C347970

#align4
loc_8c1B1ED8:
#data 0x8C34B258

#align4
loc_8c1B1EDC:
#data loc_8c1B3EEC

loc_8c1B1EE0:
#data 0x8C34B232

#align4
loc_8c1B1EE4:
#data 0x8C34B233

#align4
loc_8c1B1EE8:
#data loc_8c1B3F0C
#data 0x0000FFDF

#align4
loc_8c1B1EF0:
#data bank19.loc_8c19E562

loc_8c1B1EF4:
#data 0xC9FE84D3
#data 0x84D480D3
#data 0x80D4C97F
#data 0xC9BF84D4
#data 0x80D4

loc_8c1B1F06:
#data 0x60D3
#data 0x60000009
#data 0x8B1CC804
#data 0x000960D3
#data 0xC8808401
#data 0x60D38B06
#data 0x60000009
#data 0x600CC901
#data 0x89102008

#align4
loc_8c1B1F28:
#data 0xCB0460D0
#data 0x95722D00
#data 0x4C0B9472
#data 0x9470E602
#data 0x4C0BE602
#data 0x62E2E500
#data 0x73546323
#data 0xCB016030
#data 0x2300

loc_8c1B1F4A:
#data 0x62E2
#data 0x032CE05C
#data 0x633CE221
#data 0x8B103327
#data 0xE05861E2
#data 0xE122031C
#data 0x3317633C
#data 0x62E28B09
#data 0x032CE05C
#data 0x633CE260
#data 0x89023323
#data 0xCB026090
#data 0x2900

loc_8c1B1F7A:
#data 0x60D3
#data 0x84020009
#data 0x8B25C880
#data 0x000960D3
#data 0xC8808401
#data 0x60D38B20
#data 0x60000009
#data 0x600CC901
#data 0x8B192008
#data 0xE05CD220
#data 0x013C6322
#data 0x611CE321
#data 0x8B113133
#data 0x9435D11D
#data 0xE501410B
#data 0x600C80F8
#data 0x8909C804
#data 0xE60184D2
#data 0x80D2CB80
#data 0xD51884F8
#data 0x600C9428
#data 0x25094C0B

#align4
loc_8c1B1FD0:
#data 0x000960D3
#data 0xC8208402
#data 0xD2118B5C
#data 0x6122E05C
#data 0xE122031C
#data 0x3317633C
#data 0xD30D8B54
#data 0x012C6232
#data 0x611CE22A
#data 0x894D3123
#data 0xCB2084D2
#data 0xD40B80D2
#data 0x72016241
#data 0xE2012421
#data 0x633D6341
#data 0x8B1A3327
#data 0xA00D62E2
#data 0x7FFF0009
#data 0x0BFB0AFB
#data 0x000003A5
#data 0x8C347970

#align4
loc_8c1B2024:
#data bank19.loc_8c19E1F8
#data 0x0000FFFB
#data 0x8C34B23E

#align4
loc_8c1B2030:
#data 0x00096093
#data 0x91258401
#data 0xD314C810
#data 0x70FF0029
#data 0x430B600B
#data 0x7254

loc_8c1B2046:
#data 0x8491
#data 0x8091C9DF
#data 0xC9FB84D2
#data 0x941880D2
#data 0xE5014B0B
#data 0xC820600D
#data 0x94138B18
#data 0xE5014B0B
#data 0xC801600D
#data 0xE2008B12
#data 0x60E22820
#data 0x60007024
#data 0x8B0DC810
#data 0xE6019407
#data 0xE51F4C0B
#data 0x0009A008
#data 0x011B0701
#data 0x0101011A

#align4
loc_8c1B208C:
#data bank13.loc_8c130ECC

loc_8c1B2090:
#data 0x2820E203

#align4
loc_8c1B2094:
#data 0x000960D3
#data 0xC8406000
#data 0xD2388B13
#data 0x6122E05C
#data 0xE130031C
#data 0x3313633C
#data 0xD2358B0B
#data 0x945FE601
#data 0x4C0B6520
#data 0xD333655C
#data 0x945AE601
#data 0x4C0B6530
#data 0x655C

loc_8c1B20C6:
#data 0x6093
#data 0x84010009
#data 0x0229C840
#data 0x622B72FF
#data 0x8B1C2228
#data 0x6032D329
#data 0x60007054
#data 0x8801C901
#data 0x60328B15
#data 0x001CE15C
#data 0x8840600C
#data 0x94418B0F
#data 0xE5014B0B
#data 0xE5102F00
#data 0xE601943C
#data 0x4C0B600C
#data 0xD321250B
#data 0x0009430B
#data 0xCB408491
#data 0x8091

loc_8c1B2112:
#data 0x60E2
#data 0x001CE15C
#data 0x8863600C
#data 0xA16A8901
#data 0x0009

loc_8c1B2122:
#data 0x84D2
#data 0x80D2C9DF
#data 0x00096093
#data 0xC8208401
#data 0x94228B46
#data 0xE5014B0B
#data 0xE304D215
#data 0x600C2200
#data 0x8B143037
#data 0xE303D113
#data 0x600D6011
#data 0x8B0E3033
#data 0x4B0B9414
#data 0x9312E502
#data 0x2038600D
#data 0xD1088907
#data 0x70546012
#data 0xC9016000
#data 0x2008600C
#data 0x8B14

loc_8c1B216E:
#data 0x84D2
#data 0xC9EFA022
#data 0x06050604
#data 0x039A03A5
#data 0x3FF00382
#data 0x8C347970
#data 0x8C347983
#data 0x8C347981

#align4
loc_8c1B218C:
#data loc_8c1B0E30
#data 0x8C34B213
#data 0x8C34B23C

#align4
loc_8c1B2198:
#data 0x95809482
#data 0xE6024C0B
#data 0x957E9480
#data 0xE6024C0B
#data 0x632362E2
#data 0x60307354
#data 0x2300C9FE
#data 0xCB1084D2

#align4
loc_8c1B21B8:
#data 0x849180D2
#data 0x8091CB20

#align4
loc_8c1B21C0:
#data 0x4B0BE501
#data 0x600DE44D
#data 0x89018802
#data 0x0009A113

#align4
loc_8c1B21D0:
#data 0x6000D036
#data 0x8B01C810
#data 0x0009A10D

#align4
loc_8c1B21DC:
#data 0x6000D033
#data 0x8901C804
#data 0x0009A107

#align4
loc_8c1B21E8:
#data 0xE200DA31
#data 0x63E22A22
#data 0x60307374
#data 0xCB02C9F0
#data 0x62E22300
#data 0xE30CE070
#data 0xA02D0234
#data 0xE200

loc_8c1B2206:
#data 0x63E2
#data 0x60307374
#data 0x2300CB80
#data 0x64F3D228
#data 0x420BE532
#data 0xA00C7404
#data 0x0009

loc_8c1B221E:
#data 0xD326
#data 0x54F1430B
#data 0x2008600E
#data 0xD3248905
#data 0x430B943B
#data 0xA1220009
#data 0x0009

loc_8c1B2236:
#data 0x60E2
#data 0x60007074
#data 0x8BEEC880
#data 0xE06464E2
#data 0x63E2044C
#data 0xE060644C
#data 0x023C4418
#data 0x63A2622C
#data 0x644D242B
#data 0x2A32334C
#data 0x720162F0

#align4
loc_8c1B2260:
#data 0xE2322F20
#data 0x633C63F0
#data 0x8BCC3323
#data 0x411961A2
#data 0x94192A12
#data 0xE5014B0B
#data 0x6403D211
#data 0x6321E640
#data 0x2F32633D
#data 0x00096033
#data 0x8F548805
#data 0xE02A65A2
#data 0x89173506
#data 0x880E604C
#data 0xA0A58B14
#data 0x7800EA0E
#data 0x7F000A29
#data 0x102C0B29
#data 0x00000604
#data 0x8C34797B
#data 0x8C34B218

#align4
loc_8c1B22B4:
#data loc_8c1B3EEC

loc_8c1B22B8:
#data loc_8c1B3F0C

loc_8c1B22BC:
#data bank1a.loc_8c1a003E
#data 0x8C34B23C

#align4
loc_8c1B22C4:
#data 0x89033566
#data 0x624CE30D
#data 0x89443233

#align4
loc_8c1B22D0:
#data 0x3516E16A
#data 0xE30C8903
#data 0x3233624C
#data 0x8945

loc_8c1B22DE:
#data 0x9146
#data 0x89033516
#data 0x624CE30B
#data 0x894D3233

#align4
loc_8c1B22EC:
#data 0x35169140
#data 0xE30A8903
#data 0x3233624C
#data 0x894F

loc_8c1B22FA:
#data 0x913A
#data 0x89033516
#data 0x624CE309
#data 0x89513233

#align4
loc_8c1B2308:
#data 0x35169134
#data 0xE3088903
#data 0x3233624C
#data 0x8953

loc_8c1B2316:
#data 0x912E
#data 0x89033516
#data 0x624CE307
#data 0x89553233

#align4
loc_8c1B2324:
#data 0x35169128
#data 0xE206895D
#data 0x3423644C
#data 0xA0588957
#data 0x0009

loc_8c1B2336:
#data 0x2F32
#data 0x00096033
#data 0x89028804
#data 0x880360F2
#data 0x8B50

loc_8c1B2346:
#data 0xE22E
#data 0x89083526
#data 0x614CE30D
#data 0x8B043133
#data 0x880460F2
#data 0x8B01

loc_8c1B235A:
#data 0xA045
#data 0xEA0D

loc_8c1B235E:
#data 0x3566
#data 0xE20C890B
#data 0x3323634C
#data 0x8B07

loc_8c1B236A:
#data 0xA03D
#data 0x00AFEA0C
#data 0x01F40125
#data 0x047E02DB
#data 0x0708

loc_8c1B237A:
#data 0x935F
#data 0x89053536
#data 0x614CE20B
#data 0x8B013123

#align4
loc_8c1B2388:
#data 0xEA0BA02E

#align4
loc_8c1B238C:
#data 0x35269257
#data 0xE30A8905
#data 0x3133614C
#data 0x8B01

loc_8c1B239A:
#data 0xA025
#data 0xEA0A

loc_8c1B239E:
#data 0x924F
#data 0x89053526
#data 0x614CE309
#data 0x8B013133

#align4
loc_8c1B23AC:
#data 0xEA09A01C

#align4
loc_8c1B23B0:
#data 0x35269247
#data 0xE3088905
#data 0x3133614C
#data 0x8B01

loc_8c1B23BE:
#data 0xA013
#data 0xEA08

loc_8c1B23C2:
#data 0x923F
#data 0x89053526
#data 0x614CE307
#data 0x8B013133

#align4
loc_8c1B23D0:
#data 0xEA07A00A

#align4
loc_8c1B23D4:
#data 0x35269237
#data 0xE1068905
#data 0x3413644C
#data 0x8B01

loc_8c1B23E2:
#data 0xA001
#data 0xEA06

loc_8c1B23E6:
#data 0xEA05

#align4
loc_8c1B23E8:
#data 0xE601942E
#data 0x65AC4C0B
#data 0xCB0484D2
#data 0x80D2

loc_8c1B23F6:
#data 0x6080
#data 0x8800600C
#data 0x88018907
#data 0x88028925
#data 0x88038931
#data 0xA0368937
#data 0x0009

loc_8c1B240E:
#data 0x60E2
#data 0x001CE15C
#data 0x8865600C
#data 0x94168B2F
#data 0xE5014B0B
#data 0x65032F06
#data 0x4B0B9412
#data 0x6403E501
#data 0x65F6BC81
#data 0x8801600E
#data 0xE2018B16
#data 0x2820A01F
#data 0x01090092
#data 0x02EE01C2
#data 0x073A04B0
#data 0x02E302E4
#data 0x02E5

loc_8c1B244E:
#data 0x60E2
#data 0x001CE15C
#data 0x8867600C
#data 0x947A8B0F
#data 0xD23FE602
#data 0x65214C0B

#align4
loc_8c1B2464:
#data 0xA008E302
#data 0x2830

loc_8c1B246A:
#data 0x60E2
#data 0x001CE15C
#data 0x8865600C
#data 0xE2008901
#data 0x2820

loc_8c1B247A:
#data 0x7F0C
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1B248E:
#data 0x2FE6
#data 0x2FC62FD6
#data 0x4F22DD33
#data 0xDE3364D2
#data 0x6043DC30
#data 0x70300009
#data 0xC8086000
#data 0x60438B05
#data 0x70300009
#data 0xC8046000
#data 0x891A

loc_8c1B24B6:
#data 0xD22D
#data 0x6020E301
#data 0x2200CB02
#data 0x62D22E30
#data 0x00096023
#data 0x60007024
#data 0x0029C810
#data 0x600B70FF
#data 0x8B028801
#data 0xA002943C
#data 0xE502

loc_8c1B24DE:
#data 0x943A
#data 0xE502

loc_8c1B24E2:
#data 0x4C0B
#data 0xD2220009
#data 0x2201A067

#align4
loc_8c1B24EC:
#data 0x00096043
#data 0x60007030
#data 0x600CC901
#data 0x89102008
#data 0x2E30E303
#data 0x4C0B9428
#data 0x9227E502
#data 0x3020600D
#data 0xE1078B01
#data 0x2E10

loc_8c1B2512:
#data 0x63D2
#data 0x60307330
#data 0xA04EC9FE
#data 0x2300

loc_8c1B251E:
#data 0x6043
#data 0x70340009
#data 0xC8206000
#data 0xA0108901
#data 0xE208

loc_8c1B252E:
#data 0x6043
#data 0x70340009
#data 0xC8106000
#data 0xE2098902
#data 0x0009A007

#align4
loc_8c1B2540:
#data 0x00096043
#data 0x60007034
#data 0x8913C808
#data 0xE20A

loc_8c1B254E:
#data 0xA034
#data 0x08402E20
#data 0x02040208
#data 0x00000111
#data 0x8C34B23A

#align4
loc_8c1B2560:
#data bank19.loc_8c19E1F8
#data 0x8C347970
#data 0x8C34797E
#data 0x8C347974
#data 0x8C34798A

#align4
loc_8c1B2574:
#data 0x00096043
#data 0x60007030
#data 0x8B11C880
#data 0x00096043
#data 0x60007030
#data 0x8B0BC840
#data 0x00096043
#data 0x60007030
#data 0x8B05C820
#data 0x00096043
#data 0x60007030
#data 0x8902C810

#align4
loc_8c1B25A4:
#data 0xA008E10B
#data 0x2E10

loc_8c1B25AA:
#data 0x6043
#data 0x70280009
#data 0xC8806000
#data 0xE10C8901
#data 0x2E10

loc_8c1B25BA:
#data 0x4F26
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

loc_8c1B25C4:
mov.l r14,@-r15
mov 0x00,r5 ; r5 set to 0x00
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l @(loc_8c1B2654,pc),r12 ; r12 set to 0x8C34797F
sts.l pr,@-r15
mov.b @r12,r0
mov.w @(loc_8c1B2642,pc),r4 ; r4 set to 0x85
extu.b r0,r0
mov.l @(loc_8c1B264C,pc),r13 ; r13 set to 0x8C19E1F8
mov.l @(loc_8c1B2650,pc),r14 ; r14 set to 0x8C347970
cmp/eq 0x00,r0
add 0xFC,r15
bt/s loc_8c1B25F4
mov r5,r11 ; r11 set to 0x00
cmp/eq 0x01,r0
bt loc_8c1B2622
cmp/eq 0x02,r0
bt loc_8c1B2660
cmp/eq 0x03,r0
bt loc_8c1B266E
bra loc_8c1B266E
nop

loc_8c1B25F4:
mov.l @r14,r3
mov 0x5C,r0 ; r0 set to 0x5C
mov.b @(r0,r3),r2
extu.b r2,r2
cmp/eq r4,r2
bf loc_8c1B266E
mov.w @(loc_8c1B2644,pc),r4 ; r4 set to 0x2E3
jsr @r13
mov 0x01,r5 ; r5 set to 0x01
mov.l r0,@-r15
mov r0,r5 ; r5 set to 0x5C
mov.w @(loc_8c1B2646,pc),r4 ; r4 set to 0x2E5
jsr @r13
mov 0x01,r5 ; r5 set to 0x01
mov r0,r4 ; r4 set to 0x5C
bsr loc_8c1B1D32
mov.l @r15+,r5 ; r5 ??? bc r15 is ???
exts.b r0,r0 ; r0 ??
cmp/eq 0x01,r0
bf loc_8c1B263C
mov 0x01,r2 ; r2 set to 0x01
bra loc_8c1B266E
mov.b r2,@r12

loc_8c1B2622:
#data 0x61E2
#data 0x031CE05C
#data 0x633C920E
#data 0x8B1E3320
#data 0xE602940B
#data 0xD108D309
#data 0x6511430B


loc_8c1B263C:
mov 0x02,r2 ; r2 set to 0x02
bra loc_8c1B266E
mov.b r2,@r12

loc_8c1B2642:
#data 0x0085

loc_8c1B2644:
#data 0x02E3

loc_8c1B2646:
#data 0x02E5
#data 0x08400087

#align4
loc_8c1B264C:
#data bank19.loc_8c19E1F8

loc_8c1B2650:
#data 0x8C347970

#align4
loc_8c1B2654:
#data 0x8C34797F
#data 0x8C34B23A

#align4
loc_8c1B265C:
#data bank19.loc_8c19E30C

loc_8c1B2660:
#data 0xE05C61E2
#data 0x633C031C
#data 0x89003340
#data 0x2C50


loc_8c1B266E:
mov.l @r14,r0
mov 0x5C,r1 ; r1 set to 0x5C
mov.w @(loc_8c1B273C,pc),r3 ; r3 set to 0x80
mov.b @(r0,r1),r0
extu.b r0,r0
and 0xF0,r0
cmp/eq r3,r0
bf loc_8c1B26EE
mov.l @(loc_8c1B2744,pc),r0 ; r0 set to 0x8C34797C
mov.l @(loc_8c1B2740,pc),r12 ; r12 set to 0x8C34B231
mov.b @r0,r0 ; r0 ??
tst 0x02,r0
bf loc_8c1B269C
mov.l @(loc_8c1B274C,pc),r2 ; r2 set to 0x8C1B3EEC
mov.l @(loc_8c1B2748,pc),r4 ; r4 set to 0x8C34B254
mov.w @(loc_8c1B273E,pc),r5 ; r5 set to 0x1F4
jsr @r2
nop
mov.l @(loc_8c1B2744,pc),r3 ; r3 set to 0x8C34797C
mov.b @r3,r0
or 0x02,r0
bra loc_8c1B26E6
mov.b r0,@r3

loc_8c1B269C:
mov.l @r14,r3
mov 0x5C,r0 ; r0 set to 0x5C
mov.b @r12,r2
mov.b @(r0,r3),r0 ; r0 ??? bc r3 is ???
cmp/eq r0,r2
bf loc_8c1B26D0
mov.l @(loc_8c1B2750,pc),r3 ; r3 set to 0x8C1B3F0C
mov.l @(loc_8c1B2748,pc),r2 ; r2 set to 0x8C34B254
jsr @r3
mov.l @r2,r4
exts.b r0,r0
tst r0,r0
bt loc_8c1B26D0
mov 0x01,r5 ; r5 set to 0x01
jsr @r13
mov 0x45,r4 ; r4 set to 0x45
mov.b r0,@r15
mov 0x20,r5 ; r5 set to 0x20
mov.l @(loc_8c1B2754,pc),r3 ; r3 set to 0x8C19E30C
extu.b r0,r0
mov 0x01,r6 ; r6 set to 0x01
or r0,r5 ; r5 ??? bc r0 is ???
jsr @r3
mov 0x45,r4 ; r4 set to 0x45
bra loc_8c1B26EE
mov 0x01,r11

#align4
loc_8c1B26D0:
#data 0xE05C62E2
#data 0x012C63C0
#data 0x89083310
#data 0xD41AD21B
#data 0x420B952D
#data 0x0009

loc_8c1B26E6:
#data 0x63E2
#data 0x023CE05C
#data 0x2C20

loc_8c1B26EE:
#data 0x60BE
#data 0x89078801
#data 0xE15CD318
#data 0x001C6032
#data 0xC9F0600C
#data 0x8B148820

#align4
loc_8c1B2704:
#data 0x430BD315
#data 0xD4150009
#data 0xCB046040
#data 0x60402400
#data 0x2400CB40
#data 0xC9DF6040
#data 0x60432400
#data 0x60000009
#data 0x8902C808
#data 0xCB106040
#data 0x2400

loc_8c1B272E:
#data 0x7F04
#data 0x6BF64F26
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

loc_8c1B273C:
#data 0x0080

loc_8c1B273E:
#data 0x01F4

#align4
loc_8c1B2740:
#data 0x8C34B231

#align4
loc_8c1B2744:
#data 0x8C34797C

#align4
loc_8c1B2748:
#data 0x8C34B254

#align4
loc_8c1B274C:
#data loc_8c1B3EEC

loc_8c1B2750:
#data loc_8c1B3F0C

loc_8c1B2754:
#data bank19.loc_8c19E30C
#data 0x8C347970

#align4
loc_8c1B275C:
#data loc_8c1B0E88
#data 0x8C347974

#align4
loc_8c1B2764:
#data 0xE05C2FE6
#data 0x2FC62FD6
#data 0xDE3D2FB6
#data 0x63E24F22
#data 0x7FFCDC3A
#data 0x936E023C
#data 0x3230622C
#data 0xEB008D06
#data 0x021C61E2
#data 0x622C9168
#data 0x8B383210

#align4
loc_8c1B2790:
#data 0x60C3DD35
#data 0x84030009
#data 0x8B08C802
#data 0xD433D234
#data 0x420B955D
#data 0x84C30009
#data 0xA026CB02
#data 0x80C3

loc_8c1B27AE:
#data 0x62E2
#data 0x63D0E05C
#data 0x3310012C
#data 0xD32E8B14
#data 0x430BD22B
#data 0x600E6422
#data 0x890D2008
#data 0xE501D32B
#data 0xE445430B
#data 0xE5202F00
#data 0x600CD329
#data 0x250BE601
#data 0xE445430B
#data 0xEB01A00F

#align4
loc_8c1B27E4:
#data 0xE05C62E2
#data 0x012C63D0
#data 0x89083310
#data 0xD41ED21F
#data 0x420B9533
#data 0x0009

loc_8c1B27FA:
#data 0x63E2
#data 0x023CE05C
#data 0x2D20

loc_8c1B2802:
#data 0x60BE
#data 0x89078801
#data 0xE15CD316
#data 0x001C6032
#data 0xC9F0600C
#data 0x8B178820

#align4
loc_8c1B2818:
#data 0x430BD319
#data 0xD4190009
#data 0xCB046040
#data 0x60402400
#data 0x2400CB40
#data 0xC9DF6040
#data 0x84C32400
#data 0x80C3C9FD
#data 0x00096043
#data 0xC8086000
#data 0x60408902
#data 0x2400CB10

#align4
loc_8c1B2848:
#data 0x4F267F04
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1B2856:
rts
nop
;-------------------------------------------------------------------------------
#data 0x0084
#data 0x00C80085
#data 0x8C347979
#data 0x8C347970
#data 0x8C34B231
#data 0x8C34B254

#align4
loc_8c1B2870:
#data loc_8c1B3EEC

loc_8c1B2874:
#data loc_8c1B3F0C

loc_8c1B2878:
#data bank19.loc_8c19E1F8

loc_8c1B287C:
#data bank19.loc_8c19E30C

loc_8c1B2880:
#data loc_8c1B0E88
#data 0x8C347974

#align4
loc_8c1B2888:
#data 0xE050D308
#data 0x6432D506
#data 0x6150024C
#data 0x89053210
#data 0x2510014C
#data 0x6242D404
#data 0x24227201

#align4
loc_8c1B28A4:
#data 0x0009000B
;-------------------------------------------------------------------------------
#data 0x8C34B234
#data 0x8C347970
#data 0x8C34B24C


loc_8c1B28B4:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
mov.l @(loc_8c1B2A14,pc),r14 ; r14 set to 0x8C34B270
bsr loc_8c1B2B58
nop
mov.l r0,@r14 ; r14 ??? bc r0 is ???
mov.l @(loc_8c1B2A18,pc),r2 ; r2 set to 0x8C19FE4A
jsr @r2
mov 0x00,r4 ; r4 set to 0x00
mov.l @r14,r3
mov.l @(loc_8c1B2A1C,pc),r13 ; r13 set to 0x8C19E416
mov.w @(0x08,r3),r0
mov.l r0,@-r15
mov r0,r2 ; r2 ??? bc r0 is ???
mov.l @r14,r1
mov.w @(0x06,r1),r0
mov.l r0,@-r15
mov r0,r3
mov.l @r14,r7
mov.l @r14,r6
mov.w @(0x04,r7),r0
mov.l @r14,r5
mov r0,r7
mov.w @(0x02,r6),r0
mov.w @(loc_8c1B29E6,pc),r4 ; r4 set to 0xAA1
mov r0,r6
jsr @r13
mov.w @r5,r5
mov.l @r14,r3
mov.w @(0x12,r3),r0
mov.l r0,@-r15
mov r0,r2
mov.l @r14,r1
mov.w @(0x10,r1),r0
mov r0,r3
mov.l r0,@-r15
mov.l @r14,r7
mov.l @r14,r6
mov.w @(0x0E,r7),r0
mov.l @r14,r5
mov r0,r7
mov.w @(0x0C,r6),r0
mov.w @(loc_8c1B29E8,pc),r4 ; r4 set to 0xBA1
mov r0,r6
mov.w @(0x0A,r5),r0
jsr @r13
mov r0,r5
mov.l @r14,r1
mov.l @(loc_8c1B2A24,pc),r3 ; r3 set to 0x8C1C7F50
mov.w @(0x14,r1),r0
mov.w @r3,r1
mov.l @(loc_8c1B2A28,pc),r2 ; r2 set to 0x8C129128
mulu.w r1,r0
mov.w @(loc_8c1B29EA,pc),r0 ; r0 set to 0x2710
mov.l @(loc_8c1B2A20,pc),r12 ; r12 set to 0x8C19E430
jsr @r2
sts macl,r1
mov.l r0,@-r15
mov.l @r14,r1
mov.l @(loc_8c1B2A28,pc),r2 ; r2 set to 0x8C129128
mov.w @(0x14,r1),r0
mov.w @r3,r1
mulu.w r1,r0 ; r0 ??? bc r1 is ???
mov.w @(loc_8c1B29EA,pc),r0 ; r0 set to 0x2710
jsr @r2
sts macl,r1
mov.l @r14,r6
mov r0,r7 ; r7 set to 0x2710
mov.l @r14,r5
mov.w @(0x18,r6),r0
mov r0,r6 ; r6 set to 0x2710
mov.w @(0x16,r5),r0
mov r0,r5 ; r5 set to 0x2710
jsr @r12
mov 0x00,r4 ; r4 set to 0x00
mov.l @(loc_8c1B2A30,pc),r3 ; r3 set to 0xD22D
mov.l @(loc_8c1B2A2C,pc),r14 ; r14 set to 0xC147
mov.l r3,@-r15
mov.l @(loc_8c1B2A34,pc),r6 ; r6 set to 0xFBF9
mov.w @(loc_8c1B29EE,pc),r5 ; r5 set to 0x205
mov.w @(loc_8c1B29F0,pc),r4 ; r4 set to 0xAA7
mov.w @(loc_8c1B29EC,pc),r7 ; r7 set to 0x206
jsr @r13
mov.l r14,@-r15
mov.l @(loc_8c1B2A38,pc),r2 ; r2 set to 0xD1F8
mov.l r2,@-r15
mov.w @(loc_8c1B29EE,pc),r5 ; r5 set to 0x205
mov.w @(loc_8c1B29F4,pc),r4 ; r4 set to 0xBA7
mov.w @(loc_8c1B29F2,pc),r6 ; r6 set to 0x380
mov.w @(loc_8c1B29EC,pc),r7 ; r7 set to 0x206
jsr @r13
mov.l r14,@-r15
mov.w @(loc_8c1B29F6,pc),r3 ; r3 set to 0x1C00
mov.l r3,@-r15
mov.w @(loc_8c1B29FA,pc),r6 ; r6 set to 0x2DF
mov.w @(loc_8c1B29FC,pc),r5 ; r5 set to 0x7E67
mov.w @(loc_8c1B29F8,pc),r7 ; r7 set to 0x2A00
jsr @r12
mov 0x01,r4 ; r4 set to 0x01
mov.l @(loc_8c1B2A3C,pc),r3 ; r3 set to 0x8C347970
mov.l @r3,r2 ; r2 ??
mov.b @(0x08,r2),r0
or 0x40,r0
mov.b r0,@(0x08,r2)
mov 0x00,r2 ; r2 set to 0x00
mov.l r2,@-r15
mov r2,r6 ; r6 set to 0x00
mov.l r2,@-r15
mov.w @(loc_8c1B29FE,pc),r7 ; r7 set to 0x7FFF
mov.w @(loc_8c1B2A00,pc),r4 ; r4 set to 0xAB2
jsr @r13
mov r2,r5 ; r5 set to 0x00
mov 0x00,r3 ; r3 set to 0x00
mov.l r3,@-r15
mov r3,r6 ; r6 set to 0x00
mov.l r3,@-r15
mov.w @(loc_8c1B29FE,pc),r7 ; r7 set to 0x7FFF
mov.w @(loc_8c1B2A02,pc),r4 ; r4 set to 0xBB2
jsr @r13
mov r3,r5 ; r5 set to 0x00
mov.w @(loc_8c1B2A04,pc),r2 ; r2 set to 0x35A7
mov.l r2,@-r15
mov.w @(loc_8c1B2A08,pc),r5 ; r5 set to 0x244
mov.w @(loc_8c1B2A0A,pc),r4 ; r4 set to 0xAAD
mov.l @(loc_8c1B2A40,pc),r6 ; r6 set to 0xFB7B
mov.w @(loc_8c1B2A06,pc),r7 ; r7 set to 0x245
jsr @r13
mov.l r14,@-r15
mov.w @(loc_8c1B2A0C,pc),r3 ; r3 set to 0x3574
mov.l r3,@-r15
mov.w @(loc_8c1B2A08,pc),r5 ; r5 set to 0x244
mov.w @(loc_8c1B2A10,pc),r4 ; r4 set to 0xBAD
mov.w @(loc_8c1B2A0E,pc),r6 ; r6 set to 0xCA
mov.w @(loc_8c1B2A06,pc),r7 ; r7 set to 0x245
jsr @r13
mov.l r14,@-r15
mov.w @(loc_8c1B29F6,pc),r2 ; r2 set to 0x1C00
mov.l r2,@-r15
mov.w @(loc_8c1B29FA,pc),r6 ; r6 set to 0x2DF
mov.w @(loc_8c1B29FC,pc),r5 ; r5 set to 0x7E67
mov.w @(loc_8c1B29F8,pc),r7 ; r7 set to 0x2A00
jsr @r12
mov 0x02,r4 ; r4 set to 0x02
bsr loc_8c1B2A70
add 0x4C,r15
lds.l @r15+,pr
mov.l @(loc_8c1B2A44,pc),r2 ; r2 set to 0x8C19E444
mov.l @r15+,r12 ; r12 ??? bc r15 is ???
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
jmp @r2
mov.l @r15+,r14

loc_8c1B29E6:
#data 0x0AA1

loc_8c1B29E8:
#data 0x0BA1

loc_8c1B29EA:
#data 0x2710

loc_8c1B29EC:
#data 0x0206

loc_8c1B29EE:
#data 0x0205

loc_8c1B29F0:
#data 0x0AA7

loc_8c1B29F2:
#data 0x0380

loc_8c1B29F4:
#data 0x0BA7

loc_8c1B29F6:
#data 0x1C00

loc_8c1B29F8:
#data 0x2A00

loc_8c1B29FA:
#data 0x02DF

loc_8c1B29FC:
#data 0x7E67

loc_8c1B29FE:
#data 0x7FFF

loc_8c1B2A00:
#data 0x0AB2

loc_8c1B2A02:
#data 0x0BB2

loc_8c1B2A04:
#data 0x35A7

loc_8c1B2A06:
#data 0x0245

loc_8c1B2A08:
#data 0x0244

loc_8c1B2A0A:
#data 0x0AAD

loc_8c1B2A0C:
#data 0x3574

loc_8c1B2A0E:
#data 0x00CA

loc_8c1B2A10:
#data 0x0BAD
#data 0x0000

#align4
loc_8c1B2A14:
#data 0x8C34B270

#align4
loc_8c1B2A18:
#data bank19.loc_8c19FE4A

loc_8c1B2A1C:
#data bank19.loc_8c19E416

loc_8c1B2A20:
#data bank19.loc_8c19E430

loc_8c1B2A24:
#data bank1c.loc_8c1c7F50

loc_8c1B2A28:
#data bank12.loc_8c129128

loc_8c1B2A2C:
#data 0x0000C147

#align4
loc_8c1B2A30:
#data 0x0000D22D

#align4
loc_8c1B2A34:
#data 0x0000FBF9

#align4
loc_8c1B2A38:
#data 0x0000D1F8

#align4
loc_8c1B2A3C:
#data 0x8C347970

#align4
loc_8c1B2A40:
#data 0x0000FB7B

#align4
loc_8c1B2A44:
#data bank19.loc_8c19E444


loc_8c1B2A48:
mov.l @(loc_8c1B2B44,pc),r3 ; r3 set to 0x8C347970
mov 0x48,r0 ; r0 set to 0x48
sts.l pr,@-r15
mov.l @r3,r5
mov.b @(r0,r5),r5
mov.w @(loc_8c1B2B40,pc),r2 ; r2 set to 0x80
extu.b r5,r5
mov.l @r3,r0 ; r0 ??
cmp/eq r2,r5
add 0x2C,r0
movt r5
mov.b @r0,r0
tst 0x80,r0
movt r4
add 0xFF,r4
bsr loc_8c1B2A90
neg r4,r4
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c1B2A70:
mov.l @(loc_8c1B2B48,pc),r4 ; r4 set to 0x8C34B260
mov 0x00,r5 ; r5 set to 0x00
mov 0x01,r0 ; r0 set to 0x01
mov.b r5,@r4 ; r4 ??
mov.b r0,@(0x01,r4)
mov.l r5,@(0x0C,r4)
mov.l @(loc_8c1B2B4C,pc),r5 ; r5 set to 0x8C34B270
mov.l @r5,r3
mov.w @(0x1A,r3),r0
extu.w r0,r0 ; r0 set to 0x01
mov.l r0,@(0x04,r4)
mov.l @r5,r3
mov.w @(0x1C,r3),r0
extu.w r0,r0 ; r0 set to 0x01
rts
mov.l r0,@(0x08,r4)
;-------------------------------------------------------------------------------

loc_8c1B2A90:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l @(loc_8c1B2B4C,pc),r2 ; r2 set to 0x8C34B270
sts.l pr,@-r15
mov.l @r2,r3
mov.l @(loc_8c1B2B48,pc),r14 ; r14 set to 0x8C34B260
mov.w @(0x1A,r3),r0
tst r0,r0
bt/s loc_8c1B2AF8
mov r4,r12
exts.b r5,r5
mov.l @(loc_8c1B2B50,pc),r13 ; r13 set to 0x8C1B3EEC
tst r5,r5
bf/s loc_8c1B2AFC
mov.b @r14,r4
exts.b r4,r3
exts.b r12,r2 ; r2 ??? bc r12 is ???
cmp/eq r3,r2
bt loc_8c1B2AF8
mov.b @(0x01,r14),r0
tst r0,r0
bt loc_8c1B2AEA
exts.b r4,r4
tst r4,r4
bt loc_8c1B2AD8
mov r14,r4 ; r4 set to 0x8C34B260
mov 0x00,r5 ; r5 set to 0x00
jsr @r13
add 0x04,r4 ; r4 set to 0x8C34B264
mov.l @(0x04,r14),r2
mov.l @(0x0C,r14),r3
sub r3,r2
add 0x03,r2
bra loc_8c1B2AEA
mov.l r2,@(0x04,r14)

#align4
loc_8c1B2AD8:
#data 0xE50064E3
#data 0x74084D0B
#data 0x53E352E2
#data 0x72033238
#data 0x1E22

loc_8c1B2AEA:
#data 0x64E3
#data 0x4D0BE500
#data 0xE001740C
#data 0x2EC080E1


loc_8c1B2AF8:
bra loc_8c1B2B36
mov r12,r0

loc_8c1B2AFC:
exts.b r4,r4
tst r4,r4
bt/s loc_8c1B2B16
mov.l @(0x0C,r14),r12
mov.l @(loc_8c1B2B54,pc),r3 ; r3 set to 0x8C1B3F0C
mov.l @(0x04,r14),r4
jsr @r3
add r12,r4
exts.b r0,r0
tst r0,r0
bt loc_8c1B2B30
bra loc_8c1B2B26
mov 0x00,r3

loc_8c1B2B16:
#data 0xD30F
#data 0x430B54E2
#data 0x600E34CC
#data 0x89052008
#data 0xE301

loc_8c1B2B26:
#data 0x64E3
#data 0x2E30E500
#data 0x740C4D0B

#align4
loc_8c1B2B30:
#data 0x80E1E000
#data 0x60E0


loc_8c1B2B36:
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1B2B40:
#data 0x0080
#data 0x0000

#align4
loc_8c1B2B44:
#data 0x8C347970

#align4
loc_8c1B2B48:
#data 0x8C34B260

#align4
loc_8c1B2B4C:
#data 0x8C34B270

#align4
loc_8c1B2B50:
#data loc_8c1B3EEC

loc_8c1B2B54:
#data loc_8c1B3F0C


loc_8c1B2B58:
add 0xFC,r15
mov r15,r2
mov r15,r3
add 0x01,r2
add 0x02,r3
mov.w r4,@r3
mov.b r5,@r2
mov.w @(0x02,r15),r0
extu.w r0,r0
mov 0x2A,r1 ; r1 set to 0x2A
cmp/hs r1,r0
bf loc_8c1B2B74
bra loc_8c1B2EC6
nop

loc_8c1B2B74:
shll r0
mov r0,r1
mova @(loc_8c1B2B80,pc),r0  ; r0 set to 0x8C1B2B80
mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???
braf r0
nop

#align4
loc_8c1B2B80:
#data 0x00620054
#data 0x00860074
#data 0x00AA0098
#data 0x00CE00BC
#data 0x00F200E0
#data 0x01160104
#data 0x013A0128
#data 0x015A014C
#data 0x017E016C
#data 0x019A018C
#data 0x01B601A8
#data 0x01D601C8
#data 0x01F201E4
#data 0x02960200
#data 0x02AA02A0
#data 0x02C602B4
#data 0x02DA02D0
#data 0x02F602E4
#data 0x03120300
#data 0x0326031C
#data 0x033A0330
#data 0x200884F1
#data 0xA1718901
#data 0xA1720009
#data 0x84F10009
#data 0x8B022008
#data 0x000BD068
#data 0xD0687F04
#data 0x7F04000B
;-------------------------------------------------------------------------------
#data 0x200884F1
#data 0xD0668B02
#data 0x7F04000B
;-------------------------------------------------------------------------------
#data 0x000BD065
#data 0x84F17F04
#data 0x8B022008
#data 0x000BD063
#data 0xD0637F04
#data 0x7F04000B
;-------------------------------------------------------------------------------
#data 0x200884F1
#data 0xD0618B02
#data 0x7F04000B
;-------------------------------------------------------------------------------
#data 0x000BD060
#data 0x84F17F04
#data 0x8B022008
#data 0x000BD05E
#data 0xD05E7F04
#data 0x7F04000B
;-------------------------------------------------------------------------------
#data 0x200884F1
#data 0xD05C8B02
#data 0x7F04000B
;-------------------------------------------------------------------------------
#data 0x000BD05B
#data 0x84F17F04
#data 0x8B022008
#data 0x000BD059
#data 0xD0597F04
#data 0x7F04000B
;-------------------------------------------------------------------------------
#data 0x200884F1
#data 0xD0578B02
#data 0x7F04000B
;-------------------------------------------------------------------------------
#data 0x000BD056
#data 0x84F17F04
#data 0x8B022008
#data 0x000BD054
#data 0xD0547F04
#data 0x7F04000B
;-------------------------------------------------------------------------------
#data 0x200884F1
#data 0xD0528B02
#data 0x7F04000B
;-------------------------------------------------------------------------------
#data 0x000BD051
#data 0x84F17F04
#data 0x8B022008
#data 0x000BD04F
#data 0xD04F7F04
#data 0x7F04000B
;-------------------------------------------------------------------------------
#data 0x200884F1
#data 0xD04D8B02
#data 0x7F04000B
;-------------------------------------------------------------------------------
#data 0x000BD04C
#data 0x84F17F04
#data 0x8B022008
#data 0x000BD04A
#data 0xD04A7F04
#data 0x7F04000B
;-------------------------------------------------------------------------------
#data 0x200884F1
#data 0xA0F58901
#data 0xA0F60009
#data 0x84F10009
#data 0x8B022008
#data 0x000BD044
#data 0xD0447F04
#data 0x7F04000B
;-------------------------------------------------------------------------------
#data 0x200884F1
#data 0xD0428B02
#data 0x7F04000B
;-------------------------------------------------------------------------------
#data 0x000BD041
#data 0x84F17F04
#data 0x89012008
#data 0x0009A0DC
#data 0x0009A0DD
#data 0x200884F1
#data 0xA0D58901
#data 0xA0D60009
#data 0x84F10009
#data 0x89012008
#data 0x0009A0CE
#data 0x0009A0CF
#data 0x200884F1
#data 0xA0C78901
#data 0xA0C80009
#data 0x84F10009
#data 0x8B022008
#data 0x000BD031
#data 0xD0317F04
#data 0x7F04000B
;-------------------------------------------------------------------------------
#data 0x200884F1
#data 0xA0B78901
#data 0xA0B80009
#data 0x84F10009
#data 0x89012008
#data 0x0009A0B0
#data 0x0009A0B1
#data 0x200884F1
#data 0xA0A98901
#data 0xA0AA0009
#data 0x84F10009
#data 0x89012008
#data 0x0009A0A2
#data 0x0009A0A3
#data 0x200884F1
#data 0xD0218B44
#data 0x7F04000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B2D8C:
#data bank1c.loc_8c1c7F98

loc_8c1B2D90:
#data bank1c.loc_8c1c7FB6

loc_8c1B2D94:
#data bank1c.loc_8c1c7FD4

loc_8c1B2D98:
#data bank1c.loc_8c1c7FF2

loc_8c1B2D9C:
#data bank1c.loc_8c1c8010

loc_8c1B2DA0:
#data bank1c.loc_8c1c802E

loc_8c1B2DA4:
#data bank1c.loc_8c1c804C

loc_8c1B2DA8:
#data bank1c.loc_8c1c806A

loc_8c1B2DAC:
#data bank1c.loc_8c1c8088

loc_8c1B2DB0:
#data bank1c.loc_8c1c80A6

loc_8c1B2DB4:
#data bank1c.loc_8c1c80C4

loc_8c1B2DB8:
#data bank1c.loc_8c1c80E2

loc_8c1B2DBC:
#data bank1c.loc_8c1c81F0

loc_8c1B2DC0:
#data bank1c.loc_8c1c820E

loc_8c1B2DC4:
#data bank1c.loc_8c1c81B4

loc_8c1B2DC8:
#data bank1c.loc_8c1c81D2

loc_8c1B2DCC:
#data bank1c.loc_8c1c822C

loc_8c1B2DD0:
#data bank1c.loc_8c1c824A

loc_8c1B2DD4:
#data bank1c.loc_8c1c8178

loc_8c1B2DD8:
#data bank1c.loc_8c1c8196

loc_8c1B2DDC:
#data bank1c.loc_8c1c813C

loc_8c1B2DE0:
#data bank1c.loc_8c1c815A

loc_8c1B2DE4:
#data bank1c.loc_8c1c8100

loc_8c1B2DE8:
#data bank1c.loc_8c1c811E

loc_8c1B2DEC:
#data bank1c.loc_8c1c82E0

loc_8c1B2DF0:
#data bank1c.loc_8c1c82FE

loc_8c1B2DF4:
#data bank1c.loc_8c1c8268

loc_8c1B2DF8:
#data bank1c.loc_8c1c8286

loc_8c1B2DFC:
#data bank1c.loc_8c1c82A4

loc_8c1B2E00:
#data bank1c.loc_8c1c82C2

loc_8c1B2E04:
#data bank1c.loc_8c1c831C

loc_8c1B2E08:
#data bank1c.loc_8c1c833A

loc_8c1B2E0C:
#data bank1c.loc_8c1c8358
#data 0x000BD02E
#data 0x84F17F04
#data 0x8B512008
#data 0x0009A053
#data 0x200884F1
#data 0xA04E8B4C
#data 0x84F10009
#data 0x8B472008
#data 0x0009A049
#data 0x200884F1
#data 0xD0258B02
#data 0x7F04000B
;-------------------------------------------------------------------------------
#data 0x000BD024
#data 0x84F17F04
#data 0x8B392008
#data 0x0009A03B
#data 0x200884F1
#data 0xA0368B34
#data 0x84F10009
#data 0x8B2F2008
#data 0x0009A031
#data 0x200884F1
#data 0xD01B8B02
#data 0x7F04000B
;-------------------------------------------------------------------------------
#data 0x000BD01A
#data 0x84F17F04
#data 0x8B212008
#data 0x0009A023
#data 0x200884F1
#data 0xD0168B02
#data 0x7F04000B
;-------------------------------------------------------------------------------
#data 0x000BD015
#data 0x84F17F04
#data 0x8B132008
#data 0x0009A015
#data 0x200884F1
#data 0xA0108B0E
#data 0x84F10009
#data 0x8B092008
#data 0x0009A00B
#data 0x200884F1
#data 0xA0068B04
#data 0x84F10009
#data 0x89022008
#data 0x000BD009
#data 0x7F04
;-------------------------------------------------------------------------------

loc_8c1B2EC6:
mov.l @(loc_8c1B2EEC,pc),r0 ; r0 set to 0x8C1C7F5C
rts
add 0x04,r15
;-------------------------------------------------------------------------------

#align4
loc_8c1B2ECC:
#data bank1c.loc_8c1c8376

loc_8c1B2ED0:
#data bank1c.loc_8c1c8394

loc_8c1B2ED4:
#data bank1c.loc_8c1c83B2

loc_8c1B2ED8:
#data bank1c.loc_8c1c83D0

loc_8c1B2EDC:
#data bank1c.loc_8c1c83EE

loc_8c1B2EE0:
#data bank1c.loc_8c1c840C

loc_8c1B2EE4:
#data bank1c.loc_8c1c842A

loc_8c1B2EE8:
#data bank1c.loc_8c1c7F7A

loc_8c1B2EEC:
#data bank1c.loc_8c1c7F5C


loc_8c1B2EF0:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @(loc_8c1B302C,pc),r3 ; r3 set to 0x8C1A03CC
mov.l @(loc_8c1B3028,pc),r13 ; r13 set to 0x8C34B280
jsr @r3
nop
mov r0,r2
tst r2,r2
bf/s loc_8c1B2F12
mov.l r0,@r13 ; r13 ??? bc r0 is ???
mov.l @(loc_8c1B3030,pc),r3 ; r3 set to 0x8C1A003E
mov.w @(loc_8c1B3012,pc),r4 ; r4 set to 0x4F10
jsr @r3
nop
bra loc_8c1B2FFA
nop

loc_8c1B2F12:
#data 0xE700
#data 0x6673EE01
#data 0x957B2FE6
#data 0x64E3B15D
#data 0x2008600E
#data 0x7F048D64
#data 0x2FE6E700
#data 0x66739573
#data 0xE401B153
#data 0x2008600E
#data 0x7F048D5A
#data 0x2FE6E700
#data 0x6673956A
#data 0xE401B149
#data 0x2008600E
#data 0x7F048D50
#data 0x2FE6E700
#data 0x6673E541
#data 0xE401B13F
#data 0x2008600E
#data 0x7F048D46
#data 0x2FE6E700
#data 0x66739557
#data 0xE401B135
#data 0x2008600E
#data 0x7F048D3C
#data 0x2FE6E700
#data 0x6673954E
#data 0x6473B12B
#data 0x2008600E
#data 0x7F048D32
#data 0x2FE6E700
#data 0x66739545
#data 0x6473B121
#data 0x2008600E
#data 0x7F048D28
#data 0x2FE6E700
#data 0x6673953C
#data 0x6473B117
#data 0x2008600E
#data 0x7F048D1E
#data 0x2FE6E700
#data 0x66739533
#data 0x6473B10D
#data 0x2008600E
#data 0x7F048D14
#data 0x2FE6E601
#data 0xE7006563
#data 0x6473B103
#data 0x2008600E
#data 0x7F048D0A
#data 0x2FE6E601
#data 0xE7009520
#data 0x6473B0F9
#data 0x2008600E
#data 0x7F048F07

#align4
loc_8c1B2FF0:
#data 0x420BD210
#data 0xE3000009
#data 0x2D32


loc_8c1B2FFA:
bra loc_8c1B300A
mov 0x00,r0

loc_8c1B2FFE:
#data 0xD20D
#data 0x0009420B
#data 0xE001E300
#data 0x2D32


loc_8c1B300A:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1B3012:
#data 0x4F10
#data 0x00EE00EB
#data 0x00EA00EC
#data 0x00FD00F2
#data 0x00F800F7
#data 0x000000F0

#align4
loc_8c1B3028:
#data 0x8C34B280

#align4
loc_8c1B302C:
#data bank1a.loc_8c1a03CC

loc_8c1B3030:
#data bank1a.loc_8c1a003E

loc_8c1B3034:
#data bank1a.loc_8c1a03F2


loc_8c1B3038:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
mov.l @(loc_8c1B3138,pc),r4 ; r4 set to 0x8C347979
mov.l @(loc_8c1B3134,pc),r12 ; r12 set to 0x8C19E30C
mov r4,r0 ; r0 set to 0x8C347979
nop
mov.b @r0,r0 ; r0 ??
tst 0x20,r0
bt loc_8c1B3076
mov.l @(loc_8c1B313C,pc),r2 ; r2 set to 0x8C347970
mov 0x50,r1 ; r1 set to 0x50
mov.l @r2,r0
mov.b @(r0,r1),r0
extu.b r0,r0
cmp/eq 0x43,r0
bf loc_8c1B3076
mov.b @r4,r0
and 0xDF,r0
bsr loc_8c1B3102
mov.b r0,@r4 ; r4 ??? bc r0 is ???
exts.b r0,r0
tst r0,r0
bt loc_8c1B30CC
mov.l @(loc_8c1B3140,pc),r3 ; r3 set to 0x8C347985
mov 0x01,r6 ; r6 set to 0x01
mov.w @(loc_8c1B312A,pc),r4 ; r4 set to 0x604
mov.b @r3,r5
bra loc_8c1B30EE
extu.b r5,r5

loc_8c1B3076:
mov r4,r0
nop
mov.b @r0,r0
tst 0x08,r0
bt loc_8c1B30F6
mov.l @(loc_8c1B313C,pc),r3 ; r3 set to 0x8C347970
mov 0x50,r1 ; r1 set to 0x50
mov.l @r3,r0
mov.b @(r0,r1),r0
extu.b r0,r0
cmp/eq 0x43,r0
bf loc_8c1B30F6
mov.b @r4,r0
mov.l @(loc_8c1B3144,pc),r14 ; r14 set to 0x8C34B280
mov.l @(loc_8c1B3148,pc),r3 ; r3 set to 0x8C1A03CC
and 0xF7,r0
jsr @r3
mov.b r0,@r4
mov r0,r2
tst r2,r2
bf/s loc_8c1B30AE
mov.l r0,@r14 ; r14 ??? bc r0 is ???
mov.l @(loc_8c1B314C,pc),r3 ; r3 set to 0x8C1A003E
mov.w @(loc_8c1B312C,pc),r4 ; r4 set to 0x4F24
jsr @r3
nop
bra loc_8c1B30CC
nop

loc_8c1B30AE:
mov 0x00,r13 ; r13 set to 0x00
mov 0x01,r6 ; r6 set to 0x01
mov.l r13,@-r15
mov 0x43,r5 ; r5 set to 0x43
mov r13,r7 ; r7 set to 0x00
bsr loc_8c1B31DA
mov r6,r4 ; r4 set to 0x01
exts.b r0,r0
tst r0,r0
bf/s loc_8c1B30D0
add 0x04,r15
mov.l @(loc_8c1B3150,pc),r3 ; r3 set to 0x8C1A03F2
jsr @r3
nop
mov.l r13,@r14

loc_8c1B30CC:
bra loc_8c1B30F8
mov 0x02,r0

loc_8c1B30D0:
mov.l @(loc_8c1B3150,pc),r3 ; r3 set to 0x8C1A03F2
jsr @r3
nop
mov 0x01,r6 ; r6 set to 0x01
mov.l r13,@r14
mov.l @(loc_8c1B3154,pc),r2 ; r2 set to 0x8C347983
mov.w @(loc_8c1B312A,pc),r4 ; r4 set to 0x604
mov.b @r2,r5
jsr @r12
extu.b r5,r5
mov.l @(loc_8c1B3158,pc),r3 ; r3 set to 0x8C347981
mov 0x01,r6 ; r6 set to 0x01
mov.w @(loc_8c1B312E,pc),r4 ; r4 set to 0x605
mov.b @r3,r5
extu.b r5,r5

loc_8c1B30EE:
jsr @r12
nop
bra loc_8c1B30F8
mov 0x01,r0

loc_8c1B30F6:
mov 0x00,r0 ; r0 set to 0x00

loc_8c1B30F8:
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1B3102:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
sts.l pr,@-r15
mov.l @(loc_8c1B3144,pc),r13 ; r13 set to 0x8C34B280
mov.l @(loc_8c1B3148,pc),r3 ; r3 set to 0x8C1A03CC
add 0xFC,r15
jsr @r3
nop
mov r0,r2
mov.l @(loc_8c1B314C,pc),r12 ; r12 set to 0x8C1A003E
tst r2,r2
bf/s loc_8c1B315C
mov.l r0,@r13 ; r13 ??? bc r0 is ???
mov.w @(loc_8c1B3130,pc),r4 ; r4 set to 0x4F4C
jsr @r12
nop
bra loc_8c1B31BE
nop

loc_8c1B312A:
#data 0x0604

loc_8c1B312C:
#data 0x4F24

loc_8c1B312E:
#data 0x0605

loc_8c1B3130:
#data 0x4F4C
#data 0x0000

#align4
loc_8c1B3134:
#data bank19.loc_8c19E30C

loc_8c1B3138:
#data 0x8C347979

#align4
loc_8c1B313C:
#data 0x8C347970

#align4
loc_8c1B3140:
#data 0x8C347985

#align4
loc_8c1B3144:
#data 0x8C34B280

#align4
loc_8c1B3148:
#data bank1a.loc_8c1a03CC

loc_8c1B314C:
#data bank1a.loc_8c1a003E

loc_8c1B3150:
#data bank1a.loc_8c1a03F2

loc_8c1B3154:
#data 0x8C347983

#align4
loc_8c1B3158:
#data 0x8C347981


loc_8c1B315C:
mov 0x00,r14 ; r14 set to 0x00
mov 0x01,r6 ; r6 set to 0x01
mov.l r14,@-r15
mov 0x43,r5 ; r5 set to 0x43
mov r14,r7 ; r7 set to 0x00
bsr loc_8c1B31DA
mov r6,r4 ; r4 set to 0x01
exts.b r0,r0
tst r0,r0
bt/s loc_8c1B31B6
add 0x04,r15
mov.l @(loc_8c1B324C,pc),r2 ; r2 set to 0x8C1B3EEC
mov 0x32,r5 ; r5 set to 0x32
jsr @r2
mov r15,r4 ; r4 ??? bc r15 is ???
bra loc_8c1B3194
nop

loc_8c1B317E:
#data 0xDB34
#data 0x64F24B0B
#data 0x2008600E
#data 0x9E5D8904
#data 0x64E34C0B
#data 0x0009A015

#align4
loc_8c1B3194:
#data 0xE150D42F
#data 0x001C6042
#data 0x884A600C
#data 0xE6018BED
#data 0xE54A2FE6
#data 0xB016E700
#data 0x600E6463
#data 0x8F062008
#data 0x7F04


loc_8c1B31B6:
mov.l @(loc_8c1B3258,pc),r2 ; r2 set to 0x8C1A03F2
jsr @r2
nop
mov.l r14,@r13

loc_8c1B31BE:
bra loc_8c1B31CC
mov 0x00,r0

loc_8c1B31C2:
#data 0xD325
#data 0x0009430B
#data 0x2DE2E001


loc_8c1B31CC:
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1B31DA:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov 0x00,r12 ; r12 set to 0x00
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
mov.l @(loc_8c1B3250,pc),r11 ; r11 set to 0x8C1B3F0C
mov.l @(loc_8c1B3260,pc),r13 ; r13 set to 0x8C34B280
mov.l @(loc_8c1B3254,pc),r14 ; r14 set to 0x8C347970
add 0xE4,r15
mov.l @(loc_8c1B3258,pc),r8 ; r8 set to 0x8C1A03F2
mov.l @(loc_8c1B325C,pc),r9 ; r9 set to 0x8C1A003E
mov r4,r0
nop
mov.b r0,@(0x08,r15)
mov 0x10,r0 ; r0 set to 0x10
mov.b r5,@(r0,r15)
mov 0x14,r0 ; r0 set to 0x14
mov.b r6,@(r0,r15)
mov r7,r0 ; r0 ??? bc r7 is ???
nop
mov.b r0,@(0x04,r15)
mov.l @r13,r3
tst r3,r3
bf/s loc_8c1B3228
mov r12,r10 ; r10 set to 0x00
mov.l @(loc_8c1B3264,pc),r3 ; r3 set to 0x8C1A03CC
jsr @r3
mov 0x01,r10 ; r10 set to 0x01
mov r0,r2
tst r2,r2
bf/s loc_8c1B3228
mov.l r0,@r13 ; r13 ??? bc r0 is ???
mov.w @(loc_8c1B324A,pc),r4 ; r4 set to 0x4F10
bra loc_8c1B3354
nop

loc_8c1B3228:
mov 0x18,r0 ; r0 set to 0x18
mov 0x01,r2 ; r2 set to 0x01
mov.b r2,@(r0,r15)
mov.b @(0x08,r15),r0
extu.b r0,r0 ; r0 set to 0x18
cmp/eq 0x01,r0
bf/s loc_8c1B3268
mov.l @r13,r4
mov 0x4F,r0 ; r0 set to 0x4F
mov.b r0,@(0x08,r15)
mov.b @(0x04,r15),r0
tst r0,r0
bf loc_8c1B327A
mov 0x07,r7 ; r7 set to 0x07
bra loc_8c1B327A
mov r4,r5
#data 0x4E98

loc_8c1B324A:
#data 0x4F10

#align4
loc_8c1B324C:
#data loc_8c1B3EEC

loc_8c1B3250:
#data loc_8c1B3F0C

loc_8c1B3254:
#data 0x8C347970

#align4
loc_8c1B3258:
#data bank1a.loc_8c1a03F2

loc_8c1B325C:
#data bank1a.loc_8c1a003E

loc_8c1B3260:
#data 0x8C34B280

#align4
loc_8c1B3264:
#data bank1a.loc_8c1a03CC

loc_8c1B3268:
#data 0x80F8E05F
#data 0x200884F4
#data 0x93738B03
#data 0xE7066543
#data 0x353C


loc_8c1B327A:
mov 0x10,r0 ; r0 set to 0x10
mov r12,r4
mov.b @(r0,r15),r2
extu.w r7,r6
cmp/pl r6
extu.b r2,r2
bf/s loc_8c1B32BC
mov.l r2,@(0x0C,r15)

loc_8c1B328A:
extu.w r4,r2
mov r2,r3
shll r2
add r3,r2
mov.l @(0x0C,r15),r3
shll2 r2
shll r2
add r5,r2
mov.w @r2,r1
extu.w r1,r1
cmp/eq r1,r3
bf loc_8c1B32B4
extu.w r4,r1
mov r1,r3
shll r1
add r3,r1
shll2 r1
shll r1
add r5,r1
bra loc_8c1B32BC
mov.l r1,@(0x04,r15)

#align4
loc_8c1B32B4:
#data 0x624D7401
#data 0x8BE63263

#align4
loc_8c1B32BC:
#data 0x3460644D
#data 0x60AC8B09
#data 0x8B038801
#data 0x0009480B
#data 0x2DC26AC3

#align4
loc_8c1B32D0:
#data 0xA09B9445
#data 0x0009

loc_8c1B32D6:
#data 0xE03C
#data 0x222802FC
#data 0x63E28923
#data 0x84F8E150
#data 0x2100313C
#data 0xE532D31E
#data 0x64F3430B
#data 0x0009A010

#align4
loc_8c1B32F4:
#data 0x64F24B0B
#data 0x2008600E
#data 0x60AC890A
#data 0x8B028801
#data 0x0009480B
#data 0x2DC2

loc_8c1B330A:
#data 0x9A29
#data 0x64A3490B
#data 0x0009A072

#align4
loc_8c1B3314:
#data 0xE26C63E2
#data 0x323C84F8
#data 0x30206220
#data 0xA0218BE8
#data 0x0009

loc_8c1B3326:
#data 0xD30F
#data 0x430BE502
#data 0x64F3

loc_8c1B332E:
#data 0x4B0B
#data 0x600E64F2
#data 0x89FA2008
#data 0xE05062E2
#data 0x52F3032C
#data 0x3320633C
#data 0x60AC8910
#data 0x8B028801
#data 0x0009480B
#data 0x2DC2

loc_8c1B3352:
#data 0x9406


loc_8c1B3354:
jsr @r9
nop
bra loc_8c1B33F8
nop
#data 0x4EAC00A8
#data 0x4ED44EC0

#align4
loc_8c1B3364:
#data loc_8c1B3EEC

loc_8c1B3368:
#data 0xE05854F1
#data 0x544263E2
#data 0x644D0344
#data 0xE05C63E2
#data 0x03444419
#data 0x64C3A010

#align4
loc_8c1B3380:
#data 0x703460E2
#data 0xC8026000
#data 0x53F1890A
#data 0x60D29258
#data 0x302C5335
#data 0x303C61E2
#data 0xE040034C
#data 0x74010134

#align4
loc_8c1B33A0:
#data 0x523453F1
#data 0x8BEB3422
#data 0xE502D227
#data 0x64F3420B

#align4
loc_8c1B33B0:
#data 0x64F24B0B
#data 0x2008600E
#data 0xE01489FA
#data 0x02FC63E2
#data 0x2228E050
#data 0xD32003C4
#data 0x430BE532
#data 0x943864F3

#align4
loc_8c1B33D0:
#data 0xE05C63E2
#data 0x622C023C
#data 0x8BF93240
#data 0x64F24B0B
#data 0x2008600E
#data 0x60AC890A
#data 0x8B028801
#data 0x0009480B
#data 0x2DC2

loc_8c1B33F2:
#data 0x9427
#data 0x0009490B


loc_8c1B33F8:
bra loc_8c1B3424
mov 0x00,r0

#align4
loc_8c1B33FC:
#data 0xE05862E2
#data 0x52F1032C
#data 0x33008424
#data 0x941C8904

#align4
loc_8c1B340C:
#data 0x0009490B
#data 0x0FC4E018

#align4
loc_8c1B3414:
#data 0x880160AC
#data 0x480B8B02
#data 0x2DC20009

#align4
loc_8c1B3420:
#data 0x00FCE018


loc_8c1B3424:
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
;-------------------------------------------------------------------------------

loc_8c1B3438:
mov.l @(loc_8c1B344C,pc),r2 ; r2 set to 0x8C34B280
mov 0x00,r3 ; r3 set to 0x00
rts
mov.l r3,@r2
;-------------------------------------------------------------------------------
#data 0x00FF0138
#data 0x4EFC4EE8

#align4
loc_8c1B3448:
#data loc_8c1B3EEC

loc_8c1B344C:
#data 0x8C34B280


loc_8c1B3450:
rts
nop
;-------------------------------------------------------------------------------

#align4
loc_8c1B3454:
#data 0x604CD37A
#data 0x23408805
#data 0x8D0ED579
#data 0x88062540
#data 0xE4008B0B
#data 0x00096043
#data 0xD6768051
#data 0x600C6060
#data 0x8B018801
#data 0x8051E001

loc_8c1B347C:
#data 0x2640

loc_8c1B347E:
#data 0xD373
#data 0x0009432B
#data 0xE3012FE6
#data 0x4F22DE71
#data 0x644C64E0
#data 0x8B292348
#data 0x2418E102
#data 0x4F268B03
#data 0x422BD26D
#data 0xD46D6EF6
#data 0x00096043
#data 0x6000701B
#data 0xC880600C
#data 0x60438B06
#data 0x701D0009
#data 0x600C6000
#data 0x8903C820
#data 0xE4054F26
#data 0x6EF6AFC6
#data 0x0009B2EE
#data 0x2008600E
#data 0xD4628B0A
#data 0x6241D362
#data 0x24212239
#data 0xCB086041
#data 0x60E02401
#data 0x2E00CB01
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1B34EE:
mov.l @(loc_8c1B3668,pc),r3 ; r3 set to 0x8C34B302
mov 0x00,r4 ; r4 set to 0x00
mov.l @(loc_8c1B3664,pc),r5 ; r5 set to 0x8C1B3450
mov.b r4,@r3 ; r3 ??
mov.b @r5,r2
mov.l @(loc_8c1B366C,pc),r4 ; r4 set to 0x8C34B30A
tst r2,r2
bf loc_8c1B3506
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@r4 ; r4 ??
bra loc_8c1B3454
mov r0,r4

loc_8c1B3506:
mov 0x03,r2 ; r2 set to 0x03
mov.b r2,@r4
bra loc_8c1B3454
mov r2,r4
#data 0xD54D
#data 0x8051E000
#data 0xAF9D8052
#data 0xD355E404
#data 0x65314F22
#data 0x2228625D
#data 0xD2548905
#data 0x420BD152
#data 0xD153605D
#data 0xD5522102
#data 0x63524F26
#data 0x85522432
#data 0x85538142
#data 0x85548143
#data 0x85558144
#data 0x85568145
#data 0x85578146
#data 0x53548147
#data 0x1434000B
;-------------------------------------------------------------------------------

loc_8c1B3558:
mov.l @(loc_8c1B3680,pc),r3 ; r3 set to 0x8C129728
mov 0x14,r6 ; r6 set to 0x14
mov.l @(loc_8c1B367C,pc),r4 ; r4 set to 0x8C34B314
jmp @r3
mov 0x00,r5
#data 0x4F22
#data 0xE60CD447
#data 0x430BD345
#data 0xD338E500
#data 0x600C6030
#data 0x8B01C802
#data 0x0009A0E5
#data 0xD441D536
#data 0x00096053
#data 0x6000701D
#data 0xC820600C
#data 0xD23E8936
#data 0x21186120
#data 0x84438902
#data 0x8043CB08
#data 0x6320D23B
#data 0x89022338
#data 0xCB108443
#data 0xD3398043
#data 0x81426031
#data 0x6250D538
#data 0x89022228
#data 0xCB808443
#data 0x63508043
#data 0x89062338
#data 0x73036343
#data 0xC9F86030
#data 0xA006CB04
#data 0x61432300
#data 0x60107103
#data 0xCB03C9F8
#data 0xD22E2100
#data 0x23386320
#data 0x84418905
#data 0x8041CB80
#data 0xCB018442
#data 0xD32A8042
#data 0x80496030
#data 0x8048A0A5
#data 0x00096053
#data 0x6000701B
#data 0xC880600C
#data 0xA0888B01
#data 0xD2240009
#data 0x21186120
#data 0x84438902
#data 0x8043CB20
#data 0x6320D221
#data 0x89022338
#data 0xCB408443
#data 0xD2208043
#data 0x6621D31E
#data 0x606D6531
#data 0x3107615D
#data 0xA03B8B3A
#data 0x00006063
#data 0x8C34B309
#data 0x8C34B301
#data 0x8C34B2D4

#align4
loc_8c1B364C:
#data bank19.loc_8c199364
#data 0x8C34B2CA

#align4
loc_8c1B3654:
#data loc_8c1B3DE0
#data 0x8C34B288
#data 0x8C34B2C8
#data 0x0000FFBF

#align4
loc_8c1B3664:
#data loc_8c1B3450

loc_8c1B3668:
#data 0x8C34B302

#align4
loc_8c1B366C:
#data 0x8C34B30A
#data 0x8C34B30C
#data 0x00019000

#align4
loc_8c1B3678:
#data bank12.loc_8c129128

loc_8c1B367C:
#data 0x8C34B314

#align4
loc_8c1B3680:
#data bank12.loc_8c129728
#data 0x8C34B328
#data 0x8C352F25
#data 0x8C352F24
#data 0x8C352F20
#data 0x8C352F05
#data 0x8C352EF5
#data 0x8C352EFF
#data 0x8C352E61
#data 0x8C352E5F
#data 0x8C352E26
#data 0x8C352E28
#data 0x00096053
#data 0x63438142
#data 0x73038443
#data 0x8043CB80
#data 0xC9F86030
#data 0x2300CB05
#data 0xD339D238
#data 0x916A6021
#data 0x430B600D
#data 0xD1376243
#data 0x22286210
#data 0xD5368918
#data 0x23386351
#data 0x62438D02
#data 0xE001A001
#data 0xD330E000
#data 0x430B915A
#data 0x62510009
#data 0x89012228
#data 0xE001A001
#data 0xD32BE000
#data 0x430B9151
#data 0xD22C6243
#data 0x81436021
#data 0x6030D32B
#data 0xD22B8048
#data 0xA0146020
#data 0x60538049
#data 0x701C0009
#data 0x600C6000
#data 0x8B06C8C0
#data 0x71036143
#data 0xC9F86010
#data 0xA006CB02
#data 0x62432100
#data 0x60207203
#data 0xCB01C9F8
#data 0x4F262200
#data 0x000BD01F
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1B374E:
mov 0x02,r2 ; r2 set to 0x02
mov.l r14,@-r15
mov.l @(loc_8c1B37CC,pc),r3 ; r3 set to 0x8C34B2CA
mov.b @r3,r4
extu.b r4,r4
tst r4,r2
bt loc_8c1B37FE
mov.l @(loc_8c1B37D0,pc),r0 ; r0 set to 0x8C34B2E3
mov.b @r0,r0 ; r0 ??
extu.b r0,r0
cmp/eq 0x02,r0
bt loc_8c1B37FE
mov.l @(loc_8c1B37D4,pc),r0 ; r0 set to 0x8C34B2A4
mov.b @r0,r0 ; r0 ??
extu.b r0,r0
tst 0xC0,r0
bf loc_8c1B37FE
mov.l @(loc_8c1B37D0,pc),r5 ; r5 set to 0x8C34B2E3
mov.l @(loc_8c1B37D8,pc),r6 ; r6 set to 0x8C34B2C6
mov.b @r5,r3 ; r3 ??
mov.l @(loc_8c1B37DC,pc),r14 ; r14 set to 0x8C34B2A9
tst r3,r3
bf loc_8c1B379A
mov 0x04,r1 ; r1 set to 0x04
tst r1,r4
bf loc_8c1B37FE
mov r14,r0 ; r0 set to 0x8C34B2A9
nop
add 0x19,r0 ; r0 set to 0x8C34B2C2
mov.b @r0,r0 ; r0 ??
mov 0x0C,r4 ; r4 set to 0x0C
mov 0x05,r3 ; r3 set to 0x05
extu.b r0,r0
and r0,r4 ; r4 ??? bc r0 is ???
shar r4
shar r4
bra loc_8c1B381E
mov.b r3,@r6

loc_8c1B379A:
mov.b @r5,r0
extu.b r0,r0
cmp/eq 0x03,r0
bf loc_8c1B37E0
bra loc_8c1B381E
mov 0x00,r4
#data 0x0807
#data 0x10010F01
#data 0x8C352E5A

#align4
loc_8c1B37B0:
#data bank13.loc_8c13148C
#data 0x8C352E50
#data 0x8C352E52
#data 0x8C352E56
#data 0x8C352E2F
#data 0x8C352E32
#data 0x8C34B328

#align4
loc_8c1B37CC:
#data 0x8C34B2CA

#align4
loc_8c1B37D0:
#data 0x8C34B2E3

#align4
loc_8c1B37D4:
#data 0x8C34B2A4

#align4
loc_8c1B37D8:
#data 0x8C34B2C6

#align4
loc_8c1B37DC:
#data 0x8C34B2A9

#align4
loc_8c1B37E0:
#data 0x6043D47C
#data 0x701B0009
#data 0x600C6000
#data 0x8B09C880
#data 0x00096043
#data 0x6000701D
#data 0xC820600C
#data 0x8B02


loc_8c1B37FE:
mov.l @(loc_8c1B39D8,pc),r2 ; r2 set to 0x8C1B3DE0
jmp @r2
mov.l @r15+,r14

#align4
loc_8c1B3804:
#data 0x731C6343
#data 0xCB206030
#data 0x60E32300
#data 0x70190009
#data 0xE3036000
#data 0xC9032630
#data 0x6403


loc_8c1B381E:
extu.b r4,r0
cmp/eq 0x00,r0
bt loc_8c1B3830
cmp/eq 0x01,r0
bt loc_8c1B3834
cmp/eq 0x02,r0
bt loc_8c1B383C
bra loc_8c1B3852
nop

loc_8c1B3830:
bra loc_8c1B384A
mov 0x00,r5

loc_8c1B3834:
mov.l @(loc_8c1B39DC,pc),r3 ; r3 set to 0x8C34B2D8
mov 0xFF,r2 ; r2 set to 0xFFFFFFFF
bra loc_8c1B3852
mov.l r2,@r3

#align4
loc_8c1B383C:
#data 0x751265E3
#data 0xE3646550
#data 0x253E655C
#data 0x051A


loc_8c1B384A:
mov.l @(loc_8c1B39E0,pc),r2 ; r2 set to 0x8C1B3EEC
mov.l @(loc_8c1B39DC,pc),r4 ; r4 set to 0x8C34B2D8
jmp @r2
mov.l @r15+,r14

loc_8c1B3852:
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x2FE6
#data 0xDE62E301
#data 0x64E04F22
#data 0x2348644C
#data 0xE1028B25
#data 0x8B032418
#data 0xD25A4F26
#data 0x6EF6422B
#data 0x6043D457
#data 0x701B0009
#data 0x600C6000
#data 0x8B06C880
#data 0x00096043
#data 0x6000701D
#data 0xC820600C
#data 0x4F268903
#data 0xADDDE405
#data 0xB1056EF6
#data 0x600E0009
#data 0x8B062008
#data 0x6041D450
#data 0x2401CB40
#data 0xCB0160E0
#data 0x4F262E00
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x6040D44C
#data 0xC880600C
#data 0x60408903
#data 0xA005CB04
#data 0xD3492400
#data 0x2320E200
#data 0xE40CADC0
#data 0x0009000B
;-------------------------------------------------------------------------------

loc_8c1B38D8:
mov.l r14,@-r15
mov 0x01,r3 ; r3 set to 0x01
mov.l @(loc_8c1B39E4,pc),r14 ; r14 set to 0x8C34B2CA
sts.l pr,@-r15
mov.b @r14,r4
extu.b r4,r4
tst r4,r3
bf loc_8c1B3918
mov 0x02,r1 ; r1 set to 0x02
tst r1,r4
bt loc_8c1B38F6
lds.l @r15+,pr
mov 0x05,r4 ; r4 set to 0x05
bra loc_8c1B3454
mov.l @r15+,r14

loc_8c1B38F6:
#data 0xB0D7
#data 0x600E0009
#data 0x8B0B2008
#data 0x6000D03C
#data 0xC880600C
#data 0xD4378903
#data 0xCB406041
#data 0x2401

loc_8c1B3912:
#data 0x60E0
#data 0x2E00CB01


loc_8c1B3918:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x2FE6
#data 0xDE30E301
#data 0x64E04F22
#data 0x2348644C
#data 0xE1028B2A
#data 0x8B032418
#data 0xD2284F26
#data 0x6EF6422B
#data 0x6043D425
#data 0x701B0009
#data 0x600C6000
#data 0x8B06C880
#data 0x00096043
#data 0x6000701D
#data 0xC820600C
#data 0x4F268903
#data 0xAD79E405
#data 0xB0A16EF6
#data 0x600E0009
#data 0x8B0B2008
#data 0x6000D021
#data 0xC880600C
#data 0xD41C8903
#data 0xCB406041
#data 0x60E02401
#data 0x2E00CB01
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1B398A:
#data 0xD316
#data 0x60304F22
#data 0xC801600C
#data 0xB0878B08
#data 0x600E0009
#data 0x8B062008
#data 0x6041D411
#data 0x2401C971

#align4
loc_8c1B39A8:
#data 0xAD53E409
#data 0x4F26

loc_8c1B39AE:
#data 0x4F26
#data 0x0009000B
;-------------------------------------------------------------------------------
#data 0xAD4DD310
#data 0xD20A6430
#data 0x600C6020
#data 0x8B01C802
#data 0xE409AD46
#data 0xD30DD40C
#data 0x432B6440
#data 0x0000644C
#data 0x8C34B288

#align4
loc_8c1B39D8:
#data loc_8c1B3DE0

loc_8c1B39DC:
#data 0x8C34B2D8

#align4
loc_8c1B39E0:
#data loc_8c1B3EEC

loc_8c1B39E4:
#data 0x8C34B2CA
#data 0x8C34B2C8
#data 0x8C34B2A3
#data 0x8C34B302
#data 0x8C34B2B0
#data 0x8C34B309
#data 0x8C34B2E3

#align4
loc_8c1B3A00:
#data bank1a.loc_8c1a0E82

loc_8c1B3A04:
#data 0x4F22D365
#data 0x600C6030
#data 0x8901C802
#data 0x0009B003

#align4
loc_8c1B3A14:
#data 0xAD1DE409
#data 0x4F26

loc_8c1B3A1A:
#data 0xD460
#data 0x600C6040
#data 0x8904C804
#data 0xD25E6040
#data 0x422BC9FB
#data 0x2400

loc_8c1B3A2E:
#data 0x000B
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1B3A32:
#data 0xD35A
#data 0x60304F22
#data 0xC802600C
#data 0xB0038901
#data 0x0009

loc_8c1B3A42:
#data 0xE409
#data 0x4F26AD06

#align4
loc_8c1B3A48:
#data 0x6040D454
#data 0xC804600C
#data 0x60408B05
#data 0x2400CB04
#data 0x422BD252
#data 0xE407

loc_8c1B3A5E:
#data 0x000B
#data 0xD44E0009
#data 0x6540E303
#data 0x2358655C
#data 0xE1018917
#data 0x8B092518
#data 0x6000D04C
#data 0xC880600C
#data 0xD04B8B04
#data 0x600C6000
#data 0x8908C820
#data 0xE500D249
#data 0xD3492250
#data 0x60402350
#data 0xA005CB20
#data 0xACDB2400
#data 0xD346E405
#data 0x0009432B
#data 0x0009000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B3AA8:
#data 0xE100D644
#data 0xE0004F22
#data 0x6703316C
#data 0x6503E41D

#align4
loc_8c1B3AB8:
#data 0x63147501
#data 0x3247625C
#data 0x8BF9373C
#data 0x2778677C
#data 0xBCC38904
#data 0x4F26E401
#data 0xE001000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B3AD4:
#data 0x6503D13A

#align4
loc_8c1B3AD8:
#data 0x6073675C
#data 0x75010009
#data 0x625C036C
#data 0x01343243
#data 0xB0048BF6
#data 0xE0000009
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1B3AF6:
#data 0x2FE6
#data 0xDE28D631
#data 0x4F226060
#data 0xD430C90F
#data 0x60E06703
#data 0x600C657C
#data 0xC8024500
#data 0xD02D8904
#data 0x2431035D
#data 0x0009A003

#align4
loc_8c1B3B1C:
#data 0x035DD02B
#data 0x2431

loc_8c1B3B22:
#data 0x846A
#data 0xC808600C
#data 0xD326890F
#data 0x600D6031
#data 0x890AC801
#data 0x600D6031
#data 0x8906C80C
#data 0xD3246241
#data 0x24212239
#data 0xCB106041
#data 0x2401

loc_8c1B3B4A:
#data 0x761C
#data 0xE2016360
#data 0x3327633C
#data 0x6041890A
#data 0x2401CB20
#data 0xD31D6141
#data 0x24112139
#data 0xD11C6041
#data 0x24012019

#align4
loc_8c1B3B6C:
#data 0xE400D31B
#data 0xD21B2341
#data 0x60E02241
#data 0xC802600C
#data 0xD119890A
#data 0x0009410B
#data 0x600C60E0
#data 0x8B03C804
#data 0xD2044F26
#data 0x6EF6422B

#align4
loc_8c1B3B94:
#data 0x000B4F26
#data 0x00006EF6
#data 0x8C34B2CA

#align4
loc_8c1B3BA0:
#data loc_8c1B41F6

loc_8c1B3BA4:
#data loc_8c1B4252
#data 0x8C34B2A3
#data 0x8C34B2A5
#data 0x8C352F2A
#data 0x8C352F2B

#align4
loc_8c1B3BB8:
#data loc_8c1B3DE0
#data 0x8C34B2E3
#data 0x8C34B2A9
#data 0x8C34B2C8

#align4
loc_8c1B3BC8:
#data bank1c.loc_8c1c8468

loc_8c1B3BCC:
#data bank1c.loc_8c1c8448
#data 0x0000FFFE
#data 0x0000FFFB
#data 0x0000FF7D
#data 0x8C34B2D2
#data 0x8C34B2D0

#align4
loc_8c1B3BE4:
#data loc_8c1B40B6

loc_8c1B3BE8:
#data 0x6E432FE6
#data 0xD42F2FD6
#data 0x63434F22
#data 0x731B9557
#data 0x622C6230
#data 0x8B412258
#data 0x00096043
#data 0x6000701D
#data 0xC830600C
#data 0x62438B3A
#data 0x6320721C
#data 0x2358633C
#data 0xD3258B34
#data 0xE412430B
#data 0x84D1DD24
#data 0xC806600C
#data 0xD2238B0B
#data 0x0009420B
#data 0x430BD322
#data 0xD2220009
#data 0x0009420B
#data 0x430BD321
#data 0x0009

loc_8c1B3C42:
#data 0x9331
#data 0x323262ED
#data 0xD01F8B09
#data 0x600C6000
#data 0x8904C840
#data 0xD31D4F26
#data 0x432B6DF6
#data 0x6EF6

loc_8c1B3C5E:
#data 0x84D1
#data 0xC808600C
#data 0x84D18F01
#data 0xEE1E

loc_8c1B3C6A:
#data 0xE504
#data 0x2508600C
#data 0x64E38D02
#data 0xE501A001

loc_8c1B3C78:
#data 0xE500

loc_8c1B3C7A:
#data 0x4F26
#data 0x6DF6D314
#data 0x6EF6432B

#align4
loc_8c1B3C84:
#data 0x6DF64F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------

loc_8c1B3C8C:
mov.l r14,@-r15
mov r4,r14
mov.l @(loc_8c1B3CD4,pc),r4 ; r4 set to 0x8C34B2AA
sts.l pr,@-r15
mov.b @r4,r0
extu.b r0,r0
tst 0x01,r0
bf loc_8c1B3CD8
lds.l @r15+,pr
mov.l @(loc_8c1B3CB0,pc),r2 ; r2 set to 0x8C1B3454
mov 0x11,r4 ; r4 set to 0x11
jmp @r2
mov.l @r15+,r14
#data 0x0080
#data 0x000000A0
#data 0x8C34B288

#align4
loc_8c1B3CB0:
#data loc_8c1B3454
#data 0x8C34B2A9

#align4
loc_8c1B3CB8:
#data bank1a.loc_8c1a0434

loc_8c1B3CBC:
#data bank1a.loc_8c1a048C

loc_8c1B3CC0:
#data loc_8c1B6048

loc_8c1B3CC4:
#data loc_8c1B6118
#data 0x8C34B2C2

#align4
loc_8c1B3CCC:
#data loc_8c1B374E

loc_8c1B3CD0:
#data bank1a.loc_8c1a0E8A

loc_8c1B3CD4:
#data 0x8C34B2AA

#align4
loc_8c1B3CD8:
#data 0x8B00C808
#data 0xEE1E

loc_8c1B3CDE:
#data 0xD636
#data 0x62639769
#data 0x6320721B
#data 0x2378633C
#data 0x65638F2B
#data 0x00096053
#data 0x6000701D
#data 0xC820600C
#data 0x62538B23
#data 0x6320721C
#data 0x2378633C
#data 0x60408B1D
#data 0xC806600C
#data 0xD22A8B0B
#data 0x0009420B
#data 0x430BD329
#data 0xD2290009
#data 0x0009420B
#data 0x430BD328
#data 0x0009

loc_8c1B3D2A:
#data 0xD028
#data 0x6000E504
#data 0x2508600C
#data 0x64E38D02
#data 0xE501A001

loc_8c1B3D3C:
#data 0xE500

loc_8c1B3D3E:
#data 0x4F26
#data 0x432BD323
#data 0x6EF6

loc_8c1B3D46:
#data 0xD523
#data 0xE400A004

#align4
loc_8c1B3D4C:
#data 0x8803604C
#data 0x7401890E

#align4
loc_8c1B3D54:
#data 0x4000604C
#data 0x633D035D
#data 0x8BF52338
#data 0x6363604C
#data 0x73194000
#data 0x603005E5
#data 0x2300CB08

#align4
loc_8c1B3D70:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1B3D76:
#data 0xD417
#data 0x65437FFC
#data 0x76046653
#data 0x67536351
#data 0x2F317702
#data 0x25316371
#data 0x27216261
#data 0x77066753
#data 0xE2006371
#data 0x27212631
#data 0x23386351
#data 0xD30D8B03
#data 0xC9F76030
#data 0x2300

loc_8c1B3DAA:
#data 0x60F1
#data 0x7F04000B
;-------------------------------------------------------------------------------

loc_8c1B3DB0:
mov.l @(loc_8c1B3DDC,pc),r3 ; r3 set to 0x8C1B3454
jmp @r3
mov 0x10,r4
#data 0x0080
#data 0x8C34B288

#align4
loc_8c1B3DBC:
#data bank1a.loc_8c1a0434

loc_8c1B3DC0:
#data bank1a.loc_8c1a048C

loc_8c1B3DC4:
#data loc_8c1B6048

loc_8c1B3DC8:
#data loc_8c1B6118
#data 0x8C34B2AA

#align4
loc_8c1B3DD0:
#data loc_8c1B6660
#data 0x8C352EB8
#data 0x8C34B2A1

#align4
loc_8c1B3DDC:
#data loc_8c1B3454


loc_8c1B3DE0:
mov 0x04,r2 ; r2 set to 0x04
mov.l @(loc_8c1B3EB0,pc),r3 ; r3 set to 0x8C34B2C8
sts.l pr,@-r15
mov 0x00,r4 ; r4 set to 0x00
mov.w r4,@r3 ; r3 ??
mov.l @(loc_8c1B3EB4,pc),r5 ; r5 set to 0x8C34B2CA
mov.b r2,@r5 ; r5 ??
mov.l @(loc_8c1B3EB8,pc),r5 ; r5 set to 0x8C34B288
mov r5,r2 ; r2 set to 0x8C34B288
add 0x1C,r2 ; r2 set to 0x8C34B2A4
mov.b @r2,r0
and 0x10,r0
mov.b r0,@r2 ; r2 ??? bc r0 is ???
mov r5,r1 ; r1 set to 0x8C34B288
add 0x1B,r1 ; r1 set to 0x8C34B2A3
mov.b r4,@r1 ; r1 ??
add 0x1D,r5 ; r5 set to 0x8C34B2A5
mov.b r4,@r5 ; r5 ??
mov.l @(loc_8c1B3EBC,pc),r2 ; r2 set to 0x8C1B4252
jsr @r2
mov 0x07,r4 ; r4 set to 0x07
mov.l @(loc_8c1B3EC0,pc),r3 ; r3 set to 0x8C1B4156
jsr @r3
mov 0x07,r4 ; r4 set to 0x07
mov.l @(loc_8c1B3EC8,pc),r1 ; r1 set to 0x8C1A0434
mov 0x01,r2 ; r2 set to 0x01
mov.l @(loc_8c1B3EC4,pc),r3 ; r3 set to 0x8C34B2C6
jsr @r1
mov.b r2,@r3 ; r3 ??
mov.l @(loc_8c1B3ECC,pc),r3 ; r3 set to 0x8C1A048C
jsr @r3
nop
mov.l @(loc_8c1B3ED0,pc),r1 ; r1 set to 0x8C1B6048
jsr @r1
nop
mov.l @(loc_8c1B3ED4,pc),r3 ; r3 set to 0x8C1B6118
jsr @r3
nop
mov.l @(loc_8c1B3ED8,pc),r2 ; r2 set to 0x8C1B3454
mov 0x06,r4 ; r4 set to 0x06
jmp @r2
lds.l @r15+,pr

loc_8c1B3E34:
mov.l @(loc_8c1B3EDC,pc),r4 ; r4 set to 0x8C34B2E0
mov 0x64,r2 ; r2 set to 0x64
mov.b @r4,r3
add 0x01,r3
mov.b r3,@r4 ; r4 ??? bc r3 is ???
extu.b r3,r3
cmp/ge r2,r3
bf loc_8c1B3EA8
mov 0x00,r6 ; r6 set to 0x00
mov.b r6,@r4
mov.l @(loc_8c1B3EB4,pc),r4 ; r4 set to 0x8C34B2CA
mov.l @(loc_8c1B3EE0,pc),r7 ; r7 set to 0x8C34B2A9
mov.b @r4,r0
mov.l @(loc_8c1B3EE4,pc),r5 ; r5 set to 0x8C34B2D0
extu.b r0,r0
tst 0x04,r0
bt loc_8c1B3E5A
bra loc_8c1B3E80
mov.w r6,@r5

loc_8c1B3E5A:
#data 0x6351
#data 0x25317301
#data 0x96238474
#data 0x2609600C
#data 0x89092668
#data 0x6351E13C
#data 0x633D0617
#data 0x3137011A
#data 0x60408902
#data 0x2400CB08

#align4
loc_8c1B3E80:
#data 0xE607D519
#data 0x73016351
#data 0x84732531
#data 0x2609600C
#data 0x89092668
#data 0x6351E23C
#data 0x633D0627
#data 0x3237021A
#data 0x60408902
#data 0x2400CB08


loc_8c1B3EA8:
rts
nop
;-------------------------------------------------------------------------------
#data 0x0000FF7F

#align4
loc_8c1B3EB0:
#data 0x8C34B2C8

#align4
loc_8c1B3EB4:
#data 0x8C34B2CA

#align4
loc_8c1B3EB8:
#data 0x8C34B288

#align4
loc_8c1B3EBC:
#data loc_8c1B4252

loc_8c1B3EC0:
#data loc_8c1B4156

loc_8c1B3EC4:
#data 0x8C34B2C6

#align4
loc_8c1B3EC8:
#data bank1a.loc_8c1a0434

loc_8c1B3ECC:
#data bank1a.loc_8c1a048C

loc_8c1B3ED0:
#data loc_8c1B6048

loc_8c1B3ED4:
#data loc_8c1B6118

loc_8c1B3ED8:
#data loc_8c1B3454

loc_8c1B3EDC:
#data 0x8C34B2E0

#align4
loc_8c1B3EE0:
#data 0x8C34B2A9

#align4
loc_8c1B3EE4:
#data 0x8C34B2D0
#data 0x8C34B2D2


loc_8c1B3EEC:
sts.l pr,@-r15
add 0xF8,r15
mov.l r4,@(0x04,r15)
mov.l r5,@r15
bsr loc_8c1B3F0C
mov 0x00,r4 ; r4 set to 0x00
mov.l @(loc_8c1B3FE4,pc),r0 ; r0 set to 0x8C34B2CC
mov.l @r15,r3
mov.l @(0x04,r15),r2
add 0x08,r15
mov.l @r0,r1
lds.l @r15+,pr
add r3,r1
mov.l r1,@r2
rts
nop
;-------------------------------------------------------------------------------

loc_8c1B3F0C:
sts.l pr,@-r15
mov.l @(loc_8c1B3FE8,pc),r3 ; r3 set to 0x8C1A02CC
add 0xFC,r15
jsr @r3
mov.l r4,@r15
mov.l @(loc_8c1B3FE4,pc),r2 ; r2 set to 0x8C34B2CC
mov.l r0,@r2 ; r2 ??? bc r0 is ???
mov.l @r15,r3 ; r3 ??? bc r15 is ???
add 0x04,r15
lds.l @r15+,pr
cmp/hi r0,r3
movt r0
rts
xor 0x01,r0
;-------------------------------------------------------------------------------
#data 0x6202D02E
#data 0x2422000B
;-------------------------------------------------------------------------------
#data 0x6312D12C
#data 0x000B3348
#data 0x6033
;-------------------------------------------------------------------------------

loc_8c1B3F3A:
mov.l r14,@-r15
mov 0x20,r3 ; r3 set to 0x20
mov.l @(loc_8c1B3FEC,pc),r4 ; r4 set to 0x8C34B2CA
sts.l pr,@-r15
mov.b @r4,r6
extu.b r6,r6
tst r6,r3
bt loc_8c1B3F52
mov.b @r4,r0
and 0xDF,r0
bra loc_8c1B3FD8
mov.b r0,@r4

loc_8c1B3F52:
#data 0xD227
#data 0x6E219343
#data 0x23E86EED
#data 0xD5258916
#data 0x2678E710
#data 0x6050891A
#data 0x6603C90F
#data 0x6053656C
#data 0x88020009
#data 0x60538907
#data 0x88040009
#data 0x60538903
#data 0x88050009
#data 0x8B06

loc_8c1B3F86:
#data 0x6040
#data 0x2400C9EF

#align4
loc_8c1B3F8C:
#data 0xD31A4F26
#data 0x6EF6432B

#align4
loc_8c1B3F94:
#data 0xE400B0DF
#data 0x0009A01E

#align4
loc_8c1B3F9C:
#data 0x21E89120
#data 0xE0408B06
#data 0x8B0A20E8
#data 0x600C8459
#data 0x8906C820

#align4
loc_8c1B3FB0:
#data 0xE200D312
#data 0x2320E102
#data 0xA025D011
#data 0x2010

loc_8c1B3FBE:
#data 0x27E8
#data 0x8456890A
#data 0x600CD40F
#data 0x8902C840
#data 0xA0026040
#data 0xCB40

loc_8c1B3FD2:
#data 0x6040
#data 0xCB80

loc_8c1B3FD6:
#data 0x2400


loc_8c1B3FD8:
lds.l @r15+,pr
bra loc_8c1B400E
mov.l @r15+,r14
#data 0x0717
#data 0x00000080

#align4
loc_8c1B3FE4:
#data 0x8C34B2CC

#align4
loc_8c1B3FE8:
#data bank1a.loc_8c1a02CC

loc_8c1B3FEC:
#data 0x8C34B2CA
#data 0x8C34B2C8
#data 0x8C34B2A9

#align4
loc_8c1B3FF8:
#data loc_8c1B3DE0
#data 0x8C34CF58
#data 0x8C34B2C6
#data 0x8C34B2A4

#align4
loc_8c1B4008:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1B400E:
#data 0x2FE6
#data 0x4F22DE3D
#data 0x751D65E3
#data 0xC9EF6050
#data 0xD03C2500
#data 0x6000D43A
#data 0xC810600C
#data 0x60E38911
#data 0x701B0009
#data 0x600C6000
#data 0x8907C880
#data 0x600C6050
#data 0x8903C880
#data 0x6230D334
#data 0x8B022228

#align4
loc_8c1B4048:
#data 0xCB206040
#data 0x2400

loc_8c1B404E:
#data 0x63E3
#data 0x6030731B
#data 0x2300C9F7
#data 0xCB026040
#data 0x60402400
#data 0x2400C9FE
#data 0x000960E3
#data 0x6000701D
#data 0xC840600C
#data 0xB0208B01
#data 0x0009

loc_8c1B4076:
#data 0xD428
#data 0xE30461E3
#data 0x711B6041
#data 0x2401C971
#data 0x2230D225
#data 0xD0256310
#data 0x711D61E3
#data 0x63102030
#data 0x2130D123
#data 0x000960E3
#data 0x6000701A
#data 0xC820600C
#data 0x4F268B04
#data 0xE405D21F
#data 0x6EF6422B

#align4
loc_8c1B40B0:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1B40B6:
mov.l @(loc_8c1B4108,pc),r4 ; r4 set to 0x8C34B288
mov.w @(loc_8c1B4106,pc),r5 ; r5 set to 0x80
mov r4,r3 ; r3 set to 0x8C34B288
add 0x1B,r3 ; r3 set to 0x8C34B2A3
mov.b @r3,r2
extu.b r2,r2
tst r5,r2
bt loc_8c1B40D2
mov.l @(loc_8c1B412C,pc),r3 ; r3 set to 0x8C352E5F
mov.b @r3,r1
tst r1,r1
bt loc_8c1B40E8
bra loc_8c1B4102
mov 0x09,r4

loc_8c1B40D2:
mov r4,r0
nop
add 0x1D,r0
mov.b @r0,r0
extu.b r0,r0
tst 0x20,r0
bt loc_8c1B40F2
mov.l @(loc_8c1B4130,pc),r3 ; r3 set to 0x8C352F05
mov.b @r3,r2
tst r2,r2
bt loc_8c1B40EC

loc_8c1B40E8:
bra loc_8c1B40EE
mov 0x08,r4

loc_8c1B40EC:
mov 0x65,r4 ; r4 set to 0x65

loc_8c1B40EE:
bra loc_8c1B4156
nop

loc_8c1B40F2:
mov r4,r0
nop
add 0x1C,r0
mov.b @r0,r0
extu.b r0,r0
tst 0x40,r0
bt loc_8c1B4134
mov 0x03,r4 ; r4 set to 0x03

loc_8c1B4102:
bra loc_8c1B4156
nop

loc_8c1B4106:
#data 0x0080

#align4
loc_8c1B4108:
#data 0x8C34B288
#data 0x8C34B2CA
#data 0x8C34B2B4
#data 0x8C352E8D
#data 0x8C34B2C8
#data 0x8C34B2C6
#data 0x8C34B2E1
#data 0x8C34B2E2

#align4
loc_8c1B4128:
#data loc_8c1B3454

loc_8c1B412C:
#data 0x8C352E5F

#align4
loc_8c1B4130:
#data 0x8C352F05


loc_8c1B4134:
add 0x1C,r4
mov.b @r4,r2
extu.b r2,r2
tst r5,r2
bt loc_8c1B4152
mov.l @(loc_8c1B4214,pc),r1 ; r1 set to 0x8C34B2AF
mov.b @r1,r3
extu.b r3,r3
tst r5,r3
bt loc_8c1B414C
bra loc_8c1B414E
mov 0x02,r4

loc_8c1B414C:
mov 0x01,r4 ; r4 set to 0x01

loc_8c1B414E:
bra loc_8c1B4156
nop

loc_8c1B4152:
bra loc_8c1B4156
mov 0x00,r4

loc_8c1B4156:
mov.l r14,@-r15
extu.b r4,r6
mov.l r13,@-r15
tst r6,r6
mov.l r12,@-r15
mov.l @(loc_8c1B4218,pc),r14 ; r14 set to 0x8C34B2A9
sts.l pr,@-r15
mov r14,r3 ; r3 set to 0x8C34B2A9
add 0x1C,r3 ; r3 set to 0x8C34B2C5
mov.b @r3,r2
add 0xFC,r15
mov.b r2,@r15
bf/s loc_8c1B41A8
mov 0x00,r5 ; r5 set to 0x00
mov r14,r6 ; r6 set to 0x8C34B2A9
add 0x0B,r6 ; r6 set to 0x8C34B2B4
mov.b @r6,r0
mov 0x10,r12 ; r12 set to 0x10
mov r5,r13 ; r13 set to 0x00
extu.b r0,r0
tst 0x40,r0
bt/s loc_8c1B419C
mov 0x04,r7 ; r7 set to 0x04
mov.l @(loc_8c1B421C,pc),r0 ; r0 set to 0x8C34B2A5
mov.b @r0,r0 ; r0 ??
extu.b r0,r0
tst 0x10,r0
bf loc_8c1B419C
mov.b @r6,r0
extu.b r0,r0
tst 0x80,r0
bt loc_8c1B419A
bra loc_8c1B419C
mov r7,r13

loc_8c1B419A:
#data 0xED02


loc_8c1B419C:
mov.b @(0x01,r14),r0
extu.b r0,r0
tst r7,r0
bt loc_8c1B41CA
bra loc_8c1B41CC
mov 0x01,r6

loc_8c1B41A8:
mov r6,r0
nop
cmp/eq 0x65,r0
bf loc_8c1B41B6
mov.w @(loc_8c1B420E,pc),r12 ; r12 set to 0xFE
bra loc_8c1B41C8
mov r5,r4

loc_8c1B41B6:
cmp/eq 0x64,r0
bf loc_8c1B41C0
mov.w @(loc_8c1B4210,pc),r12 ; r12 set to 0xFF
bra loc_8c1B41C8
mov r5,r4

loc_8c1B41C0:
mov 0x06,r0 ; r0 set to 0x06
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
and 0x18,r0
mov r0,r12

loc_8c1B41C8:
mov r5,r13

loc_8c1B41CA:
mov r5,r6

loc_8c1B41CC:
mov 0x0F,r0 ; r0 set to 0x0F, r0 set to 0x0F, r0 set to 0x0F, r0 set to 0x0F
mov.l r6,@-r15
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???, r0 ??? bc r14 is ???, r0 ??? bc r14 is ???
mov r13,r7
mov r12,r6
and 0x7F,r0
mov.l r0,@-r15
mov 0x0E,r0 ; r0 set to 0x0E, r0 set to 0x0E, r0 set to 0x0E, r0 set to 0x0E
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???, r0 ??? bc r14 is ???, r0 ??? bc r14 is ???
and 0x7F,r0
mov.l r0,@-r15
mov.b @(0x0C,r15),r0
mov.l @(loc_8c1B4220,pc),r3 ; r3 set to 0x8C1B646E, r3 set to 0x8C1B646E, r3 set to 0x8C1B646E, r3 set to 0x8C1B646E
jsr @r3
mov r0,r5
add 0x10,r15
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1B41F6:
mov.l @(loc_8c1B4224,pc),r3 ; r3 set to 0x8C34B2CA
mov.b @r3,r0
extu.b r0,r0
tst 0x04,r0
bf loc_8c1B424E
mov.l @(loc_8c1B4228,pc),r4 ; r4 set to 0x8C34B2A4
mov.b @r4,r0
extu.b r0,r0
tst 0x40,r0
bt loc_8c1B422C
bra loc_8c1B4252
mov 0x03,r4

loc_8c1B420E:
#data 0x00FE

loc_8c1B4210:
#data 0x00FF
#data 0x0000

#align4
loc_8c1B4214:
#data 0x8C34B2AF

#align4
loc_8c1B4218:
#data 0x8C34B2A9

#align4
loc_8c1B421C:
#data 0x8C34B2A5

#align4
loc_8c1B4220:
#data loc_8c1B646E

loc_8c1B4224:
#data 0x8C34B2CA

#align4
loc_8c1B4228:
#data 0x8C34B2A4


loc_8c1B422C:
mov.w @(loc_8c1B4306,pc),r5 ; r5 set to 0x80
mov.b @r4,r2
extu.b r2,r2
tst r5,r2
bt loc_8c1B424A
mov.l @(loc_8c1B4308,pc),r0 ; r0 set to 0x8C34B2AF
mov.b @r0,r2
extu.b r2,r2
tst r5,r2
bt loc_8c1B4244
bra loc_8c1B4246
mov 0x02,r4

loc_8c1B4244:
mov 0x01,r4 ; r4 set to 0x01

loc_8c1B4246:
bra loc_8c1B4252
nop

loc_8c1B424A:
bra loc_8c1B4252
mov 0x00,r4

loc_8c1B424E:
rts
nop
;-------------------------------------------------------------------------------

loc_8c1B4252:
#data 0x2FE6
#data 0x2FC62FD6
#data 0x2FA62FB6
#data 0x4F22DE2B
#data 0x7C1C6CE3
#data 0x2F407FFC
#data 0x63CC6CC0
#data 0x8F012338
#data 0x6C73E702

#align4
loc_8c1B4274:
#data 0x66E364F0
#data 0x644CE500
#data 0x8F342448
#data 0x60E37606
#data 0x70190009
#data 0x600C6000
#data 0x8F03C810
#data 0x6CE36060
#data 0x6CC07C1B

#align4
loc_8c1B4298:
#data 0x6B03C93F
#data 0xE60484E5
#data 0xC9E0600C
#data 0x8D0B8800
#data 0x8820E401
#data 0x8840890A
#data 0x88608910
#data 0x91268910
#data 0x890F3010
#data 0x0009A00F

#align4
loc_8c1B42C0:
#data 0x6D53A00D

#align4
loc_8c1B42C4:
#data 0x600C84EB
#data 0x8901C880
#data 0x6D63A007

#align4
loc_8c1B42D0:
#data 0x6D73A005

#align4
loc_8c1B42D4:
#data 0xED05A003

#align4
loc_8c1B42D8:
#data 0x6D43A001

loc_8c1B42DC:
#data 0xED03

loc_8c1B42DE:
#data 0x84E1
#data 0x2068600C
#data 0xA0178917
#data 0x6A43

loc_8c1B42EA:
#data 0x6060
#data 0x6B03C918
#data 0x00096043
#data 0x8B0D8807
#data 0x6000D005
#data 0xC880600C
#data 0xA0088908
#data 0xED05

loc_8c1B4306:
#data 0x0080

#align4
loc_8c1B4308:
#data 0x8C34B2AF
#data 0x8C34B2A9
#data 0x8C34B2AD

loc_8c1B4314:
#data 0x6D53

loc_8c1B4316:
#data 0x6A53

#align4
loc_8c1B4318:
#data 0x61E32FA6
#data 0x711084ED
#data 0x63032F06
#data 0x731163E3
#data 0x2F0684EC
#data 0x62306203
#data 0x63102F26
#data 0xD2092F36
#data 0x64C3420B
#data 0xE0146503
#data 0x66B3D307
#data 0x430B04FC
#data 0x7F1867D3
#data 0x6AF64F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00006EF6

#align4
loc_8c1B435C:
#data bank1a.loc_8c1a0E86

loc_8c1B4360:
#data bank1a.loc_8c1a06C8
#data 0x0009B017
#data 0x0009B03A
#data 0x0009AFFC

#align4
loc_8c1B4370:
#data 0xD33A4F22
#data 0x64F37FF8
#data 0x430B65F3
#data 0x62F17404
#data 0x89032228
#data 0x4F267F08
#data 0xE000000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B438C:
#data 0x7F08E001
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1B4396:
mov.l @(loc_8c1B4460,pc),r2 ; r2 set to 0x8C34B0F8
mov 0x01,r3 ; r3 set to 0x01
sts.l pr,@-r15
mov.b r3,@r2 ; r2 ??
mov.l @(loc_8c1B4464,pc),r3 ; r3 set to 0x8C19FE5C
jsr @r3
mov 0x00,r4 ; r4 set to 0x00
mov.l @(loc_8c1B4468,pc),r2 ; r2 set to 0x8C1B34EE
jsr @r2
nop
mov.l @(loc_8c1B446C,pc),r2 ; r2 set to 0x8C34B2D4
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@r2 ; r2 ??
mov.l @(loc_8c1B4470,pc),r3 ; r3 set to 0x8C1AEE90
mov.w @(loc_8c1B445A,pc),r4 ; r4 set to 0xFF
jsr @r3
nop
mov.l @(loc_8c1B4474,pc),r2 ; r2 set to 0x8C1BFAAC
jsr @r2
mov 0x00,r4 ; r4 set to 0x00
mov.l @(loc_8c1B4478,pc),r3 ; r3 set to 0x8C1B3DE0
jsr @r3
nop
mov.l @(loc_8c1B447C,pc),r2 ; r2 set to 0x8C1AFD44
jsr @r2
nop
mov.l @(loc_8c1B4480,pc),r3 ; r3 set to 0x8C1994AC
jmp @r3
lds.l @r15+,pr

loc_8c1B43D0:
mov.l @(loc_8c1B4484,pc),r3 ; r3 set to 0x8C34B28F
mov.b @r3,r0
and 0xF7,r0
mov.b r0,@r3 ; r3 ??? bc r0 is ???
mov.l @(loc_8c1B4488,pc),r1 ; r1 set to 0x8C34B2C6
mov 0x08,r2 ; r2 set to 0x08
rts
mov.b r2,@r1
;-------------------------------------------------------------------------------

loc_8c1B43E0:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov 0x01,r9 ; r9 set to 0x01
mov.l r8,@-r15
mov r9,r11 ; r11 set to 0x01
sts.l pr,@-r15
mov.l @(loc_8c1B448C,pc),r14 ; r14 set to 0x8C34B288
mov.l @(loc_8c1B4490,pc),r3 ; r3 set to 0x8C1A00E8
jsr @r3
add 0x7F,r11 ; r11 set to 0x80
extu.b r0,r0
tst r0,r0
bt loc_8c1B4406
bra loc_8c1B4796
nop

loc_8c1B4406:
mov.l @(loc_8c1B4474,pc),r3 ; r3 set to 0x8C1BFAAC
jsr @r3
mov 0x01,r4 ; r4 set to 0x01
mov.l @(loc_8c1B4464,pc),r2 ; r2 set to 0x8C19FE5C
jsr @r2
mov 0x01,r4 ; r4 set to 0x01
mov.l @(loc_8c1B4488,pc),r8 ; r8 set to 0x8C34B2C6
mov 0x20,r10 ; r10 set to 0x20
mov.l @(loc_8c1B4494,pc),r13 ; r13 set to 0x8C34B2CA
mov.b @r8,r0
extu.b r0,r0
cmp/eq 0x00,r0
bt/s loc_8c1B4498
mov 0x00,r12 ; r12 set to 0x00
cmp/eq 0x01,r0
bt loc_8c1B44AC
cmp/eq 0x02,r0
bt loc_8c1B44C4
cmp/eq 0x03,r0
bt loc_8c1B44E8
cmp/eq 0x04,r0
bf loc_8c1B4436
bra loc_8c1B4580
nop

loc_8c1B4436:
cmp/eq 0x05,r0
bf loc_8c1B443E
bra loc_8c1B4608
nop

loc_8c1B443E:
cmp/eq 0x06,r0
bf loc_8c1B4446
bra loc_8c1B46C8
nop

loc_8c1B4446:
cmp/eq 0x07,r0
bf loc_8c1B444E
bra loc_8c1B4756
nop

loc_8c1B444E:
cmp/eq 0x08,r0
bf loc_8c1B4456
bra loc_8c1B4778
nop

loc_8c1B4456:
bra loc_8c1B4794
nop

loc_8c1B445A:
#data 0x00FF

#align4
loc_8c1B445C:
#data bank1a.loc_8c1a0500

loc_8c1B4460:
#data 0x8C34B0F8

#align4
loc_8c1B4464:
#data bank19.loc_8c19FE5C

loc_8c1B4468:
#data loc_8c1B34EE

loc_8c1B446C:
#data 0x8C34B2D4

#align4
loc_8c1B4470:
#data bank1a.loc_8c1aEE90

loc_8c1B4474:
#data loc_8c1BFAAC

loc_8c1B4478:
#data loc_8c1B3DE0

loc_8c1B447C:
#data bank1a.loc_8c1aFD44

loc_8c1B4480:
#data bank19.loc_8c1994AC

loc_8c1B4484:
#data 0x8C34B28F

#align4
loc_8c1B4488:
#data 0x8C34B2C6

#align4
loc_8c1B448C:
#data 0x8C34B288

#align4
loc_8c1B4490:
#data bank1a.loc_8c1a00E8

loc_8c1B4494:
#data 0x8C34B2CA


loc_8c1B4498:
lds.l @r15+,pr
mov.l @(loc_8c1B4554,pc),r3 ; r3 set to 0x8C1B3DE0
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8c1B44AC:
mov.l @(loc_8c1B4558,pc),r3 ; r3 set to 0x8C34B2D0
mov.w r12,@r3 ; r3 ??? bc r12 is ???
mov.l @(loc_8c1B455C,pc),r2 ; r2 set to 0x8C34B2D2
mov.w r12,@r2 ; r2 ??? bc r12 is ???
mov.b @r13,r1
extu.b r1,r1
tst r9,r1
bt loc_8c1B44C0
bra loc_8c1B4722
nop

loc_8c1B44C0:
bra loc_8c1B4796
nop

loc_8c1B44C4:
mov.l @(loc_8c1B4560,pc),r3 ; r3 set to 0x8C34B0B0
mov 0x03,r1 ; r1 set to 0x03
mov.b @r3,r2
extu.b r2,r2
cmp/gt r1,r2
bf loc_8c1B44D4
bra loc_8c1B4796
nop

loc_8c1B44D4:
lds.l @r15+,pr
mov.l @(loc_8c1B4564,pc),r3 ; r3 set to 0x8C1B8D58
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8c1B44E8:
mov r14,r3
add 0x1B,r3
mov.b @r3,r2
extu.b r2,r2
tst r11,r2
bf loc_8c1B4506
mov r14,r0
nop
add 0x1D,r0
mov.b @r0,r0
extu.b r0,r0
tst 0x20,r0
bf loc_8c1B4506
bra loc_8c1B4764
nop

loc_8c1B4506:
#data 0xBF33
#data 0x600E0009
#data 0x89132008
#data 0x6321D215
#data 0x8B0F2338
#data 0xD314941B
#data 0xD2142340
#data 0x61D02240
#data 0x21A8611C
#data 0xD1138B03
#data 0x410BD411
#data 0xE564

loc_8c1B4532:
#data 0x60D0
#data 0x2D00CB20

#align4
loc_8c1B4538:
#data 0xD30ED210
#data 0x6432420B
#data 0x2008600E
#data 0x62D0891C
#data 0x22A8622C
#data 0xA1098971
#data 0x00FF0009

#align4
loc_8c1B4554:
#data loc_8c1B3DE0

loc_8c1B4558:
#data 0x8C34B2D0

#align4
loc_8c1B455C:
#data 0x8C34B2D2

#align4
loc_8c1B4560:
#data 0x8C34B0B0

#align4
loc_8c1B4564:
#data loc_8c1B8D58
#data 0x8C351784
#data 0x8C352F2A
#data 0x8C352F2B
#data 0x8C34B2D8

#align4
loc_8c1B4578:
#data loc_8c1B3EEC

loc_8c1B457C:
#data loc_8c1B3F0C


loc_8c1B4580:
mov.l @(loc_8c1B47A8,pc),r1 ; r1 set to 0x8C34B0B0
mov 0x03,r2 ; r2 set to 0x03
mov.b @r1,r3
extu.b r3,r3
cmp/gt r2,r3
bf loc_8c1B4590
bra loc_8c1B4796
nop

#align4
loc_8c1B4590:
#data 0x600C60D0
#data 0x8909C808
#data 0x420BD284
#data 0xD3840009
#data 0xD28423C1
#data 0x60D022C1
#data 0x2D00C9F7

#align4
loc_8c1B45AC:
#data 0x430BD382
#data 0x600E0009
#data 0x89012008
#data 0x0009A0ED

#align4
loc_8c1B45BC:
#data 0x721B62E3
#data 0x633C6320
#data 0x8B3D23B8
#data 0x721D62E3
#data 0x633C6320
#data 0x8B5323A8
#data 0x000960E3
#data 0x6000701C
#data 0xC8C0600C
#data 0xA0D88901
#data 0x0009

loc_8c1B45E6:
#data 0xD075
#data 0x600C6000
#data 0x8901C80C
#data 0x0009A0D1

#align4
loc_8c1B45F4:
#data 0xD2724F26
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6422B

#align4
loc_8c1B4608:
#data 0xD26ED36F
#data 0x6422430B
#data 0x2008600E
#data 0xD36D8B05
#data 0xE401430B
#data 0x2008600E
#data 0x890A

loc_8c1B4622:
#data 0xD36A
#data 0xE401430B
#data 0x2008600E
#data 0xA0998901
#data 0x0009

loc_8c1B4632:
#data 0xD367
#data 0x2390A096

#align4
loc_8c1B4638:
#data 0x711B61E3
#data 0x633C6310
#data 0x891323B8

#align4
loc_8c1B4644:
#data 0x711D61E3
#data 0x633C6310
#data 0x890223B8
#data 0x430BD360
#data 0xE401

loc_8c1B4656:
#data 0xD260
#data 0x0009420B
#data 0x731D63E3
#data 0x622C6230
#data 0x8B2422B8
#data 0x0009A095

#align4
loc_8c1B466C:
#data 0x711D61E3
#data 0x633C6310
#data 0x8B0123A8
#data 0x0009A08D

#align4
loc_8c1B467C:
#data 0x711D61E3
#data 0x633C6310
#data 0x890823B8
#data 0x711D61E3
#data 0x633C6310
#data 0x89022398
#data 0x430BD34F
#data 0xE401

loc_8c1B469A:
#data 0x63E3
#data 0x6230731D
#data 0x22B8622C
#data 0x61E38977
#data 0x6310711D
#data 0x2398633C
#data 0x8971

loc_8c1B46B2:
#data 0x4F26
#data 0xE400D347
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6432B

#align4
loc_8c1B46C8:
#data 0x420BD244
#data 0x600E0009
#data 0x8B062008
#data 0xD242D33C
#data 0x6422430B
#data 0x2008600E
#data 0x8959

loc_8c1B46E2:
#data 0x63E3
#data 0x6230731C
#data 0x22A8622C
#data 0x64E38D07
#data 0xD43BD23C
#data 0xE50A420B
#data 0xA04CE307
#data 0x2830

loc_8c1B46FE:
#data 0x6143
#data 0x6310711D
#data 0x23A8633C
#data 0xD2378915
#data 0x21186120
#data 0x741B8B11
#data 0x62E324C0
#data 0x22C0721D
#data 0xCB0160D0
#data 0x2D00


loc_8c1B4722:
lds.l @r15+,pr
mov.l @(loc_8c1B47EC,pc),r3 ; r3 set to 0x8C1B3F3A
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8c1B4736:
#data 0x63D0
#data 0x23A8633C
#data 0x4F268B12
#data 0x21C0D12B
#data 0xD32B68F6
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x432B6DF6
#data 0x6EF6

loc_8c1B4756:
#data 0xD21C
#data 0x420BD321
#data 0x600E6432
#data 0x89182008


loc_8c1B4764:
lds.l @r15+,pr
mov.l @(loc_8c1B47F8,pc),r2 ; r2 set to 0x8C1B3DE0
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_8c1B4778:
mov.b @(0x07,r14),r0
extu.b r0,r0
tst 0x08,r0
bt loc_8c1B4796
lds.l @r15+,pr
mov.l @(loc_8c1B47FC,pc),r2 ; r2 set to 0x8C1AFA18
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_8c1B4794:
#data 0x28C0


loc_8c1B4796:
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

#align4
loc_8c1B47A8:
#data 0x8C34B0B0

#align4
loc_8c1B47AC:
#data bank1a.loc_8c1aFB9C
#data 0x8C34B2D0
#data 0x8C34B2D2

#align4
loc_8c1B47B8:
#data loc_8c1B9CC0
#data 0x8C34AF60

#align4
loc_8c1B47C0:
#data loc_8c1B9CFC
#data 0x8C34B2D8

#align4
loc_8c1B47C8:
#data loc_8c1B3F0C

loc_8c1B47CC:
#data bank1a.loc_8c1a10A2
#data 0x8C34B2D4

#align4
loc_8c1B47D4:
#data loc_8c1BCFF0

loc_8c1B47D8:
#data loc_8c1B9DDC

loc_8c1B47DC:
#data loc_8c1B6720
#data 0x8C34B2DC

#align4
loc_8c1B47E4:
#data loc_8c1B3EEC
#data 0x8C352F2A

#align4
loc_8c1B47EC:
#data loc_8c1B3F3A
#data 0x8C34B2E3

#align4
loc_8c1B47F4:
#data loc_8c1B374E

loc_8c1B47F8:
#data loc_8c1B3DE0

loc_8c1B47FC:
#data bank1a.loc_8c1aFA18


loc_8c1B4800:
mov.l r14,@-r15
mov.l r13,@-r15
mov 0x00,r13 ; r13 set to 0x00
sts.l pr,@-r15
add 0xE8,r15
mov.l r6,@(0x10,r15)
mov.l r7,@(0x14,r15)
mov r13,r0 ; r0 set to 0x00
nop
mov.b r0,@(0x08,r15)
mov r13,r0 ; r0 set to 0x00
nop
mov.b r0,@(0x04,r15)
mov r5,r14
mov.w @(loc_8c1B4906,pc),r0 ; r0 set to 0xFF
tst r14,r14
mov r13,r6 ; r6 set to 0x00
mov.b r0,@(0x0C,r15)
bt/s loc_8c1B48BE
mov.b r13,@r15
add 0x04,r14
mov.b @r14+,r0 ; r0 ??? bc r14 is ???
mov.b r0,@(0x08,r15)
mov.b @r14+,r0
mov.b r0,@(0x0C,r15)
mov.b @r14+,r0
bra loc_8c1B485A
mov.b r0,@(0x04,r15)

#align4
loc_8c1B4838:
#data 0x65D3A002

#align4
loc_8c1B483C:
#data 0x7E017501

#align4
loc_8c1B4840:
#data 0x635D84F4
#data 0x7001600C
#data 0x8BF73303
#data 0x760162E4
#data 0x63F02F20
#data 0x3E3C633C
#data 0x7E02

loc_8c1B485A:
#data 0x84F8
#data 0x3602600C
#data 0x62E08904
#data 0x622C634C
#data 0x8BE53230

#align4
loc_8c1B486C:
#data 0x644C63E0
#data 0x3340633C
#data 0x7E018B03
#data 0xB04565E3
#data 0x54F4

loc_8c1B487E:
#data 0xA002
#data 0x64D3

loc_8c1B4882:
#data 0x7401
#data 0x7E01

loc_8c1B4886:
#data 0x84F4
#data 0x600C634D
#data 0x8BF83303
#data 0x2F2062E4
#data 0x54F565F0
#data 0x4509655C
#data 0x4715675C
#data 0x66D38F0D

#align4
loc_8c1B48A4:
#data 0x760162E4
#data 0x3373636D
#data 0x60E42420
#data 0x60E48041
#data 0x60E48042
#data 0x8FF38043
#data 0x7404


loc_8c1B48BE:
add 0x18,r15
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8c1B48C8:
#data 0x6373E700
#data 0x89053362

#align4
loc_8c1B48D0:
#data 0x77016354
#data 0x24303762
#data 0x74018FFA

#align4
loc_8c1B48DC:
#data 0x0009000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B48E0:
#data 0x61507501
#data 0x241075FF
#data 0x63507401
#data 0x2430000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B48F0:
#data 0x7503E604

#align4
loc_8c1B48F4:
#data 0x76FF6150
#data 0x75FF2668
#data 0x8FF92410
#data 0x000B7401
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1B4906:
#data 0x00FF

#align4
loc_8c1B4908:
#data 0x6E532FE6
#data 0x6D432FD6
#data 0xBFD94F22
#data 0x7E20E620
#data 0x65E364D3
#data 0x7420BFE0
#data 0x64D37E02
#data 0xE60165E3
#data 0x7422BFCE
#data 0x64D37E01
#data 0xE60165E3
#data 0x7423BFC8
#data 0x64D37E01
#data 0xE60165E3
#data 0x7424BFC2
#data 0x64D37E01
#data 0xE60165E3
#data 0x7425BFBC
#data 0x64D37E01
#data 0xBFC365E3
#data 0x7E027426
#data 0x65E364D3
#data 0x7428BFBE
#data 0x64D37E02
#data 0xBFB965E3
#data 0x7E02742A
#data 0x65E364D3
#data 0x742CBFB4
#data 0x64D37E02
#data 0xE60165E3
#data 0x742EBFA2
#data 0x64D37E01
#data 0xBFA965E3
#data 0x7E027430
#data 0x65E364D3
#data 0x7432BFA4
#data 0x64D37E02
#data 0xBF9F65E3
#data 0x7E027434
#data 0x65E364D3
#data 0x7436BF9A
#data 0x64D37E02
#data 0xBF9565E3
#data 0x7E027438
#data 0x65E364D3
#data 0x743ABF90
#data 0x64D37E02
#data 0xBF8B65E3
#data 0x7E02743C
#data 0x65E364D3
#data 0x743EBF86
#data 0x64D37E02
#data 0xBF8165E3
#data 0x7E027440
#data 0x65E364D3
#data 0x7442BF7C
#data 0x64D37E02
#data 0xBF7765E3
#data 0x7E027444
#data 0x65E364D3
#data 0x7446BF72
#data 0x64D37E02
#data 0xBF6D65E3
#data 0x7E027448
#data 0x65E364D3
#data 0x744ABF68
#data 0x64D37E02
#data 0xBF6365E3
#data 0x7E02744C
#data 0x65E364D3
#data 0x744EBF5E
#data 0x64D37E02
#data 0xBF5965E3
#data 0x7E027450
#data 0x65E364D3
#data 0x7452BF54
#data 0x64D37E02
#data 0xBF4F65E3
#data 0x7E027454
#data 0x65E364D3
#data 0x7456BF4A
#data 0x64D37E02
#data 0xBF4565E3
#data 0x7E027458
#data 0x65E364D3
#data 0x745ABF40
#data 0x64D37E02
#data 0xBF3B65E3
#data 0x7E02745C
#data 0x65E364D3
#data 0x745EBF36
#data 0x64D37E02
#data 0xBF3165E3
#data 0x7E027460
#data 0x65E364D3
#data 0x7462BF2C
#data 0x64D37E02
#data 0xBF2765E3
#data 0x7E027464
#data 0x65E364D3
#data 0x7466BF22
#data 0x64D37E02
#data 0xBF1D65E3
#data 0x7E027468
#data 0x65E364D3
#data 0x746ABF18
#data 0x64D37E02
#data 0xBF1365E3
#data 0x7E02746C
#data 0x65E364D3
#data 0x746EBF0E
#data 0x64D37E02
#data 0xBF0965E3
#data 0x7E027470
#data 0x65E364D3
#data 0x7472BF04
#data 0x64D37E02
#data 0xBEFF65E3
#data 0x7E027474
#data 0x65E364D3
#data 0x7476BEFA
#data 0x64D37E02
#data 0xBEF565E3
#data 0x7E027478
#data 0x65E364D3
#data 0x747ABEF0
#data 0x64D37E02
#data 0xBEEB65E3
#data 0x7E02747C
#data 0x65E364D3
#data 0x747EBEE6
#data 0x65E37E02
#data 0x0009A000

#align4
loc_8c1B4B1C:
#data 0xBEE79488
#data 0x948634DC
#data 0x65E37E04
#data 0x34DCBEE2
#data 0x7E049482
#data 0xE60165E3
#data 0x34DCBEC8
#data 0x7E01947D
#data 0xE60165E3
#data 0x34DCBEC2
#data 0x7E019478
#data 0xE60165E3
#data 0x34DCBEBC
#data 0x7E019473
#data 0xBEC365E3
#data 0x946F34DC
#data 0x65E37E02
#data 0x34DCBEBE
#data 0x7E02946B
#data 0xBEB965E3
#data 0x946734DC
#data 0x65E37E02
#data 0x34DCBEB4
#data 0x7E029463
#data 0xBEAF65E3
#data 0x945F34DC
#data 0x65E37E02
#data 0x34DCBEAA
#data 0x7E02945B
#data 0xBEA565E3
#data 0x945734DC
#data 0x65E37E02
#data 0x34DCBEA0
#data 0x7E029453
#data 0xBE9B65E3
#data 0x944F34DC
#data 0x65E37E02
#data 0x34DCBE96
#data 0x7E02944B
#data 0xBE9165E3
#data 0x944734DC
#data 0x65E37E02
#data 0x34DCBE8C
#data 0x7E029443
#data 0xBE8765E3
#data 0x943F34DC
#data 0x65E37E02
#data 0x34DCBE82
#data 0x7E02943B
#data 0xBE7D65E3
#data 0x943734DC
#data 0x65E37E02
#data 0x34DCBE78
#data 0x7E029433
#data 0xBE7365E3
#data 0x942F34DC
#data 0x65E37E02
#data 0x34DCBE6E
#data 0x7E02942B
#data 0xBE6965E3
#data 0x942734DC
#data 0x65E37E02
#data 0x34DCBE64
#data 0x7E029423
#data 0xBE5F65E3
#data 0x7E0234DC
#data 0x000960E3
#data 0x6DF64F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x00840080
#data 0x00890088
#data 0x008C008A
#data 0x0090008E
#data 0x00940092
#data 0x00980096
#data 0x009C009A
#data 0x00A0009E
#data 0x00A400A2
#data 0x00A800A6
#data 0x00AC00AA
#data 0x00B000AE
#data 0x00B400B2
#data 0xD3204F22
#data 0x0009430B
#data 0x422BD21F
#data 0x4F26


loc_8c1B4C72:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @(loc_8c1B4CF0,pc),r13 ; r13 set to 0x8C34BC20
add 0xFC,r15
mov.l r4,@r15
mov.l @(loc_8c1B4CF4,pc),r3 ; r3 set to 0x8C1B5F5E
jsr @r3
mov 0x00,r4 ; r4 set to 0x00
exts.b r0,r0
tst r0,r0
bf loc_8c1B4C8E
bra loc_8c1B4CDC
mov 0x03,r0

loc_8c1B4C8E:
mov.l @r15,r3
mov.l @r3,r3
add 0x01,r3
bsr loc_8c1B50EA
mov.l r3,@r13
exts.b r0,r0
tst r0,r0
bt loc_8c1B4CB0
bsr loc_8c1B5134
nop
exts.b r0,r0
tst r0,r0
bt loc_8c1B4CC2
bsr loc_8c1B51A4
nop
bra loc_8c1B4CBE
nop

loc_8c1B4CB0:
bsr loc_8c1B51D4
nop
exts.b r0,r0
tst r0,r0
bt loc_8c1B4CC2
bsr loc_8c1B51F6
nop

loc_8c1B4CBE:
bra loc_8c1B4CC4
mov r0,r14

loc_8c1B4CC2:
#data 0xEE03

#align4
loc_8c1B4CC4:
#data 0x222862EC
#data 0xEE038B00

#align4
loc_8c1B4CCC:
#data 0x62F263D2
#data 0xD2092232
#data 0x0009420B
#data 0x000960E3


loc_8c1B4CDC:
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x0000

#align4
loc_8c1B4CE8:
#data bank1a.loc_8c1aECDC

loc_8c1B4CEC:
#data bank1a.loc_8c1aEE08

loc_8c1B4CF0:
#data 0x8C34BC20

#align4
loc_8c1B4CF4:
#data loc_8c1B5F5E

loc_8c1B4CF8:
#data loc_8c1B600C

loc_8c1B4CFC:
#data 0x636C2FE6
#data 0x23382FD6
#data 0x8F0184F8
#data 0x96666E03

#align4
loc_8c1B4D0C:
#data 0x233863EC
#data 0x9E628B00

#align4
loc_8c1B4D14:
#data 0x6242D134
#data 0x22396312
#data 0x935D2422
#data 0x8D132238
#data 0xE2056D6C
#data 0x8B0B3D23
#data 0x60ECE118
#data 0x8B073013
#data 0x605CE320
#data 0x89033037
#data 0x607CE238
#data 0x8B033027

#align4
loc_8c1B4D44:
#data 0x934A6142
#data 0x24122139

#align4
loc_8c1B4D4C:
#data 0x93476242
#data 0x89122238
#data 0x3D03E005
#data 0xE21E8B0B
#data 0x312361EC
#data 0xE3208B07
#data 0x3137615C
#data 0xE2388903
#data 0x3127617C
#data 0x8B03

loc_8c1B4D72:
#data 0x6142
#data 0x21399335
#data 0x2412

loc_8c1B4D7A:
#data 0x6042
#data 0x8911C880
#data 0x3D23E205
#data 0x61EC8B0A
#data 0x8B073123
#data 0x615CE320
#data 0x89033137
#data 0x607CE320
#data 0x8B033037

#align4
loc_8c1B4D9C:
#data 0x93216242
#data 0x24222239

#align4
loc_8c1B4DA4:
#data 0xC8406042
#data 0xE2068910
#data 0x8B093D23
#data 0x615CE30C
#data 0x89053137
#data 0x302360EC
#data 0x607C8B02
#data 0x8B033037

#align4
loc_8c1B4DC4:
#data 0xE3BF6242
#data 0x24222239

#align4
loc_8c1B4DCC:
#data 0xC8206042
#data 0xE206891B
#data 0xA0093D23
#data 0x00FF0009
#data 0xFDFF0200
#data 0xFEFF0100
#data 0x0000FF7F
#data 0x8C34B0F4

#align4
loc_8c1B4DEC:
#data 0xE3088B09
#data 0x3137615C
#data 0x60EC8905
#data 0x8B023023
#data 0x3037607C
#data 0x8B03

loc_8c1B4E02:
#data 0x6242
#data 0x2239E3DF
#data 0x2422

loc_8c1B4E0A:
#data 0x6042
#data 0x8910C810
#data 0x3D23E204
#data 0xE3058B09
#data 0x3137615C
#data 0x60EC8905
#data 0x8B023023
#data 0x3037607C
#data 0x8B03

loc_8c1B4E2A:
#data 0x6242
#data 0x2239E3EF
#data 0x2422

loc_8c1B4E32:
#data 0x6042
#data 0x890FC808
#data 0x3D23E204
#data 0x615C8B08
#data 0x89053127
#data 0x312361EC
#data 0x617C8B02
#data 0x8B033127

#align4
loc_8c1B4E50:
#data 0xE3F76242
#data 0x24222239

#align4
loc_8c1B4E58:
#data 0xC8046042
#data 0xE2048928
#data 0x89023D23
#data 0x312361EC
#data 0x8B1E

loc_8c1B4E6A:
#data 0xE301
#data 0x3237625C
#data 0xE3018B03
#data 0x3137617C
#data 0x8916

loc_8c1B4E7A:
#data 0xE304
#data 0x3137615C
#data 0xE3048912
#data 0x3137617C
#data 0xE301890E
#data 0x3137615C
#data 0xE1048B02
#data 0x8B073D13

#align4
loc_8c1B4E98:
#data 0x627CE301
#data 0x8B073237
#data 0x61ECE304
#data 0x89033133

#align4
loc_8c1B4EA8:
#data 0xE3FB6242
#data 0x24222239

#align4
loc_8c1B4EB0:
#data 0xC8026042
#data 0xE202890F
#data 0x8B083D23
#data 0x3127615C
#data 0x61EC8905
#data 0x8B023123
#data 0x3127617C
#data 0x8B03

loc_8c1B4ECE:
#data 0x6242
#data 0x2239E3FD
#data 0x2422

loc_8c1B4ED6:
#data 0x6042
#data 0x8917C801
#data 0x3D23E202
#data 0xE3048B10
#data 0x3137615C
#data 0x6EEC890C
#data 0x8B093E23
#data 0x3737677C
#data 0x60D38906
#data 0x88030009
#data 0x605C8B06
#data 0x8B038803

#align4
loc_8c1B4F04:
#data 0xE3FE6242
#data 0x24222239

#align4
loc_8c1B4F0C:
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1B4F12:
rts
nop
;-------------------------------------------------------------------------------

loc_8c1B4F16:
mov.l @(loc_8c1B4F4C,pc),r5 ; r5 set to 0x80000000
bra loc_8c1B4F2A
mov 0x1F,r6

loc_8c1B4F1C:
extu.b r6,r2
tst r2,r2
bf/s loc_8c1B4F28
add 0xFF,r6
rts
mov 0x01,r0
;-------------------------------------------------------------------------------

loc_8c1B4F28:
shlr r5

loc_8c1B4F2A:
mov r4,r2
tst r5,r2
bt loc_8c1B4F1C
mov r5,r0
nop
rts
nop
;-------------------------------------------------------------------------------
#data 0xE401D505
#data 0x60504F22
#data 0x2048600C
#data 0x89057FF8
#data 0x6043A005

#align4
loc_8c1B4F4C:
#data 0x80000000
#data 0x8C34AF74
#data 0xD32DE000
#data 0x914F62F3
#data 0x7204430B
#data 0x600C6050
#data 0x8901C802
#data 0x6043A001
#data 0xD327E000
#data 0x914462F3
#data 0x7204430B
#data 0x600C6050
#data 0x8901C804
#data 0x6043A001
#data 0xD321E000
#data 0x913962F3
#data 0x7204430B
#data 0x600C6050
#data 0x8901C808
#data 0x6043A001
#data 0xD31BE000
#data 0x912E62F3
#data 0x7204430B
#data 0x600C6050
#data 0x8901C810
#data 0x6043A001
#data 0xD315E000
#data 0x912362F3
#data 0x7204430B
#data 0x600C6050
#data 0x8901C820
#data 0x6043A001
#data 0xD30FE000
#data 0x911862F3
#data 0x7204430B
#data 0x600C6050
#data 0x8901C840
#data 0x6043A001
#data 0xD309E000
#data 0x910D62F3
#data 0x7204430B
#data 0x600C6050
#data 0x890BC880
#data 0x6043A00B
#data 0x0E010F01
#data 0x0C010D01
#data 0x0B010A01
#data 0x00000901

#align4
loc_8c1B500C:
#data bank13.loc_8c130F04
#data 0xD346E000
#data 0x918062F3
#data 0x7204430B
#data 0x64F365F3
#data 0x60537504
#data 0x84010009
#data 0xD3406243
#data 0x430BC9FF
#data 0x6053E108
#data 0x60000009
#data 0xC880916F
#data 0x0029D33B
#data 0x600B70FF
#data 0x6243430B
#data 0x00096053
#data 0x91656000
#data 0xD336C840
#data 0x70FF0029
#data 0x430B600B
#data 0x60536243
#data 0x60000009
#data 0xC820915B
#data 0x0029D330
#data 0x600B70FF
#data 0x6243430B
#data 0x00096053
#data 0x91516000
#data 0xD32BC810
#data 0x70FF0029
#data 0x430B600B
#data 0x60536243
#data 0x60000009
#data 0xC8089147
#data 0x0029D325
#data 0x600B70FF
#data 0x6243430B
#data 0x00096053
#data 0x913D6000
#data 0xD320C804
#data 0x70FF0029
#data 0x430B600B
#data 0x60536243
#data 0x60000009
#data 0xC8029133
#data 0x0029D31A
#data 0x600B70FF
#data 0x6243430B
#data 0x00096053
#data 0x91296000
#data 0xC901D315
#data 0x6243430B
#data 0x51F362F1
#data 0x4F267F08
#data 0x000B2121
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1B50EA:
mov.l @(loc_8c1B5130,pc),r3 ; r3 set to 0x8C34BC20
mov.l @r3,r0
mov.b @r0,r0
cmp/eq 0x41,r0
bt loc_8c1B5110
cmp/eq 0x44,r0
bt loc_8c1B5110
cmp/eq 0x45,r0
bt loc_8c1B5110
cmp/eq 0x47,r0
bt loc_8c1B5110
cmp/eq 0x49,r0
bt loc_8c1B5110
cmp/eq 0x4D,r0
bt loc_8c1B5110
cmp/eq 0x54,r0
bt loc_8c1B5110
bra loc_8c1B5114
nop

loc_8c1B5110:
rts
mov 0x01,r0
;-------------------------------------------------------------------------------

loc_8c1B5114:
mov 0x00,r0 ; r0 set to 0x00
rts
nop
;-------------------------------------------------------------------------------
#data 0x0801
#data 0x0A010901
#data 0x0C010B01
#data 0x0E010D01
#data 0x00000F01

#align4
loc_8c1B512C:
#data bank13.loc_8c130F04

loc_8c1B5130:
#data 0x8C34BC20

#align4
loc_8c1B5134:
#data 0xE6032FE6
#data 0xED002FD6
#data 0xD57A4F22
#data 0xD37ADE78
#data 0x64E2430B
#data 0x89242008
#data 0x6043D478
#data 0x701F0009
#data 0x600C6000
#data 0x8B1CC840
#data 0x75186543
#data 0xE3086550
#data 0x2358655C
#data 0xE1108916
#data 0x89132158
#data 0x600060E2
#data 0x890E8841
#data 0xE602D26C
#data 0x420BD56D
#data 0x200864E2
#data 0xD2678907
#data 0xD368E602
#data 0x430BD56A
#data 0x20086422
#data 0x8B00

loc_8c1B5196:
#data 0xED01

#align4
loc_8c1B5198:
#data 0x000960D3
#data 0x6DF64F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------

loc_8c1B51A4:
mov.l @(loc_8c1B533C,pc),r2 ; r2 set to 0x8C34BBA9
mov 0x01,r3 ; r3 set to 0x01
sts.l pr,@-r15
mov.b r3,@r2 ; r2 ??
mov.l @(loc_8c1B5324,pc),r4 ; r4 set to 0x8C34BC20
mov.l @r4,r0
add 0x01,r0
mov.l r0,@r4 ; r4 ??? bc r0 is ???
add 0xFF,r0
mov.b @r0,r0
cmp/eq 0x4D,r0
bf loc_8c1B51C4
bsr loc_8c1B51FA
nop
bra loc_8c1B51CA
nop

loc_8c1B51C4:
lds.l @r15+,pr
rts
mov 0x00,r0
;-------------------------------------------------------------------------------

loc_8c1B51CA:
mov.l @(loc_8c1B533C,pc),r3 ; r3 set to 0x8C34BBA9
mov.b @r3,r0
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

#align4
loc_8c1B51D4:
#data 0xEE002FE6
#data 0xD5594F22
#data 0xD351E606
#data 0x420BD252
#data 0x20086432
#data 0xEE018B00

#align4
loc_8c1B51EC:
#data 0x000960E3
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1B51F6:
rts
mov r15,r0
;-------------------------------------------------------------------------------

loc_8c1B51FA:
mov.l @(loc_8c1B5324,pc),r4 ; r4 set to 0x8C34BC20
mov.l @r4,r5
mov.b @r5,r0
cmp/eq 0x53,r0
bf loc_8c1B520C
mov.l @r4,r2
add 0x01,r2
bra loc_8c1B5402
mov.l r2,@r4

loc_8c1B520C:
cmp/eq 0x41,r0
bf loc_8c1B5218
mov.l @r4,r2
add 0x01,r2
bra loc_8c1B5220
mov.l r2,@r4

loc_8c1B5218:
mov.l @(loc_8c1B533C,pc),r1 ; r1 set to 0x8C34BBA9
mov 0x03,r3 ; r3 set to 0x03
rts
mov.b r3,@r1
;-------------------------------------------------------------------------------

loc_8c1B5220:
mov.l r14,@-r15
mov.l @(loc_8c1B5324,pc),r4 ; r4 set to 0x8C34BC20
sts.l pr,@-r15
mov.l @r4,r0
mov.l @(loc_8c1B5330,pc),r14 ; r14 set to 0x8C34AF50
add 0x01,r0
mov.l r0,@r4 ; r4 ??? bc r0 is ???
add 0xFF,r0
mov.b @r0,r0
cmp/eq 0x3D,r0
bt/s loc_8c1B5240
mov 0x08,r5 ; r5 set to 0x08
cmp/eq 0x3F,r0
bt loc_8c1B526C
bra loc_8c1B5292
nop

#align4
loc_8c1B5240:
#data 0x60006042
#data 0x8B0E883F
#data 0x72016242
#data 0x84EE2422
#data 0x2058600C
#data 0xB6CC8901
#data 0x0009

loc_8c1B525A:
#data 0xD33A
#data 0x64314F26
#data 0xA019644D
#data 0x6EF6

loc_8c1B5266:
#data 0x4F26
#data 0x6EF6A040

#align4
loc_8c1B526C:
#data 0x600C84EE
#data 0x89012058
#data 0x0009B6BD

#align4
loc_8c1B5278:
#data 0x63E364E3
#data 0x733C743D
#data 0x62306440
#data 0x644C4F26
#data 0x4418622C
#data 0xA003242B
#data 0x6EF6


loc_8c1B5292:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8c1B5298:
#data 0x2FD62FE6
#data 0x7FFC4F22
#data 0xD4292F42
#data 0x0009B677
#data 0x64F2BE35
#data 0xE1FED225
#data 0x63226EF2
#data 0x3E08D425
#data 0xB66C2E39
#data 0xDD242E19
#data 0x0009A007

#align4
loc_8c1B52C4:
#data 0x64E3BE27
#data 0x2EE83E08
#data 0xB6628901
#data 0x64D3

loc_8c1B52D2:
#data 0xB1BF
#data 0x600E64E3
#data 0x8BF32008
#data 0xB65AD41D
#data 0x7F040009
#data 0x6DF64F26
#data 0x6EF6A683

#align4
loc_8c1B52EC:
#data 0xE3002FE6
#data 0x2FC62FD6
#data 0x2FB6EC03
#data 0x4F222FA6
#data 0x2F327FF8
#data 0xDB0EDA15
#data 0xDD15

loc_8c1B5306:
#data 0xD507
#data 0x4A0BE608
#data 0x6E0364D3
#data 0x233863EC
#data 0xB3488B27
#data 0x640364D3
#data 0x8B1F2448
#data 0x2BC0A024

#align4
loc_8c1B5324:
#data 0x8C34BC20

#align4
loc_8c1B5328:
#data bank1c.loc_8c1c84B8

loc_8c1B532C:
#data bank13.loc_8c131D6C

loc_8c1B5330:
#data 0x8C34AF50

#align4
loc_8c1B5334:
#data bank1c.loc_8c1c84BC

loc_8c1B5338:
#data bank1c.loc_8c1c84C0

loc_8c1B533C:
#data 0x8C34BBA9

#align4
loc_8c1B5340:
#data bank1c.loc_8c1c84C4
#data 0x8C34B0F4

#align4
loc_8c1B5348:
#data bank1c.loc_8c1c84CC

loc_8c1B534C:
#data bank1c.loc_8c1c84D4

loc_8c1B5350:
#data bank1c.loc_8c1c84D8

loc_8c1B5354:
#data bank1c.loc_8c1c84DC

loc_8c1B5358:
#data loc_8c1B8028
#data 0x8C34BC2C

#align4
loc_8c1B5360:
#data 0x234B63F2
#data 0x2F32

loc_8c1B5366:
#data 0x60EC
#data 0x8BCC8802

#align4
loc_8c1B536C:
#data 0x1F2162F2
#data 0x63E3DE3E
#data 0x65E37341
#data 0x67E366E3
#data 0x763F6230
#data 0x2F26753E
#data 0x65507740
#data 0x64F36660
#data 0xBCB56770
#data 0x64E37404
#data 0x743D63E3
#data 0x6440733C
#data 0x7F046230
#data 0x622C644C
#data 0xBDB64418
#data 0x62F2242B
#data 0x89033202
#data 0x60F253F1
#data 0x89013300

#align4
loc_8c1B53B8:
#data 0x2BC0A01B

#align4
loc_8c1B53BC:
#data 0x7C3D6CE3
#data 0x64C06DE3
#data 0x63D07D3C
#data 0x4418644C
#data 0xBDA2633C
#data 0x63F2243B
#data 0x2D00203B
#data 0x63D064C0
#data 0x633C644C
#data 0xBD984418
#data 0x63F2243B
#data 0x203BD221
#data 0x40192029
#data 0x2C00

loc_8c1B53F2:
#data 0x7F08
#data 0x6AF64F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1B5402:
mov.l @(loc_8c1B5474,pc),r4 ; r4 set to 0x8C34BC20
sts.l pr,@-r15
mov.l @r4,r0
mov.l @(loc_8c1B546C,pc),r5 ; r5 set to 0x8C34AF50
add 0x01,r0
mov.l r0,@r4 ; r4 ??? bc r0 is ???
add 0xFF,r0
mov.b @r0,r0
cmp/eq 0x3D,r0
bt/s loc_8c1B5420
mov 0x08,r6 ; r6 set to 0x08
cmp/eq 0x3F,r0
bt loc_8c1B544C
bra loc_8c1B5466
nop

#align4
loc_8c1B5420:
#data 0x60006042
#data 0x8B0F883F
#data 0x72016242
#data 0x845E2422
#data 0x2068600C
#data 0xB5DC8901
#data 0x0009

loc_8c1B543A:
#data 0xD40F
#data 0x0009B5AB
#data 0x0009B01C
#data 0x0009A00D

#align4
loc_8c1B5448:
#data 0x4F26A185

#align4
loc_8c1B544C:
#data 0x600C845E
#data 0x89012068
#data 0x0009B5CD

#align4
loc_8c1B5458:
#data 0xB59CD407
#data 0xB0990009
#data 0x0009

loc_8c1B5462:
#data 0xA5C6
#data 0x4F26


loc_8c1B5466:
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

#align4
loc_8c1B546C:
#data 0x8C34AF50
#data 0x0000FF00

#align4
loc_8c1B5474:
#data 0x8C34BC20

#align4
loc_8c1B5478:
#data bank1c.loc_8c1c84E0

loc_8c1B547C:
#data 0x2FD62FE6
#data 0xB0454F22
#data 0xD4180009
#data 0x0009B585
#data 0xD317D218
#data 0x6430420B
#data 0x430BD317
#data 0xD2176403
#data 0x6D229322
#data 0x8D032D38
#data 0xDD156E03
#data 0x0009A001

loc_8c1B54AC:
#data 0x6DE3

loc_8c1B54AE:
#data 0x2FE6
#data 0x2FD62FE6
#data 0xD2122FD6
#data 0xD313D412
#data 0x2F26430B
#data 0x3027E246
#data 0x7F148F05
#data 0xE103D310
#data 0xA0052310
#data 0x0009

loc_8c1B54D2:
#data 0x4F26
#data 0x6DF6D40B
#data 0x6EF6A55D

#align4
loc_8c1B54DC:
#data 0x6DF64F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x00000300

#align4
loc_8c1B54E8:
#data bank1c.loc_8c1c84E8
#data 0x8C34B0F0

#align4
loc_8c1B54F0:
#data loc_8c1BF488

loc_8c1B54F4:
#data bank1a.loc_8c1aEE58
#data 0x8C34B0F4
#data 0x00008340

#align4
loc_8c1B5500:
#data bank1c.loc_8c1c84F0
#data 0x8C34BC2C

#align4
loc_8c1B5508:
#data bank12.loc_8c129740
#data 0x8C34BBA9

#align4
loc_8c1B5510:
#data 0x4F222FE6
#data 0xB53ED431
#data 0xDE310009
#data 0xC80260E2
#data 0xD4308902
#data 0x0009B537

#align4
loc_8c1B5528:
#data 0xC80860E2
#data 0xD42E8902
#data 0x0009B531

#align4
loc_8c1B5534:
#data 0xC81060E2
#data 0xD42C8902
#data 0x0009B52B

#align4
loc_8c1B5540:
#data 0xC80460E2
#data 0xD42A8902
#data 0x0009B525

#align4
loc_8c1B554C:
#data 0xC82060E2
#data 0xD4288902
#data 0x0009B51F

#align4
loc_8c1B5558:
#data 0xC84060E2
#data 0xD4268902
#data 0x0009B519

#align4
loc_8c1B5564:
#data 0xC88060E2
#data 0xD4248902
#data 0x0009B513

#align4
loc_8c1B5570:
#data 0x933162E2
#data 0x89022238
#data 0xB50CD421
#data 0x0009

loc_8c1B557E:
#data 0x62E2
#data 0x2238932B
#data 0xD41F8902
#data 0x0009B505

#align4
loc_8c1B558C:
#data 0xD41E4F26
#data 0x6EF6A501

#align4
loc_8c1B5594:
#data 0x2FD62FE6
#data 0x4F22DE1C
#data 0x743D64E3
#data 0x733C63E3
#data 0x62306440
#data 0x622C644C
#data 0xB0514418
#data 0x600E242B
#data 0x8B022008
#data 0xB4ECD415
#data 0x0009

loc_8c1B55BE:
#data 0xDD15
#data 0x64D3B4E9
#data 0x000960E3
#data 0x60007042
#data 0xC880600C
#data 0xD4118B24
#data 0x0009A023
#data 0x02000100

#align4
loc_8c1B55DC:
#data bank1c.loc_8c1c84D4
#data 0x8C34B0F4

#align4
loc_8c1B55E4:
#data bank1c.loc_8c1c851C

loc_8c1B55E8:
#data bank1c.loc_8c1c8520

loc_8c1B55EC:
#data bank1c.loc_8c1c8528

loc_8c1B55F0:
#data bank1c.loc_8c1c8530

loc_8c1B55F4:
#data bank1c.loc_8c1c8538

loc_8c1B55F8:
#data bank1c.loc_8c1c8540

loc_8c1B55FC:
#data bank1c.loc_8c1c8548

loc_8c1B5600:
#data bank1c.loc_8c1c8550

loc_8c1B5604:
#data bank1c.loc_8c1c8558

loc_8c1B5608:
#data bank1c.loc_8c1c84DC
#data 0x8C34AF50

#align4
loc_8c1B5610:
#data bank1c.loc_8c1c8560

loc_8c1B5614:
#data bank1c.loc_8c1c84D8

loc_8c1B5618:
#data bank1c.loc_8c1c8574

loc_8c1B561C:
#data 0xD431

loc_8c1B561E:
#data 0xB4BA
#data 0x64E30009
#data 0xB077743E
#data 0xB4B46440
#data 0x64E364D3
#data 0xB071743F
#data 0xB4AE6440
#data 0x64E364D3
#data 0xB06B7440
#data 0xB4A86440
#data 0x4F2664D3
#data 0x744164E3
#data 0x6DF66440
#data 0x6EF6A062

#align4
loc_8c1B5654:
#data 0x4F229342
#data 0x89022348
#data 0xA02ED422
#data 0x0009

loc_8c1B5662:
#data 0x933C
#data 0x89022348
#data 0xA028D420
#data 0x0009

loc_8c1B566E:
#data 0x9337
#data 0x89022348
#data 0xA022D41E
#data 0x0009

loc_8c1B567A:
#data 0xE340
#data 0x89022348
#data 0xA01CD41C
#data 0x0009

loc_8c1B5686:
#data 0xE320
#data 0x89022348
#data 0xA016D41A
#data 0x0009

loc_8c1B5692:
#data 0xE310
#data 0x89022348
#data 0xA010D418
#data 0x0009

loc_8c1B569E:
#data 0xE308
#data 0x89022348
#data 0xA00AD416
#data 0x0009

loc_8c1B56AA:
#data 0xE304
#data 0x89022348
#data 0xA004D414
#data 0x0009

loc_8c1B56B6:
#data 0xE302
#data 0x89042348
#data 0xD412

loc_8c1B56BE:
#data 0xB46A
#data 0xA0250009
#data 0x0009

loc_8c1B56C6:
#data 0xE301
#data 0x89042438
#data 0xB462D40F
#data 0xA01D0009
#data 0x0009

loc_8c1B56D6:
#data 0x4F26
#data 0xE000000B
;-------------------------------------------------------------------------------
#data 0x01000200
#data 0x00000080

#align4
loc_8c1B56E4:
#data bank1c.loc_8c1c8578

loc_8c1B56E8:
#data bank1c.loc_8c1c857C

loc_8c1B56EC:
#data bank1c.loc_8c1c8580

loc_8c1B56F0:
#data bank1c.loc_8c1c8584

loc_8c1B56F4:
#data bank1c.loc_8c1c8588

loc_8c1B56F8:
#data bank1c.loc_8c1c8590

loc_8c1B56FC:
#data bank1c.loc_8c1c8594

loc_8c1B5700:
#data bank1c.loc_8c1c859C

loc_8c1B5704:
#data bank1c.loc_8c1c85A0

loc_8c1B5708:
#data bank1c.loc_8c1c851C

loc_8c1B570C:
#data bank1c.loc_8c1c85A8

loc_8c1B5710:
#data 0x4F26E001
#data 0x0009000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5718:
#data 0x7FF04F22
#data 0x63F02F40
#data 0x8B022338
#data 0xA010D438
#data 0x0009

loc_8c1B572A:
#data 0xD338
#data 0x64F0430B
#data 0x420BD237
#data 0x2F066403
#data 0x2F36D336
#data 0x64F3D236
#data 0x740C420B
#data 0x64F37F08
#data 0x7404

loc_8c1B574A:
#data 0xB424
#data 0x7F100009
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1B5756:
#data 0x2FE6
#data 0x2FC62FD6
#data 0x2FA62FB6
#data 0x2F862F96
#data 0xD42E4F22
#data 0xD32ED52C
#data 0x430B7FF4
#data 0x6403E608
#data 0xDE2C624C
#data 0x8F0D2228
#data 0xD4286DE3
#data 0x0009B113
#data 0x6322D229
#data 0x20082039
#data 0x2F028F02
#data 0x0009A0DB

#align4
loc_8c1B5794:
#data 0x6903A015

#align4
loc_8c1B5798:
#data 0x8801604C
#data 0x64D38B0D
#data 0x743D63D3
#data 0x6440733C
#data 0x644C6230
#data 0x4418622C
#data 0x242BBBB1
#data 0xA0042F02
#data 0xE900

loc_8c1B57BA:
#data 0x8802
#data 0xA0C48B01
#data 0x0009

loc_8c1B57C2:
#data 0xD516
#data 0xDA1A64F3
#data 0x4A0BE664
#data 0x640C7404
#data 0x8B0F2448
#data 0xE30152F1
#data 0x8B013236
#data 0x0009A0B5

#align4
loc_8c1B57E0:
#data 0x211851F1
#data 0x60338903
#data 0xA0010009
#data 0x0009

loc_8c1B57EE:
#data 0xE000

#align4
loc_8c1B57F0:
#data 0x80F8A022

#align4
loc_8c1B57F4:
#data 0x000960E3
#data 0x60007042
#data 0xC880600C
#data 0xA0188B18
#data 0x0000E001

#align4
loc_8c1B5808:
#data bank1c.loc_8c1c85B0

loc_8c1B580C:
#data loc_8c1BF488

loc_8c1B5810:
#data bank1a.loc_8c1aEE58

loc_8c1B5814:
#data bank1c.loc_8c1c85B4

loc_8c1B5818:
#data bank12.loc_8c129740
#data 0x8C34BC20
#data 0x8C34BC2C

#align4
loc_8c1B5824:
#data loc_8c1B8028
#data 0x8C34AF50
#data 0x8C34B0F4

#align4
loc_8c1B5830:
#data loc_8c1B7F74

loc_8c1B5834:
#data 0xE000

loc_8c1B5836:
#data 0x80F8

#align4
loc_8c1B5838:
#data 0x64F3D52F
#data 0x4A0BE66E
#data 0x64037404
#data 0x9856644C
#data 0x8B072448
#data 0x54F1B116
#data 0x62DC6D03
#data 0x8B043280
#data 0x0009A077

#align4
loc_8c1B585C:
#data 0x7D3E6DE3
#data 0x6DD0

loc_8c1B5862:
#data 0xD525
#data 0xE66E64F3
#data 0x74044A0B
#data 0x2448640C
#data 0xB2208B11
#data 0x6B0354F1
#data 0x348064BC
#data 0x24488965
#data 0x62DC8902
#data 0x89603247

#align4
loc_8c1B5888:
#data 0x6230D31C
#data 0x3427622C
#data 0xA05A8B04
#data 0x0009

loc_8c1B5896:
#data 0x6BE3
#data 0x6BB07B3F

#align4
loc_8c1B589C:
#data 0x64F3D516
#data 0x4A0BE66E
#data 0x640C7404
#data 0x8B072448
#data 0x54F1B0E6
#data 0x62CC6C03
#data 0x8B043280
#data 0x0009A047

#align4
loc_8c1B58BC:
#data 0x7C406CE3
#data 0x6CC0

loc_8c1B58C2:
#data 0xD50D
#data 0xE66E64F3
#data 0x74044A0B
#data 0x2448640C
#data 0xB1F08B16
#data 0x6A0354F1
#data 0x348064AC
#data 0x24488935
#data 0x62CC8902
#data 0x89303247

#align4
loc_8c1B58E8:
#data 0x6230D304
#data 0x3427622C
#data 0xA02A8B09
#data 0x00FF0009
#data 0x8C34BC20
#data 0x8C34B0F0

#align4
loc_8c1B5900:
#data 0x7A416AE3
#data 0x6AA0

loc_8c1B5906:
#data 0x63F2
#data 0xD04265D3
#data 0x623367C3
#data 0x6102323C
#data 0x66B372FF
#data 0x2F222219
#data 0x64F32FA6
#data 0x7404B9EC
#data 0x3926E200
#data 0x8F037F04
#data 0x61F264BC
#data 0x890A2198

#align4
loc_8c1B5934:
#data 0x222862F2
#data 0x60F28907
#data 0x89048801
#data 0x342362DC
#data 0x24488905
#data 0x8903

loc_8c1B594A:
#data 0xD233
#data 0xA022E303
#data 0x2230

loc_8c1B5952:
#data 0x60E3
#data 0x63F20009
#data 0x62E3703C
#data 0x2030723D
#data 0xD32E64E3
#data 0x213961F2
#data 0x22104119
#data 0x200884F8
#data 0x74428F03
#data 0xA0026040
#data 0xCB80

loc_8c1B597A:
#data 0x6040
#data 0xC97F

loc_8c1B597E:
#data 0x63E3
#data 0x62E3733E
#data 0x2400723F
#data 0x63E323D0
#data 0x22B07E41
#data 0x23C07340
#data 0x2EA0

loc_8c1B5996:
#data 0x7F0C
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1B59AA:
#data 0x2FE6
#data 0x2FD66E43
#data 0xD51C4F22
#data 0x4D0BDD1A
#data 0x2008E608
#data 0xA0598B01
#data 0xE002

loc_8c1B59C2:
#data 0xD519
#data 0x4D0BE608
#data 0x200864E3
#data 0xA0518B01
#data 0xE008

loc_8c1B59D2:
#data 0xD516
#data 0x4D0BE608
#data 0x200864E3
#data 0xA0498B01
#data 0xE010

loc_8c1B59E2:
#data 0xD513
#data 0x4D0BE608
#data 0x200864E3
#data 0xA0418B01
#data 0xE004

loc_8c1B59F2:
#data 0xD510
#data 0x4D0BE608
#data 0x200864E3
#data 0xA0398B01
#data 0xE020

loc_8c1B5A02:
#data 0xD50D
#data 0x4D0BE608
#data 0x200864E3
#data 0xA0318B16
#data 0x0000E040
#data 0x8C34B0F4
#data 0x8C34BBA9
#data 0x0000FF00

#align4
loc_8c1B5A20:
#data bank13.loc_8c131D6C

loc_8c1B5A24:
#data bank1c.loc_8c1c85B8

loc_8c1B5A28:
#data bank1c.loc_8c1c85C4

loc_8c1B5A2C:
#data bank1c.loc_8c1c85D0

loc_8c1B5A30:
#data bank1c.loc_8c1c85DC

loc_8c1B5A34:
#data bank1c.loc_8c1c85E8

loc_8c1B5A38:
#data bank1c.loc_8c1c85F4

loc_8c1B5A3C:
#data 0xE608D536
#data 0x64E34D0B
#data 0x8B022008
#data 0xA0139058
#data 0x0009

loc_8c1B5A4E:
#data 0xD533
#data 0x4D0BE608
#data 0x200864E3
#data 0x90508B02
#data 0x0009A00A

#align4
loc_8c1B5A60:
#data 0xE608D52F
#data 0x64E34D0B
#data 0x8B022008
#data 0xA0019048
#data 0x0009

loc_8c1B5A72:
#data 0xE000

#align4
loc_8c1B5A74:
#data 0x6DF64F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5A7C:
#data 0x8B012448
#data 0xE000000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5A84:
#data 0x3426E24B
#data 0x000B8901
#data 0xE001
;-------------------------------------------------------------------------------

loc_8c1B5A8E:
#data 0x9238
#data 0x89013426
#data 0xE002000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5A98:
#data 0x34269234
#data 0x000B8901
#data 0xE003
;-------------------------------------------------------------------------------

loc_8c1B5AA2:
#data 0x9230
#data 0x89013426
#data 0xE004000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5AAC:
#data 0x3426922C
#data 0x000B8901
#data 0xE005
;-------------------------------------------------------------------------------

loc_8c1B5AB6:
#data 0x9228
#data 0x89013426
#data 0xE006000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5AC0:
#data 0x34269224
#data 0x000B8901
#data 0xE007
;-------------------------------------------------------------------------------

loc_8c1B5ACA:
#data 0x9220
#data 0x89013426
#data 0xE008000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5AD4:
#data 0x3426921C
#data 0x000B8901
#data 0xE00B
;-------------------------------------------------------------------------------

loc_8c1B5ADE:
#data 0x9218
#data 0x89013426
#data 0xE00C000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5AE8:
#data 0x34269214
#data 0x000B8901
#data 0xE00D
;-------------------------------------------------------------------------------

loc_8c1B5AF2:
#data 0x9210
#data 0x89153426
#data 0xE00E000B
;-------------------------------------------------------------------------------
#data 0x01000080
#data 0x012C0200
#data 0x04B00258
#data 0x12C00960
#data 0x25801C20
#data 0x38402EE0
#data 0x4B0041A0

#align4
loc_8c1B5B18:
#data bank1c.loc_8c1c8600

loc_8c1B5B1C:
#data bank1c.loc_8c1c860C

loc_8c1B5B20:
#data bank1c.loc_8c1c8618

loc_8c1B5B24:
#data 0x34269258
#data 0x000B8901
#data 0xE015
;-------------------------------------------------------------------------------

loc_8c1B5B2E:
#data 0x9254
#data 0x89013426
#data 0xE016000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5B38:
#data 0x34269250
#data 0x000B8901
#data 0xE017
;-------------------------------------------------------------------------------

loc_8c1B5B42:
#data 0x924C
#data 0x89013426
#data 0xE018000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5B4C:
#data 0x34269248
#data 0x000B8901
#data 0xE019
;-------------------------------------------------------------------------------

loc_8c1B5B56:
#data 0x9244
#data 0x89013426
#data 0xE01A000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5B60:
#data 0x34269240
#data 0x000B8901
#data 0xE01C
;-------------------------------------------------------------------------------

loc_8c1B5B6A:
#data 0x923C
#data 0x89013426
#data 0xE01D000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5B74:
#data 0x34269238
#data 0x000B8901
#data 0xE01E
;-------------------------------------------------------------------------------

loc_8c1B5B7E:
#data 0xD21B
#data 0x89013426
#data 0xE01F000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5B88:
#data 0x3426D219
#data 0x000B8901
#data 0xE020
;-------------------------------------------------------------------------------

loc_8c1B5B92:
#data 0xD218
#data 0x89013426
#data 0xE021000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5B9C:
#data 0x3426D216
#data 0x000B8901
#data 0xE022
;-------------------------------------------------------------------------------

loc_8c1B5BA6:
#data 0xD215
#data 0x89013426
#data 0xE023000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5BB0:
#data 0x3426D213
#data 0x000B8901
#data 0xE024
;-------------------------------------------------------------------------------

loc_8c1B5BBA:
#data 0xD212
#data 0x89013426
#data 0xE025000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5BC4:
#data 0x3426D210
#data 0x000B8901
#data 0xE027
;-------------------------------------------------------------------------------

loc_8c1B5BCE:
#data 0xD20F
#data 0x891D3426
#data 0xE028000B
;-------------------------------------------------------------------------------
#data 0x5DC05460
#data 0x6D606720
#data 0x72957080
#data 0x79E077CB
#data 0x00007D00
#data 0x00008235
#data 0x00008340
#data 0x000084D0
#data 0x0000876B
#data 0x00008CA0
#data 0x000091D5
#data 0x00009470
#data 0x0000970B
#data 0x00009C40

#align4
loc_8c1B5C10:
#data 0x3426D22B
#data 0x000B8901
#data 0xE029
;-------------------------------------------------------------------------------

loc_8c1B5C1A:
#data 0xD22A
#data 0x89013426
#data 0xE02A000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5C24:
#data 0x3426D228
#data 0x000B8901
#data 0xE02B
;-------------------------------------------------------------------------------

loc_8c1B5C2E:
#data 0xD227
#data 0x89013426
#data 0xE02C000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5C38:
#data 0x3426D225
#data 0x000B8901
#data 0xE02D
;-------------------------------------------------------------------------------

loc_8c1B5C42:
#data 0xD224
#data 0x89013426
#data 0xE02E000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5C4C:
#data 0x3426D222
#data 0x000B8901
#data 0xE02F
;-------------------------------------------------------------------------------

loc_8c1B5C56:
#data 0xD221
#data 0x89013426
#data 0xE030000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5C60:
#data 0x3426D21F
#data 0x000B8901
#data 0xE031
;-------------------------------------------------------------------------------

loc_8c1B5C6A:
#data 0xD21E
#data 0x89013426
#data 0xE032000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5C74:
#data 0x3426D21C
#data 0x000B8901
#data 0xE033
;-------------------------------------------------------------------------------

loc_8c1B5C7E:
#data 0xD21B
#data 0x89013426
#data 0xE034000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5C88:
#data 0x3426D219
#data 0x000B8901
#data 0xE035
;-------------------------------------------------------------------------------

loc_8c1B5C92:
#data 0xD218
#data 0x89013426
#data 0xE036000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5C9C:
#data 0x3426D216
#data 0x000B8901
#data 0xE037
;-------------------------------------------------------------------------------

loc_8c1B5CA6:
#data 0xD215
#data 0x89013426
#data 0xE038000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5CB0:
#data 0x000B9005
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1B5CB6:
#data 0x2448
#data 0x000B8B22
#data 0x00FFE000
#data 0x0000A175
#data 0x0000A410
#data 0x0000A6AB
#data 0x0000ABE0
#data 0x0000B115
#data 0x0000B3B0
#data 0x0000B64B
#data 0x0000BB80
#data 0x0000C0B5
#data 0x0000C350
#data 0x0000C5EB
#data 0x0000CB20
#data 0x0000D055
#data 0x0000D2F0
#data 0x0000D58B
#data 0x0000DAC0

#align4
loc_8c1B5D00:
#data 0x3420D23E
#data 0x000B8B01
#data 0xE038
;-------------------------------------------------------------------------------

loc_8c1B5D0A:
#data 0xD23D
#data 0x8B013422
#data 0xE037000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5D14:
#data 0x3422D23B
#data 0x000B8B01
#data 0xE036
;-------------------------------------------------------------------------------

loc_8c1B5D1E:
#data 0xD23A
#data 0x8B013422
#data 0xE035000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5D28:
#data 0x3422D238
#data 0x000B8B01
#data 0xE034
;-------------------------------------------------------------------------------

loc_8c1B5D32:
#data 0xD237
#data 0x8B013422
#data 0xE033000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5D3C:
#data 0x3422D235
#data 0x000B8B01
#data 0xE032
;-------------------------------------------------------------------------------

loc_8c1B5D46:
#data 0xD234
#data 0x8B013422
#data 0xE031000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5D50:
#data 0x3422D232
#data 0x000B8B01
#data 0xE030
;-------------------------------------------------------------------------------

loc_8c1B5D5A:
#data 0xD231
#data 0x8B013422
#data 0xE02F000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5D64:
#data 0x3422D22F
#data 0x000B8B01
#data 0xE02E
;-------------------------------------------------------------------------------

loc_8c1B5D6E:
#data 0xD22E
#data 0x8B013422
#data 0xE02D000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5D78:
#data 0x3422D22C
#data 0x000B8B01
#data 0xE02C
;-------------------------------------------------------------------------------

loc_8c1B5D82:
#data 0xD22B
#data 0x8B013422
#data 0xE02B000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5D8C:
#data 0x3422D229
#data 0x000B8B01
#data 0xE02A
;-------------------------------------------------------------------------------

loc_8c1B5D96:
#data 0xD228
#data 0x8B013422
#data 0xE029000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5DA0:
#data 0x3422D226
#data 0x000B8B01
#data 0xE028
;-------------------------------------------------------------------------------

loc_8c1B5DAA:
#data 0xD225
#data 0x8B013422
#data 0xE027000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5DB4:
#data 0x3422D223
#data 0x000B8B01
#data 0xE025
;-------------------------------------------------------------------------------

loc_8c1B5DBE:
#data 0xD222
#data 0x8B013422
#data 0xE024000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5DC8:
#data 0x3422D220
#data 0x000B8B01
#data 0xE023
;-------------------------------------------------------------------------------

loc_8c1B5DD2:
#data 0xD21F
#data 0x8B013422
#data 0xE022000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5DDC:
#data 0x3422D21D
#data 0x000B8B01
#data 0xE021
;-------------------------------------------------------------------------------

loc_8c1B5DE6:
#data 0xD21C
#data 0x8B013422
#data 0xE020000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5DF0:
#data 0x3422D21A
#data 0x000B8B34
#data 0x0000E01F
#data 0x0000DAC0
#data 0x0000D58A
#data 0x0000D2F0
#data 0x0000D055
#data 0x0000CB20
#data 0x0000C5EA
#data 0x0000C350
#data 0x0000C0B5
#data 0x0000BB80
#data 0x0000B64A
#data 0x0000B3B0
#data 0x0000B115
#data 0x0000ABE0
#data 0x0000A6AA
#data 0x0000A410
#data 0x0000A175
#data 0x00009C40
#data 0x0000970A
#data 0x00009470
#data 0x000091D5
#data 0x00008CA0
#data 0x0000876A
#data 0x000084D0
#data 0x00008340
#data 0x00008235

#align4
loc_8c1B5E60:
#data 0x3422925D
#data 0x000B8B01
#data 0xE01E
;-------------------------------------------------------------------------------

loc_8c1B5E6A:
#data 0x9259
#data 0x8B013422
#data 0xE01D000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5E74:
#data 0x34229255
#data 0x000B8B01
#data 0xE01C
;-------------------------------------------------------------------------------

loc_8c1B5E7E:
#data 0x9251
#data 0x8B013422
#data 0xE01A000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5E88:
#data 0x3422924D
#data 0x000B8B01
#data 0xE019
;-------------------------------------------------------------------------------

loc_8c1B5E92:
#data 0x9249
#data 0x8B013422
#data 0xE018000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5E9C:
#data 0x34229245
#data 0x000B8B01
#data 0xE017
;-------------------------------------------------------------------------------

loc_8c1B5EA6:
#data 0x9241
#data 0x8B013422
#data 0xE016000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5EB0:
#data 0x3422923D
#data 0x000B8B01
#data 0xE015
;-------------------------------------------------------------------------------

loc_8c1B5EBA:
#data 0x9239
#data 0x8B013422
#data 0xE00E000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5EC4:
#data 0x34229235
#data 0x000B8B01
#data 0xE00D
;-------------------------------------------------------------------------------

loc_8c1B5ECE:
#data 0x9231
#data 0x8B013422
#data 0xE00C000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5ED8:
#data 0x3422922D
#data 0x000B8B01
#data 0xE00B
;-------------------------------------------------------------------------------

loc_8c1B5EE2:
#data 0x9229
#data 0x8B013422
#data 0xE008000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5EEC:
#data 0x34229225
#data 0x000B8B01
#data 0xE007
;-------------------------------------------------------------------------------

loc_8c1B5EF6:
#data 0x9221
#data 0x8B013422
#data 0xE006000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5F00:
#data 0x3422921D
#data 0x000B8B01
#data 0xE005
;-------------------------------------------------------------------------------

loc_8c1B5F0A:
#data 0x9219
#data 0x8B013422
#data 0xE004000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5F14:
#data 0x34229215
#data 0x000B8B14
#data 0x7D00E003
#data 0x77CA79E0
#data 0x70807295
#data 0x67206D60
#data 0x54605DC0
#data 0x41A04B00
#data 0x2EE03840
#data 0x1C202580
#data 0x096012C0
#data 0x025804B0

#align4
loc_8c1B5F44:
#data 0x3422926C
#data 0x000B8B01
#data 0xE002
;-------------------------------------------------------------------------------

loc_8c1B5F4E:
#data 0xE24B
#data 0x8B013422
#data 0xE001000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B5F58:
#data 0x000B9063
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1B5F5E:
mov.l r14,@-r15
mov.l @(loc_8c1B6024,pc),r14 ; r14 set to 0x8C34BC14
sts.l pr,@-r15
mov.b r4,@r14 ; r14 ??? bc r4 is ???
exts.b r4,r4
tst r4,r4
bt loc_8c1B5F88
mov 0x00,r0 ; r0 set to 0x00
mov r14,r4
mov.w r0,@(0x08,r14)
mov.l @(loc_8c1B6028,pc),r3 ; r3 set to 0x8C1A0D48
jsr @r3
add 0x04,r4
mov.w r0,@(0x0A,r14)
mov.w @(0x0A,r14),r0
tst r0,r0
bf loc_8c1B5F8E
lds.l @r15+,pr
mov 0x00,r0 ; r0 set to 0x00
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1B5F88:
mov.l @(loc_8c1B602C,pc),r3 ; r3 set to 0x8C1AFE8A
jsr @r3
nop

loc_8c1B5F8E:
mov 0x01,r0 ; r0 set to 0x01, r0 set to 0x01
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1B5F96:
#data 0x2FE6
#data 0xDE222FD6
#data 0x63E04F22
#data 0x8D1E2338
#data 0xA0176D43
#data 0x0009

loc_8c1B5FAA:
#data 0x85E4
#data 0x85E56303
#data 0x89083302
#data 0x730153E1
#data 0x62D41E31
#data 0x85E42324
#data 0xA0097001
#data 0x81E4

loc_8c1B5FC6:
#data 0xB021
#data 0xBFC80009
#data 0x600EE401
#data 0x8B012008
#data 0xE000A009

#align4
loc_8c1B5FD8:
#data 0x233863D0
#data 0xA0038BE5
#data 0x0009

loc_8c1B5FE2:
#data 0xD313
#data 0x64D3430B

loc_8c1B5FE8:
#data 0xE001

loc_8c1B5FEA:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1B5FF2:
#data 0x2FE6
#data 0xD310DE0F
#data 0x623064E3
#data 0xD10F2E20
#data 0x80E16010
#data 0x80E2E000
#data 0x6EF6AFC5


loc_8c1B600C:
mov.l @(loc_8c1B6024,pc),r2 ; r2 set to 0x8C34BC14
mov.b @r2,r3
tst r3,r3
bt loc_8c1B601C
mov.l @(loc_8c1B6044,pc),r1 ; r1 set to 0x8C1A0D92
mov.l @(loc_8c1B6040,pc),r3 ; r3 set to 0x8C34BC1C
jmp @r1
mov.w @r3,r4

loc_8c1B601C:
rts
nop
;-------------------------------------------------------------------------------
#data 0x00FF012C

#align4
loc_8c1B6024:
#data 0x8C34BC14

#align4
loc_8c1B6028:
#data bank1a.loc_8c1a0D48

loc_8c1B602C:
#data bank1a.loc_8c1aFE8A

loc_8c1B6030:
#data bank1a.loc_8c1aECDC
#data 0x8C34BC72
#data 0x8C34AF53
#data 0x8C34B037

#align4
loc_8c1B6040:
#data 0x8C34BC1C

#align4
loc_8c1B6044:
#data bank1a.loc_8c1a0D92

loc_8c1B6048:
#data 0x4F222FE6
#data 0x7FFCD324
#data 0x0009430B
#data 0x600E2F00
#data 0x89022008
#data 0x420BD221
#data 0xE400

loc_8c1B6062:
#data 0xD321
#data 0x23E0EE00
#data 0x22E0D220
#data 0x21E1D120
#data 0x23E1D320
#data 0x9631D420
#data 0x420BD220
#data 0xD32165E3
#data 0x6030D41F
#data 0x8800600C
#data 0x8801890B
#data 0x88028909
#data 0x88088907
#data 0x88098910
#data 0x880C890E
#data 0xA0108908
#data 0x0009

loc_8c1B60A2:
#data 0x60E3
#data 0xD2180009
#data 0x8142420B
#data 0x0009A009

#align4
loc_8c1B60B0:
#data 0xE208D116
#data 0x2120A005

#align4
loc_8c1B60B8:
#data 0x000960E3
#data 0x420BD214
#data 0x8142

loc_8c1B60C2:
#data 0x62F0
#data 0x89052228
#data 0xD3067F04
#data 0xD4114F26
#data 0x6EF6432B

#align4
loc_8c1B60D4:
#data 0x4F267F04
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x00000920

#align4
loc_8c1B60E0:
#data bank1a.loc_8c1a00C4

loc_8c1B60E4:
#data bank1a.loc_8c1a00CA
#data 0x8C34BC78
#data 0x8C34BC7A
#data 0x8C34CECE
#data 0x8C34CED0
#data 0x8C34BC8E

#align4
loc_8c1B60FC:
#data bank12.loc_8c129728
#data 0x8C34BC84
#data 0x8C34BB40

#align4
loc_8c1B6108:
#data bank1c.loc_8c1c0A60
#data 0x8C34BB78

#align4
loc_8c1B6110:
#data bank1c.loc_8c1c134C

loc_8c1B6114:
#data bank19.loc_8c19F0BA

loc_8c1B6118:
#data 0xD3244F22
#data 0x430B7FFC
#data 0x2F000009
#data 0x2008600E
#data 0xD2218902
#data 0xE400420B

#align4
loc_8c1B6130:
#data 0xE400D320
#data 0xD2202340
#data 0xD1202240
#data 0xD3202141
#data 0xD2212341
#data 0xD41F9631
#data 0xE500420B
#data 0xD51FD320
#data 0x600C6030
#data 0x8D0C8800
#data 0x8801E404
#data 0x88028909
#data 0x88088907
#data 0x88098910
#data 0x880C890E
#data 0xA0108908
#data 0x0009

loc_8c1B6172:
#data 0x6043
#data 0xD2170009
#data 0x8152420B
#data 0x0009A009

#align4
loc_8c1B6180:
#data 0xE208D115
#data 0x2120A005

#align4
loc_8c1B6188:
#data 0x00096043
#data 0x420BD213
#data 0x8152

loc_8c1B6192:
#data 0x62F0
#data 0x89042228
#data 0x7F04D305
#data 0x432BD410
#data 0x4F26

loc_8c1B61A2:
#data 0x7F04
#data 0x000B4F26
#data 0x09200009

#align4
loc_8c1B61AC:
#data bank1a.loc_8c1a00C4

loc_8c1B61B0:
#data bank1a.loc_8c1a00CA
#data 0x8C34BC79
#data 0x8C34BC7B
#data 0x8C34CED2
#data 0x8C34CED4
#data 0x8C34C5AE

#align4
loc_8c1B61C8:
#data bank12.loc_8c129728
#data 0x8C34BC7C
#data 0x8C34BB40

#align4
loc_8c1B61D4:
#data bank1c.loc_8c1c0A24
#data 0x8C34BB67

#align4
loc_8c1B61DC:
#data bank1c.loc_8c1c1368

loc_8c1B61E0:
#data bank19.loc_8c19F0BA

loc_8c1B61E4:
#data 0x2FD62FE6
#data 0x4F22D339
#data 0x600C6030
#data 0x7FFC881A
#data 0xEE408D0A
#data 0x8907881B
#data 0x6121D235
#data 0x31E7611D
#data 0xD1348B02
#data 0xE404410B

#align4
loc_8c1B620C:
#data 0xE400D533
#data 0x6D43E107
#data 0x2F526753
#data 0x9658

loc_8c1B621A:
#data 0x8571
#data 0x30E7600D
#data 0x7D018F04
#data 0x60432540
#data 0x81510009

#align4
loc_8c1B622C:
#data 0x331763DC
#data 0x8FF2356C
#data 0x7F04376C
#data 0x6DF64F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------

loc_8c1B6240:
sts.l pr,@-r15
bsr loc_8c1B6EA4
nop
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c1B624C:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov.l r4,@(0x04,r15)
mov.l r5,@r15
mov.l @(loc_8c1B62D0,pc),r3 ; r3 set to 0x8C34BB40
mov.b @r3,r0
extu.b r0,r0
cmp/eq 0x00,r0
bt/s loc_8c1B627E
mov 0x01,r12 ; r12 set to 0x01
cmp/eq 0x01,r0
bt loc_8c1B627E
cmp/eq 0x02,r0
bt loc_8c1B627E
cmp/eq 0x12,r0
bt loc_8c1B627E
bra loc_8c1B628E
nop

loc_8c1B627E:
#data 0xD118
#data 0x622C6210
#data 0x890232C7
#data 0x420BD216
#data 0x0009


loc_8c1B628E:
mov.l @(loc_8c1B62EC,pc),r14 ; r14 set to 0x8C34BC78
mov 0x00,r9 ; r9 set to 0x00
mov.w @(loc_8c1B62CC,pc),r3 ; r3 set to 0x124
mov 0x02,r10 ; r10 set to 0x02
mov.b @r14,r0
mov.l @(loc_8c1B62E8,pc),r13 ; r13 set to 0x8C34BC8E
extu.b r0,r0
muls.w r3,r0
sts macl,r0
exts.w r0,r0
mov.b @(r0,r13),r0
extu.b r0,r0
tst 0x04,r0
bf/s loc_8c1B633E
mov 0x03,r11 ; r11 set to 0x03
mov.l @(loc_8c1B62F0,pc),r8 ; r8 set to 0x8C1B3BE8
bra loc_8c1B6328
nop

loc_8c1B62B2:
#data 0x64E0
#data 0x644C930A
#data 0x041A243F
#data 0x34DC644F
#data 0x044D480B
#data 0x66C365A3
#data 0xE400A022

loc_8c1B62CC:
#data 0x0124
#data 0x0000

#align4
loc_8c1B62D0:
#data 0x8C34BB40
#data 0x8C34BB68

#align4
loc_8c1B62D8:
#data bank1c.loc_8c1c1634
#data 0x8C34C5AE
#data 0x8C34BB41

#align4
loc_8c1B62E4:
#data bank1c.loc_8c1c0CFA

loc_8c1B62E8:
#data 0x8C34BC8E

#align4
loc_8c1B62EC:
#data 0x8C34BC78

#align4
loc_8c1B62F0:
#data loc_8c1B3BE8

loc_8c1B62F4:
#data 0x760160E0
#data 0x600C937A
#data 0x203F9279
#data 0x600F001A
#data 0x302C30DC
#data 0x7502035D
#data 0x74020435

#align4
loc_8c1B6310:
#data 0x32B7626C
#data 0x62E08BEE
#data 0x622C936A
#data 0x223F906A
#data 0x622F021A
#data 0x029532DC

#align4
loc_8c1B6328:
#data 0x926163E0
#data 0x9060633C
#data 0x031A232F
#data 0x33DC633F
#data 0x2118013D
#data 0x8BB9

loc_8c1B633E:
#data 0x62F2
#data 0x2291B5AA
#data 0x2008600D
#data 0x62E08920
#data 0x622C9150
#data 0x221F53F1
#data 0x622F021A
#data 0x602332DC
#data 0x70040009
#data 0x62E02302
#data 0x622C63F2
#data 0x021A221F
#data 0x32DC622F
#data 0x23018521
#data 0x923B63E0
#data 0x232F633C
#data 0x633F031A
#data 0x6E3033DC
#data 0x6DECE30B
#data 0x8B0123D8

#align4
loc_8c1B638C:
#data 0xE000A026

#align4
loc_8c1B6390:
#data 0x6030D319
#data 0x881A600C
#data 0x60F28906
#data 0x2091B042
#data 0x6341D416
#data 0x24317301

#align4
loc_8c1B63A8:
#data 0x22C862D3
#data 0xA0138901
#data 0x6EC3

loc_8c1B63B2:
#data 0x63D3
#data 0x890123A8
#data 0x6EA3A00E

#align4
loc_8c1B63BC:
#data 0x22D8E208
#data 0xA0098901
#data 0x6EB3

loc_8c1B63C6:
#data 0xE310
#data 0x890123D8
#data 0xEE04A004

#align4
loc_8c1B63D0:
#data 0x2D28E220
#data 0xEE058900

#align4
loc_8c1B63D8:
#data 0x000960E3

#align4
loc_8c1B63DC:
#data 0x4F267F08
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x011C0124
#data 0x00000122
#data 0x8C34BB40
#data 0x8C34CEDE


loc_8c1B6400:
mov.l @(loc_8c1B649C,pc),r3 ; r3 set to 0x8C34BB40
mov.b @r3,r4
extu.b r4,r0
cmp/eq 0x08,r0
bt/s loc_8c1B6418
mov r0,r4
mov r4,r0
nop
cmp/eq 0x09,r0
bt loc_8c1B6418
rts
mov 0x00,r0
;-------------------------------------------------------------------------------

loc_8c1B6418:
mov.l @(loc_8c1B64A0,pc),r5 ; r5 set to 0x8C34CEDE
mov 0x00,r3 ; r3 set to 0x00
mov.w @r5,r0
mov.w r3,@r5 ; r5 ??
rts
nop
;-------------------------------------------------------------------------------

#align4
loc_8c1B6424:
#data 0xB5374F22
#data 0x600D0009
#data 0x891B2008
#data 0xE500D41D
#data 0x63409231
#data 0x633CD61A
#data 0x031A232F
#data 0x336C633F
#data 0x63402350
#data 0x232F633C
#data 0x633F031A
#data 0x6053336C
#data 0x81310009
#data 0x70016040
#data 0x2400C907
#data 0x6341D412
#data 0x24317301

#align4
loc_8c1B6468:
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1B646E:
#data 0x2FE6
#data 0x2FD66E53
#data 0x6C432FC6
#data 0x2FA62FB6
#data 0x2F966A63
#data 0x2F8669CC
#data 0x4F222998
#data 0x8D04DB09
#data 0x6093ED00
#data 0x881B0009
#data 0x8B0E

loc_8c1B6496:
#data 0xA00E
#data 0x01242B70

#align4
loc_8c1B649C:
#data 0x8C34BB40

#align4
loc_8c1B64A0:
#data 0x8C34CEDE
#data 0x8C34BC8E
#data 0x8C34BC78
#data 0x8C34CED0
#data 0x8C34BB64

loc_8c1B64B4:
#data 0x2BD0

loc_8c1B64B6:
#data 0xE028
#data 0xD33CD13D
#data 0x410B02FC
#data 0xD33C2320
#data 0x880060CC
#data 0x23D0E404
#data 0xD23DD83C
#data 0xD63AD739
#data 0x22C08D1E
#data 0x891B8801
#data 0x89198802
#data 0x8B018803
#data 0x0009A086

#align4
loc_8c1B64E8:
#data 0x8B018807
#data 0x0009A082

#align4
loc_8c1B64F0:
#data 0x89338808
#data 0x89318809
#data 0x8948880C
#data 0x89098812
#data 0x8977881A
#data 0x8975881B
#data 0x8927881D
#data 0x89018865
#data 0x0009A06C

#align4
loc_8c1B6514:
#data 0xD12CE001
#data 0x330763EC
#data 0x21E08D10
#data 0x420BD22A
#data 0xD32A0009
#data 0x67B065E3
#data 0x430B66A3
#data 0xD22864C3
#data 0xE408420B
#data 0x66E3E500
#data 0xE401A030

#align4
loc_8c1B6540:
#data 0x000960D3
#data 0x60438162
#data 0x81720009
#data 0xD32065E3
#data 0x67B066A3
#data 0x64C3430B
#data 0x0009A013

#align4
loc_8c1B655C:
#data 0xD11ED51F
#data 0x00096093
#data 0x8F038808
#data 0xE00221D1
#data 0x2500A001

loc_8c1B6570:
#data 0x2540

loc_8c1B6572:
#data 0x6043
#data 0x81720009
#data 0x000960D3
#data 0x430BD318
#data 0x8162

loc_8c1B6582:
#data 0xE500
#data 0x480B66E3
#data 0xA0336453
#data 0x0009

loc_8c1B658E:
#data 0xD315
#data 0xE400430B
#data 0x420BD214
#data 0xE40364E3
#data 0xE50066E3

#align4
loc_8c1B65A0:
#data 0x0009480B
#data 0xE301D203
#data 0x2230A024
#data 0x8C34BC8C

#align4
loc_8c1B65B0:
#data bank19.loc_8c19ED64
#data 0x8C34CEE1
#data 0x8C34BC7C
#data 0x8C34BC84

#align4
loc_8c1B65C0:
#data bank19.loc_8c19E878
#data 0x8C34BB40
#data 0x8C34BB41

#align4
loc_8c1B65CC:
#data bank19.loc_8c19D2A0

loc_8c1B65D0:
#data bank1c.loc_8c1c0A7C

loc_8c1B65D4:
#data bank1c.loc_8c1c1634
#data 0x8C34CEDE
#data 0x8C34BC8D

#align4
loc_8c1B65E0:
#data bank1c.loc_8c1c1384

loc_8c1B65E4:
#data bank19.loc_8c19D26E

loc_8c1B65E8:
#data bank1c.loc_8c1c13D0

loc_8c1B65EC:
#data 0x947AD340
#data 0x0009430B

#align4
loc_8c1B65F4:
#data 0xD33FE028
#data 0xD23F23A0
#data 0x01FC22E0
#data 0x2010D03E
#data 0xD13EE020
#data 0xE02403FC
#data 0x03FC2130
#data 0xD03C4F26
#data 0x68F62030
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1B6626:
sts.l pr,@-r15
add 0xFC,r15
bsr loc_8c1B6EA4
mov.l r4,@r15
mov 0x07,r2 ; r2 set to 0x07
extu.w r0,r0
cmp/gt r2,r0
bt loc_8c1B6656
mov.l @(loc_8c1B6708,pc),r0 ; r0 set to 0x8C34BC7B
mov.w @(loc_8c1B66E8,pc),r2 ; r2 set to 0x124
mov.b @r0,r3
mov.l @r15,r1
add 0x04,r15
extu.b r3,r3
muls.w r2,r3
mov.l @(loc_8c1B670C,pc),r2 ; r2 set to 0x8C34C5B2
lds.l @r15+,pr
sts macl,r3
exts.w r3,r3
add r2,r3
mov.l r3,@r1
mov.w @(loc_8c1B66EA,pc),r0 ; r0 set to 0x118
rts
nop
;-------------------------------------------------------------------------------

loc_8c1B6656:
mov 0x00,r0 ; r0 set to 0x00
add 0x04,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c1B6660:
mov.l r14,@-r15
extu.b r5,r5
mov.l r13,@-r15
tst r5,r5
mov.l r12,@-r15
mov r4,r12
sts.l pr,@-r15
bf/s loc_8c1B6680
mov 0x00,r14 ; r14 set to 0x00
mov.l @(loc_8c1B6714,pc),r2 ; r2 set to 0x8C1B3EEC
mov.l @(loc_8c1B6710,pc),r4 ; r4 set to 0x8C34BB74
jsr @r2
extu.w r12,r5
mov.l @(loc_8c1B6718,pc),r3 ; r3 set to 0x8C34BB72
bra loc_8c1B66C8
mov.b r14,@r3

#align4
loc_8c1B6680:
#data 0x65E364E3
#data 0x67E3

loc_8c1B6686:
#data 0xDE20
#data 0x66E0932E
#data 0x666CDD23
#data 0x263F922C
#data 0x666F061A
#data 0x326C36DC
#data 0x6121324C
#data 0x8B132118
#data 0x306C9022
#data 0xB3FB350C
#data 0x600D25C1
#data 0x8B098808
#data 0x921763E0
#data 0x232F633C
#data 0x633F031A
#data 0x603033DC
#data 0x2300CB04


loc_8c1B66C8:
bra loc_8c1B66DC
mov 0x01,r0

#align4
loc_8c1B66CC:
#data 0x637C7701
#data 0x3367E603
#data 0x8FD67502
#data 0xE0007402


loc_8c1B66DC:
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x0C1C

loc_8c1B66E8:
#data 0x0124

loc_8c1B66EA:
#data 0x0118
#data 0x0000011C

#align4
loc_8c1B66F0:
#data bank1a.loc_8c1a003E
#data 0x8C34BB42
#data 0x8C34BB41
#data 0x8C34BB46
#data 0x8C34BB44
#data 0x8C34BB45

#align4
loc_8c1B6708:
#data 0x8C34BC7B

#align4
loc_8c1B670C:
#data 0x8C34C5B2

#align4
loc_8c1B6710:
#data 0x8C34BB74

#align4
loc_8c1B6714:
#data loc_8c1B3EEC

loc_8c1B6718:
#data 0x8C34BB72
#data 0x8C34C5AE


loc_8c1B6720:
sts.l pr,@-r15
bsr loc_8c1B6EA4
nop
extu.w r0,r0
tst r0,r0
bf loc_8c1B6748
mov.l @(loc_8c1B680C,pc),r2 ; r2 set to 0x8C19EFA8
jsr @r2
nop
mov.l @(loc_8c1B6810,pc),r3 ; r3 set to 0x8C34CED8
mov.l @(loc_8c1B6814,pc),r2 ; r2 set to 0x8C1B3F0C
mov.l @r3,r4
jsr @r2
add r0,r4
exts.b r0,r0
tst r0,r0
bt loc_8c1B6748
lds.l @r15+,pr
rts
mov 0x01,r0
;-------------------------------------------------------------------------------

loc_8c1B6748:
mov 0x00,r0 ; r0 set to 0x00
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c1B6750:
sts.l pr,@-r15
extu.w r4,r3
tst r3,r3
bt loc_8c1B67A2
mov.l @(loc_8c1B6818,pc),r5 ; r5 set to 0x8C34BC7B
mov.w @(loc_8c1B680A,pc),r2 ; r2 set to 0x124
mov.b @r5,r3
mov.l @(loc_8c1B681C,pc),r0 ; r0 set to 0x8C34C5B0
extu.b r3,r3
muls.w r2,r3
sts macl,r3
exts.w r3,r3
mov.w r4,@(r0,r3)
mov.b @r5,r0 ; r0 ??
add 0x01,r0
and 0x07,r0
mov.b r0,@r5 ; r5 ??? bc r0 is ???
mov.l @(loc_8c1B6820,pc),r4 ; r4 set to 0x8C34CED2
mov.w @r4,r3
add 0x01,r3
mov.w r3,@r4 ; r4 ??? bc r3 is ???
mov.l @(loc_8c1B6824,pc),r1 ; r1 set to 0x8C34BB40
mov.b @r1,r0
extu.b r0,r0
cmp/eq 0x1A,r0
bt loc_8c1B67A2
cmp/eq 0x1B,r0
bt loc_8c1B67A2
mov.l @(loc_8c1B6828,pc),r3 ; r3 set to 0x8C34CEE1
mov.b @r3,r2 ; r2 ??
tst r2,r2
bt loc_8c1B67A2
mov.l @(loc_8c1B682C,pc),r2 ; r2 set to 0x8C19EEC4
jsr @r2
nop
exts.b r0,r0
tst r0,r0
bf loc_8c1B67A2
mov.l @(loc_8c1B6830,pc),r2 ; r2 set to 0x8C19EE78
jmp @r2
lds.l @r15+,pr

loc_8c1B67A2:
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------
#data 0x4F22D31E
#data 0x600C6030
#data 0x7FFC880C
#data 0xD31F8B19
#data 0x0009430B
#data 0x600E2F00
#data 0x89022008
#data 0x420BD21C
#data 0xB365E400
#data 0xD21B0009
#data 0xD11B2200
#data 0x6311D01B
#data 0x62F02031
#data 0x89042228
#data 0x7F04D315
#data 0x432BD418
#data 0x7F044F26
#data 0x000B4F26
#data 0xD30C0009
#data 0x600C6030
#data 0x8B03880C
#data 0x6120D20F
#data 0x89234111
#data 0x000BE300
#data 0x2531
;-------------------------------------------------------------------------------

loc_8c1B680A:
#data 0x0124

#align4
loc_8c1B680C:
#data bank19.loc_8c19EFA8

loc_8c1B6810:
#data 0x8C34CED8

#align4
loc_8c1B6814:
#data loc_8c1B3F0C

loc_8c1B6818:
#data 0x8C34BC7B

#align4
loc_8c1B681C:
#data 0x8C34C5B0

#align4
loc_8c1B6820:
#data 0x8C34CED2

#align4
loc_8c1B6824:
#data 0x8C34BB40

#align4
loc_8c1B6828:
#data 0x8C34CEE1

#align4
loc_8c1B682C:
#data bank19.loc_8c19EEC4

loc_8c1B6830:
#data bank19.loc_8c19EE78

loc_8c1B6834:
#data bank1a.loc_8c1a00C4

loc_8c1B6838:
#data bank1a.loc_8c1a00CA
#data 0x8C34BB4C
#data 0x8C34BB7C
#data 0x8C34BB4E

#align4
loc_8c1B6848:
#data bank19.loc_8c19F0BA
#data 0x9381D644
#data 0xD7426260
#data 0x223F622C
#data 0x622F021A
#data 0x6123327C
#data 0x24127104
#data 0x6240D43F
#data 0x242072FF
#data 0x622E7201
#data 0x8B012228
#data 0x8541A007
#data 0x611C6160
#data 0x011A213F
#data 0x317C611F
#data 0x25018511
#data 0x0009000B
;-------------------------------------------------------------------------------
#data 0x0009000B
;-------------------------------------------------------------------------------
#data 0x0009000B
;-------------------------------------------------------------------------------
#data 0x0009000B
;-------------------------------------------------------------------------------
#data 0x0009000B
;-------------------------------------------------------------------------------

loc_8c1B689C:
mov.l @(loc_8c1B6968,pc),r3 ; r3 set to 0x8C34CEDC
rts
mov.b r4,@r3
;-------------------------------------------------------------------------------

loc_8c1B68A2:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l @(loc_8c1B696C,pc),r2 ; r2 set to 0x8C34BB40
sts.l pr,@-r15
mov.b @r2,r0
extu.b r0,r0
cmp/eq 0x16,r0
bf loc_8c1B68BC
bra loc_8c1B69C6
nop

loc_8c1B68BC:
cmp/eq 0x17,r0
bf loc_8c1B68C4
bra loc_8c1B69C6
nop

loc_8c1B68C4:
cmp/eq 0x18,r0
bf loc_8c1B68CC
bra loc_8c1B69C6
nop

loc_8c1B68CC:
mov.l @(loc_8c1B6974,pc),r13 ; r13 set to 0x8C34BC79
mov 0x01,r10 ; r10 set to 0x01
mov.w @(loc_8c1B6954,pc),r3 ; r3 set to 0x124
mov.b @r13,r4
mov.l @(loc_8c1B6978,pc),r14 ; r14 set to 0x8C34C5AE
extu.b r4,r4
mov.l @(loc_8c1B6970,pc),r11 ; r11 set to 0x8C34BB71
muls.w r3,r4
sts macl,r4
exts.w r4,r4
add r14,r4
mov.b @r4,r0
extu.b r0,r0
or 0x04,r0
tst r0,r0
bf/s loc_8c1B6988
mov 0x00,r12 ; r12 set to 0x00
mov.w @(loc_8c1B6956,pc),r0 ; r0 set to 0x11C
mov.w @(r0,r4),r1
tst r1,r1
bt loc_8c1B69C6
mov 0x02,r2 ; r2 set to 0x02
mov.b r2,@r11 ; r11 ??
mov.l @(loc_8c1B697C,pc),r1 ; r1 set to 0x8C34BB72
mov.b r10,@r1 ; r1 ??
mov.b @r13,r5
mov.w @(loc_8c1B6954,pc),r3 ; r3 set to 0x124
extu.b r5,r5
mov.l @(loc_8c1B6980,pc),r4 ; r4 set to 0x8C34BB74
muls.w r3,r5
mov.l @(loc_8c1B6984,pc),r2 ; r2 set to 0x8C1B3EEC
sts macl,r5
exts.w r5,r5
add r14,r5
mov.w @(r0,r5),r5
jsr @r2
extu.w r5,r5
mov 0x03,r11 ; r11 set to 0x03
mov r12,r4 ; r4 set to 0x00
mov r10,r6 ; r6 set to 0x01
mov 0x02,r5 ; r5 set to 0x02

loc_8c1B691E:
mov.b @r13,r0 ; r0 ??
add 0x01,r6 ; r6 set to 0x02
mov.w @(loc_8c1B6954,pc),r3 ; r3 set to 0x124, r3 set to 0x124
extu.b r6,r1 ; r1 set to 0x02
extu.b r0,r0
mov.w @(loc_8c1B6956,pc),r2 ; r2 set to 0x11C, r2 set to 0x11C
muls.w r3,r0
cmp/gt r11,r1
sts macl,r0
exts.w r0,r0
add r14,r0
add r2,r0
mov.w @(r0,r5),r3 ; r3 ??, r3 ??? bc r5 is ???
add 0x02,r5 ; r5 set to 0x04
mov.w r3,@(r0,r4)  ; r4 ??? bc r3 is ???
bf/s loc_8c1B691E
add 0x02,r4
mov.b @r13,r2 ; r2 ??? bc r13 is ???, r2 ??
mov.w @(loc_8c1B6954,pc),r3 ; r3 set to 0x124, r3 set to 0x124
extu.b r2,r2
mov.w @(loc_8c1B6958,pc),r0 ; r0 set to 0x122, r0 set to 0x122
muls.w r3,r2
sts macl,r2
exts.w r2,r2
add r14,r2
bra loc_8c1B69C6
mov.w r12,@(r0,r2)

loc_8c1B6954:
#data 0x0124

loc_8c1B6956:
#data 0x011C

loc_8c1B6958:
#data 0x0122
#data 0x0000
#data 0x8C34BC8E
#data 0x8C34BC78
#data 0x8C34BB4C

#align4
loc_8c1B6968:
#data 0x8C34CEDC

#align4
loc_8c1B696C:
#data 0x8C34BB40

#align4
loc_8c1B6970:
#data 0x8C34BB71

#align4
loc_8c1B6974:
#data 0x8C34BC79

#align4
loc_8c1B6978:
#data 0x8C34C5AE

#align4
loc_8c1B697C:
#data 0x8C34BB72

#align4
loc_8c1B6980:
#data 0x8C34BB74

#align4
loc_8c1B6984:
#data loc_8c1B3EEC


loc_8c1B6988:
bsr loc_8c1B6EA4
nop
extu.w r0,r0
tst r0,r0
bt loc_8c1B69C0
mov.b r10,@r11
mov.b @r13,r2
mov.w @(loc_8c1B6A2A,pc),r3 ; r3 set to 0x124
extu.b r2,r2
muls.w r3,r2
sts macl,r2
exts.w r2,r2
add r14,r2
mov.b r12,@r2
mov.b @r13,r4
mov.l @(loc_8c1B6A2C,pc),r1 ; r1 set to 0x8C34BB6C
extu.b r4,r4
muls.w r3,r4
sts macl,r4
exts.w r4,r4
add r14,r4
mov r4,r2
add 0x04,r2
mov.l r2,@r1 ; r1 ??? bc r2 is ???
mov.l @(loc_8c1B6A30,pc),r2 ; r2 set to 0x8C34BB68
mov.w @(0x02,r4),r0
bra loc_8c1B69C6
mov.w r0,@r2

loc_8c1B69C0:
mov.b r12,@r11
mov.l @(loc_8c1B6A30,pc),r3 ; r3 set to 0x8C34BB68
mov.w r12,@r3 ; r3 ??? bc r12 is ???

loc_8c1B69C6:
lds.l @r15+,pr
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1B69D4:
mov.l @(loc_8c1B6A34,pc),r2 ; r2 set to 0x8C34BB40
mov.b @r2,r0
extu.b r0,r0
cmp/eq 0x16,r0
bt loc_8c1B6A26
cmp/eq 0x17,r0
bt loc_8c1B6A26
cmp/eq 0x18,r0
bt loc_8c1B6A26
mov.l @(loc_8c1B6A3C,pc),r4 ; r4 set to 0x8C34BC79
mov 0x00,r5 ; r5 set to 0x00
mov.w @(loc_8c1B6A2A,pc),r3 ; r3 set to 0x124
mov.b @r4,r2 ; r2 ??
mov.l @(loc_8c1B6A38,pc),r6 ; r6 set to 0x8C34C5AE
extu.b r2,r2
muls.w r3,r2
sts macl,r2
exts.w r2,r2
add r6,r2
mov.b r5,@r2
mov.b @r4,r2
extu.b r2,r2
muls.w r3,r2
sts macl,r2
exts.w r2,r2
add r6,r2
mov r5,r0 ; r0 set to 0x00
nop
mov.w r0,@(0x02,r2)
mov.b @r4,r0 ; r0 ??
add 0x01,r0
and 0x07,r0
mov.b r0,@r4 ; r4 ??? bc r0 is ???
mov.l @(loc_8c1B6A40,pc),r4 ; r4 set to 0x8C34CED4
mov.w @r4,r2
add 0x01,r2
mov.w r2,@r4 ; r4 ??? bc r2 is ???
mov.l @(loc_8c1B6A48,pc),r1 ; r1 set to 0x8C1B3EEC
mov.l @(loc_8c1B6A44,pc),r4 ; r4 set to 0x8C34CED8
jmp @r1
nop

loc_8c1B6A26:
rts
nop
;-------------------------------------------------------------------------------

loc_8c1B6A2A:
#data 0x0124

#align4
loc_8c1B6A2C:
#data 0x8C34BB6C

#align4
loc_8c1B6A30:
#data 0x8C34BB68

#align4
loc_8c1B6A34:
#data 0x8C34BB40

#align4
loc_8c1B6A38:
#data 0x8C34C5AE

#align4
loc_8c1B6A3C:
#data 0x8C34BC79

#align4
loc_8c1B6A40:
#data 0x8C34CED4

#align4
loc_8c1B6A44:
#data 0x8C34CED8

#align4
loc_8c1B6A48:
#data loc_8c1B3EEC

loc_8c1B6A4C:
#data 0xD52D2FE6
#data 0x60504F22
#data 0x8816600C
#data 0x88178950
#data 0x8818894E
#data 0xD229894C
#data 0x22E0EE00
#data 0x6450D328
#data 0x88016030
#data 0x644C8F08
#data 0x00096043
#data 0x893F8800
#data 0x893D8801
#data 0x893B8802

#align4
loc_8c1B6A84:
#data 0x00096043
#data 0x8B168812
#data 0x0009B20A
#data 0x600DE208
#data 0x892E3023
#data 0x21E1D11D
#data 0x9230D31D
#data 0xD11D6430
#data 0xD01D644C
#data 0x041A242F
#data 0x341C644F
#data 0x73046343
#data 0xA0152032
#data 0x0009

loc_8c1B6ABA:
#data 0xB1ED
#data 0xE2080009
#data 0x3023600D
#data 0xD1128917
#data 0xD31521E1
#data 0x64309219
#data 0x644CD114
#data 0x242FD011
#data 0x644F041A
#data 0x6343341C
#data 0x20327304

#align4
loc_8c1B6AE4:
#data 0xE3016040
#data 0x2400C904
#data 0x2230D206
#data 0xA003D10D
#data 0x21E0

loc_8c1B6AF6:
#data 0x4F26
#data 0x6EF6A1A2

#align4
loc_8c1B6AFC:
#data 0x000B4F26
#data 0x01246EF6
#data 0x8C34BB40
#data 0x8C34BB91
#data 0x8C34CEDC
#data 0x8C34BB7C
#data 0x8C34BC7B
#data 0x8C34C5AE
#data 0x8C34BB80
#data 0x8C34BC7A
#data 0x8C34BC8E
#data 0x8C34CEE0


loc_8c1B6B2C:
mov.l r14,@-r15
mov.l @(loc_8c1B6C1C,pc),r3 ; r3 set to 0x8C34BB40
sts.l pr,@-r15
mov.b @r3,r4
extu.b r4,r0
cmp/eq 0x16,r0
bt/s loc_8c1B6BC4
mov r0,r4
cmp/eq 0x17,r0
bt loc_8c1B6BC4
cmp/eq 0x18,r0
bt loc_8c1B6BC4
mov.l @(loc_8c1B6C20,pc),r6 ; r6 set to 0x8C34BB7C
mov 0x00,r14 ; r14 set to 0x00
mov r4,r0
nop
cmp/eq 0x12,r0
bf/s loc_8c1B6B78
mov.w @r6,r5
mov.l @(loc_8c1B6C24,pc),r4 ; r4 set to 0x8C34BC7B
mov.w @(loc_8c1B6C18,pc),r3 ; r3 set to 0x124
mov.b @r4,r2
mov.l @(loc_8c1B6C28,pc),r0 ; r0 set to 0x8C34C5B0
extu.b r2,r2
muls.w r3,r2
sts macl,r2
exts.w r2,r2
mov.w r5,@(r0,r2)
mov.w r14,@r6 ; r6 ??
mov.b @r4,r0 ; r0 ??
add 0x01,r0
and 0x07,r0
mov.b r0,@r4 ; r4 ??? bc r0 is ???
mov.l @(loc_8c1B6C2C,pc),r4 ; r4 set to 0x8C34CED2
mov.w @r4,r2
add 0x01,r2
bra loc_8c1B6B9C
mov.w r2,@r4

#align4
loc_8c1B6B78:
#data 0x924DD42D
#data 0xD02D6340
#data 0x232F633C
#data 0x633F031A
#data 0x26E10355
#data 0x70016040
#data 0x2400C907
#data 0x6341D428
#data 0x24317301

#align4
loc_8c1B6B9C:
#data 0x6210D127
#data 0x890F2228
#data 0x6030D326
#data 0x8801600C
#data 0xB1738B0A
#data 0xE3060009
#data 0x3033600D
#data 0xD1218B04
#data 0x21E0E201
#data 0x2020D020


loc_8c1B6BC4:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1B6BCA:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
mov.l @(loc_8c1B6C1C,pc),r1 ; r1 set to 0x8C34BB40
mov.l @(loc_8c1B6C58,pc),r3 ; r3 set to 0x8C34BB41
mov.b @r1,r0
mov.b @r3,r4
sts.l pr,@-r15
extu.b r0,r0
mov.l @(loc_8c1B6C5C,pc),r2 ; r2 set to 0x8C34BC88
mov.l @(loc_8c1B6C4C,pc),r9 ; r9 set to 0x8C19EF9A
cmp/eq 0x00,r0
mov.l @(loc_8c1B6C48,pc),r8 ; r8 set to 0x8C19EF5E
extu.b r4,r4
mov.w @(loc_8c1B6C1A,pc),r13 ; r13 set to 0x1F4
mov.l @(loc_8c1B6C54,pc),r11 ; r11 set to 0x8C34BC7C
mov.l @(loc_8c1B6C50,pc),r10 ; r10 set to 0x8C1A003E
bt/s loc_8c1B6C60
mov.w @r2,r5
cmp/eq 0x08,r0
bf loc_8c1B6C00
bra loc_8c1B6CFA
nop

loc_8c1B6C00:
cmp/eq 0x09,r0
bt loc_8c1B6CFA
cmp/eq 0x0C,r0
bf loc_8c1B6C0C
bra loc_8c1B6E0C
nop

loc_8c1B6C0C:
cmp/eq 0x12,r0
bt loc_8c1B6C60
cmp/eq 0x1D,r0
bt loc_8c1B6CFA
bra loc_8c1B6E26
nop

loc_8c1B6C18:
#data 0x0124

loc_8c1B6C1A:
#data 0x01F4

#align4
loc_8c1B6C1C:
#data 0x8C34BB40

#align4
loc_8c1B6C20:
#data 0x8C34BB7C

#align4
loc_8c1B6C24:
#data 0x8C34BC7B

#align4
loc_8c1B6C28:
#data 0x8C34C5B0

#align4
loc_8c1B6C2C:
#data 0x8C34CED2
#data 0x8C34BC7A
#data 0x8C34BC90
#data 0x8C34CECE
#data 0x8C34BB64
#data 0x8C34BB85
#data 0x8C34BB86

#align4
loc_8c1B6C48:
#data bank19.loc_8c19EF5E

loc_8c1B6C4C:
#data bank19.loc_8c19EF9A

loc_8c1B6C50:
#data bank1a.loc_8c1a003E

loc_8c1B6C54:
#data 0x8C34BC7C

#align4
loc_8c1B6C58:
#data 0x8C34BB41

#align4
loc_8c1B6C5C:
#data 0x8C34BC88


loc_8c1B6C60:
mov 0x01,r3 ; r3 set to 0x01
cmp/gt r3,r4
bt loc_8c1B6C70
mov.l @(loc_8c1B6D3C,pc),r1 ; r1 set to 0x8C1C0C14
jsr @r1
nop
bra loc_8c1B6E12
nop

loc_8c1B6C70:
mov.w @(loc_8c1B6D34,pc),r12 ; r12 set to 0xC30
bra loc_8c1B6C92
mov r5,r14

loc_8c1B6C76:
extu.w r13,r3
tst r3,r3
bt/s loc_8c1B6CB6
add 0xFF,r13
add 0x01,r14
extu.w r14,r0
cmp/eq 0x04,r0
bf loc_8c1B6C92
mov.l @(loc_8c1B6D44,pc),r3 ; r3 set to 0x8C1C074E
mov 0x20,r5 ; r5 set to 0x20
mov.l @(loc_8c1B6D40,pc),r2 ; r2 set to 0x8C34BC84
jsr @r3
mov.l @r2,r4
mov 0x00,r14 ; r14 set to 0x00

loc_8c1B6C92:
mov.l @(loc_8c1B6D48,pc),r2 ; r2 set to 0x8C19EF30, r2 set to 0x8C19EF30
extu.w r14,r4 ; r4 set to 0x00
mov.l @(loc_8c1B6D40,pc),r3 ; r3 set to 0x8C34BC84, r3 set to 0x8C34BC84
jsr @r2
add r3,r4 ; r4 set to 0x8C34BC84
exts.b r0,r0
tst r0,r0
bf loc_8c1B6C76
mov.l @(loc_8c1B6D4C,pc),r2 ; r2 set to 0x8C34BC88, r2 set to 0x8C34BC88
mov.w r14,@r2 ; r2 ??, r2 ??? bc r14 is ???
mov.w @(0x04,r11),r0
mov.w @(loc_8c1B6D36,pc),r12 ; r12 set to 0xC44, r12 set to 0xC44
bra loc_8c1B6CEC
mov r0,r14

loc_8c1B6CAE:
#data 0x62DD
#data 0x8F022228
#data 0x7DFF


loc_8c1B6CB6:
bra loc_8c1B6DD8
mov r12,r4

loc_8c1B6CBA:
#data 0x60ED
#data 0x8B0F8804
#data 0x0009B0F0
#data 0x2008600D
#data 0xD2218905
#data 0xE420420B
#data 0xA0052B02
#data 0xEE00

loc_8c1B6CD6:
#data 0xD21F
#data 0x0009420B
#data 0x0009A092

#align4
loc_8c1B6CE0:
#data 0x64ED63B3
#data 0x343C7E01
#data 0x6440490B


loc_8c1B6CEC:
jsr @r8
nop
exts.b r0,r0
tst r0,r0
bf loc_8c1B6CAE
bra loc_8c1B6E04
nop

loc_8c1B6CFA:
mov.l @(loc_8c1B6D58,pc),r12 ; r12 set to 0x8C1C106C
mov r4,r0
nop
cmp/eq 0x01,r0
bf loc_8c1B6D30
mov.w @(loc_8c1B6D38,pc),r14 ; r14 set to 0xC58
bra loc_8c1B6D1E
nop

loc_8c1B6D0A:
extu.w r13,r3
tst r3,r3
bf/s loc_8c1B6D16
add 0xFF,r13
bra loc_8c1B6DD8
mov r14,r4

loc_8c1B6D16:
mov.l @(loc_8c1B6D40,pc),r3 ; r3 set to 0x8C34BC84
mov 0x08,r5 ; r5 set to 0x08
jsr @r12
mov.l @r3,r4

loc_8c1B6D1E:
mov.l @(loc_8c1B6D48,pc),r2 ; r2 set to 0x8C19EF30, r2 set to 0x8C19EF30
mov.l @(loc_8c1B6D40,pc),r4 ; r4 set to 0x8C34BC84, r4 set to 0x8C34BC84
jsr @r2
nop
exts.b r0,r0
tst r0,r0
bf loc_8c1B6D0A
bra loc_8c1B6D90
nop

loc_8c1B6D30:
bra loc_8c1B6D7C
mov r5,r14

loc_8c1B6D34:
#data 0x0C30

loc_8c1B6D36:
#data 0x0C44

loc_8c1B6D38:
#data 0x0C58
#data 0x0000

#align4
loc_8c1B6D3C:
#data bank1c.loc_8c1c0C14

loc_8c1B6D40:
#data 0x8C34BC84

#align4
loc_8c1B6D44:
#data bank1c.loc_8c1c074E

loc_8c1B6D48:
#data bank19.loc_8c19EF30

loc_8c1B6D4C:
#data 0x8C34BC88

#align4
loc_8c1B6D50:
#data bank1c.loc_8c1c04A8

loc_8c1B6D54:
#data bank19.loc_8c19EFA4

loc_8c1B6D58:
#data bank1c.loc_8c1c106C


loc_8c1B6D5C:
extu.w r13,r2
tst r2,r2
bf/s loc_8c1B6D6A
add 0xFF,r13
mov.w @(loc_8c1B6E54,pc),r4 ; r4 set to 0xC6C
bra loc_8c1B6DD8
nop

loc_8c1B6D6A:
add 0x01,r14
extu.w r14,r0
cmp/eq 0x04,r0
bf loc_8c1B6D7C
mov.l @(loc_8c1B6E5C,pc),r2 ; r2 set to 0x8C34BC84
mov 0x20,r5 ; r5 set to 0x20
jsr @r12
mov.l @r2,r4
mov 0x00,r14 ; r14 set to 0x00

loc_8c1B6D7C:
mov.l @(loc_8c1B6E60,pc),r2 ; r2 set to 0x8C19EF30, r2 set to 0x8C19EF30
extu.w r14,r4 ; r4 set to 0x00
mov.l @(loc_8c1B6E5C,pc),r3 ; r3 set to 0x8C34BC84, r3 set to 0x8C34BC84
jsr @r2
add r3,r4 ; r4 set to 0x8C34BC84
exts.b r0,r0
tst r0,r0
bf loc_8c1B6D5C
mov.l @(loc_8c1B6E64,pc),r2 ; r2 set to 0x8C34BC88, r2 set to 0x8C34BC88
mov.w r14,@r2 ; r2 ??, r2 ??? bc r14 is ???

loc_8c1B6D90:
mov.l @(loc_8c1B6E6C,pc),r3 ; r3 set to 0x8C34BB41, r3 set to 0x8C34BB41, r3 set to 0x8C34BB41
mov.l @(loc_8c1B6E68,pc),r12 ; r12 set to 0x8C1C0EA2, r12 set to 0x8C1C0EA2, r12 set to 0x8C1C0EA2
mov.b @r3,r0
extu.b r0,r0
cmp/eq 0x01,r0
bf loc_8c1B6DC8
mov.w @(loc_8c1B6E56,pc),r14 ; r14 set to 0xC80, r14 set to 0xC80, r14 set to 0xC80
bra loc_8c1B6DBA
nop

loc_8c1B6DA2:
extu.w r13,r3
tst r3,r3
bf/s loc_8c1B6DAE
add 0xFF,r13
bra loc_8c1B6DD8
mov r14,r4

loc_8c1B6DAE:
jsr @r12
mov 0x08,r4 ; r4 set to 0x08
mov.l r0,@r11
mov.b @(0x03,r11),r0
jsr @r9
mov r0,r4 ; r4 ??? bc r0 is ???

loc_8c1B6DBA:
jsr @r8
nop
exts.b r0,r0
tst r0,r0
bf loc_8c1B6DA2
bra loc_8c1B6E26
nop

loc_8c1B6DC8:
mov.w @(0x04,r11),r0
bra loc_8c1B6DFA
mov r0,r14

loc_8c1B6DCE:
#data 0x63DD
#data 0x8F052338
#data 0x943F7DFF


loc_8c1B6DD8:
jsr @r10
nop
bra loc_8c1B6E26
nop

#align4
loc_8c1B6DE0:
#data 0x880460ED
#data 0x4C0B8B03
#data 0xEE00E420
#data 0x2B02

loc_8c1B6DEE:
#data 0x63B3
#data 0x7E0164ED
#data 0x490B343C
#data 0x6440

loc_8c1B6DFA:
#data 0x480B
#data 0x600E0009
#data 0x8BE42008


loc_8c1B6E04:
mov r14,r0
nop
bra loc_8c1B6E26
mov.w r0,@(0x04,r11)

#align4
loc_8c1B6E0C:
#data 0x410BD118
#data 0x0009


loc_8c1B6E12:
lds.l @r15+,pr
mov.l @(loc_8c1B6E74,pc),r3 ; r3 set to 0x8C1C1526
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8c1B6E26:
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
#data 0x0009000B
;-------------------------------------------------------------------------------
#data 0x0009000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B6E40:
#data 0x6340D40D
#data 0x8B012338
#data 0x2430E301

#align4
loc_8c1B6E4C:
#data 0x0009000B
;-------------------------------------------------------------------------------
#data 0x0009000B
;-------------------------------------------------------------------------------

loc_8c1B6E54:
#data 0x0C6C

loc_8c1B6E56:
#data 0x0C80
#data 0x00000C94

#align4
loc_8c1B6E5C:
#data 0x8C34BC84

#align4
loc_8c1B6E60:
#data bank19.loc_8c19EF30

loc_8c1B6E64:
#data 0x8C34BC88

#align4
loc_8c1B6E68:
#data bank1c.loc_8c1c0EA2

loc_8c1B6E6C:
#data 0x8C34BB41

#align4
loc_8c1B6E70:
#data bank1c.loc_8c1c143A

loc_8c1B6E74:
#data bank1c.loc_8c1c1526
#data 0x8C34CEE0

#align4
loc_8c1B6E7C:
#data 0x4F222FE6
#data 0xEE00B00A
#data 0x600DE204
#data 0x89003027
#data 0xEE01

loc_8c1B6E8E:
#data 0x60E3
#data 0x4F260009
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B6E98:
#data 0xD205D106
#data 0x63216011
#data 0x3038000B
;-------------------------------------------------------------------------------

loc_8c1B6EA4:
mov.l @(loc_8c1B6EBC,pc),r1 ; r1 set to 0x8C34CED2
mov.l @(loc_8c1B6EB8,pc),r2 ; r2 set to 0x8C34CED4
mov.w @r1,r0
mov.w @r2,r3
rts
sub r3,r0
;-------------------------------------------------------------------------------
#data 0x8C34CED0
#data 0x8C34CECE

#align4
loc_8c1B6EB8:
#data 0x8C34CED4

#align4
loc_8c1B6EBC:
#data 0x8C34CED2


loc_8c1B6EC0:
mov.l r14,@-r15
mov 0x46,r0 ; r0 set to 0x46
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
mov.l @(loc_8c1B6EF0,pc),r14 ; r14 set to 0x8C347A30
mov.l @(loc_8c1B6EEC,pc),r13 ; r13 set to 0x8C34CEE9
mov.b @(r0,r14),r3
mov.b r3,@r13 ; r13 ??? bc r3 is ???
mov.b @r13,r3
mov.w @(loc_8c1B6EEA,pc),r2 ; r2 set to 0xFF
extu.b r3,r3
cmp/eq r2,r3
bf/s loc_8c1B6EF8
mov 0x00,r12 ; r12 set to 0x00
mov.l @(loc_8c1B6EF4,pc),r1 ; r1 set to 0x8C34BBA1
bsr loc_8c1B6FE0
mov.b r12,@r1 ; r1 ??
mov 0x46,r0 ; r0 set to 0x46
bra loc_8c1B6FC6
mov.b r12,@(r0,r14)

loc_8c1B6EEA:
#data 0x00FF

#align4
loc_8c1B6EEC:
#data 0x8C34CEE9

#align4
loc_8c1B6EF0:
#data 0x8C347A30

#align4
loc_8c1B6EF4:
#data 0x8C34BBA1

#align4
loc_8c1B6EF8:
#data 0xE0450EC4
#data 0x03ECE440
#data 0x2348633C
#data 0x61D08B13
#data 0x2148611C
#data 0xD331890F
#data 0x6230E072
#data 0x321001EC
#data 0xB27A8901
#data 0x04EC

loc_8c1B6F1E:
#data 0xD22E
#data 0x6320E074
#data 0x331001EC
#data 0xB30E8901
#data 0x0009

loc_8c1B6F2E:
#data 0xE045
#data 0x03ECE401
#data 0x2348633C
#data 0x61D08B05
#data 0x2148611C
#data 0xB13C8901
#data 0x0009

loc_8c1B6F46:
#data 0xE045
#data 0x03ECE402
#data 0x2348633C
#data 0x61D08B05
#data 0x2148611C
#data 0xB1D08901
#data 0x0009

loc_8c1B6F5E:
#data 0xE045
#data 0x03ECE408
#data 0x2348633C
#data 0x61D08B06
#data 0x2148611C
#data 0xD21A8902
#data 0x0009420B

#align4
loc_8c1B6F78:
#data 0xE410E045
#data 0x633C03EC
#data 0x8B052348
#data 0x611C61D0
#data 0x89012148
#data 0x0009B0C0

#align4
loc_8c1B6F90:
#data 0xE420E045
#data 0x633C03EC
#data 0x8B052348
#data 0x611C61D0
#data 0x89012148
#data 0x0009B1F4

#align4
loc_8c1B6FA8:
#data 0xE0459412
#data 0x633C03EC
#data 0x8B082348
#data 0x611C61D0
#data 0x89042148
#data 0x6CF64F26
#data 0xA2376DF6
#data 0x6EF6


loc_8c1B6FC6:
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x00000080
#data 0x8C34CEEA
#data 0x8C34CEEC

#align4
loc_8c1B6FDC:
#data bank1a.loc_8c1a0C42

loc_8c1B6FE0:
#data 0xE4002FE6
#data 0xE03C2FC6
#data 0xD3382FB6
#data 0x92672340
#data 0x0525D537
#data 0x0544E03E
#data 0x0544E045
#data 0x0544E048
#data 0xE04B975F
#data 0x965D0574
#data 0x0564E04A
#data 0x0574E04D
#data 0x0564E04C
#data 0x0574E04F
#data 0x0564E04E
#data 0x0544E050
#data 0xE710E075
#data 0xE0760574
#data 0x0524E202
#data 0x6643

loc_8c1B702E:
#data 0x6253
#data 0x636C7251
#data 0x2340332C
#data 0x636C7601
#data 0x8BF63373
#data 0x6743D325
#data 0xEB08D623
#data 0xD2242362
#data 0x913A2262
#data 0x361CD323
#data 0x66432362
#data 0x2241D222
#data 0x6EC39C34
#data 0x7E91

loc_8c1B7062:
#data 0x9332
#data 0x335C616F
#data 0x23C1331C
#data 0x325C922D
#data 0x6043312C
#data 0x81110009
#data 0x637C7701
#data 0x8FF033B3
#data 0xD31936EC
#data 0xD2192340
#data 0xD1192240
#data 0xD3192140
#data 0xE3172340
#data 0x2240D218
#data 0xD118E203
#data 0xD0182140
#data 0xE0432030
#data 0x2320D317
#data 0x2140D117
#data 0xE0440544
#data 0xD2160544
#data 0x2230E301
#data 0x6CF66BF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x00FF0080
#data 0x07CF00BF
#data 0x04D800FB
#data 0x8C34BBA3
#data 0x8C347A30
#data 0x8C34B35C
#data 0x8C34BB30
#data 0x8C34BB34
#data 0x8C34BB2C
#data 0x8C34B35A
#data 0x8C34BB96
#data 0x8C34BB97
#data 0x8C34BB9A
#data 0x8C34BB95
#data 0x8C34BB98
#data 0x8C34BB99
#data 0x8C34CEEA
#data 0x8C34CEEB
#data 0x8C34CEEC
#data 0x8C34BBA1

#align4
loc_8c1B7110:
#data 0xE4002FD6
#data 0xE0502FC6
#data 0x4F22D33F
#data 0xD73F2341
#data 0xD53F0744
#data 0x22286251
#data 0xD23E8B1D
#data 0x604C6420
#data 0x8B40880B
#data 0x6130D33C
#data 0xD13C2F16
#data 0x2F066010
#data 0x6200D03B
#data 0xD23B2F26
#data 0x2F366320
#data 0x6130D33A
#data 0xD33B2F16
#data 0x6630D239
#data 0xD33B6720
#data 0x430BD239
#data 0xA0286520
#data 0x7F14

loc_8c1B7166:
#data 0x6643
#data 0xDD39D43A
#data 0xA013DC37
#data 0xE010

loc_8c1B7172:
#data 0x6273
#data 0x72516142
#data 0x332C636C
#data 0x23206210
#data 0x73016342
#data 0x24326133
#data 0x312662D2
#data 0x76018F01
#data 0x24C2

loc_8c1B7192:
#data 0x6251
#data 0x252172FF

#align4
loc_8c1B7198:
#data 0x3303636C
#data 0xD2208903
#data 0x23386321
#data 0x8BE5

loc_8c1B71A6:
#data 0xE050
#data 0x4F260764
#data 0xE404D32A
#data 0x432B6CF6
#data 0x6DF6

loc_8c1B71B6:
#data 0x4F26
#data 0x000B6CF6
#data 0x6DF6
;-------------------------------------------------------------------------------

loc_8c1B71BE:
#data 0x2FE6
#data 0xDD262FD6
#data 0x67D09326
#data 0x677CD614
#data 0x6463273F
#data 0x4F227478
#data 0x677F071A
#data 0x8541347C
#data 0x62436503
#data 0x72046E5D
#data 0x3E2C7EFF
#data 0xD20B6EE0
#data 0x2211E100
#data 0x00096063
#data 0x007D7078
#data 0xC804600D
#data 0xD3188932
#data 0xC97F60EC
#data 0x611C6130
#data 0x8B2B3010
#data 0x0009B1DA
#data 0x0009A02B
#data 0x0000008C
#data 0x8C34B2D0
#data 0x8C347A30
#data 0x8C34B35A
#data 0x8C34B338
#data 0x8C34B340
#data 0x8C34B33F
#data 0x8C34B33E
#data 0x8C34B33D
#data 0x8C34B33C
#data 0x8C34B33B
#data 0x8C34B33A
#data 0x8C34B339

#align4
loc_8c1B7248:
#data bank1a.loc_8c1a06C8
#data 0x8C34B35C
#data 0x8C34BB2C
#data 0x8C34BB30

#align4
loc_8c1B7258:
#data bank1a.loc_8c1a1296
#data 0x8C34BB9A
#data 0x8C34B345

#align4
loc_8c1B7264:
#data 0x430BD33E
#data 0x0009

loc_8c1B726A:
#data 0xD53E
#data 0x6253E701
#data 0x63207215
#data 0x2378633C
#data 0x64538F13
#data 0x600C844E
#data 0x8B04C820
#data 0x6030D338
#data 0xC880600C
#data 0x8B09

loc_8c1B728E:
#data 0xD237
#data 0xC97F60EC
#data 0x633C6320
#data 0x8B023030
#data 0xCB01844E
#data 0x804E

loc_8c1B72A2:
#data 0x6653
#data 0x6360760E
#data 0x2378633C
#data 0x64538F04
#data 0x600C6060
#data 0x8915C802

#align4
loc_8c1B72B8:
#data 0x60ECD22C
#data 0x6320C97F
#data 0x3030633C
#data 0x6043890E
#data 0x70150009
#data 0x600C6000
#data 0x8907C804
#data 0xC9FC844E
#data 0x6353804E
#data 0x60307315
#data 0x2300C9E0

#align4
loc_8c1B72E4:
#data 0x4F2660D0
#data 0xC9077001
#data 0xD4202D00
#data 0x73016340
#data 0x6DF62430
#data 0x422BD21E
#data 0x6EF6

loc_8c1B72FE:
#data 0xD41F
#data 0x922AE000
#data 0xD61C6340
#data 0x9127633C
#data 0x4F22232F
#data 0x031A316C
#data 0x331C633F
#data 0xD3198131
#data 0x60402301
#data 0xC9077001
#data 0xD5172400
#data 0x21186150
#data 0x61508902
#data 0x251071FF

#align4
loc_8c1B7334:
#data 0x92106340
#data 0x910F633C
#data 0x900E232F
#data 0x031A316C
#data 0x331C633F
#data 0x2008003D
#data 0xD10E8902
#data 0x0009410B

#align4
loc_8c1B7354:
#data 0x432BD30D
#data 0x008C4F26
#data 0x008404D8

#align4
loc_8c1B7360:
#data bank1a.loc_8c1a0C42
#data 0x8C34B288
#data 0x8C34BB9B
#data 0x8C34B345
#data 0x8C34BB96

#align4
loc_8c1B7374:
#data bank1a.loc_8c1a1356
#data 0x8C347A30
#data 0x8C34BB98
#data 0x8C34B2D0
#data 0x8C34BB95

#align4
loc_8c1B7388:
#data bank1a.loc_8c1a0F28

loc_8c1B738C:
#data bank1a.loc_8c1a1338

loc_8c1B7390:
#data 0xE0612FE6
#data 0x2FC62FD6
#data 0x2FA62FB6
#data 0x4F222F96
#data 0x7FECD435
#data 0x2338034C
#data 0xD234892A
#data 0x6EF3E600
#data 0xA0092261
#data 0x6563

loc_8c1B73B6:
#data 0x665C
#data 0x32EC6263
#data 0x00096043
#data 0x006C7062
#data 0x80217501

#align4
loc_8c1B73C8:
#data 0x635CE061
#data 0x622C024C
#data 0x8BF03323
#data 0x2E20024C
#data 0xD929ED01
#data 0xA007DB29
#data 0x6AE3

loc_8c1B73E2:
#data 0x6CDC
#data 0x490B3CEC
#data 0x4B0B64C3
#data 0x7D0164C0

#align4
loc_8c1B73F0:
#data 0x63DC62A0
#data 0x3327622C
#data 0xD2238BF3
#data 0xE408420B

#align4
loc_8c1B7400:
#data 0x4F267F14
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1B7412:
sts.l pr,@-r15
mov.l @(loc_8c1B7490,pc),r2 ; r2 set to 0x8C198A10
mov.l @(loc_8c1B748C,pc),r3 ; r3 set to 0x8C34B141
jsr @r2
mov.b @r3,r5
mov.l @(loc_8c1B7494,pc),r4 ; r4 set to 0x8C34CEEA
mov 0x72,r0 ; r0 set to 0x72
mov.l @(loc_8c1B7478,pc),r5 ; r5 set to 0x8C347A30
mov.b @(r0,r5),r3 ; r3 ??
mov.b r3,@r4 ; r4 ??? bc r3 is ???
mov.w @(loc_8c1B7474,pc),r0 ; r0 set to 0x938
mov.b @r4,r2 ; r2 ??? bc r4 is ???
mov.b r2,@(r0,r5)  ; r5 ??? bc r2 is ???
mov.l @(loc_8c1B7488,pc),r3 ; r3 set to 0x8C1A1296
mov.w @(loc_8c1B7476,pc),r4 ; r4 set to 0x800
jmp @r3
lds.l @r15+,pr

#align4
loc_8c1B7434:
#data 0xE0732FE6
#data 0xDE0F4F22
#data 0x03ECE440
#data 0x633CD115
#data 0x62102349
#data 0x2249622C
#data 0x8B033320
#data 0x0009B024
#data 0x0009A007

#align4
loc_8c1B7458:
#data 0x00ECE076
#data 0xC802600C
#data 0xB0488B01
#data 0x0009

loc_8c1B7466:
#data 0xE073
#data 0x4F2603EC
#data 0x2230D20A
#data 0x6EF6000B
;-------------------------------------------------------------------------------

loc_8c1B7474:
#data 0x0938

loc_8c1B7476:
#data 0x0800

#align4
loc_8c1B7478:
#data 0x8C347A30
#data 0x8C34B2D0

#align4
loc_8c1B7480:
#data bank1a.loc_8c1aEC5A

loc_8c1B7484:
#data bank19.loc_8c198AD0

loc_8c1B7488:
#data bank1a.loc_8c1a1296

loc_8c1B748C:
#data 0x8C34B141

#align4
loc_8c1B7490:
#data bank19.loc_8c198A10

loc_8c1B7494:
#data 0x8C34CEEA
#data 0x8C34CEEB

#align4
loc_8c1B749C:
#data 0x2FE6E610
#data 0x6430D33B
#data 0x6E4CE201
#data 0x8F1722E8
#data 0xE0026563
#data 0x891320E8
#data 0x23E8E320
#data 0xE1088B08
#data 0x890521E8
#data 0x890126E8
#data 0xE50CA00A

#align4
loc_8c1B74C8:
#data 0xE50DA008

#align4
loc_8c1B74CC:
#data 0xE40863E3
#data 0x89022348
#data 0x21E8E110
#data 0x8B00

loc_8c1B74DA:
#data 0x6543

#align4
loc_8c1B74DC:
#data 0x625CD12D
#data 0x633C6310
#data 0x89043230
#data 0x6420D22B
#data 0x432BD32B
#data 0x6EF6

loc_8c1B74F2:
#data 0x000B
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1B74F6:
#data 0x2FE6
#data 0xD3254F22
#data 0x6030DE28
#data 0xC840600C
#data 0xD1278912
#data 0x0009410B
#data 0xE400D326
#data 0x60E02341
#data 0xC801600C
#data 0x60E08B14
#data 0x2E00CB01
#data 0x2141D122
#data 0xC9EF60E0
#data 0x2E00A00C

#align4
loc_8c1B752C:
#data 0x600C60E0
#data 0x8801C901
#data 0x60E08B06
#data 0xCB104F26
#data 0xD11C2E00
#data 0x6EF6412B

#align4
loc_8c1B7544:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1B754A:
#data 0x2FE6
#data 0x4F22E074
#data 0xDE18941C
#data 0xD11803EC
#data 0x2349633C
#data 0x622C6210
#data 0x33202249
#data 0x02EC890B
#data 0x2248622C
#data 0xD2138907
#data 0x633C6320
#data 0x8B022348
#data 0x420BD211
#data 0x0009

loc_8c1B757E:
#data 0xE074
#data 0x4F2601EC
#data 0x2210D20C
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x00000080
#data 0x8C347AA3
#data 0x8C34B141
#data 0x8C347AA2

#align4
loc_8c1B759C:
#data bank19.loc_8c198A10
#data 0x8C34BB93

#align4
loc_8c1B75A4:
#data bank1a.loc_8c1a0C42
#data 0x8C34B2D0
#data 0x8C34B358

#align4
loc_8c1B75B0:
#data bank19.loc_8c19FF44
#data 0x8C347A30
#data 0x8C34CEEC
#data 0x8C34BB9B

#align4
loc_8c1B75C0:
#data bank1a.loc_8c1a0BD8

loc_8c1B75C4:
#data 0x2FD62FE6
#data 0xDE472FC6
#data 0xD3474F22
#data 0xDC4465E3
#data 0x60507515
#data 0xC801600C
#data 0x64328D0F
#data 0x61C2D243
#data 0x677C6720
#data 0x371C4700
#data 0x3646667C
#data 0xA05A8B01
#data 0x2C42

loc_8c1B75F6:
#data 0x8902
#data 0xC9FE6050
#data 0x2500

loc_8c1B75FE:
#data 0x60E3
#data 0x70150009
#data 0x600C6000
#data 0x892AC802
#data 0x9267D339
#data 0xD1396530
#data 0x252F655C
#data 0x655F051A
#data 0x8551351C
#data 0x63536403
#data 0x73046D4D
#data 0x3D3C7DFF
#data 0xD3336DD0
#data 0x64D3430B
#data 0x2008600E
#data 0xD3308B37
#data 0x64D3430B
#data 0x2008600E
#data 0x64E38B0D
#data 0x6040740E
#data 0x2400C9FC
#data 0x731563E3
#data 0xC9E06030
#data 0x60402300
#data 0xA024CB01
#data 0x2400

loc_8c1B7662:
#data 0x64E3
#data 0x600C844E
#data 0x8914C802
#data 0x00096043
#data 0x60007015
#data 0xC808600C
#data 0x4F268904
#data 0x6DF66CF6
#data 0x6EF6A018

#align4
loc_8c1B7684:
#data 0x6322D219
#data 0x63E32C32
#data 0x60307315
#data 0xA00ACB1C
#data 0x2300

loc_8c1B7696:
#data 0x844E
#data 0xC801600C
#data 0x844E8902
#data 0xCB02A002

#align4
loc_8c1B76A4:
#data 0xCB01844E

loc_8c1B76A8:
#data 0x804E

loc_8c1B76AA:
#data 0x4F26
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B76B4:
#data 0xD3124F22
#data 0x2F327FFC
#data 0xC9EF6030
#data 0xD3102300
#data 0x0009430B
#data 0x603063F2
#data 0x2300CB01
#data 0x7F04D206
#data 0x63224F26
#data 0x2132D102
#data 0x0009000B
;-------------------------------------------------------------------------------
#data 0x0000008C
#data 0x8C34BB38
#data 0x8C34B288
#data 0x8C34B2CC
#data 0x8C34B346
#data 0x8C34BB9A
#data 0x8C347AA8

#align4
loc_8c1B76FC:
#data bank19.loc_8c198E04
#data 0x8C34B29D

#align4
loc_8c1B7704:
#data bank1a.loc_8c1a0C42

loc_8c1B7708:
#data 0xE0432FE6
#data 0x7FE04F22
#data 0x741064F3
#data 0x72016243
#data 0x63431443
#data 0x72FF1422
#data 0x64F31421
#data 0x73016343
#data 0x14436243
#data 0x73FF1432
#data 0xDE5A1431
#data 0x62E253F5
#data 0x001C5123
#data 0xE0442300
#data 0x53F662E2
#data 0x001C5123
#data 0xE0432300
#data 0xE40063E2
#data 0x02445233
#data 0xE04463E2
#data 0x02445233
#data 0xE04162E2
#data 0x512353F1
#data 0x2300001C
#data 0x62E2E042
#data 0x512353F2
#data 0x2300001C
#data 0x701060F3
#data 0xC8106000
#data 0x60F38907
#data 0x60000009
#data 0x8B02C810
#data 0x420BD245
#data 0x64E2

loc_8c1B778E:
#data 0x60F3
#data 0x60007010
#data 0x8903C804
#data 0x000960F3
#data 0xC8046000

#align4
loc_8c1B77A0:
#data 0x701060F3
#data 0xC8086000
#data 0x60F38907
#data 0x60000009
#data 0x8B02C808
#data 0x420BD23B
#data 0x64E2

loc_8c1B77BA:
#data 0x60F3
#data 0x60007010
#data 0x8907C820
#data 0x000960F3
#data 0xC8206000
#data 0xD2368B02
#data 0x64E2420B

#align4
loc_8c1B77D4:
#data 0x701060F3
#data 0xC8406000
#data 0x60F38907
#data 0x60000009
#data 0x8B02C840
#data 0x420BD230
#data 0x64E2

loc_8c1B77EE:
#data 0x60F3
#data 0x60007010
#data 0x8907C880
#data 0x000960F3
#data 0xC8806000
#data 0xD22B8B02
#data 0x64E2420B

#align4
loc_8c1B7808:
#data 0x701160F3
#data 0xC9016000
#data 0x2008600D
#data 0x60F38909
#data 0x60007001
#data 0x600DC901
#data 0x8B022008
#data 0x430BD323
#data 0x64E2

loc_8c1B782A:
#data 0x60F3
#data 0x60007011
#data 0x8907C804
#data 0x700160F3
#data 0xC8046000
#data 0xD21E8B02
#data 0x64E2420B

#align4
loc_8c1B7844:
#data 0x701160F3
#data 0xC8026000
#data 0x60F38907
#data 0x60007001
#data 0x8B02C802
#data 0x420BD218
#data 0x64E2

loc_8c1B785E:
#data 0x60F3
#data 0x60007011
#data 0x8907C808
#data 0x700160F3
#data 0xC8086000
#data 0xD2138B02
#data 0x64E2420B

#align4
loc_8c1B7878:
#data 0x701360F3
#data 0xC8806000
#data 0x60F38907
#data 0x60007003
#data 0x8B02C880
#data 0x420BD20D
#data 0x64E2

loc_8c1B7892:
#data 0x7F20
#data 0x000B4F26
#data 0x00006EF6
#data 0x8C342B90

#align4
loc_8c1B78A0:
#data bank1a.loc_8c1a1DEC

loc_8c1B78A4:
#data bank1a.loc_8c1a1A5A

loc_8c1B78A8:
#data bank1a.loc_8c1a1A64

loc_8c1B78AC:
#data bank1a.loc_8c1a1B28

loc_8c1B78B0:
#data bank1a.loc_8c1a1B50

loc_8c1B78B4:
#data bank1a.loc_8c1a1F9E

loc_8c1B78B8:
#data bank1a.loc_8c1a1AB0

loc_8c1B78BC:
#data bank1a.loc_8c1a2158

loc_8c1B78C0:
#data bank1a.loc_8c1a213E

loc_8c1B78C4:
#data bank1a.loc_8c1a2172
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c1B78E0:
mov.l r8,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r8
mov.l r4,@r15
mov.l @(loc_8c1B7924,pc),r3 ; r3 set to 0x8C18C32A
mov.w @(loc_8c1B7920,pc),r4 ; r4 set to 0x138
jsr @r3
add 0x40,r8
mov.l r0,@r8
mov.l @(loc_8c1B7924,pc),r3 ; r3 set to 0x8C18C32A
mov.w @(loc_8c1B7922,pc),r4 ; r4 set to 0x134
mov.l @r15,r8
jsr @r3
add 0x44,r8
mov.l r0,@r8
add 0x04,r15
lds.l @r15+,pr
rts
mov.l @r15+,r8
;-------------------------------------------------------------------------------
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c1B7920:
#data 0x0138

loc_8c1B7922:
#data 0x0134

#align4
loc_8c1B7924:
#data bank18.loc_8c18C32A
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c1B7940:
mov.l @(loc_8c1B7960,pc),r2 ; r2 set to 0x8C1C9B38
sts.l pr,@-r15
mov.l @r2,r3
mov.l @r6,r7
cmp/hs r3,r7
mov.l @(loc_8c1B7964,pc),r3 ; r3 set to 0x8C1A83C0
movt r7
jsr @r3
nop
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------
#data 0x00090009
#data 0x00090009

#align4
loc_8c1B7960:
#data bank1c.loc_8c1c9B38

loc_8c1B7964:
#data bank1a.loc_8c1a83C0
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8c1B7980:
#data 0xD60FE5F8
#data 0x2549E203
#data 0x4501E304
#data 0x23482249
#data 0x8900352C
#data 0x356C

loc_8c1B7996:
#data 0xD30B
#data 0x8B003432
#data 0x356C

loc_8c1B799E:
#data 0x000B
#data 0x00096053
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00400000
#data 0x00800000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c1B79E0:
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
add 0xF8,r15
mov.w @r7,r3
mova @(loc_8c1B7AE8,pc),r0  ; r0 init to 0x8C1B7AE8
mov r4,r13
shll16 r3
lds r3,fpul
mov r7,r3
add 0x02,r3
mov.l r3,@(0x04,r15)
mov.w @r3,r2
float fpul,fr3
fmov.s @r0,fr4
mov 0x20,r0 ; r0 set to 0x20
shll16 r2
lds r2,fpul
mov.w @(r0,r15),r2
mov 0x24,r0 ; r0 set to 0x24
fmov fr3,fr6
float fpul,fr3
shll2 r2
shll2 r2
lds r2,fpul
mov.w @(r0,r15),r2
fmov fr3,fr7
float fpul,fr3
shll2 r2
shll2 r2
lds r2,fpul
fmov fr3,fr9
fdiv fr4,fr9
float fpul,fr3
fmov fr3,fr8
fdiv fr4,fr8
mov.w @(loc_8c1B7AE4,pc),r9 ; r9 set to 0x1FFF
mov 0x20,r11 ; r11 set to 0x20
mov.w @(loc_8c1B7AE2,pc),r8 ; r8 set to 0xFF00
mov 0x00,r10 ; r10 set to 0x00
bra loc_8c1B7ABA
mov r10,r12

loc_8c1B7A3A:
#data 0x64D1
#data 0x6243E3F8
#data 0x42186143
#data 0xD329413C
#data 0x611C2289
#data 0x641F212B
#data 0x89012348
#data 0x60C3A03D

#align4
loc_8c1B7A58:
#data 0x2FA22499
#data 0x445A7401
#data 0xF32D7D02
#data 0xFA3C

loc_8c1B7A66:
#data 0xF38C
#data 0x64D4F372
#data 0xD020F09C
#data 0xF36E644C
#data 0xF4464408
#data 0xF0AC6143
#data 0xF34EF56C
#data 0xD01CF09C
#data 0xF13DF13C
#data 0xF352F38C
#data 0x045AF71C
#data 0xF0ACF31E
#data 0x26414429
#data 0xF4167602
#data 0xF43CF34E
#data 0xF63CF43D
#data 0x4429045A
#data 0x2641644F
#data 0x63F27602
#data 0x33B37302
#data 0x2F328FD7
#data 0x7C01

loc_8c1B7ABA:
#data 0x3C53
#data 0xF63D8BBD
#data 0x025A6053
#data 0x4229F73D
#data 0x2721035A
#data 0x432951F1
#data 0x2131

loc_8c1B7AD2:
#data 0x7F08
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x000B6CF6
#data 0x6DF6
;-------------------------------------------------------------------------------

loc_8c1B7AE2:
#data 0xFF00

loc_8c1B7AE4:
#data 0x1FFF
#data 0x0000

#align4
loc_8c1B7AE8:
#data 0x47800000
#data 0x00008000

#align4
loc_8c1B7AF0:
#data bank1c.loc_8c1c8780

loc_8c1B7AF4:
#data bank1c.loc_8c1c8B80


loc_8c1B7AF8:
mov.l r14,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
add 0xE8,r15
mov.w @r7,r3
mova @(loc_8c1B7C24,pc),r0  ; r0 init to 0x8C1B7C24
mov.l @(0x34,r15),r11
mov r4,r10
shll16 r3
mov.l @(0x30,r15),r12
lds r3,fpul
mov r7,r3
add 0x02,r3
mov.l r3,@(0x10,r15)
float fpul,fr3
mov.w @r3,r2
shll16 r2
lds r2,fpul
mov.w @r11,r2
fmov fr3,fr9
float fpul,fr3
shll16 r2
lds r2,fpul
mov r11,r2
add 0x02,r2
mov.l r2,@(0x14,r15)
mov.w @r2,r1
fmov fr3,fr2
float fpul,fr3
shll16 r1
fmov.s @r0,fr4
lds r1,fpul
mov 0x38,r0 ; r0 set to 0x38
fmov fr3,fr10
float fpul,fr3
fmov fr3,fr11
mov.w @(r0,r15),r1
mov 0x3C,r0 ; r0 set to 0x3C
mov 0x00,r8 ; r8 set to 0x00
shll2 r1
shll2 r1
lds r1,fpul
mov 0x20,r9 ; r9 set to 0x20
mov.w @(r0,r15),r1
mov r8,r0 ; r0 set to 0x00
mov.l r8,@r15
float fpul,fr3
shll2 r1
shll2 r1
lds r1,fpul
mov 0x01,r1 ; r1 set to 0x01
mov.l r1,@(0x08,r15)
mov r5,r1 ; r1 ??? bc r5 is ???
cmp/gt r1,r0
mov.l r8,@(0x04,r15)
fmov fr3,fr7
float fpul,fr3
fdiv fr4,fr7
addc r0,r1
shar r1
fmov fr3,fr8 ; r8 ??? bc r3 is ???
fdiv fr4,fr8
bra loc_8c1B7CA4
mov.l r1,@(0x0C,r15)

loc_8c1B7B7E:
mov.w @r10,r4
mov 0xF8,r3 ; r3 set to 0xFFFFFFF8
mov r4,r2
shad r3, r2
mov r4,r1
mov.w @(loc_8c1B7C20,pc),r3 ; r3 set to 0xFF00
shll8 r1
extu.b r2,r2
mov r2,r4
and r3,r1
or r1,r4
mov.l @(loc_8c1B7C28,pc),r1 ; r1 set to 0x8000
exts.w r4,r2
tst r1,r2
bt loc_8c1B7BA0
bra loc_8c1B7CD8
mov.l @(0x04,r15),r0

loc_8c1B7BA0:
mov.w @(loc_8c1B7C22,pc),r3 ; r3 set to 0x1FFF
exts.w r4,r4
mov r8,r1
add 0x02,r10
and r3,r4
add 0x01,r4
lds r4,fpul
float fpul,fr3
fmov fr3,fr6

loc_8c1B7BB2:
fmov fr8,fr3 ; r3 ??? bc r8 is ???
fmul fr2,fr3
mov.b @r10+,r4
fmov fr7,fr0
mov.l @(loc_8c1B7C2C,pc),r0 ; r0 set to 0x8C1C8780, r0 set to 0x8C1C8780
extu.b r4,r4
fmac fr0,fr9,fr3
shll2 r4
fmov.s @(r0,r4),fr4
mov r4,r14
fmov fr6,fr0 ; r0 ??? bc r6 is ???, r0 ??? bc r6 is ???
fmov fr9,fr5
fmac fr0,fr4,fr3
fmov fr7,fr0
mov.l @(loc_8c1B7C30,pc),r0 ; r0 set to 0x8C1C8B80, r0 set to 0x8C1C8B80
fmov fr3,fr1
ftrc fr1,fpul
fmov fr8,fr3
fmul fr5,fr3
fmov fr1,fr2
sts fpul,r4
fmac fr0,fr1,fr3
fmov fr6,fr0 ; r0 ??? bc r6 is ???, r0 ??? bc r6 is ???
shlr16 r4
mov.w r4,@r6
add 0x02,r6
fmov.s @(r0,r14),fr4
fmac fr0,fr4,fr3
fmov fr3,fr4
ftrc fr4,fpul
fmov fr3,fr9
sts fpul,r4
shlr16 r4
add 0x02,r1
exts.w r4,r4
cmp/ge r9,r1
mov.w r4,@r6
bf/s loc_8c1B7BB2
add 0x02,r6
mov.w @r10,r4
mov 0xF8,r3 ; r3 set to 0xFFFFFFF8, r3 set to 0xFFFFFFF8
mov r4,r14
shad r3, r14
mov r4,r2
mov.w @(loc_8c1B7C20,pc),r3 ; r3 set to 0xFF00, r3 set to 0xFF00
shll8 r2
and r3,r2
extu.b r14,r14
or r2,r14
mov.l @(loc_8c1B7C28,pc),r2 ; r2 set to 0x8000, r2 set to 0x8000
exts.w r14,r4
tst r4,r2
bt loc_8c1B7C34
bra loc_8c1B7CD8
mov.l @(0x08,r15),r0

loc_8c1B7C20:
#data 0xFF00

loc_8c1B7C22:
#data 0x1FFF

#align4
loc_8c1B7C24:
#data 0x47800000

#align4
loc_8c1B7C28:
#data 0x00008000

#align4
loc_8c1B7C2C:
#data bank1c.loc_8c1c8780

loc_8c1B7C30:
#data bank1c.loc_8c1c8B80


loc_8c1B7C34:
mov.w @(loc_8c1B7CE8,pc),r3 ; r3 set to 0x1FFF
mov r8,r1
add 0x02,r10
and r3,r4
add 0x01,r4
lds r4,fpul
float fpul,fr3
fmov fr3,fr6

loc_8c1B7C44:
fmov fr8,fr3 ; r3 ??? bc r8 is ???
fmul fr11,fr3
mov.b @r10+,r4
fmov fr7,fr0
mov.l @(loc_8c1B7CEC,pc),r0 ; r0 set to 0x8C1C8780, r0 set to 0x8C1C8780
extu.b r4,r4
fmac fr0,fr10,fr3
shll2 r4
fmov.s @(r0,r4),fr4
mov r4,r14
fmov fr6,fr0 ; r0 ??? bc r6 is ???, r0 ??? bc r6 is ???
fmov fr10,fr5
fmac fr0,fr4,fr3
fmov fr7,fr0
mov.l @(loc_8c1B7CF0,pc),r0 ; r0 set to 0x8C1C8B80, r0 set to 0x8C1C8B80
fmov fr3,fr1
ftrc fr1,fpul
fmov fr8,fr3
fmul fr5,fr3
fmov fr1,fr11
sts fpul,r4
fmac fr0,fr1,fr3
fmov fr6,fr0 ; r0 ??? bc r6 is ???, r0 ??? bc r6 is ???
shlr16 r4
mov.w r4,@r12
add 0x02,r12
fmov.s @(r0,r14),fr4
fmac fr0,fr4,fr3
fmov fr3,fr4
ftrc fr4,fpul
fmov fr3,fr10
sts fpul,r4
shlr16 r4
add 0x02,r1
exts.w r4,r4
cmp/ge r9,r1
mov.w r4,@r12
bf/s loc_8c1B7C44
add 0x02,r12
mov.l @r15,r2
add 0x01,r2
mov.l r2,@r15
mov.l @(0x08,r15),r3
add 0x02,r3
mov.l r3,@(0x08,r15)
mov.l @(0x04,r15),r1
add 0x02,r1
mov.l r1,@(0x04,r15)

loc_8c1B7CA4:
mov.l @r15,r2
mov.l @(0x0C,r15),r3
cmp/ge r3,r2
bt loc_8c1B7CB0
bra loc_8c1B7B7E
nop

loc_8c1B7CB0:
ftrc fr9,fpul
mov r5,r0
sts fpul,r3
ftrc fr2,fpul
shlr16 r3
mov.w r3,@r7
sts fpul,r3
ftrc fr10,fpul
mov.l @(0x10,r15),r1
shlr16 r3
mov.w r3,@r1
sts fpul,r1
ftrc fr11,fpul
shlr16 r1
sts fpul,r3
exts.w r1,r1
mov.w r1,@r11
mov.l @(0x14,r15),r2
shlr16 r3
mov.w r3,@r2

loc_8c1B7CD8:
add 0x18,r15
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1B7CE8:
#data 0x1FFF
#data 0x0000

#align4
loc_8c1B7CEC:
#data bank1c.loc_8c1c8780

loc_8c1B7CF0:
#data bank1c.loc_8c1c8B80


loc_8c1B7CF4:
add 0xF4,r15
mov.l @(loc_8c1B7DD4,pc),r4 ; r4 set to 0xFFC00004
mov.b @r4,r0
and 0xFE,r0
mov.b r0,@r4 ; r4 ??? bc r0 is ???
mov.b @r4,r3
mov.l @(loc_8c1B7DD8,pc),r5 ; r5 set to 0x50000
extu.b r3,r3
mov 0x00,r4 ; r4 set to 0x00
mov.l r3,@r15
bra loc_8c1B7D12
mov.l r4,@r15

loc_8c1B7D0C:
mov.l @r15,r2
add 0x01,r2
mov.l r2,@r15

loc_8c1B7D12:
mov.l @r15,r3
cmp/ge r5,r3
bf loc_8c1B7D0C
mov.l @(loc_8c1B7DE0,pc),r6 ; r6 set to 0x8C34CEF4, r6 set to 0x8C34CEF4
mov.l @(loc_8c1B7DDC,pc),r7 ; r7 set to 0x8C34CEFC, r7 set to 0x8C34CEFC
mov.l @r6,r0
add 0x1C,r0
mov.b @r0,r0
extu.b r0,r0
tst 0x04,r0
bt loc_8c1B7D2C
bra loc_8c1B7D30
mov.l r4,@r7

loc_8c1B7D2C:
mov 0x01,r3 ; r3 set to 0x01
mov.l r3,@r7

loc_8c1B7D30:
mov.l @r7,r0
mov.l @(loc_8c1B7DE4,pc),r5 ; r5 set to 0x80000, r5 set to 0x80000
cmp/eq 0x00,r0
bt loc_8c1B7D40
cmp/eq 0x01,r0
bt loc_8c1B7D88
bra loc_8c1B7D88
nop

loc_8c1B7D40:
mov.l @(loc_8c1B7DEC,pc),r2 ; r2 set to 0xFFE80000
mov.l @(loc_8c1B7DE8,pc),r6 ; r6 set to 0x8C34CEF8
mov.l @(loc_8c1B7DF0,pc),r3 ; r3 set to 0xFFE80008
mov.l r2,@r6 ; r6 ??
mov.w r4,@r3 ; r3 ??? bc r4 is ???
mov.l @r6,r2 ; r2 ??? bc r6 is ???
mov 0x06,r1 ; r1 set to 0x06
add 0x18,r2
mov.w r1,@r2
mov.l @r6,r2
add 0x08,r2
mov.w r4,@r2
mov.l @r6,r1 ; r1 ??? bc r6 is ???
mov.w r4,@r1
mov.l @r6,r2
mov 0x28,r1 ; r1 set to 0x28
add 0x04,r2
mov.b r1,@r2
bra loc_8c1B7D6E
mov.l r4,@(0x08,r15)

loc_8c1B7D68:
mov.l @(0x08,r15),r3
add 0x01,r3
mov.l r3,@(0x08,r15)

loc_8c1B7D6E:
mov.l @(0x08,r15),r2
cmp/ge r5,r2
bf loc_8c1B7D68
mov.l @r6,r1
mov.w @(loc_8c1B7DD2,pc),r3 ; r3 set to 0x308, r3 set to 0x308
add 0x18,r1
mov.w r3,@r1
mov.l @r6,r2
mov 0x30,r3 ; r3 set to 0x30, r3 set to 0x30
add 0x08,r2
mov.w r3,@r2
bra loc_8c1B7DBA
nop

loc_8c1B7D88:
mov.l @(loc_8c1B7DF4,pc),r1 ; r1 set to 0xFFE00000
mov.l @(loc_8c1B7DF8,pc),r3 ; r3 set to 0xFFE00008
mov.l r1,@r6
mov.b r4,@r3 ; r3 ??? bc r4 is ???
mov.l @r6,r2
add 0x08,r2
mov.b r4,@r2
mov.l @r6,r1 ; r1 ??? bc r6 is ???
mov.b r4,@r1
mov.l @r6,r2
mov 0x28,r1 ; r1 set to 0x28
add 0x04,r2
mov.b r1,@r2
bra loc_8c1B7DAC
mov.l r4,@(0x04,r15)

loc_8c1B7DA6:
#data 0x53F1
#data 0x1F317301

#align4
loc_8c1B7DAC:
#data 0x325352F1
#data 0x61628BF9
#data 0x7108E330
#data 0x2130


loc_8c1B7DBA:
mov.l @r7,r0
rts
add 0x0C,r15
;-------------------------------------------------------------------------------

loc_8c1B7DC0:
mov.l @(loc_8c1B7DDC,pc),r3 ; r3 set to 0x8C34CEFC
mov.l @r3,r0
cmp/eq 0x00,r0
bt/s loc_8c1B7DFC
mov r4,r6
cmp/eq 0x01,r0
bt loc_8c1B7E3C
bra loc_8c1B7E6E
nop

loc_8c1B7DD2:
#data 0x0308

#align4
loc_8c1B7DD4:
#data 0xFFC00004

#align4
loc_8c1B7DD8:
#data 0x00050000

#align4
loc_8c1B7DDC:
#data 0x8C34CEFC

#align4
loc_8c1B7DE0:
#data 0x8C34CEF4

#align4
loc_8c1B7DE4:
#data 0x00080000

#align4
loc_8c1B7DE8:
#data 0x8C34CEF8

#align4
loc_8c1B7DEC:
#data 0xFFE80000

#align4
loc_8c1B7DF0:
#data 0xFFE80008

#align4
loc_8c1B7DF4:
#data 0xFFE00000

#align4
loc_8c1B7DF8:
#data 0xFFE00008

#align4
loc_8c1B7DFC:
#data 0xE520D444

#align4
loc_8c1B7E00:
#data 0x85086042
#data 0x2059600D
#data 0x8BF98820
#data 0x720C6242
#data 0x63422260
#data 0x7310D23F
#data 0x21296131
#data 0x63422311
#data 0x7310D13D
#data 0x20196031
#data 0xE5402301

#align4
loc_8c1B7E2C:
#data 0x85086042
#data 0x2059600D
#data 0x8BF98840
#data 0x0009A019

#align4
loc_8c1B7E3C:
#data 0x9564D437

#align4
loc_8c1B7E40:
#data 0x73106342
#data 0x622C6230
#data 0x32502259
#data 0x62428BF8
#data 0x2260720C
#data 0x73106342
#data 0xC97F6030
#data 0xE5042300

#align4
loc_8c1B7E60:
#data 0x70106042
#data 0x600C6000
#data 0x88042059
#data 0x8BF8


loc_8c1B7E6E:
rts
nop
;-------------------------------------------------------------------------------

loc_8c1B7E72:
mov.l @(loc_8c1B7F20,pc),r3 ; r3 set to 0x8C34CEFC
mov.l @r3,r0
cmp/eq 0x00,r0
bt loc_8c1B7E82
cmp/eq 0x01,r0
bt loc_8c1B7E96
bra loc_8c1B7EA8
nop

loc_8c1B7E82:
mov.l @(loc_8c1B7F10,pc),r2 ; r2 set to 0x8C34CEF8
mov.l @r2,r4

loc_8c1B7E86:
mov.w @(0x1C,r4),r0
extu.b r0,r3
tst r3,r3
bt loc_8c1B7E86
mov r4,r5
add 0x14,r5
bra loc_8c1B7EA8
mov.b @r5,r5

loc_8c1B7E96:
#data 0xD221
#data 0x701C6022
#data 0x600C6000
#data 0x8804C904
#data 0xE50D8B00


loc_8c1B7EA8:
rts
mov r5,r0
;-------------------------------------------------------------------------------

loc_8c1B7EAC:
mov.l @(loc_8c1B7F20,pc),r3 ; r3 set to 0x8C34CEFC
mov.l @r3,r0
cmp/eq 0x00,r0
bt loc_8c1B7EBC
cmp/eq 0x01,r0
bt loc_8c1B7EF8
bra loc_8c1B7EF8
nop

loc_8c1B7EBC:
mov.l @(loc_8c1B7F10,pc),r4 ; r4 set to 0x8C34CEF8
mov 0x00,r5 ; r5 set to 0x00
mov.l @r4,r2
add 0x08,r2
mov.w r5,@r2
mov.l @r4,r1
mov 0x06,r2 ; r2 set to 0x06
add 0x18,r1
mov.w r2,@r1
mov.l @r4,r1
mov.w r5,@r1
mov.l @r4,r2 ; r2 ??
mov.w @(loc_8c1B7F0C,pc),r1 ; r1 set to 0xFF
add 0x04,r2
mov.b r1,@r2
mov.l @r4,r2
add 0x08,r2
mov.w r5,@r2
mov.l @r4,r1 ; r1 ??
add 0x10,r1
mov.w r5,@r1
mov.l @r4,r2
add 0x18,r2
mov.w r5,@r2
mov.l @r4,r1
add 0x20,r1
mov.w r5,@r1
mov.l @r4,r2
add 0x24,r2
mov.w r5,@r2

loc_8c1B7EF8:
mov.l @(loc_8c1B7F24,pc),r3 ; r3 set to 0xFFC00004, r3 set to 0xFFC00004
mov.b @r3,r0
or 0x01,r0
rts
mov.b r0,@r3
;-------------------------------------------------------------------------------

loc_8c1B7F02:
mov.l r14,@-r15
sts.l pr,@-r15
bra loc_8c1B7F2C
mov r4,r14
#data 0x0080

loc_8c1B7F0C:
#data 0x00FF
#data 0x0000

#align4
loc_8c1B7F10:
#data 0x8C34CEF8
#data 0x0000FFDF
#data 0x0000FFBF
#data 0x8C34CEF4

#align4
loc_8c1B7F20:
#data 0x8C34CEFC

#align4
loc_8c1B7F24:
#data 0xFFC00004


loc_8c1B7F28:
bsr loc_8c1B7DC0
mov.b @r14+,r4

loc_8c1B7F2C:
mov.b @r14,r2
tst r2,r2
bf loc_8c1B7F28
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1B7F38:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov 0x1C,r13 ; r13 set to 0x1C
mov.l r4,@r15
mov 0x0A,r12 ; r12 set to 0x0A

loc_8c1B7F48:
mov.l @r15,r0
neg r13,r3
mov 0x0F,r14 ; r14 set to 0x0F, r14 set to 0x0F
shld r3, r0
and r0,r14 ; r14 ??? bc r0 is ???, r14 ??? bc r0 is ???
extu.b r14,r3
cmp/ge r12,r3
bf loc_8c1B7F5C
bra loc_8c1B7F5E
add 0x37,r14

loc_8c1B7F5C:
add 0x30,r14

loc_8c1B7F5E:
bsr loc_8c1B7DC0
mov r14,r4
add 0xFC,r13
cmp/pz r13
bt loc_8c1B7F48
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8c1B7F74:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2FA66B53
#data 0x2F962BB8
#data 0x4F222F86
#data 0x2F427FE8
#data 0x6A638D05
#data 0x222862B2
#data 0x63F28901
#data 0x2338

loc_8c1B7F9A:
#data 0xA001
#data 0x6EB2

loc_8c1B7F9E:
#data 0x7E01

#align4
loc_8c1B7FA0:
#data 0x882060E0
#data 0x65A389FB
#data 0x64E0B091
#data 0x2008600E
#data 0x6CF38926
#data 0xE9007C04
#data 0x6D93A004

#align4
loc_8c1B7FBC:
#data 0x60DC63E4
#data 0x0C347D01

#align4
loc_8c1B7FC4:
#data 0xB08265A3
#data 0x600E64E0
#data 0x89032008
#data 0x62DCE308
#data 0x8BF13233

#align4
loc_8c1B7FD8:
#data 0x60D36DDC
#data 0xA0010009
#data 0x0C94

loc_8c1B7FE2:
#data 0x7E01

#align4
loc_8c1B7FE4:
#data 0x882060E0
#data 0x60E089FB
#data 0x8B00882C
#data 0x7E01

loc_8c1B7FF2:
#data 0x68F2
#data 0xB0BE65A3
#data 0x280264C3
#data 0x6493A007

#align4
loc_8c1B8000:
#data 0x882C60E0
#data 0x7E018B02
#data 0xE401A001

loc_8c1B800C:
#data 0xE402

loc_8c1B800E:
#data 0x2BE2
#data 0x00096043
#data 0x4F267F18
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B8028:
#data 0x2FD62FE6
#data 0x2FC66D43
#data 0x6B532FB6
#data 0x2BB82FA6
#data 0x2F862F96
#data 0x7FFC4F22
#data 0x2F608D04
#data 0x222862B2
#data 0x2DD88900

#align4
loc_8c1B804C:
#data 0x6EB2A001

loc_8c1B8050:
#data 0x7E01

loc_8c1B8052:
#data 0x60E0
#data 0x89FB8820
#data 0x64E0B075
#data 0x2008600E
#data 0x6AF08921
#data 0x6C83E800
#data 0x4A156AAC
#data 0xE9208F0E

#align4
loc_8c1B8070:
#data 0x64E0B069
#data 0x2008600E
#data 0x63E48902
#data 0x2D30A001

loc_8c1B8080:
#data 0x2D90

loc_8c1B8082:
#data 0x7C01
#data 0x33A363CC
#data 0x7D018FF2

#align4
loc_8c1B808C:
#data 0x2D80A001

loc_8c1B8090:
#data 0x7E01

loc_8c1B8092:
#data 0x60E0
#data 0x89FB8820
#data 0x882C60E0
#data 0x64838F01
#data 0x7E01

loc_8c1B80A2:
#data 0xA007
#data 0x0009

loc_8c1B80A6:
#data 0x60E0
#data 0x8B02882C
#data 0xA0017E01
#data 0xE401

loc_8c1B80B2:
#data 0xE402

#align4
loc_8c1B80B4:
#data 0x60432BE2
#data 0x7F040009
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1B80CE:
#data 0x2FE6
#data 0x60E36E5C
#data 0x88640009
#data 0x60E3890B
#data 0x887A0009
#data 0x60E38907
#data 0x886C0009
#data 0x60E38903
#data 0x886E0009
#data 0x8B07

loc_8c1B80F2:
#data 0xE230
#data 0x3323634E
#data 0xE3398B03
#data 0x3137614E
#data 0x8B1B

loc_8c1B8102:
#data 0x60E3
#data 0x88680009
#data 0x60E38907
#data 0x886D0009
#data 0x60E38903
#data 0x88730009
#data 0x8B12

loc_8c1B811A:
#data 0xE230
#data 0x3323634E
#data 0xE3398B03
#data 0x3137614E
#data 0x8B07

loc_8c1B812A:
#data 0xE341
#data 0x3233624E
#data 0xE2468B06
#data 0x3127614E
#data 0x8902

loc_8c1B813A:
#data 0xE001
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B8140:
#data 0x000BE000
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1B8146:
#data 0xE341
#data 0x3533654E
#data 0xE15A8B02
#data 0x8B0B3517

#align4
loc_8c1B8154:
#data 0x3533E361
#data 0xE17A8B02
#data 0x8B053517

#align4
loc_8c1B8160:
#data 0x3533E330
#data 0xE1398B04
#data 0x89013517

#align4
loc_8c1B816C:
#data 0xE001000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B8170:
#data 0x000BE000
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1B8176:
#data 0x2FE6
#data 0x2FC62FD6
#data 0xA0014F22
#data 0x6E43

loc_8c1B8182:
#data 0x7E01

#align4
loc_8c1B8184:
#data 0x882060E0
#data 0x64038DFB
#data 0x00096043
#data 0x89F68809
#data 0x60D36D5C
#data 0x88640009
#data 0xE4008D0C
#data 0x000960D3
#data 0x8907887A
#data 0x000960D3
#data 0x8903886C
#data 0x000960D3
#data 0x8B12886E

#align4
loc_8c1B81B8:
#data 0x6D43A009

#align4
loc_8c1B81BC:
#data 0x430863D3
#data 0x332C62D3
#data 0x430062E4
#data 0x6D33332C
#data 0x7DD0

loc_8c1B81CE:
#data 0xE564
#data 0x64E0BF7D
#data 0x2008600E
#data 0xA0288BF0
#data 0x0009

loc_8c1B81DE:
#data 0x8868
#data 0x60D38907
#data 0x886D0009
#data 0x60D38903
#data 0x88730009
#data 0x8B19

loc_8c1B81F2:
#data 0xA010
#data 0x6D43

loc_8c1B81F6:
#data 0x6CD3
#data 0xE5644C08
#data 0xBF664C08
#data 0x600E64E0
#data 0x89032008
#data 0x3DCC6DE4
#data 0x7DD0A003

#align4
loc_8c1B8210:
#data 0x3DCC6DE4
#data 0x7DC9

loc_8c1B8216:
#data 0xE568
#data 0x64E0BF59
#data 0x2008600E
#data 0xA0048BE9
#data 0x0009

loc_8c1B8226:
#data 0xD206
#data 0x420BD404
#data 0x0009

loc_8c1B822E:
#data 0x60D3
#data 0x4F260009
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B823C:
#data bank1c.loc_8c1c8668

loc_8c1B8240:
#data bank1a.loc_8c1aECDC

loc_8c1B8244:
#data 0xE5042FE6
#data 0x6D432FD6
#data 0xD3464F22
#data 0x6EF37FFC
#data 0x430B66E3
#data 0xD444E400
#data 0x634062E0
#data 0x8B0E3230
#data 0x630384E1
#data 0x33008441
#data 0x84E28B09
#data 0x84426303
#data 0x8B043300
#data 0x630384E3
#data 0x33008443
#data 0x8903

loc_8c1B8282:
#data 0xB00F
#data 0xA00264D3
#data 0x0009

loc_8c1B828A:
#data 0xB0A9
#data 0x64D3

loc_8c1B828E:
#data 0xD236
#data 0xE50166D3
#data 0x420B7638
#data 0x7F04E40B
#data 0x6DF64F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B82A4:
#data 0x2FD62FE6
#data 0x2FC6ED04
#data 0x2FA62FB6
#data 0x69D32F96
#data 0x4F222F86
#data 0x2F427FFC
#data 0x9A50DC2B
#data 0xA006DE2B
#data 0x6BD3

loc_8c1B82C6:
#data 0x60BC
#data 0x04CC6593
#data 0x4E0B7901
#data 0x7B01

loc_8c1B82D2:
#data 0x60BC
#data 0x633C03CC
#data 0x8BF433A0
#data 0xE506D222
#data 0x420BD624
#data 0xD324E405
#data 0x0009430B
#data 0x4E0B6403
#data 0xD221E50B
#data 0x0009420B
#data 0x430BD320
#data 0xD3206403
#data 0x64F2430B
#data 0x982DEB00
#data 0xEA0C69B3

#align4
loc_8c1B830C:
#data 0x648365A3
#data 0x7A014E0B
#data 0x7A0165A3
#data 0xE4004E0B
#data 0xE30A7901
#data 0x3237629C
#data 0x6AB38BF2

#align4
loc_8c1B8328:
#data 0x64A365F2
#data 0x7A01B02C
#data 0x32D362AC
#data 0x69B38BF8
#data 0x6AB3

loc_8c1B833A:
#data 0x609C
#data 0x04CC65A3
#data 0x4E0B7A01
#data 0x63AD7901
#data 0x8BF633D3
#data 0xD30D7F04
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x432B6DF6
#data 0x00FF6EF6
#data 0x000000C2

#align4
loc_8c1B8368:
#data bank1c.loc_8c1c0480

loc_8c1B836C:
#data bank1c.loc_8c1c86A8

loc_8c1B8370:
#data bank1c.loc_8c1c0478
#data 0x8C352E96

#align4
loc_8c1B8378:
#data bank1a.loc_8c1a01CC

loc_8c1B837C:
#data loc_8c1B04D0

loc_8c1B8380:
#data loc_8c1B05D8

loc_8c1B8384:
#data bank1c.loc_8c1c04A0


loc_8c1B8388:
mov.l r14,@-r15
extu.b r4,r4
mov.l r13,@-r15
mov r4,r3
mov.l r12,@-r15
shll2 r4
mov.l r11,@-r15
add r3,r4
mov.l r10,@-r15
shll2 r4
sts.l pr,@-r15
shll r4
mov r4,r10
add 0x22,r10
add 0xFC,r15
mov.l r5,@r15
mov.w @(loc_8c1B84B2,pc),r12 ; r12 set to 0xFF
mov.l @(loc_8c1B84B4,pc),r11 ; r11 set to 0x8C1C0478
mov.l @(loc_8c1B84B8,pc),r14 ; r14 set to 0x8C1C8680
bra loc_8c1B83C4
mov 0x00,r13

loc_8c1B83B2:
extu.b r13,r0
mov r10,r5
mov.b @(r0,r14),r4
add 0x01,r10
mov.l @r15,r0
add 0x01,r13
extu.b r4,r4
jsr @r11
mov.b @(r0,r4),r4

loc_8c1B83C4:
extu.b r13,r0
mov.b @(r0,r14),r3
extu.b r3,r3
cmp/eq r12,r3
bf loc_8c1B83B2
add 0x04,r15
mov.l @(loc_8c1B84BC,pc),r2 ; r2 set to 0x8C1C04A0, r2 set to 0x8C1C04A0
lds.l @r15+,pr
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

#align4
loc_8c1B83E0:
#data 0xE5062FE6
#data 0x7FF44F22
#data 0xDE351F42
#data 0x4E0BD635
#data 0x66F3E405
#data 0x7604E501
#data 0xE4044E0B
#data 0x6000D032
#data 0xC820600C
#data 0xD3318902
#data 0x80F46030

#align4
loc_8c1B840C:
#data 0x66F3E501
#data 0xE40B4E0B
#data 0x430BD32E
#data 0x600E64F0
#data 0x8B012008
#data 0x2F30E300

#align4
loc_8c1B8424:
#data 0x430BD32B
#data 0x84F464F0
#data 0xB00755F2
#data 0xD3296403
#data 0x54F2430B
#data 0x4F267F0C
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B8440:
#data 0x6343644C
#data 0x4F224408
#data 0x4408343C
#data 0x66F37FD4
#data 0x2F524400
#data 0xD21A7604
#data 0x420B7422
#data 0x9628E528
#data 0xD415E500
#data 0xA00767F3
#data 0x7704

loc_8c1B846A:
#data 0x605C
#data 0x034C6274
#data 0x60F27501
#data 0x0324633C

#align4
loc_8c1B8478:
#data 0x034C605C
#data 0x3360633C
#data 0x7F2C8BF3
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1B848A:
mov.l r14,@-r15
mov 0x01,r5 ; r5 set to 0x01
sts.l pr,@-r15
mov.l @(loc_8c1B84C0,pc),r3 ; r3 set to 0x8C1C0480
add 0xF8,r15
mov r15,r6
jsr @r3
mov 0x04,r4 ; r4 set to 0x04
mov.b @r15,r0
extu.b r0,r0
mov r0,r3 ; r3 ??? bc r0 is ???
shll2 r0
add r3,r0
shll2 r0
shll r0
mov.w r0,@(0x04,r15)
mov.w @(loc_8c1B84B2,pc),r5 ; r5 set to 0xFF
mov.l @(loc_8c1B84B8,pc),r4 ; r4 set to 0x8C1C8680
bra loc_8c1B84EC
mov 0x00,r14

loc_8c1B84B2:
#data 0x00FF

#align4
loc_8c1B84B4:
#data bank1c.loc_8c1c0478

loc_8c1B84B8:
#data bank1c.loc_8c1c8680

loc_8c1B84BC:
#data bank1c.loc_8c1c04A0

loc_8c1B84C0:
#data bank1c.loc_8c1c0480
#data 0x8C352E96
#data 0x8C34B28C
#data 0x8C34B038

#align4
loc_8c1B84D0:
#data loc_8c1B04EE

loc_8c1B84D4:
#data loc_8c1B04D0

loc_8c1B84D8:
#data loc_8c1B0558


loc_8c1B84DC:
add 0x01,r14
extu.b r14,r0
mov.b @(r0,r4),r3
extu.b r3,r3
cmp/eq r5,r3
bf loc_8c1B84EC

loc_8c1B84E8:
bra loc_8c1B84E8
nop

loc_8c1B84EC:
extu.b r14,r0
mov.b @(r0,r4),r3
extu.b r3,r0
cmp/eq 0x31,r0
bf loc_8c1B84DC
mov.w @(0x04,r15),r0
extu.b r14,r5
mov.l @(loc_8c1B8578,pc),r4 ; r4 set to 0x8C34AF81
add r5,r0
mov.l @(loc_8c1B857C,pc),r3 ; r3 set to 0x8C1C0478
mov r0,r5
add 0x22,r5
jsr @r3
mov.b @r4,r4 ; r4 ??
mov.l @(loc_8c1B8580,pc),r2 ; r2 set to 0x8C1C04A0
jsr @r2
nop
add 0x08,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x2FE6
#data 0xB0124F22
#data 0x6E030009
#data 0x880160EE
#data 0xD2168B02
#data 0x0009420B
#data 0x000960E3
#data 0x000B4F26
#data 0x4F226EF6
#data 0x0009B003
#data 0x000B4F26
#data 0x2FE60009
#data 0x2FC62FD6
#data 0x2FA62FB6
#data 0x2F862F96
#data 0x900F4F22
#data 0x60433F0C
#data 0x80FC0009
#data 0x60631F56
#data 0xE9000009
#data 0x5DF680F4
#data 0xDB066A93
#data 0x6DD26E93
#data 0xEC23A019
#data 0x0000FEB8

#align4
loc_8c1B8578:
#data 0x8C34AF81

#align4
loc_8c1B857C:
#data bank1c.loc_8c1c0478

loc_8c1B8580:
#data bank1c.loc_8c1c04A0
#data 0x8C34B075
#data 0x600C60D0
#data 0x8B028820
#data 0x222862EE
#data 0x63AC8906
#data 0x894533C3
#data 0x7A0162D0
#data 0x7B012B20
#data 0xB1987D01
#data 0x600E64D0
#data 0x89022008
#data 0x233863EE
#data 0xD132890D
#data 0x631062D0
#data 0x89083230
#data 0x600C60D0
#data 0x8BDF883B
#data 0xE30184F4
#data 0x3037600C
#data 0xDB2C89DA
#data 0xE50266F3
#data 0x84FC2B90
#data 0x600CDC2A
#data 0x40001F01
#data 0x4C0B6403
#data 0x54F1740C
#data 0x760866F3
#data 0x44007401
#data 0x4C0BE502
#data 0x63F1740C
#data 0x85F466F3
#data 0x633DE502
#data 0x3038600D
#data 0x80F47614
#data 0xE4204C0B
#data 0x84F464B0
#data 0x933134AC
#data 0x85FA3408
#data 0x6483684E
#data 0x694D340C
#data 0x8B013933
#data 0xE000A07F
#data 0x66F385F4
#data 0x6303761C
#data 0x650385FA
#data 0x4C0B3538
#data 0x66F36433
#data 0x7610E501
#data 0xE4004C0B
#data 0xDE10E010
#data 0xE50004FC
#data 0x74014E0B
#data 0xA00AD30E
#data 0x65F11F31
#data 0x2F517501
#data 0x54F175FF
#data 0x1F417401
#data 0x4E0B74FF
#data 0x63AC6440
#data 0x8DF24315
#data 0xDA077AFF
#data 0x0009A014
#data 0x000001EB
#data 0x8C34B036
#data 0x8C34B098

#align4
loc_8c1B8688:
#data bank1c.loc_8c1c0480

loc_8c1B868C:
#data bank1c.loc_8c1c0478
#data 0x8C34B075
#data 0x8C34B048
#data 0x750165F1
#data 0x75FF2F51
#data 0x64A44E0B
#data 0x73FF63B0
#data 0x73012B30
#data 0x4315633C
#data 0x6BF389F2
#data 0x7B1CA006
#data 0x750165F1
#data 0x75FF2F51
#data 0x64B44E0B
#data 0x633D63F1
#data 0x8BF53393
#data 0xE90A84FC
#data 0x7A016A03
#data 0x6BAC63AC
#data 0x33974B00
#data 0xE502891E
#data 0x60B366F3
#data 0x700C0009
#data 0x4C0B81F6
#data 0x63F16403
#data 0x603D338C
#data 0x2F316433
#data 0x2029D22E
#data 0x402CE2F8
#data 0x85F680F4
#data 0x65034E0B
#data 0x65B384F4
#data 0x4E0B750D
#data 0x7A016403
#data 0x339763AC
#data 0x7B028FE1
#data 0xE500E010
#data 0x04FC4E0B
#data 0xE00153F6
#data 0x914123D2
#data 0x4F263F1C
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

loc_8c1B8740:
mov.l r14,@-r15
mov 0x10,r0 ; r0 set to 0x10
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xE8,r15
mov.b r4,@(r0,r15)
mov 0x10,r0 ; r0 set to 0x10
mov.l r5,@(0x0C,r15)
mov r15,r6
mov.b @(r0,r15),r4
add 0x04,r6
mov.l @(loc_8c1B87B8,pc),r13 ; r13 set to 0x8C1C0480
mov 0x02,r5 ; r5 set to 0x02
extu.b r4,r4
mov.l r4,@(0x14,r15)
shll r4
jsr @r13
add 0x0C,r4
mov.l @(0x14,r15),r4
mov r15,r6
add 0x08,r6
add 0x01,r4
shll r4
mov 0x02,r5 ; r5 set to 0x02
jsr @r13
add 0x0C,r4
mov 0x10,r0 ; r0 set to 0x10
mov.l @(loc_8c1B87BC,pc),r2 ; r2 set to 0x8C34B099
mov.b @(r0,r15),r3
mov 0x01,r5 ; r5 set to 0x01
mov.l @(0x0C,r15),r11
mov r15,r6
mov.l @r11,r11
mov.b r3,@r2 ; r2 ??? bc r3 is ???
mov 0x00,r3 ; r3 set to 0x00
mov.l @(loc_8c1B87C0,pc),r14 ; r14 set to 0x8C34B098
mov.b r3,@r14 ; r14 ??
mov.w @(0x04,r15),r0
jsr @r13
mov r0,r4 ; r4 set to 0x10
mov.w @(0x04,r15),r0
mov r0,r3 ; r3 set to 0x10
mov.w @(0x08,r15),r0
cmp/eq r0,r3
bf loc_8c1B87A8
bra loc_8c1B87FE
mov 0x00,r0

loc_8c1B87A8:
mov.l @(loc_8c1B87C8,pc),r8 ; r8 set to 0x8C34B048
mov.l @(loc_8c1B87C4,pc),r10 ; r10 set to 0x8C34B29C
bra loc_8c1B87EE
mov 0x01,r9
#data 0x00000148
#data 0x0000FF00

#align4
loc_8c1B87B8:
#data bank1c.loc_8c1c0480

loc_8c1B87BC:
#data 0x8C34B099

#align4
loc_8c1B87C0:
#data 0x8C34B098

#align4
loc_8c1B87C4:
#data 0x8C34B29C

#align4
loc_8c1B87C8:
#data 0x8C34B048


loc_8c1B87CC:
mov.w @(0x04,r15),r0
mov r15,r6
mov 0x01,r5 ; r5 set to 0x01
add 0x01,r0
mov.w r0,@(0x04,r15)
add 0xFF,r0
jsr @r13
mov r0,r4
mov.b @r10,r0
or 0x20,r0
mov.b r0,@r10
mov.b @r15,r2
mov.b r2,@r12
add 0x01,r12
mov.b @r14,r3
add 0x01,r3
mov.b r3,@r14

loc_8c1B87EE:
mov.w @(0x04,r15),r0
mov r0,r3
mov.w @(0x08,r15),r0
cmp/hs r0,r3
bf loc_8c1B87CC
mov.l @(0x0C,r15),r3
mov 0x01,r0 ; r0 set to 0x01, r0 set to 0x01
mov.l r11,@r3

loc_8c1B87FE:
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
;-------------------------------------------------------------------------------
#data 0x2FE6
#data 0x2FC62FD6
#data 0x2FA62FB6
#data 0x4F222F96
#data 0x60437FEC
#data 0x80FC0009
#data 0x84FC66F3
#data 0xDC4B7604
#data 0x600CE502
#data 0x40001F04
#data 0x4C0B6403
#data 0x54F4740C
#data 0x760866F3
#data 0x44007401
#data 0x4C0BE502
#data 0xDD44740C
#data 0x00094D0B
#data 0xD443D344
#data 0x0009430B
#data 0xEB00D943
#data 0xA0246EB3
#data 0x85F2EA01
#data 0xE50166F3
#data 0x81F27001
#data 0x4C0B70FF
#data 0xB0306403
#data 0x600E64F0
#data 0x89032008
#data 0x00094D0B
#data 0x0009A013
#data 0x64F060EC
#data 0x8F068801
#data 0x6043644C
#data 0x885D0009
#data 0xA0088B09
#data 0x60436EB3
#data 0x885B0009
#data 0xA0028B01
#data 0x490B6EA3
#data 0x85F264F0
#data 0x85F46303
#data 0x8BD63302
#data 0x00094D0B
#data 0xD42CD32A
#data 0x0009430B
#data 0x00094D0B
#data 0x4F267F14
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x604C6EF6
#data 0x890B8801
#data 0x89098803
#data 0x89078810
#data 0x89058812
#data 0x89038814
#data 0x89018818
#data 0x0009A002
#data 0xE001000B
;-------------------------------------------------------------------------------
#data 0x000BE000
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1B8902:
sts.l pr,@-r15
mov.l @(loc_8c1B8974,pc),r3 ; r3 set to 0x8C1C0478
jsr @r3
mov 0x0B,r5 ; r5 set to 0x0B
mov.l @(loc_8c1B8978,pc),r2 ; r2 set to 0x8C1C04A0
jmp @r2
lds.l @r15+,pr
#data 0xD3184F22
#data 0xE504430B
#data 0x422BD217
#data 0x2FE64F26
#data 0xED002FD6
#data 0xEC002FC6
#data 0x6B5C2FB6
#data 0x4B152FA6
#data 0xDA104F22
#data 0x8F083D4C
#data 0x65E3EE05
#data 0x64D44A0B
#data 0x62CC7C01
#data 0x8FF832B3
#data 0x4F267E01
#data 0x6AF6D20A
#data 0x6CF66BF6
#data 0x422B6DF6
#data 0x00006EF6

#align4
loc_8c1B895C:
#data bank1c.loc_8c1c0480

loc_8c1B8960:
#data bank1a.loc_8c1aEE08

loc_8c1B8964:
#data bank1c.loc_8c1c86B4

loc_8c1B8968:
#data bank1a.loc_8c1aECDC

loc_8c1B896C:
#data bank1a.loc_8c1aEC3A

loc_8c1B8970:
#data bank1c.loc_8c1c86C4

loc_8c1B8974:
#data bank1c.loc_8c1c0478

loc_8c1B8978:
#data bank1c.loc_8c1c04A0
#data 0xEE002FE6
#data 0x2FC62FD6
#data 0x2FB6EC04
#data 0x9D2D4F22
#data 0x65ECDB17
#data 0x4B0B7E01
#data 0x63EC64D3
#data 0x8BF833C3
#data 0xD3144F26
#data 0x6CF66BF6
#data 0x432B6DF6
#data 0x6EF6


loc_8c1B89AA:
sts.l pr,@-r15
add 0xF0,r15
mov r4,r0
nop
mov.b r0,@(0x08,r15)
mov r15,r6
mov.b @(0x08,r15),r0
add 0x04,r6
mov 0x02,r5 ; r5 set to 0x02
extu.b r0,r0
mov.l r0,@(0x0C,r15)
shll r0
mov.l @(loc_8c1B89F4,pc),r3 ; r3 set to 0x8C1C0480
mov r0,r4
jsr @r3
add 0x0C,r4
mov.l @(0x0C,r15),r4
mov 0x02,r5 ; r5 set to 0x02
mov.l @(loc_8c1B89F4,pc),r3 ; r3 set to 0x8C1C0480
mov r15,r6
add 0x01,r4
shll r4
jsr @r3
add 0x0C,r4
mov.w @(0x04,r15),r0
mov r0,r3 ; r3 ??? bc r0 is ???
mov.w @r15,r0
add 0x10,r15
lds.l @r15+,pr
rts
sub r3,r0
;-------------------------------------------------------------------------------
#data 0x000000FF

#align4
loc_8c1B89EC:
#data bank1c.loc_8c1c0478

loc_8c1B89F0:
#data bank1c.loc_8c1c04A0

loc_8c1B89F4:
#data bank1c.loc_8c1c0480

loc_8c1B89F8:
#data 0xE5002FE6
#data 0xE6032FD6
#data 0x2FB62FC6
#data 0xD37F4F22
#data 0x6CF37FD0
#data 0x430B7C0C
#data 0xD27C64C3
#data 0xE5006BF3
#data 0xE6057B04
#data 0x64B3420B
#data 0xE602DE79
#data 0x65E3D379
#data 0x430B7504
#data 0xD27764C3
#data 0xE60465E3
#data 0x420B7507
#data 0x60C064B3
#data 0x8820600C
#data 0xE2308B01
#data 0x2C20

loc_8c1B8A46:
#data 0x63B0
#data 0x7301E603
#data 0xDD702B30
#data 0x4D0BD570
#data 0x200864E3
#data 0xA0578B01
#data 0xEE01

loc_8c1B8A5E:
#data 0xD56E
#data 0x4D0BE603
#data 0x200864E3
#data 0xA04F8B01
#data 0xEE02

loc_8c1B8A6E:
#data 0xD56B
#data 0x4D0BE603
#data 0x200864E3
#data 0xA0478B01
#data 0xEE03

loc_8c1B8A7E:
#data 0xD568
#data 0x4D0BE603
#data 0x200864E3
#data 0xA03F8B01
#data 0xEE04

loc_8c1B8A8E:
#data 0xD565
#data 0x4D0BE603
#data 0x200864E3
#data 0xA0378B01
#data 0xEE05

loc_8c1B8A9E:
#data 0xD562
#data 0x4D0BE603
#data 0x200864E3
#data 0xA02F8B01
#data 0xEE06

loc_8c1B8AAE:
#data 0xD55F
#data 0x4D0BE603
#data 0x200864E3
#data 0xA0278B01
#data 0xEE07

loc_8c1B8ABE:
#data 0xD55C
#data 0x4D0BE603
#data 0x200864E3
#data 0xA01F8B01
#data 0xEE08

loc_8c1B8ACE:
#data 0xD559
#data 0x4D0BE603
#data 0x200864E3
#data 0xA0178B01
#data 0xEE09

loc_8c1B8ADE:
#data 0xD556
#data 0x4D0BE603
#data 0x200864E3
#data 0xA00F8B01
#data 0xEE0A

loc_8c1B8AEE:
#data 0xD553
#data 0x4D0BE603
#data 0x200864E3
#data 0xA0078B01
#data 0xEE0B

loc_8c1B8AFE:
#data 0xD550
#data 0x4D0BE603
#data 0x200864E3
#data 0xEE0C8B00

#align4
loc_8c1B8B0C:
#data 0x6EECDD4D
#data 0x2F0684D7
#data 0x2F0684D6
#data 0x2F0684D4
#data 0x2F0684D3
#data 0x2F0684D1
#data 0x2F3663D0
#data 0x2FE62FC6
#data 0xD2462FB6
#data 0xD3462F26
#data 0x743864F3
#data 0x1F4A430B
#data 0x420BD244
#data 0xD3440009
#data 0x54FA430B
#data 0x420BD241
#data 0x7F580009
#data 0x6BF64F26
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B8B5C:
#data 0xE5002FE6
#data 0xE6032FD6
#data 0x2FB62FC6
#data 0x7FCC4F22
#data 0x2F426CF3
#data 0x7C10D324
#data 0x64C3430B
#data 0x6BF3D222
#data 0x7B08E500
#data 0x420BE605
#data 0xDE2064B3
#data 0xD320E602
#data 0x750465E3
#data 0x64C3430B
#data 0x65E3D21D
#data 0x7507E604
#data 0x64B3420B
#data 0x600C60C0
#data 0x8B018820
#data 0x2C20E230

#align4
loc_8c1B8BAC:
#data 0xE60363B0
#data 0x2B307301
#data 0xD517DD16
#data 0x64E34D0B
#data 0x8B012008
#data 0xEE01A081

#align4
loc_8c1B8BC4:
#data 0xE603D514
#data 0x64E34D0B
#data 0x8B012008
#data 0xEE02A079

#align4
loc_8c1B8BD4:
#data 0xE603D511
#data 0x64E34D0B
#data 0x8B012008
#data 0xEE03A071

#align4
loc_8c1B8BE4:
#data 0xE603D50E
#data 0x64E34D0B
#data 0x8B012008
#data 0xEE04A069

#align4
loc_8c1B8BF4:
#data 0xE603D50B
#data 0x64E34D0B
#data 0x8B2B2008
#data 0xEE05A061

#align4
loc_8c1B8C04:
#data bank12.loc_8c129728

loc_8c1B8C08:
#data bank1c.loc_8c1c86D8

loc_8c1B8C0C:
#data bank12.loc_8c1297D4

loc_8c1B8C10:
#data bank13.loc_8c131D6C

loc_8c1B8C14:
#data bank1c.loc_8c1c86E4

loc_8c1B8C18:
#data bank1c.loc_8c1c86E8

loc_8c1B8C1C:
#data bank1c.loc_8c1c86EC

loc_8c1B8C20:
#data bank1c.loc_8c1c86F0

loc_8c1B8C24:
#data bank1c.loc_8c1c86F4

loc_8c1B8C28:
#data bank1c.loc_8c1c86F8

loc_8c1B8C2C:
#data bank1c.loc_8c1c86FC

loc_8c1B8C30:
#data bank1c.loc_8c1c8700

loc_8c1B8C34:
#data bank1c.loc_8c1c8704

loc_8c1B8C38:
#data bank1c.loc_8c1c8708

loc_8c1B8C3C:
#data bank1c.loc_8c1c870C

loc_8c1B8C40:
#data bank1c.loc_8c1c8710

loc_8c1B8C44:
#data bank1c.loc_8c1c8734

loc_8c1B8C48:
#data bank1c.loc_8c1c8714

loc_8c1B8C4C:
#data bank12.loc_8c129740

loc_8c1B8C50:
#data bank1a.loc_8c1aEE08

loc_8c1B8C54:
#data bank1a.loc_8c1aECDC

loc_8c1B8C58:
#data 0xE603D532
#data 0x64E34D0B
#data 0x8B012008
#data 0xEE06A02F

#align4
loc_8c1B8C68:
#data 0xE603D52F
#data 0x64E34D0B
#data 0x8B012008
#data 0xEE07A027

#align4
loc_8c1B8C78:
#data 0xE603D52C
#data 0x64E34D0B
#data 0x8B012008
#data 0xEE08A01F

#align4
loc_8c1B8C88:
#data 0xE603D529
#data 0x64E34D0B
#data 0x8B012008
#data 0xEE09A017

#align4
loc_8c1B8C98:
#data 0xE603D526
#data 0x64E34D0B
#data 0x8B012008
#data 0xEE0AA00F

#align4
loc_8c1B8CA8:
#data 0xE603D523
#data 0x64E34D0B
#data 0x8B012008
#data 0xEE0BA007

#align4
loc_8c1B8CB8:
#data 0xE603D520
#data 0x64E34D0B
#data 0x8B002008
#data 0xEE0C

loc_8c1B8CC6:
#data 0xDD1E
#data 0x84D76EEC
#data 0x84D62F06
#data 0x84D42F06
#data 0x84D32F06
#data 0x84D12F06
#data 0x63D02F06
#data 0x2FC62F36
#data 0x2FB62FE6
#data 0x2F26D216
#data 0x64F3D316
#data 0x430B743C
#data 0xD2151F4B
#data 0x420B51FB
#data 0x7F5C50FA
#data 0x6BF64F26
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0xD3104F22
#data 0x430B7FFC
#data 0xD30F2F42
#data 0x64F2430B
#data 0x7F04D20C
#data 0x4F26422B

#align4
loc_8c1B8D24:
#data bank1c.loc_8c1c86F8

loc_8c1B8D28:
#data bank1c.loc_8c1c86FC

loc_8c1B8D2C:
#data bank1c.loc_8c1c8700

loc_8c1B8D30:
#data bank1c.loc_8c1c8704

loc_8c1B8D34:
#data bank1c.loc_8c1c8708

loc_8c1B8D38:
#data bank1c.loc_8c1c870C

loc_8c1B8D3C:
#data bank1c.loc_8c1c8710

loc_8c1B8D40:
#data bank1c.loc_8c1c8734

loc_8c1B8D44:
#data bank1c.loc_8c1c8714

loc_8c1B8D48:
#data bank12.loc_8c129740

loc_8c1B8D4C:
#data bank12.loc_8c12E5D4

loc_8c1B8D50:
#data bank1a.loc_8c1aEE08

loc_8c1B8D54:
#data bank1a.loc_8c1aECDC


loc_8c1B8D58:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l @(loc_8c1B8E38,pc),r4 ; r4 set to 0x8C34B2CA
sts.l pr,@-r15
mov.b @r4,r0
mov.l @(loc_8c1B8E34,pc),r12 ; r12 set to 0x8C34B288
extu.b r0,r0
tst 0x20,r0
bt loc_8c1B8D88
lds.l @r15+,pr
mov.b @r4,r0
and 0xDF,r0
mov.b r0,@r4 ; r4 ??? bc r0 is ???
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12 ; r12 ??? bc r15 is ???
mov.l @r15+,r13
bra loc_8c1B9560
mov.l @r15+,r14

loc_8c1B8D88:
mov.l @(loc_8c1B8E3C,pc),r9 ; r9 set to 0x8C34B2A9
mov.l @(loc_8c1B8E48,pc),r2 ; r2 set to 0x8C34CF64
mov r9,r1 ; r1 set to 0x8C34B2A9
add 0x1C,r1 ; r1 set to 0x8C34B2C5
mov.b @r1,r0
mov.b @r2,r3
mov.l @(loc_8c1B8E40,pc),r13 ; r13 set to 0x8C34CF58
mov.l @(loc_8c1B8E44,pc),r14 ; r14 set to 0x8C1B3EEC
cmp/eq r0,r3
bf/s loc_8c1B8DA2
mov 0x00,r10 ; r10 set to 0x00
bra loc_8c1B8E94
nop

loc_8c1B8DA2:
mov.l @(loc_8c1B8E4C,pc),r4 ; r4 set to 0x8C34CF70
mov.b r10,@r4 ; r4 ??? bc r10 is ???
mov r10,r0
nop
mov.b r0,@(0x01,r4)
mov r9,r11
mov.b @r13,r0
extu.b r0,r0
cmp/eq 0x01,r0
bt/s loc_8c1B8DD4
add 0x03,r11
cmp/eq 0x02,r0
bt loc_8c1B8DD8
cmp/eq 0x03,r0
bt loc_8c1B8E1C
cmp/eq 0x04,r0
bt loc_8c1B8E20
cmp/eq 0x05,r0
bt loc_8c1B8E24
cmp/eq 0x06,r0
bt loc_8c1B8E5C
cmp/eq 0x07,r0
bt loc_8c1B8E8C
bra loc_8c1B8E94
nop

loc_8c1B8DD4:
bra loc_8c1B8E8E
mov 0x0A,r5

loc_8c1B8DD8:
mov.b @r11,r0
extu.b r0,r0
tst 0xF8,r0
bf loc_8c1B8DE6
mov.w @(loc_8c1B8E2A,pc),r5 ; r5 set to 0xFF00
bra loc_8c1B8E8E
nop

loc_8c1B8DE6:
mov.l @(loc_8c1B8E50,pc),r1 ; r1 set to 0x8C352E16
mov.b @r1,r3
tst r3,r3
bf loc_8c1B8DFE
mov.l @(loc_8c1B8E54,pc),r3 ; r3 set to 0x8C34B2C8
mov.w @r3,r0
extu.w r0,r0
tst 0x80,r0
bt loc_8c1B8DFE
mov.w @(loc_8c1B8E2C,pc),r5 ; r5 set to 0x1F4
bra loc_8c1B8E12
nop

loc_8c1B8DFE:
mov.b @r11,r0
mov.w @(loc_8c1B8E2E,pc),r5 ; r5 set to 0xF8
extu.b r0,r0
and r0,r5 ; r5 ??? bc r0 is ???
shar r5
shar r5
shar r5
mov r5,r3
shll2 r5
add r3,r5

loc_8c1B8E12:
mov.l @(loc_8c1B8E58,pc),r4 ; r4 set to 0x8C352E38, r4 set to 0x8C352E38
jsr @r14
nop
bra loc_8c1B8E94
nop

loc_8c1B8E1C:
bra loc_8c1B8E8E
mov 0x64,r5

loc_8c1B8E20:
bra loc_8c1B8E8E
mov 0x14,r5

loc_8c1B8E24:
mov.w @(loc_8c1B8E30,pc),r5 ; r5 set to 0x4B0
bra loc_8c1B8E8E
nop

loc_8c1B8E2A:
#data 0xFF00

loc_8c1B8E2C:
#data 0x01F4

loc_8c1B8E2E:
#data 0x00F8

loc_8c1B8E30:
#data 0x04B0
#data 0x0000

#align4
loc_8c1B8E34:
#data 0x8C34B288

#align4
loc_8c1B8E38:
#data 0x8C34B2CA

#align4
loc_8c1B8E3C:
#data 0x8C34B2A9

#align4
loc_8c1B8E40:
#data 0x8C34CF58

#align4
loc_8c1B8E44:
#data loc_8c1B3EEC

loc_8c1B8E48:
#data 0x8C34CF64

#align4
loc_8c1B8E4C:
#data 0x8C34CF70

#align4
loc_8c1B8E50:
#data 0x8C352E16

#align4
loc_8c1B8E54:
#data 0x8C34B2C8

#align4
loc_8c1B8E58:
#data 0x8C352E38


loc_8c1B8E5C:
mov.l @(loc_8c1B8F5C,pc),r3 ; r3 set to 0x8C34B2C8
mov.w @r3,r0
extu.w r0,r0
tst 0x40,r0
bt loc_8c1B8E80
mov.l @(loc_8c1B8F60,pc),r1 ; r1 set to 0x8C34CF59
mov.b @r1,r0
extu.b r0,r0
cmp/eq 0x04,r0
bt loc_8c1B8E80
mov.b @r11,r5
extu.b r5,r5
shlr2 r5
shlr r5
mov r5,r3 ; r3 ??? bc r5 is ???
shll2 r5
bra loc_8c1B8E82
add r3,r5

loc_8c1B8E80:
mov 0x00,r5 ; r5 set to 0x00

loc_8c1B8E82:
mov.l @(loc_8c1B8F64,pc),r4 ; r4 set to 0x8C352E38, r4 set to 0x8C352E38
jsr @r14
nop
bra loc_8c1B8E94
nop

loc_8c1B8E8C:
#data 0xE500


loc_8c1B8E8E:
mov.l @(loc_8c1B8F64,pc),r4 ; r4 set to 0x8C352E38
jsr @r14
nop

loc_8c1B8E94:
add 0x1C,r9
mov.l @(loc_8c1B8F68,pc),r3 ; r3 set to 0x8C34CF64, r3 set to 0x8C34CF64
mov.b @r9,r2
mov.b r2,@r3 ; r3 ??? bc r2 is ???, r3 ??? bc r2 is ???
mov.b @r13,r0
extu.b r0,r0
cmp/eq 0x00,r0
bt loc_8c1B8EE4
cmp/eq 0x01,r0
bt loc_8c1B8F16
cmp/eq 0x02,r0
bt loc_8c1B8F30
cmp/eq 0x03,r0
bt loc_8c1B8F38
cmp/eq 0x04,r0
bf loc_8c1B8EB8
bra loc_8c1B8FBC
nop

loc_8c1B8EB8:
cmp/eq 0x05,r0
bf loc_8c1B8EC0
bra loc_8c1B8FC4
nop

loc_8c1B8EC0:
cmp/eq 0x06,r0
bf loc_8c1B8EC8
bra loc_8c1B8FCC
nop

loc_8c1B8EC8:
cmp/eq 0x07,r0
bf loc_8c1B8ED0
bra loc_8c1B8FCC
nop

loc_8c1B8ED0:
cmp/eq 0x08,r0
bf loc_8c1B8ED8
bra loc_8c1B8FD4
nop

loc_8c1B8ED8:
cmp/eq 0x09,r0
bf loc_8c1B8EE0
bra loc_8c1B8FEC
nop

loc_8c1B8EE0:
bra loc_8c1B9022
nop

loc_8c1B8EE4:
mov.l @(loc_8c1B8F5C,pc),r2 ; r2 set to 0x8C34B2C8
mov 0x04,r1 ; r1 set to 0x04
mov.w @r2,r4
extu.w r4,r4
tst r4,r1
bt loc_8c1B8F04
mov 0x40,r0 ; r0 set to 0x40
tst r4,r0
bt loc_8c1B8F04
mov 0x01,r2 ; r2 set to 0x01
mov.b r2,@r13
mov.l @(loc_8c1B8F64,pc),r4 ; r4 set to 0x8C352E38
jsr @r14
mov 0x0A,r5 ; r5 set to 0x0A
bra loc_8c1B8F08
nop

loc_8c1B8F04:
bsr loc_8c1B9070
nop

loc_8c1B8F08:
mov.l @(loc_8c1B8F70,pc),r3 ; r3 set to 0x8C129728, r3 set to 0x8C129728
mov 0x14,r6 ; r6 set to 0x14, r6 set to 0x14
mov.l @(loc_8c1B8F6C,pc),r4 ; r4 set to 0x8C34B314, r4 set to 0x8C34B314
jsr @r3
mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00
bra loc_8c1B9022
nop

loc_8c1B8F16:
mov.l @(loc_8c1B8F74,pc),r2 ; r2 set to 0x8C1B3F0C
mov.l @(loc_8c1B8F64,pc),r1 ; r1 set to 0x8C352E38
jsr @r2
mov.l @r1,r4
exts.b r0,r0
tst r0,r0
bf loc_8c1B8F28
bra loc_8c1B9022
nop

loc_8c1B8F28:
bsr loc_8c1B9070
nop
bra loc_8c1B9022
nop

loc_8c1B8F30:
bsr loc_8c1B921C
nop
bra loc_8c1B9022
nop

loc_8c1B8F38:
bsr loc_8c1B93FE
nop
mov r12,r0
nop
add 0x1D,r0
mov.b @r0,r0
extu.b r0,r0
tst 0x08,r0
bt loc_8c1B8F78
mov r12,r2
add 0x1B,r2
mov.b r10,@r2
mov.l @(loc_8c1B8F64,pc),r4 ; r4 set to 0x8C352E38
jsr @r14
mov 0x00,r5 ; r5 set to 0x00
mov 0x06,r3 ; r3 set to 0x06
bra loc_8c1B9022
mov.b r3,@r13

#align4
loc_8c1B8F5C:
#data 0x8C34B2C8

#align4
loc_8c1B8F60:
#data 0x8C34CF59

#align4
loc_8c1B8F64:
#data 0x8C352E38

#align4
loc_8c1B8F68:
#data 0x8C34CF64

#align4
loc_8c1B8F6C:
#data 0x8C34B314

#align4
loc_8c1B8F70:
#data bank12.loc_8c129728

loc_8c1B8F74:
#data loc_8c1B3F0C

loc_8c1B8F78:
#data 0x6020D236
#data 0x8805600C
#data 0xD3368906
#data 0x430BD134
#data 0x600E6412
#data 0x89102008

#align4
loc_8c1B8F90:
#data 0x741B64C3
#data 0xC9FE6040
#data 0x60402400
#data 0x2400CB80
#data 0x9555D42D
#data 0x00094E0B
#data 0x0009B5E8
#data 0xA038E205
#data 0x2D20

loc_8c1B8FB2:
#data 0xE545
#data 0xE443B3E5
#data 0x0009A033


loc_8c1B8FBC:
bsr loc_8c1B94D8
nop
bra loc_8c1B9022
nop

loc_8c1B8FC4:
bsr loc_8c1B94FE
nop
bra loc_8c1B9022
nop

loc_8c1B8FCC:
bsr loc_8c1B958A
nop
bra loc_8c1B9022
nop

loc_8c1B8FD4:
mov.l @(loc_8c1B9060,pc),r2 ; r2 set to 0x8C1B6720
jsr @r2
nop
exts.b r0,r0
tst r0,r0
bt loc_8c1B9022
mov.l @(loc_8c1B9058,pc),r4 ; r4 set to 0x8C352E38
jsr @r14
mov 0x32,r5 ; r5 set to 0x32
mov 0x09,r2 ; r2 set to 0x09
bra loc_8c1B9022
mov.b r2,@r13

#align4
loc_8c1B8FEC:
#data 0x0009B207
#data 0xD319D21A
#data 0x6432420B
#data 0x2008600E
#data 0xD1198B08
#data 0x22286210
#data 0xD2138904
#data 0x600C6020
#data 0x8B088805

#align4
loc_8c1B9010:
#data 0x6230D315
#data 0x89012228
#data 0x0009B5B0

#align4
loc_8c1B901C:
#data 0x430BD313
#data 0x0009


loc_8c1B9022:
mov r12,r0
nop
add 0x19,r0
mov.b @r0,r0
extu.b r0,r0
tst 0x80,r0
bt loc_8c1B9040
lds.l @r15+,pr
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
bra loc_8c1B958A
mov.l @r15+,r14

loc_8c1B9040:
lds.l @r15+,pr
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x000004B0
#data 0x8C34CF59

#align4
loc_8c1B9058:
#data 0x8C352E38

#align4
loc_8c1B905C:
#data loc_8c1B3F0C

loc_8c1B9060:
#data loc_8c1B6720
#data 0x8C352E16
#data 0x8C352F05

#align4
loc_8c1B906C:
#data loc_8c1B400E


loc_8c1B9070:
mov.l r14,@-r15
mov 0x00,r14 ; r14 set to 0x00
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
mov.l @(loc_8c1B9168,pc),r13 ; r13 set to 0x8C34B288
sts.l pr,@-r15
mov r13,r3 ; r3 set to 0x8C34B288
add 0x17,r3 ; r3 set to 0x8C34B29F
mov.b r14,@r3 ; r3 ??
mov r13,r3 ; r3 set to 0x8C34B288
add 0x19,r3 ; r3 set to 0x8C34B2A1
mov.b @r3,r0
and 0x37,r0
mov.b r0,@r3 ; r3 ??? bc r0 is ???
mov r13,r2 ; r2 set to 0x8C34B288
add 0x1B,r2 ; r2 set to 0x8C34B2A3
mov.b r14,@r2 ; r2 ??
mov r13,r3 ; r3 set to 0x8C34B288
add 0x1C,r3 ; r3 set to 0x8C34B2A4
mov.b @r3,r0
and 0x18,r0
mov.b r0,@r3 ; r3 ??? bc r0 is ???
mov r13,r2 ; r2 set to 0x8C34B288
mov 0x10,r3 ; r3 set to 0x10
add 0x1D,r2 ; r2 set to 0x8C34B2A5
mov.b r3,@r2 ; r2 ??
mov.l @(loc_8c1B916C,pc),r2 ; r2 set to 0x8C1C169C
jsr @r2
nop
mov.l @(loc_8c1B9170,pc),r1 ; r1 set to 0x8C34CF59
mov.b r14,@r1 ; r1 ??
mov.l @(loc_8c1B9174,pc),r3 ; r3 set to 0x8C34CF5A
mov.b r14,@r3 ; r3 ??
mov.l @(loc_8c1B9178,pc),r2 ; r2 set to 0x8C352E3F
mov.b r14,@r2 ; r2 ??
mov.l @(loc_8c1B917C,pc),r1 ; r1 set to 0x8C34CF5C
mov.b r14,@r1 ; r1 ??
mov.l @(loc_8c1B9180,pc),r4 ; r4 set to 0x8C34CF70
mov.b r14,@r4 ; r4 ??
mov r14,r0 ; r0 set to 0x00
nop
mov 0x02,r9 ; r9 set to 0x02
mov.b r0,@(0x01,r4)
mov.l @(loc_8c1B9190,pc),r3 ; r3 set to 0x8C34B2C8
mov r9,r2 ; r2 set to 0x02
add 0x7E,r2 ; r2 set to 0x80
mov.l @(loc_8c1B9184,pc),r8 ; r8 set to 0x8C34B2A9
mov.w @r3,r11
mov.l @(loc_8c1B9188,pc),r10 ; r10 set to 0x8C34CF58
extu.w r11,r11
mov.l @(loc_8c1B918C,pc),r12 ; r12 set to 0x8C1B3EEC
tst r11,r2
bt loc_8c1B90EC
mov 0x04,r0 ; r0 set to 0x04
tst r11,r0
bf loc_8c1B90EC
bra loc_8c1B91E2
nop

loc_8c1B90EC:
bsr loc_8c1B9932
nop
mov.l @(loc_8c1B9194,pc),r5 ; r5 set to 0x8C34CF5D
mov.b r14,@r5 ; r5 ??? bc r14 is ???
mov.l @(loc_8c1B9190,pc),r2 ; r2 set to 0x8C34B2C8
mov.w @r2,r4
extu.w r4,r4
mov r4,r3
tst r9,r3
bf loc_8c1B9138
mov 0x01,r0 ; r0 set to 0x01
tst r4,r0
bf loc_8c1B9138
mov 0x40,r1 ; r1 set to 0x40
tst r4,r1
bt loc_8c1B9138
mov.l @(loc_8c1B9198,pc),r0 ; r0 set to 0x8C34B2B2
mov.b @r0,r0 ; r0 ??
extu.b r0,r0
tst 0x40,r0
bf loc_8c1B9138
mov r13,r4
mov 0x01,r2 ; r2 set to 0x01
add 0x1B,r4
mov.b r2,@r5
mov.b @r4,r0
or 0x80,r0
mov.b r0,@r4
mov.b @r4,r0
and 0xFE,r0
bsr loc_8c1B9B7C
mov.b r0,@r4
mov.l @(loc_8c1B919C,pc),r4 ; r4 set to 0x8C352E38
jsr @r12
mov 0x14,r5 ; r5 set to 0x14
mov 0x04,r2 ; r2 set to 0x04
bra loc_8c1B920A
mov.b r2,@r10

loc_8c1B9138:
mov.l @(loc_8c1B91A0,pc),r2 ; r2 set to 0x8C1B4156
jsr @r2
mov 0x64,r4 ; r4 set to 0x64
mov r13,r3
add 0x1B,r3
mov.b @r3,r0
or 0x01,r0
mov.b r0,@r3
mov.l @(loc_8c1B91A4,pc),r2 ; r2 set to 0x8C352F34
mov.w r14,@r2 ; r2 ??? bc r14 is ???
mov.l @(loc_8c1B91A8,pc),r3 ; r3 set to 0x8C352F2E
mov.w r14,@r3 ; r3 ??? bc r14 is ???
mov.b @(0x03,r8),r0
extu.b r0,r0
tst 0xF8,r0
bf loc_8c1B91AC
mov.l @(loc_8c1B919C,pc),r4 ; r4 set to 0x8C352E38
mov.w @(loc_8c1B9164,pc),r5 ; r5 set to 0xFF00
jsr @r12
nop
bra loc_8c1B91DE
nop

loc_8c1B9164:
#data 0xFF00
#data 0x0000

#align4
loc_8c1B9168:
#data 0x8C34B288

#align4
loc_8c1B916C:
#data bank1c.loc_8c1c169C

loc_8c1B9170:
#data 0x8C34CF59

#align4
loc_8c1B9174:
#data 0x8C34CF5A

#align4
loc_8c1B9178:
#data 0x8C352E3F

#align4
loc_8c1B917C:
#data 0x8C34CF5C

#align4
loc_8c1B9180:
#data 0x8C34CF70

#align4
loc_8c1B9184:
#data 0x8C34B2A9

#align4
loc_8c1B9188:
#data 0x8C34CF58

#align4
loc_8c1B918C:
#data loc_8c1B3EEC

loc_8c1B9190:
#data 0x8C34B2C8

#align4
loc_8c1B9194:
#data 0x8C34CF5D

#align4
loc_8c1B9198:
#data 0x8C34B2B2

#align4
loc_8c1B919C:
#data 0x8C352E38

#align4
loc_8c1B91A0:
#data loc_8c1B4156

loc_8c1B91A4:
#data 0x8C352F34

#align4
loc_8c1B91A8:
#data 0x8C352F2E


loc_8c1B91AC:
mov.l @(loc_8c1B92B0,pc),r0 ; r0 set to 0x8C352E16
mov.b @r0,r1
tst r1,r1
bf loc_8c1B91C4
mov.l @(loc_8c1B92B4,pc),r2 ; r2 set to 0x8C34B2C8
mov.w @r2,r0 ; r0 ??
extu.w r0,r0
tst 0x80,r0
bt loc_8c1B91C4
mov.w @(loc_8c1B92AA,pc),r5 ; r5 set to 0x1F4
bra loc_8c1B91D8
nop

loc_8c1B91C4:
mov.b @(0x03,r8),r0
mov.w @(loc_8c1B92AC,pc),r5 ; r5 set to 0xF8
extu.b r0,r0
and r0,r5 ; r5 ??? bc r0 is ???
shar r5
shar r5
shar r5
mov r5,r3
shll2 r5
add r3,r5

loc_8c1B91D8:
mov.l @(loc_8c1B92B8,pc),r4 ; r4 set to 0x8C352E38, r4 set to 0x8C352E38
jsr @r12
nop

loc_8c1B91DE:
bra loc_8c1B920A
mov.b r9,@r10

loc_8c1B91E2:
tst r11,r9
bt loc_8c1B920A
mov 0x40,r2 ; r2 set to 0x40
tst r11,r2
bt loc_8c1B91FE
mov.b @(0x03,r8),r0
extu.b r0,r0
shlr2 r0
shlr r0
mov r0,r3
shll2 r0
add r3,r0
bra loc_8c1B9200
mov r0,r5

loc_8c1B91FE:
#data 0xE500

#align4
loc_8c1B9200:
#data 0x4C0BD42D
#data 0xE3060009
#data 0x2A30


loc_8c1B920A:
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

loc_8c1B921C:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l @(loc_8c1B92B0,pc),r2 ; r2 set to 0x8C352E16
sts.l pr,@-r15
mov.b @r2,r3
mov.l @(loc_8c1B92C8,pc),r14 ; r14 set to 0x8C34B288
mov.l @(loc_8c1B92C4,pc),r13 ; r13 set to 0x8C34CF59
tst r3,r3
mov.l @(loc_8c1B92B4,pc),r10 ; r10 set to 0x8C34B2C8
mov.l @(loc_8c1B92BC,pc),r11 ; r11 set to 0x8C34CF58
mov.l @(loc_8c1B92C0,pc),r12 ; r12 set to 0x8C1B3EEC
bt/s loc_8c1B92CC
mov 0x00,r9 ; r9 set to 0x00
mov.w @(loc_8c1B92AE,pc),r4 ; r4 set to 0x91
bsr loc_8c1B9782
mov 0x11,r5 ; r5 set to 0x11
bsr loc_8c1B93FE
nop
mov.b @r13,r0
extu.b r0,r0
cmp/eq 0x04,r0
bf loc_8c1B9262
mov r14,r2 ; r2 set to 0x8C34B288
add 0x1B,r2 ; r2 set to 0x8C34B2A3
mov.b r9,@r2 ; r2 ??
mov.l @(loc_8c1B92B8,pc),r4 ; r4 set to 0x8C352E38
jsr @r12
mov 0x00,r5 ; r5 set to 0x00
mov 0x06,r3 ; r3 set to 0x06
bra loc_8c1B93B0
mov.b r3,@r11

loc_8c1B9262:
#data 0x64D0
#data 0x8802604C
#data 0x64038D04
#data 0x00096043
#data 0x8B0E8805

#align4
loc_8c1B9274:
#data 0x741B64E3
#data 0xC9FE6040
#data 0x60402400
#data 0x2400CB80
#data 0x4C0BD40C
#data 0xB477E514
#data 0xA0710009
#data 0xE204

loc_8c1B9292:
#data 0x60D0
#data 0x8803600C
#data 0xA0898901
#data 0x0009

loc_8c1B929E:
#data 0x63E3
#data 0x6030731B
#data 0xA08ECB08
#data 0x2300

loc_8c1B92AA:
#data 0x01F4

loc_8c1B92AC:
#data 0x00F8

loc_8c1B92AE:
#data 0x0091

#align4
loc_8c1B92B0:
#data 0x8C352E16

#align4
loc_8c1B92B4:
#data 0x8C34B2C8

#align4
loc_8c1B92B8:
#data 0x8C352E38

#align4
loc_8c1B92BC:
#data 0x8C34CF58

#align4
loc_8c1B92C0:
#data loc_8c1B3EEC

loc_8c1B92C4:
#data 0x8C34CF59

#align4
loc_8c1B92C8:
#data 0x8C34B288


loc_8c1B92CC:
bsr loc_8c1B93FE
nop
mov r14,r0
nop
add 0x1D,r0
mov.b @r0,r0
extu.b r0,r0
tst 0x08,r0
bt loc_8c1B92F0
mov r14,r2
add 0x1B,r2
mov.b r9,@r2
mov.l @(loc_8c1B939C,pc),r4 ; r4 set to 0x8C352E38
jsr @r12
mov 0x00,r5 ; r5 set to 0x00
mov 0x06,r3 ; r3 set to 0x06
bra loc_8c1B93EE
mov.b r3,@r11

#align4
loc_8c1B92F0:
#data 0x600C60D0
#data 0x89038801
#data 0x6230D329
#data 0x89232228

#align4
loc_8c1B9300:
#data 0x600D60A1
#data 0x891CC880
#data 0x6000D026
#data 0xC810600C
#data 0xD3258912
#data 0x22286230
#data 0xD4218B0E
#data 0x6240E30A
#data 0x3233622C
#data 0xE5458904
#data 0xE44DB22B
#data 0x0009A00C

#align4
loc_8c1B9330:
#data 0xE201D11D
#data 0x24902120

#align4
loc_8c1B9338:
#data 0xB222E545
#data 0xA003E443
#data 0x0009

loc_8c1B9342:
#data 0xE545
#data 0xE400B21D

#align4
loc_8c1B9348:
#data 0x600C60D0
#data 0x89058805
#data 0xE115D313
#data 0x622C6230
#data 0x8B293217

#align4
loc_8c1B935C:
#data 0x600D60A1
#data 0x8923C880
#data 0x600C60D0
#data 0x89058805
#data 0x4C0BD40B
#data 0xE203E564

#align4
loc_8c1B9374:
#data 0x2B20A01C

#align4
loc_8c1B9378:
#data 0x741B64E3
#data 0xC9FE6040
#data 0x60402400
#data 0x2400CB80
#data 0x9506D404
#data 0x00094C0B
#data 0x0009B3F4
#data 0xA00BE305
#data 0x04B02B30

#align4
loc_8c1B939C:
#data 0x8C352E38
#data 0x8C352E3F
#data 0x8C34B2B3
#data 0x8C34CF5C

#align4
loc_8c1B93AC:
#data 0x0009B0ED


loc_8c1B93B0:
mov.l @(loc_8c1B94A0,pc),r3 ; r3 set to 0x8C1B3F0C
mov.l @(loc_8c1B949C,pc),r2 ; r2 set to 0x8C352E38
jsr @r3
mov.l @r2,r4
exts.b r0,r0
tst r0,r0
bt loc_8c1B93EE
mov.w @r10,r0
extu.w r0,r0
tst 0x01,r0
bt loc_8c1B93D6

loc_8c1B93C6:
lds.l @r15+,pr
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
bra loc_8c1B958A
mov.l @r15+,r14

loc_8c1B93D6:
#data 0x63E3
#data 0x6030731B
#data 0xCB80D42F
#data 0x4C0B955B
#data 0xB3C92300
#data 0xE3050009
#data 0x2B30


loc_8c1B93EE:
lds.l @r15+,pr
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1B93FE:
#data 0x2FE6
#data 0x2FC62FD6
#data 0xDE292FB6
#data 0x63E14F22
#data 0xDD26DC25
#data 0x8F0B2338
#data 0xD3286BC0
#data 0xD525D426
#data 0x0009430B
#data 0x6231D323
#data 0xD0232E21
#data 0x2D126102

#align4
loc_8c1B942C:
#data 0x233863E1
#data 0xA009894C
#data 0x0009

loc_8c1B9436:
#data 0x64D2
#data 0x2D427401
#data 0xB1DF74FF
#data 0x62E16440
#data 0x2E2172FF

#align4
loc_8c1B9448:
#data 0x63BC62C0
#data 0x3320622C
#data 0xD3168B03
#data 0x22286231
#data 0x8BED

loc_8c1B945A:
#data 0x62E1
#data 0x8B352228
#data 0x6130D316
#data 0x8B042118
#data 0x6011D115
#data 0xC802600D
#data 0x8B04

loc_8c1B9472:
#data 0xD314
#data 0x600C6030
#data 0x8B058807

#align4
loc_8c1B947C:
#data 0x6321D20C
#data 0xD00C2E31
#data 0x2D126102

#align4
loc_8c1B9488:
#data 0x0009B0C8
#data 0xD20E4F26
#data 0x6CF66BF6
#data 0x422B6DF6
#data 0x04B06EF6

#align4
loc_8c1B949C:
#data 0x8C352E38

#align4
loc_8c1B94A0:
#data loc_8c1B3F0C
#data 0x8C34CF59
#data 0x8C352F30
#data 0x8C352F2E
#data 0x8C352F34
#data 0x8C352F38

#align4
loc_8c1B94B8:
#data loc_8c1B624C
#data 0x8C352E16
#data 0x8C34B2C8
#data 0x8C34CF58

#align4
loc_8c1B94C8:
#data loc_8c1B6424

loc_8c1B94CC:
#data 0x6BF64F26
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B94D8:
#data 0xD23E4F22
#data 0x420BD33C
#data 0x600E6432
#data 0x89072008
#data 0xD439D33B
#data 0x430B956F
#data 0xD33A0009
#data 0x2320E205

#align4
loc_8c1B94F8:
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1B94FE:
#data 0x2FE6
#data 0xD1374F22
#data 0x0009410B
#data 0x64E3DE36
#data 0x6040741B
#data 0xC802600C
#data 0xE2008902
#data 0x2420B022

#align4
loc_8c1B951C:
#data 0x000960E3
#data 0x6000701B
#data 0xC810600C
#data 0xD22F8902
#data 0x0009420B

#align4
loc_8c1B9530:
#data 0x6031D32E
#data 0xC808600D
#data 0xD2268B0F
#data 0x420BD124
#data 0x600E6412
#data 0x89082008
#data 0x7E1BE200
#data 0x4F262E20
#data 0xE301D127
#data 0xA0032132
#data 0x6EF6

loc_8c1B955A:
#data 0x4F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------

loc_8c1B9560:
mov.l @(loc_8c1B95F4,pc),r2 ; r2 set to 0x8C34B2CA
mov.b @r2,r0
extu.b r0,r0
tst 0x02,r0
bf loc_8c1B958A
mov.l @(loc_8c1B95E4,pc),r4 ; r4 set to 0x8C34B288
mov r4,r3 ; r3 set to 0x8C34B288
add 0x1B,r3 ; r3 set to 0x8C34B2A3
mov.b @r3,r0
and 0x08,r0
mov.b r0,@r3 ; r3 ??? bc r0 is ???
mov r4,r2 ; r2 set to 0x8C34B288
add 0x1D,r2 ; r2 set to 0x8C34B2A5
mov 0x00,r5 ; r5 set to 0x00
mov.b r5,@r2 ; r2 ??
mov 0x7F,r3 ; r3 set to 0x7F
add 0x19,r4 ; r4 set to 0x8C34B2A1
mov.b r3,@r4 ; r4 ??
mov.l @(loc_8c1B95F8,pc),r2 ; r2 set to 0x8C34B2C6
rts
mov.b r5,@r2
;-------------------------------------------------------------------------------

loc_8c1B958A:
#data 0xD31A
#data 0x60304F22
#data 0x600CD516
#data 0x8902C802
#data 0xCB016051
#data 0x2501

loc_8c1B959E:
#data 0xD411
#data 0x731B6343
#data 0xC9086030
#data 0x62432300
#data 0x721DE300
#data 0xE27F2230
#data 0x24207419
#data 0xE3116451
#data 0x2348644D
#data 0xBFCD8B1C
#data 0xD10A0009
#data 0xA024E201
#data 0x04B02122
#data 0x8C352E38

#align4
loc_8c1B95D4:
#data loc_8c1B3F0C

loc_8c1B95D8:
#data loc_8c1B3EEC
#data 0x8C34CF58

#align4
loc_8c1B95E0:
#data loc_8c1B9DDC

loc_8c1B95E4:
#data 0x8C34B288

#align4
loc_8c1B95E8:
#data loc_8c1B400E
#data 0x8C34B2C8
#data 0x8C34B324

#align4
loc_8c1B95F4:
#data 0x8C34B2CA

#align4
loc_8c1B95F8:
#data 0x8C34B2C6

#align4
loc_8c1B95FC:
#data 0x2408E010
#data 0xD0378B06
#data 0x600C6000
#data 0x8901C840
#data 0x0009B0B1

#align4
loc_8c1B9610:
#data 0x432BD334
#data 0x4F26

loc_8c1B9616:
#data 0x4F26
#data 0x0009000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B961C:
#data 0xD0324F22
#data 0x600C6000
#data 0x8B31C808
#data 0x6000D02D
#data 0xC8C0600C
#data 0xD02E892C
#data 0x600C6000
#data 0x8B27C880
#data 0x6031D32C
#data 0xC801600D
#data 0xD22C8922
#data 0x420BD12A
#data 0x600E6412
#data 0x891B2008
#data 0x6230D329
#data 0x8B032228
#data 0x6200D028
#data 0x8B132228

#align4
loc_8c1B9664:
#data 0xD028D227
#data 0x20316321
#data 0x2338633D
#data 0xD126890C
#data 0x6312D226
#data 0xB00A2232
#data 0xD3230009
#data 0xD223E100
#data 0x22026032
#data 0x2011D01F

#align4
loc_8c1B968C:
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1B9692:
#data 0x2FE6
#data 0x2FC62FD6
#data 0x2FA62FB6
#data 0x951BD41D
#data 0x600C8441
#data 0x89042058
#data 0x004CE002
#data 0xA001C97F
#data 0x6D03

loc_8c1B96B2:
#data 0x6D53

#align4
loc_8c1B96B4:
#data 0x600C8441
#data 0x8902C840
#data 0xA0019C0D
#data 0x0009

loc_8c1B96C2:
#data 0x9C0B

#align4
loc_8c1B96C4:
#data 0xD109D414
#data 0x6B436A43
#data 0x7B02D410
#data 0x6EA1D60D
#data 0xE57FA03D
#data 0x02000080
#data 0x00000FA0
#data 0x8C34B2AA

#align4
loc_8c1B96E4:
#data loc_8c1B400E
#data 0x8C34B2A5
#data 0x8C34B2A1
#data 0x8C34B2C8
#data 0x8C34CF60

#align4
loc_8c1B96F8:
#data loc_8c1B3F0C
#data 0x8C352E16
#data 0x8C352E3F
#data 0x8C352F34
#data 0x8C352F2E
#data 0x8C352F38
#data 0x8C352F30
#data 0x8C34B2A9
#data 0x8C34CF70

#align4
loc_8c1B971C:
#data 0x60706742
#data 0x2059600C
#data 0x89038811
#data 0x60ED6370
#data 0x0B347E01

#align4
loc_8c1B9730:
#data 0x72016242
#data 0x72FF2422
#data 0x62DC6320
#data 0x2359633C
#data 0x89033320
#data 0x62ED63CD
#data 0x8B023237

#align4
loc_8c1B974C:
#data 0xCB806010
#data 0x2100

loc_8c1B9752:
#data 0x6361
#data 0x263173FF
#data 0x633D7301
#data 0x8BDD2338
#data 0x2611E100
#data 0x6AF62AE1
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1B9772:
#data 0xD41E
#data 0x23386341
#data 0xA2698901
#data 0x6545

loc_8c1B977E:
#data 0x000B
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1B9782:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xF4,r15
mov r4,r0
nop
mov.b r0,@(0x08,r15)
mov r5,r0
nop
mov.b r0,@(0x04,r15)
mov.l @(loc_8c1B97F0,pc),r3 ; r3 set to 0x8C1B6626
jsr @r3
mov r15,r4
extu.w r0,r0
tst r0,r0
bt loc_8c1B97E0
mov.l @(loc_8c1B97F4,pc),r4 ; r4 set to 0x8C352E3F
mov 0x00,r14 ; r14 set to 0x00
mov.w @(loc_8c1B97E8,pc),r5 ; r5 set to 0x80

loc_8c1B97A6:
mov.b @r4,r1
add 0x01,r1
mov.b r1,@r4 ; r4 ??? bc r1 is ???
add 0xFF,r1
mov.l @(loc_8c1B97F8,pc),r3 ; r3 set to 0x8C1292D4
extu.b r1,r1
jsr @r3
mov 0x02,r0 ; r0 set to 0x02
tst r0,r0
bt/s loc_8c1B97C8
add 0x01,r14 ; r14 set to 0x01
mov.l @r15,r1
add 0x01,r1
mov.l r1,@r15
mov.b @(0x08,r15),r0
bra loc_8c1B97D2
mov.b r0,@-r1

#align4
loc_8c1B97C8:
#data 0x720162F2
#data 0x84F42F22
#data 0x2204

loc_8c1B97D2:
#data 0x63EC
#data 0x8BE63353
#data 0xE501D308
#data 0x64EC430B


loc_8c1B97E0:
add 0x0C,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1B97E8:
#data 0x0080
#data 0x0000
#data 0x8C34CF70

#align4
loc_8c1B97F0:
#data loc_8c1B6626

loc_8c1B97F4:
#data 0x8C352E3F

#align4
loc_8c1B97F8:
#data bank12.loc_8c1292D4

loc_8c1B97FC:
#data loc_8c1B6750

loc_8c1B9800:
#data 0x604C2FE6
#data 0x7FFCD22D
#data 0x8800D72B
#data 0xE6046320
#data 0xD52B2F30
#data 0x8D406E70
#data 0x88116EEC
#data 0x883F8910
#data 0xA0628B01
#data 0x0009

loc_8c1B9826:
#data 0x8843
#data 0x88458929
#data 0x884D891B
#data 0x887E8948
#data 0x913E8963
#data 0x89063010
#data 0x0009A06D

#align4
loc_8c1B9840:
#data 0x3E309339
#data 0xA0688955
#data 0x0009

loc_8c1B984A:
#data 0x60E3
#data 0x88110009
#data 0x61208B63
#data 0x22107101
#data 0x611C71FF
#data 0x8B5C3163
#data 0xA05AE101
#data 0x2510

loc_8c1B9866:
#data 0x60E3
#data 0x88430009
#data 0x2EE88941
#data 0x60E3893F
#data 0x884D0009
#data 0xA03A8B4F
#data 0x0009

loc_8c1B987E:
#data 0x60E3
#data 0x88450009
#data 0x61208B49
#data 0x7101E602
#data 0x71FF2210
#data 0x3163611C
#data 0xA0408B41
#data 0x2560

loc_8c1B989A:
#data 0x60E3
#data 0x88450009
#data 0x61208B3B
#data 0x22107101
#data 0x611C71FF
#data 0x8B343163
#data 0xA032E103
#data 0x00912510
#data 0x8C34CF65
#data 0x8C34CF5A
#data 0x8C34CF59

#align4
loc_8c1B98C4:
#data 0x000960E3
#data 0x8B268845
#data 0x6000D036
#data 0xC830600C
#data 0x61208921
#data 0x7101E302
#data 0x71FF2210
#data 0x3133611C
#data 0xA0188B19
#data 0x2560

loc_8c1B98EA:
#data 0x60E3
#data 0x887E0009
#data 0x8B13

loc_8c1B98F2:
#data 0xD32E
#data 0x72016230
#data 0xA00E2320
#data 0x0009

loc_8c1B98FE:
#data 0x60E3
#data 0x883F0009
#data 0x63208B09
#data 0x7301E120
#data 0x73FF2230
#data 0x3313633C
#data 0xE0058B01
#data 0x2500

loc_8c1B991A:
#data 0x2740
#data 0x62F0D123
#data 0x32306310
#data 0xD3218B02
#data 0x2320E200

#align4
loc_8c1B992C:
#data 0x000B7F04
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1B9932:
mov.l r14,@-r15
mov 0x00,r4 ; r4 set to 0x00
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r8,@-r15
mov.l @(loc_8c1B99B4,pc),r5 ; r5 set to 0x8C34B2A9
add 0xFC,r15
mov.l @(loc_8c1B99B8,pc),r3 ; r3 set to 0x8C352E1A
mov.w @(loc_8c1B999E,pc),r12 ; r12 set to 0x400
mov.w @(loc_8c1B999C,pc),r10 ; r10 set to 0x80
mov.l @(loc_8c1B99B0,pc),r6 ; r6 set to 0x8C352E56
mov.b r4,@r3 ; r3 ??
mov.b @(0x08,r5),r0
mov.w @(loc_8c1B99A0,pc),r1 ; r1 set to 0x190
extu.b r0,r0
and 0x3F,r0
mov r0,r2
shll2 r0
add r2,r0
mov.l @(loc_8c1B99BC,pc),r2 ; r2 set to 0x8C352DEC
shll r0
add r1,r0
mov.l r0,@r2 ; r2 ??? bc r0 is ???
mov.b @(0x0B,r5),r0
mov.l @(loc_8c1B99C0,pc),r3 ; r3 set to 0x8C352E52
extu.b r0,r0
and 0x0C,r0
shar r0
shar r0
mov.w r0,@r3 ; r3 ??? bc r0 is ???
mov r5,r0 ; r0 set to 0x8C34B2A9
nop
add 0x13,r0 ; r0 set to 0x8C34B2BC
mov.b @r0,r0 ; r0 ??
and 0xC0,r0
extu.b r0,r7
tst r7,r7
bf/s loc_8c1B998A
mov.b r0,@r15
mov.w @(loc_8c1B99A2,pc),r1 ; r1 set to 0x200
bra loc_8c1B9998
nop

loc_8c1B998A:
mov r7,r0
nop
cmp/eq 0x40,r0
bt loc_8c1B99C4
cmp/eq r10,r7
bf loc_8c1B99C4
mov.w @(loc_8c1B99A4,pc),r1 ; r1 set to 0x800

loc_8c1B9998:
bra loc_8c1B99C6
mov.w r1,@r6

loc_8c1B999C:
#data 0x0080

loc_8c1B999E:
#data 0x0400

loc_8c1B99A0:
#data 0x0190

loc_8c1B99A2:
#data 0x0200

loc_8c1B99A4:
#data 0x0800
#data 0x0000
#data 0x8C34B2B3
#data 0x8C34CF5A

#align4
loc_8c1B99B0:
#data 0x8C352E56

#align4
loc_8c1B99B4:
#data 0x8C34B2A9

#align4
loc_8c1B99B8:
#data 0x8C352E1A

#align4
loc_8c1B99BC:
#data 0x8C352DEC

#align4
loc_8c1B99C0:
#data 0x8C352E52

loc_8c1B99C4:
#data 0x26C1

loc_8c1B99C6:
#data 0x6361
#data 0x33C7633D
#data 0x63538F01
#data 0x26C1

loc_8c1B99D2:
#data 0x7313
#data 0x6230D128
#data 0x622CD326
#data 0x72062239
#data 0xD3262121
#data 0x84582340
#data 0x600CD825
#data 0x890220A8
#data 0xA001E204
#data 0x2820

loc_8c1B99F6:
#data 0x2840

#align4
loc_8c1B99F8:
#data 0x600C8458
#data 0x8903C840
#data 0xE201D320
#data 0x2320A002

#align4
loc_8c1B9A08:
#data 0x2040D01E

#align4
loc_8c1B9A0C:
#data 0xDE1E8459
#data 0x20A8600C
#data 0xE2208902
#data 0x2E20A001

loc_8c1B9A1C:
#data 0x2E40

loc_8c1B9A1E:
#data 0x6050
#data 0xD21AE3FC
#data 0xC9F0600C
#data 0x2200403C
#data 0xD7188451
#data 0xC930600C
#data 0x63712701
#data 0x4308633D
#data 0x27317340
#data 0x6171D014
#data 0xE0092011
#data 0xE10F005C
#data 0xC91FDB12
#data 0x60B02B00
#data 0x630CDD11
#data 0x89013313
#data 0x2D10A001

loc_8c1B9A60:
#data 0x2D00

loc_8c1B9A62:
#data 0xD30F
#data 0x600D6031
#data 0x891DC840
#data 0xE101D20D
#data 0x2210A01C
#data 0x0000FF3F
#data 0x8C352E5A
#data 0x8C352E50
#data 0x8C352E61
#data 0x8C352E5F
#data 0x8C352E63
#data 0x8C352DFE
#data 0x8C352E26
#data 0x8C352E2A
#data 0x8C352E2E
#data 0x8C352E2F
#data 0x8C34B2C8
#data 0x8C352E16

#align4
loc_8c1B9AA8:
#data 0x2240D23D

#align4
loc_8c1B9AAC:
#data 0xD03ED13D
#data 0x20316311
#data 0x6261D33D
#data 0xD23D2321
#data 0x6121D03D
#data 0xD13D2011
#data 0x21306380
#data 0xD03DD33C
#data 0x20206230
#data 0x61E0D23C
#data 0xD13C2210
#data 0x6311D03C
#data 0xD33C2031
#data 0x23216271
#data 0x61B0D23B
#data 0x60D02210
#data 0x2100D13A
#data 0x2341D33A
#data 0xD23BD73A
#data 0xD13B2272
#data 0x934B2172
#data 0x337CD23A
#data 0xD13A2232
#data 0xD33A2172
#data 0x92442341
#data 0x2021D039
#data 0x2141D139
#data 0xD739D33A
#data 0x27326233
#data 0x2032D039
#data 0xD2396372
#data 0x93352232
#data 0xD0386172
#data 0x2012313C
#data 0xD2376372
#data 0xD1372232
#data 0x63722141
#data 0x2032D036
#data 0xD736D337
#data 0x92272372
#data 0x372CD136
#data 0x60332172
#data 0x7F040009
#data 0x23416302
#data 0xD333D234
#data 0xD1342232
#data 0xD3342140
#data 0xD2342340
#data 0x68F62240
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

loc_8c1B9B7C:
sts.l pr,@-r15
mov.l @(loc_8c1B9C40,pc),r3 ; r3 set to 0x8C34B2A5
mov.b @r3,r0
mov.l @(loc_8c1B9C44,pc),r2 ; r2 set to 0x8C1B6048
or 0x40,r0
jsr @r2
mov.b r0,@r3 ; r3 ??? bc r0 is ???
mov.l @(loc_8c1B9C48,pc),r3 ; r3 set to 0x8C1B6118
jsr @r3
nop
mov.l @(loc_8c1B9C4C,pc),r2 ; r2 set to 0x8C1B4156
mov 0x08,r4 ; r4 set to 0x08
jmp @r2
lds.l @r15+,pr
#data 0x10000FFF
#data 0x00000100
#data 0x8C352E16
#data 0x8C352E52
#data 0x8C352E54
#data 0x8C352E58
#data 0x8C352E5A
#data 0x8C352E5C
#data 0x8C352E60
#data 0x8C352E5F
#data 0x8C352E5E
#data 0x8C352E62
#data 0x8C352E2A
#data 0x8C352E2C
#data 0x8C352E28
#data 0x8C352E30
#data 0x8C352E31
#data 0x8C35279C
#data 0x8C35178A
#data 0x8C352790
#data 0x8C352794
#data 0x8C35278C
#data 0x8C352798
#data 0x8C35279E
#data 0x8C351786
#data 0x8C351784
#data 0x8C351770
#data 0x8C350770
#data 0x8C351778
#data 0x8C35177C
#data 0x8C351774
#data 0x8C351780
#data 0x8C351788
#data 0x8C352BC4
#data 0x8C352BD4
#data 0x8C352DD4
#data 0x8C352DD8
#data 0x8C352BAB
#data 0x8C352BAC
#data 0x8C352E8C
#data 0x8C352E8B
#data 0x8C352E8A

#align4
loc_8c1B9C40:
#data 0x8C34B2A5

#align4
loc_8c1B9C44:
#data loc_8c1B6048

loc_8c1B9C48:
#data loc_8c1B6118

loc_8c1B9C4C:
#data loc_8c1B4156

loc_8c1B9C50:
#data 0x2FD62FE6
#data 0x2FC66D53
#data 0x6B432FB6
#data 0x2F962FA6
#data 0xD9154F22
#data 0x7FFCDA15
#data 0xEC00A019

#align4
loc_8c1B9C6C:
#data 0x4A0B6EC3
#data 0x640364F3
#data 0x2228624D
#data 0xA0078914
#data 0x0009

loc_8c1B9C7E:
#data 0x62F2
#data 0x7E017DFF
#data 0x2F227201
#data 0x223463B4

#align4
loc_8c1B9C8C:
#data 0x222862DD
#data 0x624D8903
#data 0x332363ED
#data 0x8BF1

loc_8c1B9C9A:
#data 0x490B
#data 0x64E3

loc_8c1B9C9E:
#data 0x63DD
#data 0x8BE32338

#align4
loc_8c1B9CA4:
#data 0x4F267F04
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00006EF6

#align4
loc_8c1B9CB8:
#data bank1a.loc_8c1a0D92

loc_8c1B9CBC:
#data bank1a.loc_8c1a0D48


loc_8c1B9CC0:
mov.l @(loc_8c1B9DA4,pc),r3 ; r3 set to 0x8C34B2CA
sts.l pr,@-r15
mov.b @r3,r0
extu.b r0,r0
tst 0x01,r0
bt loc_8c1B9CD6
mov.l @(loc_8c1B9DA8,pc),r1 ; r1 set to 0x8C1B3F3A
jsr @r1
nop
bra loc_8c1B9CEE
nop

loc_8c1B9CD6:
mov.l @(loc_8c1B9DAC,pc),r0 ; r0 set to 0x8C34B2A3
mov.b @r0,r0 ; r0 ??
extu.b r0,r0
tst 0x02,r0
bt loc_8c1B9CF4
mov.l @(loc_8c1B9DB4,pc),r2 ; r2 set to 0x8C1B3EEC
mov.l @(loc_8c1B9DB0,pc),r4 ; r4 set to 0x8C34B2DC
jsr @r2
mov 0x64,r5 ; r5 set to 0x64
mov.l @(loc_8c1B9DB8,pc),r2 ; r2 set to 0x8C34B2C6
mov 0x06,r3 ; r3 set to 0x06
mov.b r3,@r2 ; r2 ??

loc_8c1B9CEE:
lds.l @r15+,pr
rts
mov 0x01,r0
;-------------------------------------------------------------------------------

loc_8c1B9CF4:
mov 0x00,r0 ; r0 set to 0x00
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c1B9CFC:
sts.l pr,@-r15
mov.l @(loc_8c1B9DBC,pc),r3 ; r3 set to 0x8C1A0500
add 0xF4,r15
mov r15,r4
mov r15,r5
jsr @r3
add 0x08,r4
mov.w @r15,r2
tst r2,r2
bt loc_8c1B9D4E
mov.l @(loc_8c1B9DC0,pc),r3 ; r3 set to 0x8C1B6626
mov r15,r4
jsr @r3
add 0x04,r4
mov.w @r15,r2
extu.w r0,r0
extu.w r2,r2
cmp/ge r2,r0
bf loc_8c1B9D4E
bra loc_8c1B9D38
mov.w @r15,r4

loc_8c1B9D26:
#data 0x52F1
#data 0x1F217201
#data 0x730153F2
#data 0x73FF1F32
#data 0x22146130

#align4
loc_8c1B9D38:
#data 0x2338634D
#data 0x74FF8FF3
#data 0xE501D320
#data 0x64F1430B
#data 0x420BD21F
#data 0x0009


loc_8c1B9D4E:
mov.l @(loc_8c1B9DCC,pc),r3 ; r3 set to 0x8C1B624C
mov r15,r4
mov r15,r5
jsr @r3
add 0x08,r4
mov.w @r15,r2
tst r2,r2
bt loc_8c1B9D9A
mov.l @(loc_8c1B9DD0,pc),r3 ; r3 set to 0x8C1A0D48
mov r15,r4
jsr @r3
add 0x04,r4
mov.w @r15,r2
extu.w r0,r0
extu.w r2,r2
cmp/ge r2,r0
bf loc_8c1B9D9A
bra loc_8c1B9D86
mov.w @r15,r4

#align4
loc_8c1B9D74:
#data 0x720152F1
#data 0x53F21F21
#data 0x1F327301
#data 0x613073FF
#data 0x2214

loc_8c1B9D86:
#data 0x634D
#data 0x8FF32338
#data 0xD31174FF
#data 0x64F1430B
#data 0x420BD210
#data 0x0009


loc_8c1B9D9A:
add 0x0C,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------
#data 0x0000

#align4
loc_8c1B9DA4:
#data 0x8C34B2CA

#align4
loc_8c1B9DA8:
#data loc_8c1B3F3A

loc_8c1B9DAC:
#data 0x8C34B2A3

#align4
loc_8c1B9DB0:
#data 0x8C34B2DC

#align4
loc_8c1B9DB4:
#data loc_8c1B3EEC

loc_8c1B9DB8:
#data 0x8C34B2C6

#align4
loc_8c1B9DBC:
#data bank1a.loc_8c1a0500

loc_8c1B9DC0:
#data loc_8c1B6626

loc_8c1B9DC4:
#data loc_8c1B6750

loc_8c1B9DC8:
#data bank1a.loc_8c1a0648

loc_8c1B9DCC:
#data loc_8c1B624C

loc_8c1B9DD0:
#data bank1a.loc_8c1a0D48

loc_8c1B9DD4:
#data bank1a.loc_8c1a0D92

loc_8c1B9DD8:
#data loc_8c1B6424


loc_8c1B9DDC:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov 0x01,r12 ; r12 set to 0x01
mov.l @(loc_8c1B9F8C,pc),r4 ; r4 set to 0x8C352E4F
sts.l pr,@-r15
mov.b @r4,r3
mov.l @(loc_8c1B9F88,pc),r14 ; r14 set to 0x8C34CF68
tst r3,r3
bt/s loc_8c1B9EA4
mov 0x00,r13 ; r13 set to 0x00
mov.l @(loc_8c1B9F90,pc),r2 ; r2 set to 0x8C352E50
mov.b @r2,r3
tst r3,r3
bf loc_8c1B9E0E
mov.l @(loc_8c1B9F94,pc),r3 ; r3 set to 0x8C1BCD66
jsr @r3
nop
mov.l @(loc_8c1B9F98,pc),r0 ; r0 set to 0x8C34B2A1
mov.b @r0,r0 ; r0 ??
extu.b r0,r0
tst 0x08,r0
bt loc_8c1B9E32
bra loc_8c1B9E38
nop

loc_8c1B9E0E:
mov.l @(loc_8c1B9F9C,pc),r1 ; r1 set to 0x8C352E52
mov 0x02,r3 ; r3 set to 0x02
mov.w @r1,r4
extu.w r4,r4
tst r4,r3
bf loc_8c1B9E24
mov.l @(loc_8c1B9F94,pc),r3 ; r3 set to 0x8C1BCD66
jsr @r3
nop
bra loc_8c1B9E38
nop

#align4
loc_8c1B9E24:
#data 0x8B0724C8
#data 0x6000D05B
#data 0xC808600C
#data 0x8B02

loc_8c1B9E32:
#data 0xD25B
#data 0x0009420B

#align4
loc_8c1B9E38:
#data 0x880160E0
#data 0xD2598B13
#data 0x0009420B
#data 0x2008600E
#data 0xD358893D
#data 0x430BD256
#data 0x600E6422
#data 0x89362008
#data 0xD3552ED0
#data 0xE409430B
#data 0x420BD254
#data 0x0009

loc_8c1B9E66:
#data 0xB033
#data 0x63E00009
#data 0x8B2A2338
#data 0x0009B109
#data 0x420BD24F
#data 0xB1650009
#data 0xD24D0009
#data 0x0009420B
#data 0x0009B21C
#data 0x420BD24A
#data 0xD14A0009
#data 0x0009410B
#data 0x420BD247
#data 0xB0590009
#data 0xD2470009
#data 0x22C0A00B


loc_8c1B9EA4:
mov.b r13,@r14
mov.l @(loc_8c1B9FA8,pc),r3 ; r3 set to 0x8C34CF6C
mov.l r13,@r3 ; r3 ??? bc r13 is ???
mov.b r12,@r4
mov.l @(loc_8c1B9FC0,pc),r2 ; r2 set to 0x8C352E16
mov.b @r2,r0
extu.b r0,r0
cmp/eq 0x01,r0
bf loc_8c1B9EC6
bsr loc_8c1BA688
nop

loc_8c1B9EBA:
lds.l @r15+,pr
mov.l @(loc_8c1B9FB4,pc),r3 ; r3 set to 0x8C1BBA74
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8c1B9EC6:
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1B9ED0:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
sts.l pr,@-r15
mov.l @(loc_8c1B9FC4,pc),r14 ; r14 set to 0x8C1B624C

loc_8c1B9EE0:
mov.l @(loc_8c1B9FCC,pc),r4 ; r4 set to 0x8C352E68, r4 set to 0x8C352E68
mov.l @(loc_8c1B9FC8,pc),r5 ; r5 set to 0x8C352E6C, r5 set to 0x8C352E6C
jsr @r14
nop
extu.b r0,r0
tst r0,r0
bf loc_8c1B9EE0
mov.l @(loc_8c1B9FC8,pc),r12 ; r12 set to 0x8C352E6C, r12 set to 0x8C352E6C
mov.l @(loc_8c1B9F88,pc),r13 ; r13 set to 0x8C34CF68, r13 set to 0x8C34CF68
mov.l @(loc_8c1B9FD0,pc),r9 ; r9 set to 0x8C1B6424, r9 set to 0x8C1B6424
mov.l @(loc_8c1B9FD4,pc),r10 ; r10 set to 0x8C352DEA, r10 set to 0x8C352DEA
bra loc_8c1B9F32
mov 0x00,r11

loc_8c1B9EFA:
#data 0xB464
#data 0xB18F0009
#data 0xD22C2A00
#data 0x0009420B
#data 0x0009B41C
#data 0x222862D0
#data 0xD1288B02
#data 0x0009410B

#align4
loc_8c1B9F18:
#data 0x0009490B
#data 0x63D02CB1
#data 0x8B062338

#align4
loc_8c1B9F24:
#data 0xD528D429
#data 0x00094E0B
#data 0x2008600C
#data 0x8BF8

loc_8c1B9F32:
#data 0x62C1
#data 0x89032228
#data 0x6320D227
#data 0x89DC2338

#align4
loc_8c1B9F40:
#data 0x69F64F26
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1B9F50:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2FA6EB00
#data 0x2F862F96
#data 0xDD204F22
#data 0xD91DDE20
#data 0xA05BDA1D
#data 0xEC1C

loc_8c1B9F6E:
#data 0x60E0
#data 0x2E007001
#data 0x63E070FF
#data 0x633C600C
#data 0x8F0133C3
#data 0x2EB0049C

#align4
loc_8c1B9F84:
#data 0x6843A041

#align4
loc_8c1B9F88:
#data 0x8C34CF68

#align4
loc_8c1B9F8C:
#data 0x8C352E4F

#align4
loc_8c1B9F90:
#data 0x8C352E50

#align4
loc_8c1B9F94:
#data loc_8c1BCD66

loc_8c1B9F98:
#data 0x8C34B2A1

#align4
loc_8c1B9F9C:
#data 0x8C352E52

#align4
loc_8c1B9FA0:
#data loc_8c1BCE9E

loc_8c1B9FA4:
#data loc_8c1B6720

loc_8c1B9FA8:
#data 0x8C34CF6C

#align4
loc_8c1B9FAC:
#data loc_8c1B3F0C

loc_8c1B9FB0:
#data loc_8c1B4156

loc_8c1B9FB4:
#data loc_8c1BBA74

loc_8c1B9FB8:
#data loc_8c1BCCB8
#data 0x8C352E00

#align4
loc_8c1B9FC0:
#data 0x8C352E16

#align4
loc_8c1B9FC4:
#data loc_8c1B624C

loc_8c1B9FC8:
#data 0x8C352E6C

#align4
loc_8c1B9FCC:
#data 0x8C352E68

#align4
loc_8c1B9FD0:
#data loc_8c1B6424

loc_8c1B9FD4:
#data 0x8C352DEA
#data 0x8C352E1C
#data 0x8C352E6E
#data 0x8C352BCC
#data 0x8C352E8C
#data 0x8C352E8A

#align4
loc_8c1B9FEC:
#data 0x720162A2
#data 0x60E02A22
#data 0x2E007001
#data 0x600C70FF
#data 0x2234039C
#data 0x622C62E0
#data 0x8B0032C3
#data 0x2EB0

loc_8c1BA00A:
#data 0x624C
#data 0x8FED2228
#data 0x63D074FF
#data 0x71016183
#data 0xE5013318
#data 0xD22B2D30
#data 0x648C420B

#align4
loc_8c1BA024:
#data 0x233863D0
#data 0xD32A8906
#data 0x430BD428
#data 0x600D0009
#data 0x8B9A2008

#align4
loc_8c1BA038:
#data 0xDC2763D0
#data 0x8D012338
#data 0x2CE0EE01

#align4
loc_8c1BA044:
#data 0x6320D225
#data 0x89002338
#data 0x2CE0

loc_8c1BA04E:
#data 0xD324
#data 0x0009430B
#data 0x6503D323
#data 0x62319136
#data 0x3213622D
#data 0x645C8D05
#data 0x3403E004
#data 0xA0038903
#data 0x0009

loc_8c1BA06E:
#data 0x34E3
#data 0x8B00

loc_8c1BA072:
#data 0x2CE0

#align4
loc_8c1BA074:
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1BA086:
#data 0x2FE6
#data 0x2FD6EE00
#data 0x4F222FC6
#data 0x2DE0DD15
#data 0x23E0D310
#data 0x6260D614
#data 0x894E2228
#data 0x6210D113
#data 0x8B4A2228
#data 0xD30ED112
#data 0x950C6211
#data 0x22286431
#data 0x644D8D22
#data 0x89403453
#data 0xD20E4F26
#data 0x6DF66CF6
#data 0x6EF6422B
#data 0x08000180

#align4
loc_8c1BA0CC:
#data loc_8c1B6750
#data 0x8C352BCC

#align4
loc_8c1BA0D4:
#data loc_8c1B6626
#data 0x8C352E17
#data 0x8C352E0E

#align4
loc_8c1BA0E0:
#data loc_8c1B6240
#data 0x8C35279C
#data 0x8C352E00
#data 0x8C352E14
#data 0x8C352BBD
#data 0x8C352BB8

#align4
loc_8c1BA0F8:
#data loc_8c1BC780

loc_8c1BA0FC:
#data 0x891E3453
#data 0xD23526E0
#data 0x20086020
#data 0xEC018D04
#data 0x6300D033
#data 0x89042338

#align4
loc_8c1BA114:
#data 0x2D30E302
#data 0xA00AD231
#data 0x22C0

loc_8c1BA11E:
#data 0xD331
#data 0x0009430B
#data 0xE209D12D
#data 0x21C0E304
#data 0xD02C2D30
#data 0x2020

loc_8c1BA132:
#data 0xD32D
#data 0xD22D23C0
#data 0xD12722E0
#data 0x21E0

loc_8c1BA13E:
#data 0x4F26
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1BA148:
#data 0xE4002FE6
#data 0xD5284F22
#data 0xD6282540
#data 0x23386360
#data 0xD0278B39
#data 0x600C6000
#data 0x8934C808
#data 0x6000D025
#data 0xC906600C
#data 0x8B038804
#data 0x6231D323
#data 0x8B2A2228

#align4
loc_8c1BA178:
#data 0xEE01E103
#data 0x26E0E208
#data 0x2320D320
#data 0x2010D016
#data 0x22E0D217
#data 0x2340D317
#data 0xD21ED01D
#data 0x22106100
#data 0x8461D61D
#data 0xC804600C
#data 0xE1408B01
#data 0x2510

loc_8c1BA1A6:
#data 0x8461
#data 0xC806600C
#data 0x92118B01
#data 0x2520

loc_8c1BA1B2:
#data 0x846B
#data 0xC820600C
#data 0xD2168905
#data 0x0009420B
#data 0xA002D315
#data 0x2300

loc_8c1BA1C6:
#data 0xD114
#data 0x2140

loc_8c1BA1CA:
#data 0xD314
#data 0x23E0

loc_8c1BA1CE:
#data 0x4F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x000000C0
#data 0x8C352E18
#data 0x8C352E12
#data 0x8C352E01

#align4
loc_8c1BA1E4:
#data loc_8c1BCB80
#data 0x8C352E05
#data 0x8C352E04
#data 0x8C352E0C
#data 0x8C352E0F
#data 0x8C34B2A1
#data 0x8C34B2AA
#data 0x8C351784
#data 0x8C352E00
#data 0x8C352DE7
#data 0x8C352DE8
#data 0x8C34B2A9

#align4
loc_8c1BA214:
#data loc_8c1B3D76
#data 0x8C352E0B
#data 0x8C352DE9

#align4
loc_8c1BA220:
#data 0x4F22D732
#data 0x644C6470
#data 0x7FF84415
#data 0xE20E8B44
#data 0x89413423
#data 0xE100D32E
#data 0xE1062310
#data 0x622C6270
#data 0x89393213
#data 0x6500D02B
#data 0x00096053
#data 0x80F4625C
#data 0x6630D329
#data 0x3263666C
#data 0x92458901
#data 0x352C

loc_8c1BA25E:
#data 0xD327
#data 0x624C6430
#data 0x8B013263
#data 0x6143A002

#align4
loc_8c1BA26C:
#data 0x314C913C

#align4
loc_8c1BA270:
#data 0x611C655C
#data 0x8D113157
#data 0x62F22F12
#data 0x8B0D3263
#data 0x600C6070
#data 0x89028805
#data 0xA015D21B
#data 0x2240

loc_8c1BA28E:
#data 0x84F4
#data 0x600C644C
#data 0x89053400
#data 0x0009A00E

#align4
loc_8c1BA29C:
#data 0x6230D318
#data 0x8B092228

#align4
loc_8c1BA2A4:
#data 0x0009B1B6
#data 0x6030D316
#data 0x2300CB80
#data 0x7F08D215
#data 0x4F26422B

#align4
loc_8c1BA2B8:
#data 0x4F267F08
#data 0x0009000B
;-------------------------------------------------------------------------------

#align4
loc_8c1BA2C0:
#data 0x2FD62FE6
#data 0x2FC6ED00
#data 0x2FA62FB6
#data 0x2F862F96
#data 0xDC124F22
#data 0xD712DB10
#data 0xD5127FFC
#data 0xD412D80B
#data 0xD90BDA0C
#data 0xEE01A05C
#data 0x00000080
#data 0x8C352DEA
#data 0x8C352DFD
#data 0x8C352DE2
#data 0x8C352DE1
#data 0x8C352DE0
#data 0x8C352E61
#data 0x8C34B29F

#align4
loc_8c1BA308:
#data bank1c.loc_8c1c1658
#data 0x8C352E00
#data 0x8C352E01
#data 0x8C352DF0
#data 0x8C34B2CC
#data 0x8C352E11
#data 0x8C352BC8
#data 0x8C352DE4
#data 0x8C351778

#align4
loc_8c1BA32C:
#data 0x666C6650
#data 0x2F624600
#data 0x6071D239
#data 0x363C6322
#data 0x30186161
#data 0xD3372701
#data 0x60316161
#data 0x23013018
#data 0x6161D335
#data 0x32186231
#data 0xD1342321
#data 0x631260F2
#data 0x033DD133
#data 0x633D6212
#data 0x2432332C
#data 0x622D6261
#data 0x6133332C
#data 0xD02F2432
#data 0x31266202
#data 0x63428B08
#data 0x243273FF
#data 0x33286202
#data 0x6122D229
#data 0x2432331C

#align4
loc_8c1BA38C:
#data 0x6150D323
#data 0x611C6032
#data 0x01D54100
#data 0x70016050
#data 0x2500C97F

#align4
loc_8c1BA3A0:
#data 0x6350D124
#data 0x33206210
#data 0xD5238BC0
#data 0xD22325D0
#data 0x6420D020
#data 0x634C6100
#data 0x3313611C
#data 0x912C8901
#data 0x341C

loc_8c1BA3C2:
#data 0xD21C
#data 0xD11E644C
#data 0x633C6320
#data 0x63103438
#data 0x3433633C
#data 0x25E08900

#align4
loc_8c1BA3D8:
#data 0xD61AD31D
#data 0xD41B6232
#data 0xD71965B2
#data 0x61602F22
#data 0x8B072118
#data 0x6120D219
#data 0x8B032118
#data 0x6100D018
#data 0x89702118

#align4
loc_8c1BA3FC:
#data 0x615363A2
#data 0x313862F2
#data 0x89013126
#data 0x0009A0FA

#align4
loc_8c1BA40C:
#data 0x62C02A52
#data 0x8B232228
#data 0xA0282CE0
#data 0x008024D0
#data 0x8C352DD8
#data 0x8C351784
#data 0x8C351788
#data 0x8C352DD4
#data 0x8C351770
#data 0x8C351774
#data 0x8C352DE1
#data 0x8C352E4E
#data 0x8C352DE2
#data 0x8C352E32
#data 0x8C352E19
#data 0x8C352DFE
#data 0x8C352DFF
#data 0x8C352DEC
#data 0x8C352E1B
#data 0x8C352E1E

#align4
loc_8c1BA45C:
#data 0x72016240
#data 0xD3372420
#data 0x71016131
#data 0x2311

loc_8c1BA46A:
#data 0x6370
#data 0x89102338
#data 0x6170D234
#data 0x33126320
#data 0xD3338B0B
#data 0xCB026030
#data 0xD2322300
#data 0x6020E103
#data 0x2200CB10
#data 0xA0B7D230
#data 0x2212

loc_8c1BA492:
#data 0x6060
#data 0x89072008
#data 0x2830E30C
#data 0x2920924F
#data 0x23E0D32C
#data 0x22E0D22C

#align4
loc_8c1BA4A8:
#data 0x6310D12C
#data 0x89072338
#data 0xE306E27F
#data 0x29202830
#data 0x23E0D326
#data 0x22E0D226

#align4
loc_8c1BA4C0:
#data 0x6310D127
#data 0x8B012338
#data 0x0009A09A

#align4
loc_8c1BA4CC:
#data 0xE243E309
#data 0x29202830
#data 0x23E0D31F
#data 0xA091D21F
#data 0x22E0

loc_8c1BA4DE:
#data 0xD322
#data 0x6230D620
#data 0x89512228
#data 0x61B226D0
#data 0x312862A2
#data 0x6022D21E
#data 0x8B733106
#data 0x211861C0
#data 0xD11C8B04
#data 0x2CE021D0
#data 0x24D0A007

#align4
loc_8c1BA508:
#data 0x71016140
#data 0xD00C2410
#data 0x71016101
#data 0x2011

loc_8c1BA516:
#data 0x6470
#data 0x2338634C
#data 0xD309892E
#data 0x6230614C
#data 0x3213622C
#data 0xB0738B28
#data 0xD3110009
#data 0xD2116030
#data 0x420BCB80
#data 0xA0512300
#data 0x00AF0009
#data 0x8C34B320
#data 0x8C352DFF
#data 0x8C34B2A3
#data 0x8C34B2CA
#data 0x8C34B324
#data 0x8C352E05
#data 0x8C352E04
#data 0x8C352E1B
#data 0x8C352E1E
#data 0x8C352DFD
#data 0x8C352DFC
#data 0x8C352DEC
#data 0x8C352BBE
#data 0x8C34B29F

#align4
loc_8c1BA578:
#data bank1c.loc_8c1c1658

loc_8c1BA57C:
#data 0x2A2262B2
#data 0x6310D132
#data 0x891F2338
#data 0x0009A022

#align4
loc_8c1BA58C:
#data 0x6100D030
#data 0x89252118
#data 0xD72F6260
#data 0x8B032228
#data 0x62B226E0
#data 0x2722A01E

#align4
loc_8c1BA5A4:
#data 0x61F26272
#data 0x35163528
#data 0x26D08B18
#data 0x21D0D129
#data 0x2CE024D0
#data 0x2A2262B2
#data 0x20E0D027
#data 0x6320D222
#data 0x8B032338

#align4
loc_8c1BA5C8:
#data 0x2830E302
#data 0x29E0A004

#align4
loc_8c1BA5D0:
#data 0xE203E305
#data 0x29302820

#align4
loc_8c1BA5D8:
#data 0x22E0D221
#data 0x23E0D321

#align4
loc_8c1BA5E0:
#data 0x6020D221
#data 0xC820600C
#data 0xE343890A
#data 0x2810E109
#data 0xD11B2930
#data 0xD31B21E0
#data 0x2CD023E0
#data 0x2A2262B2

#align4
loc_8c1BA600:
#data 0x4F267F04
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1BA614:
#data 0x6350D515
#data 0x8B142338
#data 0xD214E17F
#data 0x2230E306
#data 0xD013E401
#data 0xE1002010
#data 0x2340D30C
#data 0x2240D20C
#data 0x2010D010
#data 0xD211D110
#data 0x22326312
#data 0x2040D010
#data 0x2540

loc_8c1BA646:
#data 0x000B
#data 0x00000009
#data 0x8C352E14
#data 0x8C352E1A
#data 0x8C352DF4
#data 0x8C352BBE
#data 0x8C352DFC
#data 0x8C352E05
#data 0x8C352E04
#data 0x8C34B2CA
#data 0x8C352E0F
#data 0x8C352E00
#data 0x8C352E01
#data 0x8C352E11
#data 0x8C34B2CC
#data 0x8C352DF0
#data 0x8C352E0E


loc_8c1BA688:
mov.l @(loc_8c1BA6F8,pc),r3 ; r3 set to 0x8C352E1C
mov 0x00,r4 ; r4 set to 0x00
mov 0x7F,r7 ; r7 set to 0x7F
mov r4,r5 ; r5 set to 0x00
mov.b r4,@r3 ; r3 ??
mov r4,r6 ; r6 set to 0x00
mov.l @(loc_8c1BA6FC,pc),r2 ; r2 set to 0x8C352DE2
mov.b r4,@r2 ; r2 ??
mov.l @(loc_8c1BA700,pc),r1 ; r1 set to 0x8C352DE1
mov.b r4,@r1 ; r1 ??
mov.l @(loc_8c1BA704,pc),r3 ; r3 set to 0x8C352DE3
mov.b r4,@r3 ; r3 ??
mov.l @(loc_8c1BA708,pc),r2 ; r2 set to 0x8C352DE4
mov.b r4,@r2 ; r2 ??
mov.l @(loc_8c1BA70C,pc),r1 ; r1 set to 0x8C352E13
mov.b r4,@r1 ; r1 ??
mov.l @(loc_8c1BA710,pc),r3 ; r3 set to 0x8C352E14
mov.b r4,@r3 ; r3 ??
mov.l @(loc_8c1BA714,pc),r0 ; r0 set to 0x8C352DD4
mov.l @(loc_8c1BA718,pc),r3 ; r3 set to 0x8C351770
mov.l @r0,r2
mov.l @(loc_8c1BA71C,pc),r0 ; r0 set to 0x8C351778
mov.l @r3,r1
mov.l @r0,r3 ; r3 ??
sub r1,r3
mov.w r3,@r2
mov.l @(loc_8c1BA720,pc),r1 ; r1 set to 0x8C352DD8

loc_8c1BA6BE:
add 0x01,r6 ; r6 set to 0x01
mov.l @r1,r0 ; r0 ??
extu.w r6,r3 ; r3 set to 0x01
cmp/gt r7,r3
mov.w r4,@(r0,r5)  ; r5 ??
bf/s loc_8c1BA6BE
add 0x02,r5
mov.l @(loc_8c1BA724,pc),r2 ; r2 set to 0x8C352E00, r2 set to 0x8C352E00
mov 0x0C,r3 ; r3 set to 0x0C, r3 set to 0x0C
mov 0x01,r5 ; r5 set to 0x01, r5 set to 0x01
mov.b r3,@r2 ; r2 ??, r2 ??
mov.w @(loc_8c1BA6F4,pc),r1 ; r1 set to 0xAF, r1 set to 0xAF
mov.l @(loc_8c1BA728,pc),r0 ; r0 set to 0x8C352E01, r0 set to 0x8C352E01
mov.b r1,@r0 ; r0 ??, r0 ??
mov.l @(loc_8c1BA72C,pc),r3 ; r3 set to 0x8C352E05, r3 set to 0x8C352E05
mov.b r5,@r3 ; r3 ??, r3 ??
mov.l @(loc_8c1BA730,pc),r2 ; r2 set to 0x8C352E04, r2 set to 0x8C352E04
mov.b r5,@r2 ; r2 ??, r2 ??
mov.l @(loc_8c1BA734,pc),r1 ; r1 set to 0x8C352E19, r1 set to 0x8C352E19
mov.b r5,@r1 ; r1 ??, r1 ??
mov.l @(loc_8c1BA738,pc),r3 ; r3 set to 0x8C352E11, r3 set to 0x8C352E11
mov.b r4,@r3 ; r3 ??? bc r4 is ???, r3 ??
mov.l @(loc_8c1BA73C,pc),r0 ; r0 set to 0x8C34B2CC, r0 set to 0x8C34B2CC
mov.l @(loc_8c1BA740,pc),r1 ; r1 set to 0x8C352DF0, r1 set to 0x8C352DF0
mov.l @r0,r2
rts
mov.l r2,@r1
;-------------------------------------------------------------------------------

loc_8c1BA6F4:
#data 0x00AF
#data 0x0000

#align4
loc_8c1BA6F8:
#data 0x8C352E1C

#align4
loc_8c1BA6FC:
#data 0x8C352DE2

#align4
loc_8c1BA700:
#data 0x8C352DE1

#align4
loc_8c1BA704:
#data 0x8C352DE3

#align4
loc_8c1BA708:
#data 0x8C352DE4

#align4
loc_8c1BA70C:
#data 0x8C352E13

#align4
loc_8c1BA710:
#data 0x8C352E14

#align4
loc_8c1BA714:
#data 0x8C352DD4

#align4
loc_8c1BA718:
#data 0x8C351770

#align4
loc_8c1BA71C:
#data 0x8C351778

#align4
loc_8c1BA720:
#data 0x8C352DD8

#align4
loc_8c1BA724:
#data 0x8C352E00

#align4
loc_8c1BA728:
#data 0x8C352E01

#align4
loc_8c1BA72C:
#data 0x8C352E05

#align4
loc_8c1BA730:
#data 0x8C352E04

#align4
loc_8c1BA734:
#data 0x8C352E19

#align4
loc_8c1BA738:
#data 0x8C352E11

#align4
loc_8c1BA73C:
#data 0x8C34B2CC

#align4
loc_8c1BA740:
#data 0x8C352DF0

#align4
loc_8c1BA744:
#data 0x6030D305
#data 0xE10E600C
#data 0x89353012
#data 0x61034000
#data 0x001DC702
#data 0x00090023
#data 0x8C352DEA
#data 0x00240020
#data 0x002E0028
#data 0x003A0034
#data 0x00440040
#data 0x004C0048
#data 0x00540050
#data 0x005C0058
#data 0x0009A021
#data 0x0009A11A
#data 0x412BD128
#data 0xD1280009
#data 0x0009412B
#data 0x412BD127
#data 0xD1270009
#data 0x0009412B
#data 0x0009A25B
#data 0x0009A272
#data 0x0009A2A3
#data 0x0009A37C
#data 0x0009A392
#data 0x0009A3CB
#data 0x0009A3D6
#data 0x0009A7A4

#align4
loc_8c1BA7BC:
#data 0x412BD11E
#data 0x000B0009
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1BA7C6:
#data 0x2FE6
#data 0xED002FD6
#data 0x2FB62FC6
#data 0xD31A2FA6
#data 0xD61A23D0
#data 0x22286261
#data 0xA0E48B01
#data 0x0009

loc_8c1BA7E2:
#data 0xEC01
#data 0x22D0D217
#data 0xD417D018
#data 0x24126102
#data 0xD5176361
#data 0x60422531
#data 0x6000D616
#data 0xC902600C
#data 0x002930C7
#data 0xD1142600
#data 0x61606310
#data 0x2610213A
#data 0x63006042
#data 0x23C8633C
#data 0x60428920
#data 0x24027001
#data 0xA0206351
#data 0x000073FF

#align4
loc_8c1BA828:
#data loc_8c1BB7A8

loc_8c1BA82C:
#data loc_8c1BB944

loc_8c1BA830:
#data loc_8c1BB894

loc_8c1BA834:
#data loc_8c1BB9D6

loc_8c1BA838:
#data loc_8c1BB7A4
#data 0x8C352E04
#data 0x8C352E6C
#data 0x8C352DDF
#data 0x8C352BC0
#data 0x8C352E68
#data 0x8C352DDC
#data 0x8C352E03
#data 0x8C352E16

#align4
loc_8c1BA85C:
#data 0x70026042
#data 0x63512402
#data 0x73FE

loc_8c1BA866:
#data 0x2531
#data 0x76016642
#data 0x76FF2462
#data 0x6660D233
#data 0x23386320
#data 0x6E6C8F08
#data 0x3E30935A
#data 0x90588904
#data 0x89013E00
#data 0x0009A08D

#align4
loc_8c1BA88C:
#data 0x63E3D72F
#data 0x23C8DA2C
#data 0x8B1DDB2C
#data 0x62E36142
#data 0x71014221
#data 0x71FF2412
#data 0x64106351
#data 0x73FEE101
#data 0x21492531
#data 0x2320D327
#data 0x4201624C
#data 0x63B02710
#data 0x3320633C
#data 0xE0018D05
#data 0x2AD0644C
#data 0xA0014401
#data 0x2B40

loc_8c1BA8CE:
#data 0x2AC0

#align4
loc_8c1BA8D0:
#data 0x0009A06C

#align4
loc_8c1BA8D4:
#data 0x20E9E003
#data 0x8B3F8803
#data 0x2269E210
#data 0x92292720
#data 0x26296370
#data 0x606C633C
#data 0x88034309
#data 0x8D174309
#data 0x880F2730
#data 0x88438912
#data 0x88638914
#data 0x886F8914
#data 0x9118890A
#data 0x89113010
#data 0x30109112
#data 0x91138920
#data 0x891F3010
#data 0x0009A045

#align4
loc_8c1BA91C:
#data 0xE006A046

#align4
loc_8c1BA920:
#data 0xE007A044

#align4
loc_8c1BA924:
#data 0xE008A042

#align4
loc_8c1BA928:
#data 0xE009A040

#align4
loc_8c1BA92C:
#data 0xE00AA03E

#align4
loc_8c1BA930:
#data 0xE00BA03C
#data 0x00BF00AF
#data 0x008700EF
#data 0x000000E3
#data 0x8C352E1A
#data 0x8C352E10
#data 0x8C352DE0
#data 0x8C352E02
#data 0x8C352DDF

#align4
loc_8c1BA954:
#data 0xE00CA02A

#align4
loc_8c1BA958:
#data 0xE00DA028

#align4
loc_8c1BA95C:
#data 0xE3016542
#data 0x24527501
#data 0x655075FF
#data 0x27302359
#data 0x63B0645C
#data 0x633C4401
#data 0x8D033340
#data 0x2B4060E3
#data 0x2AD0A001

loc_8c1BA980:
#data 0x2AC0

loc_8c1BA982:
#data 0x880D
#data 0xA0118B01
#data 0xE005

loc_8c1BA98A:
#data 0x8805
#data 0xA00D8B01
#data 0xE003

loc_8c1BA992:
#data 0x60E3
#data 0x88090009
#data 0xA0078B01
#data 0xE004

loc_8c1BA99E:
#data 0x8801
#data 0xA0038B01
#data 0xE002

loc_8c1BA9A6:
#data 0xA001
#data 0xE00E

loc_8c1BA9AA:
#data 0xE000

#align4
loc_8c1BA9AC:
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x2FD62FE6
#data 0x2FC6ED01
#data 0x2FA62FB6
#data 0x2F862F96
#data 0x4F22D218
#data 0xD4166320
#data 0x8D022338
#data 0xA135EE00
#data 0xD21824E0
#data 0x6320DC16
#data 0xDB14D913
#data 0x89012338
#data 0x0009A101
#data 0xD614D317
#data 0x64606530
#data 0xDA14615C
#data 0xD812644C
#data 0x89013140
#data 0x0009A081
#data 0x6011D112
#data 0x21017001
#data 0x70016060
#data 0x2600C97F
#data 0xD0102AE0
#data 0x6102D40E
#data 0xD6102412
#data 0xD510DA0E
#data 0x67D3A033
#data 0x8C352E18
#data 0x8C352E0E
#data 0x8C352E02
#data 0x8C352E00
#data 0x8C352E01
#data 0x8C352E14
#data 0x8C352DE3
#data 0x8C352DDC
#data 0x8C352E12
#data 0x8C352DDF
#data 0x8C34B31A
#data 0x8C352BD0
#data 0x8C352794
#data 0x8C35178A
#data 0x8C352BC0
#data 0x8C35279C
#data 0x73016342
#data 0x62622432
#data 0x26227201
#data 0x612072FF
#data 0x63512314
#data 0x25317301
#data 0x6142D035
#data 0x31266202
#data 0x77018F01
#data 0x638124A2
#data 0x633D627D
#data 0x8BE73237
#data 0x6342D230
#data 0x61512232
#data 0x611D9357
#data 0x891E3133
#data 0x6010D12D
#data 0x8B142008
#data 0x22286290
#data 0xA0968901
#data 0xD12B0009
#data 0x6311D029
#data 0x32306201
#data 0xD3298905
#data 0x22286230
#data 0xA0A28B01
#data 0xE2020009
#data 0xA0132B20
#data 0xD3252CD0
#data 0x430BD220
#data 0xA09822E0
#data 0xD01E0009
#data 0xD22220E0
#data 0x639022D0
#data 0x89012338
#data 0x0009A087
#data 0xE103E305
#data 0x2C302B10
#data 0xA04FD21D
#data 0x605C22E0
#data 0x89013043
#data 0x350C9022
#data 0x655CD21A
#data 0x63203548
#data 0x3533633C
#data 0xA0918B01
#data 0xD2170009
#data 0x0009420B
#data 0x6030D316
#data 0x2300CB80
#data 0x6210D115
#data 0x8B382228
#data 0xE50928E1
#data 0x22286290
#data 0xE4048D24
#data 0x222862A0
#data 0x2AD08B4D
#data 0xA05E2B40
#data 0x0F002C50
#data 0x00000080
#data 0x8C35278C
#data 0x8C352794
#data 0x8C352BBD
#data 0x8C352BC8
#data 0x8C351784
#data 0x8C352E13

#align4
loc_8c1BAB70:
#data loc_8c1BC780
#data 0x8C352E14
#data 0x8C352E05
#data 0x8C352E2F

#align4
loc_8c1BAB80:
#data bank1c.loc_8c1c1658
#data 0x8C34B29F
#data 0x8C352E61
#data 0x200860A0
#data 0xD2778B41
#data 0x70016021
#data 0x2AD02201
#data 0x2C502B40
#data 0x22D0D274
#data 0xA036D374
#data 0x60A023E0
#data 0x8B162008
#data 0x6201D072
#data 0x8B0D2228
#data 0xE10DD26D
#data 0x73016321
#data 0xE3052231
#data 0x22D0D26E
#data 0x2C102B30
#data 0x23D0D369
#data 0x21E0D169
#data 0x430BD36B
#data 0xA01C0009
#data 0x28E10009
#data 0x20086090
#data 0xE3028917
#data 0xA0102B30
#data 0xD3662CD0
#data 0x21186130
#data 0xA0038B01
#data 0xD16224D0
#data 0x24E0410B
#data 0x23386390
#data 0xE2058907
#data 0x2B30E303
#data 0xD3592C20
#data 0xD25923E0
#data 0xD15D22D0
#data 0x23386310
#data 0xD05C8B12
#data 0x23386300
#data 0xD45B8B0E
#data 0xD35B24E0
#data 0xD35C23E0
#data 0x6030D15A
#data 0x32006210
#data 0x24D08904
#data 0xD35AD259
#data 0x23026022
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0xE2636EF6
#data 0xE10AD354
#data 0xD0542310
#data 0x20204F22
#data 0xD253E000
#data 0x6120D343
#data 0xD1412310
#data 0x430BD351
#data 0xD3452100
#data 0x2320E200
#data 0x6020D24F
#data 0xCB104F26
#data 0x2200000B
;-------------------------------------------------------------------------------
#data 0xE600D44D
#data 0x6340D749
#data 0x8D102338
#data 0xD24BE501
#data 0x23386320
#data 0x63708B0B
#data 0x89082338
#data 0x2350D348
#data 0x2250D248
#data 0x6010D143
#data 0x2100CB02
#data 0xD2462460
#data 0x23386320
#data 0x64708D10
#data 0x6310D140
#data 0x8B0B2338
#data 0x2448644C
#data 0xD23E890D
#data 0xD33A2250
#data 0xCB026030
#data 0xD13D2300
#data 0x2160A005
#data 0x2448644C
#data 0xAC958B01
#data 0x000B0009
#data 0x2FE60009
#data 0x2FD6E501
#data 0x2FB62FC6
#data 0x4F22D437
#data 0xD7356042
#data 0x600C6000
#data 0x8820C920
#data 0xEE008F04
#data 0xD23327E0
#data 0x22E0A001
#data 0x60422750
#data 0xD631E3F9
#data 0x24027001
#data 0x600070FF
#data 0xC980600C
#data 0x2600403C
#data 0xDC2D6070
#data 0x8801600C
#data 0xA0948901
#data 0x60420009
#data 0x6000D72A
#data 0x2700C980
#data 0x70016042
#data 0x70FF2402
#data 0xD3276000
#data 0x2300C940
#data 0xDB26D227
#data 0x600D6021
#data 0x8B4B8803
#data 0x70016042
#data 0x70FF2402
#data 0xA0486100
#data 0x00002B10
#data 0x8C34B31E
#data 0x8C352E05
#data 0x8C352E04
#data 0x8C352BB8
#data 0x8C352BBD

#align4
loc_8c1BAD84:
#data loc_8c1BCBEC
#data 0x8C352E61
#data 0x8C352E13
#data 0x8C352E10
#data 0x8C352DFC
#data 0x8C352E11
#data 0x8C352DE1
#data 0x8C352DE2
#data 0x8C34B2CC
#data 0x8C352DF0
#data 0x8C352E00
#data 0x8C352E01
#data 0x8C352E02

#align4
loc_8c1BADB8:
#data loc_8c1BC6A4
#data 0x8C34B2A3
#data 0x8C352E1B
#data 0x8C352E03
#data 0x8C352E1C
#data 0x8C352E1D
#data 0x8C352E1E
#data 0x8C352E15
#data 0x8C352BC0
#data 0x8C352E0D
#data 0x8C352E09
#data 0x8C352E0E
#data 0x8C352E08
#data 0x8C352E07
#data 0x8C352E0A
#data 0x8C352DDC
#data 0x6310D184
#data 0xDD842B30
#data 0x63D06260
#data 0x8B1A3230
#data 0xCA0160D0
#data 0x63702D00
#data 0x89032338
#data 0x430BD37F
#data 0x2CE02C50
#data 0x420BD27E
#data 0xD27EE412
#data 0x632064B0
#data 0x8D052338
#data 0xD37C644C
#data 0xE500430B
#data 0x0009A003
#data 0x430BD37A
#data 0xD37A0009
#data 0xD17AE008
#data 0xE3036230
#data 0xD2792120
#data 0xD0792200
#data 0xD1792030
#data 0x63D021E0
#data 0x2230D278
#data 0xA01BD078
#data 0xD77820E0
#data 0x63706260
#data 0x633C622C
#data 0x3230235A
#data 0x60708B12
#data 0x2700CA01
#data 0x6142D273
#data 0x633D6321
#data 0x331C73FE
#data 0xD0712432
#data 0x63C020E0
#data 0x89032338
#data 0x430BD360
#data 0x2CE00009
#data 0x6BF64F26
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0xE063D260
#data 0x6320D160
#data 0x2130E20A
#data 0xD360E100
#data 0xE3012300
#data 0x2020D05D
#data 0x2210D25E
#data 0x2130D163
#data 0x6030D363
#data 0x2300CB02
#data 0xE206D062
#data 0x2022000B
;-------------------------------------------------------------------------------
#data 0x4F222FE6
#data 0x6030D35E
#data 0x2300CB10
#data 0x6240D45A
#data 0x8D092228
#data 0xE201EE00
#data 0xD15B24E0
#data 0xD2482120
#data 0x0009420B
#data 0x23E0D358
#data 0xD54AD458
#data 0x22286240
#data 0xD257890E
#data 0x23386320
#data 0x63508B0A
#data 0x89072338
#data 0xE301D24E
#data 0xD34E2230
#data 0xCB026030
#data 0x24E02300
#data 0x6240D450
#data 0x890B2228
#data 0x6320D24D
#data 0x8B072338
#data 0x23386350
#data 0x4F268904
#data 0xD33524E0
#data 0x6EF6432B
#data 0x000B4F26
#data 0xE1066EF6
#data 0xE37FD239
#data 0xE3012230
#data 0xE200D036
#data 0xD1372010
#data 0xD3332130
#data 0x2320000B
;-------------------------------------------------------------------------------
#data 0x2FD62FE6
#data 0x2FC6ED01
#data 0x2FA62FB6
#data 0xE9002F96
#data 0xD33F2F86
#data 0x4F22DE3D
#data 0x2390D83B
#data 0x7FD4D23D
#data 0xD03D22D0
#data 0x71036102
#data 0x73016313
#data 0x73FF2E32
#data 0xD33A6130
#data 0x60D32310
#data 0x80F80009
#data 0x0F94E018
#data 0x0F94E024
#data 0x0F94E028
#data 0x0F94E020
#data 0xE01CEB0F
#data 0x0F9467B3
#data 0x1F35D332
#data 0xD2327302
#data 0x1F331F24
#data 0xD633DC32
#data 0xD533D434
#data 0xA16FDA2F
#data 0x62E27771
#data 0x2E227201
#data 0x632072FF
#data 0x62E22630
#data 0x2E227201
#data 0x632072FF
#data 0x62A02A30
#data 0x720284F8
#data 0x80F8302C
#data 0x600C6060
#data 0x89018803
#data 0x0009A08C
#data 0x0FD4E018
#data 0xD31F6093
#data 0x80F4A056
#data 0x8C34B2C1
#data 0x8C352DE6

#align4
loc_8c1BB014:
#data loc_8c1BC6A4

loc_8c1BB018:
#data loc_8c1B3454
#data 0x8C352E07

#align4
loc_8c1BB020:
#data bank1a.loc_8c1a0E8A

loc_8c1BB024:
#data loc_8c1BCF34
#data 0x8C352E02
#data 0x8C352E04
#data 0x8C352E00
#data 0x8C352E01
#data 0x8C352E05
#data 0x8C352DE5
#data 0x8C352DE9
#data 0x8C352DE7
#data 0x8C352DDC
#data 0x8C352E0F
#data 0x8C352E1C
#data 0x8C34B2A3
#data 0x8C34B324
#data 0x8C352E0E
#data 0x8C352E1E
#data 0x8C352E03
#data 0x8C352E1B
#data 0x8C352E56
#data 0x8C352BCC
#data 0x8C352E19
#data 0x8C352E1A
#data 0x8C352BC0
#data 0x8C352E21
#data 0x8C352E33
#data 0x8C352E34
#data 0x8C352E24
#data 0x8C352E2E
#data 0x8C352E23
#data 0x8C352E2A
#data 0x8C352E26
#data 0x61F263E2
#data 0x2E327301
#data 0x623073FF
#data 0x84F42120
#data 0x80F47001
#data 0x730163F2
#data 0x63A02F32
#data 0x303284F4
#data 0x50F58BEE
#data 0x6000D36C
#data 0x2300C904
#data 0x2008600C
#data 0xD26A8903
#data 0x6120D368
#data 0x50F42310
#data 0x6000D368
#data 0x2300C920
#data 0x2008600C
#data 0xD2668903
#data 0x6120D364
#data 0x50F32310
#data 0x23386300
#data 0xA0018901
#data 0xE300E301
#data 0x2130D161
#data 0x2338633C
#data 0xA0D18B01
#data 0xD25F0009
#data 0x6020D35D
#data 0x2300A0CC
#data 0x8B2B8805
#data 0x0FD4E024
#data 0x730163E2
#data 0x73FF2E32
#data 0x622C6230
#data 0x63F12F21
#data 0x2F314318
#data 0x720162E2
#data 0x72FF2E22
#data 0x633C6320
#data 0x62512531
#data 0x223B63F1
#data 0x61512521
#data 0x4109611D
#data 0x25114101
#data 0x23386351
#data 0x25718B00
#data 0x6321D24C
#data 0x63512F31
#data 0x313261F1
#data 0xA0A18B01
#data 0x63F10009
#data 0x2531A09E
#data 0x600C6060
#data 0x8B3A8806
#data 0x0FD4E028
#data 0x730163E2
#data 0x73FF2E32
#data 0x622C6230
#data 0x63F12F21
#data 0x2F314318
#data 0x720162E2
#data 0x72FF2E22
#data 0x633C6320
#data 0x62412431
#data 0x223B63F1
#data 0x61412421
#data 0x4109611D
#data 0x24114101
#data 0x23386341
#data 0x24718B00
#data 0x6141D235
#data 0x33166321
#data 0x61418B04
#data 0x7103D333
#data 0x2311A070
#data 0xD3316021
#data 0x23017003
#data 0x611D6121
#data 0x89053173
#data 0x611D6141
#data 0x8B633177
#data 0x2471A062
#data 0xA05F6321
#data 0x88072431
#data 0xE0208B19
#data 0x63E20FD4
#data 0x2E327301
#data 0xD12673FF
#data 0x21206230
#data 0x23386310
#data 0xD0238B01
#data 0xD22320B0
#data 0x2F306320
#data 0x61F0D020
#data 0x31326300
#data 0xD31E8946
#data 0xA04361F0
#data 0x60602310
#data 0x8808600C
#data 0xE01C8B3E
#data 0x63E20FD4
#data 0x2E327301
#data 0x623073FF
#data 0x63C02C20
#data 0x8B002338
#data 0xD2162CB0
#data 0x632061C0
#data 0x8B033316
#data 0x61C0D314
#data 0x2310A02A
#data 0x6320D012
#data 0x61202030
#data 0x31B3611C
#data 0x61C08920
#data 0x31B7611C
#data 0xA01D8B1E
#data 0x00002CB0
#data 0x8C352E61
#data 0x8C352E60
#data 0x8C352E63
#data 0x8C352E62
#data 0x8C352E5F
#data 0x8C352E5E
#data 0x8C352E2C
#data 0x8C352E28
#data 0x8C352E64
#data 0x8C352E2F
#data 0x8C352E31
#data 0x8C352E30
#data 0x8C352E32
#data 0x2C306320
#data 0x84F8D239
#data 0x30366320
#data 0xAE8A8901
#data 0xE0180009
#data 0x222802FC
#data 0xD3358B05
#data 0xD2352390
#data 0xD1352290
#data 0xE0242190
#data 0x233803FC
#data 0x25718B00
#data 0x03FCE028
#data 0x8B0E2338
#data 0xD2302471
#data 0x633D6321
#data 0x8B043377
#data 0xD32E6141
#data 0xA0047103
#data 0x60212311
#data 0x7003D32B
#data 0xE0202301
#data 0x222802FC
#data 0xD2298B01
#data 0xE01C22B0
#data 0x233803FC
#data 0x2CB08B0C
#data 0x6320D226
#data 0x33B7633C
#data 0xD3258B03
#data 0xA00361C0
#data 0xD0232310
#data 0x20306320
#data 0x6C416B51
#data 0x63CD62BD
#data 0x8B023327
#data 0xA002D21F
#data 0xD11E22B1
#data 0x63E221C1
#data 0x93246230
#data 0x3230622C
#data 0xA1018901
#data 0xD21A0009
#data 0x6121E023
#data 0x3107611D
#data 0xA0F98901
#data 0x62E20009
#data 0x2E227201
#data 0x632072FF
#data 0x2130D114
#data 0x720162E2
#data 0x72FF2E22
#data 0xD0066320
#data 0x62E22030
#data 0x2E227201
#data 0x632072FF
#data 0x22306203
#data 0xA089DB0D
#data 0x00F065D3
#data 0x8C352E21
#data 0x8C352E61
#data 0x8C352E5F
#data 0x8C352E63
#data 0x8C352E28
#data 0x8C352E64
#data 0x8C352E2F
#data 0x8C352E30
#data 0x8C352E32
#data 0x8C352E66
#data 0x8C352DDC
#data 0x8C352E22
#data 0x8C352E58
#data 0x720162E2
#data 0x72FF2E22
#data 0x26306320
#data 0x720162E2
#data 0x72FF2E22
#data 0x2A306320
#data 0x636062A0
#data 0x23387202
#data 0x8B0C352C
#data 0x64D3A004
#data 0x740162E2
#data 0x2E227201
#data 0x634C62A0
#data 0x3327622C
#data 0xA04F8BF6
#data 0x64600009
#data 0x8801604C
#data 0x64038F1B
#data 0x7C016CE2
#data 0x7CFF2EC2
#data 0x6CC0D13D
#data 0xD33B6210
#data 0x8D052228
#data 0xD23B6431
#data 0x2C496CCC
#data 0x22C1A03A
#data 0x2F0260CC
#data 0x63F24000
#data 0x4321C903
#data 0xD335303C
#data 0xA02F2049
#data 0x60432301
#data 0x88020009
#data 0x62E28B18
#data 0x2E227201
#data 0x632072FF
#data 0x4318633C
#data 0x62E22831
#data 0x2E227201
#data 0x632072FF
#data 0x633C6281
#data 0x2831232B
#data 0x64B16281
#data 0x634D622D
#data 0x89133323
#data 0x2841A012
#data 0x8B0F8803
#data 0x720162E2
#data 0x72FF2E22
#data 0xD2226320
#data 0x2231633C
#data 0xD121633D
#data 0x624D6411
#data 0x89013233
#data 0x2241D21D
#data 0x635CD11E
#data 0x622C6210
#data 0x8B8B3323
#data 0x6320D21C
#data 0x2378633C
#data 0xD116894C
#data 0x20086011
#data 0xD2198948
#data 0xD31322D0
#data 0x6531D418
#data 0x4515655D
#data 0xE0038B2E
#data 0x892B3503
#data 0xCB026040
#data 0xD10C2400
#data 0x6210D30C
#data 0xD5116431
#data 0x8D042228
#data 0x24D8644D
#data 0xA0068B04
#data 0xE2020009
#data 0x89022428
#data 0xA0026050
#data 0x6050CB04
#data 0xA016C9FB
#data 0x00002500
#data 0x8C352E54
#data 0x8C352E16
#data 0x8C352E52
#data 0x8C352E5A
#data 0x8C352E5C
#data 0x8C352E21
#data 0x8C34B2AB
#data 0x8C352E50
#data 0x8C34B2A5
#data 0xC9FD6040
#data 0xD3392400
#data 0xCB206030
#data 0xD2382300
#data 0xCB806020
#data 0xD1372200
#data 0xD238D337
#data 0x65816611
#data 0x6431420B
#data 0x2490D436
#data 0x2590D536
#data 0x623063E2
#data 0x622C935B
#data 0x8B033230
#data 0x841161E2
#data 0x8B032008
#data 0x843263E2
#data 0x894D2008
#data 0x720362E2
#data 0x60232E22
#data 0x60000009
#data 0x8801600C
#data 0x62E28B17
#data 0x600C8421
#data 0x8B128803
#data 0x842262E2
#data 0x884D600C
#data 0x62E28B0D
#data 0x600C8423
#data 0x8B08884D
#data 0x842462E2
#data 0x8841600C
#data 0x24D08B03
#data 0x720562E2
#data 0x60E22E22
#data 0x600C6000
#data 0x8B278802
#data 0x842162E2
#data 0x8805600C
#data 0x62E28B22
#data 0x600C8422
#data 0x8B1D884D
#data 0x842362E2
#data 0x8849600C
#data 0x62E28B18
#data 0x600C8424
#data 0x8B138858
#data 0x6000D012
#data 0xC810600C
#data 0x25D08900
#data 0x6230D310
#data 0x8B062228
#data 0xD40F62E2
#data 0x80468425
#data 0x842662E2
#data 0x63E28047
#data 0x2E327307
#data 0xA01CD50B
#data 0x00FFE402
#data 0x8C34B2A3
#data 0x8C34B2A5
#data 0x8C352E5A
#data 0x8C352E52

#align4
loc_8c1BB630:
#data loc_8c1BE034
#data 0x8C352E20
#data 0x8C352E8D
#data 0x8C34B2B4
#data 0x8C352E16
#data 0x8C352E8E
#data 0x8C352DDC
#data 0x7401D31F
#data 0x72016232
#data 0x62512322
#data 0x622D634C
#data 0x8BF53327
#data 0x6230D31B
#data 0x89092228
#data 0xE20CD11A
#data 0xD21A2120
#data 0x2200902A
#data 0xD11AD319
#data 0x2390A01B
#data 0x6020D219
#data 0x89052008
#data 0x20D0D018
#data 0xD319D418
#data 0xE50A430B
#data 0xE206D310
#data 0x2320E17F
#data 0x2010D00F
#data 0x22D0D20F
#data 0x23D0D30F
#data 0x2190D113
#data 0xD314D013
#data 0x23226202
#data 0x7F2CD113
#data 0x4F2621D0
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x000000AF
#data 0x8C352BC0
#data 0x8C352E03
#data 0x8C352E00
#data 0x8C352E01
#data 0x8C352E05
#data 0x8C352E04
#data 0x8C352E5F
#data 0x8C34CF68
#data 0x8C34CF6C

#align4
loc_8c1BB6F0:
#data loc_8c1B3EEC
#data 0x8C352E11
#data 0x8C34B2CC
#data 0x8C352DF0
#data 0x8C352E0F
#data 0x7FFCD23C
#data 0x23386320
#data 0xD43B8948
#data 0x23386340
#data 0xE3008939
#data 0x2430E501
#data 0x2F506453
#data 0xD038D137
#data 0x20326312
#data 0x6351D537
#data 0x633D624D
#data 0x8D0E3233
#data 0x63F07401
#data 0x2F307301
#data 0xD23173FF
#data 0x6122633C
#data 0x22127101
#data 0x621071FF
#data 0x3320622C
#data 0xD12F89EB
#data 0xD22D74FF
#data 0x342C6311
#data 0x644D633D
#data 0x8B0E3430
#data 0x70FF60F0
#data 0x600C2F00
#data 0x6322D225
#data 0x223273FF
#data 0x622C6230
#data 0x8B023020
#data 0x432BD325
#data 0xD3257F04
#data 0x432BE403
#data 0xD3247F04
#data 0x600C6030
#data 0x8B058801
#data 0xE00DD122
#data 0xD0222100
#data 0x2020922A
#data 0x7F04000B
;-------------------------------------------------------------------------------

loc_8c1BB7A4:
rts
nop
;-------------------------------------------------------------------------------

loc_8c1BB7A8:
mov.l r14,@-r15
mov 0x00,r14 ; r14 set to 0x00
mov.l r13,@-r15
mov.l @(loc_8c1BB828,pc),r3 ; r3 set to 0x8C352E13
sts.l pr,@-r15
mov.b r14,@r3 ; r3 ??
mov.l @(loc_8c1BB81C,pc),r2 ; r2 set to 0x8C352E03
mov.b @r2,r4
extu.b r4,r1
tst r1,r1
bt/s loc_8c1BB840
mov 0x01,r13 ; r13 set to 0x01
mov.l @(loc_8c1BB82C,pc),r1 ; r1 set to 0x8C352E02
mov.b @r1,r0
tst r0,r0
bt loc_8c1BB840
mov.l @(loc_8c1BB830,pc),r3 ; r3 set to 0x8C1BCB80
jsr @r3
nop
mov.l @(loc_8c1BB834,pc),r3 ; r3 set to 0x8C352E14
mov.l @(loc_8c1BB824,pc),r5 ; r5 set to 0x8C352E01
mov.b @r3,r2 ; r2 ??
mov.l @(loc_8c1BB820,pc),r4 ; r4 set to 0x8C352E00
tst r2,r2
bf loc_8c1BB7E2
mov 0x02,r2 ; r2 set to 0x02
mov.b r2,@r4 ; r4 ??
bra loc_8c1BB7EA
mov.b r13,@r5

loc_8c1BB7E2:
mov 0x05,r1 ; r1 set to 0x05
mov 0x03,r2 ; r2 set to 0x03
mov.b r2,@r4
mov.b r1,@r5

loc_8c1BB7EA:
mov.l @(loc_8c1BB838,pc),r3 ; r3 set to 0x8C352E05, r3 set to 0x8C352E05
mov.b r14,@r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???
mov.l @(loc_8c1BB83C,pc),r2 ; r2 set to 0x8C352E04, r2 set to 0x8C352E04
bra loc_8c1BB862
mov.b r13,@r2
#data 0x000000E3
#data 0x8C352E63
#data 0x8C352E1F
#data 0x8C352BC0
#data 0x8C352BCC
#data 0x8C352DDC
#data 0x0000FFFF
#data 0x8C352E66

#align4
loc_8c1BB814:
#data bank1c.loc_8c1c1664

loc_8c1BB818:
#data bank1c.loc_8c1c166A

loc_8c1BB81C:
#data 0x8C352E03

#align4
loc_8c1BB820:
#data 0x8C352E00

#align4
loc_8c1BB824:
#data 0x8C352E01

#align4
loc_8c1BB828:
#data 0x8C352E13

#align4
loc_8c1BB82C:
#data 0x8C352E02

#align4
loc_8c1BB830:
#data loc_8c1BCB80

loc_8c1BB834:
#data 0x8C352E14

#align4
loc_8c1BB838:
#data 0x8C352E05

#align4
loc_8c1BB83C:
#data 0x8C352E04

#align4
loc_8c1BB840:
#data 0x2448644C
#data 0xD1738B0D
#data 0x23386310
#data 0xD0728909
#data 0x23386300
#data 0xD1718905
#data 0x6310D071
#data 0xD26E2030
#data 0x22E0

loc_8c1BB862:
#data 0xD16D
#data 0x23386310
#data 0xD06E8B10
#data 0x23386300
#data 0xD46D8B0C
#data 0xD26D24E0
#data 0x6320D069
#data 0x33106100
#data 0x24D08904
#data 0xD26BD36A
#data 0x22126132

#align4
loc_8c1BB88C:
#data 0x6DF64F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1BB894:
#data 0x4F222FE6
#data 0x430BD367
#data 0xD267EE00
#data 0x73016321
#data 0xD1662231
#data 0x22286210
#data 0xD3658B05
#data 0xD2656030
#data 0x420BCB80
#data 0x2300

loc_8c1BB8BA:
#data 0xD361
#data 0xD15623E0
#data 0x6210D556
#data 0xD659D756
#data 0x8F062228
#data 0x27406450
#data 0x26206250
#data 0xA011D054
#data 0x20E0

loc_8c1BB8DA:
#data 0xD05C
#data 0x22286200
#data 0xD24C8B0B
#data 0x23386320
#data 0x27408907
#data 0x26306350
#data 0x22E0D249
#data 0xA022D34C
#data 0x23E0

loc_8c1BB8FA:
#data 0x2640

#align4
loc_8c1BB8FC:
#data 0x6320D253
#data 0x891C2338
#data 0x6310D143
#data 0x89182338
#data 0x430BD350
#data 0xD3500009
#data 0x22286230
#data 0xD34F8B06
#data 0xE101E202
#data 0xD04E2320
#data 0x2010A006

#align4
loc_8c1BB928:
#data 0xE105D24B
#data 0x2230E303
#data 0x2010D04A

#align4
loc_8c1BB934:
#data 0xE201D34A
#data 0xD14A23E0
#data 0x2120

loc_8c1BB93E:
#data 0x4F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1BB944:
#data 0xD3482FE6
#data 0x60304F22
#data 0x8801600C
#data 0xEE018D02
#data 0x21E0D13A

#align4
loc_8c1BB958:
#data 0x6430D33C
#data 0x2228624C
#data 0xD22C891A
#data 0x21186120
#data 0xD1398916
#data 0x0009410B
#data 0xD53AD238
#data 0xD4386320
#data 0x8F042338
#data 0xE302E200
#data 0xA0042430
#data 0x25E0

loc_8c1BB986:
#data 0xE305
#data 0x2410E103
#data 0x2530

loc_8c1BB98E:
#data 0xD134
#data 0xD3342120
#data 0x23E0A012

#align4
loc_8c1BB998:
#data 0x2448644C
#data 0xD11D8B0E
#data 0x22286210
#data 0xD01C890A
#data 0x22286200
#data 0xD11B8906
#data 0xD01BE300
#data 0x20206210
#data 0x2230D217

#align4
loc_8c1BB9BC:
#data 0x6100D016
#data 0x8B052118
#data 0x21E0D118
#data 0xD01AD219
#data 0x20326322

#align4
loc_8c1BB9D0:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1BB9D6:
#data 0xD119
#data 0x73016311
#data 0xD10D2131
#data 0x22286210
#data 0xD00C8B13
#data 0x22286200
#data 0xD1148B0F
#data 0xE401E200
#data 0xD0092120
#data 0x6300D21C
#data 0xD31C2230
#data 0xD10B2340
#data 0x6212D00B
#data 0xD3072022
#data 0x2340

loc_8c1BBA0E:
#data 0x000B
#data 0x00000009
#data 0x8C352E02
#data 0x8C352E11
#data 0x8C352DE0
#data 0x8C352DE2
#data 0x8C352E10
#data 0x8C352DFC
#data 0x8C352DE1
#data 0x8C34B2CC
#data 0x8C352DF0

#align4
loc_8c1BBA38:
#data loc_8c1B61E4
#data 0x8C34B322
#data 0x8C352E13
#data 0x8C34B29F

#align4
loc_8c1BBA48:
#data bank1c.loc_8c1c165E
#data 0x8C352E03

#align4
loc_8c1BBA50:
#data loc_8c1BCB80
#data 0x8C352E14
#data 0x8C352E00
#data 0x8C352E01
#data 0x8C352E05
#data 0x8C352E04
#data 0x8C352E0D
#data 0x8C352BBC
#data 0x8C352BBE


loc_8c1BBA74:
mov.l r14,@-r15
mov 0x01,r14 ; r14 set to 0x01
mov.l @(loc_8c1BBAB0,pc),r3 ; r3 set to 0x8C352E16
mov.l @(loc_8c1BBAAC,pc),r1 ; r1 set to 0x8C352E05
mov.b @r3,r0
mov.b @r1,r2
tst r0,r0
movt r0
extu.b r2,r2
xor r0,r2
mov.l @(loc_8c1BBAB4,pc),r0 ; r0 set to 0x8C352E06
shll r2
add 0x01,r2
mov.b r2,@r0 ; r0 ??? bc r2 is ???
mov.l @(loc_8c1BBAB8,pc),r3 ; r3 set to 0x8C352E00
sts.l pr,@-r15
mov.b @r3,r0
extu.b r0,r0
mov 0x0E,r1 ; r1 set to 0x0E
cmp/hs r1,r0
bt loc_8c1BBB34
shll r0
mov r0,r1 ; r1 ??? bc r0 is ???
mova @(loc_8c1BBABC,pc),r0  ; r0 set to 0x8C1BBABC
mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???
braf r0
nop
#data 0x0000

#align4
loc_8c1BBAAC:
#data 0x8C352E05

#align4
loc_8c1BBAB0:
#data 0x8C352E16

#align4
loc_8c1BBAB4:
#data 0x8C352E06

#align4
loc_8c1BBAB8:
#data 0x8C352E00

#align4
loc_8c1BBABC:
#data 0x0032002E
#data 0x003E003E
#data 0x003E003E
#data 0x004C0046
#data 0x00580050
#data 0x00640064
#data 0x0086006C
#data 0x0009A02C
#data 0xE200D174
#data 0x2120B02E
#data 0x0009A026
#data 0x0009B1BF
#data 0x0009A022
#data 0xA008D070
#data 0xA00A20E0
#data 0xB5470009
#data 0xA0190009
#data 0xD16D0009
#data 0xB4BE21E0
#data 0xA0130009
#data 0xB4BA0009
#data 0xA00F0009
#data 0xB24B0009
#data 0xD2680009
#data 0x23386320
#data 0xD0678908
#data 0x23386300
#data 0xD3668904
#data 0x23E0A002
#data 0x0009B451


loc_8c1BBB34:
lds.l @r15+,pr
mov.l @(loc_8c1BBCC8,pc),r1 ; r1 set to 0x8C352E00
mov 0x00,r2 ; r2 set to 0x00
mov.b r2,@r1 ; r1 ??
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0xD05B2F86
#data 0x63004F22
#data 0x8B012338
#data 0x0009A17B
#data 0x6320D25B
#data 0x89012338
#data 0x0009A175
#data 0x6310D159
#data 0x89012338
#data 0x0009A16F
#data 0x6340D457
#data 0x890A2338
#data 0x6320D256
#data 0x89012338
#data 0x0009A165
#data 0xB79FE300
#data 0xA1602430
#data 0xD2520009
#data 0x21186120
#data 0xA15A8B01
#data 0xE8010009
#data 0x2380D34F
#data 0xD250D14F
#data 0x20086010
#data 0x208A0029
#data 0x70014000
#data 0xD2482200
#data 0x23386320
#data 0xA1488901
#data 0xD34B0009
#data 0x430BD449
#data 0x600D0009
#data 0x8B012008
#data 0x0009A13F
#data 0x6320D247
#data 0x89012338
#data 0x0009A139
#data 0x6310D145
#data 0x89012338
#data 0x0009A133
#data 0xD247DC45
#data 0x602263C0
#data 0xDA41633C
#data 0xDE434300
#data 0xDD3B033D
#data 0xDB3F633D
#data 0x89012338
#data 0x0009A0CB
#data 0xD140D241
#data 0x63116921
#data 0xD3403938
#data 0x6231609D
#data 0x3023622D
#data 0x609D8915
#data 0x8B012008
#data 0x0009A113
#data 0xD53BD23C
#data 0x6453420B
#data 0x2008600E
#data 0xA10A8901
#data 0xD2390009
#data 0x0009420B
#data 0x2008600C
#data 0xA1028901
#data 0xD3360009
#data 0x22286230
#data 0xD1358B08
#data 0x6212D035
#data 0xE2002022
#data 0x2380D331
#data 0x2120D123
#data 0x63C0D232
#data 0x61B26022
#data 0x62E2633C
#data 0x32184300
#data 0x63D20325
#data 0x2D327301
#data 0x6210D119
#data 0x63D22324
#data 0x2D327301
#data 0x622C62C0
#data 0x23244200
#data 0x730163D2
#data 0xD0272D32
#data 0xD0046200
#data 0x6100622C
#data 0x321C4200
#data 0xA0572324
#data 0x0000E403
#data 0x8C352E04
#data 0x8C352E1B
#data 0x8C352E1E
#data 0x8C352E1A
#data 0x8C352E5F
#data 0x8C34CF68

#align4
loc_8c1BBCC8:
#data 0x8C352E00
#data 0x8C352E0F
#data 0x8C352E0D
#data 0x8C352BBE
#data 0x8C352E17
#data 0x8C352E4E
#data 0x8C352E05
#data 0x8C352E16
#data 0x8C352E06
#data 0x8C352BCC

#align4
loc_8c1BBCF0:
#data loc_8c1B6626
#data 0x8C352E11
#data 0x8C352E13
#data 0x8C351774
#data 0x8C351770
#data 0x8C352DE2
#data 0x8C352BC4
#data 0x8C352DD8
#data 0x8C352BC8
#data 0x8C351784
#data 0x8C352E64
#data 0x8C352BD0

#align4
loc_8c1BBD20:
#data bank1a.loc_8c1a0500

loc_8c1BBD24:
#data loc_8c1B6240
#data 0x8C352DFC
#data 0x8C34B2CC
#data 0x8C352DF0
#data 0x8C352DD4
#data 0x8C352DE3
#data 0x710161D2
#data 0x63E22D12
#data 0x2E327301
#data 0x623073FF
#data 0x61E22124
#data 0x313663A2
#data 0x74018F02
#data 0x2E0260B2
#data 0x2338639D
#data 0x79FF8D06
#data 0x614DD27B
#data 0x633D6321
#data 0x8BE53133
#data 0xD579D27A
#data 0x354C6321
#data 0x2231335C
#data 0x62C0D178
#data 0x622C6012
#data 0x02554200
#data 0x700160C0
#data 0x2C00C97F
#data 0x430BD374
#data 0xD274E501
#data 0x73016321
#data 0xA0582231
#data 0xD3720009
#data 0x21186130
#data 0xE4038F09
#data 0xD071D170
#data 0x20226212
#data 0xD36DE200
#data 0xD16F2380
#data 0x63D22120
#data 0x2D327301
#data 0x6210D16D
#data 0x63D22324
#data 0x2D327301
#data 0x622C62C0
#data 0x23244200
#data 0x730163D2
#data 0xD0682D32
#data 0xD0686200
#data 0x6100622C
#data 0x321C4200
#data 0xD2662324
#data 0x602263C0
#data 0x61B2633C
#data 0x033D4300
#data 0x331C633D
#data 0xA0112E32
#data 0x62D26583
#data 0x2D227201
#data 0x730163E2
#data 0x73FF2E32
#data 0x22146130
#data 0x63A262E2
#data 0x8F023236
#data 0x60B27401
#data 0x75012E02
#data 0x635DD14D
#data 0x601262C0
#data 0x4200622C
#data 0x622D022D
#data 0x8BE43327
#data 0x700160C0
#data 0x2C00C97F
#data 0x430BD347
#data 0xD250E501
#data 0x73016321
#data 0x4F262231
#data 0xE200D14E
#data 0x68F62120
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0xD04A6EF6
#data 0x63004F22
#data 0x8B6C2338
#data 0xD448D349
#data 0x0009430B
#data 0x2008600D
#data 0xD2478920
#data 0x23386320
#data 0xD4438B1C
#data 0x6342E501
#data 0x24327301
#data 0x6210D139
#data 0x63422324
#data 0x24327301
#data 0x6200D040
#data 0x63422324
#data 0x24327301
#data 0xD134E403
#data 0xD1346210
#data 0x6010622C
#data 0x320C4200
#data 0xD3292324
#data 0x4F26432B
#data 0xE218D436
#data 0x633C6340
#data 0x893E3327
#data 0xE71C6140
#data 0x7104E303
#data 0xD4342410
#data 0x6040D632
#data 0x24007001
#data 0x600C70FF
#data 0x61400634
#data 0x3173611C
#data 0xE5008F01
#data 0x60402450
#data 0x24007001
#data 0xD21F70FF
#data 0x6320600C
#data 0x61400634
#data 0x3173611C
#data 0x24508B00
#data 0x70016040
#data 0x70FF2400
#data 0x600CD222
#data 0x06346320
#data 0x611C6140
#data 0x8B003173
#data 0x60402450
#data 0x24007001
#data 0xD21370FF
#data 0x6320600C
#data 0x633CD212
#data 0x43006120
#data 0x0634331C
#data 0x611C6140
#data 0x8B003173
#data 0x4F262450
#data 0x0009000B
;-------------------------------------------------------------------------------
#data 0x8C352E64
#data 0x0000FFFD
#data 0x8C352BC8
#data 0x8C352DD8

#align4
loc_8c1BBF64:
#data loc_8c1B6750
#data 0x8C34B318
#data 0x8C352DFC
#data 0x8C34B2CC
#data 0x8C352DF0
#data 0x8C352E11
#data 0x8C352E06
#data 0x8C352DE3
#data 0x8C352E04
#data 0x8C352DD4
#data 0x8C34B31C
#data 0x8C352E4E
#data 0x8C352E0E
#data 0x8C352BCC

#align4
loc_8c1BBF9C:
#data loc_8c1B6626
#data 0x8C352E8C
#data 0x8C352E01
#data 0x8C352E6E
#data 0x8C352E8B
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x4F222FA6
#data 0xD35BD45A
#data 0x430B7FF8
#data 0x600D0009
#data 0x8B012008
#data 0x0009A1FB
#data 0x6320D257
#data 0x89012338
#data 0x0009A1F5
#data 0xE600D552
#data 0x73016352
#data 0xD1532532
#data 0x23246210
#data 0x73016352
#data 0x92982532
#data 0x72D32324
#data 0x73016352
#data 0x23242532
#data 0x635272FE
#data 0x25327301
#data 0x63522324
#data 0x25327301
#data 0xE3132364
#data 0x72016252
#data 0x22342522
#data 0xE7036252
#data 0x7201ED05
#data 0x22742522
#data 0x73016352
#data 0x23742532
#data 0x72016252
#data 0xD3402522
#data 0xCB8A6030
#data 0x62522204
#data 0x25227201
#data 0x6010D13D
#data 0x2204CB89
#data 0x72016252
#data 0xD33B2522
#data 0x22046030
#data 0x72016252
#data 0xEE022522
#data 0x605222D4
#data 0x25027001
#data 0xD23620E4
#data 0x64216152
#data 0x644D7101
#data 0x44092512
#data 0x44014409
#data 0x60522144
#data 0x70016421
#data 0x25024408
#data 0x20444400
#data 0x6152E006
#data 0x25127101
#data 0x61522104
#data 0x25127101
#data 0xEC0121E4
#data 0x6352D029
#data 0x73016401
#data 0x2532644D
#data 0x44094409
#data 0x23444401
#data 0x64016152
#data 0x44087101
#data 0x44002512
#data 0xE1072144
#data 0x73016352
#data 0x23142532
#data 0x73016352
#data 0x23C42532
#data 0x71016152
#data 0xD21C2512
#data 0x21346320
#data 0x6152E308
#data 0x25127101
#data 0x61522134
#data 0x25127101
#data 0x635221C4
#data 0x25327301
#data 0x6100D015
#data 0xD0152314
#data 0x600C6000
#data 0x8F02C880
#data 0xA098E419
#data 0xD3120009
#data 0x21186130
#data 0xD0118B05
#data 0x21186100
#data 0xA08E8B01
#data 0xA01D0009
#data 0x00AF0009
#data 0x8C352BCC

#align4
loc_8c1BC12C:
#data loc_8c1B6626
#data 0x8C352E8C
#data 0x8C352E06
#data 0x8C352E61
#data 0x8C352E63
#data 0x8C352E5F
#data 0x8C352E26
#data 0x8C352E2A
#data 0x8C352E2E
#data 0x8C352E2F
#data 0x8C34B2AB
#data 0x8C352E05
#data 0x8C352E50
#data 0x73016352
#data 0x92342532
#data 0x63522324
#data 0x25327301
#data 0xE30F2364
#data 0x72016252
#data 0x22342522
#data 0x72016252
#data 0x22642522
#data 0x73016352
#data 0x23742532
#data 0x6252E356
#data 0x25227201
#data 0xE3342234
#data 0x72016252
#data 0x22342522
#data 0xE3326252
#data 0x25227201
#data 0x62522234
#data 0x25227201
#data 0x635222C4
#data 0x25327301
#data 0xD30723C4
#data 0x6230D405
#data 0x890B2228
#data 0x72016252
#data 0x61402522
#data 0xA0122214
#data 0x00F00009
#data 0x8C352E52
#data 0x8C352E16
#data 0x63036052
#data 0x25027001
#data 0x600D6041
#data 0x40002F02
#data 0xC90362F2
#data 0x302C4221
#data 0x62522300
#data 0x25227201
#data 0x635222E4
#data 0x25327301
#data 0xD44923E4
#data 0x72016252
#data 0x63412522
#data 0x4319633D
#data 0x62522234
#data 0x25227201
#data 0x22346340
#data 0x72016252
#data 0x22742522
#data 0x73016352
#data 0x23C42532
#data 0x72016252
#data 0xD13E2522
#data 0x6310E42B
#data 0xD23E2234
#data 0x6320DB3C
#data 0x8B0C2338
#data 0x6310D13C
#data 0x8B082338
#data 0x6000D03B
#data 0xC810600C
#data 0xD33A8913
#data 0x22286230
#data 0x6252890F
#data 0x72017403
#data 0x935E2522
#data 0x62522234
#data 0x63522B22
#data 0x25327301
#data 0x62522364
#data 0x25227201
#data 0xD22D2264
#data 0x23386320
#data 0xEA4D8F04
#data 0x6310D12B
#data 0x891B2338
#data 0x236063B2
#data 0x60D362B2
#data 0x80210009
#data 0x63527405
#data 0x25327301
#data 0x625223C4
#data 0x25227201
#data 0x63522274
#data 0x25327301
#data 0x625223A4
#data 0x25227201
#data 0xE24122A4
#data 0x73016352
#data 0x23242532
#data 0x6000D01C
#data 0xC810600C
#data 0xD318896D
#data 0x22286230
#data 0xD1198B03
#data 0x22286210
#data 0x63B28965
#data 0x70078431
#data 0x63528031
#data 0x25327301
#data 0x625223E4
#data 0x25227201
#data 0x635222D4
#data 0x25327301
#data 0xE34923A4
#data 0x72016252
#data 0x22342522
#data 0x6252E358
#data 0x25227201
#data 0xD70B2234
#data 0x6270D60B
#data 0x84712620
#data 0xA0138061
#data 0x00FF0009
#data 0x8C352E56
#data 0x8C352E5A
#data 0x8C352BD0
#data 0x8C352E05
#data 0x8C352E20
#data 0x8C34B2B4
#data 0x8C352E8D
#data 0x8C352E96
#data 0x8C352E8E
#data 0x80628472
#data 0x80638473
#data 0x80648474
#data 0x80658475
#data 0xD779D27A
#data 0x23386320
#data 0x74078D18
#data 0x73066363
#data 0x76072F32
#data 0x41196172
#data 0x1F612310
#data 0x26306372
#data 0x71016152
#data 0x63F22512
#data 0x21346330
#data 0x71016152
#data 0x53F12512
#data 0x21346330
#data 0x0009A00B
#data 0x70016052
#data 0x63722502
#data 0x20344319
#data 0x71016152
#data 0x63722512
#data 0x7F082134
#data 0x4F26D266
#data 0x6AF6E501
#data 0x6CF66BF6
#data 0x422B6DF6
#data 0x7F086EF6
#data 0x6AF64F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x2FE66EF6
#data 0x4F22D25E
#data 0x23386320
#data 0xD35E8B4E
#data 0x430BD45C
#data 0x600D0009
#data 0x89472008
#data 0x6320D25B
#data 0x8B432338
#data 0xE402D557
#data 0x73016352
#data 0xD1582532
#data 0x23246210
#data 0x73016352
#data 0xD0562532
#data 0xD0566200
#data 0x6100622C
#data 0x42084208
#data 0x2324221B
#data 0x6320D253
#data 0x8D102338
#data 0xD752EE01
#data 0x66E3A006
#data 0x74016252
#data 0x25227201
#data 0x76012264
#data 0x636D6271
#data 0x3327622D
#data 0xA0148BF4
#data 0xD64C0009
#data 0xA00BD04A
#data 0x625267E3
#data 0x74017701
#data 0x25227201
#data 0x73016362
#data 0x73FF2632
#data 0x22146130
#data 0x637D6201
#data 0x3323622D
#data 0x4F268BEF
#data 0xE501D242
#data 0xD33522E0
#data 0x6EF6432B
#data 0x000B4F26
#data 0x4F226EF6
#data 0xD433D334
#data 0x0009430B
#data 0x2008600D
#data 0xD232891B
#data 0x23386320
#data 0xD42E8B17
#data 0x6342E501
#data 0x24327301
#data 0x6210D12E
#data 0x63422324
#data 0x24327301
#data 0xD02CE402
#data 0xD02C6200
#data 0x6100622C
#data 0x42084208
#data 0x2324221B
#data 0x432BD321
#data 0xD4244F26
#data 0x6340E219
#data 0x3327633C
#data 0x61408932
#data 0xE302E71C
#data 0x24107103
#data 0xD627D428
#data 0x70016040
#data 0x70FF2400
#data 0x0634600C
#data 0x611C6140
#data 0x8F013173
#data 0x2450E500
#data 0x70016040
#data 0x70FF2400
#data 0x600CD216
#data 0x06346320
#data 0x611C6140
#data 0x8B003173
#data 0x60402450
#data 0x24007001
#data 0xD21170FF
#data 0x6320600C
#data 0x633CD210
#data 0x43086120
#data 0x231B4308
#data 0x61400634
#data 0x3173611C
#data 0x24508B00
#data 0x000B4F26
#data 0x00000009
#data 0x8C34B2CC
#data 0x8C352E16

#align4
loc_8c1BC550:
#data loc_8c1B6750
#data 0x8C352E0E
#data 0x8C352BCC

#align4
loc_8c1BC55C:
#data loc_8c1B6626
#data 0x8C352E8C
#data 0x8C352E06
#data 0x8C352E04
#data 0x8C352E01
#data 0x8C352E1F
#data 0x8C352E66
#data 0x8C352DDC
#data 0x8C352BC0
#data 0x8C352E17
#data 0x8C352E6E
#data 0x8C352E8B
#data 0xD3354F22
#data 0x430BD433
#data 0x600D0009
#data 0x895C2008
#data 0x6320D232
#data 0x8B582338
#data 0x6342D42E
#data 0x24327301
#data 0x6210D12F
#data 0x63422324
#data 0x24327301
#data 0x6200D02D
#data 0x622CD02D
#data 0x42086100
#data 0x221B4208
#data 0xD32B2324
#data 0x600C6030
#data 0x8B318801
#data 0xE3076142
#data 0x24127101
#data 0x6020D227
#data 0x403D600C
#data 0x2104CB40
#data 0xD7256142
#data 0x24127101
#data 0x21046070
#data 0x6150D523
#data 0x89062118
#data 0x71016142
#data 0x60502412
#data 0xA0012104
#data 0xE404E405
#data 0x96256370
#data 0x3360633C
#data 0xE5018F02
#data 0x2350D31B
#data 0x622C6270
#data 0x8B143260
#data 0x2250D219
#data 0x2350D319
#data 0xD119E500
#data 0xD2192150
#data 0x2250A00B
#data 0xE3076142
#data 0x24127101
#data 0xD216E403
#data 0x600C6020
#data 0xCB60403D
#data 0xD2142104
#data 0x422BE501
#data 0x4F264F26
#data 0x0009000B
;-------------------------------------------------------------------------------
#data 0x000000C0
#data 0x8C352BCC

#align4
loc_8c1BC664:
#data loc_8c1B6626
#data 0x8C352E8C
#data 0x8C352E06
#data 0x8C352E04
#data 0x8C352E01
#data 0x8C352DE9
#data 0x8C352DE8
#data 0x8C352E0C
#data 0x8C352E0B
#data 0x8C352E0D
#data 0x8C352E0E
#data 0x8C352E17
#data 0x8C352DFC
#data 0x8C352E11
#data 0x8C352DE5

#align4
loc_8c1BC6A0:
#data loc_8c1B6750

loc_8c1BC6A4:
#data 0xD2772FE6
#data 0x63204F22
#data 0x89052338
#data 0x430BD375
#data 0xD2750009
#data 0x0009420B

#align4
loc_8c1BC6BC:
#data 0xEE00D474
#data 0x6342D274
#data 0xD3752232
#data 0x2532D573
#data 0xD6746142
#data 0x63422612
#data 0x2032D073
#data 0x23E1D373
#data 0x22E1D273
#data 0x21E1D173
#data 0xD074D473
#data 0x20326342
#data 0x6242D373
#data 0xD1732322
#data 0xD27321E1
#data 0xD37322E1
#data 0xD17323E0
#data 0xD27321E0
#data 0xD37322E0
#data 0xD17323E0
#data 0xD27321E0
#data 0xD37322E0
#data 0xD17323E0
#data 0xD77321E0
#data 0x2722D273
#data 0xD473D374
#data 0x60622432
#data 0x635266E3
#data 0x627265E3
#data 0x3038E77F
#data 0x2201

loc_8c1BC736:
#data 0x7601
#data 0x636D6042
#data 0x05E53377
#data 0x75028FF9
#data 0x0009B21C
#data 0x22E0D26B
#data 0x23E0D36B
#data 0x21E0D16B
#data 0x22E1D26B
#data 0xD16CD36B
#data 0xD36D6631
#data 0x6511D26B
#data 0x6421430B
#data 0x410BD16B
#data 0xD36B0009
#data 0x23E04F26
#data 0x22E0D26A
#data 0x21E0D16A
#data 0x6EF6000B
;-------------------------------------------------------------------------------

loc_8c1BC780:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l @(loc_8c1BC884,pc),r2 ; r2 set to 0x8C352E0E
sts.l pr,@-r15
mov.b @r2,r3
tst r3,r3
add 0xF4,r15
bt loc_8c1BC79C
bra loc_8c1BCABA
nop

loc_8c1BC79C:
mov.l @(loc_8c1BC934,pc),r6 ; r6 set to 0x8C352BBA
mov.l @(loc_8c1BC930,pc),r7 ; r7 set to 0x8C352BAC
mov.l @(loc_8c1BC93C,pc),r4 ; r4 set to 0x8C352BB0
mov.l @(loc_8c1BC938,pc),r5 ; r5 set to 0x8C352BB8
mov.l @(loc_8c1BC8C0,pc),r11 ; r11 set to 0x8C35279C
mov.l @(loc_8c1BC8D4,pc),r10 ; r10 set to 0x8C352DE3
mov.l @(loc_8c1BC92C,pc),r14 ; r14 set to 0x8C352BD0
mov.l @(loc_8c1BC928,pc),r13 ; r13 set to 0x8C3527A0
bra loc_8c1BC9E4
mov 0x01,r12

loc_8c1BC7B0:
mov.l @r4,r9
add 0x01,r9
mov.l r9,@r4
add 0xFF,r9
mov.l @r4,r3
mov.b @r10,r1
mov.b @r9,r9
mov.l r3,@(0x04,r15)
extu.b r1,r1
mov.l @r7,r2
extu.b r9,r3
cmp/eq r1,r3
mov.l r2,@r15
bt/s loc_8c1BC7D2
mov.l r13,@(0x08,r15)
bra loc_8c1BC948
nop

loc_8c1BC7D2:
#data 0x52F1
#data 0x323663F2
#data 0x52F28B01
#data 0x2422

loc_8c1BC7DE:
#data 0x6351
#data 0x253173FF
#data 0x79016942
#data 0x79FF2492
#data 0x62426372
#data 0x32366990
#data 0x699C8F01
#data 0x24D2

loc_8c1BC7FA:
#data 0x6351
#data 0x253173FF
#data 0x72016242
#data 0x72FF2422
#data 0x633C6320
#data 0x62722631
#data 0x31266142
#data 0x49188F01
#data 0x24D2

loc_8c1BC81A:
#data 0x6251
#data 0x252172FF
#data 0x239B6361
#data 0x60A02631
#data 0xC97F7001
#data 0xD2212A00
#data 0x2E326322
#data 0x69C3A01C

#align4
loc_8c1BC838:
#data 0x720162E2
#data 0x63422E22
#data 0x24327301
#data 0x613073FF
#data 0x62422214
#data 0x32366372
#data 0x24D28B00

#align4
loc_8c1BC854:
#data 0x73FF6351
#data 0x62B12531
#data 0x2B217201
#data 0x61E2D037
#data 0x31366302
#data 0x79018F02
#data 0x2E22D235

#align4
loc_8c1BC870:
#data 0x639D6261
#data 0x3327622D
#data 0xD30E8BDE
#data 0xA0B162E2
#data 0x00002322

#align4
loc_8c1BC884:
#data 0x8C352E0E

#align4
loc_8c1BC888:
#data bank1a.loc_8c1a0434

loc_8c1BC88C:
#data bank1a.loc_8c1a048C
#data 0x8C35177C
#data 0x8C351778
#data 0x8C351770
#data 0x8C350770
#data 0x8C352BC4
#data 0x8C351780
#data 0x8C351784
#data 0x8C352BC8
#data 0x8C351788
#data 0x8C352794
#data 0x8C352790
#data 0x8C352798

#align4
loc_8c1BC8C0:
#data 0x8C35279C
#data 0x8C35279E
#data 0x8C352E14
#data 0x8C352DE2
#data 0x8C352DE1

#align4
loc_8c1BC8D4:
#data 0x8C352DE3
#data 0x8C352DE0
#data 0x8C352DE4
#data 0x8C352E13
#data 0x8C352E1F
#data 0x8C352DD4
#data 0x8C352BD4
#data 0x8C352DD8
#data 0x8C352CD4
#data 0x8C352DFC
#data 0x8C352E11
#data 0x8C352E18
#data 0x8C3537E8
#data 0x8C352E5A
#data 0x8C352E56
#data 0x8C352E52

#align4
loc_8c1BC914:
#data loc_8c1BE034

loc_8c1BC918:
#data loc_8c1B3558
#data 0x8C352E8C
#data 0x8C352E8B
#data 0x8C352E8A

#align4
loc_8c1BC928:
#data 0x8C3527A0

#align4
loc_8c1BC92C:
#data 0x8C352BD0

#align4
loc_8c1BC930:
#data 0x8C352BAC

#align4
loc_8c1BC934:
#data 0x8C352BBA

#align4
loc_8c1BC938:
#data 0x8C352BB8

#align4
loc_8c1BC93C:
#data 0x8C352BB0
#data 0x8C35278C
#data 0x8C35178A

#align4
loc_8c1BC948:
#data 0x3013609C
#data 0x920D8901
#data 0x392C

loc_8c1BC952:
#data 0xD207
#data 0x3918699C
#data 0x633C6320
#data 0x890B3933
#data 0x21C0D104
#data 0x73FF6342
#data 0x2432A03C
#data 0x00000080
#data 0x8C352E2F
#data 0x8C352BBD

#align4
loc_8c1BC978:
#data 0x61F250F1
#data 0x8B013016
#data 0x243253F2

#align4
loc_8c1BC984:
#data 0x79016942
#data 0x79FF2492
#data 0x62426372
#data 0x32366990
#data 0x699C8F01
#data 0x24D2

loc_8c1BC99A:
#data 0x6342
#data 0x24327301
#data 0x623073FF
#data 0x2621622C
#data 0x61426372
#data 0x8F013136
#data 0x24D24918

#align4
loc_8c1BC9B4:
#data 0x239B6361
#data 0x62612631
#data 0x72036351
#data 0x25313328
#data 0x63426261
#data 0x332C622D
#data 0x24326133
#data 0x31266272
#data 0x60428B06
#data 0x240270FF
#data 0x30386372
#data 0x240230DC


loc_8c1BC9E4:
mov.w @r5,r2
tst r2,r2
bt loc_8c1BCA02
mov.l @(loc_8c1BCA68,pc),r2 ; r2 set to 0x8C35279C
mov.w @(loc_8c1BCA66,pc),r1 ; r1 set to 0xF00
mov.w @r2,r3
extu.w r3,r3
cmp/ge r1,r3
bt loc_8c1BCA02
mov.l @(loc_8c1BCA6C,pc),r3 ; r3 set to 0x8C352BBD
mov.b @r3,r0
tst r0,r0
bf loc_8c1BCA02
bra loc_8c1BC7B0
nop

loc_8c1BCA02:
#data 0xD31A
#data 0x6230DE1C
#data 0xD41ADD19
#data 0x8B432228
#data 0x22286240
#data 0x62B18B51
#data 0x622D9125
#data 0x89193213
#data 0x6020D216
#data 0x89032008
#data 0x6300D015
#data 0x8B442338

#align4
loc_8c1BCA30:
#data 0xD214D015
#data 0x63216101
#data 0x89073310
#data 0x6130D313
#data 0x8B032118
#data 0x6210D112
#data 0x8B362228

#align4
loc_8c1BCA4C:
#data 0x2D30E302
#data 0x2EC0A005

#align4
loc_8c1BCA54:
#data 0x24C0E205
#data 0x2D00E003
#data 0x2E20

loc_8c1BCA5E:
#data 0xD10D
#data 0xA027E300
#data 0x2130

loc_8c1BCA66:
#data 0x0F00

#align4
loc_8c1BCA68:
#data 0x8C35279C

#align4
loc_8c1BCA6C:
#data 0x8C352BBD
#data 0x8C352E00
#data 0x8C352E14
#data 0x8C352E01
#data 0x8C352E03
#data 0x8C352E02
#data 0x8C352BC8
#data 0x8C351784
#data 0x8C352E13
#data 0x8C352E4E
#data 0x8C352E05

#align4
loc_8c1BCA98:
#data 0x2420E200
#data 0x6020D23E
#data 0xCB80D13E
#data 0x2200410B
#data 0x2D30E305
#data 0x2E20E20D
#data 0x23C0D33B

#align4
loc_8c1BCAB4:
#data 0xE200D13B
#data 0x2120


loc_8c1BCABA:
add 0x0C,r15
lds.l @r15+,pr
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0xD3354F22
#data 0x430BD433
#data 0x600D0009
#data 0x89472008
#data 0x6320D232
#data 0x8B432338
#data 0xE403D52E
#data 0x73016352
#data 0xD12F2532
#data 0x23246210
#data 0x6352DE2E
#data 0x25327301
#data 0x622C62E0
#data 0x23244200
#data 0x73016352
#data 0xD02A2532
#data 0xD0236200
#data 0x6100622C
#data 0x321C4200
#data 0x66E02324
#data 0x666CD327
#data 0x4600DD25
#data 0x62D26032
#data 0xDB25066D
#data 0x666DDC25
#data 0xA00B362C
#data 0x6352E701
#data 0x25327301
#data 0x23246264
#data 0x363663C2
#data 0x74018F01
#data 0x770166D2
#data 0x637D60E0
#data 0x600C62B2
#data 0x012D4000
#data 0x3317611D
#data 0xD21A8BEB
#data 0xE501420B
#data 0x6231D319
#data 0x23217201
#data 0x6BF64F26
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

loc_8c1BCB80:
mov.l @(loc_8c1BCBDC,pc),r3 ; r3 set to 0x8C352BB0
mov.l @(loc_8c1BCBD8,pc),r4 ; r4 set to 0x8C3527A0
mov.l r4,@r3 ; r3 ??
mov.l @(loc_8c1BCBE0,pc),r2 ; r2 set to 0x8C352BB4
mov.l r4,@r2 ; r2 ??
mov 0x00,r4 ; r4 set to 0x00
mov.l @(loc_8c1BCBE4,pc),r1 ; r1 set to 0x8C352BB8
mov.w r4,@r1 ; r1 ??
mov.l @(loc_8c1BCBE8,pc),r3 ; r3 set to 0x8C352BBD
rts
mov.b r4,@r3
;-------------------------------------------------------------------------------
#data 0x0000
#data 0x8C34B29F

#align4
loc_8c1BCB9C:
#data bank1c.loc_8c1c1658
#data 0x8C352E05
#data 0x8C352E04
#data 0x8C352BCC

#align4
loc_8c1BCBAC:
#data loc_8c1B6626
#data 0x8C352E8C
#data 0x8C352E06
#data 0x8C352BBC
#data 0x8C352DE3
#data 0x8C351770
#data 0x8C352DD4
#data 0x8C352DD8
#data 0x8C351774

#align4
loc_8c1BCBD0:
#data loc_8c1B6750
#data 0x8C34B31C

#align4
loc_8c1BCBD8:
#data 0x8C3527A0

#align4
loc_8c1BCBDC:
#data 0x8C352BB0

#align4
loc_8c1BCBE0:
#data 0x8C352BB4

#align4
loc_8c1BCBE4:
#data 0x8C352BB8

#align4
loc_8c1BCBE8:
#data 0x8C352BBD

#align4
loc_8c1BCBEC:
#data 0x2FD62FE6
#data 0xD52BD72A
#data 0x62516371
#data 0x914E633D
#data 0x332C622D
#data 0x33177303
#data 0xD4278946
#data 0x72016242
#data 0xD1262422
#data 0x22346310
#data 0x6242DE26
#data 0xDD2463E2
#data 0x8B003236
#data 0x24D2

loc_8c1BCC22:
#data 0x6351
#data 0x25317301
#data 0x72016242
#data 0x63712422
#data 0x4319633D
#data 0x61422234
#data 0x312662E2
#data 0x24D28B00

#align4
loc_8c1BCC40:
#data 0x72016251
#data 0x63422521
#data 0x24327301
#data 0x23246270
#data 0x63E26142
#data 0x8B003136
#data 0x24D2

loc_8c1BCC5A:
#data 0x6351
#data 0x25317301
#data 0xA012D614
#data 0xE001

loc_8c1BCC66:
#data 0x6342
#data 0x24327301
#data 0x72016262
#data 0x72FF2622
#data 0x23146120
#data 0x63E26242
#data 0x8B003236
#data 0x24D2

loc_8c1BCC82:
#data 0x6351
#data 0x73017001
#data 0x2531

loc_8c1BCC8A:
#data 0x6371
#data 0x633D620D
#data 0x8BE83237

#align4
loc_8c1BCC94:
#data 0x000B6DF6
#data 0x040C6EF6
#data 0x8C352DDC
#data 0x8C352BB8
#data 0x8C352BB4
#data 0x8C352DDF
#data 0x8C3527A0
#data 0x8C352BAC
#data 0x8C352BC0


loc_8c1BCCB8:
mov.l r14,@-r15
mov.l @(loc_8c1BCDB4,pc),r2 ; r2 set to 0x8C352E63
sts.l pr,@-r15
mov.b @r2,r3
mov.l @(loc_8c1BCDB0,pc),r4 ; r4 set to 0x8C34B2A3
tst r3,r3
bt/s loc_8c1BCD48
mov 0x04,r5 ; r5 set to 0x04
mov.l @(loc_8c1BCDB8,pc),r14 ; r14 set to 0x8C352E1F
mov.b @r4,r3
extu.b r3,r3
tst r5,r3
bt loc_8c1BCD24
mov.l @(loc_8c1BCDB8,pc),r1 ; r1 set to 0x8C352E1F
mov.b @r1,r0
tst r0,r0
bf loc_8c1BCD24
mov.l @(loc_8c1BCDBC,pc),r3 ; r3 set to 0x8C352E0E
mov.b @r3,r0
tst r0,r0
bf loc_8c1BCD24
mov.l @(loc_8c1BCDC4,pc),r2 ; r2 set to 0x8C1B6626
mov.l @(loc_8c1BCDC0,pc),r4 ; r4 set to 0x8C352BCC
jsr @r2
nop
extu.w r0,r0
tst r0,r0
bt loc_8c1BCD60
mov.l @(loc_8c1BCDC8,pc),r3 ; r3 set to 0x8C352E8C
mov.b @r3,r2 ; r2 ??
tst r2,r2
bf loc_8c1BCD60
mov.l @(loc_8c1BCDCC,pc),r3 ; r3 set to 0x8C352E00
mov 0x0D,r2 ; r2 set to 0x0D
mov 0x01,r4 ; r4 set to 0x01
mov.b r2,@r3 ; r3 ??
mov 0x00,r2 ; r2 set to 0x00
mov.w @(loc_8c1BCDAC,pc),r1 ; r1 set to 0xE3
mov.l @(loc_8c1BCDD0,pc),r0 ; r0 set to 0x8C352E01
mov.b r1,@r0 ; r0 ??
mov.l @(loc_8c1BCDD4,pc),r1 ; r1 set to 0x8C352E04
mov.b r2,@r1 ; r1 ??
mov.l @(loc_8c1BCDD8,pc),r3 ; r3 set to 0x8C352E05
mov.b r4,@r3 ; r3 ??
mov.b r4,@r14 ; r14 ??
mov.l @(loc_8c1BCDB0,pc),r2 ; r2 set to 0x8C34B2A3
mov.b @r2,r0
and 0xFB,r0
mov.b r0,@r2 ; r2 ??? bc r0 is ???
mov.l @(loc_8c1BCDDC,pc),r0 ; r0 set to 0x8C34B2CC
mov.l @(loc_8c1BCDE0,pc),r3 ; r3 set to 0x8C352DF8
mov.l @r0,r1
bra loc_8c1BCD60
mov.l r1,@r3

loc_8c1BCD24:
mov.b @r14,r3
tst r3,r3
bt loc_8c1BCD60
mov.l @(loc_8c1BCDE0,pc),r2 ; r2 set to 0x8C352DF8
mov.l @(loc_8c1BCDDC,pc),r1 ; r1 set to 0x8C34B2CC
mov.l @r2,r3
mov.l @r1,r2 ; r2 ??
mov.l @(loc_8c1BCDE4,pc),r1 ; r1 set to 0x8C352DEC
sub r3,r2
mov.l @r1,r0
cmp/hi r0,r2
bf loc_8c1BCD60
mov.l @(loc_8c1BCDE8,pc),r3 ; r3 set to 0x8C1C166A
jsr @r3
mov 0x02,r4 ; r4 set to 0x02
mov 0x00,r2 ; r2 set to 0x00
bra loc_8c1BCD60
mov.b r2,@r14

loc_8c1BCD48:
mov.b @r4,r1
extu.b r1,r1
tst r5,r1
bt loc_8c1BCD60
mov.b @r4,r0
and 0xFB,r0
mov.b r0,@r4
lds.l @r15+,pr
mov.l @(loc_8c1BCDE8,pc),r1 ; r1 set to 0x8C1C166A
mov 0x01,r4 ; r4 set to 0x01
jmp @r1
mov.l @r15+,r14

loc_8c1BCD60:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1BCD66:
#data 0x2FE6
#data 0x2FC62FD6
#data 0x2FB6EC01
#data 0x2F962FA6
#data 0xDA1D2F86
#data 0x63A14F22
#data 0x7FF8DD1C
#data 0xD21D2D31
#data 0x1F21D81B
#data 0xD91CDE1D
#data 0x9B0F

loc_8c1BCD8E:
#data 0x490B
#data 0x63D164F3
#data 0x625D6503
#data 0x3323633D
#data 0xE4008D01
#data 0x65D1

loc_8c1BCDA2:
#data 0x625D
#data 0x8B4832B7
#data 0x65B3A047

loc_8c1BCDAC:
#data 0x00E3
#data 0x0080

#align4
loc_8c1BCDB0:
#data 0x8C34B2A3

#align4
loc_8c1BCDB4:
#data 0x8C352E63

#align4
loc_8c1BCDB8:
#data 0x8C352E1F

#align4
loc_8c1BCDBC:
#data 0x8C352E0E

#align4
loc_8c1BCDC0:
#data 0x8C352BCC

#align4
loc_8c1BCDC4:
#data loc_8c1B6626

loc_8c1BCDC8:
#data 0x8C352E8C

#align4
loc_8c1BCDCC:
#data 0x8C352E00

#align4
loc_8c1BCDD0:
#data 0x8C352E01

#align4
loc_8c1BCDD4:
#data 0x8C352E04

#align4
loc_8c1BCDD8:
#data 0x8C352E05

#align4
loc_8c1BCDDC:
#data 0x8C34B2CC

#align4
loc_8c1BCDE0:
#data 0x8C352DF8

#align4
loc_8c1BCDE4:
#data 0x8C352DEC

#align4
loc_8c1BCDE8:
#data bank1c.loc_8c1c166A
#data 0x8C35279C
#data 0x8C35279E
#data 0x8C34B29F
#data 0x8C352EA8

#align4
loc_8c1BCDFC:
#data bank1a.loc_8c1a0D48
#data 0x8C352790

#align4
loc_8c1BCE04:
#data 0x633C6380
#data 0x890523C8
#data 0x51F1D266
#data 0x62126322
#data 0x89143230

#align4
loc_8c1BCE18:
#data 0x710161F2
#data 0x63E22F12
#data 0x2E327301
#data 0x623073FF
#data 0xD0602124
#data 0x630261E2
#data 0x8F023136
#data 0xD25E7401
#data 0x2E22

loc_8c1BCE3A:
#data 0x635D
#data 0x8FE12338
#data 0x75FF

loc_8c1BCE42:
#data 0x614D
#data 0x89072118
#data 0x324862A1
#data 0x63D12A21
#data 0x3348D258
#data 0x2D31420B

#align4
loc_8c1BCE58:
#data 0x633C6380
#data 0x890B23C8
#data 0x51F1D251
#data 0x62126322
#data 0x8B053230
#data 0x0009B07E
#data 0x6403D251
#data 0xE501420B

#align4
loc_8c1BCE78:
#data 0x64F3490B
#data 0x2008600D
#data 0xD34E8903
#data 0x22286231
#data 0x8B81

loc_8c1BCE8A:
#data 0x7F08
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1BCE9E:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
sts.l pr,@-r15
mov.l @(loc_8c1BCFCC,pc),r12 ; r12 set to 0x8C351770
mov.l @(loc_8c1BCFD0,pc),r13 ; r13 set to 0x8C351788
mov.l @(loc_8c1BCFD4,pc),r14 ; r14 set to 0x8C35177C
add 0xF8,r15
mov.l @(loc_8c1BCFC8,pc),r11 ; r11 set to 0x8C351774
mov.l @(loc_8c1BCFC0,pc),r9 ; r9 set to 0x8C1A0648
mov.l @(loc_8c1BCFC4,pc),r10 ; r10 set to 0x8C1A0500

loc_8c1BCEBA:
mov r15,r4
mov r15,r5
jsr @r10
add 0x04,r4
mov.w @r15,r2
tst r2,r2
bt loc_8c1BCF1C
mov.l @(loc_8c1BCFD0,pc),r2 ; r2 set to 0x8C351788, r2 set to 0x8C351788
mov.w @r15,r1
mov.w @r2,r3
mov.l @(loc_8c1BCFD8,pc),r0 ; r0 set to 0x8C351786, r0 set to 0x8C351786
extu.w r1,r1
extu.w r3,r3
add r1,r3
mov.w @r0,r1
extu.w r1,r1
cmp/ge r1,r3
bt loc_8c1BCF1C
mov.w @r13,r2 ; r2 ??, r2 ??? bc r13 is ???
mov.w @r15,r3
add r3,r2
bra loc_8c1BCF06
mov.w r2,@r13

loc_8c1BCEE8:
mov.l @r14,r3
add 0x01,r3
mov.l r3,@r14
mov.l @(0x04,r15),r2
add 0x01,r2
mov.l r2,@(0x04,r15)
add 0xFF,r2
mov.b @r2,r1
mov.b r1,@-r3
mov.l @r14,r2
mov.l @r11,r3
cmp/hi r3,r2
bf loc_8c1BCF06
mov.l @r12,r0
mov.l r0,@r14

loc_8c1BCF06:
mov.w @r15,r3
add 0xFF,r3
mov.w r3,@r15
add 0x01,r3
extu.w r3,r3
tst r3,r3
bf loc_8c1BCEE8
jsr @r9
nop
bra loc_8c1BCEBA
nop

loc_8c1BCF1C:
add 0x08,r15
mov.l @(loc_8c1BCFDC,pc),r1 ; r1 set to 0x8C351784
lds.l @r15+,pr
mov.w @r13,r2
mov.w r2,@r1 ; r1 ??? bc r2 is ???
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1BCF34:
mov.l @(loc_8c1BCFE0,pc),r6 ; r6 set to 0x8C352E9E
bra loc_8c1BCF42
mov 0x00,r5

loc_8c1BCF3A:
#data 0x605C
#data 0x89138803
#data 0x7501

loc_8c1BCF42:
#data 0x605C
#data 0x036D4000
#data 0x2338633D
#data 0x605C8BF5
#data 0x06454000
#data 0xD224655C
#data 0xD0224508
#data 0x05366322
#data 0x6030D322
#data 0x2300CB01

#align4
loc_8c1BCF68:
#data 0x0009000B
;-------------------------------------------------------------------------------

#align4
loc_8c1BCF6C:
#data 0x7FFCD41C
#data 0x66536543
#data 0x63517604
#data 0x77026753
#data 0x63712F31
#data 0x62612531
#data 0x67532721
#data 0x63717706
#data 0x2631E200
#data 0x63512721
#data 0x8B032338
#data 0x6030D314
#data 0x2300C9FE

#align4
loc_8c1BCFA0:
#data 0x000B60F1
#data 0x00007F04
#data 0x8C352790
#data 0x8C35278C
#data 0x8C35178A

#align4
loc_8c1BCFB4:
#data bank1a.loc_8c1a0D92

loc_8c1BCFB8:
#data bank1a.loc_8c1a0E8A
#data 0x8C35279E

#align4
loc_8c1BCFC0:
#data bank1a.loc_8c1a0648

loc_8c1BCFC4:
#data bank1a.loc_8c1a0500

loc_8c1BCFC8:
#data 0x8C351774

#align4
loc_8c1BCFCC:
#data 0x8C351770

#align4
loc_8c1BCFD0:
#data 0x8C351788

#align4
loc_8c1BCFD4:
#data 0x8C35177C

#align4
loc_8c1BCFD8:
#data 0x8C351786

#align4
loc_8c1BCFDC:
#data 0x8C351784

#align4
loc_8c1BCFE0:
#data 0x8C352E9E
#data 0x8C352EA8
#data 0x8C352794
#data 0x8C34B29F


loc_8c1BCFF0:
mov.l @(loc_8c1BD050,pc),r2 ; r2 set to 0x8C35279C
exts.b r4,r4
mov.l @(loc_8c1BD054,pc),r1 ; r1 set to 0x8C35279E
tst r4,r4
mov.w @r2,r3
mov 0x01,r6 ; r6 set to 0x01
sts.l pr,@-r15
mov.w r3,@r1 ; r1 ??? bc r3 is ???
mov.l @(loc_8c1BD058,pc),r3 ; r3 set to 0x8C352E52
mov.w @r3,r5
bf/s loc_8c1BD078
extu.w r5,r5
mov 0x02,r0 ; r0 set to 0x02
tst r0,r5
bt loc_8c1BD0E6
mov.l @(loc_8c1BD05C,pc),r1 ; r1 set to 0x8C34B29F
mov.b @r1,r3 ; r3 ??
extu.b r3,r3
tst r6,r3
bt loc_8c1BD036
mov.l @(loc_8c1BD064,pc),r0 ; r0 set to 0x8C352790
mov.l @(loc_8c1BD060,pc),r3 ; r3 set to 0x8C352EA8
mov.l @r0,r2 ; r2 ??
mov.l @r3,r0 ; r0 ??
cmp/eq r2,r0
bf loc_8c1BD036
mov.l @(loc_8c1BD068,pc),r2 ; r2 set to 0x8C1BCF6C
jsr @r2
nop
mov.l @(loc_8c1BD06C,pc),r3 ; r3 set to 0x8C1A0E8A
mov r0,r4
jsr @r3
mov 0x01,r5 ; r5 set to 0x01
bra loc_8c1BD0E6
nop

loc_8c1BD036:
mov.l @(loc_8c1BD074,pc),r3 ; r3 set to 0x8C1A0D48
mov.l @(loc_8c1BD070,pc),r4 ; r4 set to 0x8C353830
jsr @r3
nop
mov.w @(loc_8c1BD04E,pc),r2 ; r2 set to 0x80
extu.w r0,r0
cmp/ge r2,r0
bf loc_8c1BD0E6
bsr loc_8c1BD678
nop
bra loc_8c1BD0E6
nop

loc_8c1BD04E:
#data 0x0080

#align4
loc_8c1BD050:
#data 0x8C35279C

#align4
loc_8c1BD054:
#data 0x8C35279E

#align4
loc_8c1BD058:
#data 0x8C352E52

#align4
loc_8c1BD05C:
#data 0x8C34B29F

#align4
loc_8c1BD060:
#data 0x8C352EA8

#align4
loc_8c1BD064:
#data 0x8C352790

#align4
loc_8c1BD068:
#data loc_8c1BCF6C

loc_8c1BD06C:
#data bank1a.loc_8c1a0E8A

loc_8c1BD070:
#data 0x8C353830

#align4
loc_8c1BD074:
#data bank1a.loc_8c1a0D48

loc_8c1BD078:
#data 0x89342568
#data 0xD033D334
#data 0x64016131
#data 0x611D9061
#data 0x310C624D
#data 0x892A3213
#data 0xD530D231
#data 0x34186121
#data 0xD0302541
#data 0x61016351
#data 0x89203312
#data 0x0009B028
#data 0x6320D22D
#data 0x891A2338
#data 0xD42CD32D
#data 0x430BD527
#data 0x600E0009
#data 0x890E2008
#data 0x6000D02A
#data 0xC808600C
#data 0xD029890D
#data 0x600C6000
#data 0x8804C906
#data 0xD3278B03
#data 0x22286231
#data 0x8B03

loc_8c1BD0DE:
#data 0xD120
#data 0xB10CE000
#data 0x2100


loc_8c1BD0E6:
mov.l @(loc_8c1BD178,pc),r3 ; r3 set to 0x8C353964
mov 0x00,r2 ; r2 set to 0x00
lds.l @r15+,pr
mov.b r2,@r3 ; r3 ??
mov.l @(loc_8c1BD14C,pc),r0 ; r0 set to 0x8C351788
mov.l @(loc_8c1BD17C,pc),r2 ; r2 set to 0x8C351784
mov.w @r0,r1
rts
mov.w r1,@r2
;-------------------------------------------------------------------------------

#align4
loc_8c1BD0F8:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0xDE1B2F86
#data 0x63E14F22
#data 0x2338D81C
#data 0x8B127FFC
#data 0x6000D015
#data 0xC808600C
#data 0xA0D48901
#data 0x0009

loc_8c1BD122:
#data 0xD211
#data 0xD516D417
#data 0x0009420B
#data 0x2E316381
#data 0x222862E1
#data 0xA0C88B01
#data 0x0009

loc_8c1BD13A:
#data 0xD20C
#data 0xDC14ED00
#data 0xD911EB01
#data 0xA0B1DA11
#data 0xFED42F22

#align4
loc_8c1BD14C:
#data 0x8C351788
#data 0x8C351786
#data 0x8C3537D0
#data 0x8C352BC8
#data 0x8C352E64
#data 0x8C3537DA
#data 0x8C3537DC

#align4
loc_8c1BD168:
#data bank1a.loc_8c1a0500
#data 0x8C34B2A1
#data 0x8C34B2AA
#data 0x8C3537E8

#align4
loc_8c1BD178:
#data 0x8C353964

#align4
loc_8c1BD17C:
#data 0x8C351784
#data 0x8C3537E0
#data 0x8C3537E4
#data 0x8C3537FA
#data 0x8C3537D2
#data 0x8C3537D7

#align4
loc_8c1BD194:
#data 0x6130D370
#data 0x89032118
#data 0xD16ED26F
#data 0x21D0420B

#align4
loc_8c1BD1A4:
#data 0x233863E1
#data 0x61818B16
#data 0x89022118
#data 0x420BD26B
#data 0x0009

loc_8c1BD1B6:
#data 0x60F2
#data 0x600C6000
#data 0x8901C808
#data 0x0009A083

#align4
loc_8c1BD1C4:
#data 0xD468D269
#data 0x420BD566
#data 0x63810009
#data 0x62E12E31
#data 0x89782228

#align4
loc_8c1BD1D8:
#data 0x6312D163
#data 0x21327301
#data 0x623073FF
#data 0x63E12C20
#data 0x2E3173FF
#data 0x72016291
#data 0xD35F2921
#data 0x23B0B130
#data 0x6120D25E
#data 0x8B152118
#data 0x211861A0
#data 0xD05C8922
#data 0x21186100
#data 0xD05C8B1E
#data 0x6101D25A
#data 0x611D6421
#data 0x3313634D
#data 0xB6148B01
#data 0x0009

loc_8c1BD222:
#data 0xD356
#data 0x6431B594
#data 0x0009A010

#align4
loc_8c1BD22C:
#data 0x20D0D051
#data 0x233863A0
#data 0xD2538B0A
#data 0x612163C0
#data 0x633CD052
#data 0x2031331C
#data 0x22B1D251
#data 0x23D1D351

#align4
loc_8c1BD24C:
#data 0x222862A0
#data 0x2AD0891C
#data 0xD34FD050
#data 0x61316201
#data 0x2311312C
#data 0x6391D14E
#data 0x33266211
#data 0xB0A38B01
#data 0x0009

loc_8c1BD26E:
#data 0xD24C
#data 0x23386320
#data 0xB171890A
#data 0xD1420009
#data 0x631162C0
#data 0xD041622C
#data 0x2021323C
#data 0x23B1D340

#align4
loc_8c1BD28C:
#data 0x6210D13A
#data 0x89012228
#data 0x0009B023

#align4
loc_8c1BD298:
#data 0x63C0D142
#data 0x633C6410
#data 0x3320624C
#data 0xD23F8B02
#data 0x22407433

#align4
loc_8c1BD2AC:
#data 0xD13ED03F
#data 0x63116201
#data 0x89013322
#data 0x0009AF6C

#align4
loc_8c1BD2BC:
#data 0x222862E1
#data 0xD1278B03
#data 0x0009410B
#data 0x28D1

loc_8c1BD2CA:
#data 0x7F04
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1BD2DE:
#data 0x4F22
#data 0xB5D8D333
#data 0xD02F6430
#data 0x6300D231
#data 0x31306120
#data 0xE4018B02
#data 0x4F26A5CF

#align4
loc_8c1BD2F8:
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1BD2FE:
#data 0xD21E
#data 0x63204F22
#data 0x8B0C2338
#data 0xB59ED31F
#data 0xD21E6431
#data 0x6421B51E
#data 0xE401B51C
#data 0x0009B5E9
#data 0xE201D315
#data 0x2320

loc_8c1BD322:
#data 0x4F26
#data 0x0009000B
;-------------------------------------------------------------------------------
#data 0x4F22D013
#data 0x21186100
#data 0xD40F8B0A
#data 0x23386340
#data 0xE3008902
#data 0x2430BFDF
#data 0xE400B506
#data 0x0009B5D3
#data 0xB5A4D316
#data 0xB5A26430
#data 0xA6BDE402
#data 0x00004F26
#data 0x8C353964

#align4
loc_8c1BD35C:
#data loc_8c1B9ED0

loc_8c1BD360:
#data bank1a.loc_8c1a0648
#data 0x8C3537E0
#data 0x8C3537E4

#align4
loc_8c1BD36C:
#data bank1a.loc_8c1a0500
#data 0x8C3537DA
#data 0x8C3537D5
#data 0x8C3537D6
#data 0x8C3537FC
#data 0x8C35380E
#data 0x8C353804
#data 0x8C3537F4
#data 0x8C3537F2
#data 0x8C353814
#data 0x8C3537F8
#data 0x8C35380C
#data 0x8C3537F6
#data 0x8C3537DB
#data 0x8C3537D8
#data 0x8C3537D0
#data 0x8C352E64
#data 0x8C3537D7

#align4
loc_8c1BD3B4:
#data 0x2FD62FE6
#data 0xD43CDD3B
#data 0x624163D1
#data 0x323C4F22
#data 0x63412421
#data 0x633D926B
#data 0x8F063323
#data 0xD537EE00
#data 0x6151D337
#data 0x24E12311
#data 0x25E1

loc_8c1BD3DE:
#data 0xD338
#data 0x6230D035
#data 0x2228D435
#data 0x65408D0D
#data 0x2558655E
#data 0x24E0892E
#data 0x20119156
#data 0xB54CD232
#data 0xB54A6420
#data 0xA022E400
#data 0x0009

loc_8c1BD406:
#data 0x66D1
#data 0xD32F655E
#data 0x6731666D
#data 0x46004608
#data 0x8D0D2558
#data 0x7710677D
#data 0x8B143677
#data 0x923F24E0
#data 0xD1272021
#data 0x6410B535
#data 0xE400B533
#data 0x0009A00B

#align4
loc_8c1BD434:
#data 0x367377F0
#data 0xE2018907
#data 0x2011E140
#data 0xB4852420
#data 0xB552E400
#data 0x0009

loc_8c1BD44A:
#data 0x2DE1
#data 0x22E1D21E

#align4
loc_8c1BD450:
#data 0x6DF64F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1BD458:
#data 0xE3002FE6
#data 0xED012FD6
#data 0x2FB62FC6
#data 0x2130D119
#data 0xD31ADC19
#data 0x60326BC1
#data 0xDE1964BD
#data 0xD2194400
#data 0x644D044D
#data 0x8F0A2448
#data 0x61E16020
#data 0x8B3E2118
#data 0x600CD315
#data 0x301C6131
#data 0xA05E2C01
#data 0x2ED1

loc_8c1BD496:
#data 0xD314
#data 0x6532D112
#data 0xA02A6612
#data 0x0400670C
#data 0x00000100
#data 0x8C3537FA
#data 0x8C34B30E
#data 0x8C34B310
#data 0x8C34B30C
#data 0x8C3537F6
#data 0x8C3537D6
#data 0x8C352E8D
#data 0x8C3537D8
#data 0x8C3537F8
#data 0x8C3537DB
#data 0x8C3537F4
#data 0x8C353820
#data 0x8C3537F2
#data 0x8C3537D7
#data 0x8C353804
#data 0x8C353818
#data 0x8C353824

#align4
loc_8c1BD4EC:
#data 0x035D4000
#data 0x2448643D
#data 0x8907

loc_8c1BD4F6:
#data 0x6043
#data 0x036C0009
#data 0x3370633C
#data 0x24488BF4
#data 0x8B07

loc_8c1BD506:
#data 0xD37D
#data 0xD27D23B1
#data 0xD17D22D0
#data 0xA01E21D0
#data 0x0009

loc_8c1BD516:
#data 0xD57C
#data 0x633D6351
#data 0x8B143430
#data 0x23B1D376
#data 0xD37AD179
#data 0x60316210
#data 0x622CE300
#data 0x2C21320C
#data 0xD2722ED1
#data 0x253122D0
#data 0xD475D076
#data 0x60416301
#data 0xA004303C
#data 0x2401

loc_8c1BD54A:
#data 0x62E1
#data 0x2E217201
#data 0x2C41

loc_8c1BD552:
#data 0x6BF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1BD55C:
#data 0x2FD62FE6
#data 0xD06FD26E
#data 0x61014F22
#data 0x7FFC6321
#data 0x895B3312
#data 0xD16DD76F
#data 0xDE6B6371
#data 0x6512633D
#data 0xDD6B64E1
#data 0x6643644D
#data 0x460060D2
#data 0x335C4300
#data 0x06256231
#data 0x600D6071
#data 0x05454000
#data 0xD15CD366
#data 0x62106032
#data 0xD3650424
#data 0x60326271
#data 0x60630625
#data 0xE2000009
#data 0xD1550525
#data 0x74012141
#data 0xD361D260
#data 0x67316621
#data 0x3466666D
#data 0x677D8F06
#data 0x6473A004

#align4
loc_8c1BD5CC:
#data 0x34667401
#data 0x64738B00

#align4
loc_8c1BD5D4:
#data 0x00096043
#data 0x035D4000
#data 0x2338633D
#data 0x65F38BF4
#data 0xB0272E41
#data 0x600E64E1
#data 0x890B2008
#data 0x63D260F1
#data 0x62E1600D
#data 0x330C4000
#data 0x622D60D2
#data 0x012D4200
#data 0x0009A012

#align4
loc_8c1BD608:
#data 0x64E1D34B
#data 0x644D6032
#data 0x4400D145
#data 0x6012024D
#data 0x4200622D
#data 0x60D2320C
#data 0x2231034D
#data 0x0009A003

#align4
loc_8c1BD628:
#data 0xE100D337

loc_8c1BD62C:
#data 0x2311

loc_8c1BD62E:
#data 0x7F04
#data 0x6DF64F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1BD638:
#data 0x6743D33F
#data 0x647DD23B
#data 0x44006032
#data 0xD2386622
#data 0x6022044D
#data 0x4400644D
#data 0x044DA00C

#align4
loc_8c1BD654:
#data 0x4000604D
#data 0x6201306C
#data 0x622D637D
#data 0x8B023320
#data 0x000B2541
#data 0xE001
;-------------------------------------------------------------------------------

loc_8c1BD66A:
#data 0x6401

#align4
loc_8c1BD66C:
#data 0x2228624D
#data 0xE0008BF0
#data 0x0009000B
;-------------------------------------------------------------------------------

loc_8c1BD678:
mov.l r14,@-r15
mov.l r13,@-r15
mov 0x00,r13 ; r13 set to 0x00
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
mov 0x01,r8 ; r8 set to 0x01
mov.l @(loc_8c1BD748,pc),r2 ; r2 set to 0x8C35279E
mov r8,r10 ; r10 set to 0x01
mov.l @(loc_8c1BD744,pc),r9 ; r9 set to 0x8C35394C
add 0x7F,r10 ; r10 set to 0x80
mov.w @r2,r3
sts.l pr,@-r15
mov.w r3,@r9 ; r9 ??? bc r3 is ???
mov.l @(loc_8c1BD74C,pc),r1 ; r1 set to 0x8C34B29F
add 0xF8,r15
mov.l r1,@(0x04,r15)
mov.l @(loc_8c1BD754,pc),r12 ; r12 set to 0x8C353964
mov.l @(loc_8c1BD750,pc),r11 ; r11 set to 0x8C1A0D92
mov.l @(loc_8c1BD758,pc),r14 ; r14 set to 0x8C35382C
mov.l @(loc_8c1BD75C,pc),r3 ; r3 set to 0x8C352EA8
bra loc_8c1BD77C
mov.l r3,@r15

loc_8c1BD6AA:
#data 0x62C0
#data 0x89022228
#data 0x430BD32B
#data 0x2CD0

loc_8c1BD6B6:
#data 0xD12B
#data 0x631162E1
#data 0x8B143236
#data 0x64E14B0B
#data 0xD1202ED1
#data 0x63116291
#data 0x622DD026
#data 0x3238633D
#data 0x633D6301
#data 0x89653237
#data 0xD423D224
#data 0x0009420B
#data 0x30A3600D
#data 0x8B5E

loc_8c1BD6EA:
#data 0xD322
#data 0x22286230
#data 0xB0638942
#data 0xA0410009
#data 0x00000009
#data 0x8C3537FC
#data 0x8C3537D2
#data 0x8C3537DB
#data 0x8C353814
#data 0x8C3537D7
#data 0x8C353804
#data 0x8C3537F8
#data 0x8C35380C
#data 0x8C3537F2
#data 0x8C353806
#data 0x8C35380A
#data 0x8C353820
#data 0x8C353824
#data 0x8C3537F4
#data 0x8C353818
#data 0x8C35381C
#data 0x8C353808
#data 0x8C353802

#align4
loc_8c1BD744:
#data 0x8C35394C

#align4
loc_8c1BD748:
#data 0x8C35279E

#align4
loc_8c1BD74C:
#data 0x8C34B29F

#align4
loc_8c1BD750:
#data bank1a.loc_8c1a0D92

loc_8c1BD754:
#data 0x8C353964

#align4
loc_8c1BD758:
#data 0x8C35382C

#align4
loc_8c1BD75C:
#data 0x8C352EA8

#align4
loc_8c1BD760:
#data loc_8c1B9ED0
#data 0x8C353952
#data 0x8C352E64
#data 0x8C353830

#align4
loc_8c1BD770:
#data bank1a.loc_8c1a0D48
#data 0x8C353834

#align4
loc_8c1BD778:
#data 0x0009B0E0

#align4
loc_8c1BD77C:
#data 0x623053F1
#data 0x2288622C
#data 0xD2758905
#data 0x632261F2
#data 0x32306212
#data 0x8903

loc_8c1BD792:
#data 0xD173
#data 0x20086011
#data 0x8B87

loc_8c1BD79A:
#data 0x64E1
#data 0x2228624D
#data 0x4B0B8902
#data 0x2ED10009

#align4
loc_8c1BD7A8:
#data 0x4F267F08
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1BD7BC:
#data 0x2FD62FE6
#data 0xD2692FC6
#data 0x63204F22
#data 0xDE66DD64
#data 0x89082338
#data 0x740164D2
#data 0x74FF2D42
#data 0x6440B640
#data 0xA007600C
#data 0x2E01

loc_8c1BD7E2:
#data 0x63D2
#data 0x2D327301
#data 0x613073FF
#data 0x2E11611C

#align4
loc_8c1BD7F0:
#data 0x6341D45E
#data 0x243173FF
#data 0x6241D459
#data 0x242172FF
#data 0x61D2D05B
#data 0x31366302
#data 0xE5018F02
#data 0x2D22D259

#align4
loc_8c1BD810:
#data 0xDC5AD459
#data 0x23386340
#data 0xED008F08
#data 0x63E162C0
#data 0x633D622C
#data 0x8B2A3320
#data 0x2450A02F

#align4
loc_8c1BD82C:
#data 0x63E124D0
#data 0x8B092338
#data 0x21D0D152
#data 0x23D1D352
#data 0x2250D252
#data 0x21D0D152
#data 0x0009A021

#align4
loc_8c1BD848:
#data 0x604D64E1
#data 0x8F0D8801
#data 0x63C06403
#data 0x2E31633C
#data 0x64C0B3E2
#data 0x0009B01A
#data 0x22D0D24B
#data 0x733363C0
#data 0x2C30A00F

#align4
loc_8c1BD86C:
#data 0x00096043
#data 0x8B0A8802
#data 0x6CF64F26
#data 0xA5116DF6
#data 0x6EF6

loc_8c1BD87E:
#data 0xB3CF
#data 0xB00764E1
#data 0xD3420009
#data 0x23D0

loc_8c1BD88A:
#data 0x4F26
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1BD894:
#data 0x2FD62FE6
#data 0xEC012FC6
#data 0x2FA62FB6
#data 0xD23FDD3D
#data 0x632266D1
#data 0xDB3A666D
#data 0xDA2D4600
#data 0xDE3A363C
#data 0x4F226161
#data 0x8F082118
#data 0x61E165A1
#data 0x8B0E2118
#data 0x351C61B1
#data 0xA0302D51
#data 0x2EC1

loc_8c1BD8CE:
#data 0xA011
#data 0x6461

loc_8c1BD8D2:
#data 0xD634
#data 0x4000604D
#data 0x043D6362
#data 0x2228624D
#data 0x8B08

loc_8c1BD8E2:
#data 0xD431
#data 0x2450B180
#data 0x62A12EC1
#data 0x323C63B1
#data 0x2D21A01D

#align4
loc_8c1BD8F4:
#data 0x604DD62D
#data 0x023C6362
#data 0x622C635D
#data 0x8BE63230
#data 0x634DD62A
#data 0x622D6261
#data 0x89033320
#data 0x6230D31F
#data 0x89062228

#align4
loc_8c1BD918:
#data 0xE30062B1
#data 0x2D51352C
#data 0xA0042EC1
#data 0x2631

loc_8c1BD926:
#data 0x61E1
#data 0x2E117101
#data 0x2D41

loc_8c1BD92E:
#data 0x4F26
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1BD93C:
#data 0xB2E14F22
#data 0x600E0009
#data 0x8B012008
#data 0x0009A07A

#align4
loc_8c1BD94C:
#data 0xE202D305
#data 0x644D6431
#data 0x8B2D3427
#data 0x4F26A075
#data 0x8C352790
#data 0x8C35279E
#data 0x8C3537FC
#data 0x8C352E8D
#data 0x8C35279C
#data 0x8C35278C
#data 0x8C35178A
#data 0x8C353835
#data 0x8C353838
#data 0x8C353939
#data 0x8C35394E
#data 0x8C35393A
#data 0x8C353834
#data 0x8C353836
#data 0x8C353804
#data 0x8C35394A
#data 0x8C353948
#data 0x8C35395C
#data 0x8C353960
#data 0x8C353837
#data 0x8C353954
#data 0x8C353946

#align4
loc_8c1BD9B4:
#data 0x2448D737
#data 0x8F08E601
#data 0xD036E500
#data 0x27512050
#data 0x2360D335
#data 0xA039D235
#data 0x2260

loc_8c1BD9CE:
#data 0x6043
#data 0x88010009
#data 0xD1308B05
#data 0x27512150
#data 0xA02FD331
#data 0x2360

loc_8c1BD9E2:
#data 0x6043
#data 0x88020009
#data 0xD62F8B2A
#data 0x70016061
#data 0x64612601
#data 0x604DD52D
#data 0x8F038809
#data 0x90436403
#data 0x0009A018

#align4
loc_8c1BDA04:
#data 0x00096043
#data 0x8B02880A
#data 0xA00A913D
#data 0x0009

loc_8c1BDA12:
#data 0x6043
#data 0x880B0009
#data 0x90378B02
#data 0x0009A00A

#align4
loc_8c1BDA20:
#data 0x8B02880C
#data 0x9133

loc_8c1BDA26:
#data 0xA00B
#data 0x2511

loc_8c1BDA2A:
#data 0x6043
#data 0x880D0009
#data 0x902D8B02

#align4
loc_8c1BDA34:
#data 0x2501A004

#align4
loc_8c1BDA38:
#data 0x8B01880E
#data 0x25119129

#align4
loc_8c1BDA40:
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1BDA46:
#data 0x2FE6
#data 0xD31A2FD6
#data 0x6531D61A
#data 0x605D6162
#data 0x001CDD16
#data 0x64D3625D
#data 0xD0172400
#data 0x61014F22
#data 0x3210611D
#data 0x74018F0A
#data 0xE100D214
#data 0xD3142211
#data 0xE413430B
#data 0xE205D313
#data 0x2322A06B

#align4
loc_8c1BDA80:
#data 0xDE12D713
#data 0x0009A02F
#data 0x03FF01FF
#data 0x0FFF07FF
#data 0x3FFF1FFF
#data 0x8C35394E
#data 0x8C353939
#data 0x8C353834
#data 0x8C353836
#data 0x8C35393A
#data 0x8C35393E
#data 0x8C353942
#data 0x8C353839
#data 0x8C3537FC
#data 0x8C353954
#data 0x8C35393C
#data 0x8C35279E

#align4
loc_8c1BDAC4:
#data loc_8c1B3454
#data 0x8C34B324
#data 0x8C353958
#data 0x8C353802

#align4
loc_8c1BDAD4:
#data 0x605D63E2
#data 0x053D4000
#data 0x605D6362
#data 0x2410013C
#data 0x7401

loc_8c1BDAE6:
#data 0x6271
#data 0x622D635D
#data 0x89F13323
#data 0x32D86243
#data 0x622CDE83
#data 0x2E2174FF
#data 0x6340D282
#data 0xD5822230
#data 0x615163E1
#data 0xD682D781
#data 0xA00E313C
#data 0x2511

loc_8c1BDB12:
#data 0x6240
#data 0x622C6560
#data 0x3230635C
#data 0x75338B01
#data 0x2650

loc_8c1BDB22:
#data 0x6372
#data 0x27327301
#data 0x74FF6140
#data 0x2314

loc_8c1BDB2E:
#data 0x34D2
#data 0xB01489EF
#data 0x600E0009
#data 0x89052008
#data 0x6231D376
#data 0x89012228
#data 0x0009B050

#align4
loc_8c1BDB48:
#data 0x63E1D274
#data 0xD0742231
#data 0x6101D371
#data 0x2311

loc_8c1BDB56:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1BDB5E:
#data 0x2FE6
#data 0xD5712FD6
#data 0x6350D46C
#data 0xD667DD6E
#data 0x8F1B2338
#data 0xD26EEE00
#data 0x23386320
#data 0x62D18916
#data 0x622DD16C
#data 0x60126341
#data 0x633D4200
#data 0x622D022D
#data 0x8B273320
#data 0x63D1D168
#data 0x633D6012
#data 0x033C6260
#data 0x633C622C
#data 0x89153230
#data 0x0009A01C

#align4
loc_8c1BDBA8:
#data 0xD26325E0
#data 0x60226341
#data 0x6660633D
#data 0xD25F4300
#data 0x666C043D
#data 0x6732D35F
#data 0x6522A00B

#align4
loc_8c1BDBC4:
#data 0x035C604D
#data 0x633C626D
#data 0x8B023320

#align4
loc_8c1BDBD0:
#data 0xA0062DE1
#data 0xE000

loc_8c1BDBD6:
#data 0x4000
#data 0x047D

loc_8c1BDBDA:
#data 0x634D
#data 0x8BF12338

loc_8c1BDBE0:
#data 0xE001

loc_8c1BDBE2:
#data 0x6DF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1BDBE8:
#data 0x2FD62FE6
#data 0xD054D24B
#data 0x61014F22
#data 0x7FFC6321
#data 0x895B3312
#data 0xDE51D746
#data 0xD14D6371
#data 0x64E1633D
#data 0xDD4C6512
#data 0x6643644D
#data 0x43004600
#data 0x335C60D2
#data 0x06256231
#data 0x600D6071
#data 0x05454000
#data 0xD138D343
#data 0x62106032
#data 0xD3400424
#data 0x60326271
#data 0x60630625
#data 0xE2000009
#data 0xD1390525
#data 0x74012141
#data 0xD341D240
#data 0x67316621
#data 0x3466666D
#data 0x677D8F06
#data 0x6473A004

#align4
loc_8c1BDC58:
#data 0x34667401
#data 0x64738B00

#align4
loc_8c1BDC60:
#data 0x00096043
#data 0x035D4000
#data 0x2338633D
#data 0x65F38BF4
#data 0xB0272E41
#data 0x600E64E1
#data 0x890B2008
#data 0x63D260F1
#data 0x62E1600D
#data 0x330C4000
#data 0x622D60D2
#data 0x012D4200
#data 0x0009A012

#align4
loc_8c1BDC94:
#data 0x64E1D326
#data 0x644D6032
#data 0x4400D126
#data 0x6012024D
#data 0x4200622D
#data 0x60D2320C
#data 0x2231034D
#data 0x0009A003

#align4
loc_8c1BDCB4:
#data 0xE100D31B

loc_8c1BDCB8:
#data 0x2311

loc_8c1BDCBA:
#data 0x7F04
#data 0x6DF64F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1BDCC4:
#data 0x6743D31A
#data 0x647DD21C
#data 0x44006032
#data 0xD2196622
#data 0x6022044D
#data 0x4400644D
#data 0x044DA00C

#align4
loc_8c1BDCE0:
#data 0x4000604D
#data 0x6201306C
#data 0x622D637D
#data 0x8B023320
#data 0x000B2541
#data 0xE001
;-------------------------------------------------------------------------------

loc_8c1BDCF6:
#data 0x6401

#align4
loc_8c1BDCF8:
#data 0x2228624D
#data 0xE0008BF0
#data 0x0009000B
;-------------------------------------------------------------------------------
#data 0x8C353944
#data 0x8C353837
#data 0x8C35382C
#data 0x8C353830
#data 0x8C353838
#data 0x8C35394A
#data 0x8C353948
#data 0x8C3537FC
#data 0x8C353946
#data 0x8C35393A
#data 0x8C352E20
#data 0x8C353958
#data 0x8C353954
#data 0x8C35395C
#data 0x8C353960
#data 0x8C353806
#data 0x8C35393C
#data 0x8C353808
#data 0x8C353802

#align4
loc_8c1BDD50:
#data 0x644D2FE6
#data 0x2FC62FD6
#data 0x2FA62FB6
#data 0x2F862F96
#data 0x4F22D978
#data 0x7FFCD376
#data 0x2F426E31
#data 0xDA766290
#data 0x442C622C
#data 0x6120D275
#data 0x8D092118
#data 0x61A22E4B
#data 0x2A127101
#data 0x681371FF
#data 0x64E3B34D
#data 0x2800A004

#align4
loc_8c1BDD90:
#data 0x710161A2
#data 0x21E42A12

#align4
loc_8c1BDD98:
#data 0x63B1DB6D
#data 0x2B317301
#data 0x62D1DD6C
#data 0x2D217201
#data 0x63C1DC6B
#data 0x2C317301
#data 0x61A2D06A
#data 0x31266202
#data 0xD1698B02
#data 0x2A326312

#align4
loc_8c1BDDC0:
#data 0xE3086290
#data 0x622C6EF2
#data 0x3328D166
#data 0x633B6290
#data 0x63114E3C
#data 0xE308323C
#data 0x60902920
#data 0x3033600C
#data 0xD25A8B27
#data 0x20086020
#data 0x61A28908
#data 0x2A127101
#data 0x681371FF
#data 0x64E3B317
#data 0x2800A004

#align4
loc_8c1BDDFC:
#data 0x710161A2
#data 0x21E42A12

#align4
loc_8c1BDE04:
#data 0x730163B1
#data 0x62D12B31
#data 0x2D217201
#data 0x730163C1
#data 0xD0512C31
#data 0x620261A2
#data 0x8F033126
#data 0xD14F62ED
#data 0x2A326312

#align4
loc_8c1BDE28:
#data 0x6E236390
#data 0x73F84E19
#data 0x2930

loc_8c1BDE32:
#data 0x7F04
#data 0x4F26D242
#data 0x68F622E1
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1BDE4A:
#data 0x2FE6
#data 0x2FC62FD6
#data 0x4F222FB6
#data 0xDE46DD45
#data 0x7FFCDC42
#data 0xA00FDB42
#data 0x2F41

loc_8c1BDE62:
#data 0xBF75
#data 0x63D1E402
#data 0x2D317301
#data 0x720162C1
#data 0x63B12C21
#data 0x2B317301
#data 0x63E162E1
#data 0x2E21323C

#align4
loc_8c1BDE80:
#data 0x61F163E1
#data 0x89EC3132
#data 0x4F267F04
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1BDE96:
#data 0x2FE6
#data 0xD22C2F86
#data 0x63204F22
#data 0x2338DE29
#data 0x63E28907
#data 0x2E327301
#data 0xB2BA73FF
#data 0xA0046833
#data 0x2800

loc_8c1BDEB6:
#data 0x61E2
#data 0x2E127101
#data 0x2144

loc_8c1BDEBE:
#data 0xD424
#data 0x73016341
#data 0xD4232431
#data 0x72016241
#data 0xD4222421
#data 0x73016341
#data 0xD0212431
#data 0x620261E2
#data 0x8B023126
#data 0x6312D11F
#data 0x2E32

loc_8c1BDEE6:
#data 0x4F26
#data 0x000B68F6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1BDEEE:
#data 0xD415
#data 0x23386340
#data 0xE1008904
#data 0xD3112410
#data 0x6431AFCB

#align4
loc_8c1BDF00:
#data 0x0009000B
;-------------------------------------------------------------------------------

#align4
loc_8c1BDF04:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x4F222F86
#data 0xDD1CDC1B
#data 0xDB19DE1C
#data 0xD916D815
#data 0xA06FDA16
#data 0x0009

loc_8c1BDF26:
#data 0xD309
#data 0x22286230
#data 0x64D28930
#data 0x2D427401
#data 0xB29174FF
#data 0x600C6440
#data 0x2B01A02F
#data 0x8C3537EA
#data 0x8C3537D9
#data 0x8C35177C
#data 0x8C352E8D
#data 0x8C351788
#data 0x8C3537D0
#data 0x8C34B310
#data 0x8C351774
#data 0x8C351770
#data 0x8C353810
#data 0x8C353812
#data 0x8C35380C
#data 0x8C35380E
#data 0x8C35279C
#data 0x8C35393E
#data 0x8C35279E
#data 0x8C353950
#data 0x8C35394E
#data 0x8C352790
#data 0x8C353939

#align4
loc_8c1BDF90:
#data 0x720162D2
#data 0x72FF2D22
#data 0x611C6120
#data 0x2B11

loc_8c1BDF9E:
#data 0xD03D
#data 0x630262D2
#data 0x8B013236
#data 0x2D22D23B

#align4
loc_8c1BDFAC:
#data 0x73FF63A1
#data 0x62812A31
#data 0x282172FF
#data 0x63B162E0
#data 0x61C1622C
#data 0x432D633D
#data 0x2C31231B
#data 0x720862E0
#data 0x62912E20
#data 0x622D63E0
#data 0x3323633C
#data 0xD1308B14
#data 0x621163C1
#data 0x2239D02F
#data 0x63912021
#data 0x313861E0
#data 0xE1082E10
#data 0x62B163E0
#data 0x3138633C
#data 0x622D611B
#data 0x2C21421D
#data 0xE001A005

#align4
loc_8c1BE004:
#data 0x633D63A1
#data 0x898C4315
#data 0xE000

loc_8c1BE00E:
#data 0x4F26
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1BE020:
#data 0x6352D520
#data 0x25327301
#data 0xD41F2344
#data 0x72016241
#data 0x2421000B
;-------------------------------------------------------------------------------

loc_8c1BE034:
mov.l @(loc_8c1BE0AC,pc),r7 ; r7 set to 0x8C353800
mov 0x09,r1 ; r1 set to 0x09
sts.l pr,@-r15
mov.w r5,@r7 ; r7 ??? bc r5 is ???
mov.l @(loc_8c1BE0B0,pc),r3 ; r3 set to 0xFFFF
mov.l @(loc_8c1BE0B4,pc),r2 ; r2 set to 0x8C353808
add r3,r5
mov.w r5,@r2 ; r2 ??? bc r5 is ???
mov.l @(loc_8c1BE0B8,pc),r4 ; r4 set to 0x8C3537FE
mov.w @(loc_8c1BE08E,pc),r5 ; r5 set to 0x200
bra loc_8c1BE054
mov.w r1,@r4

loc_8c1BE04C:
mov.w @r4,r3
add r5,r5
add 0x01,r3
mov.w r3,@r4

loc_8c1BE054:
mov.w @r7,r2
exts.w r5,r3
extu.w r2,r2
cmp/gt r3,r2
bt loc_8c1BE04C
mov.l @(loc_8c1BE0BC,pc),r2 ; r2 set to 0x8C353802, r2 set to 0x8C353802
mov 0x03,r1 ; r1 set to 0x03, r1 set to 0x03
mov.w @(loc_8c1BE090,pc),r3 ; r3 set to 0x103, r3 set to 0x103
mov.w r3,@r2 ; r2 ??, r2 ??
mov 0x7E,r2 ; r2 set to 0x7E, r2 set to 0x7E
mov.l @(loc_8c1BE0C0,pc),r0 ; r0 set to 0x8C353804, r0 set to 0x8C353804
sub r6,r2 ; r2 ??? bc r6 is ???, r2 ??? bc r6 is ???
mov.w r1,@r0 ; r0 ??, r0 ??
mov.l @(loc_8c1BE0C4,pc),r3 ; r3 set to 0x8C353806, r3 set to 0x8C353806
mov.w r6,@r3 ; r3 ??? bc r6 is ???, r3 ??? bc r6 is ???
mov.l @(loc_8c1BE0C8,pc),r1 ; r1 set to 0x8C353952, r1 set to 0x8C353952
bsr loc_8c1BE0D0
mov.w r2,@r1 ; r1 ??? bc r2 is ???, r1 ??? bc r2 is ???
bsr loc_8c1BE2A0
nop
mov.l @(loc_8c1BE0CC,pc),r3 ; r3 set to 0x8C352E8D, r3 set to 0x8C352E8D
mov.b @r3,r0
tst r0,r0
bt loc_8c1BE088
bra loc_8c1BE3B0
lds.l @r15+,pr

loc_8c1BE088:
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c1BE08E:
#data 0x0200

loc_8c1BE090:
#data 0x0103
#data 0x0000
#data 0x8C35278C
#data 0x8C35178A
#data 0x8C353942
#data 0x8C3537FC
#data 0x8C353830
#data 0x8C35382C

#align4
loc_8c1BE0AC:
#data 0x8C353800

#align4
loc_8c1BE0B0:
#data 0x0000FFFF

#align4
loc_8c1BE0B4:
#data 0x8C353808

#align4
loc_8c1BE0B8:
#data 0x8C3537FE

#align4
loc_8c1BE0BC:
#data 0x8C353802

#align4
loc_8c1BE0C0:
#data 0x8C353804

#align4
loc_8c1BE0C4:
#data 0x8C353806

#align4
loc_8c1BE0C8:
#data 0x8C353952

#align4
loc_8c1BE0CC:
#data 0x8C352E8D


loc_8c1BE0D0:
mov.l r14,@-r15
mov 0x09,r1 ; r1 set to 0x09
mov 0x01,r5 ; r5 set to 0x01
mov.l r13,@-r15
mov 0x00,r4 ; r4 set to 0x00
mov.l r12,@-r15
mov.l r11,@-r15
mov.l @(loc_8c1BE1BC,pc),r14 ; r14 set to 0x8C353802
mov.l @(loc_8c1BE1C0,pc),r2 ; r2 set to 0x8C35380A
mov.w @r14,r3
mov.w r3,@r2 ; r2 ??? bc r3 is ???
mov 0xF9,r2 ; r2 set to 0xFFFFFFF9
mov.l @(loc_8c1BE1C4,pc),r0 ; r0 set to 0x8C35380C
mov.w r1,@r0 ; r0 ??
mov.l @(loc_8c1BE1C8,pc),r3 ; r3 set to 0x8C353810
mov.w r5,@r3 ; r3 ??
mov.l @(loc_8c1BE1CC,pc),r1 ; r1 set to 0x8C353812
mov.w r2,@r1 ; r1 ??
mov.l @(loc_8c1BE1D0,pc),r2 ; r2 set to 0x8C35380E
mov.w @(loc_8c1BE1AE,pc),r0 ; r0 set to 0x200
mov.w r0,@r2 ; r2 ??
mov.l @(loc_8c1BE1D4,pc),r3 ; r3 set to 0x8C3537F2
mov.w r4,@r3 ; r3 ??
mov.l @(loc_8c1BE1D8,pc),r1 ; r1 set to 0x8C3537D9
mov.b r4,@r1 ; r1 ??
mov.l @(loc_8c1BE1DC,pc),r2 ; r2 set to 0x8C3537F4
mov.w r4,@r2 ; r2 ??
mov.l @(loc_8c1BE1E0,pc),r3 ; r3 set to 0x8C3537FC
mov.w r4,@r3 ; r3 ??
mov.l @(loc_8c1BE1E4,pc),r1 ; r1 set to 0x8C3537EA
mov.w r4,@r1 ; r1 ??
mov.l @(loc_8c1BE1E8,pc),r2 ; r2 set to 0x8C353814
mov.w r4,@r2 ; r2 ??
mov.l @(loc_8c1BE1EC,pc),r3 ; r3 set to 0x8C3537FA
mov.w r4,@r3 ; r3 ??
mov.w @(loc_8c1BE1B0,pc),r6 ; r6 set to 0x400
mov.l @(loc_8c1BE1F0,pc),r1 ; r1 set to 0x8C34B30C
mov.w r6,@r1 ; r1 ??
mov.l @(loc_8c1BE1F4,pc),r2 ; r2 set to 0x8C34B30E
mov.w r4,@r2 ; r2 ??
mov.l @(loc_8c1BE1F8,pc),r3 ; r3 set to 0x8C34B310
mov.w r4,@r3 ; r3 ??
mov.l @(loc_8c1BE1FC,pc),r1 ; r1 set to 0x8C3537F8
mov.w r4,@r1 ; r1 ??
mov.l @(loc_8c1BE200,pc),r2 ; r2 set to 0x8C3537D8
mov.b r4,@r2 ; r2 ??
mov.l @(loc_8c1BE204,pc),r3 ; r3 set to 0x8C3537D6
mov.b r5,@r3 ; r3 ??
mov.l @(loc_8c1BE208,pc),r1 ; r1 set to 0x8C3537D2
mov.b r4,@r1 ; r1 ??
mov.l @(loc_8c1BE20C,pc),r2 ; r2 set to 0x8C3537D3
mov.b r4,@r2 ; r2 ??
mov.l @(loc_8c1BE210,pc),r3 ; r3 set to 0x8C3537D4
mov.b r4,@r3 ; r3 ??
mov.l @(loc_8c1BE214,pc),r1 ; r1 set to 0x8C3537DA
mov.b r4,@r1 ; r1 ??
mov.l @(loc_8c1BE218,pc),r2 ; r2 set to 0x8C3537D5
mov.b r4,@r2 ; r2 ??
mov.l @(loc_8c1BE220,pc),r0 ; r0 set to 0x8C352E8D
mov.l @(loc_8c1BE21C,pc),r5 ; r5 set to 0x8C3537F6
mov.b @r0,r3
tst r3,r3
bt loc_8c1BE152
bra loc_8c1BE156
mov.w r4,@r5

loc_8c1BE152:
mov 0x40,r1 ; r1 set to 0x40
mov.w r1,@r5

loc_8c1BE156:
mov.l @(loc_8c1BE224,pc),r3 ; r3 set to 0x8C3537E0, r3 set to 0x8C3537E0
mov.w r4,@r3 ; r3 ??? bc r4 is ???, r3 ??? bc r4 is ???
mov.l @(loc_8c1BE228,pc),r2 ; r2 set to 0x8C3537E8, r2 set to 0x8C3537E8
mov.w r4,@r2 ; r2 ??? bc r4 is ???, r2 ??? bc r4 is ???
mov.l @(loc_8c1BE230,pc),r1 ; r1 set to 0x8C34CF70, r1 set to 0x8C34CF70
mov.l @(loc_8c1BE22C,pc),r5 ; r5 set to 0x8C353818, r5 set to 0x8C353818
mov r1,r3 ; r3 set to 0x8C34CF70, r3 set to 0x8C34CF70
add r3,r6
mov.l r1,@r5 ; r5 ??, r5 ??
mov.l @(loc_8c1BE234,pc),r1 ; r1 set to 0x8C353954, r1 set to 0x8C353954
mov.l r6,@r1 ; r1 ??? bc r6 is ???, r1 ??? bc r6 is ???
mov.l @r5,r0
mov.w @(loc_8c1BE1B2,pc),r3 ; r3 set to 0x800, r3 set to 0x800
mov.l @(loc_8c1BE238,pc),r11 ; r11 set to 0x8C35381C, r11 set to 0x8C35381C
add r3,r0
mov.l r0,@r11 ; r11 ??? bc r0 is ???, r11 ??? bc r0 is ???
shll2 r3 ; r3 set to 0x2000, r3 set to 0x2000
mov.w @(loc_8c1BE1B4,pc),r2 ; r2 set to 0x1000, r2 set to 0x1000
mov.l @r5,r0
mov.l @(loc_8c1BE23C,pc),r12 ; r12 set to 0x8C353820, r12 set to 0x8C353820
add r2,r0
mov.l r0,@r12 ; r12 ??? bc r0 is ???, r12 ??? bc r0 is ???
mov.w @(loc_8c1BE1B6,pc),r1 ; r1 set to 0x1800, r1 set to 0x1800
mov.l @r5,r0
mov.l @(loc_8c1BE240,pc),r13 ; r13 set to 0x8C353824, r13 set to 0x8C353824
add r1,r0
mov.l r0,@r13 ; r13 ??? bc r0 is ???, r13 ??? bc r0 is ???
mov.l @r5,r0
mov.l @(loc_8c1BE244,pc),r2 ; r2 set to 0x8C353958, r2 set to 0x8C353958
add r3,r0
mov.l r0,@r2 ; r2 ??? bc r0 is ???, r2 ??? bc r0 is ???
mov.w @(loc_8c1BE1B8,pc),r3 ; r3 set to 0x2800, r3 set to 0x2800
mov.l @r5,r1 ; r1 ??? bc r5 is ???, r1 ??? bc r5 is ???
mov.l @(loc_8c1BE248,pc),r2 ; r2 set to 0x8C35395C, r2 set to 0x8C35395C
add r3,r1
mov.l r1,@r2 ; r2 ??? bc r1 is ???, r2 ??? bc r1 is ???
mov.l @r5,r0
mov.w @(loc_8c1BE1BA,pc),r3 ; r3 set to 0x3000, r3 set to 0x3000
mov.l @(loc_8c1BE24C,pc),r2 ; r2 set to 0x8C353960, r2 set to 0x8C353960
add r3,r0
mov.l r0,@r2 ; r2 ??? bc r0 is ???, r2 ??? bc r0 is ???
mov.l @(loc_8c1BE250,pc),r1 ; r1 set to 0x8C353808, r1 set to 0x8C353808
bra loc_8c1BE26C
mov r4,r6

loc_8c1BE1AE:
#data 0x0200

loc_8c1BE1B0:
#data 0x0400

loc_8c1BE1B2:
#data 0x0800

loc_8c1BE1B4:
#data 0x1000

loc_8c1BE1B6:
#data 0x1800

loc_8c1BE1B8:
#data 0x2800

loc_8c1BE1BA:
#data 0x3000

#align4
loc_8c1BE1BC:
#data 0x8C353802

#align4
loc_8c1BE1C0:
#data 0x8C35380A

#align4
loc_8c1BE1C4:
#data 0x8C35380C

#align4
loc_8c1BE1C8:
#data 0x8C353810

#align4
loc_8c1BE1CC:
#data 0x8C353812

#align4
loc_8c1BE1D0:
#data 0x8C35380E

#align4
loc_8c1BE1D4:
#data 0x8C3537F2

#align4
loc_8c1BE1D8:
#data 0x8C3537D9

#align4
loc_8c1BE1DC:
#data 0x8C3537F4

#align4
loc_8c1BE1E0:
#data 0x8C3537FC

#align4
loc_8c1BE1E4:
#data 0x8C3537EA

#align4
loc_8c1BE1E8:
#data 0x8C353814

#align4
loc_8c1BE1EC:
#data 0x8C3537FA

#align4
loc_8c1BE1F0:
#data 0x8C34B30C

#align4
loc_8c1BE1F4:
#data 0x8C34B30E

#align4
loc_8c1BE1F8:
#data 0x8C34B310

#align4
loc_8c1BE1FC:
#data 0x8C3537F8

#align4
loc_8c1BE200:
#data 0x8C3537D8

#align4
loc_8c1BE204:
#data 0x8C3537D6

#align4
loc_8c1BE208:
#data 0x8C3537D2

#align4
loc_8c1BE20C:
#data 0x8C3537D3

#align4
loc_8c1BE210:
#data 0x8C3537D4

#align4
loc_8c1BE214:
#data 0x8C3537DA

#align4
loc_8c1BE218:
#data 0x8C3537D5

#align4
loc_8c1BE21C:
#data 0x8C3537F6

#align4
loc_8c1BE220:
#data 0x8C352E8D

#align4
loc_8c1BE224:
#data 0x8C3537E0

#align4
loc_8c1BE228:
#data 0x8C3537E8

#align4
loc_8c1BE22C:
#data 0x8C353818

#align4
loc_8c1BE230:
#data 0x8C34CF70

#align4
loc_8c1BE234:
#data 0x8C353954

#align4
loc_8c1BE238:
#data 0x8C35381C

#align4
loc_8c1BE23C:
#data 0x8C353820

#align4
loc_8c1BE240:
#data 0x8C353824

#align4
loc_8c1BE244:
#data 0x8C353958

#align4
loc_8c1BE248:
#data 0x8C35395C

#align4
loc_8c1BE24C:
#data 0x8C353960

#align4
loc_8c1BE250:
#data 0x8C353808


loc_8c1BE254:
mov.l @r5,r3
exts.w r6,r0
exts.w r6,r7
mov.b r4,@(r0,r3)
shll r7
mov.l @r11,r0
add 0x01,r6
mov.w r4,@(r0,r7)
mov.l @r12,r0
mov.w r4,@(r0,r7)
mov.l @r13,r0
mov.w r4,@(r0,r7)

loc_8c1BE26C:
mov.w @r1,r2
exts.w r6,r3
extu.w r2,r2
cmp/gt r2,r3
bf loc_8c1BE254
mov.l @(loc_8c1BE354,pc),r6 ; r6 set to 0x8C353804, r6 set to 0x8C353804
bra loc_8c1BE28C
mov.w @r6,r4

loc_8c1BE27C:
mov.w @r6,r1
exts.w r4,r2
mov.l @r5,r3
exts.w r4,r0
extu.w r1,r1
sub r1,r2
add 0x01,r4
mov.b r2,@(r0,r3)

loc_8c1BE28C:
mov.w @r14,r2
exts.w r4,r3
extu.w r2,r2
cmp/ge r2,r3
bf loc_8c1BE27C
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1BE2A0:
mov.l r14,@-r15
mov 0x09,r1 ; r1 set to 0x09
mov 0x00,r4 ; r4 set to 0x00
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l @(loc_8c1BE358,pc),r14 ; r14 set to 0x8C353802
mov.l @(loc_8c1BE35C,pc),r2 ; r2 set to 0x8C35393C
mov.w @r14,r3
mov.w r3,@r2 ; r2 ??? bc r3 is ???
mov.l @(loc_8c1BE360,pc),r0 ; r0 set to 0x8C35393E
mov.w r1,@r0 ; r0 ??
mov.w @(loc_8c1BE350,pc),r3 ; r3 set to 0x200
mov.l @(loc_8c1BE364,pc),r1 ; r1 set to 0x8C353940
mov.w r3,@r1 ; r1 ??
mov.w @(loc_8c1BE352,pc),r2 ; r2 set to 0x1FF
mov.l @(loc_8c1BE368,pc),r3 ; r3 set to 0x8C353942
mov.w r2,@r3 ; r3 ??
mov.l @(loc_8c1BE36C,pc),r2 ; r2 set to 0x8C353948
mov.w r4,@r2 ; r2 ??
mov.l @(loc_8c1BE370,pc),r1 ; r1 set to 0x8C35394A
mov.w r4,@r1 ; r1 ??
mov.l @(loc_8c1BE374,pc),r3 ; r3 set to 0x8C353939
mov.b r4,@r3 ; r3 ??
mov.l @(loc_8c1BE378,pc),r2 ; r2 set to 0x8C353946
mov.w r4,@r2 ; r2 ??
mov.l @(loc_8c1BE37C,pc),r1 ; r1 set to 0x8C35394E
mov.w r4,@r1 ; r1 ??
mov.l @(loc_8c1BE380,pc),r3 ; r3 set to 0x8C353838
mov.b r4,@r3 ; r3 ??
mov.l @(loc_8c1BE384,pc),r2 ; r2 set to 0x8C353835
mov.b r4,@r2 ; r2 ??
mov.l @(loc_8c1BE388,pc),r1 ; r1 set to 0x8C353834
mov 0x01,r5 ; r5 set to 0x01
mov.b r5,@r1 ; r1 ??
mov.l @(loc_8c1BE38C,pc),r3 ; r3 set to 0x8C353836
mov.b r4,@r3 ; r3 ??
mov.l @(loc_8c1BE390,pc),r2 ; r2 set to 0x8C35393A
mov.b r5,@r2 ; r2 ??
mov.l @(loc_8c1BE394,pc),r1 ; r1 set to 0x8C353950
mov.w r4,@r1 ; r1 ??
mov.l @(loc_8c1BE398,pc),r3 ; r3 set to 0x8C35382C
mov.w r4,@r3 ; r3 ??
mov.l @(loc_8c1BE3A0,pc),r11 ; r11 set to 0x8C353960
mov.l @(loc_8c1BE3A4,pc),r12 ; r12 set to 0x8C35395C
mov.l @(loc_8c1BE39C,pc),r10 ; r10 set to 0x8C353808
mov.l @(loc_8c1BE3AC,pc),r7 ; r7 set to 0x8C353954
mov.l @(loc_8c1BE3A8,pc),r1 ; r1 set to 0x8C353958
bra loc_8c1BE31C
mov r4,r5

loc_8c1BE304:
mov.l @r7,r3
exts.w r5,r0
exts.w r5,r6
mov.b r4,@(r0,r3)
shll r6
mov.l @r1,r0
add 0x01,r5
mov.w r4,@(r0,r6)
mov.l @r12,r0
mov.w r4,@(r0,r6)
mov.l @r11,r0
mov.w r4,@(r0,r6)

loc_8c1BE31C:
mov.w @r10,r2
exts.w r5,r3
extu.w r2,r2
cmp/gt r2,r3
bf loc_8c1BE304
mov.l @(loc_8c1BE354,pc),r5 ; r5 set to 0x8C353804, r5 set to 0x8C353804
bra loc_8c1BE33C
mov.w @r5,r4

loc_8c1BE32C:
mov.w @r5,r1
exts.w r4,r2
mov.l @r7,r3
exts.w r4,r0
extu.w r1,r1
sub r1,r2
add 0x01,r4
mov.b r2,@(r0,r3)

loc_8c1BE33C:
mov.w @r14,r2
exts.w r4,r3
extu.w r2,r2
cmp/ge r2,r3
bf loc_8c1BE32C
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1BE350:
#data 0x0200

loc_8c1BE352:
#data 0x01FF

#align4
loc_8c1BE354:
#data 0x8C353804

#align4
loc_8c1BE358:
#data 0x8C353802

#align4
loc_8c1BE35C:
#data 0x8C35393C

#align4
loc_8c1BE360:
#data 0x8C35393E

#align4
loc_8c1BE364:
#data 0x8C353940

#align4
loc_8c1BE368:
#data 0x8C353942

#align4
loc_8c1BE36C:
#data 0x8C353948

#align4
loc_8c1BE370:
#data 0x8C35394A

#align4
loc_8c1BE374:
#data 0x8C353939

#align4
loc_8c1BE378:
#data 0x8C353946

#align4
loc_8c1BE37C:
#data 0x8C35394E

#align4
loc_8c1BE380:
#data 0x8C353838

#align4
loc_8c1BE384:
#data 0x8C353835

#align4
loc_8c1BE388:
#data 0x8C353834

#align4
loc_8c1BE38C:
#data 0x8C353836

#align4
loc_8c1BE390:
#data 0x8C35393A

#align4
loc_8c1BE394:
#data 0x8C353950

#align4
loc_8c1BE398:
#data 0x8C35382C

#align4
loc_8c1BE39C:
#data 0x8C353808

#align4
loc_8c1BE3A0:
#data 0x8C353960

#align4
loc_8c1BE3A4:
#data 0x8C35395C

#align4
loc_8c1BE3A8:
#data 0x8C353958

#align4
loc_8c1BE3AC:
#data 0x8C353954

#align4
loc_8c1BE3B0:
#data 0xEE002FE6
#data 0xE4032FD6
#data 0x2FB62FC6
#data 0x2FA66BE3
#data 0xE9012F96
#data 0xE8142F86
#data 0x4F22D33F
#data 0xD23F23E2
#data 0xD13F22E2
#data 0xD33F2140
#data 0xDD3F2340
#data 0xDC3F2DE0
#data 0x2CE0

loc_8c1BE3E2:
#data 0xE308
#data 0x323362BE
#data 0x7B018F01
#data 0x6BE3

loc_8c1BE3EE:
#data 0xD33C
#data 0x3A3C6ABE
#data 0x64A0B046
#data 0x6403B054
#data 0x790162D0
#data 0x323C63A0
#data 0x61C02D20
#data 0x313C63A0
#data 0x3387639E
#data 0x2C108FE7
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1BE426:
#data 0x2FE6
#data 0xD529E208
#data 0x63504F22
#data 0x25307301
#data 0x3323633E
#data 0xE1008B01
#data 0x2510

loc_8c1BE43E:
#data 0xD028
#data 0xDE256350
#data 0x61E0023C
#data 0xB01B312C
#data 0x64E02E10
#data 0x6043240A
#data 0x4F260009
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1BE45C:
#data 0xE208D51D
#data 0x73016350
#data 0x633E2530
#data 0x8B013323
#data 0x2510E100

#align4
loc_8c1BE470:
#data 0x6350D01B
#data 0x023CD619
#data 0x312C6160
#data 0x63602610
#data 0x243AA010

#align4
loc_8c1BE484:
#data 0xE3FAD610
#data 0x453C6562
#data 0x675D6362
#data 0x47014709
#data 0x247A275A
#data 0x4318624C
#data 0x2632232B
#data 0x6043000B
;-------------------------------------------------------------------------------

#align4
loc_8c1BE4A4:
#data 0xE3FAD609
#data 0x6562624C
#data 0x6362453C
#data 0x4318675D
#data 0x4709232B
#data 0x47012632
#data 0x00096053
#data 0x000B207A
#data 0x0000204A
#data 0x8C35396C
#data 0x8C353970
#data 0x8C353967
#data 0x8C353968
#data 0x8C353965
#data 0x8C353966
#data 0x8C352E8E


loc_8c1BE4E4:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
mov.l @(loc_8c1BE578,pc),r14 ; r14 set to 0x8C34AF50
mov.l @(loc_8c1BE57C,pc),r3 ; r3 set to 0x8C1C2B48
mov.l @(loc_8c1BE574,pc),r11 ; r11 set to 0x8C1995D6
mov.w @(loc_8c1BE570,pc),r12 ; r12 set to 0x80
jsr @r3
mov 0x00,r10 ; r10 set to 0x00
exts.b r0,r0
tst r0,r0
bt loc_8c1BE522
mov.l @(loc_8c1BE580,pc),r3 ; r3 set to 0x8C34B03A
mov.b r10,@r3 ; r3 ??
bsr loc_8c1BE930
mov 0x03,r4 ; r4 set to 0x03
mov.b @(0x0E,r14),r0
extu.b r0,r0
tst r12,r0
bf loc_8c1BE51A
bra loc_8c1BE8DC
nop

loc_8c1BE51A:
jsr @r11
mov 0x01,r4 ; r4 set to 0x01
bra loc_8c1BE8DC
nop

loc_8c1BE522:
mov.l @(loc_8c1BE58C,pc),r13 ; r13 set to 0x8C34B0FD
mov.l @(loc_8c1BE590,pc),r2 ; r2 set to 0x8C34B0D8
mov.b @r13,r0
mov.l @(loc_8c1BE584,pc),r8 ; r8 set to 0x8C1B3EEC
extu.b r0,r0
mov.l @(loc_8c1BE588,pc),r9 ; r9 set to 0x8C1B3F0C
cmp/eq 0x00,r0
bt/s loc_8c1BE594
mov.l @r2,r4
cmp/eq 0x02,r0
bf loc_8c1BE53C
bra loc_8c1BE774
nop

loc_8c1BE53C:
cmp/eq 0x03,r0
bf loc_8c1BE544
bra loc_8c1BE652
nop

loc_8c1BE544:
cmp/eq 0x04,r0
bf loc_8c1BE54C
bra loc_8c1BE678
nop

loc_8c1BE54C:
cmp/eq 0x05,r0
bf loc_8c1BE554
bra loc_8c1BE794
nop

loc_8c1BE554:
cmp/eq 0x06,r0
bf loc_8c1BE55C
bra loc_8c1BE83E
nop

loc_8c1BE55C:
cmp/eq 0x07,r0
bf loc_8c1BE564
bra loc_8c1BE8B6
nop

loc_8c1BE564:
cmp/eq 0x09,r0
bf loc_8c1BE56C
bra loc_8c1BE81E
nop

loc_8c1BE56C:
bra loc_8c1BE8DC
nop

loc_8c1BE570:
#data 0x0080
#data 0x0000

#align4
loc_8c1BE574:
#data bank19.loc_8c1995D6

loc_8c1BE578:
#data 0x8C34AF50

#align4
loc_8c1BE57C:
#data bank1c.loc_8c1c2B48

loc_8c1BE580:
#data 0x8C34B03A

#align4
loc_8c1BE584:
#data loc_8c1B3EEC

loc_8c1BE588:
#data loc_8c1B3F0C

loc_8c1BE58C:
#data 0x8C34B0FD

#align4
loc_8c1BE590:
#data 0x8C34B0D8

#align4
loc_8c1BE594:
#data 0xD6442FA6
#data 0xD445D544
#data 0xD741D340
#data 0x2F36B3C6
#data 0x000960E3
#data 0x60007016
#data 0xC80C600C
#data 0x7F088D03
#data 0x420BD23F
#data 0x0009

loc_8c1BE5BA:
#data 0xDB3F
#data 0xC97F84B7
#data 0x84BA80B7
#data 0x80BAC96B
#data 0xC9F684BB
#data 0x84BC80BB
#data 0x80BCC9FE
#data 0xC9EF84BE
#data 0x63B380BE
#data 0x60307310
#data 0x2300C90C
#data 0x420BD235
#data 0x64B3E401
#data 0x60407406
#data 0xCB09C9F8
#data 0x84EE2400
#data 0x20C8600C
#data 0xD4308B0F
#data 0x480B954D
#data 0x60E30009
#data 0x701B0009
#data 0x600C6000
#data 0x8901C804
#data 0x0009A0B5

#align4
loc_8c1BE618:
#data 0xA15FE302
#data 0x2D30

loc_8c1BE61E:
#data 0x60E3
#data 0x701B0009
#data 0x600C6000
#data 0x8901C804
#data 0x0009A0A9

#align4
loc_8c1BE630:
#data 0x420BD224
#data 0xD3240009
#data 0x0009430B
#data 0xE203E564
#data 0x84E72D20
#data 0x600CD41E
#data 0x480B205E
#data 0xA145051A
#data 0x0009

loc_8c1BE652:
#data 0xD11E
#data 0x6412490B
#data 0x2008600E
#data 0xD31C890C
#data 0x430BE204
#data 0xD31B2D20
#data 0x21186130
#data 0xD21A8904
#data 0xE400420B
#data 0x23A0D317


loc_8c1BE678:
mov.l @(loc_8c1BE6DC,pc),r2 ; r2 set to 0x8C1BF690
jsr @r2
nop
extu.b r0,r4
extu.w r4,r0
cmp/eq 0x02,r0
bf loc_8c1BE6E0
bsr loc_8c1BE930
mov 0x07,r4 ; r4 set to 0x07
mov.b @(0x0E,r14),r0
extu.b r0,r0
tst r12,r0
bf loc_8c1BE696
bra loc_8c1BE8DC
nop

loc_8c1BE696:
jsr @r11
mov 0x08,r4 ; r4 set to 0x08
bra loc_8c1BE8DC
nop
#data 0x00C8
#data 0x8C352F5F
#data 0x8C352F5E
#data 0x8C352F5D
#data 0x8C352F5C
#data 0x8C352F58

#align4
loc_8c1BE6B4:
#data bank1a.loc_8c1aFF72
#data 0x8C34B288

#align4
loc_8c1BE6BC:
#data loc_8c1B689C
#data 0x8C34B0D8

#align4
loc_8c1BE6C4:
#data loc_8c1BF62A

loc_8c1BE6C8:
#data loc_8c1BF762
#data 0x8C34B184

#align4
loc_8c1BE6D0:
#data loc_8c1BF88C
#data 0x8C34B1DF

#align4
loc_8c1BE6D8:
#data bank19.loc_8c19FE4E

loc_8c1BE6DC:
#data loc_8c1BF690


loc_8c1BE6E0:
cmp/eq 0x03,r0
bf loc_8c1BE6E8
bra loc_8c1BE6F0
mov 0x63,r4

loc_8c1BE6E8:
extu.w r4,r0
cmp/eq 0x04,r0
bf loc_8c1BE702
mov 0x07,r4 ; r4 set to 0x07

loc_8c1BE6F0:
lds.l @r15+,pr
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
bra loc_8c1BE930
mov.l @r15+,r14

loc_8c1BE702:
cmp/eq 0x01,r0
bf loc_8c1BE712
mov.l @(loc_8c1BE8F0,pc),r2 ; r2 set to 0x8C1AED24
mov 0x00,r5 ; r5 set to 0x00
jsr @r2
mov 0x12,r4 ; r4 set to 0x12
bra loc_8c1BE736
nop

loc_8c1BE712:
mov.l @(loc_8c1BE8F4,pc),r2 ; r2 set to 0x8C1BF7BC
jsr @r2
nop
exts.b r0,r0
tst r0,r0
bt loc_8c1BE736
bsr loc_8c1BE95C
nop
mov.b @(0x0E,r14),r0
extu.b r0,r0
tst r12,r0
bf loc_8c1BE72E
bra loc_8c1BE8DC
nop

loc_8c1BE72E:
jsr @r11
mov 0x40,r4 ; r4 set to 0x40
bra loc_8c1BE8DC
nop

loc_8c1BE736:
#data 0x60D0
#data 0x8804600C
#data 0xD26E8B02
#data 0x0009420B

#align4
loc_8c1BE744:
#data 0x490BD36D
#data 0x600E6432
#data 0x8B012008
#data 0x0009A0C4

#align4
loc_8c1BE754:
#data 0xE30261E3
#data 0x2130712D
#data 0xE403B0E8
#data 0x600C84EE
#data 0x8B0120C8
#data 0x0009A0B8

#align4
loc_8c1BE76C:
#data 0xE4104B0B
#data 0x0009A0B4


loc_8c1BE774:
jsr @r9
nop
exts.b r0,r0
tst r0,r0
bf loc_8c1BE782
bra loc_8c1BE8DC
nop

loc_8c1BE782:
lds.l @r15+,pr
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
bra loc_8c1BE95C
mov.l @r15+,r14

loc_8c1BE794:
jsr @r9
nop
exts.b r0,r0
tst r0,r0
bt loc_8c1BE7BE
mov r14,r3
mov 0x02,r2 ; r2 set to 0x02
add 0x2D,r3
mov.b r2,@r3
bsr loc_8c1BE930
mov 0x03,r4 ; r4 set to 0x03
mov.b @(0x0E,r14),r0
extu.b r0,r0
tst r12,r0
bf loc_8c1BE7B6
bra loc_8c1BE8DC
nop

loc_8c1BE7B6:
jsr @r11
mov 0x04,r4 ; r4 set to 0x04
bra loc_8c1BE8DC
nop

loc_8c1BE7BE:
mov.l @(loc_8c1BE900,pc),r2 ; r2 set to 0x8C19BEBC
jsr @r2
nop
extu.b r0,r5
extu.w r5,r4
mov r4,r0
nop
cmp/eq 0x05,r0
bt loc_8c1BE82A
mov r4,r0
nop
cmp/eq 0x01,r0
bt loc_8c1BE7FC
mov r4,r0
nop
cmp/eq 0x03,r0
bf loc_8c1BE7FC
bsr loc_8c1BEC54
nop
exts.b r0,r0
tst r0,r0
bt loc_8c1BE7F0
mov 0x06,r2 ; r2 set to 0x06
bra loc_8c1BE7FC
mov.b r2,@r13

loc_8c1BE7F0:
mov.l @(loc_8c1BE904,pc),r1 ; r1 set to 0x8C19F21E
jsr @r1
nop
mov 0x09,r3 ; r3 set to 0x09
bra loc_8c1BE8DC
mov.b r3,@r13

loc_8c1BE7FC:
mov.l @(loc_8c1BE908,pc),r2 ; r2 set to 0x8C19D37A
jsr @r2
nop
exts.b r0,r0
tst r0,r0
bt loc_8c1BE8DC
lds.l @r15+,pr
mov.l @(loc_8c1BE90C,pc),r3 ; r3 set to 0x8C1A124C
mov 0x00,r4 ; r4 set to 0x00
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8c1BE81E:
mov.l @(loc_8c1BE910,pc),r3 ; r3 set to 0x8C19F2FC
jsr @r3
nop
exts.b r0,r0
tst r0,r0
bt loc_8c1BE8DC

loc_8c1BE82A:
lds.l @r15+,pr
mov 0x03,r4 ; r4 set to 0x03, r4 set to 0x03
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
bra loc_8c1BE930
mov.l @r15+,r14

loc_8c1BE83E:
#data 0xD335
#data 0xD13523A0
#data 0xD23521A0
#data 0x22A0B6BE
#data 0x600C84EE
#data 0x890120C8
#data 0x64C34B0B

#align4
loc_8c1BE858:
#data 0x480BD431
#data 0x60E3E500
#data 0x70160009
#data 0x600C6000
#data 0x8808C90C
#data 0xD22D8902
#data 0xE400420B

#align4
loc_8c1BE874:
#data 0x000960E3
#data 0x6000701B
#data 0xC803600C
#data 0x64E38F0B
#data 0x600C844E
#data 0x8906C880
#data 0x00096043
#data 0x60007024
#data 0xC80C600C
#data 0x8B13

loc_8c1BE89A:
#data 0x844E
#data 0xC880600C
#data 0x60438B06
#data 0x70240009
#data 0x600C6000
#data 0x8B08C8C0

#align4
loc_8c1BE8B0:
#data 0xA013E207
#data 0x2D20


loc_8c1BE8B6:
mov.l @(loc_8c1BE920,pc),r1 ; r1 set to 0x8C34CF60
jsr @r9
mov.l @r1,r4
exts.b r0,r0
tst r0,r0
bt loc_8c1BE8DC

loc_8c1BE8C2:
mov.l @(loc_8c1BE928,pc),r2 ; r2 set to 0x8C1B689C
jsr @r2
mov 0x00,r4 ; r4 set to 0x00
lds.l @r15+,pr
mov.l @(loc_8c1BE92C,pc),r3 ; r3 set to 0x8C1BF9B0
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8c1BE8DC:
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
#data 0x0000

#align4
loc_8c1BE8F0:
#data bank1a.loc_8c1aED24

loc_8c1BE8F4:
#data loc_8c1BF7BC

loc_8c1BE8F8:
#data loc_8c1BF8EA
#data 0x8C34B0D8

#align4
loc_8c1BE900:
#data bank19.loc_8c19BEBC

loc_8c1BE904:
#data bank19.loc_8c19F21E

loc_8c1BE908:
#data bank19.loc_8c19D37A

loc_8c1BE90C:
#data bank1a.loc_8c1a124C

loc_8c1BE910:
#data bank19.loc_8c19F2FC
#data 0x8C34B0F9
#data 0x8C34B0FA
#data 0x8C34B0F8

#align4
loc_8c1BE920:
#data 0x8C34CF60

#align4
loc_8c1BE924:
#data bank19.loc_8c19FEEC

loc_8c1BE928:
#data loc_8c1B689C

loc_8c1BE92C:
#data loc_8c1BF9B0


loc_8c1BE930:
sts.l pr,@-r15
mov.l @(loc_8c1BEA08,pc),r3 ; r3 set to 0x8C1AFA18
add 0xFC,r15
jsr @r3
mov.b r4,@r15
mov.l @(loc_8c1BEA0C,pc),r3 ; r3 set to 0x8C1AED24
mov 0x00,r5 ; r5 set to 0x00
jsr @r3
mov.b @r15,r4
mov.l @(loc_8c1BEA10,pc),r2 ; r2 set to 0x8C1AFD44
add 0x04,r15
jmp @r2
lds.l @r15+,pr
#data 0x4F22
#data 0x430BD331
#data 0x4F26E464
#data 0xE200D330
#data 0x2320000B
;-------------------------------------------------------------------------------

#align4
loc_8c1BE95C:
#data 0x2FD62FE6
#data 0xEC042FC6
#data 0x4F222FB6
#data 0xD32DDE2C
#data 0xE400430B
#data 0x721B62E3
#data 0x633C6320
#data 0x890523C8
#data 0x6030D329
#data 0xCB10D229
#data 0x2300420B

#align4
loc_8c1BE988:
#data 0x9B3C84EE
#data 0x20B8600C
#data 0xD2268904
#data 0x0009420B
#data 0x0009A003

#align4
loc_8c1BE99C:
#data 0x420BD224
#data 0x0009

loc_8c1BE9A2:
#data 0xB0A7
#data 0x62E3E400
#data 0x6320721B
#data 0x23C8633C
#data 0x64E38903
#data 0xA00E743A
#data 0x6440

loc_8c1BE9BA:
#data 0x60E3
#data 0x70200009
#data 0xE4106000
#data 0x2408600C
#data 0x64E38902
#data 0x7421A002

#align4
loc_8c1BE9D0:
#data 0x742364E3

loc_8c1BE9D4:
#data 0x6440

loc_8c1BE9D6:
#data 0xD217
#data 0x0009420B
#data 0x743164E3
#data 0xD3156440
#data 0x24B9644C
#data 0x430B2448
#data 0x60E30429
#data 0x70170009
#data 0x600C6000
#data 0x8921C801
#data 0x420BD20F
#data 0xA0200009
#data 0x00800009

#align4
loc_8c1BEA08:
#data bank1a.loc_8c1aFA18

loc_8c1BEA0C:
#data bank1a.loc_8c1aED24

loc_8c1BEA10:
#data bank1a.loc_8c1aFD44

loc_8c1BEA14:
#data bank19.loc_8c19FEE8
#data 0x8C34B148
#data 0x8C34AF50

#align4
loc_8c1BEA20:
#data bank19.loc_8c19C818
#data 0x8C34B293

#align4
loc_8c1BEA28:
#data bank19.loc_8c19AB2E

loc_8c1BEA2C:
#data bank19.loc_8c19A9E8

loc_8c1BEA30:
#data bank19.loc_8c19A9FA

loc_8c1BEA34:
#data bank19.loc_8c19AA0C

loc_8c1BEA38:
#data bank19.loc_8c19AACE

loc_8c1BEA3C:
#data bank19.loc_8c19D5CC

loc_8c1BEA40:
#data 0x420BD224
#data 0x0009

loc_8c1BEA46:
#data 0xD325
#data 0x6432903F
#data 0x024D913E
#data 0x622DDD21
#data 0x8B0D2218
#data 0x741764E3
#data 0x622C6240
#data 0x8B0C22B8
#data 0x600C6040
#data 0x8B0AC840
#data 0xE4004D0B
#data 0x0009A00A

#align4
loc_8c1BEA74:
#data 0x922A034D
#data 0x2328633D
#data 0x8901

loc_8c1BEA7E:
#data 0xA001
#data 0xE402

loc_8c1BEA82:
#data 0xE401

#align4
loc_8c1BEA84:
#data 0x00094D0B

#align4
loc_8c1BEA88:
#data 0x000960E3
#data 0x6000701B
#data 0xC803600C
#data 0xB754890A
#data 0x63E30009
#data 0x6230731F
#data 0x22C8622C
#data 0xD10E8902
#data 0x0009410B

#align4
loc_8c1BEAAC:
#data 0x430BD30D
#data 0x4F260009
#data 0xE105D30C
#data 0x6BF62310
#data 0x6CF6D20C
#data 0x6DF69506
#data 0x422BD409
#data 0x00B06EF6
#data 0x04000200
#data 0x00001770

#align4
loc_8c1BEAD4:
#data bank19.loc_8c19D5EA

loc_8c1BEAD8:
#data bank19.loc_8c19AAF2
#data 0x8C34B1F8

#align4
loc_8c1BEAE0:
#data bank19.loc_8c19AB2A

loc_8c1BEAE4:
#data bank19.loc_8c19BC4A
#data 0x8C34B0FD
#data 0x8C34B0D8

#align4
loc_8c1BEAF0:
#data loc_8c1B3EEC

loc_8c1BEAF4:
#data 0x4F222FE6
#data 0x2F407FFC
#data 0x6032D31F
#data 0x8967C880
#data 0xE603D51E
#data 0x62536E53
#data 0x64537E35
#data 0x6EE07236
#data 0x62536120
#data 0x611C6EEC
#data 0x4E184128
#data 0x3E1C7232
#data 0x62536120
#data 0x611C7234
#data 0x41184128
#data 0x61203E1C
#data 0x721B6253
#data 0x3E1C611C
#data 0x74376120
#data 0x2168611C
#data 0x64408F0B
#data 0x600C845E
#data 0x8906C880
#data 0x00096053
#data 0x60007024
#data 0xC808600C
#data 0x8B0A

loc_8c1BEB5E:
#data 0x845E
#data 0xC880600C
#data 0x60538B0E
#data 0x70240009
#data 0x600C6000
#data 0x8907C880

#align4
loc_8c1BEB74:
#data 0xA007E208
#data 0x0000242B
#data 0x8C34B0F4
#data 0x8C34AF50

#align4
loc_8c1BEB84:
#data 0x2419917B

#align4
loc_8c1BEB88:
#data 0x731B6353
#data 0x622C6230
#data 0x8B0B2268
#data 0x600C845E
#data 0x8907C880
#data 0x00096053
#data 0x60007024
#data 0xC90F600C
#data 0x890B8801

#align4
loc_8c1BEBAC:
#data 0x600C845E
#data 0x8B09C880
#data 0x00096053
#data 0x60007024
#data 0xC9F0600C
#data 0x8B018810

#align4
loc_8c1BEBC4:
#data 0x2E29E2FE

#align4
loc_8c1BEBC8:
#data 0x430BD32D
#data 0xD22D0009
#data 0x64E3420B

#align4
loc_8c1BEBD4:
#data 0x233863F0
#data 0xE3018909
#data 0xD62C2F36
#data 0xD42DD52C
#data 0xD228D729
#data 0x2F26B0A2
#data 0x7F08

loc_8c1BEBEE:
#data 0xD328
#data 0x6430B44A
#data 0x2100D129
#data 0x6320D223
#data 0xD3242F36
#data 0xD122D224
#data 0x66306520
#data 0xD323D225
#data 0x420B6710
#data 0x7F086432
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1BEC1A:
mov.l @(loc_8c1BEC94,pc),r2 ; r2 set to 0x8C352F5C
rts
mov.b @r2,r0
;-------------------------------------------------------------------------------

loc_8c1BEC20:
mov.l @(loc_8c1BEC90,pc),r3 ; r3 set to 0x8C352F5D
rts
mov.b @r3,r0
;-------------------------------------------------------------------------------

loc_8c1BEC26:
mov.l @(loc_8c1BEC8C,pc),r2 ; r2 set to 0x8C352F5E
rts
mov.b @r2,r0
;-------------------------------------------------------------------------------

loc_8c1BEC2C:
mov.l @(loc_8c1BEC88,pc),r3 ; r3 set to 0x8C352F5F
rts
mov.b @r3,r0
;-------------------------------------------------------------------------------
#data 0xD219
#data 0x6022000B
;-------------------------------------------------------------------------------
#data 0xE3004F22
#data 0xD6142F36
#data 0xD415D514
#data 0xD210D711
#data 0x2F26B072
#data 0x4F267F08
#data 0x0009000B
;-------------------------------------------------------------------------------

loc_8c1BEC54:
sts.l pr,@-r15
mov.l @(loc_8c1BECA4,pc),r3 ; r3 set to 0x8C19C378
add 0xEC,r15
mov r15,r5
mov r15,r6
add 0x08,r5
add 0x0C,r6
jsr @r3
mov r15,r4
mov.l @(loc_8c1BECA8,pc),r2 ; r2 set to 0x8C19F342
mov r15,r5
mov r15,r4
add 0x04,r5
jsr @r2
add 0x10,r4
mov.l @(loc_8c1BEC90,pc),r4 ; r4 set to 0x8C352F5D
mov.b @r4,r3 ; r3 ??
tst r3,r3
bt loc_8c1BECAC
bra loc_8c1BECB0
mov.b @r4,r6
#data 0x00F7

#align4
loc_8c1BEC80:
#data bank19.loc_8c19C81C

loc_8c1BEC84:
#data bank19.loc_8c19C904

loc_8c1BEC88:
#data 0x8C352F5F

#align4
loc_8c1BEC8C:
#data 0x8C352F5E

#align4
loc_8c1BEC90:
#data 0x8C352F5D

#align4
loc_8c1BEC94:
#data 0x8C352F5C
#data 0x8C352F58
#data 0x8C34B0FE

#align4
loc_8c1BECA0:
#data bank19.loc_8c19BAE0

loc_8c1BECA4:
#data bank19.loc_8c19C378

loc_8c1BECA8:
#data bank19.loc_8c19F342


loc_8c1BECAC:
mov.b @(0x04,r15),r0
mov r0,r6

loc_8c1BECB0:
mov.l @(loc_8c1BED20,pc),r4 ; r4 set to 0x8C352F5F, r4 set to 0x8C352F5F
mov.b @r4,r2
tst r2,r2
bt loc_8c1BECBC
bra loc_8c1BECC0
mov.b @r4,r5

#align4
loc_8c1BECBC:
#data 0x650384F4

#align4
loc_8c1BECC0:
#data 0x63F2D218
#data 0x23486422
#data 0x63F28B05
#data 0x8B1C3340
#data 0x233863F2
#data 0x8B19

loc_8c1BECD6:
#data 0x84F8
#data 0x6403666C
#data 0x3643644C
#data 0xD3118B13
#data 0x622C6230
#data 0x890E3247
#data 0x931562F2
#data 0x890E2238
#data 0x655C84FC
#data 0x644C6403
#data 0x8B043543
#data 0x6120D20A
#data 0x3147611C
#data 0x8B03

loc_8c1BED0A:
#data 0x7F14
#data 0x000B4F26
#data 0xE000
;-------------------------------------------------------------------------------

loc_8c1BED12:
#data 0xE001
#data 0x4F267F14
#data 0x0009000B
;-------------------------------------------------------------------------------
#data 0x00000380

#align4
loc_8c1BED20:
#data 0x8C352F5F
#data 0x8C352F58
#data 0x8C352F5C
#data 0x8C352F5E

#align4
loc_8c1BED30:
#data 0x6E632FE6
#data 0xE3082FD6
#data 0x6C432FC6
#data 0xE0282FB6
#data 0x6A532FA6
#data 0x69732F96
#data 0xDD362F86
#data 0x64D34F22
#data 0x65407418
#data 0x96647FFC
#data 0x5BF9655C
#data 0x8F022358
#data 0xA08608FC
#data 0x0009

loc_8c1BED66:
#data 0xE110
#data 0x8B012158
#data 0x0009A081

#align4
loc_8c1BED70:
#data 0x723D62D3
#data 0x62D36320
#data 0x6120723C
#data 0x4318633C
#data 0x611C62D3
#data 0x723E231B
#data 0x63202C32
#data 0x724062D3
#data 0x63202A30
#data 0x722562D3
#data 0x63202930
#data 0x3360633C
#data 0xD3218B1F
#data 0x6430B1BA
#data 0x743F64D3
#data 0x63E02E00
#data 0x62E02B30
#data 0x622C6440
#data 0x3247644C
#data 0x44158B05
#data 0x63D38B03
#data 0x6230733F
#data 0x2E20

loc_8c1BEDCA:
#data 0x64D3
#data 0x64407441
#data 0x644C63B0
#data 0x3347633C
#data 0x44158B0B
#data 0xA0088905
#data 0x0009

loc_8c1BEDE2:
#data 0x63D3
#data 0x6230733F
#data 0x2E20

loc_8c1BEDEA:
#data 0x63D3
#data 0x62307341
#data 0x2B20

loc_8c1BEDF2:
#data 0x638E
#data 0x8B032338
#data 0xE10763C2
#data 0x89173316

#align4
loc_8c1BEE00:
#data 0x2F0660B0
#data 0xD30965A0
#data 0x679066E0
#data 0x64C3430B
#data 0x65E366B3
#data 0x67837F04
#data 0x64C3B0AC
#data 0xA02563E0
#data 0x00FF2A30
#data 0x8C34AF50
#data 0x8C34B140

#align4
loc_8c1BEE2C:
#data loc_8c1B4CFC

loc_8c1BEE30:
#data 0x000960D3
#data 0x60007042
#data 0xC880600C
#data 0xD2288903
#data 0x64C2420B
#data 0x2C02

loc_8c1BEE46:
#data 0x63B0
#data 0x65A02F36
#data 0x66E0D225
#data 0x420B6790
#data 0x62E064C3
#data 0x332663A0
#data 0x7F048F02
#data 0x2A2062E0

#align4
loc_8c1BEE64:
#data 0x639062B0
#data 0x8B793326

#align4
loc_8c1BEE6C:
#data 0xA07762B0
#data 0x2920

loc_8c1BEE72:
#data 0x6040
#data 0x600CD11C
#data 0x65129330
#data 0x8D1DC810
#data 0xD01A2539
#data 0x600C6000
#data 0x8B17C804
#data 0x2118618E
#data 0x63D38B14
#data 0x2C527325
#data 0x622C6230
#data 0x8B043260
#data 0xB13BD213
#data 0xA0026420
#data 0x2E00

loc_8c1BEEAA:
#data 0xE300
#data 0x2E30

loc_8c1BEEAE:
#data 0xE200
#data 0x2A206323
#data 0x62E02930
#data 0x2B20A049

#align4
loc_8c1BEEBC:
#data 0x732563D3
#data 0x64302F32
#data 0x2448644C
#data 0x91088902
#data 0x8B113410

#align4
loc_8c1BEED0:
#data 0xD3072C52
#data 0x6430B122
#data 0x0009A013
#data 0x00FF03FF

#align4
loc_8c1BEEE0:
#data loc_8c1B4F16

loc_8c1BEEE4:
#data loc_8c1B4CFC
#data 0x8C34B0F4
#data 0x8C34AF6B
#data 0x8C34B140

#align4
loc_8c1BEEF4:
#data 0xB1BD64F2
#data 0x2C026440
#data 0xB20964F2
#data 0x6440

loc_8c1BEF02:
#data 0x66B3
#data 0x678365E3
#data 0x62E02E00
#data 0xB0312B20
#data 0x60D364C3
#data 0x70180009
#data 0x600C6000
#data 0x8912C808
#data 0x2888688E
#data 0x63C28B0F
#data 0x89072338
#data 0x63C2D129
#data 0x60C26212
#data 0x232973FF
#data 0x2C02303C

#align4
loc_8c1BEF3C:
#data 0x6233E300
#data 0xA0042A30
#data 0x2920

loc_8c1BEF46:
#data 0x61E0
#data 0x63B02A10
#data 0x2930

loc_8c1BEF4E:
#data 0x62B0
#data 0x65A02F26
#data 0x66E0D320
#data 0x430B6790
#data 0x7F0464C3

#align4
loc_8c1BEF60:
#data 0x4F267F04
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1BEF74:
#data 0x2FD62FE6
#data 0x93282FC6
#data 0x62427FFC
#data 0x2F222239
#data 0x21186150
#data 0x91218B01
#data 0x2510

loc_8c1BEF8E:
#data 0x6360
#data 0x8F022338
#data 0x911BED38
#data 0x2610

loc_8c1BEF9A:
#data 0x6242
#data 0x22389319
#data 0xEE208D1C
#data 0xE2186060
#data 0x3023600C
#data 0x607E8B16
#data 0x8B132008
#data 0x633C6350
#data 0x8B0033E7
#data 0x25E0

loc_8c1BEFBE:
#data 0x6360
#data 0x33D7633C
#data 0x26D08B00

#align4
loc_8c1BEFC8:
#data 0xA0659303
#data 0xFC000009
#data 0x020000FF
#data 0x8C34B0F4

#align4
loc_8c1BEFD8:
#data loc_8c1B4CFC

loc_8c1BEFDC:
#data 0x935D6242
#data 0x89142238
#data 0xE21E6060
#data 0x3023600C
#data 0x607E8B0F
#data 0x8B0C2008
#data 0x633C6350
#data 0x8B0033E7
#data 0x25E0

loc_8c1BEFFE:
#data 0x6360
#data 0x33D7633C
#data 0x26D08B00

#align4
loc_8c1BF008:
#data 0xA0459348
#data 0x0009

loc_8c1BF00E:
#data 0x6342
#data 0x23D89D45
#data 0x61508910
#data 0x611CE305
#data 0x8B0B3133
#data 0x611C6150
#data 0x8B0031E7
#data 0x25E0

loc_8c1BF02A:
#data 0x6260
#data 0x32E7622C
#data 0x26E08B00

#align4
loc_8c1BF034:
#data 0x24D2A066

#align4
loc_8c1BF038:
#data 0xC8406042
#data 0x6250890D
#data 0x622CE306
#data 0x8B083233
#data 0xE60C6350
#data 0x3367633C
#data 0x25608B00

#align4
loc_8c1BF054:
#data 0xA01FE340
#data 0x0009

loc_8c1BF05A:
#data 0x6342
#data 0x8D0C23E8
#data 0x6150EC08
#data 0x611CE306
#data 0x8B063133
#data 0x611C6150
#data 0x8B0031C7
#data 0x25C0

loc_8c1BF076:
#data 0xA045
#data 0x24E2

loc_8c1BF07A:
#data 0x6042
#data 0x890FC810
#data 0xE3046250
#data 0x3233622C
#data 0x63508B0A
#data 0x633CE605
#data 0x8B003367
#data 0x2560

loc_8c1BF096:
#data 0xE310

#align4
loc_8c1BF098:
#data 0x2432A034
#data 0x00800100

#align4
loc_8c1BF0A0:
#data 0x23C86342
#data 0xEE048D0C
#data 0xE3046150
#data 0x3133611C
#data 0x61508B06
#data 0x31E7611C
#data 0x25E08B00

#align4
loc_8c1BF0BC:
#data 0x24C2A022

#align4
loc_8c1BF0C0:
#data 0x23E86342
#data 0xEC018D0F
#data 0x2778677E
#data 0x24E28B0B
#data 0x6230D311
#data 0x22D8622C
#data 0x25C08902
#data 0x26E0A012

#align4
loc_8c1BF0E0:
#data 0xA00F25E0
#data 0x26C0

loc_8c1BF0E6:
#data 0x6242
#data 0x2268E602
#data 0x25608902
#data 0x2462A008

#align4
loc_8c1BF0F4:
#data 0x633C6350
#data 0x8B013367
#data 0x25E0A001

loc_8c1BF100:
#data 0x2560

loc_8c1BF102:
#data 0x24C2

#align4
loc_8c1BF104:
#data 0x7F0463F2
#data 0x223B6242
#data 0x6CF62422
#data 0x000B6DF6
#data 0x00006EF6
#data 0x8C34AF5E

#align4
loc_8c1BF11C:
#data 0xE525604C
#data 0x3012E137
#data 0xA0978B01
#data 0x0009

loc_8c1BF12A:
#data 0x4000
#data 0xC7026103
#data 0x0023001D
#data 0x00000009
#data 0x00740070
#data 0x007C0078
#data 0x00840080
#data 0x008C0088
#data 0x00940090
#data 0x009C0098
#data 0x00A400A0
#data 0x00AC00A8
#data 0x00B400B0
#data 0x00BC00B8
#data 0x00C400C0
#data 0x00CC00C8
#data 0x00D400D0
#data 0x00D800D8
#data 0x00E000DC
#data 0x00E800E4
#data 0x00F000EC
#data 0x00F800F4
#data 0x010000FC
#data 0x01080104
#data 0x0110010C
#data 0x01180114
#data 0x0120011C
#data 0x01200120
#data 0x01200120
#data 0x01200120
#data 0x01200120
#data 0xA0570120
#data 0xA055E401
#data 0xA053E402
#data 0xA051E404
#data 0xA04FE405
#data 0xA04DE406
#data 0xA04BE407
#data 0xA049E408
#data 0xA047E40B
#data 0xA045E40C
#data 0xA043E40D
#data 0xA041E40E
#data 0xA03FE415
#data 0xA03DE416
#data 0xA03BE417
#data 0xA039E418
#data 0xA037E419
#data 0xA035E41A
#data 0xA033E41C
#data 0xA031E41D
#data 0xA02FE41E
#data 0xA02DE41F
#data 0xA02BE420
#data 0xA029E421
#data 0xA027E422
#data 0xA025E423
#data 0xA023E424
#data 0xA0216453
#data 0xA01FE427
#data 0xA01DE428
#data 0xA01BE429
#data 0xA019E42A
#data 0xA017E42B
#data 0xA015E42C
#data 0xA013E42D
#data 0xA011E42E
#data 0xA00FE42F
#data 0xA00DE430
#data 0xA00BE431
#data 0xA009E432
#data 0xA007E433
#data 0xA005E434
#data 0xA003E435
#data 0xA001E436
#data 0xE438E437

#align4
loc_8c1BF258:
#data 0x624CD305
#data 0x615C6530
#data 0x8B013217
#data 0x6053000B
;-------------------------------------------------------------------------------

#align4
loc_8c1BF268:
#data 0x00096043
#data 0x0009000B
;-------------------------------------------------------------------------------
#data 0x8C34B0F0

#align4
loc_8c1BF274:
#data 0x654CE32F
#data 0x8B023533
#data 0x000B9040
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1BF282:
#data 0xE222
#data 0x8B023523
#data 0x000B903B
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1BF28E:
#data 0xE114
#data 0x8B023513
#data 0x000B9036
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1BF29A:
#data 0xE30D
#data 0x8B013533
#data 0xE040000B
;-------------------------------------------------------------------------------

#align4
loc_8c1BF2A4:
#data 0x6053D418
#data 0x88050009
#data 0xE6408D19
#data 0x891A8806
#data 0x890C8807
#data 0x89078809
#data 0x8908880A
#data 0x891A880B
#data 0x8906880C
#data 0x0009A011

#align4
loc_8c1BF2CC:
#data 0x000BD00F
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1BF2D2:
#data 0x000B
#data 0xE020
;-------------------------------------------------------------------------------

loc_8c1BF2D6:
#data 0xD30E
#data 0xCB406030
#data 0x000B2300
#data 0xE004
;-------------------------------------------------------------------------------

loc_8c1BF2E2:
#data 0x6340
#data 0x2368633C
#data 0x8B05

loc_8c1BF2EA:
#data 0x000B
#data 0xE010
;-------------------------------------------------------------------------------

loc_8c1BF2EE:
#data 0x6340
#data 0x2368633C
#data 0x8901

loc_8c1BF2F6:
#data 0x000B
#data 0xE001
;-------------------------------------------------------------------------------

loc_8c1BF2FA:
#data 0xE002
#data 0x0009000B
;-------------------------------------------------------------------------------
#data 0x01000200
#data 0x00000080
#data 0x8C34AF6B
#data 0x00800020
#data 0x8C34B290

#align4
loc_8c1BF314:
#data 0xE504604C
#data 0xE14470FF
#data 0x8B013012
#data 0x0009A0AE

#align4
loc_8c1BF324:
#data 0x61034000
#data 0x001DC701
#data 0x00090023
#data 0x00880088
#data 0x01500088
#data 0x00A2009E
#data 0x015000A6
#data 0x00AE00AE
#data 0x008C0088
#data 0x01500150
#data 0x00AA00A6
#data 0x00B200AE
#data 0x00A200B6
#data 0x00AA00A6
#data 0x00B200AE
#data 0x00BA00B6
#data 0x00C200BE
#data 0x00CA00C6
#data 0x00D200CE
#data 0x00DA00D6
#data 0x00E200DE
#data 0x00EA00E6
#data 0x00F200EE
#data 0x00FA00F6
#data 0x010200FE
#data 0x010A0106
#data 0x0112010E
#data 0x00DA0116
#data 0x011E011A
#data 0x012200E2
#data 0x00EA0126
#data 0x012E012A
#data 0x013200F2
#data 0x00FA0136
#data 0x013E013A
#data 0x01420102
#data 0x010A0146
#data 0xE402A063
#data 0x6000D02F
#data 0xC880600C
#data 0xA05C8901
#data 0xA05AE401
#data 0xA0586453
#data 0xA0566453
#data 0xA054E405
#data 0xA052E406
#data 0xA050E407
#data 0xA04EE408
#data 0xA04CE40B
#data 0xA04AE40C
#data 0xA048E40D
#data 0xA046E40E
#data 0xA044E415
#data 0xA042E416
#data 0xA040E417
#data 0xA03EE419
#data 0xA03CE41D
#data 0xA03AE420
#data 0xA038E41E
#data 0xA036E421
#data 0xA034E423
#data 0xA032E425
#data 0xA030E428
#data 0xA02EE42A
#data 0xA02CE42C
#data 0xA02AE42E
#data 0xA028E430
#data 0xA026E432
#data 0xA024E434
#data 0xA022E436
#data 0xA020E438
#data 0xA01EE418
#data 0xA01CE41A
#data 0xA01AE41C
#data 0xA018E41F
#data 0xA016E422
#data 0xA014E424
#data 0xA012E427
#data 0xA010E429
#data 0xA00EE42B
#data 0xA00CE42D
#data 0xA00AE42F
#data 0xA008E431
#data 0xA006E433
#data 0xA004E435
#data 0x0000E437
#data 0x8C34AF5E

#align4
loc_8c1BF480:
#data 0x000B9401
#data 0x00FF6043


loc_8c1BF488:
extu.b r4,r0
add 0xFE,r0
mov 0x37,r1 ; r1 set to 0x37
cmp/hs r1,r0
bf loc_8c1BF496
bra loc_8c1BF5C2
nop

loc_8c1BF496:
shll r0
mov r0,r1
mova @(loc_8c1BF4A4,pc),r0  ; r0 set to 0x8C1BF4A4
mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???
braf r0
nop
#data 0x0000

#align4
loc_8c1BF4A4:
#data 0x0120011C
#data 0x01140118
#data 0x010C0110
#data 0x01200108
#data 0x01040120
#data 0x00FC0100
#data 0x012000F8
#data 0x01200120
#data 0x01200120
#data 0x00F40120
#data 0x00EC00F0
#data 0x00E400E8
#data 0x012000E0
#data 0x00D800DC
#data 0x00D000D4
#data 0x00C800CC
#data 0x00C000C4
#data 0x00B800BC
#data 0x00B40120
#data 0x00AC00B0
#data 0x00A400A8
#data 0x009C00A0
#data 0x00940098
#data 0x008C0090
#data 0x00840088
#data 0x007C0080
#data 0x00740078
#data 0x000B0070
#data 0x000BE02D
#data 0x000BE02C
#data 0x000BE02B
#data 0x000BE02A
#data 0x000BE029
#data 0x000BE028
#data 0x000BE027
#data 0x000BE026
#data 0x000BE025
#data 0x000BE024
#data 0x000BE023
#data 0x000BE022
#data 0x000BE021
#data 0x000BE020
#data 0x000BE01F
#data 0x000BE01E
#data 0x000BE01D
#data 0x000BE01C
#data 0x000BE01A
#data 0x000BE019
#data 0x000BE018
#data 0x000BE017
#data 0x000BE016
#data 0x000BE015
#data 0x000BE014
#data 0x000BE013
#data 0x000BE012
#data 0x000BE011
#data 0x000BE010
#data 0x000BE00F
#data 0x000BE00E
#data 0x000BE00D
#data 0x000BE00C
#data 0x000BE00B
#data 0x000BE00A
#data 0x000BE009
#data 0x000BE008
#data 0x000BE007
#data 0x000BE006
#data 0x000BE005
#data 0x000BE004
#data 0x000BE003
#data 0x000BE002
#data 0xE001
;-------------------------------------------------------------------------------

loc_8c1BF5C2:
mov 0x00,r0 ; r0 set to 0x00
rts
nop
;-------------------------------------------------------------------------------

#align4
loc_8c1BF5C8:
#data 0xD3244F22
#data 0x65F37FF4
#data 0x750466F3
#data 0x430B7608
#data 0x84F464F3
#data 0x6403BF54
#data 0x2200D21F
#data 0xBF4F84F8
#data 0xD21E6403
#data 0xD31E2200
#data 0xD51E2300
#data 0x6150D21A
#data 0x611C6420
#data 0x3317634C
#data 0x25408B00

#align4
loc_8c1BF604:
#data 0xD51AD217
#data 0x61506420
#data 0x611C634C
#data 0x8B003317
#data 0x2540

loc_8c1BF616:
#data 0x60F2
#data 0x8902C804
#data 0xE200D312
#data 0x2320

loc_8c1BF622:
#data 0x7F0C
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1BF62A:
mov.l @(loc_8c1BF674,pc),r3 ; r3 set to 0x8C34B1F8
mov 0x01,r5 ; r5 set to 0x01
sts.l pr,@-r15
mov.w @(loc_8c1BF65A,pc),r0 ; r0 set to 0xB4
mov.l @(loc_8c1BF678,pc),r2 ; r2 set to 0x8C1B28B4
mov.l @r3,r4
jsr @r2
mov.w @(r0,r4),r4
mov.l @(loc_8c1BF67C,pc),r3 ; r3 set to 0x8C1B0626
jsr @r3
nop
mov.l @(loc_8c1BF680,pc),r3 ; r3 set to 0x8C34B106
mov 0x00,r2 ; r2 set to 0x00
mov.b r2,@r3 ; r3 ??
mov.l @(loc_8c1BF684,pc),r2 ; r2 set to 0x8C34B28A
mov.b @r2,r0 ; r0 ??
and 0x7F,r0
mov.b r0,@r2 ; r2 ??? bc r0 is ???
mov.l @(loc_8c1BF688,pc),r0 ; r0 set to 0x8C34B2CC
lds.l @r15+,pr
mov.l @(loc_8c1BF68C,pc),r3 ; r3 set to 0x8C34B108
mov.l @r0,r1
rts
mov.l r1,@r3
;-------------------------------------------------------------------------------

loc_8c1BF65A:
#data 0x00B4

#align4
loc_8c1BF65C:
#data bank19.loc_8c19C378
#data 0x8C34B0FB
#data 0x8C34B0FC
#data 0x8C34B0FE
#data 0x8C34B0F9
#data 0x8C34B0FA

#align4
loc_8c1BF674:
#data 0x8C34B1F8

#align4
loc_8c1BF678:
#data loc_8c1B28B4

loc_8c1BF67C:
#data loc_8c1B0626

loc_8c1BF680:
#data 0x8C34B106

#align4
loc_8c1BF684:
#data 0x8C34B28A

#align4
loc_8c1BF688:
#data 0x8C34B2CC

#align4
loc_8c1BF68C:
#data 0x8C34B108


loc_8c1BF690:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @(loc_8c1BF784,pc),r2 ; r2 set to 0x8C1B2A48
jsr @r2
nop
mov.l @(loc_8c1BF788,pc),r6 ; r6 set to 0x8C34B105
mov r0,r14
extu.b r14,r2 ; r2 ??? bc r14 is ???
mov.l @(loc_8c1BF78C,pc),r5 ; r5 set to 0x8C34B108
mov.b @r6,r1
mov.l @(loc_8c1BF790,pc),r3 ; r3 set to 0x8C34B2CC
extu.b r1,r1
cmp/eq r1,r2
bt/s loc_8c1BF722
mov.l @r3,r4
mov.l @r5,r2
mov r4,r13
mov.l r4,@r5 ; r5 ??? bc r4 is ???
sub r2,r13
mov.b r14,@r6 ; r6 ??? bc r14 is ???
mov.l @(loc_8c1BF794,pc),r2 ; r2 set to 0x8C34B039
mov.b @r2,r0
extu.b r0,r0
tst 0x20,r0
bt loc_8c1BF6D6
mov.l @(loc_8c1BF798,pc),r1 ; r1 set to 0x8C1B064A
mov r13,r5
jsr @r1
mov r14,r4
exts.b r0,r0
tst r0,r0
bt loc_8c1BF6D6
bra loc_8c1BF75A
mov 0x02,r0

loc_8c1BF6D6:
mov.l @(loc_8c1BF794,pc),r3 ; r3 set to 0x8C34B039
mov.b @r3,r0
extu.b r0,r0
tst 0x08,r0
bt loc_8c1BF6F2
mov.l @(loc_8c1BF79C,pc),r1 ; r1 set to 0x8C1B07EE
mov r13,r5
jsr @r1
mov r14,r4
exts.b r0,r0
tst r0,r0
bt loc_8c1BF6F2
bra loc_8c1BF75A
mov 0x01,r0

loc_8c1BF6F2:
mov.l @(loc_8c1BF7A0,pc),r2 ; r2 set to 0x8C1B0998
mov r13,r5
jsr @r2
mov r14,r4
exts.b r0,r0
tst r0,r0
bt loc_8c1BF704
bra loc_8c1BF75A
mov 0x03,r0

loc_8c1BF704:
mov.l @(loc_8c1BF7A4,pc),r3 ; r3 set to 0x8C34B1F8
mov 0x54,r0 ; r0 set to 0x54
mov.l @r3,r2
mov.w @(r0,r2),r1
tst r1,r1
bt loc_8c1BF758
mov.l @(loc_8c1BF7A8,pc),r1 ; r1 set to 0x8C1B0B12
mov r13,r5
jsr @r1
mov r14,r4
exts.b r0,r0 ; r0 ??
tst r0,r0
bf loc_8c1BF754
bra loc_8c1BF758
nop

loc_8c1BF722:
extu.b r14,r14
tst r14,r14
bt loc_8c1BF758
mov.l @(loc_8c1BF7A4,pc),r2 ; r2 set to 0x8C34B1F8
mov.w @(loc_8c1BF780,pc),r0 ; r0 set to 0xB0
mov.l @r2,r1
mov.w @(loc_8c1BF782,pc),r3 ; r3 set to 0x4000
mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???
extu.w r0,r0
tst r3,r0
bt loc_8c1BF758
mov.l @r2,r1
mov 0x54,r0 ; r0 set to 0x54
mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???
tst r0,r0
bf loc_8c1BF758
mov.l @(loc_8c1BF7A4,pc),r1 ; r1 set to 0x8C34B1F8
mov 0x50,r0 ; r0 set to 0x50
mov.l @r5,r3 ; r3 ??? bc r5 is ???
mov.l @r1,r2 ; r2 ??
sub r3,r4
mov.w @(r0,r2),r3
extu.w r3,r3
cmp/hs r3,r4
bf loc_8c1BF758

loc_8c1BF754:
bra loc_8c1BF75A
mov 0x04,r0

loc_8c1BF758:
mov 0x00,r0 ; r0 set to 0x00

loc_8c1BF75A:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1BF762:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8c1BF7B0,pc),r4 ; r4 set to 0x8C34B0E0
mov.l @(loc_8c1BF7AC,pc),r14 ; r14 set to 0x8C1B3EEC
jsr @r14
mov 0x1E,r5 ; r5 set to 0x1E
mov.l @(loc_8c1BF7B4,pc),r4 ; r4 set to 0x8C34B0E4
jsr @r14
mov 0x19,r5 ; r5 set to 0x19
mov.l @(loc_8c1BF7B8,pc),r4 ; r4 set to 0x8C34B0E8
jsr @r14
mov 0x1E,r5 ; r5 set to 0x1E
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1BF780:
#data 0x00B0

loc_8c1BF782:
#data 0x4000

#align4
loc_8c1BF784:
#data loc_8c1B2A48

loc_8c1BF788:
#data 0x8C34B105

#align4
loc_8c1BF78C:
#data 0x8C34B108

#align4
loc_8c1BF790:
#data 0x8C34B2CC

#align4
loc_8c1BF794:
#data 0x8C34B039

#align4
loc_8c1BF798:
#data loc_8c1B064A

loc_8c1BF79C:
#data loc_8c1B07EE

loc_8c1BF7A0:
#data loc_8c1B0998

loc_8c1BF7A4:
#data 0x8C34B1F8

#align4
loc_8c1BF7A8:
#data loc_8c1B0B12

loc_8c1BF7AC:
#data loc_8c1B3EEC

loc_8c1BF7B0:
#data 0x8C34B0E0

#align4
loc_8c1BF7B4:
#data 0x8C34B0E4

#align4
loc_8c1BF7B8:
#data 0x8C34B0E8


loc_8c1BF7BC:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
mov.l @(loc_8c1BF870,pc),r3 ; r3 set to 0x8C19AF60
mov.l @(loc_8c1BF86C,pc),r14 ; r14 set to 0x8C1B3EEC
jsr @r3
nop
mov.l @(loc_8c1BF874,pc),r13 ; r13 set to 0x8C1B3F0C
extu.b r0,r5
extu.w r5,r4
mov r4,r0
nop
cmp/eq 0x01,r0
bf loc_8c1BF7EA
mov.l @(loc_8c1BF878,pc),r3 ; r3 set to 0x8C34B0E4
jsr @r13
mov.l @r3,r4
exts.b r0,r0
tst r0,r0
bf loc_8c1BF832
bra loc_8c1BF852
nop

loc_8c1BF7EA:
mov.l @(loc_8c1BF87C,pc),r12 ; r12 set to 0x8C34B1F8
mov r4,r0
nop
cmp/eq 0x02,r0
bf loc_8c1BF816
mov.l @(loc_8c1BF880,pc),r2 ; r2 set to 0x8C34B0E8
jsr @r13
mov.l @r2,r4
exts.b r0,r0
tst r0,r0
bf loc_8c1BF832
mov.l @(loc_8c1BF884,pc),r4 ; r4 set to 0x8C34B0E0
jsr @r14
mov 0x1E,r5 ; r5 set to 0x1E
mov.w @(loc_8c1BF86A,pc),r0 ; r0 set to 0xA6
mov.l @r12,r5 ; r5 ??
mov.l @(loc_8c1BF878,pc),r4 ; r4 set to 0x8C34B0E4
mov.w @(r0,r5),r5
jsr @r14
extu.w r5,r5
bra loc_8c1BF85E
nop

loc_8c1BF816:
mov.l @(loc_8c1BF888,pc),r3 ; r3 set to 0x8C34B0FE
mov.b @r3,r2
tst r2,r2
bf loc_8c1BF846
mov r4,r0
nop
cmp/eq 0x03,r0
bf loc_8c1BF846
mov.l @(loc_8c1BF884,pc),r3 ; r3 set to 0x8C34B0E0
jsr @r13
mov.l @r3,r4
exts.b r0,r0
tst r0,r0
bt loc_8c1BF836

loc_8c1BF832:
bra loc_8c1BF860
mov 0x01,r0

loc_8c1BF836:
mov.w @(loc_8c1BF86A,pc),r0 ; r0 set to 0xA6
mov.l @r12,r5
mov.l @(loc_8c1BF878,pc),r4 ; r4 set to 0x8C34B0E4
mov.w @(r0,r5),r5
jsr @r14
extu.w r5,r5
bra loc_8c1BF858
nop

loc_8c1BF846:
mov.w @(loc_8c1BF86A,pc),r0 ; r0 set to 0xA6
mov.l @r12,r5
mov.l @(loc_8c1BF878,pc),r4 ; r4 set to 0x8C34B0E4
mov.w @(r0,r5),r5
jsr @r14
extu.w r5,r5

loc_8c1BF852:
mov.l @(loc_8c1BF884,pc),r4 ; r4 set to 0x8C34B0E0
jsr @r14
mov 0x1E,r5 ; r5 set to 0x1E

loc_8c1BF858:
mov.l @(loc_8c1BF880,pc),r4 ; r4 set to 0x8C34B0E8, r4 set to 0x8C34B0E8
jsr @r14
mov 0x1E,r5 ; r5 set to 0x1E, r5 set to 0x1E

loc_8c1BF85E:
mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00

loc_8c1BF860:
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1BF86A:
#data 0x00A6

#align4
loc_8c1BF86C:
#data loc_8c1B3EEC

loc_8c1BF870:
#data bank19.loc_8c19AF60

loc_8c1BF874:
#data loc_8c1B3F0C

loc_8c1BF878:
#data 0x8C34B0E4

#align4
loc_8c1BF87C:
#data 0x8C34B1F8

#align4
loc_8c1BF880:
#data 0x8C34B0E8

#align4
loc_8c1BF884:
#data 0x8C34B0E0

#align4
loc_8c1BF888:
#data 0x8C34B0FE

#align4
loc_8c1BF88C:
#data 0x916ED339
#data 0x4F226032
#data 0x600D001D
#data 0x8913C820
#data 0x6000D036
#data 0xC840600C
#data 0xD2368B0E
#data 0x420BD434
#data 0xD3356440
#data 0x430B945E
#data 0xD2350009
#data 0x420BD433
#data 0xD234E53C
#data 0x2230E301

#align4
loc_8c1BF8C4:
#data 0x6000D033
#data 0xC820600C
#data 0xD2328909
#data 0xC8806022
#data 0xD32E8905
#data 0x21186130
#data 0xA0018B01
#data 0xE402

loc_8c1BF8E2:
#data 0xE400

#align4
loc_8c1BF8E4:
#data 0x422BD22D
#data 0x4F26


loc_8c1BF8EA:
mov.l @(loc_8c1BF974,pc),r3 ; r3 set to 0x8C34B1F8
mov.w @(loc_8c1BF96E,pc),r1 ; r1 set to 0xB0
mov.l @r3,r0
sts.l pr,@-r15
mov.w @(r0,r1),r0
extu.w r0,r0
tst 0x20,r0
bt loc_8c1BF93C
mov.l @(loc_8c1BF978,pc),r0 ; r0 set to 0x8C34B290
mov.b @r0,r0 ; r0 ??
extu.b r0,r0
tst 0x40,r0
bf loc_8c1BF93C
mov.l @(loc_8c1BF9A0,pc),r3 ; r3 set to 0x8C1B3F0C
mov.l @(loc_8c1BF988,pc),r2 ; r2 set to 0x8C34B100
jsr @r3
mov.l @r2,r4
exts.b r0,r0
tst r0,r0
bt loc_8c1BF93C
mov.l @(loc_8c1BF990,pc),r4 ; r4 set to 0x8C34B104
mov.b @r4,r3 ; r3 ??
tst r3,r3
bf loc_8c1BF92A
mov 0x01,r3 ; r3 set to 0x01
mov.b r3,@r4 ; r4 ??
mov.l @(loc_8c1BF984,pc),r2 ; r2 set to 0x8C19B084
mov.w @(loc_8c1BF970,pc),r4 ; r4 set to 0x514
jsr @r2
nop
bra loc_8c1BF934
mov 0x3C,r5

loc_8c1BF92A:
mov.l @(loc_8c1BF9A4,pc),r2 ; r2 set to 0x8C19B102
mov 0x00,r3 ; r3 set to 0x00
jsr @r2
mov.b r3,@r4
mov.w @(loc_8c1BF972,pc),r5 ; r5 set to 0xAF

loc_8c1BF934:
mov.l @(loc_8c1BF98C,pc),r3 ; r3 set to 0x8C1B3EEC, r3 set to 0x8C1B3EEC
mov.l @(loc_8c1BF988,pc),r4 ; r4 set to 0x8C34B100, r4 set to 0x8C34B100
jmp @r3
lds.l @r15+,pr

loc_8c1BF93C:
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c1BF942:
#data 0x2FE6
#data 0x4F22D419
#data 0xDE176040
#data 0xC820600C
#data 0x4E0B8903
#data 0xA007E402
#data 0x0009

loc_8c1BF95A:
#data 0xC810
#data 0xA0018901
#data 0xE401

loc_8c1BF962:
#data 0xE400

#align4
loc_8c1BF964:
#data 0x00094E0B

#align4
loc_8c1BF968:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1BF96E:
#data 0x00B0

loc_8c1BF970:
#data 0x0514

loc_8c1BF972:
#data 0x00AF

#align4
loc_8c1BF974:
#data 0x8C34B1F8

#align4
loc_8c1BF978:
#data 0x8C34B290
#data 0x8C34AF73

#align4
loc_8c1BF980:
#data bank19.loc_8c19AA0C

loc_8c1BF984:
#data bank19.loc_8c19B084

loc_8c1BF988:
#data 0x8C34B100

#align4
loc_8c1BF98C:
#data loc_8c1B3EEC

loc_8c1BF990:
#data 0x8C34B104
#data 0x8C34AF87
#data 0x8C34B0F4

#align4
loc_8c1BF99C:
#data bank19.loc_8c19C818

loc_8c1BF9A0:
#data loc_8c1B3F0C

loc_8c1BF9A4:
#data bank19.loc_8c19B102

loc_8c1BF9A8:
#data bank19.loc_8c19D26E
#data 0x8C34AF6B


loc_8c1BF9B0:
mov.l r14,@-r15
mov 0x03,r14 ; r14 set to 0x03
mov.l @(loc_8c1BFA84,pc),r5 ; r5 set to 0x8C34B288
sts.l pr,@-r15
mov r5,r4 ; r4 set to 0x8C34B288
add 0x0A,r4 ; r4 set to 0x8C34B292
mov.b @r4,r0
and 0xFB,r0
mov.b r0,@r4 ; r4 ??? bc r0 is ???
mov.b @r4,r0
and 0xEF,r0
mov.b r0,@r4
mov.l @(loc_8c1BFA88,pc),r6 ; r6 set to 0x8C34AF50
mov r5,r1 ; r1 set to 0x8C34B288
mov r6,r3 ; r3 set to 0x8C34AF50
add 0x1B,r3 ; r3 set to 0x8C34AF6B
mov.b @r3,r2
mov r6,r4 ; r4 set to 0x8C34AF50
extu.b r2,r2
tst r14,r2
bt/s loc_8c1BFA0A
add 0x0A,r1 ; r1 set to 0x8C34B292
mov.b @r1,r0
or 0x04,r0
mov.b r0,@r1 ; r1 ??? bc r0 is ???
mov.b @r1,r0
or 0x10,r0
mov.b r0,@r1
mov r5,r3 ; r3 set to 0x8C34B288
add 0x10,r3 ; r3 set to 0x8C34B298
mov.b @r3,r0
or 0x10,r0
mov.b r0,@r3 ; r3 ??? bc r0 is ???
mov r6,r0 ; r0 set to 0x8C34AF50
nop
add 0x15,r0 ; r0 set to 0x8C34AF65
mov.b @r0,r0 ; r0 ??
extu.b r0,r0
tst 0x04,r0
bf loc_8c1BFA4E
mov.l @(loc_8c1BFA8C,pc),r2 ; r2 set to 0x8C1A1208
jsr @r2
mov 0x01,r4 ; r4 set to 0x01
bra loc_8c1BFA54
nop

loc_8c1BFA0A:
#data 0x6243
#data 0x6320721B
#data 0x23E8633C
#data 0x844E8B0B
#data 0xC880600C
#data 0x60438907
#data 0x70240009
#data 0x600C6000
#data 0x8801C90F
#data 0x890B

loc_8c1BFA2E:
#data 0x844E
#data 0xC880600C
#data 0x60438B0B
#data 0x70240009
#data 0x600C6000
#data 0x8810C9F0
#data 0x8B03

loc_8c1BFA46:
#data 0x6010
#data 0xA003CB10
#data 0x2100


loc_8c1BFA4E:
mov.l @(loc_8c1BFA8C,pc),r3 ; r3 set to 0x8C1A1208
jsr @r3
mov 0x00,r4 ; r4 set to 0x00

loc_8c1BFA54:
mov.l @(loc_8c1BFA90,pc),r2 ; r2 set to 0x8C1AEA7E, r2 set to 0x8C1AEA7E
jsr @r2
nop
mov.l @(loc_8c1BFA98,pc),r1 ; r1 set to 0x8C1AF31A, r1 set to 0x8C1AF31A
mov.w @(loc_8c1BFA80,pc),r2 ; r2 set to 0xFF, r2 set to 0xFF
mov.l @(loc_8c1BFA94,pc),r3 ; r3 set to 0x8C34B301, r3 set to 0x8C34B301
jsr @r1
mov.b r2,@r3 ; r3 ??, r3 ??
mov.l @(loc_8c1BFA9C,pc),r3 ; r3 set to 0x8C1B38D8, r3 set to 0x8C1B38D8
jsr @r3
nop
mov.l @(loc_8c1BFAA0,pc),r1 ; r1 set to 0x8C34B11C, r1 set to 0x8C34B11C
mov.b r14,@r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???
mov.l @(loc_8c1BFAA4,pc),r3 ; r3 set to 0x8C19FEE8, r3 set to 0x8C19FEE8
jsr @r3
mov 0x64,r4 ; r4 set to 0x64, r4 set to 0x64
lds.l @r15+,pr
mov.l @(loc_8c1BFAA8,pc),r3 ; r3 set to 0x8C34B148, r3 set to 0x8C34B148
mov 0x00,r2 ; r2 set to 0x00, r2 set to 0x00
mov.b r2,@r3 ; r3 ??, r3 ??
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1BFA80:
#data 0x00FF
#data 0x0000

#align4
loc_8c1BFA84:
#data 0x8C34B288

#align4
loc_8c1BFA88:
#data 0x8C34AF50

#align4
loc_8c1BFA8C:
#data bank1a.loc_8c1a1208

loc_8c1BFA90:
#data bank1a.loc_8c1aEA7E

loc_8c1BFA94:
#data 0x8C34B301

#align4
loc_8c1BFA98:
#data bank1a.loc_8c1aF31A

loc_8c1BFA9C:
#data loc_8c1B38D8

loc_8c1BFAA0:
#data 0x8C34B11C

#align4
loc_8c1BFAA4:
#data bank19.loc_8c19FEE8

loc_8c1BFAA8:
#data 0x8C34B148


loc_8c1BFAAC:
mov.l r14,@-r15
extu.b r4,r4
mov.l r13,@-r15
tst r4,r4
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
mov.l @(loc_8c1BFB98,pc),r12 ; r12 set to 0x8C34B11C
mov.l @(loc_8c1BFB94,pc),r11 ; r11 set to 0x8C1C9D98
add 0xFC,r15
bf/s loc_8c1BFB16
mov 0x00,r14 ; r14 set to 0x00
mov.b r14,@r11 ; r11 ??
mov.b r14,@r12 ; r12 ??
mov.l @(loc_8c1BFB9C,pc),r2 ; r2 set to 0x8C34B0A3
mov.b r14,@r2 ; r2 ??
mov.l @(loc_8c1BFBA0,pc),r3 ; r3 set to 0x8C34B0B0
mov.b r14,@r3 ; r3 ??
mov.l @(loc_8c1BFBA4,pc),r1 ; r1 set to 0x8C34B194
mov.b r14,@r1 ; r1 ??
mov.l @(loc_8c1BFBA8,pc),r2 ; r2 set to 0x8C34B0FD
mov.b r14,@r2 ; r2 ??
mov.l @(loc_8c1BFBAC,pc),r3 ; r3 set to 0x8C34B11D
mov.b r14,@r3 ; r3 ??
mov.l @(loc_8c1BFBB0,pc),r1 ; r1 set to 0x8C34B0A0
mov.b r14,@r1 ; r1 ??
mov.l @(loc_8c1BFBB4,pc),r2 ; r2 set to 0x8C34B17A
mov.b r14,@r2 ; r2 ??
mov.l @(loc_8c1BFBB8,pc),r3 ; r3 set to 0x8C34B1F8
mov.w @(loc_8c1BFB90,pc),r0 ; r0 set to 0x8C
mov.l @r3,r5
mov.l @r3,r4
mov.w @(r0,r5),r5
mov.l @(loc_8c1BFBBC,pc),r2 ; r2 set to 0x8C19D1DA
mov.w @(loc_8c1BFB92,pc),r0 ; r0 set to 0x8E
jsr @r2
mov.w @(r0,r4),r4
add 0x04,r15
mov.l @(loc_8c1BFBC4,pc),r3 ; r3 set to 0x8C1B3EEC
lds.l @r15+,pr
mov.l @(loc_8c1BFBC0,pc),r4 ; r4 set to 0x8C34B14C
mov 0x64,r5 ; r5 set to 0x64
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8c1BFB16:
mov.l @(loc_8c1BFBC8,pc),r2 ; r2 set to 0x8C19E5E0
jsr @r2
nop
mov.l @(loc_8c1BFBCC,pc),r3 ; r3 set to 0x8C199404
jsr @r3
nop
mov.b @r12,r0
mov.l @(loc_8c1BFBDC,pc),r13 ; r13 set to 0x8C34B288
extu.b r0,r0
mov.l @(loc_8c1BFBD0,pc),r8 ; r8 set to 0x8C1AED24
mov.l @(loc_8c1BFBD4,pc),r9 ; r9 set to 0x8C1AFD44
cmp/eq 0x00,r0
mov.l @(loc_8c1BFBD8,pc),r10 ; r10 set to 0x8C1AFA18
bt loc_8c1BFB5E
cmp/eq 0x01,r0
bt loc_8c1BFB68
cmp/eq 0x02,r0
bt loc_8c1BFC18
cmp/eq 0x03,r0
bf loc_8c1BFB42
bra loc_8c1BFC4E
nop

loc_8c1BFB42:
cmp/eq 0x04,r0
bf loc_8c1BFB4A
bra loc_8c1BFCD0
nop

loc_8c1BFB4A:
cmp/eq 0x06,r0
bf loc_8c1BFB52
bra loc_8c1BFD04
nop

loc_8c1BFB52:
cmp/eq 0x08,r0
bf loc_8c1BFB5A
bra loc_8c1BFD52
nop

loc_8c1BFB5A:
bra loc_8c1BFDEE
nop

loc_8c1BFB5E:
bsr loc_8c1BFE28
nop
mov.l @(loc_8c1BFBE0,pc),r3 ; r3 set to 0x8C34B130
bra loc_8c1BFDEE
mov.b r14,@r3

loc_8c1BFB68:
mov.l @(loc_8c1BFBE4,pc),r1 ; r1 set to 0x8C1B01F0
jsr @r1
nop
extu.b r0,r0
tst r0,r0
bt loc_8c1BFB78
bra loc_8c1BFC3A
mov.b r14,@r12

loc_8c1BFB78:
mov.l @(loc_8c1BFBE8,pc),r2 ; r2 set to 0x8C1C2168
jsr @r2
nop
extu.b r0,r8
mov.b r0,@r15
mov r8,r0
nop
cmp/eq 0x01,r0
bf loc_8c1BFBEC
mov 0x02,r2 ; r2 set to 0x02
bra loc_8c1BFC14
mov.b r2,@r12

loc_8c1BFB90:
#data 0x008C

loc_8c1BFB92:
#data 0x008E

#align4
loc_8c1BFB94:
#data bank1c.loc_8c1c9D98

loc_8c1BFB98:
#data 0x8C34B11C

#align4
loc_8c1BFB9C:
#data 0x8C34B0A3

#align4
loc_8c1BFBA0:
#data 0x8C34B0B0

#align4
loc_8c1BFBA4:
#data 0x8C34B194

#align4
loc_8c1BFBA8:
#data 0x8C34B0FD

#align4
loc_8c1BFBAC:
#data 0x8C34B11D

#align4
loc_8c1BFBB0:
#data 0x8C34B0A0

#align4
loc_8c1BFBB4:
#data 0x8C34B17A

#align4
loc_8c1BFBB8:
#data 0x8C34B1F8

#align4
loc_8c1BFBBC:
#data bank19.loc_8c19D1DA

loc_8c1BFBC0:
#data 0x8C34B14C

#align4
loc_8c1BFBC4:
#data loc_8c1B3EEC

loc_8c1BFBC8:
#data bank19.loc_8c19E5E0

loc_8c1BFBCC:
#data bank19.loc_8c199404

loc_8c1BFBD0:
#data bank1a.loc_8c1aED24

loc_8c1BFBD4:
#data bank1a.loc_8c1aFD44

loc_8c1BFBD8:
#data bank1a.loc_8c1aFA18

loc_8c1BFBDC:
#data 0x8C34B288

#align4
loc_8c1BFBE0:
#data 0x8C34B130

#align4
loc_8c1BFBE4:
#data loc_8c1B01F0

loc_8c1BFBE8:
#data bank1c.loc_8c1c2168


loc_8c1BFBEC:
cmp/eq 0x02,r0
bf loc_8c1BFBF8
bsr loc_8c1BFAAC
mov 0x00,r4 ; r4 set to 0x00
bra loc_8c1BFC14
nop

#align4
loc_8c1BFBF8:
#data 0x890B2888
#data 0x00094A0B
#data 0x22E1D262
#data 0xC9FE84D7
#data 0xD36180D7
#data 0x64F0430B
#data 0x0009490B


loc_8c1BFC14:
bra loc_8c1BFDEE
tst r8,r8

loc_8c1BFC18:
mov.l @(loc_8c1BFD94,pc),r2 ; r2 set to 0x8C1B01F0
jsr @r2
nop
extu.b r0,r0
tst r0,r0
bt loc_8c1BFC44
mov.b @(0x06,r13),r0
and 0xF0,r0
mov.b r0,@(0x06,r13)
mov.b r14,@r12
mov.l @(loc_8c1BFD98,pc),r0 ; r0 set to 0x8C34AF5E
mov.b @r0,r0 ; r0 ??
extu.b r0,r0
tst 0x80,r0
bf loc_8c1BFC3A
bra loc_8c1BFDEE
nop

loc_8c1BFC3A:
mov.l @(loc_8c1BFD9C,pc),r2 ; r2 set to 0x8C1995D6
jsr @r2
mov 0x02,r4 ; r4 set to 0x02
bra loc_8c1BFDEE
nop

loc_8c1BFC44:
mov.l @(loc_8c1BFDA0,pc),r2 ; r2 set to 0x8C1BE4E4
jsr @r2
nop
bra loc_8c1BFDEE
nop

loc_8c1BFC4E:
#data 0xB0FE
#data 0xD0540009
#data 0x600C6000
#data 0x8B0A8805
#data 0x731063D3
#data 0xCB406030
#data 0xD2512300
#data 0x420BD44F
#data 0xE304E500
#data 0x2C30

loc_8c1BFC72:
#data 0xD24F
#data 0x0009420B
#data 0x2008600E
#data 0xD04D891A
#data 0x600C6000
#data 0x890EC808
#data 0x6000D04B
#data 0xC810600C
#data 0xD0418B09
#data 0x600C6000
#data 0x8B0BC880
#data 0x6000D047
#data 0xC808600C
#data 0x8906

loc_8c1BFCA6:
#data 0xD03F
#data 0x600C6000
#data 0x89018806
#data 0x0009A09D

#align4
loc_8c1BFCB4:
#data 0x00094A0B
#data 0xE302D142
#data 0x410BD240
#data 0xE5002230
#data 0xE403480B
#data 0x0009490B
#data 0x0009A08F


loc_8c1BFCD0:
mov.b @(0x06,r13),r0
extu.b r0,r0
tst 0x08,r0
bf loc_8c1BFCEE
jsr @r10
nop
mov.l @(loc_8c1BFDC4,pc),r1 ; r1 set to 0x8C1B374E
mov 0x02,r3 ; r3 set to 0x02
mov.l @(loc_8c1BFDC0,pc),r2 ; r2 set to 0x8C34B2E3
jsr @r1
mov.b r3,@r2 ; r2 ??
jsr @r9
nop
bra loc_8c1BFE14
nop

loc_8c1BFCEE:
#data 0x84DA
#data 0xC804600C
#data 0xD2348902
#data 0x0009420B

#align4
loc_8c1BFCFC:
#data 0x0009B0A7
#data 0x0009A075

#align4
loc_8c1BFD04:
#data 0x6320D231
#data 0x8B022338
#data 0x430BD330
#data 0x0009

loc_8c1BFD12:
#data 0xD424
#data 0x600C6040
#data 0x8B688806
#data 0x6030D32B
#data 0x89038801
#data 0x600C8441
#data 0x8B0C8801

#align4
loc_8c1BFD2C:
#data 0x6000D01A
#data 0xC880600C
#data 0x84DA8B02
#data 0x80DACB40

#align4
loc_8c1BFD3C:
#data 0x00094A0B
#data 0xA016E500
#data 0xE403

loc_8c1BFD46:
#data 0xD323
#data 0x0009430B
#data 0xA04EE208
#data 0x2C20


loc_8c1BFD52:
mov.l @(loc_8c1BFDD8,pc),r1 ; r1 set to 0x8C19F2FC
jsr @r1
nop
exts.b r0,r0
tst r0,r0
bt loc_8c1BFDEE
mov.l @(loc_8c1BFDDC,pc),r1 ; r1 set to 0x8C1AB9C2
jsr @r1
nop
mov.l @(loc_8c1BFDE0,pc),r3 ; r3 set to 0x8C34AFA8
mov.b @r3,r0
extu.b r0,r0
cmp/eq 0x01,r0
bf loc_8c1BFDE4
mov 0x00,r5 ; r5 set to 0x00
mov r5,r4 ; r4 set to 0x00

loc_8c1BFD72:
jsr @r8
nop
jsr @r9
nop
mov.b @(0x07,r13),r0
and 0xFE,r0
mov.b r0,@(0x07,r13)
mov.b @(0x06,r13),r0
and 0xBF,r0
mov.b r0,@(0x06,r13)
mov.l @(loc_8c1BFD8C,pc),r3 ; r3 set to 0x8C34B034
bra loc_8c1BFDEE
mov.w r14,@r3

#align4
loc_8c1BFD8C:
#data 0x8C34B034

#align4
loc_8c1BFD90:
#data bank1c.loc_8c1c2B9C

loc_8c1BFD94:
#data loc_8c1B01F0

loc_8c1BFD98:
#data 0x8C34AF5E

#align4
loc_8c1BFD9C:
#data bank19.loc_8c1995D6

loc_8c1BFDA0:
#data loc_8c1BE4E4
#data 0x8C34B301
#data 0x8C34B128

#align4
loc_8c1BFDAC:
#data loc_8c1B3EEC

loc_8c1BFDB0:
#data bank19.loc_8c19FED2
#data 0x8C34B28F
#data 0x8C34B293
#data 0x8C34AF6F

#align4
loc_8c1BFDC0:
#data 0x8C34B2E3

#align4
loc_8c1BFDC4:
#data loc_8c1B374E

loc_8c1BFDC8:
#data bank1a.loc_8c1a0648
#data 0x8C34B130

#align4
loc_8c1BFDD0:
#data bank1c.loc_8c1c2FB8

loc_8c1BFDD4:
#data bank19.loc_8c19F21E

loc_8c1BFDD8:
#data bank19.loc_8c19F2FC

loc_8c1BFDDC:
#data bank1a.loc_8c1aB9C2

loc_8c1BFDE0:
#data 0x8C34AFA8

#align4
loc_8c1BFDE4:
#data 0x721062D3
#data 0xCB016020
#data 0x2200

loc_8c1BFDEE:
#data 0x63C0
#data 0x8B0E2338
#data 0x6000D02D
#data 0xC801600C
#data 0x60B08B09
#data 0x2B007001
#data 0x8802600C
#data 0xD2298B04
#data 0x420B944D
#data 0x0009

loc_8c1BFE12:
#data 0x2BE0


loc_8c1BFE14:
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

loc_8c1BFE28:
sts.l pr,@-r15
mov.l @(loc_8c1BFEB4,pc),r3 ; r3 set to 0x8C1AAEDC
jsr @r3
nop
mov.l @(loc_8c1BFEB8,pc),r2 ; r2 set to 0x8C1B01F0
jsr @r2
nop
bsr bank1c.loc_8c1c0378
nop
bsr loc_8c1BFF56
nop
mov.l @(loc_8c1BFEBC,pc),r3 ; r3 set to 0x8C1AFFAA
jsr @r3
nop
bsr bank1c.loc_8c1c02BC
nop
mov.l @(loc_8c1BFEC0,pc),r3 ; r3 set to 0x8C1C1A94
jmp @r3
lds.l @r15+,pr

loc_8c1BFE4E:
#data 0x2FE6
#data 0x4F22E408
#data 0x84E6DE1B
#data 0x2048600C
#data 0xD31A8978
#data 0x622C6230
#data 0x89042248
#data 0xE204D119
#data 0x410BD017
#data 0x2020

loc_8c1BFE72:
#data 0x84E7
#data 0xC880600C
#data 0xD2168938
#data 0x0009420B
#data 0xE202D116
#data 0x410BD314
#data 0xD3152320
#data 0x430BE500
#data 0xD214E403
#data 0x0009420B
#data 0xC97F84E7
#data 0x4F2680E7
#data 0xE300D211
#data 0x000B2231
#data 0x20006EF6
#data 0x8C34B28F

#align4
loc_8c1BFEB0:
#data bank1a.loc_8c1a1296

loc_8c1BFEB4:
#data bank1a.loc_8c1aAEDC

loc_8c1BFEB8:
#data loc_8c1B01F0

loc_8c1BFEBC:
#data bank1a.loc_8c1aFFAA

loc_8c1BFEC0:
#data bank1c.loc_8c1c1A94
#data 0x8C34B288
#data 0x8C34B2CA
#data 0x8C34AF7D

#align4
loc_8c1BFED0:
#data bank1a.loc_8c1aFB9C

loc_8c1BFED4:
#data bank1a.loc_8c1aFA18
#data 0x8C34B2E3

#align4
loc_8c1BFEDC:
#data loc_8c1B374E

loc_8c1BFEE0:
#data bank1a.loc_8c1aED24

loc_8c1BFEE4:
#data bank1a.loc_8c1aFD44
#data 0x8C34B034

#align4
loc_8c1BFEEC:
#data 0x410BD14B
#data 0xD34B0009
#data 0x0009430B
#data 0x0009B23E
#data 0x430BD349
#data 0xD34A0009
#data 0x430BD148
#data 0x600E6412
#data 0x89152008
#data 0x711061E3
#data 0x600C6010
#data 0x8907C840
#data 0xCB106010
#data 0x60102100
#data 0xC9BFD242
#data 0x2100420B

#align4
loc_8c1BFF2C:
#data 0x6030D341
#data 0x8803600C
#data 0xD1408B02
#data 0xE400410B

#align4
loc_8c1BFF3C:
#data 0x430BD33F
#data 0xD23F0009
#data 0x0009420B
#data 0xD33E4F26
#data 0x6EF6432B

#align4
loc_8c1BFF50:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1BFF56:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
mov.l @(loc_8c1C0048,pc),r3 ; r3 set to 0x8C34B124
mov.l @(loc_8c1C002C,pc),r12 ; r12 set to 0x8C1B3F0C
jsr @r12
mov.l @r3,r4
exts.b r0,r0
tst r0,r0
bf loc_8c1BFF78
bra bank1c.loc_8c1c02A4
nop

loc_8c1BFF78:
mov.l @(loc_8c1C004C,pc),r0 ; r0 set to 0x8C34AF6B
mov.b @r0,r0 ; r0 ??
extu.b r0,r0
tst 0x04,r0
bt loc_8c1BFF86
bra bank1c.loc_8c1c02A4
nop

loc_8c1BFF86:
mov.l @(loc_8c1C0050,pc),r0 ; r0 set to 0x8C34B291
mov.b @r0,r0 ; r0 ??
extu.b r0,r0
tst 0x80,r0
bt loc_8c1BFF94
bra bank1c.loc_8c1c02A4
nop

#align4
loc_8c1BFF94:
#data 0xDE30DA2F
#data 0x200884A1
#data 0xD02F890A
#data 0x600C6000
#data 0x8905C820
#data 0x6030D32C
#data 0x2300C9DF
#data 0x2E20E205

#align4
loc_8c1BFFB4:
#data 0x68A0D42A
#data 0x638C6240
#data 0x3320622C
#data 0x628C8909
#data 0x89062228
#data 0x638C84A1
#data 0x3033600C
#data 0xE3048B01
#data 0x2E30

loc_8c1BFFD6:
#data 0x62A0
#data 0x60E02420
#data 0x600CDD22
#data 0x8800DB20
#data 0xE9008D42
#data 0x896C8801
#data 0x8B018802
#data 0x0009A0E7

#align4
loc_8c1BFFF4:
#data 0x8B018803
#data 0x0009A0F1

#align4
loc_8c1BFFFC:
#data 0x8B018804
#data 0x0009A10B

#align4
loc_8c1C0004:
#data 0x8B018805
#data 0x0009A144

#align4
loc_8c1C000C:
#data 0x8B018807
#data 0x0009A0AE

#align4
loc_8c1C0014:
#data 0x89568808
#data 0x0009A144

#align4
loc_8c1C001C:
#data loc_8c1B01F0

loc_8c1C0020:
#data loc_8c1B04CC

loc_8c1C0024:
#data loc_8c1B046E
#data 0x8C34B128

#align4
loc_8c1C002C:
#data loc_8c1B3F0C

loc_8c1C0030:
#data bank1a.loc_8c1aF91A
#data 0x8C34B0B0

#align4
loc_8c1C0038:
#data loc_8c1B689C

loc_8c1C003C:
#data bank1a.loc_8c1aAEDC

loc_8c1C0040:
#data bank1c.loc_8c1c1A94

loc_8c1C0044:
#data bank1c.loc_8c1c2FB8

loc_8c1C0048:
#data 0x8C34B124

#align4
loc_8c1C004C:
#data 0x8C34AF6B

#align4
loc_8c1C0050:
#data 0x8C34B291
#data 0x8C34AF50
#data 0x8C34B11D
#data 0x8C34B2A8
#data 0x8C352F6C
#data 0x8C34B1F8

#align4
loc_8c1C0068:
#data loc_8c1B3EEC
