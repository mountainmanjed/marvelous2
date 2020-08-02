loc_8c1900E0:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8c190168,pc),r14 ; r14 set to 0xFFD8000C
mov.l @r14,r10
mov.w @(loc_8c190160,pc),r11 ; r11 set to 0x10C
mov 0x01,r3 ; r3 set to 0x01
mov.w @(loc_8c190162,pc),r12 ; r12 set to 0x2000
mov.w @(loc_8c190164,pc),r13 ; r13 set to 0x3D09
mov.l @(loc_8c19016C,pc),r9 ; r9 set to 0x8C18C32A
mov.l r3,@r15
mov.l @r14,r3 ; r3 ??
mov r10,r2
sub r3,r2
cmp/hs r13,r2
bt/s loc_8c190126
mov 0x00,r8 ; r8 set to 0x00

loc_8c19010E:
jsr @r9
mov r11,r4 ; r4 set to 0x10C
mov r0,r4 ; r4 ??? bc r0 is ???
tst r12,r4
bf loc_8c19011C
bra loc_8c190126
mov.l r8,@r15

#align4
loc_8c19011C:
#data 0x62A363E2
#data 0x32D23238
#data 0x8BF3

loc_8c190126:
#data 0x62F2
#data 0x8B0E2228
#data 0x62A363E2
#data 0x32D23238
#data 0x8909

loc_8c190136:
#data 0x490B
#data 0x640364B3
#data 0x8B0424C8
#data 0x62A363E2
#data 0x32D23238
#data 0x8BF5

loc_8c19014A:
#data 0xE000
#data 0x4F267F04
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

loc_8c190160:
#data 0x010C

loc_8c190162:
#data 0x2000

loc_8c190164:
#data 0x3D09
#data 0x0000

#align4
loc_8c190168:
#data 0xFFD8000C

#align4
loc_8c19016C:
#data bank18.loc_8c18C32A
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c190180:
mov 0x01,r3 ; r3 set to 0x01
rts
mov.l r3,@(0x04,r4)
;-------------------------------------------------------------------------------

loc_8c190186:
mov.w @(loc_8c190200,pc),r0 ; r0 set to 0xB8
mov 0x00,r2 ; r2 set to 0x00
mov.l @(loc_8c190208,pc),r3 ; r3 set to 0x8C190A00
mov.l @(0x08,r4),r4
mov.l r3,@(0x08,r4)
mov.l r2,@(r0,r4)
add 0x0C,r0 ; r0 set to 0xC4
mov.l @(loc_8c190210,pc),r2 ; r2 set to 0x8C18D000
mov.l @(loc_8c19020C,pc),r3 ; r3 set to 0x8C190180
jmp @r2
mov.l r3,@(r0,r4)

loc_8c19019C:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8c190218,pc),r3 ; r3 set to 0x8C34343C
mov.l @(loc_8c190214,pc),r14 ; r14 set to 0x8C18C320
mov.l @r3,r5
jsr @r14
mov 0x68,r4 ; r4 set to 0x68
mov.l @(loc_8c19021C,pc),r2 ; r2 set to 0x8C343440
mov.l @r2,r5
jsr @r14
mov 0x6C,r4 ; r4 set to 0x6C
mov.l @(loc_8c190220,pc),r3 ; r3 set to 0x8C343448
mov.l @r3,r5
jsr @r14
mov 0x5C,r4 ; r4 set to 0x5C
mov.l @(loc_8c190224,pc),r2 ; r2 set to 0x8C34344C
mov.l @r2,r5
jsr @r14
mov 0x4C,r4 ; r4 set to 0x4C
mov.w @(loc_8c190202,pc),r4 ; r4 set to 0x118
mov.l @(loc_8c190228,pc),r3 ; r3 set to 0x8C343484
jsr @r14
mov.l @r3,r5
mov.w @(loc_8c190204,pc),r4 ; r4 set to 0xF4
mov.l @(loc_8c19022C,pc),r2 ; r2 set to 0x8C343488
jsr @r14
mov.l @r2,r5
mov.l @(loc_8c190230,pc),r3 ; r3 set to 0x8C343454
mov.l @r3,r5
jsr @r14
mov 0x48,r4 ; r4 set to 0x48
mov.l @(loc_8c190234,pc),r2 ; r2 set to 0x8C343450
mov 0xFE,r3 ; r3 set to 0xFFFFFFFE
mov.l @r2,r5
and r3,r5
jsr @r14
mov 0x44,r4 ; r4 set to 0x44
mov.l @(loc_8c190238,pc),r3 ; r3 set to 0x8C34348C
mov.l @r3,r0
mov.w @(loc_8c190206,pc),r4 ; r4 set to 0xE8
or 0x08,r0
jsr @r14
mov r0,r5
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x00090009
#data 0x00090009

loc_8c190200:
#data 0x00B8

loc_8c190202:
#data 0x0118

loc_8c190204:
#data 0x00F4

loc_8c190206:
#data 0x00E8

#align4
loc_8c190208:
#data loc_8c190A00

loc_8c19020C:
#data loc_8c190180

loc_8c190210:
#data bank18.loc_8c18D000

loc_8c190214:
#data bank18.loc_8c18C320

loc_8c190218:
#data 0x8C34343C

#align4
loc_8c19021C:
#data 0x8C343440

#align4
loc_8c190220:
#data 0x8C343448

#align4
loc_8c190224:
#data 0x8C34344C

#align4
loc_8c190228:
#data 0x8C343484

#align4
loc_8c19022C:
#data 0x8C343488

#align4
loc_8c190230:
#data 0x8C343454

#align4
loc_8c190234:
#data 0x8C343450

#align4
loc_8c190238:
#data 0x8C34348C
#data 0x00090009

#align4
loc_8c190240:
#data 0xE0582FE6
#data 0x64F32FD6
#data 0x034E7408
#data 0x024EE054
#data 0x22599546
#data 0x23594228
#data 0xD222232B
#data 0xE0602232
#data 0xE05C014E
#data 0x2159034E
#data 0x43282359
#data 0xD31E213B
#data 0xE0482312
#data 0xE04C024E
#data 0xE61F014E
#data 0x2169E50F
#data 0x41084108
#data 0xE0502259
#data 0x014E221B
#data 0x41182159
#data 0x221B4100
#data 0x2122D115
#data 0x6342D215
#data 0xD3152232
#data 0x23125141
#data 0x951C5E42
#data 0x2E596742
#data 0x4E28D012
#data 0x4E085D41
#data 0x61022759
#data 0x8F214115
#data 0xD10E4E08
#data 0x3D286212
#data 0x2D59D30D
#data 0x4D084D18
#data 0x27EB27DB
#data 0x2372A01D
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x03FF07FF
#data 0x8C34343C
#data 0x8C343440
#data 0x8C343444
#data 0x8C3434B0
#data 0x8C3434B4
#data 0x8C3434AC
#data 0x8C343448

#align4
loc_8c190300:
#data 0xD1302D59
#data 0x4D084D18
#data 0x27EB27DB
#data 0x2172

loc_8c19030E:
#data 0x5246
#data 0x622C5345
#data 0x4218D12C
#data 0x232B633C
#data 0x52432132
#data 0x5047E501
#data 0x22595344
#data 0x633D2059
#data 0x40284228
#data 0xD226232B
#data 0x230B4008
#data 0xE0442232
#data 0x004E9340
#data 0x203972C4
#data 0x504B2202
#data 0x514CE707
#data 0x40082059
#data 0x21794000
#data 0x504D210B
#data 0x4018600C
#data 0x504E210B
#data 0x4028600C
#data 0xD01A210B
#data 0x514A2012
#data 0x504FE216
#data 0x21595348
#data 0x2359C903
#data 0x40084100
#data 0x230B231B
#data 0x004EE040
#data 0xE0702709
#data 0x4708014C
#data 0x611C4708
#data 0x237B4118
#data 0x231BE068
#data 0xE064014E
#data 0x014E2619
#data 0x21594628
#data 0x236B412C
#data 0xE06C231B
#data 0xE217014E
#data 0x412C2159
#data 0xD107231B
#data 0x6DF62132
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x000001FF
#data 0x8C343448
#data 0x8C343484
#data 0x8C343488
#data 0x8C343454
#data 0x8C343450
#data 0x00090009
#data 0x00090009


loc_8c1903E0:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
mov.w @(loc_8c1904A0,pc),r0 ; r0 set to 0xFF34
add r0,r15
mov.l @(loc_8c1904A4,pc),r3 ; r3 set to 0x8C1C5B0C
mov r15,r2
add 0x40,r2
mov r15,r6
mov.l @r3,r1
mov r15,r9
mov.l @(0x04,r3),r0 ; r0 ??
add 0x2C,r9
mov.l r1,@r2
add 0x40,r6
mov.l r0,@(0x04,r2)
mov.l @(0x08,r3),r1
mov.l @(0x0C,r3),r0
mov.l r1,@(0x08,r2)
mov.l r0,@(0x0C,r2)
mov.l @(0x10,r3),r1
mov.l @(0x14,r3),r0
mov.l r1,@(0x10,r2)
mov r15,r1
mov.l r0,@(0x14,r2)
add 0x2C,r1
mov.l @(loc_8c1904A8,pc),r2 ; r2 set to 0x8C1C5B24
mov.l @r2,r0
mov.l @(0x04,r2),r3 ; r3 ??
mov.l r0,@r1
mov.l r3,@(0x04,r1)
mov.l @(0x08,r2),r0
mov.l @(0x0C,r2),r3
mov.l r0,@(0x08,r1)
mov.l r3,@(0x0C,r1)
mov.l @(0x10,r2),r0
mov.l r0,@(0x10,r1)
mov.l @(loc_8c1904AC,pc),r1 ; r1 set to 0x8C1C5B38
mov r15,r0
add 0x18,r0
mov.l @r1,r3
mov.l @(0x04,r1),r2 ; r2 ??
mov.l r3,@r0
mov.l r2,@(0x04,r0)
mov.l @(0x08,r1),r3
mov.l @(0x0C,r1),r2
mov.l r3,@(0x08,r0)
mov.l r2,@(0x0C,r0)
mov.l @(0x10,r1),r3
mov.l r3,@(0x10,r0)
mov r4,r0
shll2 r0
mov.l @(loc_8c1904B0,pc),r3 ; r3 set to 0x8C343430
mov.l @(r0,r6),r12
mov 0x01,r6 ; r6 set to 0x01
mov.l @r3,r0
and r6,r0
cmp/eq 0x01,r0
bt/s loc_8c190472
mov 0x00,r13 ; r13 set to 0x00
mov.l @(loc_8c1904B0,pc),r2 ; r2 set to 0x8C343430
mov.l @r2,r0
tst 0x2C,r0
bt loc_8c190472
tst r6,r6
bt loc_8c190472
bra loc_8c190474
mov.l r6,@(0x08,r15)

loc_8c190472:
mov.l r13,@(0x08,r15)

loc_8c190474:
mov.l @(loc_8c1904B4,pc),r3 ; r3 set to 0x8C3434A0, r3 set to 0x8C3434A0
mov.l @r3,r7
mov.l @(loc_8c1904B8,pc),r1 ; r1 set to 0x8C3434A4, r1 set to 0x8C3434A4
mov.l @r1,r2
tst r5,r5
mov.l r2,@(0x04,r15)
bt loc_8c1904C0
mov.l @(loc_8c1904B0,pc),r2 ; r2 set to 0x8C343430, r2 set to 0x8C343430
mov.l @r2,r0
tst 0x20,r0
bf loc_8c1904C0
mov 0x02,r1 ; r1 set to 0x02, r1 set to 0x02
bra loc_8c1904C2
mov.l r1,@(0x10,r15)
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c1904A0:
#data 0xFF34
#data 0x0000

#align4
loc_8c1904A4:
#data bank1c.loc_8c1c5B0C

loc_8c1904A8:
#data bank1c.loc_8c1c5B24

loc_8c1904AC:
#data bank1c.loc_8c1c5B38

loc_8c1904B0:
#data 0x8C343430

#align4
loc_8c1904B4:
#data 0x8C3434A0

#align4
loc_8c1904B8:
#data 0x8C3434A4
#data 0x00090009


loc_8c1904C0:
mov.l r6,@(0x10,r15)

loc_8c1904C2:
mov r15,r14
mov 0x40,r0 ; r0 set to 0x40, r0 set to 0x40
add 0x58,r14
mov.l @(loc_8c190560,pc),r3 ; r3 set to 0x8C343430, r3 set to 0x8C343430
mov.l r6,@(0x20,r14)
mov.l r13,@(0x38,r14)
mov.l r13,@(0x34,r14)
mov.l r13,@(r0,r14)
mov 0x70,r0 ; r0 set to 0x70, r0 set to 0x70
mov.l r13,@(r0,r14)
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
mov.l r13,@(r0,r14)
mov 0x64,r0 ; r0 set to 0x64, r0 set to 0x64
mov.l r13,@(r0,r14)
mov.l @r3,r0 ; r0 ??, r0 ??
and r6,r0
cmp/eq 0x01,r0
bf loc_8c1904EE
tst r6,r6
bt loc_8c1904FA
bra loc_8c1904F2
nop

loc_8c1904EE:
tst r13,r13
bt loc_8c1904FA

loc_8c1904F2:
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6C
mov.l r6,@(r0,r14)
bra loc_8c190506
mov r6,r8

loc_8c1904FA:
mov 0x6C,r0 ; r0 set to 0x6C
mov.l r13,@(r0,r14)
mov.l @(0x08,r15),r0 ; r0 ??? bc r15 is ???
cmp/eq 0x01,r0
bf loc_8c19050A
mov 0x02,r8 ; r8 set to 0x02

loc_8c190506:
bra loc_8c19050E
mov.l r13,@(0x14,r15)

loc_8c19050A:
mov.l r6,@(0x14,r15)
mov r6,r8

loc_8c19050E:
mov r12,r0
cmp/eq 0x10,r0
bt loc_8c190520
cmp/eq 0x18,r0
bt loc_8c19054C
cmp/eq 0x20,r0
bt loc_8c190580
bra loc_8c19058A
nop

loc_8c190520:
mov r4,r0
cmp/eq 0x03,r0
bf loc_8c19052E
mov 0x03,r2 ; r2 set to 0x03
mov.l r2,@(0x30,r14)
bra loc_8c190588
mov.l r13,@(0x3C,r14)

loc_8c19052E:
tst r4,r4
bf loc_8c190538
mov.l r6,@(0x30,r14)
bra loc_8c190588
mov.l r6,@(0x3C,r14)

loc_8c190538:
mov r4,r0
cmp/eq 0x01,r0
bf loc_8c190544
mov.l r13,@(0x30,r14)
bra loc_8c190548
mov.l r13,@(0x3C,r14)

loc_8c190544:
mov.l r6,@(0x30,r14)
mov.l r6,@(0x3C,r14)

loc_8c190548:
bra loc_8c19058A
mov.l r13,@(0x2C,r14)

loc_8c19054C:
mov 0x04,r3 ; r3 set to 0x04
mov 0x02,r2 ; r2 set to 0x02
mov.l r3,@(0x30,r14)
bra loc_8c190588
mov.l r2,@(0x3C,r14)
#data 0x0009
#data 0x00090009
#data 0x00090009

#align4
loc_8c190560:
#data 0x8C343430
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c190580:
#data 0xE206E303
#data 0x1E3F1E2C

loc_8c190588:
#data 0x1EDB


loc_8c19058A:
mov.l @(loc_8c1906A0,pc),r3 ; r3 set to 0x8C343430
mov.l @r3,r0
and r6,r0
cmp/eq 0x01,r0
bf/s loc_8c1905A6
mov 0x20,r4 ; r4 set to 0x20
tst r6,r6
bt loc_8c1905A6
mov.l @(loc_8c1906A0,pc),r3 ; r3 set to 0x8C343430
mov.l @r3,r2
tst r4,r2
bf loc_8c1905A6
bra loc_8c1905A8
mov.l r6,@(0x28,r14)

loc_8c1905A6:
#data 0x1EDA

#align4
loc_8c1905A8:
#data 0x52F207C7
#data 0x031A1E29
#data 0x43111ED7
#data 0x2F328D01
#data 0x733F

loc_8c1905BA:
#data 0xE2FA
#data 0xD239432C
#data 0x0E36E044
#data 0x420B61F2
#data 0xE2006043
#data 0x2E0270FF
#data 0x53F1EB08
#data 0x332E3237
#data 0x73FF4321
#data 0x50F21F33
#data 0x88015AF1
#data 0x7AFF8F26
#data 0x6122D22D
#data 0x89132148
#data 0x1E3153F3
#data 0x61F2D32B
#data 0x6043430B
#data 0x7001D32A
#data 0x1E02E100
#data 0xD2272312
#data 0x730461C3
#data 0x60B3420B
#data 0x001A0077
#data 0x2302A061

#align4
loc_8c190618:
#data 0xE100D323
#data 0x23121EA1
#data 0x61C3D220
#data 0x420B7304
#data 0x007760B3
#data 0x2302001A
#data 0x1E62A053

#align4
loc_8c190634:
#data 0x6122D21A
#data 0x890D2168
#data 0xE100D31A
#data 0x23121EA1
#data 0x61C3D217
#data 0x420B7304
#data 0x007760B3
#data 0x2302001A
#data 0x1E62A041

#align4
loc_8c190658:
#data 0x6102D011
#data 0x892F2148
#data 0xD11153F3
#data 0xE3001E31
#data 0xD30E2132
#data 0xD20F61C3
#data 0x60B3430B
#data 0x001A0077
#data 0xD30A2202
#data 0x430B61F2
#data 0x70016043
#data 0x1E02A029
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c1906A0:
#data 0x8C343430

#align4
loc_8c1906A4:
#data bank12.loc_8c129128
#data 0x8C3434C4
#data 0x8C3434C8
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c1906C0:
#data 0xE300D120
#data 0x21321EA1
#data 0x61C3D320
#data 0x430BD21E
#data 0x007760B3
#data 0x2202001A
#data 0x1E62

loc_8c1906DA:
#data 0x2558
#data 0xA07F8B01
#data 0x0009

loc_8c1906E2:
#data 0xD11B
#data 0x53E11E63
#data 0x1E3173FE
#data 0x22686212
#data 0xE5028D03
#data 0xA0F69024
#data 0x1E04

loc_8c1906FA:
#data 0xD215
#data 0x6022E3EC
#data 0x88642039
#data 0x8868892C
#data 0x8860892A
#data 0x88408933
#data 0x88448931
#data 0x8824892F
#data 0x8828893C
#data 0x8820893A
#data 0x88008941
#data 0x8804893F
#data 0xA0DC893D
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00000401
#data 0x8C3434C4
#data 0x8C3434C8

#align4
loc_8c19074C:
#data bank12.loc_8c129128
#data 0x8C343430
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c190760:
#data 0x6012D118
#data 0x029E4008
#data 0xD2171E24
#data 0x420B61F2
#data 0xA0156043
#data 0x0009

loc_8c190776:
#data 0xD115
#data 0x2122E200
#data 0x6323D014
#data 0xD3102022
#data 0x711861F3
#data 0x42086232
#data 0x6022321C
#data 0x1E04A011

#align4
loc_8c190794:
#data 0xD20C9114
#data 0x61F21E14
#data 0x6043420B

#align4
loc_8c1907A0:
#data 0xA0A07001
#data 0x1E02

loc_8c1907A6:
#data 0xD109
#data 0x2122E200
#data 0x6323D008
#data 0x92062022
#data 0x1E24

loc_8c1907B6:
#data 0xA096
#data 0x00091E62
#data 0x00090009
#data 0x08000401
#data 0x8C3434F0

#align4
loc_8c1907C8:
#data bank12.loc_8c129128
#data 0x8C3434C4
#data 0x8C3434C8
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c1907E0:
#data 0x1ED3D320
#data 0x72FF52E1
#data 0x60321E21
#data 0x88012069
#data 0xE5428F04
#data 0x89432DD8
#data 0x0009A00B

#align4
loc_8c1907FC:
#data 0x6022D219
#data 0x8820C92C
#data 0x26688B03
#data 0xA002893A
#data 0x0009

loc_8c19080E:
#data 0x2DD8
#data 0x8936

loc_8c190812:
#data 0xD314
#data 0x20596032
#data 0x8B078842
#data 0x60F3D212
#data 0x61227018
#data 0x031E4108
#data 0x1E34A002

#align4
loc_8c19082C:
#data 0x1E249218

#align4
loc_8c190830:
#data 0xE200D30E
#data 0xD10E2322
#data 0x1E622122
#data 0x70FF50E1
#data 0x1E01A050
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00000800
#data 0x8C343430
#data 0x8C3434F0
#data 0x8C3434C4
#data 0x8C3434C8
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c190880:
#data 0x6322D210
#data 0x89022368
#data 0xA02B901A
#data 0x1E04

loc_8c19088E:
#data 0xD30D
#data 0x20596032
#data 0x8B058842
#data 0x6012D10B
#data 0x029E4008
#data 0x1E24A020

#align4
loc_8c1908A4:
#data 0x6102D007
#data 0x89192148
#data 0xA0189209
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x04010400
#data 0x8C343430
#data 0x8C3434F0
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c1908E0:
#data 0x924E

loc_8c1908E2:
#data 0x1E24

loc_8c1908E4:
#data 0x6563

loc_8c1908E6:
#data 0x53E1
#data 0x6173E240
#data 0x1E3173FF
#data 0x1E259347
#data 0x1E36D223
#data 0x6043420B
#data 0xD3220057
#data 0x2302001A
#data 0x52F451F1
#data 0xD31E0187
#data 0x0127011A
#data 0x430B011A
#data 0x51F56043
#data 0x301CD31C
#data 0x60332302
#data 0x6202E40F
#data 0x8F023246
#data 0xD318E209
#data 0x2342

loc_8c19092E:
#data 0xE04C
#data 0xE0480E26
#data 0x0E36E306
#data 0x881060C3
#data 0xE0508B02
#data 0x0EB6A003

#align4
loc_8c190944:
#data 0xE20BE050
#data 0x0E26

loc_8c19094A:
#data 0xE058
#data 0x0ED6D310
#data 0x77FFE054
#data 0xE0600E76
#data 0x60320ED6
#data 0x88012069
#data 0x2DD88B03
#data 0xA01D8922
#data 0x0009

loc_8c19096A:
#data 0xD209
#data 0xC92C6022
#data 0x8B158820
#data 0x89192668
#data 0x0009A014
#data 0x00090009
#data 0x00800400

#align4
loc_8c190984:
#data bank12.loc_8c129128
#data 0x8C3434CC
#data 0x8C3434D0
#data 0x8C343430
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c1909A0:
#data 0x89032DD8

#align4
loc_8c1909A4:
#data 0xE05C53F3
#data 0x0E36A002

#align4
loc_8c1909AC:
#data 0x0EA6E05C

#align4
loc_8c1909B0:
#data 0xE074D30C
#data 0x3F0862E3
#data 0x61F3430B
#data 0x0009BC40
#data 0x21D2D109
#data 0x23D2D309
#data 0x60D3910A
#data 0x4F263F1C
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x00000140

#align4
loc_8c1909E4:
#data bank12.loc_8c129560
#data 0x8C3434D4
#data 0x8C3434D8
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009


loc_8c190A00:
mov.l r14,@-r15
mov 0x00,r5 ; r5 set to 0x00
sts.l pr,@-r15
mov.l @(loc_8c190BA8,pc),r3 ; r3 set to 0x8C3434A8
mov.l r5,@r3 ; r3 ??
mov.l @(loc_8c190BAC,pc),r2 ; r2 set to 0x8C3434AC
mov.l r5,@r2 ; r2 ??
mov.w @(loc_8c190BA0,pc),r0 ; r0 set to 0xF8
add 0x10,r3
mov.l @(r0,r4),r1
mov.l r1,@r3
add 0xF8,r0 ; r0 set to 0xF0
mov.l @(loc_8c190BB0,pc),r1 ; r1 set to 0x8C3434BC
mov.l @(r0,r4),r2
mov.l r2,@r1 ; r1 ??? bc r2 is ???
add 0x04,r0 ; r0 set to 0xF4
mov.l @(loc_8c190BB4,pc),r2 ; r2 set to 0x8C3434C0
mov.l @(r0,r4),r3
mov.l r3,@r2 ; r2 ??? bc r3 is ???
mov 0x54,r0 ; r0 set to 0x54
mov.l @(0x2C,r4),r2
mov.l @(r0,r4),r1
mov 0x50,r0 ; r0 set to 0x50
mov.l @(r0,r4),r3
mov 0x5C,r0 ; r0 set to 0x5C
shll r1
or r3,r1
mov.l @(r0,r4),r3
mov 0x68,r0 ; r0 set to 0x68
shll2 r3
or r3,r1
mov.l @(r0,r4),r3
mov 0x60,r0 ; r0 set to 0x60
shll2 r3
shll r3
or r3,r1
mov.l @(0x30,r4),r3
shll2 r3
shll2 r3
or r3,r1
mov.l @(r0,r4),r3
shll2 r3
shll2 r3
shll r3
or r3,r1
mov.l @(0x28,r4),r3
shll2 r3
shll2 r3
shll2 r3
or r3,r1
mov 0x07,r3 ; r3 set to 0x07
shad r3, r2
mov 0x48,r0 ; r0 set to 0x48
or r2,r1
mov.l @(r0,r4),r2
mov 0x4C,r0 ; r0 set to 0x4C
shll8 r2
or r2,r1
mov.l @(r0,r4),r2
shll8 r2
shll r2
or r2,r1
mov.l @(loc_8c190BB8,pc),r2 ; r2 set to 0x8C343468
mov.l r1,@r2 ; r2 ??? bc r1 is ???
mov.l @r4,r1
mov.w @(loc_8c190BA2,pc),r5 ; r5 set to 0x7FF
mov.l @(0x04,r4),r3 ; r3 ??? bc r4 is ???
and r5,r1
shll16 r1
and r5,r3
or r1,r3
mov.l @(loc_8c190BBC,pc),r1 ; r1 set to 0x8C343474
mov.l r3,@r1 ; r1 ??? bc r3 is ???
mov.l @(0x04,r4),r2
mov.l @(loc_8c190BC0,pc),r3 ; r3 set to 0x8C34346C
and r5,r2
shll16 r2
mov.l r2,@r3 ; r3 ??? bc r2 is ???
mov.l @(0x14,r4),r2
mov.l @(0x08,r4),r0 ; r0 ??? bc r4 is ???
and r5,r2
shll16 r2
and r5,r0
or r2,r0
mov.l @(loc_8c190BC4,pc),r2 ; r2 set to 0x8C343478
mov.l r0,@r2 ; r2 ??? bc r0 is ???
mov.l @(0x0C,r4),r0
mov.l @(0x10,r4),r1
and r5,r0
shll16 r0
and r5,r1
or r0,r1
mov.l @(loc_8c190BC8,pc),r0 ; r0 set to 0x8C34347C
mov.l r1,@r0 ; r0 ??? bc r1 is ???
mov 0x74,r0 ; r0 set to 0x74
mov.l @(r0,r4),r3
mov 0x78,r0 ; r0 set to 0x78
mov.l @(r0,r4),r1
and r5,r3
and r5,r1
shll16 r1
or r1,r3
mov.l @(loc_8c190BCC,pc),r1 ; r1 set to 0x8C343470
mov.l r3,@r1 ; r1 ??? bc r3 is ???
mov.l @(0x1C,r4),r2
mov 0x0F,r6 ; r6 set to 0x0F
mov.l @(0x18,r4),r3
mov 0x7F,r5 ; r5 set to 0x7F
and r6,r2
mov.l @(0x20,r4),r1
shll8 r2
and r5,r3
or r2,r3
mov.w @(loc_8c190BA4,pc),r2 ; r2 set to 0x3FF
mov 0x16,r0 ; r0 set to 0x16
and r2,r1
shll8 r1
shll2 r1
shll2 r1
or r1,r3
mov.l @(0x24,r4),r1
and r5,r1
shad r0, r1
or r1,r3
mov.l @(loc_8c190BD0,pc),r1 ; r1 set to 0x8C343480
mov.l r3,@r1 ; r1 ??? bc r3 is ???
mov.l @(0x34,r4),r0 ; r0 ??? bc r4 is ???
and 0x01,r0
mov r0,r3
mov.l @(0x38,r4),r0
and 0x01,r0
shll r0
or r0,r3
mov.l @(0x3C,r4),r0
and 0x01,r0
shll2 r0
or r0,r3
mov 0x40,r0 ; r0 set to 0x40
mov.l @(r0,r4),r0 ; r0 ??? bc r4 is ???
and 0x01,r0
shll2 r0
shll r0
or r0,r3
mov 0x44,r0 ; r0 set to 0x44
mov.l @(r0,r4),r2 ; r2 ??? bc r4 is ???
mov 0x6C,r0 ; r0 set to 0x6C
mov.l @(r0,r4),r0 ; r0 ??? bc r4 is ???
and r2,r6 ; r6 ??? bc r2 is ???
shll2 r6
and 0x01,r0
shll2 r6
shll8 r0
or r6,r3
or r0,r3
mov 0x70,r0 ; r0 set to 0x70
mov.l @(r0,r4),r0 ; r0 ??? bc r4 is ???
and 0x3F,r0
shll16 r0
mov.l @(loc_8c190BD4,pc),r2 ; r2 set to 0x8C34348C
or r0,r3
mov.l r3,@r2 ; r2 ??? bc r3 is ???
mov.l @(loc_8c190BA8,pc),r0 ; r0 set to 0x8C3434A8
mov.l @r0,r3
add 0x38,r1
mov.l @r1,r0 ; r0 ??? bc r1 is ???
add r3,r0
mov.l @(loc_8c190BD8,pc),r3 ; r3 set to 0x8C343490
mov.l r0,@r3 ; r3 ??? bc r0 is ???
mov.l @(loc_8c190BAC,pc),r0 ; r0 set to 0x8C3434AC
mov.l @r0,r2
add 0x2C,r3
mov.l @r3,r0 ; r0 ??? bc r3 is ???
add 0xF4,r1
add r2,r0
mov.l @r1,r2
mov.l @(0x04,r3),r1
add r2,r1
mov.l @(loc_8c190BDC,pc),r2 ; r2 set to 0x8C343494
shll16 r1
or r1,r0
mov.l r0,@r2 ; r2 ??? bc r0 is ???
mov.l @(loc_8c190BE4,pc),r1 ; r1 set to 0x8C18C32A
mov.l @(loc_8c190BE0,pc),r14 ; r14 set to 0x8C18C320
jsr @r1
mov 0x44,r4 ; r4 set to 0x44
mov.l @(loc_8c190BE8,pc),r5 ; r5 set to 0x800000
and r0,r5 ; r5 ??? bc r0 is ???
jsr @r14
mov 0x44,r4 ; r4 set to 0x44
mov 0x00,r5 ; r5 set to 0x00
jsr @r14
mov 0x5C,r4 ; r4 set to 0x5C
mov.l @(loc_8c190BCC,pc),r3 ; r3 set to 0x8C343470
bra loc_8c190C00
mov.l @r3,r5
#data 0x0009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c190BA0:
#data 0x00F8

loc_8c190BA2:
#data 0x07FF

loc_8c190BA4:
#data 0x03FF
#data 0x0000

#align4
loc_8c190BA8:
#data 0x8C3434A8

#align4
loc_8c190BAC:
#data 0x8C3434AC

#align4
loc_8c190BB0:
#data 0x8C3434BC

#align4
loc_8c190BB4:
#data 0x8C3434C0

#align4
loc_8c190BB8:
#data 0x8C343468

#align4
loc_8c190BBC:
#data 0x8C343474

#align4
loc_8c190BC0:
#data 0x8C34346C

#align4
loc_8c190BC4:
#data 0x8C343478

#align4
loc_8c190BC8:
#data 0x8C34347C

#align4
loc_8c190BCC:
#data 0x8C343470

#align4
loc_8c190BD0:
#data 0x8C343480

#align4
loc_8c190BD4:
#data 0x8C34348C

#align4
loc_8c190BD8:
#data 0x8C343490

#align4
loc_8c190BDC:
#data 0x8C343494

#align4
loc_8c190BE0:
#data bank18.loc_8c18C320

loc_8c190BE4:
#data bank18.loc_8c18C32A

loc_8c190BE8:
#data 0x00800000
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009


loc_8c190C00:
mov.w @(loc_8c190C80,pc),r4 ; r4 set to 0xCC
jsr @r14
nop
mov.w @(loc_8c190C82,pc),r4 ; r4 set to 0xD0
mov.l @(loc_8c190C98,pc),r2 ; r2 set to 0x8C343468
jsr @r14
mov.l @r2,r5
mov.w @(loc_8c190C84,pc),r4 ; r4 set to 0xD4
mov.l @(loc_8c190C9C,pc),r3 ; r3 set to 0x8C343474
jsr @r14
mov.l @r3,r5
mov.w @(loc_8c190C86,pc),r4 ; r4 set to 0xD8
mov.l @(loc_8c190CA0,pc),r2 ; r2 set to 0x8C343478
jsr @r14
mov.l @r2,r5
mov.w @(loc_8c190C88,pc),r4 ; r4 set to 0xDC
mov.l @(loc_8c190CA4,pc),r3 ; r3 set to 0x8C34347C
jsr @r14
mov.l @r3,r5
mov.w @(loc_8c190C8A,pc),r4 ; r4 set to 0xE0
mov.l @(loc_8c190CA8,pc),r2 ; r2 set to 0x8C343480
jsr @r14
mov.l @r2,r5
mov.w @(loc_8c190C8C,pc),r4 ; r4 set to 0xEC
mov.l @(loc_8c190CAC,pc),r3 ; r3 set to 0x8C343490
jsr @r14
mov.l @r3,r5
mov.w @(loc_8c190C8E,pc),r4 ; r4 set to 0xF0
mov.l @(loc_8c190CB0,pc),r2 ; r2 set to 0x8C343494
jsr @r14
mov.l @r2,r5
mov.l @(loc_8c190CB4,pc),r3 ; r3 set to 0x8C34348C
mov.l @r3,r0
mov.w @(loc_8c190C90,pc),r4 ; r4 set to 0xE8
or 0x08,r0
jsr @r14
mov r0,r5
mov.w @(loc_8c190C92,pc),r4 ; r4 set to 0xC8
mov.l @(loc_8c190CB8,pc),r2 ; r2 set to 0x8C34346C
jsr @r14
mov.l @r2,r5
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c190C58:
mov 0x20,r3 ; r3 set to 0x20
tst r4,r3
mov 0x42,r5 ; r5 set to 0x42
bt/s loc_8c190CC0
and r4,r5 ; r5 ??? bc r4 is ???
mov r5,r0
cmp/eq 0x42,r0
bf loc_8c190C70
mov.l @(loc_8c190CBC,pc),r3 ; r3 set to 0x8C3434A4
mov.w @(loc_8c190C94,pc),r2 ; r2 set to 0x200
bra loc_8c190CD4
mov.l r2,@r3

loc_8c190C70:
mov.l @(loc_8c190CBC,pc),r1 ; r1 set to 0x8C3434A4
mov.w @(loc_8c190C96,pc),r0 ; r0 set to 0x1E0
bra loc_8c190CD4
mov.l r0,@r1
#data 0x00090009
#data 0x00090009

loc_8c190C80:
#data 0x00CC

loc_8c190C82:
#data 0x00D0

loc_8c190C84:
#data 0x00D4

loc_8c190C86:
#data 0x00D8

loc_8c190C88:
#data 0x00DC

loc_8c190C8A:
#data 0x00E0

loc_8c190C8C:
#data 0x00EC

loc_8c190C8E:
#data 0x00F0

loc_8c190C90:
#data 0x00E8

loc_8c190C92:
#data 0x00C8

loc_8c190C94:
#data 0x0200

loc_8c190C96:
#data 0x01E0

#align4
loc_8c190C98:
#data 0x8C343468

#align4
loc_8c190C9C:
#data 0x8C343474

#align4
loc_8c190CA0:
#data 0x8C343478

#align4
loc_8c190CA4:
#data 0x8C34347C

#align4
loc_8c190CA8:
#data 0x8C343480

#align4
loc_8c190CAC:
#data 0x8C343490

#align4
loc_8c190CB0:
#data 0x8C343494

#align4
loc_8c190CB4:
#data 0x8C34348C

#align4
loc_8c190CB8:
#data 0x8C34346C

#align4
loc_8c190CBC:
#data 0x8C3434A4


loc_8c190CC0:
mov r5,r0
cmp/eq 0x42,r0
bf loc_8c190CCE
mov.l @(loc_8c190D08,pc),r2 ; r2 set to 0x8C3434A4
mov.w @(loc_8c190D00,pc),r3 ; r3 set to 0x100
bra loc_8c190CD4
mov.l r3,@r2

loc_8c190CCE:
mov.l @(loc_8c190D08,pc),r1 ; r1 set to 0x8C3434A4
mov.w @(loc_8c190D02,pc),r0 ; r0 set to 0xF0
mov.l r0,@r1 ; r1 ??

loc_8c190CD4:
mov 0x10,r3 ; r3 set to 0x10, r3 set to 0x10
tst r3,r4
bt loc_8c190CE2
mov.l @(loc_8c190D0C,pc),r2 ; r2 set to 0x8C3434A0, r2 set to 0x8C3434A0
mov.w @(loc_8c190D04,pc),r1 ; r1 set to 0x280, r1 set to 0x280
bra loc_8c190CE8
mov.l r1,@r2

loc_8c190CE2:
mov.l @(loc_8c190D0C,pc),r0 ; r0 set to 0x8C3434A0
mov.w @(loc_8c190D06,pc),r2 ; r2 set to 0x140
mov.l r2,@r0 ; r0 ??

loc_8c190CE8:
rts
nop
;-------------------------------------------------------------------------------

loc_8c190CEC:
sts.l pr,@-r15
mov.l @(loc_8c190D10,pc),r3 ; r3 set to 0x8C343434
mov.l r4,@r3 ; r3 ??? bc r4 is ???
bsr loc_8c1903E0
mov 0x00,r5 ; r5 set to 0x00
bsr loc_8c19019C
nop
lds.l @r15+,pr
rts
mov 0x00,r0
;-------------------------------------------------------------------------------

loc_8c190D00:
#data 0x0100

loc_8c190D02:
#data 0x00F0

loc_8c190D04:
#data 0x0280

loc_8c190D06:
#data 0x0140

#align4
loc_8c190D08:
#data 0x8C3434A4

#align4
loc_8c190D0C:
#data 0x8C3434A0

#align4
loc_8c190D10:
#data 0x8C343434
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c190D20:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov 0x00,r12 ; r12 set to 0x00
mov.l r11,@-r15
sts.l pr,@-r15
mov.w @(loc_8c190DC2,pc),r13 ; r13 set to 0x200
mov.l @(loc_8c190DC8,pc),r11 ; r11 set to 0x8C18C320
mov.w @(loc_8c190DC0,pc),r14 ; r14 set to 0x80

loc_8c190D32:
add 0xFF,r14 ; r14 set to 0x7F
mov.l @(loc_8c190DCC,pc),r0 ; r0 set to 0x8C3435E0, r0 set to 0x8C3435E0
mov r14,r3 ; r3 set to 0x7F
shll2 r3 ; r3 set to 0x1FC
mov.l r12,@(r0,r3)  ; r3 ??
mov r14,r4 ; r4 set to 0x7F
shll2 r4 ; r4 set to 0x1FC
mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00
jsr @r11
add r13,r4 ; r4 set to 0x3FC
tst r14,r14
bf loc_8c190D32
lds.l @r15+,pr
mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00
mov.l @r15+,r11 ; r11 ??? bc r15 is ???
mov.l @r15+,r12 ; r12 ??? bc r15 is ???
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c190D58:
sts.l pr,@-r15
mov.l @(loc_8c190DD0,pc),r3 ; r3 set to 0x8C129728
mov.l @(loc_8c190DCC,pc),r4 ; r4 set to 0x8C3435E0
mov.w @(loc_8c190DC4,pc),r6 ; r6 set to 0x210
jsr @r3
mov 0x00,r5 ; r5 set to 0x00
bsr loc_8c190D20
nop
lds.l @r15+,pr
rts
mov 0x78,r0
;-------------------------------------------------------------------------------

loc_8c190D6E:
#data 0x2FE6
#data 0x2FC62FD6
#data 0x4F222FB6
#data 0x6032D316
#data 0x890FC804
#data 0x6132E2FB
#data 0x23122129
#data 0xEE009C1B
#data 0x6DC3DB0E

#align4
loc_8c190D90:
#data 0x05EED00E
#data 0x64D34B0B
#data 0x3EC27E04
#data 0x7D048FF8

#align4
loc_8c190DA0:
#data 0xE0784F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00096EF6
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c190DC0:
#data 0x0080

loc_8c190DC2:
#data 0x0200

loc_8c190DC4:
#data 0x0210
#data 0x0000

#align4
loc_8c190DC8:
#data bank18.loc_8c18C320

loc_8c190DCC:
#data 0x8C3435E0

#align4
loc_8c190DD0:
#data bank12.loc_8c129728
#data 0x8C3437E0
#data 0x00090009
#data 0x00090009

#align4
loc_8c190DE0:
#data 0x4F222FE6
#data 0x6032D320
#data 0x8901C804
#data 0x0009BFBF

#align4
loc_8c190DF0:
#data 0xDE1ED31D
#data 0xD21C6332
#data 0xC8016022
#data 0xE3FE8907
#data 0x21396122
#data 0x942B2212
#data 0x4E0BD019
#data 0x6502

loc_8c190E0E:
#data 0xD316
#data 0xC8026032
#data 0xE2FD8907
#data 0x21296132
#data 0x94202312
#data 0x4E0BD014
#data 0x6502

loc_8c190E26:
#data 0x4F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x4F22D012
#data 0x8B07C81F
#data 0xD610D211
#data 0x420B9714
#data 0x4F26E500
#data 0xE000000B
;-------------------------------------------------------------------------------
#data 0xE500D20C
#data 0x970BD30C
#data 0x432B6623
#data 0x4F264F26
#data 0x0009000B
;-------------------------------------------------------------------------------
#data 0x00090009
#data 0x00090009
#data 0x00B800B0
#data 0x00000200
#data 0x8C3437E0

#align4
loc_8c190E6C:
#data bank18.loc_8c18C320
#data 0x8C3437E8
#data 0x8C3437EC
#data 0x8C3435E0

#align4
loc_8c190E7C:
#data bank1a.loc_8c1a78E0
#data 0x24485442
#data 0xE0008D03
#data 0x1456E500
#data 0x000B1455
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c190E92:
#data 0x5442
#data 0x8D032448
#data 0xE500E000
#data 0x14551456

#align4
loc_8c190EA0:
#data 0x0009000B
;-------------------------------------------------------------------------------

loc_8c190EA4:
sts.l pr,@-r15
mov.l @(loc_8c190F28,pc),r3 ; r3 set to 0x8C1A751E
mov.l @(loc_8c190F24,pc),r4 ; r4 set to 0x8C348DD0
mov.l @(loc_8c190F20,pc),r5 ; r5 set to 0x8C348DE8
jsr @r3
nop
mov.l @(loc_8c190F30,pc),r3 ; r3 set to 0x8C343424
mov.l @(loc_8c190F2C,pc),r2 ; r2 set to 0x8C190186
mov.l r2,@r3 ; r3 ??
mov.l @(loc_8c190F34,pc),r0 ; r0 set to 0x8C348DE4
mov.l @r0,r1
mov.l @(loc_8c190F24,pc),r4 ; r4 set to 0x8C348DD0
mov.l @(loc_8c190F3C,pc),r5 ; r5 set to 0x8C343418
mov.l @(loc_8c190F38,pc),r6 ; r6 set to 0x8C343430
jsr @r1
nop
mov.l @(loc_8c190F44,pc),r2 ; r2 set to 0x8C343AF4
mov.l @(loc_8c190F40,pc),r3 ; r3 set to 0x8C190E92
mov.l r3,@r2 ; r2 ??
mov.l @(loc_8c190F34,pc),r0 ; r0 set to 0x8C348DE4
mov.l @r0,r1
mov.l @(loc_8c190F24,pc),r4 ; r4 set to 0x8C348DD0
mov.l @(loc_8c190F4C,pc),r5 ; r5 set to 0x8C343AE8
mov.l @(loc_8c190F48,pc),r6 ; r6 set to 0x8C343B00
jsr @r1
nop
lds.l @r15+,pr
rts
mov 0x00,r0
;-------------------------------------------------------------------------------
#data 0x4F22
#data 0x6322D21B
#data 0x89042338
#data 0x6312D119
#data 0x430BD40D
#data 0xD3180009
#data 0xD40BE618
#data 0xE500430B
#data 0x000B4F26
#data 0x0009E000
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c190F20:
#data 0x8C348DE8

#align4
loc_8c190F24:
#data 0x8C348DD0

#align4
loc_8c190F28:
#data bank1a.loc_8c1a751E

loc_8c190F2C:
#data loc_8c190186

loc_8c190F30:
#data 0x8C343424

#align4
loc_8c190F34:
#data 0x8C348DE4

#align4
loc_8c190F38:
#data 0x8C343430

#align4
loc_8c190F3C:
#data 0x8C343418

#align4
loc_8c190F40:
#data loc_8c190E92

loc_8c190F44:
#data 0x8C343AF4

#align4
loc_8c190F48:
#data 0x8C343B00

#align4
loc_8c190F4C:
#data 0x8C343AE8
#data 0x8C348DE0

#align4
loc_8c190F54:
#data bank12.loc_8c129728
#data 0x00090009
#data 0x00090009


loc_8c190F60:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8c190FE8,pc),r14 ; r14 set to 0xFFD8000C
mov.l @r14,r10
mov.w @(loc_8c190FE0,pc),r11 ; r11 set to 0x3FF
mov 0x01,r3 ; r3 set to 0x01
mov.w @(loc_8c190FE2,pc),r12 ; r12 set to 0x10C
mov.w @(loc_8c190FE4,pc),r13 ; r13 set to 0x3D09
mov.l @(loc_8c190FEC,pc),r9 ; r9 set to 0x8C18C32A
mov.l r3,@r15
mov.l @r14,r3 ; r3 ??
mov r10,r2
sub r3,r2
cmp/hs r13,r2
bt/s loc_8c190FA6
mov 0x00,r8 ; r8 set to 0x00

loc_8c190F8E:
jsr @r9
mov r12,r4 ; r4 set to 0x10C
mov r0,r4 ; r4 ??? bc r0 is ???
tst r11,r4
bt loc_8c190F9C
bra loc_8c190FA6
mov.l r8,@r15

#align4
loc_8c190F9C:
#data 0x62A363E2
#data 0x32D23238
#data 0x8BF3

loc_8c190FA6:
#data 0x62F2
#data 0x8B0E2228
#data 0x62A363E2
#data 0x32D23238
#data 0x8909

loc_8c190FB6:
#data 0x490B
#data 0x640364C3
#data 0x890424B8
#data 0x62A363E2
#data 0x32D23238
#data 0x8BF5

loc_8c190FCA:
#data 0xE000
#data 0x4F267F04
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

loc_8c190FE0:
#data 0x03FF

loc_8c190FE2:
#data 0x010C

loc_8c190FE4:
#data 0x3D09
#data 0x0000

#align4
loc_8c190FE8:
#data 0xFFD8000C

#align4
loc_8c190FEC:
#data bank18.loc_8c18C32A
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009


loc_8c191000:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov.l @(loc_8c191084,pc),r14 ; r14 set to 0xFFFF0000
mov 0x00,r12 ; r12 set to 0x00
mov.l @(loc_8c191088,pc),r3 ; r3 set to 0x8C343B10
mov r12,r11 ; r11 set to 0x00
mov.l @(loc_8c191080,pc),r10 ; r10 set to 0xDD18957
and r4,r14 ; r14 ??? bc r4 is ???
mov.l r14,@r3 ; r3 ??? bc r14 is ???
mov.l @(loc_8c19108C,pc),r9 ; r9 set to 0x8C18C32A
jsr @r9
mov r11,r4 ; r4 set to 0x00
mov.l r0,@(0x04,r15)
jsr @r9
mov 0x04,r4 ; r4 set to 0x04
mov.l @(loc_8c191090,pc),r3 ; r3 set to 0x8C343B00
mov 0x05,r4 ; r4 set to 0x05
mov r0,r5
mov.l r4,@r3 ; r3 ??
mov.l @(0x04,r15),r1
mov.l @(loc_8c191094,pc),r2 ; r2 set to 0x17FD11DB
cmp/eq r2,r1
bt loc_8c191040
mov.l @(loc_8c191090,pc),r1 ; r1 set to 0x8C343B00
bra loc_8c1910A2
mov.l r4,@r1

loc_8c191040:
mov r5,r0
cmp/eq 0x01,r0
bf loc_8c19104C
mov.l @(loc_8c191090,pc),r0 ; r0 set to 0x8C343B00
bra loc_8c1910A2
mov.l r4,@r0

loc_8c19104C:
mov 0x11,r1 ; r1 set to 0x11
cmp/hs r1,r5
bf loc_8c1910A2
mov.l @(loc_8c191098,pc),r11 ; r11 set to 0x800408
tst r14,r14
mov.l @(loc_8c191090,pc),r3 ; r3 set to 0x8C343B00
mov 0x06,r0 ; r0 set to 0x06
bf/s loc_8c1910A0
mov.l r0,@r3 ; r3 ??
mov.l @(loc_8c19109C,pc),r10 ; r10 set to 0x15D1C951
bra loc_8c1910A2
nop
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c191080:
#data 0x0DD18957

#align4
loc_8c191084:
#data 0xFFFF0000

#align4
loc_8c191088:
#data 0x8C343B10

#align4
loc_8c19108C:
#data bank18.loc_8c18C32A

loc_8c191090:
#data 0x8C343B00

#align4
loc_8c191094:
#data 0x17FD11DB

#align4
loc_8c191098:
#data 0x00800408

#align4
loc_8c19109C:
#data 0x15D1C951

loc_8c1910A0:
#data 0xDA18


loc_8c1910A2:
mov.l @(loc_8c191108,pc),r3 ; r3 set to 0xA05F689C
mov.l @(loc_8c19110C,pc),r2 ; r2 set to 0x8C343B0C
mov.l @r3,r5
mov.l r5,@r2 ; r2 ??? bc r5 is ???
mov r5,r0
mov.w @(loc_8c191100,pc),r4 ; r4 set to 0x101
cmp/eq 0x00,r0
bt/s loc_8c1910D4
mov 0x7F,r6 ; r6 set to 0x7F
cmp/eq 0x01,r0
bt loc_8c1910DA
cmp/eq 0x02,r0
bt loc_8c1910E4
cmp/eq 0x04,r0
bt loc_8c191120
cmp/eq 0x05,r0
bt loc_8c191120
cmp/eq 0x06,r0
bt loc_8c191120
cmp/eq 0x08,r0
bt loc_8c191128
cmp/eq 0x09,r0
bt loc_8c19112E
bra loc_8c191136
nop

loc_8c1910D4:
mov.l @(loc_8c191110,pc),r1 ; r1 set to 0x8C343B04
bra loc_8c1910E0
mov.l r12,@r1

loc_8c1910DA:
#data 0xD00D
#data 0x2012E101


loc_8c1910E0:
bra loc_8c19113E
mov r12,r13

loc_8c1910E4:
bra loc_8c191130
mov 0x03,r1
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c191100:
#data 0x0101
#data 0x0000
#data 0x15D1C955

#align4
loc_8c191108:
#data 0xA05F689C

#align4
loc_8c19110C:
#data 0x8C343B0C

#align4
loc_8c191110:
#data 0x8C343B04
#data 0x00090009
#data 0x00090009
#data 0x00090009


loc_8c191120:
mov.l @(loc_8c1911B0,pc),r13 ; r13 set to 0x10101
mov.l @(loc_8c1911AC,pc),r1 ; r1 set to 0x8C343B04
bra loc_8c19113E
mov.l r6,@r1

loc_8c191128:
mov.l @(loc_8c1911AC,pc),r1 ; r1 set to 0x8C343B04
bra loc_8c19113C
mov.l r6,@r1

loc_8c19112E:
#data 0xE16F


loc_8c191130:
mov.l @(loc_8c1911AC,pc),r0 ; r0 set to 0x8C343B04
bra loc_8c19113C
mov.l r1,@r0

loc_8c191136:
#data 0xD01D
#data 0x20129132

loc_8c19113C:
#data 0x6D43


loc_8c19113E:
mov.w @(loc_8c1911A2,pc),r4 ; r4 set to 0xA8
mov.l @(loc_8c1911B4,pc),r14 ; r14 set to 0x8C18C320
jsr @r14
mov r10,r5
mov.w @(loc_8c1911A4,pc),r4 ; r4 set to 0xA0
jsr @r14
mov 0x20,r5 ; r5 set to 0x20
mov 0x00,r5 ; r5 set to 0x00
jsr @r14
mov 0x08,r4 ; r4 set to 0x08
mov.w @(loc_8c1911A6,pc),r4 ; r4 set to 0xE4
jsr @r14
mov 0x03,r5 ; r5 set to 0x03
mov 0x09,r5 ; r5 set to 0x09
jsr @r14
mov 0x48,r4 ; r4 set to 0x48
bsr loc_8c190F60
nop
jsr @r9
mov 0x44,r4 ; r4 set to 0x44
mov.l @(loc_8c1911B8,pc),r5 ; r5 set to 0x800000
and r0,r5 ; r5 ??? bc r0 is ???
jsr @r14
mov 0x44,r4 ; r4 set to 0x44
mov 0x00,r5 ; r5 set to 0x00
jsr @r14
mov 0x5C,r4 ; r4 set to 0x5C
mov.l @(loc_8c1911BC,pc),r5 ; r5 set to 0x2800000
jsr @r14
mov 0x68,r4 ; r4 set to 0x68
mov.l @(loc_8c1911C0,pc),r5 ; r5 set to 0x1E00000
jsr @r14
mov 0x6C,r4 ; r4 set to 0x6C
mov.l @(loc_8c1911C4,pc),r3 ; r3 set to 0x8C343B00
mov.l @r3,r0
cmp/eq 0x06,r0
bf loc_8c1911E0
mov.w @(loc_8c1911A8,pc),r4 ; r4 set to 0x110
mov.l @(loc_8c1911C8,pc),r5 ; r5 set to 0x93F39
jsr @r14
nop
mov.w @(loc_8c1911AA,pc),r4 ; r4 set to 0x98
bra loc_8c1911E4
mov r11,r5
#data 0x0009
#data 0x00090009
#data 0x00090009
#data 0x00EF

loc_8c1911A2:
#data 0x00A8

loc_8c1911A4:
#data 0x00A0

loc_8c1911A6:
#data 0x00E4

loc_8c1911A8:
#data 0x0110

loc_8c1911AA:
#data 0x0098

#align4
loc_8c1911AC:
#data 0x8C343B04

#align4
loc_8c1911B0:
#data 0x00010101

#align4
loc_8c1911B4:
#data bank18.loc_8c18C320

loc_8c1911B8:
#data 0x00800000

#align4
loc_8c1911BC:
#data 0x02800000

#align4
loc_8c1911C0:
#data 0x01E00000

#align4
loc_8c1911C4:
#data 0x8C343B00

#align4
loc_8c1911C8:
#data 0x00093F39
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009


loc_8c1911E0:
mov.w @(loc_8c191260,pc),r4 ; r4 set to 0x110
mov.l @(loc_8c191274,pc),r5 ; r5 set to 0x92039

loc_8c1911E4:
jsr @r14
nop
mov.w @(loc_8c191262,pc),r5 ; r5 set to 0xA0
jsr @r14
mov 0x4C,r4 ; r4 set to 0x4C
mov 0x00,r5 ; r5 set to 0x00
jsr @r14
mov 0x74,r4 ; r4 set to 0x74
mov.l @(loc_8c191278,pc),r5 ; r5 set to 0x3F800000
jsr @r14
mov 0x78,r4 ; r4 set to 0x78
mov.w @(loc_8c191264,pc),r4 ; r4 set to 0x84
jsr @r14
mov 0x00,r5 ; r5 set to 0x00
mov r13,r5 ; r5 ??? bc r13 is ???
jsr @r14
mov 0x30,r4 ; r4 set to 0x30
mov.w @(loc_8c191266,pc),r4 ; r4 set to 0xB0
mov.l @(loc_8c19127C,pc),r5 ; r5 set to 0x7F7F7F
jsr @r14
nop
mov.w @(loc_8c191268,pc),r4 ; r4 set to 0xB4
mov.l @(loc_8c19127C,pc),r5 ; r5 set to 0x7F7F7F
jsr @r14
nop
mov.w @(loc_8c19126A,pc),r4 ; r4 set to 0xC0
jsr @r14
mov 0x00,r5 ; r5 set to 0x00
mov.w @(loc_8c19126C,pc),r4 ; r4 set to 0xBC
jsr @r14
mov 0xFF,r5 ; r5 set to 0xFFFFFFFF
mov 0x07,r5 ; r5 set to 0x07
mov r5,r4 ; r4 set to 0x07
jsr @r14
add 0x79,r4 ; r4 set to 0x80
mov.w @(loc_8c19126E,pc),r4 ; r4 set to 0x88
mov.l @(loc_8c191280,pc),r5 ; r5 set to 0x3727C5A0
jsr @r14
nop
mov.w @(loc_8c191270,pc),r4 ; r4 set to 0x8C
mov.l @(loc_8c191284,pc),r5 ; r5 set to 0x1203000
jsr @r14
nop
mov 0x01,r5 ; r5 set to 0x01
jsr @r14
mov 0x74,r4 ; r4 set to 0x74
mov.l @(loc_8c191288,pc),r2 ; r2 set to 0x8C343B00
mov.l @r2,r0
cmp/eq 0x06,r0
bt loc_8c19124C

loc_8c191248:
bra loc_8c191248
nop

loc_8c19124C:
mov.l @(loc_8c191288,pc),r3 ; r3 set to 0x8C343B00
mov.l @r3,r0
cmp/eq 0x06,r0
bf/s loc_8c1912A0
mov 0x7C,r4 ; r4 set to 0x7C
mov.l @(loc_8c19128C,pc),r5 ; r5 set to 0x27DF77
bra loc_8c1912A2
nop
#data 0x00090009

loc_8c191260:
#data 0x0110

loc_8c191262:
#data 0x00A0

loc_8c191264:
#data 0x0084

loc_8c191266:
#data 0x00B0

loc_8c191268:
#data 0x00B4

loc_8c19126A:
#data 0x00C0

loc_8c19126C:
#data 0x00BC

loc_8c19126E:
#data 0x0088

loc_8c191270:
#data 0x008C
#data 0x0000

#align4
loc_8c191274:
#data 0x00092039

#align4
loc_8c191278:
#data 0x3F800000

#align4
loc_8c19127C:
#data 0x007F7F7F

#align4
loc_8c191280:
#data 0x3727C5A0

#align4
loc_8c191284:
#data 0x01203000

#align4
loc_8c191288:
#data 0x8C343B00

#align4
loc_8c19128C:
#data 0x0027DF77
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009


loc_8c1912A0:
mov.l @(loc_8c191300,pc),r5 ; r5 set to 0x7DF77

loc_8c1912A2:
jsr @r14
nop
mov r12,r13
mov.l r12,@r15
mov.l @(loc_8c19130C,pc),r14 ; r14 set to 0xA5000000
mov.l @(loc_8c191308,pc),r12 ; r12 set to 0x200000
mov.l @(loc_8c191304,pc),r11 ; r11 set to 0x8C17A6E0

loc_8c1912B0:
mov r15,r5 ; r5 ??? bc r15 is ???
mov 0x04,r6 ; r6 set to 0x04, r6 set to 0x04
jsr @r11
mov r14,r4 ; r4 set to 0xA5000000
add 0x01,r13
cmp/ge r12,r13
bf/s loc_8c1912B0
add 0x04,r14 ; r14 set to 0xA5000004
mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00
add 0x08,r15
lds.l @r15+,pr
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11 ; r11 ??? bc r15 is ???
mov.l @r15+,r12 ; r12 ??? bc r15 is ???
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x000BD30E
#data 0xD20E6032
#data 0x6022000B
;-------------------------------------------------------------------------------
#data 0x000BD30D
#data 0x00096032
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c191300:
#data 0x0007DF77

#align4
loc_8c191304:
#data bank17.loc_8c17A6E0

loc_8c191308:
#data 0x00200000

#align4
loc_8c19130C:
#data 0xA5000000
#data 0x8C343B10
#data 0x8C343B00
#data 0x8C343B0C
#data 0x00000000


loc_8c191320:
mov.l @(loc_8c1913A4,pc),r5 ; r5 set to 0x8C348DF4
cmp/eq r4,r5
movt r4
rts
mov r4,r0
;-------------------------------------------------------------------------------

loc_8c19132A:
sts.l pr,@-r15
mov.l @(loc_8c1913A8,pc),r3 ; r3 set to 0x8C1291DC
mov.l @r4,r1
jsr @r3
mov.l @(0x10,r4),r0
mov.l @(loc_8c1913AC,pc),r2 ; r2 set to 0x8C12939C
mov.l r0,@(0x04,r4)
mov.l @r4,r1
jsr @r2
mov.l @(0x10,r4),r0
lds.l @r15+,pr
rts
mov.l r0,@(0x08,r4)
;-------------------------------------------------------------------------------

loc_8c191344:
sts.l pr,@-r15
mov.l @(loc_8c1913AC,pc),r3 ; r3 set to 0x8C12939C
mov.l @r4,r1
jsr @r3
mov.l @(0x0C,r4),r0
mov.l @(loc_8c1913A8,pc),r2 ; r2 set to 0x8C1291DC
mov.l r0,@(0x04,r4)
mov.l @r4,r1
jsr @r2
mov.l @(0x0C,r4),r0
lds.l @r15+,pr
rts
mov.l r0,@(0x08,r4)
;-------------------------------------------------------------------------------

loc_8c19135E:
#data 0x931F
#data 0x5442E500
#data 0x2432D212
#data 0x961AD312
#data 0x14521451
#data 0xE2041424
#data 0x63231435
#data 0x62531423
#data 0x89093232

#align4
loc_8c191380:
#data 0x63430567
#data 0x001A7318
#data 0x2052303C
#data 0x52437501
#data 0x8BF53522

#align4
loc_8c191394:
#data 0x0009000B
;-------------------------------------------------------------------------------
#data 0x00090009
#data 0x00090009
#data 0x008C03B8

#align4
loc_8c1913A4:
#data 0x8C348DF4

#align4
loc_8c1913A8:
#data bank12.loc_8c1291DC

loc_8c1913AC:
#data bank12.loc_8c12939C

loc_8c1913B0:
#data loc_8c19132A

loc_8c1913B4:
#data loc_8c191344
#data 0x00090009
#data 0x00090009

#align4
loc_8c1913C0:
#data 0xE500D329
#data 0x1435924C
#data 0xD3285442
#data 0xD2282422
#data 0x14519647
#data 0x14341452
#data 0x1425E304
#data 0x14336233
#data 0x33226353
#data 0x8909

loc_8c1913E6:
#data 0x0567
#data 0x73186343
#data 0x303C001A
#data 0x75012052
#data 0x35225243
#data 0x8BF5

loc_8c1913FA:
#data 0x000B
#data 0xE000
;-------------------------------------------------------------------------------

loc_8c1913FE:
mov.l r14,@-r15
mov.l @(loc_8c191474,pc),r14 ; r14 set to 0x8C348DF4
mov.l @(loc_8c191478,pc),r3 ; r3 set to 0x8C1913C0
mov.l @(loc_8c19147C,pc),r2 ; r2 set to 0x8C3491B8
mov.l r14,@r4
mov.l r3,@r2 ; r2 ??
mov.l @(loc_8c191480,pc),r1 ; r1 set to 0x8C348DE4
mov.l @r1,r0
mov.l @(loc_8c191488,pc),r4 ; r4 set to 0x8C348DD0
mov r14,r6 ; r6 set to 0x8C348DF4
mov.l @(loc_8c191484,pc),r5 ; r5 set to 0x8C3491AC
jmp @r0
mov.l @r15+,r14

#align4
loc_8c191418:
#data 0xD11C9024
#data 0x6212034E
#data 0x7104132A
#data 0x6212034E
#data 0x27781329
#data 0x14561467
#data 0x1377034E
#data 0x034E8904
#data 0x5139D215
#data 0x1319212B

#align4
loc_8c191440:
#data 0xE000000B
;-------------------------------------------------------------------------------
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x008C03B8
#data 0x00000088

#align4
loc_8c191468:
#data loc_8c19135E

loc_8c19146C:
#data loc_8c19132A

loc_8c191470:
#data loc_8c191344

loc_8c191474:
#data 0x8C348DF4

#align4
loc_8c191478:
#data loc_8c1913C0

loc_8c19147C:
#data 0x8C3491B8

#align4
loc_8c191480:
#data 0x8C348DE4

#align4
loc_8c191484:
#data 0x8C3491AC

#align4
loc_8c191488:
#data 0x8C348DD0
#data 0x8C343484
#data 0x00010000
#data 0x00090009
#data 0x00090009
#data 0x00090009


loc_8c1914A0:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov 0x00,r13 ; r13 set to 0x00
mov.l @(loc_8c191544,pc),r14 ; r14 set to 0x8C348DF4
mov r5,r10
mov.l r6,@(0x04,r15)
mov.l r7,@r15
mov.l r13,@r10
bsr loc_8c191320
mov r13,r11 ; r11 set to 0x00
tst r0,r0
bt loc_8c191522
mov.l @(0x08,r14),r2
mov.l @(0x0C,r14),r3
cmp/hs r3,r2
bt loc_8c19151C
mov.w @(loc_8c191540,pc),r6 ; r6 set to 0x8C
mov r13,r4 ; r4 set to 0x00
mov.l @(loc_8c191548,pc),r9 ; r9 set to 0x8C1A7582
mov 0x01,r13 ; r13 set to 0x01
mov 0x04,r5 ; r5 set to 0x04

loc_8c1914D6:
mov.l @(0x04,r14),r2
mov r13,r3 ; r3 set to 0x01
shad r4, r3 ; r3 ??
tst r2,r3
bf loc_8c191516
mul.l r6,r4 ; r4 ??
mov.l @(0x04,r14),r3
mov r13,r0 ; r0 set to 0x01
shad r4, r0 ; r0 ??? bc r4 is ???
mov.w @(loc_8c191542,pc),r5 ; r5 set to 0x88
or r0,r3
sts macl,r12
mov.l r3,@(0x04,r14)  ; r14 ??? bc r3 is ???
mov r14,r3
mov.l @(0x08,r14),r2
add 0x18,r3
add r3,r12
add 0x01,r2
add r12,r5 ; r5 ??? bc r12 is ???
mov.l r2,@(0x08,r14)
jsr @r9
mov r14,r4
tst r0,r0
bf loc_8c19151C
mov.l @(0x04,r15),r5
mov.l @r15,r6 ; r6 ??? bc r15 is ???
mov.l @(0x24,r15),r7
bsr loc_8c191418
mov r12,r4
mov.l r12,@r10
bra loc_8c19151C
mov r13,r11

loc_8c191516:
#data 0x7401
#data 0x8BDC3453

#align4
loc_8c19151C:
#data 0x880160B3
#data 0x8902


loc_8c191522:
mov.l @(loc_8c19154C,pc),r0 ; r0 set to 0xEEEE
bra loc_8c19152A
nop

loc_8c191528:
#data 0xE000


loc_8c19152A:
add 0x08,r15
lds.l @r15+,pr
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x00090009

loc_8c191540:
#data 0x008C

loc_8c191542:
#data 0x0088

#align4
loc_8c191544:
#data 0x8C348DF4

#align4
loc_8c191548:
#data bank1a.loc_8c1a7582

loc_8c19154C:
#data 0x0000EEEE
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c191560:
#data 0x2FD62FE6
#data 0x7FF84F22
#data 0x6E53DD16
#data 0x2F521F41
#data 0x54F1BED6
#data 0x89042008
#data 0x430BD313
#data 0x200864F2
#data 0x8B02

loc_8c191582:
#data 0xD012
#data 0x0009A015

#align4
loc_8c191588:
#data 0xE40165E2
#data 0x445C53D1
#data 0x89062348
#data 0x644753D1
#data 0x1D312349
#data 0x72FF52D2
#data 0x1D22

loc_8c1915A2:
#data 0xD30B
#data 0x430B900C
#data 0xE40004EE
#data 0x1E476043
#data 0x1E48

loc_8c1915B2:
#data 0x7F08
#data 0x6DF64F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x00090009
#data 0x00000088
#data 0x8C348DF4

#align4
loc_8c1915C8:
#data bank1a.loc_8c1a7FC0
#data 0x0000EEEE

#align4
loc_8c1915D0:
#data bank1a.loc_8c1a761C
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8c1915E0:
#data 0x2FD62FE6
#data 0x7FF44F22
#data 0x430BD31E
#data 0x20080009
#data 0x90358B28
#data 0x6303D41C
#data 0x334CD21C
#data 0x1F310E4E
#data 0x730863F3
#data 0x2F321F22
#data 0xDD1953F1
#data 0x32E06232
#data 0x61F28B11
#data 0x23386312
#data 0x890D

loc_8c19161A:
#data 0x4D0B
#data 0x63F2E407
#data 0x72FF6232
#data 0x53F12322
#data 0x32E06232
#data 0x61F28B03
#data 0x23386312
#data 0x8BF1

loc_8c191636:
#data 0x63F2
#data 0x22286232
#data 0xD40D8B02
#data 0x0009A001

loc_8c191644:
#data 0xE400

loc_8c191646:
#data 0x6043
#data 0x4F267F0C
#data 0x000B6DF6
#data 0x00096EF6
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00000940

#align4
loc_8c191664:
#data bank18.loc_8c18DFA0
#data 0x8C32D278
#data 0x00100000

#align4
loc_8c191670:
#data bank18.loc_8c18F7E0
#data 0x0000EEEE
#data 0x00000000
#data 0x00000000


loc_8c191680:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
bsr loc_8c1919C2
nop
tst r0,r0
bt/s loc_8c1916AE
mov r0,r14
mov.w @(loc_8c191700,pc),r13 ; r13 set to 0x2000
mov.l @(loc_8c191704,pc),r12 ; r12 set to 0x8C1A73C0

loc_8c191696:
mov.l @(0x14,r14),r0
cmp/eq 0x03,r0
bf loc_8c1916A8
mov 0x00,r5 ; r5 set to 0x00
mov r13,r6 ; r6 set to 0x2000
jsr @r12
mov.l @(0x3C,r14),r4
bra loc_8c1916AE
nop

#align4
loc_8c1916A8:
#data 0x2EE85EE4
#data 0x8BF3


loc_8c1916AE:
mov.l @(loc_8c191708,pc),r2 ; r2 set to 0x8C32DAAC
mov.l @r2,r3
add 0x01,r3
mov.l r3,@r2 ; r2 ??? bc r3 is ???
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1916C0:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
bsr loc_8c1919C2
nop
tst r0,r0
bt/s loc_8c191726
mov r0,r14
mov.l @(loc_8c19170C,pc),r13 ; r13 set to 0x8000
mov.l @(loc_8c191704,pc),r12 ; r12 set to 0x8C1A73C0

loc_8c1916D6:
mov.l @(0x14,r14),r0
cmp/eq 0x03,r0
bf loc_8c191720
mov 0x01,r5 ; r5 set to 0x01
mov r13,r6 ; r6 set to 0x8000
jsr @r12
mov.l @(0x3C,r14),r4
bra loc_8c191726
nop
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c191700:
#data 0x2000
#data 0x0000

#align4
loc_8c191704:
#data bank1a.loc_8c1a73C0

loc_8c191708:
#data 0x8C32DAAC

#align4
loc_8c19170C:
#data 0x00008000
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c191720:
#data 0x2EE85EE4
#data 0x8BD7


loc_8c191726:
mov.w @(loc_8c191780,pc),r0 ; r0 set to 0x838
mov 0x03,r2 ; r2 set to 0x03
mov.l @(loc_8c191788,pc),r4 ; r4 set to 0x8C32D278
mov.l @(r0,r4),r3
add 0x01,r3
mov.l r3,@(r0,r4)  ; r4 ??? bc r3 is ???
mov.w @(loc_8c191782,pc),r0 ; r0 set to 0x95C
mov.l @(loc_8c19178C,pc),r3 ; r3 set to 0x8C18F7E0
mov.l r2,@(r0,r4)
mov 0x08,r4 ; r4 set to 0x08
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

#align4
loc_8c191744:
#data 0xD2124F22
#data 0x23386322
#data 0xD3118905
#data 0x0009430B
#data 0xE200D30E
#data 0x2322

loc_8c19175A:
#data 0x9514
#data 0x9611E400

#align4
loc_8c191760:
#data 0x024ED00D
#data 0x89032228
#data 0xD00C4F26
#data 0x0009000B
;-------------------------------------------------------------------------------

#align4
loc_8c191770:
#data 0x3452346C
#data 0xE0008BF4
#data 0x000B4F26
#data 0x00090009

loc_8c191780:
#data 0x0838

loc_8c191782:
#data 0x095C
#data 0x0E2001C4

#align4
loc_8c191788:
#data 0x8C32D278

#align4
loc_8c19178C:
#data bank18.loc_8c18F7E0
#data 0x8C32EA9C

#align4
loc_8c191794:
#data loc_8c1915E0
#data 0x8C32DC18
#data 0x0000EEEE

#align4
loc_8c1917A0:
#data 0x2FD62FE6
#data 0xEC102FC6
#data 0x2FA62FB6
#data 0x2F96EA08
#data 0x2F86E9FF
#data 0xDD134F22
#data 0x6322D213
#data 0x8F2F2338
#data 0xD111EE00
#data 0x2132D311
#data 0x64E3

loc_8c1917CA:
#data 0x9319
#data 0x334C33DC
#data 0x34A27404
#data 0x23E28FF9
#data 0x64E3

loc_8c1917DA:
#data 0x9312
#data 0x334C33DC
#data 0x34C27404
#data 0x23E28FF9
#data 0x0009A045
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x07E007D8
#data 0x8C32D278

#align4
loc_8c191808:
#data bank1c.loc_8c1c95B8
#data 0x8C32DBE8
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c191820:
#data 0x410BD142
#data 0x6BE30009
#data 0x68E3

loc_8c19182A:
#data 0x9379
#data 0x33BC33DC
#data 0x22286232
#data 0x95738907
#data 0x35DCD33D
#data 0x358C9071
#data 0x430B6552
#data 0x04DE

loc_8c191846:
#data 0x7B04
#data 0x8FEE3BA2
#data 0xD8397804
#data 0x6AE36BE3

#align4
loc_8c191854:
#data 0x0B96D038
#data 0x33DC9364
#data 0x623233BC
#data 0x89042228
#data 0x34DC945E
#data 0x480B34AC
#data 0x6442

loc_8c19186E:
#data 0x7B04
#data 0x8FEF3BC2
#data 0x7A04

loc_8c191876:
#data 0xD231
#data 0xD33122E2
#data 0xD13123E2
#data 0xD2312192
#data 0xD33122E2
#data 0xD13123E2
#data 0x720C21E2
#data 0x730C22E2
#data 0x710C23E2
#data 0x720C21E2
#data 0x730C22E2
#data 0x710C23E2
#data 0xD22B21E2
#data 0xD32B22E2
#data 0xD12B23E2
#data 0x953921E2
#data 0x963664E3

#align4
loc_8c1918B8:
#data 0x04E6D029
#data 0x334C6303
#data 0x620313E3
#data 0x346C324C
#data 0x8FF53452
#data 0xD22512E4
#data 0xD32522E2
#data 0xD12523E2
#data 0xD22621E2
#data 0xD524E600
#data 0xE414420B
#data 0xE600D323
#data 0x430BD523
#data 0xD224E41D
#data 0x420BD522
#data 0x4F26E400
#data 0xE401D321
#data 0x68F6D521
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x432B6DF6
#data 0x00096EF6
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x07D407D8
#data 0x01C407E0
#data 0x00000E20

#align4
loc_8c19192C:
#data bank1a.loc_8c1a8DC0

loc_8c191930:
#data loc_8c191560

loc_8c191934:
#data bank18.loc_8c18D160
#data 0x8C32EA54
#data 0x8C32EA68
#data 0x8C32EA74
#data 0x8C32EA78
#data 0x8C32DBF4
#data 0x8C32DBF8
#data 0x8C32DBFC
#data 0x8C32EA88
#data 0x8C32EA8C
#data 0x8C32EA94
#data 0x8C32DC18
#data 0x8C32EA6C
#data 0x8C32EA70
#data 0x8C32EA98

#align4
loc_8c191970:
#data loc_8c191E56

loc_8c191974:
#data bank18.loc_8c18C740

loc_8c191978:
#data loc_8c191D86

loc_8c19197C:
#data loc_8c191680

loc_8c191980:
#data bank1a.loc_8c1a77E0

loc_8c191984:
#data loc_8c1916C0
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009


loc_8c1919A0:
mov.w @(loc_8c191A00,pc),r7 ; r7 set to 0xE20
mov 0x00,r4 ; r4 set to 0x00
mov.w @(loc_8c191A02,pc),r6 ; r6 set to 0x1C4
mov r4,r5 ; r5 set to 0x00

loc_8c1919A8:
mov.l @(loc_8c191A04,pc),r0 ; r0 set to 0x8C32DC18, r0 set to 0x8C32DC18
mov.l @(r0,r4),r3
tst r3,r3
bf loc_8c1919B4
rts
add r5,r0
;-------------------------------------------------------------------------------

loc_8c1919B4:
add r6,r4
cmp/hs r7,r4
bf/s loc_8c1919A8
add r6,r5
mov 0x00,r0 ; r0 set to 0x00
rts
nop
;-------------------------------------------------------------------------------

loc_8c1919C2:
mov.w @(loc_8c191A00,pc),r7 ; r7 set to 0xE20
mov 0x00,r4 ; r4 set to 0x00
mov.w @(loc_8c191A02,pc),r6 ; r6 set to 0x1C4
mov r4,r5 ; r5 set to 0x00

loc_8c1919CA:
mov.l @(loc_8c191A04,pc),r0 ; r0 set to 0x8C32DC18, r0 set to 0x8C32DC18
mov.l @(r0,r4),r0 ; r0 ??, r0 ??? bc r4 is ???
cmp/eq 0x01,r0
bf loc_8c1919E0
mov.l @(loc_8c191A08,pc),r0 ; r0 set to 0x8C32DC24, r0 set to 0x8C32DC24
mov.l @(r0,r4),r2
tst r2,r2
bf loc_8c1919E0
mov.l @(loc_8c191A04,pc),r0 ; r0 set to 0x8C32DC18, r0 set to 0x8C32DC18
rts
add r5,r0
;-------------------------------------------------------------------------------

loc_8c1919E0:
add r6,r4
cmp/hs r7,r4
bf/s loc_8c1919CA
add r6,r5
mov 0x00,r0 ; r0 set to 0x00
rts
nop
;-------------------------------------------------------------------------------
#data 0x0009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c191A00:
#data 0x0E20

loc_8c191A02:
#data 0x01C4

#align4
loc_8c191A04:
#data 0x8C32DC18

#align4
loc_8c191A08:
#data 0x8C32DC24
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c191A20:
#data 0xE400974E
#data 0x6543964D

#align4
loc_8c191A28:
#data 0x004ED026
#data 0x8B068801
#data 0x024ED025
#data 0x8B022228
#data 0x000BD022
#data 0x305C
;-------------------------------------------------------------------------------

loc_8c191A3E:
#data 0x346C
#data 0x8FF13472
#data 0xE000356C
#data 0x0009000B
;-------------------------------------------------------------------------------
#data 0x6532D31F
#data 0x8D0C2558
#data 0xD11DE601
#data 0x2172E700
#data 0x2262D21C
#data 0x6557D31C
#data 0x20596032
#data 0x73182302
#data 0xD2192372
#data 0x6022644B
#data 0x000B404D
#data 0xD3172069
#data 0x25586532
#data 0xE6018D0C
#data 0xE700D114
#data 0xD2142172
#data 0xD3142262
#data 0x60326557
#data 0x23022059
#data 0x23727318
#data 0x644BD210
#data 0x404D6022
#data 0x2069000B
;-------------------------------------------------------------------------------
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x01C40E20
#data 0x8C32DC18
#data 0x8C32DC28
#data 0x8C32DC00
#data 0x8C32DC0C
#data 0x8C32DBF4
#data 0x8C32DC04
#data 0x8C32DC10
#data 0x8C32DBF8
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c191B00:
#data 0x6532D33F
#data 0x8D0C2558
#data 0xD13DE601
#data 0x2172E700
#data 0x2262D23C
#data 0x6557D33C
#data 0x20596032
#data 0x73182302
#data 0x2372

loc_8c191B22:
#data 0xD239
#data 0x6022644B
#data 0x000B404D
#data 0xD3372069
#data 0x2352E501
#data 0x454CD236
#data 0x215B6122
#data 0x60332212
#data 0x000BE200
#data 0xD32F2022
#data 0x2352E501
#data 0x454CD22E
#data 0x215B6122
#data 0x60332212
#data 0x000BE200
#data 0x2022
;-------------------------------------------------------------------------------

loc_8c191B5E:
#data 0xD32D
#data 0x2352E501
#data 0x454CD22C
#data 0x215B6122
#data 0x60332212
#data 0x2022E200
#data 0x6122D229
#data 0x89052118
#data 0x6032D328
#data 0x61337001
#data 0x2102C901

#align4
loc_8c191B88:
#data 0x0009000B
;-------------------------------------------------------------------------------
#data 0x6322D225
#data 0x89103432
#data 0xE501D11D
#data 0x23386312
#data 0x454C8D06
#data 0x6032D321
#data 0x2302205B
#data 0x0009A005
#data 0x6557D318
#data 0x20596032
#data 0x000B2302
#data 0xD21C0009
#data 0x34326322
#data 0xD1148910
#data 0x6312E501
#data 0x8D062338
#data 0xD318454C
#data 0x205B6032
#data 0xA0052302
#data 0xD30F0009
#data 0x60326557
#data 0x23022059
#data 0x0009000B
;-------------------------------------------------------------------------------
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x8C32DC08
#data 0x8C32DC14
#data 0x8C32DBFC
#data 0x8C32DC0C
#data 0x8C32DBF4
#data 0x8C32DC10
#data 0x8C32DBF8
#data 0x8C32EA9C
#data 0x8C32EA98
#data 0x8C32DBE8
#data 0x8C32DC00
#data 0x8C32DBEC
#data 0x8C32DC04
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x6322D227
#data 0x89103432
#data 0xE501D126
#data 0x23386312
#data 0x454C8D06
#data 0x6032D324
#data 0x2302205B
#data 0x0009A005
#data 0x6557D322
#data 0x20596032
#data 0x000B2302
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c191C6E:
#data 0xD320
#data 0x24486432
#data 0x8D0BE600
#data 0xD11DE501
#data 0xD21D2162
#data 0xD31D2252
#data 0x60326447
#data 0x23022049
#data 0x23627318

#align4
loc_8c191C90:
#data 0x6212D11A
#data 0x89092228
#data 0x6322D219
#data 0xD316453C
#data 0x25086032
#data 0xD1168B15
#data 0x6012000B
;-------------------------------------------------------------------------------

#align4
loc_8c191CAC:
#data 0x6302D015
#data 0x3232E200
#data 0x64638D0D

#align4
loc_8c191CB8:
#data 0x6353D10F
#data 0x6212434C
#data 0x8B012328
#data 0x6043000B
;-------------------------------------------------------------------------------

#align4
loc_8c191CC8:
#data 0x7401D20E
#data 0x34326322
#data 0x8BF2

loc_8c191CD2:
#data 0xE0FF
#data 0x0009000B
;-------------------------------------------------------------------------------
#data 0x00090009
#data 0x00090009
#data 0x8C32DBF0
#data 0x8C32DC14
#data 0x8C32DC08
#data 0x8C32DBFC
#data 0x8C32DC04
#data 0x8C32DC10
#data 0x8C32DBF8
#data 0x8C32EA9C
#data 0x8C32EA98
#data 0x8C32DBEC
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c191D20:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0xD22F4F22
#data 0x23386322
#data 0xD32E8923
#data 0x71FF6132
#data 0x60332312
#data 0x23386302
#data 0x904D8B1B
#data 0x03DEDD2A
#data 0xB0847301
#data 0xD2290D36
#data 0x0009420B
#data 0x00DE9045
#data 0x890A8801
#data 0xEE00DB26
#data 0xEC08

loc_8c191D62:
#data 0x943F
#data 0x34EC34DC
#data 0x64424B0B
#data 0x3EC27E04
#data 0x8BF7

loc_8c191D72:
#data 0x9036
#data 0x02DED31D
#data 0x2322

loc_8c191D7A:
#data 0x4F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c191D86:
sts.l pr,@-r15
mov.l @(loc_8c191DFC,pc),r3 ; r3 set to 0x8C32EA74
mov.l @r3,r1
tst r1,r1
bt loc_8c191E38
mov.l @(loc_8c191E00,pc),r1 ; r1 set to 0x8C32EA80
mov.l @r1,r2
add 0xFF,r2
mov.l r2,@r1 ; r1 ??? bc r2 is ???
mov r1,r0
mov.l @r0,r1
cmp/pz r1
bt loc_8c191E38
mov.l @(loc_8c191E04,pc),r1 ; r1 set to 0x8C32EA7C
mov.l @r1,r2
mov 0x08,r3 ; r3 set to 0x08
mov.l r3,@(0x14,r2)
mov r1,r2 ; r2 set to 0x8C32EA7C
mov.l @r2,r4
mov.l @(loc_8c191E08,pc),r0 ; r0 set to 0x8C32DBF0
mov.l @(0x24,r4),r4
mov.l @r0,r3 ; r3 ??
cmp/hs r3,r4
bt loc_8c191E2A
mov.l @(loc_8c191E0C,pc),r1 ; r1 set to 0x8C32DC14
mov 0x01,r5 ; r5 set to 0x01
mov.l @r1,r3
tst r3,r3
bt/s loc_8c191E20
shad r4, r5 ; r5 ??? bc r4 is ???
mov.l @(loc_8c191E10,pc),r3 ; r3 set to 0x8C32DC08
mov.l @r3,r2 ; r2 ??
or r5,r2
mov.l r2,@r3 ; r3 ??? bc r2 is ???
bra loc_8c191E2A
nop
#data 0x0009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x082C0830
#data 0x000007D8
#data 0x8C32EA68
#data 0x8C32EA90
#data 0x8C32D278

#align4
loc_8c191DF4:
#data bank1a.loc_8c1a76B4

loc_8c191DF8:
#data bank18.loc_8c18CD60

loc_8c191DFC:
#data 0x8C32EA74

#align4
loc_8c191E00:
#data 0x8C32EA80

#align4
loc_8c191E04:
#data 0x8C32EA7C

#align4
loc_8c191E08:
#data 0x8C32DBF0

#align4
loc_8c191E0C:
#data 0x8C32DC14

#align4
loc_8c191E10:
#data 0x8C32DC08
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c191E20:
#data 0x6557D330
#data 0x22596232
#data 0x2322

loc_8c191E2A:
#data 0xD12F
#data 0xE2FF6312
#data 0x1329D02E
#data 0x2032E300


loc_8c191E38:
bsr loc_8c191D20
nop
mov.l @(loc_8c191EF0,pc),r3 ; r3 set to 0x8C193180
jsr @r3
mov 0x01,r4 ; r4 set to 0x01
mov.l @(loc_8c191EF4,pc),r2 ; r2 set to 0x8C18F7E0
jsr @r2
mov 0x01,r4 ; r4 set to 0x01
mov.l @(loc_8c191EF8,pc),r3 ; r3 set to 0x8C32DBB8
mov.l @r3,r2 ; r2 ??
add 0x01,r2
mov.l r2,@r3 ; r3 ??? bc r2 is ???
lds.l @r15+,pr
rts
mov 0x00,r0
;-------------------------------------------------------------------------------

loc_8c191E56:
sts.l pr,@-r15
mov.l @(loc_8c191EFC,pc),r2 ; r2 set to 0x8C32EA68
mov.l @r2,r3
tst r3,r3
bf loc_8c191E64
bra loc_8c191F46
nop

loc_8c191E64:
mov.w @(loc_8c191EE0,pc),r0 ; r0 set to 0x938
mov.l @(loc_8c191F00,pc),r4 ; r4 set to 0x8C32D278
mov.w @(loc_8c191EE2,pc),r2 ; r2 set to 0x914
mov.l @(r0,r4),r3
add r4,r2 ; r2 set to 0x8C32DB8C
add 0x01,r3
mov.l r3,@(r0,r4)  ; r4 ??? bc r3 is ???
add 0xFF,r3
mov.l @(loc_8c191F04,pc),r0 ; r0 set to 0xFFD8000C
shll2 r3
add r2,r3
mov.l @r0,r2 ; r2 ??
mov.l @r3,r1
mov.w @(loc_8c191EE0,pc),r0 ; r0 set to 0x938
sub r2,r1
mov.l r1,@r3
mov 0x07,r3 ; r3 set to 0x07
mov.l @(r0,r4),r2
mov 0x00,r1 ; r1 set to 0x00
and r3,r2
mov.l r2,@(r0,r4)
mov.l @(loc_8c191EFC,pc),r0 ; r0 set to 0x8C32EA68
mov.l r1,@r0 ; r0 ??
mov.l @(loc_8c191F08,pc),r1 ; r1 set to 0x8C32EA6C
mov.l @r1,r2
mov 0x06,r3 ; r3 set to 0x06
mov.l r3,@(0x14,r2)
mov.l @(loc_8c191F0C,pc),r3 ; r3 set to 0x8C32EA9C
mov.l @r3,r2
tst r2,r2
bf loc_8c191F32
mov.l @(loc_8c191F08,pc),r2 ; r2 set to 0x8C32EA6C
mov.l @r2,r4
mov.l @(loc_8c191F10,pc),r0 ; r0 set to 0x8C32DBEC
mov.l @(0x20,r4),r4
mov.l @r0,r1 ; r1 ??
cmp/hs r1,r4
bt loc_8c191F2A
mov.l @(loc_8c191F14,pc),r3 ; r3 set to 0x8C32DC10
mov 0x01,r5 ; r5 set to 0x01
mov.l @r3,r1
tst r1,r1
bt/s loc_8c191F20
shad r4, r5 ; r5 ??? bc r4 is ???
mov.l @(loc_8c191F18,pc),r2 ; r2 set to 0x8C32DC04
mov.l @r2,r1
or r5,r1
mov.l r1,@r2 ; r2 ??? bc r1 is ???
bra loc_8c191F2A
nop
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c191EE0:
#data 0x0938

loc_8c191EE2:
#data 0x0914
#data 0x8C32DBFC
#data 0x8C32EA7C
#data 0x8C32EA74

#align4
loc_8c191EF0:
#data loc_8c193180

loc_8c191EF4:
#data bank18.loc_8c18F7E0

loc_8c191EF8:
#data 0x8C32DBB8

#align4
loc_8c191EFC:
#data 0x8C32EA68

#align4
loc_8c191F00:
#data 0x8C32D278

#align4
loc_8c191F04:
#data 0xFFD8000C

#align4
loc_8c191F08:
#data 0x8C32EA6C

#align4
loc_8c191F0C:
#data 0x8C32EA9C

#align4
loc_8c191F10:
#data 0x8C32DBEC

#align4
loc_8c191F14:
#data 0x8C32DC10

#align4
loc_8c191F18:
#data 0x8C32DC04
#data 0x00090009

#align4
loc_8c191F20:
#data 0x6557D231
#data 0x21596122
#data 0x2212

loc_8c191F2A:
#data 0xD230
#data 0xE1FF6322
#data 0x1318


loc_8c191F32:
mov.l @(loc_8c191FEC,pc),r2 ; r2 set to 0x8C32EA6C
mov.l @r2,r3
mov.l @(loc_8c191FF0,pc),r0 ; r0 set to 0x8C32EA70
mov.l r3,@r0 ; r0 ??? bc r3 is ???
mov.l @(loc_8c191FF4,pc),r3 ; r3 set to 0x8C193180
jsr @r3
mov 0x00,r4 ; r4 set to 0x00
mov.l @(loc_8c191FF8,pc),r2 ; r2 set to 0x8C18F7E0
jsr @r2
mov 0x00,r4 ; r4 set to 0x00

loc_8c191F46:
lds.l @r15+,pr
mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00
rts
nop
;-------------------------------------------------------------------------------

loc_8c191F4E:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xFC,r15
bsr loc_8c1919C2
mov.l r4,@r15
tst r0,r0
bt/s loc_8c192032
mov r0,r14
mov.l @(loc_8c191FFC,pc),r3 ; r3 set to 0x8C1A7844
jsr @r3
mov.l @r15,r4
mov.w @(loc_8c191FE0,pc),r2 ; r2 set to 0x8F4
mov r0,r4
mov.l @(loc_8c192000,pc),r13 ; r13 set to 0x8C32D278
shll2 r4
mov.l @(loc_8c192004,pc),r0 ; r0 set to 0xFFD8000C
add r13,r2 ; r2 set to 0x8C32DB6C
add r2,r4
mov.l @r0,r3 ; r3 ??
mov.w @(loc_8c191FE2,pc),r0 ; r0 set to 0x934
mov.w @(loc_8c191FE4,pc),r5 ; r5 set to 0x83C
mov.l @(r0,r13),r1
add r13,r5 ; r5 set to 0x8C32DAB4
sub r3,r1
mov.l @(loc_8c192008,pc),r3 ; r3 set to 0x8C1A7280
mov.l r1,@r4
jsr @r3
mov.l @(0x3C,r14),r4
mov 0xFF,r6 ; r6 set to 0xFFFFFFFF
mov 0x04,r7 ; r7 set to 0x04
mov 0x01,r13 ; r13 set to 0x01

loc_8c191F8E:
mov.l @(0x14,r14),r0 ; r0 ??? bc r14 is ???
cmp/eq 0x03,r0
bf loc_8c192020
mov.l @(loc_8c19200C,pc),r2 ; r2 set to 0x8C32DBE8
mov.l @(0x1C,r14),r4
mov.l @r2,r3 ; r3 ??
cmp/hs r3,r4
bt loc_8c191FC0
mov.l @(loc_8c192010,pc),r1 ; r1 set to 0x8C32DC0C
mov r13,r5 ; r5 set to 0x01
mov.l @r1,r3
tst r3,r3
bt/s loc_8c191FB6
shad r4, r5 ; r5 ??? bc r4 is ???
mov.l @(loc_8c192014,pc),r3 ; r3 set to 0x8C32DC00
mov.l @r3,r0
or r5,r0
mov.l r0,@r3 ; r3 ??? bc r0 is ???
bra loc_8c191FC0
nop

loc_8c191FB6:
#data 0xD318
#data 0x60326557
#data 0x23022059


loc_8c191FC0:
mov.l r6,@(0x1C,r14)
bra loc_8c192026
mov.l r7,@(0x14,r14)
#data 0x0009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c191FE0:
#data 0x08F4

loc_8c191FE2:
#data 0x0934

loc_8c191FE4:
#data 0x083C
#data 0x0000
#data 0x8C32DBF8

#align4
loc_8c191FEC:
#data 0x8C32EA6C

#align4
loc_8c191FF0:
#data 0x8C32EA70

#align4
loc_8c191FF4:
#data loc_8c193180

loc_8c191FF8:
#data bank18.loc_8c18F7E0

loc_8c191FFC:
#data bank1a.loc_8c1a7844

loc_8c192000:
#data 0x8C32D278

#align4
loc_8c192004:
#data 0xFFD8000C

#align4
loc_8c192008:
#data bank1a.loc_8c1a7280

loc_8c19200C:
#data 0x8C32DBE8

#align4
loc_8c192010:
#data 0x8C32DC0C

#align4
loc_8c192014:
#data 0x8C32DC00
#data 0x8C32DBF4
#data 0x00090009

#align4
loc_8c192020:
#data 0x2EE85EE4
#data 0x8BB3

loc_8c192026:
#data 0xD326
#data 0xE400430B
#data 0x420BD225
#data 0xE405


loc_8c192032:
mov 0x00,r0 ; r0 set to 0x00
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c19203E:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov.l @(loc_8c1920CC,pc),r3 ; r3 set to 0x8C32DBF0
mov 0x00,r11 ; r11 set to 0x00
mov.l @(loc_8c1920C4,pc),r10 ; r10 set to 0x8C18F7E0
mov.l @(loc_8c1920C8,pc),r9 ; r9 set to 0x8C32D278
mov.l r4,@(0x04,r15)
mov.l r5,@r15
mov.l @r3,r0
cmp/eq 0x04,r0
bf/s loc_8c192070
mov 0x01,r12 ; r12 set to 0x01
mov.l @(loc_8c1920D0,pc),r2 ; r2 set to 0x8C32D2A0
mov.l @r2,r1
tst r1,r1
bt loc_8c192070
mov.l @(loc_8c1920D4,pc),r1 ; r1 set to 0x8C32EA9C
bra loc_8c19207A
mov.l r12,@r1

loc_8c192070:
mov.l @(loc_8c1920D4,pc),r2 ; r2 set to 0x8C32EA9C
bra loc_8c19207A
mov.l r11,@r2

loc_8c192076:
jsr @r10
mov 0x07,r4 ; r4 set to 0x07

loc_8c19207A:
bsr loc_8c1919A0
nop
tst r0,r0
bt/s loc_8c192076
mov r0,r14
mov.l @(0x04,r15),r13
mov 0xFF,r4 ; r4 set to 0xFFFFFFFF, r4 set to 0xFFFFFFFF
mov.l @(loc_8c1920D8,pc),r2 ; r2 set to 0x8C32EA38, r2 set to 0x8C32EA38
mov.l @(0x08,r13),r13
mov.l @(0x0C,r13),r13
mov.l r4,@(0x1C,r14)
mov.l r4,@(0x20,r14)
mov.l r4,@(0x24,r14)
mov.l @r15,r3
mov.l r3,@r2 ; r2 ??? bc r3 is ???, r2 ??? bc r3 is ???
mov.l @r15,r1
tst r1,r1
bf loc_8c192130
bra loc_8c1920E4
nop
#data 0x0009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c1920C0:
#data loc_8c193180

loc_8c1920C4:
#data bank18.loc_8c18F7E0

loc_8c1920C8:
#data 0x8C32D278

#align4
loc_8c1920CC:
#data 0x8C32DBF0

#align4
loc_8c1920D0:
#data 0x8C32D2A0

#align4
loc_8c1920D4:
#data 0x8C32EA9C

#align4
loc_8c1920D8:
#data 0x8C32EA38
#data 0x00090009

#align4
loc_8c1920E0:
#data 0xE4074A0B

#align4
loc_8c1920E4:
#data 0x6422D22F
#data 0x890A2448
#data 0x21B2D12D
#data 0x23C2D32D
#data 0x6447D22D
#data 0x20496022
#data 0x72182202
#data 0x22B2

loc_8c192102:
#data 0xD12A
#data 0x641263DB
#data 0x24C9443D
#data 0x8BE72448
#data 0x23C2D325
#data 0x62C3D125
#data 0x601242DC
#data 0x2102202B
#data 0x22B26233
#data 0x1EC5903C
#data 0x009E1ED7
#data 0x8801A05B


loc_8c192130:
mov.w @(loc_8c1921A0,pc),r0 ; r0 set to 0x82C
mov.l @(r0,r9),r0 ; r0 ??? bc r9 is ???
cmp/eq 0x01,r0
bf loc_8c192144
mov.w @(loc_8c1921A2,pc),r0 ; r0 set to 0x954
mov.l @(r0,r9),r1
bra loc_8c192144
tst r1,r1

#align4
loc_8c192140:
#data 0xE4074A0B

#align4
loc_8c192144:
#data 0x6432D317
#data 0x890A2448
#data 0x21B2D115
#data 0x22C2D215
#data 0x6447D315
#data 0x20496032
#data 0x73182302
#data 0x23B2

loc_8c192162:
#data 0xD212
#data 0x642263DB
#data 0x24C9443D
#data 0x8BE72448
#data 0x23C2D30D
#data 0x62C3D10D
#data 0x601242DC
#data 0x2102202B
#data 0x22B26233
#data 0x1ED7A01E
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c1921A0:
#data 0x082C

loc_8c1921A2:
#data 0x0954
#data 0x8C32DC00
#data 0x8C32DC0C
#data 0x8C32DBF4
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c1921C0:
#data 0xE4074A0B

#align4
loc_8c1921C4:
#data 0x0009BD53
#data 0x8DF988FF
#data 0xBCC66D03
#data 0xD02C64D3
#data 0x1ED8E303
#data 0x02DE4D08
#data 0xD22A1E2F
#data 0x420B1E35
#data 0x54EF

loc_8c1921E6:
#data 0x0002
#data 0x4009934A
#data 0xC90F4009
#data 0x00022F02
#data 0xCBF02039
#data 0xBC11400E
#data 0x20080009
#data 0x64038D03
#data 0xA00114E4
#data 0x1E43

loc_8c19220A:
#data 0x1EB3

#align4
loc_8c19220C:
#data 0xD31FD120
#data 0x62121EB4
#data 0x91332239
#data 0x02021E21
#data 0x60F22EC2
#data 0xC90F2219
#data 0x40084008
#data 0x400E202B
#data 0x6122D218
#data 0x22127101
#data 0x22E2D217
#data 0x7F08E000
#data 0x69F64F26
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

loc_8c19224C:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8c192298,pc),r2 ; r2 set to 0x8C32EA38
mov.l @r2,r3
tst r3,r3
bf loc_8c1922A0
bra loc_8c1922F2
mov 0x00,r0
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x0000FF0F
#data 0x8C32EA3C

#align4
loc_8c192288:
#data bank1a.loc_8c1a7B00
#data 0x7FFFFFFF
#data 0x8C32EA94
#data 0x8C32EA64

#align4
loc_8c192298:
#data 0x8C32EA38
#data 0x00090009

#align4
loc_8c1922A0:
#data 0x6B32D318
#data 0x9E2B5242
#data 0xD2195124
#data 0xDC16DD17
#data 0x4D0B2F12
#data 0x30E06422
#data 0x8906

loc_8c1922BA:
#data 0x4C0B
#data 0xD214E407
#data 0x64224D0B
#data 0x8BF830E0

#align4
loc_8c1922C8:
#data 0x222862F2
#data 0x54BF8B08
#data 0x4F267F04
#data 0x6BF6D30F
#data 0x6DF66CF6
#data 0x6EF6432B

#align4
loc_8c1922E0:
#data 0x7F0454BF
#data 0xD30C4F26
#data 0x6CF66BF6
#data 0x432B6DF6
#data 0x6EF6


loc_8c1922F2:
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x00000101
#data 0x8C32EA64

#align4
loc_8c192308:
#data bank18.loc_8c18F7E0

loc_8c19230C:
#data bank18.loc_8c18F3C0
#data 0x8C32EA8C

#align4
loc_8c192314:
#data bank1a.loc_8c1a7B00

loc_8c192318:
#data bank1a.loc_8c1a4D20
#data 0x00090009

#align4
loc_8c192320:
#data 0x63632FE6
#data 0x6D632FD6
#data 0x4D082FC6
#data 0x3D3CDC27
#data 0x4D089046
#data 0x02CE4F22
#data 0x22286E73
#data 0x4E088D09
#data 0x30CC903F
#data 0x04EE30DC
#data 0x305C903C
#data 0xA01930DC
#data 0x06EE

loc_8c192352:
#data 0xE400
#data 0x62439736
#data 0x61433262
#data 0x375C8D07

#align4
loc_8c192360:
#data 0x027E60E3
#data 0x31627101
#data 0x8FF9342C
#data 0x7714

loc_8c19236E:
#data 0x9328
#data 0x33CC9028
#data 0x30DC305C
#data 0x06EE33EC
#data 0x364C6232
#data 0x64233248

#align4
loc_8c192384:
#data 0x30CC901F
#data 0x03EE30DC
#data 0x8B033636
#data 0x30CC9019
#data 0x0E6630DC

#align4
loc_8c192398:
#data 0x305C9014
#data 0x03EE30DC
#data 0x89053432
#data 0xE3029010
#data 0xD3090C36
#data 0xE408430B

#align4
loc_8c1923B0:
#data 0xE0004F26
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x00090009
#data 0x073007D0
#data 0x085400E4
#data 0x0000095C
#data 0x8C32D278

#align4
loc_8c1923D0:
#data bank18.loc_8c18F7E0
#data 0x00090009
#data 0x00090009
#data 0x00090009


loc_8c1923E0:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xF4,r15
mov r4,r12
mov.l @(0x08,r12),r4
mov.l @(0x18,r12),r10
mov.l @(loc_8c192424,pc),r3 ; r3 set to 0x8C32EA64
mov.l @(0x10,r4),r11
mov.l @(0x0C,r10),r10
mov.l @r3,r14
mov.w @(loc_8c192420,pc),r1 ; r1 set to 0x184
mov r11,r2
shll2 r2
add r14,r1 ; r1 ??? bc r14 is ???
mov.l r2,@r15
add r1,r2
mov.l @(loc_8c192428,pc),r1 ; r1 set to 0x8C32EA38
mov 0x00,r0 ; r0 set to 0x00
mov.l r0,@r2
mov.l @r1,r2
tst r2,r2
bf/s loc_8c192440
mov r11,r8
bra loc_8c19244A
mov 0x00,r13
#data 0x0009

loc_8c192420:
#data 0x0184
#data 0x0000

#align4
loc_8c192424:
#data 0x8C32EA64

#align4
loc_8c192428:
#data 0x8C32EA38
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c192440:
#data 0x6DA3D230
#data 0xD3306022
#data 0x2302

loc_8c19244A:
#data 0x4808
#data 0xE20563B3
#data 0x1F22383C
#data 0x4808

loc_8c192456:
#data 0x9053
#data 0x490869D3
#data 0x30EC62E3
#data 0x309C308C
#data 0x72442F06
#data 0x328C51C2
#data 0x329C60C2
#data 0x039E5113
#data 0x410850C3
#data 0x308C001E
#data 0x2212019E
#data 0x62F63318
#data 0xD2212232
#data 0x21186122
#data 0x3DA08901
#data 0x8904

loc_8c192492:
#data 0x65E3
#data 0x67D366B3
#data 0x64C3BF42

#align4
loc_8c19249C:
#data 0x30EC9030
#data 0x039E308C
#data 0x8B012338
#data 0x0009A0BA

#align4
loc_8c1924AC:
#data 0x6122D217
#data 0x8B352118
#data 0xD31660C2
#data 0xD116049E
#data 0x2439029E
#data 0x241BD015
#data 0x4229D315
#data 0x4219E100
#data 0x23222022
#data 0x04832412
#data 0xE10160C2
#data 0x029E41DC
#data 0x09267220
#data 0x30EC900E
#data 0x029E308C
#data 0x09267220
#data 0x60F29209
#data 0x320C32EC
#data 0x231B6322
#data 0xA0912232
#data 0x00090009
#data 0x018400E4
#data 0xFFD8000C
#data 0x8C32DBAC
#data 0x8C32EA38
#data 0x03FFFFFF
#data 0xE0000000
#data 0xFF00003C
#data 0xFF000038

#align4
loc_8c192520:
#data 0x89203DA0
#data 0xD32760C2
#data 0xD127049E
#data 0x2439029E
#data 0x241BD026
#data 0x4229D326
#data 0x4219E100
#data 0x23222022
#data 0x04832412
#data 0xE101903C
#data 0x30EC41DC
#data 0x029E308C
#data 0x09267220
#data 0x60F29235
#data 0x320C32EC
#data 0x231B6322
#data 0xA0132232
#data 0x0009

loc_8c192566:
#data 0x932C
#data 0x60F2E101
#data 0x33EC41DC
#data 0x60E3330C
#data 0x70446232
#data 0x221B308C
#data 0xD3152322
#data 0xE3200936
#data 0x30EC901C
#data 0x0936308C

#align4
loc_8c19258C:
#data 0xD11260C2
#data 0x7220029E
#data 0x63120926
#data 0x3B3073FF
#data 0xA0228940
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x018400E4
#data 0x03FFFFFF
#data 0xE0000000
#data 0xFF00003C
#data 0xFF000038

#align4
loc_8c1925D4:
#data bank1a.loc_8c1a8C60
#data 0x8C32EA84
#data 0x00090009

#align4
loc_8c1925E0:
#data 0x430BD328
#data 0xE407

loc_8c1925E6:
#data 0xD228
#data 0xE400420B
#data 0x8DF72008
#data 0x90451F01
#data 0x42DCE201
#data 0x2F2630EC
#data 0xD223308C
#data 0x2F36E300
#data 0x60E3079E
#data 0x55EF7044
#data 0x069E308C
#data 0x54F3420B
#data 0xD31E7F08
#data 0x54F1430B
#data 0x2202D21D

#align4
loc_8c192620:
#data 0x7D01E305
#data 0x8B003D32
#data 0xED00

loc_8c19262A:
#data 0x53F2
#data 0x233873FF
#data 0x1F328D02
#data 0x0009AF0F

#align4
loc_8c192638:
#data 0x7F0CE000
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c19264E:
sts.l pr,@-r15
mov.l @(loc_8c192698,pc),r2 ; r2 set to 0x8C32EA38
mov.l @r2,r3
tst r3,r3
bt loc_8c192666
bsr loc_8c191C6E
nop
cmp/eq 0xFF,r0
bf loc_8c192666
lds.l @r15+,pr
rts
mov 0x00,r0
;-------------------------------------------------------------------------------

loc_8c192666:
mov 0x01,r0 ; r0 set to 0x01
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------
#data 0x0009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x000000E4

#align4
loc_8c192684:
#data bank18.loc_8c18F7E0

loc_8c192688:
#data bank18.loc_8c18DA80

loc_8c19268C:
#data bank1a.loc_8c1a7AA0

loc_8c192690:
#data bank18.loc_8c18FC20
#data 0x8C32EA8C

#align4
loc_8c192698:
#data 0x8C32EA38
#data 0x00090009


loc_8c1926A0:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov.l @(loc_8c192784,pc),r3 ; r3 set to 0x8C32EA64
mov.l @r3,r14
mov.w @(loc_8c192760,pc),r0 ; r0 set to 0x954
mov 0x00,r12 ; r12 set to 0x00
mov.l @(loc_8c192788,pc),r11 ; r11 set to 0x8C32D278
mov.l @(r0,r11),r2
tst r2,r2
bt/s loc_8c1926CC
mov 0x01,r13 ; r13 set to 0x01
tst r5,r5
bt loc_8c1926CC
bra loc_8c1926CE
mov.l r13,@(0x38,r14)

loc_8c1926CC:
#data 0x1ECE

loc_8c1926CE:
#data 0x9048
#data 0x1E421E6C
#data 0x904502BE
#data 0x90440E26
#data 0x904303BE
#data 0x90420E36
#data 0x904102BE
#data 0x90400E26
#data 0x903F03BE
#data 0x903E0E36
#data 0x903D02BE
#data 0x903C0E26
#data 0x903B03BE
#data 0x903A0E36
#data 0x903902BE
#data 0x90380E26
#data 0x903703BE
#data 0x8F032448
#data 0xE0400E36
#data 0x0E7665C3

#align4
loc_8c19271C:
#data 0x6322D21B
#data 0x8D3D2558
#data 0xE0081E3A
#data 0x63221E06
#data 0x22327301
#data 0x6132D317
#data 0x6022D215
#data 0x8B013012
#data 0x20C2D013

#align4
loc_8c192740:
#data 0x6322D214
#data 0x892D2338
#data 0x6132D310
#data 0x231221D9
#data 0x0009A028
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c192760:
#data 0x0954
#data 0x0808
#data 0x081001A4
#data 0x080C01AC
#data 0x081401A8
#data 0x081801B0
#data 0x082001B4
#data 0x081C01BC
#data 0x082401B8
#data 0x000001C0

#align4
loc_8c192784:
#data 0x8C32EA64

#align4
loc_8c192788:
#data 0x8C32D278
#data 0x8C32EA88
#data 0x8C32DBF0
#data 0x8C32EA9C
#data 0x00090009
#data 0x00090009

#align4
loc_8c1927A0:
#data 0x1E06E006

#align4
loc_8c1927A4:
#data 0xD120903C
#data 0x1E3B03BE
#data 0x22286212
#data 0xE2028B02
#data 0x1E25A088

#align4
loc_8c1927B8:
#data 0x9432E048
#data 0x34BC05BE
#data 0x450875FF
#data 0x6442345C
#data 0x67B3EB05
#data 0x6643

loc_8c1927CE:
#data 0x9329
#data 0x426C62D3
#data 0x335C33EC
#data 0x22386332
#data 0x6A638900

#align4
loc_8c1927E0:
#data 0x6163D312
#data 0x430B7101
#data 0x471060B3
#data 0x66038FEF
#data 0x68B36943

#align4
loc_8c1927F4:
#data 0x6322D20E
#data 0x73FF9114
#data 0x60D34308
#data 0x331C31EC
#data 0x409C6332
#data 0x89552038
#data 0x0009A01B
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x071007F4
#data 0x00000184
#data 0x8C32EA38

#align4
loc_8c19282C:
#data bank12.loc_8c12939C
#data 0x8C32EA84
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c192840:
#data 0x420BD230
#data 0xE407

loc_8c192846:
#data 0xD330
#data 0xE400430B
#data 0x8DF72008
#data 0x62D32F02
#data 0xD32D429C
#data 0x2FC62F26
#data 0x70FF6032
#data 0x6203914E
#data 0x67934008
#data 0x4708302C
#data 0x40086233
#data 0x31EC1F73
#data 0x077E301C
#data 0x76FF6622
#data 0x616360E3
#data 0x361C4608
#data 0x7044D322
#data 0x460855EF
#data 0x50F3360C
#data 0x430B066E
#data 0x39A054F2
#data 0x7F088F09
#data 0xD51DD31E
#data 0x64F2430B
#data 0x6522D219
#data 0x430BD31C
#data 0x64F2

loc_8c1928AE:
#data 0xD31C
#data 0x64F2430B
#data 0x2202D21B

#align4
loc_8c1928B8:
#data 0x6193D31B
#data 0x430B7101
#data 0x481060B3
#data 0x69038F96

#align4
loc_8c1928C8:
#data 0xE400B45A
#data 0x7F0850E1
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00096EF6
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x000000E4

#align4
loc_8c192904:
#data bank18.loc_8c18F7E0

loc_8c192908:
#data bank18.loc_8c18DA80
#data 0x8C32EA84

#align4
loc_8c192910:
#data bank1a.loc_8c1a7AA0

loc_8c192914:
#data loc_8c191F4E

loc_8c192918:
#data bank18.loc_8c18FD60

loc_8c19291C:
#data bank1a.loc_8c1a7840

loc_8c192920:
#data bank18.loc_8c18FC20
#data 0x8C32EA8C

#align4
loc_8c192928:
#data bank12.loc_8c12939C
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009


loc_8c192940:
mov.l @(0x14,r4),r2
mov.l @(0x18,r4),r3
cmp/eq r3,r2
bf loc_8c192A04
mov.l @(0x1C,r4),r0
cmp/eq 0xFF,r0
bt/s loc_8c19297C
mov 0x01,r5 ; r5 set to 0x01
mov.l @(loc_8c192A20,pc),r3 ; r3 set to 0x8C32DBE8
mov.l @(0x1C,r4),r6
mov.l @r3,r2
cmp/hs r2,r6
bt loc_8c19297C
mov.l @(loc_8c192A24,pc),r1 ; r1 set to 0x8C32DC0C
mov r5,r7 ; r7 set to 0x01
mov.l @r1,r2
tst r2,r2
bt/s loc_8c192972
shad r6, r7 ; r7 ??? bc r6 is ???
mov.l @(loc_8c192A28,pc),r2 ; r2 set to 0x8C32DC00
mov.l @r2,r0
or r7,r0
mov.l r0,@r2 ; r2 ??? bc r0 is ???
bra loc_8c19297C
nop

loc_8c192972:
#data 0xD22E
#data 0x60226777
#data 0x22022079


loc_8c19297C:
mov.l @(0x20,r4),r0
cmp/eq 0xFF,r0
bt loc_8c1929AE
mov.l @(loc_8c192A30,pc),r3 ; r3 set to 0x8C32DBEC
mov.l @(0x20,r4),r7
mov.l @r3,r2
cmp/hs r2,r7
bt loc_8c1929AE
mov.l @(loc_8c192A34,pc),r1 ; r1 set to 0x8C32DC10
mov r5,r6
mov.l @r1,r2
tst r2,r2
bt/s loc_8c1929A4
shad r7, r6
mov.l @(loc_8c192A38,pc),r2 ; r2 set to 0x8C32DC04
mov.l @r2,r0
or r6,r0
mov.l r0,@r2 ; r2 ??? bc r0 is ???
bra loc_8c1929AE
nop

#align4
loc_8c1929A4:
#data 0x6667D225
#data 0x20696022
#data 0x2202


loc_8c1929AE:
mov.l @(0x24,r4),r0
cmp/eq 0xFF,r0
bt loc_8c1929E0
mov.l @(loc_8c192A40,pc),r3 ; r3 set to 0x8C32DBF0
mov.l @(0x24,r4),r6
mov.l @r3,r2
cmp/hs r2,r6
bt loc_8c1929E0
mov.l @(loc_8c192A44,pc),r1 ; r1 set to 0x8C32DC14
mov r5,r7
mov.l @r1,r2
tst r2,r2
bt/s loc_8c1929D6
shad r6, r7
mov.l @(loc_8c192A48,pc),r2 ; r2 set to 0x8C32DC08
mov.l @r2,r0
or r7,r0
mov.l r0,@r2 ; r2 ??? bc r0 is ???
bra loc_8c1929E0
nop

loc_8c1929D6:
#data 0xD21D
#data 0x60226777
#data 0x22022079


loc_8c1929E0:
mov 0x00,r6 ; r6 set to 0x00
mov.l r6,@r4
mov.l @(0x0C,r4),r5
tst r5,r5
bt/s loc_8c1929FA
mov.l @(0x10,r4),r4
tst r4,r4
bt loc_8c1929F6
mov.l r4,@(0x10,r5)
bra loc_8c192A00
mov.l r5,@(0x0C,r4)

loc_8c1929F6:
bra loc_8c192A00
mov.l r6,@(0x10,r5)

loc_8c1929FA:
#data 0x2448
#data 0x14638900


loc_8c192A00:
rts
mov 0x00,r0
;-------------------------------------------------------------------------------

loc_8c192A04:
mov 0x01,r0 ; r0 set to 0x01
rts
nop
;-------------------------------------------------------------------------------
#data 0x0009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c192A20:
#data 0x8C32DBE8

#align4
loc_8c192A24:
#data 0x8C32DC0C

#align4
loc_8c192A28:
#data 0x8C32DC00
#data 0x8C32DBF4

#align4
loc_8c192A30:
#data 0x8C32DBEC

#align4
loc_8c192A34:
#data 0x8C32DC10

#align4
loc_8c192A38:
#data 0x8C32DC04
#data 0x8C32DBF8

#align4
loc_8c192A40:
#data 0x8C32DBF0

#align4
loc_8c192A44:
#data 0x8C32DC14

#align4
loc_8c192A48:
#data 0x8C32DC08
#data 0x8C32DBFC
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009


loc_8c192A60:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xEC,r15
bsr loc_8c191C6E
mov r4,r11
cmp/eq 0xFF,r0
bf/s loc_8c192A80
mov r0,r14
bra loc_8c192BB6
nop

loc_8c192A80:
bsr loc_8c191B5E
mov r14,r4
mov r14,r2
mov.l @(loc_8c192B24,pc),r0 ; r0 set to 0x8C32EA3C
shll2 r2
mov.l @(r0,r2),r3
mov 0x03,r2 ; r2 set to 0x03
mov 0x04,r4 ; r4 set to 0x04
mov.l r3,@(0x3C,r11)
mov.l r14,@(0x20,r11)
mov 0x01,r14 ; r14 set to 0x01
mov.l r2,@(0x14,r11)

loc_8c192A98:
mov.l @(loc_8c192B28,pc),r2 ; r2 set to 0x8C32EA84
mov.l @r2,r3
mov.w @(loc_8c192B20,pc),r1 ; r1 set to 0x184
add 0xFF,r3
shll2 r3
mov r14,r0 ; r0 set to 0x01
add r11,r1 ; r1 ??? bc r11 is ???
add r1,r3
mov.l @r3,r3
shad r4, r0 ; r0 ??
tst r3,r0
bt loc_8c192AB4
bra loc_8c192ABA
mov.l r4,@(0x08,r15)

#align4
loc_8c192AB4:
#data 0x441174FF
#data 0x89EE


loc_8c192ABA:
mov.l @(loc_8c192B28,pc),r1 ; r1 set to 0x8C32EA84
mov 0x00,r9 ; r9 set to 0x00
mov.l @r1,r3
mov r9,r2 ; r2 set to 0x00
cmp/hs r3,r2
bf/s loc_8c192ACC
mov r9,r12 ; r12 set to 0x00
bra loc_8c192BB6
nop

loc_8c192ACC:
mov.l @(loc_8c192B2C,pc),r0 ; r0 set to 0xFFD8000C
mov.l @r0,r3
mov.l @(loc_8c192B30,pc),r2 ; r2 set to 0x8C32DBAC
mov r12,r1
mov r12,r0 ; r0 ??? bc r12 is ???
shll2 r1
mov.l r3,@r2 ; r2 ??? bc r3 is ???
add r0,r1
mov r12,r3
shll2 r1
shll2 r3
mov.l r14,@(0x10,r15)
mov r9,r13
mov.l r3,@(0x04,r15)
mov.l r1,@r15

loc_8c192AEA:
mov.w @(loc_8c192B20,pc),r2 ; r2 set to 0x184, r2 set to 0x184
mov r14,r1
mov.l @(0x04,r15),r3
shad r13, r1
add r11,r2 ; r2 ??? bc r11 is ???, r2 ??? bc r11 is ???
add r3,r2
mov.l @r2,r2
tst r2,r1
bt loc_8c192BA4
mov.l @(0x10,r15),r2
tst r2,r2
bt loc_8c192B46
tst r12,r12
bf loc_8c192B40
bra loc_8c192B42
mov r14,r8
#data 0x0009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c192B20:
#data 0x0184
#data 0x0000

#align4
loc_8c192B24:
#data 0x8C32EA3C

#align4
loc_8c192B28:
#data 0x8C32EA84

#align4
loc_8c192B2C:
#data 0xFFD8000C

#align4
loc_8c192B30:
#data 0x8C32DBAC
#data 0x00090009
#data 0x00090009
#data 0x00090009


loc_8c192B40:
mov 0x02,r8 ; r8 set to 0x02

loc_8c192B42:
bra loc_8c192B48
mov.l r9,@(0x10,r15)

loc_8c192B46:
#data 0x6893

#align4
loc_8c192B48:
#data 0x420BD226
#data 0x62E3E400
#data 0x2F2642DC
#data 0x90436A03
#data 0x2F8667D3
#data 0x53F24708
#data 0x1F7530BC
#data 0x303C66B3
#data 0x077E53F2
#data 0x50F57644
#data 0xD31D363C
#data 0x066E55BF
#data 0x64A3430B
#data 0x6232D31B
#data 0x3C2072FF
#data 0x7F088F0B
#data 0x3D1051F2
#data 0xD3198B07
#data 0x430BD517
#data 0xD21864A3
#data 0x420B65C3
#data 0x64A3

loc_8c192B9E:
#data 0xD317
#data 0x64A3430B


loc_8c192BA4:
mov 0x05,r2 ; r2 set to 0x05
add 0x01,r13
cmp/hs r2,r13
bf loc_8c192AEA
mov.l @(loc_8c192BEC,pc),r3 ; r3 set to 0x8C32EA84
add 0x01,r12
mov.l @r3,r2 ; r2 ??
cmp/hs r2,r12
bf loc_8c192ACC

loc_8c192BB6:
mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00
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
;-------------------------------------------------------------------------------
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x000000E4

#align4
loc_8c192BE4:
#data bank18.loc_8c18DA80

loc_8c192BE8:
#data bank1a.loc_8c1a7AA0

loc_8c192BEC:
#data 0x8C32EA84

#align4
loc_8c192BF0:
#data loc_8c191F4E

loc_8c192BF4:
#data bank18.loc_8c18FD60

loc_8c192BF8:
#data bank1a.loc_8c1a7840

loc_8c192BFC:
#data bank18.loc_8c18FC20

loc_8c192C00:
#data 0x4F22D317
#data 0x52516532
#data 0x57525153
#data 0x66523128
#data 0x61426513
#data 0xD2133768
#data 0x75017701
#data 0x6053420B
#data 0x306CD211
#data 0x61421401
#data 0x6053420B
#data 0x61226233
#data 0x51110757
#data 0x071A301C
#data 0x60421402
#data 0x307077FF
#data 0xE1018B01
#data 0x1416

loc_8c192C46:
#data 0x4F26
#data 0x0009000B
;-------------------------------------------------------------------------------
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x8C32DAA0

#align4
loc_8c192C64:
#data bank12.loc_8c1291DC

loc_8c192C68:
#data bank12.loc_8c12939C
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c192C80:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F862FA6
#data 0xD3494F22
#data 0x430BDC47
#data 0xD2486E43
#data 0x0009420B
#data 0xEA0053E2
#data 0x2338DD46
#data 0xEB018F02
#data 0x0009A0D8

#align4
loc_8c192CAC:
#data 0x6032D344
#data 0x890D8801
#data 0x410BD143
#data 0x200854EA
#data 0xA1438901
#data 0x0009

loc_8c192CC2:
#data 0xD141
#data 0x631252EA
#data 0x8B013320
#data 0x0009A13C

#align4
loc_8c192CD0:
#data 0x00DE9066
#data 0x8B028801
#data 0x420BD23C
#data 0x0009

loc_8c192CDE:
#data 0x53EA
#data 0x4308D03B
#data 0xE040023E
#data 0x53EA0E26
#data 0x1E39D234
#data 0x88016022
#data 0xD137890A
#data 0x21B254E9
#data 0x63B3D236
#data 0x6022434C
#data 0x2202203B
#data 0x23A26313

#align4
loc_8c192D0C:
#data 0x55ECD233
#data 0x54EF420B
#data 0xD3329045
#data 0x70F806EE
#data 0x76FF05EE
#data 0x54EF430B
#data 0xD32F903E
#data 0x70F806EE
#data 0x76FF05EE
#data 0x54EF430B
#data 0x880250E2
#data 0xD22B8B0E
#data 0x23386322
#data 0x93308B0A
#data 0x33EC9030
#data 0x0D36D528
#data 0x430BD328
#data 0xD22854EF
#data 0x54EF420B

#align4
loc_8c192D58:
#data 0x233853DB
#data 0x90248907
#data 0x233803DE
#data 0xD3248903
#data 0x430B0DA6
#data 0xE400

loc_8c192D6E:
#data 0xD223
#data 0x420B55EF
#data 0x901954E8
#data 0x03DE9219
#data 0x430832DC
#data 0xD21F332C
#data 0x23126122
#data 0x233853DA
#data 0x0009A048
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x01AC082C
#data 0x01B401B0
#data 0x093C0828
#data 0x09140938
#data 0x0000EEEE

#align4
loc_8c192DB4:
#data bank1a.loc_8c1a8038

loc_8c192DB8:
#data loc_8c190DE0
#data 0x8C32D278
#data 0x8C32DBF0

#align4
loc_8c192DC4:
#data loc_8c191B00
#data 0x8C32EA78

#align4
loc_8c192DCC:
#data bank1a.loc_8c1a76B4
#data 0x8C32EA44
#data 0x8C32DC14
#data 0x8C32DBFC

#align4
loc_8c192DDC:
#data bank1a.loc_8c1a8306

loc_8c192DE0:
#data bank1a.loc_8c1a7F20

loc_8c192DE4:
#data bank1a.loc_8c1a7F5E
#data 0x8C32D2A4

#align4
loc_8c192DEC:
#data loc_8c192C00

loc_8c192DF0:
#data bank1a.loc_8c1a7A00

loc_8c192DF4:
#data bank18.loc_8c18C98A

loc_8c192DF8:
#data bank18.loc_8c18C6C0

loc_8c192DFC:
#data loc_8c1945A0
#data 0xFFD8000C
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c192E20:
#data 0x53EA890B
#data 0xD129D828
#data 0x410B4308
#data 0x2802383C
#data 0x6503D327
#data 0x430B1E0D
#data 0x54EF

loc_8c192E3A:
#data 0xE040
#data 0x05EED325
#data 0x54EF430B
#data 0x22E2D224
#data 0x23B2D324
#data 0xE1059038
#data 0x1E157224
#data 0x220200DE
#data 0x6CA3A076

#align4
loc_8c192E5C:
#data 0x00DE9030
#data 0x8B028801
#data 0x420BD21E
#data 0x0009

loc_8c192E6A:
#data 0xE040
#data 0x55ECD31D
#data 0x430B0CEE
#data 0x56C354EF
#data 0xD21BE500
#data 0x420B76FF
#data 0x56C454EF
#data 0xD319E500
#data 0x430B76FF
#data 0xD21854EF
#data 0x420B55EF
#data 0xD31754E8
#data 0x430BE500
#data 0x901054EF
#data 0x02DE9310
#data 0x420833DC
#data 0xD313323C
#data 0x22126132
#data 0xD21251C6
#data 0x8D332128
#data 0xD31155C7
#data 0x6632A031
#data 0x0938082C
#data 0x00000914
#data 0x8C32EA54

#align4
loc_8c192ECC:
#data bank17.loc_8c17AAA0

loc_8c192ED0:
#data bank1a.loc_8c1a7860

loc_8c192ED4:
#data bank1a.loc_8c1a7CC0
#data 0x8C32EA6C
#data 0x8C32EA68

#align4
loc_8c192EE0:
#data bank1a.loc_8c1a76B4

loc_8c192EE4:
#data bank1a.loc_8c1a8306

loc_8c192EE8:
#data bank1a.loc_8c1a7F20

loc_8c192EEC:
#data bank1a.loc_8c1a7F5E

loc_8c192EF0:
#data loc_8c1945A0

loc_8c192EF4:
#data bank18.loc_8c18FF20
#data 0xFFD8000C
#data 0x02000000
#data 0x8C344C20
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c192F20:
#data 0x56C3

loc_8c192F22:
#data 0xD330
#data 0x54EF430B
#data 0x55D8D22F
#data 0x54EF420B
#data 0x23E2D32E
#data 0x22B2D22E
#data 0xE1059052
#data 0x1E157324
#data 0x700A00DE
#data 0x6CA32302

#align4
loc_8c192F48:
#data 0x60C34F26
#data 0x6AF668F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c192F5A:
#data 0x2FE6
#data 0x4F222FD6
#data 0xD2247FFC
#data 0x6E43E301
#data 0xD0232232
#data 0x201251EB
#data 0x23E2D322
#data 0x52EAD122
#data 0xDD222122
#data 0x1E05E007
#data 0x222852DA
#data 0xE0408907
#data 0x05EED31F
#data 0x430B2F52
#data 0xA0086453
#data 0x0009

loc_8c192F96:
#data 0x52DB
#data 0x8B042228
#data 0xE040D31A
#data 0x430BE500
#data 0x04EE

loc_8c192FA6:
#data 0x901C
#data 0x222802DE
#data 0xE3008905
#data 0x0D366433
#data 0x430BD315
#data 0x0009

loc_8c192FBA:
#data 0xE000
#data 0x4F267F04
#data 0x000B6DF6
#data 0x00096EF6
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x093C082C

#align4
loc_8c192FE4:
#data bank1a.loc_8c1a7BC0

loc_8c192FE8:
#data bank18.loc_8c18FF20
#data 0x8C32EA6C
#data 0x8C32EA68
#data 0x8C32EA74
#data 0x8C32EA80
#data 0x8C32EA7C
#data 0x8C32EA78
#data 0x8C32D278

#align4
loc_8c193008:
#data bank18.loc_8c18D196

loc_8c19300C:
#data bank18.loc_8c18C6C0
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c193020:
#data 0x6322D247
#data 0x8B012338
#data 0x0009A079

#align4
loc_8c19302C:
#data 0x8B012448
#data 0x0009A075

#align4
loc_8c193034:
#data 0xE6FF2558
#data 0xE4018D21
#data 0x6322D241
#data 0x896C2338
#data 0x6732D33F
#data 0x5778D03F
#data 0x37126102
#data 0xD23E8910
#data 0x61226543
#data 0x8D062118
#data 0xD33C457C
#data 0x215B6132
#data 0xA0052312
#data 0x0009

loc_8c19306A:
#data 0xD33A
#data 0x61326557
#data 0x23122159

#align4
loc_8c193074:
#data 0x6322D233
#data 0xA0501368
#data 0x0009

loc_8c19307E:
#data 0xD336
#data 0x22286232
#data 0xD1358B4B
#data 0x22286212
#data 0xD2338947
#data 0x50096022
#data 0x891A88FF
#data 0x6532D330
#data 0x5559D030
#data 0x35126102
#data 0xD22F8910
#data 0x61226743
#data 0x8D062118
#data 0xD32D475C
#data 0x217B6132
#data 0xA0052312
#data 0x0009

loc_8c1930BE:
#data 0xD32B
#data 0x61326777
#data 0x23122179

#align4
loc_8c1930C8:
#data 0x6322D224
#data 0x1369

loc_8c1930CE:
#data 0xD323
#data 0x500A6032
#data 0xD122E501
#data 0x25097001
#data 0x67537502
#data 0x37226212
#data 0xD01F8910
#data 0x62026143
#data 0x8D062228
#data 0xD31D417C
#data 0x221B6232
#data 0xA0052322
#data 0x0009

loc_8c1930FE:
#data 0xD31B
#data 0x62326117
#data 0x23222219

#align4
loc_8c193108:
#data 0x2362D319
#data 0x6212D113
#data 0x125AD018
#data 0x2022E200
#data 0xADB173F4
#data 0x6432

loc_8c19311E:
#data 0x000B
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x8C32EA9C
#data 0x8C32EA70
#data 0x8C32DBEC
#data 0x8C32DC10
#data 0x8C32DC04
#data 0x8C32DBF8
#data 0x8C32EA68
#data 0x8C32EA6C
#data 0x8C32DBF0
#data 0x8C32DC14
#data 0x8C32DC08
#data 0x8C32DBFC
#data 0x8C32EA78
#data 0x8C32EA74
#data 0x00090009
#data 0x00090009


loc_8c193180:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8c193204,pc),r3 ; r3 set to 0x8C1919C2
jsr @r3
mov r4,r12
tst r0,r0
bt/s loc_8c19324E
mov r0,r14
stc sr, r0
mov.w @(loc_8c193200,pc),r3 ; r3 set to 0xFF0F
mov 0x00,r11 ; r11 set to 0x00
shlr2 r0
shlr2 r0
and 0x0F,r0
mov.l r0,@r15
stc sr, r0
and r3,r0
or 0xF0,r0
ldc r0, sr
mov 0x01,r13 ; r13 set to 0x01

loc_8c1931B0:
bsr loc_8c192940
mov r14,r4
tst r0,r0
bt loc_8c193230
mov.l @(0x14,r14),r2
tst r13,r2
bf loc_8c193230
mov.l @(0x14,r14),r0
cmp/eq 0x02,r0
bt loc_8c1931D0
cmp/eq 0x04,r0
bt loc_8c1931D8
cmp/eq 0x06,r0
bt loc_8c193220
bra loc_8c193230
nop

loc_8c1931D0:
bsr loc_8c192A60
mov r14,r4
bra loc_8c193230
nop

#align4
loc_8c1931D8:
#data 0x222852EE
#data 0x60C38902
#data 0x8B258801

#align4
loc_8c1931E4:
#data 0x6232D308
#data 0x8B212228
#data 0x64E3BD48
#data 0x8B1D2008
#data 0x6BD3A01C
#data 0x00090009
#data 0x00090009

loc_8c193200:
#data 0xFF0F
#data 0x0000

#align4
loc_8c193204:
#data loc_8c1919C2
#data 0x8C32EA68
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c193220:
#data 0x6322D210
#data 0x8B032338
#data 0x89012CC8
#data 0x64E3BE95

#align4
loc_8c193230:
#data 0x2EE85EE4
#data 0x65B38BBC
#data 0x64C3BEF2
#data 0x020260F2
#data 0xC90F930E
#data 0x22394008
#data 0x202B4008
#data 0x400E


loc_8c19324E:
mov 0x00,r0 ; r0 set to 0x00
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x0009
#data 0x0000FF0F
#data 0x8C32EA74
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c193280:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
fmov.s fr15,@-r15
sts.l pr,@-r15
add 0xB4,r15
mov.l @(loc_8c193348,pc),r14 ; r14 set to 0x8C32D278
mov 0x00,r11 ; r11 set to 0x00
mov r4,r13
mov r11,r4 ; r4 set to 0x00

loc_8c19329C:
mov.w @(loc_8c193340,pc),r3 ; r3 set to 0x7D8, r3 set to 0x7D8
mov 0x08,r2 ; r2 set to 0x08, r2 set to 0x08
add r14,r3 ; r3 set to 0x8C32DA50, r3 ??? bc r14 is ???
add r4,r3 ; r3 set to 0x8C32DA50
add 0x04,r4 ; r4 set to 0x04
mov.l r11,@r3 ; r3 ??
cmp/hs r2,r4
bf loc_8c19329C
mov.w @(loc_8c193342,pc),r0 ; r0 set to 0x800, r0 set to 0x800
mov r15,r5
mov r15,r6
mov.l @(loc_8c19334C,pc),r3 ; r3 set to 0x8C1A4980, r3 set to 0x8C1A4980
mov.l @(r0,r14),r4 ; r4 ??
add 0x48,r6
add 0x44,r5
jsr @r3
shlr r4
mov r0,r4 ; r4 set to 0x800, r4 set to 0x800
tst r4,r4
bt loc_8c1932C8
bra loc_8c1935A8
mov r4,r0

loc_8c1932C8:
mov r15,r12
add 0x30,r12
mov r12,r3
add 0x10,r3
mov r12,r2
add 0x0C,r2
mov r12,r1
mova @(loc_8c193350,pc),r0  ; r0 init to 0x8C193350
add 0x08,r1
mov.l r11,@(0x04,r15)
mov 0x02,r8 ; r8 set to 0x02
mov.l r11,@(0x14,r15)
mov.l r11,@(0x18,r15)
mov.l r11,@(0x24,r15)
mov.l r3,@(0x08,r15)
mov r12,r3
mov.l r2,@(0x0C,r15)
add 0x04,r3
mov r12,r2
mov.l r1,@(0x2C,r15)
mov.l r3,@(0x10,r15)
mov.l r2,@(0x28,r15)
fmov.s @r0,fr15

loc_8c1932F6:
mov.l @(0x14,r14),r3
mov.w @(loc_8c193340,pc),r5 ; r5 set to 0x7D8, r5 set to 0x7D8
mov.l r3,@-r15
mov.w @(loc_8c193342,pc),r3 ; r3 set to 0x800, r3 set to 0x800
mov r15,r6
mov.l @(0x08,r15),r10
add 0x48,r6
add r14,r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???
mov.l @r3,r7
shll2 r10
mov.w @(loc_8c193344,pc),r3 ; r3 set to 0x7D4, r3 set to 0x7D4
add r10,r6
mov.l @r6,r6
add r14,r5 ; r5 ??? bc r14 is ???, r5 ??? bc r14 is ???
add r14,r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???
mov.l @r3,r4
shlr r7
mov.l @(loc_8c193354,pc),r3 ; r3 set to 0x8C1914A0, r3 set to 0x8C1914A0
jsr @r3
add r10,r5
mov.l @(0x04,r13),r2
tst r8,r2
bf/s loc_8c193360
add 0x04,r15
mov.w @(loc_8c193340,pc),r3 ; r3 set to 0x7D8, r3 set to 0x7D8
mov.l @(0x04,r15),r4
add r14,r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???
mov.l @(loc_8c193358,pc),r5 ; r5 set to 0x8C1A8D40, r5 set to 0x8C1A8D40
shll2 r4
add r3,r4
bra loc_8c19336C
nop
#data 0x0009
#data 0x00090009
#data 0x00090009

loc_8c193340:
#data 0x07D8

loc_8c193342:
#data 0x0800

loc_8c193344:
#data 0x07D4
#data 0x0000

#align4
loc_8c193348:
#data 0x8C32D278

#align4
loc_8c19334C:
#data bank1a.loc_8c1a4980

loc_8c193350:
#data 0x42480000

#align4
loc_8c193354:
#data loc_8c1914A0

loc_8c193358:
#data bank1a.loc_8c1a8D40
#data 0x00090009


loc_8c193360:
mov.w @(loc_8c193400,pc),r3 ; r3 set to 0x7D8
mov.l @(0x04,r15),r4
add r14,r3 ; r3 ??? bc r14 is ???
mov.l @(loc_8c193404,pc),r5 ; r5 set to 0x8C1A8CC0
shll2 r4
add r3,r4

loc_8c19336C:
mov.l @(loc_8c193408,pc),r2 ; r2 set to 0x8C1A7A00, r2 set to 0x8C1A7A00
jsr @r2
mov.l @r4,r4
mov.l @(loc_8c19340C,pc),r3 ; r3 set to 0x8C18DDA0, r3 set to 0x8C18DDA0
mov r15,r5 ; r5 ??? bc r15 is ???
mov.l @(0x14,r14),r7
mov r15,r6
add 0x1C,r5
add 0x20,r6
jsr @r3
mov.l @(0x0C,r14),r4
mov.w @(loc_8c193400,pc),r4 ; r4 set to 0x7D8, r4 set to 0x7D8
mov.l @(0x24,r15),r3 ; r3 ??? bc r15 is ???, r3 ??? bc r15 is ???
add r14,r4 ; r4 ??? bc r14 is ???, r4 ??? bc r14 is ???
mov.l @(loc_8c193410,pc),r2 ; r2 set to 0x8C18FD80, r2 set to 0x8C18FD80
mov.l @(0x34,r13),r7
add r3,r4
mov.l @(0x1C,r15),r5
mov.l @(0x20,r15),r6
jsr @r2
mov.l @r4,r4
mov.l @(0x34,r13),r3
mov 0x00,r2 ; r2 set to 0x00, r2 set to 0x00
cmp/hs r3,r2
bf/s loc_8c1933A4
mov r11,r9
bra loc_8c19354C
nop

loc_8c1933A4:
mov 0x38,r10 ; r10 set to 0x38
mov r11,r4
mul.l r10,r9
sts macl,r10

loc_8c1933AC:
mov r13,r0
add 0x38,r0
add r10,r0
mov r4,r3
mov r0,r2
add 0x10,r2
shll2 r3
fldi0 fr3
add r2,r3
fmov.s @r3,fr2
fcmp/eq fr3,fr2
bf loc_8c1933E4
mov.l @(0x04,r13),r0
tst 0x10,r0
bt loc_8c1933DC
mov r13,r3
add 0x38,r3
add r10,r3
mov.l @(0x0C,r3),r2
cmp/eq r4,r2
bf loc_8c1933DC
mov r4,r0
bra loc_8c193434
shll2 r0

loc_8c1933DC:
mov r4,r0
shll2 r0
bra loc_8c193448
mov.l r11,@(r0,r12)

loc_8c1933E4:
mov r4,r0
cmp/eq 0x00,r0
mov r4,r5
bt/s loc_8c193420
shll2 r5
cmp/eq 0x04,r0
bt loc_8c193420
cmp/eq 0x02,r0
bt loc_8c193420
bra loc_8c193442
nop
#data 0x0009
#data 0x00090009

loc_8c193400:
#data 0x07D8
#data 0x0000

#align4
loc_8c193404:
#data bank1a.loc_8c1a8CC0

loc_8c193408:
#data bank1a.loc_8c1a7A00

loc_8c19340C:
#data bank18.loc_8c18DDA0

loc_8c193410:
#data bank18.loc_8c18FD80
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c193420:
#data 0x703860D3
#data 0x630330AC
#data 0x335C7310
#data 0xF2F5F238
#data 0x60538B04


loc_8c193434:
mov 0x03,r3 ; r3 set to 0x03
mov.l r3,@(r0,r12)
bra loc_8c193448
nop

#align4
loc_8c19343C:
#data 0xA0036053
#data 0x0C86

loc_8c193442:
#data 0xE301
#data 0x0C366053


loc_8c193448:
mov 0x05,r2 ; r2 set to 0x05
add 0x01,r4
cmp/hs r2,r4
bf loc_8c1933AC
mov.l @(0x08,r15),r1
mov.l @r1,r3
mov.l r3,@-r15
mov.l @(0x10,r15),r2 ; r2 ??? bc r15 is ???
mov.l @r2,r3
mov.l r3,@-r15
mov.l @(0x18,r15),r6
mov r15,r4
mov.l @(0x30,r15),r5
mov.l @(0x34,r15),r7
mov.l @r5,r5
mov.l @(loc_8c1934E0,pc),r3 ; r3 set to 0x8C1A6F80
mov.l @r6,r6
mov.l @r7,r7
jsr @r3
add 0x08,r4
tst r9,r9
bt/s loc_8c193480
add 0x08,r15
mov.l @(loc_8c1934E4,pc),r3 ; r3 set to 0x8C1A6EC0
jsr @r3
mov r15,r4
bra loc_8c193486
nop

loc_8c193480:
mov.l @(loc_8c1934E8,pc),r3 ; r3 set to 0x8C1A6F40
jsr @r3
mov r15,r4

loc_8c193486:
mov 0x38,r10 ; r10 set to 0x38, r10 set to 0x38
mov r13,r0
mul.l r10,r9
add 0x38,r0
sts macl,r10
mov.l @(r0,r10),r0
tst 0x01,r0
bt loc_8c1934A0
mov.l @(loc_8c1934EC,pc),r2 ; r2 set to 0x8C1A6F00, r2 set to 0x8C1A6F00
jsr @r2
mov r15,r4
bra loc_8c1934A6
nop

loc_8c1934A0:
mov.l @(loc_8c1934F0,pc),r2 ; r2 set to 0x8C1A6E80
jsr @r2
mov r15,r4

loc_8c1934A6:
mov r13,r0
add 0x38,r0
mov.l @(r0,r10),r0
tst 0x80,r0
bt loc_8c19352E
mov r13,r0
add 0x38,r0
mov.l @(r0,r10),r0
tst 0x10,r0
bt loc_8c193500
mov.l @(0x0C,r15),r2 ; r2 ??? bc r15 is ???
mov.l @r2,r3
tst r3,r3
bt loc_8c193514
mov.l @(loc_8c1934F4,pc),r3 ; r3 set to 0x8C1A7DE0, r3 set to 0x8C1A7DE0
mov 0x01,r5 ; r5 set to 0x01, r5 set to 0x01
jsr @r3
mov r15,r4
bra loc_8c193514
nop
#data 0x0009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c1934E0:
#data bank1a.loc_8c1a6F80

loc_8c1934E4:
#data bank1a.loc_8c1a6EC0

loc_8c1934E8:
#data bank1a.loc_8c1a6F40

loc_8c1934EC:
#data bank1a.loc_8c1a6F00

loc_8c1934F0:
#data bank1a.loc_8c1a6E80

loc_8c1934F4:
#data bank1a.loc_8c1a7DE0
#data 0x00090009
#data 0x00090009

#align4
loc_8c193500:
#data 0x8907C820
#data 0x632252F4
#data 0x89032338
#data 0xE503D32D
#data 0x64F3430B

#align4
loc_8c193514:
#data 0x703860D3
#data 0xC84000AE
#data 0x52F28907
#data 0x23386322
#data 0xD3278903
#data 0x430BE504
#data 0x64F3


loc_8c19352E:
mov.w @(loc_8c1935C0,pc),r4 ; r4 set to 0x7D8
mov r9,r5
mov.l @(0x18,r15),r3
add r14,r4 ; r4 ??? bc r14 is ???
mov.l @(loc_8c1935C8,pc),r2 ; r2 set to 0x8C1A7940
mov.l @r15,r6
add r3,r4
jsr @r2
mov.l @r4,r4
mov.l @(0x34,r13),r3
add 0x01,r9
cmp/hs r3,r9
bt loc_8c19354C
bra loc_8c1933A4
nop

loc_8c19354C:
mov.w @(loc_8c1935C0,pc),r4 ; r4 set to 0x7D8
mov.l @(0x14,r15),r10
mov.l @(loc_8c1935CC,pc),r3 ; r3 set to 0x8C18CD60
add r14,r4 ; r4 ??? bc r14 is ???
add r10,r4
jsr @r3
mov.l @r4,r4
mov.w @(loc_8c1935C0,pc),r4 ; r4 set to 0x7D8
mov.l @(loc_8c1935D0,pc),r3 ; r3 set to 0x8C1A7300
add r14,r4 ; r4 ??? bc r14 is ???
add r10,r4
jsr @r3
mov.l @r4,r4
mov r10,r3 ; r3 ??? bc r10 is ???
mov.l @(0x04,r15),r2
add 0x04,r3
add 0x01,r2
mov.l r2,@(0x04,r15)
mov.l r3,@(0x14,r15)
mov.l @(0x18,r15),r1
add 0x04,r1
mov.l r1,@(0x18,r15)
mov.l @(0x24,r15),r3
add 0x04,r3
mov.l r3,@(0x24,r15)
mov.l @(0x04,r15),r2
cmp/hs r8,r2
bt loc_8c193588
bra loc_8c1932F6
nop

#align4
loc_8c193588:
#data 0x233853EB
#data 0xDC11890B
#data 0x6DB3

loc_8c193592:
#data 0x9415
#data 0x34ECE500
#data 0x4C0B34DC
#data 0xE3086442
#data 0x3D327D04
#data 0x8BF5

loc_8c1935A6:
#data 0xE000


loc_8c1935A8:
add 0x4C,r15
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
#data 0x0009

loc_8c1935C0:
#data 0x07D8
#data 0x0000

#align4
loc_8c1935C4:
#data bank1a.loc_8c1a7DE0

loc_8c1935C8:
#data bank1a.loc_8c1a7940

loc_8c1935CC:
#data bank18.loc_8c18CD60

loc_8c1935D0:
#data bank1a.loc_8c1a7300

loc_8c1935D4:
#data bank18.loc_8c18FF20
#data 0x00090009
#data 0x00090009


loc_8c1935E0:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xCC,r15
mov.l @(0x34,r4),r3
mov 0x48,r0 ; r0 set to 0x48
mov.l @(loc_8c193640,pc),r5 ; r5 set to 0x8C32D278
mov 0xE0,r11 ; r11 set to 0xFFFFFFE0
mov 0x10,r14 ; r14 set to 0x10
mov.l @(0x24,r4),r6
mov.l r3,@(r0,r5)  ; r5 ??? bc r3 is ???
mov.l @(0x2C,r4),r7
mov.l @(0x30,r4),r3
mov r7,r8
add 0x1F,r8
mov.l r3,@(0x0C,r15)
mov 0x1F,r3 ; r3 set to 0x1F
and r11,r8
mov.l @(0x0C,r15),r2
and r8,r3 ; r3 ??? bc r8 is ???
sub r3,r2
mov.l r2,@(0x0C,r15)
mov.l @(0x04,r4),r3
tst r14,r3
bt loc_8c193660
mov 0x01,r1 ; r1 set to 0x01
mov.l r1,@(0x14,r6)
bra loc_8c193672
mov.l r1,@(0x30,r5)
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c193640:
#data 0x8C32D278
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c193660:
#data 0xD349524A
#data 0x152C1625
#data 0x430B51F3
#data 0x20B9504A
#data 0x1F03

loc_8c193672:
#data 0x535C
#data 0x6263E600
#data 0x32326C63
#data 0xE9148D35

#align4
loc_8c193680:
#data 0x60C3937E
#data 0x62C34008
#data 0x917A335C
#data 0x63C3303C
#data 0x323C4208
#data 0x42084208
#data 0x4200315C
#data 0x2022321C
#data 0x62C36323
#data 0x63C34208
#data 0x4208323C
#data 0xE1004208
#data 0x2F224200
#data 0x3132534D
#data 0x6D638D13

#align4
loc_8c1936BC:
#data 0x4A086AD3
#data 0x3A3C63D3
#data 0x67634A08

#align4
loc_8c1936C8:
#data 0x63F2905B
#data 0x303C305C
#data 0x076630AC
#data 0x37927704
#data 0x524D8BF6
#data 0x3D227D01
#data 0x8BEC

loc_8c1936E2:
#data 0x525C
#data 0x3C227C01
#data 0x8BCA

loc_8c1936EA:
#data 0xC728
#data 0xF40867F3
#data 0x5041EA05
#data 0xF58DEC38
#data 0x8F02C840
#data 0xA1027720
#data 0x0009

loc_8c193702:
#data 0x6373
#data 0x903D7314
#data 0xE100E201
#data 0x62730526
#data 0x1F361F63
#data 0x534D1F27
#data 0x8B013132
#data 0x0009A207

#align4
loc_8c193720:
#data 0x50F352F3
#data 0x932E02C7
#data 0x335C4008
#data 0x303C021A
#data 0x73386343
#data 0x5123323C
#data 0x5DF72012

#align4
loc_8c19373C:
#data 0x7D04FD5A
#data 0x3D3253F6
#data 0x58F38BFA
#data 0x08C76D63
#data 0x081A

loc_8c19374E:
#data 0x5341
#data 0x892523E8
#data 0x71386143
#data 0x5313318C
#data 0x892B33D0
#data 0x73386343
#data 0x60D3338C
#data 0x40086133
#data 0x62037110
#data 0x2F02312C
#data 0xA01FF318
#data 0x0009F737
#data 0x00090009
#data 0x01700150
#data 0x071007D0

#align4
loc_8c193788:
#data bank12.loc_8c1291DC
#data 0x42C80000
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c1937A0:
#data 0x73386343
#data 0x60D3338C
#data 0x40086133
#data 0x62037110
#data 0x2F02312C
#data 0xF737F318

#align4
loc_8c1937B8:
#data 0x3DA27D01
#data 0x5DF38BC7
#data 0x73386343
#data 0x0D1A0DC7
#data 0x52D13D3C
#data 0x53D21F22
#data 0x52412F32
#data 0x8B0422E8
#data 0x61F2D32A
#data 0x504A430B
#data 0x2F02

loc_8c1937E2:
#data 0x63F2
#data 0x23B96863
#data 0x5DF32F32
#data 0x4D0862D3
#data 0x4D083D2C

#align4
loc_8c1937F4:
#data 0x608362F2
#data 0x425A9342
#data 0x335C4211
#data 0x33DCF376
#data 0x8D04338C
#data 0xD11FF22D
#data 0xF10D415A
#data 0xF210

loc_8c193812:
#data 0xF322
#data 0x415AD11D
#data 0xF20DF343
#data 0x8901F235
#data 0xF321F220

#align4
loc_8c193824:
#data 0x7804F33D
#data 0x025A3892
#data 0x232222B9
#data 0xE1008BE0
#data 0x53F31F61
#data 0x031A03C7
#data 0x525C1F35
#data 0x89483122

#align4
loc_8c193844:
#data 0x686352F1
#data 0x42086323
#data 0x4208323C
#data 0x42004208
#data 0x2F22

loc_8c193856:
#data 0x5341
#data 0x892123E8
#data 0x53F56243
#data 0x323C7238
#data 0x38105123
#data 0x900A8B1A
#data 0x305C63F2
#data 0x303CD207
#data 0x43086383
#data 0x032630DC
#data 0x0009A022
#data 0x01700730

#align4
loc_8c193884:
#data bank12.loc_8c1291DC
#data 0x4F800000
#data 0x4F000000
#data 0x10000000
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c1938A0:
#data 0x63F2906E
#data 0x303C305C
#data 0x30DC6383
#data 0x1F344308
#data 0x032652F2
#data 0x50F49365
#data 0x52F2335C
#data 0x033E33DC
#data 0x1F22323C

#align4
loc_8c1938C4:
#data 0x38A27801
#data 0x52F18BC5
#data 0x1F217201
#data 0x3232535C
#data 0x8BB6

loc_8c1938D6:
#data 0x6863

#align4
loc_8c1938D8:
#data 0x90539352
#data 0x33DC335C
#data 0x328C6233
#data 0x305C6322
#data 0x083630DC
#data 0x38927804
#data 0x53F38BF2
#data 0x1F337301
#data 0x3322524D
#data 0xAF0F8901
#data 0x0009

loc_8c193902:
#data 0xA114
#data 0x0009

loc_8c193906:
#data 0x6373
#data 0x7314903D
#data 0x05666D73
#data 0x2F32

loc_8c193912:
#data 0xFD5A
#data 0x63F27D04
#data 0x8BFA3D32
#data 0x1F61E200
#data 0x3232534D
#data 0x8954

loc_8c193926:
#data 0x52F1
#data 0x50F16D63
#data 0x932B02C7
#data 0x335C4008
#data 0x303C021A
#data 0x73386343
#data 0x5123323C
#data 0x53F12012
#data 0x031A03C7
#data 0x2F32

loc_8c19394A:
#data 0x5241
#data 0x892722E8
#data 0x63F26143
#data 0x313C7138
#data 0x32D05213
#data 0x6243892F
#data 0x60D37238
#data 0x1F024008
#data 0xF27663F2
#data 0x6303323C
#data 0x71106123
#data 0xF318313C
#data 0xA020F230
#data 0x0009F727
#data 0x07300170
#data 0x07D000B0
#data 0x00090710
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c1939A0:
#data 0x72386243
#data 0x400860D3
#data 0x63F21F02
#data 0x323CF276
#data 0x61236303
#data 0x313C7110
#data 0xF230F318
#data 0xF727

loc_8c1939BE:
#data 0x7D01
#data 0x8BC23DA2
#data 0x720152F1
#data 0x534D1F21
#data 0x8BAA3232

#align4
loc_8c1939D0:
#data 0x7C146C73
#data 0x6D73

loc_8c1939D6:
#data 0x534D
#data 0x4311435A
#data 0xF32D8D04
#data 0x425AD231
#data 0xF320F20D

#align4
loc_8c1939E8:
#data 0xF133F1D8
#data 0x7D04FD1A
#data 0x8BF03DC2
#data 0x1F62E200
#data 0x3232535C
#data 0xA08A8B01
#data 0x0009

loc_8c193A02:
#data 0x2F62
#data 0x52F25CF2
#data 0x4C0863C3
#data 0x63233C3C
#data 0x4C084208
#data 0x4208323C
#data 0x1F214C08
#data 0x4C00

loc_8c193A1E:
#data 0x53F3
#data 0x435A6DF2
#data 0x4D084311
#data 0xF32D8D04
#data 0x425AD21E
#data 0xF320F20D

#align4
loc_8c193A34:
#data 0x23E85341
#data 0xF53C8D42
#data 0x61F2E044
#data 0x3210024E
#data 0x902B8B3C
#data 0x305CD318
#data 0x30CCD218
#data 0x90250D36
#data 0x305C425A
#data 0x630330CC
#data 0x33DC7314
#data 0x2382901F
#data 0x305C53F1
#data 0x303CF20D
#data 0x60D30D86
#data 0xF352F376
#data 0xF235F343
#data 0xF2208901
#data 0xF321

loc_8c193A7E:
#data 0xF33D
#data 0x315C9110
#data 0x035A31DC
#data 0x1F3423B9
#data 0xA0332132
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x06700170
#data 0x00000730
#data 0x4F800000
#data 0x10000000
#data 0x4F000000
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c193AC0:
#data 0xD23B906E
#data 0x30CC305C
#data 0x0D86425A
#data 0x53F19069
#data 0xF20D305C
#data 0x0D86303C
#data 0xF37660D3
#data 0xF343F352
#data 0x8901F235
#data 0xF321F220

#align4
loc_8c193AE8:
#data 0x915BF33D
#data 0x31DC315C
#data 0x23B9035A
#data 0x21321F34

#align4
loc_8c193AF8:
#data 0x52F463F2
#data 0x33A27301
#data 0x8F8C382C
#data 0x53F22F32
#data 0x1F327301
#data 0x3322525C
#data 0xAF768901
#data 0x0009

loc_8c193B16:
#data 0x6463

#align4
loc_8c193B18:
#data 0x92449342
#data 0x325C335C
#data 0x324C334C
#data 0x74046132
#data 0x8FF53492
#data 0x2212

loc_8c193B2E:
#data 0xE000
#data 0x4F267F34
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c193B44:
#data 0xE4002FE6
#data 0x6543DE1A
#data 0x962C902C
#data 0x0E464F22
#data 0xD3187004
#data 0x0E4636EC
#data 0xE407430B
#data 0xE5009624
#data 0x36ECD214
#data 0xE408420B
#data 0x233853E5
#data 0x901B8903
#data 0x73FF03EE
#data 0x0E36

loc_8c193B7A:
#data 0x4F26
#data 0x000BE000
#data 0x00096EF6
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x06700170
#data 0x00B00730
#data 0x08100808
#data 0x00000814
#data 0x4F000000
#data 0x8C32D278

#align4
loc_8c193BB8:
#data bank1a.loc_8c1a70A0
#data 0x00090009

#align4
loc_8c193BC0:
#data 0x4F222FE6
#data 0x63437FFC
#data 0xDE1E903A
#data 0x52352F42
#data 0x0E26D31D
#data 0x54E6430B
#data 0x913262F2
#data 0xE2FE5323
#data 0x730131EC
#data 0x00372329
#data 0x2102001A
#data 0x03EE9029
#data 0x01EE70F8
#data 0x313C70FC
#data 0x313203EE
#data 0x90208B08
#data 0x70F403EE
#data 0x700401EE
#data 0xD3103138
#data 0x0E16313C

#align4
loc_8c193C10:
#data 0x03EE9017
#data 0x02EE70F4
#data 0x01EE7004
#data 0x32387004
#data 0x0E263218
#data 0x7F04E000
#data 0x000B4F26
#data 0x00096EF6
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x080407FC
#data 0x8C32D278

#align4
loc_8c193C48:
#data bank18.loc_8c18D268
#data 0xFFFC0000
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c193C60:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x4F222FA6
#data 0xD3377FF8
#data 0xDD356E43
#data 0x54D6430B
#data 0xD23566F3
#data 0x6C0365F3
#data 0x420B7604
#data 0x905B6403
#data 0x4B0BDB32
#data 0x905804DE
#data 0x04DE4B0B
#data 0x4A0BDA30
#data 0x915164F2
#data 0x210231DC
#data 0x54F14A0B
#data 0x31DC914D
#data 0x53E22102
#data 0x623261F2
#data 0x53E21217
#data 0xE3016232
#data 0x52E312C5
#data 0x8F073236
#data 0x52E2E402
#data 0x512150F1
#data 0x52E21107
#data 0x11C55121

#align4
loc_8c193CD0:
#data 0x234853E1
#data 0x51E38B2A
#data 0x8B273146
#data 0x66F3D21C
#data 0x760465F3
#data 0x64C3420B
#data 0x4B0B902C
#data 0x902A04DE
#data 0x04DE4B0B
#data 0x64F24A0B
#data 0x31DC9124
#data 0x4A0B2102
#data 0x912054F1
#data 0x210231DC
#data 0x61F253E2
#data 0x12175232
#data 0x523253E2
#data 0x12C5E303
#data 0x323652E3
#data 0x52E28B06
#data 0x512350F1
#data 0x52E21107
#data 0x11C55123

#align4
loc_8c193D2C:
#data 0x7F08E000
#data 0x6AF64F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00096EF6
#data 0x07E407E0
#data 0x07EC07E8
#data 0x8C32D278

#align4
loc_8c193D4C:
#data bank18.loc_8c18D268

loc_8c193D50:
#data bank1a.loc_8c1a4900

loc_8c193D54:
#data bank18.loc_8c18D160

loc_8c193D58:
#data bank18.loc_8c18D016
#data 0x00090009


loc_8c193D60:
add 0xFC,r15
mov.l @(loc_8c193E04,pc),r5 ; r5 set to 0x8C32D278
mov 0x00,r7 ; r7 set to 0x00
mov.w @(loc_8c193E00,pc),r3 ; r3 set to 0xB0
mov 0x40,r0 ; r0 set to 0x40
mov.l @(0x24,r4),r6
mov r5,r1 ; r1 set to 0x8C32D278
add r5,r3 ; r3 set to 0x8C32D328
mov.w @(loc_8c193E00,pc),r2 ; r2 set to 0xB0
mov.l r7,@(r0,r5)  ; r5 ??
mov 0x44,r0 ; r0 set to 0x44
add r5,r2 ; r2 ??? bc r5 is ???
mov.l r7,@(0x3C,r5)
add 0x34,r1 ; r1 set to 0x8C32D2AC
mov.l r7,@(0x38,r5)
mov.l r7,@(r0,r5)
mov 0x4C,r0 ; r0 set to 0x4C
mov.l r7,@(0x34,r5)
mov.l r7,@(r0,r5)
mov.l r3,@r6
mov r5,r3 ; r3 ??? bc r5 is ???
mov.l r2,@(0x10,r6)
add 0x70,r3
mov.l r3,@r15
mov 0xE0,r3 ; r3 set to 0xFFFFFFE0
mov.l @r15,r2
and r3,r2
mov.l r2,@(0x04,r6)
mov.w @(loc_8c193E02,pc),r2 ; r2 set to 0x150
mov.l r1,@(0x08,r6)
mov r4,r1 ; r1 ??? bc r4 is ???
add r5,r2 ; r2 ??? bc r5 is ???
mov.l r2,@(0x0C,r6)
add 0x38,r1
mov r7,r0 ; r0 set to 0x00
mov.l r1,@(0x18,r6)
rts
add 0x04,r15
;-------------------------------------------------------------------------------

loc_8c193DAC:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xE4,r15
mov.l @(loc_8c193E08,pc),r3 ; r3 set to 0x8C1C5B4C
mov r15,r2
add 0x04,r2
mov.l @r3,r1
mov 0x02,r5 ; r5 set to 0x02
mov.l @(0x04,r3),r0
mov.l r1,@r2
mov.l r0,@(0x04,r2)
mov.l @(0x0C,r3),r0
mov.l @(0x08,r3),r1
mov.l r1,@(0x08,r2)
mov.l r0,@(0x0C,r2)
mov.l @(0x14,r3),r0
mov.l @(0x10,r3),r1
mov.l r1,@(0x10,r2)
mov.l r0,@(0x14,r2)
mov.l @(0x04,r4),r2
tst r5,r2
bt/s loc_8c193E20
mov 0x00,r8 ; r8 set to 0x00
bra loc_8c193E22
mov r5,r10
#data 0x0009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c193E00:
#data 0x00B0

loc_8c193E02:
#data 0x0150

#align4
loc_8c193E04:
#data 0x8C32D278

#align4
loc_8c193E08:
#data bank1c.loc_8c1c5B4C
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c193E20:
#data 0x5A43

loc_8c193E22:
#data 0xDD28
#data 0xD9266383
#data 0x2F8233A2
#data 0x8D225B42
#data 0xEC01

loc_8c193E32:
#data 0x6EB2
#data 0x53D62EC2
#data 0x63F31E32
#data 0x730452D6
#data 0x323C4208
#data 0x1E116122
#data 0x52DB1E86
#data 0x8D032228
#data 0x52E666E3
#data 0x1E2622CB

#align4
loc_8c193E58:
#data 0x760CE500
#data 0xE407490B
#data 0xE50066E3
#data 0x490B7610
#data 0x63F2E408
#data 0x33A27301
#data 0x8FDE2F32
#data 0x7B04

loc_8c193E76:
#data 0xE000
#data 0x4F267F1C
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c193E8C:
#data 0xC8025041
#data 0xD30D8B03
#data 0x22286232
#data 0x8908

loc_8c193E9A:
#data 0x5043
#data 0x8B028802
#data 0xC8205041
#data 0x8902

loc_8c193EA6:
#data 0xD009
#data 0x0009000B
;-------------------------------------------------------------------------------

#align4
loc_8c193EAC:
#data 0x000BE000
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c193EC0:
#data bank1a.loc_8c1a70A0
#data 0x8C32D278
#data 0x8C32D2A0
#data 0x0000EEEE
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8c193EE0:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x4F222FA6
#data 0xDE177FFC
#data 0x9325EB00
#data 0x2E796CB3
#data 0x3E306DB3
#data 0x8D03677C
#data 0x911E2F72
#data 0x8B023E10

#align4
loc_8c193F08:
#data 0xA002E303
#data 0x2432

loc_8c193F0E:
#data 0xE102
#data 0x2412

loc_8c193F12:
#data 0x9317
#data 0x3E30EA01
#data 0xE7048D03
#data 0x3E109113
#data 0x8B03

loc_8c193F22:
#data 0xD30B
#data 0xA04C14A1
#data 0x1432

loc_8c193F2A:
#data 0x910D
#data 0x89023E10
#data 0x3E20920B
#data 0x8B14

loc_8c193F36:
#data 0xD207
#data 0x14A1A029
#data 0x00090009
#data 0x11001000
#data 0x06000500
#data 0x08000700
#data 0x0000FF00
#data 0x28000000
#data 0x30000000
#data 0x00090009
#data 0x00090009

#align4
loc_8c193F60:
#data 0x60F214A1
#data 0x89098800
#data 0x89098801
#data 0x890A8802
#data 0x890B8803
#data 0x890C8804
#data 0x0009A022

#align4
loc_8c193F7C:
#data 0x14B2A021

#align4
loc_8c193F80:
#data 0xA004D207
#data 0x0009

loc_8c193F86:
#data 0xD107
#data 0x0009A004

loc_8c193F8C:
#data 0xD206

loc_8c193F8E:
#data 0xA018
#data 0x1422

loc_8c193F92:
#data 0xD106

#align4
loc_8c193F94:
#data 0x1412A015
#data 0x00090009
#data 0x00090009
#data 0x08000000
#data 0x10000000
#data 0x18000000
#data 0x20000000
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c193FC0:
#data 0x6C73

loc_8c193FC2:
#data 0x6053
#data 0x14538808
#data 0x14648D33
#data 0x89118810
#data 0x89118820
#data 0x89118840
#data 0x30109112
#data 0x91108920
#data 0x891F3010
#data 0x3010910E
#data 0x910C891E
#data 0x891D3010
#data 0x0009A01E

#align4
loc_8c193FF4:
#data 0xED08A01D

#align4
loc_8c193FF8:
#data 0xED10A01B

#align4
loc_8c193FFC:
#data 0xED18A019
#data 0x01000080
#data 0x04000200
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c194020:
#data 0xED20A007

#align4
loc_8c194024:
#data 0xED28A005

#align4
loc_8c194028:
#data 0xED30A003

#align4
loc_8c19402C:
#data 0xED38A001

loc_8c194030:
#data 0x6C73

loc_8c194032:
#data 0x6063
#data 0x893F8808
#data 0x89118810
#data 0x89118820
#data 0x89118840
#data 0x3010911C
#data 0x911A892A
#data 0x89293010
#data 0x30109118
#data 0x91168929
#data 0x89293010
#data 0x0009A02B

#align4
loc_8c194060:
#data 0x2DABA02A

#align4
loc_8c194064:
#data 0xE202A025

#align4
loc_8c194068:
#data 0xE103A020
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x01000080
#data 0x04000200
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c1940A0:
#data 0x2D7BA00A

#align4
loc_8c1940A4:
#data 0xA007E305
#data 0x2D3B

loc_8c1940AA:
#data 0xE106

#align4
loc_8c1940AC:
#data 0x2D1BA004

loc_8c1940B0:
#data 0xE207

loc_8c1940B2:
#data 0xA001
#data 0x2D2B

loc_8c1940B6:
#data 0x6C73

#align4
loc_8c1940B8:
#data 0x3E309362
#data 0x9160890E
#data 0x890B3E10
#data 0x3E00905E
#data 0x925C8908
#data 0x89053E20
#data 0x3E10915A
#data 0x35608902
#data 0x6C738900

#align4
loc_8c1940DC:
#data 0x3E309355
#data 0x14B68D0F
#data 0x3E109152
#data 0x9050890B
#data 0x89083E00
#data 0x3E20924E
#data 0x914C8905
#data 0x89023E10
#data 0x3E20924A
#data 0x8B03

loc_8c194102:
#data 0x5146
#data 0x213BD325
#data 0x1416

loc_8c19410A:
#data 0x953A
#data 0x89023E50
#data 0x3E209236
#data 0x8B03

loc_8c194116:
#data 0x5146
#data 0x213BD321
#data 0x1416

loc_8c19411E:
#data 0x923A
#data 0x89083E20
#data 0x3E109133
#data 0x90358905
#data 0x89023E00
#data 0x3E20922E
#data 0x8B03

loc_8c194136:
#data 0x5146
#data 0x213BD31A
#data 0x1416

loc_8c19413E:
#data 0x3E50
#data 0x52468B03
#data 0x223BD318
#data 0x1426

loc_8c19414A:
#data 0x911C
#data 0x89083E10
#data 0x3E20921F
#data 0x90178905
#data 0x89023E00
#data 0x3E20921A
#data 0x8B03

loc_8c194162:
#data 0x5146
#data 0x213BD311
#data 0x1416

loc_8c19416A:
#data 0x5246
#data 0xB0BD22DB
#data 0xA0251426
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x0B000900
#data 0x05000D00
#data 0x0F000700
#data 0x04000200
#data 0x06001100
#data 0x03000800
#data 0x00001000
#data 0x80000000
#data 0x04000000
#data 0x40000000
#data 0x02000000
#data 0x00008000
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c1941C0:
#data 0x7F0460C3
#data 0x6AF64F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1941D2:
#data 0x3453
#data 0x64538B00

#align4
loc_8c1941D8:
#data 0x88016043
#data 0x88028919
#data 0x8804892E
#data 0x8808892E
#data 0x8810893C
#data 0x8820892C
#data 0x8840892C
#data 0x9113892C
#data 0x892B3010
#data 0x30109111
#data 0x910F892A
#data 0x89293010
#data 0x3010910D
#data 0xA0298928
#data 0x0009

loc_8c194212:
#data 0x000B
#data 0x0009E000
#data 0x00090009
#data 0x00090009
#data 0x01000080
#data 0x04000200
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c194240:
#data 0xE001000B
;-------------------------------------------------------------------------------

#align4
loc_8c194244:
#data 0xE002000B
;-------------------------------------------------------------------------------

#align4
loc_8c194248:
#data 0xE004000B
;-------------------------------------------------------------------------------

#align4
loc_8c19424C:
#data 0xE005000B
;-------------------------------------------------------------------------------

#align4
loc_8c194250:
#data 0xE006000B
;-------------------------------------------------------------------------------

#align4
loc_8c194254:
#data 0xE007000B
;-------------------------------------------------------------------------------

#align4
loc_8c194258:
#data 0xE008000B
;-------------------------------------------------------------------------------

#align4
loc_8c19425C:
#data 0xE009000B
;-------------------------------------------------------------------------------

#align4
loc_8c194260:
#data 0xE00A000B
;-------------------------------------------------------------------------------

#align4
loc_8c194264:
#data 0x000BE003
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c19426A:
mov.l @(0x0C,r4),r0
mov.l @(loc_8c1942A0,pc),r5 ; r5 set to 0x80000000
cmp/eq 0x08,r0
bt loc_8c194282
cmp/eq 0x10,r0
bt loc_8c1942C0
cmp/eq 0x20,r0
bt loc_8c1942CE
cmp/eq 0x40,r0
bt loc_8c1942D8
bra loc_8c1942E6
nop

loc_8c194282:
mov.l @(0x18,r4),r3
tst r3,r5
bt loc_8c19428C
rts
mov 0x02,r0
;-------------------------------------------------------------------------------

loc_8c19428C:
rts
mov 0x01,r0
;-------------------------------------------------------------------------------
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c1942A0:
#data 0x80000000
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009


loc_8c1942C0:
mov.l @(0x18,r4),r3
tst r3,r5
bt loc_8c1942CA
rts
mov 0x04,r0
;-------------------------------------------------------------------------------

loc_8c1942CA:
rts
mov 0x03,r0
;-------------------------------------------------------------------------------

loc_8c1942CE:
mov.l @(0x18,r4),r3
tst r3,r5
bt loc_8c1942E6
rts
mov 0x06,r0
;-------------------------------------------------------------------------------

loc_8c1942D8:
mov.l @(0x18,r4),r3
tst r3,r5
bt loc_8c1942E2
rts
mov 0x08,r0
;-------------------------------------------------------------------------------

loc_8c1942E2:
rts
mov 0x07,r0
;-------------------------------------------------------------------------------

loc_8c1942E6:
mov 0x05,r0 ; r0 set to 0x05
rts
nop
;-------------------------------------------------------------------------------

#align4
loc_8c1942EC:
#data 0x6E432FE6
#data 0x60E24F22
#data 0x8803600D
#data 0xB0EF8B03
#data 0xA00664E3
#data 0x0009

loc_8c194302:
#data 0x52E6
#data 0x2238D316
#data 0xB0538903
#data 0x64E3

loc_8c19430E:
#data 0xA00B
#data 0x6403

loc_8c194312:
#data 0x51E6
#data 0x2128D213
#data 0xB08C8903
#data 0xA00264E3
#data 0x0009

loc_8c194322:
#data 0xB005
#data 0x64E3

loc_8c194326:
#data 0x6403

#align4
loc_8c194328:
#data 0x4F261E45
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c194330:
#data 0x56435544
#data 0x06575246
#data 0x2238D30B
#data 0x071A8D32
#data 0x45014601
#data 0x8D1B3652
#data 0xA01AE001
#data 0x00096163
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x40000000
#data 0x00008000
#data 0x80000000
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c194380:
#data 0x6153

loc_8c194382:
#data 0x3106
#data 0x8B07

loc_8c194386:
#data 0x0657
#data 0x45014601
#data 0x031A4101
#data 0x373C3106
#data 0x89F7

loc_8c194396:
#data 0x3650
#data 0xA0038B01
#data 0x7704

loc_8c19439E:
#data 0x0657
#data 0x376C061A

#align4
loc_8c1943A4:
#data 0x88015041
#data 0xA0018B01
#data 0x4700

loc_8c1943AE:
#data 0x4708

#align4
loc_8c1943B0:
#data 0x6073000B
;-------------------------------------------------------------------------------

#align4
loc_8c1943B4:
#data 0x56435544
#data 0x46015246
#data 0x4501D310
#data 0x22380657
#data 0x071A8D2C
#data 0x45014601
#data 0x8D023652
#data 0xA001E001
#data 0x6463

loc_8c1943D6:
#data 0x6453

#align4
loc_8c1943D8:
#data 0x8B073406

#align4
loc_8c1943DC:
#data 0x46010657
#data 0x44014501
#data 0x3406031A
#data 0x89F7373C

#align4
loc_8c1943EC:
#data 0x8B013650
#data 0x7702A003

#align4
loc_8c1943F4:
#data 0x061A0657
#data 0x376C

loc_8c1943FA:
#data 0xA018
#data 0x0009770A
#data 0x80000000
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c194420:
#data 0x88085043
#data 0x50448B03
#data 0x8B008808
#data 0x7710

loc_8c19442E:
#data 0x9337
#data 0x000B373C
#data 0x6073
;-------------------------------------------------------------------------------

loc_8c194436:
#data 0xD31B
#data 0x57442FE6
#data 0x52465643
#data 0x22380677
#data 0x8D3C051A
#data 0x4601EE01
#data 0x36724701
#data 0xA0018901
#data 0x6063

loc_8c194456:
#data 0x6073

#align4
loc_8c194458:
#data 0x8B0730E6

#align4
loc_8c19445C:
#data 0x46010677
#data 0x40014701
#data 0x30E6031A
#data 0x89F7353C

#align4
loc_8c19446C:
#data 0x8B013670
#data 0x7501A003

#align4
loc_8c194474:
#data 0x061A0677
#data 0x356C

loc_8c19447A:
#data 0x5342
#data 0x3320D20A
#data 0xA01E8B1E
#data 0x0009752B
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00000800
#data 0x80000000
#data 0x28000000
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c1944C0:
#data 0x750B

loc_8c1944C2:
#data 0x5342
#data 0x3320D22E
#data 0x60538B05
#data 0x8B018801
#data 0x65E3A001

loc_8c1944D4:
#data 0x4501

loc_8c1944D6:
#data 0x6053
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1944DC:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x7FF84F22
#data 0x5DB36B43
#data 0x4D012FD2
#data 0x1FE15EB4
#data 0x0DE74E01
#data 0x0C1A55F1
#data 0x64F2BE69
#data 0x6403D320
#data 0x650352B6
#data 0x8D1F2238
#data 0x4D014508
#data 0x3DE24E01
#data 0xE6018D02
#data 0x64D3A001

loc_8c19451C:
#data 0x64E3

loc_8c19451E:
#data 0x3466
#data 0x8B07

loc_8c194522:
#data 0x0DE7
#data 0x4E014D01
#data 0x031A4401
#data 0x3C3C3466
#data 0x89F7

loc_8c194532:
#data 0x3DE0
#data 0xA0038B01
#data 0x7C02

loc_8c19453A:
#data 0x0DE7
#data 0x3CDC0D1A

#align4
loc_8c194540:
#data 0x7C0AD011
#data 0x3C3C035E
#data 0x0009A003

#align4
loc_8c19454C:
#data 0x025ED00F
#data 0x3C2C

loc_8c194552:
#data 0x60C3
#data 0x4F267F08
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00096EF6
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x28000000
#data 0x80000000

#align4
loc_8c194588:
#data bank1c.loc_8c1c5B80

loc_8c19458C:
#data bank1c.loc_8c1c5B64
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8c1945A0:
#data 0x2FD62FE6
#data 0x4F222FC6
#data 0xDE257FFC
#data 0x4C086C43
#data 0x60E32F52
#data 0x63E27008
#data 0x5DE1E200
#data 0x1E216337
#data 0x2D3900CE
#data 0x890EC801
#data 0xD31EE010
#data 0x430BF4E6
#data 0xD31D64F2
#data 0x64F2430B
#data 0x730863E3
#data 0x613233CC
#data 0x2129E2FE
#data 0x2312

loc_8c1945E6:
#data 0xE302
#data 0x890323D8
#data 0xE020D317
#data 0xF4E6430B

#align4
loc_8c1945F4:
#data 0x22D8E204
#data 0xD2158903
#data 0x420B55E7
#data 0x54E6

loc_8c194602:
#data 0xE308
#data 0x890223D8
#data 0x430BD312
#data 0x54E5

loc_8c19460E:
#data 0xE210
#data 0x890222D8
#data 0x420BD210
#data 0x54E9

loc_8c19461A:
#data 0xE320
#data 0x890223D8
#data 0x430BD30E
#data 0x54EA

loc_8c194626:
#data 0xE240
#data 0x89022D28
#data 0x410BD10C
#data 0x54EB

loc_8c194632:
#data 0xE000
#data 0x4F267F04
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x8C344C0C

#align4
loc_8c194644:
#data bank1a.loc_8c1a7700

loc_8c194648:
#data bank18.loc_8c18FCC0

loc_8c19464C:
#data bank1a.loc_8c1a77A0

loc_8c194650:
#data bank1a.loc_8c1a7760

loc_8c194654:
#data bank1a.loc_8c1a7A60

loc_8c194658:
#data bank1a.loc_8c1a7EC0

loc_8c19465C:
#data bank1a.loc_8c1a7ED8

loc_8c194660:
#data bank1a.loc_8c1a79C0
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c194680:
sts.l pr,@-r15
mov.l @(loc_8c19477C,pc),r3 ; r3 set to 0x8C1AA578
jsr @r3
nop
mov.l @(loc_8c194780,pc),r4 ; r4 set to 0x8C344C3C
mov 0x00,r5 ; r5 set to 0x00
mov.l @(loc_8c194784,pc),r2 ; r2 set to 0x8C129728
mov.w @(loc_8c194774,pc),r6 ; r6 set to 0x560
jmp @r2
lds.l @r15+,pr

loc_8c194694:
mov.w @(loc_8c194776,pc),r0 ; r0 set to 0x9C
mov.l @(r0,r4),r3
mov.l r3,@r5
mov.l @(r0,r4),r3
mov 0x40,r0 ; r0 set to 0x40
mov.l @(r0,r4),r2
add 0x58,r0 ; r0 set to 0x98
sub r3,r2
mov.l r2,@r6
mov.l @(0x18,r4),r1
mov.l @(r0,r4),r3
sub r3,r1
mov.l r1,@r7
rts
mov.l @(0x3C,r4),r0
;-------------------------------------------------------------------------------

loc_8c1946B2:
mov.w @(loc_8c194776,pc),r0 ; r0 set to 0x9C
mov.l @(r0,r4),r3
add r6,r3
mov.l r3,@(r0,r4)
add 0xFC,r0 ; r0 set to 0x98
mov.l @(r0,r4),r2
add r6,r2
rts
mov.l r2,@(r0,r4)
;-------------------------------------------------------------------------------

#align4
loc_8c1946C4:
#data 0x2FD62FE6
#data 0x7FF04F22
#data 0x1F439D54
#data 0x2F52E400
#data 0x1F61D52A
#data 0x1F72E608

#align4
loc_8c1946DC:
#data 0x031A04D7
#data 0x6231335C
#data 0x89022228
#data 0x34637401
#data 0x8BF6

loc_8c1946EE:
#data 0x6043
#data 0x89118808
#data 0xD32304D7
#data 0x0E1A66D3
#data 0xE5003E5C
#data 0x64E3430B
#data 0xE201D320
#data 0x2E21430B
#data 0x22286203
#data 0x1E028F04
#data 0x64E3B01C

#align4
loc_8c194718:
#data 0xE000A015

#align4
loc_8c19471C:
#data 0xE04052F3
#data 0x63F21E2E
#data 0x52F11E3F
#data 0xE0440E26
#data 0xD21753F2
#data 0x70440E36
#data 0x70040E26
#data 0x0EE6D315
#data 0x0E367004
#data 0x0EE67004
#data 0x60E3

loc_8c194746:
#data 0x7F10
#data 0x6DF64F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c194750:
#data 0x6E432FE6
#data 0x2EE84F22
#data 0xD20E8909
#data 0x54E2420B
#data 0xE500D308
#data 0x430B9608
#data 0xE20064E3
#data 0x2E21

loc_8c19476E:
#data 0x4F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------

loc_8c194774:
#data 0x0560

loc_8c194776:
#data 0x009C
#data 0x000000AC

#align4
loc_8c19477C:
#data bank1a.loc_8c1aA578

loc_8c194780:
#data 0x8C344C3C

#align4
loc_8c194784:
#data bank12.loc_8c129728

loc_8c194788:
#data bank1a.loc_8c1aA582

loc_8c19478C:
#data loc_8c194694

loc_8c194790:
#data loc_8c1946B2

loc_8c194794:
#data bank1a.loc_8c1aA612

loc_8c194798:
#data 0x2FD62FE6
#data 0x4F222FC6
#data 0x6E437FFC
#data 0x731063E3
#data 0x721862E3
#data 0x67E36D63
#data 0x6C53E001
#data 0x81E165D3
#data 0x2F36770C
#data 0x2F2663E3
#data 0x731462E3
#data 0x720E2F36
#data 0x63E32F26
#data 0x62E3730F
#data 0x720D2F36
#data 0xD3622F26
#data 0x761866F3
#data 0x64C3430B
#data 0x44116403
#data 0x7F188F09
#data 0x66E3D25E
#data 0x761C65D3
#data 0x64C3420B
#data 0x44116403
#data 0x8901

loc_8c1947FA:
#data 0xA04E
#data 0xE000

loc_8c1947FE:
#data 0x85EE
#data 0xD35955E5
#data 0x430B6603
#data 0x62E354E2
#data 0x723463E3
#data 0x733066E3
#data 0x62E32F26
#data 0x63E32F36
#data 0x7328722C
#data 0x62E32F26
#data 0xD3512F36
#data 0x722667E3
#data 0x762065D3
#data 0x77242F26
#data 0x64C3430B
#data 0xE1587F14
#data 0x31EC84EE
#data 0xE15C2102
#data 0x31EC84EF
#data 0xE0602102
#data 0x0E3653E4
#data 0x52EFE064
#data 0xE0400E26
#data 0xE06803EE
#data 0xE0440E36
#data 0xE06C02EE
#data 0x737C63E3
#data 0xE0480E26
#data 0xE04A02ED
#data 0x62E32321
#data 0xE07E03ED
#data 0x70020E35
#data 0x724C64E3
#data 0x701C0E26
#data 0x6233E300
#data 0xD3390E36
#data 0x6523700C
#data 0xE6040E25
#data 0x744C430B
#data 0x60F1

loc_8c19489A:
#data 0x7F04
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1948A6:
mov.l r14,@-r15
mov r5,r14
mov.l r13,@-r15
mov 0xF8,r2 ; r2 set to 0xFFFFFFF8
mov.l r12,@-r15
mov r4,r12
sts.l pr,@-r15
mov.w @r14,r4
extu.w r4,r4
mov r4,r3
shad r2, r3
mov r4,r1
mov.l @(loc_8c194974,pc),r2 ; r2 set to 0xFF00
shll8 r1
extu.b r3,r3
mov r3,r4
and r2,r1
mov.l @(loc_8c194978,pc),r3 ; r3 set to 0x8000
or r1,r4
extu.w r4,r4
cmp/eq r3,r4
bf/s loc_8c1948E4
mov r6,r13
lds.l @r15+,pr
mov r12,r4
mov r13,r6
mov r14,r5
mov.l @r15+,r12
mov.l @r15+,r13
bra loc_8c194798
mov.l @r15+,r14

loc_8c1948E4:
mov.l @(loc_8c19497C,pc),r1 ; r1 set to 0x8C1A9F16
jsr @r1
mov r14,r4
tst r0,r0
bt loc_8c194900
lds.l @r15+,pr
mov r12,r4
mov r13,r6
mov.l @(loc_8c194980,pc),r2 ; r2 set to 0x8C1A9D3C
mov r14,r5
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_8c194900:
mov.l @(loc_8c194984,pc),r2 ; r2 set to 0x8C1AA50C
jsr @r2
mov r14,r4
tst r0,r0
bt loc_8c19491C
lds.l @r15+,pr
mov r12,r4
mov r13,r6
mov.l @(loc_8c194988,pc),r2 ; r2 set to 0x8C1AA0F0
mov r14,r5
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_8c19491C:
mov.l @(loc_8c19498C,pc),r2 ; r2 set to 0x8C1A9102
jsr @r2
mov r14,r4
tst r0,r0
bt loc_8c194938
lds.l @r15+,pr
mov r12,r4
mov r13,r6
mov.l @(loc_8c194990,pc),r2 ; r2 set to 0x8C1A91CE
mov r14,r5
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_8c194938:
mov.l @(loc_8c194994,pc),r2 ; r2 set to 0x8C1A9730
jsr @r2
mov r14,r4
tst r0,r0
bt loc_8c194954
lds.l @r15+,pr
mov r12,r4
mov r13,r6
mov.l @(loc_8c194998,pc),r2 ; r2 set to 0x8C1A9826
mov r14,r5
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_8c194954:
lds.l @r15+,pr
mov 0x00,r0 ; r0 set to 0x00
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8c194960:
#data bank17.loc_8c17E860

loc_8c194964:
#data bank17.loc_8c17E980

loc_8c194968:
#data bank1a.loc_8c1aA5FA

loc_8c19496C:
#data bank17.loc_8c17E9E6

loc_8c194970:
#data bank12.loc_8c129728

loc_8c194974:
#data 0x0000FF00

#align4
loc_8c194978:
#data 0x00008000

#align4
loc_8c19497C:
#data bank1a.loc_8c1a9F16

loc_8c194980:
#data bank1a.loc_8c1a9D3C

loc_8c194984:
#data bank1a.loc_8c1aA50C

loc_8c194988:
#data bank1a.loc_8c1aA0F0

loc_8c19498C:
#data bank1a.loc_8c1a9102

loc_8c194990:
#data bank1a.loc_8c1a91CE

loc_8c194994:
#data bank1a.loc_8c1a9730

loc_8c194998:
#data bank1a.loc_8c1a9826


loc_8c19499C:
mov.w @(loc_8c194ACC,pc),r0 ; r0 set to 0x88
mov.l r5,@(r0,r4)
add 0x04,r0 ; r0 set to 0x8C
rts
mov.l r6,@(r0,r4)
;-------------------------------------------------------------------------------
#data 0x9092
#data 0x70040456
#data 0x0466000B
;-------------------------------------------------------------------------------

loc_8c1949B0:
rts
mov.l @(0x3C,r4),r0
;-------------------------------------------------------------------------------

loc_8c1949B4:
mov.w @(loc_8c194AD0,pc),r0 ; r0 set to 0xA8
rts
mov.w @(r0,r4),r0
;-------------------------------------------------------------------------------

loc_8c1949BA:
rts
mov.l @(0x14,r4),r0
;-------------------------------------------------------------------------------

loc_8c1949BE:
rts
mov.b @(0x0E,r4),r0
;-------------------------------------------------------------------------------

loc_8c1949C2:
mov.w @(loc_8c194AD0,pc),r0 ; r0 set to 0xA8
mov.w @(r0,r4),r3
tst r3,r3
bt loc_8c1949F8
mov.w @(r0,r4),r0 ; r0 ??? bc r4 is ???
cmp/eq 0x02,r0
bf loc_8c1949E4
mov.w @(loc_8c194AD2,pc),r0 ; r0 set to 0xAA
mov.w @(r0,r4),r0 ; r0 ??? bc r4 is ???
cmp/eq 0x02,r0
bt loc_8c1949F4
mov.w @(loc_8c194AD2,pc),r0 ; r0 set to 0xAA
mov.w @(r0,r4),r0 ; r0 ??? bc r4 is ???
cmp/eq 0x01,r0
bf loc_8c1949F8
rts
mov 0x08,r0
;-------------------------------------------------------------------------------

loc_8c1949E4:
mov.w @(loc_8c194AD0,pc),r0 ; r0 set to 0xA8
mov.w @(r0,r4),r0 ; r0 ??? bc r4 is ???
cmp/eq 0x01,r0
bf loc_8c1949F8
mov.w @(loc_8c194AD2,pc),r0 ; r0 set to 0xAA
mov.w @(r0,r4),r0 ; r0 ??? bc r4 is ???
cmp/eq 0x02,r0
bf loc_8c1949F8

loc_8c1949F4:
rts
mov 0x04,r0
;-------------------------------------------------------------------------------

loc_8c1949F8:
mov 0x10,r0 ; r0 set to 0x10
rts
nop
;-------------------------------------------------------------------------------

loc_8c1949FE:
rts
mov.l @(0x10,r4),r0
;-------------------------------------------------------------------------------

loc_8c194A02:
rts
mov.b @(0x0F,r4),r0
;-------------------------------------------------------------------------------

loc_8c194A06:
rts
mov.l @(0x18,r4),r0
;-------------------------------------------------------------------------------

loc_8c194A0A:
rts
mov.w @(0x1C,r4),r0
;-------------------------------------------------------------------------------

loc_8c194A0E:
rts
mov.l @(0x20,r4),r0
;-------------------------------------------------------------------------------

loc_8c194A12:
mov 0x24,r0 ; r0 set to 0x24
rts
mov.w @(r0,r4),r0
;-------------------------------------------------------------------------------

loc_8c194A18:
rts
mov.l @(0x28,r4),r0
;-------------------------------------------------------------------------------

loc_8c194A1C:
rts
mov.l @(0x2C,r4),r0
;-------------------------------------------------------------------------------

loc_8c194A20:
rts
mov.l @(0x30,r4),r0
;-------------------------------------------------------------------------------

loc_8c194A24:
rts
mov.l @(0x34,r4),r0
;-------------------------------------------------------------------------------

loc_8c194A28:
rts
mov.l @(0x04,r4),r0
;-------------------------------------------------------------------------------

loc_8c194A2C:
mov.w @(loc_8c194AD0,pc),r0 ; r0 set to 0xA8
sts.l pr,@-r15
mov.w @(r0,r4),r3
tst r3,r3
bf loc_8c194A46
mov 0x50,r0 ; r0 set to 0x50
mov.l @(loc_8c194ADC,pc),r3 ; r3 set to 0x8C129128
mov.l r5,@(r0,r4)
mov.b @(0x0F,r4),r0
jsr @r3
mov r6,r1
bra loc_8c194A66
nop

loc_8c194A46:
#data 0xE050
#data 0x844D0456
#data 0x89004011
#data 0x7007

loc_8c194A52:
#data 0x4021
#data 0x4021D221
#data 0x63034021
#data 0x0307844E
#data 0x420B001A
#data 0x6163


loc_8c194A66:
mov 0x54,r1 ; r1 set to 0x54
add r4,r1 ; r1 ??? bc r4 is ???
mov.l r0,@r1
mov 0x00,r5 ; r5 set to 0x00
mov.w @(loc_8c194AD4,pc),r0 ; r0 set to 0x84
mov.l r5,@(r0,r4)
add 0x1C,r0 ; r0 set to 0xA0
mov.l r5,@(r0,r4)
add 0x04,r0 ; r0 set to 0xA4
lds.l @r15+,pr
rts
mov.l r5,@(r0,r4)
;-------------------------------------------------------------------------------

loc_8c194A7E:
#data 0x5341
#data 0x8B012338
#data 0x1431E301

#align4
loc_8c194A88:
#data 0x0009000B
;-------------------------------------------------------------------------------

loc_8c194A8C:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8c194AE0,pc),r3 ; r3 set to 0x8C1AA67C
mov.l r4,@r15
jsr @r3
mov.l @(0x08,r4),r4
mov.l @r15,r2
mov 0x00,r3 ; r3 set to 0x00
mov.l r3,@(0x04,r2)
add 0x04,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c194AA6:
#data 0x2FE6
#data 0x4F226E43
#data 0x880350E1
#data 0xD20C8B06
#data 0x54E2420B
#data 0xE400900D
#data 0x1E410E46

#align4
loc_8c194AC0:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c194AC6:
mov.w @(loc_8c194AD8,pc),r0 ; r0 set to 0xA4
rts
mov.l @(r0,r4),r0
;-------------------------------------------------------------------------------

loc_8c194ACC:
#data 0x0088
#data 0x0090

loc_8c194AD0:
#data 0x00A8

loc_8c194AD2:
#data 0x00AA

loc_8c194AD4:
#data 0x0084
#data 0x009C

loc_8c194AD8:
#data 0x00A4
#data 0x0000

#align4
loc_8c194ADC:
#data bank12.loc_8c129128

loc_8c194AE0:
#data bank1a.loc_8c1aA67C

loc_8c194AE4:
#data bank1a.loc_8c1aA692


loc_8c194AE8:
mov.w @(loc_8c194C24,pc),r0 ; r0 set to 0xA0
rts
mov.l @(r0,r4),r0
;-------------------------------------------------------------------------------
#data 0x000B
#data 0x5042
;-------------------------------------------------------------------------------

loc_8c194AF2:
#data 0x6643
#data 0x76502FE6
#data 0xE0504F22
#data 0x53682F56
#data 0x43005765
#data 0x373C66F2
#data 0x054ED347
#data 0x430B5E42
#data 0x64E364E3
#data 0x4F267F04
#data 0x422BD244
#data 0x6EF6

loc_8c194B1E:
#data 0x2FE6
#data 0x4F226643
#data 0x7650E050
#data 0x53682F56
#data 0x5E42054E
#data 0x54674300
#data 0x44005765
#data 0xD33D373C
#data 0x2F46347C
#data 0x460056F1
#data 0x64E3430B
#data 0x7F0864E3
#data 0xD2374F26
#data 0x6EF6422B

#align4
loc_8c194B54:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x7FFC4F22
#data 0x75506543
#data 0x5151D332
#data 0x5052430B
#data 0x6E035A5A
#data 0x61A35654
#data 0x316CD32E
#data 0x71FF5B58
#data 0x57565D59
#data 0x430B2F12
#data 0xD22B6063
#data 0x61F26C03
#data 0x6063420B
#data 0x696337B8
#data 0x316C6173
#data 0x3908D325
#data 0x71FF79FF
#data 0x6063430B
#data 0x3C736703
#data 0x021A0767
#data 0x2F228D06
#data 0x32985156
#data 0x321332BC
#data 0x77018900

#align4
loc_8c194BC0:
#data 0x89003AD3
#data 0x3D9C

loc_8c194BC6:
#data 0xD31B
#data 0x430B61D3
#data 0x66036063
#data 0x8B003E67
#data 0x6E63

loc_8c194BD6:
#data 0x3EC7
#data 0x6EC38B00

#align4
loc_8c194BDC:
#data 0x8F013E77
#data 0x6E735052

#align4
loc_8c194BE4:
#data 0x8B098802
#data 0x7F0465E3
#data 0x69F64F26
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6AF91

#align4
loc_8c194BFC:
#data 0x7F0465E3
#data 0x69F64F26
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6AF71

#align4
loc_8c194C10:
#data 0x8B054615

#align4
loc_8c194C14:
#data 0x76FF6355
#data 0x24314615
#data 0x74028DFA

#align4
loc_8c194C20:
#data 0x0009000B
;-------------------------------------------------------------------------------

loc_8c194C24:
#data 0x00A0
#data 0x0000

#align4
loc_8c194C28:
#data bank1a.loc_8c1aA62E

loc_8c194C2C:
#data bank1a.loc_8c1aA66A

loc_8c194C30:
#data bank1a.loc_8c1aA64C

loc_8c194C34:
#data bank12.loc_8c129128

loc_8c194C38:
#data bank12.loc_8c1292D4

loc_8c194C3C:
#data 0x4F222FE6
#data 0x1F517FF4
#data 0x2F626E43
#data 0x1F726673
#data 0x450055F1
#data 0xBFDD35EC
#data 0x55F164E3
#data 0x56F263F2
#data 0x353C6433
#data 0x44004500
#data 0x35EC34EC
#data 0x4F267F0C
#data 0x6EF6AFD0

#align4
loc_8c194C70:
#data 0x2F427FF4
#data 0x1F516673
#data 0x55F11F72
#data 0x450063F2
#data 0x6433353C
#data 0x7F0CAFC4

#align4
loc_8c194C88:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x4F222F86
#data 0x6E437FF4
#data 0x5BE47E50
#data 0xE0406C43
#data 0x65B353E3
#data 0x54EA1F32
#data 0xE0440ACE
#data 0xD32B354C
#data 0x5DE875FF
#data 0x615359E5
#data 0x430B08CE
#data 0xD32860B3
#data 0x2F026153
#data 0x60B3430B
#data 0x320862B3
#data 0x72FFD325
#data 0x430B1F21
#data 0x650354C2
#data 0x0B57D320
#data 0x430B011A
#data 0x62F250E2
#data 0x32576403
#data 0x51F18901
#data 0x3418

loc_8c194CF2:
#data 0x9032
#data 0x3DA33D4C
#data 0x53F20C46
#data 0x0357902E
#data 0x8F20051A
#data 0x50E20C56
#data 0x8F0E8802
#data 0x65A33DA8
#data 0x67D36493
#data 0x7F0C6683
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0xAF896DF6
#data 0x6EF6

loc_8c194D2A:
#data 0x65A3
#data 0x67D36493
#data 0x7F0C6683
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0xAF956DF6
#data 0x6EF6

loc_8c194D46:
#data 0x7F0C
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00A06EF6
#data 0x000000A4

#align4
loc_8c194D60:
#data bank12.loc_8c129128

loc_8c194D64:
#data bank12.loc_8c1292D4

loc_8c194D68:
#data bank1a.loc_8c1aA6A0

loc_8c194D6C:
#data 0x6E432FE6
#data 0x6D432FD6
#data 0x50E14F22
#data 0x8F148801
#data 0xD2387D50
#data 0x54E2420B
#data 0x8B0E2008
#data 0x66D39064
#data 0x67D365D3
#data 0x700402EE
#data 0x77287520
#data 0x420B7624
#data 0xBED904EE
#data 0xE20264E3
#data 0x1E21

loc_8c194DA6:
#data 0x50E1
#data 0x8B178802
#data 0x420BD22D
#data 0xD32B54E2
#data 0x54E2430B
#data 0x8B0F8803
#data 0x64E3BF64
#data 0x420BD229
#data 0x904654E2
#data 0x701003EE
#data 0x700406EE
#data 0x70F005EE
#data 0x04EE430B
#data 0x1E31E303

#align4
loc_8c194DDC:
#data 0x6DF64F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------

loc_8c194DE4:
mov.w @(loc_8c194E58,pc),r0 ; r0 set to 0xA8
mov.w @(r0,r4),r2
tst r2,r2
bt loc_8c194D6C
mov.w @(r0,r4),r0 ; r0 ??? bc r4 is ???
cmp/eq 0x02,r0
bf loc_8c194DF8
mov.l @(loc_8c194E6C,pc),r3 ; r3 set to 0x8C1A9E20
jmp @r3
nop

loc_8c194DF8:
mov.w @(loc_8c194E58,pc),r0 ; r0 set to 0xA8
mov.w @(r0,r4),r0 ; r0 ??? bc r4 is ???
cmp/eq 0x03,r0
bf loc_8c194E06
mov.l @(loc_8c194E70,pc),r3 ; r3 set to 0x8C1A94F2
jmp @r3
nop

loc_8c194E06:
mov.w @(loc_8c194E58,pc),r0 ; r0 set to 0xA8
mov.w @(r0,r4),r0 ; r0 ??? bc r4 is ???
cmp/eq 0x04,r0
bf loc_8c194E14
mov.l @(loc_8c194E74,pc),r3 ; r3 set to 0x8C1A9C40
jmp @r3
nop

loc_8c194E14:
mov.w @(loc_8c194E58,pc),r0 ; r0 set to 0xA8
mov.w @(r0,r4),r0 ; r0 ??? bc r4 is ???
cmp/eq 0x01,r0
bf loc_8c194E22
mov.l @(loc_8c194E78,pc),r3 ; r3 set to 0x8C1AA540
jmp @r3
nop

loc_8c194E22:
rts
nop
;-------------------------------------------------------------------------------
#data 0x2FE6
#data 0x2FC62FD6
#data 0xD4139C16
#data 0x9D124F22
#data 0x6E433C4C
#data 0x604164E3
#data 0x8B018801
#data 0x0009BFD0
#data 0x3EC23EDC
#data 0x4F268BF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x00900088

loc_8c194E58:
#data 0x00A8
#data 0x00AC
#data 0x00000560

#align4
loc_8c194E60:
#data bank1a.loc_8c1aA62A

loc_8c194E64:
#data bank1a.loc_8c1aA6C4

loc_8c194E68:
#data bank1a.loc_8c1aA692

loc_8c194E6C:
#data bank1a.loc_8c1a9E20

loc_8c194E70:
#data bank1a.loc_8c1a94F2

loc_8c194E74:
#data bank1a.loc_8c1a9C40

loc_8c194E78:
#data bank1a.loc_8c1aA540
#data 0x8C344C3C


loc_8c194E80:
add 0xFC,r15
stc sr, r0
mov.w @(loc_8c194E9A,pc),r3 ; r3 set to 0xFF0F
shlr2 r0
shlr2 r0
and 0x0F,r0
mov.w r0,@r15
stc sr, r0
and r3,r0
or 0xF0,r0
ldc r0, sr
bra loc_8c194E9C
nop

loc_8c194E9A:
#data 0xFF0F


loc_8c194E9C:
mova @(loc_8c194EAC,pc),r0  ; r0 init to 0x8C194EAC
mov.l @(loc_8c194EA8,pc),r1 ; r1 set to 0xA0000000
or r0,r1 ; r1 ??
jmp @r1
nop
#data 0x0009

#align4
loc_8c194EA8:
#data 0xA0000000

#align4
loc_8c194EAC:
#data 0xD51AD21B
#data 0x40096022
#data 0x40014009
#data 0x8801C901
#data 0xE4008F12
#data 0x66439724
#data 0x76206263
#data 0x225B3672
#data 0x22428FFA
#data 0x971C961E
#data 0x76206263
#data 0x225B3672
#data 0x22428FFA
#data 0x0009A008
#data 0x66439715
#data 0x76206363
#data 0x235B3672
#data 0x23428FFA
#data 0x030260F1
#data 0x920B600D
#data 0x4008C90F
#data 0x40082329
#data 0x400E203B
#data 0x0009A00A
#data 0x30001000
#data 0x40002000
#data 0x0000FF0F
#data 0xF4000000
#data 0xFF00001C
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x7F04000B
;-------------------------------------------------------------------------------
#data 0x7FFC4F22
#data 0x430BD316
#data 0x93272F42
#data 0x922661F2
#data 0xD4142139
#data 0x2412212B
#data 0x6042E1F7
#data 0xCB082019
#data 0x7F042402
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c194F5E:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
add 0xF8,r15
mov r5,r13
tst r13,r13
bf/s loc_8c194F74
mov r4,r12
mov.l @(loc_8c194F9C,pc),r3 ; r3 set to 0x8C195180
jmp @r3
nop

loc_8c194F74:
mov.l @(loc_8c194FA4,pc),r2 ; r2 set to 0x30000
mov.l @(loc_8c194FA0,pc),r14 ; r14 set to 0x1FFFFFE0
cmp/hs r2,r13
bf/s loc_8c194F84
and r12,r14 ; r14 ??? bc r12 is ???
mov.l @(loc_8c194FA8,pc),r3 ; r3 set to 0x8C194FC2
jmp @r3
nop

loc_8c194F84:
mov 0x1F,r5 ; r5 set to 0x1F
mov r14,r4
and r12,r5 ; r5 ??? bc r12 is ???
add r13,r5
bra loc_8c194FAC
nop
#data 0x0800F7FF

#align4
loc_8c194F94:
#data loc_8c194E80
#data 0xFF00001C

#align4
loc_8c194F9C:
#data loc_8c195180

loc_8c194FA0:
#data 0x1FFFFFE0

#align4
loc_8c194FA4:
#data 0x00030000

#align4
loc_8c194FA8:
#data loc_8c194FC2


loc_8c194FAC:
add 0x1F,r5
shlr2 r5
shlr2 r5
shlr r5

loc_8c194FB4:
ocbi @r4
dt r5
bf/s loc_8c194FB4
add 0x20,r4
mov.l @(loc_8c194FDC,pc),r2 ; r2 set to 0x8C195180, r2 set to 0x8C195180
jmp @r2
nop

loc_8c194FC2:
stc sr, r0
mov.w @(loc_8c194FDA,pc),r3 ; r3 set to 0xFF0F
shlr2 r0
shlr2 r0
and 0x0F,r0
mov.w r0,@r15
stc sr, r0
and r3,r0
or 0xF0,r0
ldc r0, sr
bra loc_8c194FE0
nop

loc_8c194FDA:
#data 0xFF0F

#align4
loc_8c194FDC:
#data loc_8c195180


loc_8c194FE0:
mova @(loc_8c194FF0,pc),r0  ; r0 init to 0x8C194FF0
mov.l @(loc_8c194FEC,pc),r1 ; r1 set to 0xA0000000
or r0,r1 ; r1 ??
jmp @r1
nop
#data 0x0009

#align4
loc_8c194FEC:
#data 0xA0000000

#align4
loc_8c194FF0:
#data 0x3CDCD20B
#data 0xD309E1F9
#data 0xE5016422
#data 0x6D437CFF
#data 0x441D4D09
#data 0x24594D09
#data 0x1F414D01
#data 0x64E32C39
#data 0x65C32D59
#data 0xA00566D3
#data 0x00000009
#data 0x1FFFFFE0
#data 0xFF00001C
#data 0x2F962FA6
#data 0xD0042F86
#data 0xD905D804
#data 0xD206DA05
#data 0xA01CD306
#data 0x00000009
#data 0x00000000
#data 0xF4000000
#data 0x1FFFFC00
#data 0x00001FFF
#data 0x00002000
#data 0x00000FE0
#data 0x218B6103
#data 0x21996112
#data 0x3416210B
#data 0x31568902
#data 0x01938900
#data 0x89012668
#data 0x89023300
#data 0x32067020
#data 0x68F689EE
#data 0x6AF669F6
#data 0x233853F1
#data 0xD3048B02
#data 0x0009432B
#data 0x65C364E3
#data 0xA00366D3
#data 0x00000009

#align4
loc_8c195094:
#data loc_8c195102
#data 0x2FA62FB6
#data 0x2F862F96
#data 0xD804D003
#data 0xDA05D904
#data 0xD306D205
#data 0x0009A01F
#data 0x00002000
#data 0xF4000000
#data 0x1FFFFC00
#data 0x00001FFF
#data 0x00004000
#data 0x00002FE0
#data 0x218B6103
#data 0x21996112
#data 0x6B03210B
#data 0x21BB2BA9
#data 0x341621CB
#data 0x31568902
#data 0x01938900
#data 0x89012668
#data 0x89023300
#data 0x32067020
#data 0x68F689EA
#data 0x6AF669F6
#data 0x00096BF6
#data 0x422BD203
#data 0x0009


loc_8c195102:
mov r14,r4
mov r12,r5
mov r13,r6
bra loc_8c195110
nop

#align4
loc_8c19510C:
#data loc_8c19516C


loc_8c195110:
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
mov.l @(loc_8c195128,pc),r0 ; r0 set to 0x2000
mov.l @(loc_8c19512C,pc),r8 ; r8 set to 0xF4000000
mov.l @(loc_8c195130,pc),r9 ; r9 set to 0x1FFFFC00
mov.l @(loc_8c195134,pc),r10 ; r10 set to 0x1FFF
mov.l @(loc_8c195138,pc),r2 ; r2 set to 0x4000
mov.l @(loc_8c19513C,pc),r3 ; r3 set to 0x2FE0
bra loc_8c19515E
nop

#align4
loc_8c195128:
#data 0x00002000

#align4
loc_8c19512C:
#data 0xF4000000

#align4
loc_8c195130:
#data 0x1FFFFC00

#align4
loc_8c195134:
#data 0x00001FFF

#align4
loc_8c195138:
#data 0x00004000

#align4
loc_8c19513C:
#data 0x00002FE0

#align4
loc_8c195140:
#data 0x218B6103
#data 0x21996112
#data 0x3416210B
#data 0x31568902
#data 0x01938900

#align4
loc_8c195154:
#data 0x89012668
#data 0x89023300

loc_8c19515C:
#data 0x7020

loc_8c19515E:
#data 0x3206
#data 0x89EE

loc_8c195162:
#data 0x68F6
#data 0x6AF669F6
#data 0x00096BF6

#align4
loc_8c19516C:
#data 0x030260F1
#data 0x920A600D
#data 0x4008C90F
#data 0x40082329
#data 0x400E203B


loc_8c195180:
add 0x08,r15
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0xFF0F


loc_8c19518C:
rts
nop
;-------------------------------------------------------------------------------

loc_8c195190:
rts
nop
;-------------------------------------------------------------------------------

loc_8c195194:
stc sr, r0
mov.w @(loc_8c1951C2,pc),r3 ; r3 set to 0xFF0F
shlr2 r0
shlr2 r0
and 0x0F,r0
mov.l r0,@r4
stc sr, r0
and r3,r0
or 0xF0,r0
ldc r0, sr
rts
nop
;-------------------------------------------------------------------------------

loc_8c1951AC:
mov.l @r4,r0
stc sr, r2
mov.w @(loc_8c1951C2,pc),r1 ; r1 set to 0xFF0F
and 0x0F,r0
shll2 r0
and r1,r2
shll2 r0
or r2,r0
ldc r0, sr
rts
nop
;-------------------------------------------------------------------------------

loc_8c1951C2:
#data 0xFF0F


loc_8c1951C4:
mov.l @(loc_8c195228,pc),r6 ; r6 set to 0x8C1C98BC
tst r4,r4
mov.l @(loc_8c195224,pc),r7 ; r7 set to 0x8C1C98B8
bf loc_8c1951D4
mov 0x00,r4 ; r4 set to 0x00
mov.l r4,@r7 ; r7 ??
bra loc_8c1951D8
mov.l r4,@r6

loc_8c1951D4:
mov.l r4,@r7
mov.l r5,@r6

loc_8c1951D8:
mov.l @(loc_8c195230,pc),r3 ; r3 set to 0x8C129728, r3 set to 0x8C129728
mov.l @(loc_8c19522C,pc),r4 ; r4 set to 0x8C34519C, r4 set to 0x8C34519C
mov.w @(loc_8c195220,pc),r6 ; r6 set to 0x100, r6 set to 0x100
jmp @r3
mov 0x00,r5

loc_8c1951E2:
mov.l r14,@-r15
mov 0x03,r5 ; r5 set to 0x03
sts.l pr,@-r15
mov r15,r0
add 0x08,r0
add 0x04,r0
tst r0,r5
bt loc_8c1951FA
mov r15,r5 ; r5 ??? bc r15 is ???
add 0x08,r5
bra loc_8c195200
add 0x08,r5

loc_8c1951FA:
#data 0x65F3
#data 0x75047508

#align4
loc_8c195200:
#data 0x6653D30C
#data 0x430BD409
#data 0xD20655F2
#data 0x2EE86E22
#data 0xD1058903
#data 0x4E0BD505
#data 0x6412

loc_8c19521A:
#data 0x4F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------

loc_8c195220:
#data 0x0100
#data 0x0000

#align4
loc_8c195224:
#data bank1c.loc_8c1c98B8

loc_8c195228:
#data bank1c.loc_8c1c98BC

loc_8c19522C:
#data 0x8C34519C

#align4
loc_8c195230:
#data bank12.loc_8c129728

loc_8c195234:
#data bank12.loc_8c129804


loc_8c195238:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8c19534C,pc),r4 ; r4 set to 0x8C3455DC
mov.w @(loc_8c195342,pc),r6 ; r6 set to 0x800
mov.l @(loc_8c195348,pc),r14 ; r14 set to 0x8C129728
jsr @r14
mov 0x00,r5 ; r5 set to 0x00
mov.l @(loc_8c195350,pc),r4 ; r4 set to 0x8C345DDC
mov 0x40,r6 ; r6 set to 0x40
jsr @r14
mov 0x00,r5 ; r5 set to 0x00
mov.l @(loc_8c195354,pc),r4 ; r4 set to 0x8C34529C
mov.w @(loc_8c195344,pc),r6 ; r6 set to 0x340
jsr @r14
mov 0x00,r5 ; r5 set to 0x00
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c19525C:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8c19534C,pc),r4 ; r4 set to 0x8C3455DC
mov.w @(loc_8c195342,pc),r6 ; r6 set to 0x800
mov.l @(loc_8c195348,pc),r14 ; r14 set to 0x8C129728
jsr @r14
mov 0x00,r5 ; r5 set to 0x00
mov.l @(loc_8c195350,pc),r4 ; r4 set to 0x8C345DDC
mov 0x40,r6 ; r6 set to 0x40
jsr @r14
mov 0x00,r5 ; r5 set to 0x00
mov.l @(loc_8c195354,pc),r4 ; r4 set to 0x8C34529C
mov.w @(loc_8c195344,pc),r6 ; r6 set to 0x340
jsr @r14
mov 0x00,r5 ; r5 set to 0x00
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8c195280:
#data 0x7FFC2FC6
#data 0x4411644F
#data 0xE0008903
#data 0x000B7F04
#data 0x6CF6
;-------------------------------------------------------------------------------

loc_8c195292:
#data 0xD42F
#data 0x9056E500
#data 0x71406143
#data 0x3412D72B
#data 0x66432F42
#data 0xEC018D0C

#align4
loc_8c1952A8:
#data 0x22286242
#data 0x65638B03
#data 0xA0051571
#data 0x25C2

loc_8c1952B6:
#data 0x7408
#data 0x370C3412
#data 0x76088FF4

#align4
loc_8c1952C0:
#data 0x7F046053
#data 0x6CF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1952C8:
#data 0x6E432FE6
#data 0x2EE84F22
#data 0xD21D890B
#data 0x9636E500
#data 0x54E1420B
#data 0xE500D31A
#data 0x430BE608
#data 0xE20064E3
#data 0x2E22

loc_8c1952EA:
#data 0x4F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1952F0:
#data 0x9327D718
#data 0x64736573
#data 0x3472373C
#data 0xE6008D09

#align4
loc_8c195300:
#data 0x20088444
#data 0xA0048B01
#data 0x6653

loc_8c19530A:
#data 0x7468
#data 0x8FF73472
#data 0x7568

loc_8c195312:
#data 0x000B
#data 0x6063
;-------------------------------------------------------------------------------

loc_8c195316:
#data 0x2FE6
#data 0x2FC62FD6
#data 0x2FA62FB6
#data 0x2F862F96
#data 0x7FF84F22
#data 0xDC0BE301
#data 0x3A336A43
#data 0xE1028B02
#data 0x8B133A17

loc_8c195338:
#data 0xD308

loc_8c19533A:
#data 0x4C0B
#data 0xA0942F36
#data 0x7F04

loc_8c195342:
#data 0x0800

loc_8c195344:
#data 0x0340
#data 0x0100

#align4
loc_8c195348:
#data bank12.loc_8c129728

loc_8c19534C:
#data 0x8C3455DC

#align4
loc_8c195350:
#data 0x8C345DDC

#align4
loc_8c195354:
#data 0x8C34529C

#align4
loc_8c195358:
#data loc_8c1951E2

loc_8c19535C:
#data bank1c.loc_8c1c5D24

loc_8c195360:
#data 0x0009BFC6
#data 0x2EE86E03
#data 0xD3878B02
#data 0x0009AFE5

#align4
loc_8c195370:
#data 0xED00D386
#data 0xA0292E32
#data 0x6BD3

loc_8c19537A:
#data 0xD385
#data 0x0009430B
#data 0x24486403
#data 0xD3838B1B
#data 0x2F364C0B
#data 0x64E37F04
#data 0x4B15742C
#data 0x2FD26E43
#data 0x6A438F67

#align4
loc_8c19539C:
#data 0x64A2490B
#data 0x89024011
#data 0x2F864C0B
#data 0x7F04

loc_8c1953AA:
#data 0x2ED2
#data 0x63F27E04
#data 0x33B37301
#data 0x8FF12F32
#data 0xA0567A04
#data 0x0009

loc_8c1953BE:
#data 0x63E3
#data 0x732C62B3
#data 0x323C4208
#data 0x22427B01

#align4
loc_8c1953CC:
#data 0x3BA3D973
#data 0x8BD2D871
#data 0x6BD3A028

#align4
loc_8c1953D8:
#data 0x420BD26D
#data 0x64030009
#data 0x8B1A2448
#data 0x4C0BD26B
#data 0x7F042F26
#data 0x4B156AE3
#data 0x2FD27A2C
#data 0x7E348F39

#align4
loc_8c1953F8:
#data 0x64E2490B
#data 0x89024011
#data 0x2F864C0B
#data 0x7F04

loc_8c195406:
#data 0x2AD2
#data 0x63F27A04
#data 0x33B37301
#data 0x8FF12F32
#data 0xA0287E04
#data 0x0009

loc_8c19541A:
#data 0x62E3
#data 0x723463B3
#data 0x332C4308
#data 0x23427B01

#align4
loc_8c195428:
#data 0x8BD53BA3
#data 0x420BD25C
#data 0x81E364A3
#data 0x640385E3
#data 0x8B024411
#data 0x3427E207
#data 0x8B04

loc_8c195442:
#data 0xD158
#data 0x2F164C0B
#data 0x7F04A00F

#align4
loc_8c19544C:
#data 0xBF1785E3
#data 0x62036403
#data 0x8F0A2228
#data 0xD3531E07
#data 0x2F364C0B
#data 0xD3527F04
#data 0x430B85E3
#data 0x6403

loc_8c19546A:
#data 0xA033
#data 0xE000

loc_8c19546E:
#data 0xD350
#data 0x430B54E7
#data 0xE0605441
#data 0x0ED466F3
#data 0x80E560D3
#data 0x1E06E500
#data 0xD34B7604
#data 0x1EA21EA3
#data 0x430B85E3
#data 0x1E086403
#data 0x85E366F3
#data 0xD3467604
#data 0x430BE501
#data 0x1E096403
#data 0xE4FFE048
#data 0xE30052F1
#data 0x62331E2A
#data 0xE04C0E46
#data 0xE0500ED6
#data 0xE0540ED6
#data 0xE0580ED6
#data 0xE05A0E35
#data 0xE0610E25
#data 0xE0620E44
#data 0xE0010E45
#data 0x60E380E4

#align4
loc_8c1954D4:
#data 0x4F267F08
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1954E8:
#data 0x6E432FE6
#data 0x2EE82FD6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x893D4F22
#data 0x222852E6
#data 0xD32D8903
#data 0x430B85E3
#data 0x6403

loc_8c19550A:
#data 0xDB24
#data 0xDC2CE900
#data 0xA00DDA2A
#data 0x6D93

loc_8c195516:
#data 0x63E3
#data 0x732C64D3
#data 0x343C4408
#data 0x64424B0B
#data 0x89024011
#data 0x2FC64A0B
#data 0x7F04

loc_8c19552E:
#data 0x7D01

#align4
loc_8c195530:
#data 0x3D3353E2
#data 0xA00D8BEF
#data 0x6D93

loc_8c19553A:
#data 0x63E3
#data 0x733464D3
#data 0x343C4408
#data 0x64424B0B
#data 0x89024011
#data 0x2FC64A0B
#data 0x7F04

loc_8c195552:
#data 0x7D01

#align4
loc_8c195554:
#data 0x3D3353E2
#data 0xD3148BEF
#data 0x430B85E3
#data 0xBEB16403
#data 0xD31754E7
#data 0xE668E500
#data 0x1E931E92
#data 0x64E3430B
#data 0x80E46093

#align4
loc_8c195578:
#data 0x69F64F26
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c195588:
#data bank1c.loc_8c1c5D54

loc_8c19558C:
#data bank1c.loc_8c1c98D8

loc_8c195590:
#data bank12.loc_8c1269D0

loc_8c195594:
#data bank1c.loc_8c1c5D88

loc_8c195598:
#data bank1c.loc_8c1c5DBC

loc_8c19559C:
#data bank12.loc_8c126A00

loc_8c1955A0:
#data bank12.loc_8c1261F0

loc_8c1955A4:
#data bank1c.loc_8c1c5DF0

loc_8c1955A8:
#data bank1c.loc_8c1c5E2C

loc_8c1955AC:
#data bank12.loc_8c1262B0

loc_8c1955B0:
#data bank12.loc_8c126440

loc_8c1955B4:
#data bank12.loc_8c126120

loc_8c1955B8:
#data bank12.loc_8c126330

loc_8c1955BC:
#data loc_8c1951E2

loc_8c1955C0:
#data bank1c.loc_8c1c5E58

loc_8c1955C4:
#data bank12.loc_8c129728

loc_8c1955C8:
#data 0x6E432FE6
#data 0x4F222FD6
#data 0x200884E5
#data 0x6D438F36
#data 0x54E7D342
#data 0x5441430B
#data 0xB08F55E5
#data 0x55E464D3
#data 0x64D3B0C0
#data 0xB06455E3
#data 0x55EF64D3
#data 0x64D3B0D4
#data 0x764066E3
#data 0xE5006662
#data 0x64D3B150
#data 0x06EEE044
#data 0xB14BE501
#data 0xE04C64D3
#data 0xE04807EE
#data 0xE50006EE
#data 0x64D3B2C0
#data 0x07EEE054
#data 0x06EEE050
#data 0xB2B9E501
#data 0xE05A64D3
#data 0xE05807ED
#data 0xE50306ED
#data 0x64D3B2B2
#data 0x06EEE05C
#data 0xE700E502
#data 0x64D3B2AC

loc_8c195644:
#data 0x944D

loc_8c195646:
#data 0x4410
#data 0x55E78BFD
#data 0x85E3D326
#data 0x430B5551
#data 0xD3256403
#data 0x430B85E3
#data 0xE2016403
#data 0x4F261E26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c19566A:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.l @(loc_8c1956F0,pc),r3 ; r3 set to 0x8C126330
mov.w @(0x06,r14),r0
jsr @r3
mov r0,r4
mov 0x60,r1 ; r1 set to 0x60
mov.b @(0x05,r14),r0
add r14,r1 ; r1 ??? bc r14 is ???
mov.b r0,@r1
mov 0x00,r0 ; r0 set to 0x00
mov.b r0,@(0x05,r14)
mov.l r0,@(0x18,r14)
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c19568C:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.w @(0x06,r14),r0
mov.l @(loc_8c1956F4,pc),r3 ; r3 set to 0x8C126120
mov r15,r6
mov 0x00,r5 ; r5 set to 0x00
jsr @r3
mov r0,r4
mov.l @(loc_8c1956F8,pc),r3 ; r3 set to 0x8C129128
mov.l r0,@(0x20,r14)
mov.l @r15,r2
mov.l r2,@(0x28,r14)
mov.l @r15,r1
jsr @r3
mov.l @(0x10,r14),r0
shll2 r0
shll r0
add 0x04,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1956BA:
mov.l r14,@-r15
add 0xFC,r15
mov r4,r14
mov.l r5,@r15
mov.l r5,@(0x0C,r14)
mov r5,r3
mov.l @(0x1C,r14),r4
mov.l @r15,r5
mov.l @(0x04,r4),r4
add 0x04,r15
mov.l @(loc_8c1956FC,pc),r3 ; r3 set to 0x8C126470
jmp @r3
mov.l @r15+,r14

loc_8c1956D4:
add 0xFC,r15
mov.l @(loc_8c195700,pc),r3 ; r3 set to 0x8C1261C0
mov.l r4,@r15
mov.w @(0x06,r4),r0
mov r0,r4
jmp @r3
add 0x04,r15
#data 0x2710

#align4
loc_8c1956E4:
#data bank12.loc_8c126440

loc_8c1956E8:
#data bank12.loc_8c126060

loc_8c1956EC:
#data bank12.loc_8c1262E0

loc_8c1956F0:
#data bank12.loc_8c126330

loc_8c1956F4:
#data bank12.loc_8c126120

loc_8c1956F8:
#data bank12.loc_8c129128

loc_8c1956FC:
#data bank12.loc_8c126470

loc_8c195700:
#data bank12.loc_8c1261C0


loc_8c195704:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov r5,r0
mov.l @(loc_8c195850,pc),r3 ; r3 set to 0x8C129128
mov r5,r13
mov.l @(loc_8c19584C,pc),r4 ; r4 set to 0xAC44
add 0x01,r0
jsr @r3
mov r4,r1 ; r1 set to 0xAC44
mov.l @(loc_8c195854,pc),r1 ; r1 set to 0x8C1C5C24
mov.b @(r0,r1),r12
mov r13,r1 ; r1 ??? bc r13 is ???
neg r12,r3 ; r3 ??? bc r12 is ???
shad r3, r4 ; r4 ??? bc r3 is ???
mov.l @(loc_8c195850,pc),r3 ; r3 set to 0x8C129128
sub r4,r1
shll8 r1
shll2 r1
jsr @r3
mov r4,r0
mov.w @(loc_8c195848,pc),r6 ; r6 set to 0x3FF
mov 0x0F,r5 ; r5 set to 0x0F
mov.l r0,@r15
and r0,r6 ; r6 ??? bc r0 is ???
mov.l @(0x1C,r14),r4
mov.l @(loc_8c195858,pc),r3 ; r3 set to 0x8C126460
neg r12,r0
and r0,r5 ; r5 ??? bc r0 is ???
jsr @r3
mov.l @(0x04,r4),r4
mov.l r13,@(0x14,r14)
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c195756:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.l @(loc_8c19585C,pc),r3 ; r3 set to 0x8C126160
mov.w @(0x06,r14),r0
jsr @r3
mov r0,r4
mov.l r0,@(0x14,r14)
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c19576C:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l @(loc_8c195860,pc),r3 ; r3 set to 0x8C1264F0
mov.l r5,@r15
mov.l @(0x1C,r14),r4
jsr @r3
mov.l @(0x04,r4),r4
mov.l @r15,r2
mov.l r2,@(0x10,r14)
add 0x04,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c19578A:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.l @(loc_8c195864,pc),r3 ; r3 set to 0x8C126190
mov.w @(0x06,r14),r0
jsr @r3
mov r0,r4
mov.l r0,@(0x10,r14)
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8c1957A0:
#data 0x2FD62FE6
#data 0x96506D43
#data 0x35674F22
#data 0x1D5F8F15
#data 0x8D0E4511
#data 0x6153E47F
#data 0x63534118
#data 0x3138D224
#data 0x420B7180
#data 0x65036063
#data 0x45006E43
#data 0x3E473E58
#data 0x8B01

loc_8c1957D2:
#data 0xA003
#data 0x6E43

loc_8c1957D6:
#data 0x4E11
#data 0x8900

loc_8c1957DA:
#data 0xEE00

#align4
loc_8c1957DC:
#data 0x222852D6
#data 0x54D78B0E
#data 0xD32066E3
#data 0x430BE500
#data 0x4F265441
#data 0x66E354D7
#data 0xE501D31C
#data 0x54416DF6
#data 0x6EF6432B

#align4
loc_8c195800:
#data 0x66E385D3
#data 0xE500D319
#data 0x6403430B
#data 0x85D34F26
#data 0xD31666E3
#data 0x6DF6E501
#data 0x432B6403
#data 0x6EF6


loc_8c19581E:
add 0xF8,r15
mov.l r4,@r15
mov.l @(loc_8c195870,pc),r3 ; r3 set to 0x8C126580
mov.l r6,@(0x04,r15)
mov.l @r15,r4
mov.l @(0x1C,r4),r4
mov.l @(0x04,r4),r4
jmp @r3
add 0x08,r15

loc_8c195830:
mov.l r14,@-r15
mov 0x00,r6 ; r6 set to 0x00
sts.l pr,@-r15
mov r4,r14
bsr loc_8c19581E
mov 0x05,r5 ; r5 set to 0x05
mov r0,r4
cmp/pl r4
bt loc_8c195874
mov.w @(loc_8c19584A,pc),r4 ; r4 set to 0xFC41
bra loc_8c19589A
nop

loc_8c195848:
#data 0x03FF

loc_8c19584A:
#data 0xFC41

#align4
loc_8c19584C:
#data 0x0000AC44

#align4
loc_8c195850:
#data bank12.loc_8c129128

loc_8c195854:
#data bank1c.loc_8c1c5C24

loc_8c195858:
#data bank12.loc_8c126460

loc_8c19585C:
#data bank12.loc_8c126160

loc_8c195860:
#data bank12.loc_8c1264F0

loc_8c195864:
#data bank12.loc_8c126190

loc_8c195868:
#data bank12.loc_8c1264D0

loc_8c19586C:
#data bank12.loc_8c126740

loc_8c195870:
#data bank12.loc_8c126580


loc_8c195874:
mov 0x7F,r5 ; r5 set to 0x7F
cmp/ge r5,r4
bf loc_8c19587E
bra loc_8c19589A
mov 0x00,r4

loc_8c19587E:
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8c195988,pc),r2 ; r2 set to 0x3BF
sub r4,r5
mov.w @(loc_8c19598C,pc),r0 ; r0 set to 0xFF
cmp/gt r5,r3
mov.w @(loc_8c19598A,pc),r1 ; r1 set to 0x80
addc r3,r5
mov.l @(loc_8c195990,pc),r3 ; r3 set to 0x8C129128
shar r5
mul.l r2,r5
sts macl,r5
jsr @r3
sub r5,r1 ; r1 ??? bc r5 is ???
mov r0,r4 ; r4 set to 0xFF

loc_8c19589A:
mov r4,r0 ; r0 set to 0xFF
mov.l r4,@(0x3C,r14)
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1958A4:
mov r4,r2
mov r5,r3
mov.l r14,@-r15
shll2 r3
add 0x40,r2
mov.l r13,@-r15
add r2,r3
mov.l r12,@-r15
cmp/pz r6
mov.l r6,@r3
mov r5,r12
bt/s loc_8c1958C6
mov r4,r14
mov 0x10,r13 ; r13 set to 0x10
neg r6,r0
bra loc_8c1958C8
or r0,r13

loc_8c1958C6:
mov r6,r13

loc_8c1958C8:
mov.l @(0x18,r14),r2
tst r2,r2
bf loc_8c1958E0
mov r12,r5
mov.l @r15+,r12
mov.l @(0x1C,r14),r4
mov r13,r6
mov.l @(loc_8c195994,pc),r3 ; r3 set to 0x8C1264E0, r3 set to 0x8C1264E0
mov.l @r15+,r13
mov.l @(0x04,r4),r4
jmp @r3
mov.l @r15+,r14

loc_8c1958E0:
mov r12,r5
mov.l @r15+,r12
mov.w @(0x06,r14),r0
mov r13,r6
mov.l @r15+,r13
mov.l @(loc_8c195998,pc),r3 ; r3 set to 0x8C1267D0
mov r0,r4
jmp @r3
mov.l @r15+,r14

loc_8c1958F2:
mov.l r14,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov r5,r3
mov r4,r14
mov r14,r2
shll2 r3
add 0x40,r2
mov.l r5,@r15
mov.l r3,@(0x04,r15)
add r2,r3
mov.l @r15,r6
mov 0x06,r5 ; r5 set to 0x06
mov r3,r8
bsr loc_8c19581E
mov r14,r4
mov.l r0,@r8
mov r14,r0
mov.l @(0x04,r15),r3
add 0x40,r0
mov.l @(r0,r3),r0
add 0x08,r15
lds.l @r15+,pr
mov.l @r15+,r8
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c195928:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov 0x48,r0 ; r0 set to 0x48
mov.l r12,@-r15
mov 0xD6,r3 ; r3 set to 0xFFFFFFD6
sts.l pr,@-r15
mov.l r5,@(r0,r14)
cmp/ge r3,r6
mov r5,r12
mov 0x4C,r0 ; r0 set to 0x4C
bt/s loc_8c195946
mov.l r6,@(r0,r14)
bra loc_8c19595A
mov 0x00,r13

loc_8c195946:
cmp/pz r6
bf loc_8c19594E
bra loc_8c19595A
mov 0x0F,r13

loc_8c19594E:
mov.l @(loc_8c195990,pc),r2 ; r2 set to 0x8C129128
mov r6,r1
jsr @r2
mov 0x03,r0 ; r0 set to 0x03
mov r0,r13 ; r13 set to 0x03
add 0x0F,r13 ; r13 set to 0x12

loc_8c19595A:
mov.l @(0x18,r14),r3
tst r3,r3
bf loc_8c195974
lds.l @r15+,pr
mov r12,r5
mov.l @(0x1C,r14),r4
mov r13,r6 ; r6 set to 0x12
mov.l @(loc_8c19599C,pc),r3 ; r3 set to 0x8C126540, r3 set to 0x8C126540
mov.l @r15+,r12
mov.l @(0x04,r4),r4
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
jmp @r3
mov.l @r15+,r14

loc_8c195974:
lds.l @r15+,pr
mov r12,r5
mov r13,r6
mov.w @(0x06,r14),r0
mov.l @r15+,r12
mov.l @(loc_8c1959A0,pc),r3 ; r3 set to 0x8C1268A0
mov r0,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8c195988:
#data 0x03BF

loc_8c19598A:
#data 0x0080

loc_8c19598C:
#data 0x00FF
#data 0x0000

#align4
loc_8c195990:
#data bank12.loc_8c129128

loc_8c195994:
#data bank12.loc_8c1264E0

loc_8c195998:
#data bank12.loc_8c1267D0

loc_8c19599C:
#data bank12.loc_8c126540

loc_8c1959A0:
#data bank12.loc_8c1268A0


loc_8c1959A4:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov r6,r13
mov 0x00,r6 ; r6 set to 0x00
mov r4,r14
mov.l r5,@r15
bsr loc_8c19581E
mov 0x07,r5 ; r5 set to 0x07
mov 0x08,r5 ; r5 set to 0x08
mov.l r0,@(0x04,r15)
mov 0x00,r6 ; r6 set to 0x00
bsr loc_8c19581E
mov r14,r4
mov r0,r4
cmp/pl r4
bt loc_8c1959CE
mov 0xD3,r3 ; r3 set to 0xFFFFFFD3
bra loc_8c1959E4
mov.l r3,@r13

loc_8c1959CE:
mov 0x0F,r1 ; r1 set to 0x0F
cmp/ge r1,r4
bf loc_8c1959DA
mov 0x00,r2 ; r2 set to 0x00
bra loc_8c1959E4
mov.l r2,@r13

loc_8c1959DA:
add 0xF1,r4
mov r4,r3
shll r4
add r3,r4
mov.l r4,@r13

loc_8c1959E4:
mov.l @(0x04,r15),r3
mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48
mov.l @r15,r2
mov.l r3,@r2
mov.l r3,@(r0,r14)
mov 0x4C,r0 ; r0 set to 0x4C, r0 set to 0x4C
mov.l @r13,r2
mov.l r2,@(r0,r14)
add 0x08,r15
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1959FE:
#data 0x2FE6
#data 0x7FF84F22
#data 0xE43F6E43
#data 0x8B003543
#data 0x6543

loc_8c195A0E:
#data 0xE4C0
#data 0x8D013547
#data 0x6543E050

#align4
loc_8c195A18:
#data 0x0E56E463
#data 0x8F013643
#data 0x66431F51

#align4
loc_8c195A24:
#data 0x3647E49D
#data 0xE0548D01
#data 0x6643

loc_8c195A2E:
#data 0x6163
#data 0xD36F4108
#data 0x0E664108
#data 0x430B4108
#data 0x2F02E064
#data 0x85E3D36C
#data 0x430B55F1
#data 0x85E36403
#data 0x640365F2
#data 0x4F267F08
#data 0x432BD368
#data 0x6EF6


loc_8c195A5A:
mov 0x50,r0 ; r0 set to 0x50
mov.l @(r0,r4),r3
mov 0x54,r0 ; r0 set to 0x54
mov.l r3,@r5
mov.l @(r0,r4),r2
rts
mov.l r2,@r6
;-------------------------------------------------------------------------------

loc_8c195A68:
mov.l r14,@-r15
mov 0x58,r0 ; r0 set to 0x58
mov.l r13,@-r15
mov r5,r13
mov.l r12,@-r15
mov r4,r12
mov.w r13,@(r0,r12)
mov 0x5A,r0 ; r0 set to 0x5A
mov r6,r14
cmp/pl r13
mov.w r14,@(r0,r12)
bt/s loc_8c195A86
mov 0x00,r5 ; r5 set to 0x00
bra loc_8c195A8E
mov r5,r13

loc_8c195A86:
#data 0xE47F
#data 0x8B003D43
#data 0x6D43


loc_8c195A8E:
cmp/pl r14
bt loc_8c195A96
bra loc_8c195A9E
mov r5,r14

loc_8c195A96:
#data 0xE41F
#data 0x8B003E43
#data 0x6E43


loc_8c195A9E:
mov.w @(0x06,r12),r0
mov r13,r5
mov.l @r15+,r12
mov r14,r6
mov.l @(loc_8c195BFC,pc),r3 ; r3 set to 0x8C126920
mov r0,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8c195AB0:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov r4,r14
mov.l r5,@(0x04,r15)
mov.l r6,@r15
mov 0x00,r6 ; r6 set to 0x00
bsr loc_8c19581E
mov 0x09,r5 ; r5 set to 0x09
mov 0x58,r1 ; r1 set to 0x58
add r14,r1 ; r1 ??? bc r14 is ???
mov 0x0A,r5 ; r5 set to 0x0A
mov.w r0,@r1
mov 0x00,r6 ; r6 set to 0x00
bsr loc_8c19581E
mov r14,r4
mov 0x5A,r1 ; r1 set to 0x5A
add r14,r1 ; r1 ??? bc r14 is ???
mov.w r0,@r1
mov 0x58,r0 ; r0 set to 0x58
mov.w @(r0,r14),r2
mov 0x5A,r0 ; r0 set to 0x5A
mov.l @(0x04,r15),r3
mov.l r2,@r3
mov.w @(r0,r14),r2
mov.l @r15,r3
mov.l r2,@r3
add 0x08,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c195AEE:
mov.l r14,@-r15
mov 0xD6,r3 ; r3 set to 0xFFFFFFD6
mov.l r13,@-r15
cmp/ge r3,r5
sts.l pr,@-r15
mov r4,r13
mov 0x5C,r0 ; r0 set to 0x5C
bt/s loc_8c195B04
mov.l r5,@(r0,r13)
bra loc_8c195B18
mov 0x00,r14

loc_8c195B04:
cmp/pz r5
bf loc_8c195B0C
bra loc_8c195B18
mov 0x0F,r14

loc_8c195B0C:
mov.l @(loc_8c195BF0,pc),r2 ; r2 set to 0x8C129128
mov r5,r1
jsr @r2
mov 0x03,r0 ; r0 set to 0x03
mov r0,r14 ; r14 set to 0x03
add 0x0F,r14 ; r14 set to 0x12

loc_8c195B18:
mov.l @(0x18,r13),r3
tst r3,r3
bf loc_8c195B2E
lds.l @r15+,pr
mov.l @(0x1C,r13),r4
mov r14,r5 ; r5 set to 0x12
mov.l @(loc_8c195C00,pc),r3 ; r3 set to 0x8C126560, r3 set to 0x8C126560
mov.l @r15+,r13
mov.l @(0x04,r4),r4
jmp @r3
mov.l @r15+,r14

loc_8c195B2E:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c195B36:
mov 0x5C,r0 ; r0 set to 0x5C
rts
mov.l @(r0,r4),r0
;-------------------------------------------------------------------------------

loc_8c195B3C:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov r5,r3
tst r3,r3
mov.l r5,@(0x04,r15)
bf/s loc_8c195B52
mov r4,r14
bra loc_8c195B8A
mov 0x00,r0

loc_8c195B52:
#data 0xD32C
#data 0x430B65F3
#data 0x6D0354F1
#data 0x8B042DD8
#data 0xD329D22A
#data 0x2F36420B
#data 0x7F04

loc_8c195B6A:
#data 0x54E7
#data 0xD32865D3
#data 0x430B66F2
#data 0x55E75441
#data 0x85E3D326
#data 0x430B5551
#data 0x62F26403
#data 0x0E26E064
#data 0xE001


loc_8c195B8A:
mov.b r0,@(0x05,r14)
add 0x08,r15
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c195B96:
mov 0x64,r0 ; r0 set to 0x64
rts
mov.l @(r0,r4),r0
;-------------------------------------------------------------------------------

loc_8c195B9C:
mov.l r14,@-r15
tst r5,r5
mov r6,r14
mov.l r13,@-r15
bf/s loc_8c195BB2
mov r7,r13
mov r13,r6
mov.l @r15+,r13
mov r14,r5
bra loc_8c195928
mov.l @r15+,r14

loc_8c195BB2:
mov r5,r0
cmp/eq 0x01,r0
bf loc_8c195BC2
mov r13,r6
mov.l @r15+,r13
mov r14,r5
bra loc_8c1959FE
mov.l @r15+,r14

loc_8c195BC2:
cmp/eq 0x02,r0
bf loc_8c195BCE
mov.l @r15+,r13
mov r14,r5
bra loc_8c195AEE
mov.l @r15+,r14

loc_8c195BCE:
mov r5,r0
cmp/eq 0x03,r0
bf loc_8c195BDE
mov r13,r6
mov.l @r15+,r13
mov r14,r5
bra loc_8c195A68
mov.l @r15+,r14

loc_8c195BDE:
cmp/eq 0x04,r0
bf loc_8c195BEA
mov.l @r15+,r13
mov r14,r5
bra loc_8c195B3C
mov.l @r15+,r14

loc_8c195BEA:
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8c195BF0:
#data bank12.loc_8c129128

loc_8c195BF4:
#data bank12.loc_8c126820

loc_8c195BF8:
#data bank12.loc_8c126860

loc_8c195BFC:
#data bank12.loc_8c126920

loc_8c195C00:
#data bank12.loc_8c126560

loc_8c195C04:
#data bank12.loc_8c126040

loc_8c195C08:
#data bank1c.loc_8c1c5E8C

loc_8c195C0C:
#data loc_8c1951E2

loc_8c195C10:
#data bank12.loc_8c129668

loc_8c195C14:
#data bank12.loc_8c126060


loc_8c195C18:
mov.l r14,@-r15
tst r5,r5
mov.l r13,@-r15
mov r6,r14
sts.l pr,@-r15
bf/s loc_8c195C32
mov r7,r13
lds.l @r15+,pr
mov r13,r6
mov r14,r5
mov.l @r15+,r13
bra loc_8c1959A4
mov.l @r15+,r14

loc_8c195C32:
mov r5,r0
cmp/eq 0x01,r0
bf loc_8c195C44
lds.l @r15+,pr
mov r13,r6
mov r14,r5
mov.l @r15+,r13
bra loc_8c195A5A
mov.l @r15+,r14

loc_8c195C44:
cmp/eq 0x02,r0
bf loc_8c195C50
bsr loc_8c195B36
nop
bra loc_8c195C6A
nop

loc_8c195C50:
mov r5,r0
cmp/eq 0x03,r0
bf loc_8c195C62
lds.l @r15+,pr
mov r13,r6
mov r14,r5
mov.l @r15+,r13
bra loc_8c195AB0
mov.l @r15+,r14

loc_8c195C62:
cmp/eq 0x04,r0
bf loc_8c195C6E
bsr loc_8c195B96
nop

loc_8c195C6A:
bra loc_8c195C72
mov.l r0,@r14

loc_8c195C6E:
mov 0x00,r3 ; r3 set to 0x00
mov.l r3,@r14

loc_8c195C72:
mov 0x00,r2 ; r2 set to 0x00, r2 set to 0x00
mov.l r2,@r13
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c195C7E:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov.l r7,@r15
mov r4,r14
mov r14,r3
shll2 r5
mov.l r5,@(0x04,r15)
add 0x20,r3
mov.l @(0x10,r14),r7
add r3,r5
mov.l @(loc_8c195DE0,pc),r3 ; r3 set to 0x8C129128
mov 0x08,r4 ; r4 set to 0x08
mul.l r7,r6
sts macl,r1
jsr @r3
mov r4,r0 ; r0 set to 0x08
mov.l @(0x10,r15),r1
mov.l @r5,r6
mul.l r7,r1
mov.l @(loc_8c195DE0,pc),r3 ; r3 set to 0x8C129128
add r0,r6
sts macl,r1
jsr @r3
mov r4,r0 ; r0 set to 0x08
mov.l @(0x04,r15),r3 ; r3 ??? bc r15 is ???
mov r14,r4 ; r4 ??? bc r14 is ???
add 0x2C,r4
mov.l @(loc_8c195DE4,pc),r2 ; r2 set to 0x8C126A20
mov.l @r15,r5
add r3,r4
mov r0,r7 ; r7 set to 0x08
jsr @r2
mov.l @r4,r4
mov r0,r4 ; r4 set to 0x08
cmp/pz r4
bt loc_8c195D04
mov r4,r0 ; r0 set to 0x08
mov.l @(loc_8c195DE8,pc),r14 ; r14 set to 0x8C1951E2
cmp/eq 0xFF,r0
bf loc_8c195CD6
mov.l @(loc_8c195DEC,pc),r3 ; r3 set to 0x8C1C5ECC
bra loc_8c195CE8
nop

loc_8c195CD6:
cmp/eq 0xFE,r0
bf loc_8c195CE0
mov.l @(loc_8c195DF0,pc),r2 ; r2 set to 0x8C1C5EFC
bra loc_8c195CEA
mov.l r2,@-r15

loc_8c195CE0:
mov r4,r0
cmp/eq 0xFD,r0
bf loc_8c195CF8
mov.l @(loc_8c195DF4,pc),r3 ; r3 set to 0x8C1C5F3C

loc_8c195CE8:
mov.l r3,@-r15

loc_8c195CEA:
jsr @r14
nop
add 0x04,r15
add 0x08,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8c195CF8:
#data 0x8B0388FC
#data 0x4E0BD23E
#data 0x7F042F26


loc_8c195D04:
add 0x08,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8c195D0C:
#data 0x4F222FE6
#data 0x6E437FF8
#data 0x450863E3
#data 0x1F512F72
#data 0x52E47320
#data 0x0627353C
#data 0x4611061A
#data 0x76078900

#align4
loc_8c195D2C:
#data 0x62524621
#data 0x53F14621
#data 0x64E34621
#data 0x65F2362C
#data 0xD229742C
#data 0xE720343C
#data 0x6442420B
#data 0x44116403
#data 0x6043891D
#data 0x88FFDE25
#data 0xD3258B02
#data 0x0009A009

#align4
loc_8c195D5C:
#data 0x8B0288FE
#data 0xA005D223
#data 0x2F26

loc_8c195D66:
#data 0x6043
#data 0x8B0888FD
#data 0xD321

loc_8c195D6E:
#data 0x2F36

#align4
loc_8c195D70:
#data 0x00094E0B
#data 0x7F087F04
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c195D7E:
#data 0x88FC
#data 0xD21D8B03
#data 0x2F264E0B
#data 0x7F04

loc_8c195D8A:
#data 0x7F08
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c195D92:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov.l r5,@r15
mov r6,r13
mov.l r7,@(0x04,r15)
mov r13,r6
mov.l @(0x14,r15),r3
mov r4,r14
mov.l r3,@-r15
mov.l @(0x08,r15),r7
mov.l @(0x04,r15),r5
bsr loc_8c195C7E
mov r14,r4
tst r13,r13
bf/s loc_8c195DD6
add 0x04,r15
mov.l @(loc_8c195DE0,pc),r3 ; r3 set to 0x8C129128
mov.l @(0x28,r14),r1
jsr @r3
mov.l @(0x10,r14),r0
mov r0,r6
shll2 r6
mov.l @(0x04,r15),r7
shll r6
mov.l @r15,r5
mov r14,r4
add r13,r6
add 0x08,r15
lds.l @r15+,pr
mov.l @r15+,r13
bra loc_8c195D0C
mov.l @r15+,r14

loc_8c195DD6:
add 0x08,r15
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8c195DE0:
#data bank12.loc_8c129128

loc_8c195DE4:
#data bank12.loc_8c126A20

loc_8c195DE8:
#data loc_8c1951E2

loc_8c195DEC:
#data bank1c.loc_8c1c5ECC

loc_8c195DF0:
#data bank1c.loc_8c1c5EFC

loc_8c195DF4:
#data bank1c.loc_8c1c5F3C

loc_8c195DF8:
#data bank1c.loc_8c1c5F7C


loc_8c195DFC:
sts.l pr,@-r15
add 0xF8,r15
mov r4,r3
add 0x2C,r3
mov.l @(loc_8c195E64,pc),r2 ; r2 set to 0x8C126AB0
mov.l r5,@r15
mov.l r4,@(0x04,r15)
mov.l @r15,r4
shll2 r4
add r3,r4
jsr @r2
mov.l @r4,r4
mov.w @(loc_8c195E5E,pc),r3 ; r3 set to 0x100
mov r0,r4
cmp/eq r3,r4
bf loc_8c195E20
bra loc_8c195E36
mov 0x01,r4

loc_8c195E20:
mov.w @(loc_8c195E60,pc),r2 ; r2 set to 0x101
cmp/eq r2,r4
bf loc_8c195E2A
bra loc_8c195E36
mov 0x02,r4

loc_8c195E2A:
mov.l @(loc_8c195E6C,pc),r3 ; r3 set to 0x8C1951E2
mov.l @(loc_8c195E68,pc),r1 ; r1 set to 0x8C1C5FBC
jsr @r3
mov.l r1,@-r15
add 0x04,r15
mov 0x00,r4 ; r4 set to 0x00

loc_8c195E36:
add 0x08,r15
lds.l @r15+,pr
rts
mov r4,r0
;-------------------------------------------------------------------------------
#data 0x000B
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c195E42:
mov 0x60,r0 ; r0 set to 0x60
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
mov 0x00,r5 ; r5 set to 0x00
mov.b r0,@(0x05,r4)
mov 0x60,r0 ; r0 set to 0x60
mov.b r5,@(r0,r4)
mov.l r5,@r6
rts
mov r5,r0
;-------------------------------------------------------------------------------

loc_8c195E54:
rts
mov 0x00,r0
;-------------------------------------------------------------------------------

loc_8c195E58:
mov.l @(loc_8c195E70,pc),r0 ; r0 set to 0x8C1C98C0
rts
nop
;-------------------------------------------------------------------------------

loc_8c195E5E:
#data 0x0100

loc_8c195E60:
#data 0x0101
#data 0x0000

#align4
loc_8c195E64:
#data bank12.loc_8c126AB0

loc_8c195E68:
#data bank1c.loc_8c1c5FBC

loc_8c195E6C:
#data loc_8c1951E2

loc_8c195E70:
#data bank1c.loc_8c1c98C0

loc_8c195E74:
#data 0x0102D038
#data 0x410E210B
#data 0x6002D039
#data 0x8D052008
#data 0xD0350008
#data 0x71FF6102
#data 0x21182012

#align4
loc_8c195E90:
#data 0x4028E004
#data 0x200A406A
#data 0xFBFD405A
#data 0x4FE34FF3
#data 0x4FC34FD3
#data 0x4FA34FB3
#data 0x4F834F93
#data 0x4FF24F32
#data 0x4F0365F3
#data 0x400BD02C
#data 0x4F070009
#data 0x64F64FF6
#data 0x4F974F87
#data 0x4FB74FA7
#data 0x4FD74FC7
#data 0x4FF74FE7
#data 0xF1F9F0F9
#data 0xF3F9F2F9
#data 0xF5F9F4F9
#data 0xF7F9F6F9
#data 0xF9F9F8F9
#data 0xFBF9FAF9
#data 0xFDF9FCF9
#data 0xFFF9FEF9
#data 0xF0F9FBFD
#data 0xF2F9F1F9
#data 0xF4F9F3F9
#data 0xF6F9F5F9
#data 0xF8F9F7F9
#data 0xFAF9F9F9
#data 0xFCF9FBF9
#data 0xFEF9FDF9
#data 0x4F66FFF9
#data 0x64F64F56
#data 0x61F660F6
#data 0x63F662F6
#data 0x65F664F6
#data 0x67F666F6
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x4F166EF6
#data 0x4F274F06
#data 0x4F264F17
#data 0x4F374F47
#data 0xDF068B01
#data 0x6FF2

loc_8c195F4A:
#data 0x2F06
#data 0x4028E0AC
#data 0xCB104018
#data 0x60F6402B
#data 0x30000000

#align4
loc_8c195F5C:
#data loc_8c196340

loc_8c195F60:
#data loc_8c196334

loc_8c195F64:
#data loc_8c196338

loc_8c195F68:
#data bank1a.loc_8c1aA794


loc_8c195F6C:
nop
nop
nop
nop
nop
mov.l r1,@-r15
mov r0,r1
mova @(loc_8c195F98,pc),r0  ; r0 init to 0x8C195F98
mov.l r1,@r0 ; r0 ??? bc r1 is ???
mov 0xFF,r1 ; r1 set to 0xFFFFFFFF
shll16 r1 ; r1 set to 0xFFFF0000
shll8 r1 ; r1 set to 0xFF000000
add 0x24,r1 ; r1 set to 0xFF000024
mov.l @r1,r1 ; r1 ??
mov.l @(loc_8c195F94,pc),r0 ; r0 set to 0x8C19633C
mov.l r1,@r0 ; r0 ??? bc r1 is ???
mov.l @(loc_8c195FA0,pc),r1 ; r1 set to 0x8C196030
mov.l @(loc_8c195F98,pc),r0 ; r0 set to 0x00
jmp @r1
nop

#align4
loc_8c195F94:
#data loc_8c19633C

loc_8c195F98:
#data 0x00000000
#data 0xAC004000

#align4
loc_8c195FA0:
#data loc_8c196030


loc_8c195FA4:
nop
nop
nop
nop
bra loc_8c195FCA
nop
#data 0x2F064F22
#data 0x2F562F46
#data 0xD00FD40B
#data 0x400BD50B
#data 0x65F60009
#data 0x60F664F6
#data 0x4F26


loc_8c195FCA:
mov.l r1,@-r15
mov r0,r1
mova @(loc_8c195FF4,pc),r0  ; r0 init to 0x8C195FF4
mov.l r1,@r0 ; r0 ??? bc r1 is ???
mov 0xFF,r1 ; r1 set to 0xFFFFFFFF
shll16 r1 ; r1 set to 0xFFFF0000
shll8 r1 ; r1 set to 0xFF000000
add 0x28,r1 ; r1 set to 0xFF000028
mov.l @r1,r1 ; r1 ??
mov.l @(loc_8c195FF0,pc),r0 ; r0 set to 0x8C19633C
mov.l r1,@r0 ; r0 ??? bc r1 is ???
mov.l @(loc_8c195FFC,pc),r1 ; r1 set to 0x8C196030
mov.l @(loc_8c195FF4,pc),r0 ; r0 set to 0x00
jmp @r1
nop
#data 0x00000200
#data 0x00000002

#align4
loc_8c195FF0:
#data loc_8c19633C

loc_8c195FF4:
#data 0x00000000
#data 0xAC004000

#align4
loc_8c195FFC:
#data loc_8c196030


loc_8c196000:
rte
nop
;-------------------------------------------------------------------------------
#data 0x2F064F22
#data 0x2F562F46
#data 0xD007D405
#data 0x400BD505
#data 0x65F60009
#data 0x60F664F6
#data 0x002B4F26
#data 0x00000009
#data 0x00000200
#data 0x00000003
#data 0xAC004000

#align4
loc_8c196030:
#data 0x4F3361F6
#data 0x4F224F43
#data 0x4F234F13
#data 0x4F124F02
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x2F762F86
#data 0x2F562F66
#data 0x2F362F46
#data 0x2F162F26
#data 0x4F032F06
#data 0x4F624F52
#data 0x4028E004
#data 0x200A406A
#data 0xFFFB405A
#data 0xFFDBFFEB
#data 0xFFBBFFCB
#data 0xFF9BFFAB
#data 0xFF7BFF8B
#data 0xFF5BFF6B
#data 0xFF3BFF4B
#data 0xFF1BFF2B
#data 0xFBFDFF0B
#data 0xFFEBFFFB
#data 0xFFCBFFDB
#data 0xFFABFFBB
#data 0xFF8BFF9B
#data 0xFF6BFF7B
#data 0xFF4BFF5B
#data 0xFF2BFF3B
#data 0xFF0BFF1B
#data 0x0002FBFD
#data 0x2019D135
#data 0x400ECBF0
#data 0x4318E3FE
#data 0xD4340E22
#data 0x62436442
#data 0xE002323C
#data 0x42214018
#data 0x42214221
#data 0x0EEE3E2C
#data 0x89052EE8
#data 0x00094E0B
#data 0x0102D02B
#data 0x410E210B

#align4
loc_8c1960E8:
#data 0x4028E004
#data 0x200A406A
#data 0xFBFD405A
#data 0xF1F9F0F9
#data 0xF3F9F2F9
#data 0xF5F9F4F9
#data 0xF7F9F6F9
#data 0xF9F9F8F9
#data 0xFBF9FAF9
#data 0xFDF9FCF9
#data 0xFFF9FEF9
#data 0xF0F9FBFD
#data 0xF2F9F1F9
#data 0xF4F9F3F9
#data 0xF6F9F5F9
#data 0xF8F9F7F9
#data 0xFAF9F9F9
#data 0xFCF9FBF9
#data 0xFEF9FDF9
#data 0x4F66FFF9
#data 0x4F074F56
#data 0x61F660F6
#data 0x63F662F6
#data 0x65F664F6
#data 0x67F666F6
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x4F166EF6
#data 0x4F274F06
#data 0x4F264F17
#data 0x4F374F47
#data 0x2F162F06
#data 0xD004D109
#data 0x40186112
#data 0x8F053103
#data 0x002261F6
#data 0x60F6402B
#data 0x00000002

#align4
loc_8c196184:
#data 0x002B60F6
#data 0x00090009
#data 0xEFFFFFFF
#data 0x10000000

#align4
loc_8c196194:
#data loc_8c19633C

loc_8c196198:
#data 0xC76B6103
#data 0x70FC2016
#data 0x71016102
#data 0x70042012
#data 0x60024110
#data 0x61F68F07
#data 0xC7602F06
#data 0x20F27F04
#data 0x60F67FFC
#data 0xDF5E

loc_8c1961BE:
#data 0x4F33
#data 0x4F224F43
#data 0x4F234F13
#data 0x4F124F02
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x2F762F86
#data 0x2F562F66
#data 0x2F362F46
#data 0x2F162F26
#data 0x4F032F06
#data 0x4F624F52
#data 0x4028E004
#data 0x200A406A
#data 0xFFFB405A
#data 0xFFDBFFEB
#data 0xFFBBFFCB
#data 0xFF9BFFAB
#data 0xFF7BFF8B
#data 0xFF5BFF6B
#data 0xFF3BFF4B
#data 0xFF1BFF2B
#data 0xFBFDFF0B
#data 0xFFEBFFFB
#data 0xFFCBFFDB
#data 0xFFABFFBB
#data 0xFF8BFF9B
#data 0xFF6BFF7B
#data 0xFF4BFF5B
#data 0xFF2BFF3B
#data 0xFF0BFF1B
#data 0x0002FBFD
#data 0x2019D139
#data 0x400ECBF0
#data 0x4318E3FE
#data 0xC73B0E22
#data 0x62436402
#data 0xE002323C
#data 0x42214018
#data 0x42214221
#data 0x0EEE3E2C
#data 0x89012EE8
#data 0x00094E0B

#align4
loc_8c19626C:
#data 0x0102D02F
#data 0x410E210B
#data 0x6102C732
#data 0x201271FF
#data 0xE0042118
#data 0x406A4028
#data 0x405A200A
#data 0xF0F9FBFD
#data 0xF2F9F1F9
#data 0xF4F9F3F9
#data 0xF6F9F5F9
#data 0xF8F9F7F9
#data 0xFAF9F9F9
#data 0xFCF9FBF9
#data 0xFEF9FDF9
#data 0xFBFDFFF9
#data 0xF1F9F0F9
#data 0xF3F9F2F9
#data 0xF5F9F4F9
#data 0xF7F9F6F9
#data 0xF9F9F8F9
#data 0xFBF9FAF9
#data 0xFDF9FCF9
#data 0xFFF9FEF9
#data 0x4F564F66
#data 0x60F664F6
#data 0x62F661F6
#data 0x64F663F6
#data 0x66F665F6
#data 0x68F667F6
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x6EF66DF6
#data 0x4F064F16
#data 0x4F174F27
#data 0x4F474F26
#data 0x8B004F37
#data 0xDF0C

loc_8c196302:
#data 0x2F06
#data 0xD10A2F16
#data 0x6112D004
#data 0x31034018
#data 0x61F68F06
#data 0x402B0022
#data 0x000060F6
#data 0x00000002

#align4
loc_8c196320:
#data 0x002B60F6
#data 0x00090009
#data 0xEFFFFFFF
#data 0x30000000

#align4
loc_8c196330:
#data loc_8c19633C

loc_8c196334:
#data 0x00000000

#align4
loc_8c196338:
#data 0x00000000

#align4
loc_8c19633C:
#data 0x00000000

#align4
loc_8c196340:
#data 0x00000000
#data 0x00000000
#data 0xD33BD23C
#data 0x2232000B
;-------------------------------------------------------------------------------

#align4
loc_8c196350:
#data 0x7FFC2FD6
#data 0xE73FD139
#data 0x6012DD39
#data 0x40299165
#data 0x27094009
#data 0x3702E040
#data 0x8909

loc_8c19636A:
#data 0x6273
#data 0x32DC4218
#data 0x23196322
#data 0x8B023310
#data 0x37027701
#data 0x8BF5

loc_8c19637E:
#data 0x6073
#data 0x8B028840
#data 0xA0289452
#data 0x0009

loc_8c19638A:
#data 0x9350
#data 0x8801606E
#data 0x251B2539
#data 0x89072F52
#data 0x89088802
#data 0x89098803
#data 0x890B8804
#data 0x0009A00C

#align4
loc_8c1963A8:
#data 0xA009D526
#data 0xE600

loc_8c1963AE:
#data 0xD526
#data 0xE610A006

#align4
loc_8c1963B4:
#data 0x963BD525
#data 0x0009A002

#align4
loc_8c1963BC:
#data 0x9638D524

#align4
loc_8c1963C0:
#data 0x65732459
#data 0xD1234518
#data 0x3D5C9334
#data 0x62F2246B
#data 0x351C243B
#data 0x25422D22
#data 0x6473

loc_8c1963DA:
#data 0x6043
#data 0x000B7F04
#data 0x6DF6
;-------------------------------------------------------------------------------

loc_8c1963E2:
#data 0xE340
#data 0x890D3432
#data 0x45186543
#data 0x6253D614
#data 0xE3009121
#data 0x6422326C
#data 0xD216365C
#data 0x352C2419
#data 0x25322642

#align4
loc_8c196404:
#data 0x0009000B
;-------------------------------------------------------------------------------
#data 0x3422E240
#data 0x6643890B
#data 0x4618D710
#data 0x6662367C
#data 0x655EE3F6
#data 0x44182639
#data 0x347C265B
#data 0x000B2462
#data 0x01000009
#data 0xFC0000FF
#data 0x00900080
#data 0xFEFF013E
#data 0x00040005
#data 0xFF000010
#data 0xF6000000
#data 0x1FFFFC00
#data 0x1FFFF000
#data 0x1FFF0000
#data 0x1FF00000
#data 0xF7000000


loc_8c196458:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8c196490,pc),r14 ; r14 set to 0x8C1AAA58
mov.l @(loc_8c19648C,pc),r13 ; r13 set to 0x8C1C993C

loc_8c196464:
jsr @r14
mov r15,r4
mov.l @r15,r0
cmp/eq 0x01,r0
bf loc_8c196464
mov.w @(loc_8c19648A,pc),r0 ; r0 set to 0x110, r0 set to 0x110
mov.l @r13,r2
mov.l @(r0,r2),r3
add 0x01,r3
mov.l r3,@(r0,r2)
mov.l @r15,r0 ; r0 ??? bc r15 is ???, r0 ??? bc r15 is ???
cmp/eq 0x01,r0
bf loc_8c196464
mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c19648A:
#data 0x0110

#align4
loc_8c19648C:
#data bank1c.loc_8c1c993C

loc_8c196490:
#data bank1a.loc_8c1aAA58

loc_8c196494:
#data 0x4F222FE6
#data 0x00027FFC
#data 0x6E439337
#data 0x40094009
#data 0x2F02C90F
#data 0x20390002
#data 0x400ECBF0
#data 0xE500D618
#data 0x646263E2
#data 0x92294308
#data 0x64424308
#data 0x343C4300
#data 0xE4011455
#data 0x1E4C1E5B
#data 0x63E26062
#data 0x4308320C
#data 0xD210332C
#data 0x71016132
#data 0x61E22312
#data 0x710F6322
#data 0x2342441C
#data 0x233853E7
#data 0x53E78902
#data 0x54E8430B

#align4
loc_8c1964F4:
#data 0x020260F2
#data 0xC90F9309
#data 0x22394008
#data 0x202B4008
#data 0x7F04400E
#data 0x000B4F26
#data 0xFF0F6EF6
#data 0x000000EC

#align4
loc_8c196514:
#data bank1c.loc_8c1c993C

loc_8c196518:
#data bank1c.loc_8c1c9934


loc_8c19651C:
mov.l @r4,r7
mov 0x34,r6 ; r6 set to 0x34
mov.l @(loc_8c1965E4,pc),r5 ; r5 set to 0x8C1C993C
mul.l r6,r7
mov.l @r5,r3
add 0x04,r3
sts macl,r2
add r3,r2
mov.l r7,@r2
mov 0x00,r7 ; r7 set to 0x00
mov.l @r4,r3
mov.l @r5,r2
mul.l r6,r3
add 0x04,r2
sts macl,r3
add r2,r3
mov.l r7,@(0x28,r3)
mov.l @r4,r2
mov.l @r5,r3
mul.l r6,r2
add 0x04,r3
sts macl,r2
add r3,r2
mov.l r7,@(0x2C,r2)
mov.l @r4,r3
mov.l @r5,r2
mul.l r6,r3
add 0x04,r2
sts macl,r3
add r2,r3
mov.l r7,@(0x30,r3)
mov.l @r5,r3
mov.l @r4,r2
add 0x04,r3
mul.l r6,r2
sts macl,r2
add r3,r2
mov.l r7,@(0x04,r2)
mov.l @r4,r3
mov.l @r5,r2
mul.l r6,r3
add 0x04,r2
sts macl,r3
add r2,r3
mov.l r7,@(0x08,r3)
mov.l @r4,r2
mov.l @r5,r3
mul.l r6,r2
add 0x04,r3
sts macl,r2
add r3,r2
mov.l r7,@(0x0C,r2)
mov.l @r4,r3
mov.l @r5,r2
mul.l r6,r3
add 0x04,r2
sts macl,r3
add r2,r3
mov.l r7,@(0x10,r3)
mov.l @r4,r2
mov.l @r5,r3
mul.l r6,r2
add 0x04,r3
sts macl,r2
add r3,r2
mov.l r7,@(0x14,r2)
mov 0x03,r1 ; r1 set to 0x03
mov.l @r4,r3
mov.l @r5,r2
mul.l r6,r3
add 0x04,r2
sts macl,r3
add r2,r3
mov.l r1,@(0x18,r3)
mov.l @r4,r2
mov.l @r5,r3
mul.l r6,r2
add 0x04,r3
sts macl,r2
add r3,r2
mov.l r7,@(0x1C,r2)
mov.l @r4,r3
mov.l @r5,r2
mul.l r6,r3
add 0x04,r2
sts macl,r6
add r2,r6 ; r6 ??? bc r2 is ???
mov.l r7,@(0x20,r6)
mov.l @r4,r1 ; r1 ??? bc r4 is ???
mov.l @r5,r3
shll2 r1
mov.l @r3,r3
shll2 r1
shll r1
add r3,r1
mov r1,r4
mov.l r7,@(0x14,r4)
rts
mov r7,r0
;-------------------------------------------------------------------------------
#data 0x0000

#align4
loc_8c1965E4:
#data bank1c.loc_8c1c993C


loc_8c1965E8:
mov.l r14,@-r15
mov 0x00,r14 ; r14 set to 0x00
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
sts.l pr,@-r15
mov.w @(loc_8c19661C,pc),r13 ; r13 set to 0xD0
mov.l @(loc_8c196624,pc),r12 ; r12 set to 0x8C1C993C
mov.l @(loc_8c196620,pc),r11 ; r11 set to 0x8C1AAA6C

loc_8c1965FA:
mov.l @r12,r4
add 0x04,r4
jsr @r11
add r14,r4
add 0x34,r14 ; r14 set to 0x34
cmp/hs r13,r14
bf loc_8c1965FA
mov.l @(loc_8c196628,pc),r3 ; r3 set to 0x8C345F50, r3 set to 0x8C345F50
mov 0x00,r2 ; r2 set to 0x00, r2 set to 0x00
mov r2,r0 ; r0 set to 0x00, r0 set to 0x00
mov.l r2,@r3 ; r3 ??, r3 ??
lds.l @r15+,pr
mov.l @r15+,r11 ; r11 ??? bc r15 is ???
mov.l @r15+,r12 ; r12 ??? bc r15 is ???
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c19661C:
#data 0x00D0
#data 0x0000

#align4
loc_8c196620:
#data bank1a.loc_8c1aAA6C

loc_8c196624:
#data bank1c.loc_8c1c993C

loc_8c196628:
#data 0x8C345F50


loc_8c19662C:
mov.l @(loc_8c196654,pc),r6 ; r6 set to 0x7F00000
mov.l @(loc_8c196658,pc),r3 ; r3 set to 0x46590000
and r6,r4
mov.l @(loc_8c19665C,pc),r2 ; r2 set to 0xA05F78BC
shlr16 r4
and r6,r5
shlr2 r4
shlr16 r5
shlr2 r4
shll8 r4
shlr2 r5
mov r4,r6 ; r6 ??? bc r4 is ???
shlr2 r5
or r5,r6
or r3,r6
mov.l r6,@r2 ; r2 ??? bc r6 is ???
mov.l @(loc_8c196660,pc),r1 ; r1 set to 0x8C1C9938
mov.l r6,@r1 ; r1 ??? bc r6 is ???
rts
mov 0x00,r0
;-------------------------------------------------------------------------------

#align4
loc_8c196654:
#data 0x07F00000

#align4
loc_8c196658:
#data 0x46590000

#align4
loc_8c19665C:
#data 0xA05F78BC

#align4
loc_8c196660:
#data bank1c.loc_8c1c9938


loc_8c196664:
mov.l r14,@-r15
mov 0x00,r14 ; r14 set to 0x00
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
sts.l pr,@-r15
mov.w @(loc_8c196698,pc),r13 ; r13 set to 0xD0
mov.l @(loc_8c1966A0,pc),r12 ; r12 set to 0x8C1C993C
mov.l @(loc_8c19669C,pc),r11 ; r11 set to 0x8C1AAA8C

loc_8c196676:
mov.l @r12,r4
add 0x04,r4
jsr @r11
add r14,r4
add 0x34,r14 ; r14 set to 0x34
cmp/hs r13,r14
bf loc_8c196676
mov.l @(loc_8c1966A4,pc),r3 ; r3 set to 0x8C345F50, r3 set to 0x8C345F50
mov 0x01,r2 ; r2 set to 0x01, r2 set to 0x01
mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00
mov.l r2,@r3 ; r3 ??, r3 ??
lds.l @r15+,pr
mov.l @r15+,r11 ; r11 ??? bc r15 is ???
mov.l @r15+,r12 ; r12 ??? bc r15 is ???
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c196698:
#data 0x00D0
#data 0x0000

#align4
loc_8c19669C:
#data bank1a.loc_8c1aAA8C

loc_8c1966A0:
#data bank1c.loc_8c1c993C

loc_8c1966A4:
#data 0x8C345F50


loc_8c1966A8:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8c1966E0,pc),r14 ; r14 set to 0x8C1AAAAC
mov.l @(loc_8c1966DC,pc),r13 ; r13 set to 0x8C1C993C

loc_8c1966B4:
jsr @r14
mov r15,r4
mov.l @r15,r0
cmp/eq 0x01,r0
bf loc_8c1966B4
mov.w @(loc_8c1966DA,pc),r0 ; r0 set to 0x10C, r0 set to 0x10C
mov.l @r13,r2
mov.l @(r0,r2),r3
add 0x01,r3
mov.l r3,@(r0,r2)
mov.l @r15,r0 ; r0 ??? bc r15 is ???, r0 ??? bc r15 is ???
cmp/eq 0x01,r0
bf loc_8c1966B4
mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1966DA:
#data 0x010C

#align4
loc_8c1966DC:
#data bank1c.loc_8c1c993C

loc_8c1966E0:
#data bank1a.loc_8c1aAAAC

loc_8c1966E4:
#data 0xDE3E2FE6
#data 0x9071D33E
#data 0x2FD66233
#data 0x2FB62FC6
#data 0x4F222FA6
#data 0x02462E32
#data 0x63E27004
#data 0x70FC0366
#data 0xE61F63E2
#data 0x2268023E
#data 0xE5E08D09
#data 0x61E2905E
#data 0x7320031E
#data 0x63E20136
#data 0x2259023E
#data 0x0326

loc_8c196722:
#data 0x9056
#data 0x034E64E2
#data 0x89062638
#data 0x7320034E
#data 0x63E20436
#data 0x2259023E
#data 0x0326

loc_8c19673A:
#data 0x9049
#data 0xD42A63E2
#data 0x224B023E
#data 0x70040326
#data 0x023E63E2
#data 0x0326224B
#data 0x430BD326
#data 0xD4260009
#data 0x6A43DB26
#data 0x65437A10
#data 0x6D436C43

#align4
loc_8c196764:
#data 0x60E29236
#data 0x320C63D2
#data 0x6120323C
#data 0x89012118
#data 0x64C24B0B

#align4
loc_8c196778:
#data 0x3DA27D04
#data 0x7C048FF2
#data 0x420BD21D
#data 0x90260009
#data 0x63E2E401
#data 0x0346D11B
#data 0x63E29022
#data 0x9020023E
#data 0x901D0216
#data 0x63E2E500
#data 0x1254023E
#data 0x023E63E2
#data 0x613370DC
#data 0x70F0033E
#data 0x9013011E
#data 0x0216213B
#data 0x63E2900E
#data 0x1245023E
#data 0x60534F26
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x0FC80FC4
#data 0x0FC00F90
#data 0x008C10F4
#data 0x00000080
#data 0x8C347150
#data 0x8C346054
#data 0xA0000000

#align4
loc_8c1967EC:
#data loc_8c19708C

loc_8c1967F0:
#data bank1c.loc_8c1c60C8

loc_8c1967F4:
#data loc_8c197EDC

loc_8c1967F8:
#data loc_8c1982C0
#data 0x6155404F

#align4
loc_8c196800:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x7FF44F22
#data 0xEB1FD352
#data 0x6C73DE50
#data 0x62339096
#data 0x2F521F42
#data 0x02662E32
#data 0x62F263E2
#data 0x0326908F
#data 0x63E270FC
#data 0x22B8023E
#data 0xE9E08D09
#data 0x61E29086
#data 0x7320031E
#data 0x63E20136
#data 0x2299023E
#data 0x0326

loc_8c19684A:
#data 0x907E
#data 0x034E64E2
#data 0x890623B8
#data 0x7320034E
#data 0x63E20436
#data 0x2299023E
#data 0x0326

loc_8c196862:
#data 0x9071
#data 0xDA3E63E2
#data 0x22AB023E
#data 0x70040326
#data 0x023E63E2
#data 0x032622AB
#data 0x430BD33A
#data 0xED000009
#data 0xE56064D3

#align4
loc_8c196884:
#data 0x62E29362
#data 0x334C332C
#data 0x935D23D2
#data 0x332C62E2
#data 0x7404334C
#data 0x73603452
#data 0x23D28FF2
#data 0x4C1553F2
#data 0x1F319753
#data 0x65D38F21

#align4
loc_8c1968AC:
#data 0x740464F2
#data 0x74FC2F42
#data 0x63436442
#data 0x890123B8
#data 0x24997420

#align4
loc_8c1968C0:
#data 0x24AB51F1
#data 0x75019242
#data 0x35C37104
#data 0x71FC1F11
#data 0x63E26112
#data 0x46086613
#data 0x326C323C
#data 0x347C2242
#data 0x63E29234
#data 0x362C323C
#data 0x8FDF7660
#data 0x2642

loc_8c1968EE:
#data 0x62E2
#data 0x902964D3
#data 0x6323E518
#data 0x9029013E
#data 0x61C30216
#data 0x411863E2
#data 0x41089020
#data 0x022E6233
#data 0x312C9021
#data 0x70FC0316
#data 0x623363E2
#data 0x901B012E
#data 0x0316

loc_8c19691E:
#data 0x931A
#data 0x330C60E2
#data 0x7401334C
#data 0x8FF83453
#data 0x5BF223D0
#data 0xE7654C15
#data 0x8F2C65D3
#data 0xE672

loc_8c19693A:
#data 0x64B6
#data 0x88006043
#data 0x88068919
#data 0x0009A010
#data 0x0FC80FC4
#data 0x04000FE8
#data 0x10AC10A8
#data 0x0F900FCC
#data 0x8C347150
#data 0x8C346054
#data 0xA0000000

#align4
loc_8c196964:
#data loc_8c19708C

loc_8c196968:
#data 0x880C8905
#data 0x88128903
#data 0xA0068901
#data 0x0009

loc_8c196976:
#data 0x9364
#data 0x330C60E2
#data 0xA005343C
#data 0x2460

loc_8c196982:
#data 0x935E
#data 0x330C60E2
#data 0x2470343C

#align4
loc_8c19698C:
#data 0x35C37501
#data 0x8BD3

loc_8c196992:
#data 0xD42F
#data 0x6A43D92F
#data 0x65437A10
#data 0x6C436B43

#align4
loc_8c1969A0:
#data 0x60E2924F
#data 0x320C63C2
#data 0x6120323C
#data 0x89012118
#data 0x64B2490B

#align4
loc_8c1969B4:
#data 0x3CA27C04
#data 0x7B048FF2
#data 0x420BD226
#data 0x903F0009
#data 0x63E2E401
#data 0x0346D124
#data 0x63E2903B
#data 0x9039023E
#data 0x90360216
#data 0x023E63E2
#data 0x63E212D4
#data 0x70DC023E
#data 0x033E6133
#data 0x011E70F0
#data 0x213B902D
#data 0x90280216
#data 0x023E63E2
#data 0x60D31245
#data 0x4F267F0C
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c196A0E:
#data 0x2FE6
#data 0x2FC62FD6
#data 0x2FA62FB6
#data 0x9018DA11
#data 0x2F862F96
#data 0x6EA24F22
#data 0x03EE9B12
#data 0x7C286CE3
#data 0x8F034315
#data 0xD30C3BEC
#data 0x04EE430B

#align4
loc_8c196A38:
#data 0xED01D806
#data 0xA057E918
#data 0x0F90EE00
#data 0x10F40FC0
#data 0x0080008C
#data 0x10E4044C

#align4
loc_8c196A50:
#data bank1c.loc_8c1c60C8

loc_8c196A54:
#data loc_8c197EDC

loc_8c196A58:
#data loc_8c1982C0
#data 0x6155404F
#data 0x8C347150

#align4
loc_8c196A64:
#data loc_8c1972F8

loc_8c196A68:
#data 0x60A29368
#data 0x33EC330C
#data 0x22286230
#data 0x84C68939
#data 0x8B362008
#data 0x600C84C4
#data 0x89168801
#data 0x89188802
#data 0x891B8803
#data 0x891E8804
#data 0x89218809
#data 0x8928880A
#data 0x8926880B
#data 0x8924880C
#data 0x8922880D
#data 0x89208800
#data 0x30109149
#data 0xA01C891D
#data 0x0009

loc_8c196AB2:
#data 0x480B
#data 0xA01864E3
#data 0x0009

loc_8c196ABA:
#data 0xD222
#data 0x64E3420B
#data 0x0009A013

#align4
loc_8c196AC4:
#data 0x420BD220
#data 0xA00E64E3
#data 0x0009

loc_8c196ACE:
#data 0xD21F
#data 0x64E3420B
#data 0x0009A009

#align4
loc_8c196AD8:
#data 0x625365B2
#data 0x8D0122D8
#data 0x65D364E3

#align4
loc_8c196AE4:
#data 0x420BD21A
#data 0x0009

loc_8c196AEA:
#data 0x7B78
#data 0x7E017C2C

#align4
loc_8c196AF0:
#data 0x8BB93E93
#data 0x430BD317
#data 0x4F260009
#data 0x68F6E000
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c196B0E:
mov.l r14,@-r15
mov.l @(loc_8c196B58,pc),r14 ; r14 set to 0x8C347150
mov.l r13,@-r15
mov.w @(loc_8c196B40,pc),r1 ; r1 set to 0xFC0
mov.l r12,@-r15
mov 0x01,r12 ; r12 set to 0x01
mov.l r8,@-r15
sts.l pr,@-r15
mov.l @r14,r0
mov.l @(r0,r1),r0
cmp/eq 0x01,r0
bt/s loc_8c196B2C
mov 0x00,r13 ; r13 set to 0x00
bra loc_8c196CD2
mov 0xFD,r0

loc_8c196B2C:
mov.w @(loc_8c196B42,pc),r0 ; r0 set to 0x10F4
mov.l @r14,r2
mov.l @(r0,r2),r3
mov.l @(0x18,r3),r1
tst r12,r1
bt loc_8c196B5C
bra loc_8c196CD2
mov 0xFF,r0
#data 0x00FF0F90

loc_8c196B40:
#data 0x0FC0

loc_8c196B42:
#data 0x10F4

#align4
loc_8c196B44:
#data loc_8c197FA8

loc_8c196B48:
#data loc_8c197F64

loc_8c196B4C:
#data loc_8c197F20

loc_8c196B50:
#data loc_8c197E7A

loc_8c196B54:
#data loc_8c1982C0

loc_8c196B58:
#data 0x8C347150


loc_8c196B5C:
mov.l @(loc_8c196C88,pc),r3 ; r3 set to 0x8C198320
mov.l @r3,r0
tas.b @r0
bt loc_8c196B70
mov.l @(loc_8c196C8C,pc),r1 ; r1 set to 0x8C1C605C
bsr loc_8c196E7C
mov.l r1,@-r15
add 0x04,r15
bra loc_8c196CD2
mov 0xFE,r0

loc_8c196B70:
mov.l @r14,r3
mov.w @(loc_8c196C6E,pc),r0 ; r0 set to 0xFAC
mov r3,r2
mov.l @(r0,r2),r1
add 0x04,r0 ; r0 set to 0xFB0
mov.l @(r0,r3),r3
cmp/eq r1,r3
bt loc_8c196BDE
mov.l @r14,r3
mov.w @(loc_8c196C6E,pc),r0 ; r0 set to 0xFAC
mov r3,r2
mov.l @(r0,r2),r1
add 0x04,r0 ; r0 set to 0xFB0
mov.l r1,@(r0,r3)
add 0xFC,r0 ; r0 set to 0xFAC
mov.l @r14,r3
mov.l @(r0,r3),r2
tst r2,r2
bt loc_8c196BB2
mov.l @(loc_8c196C90,pc),r1 ; r1 set to 0x8C1C58D8
mov.w @(loc_8c196C70,pc),r3 ; r3 set to 0x3E8
mov.l @r1,r0 ; r0 ??
mov.l @r14,r2
mul.l r3,r0
mov.l @(loc_8c196C94,pc),r3 ; r3 set to 0x8C129128
sts macl,r1
jsr @r3
mov 0x14,r0 ; r0 set to 0x14
mov.w @(loc_8c196C72,pc),r1 ; r1 set to 0x10C0
shll16 r0 ; r0 set to 0x140000
add r2,r1 ; r1 ??? bc r2 is ???
bra loc_8c196BBA
mov.l r0,@r1

loc_8c196BB2:
#data 0x905E
#data 0x63E2D238
#data 0x0326

loc_8c196BBA:
#data 0x905B
#data 0x023E63E2
#data 0x63E212D5
#data 0x70DC023E
#data 0x033E6133
#data 0x011E70F0
#data 0x213B9051
#data 0x904D0216
#data 0x023E63E2
#data 0x12C5


loc_8c196BDE:
bsr loc_8c196A0E
nop
mov.l @r14,r2
mov.w @(loc_8c196C78,pc),r1 ; r1 set to 0x10B8
mov r2,r3
mov r2,r0
add r3,r1 ; r1 ??? bc r3 is ???
mov.w @(loc_8c196C7A,pc),r3 ; r3 set to 0x10A8
mov.l @r1,r1
add r0,r3 ; r3 ??? bc r0 is ???
shll2 r1
add r3,r1
mov.l @r1,r0
mov.w @(loc_8c196C7C,pc),r1 ; r1 set to 0x10B0
add r2,r1 ; r1 ??? bc r2 is ???
mov.l @(loc_8c196C9C,pc),r2 ; r2 set to 0x8C1982EA
mov.l r0,@r1
mov.w @(loc_8c196C74,pc),r0 ; r0 set to 0x10F4
mov.l @r14,r3
mov.w @(loc_8c196C78,pc),r1 ; r1 set to 0x10B8
mov r3,r4
mov.l @(r0,r3),r8
add r4,r1 ; r1 ??? bc r4 is ???
mov r3,r0 ; r0 ??? bc r3 is ???
mov.w @(loc_8c196C7A,pc),r3 ; r3 set to 0x10A8
add 0x04,r8
mov.l @r1,r4
add r0,r3 ; r3 ??? bc r0 is ???
shll2 r4
add r3,r4
jsr @r2
mov.l @r4,r4
mov.l r0,@r8
mov.w @(loc_8c196C74,pc),r0 ; r0 set to 0x10F4
mov.l @r14,r3
mov.l @(r0,r3),r2 ; r2 ??? bc r3 is ???
mov.l r12,@(0x18,r2)
mov.w @(loc_8c196C7E,pc),r0 ; r0 set to 0xFD8
mov.l @r14,r3
mov.w @(loc_8c196C78,pc),r1 ; r1 set to 0x10B8
mov.l r13,@(r0,r3)
mov.w @(loc_8c196C78,pc),r0 ; r0 set to 0x10B8
mov.l @r14,r3
mov.l @(r0,r3),r2
xor r12,r2
mov.l r2,@(r0,r3)
mov.l @r14,r3
mov r3,r2
add r2,r1 ; r1 ??? bc r2 is ???
mov.w @(loc_8c196C7A,pc),r2 ; r2 set to 0x10A8
mov r3,r0 ; r0 ??? bc r3 is ???
mov.l @r1,r1
add r0,r2 ; r2 ??? bc r0 is ???
shll2 r1
add r2,r1
mov.l @r1,r0
mov.w @(loc_8c196C80,pc),r1 ; r1 set to 0xFCC
add r3,r1 ; r1 ??? bc r3 is ???
mov.l r0,@r1
mov.w @(loc_8c196C82,pc),r0 ; r0 set to 0x10B4
mov.l @r14,r3
mov.l @(r0,r3),r2
xor r12,r2
mov.l r2,@(r0,r3)
mov.w @(loc_8c196C84,pc),r0 ; r0 set to 0xFDC
mov.l @r14,r3
mov.l r13,@(r0,r3)
mov.l @r14,r4
add 0x28,r4
mov r13,r5
bra loc_8c196CC0
mov 0x18,r6

loc_8c196C6E:
#data 0x0FAC

loc_8c196C70:
#data 0x03E8

loc_8c196C72:
#data 0x10C0

loc_8c196C74:
#data 0x10F4
#data 0x0080

loc_8c196C78:
#data 0x10B8

loc_8c196C7A:
#data 0x10A8

loc_8c196C7C:
#data 0x10B0

loc_8c196C7E:
#data 0x0FD8

loc_8c196C80:
#data 0x0FCC

loc_8c196C82:
#data 0x10B4

loc_8c196C84:
#data 0x0FDC
#data 0x0000

#align4
loc_8c196C88:
#data loc_8c198320

loc_8c196C8C:
#data bank1c.loc_8c1c605C

loc_8c196C90:
#data bank1c.loc_8c1c58D8

loc_8c196C94:
#data bank12.loc_8c129128
#data 0xC3500000

#align4
loc_8c196C9C:
#data loc_8c1982EA

loc_8c196CA0:
#data 0x60E2938A
#data 0x335C330C
#data 0x22286230
#data 0x75018D07
#data 0x80478446
#data 0x804660D3
#data 0x14375346
#data 0x1406

loc_8c196CBE:
#data 0x742C


loc_8c196CC0:
cmp/ge r6,r5
bf loc_8c196CA0
mov.w @(loc_8c196DBA,pc),r0 ; r0 set to 0xFC0
mov.l @r14,r3
mov.l @(loc_8c196DC0,pc),r2 ; r2 set to 0x8C198320
mov.l r13,@(r0,r3)
mov r13,r0 ; r0 ??? bc r13 is ???
mov.l @r2,r3
mov.b r13,@r3

loc_8c196CD2:
lds.l @r15+,pr
mov.l @r15+,r8
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c196CDE:
mov.l @(loc_8c196DC4,pc),r3 ; r3 set to 0x8C347150
mov.w @(loc_8c196DBA,pc),r0 ; r0 set to 0xFC0
sts.l pr,@-r15
mov.l @r3,r4
mov.l @(r0,r4),r2
tst r2,r2
bt loc_8c196CF2
lds.l @r15+,pr
rts
mov 0xFD,r0
;-------------------------------------------------------------------------------

loc_8c196CF2:
mov.w @(loc_8c196DBC,pc),r0 ; r0 set to 0x10F4
mov.l @(r0,r4),r3
mov.l @(0x18,r3),r0 ; r0 ??? bc r3 is ???
tst 0x01,r0
bt loc_8c196D02
lds.l @r15+,pr
rts
mov 0xFF,r0
;-------------------------------------------------------------------------------

loc_8c196D02:
mov.l @(loc_8c196DC0,pc),r3 ; r3 set to 0x8C198320
mov.l @r3,r0
tas.b @r0
bt loc_8c196D18
mov.l @(loc_8c196DC8,pc),r1 ; r1 set to 0x8C1C605C
bsr loc_8c196E7C
mov.l r1,@-r15
add 0x04,r15
lds.l @r15+,pr
rts
mov 0xFE,r0
;-------------------------------------------------------------------------------

loc_8c196D18:
mov 0x00,r0 ; r0 set to 0x00
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c196D20:
mov.l @(loc_8c196DC4,pc),r2 ; r2 set to 0x8C347150
mov 0x01,r1 ; r1 set to 0x01
mov.w @(loc_8c196DBA,pc),r0 ; r0 set to 0xFC0
mov.l @r2,r3
mov 0x00,r2 ; r2 set to 0x00
mov.l r1,@(r0,r3)
mov.l @(loc_8c196DC0,pc),r1 ; r1 set to 0x8C198320
mov.l @r1,r3
mov.b r2,@r3
rts
mov r2,r0
;-------------------------------------------------------------------------------

loc_8c196D36:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov 0x06,r9 ; r9 set to 0x06
mov.l r8,@-r15
mov 0x00,r8 ; r8 set to 0x00
sts.l pr,@-r15
mov.l @(loc_8c196DC4,pc),r10 ; r10 set to 0x8C347150
bra loc_8c196D9E
mov r8,r14

#align4
loc_8c196D50:
#data 0x63E3D01E
#data 0x912F4308
#data 0x60A2023E
#data 0x321C310C
#data 0x23386320
#data 0xD21A891A
#data 0x64E3420B
#data 0x64E363E3
#data 0x6B834308
#data 0x343C4400
#data 0x6D436C43

#align4
loc_8c196D7C:
#data 0x60A2931C
#data 0x33CC330C
#data 0x22286230
#data 0xD3128903
#data 0x430B65E3
#data 0x64D3

loc_8c196D92:
#data 0x7B01
#data 0x7D013B93
#data 0x7C018FF0

loc_8c196D9C:
#data 0x7E01


loc_8c196D9E:
mov 0x04,r3 ; r3 set to 0x04
cmp/ge r3,r14
bf loc_8c196D50
lds.l @r15+,pr
mov 0x00,r0 ; r0 set to 0x00
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x0F90

loc_8c196DBA:
#data 0x0FC0

loc_8c196DBC:
#data 0x10F4
#data 0x0000

#align4
loc_8c196DC0:
#data loc_8c198320

loc_8c196DC4:
#data 0x8C347150

#align4
loc_8c196DC8:
#data bank1c.loc_8c1c605C

loc_8c196DCC:
#data bank1c.loc_8c1c60C8

loc_8c196DD0:
#data loc_8c19787A

loc_8c196DD4:
#data loc_8c197940


loc_8c196DD8:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
sts.l pr,@-r15
mov.l @(loc_8c196F00,pc),r13 ; r13 set to 0x8C17878A
jsr @r13
nop
mov.l @(loc_8c196F08,pc),r11 ; r11 set to 0x8C178794
mov r0,r9
mov.l @(loc_8c196F0C,pc),r14 ; r14 set to 0x8C347150
mov.l @(loc_8c196F04,pc),r10 ; r10 set to 0x186A0
bra loc_8c196E06
mov 0x01,r12

#align4
loc_8c196DF8:
#data 0x00094D0B
#data 0x4B0B6503
#data 0x30A76493
#data 0x8905

loc_8c196E06:
#data 0x9075
#data 0x032E62E2
#data 0x21C85136
#data 0x8BF2

loc_8c196E12:
#data 0x906F
#data 0x62E2E400
#data 0x1346032E
#data 0x023E63E2
#data 0x63E21245
#data 0x1244023E
#data 0xD13963E2
#data 0x9062023E
#data 0x905F0216
#data 0xD13763E2
#data 0x905D023E
#data 0x90590216
#data 0xD13563E2
#data 0x4D0B023E
#data 0x9A561211
#data 0x6903A007

#align4
loc_8c196E50:
#data 0x00094D0B
#data 0x4B0B6503
#data 0x30A76493
#data 0x8905

loc_8c196E5E:
#data 0x9049
#data 0x032E62E2
#data 0x21C85136
#data 0x8BF2

loc_8c196E6A:
#data 0x4F26
#data 0x69F6E000
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

loc_8c196E7C:
mov.l @(loc_8c196F0C,pc),r2 ; r2 set to 0x8C347150
mov.w @(loc_8c196EFC,pc),r0 ; r0 set to 0x10C8
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @r2,r3
mov.l @(r0,r3),r1
tst r1,r1
bt loc_8c196EBE
mov r15,r0 ; r0 ??? bc r15 is ???
add 0x08,r0
mov 0x03,r5 ; r5 set to 0x03
add 0x04,r0
tst r0,r5
bt loc_8c196EA0
mov r15,r5 ; r5 ??? bc r15 is ???
add 0x08,r5
bra loc_8c196EA6
add 0x08,r5

#align4
loc_8c196EA0:
#data 0x750865F3
#data 0x7504

loc_8c196EA6:
#data 0xD31E
#data 0xD41C6653
#data 0x55F2430B
#data 0x6E22D21C
#data 0x89022EE8
#data 0x4E0BD418
#data 0x0009


loc_8c196EBE:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c196EC4:
mov 0x2C,r2 ; r2 set to 0x2C
mov.l @(loc_8c196F0C,pc),r3 ; r3 set to 0x8C347150
mul.l r2,r4
mov.l @r3,r0
add 0x28,r0
sts macl,r4
rts
add r4,r0
;-------------------------------------------------------------------------------

loc_8c196ED4:
mov 0x78,r2 ; r2 set to 0x78
mov.l @(loc_8c196F0C,pc),r3 ; r3 set to 0x8C347150
mul.l r2,r4
mov.w @(loc_8c196EFE,pc),r1 ; r1 set to 0x44C
mov.l @r3,r0
sts macl,r4
add r1,r0
rts
add r4,r0
;-------------------------------------------------------------------------------

loc_8c196EE6:
mov.l @(loc_8c196F0C,pc),r3 ; r3 set to 0x8C347150
shll2 r4
shll r4
mov.l @r3,r0
add 0x04,r0
rts
add r4,r0
;-------------------------------------------------------------------------------
#data 0x008C10F4
#data 0x42680080

loc_8c196EFC:
#data 0x10C8

loc_8c196EFE:
#data 0x044C

#align4
loc_8c196F00:
#data bank17.loc_8c17878A

loc_8c196F04:
#data 0x000186A0

#align4
loc_8c196F08:
#data bank17.loc_8c178794

loc_8c196F0C:
#data 0x8C347150
#data 0x6155404F
#data 0xC3500000
#data 0x0CFF0000
#data 0x8C345F54

#align4
loc_8c196F20:
#data bank12.loc_8c129804

loc_8c196F24:
#data bank1c.loc_8c1c9944


loc_8c196F28:
sts.l pr,@-r15
add 0xFC,r15
bsr loc_8c196EC4
mov.l r5,@r15
mov r0,r4
mov.l @(0x20,r4),r3
mov.l @r15,r2
cmp/eq r2,r3
movt r0
add 0x04,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c196F42:
sts.l pr,@-r15
bsr loc_8c196EC4
nop
lds.l @r15+,pr
mov r0,r4
mov.b @(0x0C,r4),r0
rts
extu.b r0,r0
;-------------------------------------------------------------------------------

loc_8c196F52:
sts.l pr,@-r15
bsr loc_8c196EC4
nop
lds.l @r15+,pr
mov r0,r4
mov 0x01,r0 ; r0 set to 0x01
rts
mov.b r0,@(0x0D,r4)
;-------------------------------------------------------------------------------

loc_8c196F62:
mov.l @(loc_8c197064,pc),r2 ; r2 set to 0x8C347150
shll16 r4
mov.w @(loc_8c19704A,pc),r0 ; r0 set to 0x10C0
mov.l @r2,r3
rts
mov.l r4,@(r0,r3)
;-------------------------------------------------------------------------------

loc_8c196F6E:
mov.l @(loc_8c197064,pc),r3 ; r3 set to 0x8C347150
mov.w @(loc_8c19704A,pc),r1 ; r1 set to 0x10C0
mov.l @r3,r0
mov.l @(r0,r1),r0
shlr16 r0
exts.w r0,r0
rts
extu.w r0,r0
;-------------------------------------------------------------------------------

loc_8c196F7E:
mov.l @(loc_8c197064,pc),r2 ; r2 set to 0x8C347150
mov 0x01,r1 ; r1 set to 0x01
mov.w @(loc_8c19704C,pc),r0 ; r0 set to 0x10C4
and r1,r4
mov.l @r2,r3
rts
mov.l r4,@(r0,r3)
;-------------------------------------------------------------------------------

loc_8c196F8C:
mov.l @(loc_8c197064,pc),r3 ; r3 set to 0x8C347150
mov.w @(loc_8c19704C,pc),r1 ; r1 set to 0x10C4
mov.l @r3,r0
rts
mov.l @(r0,r1),r0
;-------------------------------------------------------------------------------

loc_8c196F96:
mov.l @(loc_8c197064,pc),r2 ; r2 set to 0x8C347150
mov.w @(loc_8c19704E,pc),r0 ; r0 set to 0x10CC
mov.l @r2,r3
rts
mov.l r4,@(r0,r3)
;-------------------------------------------------------------------------------

loc_8c196FA0:
mov.l @(loc_8c197064,pc),r3 ; r3 set to 0x8C347150
mov.w @(loc_8c19704E,pc),r1 ; r1 set to 0x10CC
mov.l @r3,r0
rts
mov.l @(r0,r1),r0
;-------------------------------------------------------------------------------

loc_8c196FAA:
mov.l @(loc_8c197064,pc),r2 ; r2 set to 0x8C347150
mov.w @(loc_8c197050,pc),r0 ; r0 set to 0x10D0
mov.l @r2,r3
rts
mov.l r4,@(r0,r3)
;-------------------------------------------------------------------------------

loc_8c196FB4:
mov.l @(loc_8c197064,pc),r3 ; r3 set to 0x8C347150
mov.w @(loc_8c197050,pc),r1 ; r1 set to 0x10D0
mov.l @r3,r0
rts
mov.l @(r0,r1),r0
;-------------------------------------------------------------------------------

loc_8c196FBE:
#data 0x2448
#data 0xD3298902
#data 0x24226232

#align4
loc_8c196FC8:
#data 0x89022558
#data 0x6012D127
#data 0x2502

loc_8c196FD2:
#data 0x000B
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c196FD6:
mov.l @(loc_8c197064,pc),r2 ; r2 set to 0x8C347150
mov.w @(loc_8c197052,pc),r0 ; r0 set to 0x10C8
mov.l @r2,r3
rts
mov.l r4,@(r0,r3)
;-------------------------------------------------------------------------------

loc_8c196FE0:
mov.l @(loc_8c197064,pc),r3 ; r3 set to 0x8C347150
mov.w @(loc_8c197052,pc),r1 ; r1 set to 0x10C8
mov.l @r3,r0
rts
mov.l @(r0,r1),r0
;-------------------------------------------------------------------------------

loc_8c196FEA:
mov.l @(loc_8c197064,pc),r2 ; r2 set to 0x8C347150
mov.w @(loc_8c197054,pc),r0 ; r0 set to 0x10D8
mov.l @r2,r3
rts
mov.l r4,@(r0,r3)
;-------------------------------------------------------------------------------

loc_8c196FF4:
mov.l @(loc_8c197064,pc),r3 ; r3 set to 0x8C347150
mov.w @(loc_8c197054,pc),r1 ; r1 set to 0x10D8
mov.l @r3,r0
rts
mov.l @(r0,r1),r0
;-------------------------------------------------------------------------------

loc_8c196FFE:
mov.l @(loc_8c197064,pc),r5 ; r5 set to 0x8C347150
mov.w @(loc_8c197056,pc),r0 ; r0 set to 0x10E0
mov.l @r5,r3
mov.l r4,@(r0,r3)
add 0x04,r0 ; r0 set to 0x10E4
mov.l @r5,r3
rts
mov.l r4,@(r0,r3)
;-------------------------------------------------------------------------------

loc_8c19700E:
mov.l @(loc_8c197064,pc),r3 ; r3 set to 0x8C347150
mov.w @(loc_8c197058,pc),r1 ; r1 set to 0x10E4
mov.l @r3,r0
rts
mov.l @(r0,r1),r0
;-------------------------------------------------------------------------------
#data 0x911ED312
#data 0x000B6032
#data 0x001E
;-------------------------------------------------------------------------------

loc_8c197022:
mov.l @(loc_8c197064,pc),r2 ; r2 set to 0x8C347150
mov.w @(loc_8c19705C,pc),r0 ; r0 set to 0x10DC
mov.l @r2,r3
rts
mov.l r4,@(r0,r3)
;-------------------------------------------------------------------------------

loc_8c19702C:
mov.l @(loc_8c197064,pc),r3 ; r3 set to 0x8C347150
mov.w @(loc_8c19705C,pc),r1 ; r1 set to 0x10DC
mov.l @r3,r0
rts
mov.l @(r0,r1),r0
;-------------------------------------------------------------------------------

loc_8c197036:
mov.l @(loc_8c197064,pc),r2 ; r2 set to 0x8C347150
mov.w @(loc_8c19705E,pc),r0 ; r0 set to 0xFAC
mov.l @r2,r3
rts
mov.l r4,@(r0,r3)
;-------------------------------------------------------------------------------

loc_8c197040:
mov.l @(loc_8c197064,pc),r3 ; r3 set to 0x8C347150
mov.w @(loc_8c197060,pc),r1 ; r1 set to 0xFB0
mov.l @r3,r0
rts
mov.l @(r0,r1),r0
;-------------------------------------------------------------------------------

loc_8c19704A:
#data 0x10C0

loc_8c19704C:
#data 0x10C4

loc_8c19704E:
#data 0x10CC

loc_8c197050:
#data 0x10D0

loc_8c197052:
#data 0x10C8

loc_8c197054:
#data 0x10D8

loc_8c197056:
#data 0x10E0

loc_8c197058:
#data 0x10E4
#data 0x10B0

loc_8c19705C:
#data 0x10DC

loc_8c19705E:
#data 0x0FAC

loc_8c197060:
#data 0x0FB0
#data 0x0000

#align4
loc_8c197064:
#data 0x8C347150

#align4
loc_8c197068:
#data bank1c.loc_8c1c60D8

loc_8c19706C:
#data bank1c.loc_8c1c60DC


loc_8c197070:
mov.l @(loc_8c197088,pc),r2 ; r2 set to 0x8C347150
mov.w @(loc_8c197084,pc),r0 ; r0 set to 0xFBC
mov.l @r2,r3
rts
mov.l r4,@(r0,r3)
;-------------------------------------------------------------------------------

loc_8c19707A:
mov.l @(loc_8c197088,pc),r3 ; r3 set to 0x8C347150
mov.w @(loc_8c197084,pc),r1 ; r1 set to 0xFBC
mov.l @r3,r0
rts
mov.l @(r0,r1),r0
;-------------------------------------------------------------------------------

loc_8c197084:
#data 0x0FBC
#data 0x0000

#align4
loc_8c197088:
#data 0x8C347150

#align4
loc_8c19708C:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x4F222F86
#data 0xDE3A7FF8
#data 0x9063ED00
#data 0x63E264D3
#data 0x9660EC60
#data 0x03D667D3
#data 0x63E27004
#data 0x03D6955C

#align4
loc_8c1970B8:
#data 0x63E2905C
#data 0x013E9259
#data 0x317C323C
#data 0x2212324C
#data 0x63E29253
#data 0x323C013E
#data 0x7404324C
#data 0x34C2316C
#data 0x22127260
#data 0x8FEB365C
#data 0x62E2375C
#data 0x9046E608
#data 0x6323E500
#data 0x9043013E
#data 0x63E20216
#data 0x6233903F
#data 0x022E913F
#data 0x321C903E
#data 0x70FC0326
#data 0x623363E2
#data 0x9038022E
#data 0x64E20326
#data 0x430BD31E
#data 0x64E27404
#data 0xD31CE500
#data 0x430B9630
#data 0x9B2E7428
#data 0x6CD3

loc_8c197126:
#data 0x932D
#data 0x343C64E2
#data 0x34CCB667
#data 0x3CB27C78
#data 0x64D38BF7
#data 0xE518

loc_8c19713A:
#data 0x9324
#data 0x330C60E2
#data 0x7401334C
#data 0x8FF83453
#data 0xD21123D0
#data 0xD31161F3
#data 0x740464F3
#data 0x430B7104
#data 0xD00FE004
#data 0xE3016102
#data 0x3137611C
#data 0x6BD38D1A
#data 0xE907A019
#data 0x600010B4
#data 0x0FE80400
#data 0x0FC40FC8
#data 0x300010A8
#data 0x0FCC10AC
#data 0x0B400108
#data 0x0F90044C
#data 0x8C347150

#align4
loc_8c19718C:
#data loc_8c1982D4

loc_8c197190:
#data bank1c.loc_8c1c6084

loc_8c197194:
#data bank12.loc_8c129620
#data 0xA05F689C

loc_8c19719C:
#data 0xE90F

loc_8c19719E:
#data 0x6543
#data 0xE6057404
#data 0x67D32F42
#data 0xEA45E852

#align4
loc_8c1971AC:
#data 0x629E6350
#data 0x89102328
#data 0x64B3937E
#data 0x740160E2
#data 0x330C6CD3
#data 0x2380337C

#align4
loc_8c1971C4:
#data 0x7C019376
#data 0x3C6360E2
#data 0x334C330C
#data 0x8FF723A0
#data 0x7401

loc_8c1971D6:
#data 0x63F2
#data 0x7B067501
#data 0x8FE53532
#data 0x90687706
#data 0x61E2D337
#data 0x90650136
#data 0x02D662E2
#data 0x63E270FC
#data 0x03D6E201
#data 0x63E27008
#data 0xE20A0326
#data 0x63E2905B
#data 0x702403D6
#data 0x03D663E2
#data 0x63E270FC
#data 0x70E403D6
#data 0x036663E2
#data 0x63E27004
#data 0x700803D6
#data 0x032663E2
#data 0x63E27004
#data 0x0366D227
#data 0x63E27004
#data 0x700403D6
#data 0x03D663E2
#data 0x63E29040
#data 0x700403D6
#data 0x03D663E2
#data 0x63E2700C
#data 0x63E203D6
#data 0x23229037
#data 0x63E2D21E
#data 0xD21E1329
#data 0x032663E2
#data 0xD21D9030
#data 0x032663E2
#data 0xD21C701C
#data 0x032663E2
#data 0xD21B703C
#data 0x032663E2
#data 0xD21A9025
#data 0x032663E2
#data 0xD2197018
#data 0x032663E2
#data 0xD218701C
#data 0x032663E2
#data 0xD2177008
#data 0x032663E2
#data 0x430BD316
#data 0xD216E400
#data 0x0009420B
#data 0x4F267F08
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x10C00F90
#data 0x10C80FDC
#data 0x04480FAC
#data 0x10BC0F8C
#data 0xC3500000
#data 0x54524F50
#data 0x20564544
#data 0x4F464E49
#data 0x4C424E45
#data 0x54415453
#data 0x52444152
#data 0x54554F54
#data 0x43515244
#data 0x434E5546
#data 0x20444E45

#align4
loc_8c1972F0:
#data loc_8c196F7E

loc_8c1972F4:
#data loc_8c1982F4

loc_8c1972F8:
#data 0x4415D520
#data 0x6352903B
#data 0x710C6103
#data 0x312C6233
#data 0x023E6112
#data 0x97334108
#data 0x0326321C
#data 0x011E6152
#data 0xE6008F05

#align4
loc_8c19731C:
#data 0x21727601
#data 0x8FFB3643
#data 0x7104

loc_8c197326:
#data 0x9028
#data 0x02466252
#data 0x63527004
#data 0x023E4408
#data 0x0326324C
#data 0xE000000B
;-------------------------------------------------------------------------------

loc_8c19733C:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xE4,r15
mov 0x2C,r10 ; r10 set to 0x2C
mov r4,r9
mul.l r10,r9
mov.l @(loc_8c19737C,pc),r14 ; r14 set to 0x8C347150
mov r5,r0
mov.b r0,@(0x04,r15)
mov 0x40,r0 ; r0 set to 0x40
mov.l r6,@(0x18,r15)
mov.l @r14,r4
sts macl,r10
mov r4,r3
add 0x28,r3
mov.l @(r0,r15),r12
add r10,r3
mov.b @(0x06,r3),r0
tst r0,r0
bt/s loc_8c197380
mov r7,r11
bra loc_8c197592
mov 0xFF,r0
#data 0x0FCC
#data 0x0FD80700

#align4
loc_8c19737C:
#data 0x8C347150

#align4
loc_8c197380:
#data 0x62F384F4
#data 0x7210957A
#data 0x68B38036
#data 0x38CCD03F
#data 0x74036483
#data 0xE4031F42
#data 0x9070039C
#data 0x22302539
#data 0x1F53655C
#data 0x452CE2FA
#data 0x2F522549
#data 0x62D36DE2
#data 0x4315032E
#data 0x90638B0F
#data 0x411501DE
#data 0x90608B0B
#data 0x632202DE
#data 0x633F4329
#data 0x63F22439
#data 0x8B023340
#data 0xBF919055
#data 0x04DE

loc_8c1973D6:
#data 0x9054
#data 0x610362E2
#data 0x6323710C
#data 0x6112313C
#data 0x4108032E
#data 0x0236331C
#data 0x62F2618C
#data 0x42286DE2
#data 0x221B0DDE
#data 0x91431F15
#data 0x7D042D22
#data 0x7D042FD6
#data 0x630360E2
#data 0x6312313C
#data 0x43006233
#data 0x4308332C
#data 0x92364308
#data 0x43006493
#data 0x4408302C
#data 0xB762303C
#data 0x62F6044E
#data 0x2202912E
#data 0xD61884F4
#data 0x57F6600C
#data 0xE0102F02
#data 0x60E209FC
#data 0x001ED416
#data 0x8801D514
#data 0x699C8F2A
#data 0x492863F2
#data 0x294950F3
#data 0x4B154328
#data 0x40184318
#data 0x20692359
#data 0x230B239B
#data 0x230B50F5
#data 0x7D042D32
#data 0xE9008F42

#align4
loc_8c19746C:
#data 0x79016376
#data 0x2D3239B3
#data 0x7D048FFA
#data 0x0009A03A
#data 0x10CC00C0
#data 0x0FCC0FD8
#data 0x0FE810B4
#data 0x000010C4

#align4
loc_8c19748C:
#data bank1c.loc_8c1c60B0
#data 0x0000FF00
#data 0xFF000000
#data 0x00FF0000

#align4
loc_8c19749C:
#data 0x491853F3
#data 0x60F24828
#data 0x4B154328
#data 0x23494818
#data 0x28592969
#data 0x238B239B
#data 0x2D32230B
#data 0x8F197D04
#data 0xE800

loc_8c1974BE:
#data 0x6976
#data 0x38B37801
#data 0x63936293
#data 0x61934228
#data 0x42184318
#data 0x22592349
#data 0xE3F8223B
#data 0x2169413C
#data 0x6193221B
#data 0x41194129
#data 0x611C611E
#data 0x2D22221B
#data 0x7D048FE7

#align4
loc_8c1974F0:
#data 0x60E29159
#data 0x8801001E
#data 0x57FF8B1B
#data 0x8F224C15
#data 0xEB00

loc_8c197502:
#data 0x8471
#data 0x61707B01
#data 0x40283BC3
#data 0x63032049
#data 0x41288472
#data 0x20694018
#data 0x8473230B
#data 0x21594118
#data 0x231B600C
#data 0x2D32230B
#data 0x8FEA7D04
#data 0xA00A7704
#data 0x0009

loc_8c197532:
#data 0x55FF
#data 0x8F064C15
#data 0xE400

loc_8c19753A:
#data 0x6356
#data 0x34C37401
#data 0x8FFA2D32
#data 0x7D04

loc_8c197546:
#data 0x902F
#data 0x63E252F2
#data 0x70040326
#data 0x52F263E2
#data 0x4208013E
#data 0x0316312C
#data 0x63E27004
#data 0x013E62E2
#data 0x71017228
#data 0x71FF0316
#data 0x121632AC
#data 0xD20E63E2
#data 0x2129013E
#data 0x63E20316
#data 0x2118013E
#data 0x90128B03
#data 0x61E2E301
#data 0x0136

loc_8c19758A:
#data 0x60E2
#data 0x30AC7028
#data 0x5006


loc_8c197592:
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
#data 0x10C4
#data 0x0FE00FD8
#data 0x7FFFFFFF

#align4
loc_8c1975B0:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x4F222F86
#data 0xE0107FE8
#data 0x62F36A73
#data 0x2F42720C
#data 0x0F546C73
#data 0xD040E503
#data 0x1F61DD40
#data 0x3ABC5BFF
#data 0x740364A3
#data 0x63F21F42
#data 0xE3FA003C
#data 0x602080FC
#data 0xC9C06ED2
#data 0x90696403
#data 0x02EE684C
#data 0x493C6983
#data 0x8F0F4215
#data 0x90622959
#data 0x411501EE
#data 0x905F8B0A
#data 0x644204EE
#data 0x644F4429
#data 0x39402459
#data 0x90558B02
#data 0x04EEBE6C

#align4
loc_8c197620:
#data 0x49289054
#data 0x610362D2
#data 0x6323710C
#data 0x6112313C
#data 0x4108032E
#data 0x914A331C
#data 0x62AC0236
#data 0x292B6ED2
#data 0x1F250EEE
#data 0x7E042E92
#data 0x7E042FE6
#data 0x630360D2
#data 0x6312313C
#data 0x43006233
#data 0x4308332C
#data 0x43004308
#data 0x54F19236
#data 0x4408302C
#data 0xB63E303C
#data 0x62F6044E
#data 0x2202912F
#data 0x03FCE010
#data 0xD618D519
#data 0x57F1633C
#data 0x1F31D418
#data 0x600C84FC
#data 0x60D22F02
#data 0x8801001E
#data 0xE9008F2A
#data 0x481853F1
#data 0x286960F2
#data 0x4C154328
#data 0x43184028
#data 0x23492059
#data 0x50F5230B
#data 0x230B238B
#data 0x7E042E32
#data 0x6A938F42

#align4
loc_8c1976B8:
#data 0x7A016376
#data 0x2E323AC3
#data 0x7E048FFA
#data 0x0009A03A
#data 0x0FD810CC
#data 0x10B40FCC
#data 0x10C40FE8

#align4
loc_8c1976D4:
#data bank1c.loc_8c1c60B0
#data 0x8C347150
#data 0x0000FF00
#data 0x00FF0000
#data 0xFF000000

#align4
loc_8c1976E8:
#data 0x482863F2
#data 0x4C154A28
#data 0x23694318
#data 0x4A182859
#data 0x53F1283B
#data 0x28AB2A49
#data 0x2E82283B
#data 0x8F197E04
#data 0x6893

loc_8c19770A:
#data 0x6A76
#data 0x38C37801
#data 0x63A362A3
#data 0x61A34228
#data 0x42184318
#data 0x22492359
#data 0xE3F8223B
#data 0x2169413C
#data 0x61A3221B
#data 0x41194129
#data 0x611C611E
#data 0x2E22221B
#data 0x7E048FE7

#align4
loc_8c19773C:
#data 0x60D29179
#data 0x8801001E
#data 0x57FE8B1B
#data 0x8F224B15
#data 0x6C93

loc_8c19774E:
#data 0x8471
#data 0x61707C01
#data 0x40283CB3
#data 0x63032059
#data 0x41288472
#data 0x20694018
#data 0x8473230B
#data 0x21494118
#data 0x231B600C
#data 0x2E32230B
#data 0x8FEA7E04
#data 0xA00A7704
#data 0x0009

loc_8c19777E:
#data 0x55FE
#data 0x8F064B15
#data 0x6493

loc_8c197786:
#data 0x6356
#data 0x34B37401
#data 0x8FFA2E32
#data 0x7E04

loc_8c197792:
#data 0x904F
#data 0x63D252F2
#data 0x70040326
#data 0x52F263D2
#data 0x4208013E
#data 0x0316312C
#data 0x7F18E000
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1977BE:
mov.l @(loc_8c19783C,pc),r5 ; r5 set to 0x8C347150
shll16 r4
mov.w @(loc_8c197836,pc),r0 ; r0 set to 0xFCC
mov.l @r5,r3
mov r0,r1 ; r1 set to 0xFCC
add 0x0C,r1 ; r1 set to 0xFD8
mov r3,r2
add r2,r1 ; r1 ??? bc r2 is ???
mov.l @r1,r1
mov.l @(r0,r3),r2
shll2 r1
add r1,r2
mov.l r2,@(r0,r3)
mov 0x01,r1 ; r1 set to 0x01
mov.l @r5,r6
mov.w @(loc_8c197838,pc),r3 ; r3 set to 0x300
mov.l @(r0,r6),r6
add 0x0C,r0 ; r0 set to 0xFD8
or r3,r4
mov.l r4,@r6
mov.l @r5,r2
mov.l r1,@(r0,r2)
add 0x04,r0 ; r0 set to 0xFDC
mov.l @r5,r2
mov.l @(r0,r2),r1 ; r1 ??? bc r2 is ???
add 0x04,r1
mov.l r1,@(r0,r2)
rts
mov 0x00,r0
;-------------------------------------------------------------------------------
#data 0x4428D510
#data 0x6352901B
#data 0x710C6103
#data 0x312C6233
#data 0x023E6112
#data 0x321C4108
#data 0xE1010326
#data 0x93106652
#data 0x700C066E
#data 0x2642243B
#data 0x02166252
#data 0x62527004
#data 0x7104012E
#data 0x000B0216
#data 0x10C4E000
#data 0x0FD8

loc_8c197836:
#data 0x0FCC

loc_8c197838:
#data 0x0300
#data 0x0200

#align4
loc_8c19783C:
#data 0x8C347150
#data 0x4428D53D
#data 0x63529071
#data 0x710C6103
#data 0x312C6233
#data 0x023E6112
#data 0x321C4108
#data 0xE1010326
#data 0x93656652
#data 0x700C066E
#data 0x2642243B
#data 0x02166252
#data 0x62527004
#data 0x7104012E
#data 0x000B0216
#data 0xE000
;-------------------------------------------------------------------------------

loc_8c19787A:
add 0xFC,r15
mov.l @(loc_8c197938,pc),r6 ; r6 set to 0x8C347150
mov r4,r3
shll2 r3
mov.w @(loc_8c19792E,pc),r2 ; r2 set to 0x10B4
mov.l @r6,r5
shll r3
mov.l @r6,r0
shll2 r4
add 0x04,r5
mov.w @(loc_8c197930,pc),r1 ; r1 set to 0xFE8
add r3,r5
mov r0,r3
add r3,r2 ; r2 ??? bc r3 is ???
mov.l @r2,r2
add r1,r0
neg r2,r2
add 0x01,r2
mov r2,r3
shll r2
add r3,r2
shll2 r2
shll2 r2
shll r2
add r2,r0
mov r0,r2
mov.l @(loc_8c19793C,pc),r0 ; r0 set to 0x8C1C60C8
mov.l @(r0,r4),r3
shll2 r3
add r3,r2
mov.l @r2,r4
mov.l @r4,r3
mov.l r3,@r15
mov r3,r0 ; r0 ??? bc r3 is ???
cmp/eq 0xFF,r0
bt/s loc_8c1978CE
mov 0x00,r7 ; r7 set to 0x00
mov.w @(loc_8c197932,pc),r1 ; r1 set to 0xFF00
cmp/eq r1,r0
bt loc_8c1978CE
bra loc_8c1978EC
nop

loc_8c1978CE:
mov.l @(0x04,r5),r3
mov.w @(loc_8c197934,pc),r0 ; r0 set to 0x10DC
add 0x01,r3
mov.l r3,@(0x04,r5)
mov.l @r6,r2
mov.l @(0x04,r5),r1
mov.l @(r0,r2),r3
cmp/hi r3,r1
bf loc_8c1978E6
mov r7,r6
bra loc_8c197906
mov 0xFF,r4

loc_8c1978E6:
mov 0x00,r0 ; r0 set to 0x00
rts
add 0x04,r15
;-------------------------------------------------------------------------------

loc_8c1978EC:
mov.w @(loc_8c197936,pc),r1 ; r1 set to 0x10C4
mov.l @r6,r0
mov.l @(r0,r1),r0
cmp/eq 0x01,r0
bf loc_8c1978FC
mov r15,r4
bra loc_8c197900
add 0x01,r4

#align4
loc_8c1978FC:
#data 0x740264F3

#align4
loc_8c197900:
#data 0x64736640
#data 0x1571


loc_8c197906:
mov.b @r5,r0
mov.b r0,@(0x01,r5)
mov.b r6,@r5
mov.b @(0x01,r5),r0
mov.b @r5,r6
xor r6,r0
and r6,r0
mov.b r0,@(0x02,r5)
mov.b @r5,r6
not r6,r0
mov r0,r3
mov.b @(0x01,r5),r0
xor r6,r0
and r3,r0
mov.b r0,@(0x03,r5)
mov r4,r0
rts
add 0x04,r15
;-------------------------------------------------------------------------------
#data 0x0FCC
#data 0x0400

loc_8c19792E:
#data 0x10B4

loc_8c197930:
#data 0x0FE8

loc_8c197932:
#data 0xFF00

loc_8c197934:
#data 0x10DC

loc_8c197936:
#data 0x10C4

#align4
loc_8c197938:
#data 0x8C347150

#align4
loc_8c19793C:
#data bank1c.loc_8c1c60C8

loc_8c197940:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x4F222FA6
#data 0xDD4A7FF4
#data 0x42086253
#data 0x4200918D
#data 0x63D22F52
#data 0x323C7304
#data 0x1F21E32C
#data 0x6ED20437
#data 0x7E289282
#data 0x031A6AD2
#data 0x60D23A2C
#data 0xE3783E3C
#data 0x031A0437
#data 0x63033A3C
#data 0x6112313C
#data 0x7101611B
#data 0x41006313
#data 0x9371313C
#data 0x6B434108
#data 0x4B084108
#data 0x1FB24100
#data 0x301C303C
#data 0x60E00BBE
#data 0x84E480E1
#data 0x51E780E5
#data 0x8D032118
#data 0x51E7EC00
#data 0x1EC71E18

#align4
loc_8c1979B8:
#data 0xE21FD030
#data 0x2329034C
#data 0x614C6433
#data 0x89062118
#data 0x67E366A3
#data 0xB0DB2FB6
#data 0xA00555F2
#data 0x7F04

loc_8c1979D6:
#data 0x65A3
#data 0x67B366E3
#data 0x64F2B082

#align4
loc_8c1979E0:
#data 0x84E76503
#data 0x89112008
#data 0x904262D2
#data 0x013E6323
#data 0x611B50F2
#data 0x63137101
#data 0x313C4100
#data 0x4108933A
#data 0x323C4108
#data 0x312C4100
#data 0x1E24021E

#align4
loc_8c197A0C:
#data 0x200884ED
#data 0x60C38902
#data 0x80ED80EC

#align4
loc_8c197A18:
#data 0x630384E2
#data 0x203B84EC
#data 0x84E380EC
#data 0x84EC6303
#data 0x80EC203B
#data 0x7F0C6053
#data 0x6AF64F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c197A3E:
#data 0x8447
#data 0x600CE601
#data 0x8F088801
#data 0x8448E500
#data 0x8805600C
#data 0xA0168B01
#data 0x2460

loc_8c197A56:
#data 0xA014
#data 0x2450

loc_8c197A5A:
#data 0x8448
#data 0x600C910B
#data 0x89033010
#data 0x89018800
#data 0x0009A00A

#align4
loc_8c197A6C:
#data 0x2450A009
#data 0x10B4044C
#data 0x00FF0FE8
#data 0x8C347150

#align4
loc_8c197A7C:
#data bank1c.loc_8c1c60B0

loc_8c197A80:
#data 0x2460

loc_8c197A82:
#data 0x000B
#data 0xE000
;-------------------------------------------------------------------------------

loc_8c197A86:
#data 0x7FFC
#data 0x9175D23D
#data 0x2F326356
#data 0x001E6022
#data 0x8B098801
#data 0x606466F3
#data 0x6064804B
#data 0x6064804A
#data 0x60608049
#data 0x8048A009

#align4
loc_8c197AAC:
#data 0x606466F3
#data 0x60648048
#data 0x60648049
#data 0x6060804A
#data 0x804B

loc_8c197ABE:
#data 0x8448
#data 0x600C935B
#data 0x8B023030
#data 0xA008E1FF
#data 0x1415

loc_8c197ACE:
#data 0x9255
#data 0x89023023
#data 0xA002E000
#data 0x1405

loc_8c197ADA:
#data 0x6152
#data 0x1415

loc_8c197ADE:
#data 0xE000
#data 0x7F04000B
;-------------------------------------------------------------------------------

#align4
loc_8c197AE4:
#data 0x6E632FE6
#data 0x6D732FD6
#data 0x6C532FC6
#data 0x65734F22
#data 0x6463BFC7
#data 0xBFA065D3
#data 0x84E164E3
#data 0x913964E0
#data 0x2049204A
#data 0x64E080E2
#data 0x63036047
#data 0x204A84E1
#data 0xD31A2039
#data 0x603280E3
#data 0x8801001E
#data 0x84E88B0C
#data 0x640C9229
#data 0x89073420
#data 0x89052448
#data 0xD31465D2
#data 0x7501655C
#data 0x64D3430B

#align4
loc_8c197B3C:
#data 0x222862E0
#data 0xE4018D02
#data 0xE009A001

loc_8c197B48:
#data 0x6043

loc_8c197B4A:
#data 0x80E4
#data 0x200884E3
#data 0x200884E2
#data 0xE0108905
#data 0x66D365E3
#data 0xB0AC0C44
#data 0x64C3

loc_8c197B62:
#data 0x84E3
#data 0x89012008
#data 0x64C3B149

#align4
loc_8c197B6C:
#data 0xE0004F26
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x00FF10C4
#data 0x000000E0
#data 0x8C347150

#align4
loc_8c197B84:
#data bank1a.loc_8c1aAAC0

loc_8c197B88:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x4F222FA6
#data 0x6A537FFC
#data 0xED006E73
#data 0x5CF72F40
#data 0x65C36B63
#data 0x6473BF6F
#data 0x80E260D3
#data 0x84A280E3
#data 0x600C65F0
#data 0x2058655C
#data 0xE4018D06
#data 0x80E46043
#data 0x53E92ED0
#data 0x1E397301

#align4
loc_8c197BC8:
#data 0x600C84A3
#data 0x89052058
#data 0x80E4E004
#data 0x2ED06043
#data 0x1ED980E3

#align4
loc_8c197BDC:
#data 0x963362A0
#data 0x2258622C
#data 0x84E78934
#data 0x8B042008
#data 0x222862E0
#data 0xA0308B27
#data 0x0009

loc_8c197BF6:
#data 0x600C
#data 0x8B148801
#data 0x600C84E8
#data 0x8B038805
#data 0x80E26043
#data 0x2E00A01B

#align4
loc_8c197C0C:
#data 0x53E9D10F
#data 0x7301901B
#data 0x62121E39
#data 0x50E9032E
#data 0x89083036
#data 0xA0186043
#data 0x80E4

loc_8c197C26:
#data 0x84E7
#data 0x8804600C
#data 0x60438B06
#data 0x80E3

loc_8c197C32:
#data 0x6063
#data 0x80E42ED0
#data 0x1ED9A00D

#align4
loc_8c197C3C:
#data 0x200884E7
#data 0x8909

loc_8c197C42:
#data 0x60D3
#data 0x80E4A007
#data 0x10D800FF
#data 0x8C347150

#align4
loc_8c197C50:
#data 0x80E46063
#data 0x2ED0

loc_8c197C56:
#data 0x63E0
#data 0x89152338
#data 0x200884E7
#data 0xD33D8912
#data 0x60329176
#data 0x8801001E
#data 0x60C28B0C
#data 0x88FF6403
#data 0x926E8908
#data 0x89053420
#data 0xD33765C2
#data 0x7501655C
#data 0x64C3430B

#align4
loc_8c197C88:
#data 0x200884E2
#data 0xE0108905
#data 0x66C365E3
#data 0xB0100BD4
#data 0x64B3

loc_8c197C9A:
#data 0x84E3
#data 0x89032008
#data 0x0BD4E010
#data 0x64B3B0AB

#align4
loc_8c197CA8:
#data 0x7F04E000
#data 0x6AF64F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c197CBA:
#data 0x7604
#data 0x6563D328
#data 0xD2288451
#data 0x600C6643
#data 0x20394028
#data 0x84526103
#data 0x600C4318
#data 0x20294018
#data 0x6050210B
#data 0x600CE700
#data 0x40184028
#data 0x210B2039
#data 0x75048453
#data 0x210B600C
#data 0xA0032412
#data 0x7604

loc_8c197CF6:
#data 0x6354
#data 0x76012630

#align4
loc_8c197CFC:
#data 0x72086243
#data 0x8BF83622
#data 0xA0036643
#data 0x7608

loc_8c197D0A:
#data 0x6354
#data 0x76012630

#align4
loc_8c197D10:
#data 0x720C6243
#data 0x8BF83622
#data 0xA0036643
#data 0x760C

loc_8c197D1E:
#data 0x6354
#data 0x76012630

#align4
loc_8c197D24:
#data 0x72106243
#data 0x8BF83622
#data 0xE0116354
#data 0xE0100434
#data 0x2228024C
#data 0x60508916
#data 0x72126243
#data 0x2200C903
#data 0x6050E113
#data 0x600C314C
#data 0xC9034009
#data 0x2100A014
#data 0xFF0010C4
#data 0x8C347150

#align4
loc_8c197D5C:
#data bank1a.loc_8c1aAAC0
#data 0x00FF0000
#data 0x0000FF00

#align4
loc_8c197D68:
#data 0x62436050
#data 0x7212D14B
#data 0xC90F600C
#data 0xE013031C
#data 0x04742230

#align4
loc_8c197D7C:
#data 0x918BD348
#data 0x001E6032
#data 0x8B0B8801
#data 0xA0036643
#data 0x7614

loc_8c197D8E:
#data 0x6354
#data 0x76012630

#align4
loc_8c197D94:
#data 0x72336243
#data 0x8BF83622
#data 0x0009A00D

#align4
loc_8c197DA0:
#data 0x75016643
#data 0x7614A003

#align4
loc_8c197DA8:
#data 0x26306354
#data 0x7601

loc_8c197DAE:
#data 0x6243
#data 0x36227232
#data 0xE0328BF8
#data 0x0474

loc_8c197DBA:
#data 0xE033
#data 0x04746643
#data 0x7634A003

#align4
loc_8c197DC4:
#data 0x26306354
#data 0x7601

loc_8c197DCA:
#data 0x6243
#data 0x36227270
#data 0xE0708BF8
#data 0xE1740474
#data 0x314C8451
#data 0x600C6350
#data 0x4018633C
#data 0x2101203B
#data 0x600C8453
#data 0x63034018
#data 0x600C8452
#data 0xE076230B
#data 0x000B0435
#data 0xE000
;-------------------------------------------------------------------------------

loc_8c197DFE:
#data 0x2FE6
#data 0x4F22E61E
#data 0xB2656E43
#data 0x62E3E500
#data 0xE015E46E
#data 0xE3287214
#data 0xE36F2230
#data 0xE0160E44
#data 0xE0170E34
#data 0xE0180E44
#data 0x64E3E365
#data 0xE0190E34
#data 0x741AE229
#data 0xE5200E24

#align4
loc_8c197E34:
#data 0x245063E3
#data 0x74017333
#data 0x8BF93432
#data 0xE300E033
#data 0x60330E34
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c197E4E:
mov.l @(loc_8c197EA4,pc),r3 ; r3 set to 0x8C198320
sts.l pr,@-r15
mov.l @r3,r0
tas.b @r0
bt loc_8c197E68
mov.l @(loc_8c197EAC,pc),r2 ; r2 set to 0x8C196E7C
mov.l @(loc_8c197EA8,pc),r1 ; r1 set to 0x8C1C6088
jsr @r2
mov.l r1,@-r15
add 0x04,r15
lds.l @r15+,pr
rts
mov 0xFE,r0
;-------------------------------------------------------------------------------

loc_8c197E68:
bsr loc_8c197E7A
nop
mov.l @(loc_8c197EA4,pc),r3 ; r3 set to 0x8C198320
mov 0x00,r1 ; r1 set to 0x00
mov.l @r3,r2
mov.b r1,@r2
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c197E7A:
sts.l pr,@-r15
add 0xFC,r15
mov 0x00,r3 ; r3 set to 0x00
mov.l r5,@r15
mov.l r3,@-r15
mov 0x01,r7 ; r7 set to 0x01
mov.l r3,@-r15
mov r15,r6
add 0x08,r6
bsr loc_8c19733C
mov 0x09,r5 ; r5 set to 0x09
add 0x0C,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------
#data 0x000010C4

#align4
loc_8c197E9C:
#data bank1c.loc_8c1c9948
#data 0x8C347150

#align4
loc_8c197EA4:
#data loc_8c198320

loc_8c197EA8:
#data bank1c.loc_8c1c6088

loc_8c197EAC:
#data loc_8c196E7C


loc_8c197EB0:
mov.l @(loc_8c19813C,pc),r3 ; r3 set to 0x8C198320
sts.l pr,@-r15
mov.l @r3,r0
tas.b @r0
bt loc_8c197ECA
mov.l @(loc_8c198144,pc),r2 ; r2 set to 0x8C196E7C
mov.l @(loc_8c198140,pc),r1 ; r1 set to 0x8C1C6088
jsr @r2
mov.l r1,@-r15
add 0x04,r15
lds.l @r15+,pr
rts
mov 0xFE,r0
;-------------------------------------------------------------------------------

loc_8c197ECA:
bsr loc_8c197EDC
nop
mov.l @(loc_8c19813C,pc),r3 ; r3 set to 0x8C198320
mov 0x00,r1 ; r1 set to 0x00
mov.l @r3,r2
mov.b r1,@r2
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c197EDC:
sts.l pr,@-r15
mov 0x00,r3 ; r3 set to 0x00
mov r3,r6 ; r6 set to 0x00
mov r3,r7 ; r7 set to 0x00
mov.l r3,@-r15
mov.l r3,@-r15
bsr loc_8c19733C
mov 0x01,r5 ; r5 set to 0x01
add 0x08,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c197EF4:
mov.l @(loc_8c19813C,pc),r3 ; r3 set to 0x8C198320
sts.l pr,@-r15
mov.l @r3,r0
tas.b @r0
bt loc_8c197F0E
mov.l @(loc_8c198144,pc),r2 ; r2 set to 0x8C196E7C
mov.l @(loc_8c198140,pc),r1 ; r1 set to 0x8C1C6088
jsr @r2
mov.l r1,@-r15
add 0x04,r15
lds.l @r15+,pr
rts
mov 0xFE,r0
;-------------------------------------------------------------------------------

loc_8c197F0E:
bsr loc_8c197F20
nop
mov.l @(loc_8c19813C,pc),r3 ; r3 set to 0x8C198320
mov 0x00,r1 ; r1 set to 0x00
mov.l @r3,r2
mov.b r1,@r2
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c197F20:
sts.l pr,@-r15
mov 0x00,r3 ; r3 set to 0x00
mov r3,r6 ; r6 set to 0x00
mov r3,r7 ; r7 set to 0x00
mov.l r3,@-r15
mov.l r3,@-r15
bsr loc_8c19733C
mov 0x04,r5 ; r5 set to 0x04
add 0x08,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c197F38:
mov.l @(loc_8c19813C,pc),r3 ; r3 set to 0x8C198320
sts.l pr,@-r15
mov.l @r3,r0
tas.b @r0
bt loc_8c197F52
mov.l @(loc_8c198144,pc),r2 ; r2 set to 0x8C196E7C
mov.l @(loc_8c198140,pc),r1 ; r1 set to 0x8C1C6088
jsr @r2
mov.l r1,@-r15
add 0x04,r15
lds.l @r15+,pr
rts
mov 0xFE,r0
;-------------------------------------------------------------------------------

loc_8c197F52:
bsr loc_8c197F64
nop
mov.l @(loc_8c19813C,pc),r3 ; r3 set to 0x8C198320
mov 0x00,r1 ; r1 set to 0x00
mov.l @r3,r2
mov.b r1,@r2
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c197F64:
sts.l pr,@-r15
mov 0x00,r3 ; r3 set to 0x00
mov r3,r6 ; r6 set to 0x00
mov r3,r7 ; r7 set to 0x00
mov.l r3,@-r15
mov.l r3,@-r15
bsr loc_8c19733C
mov 0x03,r5 ; r5 set to 0x03
add 0x08,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c197F7C:
mov.l @(loc_8c19813C,pc),r3 ; r3 set to 0x8C198320
sts.l pr,@-r15
mov.l @r3,r0
tas.b @r0
bt loc_8c197F96
mov.l @(loc_8c198144,pc),r2 ; r2 set to 0x8C196E7C
mov.l @(loc_8c198140,pc),r1 ; r1 set to 0x8C1C6088
jsr @r2
mov.l r1,@-r15
add 0x04,r15
lds.l @r15+,pr
rts
mov 0xFE,r0
;-------------------------------------------------------------------------------

loc_8c197F96:
bsr loc_8c197FA8
nop
mov.l @(loc_8c19813C,pc),r3 ; r3 set to 0x8C198320
mov 0x00,r1 ; r1 set to 0x00
mov.l @r3,r2
mov.b r1,@r2
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c197FA8:
sts.l pr,@-r15
mov 0x00,r3 ; r3 set to 0x00
mov r3,r6 ; r6 set to 0x00
mov r3,r7 ; r7 set to 0x00
mov.l r3,@-r15
mov.l r3,@-r15
bsr loc_8c19733C
mov 0x02,r5 ; r5 set to 0x02
add 0x08,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c197FC0:
mov.l @(loc_8c19813C,pc),r3 ; r3 set to 0x8C198320
sts.l pr,@-r15
mov.l @r3,r0
tas.b @r0
bt loc_8c197FDA
mov.l @(loc_8c198144,pc),r2 ; r2 set to 0x8C196E7C
mov.l @(loc_8c198140,pc),r1 ; r1 set to 0x8C1C6088
jsr @r2
mov.l r1,@-r15
add 0x04,r15
lds.l @r15+,pr
rts
mov 0xFE,r0
;-------------------------------------------------------------------------------

loc_8c197FDA:
bsr loc_8c197FEC
nop
mov.l @(loc_8c19813C,pc),r3 ; r3 set to 0x8C198320
mov 0x00,r1 ; r1 set to 0x00
mov.l @r3,r2
mov.b r1,@r2
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c197FEC:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xF8,r15
shll16 r6
mov r15,r14
shll8 r6
mov.l r5,@r14
mov 0x00,r3 ; r3 set to 0x00
mov.l r6,@(0x04,r14)
mov.l r3,@-r15
mov 0x02,r7 ; r7 set to 0x02
mov r14,r6
mov.l r3,@-r15
bsr loc_8c19733C
mov 0x0A,r5 ; r5 set to 0x0A
add 0x10,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c198012:
mov.l @(loc_8c19813C,pc),r3 ; r3 set to 0x8C198320
sts.l pr,@-r15
mov.l @r3,r0
tas.b @r0
bt loc_8c19802C
mov.l @(loc_8c198144,pc),r2 ; r2 set to 0x8C196E7C
mov.l @(loc_8c198140,pc),r1 ; r1 set to 0x8C1C6088
jsr @r2
mov.l r1,@-r15
add 0x04,r15
lds.l @r15+,pr
rts
mov 0xFE,r0
;-------------------------------------------------------------------------------

loc_8c19802C:
mov.l @(0x04,r15),r3
mov.l r3,@-r15
bsr loc_8c198044
nop
add 0x04,r15
mov.l @(loc_8c19813C,pc),r3 ; r3 set to 0x8C198320
mov 0x00,r1 ; r1 set to 0x00
mov.l @r3,r2
mov.b r1,@r2
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c198044:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xF8,r15
shll16 r6
mov r15,r14
shll16 r7
mov.l r5,@r14
mov.l @(0x10,r15),r3
shll8 r6
or r7,r6
or r3,r6
mov 0x00,r3 ; r3 set to 0x00
mov.l r6,@(0x04,r14)
mov.l r3,@-r15
mov 0x02,r7 ; r7 set to 0x02
mov r14,r6
mov.l r3,@-r15
bsr loc_8c19733C
mov 0x0B,r5 ; r5 set to 0x0B
add 0x10,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c198072:
mov.l @(loc_8c19813C,pc),r3 ; r3 set to 0x8C198320
sts.l pr,@-r15
mov.l @r3,r0
tas.b @r0
bt loc_8c19808C
mov.l @(loc_8c198144,pc),r2 ; r2 set to 0x8C196E7C
mov.l @(loc_8c198140,pc),r1 ; r1 set to 0x8C1C6088
jsr @r2
mov.l r1,@-r15
add 0x04,r15
lds.l @r15+,pr
rts
mov 0xFE,r0
;-------------------------------------------------------------------------------

loc_8c19808C:
mov.l @(0x0C,r15),r3
mov.l r3,@-r15
mov.l @(0x0C,r15),r2
mov.l r2,@-r15
mov.l @(0x0C,r15),r3
mov.l r3,@-r15
bsr loc_8c1980AC
nop
add 0x0C,r15
mov.l @(loc_8c19813C,pc),r3 ; r3 set to 0x8C198320
mov 0x00,r1 ; r1 set to 0x00
mov.l @r3,r2
mov.b r1,@r2
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c1980AC:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xF8,r15
shll16 r6
mov r15,r14
shll8 r6
mov.l r5,@r14
shll16 r7
mov.l @(0x10,r15),r3
or r7,r6
or r3,r6
mov.l r6,@(0x04,r14)
mov 0x02,r7 ; r7 set to 0x02
mov.l @(0x18,r15),r3
mov r14,r6
mov.l r3,@-r15
mov.l @(0x18,r15),r2
mov.l r2,@-r15
bsr loc_8c19733C
mov 0x0C,r5 ; r5 set to 0x0C
add 0x10,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1980DC:
mov.l @(loc_8c19813C,pc),r3 ; r3 set to 0x8C198320
sts.l pr,@-r15
mov.l @r3,r0
tas.b @r0
bt loc_8c1980F6
mov.l @(loc_8c198144,pc),r2 ; r2 set to 0x8C196E7C
mov.l @(loc_8c198140,pc),r1 ; r1 set to 0x8C1C6088
jsr @r2
mov.l r1,@-r15
add 0x04,r15
lds.l @r15+,pr
rts
mov 0xFE,r0
;-------------------------------------------------------------------------------

loc_8c1980F6:
mov.l @(0x04,r15),r3
mov.l r3,@-r15
bsr loc_8c19810E
nop
add 0x04,r15
mov.l @(loc_8c19813C,pc),r3 ; r3 set to 0x8C198320
mov 0x00,r1 ; r1 set to 0x00
mov.l @r3,r2
mov.b r1,@r2
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c19810E:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xF8,r15
shll16 r6
mov r15,r14
shll16 r7
mov.l r5,@r14
mov.l @(0x10,r15),r3
shll8 r6
or r7,r6
or r3,r6
mov 0x00,r3 ; r3 set to 0x00
mov.l r6,@(0x04,r14)
mov.l r3,@-r15
mov 0x02,r7 ; r7 set to 0x02
mov r14,r6
mov.l r3,@-r15
bsr loc_8c19733C
mov 0x0D,r5 ; r5 set to 0x0D
add 0x10,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8c19813C:
#data loc_8c198320

loc_8c198140:
#data bank1c.loc_8c1c6088

loc_8c198144:
#data loc_8c196E7C


loc_8c198148:
mov.l @(loc_8c19825C,pc),r3 ; r3 set to 0x8C198320
sts.l pr,@-r15
mov.l @r3,r0
tas.b @r0
bt loc_8c198162
mov.l @(loc_8c198264,pc),r2 ; r2 set to 0x8C196E7C
mov.l @(loc_8c198260,pc),r1 ; r1 set to 0x8C1C6088
jsr @r2
mov.l r1,@-r15
add 0x04,r15
lds.l @r15+,pr
rts
mov 0xFE,r0
;-------------------------------------------------------------------------------

loc_8c198162:
bsr loc_8c198174
nop
mov.l @(loc_8c19825C,pc),r3 ; r3 set to 0x8C198320
mov 0x00,r1 ; r1 set to 0x00
mov.l @r3,r2
mov.b r1,@r2
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c198174:
sts.l pr,@-r15
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8c198258,pc),r5 ; r5 set to 0xFC
mov r3,r7 ; r7 set to 0x00
mov.l r3,@-r15
mov.l r3,@-r15
bsr loc_8c19733C
mov r3,r6 ; r6 set to 0x00
add 0x08,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c19818C:
mov.l @(loc_8c19825C,pc),r3 ; r3 set to 0x8C198320
sts.l pr,@-r15
mov.l @r3,r0
tas.b @r0
bt loc_8c1981A6
mov.l @(loc_8c198264,pc),r2 ; r2 set to 0x8C196E7C
mov.l @(loc_8c198260,pc),r1 ; r1 set to 0x8C1C6088
jsr @r2
mov.l r1,@-r15
add 0x04,r15
lds.l @r15+,pr
rts
mov 0xFE,r0
;-------------------------------------------------------------------------------

loc_8c1981A6:
bsr loc_8c1981B8
nop
mov.l @(loc_8c19825C,pc),r3 ; r3 set to 0x8C198320
mov 0x00,r1 ; r1 set to 0x00
mov.l @r3,r2
mov.b r1,@r2
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c1981B8:
sts.l pr,@-r15
add 0xF8,r15
mov 0x20,r3 ; r3 set to 0x20
mov.l r5,@(0x04,r15)
mov 0x01,r2 ; r2 set to 0x01
mov.l r3,@r15
mov.l r2,@-r15
mov r2,r7 ; r7 set to 0x01
mov.l @(0x08,r15),r3 ; r3 ??? bc r15 is ???
mov.l r3,@-r15
mov r15,r6
add 0x08,r6
bsr loc_8c19733C
mov 0x10,r5 ; r5 set to 0x10
add 0x10,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c1981DC:
mov.l @(loc_8c19825C,pc),r3 ; r3 set to 0x8C198320
sts.l pr,@-r15
mov.l @r3,r0
tas.b @r0
bt loc_8c1981F6
mov.l @(loc_8c198264,pc),r2 ; r2 set to 0x8C196E7C
mov.l @(loc_8c198260,pc),r1 ; r1 set to 0x8C1C6088
jsr @r2
mov.l r1,@-r15
add 0x04,r15
lds.l @r15+,pr
rts
mov 0xFE,r0
;-------------------------------------------------------------------------------

loc_8c1981F6:
bsr loc_8c198208
nop
mov.l @(loc_8c19825C,pc),r3 ; r3 set to 0x8C198320
mov 0x00,r1 ; r1 set to 0x00
mov.l @r3,r2
mov.b r1,@r2
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c198208:
sts.l pr,@-r15
add 0xF8,r15
mov 0x10,r3 ; r3 set to 0x10
mov.l r5,@(0x04,r15)
mov 0x01,r2 ; r2 set to 0x01
mov.l r3,@r15
mov.l r2,@-r15
mov r2,r7 ; r7 set to 0x01
mov.l @(0x08,r15),r3 ; r3 ??? bc r15 is ???
mov.l r3,@-r15
mov r15,r6
add 0x08,r6
bsr loc_8c19733C
mov 0x0F,r5 ; r5 set to 0x0F
add 0x10,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c19822C:
mov.l @(loc_8c19825C,pc),r3 ; r3 set to 0x8C198320
sts.l pr,@-r15
mov.l @r3,r0
tas.b @r0
bt loc_8c198246
mov.l @(loc_8c198264,pc),r2 ; r2 set to 0x8C196E7C
mov.l @(loc_8c198260,pc),r1 ; r1 set to 0x8C1C6088
jsr @r2
mov.l r1,@-r15
add 0x04,r15
lds.l @r15+,pr
rts
mov 0xFE,r0
;-------------------------------------------------------------------------------

loc_8c198246:
bsr loc_8c198268
nop
mov.l @(loc_8c19825C,pc),r3 ; r3 set to 0x8C198320
mov 0x00,r1 ; r1 set to 0x00
mov.l @r3,r2
mov.b r1,@r2
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c198258:
#data 0x00FC
#data 0x0000

#align4
loc_8c19825C:
#data loc_8c198320

loc_8c198260:
#data bank1c.loc_8c1c6088

loc_8c198264:
#data loc_8c196E7C


loc_8c198268:
sts.l pr,@-r15
add 0xF4,r15
mov.l r6,@(0x04,r15)
mov.l r7,@(0x08,r15)
mov 0x01,r7 ; r7 set to 0x01
mov.l r5,@r15
mov.l @(0x08,r15),r3
mov.l r3,@-r15
mov.l @(0x08,r15),r2
mov.l r2,@-r15
mov r15,r6
add 0x08,r6
bsr loc_8c19733C
mov 0x0E,r5 ; r5 set to 0x0E
add 0x14,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c19828C:
bra loc_8c198290
nop

loc_8c198290:
bra loc_8c1977BE
nop
#data 0x4F22D31B
#data 0x401B6032
#data 0xD21B8907
#data 0x420BD119
#data 0x7F042F16
#data 0x000B4F26
#data 0xB007E0FE
#data 0xD3140009
#data 0x6232E100
#data 0x4F262210
#data 0x0009000B
;-------------------------------------------------------------------------------

loc_8c1982C0:
mov.l @(loc_8c198310,pc),r3 ; r3 set to 0x8C347150
mov.w @(loc_8c198300,pc),r0 ; r0 set to 0xFCC
mov.l @r3,r4
mov.l @(loc_8c198314,pc),r2 ; r2 set to 0x80000000
mov.l @(r0,r4),r4
mov.l @r4,r1
or r2,r1
mov.l r1,@r4
rts
mov 0x00,r0
;-------------------------------------------------------------------------------

#align4
loc_8c1982D4:
#data 0xE7004615
#data 0x60438F05

#align4
loc_8c1982DC:
#data 0x20527701
#data 0x8FFB3763
#data 0x7004

loc_8c1982E6:
#data 0x000B
#data 0x6063
;-------------------------------------------------------------------------------

loc_8c1982EA:
mov.l @(loc_8c198318,pc),r0 ; r0 set to 0xFFFFFFF
rts
and r4,r0
;-------------------------------------------------------------------------------
#data 0x6043000B
;-------------------------------------------------------------------------------

loc_8c1982F4:
mov.l @(loc_8c198310,pc),r2 ; r2 set to 0x8C347150
mov.w @(loc_8c198302,pc),r0 ; r0 set to 0x10F4
mov.l @(loc_8c19831C,pc),r1 ; r1 set to 0xA05F6C00
mov.l @r2,r3
rts
mov.l r1,@(r0,r3)
;-------------------------------------------------------------------------------

loc_8c198300:
#data 0x0FCC

loc_8c198302:
#data 0x10F4

#align4
loc_8c198304:
#data loc_8c198320

loc_8c198308:
#data bank1c.loc_8c1c6088

loc_8c19830C:
#data loc_8c196E7C

loc_8c198310:
#data 0x8C347150

#align4
loc_8c198314:
#data 0x80000000

#align4
loc_8c198318:
#data 0x0FFFFFFF

#align4
loc_8c19831C:
#data 0xA05F6C00

#align4
loc_8c198320:
#data loc_8c198324

loc_8c198324:
#data 0x00000000


loc_8c198328:
shlr2 r6

loc_8c19832A:
mov.l @r5+,r1
dt r6
mov.l r1,@r4
bf/s loc_8c19832A
add 0x04,r4
rts
nop
;-------------------------------------------------------------------------------

loc_8c198338:
add r5,r4
mov.w @r4,r1
swap.b r1,r1
rts
extu.w r1,r0
;-------------------------------------------------------------------------------

loc_8c198342:
add r5,r4
mov.w @r4,r1
rts
extu.w r1,r0
;-------------------------------------------------------------------------------

loc_8c19834A:
swap.b r6,r6
add r5,r4
rts
mov.w r6,@r4
;-------------------------------------------------------------------------------

loc_8c198352:
add r5,r4
rts
mov.w r6,@r4
;-------------------------------------------------------------------------------

loc_8c198358:
sts.l pr,@-r15
mov.l @(loc_8c1983A4,pc),r3 ; r3 set to 0x8C1AAAD4
jsr @r3
nop
mov.l @(loc_8c1983A8,pc),r2 ; r2 set to 0x8C1AAAF4
jsr @r2
mov 0x08,r4 ; r4 set to 0x08
lds.l @r15+,pr
mov.l @(loc_8c1983AC,pc),r3 ; r3 set to 0x8C347154
rts
mov.l r0,@r3
;-------------------------------------------------------------------------------

loc_8c19836E:
add 0xF4,r15
mov.l @(loc_8c1983AC,pc),r3 ; r3 set to 0x8C347154
mov r6,r7
mov.l r4,@r15
mov.l r5,@(0x04,r15)
mov.l r6,@(0x08,r15)
mov.l @r3,r4
mov.l @(loc_8c1983B0,pc),r2 ; r2 set to 0x8C1AAB8A
mov.l @(0x04,r15),r6
mov.l @r15,r5
jmp @r2
add 0x0C,r15

loc_8c198386:
mov.l @(loc_8c1983B4,pc),r3 ; r3 set to 0x8C1AADFC
mov.l @(loc_8c1983AC,pc),r2 ; r2 set to 0x8C347154
jmp @r3
mov.l @r2,r4
#data 0xD20A
#data 0x422BD306
#data 0x6432


loc_8c198396:
mov.l @(loc_8c1983BC,pc),r2 ; r2 set to 0x8C1AADF8
jmp @r2
nop
#data 0x422BD208
#data 0x00000009

#align4
loc_8c1983A4:
#data bank1a.loc_8c1aAAD4

loc_8c1983A8:
#data bank1a.loc_8c1aAAF4

loc_8c1983AC:
#data 0x8C347154

#align4
loc_8c1983B0:
#data bank1a.loc_8c1aAB8A

loc_8c1983B4:
#data bank1a.loc_8c1aADFC

loc_8c1983B8:
#data bank1a.loc_8c1aACB4

loc_8c1983BC:
#data bank1a.loc_8c1aADF8

loc_8c1983C0:
#data bank1a.loc_8c1aACF2


loc_8c1983C4:
mov.l @(loc_8c198480,pc),r2 ; r2 set to 0x8C1C9958
mov 0x00,r3 ; r3 set to 0x00
rts
mov.l r3,@r2
;-------------------------------------------------------------------------------

loc_8c1983CC:
rts
nop
;-------------------------------------------------------------------------------

loc_8c1983D0:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xF0,r15
mov r4,r13
mov.l @(loc_8c198484,pc),r0 ; r0 set to 0x8C1C60E0
shll2 r13
mov.l @(loc_8c198488,pc),r10 ; r10 set to 0x8C1859A0
mov.l @(r0,r13),r13
mov r5,r14
jsr @r10
mov r13,r4
mov.l @(loc_8c19848C,pc),r3 ; r3 set to 0x8C1859B2
mov.l r0,@r15
jsr @r3
mov r13,r4
mov.l @r15,r2
mov r0,r4 ; r4 set to 0x8C1C60E0
mov.l @(loc_8c198490,pc),r11 ; r11 set to 0x8C198396
mov.b @r2,r3 ; r3 ??? bc r2 is ???
tst r3,r3
bf loc_8c19840A
bra loc_8c198590
nop

loc_8c19840A:
mov.l @r4,r0
tst 0x02,r0
bf loc_8c198414
bra loc_8c198590
nop

loc_8c198414:
mov.l @(loc_8c198494,pc),r2 ; r2 set to 0x8C185C80
jsr @r2
mov r13,r4

loc_8c19841A:
mov.l @(loc_8c198498,pc),r12 ; r12 set to 0x8C185AC6, r12 set to 0x8C185AC6

loc_8c19841C:
jsr @r10
mov r13,r4
mov 0x02,r5 ; r5 set to 0x02, r5 set to 0x02, r5 set to 0x02
mov 0x00,r6 ; r6 set to 0x00, r6 set to 0x00, r6 set to 0x00
jsr @r12
mov r13,r4
mov r0,r9
cmp/pz r9
bt loc_8c198436
jsr @r11
nop
bra loc_8c19841C
nop

loc_8c198436:
mov.l @(loc_8c19849C,pc),r12 ; r12 set to 0x8C1859CE

loc_8c198438:
mov r9,r5
jsr @r12
mov r13,r4
tst r0,r0
bf loc_8c19844A
jsr @r11
nop
bra loc_8c198438
nop

loc_8c19844A:
jsr @r10
mov r13,r4
mov.l @(loc_8c1984A0,pc),r3 ; r3 set to 0x8C185C7A
mov r0,r8
jsr @r3
mov r13,r4
tst r0,r0
bt loc_8c198464
jsr @r11
nop
mov.w @(loc_8c19847A,pc),r0 ; r0 set to 0xFF30
bra loc_8c198596
nop

loc_8c198464:
mov.b @(0x04,r8),r0
mov.l @(0x08,r8),r12
extu.b r0,r0
cmp/eq 0x08,r0
bt/s loc_8c1984A4
add 0x08,r12
mov.w @(loc_8c19847C,pc),r1 ; r1 set to 0xFC
cmp/eq r1,r0
bt loc_8c19841A
bra loc_8c198594
nop

loc_8c19847A:
#data 0xFF30

loc_8c19847C:
#data 0x00FC
#data 0x0000

#align4
loc_8c198480:
#data bank1c.loc_8c1c9958

loc_8c198484:
#data bank1c.loc_8c1c60E0

loc_8c198488:
#data bank18.loc_8c1859A0

loc_8c19848C:
#data bank18.loc_8c1859B2

loc_8c198490:
#data loc_8c198396

loc_8c198494:
#data bank18.loc_8c185C80

loc_8c198498:
#data bank18.loc_8c185AC6

loc_8c19849C:
#data bank18.loc_8c1859CE

loc_8c1984A0:
#data bank18.loc_8c185C7A


loc_8c1984A4:
mov.l @(loc_8c198600,pc),r10 ; r10 set to 0x8C33C568
mov 0x00,r5 ; r5 set to 0x00
mov.l @r10,r2
mov.l @(0x0C,r2),r3
jsr @r3
mov r12,r4
extu.w r0,r0
mov 0x02,r5 ; r5 set to 0x02
mov.l r0,@r14
mov.l @r10,r2
mov.l @(0x0C,r2),r3
jsr @r3
mov r12,r4
extu.w r0,r0
mov 0x04,r5 ; r5 set to 0x04
mov.l r0,@(0x04,r14)
mov.l @r10,r2
mov.l @(0x0C,r2),r3
jsr @r3
mov r12,r4
extu.w r0,r0
mov 0x06,r5 ; r5 set to 0x06
mov.l r0,@(0x08,r14)
mov.l @r10,r2
mov.l @(0x0C,r2),r3
jsr @r3
mov r12,r4
extu.w r0,r0
mov 0x08,r5 ; r5 set to 0x08
mov.l r0,@(0x0C,r14)
mov.l @r10,r2
mov.l @(0x0C,r2),r3
jsr @r3
mov r12,r4
extu.w r0,r0
mov 0x0A,r5 ; r5 set to 0x0A
mov.l r0,@(0x10,r14)
mov.l @r10,r2
mov.l @(0x0C,r2),r3
jsr @r3
mov r12,r4
extu.w r0,r0
mov 0x0C,r5 ; r5 set to 0x0C
mov.l r0,@(0x14,r14)
mov.l @r10,r2
mov.l @(0x0C,r2),r3
jsr @r3
mov r12,r4
extu.w r0,r0
mov 0x10,r5 ; r5 set to 0x10
mov.l r0,@(0x18,r14)
mov.l @r10,r2
mov.l @(0x0C,r2),r3
jsr @r3
mov r12,r4
extu.w r0,r0
mov 0x12,r5 ; r5 set to 0x12
mov.l r0,@(0x1C,r14)
mov.l @r10,r2
mov.l @(0x0C,r2),r3
jsr @r3
mov r12,r4
extu.w r0,r0
mov 0x14,r5 ; r5 set to 0x14
mov.l r0,@(0x20,r14)
mov.l @r10,r2
mov.l @(0x0C,r2),r3
jsr @r3
mov r12,r4
extu.w r0,r0
mov.w @(loc_8c1985F4,pc),r2 ; r2 set to 0x80
mov.l r0,@(0x34,r14)
mov.w @(loc_8c1985F6,pc),r3 ; r3 set to 0x1FF
mov.l r2,@(0x38,r14)
mov.b @(0x0E,r12),r0
mov.l @(loc_8c198604,pc),r2 ; r2 set to 0x8C1859B2
extu.b r0,r0
mov.l r0,@(0x24,r14)
mov.b @(0x0F,r12),r0
extu.b r0,r0
mov.l r0,@(0x28,r14)
mov.l r3,@(0x2C,r14)
jsr @r2
mov r13,r4
mov.l @(loc_8c198608,pc),r3 ; r3 set to 0x8C185D00
mov r15,r4
mov r0,r5 ; r5 ??? bc r0 is ???
jsr @r3
add 0x04,r4
cmp/pz r0
bf loc_8c198590
mov.w @(0x0A,r15),r0
mov 0x40,r1 ; r1 set to 0x40
add r14,r1 ; r1 ??? bc r14 is ???
mov.l @(loc_8c19860C,pc),r3 ; r3 set to 0x8C129128
extu.w r0,r0
mov.w @(loc_8c1985F8,pc),r4 ; r4 set to 0x200
mov.l r0,@(0x3C,r14)
mov.w @(0x08,r15),r0
extu.w r0,r0
mov.l r0,@r1
mov.w @(0x0A,r15),r0
extu.w r0,r0
jsr @r3
mov r4,r1 ; r1 set to 0x200
mov 0x44,r1 ; r1 set to 0x44
mov.l @(loc_8c19860C,pc),r3 ; r3 set to 0x8C129128
add r14,r1 ; r1 ??? bc r14 is ???
mov.l r0,@r1
mov.w @(0x08,r15),r0
extu.w r0,r0
jsr @r3
mov r4,r1 ; r1 set to 0x200
mov 0x48,r1 ; r1 set to 0x48
add r14,r1 ; r1 ??? bc r14 is ???
mov.l r0,@r1
bra loc_8c198596
mov 0x00,r0

loc_8c198590:
jsr @r11
nop

loc_8c198594:
mov.w @(loc_8c1985FA,pc),r0 ; r0 set to 0xFF01

loc_8c198596:
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

loc_8c1985AA:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xF4,r15
mov.w @(loc_8c1985FC,pc),r11 ; r11 set to 0x148
mov r4,r14
mov.l @(loc_8c198610,pc),r3 ; r3 set to 0x8C33C56C
mul.l r11,r14
mov.l @(loc_8c198614,pc),r13 ; r13 set to 0x8C198396
mov.l r5,@(0x08,r15)
mov.l r6,@r15
sts macl,r11
add r3,r11 ; r11 set to 0x8C33C6B4
bsr loc_8c198918
mov r14,r4
tst r0,r0
bf loc_8c1985DE
jsr @r13
nop
bra loc_8c198694
nop

loc_8c1985DE:
mov.l @(loc_8c198618,pc),r0 ; r0 set to 0x8C1C60E0
shll2 r14
mov.l @(loc_8c19861C,pc),r3 ; r3 set to 0x8C1859A0
mov.l @(r0,r14),r14
jsr @r3
mov r14,r4
mov 0x00,r4 ; r4 set to 0x00
mov.l @r15,r8
mov.l r4,@r15
bra loc_8c1986BA
mov r4,r10

loc_8c1985F4:
#data 0x0080

loc_8c1985F6:
#data 0x01FF

loc_8c1985F8:
#data 0x0200

loc_8c1985FA:
#data 0xFF01

loc_8c1985FC:
#data 0x0148
#data 0x0000

#align4
loc_8c198600:
#data 0x8C33C568

#align4
loc_8c198604:
#data bank18.loc_8c1859B2

loc_8c198608:
#data bank18.loc_8c185D00

loc_8c19860C:
#data bank12.loc_8c129128

loc_8c198610:
#data 0x8C33C56C

#align4
loc_8c198614:
#data loc_8c198396

loc_8c198618:
#data bank1c.loc_8c1c60E0

loc_8c19861C:
#data bank18.loc_8c1859A0

loc_8c198620:
#data 0x64E3490B
#data 0x8B222008
#data 0xE60053F2
#data 0xE502DC3C
#data 0x67A32F36
#data 0x64E34C0B
#data 0x4C116C03
#data 0x7F048D05
#data 0x00094D0B

#align4
loc_8c198644:
#data 0xAFEBD937
#data 0x0009

loc_8c19864A:
#data 0xD237
#data 0x420B65C3
#data 0x200864E3
#data 0x4D0B8B03
#data 0xAFF60009
#data 0x0009

loc_8c19865E:
#data 0xD333
#data 0x64E3430B
#data 0x490B1F01
#data 0x200864E3
#data 0x8902

loc_8c19866E:
#data 0x9052
#data 0x0009A029

#align4
loc_8c198674:
#data 0x59F150F1
#data 0x600C8404
#data 0x8D0C8808
#data 0x91495992
#data 0x89DD3010
#data 0x30109147
#data 0xD0288B02
#data 0x0009A019


loc_8c198694:
mov.w @(loc_8c19871C,pc),r0 ; r0 set to 0xFF01
bra loc_8c1986C6
nop

loc_8c19869A:
#data 0x56B7
#data 0xD325E044
#data 0x066E6593
#data 0x430B750C
#data 0x52B76483
#data 0x7A01E044
#data 0x62F2032E
#data 0x7201383C
#data 0x2F22

loc_8c1986BA:
#data 0x53B7
#data 0x523F61F2
#data 0x8BBF3123
#data 0xE000


loc_8c1986C6:
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

loc_8c1986DA:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xE0,r15
mov.w @(loc_8c19871E,pc),r3 ; r3 set to 0x148
mov r5,r8
mov.l @(loc_8c19873C,pc),r1 ; r1 set to 0x8C33C56C
mov.l @(loc_8c198728,pc),r10 ; r10 set to 0x8C1859CE
mov.l @(loc_8c198738,pc),r13 ; r13 set to 0x8C198396
mov.l @(loc_8c198724,pc),r11 ; r11 set to 0x8C185C7A
mov.l r4,@(0x08,r15)
mov.l r6,@r15
mov.l @(0x08,r15),r2
mul.l r3,r2
sts macl,r3
add r1,r3 ; r3 set to 0x8C33C6B4
mov.l r3,@(0x14,r15)
bsr loc_8c198918
mov.l @(0x08,r15),r4
tst r0,r0
bf loc_8c198740
jsr @r13
nop
bra loc_8c1988A2
nop
#data 0xFF30
#data 0x00FB00FC

loc_8c19871C:
#data 0xFF01

loc_8c19871E:
#data 0x0148

#align4
loc_8c198720:
#data bank18.loc_8c185B0C

loc_8c198724:
#data bank18.loc_8c185C7A

loc_8c198728:
#data bank18.loc_8c1859CE

loc_8c19872C:
#data bank18.loc_8c1859A0
#data 0xFFFF0000

#align4
loc_8c198734:
#data loc_8c198328

loc_8c198738:
#data loc_8c198396

loc_8c19873C:
#data 0x8C33C56C


loc_8c198740:
mov.l @(0x08,r15),r14
mov.l @(loc_8c198840,pc),r0 ; r0 set to 0x8C1C60E0
shll2 r14
mov.l @(loc_8c198844,pc),r3 ; r3 set to 0x8C1859A0
mov.l @(r0,r14),r14
jsr @r3
mov r14,r4
mov.l @r15,r2
mov 0x48,r0 ; r0 set to 0x48
mov 0x00,r4 ; r4 set to 0x00
mov.l r2,@(0x04,r15)
mov.l @(0x14,r15),r3 ; r3 ??? bc r15 is ???
mov.l @(0x1C,r3),r2
mov.l @(r0,r2),r1
mov.l r1,@r15
mov.l r4,@(0x1C,r15)
bra loc_8c1987E0
mov r4,r9

#align4
loc_8c198764:
#data 0x64E34B0B
#data 0x8B642008
#data 0xEC04D336
#data 0x430B61F2
#data 0x2F0660C3
#data 0x53F2E502
#data 0x6793E600
#data 0xD3322F36
#data 0x430B2F86
#data 0x6C0364E3
#data 0x8D044C11
#data 0x4D0B7F0C
#data 0xAFE50009
#data 0x0009

loc_8c19879A:
#data 0x65C3
#data 0x64E34A0B
#data 0x8B032008
#data 0x00094D0B
#data 0x0009AFF7

#align4
loc_8c1987AC:
#data 0x430BD325
#data 0x1F0664E3
#data 0x64E34B0B
#data 0x8B3C2008
#data 0x840450F6
#data 0x8807600C
#data 0x91398904
#data 0x89CB3010
#data 0x0009A069

#align4
loc_8c1987D0:
#data 0x790152F1
#data 0x323C63F2
#data 0x51F71F21
#data 0x1F177101

#align4
loc_8c1987E0:
#data 0xE04053F5
#data 0x012E5237
#data 0x301350F7
#data 0x8BBA

loc_8c1987EE:
#data 0x4B0B
#data 0x200864E3
#data 0xDC168B1F
#data 0xE502E600
#data 0x67932F86
#data 0x64E34C0B
#data 0x4C116C03
#data 0x7F048D04
#data 0x00094D0B
#data 0x0009AFED

#align4
loc_8c198814:
#data 0x4A0B65C3
#data 0x200864E3
#data 0x4D0B8B03
#data 0xAFF70009
#data 0x0009

loc_8c198826:
#data 0xD307
#data 0x64E3430B
#data 0x4B0B1F01
#data 0x200864E3
#data 0x890E

loc_8c198836:
#data 0x9002
#data 0x0009A034
#data 0xFF3000FC

#align4
loc_8c198840:
#data bank1c.loc_8c1c60E0

loc_8c198844:
#data bank18.loc_8c1859A0

loc_8c198848:
#data bank12.loc_8c129128

loc_8c19884C:
#data bank18.loc_8c185B38

loc_8c198850:
#data bank18.loc_8c185B6C

loc_8c198854:
#data 0x6232D343
#data 0x21186123
#data 0x2F228D0A
#data 0x67F366F3
#data 0x658361F2
#data 0x7710760C
#data 0x54F2410B
#data 0x8B052008

#align4
loc_8c198874:
#data 0x840450F1
#data 0x53F180FC
#data 0x1F245233

#align4
loc_8c198880:
#data 0x600C84FC
#data 0x89078807
#data 0x30109167
#data 0x916589AF
#data 0x89033010
#data 0x0009A005

#align4
loc_8c198898:
#data 0xE000A004

#align4
loc_8c19889C:
#data 0xA001905F
#data 0x0009

loc_8c1988A2:
#data 0x905D

#align4
loc_8c1988A4:
#data 0x4F267F20
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1988B8:
#data 0xE6009153
#data 0xE700E0FF

#align4
loc_8c1988C0:
#data 0x63406250
#data 0x8D013320
#data 0x67037601

#align4
loc_8c1988CC:
#data 0x74013613
#data 0x75018FF6
#data 0x6073000B
;-------------------------------------------------------------------------------

#align4
loc_8c1988D8:
#data 0x4F222FE6
#data 0xD0227FFC
#data 0x4E086E43
#data 0x0EEED321
#data 0x64E3430B
#data 0x2F02D320
#data 0x64E3430B
#data 0x640362F2
#data 0x23386320
#data 0x60428902
#data 0x8B04C802

#align4
loc_8c198904:
#data 0x7F04E000
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c19890E:
#data 0xE001
#data 0x4F267F04
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c198918:
#data 0x4F222FE6
#data 0xD0127FF8
#data 0x4E086E43
#data 0x0EEED311
#data 0x64E3430B
#data 0x1F01D310
#data 0x64E3430B
#data 0x53F12F02
#data 0x22286230
#data 0xD30D8908
#data 0x64E3430B
#data 0x8B032008
#data 0x600260F2
#data 0x8B13C802

#align4
loc_8c198950:
#data 0x7F08E000
#data 0x000B4F26
#data 0x00FC6EF6
#data 0xFF4000FB
#data 0x0200FF01

#align4
loc_8c198964:
#data bank1c.loc_8c1c9958

loc_8c198968:
#data bank1c.loc_8c1c60E0

loc_8c19896C:
#data bank18.loc_8c1859A0

loc_8c198970:
#data bank18.loc_8c1859B2

loc_8c198974:
#data bank18.loc_8c185C7A

loc_8c198978:
#data 0x7F08E001
#data 0x000B4F26
#data 0x00006EF6


loc_8c198984:
mov.l @(loc_8c198990,pc),r7 ; r7 set to 0x00
mov.l @(loc_8c198994,pc),r0 ; r0 set to 0x8C0000B8
mov.l @r0,r0 ; r0 ??
jmp @r0
nop
#data 0x0000

#align4
loc_8c198990:
#data 0x00000000

#align4
loc_8c198994:
#data 0x8C0000B8


loc_8c198998:
mov.l @(loc_8c1989A4,pc),r7 ; r7 set to 0x01
mov.l @(loc_8c1989A8,pc),r0 ; r0 set to 0x8C0000B8
mov.l @r0,r0 ; r0 ??
jmp @r0
nop
#data 0x0000

#align4
loc_8c1989A4:
#data 0x00000001

#align4
loc_8c1989A8:
#data 0x8C0000B8


loc_8c1989AC:
mov.l @(loc_8c1989B8,pc),r7 ; r7 set to 0x02
mov.l @(loc_8c1989BC,pc),r0 ; r0 set to 0x8C0000B8
mov.l @r0,r0 ; r0 ??
jmp @r0
nop
#data 0x0000

#align4
loc_8c1989B8:
#data 0x00000002

#align4
loc_8c1989BC:
#data 0x8C0000B8


loc_8c1989C0:
mov.l @(loc_8c1989CC,pc),r7 ; r7 set to 0x03
mov.l @(loc_8c1989D0,pc),r0 ; r0 set to 0x8C0000B8
mov.l @r0,r0 ; r0 ??
jmp @r0
nop
#data 0x0000

#align4
loc_8c1989CC:
#data 0x00000003

#align4
loc_8c1989D0:
#data 0x8C0000B8


loc_8c1989D4:
mov.l r14,@-r15
mov.l @(loc_8c198A0C,pc),r14 ; r14 set to 0x8C1C6100
mov.l @(loc_8c198A08,pc),r6 ; r6 set to 0xFFFF
bra loc_8c1989F8
nop

loc_8c1989DE:
extu.w r6,r7
mov r7,r0
mov 0xF8,r3 ; r3 set to 0xFFFFFFF8
shad r3, r0
mov.b @r5+,r3 ; r3 ??? bc r5 is ???
mov r7,r2
shll8 r2
extu.b r3,r3
mov r2,r6
xor r3,r0
shll r0
mov.w @(r0,r14),r1
xor r1,r6

loc_8c1989F8:
add 0xFF,r4
cmp/pz r4
bt loc_8c1989DE
extu.w r6,r0
not r0,r0
extu.w r0,r0
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8c198A08:
#data 0x0000FFFF

#align4
loc_8c198A0C:
#data bank1c.loc_8c1c6100


loc_8c198A10:
extu.b r4,r6
mov.l r14,@-r15
mov.l @(loc_8c198AC0,pc),r3 ; r3 set to 0x8C34B141
add 0xFC,r15
mov.b r5,@r3 ; r3 ??? bc r5 is ???
mov.l @(loc_8c198AC4,pc),r2 ; r2 set to 0x8C34B140
mov.b r4,@r2 ; r2 ??? bc r4 is ???
mov.l @(loc_8c198AC8,pc),r7 ; r7 set to 0x8C34AF50
mov r7,r1 ; r1 set to 0x8C34AF50
add 0x14,r1 ; r1 set to 0x8C34AF64
mov r7,r14 ; r14 set to 0x8C34AF50
mov.b r4,@r1 ; r1 ??? bc r4 is ???
mov.l @(loc_8c198ACC,pc),r0 ; r0 set to 0x8C1C6300
mov.w @(loc_8c198ABC,pc),r3 ; r3 set to 0xFF
mov.b @(r0,r6),r6
extu.b r6,r0 ; r0 ??? bc r6 is ???
cmp/eq r3,r0
bf/s loc_8c198A40
add 0x27,r14 ; r14 set to 0x8C34AF77
mov.b @r14,r0
mov 0x06,r6 ; r6 set to 0x06
and 0xF3,r0
bra loc_8c198A7E
mov.b r0,@r14

loc_8c198A40:
mov.w @(loc_8c198ABE,pc),r1 ; r1 set to 0xFE
cmp/eq r1,r0
bf loc_8c198A78
extu.b r4,r0
cmp/eq 0x33,r0
bt/s loc_8c198A5A
mov 0x06,r6 ; r6 set to 0x06
cmp/eq 0x35,r0
bt loc_8c198A62
cmp/eq 0x36,r0
bt loc_8c198A6A
bra loc_8c198A70
nop

loc_8c198A5A:
mov.b @r14,r0
and 0xF7,r0
bra loc_8c198A74
or 0x04,r0

loc_8c198A62:
mov.b @r14,r0
and 0xFB,r0
bra loc_8c198A74
or 0x08,r0

loc_8c198A6A:
mov.b @r14,r0
bra loc_8c198A74
or 0x0C,r0

#align4
loc_8c198A70:
#data 0xC9F360E0


loc_8c198A74:
bra loc_8c198A7E
mov.b r0,@r14

loc_8c198A78:
mov.b @r14,r0
and 0xF3,r0
mov.b r0,@r14

loc_8c198A7E:
mov r7,r0
nop
add 0x17,r0
mov.l r0,@r15
extu.b r5,r4
mov.b @r0,r0
and 0xC1,r0
or r0,r6
mov r4,r0
nop
cmp/eq 0x0D,r0
bf loc_8c198A9C
mov 0x20,r2 ; r2 set to 0x20, r2 set to 0x20
bra loc_8c198AB2
or r2,r6

loc_8c198A9C:
cmp/eq 0x28,r0
bf loc_8c198AA6
mov 0x30,r3 ; r3 set to 0x30
bra loc_8c198AB2
or r3,r6

loc_8c198AA6:
#data 0x6043
#data 0x880C0009
#data 0xE2108901
#data 0x262B


loc_8c198AB2:
mov.l @r15,r3
add 0x04,r15
mov.b r6,@r3
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c198ABC:
#data 0x00FF

loc_8c198ABE:
#data 0x00FE

#align4
loc_8c198AC0:
#data 0x8C34B141

#align4
loc_8c198AC4:
#data 0x8C34B140

#align4
loc_8c198AC8:
#data 0x8C34AF50

#align4
loc_8c198ACC:
#data bank1c.loc_8c1c6300

loc_8c198AD0:
#data 0x2FD62FE6
#data 0x2FC66D43
#data 0x2FA62FB6
#data 0x2F862F96
#data 0xDE7B4F22
#data 0x7FFCDA79
#data 0x60A32FD0
#data 0x70170009
#data 0x600C6000
#data 0x8810C930
#data 0x84AE8F06
#data 0xE102D375
#data 0x622D6231
#data 0x89013213

#align4
loc_8c198B08:
#data 0x2D39E37F

#align4
loc_8c198B0C:
#data 0xC802600C
#data 0x60E3890F
#data 0x70200009
#data 0x600C6000
#data 0x8906C840
#data 0x000960E3
#data 0x6000701F
#data 0xC802600C
#data 0x8B01

loc_8c198B2E:
#data 0xA001
#data 0xE901

loc_8c198B32:
#data 0xE900

#align4
loc_8c198B34:
#data 0x6BDCD268
#data 0x633C6320
#data 0x89023B30
#data 0xCB0884E7
#data 0x80E7

loc_8c198B46:
#data 0xD865
#data 0x600C84E7
#data 0x890CC801
#data 0xD263D364
#data 0x6422430B
#data 0x2008600E
#data 0xA1398901
#data 0x0009

loc_8c198B62:
#data 0x480B
#data 0xA13564D3
#data 0x0009

loc_8c198B6A:
#data 0x60E3
#data 0x70160009
#data 0x600C6000
#data 0x8B01C880
#data 0x0009A12C

#align4
loc_8c198B7C:
#data 0x600C84E6
#data 0x8901C801
#data 0x0009A126

#align4
loc_8c198B88:
#data 0x6000D057
#data 0xC840600C
#data 0xA11F8901
#data 0x0009

loc_8c198B96:
#data 0x84E6
#data 0xC804600C
#data 0xB1318906
#data 0x600E64D3
#data 0x8B012008
#data 0x0009A114

#align4
loc_8c198BAC:
#data 0x731563E3
#data 0xC9DF6030
#data 0xDC472300
#data 0x000960A3
#data 0x6000701F
#data 0xC880600C
#data 0xD3438B1F
#data 0x6231E102
#data 0x3213622D
#data 0x60B38919
#data 0x88610009
#data 0x60B38915
#data 0x88410009
#data 0xD23C8911
#data 0x23386321
#data 0x60B3890B
#data 0x88740009
#data 0x60B38909
#data 0x88540009
#data 0x60B38905
#data 0x882F0009
#data 0x8901

loc_8c198C02:
#data 0xA0E6
#data 0xE200

loc_8c198C06:
#data 0x60A3
#data 0x701F0009
#data 0x600C6000
#data 0x8B0AC810
#data 0x222862C1
#data 0xD2348B07
#data 0xE400420B
#data 0x2008600E
#data 0xA0D58B01
#data 0x0009

loc_8c198C2A:
#data 0x84A5
#data 0x600C65C1
#data 0x8F263B00
#data 0x60E3655D
#data 0x70200009
#data 0x600C6000
#data 0x8905C840
#data 0x8B012558
#data 0x0009A0C4

#align4
loc_8c198C4C:
#data 0x0009A005

#align4
loc_8c198C50:
#data 0x3527E202
#data 0xA0BD8901
#data 0x0009

loc_8c198C5A:
#data 0x61C1
#data 0x2998699E
#data 0x8F0271FF
#data 0xA0B52C11
#data 0x0009

loc_8c198C6A:
#data 0x64A3
#data 0x2F427405
#data 0x6440480B
#data 0xE420480B
#data 0x480B64F2
#data 0xA0A96440
#data 0x0009

loc_8c198C82:
#data 0xE37F
#data 0x3533D41A
#data 0x61408B07
#data 0x3B10611C
#data 0x61C18903
#data 0x71026D40
#data 0x2C11

loc_8c198C9A:
#data 0x6340
#data 0x633C6BDC
#data 0x8B393B30
#data 0x63E384A3
#data 0x24007314
#data 0xC9F76030
#data 0x60E32300
#data 0x70200009
#data 0x600C6000
#data 0x8919C840
#data 0x732063E3
#data 0xCB806030
#data 0x2300A026
#data 0x8C34AF50
#data 0x8C34B288
#data 0x8C34B034
#data 0x8C34B037

#align4
loc_8c198CDC:
#data bank1a.loc_8c1aEC3A
#data 0x8C34B138

#align4
loc_8c198CE4:
#data bank1b.loc_8c1b3F0C
#data 0x8C34AF81

#align4
loc_8c198CEC:
#data bank1a.loc_8c1a10A2
#data 0x8C34B036

#align4
loc_8c198CF4:
#data 0x731663E3
#data 0xC97F6030
#data 0x84E72300
#data 0x80E7CB01
#data 0x639E84E6
#data 0xCB402338
#data 0x80E68D04
#data 0xD436D237
#data 0xE50D420B

#align4
loc_8c198D18:
#data 0x936564C1
#data 0x3437644D
#data 0x60E38958
#data 0x701F0009
#data 0x600C6000
#data 0x8B17C802
#data 0x000960E3
#data 0x60007014
#data 0xC820600C
#data 0x629E8B10
#data 0x890D2228
#data 0x600C84E6
#data 0x8B09C802
#data 0x3423E202
#data 0xD3288904
#data 0x64F0430B
#data 0x0009A002

#align4
loc_8c198D5C:
#data 0x64D3480B

#align4
loc_8c198D60:
#data 0x3B33E361
#data 0xE17A8B08
#data 0x89053B17
#data 0x6020D222
#data 0x3B00600C
#data 0x7DE08900

#align4
loc_8c198D78:
#data 0x000960E3
#data 0x60007020
#data 0xC840600C
#data 0xD31D8B1F
#data 0x600D6031
#data 0x8B1A8801
#data 0x604364DC
#data 0x88410009
#data 0x6043891C
#data 0x882F0009
#data 0x63E38B11
#data 0x60307316
#data 0x2300C97F
#data 0xCB0184E7
#data 0x84E680E7
#data 0x2998699E
#data 0x8D04CB40
#data 0xD20C80E6
#data 0x420BD40A
#data 0xE50D

loc_8c198DC6:
#data 0x63C1
#data 0x633DD00D
#data 0x62C103D4
#data 0x7201

loc_8c198DD2:
#data 0x2C21

#align4
loc_8c198DD4:
#data 0x4F267F04
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x00000080
#data 0x8C34B138

#align4
loc_8c198DF0:
#data bank1b.loc_8c1b3EEC

loc_8c198DF4:
#data bank1a.loc_8c1a1120
#data 0x8C34B036
#data 0x8C34B034
#data 0x8C34AFB3


loc_8c198E04:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l @(loc_8c198EE0,pc),r11 ; r11 set to 0x8C34B17A
sts.l pr,@-r15
mov.b @r11,r3
tst r3,r3
bf loc_8c198E1A
bra loc_8c198FBE
nop

loc_8c198E1A:
#data 0xD732
#data 0x6073E630
#data 0x70170009
#data 0x600C6000
#data 0x88102069
#data 0xE27F8901
#data 0x2429

loc_8c198E32:
#data 0xE361
#data 0x3533654C
#data 0xE17A8B0C
#data 0x89093517
#data 0x6020D229
#data 0x3500600C
#data 0x84758904
#data 0x3500600C
#data 0x74E08900

#align4
loc_8c198E54:
#data 0x6C4C8475
#data 0x600CDE25
#data 0x65E0DD23
#data 0x8F473C00
#data 0xE202655C
#data 0x89013523
#data 0x0009A0A9

#align4
loc_8c198E70:
#data 0x00096053
#data 0x8B018802
#data 0x0009A0A1

#align4
loc_8c198E7C:
#data 0x73FF63E0
#data 0x60E02E30
#data 0x8802600C
#data 0xE1018B02
#data 0x2B10A097

#align4
loc_8c198E90:
#data 0x93246CE0
#data 0x3C3CA001

loc_8c198E98:
#data 0x7CFF

loc_8c198E9A:
#data 0x60CC
#data 0x644C04DC
#data 0x8B023463
#data 0x3437E339
#data 0x8BF6

loc_8c198EAA:
#data 0x6043
#data 0x883D0009
#data 0x60CC89F2
#data 0xB16670FF
#data 0x600E04DC
#data 0x8D012008
#data 0x7CFFE301

#align4
loc_8c198EC4:
#data 0x2B30A004

#align4
loc_8c198EC8:
#data 0x04DC60CC
#data 0x7C01B08A

#align4
loc_8c198ED0:
#data 0x62CC63E0
#data 0x3230633C
#data 0xA0708BF6
#data 0x00FF0009

#align4
loc_8c198EE0:
#data 0x8C34B17A
#data 0x8C34AF50
#data 0x8C34B036
#data 0x8C34B150
#data 0x8C34B179

#align4
loc_8c198EF4:
#data 0x000960C3
#data 0x89608820
#data 0x000960C3
#data 0x895C882C
#data 0x3C37E37E
#data 0xE1208959
#data 0x89033C13
#data 0x000960C3
#data 0x8B52880D

#align4
loc_8c198F18:
#data 0x000960C3
#data 0x8B04880D
#data 0x6230D36F
#data 0x32C0622C
#data 0x8B49

loc_8c198F2A:
#data 0x60E0
#data 0x7001E229
#data 0x70FF2E00
#data 0x0D44600C
#data 0x633C63E0
#data 0x89403327
#data 0x666C66E0
#data 0x00096063
#data 0x8F068801
#data 0x605065D3
#data 0x8841600C
#data 0xA0328B35
#data 0x0009

loc_8c198F5A:
#data 0x8802
#data 0x84518B0B
#data 0x8854600C
#data 0x8451892B
#data 0x8841600C
#data 0x63E08B29
#data 0xA02473FF
#data 0x2E30

loc_8c198F76:
#data 0xB035
#data 0x600E0009
#data 0x89202008
#data 0x6320D257
#data 0x33C0633C
#data 0xE5008B19
#data 0xD3552B50
#data 0xCB206030
#data 0xD6552300
#data 0xA009D453
#data 0x2451

loc_8c198F9E:
#data 0x6541
#data 0x6053655D
#data 0x03DC0009
#data 0x62410634
#data 0x24217201

#align4
loc_8c198FB0:
#data 0x73FF63E0
#data 0x73012E30
#data 0x2338633C
#data 0x8BEF


loc_8c198FBE:
bra loc_8c198FD8
mov 0x01,r0

loc_8c198FC2:
#data 0xB155
#data 0xD04A0009
#data 0x600C6000
#data 0x8902C804
#data 0x420BD248
#data 0x0009

loc_8c198FD6:
#data 0xE000


loc_8c198FD8:
lds.l @r15+,pr
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8c198FE4:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x4F22DD45
#data 0xDC4360D0
#data 0xD93F600C
#data 0x8801DA3F
#data 0x7FFCDB3F
#data 0x6E438D1A
#data 0x89378802
#data 0x89588803
#data 0x8B018804
#data 0x0009A07C

#align4
loc_8c199018:
#data 0x8B018805
#data 0x0009A08B

#align4
loc_8c199020:
#data 0x8B018806
#data 0x0009A09D

#align4
loc_8c199028:
#data 0x8B018807
#data 0x0009A0A1

#align4
loc_8c199030:
#data 0x8B018808
#data 0x0009A09D

#align4
loc_8c199038:
#data 0x0009A09B

#align4
loc_8c19903C:
#data 0x64ECD228
#data 0x633C6320
#data 0x8B013340
#data 0x0009A093

#align4
loc_8c19904C:
#data 0x00096043
#data 0x8B01883F
#data 0x0009A08D

#align4
loc_8c199058:
#data 0x882160EC
#data 0xA0888B01
#data 0x0009

loc_8c199062:
#data 0x60EC
#data 0x8B02883D
#data 0xA060D328
#data 0x6230

loc_8c19906E:
#data 0xB08A
#data 0x600E64E3
#data 0x89012008
#data 0x0009A07B

#align4
loc_8c19907C:
#data 0x64ECE241
#data 0x89013423
#data 0x0009A073

#align4
loc_8c199088:
#data 0x3417E15A
#data 0x64EC896F
#data 0x74BF63C2
#data 0x654C4400
#data 0x6250353C
#data 0x89662228
#data 0x2A008451
#data 0x233863A0
#data 0x61C28B08
#data 0x8B603910
#data 0x8824604C
#data 0xE2048B5D
#data 0x2D20A05B

#align4
loc_8c1990BC:
#data 0xA058E103
#data 0x2D10

loc_8c1990C2:
#data 0x65F3
#data 0x64E3B087
#data 0x2008600E
#data 0x63A08951
#data 0x323662F0
#data 0xE302894B
#data 0xAFAF2C92
#data 0x00002D30
#data 0x8C34B036
#data 0x8C34B29D
#data 0x8C34B034
#data 0x8C34AFB3
#data 0x8C34B28E

#align4
loc_8c1990F4:
#data bank1a.loc_8c1aFCB8

loc_8c1990F8:
#data bank1c.loc_8c1c633C
#data 0x8C34B17C
#data 0x8C34B17B
#data 0x8C34B180
#data 0x8C34B17A
#data 0x8C34AFA9

#align4
loc_8c199110:
#data 0xB06065F3
#data 0x600E64E3
#data 0x892A2008
#data 0x883D60EC
#data 0x62F08B1D
#data 0x622CE333
#data 0x89203237
#data 0x62F0

loc_8c19912E:
#data 0xE305
#data 0xA01E2B20
#data 0x2D30

loc_8c199136:
#data 0x65F3
#data 0x64E3B04D
#data 0x2008600E
#data 0x65B08917
#data 0x655CD029
#data 0x035C64F0
#data 0x633C644C
#data 0x8B0C3433
#data 0x035CD026
#data 0x3437633C
#data 0x8907

loc_8c19915E:
#data 0xAF6D
#data 0x2C92

loc_8c199162:
#data 0x60EC
#data 0x8B028846
#data 0xA002E207
#data 0x2D20

loc_8c19916E:
#data 0xA001
#data 0xE000

loc_8c199172:
#data 0xE001

#align4
loc_8c199174:
#data 0x4F267F04
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c199186:
#data 0x604C
#data 0x8825D51A
#data 0x8826890E
#data 0x882A8909
#data 0x882B890D
#data 0x88408914
#data 0x885C890F
#data 0xA013890A
#data 0x0009

loc_8c1991A6:
#data 0xD314
#data 0x2532A012

#align4
loc_8c1991AC:
#data 0xA004D113
#data 0x0009

loc_8c1991B2:
#data 0xD213
#data 0x0009A004

loc_8c1991B8:
#data 0xD112

loc_8c1991BA:
#data 0xA009
#data 0x2512

loc_8c1991BE:
#data 0xD212

#align4
loc_8c1991C0:
#data 0x2522A006

#align4
loc_8c1991C4:
#data 0xE106D311
#data 0x2310A002

#align4
loc_8c1991CC:
#data 0xE000000B
;-------------------------------------------------------------------------------

#align4
loc_8c1991D0:
#data 0x000BE001
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1991D6:
#data 0xE730
#data 0x664C2FE6
#data 0x36732FD6
#data 0xE2398B16
#data 0x89133627
#data 0xE000A03F

#align4
loc_8c1991EC:
#data bank1c.loc_8c1c6B50

loc_8c1991F0:
#data bank1c.loc_8c1c6BA0
#data 0x8C34B180

#align4
loc_8c1991F8:
#data bank1c.loc_8c1c6370

loc_8c1991FC:
#data bank1c.loc_8c1c63A4

loc_8c199200:
#data bank1c.loc_8c1c640C

loc_8c199204:
#data bank1c.loc_8c1c63D8

loc_8c199208:
#data bank1c.loc_8c1c6440
#data 0x8C34B17A

#align4
loc_8c199210:
#data 0xD639D238
#data 0x936A6420
#data 0x343CA001

loc_8c19921C:
#data 0x74FF

loc_8c19921E:
#data 0x604C
#data 0x6EEC0E6C
#data 0x8B023E73
#data 0x3E37E339
#data 0x8BF6

loc_8c19922E:
#data 0x7401
#data 0x036C604C
#data 0x8830603C
#data 0x9D5989F9
#data 0xEE00A00B

#align4
loc_8c199240:
#data 0x61E362E3
#data 0x604C4208
#data 0x036C321C
#data 0x332C4200
#data 0x740133DC
#data 0x6E33

loc_8c199256:
#data 0x604C
#data 0x611C016C
#data 0x8B023173
#data 0x3137E339
#data 0x8BEC

loc_8c199266:
#data 0xE001
#data 0x25E0

loc_8c19926A:
#data 0x6DF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

loc_8c199270:
mov.l @(loc_8c1992FC,pc),r2 ; r2 set to 0x8C34B17A
mov 0x01,r3 ; r3 set to 0x01
mov 0x00,r1 ; r1 set to 0x00
mov.b r3,@r2 ; r2 ??
mov.l @(loc_8c1992F4,pc),r0 ; r0 set to 0x8C34B179
mov.b r1,@r0 ; r0 ??
mov.l @(loc_8c199300,pc),r3 ; r3 set to 0x8C1C633C
mov.l @(loc_8c199304,pc),r2 ; r2 set to 0x8C34B180
rts
mov.l r3,@r2
;-------------------------------------------------------------------------------

#align4
loc_8c199284:
#data 0xD0202FE6
#data 0x61004F22
#data 0x890C2118
#data 0x6342D41E
#data 0x24327301
#data 0x6040D41D
#data 0x24007001
#data 0x880A600C
#data 0xE2008B5B
#data 0x2420

loc_8c1992AA:
#data 0xDE1A
#data 0x741064E3
#data 0x600C6040
#data 0x894EC810
#data 0x600C6040
#data 0x8B33C820
#data 0x420BD215
#data 0x600EE400
#data 0x89442008
#data 0x731063E3
#data 0xCB206030
#data 0xD5112300
#data 0x6550D411
#data 0x655CD211
#data 0x45086353
#data 0x420B353C
#data 0xA0344500
#data 0x00FE0009
#data 0x000000D0

#align4
loc_8c1992F4:
#data 0x8C34B179
#data 0x8C34B150

#align4
loc_8c1992FC:
#data 0x8C34B17A

#align4
loc_8c199300:
#data bank1c.loc_8c1c633C

loc_8c199304:
#data 0x8C34B180
#data 0x8C34B148
#data 0x8C34B144
#data 0x8C34B142
#data 0x8C34B288

#align4
loc_8c199318:
#data bank1a.loc_8c1a10A2
#data 0x8C34AF59
#data 0x8C34B13C

#align4
loc_8c199324:
#data bank1b.loc_8c1b3EEC

loc_8c199328:
#data 0xD229D32A
#data 0x6422430B
#data 0x2008600E
#data 0xD328890F
#data 0xE400430B
#data 0x6000D027
#data 0xC802600C
#data 0xD2268902
#data 0xE400420B

#align4
loc_8c19934C:
#data 0x731063E3
#data 0xC9CE6030
#data 0x2300

loc_8c199356:
#data 0x4F26
#data 0x422BD222
#data 0x6EF6

loc_8c19935E:
#data 0x4F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c199364:
#data 0x4F22D621
#data 0xD71F6060
#data 0x8810600C
#data 0x64638F03
#data 0xCB10847E
#data 0x807E

loc_8c19937A:
#data 0x6040
#data 0x600CD31C
#data 0x88056530
#data 0x655C8F0A
#data 0x00096053
#data 0x8B1B8804
#data 0x420BD218
#data 0xD3180009
#data 0x4F26432B

#align4
loc_8c19939C:
#data 0x8B098806
#data 0x00096053
#data 0x8B0F8804
#data 0x6210D114
#data 0x89082228
#data 0x0009A00A

#align4
loc_8c1993B4:
#data 0x600C6040
#data 0x8B058813
#data 0xE213D110
#data 0x2120

loc_8c1993C2:
#data 0x8477
#data 0x8077CB80

#align4
loc_8c1993C8:
#data 0x000B4F26
#data 0x00000009
#data 0x8C34B13C

#align4
loc_8c1993D4:
#data bank1b.loc_8c1b3F0C

loc_8c1993D8:
#data bank1a.loc_8c1a122A
#data 0x8C34AF65

#align4
loc_8c1993E0:
#data bank1a.loc_8c1a124C

loc_8c1993E4:
#data bank1b.loc_8c1b3E34
#data 0x8C34B288
#data 0x8C34B301
#data 0x8C34B11C

#align4
loc_8c1993F4:
#data bank1b.loc_8c1b3A32

loc_8c1993F8:
#data bank1a.loc_8c1aF91A
#data 0x8C34B130
#data 0x8C34AF7D


loc_8c199404:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @(loc_8c199520,pc),r14 ; r14 set to 0x8C34B14C
mov.l @(loc_8c19951C,pc),r13 ; r13 set to 0x8C1B3F0C
bra loc_8c19941C
nop

loc_8c199412:
bsr loc_8c199722
nop
mov.l @r14,r3
add 0x64,r3
mov.l r3,@r14

loc_8c19941C:
jsr @r13
mov.l @r14,r4
exts.b r0,r0
tst r0,r0
bf loc_8c199412
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c19942E:
#data 0x2FE6
#data 0x2FC62FD6
#data 0xD33B2FB6
#data 0x6032916F
#data 0x001D4F22
#data 0xC880600D
#data 0x8B2A7FF8
#data 0x420BD237
#data 0xD4380009
#data 0x4D0BDD36
#data 0xDC380009
#data 0xDB366EF3
#data 0x84C1E50A
#data 0xE60267E3
#data 0x64034B0B
#data 0x64E34D0B
#data 0x4D0BD433
#data 0x84C20009
#data 0x67E3E50A
#data 0x4B0BE602
#data 0x4D0B6403
#data 0xD42E64E3
#data 0x00094D0B
#data 0xE50A84C3
#data 0xE60267E3
#data 0x64034B0B
#data 0x64E34D0B
#data 0x430BD323
#data 0x0009

loc_8c19949E:
#data 0x7F08
#data 0x6BF64F26
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

loc_8c1994AC:
sts.l pr,@-r15
bsr loc_8c199714
nop
bra loc_8c199836
lds.l @r15+,pr

loc_8c1994B6:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov r4,r10
mov.l r9,@-r15
mov 0x00,r9 ; r9 set to 0x00
mov.l r8,@-r15
mov r9,r14 ; r14 set to 0x00
sts.l pr,@-r15
mov.l @(loc_8c199540,pc),r8 ; r8 set to 0x8C34B036
mov.l @(loc_8c199544,pc),r13 ; r13 set to 0x8C347943
bra loc_8c1994EE
mov r9,r12

#align4
loc_8c1994D4:
#data 0x6BECD31C
#data 0x430B3BAC
#data 0x600E64B0
#data 0x8D042008
#data 0x63B07E01
#data 0x7C0160CC
#data 0x0D34

loc_8c1994EE:
#data 0x60EC
#data 0x02AC6380
#data 0x622C633C
#data 0x89033320
#data 0x63CCE228
#data 0x8BE73323

#align4
loc_8c199504:
#data 0x60C36CCC
#data 0x0D940009
#data 0x64D3B3AE
#data 0x2008600E
#data 0xA055891A
#data 0x0090E003

#align4
loc_8c19951C:
#data bank1b.loc_8c1b3F0C

loc_8c199520:
#data 0x8C34B14C
#data 0x8C34B1F8

#align4
loc_8c199528:
#data bank1a.loc_8c1aEE08

loc_8c19952C:
#data bank1a.loc_8c1aECDC

loc_8c199530:
#data bank1c.loc_8c1c6478

loc_8c199534:
#data bank1a.loc_8c1aF1A4
#data 0x8C347930

#align4
loc_8c19953C:
#data bank1c.loc_8c1c6484

loc_8c199540:
#data 0x8C34B036

#align4
loc_8c199544:
#data 0x8C347943

#align4
loc_8c199548:
#data loc_8c19A62A

loc_8c19954C:
#data 0x64D3B46A
#data 0x2008600E
#data 0xA0358901
#data 0xE002

loc_8c19955A:
#data 0xD63C
#data 0x60629170
#data 0x600D001D
#data 0x8B09C810
#data 0xD43AD539
#data 0x24206250
#data 0x80418451
#data 0x80428452
#data 0x80438453

#align4
loc_8c19957C:
#data 0x64629060
#data 0xE003044D
#data 0x2049644D
#data 0x89058802
#data 0x2049E00C
#data 0x40214021
#data 0x8B148802

#align4
loc_8c199598:
#data 0x2248E220
#data 0xD32E8B11
#data 0xD52BE232
#data 0xD12D6430
#data 0x6350644C
#data 0x041A242F
#data 0x341C644F
#data 0x84512430
#data 0x84528041
#data 0x84538042
#data 0x8043

loc_8c1995C2:
#data 0xE001

#align4
loc_8c1995C4:
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1995D6:
#data 0x2FE6
#data 0x4F222FD6
#data 0x2F407FFC
#data 0x902EDD1A
#data 0x6EF063D2
#data 0x6EEC023D
#data 0x22E8622D
#data 0xB70C8901
#data 0x0009

loc_8c1995F6:
#data 0x9025
#data 0x023D63D2
#data 0x22E8622D
#data 0xB0878901
#data 0x0009

loc_8c199606:
#data 0x901E
#data 0x023D63D2
#data 0x22E8622D
#data 0xB1598901
#data 0x0009

loc_8c199616:
#data 0x9017
#data 0x023D63D2
#data 0x2E28622D
#data 0xB1088901
#data 0x0009

loc_8c199626:
#data 0x63F0
#data 0x8B042338
#data 0x4F267F04
#data 0xA1B86DF6
#data 0x6EF6

loc_8c199636:
#data 0x7F04
#data 0x6DF64F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x009C0090
#data 0x00A0009E
#data 0x000000A2
#data 0x8C34B1F8
#data 0x8C347928
#data 0x8C347938
#data 0x8C34793D
#data 0x8C347182
#data 0x654C2FE6
#data 0x25582FD6
#data 0x4F222FC6
#data 0x8B037FF8
#data 0x0009B726
#data 0x0009A041
#data 0x00096053
#data 0x8B338801
#data 0x430BD340
#data 0xD2410009
#data 0xDC3F6EF3
#data 0x67E3E50A
#data 0x4C0BE603
#data 0xDD3E6420
#data 0x64E34D0B
#data 0x4D0BD43D
#data 0xD33D0009
#data 0x67E3E50A
#data 0x4C0BE602
#data 0x4D0B6430
#data 0xD43A64E3
#data 0x00094D0B
#data 0xE50AD239
#data 0xE60267E3
#data 0x64204C0B
#data 0x64E34D0B
#data 0x4D0BD434
#data 0xD3350009
#data 0x67E3E50A
#data 0x4C0BE602
#data 0x4D0B6430
#data 0xD22964E3
#data 0x0009420B
#data 0x0009A009
#data 0x8B03884B
#data 0x0009B0A3
#data 0x0009A003
#data 0xE302D22C
#data 0x7F082230
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c199706:
mov.w @(loc_8c199780,pc),r0 ; r0 set to 0x7D0
mov.l @(loc_8c1997AC,pc),r1 ; r1 set to 0x8C347158
rts
mov.l r1,@r4
;-------------------------------------------------------------------------------

loc_8c19970E:
mov.l @(loc_8c1997B0,pc),r3 ; r3 set to 0x8C347928
rts
mov.l r3,@r4
;-------------------------------------------------------------------------------

loc_8c199714:
mov.l @(loc_8c1997B0,pc),r5 ; r5 set to 0x8C347928
mov 0x00,r0 ; r0 set to 0x00
mov.b r0,@(0x03,r5)
mov.b r0,@(0x02,r5)
mov.b r0,@(0x01,r5)
rts
mov.b r0,@r5
;-------------------------------------------------------------------------------

loc_8c199722:
#data 0xD423
#data 0x8443E63C
#data 0x80437001
#data 0x30638443
#data 0xE5008B19
#data 0x00096053
#data 0x84428043
#data 0x80427001
#data 0x30638442
#data 0x60538B0F
#data 0x80420009
#data 0x8441E318
#data 0x80417001
#data 0x30338441
#data 0x60538B05
#data 0x80410009
#data 0x72016240
#data 0x2420

loc_8c199766:
#data 0xD30F
#data 0x23008443
#data 0x8442D20C
#data 0xD1092200
#data 0x21008441
#data 0x6340D004
#data 0x2030000B
;-------------------------------------------------------------------------------

loc_8c199780:
#data 0x07D0
#data 0x0000

#align4
loc_8c199784:
#data bank1a.loc_8c1aEE08

loc_8c199788:
#data bank1a.loc_8c1aF1A4
#data 0x8C34793E

#align4
loc_8c199790:
#data bank1a.loc_8c1aECDC

loc_8c199794:
#data bank1c.loc_8c1c6488
#data 0x8C34793F

#align4
loc_8c19979C:
#data bank1c.loc_8c1c6484
#data 0x8C347940
#data 0x8C347941
#data 0x8C34AFA8

#align4
loc_8c1997AC:
#data 0x8C347158

#align4
loc_8c1997B0:
#data 0x8C347928

#align4
loc_8c1997B4:
#data 0xE6FF84F7
#data 0x6303D4BB
#data 0x303884F3
#data 0x600E8043
#data 0x8D054011
#data 0x8443E500
#data 0x8043703C
#data 0x6063A002

#align4
loc_8c1997D4:
#data 0x00096053

#align4
loc_8c1997D8:
#data 0x61F38042
#data 0x710684F2
#data 0x63036210
#data 0x303C8442
#data 0x80423028
#data 0x4011600E
#data 0x84428904
#data 0x8042703C
#data 0x6063A002

#align4
loc_8c1997FC:
#data 0x00096053

#align4
loc_8c199800:
#data 0x61F38041
#data 0x710584F1
#data 0x63036210
#data 0x303C8441
#data 0x80413028
#data 0x4011600E
#data 0x84418904
#data 0x80417018
#data 0x2460A001

loc_8c199824:
#data 0x2450

loc_8c199826:
#data 0x6340
#data 0x303C60F0
#data 0x84F46203
#data 0x000B3208
#data 0x2420
;-------------------------------------------------------------------------------

loc_8c199836:
mov.l r14,@-r15
mov 0x00,r4 ; r4 set to 0x00
mov.l r12,@-r15
mov.l r11,@-r15
mov.l @(loc_8c199AAC,pc),r5 ; r5 set to 0x8C347938
mov r4,r0 ; r0 set to 0x00
nop
mov 0x20,r12 ; r12 set to 0x20
mov r0,r6 ; r6 set to 0x00
mov 0x2A,r11 ; r11 set to 0x2A
mov.b r0,@(0x04,r5)
mov 0x28,r14 ; r14 set to 0x28
mov.b r0,@(0x03,r5)
mov.b r0,@(0x02,r5)
mov.b r0,@(0x01,r5)
mov.b r0,@r5 ; r5 ??
mov.l @(loc_8c199AB0,pc),r3 ; r3 set to 0x8C34793D
mov.b r0,@r3 ; r3 ??
mov.l @(loc_8c199AB4,pc),r7 ; r7 set to 0x8C347158

loc_8c19985C:
mov 0x32,r3 ; r3 set to 0x32, r3 set to 0x32
mov r4,r5 ; r5 set to 0x00
exts.b r6,r2
muls.w r3,r2
exts.b r6,r0 ; r0 ??
sts macl,r2
muls.w r3,r0
exts.w r2,r2
add r7,r2
sts macl,r0
mov.b r11,@r2
exts.w r0,r0
add r7,r0

loc_8c199876:
mov r0,r2
add 0x01,r2
exts.b r5,r3 ; r3 ??, r3 ??? bc r5 is ???
add r2,r3
add 0x01,r5 ; r5 set to 0x01
mov.b r12,@r3
exts.b r5,r3
cmp/ge r14,r3
bf loc_8c199876
mov 0x32,r3 ; r3 set to 0x32, r3 set to 0x32, r3 set to 0x32
exts.b r6,r5 ; r5 ??
muls.w r3,r5
mov 0x29,r0 ; r0 set to 0x29, r0 set to 0x29, r0 set to 0x29
add 0x01,r6 ; r6 set to 0x01
exts.b r6,r2
sts macl,r5
cmp/ge r14,r2
exts.w r5,r5
add r7,r5
mov.b r4,@(r0,r5)
mov 0x2A,r0 ; r0 set to 0x2A, r0 set to 0x2A, r0 set to 0x2A
mov.b r4,@(r0,r5)
mov 0x2B,r0 ; r0 set to 0x2B, r0 set to 0x2B, r0 set to 0x2B
mov.b r4,@(r0,r5)
mov 0x2C,r0 ; r0 set to 0x2C, r0 set to 0x2C, r0 set to 0x2C
mov.b r4,@(r0,r5)
mov 0x2D,r0 ; r0 set to 0x2D, r0 set to 0x2D, r0 set to 0x2D
mov.b r4,@(r0,r5)
mov 0x2E,r0 ; r0 set to 0x2E, r0 set to 0x2E, r0 set to 0x2E
mov.b r4,@(r0,r5)
mov 0x2F,r0 ; r0 set to 0x2F, r0 set to 0x2F, r0 set to 0x2F
mov.b r4,@(r0,r5)
mov 0x30,r0 ; r0 set to 0x30, r0 set to 0x30, r0 set to 0x30
mov.b r4,@(r0,r5)
mov 0x31,r0 ; r0 set to 0x31, r0 set to 0x31, r0 set to 0x31
bf/s loc_8c19985C
mov.b r4,@(r0,r5)
mov.l @r15+,r11 ; r11 ??? bc r15 is ???
mov.l @r15+,r12 ; r12 ??? bc r15 is ???
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8c1998C8:
#data 0x2FE6E132
#data 0x2FD6E02A
#data 0xE600D379
#data 0x6763EE20
#data 0x2360ED28
#data 0xD575D474
#data 0x622C6240
#data 0x021A221F
#data 0x325C622F
#data 0x2200

loc_8c1998EE:
#data 0x6040
#data 0x627EE332
#data 0x203F600C
#data 0x001A7701
#data 0x305C600F
#data 0x71016103
#data 0x22E0321C
#data 0x32D3627E
#data 0x63408BEF
#data 0xE029E232
#data 0x232F633C
#data 0x633F031A
#data 0x0364335C
#data 0x6340E02A
#data 0x232F633C
#data 0x633F031A
#data 0x0364335C
#data 0x6340E02B
#data 0x232F633C
#data 0x633F031A
#data 0x0364335C
#data 0x6340E02C
#data 0x232F633C
#data 0x633F031A
#data 0x0364335C
#data 0x6340E02D
#data 0x232F633C
#data 0x633F031A
#data 0x0364335C
#data 0x6340E02E
#data 0x232F633C
#data 0x633F031A
#data 0x0364335C
#data 0x6340E02F
#data 0x232F633C
#data 0x633F031A
#data 0x0364335C
#data 0x6340E030
#data 0x232F633C
#data 0x633F031A
#data 0x0364335C
#data 0x6340E031
#data 0x232F633C
#data 0x633F031A
#data 0x0364335C
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1999A6:
#data 0xE332
#data 0xE0292FE6
#data 0xD4402FD6
#data 0x6640D540
#data 0x263F666C
#data 0x666F061A
#data 0x026C365C
#data 0x8B5E2228
#data 0x2620E22A
#data 0x6763E600
#data 0xEE28ED20

#align4
loc_8c1999D0:
#data 0xE3326040
#data 0x600C627E
#data 0x7701203F
#data 0x600F001A
#data 0x6103305C
#data 0x321C7101
#data 0x627E22D0
#data 0x8BEF32E3
#data 0xE2326340
#data 0x633CE029
#data 0x031A232F
#data 0x335C633F
#data 0xE02A0364
#data 0x633C6340
#data 0x031A232F
#data 0x335C633F
#data 0xE02B0364
#data 0x633C6340
#data 0x031A232F
#data 0x335C633F
#data 0xE02C0364
#data 0x633C6340
#data 0x031A232F
#data 0x335C633F
#data 0xE02D0364
#data 0x633C6340
#data 0x031A232F
#data 0x335C633F
#data 0xE02E0364
#data 0x633C6340
#data 0x031A232F
#data 0x335C633F
#data 0xE02F0364
#data 0x633C6340
#data 0x031A232F
#data 0x335C633F
#data 0xE0300364
#data 0x633C6340
#data 0x031A232F
#data 0x335C633F
#data 0xE0310364
#data 0x633C6340
#data 0x031A232F
#data 0x335C633F
#data 0x0364

loc_8c199A82:
#data 0x6DF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c199A88:
#data 0x2FD62FE6
#data 0x2FC6ED00
#data 0x2FA62FB6
#data 0x69432F96
#data 0x4F222F86
#data 0x2F527FFC
#data 0xA05ED804
#data 0x00006BD3
#data 0x8C34792C

#align4
loc_8c199AAC:
#data 0x8C347938

#align4
loc_8c199AB0:
#data 0x8C34793D

#align4
loc_8c199AB4:
#data 0x8C347158
#data 0x8C34793C

#align4
loc_8c199ABC:
#data 0x6ABCE332
#data 0x0A1A2A3F
#data 0x3A8C6AAF
#data 0x884260A0
#data 0x64038D04
#data 0x00096043
#data 0x8B438844

#align4
loc_8c199AD8:
#data 0xA0016CD3
#data 0x6ED3

loc_8c199ADE:
#data 0x7C01

#align4
loc_8c199AE0:
#data 0x730163A3
#data 0x003C60CC
#data 0x8906883A
#data 0x62CCE328
#data 0x8BF43233
#data 0x0009A001

loc_8c199AF8:
#data 0x7E01

loc_8c199AFA:
#data 0x60EC
#data 0x049CB595
#data 0x2008600E
#data 0xE2288903
#data 0x332363EC
#data 0x8BF4

loc_8c199B0E:
#data 0x6EEC
#data 0x34E064CC
#data 0xE3288B24
#data 0x89213433
#data 0x64D3E332
#data 0x2E3F6EBC
#data 0x6EEF0E1A
#data 0x3E8CA001

loc_8c199B2C:
#data 0x7401

loc_8c199B2E:
#data 0x65E3
#data 0x664C7501
#data 0x6550356C
#data 0x00096053
#data 0x8905883A
#data 0x00096063
#data 0x633C039C
#data 0x89EF3530

#align4
loc_8c199B4C:
#data 0x730163E3
#data 0x003C604C
#data 0x8B03883A
#data 0x22B062F2
#data 0xE001A006

loc_8c199B60:
#data 0x7B01

loc_8c199B62:
#data 0xE228
#data 0x332363BC
#data 0xE0008BA8

#align4
loc_8c199B6C:
#data 0x4F267F04
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c199B80:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2FA6EB00
#data 0x69432F96
#data 0x7FFC4F22
#data 0xA0572F52
#data 0x6EB3

loc_8c199B9A:
#data 0xE332
#data 0x64ECDC31
#data 0x041A243F
#data 0x34CC644F
#data 0x88426040
#data 0x65038D4B
#data 0x00096053
#data 0x89468844
#data 0x2450E544
#data 0x6AB3A00D

#align4
loc_8c199BC0:
#data 0x63ECE232
#data 0x031A232F
#data 0x33CC633F
#data 0x33DC7301
#data 0x000960D3
#data 0x7A01019C
#data 0x2310

loc_8c199BDA:
#data 0x6DAC
#data 0x000960D3
#data 0x049CB523
#data 0x2008600E
#data 0xE2288903
#data 0x332363AC
#data 0x8BE6

loc_8c199BF2:
#data 0xE332
#data 0x253F65EC
#data 0xE029E43A
#data 0x655F051A
#data 0x625335CC
#data 0x32DC7201
#data 0x05B42240
#data 0xD416752A
#data 0x25206240
#data 0x80518441
#data 0x80528442
#data 0x80538443
#data 0x64EC6543
#data 0x243F6250
#data 0x644F041A
#data 0x742E34CC
#data 0x84512420
#data 0x84528041
#data 0x84538042
#data 0x63F28043
#data 0xA00523E0
#data 0x0009

loc_8c199C46:
#data 0x7E01

#align4
loc_8c199C48:
#data 0xE42862EC
#data 0x8BA43243

#align4
loc_8c199C50:
#data 0x4F267F04
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00006EF6
#data 0x8C347158
#data 0x8C347928

#align4
loc_8c199C6C:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x4F222FA6
#data 0x2F427FF4
#data 0x9125DD14
#data 0x001D60D2
#data 0xC90C600D
#data 0x40214021
#data 0x8B018800
#data 0x0009A0B0

#align4
loc_8c199C94:
#data 0x89038801
#data 0x891D8802
#data 0x0009A0AA

#align4
loc_8c199CA0:
#data 0x0009B25E
#data 0x2008600E
#data 0xD20A8903
#data 0xBDC2E300
#data 0x2230

loc_8c199CB2:
#data 0x63D2
#data 0xD107920B
#data 0x6221323C
#data 0x622D6010
#data 0x8B013023
#data 0x0009A091

#align4
loc_8c199CC8:
#data 0x0009A094
#data 0x00960090
#data 0x8C34B1F8
#data 0x8C34793C

#align4
loc_8c199CD8:
#data 0xBED5D54C
#data 0x600E64F2
#data 0x8B012008
#data 0x0009A083

#align4
loc_8c199CE8:
#data 0xDB49DE48
#data 0x64E0B29E
#data 0x2008600E
#data 0x63E08922
#data 0xE100E232
#data 0x232F633C
#data 0x031AE029
#data 0x33BC633F
#data 0x65E00314
#data 0x655CD441
#data 0x6340252F
#data 0x655F051A
#data 0x752E35BC
#data 0xE3322530
#data 0x80518441
#data 0x80528442
#data 0x80538443
#data 0x622C62E0
#data 0x021A223F
#data 0xE144622F
#data 0x221032BC

#align4
loc_8c199D3C:
#data 0xE33264E0
#data 0x243F644C
#data 0x644F041A
#data 0x604034BC
#data 0x894C8842
#data 0x62D2E029
#data 0x706D014C
#data 0x611C022D
#data 0x3123622D
#data 0x742E893A
#data 0x7C046CF3
#data 0x6AF36240
#data 0x2C207A08
#data 0x844162C3
#data 0x844280C1
#data 0x844380C2
#data 0xD42580C3
#data 0x2A306340
#data 0x80A18441
#data 0x80A28442
#data 0x80A38443
#data 0xD321E004
#data 0x430B3F08
#data 0xD31F61F3
#data 0x62A3E004
#data 0x430B3F08
#data 0xBD0561F3
#data 0xD41C0009
#data 0xD21CE53C
#data 0x63208441
#data 0x9126205F
#data 0x64D28442
#data 0x231F051A
#data 0x9021350C
#data 0x044D031A
#data 0x634D353C
#data 0x8F113532
#data 0x634D7F08
#data 0x8B0D4315

#align4
loc_8c199DD8:
#data 0xE23263E0
#data 0x633CE142
#data 0x031A232F
#data 0x33BC633F
#data 0x2310

loc_8c199DEA:
#data 0xA004
#data 0xE001

loc_8c199DEE:
#data 0xD507
#data 0x64F2BEC6

loc_8c199DF4:
#data 0xE000

loc_8c199DF6:
#data 0x7F0C
#data 0x6AF64F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x05A06EF6
#data 0x00000098
#data 0x8C34793D
#data 0x8C347158
#data 0x8C347928

#align4
loc_8c199E18:
#data bank12.loc_8c129620
#data 0x8C34792C
#data 0x8C347930

#align4
loc_8c199E24:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x2F86E900
#data 0x4F22DD36
#data 0x7FF4DC34
#data 0x91612F42
#data 0xDE3460D2
#data 0x600D001D
#data 0x8800C903
#data 0x68938F02
#data 0x0009A11B

#align4
loc_8c199E54:
#data 0x89038801
#data 0x89658802
#data 0x0009A115

#align4
loc_8c199E60:
#data 0xB17DDB2D
#data 0x600E0009
#data 0x89022008
#data 0x00096093
#data 0x80B4

loc_8c199E72:
#data 0x9248
#data 0x84B463D2
#data 0x6221323C
#data 0x3023622D
#data 0xA1028901
#data 0x0009

loc_8c199E86:
#data 0x64B3
#data 0x7B046BF3
#data 0x6AF36240
#data 0x2B207A08
#data 0x80B18441
#data 0x80B28442
#data 0x80B38443
#data 0x6240D41E
#data 0x62B32A20
#data 0x80A18441
#data 0x80A28442
#data 0x80A38443
#data 0xD31AE004
#data 0x430B3F08
#data 0xD31861F3
#data 0x62A3E004
#data 0x430B3F08
#data 0xBC7361F3
#data 0x84E20009
#data 0x9319E43C
#data 0x84E3204F
#data 0xD11262E0
#data 0x340C041A
#data 0x203F84E1
#data 0x0217001A
#data 0x900E340C
#data 0x342C021A
#data 0x002D62D2
#data 0x3402600D
#data 0x7F088D02
#data 0x0009A0B2

#align4
loc_8c199F00:
#data 0x0009A0C3
#data 0x00920090
#data 0x00940E10
#data 0x8C347930
#data 0x8C34B1F8
#data 0x8C34792C
#data 0x8C347938
#data 0x8C347928

#align4
loc_8c199F20:
#data bank12.loc_8c129620
#data 0x00015180

#align4
loc_8c199F28:
#data 0xBDADD551
#data 0x600E64F2
#data 0x8B012008
#data 0x0009A0A6

#align4
loc_8c199F38:
#data 0xDA4EDB4D
#data 0x64B0B176
#data 0x2008600E
#data 0x63B08919
#data 0xE029E232
#data 0x232F633C
#data 0x633F031A
#data 0x039433AC
#data 0xD44765B0
#data 0x252F655C
#data 0x051A6340
#data 0x35AC655F
#data 0x2530752E
#data 0x80518441
#data 0x80528442
#data 0xA0888443
#data 0x8053

loc_8c199F7A:
#data 0x64B0
#data 0xE029E332
#data 0x644C65D2
#data 0x041A243F
#data 0x34AC644F
#data 0x7069024C
#data 0x622C015D
#data 0x3213611D
#data 0x90658B77
#data 0x015D9265
#data 0x2128611D
#data 0x742E8923
#data 0x7B046BF3
#data 0x6AF36140
#data 0x2B107A08
#data 0x80B18441
#data 0x80B28442
#data 0x80B38443
#data 0x6240D42D
#data 0x62B32A20
#data 0x80A18441
#data 0x80A28442
#data 0x80A38443
#data 0xD329E004
#data 0x430B3F08
#data 0xD32761F3
#data 0x62A3E004
#data 0x430B3F08
#data 0xA02261F3
#data 0x0009

loc_8c199FEE:
#data 0x742A
#data 0x7B046BF3
#data 0x6AF36340
#data 0x2B307A08
#data 0x80B18441
#data 0x80B28442
#data 0x80B38443
#data 0x6240D41B
#data 0x62B32A20
#data 0x80A18441
#data 0x80A28442
#data 0x80A38443
#data 0xD317E004
#data 0x430B3F08
#data 0xD31561F3
#data 0x62A3E004
#data 0x430B3F08
#data 0x61F3

loc_8c19A032:
#data 0xBBBF
#data 0x84E20009
#data 0x9317E43C
#data 0x84E3204F
#data 0xD10F62C0
#data 0x340C041A
#data 0x203F84E1
#data 0x0217001A
#data 0x900C340C
#data 0x342C021A
#data 0x002D62D2
#data 0x3402600D
#data 0x7F088D13

#align4
loc_8c19A064:
#data 0xE801A011
#data 0x02000090
#data 0x00940E10
#data 0x8C34793D
#data 0x8C347158
#data 0x8C347928

#align4
loc_8c19A07C:
#data bank12.loc_8c129620
#data 0x00015180

#align4
loc_8c19A084:
#data 0xBD7BD530
#data 0x64F2

loc_8c19A08A:
#data 0x608E
#data 0x8B4E8801
#data 0x60932C90
#data 0x80C10009
#data 0x61D29055
#data 0x011DD32B
#data 0x430B611D
#data 0x80C2E03C
#data 0x914CE33C
#data 0x021C60D2
#data 0x203F84C2
#data 0x3208001A
#data 0x00096023
#data 0x6BF380C3
#data 0x7B04D523
#data 0x6EF3D423
#data 0x7E086250
#data 0x84512420
#data 0x84528041
#data 0x84538042
#data 0x63408043
#data 0x84412B30
#data 0x844280B1
#data 0x844380B2
#data 0xD41B80B3
#data 0x2E206240
#data 0x80E18441
#data 0x80E28442
#data 0x80E38443
#data 0xE004D317
#data 0x3F0862B3
#data 0x61F3430B
#data 0xE004D314
#data 0x3F0862E3
#data 0x61F3430B
#data 0x0009BB4E
#data 0x7F08D50D
#data 0x6350D40E
#data 0x84512430
#data 0x84528041
#data 0x84538042
#data 0x8043

loc_8c19A12E:
#data 0x6083
#data 0x7F0C0009
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00946EF6
#data 0x8C34793D

#align4
loc_8c19A14C:
#data bank12.loc_8c129128
#data 0x8C34792C
#data 0x8C347934
#data 0x8C347930

#align4
loc_8c19A15C:
#data bank12.loc_8c129620

loc_8c19A160:
#data 0x2FD62FE6
#data 0xD42A4F22
#data 0x63407FF8
#data 0x6DF36EF3
#data 0x2E307D04
#data 0x80E18441
#data 0x80E28442
#data 0x80E38443
#data 0x6240D424
#data 0x62E32D20
#data 0x80D18441
#data 0x80D28442
#data 0x80D38443
#data 0xD320E004
#data 0x430B3F08
#data 0xD31E61F3
#data 0x62D3E004
#data 0x430B3F08
#data 0xBB0361F3
#data 0xD41B0009
#data 0xD21BE63C
#data 0x63208441
#data 0x9125206F
#data 0xD5198442
#data 0x231F061A
#data 0x360C6452
#data 0x004D901F
#data 0x600D031A
#data 0x363CC840
#data 0x7F088D08
#data 0x91176052
#data 0x001DD312
#data 0x600D6230
#data 0x89093203

#align4
loc_8c19A1E8:
#data 0x054D9011
#data 0x3632635D
#data 0x635D8B04
#data 0x89012338
#data 0xE001A001

loc_8c19A1FC:
#data 0xE000

loc_8c19A1FE:
#data 0x7F08
#data 0x6DF64F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x009005A0
#data 0x009A0096
#data 0x8C347938
#data 0x8C347928

#align4
loc_8c19A218:
#data bank12.loc_8c129620
#data 0x8C34792C
#data 0x8C347930
#data 0x8C34B1F8
#data 0x8C34793C

#align4
loc_8c19A22C:
#data 0x2FE6664C
#data 0x2FD6E332
#data 0x2FC6263F
#data 0xD54B2FB6
#data 0x4F22061A
#data 0x666FDB47
#data 0x365CDC47
#data 0x7FF86660
#data 0x00096063
#data 0x89058842
#data 0x00096063
#data 0x89018844
#data 0x0009A08E

#align4
loc_8c19A260:
#data 0x63B29079
#data 0x023DD441
#data 0x622D9376
#data 0x892A2238
#data 0xE1326240
#data 0x6DF36EF3
#data 0x221F622C
#data 0x021A7D04
#data 0x325C622F
#data 0x742E6423
#data 0x2E306340
#data 0x80E18441
#data 0x80E28442
#data 0x80E38443
#data 0x6240D435
#data 0x62E32D20
#data 0x80D18441
#data 0x80D28442
#data 0x80D38443
#data 0x3F08E004
#data 0x430BD330
#data 0xD32F61F3
#data 0x62D3E004
#data 0x430B3F08
#data 0xA02961F3
#data 0x0009

loc_8c19A2C6:
#data 0x6240
#data 0x6EF3E132
#data 0x622C6DF3
#data 0x7D04221F
#data 0x622F021A
#data 0x6423325C
#data 0x6340742A
#data 0x84412E30
#data 0x844280E1
#data 0x844380E2
#data 0xD42080E3
#data 0x2D206240
#data 0x844162E3
#data 0x844280D1
#data 0x844380D2
#data 0xE00480D3
#data 0xD31B3F08
#data 0x61F3430B
#data 0xE004D319
#data 0x3F0862D3
#data 0x61F3430B

#align4
loc_8c19A318:
#data 0x0009BA4C
#data 0xE63C84C1
#data 0x206FD215
#data 0x91186320
#data 0x061A84C2
#data 0x64B2231F
#data 0x9013360C
#data 0x054D031A
#data 0x635D363C
#data 0x8F5E3632
#data 0x635D7F08
#data 0x895A2338
#data 0x004D9005
#data 0xC840600D
#data 0xA0548953
#data 0x00900009
#data 0x05A00100
#data 0x0000009A
#data 0x8C34B1F8
#data 0x8C34792C
#data 0x8C347158
#data 0x8C34793D
#data 0x8C347928

#align4
loc_8c19A374:
#data bank12.loc_8c129620
#data 0x8C347930

#align4
loc_8c19A37C:
#data 0x6DF3E232
#data 0x6EF3644C
#data 0x7E04242F
#data 0x644F041A
#data 0x742E345C
#data 0x2D306340
#data 0x80D18441
#data 0x80D28442
#data 0x80D38443
#data 0x6240D440
#data 0x62D32E20
#data 0x80E18441
#data 0x80E28442
#data 0x80E38443
#data 0xD33CE004
#data 0x430B3F08
#data 0xD33A61F3
#data 0x62E3E004
#data 0x430B3F08
#data 0xB9F361F3
#data 0x84C10009
#data 0xD236E53C
#data 0x6320205F
#data 0x84C29161
#data 0x231F051A
#data 0x350C64B2
#data 0x031A905C
#data 0x353C044D
#data 0x3532634D
#data 0x7F088F05
#data 0x2338634D
#data 0x8901

loc_8c19A3FA:
#data 0xA001
#data 0xE001

loc_8c19A3FE:
#data 0xE000

#align4
loc_8c19A400:
#data 0x4F267F08
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c19A40E:
#data 0xD528
#data 0x70018454
#data 0xD6278054
#data 0x60629143
#data 0x600D001D
#data 0x8908C810
#data 0x6240D41F
#data 0x84412520
#data 0x84428051
#data 0x84438052
#data 0x8053

loc_8c19A436:
#data 0x9034
#data 0x044D6462
#data 0x644DE003
#data 0x88022049
#data 0xE00C8905
#data 0x40212049
#data 0x88024021
#data 0x8B23

loc_8c19A452:
#data 0xD51A
#data 0xD718E332
#data 0x6250E029
#data 0x223F622C
#data 0x622F021A
#data 0x012C327C
#data 0x02147101
#data 0x60629119
#data 0x600D001D
#data 0x8910C820
#data 0xD40A6050
#data 0x203F600C
#data 0x001A6240
#data 0x307C600F
#data 0x752A6503
#data 0x84412520
#data 0x84428051
#data 0x84438052
#data 0x8053

loc_8c19A49A:
#data 0x000B
#data 0x05A00009
#data 0x0090009A
#data 0x8C347928

#align4
loc_8c19A4A8:
#data bank12.loc_8c129620
#data 0x8C347930
#data 0x8C347938
#data 0x8C34B1F8
#data 0x8C347158
#data 0x8C34793D
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0xE8002F86
#data 0xDD6A4F22
#data 0x7FECDE6A
#data 0x6CF3D966
#data 0x7C08DB66
#data 0x430BD368
#data 0xE50A2E80
#data 0xE60267C3
#data 0x64E04B0B
#data 0x64C34D0B
#data 0x4D0BD464
#data 0xE3320009
#data 0x223F628E
#data 0x622F021A
#data 0xD0612F22
#data 0x2E10012C
#data 0x420BD260
#data 0xD46064E0
#data 0x00094D0B
#data 0xEA0062F2
#data 0x323CD35B
#data 0x52F11F21
#data 0x720163AE
#data 0x6130332C
#data 0xD3582E10
#data 0x64E0430B
#data 0xE3287A01
#data 0x323362AE
#data 0xD4558BF1
#data 0x00094D0B
#data 0xE0296AF2
#data 0xE602D350
#data 0x67C3E50A
#data 0x02AC3A3C
#data 0x4B0B2E20
#data 0x4D0B64E0
#data 0xD44D64C3
#data 0x00094D0B
#data 0x67C3E02B
#data 0xE60203AC
#data 0x2E30E50A
#data 0x64E04B0B
#data 0x64C34D0B
#data 0x64934D0B
#data 0x67C3E02C
#data 0xE60203AC
#data 0x2E30E50A
#data 0x64E04B0B
#data 0x64C34D0B
#data 0x64934D0B
#data 0x67C3E02D
#data 0xE60203AC
#data 0x2E30E50A
#data 0x64E04B0B
#data 0x64C34D0B
#data 0x4D0BD437
#data 0xE02F0009
#data 0x03AC67C3
#data 0xE50AE602
#data 0x4B0B2E30
#data 0x4D0B64E0
#data 0x4D0B64C3
#data 0xE0306493
#data 0x03AC67C3
#data 0xE50AE602
#data 0x4B0B2E30
#data 0x4D0B64E0
#data 0x4D0B64C3
#data 0xE0316493
#data 0x03AC67C3
#data 0xE50AE602
#data 0x4B0B2E30
#data 0x4D0B64E0
#data 0xD42564C3
#data 0x00094D0B
#data 0xE50AD327
#data 0xE60267C3
#data 0x64304B0B
#data 0x64C34D0B
#data 0xE3147801
#data 0x3233628E
#data 0xAF658901
#data 0x7F140009
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c19A62A:
#data 0xE330
#data 0x3533654C
#data 0xE1398B02
#data 0x8B173517

#align4
loc_8c19A638:
#data 0x00096053
#data 0x89138841
#data 0x00096053
#data 0x890F8842
#data 0x00096053
#data 0x890B8843
#data 0x00096053
#data 0x89078844
#data 0x00096053
#data 0x89038823
#data 0x00096053
#data 0x8B01882A

#align4
loc_8c19A668:
#data 0xE001000B
;-------------------------------------------------------------------------------

#align4
loc_8c19A66C:
#data 0x000BE000
#data 0x00000009

#align4
loc_8c19A674:
#data bank1c.loc_8c1c6484

loc_8c19A678:
#data bank1a.loc_8c1aF1A4

loc_8c19A67C:
#data bank1a.loc_8c1aECDC
#data 0x8C347942

#align4
loc_8c19A684:
#data bank1a.loc_8c1aEE08

loc_8c19A688:
#data bank1c.loc_8c1c6488
#data 0x8C347158

#align4
loc_8c19A690:
#data bank1a.loc_8c1aEC3A

loc_8c19A694:
#data bank1c.loc_8c1c648C
#data 0x8C34793C


loc_8c19A69C:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov 0x03,r10 ; r10 set to 0x03
mov.l r9,@-r15
mov 0x00,r9 ; r9 set to 0x00
mov.l r8,@-r15
mov r9,r8 ; r8 set to 0x00
sts.l pr,@-r15
mov.l @(loc_8c19A768,pc),r3 ; r3 set to 0x8C1A00CA
jsr @r3
mov r9,r4 ; r4 set to 0x00
mov.l @(loc_8c19A774,pc),r13 ; r13 set to 0x8C347970
mov.l @(loc_8c19A778,pc),r14 ; r14 set to 0x8C3479B4
mov.l @(loc_8c19A76C,pc),r11 ; r11 set to 0x8C1B3F0C
mov.l @(loc_8c19A770,pc),r12 ; r12 set to 0x8C347A18
bra loc_8c19A74E
nop

#align4
loc_8c19A6C4:
#data 0x430BD32D
#data 0xD22DE401
#data 0x420BD428
#data 0xE504

loc_8c19A6D2:
#data 0x4B0B
#data 0x600E64C2
#data 0x89FA2008
#data 0x430BD327
#data 0xD227E400
#data 0x420BD422
#data 0xE50F

loc_8c19A6EA:
#data 0x4B0B
#data 0x600E64C2
#data 0x89012008
#data 0xE801A021

#align4
loc_8c19A6F8:
#data 0x746864D2
#data 0x600C6040
#data 0x81E17404
#data 0x85E16340
#data 0x4318633C
#data 0x7404203B
#data 0x634081E1
#data 0x7404633C
#data 0x62402E31
#data 0x622C63E1
#data 0x232B4218
#data 0x62E12E31
#data 0x622DD316
#data 0x89043230
#data 0x921685E1
#data 0x3020600D
#data 0x8BD7

loc_8c19A73A:
#data 0x638C
#data 0x8D052338
#data 0x62AC7AFF
#data 0x89022228
#data 0x6893A001

loc_8c19A74C:
#data 0x6A93


loc_8c19A74E:
extu.b r10,r2
tst r2,r2
bf loc_8c19A6C4
extu.b r8,r8
mov.l @(loc_8c19A788,pc),r10 ; r10 set to 0x8C1A003E
tst r8,r8
bt loc_8c19A78C
mov.w @(loc_8c19A764,pc),r4 ; r4 set to 0x44C
bra loc_8c19A80A
nop
#data 0x5536

loc_8c19A764:
#data 0x044C
#data 0x0000

#align4
loc_8c19A768:
#data bank1a.loc_8c1a00CA

loc_8c19A76C:
#data bank1b.loc_8c1b3F0C

loc_8c19A770:
#data 0x8C347A18

#align4
loc_8c19A774:
#data 0x8C347970

#align4
loc_8c19A778:
#data 0x8C3479B4

#align4
loc_8c19A77C:
#data loc_8c19FEB8

loc_8c19A780:
#data bank1b.loc_8c1b3EEC
#data 0x0000EA3C

#align4
loc_8c19A788:
#data bank1a.loc_8c1a003E


loc_8c19A78C:
mov.l @r13,r4
add 0x58,r4
mov.b @r4,r0
extu.b r0,r0
add 0x04,r4
mov.w r0,@(0x06,r14)
mov.b @r4,r3
mov.w @(0x06,r14),r0
extu.b r3,r3
shll8 r3
or r3,r0
add 0x04,r4
mov.w r0,@(0x06,r14)
mov.b @r4,r0
extu.b r0,r0
add 0x04,r4
mov.w r0,@(0x04,r14)
mov.b @r4,r3
mov.w @(0x04,r14),r0
extu.b r3,r3
shll8 r3
or r3,r0
mov.w r0,@(0x04,r14)
mov.l @r13,r4
add 0x50,r4
mov.b @(0x04,r4),r0
mov.b r0,@(0x08,r14)
mov.l @r13,r4
add 0x48,r4
mov.b @r4,r0
extu.b r0,r0
add 0x04,r4
mov.w r0,@(0x0A,r14)
mov.b @r4,r3
mov.w @(0x0A,r14),r0
extu.b r3,r3
shll8 r3
or r3,r0
mov.w r0,@(0x0A,r14)
mov.l @r13,r0
mov.b @r0,r0
extu.b r0,r0
mov.w r0,@(0x0C,r14)
mov.l @r13,r4
add 0x44,r4
mov.b @r4,r3
mov.w @(0x0C,r14),r0
extu.b r3,r3
shll8 r3
or r3,r0
mov 0x40,r2 ; r2 set to 0x40
mov.w r0,@(0x0C,r14)
mov.l @r13,r3
add r3,r2 ; r2 ??? bc r3 is ???
bra loc_8c19A812
mov.b @r2,r2

#align4
loc_8c19A7FC:
#data 0x64C24B0B
#data 0x2008600E
#data 0x9E7F8905
#data 0x64E3


loc_8c19A80A:
jsr @r10
nop
bra loc_8c19A8BA
mov 0x00,r0

loc_8c19A812:
#data 0x64D2
#data 0x00096043
#data 0x60007078
#data 0x89EDC808
#data 0x60407448
#data 0x7404600C
#data 0x634081EB
#data 0x633C85EB
#data 0x203B4318
#data 0x81EB7404
#data 0x600C6040
#data 0x81EA7404
#data 0x85EA6340
#data 0x4318633C
#data 0x7404203B
#data 0x604081EA
#data 0x7404600C
#data 0x634081E9
#data 0x633C85E9
#data 0x203B4318
#data 0x81E97404
#data 0x600C6040
#data 0x81E87404
#data 0x85E86340
#data 0x4318633C
#data 0x7404203B
#data 0x604081E8
#data 0x7404600C
#data 0x634081E7
#data 0x633C85E7
#data 0x203B4318
#data 0x60D281E7
#data 0x600C6000
#data 0x64D281EC
#data 0x63407444
#data 0x633C85EC
#data 0x203B4318
#data 0x81ECE240
#data 0x323C63D2
#data 0x6220

loc_8c19A8AE:
#data 0x4B0B
#data 0x600E64C2
#data 0x89FA2008
#data 0xE001


loc_8c19A8BA:
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
#data 0x6342D40F
#data 0x60307354
#data 0x2300C9DF
#data 0x73546342
#data 0xC9EF6030
#data 0x63422300
#data 0x60307354
#data 0x2300CB80
#data 0x73546342
#data 0xCB406030
#data 0x63422300
#data 0x6030737C
#data 0x000BCB01
#data 0x2300
;-------------------------------------------------------------------------------

loc_8c19A902:
mov 0x30,r5 ; r5 set to 0x30
bra loc_8c19A910
mov 0x2B,r4
#data 0x00000460
#data 0x8C347970


loc_8c19A910:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
bsr loc_8c19A69C
nop
exts.b r0,r0
tst r0,r0
bt loc_8c19A9E0
mov.l @(loc_8c19AA28,pc),r3 ; r3 set to 0x8C1B2EF0
jsr @r3
nop
mov.l @(loc_8c19AA2C,pc),r14 ; r14 set to 0x8C347970
mov.l @r14,r3 ; r3 ??
add 0x7C,r3
mov.b @r3,r0
and 0xFB,r0
mov.b r0,@r3
mov.l @r14,r3
add 0x7C,r3
mov.b @r3,r0
and 0xEF,r0
mov.b r0,@r3
mov.l @r14,r3
add 0x78,r3
mov.b @r3,r0
and 0xFB,r0
mov.b r0,@r3
mov.l @r14,r3
add 0x78,r3
mov.b @r3,r0
and 0xDF,r0
mov.b r0,@r3
mov.l @(loc_8c19AA30,pc),r4 ; r4 set to 0x8C347974
mov 0x00,r13 ; r13 set to 0x00
mov.b @(0x03,r4),r0
and 0xEF,r0
mov.b r0,@(0x03,r4)
mov.b @r4,r0
and 0x7F,r0
mov.b r0,@r4 ; r4 ??? bc r0 is ???
mov.l @(loc_8c19AA34,pc),r4 ; r4 set to 0x8C347979
mov.b @r4,r0
and 0x7F,r0
mov.b r0,@r4 ; r4 ??? bc r0 is ???
mov.b @r4,r0
and 0xEF,r0
mov.b r0,@r4
mov.b @r4,r0
and 0xDF,r0
mov.b r0,@r4
mov.b @r4,r0
and 0xF7,r0
mov.b r0,@r4
mov.b @(0x01,r4),r0
and 0xFD,r0
mov.b r0,@(0x01,r4)
mov.b @(0x01,r4),r0
and 0xFE,r0
mov.b r0,@(0x01,r4)
mov.b @r4,r0
and 0xFD,r0
mov.b r0,@r4
mov.l @(loc_8c19AA38,pc),r2 ; r2 set to 0x8C347A14
mov.l r13,@r2 ; r2 ??
mov.l @(loc_8c19AA3C,pc),r1 ; r1 set to 0x8C3479A1
mov r13,r3 ; r3 set to 0x00
mov.b r3,@r1 ; r1 ??
mov.l @(loc_8c19AA40,pc),r0 ; r0 set to 0x8C3479B2
mov.b r3,@r0 ; r0 ??
mov.l @(loc_8c19AA44,pc),r3 ; r3 set to 0x8C3479B3
bsr loc_8c19ABDA
mov.b r13,@r3 ; r3 ??
mov.l @r14,r3
add 0x24,r3
mov.b @r3,r0
and 0xFB,r0
mov.b r0,@r3
mov.l @r14,r3
add 0x14,r3
mov.b @r3,r0
and 0xEF,r0
mov.b r0,@r3
mov.l @(loc_8c19AA48,pc),r2 ; r2 set to 0x8C19E30C
mov 0x01,r6 ; r6 set to 0x01
mov.w @(loc_8c19AA24,pc),r4 ; r4 set to 0x6A9
jsr @r2
mov 0x07,r5 ; r5 set to 0x07
mov.l @(loc_8c19AA50,pc),r3 ; r3 set to 0x8C1B3EEC
mov.l @(loc_8c19AA4C,pc),r4 ; r4 set to 0x8C3479F0
mov.w @(loc_8c19AA26,pc),r5 ; r5 set to 0x1F4
jsr @r3
nop
mov.l @(loc_8c19AA54,pc),r2 ; r2 set to 0x8C3479CE
mov.b r13,@r2 ; r2 ??
mov.l @r14,r3 ; r3 ??
add 0x24,r3
mov.b @r3,r0
or 0x10,r0
mov.b r0,@r3
lds.l @r15+,pr
mov.l @(loc_8c19AA58,pc),r2 ; r2 set to 0x8C19E562
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
jmp @r2
mov.l @r15+,r14

loc_8c19A9E0:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c19A9E8:
mov.l @(loc_8c19AA2C,pc),r1 ; r1 set to 0x8C347970
mov.l @r1,r3
add 0x24,r3
mov.b @r3,r0
or 0x10,r0
mov.b r0,@r3
mov.l @(loc_8c19AA5C,pc),r2 ; r2 set to 0x8C19FE4A
jmp @r2
mov 0x00,r4

loc_8c19A9FA:
mov.l @(loc_8c19AA2C,pc),r3 ; r3 set to 0x8C347970
mov.l @r3,r1
add 0x24,r1
mov.b @r1,r0
and 0xEF,r0
mov.b r0,@r1
mov.l @(loc_8c19AA5C,pc),r2 ; r2 set to 0x8C19FE4A
jmp @r2
mov 0x00,r4

loc_8c19AA0C:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov 0x03,r1 ; r1 set to 0x03
sts.l pr,@-r15
extu.b r14,r2
mov.l @(loc_8c19AA60,pc),r3 ; r3 set to 0x8C3479E7
cmp/gt r1,r2
bf/s loc_8c19AA64
mov.b r14,@r3 ; r3 ??? bc r14 is ???
bra loc_8c19AA66
sub r1,r14

loc_8c19AA24:
#data 0x06A9

loc_8c19AA26:
#data 0x01F4

#align4
loc_8c19AA28:
#data bank1b.loc_8c1b2EF0

loc_8c19AA2C:
#data 0x8C347970

#align4
loc_8c19AA30:
#data 0x8C347974

#align4
loc_8c19AA34:
#data 0x8C347979

#align4
loc_8c19AA38:
#data 0x8C347A14

#align4
loc_8c19AA3C:
#data 0x8C3479A1

#align4
loc_8c19AA40:
#data 0x8C3479B2

#align4
loc_8c19AA44:
#data 0x8C3479B3

#align4
loc_8c19AA48:
#data loc_8c19E30C

loc_8c19AA4C:
#data 0x8C3479F0

#align4
loc_8c19AA50:
#data bank1b.loc_8c1b3EEC

loc_8c19AA54:
#data 0x8C3479CE

#align4
loc_8c19AA58:
#data loc_8c19E562

loc_8c19AA5C:
#data loc_8c19FE4A

loc_8c19AA60:
#data 0x8C3479E7

loc_8c19AA64:
#data 0xEE00

loc_8c19AA66:
#data 0xE20F
#data 0x63ECDD42
#data 0x8B1A3327
#data 0x64ECD341
#data 0x343CE532
#data 0x3156614D
#data 0x64538B00

#align4
loc_8c19AA80:
#data 0xD03E644D
#data 0x440074FF
#data 0xE602034D
#data 0x946E2D31
#data 0x420BD23B
#data 0xD33B65D1
#data 0x714C6132
#data 0xC90F6010
#data 0xA00FCBF0
#data 0x2100

loc_8c19AAA6:
#data 0x9363
#data 0x2D31E602
#data 0xD134945F
#data 0x6533410B
#data 0x6232D333
#data 0x000960E3
#data 0x724CD332
#data 0xE104430B

#align4
loc_8c19AAC4:
#data 0xD2314F26
#data 0x422B6DF6
#data 0x6EF6


loc_8c19AACE:
extu.b r4,r4
mov.l @(loc_8c19AB84,pc),r2 ; r2 set to 0x8C347970
tst r4,r4
bt/s loc_8c19AAE4
mov.l @r2,r5
mov r5,r1
add 0x14,r1
mov.b @r1,r0
or 0x08,r0
bra loc_8c19AAEE
mov.b r0,@r1

loc_8c19AAE4:
mov r5,r3
add 0x14,r3
mov.b @r3,r0
and 0xF7,r0
mov.b r0,@r3

loc_8c19AAEE:
rts
nop
;-------------------------------------------------------------------------------

loc_8c19AAF2:
extu.b r4,r5
mov.l @(loc_8c19AB84,pc),r7 ; r7 set to 0x8C347970
tst r5,r5
bf/s loc_8c19AB04
mov.l @r7,r6
mov.b @(0x0C,r6),r0
and 0xFD,r0
bra loc_8c19AB26
mov.b r0,@(0x0C,r6)

loc_8c19AB04:
mov.b @(0x0C,r6),r0
or 0x02,r0
mov.b r0,@(0x0C,r6)
mov r5,r0
nop
cmp/eq 0x01,r0
bf/s loc_8c19AB1C
mov.l @r7,r4
mov.b @(0x0C,r4),r0
or 0x01,r0
bra loc_8c19AB26
mov.b r0,@(0x0C,r4)

#align4
loc_8c19AB1C:
#data 0x8B028802
#data 0xC9FE844C
#data 0x804C


loc_8c19AB26:
rts
nop
;-------------------------------------------------------------------------------

loc_8c19AB2A:
rts
nop
;-------------------------------------------------------------------------------

loc_8c19AB2E:
mov.l @(loc_8c19AB84,pc),r3 ; r3 set to 0x8C347970
mov.l @r3,r1
add 0x24,r1
mov.b @r1,r0
or 0x80,r0
rts
mov.b r0,@r1
;-------------------------------------------------------------------------------
#data 0x6132D311
#data 0x60107124
#data 0x000BC97F
#data 0x2100
;-------------------------------------------------------------------------------

loc_8c19AB4A:
extu.b r4,r4
mov.l @(loc_8c19AB84,pc),r3 ; r3 set to 0x8C347970
tst r4,r4
bt/s loc_8c19AB60
mov.l @r3,r5
mov r5,r1
add 0x10,r1
mov.b @r1,r0
or 0x01,r0
bra loc_8c19AB6A
mov.b r0,@r1

loc_8c19AB60:
mov r5,r2
add 0x10,r2
mov.b @r2,r0
and 0xFE,r0
mov.b r0,@r2

loc_8c19AB6A:
rts
nop
;-------------------------------------------------------------------------------
#data 0x03DA
#data 0x00004000
#data 0x8C347988
#data 0x0000FFF1

#align4
loc_8c19AB7C:
#data bank1c.loc_8c1c64CE

loc_8c19AB80:
#data loc_8c19E30C

loc_8c19AB84:
#data 0x8C347970

#align4
loc_8c19AB88:
#data bank13.loc_8c130ECC

loc_8c19AB8C:
#data loc_8c19E562
#data 0x604E2FE6
#data 0xDE3C4F22
#data 0x8B158801
#data 0x0009BF24
#data 0xE304E601
#data 0x2F366563
#data 0xB7996733
#data 0x63E26433
#data 0x73147F04
#data 0xD2356030
#data 0x420BC9F7
#data 0x63E22300
#data 0x60307314
#data 0xCB10A005
#data 0x632362E2
#data 0x60307324
#data 0x2300C9FB
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c19ABDA:
mov.l @(loc_8c19AC90,pc),r3 ; r3 set to 0x8C3479E5
mov 0x00,r4 ; r4 set to 0x00
mov.b r4,@r3 ; r3 ??
mov.l @(loc_8c19AC94,pc),r5 ; r5 set to 0x8C3479AC
mov.w r4,@r5 ; r5 ??
mov r4,r0 ; r0 set to 0x00
nop
mov.w r0,@(0x02,r5)
mov.w r0,@(0x04,r5)
mov.l @(loc_8c19AC88,pc),r1 ; r1 set to 0x8C347970
mov.l @r1,r2
mov.b @(0x08,r2),r0
and 0xBF,r0
rts
mov.b r0,@(0x08,r2)
;-------------------------------------------------------------------------------
#data 0xA0009439
#data 0x2FE60009
#data 0x2FD6E203
#data 0x4F222FC6
#data 0x2F417FFC
#data 0x6450D520
#data 0x3323634C
#data 0xA1108B01
#data 0xD01E0009
#data 0x61F1644C
#data 0x04154400
#data 0x70016050
#data 0x70FF2500
#data 0x8800600C
#data 0x88018905
#data 0x8802890F
#data 0xA0518930
#data 0x93190009
#data 0x9E169D16
#data 0x97162F36
#data 0x96159517
#data 0x410BD112
#data 0xA044E400
#data 0x91130009
#data 0x9E109D10
#data 0x97102F16
#data 0x960F9511
#data 0x430BD30C
#data 0xA038E401
#data 0x00F50009
#data 0x0BA10AA1
#data 0x08800580
#data 0x7F3000CF
#data 0x0BA70AA7
#data 0x2A001C00
#data 0x7E6702DF

#align4
loc_8c19AC88:
#data 0x8C347970

#align4
loc_8c19AC8C:
#data loc_8c19BC4A

loc_8c19AC90:
#data 0x8C3479E5

#align4
loc_8c19AC94:
#data 0x8C3479AC

#align4
loc_8c19AC98:
#data loc_8c19E4B4
#data 0x6232D349
#data 0xCB408428
#data 0xEC008028
#data 0x9E6F9D6F
#data 0x2FC666C3
#data 0xD2452FC6
#data 0x976A946C
#data 0x65C3420B
#data 0x66C32FC6
#data 0x94662FC6
#data 0x9762D340
#data 0x65C3430B
#data 0x7F109262
#data 0x96612F26
#data 0xD33D9561
#data 0x430B975D
#data 0x7F04E402
#data 0x915B60F1
#data 0xDC3A600D
#data 0x890F3010
#data 0x30109157
#data 0x91558923
#data 0x89343010
#data 0x30109153
#data 0x91518974
#data 0x8B013010
#data 0x0009A084
#data 0x0009A095
#data 0x9C4A934C
#data 0xD2302F36
#data 0x67C365C3
#data 0xD62F2F26
#data 0x410BD12A
#data 0x934264D3
#data 0x67C365C3
#data 0xD22C2F36
#data 0x963D2F26
#data 0x410BD125
#data 0xA07E64E3
#data 0x92387F10
#data 0x2FC62F26
#data 0x9536D627
#data 0x9733D320
#data 0x64D3430B
#data 0x2F269232
#data 0x96302FC6
#data 0xD31C952D
#data 0x430B972A
#data 0xA06A64E3
#data 0x93297F10
#data 0x2FC62F36
#data 0x9527D61E
#data 0x9724D216
#data 0x64D3420B
#data 0x2F369323
#data 0x96212FC6
#data 0xD212951E
#data 0x420B971B
#data 0xA05664E3
#data 0x0AAD7F10
#data 0x7FFF0BAD
#data 0x0BB20AB2
#data 0x2A001C00
#data 0x7E6702DF
#data 0x044C00F5
#data 0x08340514
#data 0x08C208B1
#data 0x649574FE
#data 0x48C61184
#data 0x01B301B4
#data 0x00974897
#data 0x024535A7
#data 0x35740244
#data 0x000000CA
#data 0x8C347970

#align4
loc_8c19ADC8:
#data loc_8c19E450

loc_8c19ADCC:
#data loc_8c19E4B4
#data 0x0000C147
#data 0x0000C774
#data 0x0000EE7C
#data 0x0000CD4F
#data 0x0000FC9C
#data 0x0000FB7B
#data 0x2F26D241
#data 0xD6412FC6
#data 0xD3419574
#data 0x430B9771
#data 0xD24064D3
#data 0x2FC62F26
#data 0x956B966D
#data 0x9768D33C
#data 0x64E3430B
#data 0x7F10A013
#data 0x2F36D33B
#data 0xD63B2FC6
#data 0xD2379563
#data 0x420B9760
#data 0xD33964D3
#data 0x2FC62F36
#data 0x955A965C
#data 0x9757D232
#data 0x64E3420B
#data 0xA0017F10
#data 0xE000E001
#data 0x4F267F04
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x6532D330
#data 0x00096053
#data 0x6000706C
#data 0x0229C880
#data 0x622B72FF
#data 0x89012228
#data 0x0009A07B
#data 0x00096053
#data 0x6000706C
#data 0x0029C840
#data 0x600B70FF
#data 0x8B702008
#data 0x035CE048
#data 0x633C9233
#data 0x8D0A3320
#data 0x015C664D
#data 0x611C932E
#data 0x89043130
#data 0x922A015C
#data 0x3120611C
#data 0x94278B3E
#data 0x8B0C3640
#data 0x6231D31B
#data 0x3240622D
#data 0x60538B07
#data 0x702C0009
#data 0xC8106000
#data 0xA0508B4F
#data 0x94180009
#data 0x8B2B3640
#data 0x6321D214
#data 0x3340633D
#data 0x60538B26
#data 0x702C0009
#data 0xC8086000
#data 0xA03E8941
#data 0x01E90009
#data 0x034E01E8
#data 0x02050206
#data 0x00800380
#data 0x00810083
#data 0x08B10834
#data 0x0000DF4F
#data 0x0000FC32

#align4
loc_8c19AEF8:
#data loc_8c19E450
#data 0x0000DF19
#data 0x0000D22D
#data 0x0000FBF9
#data 0x0000D1F8
#data 0x8C347970
#data 0x8C3479AE
#data 0x8C3479B0
#data 0x6241D455
#data 0x3620622D
#data 0x60538B05
#data 0x702C0009
#data 0xC8806000
#data 0x85418B13
#data 0x3600600D
#data 0x60538B05
#data 0x702C0009
#data 0xC8406000
#data 0x85428B09
#data 0x3600600D
#data 0x60538B07
#data 0x702C0009
#data 0xC8206000
#data 0x000B8901
#data 0xE000E001
#data 0x0009000B
;-------------------------------------------------------------------------------

loc_8c19AF60:
mov.l @(loc_8c19B074,pc),r5 ; r5 set to 0x8C3479B3
mov.l @(loc_8c19B078,pc),r3 ; r3 set to 0x8C347970
mov.b @r5,r2
tst r2,r2
bf/s loc_8c19AF7C
mov.l @r3,r4
mov r4,r0
nop
add 0x2C,r0
mov.b @r0,r0
tst 0x10,r0
bf loc_8c19AF88
bra loc_8c19AF8C
nop

loc_8c19AF7C:
mov r4,r0
nop
add 0x2C,r0
mov.b @r0,r0
tst 0x20,r0
bt loc_8c19AF8C

loc_8c19AF88:
rts
mov 0x01,r0
;-------------------------------------------------------------------------------

loc_8c19AF8C:
mov r4,r0
nop
add 0x2C,r0
mov.b @r0,r0
tst 0x40,r0
bt loc_8c19AF9C
rts
mov 0x02,r0
;-------------------------------------------------------------------------------

loc_8c19AF9C:
mov.b @r5,r2
tst r2,r2
bf loc_8c19AFBA
mov.l @(loc_8c19B07C,pc),r2 ; r2 set to 0x8C3479B2
mov.b @r2,r3
tst r3,r3
bf loc_8c19AFBA
mov r4,r0
nop
add 0x2C,r0
mov.b @r0,r0
tst 0x20,r0
bt loc_8c19AFBA
rts
mov 0x03,r0
;-------------------------------------------------------------------------------

loc_8c19AFBA:
mov 0x00,r0 ; r0 set to 0x00
rts
nop
;-------------------------------------------------------------------------------
#data 0xE300D22F
#data 0x2230000B
;-------------------------------------------------------------------------------
#data 0xD62DD32B
#data 0x60536532
#data 0x706C0009
#data 0xC8406000
#data 0x67608D05
#data 0x8B432778
#data 0xA041E101
#data 0x60532610
#data 0x706C0009
#data 0xC8106000
#data 0x60738938
#data 0x88010009
#data 0x60538B34
#data 0x706C0009
#data 0xE3096000
#data 0x3037C90F
#data 0x60538907
#data 0x706C0009
#data 0xC90F6000
#data 0xA01B7030
#data 0x60532400
#data 0x706C0009
#data 0xC90F6000
#data 0x8B02880A
#data 0xA011E12A
#data 0x60532410
#data 0x706C0009
#data 0xC90F6000
#data 0x8B02880B
#data 0xA007E223
#data 0x60532420
#data 0x706C0009
#data 0xC90F6000
#data 0x24007035
#data 0x2630E300
#data 0x6312D108
#data 0x6030736C
#data 0x2300C9EF
#data 0xE001000B
;-------------------------------------------------------------------------------
#data 0x2630E300
#data 0x000BE000
#data 0x00000009
#data 0x8C3479AC

#align4
loc_8c19B074:
#data 0x8C3479B3

#align4
loc_8c19B078:
#data 0x8C347970

#align4
loc_8c19B07C:
#data 0x8C3479B2
#data 0x8C3479A2


loc_8c19B084:
mov.l r14,@-r15
extu.w r4,r0
mov.l r13,@-r15
mov.w @(loc_8c19B17E,pc),r1 ; r1 set to 0x44C
mov.w @(loc_8c19B17C,pc),r13 ; r13 set to 0x281
sts.l pr,@-r15
cmp/eq r1,r0
mov r13,r14 ; r14 set to 0x281
bt/s loc_8c19B0A8
add 0xFF,r14 ; r14 set to 0x280
mov.w @(loc_8c19B180,pc),r1 ; r1 set to 0x514
cmp/eq r1,r0
bt loc_8c19B0D0
mov.w @(loc_8c19B182,pc),r1 ; r1 set to 0x834
cmp/eq r1,r0
bt loc_8c19B0B8
bra loc_8c19B0E4
nop

loc_8c19B0A8:
mov.l @(loc_8c19B190,pc),r3 ; r3 set to 0x8C19E30C
mov 0x27,r5 ; r5 set to 0x27
mov 0x01,r6 ; r6 set to 0x01
jsr @r3
mov r13,r4
mov 0x01,r6 ; r6 set to 0x01
bra loc_8c19B0DE
mov 0x1C,r5

loc_8c19B0B8:
mov.l @(loc_8c19B190,pc),r2 ; r2 set to 0x8C19E30C
mov 0x4A,r5 ; r5 set to 0x4A
mov 0x01,r6 ; r6 set to 0x01
jsr @r2
mov r13,r4
mov.l @(loc_8c19B190,pc),r3 ; r3 set to 0x8C19E30C
mov 0x01,r6 ; r6 set to 0x01
mov.w @(loc_8c19B184,pc),r5 ; r5 set to 0xAB
jsr @r3
mov r14,r4
bra loc_8c19B0E4
nop

#align4
loc_8c19B0D0:
#data 0xE52ED32F
#data 0x430BE601
#data 0xE53864D3
#data 0xE601


loc_8c19B0DE:
mov.l @(loc_8c19B190,pc),r2 ; r2 set to 0x8C19E30C
jsr @r2
mov r14,r4

loc_8c19B0E4:
mov.l @(loc_8c19B194,pc),r4 ; r4 set to 0x8C347970, r4 set to 0x8C347970
mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48
mov.w @(loc_8c19B186,pc),r3 ; r3 set to 0x80, r3 set to 0x80
mov.l @r4,r2 ; r2 ??
mov.b r3,@(r0,r2)
mov.l @r4,r3 ; r3 ??, r3 ??
add 0x20,r3
mov.b @r3,r0 ; r0 ??? bc r3 is ???, r0 ??? bc r3 is ???
or 0x01,r0
mov.b r0,@r3
lds.l @r15+,pr
mov.l @(loc_8c19B198,pc),r2 ; r2 set to 0x8C19E562, r2 set to 0x8C19E562
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_8c19B102:
mov.l @(loc_8c19B194,pc),r1 ; r1 set to 0x8C347970
sts.l pr,@-r15
mov.l @r1,r3
add 0x20,r3
mov.b @r3,r0
and 0xFE,r0
mov.b r0,@r3
mov.l @(loc_8c19B190,pc),r2 ; r2 set to 0x8C19E30C
mov 0x01,r6 ; r6 set to 0x01
mov.w @(loc_8c19B17C,pc),r4 ; r4 set to 0x281
jsr @r2
mov 0x00,r5 ; r5 set to 0x00
mov.l @(loc_8c19B190,pc),r3 ; r3 set to 0x8C19E30C
mov 0x01,r6 ; r6 set to 0x01
mov.w @(loc_8c19B188,pc),r4 ; r4 set to 0x280
jsr @r3
mov 0x00,r5 ; r5 set to 0x00
mov.l @(loc_8c19B190,pc),r2 ; r2 set to 0x8C19E30C
mov 0x01,r6 ; r6 set to 0x01
mov.w @(loc_8c19B18A,pc),r4 ; r4 set to 0x283
jsr @r2
mov 0x00,r5 ; r5 set to 0x00
mov.l @(loc_8c19B190,pc),r3 ; r3 set to 0x8C19E30C
mov 0x01,r6 ; r6 set to 0x01
mov.w @(loc_8c19B18C,pc),r4 ; r4 set to 0x282
jsr @r3
mov 0x00,r5 ; r5 set to 0x00
mov.l @(loc_8c19B194,pc),r3 ; r3 set to 0x8C347970
mov 0x48,r0 ; r0 set to 0x48
mov.w @(loc_8c19B18E,pc),r1 ; r1 set to 0x83
mov.l @r3,r2 ; r2 ??
mov.b r1,@(r0,r2)
mov.l @(loc_8c19B198,pc),r2 ; r2 set to 0x8C19E562
jmp @r2
lds.l @r15+,pr

loc_8c19B148:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.b r5,@r15
mov.l @(loc_8c19B194,pc),r3 ; r3 set to 0x8C347970
mov.l @r3,r1
add 0x24,r1
mov.b @r1,r0
mov.l @(loc_8c19B198,pc),r2 ; r2 set to 0x8C19E562
or 0x20,r0
jsr @r2
mov.b r0,@r1
mov 0x03,r2 ; r2 set to 0x03
extu.b r14,r3 ; r3 ??? bc r14 is ???
cmp/gt r2,r3
bf/s loc_8c19B19C
mov 0x0F,r4 ; r4 set to 0x0F
bra loc_8c19B19E
sub r2,r14

loc_8c19B17C:
#data 0x0281

loc_8c19B17E:
#data 0x044C

loc_8c19B180:
#data 0x0514

loc_8c19B182:
#data 0x0834

loc_8c19B184:
#data 0x00AB

loc_8c19B186:
#data 0x0080

loc_8c19B188:
#data 0x0280

loc_8c19B18A:
#data 0x0283

loc_8c19B18C:
#data 0x0282

loc_8c19B18E:
#data 0x0083

#align4
loc_8c19B190:
#data loc_8c19E30C

loc_8c19B194:
#data 0x8C347970

#align4
loc_8c19B198:
#data loc_8c19E562

loc_8c19B19C:
#data 0xEE00

loc_8c19B19E:
#data 0x63EC
#data 0x8B003347
#data 0x6E43

loc_8c19B1A6:
#data 0x60F0
#data 0x997E6DEC
#data 0x9B7D4D00
#data 0xD83F600C
#data 0x88016A93
#data 0x6CB37A01
#data 0x7C018D06
#data 0x89168802
#data 0x89278803
#data 0x0009A039

#align4
loc_8c19B1CC:
#data 0xE602D539
#data 0x2F5235DC
#data 0x6551D338
#data 0x6493430B
#data 0xE60265F2
#data 0x6551D335
#data 0x4519655D
#data 0x64A3430B
#data 0xA038D533
#data 0xE602

loc_8c19B1F2:
#data 0x65D3
#data 0x2F52358C
#data 0xD32FE602
#data 0x430B6551
#data 0x65F26493
#data 0xD32CE602
#data 0x655D6551
#data 0x430B4519
#data 0xD52B64A3
#data 0xE602A025

#align4
loc_8c19B218:
#data 0xE602D52A
#data 0x2F5235DC
#data 0x6551D325
#data 0x6493430B
#data 0xE60265F2
#data 0x6551D322
#data 0x4519655D
#data 0x64A3430B
#data 0xA012D523
#data 0xE602

loc_8c19B23E:
#data 0x65D3
#data 0x2F52358C
#data 0xD31CE602
#data 0x430B6551
#data 0x65F26493
#data 0xD319E602
#data 0x655D6551
#data 0x430B4519
#data 0xD51864A3
#data 0xE602

loc_8c19B262:
#data 0x35DC
#data 0xD3142F52
#data 0x430B6551
#data 0x65F264B3
#data 0x4F267F04
#data 0x655164C3
#data 0xE602D30F
#data 0x655D68F6
#data 0x69F64519
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6432B


loc_8c19B290:
mov.l @(loc_8c19B2CC,pc),r3 ; r3 set to 0x8C347970
sts.l pr,@-r15
mov.l @r3,r1
add 0x24,r1
mov.b @r1,r0
mov.l @(loc_8c19B2D0,pc),r2 ; r2 set to 0x8C19E562
and 0xDF,r0
jsr @r2
mov.b r0,@r1
mov.l @(loc_8c19B2D4,pc),r3 ; r3 set to 0x8C19FE4A
mov 0x01,r4 ; r4 set to 0x01
jmp @r3
lds.l @r15+,pr
#data 0x029B
#data 0x0000029D

#align4
loc_8c19B2B0:
#data bank1c.loc_8c1c6544

loc_8c19B2B4:
#data bank1c.loc_8c1c6500

loc_8c19B2B8:
#data loc_8c19E30C

loc_8c19B2BC:
#data bank1c.loc_8c1c6522

loc_8c19B2C0:
#data bank1c.loc_8c1c6566

loc_8c19B2C4:
#data bank1c.loc_8c1c6588

loc_8c19B2C8:
#data bank1c.loc_8c1c65AA

loc_8c19B2CC:
#data 0x8C347970

#align4
loc_8c19B2D0:
#data loc_8c19E562

loc_8c19B2D4:
#data loc_8c19FE4A


loc_8c19B2D8:
mov.l r14,@-r15
exts.w r4,r14
sts.l pr,@-r15
mov r14,r3
shll2 r14
add r3,r14
add 0xFC,r15
mov.w r5,@r15
shar r14
mov.w @(loc_8c19B42A,pc),r4 ; r4 set to 0x218
mov 0x01,r6 ; r6 set to 0x01
mov.l @(loc_8c19B440,pc),r2 ; r2 set to 0x8C19E30C
jsr @r2
mov r14,r5
mov.w @(loc_8c19B42C,pc),r4 ; r4 set to 0x2DB
mov 0x01,r6 ; r6 set to 0x01
mov.l @(loc_8c19B440,pc),r3 ; r3 set to 0x8C19E30C
extu.w r14,r5
jsr @r3
shlr8 r5
mov.w @r15,r14
mov 0x01,r6 ; r6 set to 0x01
mov.w @(loc_8c19B42E,pc),r4 ; r4 set to 0x219
mov r14,r3 ; r3 ??? bc r14 is ???
shll2 r14
mov.l @(loc_8c19B440,pc),r2 ; r2 set to 0x8C19E30C
add r3,r14
shar r14
jsr @r2
mov r14,r5
add 0x04,r15
mov.l @(loc_8c19B440,pc),r3 ; r3 set to 0x8C19E30C
lds.l @r15+,pr
mov.w @(loc_8c19B430,pc),r4 ; r4 set to 0x2DC
extu.w r14,r5
mov 0x01,r6 ; r6 set to 0x01
shlr8 r5
jmp @r3
mov.l @r15+,r14

loc_8c19B326:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov.w r5,@r15
mov r6,r0
nop
exts.w r4,r1
mov.w r0,@(0x04,r15)
mov r1,r3
shll r1
add r3,r1
mov.l @(loc_8c19B444,pc),r2 ; r2 set to 0x8C129128
shll2 r1
shll r1
mov 0x0A,r14 ; r14 set to 0x0A
jsr @r2
mov r14,r0 ; r0 set to 0x0A
mov.l @(loc_8c19B440,pc),r3 ; r3 set to 0x8C19E30C
mov r0,r5 ; r5 set to 0x0A
mov.w @(loc_8c19B432,pc),r4 ; r4 set to 0x22C
jsr @r3
mov 0x01,r6 ; r6 set to 0x01
mov.w @r15,r1
mov.l @(loc_8c19B444,pc),r2 ; r2 set to 0x8C129128
mov r1,r3 ; r3 ??? bc r1 is ???
shll r1
add r3,r1
shll2 r1
shll r1
jsr @r2
mov r14,r0 ; r0 set to 0x0A
mov.l @(loc_8c19B440,pc),r3 ; r3 set to 0x8C19E30C
mov r0,r5 ; r5 set to 0x0A
mov.w @(loc_8c19B434,pc),r4 ; r4 set to 0x21C
jsr @r3
mov 0x01,r6 ; r6 set to 0x01
mov.w @(0x04,r15),r0
mov.l @(loc_8c19B444,pc),r2 ; r2 set to 0x8C129128
mov r0,r3 ; r3 set to 0x0A
shll r0 ; r0 set to 0x14
add r3,r0 ; r0 set to 0x1E
shll2 r0 ; r0 set to 0x78
shll r0 ; r0 set to 0xF0
mov r0,r1 ; r1 set to 0xF0
jsr @r2
mov r14,r0 ; r0 set to 0x0A
mov.w @(loc_8c19B436,pc),r4 ; r4 set to 0x21A
mov r0,r14 ; r14 set to 0x0A
mov.l @(loc_8c19B440,pc),r3 ; r3 set to 0x8C19E30C
mov 0x01,r6 ; r6 set to 0x01
jsr @r3
mov r0,r5 ; r5 set to 0x0A
add 0x08,r15
mov.l @(loc_8c19B440,pc),r3 ; r3 set to 0x8C19E30C
lds.l @r15+,pr
mov.w @(loc_8c19B438,pc),r4 ; r4 set to 0x21B
extu.w r14,r5 ; r5 set to 0x0A
mov 0x01,r6 ; r6 set to 0x01
shlr8 r5
jmp @r3
mov.l @r15+,r14

loc_8c19B3A0:
mov.l r14,@-r15
mov 0x48,r0 ; r0 set to 0x48
mov.l r13,@-r15
mov.l @(loc_8c19B448,pc),r2 ; r2 set to 0x8C347970
sts.l pr,@-r15
mov.w @(loc_8c19B43A,pc),r1 ; r1 set to 0x81
mov.l @r2,r3
mov.b r1,@(r0,r3)
mov.l @(loc_8c19B44C,pc),r3 ; r3 set to 0x8C19E562
jsr @r3
nop
mov.l @(loc_8c19B454,pc),r2 ; r2 set to 0x8C1B3EEC
mov.l @(loc_8c19B450,pc),r4 ; r4 set to 0x8C347A18
jsr @r2
mov 0x02,r5 ; r5 set to 0x02
mov.l @(loc_8c19B450,pc),r14 ; r14 set to 0x8C347A18
mov.l @(loc_8c19B458,pc),r13 ; r13 set to 0x8C1B3F0C

loc_8c19B3C2:
jsr @r13
mov.l @r14,r4 ; r4 ??
exts.b r0,r0 ; r0 ??
tst r0,r0
bt loc_8c19B3C2
lds.l @r15+,pr
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c19B3D4:
mov.l @(loc_8c19B448,pc),r3 ; r3 set to 0x8C347970
mov.l @r3,r0
add 0x78,r0
mov.b @r0,r0
tst 0x08,r0
movt r0
add 0xFF,r0
rts
neg r0,r0
;-------------------------------------------------------------------------------

loc_8c19B3E6:
#data 0x4F22
#data 0x2F407FFC
#data 0x6032D316
#data 0x60007024
#data 0x8B06C820
#data 0x410BD118
#data 0xD315E401
#data 0x430BD417
#data 0xE50A

loc_8c19B406:
#data 0x61F0
#data 0xD30FD016
#data 0x011C611C
#data 0x6232E040
#data 0x7F040214
#data 0x000B4F26
#data 0xD20A0009
#data 0x910BE040
#data 0x000B6322
#data 0x0314
;-------------------------------------------------------------------------------

loc_8c19B42A:
#data 0x0218

loc_8c19B42C:
#data 0x02DB

loc_8c19B42E:
#data 0x0219

loc_8c19B430:
#data 0x02DC

loc_8c19B432:
#data 0x022C

loc_8c19B434:
#data 0x021C

loc_8c19B436:
#data 0x021A

loc_8c19B438:
#data 0x021B

loc_8c19B43A:
#data 0x0081
#data 0x000000FF

#align4
loc_8c19B440:
#data loc_8c19E30C

loc_8c19B444:
#data bank12.loc_8c129128

loc_8c19B448:
#data 0x8C347970

#align4
loc_8c19B44C:
#data loc_8c19E562

loc_8c19B450:
#data 0x8C347A18

#align4
loc_8c19B454:
#data bank1b.loc_8c1b3EEC

loc_8c19B458:
#data bank1b.loc_8c1b3F0C

loc_8c19B45C:
#data loc_8c19FE4A
#data 0x8C3479D8

#align4
loc_8c19B464:
#data bank1c.loc_8c1c64BE


loc_8c19B468:
sts.l pr,@-r15
mov.w @(loc_8c19B55E,pc),r4 ; r4 set to 0x26B
mov 0x01,r6 ; r6 set to 0x01
mov.l @(loc_8c19B564,pc),r3 ; r3 set to 0x8C19E30C
jsr @r3
mov 0x20,r5 ; r5 set to 0x20
mov.l @(loc_8c19B564,pc),r2 ; r2 set to 0x8C19E30C
mov 0x01,r6 ; r6 set to 0x01
mov.w @(loc_8c19B560,pc),r4 ; r4 set to 0x26C
jsr @r2
mov 0x64,r5 ; r5 set to 0x64
mov.w @(loc_8c19B562,pc),r4 ; r4 set to 0x26D
mov 0x01,r6 ; r6 set to 0x01
mov.l @(loc_8c19B564,pc),r3 ; r3 set to 0x8C19E30C
mov 0x60,r5 ; r5 set to 0x60
jmp @r3
lds.l @r15+,pr

loc_8c19B48A:
#data 0x675D
#data 0x2FC62FE6
#data 0x633C6340
#data 0x89013733
#data 0xE000A026

#align4
loc_8c19B49C:
#data 0xEEFEE500
#data 0xEC00354C
#data 0x60533E4C
#data 0x616D0009
#data 0x8B154115

#align4
loc_8c19B4B0:
#data 0x420062CD
#data 0x6320324C
#data 0x3730633C
#data 0xA0138B01
#data 0x8451

loc_8c19B4C2:
#data 0x6200
#data 0x3723622C
#data 0xA00D8901
#data 0x84E1

loc_8c19B4CE:
#data 0x7C01
#data 0x331363CD
#data 0x70027E02
#data 0x75028FEA

#align4
loc_8c19B4DC:
#data 0x00096013
#data 0x400070FF
#data 0x8401304C

#align4
loc_8c19B4E8:
#data 0x000B6CF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c19B4EE:
#data 0x636D
#data 0x430873FF
#data 0x6231334C
#data 0x622D605D
#data 0x8B013027
#data 0xE000000B
;-------------------------------------------------------------------------------

#align4
loc_8c19B504:
#data 0x356CD518
#data 0x4708675D
#data 0x635D374C
#data 0x43156173
#data 0x8F167104
#data 0x6673

loc_8c19B51A:
#data 0x635D
#data 0x334C4308
#data 0x622D6231
#data 0x8B013020
#data 0x8571000B
;-------------------------------------------------------------------------------

#align4
loc_8c19B52C:
#data 0x622D6261
#data 0x8B013027
#data 0x8511000B
;-------------------------------------------------------------------------------

#align4
loc_8c19B538:
#data 0x635D75FF
#data 0x71FC4315
#data 0x8DEA76FC
#data 0x77FC

loc_8c19B546:
#data 0x8541
#data 0x0009000B
;-------------------------------------------------------------------------------

#align4
loc_8c19B54C:
#data 0x2FE6675D
#data 0x63412FC6
#data 0x3733633D
#data 0xA02D8908
#data 0xE000

loc_8c19B55E:
#data 0x026B

loc_8c19B560:
#data 0x026C

loc_8c19B562:
#data 0x026D

#align4
loc_8c19B564:
#data loc_8c19E30C
#data 0x0000FFFF

#align4
loc_8c19B56C:
#data 0xEEFCE500
#data 0xEC00354C
#data 0x60533E4C
#data 0x616D0009
#data 0x8B154115

#align4
loc_8c19B580:
#data 0x420862CD
#data 0x6321324C
#data 0x3730633D
#data 0xA0138B01
#data 0x8551

loc_8c19B592:
#data 0x6201
#data 0x3723622D
#data 0xA00D8901
#data 0x85E1

loc_8c19B59E:
#data 0x7C01
#data 0x331363CD
#data 0x70047E04
#data 0x75048FEA

#align4
loc_8c19B5AC:
#data 0x00096013
#data 0x400870FF
#data 0x8501304C

#align4
loc_8c19B5B8:
#data 0x000B6CF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c19B5BE:
#data 0x2FE6
#data 0x2FD6E000
#data 0x2FB62FC6
#data 0x2FA66B43
#data 0x2F862F96
#data 0x4F226873
#data 0x2778675C
#data 0x5EFD7FF0
#data 0x2F0080F4
#data 0xE4018D03
#data 0x3727626C
#data 0x8B00

loc_8c19B5EA:
#data 0x6543

#align4
loc_8c19B5EC:
#data 0x2778678C
#data 0xE0308904
#data 0x633C03FC
#data 0x8B003737

loc_8c19B5FC:
#data 0x6843

loc_8c19B5FE:
#data 0xD312
#data 0x842C6232
#data 0x802CC97F
#data 0xE702D210
#data 0x22B8EA08
#data 0x6D6C8D52
#data 0x3B00D00E
#data 0xE1068B06
#data 0x8B013D13
#data 0x2E70A032

#align4
loc_8c19B624:
#data 0x2E40A030

#align4
loc_8c19B628:
#data 0x3B10D10A
#data 0xE4078F14
#data 0x8B013DA3
#data 0xE314A21C

#align4
loc_8c19B638:
#data 0x8B023D43
#data 0xE212

loc_8c19B63E:
#data 0xA229
#data 0x2E20

loc_8c19B642:
#data 0xE311
#data 0x2E30A226
#data 0x8C347970
#data 0x00FF0000
#data 0x00040000
#data 0x00080000

#align4
loc_8c19B658:
#data 0x3B30D326
#data 0xE00C8B1B
#data 0x8B023D03
#data 0xA004913F
#data 0x0009

loc_8c19B66A:
#data 0xE20B
#data 0x8B023D23
#data 0x913A

loc_8c19B672:
#data 0xA009
#data 0x2E10

loc_8c19B676:
#data 0x3DA3
#data 0x93368B02
#data 0x2E30A004

#align4
loc_8c19B680:
#data 0x8B013D43
#data 0x2E109132

#align4
loc_8c19B688:
#data 0x6232D31B
#data 0xCB80842C
#data 0xA1FF802C
#data 0x0009

loc_8c19B696:
#data 0xD019
#data 0x8B063B00
#data 0x89013D73
#data 0x0009A1F8

#align4
loc_8c19B6A4:
#data 0xA1F59223
#data 0x2E20

loc_8c19B6AA:
#data 0xD115
#data 0x8B013B10
#data 0x0009A1F0

#align4
loc_8c19B6B4:
#data 0x0009A1EE

#align4
loc_8c19B6B8:
#data 0x20B9E0FD
#data 0x8B098804
#data 0x000960D3
#data 0x8B028804
#data 0xAFB89212
#data 0x0009

loc_8c19B6CE:
#data 0x9010
#data 0x2E00A1E0

#align4
loc_8c19B6D4:
#data 0x234863B3
#data 0xE1048916
#data 0x8B113D13
#data 0xA011E262
#data 0x00B12E20
#data 0x00B400B2
#data 0x00A800B8
#data 0x00A100A4
#data 0x00100000
#data 0x8C347970
#data 0x00020000
#data 0x00400000

#align4
loc_8c19B704:
#data 0x2E00E060

#align4
loc_8c19B708:
#data 0x890727B8
#data 0x3D23E202
#data 0x615C8B04
#data 0x89013127
#data 0x2E209222

#align4
loc_8c19B71C:
#data 0x23A863B3
#data 0xE103890E
#data 0x8B0B3D13
#data 0x625CE304
#data 0x89073237
#data 0x3D17E103
#data 0xE2528B02
#data 0x2E20A002

#align4
loc_8c19B73C:
#data 0x2E00E051

#align4
loc_8c19B740:
#data 0x23B8E310
#data 0xE1048910
#data 0x8B0D3D13
#data 0x625CE305
#data 0x89093237
#data 0x3D17E104
#data 0x92028B04
#data 0x2E20A004
#data 0x008400A0

#align4
loc_8c19B764:
#data 0x2E009058

#align4
loc_8c19B768:
#data 0x23B8E320
#data 0x695C8D1F
#data 0x3D13E106
#data 0xE3088B1B
#data 0x3237625C
#data 0xE3068917
#data 0x39379C4B
#data 0x8D036043
#data 0xE17180F4
#data 0x2E109C46

#align4
loc_8c19B790:
#data 0x8B0C3DA3
#data 0xE3759243
#data 0x2E303DA3
#data 0x8B062C2B
#data 0x23B8D320
#data 0x913B8903
#data 0x2E30E374
#data 0x2C19

loc_8c19B7AE:
#data 0x605C
#data 0x81F6E340
#data 0x606C23B8
#data 0x81F48D3F
#data 0x3D13E106
#data 0xE20C8B3B
#data 0x89383927
#data 0x00096043
#data 0xE60580F4
#data 0x85F62F40
#data 0xBE8AD414
#data 0x6C036503
#data 0xD41385F4
#data 0xBEB3E605
#data 0x2C096503
#data 0x22A862CD
#data 0xA0118901
#data 0xE176

loc_8c19B7F2:
#data 0x60CD
#data 0x8902C820
#data 0xA01EE272
#data 0x2E20

loc_8c19B7FE:
#data 0x930E
#data 0x213861CD
#data 0xE0748902
#data 0x2E00A017

#align4
loc_8c19B80C:
#data 0xC84060CD
#data 0xE178890E

#align4
loc_8c19B814:
#data 0x2E10A011
#data 0x01110082
#data 0x02000511
#data 0x00000080
#data 0x00800000

#align4
loc_8c19B828:
#data bank1c.loc_8c1c65E0

loc_8c19B82C:
#data bank1c.loc_8c1c65CC

loc_8c19B830:
#data 0x20289221
#data 0xE1718901
#data 0x2E10

loc_8c19B83A:
#data 0x84F4
#data 0x89392008
#data 0x233863F0
#data 0xD30E891E
#data 0x9415E601
#data 0x65C3430B
#data 0xE6019413
#data 0x65CDD30A
#data 0x4519430B
#data 0xE601D208
#data 0x420B940C
#data 0x940A65C3
#data 0xD305E601
#data 0x430B65CD
#data 0xA0094519
#data 0x04000009
#data 0x02C502C4
#data 0x02C702C6

#align4
loc_8c19B880:
#data loc_8c19E30C

loc_8c19B884:
#data 0x2C39D341

#align4
loc_8c19B888:
#data 0xE601D241
#data 0x420B9470
#data 0x946E65C3
#data 0xD33EE601
#data 0x430B65CD
#data 0xD23C4519
#data 0x9467E601
#data 0x65C3420B
#data 0xE6019465
#data 0x65CDD338
#data 0x4519430B

#align4
loc_8c19B8B4:
#data 0x9360E030
#data 0x9C5D00FC
#data 0x600C23B8
#data 0x81F28F02
#data 0x0009A079

#align4
loc_8c19B8C8:
#data 0x3D13E105
#data 0xE2208B75
#data 0x89723927
#data 0x01FCE030
#data 0x611CE305
#data 0x8B6C3133
#data 0x3027608C
#data 0xD42B8969
#data 0x85F2E60F
#data 0x6503BDCD
#data 0xE6012F00
#data 0x2300D328
#data 0x944060F0
#data 0x600CD324
#data 0x430B953C
#data 0x60F0250B
#data 0xCBC0E60F
#data 0xD4212E00
#data 0xBDBA85F4
#data 0xD2216503
#data 0xE60F6403
#data 0xD4202240
#data 0x658CBDE5
#data 0xE6012F01
#data 0xD319942A
#data 0x6503430B
#data 0xE60165F1
#data 0xD3169425
#data 0x430B655D
#data 0xD2144519
#data 0x951F9421
#data 0xE601420B
#data 0xE500D311
#data 0x430BE601
#data 0xD21464C3
#data 0x0009420B
#data 0x2008600E
#data 0xD3128B26
#data 0x70246032
#data 0xC8806000
#data 0x930D8B20
#data 0x2E30A025
#data 0x02C102C0
#data 0x02C302C2
#data 0x008006A3
#data 0x030900C0
#data 0x03830382
#data 0x030400C8
#data 0x000000AA
#data 0x0000F77F

#align4
loc_8c19B990:
#data loc_8c19E30C

loc_8c19B994:
#data bank1c.loc_8c1c666C
#data 0x8C347983
#data 0x8C347981

#align4
loc_8c19B9A0:
#data bank1c.loc_8c1c6630

loc_8c19B9A4:
#data loc_8c19CD7A
#data 0x8C347970

#align4
loc_8c19B9AC:
#data 0xE601D343
#data 0xD243947A
#data 0x420B6530
#data 0x655C

loc_8c19B9BA:
#data 0x9376
#data 0x89692B38
#data 0x3D13E105
#data 0xE0208B66
#data 0x89633907
#data 0x02FCE030
#data 0x622CE318
#data 0x8B5D3233
#data 0x688CE038
#data 0x89593807
#data 0xE501D238
#data 0x64C3420B
#data 0x2F00C940
#data 0xD334E505
#data 0xE601600C
#data 0x430B250B
#data 0xD23164C3
#data 0x95559457
#data 0xE601420B
#data 0xE616D430
#data 0xBD3E85F2
#data 0x94506503
#data 0x954D6D03
#data 0xD32AE601
#data 0x430B60DC
#data 0x9247250B
#data 0x22DBE60F
#data 0xD3292E20
#data 0x85F623D0
#data 0xBD5ED428
#data 0x6D036503
#data 0xD42785F4
#data 0xBD87E60F
#data 0x94396503
#data 0xD21F2D09
#data 0x420BE601
#data 0x943465D3
#data 0xD31CE601
#data 0x430B65DD
#data 0xD2204519
#data 0x0009420B
#data 0x2008600E
#data 0xD31E8B08
#data 0x70246032
#data 0xC8806000
#data 0x93238B02

#align4
loc_8c19BA70:
#data 0x2E30A010

#align4
loc_8c19BA74:
#data 0xD3157F10
#data 0x65304F26
#data 0x9413E601
#data 0x655C68F6
#data 0x69F6D20E
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6422B

#align4
loc_8c19BA94:
#data 0x4F267F10
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x02000604
#data 0x030400D8
#data 0x06A200E0
#data 0x03830382
#data 0x000000AA
#data 0x8C347983

#align4
loc_8c19BAC0:
#data loc_8c19E30C

loc_8c19BAC4:
#data loc_8c19E1F8

loc_8c19BAC8:
#data bank1c.loc_8c1c66A6
#data 0x8C347985

#align4
loc_8c19BAD0:
#data bank1c.loc_8c1c6630

loc_8c19BAD4:
#data bank1c.loc_8c1c65F4

loc_8c19BAD8:
#data loc_8c19CD7A
#data 0x8C347970

#align4
loc_8c19BAE0:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x7FF44F22
#data 0x00096053
#data 0x80F46C63
#data 0x00096073
#data 0xE02080F8
#data 0x0BFC62CC
#data 0x2228E300
#data 0x8F012F30
#data 0xEC206E43

#align4
loc_8c19BB0C:
#data 0x222862BC
#data 0xEB388B00

#align4
loc_8c19BB14:
#data 0x22E89265
#data 0xD1358909
#data 0xC8016012
#data 0x925F8B05
#data 0x915F935F
#data 0x2E392E29
#data 0x2E1B

loc_8c19BB2E:
#data 0x63F3
#data 0xE0102F36
#data 0x07FC2FB6
#data 0x84FC66C3
#data 0xBD3E6503
#data 0x7F0864E3
#data 0x222862F0
#data 0x934E8B01
#data 0x2F30

loc_8c19BB4E:
#data 0xD32A
#data 0x430BDD28
#data 0x600E0009
#data 0x89062008
#data 0x6032D325
#data 0x60007054
#data 0x8801C901
#data 0x8903

loc_8c19BB6A:
#data 0x62F0
#data 0x63D2E048
#data 0x0324

loc_8c19BB72:
#data 0x63F0
#data 0x633C923A
#data 0x8B033320
#data 0x6010D11F
#data 0x2100CB80

#align4
loc_8c19BB84:
#data 0x0009B60C
#data 0x2008600E
#data 0xDD1C8B4B
#data 0x2D30E300
#data 0x420BD21B
#data 0x30E064E3
#data 0x62F08916
#data 0x622C9324
#data 0x890E3230
#data 0xE048D212
#data 0x001C6122
#data 0x600CE371
#data 0x8B093033
#data 0xE1486022
#data 0xE076011C
#data 0x3107611C
#data 0x8902

loc_8c19BBC6:
#data 0x60D0
#data 0x2D00CB01

#align4
loc_8c19BBCC:
#data 0x6CCC84F4
#data 0x30C0600C
#data 0x84F88B19
#data 0x600C6BBC
#data 0xA01330B0
#data 0x03000009
#data 0xFEFFFDFF
#data 0x00A00080
#data 0x000000AA
#data 0x8C347994
#data 0x8C347970

#align4
loc_8c19BBF8:
#data loc_8c19CD7A
#data 0x8C347979
#data 0x8C3479E8

#align4
loc_8c19BC04:
#data bank1b.loc_8c1b4F16

loc_8c19BC08:
#data 0x8902

loc_8c19BC0A:
#data 0x60D0
#data 0x2D00CB02

#align4
loc_8c19BC10:
#data 0x420BD244
#data 0x600E0009
#data 0x8B0F2008
#data 0x420BD242
#data 0xA00B0009
#data 0x0009

loc_8c19BC26:
#data 0x63D2
#data 0x60307324
#data 0x2300C9FE
#data 0x632362D2
#data 0x60307320
#data 0x2300C9FE

#align4
loc_8c19BC3C:
#data 0x4F267F0C
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c19BC4A:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l @(loc_8c19BD2C,pc),r13 ; r13 set to 0x8C347974
sts.l pr,@-r15
mov.b @(0x03,r13),r0
mov.l @(loc_8c19BD30,pc),r14 ; r14 set to 0x8C347970
and 0xFD,r0
mov.b r0,@(0x03,r13)
add 0xFC,r15
mov.b @(0x03,r13),r0
and 0xFE,r0
bsr loc_8c19C7A0
mov.b r0,@(0x03,r13)
exts.b r0,r0
tst r0,r0
bt loc_8c19BC72
bra loc_8c19BDE4
nop

loc_8c19BC72:
mov 0x00,r3 ; r3 set to 0x00
mov.l @(loc_8c19BD34,pc),r2 ; r2 set to 0x8C347A14
mov r3,r1 ; r1 set to 0x00
mov.l r3,@r2 ; r2 ??
mov 0x01,r3 ; r3 set to 0x01
mov.l @(loc_8c19BD38,pc),r0 ; r0 set to 0x8C34797E
mov.b r1,@r0 ; r0 ??
mov.l @(loc_8c19BD3C,pc),r1 ; r1 set to 0x8C3479A0
mov.b r3,@r1 ; r1 ??
mov.b @r13,r0
and 0xBF,r0
mov.b r0,@r13
mov.b @r13,r0
and 0xDF,r0
mov.b r0,@r13
mov.b @r13,r0
and 0xEF,r0
mov.b r0,@r13
mov.b @r13,r0
and 0xF7,r0
mov.b r0,@r13
mov.b @(0x01,r13),r0
and 0xF7,r0
mov.b r0,@(0x01,r13)
mov.b @(0x01,r13),r0
mov.l @(loc_8c19BD40,pc),r3 ; r3 set to 0x8C1B0E88
and 0xFB,r0
jsr @r3
mov.b r0,@(0x01,r13)
mov.l @r14,r2
mov r2,r3 ; r3 ??? bc r2 is ???
add 0x14,r3
mov.b @r3,r0
and 0xEF,r0
mov.b r0,@r3
mov.l @(loc_8c19BD44,pc),r4 ; r4 set to 0x8C3479E8
mov.b @r4,r0
extu.b r0,r0
tst 0x01,r0
bt loc_8c19BCD6
mov.l @r14,r3
add 0x54,r3
mov.b @r3,r0
or 0x08,r0
mov.b r0,@r3
mov.l @r14,r3
add 0x24,r3
mov.b @r3,r0
bra loc_8c19BCEA
and 0xFB,r0

loc_8c19BCD6:
mov.l @r14,r3
add 0x54,r3
mov.b @r3,r0
and 0xF7,r0
mov.b r0,@r3
mov.l @r14,r2
mov r2,r3
add 0x24,r3
mov.b @r3,r0
or 0x04,r0

loc_8c19BCEA:
mov.b r0,@r3
mov.b @r4,r0
extu.b r0,r0
tst 0x02,r0
bt loc_8c19BD50
mov.l @r14,r2
mov.b @(0x0C,r2),r0
or 0x08,r0
mov.b r0,@(0x0C,r2)
mov.l @r14,r3
add 0x54,r3
mov.b @r3,r0
or 0x01,r0
mov.b r0,@r3
mov.l @(loc_8c19BD48,pc),r2 ; r2 set to 0x8C19E1F8, r2 set to 0x8C19E1F8
mov.w @(loc_8c19BD22,pc),r4 ; r4 set to 0x3A5, r4 set to 0x3A5
jsr @r2
mov 0x01,r5 ; r5 set to 0x01, r5 set to 0x01
mov.b r0,@r15
mov 0x10,r5 ; r5 set to 0x10, r5 set to 0x10
mov.w @(loc_8c19BD22,pc),r4 ; r4 set to 0x3A5, r4 set to 0x3A5
mov 0x01,r6 ; r6 set to 0x01, r6 set to 0x01
mov.l @(loc_8c19BD4C,pc),r3 ; r3 set to 0x8C19E30C, r3 set to 0x8C19E30C
extu.b r0,r0
jsr @r3
or r0,r5 ; r5 ??? bc r0 is ???, r5 ??? bc r0 is ???
bra loc_8c19BD64
nop

loc_8c19BD22:
#data 0x03A5

#align4
loc_8c19BD24:
#data loc_8c19CD7A

loc_8c19BD28:
#data loc_8c19E562

loc_8c19BD2C:
#data 0x8C347974

#align4
loc_8c19BD30:
#data 0x8C347970

#align4
loc_8c19BD34:
#data 0x8C347A14

#align4
loc_8c19BD38:
#data 0x8C34797E

#align4
loc_8c19BD3C:
#data 0x8C3479A0

#align4
loc_8c19BD40:
#data bank1b.loc_8c1b0E88

loc_8c19BD44:
#data 0x8C3479E8

#align4
loc_8c19BD48:
#data loc_8c19E1F8

loc_8c19BD4C:
#data loc_8c19E30C

loc_8c19BD50:
#data 0x842C62E2
#data 0x802CC9F7
#data 0x632362E2
#data 0x60307354
#data 0x2300C9FE

#align4
loc_8c19BD64:
#data 0x732463E2
#data 0xCB016030
#data 0x63E22300
#data 0x60307320
#data 0x2300CB01
#data 0xE14860E2
#data 0x001C9346
#data 0xC9F0600C
#data 0x8B093030
#data 0x702460E2
#data 0xC8106000
#data 0xD3218B04
#data 0x943AE602
#data 0xE500430B

#align4
loc_8c19BD9C:
#data 0x705460E2
#data 0x91356000
#data 0xD31DC901
#data 0x430B62D3
#data 0xD21C7201
#data 0x420B942F
#data 0x2F00E501
#data 0x942AE508
#data 0xD316E601
#data 0x430B600C
#data 0x60E2250B
#data 0x60007024
#data 0x8963C810
#data 0xD3157F04
#data 0xD4134F26
#data 0x6BF6951C
#data 0x6DF66CF6
#data 0x6EF6432B


loc_8c19BDE4:
mov.l @r14,r3
add 0x14,r3
mov.b @r3,r0
and 0xF7,r0
mov.b r0,@r3
mov.l @r14,r3
add 0x24,r3
mov.b @r3,r0
or 0x04,r0
mov.b r0,@r3
mov.l @r14,r2
mov r2,r0
nop
add 0x24,r0
mov.b @r0,r0
tst 0x10,r0
bt/s loc_8c19BE2C
add 0x14,r2
bra loc_8c19BE2E
mov 0x00,r0
#data 0x0A0400A0
#data 0x010D0301
#data 0x000000C8

#align4
loc_8c19BE18:
#data loc_8c19E30C

loc_8c19BE1C:
#data bank13.loc_8c130ECC

loc_8c19BE20:
#data loc_8c19E1F8
#data 0x8C347A08

#align4
loc_8c19BE28:
#data bank1b.loc_8c1b3EEC

loc_8c19BE2C:
#data 0xE001

loc_8c19BE2E:
#data 0xD31E
#data 0x430B9139
#data 0xD21D0009
#data 0x0009420B
#data 0x732063E2
#data 0xCB406030
#data 0x60E22300
#data 0x60007024
#data 0x8B0EC810
#data 0xE14860E2
#data 0x600C001C
#data 0x89058802
#data 0xE24860E2
#data 0x600C002C
#data 0x8B028801

#align4
loc_8c19BE68:
#data 0xCB0284D3
#data 0x80D3

loc_8c19BE6E:
#data 0x60E2
#data 0x60007024
#data 0x890FC810
#data 0x732063E2
#data 0xCB016030
#data 0xD20C2300
#data 0x420BD40A
#data 0xDC09E501
#data 0xDB0A

loc_8c19BE8E:
#data 0x4B0B
#data 0x600E64C2
#data 0x89FA2008

#align4
loc_8c19BE98:
#data 0x4F267F04
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x03016EF6

#align4
loc_8c19BEA8:
#data bank13.loc_8c130ECC

loc_8c19BEAC:
#data loc_8c19E562
#data 0x8C347A18

#align4
loc_8c19BEB4:
#data bank1b.loc_8c1b3EEC

loc_8c19BEB8:
#data bank1b.loc_8c1b3F0C

loc_8c19BEBC:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0xDE394F22
#data 0xDB37D339
#data 0xDA357FFC
#data 0x0009430B
#data 0x000960B3
#data 0xC8028401
#data 0xD3338B36
#data 0x70546032
#data 0xC8086000
#data 0x60328B30
#data 0x021CE148
#data 0x622C9050
#data 0x89293200
#data 0xE04863E2
#data 0x934A023C
#data 0x3230622C
#data 0x61E28919
#data 0x9145021C
#data 0x3210622C
#data 0x60E28913
#data 0x002CE248
#data 0x8860600C
#data 0x60E2890D
#data 0x923AE348
#data 0x633C033C
#data 0x89063320
#data 0xE34860E2
#data 0x033C9234
#data 0x3320633C
#data 0x8B05

loc_8c19BF3E:
#data 0x62E2
#data 0x73146323
#data 0xC9F76030
#data 0x2300

loc_8c19BF4A:
#data 0x84B1
#data 0x80B1CB02

#align4
loc_8c19BF50:
#data 0xE04862E2
#data 0x9224032C
#data 0x3320633C
#data 0x60E28919
#data 0x001CE148
#data 0x8870600C
#data 0x60E28913
#data 0x9219E348
#data 0x633C033C
#data 0x890C3320
#data 0xE34860E2
#data 0x033C9213
#data 0x3320633C
#data 0x60E28905
#data 0x003CE348
#data 0x8840600C
#data 0x8B12

loc_8c19BF92:
#data 0xE307
#data 0x2A30A170
#data 0x00A100AA
#data 0x00A000A4
#data 0x009000A8
#data 0x00C000AF
#data 0x8C34797E
#data 0x8C347974
#data 0x8C347970

#align4
loc_8c19BFB4:
#data bank1b.loc_8c1b2888

loc_8c19BFB8:
#data 0x9C71DD3E
#data 0x0009B6DD
#data 0x2008600E
#data 0xA08B8B01
#data 0x0009

loc_8c19BFCA:
#data 0xD33B
#data 0x703C6032
#data 0xC8206000
#data 0xA0838B01
#data 0x0009

loc_8c19BFDA:
#data 0x6032
#data 0x60007038
#data 0x8901C880
#data 0x0009A07C

#align4
loc_8c19BFE8:
#data 0xE320E200
#data 0xD1332A30
#data 0x62E22120
#data 0x000960B3
#data 0x91528401
#data 0xD330C810
#data 0x70FF0029
#data 0x430B600B
#data 0x62E27254
#data 0x032CE048
#data 0x23C9633C
#data 0x890F33C0
#data 0xE14860E2
#data 0x001C9342
#data 0xC9F0600C
#data 0x89073030
#data 0xE24860E2
#data 0x002C933B
#data 0xC9F0600C
#data 0x8B133030

#align4
loc_8c19C038:
#data 0x9435D322
#data 0xE501430B
#data 0xE6012F00
#data 0xD3209431
#data 0x650C430B
#data 0x942DD21D
#data 0xE501420B
#data 0xE6012F00
#data 0xD31B9429
#data 0x650C430B

#align4
loc_8c19C060:
#data 0xE04862E2
#data 0x633C032C
#data 0x33C023C9
#data 0xD0178B0B
#data 0xC8206000
#data 0xD2178B07
#data 0x9519D415
#data 0x0009420B
#data 0xCB2084D3
#data 0x80D3

loc_8c19C086:
#data 0xB27F
#data 0xB9EDE401
#data 0xD3120009
#data 0x0009430B
#data 0x0009B3A1
#data 0x2302D310
#data 0xE003A163
#data 0x070100E0
#data 0x00C00090
#data 0x04590600
#data 0x045B0601
#data 0x0000012C
#data 0x8C347979
#data 0x8C347970
#data 0x8C3479A0

#align4
loc_8c19C0C0:
#data bank13.loc_8c130ECC

loc_8c19C0C4:
#data loc_8c19E1F8

loc_8c19C0C8:
#data loc_8c19E30C
#data 0x8C34797A
#data 0x8C347A10

#align4
loc_8c19C0D4:
#data bank1b.loc_8c1b3EEC

loc_8c19C0D8:
#data bank1b.loc_8c1b2856
#data 0x8C347A14

#align4
loc_8c19C0E0:
#data 0x60D39981
#data 0x60000009
#data 0x8932C880
#data 0xE148D33F
#data 0x6032927A
#data 0x600C001C
#data 0x3020C9F0
#data 0x60D08929
#data 0x2D00C97F
#data 0xCB0184D1
#data 0xE04880D1
#data 0x032C62E2
#data 0x23C9633C
#data 0x8B0F33C0
#data 0x734C63E2
#data 0xC90F6030
#data 0x2300CBC0
#data 0xCB8084D1
#data 0x84D180D1
#data 0x80D1CB02
#data 0xCB2060D0
#data 0x2D00A00D

#align4
loc_8c19C138:
#data 0x023C63E2
#data 0x622C9355
#data 0x32302299
#data 0x84D18B05
#data 0x80D1CB02
#data 0xCB0860D0
#data 0x2D00

loc_8c19C152:
#data 0x60D3
#data 0x84010009
#data 0x8915C802
#data 0x410BD124
#data 0x64030009
#data 0x8B012448
#data 0x0009A0FA

#align4
loc_8c19C16C:
#data 0x00096043
#data 0x8B038801
#data 0xC9FD84D1
#data 0x80D1A0F2

#align4
loc_8c19C17C:
#data 0x8B038802
#data 0xC9FD84D1
#data 0x80D1A078

#align4
loc_8c19C188:
#data 0x000960D3
#data 0xC8028401
#data 0x60D38B09
#data 0x84010009
#data 0x600CC901
#data 0x89022008
#data 0xC9FE84D1
#data 0x80D1

loc_8c19C1A6:
#data 0x63E2
#data 0x023CE048
#data 0x622C931C
#data 0x32302299
#data 0xD10F8B04
#data 0x0009410B
#data 0x0009A05E

#align4
loc_8c19C1C0:
#data 0x021C61E2
#data 0x22C9622C
#data 0x8B1932C0
#data 0x6000D00A
#data 0x8B15C820
#data 0x6000D008
#data 0x8B11C802
#data 0x430BD307
#data 0xA04B0009
#data 0x00F00009
#data 0x00C000A0
#data 0x8C347970

#align4
loc_8c19C1F0:
#data bank1b.loc_8c1b3038

loc_8c19C1F4:
#data bank1b.loc_8c1b0F9C
#data 0x8C34797A

#align4
loc_8c19C1FC:
#data bank1b.loc_8c1b1118

loc_8c19C200:
#data 0xE04863E2
#data 0x9352023C
#data 0x2299622C
#data 0x8B0C3230
#data 0x6000D028
#data 0x8B08C840
#data 0x6000D026
#data 0x8B04C802
#data 0x430BD325
#data 0xA0290009
#data 0x0009

loc_8c19C22A:
#data 0x63E2
#data 0x023CE048
#data 0x622C933E
#data 0x32302299
#data 0xD01E8B03
#data 0xC8026000
#data 0x8907

loc_8c19C242:
#data 0xD01C
#data 0xC8406000
#data 0xD01A8B03
#data 0xC8206000
#data 0x8904

loc_8c19C252:
#data 0xD21A
#data 0x0009420B
#data 0x0009A010

#align4
loc_8c19C25C:
#data 0xE14860E2
#data 0x600C001C
#data 0x88702099
#data 0xD2158B08
#data 0x0009420B
#data 0x600C60A0
#data 0x8B018807

#align4
loc_8c19C278:
#data 0xE005A075

#align4
loc_8c19C27C:
#data 0x702460E2
#data 0xC8106000
#data 0xD00F8969
#data 0xC8046000
#data 0xD30F8B65
#data 0xD20DED00
#data 0x6422430B
#data 0x2008600E
#data 0x60E28B18
#data 0x001CE148
#data 0x884C600C
#data 0xA03A8936
#data 0x00900009
#data 0x000000C0
#data 0x8C34797A

#align4
loc_8c19C2B8:
#data bank1b.loc_8c1b17CC

loc_8c19C2BC:
#data bank1b.loc_8c1b1DB8

loc_8c19C2C0:
#data bank1b.loc_8c1b248E
#data 0x8C347975
#data 0x8C347A08

#align4
loc_8c19C2CC:
#data bank1b.loc_8c1b3F0C

loc_8c19C2D0:
#data 0x602362E2
#data 0x70540009
#data 0xC8086000
#data 0x70FF0029
#data 0x8801600B
#data 0x62E28B1A
#data 0x00096023
#data 0x60007024
#data 0x0029C804
#data 0x600B70FF
#data 0x8B0F8801
#data 0xE04862E2
#data 0x9263032C
#data 0x3320633C
#data 0xD1338B08
#data 0x410B945F
#data 0x600DE501
#data 0x8B01C808

#align4
loc_8c19C318:
#data 0xED01A003

#align4
loc_8c19C31C:
#data 0xCB0484B1
#data 0x80B1

loc_8c19C322:
#data 0x60DE
#data 0x8B188801
#data 0x735463E2
#data 0xCB086030
#data 0x63E22300
#data 0x60307324
#data 0x2300C9FB
#data 0xE04862E2
#data 0x0234E376
#data 0x420BD225
#data 0xD3250009
#data 0x943FE601
#data 0x6563430B
#data 0xCB0484B1
#data 0x80B1

loc_8c19C35A:
#data 0x62A0
#data 0x89012228

#align4
loc_8c19C360:
#data 0xE002A001

loc_8c19C364:
#data 0xE001

loc_8c19C366:
#data 0x7F04
#data 0x69F64F26
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

loc_8c19C378:
mov.l r14,@-r15
mov r6,r14
mov.l r13,@-r15
mov r5,r13
mov.l r12,@-r15
mov 0x48,r0 ; r0 set to 0x48
mov.l r11,@-r15
mov.l r10,@-r15
mov.l @(loc_8c19C3E8,pc),r3 ; r3 set to 0x8C347970
mov.w @(loc_8c19C3D4,pc),r10 ; r10 set to 0x2E4
sts.l pr,@-r15
mov.l @r3,r5
mov r10,r11 ; r11 set to 0x2E4
mov.l @(loc_8c19C3E4,pc),r12 ; r12 set to 0x8C1C9960
mov.w @(loc_8c19C3D2,pc),r6 ; r6 set to 0xE0
mov.b @(r0,r5),r2
extu.b r2,r2
and r6,r2
cmp/eq r6,r2
bf/s loc_8c19C3F4
add 0x01,r11 ; r11 set to 0x2E5
mov.l @(loc_8c19C3EC,pc),r0 ; r0 set to 0x8C34797A
mov.b @r0,r0 ; r0 ??
tst 0x20,r0
bf loc_8c19C3F4
mov.w @(loc_8c19C3D6,pc),r3 ; r3 set to 0x200
mov 0x01,r5 ; r5 set to 0x01
mov.l r3,@r4
mov.l @(loc_8c19C3D8,pc),r2 ; r2 set to 0x8C19E1F8
jsr @r2
mov r11,r4 ; r4 set to 0x2E5
extu.w r0,r0
mov.b @(r0,r12),r3 ; r3 ??
mov 0x01,r5 ; r5 set to 0x01
mov.b r3,@r13
mov.l @(loc_8c19C3D8,pc),r2 ; r2 set to 0x8C19E1F8
jsr @r2
mov r10,r4 ; r4 set to 0x2E4
mov.l @(loc_8c19C3F0,pc),r1 ; r1 set to 0x8C1C997E
extu.w r0,r0
bra loc_8c19C46C
mov.b @(r0,r1),r3
#data 0x030200AA
#data 0x02EC

loc_8c19C3D2:
#data 0x00E0

loc_8c19C3D4:
#data 0x02E4

loc_8c19C3D6:
#data 0x0200

#align4
loc_8c19C3D8:
#data loc_8c19E1F8

loc_8c19C3DC:
#data loc_8c19E562

loc_8c19C3E0:
#data loc_8c19E30C

loc_8c19C3E4:
#data bank1c.loc_8c1c9960

loc_8c19C3E8:
#data 0x8C347970

#align4
loc_8c19C3EC:
#data 0x8C34797A

#align4
loc_8c19C3F0:
#data bank1c.loc_8c1c997E


loc_8c19C3F4:
mov.w @(loc_8c19C470,pc),r6 ; r6 set to 0xF0
mov 0x48,r0 ; r0 set to 0x48
mov.b @(r0,r5),r3
mov.w @(loc_8c19C472,pc),r2 ; r2 set to 0x90
extu.b r3,r3
and r6,r3
cmp/eq r2,r3
bf loc_8c19C430
mov.l @(loc_8c19C47C,pc),r0 ; r0 set to 0x8C34797A
mov.b @r0,r0 ; r0 ??
tst 0x40,r0
bf loc_8c19C430
mov.w @(loc_8c19C474,pc),r2 ; r2 set to 0x100
mov 0x01,r5 ; r5 set to 0x01
mov.l r2,@r4
mov.l @(loc_8c19C480,pc),r3 ; r3 set to 0x8C19E1F8
jsr @r3
mov r11,r4
extu.w r0,r0
mov.b @(r0,r12),r2 ; r2 ??? bc r12 is ???
mov 0x01,r5 ; r5 set to 0x01
mov.b r2,@r13
mov.l @(loc_8c19C480,pc),r3 ; r3 set to 0x8C19E1F8
jsr @r3
mov r10,r4
mov.l @(loc_8c19C484,pc),r1 ; r1 set to 0x8C1C996F
extu.w r0,r0
mov.b @(r0,r1),r2
bra loc_8c19C57A
mov.b r2,@r14

#align4
loc_8c19C430:
#data 0x005CE048
#data 0x600C931F
#data 0x30302069
#data 0xD00F8907
#data 0xC8406000
#data 0xD00D8B03
#data 0xC8206000
#data 0x891C

loc_8c19C44E:
#data 0x9313
#data 0x2432E501
#data 0x420BD20A
#data 0x600D64B3
#data 0xE50103CC
#data 0xD2072D30
#data 0x64A3420B
#data 0x03CC600D


loc_8c19C46C:
bra loc_8c19C57A
mov.b r3,@r14

loc_8c19C470:
#data 0x00F0

loc_8c19C472:
#data 0x0090

loc_8c19C474:
#data 0x0100
#data 0x00C0
#data 0x00000080

#align4
loc_8c19C47C:
#data 0x8C34797A

#align4
loc_8c19C480:
#data loc_8c19E1F8

loc_8c19C484:
#data bank1c.loc_8c1c996F

loc_8c19C488:
#data 0xE701E048
#data 0x005CEC40
#data 0x8852600C
#data 0xE6048D4C
#data 0x89648860
#data 0x895E8862
#data 0x89328871
#data 0x891B8872
#data 0x891C8874
#data 0x89258875
#data 0x89128876
#data 0x89258878
#data 0x3010913D
#data 0x913B8935
#data 0x892E3010
#data 0x30109139
#data 0x91378946
#data 0x893F3010
#data 0x30109135
#data 0xA04B8938
#data 0x0009

loc_8c19C4DA:
#data 0x24C2
#data 0xE30CA04B

#align4
loc_8c19C4E0:
#data 0xA04824C2
#data 0xE30B

loc_8c19C4E6:
#data 0xD117
#data 0x6211932A
#data 0x2238622D
#data 0xA0018901
#data 0xE140

loc_8c19C4F6:
#data 0xE120

#align4
loc_8c19C4F8:
#data 0x2412A002

#align4
loc_8c19C4FC:
#data 0x2422E220

#align4
loc_8c19C500:
#data 0xE308A039

#align4
loc_8c19C504:
#data 0xA03624C2
#data 0xE307

loc_8c19C50A:
#data 0xD10E
#data 0x62119318
#data 0x2238622D
#data 0xA0018901
#data 0xE140

loc_8c19C51A:
#data 0xE120

#align4
loc_8c19C51C:
#data 0xA0242412
#data 0xE206

loc_8c19C522:
#data 0xE110
#data 0xA0262412
#data 0xE305

loc_8c19C52A:
#data 0xE110
#data 0x2412A018

#align4
loc_8c19C530:
#data 0xA015E208
#data 0x00822422
#data 0x00A00084
#data 0x00A400A1
#data 0x00000880
#data 0x8C34798E

#align4
loc_8c19C548:
#data 0x2D602462
#data 0x2E70A015

#align4
loc_8c19C550:
#data 0x2D702462
#data 0x2E60A011

#align4
loc_8c19C558:
#data 0xA005E302
#data 0x2432

loc_8c19C55E:
#data 0x2472

#align4
loc_8c19C560:
#data 0xA00A2E60
#data 0x2D60

loc_8c19C566:
#data 0x2472

loc_8c19C568:
#data 0xE202

loc_8c19C56A:
#data 0x2E20
#data 0x2D20A005

#align4
loc_8c19C570:
#data 0x2412D138
#data 0x9369

loc_8c19C576:
#data 0x2E30
#data 0x2D30


loc_8c19C57A:
lds.l @r15+,pr
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c19C588:
mov.l r14,@-r15
mov 0x48,r0 ; r0 set to 0x48
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l @(loc_8c19C65C,pc),r3 ; r3 set to 0x8C347970
sts.l pr,@-r15
mov.l @(loc_8c19C658,pc),r14 ; r14 set to 0x8C3479EC
mov.w @(loc_8c19C64E,pc),r13 ; r13 set to 0x208
mov.l @r3,r5
add 0xFC,r15
mov.w @(loc_8c19C64C,pc),r6 ; r6 set to 0xF0
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???
extu.b r0,r0
and r6,r0
cmp/eq 0x70,r0
bf/s loc_8c19C67C
mov 0x01,r7 ; r7 set to 0x01
exts.b r4,r0
cmp/eq 0x01,r0
bf/s loc_8c19C604
mov r7,r12 ; r12 set to 0x01
mov.l @(loc_8c19C660,pc),r11 ; r11 set to 0x8C34798C
mov r5,r0
nop
add 0x24,r0
mov.b @r0,r0
tst 0x10,r0
movt r0
add 0xFF,r0
neg r0,r0
cmp/eq 0x01,r0
bf loc_8c19C5E6
mov.l @(loc_8c19C664,pc),r1 ; r1 set to 0x8C19E1F8
mov.w @(loc_8c19C650,pc),r4 ; r4 set to 0x204
jsr @r1
mov 0x02,r5 ; r5 set to 0x02
mov 0x02,r5 ; r5 set to 0x02
mov.w r0,@r11 ; r11 ??? bc r0 is ???
mov.l @(loc_8c19C664,pc),r3 ; r3 set to 0x8C19E1F8
jsr @r3
mov r13,r4 ; r4 set to 0x208
mov.l @(loc_8c19C668,pc),r2 ; r2 set to 0x8C34798E
mov.w r0,@r2 ; r2 ??? bc r0 is ???
mov.l @(loc_8c19C66C,pc),r1 ; r1 set to 0x8C34798A
bra loc_8c19C5FE
mov.w @r1,r3

loc_8c19C5E6:
mov.l @(loc_8c19C664,pc),r1 ; r1 set to 0x8C19E1F8
mov 0x02,r5 ; r5 set to 0x02
jsr @r1
mov r13,r4
mov.w r0,@r11
mov.l @(loc_8c19C664,pc),r3 ; r3 set to 0x8C19E1F8
mov.w @(loc_8c19C650,pc),r4 ; r4 set to 0x204
jsr @r3
mov 0x02,r5 ; r5 set to 0x02
mov.l @(loc_8c19C668,pc),r2 ; r2 set to 0x8C34798E
mov.w r0,@r2 ; r2 ??? bc r0 is ???
mov.w @r11,r3 ; r3 ??? bc r11 is ???

loc_8c19C5FE:
extu.w r3,r3
bra loc_8c19C61C
mov.l r3,@r14

loc_8c19C604:
mov.l @(loc_8c19C670,pc),r0 ; r0 set to 0x8C347974
mov.b @r0,r0 ; r0 ??
tst 0x08,r0
bf loc_8c19C61A
mov.l @(loc_8c19C664,pc),r1 ; r1 set to 0x8C19E1F8
mov 0x02,r5 ; r5 set to 0x02
jsr @r1
mov r13,r4
extu.w r0,r0
bra loc_8c19C61C
mov.l r0,@r14

loc_8c19C61A:
mov 0x00,r12 ; r12 set to 0x00

loc_8c19C61C:
exts.b r12,r12 ; r12 ??
tst r12,r12
bt loc_8c19C6D0
mov.l @r14,r2
mov.l @(loc_8c19C674,pc),r3 ; r3 set to 0xF66E, r3 set to 0xF66E
and r3,r2
mov r2,r4
mov r2,r6
extu.b r4,r0
mov.l r2,@r14
mov.l @(loc_8c19C678,pc),r5 ; r5 set to 0x8C1C7D28, r5 set to 0x8C1C7D28
shlr8 r6
extu.b r6,r6
mov.b @(r0,r5),r4
mov r6,r0
nop
mov.b @(r0,r5),r5 ; r5 ??, r5 ??
extu.b r4,r4
shll8 r4
extu.b r5,r5
or r5,r4
bra loc_8c19C6D0
mov.l r4,@r14
#data 0x00FF

loc_8c19C64C:
#data 0x00F0

loc_8c19C64E:
#data 0x0208

loc_8c19C650:
#data 0x0204
#data 0x0000
#data 0x00008000

#align4
loc_8c19C658:
#data 0x8C3479EC

#align4
loc_8c19C65C:
#data 0x8C347970

#align4
loc_8c19C660:
#data 0x8C34798C

#align4
loc_8c19C664:
#data loc_8c19E1F8

loc_8c19C668:
#data 0x8C34798E

#align4
loc_8c19C66C:
#data 0x8C34798A

#align4
loc_8c19C670:
#data 0x8C347974

#align4
loc_8c19C674:
#data 0x0000F66E

#align4
loc_8c19C678:
#data bank1c.loc_8c1c7D28

loc_8c19C67C:
#data 0x025CE048
#data 0x622C9178
#data 0x32102269
#data 0x025C8905
#data 0x622C9373
#data 0x32302269
#data 0x8B12

loc_8c19C696:
#data 0xD33A
#data 0x430BE501
#data 0x2F0064D3
#data 0x9469D337
#data 0xE501430B
#data 0x6403E27F
#data 0x242963F0
#data 0x633C644C
#data 0x243B4418
#data 0x2E42A00A

#align4
loc_8c19C6BC:
#data 0x025C945D
#data 0x2249622C
#data 0x8B033240
#data 0x410BD12E
#data 0x2E020009


loc_8c19C6D0:
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c19C6DE:
mov.l @(loc_8c19C788,pc),r3 ; r3 set to 0x8C3479EC
rts
mov.l @r3,r0
;-------------------------------------------------------------------------------
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x4F22D029
#data 0xDE276000
#data 0xC804DD25
#data 0x89147FFC
#data 0x737863E2
#data 0xC9DF6030
#data 0xD2242300
#data 0x420BE50A
#data 0xA00564F3
#data 0x4D0B0009
#data 0x600E64F2
#data 0x8B042008
#data 0x707860E2
#data 0xC8086000
#data 0x63E289F5
#data 0x60307324
#data 0x2300C9FE
#data 0x732063E2
#data 0xC9FE6030
#data 0xD2172300
#data 0x420BE532
#data 0x9C1B64F3
#data 0xA009DB15
#data 0x4D0B0009
#data 0x600E64F2
#data 0x89032008
#data 0x64C34B0B
#data 0x0009A005
#data 0x703C60E2
#data 0xC8206000
#data 0x7F048BF1
#data 0x6BF64F26
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x009000C0
#data 0x00E00209
#data 0x00000488

#align4
loc_8c19C780:
#data loc_8c19E1F8

loc_8c19C784:
#data bank1b.loc_8c1b1012

loc_8c19C788:
#data 0x8C3479EC

#align4
loc_8c19C78C:
#data bank1b.loc_8c1b3F0C
#data 0x8C347970
#data 0x8C347977

#align4
loc_8c19C798:
#data bank1b.loc_8c1b3EEC

loc_8c19C79C:
#data bank1a.loc_8c1a003E

loc_8c19C7A0:
#data 0xE048D24A
#data 0x034C6422
#data 0x633C9183
#data 0x890C3310
#data 0xC9F0004C
#data 0x6503937E
#data 0x3430645C
#data 0x60438905
#data 0x88100009
#data 0x24488901
#data 0x8B01

loc_8c19C7CA:
#data 0x000B
#data 0xE001
;-------------------------------------------------------------------------------

loc_8c19C7CE:
#data 0xE000
#data 0x0009000B
;-------------------------------------------------------------------------------

loc_8c19C7D4:
mov.l @(loc_8c19C8D0,pc),r3 ; r3 set to 0x8C347A14
rts
mov.l @r3,r0
;-------------------------------------------------------------------------------

loc_8c19C7DA:
#data 0x4F22
#data 0xD33D946B
#data 0x430B7FFC
#data 0x2F00E501
#data 0x9465D33A
#data 0xE501430B
#data 0x60F06403
#data 0xC810600C
#data 0x604C8909
#data 0x40094009
#data 0x88014001
#data 0x7F048B03
#data 0x000B4F26
#data 0xE001
;-------------------------------------------------------------------------------

loc_8c19C80E:
#data 0xE000
#data 0x4F267F04
#data 0x0009000B
;-------------------------------------------------------------------------------

loc_8c19C818:
rts
nop
;-------------------------------------------------------------------------------

loc_8c19C81C:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.b r4,@r15
mov.l @(loc_8c19C8D4,pc),r3 ; r3 set to 0x8C19E1F8
mov.w @(loc_8c19C8BA,pc),r4 ; r4 set to 0x305
jsr @r3
mov 0x01,r5 ; r5 set to 0x01
mov.l @(loc_8c19C8D4,pc),r2 ; r2 set to 0x8C19E1F8
mov r0,r14
mov.w @(loc_8c19C8BC,pc),r4 ; r4 set to 0x304
jsr @r2
mov 0x01,r5 ; r5 set to 0x01
mov.w @(loc_8c19C8BE,pc),r4 ; r4 set to 0x306
mov r0,r13
mov.l @(loc_8c19C8D8,pc),r3 ; r3 set to 0x8C19E30C
mov 0x01,r6 ; r6 set to 0x01
jsr @r3
mov 0x40,r5 ; r5 set to 0x40
mov.l @(loc_8c19C8D8,pc),r2 ; r2 set to 0x8C19E30C
mov 0x01,r6 ; r6 set to 0x01
mov.w @(loc_8c19C8C0,pc),r4 ; r4 set to 0x307
jsr @r2
mov 0x03,r5 ; r5 set to 0x03
mov.l @(loc_8c19C8D8,pc),r3 ; r3 set to 0x8C19E30C
mov.w @(loc_8c19C8C4,pc),r4 ; r4 set to 0x308
mov.w @(loc_8c19C8C2,pc),r5 ; r5 set to 0x84
jsr @r3
mov 0x01,r6 ; r6 set to 0x01
mov.b @r15,r12
mov 0x01,r4 ; r4 set to 0x01
extu.b r12,r12
mov r12,r0
nop
tst r4,r0
bt loc_8c19C86C
bra loc_8c19C86E
mov r4,r0

loc_8c19C86C:
mov 0x00,r0 ; r0 set to 0x00

loc_8c19C86E:
mov.l @(loc_8c19C8E0,pc),r3 ; r3 set to 0x8C130ECC, r3 set to 0x8C130ECC
mov.l @(loc_8c19C8DC,pc),r2 ; r2 set to 0x8C347974, r2 set to 0x8C347974
jsr @r3
mov 0x01,r1 ; r1 set to 0x01, r1 set to 0x01
mov 0x02,r2 ; r2 set to 0x02, r2 set to 0x02
tst r12,r2
bt loc_8c19C890
mov 0x08,r2 ; r2 set to 0x08, r2 set to 0x08
mov 0x01,r1 ; r1 set to 0x01, r1 set to 0x01
tst r12,r2
or r1,r14
mov 0x1F,r3 ; r3 set to 0x1F, r3 set to 0x1F
bt/s loc_8c19C894
and r3,r14
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
bra loc_8c19C894
or r0,r14

loc_8c19C890:
mov.w @(loc_8c19C8C6,pc),r2 ; r2 set to 0xFE
and r2,r14

loc_8c19C894:
mov 0x04,r3 ; r3 set to 0x04, r3 set to 0x04
tst r12,r3
bt loc_8c19C8A0
mov 0x10,r1 ; r1 set to 0x10, r1 set to 0x10
bra loc_8c19C8A4
or r1,r13

loc_8c19C8A0:
mov.w @(loc_8c19C8C8,pc),r2 ; r2 set to 0xEF
and r2,r13

loc_8c19C8A4:
mov 0x10,r3 ; r3 set to 0x10, r3 set to 0x10
tst r12,r3
bt/s loc_8c19C8E4
mov 0x01,r6 ; r6 set to 0x01, r6 set to 0x01
mov 0x04,r1 ; r1 set to 0x04, r1 set to 0x04
bra loc_8c19C8E8
or r1,r14
#data 0x00A8
#data 0x030200B0
#data 0x0303

loc_8c19C8BA:
#data 0x0305

loc_8c19C8BC:
#data 0x0304

loc_8c19C8BE:
#data 0x0306

loc_8c19C8C0:
#data 0x0307

loc_8c19C8C2:
#data 0x0084

loc_8c19C8C4:
#data 0x0308

loc_8c19C8C6:
#data 0x00FE

loc_8c19C8C8:
#data 0x00EF
#data 0x0000
#data 0x8C347970

#align4
loc_8c19C8D0:
#data 0x8C347A14

#align4
loc_8c19C8D4:
#data loc_8c19E1F8

loc_8c19C8D8:
#data loc_8c19E30C

loc_8c19C8DC:
#data 0x8C347974

#align4
loc_8c19C8E0:
#data bank13.loc_8c130ECC


loc_8c19C8E4:
mov.w @(loc_8c19C9D6,pc),r2 ; r2 set to 0xFB
and r2,r14

loc_8c19C8E8:
mov.l @(loc_8c19C9F4,pc),r3 ; r3 set to 0x8C19E30C, r3 set to 0x8C19E30C
mov.w @(loc_8c19C9D8,pc),r4 ; r4 set to 0x304, r4 set to 0x304
jsr @r3
extu.b r13,r5
add 0x04,r15
mov.w @(loc_8c19C9DA,pc),r4 ; r4 set to 0x305, r4 set to 0x305
lds.l @r15+,pr
mov.l @(loc_8c19C9F4,pc),r2 ; r2 set to 0x8C19E30C, r2 set to 0x8C19E30C
mov 0x01,r6 ; r6 set to 0x01, r6 set to 0x01
extu.b r14,r5
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_8c19C904:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.l r12,@-r15
mov.l @(loc_8c19C9F8,pc),r3 ; r3 set to 0x8C347994
sts.l pr,@-r15
mov.l r4,@r3 ; r3 ??? bc r4 is ???
mov.l @(loc_8c19C9FC,pc),r2 ; r2 set to 0x8C19E1F8
mov.w @(loc_8c19C9DC,pc),r4 ; r4 set to 0x13F
jsr @r2
mov 0x01,r5 ; r5 set to 0x01
mov 0x01,r3 ; r3 set to 0x01
tst r14,r3
bt/s loc_8c19C928
mov r0,r13
mov 0x40,r1 ; r1 set to 0x40
bra loc_8c19C92C
or r1,r13

loc_8c19C928:
mov.w @(loc_8c19C9DE,pc),r2 ; r2 set to 0xBF
and r2,r13

loc_8c19C92C:
mov.l @(loc_8c19C9F4,pc),r3 ; r3 set to 0x8C19E30C, r3 set to 0x8C19E30C
mov 0x01,r6 ; r6 set to 0x01, r6 set to 0x01
mov.w @(loc_8c19C9DC,pc),r4 ; r4 set to 0x13F, r4 set to 0x13F
jsr @r3
extu.b r13,r5
mov.l @(loc_8c19C9FC,pc),r2 ; r2 set to 0x8C19E1F8, r2 set to 0x8C19E1F8
mov.w @(loc_8c19C9E0,pc),r4 ; r4 set to 0x100, r4 set to 0x100
jsr @r2
mov 0x01,r5 ; r5 set to 0x01, r5 set to 0x01
mov 0x02,r3 ; r3 set to 0x02, r3 set to 0x02
tst r14,r3
bt/s loc_8c19C94C
mov r0,r13
mov.w @(loc_8c19C9E2,pc),r1 ; r1 set to 0xF7, r1 set to 0xF7
bra loc_8c19C950
and r1,r13

loc_8c19C94C:
mov 0x08,r2 ; r2 set to 0x08
or r2,r13

loc_8c19C950:
mov 0x08,r3 ; r3 set to 0x08, r3 set to 0x08
tst r14,r3
bt/s loc_8c19C95E
mov 0x01,r6 ; r6 set to 0x01, r6 set to 0x01
mov.w @(loc_8c19C9E4,pc),r1 ; r1 set to 0xFD, r1 set to 0xFD
bra loc_8c19C962
and r1,r13

loc_8c19C95E:
#data 0xE202
#data 0x2D2B

loc_8c19C962:
#data 0xD324
#data 0x430B943C
#data 0xE22065DC
#data 0x8B0B22E8
#data 0x9438D222
#data 0xE501420B
#data 0x6D03D21E
#data 0xE37F9433
#data 0xE6012D39
#data 0x65DC420B

#align4
loc_8c19C988:
#data 0xD21D932E
#data 0x430923E9
#data 0x43094309
#data 0x94282230
#data 0x410BD118
#data 0xD317E501
#data 0x94236D03
#data 0xE501430B
#data 0x22E89221
#data 0x6C038D03
#data 0xA002E120
#data 0x2D1B

loc_8c19C9B6:
#data 0x921B
#data 0x2D29

loc_8c19C9BA:
#data 0xD312
#data 0x890223E8
#data 0xA002E110
#data 0x2D1B

loc_8c19C9C6:
#data 0x9214
#data 0x2D29

loc_8c19C9CA:
#data 0x60DC
#data 0x8B1BC830
#data 0xA01B9207
#data 0x2C29

loc_8c19C9D6:
#data 0x00FB

loc_8c19C9D8:
#data 0x0304

loc_8c19C9DA:
#data 0x0305

loc_8c19C9DC:
#data 0x013F

loc_8c19C9DE:
#data 0x00BF

loc_8c19C9E0:
#data 0x0100

loc_8c19C9E2:
#data 0x00F7

loc_8c19C9E4:
#data 0x00FD
#data 0x010D
#data 0x010500C0
#data 0x40000101
#data 0x00EF00DF

#align4
loc_8c19C9F4:
#data loc_8c19E30C

loc_8c19C9F8:
#data 0x8C347994

#align4
loc_8c19C9FC:
#data loc_8c19E1F8
#data 0x8C347986
#data 0x00008000

#align4
loc_8c19CA08:
#data 0x2C1BE108

#align4
loc_8c19CA0C:
#data 0x23E8D341
#data 0x91758902
#data 0x2D1BA002

#align4
loc_8c19CA18:
#data 0x2D29E27F

#align4
loc_8c19CA1C:
#data 0x23E8D33E
#data 0xE1408902
#data 0x2D1BA002

#align4
loc_8c19CA28:
#data 0x2D29926B

#align4
loc_8c19CA2C:
#data 0xC8C060DC
#data 0x92678B02
#data 0x2C29A002

#align4
loc_8c19CA38:
#data 0x2C1BE110

#align4
loc_8c19CA3C:
#data 0x2E38D337
#data 0xE6018D03
#data 0xA002E120
#data 0x2C1B

loc_8c19CA4A:
#data 0x905C
#data 0x2C09

loc_8c19CA4E:
#data 0xD334
#data 0x430B945A
#data 0x4F2665DC
#data 0x945665CC
#data 0xE601D230
#data 0x6DF66CF6
#data 0x6EF6422B
#data 0x2FD62FE6
#data 0x7FFC4F22
#data 0xD22C2F40
#data 0x223063F0
#data 0x6351D42B
#data 0x84522431
#data 0x84538042
#data 0x84548043
#data 0x8044E501
#data 0xD2279E3E
#data 0x64E3420B
#data 0x60F06D03
#data 0xC801600C
#data 0x64E38D05
#data 0x6563E601
#data 0xA003757F
#data 0xD52125DB
#data 0x25D9E601
#data 0x420BD21B
#data 0xD41C0009
#data 0x6541D31E
#data 0x3530655D
#data 0x91248902
#data 0x8B163510
#data 0xE3028443
#data 0x2358650C
#data 0xE1018B05
#data 0x89052158
#data 0x20088442
#data 0xE6018902
#data 0x6563A002
#data 0xE601E500
#data 0xD30D7F04
#data 0x940F4F26
#data 0x432B6DF6
#data 0x7F046EF6
#data 0x6DF64F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x00BF0080
#data 0x00DF00EF
#data 0x01010105
#data 0x4A00039B
#data 0x0000067D
#data 0x00010000
#data 0x00020000
#data 0x00040000

#align4
loc_8c19CB20:
#data loc_8c19E30C
#data 0x8C347987
#data 0x8C347998

#align4
loc_8c19CB2C:
#data loc_8c19E1F8
#data 0x0000FF7F
#data 0x00009400

#align4
loc_8c19CB38:
#data 0x2FD62FE6
#data 0xD33F4F22
#data 0x430B9474
#data 0x6403E502
#data 0x9070D33D
#data 0x614D430B
#data 0x6E03D53C
#data 0xE048966C
#data 0x024C6452
#data 0x2269622C
#data 0x89383260
#data 0xE1486052
#data 0x001C9363
#data 0xC9F0600C
#data 0x89303030
#data 0xE2486052
#data 0x002C935C
#data 0xC9F0600C
#data 0x89283030
#data 0xE2486052
#data 0x600C002C
#data 0x8840C9F0
#data 0x60528921
#data 0x003CE348
#data 0xC9F0600C
#data 0x891A8830
#data 0xE2486052
#data 0x002C9347
#data 0xC9F0600C
#data 0x89123030
#data 0xE2486052
#data 0x600C002C
#data 0x8810C9F0
#data 0x6052890B
#data 0x003CE348
#data 0x8802600C
#data 0x60528905
#data 0x002CE248
#data 0x8801600C
#data 0x8B48

loc_8c19CBD6:
#data 0xE234
#data 0x32E8E048
#data 0x633C034C
#data 0x33602369
#data 0x6E238D08
#data 0x9322004C
#data 0xC9F0600C
#data 0x89013030
#data 0x0009A082

#align4
loc_8c19CBF8:
#data 0x941DD310
#data 0xE502430B
#data 0xED03600C
#data 0x2D094001
#data 0x880060DC
#data 0xE5008D1C
#data 0x89058801
#data 0x89058802
#data 0x89058803
#data 0x0009A014

#align4
loc_8c19CC20:
#data 0xE40AA013

#align4
loc_8c19CC24:
#data 0xE40FA011

#align4
loc_8c19CC28:
#data 0xE414A00F
#data 0x02AB0A00
#data 0x009000E0
#data 0x00B000C0
#data 0x000003CB

#align4
loc_8c19CC3C:
#data loc_8c19E1F8

loc_8c19CC40:
#data bank12.loc_8c129128
#data 0x8C347970

loc_8c19CC48:
#data 0x6453

loc_8c19CC4A:
#data 0x644C
#data 0x3E4CD332
#data 0x430B945A
#data 0x6DDCE502
#data 0x894F2DD8
#data 0x63EDE203
#data 0x8B4B3327
#data 0x7EFCA04A

#align4
loc_8c19CC68:
#data 0x004CE048
#data 0xC9F0600C
#data 0x8B038870
#data 0x32E8E235
#data 0x6E23A040

#align4
loc_8c19CC7C:
#data 0x014CE048
#data 0x611C9343
#data 0x89183130
#data 0x923F014C
#data 0x3120611C
#data 0x004C8913
#data 0x8852600C
#data 0xE048890F
#data 0x600C004C
#data 0x890A8851
#data 0x004CE048
#data 0x8862600C
#data 0xE0488905
#data 0x932C014C
#data 0x3130611C
#data 0x8B01

loc_8c19CCBA:
#data 0xA015
#data 0xE130

loc_8c19CCBE:
#data 0x024C
#data 0x622C9326
#data 0x890E3230
#data 0x9222014C
#data 0x3120611C
#data 0x014C8909
#data 0x611C931E
#data 0x89043130
#data 0x921A014C
#data 0x3120611C
#data 0x8B03

loc_8c19CCE6:
#data 0xE136

#align4
loc_8c19CCE8:
#data 0xA00731E8
#data 0x6E13

loc_8c19CCEE:
#data 0x004C
#data 0x8860600C
#data 0xE2338B02
#data 0x6E2332E8

#align4
loc_8c19CCFC:
#data 0x000960E3
#data 0x6DF64F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x008403CD
#data 0x00A40082
#data 0x00A800A0
#data 0x00A10086

#align4
loc_8c19CD18:
#data loc_8c19E1F8

loc_8c19CD1C:
#data 0x2FD62FE6
#data 0xDD434F22
#data 0x60D37FFC
#data 0x84030009
#data 0x891FC802
#data 0x000960D3
#data 0xC9018403
#data 0x2008600C
#data 0xDE3D8918
#data 0x707860E2
#data 0xC8046000
#data 0x73FF0329
#data 0x2F30633B
#data 0x737863E2
#data 0xD2386030
#data 0x420BC9FB
#data 0x91632300
#data 0x62E2D336
#data 0x430B60F0
#data 0x84D37278
#data 0x80D3C9FE

#align4
loc_8c19CD70:
#data 0x4F267F04
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c19CD7A:
mov.l @(loc_8c19CE34,pc),r3 ; r3 set to 0x8C347970
sts.l pr,@-r15
mov.l @r3,r4
mov r4,r0
nop
add 0x1C,r0
mov.b @r0,r0
tst 0x20,r0
bt loc_8c19CD9C
mov r4,r0
nop
add 0x3C,r0
mov.b @r0,r0
tst 0x40,r0
bf loc_8c19CDEE
bra loc_8c19CDF8
nop

#align4
loc_8c19CD9C:
#data 0x00096043
#data 0x6000703C
#data 0x8925C880
#data 0x004CE048
#data 0x8870600C
#data 0xE0488922
#data 0x9338024C
#data 0x3230622C
#data 0x014C891C
#data 0x611C9234
#data 0x89173120
#data 0x600C004C
#data 0x89138840
#data 0x00096043
#data 0x6000703C
#data 0x890BC840
#data 0x6043D414
#data 0x84030009
#data 0x8902C802
#data 0xCB018443
#data 0x8043


loc_8c19CDEE:
lds.l @r15+,pr
rts
mov 0x01,r0
;-------------------------------------------------------------------------------

#align4
loc_8c19CDF4:
#data 0x0009BF92


loc_8c19CDF8:
mov 0x00,r0 ; r0 set to 0x00
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c19CE00:
sts.l pr,@-r15
add 0xFC,r15
mov.b r4,@r15
mov.l @(loc_8c19CE34,pc),r3 ; r3 set to 0x8C347970
mov.l @r3,r0
add 0x3C,r0
mov.b @r0,r0
tst 0x80,r0
bt loc_8c19CE48
bsr loc_8c19CB38
nop
mov.b @r15,r3 ; r3 ??? bc r15 is ???
extu.w r0,r0
extu.b r3,r3
cmp/ge r3,r0
bt loc_8c19CE40
add 0x04,r15
lds.l @r15+,pr
rts
mov 0x01,r0
;-------------------------------------------------------------------------------
#data 0x00AF0501
#data 0x000000C0
#data 0x8C347974

#align4
loc_8c19CE34:
#data 0x8C347970

#align4
loc_8c19CE38:
#data loc_8c19F0BA

loc_8c19CE3C:
#data bank13.loc_8c130ECC


loc_8c19CE40:
add 0x04,r15
lds.l @r15+,pr
rts
mov 0x00,r0
;-------------------------------------------------------------------------------

loc_8c19CE48:
mov.l @(loc_8c19CF10,pc),r1 ; r1 set to 0x8C1B2A48
add 0x04,r15
jmp @r1
lds.l @r15+,pr
#data 0x4F267F04
#data 0x0009000B
;-------------------------------------------------------------------------------

loc_8c19CE58:
mov.l @(loc_8c19CF14,pc),r3 ; r3 set to 0x8C19E1F8
mov.w @(loc_8c19CF00,pc),r4 ; r4 set to 0x20C
jmp @r3
mov 0x02,r5

#align4
loc_8c19CE60:
#data 0x2FD62FE6
#data 0x4F22D32C
#data 0x60436432
#data 0x702C0009
#data 0xC8026000
#data 0x60438916
#data 0x701C0009
#data 0xC8086000
#data 0xE0488B10
#data 0x923C014C
#data 0x3123611C
#data 0x014C8B04
#data 0x611C9338
#data 0x8B053137

#align4
loc_8c19CE98:
#data 0x712C6143
#data 0xC9FD6010
#data 0x2100A08B

#align4
loc_8c19CEA4:
#data 0x004CE048
#data 0x8860600C
#data 0x912A896B
#data 0x89683010
#data 0x30109128
#data 0x91268965
#data 0x89623010
#data 0xE048DD16
#data 0x9321004C
#data 0xC9F0600C
#data 0x8B033030
#data 0x6000D013
#data 0x890AC840

#align4
loc_8c19CED8:
#data 0x004CE048
#data 0x600C9317
#data 0x3030C9E0
#data 0xD00E8B3E
#data 0xC8206000
#data 0x8B3A

loc_8c19CEEE:
#data 0xD30D
#data 0x600C6030
#data 0x8D19C801
#data 0xDE0BE502
#data 0x0009A017

loc_8c19CF00:
#data 0x020C
#data 0x00C1
#data 0x00A000CE
#data 0x00A400A1
#data 0x00E00090

#align4
loc_8c19CF10:
#data bank1b.loc_8c1b2A48

loc_8c19CF14:
#data loc_8c19E1F8
#data 0x8C347970
#data 0x8C347986
#data 0x8C34797A
#data 0x8C347987

#align4
loc_8c19CF28:
#data bank1c.loc_8c1c649A

loc_8c19CF2C:
#data 0xDE3C

loc_8c19CF2E:
#data 0xD33D
#data 0x430B946F
#data 0x65D00009
#data 0x646D6603
#data 0x6353655C
#data 0x43084500
#data 0x35EC353C
#data 0x622D6251
#data 0x8B1A3423
#data 0x600D8551
#data 0x8B223403
#data 0x600D8552
#data 0x8B2A3403
#data 0x0009A02B

#align4
loc_8c19CF64:
#data 0x9455D32F
#data 0xE501430B
#data 0x660362D0
#data 0x656CD42D
#data 0x42006323
#data 0x622E323C
#data 0x6120324C
#data 0x3513611C
#data 0x8901

loc_8c19CF86:
#data 0xA019
#data 0xE000

loc_8c19CF8A:
#data 0x62D0
#data 0x42006323
#data 0x622E323C
#data 0x8421324C
#data 0x3503600C
#data 0x8901

loc_8c19CF9E:
#data 0xA00D
#data 0xE001

loc_8c19CFA2:
#data 0x62D0
#data 0x42006323
#data 0x622E323C
#data 0x8422324C
#data 0x3503600C
#data 0x8901

loc_8c19CFB6:
#data 0xA001
#data 0xE002

loc_8c19CFBA:
#data 0xE003

#align4
loc_8c19CFBC:
#data 0x6DF64F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------

loc_8c19CFC4:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8c19D024,pc),r3 ; r3 set to 0x8C19E1F8
mov.w @(loc_8c19D016,pc),r4 ; r4 set to 0x239
jsr @r3
mov 0x02,r5 ; r5 set to 0x02
mov.l @(loc_8c19D024,pc),r2 ; r2 set to 0x8C19E1F8
extu.w r0,r14
mov.w @(loc_8c19D018,pc),r4 ; r4 set to 0x2E3
jsr @r2
mov 0x01,r5 ; r5 set to 0x01
mov.w @(loc_8c19D01A,pc),r6 ; r6 set to 0x3E8
extu.w r0,r0
mov.l @(loc_8c19D030,pc),r7 ; r7 set to 0x8C347970
shll2 r0
mul.l r6,r14
mov.l @(loc_8c19D02C,pc),r1 ; r1 set to 0x8C1C66D4
mov.l @r7,r4 ; r4 ??
mov.l @(r0,r1),r5 ; r5 ??
mov 0x48,r0 ; r0 set to 0x48
mov.b @(r0,r4),r3 ; r3 ??? bc r4 is ???
mov.w @(loc_8c19D01C,pc),r2 ; r2 set to 0xC1
extu.b r3,r3
cmp/ge r2,r3
bf/s loc_8c19D038
sts macl,r6
mov.l @r7,r1 ; r1 ??
mov.b @(r0,r1),r3
mov.w @(loc_8c19D01E,pc),r1 ; r1 set to 0xCE
extu.b r3,r3
cmp/gt r1,r3
bt loc_8c19D038
mov.l @(loc_8c19D034,pc),r2 ; r2 set to 0x8C1291DC
mov r6,r1 ; r1 set to 0x3E8
jsr @r2
mov r5,r0 ; r0 ??? bc r5 is ???
mov r0,r4
bra loc_8c19D086
add 0xF6,r4
#data 0x0810
#data 0x026F

loc_8c19D016:
#data 0x0239

loc_8c19D018:
#data 0x02E3

loc_8c19D01A:
#data 0x03E8

loc_8c19D01C:
#data 0x00C1

loc_8c19D01E:
#data 0x00CE

#align4
loc_8c19D020:
#data bank1c.loc_8c1c64AC

loc_8c19D024:
#data loc_8c19E1F8

loc_8c19D028:
#data bank1c.loc_8c1c6490

loc_8c19D02C:
#data bank1c.loc_8c1c66D4

loc_8c19D030:
#data 0x8C347970

#align4
loc_8c19D034:
#data bank12.loc_8c1291DC


loc_8c19D038:
mov.b @(r0,r4),r2
mov 0x46,r3 ; r3 set to 0x46
extu.b r2,r2
cmp/ge r3,r2
bf loc_8c19D066
mov.b @(r0,r4),r1
mov 0x4C,r2 ; r2 set to 0x4C
extu.b r1,r1
cmp/gt r2,r1
bt loc_8c19D066
mov.w @(loc_8c19D09A,pc),r1 ; r1 set to 0x2710
mov.l @(loc_8c19D0A0,pc),r3 ; r3 set to 0x8C1291DC
mul.l r1,r14
sts macl,r1
jsr @r3
mov r5,r0
mov.l @(loc_8c19D0A0,pc),r3 ; r3 set to 0x8C1291DC
mov r0,r1 ; r1 ??? bc r0 is ???
add 0xDD,r1
jsr @r3
mov 0x0A,r0 ; r0 set to 0x0A
bra loc_8c19D086
mov r0,r4

loc_8c19D066:
mov.b @(r0,r4),r0
extu.b r0,r0
and 0xF0,r0
cmp/eq 0x70,r0
bf loc_8c19D07E
mov.l @(loc_8c19D0A0,pc),r2 ; r2 set to 0x8C1291DC
mov.w @(loc_8c19D09C,pc),r0 ; r0 set to 0x960
jsr @r2
mov r6,r1
mov r0,r4 ; r4 set to 0x960
bra loc_8c19D086
add 0xE3,r4

loc_8c19D07E:
lds.l @r15+,pr
mov 0x00,r0 ; r0 set to 0x00
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c19D086:
#data 0x4411
#data 0xE4008900

#align4
loc_8c19D08C:
#data 0x00096043
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c19D096:
rts
mov 0x00,r0
;-------------------------------------------------------------------------------

loc_8c19D09A:
#data 0x2710

loc_8c19D09C:
#data 0x0960
#data 0x0000

#align4
loc_8c19D0A0:
#data bank12.loc_8c1291DC

loc_8c19D0A4:
#data 0xD3314F22
#data 0x430B9452
#data 0xD230E502
#data 0x974E6603
#data 0x655C6520
#data 0x8F273570
#data 0x9149646D
#data 0x892A3413
#data 0x34339347
#data 0x9345892D
#data 0x89303433
#data 0x34339343
#data 0x93418933
#data 0x89363433
#data 0x3433933F
#data 0x933D894B
#data 0x894E3433
#data 0x3433933B
#data 0x93398951
#data 0x89543433
#data 0x34339337
#data 0x93358957
#data 0x895A3433
#data 0x3433E370
#data 0xE345895C
#data 0x895F3433

#align4
loc_8c19D10C:
#data 0x00096053
#data 0x8B5E8840
#data 0x34239229
#data 0x8B02

loc_8c19D11A:
#data 0x4F26
#data 0xE008000B
;-------------------------------------------------------------------------------

#align4
loc_8c19D120:
#data 0x34239218
#data 0x8B02

loc_8c19D126:
#data 0x4F26
#data 0xE009000B
;-------------------------------------------------------------------------------

#align4
loc_8c19D12C:
#data 0x34239213
#data 0x8B02

loc_8c19D132:
#data 0x4F26
#data 0xE00A000B
;-------------------------------------------------------------------------------

#align4
loc_8c19D138:
#data 0x3423920E
#data 0x8B02

loc_8c19D13E:
#data 0x4F26
#data 0xE00B000B
;-------------------------------------------------------------------------------

#align4
loc_8c19D144:
#data 0x34239209
#data 0x8B14

loc_8c19D14A:
#data 0x4F26
#data 0xE00C000B
;-------------------------------------------------------------------------------
#data 0x00800B52
#data 0x0F001100
#data 0x0C000D00
#data 0x09000A00
#data 0x04000700
#data 0x01500250
#data 0x130000C0

#align4
loc_8c19D16C:
#data loc_8c19E1F8
#data 0x8C3479E6

#align4
loc_8c19D174:
#data 0x3423927D
#data 0x8B02

loc_8c19D17A:
#data 0x4F26
#data 0xE00D000B
;-------------------------------------------------------------------------------

#align4
loc_8c19D180:
#data 0x34239278
#data 0x8B02

loc_8c19D186:
#data 0x4F26
#data 0xE00F000B
;-------------------------------------------------------------------------------

#align4
loc_8c19D18C:
#data 0x34239273
#data 0x8B02

loc_8c19D192:
#data 0x4F26
#data 0xE014000B
;-------------------------------------------------------------------------------

#align4
loc_8c19D198:
#data 0x3423926E
#data 0x8B02

loc_8c19D19E:
#data 0x4F26
#data 0xE019000B
;-------------------------------------------------------------------------------

#align4
loc_8c19D1A4:
#data 0x34239269
#data 0x8B02

loc_8c19D1AA:
#data 0x4F26
#data 0xE01E000B
;-------------------------------------------------------------------------------

#align4
loc_8c19D1B0:
#data 0x34239264
#data 0x8B02

loc_8c19D1B6:
#data 0x4F26
#data 0xE023000B
;-------------------------------------------------------------------------------

#align4
loc_8c19D1BC:
#data 0x8B023473

#align4
loc_8c19D1C0:
#data 0x000B4F26
#data 0xE028
;-------------------------------------------------------------------------------

loc_8c19D1C6:
#data 0xE340
#data 0x8B023433

#align4
loc_8c19D1CC:
#data 0x000B4F26
#data 0xE02D
;-------------------------------------------------------------------------------

loc_8c19D1D2:
#data 0xE032
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c19D1DA:
mov.l @(loc_8c19D288,pc),r3 ; r3 set to 0x8C3479D0
mov 0x01,r6 ; r6 set to 0x01
sts.l pr,@-r15
mov.b r4,@r3 ; r3 ??? bc r4 is ???
mov.l @(loc_8c19D28C,pc),r2 ; r2 set to 0x8C3479D1
mov.b r5,@r2 ; r2 ??? bc r5 is ???
mov.w @(loc_8c19D27E,pc),r4 ; r4 set to 0x10F
mov.l @(loc_8c19D290,pc),r1 ; r1 set to 0x8C19E30C
jsr @r1
mov 0x00,r5 ; r5 set to 0x00
mov.l @(loc_8c19D290,pc),r3 ; r3 set to 0x8C19E30C
mov 0x01,r6 ; r6 set to 0x01
mov.w @(loc_8c19D280,pc),r4 ; r4 set to 0x21E
jsr @r3
mov r6,r5 ; r5 set to 0x01
mov.w @(loc_8c19D284,pc),r4 ; r4 set to 0x21F
mov 0x01,r6 ; r6 set to 0x01
mov.l @(loc_8c19D290,pc),r2 ; r2 set to 0x8C19E30C
mov.w @(loc_8c19D282,pc),r5 ; r5 set to 0xD2
jmp @r2
lds.l @r15+,pr

#align4
loc_8c19D204:
#data 0x4F22D323
#data 0x60436432
#data 0x70240009
#data 0xC8046000
#data 0x62438908
#data 0x60207224
#data 0xC9FBD41E
#data 0x9530D11E
#data 0x2200410B

#align4
loc_8c19D228:
#data 0x6032D31A
#data 0x6000703C
#data 0x8907C808
#data 0xD418D119
#data 0x410B9525
#data 0x4F260009
#data 0xE001000B
;-------------------------------------------------------------------------------

#align4
loc_8c19D244:
#data 0x4F26E000
#data 0x0009000B
;-------------------------------------------------------------------------------

loc_8c19D24C:
mov.l @(loc_8c19D294,pc),r3 ; r3 set to 0x8C347970
mov.l @r3,r1
add 0x1C,r1
mov.b @r1,r0
or 0x02,r0
rts
mov.b r0,@r1
;-------------------------------------------------------------------------------

loc_8c19D25A:
mov.l @(loc_8c19D294,pc),r3 ; r3 set to 0x8C347970
mov.l @r3,r1
add 0x1C,r1
mov.b @r1,r0
mov.l @(loc_8c19D298,pc),r4 ; r4 set to 0x8C3479F0
and 0xFD,r0
mov.l @(loc_8c19D29C,pc),r2 ; r2 set to 0x8C1B3EEC
mov.w @(loc_8c19D286,pc),r5 ; r5 set to 0x1F4
jmp @r2
mov.b r0,@r1

loc_8c19D26E:
rts
nop
;-------------------------------------------------------------------------------
#data 0x0A00
#data 0x05000800
#data 0x01800300
#data 0x00D0

loc_8c19D27E:
#data 0x010F

loc_8c19D280:
#data 0x021E

loc_8c19D282:
#data 0x00D2

loc_8c19D284:
#data 0x021F

loc_8c19D286:
#data 0x01F4

#align4
loc_8c19D288:
#data 0x8C3479D0

#align4
loc_8c19D28C:
#data 0x8C3479D1

#align4
loc_8c19D290:
#data loc_8c19E30C

loc_8c19D294:
#data 0x8C347970

#align4
loc_8c19D298:
#data 0x8C3479F0

#align4
loc_8c19D29C:
#data bank1b.loc_8c1b3EEC


loc_8c19D2A0:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l @(loc_8c19D3A4,pc),r14 ; r14 set to 0x8C347970
sts.l pr,@-r15
mov.l @r14,r3
add 0x18,r3
mov.b @r3,r0
and 0xBF,r0
mov.b r0,@r3
mov.l @r14,r3
add 0x18,r3
mov.b @r3,r0
and 0xF7,r0
mov.b r0,@r3
mov.l @r14,r3
add 0x18,r3
mov.b @r3,r0
and 0xFB,r0
mov.b r0,@r3
mov.l @(loc_8c19D3AC,pc),r2 ; r2 set to 0x8C1B3EEC
mov.l @(loc_8c19D3A8,pc),r4 ; r4 set to 0x8C347A18
jsr @r2
mov 0x32,r5 ; r5 set to 0x32
mov.l @(loc_8c19D3A8,pc),r12 ; r12 set to 0x8C347A18
mov.w @(loc_8c19D39E,pc),r13 ; r13 set to 0x4C4
mov.l @(loc_8c19D3B0,pc),r10 ; r10 set to 0x8C1A003E
mov.l @(loc_8c19D3B4,pc),r11 ; r11 set to 0x8C1B3F0C
bra loc_8c19D2FE
nop

#align4
loc_8c19D2E0:
#data 0x731863E2
#data 0xC9FC6030
#data 0x2300CB03
#data 0x64C24B0B
#data 0x2008600E
#data 0x4A0B8903
#data 0xA01E64D3
#data 0x0009

loc_8c19D2FE:
#data 0x62E2
#data 0x00096023
#data 0x60007018
#data 0x8803C903
#data 0x60E28BE8
#data 0x60007020
#data 0xC90163E2
#data 0x73206403
#data 0xC9FE6030
#data 0x63E22300
#data 0x60307320
#data 0x2300CB80
#data 0x604362E2
#data 0xD3210009
#data 0x430B9134
#data 0x7220

loc_8c19D33A:
#data 0x4F26
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x0009000B
;-------------------------------------------------------------------------------
#data 0x6312D115
#data 0x60307320
#data 0x000BC9FE
#data 0xD1122300
#data 0x73206312
#data 0xCB016030
#data 0x2300000B
;-------------------------------------------------------------------------------
#data 0x6012D10E
#data 0x6000703C
#data 0x0029C820
#data 0x000B70FF
#data 0x600B
;-------------------------------------------------------------------------------

loc_8c19D37A:
mov.l @(loc_8c19D3A4,pc),r3 ; r3 set to 0x8C347970
mov.l @r3,r0
add 0x3C,r0
mov.b @r0,r0
tst 0x10,r0
movt r0
add 0xFF,r0
rts
neg r0,r0
;-------------------------------------------------------------------------------
#data 0x6032D305
#data 0x6000703C
#data 0x0029C880
#data 0x000B70FF
#data 0x600B
;-------------------------------------------------------------------------------

loc_8c19D39E:
#data 0x04C4
#data 0x00000701

#align4
loc_8c19D3A4:
#data 0x8C347970

#align4
loc_8c19D3A8:
#data 0x8C347A18

#align4
loc_8c19D3AC:
#data bank1b.loc_8c1b3EEC

loc_8c19D3B0:
#data bank1a.loc_8c1a003E

loc_8c19D3B4:
#data bank1b.loc_8c1b3F0C

loc_8c19D3B8:
#data bank13.loc_8c130ECC

loc_8c19D3BC:
#data 0xE0482FE6
#data 0x2FC62FD6
#data 0x2FA62FB6
#data 0x2F862F96
#data 0x4F22DE43
#data 0x7FFC6DE2
#data 0x927803DC
#data 0x3320633C
#data 0x94758B1B
#data 0xE501B70A
#data 0x31DCE148
#data 0x63E22100
#data 0x023CE048
#data 0x622C936D
#data 0x8B033230
#data 0xE601946A
#data 0xE500B786

#align4
loc_8c19D400:
#data 0xE04863E2
#data 0x9364023C
#data 0x3230622C
#data 0x945F8B03
#data 0xB77BE601
#data 0xE505

loc_8c19D416:
#data 0x955D
#data 0x4A0BDA31
#data 0x985A64F3
#data 0xDC31DB30
#data 0xDD316983
#data 0x79EC

loc_8c19D42A:
#data 0x63E2
#data 0x60307314
#data 0x2300C9F7
#data 0x842C62E2
#data 0x802CC9F7
#data 0x732463E2
#data 0xC9FE6030
#data 0x63E22300
#data 0x60307324
#data 0x2300C9FB
#data 0x735463E2
#data 0xC9FD6030
#data 0x63E22300
#data 0x6030731C
#data 0x2300CB08
#data 0xE14860E2
#data 0x001C9336
#data 0xC9F0600C
#data 0x8B513030
#data 0x727C62E2
#data 0xCB016020
#data 0xD4192200
#data 0xE50A4A0B
#data 0x0009A007

#align4
loc_8c19D488:
#data 0x64B24D0B
#data 0x2008600E
#data 0xA0618901
#data 0x6493

loc_8c19D496:
#data 0x60E2
#data 0x001CE150
#data 0x8843600C
#data 0xE2008BF2
#data 0x2F26E543
#data 0xE601D311
#data 0x430B6723
#data 0x600E6463
#data 0x8F032008
#data 0x940E7F04
#data 0x0009A04C

#align4
loc_8c19D4C0:
#data 0x4A0BD408
#data 0xA01CE50A
#data 0x00AA0009
#data 0x00C10309
#data 0x00CE02E3
#data 0x04EC00C8
#data 0x04E200C0
#data 0x8C347970

#align4
loc_8c19D4E0:
#data bank1b.loc_8c1b3EEC
#data 0x8C347A18

#align4
loc_8c19D4E8:
#data bank1a.loc_8c1a003E

loc_8c19D4EC:
#data bank1b.loc_8c1b3F0C

loc_8c19D4F0:
#data bank1b.loc_8c1b31DA

loc_8c19D4F4:
#data 0x64B24D0B
#data 0x2008600E
#data 0xA02B8901
#data 0x6483

loc_8c19D502:
#data 0x62E2
#data 0x00096023
#data 0x6000707C
#data 0x600CC901
#data 0x8BEF2008
#data 0x0009A003

#align4
loc_8c19D518:
#data 0x420BD23C
#data 0x0009

loc_8c19D51E:
#data 0x63E2
#data 0x60307324
#data 0x2300CB04
#data 0x732063E2
#data 0xCB016030
#data 0x63E22300
#data 0x60307324
#data 0x2300CB01
#data 0x4A0BD434
#data 0xE506

loc_8c19D542:
#data 0x4D0B
#data 0x600E64B2
#data 0x89FA2008
#data 0x64F24D0B
#data 0x2008600E
#data 0x94578904

#align4
loc_8c19D558:
#data 0x00094C0B
#data 0x0009A007

#align4
loc_8c19D560:
#data 0x703C60E2
#data 0xC8106000
#data 0xAF5E8B01
#data 0x0009

loc_8c19D56E:
#data 0x7F04
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c19D582:
mov.l r8,@-r15
mov r4,r8
sts.l pr,@-r15
add 0xFC,r15
mov.l r4,@r15
mov.w @(loc_8c19D60A,pc),r4 ; r4 set to 0xA7
bsr loc_8c19E1F8
mov 0x02,r5 ; r5 set to 0x02
mov.w r0,@r8
mov.l @(loc_8c19D614,pc),r3 ; r3 set to 0x8C347970
mov.l @r3,r0
add 0x3C,r0
mov.b @r0,r0
tst 0x20,r0
bt loc_8c19D5B4
bsr loc_8c19CD7A
nop
exts.b r0,r0
tst r0,r0
bt loc_8c19D5B4
add 0x04,r15
lds.l @r15+,pr
mov 0x01,r0 ; r0 set to 0x01
rts
mov.l @r15+,r8
;-------------------------------------------------------------------------------

loc_8c19D5B4:
mov 0x00,r0 ; r0 set to 0x00
add 0x04,r15
lds.l @r15+,pr
rts
mov.l @r15+,r8
;-------------------------------------------------------------------------------
#data 0xD315
#data 0x711C6132
#data 0xC9F76010
#data 0x2100A7CB


loc_8c19D5CC:
mov.l @(loc_8c19D614,pc),r4 ; r4 set to 0x8C347970
mov.l @r4,r3
add 0x1C,r3
mov.b @r3,r0
or 0x80,r0
mov.b r0,@r3
mov.l @r4,r2
mov.b @(0x08,r2),r0
or 0x01,r0
mov.b r0,@(0x08,r2)
mov.l @(loc_8c19D618,pc),r3 ; r3 set to 0x8C347975
mov.b @r3,r0
or 0x80,r0
rts
mov.b r0,@r3
;-------------------------------------------------------------------------------

loc_8c19D5EA:
mov.l @(loc_8c19D614,pc),r4 ; r4 set to 0x8C347970
mov.l @r4,r3
add 0x1C,r3
mov.b @r3,r0
and 0x7F,r0
mov.b r0,@r3
mov.l @r4,r2
mov.b @(0x08,r2),r0
and 0xFE,r0
mov.b r0,@(0x08,r2)
mov.l @(loc_8c19D618,pc),r3 ; r3 set to 0x8C347975
mov.b @r3,r0
and 0x7F,r0
rts
mov.b r0,@r3
;-------------------------------------------------------------------------------
#data 0x04F6

loc_8c19D60A:
#data 0x00A7

#align4
loc_8c19D60C:
#data loc_8c19E562
#data 0x8C347A18

#align4
loc_8c19D614:
#data 0x8C347970

#align4
loc_8c19D618:
#data 0x8C347975

#align4
loc_8c19D61C:
#data 0x2F862FE6
#data 0x4F22DE3A
#data 0x840860E2
#data 0xC901D339
#data 0x62E22300
#data 0xC9FE8428
#data 0x61E28028
#data 0x021CE048
#data 0x622C915F
#data 0x890B3210
#data 0x032C62E2
#data 0x633C925A
#data 0x89053320
#data 0xE14860E2
#data 0x600C001C
#data 0x8B058852

#align4
loc_8c19D65C:
#data 0x731C63E2
#data 0xCB406030
#data 0x2300A021

#align4
loc_8c19D668:
#data 0xC9F0934B
#data 0x8B083030
#data 0x420BD228
#data 0xD3280009
#data 0x680C430B
#data 0x3800600C
#data 0x8B13

loc_8c19D682:
#data 0x943F
#data 0xB641E602
#data 0x943DE510
#data 0xB63D953B
#data 0xD322E602
#data 0x2320E204
#data 0x712061E2
#data 0xCB046010
#data 0x62E22100
#data 0xCB028428
#data 0x8028

loc_8c19D6AA:
#data 0x4F26
#data 0x000B68F6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c19D6B2:
mov.l r8,@-r15
mov r4,r3
sts.l pr,@-r15
mov 0x00,r2 ; r2 set to 0x00
add 0xFC,r15
mov.l r4,@r15
mov.w r2,@r3
mov.l @(loc_8c19D71C,pc),r5 ; r5 set to 0x8C3479A1
mov.l @(loc_8c19D70C,pc),r7 ; r7 set to 0x8C347970
mov.b @r5,r6
extu.b r6,r6
tst r6,r6
bf/s loc_8c19D6EA
mov.l @r7,r4
mov r4,r0
nop
add 0x3C,r0
mov.b @r0,r0
tst 0x04,r0
bt loc_8c19D78E
mov r4,r0
nop
add 0x3C,r0
mov.b @r0,r0
tst 0x20,r0
bf loc_8c19D768
bra loc_8c19D78E
nop

loc_8c19D6EA:
mov r6,r0
nop
cmp/eq 0x02,r0
bt loc_8c19D754
cmp/eq 0x04,r0
bt loc_8c19D720
cmp/eq 0x08,r0
bt loc_8c19D772
bra loc_8c19D78E
nop
#data 0x0084
#data 0x00C00082
#data 0x01000A0F
#data 0x00000B0F

#align4
loc_8c19D70C:
#data 0x8C347970
#data 0x8C3479A6

#align4
loc_8c19D714:
#data loc_8c19FD02

loc_8c19D718:
#data loc_8c19FD58

loc_8c19D71C:
#data 0x8C3479A1


loc_8c19D720:
mov r4,r0
nop
add 0x20,r0
mov.b @r0,r0
tst 0x04,r0
bf loc_8c19D78E
mov r4,r0
nop
add 0x3C,r0
mov.b @r0,r0
and 0x01,r0
extu.b r0,r0
tst r0,r0
bt loc_8c19D78E
mov 0x02,r2 ; r2 set to 0x02
mov.b r2,@r5
mov.l @r7,r2 ; r2 ??? bc r7 is ???
mov.b @(0x08,r2),r0
and 0xFD,r0
mov.b r0,@(0x08,r2)
mov.l @r7,r3
add 0x3C,r3
mov.b @r3,r0
and 0xFE,r0
bra loc_8c19D78E
mov.b r0,@r3

#align4
loc_8c19D754:
#data 0x00096043
#data 0xC8208408
#data 0x94648904
#data 0xB54968F2
#data 0x2801E502


loc_8c19D768:
add 0x04,r15
lds.l @r15+,pr
mov 0x02,r0 ; r0 set to 0x02
rts
mov.l @r15+,r8
;-------------------------------------------------------------------------------

loc_8c19D772:
mov r4,r0
nop
add 0x20,r0
mov.b @r0,r0
tst 0x10,r0
bf loc_8c19D784
mov 0x00,r1 ; r1 set to 0x00
bra loc_8c19D78E
mov.b r1,@r5

loc_8c19D784:
add 0x04,r15
lds.l @r15+,pr
mov 0x01,r0 ; r0 set to 0x01
rts
mov.l @r15+,r8
;-------------------------------------------------------------------------------

loc_8c19D78E:
mov 0x00,r0 ; r0 set to 0x00
add 0x04,r15
lds.l @r15+,pr
rts
mov.l @r15+,r8
;-------------------------------------------------------------------------------

loc_8c19D798:
mov.l r14,@-r15
mov.l @(loc_8c19D838,pc),r14 ; r14 set to 0x8C347970
sts.l pr,@-r15
mov.l @r14,r2
mov.b @(0x08,r2),r0
and 0xDF,r0
mov.b r0,@(0x08,r2)
mov.l @(loc_8c19D83C,pc),r1 ; r1 set to 0x8C3479A6
mov.l @(loc_8c19D840,pc),r3 ; r3 set to 0x8C130ECC
mov.b @r1,r0
mov.w @(loc_8c19D82C,pc),r1 ; r1 set to 0x701
mov.l @r14,r2
jsr @r3
add 0x08,r2
mov.w @(loc_8c19D82E,pc),r4 ; r4 set to 0xA0F
mov 0x02,r6 ; r6 set to 0x02
bsr loc_8c19E30C
mov r6,r5 ; r5 set to 0x02
mov.w @(loc_8c19D830,pc),r4 ; r4 set to 0xB0F
mov 0x02,r6 ; r6 set to 0x02
bsr loc_8c19E30C
mov 0x10,r5 ; r5 set to 0x10
mov.w @(loc_8c19D832,pc),r4 ; r4 set to 0xA5
mov 0x01,r6 ; r6 set to 0x01
bsr loc_8c19E30C
mov 0x00,r5 ; r5 set to 0x00
mov.l @(loc_8c19D844,pc),r4 ; r4 set to 0x8C3479A1
mov.b @r4,r2
tst r2,r2
bt loc_8c19D7E2
mov 0x08,r3 ; r3 set to 0x08
mov.b r3,@r4 ; r4 ??
mov.l @r14,r3 ; r3 ??
add 0x20,r3
mov.b @r3,r0
bra loc_8c19D7EC
or 0x10,r0

loc_8c19D7E2:
mov.l @r14,r2
mov r2,r3
add 0x1C,r3
mov.b @r3,r0
and 0xBF,r0

loc_8c19D7EC:
mov.b r0,@r3
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c19D7F4:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l @(loc_8c19D838,pc),r1 ; r1 set to 0x8C347970
sts.l pr,@-r15
mov.l @r1,r2
mov.b @(0x08,r2),r0
or 0x20,r0
mov.b r0,@(0x08,r2)
mov.l @(loc_8c19D84C,pc),r3 ; r3 set to 0x8C1B3EEC
mov.l @(loc_8c19D848,pc),r4 ; r4 set to 0x8C347A18
jsr @r3
mov 0x0A,r5 ; r5 set to 0x0A
mov.l @(loc_8c19D848,pc),r14 ; r14 set to 0x8C347A18
mov.l @(loc_8c19D850,pc),r13 ; r13 set to 0x8C1B3F0C

loc_8c19D810:
jsr @r13
mov.l @r14,r4 ; r4 ??
exts.b r0,r0
tst r0,r0
bt loc_8c19D810
lds.l @r15+,pr
mov.w @(loc_8c19D834,pc),r5 ; r5 set to 0xFF, r5 set to 0xFF
mov 0x01,r6 ; r6 set to 0x01, r6 set to 0x01
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
mov r5,r4 ; r4 set to 0xFF, r4 set to 0xFF
add 0xA6,r4 ; r4 set to 0xA5, r4 set to 0xA5
bra loc_8c19E30C
mov.l @r15+,r14
#data 0x00A7

loc_8c19D82C:
#data 0x0701

loc_8c19D82E:
#data 0x0A0F

loc_8c19D830:
#data 0x0B0F

loc_8c19D832:
#data 0x00A5

loc_8c19D834:
#data 0x00FF
#data 0x0000

#align4
loc_8c19D838:
#data 0x8C347970

#align4
loc_8c19D83C:
#data 0x8C3479A6

#align4
loc_8c19D840:
#data bank13.loc_8c130ECC

loc_8c19D844:
#data 0x8C3479A1

#align4
loc_8c19D848:
#data 0x8C347A18

#align4
loc_8c19D84C:
#data bank1b.loc_8c1b3EEC

loc_8c19D850:
#data bank1b.loc_8c1b3F0C


loc_8c19D854:
mov.l @(loc_8c19D95C,pc),r4 ; r4 set to 0x8C347970
sts.l pr,@-r15
mov.l @r4,r0
add 0x4C,r0
mov.b @r0,r0
mov.l @(loc_8c19D960,pc),r3 ; r3 set to 0x8C3479A7
and 0x03,r0
mov.b r0,@r3 ; r3 ??? bc r0 is ???
mov.l @r4,r0
add 0x20,r0
mov.b @r0,r0
mov.l @r4,r1
and 0x01,r0
mov r0,r5
add 0x20,r1
mov.b @r1,r0
and 0xFE,r0
mov.b r0,@r1
mov.l @r4,r1
add 0x4C,r1
mov.b @r1,r0
and 0xFC,r0
or 0x03,r0
mov.b r0,@r1
mov.l @r4,r2
mov r5,r0
nop
mov.l @(loc_8c19D964,pc),r3 ; r3 set to 0x8C130ECC
mov.w @(loc_8c19D954,pc),r1 ; r1 set to 0x701
jsr @r3
add 0x20,r2
mov.l @r4,r3 ; r3 ??
add 0x1C,r3
mov.b @r3,r0
lds.l @r15+,pr
or 0x20,r0
rts
mov.b r0,@r3
;-------------------------------------------------------------------------------

loc_8c19D8A0:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l @(loc_8c19D95C,pc),r14 ; r14 set to 0x8C347970
sts.l pr,@-r15
mov.l @r14,r3
add 0x1C,r3
mov.b @r3,r0
and 0xDF,r0
mov.b r0,@r3
mov.l @(loc_8c19D96C,pc),r2 ; r2 set to 0x8C1B3EEC
mov.l @(loc_8c19D968,pc),r4 ; r4 set to 0x8C347A18
jsr @r2
mov 0x32,r5 ; r5 set to 0x32
mov.l @(loc_8c19D968,pc),r12 ; r12 set to 0x8C347A18
mov.w @(loc_8c19D956,pc),r13 ; r13 set to 0x50A
mov.l @(loc_8c19D970,pc),r10 ; r10 set to 0x8C1A003E
mov.l @(loc_8c19D974,pc),r11 ; r11 set to 0x8C1B3F0C
bra loc_8c19D8DE
nop

#align4
loc_8c19D8CC:
#data 0x64C24B0B
#data 0x2008600E
#data 0x4A0B8903
#data 0xA01D64D3
#data 0x0009

loc_8c19D8DE:
#data 0x60E2
#data 0x6000703C
#data 0x8BF1C804
#data 0x702060E2
#data 0x63E26000
#data 0x6403C901
#data 0x60307320
#data 0x2300C9FE
#data 0xD319D118
#data 0x91296010
#data 0x430B62E2
#data 0x62E2724C
#data 0x00096043
#data 0x911FD314
#data 0x7220430B

#align4
loc_8c19D918:
#data 0x6AF64F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c19D926:
mov.l @(loc_8c19D978,pc),r0 ; r0 set to 0x8C347975
sts.l pr,@-r15
mov.b @r0,r0 ; r0 ??
tst 0x80,r0
bf loc_8c19D934
bra loc_8c19DA44
nop

loc_8c19D934:
mov.l @(loc_8c19D980,pc),r5 ; r5 set to 0x8C3479A1
mov.l @(loc_8c19D95C,pc),r6 ; r6 set to 0x8C347970
mov.b @r5,r0
mov.l @(loc_8c19D97C,pc),r7 ; r7 set to 0x8C3479A6
extu.b r0,r0
cmp/eq 0x00,r0
bt/s loc_8c19D984
mov.l @r6,r4
cmp/eq 0x05,r0
bt loc_8c19D9C8
cmp/eq 0x06,r0
bt loc_8c19D9F2
cmp/eq 0x07,r0
bt loc_8c19DA26
bra loc_8c19DA44
nop

loc_8c19D954:
#data 0x0701

loc_8c19D956:
#data 0x050A
#data 0x00000602

#align4
loc_8c19D95C:
#data 0x8C347970

#align4
loc_8c19D960:
#data 0x8C3479A7

#align4
loc_8c19D964:
#data bank13.loc_8c130ECC

loc_8c19D968:
#data 0x8C347A18

#align4
loc_8c19D96C:
#data bank1b.loc_8c1b3EEC

loc_8c19D970:
#data bank1a.loc_8c1a003E

loc_8c19D974:
#data bank1b.loc_8c1b3F0C

loc_8c19D978:
#data 0x8C347975

#align4
loc_8c19D97C:
#data 0x8C3479A6

#align4
loc_8c19D980:
#data 0x8C3479A1


loc_8c19D984:
mov r4,r0
nop
add 0x3C,r0
mov.b @r0,r0
and 0x01,r0
extu.b r0,r0
tst r0,r0
bt loc_8c19D9B6
mov r4,r0
nop
mov.b @(0x08,r0),r0
and 0x01,r0
mov.b r0,@r7
mov.l @r6,r2
mov.b @(0x08,r2),r0
and 0xFE,r0
mov.b r0,@(0x08,r2)
mov.l @r6,r3
add 0x20,r3
mov.b @r3,r0
or 0x08,r0
mov.b r0,@r3
mov 0x05,r2 ; r2 set to 0x05
bra loc_8c19D9EC
mov.b r2,@r5

loc_8c19D9B6:
mov r4,r0
nop
add 0x3C,r0
mov.b @r0,r0
tst 0x04,r0
bt loc_8c19DA44
mov 0x07,r1 ; r1 set to 0x07
bra loc_8c19DA3A
mov.b r1,@r5

loc_8c19D9C8:
mov r4,r0
nop
add 0x20,r0
mov.b @r0,r0
tst 0x08,r0
bf loc_8c19D9EC
mov r4,r1
add 0x3C,r1
mov.b @r1,r0
and 0xFE,r0
mov.b r0,@r1
mov.l @r6,r2
mov.b @(0x08,r2),r0
or 0x04,r0
mov.b r0,@(0x08,r2)
mov 0x06,r3 ; r3 set to 0x06
bra loc_8c19DA3A
mov.b r3,@r5

loc_8c19D9EC:
lds.l @r15+,pr
rts
mov 0x01,r0
;-------------------------------------------------------------------------------

loc_8c19D9F2:
mov r4,r0
nop
add 0x3C,r0
mov.b @r0,r0
and 0x01,r0
extu.b r0,r0
tst r0,r0
bt loc_8c19DA3A
mov.b @(0x08,r4),r0
and 0xFB,r0
mov.b r0,@(0x08,r4)
mov.l @r6,r3
add 0x3C,r3
mov.b @r3,r0
and 0xFE,r0
mov.b r0,@r3
mov 0x00,r2 ; r2 set to 0x00
mov.b r2,@r5
mov.w @(loc_8c19DA98,pc),r1 ; r1 set to 0x701
mov.l @(loc_8c19DA9C,pc),r3 ; r3 set to 0x8C130ECC
mov.l @r6,r2 ; r2 ??? bc r6 is ???
mov.b @r7,r0
jsr @r3
add 0x08,r2
bra loc_8c19DA44
nop

loc_8c19DA26:
#data 0x6043
#data 0x703C0009
#data 0xC8046000
#data 0x70FF0029
#data 0x8801600B
#data 0x8B02


loc_8c19DA3A:
lds.l @r15+,pr
rts
mov 0x02,r0
;-------------------------------------------------------------------------------

#align4
loc_8c19DA40:
#data 0x2530E300


loc_8c19DA44:
mov 0x00,r0 ; r0 set to 0x00
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c19DA4C:
sts.l pr,@-r15
mov.l @(loc_8c19DAA0,pc),r3 ; r3 set to 0x8C19ED64
add 0xFC,r15
jsr @r3
nop
mov.l @(loc_8c19DAA4,pc),r3 ; r3 set to 0x8C347970
mov.l @r3,r1
add 0x54,r1
mov.b @r1,r0
and 0xFE,r0
mov.b r0,@r1
mov.w @(loc_8c19DA9A,pc),r4 ; r4 set to 0x680
bsr loc_8c19E1F8
mov 0x01,r5 ; r5 set to 0x01
mov.b r0,@r15
mov 0x20,r5 ; r5 set to 0x20
mov.w @(loc_8c19DA9A,pc),r4 ; r4 set to 0x680
mov 0x01,r6 ; r6 set to 0x01
extu.b r0,r0
bsr loc_8c19E30C
or r0,r5 ; r5 ??? bc r0 is ???
mov.l @(loc_8c19DAA4,pc),r3 ; r3 set to 0x8C347970
mov.l @r3,r1
add 0x20,r1
mov.b @r1,r0
or 0x02,r0
mov.b r0,@r1
mov.l @(loc_8c19DAA8,pc),r4 ; r4 set to 0x8C347974
add 0x04,r15
lds.l @r15+,pr
mov.b @r4,r0
and 0xBF,r0
mov.b r0,@r4 ; r4 ??? bc r0 is ???
mov.b @r4,r0
or 0x20,r0
mov.b r0,@r4
rts
nop
;-------------------------------------------------------------------------------

loc_8c19DA98:
#data 0x0701

loc_8c19DA9A:
#data 0x0680

#align4
loc_8c19DA9C:
#data bank13.loc_8c130ECC

loc_8c19DAA0:
#data loc_8c19ED64

loc_8c19DAA4:
#data 0x8C347970

#align4
loc_8c19DAA8:
#data 0x8C347974

#align4
loc_8c19DAAC:
#data 0xE0102FE6
#data 0x7FE04F22
#data 0xE0180F44
#data 0x60630F54
#data 0x80FC0009
#data 0x0F74E014
#data 0xB397948F
#data 0x61F3E501
#data 0x650C711C
#data 0xD3462100
#data 0x9486E601
#data 0x2539B418
#data 0x430BD344
#data 0x65F30009
#data 0x66F3D243
#data 0x760864F3
#data 0x420B7508
#data 0x63F37404
#data 0x2F36E018
#data 0xE01402FC
#data 0x07FC2F26
#data 0x06FCE020
#data 0xD33CE018
#data 0x430B05FC
#data 0xD33B54F3
#data 0x2320E200
#data 0x6242D43A
#data 0x24227201
#data 0x64E2DE39
#data 0x00096043
#data 0x60007054
#data 0x600CC901
#data 0x8F032008
#data 0x62F07F08
#data 0x0424E048

#align4
loc_8c19DB38:
#data 0x732063E2
#data 0xCB026030
#data 0xD4312300
#data 0xCB406040
#data 0x60402400
#data 0x2400C9DF
#data 0xCB106040
#data 0x63E22400
#data 0x60307314
#data 0xC97FD22B
#data 0x2300420B
#data 0xE04863E2
#data 0x953DD429
#data 0x622C023C
#data 0x32502259
#data 0x84418B03
#data 0xA00BCB80
#data 0x8041

loc_8c19DB7E:
#data 0x60E2
#data 0x9332E148
#data 0x600C001C
#data 0x3030C9F0
#data 0x60408B02
#data 0x2400CB01

#align4
loc_8c19DB94:
#data 0x4F267F20
#data 0x6EF6000B
;-------------------------------------------------------------------------------

loc_8c19DB9C:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.w @(loc_8c19DBE6,pc),r4 ; r4 set to 0x680
add 0xF0,r15
bsr loc_8c19E1F8
mov 0x01,r5 ; r5 set to 0x01
extu.b r0,r5 ; r5 ??? bc r0 is ???
mov.b r0,@(0x0C,r15)
mov.l @(loc_8c19DBEC,pc),r3 ; r3 set to 0xFFDF
mov 0x01,r6 ; r6 set to 0x01
mov.w @(loc_8c19DBE6,pc),r4 ; r4 set to 0x680
bsr loc_8c19E30C
and r3,r5
mov.l @(loc_8c19DBF0,pc),r3 ; r3 set to 0x8C19ED64
jsr @r3
nop
mov r15,r5
mov.l @(loc_8c19DBF4,pc),r2 ; r2 set to 0x8C19C378
mov r15,r6 ; r6 ??? bc r15 is ???
add 0x08,r5
add 0x08,r6
jsr @r2
mov r15,r4 ; r4 ??? bc r15 is ???
mov.l @r15,r0
cmp/eq 0x40,r0
bf loc_8c19DC14
mov r15,r2 ; r2 ??? bc r15 is ???
add 0x04,r2
mov.l r2,@-r15
mov r13,r6
mov r14,r7
mov.l r13,@-r15
bra loc_8c19DC22
mov r14,r5

loc_8c19DBE6:
#data 0x0680
#data 0x009000E0

#align4
loc_8c19DBEC:
#data 0x0000FFDF

#align4
loc_8c19DBF0:
#data loc_8c19ED64

loc_8c19DBF4:
#data loc_8c19C378

loc_8c19DBF8:
#data loc_8c19B5BE
#data 0x8C34797E
#data 0x8C3479F8
#data 0x8C347970
#data 0x8C347974

#align4
loc_8c19DC0C:
#data bank1b.loc_8c1b0E88
#data 0x8C347979

#align4
loc_8c19DC14:
#data 0x730463F3
#data 0xE6202F36
#data 0x2FD6E500
#data 0x67E3

loc_8c19DC22:
#data 0xD343
#data 0x54F2430B
#data 0xE200D342
#data 0x23207F08
#data 0x6242D441
#data 0x24227201
#data 0x62F29176
#data 0x3210D43F
#data 0x60F28914
#data 0x30209271
#data 0x60F28910
#data 0x3030936E
#data 0x60F2890C
#data 0x89098840
#data 0x6000D039
#data 0x600CC901
#data 0x8B032008
#data 0x6000D037
#data 0x8905C880

#align4
loc_8c19DC6C:
#data 0x63236242
#data 0x60307354
#data 0x2300C9FE

#align4
loc_8c19DC78:
#data 0x60536542
#data 0x70540009
#data 0xC9016000
#data 0x2008600C
#data 0xE1488B03
#data 0x315C84F4
#data 0x2100

loc_8c19DC92:
#data 0x6342
#data 0x60307354
#data 0x2300CB04
#data 0x7F10D42A
#data 0x60404F26
#data 0x2400C9BF
#data 0xCB206040
#data 0x60402400
#data 0x2400C9FB
#data 0xCB086040
#data 0xD4212400
#data 0xC9DF8443
#data 0x84438043
#data 0x8043C9FD
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c19DCCE:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l @(loc_8c19DD3C,pc),r13 ; r13 set to 0x8C347970
sts.l pr,@-r15
mov.l @r13,r5
mov.l @(loc_8c19DD48,pc),r4 ; r4 set to 0x8C347974
mov.l @(loc_8c19DD40,pc),r14 ; r14 set to 0x8C347979
mov r5,r0
nop
add 0x38,r0
mov.b @r0,r0
tst 0x80,r0
bt loc_8c19DD6E
mov.l @(loc_8c19DD4C,pc),r5 ; r5 set to 0x8C347A00
mov.l @r5,r3
add 0x01,r3
mov.l r3,@r5 ; r5 ??? bc r3 is ???
mov.b @r4,r0
or 0x40,r0
mov.b r0,@r4 ; r4 ??? bc r0 is ???
mov.b @r4,r0
and 0xDF,r0
mov.b r0,@r4
mov.b @r4,r0
and 0xEF,r0
mov.b r0,@r4
mov.l @r13,r3
add 0x14,r3
mov.b @r3,r0
mov.l @(loc_8c19DD50,pc),r2 ; r2 set to 0x8C1B0E88
and 0x7F,r0
jsr @r2
mov.b r0,@r3
mov.l @r13,r3
mov 0x48,r0 ; r0 set to 0x48
mov.w @(loc_8c19DD2E,pc),r4 ; r4 set to 0xE0
mov.b @(r0,r3),r2 ; r2 ??? bc r3 is ???
extu.b r2,r2
and r4,r2
cmp/eq r4,r2
bf loc_8c19DD54
mov.b @(0x01,r14),r0
or 0x80,r0
bra loc_8c19DD6A
mov.b r0,@(0x01,r14)
#data 0x02000100
#data 0x0080

loc_8c19DD2E:
#data 0x00E0

#align4
loc_8c19DD30:
#data loc_8c19B5BE
#data 0x8C34797E
#data 0x8C3479FC

#align4
loc_8c19DD3C:
#data 0x8C347970

#align4
loc_8c19DD40:
#data 0x8C347979
#data 0x8C34797A

#align4
loc_8c19DD48:
#data 0x8C347974

#align4
loc_8c19DD4C:
#data 0x8C347A00

#align4
loc_8c19DD50:
#data bank1b.loc_8c1b0E88

loc_8c19DD54:
#data 0xE14860D2
#data 0x001C938C
#data 0xC9F0600C
#data 0x8B023030
#data 0xCB0160E0
#data 0x2E00


loc_8c19DD6A:
bra loc_8c19DDAE
mov 0x01,r13

loc_8c19DD6E:
mov r5,r0
nop
add 0x38,r0
mov.b @r0,r0
tst 0x20,r0
bt loc_8c19DDAA
mov.l @(loc_8c19DE80,pc),r5 ; r5 set to 0x8C347A04
mov 0x02,r13 ; r13 set to 0x02
mov.l @r5,r2
add 0x01,r2
mov.l r2,@r5 ; r5 ??? bc r2 is ???
mov.b @r4,r0
and 0xBF,r0
mov.b r0,@r4
mov.b @r4,r0
or 0x20,r0
mov.b r0,@r4
mov.b @r4,r0
and 0xFB,r0
mov.b r0,@r4
mov.b @r4,r0
and 0xF7,r0
mov.b r0,@r4
mov.b @(0x03,r14),r0
and 0xDF,r0
mov.b r0,@(0x03,r14)
mov.b @(0x03,r14),r0
and 0xFD,r0
bra loc_8c19DDAE
mov.b r0,@(0x03,r14)

loc_8c19DDAA:
bra loc_8c19DDBE
mov 0x00,r0

loc_8c19DDAE:
#data 0xD235
#data 0x0009420B
#data 0xE300D234
#data 0x60D32230
#data 0x0009


loc_8c19DDBE:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c19DDC6:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
sts.l pr,@-r15
mov.l @(loc_8c19DE8C,pc),r3 ; r3 set to 0x8C1B2888
add 0xFC,r15
jsr @r3
nop
mov.l @(loc_8c19DE90,pc),r14 ; r14 set to 0x8C347970
mov 0x48,r0 ; r0 set to 0x48
mov.w @(loc_8c19DE76,pc),r13 ; r13 set to 0xE0
mov.l @r14,r4
mov.b @(r0,r4),r2
extu.b r2,r2
cmp/eq r13,r2
bf loc_8c19DDEE
bra loc_8c19E150
nop

loc_8c19DDEE:
mov.l @r14,r2
mov.b @(r0,r2),r3
mov.w @(loc_8c19DE74,pc),r2 ; r2 set to 0x90
extu.b r3,r3
cmp/eq r2,r3
bf loc_8c19DDFE
bra loc_8c19E150
nop

loc_8c19DDFE:
mov.l @r14,r0
mov 0x48,r1 ; r1 set to 0x48
mov.b @(r0,r1),r0
extu.b r0,r0
cmp/eq 0x70,r0
bf loc_8c19DE0E
bra loc_8c19E150
nop

loc_8c19DE0E:
mov.l @r14,r0
mov 0x48,r3 ; r3 set to 0x48
mov.w @(loc_8c19DE78,pc),r2 ; r2 set to 0xAF
mov.b @(r0,r3),r3 ; r3 ??
extu.b r3,r3
cmp/eq r2,r3
bf loc_8c19DE20
bra loc_8c19E150
nop

loc_8c19DE20:
mov.l @r14,r0
mov 0x48,r3 ; r3 set to 0x48
mov.w @(loc_8c19DE7A,pc),r2 ; r2 set to 0xC0
mov.b @(r0,r3),r3 ; r3 ??
extu.b r3,r3
cmp/eq r2,r3
bf loc_8c19DE32
bra loc_8c19E150
nop

loc_8c19DE32:
mov.l @r14,r0
mov 0x48,r3 ; r3 set to 0x48
mov.b @(r0,r3),r0
extu.b r0,r0
cmp/eq 0x40,r0
bf loc_8c19DE42
bra loc_8c19E150
nop

loc_8c19DE42:
mov.l @(loc_8c19DE98,pc),r12 ; r12 set to 0x8C347974
mov.w @(loc_8c19DE7C,pc),r11 ; r11 set to 0xF0
mov.l @(loc_8c19DE94,pc),r10 ; r10 set to 0x8C1B3EEC
mov r12,r0 ; r0 set to 0x8C347974
nop
mov.b @r0,r0 ; r0 ??
tst 0x40,r0
bf loc_8c19DE56
bra loc_8c19E068
nop

loc_8c19DE56:
mov 0x48,r0 ; r0 set to 0x48
mov.b @(r0,r4),r1
extu.b r1,r1
and r13,r1
cmp/eq r13,r1
bf loc_8c19DEA4
mov.l @(loc_8c19DE9C,pc),r0 ; r0 set to 0x8C34797A
mov.b @r0,r0 ; r0 ??
tst 0x20,r0
bf loc_8c19DEA4
mov.l @(loc_8c19DEA0,pc),r1 ; r1 set to 0x8C1B1118
jsr @r1
nop
bra loc_8c19DF1C
nop

loc_8c19DE74:
#data 0x0090

loc_8c19DE76:
#data 0x00E0

loc_8c19DE78:
#data 0x00AF

loc_8c19DE7A:
#data 0x00C0

loc_8c19DE7C:
#data 0x00F0
#data 0x0000

#align4
loc_8c19DE80:
#data 0x8C347A04

#align4
loc_8c19DE84:
#data loc_8c19ED64
#data 0x8C34797E

#align4
loc_8c19DE8C:
#data bank1b.loc_8c1b2888

loc_8c19DE90:
#data 0x8C347970

#align4
loc_8c19DE94:
#data bank1b.loc_8c1b3EEC

loc_8c19DE98:
#data 0x8C347974

#align4
loc_8c19DE9C:
#data 0x8C34797A

#align4
loc_8c19DEA0:
#data bank1b.loc_8c1b1118


loc_8c19DEA4:
mov 0x48,r0 ; r0 set to 0x48
mov.b @(r0,r4),r1
mov.w @(loc_8c19DEEC,pc),r3 ; r3 set to 0x90
extu.b r1,r1
and r11,r1
cmp/eq r3,r1
bf loc_8c19DEC4
mov.l @(loc_8c19DEF0,pc),r0 ; r0 set to 0x8C34797A
mov.b @r0,r0 ; r0 ??
tst 0x40,r0
bf loc_8c19DEC4
mov.l @(loc_8c19DEF4,pc),r3 ; r3 set to 0x8C1B17CC
jsr @r3
nop
bra loc_8c19DF1C
nop

#align4
loc_8c19DEC4:
#data 0x034CE048
#data 0x633C9211
#data 0x332023B9
#data 0xD0078907
#data 0xC8406000
#data 0xD0058B03
#data 0xC8206000
#data 0x890C

loc_8c19DEE2:
#data 0xD205
#data 0x0009420B
#data 0x0009A018

loc_8c19DEEC:
#data 0x0090
#data 0x00C0

#align4
loc_8c19DEF0:
#data 0x8C34797A

#align4
loc_8c19DEF4:
#data bank1b.loc_8c1b17CC

loc_8c19DEF8:
#data bank1b.loc_8c1b1DB8

loc_8c19DEFC:
#data 0x004CE048
#data 0x20B9600C
#data 0x8B098870
#data 0x420BD240
#data 0xD3400009
#data 0x600C6030
#data 0x8B018807
#data 0x0009A11A


loc_8c19DF1C:
mov.l @(loc_8c19E014,pc),r3 ; r3 set to 0x8C19CD7A
jsr @r3
nop
exts.b r0,r0
tst r0,r0
bf loc_8c19DF2C
bra loc_8c19E044
nop

loc_8c19DF2C:
mov.l @(loc_8c19E018,pc),r3 ; r3 set to 0x8C347970
mov.l @r3,r0
add 0x3C,r0
mov.b @r0,r0
tst 0x20,r0
bf loc_8c19DF3C
bra loc_8c19E044
nop

loc_8c19DF3C:
mov.l @r3,r0
add 0x38,r0
mov.b @r0,r0
tst 0x80,r0
bt loc_8c19DF4A
bra loc_8c19E044
nop

loc_8c19DF4A:
#data 0x62E2
#data 0x000960C3
#data 0x91528401
#data 0xD331C810
#data 0x70FF0029
#data 0x430B600B
#data 0xD22F7254
#data 0xE401420B
#data 0x430BD32E
#data 0xD22E0009
#data 0x0009420B
#data 0xD32DD22E
#data 0x6520D12E
#data 0xB47B6630
#data 0x62E26410
#data 0x032CE048
#data 0x23D9633C
#data 0x890F33D0
#data 0xE14860E2
#data 0x001C9332
#data 0xC9F0600C
#data 0x89073030
#data 0xE24860E2
#data 0x002C932B
#data 0xC9F0600C
#data 0x8B0F3030

#align4
loc_8c19DFB0:
#data 0xB1219426
#data 0xE601E501
#data 0x94222F00
#data 0x650CB1A6
#data 0xB1199420
#data 0xE601E501
#data 0x941C2F00
#data 0x650CB19E

#align4
loc_8c19DFD0:
#data 0xE04862E2
#data 0x633C032C
#data 0x33D023D9
#data 0xD0168B0B
#data 0xC8206000
#data 0xD4158B07
#data 0x4A0B950E
#data 0xD2140009
#data 0xCB206020
#data 0x2200

loc_8c19DFF6:
#data 0xA0F5
#data 0x0701E003
#data 0x00C00090
#data 0x04590600
#data 0x045B0601
#data 0x0000012C

#align4
loc_8c19E00C:
#data bank1b.loc_8c1b248E
#data 0x8C34797E

#align4
loc_8c19E014:
#data loc_8c19CD7A

loc_8c19E018:
#data 0x8C347970

#align4
loc_8c19E01C:
#data bank13.loc_8c130ECC

loc_8c19E020:
#data loc_8c19C588

loc_8c19E024:
#data loc_8c19B468

loc_8c19E028:
#data bank1b.loc_8c1b2856
#data 0x8C3479DF
#data 0x8C3479DE
#data 0x8C3479DD
#data 0x8C34797A
#data 0x8C347A10
#data 0x8C34797C


loc_8c19E044:
mov r12,r0
nop
mov.b @r0,r0
tst 0x10,r0
bt loc_8c19E0FE
mov.l @(loc_8c19E104,pc),r3 ; r3 set to 0x8C347970
mov.l @r3,r0
add 0x20,r0
mov.b @r0,r0
tst 0x02,r0
bf loc_8c19E0EC
mov r12,r0
nop
mov.b @r0,r0
tst 0x02,r0
bf loc_8c19E0FE
bra loc_8c19E0EC
nop

#align4
loc_8c19E068:
#data 0x420BD227
#data 0x600E0009
#data 0x89052008
#data 0x6032D323
#data 0x6000703C
#data 0x8B37C820

#align4
loc_8c19E080:
#data 0xE04863E2
#data 0x933C023C
#data 0x22B9622C
#data 0x89073230
#data 0x6000D01E
#data 0x8B03C840
#data 0x6000D01C
#data 0x8904C820

#align4
loc_8c19E0A0:
#data 0x430BD31B
#data 0xA00E0009
#data 0x0009

loc_8c19E0AA:
#data 0x63E2
#data 0x023CE048
#data 0x22D9622C
#data 0x8B0632D0
#data 0x6000D014
#data 0x8B02C820
#data 0x410BD114
#data 0x0009

loc_8c19E0C6:
#data 0xD414
#data 0xE5024A0B
#data 0x000960C3
#data 0xC8086000
#data 0xD10B8905
#data 0x70546012
#data 0xC8046000
#data 0x8B04

loc_8c19E0E2:
#data 0x60C3
#data 0x60000009
#data 0x8908C804


loc_8c19E0EC:
bra loc_8c19E1E4
mov 0x01,r0

#align4
loc_8c19E0F0:
#data 0xD309D20A
#data 0x6432420B
#data 0x2008600E
#data 0x8B10


loc_8c19E0FE:
bra loc_8c19E1E4
mov 0x02,r0
#data 0x00C0

#align4
loc_8c19E104:
#data 0x8C347970

#align4
loc_8c19E108:
#data loc_8c19CD7A
#data 0x8C34797A

#align4
loc_8c19E110:
#data bank1b.loc_8c1b25C4

loc_8c19E114:
#data bank1b.loc_8c1b2764
#data 0x8C3479F4

#align4
loc_8c19E11C:
#data bank1b.loc_8c1b3F0C

loc_8c19E120:
#data 0x60C362E2
#data 0x84010009
#data 0xC8109181
#data 0x0029D344
#data 0x600B70FF
#data 0x7254430B
#data 0x420BD242
#data 0x63E2E400
#data 0x60307338
#data 0x2300C9DF
#data 0x6212D13F
#data 0x8B012228


loc_8c19E150:
bra loc_8c19E1E4
mov 0x05,r0

#align4
loc_8c19E154:
#data 0x430BD33D
#data 0xD23D0009
#data 0x0009420B
#data 0xD33CD23D
#data 0x6520D13D
#data 0xB3856630
#data 0x62E26410
#data 0x032CE048
#data 0x23D9633C
#data 0x890F33D0
#data 0xE14860E2
#data 0x001C9356
#data 0xC9F0600C
#data 0x89073030
#data 0xE24860E2
#data 0x002C934F
#data 0xC9F0600C
#data 0x8B0F3030

#align4
loc_8c19E19C:
#data 0xB02B944A
#data 0xE601E501
#data 0x94462F00
#data 0x650CB0B0
#data 0xB0239444
#data 0xE601E501
#data 0x94402F00
#data 0x650CB0A8

#align4
loc_8c19E1BC:
#data 0xE04862E2
#data 0x633C032C
#data 0x33D023D9
#data 0xD0258B0B
#data 0xC8206000
#data 0xD4248B07
#data 0x4A0B9532
#data 0xD2230009
#data 0xCB206020
#data 0x2200

loc_8c19E1E2:
#data 0xE004


loc_8c19E1E4:
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x0009000B
;-------------------------------------------------------------------------------

loc_8c19E1F8:
mov.l r14,@-r15
mov r5,r0
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov.w r4,@r15
mov.l @(loc_8c19E26C,pc),r3 ; r3 set to 0x8C1A00E8
jsr @r3
mov.b r0,@(0x04,r15)
extu.b r0,r0
tst r0,r0
bf loc_8c19E2C0
mov.w @r15,r4
mov 0x40,r3 ; r3 set to 0x40
mov.l @(loc_8c19E270,pc),r14 ; r14 set to 0x8C347970
extu.w r4,r4
shlr8 r4
tst r4,r3
bt/s loc_8c19E274
mov.l @r14,r5
mov r5,r1
add 0x74,r1
mov.b @r1,r0
or 0x40,r0
bra loc_8c19E27E
mov.b r0,@r1
#data 0x0701
#data 0x00C00090
#data 0x04590600
#data 0x045B0601
#data 0x0000012C

#align4
loc_8c19E240:
#data bank13.loc_8c130ECC

loc_8c19E244:
#data loc_8c19C588
#data 0x8C3479EC

#align4
loc_8c19E24C:
#data loc_8c19B468

loc_8c19E250:
#data bank1b.loc_8c1b2856
#data 0x8C3479DF
#data 0x8C3479DE
#data 0x8C3479DD
#data 0x8C34797A
#data 0x8C347A10
#data 0x8C34797C

#align4
loc_8c19E26C:
#data bank1a.loc_8c1a00E8

loc_8c19E270:
#data 0x8C347970


loc_8c19E274:
mov r5,r2
add 0x74,r2
mov.b @r2,r0
and 0xBF,r0
mov.b r0,@r2

loc_8c19E27E:
mov.l @(loc_8c19E360,pc),r3 ; r3 set to 0x8C130ECC, r3 set to 0x8C130ECC
mov 0x0F,r0 ; r0 set to 0x0F, r0 set to 0x0F
mov.w @(loc_8c19E35A,pc),r1 ; r1 set to 0x404, r1 set to 0x404
and r4,r0 ; r0 ??? bc r4 is ???, r0 ??? bc r4 is ???
mov.l @r14,r2
jsr @r3
add 0x74,r2
mov.b @r15,r3 ; r3 ??? bc r15 is ???, r3 ??? bc r15 is ???
mov 0x70,r0 ; r0 set to 0x70, r0 set to 0x70
mov.l @r14,r2
mov.b r3,@(r0,r2)
mov.l @r14,r3
add 0x74,r3
mov.b @r3,r0 ; r0 ??? bc r3 is ???, r0 ??? bc r3 is ???
or 0x80,r0
mov.b r0,@r3
mov.l @(loc_8c19E368,pc),r2 ; r2 set to 0x8C1B3EEC, r2 set to 0x8C1B3EEC
mov.l @(loc_8c19E364,pc),r4 ; r4 set to 0x8C347A18, r4 set to 0x8C347A18
jsr @r2
mov 0x32,r5 ; r5 set to 0x32, r5 set to 0x32
bra loc_8c19E2C4
nop

loc_8c19E2AA:
#data 0xDD2E
#data 0x4C0BDC2F
#data 0x600E64D2
#data 0x89052008
#data 0xDD2D9E50
#data 0x64E34D0B


loc_8c19E2C0:
bra loc_8c19E300
mov 0x00,r0

loc_8c19E2C4:
mov.l @r14,r4
mov r4,r0
nop
add 0x74,r0
mov.b @r0,r0
tst 0x80,r0
bf loc_8c19E2AA
mov r4,r1
add 0x74,r1
mov.b @r1,r0
and 0xBF,r0
mov.b r0,@r1
mov.b @(0x04,r15),r0
extu.b r0,r0
cmp/eq 0x01,r0
bf/s loc_8c19E2EE
mov.l @r14,r4
mov 0x60,r0 ; r0 set to 0x60
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
bra loc_8c19E300
extu.b r0,r0

loc_8c19E2EE:
#data 0xE064
#data 0xE360004C
#data 0x334C600C
#data 0x63304018
#data 0x203B633C


loc_8c19E300:
add 0x08,r15
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c19E30C:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
sts.l pr,@-r15
add 0xF4,r15
mov r4,r0
nop
mov.w r0,@(0x04,r15)
mov r6,r0
mov.w r5,@r15
mov.l @(loc_8c19E374,pc),r3 ; r3 set to 0x8C1A00E8
jsr @r3
mov.b r0,@(0x08,r15)
extu.b r0,r0
tst r0,r0
bf loc_8c19E406
mov.w @(0x04,r15),r0
mov.l @(loc_8c19E378,pc),r14 ; r14 set to 0x8C347970
extu.w r0,r5
mov.w @(loc_8c19E35A,pc),r1 ; r1 set to 0x404
mov.l @(loc_8c19E360,pc),r3 ; r3 set to 0x8C130ECC
mov 0x0F,r0 ; r0 set to 0x0F
mov.l @r14,r2
shlr8 r5
and r5,r0 ; r0 ??? bc r5 is ???
jsr @r3
add 0x74,r2
mov 0x40,r2 ; r2 set to 0x40
tst r2,r5
bt/s loc_8c19E37C
mov.l @r14,r4
mov r4,r1 ; r1 ??? bc r4 is ???
add 0x74,r1
mov.b @r1,r0
or 0x40,r0
bra loc_8c19E386
mov.b r0,@r1

loc_8c19E35A:
#data 0x0404
#data 0x00000514

#align4
loc_8c19E360:
#data bank13.loc_8c130ECC

loc_8c19E364:
#data 0x8C347A18

#align4
loc_8c19E368:
#data bank1b.loc_8c1b3EEC

loc_8c19E36C:
#data bank1b.loc_8c1b3F0C

loc_8c19E370:
#data bank1a.loc_8c1a003E

loc_8c19E374:
#data bank1a.loc_8c1a00E8

loc_8c19E378:
#data 0x8C347970

#align4
loc_8c19E37C:
#data 0x73746343
#data 0xC9BF6030
#data 0x2300

loc_8c19E386:
#data 0x63E2
#data 0x60307374
#data 0x2300CB20
#data 0x62E285F2
#data 0xE0706303
#data 0x63F00234
#data 0x62E2E060
#data 0x84F80234
#data 0x8802600C
#data 0x63F18B05
#data 0x62E2E064
#data 0x4319633D
#data 0x0234

loc_8c19E3B6:
#data 0x63E2
#data 0x60307374
#data 0x2300CB80
#data 0xD436D237
#data 0xE532420B
#data 0x9D66DC34
#data 0xDB36DA35
#data 0x0009A009

#align4
loc_8c19E3D4:
#data 0x64C24B0B
#data 0x2008600E
#data 0x4A0B8903
#data 0xA01064D3
#data 0x0009

loc_8c19E3E6:
#data 0x60E2
#data 0x60007074
#data 0x8BF1C880
#data 0x737463E2
#data 0xC9DF6030
#data 0x62E22300
#data 0x73746323
#data 0xC9BF6030
#data 0x2300


loc_8c19E406:
add 0x0C,r15
lds.l @r15+,pr
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c19E416:
sts.l pr,@-r15
mov.w @(0x08,r15),r0
mov r0,r2
mov.l r2,@-r15
mov.w @(0x08,r15),r0
mov r0,r3
mov.l r3,@-r15
bsr loc_8c19E450
nop
add 0x08,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c19E430:
sts.l pr,@-r15
mov.w @(0x04,r15),r0
mov r0,r3
mov.l r3,@-r15
bsr loc_8c19E4B4
nop
add 0x04,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c19E444:
mov.l @(loc_8c19E4AC,pc),r3 ; r3 set to 0x8C3479B2
mov 0x00,r4 ; r4 set to 0x00
mov.b r4,@r3 ; r3 ??
mov.l @(loc_8c19E4B0,pc),r2 ; r2 set to 0x8C3479B3
rts
mov.b r4,@r2
;-------------------------------------------------------------------------------

loc_8c19E450:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
add 0xF8,r15
mov.w r6,@r15
mov r7,r0
nop
mov r14,r4
mov 0x02,r6 ; r6 set to 0x02
mov.w r0,@(0x04,r15)
bsr loc_8c19E30C
add 0x01,r14
mov.w @r15,r5
mov r14,r4
mov 0x02,r6 ; r6 set to 0x02
bsr loc_8c19E30C
add 0x01,r14
mov.w @(0x04,r15),r0
mov r14,r4
mov 0x02,r6 ; r6 set to 0x02
mov r0,r5
bsr loc_8c19E30C
add 0x01,r14
mov.w @(0x10,r15),r0
mov r14,r4
mov 0x02,r6 ; r6 set to 0x02
mov r0,r5
bsr loc_8c19E30C
add 0x01,r14
mov.w @(0x14,r15),r0
add 0x08,r15
lds.l @r15+,pr
mov r14,r4
mov 0x02,r6 ; r6 set to 0x02
mov r0,r5
bra loc_8c19E30C
mov.l @r15+,r14
#data 0x051E
#data 0x8C347A18

#align4
loc_8c19E4A0:
#data bank1b.loc_8c1b3EEC

loc_8c19E4A4:
#data bank1a.loc_8c1a003E

loc_8c19E4A8:
#data bank1b.loc_8c1b3F0C

loc_8c19E4AC:
#data 0x8C3479B2

#align4
loc_8c19E4B0:
#data 0x8C3479B3


loc_8c19E4B4:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
add 0xF0,r15
mov.w r6,@r15
mov r7,r0
nop
mov.w r0,@(0x04,r15)
mov r14,r0
nop
mov r14,r3
shll2 r3
shll r0
add r3,r0
mov.w r0,@(0x0C,r15)
mov 0x02,r6 ; r6 set to 0x02
mov.w @(loc_8c19E5BE,pc),r3 ; r3 set to 0xBA0
add r3,r0
mov.w r0,@(0x08,r15)
bsr loc_8c19E30C
mov r0,r4
mov.w @(0x0C,r15),r0
mov 0x02,r6 ; r6 set to 0x02
mov.w @(loc_8c19E5C0,pc),r3 ; r3 set to 0xAA0
mov r0,r4
add r3,r4
bsr loc_8c19E30C
mov.w @r15,r5
mov.w @(loc_8c19E5C2,pc),r4 ; r4 set to 0xAB8
mov 0x02,r6 ; r6 set to 0x02
mov.w @(0x04,r15),r0
add r14,r4 ; r4 ??? bc r14 is ???
bsr loc_8c19E30C
mov r0,r5
mov.w @(0x18,r15),r0
add 0x10,r15
lds.l @r15+,pr
mov.w @(loc_8c19E5C4,pc),r4 ; r4 set to 0xBB8
mov 0x02,r6 ; r6 set to 0x02
mov r0,r5
add r14,r4 ; r4 ??? bc r14 is ???
bra loc_8c19E30C
mov.l @r15+,r14

loc_8c19E50A:
sts.l pr,@-r15
mov.w @(loc_8c19E5C6,pc),r4 ; r4 set to 0x702
bsr loc_8c19E1F8
mov 0x01,r5 ; r5 set to 0x01
mov.w @(loc_8c19E5C6,pc),r4 ; r4 set to 0x702
mov 0x01,r2 ; r2 set to 0x01
mov r0,r5 ; r5 ??? bc r0 is ???
mov r2,r6 ; r6 set to 0x01
or r2,r5
bra loc_8c19E30C
lds.l @r15+,pr

loc_8c19E520:
sts.l pr,@-r15
mov.w @(loc_8c19E5C6,pc),r4 ; r4 set to 0x702
bsr loc_8c19E1F8
mov 0x01,r5 ; r5 set to 0x01
mov.l @(loc_8c19E5CC,pc),r2 ; r2 set to 0xFFFE
mov r0,r5 ; r5 ??? bc r0 is ???
mov.w @(loc_8c19E5C6,pc),r4 ; r4 set to 0x702
mov 0x01,r6 ; r6 set to 0x01
and r2,r5
bra loc_8c19E30C
lds.l @r15+,pr

loc_8c19E536:
sts.l pr,@-r15
mov.w @(loc_8c19E5C8,pc),r4 ; r4 set to 0x701
bsr loc_8c19E1F8
mov 0x01,r5 ; r5 set to 0x01
mov.w @(loc_8c19E5C8,pc),r4 ; r4 set to 0x701
mov 0x01,r2 ; r2 set to 0x01
mov r0,r5 ; r5 ??? bc r0 is ???
mov r2,r6 ; r6 set to 0x01
or r2,r5
bra loc_8c19E30C
lds.l @r15+,pr

loc_8c19E54C:
sts.l pr,@-r15
mov.w @(loc_8c19E5C8,pc),r4 ; r4 set to 0x701
bsr loc_8c19E1F8
mov 0x01,r5 ; r5 set to 0x01
mov.l @(loc_8c19E5CC,pc),r2 ; r2 set to 0xFFFE
mov r0,r5 ; r5 ??? bc r0 is ???
mov.w @(loc_8c19E5C8,pc),r4 ; r4 set to 0x701
mov 0x01,r6 ; r6 set to 0x01
and r2,r5
bra loc_8c19E30C
lds.l @r15+,pr

loc_8c19E562:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l @(loc_8c19E5D0,pc),r14 ; r14 set to 0x8C347970
sts.l pr,@-r15
mov.l @r14,r3
add 0x7C,r3
add 0xFC,r15
mov.b @r3,r0
or 0x01,r0
mov.b r0,@r3
mov.l @(loc_8c19E5D4,pc),r2 ; r2 set to 0x8C1B3EEC
mov 0x14,r5 ; r5 set to 0x14
jsr @r2
mov r15,r4
mov.w @(loc_8c19E5CA,pc),r13 ; r13 set to 0x532
mov.l @(loc_8c19E5DC,pc),r12 ; r12 set to 0x8C1B3F0C
mov.l @(loc_8c19E5D8,pc),r11 ; r11 set to 0x8C1A003E
bra loc_8c19E59E
nop

#align4
loc_8c19E58C:
#data 0x64F24C0B
#data 0x2008600E
#data 0x4B0B8903
#data 0xA00964D3
#data 0x0009

loc_8c19E59E:
#data 0x62E2
#data 0x00096023
#data 0x6000707C
#data 0x600CC901
#data 0x8BED2008

#align4
loc_8c19E5B0:
#data 0x4F267F04
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c19E5BE:
#data 0x0BA0

loc_8c19E5C0:
#data 0x0AA0

loc_8c19E5C2:
#data 0x0AB8

loc_8c19E5C4:
#data 0x0BB8

loc_8c19E5C6:
#data 0x0702

loc_8c19E5C8:
#data 0x0701

loc_8c19E5CA:
#data 0x0532

#align4
loc_8c19E5CC:
#data 0x0000FFFE

#align4
loc_8c19E5D0:
#data 0x8C347970

#align4
loc_8c19E5D4:
#data bank1b.loc_8c1b3EEC

loc_8c19E5D8:
#data bank1a.loc_8c1a003E

loc_8c19E5DC:
#data bank1b.loc_8c1b3F0C


loc_8c19E5E0:
mov.l r14,@-r15
mov.l @(loc_8c19E6B4,pc),r2 ; r2 set to 0x8C3479CE
sts.l pr,@-r15
mov.b @r2,r3
mov.l @(loc_8c19E6B0,pc),r14 ; r14 set to 0x8C347970
tst r3,r3
bf loc_8c19E63C
mov.l @r14,r3
mov 0x48,r0 ; r0 set to 0x48
mov.b @(r0,r3),r1
mov.w @(loc_8c19E6AC,pc),r3 ; r3 set to 0x81
extu.b r1,r1
cmp/eq r3,r1
bf loc_8c19E636
mov.l @r14,r0 ; r0 ??
add 0x24,r0
mov.b @r0,r0
tst 0x20,r0
movt r1
add 0xFF,r1
neg r1,r1
tst r1,r1
bf loc_8c19E636
mov.l @r14,r0
add 0x78,r0
mov.b @r0,r0
tst 0x08,r0
bt loc_8c19E62A
mov.l @(loc_8c19E6BC,pc),r3 ; r3 set to 0x8C1B3F0C
mov.l @(loc_8c19E6B8,pc),r1 ; r1 set to 0x8C3479D8
jsr @r3
mov.l @r1,r4
exts.b r0,r0
tst r0,r0
bf loc_8c19E636
bra loc_8c19E63C
nop

loc_8c19E62A:
mov.l @(loc_8c19E6C0,pc),r3 ; r3 set to 0x8C1B3EEC
mov.l @(loc_8c19E6B8,pc),r4 ; r4 set to 0x8C3479D8
jsr @r3
mov 0x0A,r5 ; r5 set to 0x0A
bra loc_8c19E63C
nop

loc_8c19E636:
#data 0xD323
#data 0xE400430B

#align4
loc_8c19E63C:
#data 0x6000D022
#data 0x8915C808
#data 0xD121D31D
#data 0x6412430B
#data 0x2008600E
#data 0x63E2890E
#data 0x6030731C
#data 0x2300C9FE
#data 0x6020D21A
#data 0x2200C9F7
#data 0x632362E2
#data 0x60307378
#data 0x2300CB20

#align4
loc_8c19E670:
#data 0x6000D017
#data 0x890EC820
#data 0xD116D310
#data 0x6412430B
#data 0x2008600E
#data 0x94128907
#data 0xBE3FE602
#data 0xD210E500
#data 0xC9DF6020
#data 0x2200

loc_8c19E696:
#data 0x4F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0xB01D4F22
#data 0xD2070009
#data 0xD40CE50A
#data 0x4F26422B

loc_8c19E6AC:
#data 0x0081
#data 0x0B11

#align4
loc_8c19E6B0:
#data 0x8C347970

#align4
loc_8c19E6B4:
#data 0x8C3479CE

#align4
loc_8c19E6B8:
#data 0x8C3479D8

#align4
loc_8c19E6BC:
#data bank1b.loc_8c1b3F0C

loc_8c19E6C0:
#data bank1b.loc_8c1b3EEC

loc_8c19E6C4:
#data loc_8c19FE4A
#data 0x8C347976
#data 0x8C3479E0
#data 0x8C34797C
#data 0x8C347A10
#data 0x8C3479A8
#data 0xD3442FE6
#data 0x62324F22
#data 0xCB408428
#data 0xEE008028
#data 0x66E32FE6
#data 0x976E2FE6
#data 0xBEAB946E
#data 0x2FE665E3
#data 0x2FE666E3
#data 0x94689767
#data 0x65E3BEA4
#data 0x2F269266
#data 0x9565D63A
#data 0xD3389465
#data 0xBE9B9761
#data 0x93612F36
#data 0x96602F36
#data 0x945F955C
#data 0x9758D233
#data 0x2F26BE92
#data 0x2F36935B
#data 0x955B965B
#data 0xBEBD9758
#data 0x7F24E402
#data 0x4F26D22F
#data 0x2230E301
#data 0x21E0D12E
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x4F22D328
#data 0x702C6032
#data 0xC8206000
#data 0xD22B8909
#data 0x420BD029
#data 0x600E6402
#data 0x89062008
#data 0x000B4F26
#data 0xD127E001
#data 0x410BD424
#data 0xE000E50A
#data 0x000B4F26
#data 0xD31C0009
#data 0x70286032
#data 0xC8406000
#data 0x70FF0029
#data 0x600B000B
;-------------------------------------------------------------------------------
#data 0x4F22D317
#data 0x60436432
#data 0x70240009
#data 0xC8106000
#data 0x70FF0029
#data 0x8801600B
#data 0x60438B34
#data 0x703C0009
#data 0xC8106000
#data 0x60438957
#data 0x703C0009
#data 0xC8206000
#data 0xD2138951
#data 0x23386320
#data 0xBEA98B4A
#data 0xA0470009
#data 0x7FFF0009
#data 0x0BB20AB2
#data 0x030710A6
#data 0x0AAD0306
#data 0x010D106E
#data 0x1C000BAD
#data 0x02DF2A00
#data 0x00007E67
#data 0x8C347970
#data 0x0000C147
#data 0x0000F9F9
#data 0x8C3479B2
#data 0x8C3479B3
#data 0x8C3479A8

#align4
loc_8c19E808:
#data bank1b.loc_8c1b3F0C

loc_8c19E80C:
#data bank1b.loc_8c1b3EEC
#data 0x8C3479DC
#data 0x00096043
#data 0x60007028
#data 0x8922C880
#data 0x00096043
#data 0x6000703C
#data 0x891CC880
#data 0x004CE048
#data 0x8801600C
#data 0x941A8B09
#data 0xE502BCDE
#data 0x9416D50D
#data 0xBD632509
#data 0xA00BE602
#data 0xE0480009
#data 0x930F004C
#data 0xC9F0600C
#data 0x8B033030
#data 0xE601940B
#data 0xE514BD56
#data 0x000B4F26
#data 0xE000E001
#data 0x000B4F26
#data 0x48030009
#data 0x027000B0
#data 0x0000FFEF


loc_8c19E878:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xEC,r15
mov r4,r0
nop
mov.b r0,@(0x04,r15)
mov r5,r0
nop
mov.b r0,@(0x0C,r15)
mov 0x10,r0 ; r0 set to 0x10
mov.b r6,@(r0,r15)
mov 0x01,r6 ; r6 set to 0x01
mov.l @(loc_8c19E984,pc),r3 ; r3 set to 0x8C3479DD
mov.b @(0x04,r15),r0
mov.b r0,@r3 ; r3 ??
mov.l @(loc_8c19E988,pc),r2 ; r2 set to 0x8C3479DE
mov.b @(0x0C,r15),r0
mov.b r0,@r2 ; r2 ??
mov 0x10,r0 ; r0 set to 0x10
mov.b @(r0,r15),r1
mov.l @(loc_8c19E98C,pc),r0 ; r0 set to 0x8C3479DF
mov.b r1,@r0 ; r0 ??? bc r1 is ???
mov.l @(loc_8c19E990,pc),r13 ; r13 set to 0x8C347974
mov.b @(0x01,r13),r0
and 0xFE,r0
mov.b r0,@(0x01,r13)
mov.b @(0x02,r13),r0
and 0xF7,r0
mov.b r0,@(0x02,r13)
mov.b @(0x03,r13),r0
and 0xBF,r0
mov.b r0,@(0x03,r13)
mov.b @(0x03,r13),r0
and 0xF7,r0
mov.b r0,@(0x03,r13)
mov.b @(0x03,r13),r0
and 0xFB,r0
mov.b r0,@(0x03,r13)
mov.w @(loc_8c19E97A,pc),r4 ; r4 set to 0x247
bsr loc_8c19E30C
mov 0x00,r5 ; r5 set to 0x00
mov.w @(loc_8c19E97C,pc),r4 ; r4 set to 0x246
mov 0x01,r6 ; r6 set to 0x01
bsr loc_8c19E30C
mov 0x00,r5 ; r5 set to 0x00
mov.w @(loc_8c19E97E,pc),r4 ; r4 set to 0x89
bsr loc_8c19E1F8
mov 0x01,r5 ; r5 set to 0x01
mov.b r0,@r15
mov 0x40,r5 ; r5 set to 0x40
mov.w @(loc_8c19E97E,pc),r4 ; r4 set to 0x89
mov 0x01,r6 ; r6 set to 0x01
extu.b r0,r0
bsr loc_8c19E30C
or r0,r5 ; r5 ??? bc r0 is ???
mov.l @(loc_8c19E994,pc),r14 ; r14 set to 0x8C347970
mov.l @r14,r3
add 0x10,r3
mov.b @r3,r0
or 0x10,r0
mov.b r0,@r3
mov.l @r14,r3
add 0x20,r3
mov.b @r3,r0
or 0x40,r0
mov.b r0,@r3
mov.l @(loc_8c19E998,pc),r1 ; r1 set to 0x8C3479DC
mov 0x00,r2 ; r2 set to 0x00
mov.b r2,@r1 ; r1 ??
mov.b @(0x04,r15),r0
mov.w @(loc_8c19E980,pc),r9 ; r9 set to 0x32C
extu.b r0,r0
mov.l r0,@r15
mov 0x10,r0 ; r0 set to 0x10
mov.b @(r0,r15),r3
extu.b r3,r3
mov.l r3,@(0x08,r15)
mov.l @r15,r2 ; r2 ??? bc r15 is ???
tst r2,r2
bf loc_8c19E9F0
mov 0x01,r5 ; r5 set to 0x01
bsr loc_8c19E1F8
mov r9,r4 ; r4 set to 0x32C
mov.l @(0x08,r15),r1
mov 0x05,r2 ; r2 set to 0x05
mov r0,r12 ; r12 set to 0x10
mov 0x3D,r3 ; r3 set to 0x3D
cmp/ge r2,r1
bt/s loc_8c19E99C
and r3,r12 ; r12 ??
bsr loc_8c19E520
nop
bsr loc_8c19E54C
nop
mov.l @(0x08,r15),r0 ; r0 ??? bc r15 is ???
mov.w @(loc_8c19E982,pc),r3 ; r3 set to 0x80
cmp/eq 0x01,r0
bf/s loc_8c19E9CE
or r3,r12
mov.l @r14,r1
add 0x10,r1
mov.b @r1,r0
and 0xEF,r0
mov.b r0,@r1
mov.l @r14,r2 ; r2 ??
mov r2,r0
nop
add 0x20,r0
mov.b @r0,r0
and 0x01,r0
extu.b r0,r0
tst r0,r0
bf loc_8c19E972
mov.b @(0x03,r13),r0
mov 0x3F,r2 ; r2 set to 0x3F
or 0x08,r0
mov.b r0,@(0x03,r13)
bra loc_8c19E9CE
and r2,r12

loc_8c19E972:
mov.b @(0x03,r13),r0
or 0x04,r0
bra loc_8c19E9CE
mov.b r0,@(0x03,r13)

loc_8c19E97A:
#data 0x0247

loc_8c19E97C:
#data 0x0246

loc_8c19E97E:
#data 0x0089

loc_8c19E980:
#data 0x032C

loc_8c19E982:
#data 0x0080

#align4
loc_8c19E984:
#data 0x8C3479DD

#align4
loc_8c19E988:
#data 0x8C3479DE

#align4
loc_8c19E98C:
#data 0x8C3479DF

#align4
loc_8c19E990:
#data 0x8C347974

#align4
loc_8c19E994:
#data 0x8C347970

#align4
loc_8c19E998:
#data 0x8C3479DC


loc_8c19E99C:
bsr loc_8c19E536
nop
bsr loc_8c19E520
nop
mov.l @(loc_8c19EA68,pc),r2 ; r2 set to 0x8C19FD58
jsr @r2
nop
mov.l @(loc_8c19EA6C,pc),r3 ; r3 set to 0x8C1AEE58
jsr @r3
mov r0,r4
mov.l @(loc_8c19EA70,pc),r2 ; r2 set to 0x8C19FD02
jsr @r2
mov.l r0,@-r15
mov.l @(loc_8c19EA6C,pc),r3 ; r3 set to 0x8C1AEE58
jsr @r3
mov r0,r4
mov.l @r15+,r2 ; r2 ??? bc r15 is ???
shlr r0
cmp/hi r0,r2
bt loc_8c19E9CA
mov 0x40,r1 ; r1 set to 0x40
bra loc_8c19E9CE
or r1,r12

loc_8c19E9CA:
mov.w @(loc_8c19EA64,pc),r2 ; r2 set to 0x80
or r2,r12

loc_8c19E9CE:
extu.b r12,r5
mov 0x01,r6 ; r6 set to 0x01, r6 set to 0x01
bsr loc_8c19E30C
mov r9,r4
mov r13,r0
nop
mov.b @(0x03,r0),r0
tst 0x04,r0
bf loc_8c19E9E4
bra loc_8c19ED2C
nop

loc_8c19E9E4:
mov.l @r14,r3
add 0x78,r3
mov.b @r3,r0
or 0x20,r0
bra loc_8c19ED38
mov.b r0,@r3

loc_8c19E9F0:
mov.l @r15,r0
cmp/eq 0x01,r0
bf loc_8c19EA1C
bsr loc_8c19E520
nop
bsr loc_8c19E54C
nop
mov 0x01,r5 ; r5 set to 0x01
bsr loc_8c19E1F8
mov r9,r4
mov.w @(loc_8c19EA66,pc),r2 ; r2 set to 0x82
mov 0x3F,r3 ; r3 set to 0x3F
mov r0,r13
and r3,r13
or r2,r13
extu.b r13,r5 ; r5 ??? bc r13 is ???
mov 0x01,r6 ; r6 set to 0x01
bsr loc_8c19E30C
mov r9,r4
mov.l @r14,r3 ; r3 ??? bc r14 is ???
bra loc_8c19ED2C
mov.b @r3,r2

loc_8c19EA1C:
mov.l @r15,r0
mov.l @(loc_8c19EA80,pc),r12 ; r12 set to 0x8C1B3F0C
mov.l @(loc_8c19EA7C,pc),r11 ; r11 set to 0x8C1A003E
cmp/eq 0x02,r0
mov.l @(loc_8c19EA74,pc),r8 ; r8 set to 0x8C1B3EEC
mov.l @(loc_8c19EA78,pc),r10 ; r10 set to 0x8C347A18
bt loc_8c19EA2E
bra loc_8c19EC58
nop

loc_8c19EA2E:
mov 0x01,r5 ; r5 set to 0x01
bsr loc_8c19E1F8
mov r9,r4
mov.b r0,@(0x04,r15)
mov 0x05,r3 ; r3 set to 0x05
mov.b @(0x04,r15),r0
and 0x3F,r0
mov.b r0,@(0x04,r15)
mov.l @(0x08,r15),r1
cmp/ge r3,r1
bt loc_8c19EA84
bsr loc_8c19E520
nop
bsr loc_8c19E54C
nop
mov.b @(0x04,r15),r0
or 0x82,r0
mov.b r0,@(0x04,r15)
mov.l @(0x08,r15),r0
cmp/eq 0x01,r0
bf loc_8c19EA92
mov.l @r14,r3 ; r3 ??? bc r14 is ???
add 0x10,r3
mov.b @r3,r0
and 0xEF,r0
bra loc_8c19EA92
mov.b r0,@r3

loc_8c19EA64:
#data 0x0080

loc_8c19EA66:
#data 0x0082

#align4
loc_8c19EA68:
#data loc_8c19FD58

loc_8c19EA6C:
#data bank1a.loc_8c1aEE58

loc_8c19EA70:
#data loc_8c19FD02

loc_8c19EA74:
#data bank1b.loc_8c1b3EEC

loc_8c19EA78:
#data 0x8C347A18

#align4
loc_8c19EA7C:
#data bank1a.loc_8c1a003E

loc_8c19EA80:
#data bank1b.loc_8c1b3F0C


loc_8c19EA84:
bsr loc_8c19E50A
nop
bsr loc_8c19E536
nop
mov.b @(0x04,r15),r0
or 0xC2,r0
mov.b r0,@(0x04,r15)

loc_8c19EA92:
mov.b @(0x04,r15),r0
mov 0x01,r6 ; r6 set to 0x01, r6 set to 0x01
mov r0,r5
extu.b r5,r5
bsr loc_8c19E30C
mov r9,r4
mov.w @(loc_8c19EB5C,pc),r4 ; r4 set to 0xB3, r4 set to 0xB3
bsr loc_8c19E1F8
mov 0x01,r5 ; r5 set to 0x01, r5 set to 0x01
mov r0,r4 ; r4 ??? bc r0 is ???, r4 ??? bc r0 is ???
mov.b @(0x0C,r15),r0
extu.b r0,r0
cmp/eq 0x01,r0
bf loc_8c19EAB4
extu.b r4,r0
bra loc_8c19EABA
or 0x01,r0

loc_8c19EAB4:
mov 0xFE,r3 ; r3 set to 0xFFFFFFFE
extu.b r4,r0
and r3,r0

loc_8c19EABA:
mov 0x01,r6 ; r6 set to 0x01, r6 set to 0x01
mov.b r0,@(0x08,r15)
mov.w @(loc_8c19EB5C,pc),r4 ; r4 set to 0xB3, r4 set to 0xB3
bsr loc_8c19E30C
extu.b r0,r5
mov.l @r15,r0
cmp/eq 0x02,r0
bf loc_8c19EB78
mov.l @(loc_8c19EB68,pc),r2 ; r2 set to 0x8C19C7A0, r2 set to 0x8C19C7A0
jsr @r2
nop
exts.b r0,r0
tst r0,r0
bf loc_8c19EB78
mov.l @(loc_8c19EB6C,pc),r0 ; r0 set to 0x8C34797C, r0 set to 0x8C34797C
mov.b @r0,r0 ; r0 ??, r0 ??
tst 0x80,r0
bf loc_8c19EB78
mov.l @r14,r0
add 0x20,r0
mov.b @r0,r0
and 0x01,r0
mov.b r0,@r15
mov.l @r14,r3 ; r3 ??? bc r14 is ???
add 0x20,r3
mov.b @r3,r0
and 0xFE,r0
mov.b r0,@r3
mov.l @(loc_8c19EB70,pc),r4 ; r4 set to 0x8C347A18, r4 set to 0x8C347A18
jsr @r8
mov 0x32,r5 ; r5 set to 0x32, r5 set to 0x32
mov.w @(loc_8c19EB5E,pc),r9 ; r9 set to 0x53C, r9 set to 0x53C
bra loc_8c19EB08
nop

loc_8c19EAFE:
jsr @r12
mov.l @r10,r4
exts.b r0,r0
tst r0,r0
bf loc_8c19EB9E

loc_8c19EB08:
mov.l @r14,r0
add 0x3C,r0
mov.b @r0,r0
tst 0x20,r0
bf loc_8c19EAFE
mov.l @r14,r3
add 0x18,r3
mov.b @r3,r0
mov.w @(loc_8c19EB60,pc),r4 ; r4 set to 0x3E8, r4 set to 0x3E8
or 0x10,r0
bra loc_8c19EB22
mov.b r0,@r3

loc_8c19EB20:
add 0xFF,r4

loc_8c19EB22:
tst r4,r4
bf loc_8c19EB20
mov.w @(loc_8c19EB62,pc),r1 ; r1 set to 0x701, r1 set to 0x701
mov.l @(loc_8c19EB74,pc),r3 ; r3 set to 0x8C130ECC, r3 set to 0x8C130ECC
mov.l @r14,r2
mov.b @r15,r0
jsr @r3
add 0x20,r2
mov.b @r15,r2
tst r2,r2
bt loc_8c19EB84
mov.l @(loc_8c19EB70,pc),r4 ; r4 set to 0x8C347A18, r4 set to 0x8C347A18
jsr @r8
mov 0x32,r5 ; r5 set to 0x32, r5 set to 0x32
mov.w @(loc_8c19EB64,pc),r9 ; r9 set to 0x546, r9 set to 0x546
bra loc_8c19EB4E
nop

loc_8c19EB44:
jsr @r12
mov.l @r10,r4
exts.b r0,r0
tst r0,r0
bf loc_8c19EB9E

loc_8c19EB4E:
mov.l @r14,r0
add 0x3C,r0
mov.b @r0,r0
tst 0x20,r0
bt loc_8c19EB44
bra loc_8c19EB84
nop

loc_8c19EB5C:
#data 0x00B3

loc_8c19EB5E:
#data 0x053C

loc_8c19EB60:
#data 0x03E8

loc_8c19EB62:
#data 0x0701

loc_8c19EB64:
#data 0x0546
#data 0x0000

#align4
loc_8c19EB68:
#data loc_8c19C7A0

loc_8c19EB6C:
#data 0x8C34797C

#align4
loc_8c19EB70:
#data 0x8C347A18

#align4
loc_8c19EB74:
#data bank13.loc_8c130ECC


loc_8c19EB78:
mov.l @r14,r2
mov r2,r3
add 0x18,r3
mov.b @r3,r0
or 0x10,r0
mov.b r0,@r3

loc_8c19EB84:
mov.l @(loc_8c19ECB0,pc),r4 ; r4 set to 0x8C347A18, r4 set to 0x8C347A18
jsr @r8
mov 0x32,r5 ; r5 set to 0x32, r5 set to 0x32
mov.w @(loc_8c19EC9E,pc),r9 ; r9 set to 0x550, r9 set to 0x550
bra loc_8c19EBA2
nop

loc_8c19EB90:
mov.l @r14,r3
mov.b @r3,r2
jsr @r12
mov.l @r10,r4
exts.b r0,r0
tst r0,r0
bt loc_8c19EBA2

loc_8c19EB9E:
bra loc_8c19ED0A
mov r9,r4

loc_8c19EBA2:
mov.l @r14,r0
add 0x30,r0
mov.b @r0,r0
tst 0x02,r0
bf loc_8c19EB90
mov.l @r14,r0
add 0x10,r0
mov.b @r0,r0
tst 0x10,r0
bt loc_8c19EBC6
mov.w @(loc_8c19ECA0,pc),r4 ; r4 set to 0x247
mov 0x01,r6 ; r6 set to 0x01
bsr loc_8c19E30C
mov 0x04,r5 ; r5 set to 0x04
mov.b @(0x03,r13),r0
or 0x20,r0
bra loc_8c19EBD4
mov.b r0,@(0x03,r13)

loc_8c19EBC6:
mov.b @(0x03,r13),r0
mov 0x01,r6 ; r6 set to 0x01
and 0xDF,r0
mov.b r0,@(0x03,r13)
mov.w @(loc_8c19ECA2,pc),r4 ; r4 set to 0x246
bsr loc_8c19E30C
mov 0x04,r5 ; r5 set to 0x04

loc_8c19EBD4:
mov.w @(loc_8c19ECA4,pc),r4 ; r4 set to 0x3A5, r4 set to 0x3A5
bsr loc_8c19E1F8
mov 0x01,r5 ; r5 set to 0x01, r5 set to 0x01
mov.b r0,@r15
mov 0x40,r5 ; r5 set to 0x40, r5 set to 0x40
mov.w @(loc_8c19ECA4,pc),r4 ; r4 set to 0x3A5, r4 set to 0x3A5
mov 0x01,r6 ; r6 set to 0x01, r6 set to 0x01
extu.b r0,r0
bsr loc_8c19E30C
or r0,r5 ; r5 ??? bc r0 is ???, r5 ??? bc r0 is ???
mov.l @r14,r3
add 0x7C,r3
mov.b @r3,r0
and 0xF7,r0
mov.b r0,@r3
mov.l @r14,r0
add 0x28,r0
mov.b @r0,r0
tst 0x20,r0
mov r13,r2
movt r0
mov.l @(loc_8c19ECB4,pc),r3 ; r3 set to 0x8C130ECC, r3 set to 0x8C130ECC
add 0xFF,r0
add 0x02,r2
neg r0,r0
jsr @r3
mov 0x01,r1 ; r1 set to 0x01, r1 set to 0x01
mov.l @r14,r0
add 0x28,r0
mov.b @r0,r0
tst 0x10,r0
mov.w @(loc_8c19ECA6,pc),r1 ; r1 set to 0x101, r1 set to 0x101
movt r0
mov.l @(loc_8c19ECB4,pc),r3 ; r3 set to 0x8C130ECC, r3 set to 0x8C130ECC
add 0xFF,r0
mov r13,r2
neg r0,r0
jsr @r3
add 0x02,r2
mov.l @r14,r0
add 0x28,r0
mov.b @r0,r0
tst 0x08,r0
mov.w @(loc_8c19ECA8,pc),r1 ; r1 set to 0x201, r1 set to 0x201
movt r0
mov.l @(loc_8c19ECB4,pc),r3 ; r3 set to 0x8C130ECC, r3 set to 0x8C130ECC
add 0xFF,r0
mov r13,r2
neg r0,r0
jsr @r3
add 0x02,r2
mov.l @r14,r0
add 0x28,r0
mov.b @r0,r0
mov.w @(loc_8c19ECAA,pc),r1 ; r1 set to 0x301, r1 set to 0x301
and 0x01,r0
mov.l @(loc_8c19ECB4,pc),r3 ; r3 set to 0x8C130ECC, r3 set to 0x8C130ECC
mov r13,r2
jsr @r3
add 0x02,r2
mov.l @r14,r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???
add 0x7C,r3
mov.b @r3,r0
or 0x10,r0
bra loc_8c19ED2C
mov.b r0,@r3

loc_8c19EC58:
mov.w @(loc_8c19ECAC,pc),r5 ; r5 set to 0xC0
mov 0x01,r6 ; r6 set to 0x01
bsr loc_8c19E30C
mov r9,r4
bsr loc_8c19E536
nop
bsr loc_8c19E520
nop
mov.l @r14,r0
add 0x18,r0
mov.b @r0,r0
tst 0x10,r0
bt loc_8c19ED2C
mov.l @(loc_8c19ECB8,pc),r1 ; r1 set to 0x8C19C7A0
jsr @r1
nop
exts.b r0,r0
tst r0,r0
bf loc_8c19ED20
mov.l @r14,r0
add 0x20,r0
mov.b @r0,r0
mov.l @r14,r3
and 0x01,r0
mov r0,r9
add 0x20,r3
mov.b @r3,r0
and 0xFE,r0
mov.b r0,@r3
mov.l @(loc_8c19ECB0,pc),r4 ; r4 set to 0x8C347A18
jsr @r8
mov 0x32,r5 ; r5 set to 0x32
mov.w @(loc_8c19ECAE,pc),r13 ; r13 set to 0x55A
bra loc_8c19ECCA
nop

loc_8c19EC9E:
#data 0x0550

loc_8c19ECA0:
#data 0x0247

loc_8c19ECA2:
#data 0x0246

loc_8c19ECA4:
#data 0x03A5

loc_8c19ECA6:
#data 0x0101

loc_8c19ECA8:
#data 0x0201

loc_8c19ECAA:
#data 0x0301

loc_8c19ECAC:
#data 0x00C0

loc_8c19ECAE:
#data 0x055A

#align4
loc_8c19ECB0:
#data 0x8C347A18

#align4
loc_8c19ECB4:
#data bank13.loc_8c130ECC

loc_8c19ECB8:
#data loc_8c19C7A0


loc_8c19ECBC:
jsr @r12
mov.l @r10,r4
exts.b r0,r0
tst r0,r0
bt loc_8c19ECCA
bra loc_8c19ED0A
mov r13,r4

loc_8c19ECCA:
mov.l @r14,r0
add 0x3C,r0
mov.b @r0,r0
tst 0x20,r0
bf loc_8c19ECBC
mov.l @r14,r3
add 0x18,r3
mov.b @r3,r0
and 0xEF,r0
mov.b r0,@r3
mov.l @r14,r2
mov r9,r0
nop
mov.l @(loc_8c19EDE4,pc),r3 ; r3 set to 0x8C130ECC
mov.w @(loc_8c19EDDC,pc),r1 ; r1 set to 0x701
jsr @r3
add 0x20,r2
extu.b r9,r9
tst r9,r9
bt loc_8c19ED2C
mov.l @(loc_8c19EDE8,pc),r4 ; r4 set to 0x8C347A18
jsr @r8
mov 0x32,r5 ; r5 set to 0x32
mov.w @(loc_8c19EDDE,pc),r13 ; r13 set to 0x564
bra loc_8c19ED12
nop

loc_8c19ECFE:
#data 0x4C0B
#data 0x600E64A2
#data 0x89042008
#data 0x64D3


loc_8c19ED0A:
jsr @r11
nop
bra loc_8c19ED50
nop

loc_8c19ED12:
mov.l @r14,r0
add 0x3C,r0
mov.b @r0,r0
tst 0x20,r0
bt loc_8c19ECFE
bra loc_8c19ED2C
nop

#align4
loc_8c19ED20:
#data 0x632362E2
#data 0x60307318
#data 0x2300C9EF


loc_8c19ED2C:
mov.l @r14,r2
mov r2,r3
add 0x78,r3
mov.b @r3,r0
or 0x04,r0
mov.b r0,@r3

loc_8c19ED38:
add 0x14,r15
mov.l @(loc_8c19EDF0,pc),r2 ; r2 set to 0x8C1A00CA, r2 set to 0x8C1A00CA
lds.l @r15+,pr
mov.l @(loc_8c19EDEC,pc),r4 ; r4 set to 0x8C19F0BA, r4 set to 0x8C19F0BA
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_8c19ED50:
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
;-------------------------------------------------------------------------------

loc_8c19ED64:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
sts.l pr,@-r15
mov.l @(loc_8c19EDF0,pc),r3 ; r3 set to 0x8C1A00CA
add 0xFC,r15
jsr @r3
mov 0x00,r4 ; r4 set to 0x00
mov.l @(loc_8c19EDF4,pc),r14 ; r14 set to 0x8C347970
mov.l @r14,r3 ; r3 ??
add 0x78,r3
mov.b @r3,r0
and 0xDF,r0
mov.b r0,@r3
mov.l @r14,r3
add 0x78,r3
mov.b @r3,r0
and 0xFB,r0
mov.b r0,@r3
mov.l @r14,r3
add 0x7C,r3
mov.b @r3,r0
and 0xEF,r0
mov.b r0,@r3
mov.l @r14,r0
add 0x18,r0
mov.b @r0,r0
tst 0x10,r0
bt loc_8c19EE66
mov.l @r14,r0
add 0x3C,r0
mov.b @r0,r0
tst 0x20,r0
movt r3
add 0xFF,r3
neg r3,r3
mov.b r3,@r15
mov.l @r14,r0
add 0x20,r0
mov.b @r0,r0
mov.l @r14,r3
and 0x01,r0
mov r0,r9
add 0x20,r3
mov.b @r3,r0
and 0xFE,r0
mov.b r0,@r3
mov.l @(loc_8c19EDF8,pc),r2 ; r2 set to 0x8C1B3EEC
mov.l @(loc_8c19EDE8,pc),r4 ; r4 set to 0x8C347A18
jsr @r2
mov 0x32,r5 ; r5 set to 0x32
mov.l @(loc_8c19EDE8,pc),r12 ; r12 set to 0x8C347A18
mov.l @(loc_8c19EE00,pc),r13 ; r13 set to 0x8C1B3F0C
mov.w @(loc_8c19EDE0,pc),r10 ; r10 set to 0x56E
mov.l @(loc_8c19EDFC,pc),r11 ; r11 set to 0x8C1A003E
bra loc_8c19EE0E
nop

loc_8c19EDDC:
#data 0x0701

loc_8c19EDDE:
#data 0x0564

loc_8c19EDE0:
#data 0x056E
#data 0x0000

#align4
loc_8c19EDE4:
#data bank13.loc_8c130ECC

loc_8c19EDE8:
#data 0x8C347A18

#align4
loc_8c19EDEC:
#data loc_8c19F0BA

loc_8c19EDF0:
#data bank1a.loc_8c1a00CA

loc_8c19EDF4:
#data 0x8C347970

#align4
loc_8c19EDF8:
#data bank1b.loc_8c1b3EEC

loc_8c19EDFC:
#data bank1a.loc_8c1a003E

loc_8c19EE00:
#data bank1b.loc_8c1b3F0C


loc_8c19EE04:
jsr @r13
mov.l @r12,r4
exts.b r0,r0
tst r0,r0
bf loc_8c19EE54

loc_8c19EE0E:
mov.l @r14,r0
add 0x3C,r0
mov.b @r0,r0
tst 0x20,r0
bf loc_8c19EE04
mov.l @r14,r3
add 0x18,r3
mov.b @r3,r0
and 0xEF,r0
mov.b r0,@r3
mov.l @r14,r2
mov r9,r0
nop
mov.l @(loc_8c19EF00,pc),r3 ; r3 set to 0x8C130ECC, r3 set to 0x8C130ECC
mov.w @(loc_8c19EEFA,pc),r1 ; r1 set to 0x701, r1 set to 0x701
jsr @r3
add 0x20,r2
extu.b r9,r9
tst r9,r9
bt loc_8c19EE66
mov.b @r15,r1 ; r1 ??? bc r15 is ???, r1 ??? bc r15 is ???
tst r1,r1
bt loc_8c19EE66
mov.l @(loc_8c19EF08,pc),r3 ; r3 set to 0x8C1B3EEC, r3 set to 0x8C1B3EEC
mov.l @(loc_8c19EF04,pc),r4 ; r4 set to 0x8C347A18, r4 set to 0x8C347A18
jsr @r3
mov 0x32,r5 ; r5 set to 0x32, r5 set to 0x32
mov.w @(loc_8c19EEFC,pc),r10 ; r10 set to 0x578, r10 set to 0x578
bra loc_8c19EE5C
nop

loc_8c19EE4A:
#data 0x4D0B
#data 0x600E64C2
#data 0x89032008


loc_8c19EE54:
jsr @r11
mov r10,r4
bra loc_8c19EE66
nop

#align4
loc_8c19EE5C:
#data 0x703C60E2
#data 0xC8206000
#data 0x89F1


loc_8c19EE66:
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c19EE78:
mov.l @(loc_8c19EF0C,pc),r4 ; r4 set to 0x8C347974
mov r4,r0 ; r0 set to 0x8C347974
nop
mov.b @(0x03,r0),r0
tst 0x10,r0
bt loc_8c19EE8C
mov.b @(0x02,r4),r0
or 0x04,r0
bra loc_8c19EE9A
mov.b r0,@(0x02,r4)

loc_8c19EE8C:
mov.l @(loc_8c19EF10,pc),r3 ; r3 set to 0x8C347970
mov.l @r3,r2
mov r2,r1
add 0x78,r1
mov.b @r1,r0
or 0x20,r0
mov.b r0,@r1

loc_8c19EE9A:
rts
nop
;-------------------------------------------------------------------------------

loc_8c19EE9E:
mov.l @(loc_8c19EF0C,pc),r4 ; r4 set to 0x8C347974
mov r4,r0 ; r0 set to 0x8C347974
nop
mov.b @(0x03,r0),r0
tst 0x10,r0
bt loc_8c19EEB2
mov.b @(0x02,r4),r0
and 0xFB,r0
bra loc_8c19EEC0
mov.b r0,@(0x02,r4)

loc_8c19EEB2:
mov.l @(loc_8c19EF10,pc),r3 ; r3 set to 0x8C347970
mov.l @r3,r2
mov r2,r1
add 0x78,r1
mov.b @r1,r0
and 0xDF,r0
mov.b r0,@r1

loc_8c19EEC0:
rts
nop
;-------------------------------------------------------------------------------

#align4
loc_8c19EEC4:
#data 0x6043D411
#data 0x84010009
#data 0x600CC901
#data 0x8B092008
#data 0x00096043
#data 0xC8088402
#data 0x60438B04
#data 0x84030009
#data 0x8901C840

#align4
loc_8c19EEE8:
#data 0xE001000B
;-------------------------------------------------------------------------------

#align4
loc_8c19EEEC:
#data 0x8911C810
#data 0x00096043
#data 0xA0148402
#data 0xC804

loc_8c19EEFA:
#data 0x0701

loc_8c19EEFC:
#data 0x0578
#data 0x0000

#align4
loc_8c19EF00:
#data bank13.loc_8c130ECC

loc_8c19EF04:
#data 0x8C347A18

#align4
loc_8c19EF08:
#data bank1b.loc_8c1b3EEC

loc_8c19EF0C:
#data 0x8C347974

#align4
loc_8c19EF10:
#data 0x8C347970

#align4
loc_8c19EF14:
#data 0x6232D346
#data 0x00096023
#data 0x60007078
#data 0xC820

loc_8c19EF22:
#data 0x0429
#data 0x644B74FF
#data 0x00096043
#data 0x0009000B
;-------------------------------------------------------------------------------

#align4
loc_8c19EF30:
#data 0x6532D33F
#data 0x00096053
#data 0x60007030
#data 0x8B07C802
#data 0x00096053
#data 0x60007078
#data 0x600CC901
#data 0x89032008

#align4
loc_8c19EF50:
#data 0x24306350
#data 0xE001000B
;-------------------------------------------------------------------------------

#align4
loc_8c19EF58:
#data 0x000BE000
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c19EF5E:
mov.l @(loc_8c19F034,pc),r0 ; r0 set to 0x8C347977
mov.b @r0,r0 ; r0 ??
tst 0x08,r0
bt loc_8c19EF6A
rts
mov 0x00,r0
;-------------------------------------------------------------------------------

loc_8c19EF6A:
mov.l @(loc_8c19F030,pc),r2 ; r2 set to 0x8C347970
mov.l @r2,r4
mov r4,r0
nop
add 0x10,r0
mov.b @r0,r0
tst 0x10,r0
bt loc_8c19EF86
mov r4,r0
nop
add 0x34,r0
mov.b @r0,r0
bra loc_8c19EF90
tst 0x02,r0

loc_8c19EF86:
mov r4,r0
nop
add 0x78,r0
mov.b @r0,r0
tst 0x08,r0

loc_8c19EF90:
movt r0
add 0xFF,r0
neg r0,r0
rts
nop
;-------------------------------------------------------------------------------

loc_8c19EF9A:
mov.l @(loc_8c19F030,pc),r2 ; r2 set to 0x8C347970
mov 0x40,r0 ; r0 set to 0x40
mov.l @r2,r3
rts
mov.b r4,@(r0,r3)
;-------------------------------------------------------------------------------

loc_8c19EFA4:
rts
nop
;-------------------------------------------------------------------------------

loc_8c19EFA8:
sts.l pr,@-r15
bsr loc_8c19FD02
nop
mov.l @(loc_8c19F038,pc),r3 ; r3 set to 0x8C3479DC
mov r0,r5
mov.b @r3,r0
cmp/eq 0x01,r0
bf/s loc_8c19F008
extu.b r5,r4
mov r4,r0
nop
cmp/eq 0x02,r0
bt loc_8c19EFDE
cmp/eq 0x03,r0
bt loc_8c19EFE4
cmp/eq 0x04,r0
bt loc_8c19EFEA
cmp/eq 0x05,r0
bt loc_8c19EFF0
cmp/eq 0x06,r0
bt loc_8c19EFF6
cmp/eq 0x07,r0
bt loc_8c19EFFC
cmp/eq 0x08,r0
bt loc_8c19F002
bra loc_8c19F074
nop

loc_8c19EFDE:
lds.l @r15+,pr
rts
mov 0x60,r0
;-------------------------------------------------------------------------------

loc_8c19EFE4:
lds.l @r15+,pr
rts
mov 0x30,r0
;-------------------------------------------------------------------------------

loc_8c19EFEA:
lds.l @r15+,pr
rts
mov 0x18,r0
;-------------------------------------------------------------------------------

loc_8c19EFF0:
lds.l @r15+,pr
rts
mov 0x10,r0
;-------------------------------------------------------------------------------

loc_8c19EFF6:
lds.l @r15+,pr
rts
mov 0x0C,r0
;-------------------------------------------------------------------------------

loc_8c19EFFC:
lds.l @r15+,pr
rts
mov 0x0A,r0
;-------------------------------------------------------------------------------

loc_8c19F002:
lds.l @r15+,pr
rts
mov 0x08,r0
;-------------------------------------------------------------------------------

loc_8c19F008:
mov 0x05,r1 ; r1 set to 0x05
cmp/gt r1,r4
bt loc_8c19F06E
mov r4,r0
nop
cmp/eq 0x00,r0
bt loc_8c19F03C
cmp/eq 0x01,r0
bt loc_8c19F044
cmp/eq 0x02,r0
bt loc_8c19F05C
cmp/eq 0x03,r0
bt loc_8c19F062
cmp/eq 0x04,r0
bt loc_8c19F068
cmp/eq 0x05,r0
bt loc_8c19F06E
bra loc_8c19F074
nop
#data 0x0000

#align4
loc_8c19F030:
#data 0x8C347970

#align4
loc_8c19F034:
#data 0x8C347977

#align4
loc_8c19F038:
#data 0x8C3479DC


loc_8c19F03C:
lds.l @r15+,pr
mov.w @(loc_8c19F168,pc),r0 ; r0 set to 0xAB
rts
nop
;-------------------------------------------------------------------------------

loc_8c19F044:
mov.l @(loc_8c19F174,pc),r1 ; r1 set to 0x8C347970
mov.l @r1,r0
add 0x18,r0
mov.b @r0,r0
tst 0x10,r0
bt loc_8c19F056
lds.l @r15+,pr
rts
mov 0x0D,r0
;-------------------------------------------------------------------------------

loc_8c19F056:
lds.l @r15+,pr
rts
mov 0x04,r0
;-------------------------------------------------------------------------------

loc_8c19F05C:
lds.l @r15+,pr
rts
mov 0x0B,r0
;-------------------------------------------------------------------------------

loc_8c19F062:
lds.l @r15+,pr
rts
mov 0x06,r0
;-------------------------------------------------------------------------------

loc_8c19F068:
lds.l @r15+,pr
rts
mov 0x03,r0
;-------------------------------------------------------------------------------

loc_8c19F06E:
lds.l @r15+,pr
rts
mov 0x02,r0
;-------------------------------------------------------------------------------

loc_8c19F074:
mov 0x01,r0 ; r0 set to 0x01
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------
#data 0x6432D33D
#data 0x00096043
#data 0x60007078
#data 0x8B13C840
#data 0x00096043
#data 0x60007078
#data 0x8B0DC880
#data 0x00096043
#data 0x6000707C
#data 0x8B07C880
#data 0x00096043
#data 0x6000707C
#data 0x8B01C840
#data 0xE000000B
;-------------------------------------------------------------------------------
#data 0x000BE001
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c19F0BA:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov 0x32,r11 ; r11 set to 0x32
mov.l r10,@-r15
mov.l r9,@-r15
mov.l @(loc_8c19F178,pc),r13 ; r13 set to 0x8C347974
sts.l pr,@-r15
mov.b @(0x03,r13),r0
or 0x10,r0
mov.b r0,@(0x03,r13)
mov.l @(loc_8c19F174,pc),r14 ; r14 set to 0x8C347970
mov.l @r14,r0
add 0x78,r0
mov.b @r0,r0
tst 0x20,r0
mov.w @(loc_8c19F16A,pc),r1 ; r1 set to 0x501
movt r0
mov.l @(loc_8c19F17C,pc),r3 ; r3 set to 0x8C130ECC
add 0xFF,r0
mov r13,r2 ; r2 set to 0x8C347974
neg r0,r0
jsr @r3
add 0x02,r2 ; r2 set to 0x8C347976
mov.l @r14,r0
add 0x7C,r0
mov.b @r0,r0
tst 0x10,r0
mov.w @(loc_8c19F16C,pc),r1 ; r1 set to 0x701
movt r0
mov.l @(loc_8c19F17C,pc),r3 ; r3 set to 0x8C130ECC
add 0xFF,r0
mov r13,r2 ; r2 set to 0x8C347974
neg r0,r0
jsr @r3
add 0x02,r2 ; r2 set to 0x8C347976
mov.l @r14,r0
add 0x78,r0
mov.b @r0,r0
tst 0x04,r0
mov.w @(loc_8c19F16E,pc),r1 ; r1 set to 0x601
movt r0
mov.l @(loc_8c19F17C,pc),r3 ; r3 set to 0x8C130ECC
add 0xFF,r0
mov r13,r2 ; r2 set to 0x8C347974
neg r0,r0
jsr @r3
add 0x02,r2 ; r2 set to 0x8C347976
mov.l @r14,r3 ; r3 ??
add 0x78,r3
mov.b @r3,r0
and 0xDF,r0
mov.b r0,@r3
mov.l @r14,r3
add 0x7C,r3
mov.b @r3,r0
and 0xEF,r0
mov.b r0,@r3
mov.l @r14,r2 ; r2 ??
mov r2,r3
add 0x78,r3
mov.b @r3,r0
and 0xFB,r0
mov.b r0,@r3
mov.w @(loc_8c19F170,pc),r12 ; r12 set to 0x5BE
mov.l @(loc_8c19F184,pc),r10 ; r10 set to 0x8C1A003E
mov.l @(loc_8c19F180,pc),r9 ; r9 set to 0x8C1B6BCA

loc_8c19F142:
mov.l @r14,r3
add 0x7C,r3
mov.b @r3,r0
and 0xF7,r0
jsr @r9
mov.b r0,@r3
mov.l @r14,r3
add 0x7C,r3
mov.b @r3,r0
and 0xF7,r0
mov.b r0,@r3
extu.w r11,r2 ; r2 set to 0x32
tst r2,r2
bf/s loc_8c19F188
add 0xFF,r11 ; r11 set to 0x31
jsr @r10
mov r12,r4 ; r4 set to 0x5BE
bra loc_8c19F20E
nop

loc_8c19F168:
#data 0x00AB

loc_8c19F16A:
#data 0x0501

loc_8c19F16C:
#data 0x0701

loc_8c19F16E:
#data 0x0601

loc_8c19F170:
#data 0x05BE
#data 0x0000

#align4
loc_8c19F174:
#data 0x8C347970

#align4
loc_8c19F178:
#data 0x8C347974

#align4
loc_8c19F17C:
#data bank13.loc_8c130ECC

loc_8c19F180:
#data bank1b.loc_8c1b6BCA

loc_8c19F184:
#data bank1a.loc_8c1a003E

loc_8c19F188:
#data 0x604364E2
#data 0x70780009
#data 0xC9016000
#data 0x2008600C
#data 0xD0418BD3
#data 0xC8046000
#data 0x60438905
#data 0x70780009
#data 0xC8086000
#data 0x8BC9

loc_8c19F1AE:
#data 0xD03C
#data 0xC9016000
#data 0x2008600C
#data 0x60438905
#data 0x707C0009
#data 0xC8086000
#data 0x8BBD

loc_8c19F1C6:
#data 0x60D3
#data 0x84020009
#data 0x915C6243
#data 0xD334C804
#data 0x70FF0029
#data 0x430B600B
#data 0x62E27278
#data 0x000960D3
#data 0x91518402
#data 0xC901D32E
#data 0x727C430B
#data 0x60D362E2
#data 0x84020009
#data 0xC8029149
#data 0x0029D329
#data 0x600B70FF
#data 0x7278430B
#data 0xC9EF84D3
#data 0x80D3


loc_8c19F20E:
lds.l @r15+,pr
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c19F21E:
#data 0x4F22
#data 0x0009BDA0
#data 0xE048D420
#data 0x025C6542
#data 0x622C9330
#data 0x8B053233
#data 0x021C6142
#data 0x622C912B
#data 0x8B133217

#align4
loc_8c19F240:
#data 0x032C6242
#data 0x633C9226
#data 0x8B053323
#data 0x031C6142
#data 0x633C9121
#data 0x8B073317

#align4
loc_8c19F258:
#data 0xE1486042
#data 0x001C931C
#data 0xC9E0600C
#data 0x8B213030

#align4
loc_8c19F268:
#data 0x71546153
#data 0xC9FE6010
#data 0x92122100
#data 0x6342E048
#data 0x63420324
#data 0x60307354
#data 0x2300CB04
#data 0xA02B950A
#data 0x02010009
#data 0x05010301
#data 0x00CE00C1
#data 0x009D0091
#data 0x00C000E0
#data 0x000000C8
#data 0x8C347976

#align4
loc_8c19F2A4:
#data bank13.loc_8c130ECC
#data 0x8C347970

#align4
loc_8c19F2AC:
#data 0x035CE048
#data 0x633CE271
#data 0x8B1B3323
#data 0xE376015C
#data 0x3137611C
#data 0x61538916
#data 0x60107154
#data 0x2100C9FE
#data 0xE0486342
#data 0x0324E270
#data 0x73546342
#data 0xCB046030
#data 0xE5642300

#align4
loc_8c19F2E0:
#data 0xD428D229
#data 0x0009420B
#data 0xE301D228
#data 0x2230A003

#align4
loc_8c19F2F0:
#data 0xE000D126
#data 0x2100

loc_8c19F2F6:
#data 0x4F26
#data 0x0009000B
;-------------------------------------------------------------------------------

loc_8c19F2FC:
mov.l @(loc_8c19F38C,pc),r2 ; r2 set to 0x8C3479E4
sts.l pr,@-r15
mov.b @r2,r3
tst r3,r3
bt loc_8c19F326
mov.l @(loc_8c19F390,pc),r3 ; r3 set to 0x8C347970
mov.l @r3,r0
add 0x54,r0
mov.b @r0,r0
tst 0x04,r0
bt loc_8c19F326
mov.l @(loc_8c19F394,pc),r2 ; r2 set to 0x8C1B3F0C
mov.l @(loc_8c19F384,pc),r0 ; r0 set to 0x8C347A0C
jsr @r2
mov.l @r0,r4
exts.b r0,r0 ; r0 ??
tst r0,r0
bf loc_8c19F326
lds.l @r15+,pr
rts
mov 0x00,r0
;-------------------------------------------------------------------------------

loc_8c19F326:
mov 0x01,r0 ; r0 set to 0x01
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c19F32E:
sts.l pr,@-r15
mov.l @(loc_8c19F398,pc),r3 ; r3 set to 0x8C19E1F8
jsr @r3
mov 0x02,r5 ; r5 set to 0x02
lds.l @r15+,pr
rts
extu.w r0,r0
;-------------------------------------------------------------------------------

loc_8c19F33C:
mov.l @(loc_8c19F39C,pc),r3 ; r3 set to 0x8C1A040A
jmp @r3
nop

loc_8c19F342:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
add 0xFC,r15
mov.l r5,@r15
mov.w @(loc_8c19F380,pc),r4 ; r4 set to 0x9F
mov.l @(loc_8c19F398,pc),r3 ; r3 set to 0x8C19E1F8
jsr @r3
mov 0x01,r5 ; r5 set to 0x01
extu.w r0,r0
tst 0x80,r0
bf loc_8c19F360
mov.l @(loc_8c19F3A0,pc),r3 ; r3 set to 0x5F00FF
bra loc_8c19F364
mov.l r3,@r14

loc_8c19F360:
mov.l @(loc_8c19F3A4,pc),r1 ; r1 set to 0x5F02FF
mov.l r1,@r14

loc_8c19F364:
mov.l @r14,r2
mov.w @(loc_8c19F382,pc),r3 ; r3 set to 0x300, r3 set to 0x300
tst r3,r2
bt loc_8c19F372
mov.l @r15,r0
bra loc_8c19F376
mov 0x38,r2

loc_8c19F372:
mov.l @r15,r0
mov 0x20,r2 ; r2 set to 0x20

loc_8c19F376:
add 0x04,r15
mov.b r2,@r0
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c19F380:
#data 0x009F

loc_8c19F382:
#data 0x0300

#align4
loc_8c19F384:
#data 0x8C347A0C

#align4
loc_8c19F388:
#data bank1b.loc_8c1b3EEC

loc_8c19F38C:
#data 0x8C3479E4

#align4
loc_8c19F390:
#data 0x8C347970

#align4
loc_8c19F394:
#data bank1b.loc_8c1b3F0C

loc_8c19F398:
#data loc_8c19E1F8

loc_8c19F39C:
#data bank1a.loc_8c1a040A

loc_8c19F3A0:
#data 0x005F00FF

#align4
loc_8c19F3A4:
#data 0x005F02FF


loc_8c19F3A8:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
mov.l @(loc_8c19F450,pc),r14 ; r14 set to 0x8C347970
add 0xF4,r15
mov.b r4,@r15
mov r5,r0
nop
mov.b r0,@(0x04,r15)
mov r6,r0
nop
mov.b r0,@(0x08,r15)
mov 0x00,r11 ; r11 set to 0x00
mov.b @(0x08,r15),r0
mov.l @(loc_8c19F454,pc),r3 ; r3 set to 0x8C19AA0C
jsr @r3
mov r0,r4
mov.b @r15,r12
mov 0x0F,r3 ; r3 set to 0x0F
extu.b r12,r12
cmp/gt r3,r12
bt loc_8c19F464
mov.l @(loc_8c19F458,pc),r1 ; r1 set to 0x8C19B2D8
mov 0x00,r5 ; r5 set to 0x00
jsr @r1
mov r5,r4 ; r4 set to 0x00
mov.l @(loc_8c19F45C,pc),r3 ; r3 set to 0x8C19B3A0
jsr @r3
nop
mov 0x0A,r2 ; r2 set to 0x0A
cmp/ge r2,r12
bt loc_8c19F406
mov.b @r15,r4 ; r4 ??? bc r15 is ???
add 0x0C,r15
lds.l @r15+,pr
mov.l @(loc_8c19F460,pc),r3 ; r3 set to 0x8C19B3E6
mov.l @r15+,r8
mov.l @r15+,r10
mov.l @r15+,r11 ; r11 ??? bc r15 is ???
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8c19F406:
mov r12,r0
nop
cmp/eq 0x0A,r0
bt loc_8c19F426
cmp/eq 0x0B,r0
bt loc_8c19F42A
cmp/eq 0x0C,r0
bt loc_8c19F42E
cmp/eq 0x0D,r0
bt loc_8c19F432
cmp/eq 0x0E,r0
bt loc_8c19F436
cmp/eq 0x0F,r0
bt loc_8c19F43A
bra loc_8c19F9AC
nop

loc_8c19F426:
bra loc_8c19F43C
mov 0x0E,r4

loc_8c19F42A:
bra loc_8c19F43C
mov r2,r4

loc_8c19F42E:
bra loc_8c19F43C
mov 0x0B,r4

loc_8c19F432:
bra loc_8c19F43C
mov 0x0C,r4

loc_8c19F436:
bra loc_8c19F43C
mov 0x0F,r4

loc_8c19F43A:
#data 0xE40D


loc_8c19F43C:
add 0x0C,r15
mov.l @(loc_8c19F460,pc),r3 ; r3 set to 0x8C19B3E6
lds.l @r15+,pr
mov.l @r15+,r8
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

#align4
loc_8c19F450:
#data 0x8C347970

#align4
loc_8c19F454:
#data loc_8c19AA0C

loc_8c19F458:
#data loc_8c19B2D8

loc_8c19F45C:
#data loc_8c19B3A0

loc_8c19F460:
#data loc_8c19B3E6


loc_8c19F464:
mov 0x75,r6 ; r6 set to 0x75
mov r6,r13 ; r13 set to 0x75
add 0x0B,r13 ; r13 set to 0x80
mov 0x76,r5 ; r5 set to 0x76
mov 0x71,r4 ; r4 set to 0x71
mov r12,r0
nop
add 0xF0,r0
mov 0x35,r1 ; r1 set to 0x35
cmp/hs r1,r0
bf loc_8c19F47E
bra loc_8c19F852
nop

loc_8c19F47E:
shll r0
mov r0,r1
mova @(loc_8c19F48C,pc),r0  ; r0 set to 0x8C19F48C
mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???
braf r0
nop
#data 0x0000

#align4
loc_8c19F48C:
#data 0x0076006C
#data 0x008A0080
#data 0x009403C8
#data 0x00C000AA
#data 0x00F200D4
#data 0x010E010A
#data 0x012E0116
#data 0x015E0146
#data 0x0170016A
#data 0x01B20182
#data 0x01CC01C8
#data 0x01E401D8
#data 0x01FC01F0
#data 0x02140200
#data 0x0230021E
#data 0x024C023A
#data 0x02680256
#data 0x0274026C
#data 0x0288027C
#data 0x02A00294
#data 0x02D602AA
#data 0x02FE02EA
#data 0x03260312
#data 0x034E033A
#data 0x03760362
#data 0x039E038A
#data 0x61E203B2
#data 0x6010711C
#data 0xCB01A043
#data 0x711C61E2
#data 0xA0506010
#data 0x61E2CB01
#data 0x6010711C
#data 0xCB01A057
#data 0x711C61E2
#data 0xA05E6010
#data 0x61E2CB01
#data 0x6010711C
#data 0x2100CB01
#data 0xE04862E2
#data 0x0214E152
#data 0x0009A194
#data 0x711C61E2
#data 0xCB016010
#data 0x91702100
#data 0x62E2E048
#data 0xA1890214
#data 0xD23A0009
#data 0x420B84F4
#data 0x63E26403
#data 0xE251E048
#data 0xA17F0324
#data 0xD2350009
#data 0x420B84F4
#data 0x63E26403
#data 0x6030731C
#data 0x2300C9FE
#data 0xE0489358
#data 0x023462E2
#data 0x0009A170
#data 0x612362E2
#data 0x6010711C
#data 0x2100C9FE
#data 0xE048924D
#data 0x032463E2
#data 0x0009A164
#data 0x0009A0AF
#data 0xE04861E2
#data 0x0154A15E
#data 0x612362E2
#data 0x6010711C
#data 0x2100C9FE
#data 0xE048923C
#data 0x032463E2
#data 0x0009A152
#data 0x612362E2
#data 0x6010711C
#data 0x2100C9FE
#data 0xE0489231
#data 0x032463E2
#data 0x0009A146
#data 0x612362E2
#data 0x6010711C
#data 0x2100C9FE
#data 0xE0489226
#data 0x032463E2
#data 0x0009A13A
#data 0xE0489221
#data 0x012461E2
#data 0x0009A1DC
#data 0xA022941C
#data 0xD20E0009
#data 0xE402420B
#data 0xE0489215
#data 0x032463E2
#data 0x0009A128
#data 0xD20A7F0C
#data 0x940E4F26
#data 0x6AF668F6
#data 0x6CF66BF6
#data 0x422B6DF6
#data 0x00846EF6
#data 0x00A00082
#data 0x00A400A8
#data 0x008600A1
#data 0x05140834

#align4
loc_8c19F634:
#data loc_8c19AAF2

loc_8c19F638:
#data loc_8c19B084
#data 0x7F0C9484
#data 0x4F26D344
#data 0x6AF668F6
#data 0x6CF66BF6
#data 0x432B6DF6
#data 0xA1036EF6
#data 0x63E20009
#data 0xE201E048
#data 0xA0FD0324
#data 0x61E20009
#data 0xE202E048
#data 0xA0F70124
#data 0x62E20009
#data 0xE112E048
#data 0xA0F10214
#data 0x62E20009
#data 0xE114E048
#data 0xA0EB0214
#data 0xA0010009
#data 0xE401E400
#data 0x410BD132
#data 0x925A0009
#data 0x63E2E048
#data 0xA0DF0324
#data 0xD22E0009
#data 0xE400420B
#data 0x0009A003
#data 0x410BD12B
#data 0x924DE401
#data 0x63E2E048
#data 0xA0D10324
#data 0xD2270009
#data 0xE400420B
#data 0x0009A003
#data 0x410BD124
#data 0x9240E401
#data 0x63E2E048
#data 0xA0C30324
#data 0xD2200009
#data 0xE400420B
#data 0x0009A003
#data 0x410BD11D
#data 0x9233E401
#data 0x63E2E048
#data 0xA0B50324
#data 0xA0040009
#data 0x61E20009
#data 0xA0AFE048
#data 0x61E20164
#data 0xA0ABE048
#data 0x61E20144
#data 0xE278E048
#data 0xA0A50124
#data 0x62E20009
#data 0xE174E048
#data 0xA09F0214
#data 0x62E20009
#data 0xE172E048
#data 0xA0990214
#data 0x62E20009
#data 0x0254E048
#data 0x0009A094
#data 0x6513E105
#data 0x2F166613
#data 0xD2076713
#data 0x64D3420B
#data 0x0009A014
#data 0x00B8044C
#data 0x00B200B4
#data 0x000000B1

#align4
loc_8c19F754:
#data loc_8c19B084

loc_8c19F758:
#data loc_8c19AB4A

loc_8c19F75C:
#data loc_8c19BAE0
#data 0x6523E206
#data 0x2F266623
#data 0xD13B6723
#data 0x64D3410B
#data 0x7F04A06D
#data 0x6513E107
#data 0x2F166613
#data 0xD2366713
#data 0x64D3420B
#data 0x7F04A063
#data 0x6523E208
#data 0x2F266623
#data 0xD1316723
#data 0x64D3410B
#data 0x7F04A059
#data 0x6513E10C
#data 0x2F166613
#data 0xD22C6713
#data 0x64D3420B
#data 0x7F04A04F
#data 0x6523E20D
#data 0x2F266623
#data 0xD1276723
#data 0x64D3410B
#data 0x7F04A045
#data 0x6513E10E
#data 0x2F166613
#data 0xD2226713
#data 0x64D3420B
#data 0x7F04A03B
#data 0x6523E215
#data 0x2F266623
#data 0xD11D6723
#data 0x64D3410B
#data 0x7F04A031
#data 0x6513E116
#data 0x2F166613
#data 0xD2186713
#data 0x64D3420B
#data 0x7F04A027
#data 0x6523E217
#data 0x2F266623
#data 0xD1136723
#data 0x64D3410B
#data 0x7F04A01D
#data 0x6513E119
#data 0x2F166613
#data 0xD20E6713
#data 0x64D3420B
#data 0x7F04A013
#data 0x6523E21D
#data 0x2F266623
#data 0xD1096723
#data 0x64D3410B
#data 0x7F04A009
#data 0x6513E120
#data 0x2F166613
#data 0xD2046713
#data 0x64D3420B
#data 0xA0057F04
#data 0xEB01


loc_8c19F852:
bra loc_8c19F9AC
nop
#data 0x0000

#align4
loc_8c19F858:
#data loc_8c19BAE0
#data 0x222862BE
#data 0x68E2891E
#data 0xD2459482
#data 0x420B7848
#data 0x2800E501
#data 0xE04863E2
#data 0x937A023C
#data 0x3230622C
#data 0xD1408B04
#data 0x9475E601
#data 0xE500410B
#data 0xE04863E2
#data 0x9370023C
#data 0x3230622C
#data 0xD13A8B04
#data 0x9469E601
#data 0xE505410B
#data 0x735463E2
#data 0xC9F76030
#data 0x63E22300
#data 0x60307320
#data 0x2300CB01
#data 0x732463E2
#data 0xCB046030
#data 0x63E22300
#data 0x60307324
#data 0x2300CB01
#data 0x735463E2
#data 0xCB026030
#data 0x63E22300
#data 0x6030731C
#data 0x2BB86BBE
#data 0x8D5BCB08
#data 0x63E22300
#data 0x6030737C
#data 0x2300CB01
#data 0xD425D226
#data 0xE50A420B
#data 0xDD26DC25
#data 0xDB229A3C
#data 0x0009A005
#data 0x64B24C0B
#data 0x2008600E
#data 0x60E28B20
#data 0x001CE150
#data 0x8843600C
#data 0xE2008BF4
#data 0x2F26E543
#data 0xE601D31D
#data 0x430B6723
#data 0x600E6463
#data 0x8F032008
#data 0x94227F04
#data 0x0009A00D
#data 0xD413D314
#data 0xE50A430B
#data 0xA00A9A1C
#data 0x4C0B0009
#data 0x600E64B2
#data 0x89042008
#data 0x4D0B64A3
#data 0xA02B0009
#data 0x62E20009
#data 0x00096023
#data 0x6000707C
#data 0x600CC901
#data 0x8BEC2008
#data 0x0009A020
#data 0x00C10309
#data 0x00CE02E3
#data 0x04E204D8
#data 0x000004EC

#align4
loc_8c19F97C:
#data loc_8c19E1F8

loc_8c19F980:
#data loc_8c19E30C
#data 0x8C347A18

#align4
loc_8c19F988:
#data bank1b.loc_8c1b3EEC

loc_8c19F98C:
#data bank1b.loc_8c1b3F0C

loc_8c19F990:
#data bank1a.loc_8c1a003E

loc_8c19F994:
#data bank1b.loc_8c1b31DA
#data 0xD3457F0C
#data 0x68F64F26
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6432B


loc_8c19F9AC:
add 0x0C,r15
lds.l @r15+,pr
mov.l @r15+,r8
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c19F9BE:
sts.l pr,@-r15
mov.l @(loc_8c19FAB8,pc),r3 ; r3 set to 0x8C347970
extu.b r4,r7
mov.l @(loc_8c19FAB4,pc),r6 ; r6 set to 0x8C347980
mov r7,r0
nop
cmp/eq 0x01,r0
bf/s loc_8c19F9E2
mov.l @r3,r5
mov r5,r2
mov 0x03,r0 ; r0 set to 0x03
add 0x04,r2
mov.b r0,@r6 ; r6 ??
mov.l @(loc_8c19FABC,pc),r3 ; r3 set to 0x8C130ECC
jsr @r3
mov 0x02,r1 ; r1 set to 0x02
bra loc_8c19FA20
nop

loc_8c19F9E2:
cmp/eq 0x02,r0
bf loc_8c19F9F8
mov r5,r2
mov 0x01,r0 ; r0 set to 0x01
add 0x04,r2
mov.b r0,@r6
mov.l @(loc_8c19FABC,pc),r3 ; r3 set to 0x8C130ECC
jsr @r3
mov 0x02,r1 ; r1 set to 0x02
bra loc_8c19FA20
nop

loc_8c19F9F8:
mov r7,r0
nop
cmp/eq 0x03,r0
bf loc_8c19FA12
mov r5,r2
mov 0x02,r0 ; r0 set to 0x02
add 0x04,r2
mov.b r0,@r6
mov.l @(loc_8c19FABC,pc),r3 ; r3 set to 0x8C130ECC
jsr @r3
mov r0,r1 ; r1 set to 0x02
bra loc_8c19FA20
nop

loc_8c19FA12:
mov r5,r2
mov 0x00,r0 ; r0 set to 0x00
add 0x04,r2
mov.b r0,@r6
mov.l @(loc_8c19FABC,pc),r3 ; r3 set to 0x8C130ECC
jsr @r3
mov 0x02,r1 ; r1 set to 0x02

loc_8c19FA20:
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------
#data 0x4F22
#data 0x943DD325
#data 0xE501430B
#data 0x000B4F26
#data 0x4F220009
#data 0x0009BFF5
#data 0x600CE20A
#data 0x89023023
#data 0x000B4F26
#data 0xE000E001
#data 0x000B4F26
#data 0xD3190009
#data 0x4F22E048
#data 0x95266432
#data 0x622C024C
#data 0x32502259
#data 0xD0178B03
#data 0xC8206000
#data 0xE048890A
#data 0x931B004C
#data 0xC9F0600C
#data 0x8B063030
#data 0x6000D011
#data 0x8B02C840
#data 0x000B4F26
#data 0xD20DE00A
#data 0x420B940F
#data 0x4F26E501
#data 0x0009000B
;-------------------------------------------------------------------------------
#data 0xD3094F22
#data 0x430B9407
#data 0x4F26E501
#data 0x0009000B
;-------------------------------------------------------------------------------
#data 0x00E0026F
#data 0x02E30090

#align4
loc_8c19FAB0:
#data loc_8c19E562

loc_8c19FAB4:
#data 0x8C347980

#align4
loc_8c19FAB8:
#data 0x8C347970

#align4
loc_8c19FABC:
#data bank13.loc_8c130ECC

loc_8c19FAC0:
#data loc_8c19E1F8
#data 0x8C34797A


loc_8c19FAC8:
extu.b r4,r0
add 0xFF,r0
mov 0x16,r1 ; r1 set to 0x16
cmp/hs r1,r0
bt loc_8c19FB62
shll r0
mov r0,r1 ; r1 ??? bc r0 is ???
mova @(loc_8c19FAE0,pc),r0  ; r0 set to 0x8C19FAE0
mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???
braf r0
nop
#data 0x0000

#align4
loc_8c19FAE0:
#data 0x0032002E
#data 0x003A0036
#data 0x0042003E
#data 0x004A0046
#data 0x0052004E
#data 0x005A0056
#data 0x0062005E
#data 0x006A0066
#data 0x0072006E
#data 0x007A0076
#data 0x0082007E
#data 0xE40EA029
#data 0xE410A027
#data 0xE411A025
#data 0xE413A023
#data 0xE414A021
#data 0xE417A01F
#data 0xE418A01D
#data 0xE419A01B
#data 0xE41CA019
#data 0xE41DA017
#data 0xE41EA015
#data 0xE420A013
#data 0xE421A011
#data 0xE422A00F
#data 0xE424A00D
#data 0xE425A00B
#data 0xE426A009
#data 0xE428A007
#data 0xE429A005
#data 0xE42AA003
#data 0xE42CA001
#data 0xE42D


loc_8c19FB62:
rts
mov r4,r0
;-------------------------------------------------------------------------------

loc_8c19FB66:
extu.b r4,r0
add 0xFF,r0
mov 0x0D,r1 ; r1 set to 0x0D
cmp/hs r1,r0
bt loc_8c19FBC8
shll r0
mov r0,r1 ; r1 ??? bc r0 is ???
mova @(loc_8c19FB7C,pc),r0  ; r0 set to 0x8C19FB7C
mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???
braf r0
nop

#align4
loc_8c19FB7C:
#data 0x001E001A
#data 0x00260022
#data 0x002E002A
#data 0x00360032
#data 0x003E003A
#data 0x00460042
#data 0xA017004A
#data 0xA015E413
#data 0xA013E416
#data 0xA011E418
#data 0xA00FE41A
#data 0xA00DE41D
#data 0xA00BE41F
#data 0xA009E421
#data 0xA007E423
#data 0xA005E425
#data 0xA003E427
#data 0xA001E429
#data 0xE42DE42B


loc_8c19FBC8:
rts
mov r4,r0
;-------------------------------------------------------------------------------

#align4
loc_8c19FBCC:
#data 0x70FF604C
#data 0x3012E10E
#data 0x4000892F
#data 0xC7026103
#data 0x0023001D
#data 0x00000009
#data 0x0022001E
#data 0x002A0026
#data 0x0032002E
#data 0x003A0036
#data 0x0042003E
#data 0x004A0046
#data 0x0052004E
#data 0xE403A019
#data 0xE404A017
#data 0xE405A015
#data 0xE406A013
#data 0xE407A011
#data 0xE408A00F
#data 0xE409A00D
#data 0xE40AA00B
#data 0xE40BA009
#data 0xE40CA007
#data 0xE40DA005
#data 0xE40FA003
#data 0xE412A001
#data 0xE415

loc_8c19FC36:
#data 0x000B
#data 0x6043
;-------------------------------------------------------------------------------

loc_8c19FC3A:
#data 0x604C
#data 0x3012E11E
#data 0x4000895D
#data 0xC7026103
#data 0x0023001D
#data 0x00000009
#data 0x003E003E
#data 0x00460042
#data 0x004E004A
#data 0x00560052
#data 0x005E005A
#data 0x00660062
#data 0x006E006A
#data 0x00760072
#data 0x007E007A
#data 0x00860082
#data 0x008E008A
#data 0x00960092
#data 0x009E009A
#data 0x00A600A2
#data 0x00AE00AA
#data 0xE401A037
#data 0xE402A035
#data 0xE403A033
#data 0xE404A031
#data 0xE406A02F
#data 0xE407A02D
#data 0xE408A02B
#data 0xE405A029
#data 0xE409A027
#data 0xE40AA025
#data 0xE40BA023
#data 0xE40CA021
#data 0xE40DA01F
#data 0xE40FA01D
#data 0xE412A01B
#data 0xE415A019
#data 0xE413A017
#data 0xE416A015
#data 0xE418A013
#data 0xE41AA011
#data 0xE41DA00F
#data 0xE41FA00D
#data 0xE421A00B
#data 0xE423A009
#data 0xE425A007
#data 0xE427A005
#data 0xE429A003
#data 0xE42BA001
#data 0xE42D

loc_8c19FCFE:
#data 0x000B
#data 0x6043
;-------------------------------------------------------------------------------

loc_8c19FD02:
#data 0x2FE6
#data 0xD313E048
#data 0x6E329420
#data 0x911E02EC
#data 0x2249622C
#data 0x890B3210
#data 0x931902EC
#data 0x2249622C
#data 0x89053230
#data 0x921400EC
#data 0xC9E0600C
#data 0x8B053020

#align4
loc_8c19FD30:
#data 0x000960E3
#data 0x60007038
#data 0xC91FA005

#align4
loc_8c19FD3C:
#data 0x000960E3
#data 0x60007038
#data 0xC90F

loc_8c19FD46:
#data 0x6403
#data 0x6EF6AF77
#data 0x009000F0
#data 0x00E000C0
#data 0x8C347970


loc_8c19FD58:
mov.l r14,@-r15
mov 0x48,r0 ; r0 set to 0x48
mov.l r13,@-r15
mov.l @(loc_8c19FE28,pc),r3 ; r3 set to 0x8C347970
sts.l pr,@-r15
mov.l @r3,r14
mov.w @(loc_8c19FE1E,pc),r4 ; r4 set to 0xE0
mov.w @(loc_8c19FE20,pc),r13 ; r13 set to 0x2E4
mov.b @(r0,r14),r2
extu.b r2,r2
and r4,r2
cmp/eq r4,r2
bf loc_8c19FD8C
mov.l @(loc_8c19FE2C,pc),r0 ; r0 set to 0x8C34797A
mov.b @r0,r0 ; r0 ??
tst 0x20,r0
bf loc_8c19FD8C
mov.l @(loc_8c19FE30,pc),r3 ; r3 set to 0x8C19E1F8
mov 0x01,r5 ; r5 set to 0x01
jsr @r3
mov r13,r4 ; r4 set to 0x2E4
lds.l @r15+,pr
mov r0,r4 ; r4 ??? bc r0 is ???
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
bra loc_8c19FAC8
mov.l @r15+,r14

loc_8c19FD8C:
mov.w @(loc_8c19FE22,pc),r4 ; r4 set to 0xF0
mov 0x48,r0 ; r0 set to 0x48
mov.b @(r0,r14),r3
mov.w @(loc_8c19FE24,pc),r2 ; r2 set to 0x90
extu.b r3,r3
and r4,r3
cmp/eq r2,r3
bf loc_8c19FDB6
mov.l @(loc_8c19FE2C,pc),r0 ; r0 set to 0x8C34797A
mov.b @r0,r0 ; r0 ??
tst 0x40,r0
bf loc_8c19FDB6
mov.l @(loc_8c19FE30,pc),r2 ; r2 set to 0x8C19E1F8
mov 0x01,r5 ; r5 set to 0x01
jsr @r2
mov r13,r4 ; r4 ??? bc r13 is ???
lds.l @r15+,pr
mov r0,r4
mov.l @r15+,r13
bra loc_8c19FB66
mov.l @r15+,r14

loc_8c19FDB6:
#data 0xE048
#data 0x933402EC
#data 0x2249622C
#data 0x89073230
#data 0x6000D019
#data 0x8B03C840
#data 0x6000D017
#data 0x8908C820

#align4
loc_8c19FDD4:
#data 0xE501D316
#data 0x64D3430B
#data 0x64034F26
#data 0xAEF36DF6
#data 0x6EF6

loc_8c19FDE6:
#data 0x60E3
#data 0x70380009
#data 0x4F266000
#data 0x6403C90F
#data 0xAF206DF6
#data 0x6EF6


loc_8c19FDFA:
sts.l pr,@-r15
mov.l @(loc_8c19FE34,pc),r3 ; r3 set to 0x8C1A00AA
jsr @r3
nop
mov.l @(loc_8c19FE38,pc),r3 ; r3 set to 0x8C19A69C
mov.l @(loc_8c19FE28,pc),r2 ; r2 set to 0x8C347970
jsr @r3
mov.l r0,@r2 ; r2 ??? bc r0 is ???
exts.b r0,r0
tst r0,r0
bf loc_8c19FE16
lds.l @r15+,pr
rts
mov 0x00,r0
;-------------------------------------------------------------------------------

loc_8c19FE16:
mov 0x01,r0 ; r0 set to 0x01
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c19FE1E:
#data 0x00E0

loc_8c19FE20:
#data 0x02E4

loc_8c19FE22:
#data 0x00F0

loc_8c19FE24:
#data 0x0090
#data 0x00C0

#align4
loc_8c19FE28:
#data 0x8C347970

#align4
loc_8c19FE2C:
#data 0x8C34797A

#align4
loc_8c19FE30:
#data loc_8c19E1F8

loc_8c19FE34:
#data bank1a.loc_8c1a00AA

loc_8c19FE38:
#data loc_8c19A69C


loc_8c19FE3C:
rts
mov 0x00,r0
;-------------------------------------------------------------------------------
#data 0x432BD330
#data 0x0009


loc_8c19FE46:
rts
nop
;-------------------------------------------------------------------------------

loc_8c19FE4A:
rts
nop
;-------------------------------------------------------------------------------

loc_8c19FE4E:
rts
nop
;-------------------------------------------------------------------------------
#data 0x644C
#data 0x2448000B
;-------------------------------------------------------------------------------

loc_8c19FE58:
rts
nop
;-------------------------------------------------------------------------------

#align4
loc_8c19FE5C:
#data 0x644CD32A
#data 0x62304F22
#data 0x914C2448
#data 0x3210622C
#data 0xD227891F
#data 0x0009420B
#data 0x2008600E
#data 0xD3258919
#data 0x2F266230
#data 0x6100D024
#data 0xD1242F16
#data 0x2F266210
#data 0x6320D223
#data 0xD3232F36
#data 0x2F166130
#data 0xD323D222
#data 0xD2236720
#data 0x65206630
#data 0xD318D222
#data 0x6430420B
#data 0x7F14

loc_8c19FEAE:
#data 0x4F26
#data 0x0009000B
;-------------------------------------------------------------------------------

loc_8c19FEB4:
rts
nop
;-------------------------------------------------------------------------------

loc_8c19FEB8:
exts.b r4,r0
mov.l @(loc_8c19FF34,pc),r5 ; r5 set to 0xA0600480
cmp/eq 0x01,r0
bf loc_8c19FEC6
mov.b @r5,r0
bra loc_8c19FECA
and 0xFE,r0

loc_8c19FEC6:
mov.b @r5,r0
or 0x01,r0

loc_8c19FECA:
rts
mov.b r0,@r5
;-------------------------------------------------------------------------------
#data 0x000B
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c19FED2:
rts
mov 0x01,r0
;-------------------------------------------------------------------------------

loc_8c19FED6:
exts.b r4,r0
cmp/eq 0x01,r0
bf loc_8c19FEE2
mov.l @(loc_8c19FF38,pc),r3 ; r3 set to 0x8C19D854
jmp @r3
nop

loc_8c19FEE2:
mov.l @(loc_8c19FF3C,pc),r2 ; r2 set to 0x8C19D8A0
jmp @r2
nop

loc_8c19FEE8:
rts
nop
;-------------------------------------------------------------------------------

loc_8c19FEEC:
mov.l @(loc_8c19FF40,pc),r3 ; r3 set to 0x8C19F9BE
jmp @r3
nop
#data 0x000B
#data 0x000BE000
#data 0x000B0009
#data 0x000B0009
#data 0x00FE0009

#align4
loc_8c19FF04:
#data loc_8c19D204
#data 0x8C34B338

#align4
loc_8c19FF0C:
#data bank1a.loc_8c1a10F2
#data 0x8C34B340
#data 0x8C34B33F
#data 0x8C34B33E
#data 0x8C34B33D
#data 0x8C34B33C
#data 0x8C34B33B
#data 0x8C34B33A
#data 0x8C34B339

#align4
loc_8c19FF30:
#data bank1a.loc_8c1a06C8

loc_8c19FF34:
#data 0xA0600480

#align4
loc_8c19FF38:
#data loc_8c19D854

loc_8c19FF3C:
#data loc_8c19D8A0

loc_8c19FF40:
#data loc_8c19F9BE

loc_8c19FF44:
#data 0x2FD62FE6
#data 0xDE702FC6
#data 0x60E04F22
#data 0xC802600C
#data 0xD46E890B
#data 0x72FF6241
#data 0x622D2421
#data 0x8B042228
#data 0xD26B60E0
#data 0x420BC9FD
#data 0x2E00

loc_8c19FF6E:
#data 0x60E0
#data 0xC808600C
#data 0xD4688909
#data 0x72FF6241
#data 0x622D2421
#data 0x8B022228
#data 0xC9F760E0
#data 0x2E00

loc_8c19FF8A:
#data 0x60E0
#data 0x600CDC63
#data 0x8922C801
#data 0x62D1DD62
#data 0x32C3622D
#data 0x62D18902
#data 0x2D217201

#align4
loc_8c19FFA4:
#data 0xE073D55F
#data 0x005CE440
#data 0x2049600C
#data 0x8B048840
#data 0x6030D355
#data 0xC810600C
#data 0x890D

loc_8c19FFBE:
#data 0xE073
#data 0x633C035C
#data 0x33C02349
#data 0xE21E8B01
#data 0x2D21

loc_8c19FFCE:
#data 0x60E0
#data 0x2E00C9FE
#data 0x430BD354
#data 0x64D1

loc_8c19FFDA:
#data 0x60E0
#data 0xC804600C
#data 0xD452890C
#data 0x622D6241
#data 0x890232C3
#data 0x72016241
#data 0x2421

loc_8c19FFF2:
#data 0xE31E
#data 0x60E02431
#data 0x2E00C9FB

#align4
loc_8c19FFFC:
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x000B6EF6
#data 0x000B0009
#data 0x000B0009
#data 0x000B0009
#data 0x000B0009
#data 0x000B0009
#data 0x000B0009
#data 0x000B0009
#data 0x000B0009
#data 0x000B0009
#data 0x000B0009
#data 0x0009
