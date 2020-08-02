
;==============================
loc_8c1C006C:
#data 0x4C0BD338
#data 0x600E6432
#data 0x89062008
#data 0x6030D336
#data 0x2300C9FE
#data 0x00096093
#data 0x80A1

loc_8c1C0086:
#data 0xB116
#data 0x600E0009
#data 0x8B012008
#data 0x0009A108

#align4
loc_8c1C0094:
#data 0xE04265B2
#data 0x055DD42D
#data 0x655D4D0B
#data 0xE04065B2
#data 0x055DD42C
#data 0x655D4D0B
#data 0x4D0BD42B
#data 0xD42BE51E
#data 0x4D0B9549
#data 0xD32A0009
#data 0xE400430B
#data 0xA0EFE201
#data 0x2E20

loc_8c1C00C6:
#data 0xB0F6
#data 0x600E0009
#data 0x89012008
#data 0x0009A0E8

#align4
loc_8c1C00D4:
#data 0x420BD223
#data 0xD31DE401
#data 0x64324C0B
#data 0x2008600E
#data 0xD11D8B10
#data 0x64124C0B
#data 0x2008600E
#data 0xD31D8961
#data 0x6232902A
#data 0x9228012D
#data 0x2128611D
#data 0xE0028959
#data 0x2E00A0CE

#align4
loc_8c1C0108:
#data 0x4C0BD213
#data 0x600E6422
#data 0x8B502008
#data 0xE04663B2
#data 0xE04E023D
#data 0x3210013D
#data 0xD312895A
#data 0x600C6030
#data 0x8B558801
#data 0xE04665B2
#data 0x055DD407
#data 0x655D4D0B
#data 0xE04465B2
#data 0x055DD408
#data 0x655D4D0B
#data 0xA0ADE307
#data 0x00C82E30
#data 0x020000B2
#data 0x8C34B114
#data 0x8C34B2A7
#data 0x8C352F64
#data 0x8C352F68
#data 0x8C352F60

#align4
loc_8c1C0164:
#data bank1a.loc_8c1a126E
#data 0x8C34B1F8
#data 0x8C34B11D

#align4
loc_8c1C0170:
#data 0x0009B0A1
#data 0x2008600E
#data 0xD3398917
#data 0xE400430B
#data 0x4C0BD238
#data 0x600E6422
#data 0x89142008
#data 0xE04A65B2
#data 0x055DD434
#data 0x655D4D0B
#data 0xE04065B2
#data 0x055DD432
#data 0x655D4D0B
#data 0xA07DE308
#data 0x2E30

loc_8c1C01AA:
#data 0xD130
#data 0x64124C0B
#data 0x2008600E
#data 0x8976

loc_8c1C01B6:
#data 0xD42B
#data 0x4D0B9550
#data 0xA0712E90
#data 0x0009

loc_8c1C01C2:
#data 0xD32A
#data 0x64324C0B
#data 0x2008600E
#data 0xB072896A
#data 0x600E0009
#data 0x8B652008

#align4
loc_8c1C01D8:
#data 0xA063E103
#data 0x2E10

loc_8c1C01DE:
#data 0x84A1
#data 0xD420953C
#data 0x4D0B7001
#data 0xD22180A1
#data 0x23386321
#data 0xD3208B0A
#data 0xCB406030
#data 0xD11F2300
#data 0x410BE500
#data 0xD31EE402
#data 0x0009430B

#align4
loc_8c1C0208:
#data 0x2228628C
#data 0xD31C8949
#data 0x6230618C
#data 0x3213622C
#data 0x8B43

loc_8c1C021A:
#data 0xD01A
#data 0x600C6000
#data 0x8B10C801
#data 0x6000D018
#data 0xC802600C
#data 0xD0178B05
#data 0x600C6000
#data 0x8810C918
#data 0x8B2C

loc_8c1C023A:
#data 0xD215
#data 0x0009420B
#data 0x2008600E
#data 0x8926

loc_8c1C0246:
#data 0x4F26
#data 0xD20C2E90
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6422B
#data 0x00000320

#align4
loc_8c1C0260:
#data bank1a.loc_8c1a126E
#data 0x8C34B114
#data 0x8C352F64
#data 0x8C352F60
#data 0x8C34B034
#data 0x8C34B292

#align4
loc_8c1C0278:
#data bank1a.loc_8c1aED24

loc_8c1C027C:
#data bank1a.loc_8c1aFD44
#data 0x8C34AF51
#data 0x8C34B2A7
#data 0x8C34AF6B
#data 0x8C34AF65

#align4
loc_8c1C0290:
#data bank1a.loc_8c1a11E0

loc_8c1C0294:
#data 0x00096093
#data 0xD22D80A1
#data 0x420BD32B
#data 0x2300

loc_8c1C02A2:
#data 0x2E90


loc_8c1C02A4:
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

loc_8c1C02B6:
mov.l @(loc_8c1C0354,pc),r3 ; r3 set to 0x8C19D204
jmp @r3
nop

loc_8c1C02BC:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l @(loc_8c1C0358,pc),r13 ; r13 set to 0x8C34B288
sts.l pr,@-r15
mov r13,r14 ; r14 set to 0x8C34B288
add 0x0B,r14 ; r14 set to 0x8C34B293
mov.b @r14,r0
extu.b r0,r0
tst 0x10,r0
bt loc_8c1C033A
mov.l @(loc_8c1C035C,pc),r3 ; r3 set to 0x8C34B034
mov 0x02,r1 ; r1 set to 0x02
mov.w @r3,r2
extu.w r2,r2
cmp/ge r1,r2
bf loc_8c1C02EA
mov.b @r14,r0
and 0xEF,r0
mov.b r0,@r14 ; r14 ??? bc r0 is ???
mov.b @r14,r0
and 0xDF,r0
bra loc_8c1C0340
mov.b r0,@r14

loc_8c1C02EA:
mov.b @r14,r0
extu.b r0,r0
tst 0x20,r0
bf loc_8c1C0304
mov.l @(loc_8c1C0364,pc),r2 ; r2 set to 0x8C1B3EEC
mov.l @(loc_8c1C0360,pc),r4 ; r4 set to 0x8C34B118
mov.w @(loc_8c1C0348,pc),r5 ; r5 set to 0x12C
jsr @r2
nop
mov.b @(0x0B,r13),r0
or 0x20,r0
bra loc_8c1C0340
mov.b r0,@(0x0B,r13)

loc_8c1C0304:
mov.l @(loc_8c1C0368,pc),r3 ; r3 set to 0x8C1B3F0C
mov.l @(loc_8c1C0360,pc),r2 ; r2 set to 0x8C34B118
jsr @r3
mov.l @r2,r4
exts.b r0,r0
tst r0,r0
bt loc_8c1C0340
mov.l @(loc_8c1C0368,pc),r2 ; r2 set to 0x8C1B3F0C
mov.l @(loc_8c1C036C,pc),r3 ; r3 set to 0x8C34B124
jsr @r2
mov.l @r3,r4
exts.b r0,r0
tst r0,r0
bt loc_8c1C0340
mov.l @(loc_8c1C0370,pc),r0 ; r0 set to 0x8C34AF5E
mov.b @r0,r0 ; r0 ??
extu.b r0,r0
tst 0x80,r0
bt loc_8c1C0334
mov.l @(loc_8c1C0374,pc),r2 ; r2 set to 0x8C1AFBFE
jsr @r2
nop
bra loc_8c1C033A
nop

#align4
loc_8c1C0334:
#data 0x420BD206
#data 0x0009


loc_8c1C033A:
mov.b @(0x0B,r13),r0
and 0xDF,r0
mov.b r0,@(0x0B,r13)

loc_8c1C0340:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1C0348:
#data 0x012C
#data 0x0000
#data 0x8C34B03A

#align4
loc_8c1C0350:
#data bank1a.loc_8c1aFBD6

loc_8c1C0354:
#data bank19.loc_8c19D204

loc_8c1C0358:
#data 0x8C34B288

#align4
loc_8c1C035C:
#data 0x8C34B034

#align4
loc_8c1C0360:
#data 0x8C34B118

#align4
loc_8c1C0364:
#data bank1b.loc_8c1b3EEC

loc_8c1C0368:
#data bank1b.loc_8c1b3F0C

loc_8c1C036C:
#data 0x8C34B124

#align4
loc_8c1C0370:
#data 0x8C34AF5E

#align4
loc_8c1C0374:
#data bank1a.loc_8c1aFBFE

loc_8c1C0378:
#data 0xE4402FE6
#data 0x2FC62FD6
#data 0x4F22D334
#data 0x622C6230
#data 0x7FFC2248
#data 0xD032895C
#data 0x622C6200
#data 0x8B572248
#data 0xD333DE32
#data 0xDC30DD2F
#data 0x0009430B
#data 0x2008600E
#data 0x63D08B13
#data 0x8B0E2338
#data 0x6230D32E
#data 0x8B0A2228
#data 0x6000D027
#data 0xC808600C
#data 0x63E08B05
#data 0x4C0B2F30
#data 0x63F0E401
#data 0x2E30

loc_8c1C03CE:
#data 0xA00F
#data 0xE201

loc_8c1C03D2:
#data 0x61D0
#data 0x890A2118
#data 0x6000D024
#data 0x8801600C
#data 0x62E08B05
#data 0x4C0B2F20
#data 0x63F0E400
#data 0x2E30

loc_8c1C03EE:
#data 0xE200

#align4
loc_8c1C03F0:
#data 0xD3202D20
#data 0x430BDD1E
#data 0x600E0009
#data 0x8B132008
#data 0x233863D0
#data 0xD3198B0E
#data 0x22286230
#data 0xD0128B0A
#data 0x600C6000
#data 0x8905C808
#data 0x2F3063E0
#data 0xE4064C0B
#data 0x2E3063F0

#align4
loc_8c1C0424:
#data 0xE201A00F

#align4
loc_8c1C0428:
#data 0x211861D0
#data 0xD00F890A
#data 0x600C6000
#data 0x8B058810
#data 0x2F2062E0
#data 0xE4004C0B
#data 0x2E3063F0

loc_8c1C0444:
#data 0xE200

loc_8c1C0446:
#data 0x2D20

#align4
loc_8c1C0448:
#data 0x4F267F04
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x8C34AF77
#data 0x8C34B28E
#data 0x8C34B11E

#align4
loc_8c1C0460:
#data bank1a.loc_8c1aC774
#data 0x8C34AFA8

#align4
loc_8c1C0468:
#data bank1a.loc_8c1a11DC
#data 0x8C34AF60
#data 0x8C34B11F

#align4
loc_8c1C0474:
#data bank1a.loc_8c1a11F2


loc_8c1C0478:
mov.l @(loc_8c1C04A4,pc),r0 ; r0 set to 0x8C352F70
extu.w r5,r5
rts
mov.b r4,@(r0,r5)
;-------------------------------------------------------------------------------

#align4
loc_8c1C0480:
#data 0x605DD308
#data 0xE7004015
#data 0x8F07644D
#data 0x343C

loc_8c1C048E:
#data 0x7701
#data 0x627D6344
#data 0x26303203
#data 0x76018FF9

#align4
loc_8c1C049C:
#data 0x0009000B
;-------------------------------------------------------------------------------

loc_8c1C04A0:
rts
mov 0x01,r0
;-------------------------------------------------------------------------------

#align4
loc_8c1C04A4:
#data 0x8C352F70


loc_8c1C04A8:
mov.l r14,@-r15
mov.l r13,@-r15
mov r4,r13
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov 0x00,r9 ; r9 set to 0x00
mov.l r8,@-r15
mov r9,r14 ; r14 set to 0x00
mov.l @(loc_8c1C06A8,pc),r8 ; r8 set to 0x8C353172
sts.l pr,@-r15
mov.b @r8,r10
mov.b @(0x01,r8),r0
add 0xFC,r15
bra loc_8c1C0602
mov r0,r11

loc_8c1C04CA:
extu.b r10,r0
mov r14,r4
shlr r4
cmp/eq 0x00,r0
bt loc_8c1C04EC
cmp/eq 0x01,r0
bt loc_8c1C04FA
cmp/eq 0x02,r0
bf loc_8c1C04E0
bra loc_8c1C066C
nop

loc_8c1C04E0:
cmp/eq 0x03,r0
bf loc_8c1C04E8
bra loc_8c1C0704
nop

loc_8c1C04E8:
bra loc_8c1C071E
nop

loc_8c1C04EC:
mov r4,r14
mov.l @(loc_8c1C06AC,pc),r4 ; r4 set to 0x8C34BB90
add 0xFF,r13
mov.b @r4,r11
mov 0x02,r4 ; r4 set to 0x02
bra loc_8c1C071E
mov r4,r10

loc_8c1C04FA:
mov.l @(loc_8c1C06B0,pc),r2 ; r2 set to 0x8C353183
mov.b @r2,r3
tst r3,r3
bf loc_8c1C050C
mov r4,r14
mov.l @(loc_8c1C06B4,pc),r4 ; r4 set to 0x80000000
or r4,r14
bra loc_8c1C0514
add 0xFF,r13

loc_8c1C050C:
mov.l @(loc_8c1C06B0,pc),r1 ; r1 set to 0x8C353183
mov.b r9,@r1 ; r1 ??? bc r9 is ???
mov.l @(loc_8c1C06B8,pc),r3 ; r3 set to 0x8C34BB8C
mov.w r9,@r3 ; r3 ??? bc r9 is ???

loc_8c1C0514:
mov.l @(loc_8c1C06BC,pc),r4 ; r4 set to 0x8C353184, r4 set to 0x8C353184
mov.b @r4,r2
add 0xFF,r2
mov.b r2,@r4 ; r4 ??? bc r2 is ???, r4 ??? bc r2 is ???
mov.b @r4,r3
tst r3,r3
bt loc_8c1C0526
bra loc_8c1C071E
nop

loc_8c1C0526:
mov.l @(loc_8c1C06C0,pc),r5 ; r5 set to 0x8C34BB66
mov.b @r5,r3
mov.b r3,@r4
mov.l @(loc_8c1C06C4,pc),r1 ; r1 set to 0x8C34BB72
mov.b @r1,r2
tst r2,r2
bf loc_8c1C0538
bra loc_8c1C0630
nop

loc_8c1C0538:
mov.l @(loc_8c1C06C8,pc),r4 ; r4 set to 0x8C353181
mov.b @r4,r0
extu.b r0,r0
cmp/eq 0x16,r0
bt loc_8c1C056C
cmp/eq 0x17,r0
bt loc_8c1C056C
cmp/eq 0x18,r0
bt loc_8c1C056C
cmp/eq 0x19,r0
bt loc_8c1C056C
mov.l @(loc_8c1C06CC,pc),r6 ; r6 set to 0x8C34BB86
mov.b @r6,r3
tst r3,r3
bt loc_8c1C056C
mov.l @(loc_8c1C06D0,pc),r5 ; r5 set to 0x8C34BB85
mov.b @r5,r3
tst r3,r3
bf loc_8c1C0564
mov.l @(loc_8c1C06D4,pc),r5 ; r5 set to 0x8C34BB45
bra loc_8c1C0566
nop

loc_8c1C0564:
#data 0xD55C

loc_8c1C0566:
#data 0x6C50
#data 0x26906A93

#align4
loc_8c1C056C:
#data 0x6560D65B
#data 0x8801605C
#data 0x65038D04
#data 0x6320D259
#data 0x8B682338

#align4
loc_8c1C0580:
#data 0x6011D158
#data 0x892A2008
#data 0x6C02D057
#data 0x20C27C01
#data 0x63117CFF
#data 0x73FF6CC0
#data 0xD2472131
#data 0x70016021
#data 0x60402201
#data 0x8812600C
#data 0x6A938D02
#data 0x0009A0B7

#align4
loc_8c1C05B0:
#data 0x420BD24E
#data 0xE3030009
#data 0x3033600D
#data 0xA0AE8901
#data 0x0009

loc_8c1C05C2:
#data 0xD23D
#data 0x6121D44A
#data 0x611D6040
#data 0x3103600C
#data 0xA0A48901
#data 0x0009

loc_8c1C05D6:
#data 0xD136
#data 0xA0A0E001
#data 0x2100

loc_8c1C05DE:
#data 0x6540
#data 0x8801605C
#data 0x65038D04
#data 0x00096053
#data 0x8B0B8802

#align4
loc_8c1C05F0:
#data 0x6483D240
#data 0x420B6583
#data 0x600E7402
#data 0x892A2008
#data 0x6A80


loc_8c1C0602:
mov.b @(0x02,r8),r0
bra loc_8c1C071E
mov r0,r12

#align4
loc_8c1C0608:
#data 0x6030D33B
#data 0x8801600C
#data 0xD23A8B05
#data 0x410B6122
#data 0xD3370009
#data 0x2390

loc_8c1C061E:
#data 0xD138
#data 0x420B6212
#data 0xD3340009
#data 0x600C6030
#data 0x8B018802


loc_8c1C0630:
bra loc_8c1C071E
mov 0x03,r10

#align4
loc_8c1C0634:
#data 0x6211D12B
#data 0x890C2228
#data 0x6C22D22A
#data 0x22C27C01
#data 0x62117CFF
#data 0x72FF6CC0
#data 0xA0662121
#data 0x6A93

loc_8c1C0652:
#data 0x2558
#data 0x8B63

loc_8c1C0656:
#data 0x63DC
#data 0x6DDC633B
#data 0x4E3DE220
#data 0x6343E4FF
#data 0x432D32D8
#data 0x2E3BA01C


loc_8c1C066C:
extu.b r11,r4
extu.b r13,r2
cmp/ge r4,r2
mov.l r2,@r15
bf/s loc_8c1C068A
extu.b r12,r5
mov 0x20,r3 ; r3 set to 0x20
extu.b r11,r1
sub r4,r3 ; r3 ??? bc r4 is ???
neg r1,r1
shad r3, r5
shld r1, r14
or r5,r14
bra loc_8c1C071C
sub r11,r13

loc_8c1C068A:
#data 0x2F22
#data 0x63F2622B
#data 0x611B61DC
#data 0x6CCC7220
#data 0x452C633B
#data 0x4C3D4E1D
#data 0x2E5B3BD8

#align4
loc_8c1C06A4:
#data 0x6D93A03B

#align4
loc_8c1C06A8:
#data 0x8C353172

#align4
loc_8c1C06AC:
#data 0x8C34BB90

#align4
loc_8c1C06B0:
#data 0x8C353183

#align4
loc_8c1C06B4:
#data 0x80000000

#align4
loc_8c1C06B8:
#data 0x8C34BB8C

#align4
loc_8c1C06BC:
#data 0x8C353184

#align4
loc_8c1C06C0:
#data 0x8C34BB66

#align4
loc_8c1C06C4:
#data 0x8C34BB72

#align4
loc_8c1C06C8:
#data 0x8C353181

#align4
loc_8c1C06CC:
#data 0x8C34BB86

#align4
loc_8c1C06D0:
#data 0x8C34BB85

#align4
loc_8c1C06D4:
#data 0x8C34BB45
#data 0x8C34BB44
#data 0x8C34BB70
#data 0x8C353182
#data 0x8C34BB68
#data 0x8C34BB6C

#align4
loc_8c1C06EC:
#data bank1b.loc_8c1b6EA4
#data 0x8C34BB8F

#align4
loc_8c1C06F4:
#data bank1a.loc_8c1a1320
#data 0x8C34BB71
#data 0x8C353194
#data 0x8C353190


loc_8c1C0704:
mov.l @(loc_8c1C07E8,pc),r2 ; r2 set to 0x8C34BB74
shlr r14
mov.l @(loc_8c1C07EC,pc),r3 ; r3 set to 0x8C1B3F0C
add 0xFF,r13
jsr @r3
mov.l @r2,r4
exts.b r0,r0
tst r0,r0
bt loc_8c1C071E
mov.l @(loc_8c1C07F0,pc),r3 ; r3 set to 0x8C34BB72
mov.w @(loc_8c1C07E4,pc),r4 ; r4 set to 0xFF
mov.b r4,@r3 ; r3 ??

loc_8c1C071C:
mov 0x01,r10 ; r10 set to 0x01, r10 set to 0x01

loc_8c1C071E:
extu.b r13,r3
tst r3,r3
bt loc_8c1C0728
bra loc_8c1C04CA
nop

loc_8c1C0728:
mov.b r10,@r8
mov r11,r0
nop
mov.b r0,@(0x01,r8)
mov r12,r0
nop
mov.b r0,@(0x02,r8)
mov r14,r0
nop
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

loc_8c1C074E:
mov.l r14,@-r15
mov.l r13,@-r15
mov r5,r13
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
mov.l @(loc_8c1C07F4,pc),r8 ; r8 set to 0x8C353178
sts.l pr,@-r15
mov.b @(0x01,r8),r0
mov.l @(0x04,r8),r12
mov.b @r8,r10
add 0xF8,r15
mov r0,r11
bra loc_8c1C09B8
mov r4,r14

loc_8c1C0770:
mov.l @(loc_8c1C0800,pc),r4 ; r4 set to 0x8C34BB88
extu.b r10,r0
mov.l @(loc_8c1C07F8,pc),r6 ; r6 set to 0x8C34BB90
cmp/eq 0x02,r0
mov.l @(loc_8c1C07FC,pc),r5 ; r5 set to 0x8C34B2CC
mov 0x08,r9 ; r9 set to 0x08
mov 0x01,r7 ; r7 set to 0x01
bf/s loc_8c1C0786
and r14,r7 ; r7 ??? bc r14 is ???
bra loc_8c1C0886
nop

loc_8c1C0786:
cmp/eq 0x03,r0
bf loc_8c1C078E
bra loc_8c1C098E
nop

loc_8c1C078E:
cmp/eq 0x08,r0
bt loc_8c1C0796
bra loc_8c1C09B8
nop

loc_8c1C0796:
mov.l @(loc_8c1C0804,pc),r5 ; r5 set to 0x8C34BB84
tst r7,r7
bf loc_8c1C07D6
mov.l @(loc_8c1C0808,pc),r3 ; r3 set to 0x8C34BB87
mov.b @r3,r0
extu.b r0,r0
cmp/eq 0x02,r0
bf loc_8c1C07AC
mov 0x03,r4 ; r4 set to 0x03
bra loc_8c1C09B4
mov r4,r10

loc_8c1C07AC:
mov.l @(loc_8c1C080C,pc),r4 ; r4 set to 0x8C34B2D2
mov 0x00,r2 ; r2 set to 0x00
mov r2,r1 ; r1 set to 0x00
mov r2,r12 ; r12 set to 0x00
mov.w r2,@r4 ; r4 ??
mov 0x02,r4 ; r4 set to 0x02
mov.b @r6,r11
mov.b r1,@r5
mov.l @(loc_8c1C0810,pc),r0 ; r0 set to 0x8C34BB7C
mov.w @r0,r2 ; r2 ??
tst r2,r2
bt/s loc_8c1C07CA
mov r4,r10 ; r10 set to 0x02
bra loc_8c1C09B4
nop

loc_8c1C07CA:
mov.l @(loc_8c1C0814,pc),r9 ; r9 set to 0x8C353188
mov.l @r9,r2
jsr @r2
nop
bra loc_8c1C09B4
nop

loc_8c1C07D6:
mov.w @(loc_8c1C07E4,pc),r4 ; r4 set to 0xFF
extu.b r14,r9
cmp/eq r4,r9
bf/s loc_8c1C0818
mov 0x00,r2 ; r2 set to 0x00
bra loc_8c1C081A
mov 0x08,r9

loc_8c1C07E4:
#data 0x00FF
#data 0x0000

#align4
loc_8c1C07E8:
#data 0x8C34BB74

#align4
loc_8c1C07EC:
#data bank1b.loc_8c1b3F0C

loc_8c1C07F0:
#data 0x8C34BB72

#align4
loc_8c1C07F4:
#data 0x8C353178

#align4
loc_8c1C07F8:
#data 0x8C34BB90

#align4
loc_8c1C07FC:
#data 0x8C34B2CC

#align4
loc_8c1C0800:
#data 0x8C34BB88

#align4
loc_8c1C0804:
#data 0x8C34BB84

#align4
loc_8c1C0808:
#data 0x8C34BB87

#align4
loc_8c1C080C:
#data 0x8C34B2D2

#align4
loc_8c1C0810:
#data 0x8C34BB7C

#align4
loc_8c1C0814:
#data 0x8C353188

loc_8c1C0818:
#data 0xE901

loc_8c1C081A:
#data 0xD371
#data 0x61502320
#data 0x2510319C
#data 0x6250D46F
#data 0x32126140
#data 0xD26E8B26
#data 0x21186120
#data 0xD06D8B0B
#data 0x410B6102
#data 0x600E0009
#data 0x89042008
#data 0xE201D368
#data 0xD4692320
#data 0x2420

loc_8c1C084E:
#data 0xD369
#data 0x604C6430
#data 0x8D048801
#data 0x60436403
#data 0x88020009
#data 0x8B04

loc_8c1C0862:
#data 0xD365
#data 0x0009430B
#data 0x0009A008

#align4
loc_8c1C086C:
#data 0x6321D263
#data 0x89032338
#data 0x6312D162
#data 0x0009430B

#align4
loc_8c1C087C:
#data 0x600B609C
#data 0xA0994E0D
#data 0x3D98


loc_8c1C0886:
extu.b r13,r3
extu.b r11,r2
cmp/gt r3,r2
mov.l r2,@(0x04,r15)
mov.l r3,@r15
mov.b @r6,r7
bf/s loc_8c1C08AA
extu.b r7,r7
extu.b r13,r0
mov r14,r1
sub r3,r7
neg r0,r0
shld r7, r1
shld r0, r12
sub r13,r11
or r1,r12
bra loc_8c1C09B8
mov 0x00,r13

loc_8c1C08AA:
#data 0x66BC
#data 0x3728616B
#data 0x60E34C1D
#data 0x666B0009
#data 0x4E6DD14E
#data 0x6610407D
#data 0x606C2C0B
#data 0x6CCC8801
#data 0x8D043DB8
#data 0x60636603
#data 0x88020009
#data 0x8B04

loc_8c1C08D6:
#data 0xDA4B
#data 0x64C34A0B
#data 0x0009A055

#align4
loc_8c1C08E0:
#data 0x8B062CC8
#data 0x6320D23E
#data 0x22307301
#data 0xA0036252
#data 0x2422

loc_8c1C08F2:
#data 0xD33B
#data 0x2310E100

#align4
loc_8c1C08F8:
#data 0xD444D543
#data 0x22286250
#data 0x63428907
#data 0x24327301
#data 0xD23C23C4
#data 0x73016321
#data 0x2231

loc_8c1C0912:
#data 0xD238
#data 0x600C6020
#data 0x892C8816
#data 0x892A8817
#data 0x89288818
#data 0x89268819
#data 0x6270D739
#data 0x89222228
#data 0x6130D338
#data 0x3C10611C
#data 0xD2378904
#data 0x611C6120
#data 0x8B183C10

#align4
loc_8c1C0944:
#data 0xD635DA33
#data 0x633C63A0
#data 0x8B023C30
#data 0xA002E300
#data 0x2630

loc_8c1C0956:
#data 0xE101
#data 0x2610

loc_8c1C095A:
#data 0x6070
#data 0x8804600C
#data 0x62508909
#data 0x89062228
#data 0x73FF6342
#data 0xD2232432
#data 0x71FF6121
#data 0x2211

loc_8c1C0976:
#data 0xD321
#data 0x6231D429
#data 0x32126141
#data 0xD21F8B03
#data 0x410B6122
#data 0x0009

loc_8c1C098A:
#data 0xA015
#data 0x6A93

loc_8c1C098E:
#data 0x2778
#data 0x62428910
#data 0xD1196352
#data 0x62113328
#data 0x2338633D
#data 0x89032228
#data 0x6202D016
#data 0x0009420B

#align4
loc_8c1C09AC:
#data 0xE300D10C
#data 0x21306A93


loc_8c1C09B4:
add 0xFF,r13
shlr r14

loc_8c1C09B8:
extu.b r13,r3
tst r3,r3
bt loc_8c1C09C2
bra loc_8c1C0770
nop

loc_8c1C09C2:
mov.b r10,@r8
mov r11,r0
nop
add 0x08,r15
mov.b r0,@(0x01,r8)
lds.l @r15+,pr
mov.l r12,@(0x04,r8)
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x8C34BB87
#data 0x8C353185
#data 0x8C34BB85
#data 0x8C353198
#data 0x8C34BB86
#data 0x8C353181

#align4
loc_8c1C09F8:
#data bank1a.loc_8c1a131C
#data 0x8C34BB7C
#data 0x8C35318C

#align4
loc_8c1C0A04:
#data bank1a.loc_8c1a1324
#data 0x8C34BB91
#data 0x8C34BB80
#data 0x8C353182
#data 0x8C34BB45
#data 0x8C34BB44
#data 0x8C34BB70
#data 0x8C353170


loc_8c1C0A24:
mov.l @(loc_8c1C0B0C,pc),r5 ; r5 set to 0x8C353172
mov 0x01,r4 ; r4 set to 0x01
mov.b r4,@r5 ; r5 ??
mov.l @(loc_8c1C0B10,pc),r3 ; r3 set to 0x8C34BB67
mov.b r4,@r3 ; r3 ??
mov.l @(loc_8c1C0B14,pc),r2 ; r2 set to 0x8C34BB70
mov.b r4,@r2 ; r2 ??
mov 0x00,r4 ; r4 set to 0x00
mov.l @(loc_8c1C0B18,pc),r1 ; r1 set to 0x8C34BB71
mov.b r4,@r1 ; r1 ??
mov.w @(loc_8c1C0B04,pc),r6 ; r6 set to 0xFF
mov.l @(loc_8c1C0B1C,pc),r3 ; r3 set to 0x8C34BB72
mov.b r6,@r3 ; r3 ??
mov.l @(loc_8c1C0B20,pc),r0 ; r0 set to 0x8C34BB66
mov.l @(loc_8c1C0B24,pc),r1 ; r1 set to 0x8C353184
mov.b @r0,r2
mov.b r2,@r1 ; r1 ??? bc r2 is ???
mov.l @(loc_8c1C0B28,pc),r3 ; r3 set to 0x8C34BB68
mov.w r4,@r3 ; r3 ??
mov.l @(loc_8c1C0B2C,pc),r2 ; r2 set to 0x8C34BB8C
mov.w r4,@r2 ; r2 ??
mov.l @(loc_8c1C0B30,pc),r1 ; r1 set to 0x8C353183
mov.b r4,@r1 ; r1 ??
mov r6,r0 ; r0 set to 0xFF
nop
mov.b r0,@(0x02,r5)
mov r4,r0 ; r0 set to 0x00
nop
rts
mov.b r0,@(0x01,r5)
;-------------------------------------------------------------------------------

loc_8c1C0A60:
mov.l @(loc_8c1C0B34,pc),r2 ; r2 set to 0x8C353178
mov 0x08,r3 ; r3 set to 0x08
mov 0x00,r4 ; r4 set to 0x00
mov.b r3,@r2 ; r2 ??
mov 0x01,r2 ; r2 set to 0x01
mov.l @(loc_8c1C0B38,pc),r3 ; r3 set to 0x8C34BB7C
mov.w r4,@r3 ; r3 ??
mov.l @(loc_8c1C0B3C,pc),r1 ; r1 set to 0x8C34BB86
mov.b r4,@r1 ; r1 ??
mov.l @(loc_8c1C0B40,pc),r0 ; r0 set to 0x8C34BB85
mov.b r2,@r0 ; r0 ??
mov.l @(loc_8c1C0B44,pc),r3 ; r3 set to 0x8C34BB87
rts
mov.b r4,@r3
;-------------------------------------------------------------------------------

loc_8c1C0A7C:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov r5,r0
nop
mov 0x01,r2 ; r2 set to 0x01
mov.b r0,@(0x04,r15)
mov.b r6,@r15
mov.l @(loc_8c1C0B48,pc),r14 ; r14 set to 0x8C353181
mov.b r4,@r14 ; r14 ??? bc r4 is ???
mov.l @(loc_8c1C0B4C,pc),r3 ; r3 set to 0x8C353182
mov.b r7,@r3 ; r3 ??? bc r7 is ???
mov.l @(loc_8c1C0B20,pc),r1 ; r1 set to 0x8C34BB66
mov.b r2,@r1 ; r1 ??
bsr loc_8c1C0A24
nop
bsr loc_8c1C0A60
nop
mov.b @r15,r5
mov.l @(loc_8c1C0B50,pc),r4 ; r4 set to 0x8C34BB90
extu.b r5,r5
mov r5,r0
nop
cmp/eq 0x08,r0
bf/s loc_8c1C0AB6
mov 0x08,r7 ; r7 set to 0x08
mov 0x07,r2 ; r2 set to 0x07
bra loc_8c1C0AB8
mov.b r2,@r4

loc_8c1C0AB6:
#data 0x2470

#align4
loc_8c1C0AB8:
#data 0xD62664E0
#data 0x8802604C
#data 0x64038D04
#data 0x00096043
#data 0x8B028818

#align4
loc_8c1C0ACC:
#data 0xA001E204
#data 0x2620

loc_8c1C0AD2:
#data 0x2670

#align4
loc_8c1C0AD4:
#data 0xE30284F4
#data 0x6603D41F
#data 0x3637666C
#data 0xA0048901
#data 0xE10B

loc_8c1C0AE6:
#data 0xE01B
#data 0x89023607
#data 0xE137

loc_8c1C0AEE:
#data 0xA002
#data 0x2410

loc_8c1C0AF2:
#data 0x9208
#data 0x2420

loc_8c1C0AF6:
#data 0x9307
#data 0x3530D418
#data 0x91048B30
#data 0x0009A068

loc_8c1C0B04:
#data 0x00FF
#data 0x00F2
#data 0x011800FE

#align4
loc_8c1C0B0C:
#data 0x8C353172

#align4
loc_8c1C0B10:
#data 0x8C34BB67

#align4
loc_8c1C0B14:
#data 0x8C34BB70

#align4
loc_8c1C0B18:
#data 0x8C34BB71

#align4
loc_8c1C0B1C:
#data 0x8C34BB72

#align4
loc_8c1C0B20:
#data 0x8C34BB66

#align4
loc_8c1C0B24:
#data 0x8C353184

#align4
loc_8c1C0B28:
#data 0x8C34BB68

#align4
loc_8c1C0B2C:
#data 0x8C34BB8C

#align4
loc_8c1C0B30:
#data 0x8C353183

#align4
loc_8c1C0B34:
#data 0x8C353178

#align4
loc_8c1C0B38:
#data 0x8C34BB7C

#align4
loc_8c1C0B3C:
#data 0x8C34BB86

#align4
loc_8c1C0B40:
#data 0x8C34BB85

#align4
loc_8c1C0B44:
#data 0x8C34BB87

#align4
loc_8c1C0B48:
#data 0x8C353181

#align4
loc_8c1C0B4C:
#data 0x8C353182

#align4
loc_8c1C0B50:
#data 0x8C34BB90
#data 0x8C34BB8F
#data 0x8C353185
#data 0x8C353170

#align4
loc_8c1C0B60:
#data 0x61739711
#data 0x3510717F
#data 0xD2078B38
#data 0x2200E009
#data 0x00096063
#data 0x3012E10D
#data 0x4000892E
#data 0xC7036103
#data 0x0023001D
#data 0x00800009
#data 0x8C34BB66
#data 0x00200020
#data 0x00260020
#data 0x002E002A
#data 0x00360032
#data 0x003E003A
#data 0x00460042
#data 0xE306004C
#data 0x2431A019
#data 0xE00CA00F
#data 0xE118A010
#data 0xE024A00B
#data 0xE130A00C
#data 0xE03CA007
#data 0xE148A008
#data 0xE054A003
#data 0xE160A004
#data 0xA006E06C
#data 0xE1782401

#align4
loc_8c1C0BD4:
#data 0x2411A003

#align4
loc_8c1C0BD8:
#data 0x2471A001

loc_8c1C0BDC:
#data 0x2471

loc_8c1C0BDE:
#data 0x60E0
#data 0x8816600C
#data 0x88178912
#data 0x88188910
#data 0xD21D890E
#data 0x2232D31B
#data 0xD01DD11C
#data 0xD31D2012
#data 0x2232D21D
#data 0xD01ED11D
#data 0xD31E2012
#data 0x2232D21E

#align4
loc_8c1C0C0C:
#data 0x4F267F08
#data 0x6EF6000B
;-------------------------------------------------------------------------------

loc_8c1C0C14:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov 0x00,r12 ; r12 set to 0x00
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
sts.l pr,@-r15
mov.w @(loc_8c1C0C5C,pc),r14 ; r14 set to 0x1F4
add 0xFC,r15
bra loc_8c1C0CE2
mov r12,r11

#align4
loc_8c1C0C2C:
#data 0x222862ED
#data 0x7EFF8F06
#data 0xDD149413
#data 0x00094D0B
#data 0x0009A054

#align4
loc_8c1C0C40:
#data 0x60D0DD12
#data 0x8802600C
#data 0xEA018D22
#data 0x8B478808
#data 0x4A0BDA03
#data 0xE4020009
#data 0x2D40A043

loc_8c1C0C5C:
#data 0x01F4
#data 0x17D4

#align4
loc_8c1C0C60:
#data bank1b.loc_8c1b6A4C
#data 0x8C353188

#align4
loc_8c1C0C68:
#data bank1b.loc_8c1b6B2C
#data 0x8C35318C

#align4
loc_8c1C0C70:
#data bank1b.loc_8c1b68A2
#data 0x8C353190

#align4
loc_8c1C0C78:
#data bank1b.loc_8c1b69D4
#data 0x8C353194

#align4
loc_8c1C0C80:
#data bank1b.loc_8c1b6E7C
#data 0x8C353198

#align4
loc_8c1C0C88:
#data bank1a.loc_8c1a003E
#data 0x8C353178

#align4
loc_8c1C0C90:
#data 0x490BD939
#data 0x600E64F3
#data 0x891F2008
#data 0x24C1D437
#data 0x6040D437
#data 0x8801600C
#data 0xD4368B15
#data 0x72016242
#data 0x63F02422
#data 0xDA342234
#data 0x730163A1
#data 0xD9332A31
#data 0x490BD433
#data 0xD433E500
#data 0x634162A1
#data 0x8B083230
#data 0x4A0BDA31
#data 0x0009

loc_8c1C0CD6:
#data 0xE408
#data 0x2D40A003

#align4
loc_8c1C0CDC:
#data 0x6BA3A001

loc_8c1C0CE0:
#data 0x6BA3

loc_8c1C0CE2:
#data 0x63BE
#data 0x89A12338

#align4
loc_8c1C0CE8:
#data 0x4F267F04
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1C0CFA:
#data 0x4F22
#data 0x7FFCD227
#data 0x0009420B
#data 0x600E2F00
#data 0x89022008
#data 0x420BD224
#data 0xE400

loc_8c1C0D12:
#data 0xD21D
#data 0x23386321
#data 0xD31D890D
#data 0x6432D121
#data 0x740A410B
#data 0x2008600E
#data 0xD21B8905
#data 0x0009420B
#data 0xE308D21D
#data 0x2230

loc_8c1C0D36:
#data 0x61F0
#data 0x89042118
#data 0x7F04D318
#data 0x432BD41A
#data 0x4F26

loc_8c1C0D46:
#data 0x7F04
#data 0x000B4F26
#data 0x4F220009
#data 0x2F417FFC
#data 0x6030D316
#data 0x8803600C
#data 0xD30B8907
#data 0x65F1D414
#data 0x655D430B
#data 0xE200D313
#data 0x7F042320
#data 0x000B4F26
#data 0x00000009

#align4
loc_8c1C0D78:
#data bank19.loc_8c19EF30
#data 0x8C34B2D2
#data 0x8C34BB91
#data 0x8C34BB80
#data 0x8C34BB7C

#align4
loc_8c1C0D8C:
#data bank1b.loc_8c1b3EEC
#data 0x8C35319C
#data 0x8C353170

#align4
loc_8c1C0D98:
#data bank1b.loc_8c1b6B2C

loc_8c1C0D9C:
#data bank1a.loc_8c1a00C4

loc_8c1C0DA0:
#data bank1a.loc_8c1a00CA

loc_8c1C0DA4:
#data bank1b.loc_8c1b3F0C
#data 0x8C353178

#align4
loc_8c1C0DAC:
#data bank19.loc_8c19F0BA
#data 0x8C353172
#data 0x8C34BB74
#data 0x8C34BB72

#align4
loc_8c1C0DBC:
#data 0x2FC62FE6
#data 0x2FA62FB6
#data 0xD2472F96
#data 0x23386320
#data 0xDC478B29
#data 0xDB45E500
#data 0x99836453
#data 0xEA07

loc_8c1C0DDA:
#data 0x604D
#data 0x6E4D6743
#data 0x40006653
#data 0x0C554E00
#data 0x3ECC

loc_8c1C0DEA:
#data 0x60E0
#data 0xC90163E1
#data 0x607C6103
#data 0xC901633D
#data 0x4301611C
#data 0x2E313010
#data 0x677C8D03
#data 0x22BA62E1
#data 0x2E21

loc_8c1C0E0A:
#data 0x7601
#data 0x4701636D
#data 0x8BEA33A7
#data 0x634D7401
#data 0x8BDE3397
#data 0xE301D231
#data 0x2230

loc_8c1C0E22:
#data 0x69F6
#data 0x6BF66AF6
#data 0x000B6CF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1C0E2E:
#data 0x2FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0xD02D2F86
#data 0x21186100
#data 0xE5008B28
#data 0xDA2BDC2C
#data 0x98496453
#data 0xEB01E907

#align4
loc_8c1C0E50:
#data 0x6743604D
#data 0x66536E4D
#data 0x40084E08
#data 0x0C563ECC

#align4
loc_8c1C0E60:
#data 0xE10160E2
#data 0x6303627C
#data 0x22B92109
#data 0x4301611C
#data 0x2E323210
#data 0x677C8D03
#data 0x22AA62E2
#data 0x2E22

loc_8c1C0E7E:
#data 0x7601
#data 0x4701636D
#data 0x8BEB3397
#data 0x634D7401
#data 0x8BDF3387
#data 0x23B0D317

#align4
loc_8c1C0E94:
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x000B6CF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1C0EA2:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov r4,r12
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
mov.l @(loc_8c1C0EFC,pc),r8 ; r8 set to 0x8C3537A8
sts.l pr,@-r15
mov.b @(0x01,r8),r0
mov.b @r8,r11
mov r0,r9
mov.b @(0x02,r8),r0
mov r0,r14
bra loc_8c1C103A
mov.l @(0x0C,r8),r10

loc_8c1C0EC4:
extu.b r14,r2
shlr r13
tst r2,r2
bf loc_8c1C0ED0
bra loc_8c1C0F0A
mov 0x05,r14

loc_8c1C0ED0:
mov r10,r3
mov 0x01,r4 ; r4 set to 0x01
tst r4,r3
bt loc_8c1C0F04
mov.l @(loc_8c1C0F00,pc),r4 ; r4 set to 0x80000000
add 0xFF,r14
bra loc_8c1C0F06
or r4,r13
#data 0x000000FF
#data 0x8C3537C8
#data 0x00008408
#data 0x8C3531A2
#data 0x8C3537C9
#data 0xEDB88320
#data 0x8C3533A4

#align4
loc_8c1C0EFC:
#data 0x8C3537A8

#align4
loc_8c1C0F00:
#data 0x80000000


loc_8c1C0F04:
mov 0x05,r14 ; r14 set to 0x05

loc_8c1C0F06:
add 0xFF,r9
shlr r10

loc_8c1C0F0A:
extu.b r9,r2
tst r2,r2
bt loc_8c1C0F14
bra loc_8c1C103A
nop

loc_8c1C0F14:
extu.b r11,r0
cmp/eq 0x02,r0
bt/s loc_8c1C0F30
mov 0x00,r4 ; r4 set to 0x00
cmp/eq 0x04,r0
bf loc_8c1C0F24
bra loc_8c1C1022
nop

loc_8c1C0F24:
cmp/eq 0x05,r0
bt loc_8c1C0FBC
cmp/eq 0x06,r0
bt loc_8c1C0FAE
bra loc_8c1C103A
nop

loc_8c1C0F30:
mov.l @(loc_8c1C10BC,pc),r3 ; r3 set to 0x8C34BB68
mov.l @(loc_8c1C10B8,pc),r5 ; r5 set to 0x8C34BC8D
mov.w @r3,r2
tst r2,r2
bt loc_8c1C0F8E
mov.l @(loc_8c1C10C0,pc),r4 ; r4 set to 0x8C34BB6C
mov.l @r4,r10
add 0x01,r10
mov.l r10,@r4 ; r4 ??? bc r10 is ???
add 0xFF,r10
mov.w @r3,r2
mov.b @r10,r10
add 0xFF,r2
extu.b r10,r10
mov.w r2,@r3 ; r3 ??? bc r2 is ???
mov.b @r5,r0
extu.b r0,r0
cmp/eq 0x02,r0
bf/s loc_8c1C0F74
mov 0x08,r9 ; r9 set to 0x08
mov.w @(0x04,r8),r0
mov r0,r4
extu.w r0,r0
shlr8 r0
mov.w r0,@(0x04,r8)
xor r10,r4
extu.b r4,r0
mov.l @(loc_8c1C10C4,pc),r5 ; r5 set to 0x8C3531A2
shll r0
mov.w @(r0,r5),r2
mov.w @(0x04,r8),r0
xor r2,r0
bra loc_8c1C103A
mov.w r0,@(0x04,r8)

loc_8c1C0F74:
mov.l @(0x08,r8),r4
mov.l @(0x08,r8),r2
xor r10,r4
extu.b r4,r0
shlr8 r2
shll2 r0
mov.l r2,@(0x08,r8)
mov.l @(loc_8c1C10C8,pc),r5 ; r5 set to 0x8C3533A4
mov.l @(0x08,r8),r1
mov.l @(r0,r5),r2
xor r2,r1
bra loc_8c1C103A
mov.l r1,@(0x08,r8)

loc_8c1C0F8E:
mov.b @r5,r0
extu.b r0,r0
cmp/eq 0x02,r0
bf loc_8c1C0FA0
mov.w @(0x04,r8),r0
extu.w r0,r0
not r0,r10
bra loc_8c1C0FA6
mov 0x10,r4

loc_8c1C0FA0:
mov.l @(0x08,r8),r10
mov 0x20,r4 ; r4 set to 0x20
not r10,r10

loc_8c1C0FA6:
mov r4,r9 ; r9 set to 0x20
mov 0x06,r4 ; r4 set to 0x06, r4 set to 0x06
bra loc_8c1C103A
mov r4,r11

loc_8c1C0FAE:
mov.l @(loc_8c1C10CC,pc),r2 ; r2 set to 0x8C1B69D4
jsr @r2
nop
mov 0x04,r9 ; r9 set to 0x04
mov 0x7E,r10 ; r10 set to 0x7E
bra loc_8c1C103A
mov 0x05,r11

loc_8c1C0FBC:
extu.b r14,r0
cmp/eq 0x05,r0
bt loc_8c1C0FC8
mov 0x04,r9 ; r9 set to 0x04
bra loc_8c1C103A
mov 0x05,r14

loc_8c1C0FC8:
mov.l @(loc_8c1C10BC,pc),r3 ; r3 set to 0x8C34BB68
bra loc_8c1C0FE2
mov.w r4,@r3

loc_8c1C0FCE:
#data 0xDA40
#data 0x00094A0B
#data 0x6321D239
#data 0x8B022338
#data 0x430BD33B
#data 0x0009

loc_8c1C0FE2:
#data 0xDA3C
#data 0x00094A0B
#data 0x2008600D
#data 0xD2338903
#data 0x23386321
#data 0x89EB

loc_8c1C0FF6:
#data 0xD231
#data 0x23386321
#data 0xD036890A
#data 0xE402E3FF
#data 0x18328182
#data 0x6B43AF92

#align4
loc_8c1C100C:
#data 0x4D19D433
#data 0x2D4B7CF8

#align4
loc_8c1C1014:
#data 0x63CCE208
#data 0x89F73327
#data 0xA00CEA7E
#data 0xE904


loc_8c1C1022:
mov r4,r12
mov.l @(loc_8c1C10E0,pc),r4 ; r4 set to 0x8C34BB71
mov 0xFF,r13 ; r13 set to 0xFFFFFFFF
mov.b @r4,r3
mov 0x7E,r10 ; r10 set to 0x7E
mov 0x04,r9 ; r9 set to 0x04
tst r3,r3
bt/s loc_8c1C103A
mov 0x05,r11 ; r11 set to 0x05
mov.l @(loc_8c1C10CC,pc),r1 ; r1 set to 0x8C1B69D4
jsr @r1
nop

loc_8c1C103A:
extu.b r12,r1 ; r1 ??? bc r12 is ???
tst r1,r1
bt/s loc_8c1C1046
add 0xFF,r12
bra loc_8c1C0EC4
nop

loc_8c1C1046:
mov.b r11,@r8
mov r9,r0
nop
mov.b r0,@(0x01,r8)
mov r14,r0
nop
mov.b r0,@(0x02,r8)
mov.l r10,@(0x0C,r8)
mov r13,r0
nop
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

loc_8c1C106C:
mov.l r14,@-r15
mov r5,r14
mov.l r13,@-r15
mov r4,r13
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
mov.l @(loc_8c1C10E4,pc),r9 ; r9 set to 0x8C3537B8
sts.l pr,@-r15
mov.b @(0x01,r9),r0
mov.b @r9,r11
mov r0,r4
mov.b @(0x02,r9),r0
mov.l @(0x0C,r9),r10
mov r0,r12
extu.b r11,r0
cmp/eq 0x05,r0
bt/s loc_8c1C109A
mov 0x08,r8 ; r8 set to 0x08
bra loc_8c1C131E
nop

loc_8c1C109A:
bra loc_8c1C10A2
nop

loc_8c1C109E:
add 0xF8,r14
shlr8 r13

loc_8c1C10A2:
extu.b r14,r3
cmp/ge r8,r3
bt loc_8c1C10AC
bra loc_8c1C131E
nop

loc_8c1C10AC:
extu.b r13,r0
cmp/eq 0x7E,r0
bt loc_8c1C109E
bra loc_8c1C131E
nop
#data 0x0000

#align4
loc_8c1C10B8:
#data 0x8C34BC8D

#align4
loc_8c1C10BC:
#data 0x8C34BB68

#align4
loc_8c1C10C0:
#data 0x8C34BB6C

#align4
loc_8c1C10C4:
#data 0x8C3531A2

#align4
loc_8c1C10C8:
#data 0x8C3533A4

#align4
loc_8c1C10CC:
#data bank1b.loc_8c1b69D4

loc_8c1C10D0:
#data bank1b.loc_8c1b68A2

loc_8c1C10D4:
#data bank1b.loc_8c1b6EA4
#data 0x0000FFFF
#data 0x7E000000

#align4
loc_8c1C10E0:
#data 0x8C34BB71

#align4
loc_8c1C10E4:
#data 0x8C3537B8


loc_8c1C10E8:
mov r13,r3
mov 0x01,r5 ; r5 set to 0x01
tst r5,r3
bt loc_8c1C110C
mov r10,r3
add 0x01,r12
shlr r3
mov.w @(loc_8c1C11DE,pc),r5 ; r5 set to 0x80
extu.b r12,r0
mov r3,r10
cmp/eq 0x07,r0
or r5,r10
bf/s loc_8c1C112E
add 0xFF,r4
mov 0x04,r5 ; r5 set to 0x04
mov 0x00,r4 ; r4 set to 0x00
bra loc_8c1C112E
mov r5,r11

loc_8c1C110C:
extu.b r12,r6
mov 0x05,r5 ; r5 set to 0x05
cmp/ge r5,r6
bt loc_8c1C111A
shlr r10
bra loc_8c1C112C
add 0xFF,r4

loc_8c1C111A:
#data 0x6063
#data 0x88060009
#data 0xD4308B04
#data 0x6B53E200
#data 0x64232421


loc_8c1C112C:
mov 0x00,r12 ; r12 set to 0x00

loc_8c1C112E:
extu.b r4,r3
shlr r13
tst r3,r3
bt loc_8c1C113A
bra loc_8c1C131E
nop

loc_8c1C113A:
extu.b r11,r0
cmp/eq 0x02,r0
bt loc_8c1C1160
cmp/eq 0x04,r0
bf loc_8c1C1148
bra loc_8c1C12E0
nop

loc_8c1C1148:
cmp/eq 0x05,r0
bt loc_8c1C1208
cmp/eq 0x07,r0
bf loc_8c1C1154
bra loc_8c1C1290
nop

loc_8c1C1154:
cmp/eq 0x08,r0
bf loc_8c1C115C
bra loc_8c1C131A
nop

loc_8c1C115C:
bra loc_8c1C131A
nop

loc_8c1C1160:
mov.l @(loc_8c1C11E8,pc),r3 ; r3 set to 0x8C34BC8D
mov.b @r3,r0
extu.b r0,r0
cmp/eq 0x02,r0
bf loc_8c1C1186
mov.w @(0x04,r9),r0
mov r0,r4
extu.w r0,r0
shlr8 r0
mov.w r0,@(0x04,r9)
xor r10,r4
extu.b r4,r0
mov.l @(loc_8c1C11EC,pc),r5 ; r5 set to 0x8C3531A2
shll r0
mov.w @(r0,r5),r2
mov.w @(0x04,r9),r0
xor r2,r0
bra loc_8c1C119E
mov.w r0,@(0x04,r9)

loc_8c1C1186:
mov.l @(0x08,r9),r4
mov.l @(0x08,r9),r2
xor r10,r4
extu.b r4,r0
shlr8 r2
shll2 r0
mov.l r2,@(0x08,r9)
mov.l @(loc_8c1C11F0,pc),r5 ; r5 set to 0x8C3533A4
mov.l @(0x08,r9),r1
mov.l @(r0,r5),r2
xor r2,r1
mov.l r1,@(0x08,r9)

loc_8c1C119E:
mov.l @(loc_8c1C11F4,pc),r4 ; r4 set to 0x8C34BB80, r4 set to 0x8C34BB80
mov.l @r4,r3
add 0x01,r3
mov.l r3,@r4 ; r4 ??? bc r3 is ???, r4 ??? bc r3 is ???
mov.b r10,@-r3
mov.l @(loc_8c1C11F8,pc),r2 ; r2 set to 0x8C34BB7C, r2 set to 0x8C34BB7C
mov.w @(loc_8c1C11E0,pc),r4 ; r4 set to 0x114, r4 set to 0x114
mov.w @r2,r3
add 0x01,r3
mov.w r3,@r2 ; r2 ??? bc r3 is ???, r2 ??? bc r3 is ???
extu.w r3,r3
cmp/gt r4,r3
bt loc_8c1C11BC
bra loc_8c1C131A
nop

loc_8c1C11BC:
mov.l @(loc_8c1C11FC,pc),r2 ; r2 set to 0x8C34BC7A
mov.w @(loc_8c1C11E2,pc),r1 ; r1 set to 0x124
mov.b @r2,r3
mov 0x08,r2 ; r2 set to 0x08
mov.l @(loc_8c1C1200,pc),r0 ; r0 set to 0x8C34BC8E
extu.b r3,r3
muls.w r1,r3
sts macl,r3
exts.w r3,r3
mov.b @(r0,r3),r1 ; r1 ??? bc r3 is ???
or r2,r1
mov.b r1,@(r0,r3)
mov.l @(loc_8c1C1204,pc),r3 ; r3 set to 0x8C1B6B2C
jsr @r3
nop
bra loc_8c1C131A
mov r8,r11

loc_8c1C11DE:
#data 0x0080

loc_8c1C11E0:
#data 0x0114

loc_8c1C11E2:
#data 0x0124
#data 0x8C34B2D2

#align4
loc_8c1C11E8:
#data 0x8C34BC8D

#align4
loc_8c1C11EC:
#data 0x8C3531A2

#align4
loc_8c1C11F0:
#data 0x8C3533A4

#align4
loc_8c1C11F4:
#data 0x8C34BB80

#align4
loc_8c1C11F8:
#data 0x8C34BB7C

#align4
loc_8c1C11FC:
#data 0x8C34BC7A

#align4
loc_8c1C1200:
#data 0x8C34BC8E

#align4
loc_8c1C1204:
#data bank1b.loc_8c1b6B2C

loc_8c1C1208:
#data 0x6431D329
#data 0x4415644D
#data 0xEB078F36
#data 0x6510D127
#data 0x3457655C
#data 0x60538B12
#data 0x88020009
#data 0xD0248B05
#data 0x6201D324
#data 0x3230622D
#data 0x8B08

loc_8c1C1232:
#data 0x6053
#data 0x88040009
#data 0xD1228B15
#data 0x6312D220
#data 0x89103320

#align4
loc_8c1C1244:
#data 0xE101D020
#data 0x63009230
#data 0x633CD01F
#data 0x031A232F
#data 0x023C633F
#data 0x0324221B
#data 0x430BD31C
#data 0xA00D0009
#data 0x6B83

loc_8c1C1266:
#data 0xD213
#data 0x6320D111
#data 0x633C6011
#data 0xD3173038
#data 0x2101430B
#data 0x0009A002

#align4
loc_8c1C127C:
#data 0x4D197EF8

#align4
loc_8c1C1280:
#data 0x338363EC
#data 0x60DC8B49
#data 0x89F7887E
#data 0x0009A045


loc_8c1C1290:
mov.l @(loc_8c1C12D4,pc),r3 ; r3 set to 0x8C1B6A4C
jsr @r3
nop
mov.l @(loc_8c1C12D8,pc),r3 ; r3 set to 0x8C34BB91
mov.b @r3,r2
tst r2,r2
bt loc_8c1C131A
mov 0xFF,r4 ; r4 set to 0xFFFFFFFF
mov.l @(loc_8c1C12DC,pc),r0 ; r0 set to 0xFFFF
mov.w r0,@(0x04,r9)
mov.l r4,@(0x08,r9)
mov 0x02,r4 ; r4 set to 0x02
bra loc_8c1C1160
mov r4,r11
#data 0x00000124
#data 0x8C34BB7C
#data 0x8C34BC8D
#data 0x8C3537BC
#data 0x0000F0B8
#data 0xDEBB20E3
#data 0x8C3537C0
#data 0x8C34BC7A
#data 0x8C34BC8E

#align4
loc_8c1C12D0:
#data bank1b.loc_8c1b6B2C

loc_8c1C12D4:
#data bank1b.loc_8c1b6A4C

loc_8c1C12D8:
#data 0x8C34BB91

#align4
loc_8c1C12DC:
#data 0x0000FFFF

#align4
loc_8c1C12E0:
#data 0x600C6090
#data 0x89168808
#data 0x420BD22E
#data 0xD22E0009
#data 0x23386320
#data 0xD12D890E
#data 0x9052E202
#data 0x633C6310
#data 0xD02B230F
#data 0x633F031A
#data 0x212B013C
#data 0xD3290314
#data 0x0009430B

loc_8c1C1314:
#data 0x2980

loc_8c1C1316:
#data 0xEC00
#data 0x6B83


loc_8c1C131A:
mov r8,r4
mov 0x00,r10 ; r10 set to 0x00

loc_8c1C131E:
extu.b r14,r3
tst r3,r3
bt/s loc_8c1C132A
add 0xFF,r14
bra loc_8c1C10E8
nop

loc_8c1C132A:
mov.b r11,@r9
mov r4,r0
nop
mov.b r0,@(0x01,r9)
mov r12,r0
nop
lds.l @r15+,pr
mov.b r0,@(0x02,r9)
mov.l r10,@(0x0C,r9)
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1C134C:
mov.l @(loc_8c1C13B8,pc),r3 ; r3 set to 0x8C34BB7C
mov 0x00,r5 ; r5 set to 0x00
mov 0x08,r6 ; r6 set to 0x08
mov.w r5,@r3 ; r3 ??
mov.l @(loc_8c1C13BC,pc),r4 ; r4 set to 0x8C3537B8
mov.l r5,@(0x0C,r4)  ; r4 ??
mov r6,r0 ; r0 set to 0x08
nop
mov.b r0,@(0x01,r4)
mov r5,r0 ; r0 set to 0x00
nop
mov.b r0,@(0x02,r4)
rts
mov.b r6,@r4
;-------------------------------------------------------------------------------

loc_8c1C1368:
mov.l @(loc_8c1C13C0,pc),r4 ; r4 set to 0x8C3537A8
mov 0x04,r0 ; r0 set to 0x04
mov 0x05,r5 ; r5 set to 0x05
mov.b r5,@r4 ; r4 ??
mov.b r0,@(0x01,r4)
mov r5,r0 ; r0 set to 0x05
nop
mov 0x7E,r3 ; r3 set to 0x7E
mov.b r0,@(0x02,r4)
mov 0x00,r2 ; r2 set to 0x00
mov.l r3,@(0x0C,r4)
mov.l @(loc_8c1C13C4,pc),r1 ; r1 set to 0x8C34BB68
rts
mov.w r2,@r1
;-------------------------------------------------------------------------------

loc_8c1C1384:
sts.l pr,@-r15
mov.l @(loc_8c1C13C8,pc),r3 ; r3 set to 0x8C1B6118
jsr @r3
nop
mov.l @(loc_8c1C13CC,pc),r3 ; r3 set to 0x8C1B6048
jsr @r3
nop
bsr loc_8c1C134C
nop
bsr loc_8c1C1368
nop
bsr loc_8c1C0E2E
nop
bra loc_8c1C0DBC
lds.l @r15+,pr
#data 0x0124

#align4
loc_8c1C13A4:
#data bank1b.loc_8c1b6A4C
#data 0x8C34BB91
#data 0x8C34BC7A
#data 0x8C34BC8E

#align4
loc_8c1C13B4:
#data bank1b.loc_8c1b6B2C

loc_8c1C13B8:
#data 0x8C34BB7C

#align4
loc_8c1C13BC:
#data 0x8C3537B8

#align4
loc_8c1C13C0:
#data 0x8C3537A8

#align4
loc_8c1C13C4:
#data 0x8C34BB68

#align4
loc_8c1C13C8:
#data bank1b.loc_8c1b6118

loc_8c1C13CC:
#data bank1b.loc_8c1b6048


loc_8c1C13D0:
sts.l pr,@-r15
mov.l @(loc_8c1C14AC,pc),r3 ; r3 set to 0x8C1B6118
add 0xFC,r15
jsr @r3
mov.b r4,@r15
mov.l @(loc_8c1C14B0,pc),r2 ; r2 set to 0x8C1B6048
jsr @r2
nop
mov.l @(loc_8c1C14B4,pc),r3 ; r3 set to 0x8C34BB67
mov 0x08,r4 ; r4 set to 0x08
mov.b r4,@r3 ; r3 ??
mov.l @(loc_8c1C14B8,pc),r2 ; r2 set to 0x8C34BB78
mov.b r4,@r2 ; r2 ??
mov.b @r15,r0
mov.l @(loc_8c1C14BC,pc),r4 ; r4 set to 0x8C3531A0
extu.b r0,r0
cmp/eq 0x01,r0
bt loc_8c1C1428
cmp/eq 0x03,r0
bt loc_8c1C1424
cmp/eq 0x04,r0
bt loc_8c1C1420
cmp/eq 0x05,r0
bt loc_8c1C141C
cmp/eq 0x06,r0
bt loc_8c1C1418
cmp/eq 0x07,r0
bt loc_8c1C1412
cmp/eq 0x08,r0
bf loc_8c1C142E
mov.w @(loc_8c1C14A2,pc),r1 ; r1 set to 0xB4
bra loc_8c1C1430
nop

loc_8c1C1412:
mov.w @(loc_8c1C14A4,pc),r1 ; r1 set to 0x96
bra loc_8c1C1430
nop

loc_8c1C1418:
bra loc_8c1C1430
mov 0x78,r1

loc_8c1C141C:
bra loc_8c1C1430
mov 0x5A,r1

loc_8c1C1420:
bra loc_8c1C1430
mov 0x3C,r1

loc_8c1C1424:
bra loc_8c1C1430
mov 0x1E,r1

loc_8c1C1428:
mov 0x14,r1 ; r1 set to 0x14
bra loc_8c1C1430
nop

loc_8c1C142E:
#data 0x913A


loc_8c1C1430:
add 0x04,r15
mov.w r1,@r4
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c1C143A:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
mov 0x08,r8 ; r8 set to 0x08
sts.l pr,@-r15
mov.l @(loc_8c1C14B8,pc),r11 ; r11 set to 0x8C34BB78
mov.l @(loc_8c1C14C4,pc),r12 ; r12 set to 0x8C34BB80
mov.l @(loc_8c1C14C8,pc),r13 ; r13 set to 0x8C34BB7C
add 0xFC,r15
mov.l @(loc_8c1C14C0,pc),r10 ; r10 set to 0x8C3537CC
mov.w @(loc_8c1C14A8,pc),r14 ; r14 set to 0x1F4
bra loc_8c1C1506
mov 0x00,r9

#align4
loc_8c1C145C:
#data 0x222862ED
#data 0x7EFF8F06
#data 0x9420D219
#data 0x0009420B
#data 0x0009A051

#align4
loc_8c1C1470:
#data 0x600C60B0
#data 0x89338802
#data 0x8B448808
#data 0x430BD314
#data 0xD3140009
#data 0x600C6030
#data 0x8B258801
#data 0x710161C2
#data 0x62F02C12
#data 0xE2022124
#data 0x710161D1
#data 0xA0322D11
#data 0x2B20

loc_8c1C14A2:
#data 0x00B4

loc_8c1C14A4:
#data 0x0096
#data 0x0118

loc_8c1C14A8:
#data 0x01F4
#data 0x1414

#align4
loc_8c1C14AC:
#data bank1b.loc_8c1b6118

loc_8c1C14B0:
#data bank1b.loc_8c1b6048

loc_8c1C14B4:
#data 0x8C34BB67

#align4
loc_8c1C14B8:
#data 0x8C34BB78

#align4
loc_8c1C14BC:
#data 0x8C3531A0

#align4
loc_8c1C14C0:
#data 0x8C3537CC

#align4
loc_8c1C14C4:
#data 0x8C34BB80

#align4
loc_8c1C14C8:
#data 0x8C34BB7C

#align4
loc_8c1C14CC:
#data bank1a.loc_8c1a003E

loc_8c1C14D0:
#data bank1b.loc_8c1b6A4C
#data 0x8C34BB91

#align4
loc_8c1C14D8:
#data 0x700160A2
#data 0x2A02A013

#align4
loc_8c1C14E0:
#data 0x2291D230
#data 0x730163C2
#data 0x61F02C32
#data 0x63D12314
#data 0x2D317301
#data 0x61D1D02C
#data 0x31306301
#data 0xD12B8B03
#data 0x0009410B
#data 0x2B80

loc_8c1C1506:
#data 0xD22A
#data 0x64F3420B
#data 0x2008600E
#data 0x8BA4

loc_8c1C1512:
#data 0x7F04
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1C1526:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
mov.w @(loc_8c1C15A0,pc),r14 ; r14 set to 0x1F4
bra loc_8c1C161C
mov 0x00,r12

#align4
loc_8c1C153C:
#data 0x222862ED
#data 0x7EFF8F06
#data 0xDD1B942D
#data 0x00094D0B
#data 0x0009A069

#align4
loc_8c1C1550:
#data 0xD819DD1C
#data 0xDA1960D0
#data 0xDB19600C
#data 0x8D398802
#data 0x8808E901
#data 0xD2188B59
#data 0x0009420B
#data 0x2008600D
#data 0xD916890C
#data 0x0009490B
#data 0x222862B1
#data 0xE4028902
#data 0x2D40A04C

#align4
loc_8c1C1584:
#data 0x00094A0B
#data 0x0009A048

#align4
loc_8c1C158C:
#data 0x0009480B
#data 0x2008600E
#data 0xDD0E893F
#data 0x00094D0B
#data 0x0009A03B

loc_8c1C15A0:
#data 0x01F4
#data 0x1428
#data 0x8C34B2D2
#data 0x8C3531A0

#align4
loc_8c1C15AC:
#data bank1b.loc_8c1b6B2C

loc_8c1C15B0:
#data bank19.loc_8c19EF30

loc_8c1C15B4:
#data bank1a.loc_8c1a003E

loc_8c1C15B8:
#data bank19.loc_8c19EEC4

loc_8c1C15BC:
#data bank1b.loc_8c1b69D4
#data 0x8C34BB68
#data 0x8C34BB67

#align4
loc_8c1C15C8:
#data bank1b.loc_8c1b6EA4

loc_8c1C15CC:
#data bank1b.loc_8c1b68A2

loc_8c1C15D0:
#data bank19.loc_8c19EE9E

loc_8c1C15D4:
#data 0x420BD21A
#data 0x600E0009
#data 0x89122008
#data 0xD818D919
#data 0x74016492
#data 0x74FF2942
#data 0x6440480B
#data 0x73FF63B1
#data 0x62B12B31
#data 0x8B0F2228
#data 0x00094A0B
#data 0xA00BE408
#data 0x2D40

loc_8c1C1606:
#data 0x480B
#data 0x600E0009
#data 0x8B022008
#data 0x4D0BDD0E
#data 0x0009

loc_8c1C1616:
#data 0xA001
#data 0x6C93

loc_8c1C161A:
#data 0x6C93

#align4
loc_8c1C161C:
#data 0x222862CE
#data 0x898C

loc_8c1C1622:
#data 0x4F26
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

loc_8c1C1634:
mov.l @(loc_8c1C1650,pc),r3 ; r3 set to 0x8C3537A8
mov.b r4,@r3 ; r3 ??? bc r4 is ???
mov.l @(loc_8c1C1654,pc),r2 ; r2 set to 0x8C34BB67
rts
mov.b r4,@r2
;-------------------------------------------------------------------------------
#data 0x0000

#align4
loc_8c1C1640:
#data bank19.loc_8c19EF5E

loc_8c1C1644:
#data bank19.loc_8c19EF9A
#data 0x8C34BB6C

#align4
loc_8c1C164C:
#data bank19.loc_8c19EE78

loc_8c1C1650:
#data 0x8C3537A8

#align4
loc_8c1C1654:
#data 0x8C34BB67


loc_8c1C1658:
mov.l @(loc_8c1C1694,pc),r3 ; r3 set to 0x8C1B3454
jmp @r3
mov 0x07,r4

loc_8c1C165E:
mov.l @(loc_8c1C1694,pc),r3 ; r3 set to 0x8C1B3454
jmp @r3
mov 0x08,r4

loc_8c1C1664:
mov.l @(loc_8c1C1694,pc),r3 ; r3 set to 0x8C1B3454
jmp @r3
mov 0x0B,r4

loc_8c1C166A:
mov.l @(loc_8c1C1698,pc),r5 ; r5 set to 0x8C34B302
extu.b r4,r6
mov r6,r0
nop
cmp/eq 0x01,r0
bf loc_8c1C167C
mov 0x40,r2 ; r2 set to 0x40
bra loc_8c1C168A
mov.b r2,@r5

loc_8c1C167C:
cmp/eq 0x02,r0
bf loc_8c1C1686
mov.w @(loc_8c1C1690,pc),r3 ; r3 set to 0x80
bra loc_8c1C168A
mov.b r3,@r5

loc_8c1C1686:
mov.w @(loc_8c1C1692,pc),r1 ; r1 set to 0xC0
mov.b r1,@r5

loc_8c1C168A:
mov.l @(loc_8c1C1694,pc),r3 ; r3 set to 0x8C1B3454, r3 set to 0x8C1B3454
jmp @r3
mov 0x0C,r4

loc_8c1C1690:
#data 0x0080

loc_8c1C1692:
#data 0x00C0

#align4
loc_8c1C1694:
#data bank1b.loc_8c1b3454

loc_8c1C1698:
#data 0x8C34B302

#align4
loc_8c1C169C:
#data 0xE400D33A
#data 0xD53A2341
#data 0x2522D23A
#data 0x956B6623
#data 0x6753

loc_8c1C16AE:
#data 0x4710
#data 0x8FFC2640
#data 0xD7377601
#data 0x6653

loc_8c1C16BA:
#data 0x4610
#data 0x8FFC2740
#data 0xD3357701
#data 0xD6352341
#data 0x955D

loc_8c1C16CA:
#data 0x4510
#data 0x8FFC2640
#data 0xD2337601
#data 0xD3332241
#data 0xD1332341
#data 0xD2332140
#data 0xD3332240
#data 0xD1332340
#data 0xD2332140
#data 0xD3332241
#data 0xD1332341
#data 0xD2332140
#data 0xD3332240
#data 0xD1332340
#data 0xD2332140
#data 0xD3332240
#data 0xD1332340
#data 0xD2332140
#data 0xD3332240
#data 0xD1332340
#data 0xD2332140
#data 0xD3332240
#data 0xD1332340
#data 0xD2332140
#data 0xD3332242
#data 0xD1332342
#data 0xD2332142
#data 0xD3332242
#data 0xD1332340
#data 0xD2332140
#data 0xD3332240
#data 0xD1332340
#data 0xD2332140
#data 0xD3332240
#data 0xD1332340
#data 0xD2332140
#data 0xD3332240
#data 0xD1332340
#data 0xD2332140
#data 0xD3332240
#data 0xD1332340
#data 0xD2332140
#data 0xD3332240
#data 0xD1332340
#data 0xD2332140
#data 0xD3332240
#data 0x0009A066
#data 0x040C1000
#data 0x8C351784
#data 0x8C351770
#data 0x8C350770
#data 0x8C35178A
#data 0x8C35279C
#data 0x8C3527A0
#data 0x8C352BB8
#data 0x8C352BBA
#data 0x8C352BBC
#data 0x8C352BBD
#data 0x8C352BBE
#data 0x8C352BBF
#data 0x8C352BC8
#data 0x8C352DDC
#data 0x8C352DDE
#data 0x8C352DDF
#data 0x8C352DE0
#data 0x8C352DE1
#data 0x8C352DE2
#data 0x8C352DE3
#data 0x8C352DE4
#data 0x8C352DE5
#data 0x8C352DE6
#data 0x8C352DE7
#data 0x8C352DE8
#data 0x8C352DE9
#data 0x8C352DEA
#data 0x8C352DEC
#data 0x8C352DF0
#data 0x8C352DF4
#data 0x8C352DF8
#data 0x8C352DFC
#data 0x8C352DFD
#data 0x8C352DFE
#data 0x8C352DFF
#data 0x8C352E00
#data 0x8C352E01
#data 0x8C352E02
#data 0x8C352E03
#data 0x8C352E04
#data 0x8C352E05
#data 0x8C352E06
#data 0x8C352E07
#data 0x8C352E08
#data 0x8C352E09
#data 0x8C352E0A
#data 0x8C352E0B
#data 0x8C352E0C
#data 0x8C352E0D
#data 0x8C352E0E

#align4
loc_8c1C1850:
#data 0xD14D2340
#data 0xD24D2140
#data 0xD34D2240
#data 0xD14D2340
#data 0xD24D2140
#data 0xD34D2240
#data 0xD14D2340
#data 0xD24D2140
#data 0xD34D2240
#data 0xD14D2340
#data 0xD24D2140
#data 0xD34D2240
#data 0xD14D2340
#data 0xD24D2140
#data 0xD34D2240
#data 0xD14D2340
#data 0xD24D2140
#data 0xD34D2240
#data 0xD14D2340
#data 0xD24D2140
#data 0xD34D2240
#data 0xD14D2340
#data 0xD24D2140
#data 0xD34D2241
#data 0xD14D2341
#data 0xD24D2141
#data 0xD34D2241
#data 0xD14D2340
#data 0xD24D2140
#data 0xD34D2240
#data 0xD14D2340
#data 0xD74D2140
#data 0x6653E504

#align4
loc_8c1C18D4:
#data 0x27404610
#data 0x77018FFC
#data 0x2342D34A
#data 0x2240D24A
#data 0x2140D14A
#data 0x2340D34A
#data 0x2240D24A
#data 0x2140D14A
#data 0x2340D34A
#data 0x2240D24A
#data 0x2140D14A
#data 0x2340D34A
#data 0x2240D24A
#data 0x2140D14A
#data 0x2340D34A
#data 0x2240D24A
#data 0x2141D14A
#data 0x2341D34A
#data 0x6653D24A
#data 0xD14A2241
#data 0xD34A2141
#data 0xD24A2341
#data 0xD14A2241
#data 0xD34A2140
#data 0xD24A2340
#data 0xD14A2240
#data 0xD34A2140
#data 0xD24A2340
#data 0xD14A2240
#data 0xD34A2141
#data 0xD24A2341
#data 0xD14A2241
#data 0xD74A2140

#align4
loc_8c1C1958:
#data 0x27414610
#data 0x77028FFC
#data 0x6653D748

#align4
loc_8c1C1964:
#data 0x27414610
#data 0x77028FFC
#data 0x0009000B
;-------------------------------------------------------------------------------
#data 0x4F22D346
#data 0xD2466031
#data 0x600DD443
#data 0x6142420B
#data 0x000B4F26
#data 0x00002402
#data 0x8C352E0F
#data 0x8C352E10
#data 0x8C352E11
#data 0x8C352E12
#data 0x8C352E13
#data 0x8C352E14
#data 0x8C352E15
#data 0x8C352E16
#data 0x8C352E17
#data 0x8C352E18
#data 0x8C352E19
#data 0x8C352E1A
#data 0x8C352E1B
#data 0x8C352E1C
#data 0x8C352E1D
#data 0x8C352E1E
#data 0x8C352E1F
#data 0x8C352E20
#data 0x8C352E21
#data 0x8C352E22
#data 0x8C352E23
#data 0x8C352E24
#data 0x8C352E26
#data 0x8C352E28
#data 0x8C352E2A
#data 0x8C352E2C
#data 0x8C352E2E
#data 0x8C352E2F
#data 0x8C352E30
#data 0x8C352E31
#data 0x8C352E32
#data 0x8C352E33
#data 0x8C352E38
#data 0x8C352E3C
#data 0x8C352E3D
#data 0x8C352E3E
#data 0x8C352E3F
#data 0x8C352E40
#data 0x8C352E4A
#data 0x8C352E4B
#data 0x8C352E4C
#data 0x8C352E4D
#data 0x8C352E4E
#data 0x8C352E4F
#data 0x8C352E50
#data 0x8C352E51
#data 0x8C352E52
#data 0x8C352E54
#data 0x8C352E56
#data 0x8C352E58
#data 0x8C352E5A
#data 0x8C352E5C
#data 0x8C352E5E
#data 0x8C352E5F
#data 0x8C352E60
#data 0x8C352E61
#data 0x8C352E62
#data 0x8C352E63
#data 0x8C352E64
#data 0x8C352E66
#data 0x8C352E6C
#data 0x8C352E8D
#data 0x8C352E9E
#data 0x8C352EB8
#data 0x8C352EE0
#data 0x8C352F4E

#align4
loc_8c1C1A90:
#data bank12.loc_8c1291DC


loc_8c1C1A94:
mov.l r14,@-r15
mov 0x03,r1 ; r1 set to 0x03
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
mov.l @(loc_8c1C1C0C,pc),r2 ; r2 set to 0x8C34B0B0
sts.l pr,@-r15
mov.b @r2,r3
extu.b r3,r3
cmp/gt r1,r3
add 0xE8,r15
bf loc_8c1C1AB6
bra loc_8c1C20D4
nop

loc_8c1C1AB6:
mov.l @(loc_8c1C1C2C,pc),r2 ; r2 set to 0x8C34B0A3
mov.l @(loc_8c1C1C24,pc),r13 ; r13 set to 0x8C34AF50
mov.b @r2,r0
mov.l @(loc_8c1C1C28,pc),r14 ; r14 set to 0x8C34B288
extu.b r0,r0
mov.l @(loc_8c1C1C14,pc),r8 ; r8 set to 0x8C34B2CC
mov.l @(loc_8c1C1C10,pc),r9 ; r9 set to 0x8C34B128
cmp/eq 0x00,r0
mov.l @(loc_8c1C1C18,pc),r10 ; r10 set to 0x8C1B3EEC
mov.l @(loc_8c1C1C20,pc),r12 ; r12 set to 0x8C1B689C
mov.l @(loc_8c1C1C1C,pc),r11 ; r11 set to 0x8C1B3F0C
bt/s loc_8c1C1AF8
mov r14,r5 ; r5 set to 0x8C34B288
cmp/eq 0x01,r0
bt loc_8c1C1B00
cmp/eq 0x02,r0
bt loc_8c1C1B94
cmp/eq 0x03,r0
bt loc_8c1C1BCC
cmp/eq 0x04,r0
bf loc_8c1C1AE4
bra loc_8c1C1BFA
nop

loc_8c1C1AE4:
cmp/eq 0x05,r0
bf loc_8c1C1AEC
bra loc_8c1C1D5C
nop

loc_8c1C1AEC:
cmp/eq 0x06,r0
bf loc_8c1C1AF4
bra loc_8c1C1F90
nop

loc_8c1C1AF4:
bra loc_8c1C20D4
nop

loc_8c1C1AF8:
bsr loc_8c1C2102
nop
bra loc_8c1C20D4
nop

loc_8c1C1B00:
mov.b @(0x06,r5),r0
extu.b r0,r0
tst 0x06,r0
bf loc_8c1C1B0C
bra loc_8c1C20D4
nop

loc_8c1C1B0C:
mov.l @(loc_8c1C1C30,pc),r0 ; r0 set to 0x8C34AF67
mov.b @r0,r0 ; r0 ??
extu.b r0,r0
tst 0x01,r0
bf loc_8c1C1B1A
bra loc_8c1C20D4
nop

loc_8c1C1B1A:
mov r5,r0
nop
add 0x1D,r0
mov.b @r0,r0
extu.b r0,r0
tst 0x20,r0
bt loc_8c1C1B2C
bra loc_8c1C20D4
nop

loc_8c1C1B2C:
mov r5,r0
nop
add 0x1B,r0
mov.b @r0,r0
extu.b r0,r0
tst 0x80,r0
bt loc_8c1C1B3E
bra loc_8c1C20D4
nop

loc_8c1C1B3E:
mov.l @(loc_8c1C1C34,pc),r2 ; r2 set to 0x8C19D926
jsr @r2
nop
extu.b r0,r0
extu.w r0,r4
tst r4,r4
bf/s loc_8c1C1B52
mov.w r0,@r15
bra loc_8c1C20D4
nop

loc_8c1C1B52:
mov r4,r0
nop
cmp/eq 0x01,r0
bf loc_8c1C1B6E
mov.l @r8,r3
add 0x0A,r3
mov.l r3,@r9
jsr @r12
mov 0x01,r4 ; r4 set to 0x01
mov.l @(loc_8c1C1C38,pc),r2 ; r2 set to 0x8C1B6048
jsr @r2
nop
bra loc_8c1C20D4
nop

loc_8c1C1B6E:
mov 0x08,r2 ; r2 set to 0x08
add 0x10,r13
mov.b r2,@r13
mov.l @(loc_8c1C1C3C,pc),r3 ; r3 set to 0x8C19FED6
jsr @r3
mov 0x01,r4 ; r4 set to 0x01
mov.b @(0x0C,r14),r0
or 0x01,r0
mov.b r0,@(0x0C,r14)
mov.b @(0x03,r14),r0
or 0x08,r0
mov.b r0,@(0x03,r14)
mov.l @(loc_8c1C1C40,pc),r3 ; r3 set to 0x8C1A1290
jsr @r3
mov 0x00,r4 ; r4 set to 0x00
mov.l @(loc_8c1C1C2C,pc),r3 ; r3 set to 0x8C34B0A3
mov 0x02,r2 ; r2 set to 0x02
bra loc_8c1C20D4
mov.b r2,@r3

loc_8c1C1B94:
mov.l @(loc_8c1C1C34,pc),r3 ; r3 set to 0x8C19D926
jsr @r3
nop
extu.b r0,r0
tst r0,r0
bt loc_8c1C1BA4
bra loc_8c1C20D4
nop

loc_8c1C1BA4:
mov.l @r8,r3
add 0x64,r3
mov.l r3,@r9
jsr @r12
mov 0x01,r4 ; r4 set to 0x01
mov.l @(loc_8c1C1C3C,pc),r2 ; r2 set to 0x8C19FED6
jsr @r2
mov 0x00,r4 ; r4 set to 0x00
mov.l @(loc_8c1C1C38,pc),r1 ; r1 set to 0x8C1B6048
mov 0x00,r3 ; r3 set to 0x00
mov.l @(loc_8c1C1C0C,pc),r2 ; r2 set to 0x8C34B0B0
jsr @r1
mov.b r3,@r2 ; r2 ??
mov.l @(loc_8c1C1C44,pc),r3 ; r3 set to 0x8C1B6118
jsr @r3
nop
bsr loc_8c1C2102
nop
bra loc_8c1C20D4
nop

loc_8c1C1BCC:
add 0x12,r13
mov.b @r13,r3
tst r3,r3
bf loc_8c1C1BD8
bra loc_8c1C20D4
nop

loc_8c1C1BD8:
mov.l @(loc_8c1C1C48,pc),r2 ; r2 set to 0x8C34AFA4
mov.l @(loc_8c1C1C14,pc),r0 ; r0 set to 0x8C34B2CC
mov.l @r2,r1
mov.l @r0,r3
cmp/hs r3,r1
bf loc_8c1C1BE8
bra loc_8c1C20D4
nop

loc_8c1C1BE8:
mov.b @(0x0C,r5),r0
mov.l @(loc_8c1C1C4C,pc),r3 ; r3 set to 0x8C1AFD14
or 0x20,r0
jsr @r3
mov.b r0,@(0x0C,r5)
mov.l @(loc_8c1C1C2C,pc),r3 ; r3 set to 0x8C34B0A3
mov 0x06,r2 ; r2 set to 0x06
bra loc_8c1C20D4
mov.b r2,@r3

loc_8c1C1BFA:
mov.l @(loc_8c1C1C50,pc),r3 ; r3 set to 0x8C34B0A4
mov.b @r3,r0
extu.b r0,r0
cmp/eq 0x00,r0
bt loc_8c1C1C54
cmp/eq 0x01,r0
bt loc_8c1C1C86
bra loc_8c1C20D4
nop

#align4
loc_8c1C1C0C:
#data 0x8C34B0B0

#align4
loc_8c1C1C10:
#data 0x8C34B128

#align4
loc_8c1C1C14:
#data 0x8C34B2CC

#align4
loc_8c1C1C18:
#data bank1b.loc_8c1b3EEC

loc_8c1C1C1C:
#data bank1b.loc_8c1b3F0C

loc_8c1C1C20:
#data bank1b.loc_8c1b689C

loc_8c1C1C24:
#data 0x8C34AF50

#align4
loc_8c1C1C28:
#data 0x8C34B288

#align4
loc_8c1C1C2C:
#data 0x8C34B0A3

#align4
loc_8c1C1C30:
#data 0x8C34AF67

#align4
loc_8c1C1C34:
#data bank19.loc_8c19D926

loc_8c1C1C38:
#data bank1b.loc_8c1b6048

loc_8c1C1C3C:
#data bank19.loc_8c19FED6

loc_8c1C1C40:
#data bank1a.loc_8c1a1290

loc_8c1C1C44:
#data bank1b.loc_8c1b6118

loc_8c1C1C48:
#data 0x8C34AFA4

#align4
loc_8c1C1C4C:
#data bank1a.loc_8c1aFD14

loc_8c1C1C50:
#data 0x8C34B0A4


loc_8c1C1C54:
mov.b @(0x07,r5),r0
and 0xF7,r0
mov.b r0,@(0x07,r5)
mov.b @(0x0E,r13),r0
or 0x80,r0
mov.b r0,@(0x0E,r13)
mov.b @(0x09,r14),r0
or 0x80,r0
mov.b r0,@(0x09,r14)
mov r14,r4
add 0x06,r4
mov.b @r4,r0
mov.l @(loc_8c1C1D30,pc),r1 ; r1 set to 0x8C19D3BC
and 0xF8,r0
or 0x09,r0
jsr @r1
mov.b r0,@r4
mov.l @(loc_8c1C1D34,pc),r4 ; r4 set to 0x8C34B0AC
mov.w @(loc_8c1C1D2E,pc),r5 ; r5 set to 0x7D0
jsr @r10
nop
mov.l @(loc_8c1C1D38,pc),r2 ; r2 set to 0x8C34B0A4
mov 0x01,r3 ; r3 set to 0x01
bra loc_8c1C20D4
mov.b r3,@r2

loc_8c1C1C86:
#data 0xD12E
#data 0x410BD42C
#data 0x600E0009
#data 0x893D2008
#data 0x740364E3
#data 0xCB086040
#data 0x60402400
#data 0x2400CB40
#data 0x420BD227
#data 0x6382E400
#data 0x29327319
#data 0xE4014C0B
#data 0x000960D3
#data 0x60007010
#data 0x8840600C
#data 0x84E38B04
#data 0xCB20D320
#data 0x80E3430B

#align4
loc_8c1C1CCC:
#data 0x721262D3
#data 0xE2646320
#data 0x633C6182
#data 0x232ED01C
#data 0x031AD21C
#data 0x420B331C
#data 0x60D32032
#data 0x701B0009
#data 0x600C6000
#data 0x8B08C803
#data 0x000960D3
#data 0x60007024
#data 0xC80C600C
#data 0x4C0B8901
#data 0xE400

loc_8c1C1D06:
#data 0xD213
#data 0x0009420B
#data 0x0009A11E

#align4
loc_8c1C1D10:
#data 0x4B0BD308
#data 0x600E6432
#data 0x8B562008
#data 0x6000D00E
#data 0xC808600C
#data 0xA1D58B01
#data 0x0009

loc_8c1C1D2A:
#data 0xA04E
#data 0x0009

loc_8c1C1D2E:
#data 0x07D0

#align4
loc_8c1C1D30:
#data bank19.loc_8c19D3BC

loc_8c1C1D34:
#data 0x8C34B0AC

#align4
loc_8c1C1D38:
#data 0x8C34B0A4
#data 0x8C34B0A8

#align4
loc_8c1C1D40:
#data bank19.loc_8c19D582

loc_8c1C1D44:
#data bank1a.loc_8c1a1290

loc_8c1C1D48:
#data bank19.loc_8c19D7F4
#data 0x8C34AFA4

#align4
loc_8c1C1D50:
#data bank1b.loc_8c1bF5C8

loc_8c1C1D54:
#data bank1b.loc_8c1bF9B0
#data 0x8C34B28F


loc_8c1C1D5C:
mov.l @(loc_8c1C1E44,pc),r9 ; r9 set to 0x8C34B0A5
mov.l @(loc_8c1C1E48,pc),r3 ; r3 set to 0x8C34B0AC
mov.b @r9,r0
extu.b r0,r0
cmp/eq 0x00,r0
bt/s loc_8c1C1D8E
mov.l @r3,r4
cmp/eq 0x01,r0
bt loc_8c1C1DC0
cmp/eq 0x02,r0
bt loc_8c1C1E00
cmp/eq 0x03,r0
bt loc_8c1C1E14
cmp/eq 0x04,r0
bt loc_8c1C1E72
cmp/eq 0x05,r0
bf loc_8c1C1D82
bra loc_8c1C1E9A
nop

loc_8c1C1D82:
cmp/eq 0x06,r0
bf loc_8c1C1D8A
bra loc_8c1C1F06
nop

loc_8c1C1D8A:
bra loc_8c1C20D4
nop

loc_8c1C1D8E:
mov r5,r0
nop
add 0x1B,r0
mov.b @r0,r0
extu.b r0,r0
tst 0x80,r0
bt loc_8c1C1E0E
mov.l @(loc_8c1C1E4C,pc),r1 ; r1 set to 0x8C1A1290
jsr @r1
mov 0x00,r4 ; r4 set to 0x00
mov r14,r3
add 0x18,r3
mov.b @r3,r0
and 0x3F,r0
mov.b r0,@r3
mov r14,r3
add 0x1B,r3
mov.b @r3,r0
mov.l @(loc_8c1C1E48,pc),r4 ; r4 set to 0x8C34B0AC
or 0x04,r0
mov.w @(loc_8c1C1E40,pc),r5 ; r5 set to 0x190
jsr @r10
mov.b r0,@r3
bra loc_8c1C1ED2
mov 0x03,r2

loc_8c1C1DC0:
jsr @r11
nop
exts.b r0,r0
tst r0,r0
bt loc_8c1C1DD2

loc_8c1C1DCA:
bsr loc_8c1C20E8
nop
bra loc_8c1C20D4
nop

loc_8c1C1DD2:
mov r14,r0
nop
add 0x1D,r0
mov.b @r0,r0
extu.b r0,r0
tst 0x20,r0
bt loc_8c1C1DE4
bra loc_8c1C20D4
nop

loc_8c1C1DE4:
mov.l @(loc_8c1C1E50,pc),r2 ; r2 set to 0x8C1B6720
jsr @r2
nop
exts.b r0,r0
tst r0,r0
bf loc_8c1C1DF4
bra loc_8c1C20D4
nop

loc_8c1C1DF4:
mov.l @(loc_8c1C1E48,pc),r4 ; r4 set to 0x8C34B0AC
jsr @r10
mov 0x0A,r5 ; r5 set to 0x0A
mov 0x02,r2 ; r2 set to 0x02
bra loc_8c1C20D4
mov.b r2,@r9

loc_8c1C1E00:
jsr @r11
nop
exts.b r0,r0
tst r0,r0
bf loc_8c1C1E0E
bra loc_8c1C20D4
nop

loc_8c1C1E0E:
mov 0x04,r3 ; r3 set to 0x04
bra loc_8c1C20D4
mov.b r3,@r9

loc_8c1C1E14:
jsr @r11
mov.l @r3,r4
exts.b r0,r0
tst r0,r0
bf loc_8c1C1E2C
mov.l @(loc_8c1C1E54,pc),r0 ; r0 set to 0x8C34B2A0
mov.b @r0,r0 ; r0 ??
extu.b r0,r0
tst 0xC0,r0
bf loc_8c1C1E2C
bra loc_8c1C20D4
nop

loc_8c1C1E2C:
mov r14,r0
nop
add 0x18,r0
mov.b @r0,r0
extu.b r0,r0
tst 0x80,r0
bt loc_8c1C1E58
mov 0x00,r5 ; r5 set to 0x00
bra loc_8c1C1E5C
mov 0x62,r4

loc_8c1C1E40:
#data 0x0190
#data 0x0000

#align4
loc_8c1C1E44:
#data 0x8C34B0A5

#align4
loc_8c1C1E48:
#data 0x8C34B0AC

#align4
loc_8c1C1E4C:
#data bank1a.loc_8c1a1290

loc_8c1C1E50:
#data bank1b.loc_8c1b6720

loc_8c1C1E54:
#data 0x8C34B2A0


loc_8c1C1E58:
mov 0x61,r4 ; r4 set to 0x61
mov 0x00,r5 ; r5 set to 0x00

loc_8c1C1E5C:
mov.l @(loc_8c1C1F58,pc),r2 ; r2 set to 0x8C1AED24, r2 set to 0x8C1AED24
jsr @r2
nop
bsr loc_8c1C2102
nop
mov.l @(loc_8c1C1F58,pc),r2 ; r2 set to 0x8C1AED24, r2 set to 0x8C1AED24
mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00
jsr @r2
mov r5,r4 ; r4 set to 0x00, r4 set to 0x00
bra loc_8c1C1EFC
nop

loc_8c1C1E72:
jsr @r12
mov 0x01,r4 ; r4 set to 0x01
mov.b @(0x03,r14),r0
and 0x17,r0
mov.b r0,@(0x03,r14)
mov.b @(0x0C,r14),r0
mov.l @(loc_8c1C1F5C,pc),r3 ; r3 set to 0x8C19D61C
and 0xDE,r0
jsr @r3
mov.b r0,@(0x0C,r14)
mov.l @(loc_8c1C1F60,pc),r4 ; r4 set to 0x8C34B128
mov.w @(loc_8c1C1F54,pc),r5 ; r5 set to 0x190
jsr @r10
nop
mov.l @(loc_8c1C1F64,pc),r4 ; r4 set to 0x8C34B0AC
mov.w @(loc_8c1C1F54,pc),r5 ; r5 set to 0x190
jsr @r10
nop
bra loc_8c1C1ED2
mov 0x05,r2

loc_8c1C1E9A:
#data 0xD134
#data 0x410BD432
#data 0x600C0009
#data 0x89162008
#data 0x420BD231
#data 0x64E30009
#data 0x60407403
#data 0x2400CB80
#data 0xCB086040
#data 0xD32D2400
#data 0xE400430B
#data 0xE200D32C
#data 0xD4262320
#data 0xE5644A0B
#data 0xE206


loc_8c1C1ED2:
bra loc_8c1C20D4
mov.b r2,@r9

loc_8c1C1ED6:
#data 0xD123
#data 0x64124B0B
#data 0x2008600E
#data 0xA0F78B01
#data 0x0009

loc_8c1C1EE6:
#data 0xD222
#data 0x0009420B
#data 0x0009B109
#data 0xE500D219
#data 0xE404420B
#data 0x0009A0B5


loc_8c1C1EFC:
mov.l @(loc_8c1C1F7C,pc),r2 ; r2 set to 0x8C1AFD44
jsr @r2
nop
bra loc_8c1C20D4
nop

loc_8c1C1F06:
jsr @r11
nop
exts.b r0,r0
tst r0,r0
bf loc_8c1C1F14
bra loc_8c1C20D4
nop

#align4
loc_8c1C1F14:
#data 0x731263D3
#data 0xE3646230
#data 0x622C6182
#data 0x223ED017
#data 0x321C021A
#data 0x60D32022
#data 0x70100009
#data 0x600C6000
#data 0x8B048820
#data 0xD31284E3
#data 0x430BCB20
#data 0x80E3

loc_8c1C1F42:
#data 0xD211
#data 0x0009420B
#data 0xE4004C0B

#align4
loc_8c1C1F4C:
#data 0xE303D20F
#data 0x2230A0C0

loc_8c1C1F54:
#data 0x0190
#data 0x0000

#align4
loc_8c1C1F58:
#data bank1a.loc_8c1aED24

loc_8c1C1F5C:
#data bank19.loc_8c19D61C

loc_8c1C1F60:
#data 0x8C34B128

#align4
loc_8c1C1F64:
#data 0x8C34B0AC
#data 0x8C34B0A8

#align4
loc_8c1C1F6C:
#data bank19.loc_8c19D6B2

loc_8c1C1F70:
#data bank1b.loc_8c1b6048

loc_8c1C1F74:
#data bank1a.loc_8c1a1290
#data 0x8C34B0B0

#align4
loc_8c1C1F7C:
#data bank1a.loc_8c1aFD44
#data 0x8C34AFA4

#align4
loc_8c1C1F84:
#data bank19.loc_8c19D7F4

loc_8c1C1F88:
#data bank1a.loc_8c1aF91A
#data 0x8C34B0A3


loc_8c1C1F90:
mov.l @(loc_8c1C2078,pc),r11 ; r11 set to 0x8C34B0A6
mov.l @(loc_8c1C207C,pc),r13 ; r13 set to 0x8C1AEE08
mov.b @r11,r0
extu.b r0,r0
cmp/eq 0x00,r0
bt loc_8c1C1FAC
cmp/eq 0x01,r0
bt loc_8c1C2024
cmp/eq 0x02,r0
bf loc_8c1C1FA8
bra loc_8c1C20B8
nop

loc_8c1C1FA8:
bra loc_8c1C20D4
nop

#align4
loc_8c1C1FAC:
#data 0x430BD334
#data 0x84EC0009
#data 0xC820600C
#data 0x4D0B8901
#data 0x0009

loc_8c1C1FBE:
#data 0x84E3
#data 0xC840600C
#data 0xD2308915
#data 0x420BD42E
#data 0x60E30009
#data 0x70030009
#data 0x60001F02
#data 0x430BD32C
#data 0x84F480F4
#data 0x210051F2
#data 0xE202D12B
#data 0x410BD329
#data 0xA0192320
#data 0x0009

loc_8c1C1FF2:
#data 0x6182
#data 0x29127164
#data 0xE4014C0B
#data 0xE300D226
#data 0x84E32230
#data 0xC880600C
#data 0xD1248909
#data 0x410BD41D
#data 0xD3230009
#data 0x0009430B
#data 0xA05BE202
#data 0x2B20

loc_8c1C201E:
#data 0xD321
#data 0xE400430B

#align4
loc_8c1C2024:
#data 0x600C84E3
#data 0x8916C820
#data 0x00094D0B
#data 0x00094D0B
#data 0x941DDD13
#data 0x622D62D1
#data 0x8B003247
#data 0x2D41

loc_8c1C2042:
#data 0x64D1
#data 0xD21867F3
#data 0x770CE50A
#data 0x420BE603
#data 0xD316644D
#data 0x430B64F3
#data 0x740C

loc_8c1C205A:
#data 0xB052
#data 0xD3140009
#data 0x430BE500
#data 0x6453

loc_8c1C2066:
#data 0x84E6
#data 0xC9BFD312
#data 0x80E6430B
#data 0x0009A030
#data 0x000000FF

#align4
loc_8c1C2078:
#data 0x8C34B0A6

#align4
loc_8c1C207C:
#data bank1a.loc_8c1aEE08

loc_8c1C2080:
#data bank1a.loc_8c1aFE8A
#data 0x8C34B0A8

#align4
loc_8c1C2088:
#data bank19.loc_8c19D582

loc_8c1C208C:
#data bank1a.loc_8c1aFA18
#data 0x8C34B2E3

#align4
loc_8c1C2094:
#data bank1b.loc_8c1b374E
#data 0x8C34B0B0

#align4
loc_8c1C209C:
#data bank19.loc_8c19D6B2

loc_8c1C20A0:
#data bank19.loc_8c19D798

loc_8c1C20A4:
#data bank19.loc_8c19FED6

loc_8c1C20A8:
#data bank1a.loc_8c1aF1A4

loc_8c1C20AC:
#data bank1a.loc_8c1aECDC

loc_8c1C20B0:
#data bank1a.loc_8c1aED24

loc_8c1C20B4:
#data bank1a.loc_8c1aFD44

loc_8c1C20B8:
#data 0x430BD31E
#data 0x600C64F3
#data 0x8B072008
#data 0x430BD31C
#data 0xD21C0009
#data 0x0009420B
#data 0x2B30E301


loc_8c1C20D4:
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

loc_8c1C20E8:
sts.l pr,@-r15
bsr loc_8c1C2102
nop
mov.l @(loc_8c1C2140,pc),r1 ; r1 set to 0x8C1AFA18
jsr @r1
nop
mov.l @(loc_8c1C2144,pc),r3 ; r3 set to 0x8C1AED24
mov 0x00,r5 ; r5 set to 0x00
jsr @r3
mov 0x03,r4 ; r4 set to 0x03
mov.l @(loc_8c1C2148,pc),r2 ; r2 set to 0x8C1AFD44
jmp @r2
lds.l @r15+,pr

loc_8c1C2102:
sts.l pr,@-r15
mov.l @(loc_8c1C214C,pc),r3 ; r3 set to 0x8C1A1290
jsr @r3
mov 0x01,r4 ; r4 set to 0x01
mov.l @(loc_8c1C2150,pc),r2 ; r2 set to 0x8C34AF60
mov 0x01,r3 ; r3 set to 0x01
mov 0x00,r4 ; r4 set to 0x00
mov.b r4,@r2 ; r2 ??
mov.l @(loc_8c1C2154,pc),r1 ; r1 set to 0x8C34B0A3
mov.b r3,@r1 ; r1 ??
mov.l @(loc_8c1C2158,pc),r0 ; r0 set to 0x8C34B0A5
mov.b r4,@r0 ; r0 ??
mov.l @(loc_8c1C215C,pc),r3 ; r3 set to 0x8C34B0A4
mov.b r4,@r3 ; r3 ??
mov.l @(loc_8c1C2160,pc),r2 ; r2 set to 0x8C34B0A6
mov.b r4,@r2 ; r2 ??
mov.l @(loc_8c1C2164,pc),r4 ; r4 set to 0x8C34B288
mov.b @(0x03,r4),r0
and 0x17,r0
mov.b r0,@(0x03,r4)
mov.b @(0x0C,r4),r0
lds.l @r15+,pr
and 0xDE,r0
rts
mov.b r0,@(0x0C,r4)
;-------------------------------------------------------------------------------

#align4
loc_8c1C2134:
#data bank19.loc_8c19D6B2

loc_8c1C2138:
#data bank1b.loc_8c1b6048

loc_8c1C213C:
#data bank1a.loc_8c1a048C

loc_8c1C2140:
#data bank1a.loc_8c1aFA18

loc_8c1C2144:
#data bank1a.loc_8c1aED24

loc_8c1C2148:
#data bank1a.loc_8c1aFD44

loc_8c1C214C:
#data bank1a.loc_8c1a1290

loc_8c1C2150:
#data 0x8C34AF60

#align4
loc_8c1C2154:
#data 0x8C34B0A3

#align4
loc_8c1C2158:
#data 0x8C34B0A5

#align4
loc_8c1C215C:
#data 0x8C34B0A4

#align4
loc_8c1C2160:
#data 0x8C34B0A6

#align4
loc_8c1C2164:
#data 0x8C34B288


loc_8c1C2168:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xFC,r15
bsr loc_8c1C2B48
mov 0x00,r12 ; r12 set to 0x00
exts.b r0,r0
tst r0,r0
bt loc_8c1C2196
mov.l @(loc_8c1C21C8,pc),r2 ; r2 set to 0x8C34B03A
mov 0x00,r3 ; r3 set to 0x00
mov r3,r4 ; r4 set to 0x00
mov.b r3,@r2 ; r2 ??
mov.l @(loc_8c1C21CC,pc),r3 ; r3 set to 0x8C1995D6
jsr @r3
nop
bra loc_8c1C26F4
mov 0x03,r0

loc_8c1C2196:
mov.l @(loc_8c1C21E8,pc),r2 ; r2 set to 0x8C34B194
mov.l @(loc_8c1C21E4,pc),r14 ; r14 set to 0x8C1B3F0C
mov.b @r2,r0
mov.l @(loc_8c1C21E0,pc),r13 ; r13 set to 0x8C34B1F8
extu.b r0,r0
mov.l @(loc_8c1C21D4,pc),r9 ; r9 set to 0x8C34B288
mov.l @(loc_8c1C21D0,pc),r8 ; r8 set to 0x8C34B039
cmp/eq 0x00,r0
mov.l @(loc_8c1C21DC,pc),r11 ; r11 set to 0x8C1B3EEC
mov.l @(loc_8c1C21D8,pc),r10 ; r10 set to 0x8C34AF50
bt loc_8c1C21EC
cmp/eq 0x01,r0
bf loc_8c1C21B4
bra loc_8c1C22D0
nop

loc_8c1C21B4:
cmp/eq 0x02,r0
bf loc_8c1C21BC
bra loc_8c1C236C
nop

loc_8c1C21BC:
cmp/eq 0x03,r0
bf loc_8c1C21C4
bra loc_8c1C26EE
nop

loc_8c1C21C4:
bra loc_8c1C26F0
nop

#align4
loc_8c1C21C8:
#data 0x8C34B03A

#align4
loc_8c1C21CC:
#data bank19.loc_8c1995D6

loc_8c1C21D0:
#data 0x8C34B039

#align4
loc_8c1C21D4:
#data 0x8C34B288

#align4
loc_8c1C21D8:
#data 0x8C34AF50

#align4
loc_8c1C21DC:
#data bank1b.loc_8c1b3EEC

loc_8c1C21E0:
#data 0x8C34B1F8

#align4
loc_8c1C21E4:
#data bank1b.loc_8c1b3F0C

loc_8c1C21E8:
#data 0x8C34B194

#align4
loc_8c1C21EC:
#data 0x60D29183
#data 0x600D001D
#data 0x8B02C801
#data 0xCB2084AE
#data 0x80AE

loc_8c1C21FE:
#data 0x917A
#data 0x001D60D2
#data 0xC802600D
#data 0x84AE8B05
#data 0x80AEC9DF
#data 0xC9FB6080
#data 0x2800

loc_8c1C2216:
#data 0x916E
#data 0x001D60D2
#data 0xC804600D
#data 0x60808B02
#data 0x2800CB10

#align4
loc_8c1C2228:
#data 0x60D29165
#data 0x600D001D
#data 0x8B02C808
#data 0xC9FB6080
#data 0x2800

loc_8c1C223A:
#data 0xD230
#data 0x64224E0B
#data 0x2008600E
#data 0xA2538B01
#data 0x0009

loc_8c1C224A:
#data 0xD32D
#data 0x0009430B
#data 0xE100D32C
#data 0x60A32310
#data 0x70160009
#data 0xE40C6000
#data 0x2409600C
#data 0x6053654D
#data 0x88040009
#data 0x60538903
#data 0x88080009
#data 0x8B02

loc_8c1C2276:
#data 0xD324
#data 0x0009430B

#align4
loc_8c1C227C:
#data 0x4B0BD423
#data 0x6493E500
#data 0x60407407
#data 0x2400C9F7
#data 0xC9DF6040
#data 0x84982400
#data 0x8098C9BF
#data 0x73106393
#data 0xC97F6030
#data 0x84912300
#data 0xC801600C
#data 0x84918903
#data 0xA005C9FE
#data 0x8091

loc_8c1C22B2:
#data 0x62A3
#data 0xD1167229
#data 0x21306320

#align4
loc_8c1C22BC:
#data 0x65D2901C
#data 0x84A6055E
#data 0x6403B53E
#data 0xE201D312
#data 0x2320A1FC


loc_8c1C22D0:
bsr loc_8c1C2DBA
nop
extu.b r0,r4
extu.w r4,r0
cmp/eq 0x01,r0
bf loc_8c1C2334
mov.b @(0x0E,r10),r0
extu.b r0,r0
tst 0x20,r0
bt loc_8c1C231C
mov.l @(loc_8c1C2318,pc),r3 ; r3 set to 0x8C34B039
mov.b @r3,r0
extu.b r0,r0
tst 0x04,r0
bf loc_8c1C231C
bsr loc_8c1C2BFC
nop
bra loc_8c1C2320
nop
#data 0x00B0
#data 0x00000080
#data 0x8C34B124

#align4
loc_8c1C2300:
#data bank1a.loc_8c1aF876
#data 0x8C34B1DF

#align4
loc_8c1C2308:
#data bank1a.loc_8c1aFF72
#data 0x8C34B18C
#data 0x8C34B03A
#data 0x8C34B194

#align4
loc_8c1C2318:
#data 0x8C34B039


loc_8c1C231C:
bsr loc_8c1C2CAA
nop

loc_8c1C2320:
mov.l @(loc_8c1C2410,pc),r2 ; r2 set to 0x8C19B3A0, r2 set to 0x8C19B3A0
jsr @r2
nop
mov.l @(loc_8c1C2414,pc),r2 ; r2 set to 0x8C34B194, r2 set to 0x8C34B194
mov 0x02,r3 ; r3 set to 0x02, r3 set to 0x02
mov 0x07,r1 ; r1 set to 0x07, r1 set to 0x07
mov.b r3,@r2 ; r2 ??, r2 ??
mov.l @(loc_8c1C2418,pc),r0 ; r0 set to 0x8C34B195, r0 set to 0x8C34B195
bra loc_8c1C233A
mov.b r1,@r0

#align4
loc_8c1C2334:
#data 0x8B008802
#data 0xEC05


loc_8c1C233A:
mov r10,r4
add 0x16,r4
mov.b @r4,r4
mov 0x40,r3 ; r3 set to 0x40
extu.b r4,r4
tst r4,r3
bt loc_8c1C2358
mov 0x20,r1 ; r1 set to 0x20
tst r4,r1
bt loc_8c1C2358
mov 0x10,r2 ; r2 set to 0x10
tst r4,r2
bf loc_8c1C2358
bra loc_8c1C26F0
nop

loc_8c1C2358:
mov.l @(loc_8c1C241C,pc),r1 ; r1 set to 0x8C1BF690
jsr @r1
nop
extu.b r0,r0
cmp/eq 0x02,r0
bf loc_8c1C2368
bra loc_8c1C268E
nop

loc_8c1C2368:
bra loc_8c1C26F0
nop

loc_8c1C236C:
mov.l @(loc_8c1C2420,pc),r3 ; r3 set to 0x8C19B3D4
jsr @r3
nop
exts.b r0,r0
tst r0,r0
bf loc_8c1C23B6
mov r9,r0
nop
add 0x12,r0
mov.b @r0,r0
extu.b r0,r0
tst 0x04,r0
bt loc_8c1C2390
mov.l @(loc_8c1C2424,pc),r4 ; r4 set to 0x8C34B18C
jsr @r11
mov 0x4B,r5 ; r5 set to 0x4B
bra loc_8c1C23B2
nop

loc_8c1C2390:
mov.l @r13,r3
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r3),r2
extu.b r2,r2
cmp/pl r2
bf loc_8c1C23A6
mov.l @r13,r5
mov 0x25,r0 ; r0 set to 0x25
mov.b @(r0,r5),r5
bra loc_8c1C23AA
extu.b r5,r5

loc_8c1C23A6:
mov.b @(0x0B,r10),r0
extu.b r0,r5

loc_8c1C23AA:
mov.l @(loc_8c1C2424,pc),r4 ; r4 set to 0x8C34B18C, r4 set to 0x8C34B18C
shlr2 r5
jsr @r11
shlr r5

loc_8c1C23B2:
bra loc_8c1C26F4
mov 0x00,r0

loc_8c1C23B6:
mov.l @(loc_8c1C2424,pc),r1 ; r1 set to 0x8C34B18C
mov.l @(loc_8c1C2428,pc),r3 ; r3 set to 0x8C34B184
mov.l @r1,r0
mov.l @r3,r4
mov.l @(loc_8c1C242C,pc),r2 ; r2 set to 0x8C34B1DF
mov.b @r2,r5
mov.l r0,@r15
mov.l @(loc_8c1C2418,pc),r3 ; r3 set to 0x8C34B195
mov.b @r3,r0
extu.b r0,r0
cmp/eq 0x00,r0
bt loc_8c1C2430
cmp/eq 0x01,r0
bt loc_8c1C2476
cmp/eq 0x02,r0
bt loc_8c1C24A0
cmp/eq 0x03,r0
bf loc_8c1C23DE
bra loc_8c1C258C
nop

loc_8c1C23DE:
cmp/eq 0x04,r0
bf loc_8c1C23E6
bra loc_8c1C25F8
nop

loc_8c1C23E6:
cmp/eq 0x06,r0
bf loc_8c1C23EE
bra loc_8c1C26BE
nop

loc_8c1C23EE:
cmp/eq 0x07,r0
bf loc_8c1C23F6
bra loc_8c1C26D0
nop

loc_8c1C23F6:
cmp/eq 0x08,r0
bt loc_8c1C2488
cmp/eq 0x09,r0
bf loc_8c1C2402
bra loc_8c1C2698
nop

loc_8c1C2402:
cmp/eq 0x0A,r0
bf loc_8c1C240A
bra loc_8c1C26A6
nop

loc_8c1C240A:
bra loc_8c1C26F0
nop
#data 0x0000

#align4
loc_8c1C2410:
#data bank19.loc_8c19B3A0

loc_8c1C2414:
#data 0x8C34B194

#align4
loc_8c1C2418:
#data 0x8C34B195

#align4
loc_8c1C241C:
#data bank1b.loc_8c1bF690

loc_8c1C2420:
#data bank19.loc_8c19B3D4

loc_8c1C2424:
#data 0x8C34B18C

#align4
loc_8c1C2428:
#data 0x8C34B184

#align4
loc_8c1C242C:
#data 0x8C34B1DF


loc_8c1C2430:
mov r9,r4
add 0x07,r4
mov.b @r4,r0
extu.b r0,r0
tst 0x20,r0
bf loc_8c1C2450
mov.b @r4,r0
or 0x20,r0
mov.b r0,@r4
mov.w @(loc_8c1C251C,pc),r0 ; r0 set to 0x80
mov.l @r13,r5
mov.l @(r0,r5),r5
bsr loc_8c1C2D44
mov 0x01,r4 ; r4 set to 0x01
bra loc_8c1C26F0
nop

loc_8c1C2450:
bsr loc_8c1C2DBA
nop
extu.b r0,r4
extu.w r4,r0
cmp/eq 0x01,r0
bf loc_8c1C246A
bsr loc_8c1C2BFC
nop
mov.l @(loc_8c1C2520,pc),r4 ; r4 set to 0x8C34B190
mov.l @r4,r3
add 0xFF,r3
bra loc_8c1C26C8
mov.l r3,@r4

loc_8c1C246A:
cmp/eq 0x02,r0
bt loc_8c1C2472
bra loc_8c1C26F0
nop

loc_8c1C2472:
bra loc_8c1C26C8
nop

loc_8c1C2476:
jsr @r14
nop
exts.b r0,r0
tst r0,r0
bf loc_8c1C2484
bra loc_8c1C26F0
nop

loc_8c1C2484:
bra loc_8c1C26C8
nop

loc_8c1C2488:
jsr @r14
nop
exts.b r0,r0
tst r0,r0
bf loc_8c1C2496
bra loc_8c1C26F0
nop

loc_8c1C2496:
mov.l @(loc_8c1C2524,pc),r3 ; r3 set to 0x8C1A0108
jsr @r3
mov 0x00,r4 ; r4 set to 0x00
bra loc_8c1C26C8
nop

loc_8c1C24A0:
extu.b r5,r5
mov.l @(loc_8c1C2528,pc),r13 ; r13 set to 0x8C34B1E0
tst r5,r5
bt loc_8c1C24DC
jsr @r14
nop
exts.b r0,r0
tst r0,r0
bf loc_8c1C24B6
bra loc_8c1C26F0
nop

loc_8c1C24B6:
bsr loc_8c1C2CFC
nop
mov.l @(loc_8c1C252C,pc),r4 ; r4 set to 0x8C34B184
jsr @r11
mov 0x16,r5 ; r5 set to 0x16
mov 0x64,r5 ; r5 set to 0x64
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@r13
mov.b @(0x07,r10),r0
mov.l @(loc_8c1C2530,pc),r4 ; r4 set to 0x8C34B188
extu.b r0,r0
mulu.w r5,r0
jsr @r11
sts macl,r5
mov.l @(loc_8c1C2534,pc),r3 ; r3 set to 0x8C1BF62A
jsr @r3
nop
bra loc_8c1C26F0
nop

loc_8c1C24DC:
mov.b @r13,r0
extu.b r0,r0
cmp/eq 0x01,r0
bf loc_8c1C2540
mov.l @(loc_8c1C2538,pc),r1 ; r1 set to 0x8C19CE00
jsr @r1
mov 0x19,r4 ; r4 set to 0x19
exts.b r0,r0
tst r0,r0
bt loc_8c1C24FC
mov.l @(loc_8c1C252C,pc),r4 ; r4 set to 0x8C34B184
mov.w @(loc_8c1C251E,pc),r5 ; r5 set to 0x1F4
jsr @r11
nop
bra loc_8c1C250C
nop

loc_8c1C24FC:
mov.l @(loc_8c1C252C,pc),r3 ; r3 set to 0x8C34B184
jsr @r14
mov.l @r3,r4
exts.b r0,r0
tst r0,r0
bt loc_8c1C250C
bra loc_8c1C26C8
nop

loc_8c1C250C:
mov.l @(loc_8c1C253C,pc),r1 ; r1 set to 0x8C1BF690
jsr @r1
nop
extu.b r0,r0
cmp/eq 0x02,r0
bf loc_8c1C256C
bra loc_8c1C268E
nop

loc_8c1C251C:
#data 0x0080

loc_8c1C251E:
#data 0x01F4

#align4
loc_8c1C2520:
#data 0x8C34B190

#align4
loc_8c1C2524:
#data bank1a.loc_8c1a0108

loc_8c1C2528:
#data 0x8C34B1E0

#align4
loc_8c1C252C:
#data 0x8C34B184

#align4
loc_8c1C2530:
#data 0x8C34B188

#align4
loc_8c1C2534:
#data bank1b.loc_8c1bF62A

loc_8c1C2538:
#data bank19.loc_8c19CE00

loc_8c1C253C:
#data bank1b.loc_8c1bF690


loc_8c1C2540:
mov.l @(loc_8c1C2640,pc),r1 ; r1 set to 0x8C19CE00
jsr @r1
mov 0x19,r4 ; r4 set to 0x19
exts.b r0,r0
tst r0,r0
bf loc_8c1C2556
mov.l @(loc_8c1C2644,pc),r4 ; r4 set to 0x8C34B184
jsr @r11
mov 0x16,r5 ; r5 set to 0x16
bra loc_8c1C256C
nop

loc_8c1C2556:
#data 0xD33B
#data 0x64324E0B
#data 0x2008600E
#data 0xD4388904
#data 0x9567E101
#data 0x2D104B0B


loc_8c1C256C:
mov.l @(loc_8c1C2648,pc),r3 ; r3 set to 0x8C34B188
jsr @r14
mov.l @r3,r4
exts.b r0,r0
tst r0,r0
bf loc_8c1C257C
bra loc_8c1C26F0
nop

loc_8c1C257C:
mov.b @r8,r0
extu.b r0,r0
tst 0x40,r0
bt loc_8c1C2588
bra loc_8c1C26F0
mov 0x07,r12

loc_8c1C2588:
bra loc_8c1C26F0
mov 0x04,r12

loc_8c1C258C:
jsr @r14
mov.l @r15,r4
exts.b r0,r0
tst r0,r0
bt loc_8c1C25E8
mov.l @(loc_8c1C2644,pc),r2 ; r2 set to 0x8C34B184
jsr @r14
mov.l @r2,r4
exts.b r0,r0
tst r0,r0
bf loc_8c1C25A6
bra loc_8c1C26F0
nop

loc_8c1C25A6:
mov r9,r4
mov.b @(0x09,r4),r0
extu.b r0,r0
tst 0x80,r0
bt loc_8c1C25D6
mov.b @(0x02,r4),r0
extu.b r0,r0
tst 0x40,r0
bt loc_8c1C25BC
bra loc_8c1C26C8
nop

loc_8c1C25BC:
mov.b @(0x09,r4),r0
and 0x7F,r0
mov.b r0,@(0x09,r4)
mov.l @(loc_8c1C264C,pc),r3 ; r3 set to 0x8C19FE46
jsr @r3
mov 0x01,r4 ; r4 set to 0x01
mov.l @(loc_8c1C2650,pc),r2 ; r2 set to 0x8C19D25A
jsr @r2
nop
mov.b @(0x02,r9),r0
or 0x40,r0
bra loc_8c1C25E8
mov.b r0,@(0x02,r9)

loc_8c1C25D6:
#data 0x8449
#data 0x8049CB80
#data 0x430BD31B
#data 0xD21CE400
#data 0x0009420B


loc_8c1C25E8:
mov.w @(loc_8c1C263A,pc),r0 ; r0 set to 0xAE
mov.l @r13,r5
mov.l @(loc_8c1C2644,pc),r4 ; r4 set to 0x8C34B184
mov.w @(r0,r5),r5
jsr @r11
extu.w r5,r5
bra loc_8c1C26F0
nop

loc_8c1C25F8:
extu.b r5,r5
tst r5,r5
bt loc_8c1C2658
jsr @r14
nop
exts.b r0,r0
tst r0,r0
bf loc_8c1C260C
bra loc_8c1C26F0
nop

loc_8c1C260C:
bsr loc_8c1C2CFC
nop
mov.l @r13,r11
mov r11,r0
nop
mov.w @(loc_8c1C263C,pc),r1 ; r1 set to 0xB2
mov.w @(r0,r1),r0
extu.w r0,r0
tst 0x08,r0
bt/s loc_8c1C262A
mov r10,r14
mov.w @(loc_8c1C263E,pc),r0 ; r0 set to 0x84
mov.l @(r0,r11),r5
bra loc_8c1C2630
mov.b @(0x06,r14),r0

loc_8c1C262A:
mov.w @(loc_8c1C263E,pc),r0 ; r0 set to 0x84
mov.l @(r0,r11),r5
mov.b @(0x07,r14),r0

loc_8c1C2630:
bsr loc_8c1C2D44
mov r0,r4 ; r4 set to 0x84
bra loc_8c1C26F0
nop
#data 0x01F4

loc_8c1C263A:
#data 0x00AE

loc_8c1C263C:
#data 0x00B2

loc_8c1C263E:
#data 0x0084

#align4
loc_8c1C2640:
#data bank19.loc_8c19CE00

loc_8c1C2644:
#data 0x8C34B184

#align4
loc_8c1C2648:
#data 0x8C34B188

#align4
loc_8c1C264C:
#data bank19.loc_8c19FE46

loc_8c1C2650:
#data bank19.loc_8c19D25A

loc_8c1C2654:
#data bank19.loc_8c19D24C


loc_8c1C2658:
bsr loc_8c1C2DBA
nop
extu.b r0,r5
extu.w r5,r4
mov r4,r0
nop
cmp/eq 0x01,r0
bf loc_8c1C2670
mov.l @(loc_8c1C27A0,pc),r3 ; r3 set to 0x8C34B195
mov 0x07,r2 ; r2 set to 0x07
bra loc_8c1C2682
mov.b r2,@r3

loc_8c1C2670:
cmp/eq 0x02,r0
bf loc_8c1C2682
mov.b @r8,r0
extu.b r0,r0
tst 0x40,r0
bt loc_8c1C2680
bra loc_8c1C2682
mov 0x05,r12

loc_8c1C2680:
#data 0xEC04

loc_8c1C2682:
#data 0xD348
#data 0x0009430B
#data 0x8802600C
#data 0x8B30


loc_8c1C268E:
mov.l @(loc_8c1C27A8,pc),r2 ; r2 set to 0x8C34B03A
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@r2 ; r2 ??
bra loc_8c1C26F0
mov 0x06,r12

loc_8c1C2698:
jsr @r14
nop
exts.b r0,r0
tst r0,r0
bt loc_8c1C26F0
bra loc_8c1C26C8
nop

loc_8c1C26A6:
#data 0x4E0B
#data 0x600E0009
#data 0x89022008
#data 0xE207D33B
#data 0x2320

loc_8c1C26B6:
#data 0xB321
#data 0xA0190009
#data 0x0009

loc_8c1C26BE:
#data 0x4E0B
#data 0x600E64F2
#data 0x8B132008


loc_8c1C26C8:
mov.l @(loc_8c1C27A0,pc),r3 ; r3 set to 0x8C34B195
mov 0x07,r2 ; r2 set to 0x07
bra loc_8c1C26F0
mov.b r2,@r3

loc_8c1C26D0:
bsr loc_8c1C2708
nop
extu.b r0,r0
cmp/eq 0x01,r0
bt loc_8c1C26E2
cmp/eq 0x02,r0
bt loc_8c1C26EA
bra loc_8c1C26F0
nop

loc_8c1C26E2:
mov.l @(loc_8c1C27AC,pc),r2 ; r2 set to 0x8C34B194
mov 0x03,r3 ; r3 set to 0x03
bra loc_8c1C26F0
mov.b r3,@r2

loc_8c1C26EA:
bra loc_8c1C26F0
mov 0x02,r12

loc_8c1C26EE:
#data 0xEC01


loc_8c1C26F0:
mov r12,r0
nop

loc_8c1C26F4:
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

loc_8c1C2708:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
mov 0x00,r8 ; r8 set to 0x00
mov.l @(loc_8c1C27BC,pc),r3 ; r3 set to 0x8C34B190
mov.l @(loc_8c1C27C4,pc),r1 ; r1 set to 0x8C34B1DF
mov.l @r3,r4
mov.l @(loc_8c1C27C0,pc),r2 ; r2 set to 0x8C34B1F8
mov.b @r4,r0
sts.l pr,@-r15
mov.l @(loc_8c1C27B0,pc),r9 ; r9 set to 0x8C34AF50
extu.b r0,r0
mov.b @r1,r6
cmp/eq 0x20,r0
mov.l @r2,r14
mov r9,r11 ; r11 set to 0x8C34AF50
mov.l @(loc_8c1C27A0,pc),r12 ; r12 set to 0x8C34B195
mov.l @(loc_8c1C27B4,pc),r10 ; r10 set to 0x8C34B288
mov.l @(loc_8c1C27B8,pc),r13 ; r13 set to 0x8C1B3EEC
bf/s loc_8c1C273E
mov r10,r5 ; r5 set to 0x8C34B288
bra loc_8c1C2A44
nop

loc_8c1C273E:
cmp/eq 0x21,r0
bf loc_8c1C2746
bra loc_8c1C28F8
nop

loc_8c1C2746:
cmp/eq 0x24,r0
bf loc_8c1C274E
bra loc_8c1C2968
nop

loc_8c1C274E:
cmp/eq 0x2C,r0
bt loc_8c1C2836
cmp/eq 0x2D,r0
bf loc_8c1C275A
bra loc_8c1C2A44
nop

loc_8c1C275A:
cmp/eq 0x2E,r0
bf loc_8c1C2762
bra loc_8c1C2A44
nop

loc_8c1C2762:
cmp/eq 0x3B,r0
bf loc_8c1C276A
bra loc_8c1C2876
nop

loc_8c1C276A:
cmp/eq 0x3D,r0
bf loc_8c1C2772
bra loc_8c1C286E
nop

loc_8c1C2772:
cmp/eq 0x3E,r0
bt loc_8c1C2848
cmp/eq 0x40,r0
bf loc_8c1C277E
bra loc_8c1C2890
nop

loc_8c1C277E:
cmp/eq 0x50,r0
bt loc_8c1C280E
cmp/eq 0x52,r0
bt loc_8c1C282E
cmp/eq 0x54,r0
bt loc_8c1C27C8
cmp/eq 0x57,r0
bf loc_8c1C2792
bra loc_8c1C2920
nop

loc_8c1C2792:
cmp/eq 0x5E,r0
bf loc_8c1C279A
bra loc_8c1C2956
nop

loc_8c1C279A:
bra loc_8c1C29A8
nop
#data 0x0000

#align4
loc_8c1C27A0:
#data 0x8C34B195

#align4
loc_8c1C27A4:
#data bank1b.loc_8c1bF690

loc_8c1C27A8:
#data 0x8C34B03A

#align4
loc_8c1C27AC:
#data 0x8C34B194

#align4
loc_8c1C27B0:
#data 0x8C34AF50

#align4
loc_8c1C27B4:
#data 0x8C34B288

#align4
loc_8c1C27B8:
#data bank1b.loc_8c1b3EEC

loc_8c1C27BC:
#data 0x8C34B190

#align4
loc_8c1C27C0:
#data 0x8C34B1F8

#align4
loc_8c1C27C4:
#data 0x8C34B1DF

#align4
loc_8c1C27C8:
#data 0x600C84A7
#data 0x890DC820
#data 0x6000D03F
#data 0xC820600C
#data 0xD33F8908
#data 0x430BD23D
#data 0x600E6422
#data 0x8B012008
#data 0x2C30E306

#align4
loc_8c1C27EC:
#data 0x916BD23B
#data 0x001D6022
#data 0xC801600D
#data 0xA1238B01
#data 0x0009

loc_8c1C27FE:
#data 0xB254
#data 0x84A70009
#data 0x80A7CB20
#data 0xA00E849E
#data 0xC9DF


loc_8c1C280E:
mov.w @(loc_8c1C28C8,pc),r0 ; r0 set to 0xB0
mov.w @(r0,r14),r0 ; r0 ??? bc r14 is ???
extu.w r0,r0
tst 0x02,r0
bf loc_8c1C281C
bra loc_8c1C2A44
nop

loc_8c1C281C:
bsr loc_8c1C2BFC
nop
mov.b @(0x07,r10),r0
or 0x20,r0
mov.b r0,@(0x07,r10)
mov.b @(0x0E,r9),r0
or 0x20,r0

loc_8c1C282A:
bra loc_8c1C2A44
mov.b r0,@(0x0E,r9)

loc_8c1C282E:
mov.b @(0x0E,r11),r0
and 0x7F,r0
bra loc_8c1C2A44
mov.b r0,@(0x0E,r11)

loc_8c1C2836:
mov.b @(0x08,r11),r0
mov 0x64,r5 ; r5 set to 0x64
extu.b r0,r0

loc_8c1C283C:
mulu.w r5,r0
mov.l @(loc_8c1C28E0,pc),r4 ; r4 set to 0x8C34B184, r4 set to 0x8C34B184
jsr @r13
sts macl,r5
bra loc_8c1C29A2
nop

loc_8c1C2848:
mov.w @(loc_8c1C28CA,pc),r0 ; r0 set to 0xB2
mov.w @(r0,r14),r0 ; r0 ??? bc r14 is ???
extu.w r0,r0
tst 0x02,r0
bt loc_8c1C2868
mov r11,r5
add 0x3B,r5
mov.l @(loc_8c1C28E0,pc),r4 ; r4 set to 0x8C34B184
mov.b @r5,r5
jsr @r13
extu.b r5,r5
mov.l @(loc_8c1C28E4,pc),r3 ; r3 set to 0x8C1A0108
jsr @r3
mov 0x01,r4 ; r4 set to 0x01
bra loc_8c1C2952
mov 0x08,r2

loc_8c1C2868:
mov 0x07,r1 ; r1 set to 0x07
bra loc_8c1C2A44
mov.b r1,@r12

loc_8c1C286E:
mov.w @(loc_8c1C28CC,pc),r5 ; r5 set to 0xC8
mov.b @(0x08,r11),r0
bra loc_8c1C283C
extu.b r0,r0

loc_8c1C2876:
mov r5,r4
add 0x10,r4
mov.b @r4,r0
or 0x80,r0
mov.b r0,@r4
mov.b @r4,r0
or 0x01,r0
mov.b r0,@r4
mov.l @(loc_8c1C28E8,pc),r1 ; r1 set to 0x8C34B03A
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@r1 ; r1 ??
bra loc_8c1C2A44
mov 0x02,r8

loc_8c1C2890:
extu.b r6,r6
tst r6,r6
bt loc_8c1C28A4
mov.w @(loc_8c1C28CE,pc),r0 ; r0 set to 0xAC
mov.l @(loc_8c1C28E0,pc),r4 ; r4 set to 0x8C34B184
mov.w @(r0,r14),r5
jsr @r13
extu.w r5,r5
bra loc_8c1C28C4
nop

loc_8c1C28A4:
mov.l @(loc_8c1C28E0,pc),r4 ; r4 set to 0x8C34B184
jsr @r13
mov 0x16,r5 ; r5 set to 0x16
mov 0x64,r5 ; r5 set to 0x64
mov.l @(loc_8c1C28EC,pc),r3 ; r3 set to 0x8C34B1E0
mov 0x00,r2 ; r2 set to 0x00
mov.b r2,@r3 ; r3 ??
mov.b @(0x07,r9),r0
mov.l @(loc_8c1C28F0,pc),r4 ; r4 set to 0x8C34B188
extu.b r0,r0
mulu.w r5,r0
jsr @r13
sts macl,r5
mov.l @(loc_8c1C28F4,pc),r3 ; r3 set to 0x8C1BF62A
jsr @r3
nop

loc_8c1C28C4:
bra loc_8c1C2952
mov 0x02,r2

loc_8c1C28C8:
#data 0x00B0

loc_8c1C28CA:
#data 0x00B2

loc_8c1C28CC:
#data 0x00C8

loc_8c1C28CE:
#data 0x00AC
#data 0x8C34AF5E
#data 0x8C34B18C

#align4
loc_8c1C28D8:
#data bank1b.loc_8c1b3F0C
#data 0x8C34B1F8

#align4
loc_8c1C28E0:
#data 0x8C34B184

#align4
loc_8c1C28E4:
#data bank1a.loc_8c1a0108

loc_8c1C28E8:
#data 0x8C34B03A

#align4
loc_8c1C28EC:
#data 0x8C34B1E0

#align4
loc_8c1C28F0:
#data 0x8C34B188

#align4
loc_8c1C28F4:
#data bank1b.loc_8c1bF62A


loc_8c1C28F8:
mov.w @(loc_8c1C29CC,pc),r0 ; r0 set to 0xB2
mov.w @(loc_8c1C29CE,pc),r3 ; r3 set to 0x800
mov.w @(r0,r14),r1
extu.w r1,r1
tst r3,r1
bt loc_8c1C2908
bra loc_8c1C2A44
nop

loc_8c1C2908:
mov.b @(0x02,r5),r0
and 0xBF,r0
mov.b r0,@(0x02,r5)
mov.l @(loc_8c1C29D8,pc),r3 ; r3 set to 0x8C34B1F8
mov.w @(loc_8c1C29D0,pc),r0 ; r0 set to 0xAE
mov.l @r3,r5
mov.l @(loc_8c1C29DC,pc),r4 ; r4 set to 0x8C34B184
mov.w @(r0,r5),r5
jsr @r13
extu.w r5,r5
bra loc_8c1C29A4
mov 0x03,r3

loc_8c1C2920:
extu.b r6,r6
tst r6,r6
bt loc_8c1C2934
mov.w @(loc_8c1C29D2,pc),r0 ; r0 set to 0xAC
mov.l @(loc_8c1C29DC,pc),r4 ; r4 set to 0x8C34B184
mov.w @(r0,r14),r5
jsr @r13
extu.w r5,r5
bra loc_8c1C2950
nop

loc_8c1C2934:
mov.w @(loc_8c1C29CC,pc),r0 ; r0 set to 0xB2
mov.w @(r0,r14),r0 ; r0 ??? bc r14 is ???
extu.w r0,r0
tst 0x08,r0
bt loc_8c1C2946
mov.w @(loc_8c1C29D4,pc),r0 ; r0 set to 0x84
mov.l @(r0,r14),r5
bra loc_8c1C294C
mov.b @(0x06,r11),r0

loc_8c1C2946:
#data 0x9045
#data 0x84B705EE

#align4
loc_8c1C294C:
#data 0x6403B1FA

loc_8c1C2950:
#data 0xE204


loc_8c1C2952:
bra loc_8c1C2A44
mov.b r2,@r12

loc_8c1C2956:
mov.w @(loc_8c1C29D6,pc),r0 ; r0 set to 0xB0
mov.w @(r0,r14),r0 ; r0 ??? bc r14 is ???
extu.w r0,r0
tst 0x40,r0
bf loc_8c1C2A44
mov.b @(0x08,r5),r0
or 0x40,r0
bra loc_8c1C2A44
mov.b r0,@(0x08,r5)

#align4
loc_8c1C2968:
#data 0x4D0BD41C
#data 0x84A7E532
#data 0xC820600C
#data 0xD01A890D
#data 0x600C6000
#data 0x8908C820
#data 0xD218D319
#data 0x6422430B
#data 0x2008600E
#data 0xE3068B01
#data 0x2C30

loc_8c1C2992:
#data 0xB18A
#data 0x84A70009
#data 0x80A7CB20
#data 0xC9DF849E
#data 0x809E


loc_8c1C29A2:
mov 0x01,r3 ; r3 set to 0x01

loc_8c1C29A4:
bra loc_8c1C2A44
mov.b r3,@r12

loc_8c1C29A8:
mov.l @(loc_8c1C29EC,pc),r0 ; r0 set to 0x8C34B036
mov.b @r4,r1
mov.b @r0,r3
cmp/eq r3,r1
bf loc_8c1C29F0
extu.b r6,r6
tst r6,r6
bt loc_8c1C29C0
mov.w @(loc_8c1C29D2,pc),r0 ; r0 set to 0xAC
mov.w @(r0,r14),r5
bra loc_8c1C29C2
extu.w r5,r5

loc_8c1C29C0:
mov 0x4B,r5 ; r5 set to 0x4B

loc_8c1C29C2:
mov.l @(loc_8c1C29DC,pc),r4 ; r4 set to 0x8C34B184, r4 set to 0x8C34B184
jsr @r13
nop
bra loc_8c1C2A44
mov 0x01,r8

loc_8c1C29CC:
#data 0x00B2

loc_8c1C29CE:
#data 0x0800

loc_8c1C29D0:
#data 0x00AE

loc_8c1C29D2:
#data 0x00AC

loc_8c1C29D4:
#data 0x0084

loc_8c1C29D6:
#data 0x00B0

#align4
loc_8c1C29D8:
#data 0x8C34B1F8

#align4
loc_8c1C29DC:
#data 0x8C34B184
#data 0x8C34AF5E
#data 0x8C34B18C

#align4
loc_8c1C29E8:
#data bank1b.loc_8c1b3F0C

loc_8c1C29EC:
#data 0x8C34B036


loc_8c1C29F0:
mov.b @r4,r4
mov 0x30,r3 ; r3 set to 0x30
extu.b r4,r6
cmp/ge r3,r6
bf loc_8c1C2A04
mov 0x39,r1 ; r1 set to 0x39
cmp/gt r1,r6
bt loc_8c1C2A04
bra loc_8c1C2A38
add 0xD0,r4

loc_8c1C2A04:
mov r5,r0
nop
add 0x12,r0
mov.b @r0,r0
extu.b r0,r0
tst 0x04,r0
bf loc_8c1C2A36
mov 0x41,r2 ; r2 set to 0x41
extu.b r4,r5
cmp/ge r2,r5
bf loc_8c1C2A24
mov 0x44,r1 ; r1 set to 0x44
cmp/gt r1,r5
bt loc_8c1C2A24
bra loc_8c1C2A38
add 0xC9,r4

loc_8c1C2A24:
extu.b r4,r0
cmp/eq 0x2A,r0
bf loc_8c1C2A2E
bra loc_8c1C2A38
mov 0x0E,r4

loc_8c1C2A2E:
cmp/eq 0x23,r0
bf loc_8c1C2A36
bra loc_8c1C2A38
mov 0x0F,r4

loc_8c1C2A36:
#data 0x9442

#align4
loc_8c1C2A38:
#data 0x634C9241
#data 0x89013320
#data 0x0009B00F


loc_8c1C2A44:
mov.l @(loc_8c1C2AC8,pc),r2 ; r2 set to 0x8C34B190
mov.l @r2,r3
add 0x01,r3
mov.l r3,@r2 ; r2 ??? bc r3 is ???
mov r8,r0
nop
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

loc_8c1C2A62:
#data 0x2FE6
#data 0x2FC62FD6
#data 0x2FB6EC04
#data 0xD3192FA6
#data 0x6E329026
#data 0x02ED4F22
#data 0x622D9123
#data 0xDB14DA13
#data 0x8D3C2218
#data 0x62A36D43
#data 0x7212D313
#data 0x611C6120
#data 0x8D2921C8
#data 0x644C6430
#data 0x8B302448
#data 0x410BD10F
#data 0xD20DE401
#data 0x2230E301
#data 0x900BD10A
#data 0xD30D6512
#data 0x055DD40B
#data 0x655D430B
#data 0xA020E209
#data 0x00FF2B20
#data 0x010000B0
#data 0x000000AA

#align4
loc_8c1C2AC8:
#data 0x8C34B190
#data 0x8C34B288
#data 0x8C34B195
#data 0x8C34B1F8
#data 0x8C34B1DF

#align4
loc_8c1C2ADC:
#data bank19.loc_8c19FE4E
#data 0x8C34B184

#align4
loc_8c1C2AE4:
#data bank1b.loc_8c1b3EEC

loc_8c1C2AE8:
#data 0x2448644C
#data 0x90688907
#data 0xD434D235
#data 0x420B05ED
#data 0xE30A655D
#data 0x2B30

loc_8c1C2AFE:
#data 0x62A3
#data 0x63207212
#data 0x23C8633C
#data 0xD3308903
#data 0x64D3430B
#data 0x6D03

loc_8c1C2B12:
#data 0xD22F
#data 0x64D3420B
#data 0x740764A3
#data 0x600C6040
#data 0x8B0AC820
#data 0x6230D32B
#data 0x22C8622C
#data 0xE0008902
#data 0x2B00A003

#align4
loc_8c1C2B34:
#data 0xCB206040
#data 0x2400

loc_8c1C2B3A:
#data 0x4F26
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1C2B48:
#data 0xD3234F22
#data 0x0009430B
#data 0x2008600E
#data 0xD421891B
#data 0x8447E508
#data 0x2058600C
#data 0x844B8918
#data 0xC810600C
#data 0x84448B14
#data 0xC810600C
#data 0x84468B10
#data 0xC802600C
#data 0xD0198B0C
#data 0x600C6000
#data 0x8B04C880
#data 0x6320D217
#data 0x2358633C
#data 0x8B02

loc_8c1C2B8E:
#data 0x4F26
#data 0xE001000B
;-------------------------------------------------------------------------------

#align4
loc_8c1C2B94:
#data 0x4F26E000
#data 0x0009000B
;-------------------------------------------------------------------------------

loc_8c1C2B9C:
extu.b r4,r0
cmp/eq 0x03,r0
bt loc_8c1C2BBA
cmp/eq 0x04,r0
bt loc_8c1C2BBE
cmp/eq 0x05,r0
bt loc_8c1C2BE8
cmp/eq 0x06,r0
bt loc_8c1C2BEC
cmp/eq 0x07,r0
bt loc_8c1C2BF0
cmp/eq 0x08,r0
bt loc_8c1C2BF4
bra loc_8c1C2BF6
nop

loc_8c1C2BBA:
bra loc_8c1C2BF6
mov 0x00,r4

loc_8c1C2BBE:
bra loc_8c1C2BF6
mov 0x03,r4
#data 0x00AC
#data 0x8C34B184

#align4
loc_8c1C2BC8:
#data bank1b.loc_8c1b3EEC

loc_8c1C2BCC:
#data bank1b.loc_8c1b0DE6

loc_8c1C2BD0:
#data bank19.loc_8c19B3E6
#data 0x8C34B039

#align4
loc_8c1C2BD8:
#data bank19.loc_8c19FED2
#data 0x8C34B288
#data 0x8C34AF5E
#data 0x8C34AF6F


loc_8c1C2BE8:
bra loc_8c1C2BF6
mov 0x06,r4

loc_8c1C2BEC:
bra loc_8c1C2BF6
mov 0x07,r4

loc_8c1C2BF0:
bra loc_8c1C2BF6
mov 0x08,r4

loc_8c1C2BF4:
#data 0xE463


loc_8c1C2BF6:
mov.l @(loc_8c1C2D14,pc),r3 ; r3 set to 0x8C1AED24
jmp @r3
mov 0x00,r5

loc_8c1C2BFC:
mov.l @(loc_8c1C2D1C,pc),r0 ; r0 set to 0x8C34AF66
mov 0x64,r5 ; r5 set to 0x64
sts.l pr,@-r15
mov.b @r0,r0 ; r0 ??
mov.l @(loc_8c1C2D18,pc),r3 ; r3 set to 0x8C34B1F8
extu.b r0,r0
tst 0x80,r0
add 0xF8,r15
bt/s loc_8c1C2C3C
mov.l @r3,r7
mov 0x28,r0 ; r0 set to 0x28
mov.w @(r0,r7),r6
mov 0x2C,r0 ; r0 set to 0x2C
mov.w @(r0,r7),r2
mov r6,r4
sub r6,r5 ; r5 ??? bc r6 is ???
mov.w r2,@r15
extu.w r4,r4
mov.w @r15,r6
extu.w r5,r5
shlr r4
extu.w r6,r6
shlr r5
shlr r6
mov.l r6,@(0x04,r15)
mov.w @(loc_8c1C2D0E,pc),r2 ; r2 set to 0x258
cmp/ge r2,r6
bt loc_8c1C2C38
bra loc_8c1C2C48
mov r2,r6

loc_8c1C2C38:
bra loc_8c1C2C48
mov.l @(0x04,r15),r6

#align4
loc_8c1C2C3C:
#data 0x067DE026
#data 0x3568E02A
#data 0x067D6463

#align4
loc_8c1C2C48:
#data 0x92629062
#data 0x633D037D
#data 0x891C2328
#data 0x6313614D
#data 0x41004308
#data 0xD330313C
#data 0x430BE70A
#data 0xD32E6073
#data 0x71056103
#data 0x6073430B
#data 0x6313615D
#data 0x41004308
#data 0xD329313C
#data 0x430B340C
#data 0xD3276073
#data 0x71056103
#data 0x6073430B
#data 0x350C

loc_8c1C2C8E:
#data 0xD225
#data 0x0009420B
#data 0x430BD324
#data 0xD3240009
#data 0xCB046030
#data 0x7F082300
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1C2CAA:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8c1C2D2C,pc),r3 ; r3 set to 0x8C34B29A
add 0xFC,r15
mov.b @r3,r0
and 0xFB,r0
mov.b r0,@r3 ; r3 ??? bc r0 is ???
mov.l @(loc_8c1C2D18,pc),r14 ; r14 set to 0x8C34B1F8
mov 0x23,r0 ; r0 set to 0x23
mov.l @(loc_8c1C2D30,pc),r2 ; r2 set to 0x8C19B148
mov.l @r14,r5
mov.l @r14,r4
mov.b @(r0,r5),r5
mov 0x22,r0 ; r0 set to 0x22
jsr @r2
mov.b @(r0,r4),r4
mov.l @r14,r3
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r3),r2 ; r2 ??? bc r3 is ???
extu.b r2,r2
cmp/pl r2
bf loc_8c1C2CE8
mov.l @r14,r5
mov 0x25,r0 ; r0 set to 0x25
mov.l @r14,r4
mov.b @(r0,r5),r5
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r4
extu.b r5,r5
bra loc_8c1C2CF2
extu.b r4,r4

loc_8c1C2CE8:
mov.l @(loc_8c1C2D34,pc),r5 ; r5 set to 0x8C34AF5B
mov.b @r5,r5 ; r5 ??
extu.b r5,r5
mov.w r5,@r15
mov.w @r15,r4

loc_8c1C2CF2:
add 0x04,r15
mov.l @(loc_8c1C2D38,pc),r3 ; r3 set to 0x8C19B2D8, r3 set to 0x8C19B2D8
lds.l @r15+,pr
jmp @r3
mov.l @r15+,r14

loc_8c1C2CFC:
sts.l pr,@-r15
mov.l @(loc_8c1C2D3C,pc),r3 ; r3 set to 0x8C19FE4E
jsr @r3
mov 0x00,r4 ; r4 set to 0x00
lds.l @r15+,pr
mov.l @(loc_8c1C2D40,pc),r3 ; r3 set to 0x8C34B1DF
mov 0x00,r2 ; r2 set to 0x00
rts
mov.b r2,@r3
;-------------------------------------------------------------------------------

loc_8c1C2D0E:
#data 0x0258
#data 0x100000B2

#align4
loc_8c1C2D14:
#data bank1a.loc_8c1aED24

loc_8c1C2D18:
#data 0x8C34B1F8

#align4
loc_8c1C2D1C:
#data 0x8C34AF66

#align4
loc_8c1C2D20:
#data bank12.loc_8c129128

loc_8c1C2D24:
#data bank19.loc_8c19B326

loc_8c1C2D28:
#data bank19.loc_8c19B290

loc_8c1C2D2C:
#data 0x8C34B29A

#align4
loc_8c1C2D30:
#data bank19.loc_8c19B148

loc_8c1C2D34:
#data 0x8C34AF5B

#align4
loc_8c1C2D38:
#data bank19.loc_8c19B2D8

loc_8c1C2D3C:
#data bank19.loc_8c19FE4E

loc_8c1C2D40:
#data 0x8C34B1DF

#align4
loc_8c1C2D44:
#data 0x2FD62FE6
#data 0x7FF84F22
#data 0x1F512F40
#data 0xDE3CE500
#data 0xD33C9073
#data 0x430B64E2
#data 0x62E2044D
#data 0x032DE070
#data 0x4315633D
#data 0xD2388B02
#data 0x0009420B

#align4
loc_8c1C2D70:
#data 0x53F1D237
#data 0xDD372232
#data 0x4D0BD437
#data 0xD3376533
#data 0x600C6030
#data 0x8B0BC810
#data 0x9159D22E
#data 0x001D6022
#data 0xC804600D
#data 0x90548904
#data 0x055D65E2
#data 0x655DA005

#align4
loc_8c1C2DA0:
#data 0xE36465F0
#data 0x253E655C
#data 0x051A

loc_8c1C2DAA:
#data 0xD42D
#data 0x00094D0B
#data 0x4F267F08
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1C2DBA:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
mov.l @(loc_8c1C2E70,pc),r14 ; r14 set to 0x8C353978
mov.l @(loc_8c1C2E74,pc),r4 ; r4 set to 0x8C34B298
mov.l @(loc_8c1C2E6C,pc),r12 ; r12 set to 0x8C1B3F0C
mov.l @(loc_8c1C2E64,pc),r10 ; r10 set to 0x8C35398C
mov.l @(loc_8c1C2E68,pc),r11 ; r11 set to 0x8C353985
mov.b @r4,r0
extu.b r0,r0
tst 0x02,r0
bt loc_8c1C2DE4
mov.b @r4,r0
and 0xFD,r0
bra loc_8c1C2F4E
mov.b r0,@r4

loc_8c1C2DE4:
mov.l @(loc_8c1C2E78,pc),r3 ; r3 set to 0x8C34B195
mov.b @r3,r0
extu.b r0,r0
cmp/eq 0x04,r0
bt loc_8c1C2E80
mov.l @(loc_8c1C2E7C,pc),r4 ; r4 set to 0x8C34AF6B
mov 0x04,r2 ; r2 set to 0x04
mov.b @r4,r4 ; r4 ??
extu.b r4,r4
tst r4,r2
bt loc_8c1C2DFE
bra loc_8c1C2F4E
nop

loc_8c1C2DFE:
mov 0x03,r0 ; r0 set to 0x03
and r4,r0 ; r0 ??? bc r4 is ???
cmp/eq 0x03,r0
bf loc_8c1C2E0A
bra loc_8c1C2F4E
nop

loc_8c1C2E0A:
#data 0xD314
#data 0x600C6030
#data 0x890AC810
#data 0x6122D20E
#data 0x8B312118
#data 0x6102D009
#data 0x031DE070
#data 0x4315633D
#data 0x892A

loc_8c1C2E2A:
#data 0xD20D
#data 0x64224C0B
#data 0x2008600E
#data 0xA0988B01
#data 0x0009

loc_8c1C2E3A:
#data 0xA088
#data 0x00B40009
#data 0x00A800B2
#data 0x8C34B1F8

#align4
loc_8c1C2E48:
#data bank1b.loc_8c1b28B4

loc_8c1C2E4C:
#data bank1b.loc_8c1b0616
#data 0x8C34B1EC

#align4
loc_8c1C2E54:
#data bank1b.loc_8c1b3EEC
#data 0x8C34B1E4
#data 0x8C34B039
#data 0x8C34B1E8

#align4
loc_8c1C2E64:
#data 0x8C35398C

#align4
loc_8c1C2E68:
#data 0x8C353985

#align4
loc_8c1C2E6C:
#data bank1b.loc_8c1b3F0C

loc_8c1C2E70:
#data 0x8C353978

#align4
loc_8c1C2E74:
#data 0x8C34B298

#align4
loc_8c1C2E78:
#data 0x8C34B195

#align4
loc_8c1C2E7C:
#data 0x8C34AF6B


loc_8c1C2E80:
mov.l @(loc_8c1C2F80,pc),r2 ; r2 set to 0x8C1B2A48
jsr @r2
nop
mov.b r0,@r14
mov 0x01,r9 ; r9 set to 0x01
mov.b @r14,r3
mov.l @(loc_8c1C2F84,pc),r8 ; r8 set to 0x8C353984
tst r3,r3
bf/s loc_8c1C2EAE
mov 0x00,r13 ; r13 set to 0x00
mov.l @(loc_8c1C2F84,pc),r2 ; r2 set to 0x8C353984
mov.b @r2,r0
extu.b r0,r0
cmp/eq 0x01,r0
bf loc_8c1C2EAE
mov.l @(loc_8c1C2F8C,pc),r2 ; r2 set to 0x8C1B3EEC
mov.l @(loc_8c1C2F88,pc),r4 ; r4 set to 0x8C353988
jsr @r2
mov 0x07,r5 ; r5 set to 0x07
mov.b r9,@r14
mov.b r13,@r8 ; r8 ??
bra loc_8c1C2EE6
mov.b r9,@r11

loc_8c1C2EAE:
mov.b @r14,r2
tst r2,r2
bf loc_8c1C2EE0
mov.l @(loc_8c1C2F84,pc),r3 ; r3 set to 0x8C353984
mov.b @r3,r1
tst r1,r1
bf loc_8c1C2EE0
mov.l @(loc_8c1C2F90,pc),r2 ; r2 set to 0x8C353985
mov.b @r2,r0
tst r0,r0
bt loc_8c1C2EE0
mov.l @(loc_8c1C2F88,pc),r0 ; r0 set to 0x8C353988
jsr @r12
mov.l @r0,r4
exts.b r0,r0 ; r0 ??
tst r0,r0
bt loc_8c1C2EDC
mov 0x07,r2 ; r2 set to 0x07
mov.b r13,@r14
mov.b r13,@r8
mov.b r13,@r11
bra loc_8c1C2EE8
mov.l r2,@r10

loc_8c1C2EDC:
bra loc_8c1C2EE6
mov.b r9,@r14

#align4
loc_8c1C2EE0:
#data 0x282062E0
#data 0x2BD0

loc_8c1C2EE6:
#data 0x2AD2

#align4
loc_8c1C2EE8:
#data 0xE070D22A
#data 0x6322

loc_8c1C2EEE:
#data 0x013D
#data 0x4115611D
#data 0xD5288B1A
#data 0x635061E0
#data 0x89153130
#data 0xD626D427
#data 0x61626342
#data 0x63A23138
#data 0xD3253138
#data 0x60622312
#data 0x302862A2
#data 0x62E02402
#data 0xD1222520
#data 0x410B6532
#data 0x600E64E0
#data 0x8B102008

#align4
loc_8c1C2F2C:
#data 0xE200D31F
#data 0x35266532
#data 0x60B08B11
#data 0x8B0E2008
#data 0x211861E0
#data 0xD11B8907
#data 0x64124C0B
#data 0x2008600E
#data 0x8905


loc_8c1C2F4E:
bra loc_8c1C2F6C
mov 0x01,r0

loc_8c1C2F52:
#data 0xD10E
#data 0x410BD416
#data 0x0009

loc_8c1C2F5A:
#data 0xD316
#data 0x64324C0B
#data 0x2008600E
#data 0xA0018901
#data 0xE002

loc_8c1C2F6A:
#data 0xE000


loc_8c1C2F6C:
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
loc_8c1C2F80:
#data bank1b.loc_8c1b2A48

loc_8c1C2F84:
#data 0x8C353984

#align4
loc_8c1C2F88:
#data 0x8C353988

#align4
loc_8c1C2F8C:
#data bank1b.loc_8c1b3EEC

loc_8c1C2F90:
#data 0x8C353985
#data 0x8C34B1F8
#data 0x8C353979
#data 0x8C34B2CC
#data 0x8C353980
#data 0x8C35397C

#align4
loc_8c1C2FA8:
#data bank1b.loc_8c1b0C86
#data 0x8C34B1EC
#data 0x8C34B1E4
#data 0x8C34B1E8


loc_8c1C2FB8:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
mov.l @(loc_8c1C3148,pc),r0 ; r0 set to 0x8C34B28E
add 0xF4,r15
mov.b @r0,r0 ; r0 ??
extu.b r0,r0
tst 0x06,r0
bf loc_8c1C2FD8
bra loc_8c1C3738
nop

loc_8c1C2FD8:
mov.l @(loc_8c1C3154,pc),r11 ; r11 set to 0x8C34B0B0
mov 0x01,r10 ; r10 set to 0x01
mov.l @(loc_8c1C315C,pc),r2 ; r2 set to 0x8C34B0BC
mov 0x10,r13 ; r13 set to 0x10
mov.b @r11,r0
mov 0x00,r14 ; r14 set to 0x00
mov.l @(loc_8c1C3160,pc),r3 ; r3 set to 0x8C34B0B1
mov.l @r2,r4
extu.b r0,r0
mov.b @r3,r5
cmp/eq 0x00,r0
mov.l @(loc_8c1C314C,pc),r8 ; r8 set to 0x8C1B3F0C
mov.l @(loc_8c1C3150,pc),r9 ; r9 set to 0x8C3539A0
mov.l @(loc_8c1C3158,pc),r12 ; r12 set to 0x8C1B3EEC
bt/s loc_8c1C3034
extu.b r5,r5
cmp/eq 0x01,r0
bt loc_8c1C3064
cmp/eq 0x02,r0
bt loc_8c1C30B2
cmp/eq 0x03,r0
bf loc_8c1C3008
bra loc_8c1C3220
nop

loc_8c1C3008:
cmp/eq 0x04,r0
bf loc_8c1C3010
bra loc_8c1C34F8
nop

loc_8c1C3010:
cmp/eq 0x05,r0
bf loc_8c1C3018
bra loc_8c1C3532
nop

loc_8c1C3018:
cmp/eq 0x06,r0
bf loc_8c1C3020
bra loc_8c1C35BC
nop

loc_8c1C3020:
cmp/eq 0x07,r0
bf loc_8c1C3028
bra loc_8c1C3678
nop

loc_8c1C3028:
cmp/eq 0x08,r0
bf loc_8c1C3030
bra loc_8c1C370E
nop

loc_8c1C3030:
bra loc_8c1C3738
nop

loc_8c1C3034:
mov.l @(loc_8c1C3164,pc),r0 ; r0 set to 0x8C34B2CC
mov.l @(loc_8c1C3168,pc),r3 ; r3 set to 0x8C34B0D0
mov.l @r0,r1
mov.l r1,@r3 ; r3 ??? bc r1 is ???
mov.l @(loc_8c1C316C,pc),r2 ; r2 set to 0x8C34B0B4
mov.b r14,@r2 ; r2 ??? bc r14 is ???
mov.l @(loc_8c1C3174,pc),r5 ; r5 set to 0xA410
mov.l @(loc_8c1C3178,pc),r4 ; r4 set to 0x8C3539AC
mov.l @(loc_8c1C3170,pc),r3 ; r3 set to 0x8C34B0B6
jsr @r12
mov.b r14,@r3 ; r3 ??? bc r14 is ???
mov.l @(loc_8c1C317C,pc),r2 ; r2 set to 0x8C3539A6
mov.b r14,@r2 ; r2 ??? bc r14 is ???
mov.l @(loc_8c1C3180,pc),r3 ; r3 set to 0x8C3539A7
mov.b r14,@r3 ; r3 ??? bc r14 is ???
mov.l @(loc_8c1C3184,pc),r1 ; r1 set to 0x8C3539A8
mov.b r14,@r1 ; r1 ??? bc r14 is ???
mov.l @(loc_8c1C3188,pc),r2 ; r2 set to 0x8C3539A9
mov.b r10,@r2 ; r2 ??? bc r10 is ???
mov.l @(loc_8c1C318C,pc),r6 ; r6 set to 0x8C34B0BB
mov.l @(loc_8c1C315C,pc),r4 ; r4 set to 0x8C34B0BC
mov.l @(loc_8c1C3190,pc),r3 ; r3 set to 0x8C19C378
jsr @r3
mov r15,r5 ; r5 ??? bc r15 is ???

loc_8c1C3064:
mov.l @(loc_8c1C3194,pc),r2 ; r2 set to 0x8C34B0B5, r2 set to 0x8C34B0B5
mov.b r14,@r2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???
mov.l @(loc_8c1C3198,pc),r3 ; r3 set to 0x8C34B0B7, r3 set to 0x8C34B0B7
mov.b r14,@r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???
mov.l @(loc_8c1C319C,pc),r1 ; r1 set to 0x8C3539A5, r1 set to 0x8C3539A5
mov.b r14,@r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???
mov.l @(loc_8c1C31A0,pc),r2 ; r2 set to 0x8C34B0B8, r2 set to 0x8C34B0B8
mov.b r14,@r2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???
mov.l @(loc_8c1C31A4,pc),r3 ; r3 set to 0x8C34B28F, r3 set to 0x8C34B28F
mov.b @r3,r0 ; r0 ??
or 0x10,r0
mov.b r0,@r3 ; r3 ??? bc r0 is ???, r3 ??? bc r0 is ???
mov 0x02,r1 ; r1 set to 0x02, r1 set to 0x02
mov.b r1,@r11
mov.l @(loc_8c1C3160,pc),r0 ; r0 set to 0x8C34B0B1, r0 set to 0x8C34B0B1
mov.b r14,@r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???
mov.l @(loc_8c1C31A8,pc),r4 ; r4 set to 0x8C34B0CC, r4 set to 0x8C34B0CC
jsr @r12
mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00
mov.l @(loc_8c1C31AC,pc),r4 ; r4 set to 0x8C34B0C8, r4 set to 0x8C34B0C8
jsr @r12
mov 0x04,r5 ; r5 set to 0x04, r5 set to 0x04
mov.l @(loc_8c1C3190,pc),r3 ; r3 set to 0x8C19C378, r3 set to 0x8C19C378
mov.l @(loc_8c1C315C,pc),r4 ; r4 set to 0x8C34B0BC, r4 set to 0x8C34B0BC
mov.l @(loc_8c1C31B0,pc),r6 ; r6 set to 0x8C34B0B9, r6 set to 0x8C34B0B9
jsr @r3
mov r15,r5 ; r5 ??? bc r15 is ???, r5 ??? bc r15 is ???
mov.b r14,@r9
mov.l @(loc_8c1C31B4,pc),r4 ; r4 set to 0x8C353990, r4 set to 0x8C353990
bra loc_8c1C30A8
mov r14,r5

loc_8c1C30A2:
mov.b r14,@r4
add 0x01,r4
add 0x01,r5

loc_8c1C30A8:
extu.w r5,r3
cmp/ge r13,r3
bf loc_8c1C30A2
bra loc_8c1C320C
nop

loc_8c1C30B2:
mov.l @(loc_8c1C31A8,pc),r1 ; r1 set to 0x8C34B0CC
jsr @r8
mov.l @r1,r4
exts.b r0,r0
tst r0,r0
bt loc_8c1C30C2
bra loc_8c1C31C0
nop

loc_8c1C30C2:
mov.l @(loc_8c1C316C,pc),r3 ; r3 set to 0x8C34B0B4
mov 0x01,r1 ; r1 set to 0x01
mov.b @r3,r2
extu.b r2,r2
cmp/ge r1,r2
bf loc_8c1C30D2
bra loc_8c1C31C0
nop

loc_8c1C30D2:
mov.l @(loc_8c1C31AC,pc),r3 ; r3 set to 0x8C34B0C8
jsr @r8
mov.l @r3,r4
exts.b r0,r0
tst r0,r0
bf loc_8c1C30E2
bra loc_8c1C3738
nop

loc_8c1C30E2:
mov.l @(loc_8c1C31AC,pc),r4 ; r4 set to 0x8C34B0C8
jsr @r12
mov 0x04,r5 ; r5 set to 0x04
mov.b @r9,r3
add 0x01,r3
mov.b r3,@r9
add 0xFF,r3
mov.l @(loc_8c1C31B4,pc),r1 ; r1 set to 0x8C353990
extu.b r3,r3
mov.l @(loc_8c1C31B8,pc),r2 ; r2 set to 0x8C19CE60
add r3,r1 ; r1 ??? bc r3 is ???
jsr @r2
mov.l r1,@-r15
mov.l @r15+,r2 ; r2 ??? bc r15 is ???
mov.b r0,@r2
mov.b @r9,r0
extu.b r0,r0
cmp/eq 0x10,r0
bt loc_8c1C310C
bra loc_8c1C3738
nop

loc_8c1C310C:
mov r14,r4
mov.b r14,@r9
mov.l @(loc_8c1C31B4,pc),r6 ; r6 set to 0x8C353990
bra loc_8c1C311E
mov r14,r5

loc_8c1C3116:
mov.b @r6+,r3
add 0x01,r4
extu.b r3,r3
add r3,r5

loc_8c1C311E:
extu.w r4,r2
cmp/ge r13,r2
bf loc_8c1C3116
mov 0x18,r2 ; r2 set to 0x18, r2 set to 0x18
extu.w r5,r5
cmp/gt r2,r5
bt loc_8c1C3130
bra loc_8c1C3738
nop

loc_8c1C3130:
mov.l @(loc_8c1C31BC,pc),r1 ; r1 set to 0x8C3539A4
bsr loc_8c1C3904
mov.b r10,@r1 ; r1 ??? bc r10 is ???
exts.b r0,r0
tst r0,r0
bt loc_8c1C3140
bra loc_8c1C34E0
nop

loc_8c1C3140:
mov.l @(loc_8c1C31BC,pc),r3 ; r3 set to 0x8C3539A4
bra loc_8c1C3738
mov.b r14,@r3
#data 0x0000

#align4
loc_8c1C3148:
#data 0x8C34B28E

#align4
loc_8c1C314C:
#data bank1b.loc_8c1b3F0C

loc_8c1C3150:
#data 0x8C3539A0

#align4
loc_8c1C3154:
#data 0x8C34B0B0

#align4
loc_8c1C3158:
#data bank1b.loc_8c1b3EEC

loc_8c1C315C:
#data 0x8C34B0BC

#align4
loc_8c1C3160:
#data 0x8C34B0B1

#align4
loc_8c1C3164:
#data 0x8C34B2CC

#align4
loc_8c1C3168:
#data 0x8C34B0D0

#align4
loc_8c1C316C:
#data 0x8C34B0B4

#align4
loc_8c1C3170:
#data 0x8C34B0B6

#align4
loc_8c1C3174:
#data 0x0000A410

#align4
loc_8c1C3178:
#data 0x8C3539AC

#align4
loc_8c1C317C:
#data 0x8C3539A6

#align4
loc_8c1C3180:
#data 0x8C3539A7

#align4
loc_8c1C3184:
#data 0x8C3539A8

#align4
loc_8c1C3188:
#data 0x8C3539A9

#align4
loc_8c1C318C:
#data 0x8C34B0BB

#align4
loc_8c1C3190:
#data bank19.loc_8c19C378

loc_8c1C3194:
#data 0x8C34B0B5

#align4
loc_8c1C3198:
#data 0x8C34B0B7

#align4
loc_8c1C319C:
#data 0x8C3539A5

#align4
loc_8c1C31A0:
#data 0x8C34B0B8

#align4
loc_8c1C31A4:
#data 0x8C34B28F

#align4
loc_8c1C31A8:
#data 0x8C34B0CC

#align4
loc_8c1C31AC:
#data 0x8C34B0C8

#align4
loc_8c1C31B0:
#data 0x8C34B0B9

#align4
loc_8c1C31B4:
#data 0x8C353990

#align4
loc_8c1C31B8:
#data bank19.loc_8c19CE60

loc_8c1C31BC:
#data 0x8C3539A4


loc_8c1C31C0:
mov.l @(loc_8c1C326C,pc),r1 ; r1 set to 0x8C34B0B5
mov.b r14,@r1 ; r1 ??? bc r14 is ???
mov.l @(loc_8c1C3270,pc),r3 ; r3 set to 0x8C34B0B7
mov.b r14,@r3 ; r3 ??? bc r14 is ???
mov.l @(loc_8c1C3274,pc),r2 ; r2 set to 0x8C3539A5
mov.b r14,@r2 ; r2 ??? bc r14 is ???
mov.l @(loc_8c1C3278,pc),r1 ; r1 set to 0x8C34B0B8
mov.b r14,@r1 ; r1 ??? bc r14 is ???
mov.l @(loc_8c1C327C,pc),r3 ; r3 set to 0x8C34B28F
mov.b @r3,r0
or 0x10,r0
mov.b r0,@r3 ; r3 ??? bc r0 is ???
mov 0x03,r2 ; r2 set to 0x03
mov.b r2,@r11
mov.w @(loc_8c1C3266,pc),r5 ; r5 set to 0x1770
mov.l @(loc_8c1C3284,pc),r4 ; r4 set to 0x8C34B0CC
mov.l @(loc_8c1C3280,pc),r0 ; r0 set to 0x8C34B0B1
jsr @r12
mov.b r14,@r0 ; r0 ??? bc r14 is ???
mov.l @(loc_8c1C3288,pc),r4 ; r4 set to 0x8C34B0C8
mov.w @(loc_8c1C3268,pc),r5 ; r5 set to 0x12C
jsr @r12
nop
mov.l @(loc_8c1C3294,pc),r3 ; r3 set to 0x8C19C378
mov.l @(loc_8c1C3290,pc),r4 ; r4 set to 0x8C34B0BC
mov.l @(loc_8c1C328C,pc),r6 ; r6 set to 0x8C34B0B9
jsr @r3
mov r15,r5 ; r5 ??? bc r15 is ???
mov.b r14,@r9
mov.l @(loc_8c1C3298,pc),r4 ; r4 set to 0x8C353990
bra loc_8c1C3206
mov r14,r5

#align4
loc_8c1C3200:
#data 0x740124E0
#data 0x7501

loc_8c1C3206:
#data 0x635D
#data 0x8BF933D3


loc_8c1C320C:
mov.l @(loc_8c1C329C,pc),r3 ; r3 set to 0x8C3539A1
mov.b r14,@r3 ; r3 ??? bc r14 is ???
mov.l @(loc_8c1C32A0,pc),r2 ; r2 set to 0x8C3539A4
mov.b r14,@r2 ; r2 ??? bc r14 is ???
mov.l @(loc_8c1C32A4,pc),r1 ; r1 set to 0x8C3539A2
mov.l @(loc_8c1C32A8,pc),r3 ; r3 set to 0x8C1B6400
jsr @r3
mov.w r14,@r1 ; r1 ??? bc r14 is ???
bra loc_8c1C3738
nop

loc_8c1C3220:
mov.l @(loc_8c1C32AC,pc),r1 ; r1 set to 0x8C19CD7A
jsr @r1
nop
exts.b r0,r0
tst r0,r0
bf loc_8c1C3230
bra loc_8c1C34F0
nop

loc_8c1C3230:
mov.l @(loc_8c1C32B0,pc),r2 ; r2 set to 0x8C19DCCE
jsr @r2
nop
extu.b r0,r0
tst r0,r0
bt loc_8c1C3254
mov.l @(loc_8c1C3290,pc),r2 ; r2 set to 0x8C34B0BC
mov.l @r2,r0
cmp/eq 0x10,r0
bf loc_8c1C324A
mov 0x05,r1 ; r1 set to 0x05
bra loc_8c1C324E
mov.b r1,@r11

loc_8c1C324A:
mov 0x06,r0 ; r0 set to 0x06
mov.b r0,@r11

loc_8c1C324E:
mov.l @(loc_8c1C3278,pc),r3 ; r3 set to 0x8C34B0B8, r3 set to 0x8C34B0B8
bra loc_8c1C35F2
nop

loc_8c1C3254:
mov.l @(loc_8c1C32B4,pc),r1 ; r1 set to 0x8C34B293
mov.b @r1,r3
extu.b r3,r3
tst r10,r3
bt loc_8c1C32B8
bsr loc_8c1C37A0
nop
bra loc_8c1C32D2
nop

loc_8c1C3266:
#data 0x1770

loc_8c1C3268:
#data 0x012C
#data 0x0000

#align4
loc_8c1C326C:
#data 0x8C34B0B5

#align4
loc_8c1C3270:
#data 0x8C34B0B7

#align4
loc_8c1C3274:
#data 0x8C3539A5

#align4
loc_8c1C3278:
#data 0x8C34B0B8

#align4
loc_8c1C327C:
#data 0x8C34B28F

#align4
loc_8c1C3280:
#data 0x8C34B0B1

#align4
loc_8c1C3284:
#data 0x8C34B0CC

#align4
loc_8c1C3288:
#data 0x8C34B0C8

#align4
loc_8c1C328C:
#data 0x8C34B0B9

#align4
loc_8c1C3290:
#data 0x8C34B0BC

#align4
loc_8c1C3294:
#data bank19.loc_8c19C378

loc_8c1C3298:
#data 0x8C353990

#align4
loc_8c1C329C:
#data 0x8C3539A1

#align4
loc_8c1C32A0:
#data 0x8C3539A4

#align4
loc_8c1C32A4:
#data 0x8C3539A2

#align4
loc_8c1C32A8:
#data bank1b.loc_8c1b6400

loc_8c1C32AC:
#data bank19.loc_8c19CD7A

loc_8c1C32B0:
#data bank19.loc_8c19DCCE

loc_8c1C32B4:
#data 0x8C34B293

#align4
loc_8c1C32B8:
#data 0x480BD03E
#data 0x600E6402
#data 0x89022008
#data 0x420BD23C
#data 0xE400

loc_8c1C32CA:
#data 0xD33C
#data 0xCB106030
#data 0x2300


loc_8c1C32D2:
mov.l @(loc_8c1C33C0,pc),r3 ; r3 set to 0x8C34B0A3
mov.b @r3,r0
extu.b r0,r0
cmp/eq 0x01,r0
bt loc_8c1C32E0
bra loc_8c1C3738
nop

loc_8c1C32E0:
mov.l @(loc_8c1C33C4,pc),r3 ; r3 set to 0x8C34B0C8
jsr @r8
mov.l @r3,r4
exts.b r0,r0
tst r0,r0
bf loc_8c1C32F0
bra loc_8c1C3738
nop

loc_8c1C32F0:
mov.l @(loc_8c1C33C4,pc),r4 ; r4 set to 0x8C34B0C8
jsr @r12
mov 0x0A,r5 ; r5 set to 0x0A
mov.l @(loc_8c1C33C8,pc),r3 ; r3 set to 0x8C3539A2
mov.w @r3,r2
add 0x01,r2
mov.w r2,@r3 ; r3 ??? bc r2 is ???
mov 0x64,r3 ; r3 set to 0x64
extu.w r2,r2
cmp/ge r3,r2
bf loc_8c1C332E
mov.l @(loc_8c1C33C8,pc),r1 ; r1 set to 0x8C3539A2
mov.w r14,@r1 ; r1 ??? bc r14 is ???
mov.l @(loc_8c1C33CC,pc),r3 ; r3 set to 0x8C3539A4
mov.l @(loc_8c1C33D0,pc),r2 ; r2 set to 0x8C1B6400
jsr @r2
mov.b r10,@r3 ; r3 ??? bc r10 is ???
mov.w r0,@(0x08,r15)
mov 0x0A,r3 ; r3 set to 0x0A
extu.w r0,r0
cmp/gt r3,r0
bf loc_8c1C332A
bsr loc_8c1C3904
nop
exts.b r0,r0
tst r0,r0
bt loc_8c1C332A
bra loc_8c1C34E0
nop

loc_8c1C332A:
#data 0xD228
#data 0x22E0


loc_8c1C332E:
mov.b @r9,r3
add 0x01,r3
mov.b r3,@r9
add 0xFF,r3
mov.l @(loc_8c1C33D4,pc),r1 ; r1 set to 0x8C353990
extu.b r3,r3
mov.l @(loc_8c1C33D8,pc),r2 ; r2 set to 0x8C19CE60
add r3,r1 ; r1 ??? bc r3 is ???
jsr @r2
mov.l r1,@-r15
mov.l @r15+,r2 ; r2 ??? bc r15 is ???
mov.b r0,@r2
mov.b @r9,r0
extu.b r0,r0
cmp/eq 0x10,r0
bt loc_8c1C3352
bra loc_8c1C3738
nop

loc_8c1C3352:
mov r14,r4
mov.b r14,@r9
mov.l @(loc_8c1C33D4,pc),r5 ; r5 set to 0x8C353990
bra loc_8c1C3364
mov r14,r6

loc_8c1C335C:
mov.b @r5+,r3
add 0x01,r4
extu.b r3,r3
add r3,r6

loc_8c1C3364:
extu.w r4,r2
cmp/ge r13,r2
bf loc_8c1C335C
mov.l @(loc_8c1C33DC,pc),r5 ; r5 set to 0x8C34B293, r5 set to 0x8C34B293
extu.w r6,r4
tst r4,r4
bf loc_8c1C33F4
mov.b @r5,r0
and 0xFE,r0
mov.b r0,@r5 ; r5 ??? bc r0 is ???, r5 ??? bc r0 is ???
mov.l @(loc_8c1C33E0,pc),r3 ; r3 set to 0x8C3539A1, r3 set to 0x8C3539A1
mov.b r14,@r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???
mov.l @(loc_8c1C33E4,pc),r0 ; r0 set to 0x8C34AF77, r0 set to 0x8C34AF77
mov.b @r0,r0 ; r0 ??, r0 ??
extu.b r0,r0
tst 0x80,r0
bf loc_8c1C338A
bra loc_8c1C3738
nop

loc_8c1C338A:
bsr loc_8c1C3854
nop
exts.b r0,r0
tst r0,r0
bf loc_8c1C3398
bra loc_8c1C3738
nop

loc_8c1C3398:
mov 0x06,r2 ; r2 set to 0x06
mov.b r2,@r11
mov.l @(loc_8c1C33B8,pc),r3 ; r3 set to 0x8C1B689C
jsr @r3
mov 0x01,r4 ; r4 set to 0x01
mov.l @(loc_8c1C33E8,pc),r2 ; r2 set to 0x8C34B0BA
mov.l @(loc_8c1C33EC,pc),r3 ; r3 set to 0x8C19DB9C
mov.b @r2,r5
jsr @r3
mov 0x00,r4 ; r4 set to 0x00
mov.l @(loc_8c1C33F0,pc),r2 ; r2 set to 0x8C34B0B5
bra loc_8c1C3738
mov.b r10,@r2
#data 0x0000
#data 0x8C34B128

#align4
loc_8c1C33B8:
#data bank1b.loc_8c1b689C
#data 0x8C34B28F

#align4
loc_8c1C33C0:
#data 0x8C34B0A3

#align4
loc_8c1C33C4:
#data 0x8C34B0C8

#align4
loc_8c1C33C8:
#data 0x8C3539A2

#align4
loc_8c1C33CC:
#data 0x8C3539A4

#align4
loc_8c1C33D0:
#data bank1b.loc_8c1b6400

loc_8c1C33D4:
#data 0x8C353990

#align4
loc_8c1C33D8:
#data bank19.loc_8c19CE60

loc_8c1C33DC:
#data 0x8C34B293

#align4
loc_8c1C33E0:
#data 0x8C3539A1

#align4
loc_8c1C33E4:
#data 0x8C34AF77

#align4
loc_8c1C33E8:
#data 0x8C34B0BA

#align4
loc_8c1C33EC:
#data bank19.loc_8c19DB9C

loc_8c1C33F0:
#data 0x8C34B0B5


loc_8c1C33F4:
mov 0x18,r1 ; r1 set to 0x18
cmp/ge r1,r4
bt loc_8c1C340C
mov.b @r5,r0
and 0xFE,r0
mov.b r0,@r5
mov.l @(loc_8c1C34B4,pc),r4 ; r4 set to 0x8C34B0CC
mov.w @(loc_8c1C34B0,pc),r5 ; r5 set to 0x1770
jsr @r12
nop
bra loc_8c1C3466
nop

loc_8c1C340C:
mov.l @(loc_8c1C34B8,pc),r3 ; r3 set to 0x8C34B0FE
mov 0x03,r0 ; r0 set to 0x03
mov.b @r3,r2
extu.b r2,r2
cmp/gt r0,r2
bt loc_8c1C344C
mov r4,r0 ; r0 ??? bc r4 is ???
nop
cmp/eq 0x30,r0
bf loc_8c1C342C
mov.b @r5,r0
or 0x01,r0
bsr loc_8c1C37FC
mov.b r0,@r5
bra loc_8c1C3738
nop

loc_8c1C342C:
mov.l @(loc_8c1C34BC,pc),r2 ; r2 set to 0x8C34B0BC
mov.l @r2,r0
cmp/eq 0x10,r0
bt loc_8c1C3438
bra loc_8c1C3738
nop

loc_8c1C3438:
mov.l @(loc_8c1C34C0,pc),r0 ; r0 set to 0x8C34AF77
mov.b @r0,r0 ; r0 ??
extu.b r0,r0
tst 0x80,r0
bf loc_8c1C3446
bra loc_8c1C3738
nop

loc_8c1C3446:
mov 0x05,r2 ; r2 set to 0x05
bra loc_8c1C3576
mov.b r2,@r11

loc_8c1C344C:
mov r4,r0
nop
cmp/eq 0x30,r0
bt loc_8c1C3490
mov.l @(loc_8c1C34B4,pc),r4 ; r4 set to 0x8C34B0CC
mov.w @(loc_8c1C34B0,pc),r5 ; r5 set to 0x1770
jsr @r12
nop
mov.l @(loc_8c1C34C4,pc),r0 ; r0 set to 0x8C34AF84
mov.b @r0,r0 ; r0 ??
extu.b r0,r0
tst 0x80,r0
bt loc_8c1C346C

loc_8c1C3466:
mov.l @(loc_8c1C34C8,pc),r2 ; r2 set to 0x8C3539A1, r2 set to 0x8C3539A1
bra loc_8c1C3738
mov.b r14,@r2

loc_8c1C346C:
mov.l @(loc_8c1C34C8,pc),r1 ; r1 set to 0x8C3539A1
mov.b @r1,r3
tst r3,r3
bt loc_8c1C34AA
mov.l @(loc_8c1C34C0,pc),r0 ; r0 set to 0x8C34AF77
mov.b @r0,r0 ; r0 ??
extu.b r0,r0
tst 0x80,r0
bf loc_8c1C3482
bra loc_8c1C3738
nop

loc_8c1C3482:
bsr loc_8c1C3904
nop
exts.b r0,r0
tst r0,r0
bt loc_8c1C34E8
bra loc_8c1C34E0
nop

loc_8c1C3490:
mov.l @(loc_8c1C34B4,pc),r4 ; r4 set to 0x8C34B0CC
mov.w @(loc_8c1C34B0,pc),r5 ; r5 set to 0x1770
jsr @r12
nop
mov.l @(loc_8c1C34C4,pc),r0 ; r0 set to 0x8C34AF84
mov.b @r0,r0 ; r0 ??
extu.b r0,r0
tst 0x80,r0
bt loc_8c1C34CC
mov.l @(loc_8c1C34C8,pc),r3 ; r3 set to 0x8C3539A1
mov.b @r3,r2
tst r2,r2
bf loc_8c1C34CC

loc_8c1C34AA:
mov.l @(loc_8c1C34C8,pc),r2 ; r2 set to 0x8C3539A1, r2 set to 0x8C3539A1
bra loc_8c1C3738
mov.b r10,@r2

loc_8c1C34B0:
#data 0x1770
#data 0x0000

#align4
loc_8c1C34B4:
#data 0x8C34B0CC

#align4
loc_8c1C34B8:
#data 0x8C34B0FE

#align4
loc_8c1C34BC:
#data 0x8C34B0BC

#align4
loc_8c1C34C0:
#data 0x8C34AF77

#align4
loc_8c1C34C4:
#data 0x8C34AF84

#align4
loc_8c1C34C8:
#data 0x8C3539A1

#align4
loc_8c1C34CC:
#data 0x6000D032
#data 0xC880600C
#data 0xB2158908
#data 0x600E0009
#data 0x89032008


loc_8c1C34E0:
bsr loc_8c1C3C98
nop
bra loc_8c1C3738
nop

loc_8c1C34E8:
bsr loc_8c1C3D00
nop
bra loc_8c1C3738
nop

loc_8c1C34F0:
bsr loc_8c1C37A0
nop
bra loc_8c1C3738
nop

loc_8c1C34F8:
mov r4,r0
nop
cmp/eq 0x10,r0
bf loc_8c1C3514
mov 0x00,r7 ; r7 set to 0x00
mov 0x05,r0 ; r0 set to 0x05
mov r7,r6 ; r6 set to 0x00
mov r0,r5 ; r5 set to 0x05
mov.b r0,@r11
mov.l @(loc_8c1C359C,pc),r1 ; r1 set to 0x8C19DAAC
jsr @r1
mov r0,r4 ; r4 set to 0x05
bra loc_8c1C351C
nop

loc_8c1C3514:
mov 0x06,r1 ; r1 set to 0x06
mov.b r1,@r11
bsr loc_8c1C3D00
nop

loc_8c1C351C:
mov.l @(loc_8c1C35A0,pc),r3 ; r3 set to 0x8C34B0B7, r3 set to 0x8C34B0B7
mov.b r10,@r3 ; r3 ??? bc r10 is ???, r3 ??? bc r10 is ???
mov.l @(loc_8c1C35A4,pc),r2 ; r2 set to 0x8C3539A5, r2 set to 0x8C3539A5
mov.b r14,@r2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???
mov.l @(loc_8c1C35A8,pc),r1 ; r1 set to 0x8C34B0B3, r1 set to 0x8C34B0B3
mov.b r14,@r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???
mov.l @(loc_8c1C35AC,pc),r3 ; r3 set to 0x8C1B689C, r3 set to 0x8C1B689C
jsr @r3
mov 0x01,r4 ; r4 set to 0x01, r4 set to 0x01
bra loc_8c1C3738
nop

loc_8c1C3532:
mov.l @(loc_8c1C35B0,pc),r14 ; r14 set to 0x8C34B0B2
mov r5,r0
nop
cmp/eq 0x00,r0
bt loc_8c1C3544
cmp/eq 0x01,r0
bt loc_8c1C3552
bra loc_8c1C3738
nop

loc_8c1C3544:
mov.l @(loc_8c1C35B4,pc),r4 ; r4 set to 0x8C34B0C0
mov.w @(loc_8c1C3596,pc),r5 ; r5 set to 0xC8
jsr @r12
nop
mov 0x03,r3 ; r3 set to 0x03
bra loc_8c1C35F0
mov.b r3,@r14

loc_8c1C3552:
mov.l @(loc_8c1C35B4,pc),r0 ; r0 set to 0x8C34B0C0
jsr @r8
mov.l @r0,r4
exts.b r0,r0 ; r0 ??
tst r0,r0
bt loc_8c1C3586
mov.b @r14,r2
add 0xFF,r2
mov.b r2,@r14
extu.b r2,r2
tst r2,r2
bf loc_8c1C356E
bra loc_8c1C365A
nop

loc_8c1C356E:
mov.l @(loc_8c1C35B4,pc),r4 ; r4 set to 0x8C34B0C0
mov.w @(loc_8c1C3596,pc),r5 ; r5 set to 0xC8
jsr @r12
nop

loc_8c1C3576:
mov.l @(loc_8c1C359C,pc),r3 ; r3 set to 0x8C19DAAC, r3 set to 0x8C19DAAC
mov 0x00,r7 ; r7 set to 0x00, r7 set to 0x00
mov 0x05,r5 ; r5 set to 0x05, r5 set to 0x05
mov r7,r6 ; r6 set to 0x00, r6 set to 0x00
jsr @r3
mov r5,r4 ; r4 set to 0x05, r4 set to 0x05
bra loc_8c1C3738
nop

loc_8c1C3586:
mov.l @(loc_8c1C35B8,pc),r3 ; r3 set to 0x8C19DDC6
jsr @r3
nop
extu.b r0,r0
cmp/eq 0x03,r0
bt loc_8c1C3640
bra loc_8c1C3738
nop

loc_8c1C3596:
#data 0x00C8
#data 0x8C34AF77

#align4
loc_8c1C359C:
#data bank19.loc_8c19DAAC

loc_8c1C35A0:
#data 0x8C34B0B7

#align4
loc_8c1C35A4:
#data 0x8C3539A5

#align4
loc_8c1C35A8:
#data 0x8C34B0B3

#align4
loc_8c1C35AC:
#data bank1b.loc_8c1b689C

loc_8c1C35B0:
#data 0x8C34B0B2

#align4
loc_8c1C35B4:
#data 0x8C34B0C0

#align4
loc_8c1C35B8:
#data bank19.loc_8c19DDC6


loc_8c1C35BC:
mov r5,r0
nop
cmp/eq 0x00,r0
bt loc_8c1C35D0
cmp/eq 0x01,r0
bt loc_8c1C35F6
cmp/eq 0x02,r0
bt loc_8c1C3626
bra loc_8c1C3738
nop

#align4
loc_8c1C35D0:
#data 0x34109146
#data 0x90448905
#data 0x89023400
#data 0x34209242
#data 0x8B02

loc_8c1C35E2:
#data 0x9540
#data 0x0009A001

loc_8c1C35E8:
#data 0x953E

loc_8c1C35EA:
#data 0xD420
#data 0x00094C0B


loc_8c1C35F0:
mov.l @(loc_8c1C3670,pc),r3 ; r3 set to 0x8C34B0B1

loc_8c1C35F2:
bra loc_8c1C3738
mov.b r10,@r3

loc_8c1C35F6:
mov.l @(loc_8c1C3674,pc),r1 ; r1 set to 0x8C19DDC6
jsr @r1
nop
extu.b r0,r0
cmp/eq 0x01,r0
bf loc_8c1C3616
mov.l @(loc_8c1C366C,pc),r2 ; r2 set to 0x8C34B0C0
jsr @r8
mov.l @r2,r4
exts.b r0,r0
tst r0,r0
bf loc_8c1C3612
bra loc_8c1C3738
nop

loc_8c1C3612:
bra loc_8c1C365A
nop

loc_8c1C3616:
mov.w @(loc_8c1C366A,pc),r5 ; r5 set to 0x1770
mov 0x02,r1 ; r1 set to 0x02
mov.l @(loc_8c1C366C,pc),r4 ; r4 set to 0x8C34B0C0
mov.l @(loc_8c1C3670,pc),r3 ; r3 set to 0x8C34B0B1
jsr @r12
mov.b r1,@r3 ; r3 ??
bra loc_8c1C3738
nop

loc_8c1C3626:
#data 0xD113
#data 0x0009410B
#data 0x6E4D640C
#data 0x000960E3
#data 0x89038803
#data 0x000960E3
#data 0x8B028804


loc_8c1C3640:
mov 0x07,r3 ; r3 set to 0x07
bra loc_8c1C3738
mov.b r3,@r11

loc_8c1C3646:
#data 0xD109
#data 0x6412480B
#data 0x2008600E
#data 0x60E38B03
#data 0x88050009
#data 0x8B6E


loc_8c1C365A:
mov 0x08,r3 ; r3 set to 0x08
bra loc_8c1C3738
mov.b r3,@r11
#data 0x02000080
#data 0x08FC0100
#data 0x012C

loc_8c1C366A:
#data 0x1770

#align4
loc_8c1C366C:
#data 0x8C34B0C0

#align4
loc_8c1C3670:
#data 0x8C34B0B1

#align4
loc_8c1C3674:
#data bank19.loc_8c19DDC6

loc_8c1C3678:
#data 0x410BD136
#data 0xD2360009
#data 0x0009420B
#data 0x410BD135
#data 0xD4350009
#data 0xD33566F3
#data 0x430B7604
#data 0xD33465F3
#data 0x22286230
#data 0xD1338903
#data 0x22286210
#data 0x892B

loc_8c1C36A6:
#data 0xD432
#data 0xE5324C0B
#data 0x6320D231
#data 0x8B032338
#data 0x6310D12D
#data 0x89092338

#align4
loc_8c1C36BC:
#data 0x430BD32E
#data 0xD22E0009
#data 0x0009420B
#data 0x23E0D328
#data 0x22E0D229

#align4
loc_8c1C36D0:
#data 0x6030D32B
#data 0x8801600C
#data 0xD0218B2D
#data 0x62029136
#data 0x89283210
#data 0x93326202
#data 0x89243230
#data 0x922FD31C
#data 0x30206032
#data 0xD123891F
#data 0xA01C84F4
#data 0x2100

loc_8c1C36FE:
#data 0xD322
#data 0x623084F4
#data 0x89163200
#data 0xA014D120
#data 0x21A0


loc_8c1C370E:
mov.l @(loc_8c1C3790,pc),r0 ; r0 set to 0x8C34AF5A
mov.w @(loc_8c1C3752,pc),r1 ; r1 set to 0xFF
mov.b @r0,r3
extu.b r3,r3
cmp/eq r1,r3
bt loc_8c1C3724
mov.l @(loc_8c1C3794,pc),r2 ; r2 set to 0x8C1AF998
jsr @r2
nop
bra loc_8c1C3738
nop

#align4
loc_8c1C3724:
#data 0x420BD21C
#data 0xD31CE401
#data 0x0009430B
#data 0x2008600E
#data 0x8900

loc_8c1C3736:
#data 0x2BA0


loc_8c1C3738:
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
#data 0x02000080
#data 0x0100

loc_8c1C3752:
#data 0x00FF

#align4
loc_8c1C3754:
#data bank1b.loc_8c1bF5C8

loc_8c1C3758:
#data bank1a.loc_8c1aF31A

loc_8c1C375C:
#data bank1b.loc_8c1b398A
#data 0x8C34B0BC

#align4
loc_8c1C3764:
#data bank19.loc_8c19C378
#data 0x8C34B0B5
#data 0x8C3539A5
#data 0x8C34B128
#data 0x8C34B0B7

#align4
loc_8c1C3778:
#data bank1a.loc_8c1aF914

loc_8c1C377C:
#data bank1a.loc_8c1aF91A
#data 0x8C34B0B8
#data 0x8C34B0BB
#data 0x8C34B0BA
#data 0x8C34B0B6

#align4
loc_8c1C3790:
#data 0x8C34AF5A

#align4
loc_8c1C3794:
#data bank1a.loc_8c1aF998

loc_8c1C3798:
#data bank1b.loc_8c1b689C

loc_8c1C379C:
#data bank19.loc_8c19CD7A


loc_8c1C37A0:
mov.l r14,@-r15
sts.l pr,@-r15
bsr loc_8c1C37FC
nop
mov.l @(loc_8c1C3834,pc),r4 ; r4 set to 0x8C34B28F
mov.l @(loc_8c1C3830,pc),r14 ; r14 set to 0x8C34AF50
mov.b @r4,r0
extu.b r0,r0
tst 0x10,r0
bt loc_8c1C37D2
mov.b @r4,r0
and 0xEF,r0
mov.b r0,@r4 ; r4 ??? bc r0 is ???
mov.b @(0x0A,r14),r0
lds.l @r15+,pr
extu.b r0,r0
mov.l @(loc_8c1C383C,pc),r2 ; r2 set to 0x8C1B3EEC
mov r0,r3
shll2 r0
add r3,r0
mov.l @(loc_8c1C3838,pc),r4 ; r4 set to 0x8C34B0C4
shll r0
mov r0,r5
jmp @r2
mov.l @r15+,r14

loc_8c1C37D2:
#data 0x84EA
#data 0x600C932B
#data 0x890C3030
#data 0xD116D218
#data 0x6412420B
#data 0x2008600E
#data 0xE3088905
#data 0xE2007E2D
#data 0xD1142E20
#data 0x2130

loc_8c1C37F6:
#data 0x4F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------

loc_8c1C37FC:
sts.l pr,@-r15
mov.l @(loc_8c1C3848,pc),r4 ; r4 set to 0x8C34B288
mov r4,r0 ; r0 set to 0x8C34B288
nop
add 0x1B,r0 ; r0 set to 0x8C34B2A3
mov.b @r0,r0 ; r0 ??
extu.b r0,r0
tst 0x80,r0
bf loc_8c1C3828
mov r4,r0 ; r0 set to 0x8C34B288
nop
add 0x19,r0 ; r0 set to 0x8C34B2A1
mov.b @r0,r0 ; r0 ??
extu.b r0,r0
tst 0x20,r0
bf loc_8c1C3828
mov.l @(loc_8c1C384C,pc),r2 ; r2 set to 0x8C1B689C
jsr @r2
mov 0x01,r4 ; r4 set to 0x01
mov.l @(loc_8c1C3850,pc),r3 ; r3 set to 0x8C1B6048
jmp @r3
lds.l @r15+,pr

loc_8c1C3828:
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------
#data 0x00FF

#align4
loc_8c1C3830:
#data 0x8C34AF50

#align4
loc_8c1C3834:
#data 0x8C34B28F

#align4
loc_8c1C3838:
#data 0x8C34B0C4

#align4
loc_8c1C383C:
#data bank1b.loc_8c1b3EEC

loc_8c1C3840:
#data bank1b.loc_8c1b3F0C
#data 0x8C34B0B0

#align4
loc_8c1C3848:
#data 0x8C34B288

#align4
loc_8c1C384C:
#data bank1b.loc_8c1b689C

loc_8c1C3850:
#data bank1b.loc_8c1b6048

loc_8c1C3854:
#data 0xD0352F86
#data 0x60004F22
#data 0xC801600C
#data 0xD034894C
#data 0x6100D332
#data 0x32126230
#data 0x61308946
#data 0x6230D331
#data 0x89413122
#data 0x6030D330
#data 0x8801600C
#data 0xD32F893C
#data 0x0009430B
#data 0xB14D6403
#data 0x600EE500
#data 0x89332008
#data 0x9347D12B
#data 0x32306212
#data 0xD02A8B0A
#data 0x22286200
#data 0xD1298906
#data 0x410B6200
#data 0x600C682C
#data 0x89233807

#align4
loc_8c1C38B4:
#data 0x6032D323
#data 0x8B0B8840
#data 0x6120D222
#data 0x89072118
#data 0x681C6120
#data 0x410BD121
#data 0x600C0009
#data 0x89133807

#align4
loc_8c1C38D4:
#data 0xD31FD220
#data 0x6432420B
#data 0x2008600E
#data 0xD11E8B03
#data 0x22286210
#data 0x8908

loc_8c1C38EA:
#data 0xD31D
#data 0x951CD419
#data 0x0009430B
#data 0xE0014F26
#data 0x68F6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1C38FC:
#data 0x4F26E000
#data 0x68F6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1C3904:
#data 0xE3102FE6
#data 0x2F862FD6
#data 0x4F22D415
#data 0x75186543
#data 0x655C6550
#data 0x8F032358
#data 0xE108ED01
#data 0x89212158

#align4
loc_8c1C3924:
#data 0x65D3A021
#data 0x17700080
#data 0x8C34AF77
#data 0x8C34B0B9
#data 0x8C34B0BB
#data 0x8C34B0F0
#data 0x8C34B0B6

#align4
loc_8c1C3940:
#data bank19.loc_8c19C6DE
#data 0x8C34B0BC
#data 0x8C34B0BA

#align4
loc_8c1C394C:
#data bank1b.loc_8c1bEC2C

loc_8c1C3950:
#data bank1b.loc_8c1bEC20
#data 0x8C34B0CC

#align4
loc_8c1C3958:
#data bank1b.loc_8c1b3F0C
#data 0x8C3539A5

#align4
loc_8c1C3960:
#data bank1b.loc_8c1b3EEC
#data 0x8C34AF50

loc_8c1C3968:
#data 0xE500

loc_8c1C396A:
#data 0x6043
#data 0x70270009
#data 0x600C6000
#data 0x8902C802
#data 0x2558655E
#data 0x8B05

loc_8c1C397E:
#data 0xD21B
#data 0x23386320
#data 0xA0C78B01
#data 0x0009

loc_8c1C398A:
#data 0xDE19
#data 0x62E0E302
#data 0x3233622C
#data 0xD2188B08
#data 0x420BD116
#data 0x600E6412
#data 0x8B012008
#data 0x0009A0B8

#align4
loc_8c1C39A8:
#data 0x6320D214
#data 0x89312338
#data 0x9319D013
#data 0x31306102
#data 0xD0128B2C
#data 0x21186100
#data 0xD2118B28
#data 0xD20B22D0
#data 0x6122D010
#data 0x31366302
#data 0xD20F8906
#data 0x9508D407
#data 0x0009420B
#data 0x2ED0A09C

#align4
loc_8c1C39E0:
#data 0x720162E0
#data 0x2E20A098
#data 0x07D00200
#data 0x8C3539A4
#data 0x8C34B0B4
#data 0x8C34B0D0

#align4
loc_8c1C39F8:
#data bank1b.loc_8c1b3F0C
#data 0x8C34AF5F
#data 0x8C34B0BC
#data 0x8C3539A7
#data 0x8C3539A8
#data 0x8C34B2CC

#align4
loc_8c1C3A10:
#data bank1b.loc_8c1b3EEC

loc_8c1C3A14:
#data 0xE300D229
#data 0xDE292230
#data 0x884060E2
#data 0x64038D0B
#data 0x34209246
#data 0x91448907
#data 0x89043410
#data 0x34009042
#data 0xA06F8901
#data 0x0009

loc_8c1C3A3A:
#data 0xD222
#data 0x0009420B
#data 0x933862E2
#data 0x8F433230
#data 0xD2206403
#data 0x6020D41E
#data 0x8821600C
#data 0x8823892B
#data 0x88258927
#data 0x88288923
#data 0x882A891F
#data 0x882C891B
#data 0x882E8917
#data 0x88308913
#data 0x8832890F
#data 0x8834890B
#data 0x88368907
#data 0x88388903
#data 0xA0158B4A
#data 0xE136

loc_8c1C3A86:
#data 0xA013
#data 0xE134

loc_8c1C3A8A:
#data 0xA011
#data 0xE132

loc_8c1C3A8E:
#data 0xA00F
#data 0xE130

loc_8c1C3A92:
#data 0xA00D
#data 0xE12E

loc_8c1C3A96:
#data 0xA00B
#data 0xE12C

loc_8c1C3A9A:
#data 0xA009
#data 0xE12A

loc_8c1C3A9E:
#data 0xA007
#data 0xE128

loc_8c1C3AA2:
#data 0xA005
#data 0xE125

loc_8c1C3AA6:
#data 0xA003
#data 0xE123

loc_8c1C3AAA:
#data 0xA001
#data 0xE121

loc_8c1C3AAE:
#data 0xE11E

#align4
loc_8c1C3AB0:
#data 0x2410A013
#data 0x01000080
#data 0x00000200
#data 0x8C3539A7
#data 0x8C34B0BC

#align4
loc_8c1C3AC4:
#data bank19.loc_8c19C6DE
#data 0x8C34B0BA
#data 0x8C34B0B9

#align4
loc_8c1C3AD0:
#data 0xE501B02A
#data 0x2008600E
#data 0x891E

loc_8c1C3ADA:
#data 0x63E2
#data 0x3320925C
#data 0x61E28907
#data 0x31009059
#data 0x61E28903
#data 0x31309356
#data 0x8B07

loc_8c1C3AF2:
#data 0xD22B
#data 0x6020D32B
#data 0x680C430B
#data 0x3803600C
#data 0x8B0A

loc_8c1C3B02:
#data 0x60E2
#data 0x8B098840
#data 0xD127D225
#data 0x410B6320
#data 0x600C683C
#data 0x89013803

#align4
loc_8c1C3B18:
#data 0xE000A001

loc_8c1C3B1C:
#data 0xE001

loc_8c1C3B1E:
#data 0x4F26
#data 0x6DF668F6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1C3B28:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x7FF84F22
#data 0x00096053
#data 0xEB0080F4
#data 0xD31B2FB2
#data 0x88406032
#data 0x6D438D08
#data 0x30109126
#data 0x9125890A
#data 0x890A3010
#data 0x0009A069

#align4
loc_8c1C3B58:
#data 0xEC07DE15
#data 0x64D3B06F
#data 0x6D03A005

#align4
loc_8c1C3B64:
#data 0xA002DE13
#data 0xEC0E

loc_8c1C3B6A:
#data 0xDE13
#data 0xEC16

loc_8c1C3B6E:
#data 0x65CC
#data 0x8F294515
#data 0xD61164B3

#align4
loc_8c1C3B78:
#data 0x6360624C
#data 0x42004208
#data 0x612232EC
#data 0x3310633C
#data 0x624C8B1A
#data 0x42004208
#data 0x532132EC
#data 0x2F32A018
#data 0x01000080
#data 0x00000200
#data 0x8C34B0BA

#align4
loc_8c1C3BA4:
#data bank1b.loc_8c1bEC26

loc_8c1C3BA8:
#data bank1b.loc_8c1bEC1A
#data 0x8C34B0BC

#align4
loc_8c1C3BB0:
#data loc_8c1C8F80

loc_8c1C3BB4:
#data loc_8c1C8FB8

loc_8c1C3BB8:
#data loc_8c1C9028
#data 0x8C34B0B9

#align4
loc_8c1C3BC0:
#data 0x634C7401
#data 0x8BD73353

#align4
loc_8c1C3BC8:
#data 0x3540644C
#data 0x84F4892D
#data 0x89092008

#align4
loc_8c1C3BD4:
#data 0x222862F2
#data 0x63F2890A
#data 0x23D84301
#data 0x2F328DF8
#data 0x0009A004

#align4
loc_8c1C3BE8:
#data 0x420062F2
#data 0x2F2222D9

#align4
loc_8c1C3BF0:
#data 0x233863F2
#data 0x45158919
#data 0x64B38F14
#data 0xD625

loc_8c1C3BFE:
#data 0x634C
#data 0x430861F2
#data 0x33EC4300
#data 0x31205231
#data 0x634C8B06
#data 0x43004308
#data 0x623233EC
#data 0x2620A004

#align4
loc_8c1C3C1C:
#data 0x624C7401
#data 0x8BEC3253

#align4
loc_8c1C3C24:
#data 0x3540644C
#data 0x8B01

loc_8c1C3C2A:
#data 0xA001
#data 0xE000

loc_8c1C3C2E:
#data 0xE001

#align4
loc_8c1C3C30:
#data 0x4F267F08
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1C3C3E:
#data 0x6343
#data 0x2368E620
#data 0xE5008D01
#data 0xE501

loc_8c1C3C4A:
#data 0x931D
#data 0x8D022348
#data 0xE102E740
#data 0x251B

loc_8c1C3C56:
#data 0x6343
#data 0x89012378
#data 0x251BE104

#align4
loc_8c1C3C60:
#data 0x23489313
#data 0xE1088901
#data 0x251B

loc_8c1C3C6A:
#data 0x930F
#data 0x89012348
#data 0x251BE110

#align4
loc_8c1C3C74:
#data 0x2348930B
#data 0x256B8900

#align4
loc_8c1C3C7C:
#data 0x24389308
#data 0x257B8900

#align4
loc_8c1C3C84:
#data 0x6053000B
;-------------------------------------------------------------------------------
#data 0x04000200
#data 0x20001000
#data 0x00004000
#data 0x8C34B0BA


loc_8c1C3C98:
mov.l r14,@-r15
mov 0x06,r3 ; r3 set to 0x06
mov.l @(loc_8c1C3CE0,pc),r2 ; r2 set to 0x8C34B0B0
sts.l pr,@-r15
mov.b r3,@r2 ; r2 ??
mov.l @(loc_8c1C3CE4,pc),r1 ; r1 set to 0x8C34B0BA
mov.l @(loc_8c1C3CE8,pc),r3 ; r3 set to 0x8C19DB9C
mov.b @r1,r5
jsr @r3
mov 0x00,r4 ; r4 set to 0x00
mov.l @(loc_8c1C3CF4,pc),r0 ; r0 set to 0x8C34B0D0
mov.l @(loc_8c1C3CF0,pc),r1 ; r1 set to 0x8C34B2CC
mov.l @r0,r3 ; r3 ??
mov.l @r1,r2
mov.l @(loc_8c1C3CEC,pc),r14 ; r14 set to 0x8C34B0B4
cmp/hi r2,r3
bt loc_8c1C3CCA
mov.l @(loc_8c1C3CF8,pc),r3 ; r3 set to 0x8C1B3EEC
mov.l @(loc_8c1C3CF4,pc),r4 ; r4 set to 0x8C34B0D0
mov.w @(loc_8c1C3CDC,pc),r5 ; r5 set to 0x7D0
jsr @r3
nop
mov 0x01,r2 ; r2 set to 0x01
bra loc_8c1C3CD0
mov.b r2,@r14

loc_8c1C3CCA:
mov.b @r14,r0
add 0x01,r0
mov.b r0,@r14

loc_8c1C3CD0:
lds.l @r15+,pr
mov.l @(loc_8c1C3CFC,pc),r2 ; r2 set to 0x8C34B0B6, r2 set to 0x8C34B0B6
mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
mov.b r3,@r2 ; r2 ??, r2 ??
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1C3CDC:
#data 0x07D0
#data 0x0000

#align4
loc_8c1C3CE0:
#data 0x8C34B0B0

#align4
loc_8c1C3CE4:
#data 0x8C34B0BA

#align4
loc_8c1C3CE8:
#data bank19.loc_8c19DB9C

loc_8c1C3CEC:
#data 0x8C34B0B4

#align4
loc_8c1C3CF0:
#data 0x8C34B2CC

#align4
loc_8c1C3CF4:
#data 0x8C34B0D0

#align4
loc_8c1C3CF8:
#data bank1b.loc_8c1b3EEC

loc_8c1C3CFC:
#data 0x8C34B0B6

#align4
loc_8c1C3D00:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0xD2372F86
#data 0x63204F22
#data 0x2338DD34
#data 0xEC018D04
#data 0xD334D135
#data 0x23C0410B

#align4
loc_8c1C3D24:
#data 0xE900D334
#data 0xD4342390
#data 0x420BD234
#data 0xD1386593
#data 0x62129356
#data 0xD832DE35
#data 0xDA323230
#data 0x8901DB32
#data 0x0009A07E

#align4
loc_8c1C3D48:
#data 0x6200D033
#data 0x89012228
#data 0x0009A078

#align4
loc_8c1C3D54:
#data 0xD231D332
#data 0x6422430B
#data 0x2008600E
#data 0xE3068B70
#data 0x60D02A30
#data 0x8803600C
#data 0xD32C8B06
#data 0x430BD22C
#data 0x600E6422
#data 0x896E2008

#align4
loc_8c1C3D7C:
#data 0x6240D42A
#data 0x89242228
#data 0xD4292490
#data 0x23386340
#data 0xD3288B0D
#data 0x24C0430B
#data 0xBEC76403
#data 0x600EE501
#data 0x89022008
#data 0xA005D224
#data 0x6A20

loc_8c1C3DA6:
#data 0xA003
#data 0x6AE0

loc_8c1C3DAA:
#data 0x2490
#data 0x6A30D322

#align4
loc_8c1C3DB0:
#data 0x420BD222
#data 0xD3220009
#data 0x2F06430B
#data 0x2F06480B
#data 0x640365F6
#data 0x4B0B66F6
#data 0xA07D67A3
#data 0x0009

loc_8c1C3DCE:
#data 0x4F26
#data 0xD30824C0
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6432B
#data 0x00000200
#data 0x8C34B0B3
#data 0x8C3539A8
#data 0x8C3539A7

#align4
loc_8c1C3DF4:
#data bank19.loc_8c19DA4C
#data 0x8C34B0B4
#data 0x8C34B0D0

#align4
loc_8c1C3E00:
#data bank1b.loc_8c1b3EEC

loc_8c1C3E04:
#data bank1b.loc_8c1bEC1A
#data 0x8C34B0B0

#align4
loc_8c1C3E0C:
#data bank19.loc_8c19DAAC
#data 0x8C34B0B9
#data 0x8C34B0BC
#data 0x8C34B0B7
#data 0x8C3539AC

#align4
loc_8c1C3E20:
#data bank1b.loc_8c1b3F0C
#data 0x8C34B0D4
#data 0x8C3539A6
#data 0x8C3539A9

#align4
loc_8c1C3E30:
#data bank19.loc_8c19C6DE
#data 0x8C34B0BA
#data 0x8C34B0BB

#align4
loc_8c1C3E3C:
#data bank1b.loc_8c1bEC26

loc_8c1C3E40:
#data bank1b.loc_8c1bEC20

loc_8c1C3E44:
#data 0x600C60D0
#data 0x8B098803
#data 0xD22DD32E
#data 0x6422430B
#data 0x2008600E
#data 0x8B02

loc_8c1C3E5A:
#data 0xE308
#data 0x2A30A045

#align4
loc_8c1C3E60:
#data 0xE106E310
#data 0xD4292A10
#data 0x644C6440
#data 0x8B022348
#data 0x2148E108
#data 0x8923

loc_8c1C3E76:
#data 0xD226
#data 0x913FD326
#data 0x6E306422
#data 0x89053410
#data 0x3400903B
#data 0x92398902
#data 0x8B0C3420

#align4
loc_8c1C3E90:
#data 0x420BD221
#data 0xD3210009
#data 0x2F06430B
#data 0x2F06480B
#data 0x640365F6
#data 0xA00666F6
#data 0x67E3

loc_8c1C3EAA:
#data 0x480B
#data 0xE6000009
#data 0x67636403
#data 0x65E3

loc_8c1C3EB6:
#data 0x4B0B
#data 0xA0050009
#data 0x0009

loc_8c1C3EBE:
#data 0x65E0
#data 0x67E066E0
#data 0x64E04B0B

#align4
loc_8c1C3EC8:
#data 0xD20ED30F
#data 0x6422430B
#data 0x2008600E
#data 0xD3128906
#data 0x9512D40A
#data 0x0009430B
#data 0x2DC0A003

#align4
loc_8c1C3EE4:
#data 0x730163D0
#data 0x2D30

loc_8c1C3EEA:
#data 0x4F26
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x02000080
#data 0x23280100
#data 0x8C34B0D4

#align4
loc_8c1C3F08:
#data bank1b.loc_8c1b3F0C
#data 0x8C34AF68
#data 0x8C34B0BC
#data 0x8C34B0BB

#align4
loc_8c1C3F18:
#data bank1b.loc_8c1bEC26

loc_8c1C3F1C:
#data bank1b.loc_8c1bEC20

loc_8c1C3F20:
#data bank1b.loc_8c1b3EEC

loc_8c1C3F24:
#data bank01.loc_8c010000

loc_8c1C3F28:
#data bank01.loc_8c010060

loc_8c1C3F2C:
#data bank01.loc_8c010060

loc_8c1C3F30:
#data bank01.loc_8c010080

loc_8c1C3F34:
#data loc_8c1C90E0
#data 0x8C1C9DA0

#align4
loc_8c1C3F3C:
#data 0x8C1C9DA0
#data 0x8C1C9DA0
#data 0x8C1C9DA0

#align4
loc_8c1C3F48:
#data 0x8C1C9DA0

#align4
loc_8c1C3F4C:
#data 0x8C32C4A0
#data 0x8C3539B0
#data 0x8C3539C0

#align4
loc_8c1C3F58:
#data 0x8C3539C0
#data 0x8C1C9DA0
#data 0x8C1C9DA0
#data 0x8C1C9DA0
#data 0x8C1C9DA0
#data 0x8C1C9DA0
#data 0x8C1C9DA0
#data 0x8C1C9DA0
#data 0x8C1C9DA0
#data 0x8C1C9DA0
#data 0x8C1C9DA0
#data 0x8C1C9DA0
#data 0x8C1C9DA0
#data 0x8C1C9DA0
#data 0x8C1C9DA0
#data 0x8C1C9DA0
#data 0x8C1C9DA0
#data 0x8C1C9DA0
#data 0x8C1C9DA0
#data 0x8C1C9DA0
#data 0x8C1C9DA0
#data 0x8C1C9DA0
#data 0x8C1C9DA0
#data 0x8C1C9DA0
#data 0x8C1C9DA0
#data 0x8C1C9DA0
#data 0x8C1C9DA0
#data 0x8C1C9DA0
#data 0x8C1C9DA0
#data 0x8C1C9DA0
#data 0x8C1C9DA0
#data 0x8C1C9DA0
#data 0x8C1C9DA0
#data 0x8C1C9DA0
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8c1C4020:
#data 0x5379730A
#data 0x74726174
#data 0x72655620
#data 0x312E3120
#data 0x75422035
#data 0x3A646C69
#data 0x20766F4E
#data 0x31203630
#data 0x20393939
#data 0x303A3332
#data 0x30333A30
#data 0x0000000A

#align4
loc_8c1C4050:
#data 0x00007325

#align4
loc_8c1C4054:
#data 0x30313845
#data 0x32303231
#data 0x6163203A
#data 0x2074276E
#data 0x6E65706F
#data 0x2C642520
#data 0x20642520
#data 0x58444128
#data 0x74535F54
#data 0x41747261
#data 0x0A297366
#data 0x00000000

#align4
loc_8c1C4084:
#data 0x30313845
#data 0x35303231
#data 0x6163203A
#data 0x2074276E
#data 0x6E65706F
#data 0x73252720
#data 0x41282027
#data 0x5F545844
#data 0x72617453
#data 0x616E4674
#data 0x0029656D

#align4
loc_8c1C40B0:
#data 0x30313845
#data 0x37303231
#data 0x6163203A
#data 0x2074276E
#data 0x61657263
#data 0x73206574
#data 0x4128206A
#data 0x5F545844
#data 0x72617453
#data 0x6D654D74
#data 0x00000A29

#align4
loc_8c1C40DC:
#data 0x30313845
#data 0x37303231
#data 0x6163203A
#data 0x2074276E
#data 0x61657263
#data 0x73206574
#data 0x4128206A
#data 0x5F545844
#data 0x72617453
#data 0x6D654D74
#data 0x29786449
#data 0x00000000

#align4
loc_8c1C410C:
#data 0x5844410A
#data 0x65562054
#data 0x2E352E72
#data 0x42203636
#data 0x646C6975
#data 0x6775413A
#data 0x20363220
#data 0x39393931
#data 0x3A323120
#data 0x323A3633
#data 0x00000A37

#align4
loc_8c1C4138:
#data 0x30313845
#data 0x38303231
#data 0x6170203A
#data 0x656D6172
#data 0x20726574
#data 0x6F727265
#data 0x41282072
#data 0x5F545844
#data 0x4F746553
#data 0x61507475
#data 0x0000296E

#align4
loc_8c1C4164:
#data 0x2D2D2D0A
#data 0x2D2D2D2D
#data 0x2D2D2D2D
#data 0x2D2D2D2D
#data 0x2D2D2D2D
#data 0x2D2D2D2D
#data 0x2D2D2D2D
#data 0x2D2D2D2D
#data 0x2D2D2D2D
#data 0x2D2D2D2D
#data 0x2D2D2D2D
#data 0x2D2D2D2D
#data 0x0A2D2D2D
#data 0x69685320
#data 0x69626F6E
#data 0x62694C20
#data 0x79726172
#data 0x726F6620
#data 0x65724420
#data 0x61636D61
#data 0x56207473
#data 0x69737265
#data 0x31206E6F
#data 0x0A32362E
#data 0x706F4320
#data 0x67697279
#data 0x28207468
#data 0x31202943
#data 0x2C383939
#data 0x39393931
#data 0x47455320
#data 0x2D2D0A41
#data 0x2D2D2D2D
#data 0x2D2D2D2D
#data 0x2D2D2D2D
#data 0x2D2D2D2D
#data 0x2D2D2D2D
#data 0x2D2D2D2D
#data 0x2D2D2D2D
#data 0x2D2D2D2D
#data 0x2D2D2D2D
#data 0x2D2D2D2D
#data 0x2D2D2D2D
#data 0x2D2D2D2D
#data 0x6968530A
#data 0x69626F6E
#data 0x72655620
#data 0x362E3120
#data 0x75422032
#data 0x3A646C69
#data 0x20677541
#data 0x31203033
#data 0x20393939
#data 0x333A3731
#data 0x33303A32
#data 0x0000000A

#align4
loc_8c1C4244:
#data loc_8c1C4268

loc_8c1C4248:
#data 0x2062694C
#data 0x646E6148
#data 0x5320656C
#data 0x74726174

#align4
loc_8c1C4258:
#data 0x2062694C
#data 0x646E6148
#data 0x4520656C
#data 0x2020646E

#align4
loc_8c1C4268:
#data 0x20766F0A
#data 0x2E726556
#data 0x30302E31
#data 0x6C697542
#data 0x70413A64
#data 0x33322072
#data 0x39393120
#data 0x32322039
#data 0x3A33313A
#data 0x000A3130

#align4
loc_8c1C4290:
#data loc_8c1C4320

loc_8c1C4294:
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8c1C42A0:
#data bank17.loc_8c175B44

loc_8c1C42A4:
#data bank17.loc_8c175C62

loc_8c1C42A8:
#data bank17.loc_8c175D4C

loc_8c1C42AC:
#data bank17.loc_8c175514

loc_8c1C42B0:
#data bank17.loc_8c1757A4

loc_8c1C42B4:
#data bank17.loc_8c175DAE

loc_8c1C42B8:
#data bank17.loc_8c175EBA

loc_8c1C42BC:
#data bank17.loc_8c175EBE

loc_8c1C42C0:
#data bank17.loc_8c175F26

loc_8c1C42C4:
#data bank17.loc_8c1760FA

loc_8c1C42C8:
#data bank17.loc_8c176102

loc_8c1C42CC:
#data bank17.loc_8c175F70

loc_8c1C42D0:
#data bank17.loc_8c175FE0

loc_8c1C42D4:
#data bank17.loc_8c176058

loc_8c1C42D8:
#data bank17.loc_8c17605C

loc_8c1C42DC:
#data bank17.loc_8c1760CE

loc_8c1C42E0:
#data bank17.loc_8c1760F2

loc_8c1C42E4:
#data bank17.loc_8c17610A

loc_8c1C42E8:
#data bank17.loc_8c176194

loc_8c1C42EC:
#data bank17.loc_8c1761CC

loc_8c1C42F0:
#data bank17.loc_8c17629C

loc_8c1C42F4:
#data bank17.loc_8c1763A8

loc_8c1C42F8:
#data bank17.loc_8c1764A0

loc_8c1C42FC:
#data bank17.loc_8c17654A

loc_8c1C4300:
#data bank17.loc_8c176606

loc_8c1C4304:
#data bank17.loc_8c176726

loc_8c1C4308:
#data bank17.loc_8c17625C

loc_8c1C430C:
#data bank17.loc_8c1767BC

loc_8c1C4310:
#data 0x000000A6

#align4
loc_8c1C4314:
#data 0x00000001

#align4
loc_8c1C4318:
#data 0x30304443
#data 0x00000031

#align4
loc_8c1C4320:
#data 0x4664670A
#data 0x65562073
#data 0x2E312072
#data 0x42203830
#data 0x646C6975
#data 0x7270413A
#data 0x20363220
#data 0x39393931
#data 0x3A343120
#data 0x353A3932
#data 0x00000A38
#data 0x4B64700A
#data 0x56206462
#data 0x31207265
#data 0x2031352E
#data 0x6C697542
#data 0x754A3A64
#data 0x3033206C
#data 0x39393120
#data 0x35312039
#data 0x3A31303A
#data 0x000A3533

#align4
loc_8c1C4378:
#data 0x120C0600
#data 0x2064700A
#data 0x20726556
#data 0x30352E31
#data 0x69754220
#data 0x4A3A646C
#data 0x33206C75
#data 0x39312030
#data 0x31203939
#data 0x31303A35
#data 0x0A33333A
#data 0x00000000

#align4
loc_8c1C43A8:
#data 0x0000000A

#align4
loc_8c1C43AC:
#data 0x00000001

#align4
loc_8c1C43B0:
#data 0x206F6E28
#data 0x69766564
#data 0x00296563

#align4
loc_8c1C43BC:
#data 0x00000000
#data 0x00000006
#data 0x0000000C
#data 0x00000012

#align4
loc_8c1C43CC:
#data loc_8c1C43E4
#data 0x00000501

#align4
loc_8c1C43D4:
#data bank17.loc_8c177CFE

loc_8c1C43D8:
#data bank17.loc_8c177DCC

loc_8c1C43DC:
#data bank17.loc_8c177FB6

loc_8c1C43E0:
#data bank17.loc_8c177E84

loc_8c1C43E4:
#data 0x4D79730A
#data 0x6F6C6C61
#data 0x65562063
#data 0x2E312072
#data 0x42203035
#data 0x646C6975
#data 0x79614D3A
#data 0x20313320
#data 0x39393931
#data 0x3A363120
#data 0x303A3933
#data 0x00000A36

#align4
loc_8c1C4414:
#data loc_8c1C4478

loc_8c1C4418:
#data 0x00000000
#data 0x0000001F
#data 0x0000003B
#data 0x0000005A
#data 0x00000078
#data 0x00000097
#data 0x000000B5
#data 0x000000D4
#data 0x000000F3
#data 0x00000111
#data 0x00000130
#data 0x0000014E

#align4
loc_8c1C4448:
#data 0x00000000
#data 0x0000001F
#data 0x0000003B
#data 0x0000005A
#data 0x00000078
#data 0x00000097
#data 0x000000B5
#data 0x000000D4
#data 0x000000F3
#data 0x00000111
#data 0x00000130
#data 0x0000014E

#align4
loc_8c1C4478:
#data 0x5279730A
#data 0x56206374
#data 0x31207265
#data 0x2032302E
#data 0x6C697542
#data 0x614D3A64
#data 0x31332079
#data 0x39393120
#data 0x39302039
#data 0x3A35303A
#data 0x000A3032
#data 0x4879730A
#data 0x65562077
#data 0x2E312072
#data 0x42203730
#data 0x646C6975
#data 0x7270413A
#data 0x20363220
#data 0x39393931
#data 0x3A363120
#data 0x333A3535
#data 0x00000A31

#align4
loc_8c1C44D0:
#data 0x00000105

#align4
loc_8c1C44D4:
#data 0x00000000

#align4
loc_8c1C44D8:
#data 0xA05F6800
#data 0x11FF0000
#data 0xA05F6804
#data 0x00000020
#data 0xA05F6810
#data 0x0CFF0000
#data 0xA05F6814
#data 0x0CFF0000
#data 0xA05F6818
#data 0x00000000
#data 0xA05F681C
#data 0x00000000
#data 0xA05F6840
#data 0x00000000
#data 0xA05F6844
#data 0x00000000
#data 0xA05F6848
#data 0x00000000
#data 0xA05F684C
#data 0x00000000
#data 0xA05F6884
#data 0x00000000
#data 0xA05F6888
#data 0x00000000
#data 0xA05F68A0
#data 0x80000000
#data 0xA05F68A4
#data 0x00000000
#data 0xA05F68AC
#data 0x00000000
#data 0xA05F6910
#data 0x00000000
#data 0xA05F6914
#data 0x00000000
#data 0xA05F6918
#data 0x00000000
#data 0xA05F6920
#data 0x00000000
#data 0xA05F6924
#data 0x00000000
#data 0xA05F6928
#data 0x00000000
#data 0xA05F6930
#data 0x00000000
#data 0xA05F6934
#data 0x00000000
#data 0xA05F6938
#data 0x00000000
#data 0xA05F6940

#align4
loc_8c1C459C:
#data 0x00000000
#data 0xA05F6944
#data 0x00000000
#data 0xA05F6950
#data 0x00000000
#data 0xA05F6954
#data 0x00000000
#data 0xA05F6C04
#data 0x0CFF0000
#data 0xA05F6C10
#data 0x00000000
#data 0xA05F6C14
#data 0x00000000
#data 0xA05F6C80
#data 0xC3500000
#data 0xA05F6C8C
#data 0x61557F00
#data 0xA05F6CE8
#data 0x00000001
#data 0xA05F7800
#data 0x009F0000
#data 0xA05F7804
#data 0x0CFF0000
#data 0xA05F7808
#data 0x00000020
#data 0xA05F780C
#data 0x00000000
#data 0xA05F7810
#data 0x00000005
#data 0xA05F7814
#data 0x00000000
#data 0xA05F781C
#data 0x00000000
#data 0xA05F7820
#data 0x009F0000
#data 0xA05F7824
#data 0x0CFF0000
#data 0xA05F7828
#data 0x00000020
#data 0xA05F782C
#data 0x00000000
#data 0xA05F7830
#data 0x00000005
#data 0xA05F7834
#data 0x00000000
#data 0xA05F783C
#data 0x00000000
#data 0xA05F7840
#data 0x009F0000
#data 0xA05F7844
#data 0x0CFF0000
#data 0xA05F7848
#data 0x00000020
#data 0xA05F784C
#data 0x00000000
#data 0xA05F7850
#data 0x00000005
#data 0xA05F7854
#data 0x00000000
#data 0xA05F785C
#data 0x00000000
#data 0xA05F7890
#data 0x0000001B
#data 0xA05F7894
#data 0x00000271
#data 0xA05F7898
#data 0x00000000
#data 0xA05F789C
#data 0x00000001
#data 0xA05F78A0
#data 0x00000000
#data 0xA05F78A4
#data 0x00000000
#data 0xA05F78A8
#data 0x00000000
#data 0xA05F78AC
#data 0x00000000
#data 0xA05F78B0
#data 0x00000000
#data 0xA05F78B4
#data 0x00000000
#data 0xA05F78B8
#data 0x00000000
#data 0xA05F78BC
#data 0x46597F00
#data 0xA05F7C00
#data 0x04FF0000
#data 0xA05F7C04
#data 0x0CFF0000
#data 0xA05F7C08
#data 0x00000020
#data 0xA05F7C0C
#data 0x00000000
#data 0xA05F7C10
#data 0x00000000
#data 0xA05F7C14
#data 0x00000000
#data 0xA05F7C80
#data 0x67027F00
#data 0xA05F6808
#data 0x00000000
#data 0xA05F6820
#data 0x00000000
#data 0xA05F6C18
#data 0x00000000
#data 0xA05F7418
#data 0x00000000
#data 0xA05F7818
#data 0x00000000
#data 0xA05F7838
#data 0x00000000
#data 0xA05F7858
#data 0x00000000
#data 0xA05F7C18
#data 0x00000000
#data 0xA05F6900
#data 0xFFFFFFFF
#data 0xA05F6908
#data 0xFFFFFFFF
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8c1C47B0:
#data loc_8c1C47B4

loc_8c1C47B4:
#data 0x5479730A
#data 0x5620726D
#data 0x31207265
#data 0x2034302E
#data 0x6C697542
#data 0x70413A64
#data 0x36322072
#data 0x39393120
#data 0x34312039
#data 0x3A33343A
#data 0x000A3135
#data 0x4C64700A
#data 0x56206463
#data 0x31207265
#data 0x2034302E
#data 0x6C697542
#data 0x70413A64
#data 0x36322072
#data 0x39393120
#data 0x36312039
#data 0x3A35353A
#data 0x000A3532

#align4
loc_8c1C480C:
#data 0x03020001
#data 0x02030100
#data 0x00010203
#data 0x01000302

#align4
loc_8c1C481C:
#data 0xFF0100FF
#data 0x02FFFFFF
#data 0xFFFFFF03
#data 0xFF0504FF
#data 0x06FFFFFF
#data 0xFFFFFF07

#align4
loc_8c1C4834:
#data 0x00000000
#data 0x06060000
#data 0x06060606
#data 0x0C0C0C0C
#data 0x12120C0C
#data 0x12121212
#data 0x2075620A
#data 0x20726556
#data 0x37342E31
#data 0x69754220
#data 0x4D3A646C
#data 0x32207961
#data 0x39312035
#data 0x31203939
#data 0x37323A37
#data 0x0A39323A
#data 0x20534D56
#data 0x656C6946
#data 0x73795320
#data 0x206D6574
#data 0x20726F66
#data 0x6C707041
#data 0x74616369
#data 0x286E6F69
#data 0x616E7964
#data 0x2063696D
#data 0x6B726F77
#data 0x6C6C6120
#data 0x2029636F
#data 0x00000000

#align4
loc_8c1C48AC:
#data 0x00000014

#align4
loc_8c1C48B0:
#data loc_8c1C48B4

loc_8c1C48B4:
#data 0x4279730A
#data 0x746E4674
#data 0x72655620
#data 0x302E3120
#data 0x75422032
#data 0x3A646C69
#data 0x2079614D
#data 0x31203133
#data 0x20393939
#data 0x303A3930
#data 0x39313A31
#data 0x0000000A

#align4
loc_8c1C48E4:
#data 0x4379730A
#data 0x56206766
#data 0x31207265
#data 0x2035312E
#data 0x6C697542
#data 0x70413A64
#data 0x36322072
#data 0x39393120
#data 0x34312039
#data 0x3A38333A
#data 0x000A3935

#align4
loc_8c1C4910:
#data loc_8c1C4914

loc_8c1C4914:
#data 0x4279730A
#data 0x65562074
#data 0x2E312072
#data 0x42203630
#data 0x646C6975
#data 0x79614D3A
#data 0x20363220
#data 0x39393931
#data 0x3A333120
#data 0x353A3935
#data 0x00000A35

#align4
loc_8c1C4940:
#data 0x00000001
#data 0x00000000

#align4
loc_8c1C4948:
#data 0x554D414B
#data 0x43203249
#data 0x7279706F
#data 0x74686769
#data 0x29432820
#data 0x43454E20
#data 0x726F4320
#data 0x61726F70
#data 0x6E6F6974
#data 0x39393120
#data 0x6B0A2039
#data 0x69756D61
#data 0x65562032
#data 0x36312072
#data 0x322C332C
#data 0x4220302C
#data 0x646C6975
#data 0x6C754A3A
#data 0x20333220
#data 0x39393931
#data 0x3A313120
#data 0x353A3630
#data 0x00000A34

#align4
loc_8c1C49A4:
#data 0x332C3631
#data 0x302C322C
#data 0x00000000

#align4
loc_8c1C49B0:
#data 0x20000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8c1C49D0:
#data 0xFFFFFFFF
#data 0x01000000
#data 0x00800440
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0xFFFFFFFF
#data 0xFFFFFFFF

#align4
loc_8c1C49F0:
#data 0xF0000000
#data 0xBFC00000
#data 0xBF800000
#data 0x3DCCCCCD
#data 0xBF000000
#data 0xBF800000
#data 0x3DCCCCCD
#data 0xBF000000
#data 0xBF000000
#data 0x3DCCCCCD
#data 0xBFC00000
#data 0xBF000000
#data 0xFFFFFFFF
#data 0xFFFFFFFF
#data 0xFFFFFFFF
#data 0xFFFFFFFF

#align4
loc_8c1C4A30:
#data 0x00000004
#data 0x00000004
#data 0x00000005

#align4
loc_8c1C4A3C:
#data 0x000000FF
#data 0x000000FF
#data 0x00000006
#data 0x00000002
#data 0x00000007
#data 0x00000003
#data 0x00000005
#data 0x00000003
#data 0x00000004
#data 0x00000002
#data 0x00000001
#data 0x00000000

#align4
loc_8c1C4A6C:
#data 0x00000000
#data 0x00000002
#data 0x00000008
#data 0x0000000A

#align4
loc_8c1C4A7C:
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000001
#data 0x00000002
#data 0x00000000
#data 0x00000000
#data 0x00000003
#data 0x00000003
#data 0x000000FF
#data 0x000000FF
#data 0x00000004
#data 0x00000004
#data 0x00000003
#data 0x00000003
#data 0x00000006
#data 0x00000006
#data 0x00000006
#data 0x00000006
#data 0x00000006
#data 0x00000006
#data 0x00000006
#data 0x00000006
#data 0x00000006
#data 0x00000006
#data 0x00000006
#data 0x00000006
#data 0x00000006
#data 0x00000006
#data 0x00000006
#data 0x00000006
#data 0x00000005
#data 0x00000005
#data 0x00000005
#data 0x00000005
#data 0x00000005
#data 0x00000005
#data 0x00000005
#data 0x00000005
#data 0x00000005
#data 0x00000005
#data 0x00000005
#data 0x00000005
#data 0x00000005
#data 0x00000005
#data 0x00000005
#data 0x00000005
#data 0x000000FF
#data 0x000000FF
#data 0x000000FF
#data 0x000000FF
#data 0x000000FF
#data 0x000000FF
#data 0x000000FF
#data 0x000000FF
#data 0x000000FF
#data 0x000000FF
#data 0x000000FF
#data 0x000000FF
#data 0x000000FF
#data 0x000000FF
#data 0x000000FF
#data 0x000000FF

#align4
loc_8c1C4B7C:
#data 0x30313845
#data 0x30313231
#data 0x6163203A
#data 0x2074276E
#data 0x6E65706F
#data 0x73252720
#data 0x41282027
#data 0x54535844
#data 0x704F5F4D
#data 0x6E466E65
#data 0x29656D61
#data 0x00000000

#align4
loc_8c1C4BAC:
#data 0x30313845
#data 0x31313231
#data 0x6163203A
#data 0x2074276E
#data 0x46746547
#data 0x53656C69
#data 0x20657A69
#data 0x58444128
#data 0x5F4D5453
#data 0x6E65704F
#data 0x6D616E46
#data 0x00002965

#align4
loc_8c1C4BDC:
#data 0x30313845
#data 0x32313231
#data 0x6163203A
#data 0x2074276E
#data 0x6E65706F
#data 0x64616620
#data 0x2C64253D
#data 0x63736E20
#data 0x64253D74
#data 0x44412820
#data 0x4D545358
#data 0x65704F5F
#data 0x6E61526E
#data 0x00296567

#align4
loc_8c1C4C14:
#data 0x6E65704F
#data 0x676E6152
#data 0x00000065

#align4
loc_8c1C4C20:
#data 0x30313845
#data 0x33313231
#data 0x6163203A
#data 0x2074276E
#data 0x6E65706F
#data 0x73252720
#data 0x44412827
#data 0x4D545358
#data 0x65704F5F
#data 0x616E466E
#data 0x6152656D
#data 0x2965676E
#data 0x00000000

#align4
loc_8c1C4C54:
#data 0x30313845
#data 0x34313231
#data 0x4447203A
#data 0x65205346
#data 0x726F7272
#data 0x64612820
#data 0x6D747378
#data 0x74735F66
#data 0x655F7461
#data 0x29636578
#data 0x0000000A

#align4
loc_8c1C4C80:
#data 0x30313845
#data 0x31303231
#data 0x6F6E203A
#data 0x6E652074
#data 0x6867756F
#data 0x74616420
#data 0x61282061
#data 0x5F747864
#data 0x70617274
#data 0x746E655F
#data 0x0A297972
#data 0x00000000

#align4
loc_8c1C4CB0:
#data 0x38303945
#data 0x31303031
#data 0x6163203A
#data 0x2074276E
#data 0x79616C70
#data 0x20642520
#data 0x64206863
#data 0x20617461
#data 0x78616D28
#data 0x253D6863
#data 0x5B202964
#data 0x74786461
#data 0x6174735F
#data 0x65645F74
#data 0x666E6963
#data 0x000A5D6F

#align4
loc_8c1C4CF0:
#data loc_8c1C5330

loc_8c1C4CF4:
#data 0x34303945
#data 0x31303830
#data 0x7470273A
#data 0x20276469
#data 0x72207369
#data 0x65676E61
#data 0x74756F20
#data 0x65646973
#data 0x6461282E
#data 0x435F6678
#data 0x72506B68
#data 0x2974506D
#data 0x0000000A

#align4
loc_8c1C4D28:
#data 0x34303945
#data 0x32303830
#data 0x7470273A
#data 0x6F666E69
#data 0x73692027
#data 0x4C554E20
#data 0x61282E4C
#data 0x5F667864
#data 0x506B6843
#data 0x74506D72
#data 0x00000A29

#align4
loc_8c1C4D54:
#data 0x34303945
#data 0x33303830
#data 0x6E61633A
#data 0x67207427
#data 0x46207465
#data 0x6F204441
#data 0x25272066
#data 0x282E2773
#data 0x46584441
#data 0x616F4C5F
#data 0x72615064
#data 0x69746974
#data 0x0A296E6F
#data 0x00000000

#align4
loc_8c1C4D8C:
#data 0x34303945
#data 0x34303830
#data 0x6E61633A
#data 0x6F207427
#data 0x206E6570
#data 0x27732527
#data 0x4441282E
#data 0x4C5F4658
#data 0x5064616F
#data 0x69747261
#data 0x6E6F6974
#data 0x00000A29

#align4
loc_8c1C4DBC:
#data 0x34303945
#data 0x35303830
#data 0x6165723A
#data 0x72652064
#data 0x27726F72
#data 0x2E277325
#data 0x58444128
#data 0x6F4C5F46
#data 0x61506461
#data 0x7472

loc_8c1C4DE2:
#data 0x7469
#data 0x296E6F69
#data 0x0000000A

#align4
loc_8c1C4DEC:
#data 0x34303945
#data 0x36303830
#data 0x7325273A
#data 0x73692027
#data 0x6F726220
#data 0x2E6E656B
#data 0x58444128
#data 0x6F4C5F46
#data 0x61506461
#data 0x74697472
#data 0x296E6F69
#data 0x0000000A

#align4
loc_8c1C4E1C:
#data 0x34303945
#data 0x37303830
#data 0x6E61633A
#data 0x66207427
#data 0x20646E69
#data 0x27732527
#data 0x4441282E
#data 0x415F4658
#data 0x61506464
#data 0x74697472
#data 0x296E6F69
#data 0x0000000A

#align4
loc_8c1C4E4C:
#data 0x34303945
#data 0x38303830
#data 0x6E61633A
#data 0x20746F6E
#data 0x6E65706F
#data 0x73252720
#data 0x41282E27
#data 0x5F465844
#data 0x50646441
#data 0x69747261
#data 0x6E6F6974
#data 0x00000A29

#align4
loc_8c1C4E7C:
#data 0x34303945
#data 0x39303830
#data 0x6165723A
#data 0x72652064
#data 0x27726F72
#data 0x2E277325
#data 0x58444128
#data 0x6F4C5F46
#data 0x61506461
#data 0x74697472
#data 0x296E6F69
#data 0x0000000A

#align4
loc_8c1C4EAC:
#data 0x34303945
#data 0x30313830
#data 0x7325273A
#data 0x73692027
#data 0x6F726220
#data 0x2E6E656B
#data 0x58444128
#data 0x6F4C5F46
#data 0x61506461
#data 0x74697472
#data 0x296E6F69
#data 0x0000000A

#align4
loc_8c1C4EDC:
#data 0x34303945
#data 0x31303930
#data 0x6E61633A
#data 0x66207427
#data 0x20646E69
#data 0x27732527
#data 0x4441282E
#data 0x4F5F4658
#data 0x296E6570
#data 0x0000000A

#align4
loc_8c1C4F04:
#data 0x34303945
#data 0x32303930
#data 0x6E61633A
#data 0x67207427
#data 0x66207465
#data 0x20656C69
#data 0x657A6973
#data 0x74637328
#data 0x25272029
#data 0x282E2773
#data 0x46584441
#data 0x65704F5F
#data 0x000A296E

#align4
loc_8c1C4F38:
#data 0x34303945
#data 0x33303930
#data 0x6E61633A
#data 0x67207427
#data 0x66207465
#data 0x20656C69
#data 0x657A6973
#data 0x74796228
#data 0x27202965
#data 0x2E277325
#data 0x58444128
#data 0x704F5F46
#data 0x0A296E65
#data 0x00000000

#align4
loc_8c1C4F70:
#data 0x34303945
#data 0x31313830
#data 0x6461273A
#data 0x20276678
#data 0x4E207369
#data 0x2E4C4C55
#data 0x78646128
#data 0x65725F66
#data 0x735F6461
#data 0x2932336A
#data 0x0000000A

#align4
loc_8c1C4F9C:
#data 0x34303945
#data 0x32313830
#data 0x736E273A
#data 0x69277463
#data 0x656E2073
#data 0x69746167
#data 0x282E6576
#data 0x66786461
#data 0x6165725F
#data 0x6A735F64
#data 0x0A293233
#data 0x00000000

#align4
loc_8c1C4FCC:
#data 0x34303945
#data 0x33313830
#data 0x6A73273A
#data 0x20736927
#data 0x4C4C554E
#data 0x6461282E
#data 0x725F6678
#data 0x5F646165
#data 0x32336A73
#data 0x00000A29

#align4
loc_8c1C4FF4:
#data 0x34303945
#data 0x35313830
#data 0x6461273A
#data 0x3E2D6678
#data 0x276D7473
#data 0x6E736920
#data 0x4E207427
#data 0x2E4C4C55
#data 0x78646128
#data 0x65725F66
#data 0x735F6461
#data 0x2932336A
#data 0x0000000A

#align4
loc_8c1C5028:
#data 0x34303945
#data 0x36313830
#data 0x6461273A
#data 0x20276678
#data 0x4E207369
#data 0x2E4C4C55
#data 0x58444128
#data 0x65525F46
#data 0x774E6461
#data 0x0A293233
#data 0x00000000

#align4
loc_8c1C5054:
#data 0x34303945
#data 0x37313830
#data 0x736E273A
#data 0x20277463
#data 0x6E207369
#data 0x74616765
#data 0x2E657669
#data 0x58444128
#data 0x65525F46
#data 0x774E6461
#data 0x0A293233
#data 0x00000000

#align4
loc_8c1C5084:
#data 0x34303945
#data 0x38313830
#data 0x7562273A
#data 0x69202766
#data 0x554E2073
#data 0x282E4C4C
#data 0x46584441
#data 0x6165525F
#data 0x33774E64
#data 0x000A2932

#align4
loc_8c1C50AC:
#data 0x34303945
#data 0x39313830
#data 0x696C613A
#data 0x656D6E67
#data 0x6F20746E
#data 0x62272066
#data 0x20276675
#data 0x276E7369
#data 0x32332074
#data 0x65747962
#data 0x4441282E
#data 0x525F4658
#data 0x4E646165
#data 0x29323377
#data 0x0000000A

#align4
loc_8c1C50E8:
#data 0x34303945
#data 0x31323830
#data 0x6A73273A
#data 0x73692027
#data 0x4C554E20
#data 0x41282E4C
#data 0x5F465844
#data 0x64616552
#data 0x3233774E
#data 0x00000A29

#align4
loc_8c1C5110:
#data 0x34303945
#data 0x32323830
#data 0x6461273A
#data 0x20276678
#data 0x4E207369
#data 0x2E4C4C55
#data 0x58444128
#data 0x74535F46
#data 0x0A29706F
#data 0x00000000

#align4
loc_8c1C5138:
#data 0x34303945
#data 0x33323830
#data 0x6461273A
#data 0x3E2D6678
#data 0x276D7473
#data 0x20736920
#data 0x4C4C554E
#data 0x4441282E
#data 0x535F4658
#data 0x29706F74
#data 0x0000000A

#align4
loc_8c1C5164:
#data 0x34303945
#data 0x35323830
#data 0x6461273A
#data 0x20276678
#data 0x4E207369
#data 0x2E4C4C55
#data 0x58444128
#data 0x65535F46
#data 0x0A296B65
#data 0x00000000

#align4
loc_8c1C518C:
#data 0x34303945
#data 0x36323830
#data 0x7974273A
#data 0x20276570
#data 0x69207369
#data 0x67696C6C
#data 0x282E6C61
#data 0x46584441
#data 0x6565535F
#data 0x000A296B

#align4
loc_8c1C51B4:
#data 0x34303945
#data 0x37323830
#data 0x6461273A
#data 0x20276678
#data 0x4E207369
#data 0x2E4C4C55
#data 0x58444128
#data 0x65545F46
#data 0x0A296C6C
#data 0x00000000

#align4
loc_8c1C51DC:
#data 0x34303945
#data 0x38323830
#data 0x6461273A
#data 0x20276678
#data 0x4E207369
#data 0x2E4C4C55
#data 0x58444128
#data 0x65475F46
#data 0x69734674
#data 0x6353657A
#data 0x000A2974

#align4
loc_8c1C5208:
#data 0x34303945
#data 0x39323830
#data 0x6461273A
#data 0x20276678
#data 0x4E207369
#data 0x2E4C4C55
#data 0x58444128
#data 0x65475F46
#data 0x69734674
#data 0x7942657A
#data 0x0A296574
#data 0x00000000

#align4
loc_8c1C5238:
#data 0x34303945
#data 0x30333830
#data 0x6461273A
#data 0x20276678
#data 0x4E207369
#data 0x2E4C4C55
#data 0x58444128
#data 0x65475F46
#data 0x6D754E74
#data 0x53716552
#data 0x0A297463
#data 0x00000000

#align4
loc_8c1C5268:
#data 0x34303945
#data 0x31333830
#data 0x6461273A
#data 0x20276678
#data 0x4E207369
#data 0x2E4C4C55
#data 0x58444128
#data 0x65475F46
#data 0x6D754E74
#data 0x64616552
#data 0x29746353
#data 0x0000000A

#align4
loc_8c1C5298:
#data 0x34303945
#data 0x32333830
#data 0x6461273A
#data 0x20276678
#data 0x4E207369
#data 0x2E4C4C55
#data 0x58444128
#data 0x65475F46
#data 0x61745374
#data 0x000A2974

#align4
loc_8c1C52C0:
#data 0x34303945
#data 0x38323830
#data 0x7470273A
#data 0x20276469
#data 0x72207369
#data 0x65676E61
#data 0x74756F20
#data 0x65646973
#data 0x4441282E
#data 0x475F4658
#data 0x69467465
#data 0x6152656C
#data 0x2965676E
#data 0x0000000A

#align4
loc_8c1C52F8:
#data 0x34303945
#data 0x38323830
#data 0x6C66273A
#data 0x20276469
#data 0x72207369
#data 0x65676E61
#data 0x74756F20
#data 0x65646973
#data 0x4441282E
#data 0x475F4658
#data 0x69467465
#data 0x6152656C
#data 0x2965676E
#data 0x0000000A

#align4
loc_8c1C5330:
#data 0x5844410A
#data 0x65562046
#data 0x2E352E72
#data 0x42203335
#data 0x646C6975
#data 0x6E754A3A
#data 0x20373020
#data 0x39393931
#data 0x3A313120
#data 0x313A3434
#data 0x00000A36

#align4
loc_8c1C535C:
#data loc_8c1C5514

loc_8c1C5360:
#data 0x30323145
#data 0x776D3A31
#data 0x43616E52
#data 0x74616572
#data 0x6C492065
#data 0x6167696C
#data 0x6170206C
#data 0x656D6172
#data 0x20726574
#data 0x58414D28
#data 0x2948434E
#data 0x00000000

#align4
loc_8c1C5390:
#data 0x30323145
#data 0x776D3A32
#data 0x43616E52
#data 0x74616572
#data 0x6C492065
#data 0x6167696C
#data 0x6170206C
#data 0x656D6172
#data 0x20726574
#data 0x294A5328
#data 0x00000000

#align4
loc_8c1C53BC:
#data 0x30323145
#data 0x776D3A33
#data 0x43616E52
#data 0x74616572
#data 0x6F4E2065
#data 0x6E652074
#data 0x6867756F
#data 0x736E6920
#data 0x636E6174
#data 0x4D282065
#data 0x414E5257
#data 0x00000029

#align4
loc_8c1C53EC:
#data 0x30323145
#data 0x776D3A34
#data 0x43616E52
#data 0x74616572
#data 0x61432065
#data 0x746F6E6E
#data 0x65706F20
#data 0x574D206E
#data 0x00444E53

#align4
loc_8c1C5410:
#data 0x30323145
#data 0x6C493A35
#data 0x6167696C
#data 0x6170206C
#data 0x656D6172
#data 0x20726574
#data 0x52574D28
#data 0x4E3D414E
#data 0x294C4C55
#data 0x00000000

#align4
loc_8c1C5438:
#data 0x31323145
#data 0x776D3A33
#data 0x616E526C
#data 0x57646441
#data 0x736F5072
#data 0x616E7220
#data 0x6A733E2D
#data 0x4C554E3D
#data 0x0000004C

#align4
loc_8c1C545C:
#data 0x30323145
#data 0x776D3A39
#data 0x50616E52
#data 0x65737561
#data 0x6D695420
#data 0x756F2065
#data 0x666F2074
#data 0x69617720
#data 0x6F662074
#data 0x4D442072
#data 0x69662041
#data 0x6873696E
#data 0x00000000

#align4
loc_8c1C5490:
#data 0x31323145
#data 0x776D3A32
#data 0x616E526C
#data 0x72617453
#data 0x61725474
#data 0x7220736E
#data 0x3E2D616E
#data 0x4E3D6A73
#data 0x004C4C55

#align4
loc_8c1C54B4:
#data 0x31323145
#data 0x776D3A31
#data 0x53616E52
#data 0x754E7465
#data 0x6168436D
#data 0x6C49206E
#data 0x6167696C
#data 0x6170206C
#data 0x656D6172
#data 0x28726574
#data 0x3E48434E
#data 0x4E58414D
#data 0x00294843

#align4
loc_8c1C54E8:
#data 0x30323145
#data 0x776D3A37
#data 0x53616E52
#data 0x78467465
#data 0x6C6C4920
#data 0x6C616769
#data 0x72617020
#data 0x74656D61
#data 0x28207265
#data 0x48435846
#data 0x00000029

#align4
loc_8c1C5514:
#data 0x52776D0A
#data 0x5620616E
#data 0x312E7265
#data 0x2036322E
#data 0x6C697542
#data 0x75413A64
#data 0x35322067
#data 0x39393120
#data 0x31322039
#data 0x3A35353A
#data 0x000A3633

#align4
loc_8c1C5540:
#data 0xDD9EEE41
#data 0x11D21679
#data 0x60006C93
#data 0xBC489408

#align4
loc_8c1C5550:
#data 0x3B9A9E81
#data 0x11D20DBB
#data 0x4544BFA6
#data 0x00005453

#align4
loc_8c1C5560:
#data 0x204A530A
#data 0x2E726556
#data 0x30352E35
#data 0x69754220
#data 0x4A3A646C
#data 0x31206E75
#data 0x39312030
#data 0x31203939
#data 0x31323A38
#data 0x0A31303A
#data 0x00000000

#align4
loc_8c1C558C:
#data 0x2E534FA3
#data 0x11D2AF97
#data 0x600027A5
#data 0xBC489408

#align4
loc_8c1C559C:
#data 0x10210000
#data 0x30632042
#data 0x50A54084
#data 0x70E760C6
#data 0x91298108
#data 0xB16BA14A
#data 0xD1ADC18C
#data 0xF1EFE1CE
#data 0x02101231
#data 0x22523273
#data 0x429452B5
#data 0x62D672F7
#data 0x83189339
#data 0xA35AB37B
#data 0xC39CD3BD
#data 0xE3DEF3FF
#data 0x34432462
#data 0x14010420
#data 0x74C764E6
#data 0x548544A4
#data 0xB54BA56A
#data 0x95098528
#data 0xF5CFE5EE
#data 0xD58DC5AC
#data 0x26723653
#data 0x06301611
#data 0x66F676D7
#data 0x46B45695
#data 0xA77AB75B
#data 0x87389719
#data 0xE7FEF7DF
#data 0xC7BCD79D
#data 0x58E548C4
#data 0x78A76886
#data 0x18610840
#data 0x38232802
#data 0xD9EDC9CC
#data 0xF9AFE98E
#data 0x99698948
#data 0xB92BA90A
#data 0x4AD45AF5
#data 0x6A967AB7
#data 0x0A501A71
#data 0x2A123A33
#data 0xCBDCDBFD
#data 0xEB9EFBBF
#data 0x8B589B79
#data 0xAB1ABB3B
#data 0x7C876CA6
#data 0x5CC54CE4
#data 0x3C032C22
#data 0x1C410C60
#data 0xFD8FEDAE
#data 0xDDCDCDEC
#data 0xBD0BAD2A
#data 0x9D498D68
#data 0x6EB67E97
#data 0x4EF45ED5
#data 0x2E323E13
#data 0x0E701E51
#data 0xEFBEFF9F
#data 0xCFFCDFDD
#data 0xAF3ABF1B
#data 0x8F789F59
#data 0x81A99188
#data 0xA1EBB1CA
#data 0xC12DD10C
#data 0xE16FF14E
#data 0x00A11080
#data 0x20E330C2
#data 0x40255004
#data 0x60677046
#data 0x939883B9
#data 0xB3DAA3FB
#data 0xD31CC33D
#data 0xF35EE37F
#data 0x129002B1
#data 0x32D222F3
#data 0x52144235
#data 0x72566277
#data 0xA5CBB5EA
#data 0x858995A8
#data 0xE54FF56E
#data 0xC50DD52C
#data 0x24C334E2
#data 0x048114A0
#data 0x64477466
#data 0x44055424
#data 0xB7FAA7DB
#data 0x97B88799
#data 0xF77EE75F
#data 0xD73CC71D
#data 0x36F226D3
#data 0x16B00691
#data 0x76766657
#data 0x56344615
#data 0xC96DD94C
#data 0xE92FF90E
#data 0x89E999C8
#data 0xA9ABB98A
#data 0x48655844
#data 0x68277806
#data 0x08E118C0
#data 0x28A33882
#data 0xDB5CCB7D
#data 0xFB1EEB3F
#data 0x9BD88BF9
#data 0xBB9AABBB
#data 0x5A544A75
#data 0x7A166A37
#data 0x1AD00AF1
#data 0x3A922AB3
#data 0xED0FFD2E
#data 0xCD4DDD6C
#data 0xAD8BBDAA
#data 0x8DC99DE8
#data 0x6C077C26
#data 0x4C455C64
#data 0x2C833CA2
#data 0x0CC11CE0
#data 0xFF3EEF1F
#data 0xDF7CCF5D
#data 0xBFBAAF9B
#data 0x9FF88FD9
#data 0x7E366E17
#data 0x5E744E55
#data 0x3EB22E93
#data 0x1EF00ED1

#align4
loc_8c1C579C:
#data bank18.loc_8c1832E0

loc_8c1C57A0:
#data bank18.loc_8c1832EE

loc_8c1C57A4:
#data bank18.loc_8c18336E

loc_8c1C57A8:
#data bank18.loc_8c18338A

loc_8c1C57AC:
#data bank18.loc_8c1833E2

loc_8c1C57B0:
#data bank18.loc_8c18349C

loc_8c1C57B4:
#data bank18.loc_8c1834A2

loc_8c1C57B8:
#data bank18.loc_8c1834C0

loc_8c1C57BC:
#data bank18.loc_8c1834F4

loc_8c1C57C0:
#data bank18.loc_8c183510

loc_8c1C57C4:
#data bank18.loc_8c18351E

loc_8c1C57C8:
#data bank18.loc_8c183540

loc_8c1C57CC:
#data bank18.loc_8c183562

loc_8c1C57D0:
#data bank18.loc_8c183572

loc_8c1C57D4:
#data bank18.loc_8c183590

loc_8c1C57D8:
#data bank18.loc_8c1835AC

loc_8c1C57DC:
#data bank18.loc_8c1835CE

loc_8c1C57E0:
#data bank18.loc_8c1835DC

loc_8c1C57E4:
#data bank18.loc_8c1835E2

loc_8c1C57E8:
#data bank18.loc_8c183602

loc_8c1C57EC:
#data 0x00005C2F

#align4
loc_8c1C57F0:
#data loc_8c1C57F8
#data 0x00020501

#align4
loc_8c1C57F8:
#data 0x4379730A
#data 0x65686361
#data 0x72655620
#data 0x352E3120
#data 0x75422032
#data 0x3A646C69
#data 0x206C754A
#data 0x31203232
#data 0x20393939
#data 0x353A3831
#data 0x38313A35
#data 0x0000000A

#align4
loc_8c1C5828:
#data loc_8c1C5830
#data 0x00000501

#align4
loc_8c1C5830:
#data 0x4379730A
#data 0x6E696168
#data 0x72655620
#data 0x352E3120
#data 0x75422030
#data 0x3A646C69
#data 0x2079614D
#data 0x31203133
#data 0x20393939
#data 0x333A3631
#data 0x31323A35
#data 0x0000000A

#align4
loc_8c1C5860:
#data loc_8c1C5868
#data 0x00000501

#align4
loc_8c1C5868:
#data 0x4979730A
#data 0x5620746E
#data 0x31207265
#data 0x2030352E
#data 0x6C697542
#data 0x614D3A64
#data 0x31332079
#data 0x39393120
#data 0x36312039
#data 0x3A38333A
#data 0x000A3031

#align4
loc_8c1C5894:
#data loc_8c1C589C
#data 0x00000501

#align4
loc_8c1C589C:
#data 0x5379730A
#data 0x65562071
#data 0x2E312072
#data 0x42203035
#data 0x646C6975
#data 0x79614D3A
#data 0x20313320
#data 0x39393931
#data 0x3A363120
#data 0x303A3632
#data 0x00000A30

#align4
loc_8c1C58C8:
#data 0x00000038
#data 0x00000001
#data 0x00000040
#data 0x00000001

#align4
loc_8c1C58D8:
#data 0x0000012C

#align4
loc_8c1C58DC:
#data 0x120C0600

#align4
loc_8c1C58E0:
#data 0x462A2A2A
#data 0x4C415441
#data 0x52524520
#data 0x433A524F
#data 0x6F6E6E61
#data 0x65672074
#data 0x65732074
#data 0x6870616D
#data 0x2165726F
#data 0x0000000A

#align4
loc_8c1C5908:
#data 0x20646B0A
#data 0x20726556
#data 0x38342E31
#data 0x69754220
#data 0x4A3A646C
#data 0x33206C75
#data 0x39312030
#data 0x31203939
#data 0x39353A34
#data 0x0A32353A
#data 0x00000000

#align4
loc_8c1C5934:
#data loc_8c1C5938

loc_8c1C5938:
#data 0x4379730A
#data 0x56206C62
#data 0x31207265
#data 0x2030312E
#data 0x6C697542
#data 0x70413A64
#data 0x37322072
#data 0x39393120
#data 0x33312039
#data 0x3A34353A
#data 0x000A3930

#align4
loc_8c1C5964:
#data 0x00000001

#align4
loc_8c1C5968:
#data 0x00000000

#align4
loc_8c1C596C:
#data 0x00000000

#align4
loc_8c1C5970:
#data 0x02010006
#data 0xFF050403

#align4
loc_8c1C5978:
#data 0x04030201
#data 0xFF000605

#align4
loc_8c1C5980:
#data loc_8c1C5998

loc_8c1C5984:
#data 0x4154414B
#data 0x465F414E
#data 0x4853414C
#data 0x5F5F5F5F
#data 0x00000000

#align4
loc_8c1C5998:
#data 0x4D6D660A
#data 0x5620676E
#data 0x31207265
#data 0x2034302E
#data 0x6C697542
#data 0x70413A64
#data 0x36322072
#data 0x39393120
#data 0x34312039
#data 0x3A34333A
#data 0x000A3134

#align4
loc_8c1C59C4:
#data 0x4279730A
#data 0x67664374
#data 0x72655620
#data 0x302E3120
#data 0x75422033
#data 0x3A646C69
#data 0x20727041
#data 0x31203632
#data 0x20393939
#data 0x333A3431
#data 0x32353A36
#data 0x0000000A
#data 0x5664700A
#data 0x56206269
#data 0x31207265
#data 0x2032302E
#data 0x6C697542
#data 0x70413A64
#data 0x36322072
#data 0x39393120
#data 0x36312039
#data 0x3A35353A
#data 0x000A3233

#align4
loc_8c1C5A20:
#data 0x00000000
#data 0x06060000
#data 0x06060606
#data 0x0C0C0C0C
#data 0x12120C0C
#data 0x12121212

#align4
loc_8c1C5A38:
#data 0x03020001
#data 0x02030100
#data 0x00010203
#data 0x01000302

#align4
loc_8c1C5A48:
#data loc_8c1C5A4C

loc_8c1C5A4C:
#data 0x646F6D0A
#data 0x56206D65
#data 0x31207265
#data 0x3033302E
#data 0x75422036
#data 0x3A646C69
#data 0x20626546
#data 0x32203130
#data 0x20303030
#data 0x303A3731
#data 0x36323A30
#data 0x0000000A

#align4
loc_8c1C5A7C:
#data 0x00000000
#data 0x00000008
#data 0x00000010
#data 0x00000020

#align4
loc_8c1C5A8C:
#data 0x00000002
#data 0x00000002
#data 0x00000002
#data 0x00000002
#data 0x00000003
#data 0x00000004

#align4
loc_8c1C5AA4:
#data 0x00000002
#data 0x00000002
#data 0x00000002
#data 0x00000002
#data 0x00000003
#data 0x00000004

#align4
loc_8c1C5ABC:
#data 0x00000014
#data 0x00000015
#data 0x00000016
#data 0x00000017
#data 0x00000018

#align4
loc_8c1C5AD0:
#data 0x0000001E
#data 0x0000001F
#data 0x00000020
#data 0x00000021
#data 0x00000022

#align4
loc_8c1C5AE4:
#data 0x000001F0
#data 0x00000200
#data 0x00000210
#data 0x00000220
#data 0x00000230

#align4
loc_8c1C5AF8:
#data 0x0000002A
#data 0x00000026
#data 0x00000022
#data 0x0000001E
#data 0x0000001A

#align4
loc_8c1C5B0C:
#data 0x00000010
#data 0x00000010
#data 0x00000010
#data 0x00000010
#data 0x00000018
#data 0x00000020

#align4
loc_8c1C5B24:
#data 0x000003DE
#data 0x000003BF
#data 0x000003A2
#data 0x00000387
#data 0x0000036D

#align4
loc_8c1C5B38:
#data 0x000007BD
#data 0x00000780
#data 0x00000745
#data 0x0000070F
#data 0x000006DB

#align4
loc_8c1C5B4C:
#data 0x00000001
#data 0x00000001
#data 0x00000001
#data 0x00000001
#data 0x00000002
#data 0x00000003

#align4
loc_8c1C5B64:
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000080
#data 0x00000080
#data 0x00000100
#data 0x00000400

#align4
loc_8c1C5B80:
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000080
#data 0x00000080
#data 0x00000200
#data 0x00000800

#align4
loc_8c1C5B9C:
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x000000AC
#data 0x000002AC
#data 0x00000AAC
#data 0x00002AAC
#data 0x0000AAAC
#data 0x0002AAAC
#data 0x000AAAAC
#data 0x002AAAAC

#align4
loc_8c1C5BC8:
#data 0x00000000
#data 0x00000001
#data 0x00000004
#data 0x00000010
#data 0x00000040
#data 0x00000100
#data 0x00000400
#data 0x00001000
#data 0x00004000
#data 0x00010000
#data 0x00040000

#align4
loc_8c1C5BF4:
#data 0x00000001
#data 0x00000002
#data 0x00000006
#data 0x00000016
#data 0x00000056
#data 0x00000156
#data 0x00000556
#data 0x00001556
#data 0x00005556
#data 0x00015556
#data 0x00055556
#data 0x00050301

#align4
loc_8c1C5C24:
#data 0x02020100
#data 0x03030303
#data 0x04040404
#data 0x04040404
#data 0x05050505
#data 0x05050505
#data 0x05050505
#data 0x05050505
#data 0x06060606
#data 0x06060606
#data 0x06060606
#data 0x06060606
#data 0x06060606
#data 0x06060606
#data 0x06060606
#data 0x06060606
#data 0x07070707
#data 0x07070707
#data 0x07070707
#data 0x07070707
#data 0x07070707
#data 0x07070707
#data 0x07070707
#data 0x07070707
#data 0x07070707
#data 0x07070707
#data 0x07070707
#data 0x07070707
#data 0x07070707
#data 0x07070707
#data 0x07070707
#data 0x07070707
#data 0x08080808
#data 0x08080808
#data 0x08080808
#data 0x08080808
#data 0x08080808
#data 0x08080808
#data 0x08080808
#data 0x08080808
#data 0x08080808
#data 0x08080808
#data 0x08080808
#data 0x08080808
#data 0x08080808
#data 0x08080808
#data 0x08080808
#data 0x08080808
#data 0x08080808
#data 0x08080808
#data 0x08080808
#data 0x08080808
#data 0x08080808
#data 0x08080808
#data 0x08080808
#data 0x08080808
#data 0x08080808
#data 0x08080808
#data 0x08080808
#data 0x08080808
#data 0x08080808
#data 0x08080808
#data 0x08080808
#data 0x08080808

#align4
loc_8c1C5D24:
#data 0x32323145
#data 0x6C493A31
#data 0x6167696C
#data 0x6170206C
#data 0x656D6172
#data 0x28726574
#data 0x2948434E
#data 0x206E6920
#data 0x6E53776D
#data 0x65704F64
#data 0x726F506E
#data 0x00000074

#align4
loc_8c1C5D54:
#data 0x32323145
#data 0x6F4E3A32
#data 0x6E652074
#data 0x6867756F
#data 0x736E6920
#data 0x636E6174
#data 0x574D2865
#data 0x29444E53
#data 0x206E6920
#data 0x6E53776D
#data 0x65704F64
#data 0x726F506E
#data 0x00000074

#align4
loc_8c1C5D88:
#data 0x32323145
#data 0x61433A36
#data 0x746F6E6E
#data 0x65706F20
#data 0x3247206E
#data 0x414D4420
#data 0x6E616820
#data 0x20656C64
#data 0x6D206E69
#data 0x646E5377
#data 0x6E65704F
#data 0x74726F50
#data 0x00000000

#align4
loc_8c1C5DBC:
#data 0x32323145
#data 0x61433A37
#data 0x746F6E6E
#data 0x6F6C6320
#data 0x47206573
#data 0x4D442032
#data 0x61682041
#data 0x656C646E
#data 0x206E6920
#data 0x6E53776D
#data 0x65704F64
#data 0x726F506E
#data 0x00000074

#align4
loc_8c1C5DF0:
#data 0x32323145
#data 0x6C6E3A33
#data 0x53646E73
#data 0x61657274
#data 0x65704F6D
#data 0x6572206E
#data 0x6E727574
#data 0x6C6C6920
#data 0x6C616769
#data 0x6C617620
#data 0x69206575
#data 0x776D206E
#data 0x4F646E53
#data 0x506E6570
#data 0x0074726F

#align4
loc_8c1C5E2C:
#data 0x32323145
#data 0x61433A34
#data 0x746F6E6E
#data 0x65726320
#data 0x20657461
#data 0x48444853
#data 0x6E69204E
#data 0x53776D20
#data 0x704F646E
#data 0x6F506E65
#data 0x00007472

#align4
loc_8c1C5E58:
#data 0x32323145
#data 0x61433A38
#data 0x746F6E6E
#data 0x6F6C6320
#data 0x47206573
#data 0x4D442032
#data 0x61682041
#data 0x656C646E
#data 0x206E6920
#data 0x6E53776D
#data 0x6F6C4364
#data 0x6F506573
#data 0x00007472

#align4
loc_8c1C5E8C:
#data 0x32323145
#data 0x61433A35
#data 0x746F6E6E
#data 0x74656720
#data 0x61656820
#data 0x20726564
#data 0x6F666E69
#data 0x6974616D
#data 0x69206E6F
#data 0x7473206E
#data 0x6D616572
#data 0x206E6920
#data 0x6E53776D
#data 0x74655364
#data 0x6E496448
#data 0x00006F66

#align4
loc_8c1C5ECC:
#data 0x33323145
#data 0x32473A30
#data 0x414D4420
#data 0x6E616820
#data 0x20656C64
#data 0x4E207369
#data 0x284C4C55
#data 0x6E736C6E
#data 0x44324764
#data 0x6552616D
#data 0x73657571
#data 0x00002974

#align4
loc_8c1C5EFC:
#data 0x33323145
#data 0x72733A31
#data 0x73692063
#data 0x746F6E20
#data 0x206E6920
#data 0x67696C61
#data 0x6E656D6E
#data 0x69772074
#data 0x33206874
#data 0x74796232
#data 0x6E287365
#data 0x646E736C
#data 0x6D443247
#data 0x71655261
#data 0x74736575
#data 0x00000029

#align4
loc_8c1C5F3C:
#data 0x33323145
#data 0x73643A32
#data 0x73692074
#data 0x746F6E20
#data 0x206E6920
#data 0x67696C61
#data 0x6E656D6E
#data 0x69772074
#data 0x33206874
#data 0x74796232
#data 0x6E287365
#data 0x646E736C
#data 0x6D443247
#data 0x71655261
#data 0x74736575
#data 0x00000029

#align4
loc_8c1C5F7C:
#data 0x33323145
#data 0x69733A33
#data 0x6920657A
#data 0x6F6E2073
#data 0x6E692074
#data 0x696C6120
#data 0x656D6E67
#data 0x7720746E
#data 0x20687469
#data 0x79623233
#data 0x28736574
#data 0x6E736C6E
#data 0x44324764
#data 0x6552616D
#data 0x73657571
#data 0x00002974

#align4
loc_8c1C5FBC:
#data 0x32323145
#data 0x6C6E3A39
#data 0x47646E73
#data 0x616D4432
#data 0x53746547
#data 0x75746174
#data 0x65722073
#data 0x6E727574
#data 0x72726520
#data 0x6920726F
#data 0x776D206E
#data 0x47646E53
#data 0x624D7465
#data 0x74536B6C
#data 0x00007461

#align4
loc_8c1C5FF8:
#data loc_8c1C6000
#data 0x00000501

#align4
loc_8c1C6000:
#data 0x4D79730A
#data 0x5620756D
#data 0x31207265
#data 0x2030352E
#data 0x6C697542
#data 0x614D3A64
#data 0x31332079
#data 0x39393120
#data 0x36312039
#data 0x3A35323A
#data 0x000A3331

#align4
loc_8c1C602C:
#data 0x4779730A
#data 0x65562032
#data 0x2E312072
#data 0x312E3130
#data 0x75422030
#data 0x3A646C69
#data 0x20677541
#data 0x31203033
#data 0x20393939
#data 0x303A3731
#data 0x30353A33
#data 0x0000000A

#align4
loc_8c1C605C:
#data 0x462A2A2A
#data 0x4C415441
#data 0x52524520
#data 0x433A524F
#data 0x6F6E6E61
#data 0x65672074
#data 0x65732074
#data 0x6870616D
#data 0x2165726F
#data 0x0000000A

#align4
loc_8c1C6084:
#data 0x08040201

#align4
loc_8c1C6088:
#data 0x462A2A2A
#data 0x4C415441
#data 0x52524520
#data 0x433A524F
#data 0x6F6E6E61
#data 0x65672074
#data 0x65732074
#data 0x6870616D
#data 0x2165726F
#data 0x0000000A

#align4
loc_8c1C60B0:
#data 0x04020120
#data 0x41601008
#data 0x50484442
#data 0x848281A0
#data 0xC1E09088
#data 0xD0C8C4C2

#align4
loc_8c1C60C8:
#data 0x00000000
#data 0x00000006
#data 0x0000000C
#data 0x00000012

#align4
loc_8c1C60D8:
#data 0x00000001

#align4
loc_8c1C60DC:
#data 0x00000003

#align4
loc_8c1C60E0:
#data 0x00000001
#data 0x00000002
#data 0x00000007
#data 0x00000008
#data 0x0000000D
#data 0x0000000E
#data 0x00000013
#data 0x00000014

#align4
loc_8c1C6100:
#data 0x10210000
#data 0x30632042
#data 0x50A54084
#data 0x70E760C6
#data 0x91298108
#data 0xB16BA14A
#data 0xD1ADC18C
#data 0xF1EFE1CE
#data 0x02101231
#data 0x22523273
#data 0x429452B5
#data 0x62D672F7
#data 0x83189339
#data 0xA35AB37B
#data 0xC39CD3BD
#data 0xE3DEF3FF
#data 0x34432462
#data 0x14010420
#data 0x74C764E6
#data 0x548544A4
#data 0xB54BA56A
#data 0x95098528
#data 0xF5CFE5EE
#data 0xD58DC5AC
#data 0x26723653
#data 0x06301611
#data 0x66F676D7
#data 0x46B45695
#data 0xA77AB75B
#data 0x87389719
#data 0xE7FEF7DF
#data 0xC7BCD79D
#data 0x58E548C4
#data 0x78A76886
#data 0x18610840
#data 0x38232802
#data 0xD9EDC9CC
#data 0xF9AFE98E
#data 0x99698948
#data 0xB92BA90A
#data 0x4AD45AF5
#data 0x6A967AB7
#data 0x0A501A71
#data 0x2A123A33
#data 0xCBDCDBFD
#data 0xEB9EFBBF
#data 0x8B589B79
#data 0xAB1ABB3B
#data 0x7C876CA6
#data 0x5CC54CE4
#data 0x3C032C22
#data 0x1C410C60
#data 0xFD8FEDAE
#data 0xDDCDCDEC
#data 0xBD0BAD2A
#data 0x9D498D68
#data 0x6EB67E97
#data 0x4EF45ED5
#data 0x2E323E13
#data 0x0E701E51
#data 0xEFBEFF9F
#data 0xCFFCDFDD
#data 0xAF3ABF1B
#data 0x8F789F59
#data 0x81A99188
#data 0xA1EBB1CA
#data 0xC12DD10C
#data 0xE16FF14E
#data 0x00A11080
#data 0x20E330C2
#data 0x40255004
#data 0x60677046
#data 0x939883B9
#data 0xB3DAA3FB
#data 0xD31CC33D
#data 0xF35EE37F
#data 0x129002B1
#data 0x32D222F3
#data 0x52144235
#data 0x72566277
#data 0xA5CBB5EA
#data 0x858995A8
#data 0xE54FF56E
#data 0xC50DD52C
#data 0x24C334E2
#data 0x048114A0
#data 0x64477466
#data 0x44055424
#data 0xB7FAA7DB
#data 0x97B88799
#data 0xF77EE75F
#data 0xD73CC71D
#data 0x36F226D3
#data 0x16B00691
#data 0x76766657
#data 0x56344615
#data 0xC96DD94C
#data 0xE92FF90E
#data 0x89E999C8
#data 0xA9ABB98A
#data 0x48655844
#data 0x68277806
#data 0x08E118C0
#data 0x28A33882
#data 0xDB5CCB7D
#data 0xFB1EEB3F
#data 0x9BD88BF9
#data 0xBB9AABBB
#data 0x5A544A75
#data 0x7A166A37
#data 0x1AD00AF1
#data 0x3A922AB3
#data 0xED0FFD2E
#data 0xCD4DDD6C
#data 0xAD8BBDAA
#data 0x8DC99DE8
#data 0x6C077C26
#data 0x4C455C64
#data 0x2C833CA2
#data 0x0CC11CE0
#data 0xFF3EEF1F
#data 0xDF7CCF5D
#data 0xBFBAAF9B
#data 0x9FF88FD9
#data 0x7E366E17
#data 0x5E744E55
#data 0x3EB22E93
#data 0x1EF00ED1

#align4
loc_8c1C6300:
#data 0x06040006
#data 0xFF0AFF08
#data 0xFF0CFFFF
#data 0xFFFFFFFF
#data 0xFFFFFFFF
#data 0xFFFFFFFF
#data 0x0EFFFFFF
#data 0xFFFFFFFF
#data 0xFFFFFFFF
#data 0xFFFFFFFF
#data 0xFFFFFFFF
#data 0xFF02FFFF
#data 0xFEFFFFFF
#data 0xFFFEFEFF
#data 0xFFFFFFFF

#align4
loc_8c1C633C:
#data 0x0101FF00
#data 0xFF00FF00
#data 0xFF00FF01
#data 0xFF01FF00
#data 0xFF000601
#data 0x0301FF00
#data 0xFF010301
#data 0x0001FF01
#data 0xFF000201
#data 0x00010001
#data 0x0101FF00
#data 0x07010301
#data 0x03010101

#align4
loc_8c1C6370:
#data 0x0101FF01
#data 0x03010101
#data 0xFF00FF01
#data 0xFF000201
#data 0xFF010201
#data 0x01011401
#data 0xFF010001
#data 0xFF01FF01
#data 0x0101FF00
#data 0x0A010101
#data 0xFF01FF01
#data 0x02010301
#data 0xFF000301

#align4
loc_8c1C63A4:
#data 0x4001FF00
#data 0xFF01FF01
#data 0xFF00FF01
#data 0xFF001F01
#data 0xFF00FF00
#data 0x09010F01
#data 0xFF00FF00
#data 0xFF01FF00
#data 0xFF01FF01
#data 0xFF01FF01
#data 0x0401FF00
#data 0xFF003F01
#data 0xFF00FF01

#align4
loc_8c1C63D8:
#data 0x09010301
#data 0xFF000201
#data 0xFF00FF00
#data 0xFF00FF01
#data 0xFF01FF00
#data 0xFF000501
#data 0xFF00FF00
#data 0xFF00FF00
#data 0xFF00FF00
#data 0xFF00FF01
#data 0xFF01FF00
#data 0xFF00FF00
#data 0x00010001

#align4
loc_8c1C640C:
#data 0xFF00FF00
#data 0xFF00FF00
#data 0xFF00FF00
#data 0xFF00FF00
#data 0xFF00FF00
#data 0xFF00FF00
#data 0xFF00FF00
#data 0xFF00FF00
#data 0xFF00FF00
#data 0xFF00FF00
#data 0xFF00FF00
#data 0xFF00FF00
#data 0xFF00FF00

#align4
loc_8c1C6440:
#data 0xFF00FF00
#data 0xFF00FF00
#data 0xFF00FF00
#data 0xFF00FF00
#data 0xFF00FF00
#data 0xFF00FF00
#data 0xFF00FF00
#data 0xFF00FF00
#data 0xFF00FF00
#data 0xFF00FF00
#data 0xFF00FF00
#data 0xFF00FF00
#data 0xFF00FF00
#data 0x00000000

#align4
loc_8c1C6478:
#data 0x414C4544
#data 0x20444559
#data 0x00000000

#align4
loc_8c1C6484:
#data 0x0000003A

#align4
loc_8c1C6488:
#data 0x00002020

#align4
loc_8c1C648C:
#data 0x00000020

#align4
loc_8c1C6490:
#data 0x18342C14
#data 0x2C1C3830
#data 0x0040

loc_8c1C649A:
#data 0x1C00
#data 0x25002000
#data 0x20001C00
#data 0x1C002500
#data 0x25002000

#align4
loc_8c1C64AC:
#data 0x20001C00
#data 0x1C002500
#data 0x25002000
#data 0x20001C00
#data 0x2500

loc_8c1C64BE:
#data 0x0100
#data 0x05040302
#data 0x09080706
#data 0x0F0E0D0C
#data 0x0B0A

loc_8c1C64CE:
#data 0x390A
#data 0x2D4E32D6
#data 0x23FD2861
#data 0x1C962013
#data 0x16B5197A
#data 0x1209143D
#data 0x0E531013
#data 0x0B610CC5
#data 0x090A0A24
#data 0x072E080E
#data 0x05B40666
#data 0x04870515
#data 0x03990409

#align4
loc_8c1C6500:
#data 0x21562156
#data 0x1A7B1DB6
#data 0x15081799
#data 0x10B512BF
#data 0x0D450EE4
#data 0x0A8A0BD4
#data 0x085F0965
#data 0x06A60776
#data 0x05ED

loc_8c1C6522:
#data 0x2567
#data 0x21562567
#data 0x1A7B1DB6
#data 0x15081799
#data 0x10B512BF
#data 0x0D450EE4
#data 0x0A8A0BD4
#data 0x085F0965
#data 0x06A60776

#align4
loc_8c1C6544:
#data 0x1F781F78
#data 0x19001C0C
#data 0x13DB1648
#data 0x0FC611B2
#data 0x0C870E0E
#data 0x09F30B2A
#data 0x07E708DE
#data 0x0647070B
#data 0x0598

loc_8c1C6566:
#data 0x279F
#data 0x2350279F
#data 0x1C0C1F78
#data 0x16481900
#data 0x11B213DB
#data 0x0E0E0FC6
#data 0x0B2A0C87
#data 0x08DE09F3
#data 0x070B07E7

#align4
loc_8c1C6588:
#data 0x1A7B1A7B
#data 0x17991A7B
#data 0x12BF1508
#data 0x0EE410B5
#data 0x0BD40D45
#data 0x09650A8A
#data 0x0776085F
#data 0x05ED06A6
#data 0x0548

loc_8c1C65AA:
#data 0x2567
#data 0x25672567
#data 0x1DB62156
#data 0x17991A7B
#data 0x12BF1508
#data 0x0EE410B5
#data 0x0BD40D45
#data 0x09650A8A
#data 0x0776085F

#align4
loc_8c1C65CC:
#data 0x0D910006
#data 0x0DD10007
#data 0x0FD10008
#data 0x0FF1000B
;-------------------------------------------------------------------------------
#data 0x0FF9000C

#align4
loc_8c1C65E0:
#data 0x0FF90006
#data 0x0BF90007
#data 0x0BB90008
#data 0x09B9000B
;-------------------------------------------------------------------------------
#data 0x0999000C

#align4
loc_8c1C65F4:
#data 0x00010005
#data 0x00030006
#data 0x00070007
#data 0x000F0008
#data 0x001F000B
;-------------------------------------------------------------------------------
#data 0x003F000C
#data 0x007F000D
#data 0x00FF000E
#data 0x01FF0015
#data 0x03FF0016
#data 0x07FF0017
#data 0x0FFF0019
#data 0x1FFF001D
#data 0x1FFF001E
#data 0x3FFF0020


loc_8c1C6630:
mov.w r0,@(r0,r0)
addv r15,r15
mov.l r0,@(r0,r0)
addc r15,r15
mul.l r0,r0
add r15,r15
clrt
sub r15,r15
rts
cmp/eq r15,r15
;-------------------------------------------------------------------------------
#data 0x3FE0000C
#data 0x3FC0000D
#data 0x3F80000E
#data 0x3F000015
#data 0x3E000016
#data 0x3C000017
#data 0x38000019
#data 0x3000001D
#data 0x2000001E
#data 0x20000020

#align4
loc_8c1C666C:
#data 0x02060105
#data 0x04080307
#data 0x060C050B
#data 0x080E070D
#data 0x0A160915
#data 0x0C190B17
#data 0x0D1E0D1D
#data 0x011E0E20
#data 0x02210120
#data 0x04250323
#data 0x062A0528
#data 0x082E072C
#data 0x0A320930
#data 0x0C360B34
#data 0x0D38

loc_8c1C66A6:
#data 0x0118
#data 0x031C021A
#data 0x051F041E
#data 0x07230622
#data 0x09270824
#data 0x0B290A28
#data 0x0D2C0C2B
#data 0x0F2F0E2D
#data 0x11311030
#data 0x13341233
#data 0x15371435
#data 0x00001638

#align4
loc_8c1C66D4:
#data 0x00000960
#data 0x000003E8
#data 0x00000AF0
#data 0x00000BB8
#data 0x00000C80
#data 0x00000D65
#data 0x00000000
#data 0x6E756F43
#data 0x20797274
#data 0x6C696146
#data 0x206F5420
#data 0x74696E49
#data 0x00000000

#align4
loc_8c1C6708:
#data 0x00000000

#align4
loc_8c1C670C:
#data 0x61746144
#data 0x6D755020
#data 0x72452070
#data 0x20726F72
#data 0x65646F43
#data 0x20203D20
#data 0x00000020

#align4
loc_8c1C6728:
#data 0x00000064
#data 0x00000064
#data 0x00000090
#data 0x00000120
#data 0x00000240
#data 0x00000360
#data 0x00000480
#data 0x000005A0
#data 0x000006C0
#data 0x000007E0
#data 0x00000780
#data 0x00000A20
#data 0x00000B40
#data 0x00000C60
#data 0x00000D20
#data 0x00000D80
#data 0x00000DC0
#data 0x00000E60
#data 0x00000E9C
#data 0x00000F00
#data 0x00000FA0
#data 0x00000FC0
#data 0x00000FF0
#data 0x00001040
#data 0x000010E0
#data 0x00001180
#data 0x000011D0
#data 0x00001200
#data 0x00001220
#data 0x000012C0
#data 0x00001360
#data 0x000013B0
#data 0x00001400
#data 0x000014A0
#data 0x00001540
#data 0x00001590
#data 0x000015E0
#data 0x00001680
#data 0x00001720
#data 0x00001770
#data 0x000017C0
#data 0x00001860
#data 0x00001900
#data 0x00001950
#data 0x000019A0
#data 0x00001A40
#data 0x00001B00
#data 0x00001E00
#data 0x000021C0
#data 0x00002400
#data 0x00002D00
#data 0x00003600
#data 0x00003C00
#data 0x00006C00
#data 0x0000D800
#data 0x00014400
#data 0x00014400
#data 0x0001B000
#data 0x0001B000
#data 0x0001B000

#align4
loc_8c1C6818:
#data 0x00000010
#data 0x00000010
#data 0x00000010
#data 0x00000010
#data 0x00000018
#data 0x00000020

#align4
loc_8c1C6830:
#data 0x554D414B
#data 0x61442D49
#data 0x656E6B72
#data 0x43207373
#data 0x7279706F
#data 0x74686769
#data 0x29432820
#data 0x43454E20
#data 0x726F4320
#data 0x61726F70
#data 0x6E6F6974
#data 0x39393120
#data 0x6B0A2039
#data 0x206B646D
#data 0x20726556
#data 0x2C332C31
#data 0x20302C30
#data 0x6C697542
#data 0x754A3A64
#data 0x3332206C
#data 0x39393120
#data 0x31312039
#data 0x3A33303A
#data 0x000A3835

#align4
loc_8c1C6890:
#data 0x2C332C31
#data 0x00302C30

#align4
loc_8c1C6898:
#data 0x4D524F46
#data 0x00000000

#align4
loc_8c1C68A0:
#data 0x46464941
#data 0x00000000

#align4
loc_8c1C68A8:
#data 0x646E732E
#data 0x00000000

#align4
loc_8c1C68B0:
#data 0x0064732E

#align4
loc_8c1C68B4:
#data 0x44535053
#data 0x00000000

#align4
loc_8c1C68BC:
#data 0x46464952
#data 0x00000000

#align4
loc_8c1C68C4:
#data 0x20746D66
#data 0x00000000

#align4
loc_8c1C68CC:
#data 0x45564157
#data 0x00000000

#align4
loc_8c1C68D4:
#data 0x61746164
#data 0x00000000

#align4
loc_8c1C68DC:
#data 0xFF000010
#data 0xFF00001C
#data 0xFF000038
#data 0xFF00003C
#data 0xFFA00000
#data 0xFFA00004
#data 0xFFA00010
#data 0xFFA00014
#data 0xFFA0001C
#data 0xFFA00020
#data 0xFFA00028
#data 0xFFA0002C
#data 0xFFA00030
#data 0xFFA00034
#data 0xFFA0003C
#data 0xFFA00040
#data 0xA05F6800
#data 0xA05F6804
#data 0xA05F6810
#data 0xA05F6814
#data 0xA05F6C04
#data 0xA05F6C10
#data 0xA05F7404
#data 0xA05F7408
#data 0xA05F740C
#data 0xA05F7800
#data 0xA05F7804
#data 0xA05F7808
#data 0xA05F780C
#data 0xA05F7810
#data 0xA05F7820
#data 0xA05F7824
#data 0xA05F7828
#data 0xA05F782C
#data 0xA05F7830
#data 0xA05F7840
#data 0xA05F7844
#data 0xA05F7848
#data 0xA05F784C
#data 0xA05F7850
#data 0xA05F7860
#data 0xA05F7864
#data 0xA05F7868
#data 0xA05F786C
#data 0xA05F7870
#data 0xA05F7C00
#data 0xA05F7C04
#data 0xA05F7C08
#data 0xA05F7C0C
#data 0xA05F7C10
#data 0xA05F8020
#data 0xA05F802C
#data 0xA05F8044
#data 0xA05F8048
#data 0xA05F8050
#data 0xA05F8054
#data 0xA05F8058
#data 0xA05F805C
#data 0xA05F8060
#data 0xA05F8064
#data 0xA05F8124
#data 0xA05F8128
#data 0xA05F812C
#data 0xA05F8130
#data 0xA05F8134
#data 0xA05F8138
#data 0xA05F8148
#data 0xA05F814C
#data 0xA05F8150

#align4
loc_8c1C69F0:
#data 0x2D200A0D
#data 0x41202D2D
#data 0x45524444
#data 0x43205353
#data 0x4B434548
#data 0x54205245
#data 0x20504152
#data 0x202D2D2D
#data 0x00000A0D

#align4
loc_8c1C6A14:
#data 0x2D305246
#data 0x20203A37
#data 0x00002020

#align4
loc_8c1C6A20:
#data 0x2D385246
#data 0x203A3531
#data 0x00002020

#align4
loc_8c1C6A2C:
#data 0x2D305246
#data 0x29422837
#data 0x0000203A

#align4
loc_8c1C6A38:
#data 0x2D385246
#data 0x42283531
#data 0x00003A29

#align4
loc_8c1C6A44:
#data 0x4C555046
#data 0x0000203A

#align4
loc_8c1C6A4C:
#data 0x53504620
#data 0x203A5243
#data 0x00000000

#align4
loc_8c1C6A58:
#data 0x30520A0D
#data 0x203A372D
#data 0x20202020
#data 0x00000000

#align4
loc_8c1C6A68:
#data 0x312D3852
#data 0x20203A35
#data 0x00002020

#align4
loc_8c1C6A74:
#data 0x30520A0D
#data 0x4228372D
#data 0x20203A29
#data 0x00000000

#align4
loc_8c1C6A84:
#data 0x4C43414D
#data 0x0000203A

#align4
loc_8c1C6A8C:
#data 0x43414D20
#data 0x00203A48

#align4
loc_8c1C6A94:
#data 0x42560A0D
#data 0x00203A52

#align4
loc_8c1C6A9C:
#data 0x52424720
#data 0x0000203A

#align4
loc_8c1C6AA4:
#data 0x52424420
#data 0x0000203A

#align4
loc_8c1C6AAC:
#data 0x52500A0D
#data 0x0000203A

#align4
loc_8c1C6AB4:
#data 0x3A435020
#data 0x00000020

#align4
loc_8c1C6ABC:
#data 0x3A525320
#data 0x00000020

#align4
loc_8c1C6AC4:
#data 0x00000A0D

#align4
loc_8c1C6AC8:
#data 0x0000003A

#align4
loc_8c1C6ACC:
#data 0x00000020

#align4
loc_8c1C6AD0:
#data 0x61656C50
#data 0x202C6573
#data 0x636E6163
#data 0x74206C65
#data 0x69206568
#data 0x7265746E
#data 0x74707572
#data 0x6F726620
#data 0x4441206D
#data 0x53534552
#data 0x45484320
#data 0x52454B43
#data 0x200A0D2C
#data 0x6E656874
#data 0x74696820
#data 0x54455220
#data 0x204E5255
#data 0x2E79656B
#data 0x00000000

#align4
loc_8c1C6B1C:
#data 0x61656C50
#data 0x202C6573
#data 0x636E6163
#data 0x74206C65
#data 0x69206568
#data 0x7265746E
#data 0x74707572
#data 0x6F726620
#data 0x4441206D
#data 0x53534552
#data 0x45484320
#data 0x52454B43
#data 0x0000002E

#align4
loc_8c1C6B50:
#data 0x00000000
#data 0x01020000
#data 0x32010100
#data 0x00000000
#data 0x00000000
#data 0x00000001
#data 0x00000000
#data 0x00000000
#data 0x00000A00
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8c1C6BA0:
#data 0x7FFF00FF
#data 0xFFFFFF7F
#data 0xFFFFFFFF
#data 0xFFFFFFFF
#data 0xFFFFFFFF
#data 0xFFFFFF2C
#data 0xFFFFFFFF
#data 0xFFFFFFFF
#data 0x320923FF
#data 0xFFFFFFFF
#data 0xFFFF0AFF
#data 0x7F7FFFFF
#data 0xFFFFFF7F
#data 0xFFFFFFBF
#data 0xFFFFFFFF
#data 0xFFFFFFFF
#data 0xFFFFFFFF
#data 0xFFFFFFFF
#data 0xFFFFFFFF
#data 0xFFFFFFFF

#align4
loc_8c1C6BF0:
#data 0x0D2B0000
#data 0x1E02080A
#data 0x5F0E0102
#data 0x008A0032
#data 0x00000000
#data 0x17763003
#data 0x400105EC
#data 0x000F00C3
#data 0x0A001A00
#data 0x8214FFAA
#data 0x1EEB0000
#data 0x110D0000
#data 0x00000313
#data 0x0007FF3F
#data 0x00000000
#data 0x000000FF
#data 0xFA0F0000
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8c1C6C40:
#data 0x0D2B0000
#data 0x1E02080A
#data 0x5F0E0102
#data 0x008A0032
#data 0x00000000
#data 0x17763003
#data 0x4001059C
#data 0x000F00C3
#data 0x0A001A00
#data 0x8214FF66
#data 0x1EEB0000
#data 0x110D0000
#data 0x00000313
#data 0x0007FFBF
#data 0x00000000
#data 0x000000FF
#data 0xFA0F0000
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8c1C6C90:
#data 0x0D2B0000
#data 0x1E02080A
#data 0x5F0E0102
#data 0x008A0032
#data 0x00000000
#data 0x17763003
#data 0x4001059C
#data 0x000F00C3
#data 0x0A001A00
#data 0x8214FF22
#data 0x1EEB0000
#data 0x110D0000
#data 0x00000313
#data 0x0007FFBF
#data 0x00000000
#data 0x000000FF
#data 0xFA0F0000
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8c1C6CE0:
#data 0x60504000
#data 0x30201070

#align4
loc_8c1C6CE8:
#data 0x07060500
#data 0x04030201

#align4
loc_8c1C6CF0:
#data 0x03010200

#align4
loc_8c1C6CF4:
#data 0x02010200

#align4
loc_8c1C6CF8:
#data 0x00010305

#align4
loc_8c1C6CFC:
#data 0x00000108
#data 0x03030202
#data 0x05050404
#data 0x07070606

#align4
loc_8c1C6D0C:
#data 0x00000000
#data 0x03020101

#align4
loc_8c1C6D14:
#data 0x03020100
#data 0x07060504
#data 0x0B0A0908
#data 0x1A19120C
#data 0x28262524
#data 0xFF2E2C29

#align4
loc_8c1C6D2C:
#data 0x04020100
#data 0x08070605
#data 0x0C0B0A09
#data 0x241A1912
#data 0xFF282625

#align4
loc_8c1C6D40:
#data 0x03022E01
#data 0x1B0A0604
#data 0x00363533
#data 0x04030201
#data 0x08070605
#data 0x0C0B0A09
#data 0x13120F0D
#data 0x2D251B15
#data 0x31302F2E
#data 0x35343332
#data 0x00000036

#align4
loc_8c1C6D6C:
#data 0x00323339

#align4
loc_8c1C6D70:
#data 0x61676553
#data 0x69754220
#data 0x6E49746C
#data 0x646F6D20
#data 0x0D0A6D65
#data 0x20564552
#data 0x33302E31
#data 0x00003630

#align4
loc_8c1C6D90:
#data 0x37393061
#data 0x46303438
#data 0x43343832
#data 0x33303436
#data 0x00000046

#align4
loc_8c1C6DA4:
#data 0x30364662
#data 0x30303334
#data 0x00003030

#align4
loc_8c1C6DB0:
#data 0x33303172
#data 0x31313131
#data 0x30313131
#data 0x30303031
#data 0x00000030

#align4
loc_8c1C6DC4:
#data 0x30303372
#data 0x31313130
#data 0x30303130
#data 0x30303030
#data 0x00000030

#align4
loc_8c1C6DD8:
#data 0x00000042

#align4
loc_8c1C6DDC:
#data 0x00000045

#align4
loc_8c1C6DE0:
#data 0x0000004C

#align4
loc_8c1C6DE4:
#data 0x0000004D

#align4
loc_8c1C6DE8:
#data 0x0000004E

#align4
loc_8c1C6DEC:
#data 0x00000051

#align4
loc_8c1C6DF0:
#data 0x00000056

#align4
loc_8c1C6DF4:
#data 0x00000057

#align4
loc_8c1C6DF8:
#data 0x00000058

#align4
loc_8c1C6DFC:
#data 0x00000059

#align4
loc_8c1C6E00:
#data 0x00004226

#align4
loc_8c1C6E04:
#data 0x00004326

#align4
loc_8c1C6E08:
#data 0x00004426

#align4
loc_8c1C6E0C:
#data 0x00004526

#align4
loc_8c1C6E10:
#data 0x00004726

#align4
loc_8c1C6E14:
#data 0x00004926

#align4
loc_8c1C6E18:
#data 0x00004A26

#align4
loc_8c1C6E1C:
#data 0x00004B26

#align4
loc_8c1C6E20:
#data 0x00004C26

#align4
loc_8c1C6E24:
#data 0x00004E26

#align4
loc_8c1C6E28:
#data 0x00004F26

#align4
loc_8c1C6E2C:
#data 0x00005026

#align4
loc_8c1C6E30:
#data 0x00005126

#align4
loc_8c1C6E34:
#data 0x00005226

#align4
loc_8c1C6E38:
#data 0x00005326

#align4
loc_8c1C6E3C:
#data 0x00005526

#align4
loc_8c1C6E40:
#data 0x00005826

#align4
loc_8c1C6E44:
#data 0x00005926

#align4
loc_8c1C6E48:
#data 0x00004325

#align4
loc_8c1C6E4C:
#data 0x00004425

#align4
loc_8c1C6E50:
#data 0x0000415C

#align4
loc_8c1C6E54:
#data 0x0000435C

#align4
loc_8c1C6E58:
#data 0x0000465C

#align4
loc_8c1C6E5C:
#data 0x0000475C

#align4
loc_8c1C6E60:
#data 0x00004A5C

#align4
loc_8c1C6E64:
#data 0x00004B5C

#align4
loc_8c1C6E68:
#data 0x00004E5C

#align4
loc_8c1C6E6C:
#data 0x0000565C

#align4
loc_8c1C6E70:
#data 0x00004340

#align4
loc_8c1C6E74:
#data 0x4E4F4850
#data 0x554E2045
#data 0x5245424D
#data 0x003A2053

#align4
loc_8c1C6E84:
#data 0x00005A26

#align4
loc_8c1C6E88:
#data 0x0000003D

#align4
loc_8c1C6E8C:
#data 0x00000020

#align4
loc_8c1C6E90:
#data 0x75646F4D
#data 0x6974616C
#data 0x74206E6F
#data 0x3A657079
#data 0x00000020

#align4
loc_8c1C6EA4:
#data 0x6C6C6542
#data 0x33303120
#data 0x00000000

#align4
loc_8c1C6EB0:
#data 0x6C6C6542
#data 0x30323120
#data 0x00000030

#align4
loc_8c1C6EBC:
#data 0x20313256
#data 0x00303033

#align4
loc_8c1C6EC4:
#data 0x20333256
#data 0x58543537
#data 0x3032312F
#data 0x00585230

#align4
loc_8c1C6ED4:
#data 0x20333256
#data 0x30303231
#data 0x372F5854
#data 0x00585235

#align4
loc_8c1C6EE4:
#data 0x20323256
#data 0x30303231
#data 0x00000000

#align4
loc_8c1C6EF0:
#data 0x20323256
#data 0x00303036

#align4
loc_8c1C6EF8:
#data 0x62323256
#data 0x31207369
#data 0x00303032

#align4
loc_8c1C6F04:
#data 0x62323256
#data 0x32207369
#data 0x00303034

#align4
loc_8c1C6F10:
#data 0x20323356
#data 0x30303834
#data 0x00000000

#align4
loc_8c1C6F1C:
#data 0x20323356
#data 0x30303639
#data 0x72742820
#data 0x6C6C6965
#data 0x63207369
#data 0x6465646F
#data 0x00000029

#align4
loc_8c1C6F38:
#data 0x20323356
#data 0x30303639
#data 0x6E752820
#data 0x65646F63
#data 0x00002964

#align4
loc_8c1C6F4C:
#data 0x62323356
#data 0x34207369
#data 0x00303038

#align4
loc_8c1C6F58:
#data 0x62323356
#data 0x37207369
#data 0x00303032

#align4
loc_8c1C6F64:
#data 0x62323356
#data 0x39207369
#data 0x00303036

#align4
loc_8c1C6F70:
#data 0x62323356
#data 0x31207369
#data 0x30303032
#data 0x00000000

#align4
loc_8c1C6F80:
#data 0x62323356
#data 0x31207369
#data 0x30303434
#data 0x00000000

#align4
loc_8c1C6F90:
#data 0x74323356
#data 0x6F627265
#data 0x38363120
#data 0x00003030

#align4
loc_8c1C6FA0:
#data 0x74323356
#data 0x6F627265
#data 0x32393120
#data 0x00003030

#align4
loc_8c1C6FB0:
#data 0x20343356
#data 0x00000000

#align4
loc_8c1C6FB8:
#data 0x2036354B
#data 0x00000000

#align4
loc_8c1C6FC0:
#data 0x20303956
#data 0x00000000

#align4
loc_8c1C6FC8:
#data 0x7373656D
#data 0x20656761
#data 0x20746F6E
#data 0x7473696C
#data 0x00006465

#align4
loc_8c1C6FDC:
#data 0x00006425

#align4
loc_8c1C6FE0:
#data 0x65636552
#data 0x20657669
#data 0x6576656C
#data 0x2D203A6C
#data 0x00000000

#align4
loc_8c1C6FF4:
#data 0x60505344
#data 0x65522073
#data 0x76696563
#data 0x656D2065
#data 0x73206E61
#data 0x72617571
#data 0x72652065
#data 0x3A726F72
#data 0x00783020

#align4
loc_8c1C7018:
#data 0x6E756F52
#data 0x72742064
#data 0x64207069
#data 0x79616C65
#data 0x0000203A

#align4
loc_8c1C702C:
#data 0x00736D20

#align4
loc_8c1C7030:
#data 0x7261654E
#data 0x68636520
#data 0x656C206F
#data 0x3A6C6576
#data 0x00002D20

#align4
loc_8c1C7044:
#data 0x6D626420
#data 0x00000000

#align4
loc_8c1C704C:
#data 0x20726146
#data 0x6F686365
#data 0x76656C20
#data 0x203A6C65
#data 0x0000002D

#align4
loc_8c1C7060:
#data 0x6D726554
#data 0x74616E69
#data 0x206E6F69
#data 0x73616572
#data 0x2E2E6E6F
#data 0x2E2E2E2E
#data 0x2E2E2E2E
#data 0x00000020

#align4
loc_8c1C7080:
#data 0x41434F4C
#data 0x4552204C
#data 0x53455551
#data 0x00000054

#align4
loc_8c1C7090:
#data 0x4B4E494C
#data 0x53494420
#data 0x4E4E4F43
#data 0x00544345

#align4
loc_8c1C70A0:
#data 0x7473614C
#data 0x20785420
#data 0x61746164
#data 0x74617220
#data 0x2E2E2E65
#data 0x2E2E2E2E
#data 0x2E2E2E2E
#data 0x00000020

#align4
loc_8c1C70C0:
#data 0x68676948
#data 0x20747365
#data 0x64207854
#data 0x20617461
#data 0x65746172
#data 0x2E2E2E2E
#data 0x2E2E2E2E
#data 0x00000020

#align4
loc_8c1C70E0:
#data 0x7473614C
#data 0x20785220
#data 0x61746164
#data 0x74617220
#data 0x2E2E2E65
#data 0x2E2E2E2E
#data 0x2E2E2E2E
#data 0x00000020

#align4
loc_8c1C7100:
#data 0x68676948
#data 0x20747365
#data 0x64207852
#data 0x20617461
#data 0x65746172
#data 0x2E2E2E2E
#data 0x2E2E2E2E
#data 0x00000020

#align4
loc_8c1C7120:
#data 0x6F727245
#data 0x6F632072
#data 0x63657272
#data 0x6E6F6974
#data 0x6F727020
#data 0x6F636F74
#data 0x2E2E2E6C
#data 0x00000020

#align4
loc_8c1C7140:
#data 0x4D50414C
#data 0x00000000

#align4
loc_8c1C7148:
#data 0x00504E4D

#align4
loc_8c1C714C:
#data 0x454E4F4E
#data 0x00000000

#align4
loc_8c1C7154:
#data 0x61746144
#data 0x6D6F6320
#data 0x73657270
#data 0x6E6F6973
#data 0x2E2E2E2E
#data 0x2E2E2E2E
#data 0x2E2E2E2E
#data 0x00000020

#align4
loc_8c1C7174:
#data 0x42323456
#data 0x00007369

#align4
loc_8c1C717C:
#data 0x656E694C
#data 0x61757120
#data 0x7974696C
#data 0x2E2E2E2E
#data 0x2E2E2E2E
#data 0x2E2E2E2E
#data 0x2E2E2E2E
#data 0x00000020
#data 0x65746E45
#data 0x656E2072
#data 0x656B2077
#data 0x003A2079
#data 0x79746552
#data 0x66206570
#data 0x7620726F
#data 0x66697265
#data 0x74616369
#data 0x206E6F69
#data 0x0000003A

#align4
loc_8c1C71C8:
#data 0x00000028

#align4
loc_8c1C71CC:
#data 0x0000002C

#align4
loc_8c1C71D0:
#data 0x00000029

#align4
loc_8c1C71D4:
#data 0x00003932

#align4
loc_8c1C71D8:
#data 0x43414C42
#data 0x53494C4B
#data 0x00444554
#data 0x00000000

#align4
loc_8c1C71E8:
#data loc_8c1C74F0

loc_8c1C71EC:
#data loc_8c1C74F4

loc_8c1C71F0:
#data loc_8c1C74FC

loc_8c1C71F4:
#data loc_8c1C7504

loc_8c1C71F8:
#data loc_8c1C7510

loc_8c1C71FC:
#data loc_8c1C7518

loc_8c1C7200:
#data loc_8c1C7528

loc_8c1C7204:
#data loc_8c1C7534

loc_8c1C7208:
#data loc_8c1C753C

loc_8c1C720C:
#data loc_8c1C7548

loc_8c1C7210:
#data loc_8c1C7554

loc_8c1C7214:
#data loc_8c1C7564

loc_8c1C7218:
#data loc_8c1C7574

loc_8c1C721C:
#data loc_8c1C7584

loc_8c1C7220:
#data loc_8c1C7594

loc_8c1C7224:
#data loc_8c1C75A4

loc_8c1C7228:
#data loc_8c1C75B4

loc_8c1C722C:
#data loc_8c1C75C4

loc_8c1C7230:
#data loc_8c1C75D4

loc_8c1C7234:
#data loc_8c1C75DC

loc_8c1C7238:
#data loc_8c1C75EC

loc_8c1C723C:
#data loc_8c1C75FC

loc_8c1C7240:
#data loc_8c1C760C

loc_8c1C7244:
#data loc_8c1C7618

loc_8c1C7248:
#data loc_8c1C7628

loc_8c1C724C:
#data loc_8c1C7638

loc_8c1C7250:
#data loc_8c1C7648

loc_8c1C7254:
#data loc_8c1C7658

loc_8c1C7258:
#data loc_8c1C7668

loc_8c1C725C:
#data loc_8c1C7678

loc_8c1C7260:
#data loc_8c1C7688

loc_8c1C7264:
#data loc_8c1C7698

loc_8c1C7268:
#data loc_8c1C76A8

loc_8c1C726C:
#data loc_8c1C76B8

loc_8c1C7270:
#data loc_8c1C76C8

loc_8c1C7274:
#data loc_8c1C76D8

loc_8c1C7278:
#data loc_8c1C76E8

loc_8c1C727C:
#data loc_8c1C76F8

loc_8c1C7280:
#data loc_8c1C7708

loc_8c1C7284:
#data loc_8c1C7718

loc_8c1C7288:
#data loc_8c1C7728

loc_8c1C728C:
#data loc_8c1C7734

loc_8c1C7290:
#data loc_8c1C7740

loc_8c1C7294:
#data loc_8c1C7750

loc_8c1C7298:
#data loc_8c1C7760

loc_8c1C729C:
#data loc_8c1C7770

loc_8c1C72A0:
#data loc_8c1C7780

loc_8c1C72A4:
#data loc_8c1C7790

loc_8c1C72A8:
#data loc_8c1C77A0

loc_8c1C72AC:
#data loc_8c1C77B0

loc_8c1C72B0:
#data loc_8c1C77C0

loc_8c1C72B4:
#data loc_8c1C77D0

loc_8c1C72B8:
#data loc_8c1C77E0

loc_8c1C72BC:
#data loc_8c1C77F0

loc_8c1C72C0:
#data loc_8c1C7800

loc_8c1C72C4:
#data loc_8c1C7810

loc_8c1C72C8:
#data loc_8c1C7820

loc_8c1C72CC:
#data loc_8c1C7830

loc_8c1C72D0:
#data loc_8c1C7840

loc_8c1C72D4:
#data loc_8c1C7850

loc_8c1C72D8:
#data loc_8c1C7860

loc_8c1C72DC:
#data loc_8c1C7870

loc_8c1C72E0:
#data loc_8c1C7880

loc_8c1C72E4:
#data loc_8c1C7894

loc_8c1C72E8:
#data loc_8c1C78A8

loc_8c1C72EC:
#data loc_8c1C78BC

loc_8c1C72F0:
#data loc_8c1C78D0

loc_8c1C72F4:
#data loc_8c1C78E0

loc_8c1C72F8:
#data loc_8c1C78F0

loc_8c1C72FC:
#data loc_8c1C7900

loc_8c1C7300:
#data loc_8c1C7910

loc_8c1C7304:
#data loc_8c1C7920

loc_8c1C7308:
#data loc_8c1C7930

loc_8c1C730C:
#data loc_8c1C7940

loc_8c1C7310:
#data loc_8c1C7950

loc_8c1C7314:
#data loc_8c1C7960

loc_8c1C7318:
#data loc_8c1C7970

loc_8c1C731C:
#data loc_8c1C7980

loc_8c1C7320:
#data loc_8c1C7990

loc_8c1C7324:
#data loc_8c1C79A0

loc_8c1C7328:
#data loc_8c1C79B4

loc_8c1C732C:
#data loc_8c1C79C4

loc_8c1C7330:
#data loc_8c1C79D4

loc_8c1C7334:
#data loc_8c1C79E4

loc_8c1C7338:
#data loc_8c1C79F4

loc_8c1C733C:
#data loc_8c1C7A04

loc_8c1C7340:
#data loc_8c1C7A14

loc_8c1C7344:
#data loc_8c1C7A24

loc_8c1C7348:
#data loc_8c1C7A34

loc_8c1C734C:
#data loc_8c1C7A44

loc_8c1C7350:
#data loc_8c1C7A54

loc_8c1C7354:
#data loc_8c1C7A68

loc_8c1C7358:
#data loc_8c1C7A84

loc_8c1C735C:
#data loc_8c1C7A94

loc_8c1C7360:
#data loc_8c1C7AA4

loc_8c1C7364:
#data loc_8c1C7AB4

loc_8c1C7368:
#data loc_8c1C7AC4

loc_8c1C736C:
#data loc_8c1C7AD4

loc_8c1C7370:
#data loc_8c1C7AE0

loc_8c1C7374:
#data loc_8c1C7AEC

loc_8c1C7378:
#data loc_8c1C7AFC

loc_8c1C737C:
#data loc_8c1C7B0C

loc_8c1C7380:
#data loc_8c1C7B1C

loc_8c1C7384:
#data loc_8c1C7B2C

loc_8c1C7388:
#data loc_8c1C7B3C

loc_8c1C738C:
#data loc_8c1C7B4C

loc_8c1C7390:
#data loc_8c1C7B5C

loc_8c1C7394:
#data loc_8c1C7B6C

loc_8c1C7398:
#data loc_8c1C7B7C

loc_8c1C739C:
#data loc_8c1C7B8C

loc_8c1C73A0:
#data loc_8c1C7B9C

loc_8c1C73A4:
#data loc_8c1C7BAC

loc_8c1C73A8:
#data loc_8c1C7BBC

loc_8c1C73AC:
#data loc_8c1C7BCC

loc_8c1C73B0:
#data loc_8c1C7BDC

loc_8c1C73B4:
#data loc_8c1C7BEC

loc_8c1C73B8:
#data loc_8c1C7BFC

loc_8c1C73BC:
#data loc_8c1C7C0C

loc_8c1C73C0:
#data loc_8c1C7C1C

loc_8c1C73C4:
#data loc_8c1C7C2C

loc_8c1C73C8:
#data loc_8c1C7C3C

loc_8c1C73CC:
#data loc_8c1C7C4C

loc_8c1C73D0:
#data loc_8c1C7C5C

loc_8c1C73D4:
#data loc_8c1C7C6C

loc_8c1C73D8:
#data loc_8c1C7C7C

loc_8c1C73DC:
#data loc_8c1C7C8C

loc_8c1C73E0:
#data loc_8c1C7C9C

loc_8c1C73E4:
#data loc_8c1C7CAC

loc_8c1C73E8:
#data loc_8c1C7CBC

loc_8c1C73EC:
#data loc_8c1C7CCC

loc_8c1C73F0:
#data loc_8c1C7CDC

loc_8c1C73F4:
#data loc_8c1C7CEC

loc_8c1C73F8:
#data loc_8c1C7CFC

loc_8c1C73FC:
#data loc_8c1C7D0C

loc_8c1C7400:
#data 0x0000004B
#data 0x0000012C
#data 0x000004B0
#data 0x00000960
#data 0x000012C0
#data 0x00001C20
#data 0x00002580
#data 0x00002EE0
#data 0x00003840
#data 0x000041A0
#data 0x00004B00
#data 0x00005460
#data 0x00005DC0
#data 0x00006720
#data 0x00006D60
#data 0x00007080
#data 0x00007295
#data 0x000077CA
#data 0x000079E0
#data 0x00007D00
#data 0x00008235
#data 0x00008340
#data 0x000084D0
#data 0x0000876A
#data 0x00008CA0
#data 0x000091D5
#data 0x00009470
#data 0x00009600
#data 0x0000970A
#data 0x00009C40
#data 0x0000A175
#data 0x0000A410
#data 0x0000A6AA
#data 0x0000ABE0
#data 0x0000B115
#data 0x0000B3B0
#data 0x0000B64A
#data 0x0000BB80
#data 0x0000C0B5
#data 0x0000C350
#data 0x0000C5EA
#data 0x0000CB20
#data 0x0000D055
#data 0x0000D2F0
#data 0x0000D58A
#data 0x0000DAC0
#data 0x0000E100
#data 0x0000FA00
#data 0x00011940
#data 0x00012C00
#data 0x00017700
#data 0x0001C200
#data 0x0001F400
#data 0x00038400
#data 0x00070800
#data 0x00070800
#data 0x000A8C00
#data 0x000A8C00
#data 0x000A8C00
#data 0x000E1000

#align4
loc_8c1C74F0:
#data 0x00004B4F

#align4
loc_8c1C74F4:
#data 0x4E4E4F43
#data 0x00544345

#align4
loc_8c1C74FC:
#data 0x474E4952
#data 0x00000000

#align4
loc_8c1C7504:
#data 0x43204F4E
#data 0x49525241
#data 0x00005245

#align4
loc_8c1C7510:
#data 0x4F525245
#data 0x00000052

#align4
loc_8c1C7518:
#data 0x4E4E4F43
#data 0x20544345
#data 0x30303231
#data 0x00000000

#align4
loc_8c1C7528:
#data 0x44204F4E
#data 0x544C4149
#data 0x00454E4F

#align4
loc_8c1C7534:
#data 0x59535542
#data 0x00000000

#align4
loc_8c1C753C:
#data 0x41204F4E
#data 0x4557534E
#data 0x00000052

#align4
loc_8c1C7548:
#data 0x4E4E4F43
#data 0x20544345
#data 0x00303036

#align4
loc_8c1C7554:
#data 0x4E4E4F43
#data 0x20544345
#data 0x30303432
#data 0x00000000

#align4
loc_8c1C7564:
#data 0x4E4E4F43
#data 0x20544345
#data 0x30303834
#data 0x00000000

#align4
loc_8c1C7574:
#data 0x4E4E4F43
#data 0x20544345
#data 0x30303639
#data 0x00000000

#align4
loc_8c1C7584:
#data 0x4E4E4F43
#data 0x20544345
#data 0x30343431
#data 0x00000030

#align4
loc_8c1C7594:
#data 0x4E4E4F43
#data 0x20544345
#data 0x30323931
#data 0x00000030

#align4
loc_8c1C75A4:
#data 0x4E4E4F43
#data 0x20544345
#data 0x30343833
#data 0x00000030

#align4
loc_8c1C75B4:
#data 0x4E4E4F43
#data 0x20544345
#data 0x30363735
#data 0x00000030

#align4
loc_8c1C75C4:
#data 0x4E4E4F43
#data 0x20544345
#data 0x32353131
#data 0x00003030

#align4
loc_8c1C75D4:
#data 0x474E4952
#data 0x00474E49

#align4
loc_8c1C75DC:
#data 0x4E4E4F43
#data 0x20544345
#data 0x34303332
#data 0x00003030

#align4
loc_8c1C75EC:
#data 0x4E4E4F43
#data 0x20544345
#data 0x30303834
#data 0x00000030

#align4
loc_8c1C75FC:
#data 0x4E4E4F43
#data 0x20544345
#data 0x30303436
#data 0x00000030

#align4
loc_8c1C760C:
#data 0x4E4E4F43
#data 0x20544345
#data 0x00303033

#align4
loc_8c1C7618:
#data 0x52524143
#data 0x20524549
#data 0x30303035
#data 0x00000030

#align4
loc_8c1C7628:
#data 0x4E4E4F43
#data 0x20544345
#data 0x38303634
#data 0x00003030

#align4
loc_8c1C7638:
#data 0x4E4E4F43
#data 0x20544345
#data 0x32313936
#data 0x00003030

#align4
loc_8c1C7648:
#data 0x4E4E4F43
#data 0x20544345
#data 0x36313239
#data 0x00003030

#align4
loc_8c1C7658:
#data 0x4E4E4F43
#data 0x20544345
#data 0x30303635
#data 0x00000030

#align4
loc_8c1C7668:
#data 0x52524143
#data 0x20524549
#data 0x30303235
#data 0x00000030

#align4
loc_8c1C7678:
#data 0x52524143
#data 0x20524549
#data 0x30303435
#data 0x00000030

#align4
loc_8c1C7688:
#data 0x52524143
#data 0x20524549
#data 0x30343833
#data 0x00000030

#align4
loc_8c1C7698:
#data 0x52524143
#data 0x20524549
#data 0x30303834
#data 0x00000030

#align4
loc_8c1C76A8:
#data 0x52524143
#data 0x20524549
#data 0x30303635
#data 0x00000030

#align4
loc_8c1C76B8:
#data 0x52524143
#data 0x20524549
#data 0x30363735
#data 0x00000030

#align4
loc_8c1C76C8:
#data 0x52524143
#data 0x20524549
#data 0x30303436
#data 0x00000030

#align4
loc_8c1C76D8:
#data 0x52524143
#data 0x20524549
#data 0x30303233
#data 0x00000030

#align4
loc_8c1C76E8:
#data 0x52524143
#data 0x20524549
#data 0x30303433
#data 0x00000030

#align4
loc_8c1C76F8:
#data 0x52524143
#data 0x20524549
#data 0x30303633
#data 0x00000030

#align4
loc_8c1C7708:
#data 0x52524143
#data 0x20524549
#data 0x30303833
#data 0x00000030

#align4
loc_8c1C7718:
#data 0x52524143
#data 0x20524549
#data 0x30303034
#data 0x00000030

#align4
loc_8c1C7728:
#data 0x52524143
#data 0x20524549
#data 0x00303033

#align4
loc_8c1C7734:
#data 0x52524143
#data 0x20524549
#data 0x00303036

#align4
loc_8c1C7740:
#data 0x52524143
#data 0x20524549
#data 0x30303633
#data 0x00000000

#align4
loc_8c1C7750:
#data 0x52524143
#data 0x20524549
#data 0x30303234
#data 0x00000030

#align4
loc_8c1C7760:
#data 0x52524143
#data 0x20524549
#data 0x30303434
#data 0x00000030

#align4
loc_8c1C7770:
#data 0x52524143
#data 0x20524549
#data 0x30303634
#data 0x00000030

#align4
loc_8c1C7780:
#data 0x52524143
#data 0x20524549
#data 0x30303231
#data 0x00000000

#align4
loc_8c1C7790:
#data 0x52524143
#data 0x20524549
#data 0x30303432
#data 0x00000000

#align4
loc_8c1C77A0:
#data 0x52524143
#data 0x20524549
#data 0x30303834
#data 0x00000000

#align4
loc_8c1C77B0:
#data 0x52524143
#data 0x20524549
#data 0x30303237
#data 0x00000000

#align4
loc_8c1C77C0:
#data 0x52524143
#data 0x20524549
#data 0x30303639
#data 0x00000000

#align4
loc_8c1C77D0:
#data 0x52524143
#data 0x20524549
#data 0x30303231
#data 0x00000030

#align4
loc_8c1C77E0:
#data 0x52524143
#data 0x20524549
#data 0x30343431
#data 0x00000030

#align4
loc_8c1C77F0:
#data 0x52524143
#data 0x20524549
#data 0x30383631
#data 0x00000030

#align4
loc_8c1C7800:
#data 0x52524143
#data 0x20524549

#align4
loc_8c1C7808:
#data 0x30323931
#data 0x00000030

#align4
loc_8c1C7810:
#data 0x52524143
#data 0x20524549
#data 0x30363132
#data 0x00000030

#align4
loc_8c1C7820:
#data 0x52524143
#data 0x20524549
#data 0x30303432
#data 0x00000030

#align4
loc_8c1C7830:
#data 0x52524143
#data 0x20524549
#data 0x30343632
#data 0x00000030

#align4
loc_8c1C7840:
#data 0x52524143
#data 0x20524549
#data 0x30383832
#data 0x00000030

#align4
loc_8c1C7850:
#data 0x4E4E4F43
#data 0x20544345
#data 0x30383631
#data 0x00000030

#align4
loc_8c1C7860:
#data 0x4E4E4F43
#data 0x20544345
#data 0x30303237
#data 0x00000000

#align4
loc_8c1C7870:
#data 0x4E4E4F43
#data 0x20544345
#data 0x30303231
#data 0x00000030

#align4
loc_8c1C7880:
#data 0x4E4E4F43
#data 0x20544345
#data 0x58543537
#data 0x3032312F
#data 0x00585230

#align4
loc_8c1C7894:
#data 0x4E4E4F43
#data 0x20544345
#data 0x30303231
#data 0x372F5854
#data 0x00585235

#align4
loc_8c1C78A8:
#data 0x52524143
#data 0x20524549
#data 0x58543537
#data 0x3032312F
#data 0x00585230

#align4
loc_8c1C78BC:
#data 0x52524143
#data 0x20524549
#data 0x30303231
#data 0x372F5854
#data 0x00585235

#align4
loc_8c1C78D0:
#data 0x4E4E4F43
#data 0x20544345
#data 0x30363132
#data 0x00000030

#align4
loc_8c1C78E0:
#data 0x4E4E4F43
#data 0x20544345
#data 0x30303432
#data 0x00000030

#align4
loc_8c1C78F0:
#data 0x4E4E4F43
#data 0x20544345
#data 0x30343632
#data 0x00000030

#align4
loc_8c1C7900:
#data 0x4E4E4F43
#data 0x20544345
#data 0x30383832
#data 0x00000030

#align4
loc_8c1C7910:
#data 0x544F5250
#data 0x4C4F434F
#data 0x4F4E203A
#data 0x0000454E

#align4
loc_8c1C7920:
#data 0x4E4E4F43
#data 0x20544345
#data 0x30303233
#data 0x00000030

#align4
loc_8c1C7930:
#data 0x4E4E4F43
#data 0x20544345
#data 0x30303433
#data 0x00000030

#align4
loc_8c1C7940:
#data 0x4E4E4F43
#data 0x20544345
#data 0x30323133
#data 0x00000030

#align4
loc_8c1C7950:
#data 0x4E4E4F43
#data 0x20544345
#data 0x30363333
#data 0x00000030

#align4
loc_8c1C7960:
#data 0x4E4E4F43
#data 0x20544345
#data 0x30303633
#data 0x00000030

#align4
loc_8c1C7970:
#data 0x4E4E4F43
#data 0x20544345
#data 0x30303833
#data 0x00000030

#align4
loc_8c1C7980:
#data 0x544F5250
#data 0x4C4F434F
#data 0x3456203A
#data 0x00000032

#align4
loc_8c1C7990:
#data 0x4E4E4F43
#data 0x20544345
#data 0x30303034
#data 0x00000030

#align4
loc_8c1C79A0:
#data 0x544F5250
#data 0x4C4F434F
#data 0x4E4D203A
#data 0x45522050
#data 0x0000004C

#align4
loc_8c1C79B4:
#data 0x4E4E4F43
#data 0x20544345
#data 0x30303234
#data 0x00000030

#align4
loc_8c1C79C4:
#data 0x4E4E4F43
#data 0x20544345
#data 0x30303434
#data 0x00000030

#align4
loc_8c1C79D4:
#data 0x544F5250
#data 0x4C4F434F
#data 0x2E58203A
#data 0x00003532

#align4
loc_8c1C79E4:
#data 0x544F5250
#data 0x4C4F434F
#data 0x2E56203A
#data 0x00303231

#align4
loc_8c1C79F4:
#data 0x544F5250
#data 0x4C4F434F
#data 0x2E56203A
#data 0x00303131

#align4
loc_8c1C7A04:
#data 0x52524143
#data 0x20524549
#data 0x30323133
#data 0x00000030

#align4
loc_8c1C7A14:
#data 0x52524143
#data 0x20524549
#data 0x30363333
#data 0x00000030

#align4
loc_8c1C7A24:
#data 0x544F5250
#data 0x4C4F434F
#data 0x5050203A
#data 0x00000050

#align4
loc_8c1C7A34:
#data 0x544F5250
#data 0x4C4F434F
#data 0x4C4D203A
#data 0x00505050

#align4
loc_8c1C7A44:
#data 0x4E4E4F43
#data 0x20544345
#data 0x30303634
#data 0x00000030

#align4
loc_8c1C7A54:
#data 0x4F545541
#data 0x4F474F4C
#data 0x4146204E
#data 0x44454C49
#data 0x00000020

#align4
loc_8c1C7A68:
#data 0x544F5250
#data 0x4C4F434F
#data 0x2E56203A
#data 0x20303231
#data 0x504D4F43
#data 0x53534552
#data 0x004E4F49

#align4
loc_8c1C7A84:
#data 0x544F5250
#data 0x4C4F434F
#data 0x2E58203A
#data 0x00003537

#align4
loc_8c1C7A94:
#data 0x4E4E4F43
#data 0x20544345
#data 0x30303035
#data 0x00000030

#align4
loc_8c1C7AA4:
#data 0x4E4E4F43
#data 0x20544345
#data 0x30303235
#data 0x00000030

#align4
loc_8c1C7AB4:
#data 0x4E4E4F43
#data 0x20544345
#data 0x30303435
#data 0x00000030

#align4
loc_8c1C7AC4:
#data 0x4E4E4F43
#data 0x20544345
#data 0x30383231
#data 0x00003030

#align4
loc_8c1C7AD4:
#data 0x54534554
#data 0x49414620
#data 0x0044454C

#align4
loc_8c1C7AE0:
#data 0x54534554
#data 0x53415020
#data 0x00444553

#align4
loc_8c1C7AEC:
#data 0x43524943
#data 0x20544955
#data 0x59535542
#data 0x00000000

#align4
loc_8c1C7AFC:
#data 0x544F5250
#data 0x4C4F434F
#data 0x4448203A
#data 0x0000434C

#align4
loc_8c1C7B0C:
#data 0x52524143
#data 0x20524549
#data 0x30323131
#data 0x00003030

#align4
loc_8c1C7B1C:
#data 0x52524143
#data 0x20524549
#data 0x30383231
#data 0x00003030

#align4
loc_8c1C7B2C:
#data 0x544F5250
#data 0x4C4F434F
#data 0x4950203A
#data 0x00534641

#align4
loc_8c1C7B3C:
#data 0x4E4E4F43
#data 0x20544345
#data 0x30303832
#data 0x00000030

#align4
loc_8c1C7B4C:
#data 0x4E4E4F43
#data 0x20544345
#data 0x33333932
#data 0x00000033

#align4
loc_8c1C7B5C:
#data 0x4E4E4F43
#data 0x20544345
#data 0x36363033
#data 0x00000036

#align4
loc_8c1C7B6C:
#data 0x4E4E4F43
#data 0x20544345
#data 0x33333333
#data 0x00000033

#align4
loc_8c1C7B7C:
#data 0x4E4E4F43
#data 0x20544345
#data 0x36363433
#data 0x00000036

#align4
loc_8c1C7B8C:
#data 0x4E4E4F43
#data 0x20544345
#data 0x33333733
#data 0x00000033

#align4
loc_8c1C7B9C:
#data 0x4E4E4F43
#data 0x20544345
#data 0x36363833
#data 0x00000036

#align4
loc_8c1C7BAC:
#data 0x4E4E4F43
#data 0x20544345
#data 0x33333134
#data 0x00000033

#align4
loc_8c1C7BBC:
#data 0x4E4E4F43
#data 0x20544345
#data 0x36363234
#data 0x00000036

#align4
loc_8c1C7BCC:
#data 0x4E4E4F43
#data 0x20544345
#data 0x33333534
#data 0x00000033

#align4
loc_8c1C7BDC:
#data 0x4E4E4F43
#data 0x20544345
#data 0x36363634
#data 0x00000036

#align4
loc_8c1C7BEC:
#data 0x4E4E4F43
#data 0x20544345
#data 0x33333934
#data 0x00000033

#align4
loc_8c1C7BFC:
#data 0x4E4E4F43
#data 0x20544345
#data 0x36363035
#data 0x00000036

#align4
loc_8c1C7C0C:
#data 0x4E4E4F43
#data 0x20544345
#data 0x33333335
#data 0x00000033

#align4
loc_8c1C7C1C:
#data 0x4E4E4F43
#data 0x20544345
#data 0x36363435
#data 0x00000036

#align4
loc_8c1C7C2C:
#data 0x52524143
#data 0x20524549
#data 0x30303832
#data 0x00000030

#align4
loc_8c1C7C3C:
#data 0x52524143
#data 0x20524549
#data 0x33333932
#data 0x00000033

#align4
loc_8c1C7C4C:
#data 0x52524143
#data 0x20524549
#data 0x36363033
#data 0x00000036

#align4
loc_8c1C7C5C:
#data 0x52524143
#data 0x20524549
#data 0x33333333
#data 0x00000033

#align4
loc_8c1C7C6C:
#data 0x52524143
#data 0x20524549
#data 0x36363433
#data 0x00000036

#align4
loc_8c1C7C7C:
#data 0x52524143
#data 0x20524549
#data 0x33333733
#data 0x00000033

#align4
loc_8c1C7C8C:
#data 0x52524143
#data 0x20524549
#data 0x36363833
#data 0x00000036

#align4
loc_8c1C7C9C:
#data 0x52524143
#data 0x20524549
#data 0x33333134
#data 0x00000033

#align4
loc_8c1C7CAC:
#data 0x52524143
#data 0x20524549
#data 0x36363234
#data 0x00000036

#align4
loc_8c1C7CBC:
#data 0x52524143
#data 0x20524549
#data 0x33333534
#data 0x00000033

#align4
loc_8c1C7CCC:
#data 0x52524143
#data 0x20524549
#data 0x36363634
#data 0x00000036

#align4
loc_8c1C7CDC:
#data 0x52524143
#data 0x20524549
#data 0x33333934
#data 0x00000033

#align4
loc_8c1C7CEC:
#data 0x52524143
#data 0x20524549
#data 0x36363035
#data 0x00000036

#align4
loc_8c1C7CFC:
#data 0x52524143
#data 0x20524549
#data 0x33333335
#data 0x00000033

#align4
loc_8c1C7D0C:
#data 0x52524143
#data 0x20524549
#data 0x36363435
#data 0x00000036

#align4
loc_8c1C7D1C:
#data 0x00006425

#align4
loc_8c1C7D20:
#data 0x53504220
#data 0x00000000


loc_8c1C7D28:
mov.b r0,@(0x00,r0)
mov.b r0,@(0x40,gbr)
bra loc_8c1C7D70
mov 0x60,r0
#data 0xD0509010
#data 0xF070B030
#data 0xC8488808
#data 0xE868A828
#data 0xD8589818
#data 0xF878B838
#data 0xC4448404
#data 0xE464A424
#data 0xD4549414
#data 0xF474B434
#data 0xCC4C8C0C
#data 0xEC6CAC2C
#data 0xDC5C9C1C
#data 0xFC7CBC3C
#data 0xC2428202
#data 0xE262A222

#align4
loc_8c1C7D70:
#data 0xD2529212
#data 0xF272B232
#data 0xCA4A8A0A
#data 0xEA6AAA2A
#data 0xDA5A9A1A
#data 0xFA7ABA3A
#data 0xC6468606
#data 0xE666A626
#data 0xD6569616
#data 0xF676B636
#data 0xCE4E8E0E
#data 0xEE6EAE2E
#data 0xDE5E9E1E
#data 0xFE7EBE3E
#data 0xC1418101
#data 0xE161A121
#data 0xD1519111
#data 0xF171B131
#data 0xC9498909
#data 0xE969A929
#data 0xD9599919
#data 0xF979B939
#data 0xC5458505
#data 0xE565A525
#data 0xD5559515
#data 0xF575B535
#data 0xCD4D8D0D
#data 0xED6DAD2D
#data 0xDD5D9D1D
#data 0xFD7DBD3D
#data 0xC3438303
#data 0xE363A323
#data 0xD3539313
#data 0xF373B333
#data 0xCB4B8B0B
#data 0xEB6BAB2B
#data 0xDB5B9B1B
#data 0xFB7BBB3B
#data 0xC7478707
#data 0xE767A727
#data 0xD7579717
#data 0xF777B737
#data 0xCF4F8F0F
#data 0xEF6FAF2F
#data 0xDF5F9F1F
#data 0xFF7FBF3F
#data 0x43294328
#data 0x5259504F
#data 0x54484749
#data 0x49525420
#data 0x4E474953
#data 0x43204C41
#data 0x554D4D4F
#data 0x4143494E
#data 0x4E4F4954
#data 0x4E492053
#data 0x31202E43
#data 0x2C343939
#data 0x4C4C4120
#data 0x47495220
#data 0x20535448
#data 0x45534552
#data 0x44455652
#data 0x00
loc_8C1C7E6D:
#data 0x0C
#data 0x0D10
#data 0x28
loc_8C1C7E71:
#data 0x00
#data 0x7E6A
#data 0x6050407E
#data 0x70
loc_8C1C7E79:
#data 0x00
#data 0x0001
#data 0x03030200
#data 0x07070403
#data 0x06060507
#data 0x09080106
#data 0x00000000
#data 0x43294328
#data 0x5259504F
#data 0x54484749
#data 0x49525420
#data 0x4E474953
#data 0x43204C41
#data 0x554D4D4F
#data 0x4143494E
#data 0x4E4F4954
#data 0x4E492053
#data 0x31202E43
#data 0x2C343939
#data 0x4C4C4120
#data 0x47495220
#data 0x20535448
#data 0x45534552
#data 0x44455652
#data 0x00000000

#align4
loc_8c1C7ED8:
#data 0x04030201
#data 0x08070605
#data 0x0009

loc_8c1C7EE2:
#data 0x0900
#data 0x05060708
#data 0x01020304
#data 0x00000000

#align4
loc_8c1C7EF0:
#data 0x03070C20
#data 0x35000102
#data 0x00000105
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x10200000
#data 0x01020407
#data 0x1040A000
#data 0x00000103
#data 0x0D162000
#data 0x01020308
#data 0x0350A000
#data 0x00000102
#data 0x0A101820
#data 0x02030508
#data 0x02300001
#data 0x20000102
#data 0x080A1018
#data 0x01020305
#data 0x03154A00
#data 0x00000101
#data 0x00000000

#align4
loc_8c1C7F50:
#data 0x2BD42710
#data 0x372D312D
#data 0x45763DE8

#align4
loc_8c1C7F5C:
#data 0xEE7C08C2
#data 0xC77408C2
#data 0x08C274FE
#data 0x08C21184
#data 0x6495CD4F
#data 0x7B300500
#data 0x000004CF
#data 0x0000

loc_8c1C7F7A:
#data 0x08C2
#data 0x08C2EE7C
#data 0x74FEC774
#data 0x118408C2
#data 0xCD4F08C2
#data 0x02006495
#data 0x04CF7B30
#data 0x00000000

#align4
loc_8c1C7F98:
#data 0xCFE814E2
#data 0xD0AB1C3D
#data 0x1BAD69F2
#data 0x1C3DE51C
#data 0x6583D0AB
#data 0x7B300D00
#data 0x000004CF
#data 0x0000

loc_8c1C7FB6:
#data 0x081C
#data 0x08FCEEFF
#data 0x742FC505
#data 0xF904079B
#data 0xC63E08FC
#data 0x02006E34
#data 0x04CF7B30
#data 0x00000000

#align4
loc_8c1C7FD4:
#data 0xEA5A0A52
#data 0xC4670B70
#data 0x0B3574C9
#data 0x0B70FCF7
#data 0x6DDDC5A2
#data 0x7B300800
#data 0x000004CF
#data 0x0000

loc_8c1C7FF2:
#data 0x08C2
#data 0x08C2EE7C
#data 0x74FEC774
#data 0x118408C2
#data 0xCD4F08C2
#data 0x04006495
#data 0x04CF7B30
#data 0x00000000

#align4
loc_8c1C8010:
#data 0xE9C90DA1
#data 0xC5A20F6D
#data 0x0E3770BA
#data 0x0F6DE269
#data 0x7643C505
#data 0x7B300200
#data 0x000004CF
#data 0x0000

loc_8c1C802E:
#data 0x0937
#data 0x0997EFB8
#data 0x757EC289
#data 0xEDA60937
#data 0xC2890997
#data 0x02007377
#data 0x04CF7B30
#data 0x00000000

#align4
loc_8c1C804C:
#data 0xED34095A
#data 0xC28909BD
#data 0x07E3769A
#data 0x09BDF293
#data 0x7308C289
#data 0x7B300700
#data 0x000004CF
#data 0x0000

loc_8c1C806A:
#data 0x1851
#data 0x1EB2CB39
#data 0x6BDFCD4F
#data 0xD6251851
#data 0xCD4F1EB2
#data 0x09006845
#data 0x04CF7B30
#data 0x021C0078

#align4
loc_8c1C8088:
#data 0xDD2F1153
#data 0xC5051209
#data 0x109F742F
#data 0x1209E9BD
#data 0x6BE3C6BA
#data 0x7B300600
#data 0x000004CF
#data 0x0000

loc_8c1C80A6:
#data 0x0A60
#data 0x0B42EAA7
#data 0x745BC505
#data 0xF73F0987
#data 0xC63E0B42
#data 0x05006BDB
#data 0x04CF7B30
#data 0x00000000

#align4
loc_8c1C80C4:
#data 0xEE7C08C2
#data 0xC77408C2
#data 0x08C274FE
#data 0x08C21184
#data 0x6495CD4F
#data 0x7B300500
#data 0x000004CF
#data 0x0000

loc_8c1C80E2:
#data 0x08C2
#data 0x08C2EE7C
#data 0x74FEC774
#data 0x118408C2
#data 0xCD4F08C2
#data 0x01606495
#data 0x04CF7B30
#data 0x00000000

#align4
loc_8c1C8100:
#data 0xEBE509AE
#data 0xC3C90A81
#data 0x08827669
#data 0x0A81F3D9
#data 0x7086C3C9
#data 0x7B300688
#data 0x000004CF
#data 0x0000

loc_8c1C811E:
#data 0x14AF
#data 0x186FD336
#data 0x6F16CB01
#data 0xDDEF143C
#data 0xCB01186F
#data 0x06256990
#data 0x04CF7B30
#data 0x00000000

#align4
loc_8c1C813C:
#data 0xEE7C08C2
#data 0xC77408C2
#data 0x08C274FE
#data 0x08C21184
#data 0x6495CD4F
#data 0x7B300900
#data 0x000004CF
#data 0x0000

loc_8c1C815A:
#data 0x08C2
#data 0x08C2EE7C
#data 0x74FEC774
#data 0x118408C2
#data 0xCD4F08C2
#data 0x06006495
#data 0x04CF7B30
#data 0x00000000

#align4
loc_8c1C8178:
#data 0xE1001004
#data 0xC28910AE
#data 0x1004757E
#data 0x10AEE223
#data 0x744DC289
#data 0x7B300180
#data 0x000004CF
#data 0x0000

loc_8c1C8196:
#data 0x0A7A
#data 0x0AE8EB42
#data 0x71E5C63E
#data 0xF7B408D6
#data 0xC9D50AE8
#data 0x01706D2F
#data 0x04CF7B30
#data 0x00000000

#align4
loc_8c1C81B4:
#data 0xEEFE0807
#data 0xC14709E9
#data 0x08077675
#data 0x09E9F02E
#data 0x74A5C147
#data 0x7B300600
#data 0x000004CF
#data 0x0000

loc_8c1C81D2:
#data 0x0D49
#data 0x1066E32E
#data 0x74ABC3C9

#align4
loc_8c1C81DC:
#data 0xE66F0D49
#data 0xC3C91066
#data 0x030071DC
#data 0x04CF7B30
#data 0x00000000

#align4
loc_8c1C81F0:
#data 0x87D43DBE
#data 0xC2894049
#data 0x3DBE769A
#data 0x4049903C
#data 0x70BEC289
#data 0x7B300D00
#data 0x000004CF
#data 0x0000

loc_8c1C820E:
#data 0x0B94
#data 0x0DFCE6F0
#data 0x6E21CB01
#data 0xF53F0B94
#data 0xC9D50DFC
#data 0x016C69D7
#data 0x04CF7B30
#data 0x00000000

#align4
loc_8c1C822C:
#data 0xEC04090B
#data 0xCC290B2A
#data 0x090B6DDD
#data 0x0B2A037D
#data 0x662ECC29
#data 0x7B300380
#data 0x000004CF
#data 0x0000

loc_8c1C824A:
#data 0x090B
#data 0x0B2AEC04
#data 0x6DDDCC29
#data 0x037D090B
#data 0xCC290B2A
#data 0x0400662E
#data 0x04CF7B30
#data 0x00000000

#align4
loc_8c1C8268:
#data 0xEE7C08C2
#data 0xC77408C2
#data 0x08C274FE
#data 0x08C21184
#data 0x6495CD4F
#data 0x7B300500
#data 0x000004CF
#data 0x0000

loc_8c1C8286:
#data 0x08C2
#data 0x08C2EE7C
#data 0x74FEC774
#data 0x118408C2
#data 0xCD4F08C2
#data 0x02006495
#data 0x04CF7B30
#data 0x00000000


loc_8c1C82A4:
mov.w r11,@(r0,r4)
fmov.s @r9+,fr14
mov.w r11,@(r0,r4)
tst 0xB9,r0
mov r6,r11
and r11,r10
bra loc_8c1C7808
and r11,r10
#data 0x7637C58E
#data 0x7B300600
#data 0x000004CF
#data 0x0000

loc_8c1C82C2:
#data 0x026B
#data 0x026B021C
#data 0x67ABCBCB
#data 0xB67E24C8
#data 0xC6C224C8
#data 0x020075DD
#data 0x04CF7B30
#data 0x00000000

#align4
loc_8c1C82E0:
#data 0xEA760A45
#data 0xC4670B61
#data 0x930A74C9
#data 0x0B61F693
#data 0x6DDEC5A2
#data 0x7B300800
#data 0x000004CF
#data 0x0000

loc_8c1C82FE:
#data 0x08C2
#data 0x08C2EE7C
#data 0x74FEC774
#data 0x118408C2
#data 0xCD4F08C2
#data 0x04006495
#data 0x04CF7B30
#data 0x00000000

#align4
loc_8c1C831C:
#data 0xE7260C08
#data 0xC5050D0E
#data 0x0B897377
#data 0x0D0EED33
#data 0x6F4CC63E
#data 0x7B300800
#data 0x000004CF
#data 0x0000

loc_8c1C833A:
#data 0x06F1
#data 0x07B1F182
#data 0x7377C505
#data 0xF9F406A7
#data 0xC63E07B1
#data 0x04006F15
#data 0x04CF7B30
#data 0x00000000

#align4
loc_8c1C8358:
#data 0xED34095A
#data 0xC28909BD
#data 0x07E3769A
#data 0x09BDF293
#data 0x7308C289
#data 0x7B300900
#data 0x000004CF
#data 0x0000

loc_8c1C8376:
#data 0x0A7A
#data 0x0AE8EB42
#data 0x71E5C63E
#data 0xF7B408D6
#data 0xC9D50AE8
#data 0x09006D2F
#data 0x04CF7B30
#data 0x00000000


loc_8c1C8394:
mulu.w r11,r13
bra loc_8c1C8504
cmp/hs r10,r1
#data 0xC505
#data 0x2DBE7A69
#data 0x31A2AF2F
#data 0x6C7EC505
#data 0x7B300800
#data 0x000004CF
#data 0x0000

loc_8c1C83B2:
#data 0x1811
#data 0x1DB7CAB8
#data 0x6E2ACC29
#data 0xD7071811
#data 0xCC291DB7
#data 0x0600662E
#data 0x04CF7B30
#data 0x00000000

#align4
loc_8c1C83D0:
#data 0xDF930FC9
#data 0xC50510C7
#data 0x0F2576B0
#data 0x10C7E794
#data 0x7057C63E
#data 0x7B300800
#data 0x000004CF
#data 0x0000

loc_8c1C83EE:
#data 0x0920
#data 0x09B3ED42
#data 0x76B0C505
#data 0xF8600863
#data 0xC63E09B3
#data 0x03407057
#data 0x04CF7B30
#data 0x00000000

#align4
loc_8c1C840C:
#data 0xEA760A45
#data 0xC4670B61
#data 0x930A74C9
#data 0x0B61F693
#data 0x6DDEC5A2
#data 0x7B301000
#data 0x000004CF
#data 0x0000

loc_8c1C842A:
#data 0x08C2
#data 0x08C2EE7C
#data 0x74FEC774
#data 0x11840BC2
#data 0xCD4F08C2
#data 0x01306495
#data 0x04CF7B30
#data 0x00000000

#align4
loc_8c1C8448:
#data 0x00100001
#data 0x00830082
#data 0x00860084
#data 0x00850087
#data 0x02000100
#data 0x00000400
#data 0x00000000
#data 0x00000000

#align4
loc_8c1C8468:
#data 0x00000086
#data 0x00820082
#data 0x00860084
#data 0x00840086
#data 0x02000100
#data 0x00000400
#data 0x00000000
#data 0x00000000

#align4
loc_8c1C8488:
#data 0x626F7250
#data 0x206D656C
#data 0x65636361
#data 0x6E697373
#data 0x61432067
#data 0x75426472
#data 0x6F6D2073
#data 0x206D6564
#data 0x74636573
#data 0x2E6E6F69
#data 0x00000000
#data 0x00000000

#align4
loc_8c1C84B8:
#data 0x00494347

#align4
loc_8c1C84BC:
#data 0x0000534D

#align4
loc_8c1C84C0:
#data 0x0000414D

#align4
loc_8c1C84C4:
#data 0x414C4346
#data 0x00005353

#align4
loc_8c1C84CC:
#data 0x3A414D2B
#data 0x00000020

#align4
loc_8c1C84D4:
#data 0x00000028

#align4
loc_8c1C84D8:
#data 0x0000002C

#align4
loc_8c1C84DC:
#data 0x00000029


loc_8c1C84E0:
jmp @r13
cmp/ge r5,r10
#data 0x00000020

#align4
loc_8c1C84E8:
#data 0x2C30282C
#data 0x002C2931

#align4
loc_8c1C84F0:
#data 0x332C3028
#data 0x252D3030
#data 0x282C2964
#data 0x30332C30
#data 0x64252D30

#align4
loc_8c1C8504:
#data 0x30282C29
#data 0x3030332C
#data 0x2964252D
#data 0x2C30282C
#data 0x2D303033
#data 0x00296425

#align4
loc_8c1C851C:
#data 0x00313256

#align4
loc_8c1C8520:
#data 0x3232562C
#data 0x00000000

#align4
loc_8c1C8528:
#data 0x3232562C
#data 0x00000042

#align4
loc_8c1C8530:
#data 0x3332562C
#data 0x00000043

#align4
loc_8c1C8538:
#data 0x3233562C
#data 0x00000000

#align4
loc_8c1C8540:
#data 0x3233562C
#data 0x00000042

#align4
loc_8c1C8548:
#data 0x3433562C
#data 0x00000000

#align4
loc_8c1C8550:
#data 0x36354B2C
#data 0x00000000

#align4
loc_8c1C8558:
#data 0x3039562C
#data 0x00000000

#align4
loc_8c1C8560:
#data 0x6E6B6E55
#data 0x206E776F
#data 0x75646F6D
#data 0x6974616C
#data 0x00006E6F

#align4
loc_8c1C8574:
#data 0x00002C31

#align4
loc_8c1C8578:
#data 0x00002C30

#align4
loc_8c1C857C:
#data 0x00303956

#align4
loc_8c1C8580:
#data 0x0036354B

#align4
loc_8c1C8584:
#data 0x00343356

#align4
loc_8c1C8588:
#data 0x42323356
#data 0x00000000

#align4
loc_8c1C8590:
#data 0x00323356

#align4
loc_8c1C8594:
#data 0x42323256
#data 0x00000000

#align4
loc_8c1C859C:
#data 0x00323256

#align4
loc_8c1C85A0:
#data 0x43333256
#data 0x00000000

#align4
loc_8c1C85A8:
#data 0x4C4C4542
#data 0x00000000

#align4
loc_8c1C85B0:
#data 0x00000030

#align4
loc_8c1C85B4:
#data 0x00006425

#align4
loc_8c1C85B8:
#data 0x20313256
#data 0x20202020
#data 0x00000000

#align4
loc_8c1C85C4:
#data 0x20323256
#data 0x20202020
#data 0x00000000

#align4
loc_8c1C85D0:
#data 0x42323256
#data 0x20202020
#data 0x00000000

#align4
loc_8c1C85DC:
#data 0x43333256
#data 0x20202020
#data 0x00000000

#align4
loc_8c1C85E8:
#data 0x20323356
#data 0x20202020
#data 0x00000000

#align4
loc_8c1C85F4:
#data 0x42323356
#data 0x20202020
#data 0x00000000

#align4
loc_8c1C8600:
#data 0x20343356
#data 0x20202020
#data 0x00000000

#align4
loc_8c1C860C:
#data 0x2036354B
#data 0x20202020
#data 0x00000000

#align4
loc_8c1C8618:
#data 0x20303956
#data 0x20202020
#data 0x00000000
#data 0x4143472B
#data 0x203A2050
#data 0x4C43462B
#data 0x2C535341
#data 0x534D2B20
#data 0x452B202C
#data 0x2B202C53
#data 0x00005344
#data 0x61676553
#data 0x00000000
#data 0x6C697542
#data 0x206E4974
#data 0x65646F4D
#data 0x0000006D
#data 0x20564552
#data 0x30302E31
#data 0x00000030

#align4
loc_8c1C8668:
#data 0x61766E69
#data 0x2064696C
#data 0x65707974
#data 0x20666F20
#data 0x626D756E
#data 0x00207265

#align4
loc_8c1C8680:
#data 0x08070600
#data 0x0C0B0A09
#data 0x1615120E
#data 0x1A191817
#data 0x1E1D1C1B
#data 0x2221201F
#data 0x26252423
#data 0x2F2E2827
#data 0x34323130
#data 0xFF373635

#align4
loc_8c1C86A8:
#data 0x0C020200
#data 0x00000000
#data 0xFF000000

#align4
loc_8c1C86B4:
#data 0x6C616944
#data 0x6D756E20
#data 0x20726562
#data 0x0000203A

#align4
loc_8c1C86C4:
#data 0x6F747541
#data 0x6F676F6C
#data 0x203A206E
#data 0x00000000
#data 0x00000000

#align4
loc_8c1C86D8:
#data 0x20626546
#data 0x32203130
#data 0x00303030

#align4
loc_8c1C86E4:
#data 0x006E614A

#align4
loc_8c1C86E8:
#data 0x00626546

#align4
loc_8c1C86EC:
#data 0x0072614D

#align4
loc_8c1C86F0:
#data 0x00727041

#align4
loc_8c1C86F4:
#data 0x0079614D

#align4
loc_8c1C86F8:
#data 0x006E754A

#align4
loc_8c1C86FC:
#data 0x006C754A

#align4
loc_8c1C8700:
#data 0x00677541

#align4
loc_8c1C8704:
#data 0x00706553

#align4
loc_8c1C8708:
#data 0x0074634F

#align4
loc_8c1C870C:
#data 0x00766F4E

#align4
loc_8c1C8710:
#data 0x00636544

#align4
loc_8c1C8714:
#data 0x25204453
#data 0x30252E73
#data 0x252E6432
#data 0x63252E73
#data 0x252E6325
#data 0x2E632563
#data 0x63256325
#data 0x00000000

#align4
loc_8c1C8734:
#data 0x303A3731
#data 0x32353A31
#data 0x00000000
#data 0x00000000
#data 0x47800000
#data 0x48000000
#data 0x48400000
#data 0x48800000
#data 0x48A00000
#data 0x48C00000
#data 0x48E00000
#data 0xC9000000
#data 0xC8E00000
#data 0xC8C00000
#data 0xC8A00000
#data 0xC8800000
#data 0xC8400000
#data 0xC8000000
#data 0xC7800000

#align4
loc_8c1C8780:
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x47800000
#data 0x47800000
#data 0x47800000
#data 0x47800000
#data 0x47800000
#data 0x47800000
#data 0x47800000
#data 0x47800000
#data 0x47800000
#data 0x47800000
#data 0x47800000
#data 0x47800000
#data 0x47800000
#data 0x47800000
#data 0x47800000
#data 0x47800000
#data 0x48000000
#data 0x48000000
#data 0x48000000
#data 0x48000000
#data 0x48000000
#data 0x48000000
#data 0x48000000
#data 0x48000000
#data 0x48000000
#data 0x48000000
#data 0x48000000
#data 0x48000000
#data 0x48000000
#data 0x48000000
#data 0x48000000
#data 0x48000000
#data 0x48400000
#data 0x48400000
#data 0x48400000
#data 0x48400000
#data 0x48400000
#data 0x48400000
#data 0x48400000
#data 0x48400000
#data 0x48400000
#data 0x48400000
#data 0x48400000
#data 0x48400000
#data 0x48400000
#data 0x48400000
#data 0x48400000
#data 0x48400000
#data 0x48800000
#data 0x48800000
#data 0x48800000
#data 0x48800000
#data 0x48800000
#data 0x48800000
#data 0x48800000
#data 0x48800000
#data 0x48800000
#data 0x48800000
#data 0x48800000
#data 0x48800000
#data 0x48800000
#data 0x48800000
#data 0x48800000
#data 0x48800000
#data 0x48A00000
#data 0x48A00000
#data 0x48A00000
#data 0x48A00000
#data 0x48A00000
#data 0x48A00000
#data 0x48A00000
#data 0x48A00000
#data 0x48A00000
#data 0x48A00000
#data 0x48A00000
#data 0x48A00000
#data 0x48A00000
#data 0x48A00000
#data 0x48A00000
#data 0x48A00000
#data 0x48C00000
#data 0x48C00000
#data 0x48C00000
#data 0x48C00000
#data 0x48C00000
#data 0x48C00000
#data 0x48C00000
#data 0x48C00000
#data 0x48C00000
#data 0x48C00000
#data 0x48C00000
#data 0x48C00000
#data 0x48C00000
#data 0x48C00000
#data 0x48C00000
#data 0x48C00000
#data 0x48E00000
#data 0x48E00000
#data 0x48E00000
#data 0x48E00000
#data 0x48E00000
#data 0x48E00000
#data 0x48E00000
#data 0x48E00000
#data 0x48E00000
#data 0x48E00000
#data 0x48E00000
#data 0x48E00000
#data 0x48E00000
#data 0x48E00000
#data 0x48E00000
#data 0x48E00000
#data 0xC9000000
#data 0xC9000000
#data 0xC9000000
#data 0xC9000000
#data 0xC9000000
#data 0xC9000000
#data 0xC9000000
#data 0xC9000000
#data 0xC9000000
#data 0xC9000000
#data 0xC9000000
#data 0xC9000000
#data 0xC9000000
#data 0xC9000000
#data 0xC9000000
#data 0xC9000000
#data 0xC8E00000
#data 0xC8E00000
#data 0xC8E00000
#data 0xC8E00000
#data 0xC8E00000
#data 0xC8E00000
#data 0xC8E00000
#data 0xC8E00000
#data 0xC8E00000
#data 0xC8E00000
#data 0xC8E00000
#data 0xC8E00000
#data 0xC8E00000
#data 0xC8E00000
#data 0xC8E00000
#data 0xC8E00000
#data 0xC8C00000
#data 0xC8C00000
#data 0xC8C00000
#data 0xC8C00000
#data 0xC8C00000
#data 0xC8C00000
#data 0xC8C00000
#data 0xC8C00000
#data 0xC8C00000
#data 0xC8C00000
#data 0xC8C00000
#data 0xC8C00000
#data 0xC8C00000
#data 0xC8C00000
#data 0xC8C00000
#data 0xC8C00000
#data 0xC8A00000
#data 0xC8A00000
#data 0xC8A00000
#data 0xC8A00000
#data 0xC8A00000
#data 0xC8A00000
#data 0xC8A00000
#data 0xC8A00000
#data 0xC8A00000
#data 0xC8A00000
#data 0xC8A00000
#data 0xC8A00000
#data 0xC8A00000
#data 0xC8A00000
#data 0xC8A00000
#data 0xC8A00000
#data 0xC8800000
#data 0xC8800000
#data 0xC8800000
#data 0xC8800000
#data 0xC8800000
#data 0xC8800000
#data 0xC8800000
#data 0xC8800000
#data 0xC8800000
#data 0xC8800000
#data 0xC8800000
#data 0xC8800000
#data 0xC8800000
#data 0xC8800000
#data 0xC8800000
#data 0xC8800000
#data 0xC8400000
#data 0xC8400000
#data 0xC8400000
#data 0xC8400000
#data 0xC8400000
#data 0xC8400000
#data 0xC8400000
#data 0xC8400000
#data 0xC8400000
#data 0xC8400000
#data 0xC8400000
#data 0xC8400000
#data 0xC8400000
#data 0xC8400000
#data 0xC8400000
#data 0xC8400000
#data 0xC8000000
#data 0xC8000000
#data 0xC8000000
#data 0xC8000000
#data 0xC8000000
#data 0xC8000000
#data 0xC8000000
#data 0xC8000000
#data 0xC8000000
#data 0xC8000000
#data 0xC8000000
#data 0xC8000000
#data 0xC8000000
#data 0xC8000000
#data 0xC8000000
#data 0xC8000000
#data 0xC7800000
#data 0xC7800000
#data 0xC7800000
#data 0xC7800000
#data 0xC7800000
#data 0xC7800000
#data 0xC7800000
#data 0xC7800000
#data 0xC7800000
#data 0xC7800000
#data 0xC7800000
#data 0xC7800000
#data 0xC7800000
#data 0xC7800000
#data 0xC7800000
#data 0xC7800000

#align4
loc_8c1C8B80:
#data 0x00000000
#data 0x47800000
#data 0x48000000
#data 0x48400000
#data 0x48800000
#data 0x48A00000
#data 0x48C00000
#data 0x48E00000
#data 0xC9000000
#data 0xC8E00000
#data 0xC8C00000
#data 0xC8A00000
#data 0xC8800000
#data 0xC8400000
#data 0xC8000000
#data 0xC7800000
#data 0x00000000
#data 0x47800000
#data 0x48000000
#data 0x48400000
#data 0x48800000
#data 0x48A00000
#data 0x48C00000
#data 0x48E00000
#data 0xC9000000
#data 0xC8E00000
#data 0xC8C00000
#data 0xC8A00000
#data 0xC8800000
#data 0xC8400000
#data 0xC8000000
#data 0xC7800000
#data 0x00000000
#data 0x47800000
#data 0x48000000
#data 0x48400000
#data 0x48800000
#data 0x48A00000
#data 0x48C00000
#data 0x48E00000
#data 0xC9000000
#data 0xC8E00000
#data 0xC8C00000
#data 0xC8A00000
#data 0xC8800000
#data 0xC8400000
#data 0xC8000000
#data 0xC7800000
#data 0x00000000
#data 0x47800000
#data 0x48000000
#data 0x48400000
#data 0x48800000
#data 0x48A00000
#data 0x48C00000
#data 0x48E00000
#data 0xC9000000
#data 0xC8E00000
#data 0xC8C00000
#data 0xC8A00000
#data 0xC8800000
#data 0xC8400000
#data 0xC8000000
#data 0xC7800000
#data 0x00000000
#data 0x47800000
#data 0x48000000
#data 0x48400000
#data 0x48800000
#data 0x48A00000
#data 0x48C00000
#data 0x48E00000
#data 0xC9000000
#data 0xC8E00000
#data 0xC8C00000
#data 0xC8A00000
#data 0xC8800000
#data 0xC8400000
#data 0xC8000000
#data 0xC7800000
#data 0x00000000
#data 0x47800000
#data 0x48000000
#data 0x48400000
#data 0x48800000
#data 0x48A00000
#data 0x48C00000
#data 0x48E00000
#data 0xC9000000
#data 0xC8E00000
#data 0xC8C00000
#data 0xC8A00000
#data 0xC8800000
#data 0xC8400000
#data 0xC8000000
#data 0xC7800000
#data 0x00000000
#data 0x47800000
#data 0x48000000
#data 0x48400000
#data 0x48800000
#data 0x48A00000
#data 0x48C00000
#data 0x48E00000
#data 0xC9000000
#data 0xC8E00000
#data 0xC8C00000
#data 0xC8A00000
#data 0xC8800000
#data 0xC8400000
#data 0xC8000000
#data 0xC7800000
#data 0x00000000
#data 0x47800000
#data 0x48000000
#data 0x48400000
#data 0x48800000
#data 0x48A00000
#data 0x48C00000
#data 0x48E00000
#data 0xC9000000
#data 0xC8E00000
#data 0xC8C00000
#data 0xC8A00000
#data 0xC8800000
#data 0xC8400000
#data 0xC8000000
#data 0xC7800000
#data 0x00000000
#data 0x47800000
#data 0x48000000
#data 0x48400000
#data 0x48800000
#data 0x48A00000
#data 0x48C00000
#data 0x48E00000
#data 0xC9000000
#data 0xC8E00000
#data 0xC8C00000
#data 0xC8A00000
#data 0xC8800000
#data 0xC8400000
#data 0xC8000000
#data 0xC7800000
#data 0x00000000
#data 0x47800000
#data 0x48000000
#data 0x48400000
#data 0x48800000
#data 0x48A00000
#data 0x48C00000
#data 0x48E00000
#data 0xC9000000
#data 0xC8E00000
#data 0xC8C00000
#data 0xC8A00000
#data 0xC8800000
#data 0xC8400000
#data 0xC8000000
#data 0xC7800000
#data 0x00000000
#data 0x47800000
#data 0x48000000
#data 0x48400000
#data 0x48800000
#data 0x48A00000
#data 0x48C00000
#data 0x48E00000
#data 0xC9000000
#data 0xC8E00000
#data 0xC8C00000
#data 0xC8A00000
#data 0xC8800000
#data 0xC8400000
#data 0xC8000000
#data 0xC7800000
#data 0x00000000
#data 0x47800000
#data 0x48000000
#data 0x48400000
#data 0x48800000
#data 0x48A00000
#data 0x48C00000
#data 0x48E00000
#data 0xC9000000
#data 0xC8E00000
#data 0xC8C00000
#data 0xC8A00000
#data 0xC8800000
#data 0xC8400000
#data 0xC8000000
#data 0xC7800000
#data 0x00000000
#data 0x47800000
#data 0x48000000
#data 0x48400000
#data 0x48800000
#data 0x48A00000
#data 0x48C00000
#data 0x48E00000
#data 0xC9000000
#data 0xC8E00000
#data 0xC8C00000
#data 0xC8A00000
#data 0xC8800000
#data 0xC8400000
#data 0xC8000000
#data 0xC7800000
#data 0x00000000
#data 0x47800000
#data 0x48000000
#data 0x48400000
#data 0x48800000
#data 0x48A00000
#data 0x48C00000
#data 0x48E00000
#data 0xC9000000
#data 0xC8E00000
#data 0xC8C00000
#data 0xC8A00000
#data 0xC8800000
#data 0xC8400000
#data 0xC8000000
#data 0xC7800000
#data 0x00000000
#data 0x47800000
#data 0x48000000
#data 0x48400000
#data 0x48800000
#data 0x48A00000
#data 0x48C00000
#data 0x48E00000
#data 0xC9000000
#data 0xC8E00000
#data 0xC8C00000
#data 0xC8A00000
#data 0xC8800000
#data 0xC8400000
#data 0xC8000000
#data 0xC7800000
#data 0x00000000
#data 0x47800000
#data 0x48000000
#data 0x48400000
#data 0x48800000
#data 0x48A00000
#data 0x48C00000
#data 0x48E00000
#data 0xC9000000
#data 0xC8E00000
#data 0xC8C00000
#data 0xC8A00000
#data 0xC8800000
#data 0xC8400000
#data 0xC8000000
#data 0xC7800000

#align4
loc_8c1C8F80:
#data 0x00000006
#data 0x00000001
#data 0x00000007
#data 0x00000002
#data 0x00000008
#data 0x00000004
#data 0x0000000B
;-------------------------------------------------------------------------------
#data 0x00000008
#data 0x0000000C
#data 0x00000010
#data 0x0000000D
#data 0x00000020
#data 0x0000000E
#data 0x00000040

#align4
loc_8c1C8FB8:
#data 0x00000005
#data 0x00000001
#data 0x00000006
#data 0x00000002
#data 0x00000007
#data 0x00000004
#data 0x00000008
#data 0x00000008
#data 0x0000000B
;-------------------------------------------------------------------------------
#data 0x00000010
#data 0x0000000C
#data 0x00000020
#data 0x0000000D
#data 0x00000040
#data 0x0000000E
#data 0x00000080
#data 0x00000015
#data 0x00000100
#data 0x00000016
#data 0x00000200
#data 0x00000017
#data 0x00000400
#data 0x00000019
#data 0x00000800
#data 0x0000001D
#data 0x00001000
#data 0x00000020
#data 0x00002000

#align4
loc_8c1C9028:
#data 0x00000018
#data 0x00000001
#data 0x0000001A
#data 0x00000002
#data 0x0000001C
#data 0x00000004
#data 0x0000001E
#data 0x00000008
#data 0x0000001F
#data 0x00000010
#data 0x00000022
#data 0x00000020
#data 0x00000023
#data 0x00000040
#data 0x00000024
#data 0x00000080
#data 0x00000027
#data 0x00000100
#data 0x00000028
#data 0x00000200
#data 0x00000029
#data 0x00000400
#data 0x0000002B
;-------------------------------------------------------------------------------
#data 0x00000800
#data 0x0000002C
#data 0x00001000
#data 0x0000002D
#data 0x00002000
#data 0x0000002F
#data 0x00004000
#data 0x00000030
#data 0x00008000
#data 0x00000031
#data 0x00010000
#data 0x00000033
#data 0x00020000
#data 0x00000034
#data 0x00040000
#data 0x00000035
#data 0x00080000
#data 0x00000037
#data 0x00100000
#data 0x00000038
#data 0x00200000
#data 0x00000000
#data 0x00000000

#align4
loc_8c1C90E0:
#data loc_8c1C4020
#data 0x4B52414D
#data 0x7864613A
#data 0x626F5F74
#data 0x0000006A

#align4
loc_8c1C90F4:
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8c1C9554:
#data loc_8c1C410C

loc_8c1C9558:
#data 0x00000000

#align4
loc_8c1C955C:
#data 0x00000000

#align4
loc_8c1C9560:
#data 0x00000000

#align4
loc_8c1C9564:
#data 0x00000000

#align4
loc_8c1C9568:
#data 0x00000000

#align4
loc_8c1C956C:
#data 0x00000000

#align4
loc_8c1C9570:
#data 0x00000000

#align4
loc_8c1C9574:
#data 0x00000000

#align4
loc_8c1C9578:
#data 0x00000000

#align4
loc_8c1C957C:
#data 0x00000000

#align4
loc_8c1C9580:
#data 0x0000000F

#align4
loc_8c1C9584:
#data 0x00000000

#align4
loc_8c1C9588:
#data 0x00010047

#align4
loc_8c1C958C:
#data 0x00000000

#align4
loc_8c1C9590:
#data 0x00000000
#data 0x00000200
#data 0x00000400
#data 0x00000600

#align4
loc_8c1C95A0:
#data 0x00000000
#data 0x00001F80
#data 0x000011C0
#data 0x00000800

#align4
loc_8c1C95B0:
#data 0x00000000

#align4
loc_8c1C95B4:
#data loc_8c1C48E4

loc_8c1C95B8:
#data 0x00000000

#align4
loc_8c1C95BC:
#data bank17.loc_8c17D122

loc_8c1C95C0:
#data bank17.loc_8c17D1C0

loc_8c1C95C4:
#data bank17.loc_8c17D2E0

loc_8c1C95C8:
#data bank17.loc_8c17D3A2

loc_8c1C95CC:
#data bank17.loc_8c17D446

loc_8c1C95D0:
#data bank17.loc_8c17D500

loc_8c1C95D4:
#data bank17.loc_8c17D6E0

loc_8c1C95D8:
#data bank17.loc_8c17D88E

loc_8c1C95DC:
#data bank17.loc_8c17D9CE

loc_8c1C95E0:
#data bank17.loc_8c17DB20

loc_8c1C95E4:
#data bank17.loc_8c17DB98

loc_8c1C95E8:
#data bank17.loc_8c17DC5A

loc_8c1C95EC:
#data bank17.loc_8c17DCFE

loc_8c1C95F0:
#data bank17.loc_8c17DDC0

loc_8c1C95F4:
#data bank17.loc_8c17DF00

loc_8c1C95F8:
#data bank17.loc_8c17E060

loc_8c1C95FC:
#data bank17.loc_8c17E112

loc_8c1C9600:
#data bank17.loc_8c17E1DA

loc_8c1C9604:
#data 0x00000000

#align4
loc_8c1C9608:
#data 0x00000000

#align4
loc_8c1C960C:
#data 0x00000000

#align4
loc_8c1C9610:
#data 0x00000000

#align4
loc_8c1C9614:
#data 0x00000000

#align4
loc_8c1C9618:
#data 0x00000000

#align4
loc_8c1C961C:
#data 0x00000000
#data 0x00000000

#align4
loc_8c1C9624:
#data 0x00000000

#align4
loc_8c1C9628:
#data 0x00000000

#align4
loc_8c1C962C:
#data 0x00000000

#align4
loc_8c1C9630:
#data 0x00000000

#align4
loc_8c1C9634:
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8c1C9640:
#data bank18.loc_8c1825E2

loc_8c1C9644:
#data bank18.loc_8c182600

loc_8c1C9648:
#data bank18.loc_8c18260A

loc_8c1C964C:
#data bank18.loc_8c182660

loc_8c1C9650:
#data bank18.loc_8c182712

loc_8c1C9654:
#data bank18.loc_8c1826D2

loc_8c1C9658:
#data bank18.loc_8c182614

loc_8c1C965C:
#data bank18.loc_8c182792

loc_8c1C9660:
#data bank18.loc_8c182604

loc_8c1C9664:
#data 0x00000000

#align4
loc_8c1C9668:
#data loc_8c1C5560

loc_8c1C966C:
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8c1C9678:
#data bank18.loc_8c1828B6

loc_8c1C967C:
#data bank18.loc_8c1828D4

loc_8c1C9680:
#data bank18.loc_8c1828DE

loc_8c1C9684:
#data bank18.loc_8c182940

loc_8c1C9688:
#data bank18.loc_8c182ACC

loc_8c1C968C:
#data bank18.loc_8c182A12

loc_8c1C9690:
#data bank18.loc_8c1828EC

loc_8c1C9694:
#data bank18.loc_8c182B88

loc_8c1C9698:
#data bank18.loc_8c1828D8

loc_8c1C969C:
#data 0x00000000

#align4
loc_8c1C96A0:
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8c1C96AC:
#data bank18.loc_8c182CE2

loc_8c1C96B0:
#data bank18.loc_8c182D00

loc_8c1C96B4:
#data bank18.loc_8c182D0A

loc_8c1C96B8:
#data bank18.loc_8c182DBE

loc_8c1C96BC:
#data bank18.loc_8c182F52

loc_8c1C96C0:
#data bank18.loc_8c182E8A

loc_8c1C96C4:
#data bank18.loc_8c182D78

loc_8c1C96C8:
#data bank18.loc_8c18302E

loc_8c1C96CC:
#data bank18.loc_8c182D04

loc_8c1C96D0:
#data 0x00000000

#align4
loc_8c1C96D4:
#data loc_8c1C5908

loc_8c1C96D8:
#data 0x00000000

#align4
loc_8c1C96DC:
#data 0x00000001
#data 0x00000002
#data 0x00000004
#data 0x00000008

#align4
loc_8c1C96EC:
#data 0x0000000D
#data 0x0000001E
#data 0x0000003C
#data 0x00000071

#align4
loc_8c1C96FC:
#data 0x00000000

#align4
loc_8c1C9700:
#data 0x00000011
#data 0x00000000
#data 0x0000011D

#align4
loc_8c1C970C:
#data 0x00000002
#data 0x00000000
#data 0x00000000

#align4
loc_8c1C9718:
#data 0x00000002

#align4
loc_8c1C971C:
#data 0x00000002
#data 0x00000000

#align4
loc_8c1C9724:
#data 0x00000002
#data 0x00000000

#align4
loc_8c1C972C:
#data 0x00000002
#data 0x00000002
#data 0x00000000

#align4
loc_8c1C9738:
#data 0x00000100

#align4
loc_8c1C973C:
#data 0x00000100

#align4
loc_8c1C9740:
#data 0x00000002

#align4
loc_8c1C9744:
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x0000001E
#data 0x00000000
#data 0x0000023A
#data 0x00000003
#data 0x00000000
#data 0x00000000
#data 0x00000003
#data 0x00000002
#data 0x00000000
#data 0x00000002
#data 0x00000000
#data 0x00000003
#data 0x00000003
#data 0x00000000
#data 0x00000200
#data 0x00000200
#data 0x00000002
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000039
#data 0x00000000
#data 0x00000474
#data 0x00000002
#data 0x00000000
#data 0x00000000
#data 0x00000005
#data 0x00000002
#data 0x00000000
#data 0x00000002
#data 0x00000000
#data 0x00000005
#data 0x00000005
#data 0x00000000
#data 0x00000400
#data 0x00000400
#data 0x00000002
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x0000007C
#data 0x00000000
#data 0x000008F7
#data 0x00000009
#data 0x00000000
#data 0x00000000
#data 0x00000009
#data 0x00000002
#data 0x00000000
#data 0x00000009
#data 0x00000000
#data 0x00000009
#data 0x00000009
#data 0x00000000
#data 0x00000800
#data 0x00000800
#data 0x00000009
#data 0x00000000
#data 0x00000000

#align4
loc_8c1C983C:
#data 0x00000000

#align4
loc_8c1C9840:
#data loc_8c1C59C4
#data 0x00000000

#align4
loc_8c1C9848:
#data 0x00000000

#align4
loc_8c1C984C:
#data 0x00000001

#align4
loc_8c1C9850:
#data 0x00000000
#data 0x00000000
#data 0x00000014
#data 0x0000001D
#data 0x00000000
#data 0x0000001E
#data 0x00000013
#data 0x00000019
#data 0x00000018
#data 0x00000017
#data 0x00000016
#data 0x00000011
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000012
#data 0x00000000
#data 0x00000015

#align4
loc_8c1C98A8:
#data 0x00000000
#data 0x0000001A
#data 0x0000001C
#data 0x0000001B

#align4
loc_8c1C98B8:
#data 0x00000000

#align4
loc_8c1C98BC:
#data 0x00000000

#align4
loc_8c1C98C0:
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8c1C98CC:
#data bank19.loc_8c195238

loc_8c1C98D0:
#data bank19.loc_8c19525C

loc_8c1C98D4:
#data bank19.loc_8c195316

loc_8c1C98D8:
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8c1C98E4:
#data bank19.loc_8c1954E8

loc_8c1C98E8:
#data bank19.loc_8c1955C8

loc_8c1C98EC:
#data bank19.loc_8c19566A

loc_8c1C98F0:
#data bank19.loc_8c19568C

loc_8c1C98F4:
#data bank19.loc_8c1956BA

loc_8c1C98F8:
#data bank19.loc_8c1956D4

loc_8c1C98FC:
#data bank19.loc_8c195704

loc_8c1C9900:
#data bank19.loc_8c195756

loc_8c1C9904:
#data bank19.loc_8c19576C

loc_8c1C9908:
#data bank19.loc_8c19578A

loc_8c1C990C:
#data bank19.loc_8c1957A0

loc_8c1C9910:
#data bank19.loc_8c195830

loc_8c1C9914:
#data bank19.loc_8c1958A4

loc_8c1C9918:
#data bank19.loc_8c1958F2

loc_8c1C991C:
#data bank19.loc_8c195B9C

loc_8c1C9920:
#data bank19.loc_8c195C18

loc_8c1C9924:
#data bank19.loc_8c195D92

loc_8c1C9928:
#data bank19.loc_8c195DFC

loc_8c1C992C:
#data bank19.loc_8c195E42

loc_8c1C9930:
#data bank19.loc_8c195E54

loc_8c1C9934:
#data 0xA05F6900

#align4
loc_8c1C9938:
#data 0x00000000

#align4
loc_8c1C993C:
#data 0x00000000

#align4
loc_8c1C9940:
#data loc_8c1C602C

loc_8c1C9944:
#data 0x00000000

#align4
loc_8c1C9948:
#data 0x00010000
#data 0x00000002
#data 0x00000003
#data 0x00000000

#align4
loc_8c1C9958:
#data 0x00000000
#data 0x00000000

#align4
loc_8c1C9960:
#data 0x070605FF
#data 0x0D0C0B08
#data 0x1716150E
#data 0x19 0x1D
#data 0x20
loc_8C1C996F:
#data 0xFF
#data 0x2523211E
#data 0x2E2C2A28
#data 0x36343230
#data 0xFF38

loc_8c1C997E:
#data 0x18FF
#data 0x1F1E1C1A
#data 0x27242322
#data 0x2C2B2928
#data 0x31302F2D
#data 0x37353433
#data 0x0000FF38

#align4
loc_8c1C9998:
#data 0x6E756F43
#data 0x20797274
#data 0x6C696146
#data 0x206F5420
#data 0x74696E49
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x020900B5
#data 0x00270000
#data 0x02EE0021
#data 0x00000384
#data 0x00140037
#data 0x00140037
#data 0x00140037
#data 0x00140037
#data 0x006400FA
#data 0x017C01C2
#data 0x006400FA
#data 0x017C01C2
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8c1C99F8:
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000050
#data 0x0000012C
#data 0x000A302B
#data 0x000F0043
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x001901F4
#data 0x0000012C
#data 0x004B0004
#data 0x0200188F
#data 0x00000000

#align4
loc_8c1C9A50:
#data 0xFF040406
#data 0x3C0A1F07
#data 0xFF5F5F0B
#data 0x000000FF
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0xFF
loc_8C1C9A79:
#data 0x00

loc_8c1C9A7A:
#data 0x0000

#align4
loc_8c1C9A7C:
#data 0x000005BE
#data 0x00000C30
#data 0x00000C44
#data 0x00000C58
#data 0x00000C6C
#data 0x00000C80
#data 0x00000C94
#data 0x000013EC
#data 0x00001400
#data 0x00001414
#data 0x00001428
#data 0x000017D4
#data 0x00001BBC
#data 0x00001BD0
#data 0x00001BE4
#data 0x00001BF8
#data 0x00000000

#align4
loc_8c1C9AC0:
#data 0x00000000

#align4
loc_8c1C9AC4:
#data 0x00000000

#align4
loc_8c1C9AC8:
#data 0x00000000

loc_8c1C9ACC:
#data 0x00
loc_8C1C9ACD:
#data 0x00

loc_8c1C9ACE:
#data 0x0000

#align4
loc_8c1C9AD0:
#data 0x00000000

#align4
loc_8c1C9AD4:
#data 0x00000000

#align4
loc_8c1C9AD8:
#data 0x20296328
#data 0x6B636F52
#data 0x6C6C6577
#data 0x2D33323A
#data 0x2D6C754A
#data 0x38393931
#data 0x35384C3A
#data 0x3A413037
#data 0x3A4C5443
#data 0x39323734
#data 0x0020

loc_8c1C9B02:
#data 0x4729
#data 0x00060007

#align4
loc_8c1C9B08:
#data 0x00000000
#data 0x00000000
#data 0x00
loc_8C1C9B11:
#data 0x00
#data 0x0000
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8c1C9B20:
#data 0x00000001
#data 0x00800000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00400000

#align4
loc_8c1C9B38:
#data 0x00400000
#data 0x00400000
#data 0x00000000

#align4
loc_8c1C9B44:
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8c1C9B54:
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8c1C9B64:
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8c1C9B78:
#data 0x86848284
#data 0x8E848A84
#data 0x96849284
#data 0x9E849A84
#data 0xA684A284
#data 0xAE84AA84
#data 0xB684B284
#data 0xBE84BA84
#data 0xC384C184
#data 0xC784C584
#data 0xCB84C984
#data 0xCF84CD84
#data 0xD384D184
#data 0xD784D584
#data 0xDB84D984
#data 0xDF84DD84
#data 0xE204E104
#data 0xE404E304
#data 0xE604E504
#data 0xE804E704
#data 0xEA04E904
#data 0xEC04EB04
#data 0xEE04ED04
#data 0xF004EF04
#data 0xF144F0C4
#data 0xF244F1C4
#data 0xF344F2C4
#data 0xF444F3C4
#data 0xF544F4C4
#data 0xF644F5C4
#data 0xF744F6C4
#data 0xF844F7C4
#data 0xF8E4F8A4
#data 0xF964F924
#data 0xF9E4F9A4
#data 0xFA64FA24
#data 0xFAE4FAA4
#data 0xFB64FB24
#data 0xFBE4FBA4
#data 0xFC64FC24
#data 0xFCB4FC94
#data 0xFCF4FCD4
#data 0xFD34FD14
#data 0xFD74FD54
#data 0xFDB4FD94
#data 0xFDF4FDD4
#data 0xFE34FE14
#data 0xFE74FE54
#data 0xFE9CFE8C
#data 0xFEBCFEAC
#data 0xFEDCFECC
#data 0xFEFCFEEC
#data 0xFF1CFF0C
#data 0xFF3CFF2C
#data 0xFF5CFF4C
#data 0xFF7CFF6C
#data 0xFF90FF88
#data 0xFFA0FF98
#data 0xFFB0FFA8
#data 0xFFC0FFB8
#data 0xFFD0FFC8
#data 0xFFE0FFD8
#data 0xFFF0FFE8
#data 0x0000FFF8
#data 0x797C7D7C
#data 0x717C757C
#data 0x697C6D7C
#data 0x617C657C
#data 0x597C5D7C
#data 0x517C557C
#data 0x497C4D7C
#data 0x417C457C
#data 0x3C7C3E7C
#data 0x387C3A7C
#data 0x347C367C
#data 0x307C327C
#data 0x2C7C2E7C
#data 0x287C2A7C
#data 0x247C267C
#data 0x207C227C
#data 0x1DFC1EFC
#data 0x1BFC1CFC
#data 0x19FC1AFC
#data 0x17FC18FC
#data 0x15FC16FC
#data 0x13FC14FC
#data 0x11FC12FC
#data 0x0FFC10FC
#data 0x0EBC0F3C
#data 0x0DBC0E3C
#data 0x0CBC0D3C
#data 0x0BBC0C3C
#data 0x0ABC0B3C
#data 0x09BC0A3C
#data 0x093C

loc_8c1C9CF2:
#data 0x08BC
#data 0x07BC083C
#data 0x071C075C
#data 0x069C06DC
#data 0x061C065C
#data 0x059C05DC
#data 0x051C055C
#data 0x049C04DC
#data 0x041C045C
#data 0x039C03DC
#data 0x034C036C
#data 0x030C032C
#data 0x02CC02EC
#data 0x028C02AC
#data 0x024C026C
#data 0x020C022C
#data 0x01CC01EC
#data 0x018C01AC
#data 0x01640174
#data 0x01440154
#data 0x01240134
#data 0x01040114
#data 0x00E400F4
#data 0x00C400D4
#data 0x00A400B4
#data 0x00840094
#data 0x00700078
#data 0x00600068
#data 0x00500058
#data 0x00400048
#data 0x00300038
#data 0x00200028
#data 0x00100018
#data 0x00000008

#align4
loc_8c1C9D78:
#data loc_8c1C68C4

loc_8c1C9D7C:
#data loc_8c1C68CC

loc_8c1C9D80:
#data loc_8c1C68D4

loc_8c1C9D84:
#data 0x00000000

#align4
loc_8c1C9D88:
#data 0x8C34AFB3
#data 0x00000000

#align4
loc_8c1C9D90:
#data loc_8c1C8488
#data 0x00000000

loc_8c1C9D98:
#data 0x0000