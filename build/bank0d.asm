
loc_8C0D0048:
#data 0x2FD62FE6
#data 0x7FFC4F22
#data 0x90846E43
#data 0x93815DE6
#data 0x2F3233Ec
#data 0x222802Dc
#data 0x84E68915
#data 0x65E3E301
#data 0x80E67001
#data 0x0E349078
#data 0x64D3B24c
#data 0x06ECE021
#data 0xD03BE51b
#data 0x6363666c
#data 0x46004308
#data 0xD339363c
#data 0x430B066c
#data 0x64E3

loc_8C0D008E:
#data 0x62F2
#data 0x63219067
#data 0x332002Dd
#data 0xE4008907
#data 0x00096043
#data 0x80E580E6
#data 0x905B80E4
#data 0x0E44

loc_8C0D00AA:
#data 0x7F04
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0D00B4:
#data 0x6E432FE6
#data 0x2FD69450
#data 0x34EC9051
#data 0x4F222FC6
#data 0x63405DE6
#data 0x332002Dc
#data 0xEC008F04
#data 0x02DC9045
#data 0x8B072228

#align4
loc_8C0D00D8:
#data 0x000960C3
#data 0x80E580E6
#data 0x903D80E4
#data 0x0EC4A020

#align4
loc_8C0D00E8:
#data 0xB20F65E3
#data 0xE02464D3
#data 0xE3FF02Dc
#data 0xE0310E24
#data 0x90330E34
#data 0x222802Dc
#data 0xD31B8B02
#data 0x64E3430b

#align4
loc_8C0D0108:
#data 0x02EC9029
#data 0x890B2228
#data 0xE0210EC4
#data 0x64D34F26
#data 0xD31605Ec
#data 0x6CF6E601
#data 0x6DF67506
#data 0x6EF6432b

#align4
loc_8C0D0128:
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D0132:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D015C,pc),r4 ; r4 set to 0xCc
mov.l r13,@-r15
mov.w @(loc_8C0D0162,pc),r0 ; r0 set to 0x158
add r14,r4 ; r4 ??? bc r14 is ???	
sts.l pr,@-r15
mov.l @(0x18,r14),r13
mov.w @r4,r3
mov.w @(r0,r13),r2
cmp/eq r2,r3
bt loc_8C0D0178
mov 0x00,r4 ; r4 set to 0x00
mov r4,r0 ; r0 set to 0x00
nop 	
mov.b r0,@(0x06,r14) 	
mov.b r0,@(0x05,r14) 	
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0D0160,pc),r0 ; r0 set to 0x12c
bra loc_8C0D0196
mov.b r4,@(r0,r14) 	

loc_8C0D015C:
#data 0x00Cc
#data 0x0141

loc_8C0D0160:
#data 0x012c

loc_8C0D0162:
#data 0x0158
#data 0x000001A0

#align4
loc_8C0D0168:
#data 0x8c13B08c

loc_8C0D016C:
#data bank03.loc_8c034C38

loc_8C0D0170:
#data bank03.loc_8c034D8c

loc_8C0D0174:
#data loc_8c0d0584


loc_8C0D0178:
mov r14,r5
bsr loc_8C0D050c
mov r13,r4
mov 0x24,r0 ; r0 set to 0x24
mov r14,r4
mov.b @(r0,r13),r2
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov.b r2,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
lds.l @r15+,pr 	
mov.l @(loc_8C0D0298,pc),r3 ; r3 set to 0x8C034D8c
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0D0196:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D019E:
#data 0x9577
#data 0x56469077
#data 0x6351354c
#data 0x3320026d
#data 0xE5008906
#data 0x00096053
#data 0x80448045
#data 0x0454906c

#align4
loc_8C0D01BC:
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0D01C0:
mov r4,r3
mov.l @(loc_8C0D029C,pc),r1 ; r1 set to 0x8C15C9B8
mov.l r4,@-r15
mov.b @(0x06,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D01D2:
#data 0x2FE6
#data 0x4F222FD6
#data 0x6E437FFc
#data 0x5DE6905b
#data 0x33EC9356
#data 0x02DC2F32
#data 0x89152228
#data 0xE30184E6
#data 0x700165E3
#data 0x904D80E6
#data 0xB1870E34
#data 0xE02164D3
#data 0xE51B06Ec
#data 0x666CD026
#data 0x43086363
#data 0x363C4600
#data 0x066CD324
#data 0x64E3430b

#align4
loc_8C0D0218:
#data 0x903A62F2
#data 0x02DD6321
#data 0x89073320
#data 0x6043E400
#data 0x80E60009
#data 0x80E480E5
#data 0x0E449030

#align4
loc_8C0D0234:
#data 0x4F267F04
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D023E:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D0290,pc),r4 ; r4 set to 0xCc
mov.l r13,@-r15
mov.w @(loc_8C0D0292,pc),r0 ; r0 set to 0x158
add r14,r4 ; r4 ??? bc r14 is ???	
mov.l r12,@-r15
sts.l pr,@-r15
mov.l @(0x18,r14),r13
mov.w @r4,r3
mov.w @(r0,r13),r2
cmp/eq r2,r3
bt/s loc_8C0D0266
mov 0x00,r12 ; r12 set to 0x00
mov r12,r0 ; r0 set to 0x00
nop 	
mov.b r0,@(0x06,r14) 	
mov.b r0,@(0x05,r14) 	
bra loc_8C0D028a
mov.b r0,@(0x04,r14) 	

loc_8C0D0266:
mov r14,r5
bsr loc_8C0D050c
mov r13,r4
mov 0x24,r0 ; r0 set to 0x24
mov.b r12,@(r0,r14) 	
mov.w @(loc_8C0D0296,pc),r0 ; r0 set to 0x141
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
cmp/eq 0x00,r0 	
bt loc_8C0D0284
cmp/eq 0x01,r0 	
bt loc_8C0D02A8
cmp/eq 0x02,r0 	
bt loc_8C0D02Be
bra loc_8C0D0284
nop 	

loc_8C0D0284:
mov.b @(0x06,r14),r0 	
add 0x01,r0
mov.b r0,@(0x06,r14) 	

loc_8C0D028A:
mov.w @(loc_8C0D0294,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
bra loc_8C0D02Be
mov.b r12,@(r0,r14) 	

loc_8C0D0290:
#data 0x00Cc

loc_8C0D0292:
#data 0x0158

loc_8C0D0294:
#data 0x012c

loc_8C0D0296:
#data 0x0141

#align4
loc_8C0D0298:
#data bank03.loc_8c034D8c

loc_8C0D029C:
#data 0x8c15C9B8

loc_8C0D02A0:
#data 0x8c13B08c

loc_8C0D02A4:
#data bank03.loc_8c034C38


loc_8C0D02A8:
mov.w @(loc_8C0D03FE,pc),r0 ; r0 set to 0x1A0
mov.b @(r0,r13),r2
tst r2,r2
bf loc_8C0D02Be
lds.l @r15+,pr 	
mov.l @(loc_8C0D040C,pc),r3 ; r3 set to 0x8C034D8c
mov r14,r4
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0D02BE:
lds.l @r15+,pr 	
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0D02C8:
#data 0x909A959a
#data 0x354C5646
#data 0x026D6351
#data 0x89073320
#data 0x6053E500
#data 0x80460009
#data 0x80448045
#data 0x0454908e

#align4
loc_8C0D02E8:
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0D02EC:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D0406,pc),r3 ; r3 set to 0x159
mov.w @(loc_8C0D0400,pc),r4 ; r4 set to 0xCc
mov.l @(0x18,r14),r5
add r14,r4 ; r4 ??? bc r14 is ???	
add r5,r3 ; r3 ??? bc r5 is ???	
mov.b @(0x01,r4),r0 	
mov.b @r3,r3
cmp/eq r3,r0
bt loc_8C0D0316
mov 0x00,r4 ; r4 set to 0x00
mov r4,r0 ; r0 set to 0x00
nop 	
mov.b r0,@(0x06,r14) 	
mov.b r0,@(0x05,r14) 	
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0D0404,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D0316:
mov.b @(0x06,r14),r0 	
mov r14,r4
mov.l @(loc_8C0D0410,pc),r1 ; r1 set to 0x8C15C9C4
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x000b
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D032A:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.w @(loc_8C0D0408,pc),r0 ; r0 set to 0x141
mov.l r8,@-r15
sts.l pr,@-r15
mov.l @(0x18,r14),r13
mov.b @(r0,r13),r3
tst r3,r3
bt loc_8C0D03F4
mov.b @(0x06,r14),r0 	
mov 0x01,r3 ; r3 set to 0x01
mov r14,r5
add 0x01,r0 ; r0 set to 0x142
mov.b r0,@(0x06,r14) 	
mov.w @(loc_8C0D0404,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
bsr loc_8C0D050c
mov r13,r4
mov.w @(loc_8C0D0408,pc),r0 ; r0 set to 0x141
mov 0x1B,r5 ; r5 set to 0x1b
mov.l @(loc_8C0D0414,pc),r3 ; r3 set to 0x8C034C38
mov.b @(r0,r13),r6
add 0x23,r6
jsr @r3
mov r14,r4
mov r14,r5 ; r5 ??? bc r14 is ???	
bsr loc_8C0D050c
mov r13,r4
mov.w @(loc_8C0D040A,pc),r0 ; r0 set to 0x130
mov 0x34,r8 ; r8 set to 0x34
mov.w @(r0,r13),r2
tst r2,r2
bt/s loc_8C0D0388
add r14,r8 ; r8 ??? bc r14 is ???	
mov.w @(loc_8C0D0408,pc),r3 ; r3 set to 0x141
mov.l @(loc_8C0D0418,pc),r1 ; r1 set to 0x8C13B0Ac
add r13,r3 ; r3 ??? bc r13 is ???	
mov.b @r3,r3
add 0xFF,r3
mov r3,r2
shll2 r2
shll r3
add r2,r3
add r3,r1 ; r1 ??? bc r3 is ???	
bra loc_8C0D03A0
mov.w @r1,r3

#align4
loc_8C0D0388:
#data 0xD123923e
#data 0x622032Dc
#data 0x632372Ff
#data 0x42004308
#data 0x312C323c
#data 0x631B6111

#align4
loc_8C0D03A0:
#data 0xE138435a
#data 0x31EC9330
#data 0x33DCD41b
#data 0xF288F32d
#data 0xF82AF230
#data 0xF2186330
#data 0x623373Ff
#data 0x43004208
#data 0x334C332c
#data 0x63038531
#data 0x901D435a
#data 0xF230F32d
#data 0x03DCF12a
#data 0x623373Ff
#data 0x43004208
#data 0x343C332c
#data 0x8542E148
#data 0x210231Ec
#data 0x03DCE024
#data 0x0E34E2Ff
#data 0x0E24E031


loc_8C0D03F4:
lds.l @r15+,pr 	
mov.l @r15+,r8
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D03FE:
#data 0x01A0

loc_8C0D0400:
#data 0x00Cc
#data 0x0158

loc_8C0D0404:
#data 0x012c

loc_8C0D0406:
#data 0x0159

loc_8C0D0408:
#data 0x0141

loc_8C0D040A:
#data 0x0130

#align4
loc_8C0D040C:
#data bank03.loc_8c034D8c

loc_8C0D0410:
#data 0x8c15C9C4

loc_8C0D0414:
#data bank03.loc_8c034C38

loc_8C0D0418:
#data 0x8c13B0Ac


loc_8C0D041C:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.w @(loc_8C0D056E,pc),r0 ; r0 set to 0x141
mov.l r8,@-r15
sts.l pr,@-r15
mov.l @(0x18,r14),r13
mov.b @(r0,r13),r3
tst r3,r3
bf loc_8C0D0446
mov 0x00,r4 ; r4 set to 0x00
mov r4,r0 ; r0 set to 0x00
nop 	
mov.b r0,@(0x06,r14) 	
mov.b r0,@(0x05,r14) 	
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0D0570,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x48,r0 ; r0 set to 0x48
bra loc_8C0D04F6
mov.l r4,@(r0,r14) 	

loc_8C0D0446:
mov.b @(r0,r13),r6
mov 0x1B,r5 ; r5 set to 0x1b
mov.l @(loc_8C0D0574,pc),r3 ; r3 set to 0x8C034C38
add 0x23,r6
jsr @r3
mov r14,r4
mov r14,r5 ; r5 ??? bc r14 is ???	
bsr loc_8C0D050c
mov r13,r4
mov.w @(loc_8C0D0572,pc),r0 ; r0 set to 0x130
mov 0x34,r8 ; r8 set to 0x34
mov.w @(r0,r13),r2
tst r2,r2
bt/s loc_8C0D047c
add r14,r8 ; r8 ??? bc r14 is ???	
mov.w @(loc_8C0D056E,pc),r3 ; r3 set to 0x141
mov.l @(loc_8C0D0578,pc),r1 ; r1 set to 0x8C13B0Ac
add r13,r3 ; r3 ??? bc r13 is ???	
mov.b @r3,r3
add 0xFF,r3
mov r3,r2
shll2 r2
shll r3
add r2,r3
add r3,r1 ; r1 ??? bc r3 is ???	
bra loc_8C0D0494
mov.w @r1,r3

loc_8C0D047C:
mov.w @(loc_8C0D056E,pc),r2 ; r2 set to 0x141
mov.l @(loc_8C0D0578,pc),r1 ; r1 set to 0x8C13B0Ac
add r13,r2 ; r2 ??? bc r13 is ???	
mov.b @r2,r2
add 0xFF,r2
mov r2,r3
shll2 r3
shll r2
add r3,r2
add r2,r1 ; r1 ??? bc r2 is ???	
mov.w @r1,r1
neg r1,r3

loc_8C0D0494:
lds r3,fpul 	
mov 0x38,r1 ; r1 set to 0x38, r1 set to 0x38
mov.w @(loc_8C0D056E,pc),r3 ; r3 set to 0x141, r3 set to 0x141
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
mov.l @(loc_8C0D0578,pc),r4 ; r4 set to 0x8C13B0AC, r4 set to 0x8C13B0Ac
add r13,r3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???	
float fpul,fr3
fmov.s @r8,fr2
fadd fr3,fr2
fmov.s fr2,@r8
mov.b @r3,r3
fmov.s @r1,fr2
add 0xFF,r3
mov r3,r2
shll2 r2
shll r3
add r2,r3
add r4,r3
mov.w @(0x02,r3),r0 	
mov r0,r3
lds r3,fpul 	
mov.w @(loc_8C0D056E,pc),r0 ; r0 set to 0x141, r0 set to 0x141
float fpul,fr3
fadd fr3,fr2
fmov.s fr2,@r1
mov.b @(r0,r13),r3
add 0xFF,r3
mov r3,r2
shll2 r2
shll r3
add r2,r3
add r3,r4 ; r4 ??? bc r3 is ???, r4 ??? bc r3 is ???	
mov 0x48,r1 ; r1 set to 0x48, r1 set to 0x48
mov.w @(0x04,r4),r0 	
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
mov.l r0,@r1
mov 0x02,r2 ; r2 set to 0x02, r2 set to 0x02
mov.w @(loc_8C0D056E,pc),r0 ; r0 set to 0x141, r0 set to 0x141
mov.b @(r0,r13),r3
cmp/gt r2,r3
bf loc_8C0D04F0
mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
mov.b @(r0,r13),r1
mov.b r1,@(r0,r14) 	
bra loc_8C0D04F2
mov 0x01,r3

loc_8C0D04F0:
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf

loc_8C0D04F2:
mov 0x31,r0 ; r0 set to 0x31, r0 set to 0x31
mov.b r3,@(r0,r14) 	

loc_8C0D04F6:
lds.l @r15+,pr 	
mov.l @r15+,r8
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D0500:
mov.w @(loc_8C0D0570,pc),r0 ; r0 set to 0x12c
mov 0x00,r2 ; r2 set to 0x00
mov.b r2,@(r0,r4) 	

loc_8C0D0506:
mov.l @(loc_8C0D057C,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop 	

;==============================================
loc_8C0D050C:
#data 0xD61CE321
#data 0xE034335c
#data 0xF537F346
#data 0xF346E038
#data 0x315C6103
#data 0x6330F537
#data 0x633CF218
#data 0x42086233
#data 0x332C4300
#data 0x8531336c
#data 0x435A6303
#data 0xF32DE021
#data 0xF12AF230
#data 0x633C035c
#data 0x42086233
#data 0x332C4300
#data 0x9010363c
#data 0x024D6361
#data 0x2228435a
#data 0x8F01F42d
#data 0xF44D0525

#align4
loc_8C0D0560:
#data 0xF356E034
#data 0x000BF340
#data 0xF537
;-------------------------------------------------------------------------------

loc_8C0D056A:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0D056E:
#data 0x0141

loc_8C0D0570:
#data 0x012c

loc_8C0D0572:
#data 0x0130

#align4
loc_8C0D0574:
#data bank03.loc_8c034C38

loc_8C0D0578:
#data 0x8c13B0Ac

loc_8C0D057C:
#data bank04.loc_8c0450C0

loc_8C0D0580:
#data 0x8c13B088

loc_8C0D0584:
#data 0x4F222FE6
#data 0x6E437FF8
#data 0x00096053
#data 0xE503D34e
#data 0x2F6080F4
#data 0x430BE600
#data 0x20086463
#data 0x64038D54
#data 0x62E3D34a
#data 0x90879188
#data 0x314C1434
#data 0x320CD348
#data 0x430B14E6
#data 0x908070E4
#data 0x6143E501
#data 0x04547150
#data 0x84025046
#data 0x50468042
#data 0x80418401
#data 0x5346E050
#data 0xF437F336
#data 0x5346E054
#data 0xF437F336
#data 0x5346906e
#data 0x0424023c
#data 0x53467001
#data 0x0424023c
#data 0x5346E030
#data 0x0424023c
#data 0xD3375246
#data 0x430B7250
#data 0x5146E00c
#data 0x925CE024
#data 0x0434031c
#data 0x0425E026
#data 0x9057E320
#data 0x6133E224
#data 0x0434314c
#data 0x043470Ff
#data 0x04247003
#data 0x042470Ff
#data 0x210084F4
#data 0x00096053
#data 0xE3008044
#data 0x954660F0
#data 0x90408045
#data 0x0434354c
#data 0x03ED702c
#data 0x25317001
#data 0x805100Ec

#align4
loc_8C0D064C:
#data 0x00096043
#data 0x4F267F08
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0D0658:
mov r4,r3
mov.l @(loc_8C0D06DC,pc),r1 ; r1 set to 0x8C15C9Cc
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D066A:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0D066E:
mov.l r14,@-r15
mov r4,r14
mov.l @(loc_8C0D06E0,pc),r1 ; r1 set to 0x8C15C9Dc
sts.l pr,@-r15
mov.b @(0x05,r14),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jsr @r3
nop 	
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0D139c
mov.l @r15+,r14

loc_8C0D068A:
mov r4,r3
mov.l @(loc_8C0D06E4,pc),r1 ; r1 set to 0x8C15CA18
mov.l r4,@-r15
mov.b @(0x06,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D069C:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D06C6,pc),r5 ; r5 set to 0xCc
mov.w @(loc_8C0D06C8,pc),r0 ; r0 set to 0x158
add r14,r5 ; r5 ??? bc r14 is ???	
sts.l pr,@-r15
mov.l @(0x18,r14),r4
mov.w @r5,r3
mov.w @(r0,r4),r2
cmp/eq r2,r3
bt loc_8C0D06E8
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x04,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x012C00Dc
#data 0x140101A3
#data 0x013d

loc_8C0D06C6:
#data 0x00Cc

loc_8C0D06C8:
#data 0x0158
#data 0x0000

#align4
loc_8C0D06CC:
#data bank04.loc_8c044F12

loc_8C0D06D0:
#data loc_8c0d0658

loc_8C0D06D4:
#data bank12.loc_8c129560

loc_8C0D06D8:
#data bank12.loc_8c1294C8

loc_8C0D06DC:
#data 0x8c15C9Cc

loc_8C0D06E0:
#data 0x8c15C9Dc

loc_8C0D06E4:
#data 0x8c15CA18


loc_8C0D06E8:
mov.w @(loc_8C0D080A,pc),r0 ; r0 set to 0x140
mov.b @(r0,r4),r3
tst r3,r3
bt loc_8C0D0730
mov.b @(0x06,r14),r0 	
mov 0x01,r3 ; r3 set to 0x01
add 0x01,r0 ; r0 set to 0x141
mov.b r0,@(0x06,r14) 	
mov.w @(loc_8C0D080C,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
bsr loc_8C0D134a
mov r14,r5
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
extu.b r0,r0
cmp/eq 0x05,r0 	
bf loc_8C0D0712
mov 0x24,r0 ; r0 set to 0x24
mov 0x07,r2 ; r2 set to 0x07
bra loc_8C0D0718
mov.b r2,@(r0,r14) 	

loc_8C0D0712:
mov 0x24,r0 ; r0 set to 0x24
mov 0x00,r1 ; r1 set to 0x00
mov.b r1,@(r0,r14) 	

loc_8C0D0718:
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
mov.l @(loc_8C0D0814,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
mov.b @(r0,r14),r6
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov.l @(loc_8C0D0818,pc),r2 ; r2 set to 0x8C04223A, r2 set to 0x8C04223a
mov 0x2F,r5 ; r5 set to 0x2F, r5 set to 0x2f
mov r14,r4
jmp @r2
mov.l @r15+,r14

loc_8C0D0730:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D0736:
#data 0x4F22
#data 0xD3387FFc
#data 0x2F42430b
#data 0x4011600e
#data 0x63F28902
#data 0x8034E002

#align4
loc_8C0D074C:
#data 0x4F267F04
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0D0754:
mov r4,r3
mov.l @(loc_8C0D0820,pc),r1 ; r1 set to 0x8C15CA20
mov.l r4,@-r15
mov.b @(0x06,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D0766:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.w @(loc_8C0D080E,pc),r4 ; r4 set to 0xCc
mov.w @(loc_8C0D0810,pc),r3 ; r3 set to 0x159
add r14,r4 ; r4 ??? bc r14 is ???	
sts.l pr,@-r15
mov.l @(0x18,r14),r13
mov.b @(0x01,r4),r0 	
add r13,r3 ; r3 ??? bc r13 is ???	
mov.b @r3,r3
cmp/eq r3,r0
bt loc_8C0D0786
mov 0x02,r0 ; r0 set to 0x02
bra loc_8C0D07Be
mov.b r0,@(0x04,r14) 	

loc_8C0D0786:
mov.w @(loc_8C0D0812,pc),r0 ; r0 set to 0x141
mov.b @(r0,r13),r3
tst r3,r3
bt loc_8C0D07Be
mov.b @(0x06,r14),r0 	
mov 0x01,r3 ; r3 set to 0x01
mov r14,r5
add 0x01,r0 ; r0 set to 0x142
mov.b r0,@(0x06,r14) 	
mov.w @(loc_8C0D080C,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
bsr loc_8C0D134a
mov r13,r4
mov 0x24,r0 ; r0 set to 0x24
mov r14,r4
mov.b @(r0,r13),r2
mov 0xFE,r3 ; r3 set to 0xFFFFFFFe
mov 0x1B,r5 ; r5 set to 0x1b
mov.b r2,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
lds.l @r15+,pr 	
mov.b @(r0,r14),r6
mov.l @(loc_8C0D0814,pc),r3 ; r3 set to 0x8C034C38
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0D07BE:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D07C6:
#data 0x2FE6
#data 0x2FD66E43
#data 0x931F941f
#data 0x4F2234Ec
#data 0x84415DE6
#data 0x633033Dc
#data 0x8B033030
#data 0x03DC9017
#data 0x8B022338

#align4
loc_8C0D07E8:
#data 0xA01BE002
#data 0x80E4

loc_8C0D07EE:
#data 0xD30b
#data 0x64E3430b
#data 0x4011600e
#data 0x65E38D02
#data 0x80E4E002

#align4
loc_8C0D0800:
#data 0x64D34F26
#data 0xA5A06DF6
#data 0x6EF6

loc_8C0D080A:
#data 0x0140

loc_8C0D080C:
#data 0x012c

loc_8C0D080E:
#data 0x00Cc

loc_8C0D0810:
#data 0x0159

loc_8C0D0812:
#data 0x0141

#align4
loc_8C0D0814:
#data bank03.loc_8c034C38

loc_8C0D0818:
#data bank04.loc_8c04223a

loc_8C0D081C:
#data bank03.loc_8c034D8c

loc_8C0D0820:
#data 0x8c15CA20

loc_8C0D0824:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0D082C:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D0964,pc),r3 ; r3 set to 0x159
mov.w @(loc_8C0D0962,pc),r4 ; r4 set to 0xCc
mov.l @(0x18,r14),r5
add r14,r4 ; r4 ??? bc r14 is ???	
add r5,r3 ; r3 ??? bc r5 is ???	
mov.b @(0x01,r4),r0 	
mov.b @r3,r3
cmp/eq r3,r0
bt loc_8C0D084a
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x04,r14) 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D084A:
mov.b @(0x06,r14),r0 	
mov r14,r4
mov.l @(loc_8C0D096C,pc),r1 ; r1 set to 0x8C15CA28
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x000b
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D085E:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x06,r14),r0 	
mov 0x01,r3 ; r3 set to 0x01
mov.l @(0x18,r14),r4
add 0x01,r0
mov.b r0,@(0x06,r14) 	
mov.w @(loc_8C0D0966,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
bsr loc_8C0D134a
mov r14,r5
mov 0x20,r0 ; r0 set to 0x20
mov.l @(loc_8C0D0970,pc),r3 ; r3 set to 0x8C034C38
mov.b @(r0,r14),r6
mov 0x1B,r5 ; r5 set to 0x1b
jsr @r3
mov r14,r4
mov 0x24,r0 ; r0 set to 0x24
mov 0x07,r2 ; r2 set to 0x07
mov.b r2,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D088E:
#data 0x2FE6
#data 0x7FF44F22
#data 0x430BD337
#data 0x600E6E43
#data 0x890F4011
#data 0xD135E002
#data 0xE03480E4
#data 0x64F3F3E6
#data 0x415AE038
#data 0xF3E6F43a
#data 0xF437E004
#data 0xF30DF246
#data 0xF427F230

#align4
loc_8C0D08C0:
#data 0x4F267F0c
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0D08C8:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D0964,pc),r3 ; r3 set to 0x159
mov.w @(loc_8C0D0962,pc),r4 ; r4 set to 0xCc
mov.l @(0x18,r14),r5
add r14,r4 ; r4 ??? bc r14 is ???	
add r5,r3 ; r3 ??? bc r5 is ???	
mov.b @(0x01,r4),r0 	
mov.b @r3,r3
cmp/eq r3,r0
bt loc_8C0D08E6
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x04,r14) 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D08E6:
mov.b @(0x06,r14),r0 	
mov r14,r4
mov.l @(loc_8C0D097C,pc),r1 ; r1 set to 0x8C15CA30
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x000b
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D08FA:
#data 0x2FE6
#data 0x90336E43
#data 0x54E64F22
#data 0x2338034c
#data 0x84E68910
#data 0x7001E301
#data 0x902880E6
#data 0xB5180E34
#data 0xE02065E3
#data 0x06ECD314
#data 0x430BE51b
#data 0xE02464E3
#data 0x0E24E207

#align4
loc_8C0D092C:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D0932:
#data 0x4F22
#data 0xD30F7FFc
#data 0x2F42430b
#data 0x4011600e
#data 0x63F28902
#data 0x8034E002

#align4
loc_8C0D0948:
#data 0x4F267F04
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0D0950:
mov r4,r3
mov.l @(loc_8C0D0980,pc),r1 ; r1 set to 0x8C15CA38
mov.l r4,@-r15
mov.b @(0x06,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D0962:
#data 0x00Cc

loc_8C0D0964:
#data 0x0159

loc_8C0D0966:
#data 0x012c
#data 0x00000141

#align4
loc_8C0D096C:
#data 0x8c15CA28

loc_8C0D0970:
#data bank03.loc_8c034C38

loc_8C0D0974:
#data bank03.loc_8c034D8c
#data 0x42A00000

#align4
loc_8C0D097C:
#data 0x8c15CA30

loc_8C0D0980:
#data 0x8c15CA38


loc_8C0D0984:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D0ABC,pc),r5 ; r5 set to 0xCc
mov.w @(loc_8C0D0ABE,pc),r0 ; r0 set to 0x158
add r14,r5 ; r5 ??? bc r14 is ???	
sts.l pr,@-r15
mov.l @(0x18,r14),r4
mov.w @r5,r3
mov.w @(r0,r4),r2
cmp/eq r2,r3
bt loc_8C0D09D2
mov.b @(0x06,r14),r0 	
mov 0x01,r3 ; r3 set to 0x01
add 0x01,r0 ; r0 set to 0x159
mov.b r0,@(0x06,r14) 	
mov.w @(loc_8C0D0AC0,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
bsr loc_8C0D134a
mov r14,r5
mov 0x20,r0 ; r0 set to 0x20
mov.l @(loc_8C0D0AC8,pc),r3 ; r3 set to 0x8C034C38
mov.b @(r0,r14),r6
mov 0x1B,r5 ; r5 set to 0x1b
jsr @r3
mov r14,r4
mov 0x24,r0 ; r0 set to 0x24
fldi0 fr3
mov 0x00,r4 ; r4 set to 0x00
mov.b r4,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r14),fr2
fcmp/gt fr2,fr3 ; r3 ??? bc r2 is ???	
bf loc_8C0D09Cc
mov.w @(loc_8C0D0AC2,pc),r0 ; r0 set to 0x130
bra loc_8C0D09D2
mov.w r4,@(r0,r14) 	

#align4
loc_8C0D09CC:
#data 0xE2019079
#data 0x0E25


loc_8C0D09D2:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0D09D8:
#data 0x6E432FE6
#data 0xD33BE15c
#data 0xE03431Ec
#data 0xF3184F22
#data 0xF2E6E168
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x64E3430b
#data 0x420BD233
#data 0x200864E3
#data 0xE0028B01
#data 0x80E4

loc_8C0D0A0E:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0D0A14:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D0AC4,pc),r3 ; r3 set to 0x159
mov.w @(loc_8C0D0ABC,pc),r4 ; r4 set to 0xCc
mov.l @(0x18,r14),r5
add r14,r4 ; r4 ??? bc r14 is ???	
add r5,r3 ; r3 ??? bc r5 is ???	
mov.b @(0x01,r4),r0 	
mov.b @r3,r3
cmp/eq r3,r0
bt loc_8C0D0A32
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x04,r14) 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D0A32:
mov.b @(0x06,r14),r0 	
mov r14,r4
mov.l @(loc_8C0D0AD4,pc),r1 ; r1 set to 0x8C15CA40
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x000b
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D0A46:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x06,r14),r0 	
mov 0x01,r3 ; r3 set to 0x01
mov.l @(0x18,r14),r4
add 0x01,r0
mov.b r0,@(0x06,r14) 	
mov.w @(loc_8C0D0AC0,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
bsr loc_8C0D134a
mov r14,r5
mov 0x20,r0 ; r0 set to 0x20
mov.l @(loc_8C0D0AC8,pc),r3 ; r3 set to 0x8C034C38
mov.b @(r0,r14),r6
mov 0x1B,r5 ; r5 set to 0x1b
jsr @r3
mov r14,r4
mov 0x02,r7 ; r7 set to 0x02
mov.l @(loc_8C0D0AD8,pc),r3 ; r3 set to 0x8C03544c
mov 0x0B,r2 ; r2 set to 0x0b
mov r14,r4
mov 0x24,r0 ; r0 set to 0x24
mov r7,r6 ; r6 set to 0x02
mov.b r2,@(r0,r14) 	
mov r7,r5 ; r5 set to 0x02
lds.l @r15+,pr 	
jmp @r3
mov.l @r15+,r14

#align4
loc_8C0D0A80:
#data 0x7FFC4F22
#data 0x430BD311
#data 0x600E2F42
#data 0x89024011
#data 0xE00263F2
#data 0x8034

loc_8C0D0A96:
#data 0x7F04
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0D0A9E:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D0AC4,pc),r3 ; r3 set to 0x159
mov.w @(loc_8C0D0ABC,pc),r4 ; r4 set to 0xCc
mov.l @(0x18,r14),r5
add r14,r4 ; r4 ??? bc r14 is ???	
add r5,r3 ; r3 ??? bc r5 is ???	
mov.b @(0x01,r4),r0 	
mov.b @r3,r3
cmp/eq r3,r0
bt loc_8C0D0ADc
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x04,r14) 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D0ABC:
#data 0x00Cc

loc_8C0D0ABE:
#data 0x0158

loc_8C0D0AC0:
#data 0x012c

loc_8C0D0AC2:
#data 0x0130

loc_8C0D0AC4:
#data 0x0159
#data 0x0000

#align4
loc_8C0D0AC8:
#data bank03.loc_8c034C38

loc_8C0D0ACC:
#data bank03.loc_8c034D8c

loc_8C0D0AD0:
#data bank03.loc_8c03340c

loc_8C0D0AD4:
#data 0x8c15CA40

loc_8C0D0AD8:
#data bank03.loc_8c03544c


loc_8C0D0ADC:
mov.b @(0x06,r14),r0 	
mov r14,r4
mov.l @(loc_8C0D0BF8,pc),r1 ; r1 set to 0x8C15CA48
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0D0AF0:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x06,r14),r0 	
mov 0x01,r3 ; r3 set to 0x01
mov.l @(0x18,r14),r4
add 0x01,r0
mov.b r0,@(0x06,r14) 	
mov.w @(loc_8C0D0BF0,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
bsr loc_8C0D134a
mov r14,r5
mov 0x20,r0 ; r0 set to 0x20
mov.l @(loc_8C0D0BFC,pc),r3 ; r3 set to 0x8C034C38
mov.b @(r0,r14),r6
mov 0x1B,r5 ; r5 set to 0x1b
jsr @r3
mov r14,r4
mov 0x24,r0 ; r0 set to 0x24
mov 0x07,r2 ; r2 set to 0x07
mov.b r2,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0D0B20:
#data 0x4F222FE6
#data 0x6E437FFc
#data 0x2F3253E6
#data 0x430BD334
#data 0x905E64E3
#data 0x032C62F2
#data 0x8B012338
#data 0x80E4E002

#align4
loc_8C0D0B40:
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0D0B48:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D0BF6,pc),r3 ; r3 set to 0x159
mov.w @(loc_8C0D0BF4,pc),r4 ; r4 set to 0xCc
mov.l @(0x18,r14),r5
add r14,r4 ; r4 ??? bc r14 is ???	
add r5,r3 ; r3 ??? bc r5 is ???	
mov.b @(0x01,r4),r0 	
mov.b @r3,r3
cmp/eq r3,r0
bt loc_8C0D0B66
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x04,r14) 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D0B66:
mov.b @(0x06,r14),r0 	
mov r14,r4
mov.l @(loc_8C0D0C04,pc),r1 ; r1 set to 0x8C15CA50
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x000b
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D0B7A:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x06,r14),r0 	
mov 0x01,r3 ; r3 set to 0x01
mov.l @(0x18,r14),r4
add 0x01,r0
mov.b r0,@(0x06,r14) 	
mov.w @(loc_8C0D0BF0,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
bsr loc_8C0D134a
mov r14,r5
mov 0x20,r0 ; r0 set to 0x20
mov.l @(loc_8C0D0BFC,pc),r3 ; r3 set to 0x8C034C38
mov.b @(r0,r14),r6
mov 0x1B,r5 ; r5 set to 0x1b
jsr @r3
mov r14,r4
mov 0x24,r0 ; r0 set to 0x24
mov 0x08,r2 ; r2 set to 0x08
mov.b r2,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D0BAA:
#data 0x2FE6
#data 0x4F222FD6
#data 0x430BD313
#data 0x600E6E43
#data 0x890C4011
#data 0xDD12E002
#data 0xE50080E4
#data 0x4D0B5EE6
#data 0xE50164E3
#data 0x64E34D0b
#data 0x4D0BE502
#data 0x64E3

loc_8C0D0BD6:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D0BDE:
mov r4,r3
mov.l @(loc_8C0D0C0C,pc),r1 ; r1 set to 0x8C15CA58
mov.l r4,@-r15
mov.b @(0x06,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D0BF0:
#data 0x012c
#data 0x0141

loc_8C0D0BF4:
#data 0x00Cc

loc_8C0D0BF6:
#data 0x0159

#align4
loc_8C0D0BF8:
#data 0x8c15CA48

loc_8C0D0BFC:
#data bank03.loc_8c034C38

loc_8C0D0C00:
#data bank03.loc_8c034D8c

loc_8C0D0C04:
#data 0x8c15CA50

loc_8C0D0C08:
#data bank07.loc_8c07E70c

loc_8C0D0C0C:
#data 0x8c15CA58

loc_8C0D0C10:
#data 0x6E432FE6
#data 0x2FC62FD6
#data 0x4F22EC01
#data 0x5DE684E6
#data 0x80E67001
#data 0x0EC49030
#data 0x03ECE022
#data 0x23C8633c
#data 0x65E38D05
#data 0xE3019029
#data 0x223A02Dd
#data 0x0D25

loc_8C0D0C3E:
#data 0xB384
#data 0xE02264D3
#data 0x622C02Ec
#data 0x8D0522C8
#data 0x901C65E3
#data 0x02DDE301
#data 0x0D25223a

#align4
loc_8C0D0C58:
#data 0x64D3B10e
#data 0xD30BE020
#data 0xE51B06Ec
#data 0x64E3430b
#data 0xE207E024
#data 0xC7080E24
#data 0xE054F308
#data 0xB0F0FE37
#data 0x4F2664E3
#data 0x2008600e
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x0130012c

#align4
loc_8C0D0C8C:
#data bank03.loc_8c034C38
#data 0x3F400000

#align4
loc_8C0D0C94:
#data 0x6E432FE6
#data 0x4F222FD6
#data 0x430BD348
#data 0xE0225DE6
#data 0x600C00Ec
#data 0x8D05C801
#data 0x908465E3
#data 0x02DDE301
#data 0x0D25223a

#align4
loc_8C0D0CB8:
#data 0x64D3B347
#data 0x00ECE022
#data 0xC801600c
#data 0x65E38D05
#data 0xE3019077
#data 0x223A02Dd
#data 0x0D25

loc_8C0D0CD2:
#data 0xB0D1
#data 0xB0C064D3
#data 0x600E64E3
#data 0x8B3F2008
#data 0x02EC906c
#data 0x893B2228
#data 0xE30A84E6
#data 0x7001E50d
#data 0xE02480E6
#data 0x0E34E609
#data 0x64D3BC44
#data 0x8D142008
#data 0xE05C6403
#data 0xF3E6955b
#data 0x35ECE20b
#data 0x9054F437
#data 0x043503Ed
#data 0x0424E024
#data 0x03ECE022
#data 0x934E0434
#data 0x343C6251
#data 0x84512421
#data 0x8041

loc_8C0D0D2A:
#data 0xE50e
#data 0xBC29E609
#data 0x200864D3
#data 0x64038D14
#data 0x9540E05c
#data 0xE209F3E6
#data 0xF43735Ec
#data 0x03ED9039
#data 0xE0240435
#data 0xE0220424
#data 0x043403Ec
#data 0x62519333
#data 0x2421343c
#data 0x80418451

#align4
loc_8C0D0D60:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0D0D68:
#data 0x6E432FE6
#data 0x4F222FD6
#data 0x430BD313
#data 0xE0225DE6
#data 0x600C00Ec
#data 0x8D05C801
#data 0x901A65E3
#data 0x02DDE301
#data 0x0D25223a

#align4
loc_8C0D0D8C:
#data 0x64D3B2Dd
#data 0x00ECE022
#data 0xC801600c
#data 0x65E38D05
#data 0xE301900d
#data 0x223A02Dd
#data 0x0D25

loc_8C0D0DA6:
#data 0xB067
#data 0xB02964D3
#data 0x4F2664E3
#data 0x2008600e
#data 0x000B6DF6
#data 0x01306EF6
#data 0x00CC0141

#align4
loc_8C0D0DC0:
#data bank03.loc_8c034D8c

loc_8C0D0DC4:
#data 0x6E432FE6
#data 0xD33FE15c
#data 0xE03431Ec
#data 0xF3184F22
#data 0xF2E6E168
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x64E3430b
#data 0x420BD237
#data 0x200864E3
#data 0xE0028B01
#data 0x80E4

loc_8C0D0DFA:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0D0E00:
#data 0x905E955e
#data 0x354C5646
#data 0x026D6351
#data 0x89213320
#data 0x8046E003
#data 0x004CE020
#data 0x880D600c
#data 0xE5078D06
#data 0x8907880e
#data 0x8905880f
#data 0x0009A006

#align4
loc_8C0D0E2C:
#data 0xE30CE024
#data 0x0434A002

#align4
loc_8C0D0E34:
#data 0x0454E024

#align4
loc_8C0D0E38:
#data 0xF38DE05c
#data 0xF325F246
#data 0x903F8B03
#data 0xA003E200
#data 0x0425

loc_8C0D0E4A:
#data 0x903b
#data 0x0415E101

#align4
loc_8C0D0E50:
#data 0xE001000b
;-------------------------------------------------------------------------------

#align4
loc_8C0D0E54:
#data 0x000BE000
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0D0E5A:
#data 0x9531
#data 0x56469031
#data 0x6351354c
#data 0x3320026d
#data 0xE0028903
#data 0x000B8044
#data 0xE001
;-------------------------------------------------------------------------------

loc_8C0D0E72:
#data 0xE000
#data 0x0009000b
;-------------------------------------------------------------------------------

#align4
loc_8C0D0E78:
#data 0x034CE024
#data 0xE0200534
#data 0x600C005c
#data 0x8905880d
#data 0x8907880e
#data 0x8909880f
#data 0x0009A00b

#align4
loc_8C0D0E94:
#data 0xE3FFE031
#data 0x0534A007

#align4
loc_8C0D0E9C:
#data 0xE1FDE031
#data 0x0514A003

#align4
loc_8C0D0EA4:
#data 0xE2FEE031
#data 0x0524

loc_8C0D0EAA:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0D0EAE:
mov r4,r3
mov.l @(loc_8C0D0ED0,pc),r1 ; r1 set to 0x8C15CA68
mov.l r4,@-r15
mov.b @(0x06,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x015800Cc
#data 0x00000130

#align4
loc_8C0D0EC8:
#data bank03.loc_8c034D8c

loc_8C0D0ECC:
#data bank03.loc_8c03340c

loc_8C0D0ED0:
#data 0x8c15CA68

loc_8C0D0ED4:
#data 0xE0022FE6
#data 0x2FD66E43
#data 0xEC012FC6
#data 0x5DE64F22
#data 0x909180E6
#data 0xE0220EC4
#data 0x633C03Ec
#data 0x8D0523C8
#data 0x908A65E3
#data 0x02DDE301
#data 0x0D25223a

#align4
loc_8C0D0F00:
#data 0x64D3B223
#data 0x02ECE022
#data 0x22C8622c
#data 0x65E38D05
#data 0xE301907d
#data 0x223A02Dd
#data 0x0D25

loc_8C0D0F1A:
#data 0xBFAd
#data 0xE02064D3
#data 0x06ECD33c
#data 0x430BE51b
#data 0xBF9664E3
#data 0x4F2664E3
#data 0x2008600e
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0D0F3C:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D1012,pc),r3 ; r3 set to 0x159
mov.w @(loc_8C0D1010,pc),r4 ; r4 set to 0xCc
mov.l @(0x18,r14),r5
add r14,r4 ; r4 ??? bc r14 is ???	
add r5,r3 ; r3 ??? bc r5 is ???	
mov.b @(0x01,r4),r0 	
mov.b @r3,r3
cmp/eq r3,r0
bt loc_8C0D0F5a
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x04,r14) 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D0F5A:
mov.b @(0x06,r14),r0 	
mov r14,r4
mov.l @(loc_8C0D1018,pc),r1 ; r1 set to 0x8C15CA78
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x000b
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D0F6E:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x06,r14),r0 	
mov 0x01,r3 ; r3 set to 0x01
mov.l @(0x18,r14),r4
add 0x01,r0
mov.b r0,@(0x06,r14) 	
mov.w @(loc_8C0D100C,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
bsr loc_8C0D134a
mov r14,r5
mov 0x20,r0 ; r0 set to 0x20
mov.l @(loc_8C0D1014,pc),r3 ; r3 set to 0x8C034C38
mov.b @(r0,r14),r6
mov 0x1B,r5 ; r5 set to 0x1b
jsr @r3
mov r14,r4
mov 0x02,r7 ; r7 set to 0x02
mov.l @(loc_8C0D101C,pc),r3 ; r3 set to 0x8C03544c
mov 0x00,r2 ; r2 set to 0x00
mov r14,r4
mov 0x24,r0 ; r0 set to 0x24
mov r7,r6 ; r6 set to 0x02
mov.b r2,@(r0,r14) 	
mov r7,r5 ; r5 set to 0x02
lds.l @r15+,pr 	
jmp @r3
mov.l @r15+,r14

loc_8C0D0FA8:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l @(0x18,r14),r3
mov.l r3,@r15
mov.l @(loc_8C0D1020,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt loc_8C0D0FD2
mov 0x02,r0 ; r0 set to 0x02
mov 0x15,r5 ; r5 set to 0x15
mov.b r0,@(0x04,r14) 	
mov.l @r15,r4
mov 0x0B,r6 ; r6 set to 0x0b
add 0x04,r15
lds.l @r15+,pr 	
bra loc_8C0D0584
mov.l @r15+,r14

loc_8C0D0FD2:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D0FDA:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D1012,pc),r3 ; r3 set to 0x159
mov.w @(loc_8C0D1010,pc),r4 ; r4 set to 0xCc
mov.l @(0x18,r14),r5
add r14,r4 ; r4 ??? bc r14 is ???	
add r5,r3 ; r3 ??? bc r5 is ???	
mov.b @(0x01,r4),r0 	
mov.b @r3,r3
cmp/eq r3,r0
bt loc_8C0D0FF8
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x04,r14) 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D0FF8:
mov.b @(0x06,r14),r0 	
mov r14,r4
mov.l @(loc_8C0D1024,pc),r1 ; r1 set to 0x8C15CA80
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0D100C:
#data 0x012c
#data 0x0130

loc_8C0D1010:
#data 0x00Cc

loc_8C0D1012:
#data 0x0159

#align4
loc_8C0D1014:
#data bank03.loc_8c034C38

loc_8C0D1018:
#data 0x8c15CA78

loc_8C0D101C:
#data bank03.loc_8c03544c

loc_8C0D1020:
#data bank03.loc_8c034D8c

loc_8C0D1024:
#data 0x8c15CA80


loc_8C0D1028:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov 0x01,r3 ; r3 set to 0x01
sts.l pr,@-r15
mov.b @(0x06,r14),r0 	
mov r14,r5
mov.l @(0x18,r14),r13
add 0x01,r0
mov.b r0,@(0x06,r14) 	
mov.w @(loc_8C0D1158,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
bsr loc_8C0D134a
mov r13,r4
mov 0x20,r0 ; r0 set to 0x20
mov.l @(loc_8C0D1160,pc),r3 ; r3 set to 0x8C034C38
mov.b @(r0,r14),r6
mov 0x1B,r5 ; r5 set to 0x1b
jsr @r3
mov r14,r4
mov 0x24,r0 ; r0 set to 0x24
mov 0x00,r2 ; r2 set to 0x00
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0D115A,pc),r0 ; r0 set to 0x1D2
mov.b @(r0,r13),r3 ; r3 ??? bc r13 is ???	
tst r3,r3
bt loc_8C0D1064
mova @(loc_8C0D1164,pc),r0  ; r0 set to 0x8C0D1164
bra loc_8C0D1068
fmov.s @r0,fr3

loc_8C0D1064:
mova @(loc_8C0D1168,pc),r0  ; r0 init to 0x8C0D1168
fmov.s @r0,fr3

loc_8C0D1068:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fmov.s fr3,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fldi0 fr3
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0D116C,pc),r0  ; r0 set to 0x8C0D116C, r0 set to 0x8C0D116c
fmov.s @r0,fr3
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0D1170,pc),r0  ; r0 set to 0x8C0D1170, r0 set to 0x8C0D1170
fmov.s @r0,fr3
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr3,@(r0,r14) 	
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D108A:
#data 0x2FE6
#data 0x6E43E15c
#data 0xE03431Ec
#data 0x4F22D337
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
#data 0x430BFE27
#data 0xD22A64E3
#data 0x64E3420b
#data 0x8B012008
#data 0x80E4E002

#align4
loc_8C0D10DC:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D10E2:
mov r4,r3
mov.l @(loc_8C0D117C,pc),r1 ; r1 set to 0x8C15CA88
mov.l r4,@-r15
mov.b @(0x06,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D10F4:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D115C,pc),r5 ; r5 set to 0xCc
mov.w @(loc_8C0D115E,pc),r0 ; r0 set to 0x158
add r14,r5 ; r5 ??? bc r14 is ???	
sts.l pr,@-r15
mov.l @(0x18,r14),r4
mov.w @r5,r3
mov.w @(r0,r4),r2
cmp/eq r2,r3
bt loc_8C0D1114
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x04,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D1114:
mov.b @(0x06,r14),r0 	
mov 0x01,r3 ; r3 set to 0x01
add 0x01,r0
mov.b r0,@(0x06,r14) 	
mov.w @(loc_8C0D1158,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
bsr loc_8C0D11A4
mov r14,r5
lds.l @r15+,pr 	
mov 0x20,r0 ; r0 set to 0x20
mov.l @(loc_8C0D1160,pc),r3 ; r3 set to 0x8C034C38
mov.b @(r0,r14),r6
mov 0x1B,r5 ; r5 set to 0x1b
mov r14,r4
jmp @r3
mov.l @r15+,r14
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D113A:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D115C,pc),r4 ; r4 set to 0xCc
mov.l r13,@-r15
mov.w @(loc_8C0D115E,pc),r0 ; r0 set to 0x158
add r14,r4 ; r4 ??? bc r14 is ???	
sts.l pr,@-r15
mov.l @(0x18,r14),r13
mov.w @r4,r3
mov.w @(r0,r13),r2
cmp/eq r2,r3
bt loc_8C0D1180
mov 0x02,r0 ; r0 set to 0x02
bra loc_8C0D119c
mov.b r0,@(0x04,r14) 	

loc_8C0D1158:
#data 0x012c

loc_8C0D115A:
#data 0x01D2

loc_8C0D115C:
#data 0x00Cc

loc_8C0D115E:
#data 0x0158

#align4
loc_8C0D1160:
#data bank03.loc_8c034C38

loc_8C0D1164:
#data 0xBFA00000

#align4
loc_8C0D1168:
#data 0x3FA00000

#align4
loc_8C0D116C:
#data 0x41092492

#align4
loc_8C0D1170:
#data 0xBF8C0000

#align4
loc_8C0D1174:
#data bank03.loc_8c034D8c

loc_8C0D1178:
#data bank03.loc_8c0332E0

loc_8C0D117C:
#data 0x8c15CA88

loc_8C0D1180:
#data 0x430BD344
#data 0x600E64E3
#data 0x8D024011
#data 0xE00265E3
#data 0x80E4

loc_8C0D1192:
#data 0x4F26
#data 0x6DF664D3
#data 0x6EF6A004


loc_8C0D119C:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0D11A4:
#data 0xD13CE034
#data 0x415AF346
#data 0xE038F537
#data 0xF537F346
#data 0xF30DF256
#data 0xF527F230
#data 0xF408C737
#data 0x034D9063
#data 0x8F022338
#data 0xC7350535
#data 0xF408

loc_8C0D11CE:
#data 0xE034
#data 0xF340F356
#data 0xF537000b
;-------------------------------------------------------------------------------

loc_8C0D11D8:
mov r4,r3
mov.l @(loc_8C0D12A4,pc),r1 ; r1 set to 0x8C15CA90
mov.l r4,@-r15
mov.b @(0x06,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D11EA:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D128C,pc),r5 ; r5 set to 0xCc
mov.w @(loc_8C0D128E,pc),r0 ; r0 set to 0x158
add r14,r5 ; r5 ??? bc r14 is ???	
sts.l pr,@-r15
mov.l @(0x18,r14),r4
mov.w @r5,r3
mov.w @(r0,r4),r2
cmp/eq r2,r3
bt loc_8C0D120a
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x04,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D120A:
mov.b @(0x06,r14),r0 	
mov 0x01,r3 ; r3 set to 0x01
mov 0x00,r2 ; r2 set to 0x00
add 0x01,r0
mov.b r0,@(0x06,r14) 	
mov.w @(loc_8C0D1290,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r2,@(r0,r14) 	
bsr loc_8C0D134a
mov r14,r5
mov 0x20,r0 ; r0 set to 0x20
mov.l @(loc_8C0D12A8,pc),r3 ; r3 set to 0x8C034C38
mov.b @(r0,r14),r6
mov 0x1B,r5 ; r5 set to 0x1b
jsr @r3
mov r14,r4
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
extu.b r0,r0
cmp/eq 0x16,r0 	
bt loc_8C0D1242
cmp/eq 0x17,r0 	
bt loc_8C0D124a
cmp/eq 0x18,r0 	
bt loc_8C0D1252
bra loc_8C0D1258
nop 	

loc_8C0D1242:
mov 0x48,r0 ; r0 set to 0x48
mov 0x00,r3 ; r3 set to 0x00
bra loc_8C0D1258
mov.l r3,@(r0,r14) 	

loc_8C0D124A:
mov.l @(loc_8C0D12AC,pc),r1 ; r1 set to 0xE000
mov 0x48,r0 ; r0 set to 0x48
bra loc_8C0D1258
mov.l r1,@(r0,r14) 	

loc_8C0D1252:
#data 0xD217
#data 0x0E26E048


loc_8C0D1258:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D125E:
#data 0x2FE6
#data 0x94136E43
#data 0x34EC9013
#data 0x55E64F22
#data 0x025D6341
#data 0x8B053320
#data 0x430BD307
#data 0x600E64E3
#data 0x89014011

#align4
loc_8C0D1280:
#data 0x80E4E002

#align4
loc_8C0D1284:
#data 0x000B4F26
#data 0x01306EF6

loc_8C0D128C:
#data 0x00Cc

loc_8C0D128E:
#data 0x0158

loc_8C0D1290:
#data 0x012c
#data 0x0000

#align4
loc_8C0D1294:
#data bank03.loc_8c034D8c
#data 0xC3092492
#data 0x40D55555
#data 0xC0D55555

#align4
loc_8C0D12A4:
#data 0x8c15CA90

loc_8C0D12A8:
#data bank03.loc_8c034C38

loc_8C0D12AC:
#data 0x0000E000
#data 0x0000D000


loc_8C0D12B4:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D13A2,pc),r3 ; r3 set to 0x159
mov.w @(loc_8C0D13A0,pc),r4 ; r4 set to 0xCc
mov.l @(0x18,r14),r5
add r14,r4 ; r4 ??? bc r14 is ???	
add r5,r3 ; r3 ??? bc r5 is ???	
mov.b @(0x01,r4),r0 	
mov.b @r3,r3
cmp/eq r3,r0
bt loc_8C0D12D8
mov.w @(loc_8C0D13A4,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@(r0,r14) 	
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x04,r14) 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D12D8:
mov.b @(0x06,r14),r0 	
mov r14,r4
mov.l @(loc_8C0D13A8,pc),r1 ; r1 set to 0x8C15CA98
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0D12EC:
mov.l r14,@-r15
mov r4,r14
mov 0x01,r3 ; r3 set to 0x01
sts.l pr,@-r15
mov.b @(0x06,r14),r0 	
mov.l @(0x18,r14),r4
add 0x01,r0
mov.b r0,@(0x06,r14) 	
mov.w @(loc_8C0D13A4,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
mov 0x78,r0 ; r0 set to 0x78
mov.w r0,@(0x1C,r14) 	
bsr loc_8C0D134a
mov r14,r5
mov 0x20,r0 ; r0 set to 0x20
mov.l @(loc_8C0D13AC,pc),r3 ; r3 set to 0x8C034C38
mov.b @(r0,r14),r6
mov 0x1B,r5 ; r5 set to 0x1b
jsr @r3
mov r14,r4
mov 0x24,r0 ; r0 set to 0x24
mov 0x0B,r2 ; r2 set to 0x0b
mov.b r2,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0D1320:
#data 0x70FF854e
#data 0x600F814e
#data 0x89014015
#data 0x8044E002

#align4
loc_8C0D1330:
#data 0x432BD31f
#data 0x0009


loc_8C0D1336:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D13A4,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0D1344:
mov.l @(loc_8C0D13B4,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0D134A:
#data 0xE034
#data 0xE320D61a
#data 0x335CF346
#data 0xE038F537
#data 0x6203F346
#data 0xF537325c
#data 0xF2286330
#data 0x4308633c
#data 0x8531336c
#data 0xE0206303
#data 0xF32D435a
#data 0xF22AF230
#data 0x9014035c
#data 0x4308633c
#data 0x363C024d
#data 0x435A6361
#data 0x2228F42d
#data 0x05258F01
#data 0xF44d

loc_8C0D1392:
#data 0xE034
#data 0xF340F356
#data 0xF537000b
;-------------------------------------------------------------------------------

loc_8C0D139C:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0D13A0:
#data 0x00Cc

loc_8C0D13A2:
#data 0x0159

loc_8C0D13A4:
#data 0x012c
#data 0x0130

#align4
loc_8C0D13A8:
#data 0x8c15CA98

loc_8C0D13AC:
#data bank03.loc_8c034C38

loc_8C0D13B0:
#data bank03.loc_8c034D8c

loc_8C0D13B4:
#data bank04.loc_8c0450C0

loc_8C0D13B8:
#data 0x8c13B0D0
#data 0x4F222FE6
#data 0x6E437FF8
#data 0x00096053
#data 0xE503D358
#data 0x2F6080F4
#data 0x430BE600
#data 0x20086463
#data 0x64038D57
#data 0x62E3D354
#data 0x909B919c
#data 0x314C1434
#data 0x320CD352
#data 0x430B14E6
#data 0x909470E4
#data 0x6143E501
#data 0x04547150
#data 0x84025046
#data 0x50468042
#data 0x80418401
#data 0x5346E050
#data 0xF437F336
#data 0x5346E054
#data 0xF437F336
#data 0x53469082
#data 0x0424023c
#data 0x53467001
#data 0x0424023c
#data 0x5346E030
#data 0x0424023c
#data 0xD3415246
#data 0x430B7250
#data 0x5146E00c
#data 0x9270E024
#data 0x0434031c
#data 0x0425E026
#data 0x906BE320
#data 0x6133E224
#data 0x0434314c
#data 0x043470Ff
#data 0x04247003
#data 0x042470Ff
#data 0x210084F4
#data 0x00096053
#data 0x60F08044
#data 0x8045955b
#data 0x354C905a
#data 0x700103Ed
#data 0x00EC2531
#data 0xE0348051
#data 0xF437F3E6
#data 0xF3E6E038
#data 0x6043F437
#data 0x7F080009
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D1496:
mov r4,r3
mov.l @(loc_8C0D153C,pc),r1 ; r1 set to 0x8C15CAA0
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D14A8:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0D14AC:
mov.l r14,@-r15
mov r4,r14
mov.l @(loc_8C0D1540,pc),r1 ; r1 set to 0x8C15CAB0
sts.l pr,@-r15
mov.b @(0x05,r14),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jsr @r3
nop 	
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0D1ADa
mov.l @r15+,r14

loc_8C0D14C8:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D1526,pc),r4 ; r4 set to 0xCc
mov.w @(loc_8C0D1528,pc),r0 ; r0 set to 0x158
mov.l @(0x18,r14),r5
add r14,r4 ; r4 ??? bc r14 is ???	
mov.w @r4,r3
mov.w @(r0,r5),r2
cmp/eq r2,r3
bt loc_8C0D14E4
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x04,r14) 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D14E4:
mov.b @(0x06,r14),r0 	
mov r14,r4
mov.l @(loc_8C0D1544,pc),r1 ; r1 set to 0x8C15CAC8
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0D14F8:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x06,r14),r0 	
mov 0x1B,r5 ; r5 set to 0x1b
mov.l @(loc_8C0D1548,pc),r3 ; r3 set to 0x8C034C38
add 0x01,r0
mov.b r0,@(0x06,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r6
jsr @r3
mov r14,r4
mov 0x24,r0 ; r0 set to 0x24
mov 0x00,r2 ; r2 set to 0x00
mov.b r2,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x012C00Dc
#data 0x140201A3
#data 0x013d

loc_8C0D1526:
#data 0x00Cc

loc_8C0D1528:
#data 0x0158
#data 0x0000

#align4
loc_8C0D152C:
#data bank04.loc_8c044F12

loc_8C0D1530:
#data loc_8c0d1496

loc_8C0D1534:
#data bank12.loc_8c129560

loc_8C0D1538:
#data bank12.loc_8c1294C8

loc_8C0D153C:
#data 0x8c15CAA0

loc_8C0D1540:
#data 0x8c15CAB0

loc_8C0D1544:
#data 0x8c15CAC8

loc_8C0D1548:
#data bank03.loc_8c034C38

loc_8C0D154C:
#data 0x7FFC4F22
#data 0x430BD34b
#data 0x600E2F42
#data 0x89024011
#data 0xE00263F2
#data 0x8034

loc_8C0D1562:
#data 0x7F04
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0D156A:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D1674,pc),r5 ; r5 set to 0xCc
mov.w @(loc_8C0D1676,pc),r0 ; r0 set to 0x158
mov.l @(0x18,r14),r4
add r14,r5 ; r5 ??? bc r14 is ???	
mov.w @r5,r3
mov.w @(r0,r4),r2
cmp/eq r2,r3
bt/s loc_8C0D158a
mov 0x02,r6 ; r6 set to 0x02
mov r6,r0 ; r0 set to 0x02
nop 	
mov.b r0,@(0x04,r14) 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D158A:
mov.w @(loc_8C0D1678,pc),r0 ; r0 set to 0x1D0
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
extu.b r0,r0
cmp/eq 0x1D,r0 	
bt loc_8C0D15A4
mov r6,r0
nop 	
mov.b r0,@(0x04,r14) 	
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8C0D167A,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D15A4:
mov.b @(0x06,r14),r0 	
mov r14,r4
mov.l @(loc_8C0D1684,pc),r1 ; r1 set to 0x8C15CAD0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0D15B8:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov 0x16,r5 ; r5 set to 0x16
sts.l pr,@-r15
mov.b @(0x06,r14),r0 	
mov 0x39,r6 ; r6 set to 0x39
mov.l @(loc_8C0D1688,pc),r3 ; r3 set to 0x8C034E8c
add 0x01,r0
mov.l @(0x18,r14),r13
mov.b r0,@(0x06,r14) 	
jsr @r3
mov r14,r4
mov 0x02,r7 ; r7 set to 0x02
mov.l @(loc_8C0D168C,pc),r3 ; r3 set to 0x8C03544c
mov 0x24,r0 ; r0 set to 0x24
mov r7,r5 ; r5 set to 0x02
mov 0x07,r2 ; r2 set to 0x07
mov.b r2,@(r0,r14) 	
mov 0x0C,r6 ; r6 set to 0x0c
jsr @r3
mov r13,r4
mova @(loc_8C0D1690,pc),r0  ; r0 set to 0x8C0D1690
fmov.s @r0,fr3 ; r3 ??	
mov.w @(loc_8C0D167C,pc),r0 ; r0 set to 0x108
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0D1694,pc),r0  ; r0 set to 0x8C0D1694
fmov.s @r0,fr3
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r13),fr2 ; r2 ??? bc r13 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0D1698,pc),r0  ; r0 set to 0x8C0D1698
fmov.s @r0,fr2
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r13),fr1
fadd fr2,fr1
fmov.s fr1,@(r0,r14) 	
mov 0x06,r0 ; r0 set to 0x06
mov.w r0,@(0x1C,r14) 	
mova @(loc_8C0D169C,pc),r0  ; r0 set to 0x8C0D169c
fmov.s @r0,fr5 ; r5 ??	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr5,@(r0,r14) 	
mova @(loc_8C0D16A0,pc),r0  ; r0 set to 0x8C0D16A0
fmov.s @r0,fr4
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr5,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
mova @(loc_8C0D16A4,pc),r0  ; r0 set to 0x8C0D16A4
fmov.s @r0,fr1
mov 0x70,r0 ; r0 set to 0x70
fmov.s fr1,@(r0,r14) 	
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D1630:
mov 0x70,r1 ; r1 set to 0x70
mov.l @(0x18,r4),r5
add r4,r1 ; r1 ??? bc r4 is ???	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @r1,fr3
fmov.s @(r0,r4),fr2
mov 0x5C,r1 ; r1 set to 0x5c
add r4,r1 ; r1 ??? bc r4 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r4),fr2
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60
add r4,r1 ; r1 ??? bc r4 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r4),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fldi1 fr3
fmov.s fr2,@(r0,r4) 	
fmov.s @(r0,r5),fr2
fcmp/gt fr2,fr3
bt/s loc_8C0D16A8
mov 0x02,r6 ; r6 set to 0x02
mov r6,r0 ; r0 set to 0x02
nop 	
mov.b r0,@(0x04,r4) 	
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8C0D167A,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0D1674:
#data 0x00Cc

loc_8C0D1676:
#data 0x0158

loc_8C0D1678:
#data 0x01D0

loc_8C0D167A:
#data 0x012c

loc_8C0D167C:
#data 0x0108
#data 0x0000

#align4
loc_8C0D1680:
#data bank03.loc_8c034D8c

loc_8C0D1684:
#data 0x8c15CAD0

loc_8C0D1688:
#data bank03.loc_8c034e8c

loc_8C0D168C:
#data bank03.loc_8c03544c

loc_8C0D1690:
#data 0x3F000000

#align4
loc_8C0D1694:
#data 0x3E99999a

#align4
loc_8C0D1698:
#data 0x3E4CCCCd

#align4
loc_8C0D169C:
#data 0x3D23D70a

#align4
loc_8C0D16A0:
#data 0xBB83126f

#align4
loc_8C0D16A4:
#data 0xC0AB6DB6

#align4
loc_8C0D16A8:
#data 0x70FF854e
#data 0x600F814e
#data 0x891C4015
#data 0x814EE003
#data 0x00096063
#data 0xC7418046
#data 0xE050F308
#data 0xF230F256
#data 0xC73FF427
#data 0xE054F208
#data 0xF120F156
#data 0xC73DF417
#data 0xE05CF508
#data 0xC73CF457
#data 0xE068F408
#data 0xE060F447
#data 0xE068F457
#data 0xF447

loc_8C0D16EE:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0D16F2:
mov 0x5C,r1 ; r1 set to 0x5c
mov.l @(0x18,r4),r5
add r4,r1 ; r1 ??? bc r4 is ???	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @r1,fr3
fmov.s @(r0,r4),fr2
mov 0x60,r1 ; r1 set to 0x60
add r4,r1 ; r1 ??? bc r4 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @r1,fr3
fmov.s @(r0,r4),fr2
fadd fr3,fr2
fldi1 fr3
fmov.s fr2,@(r0,r4) 	
fmov.s @(r0,r5),fr2
fcmp/gt fr2,fr3
bt loc_8C0D1724
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x04,r4) 	
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8C0D17BE,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

#align4
loc_8C0D1724:
#data 0x70FF854e
#data 0x600F814e
#data 0x891B4015
#data 0x814EE006
#data 0x8044E001
#data 0xF308C722
#data 0xF256E050
#data 0xF427F230
#data 0xF208C720
#data 0xF156E054
#data 0xF417F120
#data 0xF508C720
#data 0xF457E05c
#data 0xF408C71f
#data 0xF447E068
#data 0xF457E060
#data 0xF447E06c

#align4
loc_8C0D1768:
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0D176C:
mov 0x02,r0 ; r0 set to 0x02
rts 	
mov.b r0,@(0x04,r4) 	
;-------------------------------------------------------------------------------

loc_8C0D1772:
#data 0xC714
#data 0x55469324
#data 0xE00CF308
#data 0xF256353c
#data 0xF230E050
#data 0xC710F427
#data 0xE014F208
#data 0xE054F156
#data 0xF417F120
#data 0xF056E00c
#data 0xF105F19d
#data 0xE0028904
#data 0xE2008044
#data 0x0424900b

#align4
loc_8C0D17A8:
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0D17AC:
mov r4,r3
mov.l @(loc_8C0D17DC,pc),r1 ; r1 set to 0x8C15CAE4
mov.l r4,@-r15
mov.b @(0x06,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D17BE:
#data 0x012c
#data 0x000002A4
#data 0x3E99999a
#data 0x3E4CCCCd
#data 0xBCA3D70a
#data 0x3B03126f
#data 0x3D23D70a
#data 0xBB83126f

#align4
loc_8C0D17DC:
#data 0x8c15CAE4


loc_8C0D17E0:
mov.b @(0x06,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
mov.l @(0x18,r4),r5
add 0x01,r0
mov.l @(loc_8C0D192C,pc),r2 ; r2 set to 0x8C2659Dc
mov.b r0,@(0x06,r4) 	
mov.w @(loc_8C0D1922,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	
add 0x02,r0 ; r0 set to 0x12e
mov.w @(r0,r5),r4
mov.l @(loc_8C0D1930,pc),r5 ; r5 set to 0xF000
mov r4,r3 ; r3 ??? bc r4 is ???	
shll r4
add r3,r4
shll2 r4
shll2 r4
add r2,r4
add 0x60,r4
mov 0x01,r3 ; r3 set to 0x01
mov.l r3,@(0x08,r4) 	
mov.w @(0x12,r4),r0 	
or r5,r0 ; r0 ??	
mov.w r0,@(0x12,r4) 	
mov.w @(0x14,r4),r0 	
or r5,r0
mov.w r0,@(0x14,r4) 	
mov.w @(0x16,r4),r0 	
or r5,r0
mov.l @(loc_8C0D1934,pc),r5 ; r5 set to 0x9FFf
mov.w r0,@(0x16,r4) 	
mov.w @(0x12,r4),r0 	
and r5,r0
mov.w r0,@(0x12,r4) 	
mov.w @(0x14,r4),r0 	
and r5,r0
mov.w r0,@(0x14,r4) 	
mov.w @(0x16,r4),r0 	
and r5,r0
rts 	
mov.w r0,@(0x16,r4) 	
;-------------------------------------------------------------------------------

#align4
loc_8C0D1830:
#data 0x90789678
#data 0x364C5546
#data 0x025D6361
#data 0x89203320
#data 0x8044E002
#data 0x005C9070
#data 0x8807600c
#data 0x88088919
#data 0x880B8917
#data 0x90688915
#data 0x045DD234
#data 0x6343D534
#data 0x343C4400
#data 0x44084408
#data 0x7460342c
#data 0x1432E301
#data 0x205B8549
#data 0x854A8149
#data 0x814A205b
#data 0x205B854b
#data 0x814b

loc_8C0D1882:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0D1886:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D1924,pc),r4 ; r4 set to 0xCc
mov.w @(loc_8C0D1926,pc),r0 ; r0 set to 0x158
mov.l @(0x18,r14),r5
add r14,r4 ; r4 ??? bc r14 is ???	
mov.w @r4,r3
mov.w @(r0,r5),r2
cmp/eq r2,r3
bt loc_8C0D18A2
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x04,r14) 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D18A2:
mov.b @(0x06,r14),r0 	
mov r14,r4
mov.l @(loc_8C0D1938,pc),r1 ; r1 set to 0x8C15CAEc
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x000b
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D18B6:
mov.l r14,@-r15
mov r4,r14
mov 0x01,r3 ; r3 set to 0x01
mov.l r8,@-r15
sts.l pr,@-r15
mov.b @(0x06,r14),r0 	
mov 0x34,r8 ; r8 set to 0x34
mov.l @(0x18,r14),r4
add 0x01,r0
mov.b r0,@(0x06,r14) 	
mov.w @(loc_8C0D1922,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
add 0x04,r0 ; r0 set to 0x130
mov.w @(r0,r4),r3 ; r3 ??? bc r4 is ???	
tst r3,r3
bt/s loc_8C0D18E0
add r14,r8 ; r8 ??? bc r14 is ???	
mov.l @(loc_8C0D193C,pc),r1 ; r1 set to 0x41555555
lds r1,fpul 	
bra loc_8C0D18E6
fsts fpul,fr3

loc_8C0D18E0:
mov.l @(loc_8C0D1940,pc),r2 ; r2 set to 0xC1555555
lds r2,fpul 	
fsts fpul,fr3

loc_8C0D18E6:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(loc_8C0D1944,pc),r1 ; r1 set to 0x42A72492, r1 set to 0x42A72492
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
fadd fr3,fr2
mov.l @(loc_8C0D1948,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
lds r1,fpul 	
mov 0x22,r6 ; r6 set to 0x22, r6 set to 0x22
fmov.s fr2,@r8
fmov.s @(r0,r14),fr2
fsts fpul,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
jsr @r3
mov r14,r4
mova @(loc_8C0D194C,pc),r0  ; r0 set to 0x8C0D194C, r0 set to 0x8C0D194c
fmov.s @r0,fr3 ; r3 ??, r3 ??	
mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
mov 0x07,r3 ; r3 set to 0x07, r3 set to 0x07
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0D1950,pc),r0  ; r0 set to 0x8C0D1950, r0 set to 0x8C0D1950
fmov.s @r0,fr3 ; r3 ??, r3 ??	
mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
fmov.s fr3,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
mov.b r3,@(r0,r14) 	
lds.l @r15+,pr 	
mov.l @r15+,r8
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D1922:
#data 0x012c

loc_8C0D1924:
#data 0x00Cc

loc_8C0D1926:
#data 0x0158
#data 0x012E0159

#align4
loc_8C0D192C:
#data 0x8C2659Dc

#align4
loc_8C0D1930:
#data 0x0000F000

#align4
loc_8C0D1934:
#data 0x00009FFf

#align4
loc_8C0D1938:
#data 0x8c15CAEc

loc_8C0D193C:
#data 0x41555555

#align4
loc_8C0D1940:
#data 0xC1555555

#align4
loc_8C0D1944:
#data 0x42A72492

#align4
loc_8C0D1948:
#data bank03.loc_8c034C38

loc_8C0D194C:
#data 0x3F333333

#align4
loc_8C0D1950:
#data 0x3E99999a

#align4
loc_8C0D1954:
#data 0x7FFC4F22
#data 0x430BD347
#data 0x600E2F42
#data 0x89024011
#data 0xE00263F2
#data 0x8034

loc_8C0D196A:
#data 0x7F04
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0D1972:
mov.w @(loc_8C0D1A6A,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.l r14,@-r15
fmov.s fr15,@-r15
fmov.s fr14,@-r15
sts.l pr,@-r15
mov.b r3,@(r0,r4) 	
add 0x15,r0 ; r0 set to 0x141
mov.l @(0x18,r4),r5
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
cmp/eq 0x02,r0 	
bf loc_8C0D1990
mov 0x02,r0 ; r0 set to 0x02
bra loc_8C0D19Ee
mov.b r0,@(0x04,r4) 	

loc_8C0D1990:
mov.w @(loc_8C0D1A6C,pc),r0 ; r0 set to 0x141
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
cmp/eq 0x03,r0 	
bf loc_8C0D19Ee
mov.w @(loc_8C0D1A6E,pc),r0 ; r0 set to 0x1C8
mov.l @(loc_8C0D1A84,pc),r3 ; r3 set to 0x8C03319e
mov.l @(r0,r5),r14
mova @(loc_8C0D1A7C,pc),r0  ; r0 set to 0x8C0D1A7c
fmov.s @r0,fr14
mova @(loc_8C0D1A80,pc),r0  ; r0 set to 0x8C0D1A80
jsr @r3
fmov.s @r0,fr15
and 0x03,r0 	
cmp/eq 0x00,r0 	
bt loc_8C0D19Be
cmp/eq 0x01,r0 	
bt loc_8C0D19C6
cmp/eq 0x02,r0 	
bt loc_8C0D19Ce
cmp/eq 0x03,r0 	
bt loc_8C0D19De
bra loc_8C0D19Ee
nop 	

loc_8C0D19BE:
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r14),fr3
bra loc_8C0D19D4
fadd fr15,fr3

loc_8C0D19C6:
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r14),fr3
bra loc_8C0D19E4
fsub fr15,fr3

loc_8C0D19CE:
#data 0xE034
#data 0xF3F1F3E6


loc_8C0D19D4:
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
bra loc_8C0D19Ec
fadd fr14,fr2

loc_8C0D19DE:
#data 0xE034
#data 0xF3F0F3E6

#align4
loc_8C0D19E4:
#data 0xE038FE37
#data 0xF2E1F2E6

loc_8C0D19EC:
#data 0xFE27


loc_8C0D19EE:
lds.l @r15+,pr 	
fmov.s @r15+,fr14
fmov.s @r15+,fr15
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D19F8:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D1A70,pc),r4 ; r4 set to 0xCc
mov.l r13,@-r15
mov.w @(loc_8C0D1A72,pc),r0 ; r0 set to 0x158
add r14,r4 ; r4 ??? bc r14 is ???	
sts.l pr,@-r15
mov.l @(0x18,r14),r13
mov.w @r4,r3
mov.w @(r0,r13),r2
cmp/eq r2,r3
bt loc_8C0D1A16
mov 0x02,r0 ; r0 set to 0x02
bra loc_8C0D1A30
mov.b r0,@(0x04,r14) 	

loc_8C0D1A16:
mov.b @(0x06,r14),r0 	
mov.l @(loc_8C0D1A88,pc),r1 ; r1 set to 0x8C15CAF4
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jsr @r3
mov r14,r4
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r3
mov 0xFF,r2 ; r2 set to 0xFFFFFFFf
mov.b r3,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r2,@(r0,r14) 	

loc_8C0D1A30:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D1A38:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x06,r14),r0 	
mov 0x1B,r5 ; r5 set to 0x1b
mov.l @(loc_8C0D1A8C,pc),r3 ; r3 set to 0x8C034C38
add 0x01,r0
mov.b r0,@(0x06,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r6
jsr @r3
mov r14,r4
mov.l @(loc_8C0D1A90,pc),r1 ; r1 set to 0x431A4924
mov 0x00,r2 ; r2 set to 0x00
mov.w @(loc_8C0D1A74,pc),r0 ; r0 set to 0x130
lds r1,fpul 	
mov.w r2,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???	
fsts fpul,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D1A6A:
#data 0x012c

loc_8C0D1A6C:
#data 0x0141

loc_8C0D1A6E:
#data 0x01C8

loc_8C0D1A70:
#data 0x00Cc

loc_8C0D1A72:
#data 0x0158

loc_8C0D1A74:
#data 0x0130
#data 0x0000

#align4
loc_8C0D1A78:
#data bank03.loc_8c034D8c

loc_8C0D1A7C:
#data 0x3F092492

#align4
loc_8C0D1A80:
#data 0x3ED55555

#align4
loc_8C0D1A84:
#data bank03.loc_8c03319e

loc_8C0D1A88:
#data 0x8c15CAF4

loc_8C0D1A8C:
#data bank03.loc_8c034C38

loc_8C0D1A90:
#data 0x431A4924

#align4
loc_8C0D1A94:
#data 0x6E432FE6
#data 0xD111E034
#data 0x54E64F22
#data 0xF346415a
#data 0xFE37D30f
#data 0xF2E6E038
#data 0xF230F30d
#data 0x430BFE27
#data 0x600E64E3
#data 0x89014011
#data 0x80E4E002

#align4
loc_8C0D1AC0:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D1AC6:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D1ADE,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0D1AD4:
mov.l @(loc_8C0D1AE8,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0D1ADA:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0D1ADE:
#data 0x012c
#data 0x3F092492

#align4
loc_8C0D1AE4:
#data bank03.loc_8c034D8c

loc_8C0D1AE8:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0xE600D344
#data 0x2F501F41
#data 0x430BE503
#data 0x20086463
#data 0x64038D0a
#data 0xE020D340
#data 0x52F11434
#data 0x63F01426
#data 0x04349274
#data 0x0425E026
#data 0x4F267F08
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0D1B20:
mov 0x20,r0 ; r0 set to 0x20
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(loc_8C0D1C0C,pc),r0 ; r0 set to 0x8C15CAFc
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

loc_8C0D1B34:
mov r4,r3
mov.l @(loc_8C0D1C10,pc),r1 ; r1 set to 0x8C15CB0c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D1B46:
mov.w @(loc_8C0D1BFE,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0D1C14,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D1BFE,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D1C00,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0D1C02,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D1C18,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x00,r2 ; r2 set to 0x00
mov.l @(0x18,r4),r1
mov 0x24,r0 ; r0 set to 0x24
mov.b r2,@(r0,r4) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r4),r3 ; r3 ??? bc r4 is ???	
tst r3,r3
bt/s loc_8C0D1BBe
mov 0x15,r5 ; r5 set to 0x15
mov 0x06,r7 ; r7 set to 0x06
bra loc_8C0D1BC2
mov 0x10,r6

loc_8C0D1BBE:
mov 0x0A,r6 ; r6 set to 0x0a
mov 0x06,r7 ; r7 set to 0x06

loc_8C0D1BC2:
mov.l @(loc_8C0D1C1C,pc),r3 ; r3 set to 0x8C034F54, r3 set to 0x8C034F54
jmp @r3
lds.l @r15+,pr 	

#align4
loc_8C0D1BC8:
#data 0x4F222FE6
#data 0x430BD314
#data 0x600E6E43
#data 0x89054011
#data 0xE30084E4
#data 0x80E47001
#data 0x0E34900e

#align4
loc_8C0D1BE4:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D1BEA:
mov r4,r3
mov.l @(loc_8C0D1C24,pc),r1 ; r1 set to 0x8C15CB1c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x1500

loc_8C0D1BFE:
#data 0x00Dc

loc_8C0D1C00:
#data 0x012c

loc_8C0D1C02:
#data 0x01A3

#align4
loc_8C0D1C04:
#data bank04.loc_8c044F12

loc_8C0D1C08:
#data loc_8c0d1B20

loc_8C0D1C0C:
#data 0x8c15CAFc

loc_8C0D1C10:
#data 0x8c15CB0c

loc_8C0D1C14:
#data bank12.loc_8c129560

loc_8C0D1C18:
#data bank12.loc_8c1294C8

loc_8C0D1C1C:
#data bank03.loc_8c034F54

loc_8C0D1C20:
#data bank03.loc_8c034dee

loc_8C0D1C24:
#data 0x8c15CB1c


loc_8C0D1C28:
mov.w @(loc_8C0D1D30,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0D1D3C,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D1D30,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D1D32,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0D1D34,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D1D40,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x24,r0 ; r0 set to 0x24
mov 0x07,r2 ; r2 set to 0x07
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov 0x15,r5 ; r5 set to 0x15
mov.l @(loc_8C0D1D44,pc),r3 ; r3 set to 0x8C034E8c
mov 0x0B,r6 ; r6 set to 0x0b
mov.b r2,@(r0,r4) 	
jmp @r3
lds.l @r15+,pr 	

loc_8C0D1C9C:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x05,r14),r0 	
mov.l @(0x18,r14),r4
extu.b r0,r0
mov.w @(loc_8C0D1D36,pc),r3 ; r3 set to 0x2A4
cmp/eq 0x00,r0 	
bt/s loc_8C0D1CC0
add r3,r4
cmp/eq 0x01,r0 	
bt loc_8C0D1CE0
cmp/eq 0x02,r0 	
bt loc_8C0D1D0c
cmp/eq 0x03,r0 	
bt loc_8C0D1D62
bra loc_8C0D1D7a
nop 	

loc_8C0D1CC0:
mov.l @(loc_8C0D1D48,pc),r2 ; r2 set to 0x8C034DEe
jsr @r2
mov r14,r4
mov.w @(loc_8C0D1D38,pc),r0 ; r0 set to 0x141
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8C0D1D7a
mov.b @(0x05,r14),r0 	
mov r14,r4
mov.l @(loc_8C0D1D4C,pc),r3 ; r3 set to 0x8C0D1FD4
mov 0x02,r5 ; r5 set to 0x02
add 0x01,r0 ; r0 set to 0x142
mov.b r0,@(0x05,r14) 	
lds.l @r15+,pr 	
jmp @r3
mov.l @r15+,r14

loc_8C0D1CE0:
mov.b @(0x01,r4),r0 	
tst r0,r0
bt loc_8C0D1CF6
mov.b @(0x05,r14),r0 	
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r14),r2
fmov.s @(r0,r2),fr3
bra loc_8C0D1D7a
fmov.s fr3,@(r0,r14) 	

loc_8C0D1CF6:
mov.w @(loc_8C0D1D3A,pc),r0 ; r0 set to 0x1D0
mov.l @(0x18,r14),r4
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
extu.b r0,r0
cmp/eq 0x15,r0 	
bf loc_8C0D1D1e
mov.b @(0x05,r4),r0 	
tst r0,r0
bt loc_8C0D1D7a
bra loc_8C0D1D1e
nop 	

#align4
loc_8C0D1D0C:
#data 0x54E69015
#data 0x600C004c
#data 0x8B028815
#data 0x20088445
#data 0x8918


loc_8C0D1D1E:
mov.l @(loc_8C0D1D44,pc),r3 ; r3 set to 0x8C034E8c
mov 0x03,r0 ; r0 set to 0x03
mov r14,r4
mov.b r0,@(0x05,r14) 	
lds.l @r15+,pr 	
mov 0x0D,r6 ; r6 set to 0x0d
mov 0x15,r5 ; r5 set to 0x15
jmp @r3
mov.l @r15+,r14

loc_8C0D1D30:
#data 0x00Dc

loc_8C0D1D32:
#data 0x012c

loc_8C0D1D34:
#data 0x01A3

loc_8C0D1D36:
#data 0x02A4

loc_8C0D1D38:
#data 0x0141

loc_8C0D1D3A:
#data 0x01D0

#align4
loc_8C0D1D3C:
#data bank12.loc_8c129560

loc_8C0D1D40:
#data bank12.loc_8c1294C8

loc_8C0D1D44:
#data bank03.loc_8c034e8c

loc_8C0D1D48:
#data bank03.loc_8c034dee

loc_8C0D1D4C:
#data loc_8c0d1FD4

loc_8C0D1D50:
#data 0x52E6908f
#data 0x928D032d
#data 0x3320633d
#data 0xA00C8907
#data 0x0009

loc_8C0D1D62:
#data 0xD248
#data 0x64E3420b
#data 0x4011600e
#data 0x8905

loc_8C0D1D6E:
#data 0x84E4
#data 0x7001E300
#data 0x907E80E4
#data 0x0E34


loc_8C0D1D7A:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0D1D80:
#data 0xE2009079
#data 0x4F222FE6
#data 0x84440424
#data 0x8F3E2008
#data 0x8444E701
#data 0x70019170
#data 0x8044D33b
#data 0x906B314c
#data 0x320C5246
#data 0x70E4430b
#data 0x61439065
#data 0x04747150
#data 0x84025046
#data 0x50468042
#data 0x80418401
#data 0x5346E050
#data 0xF437F336
#data 0x5346E054
#data 0xF437F336
#data 0x53469055
#data 0x0424023c
#data 0x53467001
#data 0x0424023c
#data 0x5346E030
#data 0x0424023c
#data 0x72505246
#data 0x430BD328
#data 0x5146E00c
#data 0x031CE024
#data 0x90410434
#data 0x032E5246
#data 0x923E70Dc
#data 0xE307013c
#data 0xE0240414
#data 0xE0210434
#data 0x0424

loc_8C0D1E0E:
#data 0x5246
#data 0xD31E6143
#data 0x72347134
#data 0xE00C430b
#data 0x56469030
#data 0x635C056c
#data 0x89042338
#data 0x006C902b
#data 0x880F600c
#data 0x8902

loc_8C0D1E32:
#data 0x4F26
#data 0x6EF6A09b

#align4
loc_8C0D1E38:
#data 0x6E5C901d
#data 0xE0210474
#data 0x633C034c
#data 0x89083E30
#data 0x67E3D311
#data 0xE51B0454
#data 0x77FF4F26
#data 0x432BE600
#data 0x6EF6

loc_8C0D1E5A:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0D1E60:
mov r4,r3
mov.l @(loc_8C0D1E94,pc),r1 ; r1 set to 0x8C15CB2c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x0158
#data 0x012C150b
#data 0x01A300Dc
#data 0x00FF01C8
#data 0x01590140

#align4
loc_8C0D1E84:
#data bank03.loc_8c034dee

loc_8C0D1E88:
#data bank12.loc_8c129560

loc_8C0D1E8C:
#data bank12.loc_8c1294C8

loc_8C0D1E90:
#data bank03.loc_8c034CD6

loc_8C0D1E94:
#data 0x8c15CB2c

loc_8C0D1E98:
#data 0x6E432FE6
#data 0x4F22916a
#data 0x31EC84E4
#data 0x7001D336
#data 0x906380E4
#data 0x320C52E6
#data 0x70E4430b
#data 0xE101905f
#data 0x61E30E14
#data 0x715050E6
#data 0x80E28402
#data 0x840150E6
#data 0xE05080E1
#data 0xF33653E6
#data 0xE054FE37
#data 0xF33653E6
#data 0x904DFE37
#data 0x023C53E6
#data 0x70010E24
#data 0x023C53E6
#data 0xE0300E24
#data 0x023C53E6
#data 0x52E60E24
#data 0x7250D323
#data 0xE00C430b
#data 0xE02451E6
#data 0x031CE200
#data 0xD320E515
#data 0x0E24E60a
#data 0x430BE706
#data 0x903264E3
#data 0x222802Ec
#data 0x932F8902
#data 0x0E36E048

#align4
loc_8C0D1F20:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D1F26:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0D1F8C,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt loc_8C0D1F44
mov.b @(0x04,r14),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0D1F76,pc),r0 ; r0 set to 0x12c
bra loc_8C0D1F5a
mov.b r3,@(r0,r14) 	

loc_8C0D1F44:
mov.w @(loc_8C0D1F7A,pc),r0 ; r0 set to 0x140
mov.b @(r0,r14),r1
tst r1,r1
bt loc_8C0D1F54
mov.w @(loc_8C0D1F7C,pc),r2 ; r2 set to 0xF000
mov 0x48,r0 ; r0 set to 0x48
bra loc_8C0D1F5a
mov.l r2,@(r0,r14) 	

loc_8C0D1F54:
mov 0x48,r0 ; r0 set to 0x48
mov 0x00,r1 ; r1 set to 0x00
mov.l r1,@(r0,r14) 	

loc_8C0D1F5A:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D1F60:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D1F76,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0D1F6E:
mov.l @(loc_8C0D1F90,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x00Dc

loc_8C0D1F76:
#data 0x012c
#data 0x01A3

loc_8C0D1F7A:
#data 0x0140

loc_8C0D1F7C:
#data 0xF000
#data 0x0000

#align4
loc_8C0D1F80:
#data bank12.loc_8c129560

loc_8C0D1F84:
#data bank12.loc_8c1294C8

loc_8C0D1F88:
#data bank03.loc_8c034F54

loc_8C0D1F8C:
#data bank03.loc_8c034dee

loc_8C0D1F90:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0x60532F42
#data 0xD34D0009
#data 0x80F4E503
#data 0x430BE600
#data 0x20086463
#data 0x64038D0e
#data 0xD349E120
#data 0x1434314c
#data 0x62F29388
#data 0x84F41426
#data 0x60F22100
#data 0x80418401
#data 0x0435E026
#data 0x4F267F08
#data 0x6043000b
;-------------------------------------------------------------------------------

#align4
loc_8C0D1FD4:
#data 0x4F222FE6
#data 0x2F507FFc
#data 0xD33DE503
#data 0xE6006E43
#data 0x6463430b
#data 0x8D0D2008
#data 0xD33A6403
#data 0x1434E020
#data 0x52E614E6
#data 0x63F01425
#data 0x84E10434
#data 0x80419364
#data 0x0435E026

#align4
loc_8C0D2008:
#data 0x00096043
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0D2014:
mov 0x20,r0 ; r0 set to 0x20
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(loc_8C0D20DC,pc),r0 ; r0 set to 0x8C15CB3c
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

loc_8C0D2028:
bra loc_8C0D243a
nop 	

loc_8C0D202C:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
extu.b r0,r0
cmp/eq 0x00,r0 	
bt loc_8C0D2046
cmp/eq 0x01,r0 	
bt loc_8C0D20Ec
cmp/eq 0x02,r0 	
bt loc_8C0D2100
bra loc_8C0D2108
nop 	

loc_8C0D2046:
mov.b @(0x04,r14),r0 	
mov.w @(loc_8C0D20CE,pc),r1 ; r1 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0D20E0,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0D20CE,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r14),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D20D0,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0D20D2,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D20E4,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r14),r1
mov 0x24,r0 ; r0 set to 0x24
mov 0x1B,r5 ; r5 set to 0x1b
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov 0x02,r6 ; r6 set to 0x02
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0D20D0,pc),r0 ; r0 set to 0x12c
mov.l @(loc_8C0D20E8,pc),r3 ; r3 set to 0x8C034C38
mov.b r4,@(r0,r14) 	
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???	
mov.l @(0x18,r14),r2
mov r14,r1
mov.l @(loc_8C0D20E4,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r1
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
bra loc_8C0D2108
nop 	
#data 0x1501

loc_8C0D20CE:
#data 0x00Dc

loc_8C0D20D0:
#data 0x012c

loc_8C0D20D2:
#data 0x01A3

#align4
loc_8C0D20D4:
#data bank04.loc_8c044F12

loc_8C0D20D8:
#data loc_8c0d2014

loc_8C0D20DC:
#data 0x8c15CB3c

loc_8C0D20E0:
#data bank12.loc_8c129560

loc_8C0D20E4:
#data bank12.loc_8c1294C8

loc_8C0D20E8:
#data bank03.loc_8c034C38


loc_8C0D20EC:
mov.l @(loc_8C0D21F0,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt loc_8C0D2108
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0D242c
mov.l @r15+,r14

loc_8C0D2100:
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0D243a
mov.l @r15+,r14

loc_8C0D2108:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D210E:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
extu.b r0,r0
cmp/eq 0x00,r0 	
bt loc_8C0D2128
cmp/eq 0x01,r0 	
bt loc_8C0D21B2
cmp/eq 0x02,r0 	
bt loc_8C0D21D6
bra loc_8C0D21De
nop 	

loc_8C0D2128:
mov.b @(0x04,r14),r0 	
mov.w @(loc_8C0D21E4,pc),r1 ; r1 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0D21F4,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0D21E4,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r14),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D21E6,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0D21E8,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D21F8,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r14),r1
mov 0x24,r0 ; r0 set to 0x24
mov 0x1B,r5 ; r5 set to 0x1b
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov 0x04,r6 ; r6 set to 0x04
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0D21E6,pc),r0 ; r0 set to 0x12c
mov.l @(loc_8C0D21FC,pc),r3 ; r3 set to 0x8C034C38
mov.b r4,@(r0,r14) 	
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???	
mov.l @(0x18,r14),r2
mov r14,r1
mov.l @(loc_8C0D21F8,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r1
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov 0x00,r1 ; r1 set to 0x00
bra loc_8C0D21De
mov.b r1,@(r0,r14) 	

loc_8C0D21B2:
#data 0x951a
#data 0x354C54E5
#data 0x20088451
#data 0x90158B07
#data 0x600C004c
#data 0x8B028815
#data 0x20088445
#data 0x8907

loc_8C0D21CE:
#data 0x4F26
#data 0xA12B64E3
#data 0x6EF6


loc_8C0D21D6:
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0D243a
mov.l @r15+,r14

loc_8C0D21DE:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D21E4:
#data 0x00Dc

loc_8C0D21E6:
#data 0x012c

loc_8C0D21E8:
#data 0x01A3
#data 0x02A4
#data 0x000001D0

#align4
loc_8C0D21F0:
#data bank03.loc_8c034D8c

loc_8C0D21F4:
#data bank12.loc_8c129560

loc_8C0D21F8:
#data bank12.loc_8c1294C8

loc_8C0D21FC:
#data bank03.loc_8c034C38


loc_8C0D2200:
mov.l r14,@-r15
mov r4,r14
mov 0x20,r0 ; r0 set to 0x20
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
mov.b @(r0,r14),r13
mov.b @(0x04,r14),r0 	
mov.l @(0x18,r14),r12
mov.w @(loc_8C0D2338,pc),r4 ; r4 set to 0x2A4
extu.b r0,r0 ; r0 set to 0x20
mov.w @(loc_8C0D233A,pc),r3 ; r3 set to 0xFd
cmp/eq 0x00,r0 	
add r12,r4 ; r4 ??? bc r12 is ???	
bt/s loc_8C0D2230
add r3,r13
cmp/eq 0x01,r0 	
bt loc_8C0D22F8
cmp/eq 0x02,r0 	
bf loc_8C0D222c
bra loc_8C0D232c
nop 	

loc_8C0D222C:
bra loc_8C0D235c
nop 	

loc_8C0D2230:
mov.b @(0x04,r14),r0 	
mov.w @(loc_8C0D233C,pc),r1 ; r1 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0D2348,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0D233C,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r14),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D233E,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0D2340,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D234C,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r14),r1
mov 0x24,r0 ; r0 set to 0x24
mov r13,r6
mov 0x1B,r5 ; r5 set to 0x1b
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
add 0x05,r6
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0D233E,pc),r0 ; r0 set to 0x12c
mov.l @(loc_8C0D2350,pc),r3 ; r3 set to 0x8C034C38
mov.b r4,@(r0,r14) 	
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???	
mov 0x24,r0 ; r0 set to 0x24
mov.l @(loc_8C0D234C,pc),r3 ; r3 set to 0x8C1294C8
mov 0x00,r2 ; r2 set to 0x00
mov r14,r1
mov.b r2,@(r0,r14) 	
mov r12,r2 ; r2 ??? bc r12 is ???	
add 0x34,r2
add 0x34,r1
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.w @(loc_8C0D2342,pc),r0 ; r0 set to 0x130
extu.b r13,r4
mov.l @(loc_8C0D2354,pc),r5 ; r5 set to 0x8C13B15c
shll2 r4
mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???	
shll r4
tst r3,r3
bt/s loc_8C0D22D6
add r5,r4
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r4,fr3
fmov.s @(r0,r14),fr2
bra loc_8C0D22De
fsub fr3,fr2

loc_8C0D22D6:
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r4,fr3
fmov.s @(r0,r14),fr2
fadd fr3,fr2

loc_8C0D22DE:
extu.b r13,r13
fmov.s fr2,@(r0,r14) 	
shll2 r13
shll r13
add r5,r13
mov 0x04,r1 ; r1 set to 0x04, r1 set to 0x04
add r13,r1 ; r1 ??? bc r13 is ???, r1 ??? bc r13 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @r1,fr3
fmov.s @(r0,r14),fr2
fadd fr3,fr2
bra loc_8C0D235c
fmov.s fr2,@(r0,r14) 	

#align4
loc_8C0D22F8:
#data 0x20088443
#data 0x90218B07
#data 0x600C00Cc
#data 0x8B028815
#data 0x200884C5
#data 0x8905

loc_8C0D230E:
#data 0x4F26
#data 0x6CF664E3
#data 0xA0896DF6
#data 0x6EF6

loc_8C0D231A:
#data 0xD30f
#data 0x64E3430b
#data 0x4011600e
#data 0xE000891a
#data 0x80E4A018


loc_8C0D232C:
lds.l @r15+,pr 	
mov r14,r4
mov.l @r15+,r12
mov.l @r15+,r13
bra loc_8C0D243a
mov.l @r15+,r14

loc_8C0D2338:
#data 0x02A4

loc_8C0D233A:
#data 0x00Fd

loc_8C0D233C:
#data 0x00Dc

loc_8C0D233E:
#data 0x012c

loc_8C0D2340:
#data 0x01A3

loc_8C0D2342:
#data 0x0130
#data 0x000001D0

#align4
loc_8C0D2348:
#data bank12.loc_8c129560

loc_8C0D234C:
#data bank12.loc_8c1294C8

loc_8C0D2350:
#data bank03.loc_8c034C38

loc_8C0D2354:
#data 0x8c13B15c

loc_8C0D2358:
#data bank03.loc_8c034D8c


loc_8C0D235C:
lds.l @r15+,pr 	
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D2366:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
extu.b r0,r0
cmp/eq 0x00,r0 	
bt loc_8C0D2380
cmp/eq 0x01,r0 	
bt loc_8C0D240a
cmp/eq 0x02,r0 	
bt loc_8C0D241e
bra loc_8C0D2426
nop 	

loc_8C0D2380:
mov.b @(0x04,r14),r0 	
mov.w @(loc_8C0D2440,pc),r1 ; r1 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0D2448,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0D2440,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r14),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D2442,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0D2444,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D244C,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r14),r1
mov 0x24,r0 ; r0 set to 0x24
mov 0x1B,r5 ; r5 set to 0x1b
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov 0x0A,r6 ; r6 set to 0x0a
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0D2442,pc),r0 ; r0 set to 0x12c
mov.l @(loc_8C0D2450,pc),r3 ; r3 set to 0x8C034C38
mov.b r4,@(r0,r14) 	
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???	
mov.l @(0x18,r14),r2
mov r14,r1
mov.l @(loc_8C0D244C,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r1
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov 0x00,r1 ; r1 set to 0x00
bra loc_8C0D2426
mov.b r1,@(r0,r14) 	

loc_8C0D240A:
mov.l @(loc_8C0D2454,pc),r2 ; r2 set to 0x8C034D8c
jsr @r2
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt loc_8C0D2426
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0D242c
mov.l @r15+,r14

loc_8C0D241E:
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0D243a
mov.l @r15+,r14

loc_8C0D2426:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D242C:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D2442,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0D243A:
mov.l @(loc_8C0D2458,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0D2440:
#data 0x00Dc

loc_8C0D2442:
#data 0x012c

loc_8C0D2444:
#data 0x01A3
#data 0x0000

#align4
loc_8C0D2448:
#data bank12.loc_8c129560

loc_8C0D244C:
#data bank12.loc_8c1294C8

loc_8C0D2450:
#data bank03.loc_8c034C38

loc_8C0D2454:
#data bank03.loc_8c034D8c

loc_8C0D2458:
#data bank04.loc_8c0450C0
#data 0x7FFC4F22
#data 0xE503D34c
#data 0xE6002F42
#data 0x6463430b
#data 0x8D0A2008
#data 0xD3496403
#data 0x93871434
#data 0x142662F2
#data 0x840160F2
#data 0xE0268041
#data 0x7F040435
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0D248E:
mov r4,r3
mov.l @(loc_8C0D259C,pc),r1 ; r1 set to 0x8C15CB60
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D24A0:
mov.w @(loc_8C0D258A,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0D25A0,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D258A,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D258C,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0D258E,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D25A4,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x00,r2 ; r2 set to 0x00
mov.l @(0x18,r4),r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov r4,r1
mov.b r2,@(r0,r4) 	
add 0x34,r1
mov.l @(0x18,r4),r2 ; r2 ??? bc r4 is ???	
mov.l @(loc_8C0D25A4,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(loc_8C0D25A8,pc),r2 ; r2 set to 0x8C034C38
mov 0x1B,r5 ; r5 set to 0x1b
mov 0x03,r6 ; r6 set to 0x03
jmp @r2
lds.l @r15+,pr 	

loc_8C0D2522:
#data 0x2FE6
#data 0x55E66E43
#data 0x20088455
#data 0x902F8B04
#data 0x600C005c
#data 0x8902881d

#align4
loc_8C0D2538:
#data 0xA008E002
#data 0x80E4

loc_8C0D253E:
#data 0x84E5
#data 0xD11A64E3
#data 0x4008600c
#data 0x432B031e
#data 0x6EF6

loc_8C0D254E:
#data 0x000b
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D2552:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0D25B0,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r5,r13
mov.w @(loc_8C0D2592,pc),r0 ; r0 set to 0x14f
mov.b @(r0,r13),r2
tst r2,r2
bt loc_8C0D25E0
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
extu.b r0,r0
cmp/eq 0x04,r0 	
bf loc_8C0D25Bc
mov.b @(0x05,r14),r0 	
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mova @(loc_8C0D25B4,pc),r0  ; r0 set to 0x8C0D25B4
fmov.s @r0,fr3 ; r3 ??	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0D25B8,pc),r0  ; r0 set to 0x8C0D25B8
fmov.s @r0,fr3
mov 0x6C,r0 ; r0 set to 0x6c
bra loc_8C0D25E0
fmov.s fr3,@(r0,r14) 	
#data 0x1502

loc_8C0D258A:
#data 0x00Dc

loc_8C0D258C:
#data 0x012c

loc_8C0D258E:
#data 0x01A3
#data 0x01D0

loc_8C0D2592:
#data 0x014f

#align4
loc_8C0D2594:
#data bank04.loc_8c044F12

loc_8C0D2598:
#data loc_8c0d248e

loc_8C0D259C:
#data 0x8c15CB60

loc_8C0D25A0:
#data bank12.loc_8c129560

loc_8C0D25A4:
#data bank12.loc_8c1294C8

loc_8C0D25A8:
#data bank03.loc_8c034C38

loc_8C0D25AC:
#data 0x8c15CB70

loc_8C0D25B0:
#data bank03.loc_8c034D8c

loc_8C0D25B4:
#data 0x42092492

#align4
loc_8C0D25B8:
#data 0x3E892492

#align4
loc_8C0D25BC:
#data 0x02DC9081
#data 0x622CD041
#data 0x032D4200
#data 0xF208C740
#data 0x435AC740
#data 0xE038F108
#data 0xF32DF0D6
#data 0xF313F322
#data 0xFE07F030


loc_8C0D25E0:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0D25E8:
#data 0x4F222FE6
#data 0x430BD339
#data 0xE1606E43
#data 0xE03831Ec
#data 0xF2E6F318
#data 0x31ECE16c
#data 0xFE27F230
#data 0xF2E6E060
#data 0xF230F318
#data 0xE038FE27
#data 0xC731F3E6
#data 0xF325F208
#data 0x84E58B05
#data 0x7001E300
#data 0x904F80E5
#data 0x0E34

loc_8C0D2626:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0D262C:
#data 0x600C8456
#data 0x8B1B8802
#data 0xE3018445
#data 0xF110F19d
#data 0x80457001
#data 0x04349040
#data 0x814EE015
#data 0xF308C724
#data 0xF437E06c
#data 0xF408C723
#data 0xF256E038
#data 0xE06CF346
#data 0xF346F231
#data 0xF342E060
#data 0xF313F243
#data 0xF427F231

#align4
loc_8C0D266C:
#data 0x0009000b
;-------------------------------------------------------------------------------

#align4
loc_8C0D2670:
#data 0x4F222FE6
#data 0x430BD317
#data 0xE1606E43
#data 0xE03831Ec
#data 0xF2E6F318
#data 0x31ECE16c
#data 0xFE27F230
#data 0xF2E6E060
#data 0xF230F318
#data 0x85EEFE27
#data 0x81EE70Ff
#data 0x401585Ee
#data 0x84E48902
#data 0x80E47001

#align4
loc_8C0D26A8:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D26AE:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D26C4,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0D26BC:
mov.l @(loc_8C0D26E4,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x014f

loc_8C0D26C4:
#data 0x012c
#data 0x0000

#align4
loc_8C0D26C8:
#data 0x8c15CB80
#data 0x40092492
#data 0x43800000

#align4
loc_8C0D26D4:
#data bank03.loc_8c034D8c
#data 0x448D6DB7
#data 0xBF892492
#data 0x41A80000

#align4
loc_8C0D26E4:
#data bank04.loc_8c0450C0

loc_8C0D26E8:
#data 0x7FFC4F22
#data 0xE503D34b
#data 0xE6002F42
#data 0x6463430b
#data 0x8D0A2008
#data 0xD3486403
#data 0x93851434
#data 0x142662F2
#data 0x840160F2
#data 0xE0268041
#data 0x0435

loc_8C0D2712:
#data 0x7F04
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0D271A:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(0x18,r4),r3
mov.l r3,@r15
mov.b @(0x04,r4),r0 	
extu.b r0,r0
cmp/eq 0x00,r0 	
bt/s loc_8C0D273c
mov 0x00,r5 ; r5 set to 0x00
cmp/eq 0x01,r0 	
bt loc_8C0D27A6
cmp/eq 0x02,r0 	
bt loc_8C0D27B2
cmp/eq 0x03,r0 	
bt loc_8C0D27B8
bra loc_8C0D27Be
nop 	

loc_8C0D273C:
mov.b @(0x04,r4),r0 	
mov.w @(loc_8C0D2812,pc),r1 ; r1 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0D2824,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r4) 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.w @(loc_8C0D2812,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D2814,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0D2816,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D2828,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r4) 	
mov.w @(loc_8C0D2814,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r4) 	

loc_8C0D27A6:
mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
mov.b r5,@(r0,r4) 	
mov.l @r15,r5
add 0x04,r15
bra loc_8C0D27C6
lds.l @r15+,pr 	

loc_8C0D27B2:
add 0x04,r15
bra loc_8C0D28B2
lds.l @r15+,pr 	

loc_8C0D27B8:
add 0x04,r15
bra loc_8C0D28C0
lds.l @r15+,pr 	

loc_8C0D27BE:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0D27C6:
sts.l pr,@-r15
mov.b @(0x05,r4),r0 	
extu.b r0,r0
cmp/eq 0x00,r0 	
bt loc_8C0D27D8
cmp/eq 0x01,r0 	
bt loc_8C0D27Dc
bra loc_8C0D282c
nop 	

loc_8C0D27D8:
bra loc_8C0D2832
lds.l @r15+,pr 	

loc_8C0D27DC:
mov r5,r2
mov.l @(loc_8C0D2828,pc),r3 ; r3 set to 0x8C1294C8
mov r4,r1
add 0x34,r2
add 0x34,r1
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.w @(loc_8C0D2818,pc),r0 ; r0 set to 0x130
mov.w @(r0,r5),r2
mov.w r2,@(r0,r4) 	
add 0x1B,r0 ; r0 set to 0x14b
mov.b @(r0,r5),r3 ; r3 ??? bc r5 is ???	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r4),r2
cmp/eq r2,r3
bt loc_8C0D282c
mov 0x00,r6 ; r6 set to 0x00
mov r6,r0 ; r0 set to 0x00
nop 	
mov.b r0,@(0x05,r4) 	
mov.w @(loc_8C0D2814,pc),r0 ; r0 set to 0x12c
mov.b r6,@(r0,r4) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b r6,@(r0,r4) 	
bra loc_8C0D2832
lds.l @r15+,pr 	
#data 0x1503

loc_8C0D2812:
#data 0x00Dc

loc_8C0D2814:
#data 0x012c

loc_8C0D2816:
#data 0x01A3

loc_8C0D2818:
#data 0x0130
#data 0x0000

#align4
loc_8C0D281C:
#data bank04.loc_8c044F12

loc_8C0D2820:
#data loc_8c0d271a

loc_8C0D2824:
#data bank12.loc_8c129560

loc_8C0D2828:
#data bank12.loc_8c1294C8


loc_8C0D282C:
lds.l @r15+,pr 	
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0D2832:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D28C8,pc),r0 ; r0 set to 0x14b
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b @(r0,r13),r3
mov.w @(loc_8C0D28C6,pc),r4 ; r4 set to 0x80
extu.b r3,r3
cmp/ge r4,r3
bf loc_8C0D28Aa
mov.b @(0x05,r14),r0 	
mov 0x01,r3 ; r3 set to 0x01
mov r13,r2
mov r14,r1
add 0x01,r0 ; r0 set to 0x14c
mov.b r0,@(0x05,r14) 	
add 0x34,r2
mov.w @(loc_8C0D28CA,pc),r0 ; r0 set to 0x12c
add 0x34,r1
mov.b r3,@(r0,r14) 	
mov.l @(loc_8C0D28D0,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.w @(loc_8C0D28C8,pc),r0 ; r0 set to 0x14b
mov.b @(r0,r13),r2
mov 0x21,r0 ; r0 set to 0x21
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0D28C8,pc),r0 ; r0 set to 0x14b
mov.b @(r0,r13),r3 ; r3 ??? bc r13 is ???	
add r3,r4 ; r4 ??? bc r3 is ???	
extu.b r4,r7
mov r7,r0 ; r0 ??? bc r7 is ???	
nop 	
cmp/eq 0x12,r0 	
bf/s loc_8C0D2894
mov 0x01,r6 ; r6 set to 0x01
mov 0x24,r0 ; r0 set to 0x24
mov 0x07,r2 ; r2 set to 0x07
mov.b r2,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b @(r0,r13),r3
add 0x08,r3
mov.b r3,@(r0,r14) 	
mov 0x7F,r3 ; r3 set to 0x7f
mov.b @(r0,r14),r2 ; r2 ??? bc r14 is ???	
and r3,r2
bra loc_8C0D289c
mov.b r2,@(r0,r14) 	

#align4
loc_8C0D2894:
#data 0x31ECE124
#data 0x2100E000

#align4
loc_8C0D289C:
#data 0xE51BD30d
#data 0x64E3430b
#data 0x02DD9012
#data 0x0E25


loc_8C0D28AA:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D28B2:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D28CA,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0D28C0:
mov.l @(loc_8C0D28D8,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0D28C6:
#data 0x0080

loc_8C0D28C8:
#data 0x014b

loc_8C0D28CA:
#data 0x012c
#data 0x00000130

#align4
loc_8C0D28D0:
#data bank12.loc_8c1294C8

loc_8C0D28D4:
#data bank03.loc_8c034CD6

loc_8C0D28D8:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0xE600D354
#data 0x2F501F41
#data 0x430BE503
#data 0x20086463
#data 0x64038D0a
#data 0xE020D350
#data 0x52F11434
#data 0x63F01426
#data 0x04349292
#data 0x0425E026
#data 0x4F267F08
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0D2910:
mov 0x20,r0 ; r0 set to 0x20
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(loc_8C0D2A3C,pc),r0 ; r0 set to 0x8C15CB88
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

loc_8C0D2924:
mov r4,r3
mov.l @(loc_8C0D2A40,pc),r1 ; r1 set to 0x8C15CB90
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D2936:
mov.w @(loc_8C0D2A2A,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0D2A44,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D2A2A,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D2A2C,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0D2A2E,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D2A48,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x07,r2 ; r2 set to 0x07
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov 0xFE,r3 ; r3 set to 0xFFFFFFFe
mov.b r2,@(r0,r4) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r4) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r4),r2 ; r2 ??? bc r4 is ???	
mov 0x1B,r5 ; r5 set to 0x1b
mov 0x04,r6 ; r6 set to 0x04
fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???	
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
mov.l @(loc_8C0D2A4C,pc),r3 ; r3 set to 0x8C034C38
fmov.s fr3,@(r0,r4) 	
jmp @r3
lds.l @r15+,pr 	

loc_8C0D29C0:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0D2A50,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt loc_8C0D2A22
mov.b @(0x04,r14),r0 	
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0D2A30,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???	
tst r3,r3
bt loc_8C0D29E4
mova @(loc_8C0D2A54,pc),r0  ; r0 set to 0x8C0D2A54
bra loc_8C0D29E8
fmov.s @r0,fr3

loc_8C0D29E4:
mova @(loc_8C0D2A58,pc),r0  ; r0 init to 0x8C0D2A58
fmov.s @r0,fr3

loc_8C0D29E8:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
mov.l @(loc_8C0D2A4C,pc),r1 ; r1 set to 0x8C034C38, r1 set to 0x8C034C38
fmov.s fr3,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fldi0 fr3
mov 0x01,r3 ; r3 set to 0x01, r3 set to 0x01
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0D2A5C,pc),r0  ; r0 set to 0x8C0D2A5C, r0 set to 0x8C0D2A5c
fmov.s @r0,fr3 ; r3 ??, r3 ??	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0D2A60,pc),r0  ; r0 set to 0x8C0D2A60, r0 set to 0x8C0D2A60
fmov.s @r0,fr3
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
mov 0x05,r6 ; r6 set to 0x05, r6 set to 0x05
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0D2A30,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r14),r2
xor r3,r2
mov.w r2,@(r0,r14) 	
jsr @r1
mov r14,r4
lds.l @r15+,pr 	
mov.l @(loc_8C0D2A64,pc),r3 ; r3 set to 0x8C04223A, r3 set to 0x8C04223a
mov 0x2F,r5 ; r5 set to 0x2F, r5 set to 0x2f
mov r14,r4
jmp @r3
mov.l @r15+,r14

loc_8C0D2A22:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x1600

loc_8C0D2A2A:
#data 0x00Dc

loc_8C0D2A2C:
#data 0x012c

loc_8C0D2A2E:
#data 0x01A3

loc_8C0D2A30:
#data 0x0130
#data 0x0000

#align4
loc_8C0D2A34:
#data bank04.loc_8c044F12

loc_8C0D2A38:
#data loc_8c0d2910

loc_8C0D2A3C:
#data 0x8c15CB88

loc_8C0D2A40:
#data 0x8c15CB90

loc_8C0D2A44:
#data bank12.loc_8c129560

loc_8C0D2A48:
#data bank12.loc_8c1294C8

loc_8C0D2A4C:
#data bank03.loc_8c034C38

loc_8C0D2A50:
#data bank03.loc_8c034D8c

loc_8C0D2A54:
#data 0x40200000

#align4
loc_8C0D2A58:
#data 0xC0555555

#align4
loc_8C0D2A5C:
#data 0x41892492

#align4
loc_8C0D2A60:
#data 0xBF092492

#align4
loc_8C0D2A64:
#data bank04.loc_8c04223a


loc_8C0D2A68:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0D2BAC,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov.l @(0x18,r14),r13
mov 0x5C,r1 ; r1 set to 0x5c
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
mov.w @(loc_8C0D2BA6,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r13),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fcmp/gt fr3,fr2
bt loc_8C0D2ADe
mov.b @(0x04,r14),r0 	
mov 0x1E,r5 ; r5 set to 0x1e
mov.l @(loc_8C0D2BB4,pc),r3 ; r3 set to 0x8C042008
mov r14,r4
add 0x01,r0 ; r0 set to 0x39
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0D2BA6,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0D2BB0,pc),r0  ; r0 set to 0x8C0D2BB0
fmov.s @r0,fr3
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr3,@(r0,r14) 	
lds.l @r15+,pr 	
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0D2ADE:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D2AE6:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0D2BAC,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov.l @(0x18,r14),r13
mov 0x5C,r1 ; r1 set to 0x5c
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
mov.w @(loc_8C0D2BA6,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r13),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fcmp/gt fr2,fr3
bf loc_8C0D2B5e
mov.b @(0x04,r14),r0 	
mov 0x1B,r5 ; r5 set to 0x1b
mov.l @(loc_8C0D2BB8,pc),r3 ; r3 set to 0x8C034C38
mov 0x06,r6 ; r6 set to 0x06
add 0x01,r0 ; r0 set to 0x39
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0D2BA6,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14) 	
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov.l @(loc_8C0D2BB4,pc),r2 ; r2 set to 0x8C042008
mov r14,r4
mov 0x1E,r5 ; r5 set to 0x1e
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_8C0D2B5E:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D2B66:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0D2BAC,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r4,r14
mov.l @(loc_8C0D2BBC,pc),r1 ; r1 set to 0x3C449BA6
mov.w @(loc_8C0D2BA8,pc),r0 ; r0 set to 0x108
lds r1,fpul 	
fmov.s @(r0,r14),fr2
fsts fpul,fr3
fsub fr3,fr2
fmov.s fr2,@(r0,r14) 	
fmov.s @(r0,r14),fr1 ; r1 ??? bc r14 is ???	
fldi0 fr2
fcmp/gt fr2,fr1
bt loc_8C0D2B8e
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0D2C98
mov.l @r15+,r14

loc_8C0D2B8E:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D2B94:
mov r4,r3
mov.l @(loc_8C0D2BC0,pc),r1 ; r1 set to 0x8C15CBAc
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D2BA6:
#data 0x041c

loc_8C0D2BA8:
#data 0x0108
#data 0x0000

#align4
loc_8C0D2BAC:
#data bank03.loc_8c034D8c

loc_8C0D2BB0:
#data 0x41092492

#align4
loc_8C0D2BB4:
#data bank04.loc_8c042008

loc_8C0D2BB8:
#data bank03.loc_8c034C38

loc_8C0D2BBC:
#data 0x3C449BA6

#align4
loc_8C0D2BC0:
#data 0x8c15CBAc


loc_8C0D2BC4:
mov.w @(loc_8C0D2CAA,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0D2CB4,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D2CAA,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D2CAC,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0D2CAE,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D2CB8,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x07,r2 ; r2 set to 0x07
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov 0x02,r3 ; r3 set to 0x02
mov.b r2,@(r0,r4) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r4) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r4),r2 ; r2 ??? bc r4 is ???	
mov 0x1B,r5 ; r5 set to 0x1b
mov 0x13,r6 ; r6 set to 0x13
fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???	
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0D2CB0,pc),r0 ; r0 set to 0x41c
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
mov 0x38,r0 ; r0 set to 0x38
mov.l @(loc_8C0D2CBC,pc),r3 ; r3 set to 0x8C034C38
fmov.s fr3,@(r0,r4) 	
jmp @r3
lds.l @r15+,pr 	

loc_8C0D2C50:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x05,r14),r0 	
tst r0,r0
bf loc_8C0D2C76
mov.l @(loc_8C0D2CC0,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt loc_8C0D2C92
mov.b @(0x05,r14),r0 	
fldi1 fr3
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov.w @(loc_8C0D2CB2,pc),r0 ; r0 set to 0x108
bra loc_8C0D2C92
fmov.s fr3,@(r0,r14) 	

loc_8C0D2C76:
mov.l @(loc_8C0D2CC4,pc),r1 ; r1 set to 0x3D4CCCCd
mov.w @(loc_8C0D2CB2,pc),r0 ; r0 set to 0x108
lds r1,fpul 	
fmov.s @(r0,r14),fr2
fldi0 fr1
fsts fpul,fr3
fsub fr3,fr2
fcmp/gt fr1,fr2
bt/s loc_8C0D2C92
fmov.s fr2,@(r0,r14) 	
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0D2C98
mov.l @r15+,r14

loc_8C0D2C92:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D2C98:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D2CAC,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	

loc_8C0D2CA4:
mov.l @(loc_8C0D2CC8,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0D2CAA:
#data 0x00Dc

loc_8C0D2CAC:
#data 0x012c

loc_8C0D2CAE:
#data 0x01A3

loc_8C0D2CB0:
#data 0x041c

loc_8C0D2CB2:
#data 0x0108

#align4
loc_8C0D2CB4:
#data bank12.loc_8c129560

loc_8C0D2CB8:
#data bank12.loc_8c1294C8

loc_8C0D2CBC:
#data bank03.loc_8c034C38

loc_8C0D2CC0:
#data bank03.loc_8c034D8c

loc_8C0D2CC4:
#data 0x3D4CCCCd

#align4
loc_8C0D2CC8:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0xE600D35e
#data 0x2F501F41
#data 0x430BE503
#data 0x20086463
#data 0x64038D0a
#data 0xE026D35a
#data 0x52F11434
#data 0x142693Aa
#data 0xE0200435
#data 0x042462F0
#data 0x4F267F08
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0D2D00:
mov r4,r3
mov.l @(loc_8C0D2E54,pc),r1 ; r1 set to 0x8C15CBBc
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D2D12:
mov 0x20,r0 ; r0 set to 0x20
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(loc_8C0D2E58,pc),r0 ; r0 set to 0x8C15CBCc
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

loc_8C0D2D26:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D2E46,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0D2E5C,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0D2E46,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r14),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D2E48,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0D2E4A,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D2E60,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r14),r1
mov 0x24,r0 ; r0 set to 0x24
mov 0x1B,r5 ; r5 set to 0x1b
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov 0x00,r6 ; r6 set to 0x00
mov.b r3,@(r0,r14) 	
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8C0D2E48,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r14),r2
fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
mov.l @(loc_8C0D2E64,pc),r3 ; r3 set to 0x8C034C38
fmov.s fr3,@(r0,r14) 	
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???	
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0D2F02
mov.l @r15+,r14

loc_8C0D2DBE:
mov.w @(loc_8C0D2E46,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0D2E5C,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D2E46,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D2E48,pc),r0 ; r0 set to 0x12c
mov 0x01,r5 ; r5 set to 0x01
mov r4,r1
add 0x50,r1
mov.b r5,@(r0,r4) 	
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
mov.w @(loc_8C0D2E4A,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D2E60,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r4) 	
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8C0D2E48,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r4) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r4) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r4),r2
fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???	
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
bra loc_8C0D2F32
lds.l @r15+,pr 	
#data 0x1601

loc_8C0D2E46:
#data 0x00Dc

loc_8C0D2E48:
#data 0x012c

loc_8C0D2E4A:
#data 0x01A3

#align4
loc_8C0D2E4C:
#data bank04.loc_8c044F12

loc_8C0D2E50:
#data loc_8c0d2D00

loc_8C0D2E54:
#data 0x8c15CBBc

loc_8C0D2E58:
#data 0x8c15CBCc

loc_8C0D2E5C:
#data bank12.loc_8c129560

loc_8C0D2E60:
#data bank12.loc_8c1294C8

loc_8C0D2E64:
#data bank03.loc_8c034C38


loc_8C0D2E68:
mov.w @(loc_8C0D2FB4,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0D2FC0,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D2FB4,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D2FB6,pc),r0 ; r0 set to 0x12c
mov 0x01,r5 ; r5 set to 0x01
mov r4,r1
add 0x50,r1
mov.b r5,@(r0,r4) 	
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
mov.w @(loc_8C0D2FB8,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D2FC4,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r4) 	
mov 0x0B,r3 ; r3 set to 0x0b
mov.w @(loc_8C0D2FB6,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r4) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r4) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r4),r2
fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???	
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
bra loc_8C0D2F8a
lds.l @r15+,pr 	

loc_8C0D2EEE:
mov 0x20,r0 ; r0 set to 0x20
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(loc_8C0D2FC8,pc),r0 ; r0 set to 0x8C15CBD8
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

loc_8C0D2F02:
mov.l r14,@-r15
mov r4,r14
mov 0x34,r0 ; r0 set to 0x34
sts.l pr,@-r15
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
mov.l @(loc_8C0D2FCC,pc),r3 ; r3 set to 0x8C034D8c
fmov.s fr3,@(r0,r14) 	
jsr @r3
mov r14,r4
exts.b r0,r0 ; r0 ??	
cmp/pz r0
bt loc_8C0D2F2c
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0D3010
mov.l @r15+,r14

loc_8C0D2F2C:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D2F32:
mov.l r14,@-r15
mov r4,r14
mov 0x34,r0 ; r0 set to 0x34
mov.l r13,@-r15
mov.l r12,@-r15
mov 0x1B,r5 ; r5 set to 0x1b
sts.l pr,@-r15
mov.l @(0x18,r14),r3
mov 0x01,r6 ; r6 set to 0x01
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
mov.l @(loc_8C0D2FD0,pc),r3 ; r3 set to 0x8C034C38
fmov.s fr3,@(r0,r14) 	
jsr @r3
mov r14,r4
mov.l @(loc_8C0D2FCC,pc),r12 ; r12 set to 0x8C034D8c
mov 0x01,r13 ; r13 set to 0x01

loc_8C0D2F5A:
mov.w @(loc_8C0D2FBA,pc),r2 ; r2 set to 0x150
mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???	
add r3,r2 ; r2 ??? bc r3 is ???	
mov.w @(loc_8C0D2FBC,pc),r3 ; r3 set to 0x140
mov.b @(0x01,r2),r0 	
add r14,r3 ; r3 ??? bc r14 is ???	
mov.b @r3,r3
cmp/eq r3,r0
bf loc_8C0D2F72
mov.w @(loc_8C0D2FB6,pc),r0 ; r0 set to 0x12c
bra loc_8C0D2F80
mov.b r13,@(r0,r14) 	

loc_8C0D2F72:
#data 0x4C0b
#data 0x600E64E3
#data 0x89EE4011
#data 0x64E3B048


loc_8C0D2F80:
lds.l @r15+,pr 	
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D2F8A:
mov.l r14,@-r15
mov r4,r14
mov 0x34,r0 ; r0 set to 0x34
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov.l @(0x18,r14),r3
mov.w @(loc_8C0D2FBE,pc),r0 ; r0 set to 0x19e
mov.b @(r0,r3),r2
tst r2,r2
bf/s loc_8C0D2FD4
mov 0x1B,r5 ; r5 set to 0x1b
bra loc_8C0D2FD6
mov 0x02,r6

loc_8C0D2FB4:
#data 0x00Dc

loc_8C0D2FB6:
#data 0x012c

loc_8C0D2FB8:
#data 0x01A3

loc_8C0D2FBA:
#data 0x0150

loc_8C0D2FBC:
#data 0x0140

loc_8C0D2FBE:
#data 0x019e

#align4
loc_8C0D2FC0:
#data bank12.loc_8c129560

loc_8C0D2FC4:
#data bank12.loc_8c1294C8

loc_8C0D2FC8:
#data 0x8c15CBD8

loc_8C0D2FCC:
#data bank03.loc_8c034D8c

loc_8C0D2FD0:
#data bank03.loc_8c034C38


loc_8C0D2FD4:
mov 0x03,r6 ; r6 set to 0x03

loc_8C0D2FD6:
mov.l @(loc_8C0D3028,pc),r3 ; r3 set to 0x8C034C38
jsr @r3
mov r14,r4
mov.l @(loc_8C0D302C,pc),r12 ; r12 set to 0x8C034D8c
mov 0x01,r13 ; r13 set to 0x01

loc_8C0D2FE0:
mov.w @(loc_8C0D3022,pc),r2 ; r2 set to 0x150
mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???	
add r3,r2 ; r2 ??? bc r3 is ???	
mov.w @(loc_8C0D3024,pc),r3 ; r3 set to 0x140
mov.b @(0x01,r2),r0 	
add r14,r3 ; r3 ??? bc r14 is ???	
mov.b @r3,r3
cmp/eq r3,r0
bf loc_8C0D2FF8
mov.w @(loc_8C0D3026,pc),r0 ; r0 set to 0x12c
bra loc_8C0D3006
mov.b r13,@(r0,r14) 	

#align4
loc_8C0D2FF8:
#data 0x64E34C0b
#data 0x4011600e
#data 0xB00589Ee
#data 0x64E3


loc_8C0D3006:
lds.l @r15+,pr 	
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D3010:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D3026,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	

loc_8C0D301C:
mov.l @(loc_8C0D3030,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0D3022:
#data 0x0150

loc_8C0D3024:
#data 0x0140

loc_8C0D3026:
#data 0x012c

#align4
loc_8C0D3028:
#data bank03.loc_8c034C38

loc_8C0D302C:
#data bank03.loc_8c034D8c

loc_8C0D3030:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0xE600D34e
#data 0x2F501F41
#data 0x430BE503
#data 0x20086463
#data 0x64038D0a
#data 0xE026D34a
#data 0x52F11434
#data 0x14269387
#data 0xE0200435
#data 0x042462F0
#data 0x4F267F08
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0D3068:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D3168,pc),r3 ; r3 set to 0xCc
mov r14,r4
mov.l @(loc_8C0D317C,pc),r2 ; r2 set to 0x8C28C69c
add r14,r3 ; r3 ??? bc r14 is ???	
mov.l @(loc_8C0D3180,pc),r1 ; r1 set to 0x8C15CBE4
mov.l r3,@r2 ; r2 ??? bc r3 is ???	
mov.b @(0x04,r14),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0D3084:
mov 0x20,r0 ; r0 set to 0x20
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(loc_8C0D3184,pc),r0 ; r0 set to 0x8C15CBF4
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

loc_8C0D3098:
mov.l r14,@-r15
mov r4,r14
mov.l r8,@-r15
mov.w @(loc_8C0D316A,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0D3188,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0D316A,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r14),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D316C,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0D316E,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D318C,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r14),r1
mov 0x00,r2 ; r2 set to 0x00
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r2,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0D316E,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8C0D3152
mov.w @(loc_8C0D3170,pc),r0 ; r0 set to 0x130
mov 0x34,r8 ; r8 set to 0x34
mov.w @(r0,r14),r3
tst r3,r3
bt/s loc_8C0D3134
add r14,r8 ; r8 ??? bc r14 is ???	
mov.l @(loc_8C0D3190,pc),r1 ; r1 set to 0x420C0000
lds r1,fpul 	
bra loc_8C0D313a
fsts fpul,fr3

loc_8C0D3134:
mov.l @(loc_8C0D3194,pc),r2 ; r2 set to 0xC20C0000
lds r2,fpul 	
fsts fpul,fr3

loc_8C0D313A:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(loc_8C0D3198,pc),r1 ; r1 set to 0x42789249, r1 set to 0x42789249
fadd fr3,fr2
mov.w @(loc_8C0D3172,pc),r3 ; r3 set to 0x1C00, r3 set to 0x1C00
lds r1,fpul 	
fmov.s fr2,@r8
fmov.s @(r0,r14),fr2
fsts fpul,fr3
fadd fr3,fr2
bra loc_8C0D31Bc
fmov.s fr2,@(r0,r14) 	

loc_8C0D3152:
mov.w @(loc_8C0D3170,pc),r0 ; r0 set to 0x130
mov 0x34,r8 ; r8 set to 0x34
mov.w @(r0,r14),r3
tst r3,r3
bt/s loc_8C0D31A0
add r14,r8 ; r8 ??? bc r14 is ???	
mov.l @(loc_8C0D319C,pc),r1 ; r1 set to 0x42700000
lds r1,fpul 	
bra loc_8C0D31A6
fsts fpul,fr3
#data 0x1602

loc_8C0D3168:
#data 0x00Cc

loc_8C0D316A:
#data 0x00Dc

loc_8C0D316C:
#data 0x012c

loc_8C0D316E:
#data 0x01A3

loc_8C0D3170:
#data 0x0130

loc_8C0D3172:
#data 0x1C00

#align4
loc_8C0D3174:
#data bank04.loc_8c044F12

loc_8C0D3178:
#data loc_8c0d3068

loc_8C0D317C:
#data 0x8C28C69c

#align4
loc_8C0D3180:
#data 0x8c15CBE4

loc_8C0D3184:
#data 0x8c15CBF4

loc_8C0D3188:
#data bank12.loc_8c129560

loc_8C0D318C:
#data bank12.loc_8c1294C8

loc_8C0D3190:
#data 0x420C0000

#align4
loc_8C0D3194:
#data 0xC20C0000

#align4
loc_8C0D3198:
#data 0x42789249

#align4
loc_8C0D319C:
#data 0x42700000


loc_8C0D31A0:
mov.l @(loc_8C0D32D8,pc),r2 ; r2 set to 0xC2700000
lds r2,fpul 	
fsts fpul,fr3

loc_8C0D31A6:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(loc_8C0D32DC,pc),r1 ; r1 set to 0x42452492, r1 set to 0x42452492
fadd fr3,fr2
mov.w @(loc_8C0D32CA,pc),r3 ; r3 set to 0x2400, r3 set to 0x2400
lds r1,fpul 	
fmov.s fr2,@r8
fmov.s @(r0,r14),fr2
fsts fpul,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	

loc_8C0D31BC:
mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48, r0 set to 0x48
mov.l r3,@(r0,r14) 	
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1B, r5 set to 0x1b
mov.l @(loc_8C0D32E0,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38, r3 set to 0x8C034C38
mov 0x09,r6 ; r6 set to 0x09, r6 set to 0x09, r6 set to 0x09
jsr @r3
mov r14,r4
mov.l @(0x18,r14),r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
mov r14,r4
mov.w @(loc_8C0D32CC,pc),r0 ; r0 set to 0x158, r0 set to 0x158, r0 set to 0x158
mov.l @(loc_8C0D32E4,pc),r3 ; r3 set to 0x8C28C69C, r3 set to 0x8C28C69C, r3 set to 0x8C28C69c
mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???, r0 ??? bc r1 is ???, r0 ??? bc r1 is ???	
mov.l @r3,r2
mov.w r0,@r2
mova @(loc_8C0D32E8,pc),r0  ; r0 set to 0x8C0D32E8, r0 set to 0x8C0D32E8, r0 set to 0x8C0D32E8
fmov.s @r0,fr3 ; r3 ??, r3 ??, r3 ??	
mov.w @(loc_8C0D32CE,pc),r0 ; r0 set to 0x108, r0 set to 0x108, r0 set to 0x108
fmov.s fr3,@(r0,r14) 	
lds.l @r15+,pr 	
mov.l @r15+,r8
bra loc_8C0D32B4
mov.l @r15+,r14

loc_8C0D31E8:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D32D0,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0D32EC,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0D32D0,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r14),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D32D2,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0D32D4,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D32F0,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r14),r1
mov 0x00,r2 ; r2 set to 0x00
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r2,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0D32D6,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt loc_8C0D3274
mova @(loc_8C0D32F4,pc),r0  ; r0 set to 0x8C0D32F4
bra loc_8C0D3278
fmov.s @r0,fr3

loc_8C0D3274:
mova @(loc_8C0D32F8,pc),r0  ; r0 init to 0x8C0D32F8
fmov.s @r0,fr3

loc_8C0D3278:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fldi0 fr4
fmov.s fr3,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mova @(loc_8C0D32FC,pc),r0  ; r0 set to 0x8C0D32FC, r0 set to 0x8C0D32Fc
fmov.s @r0,fr3
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
mov.l @(loc_8C0D32E0,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
fmov.s fr3,@(r0,r14) 	
mov 0x0A,r6 ; r6 set to 0x0A, r6 set to 0x0a
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0D337a
mov.l @r15+,r14

loc_8C0D32A0:
mov 0x20,r0 ; r0 set to 0x20
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(loc_8C0D3300,pc),r0 ; r0 set to 0x8C15CBFc
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

loc_8C0D32B4:
mov.l @(loc_8C0D32E4,pc),r2 ; r2 set to 0x8C28C69c
mov.w @(loc_8C0D32CC,pc),r0 ; r0 set to 0x158
mov.l r8,@-r15
mov.l @r2,r3
mov.w @r3,r1
mov.l @(0x18,r4),r3
mov.w @(r0,r3),r0 ; r0 ??? bc r3 is ???	
cmp/eq r0,r1
bt loc_8C0D3304
bra loc_8C0D33E8
mov.l @r15+,r8

loc_8C0D32CA:
#data 0x2400

loc_8C0D32CC:
#data 0x0158

loc_8C0D32CE:
#data 0x0108

loc_8C0D32D0:
#data 0x00Dc

loc_8C0D32D2:
#data 0x012c

loc_8C0D32D4:
#data 0x01A3

loc_8C0D32D6:
#data 0x0130

#align4
loc_8C0D32D8:
#data 0xC2700000

#align4
loc_8C0D32DC:
#data 0x42452492

#align4
loc_8C0D32E0:
#data bank03.loc_8c034C38

loc_8C0D32E4:
#data 0x8C28C69c

#align4
loc_8C0D32E8:
#data 0x3F000000

#align4
loc_8C0D32EC:
#data bank12.loc_8c129560

loc_8C0D32F0:
#data bank12.loc_8c1294C8

loc_8C0D32F4:
#data 0x3FD55555

#align4
loc_8C0D32F8:
#data 0xBFD55555

#align4
loc_8C0D32FC:
#data 0xBF092492

#align4
loc_8C0D3300:
#data 0x8c15CBFc


loc_8C0D3304:
mov.l @(0x18,r4),r3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0D33FA,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r4),r3
tst r3,r3
bt loc_8C0D3346
mov.w @(loc_8C0D33FC,pc),r0 ; r0 set to 0x130
mov 0x34,r8 ; r8 set to 0x34
mov.w @(r0,r4),r3
tst r3,r3
bt/s loc_8C0D3330
add r4,r8 ; r8 ??? bc r4 is ???	
mov.l @(loc_8C0D3404,pc),r1 ; r1 set to 0x4226AAAa
lds r1,fpul 	
bra loc_8C0D3336
fsts fpul,fr3

loc_8C0D3330:
mov.l @(loc_8C0D3408,pc),r2 ; r2 set to 0xC226AAAa
lds r2,fpul 	
fsts fpul,fr3

loc_8C0D3336:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(loc_8C0D340C,pc),r1 ; r1 set to 0x42789249, r1 set to 0x42789249
fadd fr3,fr2
lds r1,fpul 	
fmov.s fr2,@r8
bra loc_8C0D336e
fsts fpul,fr3

loc_8C0D3346:
mov.w @(loc_8C0D33FC,pc),r0 ; r0 set to 0x130
mov 0x34,r8 ; r8 set to 0x34
mov.w @(r0,r4),r3
tst r3,r3
bt/s loc_8C0D335a
add r4,r8 ; r8 ??? bc r4 is ???	
mov.l @(loc_8C0D3410,pc),r1 ; r1 set to 0x42700000
lds r1,fpul 	
bra loc_8C0D3360
fsts fpul,fr3

loc_8C0D335A:
mov.l @(loc_8C0D3414,pc),r2 ; r2 set to 0xC2700000
lds r2,fpul 	
fsts fpul,fr3

loc_8C0D3360:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(loc_8C0D3418,pc),r1 ; r1 set to 0x42452492, r1 set to 0x42452492
fadd fr3,fr2
lds r1,fpul 	
fsts fpul,fr3
fmov.s fr2,@r8

loc_8C0D336E:
fmov.s @(r0,r4),fr2
mov.l @(loc_8C0D341C,pc),r3 ; r3 set to 0x8C034D8C, r3 set to 0x8C034D8C, r3 set to 0x8C034D8c
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
jmp @r3
mov.l @r15+,r8

loc_8C0D337A:
#data 0x2FE6
#data 0xE15C6E43
#data 0xE03431Ec
#data 0xF3184F22
#data 0xF2E6E168
#data 0x54E631Ec
#data 0xFE27F230
#data 0xF318E05c
#data 0xF2E6E160
#data 0xF23031Ec
#data 0xE038FE27
#data 0xE16CF318
#data 0x31ECF2E6
#data 0xFE27F230
#data 0xF318E060
#data 0xF230F2E6
#data 0x9020FE27
#data 0xE038F346
#data 0xF235F2E6
#data 0x901A8903
#data 0xE038F346
#data 0xFE37

loc_8C0D33CE:
#data 0xD313
#data 0x64E3430b
#data 0x4011600e
#data 0x4F268903
#data 0xA00364E3
#data 0x6EF6

loc_8C0D33E2:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0D33E8:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D3400,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	

loc_8C0D33F4:
mov.l @(loc_8C0D3420,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0D33FA:
#data 0x01A3

loc_8C0D33FC:
#data 0x0130
#data 0x041c

loc_8C0D3400:
#data 0x012c
#data 0x0000

#align4
loc_8C0D3404:
#data 0x4226AAAa

#align4
loc_8C0D3408:
#data 0xC226AAAa

#align4
loc_8C0D340C:
#data 0x42789249

#align4
loc_8C0D3410:
#data 0x42700000

#align4
loc_8C0D3414:
#data 0xC2700000

#align4
loc_8C0D3418:
#data 0x42452492

#align4
loc_8C0D341C:
#data bank03.loc_8c034D8c

loc_8C0D3420:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0xE600D352
#data 0x2F501F41
#data 0x430BE503
#data 0x20086463
#data 0x64038D0a
#data 0xE026D34e
#data 0x52F11434
#data 0x1426938e
#data 0xE0200435
#data 0x042462F0
#data 0x4F267F08
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0D3458:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D3566,pc),r3 ; r3 set to 0xCc
mov r14,r4
mov.l @(loc_8C0D357C,pc),r2 ; r2 set to 0x8C28C6A0
add r14,r3 ; r3 ??? bc r14 is ???	
mov.l @(loc_8C0D3580,pc),r1 ; r1 set to 0x8C15CC04
mov.l r3,@r2 ; r2 ??? bc r3 is ???	
mov.b @(0x04,r14),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0D3474:
mov.w @(loc_8C0D3568,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0D3584,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D3568,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D356A,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0D356C,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D3588,pc),r3 ; r3 set to 0x8C1294C8
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
mov.l @(loc_8C0D357C,pc),r2 ; r2 set to 0x8C28C6A0
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov.l @(0x18,r4),r1
mov.w @(loc_8C0D356E,pc),r0 ; r0 set to 0x158
lds.l @r15+,pr 	
mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???	
mov.l @r2,r3
rts 	
mov.w r0,@r3
;-------------------------------------------------------------------------------

loc_8C0D34FE:
mov 0x20,r0 ; r0 set to 0x20
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(loc_8C0D358C,pc),r0 ; r0 set to 0x8C15CC14
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

loc_8C0D3512:
#data 0xD21a
#data 0x6E432FE6
#data 0x4F229029
#data 0x61316322
#data 0x003D53E6
#data 0x8B0E3100
#data 0xE51B9022
#data 0xE60757E6
#data 0x077CD317
#data 0x430B77Ff
#data 0x901964E3
#data 0x032C52E6
#data 0x431173Ff
#data 0x8903

loc_8C0D3546:
#data 0x4F26
#data 0xA04C64E3
#data 0x6EF6

loc_8C0D354E:
#data 0x53E6
#data 0xF336E034
#data 0xE038FE37
#data 0xF33653E6
#data 0x4F26FE37
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x1603

loc_8C0D3566:
#data 0x00Cc

loc_8C0D3568:
#data 0x00Dc

loc_8C0D356A:
#data 0x012c

loc_8C0D356C:
#data 0x01A3

loc_8C0D356E:
#data 0x0158
#data 0x0000014b

#align4
loc_8C0D3574:
#data bank04.loc_8c044F12

loc_8C0D3578:
#data loc_8c0d3458

loc_8C0D357C:
#data 0x8C28C6A0

#align4
loc_8C0D3580:
#data 0x8c15CC04

loc_8C0D3584:
#data bank12.loc_8c129560

loc_8C0D3588:
#data bank12.loc_8c1294C8

loc_8C0D358C:
#data 0x8c15CC14

loc_8C0D3590:
#data bank03.loc_8c034CD6

loc_8C0D3594:
#data 0x2FE6D21a
#data 0x902D6E43
#data 0x63224F22
#data 0x53E66131
#data 0x3100003d
#data 0x90268B0e
#data 0x57E6E51b
#data 0xD314E608
#data 0x77FF077c
#data 0x64E3430b
#data 0x52E6901d
#data 0x73FF032c
#data 0x89034311

#align4
loc_8C0D35C8:
#data 0x64E34F26
#data 0x6EF6A00b

#align4
loc_8C0D35D0:
#data 0xE03453E6
#data 0xFE37F336
#data 0x53E6E038
#data 0xFE37F336
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D35E6:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D35FC,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	

loc_8C0D35F2:
mov.l @(loc_8C0D3608,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x014B0158

loc_8C0D35FC:
#data 0x012c
#data 0x0000
#data 0x8C28C6A0

#align4
loc_8C0D3604:
#data bank03.loc_8c034CD6

loc_8C0D3608:
#data bank04.loc_8c0450C0
#data 0x7FFC4F22
#data 0xE504D34e
#data 0xE6002F42
#data 0x6463430b
#data 0x8D072008
#data 0xD34B6403
#data 0x1434E026
#data 0x62F29389
#data 0x04351426
#data 0x4F267F04
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0D3638:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D3740,pc),r3 ; r3 set to 0xCc
mov r14,r4
mov.l @(loc_8C0D3754,pc),r2 ; r2 set to 0x8C28C6A4
add r14,r3 ; r3 ??? bc r14 is ???	
mov.l @(loc_8C0D3758,pc),r1 ; r1 set to 0x8C15CC1c
mov.l r3,@r2 ; r2 ??? bc r3 is ???	
mov.b @(0x04,r14),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0D3654:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D3742,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0D375C,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0D3742,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r14),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D3744,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0D3746,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D3760,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r14),r1
mov 0x07,r2 ; r2 set to 0x07
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov 0x1B,r5 ; r5 set to 0x1b
mov.b r2,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r14),r3
mov 0x0C,r6 ; r6 set to 0x0c
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
mov.l @(loc_8C0D3764,pc),r3 ; r3 set to 0x8C034C38
fmov.s fr3,@(r0,r14) 	
jsr @r3
mov r14,r4
mov.l @(0x18,r14),r1
mov.w @(loc_8C0D3748,pc),r0 ; r0 set to 0x158
mov.l @(loc_8C0D3754,pc),r3 ; r3 set to 0x8C28C6A4
mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???	
mov.l @r3,r2 ; r2 ??	
mov.w r0,@r2
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D36EE:
mov.l @(loc_8C0D3754,pc),r2 ; r2 set to 0x8C28C6A4
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D3748,pc),r0 ; r0 set to 0x158
sts.l pr,@-r15
mov.l @r2,r3
mov.w @r3,r1
mov.l @(0x18,r14),r3
mov.w @(r0,r3),r0 ; r0 ??? bc r3 is ???	
cmp/eq r0,r1
bt loc_8C0D370c
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0D3792
mov.l @r15+,r14

loc_8C0D370C:
mov.l @(loc_8C0D3768,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt loc_8C0D3728
mov.b @(0x04,r14),r0 	
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov 0x1E,r0 ; r0 set to 0x1e
mov.w r0,@(0x1C,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D3728:
mov.l @(0x18,r14),r3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x1604

loc_8C0D3740:
#data 0x00Cc

loc_8C0D3742:
#data 0x00Dc

loc_8C0D3744:
#data 0x012c

loc_8C0D3746:
#data 0x01A3

loc_8C0D3748:
#data 0x0158
#data 0x0000

#align4
loc_8C0D374C:
#data bank04.loc_8c044F12

loc_8C0D3750:
#data loc_8c0d3638

loc_8C0D3754:
#data 0x8C28C6A4

#align4
loc_8C0D3758:
#data 0x8c15CC1c

loc_8C0D375C:
#data bank12.loc_8c129560

loc_8C0D3760:
#data bank12.loc_8c1294C8

loc_8C0D3764:
#data bank03.loc_8c034C38

loc_8C0D3768:
#data bank03.loc_8c034D8c

loc_8C0D376C:
#data 0x70FF854e
#data 0x600F814e
#data 0x890A4015
#data 0x9013D10b
#data 0xF246415a
#data 0xF231F30d
#data 0xF146F427
#data 0xF125F28d
#data 0x8B01

loc_8C0D378E:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0D3792:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D37A6,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	

loc_8C0D379E:
mov.l @(loc_8C0D37AC,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x0108

loc_8C0D37A6:
#data 0x012c
#data 0x3C449BA6

#align4
loc_8C0D37AC:
#data bank04.loc_8c0450C0
#data 0x7FFC4F22
#data 0xE503D343
#data 0xE6002F42
#data 0x6463430b
#data 0x8D072008
#data 0xD3406403
#data 0x1434E026
#data 0x62F29375
#data 0x04351426
#data 0x4F267F04
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0D37DC:
mov r4,r3
mov.l @(loc_8C0D38CC,pc),r1 ; r1 set to 0x8C15CC30
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D37EE:
mov.w @(loc_8C0D38BC,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0D38D0,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D38BC,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D38BE,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0D38C0,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D38D4,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x00,r2 ; r2 set to 0x00
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov 0x1B,r5 ; r5 set to 0x1b
mov.b r2,@(r0,r4) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r4),r3
mov 0x0B,r6 ; r6 set to 0x0b
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
mov.l @(loc_8C0D38D8,pc),r3 ; r3 set to 0x8C034C38
fmov.s fr3,@(r0,r4) 	
jmp @r3
lds.l @r15+,pr 	

loc_8C0D3872:
mov.l r14,@-r15
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r4),r14
fmov.s @(r0,r14),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
mov 0x00,r3 ; r3 set to 0x00
fmov.s fr3,@(r0,r4) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r4) 	
mov.w @(loc_8C0D38C2,pc),r0 ; r0 set to 0x14b
mov.b @(r0,r14),r2
extu.b r2,r2
add 0xFF,r2
cmp/pz r2
bt loc_8C0D389a
bra loc_8C0D38A8
mov.l @r15+,r14

loc_8C0D389A:
mov.b @(r0,r14),r7
mov 0x1B,r5 ; r5 set to 0x1b
mov.l @(loc_8C0D38DC,pc),r3 ; r3 set to 0x8C034CD6
mov 0x0B,r6 ; r6 set to 0x0b
add 0xFF,r7
jmp @r3
mov.l @r15+,r14

loc_8C0D38A8:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D38BE,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	

loc_8C0D38B4:
mov.l @(loc_8C0D38E0,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x1605

loc_8C0D38BC:
#data 0x00Dc

loc_8C0D38BE:
#data 0x012c

loc_8C0D38C0:
#data 0x01A3

loc_8C0D38C2:
#data 0x014b

#align4
loc_8C0D38C4:
#data bank04.loc_8c044F12

loc_8C0D38C8:
#data loc_8c0d37Dc

loc_8C0D38CC:
#data 0x8c15CC30

loc_8C0D38D0:
#data bank12.loc_8c129560

loc_8C0D38D4:
#data bank12.loc_8c1294C8

loc_8C0D38D8:
#data bank03.loc_8c034C38

loc_8C0D38DC:
#data bank03.loc_8c034CD6

loc_8C0D38E0:
#data bank04.loc_8c0450C0
#data 0x7FFC4F22
#data 0xE503D350
#data 0xE6002F42
#data 0x6463430b
#data 0x8D072008
#data 0xD34D6403
#data 0x1434E026
#data 0x62F2938c
#data 0x04351426
#data 0x4F267F04
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0D3910:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D3A1E,pc),r3 ; r3 set to 0xCc
mov r14,r4
mov.l @(loc_8C0D3A34,pc),r2 ; r2 set to 0x8C28C6A8
add r14,r3 ; r3 ??? bc r14 is ???	
mov.l @(loc_8C0D3A38,pc),r1 ; r1 set to 0x8C15CC40
mov.l r3,@r2 ; r2 ??? bc r3 is ???	
mov.b @(0x04,r14),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0D392C:
mov.w @(loc_8C0D3A20,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0D3A3C,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D3A20,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D3A22,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0D3A24,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D3A40,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x24,r0 ; r0 set to 0x24
mov 0x00,r2 ; r2 set to 0x00
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r4) 	
mov 0x07,r3 ; r3 set to 0x07
mov.w @(loc_8C0D3A22,pc),r0 ; r0 set to 0x12c
mov.b r2,@(r0,r4) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r4) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r4),r2 ; r2 ??? bc r4 is ???	
fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???	
mov.l @(loc_8C0D3A34,pc),r2 ; r2 set to 0x8C28C6A8
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov.l @(0x18,r4),r1
mov.w @(loc_8C0D3A26,pc),r0 ; r0 set to 0x158
lds.l @r15+,pr 	
mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???	
mov.l @r2,r3
rts 	
mov.w r0,@r3
;-------------------------------------------------------------------------------

loc_8C0D39C0:
mov.l @(loc_8C0D3A34,pc),r2 ; r2 set to 0x8C28C6A8
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D3A26,pc),r0 ; r0 set to 0x158
sts.l pr,@-r15
mov.l @r2,r3
mov.w @r3,r1
mov.l @(0x18,r14),r3
mov.w @(r0,r3),r0 ; r0 ??? bc r3 is ???	
cmp/eq r0,r1
bt loc_8C0D39De
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0D3B80
mov.l @r15+,r14

loc_8C0D39DE:
#data 0x53E6
#data 0x9121E034
#data 0xFE37F336
#data 0x53E6E038
#data 0xFE37F336
#data 0x001C50E6
#data 0x8B0E8801
#data 0xE20084E4
#data 0x7001E51b
#data 0xE60D80E4
#data 0x53E69010
#data 0xD30E0324
#data 0x64E3430b
#data 0xE2019007
#data 0x0E24

loc_8C0D3A16:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x1601

loc_8C0D3A1E:
#data 0x00Cc

loc_8C0D3A20:
#data 0x00Dc

loc_8C0D3A22:
#data 0x012c

loc_8C0D3A24:
#data 0x01A3

loc_8C0D3A26:
#data 0x0158
#data 0x00000140

#align4
loc_8C0D3A2C:
#data bank04.loc_8c044F12

loc_8C0D3A30:
#data loc_8c0d3910

loc_8C0D3A34:
#data 0x8C28C6A8

#align4
loc_8C0D3A38:
#data 0x8c15CC40

loc_8C0D3A3C:
#data bank12.loc_8c129560

loc_8C0D3A40:
#data bank12.loc_8c1294C8

loc_8C0D3A44:
#data bank03.loc_8c034C38


loc_8C0D3A48:
mov.l @(loc_8C0D3B74,pc),r2 ; r2 set to 0x8C28C6A8
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D3B6C,pc),r0 ; r0 set to 0x158
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @r2,r3
mov.w @r3,r1
mov.l @(0x18,r14),r3
mov.w @(r0,r3),r0 ; r0 ??? bc r3 is ???	
cmp/eq r0,r1
bt loc_8C0D3A6a
lds.l @r15+,pr 	
mov r14,r4
mov.l @r15+,r13
bra loc_8C0D3B80
mov.l @r15+,r14

loc_8C0D3A6A:
#data 0xD343
#data 0x430BED00
#data 0x600E64E3
#data 0x89014011
#data 0x0ED49079

#align4
loc_8C0D3A7C:
#data 0x9177E024
#data 0xE0340ED4
#data 0xF33653E6
#data 0xE038FE37
#data 0xF33653E6
#data 0x50E6FE37
#data 0x8801001c
#data 0x84E48B0d
#data 0xE60EE51b
#data 0x80E47001
#data 0x53E69064
#data 0xD33403D4
#data 0x64E3430b
#data 0xE201905d
#data 0x0E24

loc_8C0D3AB6:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D3ABE:
mov.l @(loc_8C0D3B74,pc),r2 ; r2 set to 0x8C28C6A8
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D3B6C,pc),r0 ; r0 set to 0x158
sts.l pr,@-r15
mov.l @r2,r3
mov.w @r3,r1
mov.l @(0x18,r14),r3
mov.w @(r0,r3),r0 ; r0 ??? bc r3 is ???	
cmp/eq r0,r1
bt loc_8C0D3ADc
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0D3B80
mov.l @r15+,r14

#align4
loc_8C0D3ADC:
#data 0x430BD326
#data 0x600E64E3
#data 0x89024011
#data 0xE3009041
#data 0x0E34

loc_8C0D3AEE:
#data 0x52E6
#data 0x913DE034
#data 0xFE37F326
#data 0x53E6E038
#data 0xFE37F336
#data 0x001C50E6
#data 0x8B0E8801
#data 0xE20084E4
#data 0x7001E51b
#data 0xE60F80E4
#data 0x53E6902c
#data 0xD3180324
#data 0x64E3430b
#data 0xE2019025
#data 0x0E24

loc_8C0D3B26:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0D3B2C:
#data 0x2FE6D211
#data 0x901B6E43
#data 0x63224F22
#data 0x53E66131
#data 0x3100003d
#data 0x53E68B0d
#data 0xF336E034
#data 0xE038FE37
#data 0xF33653E6
#data 0xFE37D309
#data 0x64E3430b
#data 0x4011600e
#data 0x8903

loc_8C0D3B5E:
#data 0x4F26
#data 0xA00D64E3
#data 0x6EF6

loc_8C0D3B66:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0D3B6C:
#data 0x0158
#data 0x012c
#data 0x00000140

#align4
loc_8C0D3B74:
#data 0x8C28C6A8

#align4
loc_8C0D3B78:
#data bank03.loc_8c034D8c

loc_8C0D3B7C:
#data bank03.loc_8c034C38


loc_8C0D3B80:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D3B92,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	

loc_8C0D3B8C:
mov.l @(loc_8C0D3B94,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0D3B92:
#data 0x012c

#align4
loc_8C0D3B94:
#data bank04.loc_8c0450C0
#data 0x7FFC4F22
#data 0xE503D34d
#data 0xE6002F42
#data 0x6463430b
#data 0x8D072008
#data 0xD34A6403
#data 0x1434E026
#data 0x62F29387
#data 0x04351426
#data 0x4F267F04
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0D3BC4:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D3CC8,pc),r3 ; r3 set to 0xCc
mov r14,r4
mov.l @(loc_8C0D3CDC,pc),r2 ; r2 set to 0x8C28C6Ac
add r14,r3 ; r3 ??? bc r14 is ???	
mov.l @(loc_8C0D3CE0,pc),r1 ; r1 set to 0x8C15CC5c
mov.l r3,@r2 ; r2 ??? bc r3 is ???	
mov.b @(0x04,r14),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0D3BE0:
mov.l r14,@-r15
mov r4,r14
mov.l r8,@-r15
mov.w @(loc_8C0D3CCA,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0D3CE4,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0D3CCA,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r14),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D3CCC,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0D3CCE,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D3CE8,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r14),r1
mov 0x07,r2 ; r2 set to 0x07
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov 0x34,r8 ; r8 set to 0x34
mov.b r2,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0D3CD0,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt/s loc_8C0D3C74
add r14,r8 ; r8 ??? bc r14 is ???	
mov.l @(loc_8C0D3CEC,pc),r1 ; r1 set to 0x42820000
lds r1,fpul 	
bra loc_8C0D3C7a
fsts fpul,fr3

loc_8C0D3C74:
mov.l @(loc_8C0D3CF0,pc),r2 ; r2 set to 0xC2820000
lds r2,fpul 	
fsts fpul,fr3

loc_8C0D3C7A:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(loc_8C0D3CF4,pc),r1 ; r1 set to 0x43676DB6, r1 set to 0x43676DB6
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
fadd fr3,fr2
fldi0 fr4
lds r1,fpul 	
mov 0x12,r6 ; r6 set to 0x12, r6 set to 0x12
mov.l @(loc_8C0D3D00,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
fmov.s fr2,@r8
fmov.s @(r0,r14),fr2
fsts fpul,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fmov.s fr4,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mova @(loc_8C0D3CF8,pc),r0  ; r0 set to 0x8C0D3CF8, r0 set to 0x8C0D3CF8
fmov.s @r0,fr2
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0D3CFC,pc),r0  ; r0 set to 0x8C0D3CFC, r0 set to 0x8C0D3CFc
fmov.s @r0,fr2
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr2,@(r0,r14) 	
jsr @r3
mov r14,r4
mov.w @(loc_8C0D3CD2,pc),r0 ; r0 set to 0x158, r0 set to 0x158
mov.l @(0x18,r14),r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
mov.l @(loc_8C0D3CDC,pc),r3 ; r3 set to 0x8C28C6AC, r3 set to 0x8C28C6Ac
mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???, r0 ??? bc r1 is ???	
mov.l @r3,r2
mov.w r0,@r2
lds.l @r15+,pr 	
mov.l @r15+,r8
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x1607

loc_8C0D3CC8:
#data 0x00Cc

loc_8C0D3CCA:
#data 0x00Dc

loc_8C0D3CCC:
#data 0x012c

loc_8C0D3CCE:
#data 0x01A3

loc_8C0D3CD0:
#data 0x0130

loc_8C0D3CD2:
#data 0x0158

#align4
loc_8C0D3CD4:
#data bank04.loc_8c044F12

loc_8C0D3CD8:
#data loc_8c0d3BC4

loc_8C0D3CDC:
#data 0x8C28C6Ac

#align4
loc_8C0D3CE0:
#data 0x8c15CC5c

loc_8C0D3CE4:
#data bank12.loc_8c129560

loc_8C0D3CE8:
#data bank12.loc_8c1294C8

loc_8C0D3CEC:
#data 0x42820000

#align4
loc_8C0D3CF0:
#data 0xC2820000

#align4
loc_8C0D3CF4:
#data 0x43676DB6

#align4
loc_8C0D3CF8:
#data 0x40092492

#align4
loc_8C0D3CFC:
#data 0xBF092492

#align4
loc_8C0D3D00:
#data bank03.loc_8c034C38


loc_8C0D3D04:
mov.w @(loc_8C0D3D88,pc),r0 ; r0 set to 0x19f
mov.l r14,@-r15
mov r4,r14
mov.l r8,@-r15
sts.l pr,@-r15
mov.b @(r0,r14),r3
tst r3,r3
bf loc_8C0D3D64
mov 0x60,r1 ; r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @r1,fr3
fmov.s @(r0,r14),fr2
mov 0x6C,r1 ; r1 set to 0x6c
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r14),r3
mov r0,r8 ; r8 set to 0x34
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0D3D8A,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt/s loc_8C0D3D4c
add r14,r8 ; r8 ??? bc r14 is ???	
mov.l @(loc_8C0D3D90,pc),r1 ; r1 set to 0x42820000
lds r1,fpul 	
bra loc_8C0D3D52
fsts fpul,fr3

#align4
loc_8C0D3D4C:
#data 0x425AD211
#data 0xF30d

loc_8C0D3D52:
#data 0xF288
#data 0xF230D310
#data 0x430BF82a
#data 0x600E64E3
#data 0x89044011


loc_8C0D3D64:
lds.l @r15+,pr 	
mov r14,r4
mov.l @r15+,r8
bra loc_8C0D3D76
mov.l @r15+,r14

loc_8C0D3D6E:
#data 0x4F26
#data 0x000B68F6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D3D76:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D3D8C,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	

loc_8C0D3D82:
mov.l @(loc_8C0D3D9C,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0D3D88:
#data 0x019f

loc_8C0D3D8A:
#data 0x0130

loc_8C0D3D8C:
#data 0x012c
#data 0x0000

#align4
loc_8C0D3D90:
#data 0x42820000
#data 0xC2820000

#align4
loc_8C0D3D98:
#data bank03.loc_8c034D8c

loc_8C0D3D9C:
#data bank04.loc_8c0450C0
#data 0x7FFC4F22
#data 0xE503D34b
#data 0xE6002F42
#data 0x6463430b
#data 0x8D072008
#data 0xD3486403
#data 0x1434E026
#data 0x62F29385
#data 0x04351426
#data 0x4F267F04
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0D3DCC:
mov r4,r3
mov.l @(loc_8C0D3EDC,pc),r1 ; r1 set to 0x8C15CC6c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D3DDE:
mov.w @(loc_8C0D3ECC,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0D3EE0,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D3ECC,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D3ECE,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0D3ED0,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D3EE4,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x00,r5 ; r5 set to 0x00
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r5,@(r0,r4) 	
mov.w @(loc_8C0D3ED2,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r2
tst r2,r2
bt/s loc_8C0D3E58
mov.l @(0x18,r4),r3
mova @(loc_8C0D3EE8,pc),r0  ; r0 set to 0x8C0D3EE8
bra loc_8C0D3E5c
fmov.s @r0,fr3

loc_8C0D3E58:
mova @(loc_8C0D3EEC,pc),r0  ; r0 init to 0x8C0D3EEc
fmov.s @r0,fr3

loc_8C0D3E5C:
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fldi0 fr4
fmov.s @(r0,r3),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mova @(loc_8C0D3EF0,pc),r0  ; r0 set to 0x8C0D3EF0, r0 set to 0x8C0D3EF0
fmov.s @r0,fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr2
mov.l @(loc_8C0D3EFC,pc),r3 ; r3 set to 0x8C26A524, r3 set to 0x8C26A524
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mova @(loc_8C0D3EF4,pc),r0  ; r0 set to 0x8C0D3EF4, r0 set to 0x8C0D3EF4
fmov.s @r0,fr2
mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
fmov.s fr2,@(r0,r4) 	
mova @(loc_8C0D3EF8,pc),r0  ; r0 set to 0x8C0D3EF8, r0 set to 0x8C0D3EF8
fmov.s @r0,fr2
mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
fmov.s fr2,@(r0,r4) 	
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @r3,fr1
fmov.s @(r0,r4),fr2
mova @(loc_8C0D3F00,pc),r0  ; r0 set to 0x8C0D3F00, r0 set to 0x8C0D3F00
fsub fr2,fr1
fmov.s @r0,fr2
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fdiv fr2,fr1
fmov.s fr1,@(r0,r4) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r4) 	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr4,@(r0,r4) 	
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr4,@(r0,r4) 	
mov r5,r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???	
nop 	
mov.w r0,@(0x1C,r4) 	
mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48
mov.l @(loc_8C0D3F04,pc),r2 ; r2 set to 0x8C034C38, r2 set to 0x8C034C38
mov 0x10,r6 ; r6 set to 0x10, r6 set to 0x10
mov.l r5,@(r0,r4) 	
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
jmp @r2
lds.l @r15+,pr 	

loc_8C0D3EB8:
mov r4,r3
mov.l @(loc_8C0D3F08,pc),r1 ; r1 set to 0x8C15CC7c
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x1608

loc_8C0D3ECC:
#data 0x00Dc

loc_8C0D3ECE:
#data 0x012c

loc_8C0D3ED0:
#data 0x01A3

loc_8C0D3ED2:
#data 0x0130

#align4
loc_8C0D3ED4:
#data bank04.loc_8c044F12

loc_8C0D3ED8:
#data loc_8c0d3DCc

loc_8C0D3EDC:
#data 0x8c15CC6c

loc_8C0D3EE0:
#data bank12.loc_8c129560

loc_8C0D3EE4:
#data bank12.loc_8c1294C8

loc_8C0D3EE8:
#data 0x41D55555

#align4
loc_8C0D3EEC:
#data 0xC1D55555

#align4
loc_8C0D3EF0:
#data 0x432B6DB6

#align4
loc_8C0D3EF4:
#data 0x3D4CCCCd

#align4
loc_8C0D3EF8:
#data 0x3DCCCCCd

#align4
loc_8C0D3EFC:
#data 0x8C26A524

#align4
loc_8C0D3F00:
#data 0x41800000

#align4
loc_8C0D3F04:
#data bank03.loc_8c034C38

loc_8C0D3F08:
#data 0x8c15CC7c


loc_8C0D3F0C:
mov.l r14,@-r15
mov 0x5C,r1 ; r1 set to 0x5c
mov r4,r14
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34
mov.w @(loc_8C0D3FFE,pc),r3 ; r3 set to 0xC0
mov.l r13,@-r15
sts.l pr,@-r15
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
mov 0x68,r1 ; r1 set to 0x68
fmov.s @(r0,r14),fr2
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @r1,fr3
fmov.s @(r0,r14),fr2
mov.l @(loc_8C0D4008,pc),r1 ; r1 set to 0x3D03126f
fadd fr3,fr2
lds r1,fpul 	
fmov.s fr2,@(r0,r14) 	
mov 0x48,r0 ; r0 set to 0x48
mov.l @(r0,r14),r2
fsts fpul,fr3
add r3,r2
mov.l r2,@(r0,r14) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r14),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov.w @(0x1C,r14),r0 	
mov r0,r2 ; r2 set to 0x50
lds r2,fpul 	
mova @(loc_8C0D400C,pc),r0  ; r0 set to 0x8C0D400c
fmov.s @r0,fr1 ; r1 ??	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r14),fr0 ; r0 ??? bc r14 is ???	
mov 0x10,r2 ; r2 set to 0x10
float fpul,fr2
fmov fr2,fr4
fmul fr1,fr4
fmov fr4,fr2 ; r2 ??? bc r4 is ???	
fmul fr2,fr4
fadd fr4,fr0
fmov.s fr0,@(r0,r14) 	
mov.w @(0x1C,r14),r0 	
add 0x01,r0
mov.w r0,@(0x1C,r14) 	
mov.w @(0x1C,r14),r0 	
cmp/gt r2,r0
bf loc_8C0D3FD4
mov.b @(0x05,r14),r0 	
mov 0x00,r1 ; r1 set to 0x00
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mova @(loc_8C0D4010,pc),r0  ; r0 set to 0x8C0D4010
fmov.s @r0,fr4
mov 0x50,r0 ; r0 set to 0x50
fmov.s fr4,@(r0,r14) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s fr4,@(r0,r14) 	
mov 0x48,r0 ; r0 set to 0x48
mov.l r1,@(r0,r14) 	
mov.w @(loc_8C0D4000,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt loc_8C0D3F9c
mov.l @(loc_8C0D4014,pc),r3 ; r3 set to 0x8C26A524
mova @(loc_8C0D4018,pc),r0  ; r0 set to 0x8C0D4018
fmov.s @r3,fr2
bra loc_8C0D3FA4
fmov.s @r0,fr0

#align4
loc_8C0D3F9C:
#data 0xC71FD31d
#data 0xF238F008

#align4
loc_8C0D3FA4:
#data 0xE034F200
#data 0xE51BDD1d
#data 0xE611D31e
#data 0xC71CFE27
#data 0x9024F308
#data 0xE038F2D6
#data 0xFE27F230
#data 0x64E3430b
#data 0xE52DD219
#data 0x64E3420b
#data 0x80D5E003
#data 0x80D6E001


loc_8C0D3FD4:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D3FDC:
sts.l pr,@-r15
mov.l @(loc_8C0D4030,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
nop 	
lds.l @r15+,pr 	
exts.b r0,r0
rts 	
cmp/pz r0
;-------------------------------------------------------------------------------

loc_8C0D3FEC:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D4004,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	

loc_8C0D3FF8:
mov.l @(loc_8C0D4034,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0D3FFE:
#data 0x00C0

loc_8C0D4000:
#data 0x0130
#data 0x00A8

loc_8C0D4004:
#data 0x012c
#data 0x0000

#align4
loc_8C0D4008:
#data 0x3D03126f

#align4
loc_8C0D400C:
#data 0x3E23D70a

#align4
loc_8C0D4010:
#data 0x3FC00000

#align4
loc_8C0D4014:
#data 0x8C26A524

#align4
loc_8C0D4018:
#data 0x44160000
#data 0xC4160000
#data 0x8C26A518
#data 0x43B40000

#align4
loc_8C0D4028:
#data bank03.loc_8c034C38

loc_8C0D402C:
#data bank04.loc_8c042008

loc_8C0D4030:
#data bank03.loc_8c034D8c

loc_8C0D4034:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0xE600D354
#data 0x2F501F41
#data 0x430BE503
#data 0x20086463
#data 0x64038D15
#data 0xE020D350
#data 0x52F11434
#data 0x63F01426
#data 0x908E0434
#data 0x032D5246
#data 0x0435928c
#data 0x0425E026
#data 0x53469089
#data 0x9087023d
#data 0x60430425
#data 0x7F080009
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0D4082:
mov r4,r3
mov.l @(loc_8C0D4198,pc),r1 ; r1 set to 0x8C15CC84
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D4094:
mov.w @(loc_8C0D4188,pc),r1 ; r1 set to 0xDc
mov 0x01,r6 ; r6 set to 0x01
mov.w @(loc_8C0D4188,pc),r2 ; r2 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0D419C,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D4186,pc),r0 ; r0 set to 0x12c
mov.b r6,@(r0,r4) 	
mov.l @(0x18,r4),r5
add r5,r2 ; r2 ??? bc r5 is ???	
jsr @r3
add 0x94,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D4186,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0D418A,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D41A0,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov r4,r1
mov.b @(r0,r5),r2
add 0x34,r1
mov.l @(loc_8C0D41A0,pc),r3 ; r3 set to 0x8C1294C8
mov.b r2,@(r0,r4) 	
mov r5,r2
mov.l @(0x18,r4),r0 ; r0 ??? bc r4 is ???	
add 0x34,r2
mov.w @(0x1E,r0),r0 	
mov.w r0,@(0x1C,r4) 	
mova @(loc_8C0D41A4,pc),r0  ; r0 set to 0x8C0D41A4
fmov.s @r0,fr3 ; r3 ??	
mov.w @(loc_8C0D418C,pc),r0 ; r0 set to 0x108
fmov.s fr3,@(r0,r4) 	
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov 0x0A,r2 ; r2 set to 0x0a
mov.b r2,@(r0,r4) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r4),r3
tst r3,r3
bt/s loc_8C0D4120
mov 0x17,r5 ; r5 set to 0x17
bra loc_8C0D4122
mov 0x04,r6

loc_8C0D4120:
mov 0x03,r6 ; r6 set to 0x03

loc_8C0D4122:
mov.l @(loc_8C0D41A8,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
jmp @r3
lds.l @r15+,pr 	

loc_8C0D4128:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.l @(0x18,r14),r2
mov r4,r1
mov.l @(loc_8C0D41A0,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r1
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.b @(0x01,r14),r0 	
mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???	
mov r0,r2 ; r2 set to 0x0c
mov.b @(0x01,r3),r0 	
cmp/eq r0,r2
bt loc_8C0D4150
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0D41Ca
mov.l @r15+,r14

#align4
loc_8C0D4150:
#data 0x52E69018
#data 0x901403Ed
#data 0x3310012d
#data 0x64E38D05
#data 0x80E4E002
#data 0x900EE300
#data 0x0E34

loc_8C0D416A:
#data 0xD310
#data 0x0009430b
#data 0x02EC900d
#data 0x891B2228
#data 0xA01AC70a
#data 0x0130F308
#data 0x01581700
#data 0x00Cc

loc_8C0D4186:
#data 0x012c

loc_8C0D4188:
#data 0x00Dc

loc_8C0D418A:
#data 0x01A3

loc_8C0D418C:
#data 0x0108
#data 0x0141

#align4
loc_8C0D4190:
#data bank04.loc_8c044F12

loc_8C0D4194:
#data loc_8c0d4082

loc_8C0D4198:
#data 0x8c15CC84

loc_8C0D419C:
#data bank12.loc_8c129560

loc_8C0D41A0:
#data bank12.loc_8c1294C8

loc_8C0D41A4:
#data 0x3F000000

#align4
loc_8C0D41A8:
#data bank03.loc_8c034C38

loc_8C0D41AC:
#data bank03.loc_8c034dee

loc_8C0D41B0:
#data 0xF39d

loc_8C0D41B2:
#data 0x908a
#data 0x4F26FE37
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0D41BC:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D42CC,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0D41CA:
mov.l @(loc_8C0D42DC,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x7FF84F22
#data 0xE600D342
#data 0x2F501F41
#data 0x430BE503
#data 0x20086463
#data 0x64038D15
#data 0x9070D33e
#data 0x52F11434
#data 0x14266323
#data 0x936B023d
#data 0xE0260425
#data 0xE0200435
#data 0x042462F0
#data 0x53469065
#data 0x9063023d
#data 0x60430425
#data 0x7F080009
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0D421A:
mov.l r14,@-r15
sts.l pr,@-r15
bsr loc_8C0D455c
mov r4,r14
extu.b r0,r0
tst r0,r0
bt loc_8C0D4230
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0D41Ca
mov.l @r15+,r14

loc_8C0D4230:
mov.b @(0x04,r14),r0 	
mov r14,r4
mov.l @(loc_8C0D42E8,pc),r1 ; r1 set to 0x8C15CC94
extu.b r0,r0
lds.l @r15+,pr 	
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0D4242:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D42D6,pc),r1 ; r1 set to 0xDc
mov 0x01,r5 ; r5 set to 0x01
mov.w @(loc_8C0D42D6,pc),r2 ; r2 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0D42EC,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0D42CC,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r14) 	
mov.l @(0x18,r14),r4
add r4,r2 ; r2 ??? bc r4 is ???	
jsr @r3
add 0x94,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D42CC,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0D42D8,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D42F0,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.l @(loc_8C0D42F0,pc),r3 ; r3 set to 0x8C1294C8
mov.b @(r0,r4),r2
mov r14,r1
add 0x34,r1
mov.b r2,@(r0,r14) 	
mov r4,r2
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov 0xF8,r3 ; r3 set to 0xFFFFFFF8
mov.b r2,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r2
tst r2,r2
bt/s loc_8C0D42F4
mov 0x1B,r5 ; r5 set to 0x1b
bra loc_8C0D42F6
mov 0x14,r6
#data 0x0108

loc_8C0D42CC:
#data 0x012c
#data 0x0130
#data 0x01581700
#data 0x00Cc

loc_8C0D42D6:
#data 0x00Dc

loc_8C0D42D8:
#data 0x01A3
#data 0x0000

#align4
loc_8C0D42DC:
#data bank04.loc_8c0450C0

loc_8C0D42E0:
#data bank04.loc_8c044F12

loc_8C0D42E4:
#data loc_8c0d421a

loc_8C0D42E8:
#data 0x8c15CC94

loc_8C0D42EC:
#data bank12.loc_8c129560

loc_8C0D42F0:
#data bank12.loc_8c1294C8

loc_8C0D42F4:
#data 0xE611

loc_8C0D42F6:
#data 0xD338
#data 0x64E3430b
#data 0x64E34F26
#data 0x6EF6

loc_8C0D4302:
#data 0x2FE6
#data 0x4F226E43
#data 0x53E684E1
#data 0x84316203
#data 0x8B103200
#data 0xE02453E6
#data 0x713461E3
#data 0xD32F023c
#data 0x52E60E24
#data 0x430B7234
#data 0x9350E00c
#data 0x303C50E6
#data 0x88098401
#data 0x8B03

loc_8C0D4336:
#data 0x4F26
#data 0xAF4664E3
#data 0x6EF6

loc_8C0D433E:
#data 0x9346
#data 0x332C52E6
#data 0x20088431
#data 0x93408910
#data 0x57E6E51b
#data 0x373CD223
#data 0x67038471
#data 0x77FF903a
#data 0x420B06Ec
#data 0x923464E3
#data 0x53E6E000
#data 0x8021323c

#align4
loc_8C0D436C:
#data 0x000B4F26
#data 0x4F226EF6
#data 0xD31B7FF8
#data 0x1F41E600
#data 0xE5042F50
#data 0x6463430b
#data 0x8D152008
#data 0xD3176403
#data 0x14349021
#data 0x632352F1
#data 0x023D1426
#data 0x0425931c
#data 0x0435E026
#data 0x62F0E020
#data 0x90130424
#data 0x023D5346
#data 0x04259013
#data 0x00096043
#data 0x4F267F08
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0D43BC:
mov r4,r3
mov.l @(loc_8C0D43EC,pc),r1 ; r1 set to 0x8C15CCA4
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x0150
#data 0x01300158
#data 0x00CC1700

#align4
loc_8C0D43D8:
#data bank03.loc_8c034C38

loc_8C0D43DC:
#data bank12.loc_8c1294C8

loc_8C0D43E0:
#data bank03.loc_8c034CD6

loc_8C0D43E4:
#data bank04.loc_8c044F12

loc_8C0D43E8:
#data loc_8c0d43Bc

loc_8C0D43EC:
#data 0x8c15CCA4


loc_8C0D43F0:
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
mov 0x00,r6 ; r6 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov r6,r0 ; r0 set to 0x00
nop 	
mov.b r0,@(0x05,r4) 	
mov.w @(loc_8C0D4536,pc),r1 ; r1 set to 0xDc
mov.w @(loc_8C0D4536,pc),r2 ; r2 set to 0xDc
mov.w @(loc_8C0D4534,pc),r0 ; r0 set to 0x12c
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0D4544,pc),r3 ; r3 set to 0x8C129560
mov.b r6,@(r0,r4) 	
mov.l @(0x18,r4),r5
add r5,r2 ; r2 ??? bc r5 is ???	
jsr @r3
add 0x94,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D4534,pc),r0 ; r0 set to 0x12c
mov 0x01,r2 ; r2 set to 0x01
mov r4,r1
add 0x50,r1
mov.b r2,@(r0,r4) 	
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
mov.w @(loc_8C0D4538,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r5),r3
mov.b r3,@(r0,r4) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r5),r2 ; r2 ??? bc r5 is ???	
mov.b r2,@(r0,r4) 	
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r5),r3
mov r5,r2
add 0x50,r2
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0D4548,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.l @(loc_8C0D4548,pc),r3 ; r3 set to 0x8C1294C8
mov.b @(r0,r5),r2
mov r4,r1
add 0x34,r1
mov.b r2,@(r0,r4) 	
mov r5,r2
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov.b r2,@(r0,r4) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r4) 	
mov 0x22,r0 ; r0 set to 0x22
mov.b r6,@(r0,r4) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r4),r3 ; r3 ??? bc r4 is ???	
tst r3,r3
bf loc_8C0D4482
mov.w @(loc_8C0D453A,pc),r0 ; r0 set to 0xCe
mov 0x17,r3 ; r3 set to 0x17
bra loc_8C0D4488
mov.b r3,@(r0,r4) 	

loc_8C0D4482:
mov.w @(loc_8C0D453A,pc),r0 ; r0 set to 0xCe
mov 0x1A,r1 ; r1 set to 0x1a
mov.b r1,@(r0,r4) 	

loc_8C0D4488:
lds.l @r15+,pr 	

loc_8C0D448A:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l @(0x18,r14),r3
mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24, r0 set to 0x24
mov r14,r1 ; r1 ??? bc r14 is ???	
mov r3,r2
mov.l r3,@r15
mov.b @(r0,r2),r3
add 0x34,r1
mov.b r3,@(r0,r14) 	
mov.l @(0x18,r14),r2
mov.l @(loc_8C0D4548,pc),r3 ; r3 set to 0x8C1294C8, r3 set to 0x8C1294C8, r3 set to 0x8C1294C8
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0C, r0 set to 0x0c
mov.b @(0x01,r14),r0 	
mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
mov r0,r2 ; r2 set to 0x0C, r2 set to 0x0C, r2 set to 0x0c
mov.b @(0x01,r3),r0 	
cmp/eq r0,r2
bt loc_8C0D44C2
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
bra loc_8C0D41Ca
mov.l @r15+,r14

loc_8C0D44C2:
#data 0x903b
#data 0x004C54E6
#data 0x8816600c
#data 0x90368B04
#data 0x600C004c
#data 0x8905C880

#align4
loc_8C0D44D8:
#data 0x7F0464E3
#data 0xD21B4F26
#data 0x6EF6422b

#align4
loc_8C0D44E4:
#data 0x52E6902b
#data 0xE022032c
#data 0x332002Ec
#data 0x90248930
#data 0x032C52E6
#data 0xE201E022
#data 0x90190E34
#data 0x901D0E24
#data 0x023C63F2
#data 0x89062228
#data 0x02EC9019
#data 0x89022228
#data 0xE200900e
#data 0x0E24

loc_8C0D451A:
#data 0xE022
#data 0x07EC64E3
#data 0x900AE51b
#data 0x06EC677c
#data 0x7F0477Ff
#data 0xD3084F26
#data 0x6EF6432b

loc_8C0D4534:
#data 0x012c

loc_8C0D4536:
#data 0x00Dc

loc_8C0D4538:
#data 0x01A3

loc_8C0D453A:
#data 0x00Ce
#data 0x014B0159
#data 0x01410411

#align4
loc_8C0D4544:
#data bank12.loc_8c129560

loc_8C0D4548:
#data bank12.loc_8c1294C8

loc_8C0D454C:
#data bank04.loc_8c0450C0

loc_8C0D4550:
#data bank03.loc_8c034CD6

loc_8C0D4554:
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0D455C:
#data 0x54469016
#data 0x600C004c
#data 0x8B0C8804
#data 0x004C9011
#data 0x8815600c
#data 0x900D8B07
#data 0x600C004c
#data 0x8B028815
#data 0x20088445
#data 0x8901

loc_8C0D4582:
#data 0x000b
#data 0xE001
;-------------------------------------------------------------------------------

loc_8C0D4586:
#data 0xE000
#data 0x0009000b
;-------------------------------------------------------------------------------
#data 0x015901E9
#data 0x000001D0
#data 0x7FF84F22
#data 0xE600D34e
#data 0x2F501F41
#data 0x430BE503
#data 0x20086463
#data 0x64038D19
#data 0xE020D34a
#data 0x1434D54a
#data 0x142652F1
#data 0x043463F0
#data 0x52469082
#data 0x9280032d
#data 0xE0260435
#data 0x0425937e
#data 0x907C334c
#data 0x25326233
#data 0x013D5346
#data 0x60432211
#data 0x7F080009
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0D45E6:
mov r4,r3
mov.l @(loc_8C0D46E0,pc),r1 ; r1 set to 0x8C15CCB4
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D45F8:
mov.w @(loc_8C0D46CE,pc),r1 ; r1 set to 0xDc
mov 0x01,r6 ; r6 set to 0x01
mov.w @(loc_8C0D46CE,pc),r2 ; r2 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0D46E4,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D46CC,pc),r0 ; r0 set to 0x12c
mov.b r6,@(r0,r4) 	
mov.l @(0x18,r4),r5
add r5,r2 ; r2 ??? bc r5 is ???	
jsr @r3
add 0x94,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D46CC,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0D46D0,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D46E8,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov r4,r1
mov.b @(r0,r5),r2
add 0x34,r1
mov.l @(loc_8C0D46E8,pc),r3 ; r3 set to 0x8C1294C8
mov.b r2,@(r0,r4) 	
mov r5,r2
mov.l @(0x18,r4),r0 ; r0 ??? bc r4 is ???	
add 0x34,r2
mov.w @(0x1E,r0),r0 	
mov.w r0,@(0x1C,r4) 	
mova @(loc_8C0D46EC,pc),r0  ; r0 set to 0x8C0D46Ec
fmov.s @r0,fr3 ; r3 ??	
mov.w @(loc_8C0D46D2,pc),r0 ; r0 set to 0x108
fmov.s fr3,@(r0,r4) 	
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov.b r2,@(r0,r4) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b @(r0,r4),r3
add 0xFE,r3
mov.b r3,@(r0,r4) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r4),r2
tst r2,r2
bt/s loc_8C0D468c
mov 0x17,r5 ; r5 set to 0x17
bra loc_8C0D468e
mov 0x09,r6

loc_8C0D468C:
mov 0x08,r6 ; r6 set to 0x08

loc_8C0D468E:
mov.l @(loc_8C0D46F0,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
jmp @r3
lds.l @r15+,pr 	

loc_8C0D4694:
mov.l r14,@-r15
mov r4,r14
mov 0x24,r0 ; r0 set to 0x24
mov r14,r1
sts.l pr,@-r15
mov.l @(0x18,r14),r3
add 0x34,r1
mov.b @(r0,r3),r2
mov.l @(loc_8C0D46E8,pc),r3 ; r3 set to 0x8C1294C8
mov.b r2,@(r0,r14) 	
mov.l @(0x18,r14),r2
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.b @(0x01,r14),r0 	
mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???	
mov r0,r2 ; r2 set to 0x0c
mov.b @(0x01,r3),r0 	
cmp/eq r0,r2
bt loc_8C0D46F4
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0D473e
mov.l @r15+,r14
#data 0x17000130
#data 0x015800Cc

loc_8C0D46CC:
#data 0x012c

loc_8C0D46CE:
#data 0x00Dc

loc_8C0D46D0:
#data 0x01A3

loc_8C0D46D2:
#data 0x0108

#align4
loc_8C0D46D4:
#data bank04.loc_8c044F12

loc_8C0D46D8:
#data loc_8c0d45E6
#data 0x8C28C6B0

#align4
loc_8C0D46E0:
#data 0x8c15CCB4

loc_8C0D46E4:
#data bank12.loc_8c129560

loc_8C0D46E8:
#data bank12.loc_8c1294C8

loc_8C0D46EC:
#data 0x3F000000

#align4
loc_8C0D46F0:
#data bank03.loc_8c034C38

loc_8C0D46F4:
#data 0x9025D215
#data 0x61316322
#data 0x003D53E6
#data 0x8D053100
#data 0xE00264E3
#data 0xE30080E4
#data 0x0E34901b

#align4
loc_8C0D4710:
#data 0x430BD30f
#data 0x90170009
#data 0x222802Ec
#data 0xC70D8902
#data 0xF308A001

loc_8C0D4724:
#data 0xF39d

loc_8C0D4726:
#data 0x9010
#data 0x4F26FE37
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0D4730:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D4746,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0D473E:
mov.l @(loc_8C0D4758,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x0158

loc_8C0D4746:
#data 0x012c
#data 0x01080141
#data 0x8C28C6B0

#align4
loc_8C0D4750:
#data bank03.loc_8c034dee
#data 0x3F000000

#align4
loc_8C0D4758:
#data bank04.loc_8c0450C0
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x4F222FA6
#data 0xDA4D7FF8
#data 0x9B8FEC03
#data 0xDD4CEE00
#data 0x2F521F41
#data 0xE600E503
#data 0x64634A0b
#data 0x8D1B2008
#data 0xD2486403
#data 0x14249083
#data 0x143653F1
#data 0x142562F2
#data 0x023D5346
#data 0x0425937c
#data 0x04B5E026
#data 0xE023334c
#data 0x04E46233
#data 0x2D327E01
#data 0x90723EC3
#data 0x013D5346
#data 0x8BDF2211
#data 0x00096043
#data 0x4F267F08
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0D47CC:
mov r4,r3
mov.l @(loc_8C0D48AC,pc),r1 ; r1 set to 0x8C15CCC4
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D47DE:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D489A,pc),r3 ; r3 set to 0xDc
mov 0x01,r4 ; r4 set to 0x01
mov.w @(loc_8C0D489A,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0D4898,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov.l @(0x14,r14),r2
add r3,r2
mov.l @(loc_8C0D48B0,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add 0x94,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D4898,pc),r0 ; r0 set to 0x12c
mov r14,r1
add 0x50,r1
mov.b r4,@(r0,r14) 	
mov.l @(0x14,r14),r0 ; r0 ??? bc r14 is ???	
mov.b @(0x02,r0),r0 	
mov.b r0,@(0x02,r14) 	
mov.l @(0x14,r14),r0
mov.b @(0x01,r0),r0 	
mov.b r0,@(0x01,r14) 	
mov 0x50,r0 ; r0 set to 0x50
mov.l @(0x14,r14),r3 ; r3 ??? bc r14 is ???	
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x54,r0 ; r0 set to 0x54
mov.l @(0x14,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0D489C,pc),r0 ; r0 set to 0x1A3
mov.l @(0x14,r14),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.l @(0x14,r14),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r14) 	
mov 0x30,r0 ; r0 set to 0x30
mov.l @(0x14,r14),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r14) 	
mov.l @(0x14,r14),r2
add 0x50,r2
mov.l @(loc_8C0D48B4,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x14,r14),r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r14) 	
mov 0x23,r0 ; r0 set to 0x23
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
extu.b r0,r0
cmp/eq 0x00,r0 	
bt/s loc_8C0D4866
mov 0x00,r4 ; r4 set to 0x00
cmp/eq 0x01,r0 	
bt loc_8C0D4866
cmp/eq 0x02,r0 	
bt loc_8C0D486c
bra loc_8C0D4872
nop 	

loc_8C0D4866:
mov 0x24,r0 ; r0 set to 0x24
bra loc_8C0D4872
mov.b r4,@(r0,r14) 	

#align4
loc_8C0D486C:
#data 0xE207E024
#data 0x0E24


loc_8C0D4872:
mov.l @(0x14,r14),r2
mov r14,r1
mov.l @(loc_8C0D48B4,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r1
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
lds.l @r15+,pr 	
mov 0x23,r0 ; r0 set to 0x23
mov.l @(loc_8C0D48B8,pc),r3 ; r3 set to 0x8C034C38
mov.b @(r0,r14),r6
mov 0x1B,r5 ; r5 set to 0x1b
mov r14,r4
jmp @r3
mov.l @r15+,r14
#data 0x01301700
#data 0x015800Cc

loc_8C0D4898:
#data 0x012c

loc_8C0D489A:
#data 0x00Dc

loc_8C0D489C:
#data 0x01A3
#data 0x0000

#align4
loc_8C0D48A0:
#data bank04.loc_8c044F12
#data 0x8C28C6B4

#align4
loc_8C0D48A8:
#data loc_8c0d47Cc

loc_8C0D48AC:
#data 0x8c15CCC4

loc_8C0D48B0:
#data bank12.loc_8c129560

loc_8C0D48B4:
#data bank12.loc_8c1294C8

loc_8C0D48B8:
#data bank03.loc_8c034C38


loc_8C0D48BC:
sts.l pr,@-r15
mov.l @(0x14,r4),r2
mov r4,r1
mov.l @(loc_8C0D4910,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r1
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.b @(0x01,r4),r0 	
mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???	
mov r0,r2 ; r2 set to 0x0c
mov.b @(0x01,r3),r0 	
cmp/eq r0,r2
bt loc_8C0D48Dc
bra loc_8C0D4906
lds.l @r15+,pr 	

#align4
loc_8C0D48DC:
#data 0x84345345
#data 0x600CE303
#data 0x8B043037
#data 0x8044E002
#data 0x900DE200
#data 0x0424

loc_8C0D48F2:
#data 0xD308
#data 0x4F26432b


loc_8C0D48F8:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D490C,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0D4906:
mov.l @(loc_8C0D4918,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0D490C:
#data 0x012c
#data 0x0000

#align4
loc_8C0D4910:
#data bank12.loc_8c1294C8

loc_8C0D4914:
#data bank03.loc_8c034D8c

loc_8C0D4918:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0x60532F42
#data 0xD3550009
#data 0x80F4E503
#data 0x430BE600
#data 0x20086463
#data 0x64038D1a
#data 0x9096D351
#data 0x62F21434
#data 0x1426D550
#data 0x023D6323
#data 0x04259390
#data 0x0435E026
#data 0x908D938d
#data 0x6233334c
#data 0x53462532
#data 0x2211013d
#data 0x84F4E223
#data 0x2200324c
#data 0x00096043
#data 0x4F267F08
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0D4974:
mov.l r14,@-r15
mov 0x23,r0 ; r0 set to 0x23
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0D4A88,pc),r0 ; r0 set to 0x8C15CCD4
extu.b r3,r3
mov.l @(0x18,r14),r5
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0D498A:
mov r4,r3
mov.l @(loc_8C0D4A8C,pc),r1 ; r1 set to 0x8C15CCE4
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D499C:
mov.w @(loc_8C0D4A74,pc),r1 ; r1 set to 0xDc
mov 0x01,r6 ; r6 set to 0x01
mov.w @(loc_8C0D4A74,pc),r2 ; r2 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r5,r2 ; r2 ??? bc r5 is ???	
mov.l @(loc_8C0D4A90,pc),r3 ; r3 set to 0x8C129560
add r4,r1 ; r1 ??? bc r4 is ???	
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D4A72,pc),r0 ; r0 set to 0x12c
mov.b r6,@(r0,r4) 	
jsr @r3
add 0x94,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D4A72,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0D4A76,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D4A94,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x00,r3 ; r3 set to 0x00
mov r4,r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov r5,r2
mov.b r3,@(r0,r4) 	
add 0x34,r1
mov.l @(loc_8C0D4A94,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(loc_8C0D4A98,pc),r2 ; r2 set to 0x8C034C38
mov 0x1B,r5 ; r5 set to 0x1b
mov 0x02,r6 ; r6 set to 0x02
jmp @r2
lds.l @r15+,pr 	

loc_8C0D4A10:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(0x05,r14),r0 	
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov.b @(0x05,r14),r0 	
extu.b r0,r0
cmp/pz r0
bf/s loc_8C0D4A2c
mov r5,r13
bra loc_8C0D4A36
and 0x01,r0 	

loc_8C0D4A2C:
not r0,r0
add 0x01,r0
and 0x01,r0 	
not r0,r0
add 0x01,r0

loc_8C0D4A36:
tst r0,r0
bt loc_8C0D4A3e
bra loc_8C0D4A42
fldi1 fr3

loc_8C0D4A3E:
mova @(loc_8C0D4A9C,pc),r0  ; r0 init to 0x8C0D4A9c
fmov.s @r0,fr3

loc_8C0D4A42:
mov.w @(loc_8C0D4A78,pc),r0 ; r0 set to 0x108, r0 set to 0x108
mov r13,r2
mov r14,r1
mov.l @(loc_8C0D4A94,pc),r3 ; r3 set to 0x8C1294C8, r3 set to 0x8C1294C8
add 0x34,r2
fmov.s fr3,@(r0,r14) 	
add 0x34,r1
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
mov.b @(0x01,r14),r0 	
mov r0,r3 ; r3 set to 0x0C, r3 set to 0x0c
mov.b @(0x01,r13),r0 	
cmp/eq r0,r3
bt loc_8C0D4AA0
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
mov.l @r15+,r13
bra loc_8C0D4DE6
mov.l @r15+,r14
#data 0x0130
#data 0x00CC1700
#data 0x0158

loc_8C0D4A72:
#data 0x012c

loc_8C0D4A74:
#data 0x00Dc

loc_8C0D4A76:
#data 0x01A3

loc_8C0D4A78:
#data 0x0108
#data 0x0000

#align4
loc_8C0D4A7C:
#data bank04.loc_8c044F12

loc_8C0D4A80:
#data loc_8c0d4974
#data 0x8C28C6B8

#align4
loc_8C0D4A88:
#data 0x8c15CCD4

loc_8C0D4A8C:
#data 0x8c15CCE4

loc_8C0D4A90:
#data bank12.loc_8c129560

loc_8C0D4A94:
#data bank12.loc_8c1294C8

loc_8C0D4A98:
#data bank03.loc_8c034C38

loc_8C0D4A9C:
#data 0x3F4CCCCd


loc_8C0D4AA0:
mov.l @(loc_8C0D4BB0,pc),r2 ; r2 set to 0x8C034D8c
jsr @r2
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt loc_8C0D4AB8
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x04,r14) 	
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8C0D4BA8,pc),r0 ; r0 set to 0x12c
bra loc_8C0D4AC6
mov.b r3,@(r0,r14) 	

#align4
loc_8C0D4AB8:
#data 0x00EC9077
#data 0x8B028802
#data 0x02DCE024
#data 0x0E24


loc_8C0D4AC6:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D4ACE:
mov r4,r3
mov.l @(loc_8C0D4BB4,pc),r1 ; r1 set to 0x8C15CCF4
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D4AE0:
mov.w @(loc_8C0D4BAC,pc),r1 ; r1 set to 0xDc
mov 0x01,r6 ; r6 set to 0x01
mov.w @(loc_8C0D4BAC,pc),r2 ; r2 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r5,r2 ; r2 ??? bc r5 is ???	
mov.l @(loc_8C0D4BB8,pc),r3 ; r3 set to 0x8C129560
add r4,r1 ; r1 ??? bc r4 is ???	
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D4BA8,pc),r0 ; r0 set to 0x12c
mov.b r6,@(r0,r4) 	
jsr @r3
add 0x94,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D4BA8,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0D4BAE,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D4BBC,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x00,r3 ; r3 set to 0x00
mov r4,r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov r5,r2
mov.b r3,@(r0,r4) 	
add 0x34,r1
mov.l @(loc_8C0D4BBC,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(loc_8C0D4BC0,pc),r2 ; r2 set to 0x8C034C38
mov 0x1B,r5 ; r5 set to 0x1b
mov 0x04,r6 ; r6 set to 0x04
jmp @r2
lds.l @r15+,pr 	

loc_8C0D4B54:
mov.l r14,@-r15
mov r5,r2
sts.l pr,@-r15
mov.l @(loc_8C0D4BBC,pc),r3 ; r3 set to 0x8C1294C8
mov r4,r1
mov r4,r14
add 0x34,r2
add 0x34,r1
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.b @(0x01,r14),r0 	
mov r0,r3 ; r3 set to 0x0c
mov.b @(0x01,r5),r0 	
cmp/eq r0,r3
bt loc_8C0D4B7a
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0D4DE6
mov.l @r15+,r14

loc_8C0D4B7A:
#data 0xD20d
#data 0x64E3420b
#data 0x4011600e
#data 0xE0028904
#data 0xE30080E4
#data 0x0E34900c

#align4
loc_8C0D4B90:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D4B96:
mov r4,r3
mov.l @(loc_8C0D4BC4,pc),r1 ; r1 set to 0x8C15CD04
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D4BA8:
#data 0x012c
#data 0x0141

loc_8C0D4BAC:
#data 0x00Dc

loc_8C0D4BAE:
#data 0x01A3

#align4
loc_8C0D4BB0:
#data bank03.loc_8c034D8c

loc_8C0D4BB4:
#data 0x8c15CCF4

loc_8C0D4BB8:
#data bank12.loc_8c129560

loc_8C0D4BBC:
#data bank12.loc_8c1294C8

loc_8C0D4BC0:
#data bank03.loc_8c034C38

loc_8C0D4BC4:
#data 0x8c15CD04


loc_8C0D4BC8:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D4D24,pc),r2 ; r2 set to 0xDc
mov 0x01,r4 ; r4 set to 0x01
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0D4D24,pc),r1 ; r1 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0D4D2C,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0D4D22,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
jsr @r3
add 0x94,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D4D22,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0D4D26,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D4D30,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x00,r3 ; r3 set to 0x00
mov r14,r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov r5,r2
mov.b r3,@(r0,r14) 	
add 0x34,r1
mov.l @(loc_8C0D4D30,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(loc_8C0D4D34,pc),r2 ; r2 set to 0x8C034C38
mov 0x1B,r5 ; r5 set to 0x1b
mov 0x05,r6 ; r6 set to 0x05
jsr @r2
mov r14,r4 ; r4 ??? bc r14 is ???	
mov.w @(loc_8C0D4D28,pc),r0 ; r0 set to 0x108
fldi1 fr3
fmov.s fr3,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D4C4C:
mov.l r14,@-r15
mov r5,r2
sts.l pr,@-r15
mov.l @(loc_8C0D4D30,pc),r3 ; r3 set to 0x8C1294C8
mov r4,r1
mov r4,r14
add 0x34,r2
add 0x34,r1
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.b @(0x01,r14),r0 	
mov r0,r3 ; r3 set to 0x0c
mov.b @(0x01,r5),r0 	
cmp/eq r0,r3
bt loc_8C0D4C72
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0D4DE6
mov.l @r15+,r14

loc_8C0D4C72:
#data 0xD231
#data 0x64E3420b
#data 0x4011600e
#data 0xE0028904
#data 0xE30080E4
#data 0x0E34904d

#align4
loc_8C0D4C88:
#data 0x904DD12c
#data 0xF2E6415a
#data 0xF231F30d
#data 0x4F26FE27
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0D4C9C:
mov r4,r3
mov.l @(loc_8C0D4D40,pc),r1 ; r1 set to 0x8C15CD14
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D4CAE:
mov.w @(loc_8C0D4D24,pc),r1 ; r1 set to 0xDc
mov 0x01,r6 ; r6 set to 0x01
mov.w @(loc_8C0D4D24,pc),r2 ; r2 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r5,r2 ; r2 ??? bc r5 is ???	
mov.l @(loc_8C0D4D2C,pc),r3 ; r3 set to 0x8C129560
add r4,r1 ; r1 ??? bc r4 is ???	
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D4D22,pc),r0 ; r0 set to 0x12c
mov.b r6,@(r0,r4) 	
jsr @r3
add 0x94,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D4D22,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0D4D26,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D4D30,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x00,r3 ; r3 set to 0x00
mov r4,r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov r5,r2
mov.b r3,@(r0,r4) 	
add 0x34,r1
mov.l @(loc_8C0D4D30,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(loc_8C0D4D34,pc),r2 ; r2 set to 0x8C034C38
mov 0x1B,r5 ; r5 set to 0x1b
mov 0x03,r6 ; r6 set to 0x03
jmp @r2
lds.l @r15+,pr 	

loc_8C0D4D22:
#data 0x012c

loc_8C0D4D24:
#data 0x00Dc

loc_8C0D4D26:
#data 0x01A3

loc_8C0D4D28:
#data 0x0108
#data 0x0000

#align4
loc_8C0D4D2C:
#data bank12.loc_8c129560

loc_8C0D4D30:
#data bank12.loc_8c1294C8

loc_8C0D4D34:
#data bank03.loc_8c034C38

loc_8C0D4D38:
#data bank03.loc_8c034D8c
#data 0x3D000000

#align4
loc_8C0D4D40:
#data 0x8c15CD14


loc_8C0D4D44:
mov.l r14,@-r15
mov r4,r1
mov.l r13,@-r15
mov r5,r2
mov.l r12,@-r15
add 0x34,r2
sts.l pr,@-r15
mov.l @(loc_8C0D4DF4,pc),r3 ; r3 set to 0x8C1294C8
mov r4,r14
mov r5,r13
add 0x34,r1
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.b @(0x01,r14),r0 	
mov r0,r3 ; r3 set to 0x0c
mov.b @(0x01,r13),r0 	
cmp/eq r0,r3
bt loc_8C0D4D76
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
mov.l @r15+,r12
mov.l @r15+,r13
bra loc_8C0D4DE6
mov.l @r15+,r14

loc_8C0D4D76:
#data 0x9039
#data 0x02DD9339
#data 0x3230622d
#data 0xEC008D04
#data 0x80E4E002
#data 0x0EC49032

#align4
loc_8C0D4D8C:
#data 0x33DC9331
#data 0x20088431
#data 0x902C891b
#data 0x840130Dc
#data 0x8B028810
#data 0xA00F9026
#data 0x0EC4

loc_8C0D4DA6:
#data 0x9724
#data 0x9021E301
#data 0x37DCE51b
#data 0x84710E34
#data 0x6703D310
#data 0x77FF9018
#data 0x666C06Ec
#data 0x64E3430b

#align4
loc_8C0D4DC4:
#data 0x32DC9215
#data 0x000960C3
#data 0x8021

loc_8C0D4DCE:
#data 0x4F26
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0D4DD8:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D4DF0,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0D4DE6:
mov.l @(loc_8C0D4DFC,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x0F010158

loc_8C0D4DF0:
#data 0x012c
#data 0x0150

#align4
loc_8C0D4DF4:
#data bank12.loc_8c1294C8

loc_8C0D4DF8:
#data bank03.loc_8c034CD6

loc_8C0D4DFC:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0x60532F42
#data 0xD3540009
#data 0x80F4E504
#data 0x430BE600
#data 0x20086463
#data 0x64038D1a
#data 0x9096D350
#data 0x62F21434
#data 0x1426D54f
#data 0x023D6323
#data 0x04259390
#data 0x0435E026
#data 0x908D938d
#data 0x6233334c
#data 0x53462532
#data 0x2211013d
#data 0x84F4E223
#data 0x2200324c
#data 0x00096043
#data 0x4F267F08
#data 0x0009000b
;-------------------------------------------------------------------------------

#align4
loc_8C0D4E58:
#data 0x7FF44F22
#data 0x2F521F42
#data 0x00096063
#data 0xE504D33d
#data 0xE60080F4
#data 0x6463430b
#data 0x8D102008
#data 0xE0266403
#data 0xE123D339
#data 0x314C1434
#data 0x142662F2
#data 0x53F29264
#data 0x04251435
#data 0x840160F2
#data 0x84F48041
#data 0x2100

loc_8C0D4E96:
#data 0x7F0c
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0D4E9E:
mov.l r14,@-r15
mov 0x23,r0 ; r0 set to 0x23
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0D4F68,pc),r0 ; r0 set to 0x8C15CD24
extu.b r3,r3
mov.l @(0x18,r14),r5
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0D4EB4:
mov r4,r3
mov.l @(loc_8C0D4F6C,pc),r1 ; r1 set to 0x8C15CD38
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D4EC6:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov 0x01,r4 ; r4 set to 0x01
mov.l r8,@-r15
mov r5,r13
sts.l pr,@-r15
mov r4,r0 ; r0 set to 0x01
nop 	
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0D4F58,pc),r1 ; r1 set to 0xDc
mov.w @(loc_8C0D4F58,pc),r2 ; r2 set to 0xDc
mov.w @(loc_8C0D4F56,pc),r0 ; r0 set to 0x12c
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0D4F70,pc),r3 ; r3 set to 0x8C129560
add r13,r2 ; r2 ??? bc r13 is ???	
mov.b r4,@(r0,r14) 	
jsr @r3
add 0x94,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D4F56,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0D4F5A,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D4F74,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x00,r3 ; r3 set to 0x00
mov r14,r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov r13,r2
mov.b r3,@(r0,r14) 	
add 0x34,r1
mov.l @(loc_8C0D4F74,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.w @(loc_8C0D4F4E,pc),r0 ; r0 set to 0x130
mov 0x34,r8 ; r8 set to 0x34
mov.w @(r0,r13),r3 ; r3 ??? bc r13 is ???	
tst r3,r3
bt/s loc_8C0D4F7c
add r14,r8 ; r8 ??? bc r14 is ???	
mov.l @(loc_8C0D4F78,pc),r1 ; r1 set to 0xC2700000
lds r1,fpul 	
bra loc_8C0D4F82
fsts fpul,fr3

loc_8C0D4F4E:
#data 0x0130
#data 0x00CC1700
#data 0x0158

loc_8C0D4F56:
#data 0x012c

loc_8C0D4F58:
#data 0x00Dc

loc_8C0D4F5A:
#data 0x01A3

#align4
loc_8C0D4F5C:
#data bank04.loc_8c044F12

loc_8C0D4F60:
#data loc_8c0d4E9e
#data 0x8C28C6Bc

#align4
loc_8C0D4F68:
#data 0x8c15CD24

loc_8C0D4F6C:
#data 0x8c15CD38

loc_8C0D4F70:
#data bank12.loc_8c129560

loc_8C0D4F74:
#data bank12.loc_8c1294C8

loc_8C0D4F78:
#data 0xC2700000

#align4
loc_8C0D4F7C:
#data 0x425AD253
#data 0xF30d

loc_8C0D4F82:
#data 0xF288
#data 0xD352E51b
#data 0xF230E606
#data 0x430BF82a
#data 0xC75064E3
#data 0xF30865D3
#data 0x909164E3
#data 0x4F26FE37
#data 0x6DF668F6
#data 0x6EF6

loc_8C0D4FA6:
#data 0x908c
#data 0x6E432FE6
#data 0x4F222FD6
#data 0x880300Ec
#data 0x6D538F07
#data 0x9081D147
#data 0xF2E6415a
#data 0xF230F30d
#data 0xFE27

loc_8C0D4FC6:
#data 0x84E1
#data 0x84D16303
#data 0x89053300
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6A2B4

#align4
loc_8C0D4FDC:
#data 0x420BD23f
#data 0x600E64E3
#data 0x89044011
#data 0x420BD23d
#data 0xE00264D3
#data 0x80E4

loc_8C0D4FF2:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D4FFA:
mov.l r14,@-r15
mov r4,r14
mov.l @(loc_8C0D50E4,pc),r1 ; r1 set to 0x8C15CD48
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jsr @r3
mov r5,r13
mov.b @(0x01,r14),r0 	
mov r0,r3
mov.b @(0x01,r13),r0 	
cmp/eq r0,r3
bt loc_8C0D5026
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
mov.l @r15+,r13
bra loc_8C0D5544
mov.l @r15+,r14

loc_8C0D5026:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D502E:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov 0x01,r4 ; r4 set to 0x01
mov.l r8,@-r15
mov r5,r13
sts.l pr,@-r15
mov r4,r0 ; r0 set to 0x01
nop 	
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0D50C6,pc),r1 ; r1 set to 0xDc
mov.w @(loc_8C0D50C6,pc),r2 ; r2 set to 0xDc
mov.w @(loc_8C0D50C4,pc),r0 ; r0 set to 0x12c
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0D50E8,pc),r3 ; r3 set to 0x8C129560
add r13,r2 ; r2 ??? bc r13 is ???	
mov.b r4,@(r0,r14) 	
jsr @r3
add 0x94,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D50C4,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0D50C8,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D50EC,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x07,r3 ; r3 set to 0x07
mov r14,r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov r13,r2
mov.b r3,@(r0,r14) 	
add 0x34,r1
mov.l @(loc_8C0D50EC,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x23,r0 ; r0 set to 0x23
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
extu.b r0,r0
cmp/eq 0x01,r0 	
bf loc_8C0D5100
mov.w @(loc_8C0D50CA,pc),r0 ; r0 set to 0x130
mov 0x34,r8 ; r8 set to 0x34
mov.w @(r0,r13),r3 ; r3 ??? bc r13 is ???	
tst r3,r3
bt/s loc_8C0D50F4
add r14,r8 ; r8 ??? bc r14 is ???	
mov.l @(loc_8C0D50F0,pc),r1 ; r1 set to 0xC2700000
lds r1,fpul 	
bra loc_8C0D50Fa
fsts fpul,fr3
#data 0x01410108

loc_8C0D50C4:
#data 0x012c

loc_8C0D50C6:
#data 0x00Dc

loc_8C0D50C8:
#data 0x01A3

loc_8C0D50CA:
#data 0x0130
#data 0x42700000

#align4
loc_8C0D50D0:
#data bank03.loc_8c034C38
#data 0x3E4CCCCd
#data 0x3C83126f

#align4
loc_8C0D50DC:
#data bank03.loc_8c034D8c

loc_8C0D50E0:
#data bank08.loc_8c085EF8

loc_8C0D50E4:
#data 0x8c15CD48

loc_8C0D50E8:
#data bank12.loc_8c129560

loc_8C0D50EC:
#data bank12.loc_8c1294C8

loc_8C0D50F0:
#data 0xC2700000

#align4
loc_8C0D50F4:
#data 0x425AD248
#data 0xF30d

loc_8C0D50FA:
#data 0xF288
#data 0xF82AF230


loc_8C0D5100:
mov.l @(loc_8C0D521C,pc),r1 ; r1 set to 0x43200000
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
mov 0x1B,r5 ; r5 set to 0x1b
lds r1,fpul 	
mov 0x07,r6 ; r6 set to 0x07
mov.l @(loc_8C0D5220,pc),r3 ; r3 set to 0x8C034C38
fsts fpul,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
jsr @r3
mov r14,r4
mov 0x0A,r0 ; r0 set to 0x0a
fldi0 fr4
mov.w r0,@(0x1C,r14) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s fr4,@(r0,r14) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s fr4,@(r0,r14) 	
mov 0x1E,r5 ; r5 set to 0x1e
mov.w @(loc_8C0D5210,pc),r0 ; r0 set to 0x108
mov.l @(loc_8C0D5224,pc),r3 ; r3 set to 0x8C042008
fldi1 fr3
fmov.s fr3,@(r0,r14) 	
jsr @r3
mov r13,r4
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r8
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0D5140:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0D5228,pc),r3 ; r3 set to 0x8C034D8C, r3 set to 0x8C034D8c
jsr @r3
mov r4,r14
mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48
mov.w @(loc_8C0D5212,pc),r3 ; r3 set to 0x2000, r3 set to 0x2000
mov.l @(r0,r14),r2
add r3,r2
mov.l r2,@(r0,r14) 	
mov.w @(0x1C,r14),r0 	
add 0xFF,r0 ; r0 set to 0x47, r0 set to 0x47
mov.w r0,@(0x1C,r14) 	
exts.w r0,r0 ; r0 ??, r0 ??	
tst r0,r0
bf loc_8C0D5178
mov 0x02,r0 ; r0 set to 0x02, r0 set to 0x02
fldi1 fr4
mov.b r0,@(0x04,r14) 	
mov 0x18,r0 ; r0 set to 0x18, r0 set to 0x18
mov.w r0,@(0x1C,r14) 	
mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
fmov.s fr4,@(r0,r14) 	
mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
fmov.s fr4,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D5178:
mov.w @(0x1C,r14),r0 	
cmp/pz r0
bf loc_8C0D5182
bra loc_8C0D518c
and 0x01,r0 	

loc_8C0D5182:
not r0,r0
add 0x01,r0
and 0x01,r0 	
not r0,r0
add 0x01,r0

loc_8C0D518C:
tst r0,r0
bt loc_8C0D5194
bra loc_8C0D5196
mov 0x01,r3

loc_8C0D5194:
mov 0x00,r3 ; r3 set to 0x00

loc_8C0D5196:
mov.w @(loc_8C0D5214,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
mov.b r3,@(r0,r14) 	
mova @(loc_8C0D522C,pc),r0  ; r0 set to 0x8C0D522C, r0 set to 0x8C0D522c
fmov.s @r0,fr4
mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???	
fadd fr4,fr3
fmov.s fr3,@(r0,r14) 	
mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
fmov.s @(r0,r14),fr2
fadd fr4,fr2
fmov.s fr2,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D51B4:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0D5228,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r4,r14
mov 0x48,r0 ; r0 set to 0x48
mov.w @(loc_8C0D5212,pc),r3 ; r3 set to 0x2000
mov.l @(r0,r14),r2
add r3,r2
mov.l r2,@(r0,r14) 	
mov.w @(0x1C,r14),r0 	
add 0xFF,r0 ; r0 set to 0x47
mov.w r0,@(0x1C,r14) 	
exts.w r0,r0 ; r0 ??	
tst r0,r0
bf loc_8C0D51E8
mov 0x03,r0 ; r0 set to 0x03
mov.b r0,@(0x04,r14) 	
mov 0x09,r0 ; r0 set to 0x09
mov.w r0,@(0x1C,r14) 	
mov 0x48,r0 ; r0 set to 0x48
mov 0x00,r2 ; r2 set to 0x00
mov.l r2,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D51E8:
mov.w @(0x1C,r14),r0 	
cmp/pz r0
bf loc_8C0D51F2
bra loc_8C0D51Fc
and 0x01,r0 	

loc_8C0D51F2:
not r0,r0
add 0x01,r0
and 0x01,r0 	
not r0,r0
add 0x01,r0

loc_8C0D51FC:
tst r0,r0
bt loc_8C0D5204
bra loc_8C0D5206
mov 0x01,r3

loc_8C0D5204:
mov 0x00,r3 ; r3 set to 0x00

loc_8C0D5206:
mov.w @(loc_8C0D5214,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
mov.b r3,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D5210:
#data 0x0108

loc_8C0D5212:
#data 0x2000

loc_8C0D5214:
#data 0x012c
#data 0x0000
#data 0x42700000

#align4
loc_8C0D521C:
#data 0x43200000

#align4
loc_8C0D5220:
#data bank03.loc_8c034C38

loc_8C0D5224:
#data bank04.loc_8c042008

loc_8C0D5228:
#data bank03.loc_8c034D8c

loc_8C0D522C:
#data 0x3DCCCCCd


loc_8C0D5230:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0D52FC,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r4,r14
mov.l @(loc_8C0D5300,pc),r1 ; r1 set to 0x3DDF3B65
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r14),fr2
lds r1,fpul 	
mov.l @(loc_8C0D5304,pc),r1 ; r1 set to 0x3EDF3B65
fsts fpul,fr3
fsub fr3,fr2
lds r1,fpul 	
fmov.s fr2,@(r0,r14) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r14),fr1 ; r1 ??? bc r14 is ???	
fsts fpul,fr2
fadd fr2,fr1
fmov.s fr1,@(r0,r14) 	
mov.w @(0x1C,r14),r0 	
add 0xFF,r0 ; r0 set to 0x53
mov.w r0,@(0x1C,r14) 	
exts.w r0,r0 ; r0 ??	
tst r0,r0
bf loc_8C0D5270
mov 0x04,r0 ; r0 set to 0x04
mov.b r0,@(0x04,r14) 	
mov 0x0A,r0 ; r0 set to 0x0a
mov.w r0,@(0x1C,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D5270:
mov.w @(0x1C,r14),r0 	
cmp/pz r0
bf loc_8C0D527a
bra loc_8C0D5284
and 0x01,r0 	

loc_8C0D527A:
not r0,r0
add 0x01,r0
and 0x01,r0 	
not r0,r0
add 0x01,r0

loc_8C0D5284:
tst r0,r0
bt loc_8C0D528c
bra loc_8C0D528e
mov 0x01,r3

loc_8C0D528C:
mov 0x00,r3 ; r3 set to 0x00

loc_8C0D528E:
mov.w @(loc_8C0D52F8,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
mov.b r3,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D5298:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0D52FC,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r4,r14
mov.w @(0x1C,r14),r0 	
add 0xFF,r0
mov.w r0,@(0x1C,r14) 	
exts.w r0,r0
tst r0,r0
bf loc_8C0D52Be
mov 0x05,r0 ; r0 set to 0x05
mov.b r0,@(0x04,r14) 	
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8C0D52F8,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D52BE:
mov.w @(0x1C,r14),r0 	
cmp/pz r0
bf loc_8C0D52C8
bra loc_8C0D52D2
and 0x01,r0 	

loc_8C0D52C8:
not r0,r0
add 0x01,r0
and 0x01,r0 	
not r0,r0
add 0x01,r0

loc_8C0D52D2:
tst r0,r0
bt loc_8C0D52Da
bra loc_8C0D52Dc
mov 0x01,r2

loc_8C0D52DA:
mov 0x00,r2 ; r2 set to 0x00

loc_8C0D52DC:
mov.w @(loc_8C0D52F8,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
mov.b r2,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D52E6:
mov r4,r3
mov.l @(loc_8C0D5308,pc),r1 ; r1 set to 0x8C15CD64
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D52F8:
#data 0x012c
#data 0x0000

#align4
loc_8C0D52FC:
#data bank03.loc_8c034D8c

loc_8C0D5300:
#data 0x3DDF3B65

#align4
loc_8C0D5304:
#data 0x3EDF3B65

#align4
loc_8C0D5308:
#data 0x8c15CD64

loc_8C0D530C:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x55E54F22
#data 0x6043E401
#data 0x80E40009
#data 0x927F9180
#data 0x31EC907d
#data 0x32DCD341
#data 0x430B0E44
#data 0x90767094
#data 0x715061E3
#data 0x84D20E44
#data 0x84D180E2
#data 0xE05080E1
#data 0xFE37F3D6
#data 0xF3D6E054
#data 0x906AFE37
#data 0x0E3403Dc
#data 0x02DC7001
#data 0xE0300E24
#data 0x62D303Dc
#data 0x0E347250
#data 0x430BD333
#data 0xE024E00c
#data 0x02DC61E3
#data 0x0E247134
#data 0x035C6253
#data 0x0E347234
#data 0xD32DE031
#data 0x430B0E44
#data 0xD22CE00c
#data 0xE608E51b
#data 0x64E3420b
#data 0x65D3C72a
#data 0xE302F308
#data 0x64E39046
#data 0x9044FE37
#data 0x4F260D36
#data 0x6EF66DF6

#align4
loc_8C0D53A8:
#data 0x903DD125
#data 0x2FE6415a
#data 0xFFFB6E43
#data 0x4F22F30d
#data 0xF231F2E6
#data 0xF1E6FE27
#data 0xF215F28d
#data 0xFF8D8F01
#data 0xFEF7

loc_8C0D53CA:
#data 0x902e
#data 0x0536E302
#data 0x430BD31c
#data 0x600E64E3
#data 0x89074011
#data 0x80E4E002
#data 0x901EE300
#data 0x70DC0E34
#data 0xFEF7A00e

#align4
loc_8C0D53EC:
#data 0x00EC901e
#data 0x8B098802
#data 0xE200901a
#data 0xE51FD313
#data 0x64E30E24
#data 0xFFF94F26
#data 0x6EF6432b

#align4
loc_8C0D5408:
#data 0xFFF94F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0D5410:
mov r4,r3
mov.l @(loc_8C0D544C,pc),r1 ; r1 set to 0x8C15CD74
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x012c
#data 0x01A300Dc
#data 0x02C40108
#data 0x00000141

#align4
loc_8C0D5430:
#data bank12.loc_8c129560

loc_8C0D5434:
#data bank12.loc_8c1294C8

loc_8C0D5438:
#data bank03.loc_8c034C38
#data 0x3F333333
#data 0x3C1C09C0

#align4
loc_8C0D5444:
#data bank03.loc_8c034D8c

loc_8C0D5448:
#data bank04.loc_8c042008

loc_8C0D544C:
#data 0x8c15CD74

loc_8C0D5450:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x55E54F22
#data 0x6043E401
#data 0x80E40009
#data 0x92719172
#data 0x31EC906f
#data 0x32DCD339
#data 0x430B0E44
#data 0x90687094
#data 0x715061E3
#data 0x84D20E44
#data 0x84D180E2
#data 0xE05080E1
#data 0xFE37F3D6
#data 0xF3D6E054
#data 0x905CFE37
#data 0x0E3403Dc
#data 0x02DC7001
#data 0xE0300E24
#data 0x62D303Dc
#data 0x0E347250
#data 0x430BD32b
#data 0xE024E00c
#data 0x02DC61E3
#data 0x0E247134
#data 0x035C6253
#data 0x0E347234
#data 0xD325E031
#data 0x430B0E44
#data 0xD224E00c
#data 0xE609E51b
#data 0x64E3420b
#data 0x65D3C722
#data 0xE302F308
#data 0x64E39038
#data 0x9036FE37
#data 0x4F260D36
#data 0x6EF66DF6

#align4
loc_8C0D54EC:
#data 0x902FD11d
#data 0x2FE6415a
#data 0xFFFB6E43
#data 0x4F22F30d
#data 0xF231F2E6
#data 0xF1E6FE27
#data 0xF215F28d
#data 0xFF8D8F01
#data 0xFEF7

loc_8C0D550E:
#data 0x9020
#data 0x0536E302
#data 0x430BD314
#data 0x600E64E3
#data 0x89064011
#data 0x80E4E002
#data 0x9010E300
#data 0x70DC0E34
#data 0xFEF7

loc_8C0D552E:
#data 0x4F26
#data 0x000BFFF9
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D5536:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D554A,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0D5544:
mov.l @(loc_8C0D556C,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0D554A:
#data 0x012c
#data 0x01A300Dc
#data 0x02C40108

#align4
loc_8C0D5554:
#data bank12.loc_8c129560

loc_8C0D5558:
#data bank12.loc_8c1294C8

loc_8C0D555C:
#data bank03.loc_8c034C38
#data 0x3F333333
#data 0x3C1C09C0

#align4
loc_8C0D5568:
#data bank03.loc_8c034D8c

loc_8C0D556C:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0x60532F42
#data 0xD3540009
#data 0x80F4E503
#data 0x430BE600
#data 0x20086463
#data 0x64038D1a
#data 0x9094D350
#data 0x62F21434
#data 0x1426D54f
#data 0x023D6323
#data 0x0425938e
#data 0x0435E026
#data 0x908B938b
#data 0x6233334c
#data 0x53462532
#data 0x2211013d
#data 0x84F4E223
#data 0x2200324c
#data 0x00096043
#data 0x4F267F08
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0D55C8:
mov.l r14,@-r15
mov 0x23,r0 ; r0 set to 0x23
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0D56D8,pc),r0 ; r0 set to 0x8C15CD84
extu.b r3,r3
mov.l @(0x18,r14),r5
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0D55DE:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0D56DC,pc),r1 ; r1 set to 0x8C15CD8c
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0D55F2:
sts.l pr,@-r15
mov 0x01,r6 ; r6 set to 0x01
mov r6,r0 ; r0 set to 0x01
nop 	
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D56C4,pc),r1 ; r1 set to 0xDc
mov.w @(loc_8C0D56C4,pc),r2 ; r2 set to 0xDc
mov.w @(loc_8C0D56C2,pc),r0 ; r0 set to 0x12c
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0D56E0,pc),r3 ; r3 set to 0x8C129560
add r5,r2 ; r2 ??? bc r5 is ???	
mov.b r6,@(r0,r4) 	
jsr @r3
add 0x94,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D56C2,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0D56C6,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D56E4,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x00,r3 ; r3 set to 0x00
mov r4,r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov r5,r2
mov.b r3,@(r0,r4) 	
add 0x34,r1
mov.l @(loc_8C0D56E4,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(loc_8C0D56E8,pc),r2 ; r2 set to 0x8C034C38
mov 0x1B,r5 ; r5 set to 0x1b
mov 0x00,r6 ; r6 set to 0x00
jmp @r2
lds.l @r15+,pr 	

loc_8C0D5666:
#data 0x2FE6
#data 0x2FD66143
#data 0x4F226253
#data 0x7234D31c
#data 0x6D536E43
#data 0x430B7134
#data 0x84E1E00c
#data 0x84D16303
#data 0x8B093300
#data 0x30DC901e
#data 0x88018401
#data 0xB0D58904
#data 0x600C64E3
#data 0x89082008

#align4
loc_8C0D569C:
#data 0x901065D3
#data 0x64E3E300
#data 0x4F260E34
#data 0xA0B56DF6
#data 0x6EF6

loc_8C0D56AE:
#data 0x4F26
#data 0x64E3D20e
#data 0x422B6DF6
#data 0x01306EF6
#data 0x00CC1700
#data 0x0158

loc_8C0D56C2:
#data 0x012c

loc_8C0D56C4:
#data 0x00Dc

loc_8C0D56C6:
#data 0x01A3
#data 0x00000150

#align4
loc_8C0D56CC:
#data bank04.loc_8c044F12

loc_8C0D56D0:
#data loc_8c0d55C8
#data 0x8C28C6C0

#align4
loc_8C0D56D8:
#data 0x8c15CD84

loc_8C0D56DC:
#data 0x8c15CD8c

loc_8C0D56E0:
#data bank12.loc_8c129560

loc_8C0D56E4:
#data bank12.loc_8c1294C8

loc_8C0D56E8:
#data bank03.loc_8c034C38

loc_8C0D56EC:
#data bank03.loc_8c034D8c


loc_8C0D56F0:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0D5828,pc),r1 ; r1 set to 0x8C15CD9c
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0D5704:
mov.l r14,@-r15
mov 0x01,r14 ; r14 set to 0x01
sts.l pr,@-r15
mov r14,r0 ; r0 set to 0x01
nop 	
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D5820,pc),r1 ; r1 set to 0xDc
mov.w @(loc_8C0D5820,pc),r2 ; r2 set to 0xDc
mov.w @(loc_8C0D581E,pc),r0 ; r0 set to 0x12c
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0D582C,pc),r3 ; r3 set to 0x8C129560
add r5,r2 ; r2 ??? bc r5 is ???	
mov.b r14,@(r0,r4) 	
jsr @r3
add 0x94,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D581E,pc),r0 ; r0 set to 0x12c
mov r4,r1
add 0x50,r1
mov.b r14,@(r0,r4) 	
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
mov.w @(loc_8C0D5822,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D5830,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x00,r3 ; r3 set to 0x00
mov r4,r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov r5,r2
mov.b r3,@(r0,r4) 	
add 0x34,r1
mov.l @(loc_8C0D5830,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
lds.l @r15+,pr 	
mov.l @(loc_8C0D5834,pc),r2 ; r2 set to 0x8C034C38
mov r14,r6 ; r6 set to 0x01
mov 0x1B,r5 ; r5 set to 0x1b
jmp @r2
mov.l @r15+,r14

loc_8C0D577C:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b @(0x01,r14),r0 	
mov r0,r3
mov.b @(0x01,r13),r0 	
cmp/eq r0,r3
bf loc_8C0D579e
bsr loc_8C0D5840
mov r14,r4
extu.b r0,r0
tst r0,r0
bt loc_8C0D57Aa
bra loc_8C0D57D4
nop 	

loc_8C0D579E:
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
mov.l @r15+,r13
bra loc_8C0D5818
mov.l @r15+,r14

loc_8C0D57AA:
#data 0x903b
#data 0x233803Ec
#data 0x62D38B06
#data 0x61E3D31e
#data 0x71347234
#data 0xE00C430b

#align4
loc_8C0D57C0:
#data 0x32DC9231
#data 0x20088421
#data 0x902C891b
#data 0x840130Dc
#data 0x8B088809


loc_8C0D57D4:
mov r13,r5
mov.w @(loc_8C0D581E,pc),r0 ; r0 set to 0x12c
mov 0x00,r2 ; r2 set to 0x00
mov r14,r4
mov.b r2,@(r0,r14) 	
lds.l @r15+,pr 	
mov.l @r15+,r13
bra loc_8C0D5818
mov.l @r15+,r14

loc_8C0D57E6:
#data 0x971e
#data 0xD313E51b
#data 0x37DCE601
#data 0x67038471
#data 0x430B77Ff
#data 0x921464E3
#data 0x32DCE000
#data 0x8021

loc_8C0D5802:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D580A:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D581E,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0D5818:
mov.l @(loc_8C0D583C,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0D581E:
#data 0x012c

loc_8C0D5820:
#data 0x00Dc

loc_8C0D5822:
#data 0x01A3
#data 0x01500141

#align4
loc_8C0D5828:
#data 0x8c15CD9c

loc_8C0D582C:
#data bank12.loc_8c129560

loc_8C0D5830:
#data bank12.loc_8c1294C8

loc_8C0D5834:
#data bank03.loc_8c034C38

loc_8C0D5838:
#data bank03.loc_8c034CD6

loc_8C0D583C:
#data bank04.loc_8c0450C0

loc_8C0D5840:
#data 0x54469011
#data 0x600C004c
#data 0x8B078815
#data 0x004C900c
#data 0x8815600c
#data 0x84458B02
#data 0x89012008

#align4
loc_8C0D585C:
#data 0xE001000b
;-------------------------------------------------------------------------------

#align4
loc_8C0D5860:
#data 0x000BE000
#data 0x01590009
#data 0x000001D0

#align4
loc_8C0D586C:
#data 0x7FF84F22
#data 0xE600D34b
#data 0x2F501F41
#data 0x430BE503
#data 0x20086463
#data 0x64038D16
#data 0x9083D347
#data 0x52F11434
#data 0x14266323
#data 0x937E023d
#data 0xE0260425
#data 0x907B0435
#data 0x032D5246
#data 0x633D9079
#data 0xE0230436
#data 0x042462F0
#data 0x00096043

#align4
loc_8C0D58B0:
#data 0x4F267F08
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0D58B8:
mov.l r14,@-r15
mov 0x23,r0 ; r0 set to 0x23
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0D59A8,pc),r0 ; r0 set to 0x8C15CDAc
extu.b r3,r3
mov.l @(0x18,r14),r5
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0D58CE:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0D59AC,pc),r1 ; r1 set to 0x8C15CDCc
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0D58E2:
mov.l r14,@-r15
mov 0x01,r6 ; r6 set to 0x01
sts.l pr,@-r15
mov r6,r0 ; r0 set to 0x01
nop 	
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D599A,pc),r1 ; r1 set to 0xDc
mov.w @(loc_8C0D599A,pc),r2 ; r2 set to 0xDc
mov.w @(loc_8C0D5998,pc),r0 ; r0 set to 0x12c
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0D59B0,pc),r3 ; r3 set to 0x8C129560
add r5,r2 ; r2 ??? bc r5 is ???	
mov.b r6,@(r0,r4) 	
jsr @r3
add 0x94,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D5998,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0D599C,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D59B4,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov r4,r1
mov.b @(r0,r5),r2
add 0x34,r1
mov.b r2,@(r0,r4) 	
mov 0xFF,r2 ; r2 set to 0xFFFFFFFf
mov.b @(r0,r5),r3 ; r3 ??? bc r5 is ???	
mov.b r3,@(r0,r4) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r2,@(r0,r4) 	
mov r5,r2 ; r2 ??? bc r5 is ???	
mov.l @(loc_8C0D59B4,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.w @(loc_8C0D599E,pc),r0 ; r0 set to 0x108
fldi0 fr3
fmov.s fr3,@(r0,r4) 	
mov 0x00,r0 ; r0 set to 0x00
mov.w r0,@(0x1C,r4) 	
mov 0x23,r0 ; r0 set to 0x23
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
mov.l @(loc_8C0D59B8,pc),r14 ; r14 set to 0x8C034C38
extu.b r0,r0
cmp/eq 0x07,r0 	
bt loc_8C0D597c
cmp/eq 0x00,r0 	
bt loc_8C0D597c
cmp/eq 0x01,r0 	
bt loc_8C0D5980
cmp/eq 0x02,r0 	
bt loc_8C0D5984
bra loc_8C0D598a
nop 	

loc_8C0D597C:
bra loc_8C0D5986
mov 0x0B,r6

loc_8C0D5980:
bra loc_8C0D5986
mov 0x0C,r6

loc_8C0D5984:
#data 0xE60d


loc_8C0D5986:
jsr @r14
mov 0x1B,r5 ; r5 set to 0x1b

loc_8C0D598A:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x17060130
#data 0x00CC0158

loc_8C0D5998:
#data 0x012c

loc_8C0D599A:
#data 0x00Dc

loc_8C0D599C:
#data 0x01A3

loc_8C0D599E:
#data 0x0108

#align4
loc_8C0D59A0:
#data bank04.loc_8c044F12

loc_8C0D59A4:
#data loc_8c0d58B8

loc_8C0D59A8:
#data 0x8c15CDAc

loc_8C0D59AC:
#data 0x8c15CDCc

loc_8C0D59B0:
#data bank12.loc_8c129560

loc_8C0D59B4:
#data bank12.loc_8c1294C8

loc_8C0D59B8:
#data bank03.loc_8c034C38


loc_8C0D59BC:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.l r12,@-r15
mov.l r11,@-r15
mov 0x02,r11 ; r11 set to 0x02
sts.l pr,@-r15
mov.b @(0x01,r14),r0 	
mov r0,r3
mov.b @(0x01,r13),r0 	
cmp/eq r0,r3
bt/s loc_8C0D59Dc
mov 0x00,r12 ; r12 set to 0x00
bra loc_8C0D5AD8
nop 	

loc_8C0D59DC:
mov 0x23,r0 ; r0 set to 0x23
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
extu.b r0,r0
cmp/eq 0x07,r0 	
bf loc_8C0D59F6
mov.l @(0x18,r14),r0
mov.l @(0x18,r0),r0
mov.b @(0x05,r0),r0 	
extu.b r0,r0
cmp/eq 0x03,r0 	
bt loc_8C0D5A06
bra loc_8C0D5A16
nop 	

loc_8C0D59F6:
#data 0x904f
#data 0x032D52E6
#data 0x633D904d
#data 0x323002Ee
#data 0x8907

loc_8C0D5A06:
#data 0x60B3
#data 0x80E40009
#data 0x904565D3
#data 0xB1F70EC4
#data 0x64E3


loc_8C0D5A16:
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov.b r2,@(r0,r14) 	
mov.w @(0x1C,r14),r0 	
add 0x01,r0 ; r0 set to 0x25
mov.w r0,@(0x1C,r14) 	
mov 0x23,r0 ; r0 set to 0x23
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
extu.b r0,r0
cmp/eq 0x07,r0 	
bt/s loc_8C0D5A66
mov 0x04,r4 ; r4 set to 0x04
mov r13,r2
mov.l @(loc_8C0D5AA0,pc),r3 ; r3 set to 0x8C1294C8
mov r14,r1
add 0x34,r2
add 0x34,r1
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.w @(0x1C,r14),r0 	
cmp/ge r11,r0
bt loc_8C0D5A4c
mov.l @(loc_8C0D5AA4,pc),r1 ; r1 set to 0x3EB33333
mov.w @(loc_8C0D5A9E,pc),r0 ; r0 set to 0x108
lds r1,fpul 	
bra loc_8C0D5A82
fsts fpul,fr3

loc_8C0D5A4C:
cmp/ge r4,r0
bt loc_8C0D5A56
mova @(loc_8C0D5AA8,pc),r0  ; r0 init to 0x8C0D5AA8
bra loc_8C0D5A92
fmov.s @r0,fr3

loc_8C0D5A56:
mov.l @(loc_8C0D5AAC,pc),r1 ; r1 set to 0x3D333333
mov.w @(loc_8C0D5A9E,pc),r0 ; r0 set to 0x108
lds r1,fpul 	
fmov.s @(r0,r14),fr2
fsts fpul,fr3
fsub fr3,fr2
bra loc_8C0D5AC6
fmov.s fr2,@(r0,r14) 	

loc_8C0D5A66:
mov r13,r2
mov.l @(loc_8C0D5AA0,pc),r3 ; r3 set to 0x8C1294C8
mov r14,r1
add 0x34,r2
add 0x34,r1
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.w @(0x1C,r14),r0 	
cmp/ge r11,r0
bt loc_8C0D5A8a
mov.l @(loc_8C0D5AB0,pc),r1 ; r1 set to 0x3E800000
mov.w @(loc_8C0D5A9E,pc),r0 ; r0 set to 0x108
lds r1,fpul 	
fsts fpul,fr3

loc_8C0D5A82:
fmov.s @(r0,r14),fr2
fadd fr3,fr2
bra loc_8C0D5AC6
fmov.s fr2,@(r0,r14) 	

loc_8C0D5A8A:
cmp/ge r4,r0
bt loc_8C0D5AB8
mova @(loc_8C0D5AB4,pc),r0  ; r0 init to 0x8C0D5AB4
fmov.s @r0,fr3

loc_8C0D5A92:
mov.w @(loc_8C0D5A9E,pc),r0 ; r0 set to 0x108, r0 set to 0x108
bra loc_8C0D5AC6
fmov.s fr3,@(r0,r14) 	
#data 0x00CC0158
#data 0x012c

loc_8C0D5A9E:
#data 0x0108

#align4
loc_8C0D5AA0:
#data bank12.loc_8c1294C8

loc_8C0D5AA4:
#data 0x3EB33333

#align4
loc_8C0D5AA8:
#data 0x3F333333

#align4
loc_8C0D5AAC:
#data 0x3D333333

#align4
loc_8C0D5AB0:
#data 0x3E800000

#align4
loc_8C0D5AB4:
#data 0x3F000000


loc_8C0D5AB8:
mov.l @(loc_8C0D5BF8,pc),r1 ; r1 set to 0x3D000000
mov.w @(loc_8C0D5BEA,pc),r0 ; r0 set to 0x108
lds r1,fpul 	
fmov.s @(r0,r14),fr2
fsts fpul,fr3
fsub fr3,fr2
fmov.s fr2,@(r0,r14) 	

loc_8C0D5AC6:
mov.w @(loc_8C0D5BEC,pc),r0 ; r0 set to 0x150, r0 set to 0x150
add r13,r0 ; r0 ??? bc r13 is ???, r0 ??? bc r13 is ???	
mov.b @(0x01,r0),r0 	
cmp/eq 0x03,r0 	
bf loc_8C0D5AE8
mov 0x03,r0 ; r0 set to 0x03, r0 set to 0x03
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0D5BEE,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
mov.b r12,@(r0,r14) 	

loc_8C0D5AD8:
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
bra loc_8C0D5E04
mov.l @r15+,r14

#align4
loc_8C0D5AE8:
#data 0x32DC9280
#data 0x20088421
#data 0x977B890f
#data 0xD341E51b
#data 0x847137Dc
#data 0x90776703
#data 0x06EC77Ff
#data 0x64E3430b
#data 0x32DC9270
#data 0x000960C3
#data 0x8021

loc_8C0D5B12:
#data 0x4F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D5B1E:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0D5C00,pc),r1 ; r1 set to 0x8C15CDDc
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0D5B32:
mov.l r8,@-r15
mov 0x01,r6 ; r6 set to 0x01
sts.l pr,@-r15
mov r6,r0 ; r0 set to 0x01
nop 	
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D5BF2,pc),r1 ; r1 set to 0xDc
mov.w @(loc_8C0D5BF2,pc),r2 ; r2 set to 0xDc
mov.w @(loc_8C0D5BEE,pc),r0 ; r0 set to 0x12c
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0D5C04,pc),r3 ; r3 set to 0x8C129560
add r5,r2 ; r2 ??? bc r5 is ???	
mov.b r6,@(r0,r4) 	
jsr @r3
add 0x94,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D5BEE,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0D5BF4,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D5C08,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x07,r3 ; r3 set to 0x07
mov r4,r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov r5,r2
mov.b r3,@(r0,r4) 	
add 0x34,r1
mov.l @(loc_8C0D5C08,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x1E,r0 ; r0 set to 0x1e
mov.w r0,@(0x1C,r4) 	
mova @(loc_8C0D5C0C,pc),r0  ; r0 set to 0x8C0D5C0c
fmov.s @r0,fr4
mov 0x23,r0 ; r0 set to 0x23
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
extu.b r0,r0
cmp/eq 0x03,r0 	
bt loc_8C0D5BC0
cmp/eq 0x04,r0 	
bt loc_8C0D5C18
cmp/eq 0x05,r0 	
bt loc_8C0D5C42
cmp/eq 0x06,r0 	
bt loc_8C0D5C70
bra loc_8C0D5CA0
nop 	

loc_8C0D5BC0:
mov.w @(loc_8C0D5BF6,pc),r0 ; r0 set to 0x130
mov 0x34,r8 ; r8 set to 0x34
mov.w @(r0,r4),r3
tst r3,r3
bt/s loc_8C0D5BD4
add r4,r8 ; r8 ??? bc r4 is ???	
mov.l @(loc_8C0D5C10,pc),r1 ; r1 set to 0x42820000
lds r1,fpul 	
bra loc_8C0D5BDa
fsts fpul,fr3

loc_8C0D5BD4:
mov.l @(loc_8C0D5C14,pc),r2 ; r2 set to 0xC2820000
lds r2,fpul 	
fsts fpul,fr3

loc_8C0D5BDA:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fadd fr3,fr2
fmov.s fr2,@r8
fmov.s @(r0,r4),fr3
fadd fr4,fr3
bra loc_8C0D5CA0
fmov.s fr3,@(r0,r4) 	

loc_8C0D5BEA:
#data 0x0108

loc_8C0D5BEC:
#data 0x0150

loc_8C0D5BEE:
#data 0x012c
#data 0x0158

loc_8C0D5BF2:
#data 0x00Dc

loc_8C0D5BF4:
#data 0x01A3

loc_8C0D5BF6:
#data 0x0130

#align4
loc_8C0D5BF8:
#data 0x3D000000

#align4
loc_8C0D5BFC:
#data bank03.loc_8c034CD6

loc_8C0D5C00:
#data 0x8c15CDDc

loc_8C0D5C04:
#data bank12.loc_8c129560

loc_8C0D5C08:
#data bank12.loc_8c1294C8

loc_8C0D5C0C:
#data 0x43780000

#align4
loc_8C0D5C10:
#data 0x42820000

#align4
loc_8C0D5C14:
#data 0xC2820000


loc_8C0D5C18:
mov.w @(loc_8C0D5D00,pc),r0 ; r0 set to 0x130
mov 0x34,r8 ; r8 set to 0x34
mov.w @(r0,r4),r3
tst r3,r3
bt/s loc_8C0D5C2c
add r4,r8 ; r8 ??? bc r4 is ???	
mov.l @(loc_8C0D5D04,pc),r1 ; r1 set to 0x41500000
lds r1,fpul 	
bra loc_8C0D5C32
fsts fpul,fr3

loc_8C0D5C2C:
mov.l @(loc_8C0D5D08,pc),r2 ; r2 set to 0xC1500000
lds r2,fpul 	
fsts fpul,fr3

loc_8C0D5C32:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(loc_8C0D5D0C,pc),r1 ; r1 set to 0x43810000, r1 set to 0x43810000
fadd fr3,fr2
lds r1,fpul 	
fmov.s fr2,@r8
bra loc_8C0D5C6a
fsts fpul,fr3

loc_8C0D5C42:
mov.w @(loc_8C0D5D00,pc),r0 ; r0 set to 0x130
mov 0x34,r8 ; r8 set to 0x34
mov.w @(r0,r4),r3
tst r3,r3
bt/s loc_8C0D5C56
add r4,r8 ; r8 ??? bc r4 is ???	
mov.l @(loc_8C0D5D08,pc),r1 ; r1 set to 0xC1500000
lds r1,fpul 	
bra loc_8C0D5C5c
fsts fpul,fr3

loc_8C0D5C56:
#data 0xD22b
#data 0xF30D425a

#align4
loc_8C0D5C5C:
#data 0xE038F288
#data 0xF230D12b
#data 0xF30D415a
#data 0xF82a


loc_8C0D5C6A:
fmov.s @(r0,r4),fr2
bra loc_8C0D5C9e
fadd fr3,fr2

loc_8C0D5C70:
mov.w @(loc_8C0D5D00,pc),r0 ; r0 set to 0x130
mov 0x34,r8 ; r8 set to 0x34
mov.w @(r0,r4),r3
tst r3,r3
bt/s loc_8C0D5C84
add r4,r8 ; r8 ??? bc r4 is ???	
mov.l @(loc_8C0D5D14,pc),r1 ; r1 set to 0x42820000
lds r1,fpul 	
bra loc_8C0D5C8a
fsts fpul,fr3

#align4
loc_8C0D5C84:
#data 0x425AD224
#data 0xF30d

loc_8C0D5C8A:
#data 0xF288
#data 0xF230E038
#data 0xF346F82a
#data 0xF437F340
#data 0xF208C720
#data 0x9031

loc_8C0D5C9E:
#data 0xF427


loc_8C0D5CA0:
mov.w @(loc_8C0D5D00,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r3
tst r3,r3
bt loc_8C0D5CAe
mova @(loc_8C0D5D20,pc),r0  ; r0 set to 0x8C0D5D20
bra loc_8C0D5CB2
fmov.s @r0,fr3

loc_8C0D5CAE:
mova @(loc_8C0D5D24,pc),r0  ; r0 init to 0x8C0D5D24
fmov.s @r0,fr3

loc_8C0D5CB2:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0D5D00,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r4),r3
tst r3,r3
bt loc_8C0D5CC4
mova @(loc_8C0D5D28,pc),r0  ; r0 set to 0x8C0D5D28, r0 set to 0x8C0D5D28
bra loc_8C0D5CC8
fmov.s @r0,fr3

#align4
loc_8C0D5CC4:
#data 0xF308C719

#align4
loc_8C0D5CC8:
#data 0xF437E068
#data 0xF308C718
#data 0xE378E060
#data 0xE06CF437
#data 0xF34DF39d
#data 0x7064F437
#data 0xE0230436
#data 0x600C004c
#data 0x8F048806
#data 0xC711E60a
#data 0x9006F308
#data 0xF437

loc_8C0D5CF6:
#data 0x4F26
#data 0xE51BD30f
#data 0x68F6432b

loc_8C0D5D00:
#data 0x0130
#data 0x0108

#align4
loc_8C0D5D04:
#data 0x41500000

#align4
loc_8C0D5D08:
#data 0xC1500000

#align4
loc_8C0D5D0C:
#data 0x43810000
#data 0x43898000

#align4
loc_8C0D5D14:
#data 0x42820000
#data 0xC2820000
#data 0x3F333333

#align4
loc_8C0D5D20:
#data 0xC1A00000

#align4
loc_8C0D5D24:
#data 0x41A00000

#align4
loc_8C0D5D28:
#data 0x3E4CCCCd
#data 0xBE4CCCCd
#data 0x41200000
#data 0x3ECCCCCd

#align4
loc_8C0D5D38:
#data bank03.loc_8c034C38


loc_8C0D5D3C:
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
add 0x70,r0 ; r0 set to 0xD0
mov.l @(r0,r14),r3
mova @(loc_8C0D5E0C,pc),r0  ; r0 set to 0x8C0D5E0c
fmov.s @r0,fr2
mova @(loc_8C0D5E10,pc),r0  ; r0 set to 0x8C0D5E10
neg r3,r3
fmov.s @r0,fr1
lds r3,fpul 	
mova @(loc_8C0D5E14,pc),r0  ; r0 set to 0x8C0D5E14
fmov.s @r0,fr0 ; r0 ??	
mov 0x48,r0 ; r0 set to 0x48
mov.l @(loc_8C0D5E18,pc),r2 ; r2 set to 0xFFFf
float fpul,fr3
mov.l @(r0,r14),r1
fmul fr2,fr3
fdiv fr1,fr3
fadd fr0,fr3
ftrc fr3,fpul 	
sts fpul,r3
and r2,r3
add r3,r1
mov.l r1,@(r0,r14) 	
mov.b @(0x01,r14),r0 	
mov r0,r3 ; r3 set to 0x48
mov.b @(0x01,r5),r0 	
cmp/eq r0,r3
bt loc_8C0D5DB8
bsr loc_8C0D5E04
mov r14,r4
bra loc_8C0D5DCe
nop 	

loc_8C0D5DB8:
mov.w @(0x1C,r14),r0 	
add 0xFF,r0
mov.w r0,@(0x1C,r14) 	
exts.w r0,r0
tst r0,r0
bf loc_8C0D5DE6
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x04,r14) 	
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8C0D5E0A,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	

loc_8C0D5DCE:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fldi0 fr4
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D5DE6:
lds.l @r15+,pr 	
mov.l @(loc_8C0D5E1C,pc),r3 ; r3 set to 0x8C034D8c
mov r14,r4
jmp @r3
mov.l @r15+,r14
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D5DF6:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D5E0A,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0D5E04:
mov.l @(loc_8C0D5E20,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0D5E0A:
#data 0x012c

#align4
loc_8C0D5E0C:
#data 0x47800000

#align4
loc_8C0D5E10:
#data 0x43B40000

#align4
loc_8C0D5E14:
#data 0x3F000000

#align4
loc_8C0D5E18:
#data 0x0000FFFf

#align4
loc_8C0D5E1C:
#data bank03.loc_8c034D8c

loc_8C0D5E20:
#data bank04.loc_8c0450C0

loc_8C0D5E24:
#data 0x7FF84F22
#data 0xE600D354
#data 0x2F501F41
#data 0x430BE503
#data 0x20086463
#data 0x64038D07
#data 0xE020D350
#data 0x52F11434
#data 0x63F01426
#data 0x0434

loc_8C0D5E4A:
#data 0x7F08
#data 0x000B4F26
#data 0x4F226043
#data 0xD3497FF8
#data 0x1F41E600
#data 0xE5042F50
#data 0x6463430b
#data 0x8D072008
#data 0xD3456403
#data 0x1434E020
#data 0x142652F1
#data 0x043463F0
#data 0x4F267F08
#data 0x6043000b
;-------------------------------------------------------------------------------

#align4
loc_8C0D5E80:
#data 0x7FF04F22
#data 0x1F521F43
#data 0x00096063
#data 0xE503D33b
#data 0x80F4E600
#data 0x430B2F70
#data 0x20086463
#data 0x64038D0d
#data 0xE120D337
#data 0x1434314c
#data 0x142652F3
#data 0x143553F2
#data 0x210084F4
#data 0x63F0E023
#data 0x0434

loc_8C0D5EBA:
#data 0x7F10
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0D5EC2:
mov r4,r3
mov.l @(loc_8C0D5F84,pc),r1 ; r1 set to 0x8C15CEA8
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D5ED4:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D5F6E,pc),r3 ; r3 set to 0x1800
mov.l r13,@-r15
mov.w @(loc_8C0D5F70,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0D5F70,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(0x18,r14),r4
mov.b r0,@(0x04,r14) 	
mov 0x26,r0 ; r0 set to 0x26
mov.w r3,@(r0,r14) 	
mov.w @(loc_8C0D5F72,pc),r0 ; r0 set to 0xC0
mov.l @(loc_8C0D5F88,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C0D5F74,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0D5F76,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D5F8C,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov 0x24,r1 ; r1 set to 0x24
add r14,r1 ; r1 ??? bc r14 is ???	
mov.b r2,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r13
mov.l @(loc_8C0D5F90,pc),r2 ; r2 set to 0x8C15CDEc
extu.b r13,r13
mov r13,r3 ; r3 ??? bc r13 is ???	
shll2 r3
shll r13
add r3,r13
add r2,r13
mov.b @(0x04,r13),r0 	
mov.b r0,@r1
mova @(loc_8C0D5F94,pc),r0  ; r0 set to 0x8C0D5F94
fmov.s @r0,fr4
mov.w @(loc_8C0D5F78,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bf loc_8C0D5F98
mov.w @r13,r3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r4),fr2 ; r2 ??? bc r4 is ???	
lds r3,fpul 	
fmov fr4,fr0 ; r0 ??? bc r4 is ???	
float fpul,fr3
bra loc_8C0D5FA6
fmac fr0,fr3,fr2

loc_8C0D5F6E:
#data 0x1800

loc_8C0D5F70:
#data 0x00Dc

loc_8C0D5F72:
#data 0x00C0

loc_8C0D5F74:
#data 0x012c

loc_8C0D5F76:
#data 0x01A3

loc_8C0D5F78:
#data 0x0130
#data 0x0000

#align4
loc_8C0D5F7C:
#data bank04.loc_8c044F12

loc_8C0D5F80:
#data loc_8c0d5EC2

loc_8C0D5F84:
#data 0x8c15CEA8

loc_8C0D5F88:
#data bank12.loc_8c129560

loc_8C0D5F8C:
#data bank12.loc_8c1294C8

loc_8C0D5F90:
#data 0x8c15CDEc

loc_8C0D5F94:
#data 0x3FD55555


loc_8C0D5F98:
mov.w @r13,r3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r4),fr2
lds r3,fpul 	
float fpul,fr3
fmul fr4,fr3
fsub fr3,fr2

loc_8C0D5FA6:
fmov.s fr2,@(r0,r14) 	
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
mov.w @(0x02,r13),r0 	
mov r0,r3 ; r3 set to 0x34
lds r3,fpul 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(loc_8C0D60D4,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
fmov.s @(r0,r4),fr2
mova @(loc_8C0D60D0,pc),r0  ; r0 set to 0x8C0D60D0, r0 set to 0x8C0D60D0
float fpul,fr3
fmov.s @r0,fr0 ; r0 ??, r0 ??	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmac fr0,fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov.b @(0x05,r13),r0 	
mov r0,r6 ; r6 set to 0x38, r6 set to 0x38
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r14,r4
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0D5FD2:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20, r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
mov.l @(loc_8C0D60D8,pc),r0 ; r0 set to 0x8C15CEB8, r0 set to 0x8C15CEB8, r0 set to 0x8C15CEB8
extu.b r3,r3
mov.l @(0x18,r14),r5 ; r5 ??? bc r14 is ???, r5 ??? bc r14 is ???	
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

#align4
loc_8C0D5FE8:
#data 0x2FE6906b
#data 0x2FD66E53
#data 0x600C00Ec
#data 0x8B0E8815
#data 0x00EC9064
#data 0x8802600c
#data 0x90608B09
#data 0x02ED9360
#data 0x3230622d
#data 0x905C8B03
#data 0x211801Ec
#data 0x8B06

loc_8C0D6016:
#data 0x8444
#data 0x7001E300
#data 0x90558044
#data 0x0434A036

#align4
loc_8C0D6024:
#data 0xD22DE020
#data 0xC72D0D4c
#data 0x6DDCF408
#data 0x63D3904d
#data 0x43084D00
#data 0x03ED3D3c
#data 0x23383D2c
#data 0x04358F08
#data 0xE03463D1
#data 0x435AF2E6
#data 0xF32DF04c
#data 0xF23EA007

#align4
loc_8C0D6054:
#data 0xE03463D1
#data 0x435AF2E6
#data 0xF342F32d
#data 0xF231

loc_8C0D6062:
#data 0xF427
#data 0x85D1E70f
#data 0x6303E51b
#data 0xE038435a
#data 0xF2E6D31c
#data 0xF32DC716
#data 0xE038F008
#data 0xF427F23e
#data 0x00EC9023
#data 0x84D52709
#data 0x66036DF6
#data 0x6EF6432b

#align4
loc_8C0D6090:
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D6096:
mov.l r14,@-r15
mov r4,r14
mov.l @(loc_8C0D60E8,pc),r1 ; r1 set to 0x8C15CF10
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(0x05,r14),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jsr @r3
mov r5,r13
mov.w @(loc_8C0D60CE,pc),r0 ; r0 set to 0x130
mov.w @(r0,r13),r3
tst r3,r3
bf/s loc_8C0D60Ec
mov.w r3,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r14),fr3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr2
bra loc_8C0D60F6
fadd fr3,fr2
#data 0x01D0
#data 0x015801E9
#data 0x01401502
#data 0x012c

loc_8C0D60CE:
#data 0x0130

#align4
loc_8C0D60D0:
#data 0x40092492

#align4
loc_8C0D60D4:
#data bank03.loc_8c034C38

loc_8C0D60D8:
#data 0x8c15CEB8

loc_8C0D60DC:
#data 0x8c15CDEc
#data 0x3FD55555

#align4
loc_8C0D60E4:
#data bank03.loc_8c034CD6

loc_8C0D60E8:
#data 0x8c15CF10


loc_8C0D60EC:
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r14),fr3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr2
fsub fr3,fr2

loc_8C0D60F6:
fmov.s fr2,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s @(r0,r14),fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r13),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
mov.b @(r0,r13),r3
mov.b r3,@(r0,r14) 	
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D6112:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov r4,r14
mov 0xFF,r4 ; r4 set to 0xFFFFFFFf
mov.l @(loc_8C0D6258,pc),r13 ; r13 set to 0x8C03319e
mov.l r5,@r15
mov.b @(0x05,r14),r0 	
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r4,@(r0,r14) 	
mov.w @(loc_8C0D6248,pc),r0 ; r0 set to 0x12d
mov.b r4,@(r0,r14) 	
mov.w @(loc_8C0D624A,pc),r0 ; r0 set to 0x1A4
mov.l @r15,r3
mov.b @(r0,r3),r2
mov.l @(loc_8C0D6254,pc),r0 ; r0 set to 0x8C1355D4
extu.b r2,r2
mov.b @(r0,r2),r3
mov.w @(loc_8C0D624C,pc),r0 ; r0 set to 0x12e
jsr @r13
mov.w r3,@(r0,r14) 	
and 0x1F,r0 	
fldi0 fr3
add 0x3C,r0 ; r0 set to 0x16a
mov.l @(loc_8C0D6260,pc),r2 ; r2 set to 0x8C15CDEc
mov.w r0,@(0x1C,r14) 	
mov.w @(loc_8C0D624E,pc),r0 ; r0 set to 0x108
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0D625C,pc),r0  ; r0 set to 0x8C0D625c
fmov.s @r0,fr3
mov 0x64,r0 ; r0 set to 0x64
fmov.s fr3,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r12
extu.b r12,r12
mov r12,r3
shll2 r3
shll r12
add r3,r12
add r2,r12
jsr @r13
mov.w @r12,r8
and 0x3F,r0 	
exts.w r0,r0 ; r0 ??	
add r0,r8
lds r8,fpul 	
mova @(loc_8C0D6264,pc),r0  ; r0 set to 0x8C0D6264
fmov.s @r0,fr2 ; r2 ??	
mov 0x5C,r0 ; r0 set to 0x5c
float fpul,fr3
fmul fr2,fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(0x02,r12),r0 	
jsr @r13
mov r0,r8 ; r8 set to 0x5c
and 0x3F,r0 	
mov.l @(loc_8C0D6260,pc),r1 ; r1 set to 0x8C15CDEc
exts.w r0,r0 ; r0 ??	
add r0,r8 ; r8 ??? bc r0 is ???	
lds r8,fpul 	
mova @(loc_8C0D6268,pc),r0  ; r0 set to 0x8C0D6268
fmov.s @r0,fr2
mov 0x60,r0 ; r0 set to 0x60
float fpul,fr3
fmul fr2,fr3
fmov.s fr3,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3
extu.b r3,r3
mov r3,r2
shll2 r2
shll r3
add r2,r3
add r1,r3
jsr @r13
mov.l r3,@(0x04,r15) 	
mov.l @(loc_8C0D626C,pc),r2 ; r2 set to 0x8C12939c
mov r0,r1 ; r1 set to 0x20
jsr @r2
mov 0x0A,r0 ; r0 set to 0x0a
mov.l r0,@-r15
mov r0,r7 ; r7 set to 0x0a
mov.l @(0x08,r15),r3
mov.b @(0x05,r3),r0 	
jsr @r13
mov r0,r8 ; r8 set to 0x0a
mov.l @(loc_8C0D626C,pc),r2 ; r2 set to 0x8C12939c
mov r0,r1 ; r1 set to 0x0a
jsr @r2
mov 0x03,r0 ; r0 set to 0x03
mov.l @(loc_8C0D6270,pc),r3 ; r3 set to 0x8C034CD6
mov r8,r6 ; r6 set to 0x0a
mov r14,r4 ; r4 ??? bc r14 is ???	
add r0,r6 ; r6 set to 0x0d
mov 0x1B,r5 ; r5 set to 0x1b
jsr @r3
mov.l @r15+,r7 ; r7 ??? bc r15 is ???	
mov.l @r15,r5 ; r5 ??? bc r15 is ???	
mov r14,r4
add 0x08,r15
lds.l @r15+,pr 	
mov.l @r15+,r8 ; r8 ??? bc r15 is ???	
mov.l @r15+,r12
mov.l @r15+,r13 ; r13 ??? bc r15 is ???	
mov.l @r15+,r14

loc_8C0D61EE:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0D6274,pc),r3 ; r3 set to 0x8C034D8C, r3 set to 0x8C034D8c
mov r4,r14
mov.l r5,@r15
jsr @r3
mov r14,r4
mov.w @(loc_8C0D6250,pc),r0 ; r0 set to 0x1D0, r0 set to 0x1D0
mov.l @r15,r2 ; r2 ??? bc r15 is ???	
mov.b @(r0,r2),r3 ; r3 ??? bc r2 is ???, r3 ??? bc r2 is ???	
tst r3,r3
bt loc_8C0D621c
mov 0x03,r0 ; r0 set to 0x03, r0 set to 0x03
mov.b r0,@(0x05,r14) 	
mova @(loc_8C0D6278,pc),r0  ; r0 set to 0x8C0D6278, r0 set to 0x8C0D6278
fmov.s @r0,fr3
mov 0x64,r0 ; r0 set to 0x64, r0 set to 0x64
fmov.s fr3,@(r0,r14) 	
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0D621C:
#data 0x9016E164
#data 0xF2E631Ec
#data 0xF230F318
#data 0xC714FE27
#data 0x900EF408
#data 0xF435F3E6
#data 0x84E58904
#data 0x80E57001
#data 0xFE479007

#align4
loc_8C0D6240:
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0D6248:
#data 0x012d

loc_8C0D624A:
#data 0x01A4

loc_8C0D624C:
#data 0x012e

loc_8C0D624E:
#data 0x0108

loc_8C0D6250:
#data 0x01D0
#data 0x0000

#align4
loc_8C0D6254:
#data 0x8c1355D4

loc_8C0D6258:
#data bank03.loc_8c03319e

loc_8C0D625C:
#data 0x3C4CCCCd

#align4
loc_8C0D6260:
#data 0x8c15CDEc

loc_8C0D6264:
#data 0x3FD55555

#align4
loc_8C0D6268:
#data 0x40092492

#align4
loc_8C0D626C:
#data bank12.loc_8c12939c

loc_8C0D6270:
#data bank03.loc_8c034CD6

loc_8C0D6274:
#data bank03.loc_8c034D8c

loc_8C0D6278:
#data 0x3D4CCCCd
#data 0x3E99999a


loc_8C0D6280:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0D639C,pc),r3 ; r3 set to 0x8C034D8c
mov r4,r14
mov.l r5,@r15
jsr @r3
mov r14,r4
mov.w @(loc_8C0D638E,pc),r0 ; r0 set to 0x1D0
mov.l @r15,r2
mov.b @(r0,r2),r3 ; r3 ??? bc r2 is ???	
tst r3,r3
bt loc_8C0D62A0
mova @(loc_8C0D63A0,pc),r0  ; r0 set to 0x8C0D63A0
bra loc_8C0D62B0
fmov.s @r0,fr3

#align4
loc_8C0D62A0:
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x8B062008
#data 0xF308C73d

#align4
loc_8C0D62B0:
#data 0xFE37E064
#data 0x700184E5
#data 0x80E5

loc_8C0D62BA:
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D62C2:
#data 0x2FE6
#data 0xD3354F22
#data 0x6E43430b
#data 0x905FE164
#data 0xF2E631Ec
#data 0xF231F318
#data 0xFE27F38d
#data 0xF235F2E6
#data 0x84E48929
#data 0x7001E300
#data 0x905280E4
#data 0x54E50E34
#data 0x600C8443
#data 0x8B1E8803
#data 0x934BE026
#data 0x622D024d
#data 0x8B183230
#data 0x53E5E023
#data 0x32EC6203
#data 0x013C6220
#data 0x21296227
#data 0xE0200314
#data 0x600C00Ec
#data 0x89048807
#data 0x00ECE020
#data 0x8808600c
#data 0x8B05

loc_8C0D632A:
#data 0x53E5
#data 0x9232E023
#data 0x2129013c
#data 0x0314

loc_8C0D6336:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0D633C:
mov.l r14,@-r15
mov r4,r14
mov.l @(loc_8C0D63A8,pc),r1 ; r1 set to 0x8C15CF20
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(0x05,r14),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jsr @r3
mov r5,r13
mov.w @(loc_8C0D6398,pc),r0 ; r0 set to 0x130
mov.w @(r0,r13),r3
tst r3,r3
bf/s loc_8C0D6368
mov.w r3,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r14),fr3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr2
bra loc_8C0D6372
fadd fr3,fr2

loc_8C0D6368:
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r14),fr3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr2
fsub fr3,fr2

loc_8C0D6372:
fmov.s fr2,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s @(r0,r14),fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r13),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
mov.b @(r0,r13),r3
mov.b r3,@(r0,r14) 	
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D638E:
#data 0x01D0
#data 0x012C0108
#data 0x00FE1802

loc_8C0D6398:
#data 0x0130
#data 0x0000

#align4
loc_8C0D639C:
#data bank03.loc_8c034D8c

loc_8C0D63A0:
#data 0x3D4CCCCd
#data 0x3C4CCCCd

#align4
loc_8C0D63A8:
#data 0x8c15CF20


loc_8C0D63AC:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov r4,r14
mov 0x01,r3 ; r3 set to 0x01
mov 0xFF,r2 ; r2 set to 0xFFFFFFFf
mov.l @(loc_8C0D6500,pc),r13 ; r13 set to 0x8C03319e
mov.l r5,@r15
mov.b @(0x05,r14),r0 	
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0D64EA,pc),r0 ; r0 set to 0x12d
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0D64EC,pc),r0 ; r0 set to 0x1A4
mov.l @r15,r3 ; r3 ??? bc r15 is ???	
mov.b @(r0,r3),r2 ; r2 ??? bc r3 is ???	
mov.l @(loc_8C0D64FC,pc),r0 ; r0 set to 0x8C1355D4
extu.b r2,r2
mov.b @(r0,r2),r3
mov.w @(loc_8C0D64EE,pc),r0 ; r0 set to 0x12e
jsr @r13
mov.w r3,@(r0,r14) 	
and 0x1F,r0 	
fldi0 fr3
add 0x3C,r0 ; r0 set to 0x16a
mov.l @(loc_8C0D6508,pc),r5 ; r5 set to 0x8C15CDEc
mov.w r0,@(0x1C,r14) 	
mov.w @(loc_8C0D64F0,pc),r0 ; r0 set to 0x108
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0D6504,pc),r0  ; r0 set to 0x8C0D6504
fmov.s @r0,fr3
mov 0x64,r0 ; r0 set to 0x64
fmov.s fr3,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r4
mova @(loc_8C0D650C,pc),r0  ; r0 set to 0x8C0D650c
fmov.s @r0,fr2
mov 0x5C,r0 ; r0 set to 0x5c
extu.b r4,r4
mov r4,r3
shll2 r3
shll r4
add r3,r4
add r5,r4
mov.w @r4,r3
lds r3,fpul 	
float fpul,fr3
fmul fr2,fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(0x02,r4),r0 	
mov r0,r3 ; r3 set to 0x5c
lds r3,fpul 	
mova @(loc_8C0D6510,pc),r0  ; r0 set to 0x8C0D6510
float fpul,fr3
fmov.s @r0,fr1
mov 0x60,r0 ; r0 set to 0x60
fmul fr1,fr3 ; r3 ??? bc r1 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3
extu.b r3,r3
mov r3,r2
shll2 r2
shll r3
add r2,r3
add r3,r5 ; r5 ??? bc r3 is ???	
jsr @r13
mov.l r5,@(0x04,r15) 	
mov.l @(loc_8C0D6514,pc),r3 ; r3 set to 0x8C12939c
mov r0,r1 ; r1 set to 0x20
jsr @r3
mov 0x0A,r0 ; r0 set to 0x0a
mov.l r0,@-r15
mov r0,r7 ; r7 set to 0x0a
mov.l @(0x08,r15),r2
mov.b @(0x05,r2),r0 	
jsr @r13
mov r0,r8 ; r8 set to 0x0a
mov.l @(loc_8C0D6514,pc),r3 ; r3 set to 0x8C12939c
mov r0,r1 ; r1 set to 0x0a
jsr @r3
mov 0x03,r0 ; r0 set to 0x03
mov.l @(loc_8C0D6518,pc),r3 ; r3 set to 0x8C034CD6
mov r8,r6 ; r6 set to 0x0a
mov r14,r4
add r0,r6 ; r6 set to 0x0d
mov 0x1B,r5 ; r5 set to 0x1b
jsr @r3
mov.l @r15+,r7 ; r7 ??? bc r15 is ???	
mov.l @r15,r5 ; r5 ??? bc r15 is ???	
mov r14,r4
add 0x08,r15
lds.l @r15+,pr 	
mov.l @r15+,r8 ; r8 ??? bc r15 is ???	
mov.l @r15+,r13 ; r13 ??? bc r15 is ???	
bra loc_8C0D61Ee
mov.l @r15+,r14

loc_8C0D6476:
#data 0x903c
#data 0x005C2FE6
#data 0x8815600c
#data 0x6E438F05
#data 0x005C9036
#data 0x8805600c
#data 0x8907

loc_8C0D648E:
#data 0x84E4
#data 0x7001E300
#data 0x902E80E4
#data 0x000B0E34
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D649E:
#data 0x84E5
#data 0xD11E64E3
#data 0x4008600c
#data 0x432B031e
#data 0x000B6EF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D64B2:
mov.b @(0x05,r4),r0 	
add 0x01,r0
mov.b r0,@(0x05,r4) 	

loc_8C0D64B8:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.w @(loc_8C0D64F8,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov r5,r14
mov r14,r2
mov r4,r1
mov.w @(r0,r14),r3
add 0x34,r2
add 0x34,r1
mov.w r3,@(r0,r4) 	
mov.l @(loc_8C0D6520,pc),r3 ; r3 set to 0x8C1294C8, r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
mov.w @(loc_8C0D64FA,pc),r0 ; r0 set to 0x141, r0 set to 0x141
mov.b @(r0,r14),r2
tst r2,r2
bf loc_8C0D6524
mov.b @(0x05,r4),r0 	
add 0x01,r0 ; r0 set to 0x142, r0 set to 0x142
mov.b r0,@(0x05,r4) 	
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D64EA:
#data 0x012d

loc_8C0D64EC:
#data 0x01A4

loc_8C0D64EE:
#data 0x012e

loc_8C0D64F0:
#data 0x0108
#data 0x01D0
#data 0x012C01E9

loc_8C0D64F8:
#data 0x0130

loc_8C0D64FA:
#data 0x0141

#align4
loc_8C0D64FC:
#data 0x8c1355D4

loc_8C0D6500:
#data bank03.loc_8c03319e

loc_8C0D6504:
#data 0x3C4CCCCd

#align4
loc_8C0D6508:
#data 0x8c15CDEc

loc_8C0D650C:
#data 0x3FD55555

#align4
loc_8C0D6510:
#data 0x40092492

#align4
loc_8C0D6514:
#data bank12.loc_8c12939c

loc_8C0D6518:
#data bank03.loc_8c034CD6

loc_8C0D651C:
#data 0x8c15CF30

loc_8C0D6520:
#data bank12.loc_8c1294C8


loc_8C0D6524:
mov 0x20,r0 ; r0 set to 0x20
mov.l @(loc_8C0D6668,pc),r1 ; r1 set to 0x8C15CDEc
mov.b @(r0,r4),r3
mov 0x1B,r5 ; r5 set to 0x1b
mov.w @(loc_8C0D665C,pc),r0 ; r0 set to 0x140
extu.b r3,r3
mov r3,r2
shll2 r2
shll r3
add r2,r3
add r1,r3
mov r3,r6
mov.l r3,@r15
mov.b @(r0,r14),r7
mov.b @(0x05,r6),r0 	
mov r0,r6 ; r6 set to 0x140
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0D666C,pc),r3 ; r3 set to 0x8C034CD6
jmp @r3
mov.l @r15+,r14
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D6556:
#data 0x9082
#data 0x2FE66253
#data 0x4F226E43
#data 0x61E3035d
#data 0x0E357234
#data 0xD3417134
#data 0xE00C430b
#data 0x420BD240
#data 0x600E64E3
#data 0x89054011
#data 0xE30084E4
#data 0x80E47001
#data 0x0E34906c

#align4
loc_8C0D6588:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D658E:
#data 0x9068
#data 0x6E532FE6
#data 0x4F222FD6
#data 0x233803Ec
#data 0x6D438D05
#data 0x00EC9060
#data 0x8816600c
#data 0x8906

loc_8C0D65AA:
#data 0x84D4
#data 0x7001E300
#data 0x905580D4
#data 0x0D34A04e

#align4
loc_8C0D65B8:
#data 0x430BD32e
#data 0xC72E64D3
#data 0xF408D42e
#data 0x03ED904b
#data 0x8F0F2338
#data 0x90450D35
#data 0x01ECF04c
#data 0xF2E6E034
#data 0x43086313
#data 0x313C4100
#data 0x6311314c
#data 0xF32D435a
#data 0xF23EA00e

#align4
loc_8C0D65EC:
#data 0x02EC9036
#data 0xF2E6E034
#data 0x43086323
#data 0x323C4200
#data 0x6321324c
#data 0xF32D435a
#data 0xF231F342

#align4
loc_8C0D6608:
#data 0xE148FD27
#data 0x31DC9026
#data 0x623303Ec
#data 0x43004208
#data 0x334C332c
#data 0x63038531
#data 0xE038435a
#data 0xC716F2E6
#data 0xF008F32d
#data 0xF23EE038
#data 0x9013FD27
#data 0x623303Ec
#data 0x43004208
#data 0x343C332c
#data 0x21028542
#data 0x03EC900a
#data 0x3323E202
#data 0xE0248B02
#data 0x0D14E107

#align4
loc_8C0D6654:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0D665C:
#data 0x0140
#data 0x0130
#data 0x0141012c
#data 0x000001D0

#align4
loc_8C0D6668:
#data 0x8c15CDEc

loc_8C0D666C:
#data bank03.loc_8c034CD6

loc_8C0D6670:
#data bank12.loc_8c1294C8

loc_8C0D6674:
#data bank03.loc_8c034D8c
#data 0x3FD55555

#align4
loc_8C0D667C:
#data 0x8c15CF3c
#data 0x40092492

#align4
loc_8C0D6684:
#data 0x005C9074
#data 0x8815600c
#data 0x90708B0e
#data 0x600C005c
#data 0x8B098806
#data 0x936C906c
#data 0x622D025d
#data 0x8B033230
#data 0x015C9068
#data 0x8B062118

#align4
loc_8C0D66AC:
#data 0xE3008444
#data 0x80447001
#data 0x000B9061
#data 0x0434
;-------------------------------------------------------------------------------

loc_8C0D66BA:
#data 0xC731
#data 0xF308D231
#data 0xF437E054
#data 0x064CE020
#data 0xF408C72f
#data 0x9055666c
#data 0x43086363
#data 0x363C4600
#data 0x362C035d
#data 0x8F082338
#data 0x63610435
#data 0xF256E034
#data 0xF04C435a
#data 0xA007F32d
#data 0xF23e

loc_8C0D66F2:
#data 0x6361
#data 0xF256E034
#data 0xF32D435a
#data 0xF231F342

#align4
loc_8C0D6700:
#data 0xE2FEF427
#data 0x63038561
#data 0xE038435a
#data 0xC71FF256
#data 0xF008F32d
#data 0xF23EE038
#data 0xE024F427
#data 0x0434035c
#data 0xD31BE031
#data 0x0424432b
#data 0x0009000b
;-------------------------------------------------------------------------------

#align4
loc_8C0D672C:
#data 0x4F222FE6
#data 0x901D7FFc
#data 0x00EC6E53
#data 0x8815600c
#data 0x90188B0e
#data 0x600C00Ec
#data 0x8B098806
#data 0x93149014
#data 0x622D02Ed
#data 0x8B033230
#data 0x01EC9010
#data 0x8B1B2118

#align4
loc_8C0D675C:
#data 0xE3008444
#data 0x80447001
#data 0x04349009
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x01E901D0
#data 0x15070158
#data 0x012C0140
#data 0x00000130
#data 0x3FACCCCd

#align4
loc_8C0D6784:
#data 0x8c15CDEc
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0D6790:
#data bank03.loc_8c034D8c

loc_8C0D6794:
#data 0x62E3C751
#data 0x6143F308
#data 0x7234909a
#data 0xF4377134
#data 0x03ED7028
#data 0xD34D0435
#data 0xE00C430b
#data 0xD14CE024
#data 0xE3FF02Ec
#data 0x0424E70f
#data 0x0434E031
#data 0x024CE020
#data 0x9086E51b
#data 0x6323622c
#data 0x43084200
#data 0x321C323c
#data 0x2F226623
#data 0x270900Ec
#data 0x66038465
#data 0x4F267F04
#data 0x432BD340
#data 0x7F046EF6
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D67F2:
mov r4,r3
mov.l @(loc_8C0D68EC,pc),r1 ; r1 set to 0x8C15CF54
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

#align4
loc_8C0D6804:
#data 0xE3018445
#data 0x80457001
#data 0x04349064

#align4
loc_8C0D6810:
#data 0xE105D237
#data 0x633C6320
#data 0x89043313
#data 0x70018445
#data 0x90598045
#data 0x814e

loc_8C0D6826:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0D682A:
mov.w @(0x1C,r4),r0 	
add 0xFF,r0
mov.w r0,@(0x1C,r4) 	
exts.w r0,r0
tst r0,r0
bf loc_8C0D683e
mov.b @(0x05,r4),r0 	
add 0x01,r0
bra loc_8C0D6842
mov.b r0,@(0x05,r4) 	

loc_8C0D683E:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0D6842:
#data 0x2FE6
#data 0xD32B4F22
#data 0x6E43430b
#data 0x4011600e
#data 0x84E48905
#data 0x7001E300
#data 0x903D80E4
#data 0x0E34

loc_8C0D685E:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0D6864:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.w @(loc_8C0D68DA,pc),r0 ; r0 set to 0x141
mov r5,r14
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8C0D68C0
mov.b @(0x04,r14),r0 	
extu.b r0,r0 ; r0 set to 0x41
cmp/pl r0
bt loc_8C0D68C0
mov.b @(0x05,r4),r0 	
tst r0,r0
bf loc_8C0D6894
mov.b @(0x05,r4),r0 	
fldi1 fr3
add 0x01,r0 ; r0 set to 0x42
mov.b r0,@(0x05,r4) 	
mov.w @(loc_8C0D68D4,pc),r0 ; r0 set to 0x108
fmov.s fr3,@(r0,r4) 	
mov 0x0A,r0 ; r0 set to 0x0a
bra loc_8C0D68F8
mov.w r0,@(0x1C,r4) 	

#align4
loc_8C0D6894:
#data 0x911D854e
#data 0x435A6303
#data 0xF28D314c
#data 0xF12DF318
#data 0xF34D9216
#data 0x324CF320
#data 0xF128F313
#data 0xF21AF130
#data 0x70FF854e
#data 0x600F814e
#data 0x8B1B2008


loc_8C0D68C0:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D68D8,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D68D4:
#data 0x0108
#data 0x0140

loc_8C0D68D8:
#data 0x012c

loc_8C0D68DA:
#data 0x0141
#data 0x3F000000

#align4
loc_8C0D68E0:
#data bank12.loc_8c1294C8

loc_8C0D68E4:
#data 0x8c15CDEc

loc_8C0D68E8:
#data bank03.loc_8c034CD6

loc_8C0D68EC:
#data 0x8c15CF54
#data 0x8C2895F0

#align4
loc_8C0D68F4:
#data bank03.loc_8c034D8c


loc_8C0D68F8:
mov.w @(loc_8C0D69FC,pc),r0 ; r0 set to 0x130
mov r4,r1
mov.l @(loc_8C0D6A08,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r1
mov.w @(r0,r14),r2
mov.w r2,@(r0,r4) 	
mov r14,r2
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x20,r0 ; r0 set to 0x20
mov.l @(loc_8C0D6A0C,pc),r1 ; r1 set to 0x8C15CDEc
mov.b @(r0,r4),r2
mov 0x1B,r5 ; r5 set to 0x1b
mov.w @(loc_8C0D69FE,pc),r0 ; r0 set to 0x140
extu.b r2,r2
mov r2,r3 ; r3 ??? bc r2 is ???	
shll2 r3
shll r2
add r3,r2
add r1,r2
mov r2,r6
mov.l r2,@r15
mov.b @(r0,r14),r7
mov.b @(0x05,r6),r0 	
mov r0,r6 ; r6 set to 0x140
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0D6A10,pc),r3 ; r3 set to 0x8C034CD6
jmp @r3
mov.l @r15+,r14
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D693E:
#data 0x2FE6
#data 0x2FD6905e
#data 0x4F226D53
#data 0x600C00Dc
#data 0x8F16881d
#data 0x90566E43
#data 0x600C00Dc
#data 0x8B108803
#data 0xE40184D2
#data 0x6143D22c
#data 0x6320600c
#data 0x410C204a
#data 0x2318633c
#data 0xD3298B37
#data 0x64E3430b
#data 0x4011600e
#data 0x8906

loc_8C0D697E:
#data 0x84E4
#data 0x7001E300
#data 0x903D80E4
#data 0x0E34A02b

#align4
loc_8C0D698C:
#data 0xD21FE020
#data 0xC72204Ec
#data 0x644CF408
#data 0x63439030
#data 0x43084400
#data 0x03DD343c
#data 0x2338342c
#data 0x0E358F08
#data 0xE0346341
#data 0x435AF2D6
#data 0xF32DF04c
#data 0xF23EA007

#align4
loc_8C0D69BC:
#data 0xE0346341
#data 0x435AF2D6
#data 0xF342F32d
#data 0xF231

loc_8C0D69CA:
#data 0xFE27
#data 0x63038541
#data 0xE038435a
#data 0xC712F2D6
#data 0xF008F32d
#data 0xF23EE038
#data 0xFE27

loc_8C0D69E2:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D69EA:
mov r4,r3
mov.l @(loc_8C0D6A24,pc),r1 ; r1 set to 0x8C15CF64
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D69FC:
#data 0x0130

loc_8C0D69FE:
#data 0x0140
#data 0x01E901D0
#data 0x0000012c

#align4
loc_8C0D6A08:
#data bank12.loc_8c1294C8

loc_8C0D6A0C:
#data 0x8c15CDEc

loc_8C0D6A10:
#data bank03.loc_8c034CD6
#data 0x8C2895F6

#align4
loc_8C0D6A18:
#data bank03.loc_8c034D8c
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0D6A24:
#data 0x8c15CF64

loc_8C0D6A28:
#data 0x2FD62FE6
#data 0x7FFC4F22
#data 0xE3016E43
#data 0x2F52F39d
#data 0x84E5E51b
#data 0x70015DE5
#data 0x909880E5
#data 0x70DC0E34
#data 0xE005FE37
#data 0xE03181Ee
#data 0x73FF03Dc
#data 0x908F0E34
#data 0x06DCD34a
#data 0x64E3430b
#data 0x64E365F2
#data 0x4F267F04
#data 0x6EF66DF6

#align4
loc_8C0D6A6C:
#data 0x70FF854e
#data 0x600F814e
#data 0x8B042008
#data 0x70018445
#data 0xE00A8045
#data 0x814e

loc_8C0D6A82:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0D6A86:
#data 0xD140
#data 0x415A9077
#data 0xF30DF246
#data 0xF427F231
#data 0xF28DF146
#data 0x8905F125
#data 0xE3008444
#data 0x80447001
#data 0x04349067

#align4
loc_8C0D6AA8:
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0D6AAC:
mov r4,r3
mov.l @(loc_8C0D6B8C,pc),r1 ; r1 set to 0x8C15CF70
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D6ABE:
mov.b @(0x05,r4),r0 	
mov 0x01,r3 ; r3 set to 0x01
fldi1 fr3
add 0x01,r0
mov.l @(loc_8C0D6B94,pc),r7 ; r7 set to 0x8C15CE70
mov.b r0,@(0x05,r4) 	
mov.w @(loc_8C0D6B76,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	
add 0xDC,r0 ; r0 set to 0x108
fmov.s fr3,@(r0,r4) 	
mova @(loc_8C0D6B90,pc),r0  ; r0 set to 0x8C0D6B90
fmov.s @r0,fr4
mov.w @(loc_8C0D6B7C,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r3 ; r3 ??? bc r4 is ???	
tst r3,r3
bf/s loc_8C0D6AFa
mov r7,r6 ; r6 set to 0x8C15CE70
mov 0x23,r0 ; r0 set to 0x23
fmov fr4,fr0 ; r0 ??? bc r4 is ???	
mov.b @(r0,r4),r1
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr2
extu.b r1,r1
shll2 r1
add r1,r6 ; r6 ??? bc r1 is ???	
mov.w @r6,r3
lds r3,fpul 	
float fpul,fr3
bra loc_8C0D6B12
fmac fr0,fr3,fr2

loc_8C0D6AFA:
#data 0xE023
#data 0xE034024c
#data 0x622CF256
#data 0x362C4208
#data 0x435A6361
#data 0xF342F32d
#data 0xF231

loc_8C0D6B12:
#data 0xF427
#data 0x034CE023
#data 0x4308633c
#data 0x8571373c
#data 0x435A6303
#data 0xF256E038
#data 0xF32DC71b
#data 0xE038F008
#data 0xF427F23e

#align4
loc_8C0D6B34:
#data 0x4F222FE6
#data 0x430BD318
#data 0x600E6E43
#data 0x89054011
#data 0xE30084E4
#data 0x80E47001
#data 0x0E349013

#align4
loc_8C0D6B50:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D6B56:
#data 0x9012
#data 0x8801005c
#data 0x900F8B04
#data 0x600C005c
#data 0x891B8816

#align4
loc_8C0D6B68:
#data 0xE3008444
#data 0x80447001
#data 0x000B9001
#data 0x0434
;-------------------------------------------------------------------------------

loc_8C0D6B76:
#data 0x012c
#data 0x01080158

loc_8C0D6B7C:
#data 0x0130
#data 0x0140
#data 0x000001D0

#align4
loc_8C0D6B84:
#data bank03.loc_8c034C38
#data 0x3DCCCCCd

#align4
loc_8C0D6B8C:
#data 0x8c15CF70

loc_8C0D6B90:
#data 0x3FD55555

#align4
loc_8C0D6B94:
#data 0x8c15CE70
#data 0x40092492

#align4
loc_8C0D6B9C:
#data bank03.loc_8c034D8c

loc_8C0D6BA0:
#data 0x025D9098
#data 0xE0340425
#data 0xF437F356
#data 0xF356E038
#data 0x000BF437
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0D6BB6:
mov r4,r3
mov.l @(loc_8C0D6CE0,pc),r1 ; r1 set to 0x8C15CF78
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

#align4
loc_8C0D6BC8:
#data 0x4F222FE6
#data 0x6E437FFc
#data 0x2F529381
#data 0x84E5E503
#data 0x7001E602
#data 0xE04880E5
#data 0xD3400E36
#data 0x64E3430b
#data 0x8D062008
#data 0xD33E6403
#data 0xE212E020
#data 0x14E61434
#data 0x0424

loc_8C0D6BFA:
#data 0x65F2
#data 0x7F0464E3
#data 0x6EF64F26

#align4
loc_8C0D6C04:
#data 0x4F222FE6
#data 0x430BD338
#data 0x600E6E43
#data 0x89054011
#data 0xE30084E4
#data 0x80E47001
#data 0x0E34905c

#align4
loc_8C0D6C20:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D6C26:
mov.l r14,@-r15
add 0xFC,r15
mov r5,r14
mov.b @(0x04,r14),r0 	
mov 0x02,r3 ; r3 set to 0x02
extu.b r0,r0
cmp/ge r3,r0
bf loc_8C0D6C48
mov.b @(0x04,r4),r0 	
mov 0x00,r2 ; r2 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D6CD8,pc),r0 ; r0 set to 0x12c
mov.b r2,@(r0,r4) 	
add 0x04,r15
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D6C48:
mov.w @(loc_8C0D6CDA,pc),r0 ; r0 set to 0x141
mov.b @(r0,r14),r3
add 0xEB,r0 ; r0 set to 0x12c
tst r3,r3
bt/s loc_8C0D6C82
mov.b r3,@(r0,r4) 	
mov 0x48,r0 ; r0 set to 0x48
mov.l @(r0,r14),r1
mov 0x1B,r5 ; r5 set to 0x1b
mov.l r1,@(r0,r4) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r4),r3
mov.l @(loc_8C0D6CF0,pc),r1 ; r1 set to 0x8C15CDEc
extu.b r3,r3
mov.w @(loc_8C0D6CDC,pc),r0 ; r0 set to 0x140
mov r3,r2
shll2 r2
shll r3
add r2,r3
add r1,r3
mov r3,r6
mov.l r3,@r15
mov.b @(r0,r14),r7
mov.b @(0x05,r6),r0 	
mov r0,r6 ; r6 set to 0x140
add 0x04,r15
mov.l @(loc_8C0D6CF4,pc),r3 ; r3 set to 0x8C034CD6
jmp @r3
mov.l @r15+,r14

loc_8C0D6C82:
add 0x04,r15
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D6C88:
mov r4,r3
mov.l @(loc_8C0D6CF8,pc),r1 ; r1 set to 0x8C15CF80
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D6C9A:
#data 0x8445
#data 0x80457001
#data 0x5356901d
#data 0xE038F336
#data 0xC714F437
#data 0xE054F308
#data 0xF437

loc_8C0D6CB2:
#data 0x2FE6
#data 0xD30D4F22
#data 0x6E43430b
#data 0x4011600e
#data 0x84E48905
#data 0x7001E300
#data 0x900580E4
#data 0x0E34

loc_8C0D6CCE:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x26000130

loc_8C0D6CD8:
#data 0x012c

loc_8C0D6CDA:
#data 0x0141

loc_8C0D6CDC:
#data 0x0140
#data 0x041c

#align4
loc_8C0D6CE0:
#data 0x8c15CF78

loc_8C0D6CE4:
#data bank04.loc_8c044F12

loc_8C0D6CE8:
#data loc_8c0d5EC2

loc_8C0D6CEC:
#data bank03.loc_8c034D8c

loc_8C0D6CF0:
#data 0x8c15CDEc

loc_8C0D6CF4:
#data bank03.loc_8c034CD6

loc_8C0D6CF8:
#data 0x8c15CF80
#data 0x3FC00000

#align4
loc_8C0D6D00:
#data 0x906B2FE6
#data 0x6D532FD6
#data 0x4F222FC6
#data 0x600C00Dc
#data 0x8F0B881d
#data 0x90626E43
#data 0x600C00Dc
#data 0x8B058803
#data 0x925E905e
#data 0x633D03Dd
#data 0x89063320

#align4
loc_8C0D6D2C:
#data 0xE30084E4
#data 0x80E47001
#data 0xA0429056
#data 0x0E34

loc_8C0D6D3A:
#data 0xC72c
#data 0x9052F308
#data 0x7038FE37
#data 0x222802Dc
#data 0xA0018901
#data 0xE301

loc_8C0D6D4E:
#data 0xE300

#align4
loc_8C0D6D50:
#data 0xE70F9048
#data 0xE51BD226
#data 0xE0200E34
#data 0x90430CEc
#data 0x63C36CCc
#data 0x430800Dc
#data 0x3C3C4C00
#data 0x2709D321
#data 0x84C53C2c
#data 0x430B6603
#data 0xC71F64E3
#data 0x9034F408
#data 0x233803Dd
#data 0x0E358F08
#data 0xE03463C1
#data 0x435AF2D6
#data 0xF32DF04c
#data 0xF23EA007

#align4
loc_8C0D6D98:
#data 0xE03463C1
#data 0x435AF2D6
#data 0xF342F32d
#data 0xF231

loc_8C0D6DA6:
#data 0xFE27
#data 0x630385C1
#data 0xE038435a
#data 0xC712F2D6
#data 0xF008F32d
#data 0xF23EE038
#data 0xFE27

loc_8C0D6DBE:
#data 0x4F26
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0D6DC8:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D6DE4,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0D6DD6:
mov.l @(loc_8C0D6E00,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x01E901D0
#data 0x15030158

loc_8C0D6DE4:
#data 0x012c
#data 0x0108
#data 0x01300140
#data 0x3F000000

#align4
loc_8C0D6DF0:
#data 0x8c15CDEc

loc_8C0D6DF4:
#data bank03.loc_8c034CD6
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0D6E00:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0xE600D357
#data 0x2F501F41
#data 0x430BE503
#data 0x20086463
#data 0x64038D07
#data 0xE020D353
#data 0x52F11434
#data 0x63F01426
#data 0x7F080434
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0D6E32:
mov r4,r3
mov.l @(loc_8C0D6F70,pc),r1 ; r1 set to 0x8C15D074
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

#align4
loc_8C0D6E44:
#data 0x6E432FE6
#data 0x2FD69389
#data 0x4F229188
#data 0x31EC84E4
#data 0x70019284
#data 0x80E454E6
#data 0x0E35E026
#data 0xD344907f
#data 0x324C430b
#data 0xE201907c
#data 0x715061E3
#data 0x84420E24
#data 0x844180E2
#data 0xE05080E1
#data 0xFE37F346
#data 0xF346E054
#data 0x906EFE37
#data 0x0E34034c
#data 0x024C7001
#data 0xE0300E24
#data 0x6243034c
#data 0x0E347250
#data 0x430BD336
#data 0xE024E00c
#data 0x024CF38d
#data 0xD134E300
#data 0x90590E24
#data 0x0E34D233
#data 0xFE3770Dc
#data 0x00ECE020
#data 0x001C600c
#data 0x31ECE131
#data 0x81EE600c
#data 0x0DECE020
#data 0x6DDCE024
#data 0x430863D3
#data 0x3D3C4D00
#data 0x0E34E307
#data 0x84D43D2c
#data 0x63D12100
#data 0xF246E034
#data 0x435AC726
#data 0xF008E51b
#data 0xE701E034
#data 0xF23EF32d
#data 0x85D1FE27
#data 0x435A6303
#data 0xD322E038
#data 0xC720F246
#data 0xF008F32d
#data 0xF23EE038
#data 0x84D5FE27
#data 0x430B6603
#data 0x4F2664E3
#data 0x6DF664E3
#data 0x6EF6

loc_8C0D6F22:
#data 0x2FE6
#data 0x54E66E43
#data 0x600C8444
#data 0x89044015
#data 0xE3028446
#data 0x3037600c
#data 0x8B07

loc_8C0D6F3A:
#data 0x84E4
#data 0x7001E300
#data 0x900F80E4
#data 0x000B0E34
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D6F4A:
#data 0x84E5
#data 0xD11064E3
#data 0x4008600c
#data 0x432B031e
#data 0x000B6EF6
#data 0x18016EF6
#data 0x00C000Dc
#data 0x01A3012c

#align4
loc_8C0D6F68:
#data bank04.loc_8c044F12

loc_8C0D6F6C:
#data loc_8c0d6E32

loc_8C0D6F70:
#data 0x8c15D074

loc_8C0D6F74:
#data bank12.loc_8c129560

loc_8C0D6F78:
#data bank12.loc_8c1294C8

loc_8C0D6F7C:
#data 0x8c15D024

loc_8C0D6F80:
#data 0x8c15CF88
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0D6F8C:
#data bank03.loc_8c034CD6

loc_8C0D6F90:
#data 0x8c15D084


loc_8C0D6F94:
mov.w @(0x1C,r4),r0 	
add 0xFF,r0
mov.w r0,@(0x1C,r4) 	
exts.w r0,r0
tst r0,r0
bf loc_8C0D6FC4
mov.b @(0x05,r4),r0 	
mov 0x01,r5 ; r5 set to 0x01
add 0x01,r0
mov.b r0,@(0x05,r4) 	
mov.w @(loc_8C0D70AA,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r4) 	
mov 0x0A,r0 ; r0 set to 0x0a
mov.w r0,@(0x1C,r4) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r4),r3
extu.b r3,r3
shad r3, r5 ; r5 ??? bc r3 is ???	
mov.l @(loc_8C0D70B0,pc),r3 ; r3 set to 0x3F55555
tst r3,r5
bt loc_8C0D6FC4
mov.l @(loc_8C0D70B4,pc),r1 ; r1 set to 0x8C042008
jmp @r1
mov 0x14,r5

loc_8C0D6FC4:
rts 	
nop 	
;-------------------------------------------------------------------------------

#align4
loc_8C0D6FC8:
#data 0x906FD13b
#data 0x6E432FE6
#data 0x2FD6415a
#data 0xF30DF49d
#data 0x4F222FC6
#data 0x5DE6F2E6
#data 0xFE27F230
#data 0xF425F2E6
#data 0xFE478900

#align4
loc_8C0D6FEC:
#data 0xF49DE034
#data 0x31EC6103
#data 0x6103F318
#data 0xF44031Dc
#data 0xF231F218
#data 0xF243F3E6
#data 0xFE37F320
#data 0x6103E038
#data 0xF31831Ec
#data 0x31DC6103
#data 0xF231F218
#data 0xF243F3E6
#data 0xFE37F320
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x8B2D2008
#data 0xE50E84E5
#data 0x7001D322
#data 0xE03480E5
#data 0xFE37F3D6
#data 0xF3D6E038
#data 0x430BFE37
#data 0x200864D3
#data 0x64038D01
#data 0x14E5

loc_8C0D704E:
#data 0xE020
#data 0x03ECDC1b
#data 0x4300633c
#data 0x623033Cc
#data 0x89132228
#data 0xD31605Ec
#data 0x4500655c
#data 0x655035Cc
#data 0x64D3430b
#data 0x8D092008
#data 0xE0206403
#data 0x03EC14E5
#data 0x633CD011
#data 0x023C4300
#data 0x0424E023

#align4
loc_8C0D7088:
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D7092:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0D7096:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D70AA,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0D70A4:
mov.l @(loc_8C0D70C8,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0D70AA:
#data 0x012c
#data 0x00000108

#align4
loc_8C0D70B0:
#data 0x03F55555

#align4
loc_8C0D70B4:
#data bank04.loc_8c042008
#data 0x3E4CCCCd

#align4
loc_8C0D70BC:
#data loc_8c0d5E24

loc_8C0D70C0:
#data 0x8c15D03e

loc_8C0D70C4:
#data 0x8c15D03f

loc_8C0D70C8:
#data bank04.loc_8c0450C0

loc_8C0D70CC:
#data 0x7FFC4F22
#data 0xE503D331
#data 0xE6002F42
#data 0x6463430b
#data 0x8D042008
#data 0xD32E6403
#data 0x62F21434
#data 0x1426

loc_8C0D70EA:
#data 0x7F04
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0D70F2:
#data 0x2FE6
#data 0x2FC62FD6
#data 0x7FF84F22
#data 0x6E432F52
#data 0x00096063
#data 0xE02380F4
#data 0x600C00Ec
#data 0x8803C903
#data 0xD2238904
#data 0x0009420b
#data 0x8908C803

#align4
loc_8C0D711C:
#data 0x65E384F4
#data 0xE601D320
#data 0x430B6703
#data 0xA02364F2
#data 0x6403

loc_8C0D712E:
#data 0xD31c
#data 0xEC01430b
#data 0x890620C8
#data 0x03ECE023
#data 0x23C8633c
#data 0xA0058909
#data 0x0009

loc_8C0D7146:
#data 0xE023
#data 0x600C00Ec
#data 0x8B02C802

#align4
loc_8C0D7150:
#data 0xA002E608
#data 0xED02

loc_8C0D7156:
#data 0x6DC3
#data 0xE607

loc_8C0D715A:
#data 0x84F4
#data 0xD31165E3
#data 0x430B6703
#data 0x200864F2
#data 0x64038D04
#data 0x03ECE023
#data 0x0E3423Db

#align4
loc_8C0D7174:
#data 0x00096043
#data 0x4F267F08
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0D7184:
mov r4,r3
mov.l @(loc_8C0D71A8,pc),r1 ; r1 set to 0x8C15D090
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x0000

#align4
loc_8C0D7198:
#data bank04.loc_8c044F12

loc_8C0D719C:
#data loc_8c0d7184

loc_8C0D71A0:
#data bank03.loc_8c03319e

loc_8C0D71A4:
#data loc_8c0d5E80

loc_8C0D71A8:
#data 0x8c15D090


loc_8C0D71AC:
mov.w @(loc_8C0D72A0,pc),r3 ; r3 set to 0x1802
mov.w @(loc_8C0D72A2,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.w @(loc_8C0D72A2,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov 0x26,r0 ; r0 set to 0x26
mov.w r3,@(r0,r4) 	
mov.w @(loc_8C0D72A4,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r4),r5
mov.l @(loc_8C0D72AC,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0D72A6,pc),r0 ; r0 set to 0x12c
mov 0x01,r2 ; r2 set to 0x01
mov r4,r1
add 0x50,r1
mov.b r2,@(r0,r4) 	
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
mov.w @(loc_8C0D72A8,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r5),r3
mov.b r3,@(r0,r4) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r5),r2 ; r2 ??? bc r5 is ???	
mov.b r2,@(r0,r4) 	
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r5),r3
mov r5,r2
add 0x50,r2
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0D72B0,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x00,r3 ; r3 set to 0x00
mov.b r2,@(r0,r4) 	
mov.w @(loc_8C0D72A6,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	
lds.l @r15+,pr 	

loc_8C0D7212:
mov.l r14,@-r15
mov r4,r14
mov.l @(0x18,r14),r5
mov 0x02,r4 ; r4 set to 0x02, r4 set to 0x02
mov.b @(0x04,r5),r0 	
extu.b r0,r0 ; r0 set to 0x2c
cmp/ge r4,r0
bf loc_8C0D7232
mov r4,r0 ; r0 set to 0x02, r0 set to 0x02
nop 	
mov.b r0,@(0x04,r14) 	
mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
mov.w @(loc_8C0D72A6,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
mov.b r3,@(r0,r14) 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D7232:
mov.b @(0x05,r14),r0 	
mov r14,r4
mov.l @(loc_8C0D72B4,pc),r1 ; r1 set to 0x8C15D0A0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x000b
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D7246:
mov.l r14,@-r15
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b @(0x04,r13),r0 	
tst r0,r0
bt/s loc_8C0D7280
mov r4,r14
mov.w @(loc_8C0D72AA,pc),r0 ; r0 set to 0x1D0
mov.b @(r0,r13),r3
tst r3,r3
bf loc_8C0D7280
mov.b @(0x05,r14),r0 	
mov.l @(loc_8C0D72B8,pc),r3 ; r3 set to 0x8C03319e
add 0x01,r0 ; r0 set to 0x1D1
jsr @r3
mov.b r0,@(0x05,r14) 	
and 0x07,r0 	
mov r13,r5
add 0x08,r0 ; r0 set to 0x1D9
mov r14,r4
mov.w r0,@(0x1C,r14) 	
mov 0x23,r0 ; r0 set to 0x23
mov 0x00,r2 ; r2 set to 0x00
mov.b r2,@(r0,r14) 	
lds.l @r15+,pr 	
mov.l @r15+,r13
bra loc_8C0D7288
mov.l @r15+,r14

loc_8C0D7280:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D7288:
mov.l r14,@-r15
mov.w @(loc_8C0D72AA,pc),r0 ; r0 set to 0x1D0
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b @(r0,r13),r3
tst r3,r3
bt/s loc_8C0D72Bc
mov r4,r14
mov 0x00,r0 ; r0 set to 0x00
bra loc_8C0D730e
mov.b r0,@(0x05,r14) 	

loc_8C0D72A0:
#data 0x1802

loc_8C0D72A2:
#data 0x00Dc

loc_8C0D72A4:
#data 0x00C0

loc_8C0D72A6:
#data 0x012c

loc_8C0D72A8:
#data 0x01A3

loc_8C0D72AA:
#data 0x01D0

#align4
loc_8C0D72AC:
#data bank12.loc_8c129560

loc_8C0D72B0:
#data bank12.loc_8c1294C8

loc_8C0D72B4:
#data 0x8c15D0A0

loc_8C0D72B8:
#data bank03.loc_8c03319e

loc_8C0D72BC:
#data 0x00ECE023
#data 0xC804600c
#data 0x65D38B0a
#data 0xBF12E604
#data 0x200864E3
#data 0xE0238904
#data 0xE30402Ec
#data 0x0E24223b

#align4
loc_8C0D72DC:
#data 0x00ECE023
#data 0xC808600c
#data 0x85EE8B0d
#data 0x8B0A2008
#data 0xE60865D3
#data 0x64E3BEFf
#data 0x89042008
#data 0x02ECE023
#data 0x223BE308
#data 0x0E24

loc_8C0D7302:
#data 0x85Ee
#data 0x89022008
#data 0x70FF85Ee
#data 0x81Ee


loc_8C0D730E:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D7316:
mov.b @(0x04,r4),r0 	
add 0x01,r0
rts 	
mov.b r0,@(0x04,r4) 	
;-------------------------------------------------------------------------------

loc_8C0D731E:
mov.l @(loc_8C0D7324,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

#align4
loc_8C0D7324:
#data bank04.loc_8c0450C0


loc_8C0D7328:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xF4,r15
mov.l r4,@r15
mov.l r5,@(0x08,r15) 	
mov r6,r0
nop 	
mov.w @(loc_8C0D746A,pc),r3 ; r3 set to 0x2A4
mov 0x05,r2 ; r2 set to 0x05
mov.b r0,@(0x04,r15) 	
mov.l @r15,r14
add r3,r14
mov.b @(0x03,r14),r0 	
extu.b r0,r0
cmp/ge r2,r0
bf loc_8C0D7352
mov 0x00,r0 ; r0 set to 0x00
add 0x0C,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D7352:
#data 0xD349
#data 0xE600E504
#data 0x6463430b
#data 0x8D112008
#data 0xD3466403
#data 0x715C6143
#data 0x62F21434
#data 0x1426D344
#data 0x430B52F2
#data 0xE120E00c
#data 0x314C84F4
#data 0x84E32100
#data 0x80E37001

#align4
loc_8C0D7384:
#data 0x00096043
#data 0x4F267F0c
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x7FF84F22
#data 0xE600D338
#data 0x2F501F41
#data 0x430BE503
#data 0x20086463
#data 0x64038D07
#data 0xE020D334
#data 0x52F11434
#data 0x63F01426
#data 0x7F080434
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0D73BE:
mov r4,r3
mov.l @(loc_8C0D7484,pc),r1 ; r1 set to 0x8C15D108
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D73D0:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D746C,pc),r3 ; r3 set to 0x1900
mov.l r13,@-r15
mov.w @(loc_8C0D746E,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0D746E,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(0x18,r14),r4
mov.b r0,@(0x04,r14) 	
mov 0x26,r0 ; r0 set to 0x26
mov.w r3,@(r0,r14) 	
mov.w @(loc_8C0D7470,pc),r0 ; r0 set to 0xC0
mov.l @(loc_8C0D7488,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C0D7472,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0D7474,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D7480,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov 0x24,r1 ; r1 set to 0x24
add r14,r1 ; r1 ??? bc r14 is ???	
mov.b r2,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r13
mov.l @(loc_8C0D748C,pc),r2 ; r2 set to 0x8C15D0A8
extu.b r13,r13
mov r13,r3 ; r3 ??? bc r13 is ???	
shll2 r3
shll r13
add r3,r13
add r2,r13
mov.b @(0x04,r13),r0 	
mov.b r0,@r1
mova @(loc_8C0D7490,pc),r0  ; r0 set to 0x8C0D7490
fmov.s @r0,fr4
mov.w @(loc_8C0D7476,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bf loc_8C0D7494
mov.w @r13,r3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???	
lds r3,fpul 	
fmov fr4,fr0 ; r0 ??? bc r4 is ???	
float fpul,fr3
bra loc_8C0D74A4
fmac fr0,fr3,fr2

loc_8C0D746A:
#data 0x02A4

loc_8C0D746C:
#data 0x1900

loc_8C0D746E:
#data 0x00Dc

loc_8C0D7470:
#data 0x00C0

loc_8C0D7472:
#data 0x012c

loc_8C0D7474:
#data 0x01A3

loc_8C0D7476:
#data 0x0130

#align4
loc_8C0D7478:
#data bank04.loc_8c044F12

loc_8C0D747C:
#data loc_8c0d73Be

loc_8C0D7480:
#data bank12.loc_8c1294C8

loc_8C0D7484:
#data 0x8c15D108

loc_8C0D7488:
#data bank12.loc_8c129560

loc_8C0D748C:
#data 0x8c15D0A8

loc_8C0D7490:
#data 0x3FD55555


loc_8C0D7494:
mov.w @r13,r3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r14),fr2
lds r3,fpul 	
float fpul,fr3
fmul fr4,fr3
fneg fr3
fadd fr3,fr2

loc_8C0D74A4:
fmov.s fr2,@(r0,r14) 	
mov r14,r2
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
add r0,r2
mov.l r2,@-r15
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
mov.w @(0x02,r13),r0 	
mov r0,r3 ; r3 set to 0x38, r3 set to 0x38
lds r3,fpul 	
mov.l @r15+,r3 ; r3 ??? bc r15 is ???, r3 ??? bc r15 is ???	
mova @(loc_8C0D75D0,pc),r0  ; r0 set to 0x8C0D75D0, r0 set to 0x8C0D75D0
fmov.s @r0,fr0 ; r0 ??, r0 ??	
float fpul,fr3
fmov.s @r3,fr2
fmac fr0,fr3,fr2
fmov.s fr2,@r3
mov.b @(0x05,r13),r0 	
mov.l @(loc_8C0D75D4,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
mov r0,r6
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r14,r4
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0D74D6:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20, r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
mov.l @(loc_8C0D75D8,pc),r0 ; r0 set to 0x8C15D118, r0 set to 0x8C15D118, r0 set to 0x8C15D118
extu.b r3,r3
mov.l @(0x18,r14),r5 ; r5 ??? bc r14 is ???, r5 ??? bc r14 is ???	
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0D74EC:
mov r4,r3
mov.l @(loc_8C0D75DC,pc),r1 ; r1 set to 0x8C15D158
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D74FE:
#data 0x4F22
#data 0x62438445
#data 0x6143D336
#data 0x725C7001
#data 0x71348045
#data 0xE00C430b
#data 0xD633E020
#data 0xE050024c
#data 0x4208622c
#data 0x326C4200
#data 0xF437F328
#data 0x034CE020
#data 0x633CE004
#data 0x43004308
#data 0xF366363c
#data 0xF437E054
#data 0x4F26

loc_8C0D753E:
#data 0x2FE6
#data 0x7FFC4F22
#data 0x6E43D328
#data 0x430B2F52
#data 0x600E64E3
#data 0x890E4011
#data 0xE30084E4
#data 0x80E47001
#data 0x0E349030
#data 0x64F2932f
#data 0x8443343c
#data 0x89022008
#data 0x70FF8443
#data 0x8043

loc_8C0D7572:
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D757A:
#data 0x9023
#data 0x6E532FE6
#data 0x4F222FD6
#data 0x600C00Ec
#data 0x8F128815
#data 0x901A6D43
#data 0x600C00Ec
#data 0x8B0C8802
#data 0x02EC9016
#data 0x89082228
#data 0x93139013
#data 0x644D04Ed
#data 0x891F3430
#data 0x3410910f
#data 0x891c

loc_8C0D75B2:
#data 0x84D4
#data 0x7001E300
#data 0x900180D4
#data 0x0D34A044
#data 0x02A4012c
#data 0x01E901D0
#data 0x01580140
#data 0x15071506

#align4
loc_8C0D75D0:
#data 0x40092492

#align4
loc_8C0D75D4:
#data bank03.loc_8c034C38

loc_8C0D75D8:
#data 0x8c15D118

loc_8C0D75DC:
#data 0x8c15D158

loc_8C0D75E0:
#data bank12.loc_8c1294C8

loc_8C0D75E4:
#data 0x8c15D160

loc_8C0D75E8:
#data bank03.loc_8c034D8c

loc_8C0D75EC:
#data 0x430BD34b
#data 0xE02064D3
#data 0x04DCD24a
#data 0xF408C74a
#data 0x9085644c
#data 0x44006343
#data 0x343C4308
#data 0x342C03Ed
#data 0x8F082338
#data 0x63410D35
#data 0xF2E6E034
#data 0xF04C435a
#data 0xA007F32d
#data 0xF23e

loc_8C0D7622:
#data 0x6341
#data 0xF2E6E034
#data 0xF32D435a
#data 0xF231F342

#align4
loc_8C0D7630:
#data 0x8541FD27
#data 0x435A6303
#data 0xF2E6E038
#data 0xF32DC73a
#data 0xE038F008
#data 0xFD27F23e

#align4
loc_8C0D7648:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0D7650:
#data 0x2FE6905d
#data 0x600C005c
#data 0x8F0E8815
#data 0x90576E43
#data 0x600C005c
#data 0x8B088802
#data 0x93539053
#data 0x644D045d
#data 0x890A3430
#data 0x3410914f
#data 0x8907

loc_8C0D767A:
#data 0x84E4
#data 0x7001E300
#data 0x904980E4
#data 0x000B0E34
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D768A:
#data 0x84E5
#data 0xD12764E3
#data 0x4008600c
#data 0x432B031e
#data 0x000B6EF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D769E:
mov.b @(0x05,r4),r0 	
fldi1 fr3
add 0x01,r0
mov.b r0,@(0x05,r4) 	
mov 0x0A,r0 ; r0 set to 0x0a
mov.w r0,@(0x1C,r4) 	
mov.w @(loc_8C0D771A,pc),r0 ; r0 set to 0x108
fmov.s fr3,@(r0,r4) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s fr3,@(r0,r4) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s fr3,@(r0,r4) 	

loc_8C0D76B6:
mov.l @(loc_8C0D7730,pc),r1 ; r1 set to 0x3ECCCCCD, r1 set to 0x3ECCCCCd
mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
fmov.s @(r0,r4),fr2
lds r1,fpul 	
mov.l @(loc_8C0D7734,pc),r1 ; r1 set to 0x3E800000, r1 set to 0x3E800000
fldi0 fr0
fsts fpul,fr3
fadd fr3,fr2
lds r1,fpul 	
mov.w @(loc_8C0D771A,pc),r1 ; r1 set to 0x108, r1 set to 0x108
mov.w @(loc_8C0D771A,pc),r2 ; r2 set to 0x108, r2 set to 0x108
fmov.s fr2,@(r0,r4) 	
mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
fmov.s @(r0,r4),fr1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???	
add r4,r1
fsts fpul,fr2
add r4,r2 ; r2 ??? bc r4 is ???, r2 ??? bc r4 is ???	
fadd fr2,fr1
fmov.s fr1,@(r0,r4) 	
mov.w @(0x1C,r4),r0 	
fmov.s @r1,fr1
mov r0,r3 ; r3 set to 0x54, r3 set to 0x54
lds r3,fpul 	
fneg fr1
fadd fr0,fr1
float fpul,fr3
fdiv fr3,fr1
fmov.s @r2,fr3 ; r3 ??? bc r2 is ???, r3 ??? bc r2 is ???	
fadd fr1,fr3
fmov.s fr3,@r2
mov.w @(0x1C,r4),r0 	
add 0xFF,r0 ; r0 set to 0x53, r0 set to 0x53
mov.w r0,@(0x1C,r4) 	
exts.w r0,r0 ; r0 ??, r0 ??	
tst r0,r0
bf loc_8C0D7738
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D7718,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------
#data 0x01D00130
#data 0x015801E9
#data 0x15071506

loc_8C0D7718:
#data 0x012c

loc_8C0D771A:
#data 0x0108

#align4
loc_8C0D771C:
#data bank03.loc_8c034D8c

loc_8C0D7720:
#data 0x8c15D0A8
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0D772C:
#data 0x8c15D178

loc_8C0D7730:
#data 0x3ECCCCCd

#align4
loc_8C0D7734:
#data 0x3E800000


loc_8C0D7738:
mov 0x20,r0 ; r0 set to 0x20
mov.l @(loc_8C0D7858,pc),r2 ; r2 set to 0x8C15D0A8
mov.b @(r0,r4),r6
mova @(loc_8C0D785C,pc),r0  ; r0 set to 0x8C0D785c
fmov.s @r0,fr4
extu.b r6,r6
mov.w @(loc_8C0D7846,pc),r0 ; r0 set to 0x130
mov r6,r3
shll r6
shll2 r3
add r3,r6
mov.w @(r0,r5),r3
add r2,r6
tst r3,r3
bf/s loc_8C0D7768
mov.w r3,@(r0,r4) 	
mov.w @r6,r3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr2 ; r2 ??? bc r5 is ???	
lds r3,fpul 	
fmov fr4,fr0 ; r0 ??? bc r4 is ???	
float fpul,fr3
bra loc_8C0D7776
fmac fr0,fr3,fr2

loc_8C0D7768:
mov.w @r6,r3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr2
lds r3,fpul 	
float fpul,fr3
fmul fr4,fr3
fsub fr3,fr2

loc_8C0D7776:
fmov.s fr2,@(r0,r4) 	
mov.w @(0x02,r6),r0 	
mov r0,r3 ; r3 set to 0x34
lds r3,fpul 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r5),fr2
mova @(loc_8C0D7860,pc),r0  ; r0 set to 0x8C0D7860, r0 set to 0x8C0D7860
float fpul,fr3
fmov.s @r0,fr0 ; r0 ??, r0 ??	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmac fr0,fr3,fr2
fmov.s fr2,@(r0,r4) 	
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0D7792:
#data 0x9059
#data 0x6E532FE6
#data 0x2FC62FD6
#data 0x00EC4F22
#data 0x8815600c
#data 0x6D438F0e
#data 0x00EC904f
#data 0x8802600c
#data 0x904B8B08
#data 0x04ED934b
#data 0x3430644d
#data 0x91478909
#data 0x89063410

#align4
loc_8C0D77C4:
#data 0xE30084D4
#data 0x80D47001
#data 0xA0359041
#data 0x0D34

loc_8C0D77D2:
#data 0xE020
#data 0x0CDCD220
#data 0x903BE70f
#data 0x6CCCE51b
#data 0x00EC63C3
#data 0x4C004308
#data 0xD31E3C3c
#data 0x3C2C2709
#data 0x660384C5
#data 0x64D3430b
#data 0xF408C718
#data 0x03ED9023
#data 0x8F082338
#data 0x63C10D35
#data 0xF2E6E034
#data 0xF04C435a
#data 0xA007F32d
#data 0xF23e

loc_8C0D7816:
#data 0x63C1
#data 0xF2E6E034
#data 0xF32D435a
#data 0xF231F342

#align4
loc_8C0D7824:
#data 0x85C1FD27
#data 0x435A6303
#data 0xF2E6E038
#data 0xF32DC70b
#data 0xE038F008
#data 0xFD27F23e

#align4
loc_8C0D783C:
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D7846:
#data 0x0130
#data 0x01E901D0
#data 0x15060158
#data 0x012C1507
#data 0x00000140

#align4
loc_8C0D7858:
#data 0x8c15D0A8

loc_8C0D785C:
#data 0x3FD55555

#align4
loc_8C0D7860:
#data 0x40092492

#align4
loc_8C0D7864:
#data bank03.loc_8c034CD6

loc_8C0D7868:
#data 0x2FE6908c
#data 0x005C4F22
#data 0x881D600c
#data 0x6E438F0b
#data 0x005C9085
#data 0x8801600c
#data 0x90818B05
#data 0x035D9281
#data 0x3320633d
#data 0x8908

loc_8C0D788E:
#data 0x84E4
#data 0x7001E300
#data 0x907980E4
#data 0x4F260E34
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0D78A0:
#data 0xD23CE020
#data 0xC73C04Ec
#data 0x644CF408
#data 0x6343906f
#data 0x43084400
#data 0x035D343c
#data 0x2338342c
#data 0x0E358F08
#data 0xE0346341
#data 0x435AF256
#data 0xF32DF04c
#data 0xF23EA007

#align4
loc_8C0D78D0:
#data 0xE0346341
#data 0x435AF256
#data 0xF342F32d
#data 0xF231

loc_8C0D78DE:
#data 0xFE27
#data 0x63038541
#data 0xE038435a
#data 0xC72CF256
#data 0xF008F32d
#data 0xF23EE038
#data 0x84E6FE27
#data 0x8B072008
#data 0x420BD228
#data 0xC81F0009
#data 0x84E68B02
#data 0x80E67001

#align4
loc_8C0D790C:
#data 0x200884E6
#data 0xD3248907
#data 0x64E3430b
#data 0x4011600e
#data 0xE0008901
#data 0x80E6

loc_8C0D7922:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0D7928:
mov.w @(loc_8C0D7984,pc),r0 ; r0 set to 0x1D0
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x16,r0 	
bt loc_8C0D7940
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D798C,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0D7940:
mov.w @(loc_8C0D798C,pc),r0 ; r0 set to 0x12c
mov 0x01,r6 ; r6 set to 0x01
mov.l @(loc_8C0D79B8,pc),r3 ; r3 set to 0x8C26A5A0
mov.b r6,@(r0,r4) 	
add 0x04,r0 ; r0 set to 0x130
mov.w r6,@(r0,r4) 	
mova @(loc_8C0D79A8,pc),r0  ; r0 set to 0x8C0D79A8
fmov.s @r0,fr3 ; r3 ??	
mov 0x50,r0 ; r0 set to 0x50
fmov.s fr3,@(r0,r4) 	
mova @(loc_8C0D79AC,pc),r0  ; r0 set to 0x8C0D79Ac
fmov.s @r0,fr3
mov 0x54,r0 ; r0 set to 0x54
fmov.s fr3,@(r0,r4) 	
mova @(loc_8C0D79B0,pc),r0  ; r0 set to 0x8C0D79B0
fmov.s @r0,fr3
mov.w @(loc_8C0D7990,pc),r0 ; r0 set to 0x108
fmov.s fr3,@(r0,r4) 	
mova @(loc_8C0D79B4,pc),r0  ; r0 set to 0x8C0D79B4
fmov.s @r3,fr2
fmov.s @r0,fr3
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0D79A4,pc),r3 ; r3 set to 0x8C034D8c
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov.w @(loc_8C0D7992,pc),r0 ; r0 set to 0x41c
fldi0 fr2
fmov.s @(r0,r5),fr1
mov 0x38,r0 ; r0 set to 0x38
fadd fr2,fr1
jmp @r3
fmov.s fr1,@(r0,r4) 	
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0D7984:
#data 0x01D0
#data 0x01E9
#data 0x15040158

loc_8C0D798C:
#data 0x012c
#data 0x0130

loc_8C0D7990:
#data 0x0108

loc_8C0D7992:
#data 0x041c

#align4
loc_8C0D7994:
#data 0x8c15D0A8
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0D79A0:
#data bank03.loc_8c03319e

loc_8C0D79A4:
#data bank03.loc_8c034D8c

loc_8C0D79A8:
#data 0x40800000

#align4
loc_8C0D79AC:
#data 0x3F4CCCCd

#align4
loc_8C0D79B0:
#data 0x3F400000

#align4
loc_8C0D79B4:
#data 0xC2D55555

#align4
loc_8C0D79B8:
#data 0x8C26A5A0


loc_8C0D79BC:
mov.w @(loc_8C0D7A2C,pc),r0 ; r0 set to 0x1D0
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x16,r0 	
bt/s loc_8C0D79D4
mov 0x00,r6 ; r6 set to 0x00
mov.b @(0x04,r4),r0 	
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D7A2E,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r6,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0D79D4:
mov.w @(loc_8C0D7A2E,pc),r0 ; r0 set to 0x12c
mov 0x01,r3 ; r3 set to 0x01
mov.b r3,@(r0,r4) 	
add 0x04,r0 ; r0 set to 0x130
mov.w r6,@(r0,r4) 	
mova @(loc_8C0D7A34,pc),r0  ; r0 set to 0x8C0D7A34
fmov.s @r0,fr3 ; r3 ??	
mov 0x50,r0 ; r0 set to 0x50
mov.l @(loc_8C0D7A44,pc),r3 ; r3 set to 0x8C26A5A4
fmov.s fr3,@(r0,r4) 	
mova @(loc_8C0D7A38,pc),r0  ; r0 set to 0x8C0D7A38
fmov.s @r0,fr3 ; r3 ??	
mov 0x54,r0 ; r0 set to 0x54
fmov.s fr3,@(r0,r4) 	
mova @(loc_8C0D7A3C,pc),r0  ; r0 set to 0x8C0D7A3c
fmov.s @r0,fr3
mov.w @(loc_8C0D7A30,pc),r0 ; r0 set to 0x108
fmov.s fr3,@(r0,r4) 	
mova @(loc_8C0D7A40,pc),r0  ; r0 set to 0x8C0D7A40
fmov.s @r3,fr2
fmov.s @r0,fr3
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0D7A48,pc),r3 ; r3 set to 0x8C034D8c
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov.w @(loc_8C0D7A32,pc),r0 ; r0 set to 0x41c
fldi0 fr2
fmov.s @(r0,r5),fr1
mov 0x38,r0 ; r0 set to 0x38
fadd fr2,fr1
jmp @r3
fmov.s fr1,@(r0,r4) 	
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0D7A18:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D7A2E,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0D7A26:
mov.l @(loc_8C0D7A4C,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0D7A2C:
#data 0x01D0

loc_8C0D7A2E:
#data 0x012c

loc_8C0D7A30:
#data 0x0108

loc_8C0D7A32:
#data 0x041c

#align4
loc_8C0D7A34:
#data 0x40600000

#align4
loc_8C0D7A38:
#data 0x3F4CCCCd

#align4
loc_8C0D7A3C:
#data 0x3F400000

#align4
loc_8C0D7A40:
#data 0x42555555

#align4
loc_8C0D7A44:
#data 0x8C26A5A4

#align4
loc_8C0D7A48:
#data bank03.loc_8c034D8c

loc_8C0D7A4C:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0x60532F42
#data 0xD3480009
#data 0x80F4E503
#data 0x430BE600
#data 0x20086463
#data 0x64038D0b
#data 0xE120D344
#data 0x9280314c
#data 0x84F41434
#data 0xE0262100
#data 0x143663F2
#data 0x7F080425
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0D7A8A:
#data 0x2FE6
#data 0x2FC62FD6
#data 0x2FB66C43
#data 0x2FA6E400
#data 0x2F96EB0c
#data 0x2F866E43
#data 0x4F22E901
#data 0x6D43D835
#data 0x9A65

loc_8C0D7AAA:
#data 0xE503
#data 0x480BE602
#data 0x200864C3
#data 0x64038D0a
#data 0xD231E020
#data 0x04941424
#data 0x14C6E026
#data 0xE02304A5
#data 0x7D0104D4

#align4
loc_8C0D7ACC:
#data 0x63EE7E01
#data 0x8BEA33B3
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D7AE6:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0D7B84,pc),r4 ; r4 set to 0x8C28C6C4
tst r3,r3
bf loc_8C0D7B0a
mov.w @(loc_8C0D7B78,pc),r3 ; r3 set to 0xCc
mov.l @(loc_8C0D7B88,pc),r1 ; r1 set to 0x8C15D180
add r14,r3 ; r3 ??? bc r14 is ???	
mov.l r3,@r4 ; r4 ??? bc r3 is ???	
mov r14,r4
mov.b @(0x04,r14),r0 	
extu.b r0,r0 ; r0 set to 0x20
shll2 r0 ; r0 set to 0x80
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0D7B0A:
mov.w @(loc_8C0D7B78,pc),r2 ; r2 set to 0xCc
mov.l @(loc_8C0D7B90,pc),r1 ; r1 set to 0x8C15D190
add r14,r2 ; r2 ??? bc r14 is ???	
mov.l r2,@r4
mov r14,r4
mov.w @(loc_8C0D7B78,pc),r2 ; r2 set to 0xCc
mov.l @(0x18,r14),r3
add r3,r2 ; r2 ??? bc r3 is ???	
mov.l @(loc_8C0D7B8C,pc),r3 ; r3 set to 0x8C28C6C8
mov.l r2,@r3 ; r3 ??? bc r2 is ???	
mov.b @(0x04,r14),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r2
jmp @r2
mov.l @r15+,r14

loc_8C0D7B2A:
#data 0x5346
#data 0xF336E034
#data 0xE038F437
#data 0xF3365346
#data 0xE023F437
#data 0xC715034c
#data 0x633CF208
#data 0x43089019
#data 0x43084308
#data 0x034D435a
#data 0x2338F32d
#data 0x8F01F43c
#data 0xF44DF422

#align4
loc_8C0D7B5C:
#data 0xF346E034
#data 0xF437F340
#data 0x5346E050
#data 0xF437F336
#data 0x5346E054
#data 0x000BF336
#data 0x1901F437

loc_8C0D7B78:
#data 0x00Cc
#data 0x0130

#align4
loc_8C0D7B7C:
#data bank04.loc_8c044F12

loc_8C0D7B80:
#data loc_8c0d7AE6

loc_8C0D7B84:
#data 0x8C28C6C4

#align4
loc_8C0D7B88:
#data 0x8c15D180

loc_8C0D7B8C:
#data 0x8C28C6C8

#align4
loc_8C0D7B90:
#data 0x8c15D190
#data 0x3FD55555

#align4
loc_8C0D7B98:
#data 0x6352D523
#data 0xE30B6230
#data 0x3233622c
#data 0x854F8912
#data 0x814F70Ff
#data 0x4015600f
#data 0xE001890c
#data 0xE034814f
#data 0x61206252
#data 0x22107101
#data 0xF246D11a
#data 0xF30D415a
#data 0xF427F230

#align4
loc_8C0D7BCC:
#data 0x0009000b
;-------------------------------------------------------------------------------

#align4
loc_8C0D7BD0:
#data 0x034D9027
#data 0x8F0F2338
#data 0x9023E501
#data 0xC714034c
#data 0xE034F208
#data 0x435A633c
#data 0xF32DD312
#data 0xF322F138
#data 0xF346F131
#data 0x8911F135

#align4
loc_8C0D7BF8:
#data 0x034D9013
#data 0x890E2338
#data 0xD20D9010
#data 0xC70A034c
#data 0xE034F008
#data 0xF228633c
#data 0xF32D435a
#data 0xF346F23e
#data 0x8B00F325

loc_8C0D7C1C:
#data 0xE500

loc_8C0D7C1E:
#data 0x000b
#data 0x01306053
#data 0x0000013f
#data 0x8C28C6C4
#data 0x42555555
#data 0x3FD55555
#data 0x8C26A5A0
#data 0x8C26A5A4


loc_8C0D7C3C:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D7D84,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0D7D8C,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0D7D84,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r14),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D7D86,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0D7D88,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D7D90,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r14),r1
mov 0x24,r0 ; r0 set to 0x24
mov 0x00,r4 ; r4 set to 0x00
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov r14,r1
add 0x34,r1
mov.b r3,@(r0,r14) 	
mov 0x0B,r3 ; r3 set to 0x0b
mov.w @(loc_8C0D7D86,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
add 0x04,r0 ; r0 set to 0x130
mov.w r4,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14) 	
mova @(loc_8C0D7D94,pc),r0  ; r0 set to 0x8C0D7D94
fmov.s @r0,fr3 ; r3 ??	
mov 0x50,r0 ; r0 set to 0x50
mov.l @(loc_8C0D7D90,pc),r3 ; r3 set to 0x8C1294C8
fmov.s fr3,@(r0,r14) 	
mov 0x54,r0 ; r0 set to 0x54
fldi1 fr3
fmov.s fr3,@(r0,r14) 	
mov.l @(0x18,r14),r2
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(loc_8C0D7D98,pc),r1 ; r1 set to 0x43092492
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
lds r1,fpul 	
mov.l @(loc_8C0D7D9C,pc),r2 ; r2 set to 0x8C28C6C4
fsts fpul,fr3
fadd fr3,fr2 ; r2 ??	
fmov.s fr2,@(r0,r14) 	
mov.l @r2,r3 ; r3 ??? bc r2 is ???	
mov.b r4,@r3
mov r5,r0 ; r0 set to 0x01
nop 	
mov.w r0,@(0x1E,r14) 	
bsr loc_8C0D7A8a
mov r14,r4 ; r4 ??? bc r14 is ???	
lds.l @r15+,pr 	
mov r14,r4
mov.l @r15+,r14

loc_8C0D7CF8:
mov.l r14,@-r15
mov r4,r14
mov.l @(0x18,r14),r4
mov 0x02,r3 ; r3 set to 0x02, r3 set to 0x02
mov.b @(0x04,r4),r0 	
extu.b r0,r0 ; r0 set to 0x01
cmp/ge r3,r0
bf loc_8C0D7D18
mov.b @(0x04,r14),r0 	
mov 0x00,r2 ; r2 set to 0x00, r2 set to 0x00
add 0x01,r0 ; r0 set to 0x02
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0D7D86,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
mov.b r2,@(r0,r14) 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D7D18:
mov.b @(0x05,r14),r0 	
mov r14,r4
mov.l @(loc_8C0D7DA0,pc),r1 ; r1 set to 0x8C15D1A0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0D7D2C:
#data 0x853E5346
#data 0x89074015
#data 0xF39D8445
#data 0x80457001
#data 0x814EE00a
#data 0xF437E054

#align4
loc_8C0D7D44:
#data 0x0009AF28

#align4
loc_8C0D7D48:
#data 0xE154854e
#data 0xF28D314c
#data 0x435A6303
#data 0xE254F318
#data 0xF12D324c
#data 0xF320F34d
#data 0xF128F313
#data 0xF21AF130
#data 0x70FF854e
#data 0x600F814e
#data 0x89054015
#data 0xE3008444
#data 0x80447001
#data 0x04349003

#align4
loc_8C0D7D80:
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0D7D84:
#data 0x00Dc

loc_8C0D7D86:
#data 0x012c

loc_8C0D7D88:
#data 0x01A3
#data 0x0000

#align4
loc_8C0D7D8C:
#data bank12.loc_8c129560

loc_8C0D7D90:
#data bank12.loc_8c1294C8

loc_8C0D7D94:
#data 0x3F8147Ae

#align4
loc_8C0D7D98:
#data 0x43092492

#align4
loc_8C0D7D9C:
#data 0x8C28C6C4

#align4
loc_8C0D7DA0:
#data 0x8c15D1A0


loc_8C0D7DA4:
mov.w @(loc_8C0D7EAC,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0D7EB4,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D7EAC,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D7EAE,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0D7EB0,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D7EB8,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x24,r0 ; r0 set to 0x24
mov 0x40,r5 ; r5 set to 0x40
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r4) 	
mov.w @(loc_8C0D7EB2,pc),r0 ; r0 set to 0x13c
mov.b r5,@(r0,r4) 	
add 0x01,r0 ; r0 set to 0x13d
mov.b r5,@(r0,r4) 	
add 0x01,r0 ; r0 set to 0x13e
mov.b r5,@(r0,r4) 	
add 0x01,r0 ; r0 set to 0x13f
mov.b r5,@(r0,r4) 	
lds.l @r15+,pr 	

loc_8C0D7E20:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov 0x02,r3 ; r3 set to 0x02, r3 set to 0x02
sts.l pr,@-r15
mov.l @(0x18,r14),r4
mov.b @(0x04,r4),r0 	
extu.b r0,r0 ; r0 set to 0x3f
cmp/ge r3,r0
bf loc_8C0D7E3c
mov.b @(0x04,r14),r0 	
add 0x01,r0 ; r0 set to 0x40
bra loc_8C0D7E54
mov.b r0,@(0x04,r14) 	

loc_8C0D7E3C:
mov 0x23,r0 ; r0 set to 0x23
mov.b @(r0,r14),r3
tst r3,r3
bf loc_8C0D7E48
bra loc_8C0D7E6a
mov 0x08,r13

loc_8C0D7E48:
mov.l @(loc_8C0D7EBC,pc),r2 ; r2 set to 0x8C28C6C8
mov.b @(r0,r14),r3
mov.l @r2,r4
mov.b @r4,r1
cmp/hi r1,r3
bf loc_8C0D7E5c

loc_8C0D7E54:
mov.w @(loc_8C0D7EAE,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
mov 0x00,r2 ; r2 set to 0x00, r2 set to 0x00
bra loc_8C0D7E90
mov.b r2,@(r0,r14) 	

loc_8C0D7E5C:
mov.b @r4,r2
mov.b @(r0,r14),r3
cmp/eq r2,r3
bf loc_8C0D7E68
bra loc_8C0D7E6a
mov 0x0A,r13

loc_8C0D7E68:
#data 0xED09

loc_8C0D7E6A:
#data 0xBEB1
#data 0x911E64E3
#data 0x210031Ec
#data 0x03EC901b
#data 0x89042338
#data 0xE51BD310
#data 0x430B66D3
#data 0x64E3

loc_8C0D7E86:
#data 0x4F26
#data 0x6DF664E3
#data 0x6EF6AE4d


loc_8C0D7E90:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D7E98:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D7EAE,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0D7EA6:
mov.l @(loc_8C0D7EC4,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0D7EAC:
#data 0x00Dc

loc_8C0D7EAE:
#data 0x012c

loc_8C0D7EB0:
#data 0x01A3

loc_8C0D7EB2:
#data 0x013c

#align4
loc_8C0D7EB4:
#data bank12.loc_8c129560

loc_8C0D7EB8:
#data bank12.loc_8c1294C8

loc_8C0D7EBC:
#data 0x8C28C6C8

#align4
loc_8C0D7EC0:
#data bank03.loc_8c034C38

loc_8C0D7EC4:
#data bank04.loc_8c0450C0

loc_8C0D7EC8:
#data 0x7FFC4F22
#data 0xE503D344
#data 0xE6002F42
#data 0x6463430b
#data 0x8D042008
#data 0xD3416403
#data 0x62F21434
#data 0x1426

loc_8C0D7EE6:
#data 0x7F04
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0D7EEE:
mov r4,r3
mov.l @(loc_8C0D7FE8,pc),r1 ; r1 set to 0x8C15D1A8
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D7F00:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D7FD2,pc),r3 ; r3 set to 0x1902
mov.w @(loc_8C0D7FD4,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0D7FD4,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov 0x26,r0 ; r0 set to 0x26
mov.w r3,@(r0,r14) 	
mov.w @(loc_8C0D7FD6,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r14),r4
mov.l @(loc_8C0D7FEC,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C0D7FD8,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0D7FDA,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D7FF0,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov 0x00,r3 ; r3 set to 0x00
mov 0x1B,r5 ; r5 set to 0x1b
mov.b r2,@(r0,r14) 	
mov 0x07,r2 ; r2 set to 0x07
mov.w @(loc_8C0D7FD8,pc),r0 ; r0 set to 0x12c
mov 0x01,r6 ; r6 set to 0x01
mov.b r3,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r2,@(r0,r14) 	
mova @(loc_8C0D7FF4,pc),r0  ; r0 set to 0x8C0D7FF4
fmov.s @r0,fr3 ; r3 ??	
mov.w @(loc_8C0D7FDC,pc),r0 ; r0 set to 0x108
mov.l @(loc_8C0D7FF8,pc),r3 ; r3 set to 0x8C034C38
fmov.s fr3,@(r0,r14) 	
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r14,r4
mov.l @r15+,r14

loc_8C0D7F86:
sts.l pr,@-r15
mov.l @(0x18,r4),r5 ; r5 ??? bc r4 is ???	
mov 0x02,r6 ; r6 set to 0x02, r6 set to 0x02
mov.b @(0x04,r5),r0 	
extu.b r0,r0 ; r0 set to 0x08
cmp/ge r6,r0
bf loc_8C0D7FA4
mov r6,r0 ; r0 set to 0x02, r0 set to 0x02
nop 	
mov.b r0,@(0x04,r4) 	
mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
lds.l @r15+,pr 	
mov.w @(loc_8C0D7FD8,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0D7FA4:
mov.w @(loc_8C0D7FDE,pc),r0 ; r0 set to 0x130
mov r4,r1
mov.l @(loc_8C0D7FF0,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r1
mov.w @(r0,r5),r2
mov.w r2,@(r0,r4) 	
mov r5,r2
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
lds.l @r15+,pr 	
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0D7FBE:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D7FD8,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0D7FCC:
mov.l @(loc_8C0D7FFC,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0D7FD2:
#data 0x1902

loc_8C0D7FD4:
#data 0x00Dc

loc_8C0D7FD6:
#data 0x00C0

loc_8C0D7FD8:
#data 0x012c

loc_8C0D7FDA:
#data 0x01A3

loc_8C0D7FDC:
#data 0x0108

loc_8C0D7FDE:
#data 0x0130

#align4
loc_8C0D7FE0:
#data bank04.loc_8c044F12

loc_8C0D7FE4:
#data loc_8c0d7EEe

loc_8C0D7FE8:
#data 0x8c15D1A8

loc_8C0D7FEC:
#data bank12.loc_8c129560

loc_8C0D7FF0:
#data bank12.loc_8c1294C8

loc_8C0D7FF4:
#data 0x3F333333

#align4
loc_8C0D7FF8:
#data bank03.loc_8c034C38

loc_8C0D7FFC:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0x60532F42
#data 0xD34F0009
#data 0x80F4E503
#data 0x430BE600
#data 0x20086463
#data 0x64038D0f
#data 0xE120D34b
#data 0x1434314c
#data 0x62F29386
#data 0x84F41426
#data 0xE0262100
#data 0x60F20435
#data 0x001D917f
#data 0x7F08814f
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0D8042:
#data 0x2FE6
#data 0x7FF84F22
#data 0x6E432F52
#data 0x00096063
#data 0xE20580F4
#data 0x03EC9070
#data 0x89543327
#data 0xE504D23a
#data 0x420BE600
#data 0x20086463
#data 0x64038D4d
#data 0x9164D237
#data 0x92621424
#data 0x9061314c
#data 0x14E6D335
#data 0x32EC430b
#data 0xE501905d
#data 0x71506143
#data 0x84E20454
#data 0x84E18042
#data 0xE0508041
#data 0xF437F3E6
#data 0xF3E6E054
#data 0x904FF437
#data 0x043403Ec
#data 0x02EC7001
#data 0xE0300424
#data 0x62E303Ec
#data 0x04347250
#data 0x430BD327
#data 0xE024E00c
#data 0x02ECF39d
#data 0xE121E3Ff
#data 0x314C0424
#data 0xF437903b
#data 0x04347025
#data 0x02EC7077
#data 0x622CD020
#data 0xE200032c
#data 0x04359032
#data 0x042470Fe
#data 0x0454E020
#data 0xD31A84F4
#data 0x61432100
#data 0x713462F2
#data 0xE00C430b
#data 0xE026911c
#data 0x901B0415
#data 0x730103Ec
#data 0x0E34

loc_8C0D8106:
#data 0x7F08
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D810E:
mov 0x20,r0 ; r0 set to 0x20
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(loc_8C0D815C,pc),r0 ; r0 set to 0x8C15D1B8
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

loc_8C0D8122:
mov r4,r3
mov.l @(loc_8C0D8160,pc),r1 ; r1 set to 0x8C15D1Cc
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x01581A00
#data 0x00DC02A6
#data 0x012C00C0
#data 0x010801A3
#data 0x0000012e

#align4
loc_8C0D8148:
#data bank04.loc_8c044F12

loc_8C0D814C:
#data loc_8c0d810e

loc_8C0D8150:
#data bank12.loc_8c129560

loc_8C0D8154:
#data bank12.loc_8c1294C8

loc_8C0D8158:
#data 0x8c1355D4

loc_8C0D815C:
#data 0x8c15D1B8

loc_8C0D8160:
#data 0x8c15D1Cc


loc_8C0D8164:
mov.w @(loc_8C0D829C,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0D82A8,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D829C,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D829E,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0D82A0,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D82AC,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x07,r2 ; r2 set to 0x07
mov.l @(0x18,r4),r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov r4,r1
mov.b r2,@(r0,r4) 	
add 0x34,r1
mov.l @(0x18,r4),r2 ; r2 ??? bc r4 is ???	
mov.l @(loc_8C0D82AC,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
lds.l @r15+,pr 	

loc_8C0D81DE:
mov.w @(loc_8C0D829E,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D82A2,pc),r3 ; r3 set to 0x158, r3 set to 0x158
fmov.s fr15,@-r15
fldi1 fr15
sts.l pr,@-r15
mov.l @(0x18,r14),r4
mov.b r5,@(r0,r14) 	
add 0xDC,r0 ; r0 set to 0x108, r0 set to 0x108
add r4,r3 ; r3 ??? bc r4 is ???, r3 ??? bc r4 is ???	
fmov.s fr15,@(r0,r14) 	
mov.w @r3,r3
mov.w @(0x1E,r14),r0 	
cmp/eq r3,r0
bt loc_8C0D8206
mov 0x02,r0 ; r0 set to 0x02, r0 set to 0x02
bra loc_8C0D8282
mov.b r0,@(0x04,r14) 	

loc_8C0D8206:
mov.w @(loc_8C0D829E,pc),r0 ; r0 set to 0x12c
mov 0x01,r3 ; r3 set to 0x01
mov.b r3,@(r0,r14) 	
mov.b @(0x05,r14),r0 	
extu.b r0,r0 ; r0 set to 0x2c
cmp/eq 0x00,r0 	
bt loc_8C0D8220
cmp/eq 0x01,r0 	
bt loc_8C0D8236
cmp/eq 0x02,r0 	
bt loc_8C0D8258
bra loc_8C0D8282
nop 	

loc_8C0D8220:
mov.b @(0x05,r14),r0 	
mov r14,r4
mov.l @(loc_8C0D82B0,pc),r3 ; r3 set to 0x8C034C38
mov 0x00,r6 ; r6 set to 0x00
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov 0x1B,r5 ; r5 set to 0x1b
lds.l @r15+,pr 	
fmov.s @r15+,fr15
jmp @r3
mov.l @r15+,r14

loc_8C0D8236:
mov.l @(loc_8C0D82B4,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r14,r4
mov.w @(loc_8C0D82A4,pc),r0 ; r0 set to 0x141
mov.b @(r0,r14),r2
tst r2,r2
bt loc_8C0D8282
mov.b @(0x05,r14),r0 	
add 0x01,r0 ; r0 set to 0x142
mov.b r0,@(0x05,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr15,@(r0,r14) 	
mova @(loc_8C0D82B8,pc),r0  ; r0 set to 0x8C0D82B8
fmov.s @r0,fr3 ; r3 ??	
mov 0x68,r0 ; r0 set to 0x68
bra loc_8C0D8282
fmov.s fr3,@(r0,r14) 	

#align4
loc_8C0D8258:
#data 0x31ECE168
#data 0xF318E05c
#data 0xF231F2E6
#data 0xF325F38d
#data 0xFE278F07
#data 0x700184E4
#data 0x901880E4
#data 0x7024FEF7
#data 0x0E54

loc_8C0D827A:
#data 0xE05c
#data 0x9012F3E6
#data 0xFE37


loc_8C0D8282:
lds.l @r15+,pr 	
fmov.s @r15+,fr15
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D828A:
mov r4,r3
mov.l @(loc_8C0D82BC,pc),r1 ; r1 set to 0x8C15D1Dc
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D829C:
#data 0x00Dc

loc_8C0D829E:
#data 0x012c

loc_8C0D82A0:
#data 0x01A3

loc_8C0D82A2:
#data 0x0158

loc_8C0D82A4:
#data 0x0141
#data 0x0108

#align4
loc_8C0D82A8:
#data bank12.loc_8c129560

loc_8C0D82AC:
#data bank12.loc_8c1294C8

loc_8C0D82B0:
#data bank03.loc_8c034C38

loc_8C0D82B4:
#data bank03.loc_8c034D8c

loc_8C0D82B8:
#data 0x3D800000

#align4
loc_8C0D82BC:
#data 0x8c15D1Dc


loc_8C0D82C0:
mov.w @(loc_8C0D834C,pc),r0 ; r0 set to 0x12c
mov 0x01,r3 ; r3 set to 0x01
mov.b r3,@(r0,r4) 	
mov.b @(0x04,r4),r0 	
add 0x01,r0 ; r0 set to 0x12d
mov.b r0,@(0x04,r4) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r4),r3 ; r3 ??? bc r4 is ???	
tst r3,r3
bf loc_8C0D82Ea
mova @(loc_8C0D8350,pc),r0  ; r0 set to 0x8C0D8350
fmov.s @r0,fr4
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r4),fr3
fmul fr4,fr3
fmov.s fr3,@(r0,r4) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r4),fr2
fmul fr4,fr2
bra loc_8C0D830a
fmov.s fr2,@(r0,r4) 	

loc_8C0D82EA:
mov.b @(r0,r4),r0
extu.b r0,r0
cmp/eq 0x01,r0 	
bf loc_8C0D82F6
bra loc_8C0D82Fa
fldi1 fr4

loc_8C0D82F6:
mova @(loc_8C0D8354,pc),r0  ; r0 init to 0x8C0D8354
fmov.s @r0,fr4

loc_8C0D82FA:
mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
fmov.s @(r0,r4),fr3
fmul fr4,fr3
fmov.s fr3,@(r0,r4) 	
mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
fmov.s @(r0,r4),fr2
fmul fr4,fr2
fmov.s fr2,@(r0,r4) 	

loc_8C0D830A:
mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24, r0 set to 0x24
mov 0x08,r3 ; r3 set to 0x08, r3 set to 0x08, r3 set to 0x08
mov.b r3,@(r0,r4) 	
mov 0x02,r6 ; r6 set to 0x02, r6 set to 0x02, r6 set to 0x02
mov.l @(loc_8C0D8358,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38, r3 set to 0x8C034C38
jmp @r3
mov 0x1B,r5

#align4
loc_8C0D8318:
#data 0x4F222FE6
#data 0x430BD30f
#data 0x600E6E43
#data 0x89054011
#data 0xE30084E4
#data 0x80E47001
#data 0x0E34900c

#align4
loc_8C0D8334:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D833A:
mov r4,r3
mov.l @(loc_8C0D8360,pc),r1 ; r1 set to 0x8C15D1Ec
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D834C:
#data 0x012c
#data 0x0000

#align4
loc_8C0D8350:
#data 0x3F4CCCCd

#align4
loc_8C0D8354:
#data 0x3F99999a

#align4
loc_8C0D8358:
#data bank03.loc_8c034C38

loc_8C0D835C:
#data bank03.loc_8c034D8c

loc_8C0D8360:
#data 0x8c15D1Ec

loc_8C0D8364:
#data 0x6E432FE6
#data 0x4F229175
#data 0x31EC84E4
#data 0x7001D33b
#data 0x906E80E4
#data 0x320C52E6
#data 0x70E4430b
#data 0xE101906a
#data 0x61E30E14
#data 0x715050E6
#data 0x80E28402
#data 0x840150E6
#data 0xE05080E1
#data 0xF33653E6
#data 0xE054FE37
#data 0xF33653E6
#data 0x9058FE37
#data 0x023C53E6
#data 0x70010E24
#data 0x023C53E6
#data 0xE0300E24
#data 0x023C53E6
#data 0x52E60E24
#data 0x7250D328
#data 0xE00C430b
#data 0xE02451E6
#data 0x031CE200
#data 0xD325E51b
#data 0x0E24E605
#data 0x64E3430b
#data 0x02ECE021
#data 0x89042228
#data 0xE301903a
#data 0x223A02Ed
#data 0x0E25

loc_8C0D83EE:
#data 0xC71f
#data 0xF40864E3
#data 0xF3E6E050
#data 0xFE37F342
#data 0xF2E6E054
#data 0xFE27F242
#data 0x6EF64F26


loc_8C0D8408:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0D8470,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt loc_8C0D8426
mov.b @(0x04,r14),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0D8458,pc),r0 ; r0 set to 0x12c
bra loc_8C0D843e
mov.b r3,@(r0,r14) 	

loc_8C0D8426:
mov.l @(0x18,r14),r2
mov r14,r1
mov.l @(loc_8C0D8464,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r1
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.w @(loc_8C0D845E,pc),r0 ; r0 set to 0x41c
mov.l @(0x18,r14),r1
fmov.s @(r0,r1),fr3 ; r3 ??? bc r1 is ???	
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14) 	

loc_8C0D843E:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D8444:
mov r4,r3
mov.l @(loc_8C0D8474,pc),r1 ; r1 set to 0x8C15D1Fc
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x00Dc

loc_8C0D8458:
#data 0x012c
#data 0x01A3
#data 0x0130

loc_8C0D845E:
#data 0x041c

#align4
loc_8C0D8460:
#data bank12.loc_8c129560

loc_8C0D8464:
#data bank12.loc_8c1294C8

loc_8C0D8468:
#data bank03.loc_8c034C38
#data 0x3F4CCCCd

#align4
loc_8C0D8470:
#data bank03.loc_8c034D8c

loc_8C0D8474:
#data 0x8c15D1Fc

loc_8C0D8478:
#data 0x6E432FE6
#data 0x4F2291B8
#data 0x31EC84E4
#data 0x7001D35d
#data 0x90B180E4
#data 0x320C52E6
#data 0x70E4430b
#data 0xE10190Ad
#data 0x61E30E14
#data 0x715050E6
#data 0x80E28402
#data 0x840150E6
#data 0xE05080E1
#data 0xF33653E6
#data 0xE054FE37
#data 0xF33653E6
#data 0x909BFE37
#data 0x023C53E6
#data 0x70010E24
#data 0x023C53E6
#data 0xE0300E24
#data 0x023C53E6
#data 0x52E60E24
#data 0x7250D34a
#data 0xE00C430b
#data 0xE02451E6
#data 0x031CE200
#data 0xD347E51b
#data 0x0E24E604
#data 0x64E3430b
#data 0x61E352E6
#data 0x7134D342
#data 0x430B7234
#data 0xC742E00c
#data 0x9078F408
#data 0x233803Ed
#data 0xC7408901
#data 0xF408

loc_8C0D850E:
#data 0xE150
#data 0x31EC62E3
#data 0xE034D33a
#data 0xF3E6F018
#data 0xD13C7250
#data 0x415AF34e
#data 0x31ECE154
#data 0xE038FE37
#data 0x61E3F318
#data 0x7168F2E6
#data 0xF23EF00d
#data 0x430BFE27
#data 0xC735E00c
#data 0xE050F408
#data 0xF342F3E6
#data 0xE054FE37
#data 0xF242F2E6
#data 0xC731FE27
#data 0xC731F508
#data 0xE068F408
#data 0xE050F3E6
#data 0x7038F2E6
#data 0xF321F342
#data 0xFE37F353
#data 0xF3E6E06c
#data 0xF2E6E054
#data 0xF3427038
#data 0xF353F321
#data 0xE014FE37
#data 0x81EF64E3
#data 0x81EEE01e
#data 0xE300E048
#data 0x90330E36
#data 0x4F2681Ee
#data 0x6EF6


loc_8C0D8596:
mov r4,r3
mov.l @(loc_8C0D8620,pc),r1 ; r1 set to 0x8C15D20c
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

#align4
loc_8C0D85A8:
#data 0x6103E050
#data 0x314C7138
#data 0xF318F246
#data 0xF427F230
#data 0x6103E054
#data 0x314C7138
#data 0xF318F246
#data 0xF230D117
#data 0xF427415a
#data 0xF30D9015
#data 0xF231F246
#data 0x854FF427
#data 0x814F70Ff
#data 0x4015600f
#data 0x84448904
#data 0x80447001
#data 0x814FE013

#align4
loc_8C0D85EC:
#data 0x0009000b
;-------------------------------------------------------------------------------
#data 0x012C00Dc
#data 0x013001A3
#data 0x010800F0

#align4
loc_8C0D85FC:
#data bank12.loc_8c129560

loc_8C0D8600:
#data bank12.loc_8c1294C8

loc_8C0D8604:
#data bank03.loc_8c034C38
#data 0xC2200000
#data 0x42200000
#data 0x434DB6Db
#data 0x3ECCCCCd
#data 0x41A00000
#data 0x3FC00000

#align4
loc_8C0D8620:
#data 0x8c15D20c
#data 0x3D23D70a

#align4
loc_8C0D8628:
#data 0xE050D114
#data 0x415AF246
#data 0xF30DD113
#data 0x415AF232
#data 0xF427D112
#data 0xF146E054
#data 0xF122F20d
#data 0xF417415a
#data 0xF10D9017
#data 0xF011F046
#data 0x854FF407
#data 0x814F70Ff
#data 0x4015600f
#data 0x84448902
#data 0x80447001

#align4
loc_8C0D8664:
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0D8668:
mov r4,r3
mov.l @(loc_8C0D8688,pc),r1 ; r1 set to 0x8C15D214
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x0108
#data 0x3FC00000
#data 0x3F666666
#data 0x3D03126f

#align4
loc_8C0D8688:
#data 0x8c15D214

loc_8C0D868C:
#data 0x6E432FE6
#data 0x4F2291A9
#data 0x31EC84E4
#data 0x7001D356
#data 0x90A280E4
#data 0x320C52E6
#data 0x70E4430b
#data 0xE101909e
#data 0x61E30E14
#data 0x715050E6
#data 0x80E28402
#data 0x840150E6
#data 0xE05080E1
#data 0xF33653E6
#data 0xE054FE37
#data 0xF33653E6
#data 0x908CFE37
#data 0x023C53E6
#data 0x70010E24
#data 0x023C53E6
#data 0xE0300E24
#data 0x023C53E6
#data 0x52E60E24
#data 0x7250D343
#data 0xE00C430b
#data 0xE02451E6
#data 0x031CE200
#data 0xD340E51b
#data 0x0E24E604
#data 0x64E3430b
#data 0x61E352E6
#data 0x7134D33b
#data 0x430B7234
#data 0xC73BE00c
#data 0x9069F408
#data 0x233803Ed
#data 0xC7398901
#data 0xF408

loc_8C0D8722:
#data 0xE150
#data 0x31EC62E3
#data 0xE034D333
#data 0xF3E6F018
#data 0xD1357250
#data 0x415AF34e
#data 0x31ECE154
#data 0xE038FE37
#data 0x61E3F318
#data 0x7168F2E6
#data 0xF23EF00d
#data 0x430BFE27
#data 0xC72EE00c
#data 0xF40864E3
#data 0xF3E6E050
#data 0xFE37F342
#data 0xF2E6E054
#data 0xFE27F242
#data 0x81EEE01e
#data 0xF308C728
#data 0xF2E6E068
#data 0xF1E6E050
#data 0xF232C726
#data 0xF108F211
#data 0xF2139035
#data 0x4F26FE27
#data 0x6EF6

loc_8C0D878A:
#data 0xE050
#data 0x71386103
#data 0xF246314c
#data 0xD120F318
#data 0x415AF230
#data 0xF427D11f
#data 0xF246E054
#data 0xF232F30d
#data 0xF427415a
#data 0xF20D9020
#data 0xF121F146
#data 0x854EF417
#data 0x814E70Ff
#data 0x4011600f
#data 0x84448905
#data 0x7001E300
#data 0x900D8044
#data 0x0434

loc_8C0D87CE:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0D87D2:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
fldi1 fr3
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D87E8,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	
add 0xDC,r0 ; r0 set to 0x108
rts 	
fmov.s fr3,@(r0,r4) 	
;-------------------------------------------------------------------------------
#data 0x00Dc

loc_8C0D87E8:
#data 0x012c
#data 0x01A3
#data 0x00880130
#data 0x00000108

#align4
loc_8C0D87F4:
#data bank12.loc_8c129560

loc_8C0D87F8:
#data bank12.loc_8c1294C8

loc_8C0D87FC:
#data bank03.loc_8c034C38
#data 0xC2200000
#data 0x42200000
#data 0x434DB6Db
#data 0x3C75C28f
#data 0x41200000
#data 0x41F00000
#data 0x3F400000
#data 0x3D088889

#align4
loc_8C0D8820:
#data 0x004CE020
#data 0x8801600c
#data 0x90068B04
#data 0x025C5546
#data 0x052472Ff

#align4
loc_8C0D8834:
#data 0x432BD301
#data 0x02A60009

#align4
loc_8C0D883C:
#data bank04.loc_8c0450C0

loc_8C0D8840:
#data 0x7FF84F22
#data 0xE600D35b
#data 0x2F501F41
#data 0x430BE503
#data 0x20086463
#data 0x64038D07
#data 0xE020D357
#data 0x52F11434
#data 0x63F01426
#data 0x0434

loc_8C0D8866:
#data 0x7F08
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0D886E:
#data 0x4F22
#data 0x1F427FF4
#data 0x60632F52
#data 0xD34E0009
#data 0x80F4E503
#data 0x430BE602
#data 0x200864F2
#data 0x64038D0a
#data 0xE120D34a
#data 0x1434314c
#data 0x142652F2
#data 0x143563F2
#data 0x210084F4

#align4
loc_8C0D88A0:
#data 0x4F267F0c
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0D88A8:
mov r4,r3
mov.l @(loc_8C0D89BC,pc),r1 ; r1 set to 0x8C15D460
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D88BA:
#data 0x2FE6
#data 0x93736E43
#data 0x2FD6E501
#data 0x92719172
#data 0x84E44F22
#data 0x700131Ec
#data 0xE02680E4
#data 0x90680E35
#data 0x0E54D339
#data 0x324C54E6
#data 0x7094430b
#data 0x61E39061
#data 0x0E547150
#data 0x80E28442
#data 0x80E18441
#data 0xF346E050
#data 0xE054FE37
#data 0xFE37F346
#data 0x034C9055
#data 0x70010E34
#data 0x0E24024c
#data 0x034CE030
#data 0x72506243
#data 0xD32B0E34
#data 0xE00C430b
#data 0x024CE024
#data 0xE0200E24
#data 0xD2280DEc
#data 0x63D36DDc
#data 0x3D3C4D08
#data 0x3D2C4D00
#data 0x233863D0
#data 0x90398909
#data 0x0E3463D0
#data 0x63037001
#data 0x613133Ec
#data 0x310C84D1
#data 0x2311

loc_8C0D894E:
#data 0x85D1
#data 0xE0316303
#data 0x85D20E34
#data 0x435A6303
#data 0xF208C71b
#data 0xF32DE05c
#data 0xFE37F322
#data 0x630385D3
#data 0xC718435a
#data 0xF108D318
#data 0xF32DE060
#data 0xF34DF312
#data 0x84D9FE37
#data 0x84D86603
#data 0x430B6503
#data 0x4F2664E3
#data 0x6DF664E3
#data 0x6EF6


loc_8C0D8992:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0D89D8,pc),r0 ; r0 set to 0x8C15D470
extu.b r3,r3
mov.l @(0x18,r14),r5
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14
#data 0x012C1C00
#data 0x01A300Dc
#data 0x0000012d

#align4
loc_8C0D89B4:
#data bank04.loc_8c044F12

loc_8C0D89B8:
#data loc_8c0d88A8

loc_8C0D89BC:
#data 0x8c15D460

loc_8C0D89C0:
#data bank12.loc_8c129560

loc_8C0D89C4:
#data bank12.loc_8c1294C8

loc_8C0D89C8:
#data 0x8c15D224
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0D89D4:
#data bank03.loc_8c034C38

loc_8C0D89D8:
#data 0x8c15D470

loc_8C0D89DC:
#data 0x4F222FE6
#data 0x2F527FFc
#data 0xB1ED6E43
#data 0x62F264E3
#data 0x032CE024
#data 0xD33E0E34
#data 0x64E3430b
#data 0x4011600e
#data 0x84E48905
#data 0x7001E300
#data 0x906C80E4
#data 0x0E34

loc_8C0D8A0A:
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D8A12:
#data 0x2FE6
#data 0xB1D54F22
#data 0xD3346E43
#data 0xE208E024
#data 0x430B0E24
#data 0x600E64E3
#data 0x89054011
#data 0xE30084E4
#data 0x80E47001
#data 0x0E349055

#align4
loc_8C0D8A38:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D8A3E:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0D8AEC,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r5,r13
mov r13,r5
bsr loc_8C0D8DC4
mov r14,r4
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r3 ; r3 ??? bc r13 is ???	
mov 0x00,r2 ; r2 set to 0x00
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0D8AE2,pc),r0 ; r0 set to 0x12c
mov.b r2,@(r0,r14) 	
add 0x15,r0 ; r0 set to 0x141
mov.b @(r0,r13),r3
tst r3,r3
bf loc_8C0D8A6e
mov.b @(0x04,r14),r0 	
add 0x01,r0 ; r0 set to 0x142
bra loc_8C0D8A7c
mov.b r0,@(0x04,r14) 	

loc_8C0D8A6E:
#data 0x9039
#data 0x421102Dc
#data 0x90348902
#data 0x0E24E201


loc_8C0D8A7C:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0D8A84:
#data 0x2FE6902e
#data 0x2FD66E53
#data 0x03EC4F22
#data 0x8D0A2338
#data 0x90266D43
#data 0x600C00Ec
#data 0x8B048815
#data 0x00EC9022
#data 0x8802600c
#data 0x8905

loc_8C0D8AAA:
#data 0x84D4
#data 0x80D47001
#data 0xA0089017
#data 0xE300

loc_8C0D8AB6:
#data 0xD30d
#data 0x64D3430b
#data 0xB18165E3
#data 0xE02464D3
#data 0x03Ec

loc_8C0D8AC6:
#data 0x0D34
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0D8AD0:
mov r4,r3
mov.l @(loc_8C0D8AF0,pc),r1 ; r1 set to 0x8C15D554
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D8AE2:
#data 0x012c
#data 0x01D00141
#data 0x000001E9

#align4
loc_8C0D8AEC:
#data bank03.loc_8c034D8c

loc_8C0D8AF0:
#data 0x8c15D554

loc_8C0D8AF4:
#data 0xE30F8445
#data 0x80457001
#data 0x814EE000
#data 0x0434E024

#align4
loc_8C0D8B04:
#data 0x4F222FE6
#data 0x2F527FFc
#data 0xB17D6E43
#data 0xD23964E3
#data 0x64E3420b
#data 0x63F2906c
#data 0x2228023c
#data 0x84E48B02
#data 0x80E47001

#align4
loc_8C0D8B28:
#data 0xE3019065
#data 0x85EE0E34
#data 0x81EE7001
#data 0x4011600f
#data 0xA0058B01
#data 0xC903

loc_8C0D8B3E:
#data 0x6007
#data 0xC9037001
#data 0x70016007

#align4
loc_8C0D8B48:
#data 0x8B022008
#data 0xE1009053
#data 0x0E14

loc_8C0D8B52:
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D8B5A:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0D8BF8,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r5,r13
mov r13,r5
bsr loc_8C0D8DC4
mov r14,r4
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r3 ; r3 ??? bc r13 is ???	
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0D8BF4,pc),r0 ; r0 set to 0x141
mov.b @(r0,r13),r2
tst r2,r2
bf loc_8C0D8B84
mov.b @(0x04,r14),r0 	
add 0x01,r0 ; r0 set to 0x142
bra loc_8C0D8B98
mov.b r0,@(0x04,r14) 	

#align4
loc_8C0D8B84:
#data 0xE2009037
#data 0xE0220E24
#data 0x233803Ec
#data 0x90308B02
#data 0x0E14E101


loc_8C0D8B98:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D8BA0:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
bsr loc_8C0D8DC4
mov r5,r13
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov 0x00,r3 ; r3 set to 0x00
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0D8BF6,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
mov.l @(loc_8C0D8BF8,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r14,r4
exts.b r0,r0 ; r0 ??	
cmp/pz r0
bt loc_8C0D8BCc
mov.b @(0x04,r14),r0 	
add 0x01,r0
bra loc_8C0D8BDa
mov.b r0,@(0x04,r14) 	

#align4
loc_8C0D8BCC:
#data 0x02DCE022
#data 0x8B022228
#data 0xE101900f
#data 0x0E14


loc_8C0D8BDA:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D8BE2:
mov r4,r3
mov.l @(loc_8C0D8BFC,pc),r1 ; r1 set to 0x8C15D55c
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D8BF4:
#data 0x0141

loc_8C0D8BF6:
#data 0x012c

#align4
loc_8C0D8BF8:
#data bank03.loc_8c034D8c

loc_8C0D8BFC:
#data 0x8c15D55c


loc_8C0D8C00:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov 0x08,r3 ; r3 set to 0x08
mov 0x30,r4 ; r4 set to 0x30
mov.l r5,@r15
mov.b @(0x05,r14),r0 	
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0D8D30,pc),r0 ; r0 set to 0x13c
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x13d
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x13e
mov 0x10,r4 ; r4 set to 0x10
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x13f
mov.b r4,@(r0,r14) 	
mov.l @r15,r5
bsr loc_8C0D8DC4
mov r14,r4 ; r4 ??? bc r14 is ???	
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r14

loc_8C0D8C3A:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0D8D38,pc),r3 ; r3 set to 0x8C034D8C, r3 set to 0x8C034D8c
mov r4,r14
mov.l r5,@r15
jsr @r3
mov r14,r4
exts.b r0,r0 ; r0 ??	
cmp/pz r0
bt loc_8C0D8C72
mov.b @(0x05,r14),r0 	
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov.w @(loc_8C0D8D32,pc),r0 ; r0 set to 0xCC, r0 set to 0xCc
mov.l @r15,r3 ; r3 ??? bc r15 is ???, r3 ??? bc r15 is ???	
mov.l @(r0,r3),r2
tst r2,r2
bf loc_8C0D8C66
mova @(loc_8C0D8D3C,pc),r0  ; r0 set to 0x8C0D8D3C, r0 set to 0x8C0D8D3c
bra loc_8C0D8C6a
fmov.s @r0,fr4

loc_8C0D8C66:
#data 0xC736
#data 0xF408

loc_8C0D8C6A:
#data 0xE05c
#data 0xE068FE47
#data 0xFE47


loc_8C0D8C72:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D8C7A:
#data 0x2FE6
#data 0xE15C6E43
#data 0x31ECD330
#data 0x4F22E034
#data 0xE168F318
#data 0x31ECF2E6
#data 0xFE27F230
#data 0xF2E6E05c
#data 0xF230F318
#data 0x430BFE27
#data 0x200864E3
#data 0x84E48B02
#data 0x80E47001

#align4
loc_8C0D8CAC:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D8CB2:
mov.l r14,@-r15
mov r5,r2
sts.l pr,@-r15
mov.l @(loc_8C0D8D48,pc),r3 ; r3 set to 0x8C1294C8
mov r4,r1
mov r5,r14
add 0x34,r2
add 0x34,r1
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.w @(loc_8C0D8D34,pc),r0 ; r0 set to 0x130
mov.w @(loc_8C0D8D34,pc),r1 ; r1 set to 0x130
mov.w @(r0,r14),r0 ; r0 ??? bc r14 is ???	
add r4,r1 ; r1 ??? bc r4 is ???	
xor 0x01,r0 	
mov.w r0,@r1
exts.w r0,r0
tst r0,r0
bt loc_8C0D8CE6
mov 0x5C,r1 ; r1 set to 0x5c
add r4,r1 ; r1 ??? bc r4 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
fmov.s @(r0,r4),fr2
bra loc_8C0D8CF2
fadd fr3,fr2

loc_8C0D8CE6:
mov 0x5C,r1 ; r1 set to 0x5c
add r4,r1 ; r1 ??? bc r4 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3
fmov.s @(r0,r4),fr2
fsub fr3,fr2

loc_8C0D8CF2:
mov 0x60,r1 ; r1 set to 0x60, r1 set to 0x60
fmov.s fr2,@(r0,r4) 	
add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @r1,fr3
fmov.s @(r0,r4),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
mov.b @(r0,r14),r3
mov.b r3,@(r0,r4) 	
mov.w @(loc_8C0D8D36,pc),r0 ; r0 set to 0x141, r0 set to 0x141
mov.b @(r0,r14),r2
tst r2,r2
bf loc_8C0D8D18
mov.b @(0x04,r4),r0 	
add 0x01,r0 ; r0 set to 0x142, r0 set to 0x142
bra loc_8C0D8D2a
mov.b r0,@(0x04,r4) 	

loc_8C0D8D18:
lds.l @r15+,pr 	
mov.b @(r0,r14),r0
mov 0x0F,r7 ; r7 set to 0x0f
mov.l @(loc_8C0D8D4C,pc),r3 ; r3 set to 0x8C034CD6
mov 0x1B,r5 ; r5 set to 0x1b
and r0,r7 ; r7 ??? bc r0 is ???	
mov 0x2A,r6 ; r6 set to 0x2a
jmp @r3
mov.l @r15+,r14

loc_8C0D8D2A:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D8D30:
#data 0x013c

loc_8C0D8D32:
#data 0x00Cc

loc_8C0D8D34:
#data 0x0130

loc_8C0D8D36:
#data 0x0141

#align4
loc_8C0D8D38:
#data bank03.loc_8c034D8c

loc_8C0D8D3C:
#data 0xC0555555
#data 0x40555555

#align4
loc_8C0D8D44:
#data bank03.loc_8c03340c

loc_8C0D8D48:
#data bank12.loc_8c1294C8

loc_8C0D8D4C:
#data bank03.loc_8c034CD6


loc_8C0D8D50:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0D8E52,pc),r0 ; r0 set to 0x12d
mov r13,r5
sts.l pr,@-r15
mov.l @(0x18,r13),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x12e
mov.l @(0x18,r13),r3
mov.w @(r0,r3),r2
mov.w r2,@(r0,r14) 	
bsr loc_8C0D8DC4
mov r14,r4
mov 0x24,r0 ; r0 set to 0x24
mov.l @(loc_8C0D8E58,pc),r3 ; r3 set to 0x8C034D8c
mov.b @(r0,r13),r2
mov r14,r4
mov.b r2,@(r0,r14) 	
lds.l @r15+,pr 	
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0D8D82:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0D8E52,pc),r0 ; r0 set to 0x12d
mov r13,r5
sts.l pr,@-r15
mov.l @(0x18,r13),r3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x12e
mov.l @(0x18,r13),r3
mov.w @(r0,r3),r2
mov.w r2,@(r0,r14) 	
bsr loc_8C0D8DC4
mov r14,r4
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov.b r2,@(r0,r14) 	
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D8DB0:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D8E54,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0D8DBE:
mov.l @(loc_8C0D8E5C,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0D8DC4:
sts.l pr,@-r15
mov r5,r2
mov.l @(loc_8C0D8E60,pc),r3 ; r3 set to 0x8C1294C8
mov r4,r1
add 0x34,r2
add 0x34,r1
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.w @(loc_8C0D8E56,pc),r0 ; r0 set to 0x130
mov.w @(r0,r5),r2
tst r2,r2
bf/s loc_8C0D8DEc
mov.w r2,@(r0,r4) 	
mov 0x5C,r1 ; r1 set to 0x5c
add r4,r1 ; r1 ??? bc r4 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
fmov.s @(r0,r4),fr2
bra loc_8C0D8DF8
fadd fr3,fr2

loc_8C0D8DEC:
mov 0x5C,r1 ; r1 set to 0x5c
add r4,r1 ; r1 ??? bc r4 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3
fmov.s @(r0,r4),fr2
fsub fr3,fr2

loc_8C0D8DF8:
mov 0x60,r1 ; r1 set to 0x60, r1 set to 0x60
fmov.s fr2,@(r0,r4) 	
add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @r1,fr3
fmov.s @(r0,r4),fr2
lds.l @r15+,pr 	
fadd fr3,fr2
rts 	
fmov.s fr2,@(r0,r4) 	
;-------------------------------------------------------------------------------

#align4
loc_8C0D8E0C:
#data 0x62534F22
#data 0x6143D313
#data 0x71347234
#data 0xE00C430b
#data 0x025D901b
#data 0x8B062228
#data 0x314CE15c
#data 0xF318E034
#data 0xA006F246
#data 0xF230

loc_8C0D8E32:
#data 0xE15c
#data 0xE034314c
#data 0xF246F318
#data 0xF231

loc_8C0D8E3E:
#data 0xE160
#data 0x314CF427
#data 0xF318E038
#data 0x4F26F246
#data 0x000BF230
#data 0xF427
;-------------------------------------------------------------------------------

loc_8C0D8E52:
#data 0x012d

loc_8C0D8E54:
#data 0x012c

loc_8C0D8E56:
#data 0x0130

#align4
loc_8C0D8E58:
#data bank03.loc_8c034D8c

loc_8C0D8E5C:
#data bank04.loc_8c0450C0

loc_8C0D8E60:
#data bank12.loc_8c1294C8
#data 0x7FF84F22
#data 0xE600D355
#data 0x2F501F41
#data 0x430BE503
#data 0x20086463
#data 0x64038D07
#data 0xE020D351
#data 0x52F11434
#data 0x63F01426
#data 0x7F080434
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0D8E92:
mov r4,r3
mov.l @(loc_8C0D8FC8,pc),r1 ; r1 set to 0x8C15D568
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D8EA4:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D8FB6,pc),r3 ; r3 set to 0x1C01
mov 0x01,r5 ; r5 set to 0x01
mov.w @(loc_8C0D8FBA,pc),r1 ; r1 set to 0xDc
mov.w @(loc_8C0D8FBA,pc),r2 ; r2 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov 0x26,r0 ; r0 set to 0x26
mov.w r3,@(r0,r14) 	
mov.w @(loc_8C0D8FB8,pc),r0 ; r0 set to 0x12c
mov.l @(loc_8C0D8FCC,pc),r3 ; r3 set to 0x8C129560
mov.b r5,@(r0,r14) 	
mov.l @(0x18,r14),r4
add r4,r2 ; r2 ??? bc r4 is ???	
jsr @r3
add 0x94,r0 ; r0 set to 0xC0
mov.w @(loc_8C0D8FB8,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0D8FBC,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0D8FD0,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov.b r2,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3
tst r3,r3
bt/s loc_8C0D8F24
mov 0x1B,r5 ; r5 set to 0x1b
bra loc_8C0D8F26
mov 0x01,r6

loc_8C0D8F24:
mov 0x02,r6 ; r6 set to 0x02

loc_8C0D8F26:
mov.l @(loc_8C0D8FD4,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r14,r4
mov.l @r15+,r14

loc_8C0D8F32:
mov.l r14,@-r15
mov 0x02,r5 ; r5 set to 0x02, r5 set to 0x02, r5 set to 0x02
mov.l @(0x18,r4),r14
mov.b @(0x06,r14),r0 	
extu.b r0,r0
cmp/gt r5,r0
bf loc_8C0D8F50
mov r5,r0 ; r0 set to 0x02, r0 set to 0x02, r0 set to 0x02
nop 	
mov.b r0,@(0x04,r4) 	
mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00, r3 set to 0x00
mov.w @(loc_8C0D8FB8,pc),r0 ; r0 set to 0x12C, r0 set to 0x12C, r0 set to 0x12c
mov.b r3,@(r0,r4) 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D8F50:
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r14),r2
mov.b r2,@(r0,r4) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r4),r3
tst r3,r3
bf loc_8C0D8F6c
mova @(loc_8C0D8FD8,pc),r0  ; r0 set to 0x8C0D8FD8
fmov.s @r0,fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fadd fr3,fr2
bra loc_8C0D8F72
fmov.s fr2,@(r0,r4) 	

loc_8C0D8F6C:
mov r14,r5
bra loc_8C0D8F8a
mov.l @r15+,r14

loc_8C0D8F72:
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D8F76:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D8FB8,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0D8F84:
mov.l @(loc_8C0D8FDC,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0D8F8A:
mov.l @(0x18,r4),r5
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x14,r5),r6
fmov.s @(r0,r5),fr4
fmov.s @(r0,r6),fr3
mova @(loc_8C0D8FE0,pc),r0  ; r0 set to 0x8C0D8FE0
fmov.s @r0,fr2
mova @(loc_8C0D8FE4,pc),r0  ; r0 set to 0x8C0D8FE4
fsub fr4,fr3
fmov.s @r0,fr1
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r4),r3
mov 0x38,r0 ; r0 set to 0x38
fadd fr2,fr3
extu.b r3,r3
lds r3,fpul 	
fmov fr3,fr5
fdiv fr1,fr5
float fpul,fr0
fmac fr0,fr5,fr4
rts 	
fmov.s fr4,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0D8FB6:
#data 0x1C01

loc_8C0D8FB8:
#data 0x012c

loc_8C0D8FBA:
#data 0x00Dc

loc_8C0D8FBC:
#data 0x01A3
#data 0x0000

#align4
loc_8C0D8FC0:
#data bank04.loc_8c044F12

loc_8C0D8FC4:
#data loc_8c0d8E92

loc_8C0D8FC8:
#data 0x8c15D568

loc_8C0D8FCC:
#data bank12.loc_8c129560

loc_8C0D8FD0:
#data bank12.loc_8c1294C8

loc_8C0D8FD4:
#data bank03.loc_8c034C38

loc_8C0D8FD8:
#data 0x43982492

#align4
loc_8C0D8FDC:
#data bank04.loc_8c0450C0

loc_8C0D8FE0:
#data 0xC2092492

#align4
loc_8C0D8FE4:
#data 0x41000000

#align4
loc_8C0D8FE8:
#data 0x7FFC4F22
#data 0xE503D345
#data 0xE6002F42
#data 0x6463430b
#data 0x8D042008
#data 0xD3426403
#data 0x62F21434
#data 0x1426

loc_8C0D9006:
#data 0x7F04
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0D900E:
mov r4,r3
mov.l @(loc_8C0D910C,pc),r1 ; r1 set to 0x8C15D738
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

#align4
loc_8C0D9020:
#data 0x6E432FE6
#data 0x2FD69367
#data 0x4F229166
#data 0x31EC84E4
#data 0x700154E6
#data 0x80E4955e
#data 0x0E35E026
#data 0x925B354c
#data 0xD333905b
#data 0x324C430b
#data 0xED019058
#data 0x715061E3
#data 0x84420ED4
#data 0x844180E2
#data 0xE05080E1
#data 0xFE37F346
#data 0xF346E054
#data 0x904AFE37
#data 0x0E34034c
#data 0x024C7001
#data 0xE0300E24
#data 0x6243034c
#data 0x0E347250
#data 0x430BD325
#data 0xE024E00c
#data 0xE300024c
#data 0xE2FF0E24
#data 0x0E349036
#data 0x0E24E031
#data 0x25D09034
#data 0x233803Ec
#data 0x60D38B08
#data 0xD31D0009
#data 0x805A430b
#data 0x89012008
#data 0x0ED49028

#align4
loc_8C0D90B0:
#data 0x64E34F26
#data 0x6EF66DF6


loc_8C0D90B8:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D9102,pc),r0 ; r0 set to 0x420
sts.l pr,@-r15
mov.l @(0x18,r14),r5
mov.w @(r0,r5),r3
tst r3,r3
bf loc_8C0D90Dc
bsr loc_8C0D9268
mov r14,r4
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x04,r14) 	
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8C0D90FC,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D90DC:
mov.b @(0x05,r14),r0 	
mov r14,r4
mov.l @(loc_8C0D911C,pc),r1 ; r1 set to 0x8C15D748
extu.b r0,r0
lds.l @r15+,pr 	
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x1C0202A4
#data 0x00C000Dc

loc_8C0D90FC:
#data 0x012c
#data 0x01A3
#data 0x00D4

loc_8C0D9102:
#data 0x0420

#align4
loc_8C0D9104:
#data bank04.loc_8c044F12

loc_8C0D9108:
#data loc_8c0d900e

loc_8C0D910C:
#data 0x8c15D738

loc_8C0D9110:
#data bank12.loc_8c129560

loc_8C0D9114:
#data bank12.loc_8c1294C8

loc_8C0D9118:
#data loc_8c0d93D4

loc_8C0D911C:
#data 0x8c15D748


loc_8C0D9120:
mov.w @(loc_8C0D924C,pc),r0 ; r0 set to 0x364
mov.l r14,@-r15
mov r5,r14
mov.l r13,@-r15
mov r4,r13
sts.l pr,@-r15
mov.b @(r0,r14),r3
mov.w @(loc_8C0D924A,pc),r4 ; r4 set to 0x2A4
tst r3,r3
bt/s loc_8C0D9168
add r14,r4 ; r4 ??? bc r14 is ???	
mov.w @(loc_8C0D924E,pc),r0 ; r0 set to 0x365
mov 0x40,r2 ; r2 set to 0x40
mov.b @(r0,r14),r3
cmp/gt r2,r3
bt loc_8C0D9168
mov.b @(0x05,r13),r0 	
mov r14,r5
mov.l @(loc_8C0D9254,pc),r6 ; r6 set to 0x8C15D578
add 0x01,r0 ; r0 set to 0x366
mov.b r0,@(0x05,r13) 	
mov 0x01,r0 ; r0 set to 0x01
mov.b r0,@(0x01,r4) 	
bsr loc_8C0D930a
mov r13,r4
mov.l @(loc_8C0D9258,pc),r2 ; r2 set to 0x8C034C38
mov 0x1B,r5 ; r5 set to 0x1b
mov 0x06,r6 ; r6 set to 0x06
jsr @r2
mov r13,r4
lds.l @r15+,pr 	
mov r13,r4
mov r14,r5 ; r5 ??? bc r14 is ???	
mov.l @r15+,r13
bra loc_8C0D9170
mov.l @r15+,r14

loc_8C0D9168:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D9170:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.w @(loc_8C0D924C,pc),r0 ; r0 set to 0x364
mov r5,r14
mov.w @(loc_8C0D924A,pc),r3 ; r3 set to 0x2A4
add r14,r3 ; r3 ??? bc r14 is ???	
mov.l r3,@r15
mov.b @(r0,r14),r2
tst r2,r2
bf/s loc_8C0D9198
mov r4,r13
mov r13,r4
mov r14,r5
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r13
bra loc_8C0D9268
mov.l @r15+,r14

loc_8C0D9198:
mov.w @(loc_8C0D924E,pc),r0 ; r0 set to 0x365
mov.b @(r0,r14),r2
tst r2,r2
bt loc_8C0D91Ae
mov r13,r4
mov r14,r5
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r13
bra loc_8C0D921c
mov.l @r15+,r14

loc_8C0D91AE:
mov.b @(0x05,r13),r0 	
mov r14,r5
mov.l @(loc_8C0D925C,pc),r6 ; r6 set to 0x8C15D5E8
add 0x01,r0
mov.b r0,@(0x05,r13) 	
bsr loc_8C0D930a
mov r13,r4
mov.l @(loc_8C0D9258,pc),r2 ; r2 set to 0x8C034C38
mov 0x1B,r5 ; r5 set to 0x1b
mov 0x07,r6 ; r6 set to 0x07
jsr @r2
mov r13,r4
mov.l @r15,r3
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x02,r3) 	
mov 0x78,r3 ; r3 set to 0x78
mov r3,r0 ; r0 set to 0x78
nop 	
add 0x5A,r0 ; r0 set to 0xD2
mov.w r3,@(r0,r13) 	
mov 0x27,r5 ; r5 set to 0x27
mov.l @(loc_8C0D9260,pc),r3 ; r3 set to 0x8C042008
jsr @r3
mov r14,r4
mov r13,r4
mov r14,r5 ; r5 ??? bc r14 is ???	
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r13
bra loc_8C0D91Ec
mov.l @r15+,r14

loc_8C0D91EC:
mov.w @(loc_8C0D924C,pc),r0 ; r0 set to 0x364
mov.l r14,@-r15
mov r5,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(r0,r14),r3
tst r3,r3
bf/s loc_8C0D920a
mov r4,r13
lds.l @r15+,pr 	
mov r13,r4
mov r14,r5
mov.l @r15+,r13
bra loc_8C0D9268
mov.l @r15+,r14

loc_8C0D920A:
mov r14,r5
bsr loc_8C0D92Da
mov r13,r4
lds.l @r15+,pr 	
mov r13,r4
mov r14,r5
mov.l @r15+,r13
bra loc_8C0D921c
mov.l @r15+,r14

loc_8C0D921C:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0D9250,pc),r0 ; r0 set to 0x12c
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b @(r0,r13),r3
mov r13,r5
mov.b r3,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov.b r2,@(r0,r14) 	
bsr loc_8C0D92A0
mov r14,r4
mov r13,r5
bsr loc_8C0D937a
mov r14,r4
lds.l @r15+,pr 	
mov.l @(loc_8C0D9264,pc),r3 ; r3 set to 0x8C034D8c
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0D924A:
#data 0x02A4

loc_8C0D924C:
#data 0x0364

loc_8C0D924E:
#data 0x0365

loc_8C0D9250:
#data 0x012c
#data 0x0000

#align4
loc_8C0D9254:
#data 0x8c15D578

loc_8C0D9258:
#data bank03.loc_8c034C38

loc_8C0D925C:
#data 0x8c15D5E8

loc_8C0D9260:
#data bank04.loc_8c042008

loc_8C0D9264:
#data bank03.loc_8c034D8c


loc_8C0D9268:
mov.w @(loc_8C0D93AC,pc),r3 ; r3 set to 0x2A4
mov r5,r6
mov.l r5,@-r15
mov 0x00,r5 ; r5 set to 0x00
add r3,r6
mov r5,r0 ; r0 set to 0x00
nop 	
mov.b r0,@(0x05,r4) 	
mov.w @(loc_8C0D93AE,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r4) 	
mov r5,r0 ; r0 set to 0x00
nop 	
mov.l @(loc_8C0D93B8,pc),r2 ; r2 set to 0x8C035162
mov 0x01,r5 ; r5 set to 0x01
mov.b r0,@(0x01,r6) 	
mov.l @r15,r4
jmp @r2
add 0x04,r15

loc_8C0D928C:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0D93AE,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0D929A:
mov.l @(loc_8C0D93BC,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0D92A0:
mov.w @(loc_8C0D93B0,pc),r0 ; r0 set to 0x130
mov.w @(r0,r5),r3
tst r3,r3
bf loc_8C0D92Ae
mova @(loc_8C0D93C0,pc),r0  ; r0 set to 0x8C0D93C0
bra loc_8C0D92B2
fmov.s @r0,fr3

loc_8C0D92AE:
mova @(loc_8C0D93C4,pc),r0  ; r0 init to 0x8C0D93C4
fmov.s @r0,fr3

loc_8C0D92B2:
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r5),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov.w @(loc_8C0D93B2,pc),r0 ; r0 set to 0x1F9, r0 set to 0x1F9
mov.b @(r0,r5),r3
mov.l @(loc_8C0D93C8,pc),r0 ; r0 set to 0x8C15D754, r0 set to 0x8C15D754
extu.b r3,r3
shll r3
mov.w @(r0,r3),r3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r5),fr2
mova @(loc_8C0D93CC,pc),r0  ; r0 set to 0x8C0D93CC, r0 set to 0x8C0D93Cc
lds r3,fpul 	
fmov.s @r0,fr0 ; r0 ??, r0 ??	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
float fpul,fr3
fmac fr0,fr3,fr2
rts 	
fmov.s fr2,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0D92DA:
#data 0x906b
#data 0x024D9366
#data 0x042572Ff
#data 0x2228622d
#data 0x353C8F0d
#data 0x6103E078
#data 0x314C715a
#data 0xE2322101
#data 0x600C8452
#data 0x89023023
#data 0x70018452
#data 0x8052

loc_8C0D9306:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0D930A:
mov.l r14,@-r15
mov r6,r14
mov.l r13,@-r15
mov.l r12,@-r15
mov r5,r12
mov.l r11,@-r15
mov 0x01,r11 ; r11 set to 0x01
mov.l r10,@-r15
mov 0x00,r10 ; r10 set to 0x00
mov.l r9,@-r15
mov.w @(loc_8C0D93B6,pc),r13 ; r13 set to 0xCc
sts.l pr,@-r15
mov.l @(loc_8C0D93D0,pc),r9 ; r9 set to 0x8C03544c
add r4,r13 ; r13 ??? bc r4 is ???	

loc_8C0D9326:
mov 0x25,r6 ; r6 set to 0x25, r6 set to 0x25
mov.b @r14,r0
add r12,r6 ; r6 ??? bc r12 is ???, r6 ??? bc r12 is ???	
mov 0x57,r3 ; r3 set to 0x57, r3 set to 0x57
mov.b r0,@(0x04,r13) 	
mov.b @r6,r6
mov.b @(0x02,r14),r0 	
extu.b r6,r6
mulu.w r3,r6
extu.b r0,r0
sts macl,r6
add r0,r6
mov.b @(0x03,r14),r0 	
extu.b r0,r7
mov.b @(0x01,r14),r0 	
extu.b r0,r5
jsr @r9
mov r12,r4
mov.l @(0x04,r14),r0
cmp/eq 0x01,r0 	
bf loc_8C0D9354
bra loc_8C0D9358
mov r10,r0

loc_8C0D9354:
mov r11,r0
nop 	

loc_8C0D9358:
mov.b r0,@(0x05,r13) 	
mov.l @(0x04,r14),r3
mov.b @(0x04,r13),r0 	
shll2 r3
shll r3
tst r0,r0
add r3,r14
bt loc_8C0D9326
mov.l r14,@r13
lds.l @r15+,pr 	
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D937A:
#data 0x2FE6
#data 0x2FD69E1b
#data 0x4F223E4c
#data 0x70FF84E4
#data 0x600C80E4
#data 0x8F072008
#data 0x84E5ED01
#data 0x8D012008
#data 0xED0066E2

#align4
loc_8C0D939C:
#data 0x0009BFB5

#align4
loc_8C0D93A0:
#data 0x000960D3
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0D93AC:
#data 0x02A4

loc_8C0D93AE:
#data 0x012c

loc_8C0D93B0:
#data 0x0130

loc_8C0D93B2:
#data 0x01F9
#data 0x00D2

loc_8C0D93B6:
#data 0x00Cc

#align4
loc_8C0D93B8:
#data bank03.loc_8c035162

loc_8C0D93BC:
#data bank04.loc_8c0450C0

loc_8C0D93C0:
#data 0xC13AAAAa

#align4
loc_8C0D93C4:
#data 0x413AAAAa

#align4
loc_8C0D93C8:
#data 0x8c15D754

loc_8C0D93CC:
#data 0x40092492

#align4
loc_8C0D93D0:
#data bank03.loc_8c03544c

loc_8C0D93D4:
#data 0x7FFC4F22
#data 0xE504D346
#data 0xE6002F42
#data 0x6463430b
#data 0x8D042008
#data 0xD3436403
#data 0x62F21434
#data 0x1426

loc_8C0D93F2:
#data 0x7F04
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0D93FA:
mov r4,r3
mov.l @(loc_8C0D94FC,pc),r1 ; r1 set to 0x8C15D78c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D940C:
mov.l @(loc_8C0D9500,pc),r2 ; r2 set to 0x8C26823c
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.l r12,@-r15
mov.w @(loc_8C0D94E2,pc),r1 ; r1 set to 0x80
sts.l pr,@-r15
mov.l @r2,r3
mov.l @(0x14,r3),r0
cmp/eq r1,r0
bf/s loc_8C0D9430
mov 0x00,r12 ; r12 set to 0x00
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x04,r14) 	
mov r12,r0 ; r0 set to 0x00
nop 	
bra loc_8C0D94D8
mov.b r0,@(0x05,r14) 	

#align4
loc_8C0D9430:
#data 0x935784E4
#data 0x91567001
#data 0xE02680E4
#data 0x31EC0E35
#data 0x90519251
#data 0xD32F5DE6
#data 0x32DC430b
#data 0xE201904d
#data 0x715061E3
#data 0x84D20E24
#data 0x84D180E2
#data 0xE05080E1
#data 0xFE37F3D6
#data 0xF3D6E054
#data 0x903FFE37
#data 0x0E3403Dc
#data 0x02DC7001
#data 0xE0300E24
#data 0x62D303Dc
#data 0x0E347250
#data 0x430BD321
#data 0xE024E00c
#data 0xE41802Dc
#data 0x0E24E30c
#data 0x902CE519
#data 0x0E44E600
#data 0x0E447001
#data 0xE4207001
#data 0x70010E44
#data 0xE0240E44
#data 0xD3180E34
#data 0x64E3430b
#data 0x420BD217
#data 0xE00464E3
#data 0x901981Ef
#data 0x233803Dc
#data 0x64E38D05
#data 0x80E6E005
#data 0x2EC0900f
#data 0x0EC4

loc_8C0D94CE:
#data 0x4F26
#data 0x6DF66CF6
#data 0x6EF6A01e


loc_8C0D94D8:
lds.l @r15+,pr 	
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D94E2:
#data 0x0080
#data 0x00DC1C03
#data 0x012C00C0
#data 0x013C01A3
#data 0x00000411

#align4
loc_8C0D94F4:
#data bank04.loc_8c044F12

loc_8C0D94F8:
#data loc_8c0d93Fa

loc_8C0D94FC:
#data 0x8c15D78c

loc_8C0D9500:
#data 0x8C26823c

#align4
loc_8C0D9504:
#data bank12.loc_8c129560

loc_8C0D9508:
#data bank12.loc_8c1294C8

loc_8C0D950C:
#data bank03.loc_8c034e8c

loc_8C0D9510:
#data bank10.loc_8c104434

loc_8C0D9514:
#data 0x6E432FE6
#data 0xE60155E6
#data 0x6163D34b
#data 0x64308452
#data 0x206A600c
#data 0x624C410c
#data 0x8B142218
#data 0x2448644c
#data 0x90848909
#data 0x600C005c
#data 0x8B04881d
#data 0x005C9080
#data 0x8808600c
#data 0x8907

loc_8C0D954A:
#data 0x84E6
#data 0xD14064E3
#data 0x4008600c
#data 0x432B031e
#data 0x6EF6

loc_8C0D955A:
#data 0x000b
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D955E:
mov r4,r3
mov.l @(loc_8C0D9654,pc),r1 ; r1 set to 0x8C15D7E0
mov.l r4,@-r15
mov.b @(0x07,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D9570:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b @(0x07,r14),r0 	
mov 0x01,r3 ; r3 set to 0x01
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov.w @(loc_8C0D9646,pc),r0 ; r0 set to 0x130
mov.b r3,@r14
mov.w @(r0,r13),r2
tst r2,r2
bf loc_8C0D9592
mova @(loc_8C0D9658,pc),r0  ; r0 set to 0x8C0D9658
bra loc_8C0D9596
fmov.s @r0,fr3

loc_8C0D9592:
mova @(loc_8C0D965C,pc),r0  ; r0 init to 0x8C0D965c
fmov.s @r0,fr3

loc_8C0D9596:
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fldi0 fr4
fmov.s @(r0,r13),fr2
mov 0x19,r5 ; r5 set to 0x19, r5 set to 0x19
mov.l @(loc_8C0D9668,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
mov 0x0C,r6 ; r6 set to 0x0C, r6 set to 0x0c
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0D9660,pc),r0  ; r0 set to 0x8C0D9660, r0 set to 0x8C0D9660
fmov.s @r0,fr3 ; r3 ??, r3 ??	
mov.w @(loc_8C0D9648,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
fmov.s @(r0,r13),fr2
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fmov.s fr4,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mova @(loc_8C0D9664,pc),r0  ; r0 set to 0x8C0D9664, r0 set to 0x8C0D9664
fmov.s @r0,fr2
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr2,@(r0,r14) 	
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???, r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0D95D6:
mov.l r14,@-r15
mov r4,r14
mov 0x60,r1 ; r1 set to 0x60, r1 set to 0x60, r1 set to 0x60
mov.l r13,@-r15
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38, r0 set to 0x38
mov r5,r13
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
sts.l pr,@-r15
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6C, r1 set to 0x6C, r1 set to 0x6c
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60, r0 set to 0x60
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r14),fr3
mov.w @(loc_8C0D9648,pc),r0 ; r0 set to 0x41C, r0 set to 0x41C, r0 set to 0x41c
fmov.s @(r0,r13),fr2
fcmp/gt fr2,fr3
bt loc_8C0D963a
mov.b @(0x07,r14),r0 	
mov r13,r5
mov.l @(loc_8C0D966C,pc),r6 ; r6 set to 0x8C15D75C, r6 set to 0x8C15D75C, r6 set to 0x8C15D75c
add 0x01,r0 ; r0 set to 0x41D, r0 set to 0x41D, r0 set to 0x41d
mov.b r0,@(0x07,r14) 	
mov.w @(loc_8C0D9648,pc),r0 ; r0 set to 0x41C, r0 set to 0x41C, r0 set to 0x41c
fmov.s @(r0,r13),fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38, r0 set to 0x38
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0D9646,pc),r0 ; r0 set to 0x130, r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r13),r3
mov.w r3,@(r0,r14) 	
mov.l @(loc_8C0D9670,pc),r3 ; r3 set to 0x8C0DA7B4, r3 set to 0x8C0DA7B4, r3 set to 0x8C0DA7B4
jsr @r3
mov r14,r4
mov.l @(loc_8C0D9674,pc),r2 ; r2 set to 0x8C0DA824, r2 set to 0x8C0DA824, r2 set to 0x8C0DA824
mov r13,r5
jsr @r2
mov r14,r4
lds.l @r15+,pr 	
mov.l @(loc_8C0D9678,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0D963A:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x01D0
#data 0x01E9

loc_8C0D9646:
#data 0x0130

loc_8C0D9648:
#data 0x041c
#data 0x0000
#data 0x8C2895F6

#align4
loc_8C0D9650:
#data 0x8c15D79c

loc_8C0D9654:
#data 0x8c15D7E0

loc_8C0D9658:
#data 0x42A00000

#align4
loc_8C0D965C:
#data 0xC2A00000

#align4
loc_8C0D9660:
#data 0x44092492

#align4
loc_8C0D9664:
#data 0xBF4DB6Db

#align4
loc_8C0D9668:
#data bank03.loc_8c034e8c

loc_8C0D966C:
#data 0x8c15D75c

loc_8C0D9670:
#data loc_8c0dA7B4

loc_8C0D9674:
#data loc_8c0dA824

loc_8C0D9678:
#data bank03.loc_8c034dee

loc_8C0D967C:
#data 0x7FFC4F22
#data 0x430BD34e
#data 0x20082F42
#data 0x63F28B03
#data 0x70018437
#data 0x8037

loc_8C0D9692:
#data 0x7F04
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0D969A:
#data 0x2FE6
#data 0xD3484F22
#data 0x6E43430b
#data 0x4011600e
#data 0xE0028903
#data 0xE00080E6
#data 0x80E7

loc_8C0D96B2:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0D96B8:
mov.b @r5,r3
tst r3,r3
bt loc_8C0D9700
mov.w @(loc_8C0D97B2,pc),r0 ; r0 set to 0x411
mov.b @(r0,r5),r3
tst r3,r3
bf loc_8C0D9700
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x06,r4) 	
mov 0x00,r0 ; r0 set to 0x00
mov.b r0,@(0x07,r4) 	
mov 0x01,r6 ; r6 set to 0x01
mov.w @(loc_8C0D97B4,pc),r0 ; r0 set to 0x12c
mov.b r6,@r4
mov.b r6,@(r0,r4) 	
add 0x04,r0 ; r0 set to 0x130
mov.w @(r0,r5),r3
tst r3,r3
bf loc_8C0D96E4
mova @(loc_8C0D97C4,pc),r0  ; r0 set to 0x8C0D97C4
bra loc_8C0D96E8
fmov.s @r0,fr3

loc_8C0D96E4:
mova @(loc_8C0D97C8,pc),r0  ; r0 init to 0x8C0D97C8
fmov.s @r0,fr3

loc_8C0D96E8:
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
mov.l @(loc_8C0D97CC,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
fmov.s @(r0,r5),fr2
mov 0x00,r6 ; r6 set to 0x00, r6 set to 0x00
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov.w @(loc_8C0D97B6,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???, r3 ??? bc r5 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s fr3,@(r0,r4) 	
jmp @r3
mov 0x19,r5

loc_8C0D9700:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0D9704:
mov r4,r3
mov.l @(loc_8C0D97D0,pc),r1 ; r1 set to 0x8C15D7F0
mov.l r4,@-r15
mov.b @(0x07,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D9716:
#data 0x2FE6
#data 0x7FFC4F22
#data 0xF48D6E43
#data 0xE60FD32a
#data 0xE5192F52
#data 0x700184E7
#data 0xE05C80E7
#data 0xE068FE47
#data 0xC727FE47
#data 0xE060F308
#data 0xE06CFE37
#data 0x430BFE47
#data 0x65F264E3
#data 0x7F0464E3
#data 0x6EF64F26

#align4
loc_8C0D9750:
#data 0x4F222FE6
#data 0x430BD31a
#data 0x902D6E43
#data 0x222802Ec
#data 0x84E78902
#data 0x80E77001

#align4
loc_8C0D9768:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D976E:
#data 0x2FE6
#data 0xE1606E43
#data 0x31ECD318
#data 0x4F22E038
#data 0xE16CF318
#data 0x31ECF2E6
#data 0xFE27F230
#data 0xF2E6E060
#data 0xF230F318
#data 0x430BFE27
#data 0x200864E3
#data 0xE0058B08
#data 0x80E6E400
#data 0x00096043
#data 0x2E0080E7
#data 0x0E449004

#align4
loc_8C0D97AC:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D97B2:
#data 0x0411

loc_8C0D97B4:
#data 0x012c

loc_8C0D97B6:
#data 0x041c
#data 0x00000141

#align4
loc_8C0D97BC:
#data loc_8c0dA824

loc_8C0D97C0:
#data bank03.loc_8c034dee

loc_8C0D97C4:
#data 0x42A00000

#align4
loc_8C0D97C8:
#data 0xC2A00000

#align4
loc_8C0D97CC:
#data bank03.loc_8c034e8c

loc_8C0D97D0:
#data 0x8c15D7F0
#data 0x41892492

#align4
loc_8C0D97D8:
#data bank03.loc_8c0334A8


loc_8C0D97DC:
mov r4,r3
mov.l @(loc_8C0D993C,pc),r1 ; r1 set to 0x8C15D7Fc
mov.l r4,@-r15
mov.b @(0x07,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D97EE:
#data 0x2FE6
#data 0xF48D6E43
#data 0x6D532FD6
#data 0x84E74F22
#data 0x7001E500
#data 0xE05C80E7
#data 0xE068FE47
#data 0xE060FE47
#data 0xE06CFE47
#data 0xE034FE47
#data 0xF2E6F3D6
#data 0x8F01F325
#data 0xE4016453

#align4
loc_8C0D9820:
#data 0x644C9088
#data 0x342002Ed
#data 0x91848912
#data 0x31EC84E6
#data 0x21009282
#data 0x32EC84E7
#data 0xE00B2200
#data 0x605380E6
#data 0x65D30009
#data 0x4F2680E7
#data 0x6DF664E3
#data 0x6EF6A029

#align4
loc_8C0D9850:
#data 0x84E69371
#data 0x633033Ec
#data 0x89043030
#data 0xE519D338
#data 0x430BE600
#data 0x64E3

loc_8C0D9866:
#data 0x4F26
#data 0x64E365D3
#data 0xA0006DF6
#data 0x6EF6


loc_8C0D9872:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0D9944,pc),r3 ; r3 set to 0x8C034DEe
mov r4,r14
mov.l r5,@r15
jsr @r3
mov r14,r4
mov.w @(0x1E,r14),r0 	
add 0xFF,r0
mov.w r0,@(0x1E,r14) 	
exts.w r0,r0
tst r0,r0
bf loc_8C0D989a
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
bra loc_8C0DA594
mov.l @r15+,r14

loc_8C0D989A:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D98A2:
mov r4,r3
mov.l @(loc_8C0D9948,pc),r1 ; r1 set to 0x8C15D804
mov.l r4,@-r15
mov.b @(0x07,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

#align4
loc_8C0D98B4:
#data 0x4F222FE6
#data 0x6E437FFc
#data 0xE301F48d
#data 0x2F52D11f
#data 0x84E7E519
#data 0x7001E606
#data 0xE05C80E7
#data 0xE068FE47
#data 0xE060FE47
#data 0xE06CFE47
#data 0x9029FE47
#data 0x223A02Ed
#data 0x410B0E25
#data 0x65F264E3
#data 0x7F0464E3
#data 0x6EF64F26

#align4
loc_8C0D98F4:
#data 0x4F222FE6
#data 0x430BD312
#data 0x600E6E43
#data 0x890B4011
#data 0x84E69117
#data 0x921531Ec
#data 0x84E72100
#data 0x220032Ec
#data 0x80E6E002
#data 0x80E7E000

#align4
loc_8C0D991C:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0D9922:
mov r4,r3
mov.l @(loc_8C0D994C,pc),r1 ; r1 set to 0x8C15D80c
mov.l r4,@-r15
mov.b @(0x07,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x00D20130
#data 0x000000D3

#align4
loc_8C0D993C:
#data 0x8c15D7Fc

loc_8C0D9940:
#data bank03.loc_8c034e8c

loc_8C0D9944:
#data bank03.loc_8c034dee

loc_8C0D9948:
#data 0x8c15D804

loc_8C0D994C:
#data 0x8c15D80c


loc_8C0D9950:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
fldi0 fr4
mov.l r5,@r15
mov.b @(0x07,r14),r0 	
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr4,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @r15,r3
fmov.s @(r0,r14),fr2
fmov.s @(r0,r3),fr3
fcmp/gt fr2,fr3
bf loc_8C0D9986
mov.w @(loc_8C0D9A8C,pc),r0 ; r0 set to 0x130
mov 0x01,r2 ; r2 set to 0x01
bra loc_8C0D998c
mov.w r2,@(r0,r14) 	

loc_8C0D9986:
#data 0x9081
#data 0x0E15E100

#align4
loc_8C0D998C:
#data 0x84E6937f
#data 0x633033Ec
#data 0x89043030
#data 0xE519D33d
#data 0x430BE603
#data 0x64E3

loc_8C0D99A2:
#data 0x65F2
#data 0x7F0464E3
#data 0x6EF64F26


loc_8C0D99AC:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0D9A94,pc),r3 ; r3 set to 0x8C034DEe
mov r4,r14
mov.l r5,@r15
jsr @r3
mov r14,r4
mov.w @(0x1E,r14),r0 	
add 0xFF,r0
mov.w r0,@(0x1E,r14) 	
exts.w r0,r0
tst r0,r0
bf loc_8C0D99D4
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
bra loc_8C0DA594
mov.l @r15+,r14

loc_8C0D99D4:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D99DC:
mov r4,r3
mov.l @(loc_8C0D9A98,pc),r1 ; r1 set to 0x8C15D814
mov.l r4,@-r15
mov.b @(0x07,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D99EE:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
fldi0 fr4
mov.l r5,@r15
mov.b @(0x07,r14),r0 	
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr4,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @r15,r3
fmov.s @(r0,r14),fr2
fmov.s @(r0,r3),fr3
fcmp/gt fr2,fr3
bf loc_8C0D9A24
mov.w @(loc_8C0D9A8C,pc),r0 ; r0 set to 0x130
mov 0x01,r2 ; r2 set to 0x01
bra loc_8C0D9A2a
mov.w r2,@(r0,r14) 	

#align4
loc_8C0D9A24:
#data 0xE1009032
#data 0x0E15

loc_8C0D9A2A:
#data 0x9330
#data 0x33EC84E6
#data 0x30306330
#data 0xD3168904
#data 0xE608E519
#data 0x64E3430b

#align4
loc_8C0D9A40:
#data 0x64E365F2
#data 0x4F267F04
#data 0x6EF6


loc_8C0D9A4A:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0D9A94,pc),r3 ; r3 set to 0x8C034DEe
mov r4,r14
mov.l r5,@r15
jsr @r3
mov r14,r4
mov.w @(0x1E,r14),r0 	
add 0xFF,r0
mov.w r0,@(0x1E,r14) 	
exts.w r0,r0
tst r0,r0
bf loc_8C0D9A72
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
bra loc_8C0DA594
mov.l @r15+,r14

loc_8C0D9A72:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D9A7A:
mov r4,r3
mov.l @(loc_8C0D9A9C,pc),r1 ; r1 set to 0x8C15D81c
mov.l r4,@-r15
mov.b @(0x07,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D9A8C:
#data 0x0130
#data 0x00D2

#align4
loc_8C0D9A90:
#data bank03.loc_8c034e8c

loc_8C0D9A94:
#data bank03.loc_8c034dee

loc_8C0D9A98:
#data 0x8c15D814

loc_8C0D9A9C:
#data 0x8c15D81c


loc_8C0D9AA0:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
fldi0 fr4
mov.l r5,@r15
mov.b @(0x07,r14),r0 	
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr4,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
mov.w @(loc_8C0D9BE0,pc),r0 ; r0 set to 0x20c
mov.l @r15,r3
mov.l @(r0,r3),r2
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r14),fr2
fmov.s @(r0,r2),fr3
fcmp/gt fr2,fr3
bf loc_8C0D9ADa
mov.w @(loc_8C0D9BE2,pc),r0 ; r0 set to 0x130
mov 0x01,r2 ; r2 set to 0x01
bra loc_8C0D9AE0
mov.w r2,@(r0,r14) 	

loc_8C0D9ADA:
#data 0x9082
#data 0x0E15E100

#align4
loc_8C0D9AE0:
#data 0x84E69380
#data 0x633033Ec
#data 0x89043030
#data 0xE519D33e
#data 0x430BE60a
#data 0x64E3

loc_8C0D9AF6:
#data 0x65F2
#data 0x7F0464E3
#data 0x6EF64F26


loc_8C0D9B00:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0D9BEC,pc),r3 ; r3 set to 0x8C034DEe
mov r4,r14
mov.l r5,@r15
jsr @r3
mov r14,r4
mov.w @(0x1E,r14),r0 	
add 0xFF,r0
mov.w r0,@(0x1E,r14) 	
exts.w r0,r0
tst r0,r0
bf loc_8C0D9B28
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
bra loc_8C0DA594
mov.l @r15+,r14

loc_8C0D9B28:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D9B30:
mov r4,r3
mov.l @(loc_8C0D9BF0,pc),r1 ; r1 set to 0x8C15D824
mov.l r4,@-r15
mov.b @(0x07,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D9B42:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
fldi0 fr4
mov.l r5,@r15
mov.b @(0x07,r14),r0 	
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr4,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @r15,r3
fmov.s @(r0,r14),fr2
fmov.s @(r0,r3),fr3
fcmp/gt fr2,fr3
bf loc_8C0D9B78
mov.w @(loc_8C0D9BE2,pc),r0 ; r0 set to 0x130
mov 0x01,r2 ; r2 set to 0x01
bra loc_8C0D9B7e
mov.w r2,@(r0,r14) 	

#align4
loc_8C0D9B78:
#data 0xE1009033
#data 0x0E15

loc_8C0D9B7E:
#data 0x9331
#data 0x33EC84E6
#data 0x30306330
#data 0xD3178904
#data 0xE609E519
#data 0x64E3430b

#align4
loc_8C0D9B94:
#data 0x64E365F2
#data 0x4F267F04
#data 0x6EF6


loc_8C0D9B9E:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0D9BEC,pc),r3 ; r3 set to 0x8C034DEe
mov r4,r14
mov.l r5,@r15
jsr @r3
mov r14,r4
mov.w @(0x1E,r14),r0 	
add 0xFF,r0
mov.w r0,@(0x1E,r14) 	
exts.w r0,r0
tst r0,r0
bf loc_8C0D9BC6
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
bra loc_8C0DA594
mov.l @r15+,r14

loc_8C0D9BC6:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D9BCE:
mov r4,r3
mov.l @(loc_8C0D9BF4,pc),r1 ; r1 set to 0x8C15D82c
mov.l r4,@-r15
mov.b @(0x07,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D9BE0:
#data 0x020c

loc_8C0D9BE2:
#data 0x0130
#data 0x000000D2

#align4
loc_8C0D9BE8:
#data bank03.loc_8c034e8c

loc_8C0D9BEC:
#data bank03.loc_8c034dee

loc_8C0D9BF0:
#data 0x8c15D824

loc_8C0D9BF4:
#data 0x8c15D82c


loc_8C0D9BF8:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b @(0x07,r14),r0 	
mov 0x30,r5 ; r5 set to 0x30
add 0x01,r0
mov.b r0,@(0x07,r14) 	
bsr loc_8C0DA540
mov r13,r4
mov 0x34,r0 ; r0 set to 0x34
fldi0 fr3
fmov.s @(r0,r14),fr4
fldi1 fr5
fsub fr0,fr4
fneg fr5
fcmp/gt fr4,fr3
bt/s loc_8C0D9C26
mov 0x00,r4 ; r4 set to 0x00
mov.w @(loc_8C0D9CFA,pc),r0 ; r0 set to 0x130
bra loc_8C0D9C2e
mov.w r4,@(r0,r14) 	

loc_8C0D9C26:
fmul fr5,fr4
mov.w @(loc_8C0D9CFA,pc),r0 ; r0 set to 0x130
mov 0x01,r2 ; r2 set to 0x01
mov.w r2,@(r0,r14) 	

loc_8C0D9C2E:
mova @(loc_8C0D9D00,pc),r0  ; r0 set to 0x8C0D9D00, r0 init to 0x8C0D9D00
fmov.s @r0,fr3
fcmp/gt fr4,fr3
bt loc_8C0D9C4c
mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
mov.b r0,@(0x06,r14) 	
mov r4,r0 ; r0 ??? bc r4 is ???, r0 ??? bc r4 is ???	
nop 	
mov r13,r5
mov.b r0,@(0x07,r14) 	
lds.l @r15+,pr 	
mov r14,r4
mov.l @r15+,r13
bra loc_8C0D9D18
mov.l @r15+,r14

loc_8C0D9C4C:
mov.w @(loc_8C0D9CFA,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
mov.w @(r0,r13),r2
cmp/eq r3,r2
bf loc_8C0D9C5c
mova @(loc_8C0D9D04,pc),r0  ; r0 set to 0x8C0D9D04
bra loc_8C0D9C60
fmov.s @r0,fr3

#align4
loc_8C0D9C5C:
#data 0xF308C72a

#align4
loc_8C0D9C60:
#data 0xFE37E05c
#data 0xF38DE068
#data 0x9046FE37
#data 0x233803Ed
#data 0xE05C8903
#data 0xF352F3E6
#data 0xFE37

loc_8C0D9C7A:
#data 0x933f
#data 0x33EC84E6
#data 0x30306330
#data 0xD3218904
#data 0xE604E519
#data 0x64E3430b

#align4
loc_8C0D9C90:
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6A000


loc_8C0D9C9C:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0D9D10,pc),r3 ; r3 set to 0x8C034DEe
mov r4,r14
mov.l r5,@r15
jsr @r3
mov r14,r4
mov 0x5C,r1 ; r1 set to 0x5c
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
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov.w @(0x1E,r14),r0 	
add 0xFF,r0 ; r0 set to 0x5b
mov.w r0,@(0x1E,r14) 	
exts.w r0,r0 ; r0 ??	
tst r0,r0
bf loc_8C0D9CE0
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
bra loc_8C0DA594
mov.l @r15+,r14

loc_8C0D9CE0:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D9CE8:
mov r4,r3
mov.l @(loc_8C0D9D14,pc),r1 ; r1 set to 0x8C15D834
mov.l r4,@-r15
mov.b @(0x07,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D9CFA:
#data 0x0130
#data 0x000000D2

#align4
loc_8C0D9D00:
#data 0x42BAAAAa

#align4
loc_8C0D9D04:
#data 0xC0BAAAAa
#data 0xC0A00000

#align4
loc_8C0D9D0C:
#data bank03.loc_8c034e8c

loc_8C0D9D10:
#data bank03.loc_8c034dee

loc_8C0D9D14:
#data 0x8c15D834


loc_8C0D9D18:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l r5,@r15
mov.b @(0x07,r14),r0 	
mov 0x30,r5 ; r5 set to 0x30
add 0x01,r0
mov.b r0,@(0x07,r14) 	
bsr loc_8C0DA540
mov.l @r15,r4
mov 0x34,r0 ; r0 set to 0x34
fldi0 fr2
fmov.s @(r0,r14),fr3
fsub fr0,fr3
fcmp/gt fr3,fr2
bt loc_8C0D9D46
mov.w @(loc_8C0D9E06,pc),r0 ; r0 set to 0x130
mov 0x00,r2 ; r2 set to 0x00
mov.w r2,@(r0,r14) 	
mova @(loc_8C0D9E0C,pc),r0  ; r0 set to 0x8C0D9E0c
bra loc_8C0D9D50
fmov.s @r0,fr3

loc_8C0D9D46:
#data 0x905e
#data 0x0E25E201
#data 0xF308C730

#align4
loc_8C0D9D50:
#data 0x9359E05c
#data 0xE068FE37
#data 0x33ECF38d
#data 0x6330FE37
#data 0x303084E6
#data 0xD32B8904
#data 0xE605E519
#data 0x64E3430b

#align4
loc_8C0D9D70:
#data 0x64E365F2
#data 0x4F267F04
#data 0x6EF6


loc_8C0D9D7A:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0D9E18,pc),r3 ; r3 set to 0x8C034DEe
mov r4,r14
mov.l r5,@r15
jsr @r3
mov r14,r4
mov 0x5C,r1 ; r1 set to 0x5c
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
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov.w @(0x1E,r14),r0 	
add 0xFF,r0 ; r0 set to 0x5b
mov.w r0,@(0x1E,r14) 	
exts.w r0,r0 ; r0 ??	
tst r0,r0
bf loc_8C0D9DBe
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
bra loc_8C0DA594
mov.l @r15+,r14

loc_8C0D9DBE:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D9DC6:
mov r4,r3
mov.l @(loc_8C0D9E1C,pc),r1 ; r1 set to 0x8C15D83c
mov.l r4,@-r15
mov.b @(0x07,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D9DD8:
mov.l r14,@-r15
mov r4,r14
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b @(0x07,r14),r0 	
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r14),fr2
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fcmp/gt fr2,fr3
bt/s loc_8C0D9E24
mov 0x01,r4 ; r4 set to 0x01
mov.w @(loc_8C0D9E06,pc),r0 ; r0 set to 0x130
mov 0x00,r2 ; r2 set to 0x00
mov.w r2,@(r0,r14) 	
mova @(loc_8C0D9E20,pc),r0  ; r0 set to 0x8C0D9E20
bra loc_8C0D9E2c
fmov.s @r0,fr3

loc_8C0D9E06:
#data 0x0130
#data 0x000000D2

#align4
loc_8C0D9E0C:
#data 0xC0E2AAAa
#data 0x40E2AAAa

#align4
loc_8C0D9E14:
#data bank03.loc_8c034e8c

loc_8C0D9E18:
#data bank03.loc_8c034dee

loc_8C0D9E1C:
#data 0x8c15D83c

loc_8C0D9E20:
#data 0xC8400000

#align4
loc_8C0D9E24:
#data 0x0E45908c
#data 0xF308C746

#align4
loc_8C0D9E2C:
#data 0xF48DE05c
#data 0xE068FE37
#data 0xE060FE47
#data 0xE06CFE47
#data 0x907FFE47
#data 0x03ED02Dd
#data 0x8F033320
#data 0x6043E605
#data 0x81DF0009

#align4
loc_8C0D9E50:
#data 0xE519D33d
#data 0x64E3430b
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6


loc_8C0D9E62:
mov.l r14,@-r15
mov 0x24,r0 ; r0 set to 0x24
mov.l r13,@-r15
mov r5,r13
mov r4,r14
sts.l pr,@-r15
mov.b @(r0,r13),r3
mov.b r3,@(r0,r14) 	
mov.l @(loc_8C0D9F4C,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r14,r4
mov 0x5C,r1 ; r1 set to 0x5c
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
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov.w @(loc_8C0D9F42,pc),r0 ; r0 set to 0x1D0
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
extu.b r0,r0
cmp/eq 0x16,r0 	
bt loc_8C0D9EA4
mov 0x04,r0 ; r0 set to 0x04
bra loc_8C0D9EDa
mov.b r0,@(0x07,r14) 	

loc_8C0D9EA4:
mov.w @(loc_8C0D9F40,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bf loc_8C0D9EC0
mova @(loc_8C0D9F50,pc),r0  ; r0 set to 0x8C0D9F50
fmov.s @r0,fr3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr2
fmov.s @(r0,r14),fr1
fadd fr3,fr2
fcmp/gt fr2,fr1
bf loc_8C0D9ED0
bra loc_8C0D9EDa
nop 	

#align4
loc_8C0D9EC0:
#data 0xF308C724
#data 0xF2D6E034
#data 0xF230F1E6
#data 0x8904F215

#align4
loc_8C0D9ED0:
#data 0x700184E7
#data 0xE00080E7
#data 0x81De


loc_8C0D9EDA:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D9EE2:
mov.l r14,@-r15
mov 0x24,r0 ; r0 set to 0x24
mov.l r13,@-r15
mov r5,r13
mov r4,r14
sts.l pr,@-r15
mov.b @(r0,r13),r3
mov.b r3,@(r0,r14) 	
mov.l @(loc_8C0D9F4C,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r14,r4
mov 0x5C,r1 ; r1 set to 0x5c
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
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov.w @(loc_8C0D9F42,pc),r0 ; r0 set to 0x1D0
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
extu.b r0,r0
cmp/eq 0x16,r0 	
bt loc_8C0D9F24
mov 0x04,r0 ; r0 set to 0x04
bra loc_8C0D9F8a
mov.b r0,@(0x07,r14) 	

loc_8C0D9F24:
mov.w @(loc_8C0D9F40,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bf loc_8C0D9F5c
mova @(loc_8C0D9F58,pc),r0  ; r0 set to 0x8C0D9F58
fmov.s @r0,fr4
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr3
fmov.s @(r0,r14),fr2
fadd fr4,fr3
fcmp/gt fr3,fr2
bt loc_8C0D9F8a
bra loc_8C0D9F6c
nop 	

loc_8C0D9F40:
#data 0x0130

loc_8C0D9F42:
#data 0x01D0
#data 0x48400000

#align4
loc_8C0D9F48:
#data bank03.loc_8c034e8c

loc_8C0D9F4C:
#data bank03.loc_8c034dee

loc_8C0D9F50:
#data 0x42A00000
#data 0xC2A00000

#align4
loc_8C0D9F58:
#data 0x42855555


loc_8C0D9F5C:
mova @(loc_8C0DA094,pc),r0  ; r0 init to 0x8C0DA094
fmov.s @r0,fr4
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr3
fmov.s @(r0,r14),fr2
fadd fr4,fr3
fcmp/gt fr2,fr3
bt loc_8C0D9F8a

loc_8C0D9F6C:
mov.b @(0x07,r14),r0 	
mov r14,r4
mov.l @(loc_8C0DA098,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
mov 0x07,r6 ; r6 set to 0x07, r6 set to 0x07
add 0x01,r0 ; r0 set to 0x35
mov.b r0,@(0x07,r14) 	
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???	
mov 0x19,r5 ; r5 set to 0x19, r5 set to 0x19
fadd fr4,fr3
fmov.s fr3,@(r0,r14) 	
lds.l @r15+,pr 	
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0D9F8A:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0D9F92:
mov.l r14,@-r15
mov 0x24,r0 ; r0 set to 0x24
mov.l r13,@-r15
mov r5,r13
mov r4,r14
sts.l pr,@-r15
mov.b @(r0,r13),r3
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0DA08C,pc),r0 ; r0 set to 0x1D0
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
extu.b r0,r0
cmp/eq 0x16,r0 	
bt loc_8C0D9FBc
mov.l @(loc_8C0DA098,pc),r2 ; r2 set to 0x8C034E8c
mov 0x19,r5 ; r5 set to 0x19
mov 0x05,r6 ; r6 set to 0x05
jsr @r2
mov r14,r4
mov 0x04,r0 ; r0 set to 0x04
bra loc_8C0D9FEc
mov.b r0,@(0x07,r14) 	

#align4
loc_8C0D9FBC:
#data 0x03DC9067
#data 0x89062338
#data 0xE40084E4
#data 0x80E47001
#data 0x0E449060
#data 0x2E40

loc_8C0D9FD2:
#data 0xD332
#data 0x64E3430b
#data 0x02EC9059
#data 0x89052228
#data 0x03DD9057
#data 0xE0340E35
#data 0xFE37F3D6


loc_8C0D9FEC:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0D9FF4:
#data 0x4F222FE6
#data 0x430BD328
#data 0xE15C6E43
#data 0x31ECD327
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x64E3430b
#data 0x8B022008
#data 0x700184E4
#data 0x80E4

loc_8C0DA02A:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0DA030:
mov.w @(loc_8C0DA08C,pc),r0 ; r0 set to 0x1D0
mov.l r14,@-r15
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x16,r0 	
bt/s loc_8C0DA044
mov r4,r14
mov r14,r4
bra loc_8C0DA594
mov.l @r15+,r14

loc_8C0DA044:
mov.b @(0x07,r14),r0 	
mov r14,r4
mov.l @(loc_8C0DA0A4,pc),r1 ; r1 set to 0x8C15D850
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0DA054:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
fldi0 fr4
mov.l r5,@r15
mov.b @(0x07,r14),r0 	
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr4,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @r15,r3
fmov.s @(r0,r14),fr3
fmov.s @(r0,r3),fr2
fcmp/gt fr3,fr2
bt/s loc_8C0DA0A8
mov 0x0E,r6 ; r6 set to 0x0e
mov.w @(loc_8C0DA092,pc),r0 ; r0 set to 0x130
mov 0x00,r2 ; r2 set to 0x00
bra loc_8C0DA0Ae
mov.w r2,@(r0,r14) 	

loc_8C0DA08C:
#data 0x01D0
#data 0x0141
#data 0x012c

loc_8C0DA092:
#data 0x0130

#align4
loc_8C0DA094:
#data 0xC2855555

#align4
loc_8C0DA098:
#data bank03.loc_8c034e8c

loc_8C0DA09C:
#data bank03.loc_8c034dee

loc_8C0DA0A0:
#data bank03.loc_8c03340c

loc_8C0DA0A4:
#data 0x8c15D850


loc_8C0DA0A8:
mov.w @(loc_8C0DA1BE,pc),r0 ; r0 set to 0x130
mov 0x01,r1 ; r1 set to 0x01
mov.w r1,@(r0,r14) 	

loc_8C0DA0AE:
mov.l @(loc_8C0DA1C8,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
mov 0x19,r5 ; r5 set to 0x19, r5 set to 0x19
jsr @r3
mov r14,r4
mov.l @r15,r5 ; r5 ??? bc r15 is ???, r5 ??? bc r15 is ???	
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r14

loc_8C0DA0C0:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0DA1CC,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
jsr @r3
mov r4,r14
mov.w @(loc_8C0DA1C0,pc),r0 ; r0 set to 0x141, r0 set to 0x141, r0 set to 0x141
mov.b @(r0,r14),r2
tst r2,r2
bt loc_8C0DA0E4
mov.b @(0x07,r14),r0 	
mov r14,r4
mov.l @(loc_8C0DA1D0,pc),r3 ; r3 set to 0x8C0D8840, r3 set to 0x8C0D8840, r3 set to 0x8C0D8840
mov 0x33,r5 ; r5 set to 0x33, r5 set to 0x33, r5 set to 0x33
add 0x01,r0 ; r0 set to 0x142, r0 set to 0x142, r0 set to 0x142
mov.b r0,@(0x07,r14) 	
lds.l @r15+,pr 	
jmp @r3
mov.l @r15+,r14

loc_8C0DA0E4:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0DA0EA:
mov.l @(loc_8C0DA1CC,pc),r3 ; r3 set to 0x8C034DEe
jmp @r3
nop 	

loc_8C0DA0F0:
mov.w @(loc_8C0DA1C2,pc),r0 ; r0 set to 0x1D0
mov.l r14,@-r15
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x16,r0 	
bt/s loc_8C0DA104
mov r4,r14
mov r14,r4
bra loc_8C0DA594
mov.l @r15+,r14

loc_8C0DA104:
mov.b @(0x07,r14),r0 	
mov r14,r4
mov.l @(loc_8C0DA1D4,pc),r1 ; r1 set to 0x8C15D85c
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0DA114:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
fldi0 fr4
mov.l r5,@r15
mov.b @(0x07,r14),r0 	
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr4,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @r15,r3
fmov.s @(r0,r14),fr3
fmov.s @(r0,r3),fr2
fcmp/gt fr3,fr2
bt/s loc_8C0DA14c
mov 0x0E,r6 ; r6 set to 0x0e
mov.w @(loc_8C0DA1BE,pc),r0 ; r0 set to 0x130
mov 0x00,r2 ; r2 set to 0x00
bra loc_8C0DA152
mov.w r2,@(r0,r14) 	

loc_8C0DA14C:
mov.w @(loc_8C0DA1BE,pc),r0 ; r0 set to 0x130
mov 0x01,r1 ; r1 set to 0x01
mov.w r1,@(r0,r14) 	

loc_8C0DA152:
mov.l @(loc_8C0DA1C8,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
mov 0x19,r5 ; r5 set to 0x19, r5 set to 0x19
jsr @r3
mov r14,r4
mov.l @r15,r5 ; r5 ??? bc r15 is ???, r5 ??? bc r15 is ???	
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r14

loc_8C0DA164:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0DA1CC,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
jsr @r3
mov r4,r14
mov.w @(loc_8C0DA1C0,pc),r0 ; r0 set to 0x141, r0 set to 0x141, r0 set to 0x141
mov.b @(r0,r14),r2
tst r2,r2
bt loc_8C0DA188
mov.b @(0x07,r14),r0 	
mov r14,r4
mov.l @(loc_8C0DA1D0,pc),r3 ; r3 set to 0x8C0D8840, r3 set to 0x8C0D8840, r3 set to 0x8C0D8840
mov 0x33,r5 ; r5 set to 0x33, r5 set to 0x33, r5 set to 0x33
add 0x01,r0 ; r0 set to 0x142, r0 set to 0x142, r0 set to 0x142
mov.b r0,@(0x07,r14) 	
lds.l @r15+,pr 	
jmp @r3
mov.l @r15+,r14

loc_8C0DA188:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0DA18E:
#data 0x2F46
#data 0x94178455
#data 0x8F052008
#data 0x9012345c
#data 0x600C005c
#data 0x8903881d

#align4
loc_8C0DA1A4:
#data 0x804BE000
#data 0x804AE001

#align4
loc_8C0DA1AC:
#data 0xD10A63F2
#data 0x64F28437
#data 0x4008600c
#data 0x432B031e
#data 0x7F04

loc_8C0DA1BE:
#data 0x0130

loc_8C0DA1C0:
#data 0x0141

loc_8C0DA1C2:
#data 0x01D0
#data 0x000002A4

#align4
loc_8C0DA1C8:
#data bank03.loc_8c034e8c

loc_8C0DA1CC:
#data bank03.loc_8c034dee

loc_8C0DA1D0:
#data loc_8c0d8840

loc_8C0DA1D4:
#data 0x8c15D85c

loc_8C0DA1D8:
#data 0x8c15D868


loc_8C0DA1DC:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
fldi0 fr4
mov.l r5,@r15
mov.b @(0x07,r14),r0 	
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr4,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @r15,r3
fmov.s @(r0,r14),fr3
fmov.s @(r0,r3),fr2
fcmp/gt fr3,fr2
bt/s loc_8C0DA214
mov 0x00,r6 ; r6 set to 0x00
mov.w @(loc_8C0DA302,pc),r0 ; r0 set to 0x130
mov 0x00,r2 ; r2 set to 0x00
bra loc_8C0DA21a
mov.w r2,@(r0,r14) 	

loc_8C0DA214:
mov.w @(loc_8C0DA302,pc),r0 ; r0 set to 0x130
mov 0x01,r1 ; r1 set to 0x01
mov.w r1,@(r0,r14) 	

loc_8C0DA21A:
mov.l @(loc_8C0DA30C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
mov 0x19,r5 ; r5 set to 0x19, r5 set to 0x19
jsr @r3
mov r14,r4
mov.l @r15,r5 ; r5 ??? bc r15 is ???, r5 ??? bc r15 is ???	
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r14

loc_8C0DA22C:
mov.w @(loc_8C0DA304,pc),r6 ; r6 set to 0x2A4, r6 set to 0x2A4, r6 set to 0x2A4
add r5,r6 ; r6 ??? bc r5 is ???, r6 ??? bc r5 is ???, r6 ??? bc r5 is ???	
mov.b @(0x0B,r6),r0 	
tst r0,r0
bf loc_8C0DA240
mov.w @(loc_8C0DA306,pc),r0 ; r0 set to 0x41C, r0 set to 0x41C, r0 set to 0x41c
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???, r3 ??? bc r5 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38, r0 set to 0x38
bra loc_8C0DA594
fmov.s fr3,@(r0,r4) 	

loc_8C0DA240:
mov.b @(0x0A,r6),r0 	
tst r0,r0
bt loc_8C0DA27c
mova @(loc_8C0DA310,pc),r0  ; r0 init to 0x8C0DA310
fmov.s @r0,fr4
mov 0x34,r0 ; r0 set to 0x34
mov r0,r1 ; r1 set to 0x34
add r4,r1 ; r1 ??? bc r4 is ???	
fmov.s @r1,fr3
mov r0,r1 ; r1 set to 0x34
add r5,r1 ; r1 ??? bc r5 is ???	
fmov.s @r1,fr2
fsub fr3,fr2
fmov.s @(r0,r4),fr3
fdiv fr4,fr2
fadd fr2,fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
mov r0,r1 ; r1 set to 0x38
add r4,r1 ; r1 ??? bc r4 is ???	
fmov.s @r1,fr3
mov r0,r1 ; r1 set to 0x38
add r5,r1 ; r1 ??? bc r5 is ???	
fmov.s @r1,fr2
fsub fr3,fr2
fmov.s @(r0,r4),fr3
fdiv fr4,fr2
fadd fr2,fr3
bra loc_8C0DA28c
fmov.s fr3,@(r0,r4) 	

loc_8C0DA27C:
mov.b @(0x07,r4),r0 	
mov 0x00,r5 ; r5 set to 0x00
add 0x01,r0
mov.b r0,@(0x07,r4) 	
mov.w @(loc_8C0DA308,pc),r0 ; r0 set to 0x12c
mov.b r5,@r4
mov.b r5,@(r0,r4) 	
mov.b r5,@r4

loc_8C0DA28C:
rts 	
nop 	
;-------------------------------------------------------------------------------

#align4
loc_8C0DA290:
#data 0x4F229638
#data 0x846B365c
#data 0x89022008
#data 0x2008846a
#data 0x8910

loc_8C0DA2A2:
#data 0x8447
#data 0x6253E601
#data 0x70016143
#data 0x72348047
#data 0x7134902a
#data 0x04642460
#data 0x035D7004
#data 0xD3150435
#data 0xE00C430b

#align4
loc_8C0DA2C4:
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0DA2CA:
mov.w @(loc_8C0DA304,pc),r6 ; r6 set to 0x2A4
add r5,r6 ; r6 ??? bc r5 is ???	
mov.b @(0x0B,r6),r0 	
tst r0,r0
bf loc_8C0DA2De
mov.w @(loc_8C0DA306,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r5),fr3
mov 0x38,r0 ; r0 set to 0x38
bra loc_8C0DA594
fmov.s fr3,@(r0,r4) 	

loc_8C0DA2DE:
mova @(loc_8C0DA310,pc),r0  ; r0 init to 0x8C0DA310
fmov.s @r0,fr4
mov.w @(loc_8C0DA302,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r3
tst r3,r3
bf loc_8C0DA31c
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0DA318,pc),r2 ; r2 set to 0x42A00000
mov r0,r1 ; r1 set to 0x34
add r4,r1 ; r1 ??? bc r4 is ???	
fmov.s @r1,fr3
mov r0,r1 ; r1 set to 0x34
add r5,r1 ; r1 ??? bc r5 is ???	
lds r2,fpul 	
fmov.s @r1,fr2 ; r2 ??? bc r1 is ???	
fsub fr3,fr2
bra loc_8C0DA332
fsts fpul,fr3

loc_8C0DA302:
#data 0x0130

loc_8C0DA304:
#data 0x02A4

loc_8C0DA306:
#data 0x041c

loc_8C0DA308:
#data 0x012c
#data 0x0000

#align4
loc_8C0DA30C:
#data bank03.loc_8c034e8c

loc_8C0DA310:
#data 0x41000000

#align4
loc_8C0DA314:
#data bank12.loc_8c1294C8

loc_8C0DA318:
#data 0x42A00000


loc_8C0DA31C:
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0DA454,pc),r2 ; r2 set to 0xC2A00000
mov r0,r1 ; r1 set to 0x34
add r4,r1 ; r1 ??? bc r4 is ???	
fmov.s @r1,fr3
mov r0,r1 ; r1 set to 0x34
add r5,r1 ; r1 ??? bc r5 is ???	
lds r2,fpul 	
fmov.s @r1,fr2 ; r2 ??? bc r1 is ???	
fsub fr3,fr2
fsts fpul,fr3

loc_8C0DA332:
fadd fr3,fr2
fmov.s @(r0,r4),fr1
fdiv fr4,fr2
fadd fr2,fr1
fmov.s fr1,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov r0,r1 ; r1 set to 0x38, r1 set to 0x38
add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???	
fmov.s @r1,fr3
mov.w @(loc_8C0DA44A,pc),r1 ; r1 set to 0x41C, r1 set to 0x41c
add r5,r1 ; r1 ??? bc r5 is ???, r1 ??? bc r5 is ???	
fmov.s @r1,fr2
fsub fr3,fr2
fmov.s @(r0,r4),fr3
fdiv fr4,fr2
fadd fr2,fr3
rts 	
fmov.s fr3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0DA356:
#data 0x2F46
#data 0x94778455
#data 0x8F052008
#data 0x9074345c
#data 0x600C005c
#data 0x8901881d

#align4
loc_8C0DA36C:
#data 0x804BE000

#align4
loc_8C0DA370:
#data 0xD13963F2
#data 0x64F28437
#data 0x4008600c
#data 0x432B031e
#data 0x7F04


loc_8C0DA382:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
fldi0 fr4
mov.l @(loc_8C0DA460,pc),r3 ; r3 set to 0x8C034E8c
mov 0x0F,r6 ; r6 set to 0x0f
mov.l r5,@r15
mov 0x19,r5 ; r5 set to 0x19
mov.b @(0x07,r14),r0 	
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr4,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mova @(loc_8C0DA45C,pc),r0  ; r0 set to 0x8C0DA45c
fmov.s @r0,fr3 ; r3 ??	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr3,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
jsr @r3
mov r14,r4
mov.l @r15,r5 ; r5 ??? bc r15 is ???	
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
bra loc_8C0DA3Dc
mov.l @r15+,r14

loc_8C0DA3BE:
#data 0x2FE6
#data 0xD3284F22
#data 0x6E43430b
#data 0x02EC9042
#data 0x89022228
#data 0x700184E7
#data 0x80E7

loc_8C0DA3D6:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0DA3DC:
#data 0x6E432FE6
#data 0xD321E160
#data 0xE03831Ec
#data 0xF3184F22
#data 0xF2E6E16c
#data 0xF23031Ec
#data 0xE060FE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x64E3430b
#data 0x8B062008
#data 0xE40084E7
#data 0x80E77001
#data 0x2E40901f
#data 0x0E44

loc_8C0DA416:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0DA41C:
mov.w @(loc_8C0DA44C,pc),r6 ; r6 set to 0x2A4
add r5,r6 ; r6 ??? bc r5 is ???	
mov.b @(0x0B,r6),r0 	
tst r0,r0
bf loc_8C0DA4Ac
mov.b @(0x07,r4),r0 	
add 0x01,r0
mov.b r0,@(0x07,r4) 	
mov 0x00,r0 ; r0 set to 0x00
mov.b r0,@(0x0B,r6) 	
mov 0x01,r6 ; r6 set to 0x01
mov.w @(loc_8C0DA452,pc),r0 ; r0 set to 0x12c
mov.b r6,@r4
mov.b r6,@(r0,r4) 	
add 0x04,r0 ; r0 set to 0x130
mov.w @(r0,r5),r3
mov.w r3,@(r0,r4) 	
mov.w @(r0,r5),r2
tst r2,r2
bf loc_8C0DA470
mova @(loc_8C0DA46C,pc),r0  ; r0 set to 0x8C0DA46c
bra loc_8C0DA474
fmov.s @r0,fr3

loc_8C0DA44A:
#data 0x041c

loc_8C0DA44C:
#data 0x02A4
#data 0x01D0
#data 0x0141

loc_8C0DA452:
#data 0x012c

#align4
loc_8C0DA454:
#data 0xC2A00000

#align4
loc_8C0DA458:
#data 0x8c15D878

loc_8C0DA45C:
#data 0x41892492

#align4
loc_8C0DA460:
#data bank03.loc_8c034e8c

loc_8C0DA464:
#data bank03.loc_8c034dee

loc_8C0DA468:
#data bank03.loc_8c0334A8

loc_8C0DA46C:
#data 0x42A00000


loc_8C0DA470:
mova @(loc_8C0DA570,pc),r0  ; r0 init to 0x8C0DA570
fmov.s @r0,fr3

loc_8C0DA474:
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
mov.l @(loc_8C0DA578,pc),r3 ; r3 set to 0x8C26A5A8, r3 set to 0x8C26A5A8
fmov.s @(r0,r5),fr2
mov 0x0C,r6 ; r6 set to 0x0C, r6 set to 0x0c
fldi0 fr4
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mova @(loc_8C0DA574,pc),r0  ; r0 set to 0x8C0DA574, r0 set to 0x8C0DA574
fmov.s @r3,fr2
fmov.s @r0,fr3 ; r3 ??, r3 ??	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(loc_8C0DA584,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fmov.s fr4,@(r0,r4) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r4) 	
mova @(loc_8C0DA57C,pc),r0  ; r0 set to 0x8C0DA57C, r0 set to 0x8C0DA57c
fmov.s @r0,fr2
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr2,@(r0,r4) 	
mova @(loc_8C0DA580,pc),r0  ; r0 set to 0x8C0DA580, r0 set to 0x8C0DA580
fmov.s @r0,fr2
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr2,@(r0,r4) 	
jmp @r3
mov 0x19,r5

loc_8C0DA4AC:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0DA4B0:
mov 0x60,r1 ; r1 set to 0x60
add r4,r1 ; r1 ??? bc r4 is ???	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @r1,fr3
fmov.s @(r0,r4),fr2
mov 0x6C,r1 ; r1 set to 0x6c
add r4,r1 ; r1 ??? bc r4 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s @(r0,r4),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov.w @(loc_8C0DA568,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r5),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r4),fr2
fcmp/gt fr3,fr2
bt loc_8C0DA4Ea
mov.b @(0x07,r4),r0 	
mov.l @(loc_8C0DA588,pc),r3 ; r3 set to 0x8C034DEe
add 0x01,r0 ; r0 set to 0x39
mov.b r0,@(0x07,r4) 	
mov.w @(loc_8C0DA568,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
mov 0x38,r0 ; r0 set to 0x38
jmp @r3
fmov.s fr3,@(r0,r4) 	

loc_8C0DA4EA:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0DA4EE:
sts.l pr,@-r15
add 0xF8,r15
mov.l @(loc_8C0DA588,pc),r3 ; r3 set to 0x8C034DEe
mov.l r4,@r15
mov.l r5,@(0x04,r15) 	
jsr @r3
mov.l @r15,r4
exts.b r0,r0
cmp/pz r0
bt loc_8C0DA50c
mov.l @r15,r4
mov.l @(0x04,r15),r5
add 0x08,r15
bra loc_8C0DA594
lds.l @r15+,pr 	

loc_8C0DA50C:
add 0x08,r15
lds.l @r15+,pr 	
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0DA514:
mov.b @(0x04,r4),r0 	
mov 0x00,r5 ; r5 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0DA56A,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r4) 	
rts 	
mov.b r5,@r4
;-------------------------------------------------------------------------------

loc_8C0DA524:
mov.l @(loc_8C0DA58C,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0DA52A:
#data 0xE301
#data 0x644F655f
#data 0x2348435c
#data 0x000B8901
#data 0xE001
;-------------------------------------------------------------------------------

loc_8C0DA53A:
#data 0xE000
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0DA540:
exts.w r5,r5
lds r5,fpul 	
mova @(loc_8C0DA590,pc),r0  ; r0 init to 0x8C0DA590
fmov.s @r0,fr2
mov.w @(loc_8C0DA56C,pc),r0 ; r0 set to 0x130
float fpul,fr3
mov.w @(r0,r4),r3
tst r3,r3
fmov fr3,fr4
bf/s loc_8C0DA55e
fmul fr2,fr4
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r4),fr0 ; r0 ??? bc r4 is ???	
rts 	
fadd fr4,fr0
;-------------------------------------------------------------------------------

loc_8C0DA55E:
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r4),fr0 ; r0 ??? bc r4 is ???	
fsub fr4,fr0
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0DA568:
#data 0x041c

loc_8C0DA56A:
#data 0x012c

loc_8C0DA56C:
#data 0x0130
#data 0x0000

#align4
loc_8C0DA570:
#data 0xC2A00000

#align4
loc_8C0DA574:
#data 0x42092492

#align4
loc_8C0DA578:
#data 0x8C26A5A8

#align4
loc_8C0DA57C:
#data 0xC1892492

#align4
loc_8C0DA580:
#data 0xBF4DB6Db

#align4
loc_8C0DA584:
#data bank03.loc_8c034e8c

loc_8C0DA588:
#data bank03.loc_8c034dee

loc_8C0DA58C:
#data bank04.loc_8c0450C0

loc_8C0DA590:
#data 0x3FD55555

#align4
loc_8C0DA594:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x7FF84F22
#data 0x6E43E004
#data 0x6D5381Ef
#data 0xEC00906b
#data 0x03DC9B68
#data 0x8F0E2338
#data 0xD3353BDc
#data 0x643084D2
#data 0xBFB4650c
#data 0x2008644c
#data 0xD332890f
#data 0x6230E105
#data 0x3213622c
#data 0x8B09

loc_8C0DA5D2:
#data 0x9257
#data 0x32EC84E6
#data 0x22009155
#data 0x31EC84E7
#data 0xA07A2100
#data 0xE001

loc_8C0DA5E6:
#data 0x84Bb
#data 0x89282008
#data 0x600C84Bb
#data 0x89058802
#data 0x890E8804
#data 0x89168806
#data 0x0009A015

#align4
loc_8C0DA600:
#data 0x84E69140
#data 0x923E31Ec
#data 0x84E72100
#data 0x220032Ec
#data 0xE00c

loc_8C0DA612:
#data 0xA0Bb
#data 0x80E6

loc_8C0DA616:
#data 0x9135
#data 0x31EC84E6
#data 0x21009233
#data 0x32EC84E7
#data 0xAFF42200
#data 0xE00d

loc_8C0DA62A:
#data 0x912b
#data 0x31EC84E6
#data 0x21009229
#data 0x32EC84E7
#data 0xAFEA2200
#data 0xE00e

loc_8C0DA63E:
#data 0xD215
#data 0x64E3420b
#data 0x8B092008
#data 0x84E6911c
#data 0x921A31Ec
#data 0x84E72100
#data 0x220032Ec
#data 0xE004AFDb

#align4
loc_8C0DA65C:
#data 0xE3039014
#data 0x323302Dd
#data 0x84B18955
#data 0x89152008
#data 0x84E6910a
#data 0x920831Ec
#data 0x84E72100
#data 0x220032Ec
#data 0xE00AAFC9
#data 0x041102A4
#data 0x00D300D2
#data 0x0000026c
#data 0x8C289628
#data 0x8C2895F0

#align4
loc_8C0DA694:
#data bank03.loc_8c03340c

loc_8C0DA698:
#data 0x00DC9081
#data 0x8816600c
#data 0xE0208B33
#data 0xE30502Dc
#data 0x3233622c
#data 0x00DC8B2d
#data 0x880A600c
#data 0xE0208929
#data 0x600C00Dc
#data 0x89038806
#data 0x890C8809
#data 0x0009A016

#align4
loc_8C0DA6C8:
#data 0x84E6916a
#data 0x926831Ec
#data 0x84E72100
#data 0x220032Ec
#data 0xE008

loc_8C0DA6DA:
#data 0xA057
#data 0x80E6

loc_8C0DA6DE:
#data 0x915f
#data 0x31EC84E6
#data 0x2100925d
#data 0x32EC84E7
#data 0xE0102200
#data 0x80E6A04c

#align4
loc_8C0DA6F4:
#data 0x84E69154
#data 0x925231Ec
#data 0x84E72100
#data 0x220032Ec
#data 0xA041E009
#data 0x80E6

loc_8C0DA70A:
#data 0x904b
#data 0x421502Dd
#data 0x890a

loc_8C0DA712:
#data 0x9145
#data 0x31EC84E6
#data 0x21009243
#data 0x32EC84E7
#data 0xE00F2200
#data 0x80E6A032

#align4
loc_8C0DA728:
#data 0x6BF3E530
#data 0x64D3BF08
#data 0xF3E6E034
#data 0xF031E038
#data 0xF3D6FB0a
#data 0xFB37E004
#data 0xF308C719
#data 0xF2E6E038
#data 0xF1B6E004
#data 0xF215F230
#data 0xF38D8D01
#data 0xEC01

loc_8C0DA756:
#data 0xF2B8
#data 0x8B04F325
#data 0xF29DF1B8
#data 0xF122F24d
#data 0xFB1a

loc_8C0DA766:
#data 0xC711
#data 0xF308F2B8
#data 0x8D01F325
#data 0x7C0284E6

#align4
loc_8C0DA774:
#data 0x92149114
#data 0x210031Ec
#data 0x84E732Ec
#data 0x2200D10b
#data 0x400060Cc
#data 0x80E6001c

#align4
loc_8C0DA78C:
#data 0x80E7E000
#data 0x4F267F08
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x01D06EF6
#data 0x00D300D2
#data 0x00000420
#data 0x42CDB6Db
#data 0x42855555

#align4
loc_8C0DA7B0:
#data 0x8c15D890


loc_8C0DA7B4:
mov.l r14,@-r15
mov r6,r14
mov.l r13,@-r15
mov.l r12,@-r15
mov r5,r12
mov.l r11,@-r15
mov 0x01,r11 ; r11 set to 0x01
mov.l r10,@-r15
mov 0x00,r10 ; r10 set to 0x00
mov.l r9,@-r15
mov.w @(loc_8C0DA856,pc),r13 ; r13 set to 0xCc
sts.l pr,@-r15
mov.l @(loc_8C0DA858,pc),r9 ; r9 set to 0x8C03544c
add r4,r13 ; r13 ??? bc r4 is ???	

loc_8C0DA7D0:
mov 0x25,r6 ; r6 set to 0x25, r6 set to 0x25
mov.b @r14,r0
add r12,r6 ; r6 ??? bc r12 is ???, r6 ??? bc r12 is ???	
mov 0x57,r3 ; r3 set to 0x57, r3 set to 0x57
mov.b r0,@(0x04,r13) 	
mov.b @r6,r6
mov.b @(0x02,r14),r0 	
extu.b r6,r6
mulu.w r3,r6
extu.b r0,r0
sts macl,r6
add r0,r6
mov.b @(0x03,r14),r0 	
extu.b r0,r7
mov.b @(0x01,r14),r0 	
extu.b r0,r5
jsr @r9
mov r12,r4
mov.l @(0x04,r14),r0
cmp/eq 0x01,r0 	
bf loc_8C0DA7Fe
bra loc_8C0DA802
mov r10,r0

loc_8C0DA7FE:
mov r11,r0
nop 	

loc_8C0DA802:
mov.b r0,@(0x05,r13) 	
mov.l @(0x04,r14),r3
mov.b @(0x04,r13),r0 	
shll2 r3
shll r3
tst r0,r0
add r3,r14
bt loc_8C0DA7D0
mov.l r14,@r13
lds.l @r15+,pr 	
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0DA824:
#data 0x9E162FE6
#data 0x3E4C2FD6
#data 0x84E44F22
#data 0x80E470Ff
#data 0x2008600c
#data 0xED018F07
#data 0x200884E5
#data 0x66E28D01
#data 0xED00

loc_8C0DA846:
#data 0xBFB5
#data 0x0009

loc_8C0DA84A:
#data 0x60D3
#data 0x4F260009
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0DA856:
#data 0x00Cc

#align4
loc_8C0DA858:
#data bank03.loc_8c03544c
#data 0x7FF84F22
#data 0x60532F42
#data 0xD3560009
#data 0x80F4E503
#data 0x430BE600
#data 0x20086463
#data 0x64038D0d
#data 0xE120D352
#data 0x1434314c
#data 0x62F29393
#data 0x84F41426
#data 0x65F22100
#data 0x353C908e
#data 0x7F088053
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0DA89A:
mov r4,r3
mov.l @(loc_8C0DA9C8,pc),r1 ; r1 set to 0x8C15D898
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

#align4
loc_8C0DA8AC:
#data 0x917F937f
#data 0x84444F22
#data 0x927B314c
#data 0x80447001
#data 0x0435E026
#data 0x55469077
#data 0x430BD341
#data 0x9073325c
#data 0x6143E201
#data 0x04247150
#data 0x80428452
#data 0x80418451
#data 0xF356E050
#data 0xE054F437
#data 0xF437F356
#data 0x035C9065
#data 0x70010434
#data 0x0424025c
#data 0x035CE030
#data 0x72506253
#data 0xD3340434
#data 0xE00C430b
#data 0x025CE024
#data 0xE300E518
#data 0x90530424
#data 0x70010454
#data 0x70010454
#data 0x0454E510
#data 0x04547001
#data 0x0434E024
#data 0x4F26

loc_8C0DA926:
#data 0x2FE6
#data 0x90466E43
#data 0x005C55E6
#data 0x8815600c
#data 0x90418B23
#data 0x604C045c
#data 0x8D0C8807
#data 0x60436403
#data 0x88040009
#data 0x60438907
#data 0x88050009
#data 0x60438903
#data 0x880D0009
#data 0x8B11

loc_8C0DA95A:
#data 0x9326
#data 0x353CE400
#data 0x00096043
#data 0x84E48053
#data 0x80E47001
#data 0x00096043
#data 0x80E680E7
#data 0x901D80E5
#data 0x000B0E44
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0DA97E:
#data 0x9019
#data 0xD11464E3
#data 0x0E34035c
#data 0x600C84E6
#data 0x031E4008
#data 0x6EF6432b
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0DA998:
mov r4,r3
mov.l @(loc_8C0DA9D8,pc),r1 ; r1 set to 0x8C15D8Bc
mov.l r4,@-r15
mov.b @(0x07,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x02A4
#data 0x1C0400Ff
#data 0x00C000Dc
#data 0x01A3012c
#data 0x01D0013c
#data 0x000001E9

#align4
loc_8C0DA9C0:
#data bank04.loc_8c044F12

loc_8C0DA9C4:
#data loc_8c0dA89a

loc_8C0DA9C8:
#data 0x8c15D898

loc_8C0DA9CC:
#data bank12.loc_8c129560

loc_8C0DA9D0:
#data bank12.loc_8c1294C8

loc_8C0DA9D4:
#data 0x8c15D8A8

loc_8C0DA9D8:
#data 0x8c15D8Bc


loc_8C0DA9DC:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0DAB02,pc),r1 ; r1 set to 0x130
fmov.s fr15,@-r15
add r14,r1 ; r1 ??? bc r14 is ???	
fmov.s fr14,@-r15
sts.l pr,@-r15
mov.b @(0x07,r14),r0 	
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov.w @(loc_8C0DAB02,pc),r0 ; r0 set to 0x130
mov.w @(r0,r13),r0 ; r0 ??? bc r13 is ???	
xor 0x01,r0 	
mov.w r0,@r1
mova @(loc_8C0DAB08,pc),r0  ; r0 set to 0x8C0DAB08
fmov.s @r0,fr14
mova @(loc_8C0DAB0C,pc),r0  ; r0 set to 0x8C0DAB0c
fmov.s @r0,fr15
mov.w @(loc_8C0DAB02,pc),r0 ; r0 set to 0x130
mov.w @(r0,r13),r3
tst r3,r3
bf loc_8C0DAA14
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr3
bra loc_8C0DAA1a
fadd fr15,fr3

loc_8C0DAA14:
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr3
fadd fr14,fr3

loc_8C0DAA1A:
mov.l @(loc_8C0DAB14,pc),r3 ; r3 set to 0x8C26A5A8, r3 set to 0x8C26A5A8
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0DAB10,pc),r0  ; r0 set to 0x8C0DAB10, r0 init to 0x8C0DAB10
fmov.s @r3,fr2
fmov.s @r0,fr3 ; r3 ??, r3 ??	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fldi0 fr4
fadd fr3,fr2
mov.l @(loc_8C0DAB20,pc),r3 ; r3 set to 0x8C03340C, r3 set to 0x8C03340c
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fmov.s fr4,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mova @(loc_8C0DAB18,pc),r0  ; r0 set to 0x8C0DAB18, r0 set to 0x8C0DAB18
fmov.s @r0,fr2
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0DAB1C,pc),r0  ; r0 set to 0x8C0DAB1C, r0 set to 0x8C0DAB1c
fmov.s @r0,fr2
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr2,@(r0,r14) 	
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8C0DAA6a
mov.w @(loc_8C0DAB02,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
mov.w r3,@(r0,r14) 	
mov.w @(r0,r13),r2
tst r2,r2
bf loc_8C0DAA62
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???	
bra loc_8C0DAA68
fadd fr14,fr3

loc_8C0DAA62:
#data 0xE034
#data 0xF3F0F3D6

loc_8C0DAA68:
#data 0xFE37


loc_8C0DAA6A:
mov.l @(loc_8C0DAB24,pc),r3 ; r3 set to 0x8C042008
mov 0x21,r5 ; r5 set to 0x21
jsr @r3
mov r14,r4
mov.l @(loc_8C0DAB28,pc),r2 ; r2 set to 0x8C034E8c
mov 0x19,r5 ; r5 set to 0x19
mov 0x17,r6 ; r6 set to 0x17
jsr @r2
mov r14,r4
mov.l @(loc_8C0DAB2C,pc),r2 ; r2 set to 0x8C104434
mov 0x01,r3 ; r3 set to 0x01
mov.b r3,@r14
jsr @r2
mov r14,r4
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???	
mov r14,r4
fmov.s @r15+,fr14
fmov.s @r15+,fr15
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0DAA94:
mov 0x60,r1 ; r1 set to 0x60, r1 set to 0x60
add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
fmov.s @(r0,r4),fr2 ; r2 ??? bc r4 is ???	
mov 0x6C,r1 ; r1 set to 0x6C, r1 set to 0x6c
add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s @(r0,r4),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r4),fr3
mov.w @(loc_8C0DAB04,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
fmov.s @(r0,r5),fr2
fcmp/gt fr2,fr3
bt loc_8C0DAACe
mov.b @(0x07,r4),r0 	
mov.l @(loc_8C0DAB30,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
add 0x01,r0 ; r0 set to 0x41D, r0 set to 0x41d
mov.b r0,@(0x07,r4) 	
mov.w @(loc_8C0DAB04,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???, r3 ??? bc r5 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
jmp @r3
fmov.s fr3,@(r0,r4) 	

loc_8C0DAACE:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0DAAD2:
#data 0x2FE6
#data 0xD3164F22
#data 0x6E43430b
#data 0x4011600e
#data 0xE0028903
#data 0xE00080E6
#data 0x80E7

loc_8C0DAAEA:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0DAAF0:
mov r4,r3
mov.l @(loc_8C0DAB34,pc),r1 ; r1 set to 0x8C15D8C8
mov.l r4,@-r15
mov.b @(0x07,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0DAB02:
#data 0x0130

loc_8C0DAB04:
#data 0x041c
#data 0x0000

#align4
loc_8C0DAB08:
#data 0x43200000

#align4
loc_8C0DAB0C:
#data 0xC3200000

#align4
loc_8C0DAB10:
#data 0x42892492

#align4
loc_8C0DAB14:
#data 0x8C26A5A8

#align4
loc_8C0DAB18:
#data 0xC1892492

#align4
loc_8C0DAB1C:
#data 0xBF4DB6Db

#align4
loc_8C0DAB20:
#data bank03.loc_8c03340c

loc_8C0DAB24:
#data bank04.loc_8c042008

loc_8C0DAB28:
#data bank03.loc_8c034e8c

loc_8C0DAB2C:
#data bank10.loc_8c104434

loc_8C0DAB30:
#data bank03.loc_8c034dee

loc_8C0DAB34:
#data 0x8c15D8C8

loc_8C0DAB38:
#data 0x4F222FE6
#data 0x6E437FFc
#data 0xD356F48d
#data 0x2F52E618
#data 0x84E7E519
#data 0x80E77001
#data 0xFE47E05c
#data 0xFE47E068
#data 0xF308C74f
#data 0xFE37E060
#data 0xFE47E06c
#data 0x64E3430b
#data 0x64E365F2
#data 0x4F267F04
#data 0x6EF6

loc_8C0DAB72:
#data 0x2FE6
#data 0xD34A4F22
#data 0x6E43430b
#data 0x02EC9089
#data 0x89022228
#data 0x700184E7
#data 0x80E7

loc_8C0DAB8A:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0DAB90:
#data 0x4F222FE6
#data 0xE1607FFc
#data 0xE0386E43
#data 0x31EC937a
#data 0x2F32335c
#data 0xF318F2E6
#data 0x31ECE16c
#data 0xF230D33d
#data 0xE060FE27
#data 0xF2E6F318
#data 0xFE27F230
#data 0x64E3430b
#data 0x8B0C2008
#data 0xE40063F2
#data 0x00096043
#data 0x84E48033
#data 0x80E47001
#data 0x00096043
#data 0x80E680E7
#data 0x80E5

loc_8C0DABDE:
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0DABE6:
mov r4,r3
mov.l @(loc_8C0DACA8,pc),r1 ; r1 set to 0x8C15D8D4
mov.l r4,@-r15
mov.b @(0x07,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0DABF8:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
fldi0 fr4
mov.l r5,@r15
mov.b @(0x07,r14),r0 	
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov 0x1E,r0 ; r0 set to 0x1e
mov.w r0,@(0x1C,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr4,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @r15,r3
fmov.s @(r0,r14),fr2
fmov.s @(r0,r3),fr3
fcmp/gt fr2,fr3
bt/s loc_8C0DAC34
mov 0x14,r6 ; r6 set to 0x14
mov.w @(loc_8C0DAC96,pc),r0 ; r0 set to 0x130
mov 0x00,r2 ; r2 set to 0x00
bra loc_8C0DAC3a
mov.w r2,@(r0,r14) 	

loc_8C0DAC34:
mov.w @(loc_8C0DAC96,pc),r0 ; r0 set to 0x130
mov 0x01,r1 ; r1 set to 0x01
mov.w r1,@(r0,r14) 	

loc_8C0DAC3A:
mov.l @(loc_8C0DAC9C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
mov 0x19,r5 ; r5 set to 0x19, r5 set to 0x19
jsr @r3
mov r14,r4
mov.l @r15,r5 ; r5 ??? bc r15 is ???, r5 ??? bc r15 is ???	
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r14

loc_8C0DAC4C:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0DACA0,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
mov r4,r14
mov.l r5,@r15
jsr @r3
mov r14,r4
exts.b r0,r0 ; r0 ??	
cmp/pz r0
bt loc_8C0DAC78
mov.l @r15,r5
bsr loc_8C0DAE3c
mov r14,r4
tst r0,r0
bt loc_8C0DAC70
bra loc_8C0DAC72
mov 0x04,r0

loc_8C0DAC70:
#data 0xE003

loc_8C0DAC72:
#data 0x80E6
#data 0x80E7E000


loc_8C0DAC78:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0DAC80:
mov r4,r3
mov.l @(loc_8C0DACAC,pc),r1 ; r1 set to 0x8C15D8Dc
mov.l r4,@-r15
mov.b @(0x07,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x0141
#data 0x02A4

loc_8C0DAC96:
#data 0x0130
#data 0x41892492

#align4
loc_8C0DAC9C:
#data bank03.loc_8c034e8c

loc_8C0DACA0:
#data bank03.loc_8c034dee

loc_8C0DACA4:
#data bank03.loc_8c0334A8

loc_8C0DACA8:
#data 0x8c15D8D4

loc_8C0DACAC:
#data 0x8c15D8Dc


loc_8C0DACB0:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l r5,@r15
mov.b @(0x07,r14),r0 	
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov.w @(loc_8C0DAE04,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bf loc_8C0DACCe
mova @(loc_8C0DAE0C,pc),r0  ; r0 set to 0x8C0DAE0c
bra loc_8C0DACD2
fmov.s @r0,fr3

loc_8C0DACCE:
mova @(loc_8C0DAE10,pc),r0  ; r0 init to 0x8C0DAE10
fmov.s @r0,fr3

loc_8C0DACD2:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
mov.l @(loc_8C0DAE14,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
fmov.s fr3,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fldi0 fr3
mov 0x19,r5 ; r5 set to 0x19, r5 set to 0x19
fmov.s fr3,@(r0,r14) 	
mov 0x15,r6 ; r6 set to 0x15, r6 set to 0x15
jsr @r3
mov r14,r4
mov.l @r15,r5 ; r5 ??? bc r15 is ???, r5 ??? bc r15 is ???	
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r14

loc_8C0DACF0:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov 0x5C,r1 ; r1 set to 0x5C, r1 set to 0x5C, r1 set to 0x5c
mov r4,r14
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
mov.w @(loc_8C0DAE06,pc),r2 ; r2 set to 0x2A4, r2 set to 0x2A4, r2 set to 0x2A4
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34, r0 set to 0x34
mov r5,r3 ; r3 ??? bc r5 is ???, r3 ??? bc r5 is ???	
add r3,r2 ; r2 ??? bc r3 is ???, r2 ??? bc r3 is ???, r2 ??? bc r3 is ???	
mov.l @(loc_8C0DAE18,pc),r3 ; r3 set to 0x8C03340C, r3 set to 0x8C03340C, r3 set to 0x8C03340c
mov 0x00,r13 ; r13 set to 0x00, r13 set to 0x00, r13 set to 0x00
mov.l r5,@r15
mov.l r2,@(0x04,r15) 	
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???, r3 ??? bc r1 is ???	
mov 0x68,r1 ; r1 set to 0x68, r1 set to 0x68, r1 set to 0x68
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C, r0 set to 0x5c
fmov.s @r1,fr3
fmov.s @(r0,r14),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8C0DAD46
mov.l @(0x04,r15),r3
mov r13,r0 ; r0 set to 0x00, r0 set to 0x00, r0 set to 0x00
nop 	
mov.b r0,@(0x03,r3) 	
mov.b @(0x04,r14),r0 	
add 0x01,r0 ; r0 set to 0x01, r0 set to 0x01, r0 set to 0x01
mov.b r0,@(0x04,r14) 	
mov r13,r0 ; r0 set to 0x00, r0 set to 0x00, r0 set to 0x00
nop 	
mov.b r0,@(0x07,r14) 	
mov.b r0,@(0x06,r14) 	
bra loc_8C0DAD68
mov.b r0,@(0x05,r14) 	

loc_8C0DAD46:
#data 0x65F2
#data 0x64E3B078
#data 0x8D052008
#data 0xE00464E3
#data 0x60D380E6
#data 0x80E70009

#align4
loc_8C0DAD5C:
#data 0x4F267F08
#data 0x6DF6D32e
#data 0x6EF6432b


loc_8C0DAD68:
add 0x08,r15
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0DAD72:
mov r4,r3
mov.l @(loc_8C0DAE20,pc),r1 ; r1 set to 0x8C15D8E4
mov.l r4,@-r15
mov.b @(0x07,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0DAD84:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
fldi0 fr4
mov.l @(loc_8C0DAE14,pc),r3 ; r3 set to 0x8C034E8c
mov 0x16,r6 ; r6 set to 0x16
mov.l r5,@r15
mov 0x19,r5 ; r5 set to 0x19
mov.b @(0x07,r14),r0 	
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr4,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
jsr @r3
mov r14,r4
mov.l @r15,r5 ; r5 ??? bc r15 is ???	
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r14

loc_8C0DADBA:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0DAE1C,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
jsr @r3
mov r4,r14
mov.w @(loc_8C0DAE08,pc),r0 ; r0 set to 0x141, r0 set to 0x141
mov.b @(r0,r14),r2
tst r2,r2
bt loc_8C0DADE0
mov.b @(0x07,r14),r0 	
mov r14,r4
mov.l @(loc_8C0DAE24,pc),r3 ; r3 set to 0x8C0DAE6C, r3 set to 0x8C0DAE6c
add 0x01,r0 ; r0 set to 0x142, r0 set to 0x142
mov.b r0,@(0x07,r14) 	
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
lds.l @r15+,pr 	
mov.b @(r0,r14),r5
jmp @r3
mov.l @r15+,r14

loc_8C0DADE0:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0DADE6:
#data 0x2FE6
#data 0xD30C4F22
#data 0x6E43430b
#data 0x4011600e
#data 0xE0018903
#data 0xE00080E6
#data 0x80E7

loc_8C0DADFE:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0DAE04:
#data 0x0130

loc_8C0DAE06:
#data 0x02A4

loc_8C0DAE08:
#data 0x0141
#data 0x0000

#align4
loc_8C0DAE0C:
#data 0xC0555555

#align4
loc_8C0DAE10:
#data 0x40555555

#align4
loc_8C0DAE14:
#data bank03.loc_8c034e8c

loc_8C0DAE18:
#data bank03.loc_8c03340c

loc_8C0DAE1C:
#data bank03.loc_8c034dee

loc_8C0DAE20:
#data 0x8c15D8E4

loc_8C0DAE24:
#data loc_8c0dAE6c


loc_8C0DAE28:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0DAE5E,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0DAE36:
mov.l @(loc_8C0DAE60,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0DAE3C:
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r4),fr4
fmov.s @(r0,r5),fr3
mova @(loc_8C0DAE64,pc),r0  ; r0 set to 0x8C0DAE64
fsub fr3,fr4
fmov.s @r0,fr3
fcmp/gt fr4,fr3
bt loc_8C0DAE58
mova @(loc_8C0DAE68,pc),r0  ; r0 set to 0x8C0DAE68
fmov.s @r0,fr2
fcmp/gt fr2,fr4
bt loc_8C0DAE58
rts 	
mov 0x01,r0
;-------------------------------------------------------------------------------

loc_8C0DAE58:
mov 0x00,r0 ; r0 set to 0x00
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0DAE5E:
#data 0x012c

#align4
loc_8C0DAE60:
#data bank04.loc_8c0450C0

loc_8C0DAE64:
#data 0xC3200000

#align4
loc_8C0DAE68:
#data 0x43200000

#align4
loc_8C0DAE6C:
#data 0x7FF84F22
#data 0x60532F42
#data 0xD34B0009
#data 0x80F4E503
#data 0x430BE600
#data 0x20086463
#data 0x64038D0b
#data 0xE120D347
#data 0x1434314c
#data 0x210084F4
#data 0x523663F2
#data 0x63F21426
#data 0x1435

loc_8C0DAE9E:
#data 0x7F08
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0DAEA6:
#data 0x4F22
#data 0x2F427FF8
#data 0x00096053
#data 0xE503D33c
#data 0xE60280F4
#data 0x64F2430b
#data 0x8D082008
#data 0xD3396403
#data 0x314CE120
#data 0x84F41434
#data 0x63F22100
#data 0x1436

loc_8C0DAED2:
#data 0x7F08
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0DAEDA:
mov 0x20,r0 ; r0 set to 0x20
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(loc_8C0DAFAC,pc),r0 ; r0 set to 0x8C15D8F8
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

loc_8C0DAEEE:
mov r4,r3
mov.l @(loc_8C0DAFB0,pc),r1 ; r1 set to 0x8C15D90c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0DAF00:
mov.l r14,@-r15
mov r4,r14
mov.l @(loc_8C0DAFB4,pc),r3 ; r3 set to 0xC054
mov.w @(loc_8C0DAF9C,pc),r1 ; r1 set to 0xDc
mov.w @(loc_8C0DAF9C,pc),r2 ; r2 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov 0x26,r0 ; r0 set to 0x26
mov.w r3,@(r0,r14) 	
mov.w @(loc_8C0DAF9A,pc),r0 ; r0 set to 0x12c
mov.l @(loc_8C0DAFB8,pc),r3 ; r3 set to 0x8C129560
mov.w r0,@(0x1C,r14) 	
mov.l @(0x18,r14),r4
add r4,r2 ; r2 ??? bc r4 is ???	
jsr @r3
add 0x94,r0 ; r0 set to 0xC0
mov.w @(loc_8C0DAF9A,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0DAF9E,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0DAFBC,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x09,r3 ; r3 set to 0x09
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov 0x0C,r5 ; r5 set to 0x0c
mov.b r3,@(r0,r14) 	
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8C0DAFA0,pc),r0 ; r0 set to 0x13c
mov.b r5,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x13d
mov.b r5,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x13e
mov.b r5,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x13f
mov.b r5,@(r0,r14) 	
add 0xF1,r0 ; r0 set to 0x130
mov.w r3,@(r0,r14) 	
mov.l @(0x14,r14),r5 ; r5 ??? bc r14 is ???	
mov.w @(r0,r5),r3 ; r3 ??? bc r5 is ???	
tst r3,r3
bf loc_8C0DAFC8
mova @(loc_8C0DAFC0,pc),r0  ; r0 set to 0x8C0DAFC0
fmov.s @r0,fr3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0DAFC4,pc),r0  ; r0 set to 0x8C0DAFC4
bra loc_8C0DAFD8
fmov.s @r0,fr2

loc_8C0DAF9A:
#data 0x012c

loc_8C0DAF9C:
#data 0x00Dc

loc_8C0DAF9E:
#data 0x01A3

loc_8C0DAFA0:
#data 0x013c
#data 0x0000

#align4
loc_8C0DAFA4:
#data bank04.loc_8c044F12

loc_8C0DAFA8:
#data loc_8c0dAEDa

loc_8C0DAFAC:
#data 0x8c15D8F8

loc_8C0DAFB0:
#data 0x8c15D90c

loc_8C0DAFB4:
#data 0x0000C054

#align4
loc_8C0DAFB8:
#data bank12.loc_8c129560

loc_8C0DAFBC:
#data bank12.loc_8c1294C8

loc_8C0DAFC0:
#data 0xC0555555

#align4
loc_8C0DAFC4:
#data 0xC0200000


loc_8C0DAFC8:
mova @(loc_8C0DB0E8,pc),r0  ; r0 init to 0x8C0DB0E8
fmov.s @r0,fr3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0DB0EC,pc),r0  ; r0 set to 0x8C0DB0Ec
fmov.s @r0,fr2

loc_8C0DAFD8:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fldi0 fr3
fmov.s fr2,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0DB0F0,pc),r0  ; r0 set to 0x8C0DB0F0, r0 set to 0x8C0DB0F0
fmov.s @r0,fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r5),fr2
mov.l @(loc_8C0DB0FC,pc),r5 ; r5 set to 0x8C15D8F0, r5 set to 0x8C15D8F0
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0DB0F4,pc),r0  ; r0 set to 0x8C0DB0F4, r0 set to 0x8C0DB0F4
fmov.s @r0,fr2
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0DB0F8,pc),r0  ; r0 set to 0x8C0DB0F8, r0 set to 0x8C0DB0F8
fmov.s @r0,fr2
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr2,@(r0,r14) 	
mov.b @(0x01,r4),r0 	
extu.b r0,r0 ; r0 set to 0x6C, r0 set to 0x6c
cmp/eq 0x1C,r0 	
bf loc_8C0DB018
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
mov.b @(r0,r14),r2
mov.w @(loc_8C0DB0DE,pc),r0 ; r0 set to 0x158, r0 set to 0x158
extu.b r2,r2
add r2,r5 ; r5 ??? bc r2 is ???, r5 ??? bc r2 is ???	
mov.b @r5,r3
bra loc_8C0DB028
mov.b r3,@(r0,r14) 	

loc_8C0DB018:
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r1
extu.b r1,r1
add r1,r5
mov.w @(loc_8C0DB0DE,pc),r1 ; r1 set to 0x158
mov.b @(0x03,r5),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.b r0,@r1

loc_8C0DB028:
mov.w @(loc_8C0DB0DE,pc),r0 ; r0 set to 0x158, r0 set to 0x158
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
mov.l @(loc_8C0DB100,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
mov.b @(r0,r14),r6
jsr @r3
mov r14,r4
mov 0x03,r5 ; r5 set to 0x03, r5 set to 0x03
bsr loc_8C0DAEA6
mov r14,r4
mov 0x04,r5 ; r5 set to 0x04, r5 set to 0x04
bsr loc_8C0DAEA6
mov r14,r4
lds.l @r15+,pr 	
mov r14,r4
mov.l @r15+,r14

loc_8C0DB046:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.w @(0x1C,r14),r0 	
mov 0x02,r6 ; r6 set to 0x02, r6 set to 0x02, r6 set to 0x02
mov.l @(0x18,r14),r4
add 0xFF,r0 ; r0 set to 0x157, r0 set to 0x157
mov.w r0,@(0x1C,r14) 	
exts.w r0,r0 ; r0 ??, r0 ??	
tst r0,r0
bf/s loc_8C0DB066
mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00, r5 set to 0x00
mov r6,r0 ; r0 set to 0x02, r0 set to 0x02, r0 set to 0x02
nop 	
bra loc_8C0DB08e
mov.b r0,@(0x04,r14) 	

loc_8C0DB066:
#data 0x85Ee
#data 0x3037E33c
#data 0x84E18B14
#data 0x84416203
#data 0x8B043200
#data 0xE2028444
#data 0x3023600c
#data 0x8B0a

loc_8C0DB082:
#data 0x6063
#data 0x80E40009
#data 0x00096053
#data 0x80E5


loc_8C0DB08E:
mov.w @(loc_8C0DB0E0,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0DB098:
#data 0xE61485Ee
#data 0x8B313067
#data 0x004C901f
#data 0x8815600c
#data 0x901B8B2c
#data 0x605C054c
#data 0x8D0C8807
#data 0x60536503
#data 0x88040009
#data 0x60538907
#data 0x88050009
#data 0x60538903
#data 0x880D0009
#data 0x8B1a

loc_8C0DB0CE:
#data 0xE005
#data 0x606380E5
#data 0x81EE0009
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0DB0DE:
#data 0x0158

loc_8C0DB0E0:
#data 0x012c
#data 0x01D0
#data 0x000001E9

#align4
loc_8C0DB0E8:
#data 0x40555555

#align4
loc_8C0DB0EC:
#data 0x40200000

#align4
loc_8C0DB0F0:
#data 0x42676DB6

#align4
loc_8C0DB0F4:
#data 0x414DB6Db

#align4
loc_8C0DB0F8:
#data 0xBF092492

#align4
loc_8C0DB0FC:
#data 0x8c15D8F0

loc_8C0DB100:
#data bank03.loc_8c034C38

loc_8C0DB104:
#data 0xD14A84E5
#data 0x4008600c
#data 0x430B031e
#data 0x4F2664E3
#data 0x64E3D347
#data 0x6EF6432b
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0DB122:
#data 0x8445
#data 0x7001E301
#data 0x907F8045
#data 0x0434

loc_8C0DB12E:
#data 0xE15c
#data 0xE034314c
#data 0xF246F318
#data 0x314CE168
#data 0xF427F230
#data 0xF246E05c
#data 0xE160F318
#data 0xF230314c
#data 0xE038F427
#data 0xF318F246
#data 0x314CE16c
#data 0xF427F230
#data 0xF246E060
#data 0xF230F318
#data 0xF235F38d
#data 0xF4278D03
#data 0x70018445
#data 0x8045

loc_8C0DB172:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0DB176:
#data 0xE15c
#data 0x314C5546
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
#data 0xF427F230
#data 0xF408C721
#data 0xF356903b
#data 0xF246E038
#data 0xF235F340
#data 0x84458907
#data 0x80457001
#data 0xF3569031
#data 0xF340E038
#data 0xF437

loc_8C0DB1D2:
#data 0xA12b
#data 0x0009

loc_8C0DB1D6:
#data 0x854e
#data 0x3037E33c
#data 0x84458902
#data 0x80457001

#align4
loc_8C0DB1E4:
#data 0x0009A122

#align4
loc_8C0DB1E8:
#data 0xE314854e
#data 0x89023037
#data 0x70018445
#data 0x8045

loc_8C0DB1F6:
#data 0x854e
#data 0x8903C803
#data 0xE2019016
#data 0x0424A003

#align4
loc_8C0DB204:
#data 0xE1009012
#data 0x0414

loc_8C0DB20A:
#data 0xA10f
#data 0x0009


loc_8C0DB20E:
mov.w @(loc_8C0DB22C,pc),r1 ; r1 set to 0x12c
mov.w @(0x1C,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
and 0x01,r0 	
bra loc_8C0DB42c
mov.b r0,@r1

loc_8C0DB21A:
mov r4,r3
mov.l @(loc_8C0DB23C,pc),r1 ; r1 set to 0x8C15D934
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0DB22C:
#data 0x012c
#data 0x041c

#align4
loc_8C0DB230:
#data 0x8c15D91c

loc_8C0DB234:
#data bank03.loc_8c034D8c
#data 0x41AB6DB6

#align4
loc_8C0DB23C:
#data 0x8c15D934


loc_8C0DB240:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0DB3A4,pc),r3 ; r3 set to 0x1C05
mov.w @(loc_8C0DB3A6,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0DB3A6,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov 0x26,r0 ; r0 set to 0x26
mov.w r3,@(r0,r14) 	
mov.w @(loc_8C0DB3A8,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r14),r4
mov.l @(loc_8C0DB3B0,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C0DB3AA,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0DB3AC,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0DB3B4,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov 0x1B,r5 ; r5 set to 0x1b
mov 0x08,r6 ; r6 set to 0x08
mov.b r2,@(r0,r14) 	
mov 0xFF,r2 ; r2 set to 0xFFFFFFFf
mov.b @(r0,r4),r3 ; r3 ??? bc r4 is ???	
mov.b r3,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.l @(loc_8C0DB3B8,pc),r3 ; r3 set to 0x8C034C38
mov.b r2,@(r0,r14) 	
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r14,r4
mov.l @r15+,r14

loc_8C0DB2BC:
sts.l pr,@-r15
mov.l @(0x18,r4),r5 ; r5 ??? bc r4 is ???	
mov 0x02,r6 ; r6 set to 0x02, r6 set to 0x02
mov.b @(0x04,r5),r0 	
extu.b r0,r0 ; r0 set to 0x31
cmp/ge r6,r0
bf loc_8C0DB2Da
mov r6,r0 ; r0 set to 0x02, r0 set to 0x02
nop 	
mov.b r0,@(0x04,r4) 	
mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
lds.l @r15+,pr 	
mov.w @(loc_8C0DB3AA,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0DB2DA:
mov r5,r2
mov.l @(loc_8C0DB3B4,pc),r3 ; r3 set to 0x8C1294C8
mov r4,r1
add 0x34,r2
add 0x34,r1
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.w @(loc_8C0DB3AA,pc),r0 ; r0 set to 0x12c
mov.l @(loc_8C0DB3BC,pc),r3 ; r3 set to 0x8C034D8c
mov.b @(r0,r5),r2
mov.b r2,@(r0,r4) 	
jmp @r3
lds.l @r15+,pr 	
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0DB2FA:
mov r4,r3
mov.l @(loc_8C0DB3C0,pc),r1 ; r1 set to 0x8C15D944
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0DB30C:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0DB3A4,pc),r3 ; r3 set to 0x1C05
mov.w @(loc_8C0DB3A6,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0DB3A6,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov 0x26,r0 ; r0 set to 0x26
mov.w r3,@(r0,r14) 	
mov.w @(loc_8C0DB3A8,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r14),r4
mov.l @(loc_8C0DB3B0,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C0DB3AA,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0DB3AC,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0DB3B4,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov 0x09,r6 ; r6 set to 0x09
mov.b r2,@(r0,r14) 	
mov.b @(r0,r4),r3 ; r3 ??? bc r4 is ???	
mov.b r3,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.l @(loc_8C0DB3B8,pc),r3 ; r3 set to 0x8C034C38
mov.b r5,@(r0,r14) 	
mov 0x1B,r5 ; r5 set to 0x1b
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r14,r4
mov.l @r15+,r14

loc_8C0DB386:
sts.l pr,@-r15
mov.l @(0x18,r4),r5 ; r5 ??? bc r4 is ???	
mov 0x02,r6 ; r6 set to 0x02, r6 set to 0x02
mov.b @(0x04,r5),r0 	
extu.b r0,r0 ; r0 set to 0x31
cmp/ge r6,r0
bf loc_8C0DB3C4
mov r6,r0 ; r0 set to 0x02, r0 set to 0x02
nop 	
mov.b r0,@(0x04,r4) 	
mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
lds.l @r15+,pr 	
mov.w @(loc_8C0DB3AA,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0DB3A4:
#data 0x1C05

loc_8C0DB3A6:
#data 0x00Dc

loc_8C0DB3A8:
#data 0x00C0

loc_8C0DB3AA:
#data 0x012c

loc_8C0DB3AC:
#data 0x01A3
#data 0x0000

#align4
loc_8C0DB3B0:
#data bank12.loc_8c129560

loc_8C0DB3B4:
#data bank12.loc_8c1294C8

loc_8C0DB3B8:
#data bank03.loc_8c034C38

loc_8C0DB3BC:
#data bank03.loc_8c034D8c

loc_8C0DB3C0:
#data 0x8c15D944


loc_8C0DB3C4:
mov r5,r2
mov.l @(loc_8C0DB4BC,pc),r3 ; r3 set to 0x8C1294C8
mov r4,r1
add 0x34,r2
add 0x34,r1
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.w @(loc_8C0DB4B0,pc),r0 ; r0 set to 0x12c
mov.b @(r0,r5),r2
mov.b r2,@(r0,r4) 	
lds.l @r15+,pr 	
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0DB3DE:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0DB4B0,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0DB3EC:
mov.l @(loc_8C0DB4C0,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0DB3F2:
#data 0x2FE6
#data 0xE0026E43
#data 0x915B945b
#data 0x4F22345c
#data 0xE02080E4
#data 0x31EC03Ec
#data 0x84522430
#data 0xD32DE52a
#data 0x2102600c
#data 0x64E3430b
#data 0xD32CE020
#data 0x64E305Ec
#data 0x4F26D029
#data 0x055C655c
#data 0x6EF6432b

#align4
loc_8C0DB42C:
#data 0x2FD62FE6
#data 0x943E6D43
#data 0x5ED64F22
#data 0x844834Ec
#data 0x8B0E2008
#data 0x00EC9039
#data 0x8815600c
#data 0x90358B04
#data 0x600C00Ec
#data 0x89048806

#align4
loc_8C0DB454:
#data 0xB03B65E3
#data 0x200864D3
#data 0x8B1e

loc_8C0DB45E:
#data 0x902c
#data 0x84E10EEe
#data 0x881C600c
#data 0x64038D04
#data 0x00096043
#data 0x8B19881d

#align4
loc_8C0DB474:
#data 0x34EC941d
#data 0x20088448
#data 0x901A8B14
#data 0x600C00Ec
#data 0x8B048815
#data 0x00EC9016
#data 0x8806600c
#data 0x890a

loc_8C0DB492:
#data 0x65E3
#data 0x64D3B01c
#data 0x89052008

#align4
loc_8C0DB49C:
#data 0x64D34F26
#data 0x6DF665E3
#data 0x6EF6AFA5

#align4
loc_8C0DB4A8:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0DB4B0:
#data 0x012c
#data 0x02A4
#data 0x01D000Cc
#data 0x020C01E9

#align4
loc_8C0DB4BC:
#data bank12.loc_8c1294C8

loc_8C0DB4C0:
#data bank04.loc_8c0450C0

loc_8C0DB4C4:
#data bank04.loc_8c04223a

loc_8C0DB4C8:
#data 0x8c15D954

loc_8C0DB4CC:
#data loc_8c0d8840

loc_8C0DB4D0:
#data 0x065E904b
#data 0x660D8566
#data 0x46089048
#data 0x4600035e
#data 0x363CC723
#data 0x6361F608
#data 0xF446E034
#data 0x903E435a
#data 0x035DF32d
#data 0xF53C2338
#data 0xF5628D01
#data 0xF54d

loc_8C0DB4FE:
#data 0xE034
#data 0xF530F356
#data 0xF451F38d
#data 0x8F01F345
#data 0xF44D8561

#align4
loc_8C0DB510:
#data 0x435A6303
#data 0xF53CF32d
#data 0xF38DF562
#data 0x8921F534
#data 0x8B1FF545
#data 0xF446E038
#data 0xF508C712
#data 0x63038562
#data 0xE038435a
#data 0xF63CF32d
#data 0xF356F652
#data 0xF630F64d
#data 0xF461F38d
#data 0x8F01F345
#data 0xF44D8563

#align4
loc_8C0DB54C:
#data 0x435A6303
#data 0xF63CF32d
#data 0xF38DF652
#data 0x8903F634
#data 0x8B01F645
#data 0xE001000b
;-------------------------------------------------------------------------------

#align4
loc_8C0DB564:
#data 0x000BE000
#data 0x01C00009
#data 0x01300170
#data 0x3FD55555
#data 0x40092492


loc_8C0DB578:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
bsr loc_8C0DB600
mov 0x03,r5 ; r5 set to 0x03
mov 0x07,r5 ; r5 set to 0x07
bsr loc_8C0DB600
mov r14,r4
mov 0x0B,r5 ; r5 set to 0x0b
bsr loc_8C0DB600
mov r14,r4
mov 0x0F,r5 ; r5 set to 0x0f
bsr loc_8C0DB600
mov r14,r4
mov 0x01,r5 ; r5 set to 0x01
bsr loc_8C0DB600
mov r14,r4
mov 0x05,r5 ; r5 set to 0x05
bsr loc_8C0DB600
mov r14,r4
mov 0x09,r5 ; r5 set to 0x09
bsr loc_8C0DB600
mov r14,r4
mov 0x0D,r5 ; r5 set to 0x0d
bsr loc_8C0DB600
mov r14,r4
mov 0x02,r5 ; r5 set to 0x02
bsr loc_8C0DB600
mov r14,r4
mov 0x06,r5 ; r5 set to 0x06
bsr loc_8C0DB600
mov r14,r4
mov 0x0A,r5 ; r5 set to 0x0a
bsr loc_8C0DB600
mov r14,r4
mov 0x0E,r5 ; r5 set to 0x0e
bsr loc_8C0DB600
mov r14,r4
mov 0x00,r5 ; r5 set to 0x00
bsr loc_8C0DB600
mov r14,r4
mov 0x04,r5 ; r5 set to 0x04
bsr loc_8C0DB600
mov r14,r4
mov 0x08,r5 ; r5 set to 0x08
bsr loc_8C0DB600
mov r14,r4
mov 0x0C,r5 ; r5 set to 0x0c
bsr loc_8C0DB600
mov r14,r4
mov.l @(loc_8C0DB688,pc),r3 ; r3 set to 0x8C042008
mov 0x20,r5 ; r5 set to 0x20
jsr @r3
mov r14,r4
mov 0x25,r0 ; r0 set to 0x25
mov.l @(loc_8C0DB68C,pc),r2 ; r2 set to 0x8C03544c
mov.b @(r0,r14),r6
mov 0x57,r3 ; r3 set to 0x57
lds.l @r15+,pr 	
extu.b r6,r6
mov r14,r4
mulu.w r3,r6
mov 0x01,r7 ; r7 set to 0x01
mov 0x02,r5 ; r5 set to 0x02
sts macl,r6
add 0x01,r6
jmp @r2
mov.l @r15+,r14

loc_8C0DB600:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.b r5,@r15
mov 0x03,r5 ; r5 set to 0x03
mov.l @(loc_8C0DB690,pc),r3 ; r3 set to 0x8C044F12
mov r4,r13
mov 0x00,r6 ; r6 set to 0x00
jsr @r3
mov r6,r4 ; r4 set to 0x00
tst r0,r0
bt/s loc_8C0DB662
mov r0,r14
mov 0x20,r0 ; r0 set to 0x20
mov.l @(loc_8C0DB694,pc),r3 ; r3 set to 0x8C0DB670
mov 0x22,r1 ; r1 set to 0x22
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l r3,@(0x10,r14) 	
mov.l r13,@(0x18,r14) 	
mov.b @r15,r2
mov.b r2,@(r0,r14) 	
mov.b @r15,r0 ; r0 ??? bc r15 is ???	
mov.w @(loc_8C0DB684,pc),r2 ; r2 set to 0x1305
extu.b r0,r0
shll r0
and 0x1F,r0 	
mov.b r0,@r1
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0DB682,pc),r0 ; r0 set to 0x158
mov.w @(r0,r13),r3
extu.w r3,r3
cmp/eq r2,r3
bf loc_8C0DB64e
mova @(loc_8C0DB698,pc),r0  ; r0 set to 0x8C0DB698
bra loc_8C0DB652
fmov.s @r0,fr3

loc_8C0DB64E:
#data 0xC713
#data 0xF308

loc_8C0DB652:
#data 0xE038
#data 0xF2D6D312
#data 0xF2309515
#data 0x430BFE27
#data 0x64E3


loc_8C0DB662:
mov r14,r0
nop 	
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0DB670:
mov r4,r3
mov.l @(loc_8C0DB6A4,pc),r1 ; r1 set to 0x8C15D958
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0DB682:
#data 0x0158

loc_8C0DB684:
#data 0x1305
#data 0x0320

#align4
loc_8C0DB688:
#data bank04.loc_8c042008

loc_8C0DB68C:
#data bank03.loc_8c03544c

loc_8C0DB690:
#data bank04.loc_8c044F12

loc_8C0DB694:
#data loc_8c0dB670

loc_8C0DB698:
#data 0x42B40000
#data 0x41892492

#align4
loc_8C0DB6A0:
#data bank03.loc_8c033718

loc_8C0DB6A4:
#data 0x8c15D958


loc_8C0DB6A8:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0DB7E4,pc),r3 ; r3 set to 0x1C06
mov.w @(loc_8C0DB7E6,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0DB7E6,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov 0x26,r0 ; r0 set to 0x26
mov.w r3,@(r0,r14) 	
mov.w @(loc_8C0DB7E8,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r14),r4
mov.l @(loc_8C0DB7F4,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C0DB7EA,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0DB7EC,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0DB7F8,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
fldi0 fr4
mov.b @(r0,r4),r2
mov 0x20,r4 ; r4 set to 0x20
mov 0x00,r3 ; r3 set to 0x00
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0DB7EE,pc),r0 ; r0 set to 0x13c
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x13d
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x13e
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x13f
mov.b r4,@(r0,r14) 	
mov 0x78,r0 ; r0 set to 0x78
mov.w r0,@(0x1C,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
mov r4,r0 ; r0 set to 0x20
nop 	
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
extu.b r3,r3
tst r5,r3
bt/s loc_8C0DB742
mov r14,r4 ; r4 ??? bc r14 is ???	
bra loc_8C0DB744
mov 0x64,r5

loc_8C0DB742:
#data 0x9555

#align4
loc_8C0DB744:
#data 0x430BD32d
#data 0xD22D0009
#data 0xE610E51b
#data 0x64E3420b
#data 0x64E34F26
#data 0x6EF6

loc_8C0DB75A:
#data 0x2FE6
#data 0x4F226E43
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x89042008
#data 0x420BD225
#data 0x200864E3
#data 0x8B08

loc_8C0DB776:
#data 0x84E4
#data 0x7001E300
#data 0x903480E4
#data 0x4F260E34
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0DB788:
#data 0xD31FE15c
#data 0x64E331Ec
#data 0xF318E034
#data 0xE168F2E6
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
#data 0x432B4F26
#data 0x4F266EF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0DB7D0:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0DB7EA,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0DB7DE:
mov.l @(loc_8C0DB80C,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0DB7E4:
#data 0x1C06

loc_8C0DB7E6:
#data 0x00Dc

loc_8C0DB7E8:
#data 0x00C0

loc_8C0DB7EA:
#data 0x012c

loc_8C0DB7EC:
#data 0x01A3

loc_8C0DB7EE:
#data 0x013c
#data 0x000000C8

#align4
loc_8C0DB7F4:
#data bank12.loc_8c129560

loc_8C0DB7F8:
#data bank12.loc_8c1294C8

loc_8C0DB7FC:
#data bank03.loc_8c033674

loc_8C0DB800:
#data bank03.loc_8c034C38

loc_8C0DB804:
#data bank03.loc_8c0332E0

loc_8C0DB808:
#data bank03.loc_8c034D8c

loc_8C0DB80C:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0xE600D34a
#data 0x2F501F41
#data 0x430BE503
#data 0x20086463
#data 0x64038D07
#data 0xE020D346
#data 0x52F11434
#data 0x63F01426
#data 0x7F080434
#data 0x000B4F26
#data 0x4F226043
#data 0xD33F7FF8
#data 0x1F41E600
#data 0xE5042F50
#data 0x6463430b
#data 0x8D072008
#data 0xD33B6403
#data 0x1434E020
#data 0x142652F1
#data 0x043463F0
#data 0x4F267F08
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0DB86C:
mov r4,r3
mov.l @(loc_8C0DB948,pc),r1 ; r1 set to 0x8C15D998
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0DB87E:
mov.w @(loc_8C0DB930,pc),r3 ; r3 set to 0x1C07
mov.w @(loc_8C0DB932,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.w @(loc_8C0DB932,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(0x18,r4),r5
mov.b r0,@(0x04,r4) 	
mov 0x26,r0 ; r0 set to 0x26
mov.w r3,@(r0,r4) 	
mov.w @(loc_8C0DB934,pc),r0 ; r0 set to 0xC0
mov.l @(loc_8C0DB94C,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0DB936,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0DB938,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0DB950,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x07,r3 ; r3 set to 0x07
mov.b r2,@(r0,r4) 	
mov.w @(loc_8C0DB936,pc),r0 ; r0 set to 0x12c
mov.b r6,@r4
mov.b r6,@(r0,r4) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r4) 	
lds.l @r15+,pr 	

loc_8C0DB8EA:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
mov.l @(loc_8C0DB954,pc),r0 ; r0 set to 0x8C15D9A8, r0 set to 0x8C15D9A8
extu.b r3,r3
mov.l @(0x18,r14),r5
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

#align4
loc_8C0DB900:
#data 0x84552F46
#data 0x20089419
#data 0x345C8F05
#data 0x005C9016
#data 0x881D600c
#data 0x8903

loc_8C0DB916:
#data 0xE000
#data 0xE001804b
#data 0x804a

loc_8C0DB91E:
#data 0x63F2
#data 0x8437D10d
#data 0x600C64F2
#data 0x031E4008
#data 0x7F04432b

loc_8C0DB930:
#data 0x1C07

loc_8C0DB932:
#data 0x00Dc

loc_8C0DB934:
#data 0x00C0

loc_8C0DB936:
#data 0x012c

loc_8C0DB938:
#data 0x01A3
#data 0x02A4
#data 0x000001D0

#align4
loc_8C0DB940:
#data bank04.loc_8c044F12

loc_8C0DB944:
#data loc_8c0dB86c

loc_8C0DB948:
#data 0x8c15D998

loc_8C0DB94C:
#data bank12.loc_8c129560

loc_8C0DB950:
#data bank12.loc_8c1294C8

loc_8C0DB954:
#data 0x8c15D9A8

loc_8C0DB958:
#data 0x8c15D9E0


loc_8C0DB95C:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov 0x10,r4 ; r4 set to 0x10
mov.l r5,@r15
mov.b @(0x07,r14),r0 	
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov.w @(loc_8C0DBA7C,pc),r0 ; r0 set to 0x13c
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x13d
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x13e
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x13f
mov.b r4,@(r0,r14) 	
mov r4,r0 ; r0 set to 0x10
nop 	
mov.w r0,@(0x1C,r14) 	
mov.w @(loc_8C0DBA7E,pc),r0 ; r0 set to 0x130
mov.l @r15,r3
mov.l @(loc_8C0DBA88,pc),r4 ; r4 set to 0x8C26A518
mov.w @(r0,r3),r2
tst r2,r2
bf/s loc_8C0DB9A6
mov.w r2,@(r0,r14) 	
mova @(loc_8C0DBA8C,pc),r0  ; r0 set to 0x8C0DBA8c
fmov.s @r0,fr3
mov.w @(loc_8C0DBA80,pc),r0 ; r0 set to 0x8c
fmov.s @(r0,r4),fr2
mov 0x34,r0 ; r0 set to 0x34
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0DBA90,pc),r0  ; r0 set to 0x8C0DBA90
bra loc_8C0DB9B8
fmov.s @r0,fr2

loc_8C0DB9A6:
#data 0xC73b
#data 0x906AF308
#data 0xE034F246
#data 0xFE27F230
#data 0xF208C738

#align4
loc_8C0DB9B8:
#data 0xF48DE05c
#data 0xC737FE27
#data 0xE519F308
#data 0xE613905e
#data 0xF246D335
#data 0xF230E038
#data 0xE068FE27
#data 0xE060FE47
#data 0xE06CFE47
#data 0x430BFE47
#data 0xD33064E3
#data 0x2E20E201
#data 0x64E3430b
#data 0x64E365F2
#data 0x4F267F04
#data 0x6EF6

loc_8C0DB9F6:
#data 0xE15c
#data 0xE034314c
#data 0xF246F318
#data 0x314CE168
#data 0xF427F230
#data 0xF246E05c
#data 0xE160F318
#data 0xF230314c
#data 0xE038F427
#data 0xF318F246
#data 0x314CE16c
#data 0xF427F230
#data 0xF246E060
#data 0xF230F318
#data 0x854EF427
#data 0x814E70Ff
#data 0x2008600f
#data 0x84478B04
#data 0x80477001
#data 0x814EE020

#align4
loc_8C0DBA44:
#data 0x432BD318
#data 0x0009

loc_8C0DBA4A:
#data 0x8452
#data 0xD217E601
#data 0x600C6163
#data 0x206A6320
#data 0x633C410c
#data 0x8B0B2318
#data 0x70FF854e
#data 0x600F814e
#data 0x8B022008
#data 0x70018447
#data 0x8047

loc_8C0DBA72:
#data 0xD30d
#data 0x0009432b

#align4
loc_8C0DBA78:
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0DBA7C:
#data 0x013c

loc_8C0DBA7E:
#data 0x0130

loc_8C0DBA80:
#data 0x008c
#data 0x0088
#data 0x00000090

#align4
loc_8C0DBA88:
#data 0x8C26A518

#align4
loc_8C0DBA8C:
#data 0x42A00000

#align4
loc_8C0DBA90:
#data 0xC0D55555
#data 0xC2A00000
#data 0x40D55555
#data 0xC34DB6Db

#align4
loc_8C0DBAA0:
#data bank03.loc_8c034e8c

loc_8C0DBAA4:
#data bank10.loc_8c104434

loc_8C0DBAA8:
#data bank03.loc_8c034dee
#data 0x8C2895F6


loc_8C0DBAB0:
mov.w @(loc_8C0DBBAE,pc),r6 ; r6 set to 0x2A4
add r5,r6 ; r6 ??? bc r5 is ???	
mov.b @(0x0B,r6),r0 	
tst r0,r0
bf loc_8C0DBAF0
mov 0x05,r0 ; r0 set to 0x05
mov.b r0,@(0x07,r4) 	
mov 0x01,r5 ; r5 set to 0x01
mov.w @(loc_8C0DBBB0,pc),r0 ; r0 set to 0x12c
mov.b r5,@r4
mov.b r5,@(r0,r4) 	
add 0x04,r0 ; r0 set to 0x130
mov.w @(r0,r4),r3
tst r3,r3
bf loc_8C0DBAD4
mova @(loc_8C0DBBB4,pc),r0  ; r0 set to 0x8C0DBBB4
bra loc_8C0DBAD8
fmov.s @r0,fr3

loc_8C0DBAD4:
mova @(loc_8C0DBBB8,pc),r0  ; r0 init to 0x8C0DBBB8
fmov.s @r0,fr3

loc_8C0DBAD8:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fldi0 fr4
fmov.s fr3,@(r0,r4) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r4) 	
mova @(loc_8C0DBBBC,pc),r0  ; r0 set to 0x8C0DBBBC, r0 set to 0x8C0DBBBc
fmov.s @r0,fr3
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr3,@(r0,r4) 	
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
bra loc_8C0DBB42
fmov.s fr4,@(r0,r4) 	

loc_8C0DBAF0:
mov.b @(0x0A,r6),r0 	
tst r0,r0
bf loc_8C0DBB06
mov.b @(0x07,r4),r0 	
mov 0x00,r5 ; r5 set to 0x00
add 0x01,r0
mov.b r0,@(0x07,r4) 	
mov.w @(loc_8C0DBBB0,pc),r0 ; r0 set to 0x12c
mov.b r5,@r4
rts 	
mov.b r5,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0DBB06:
mova @(loc_8C0DBBC0,pc),r0  ; r0 init to 0x8C0DBBC0
mov.l @(loc_8C0DBBC4,pc),r2 ; r2 set to 0x42AB6DB6
fmov.s @r0,fr4
mov 0x34,r0 ; r0 set to 0x34
mov r0,r1 ; r1 set to 0x34
add r4,r1 ; r1 ??? bc r4 is ???	
fmov.s @r1,fr3
mov r0,r1 ; r1 set to 0x34
add r5,r1 ; r1 ??? bc r5 is ???	
lds r2,fpul 	
fmov.s @r1,fr2 ; r2 ??? bc r1 is ???	
fsub fr3,fr2
fmov.s @(r0,r4),fr3
fdiv fr4,fr2
fadd fr2,fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
mov r0,r1 ; r1 set to 0x38
add r4,r1 ; r1 ??? bc r4 is ???	
fmov.s @r1,fr3
mov r0,r1 ; r1 set to 0x38
add r5,r1 ; r1 ??? bc r5 is ???	
fmov.s @(r0,r4),fr1
fmov.s @r1,fr2
fsub fr3,fr2
fsts fpul,fr3
fadd fr3,fr2
fdiv fr4,fr2
fadd fr2,fr1
fmov.s fr1,@(r0,r4) 	

loc_8C0DBB42:
mov.l @(loc_8C0DBBC8,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
jmp @r3
nop 	
#data 0x0009000b
;-------------------------------------------------------------------------------

#align4
loc_8C0DBB4C:
#data 0x365C962f
#data 0x2008846b
#data 0x846A8902
#data 0x89252008

#align4
loc_8C0DBB5C:
#data 0x035D9029
#data 0xE0340435
#data 0xF437F356
#data 0xF308C716
#data 0xF256E038
#data 0xF230E501
#data 0xE005F427
#data 0x90198047
#data 0x04542450
#data 0x034D7004
#data 0x8B022338
#data 0xA002C70a
#data 0xF208

loc_8C0DBB8E:
#data 0xC70a
#data 0xF208

loc_8C0DBB92:
#data 0xE05c
#data 0xF427F48d
#data 0xF447E068
#data 0xF308C707
#data 0xF437E060
#data 0xF447E06c

#align4
loc_8C0DBBA8:
#data 0x432BD307
#data 0x0009

loc_8C0DBBAE:
#data 0x02A4

loc_8C0DBBB0:
#data 0x012c
#data 0x0130

#align4
loc_8C0DBBB4:
#data 0xC0D55555

#align4
loc_8C0DBBB8:
#data 0x40D55555

#align4
loc_8C0DBBBC:
#data 0x40892492

#align4
loc_8C0DBBC0:
#data 0x41000000

#align4
loc_8C0DBBC4:
#data 0x42AB6DB6

#align4
loc_8C0DBBC8:
#data bank03.loc_8c034dee


loc_8C0DBBCC:
mov.l r14,@-r15
mov 0x5C,r1 ; r1 set to 0x5c
mov r4,r14
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0DBCC4,pc),r3 ; r3 set to 0x8C0332E0
sts.l pr,@-r15
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
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
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8C0DBC26
mov.b @(0x04,r14),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0 ; r0 set to 0x61
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0DBCB8,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0DBC26:
lds.l @r15+,pr 	
mov.l @(loc_8C0DBCC8,pc),r3 ; r3 set to 0x8C034DEe
mov r14,r4
jmp @r3
mov.l @r15+,r14
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0DBC36:
#data 0x2F46
#data 0x943E8455
#data 0x8F052008
#data 0x903B345c
#data 0x600C005c
#data 0x8903881d

#align4
loc_8C0DBC4C:
#data 0x804BE000
#data 0x804AE001

#align4
loc_8C0DBC54:
#data 0xD11D63F2
#data 0x64F28437
#data 0x4008600c
#data 0x432B031e
#data 0x7F04


loc_8C0DBC66:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov 0x10,r4 ; r4 set to 0x10
mov.l r5,@r15
mov.b @(0x07,r14),r0 	
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov.w @(loc_8C0DBCBE,pc),r0 ; r0 set to 0x13c
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x13d
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x13e
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x13f
mov.b r4,@(r0,r14) 	
mov r4,r0 ; r0 set to 0x10
nop 	
mov.w r0,@(0x1C,r14) 	
mov.w @(loc_8C0DBCC0,pc),r1 ; r1 set to 0x130
mov.l @r15,r0 ; r0 ??? bc r15 is ???	
mov r1,r2 ; r2 set to 0x130
add r14,r2 ; r2 ??? bc r14 is ???	
mov.w @(r0,r1),r0
mov.l @(loc_8C0DBCD0,pc),r4 ; r4 set to 0x8C26A518
xor 0x01,r0 	
mov.w r0,@r2
exts.w r0,r0
tst r0,r0
bf loc_8C0DBCDc
mova @(loc_8C0DBCD4,pc),r0  ; r0 set to 0x8C0DBCD4
fmov.s @r0,fr3
mov.w @(loc_8C0DBCC2,pc),r0 ; r0 set to 0x8c
fmov.s @(r0,r4),fr2
mov 0x34,r0 ; r0 set to 0x34
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0DBCD8,pc),r0  ; r0 set to 0x8C0DBCD8
bra loc_8C0DBCEe
fmov.s @r0,fr2

loc_8C0DBCB8:
#data 0x012c
#data 0x02A4
#data 0x01D0

loc_8C0DBCBE:
#data 0x013c

loc_8C0DBCC0:
#data 0x0130

loc_8C0DBCC2:
#data 0x008c

#align4
loc_8C0DBCC4:
#data bank03.loc_8c0332E0

loc_8C0DBCC8:
#data bank03.loc_8c034dee

loc_8C0DBCCC:
#data 0x8c15D9F8

loc_8C0DBCD0:
#data 0x8C26A518

#align4
loc_8C0DBCD4:
#data 0x42A00000

#align4
loc_8C0DBCD8:
#data 0xC0D55555

#align4
loc_8C0DBCDC:
#data 0xF308C74c
#data 0xF2469092
#data 0xF230E034
#data 0xC74AFE27
#data 0xF208

loc_8C0DBCEE:
#data 0xE05c
#data 0xFE27F48d
#data 0xF308C748
#data 0x9086E519
#data 0xD347E614
#data 0xE038F246
#data 0xFE27F230
#data 0xFE47E068
#data 0xFE47E060
#data 0xFE47E06c
#data 0x64E3430b
#data 0xE201D341
#data 0x430B2E20
#data 0x65F264E3
#data 0x7F0464E3
#data 0x6EF64F26

#align4
loc_8C0DBD2C:
#data 0x314CE15c
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
#data 0xF427F230
#data 0x70FF854e
#data 0x600F814e
#data 0x8B042008
#data 0x70018447
#data 0xE0208047
#data 0x814e

loc_8C0DBD7A:
#data 0xD32a
#data 0x0009432b

#align4
loc_8C0DBD80:
#data 0xE6018452
#data 0x6163D228
#data 0x6320600c
#data 0x410C206a
#data 0x2318633c
#data 0x854E8B0b
#data 0x814E70Ff
#data 0x2008600f
#data 0x84478B02
#data 0x80477001

#align4
loc_8C0DBDA8:
#data 0x432BD31e
#data 0x0009

loc_8C0DBDAE:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0DBDB2:
mov.w @(loc_8C0DBE0C,pc),r6 ; r6 set to 0x2A4
add r5,r6 ; r6 ??? bc r5 is ???	
mov.b @(0x0B,r6),r0 	
tst r0,r0
bf loc_8C0DBDF2
mov 0x05,r0 ; r0 set to 0x05
mov.b r0,@(0x07,r4) 	
mov 0x01,r5 ; r5 set to 0x01
mov.w @(loc_8C0DBE0E,pc),r0 ; r0 set to 0x12c
mov.b r5,@r4
mov.b r5,@(r0,r4) 	
add 0x04,r0 ; r0 set to 0x130
mov.w @(r0,r4),r3
tst r3,r3
bf loc_8C0DBDD6
mova @(loc_8C0DBE2C,pc),r0  ; r0 set to 0x8C0DBE2c
bra loc_8C0DBDDa
fmov.s @r0,fr3

loc_8C0DBDD6:
mova @(loc_8C0DBE14,pc),r0  ; r0 init to 0x8C0DBE14
fmov.s @r0,fr3

loc_8C0DBDDA:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fldi0 fr4
fmov.s fr3,@(r0,r4) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r4) 	
mova @(loc_8C0DBE30,pc),r0  ; r0 set to 0x8C0DBE30, r0 set to 0x8C0DBE30
fmov.s @r0,fr3
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr3,@(r0,r4) 	
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
bra loc_8C0DBE70
fmov.s fr4,@(r0,r4) 	

loc_8C0DBDF2:
mov.b @(0x0A,r6),r0 	
tst r0,r0
bf loc_8C0DBE34
mov.b @(0x07,r4),r0 	
mov 0x00,r5 ; r5 set to 0x00
add 0x01,r0
mov.b r0,@(0x07,r4) 	
mov.w @(loc_8C0DBE0E,pc),r0 ; r0 set to 0x12c
mov.b r5,@r4
rts 	
mov.b r5,@(r0,r4) 	
;-------------------------------------------------------------------------------
#data 0x00900088

loc_8C0DBE0C:
#data 0x02A4

loc_8C0DBE0E:
#data 0x012c
#data 0xC2A00000

#align4
loc_8C0DBE14:
#data 0x40D55555
#data 0xC34DB6Db

#align4
loc_8C0DBE1C:
#data bank03.loc_8c034e8c

loc_8C0DBE20:
#data bank10.loc_8c104434

loc_8C0DBE24:
#data bank03.loc_8c034dee
#data 0x8C2895F6

#align4
loc_8C0DBE2C:
#data 0xC0D55555

#align4
loc_8C0DBE30:
#data 0x40892492


loc_8C0DBE34:
mova @(loc_8C0DBF84,pc),r0  ; r0 init to 0x8C0DBF84
mov.l @(loc_8C0DBF88,pc),r2 ; r2 set to 0x42AB6DB6
fmov.s @r0,fr4
mov 0x34,r0 ; r0 set to 0x34
mov r0,r1 ; r1 set to 0x34
add r4,r1 ; r1 ??? bc r4 is ???	
fmov.s @r1,fr3
mov r0,r1 ; r1 set to 0x34
add r5,r1 ; r1 ??? bc r5 is ???	
lds r2,fpul 	
fmov.s @r1,fr2 ; r2 ??? bc r1 is ???	
fsub fr3,fr2
fmov.s @(r0,r4),fr3
fdiv fr4,fr2
fadd fr2,fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
mov r0,r1 ; r1 set to 0x38
add r4,r1 ; r1 ??? bc r4 is ???	
fmov.s @r1,fr3
mov r0,r1 ; r1 set to 0x38
add r5,r1 ; r1 ??? bc r5 is ???	
fmov.s @(r0,r4),fr1
fmov.s @r1,fr2
fsub fr3,fr2
fsts fpul,fr3
fadd fr3,fr2
fdiv fr4,fr2
fadd fr2,fr1
fmov.s fr1,@(r0,r4) 	

loc_8C0DBE70:
mov.l @(loc_8C0DBF8C,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
jmp @r3
nop 	
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0DBE7A:
#data 0x967f
#data 0x846B365c
#data 0x89022008
#data 0x2008846a
#data 0x8928

loc_8C0DBE8A:
#data 0x9078
#data 0x005D9177
#data 0xCA01314c
#data 0xE0342101
#data 0xF437F356
#data 0xF308C73c
#data 0xF256E038
#data 0xF230E501
#data 0xE005F427
#data 0x90678047
#data 0x04542450
#data 0x034D7004
#data 0x8B022338
#data 0xA002C735
#data 0xF208

loc_8C0DBEC2:
#data 0xC735
#data 0xF208

loc_8C0DBEC6:
#data 0xE05c
#data 0xF427F48d
#data 0xF447E068
#data 0xF308C732
#data 0xF437E060
#data 0xF447E06c

#align4
loc_8C0DBEDC:
#data 0x432BD32b
#data 0x0009


loc_8C0DBEE2:
mov.l r14,@-r15
mov 0x5C,r1 ; r1 set to 0x5c
mov r4,r14
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0DBFA0,pc),r3 ; r3 set to 0x8C0332E0
sts.l pr,@-r15
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
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
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8C0DBF3c
mov.b @(0x04,r14),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0 ; r0 set to 0x61
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0DBF80,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0DBF3C:
lds.l @r15+,pr 	
mov.l @(loc_8C0DBF8C,pc),r3 ; r3 set to 0x8C034DEe
mov r14,r4
jmp @r3
mov.l @r15+,r14
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0DBF4C:
#data 0x84552F46
#data 0x20089414
#data 0x345C8F05
#data 0x005C9013
#data 0x881D600c
#data 0x8903

loc_8C0DBF62:
#data 0xE000
#data 0xE001804b
#data 0x804a

loc_8C0DBF6A:
#data 0x63F2
#data 0x8437D10d
#data 0x600C64F2
#data 0x031E4008
#data 0x7F04432b
#data 0x013002A4

loc_8C0DBF80:
#data 0x012c
#data 0x01D0

#align4
loc_8C0DBF84:
#data 0x41000000

#align4
loc_8C0DBF88:
#data 0x42AB6DB6

#align4
loc_8C0DBF8C:
#data bank03.loc_8c034dee
#data 0x42CDB6Db
#data 0xC0D55555
#data 0x40D55555
#data 0x40892492

#align4
loc_8C0DBFA0:
#data bank03.loc_8c0332E0

loc_8C0DBFA4:
#data 0x8c15DA10


loc_8C0DBFA8:
mov.l r14,@-r15
mov r4,r14
mov 0x20,r4 ; r4 set to 0x20
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b @(0x07,r14),r0 	
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov.w @(loc_8C0DC0D2,pc),r0 ; r0 set to 0x13c
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x13d
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x13e
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x13f
mov.b r4,@(r0,r14) 	
add 0xF1,r0 ; r0 set to 0x130
mov.w @(r0,r13),r3
mov.l @(loc_8C0DC0DC,pc),r4 ; r4 set to 0x8C26A518
tst r3,r3
bf/s loc_8C0DBFEa
mov.w r3,@(r0,r14) 	
mova @(loc_8C0DC0E0,pc),r0  ; r0 set to 0x8C0DC0E0
fmov.s @r0,fr3
mov.w @(loc_8C0DC0D4,pc),r0 ; r0 set to 0x8c
fmov.s @(r0,r4),fr2
mov 0x34,r0 ; r0 set to 0x34
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0DC0E4,pc),r0  ; r0 set to 0x8C0DC0E4
bra loc_8C0DBFFc
fmov.s @r0,fr2

loc_8C0DBFEA:
mova @(loc_8C0DC0E8,pc),r0  ; r0 init to 0x8C0DC0E8
fmov.s @r0,fr3
mov.w @(loc_8C0DC0D6,pc),r0 ; r0 set to 0x88
fmov.s @(r0,r4),fr2
mov 0x34,r0 ; r0 set to 0x34
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0DC0EC,pc),r0  ; r0 set to 0x8C0DC0Ec
fmov.s @r0,fr2

loc_8C0DBFFC:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
mov.l @(loc_8C0DC0FC,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0DC0F0,pc),r0  ; r0 set to 0x8C0DC0F0, r0 set to 0x8C0DC0F0
fmov.s @r0,fr3 ; r3 ??, r3 ??	
mov 0x19,r5 ; r5 set to 0x19, r5 set to 0x19
mov.w @(loc_8C0DC0D8,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
mov 0x10,r6 ; r6 set to 0x10, r6 set to 0x10
fmov.s @(r0,r13),fr2
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fldi0 fr2
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0DC0F4,pc),r0  ; r0 set to 0x8C0DC0F4, r0 set to 0x8C0DC0F4
fmov.s @r0,fr2
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0DC0F8,pc),r0  ; r0 set to 0x8C0DC0F8, r0 set to 0x8C0DC0F8
fmov.s @r0,fr2
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr2,@(r0,r14) 	
jsr @r3
mov r14,r4
mov.l @(loc_8C0DC100,pc),r3 ; r3 set to 0x8C104434, r3 set to 0x8C104434
mov 0x01,r2 ; r2 set to 0x01, r2 set to 0x01
mov.b r2,@r14
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???, r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0DC042:
mov 0x5C,r1 ; r1 set to 0x5C, r1 set to 0x5C, r1 set to 0x5c
add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???, r1 ??? bc r4 is ???	
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34, r0 set to 0x34
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???	
fmov.s @(r0,r4),fr2 ; r2 ??? bc r4 is ???, r2 ??? bc r4 is ???	
mov 0x68,r1 ; r1 set to 0x68, r1 set to 0x68, r1 set to 0x68
add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???, r1 ??? bc r4 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C, r0 set to 0x5c
fmov.s @(r0,r4),fr2
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60, r1 set to 0x60, r1 set to 0x60
add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???, r1 ??? bc r4 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r4),fr2
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6C, r1 set to 0x6C, r1 set to 0x6c
add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???, r1 ??? bc r4 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60, r0 set to 0x60
fmov.s @(r0,r4),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov.w @(loc_8C0DC0D8,pc),r0 ; r0 set to 0x41C, r0 set to 0x41C, r0 set to 0x41c
fmov.s @(r0,r5),fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r4),fr2
fcmp/gt fr3,fr2
bt loc_8C0DC09c
mov.b @(0x07,r4),r0 	
mov.l @(loc_8C0DC104,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
add 0x01,r0 ; r0 set to 0x39, r0 set to 0x39, r0 set to 0x39
mov.b r0,@(0x07,r4) 	
mov.w @(loc_8C0DC0D8,pc),r0 ; r0 set to 0x41C, r0 set to 0x41C, r0 set to 0x41c
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???, r3 ??? bc r5 is ???, r3 ??? bc r5 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38, r0 set to 0x38
fmov.s fr3,@(r0,r4) 	
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20, r0 set to 0x20
jmp @r3
mov.w r0,@(0x1C,r4) 	

loc_8C0DC09C:
rts 	
nop 	
;-------------------------------------------------------------------------------

#align4
loc_8C0DC0A0:
#data 0xE6018452
#data 0x6163D218
#data 0x6320600c
#data 0x410C206a
#data 0x2318633c
#data 0x854E8B0b
#data 0x814E70Ff
#data 0x2008600f
#data 0x84478B02
#data 0x80477001

#align4
loc_8C0DC0C8:
#data 0x432BD30e
#data 0x0009

loc_8C0DC0CE:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0DC0D2:
#data 0x013c

loc_8C0DC0D4:
#data 0x008c

loc_8C0DC0D6:
#data 0x0088

loc_8C0DC0D8:
#data 0x041c
#data 0x0000

#align4
loc_8C0DC0DC:
#data 0x8C26A518

#align4
loc_8C0DC0E0:
#data 0x42A00000

#align4
loc_8C0DC0E4:
#data 0xC0D55555

#align4
loc_8C0DC0E8:
#data 0xC2A00000

#align4
loc_8C0DC0EC:
#data 0x40D55555

#align4
loc_8C0DC0F0:
#data 0x42892492

#align4
loc_8C0DC0F4:
#data 0x40092492

#align4
loc_8C0DC0F8:
#data 0xBF4DB6Db

#align4
loc_8C0DC0FC:
#data bank03.loc_8c034e8c

loc_8C0DC100:
#data bank10.loc_8c104434

loc_8C0DC104:
#data bank03.loc_8c034dee
#data 0x8C2895F6


loc_8C0DC10C:
mov.w @(loc_8C0DC248,pc),r6 ; r6 set to 0x2A4
add r5,r6 ; r6 ??? bc r5 is ???	
mov.b @(0x0B,r6),r0 	
tst r0,r0
bf loc_8C0DC12e
mov 0x05,r0 ; r0 set to 0x05
mov.l @(loc_8C0DC254,pc),r3 ; r3 set to 0x8C034E8c
mov.b r0,@(0x07,r4) 	
mov 0x01,r5 ; r5 set to 0x01
mov.w @(loc_8C0DC24A,pc),r0 ; r0 set to 0x12c
mov 0x11,r6 ; r6 set to 0x11
mov.b r5,@r4
mov.b r5,@(r0,r4) 	
mov 0x20,r0 ; r0 set to 0x20
mov.w r0,@(0x1C,r4) 	
jmp @r3
mov 0x19,r5

loc_8C0DC12E:
mov.b @(0x0A,r6),r0 	
tst r0,r0
bf loc_8C0DC144
mov.b @(0x07,r4),r0 	
mov 0x00,r5 ; r5 set to 0x00
add 0x01,r0
mov.b r0,@(0x07,r4) 	
mov.w @(loc_8C0DC24A,pc),r0 ; r0 set to 0x12c
mov.b r5,@r4
rts 	
mov.b r5,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0DC144:
mova @(loc_8C0DC258,pc),r0  ; r0 init to 0x8C0DC258
fmov.s @r0,fr4
mov 0x34,r0 ; r0 set to 0x34
mov r0,r1 ; r1 set to 0x34
add r4,r1 ; r1 ??? bc r4 is ???	
fmov.s @r1,fr3
mov r0,r1 ; r1 set to 0x34
add r5,r1 ; r1 ??? bc r5 is ???	
fmov.s @r1,fr2
fsub fr3,fr2
fmov.s @(r0,r4),fr3
fdiv fr4,fr2
fadd fr2,fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
mov r0,r1 ; r1 set to 0x38
add r4,r1 ; r1 ??? bc r4 is ???	
fmov.s @r1,fr3
mov r0,r1 ; r1 set to 0x38
add r5,r1 ; r1 ??? bc r5 is ???	
fmov.s @r1,fr2
fsub fr3,fr2
fmov.s @(r0,r4),fr3
fdiv fr4,fr2
fadd fr2,fr3
fmov.s fr3,@(r0,r4) 	
rts 	
nop 	
;-------------------------------------------------------------------------------

#align4
loc_8C0DC17C:
#data 0x365C9664
#data 0x2008846b
#data 0x846A8902
#data 0x89142008

#align4
loc_8C0DC18C:
#data 0xE611905e
#data 0x0435035d
#data 0xF356E034
#data 0xF437D32e
#data 0xF356E038
#data 0xF437E501
#data 0x8047E005
#data 0x2450904f
#data 0xE0200454
#data 0x432B814e
#data 0xE519

loc_8C0DC1B6:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0DC1BA:
mov.w @(0x1C,r4),r0 	
add 0xFF,r0
mov.w r0,@(0x1C,r4) 	
exts.w r0,r0
tst r0,r0
bf loc_8C0DC1D8
mov.b @(0x07,r4),r0 	
mov.l @(loc_8C0DC25C,pc),r3 ; r3 set to 0x8C034DEe
add 0x01,r0
mov.b r0,@(0x07,r4) 	
mov.w @(loc_8C0DC24E,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
mov 0x38,r0 ; r0 set to 0x38
jmp @r3
fmov.s fr3,@(r0,r4) 	

loc_8C0DC1D8:
mov.w @(loc_8C0DC24C,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r2
tst r2,r2
bf loc_8C0DC1E6
mova @(loc_8C0DC260,pc),r0  ; r0 set to 0x8C0DC260
bra loc_8C0DC1Ea
fmov.s @r0,fr3

loc_8C0DC1E6:
mova @(loc_8C0DC264,pc),r0  ; r0 init to 0x8C0DC264
fmov.s @r0,fr3

loc_8C0DC1EA:
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r5),fr4
mova @(loc_8C0DC258,pc),r0  ; r0 set to 0x8C0DC258, r0 set to 0x8C0DC258
fmov.s @r0,fr5
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
mov r0,r1 ; r1 set to 0x34, r1 set to 0x34
fadd fr3,fr4
add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???	
fmov.s @r1,fr3
fsub fr3,fr4
fmov.s @(r0,r4),fr3
fdiv fr5,fr4
fadd fr4,fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov r0,r1 ; r1 set to 0x38, r1 set to 0x38
add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???	
fmov.s @r1,fr3
mov.w @(loc_8C0DC24E,pc),r1 ; r1 set to 0x41C, r1 set to 0x41c
add r5,r1 ; r1 ??? bc r5 is ???, r1 ??? bc r5 is ???	
fmov.s @r1,fr2
fsub fr3,fr2
fmov.s @(r0,r4),fr3
fdiv fr5,fr2
fadd fr2,fr3
rts 	
fmov.s fr3,@(r0,r4) 	
;-------------------------------------------------------------------------------

#align4
loc_8C0DC220:
#data 0x4F222FE6
#data 0x430BD30d
#data 0x90116E43
#data 0x222802Ec
#data 0x84E78907
#data 0x7001E301
#data 0x900780E7
#data 0x223A02Ed
#data 0x0E25

loc_8C0DC242:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0DC248:
#data 0x02A4

loc_8C0DC24A:
#data 0x012c

loc_8C0DC24C:
#data 0x0130

loc_8C0DC24E:
#data 0x041c
#data 0x00000141

#align4
loc_8C0DC254:
#data bank03.loc_8c034e8c

loc_8C0DC258:
#data 0x41000000

#align4
loc_8C0DC25C:
#data bank03.loc_8c034dee

loc_8C0DC260:
#data 0x42A00000

#align4
loc_8C0DC264:
#data 0xC2A00000


loc_8C0DC268:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0DC384,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt loc_8C0DC2B0
mov.b @(0x07,r14),r0 	
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov.w @(loc_8C0DC37C,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???	
tst r3,r3
bf loc_8C0DC28c
mova @(loc_8C0DC388,pc),r0  ; r0 set to 0x8C0DC388
bra loc_8C0DC290
fmov.s @r0,fr3

loc_8C0DC28C:
mova @(loc_8C0DC38C,pc),r0  ; r0 init to 0x8C0DC38c
fmov.s @r0,fr3

loc_8C0DC290:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fldi0 fr4
fmov.s fr3,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
mov.l @(loc_8C0DC390,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
mov r14,r4
fmov.s fr4,@(r0,r14) 	
mov 0x05,r6 ; r6 set to 0x05, r6 set to 0x05
lds.l @r15+,pr 	
mov 0x19,r5 ; r5 set to 0x19, r5 set to 0x19
jmp @r3
mov.l @r15+,r14

loc_8C0DC2B0:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0DC2B6:
mov.l r14,@-r15
mov 0x5C,r1 ; r1 set to 0x5c
mov r4,r14
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0DC394,pc),r3 ; r3 set to 0x8C0332E0
sts.l pr,@-r15
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
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
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8C0DC310
mov.b @(0x04,r14),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0 ; r0 set to 0x61
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0DC37E,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0DC310:
lds.l @r15+,pr 	
mov.l @(loc_8C0DC384,pc),r3 ; r3 set to 0x8C034DEe
mov r14,r4
jmp @r3
mov.l @r15+,r14
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0DC320:
mov r4,r3
mov.l @(loc_8C0DC398,pc),r1 ; r1 set to 0x8C15DA34
mov.l r4,@-r15
mov.b @(0x07,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0DC332:
mov.l r14,@-r15
mov r4,r14
mov 0x10,r4 ; r4 set to 0x10
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0DC37C,pc),r1 ; r1 set to 0x130
sts.l pr,@-r15
mov.b @(0x07,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov.w @(loc_8C0DC380,pc),r0 ; r0 set to 0x13c
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x13d
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x13e
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x13f
mov.b r4,@(r0,r14) 	
add 0xF1,r0 ; r0 set to 0x130
mov.w @(r0,r13),r0 ; r0 ??? bc r13 is ???	
mov.l @(loc_8C0DC39C,pc),r4 ; r4 set to 0x8C26A518
xor 0x01,r0 	
mov.w r0,@r1
exts.w r0,r0
tst r0,r0
bf loc_8C0DC3A8
mova @(loc_8C0DC3A0,pc),r0  ; r0 set to 0x8C0DC3A0
fmov.s @r0,fr3
mov.w @(loc_8C0DC382,pc),r0 ; r0 set to 0x8c
fmov.s @(r0,r4),fr2
mov 0x34,r0 ; r0 set to 0x34
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0DC3A4,pc),r0  ; r0 set to 0x8C0DC3A4
bra loc_8C0DC3Ba
fmov.s @r0,fr2

loc_8C0DC37C:
#data 0x0130

loc_8C0DC37E:
#data 0x012c

loc_8C0DC380:
#data 0x013c

loc_8C0DC382:
#data 0x008c

#align4
loc_8C0DC384:
#data bank03.loc_8c034dee

loc_8C0DC388:
#data 0xC0E2AAAa

#align4
loc_8C0DC38C:
#data 0x40E2AAAa

#align4
loc_8C0DC390:
#data bank03.loc_8c034e8c

loc_8C0DC394:
#data bank03.loc_8c0332E0

loc_8C0DC398:
#data 0x8c15DA34

loc_8C0DC39C:
#data 0x8C26A518

#align4
loc_8C0DC3A0:
#data 0x42A00000

#align4
loc_8C0DC3A4:
#data 0xC0D55555


loc_8C0DC3A8:
mova @(loc_8C0DC4B4,pc),r0  ; r0 init to 0x8C0DC4B4
fmov.s @r0,fr3
mov.w @(loc_8C0DC4AC,pc),r0 ; r0 set to 0x88
fmov.s @(r0,r4),fr2
mov 0x34,r0 ; r0 set to 0x34
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0DC4B8,pc),r0  ; r0 set to 0x8C0DC4B8
fmov.s @r0,fr2

loc_8C0DC3BA:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fldi0 fr4
fmov.s fr2,@(r0,r14) 	
mov 0x19,r5 ; r5 set to 0x19, r5 set to 0x19
mov.w @(loc_8C0DC4AE,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
mov 0x15,r6 ; r6 set to 0x15, r6 set to 0x15
mov.l @(loc_8C0DC4BC,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s fr3,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
jsr @r3
mov r14,r4
mov.l @(loc_8C0DC4C0,pc),r3 ; r3 set to 0x8C104434, r3 set to 0x8C104434
mov 0x01,r2 ; r2 set to 0x01, r2 set to 0x01
mov.b r2,@r14
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???, r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0DC3F2:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0DC4C4,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
jsr @r3
mov r5,r13
mov 0x5C,r1 ; r1 set to 0x5C, r1 set to 0x5C, r1 set to 0x5c
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34, r0 set to 0x34
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???, r3 ??? bc r1 is ???	
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???	
mov 0x68,r1 ; r1 set to 0x68, r1 set to 0x68, r1 set to 0x68
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C, r0 set to 0x5c
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60, r1 set to 0x60, r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6C, r1 set to 0x6C, r1 set to 0x6c
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60, r0 set to 0x60
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov.w @(loc_8C0DC4B0,pc),r0 ; r0 set to 0x1D0, r0 set to 0x1D0, r0 set to 0x1D0
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???, r0 ??? bc r13 is ???, r0 ??? bc r13 is ???	
extu.b r0,r0
cmp/eq 0x16,r0 	
bt loc_8C0DC448
mov 0x03,r0 ; r0 set to 0x03, r0 set to 0x03, r0 set to 0x03
bra loc_8C0DC49e
mov.b r0,@(0x07,r14) 	

loc_8C0DC448:
mov.w @(loc_8C0DC4B2,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bf loc_8C0DC456
mova @(loc_8C0DC4C8,pc),r0  ; r0 set to 0x8C0DC4C8
bra loc_8C0DC45a
fmov.s @r0,fr3

loc_8C0DC456:
#data 0xC717
#data 0xF308

loc_8C0DC45A:
#data 0xE034
#data 0x9028F4D6
#data 0x233803Ed
#data 0xF4308F04
#data 0xF3E6E034
#data 0x8B07F345

#align4
loc_8C0DC470:
#data 0x02ED901f
#data 0x89122228
#data 0xF3E6E034
#data 0x890EF435

#align4
loc_8C0DC480:
#data 0xE61984E7
#data 0x6563D30d
#data 0x64E37001
#data 0xE03480E7
#data 0xE000FE47
#data 0x4F2681De
#data 0x432B6DF6
#data 0x6EF6


loc_8C0DC49E:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0DC4A6:
mov.l @(loc_8C0DC4C4,pc),r3 ; r3 set to 0x8C034DEe
jmp @r3
nop 	

loc_8C0DC4AC:
#data 0x0088

loc_8C0DC4AE:
#data 0x041c

loc_8C0DC4B0:
#data 0x01D0

loc_8C0DC4B2:
#data 0x0130

#align4
loc_8C0DC4B4:
#data 0xC2A00000

#align4
loc_8C0DC4B8:
#data 0x40D55555

#align4
loc_8C0DC4BC:
#data bank03.loc_8c034e8c

loc_8C0DC4C0:
#data bank10.loc_8c104434

loc_8C0DC4C4:
#data bank03.loc_8c034dee

loc_8C0DC4C8:
#data 0x42A00000


loc_8C0DC4CC:
mov.l r14,@-r15
mov 0x5C,r1 ; r1 set to 0x5c
mov r4,r14
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0DC5A0,pc),r3 ; r3 set to 0x8C0332E0
sts.l pr,@-r15
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
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
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8C0DC526
mov.b @(0x04,r14),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0 ; r0 set to 0x61
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0DC598,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0DC526:
lds.l @r15+,pr 	
mov.l @(loc_8C0DC5A4,pc),r3 ; r3 set to 0x8C034DEe
mov r14,r4
jmp @r3
mov.l @r15+,r14
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0DC536:
mov r4,r3
mov.l @(loc_8C0DC5A8,pc),r1 ; r1 set to 0x8C15DA44
mov.l r4,@-r15
mov.b @(0x07,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0DC548:
mov.l r14,@-r15
mov r4,r14
mov 0x10,r4 ; r4 set to 0x10
mov.l r13,@-r15
mov 0x00,r3 ; r3 set to 0x00
mov r5,r13
mov.w @(loc_8C0DC59C,pc),r1 ; r1 set to 0x130
sts.l pr,@-r15
mov.b @(0x07,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov.w @(loc_8C0DC59A,pc),r0 ; r0 set to 0x13c
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x13d
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x13e
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x13f
mov.b r4,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0DC59C,pc),r0 ; r0 set to 0x130
mov.l @(loc_8C0DC5AC,pc),r4 ; r4 set to 0x8C26A518
mov.w @(r0,r13),r0 ; r0 ??? bc r13 is ???	
xor 0x01,r0 	
mov.w r0,@r1
exts.w r0,r0
tst r0,r0
bf loc_8C0DC5B8
mova @(loc_8C0DC5B0,pc),r0  ; r0 set to 0x8C0DC5B0
fmov.s @r0,fr3 ; r3 ??	
mov.w @(loc_8C0DC59E,pc),r0 ; r0 set to 0x8c
fmov.s @(r0,r4),fr2
mov 0x34,r0 ; r0 set to 0x34
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0DC5B4,pc),r0  ; r0 set to 0x8C0DC5B4
bra loc_8C0DC5Ca
fmov.s @r0,fr2

loc_8C0DC598:
#data 0x012c

loc_8C0DC59A:
#data 0x013c

loc_8C0DC59C:
#data 0x0130

loc_8C0DC59E:
#data 0x008c

#align4
loc_8C0DC5A0:
#data bank03.loc_8c0332E0

loc_8C0DC5A4:
#data bank03.loc_8c034dee

loc_8C0DC5A8:
#data 0x8c15DA44

loc_8C0DC5AC:
#data 0x8C26A518

#align4
loc_8C0DC5B0:
#data 0x42A00000

#align4
loc_8C0DC5B4:
#data 0xC0D55555


loc_8C0DC5B8:
mova @(loc_8C0DC6B8,pc),r0  ; r0 init to 0x8C0DC6B8
fmov.s @r0,fr3
mov.w @(loc_8C0DC6AE,pc),r0 ; r0 set to 0x88
fmov.s @(r0,r4),fr2
mov 0x34,r0 ; r0 set to 0x34
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0DC6BC,pc),r0  ; r0 set to 0x8C0DC6Bc
fmov.s @r0,fr2

loc_8C0DC5CA:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
mov.l @(loc_8C0DC6C0,pc),r1 ; r1 set to 0x40892492, r1 set to 0x40892492
fmov.s fr2,@(r0,r14) 	
mov 0x19,r5 ; r5 set to 0x19, r5 set to 0x19
mov.w @(loc_8C0DC6B0,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
mov 0x15,r6 ; r6 set to 0x15, r6 set to 0x15
lds r1,fpul 	
fmov.s @(r0,r13),fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fldi0 fr4
fmov.s fr3,@(r0,r14) 	
fmov.s @(r0,r14),fr2
fsts fpul,fr3
fadd fr3,fr2
mov.l @(loc_8C0DC6C4,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
fmov.s fr2,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
jsr @r3
mov r14,r4
mov.l @(loc_8C0DC6C8,pc),r3 ; r3 set to 0x8C104434, r3 set to 0x8C104434
mov 0x01,r2 ; r2 set to 0x01, r2 set to 0x01
mov.b r2,@r14
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???, r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0DC60E:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0DC6CC,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
jsr @r3
mov r5,r13
mov 0x5C,r1 ; r1 set to 0x5C, r1 set to 0x5C, r1 set to 0x5c
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34, r0 set to 0x34
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???, r3 ??? bc r1 is ???	
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???	
mov 0x68,r1 ; r1 set to 0x68, r1 set to 0x68, r1 set to 0x68
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C, r0 set to 0x5c
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60, r1 set to 0x60, r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6C, r1 set to 0x6C, r1 set to 0x6c
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60, r0 set to 0x60
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov.w @(loc_8C0DC6B2,pc),r0 ; r0 set to 0x1D0, r0 set to 0x1D0, r0 set to 0x1D0
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???, r0 ??? bc r13 is ???, r0 ??? bc r13 is ???	
extu.b r0,r0
cmp/eq 0x16,r0 	
bt loc_8C0DC664
mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04, r0 set to 0x04
bra loc_8C0DC6A6
mov.b r0,@(0x07,r14) 	

loc_8C0DC664:
mov.w @(loc_8C0DC6B4,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bf loc_8C0DC672
mova @(loc_8C0DC6D0,pc),r0  ; r0 set to 0x8C0DC6D0
bra loc_8C0DC676
fmov.s @r0,fr3

loc_8C0DC672:
#data 0xC711
#data 0xF308

loc_8C0DC676:
#data 0xE034
#data 0x901BF4D6
#data 0x233803Ed
#data 0xF4308F04
#data 0xF3E6E034
#data 0x8B07F345

#align4
loc_8C0DC68C:
#data 0x02ED9012
#data 0x89082228
#data 0xF3E6E034
#data 0x8904F435

#align4
loc_8C0DC69C:
#data 0x700184E7
#data 0xE00080E7
#data 0x81De


loc_8C0DC6A6:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0DC6AE:
#data 0x0088

loc_8C0DC6B0:
#data 0x041c

loc_8C0DC6B2:
#data 0x01D0

loc_8C0DC6B4:
#data 0x0130
#data 0x0000

#align4
loc_8C0DC6B8:
#data 0xC2A00000

#align4
loc_8C0DC6BC:
#data 0x40D55555

#align4
loc_8C0DC6C0:
#data 0x40892492

#align4
loc_8C0DC6C4:
#data bank03.loc_8c034e8c

loc_8C0DC6C8:
#data bank10.loc_8c104434

loc_8C0DC6CC:
#data bank03.loc_8c034dee

loc_8C0DC6D0:
#data 0x42A00000


loc_8C0DC6D4:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0DC7C8,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r5,r13
mov 0x5C,r1 ; r1 set to 0x5c
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
mov.w @(loc_8C0DC7BE,pc),r0 ; r0 set to 0x1D0
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
extu.b r0,r0
cmp/eq 0x16,r0 	
bt loc_8C0DC72a
mov 0x04,r0 ; r0 set to 0x04
bra loc_8C0DC780
mov.b r0,@(0x07,r14) 	

loc_8C0DC72A:
mov.w @(loc_8C0DC7C0,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bf loc_8C0DC738
mova @(loc_8C0DC7CC,pc),r0  ; r0 set to 0x8C0DC7Cc
bra loc_8C0DC73c
fmov.s @r0,fr3

#align4
loc_8C0DC738:
#data 0xF308C725

#align4
loc_8C0DC73C:
#data 0xF4D6E034
#data 0x03ED903e
#data 0x8F042338
#data 0xE034F430
#data 0xF345F3E6
#data 0x8B07

loc_8C0DC752:
#data 0x9035
#data 0x222802Ed
#data 0xE0348912
#data 0xF435F3E6
#data 0x890e

loc_8C0DC762:
#data 0x84E7
#data 0xD31BE614
#data 0x7001E519
#data 0x80E764E3
#data 0xFE47E034
#data 0x81DEE000
#data 0x6DF64F26
#data 0x6EF6432b


loc_8C0DC780:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0DC788:
mov.w @(loc_8C0DC7BE,pc),r0 ; r0 set to 0x1D0
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x16,r0 	
bt loc_8C0DC79e
mov.l @(loc_8C0DC7D4,pc),r3 ; r3 set to 0x8C034E8c
mov 0x04,r0 ; r0 set to 0x04
mov 0x15,r6 ; r6 set to 0x15
mov.b r0,@(0x07,r4) 	
jmp @r3
mov 0x19,r5

loc_8C0DC79E:
mov.w @(loc_8C0DC7C2,pc),r0 ; r0 set to 0x141
mov.b @(r0,r5),r2
tst r2,r2
bt loc_8C0DC7B4
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0 ; r0 set to 0x142
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0DC7C4,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0DC7B4:
mov.l @(loc_8C0DC7C8,pc),r3 ; r3 set to 0x8C034DEe
jmp @r3
nop 	
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0DC7BE:
#data 0x01D0

loc_8C0DC7C0:
#data 0x0130

loc_8C0DC7C2:
#data 0x0141

loc_8C0DC7C4:
#data 0x012c
#data 0x0000

#align4
loc_8C0DC7C8:
#data bank03.loc_8c034dee

loc_8C0DC7CC:
#data 0x424EAAAa
#data 0xC24EAAAa

#align4
loc_8C0DC7D4:
#data bank03.loc_8c034e8c


loc_8C0DC7D8:
mov.l r14,@-r15
mov 0x5C,r1 ; r1 set to 0x5c
mov r4,r14
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0DC8AC,pc),r3 ; r3 set to 0x8C0332E0
sts.l pr,@-r15
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
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
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8C0DC832
mov.b @(0x04,r14),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0 ; r0 set to 0x61
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0DC8A4,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0DC832:
lds.l @r15+,pr 	
mov.l @(loc_8C0DC8B0,pc),r3 ; r3 set to 0x8C034DEe
mov r14,r4
jmp @r3
mov.l @r15+,r14
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0DC842:
mov r4,r3
mov.l @(loc_8C0DC8B4,pc),r1 ; r1 set to 0x8C15DA58
mov.l r4,@-r15
mov.b @(0x07,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0DC854:
mov.l r14,@-r15
mov r4,r14
mov 0x10,r4 ; r4 set to 0x10
mov.l r13,@-r15
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov r5,r13
mov.w @(loc_8C0DC8A8,pc),r1 ; r1 set to 0x130
sts.l pr,@-r15
mov.b @(0x07,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov.w @(loc_8C0DC8A6,pc),r0 ; r0 set to 0x13c
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x13d
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x13e
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x13f
mov.b r4,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0DC8A8,pc),r0 ; r0 set to 0x130
mov.l @(loc_8C0DC8B8,pc),r4 ; r4 set to 0x8C26A518
mov.w @(r0,r13),r0 ; r0 ??? bc r13 is ???	
xor 0x01,r0 	
mov.w r0,@r1
exts.w r0,r0
tst r0,r0
bf loc_8C0DC8C4
mova @(loc_8C0DC8BC,pc),r0  ; r0 set to 0x8C0DC8Bc
fmov.s @r0,fr3 ; r3 ??	
mov.w @(loc_8C0DC8AA,pc),r0 ; r0 set to 0x8c
fmov.s @(r0,r4),fr2
mov 0x34,r0 ; r0 set to 0x34
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0DC8C0,pc),r0  ; r0 set to 0x8C0DC8C0
bra loc_8C0DC8D6
fmov.s @r0,fr2

loc_8C0DC8A4:
#data 0x012c

loc_8C0DC8A6:
#data 0x013c

loc_8C0DC8A8:
#data 0x0130

loc_8C0DC8AA:
#data 0x008c

#align4
loc_8C0DC8AC:
#data bank03.loc_8c0332E0

loc_8C0DC8B0:
#data bank03.loc_8c034dee

loc_8C0DC8B4:
#data 0x8c15DA58

loc_8C0DC8B8:
#data 0x8C26A518

#align4
loc_8C0DC8BC:
#data 0x42A00000

#align4
loc_8C0DC8C0:
#data 0xC0D55555


loc_8C0DC8C4:
mova @(loc_8C0DC9FC,pc),r0  ; r0 init to 0x8C0DC9Fc
fmov.s @r0,fr3
mov.w @(loc_8C0DC9F4,pc),r0 ; r0 set to 0x88
fmov.s @(r0,r4),fr2
mov 0x34,r0 ; r0 set to 0x34
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0DCA00,pc),r0  ; r0 set to 0x8C0DCA00
fmov.s @r0,fr2

loc_8C0DC8D6:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fldi0 fr4
fmov.s fr2,@(r0,r14) 	
mov 0x19,r5 ; r5 set to 0x19, r5 set to 0x19
mov.w @(loc_8C0DC9F6,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
mov 0x1A,r6 ; r6 set to 0x1A, r6 set to 0x1a
mov.l @(loc_8C0DCA04,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s fr3,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
jsr @r3
mov r14,r4
mov.l @(loc_8C0DCA08,pc),r2 ; r2 set to 0x8C0D886E, r2 set to 0x8C0D886e
mov r14,r5 ; r5 ??? bc r14 is ???, r5 ??? bc r14 is ???	
mov 0x34,r6 ; r6 set to 0x34, r6 set to 0x34
jsr @r2
mov r14,r4
mov.l @(loc_8C0DCA0C,pc),r2 ; r2 set to 0x8C104434, r2 set to 0x8C104434
mov 0x01,r3 ; r3 set to 0x01, r3 set to 0x01
mov.b r3,@r14
jsr @r2
mov r14,r4
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0DC918:
mov.l r14,@-r15
mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24, r0 set to 0x24
mov.l r13,@-r15
mov r5,r13
mov r4,r14
sts.l pr,@-r15
mov.b @(r0,r13),r3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???	
mov.b r3,@(r0,r14) 	
mov.l @(loc_8C0DCA10,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
jsr @r3
mov r14,r4
mov 0x5C,r1 ; r1 set to 0x5C, r1 set to 0x5C, r1 set to 0x5c
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34, r0 set to 0x34
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???, r3 ??? bc r1 is ???	
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???	
mov 0x68,r1 ; r1 set to 0x68, r1 set to 0x68, r1 set to 0x68
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C, r0 set to 0x5c
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60, r1 set to 0x60, r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6C, r1 set to 0x6C, r1 set to 0x6c
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60, r0 set to 0x60
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov.w @(loc_8C0DC9F8,pc),r0 ; r0 set to 0x1D0, r0 set to 0x1D0, r0 set to 0x1D0
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???, r0 ??? bc r13 is ???, r0 ??? bc r13 is ???	
extu.b r0,r0
cmp/eq 0x16,r0 	
bt loc_8C0DC976
mov 0x03,r0 ; r0 set to 0x03, r0 set to 0x03, r0 set to 0x03
bra loc_8C0DC9E0
mov.b r0,@(0x07,r14) 	

loc_8C0DC976:
mov.w @(loc_8C0DC9FA,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bf loc_8C0DC984
mova @(loc_8C0DCA14,pc),r0  ; r0 set to 0x8C0DCA14
bra loc_8C0DC988
fmov.s @r0,fr3

#align4
loc_8C0DC984:
#data 0xF308C724

#align4
loc_8C0DC988:
#data 0xF4D6E034
#data 0x03ED9035
#data 0x8F042338
#data 0xE034F430
#data 0xF345F3E6
#data 0x8B07

loc_8C0DC99E:
#data 0x902c
#data 0x222802Ed
#data 0xE034891c
#data 0xF435F3E6
#data 0x8918

loc_8C0DC9AE:
#data 0x84E7
#data 0xD31A62D3
#data 0x700161E3
#data 0x80E77234
#data 0x430B7134
#data 0x901AE00c
#data 0xE61BE301
#data 0x02ED64E3
#data 0x223AE519
#data 0xE0000E25
#data 0x4F2681De
#data 0x6DF6D20a
#data 0x6EF6422b


loc_8C0DC9E0:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0DC9E8:
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r3
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0DCA10,pc),r3 ; r3 set to 0x8C034DEe
jmp @r3
nop 	

loc_8C0DC9F4:
#data 0x0088

loc_8C0DC9F6:
#data 0x041c

loc_8C0DC9F8:
#data 0x01D0

loc_8C0DC9FA:
#data 0x0130

#align4
loc_8C0DC9FC:
#data 0xC2A00000

#align4
loc_8C0DCA00:
#data 0x40D55555

#align4
loc_8C0DCA04:
#data bank03.loc_8c034e8c

loc_8C0DCA08:
#data loc_8c0d886e

loc_8C0DCA0C:
#data bank10.loc_8c104434

loc_8C0DCA10:
#data bank03.loc_8c034dee

loc_8C0DCA14:
#data 0x42B40000
#data 0xC2B40000

#align4
loc_8C0DCA1C:
#data bank12.loc_8c1294C8


loc_8C0DCA20:
mov.l r14,@-r15
mov 0x5C,r1 ; r1 set to 0x5c
mov r4,r14
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0DCAC8,pc),r3 ; r3 set to 0x8C0332E0
sts.l pr,@-r15
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
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
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8C0DCA7a
mov.b @(0x04,r14),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0 ; r0 set to 0x61
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0DCAC4,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0DCA7A:
lds.l @r15+,pr 	
mov.l @(loc_8C0DCACC,pc),r3 ; r3 set to 0x8C034DEe
mov r14,r4
jmp @r3
mov.l @r15+,r14
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0DCA8A:
mov r4,r3
mov.l @(loc_8C0DCAD0,pc),r1 ; r1 set to 0x8C15DA68
mov.l r4,@-r15
mov.b @(0x07,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0DCA9C:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0DCAC6,pc),r1 ; r1 set to 0x130
sts.l pr,@-r15
mov.b @(0x07,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov.w @(loc_8C0DCAC6,pc),r0 ; r0 set to 0x130
mov.w @(r0,r13),r0 ; r0 ??? bc r13 is ???	
xor 0x01,r0 	
mov.w r0,@r1
exts.w r0,r0
tst r0,r0
bf loc_8C0DCAD8
mova @(loc_8C0DCAD4,pc),r0  ; r0 set to 0x8C0DCAD4
bra loc_8C0DCADc
fmov.s @r0,fr3

loc_8C0DCAC4:
#data 0x012c

loc_8C0DCAC6:
#data 0x0130

#align4
loc_8C0DCAC8:
#data bank03.loc_8c0332E0

loc_8C0DCACC:
#data bank03.loc_8c034dee

loc_8C0DCAD0:
#data 0x8c15DA68

loc_8C0DCAD4:
#data 0x42A00000


loc_8C0DCAD8:
mova @(loc_8C0DCC20,pc),r0  ; r0 init to 0x8C0DCC20
fmov.s @r0,fr3

loc_8C0DCADC:
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
mov.l @(loc_8C0DCC28,pc),r3 ; r3 set to 0x8C26A5A8, r3 set to 0x8C26A5A8
fmov.s @(r0,r13),fr2
mov 0x19,r5 ; r5 set to 0x19, r5 set to 0x19
fldi0 fr4
mov 0x12,r6 ; r6 set to 0x12, r6 set to 0x12
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0DCC24,pc),r0  ; r0 set to 0x8C0DCC24, r0 set to 0x8C0DCC24
fmov.s @r3,fr2
fmov.s @r0,fr3 ; r3 ??, r3 ??	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(loc_8C0DCC34,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fmov.s fr4,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mova @(loc_8C0DCC2C,pc),r0  ; r0 set to 0x8C0DCC2C, r0 set to 0x8C0DCC2c
fmov.s @r0,fr2
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0DCC30,pc),r0  ; r0 set to 0x8C0DCC30, r0 set to 0x8C0DCC30
fmov.s @r0,fr2
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr2,@(r0,r14) 	
jsr @r3
mov r14,r4
mov.l @(loc_8C0DCC38,pc),r3 ; r3 set to 0x8C104434, r3 set to 0x8C104434
mov 0x01,r2 ; r2 set to 0x01, r2 set to 0x01
mov.b r2,@r14
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???, r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0DCB2A:
mov.l r14,@-r15
mov r4,r14
mov 0x5C,r1 ; r1 set to 0x5C, r1 set to 0x5C, r1 set to 0x5c
mov.l r13,@-r15
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34, r0 set to 0x34
mov r5,r13
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
sts.l pr,@-r15
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???	
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???	
mov 0x68,r1 ; r1 set to 0x68, r1 set to 0x68, r1 set to 0x68
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
mov.w @(loc_8C0DCC1C,pc),r0 ; r0 set to 0x41C, r0 set to 0x41C, r0 set to 0x41c
fmov.s @(r0,r13),fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r14),fr2
fcmp/gt fr3,fr2
bt loc_8C0DCBA4
mov.b @(0x07,r14),r0 	
mov r13,r5
mov.l @(loc_8C0DCC3C,pc),r6 ; r6 set to 0x8C15D968, r6 set to 0x8C15D968, r6 set to 0x8C15D968
add 0x01,r0 ; r0 set to 0x39, r0 set to 0x39, r0 set to 0x39
mov.b r0,@(0x07,r14) 	
mov.w @(loc_8C0DCC1C,pc),r0 ; r0 set to 0x41C, r0 set to 0x41C, r0 set to 0x41c
fmov.s @(r0,r13),fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38, r0 set to 0x38
fmov.s fr3,@(r0,r14) 	
mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00, r0 set to 0x00
mov.w r0,@(0x1C,r13) 	
bsr loc_8C0DD708
mov r14,r4
mov r13,r5
bsr loc_8C0DD778
mov r14,r4
lds.l @r15+,pr 	
mov.l @(loc_8C0DCC40,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0DCBA4:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0DCBAC:
#data 0x7FFC4F22
#data 0x2F42B5E2
#data 0x8B032008
#data 0x843763F2
#data 0x80377001

#align4
loc_8C0DCBC0:
#data 0x4F267F04
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0DCBC8:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0DCC40,pc),r3 ; r3 set to 0x8C034DEe
mov r4,r14
mov.l r5,@r15
jsr @r3
mov r14,r4
mov.w @(loc_8C0DCC1E,pc),r0 ; r0 set to 0x141
mov.b @(r0,r14),r2
tst r2,r2
bt loc_8C0DCBFc
mov.b @(0x07,r14),r0 	
mov r14,r5
mov r14,r4
mov 0x07,r6 ; r6 set to 0x07
add 0x01,r0 ; r0 set to 0x142
mov.b r0,@(0x07,r14) 	
mov 0x00,r0 ; r0 set to 0x00
mov.l @r15,r3 ; r3 ??? bc r15 is ???	
mov.w r0,@(0x1C,r3) 	
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0DCC44,pc),r3 ; r3 set to 0x8C0D886e
jmp @r3
mov.l @r15+,r14

loc_8C0DCBFC:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0DCC04:
mov.l @(loc_8C0DCC40,pc),r3 ; r3 set to 0x8C034DEe
jmp @r3
nop 	

loc_8C0DCC0A:
mov r4,r3
mov.l @(loc_8C0DCC48,pc),r1 ; r1 set to 0x8C15DA7c
mov.l r4,@-r15
mov.b @(0x07,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0DCC1C:
#data 0x041c

loc_8C0DCC1E:
#data 0x0141

#align4
loc_8C0DCC20:
#data 0xC2A00000

#align4
loc_8C0DCC24:
#data 0x42092492

#align4
loc_8C0DCC28:
#data 0x8C26A5A8

#align4
loc_8C0DCC2C:
#data 0xC0892492

#align4
loc_8C0DCC30:
#data 0xBF4DB6Db

#align4
loc_8C0DCC34:
#data bank03.loc_8c034e8c

loc_8C0DCC38:
#data bank10.loc_8c104434

loc_8C0DCC3C:
#data 0x8c15D968

loc_8C0DCC40:
#data bank03.loc_8c034dee

loc_8C0DCC44:
#data loc_8c0d886e

loc_8C0DCC48:
#data 0x8c15DA7c


loc_8C0DCC4C:
mov.l r14,@-r15
mov r4,r14
mov 0x0C,r3 ; r3 set to 0x0c
mov.l r13,@-r15
mov 0x01,r2 ; r2 set to 0x01
mov r5,r13
mov.w @(loc_8C0DCDC0,pc),r1 ; r1 set to 0x130
mov.l r12,@-r15
add r14,r1 ; r1 ??? bc r14 is ???	
sts.l pr,@-r15
mov.b @(0x07,r14),r0 	
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0DCDBE,pc),r0 ; r0 set to 0x12d
mov.b r2,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x12e
mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???	
add 0x01,r3
mov.w r3,@(r0,r14) 	
add 0x02,r0 ; r0 set to 0x130
mov.w @(r0,r13),r0 ; r0 ??? bc r13 is ???	
xor 0x01,r0 	
mov.w r0,@r1
exts.w r0,r0
tst r0,r0
bf loc_8C0DCC8a
mova @(loc_8C0DCDC4,pc),r0  ; r0 set to 0x8C0DCDC4
bra loc_8C0DCC8e
fmov.s @r0,fr3

loc_8C0DCC8A:
#data 0xC74f
#data 0xF308

loc_8C0DCC8E:
#data 0xE034
#data 0xF2D6D34f
#data 0xF48DE516
#data 0xF230E628
#data 0xC74BFE27
#data 0xF308F238
#data 0xD34CE038
#data 0xFE27F230
#data 0xFE47E05c
#data 0xFE47E068
#data 0xF208C747
#data 0xFE27E060
#data 0xFE47E06c
#data 0x64E3430b
#data 0x65E3DC45
#data 0x4C0BE635
#data 0x65E364E3
#data 0x4C0BE636
#data 0x65E364E3
#data 0x4C0BE637
#data 0x65E364E3
#data 0x4C0BE638
#data 0xD33E64E3
#data 0x2E20E201
#data 0x64E3430b
#data 0x65D34F26
#data 0x6CF664E3
#data 0x6EF66DF6

#align4
loc_8C0DCCFC:
#data 0x314CE15c
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
#data 0xF427F230
#data 0xF308C72b
#data 0xF4569043
#data 0xE038F430
#data 0xF245F246
#data 0x8447890a
#data 0x80477001
#data 0x814EE008
#data 0xF208C725
#data 0xF427E06c
#data 0x815EE000

#align4
loc_8C0DCD5C:
#data 0x0009000b
;-------------------------------------------------------------------------------

#align4
loc_8C0DCD60:
#data 0x314CE15c
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
#data 0xF427F230
#data 0x70FF854e
#data 0x600F814e
#data 0x8B092008
#data 0xE3308447
#data 0x80477001
#data 0x0434E022
#data 0xF346E038
#data 0xF437E070

#align4
loc_8C0DCDB8:
#data 0x432BD30c
#data 0x0009

loc_8C0DCDBE:
#data 0x012d

loc_8C0DCDC0:
#data 0x0130
#data 0x041c

#align4
loc_8C0DCDC4:
#data 0x43055555
#data 0xC3055555
#data 0x42092492
#data 0x8C26A5A8
#data 0xC1092492

#align4
loc_8C0DCDD8:
#data bank03.loc_8c034e8c

loc_8C0DCDDC:
#data loc_8c0d886e

loc_8C0DCDE0:
#data bank10.loc_8c104434
#data 0x424DB6Db
#data 0x40092492

#align4
loc_8C0DCDEC:
#data bank03.loc_8c034dee


loc_8C0DCDF0:
mov.l r14,@-r15
fmov.s fr15,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov 0x70,r0 ; r0 set to 0x70
mov r4,r14
fmov.s @(r0,r14),fr3
mov 0x38,r0 ; r0 set to 0x38
mov r14,r3
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0DCED8,pc),r0  ; r0 set to 0x8C0DCED8
fmov.s @r0,fr15
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
extu.b r0,r0
neg r0,r0
add 0x50,r0
and 0x3F,r0 	
shll8 r0
shll2 r0
mov.w r0,@r15
mov 0x38,r0 ; r0 set to 0x38
add r0,r3
mov.l r3,@-r15
mov.l @(loc_8C0DCEDC,pc),r3 ; r3 set to 0x8C11E860
mov.w @(0x04,r15),r0 	
jsr @r3
mov r0,r4 ; r4 set to 0x38
fmul fr0,fr15
mova @(loc_8C0DCEE0,pc),r0  ; r0 set to 0x8C0DCEE0
fmov.s @r0,fr0 ; r0 ??	
mova @(loc_8C0DCEE4,pc),r0  ; r0 set to 0x8C0DCEE4
mov.l @r15+,r2
mov r14,r4 ; r4 ??? bc r14 is ???	
fmul fr0,fr15
fmov.s @r0,fr0 ; r0 ??	
mova @(loc_8C0DCEE8,pc),r0  ; r0 set to 0x8C0DCEE8
fmov.s @r2,fr3 ; r3 ??? bc r2 is ???	
fdiv fr0,fr15
fmov.s @r0,fr0 ; r0 ??	
mova @(loc_8C0DCEEC,pc),r0  ; r0 set to 0x8C0DCEEc
fdiv fr0,fr15
fmov.s @r0,fr0 ; r0 ??	
mov 0x22,r0 ; r0 set to 0x22
fmac fr0,fr15,fr3
fmov.s fr3,@r2
mov.b @(r0,r14),r3
add 0x01,r3
mov.b r3,@(r0,r14) 	
mov 0x3F,r3 ; r3 set to 0x3f
mov.b @(r0,r14),r2
and r3,r2
mov.b r2,@(r0,r14) 	
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0DCEF0,pc),r1 ; r1 set to 0x8C034DEe
fmov.s @r15+,fr15
jmp @r1
mov.l @r15+,r14

loc_8C0DCE66:
mov r4,r3
mov.l @(loc_8C0DCEF4,pc),r1 ; r1 set to 0x8C15DA8c
mov.l r4,@-r15
mov.b @(0x07,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0DCE78:
mov.l r14,@-r15
mov r4,r14
mov 0x10,r4 ; r4 set to 0x10
mov.l r13,@-r15
mov 0x01,r3 ; r3 set to 0x01
mov r5,r13
mov.w @(loc_8C0DCED4,pc),r1 ; r1 set to 0x130
sts.l pr,@-r15
mov.b @(0x07,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov.w @(loc_8C0DCED2,pc),r0 ; r0 set to 0x13c
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x13d
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x13e
mov 0x18,r4 ; r4 set to 0x18
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x13f
mov.b r4,@(r0,r14) 	
add 0xEE,r0 ; r0 set to 0x12d
mov.b r3,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x12e
mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???	
mov.l @(loc_8C0DCEF8,pc),r4 ; r4 set to 0x8C26A518
add 0x02,r3
mov.w r3,@(r0,r14) 	
add 0x02,r0 ; r0 set to 0x130
mov.w @(r0,r13),r0 ; r0 ??? bc r13 is ???	
xor 0x01,r0 	
mov.w r0,@r1
exts.w r0,r0
tst r0,r0
bf loc_8C0DCF04
mova @(loc_8C0DCEFC,pc),r0  ; r0 set to 0x8C0DCEFc
fmov.s @r0,fr3
mov.w @(loc_8C0DCED6,pc),r0 ; r0 set to 0x8c
fmov.s @(r0,r4),fr2
mov 0x34,r0 ; r0 set to 0x34
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0DCF00,pc),r0  ; r0 set to 0x8C0DCF00
bra loc_8C0DCF16
fmov.s @r0,fr2

loc_8C0DCED2:
#data 0x013c

loc_8C0DCED4:
#data 0x0130

loc_8C0DCED6:
#data 0x008c

#align4
loc_8C0DCED8:
#data 0x48480000

#align4
loc_8C0DCEDC:
#data bank11.loc_8c11E860

loc_8C0DCEE0:
#data 0x447A0000

#align4
loc_8C0DCEE4:
#data 0x47F42400

#align4
loc_8C0DCEE8:
#data 0x43800000

#align4
loc_8C0DCEEC:
#data 0x40092492

#align4
loc_8C0DCEF0:
#data bank03.loc_8c034dee

loc_8C0DCEF4:
#data 0x8c15DA8c

loc_8C0DCEF8:
#data 0x8C26A518

#align4
loc_8C0DCEFC:
#data 0x42A00000

#align4
loc_8C0DCF00:
#data 0xC0BAAAAa


loc_8C0DCF04:
mova @(loc_8C0DD038,pc),r0  ; r0 init to 0x8C0DD038
fmov.s @r0,fr3
mov.w @(loc_8C0DD02E,pc),r0 ; r0 set to 0x88
fmov.s @(r0,r4),fr2
mov 0x34,r0 ; r0 set to 0x34
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0DD03C,pc),r0  ; r0 set to 0x8C0DD03c
fmov.s @r0,fr2

loc_8C0DCF16:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fldi0 fr4
fmov.s fr2,@(r0,r14) 	
mov 0x19,r5 ; r5 set to 0x19, r5 set to 0x19
mov.w @(loc_8C0DD030,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
mov 0x1C,r6 ; r6 set to 0x1C, r6 set to 0x1c
mov.l @(loc_8C0DD040,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s fr3,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
jsr @r3
mov r14,r4
mov.l @(loc_8C0DD044,pc),r3 ; r3 set to 0x8C104434, r3 set to 0x8C104434
mov 0x01,r2 ; r2 set to 0x01, r2 set to 0x01
mov.b r2,@r14
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???, r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0DCF4E:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0DD048,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
jsr @r3
mov r5,r13
mov 0x5C,r1 ; r1 set to 0x5C, r1 set to 0x5C, r1 set to 0x5c
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34, r0 set to 0x34
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???, r3 ??? bc r1 is ???	
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???	
mov 0x68,r1 ; r1 set to 0x68, r1 set to 0x68, r1 set to 0x68
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C, r0 set to 0x5c
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60, r1 set to 0x60, r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6C, r1 set to 0x6C, r1 set to 0x6c
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60, r0 set to 0x60
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov.w @(loc_8C0DD032,pc),r0 ; r0 set to 0x1D0, r0 set to 0x1D0, r0 set to 0x1D0
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???, r0 ??? bc r13 is ???, r0 ??? bc r13 is ???	
extu.b r0,r0
cmp/eq 0x16,r0 	
bt loc_8C0DCFA4
mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04, r0 set to 0x04
bra loc_8C0DCFF6
mov.b r0,@(0x07,r14) 	

loc_8C0DCFA4:
mov.w @(loc_8C0DD034,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bf loc_8C0DCFB2
mova @(loc_8C0DD04C,pc),r0  ; r0 set to 0x8C0DD04c
bra loc_8C0DCFB6
fmov.s @r0,fr3

loc_8C0DCFB2:
#data 0xC727
#data 0xF308

loc_8C0DCFB6:
#data 0xE034
#data 0x903BF4D6
#data 0x233803Ed
#data 0xF4308F04
#data 0xF3E6E034
#data 0x8B07F345

#align4
loc_8C0DCFCC:
#data 0x02ED9032
#data 0x89102228
#data 0xF3E6E034
#data 0x890CF435

#align4
loc_8C0DCFDC:
#data 0x64E384E7
#data 0xE61DD317
#data 0x80E77001
#data 0xFE47E034
#data 0x4F26E519
#data 0x432B6DF6
#data 0x6EF6


loc_8C0DCFF6:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0DCFFE:
#data 0x4F22
#data 0xD3117FF8
#data 0x1F512F42
#data 0x64F2430b
#data 0x4011600e
#data 0x63F28906
#data 0x70018437
#data 0xE0008037
#data 0x813E53F1

#align4
loc_8C0DD020:
#data 0x4F267F08
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0DD028:
mov.l @(loc_8C0DD048,pc),r3 ; r3 set to 0x8C034DEe
jmp @r3
nop 	

loc_8C0DD02E:
#data 0x0088

loc_8C0DD030:
#data 0x041c

loc_8C0DD032:
#data 0x01D0

loc_8C0DD034:
#data 0x0130
#data 0x0000

#align4
loc_8C0DD038:
#data 0xC2A00000

#align4
loc_8C0DD03C:
#data 0x40BAAAAa

#align4
loc_8C0DD040:
#data bank03.loc_8c034e8c

loc_8C0DD044:
#data bank10.loc_8c104434

loc_8C0DD048:
#data bank03.loc_8c034dee

loc_8C0DD04C:
#data 0x42B40000
#data 0xC2B40000


loc_8C0DD054:
mov.l r14,@-r15
mov 0x5C,r1 ; r1 set to 0x5c
mov r4,r14
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0DD19C,pc),r3 ; r3 set to 0x8C0332E0
sts.l pr,@-r15
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
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
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8C0DD0Ae
mov.b @(0x04,r14),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0 ; r0 set to 0x61
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0DD194,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0DD0AE:
lds.l @r15+,pr 	
mov.l @(loc_8C0DD1A0,pc),r3 ; r3 set to 0x8C034DEe
mov r14,r4
jmp @r3
mov.l @r15+,r14
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0DD0BE:
mov r4,r3
mov.l @(loc_8C0DD1A4,pc),r1 ; r1 set to 0x8C15DAA0
mov.l r4,@-r15
mov.b @(0x07,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0DD0D0:
mov.l r14,@-r15
mov r4,r14
mov 0x01,r3 ; r3 set to 0x01
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b @(0x07,r14),r0 	
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0DD196,pc),r0 ; r0 set to 0x130
mov.w @(r0,r13),r2
tst r2,r2
bf/s loc_8C0DD0F6
mov.w r2,@(r0,r14) 	
mova @(loc_8C0DD1A8,pc),r0  ; r0 set to 0x8C0DD1A8
bra loc_8C0DD0Fa
fmov.s @r0,fr3

loc_8C0DD0F6:
mova @(loc_8C0DD1AC,pc),r0  ; r0 init to 0x8C0DD1Ac
fmov.s @r0,fr3

loc_8C0DD0FA:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fldi0 fr4
fmov.s fr3,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r13),fr3
mov 0x12,r5 ; r5 set to 0x12, r5 set to 0x12
mov.l @(loc_8C0DD1B0,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
mov 0x01,r6 ; r6 set to 0x01, r6 set to 0x01
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0DD198,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s fr3,@(r0,r14) 	
jsr @r3
mov r14,r4
mov.l @(loc_8C0DD1B4,pc),r3 ; r3 set to 0x8C104434, r3 set to 0x8C104434
mov 0x01,r2 ; r2 set to 0x01, r2 set to 0x01
mov.b r2,@r14
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???, r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0DD138:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov.l @(loc_8C0DD1A0,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
mov r4,r14
jsr @r3
mov r5,r13
mov 0x5C,r1 ; r1 set to 0x5C, r1 set to 0x5C, r1 set to 0x5c
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34, r0 set to 0x34
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???, r3 ??? bc r1 is ???	
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???	
mov 0x68,r1 ; r1 set to 0x68, r1 set to 0x68, r1 set to 0x68
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C, r0 set to 0x5c
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60, r1 set to 0x60, r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6C, r1 set to 0x6C, r1 set to 0x6c
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60, r0 set to 0x60
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov.w @(loc_8C0DD19A,pc),r0 ; r0 set to 0x141, r0 set to 0x141, r0 set to 0x141
mov.b @(r0,r13),r3
tst r3,r3
bf loc_8C0DD1B8
mov.b @(0x07,r14),r0 	
add 0x01,r0 ; r0 set to 0x142, r0 set to 0x142, r0 set to 0x142
mov.b r0,@(0x07,r14) 	
mov 0x1E,r0 ; r0 set to 0x1E, r0 set to 0x1E, r0 set to 0x1e
bra loc_8C0DD218
mov.w r0,@(0x1C,r14) 	

loc_8C0DD194:
#data 0x012c

loc_8C0DD196:
#data 0x0130

loc_8C0DD198:
#data 0x041c

loc_8C0DD19A:
#data 0x0141

#align4
loc_8C0DD19C:
#data bank03.loc_8c0332E0

loc_8C0DD1A0:
#data bank03.loc_8c034dee

loc_8C0DD1A4:
#data 0x8c15DAA0

loc_8C0DD1A8:
#data 0xC0D55555

#align4
loc_8C0DD1AC:
#data 0x40D55555

#align4
loc_8C0DD1B0:
#data bank03.loc_8c034e8c

loc_8C0DD1B4:
#data bank10.loc_8c104434

loc_8C0DD1B8:
#data 0xD540E024
#data 0x64F303Dc
#data 0x90770E34
#data 0xC73E03Ec
#data 0x4308F208
#data 0x335C9072
#data 0x435A6331
#data 0xF322F32d
#data 0x03ECF43a
#data 0x353C4308
#data 0x63038551
#data 0xC737435a
#data 0xE004F108
#data 0xF312F32d
#data 0x9060F437
#data 0x233803Ed
#data 0xE0348D03
#data 0xF34DF348
#data 0xF43a

loc_8C0DD202:
#data 0xF248
#data 0xF230F3E6
#data 0xE038FD27
#data 0xE004F3E6
#data 0xE038F246
#data 0xFD27F230


loc_8C0DD218:
add 0x08,r15
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0DD222:
mov.w @(0x1C,r4),r0 	
add 0xFF,r0
mov.w r0,@(0x1C,r4) 	
exts.w r0,r0
tst r0,r0
bf loc_8C0DD23c
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0DD2B8,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0DD23C:
mov 0x5C,r1 ; r1 set to 0x5c
mov.l @(loc_8C0DD2C8,pc),r3 ; r3 set to 0x8C034DEe
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
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0DD27C:
mov r4,r3
mov.l @(loc_8C0DD2CC,pc),r1 ; r1 set to 0x8C15DACc
mov.l r4,@-r15
mov.b @(0x07,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0DD28E:
mov.l r14,@-r15
mov r4,r14
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b @(0x07,r14),r0 	
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0DD2B6,pc),r0 ; r0 set to 0x130
mov.w @(r0,r13),r2
tst r2,r2
bf/s loc_8C0DD2D4
mov.w r2,@(r0,r14) 	
mova @(loc_8C0DD2D0,pc),r0  ; r0 set to 0x8C0DD2D0
bra loc_8C0DD2D8
fmov.s @r0,fr3
#data 0x0140

loc_8C0DD2B6:
#data 0x0130

loc_8C0DD2B8:
#data 0x012c
#data 0x0000

#align4
loc_8C0DD2BC:
#data 0x8c15DAAc
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0DD2C8:
#data bank03.loc_8c034dee

loc_8C0DD2CC:
#data 0x8c15DACc

loc_8C0DD2D0:
#data 0xC0D55555


loc_8C0DD2D4:
mova @(loc_8C0DD434,pc),r0  ; r0 init to 0x8C0DD434
fmov.s @r0,fr3

loc_8C0DD2D8:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fldi0 fr4
fmov.s fr3,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r13),fr3
mov 0x19,r5 ; r5 set to 0x19, r5 set to 0x19
mov.l @(loc_8C0DD438,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
mov 0x13,r6 ; r6 set to 0x13, r6 set to 0x13
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
jsr @r3
mov r14,r4
mov.l @(loc_8C0DD43C,pc),r3 ; r3 set to 0x8C104434, r3 set to 0x8C104434
mov 0x01,r2 ; r2 set to 0x01, r2 set to 0x01
mov.b r2,@r14
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???, r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0DD314:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov.l @(loc_8C0DD440,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
mov r4,r14
jsr @r3
mov r5,r13
mov 0x5C,r1 ; r1 set to 0x5C, r1 set to 0x5C, r1 set to 0x5c
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34, r0 set to 0x34
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???, r3 ??? bc r1 is ???	
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???	
mov 0x68,r1 ; r1 set to 0x68, r1 set to 0x68, r1 set to 0x68
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C, r0 set to 0x5c
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60, r1 set to 0x60, r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6C, r1 set to 0x6C, r1 set to 0x6c
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60, r0 set to 0x60
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov.w @(loc_8C0DD42E,pc),r0 ; r0 set to 0x141, r0 set to 0x141, r0 set to 0x141
mov.b @(r0,r13),r3
tst r3,r3
bf loc_8C0DD38e
mov.b @(0x07,r14),r0 	
add 0x01,r0 ; r0 set to 0x142, r0 set to 0x142, r0 set to 0x142
mov.b r0,@(0x07,r14) 	
mov 0x32,r0 ; r0 set to 0x32, r0 set to 0x32, r0 set to 0x32
mov.w r0,@(0x1C,r14) 	
mov.w @(loc_8C0DD430,pc),r0 ; r0 set to 0x130, r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bf loc_8C0DD37c
mova @(loc_8C0DD444,pc),r0  ; r0 set to 0x8C0DD444, r0 set to 0x8C0DD444, r0 set to 0x8C0DD444
bra loc_8C0DD380
fmov.s @r0,fr3

loc_8C0DD37C:
mova @(loc_8C0DD448,pc),r0  ; r0 init to 0x8C0DD448
fmov.s @r0,fr3

loc_8C0DD380:
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0DD44C,pc),r0  ; r0 set to 0x8C0DD44C, r0 set to 0x8C0DD44c
fmov.s @r0,fr3
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
bra loc_8C0DD3Ca
fmov.s fr3,@(r0,r14) 	

loc_8C0DD38E:
#data 0xE024
#data 0x03DC64F3
#data 0xC72E0E34
#data 0xC72EF308
#data 0xF308F43a
#data 0xF437E004
#data 0x03ED9044
#data 0x8D032338
#data 0xF348E034
#data 0xF43AF34d

#align4
loc_8C0DD3B4:
#data 0xF3E6F248
#data 0xFD27F230
#data 0xF3E6E038
#data 0xF246E004
#data 0xF230E038
#data 0xFD27


loc_8C0DD3CA:
add 0x08,r15
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0DD3D4:
mov.w @(0x1C,r4),r0 	
add 0xFF,r0
mov.w r0,@(0x1C,r4) 	
exts.w r0,r0
tst r0,r0
bf loc_8C0DD3Ee
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0DD432,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0DD3EE:
mov 0x5C,r1 ; r1 set to 0x5c
mov.l @(loc_8C0DD440,pc),r3 ; r3 set to 0x8C034DEe
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
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0DD42E:
#data 0x0141

loc_8C0DD430:
#data 0x0130

loc_8C0DD432:
#data 0x012c

#align4
loc_8C0DD434:
#data 0x40D55555

#align4
loc_8C0DD438:
#data bank03.loc_8c034e8c

loc_8C0DD43C:
#data bank10.loc_8c104434

loc_8C0DD440:
#data bank03.loc_8c034dee

loc_8C0DD444:
#data 0xBDD55555

#align4
loc_8C0DD448:
#data 0x3DD55555

#align4
loc_8C0DD44C:
#data 0x3E2B6DB6
#data 0xC0555555
#data 0x41092492


loc_8C0DD458:
mov r4,r3
mov.l @(loc_8C0DD5A4,pc),r1 ; r1 set to 0x8C15DAD8
mov.l r4,@-r15
mov.b @(0x07,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0DD46A:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b @(0x07,r14),r0 	
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov 0x46,r0 ; r0 set to 0x46
mov.w r0,@(0x1C,r14) 	
mov.w @(loc_8C0DD59E,pc),r0 ; r0 set to 0x130
mov.w @(r0,r13),r3
tst r3,r3
bf/s loc_8C0DD48e
mov.w r3,@(r0,r14) 	
mova @(loc_8C0DD5A8,pc),r0  ; r0 set to 0x8C0DD5A8
bra loc_8C0DD492
fmov.s @r0,fr3

loc_8C0DD48E:
mova @(loc_8C0DD5AC,pc),r0  ; r0 init to 0x8C0DD5Ac
fmov.s @r0,fr3

loc_8C0DD492:
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
mov.l @(loc_8C0DD5B4,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
fmov.s @(r0,r13),fr2
mov 0x19,r5 ; r5 set to 0x19, r5 set to 0x19
mov 0x16,r6 ; r6 set to 0x16, r6 set to 0x16
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0DD5B0,pc),r0  ; r0 set to 0x8C0DD5B0, r0 set to 0x8C0DD5B0
fmov.s @r0,fr3 ; r3 ??, r3 ??	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r13),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
jsr @r3
mov r14,r4
mov.l @(loc_8C0DD5B8,pc),r3 ; r3 set to 0x8C104434, r3 set to 0x8C104434
mov 0x01,r2 ; r2 set to 0x01, r2 set to 0x01
mov.b r2,@r14
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???, r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0DD4C4:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xF4,r15
mov r4,r14
mov.w @(0x1C,r14),r0 	
add 0xFF,r0 ; r0 set to 0x37, r0 set to 0x37
mov.w r0,@(0x1C,r14) 	
exts.w r0,r0 ; r0 ??, r0 ??	
tst r0,r0
bf loc_8C0DD530
mov.b @(0x07,r14),r0 	
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov.w @(loc_8C0DD59E,pc),r0 ; r0 set to 0x130, r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
tst r3,r3
bf loc_8C0DD4Ec
mova @(loc_8C0DD5BC,pc),r0  ; r0 set to 0x8C0DD5BC, r0 set to 0x8C0DD5BC, r0 set to 0x8C0DD5Bc
bra loc_8C0DD4F0
fmov.s @r0,fr3

loc_8C0DD4EC:
mova @(loc_8C0DD5C0,pc),r0  ; r0 init to 0x8C0DD5C0
fmov.s @r0,fr3

loc_8C0DD4F0:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fldi0 fr4
fmov.s fr3,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mova @(loc_8C0DD5C4,pc),r0  ; r0 set to 0x8C0DD5C4, r0 set to 0x8C0DD5C4
fmov.s @r0,fr3
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
mov.l @(loc_8C0DD5D0,pc),r3 ; r3 set to 0x8C0FDAB6, r3 set to 0x8C0FDAB6
mov r15,r5
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0DD5C8,pc),r0  ; r0 set to 0x8C0DD5C8, r0 set to 0x8C0DD5C8
fmov.s @r0,fr3 ; r3 ??, r3 ??	
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
mov 0x00,r6 ; r6 set to 0x00, r6 set to 0x00
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0DD5CC,pc),r0  ; r0 set to 0x8C0DD5CC, r0 set to 0x8C0DD5Cc
fmov.s fr4,@r15
fmov.s @r0,fr3
mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
fmov.s fr3,@(r0,r15) 	
jsr @r3
mov r14,r4
mov.l @(loc_8C0DD5B4,pc),r2 ; r2 set to 0x8C034E8C, r2 set to 0x8C034E8c
mov 0x19,r5 ; r5 set to 0x19, r5 set to 0x19
mov 0x14,r6 ; r6 set to 0x14, r6 set to 0x14
jsr @r2
mov r14,r4
add 0x0C,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0DD530:
mov.l @(loc_8C0DD5D4,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r14,r4
add 0x0C,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0DD53E:
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
mova @(loc_8C0DD5B0,pc),r0  ; r0 set to 0x8C0DD5B0
fmov.s @r0,fr3
mov.w @(loc_8C0DD5A0,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r5),fr4
fadd fr3,fr4
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r4),fr2
fcmp/gt fr4,fr2
bt loc_8C0DD59a
mov.b @(0x07,r4),r0 	
mov 0x08,r6 ; r6 set to 0x08
mov.l @(loc_8C0DD5B4,pc),r3 ; r3 set to 0x8C034E8c
add 0x01,r0 ; r0 set to 0x39
mov.b r0,@(0x07,r4) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr4,@(r0,r4) 	
jmp @r3
mov 0x12,r5

loc_8C0DD59A:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0DD59E:
#data 0x0130

loc_8C0DD5A0:
#data 0x041c
#data 0x0000

#align4
loc_8C0DD5A4:
#data 0x8c15DAD8

loc_8C0DD5A8:
#data 0xC2C4AAAa

#align4
loc_8C0DD5AC:
#data 0x42C4AAAa

#align4
loc_8C0DD5B0:
#data 0x40CDB6Db

#align4
loc_8C0DD5B4:
#data bank03.loc_8c034e8c

loc_8C0DD5B8:
#data bank10.loc_8c104434

loc_8C0DD5BC:
#data 0xC0555555

#align4
loc_8C0DD5C0:
#data 0x40555555

#align4
loc_8C0DD5C4:
#data 0x40892492

#align4
loc_8C0DD5C8:
#data 0xBF4DB6Db

#align4
loc_8C0DD5CC:
#data 0x42092492

#align4
loc_8C0DD5D0:
#data bank0f.loc_8c0fDAB6

loc_8C0DD5D4:
#data bank03.loc_8c034dee


loc_8C0DD5D8:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0DD6F4,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt loc_8C0DD60a
mov.b @(0x07,r14),r0 	
mov 0x01,r3 ; r3 set to 0x01
mov.l @(loc_8C0DD6F8,pc),r1 ; r1 set to 0x8C034E8c
mov r14,r4
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov 0x10,r0 ; r0 set to 0x10
mov.w r0,@(0x1C,r14) 	
mov 0x14,r6 ; r6 set to 0x14
mov.w @(loc_8C0DD6EE,pc),r0 ; r0 set to 0x130
mov 0x19,r5 ; r5 set to 0x19
mov.w @(r0,r14),r2
xor r3,r2
mov.w r2,@(r0,r14) 	
lds.l @r15+,pr 	
jmp @r1
mov.l @r15+,r14

loc_8C0DD60A:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0DD610:
#data 0x70FF854e
#data 0x600F814e
#data 0x8B092008
#data 0xE3018447
#data 0x80477001
#data 0x814EE010
#data 0x024D9061
#data 0x0425223a

#align4
loc_8C0DD630:
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0DD634:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l r5,@r15
mov.b @(0x07,r14),r0 	
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov 0x30,r0 ; r0 set to 0x30
mov.w r0,@(0x1C,r14) 	
mov.w @(loc_8C0DD6EE,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bf loc_8C0DD656
mova @(loc_8C0DD6FC,pc),r0  ; r0 set to 0x8C0DD6Fc
bra loc_8C0DD65a
fmov.s @r0,fr3

loc_8C0DD656:
mova @(loc_8C0DD700,pc),r0  ; r0 init to 0x8C0DD700
fmov.s @r0,fr3

loc_8C0DD65A:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fldi0 fr4
fmov.s fr3,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
mov.l @(loc_8C0DD6F8,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
mov 0x19,r5 ; r5 set to 0x19, r5 set to 0x19
fmov.s fr4,@(r0,r14) 	
mov 0x15,r6 ; r6 set to 0x15, r6 set to 0x15
jsr @r3
mov r14,r4
mov.l @r15,r5 ; r5 ??? bc r15 is ???, r5 ??? bc r15 is ???	
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r14

loc_8C0DD680:
mov.w @(0x1C,r4),r0 	
add 0xFF,r0 ; r0 set to 0x6B, r0 set to 0x6b
mov.w r0,@(0x1C,r4) 	
exts.w r0,r0 ; r0 ??, r0 ??	
tst r0,r0
bf loc_8C0DD69a
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00, r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0DD6F0,pc),r0 ; r0 set to 0x12C, r0 set to 0x12C, r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0DD69A:
mov 0x5C,r1 ; r1 set to 0x5c
mov.l @(loc_8C0DD6F4,pc),r3 ; r3 set to 0x8C034DEe
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
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0DD6DA:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0DD6F0,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0DD6E8:
mov.l @(loc_8C0DD704,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0DD6EE:
#data 0x0130

loc_8C0DD6F0:
#data 0x012c
#data 0x0000

#align4
loc_8C0DD6F4:
#data bank03.loc_8c034dee

loc_8C0DD6F8:
#data bank03.loc_8c034e8c

loc_8C0DD6FC:
#data 0xC0D55555

#align4
loc_8C0DD700:
#data 0x40D55555

#align4
loc_8C0DD704:
#data bank04.loc_8c0450C0


loc_8C0DD708:
mov.l r14,@-r15
mov r6,r14
mov.l r13,@-r15
mov.l r12,@-r15
mov r5,r12
mov.l r11,@-r15
mov 0x01,r11 ; r11 set to 0x01
mov.l r10,@-r15
mov 0x00,r10 ; r10 set to 0x00
mov.l r9,@-r15
mov.w @(loc_8C0DD7AA,pc),r13 ; r13 set to 0xCc
sts.l pr,@-r15
mov.l @(loc_8C0DD7AC,pc),r9 ; r9 set to 0x8C03544c
add r4,r13 ; r13 ??? bc r4 is ???	

loc_8C0DD724:
mov 0x25,r6 ; r6 set to 0x25, r6 set to 0x25
mov.b @r14,r0
add r12,r6 ; r6 ??? bc r12 is ???, r6 ??? bc r12 is ???	
mov 0x57,r3 ; r3 set to 0x57, r3 set to 0x57
mov.b r0,@(0x04,r13) 	
mov.b @r6,r6
mov.b @(0x02,r14),r0 	
extu.b r6,r6
mulu.w r3,r6
extu.b r0,r0
sts macl,r6
add r0,r6
mov.b @(0x03,r14),r0 	
extu.b r0,r7
mov.b @(0x01,r14),r0 	
extu.b r0,r5
jsr @r9
mov r12,r4
mov.l @(0x04,r14),r0
cmp/eq 0x01,r0 	
bf loc_8C0DD752
bra loc_8C0DD756
mov r10,r0

loc_8C0DD752:
mov r11,r0
nop 	

loc_8C0DD756:
mov.b r0,@(0x05,r13) 	
mov.l @(0x04,r14),r3
mov.b @(0x04,r13),r0 	
shll2 r3
shll r3
tst r0,r0
add r3,r14
bt loc_8C0DD724
mov.l r14,@r13
lds.l @r15+,pr 	
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0DD778:
#data 0x9E162FE6
#data 0x3E4C2FD6
#data 0x84E44F22
#data 0x80E470Ff
#data 0x2008600c
#data 0xED018F07
#data 0x200884E5
#data 0x66E28D01
#data 0xED00

loc_8C0DD79A:
#data 0xBFB5
#data 0x0009

loc_8C0DD79E:
#data 0x60D3
#data 0x4F260009
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0DD7AA:
#data 0x00Cc

#align4
loc_8C0DD7AC:
#data bank03.loc_8c03544c

loc_8C0DD7B0:
#data 0x7FFC4F22
#data 0xE504D353
#data 0xE6002F42
#data 0x6463430b
#data 0x8D072008
#data 0xD3506403
#data 0x1434E026
#data 0x62F29394
#data 0x04351426

#align4
loc_8C0DD7D4:
#data 0x4F267F04
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0DD7DC:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.w @(loc_8C0DD8FA,pc),r3 ; r3 set to 0x150
sts.l pr,@-r15
mov.l @(0x18,r14),r13
add r3,r13
mov.b @(0x01,r13),r0 	
mov r0,r13
tst r13,r13
bt loc_8C0DD816
mov.w @(loc_8C0DD8FC,pc),r0 ; r0 set to 0x12c
mov 0x01,r1 ; r1 set to 0x01
mov.b r1,@(r0,r14) 	
mov.w @(0x1C,r14),r0 	
cmp/eq r13,r0
bt loc_8C0DD810
mov.l @(loc_8C0DD90C,pc),r1 ; r1 set to 0x8C034E8c
mov 0x17,r5 ; r5 set to 0x17
mov r13,r6
jsr @r1
mov r14,r4
mov r13,r0 ; r0 ??? bc r13 is ???	
nop 	
bra loc_8C0DD828
mov.w r0,@(0x1C,r14) 	

#align4
loc_8C0DD810:
#data 0x430BD33f
#data 0x64E3

loc_8C0DD816:
#data 0x52E6
#data 0x23386320
#data 0x936C8904
#data 0x303C50E6
#data 0x81EE8401


loc_8C0DD828:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0DD830:
mov r4,r3
mov.l @(loc_8C0DD914,pc),r1 ; r1 set to 0x8C15DB00
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0DD842:
mov.w @(loc_8C0DD8FE,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0DD918,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0DD8FE,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0DD8FC,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0DD900,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0DD91C,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x24,r0 ; r0 set to 0x24
mov 0x00,r5 ; r5 set to 0x00
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r4) 	
mov.w @(loc_8C0DD8FC,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r4) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r5,@(r0,r4) 	
mov r5,r0 ; r0 set to 0x00
nop 	
mov.w r0,@(0x1C,r4) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
lds.l @r15+,pr 	

loc_8C0DD8CC:
mov.w @(loc_8C0DD8FC,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
mov.b r3,@(r0,r4) 	
mov.l @(0x18,r4),r2
mov.b @(r0,r2),r3 ; r3 ??? bc r2 is ???, r3 ??? bc r2 is ???	
tst r3,r3
bt loc_8C0DD8F4
mov.l @(0x18,r4),r3
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0DD902,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.l @(0x18,r4),r3
mov.w @(r0,r3),r2
bra loc_8C0DD7Dc
mov.w r2,@(r0,r4) 	

loc_8C0DD8F4:
rts 	
nop 	
;-------------------------------------------------------------------------------
#data 0x1E00

loc_8C0DD8FA:
#data 0x0150

loc_8C0DD8FC:
#data 0x012c

loc_8C0DD8FE:
#data 0x00Dc

loc_8C0DD900:
#data 0x01A3

loc_8C0DD902:
#data 0x0130

#align4
loc_8C0DD904:
#data bank04.loc_8c044F12

loc_8C0DD908:
#data loc_8c0dD830

loc_8C0DD90C:
#data bank03.loc_8c034e8c

loc_8C0DD910:
#data bank03.loc_8c034dee

loc_8C0DD914:
#data 0x8c15DB00

loc_8C0DD918:
#data bank12.loc_8c129560

loc_8C0DD91C:
#data bank12.loc_8c1294C8


loc_8C0DD920:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0DD932,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	

loc_8C0DD92C:
mov.l @(loc_8C0DD934,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0DD932:
#data 0x012c

#align4
loc_8C0DD934:
#data bank04.loc_8c0450C0
#data 0x7FFC4F22
#data 0xE503D34e
#data 0xE6002F42
#data 0x6463430b
#data 0x8D0A2008
#data 0xD34B6403
#data 0x1434E026
#data 0x62F29389
#data 0xE2001426
#data 0xE0210435
#data 0xD3450424
#data 0xE600E503
#data 0x6463430b
#data 0x8D0A2008
#data 0xD3426403
#data 0x1434E026
#data 0x62F29377
#data 0xE2011426
#data 0xE0210435
#data 0x7F040424
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0DD98E:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0DDA6C,pc),r3 ; r3 set to 0xCc
mov r14,r4
mov.l @(loc_8C0DDA80,pc),r2 ; r2 set to 0x8C28C6Cc
add r14,r3 ; r3 ??? bc r14 is ???	
mov.l @(loc_8C0DDA84,pc),r1 ; r1 set to 0x8C15DB10
mov.l r3,@r2 ; r2 ??? bc r3 is ???	
mov.b @(0x04,r14),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0DD9AA:
mov.l @(0x18,r4),r3
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0DDA80,pc),r6 ; r6 set to 0x8C28C6Cc
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0DDA6E,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r3
tst r3,r3
bt/s loc_8C0DD9D0
mov.l @r6,r5
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r5,fr3
fmov.s @(r0,r4),fr2
bra loc_8C0DD9D8
fadd fr3,fr2

loc_8C0DD9D0:
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r5,fr3
fmov.s @(r0,r4),fr2
fsub fr3,fr2

loc_8C0DD9D8:
mov 0x04,r1 ; r1 set to 0x04, r1 set to 0x04
fmov.s fr2,@(r0,r4) 	
mov.l @r6,r3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r4),fr2
add r3,r1 ; r1 ??? bc r3 is ???, r1 ??? bc r3 is ???	
fmov.s @r1,fr3
fadd fr3,fr2
rts 	
fmov.s fr2,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0DD9EC:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0DDA70,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0DDA88,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0DDA70,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r14),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0DDA72,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0DDA74,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0DDA8C,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r14),r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0DDA72,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r2
tst r2,r2
bt/s loc_8C0DDA90
mov 0x24,r0 ; r0 set to 0x24
bra loc_8C0DDA92
mov 0x00,r3
#data 0x1E01

loc_8C0DDA6C:
#data 0x00Cc

loc_8C0DDA6E:
#data 0x0130

loc_8C0DDA70:
#data 0x00Dc

loc_8C0DDA72:
#data 0x012c

loc_8C0DDA74:
#data 0x01A3
#data 0x0000

#align4
loc_8C0DDA78:
#data bank04.loc_8c044F12

loc_8C0DDA7C:
#data loc_8c0dD98e

loc_8C0DDA80:
#data 0x8C28C6Cc

#align4
loc_8C0DDA84:
#data 0x8c15DB10

loc_8C0DDA88:
#data bank12.loc_8c129560

loc_8C0DDA8C:
#data bank12.loc_8c1294C8


loc_8C0DDA90:
mov 0x0B,r3 ; r3 set to 0x0b

loc_8C0DDA92:
mov.b r3,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
mov.l @(0x18,r14),r2
mov.l @(loc_8C0DDB0C,pc),r4 ; r4 set to 0x8C28C6CC, r4 set to 0x8C28C6Cc
fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???	
fldi0 fr4
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00
mov.w r0,@(0x1C,r14) 	
mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
mov.l @r4,r3
fmov.s fr4,@r3
mov.l @r4,r2
fmov.s fr4,@(r0,r2) 	
bsr loc_8C0DD9Aa
mov r14,r4 ; r4 ??? bc r14 is ???, r4 ??? bc r14 is ???	
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
mov.l @(loc_8C0DDB10,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
mov.b @(r0,r14),r6
mov r14,r4
lds.l @r15+,pr 	
extu.b r6,r6
shll r6
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
jmp @r3
mov.l @r15+,r14

loc_8C0DDACE:
mov.l r14,@-r15
sts.l pr,@-r15
bsr loc_8C0DD9Aa
mov r4,r14
mov.w @(loc_8C0DDB06,pc),r3 ; r3 set to 0x150
mov.l @(0x18,r14),r0
add r3,r0
mov.b @(0x01,r0),r0 	
cmp/eq 0x03,r0 	
bt loc_8C0DDAEa
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0DDAF4
mov.l @r15+,r14

loc_8C0DDAEA:
lds.l @r15+,pr 	
mov.l @(loc_8C0DDB14,pc),r3 ; r3 set to 0x8C034DEe
mov r14,r4
jmp @r3
mov.l @r15+,r14

loc_8C0DDAF4:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0DDB08,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	

loc_8C0DDB00:
mov.l @(loc_8C0DDB18,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0DDB06:
#data 0x0150

loc_8C0DDB08:
#data 0x012c
#data 0x0000

#align4
loc_8C0DDB0C:
#data 0x8C28C6Cc

#align4
loc_8C0DDB10:
#data bank03.loc_8c034e8c

loc_8C0DDB14:
#data bank03.loc_8c034dee

loc_8C0DDB18:
#data bank04.loc_8c0450C0
#data 0x7FFC4F22
#data 0xE503D340
#data 0xE6002F42
#data 0x6463430b
#data 0x8D0E2008
#data 0xD33D6403
#data 0xE120E026
#data 0x314C1434
#data 0x62F2936c
#data 0x04351426
#data 0x62F29369
#data 0x8431332c
#data 0x7F042100
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0DDB56:
mov r4,r3
mov.l @(loc_8C0DDC2C,pc),r1 ; r1 set to 0x8C15DB20
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

#align4
loc_8C0DDB68:
#data 0x4F229158
#data 0x314C8444
#data 0x7001D32f
#data 0x90518044
#data 0x320C5246
#data 0x70E4430b
#data 0xE501904d
#data 0x71506143
#data 0x50460454
#data 0x80428402
#data 0x84015046
#data 0xE0508041
#data 0xF3365346
#data 0xE054F437
#data 0xF3365346
#data 0x903BF437
#data 0x023C5346
#data 0x70010424
#data 0x023C5346
#data 0xE0300424
#data 0x023C5346
#data 0x52460424
#data 0x7250D31c
#data 0xE00C430b
#data 0xE0245146
#data 0x0434031c
#data 0x9024E30f
#data 0xE0240454
#data 0xE0080434
#data 0xE034814e
#data 0xF3365346
#data 0xE038F437
#data 0xF3365346
#data 0x4F26F437

#align4
loc_8C0DDBF0:
#data 0x70FF854e
#data 0x600F814e
#data 0x89024015
#data 0x70018444
#data 0x8044

loc_8C0DDC02:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0DDC06:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0DDC1E,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	

loc_8C0DDC12:
mov.l @(loc_8C0DDC38,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x01501E02
#data 0x00Dc

loc_8C0DDC1E:
#data 0x012c
#data 0x000001A3

#align4
loc_8C0DDC24:
#data bank04.loc_8c044F12

loc_8C0DDC28:
#data loc_8c0dDB56

loc_8C0DDC2C:
#data 0x8c15DB20

loc_8C0DDC30:
#data bank12.loc_8c129560

loc_8C0DDC34:
#data bank12.loc_8c1294C8

loc_8C0DDC38:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0xE600D34b
#data 0x2F501F41
#data 0x430BE503
#data 0x20086463
#data 0x64038D0a
#data 0xE026D347
#data 0x52F11434
#data 0x14269382
#data 0xE0200435
#data 0x042462F0
#data 0x4F267F08
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0DDC70:
mov r4,r3
mov.l @(loc_8C0DDD78,pc),r1 ; r1 set to 0x8C15DB30
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0DDC82:
#data 0x5346
#data 0xF336E034
#data 0xE038F437
#data 0xF3365346
#data 0x9068F437
#data 0x023D5346
#data 0x89112228
#data 0xE0346343
#data 0xD036330c
#data 0xE3202F36
#data 0x6330334c
#data 0x023C633c
#data 0xF008C733
#data 0x62F6425a
#data 0xF228F32d
#data 0xF22AF23e

#align4
loc_8C0DDCC0:
#data 0xE0245346
#data 0xE3FF023c
#data 0xE0310424
#data 0x0434000b
;-------------------------------------------------------------------------------

loc_8C0DDCD0:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0DDD68,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0DDD84,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0DDD68,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r14),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0DDD6A,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0DDD6C,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0DDD88,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r14),r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0DDD6A,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov 0x00,r4 ; r4 set to 0x00
mov.b r4,@(r0,r14) 	
mov.w @(loc_8C0DDD66,pc),r0 ; r0 set to 0x130
mov.w r4,@(r0,r14) 	
bsr loc_8C0DDC82
mov r14,r4 ; r4 ??? bc r14 is ???	
mov 0x20,r0 ; r0 set to 0x20
mov.l @(loc_8C0DDD90,pc),r3 ; r3 set to 0x8C034E8c
mov.b @(r0,r14),r6
mov 0x17,r5 ; r5 set to 0x17
mov.l @(loc_8C0DDD8C,pc),r0 ; r0 set to 0x8C15DB43
mov r14,r4
lds.l @r15+,pr 	
extu.b r6,r6
mov.b @(r0,r6),r6
jmp @r3
mov.l @r15+,r14
#data 0x1E03

loc_8C0DDD66:
#data 0x0130

loc_8C0DDD68:
#data 0x00Dc

loc_8C0DDD6A:
#data 0x012c

loc_8C0DDD6C:
#data 0x01A3
#data 0x0000

#align4
loc_8C0DDD70:
#data bank04.loc_8c044F12

loc_8C0DDD74:
#data loc_8c0dDC70

loc_8C0DDD78:
#data 0x8c15DB30

loc_8C0DDD7C:
#data 0x8c15DB40
#data 0x3FD55555

#align4
loc_8C0DDD84:
#data bank12.loc_8c129560

loc_8C0DDD88:
#data bank12.loc_8c1294C8

loc_8C0DDD8C:
#data 0x8c15DB43

loc_8C0DDD90:
#data bank03.loc_8c034e8c

loc_8C0DDD94:
#data 0x6E432FE6
#data 0x4F22912f
#data 0x001C50E6
#data 0x8813600c
#data 0xE0208904
#data 0x600C00Ec
#data 0x890C8801

#align4
loc_8C0DDDB0:
#data 0x64E3BF67
#data 0x00ECE020
#data 0x8801600c
#data 0xD210890c
#data 0x64E3420b
#data 0x4011600e
#data 0x890b

loc_8C0DDDCA:
#data 0x84E4
#data 0x700164E3
#data 0x4F2680E4
#data 0x6EF6A008

#align4
loc_8C0DDDD8:
#data 0xD3094F26
#data 0x432B64E3
#data 0x6EF6

loc_8C0DDDE2:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0DDDE8:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0DDDFC,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	

loc_8C0DDDF4:
mov.l @(loc_8C0DDE04,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x0159

loc_8C0DDDFC:
#data 0x012c
#data 0x0000

#align4
loc_8C0DDE00:
#data bank03.loc_8c034dee

loc_8C0DDE04:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0xE600D358
#data 0x2F501F41
#data 0x430BE503
#data 0x20086463
#data 0x64038D3f
#data 0xE026929f
#data 0x143653F1
#data 0xD3520425
#data 0x62F01434
#data 0x89342228
#data 0x9095D250
#data 0x91931424
#data 0xD34F5246
#data 0x320C314c
#data 0x70E4430b
#data 0xE101908d
#data 0x61430414
#data 0x71505046
#data 0x80428402
#data 0x84015046
#data 0xE0508041
#data 0xF3365346
#data 0xE054F437
#data 0xF3365346
#data 0x907BF437
#data 0x023C5346
#data 0x70010424
#data 0x023C5346
#data 0xE0300424
#data 0x023C5346
#data 0x52460424
#data 0x7250D33d
#data 0xE00C430b
#data 0xE0245146
#data 0x031CE200
#data 0x90640434
#data 0x7F080424
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0DDEA6:
mov r4,r3
mov.l @(loc_8C0DDF84,pc),r1 ; r1 set to 0x8C15DB48
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0DDEB8:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0DDF64,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0DDF7C,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0DDF64,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r14),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0DDF66,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0DDF68,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0DDF80,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r14),r1
mov 0x24,r0 ; r0 set to 0x24
mov 0x17,r5 ; r5 set to 0x17
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov 0x11,r6 ; r6 set to 0x11
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0DDF66,pc),r0 ; r0 set to 0x12c
mov.l @(loc_8C0DDF88,pc),r3 ; r3 set to 0x8C034E8c
mov.b r4,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov 0x00,r4 ; r4 set to 0x00
mov.b r4,@(r0,r14) 	
mov.w @(loc_8C0DDF6A,pc),r0 ; r0 set to 0x130
mov.w r4,@(r0,r14) 	
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???	
lds.l @r15+,pr 	
mov r14,r4
mov.l @r15+,r14

loc_8C0DDF42:
mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???	
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0DDF6C,pc),r0 ; r0 set to 0x141, r0 set to 0x141
mov.b @(r0,r4),r3
cmp/pz r3
bt loc_8C0DDF8c
mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
mov 0x00,r2 ; r2 set to 0x00, r2 set to 0x00
bra loc_8C0DDF92
mov.b r2,@(r0,r4) 	
#data 0x1E04

loc_8C0DDF64:
#data 0x00Dc

loc_8C0DDF66:
#data 0x012c

loc_8C0DDF68:
#data 0x01A3

loc_8C0DDF6A:
#data 0x0130

loc_8C0DDF6C:
#data 0x0141
#data 0x0000

#align4
loc_8C0DDF70:
#data bank04.loc_8c044F12

loc_8C0DDF74:
#data loc_8c0dDEA6

loc_8C0DDF78:
#data loc_8c0dDFC0

loc_8C0DDF7C:
#data bank12.loc_8c129560

loc_8C0DDF80:
#data bank12.loc_8c1294C8

loc_8C0DDF84:
#data 0x8c15DB48

loc_8C0DDF88:
#data bank03.loc_8c034e8c

loc_8C0DDF8C:
#data 0xE107E024
#data 0x0414

loc_8C0DDF92:
#data 0x9162
#data 0x001C5046
#data 0x8815600c
#data 0x915D8B09
#data 0x001C5046
#data 0x8806600c
#data 0x88088907
#data 0x88098905
#data 0x8903

loc_8C0DDFB2:
#data 0x8444
#data 0xA0477001
#data 0x8044

loc_8C0DDFBA:
#data 0xD22a
#data 0x0009422b


loc_8C0DDFC0:
mov r4,r3
mov.l @(loc_8C0DE068,pc),r1 ; r1 set to 0x8C15DB58
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0DDFD2:
mov.l r14,@-r15
mov r4,r14
mov 0x01,r3 ; r3 set to 0x01
mov 0x00,r4 ; r4 set to 0x00
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
mov 0x17,r5 ; r5 set to 0x17
mov 0x11,r6 ; r6 set to 0x11
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0DE05E,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r4,@(r0,r14) 	
mov.w @(loc_8C0DE060,pc),r0 ; r0 set to 0x130
mov.l @(loc_8C0DE06C,pc),r3 ; r3 set to 0x8C034E8c
mov.w r4,@(r0,r14) 	
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???	
lds.l @r15+,pr 	
mov r14,r4
mov.l @r15+,r14

loc_8C0DDFFE:
mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???	
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0DE062,pc),r0 ; r0 set to 0x141, r0 set to 0x141
mov.b @(r0,r4),r3
cmp/pz r3
bt loc_8C0DE01e
mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
mov 0x00,r2 ; r2 set to 0x00, r2 set to 0x00
bra loc_8C0DE024
mov.b r2,@(r0,r4) 	

loc_8C0DE01E:
#data 0xE024
#data 0x0414E107

#align4
loc_8C0DE024:
#data 0x55469019
#data 0x600C005c
#data 0x8B048816
#data 0x005C9014
#data 0x880A600c
#data 0x8903

loc_8C0DE03A:
#data 0x8444
#data 0xA0037001
#data 0x8044

loc_8C0DE042:
#data 0xD208
#data 0x0009422b


loc_8C0DE048:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0DE05E,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	

loc_8C0DE054:
mov.l @(loc_8C0DE070,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x0159
#data 0x0158

loc_8C0DE05E:
#data 0x012c

loc_8C0DE060:
#data 0x0130

loc_8C0DE062:
#data 0x0141

#align4
loc_8C0DE064:
#data bank03.loc_8c034dee

loc_8C0DE068:
#data 0x8c15DB58

loc_8C0DE06C:
#data bank03.loc_8c034e8c

loc_8C0DE070:
#data bank04.loc_8c0450C0

loc_8C0DE074:
#data 0x7FF44F22
#data 0x60531F42
#data 0xD35A0009
#data 0x80F4E503
#data 0xE6002F60
#data 0x6463430b
#data 0x8D0E2008
#data 0xD3566403
#data 0x314CE120
#data 0x52F21434
#data 0x84F41426
#data 0x2100929d
#data 0x63F0E022
#data 0xE0260434
#data 0x0425

loc_8C0DE0AE:
#data 0x7F0c
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0DE0B6:
#data 0x4F22
#data 0x2F427FF4
#data 0x00096053
#data 0x606380F8
#data 0xD3480009
#data 0x80F4E503
#data 0x430BE600
#data 0x20086463
#data 0x64038D12
#data 0xE120D344
#data 0x1434314c
#data 0x532662F2
#data 0x62F21436
#data 0x14259379
#data 0x84F8E222
#data 0x2100324c
#data 0x220084F4
#data 0x0435E026

#align4
loc_8C0DE0FC:
#data 0x4F267F0c
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0DE104:
mov r4,r3
mov.l @(loc_8C0DE1F0,pc),r1 ; r1 set to 0x8C15DB68
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0DE116:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0DE1E2,pc),r1 ; r1 set to 0xDc
mov 0x01,r5 ; r5 set to 0x01
mov.w @(loc_8C0DE1E2,pc),r2 ; r2 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0DE1F4,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0DE1E0,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r14) 	
mov.l @(0x18,r14),r4
add r4,r2 ; r2 ??? bc r4 is ???	
jsr @r3
add 0x94,r0 ; r0 set to 0xC0
mov.w @(loc_8C0DE1E0,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0DE1E4,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0DE1F8,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.l @(loc_8C0DE1F8,pc),r3 ; r3 set to 0x8C1294C8
mov.b @(r0,r4),r2
mov r14,r1
add 0x34,r1
mov.b r2,@(r0,r14) 	
mov r4,r2
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r2
mov.l @(loc_8C0DE1FC,pc),r0 ; r0 set to 0x8C15DB78
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3 ; r3 ??? bc r2 is ???	
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0DE550
mov.l @r15+,r14

loc_8C0DE19C:
mov.w @(loc_8C0DE1E0,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov r3,r6 ; r6 set to 0x00
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0DE200,pc),r3 ; r3 set to 0x8C034C38
jmp @r3
mov 0x1B,r5

loc_8C0DE1AA:
mov.l r14,@-r15
mov 0x22,r0 ; r0 set to 0x22
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0DE204,pc),r0 ; r0 set to 0x8C13B2E0
mov r14,r4
extu.b r3,r3
mov.b @(r0,r3),r2
mov 0x31,r0 ; r0 set to 0x31
mov.l @(loc_8C0DE200,pc),r3 ; r3 set to 0x8C034C38
mov 0x1B,r5 ; r5 set to 0x1b
mov.b r2,@(r0,r14) 	
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r14),r6
mov.l @(loc_8C0DE208,pc),r0 ; r0 set to 0x8C13B2D8
extu.b r6,r6
mov.b @(r0,r6),r6
jmp @r3
mov.l @r15+,r14

loc_8C0DE1D0:
mov 0x31,r0 ; r0 set to 0x31
mov 0xF6,r3 ; r3 set to 0xFFFFFFF6
mov.b r3,@(r0,r4) 	
mov 0x43,r6 ; r6 set to 0x43
mov.l @(loc_8C0DE200,pc),r3 ; r3 set to 0x8C034C38
jmp @r3
mov 0x1B,r5
#data 0x1F00

loc_8C0DE1E0:
#data 0x012c

loc_8C0DE1E2:
#data 0x00Dc

loc_8C0DE1E4:
#data 0x01A3
#data 0x0000

#align4
loc_8C0DE1E8:
#data bank04.loc_8c044F12

loc_8C0DE1EC:
#data loc_8c0dE104

loc_8C0DE1F0:
#data 0x8c15DB68

loc_8C0DE1F4:
#data bank12.loc_8c129560

loc_8C0DE1F8:
#data bank12.loc_8c1294C8

loc_8C0DE1FC:
#data 0x8c15DB78

loc_8C0DE200:
#data bank03.loc_8c034C38

loc_8C0DE204:
#data 0x8c13B2E0

loc_8C0DE208:
#data 0x8c13B2D8


loc_8C0DE20C:
mov 0x31,r0 ; r0 set to 0x31
mov.l @(0x14,r4),r5
mov 0xF8,r3 ; r3 set to 0xFFFFFFF8
mov.b r3,@(r0,r4) 	
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
extu.b r0,r0
cmp/eq 0x02,r0 	
bt/s loc_8C0DE22e
fldi0 fr4
mova @(loc_8C0DE37C,pc),r0  ; r0 set to 0x8C0DE37c
fmov.s @r0,fr3 ; r3 ??	
mov 0x34,r0 ; r0 set to 0x34
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
bra loc_8C0DE23e
fmov.s fr4,@(r0,r4) 	

loc_8C0DE22E:
#data 0xC754
#data 0xE034F308
#data 0xC753F437
#data 0xE038F308
#data 0xF437

loc_8C0DE23E:
#data 0xE05c
#data 0xE060F447
#data 0xE068F447
#data 0xE06CF447
#data 0xC74EF447
#data 0xE068F308
#data 0xC74DF437
#data 0xE06CF308
#data 0x908BF437
#data 0x2338035d
#data 0x04358F08
#data 0xF346E034
#data 0xF437F34d
#data 0xF346E068
#data 0xF437F34d

#align4
loc_8C0DE278:
#data 0xD345E034
#data 0x315C6103
#data 0xE63BF246
#data 0xF230F318
#data 0xE038F427
#data 0x315C6103
#data 0xF318F246
#data 0xF427F230
#data 0xE51B432b

#align4
loc_8C0DE29C:
#data 0xD53DE022
#data 0x4F222FE6
#data 0x5E46004c
#data 0x4000600c
#data 0xF3564008
#data 0xF437E034
#data 0x034CE022
#data 0x633CE004
#data 0x43084300
#data 0xF356353c
#data 0xD534E038
#data 0xE022F437
#data 0x600C004c
#data 0x40084008
#data 0xE05CF356
#data 0xE022F437
#data 0xE004034c
#data 0x4308633c
#data 0x335C4308
#data 0xE068F336
#data 0xE022F437
#data 0xE008034c
#data 0x4308633c
#data 0x335C4308
#data 0xE060F336
#data 0xE022F437
#data 0xE00C034c
#data 0x4308633c
#data 0x353C4308
#data 0xE06CF356
#data 0x902FF437
#data 0x233803Ed
#data 0x04358D0c
#data 0xF346E034
#data 0xF437F34d
#data 0xF346E05c
#data 0xF437F34d
#data 0xF346E068
#data 0xF437F34d

#align4
loc_8C0DE338:
#data 0x6103E034
#data 0xF24631Ec
#data 0xF230F318
#data 0xE038F427
#data 0x31EC6103
#data 0xF318F246
#data 0xF427F230
#data 0x004CE020
#data 0x8809600c
#data 0xE51B8F02
#data 0xE67AA001

loc_8C0DE364:
#data 0xE60a

loc_8C0DE366:
#data 0xD20a
#data 0x0009420b
#data 0xD30B4F26
#data 0x64E3E54b
#data 0x6EF6432b
#data 0x00000130

#align4
loc_8C0DE37C:
#data 0xC2555555
#data 0xC1E2AAAa
#data 0x422B6DB6
#data 0xBD555555
#data 0x3D892492

#align4
loc_8C0DE390:
#data bank03.loc_8c034C38

loc_8C0DE394:
#data 0x8c13B2E8

loc_8C0DE398:
#data 0x8c13B338

loc_8C0DE39C:
#data bank04.loc_8c04223a

loc_8C0DE3A0:
#data 0xE30A9075
#data 0x6E432FE6
#data 0x54E64F22
#data 0xE03181Ee
#data 0xC7380E34
#data 0xE034F308
#data 0xE038FE37
#data 0xFE37F38d
#data 0x034D9066
#data 0x8D042338
#data 0xE0340E35
#data 0xF34DF3E6
#data 0xFE37

loc_8C0DE3D2:
#data 0xE034
#data 0x6103D330
#data 0xF2E6314c
#data 0xF318E51b
#data 0xF230E629
#data 0xE038FE27
#data 0x314C6103
#data 0xF318F2E6
#data 0xFE27F230
#data 0x64E3430b
#data 0x64E34F26
#data 0xE508E600
#data 0x6EF6AE59

#align4
loc_8C0DE404:
#data 0x5546E022
#data 0x0434E301
#data 0x814EE018
#data 0x814FE010
#data 0xE3F8E031
#data 0xC7200434
#data 0xE034F308
#data 0xE038F437
#data 0xF437F38d
#data 0xF308C71d
#data 0xF437E05c
#data 0xF308C71c
#data 0xF437E068
#data 0xF308C71b
#data 0xF437E060
#data 0xF308C71a
#data 0xF437E06c
#data 0x035D9022
#data 0x8D0C2338
#data 0xE0340435
#data 0xF34DF346
#data 0xE05CF437
#data 0xF34DF346
#data 0xE068F437
#data 0xF34DF346
#data 0xF437

loc_8C0DE46A:
#data 0xE034
#data 0x6103D30a
#data 0xF246315c
#data 0xF318E62b
#data 0xF427F230
#data 0x6103E038
#data 0xF246315c
#data 0xF230F318
#data 0x432BF427
#data 0x0081E51b
#data 0x00000130
#data 0x42555555

#align4
loc_8C0DE498:
#data bank03.loc_8c034C38
#data 0xC2555555
#data 0x40555555
#data 0xBBD55555
#data 0x414DB6Db
#data 0xBF092492

#align4
loc_8C0DE4B0:
#data 0xD248E022
#data 0x5546E30b
#data 0xE0180434
#data 0xE010814e
#data 0xE031814f
#data 0x0434E312
#data 0x0426E048
#data 0xF308C742
#data 0xF437E034
#data 0xF308C741
#data 0xF437E038
#data 0xF308C740
#data 0xF437E05c
#data 0xF308C73f
#data 0xF437E068
#data 0xF308C73e
#data 0xF437E060
#data 0xF308C73d
#data 0xF437E06c
#data 0x035D9066
#data 0x8D0C2338
#data 0xE0340435
#data 0xF34DF346
#data 0xE05CF437
#data 0xF34DF346
#data 0xE068F437
#data 0xF34DF346
#data 0xF437

loc_8C0DE51E:
#data 0xE034
#data 0x6103D333
#data 0xF246315c
#data 0xF318E62b
#data 0xF427F230
#data 0x6103E038
#data 0xF246315c
#data 0xF230F318
#data 0x432BF427
#data 0xE51b


loc_8C0DE542:
mov 0x31,r0 ; r0 set to 0x31
mov 0x08,r3 ; r3 set to 0x08
mov.b r3,@(r0,r4) 	
mov 0x2C,r6 ; r6 set to 0x2c
mov.l @(loc_8C0DE5F0,pc),r3 ; r3 set to 0x8C034C38
jmp @r3
mov 0x1B,r5

loc_8C0DE550:
mov.l @(loc_8C0DE5F4,pc),r5 ; r5 set to 0x8C2895F0
mov 0x3C,r0 ; r0 set to 0x3c
mov 0x01,r1 ; r1 set to 0x01
mov.l r14,@-r15
mov.w @(r0,r5),r3
mov 0x3B,r0 ; r0 set to 0x3b
mov.b @(r0,r5),r2
mov r4,r14
extu.w r3,r3
extu.b r2,r2
shad r2, r1 ; r1 ??? bc r2 is ???	
tst r1,r3
bf/s loc_8C0DE584
mov.l @(0x18,r14),r4
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r1
mov r14,r4
mov.b r1,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3
mov.l @(loc_8C0DE5F8,pc),r0 ; r0 set to 0x8C15DBA0
extu.b r3,r3
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0DE584:
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0DE588:
#data 0x6E432FE6
#data 0xE3002FD6
#data 0x941D901d
#data 0x4F222FC6
#data 0x0E345DE6
#data 0x844134Dc
#data 0x634E6403
#data 0x8D032338
#data 0x90106C4e
#data 0x0E24E201

#align4
loc_8C0DE5B0:
#data 0xD312E022
#data 0x624E01Ec
#data 0x611C4C00
#data 0x8F213210
#data 0xD10F3C3c
#data 0x64E3410b
#data 0x0009A022
#data 0x012C0130
#data 0x00000150
#data 0x00008000
#data 0x43610000
#data 0x44326492
#data 0xC0555555
#data 0xBBD55555
#data 0xC14DB6Db
#data 0xBF092492

#align4
loc_8C0DE5F0:
#data bank03.loc_8c034C38

loc_8C0DE5F4:
#data 0x8C2895F0

#align4
loc_8C0DE5F8:
#data 0x8c15DBA0

loc_8C0DE5FC:
#data 0x8c13B184

loc_8C0DE600:
#data bank03.loc_8c034D8c

loc_8C0DE604:
#data 0xE51BD24d
#data 0x66C00E44
#data 0x64E3420b

#align4
loc_8C0DE610:
#data 0xE3F8E031
#data 0x908E0E34
#data 0x222802Ec
#data 0xE0318902
#data 0x0E24E208

#align4
loc_8C0DE624:
#data 0x740164C3
#data 0xD5456040
#data 0x4000600c
#data 0xF3564008
#data 0xFE37E034
#data 0x6340E004
#data 0x4300633c
#data 0x335C4308
#data 0xE038F336
#data 0x9075FE37
#data 0x233803Dd
#data 0x0E358D04
#data 0xF3E6E034
#data 0xFE37F34d

#align4
loc_8C0DE65C:
#data 0x6103E034
#data 0xF2E631Dc
#data 0xF230F318
#data 0xE038FE27
#data 0x31DC6103
#data 0xF318F2E6
#data 0xFE27F230
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0DE682:
#data 0x4F22
#data 0xD32F7FFc
#data 0x2F42430b
#data 0x4011600e
#data 0x63F28902
#data 0x8034E002

#align4
loc_8C0DE698:
#data 0x4F267F04
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0DE6A0:
mov.l @(0x14,r4),r5
mov 0x02,r6 ; r6 set to 0x02
mov.b @(0x04,r5),r0 	
extu.b r0,r0
cmp/ge r6,r0
bt loc_8C0DE72e
mov.b @(0x05,r5),r0 	
tst r0,r0
bf loc_8C0DE72e
mov.w @(loc_8C0DE736,pc),r0 ; r0 set to 0x141
mov.b @(r0,r4),r3
tst r3,r3
bt loc_8C0DE6D6
mov.w @(loc_8C0DE73A,pc),r0 ; r0 set to 0x150
mov.l @(loc_8C0DE748,pc),r6 ; r6 set to 0x8C13B3D8
add r5,r0 ; r0 ??? bc r5 is ???	
mov.w @(loc_8C0DE73A,pc),r3 ; r3 set to 0x150
mov.b @(0x01,r0),r0 	
add r5,r3 ; r3 ??? bc r5 is ???	
shll r0
shll2 r0
fmov.s @(r0,r6),fr3
mov 0x34,r0 ; r0 set to 0x34
fmov.s fr3,@(r0,r4) 	
mov.b @(0x01,r3),r0 	
bra loc_8C0DE6Ee
nop 	

loc_8C0DE6D6:
#data 0x9030
#data 0x305CD61c
#data 0x8401932d
#data 0x4000335c
#data 0xF3664008
#data 0xF437E034
#data 0x8431

loc_8C0DE6EE:
#data 0x4000
#data 0x360C4008
#data 0xF366E004
#data 0xF437E038
#data 0x035D901c
#data 0x8D042338
#data 0xE0340435
#data 0xF34DF346
#data 0xF437

loc_8C0DE70E:
#data 0xE034
#data 0x6103D30c
#data 0xF246315c
#data 0xF230F318
#data 0xE038F427
#data 0x315C6103
#data 0xF318F246
#data 0x432BF230
#data 0xF427


loc_8C0DE72E:
mov r6,r0
nop 	
rts 	
mov.b r0,@(0x04,r4) 	
;-------------------------------------------------------------------------------

loc_8C0DE736:
#data 0x0141
#data 0x0130

loc_8C0DE73A:
#data 0x0150

#align4
loc_8C0DE73C:
#data bank03.loc_8c034C38

loc_8C0DE740:
#data 0x8c13B200

loc_8C0DE744:
#data bank03.loc_8c034D8c

loc_8C0DE748:
#data 0x8c13B3D8

loc_8C0DE74C:
#data 0x8c13B420

loc_8C0DE750:
#data 0xE15C2FE6
#data 0x31EC6E43
#data 0xD34CE034
#data 0xF2E64F22
#data 0xE168F318
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xE160F318
#data 0x31ECF2E6
#data 0xFE27F230
#data 0xF2E6E038
#data 0xE16CF318
#data 0xF23031Ec
#data 0xE060FE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x64E3430b
#data 0x4011600e
#data 0xE0028901
#data 0x80E4

loc_8C0DE79E:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0DE7A4:
#data 0x6E432FE6
#data 0x84E54F22
#data 0x8F1D2008
#data 0x906854E6
#data 0x600C004c
#data 0x8B0A881d
#data 0x004C9064
#data 0x8801600c
#data 0x85EE8B05
#data 0x81EE70Ff
#data 0x4011600f
#data 0x8907

loc_8C0DE7D2:
#data 0x84E5
#data 0xD32EE51b
#data 0x7001E62a
#data 0x430B80E5
#data 0x64E3

loc_8C0DE7E2:
#data 0x4F26
#data 0x64E3D229
#data 0x6EF6422b

#align4
loc_8C0DE7EC:
#data 0x420BD227
#data 0x600E64E3
#data 0x89014011
#data 0x80E4E002

#align4
loc_8C0DE7FC:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0DE802:
#data 0x2FE6
#data 0x903E6E43
#data 0x54E64F22
#data 0x600C004c
#data 0x8B33881d
#data 0x004C9038
#data 0x8801600c
#data 0xD31B8B2e
#data 0x64E3430b
#data 0x02ECE022
#data 0x0E2472Ff
#data 0x622C7201
#data 0x8B402228
#data 0xE15CE400
#data 0x31EC0E44
#data 0xF318E034
#data 0xE168F2E6
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
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x890B4011

#align4
loc_8C0DE87C:
#data 0x80E4E002
#data 0x000B4F26
#data 0x01D06EF6
#data 0x000001E9

#align4
loc_8C0DE88C:
#data bank03.loc_8c034D8c

loc_8C0DE890:
#data bank03.loc_8c034C38

loc_8C0DE894:
#data 0x70FF85Ef
#data 0x700181Ef
#data 0x2008600f
#data 0xD3468B09
#data 0x60329185
#data 0x500731Ec
#data 0x2100C901
#data 0x00096043
#data 0x81Ef

loc_8C0DE8B6:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0DE8BC:
#data 0x6E432FE6
#data 0x90772FD6
#data 0x5DE64F22
#data 0x600C00Dc
#data 0x8B59881d
#data 0x00DC9071
#data 0x8801600c
#data 0xD3398B54
#data 0x64E3430b
#data 0x200884E5
#data 0xE0228B2c
#data 0x73FF03Ec
#data 0x73010E34
#data 0x2338633c
#data 0x84E58B59
#data 0x7001E3F8
#data 0xE03180E5
#data 0xC7300E34
#data 0xE034F308
#data 0xC72FFE37
#data 0xE038F308
#data 0x9051FE37
#data 0x233803Dd
#data 0xE0348903
#data 0xF34DF3E6
#data 0xFE37

loc_8C0DE922:
#data 0xE034
#data 0x31DC6103
#data 0xF318F2E6
#data 0xFE27F230
#data 0x6103E038
#data 0xF2E631Dc
#data 0xF230F318
#data 0xFE27A035

#align4
loc_8C0DE940:
#data 0x31ECE15c
#data 0xF318E034
#data 0xE168F2E6
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
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x89024011

#align4
loc_8C0DE984:
#data 0xA010E002
#data 0x80E4

loc_8C0DE98A:
#data 0x85Ef
#data 0x81EF70Ff
#data 0x600F7001
#data 0x8B082008
#data 0x910AD308
#data 0x31EC6032
#data 0xC9015007
#data 0xE0002100
#data 0x81Ef

loc_8C0DE9AA:
#data 0x4F26
#data 0x000B6DF6
#data 0x012C6EF6
#data 0x01E901D0
#data 0x00000130
#data 0x8C26823c

#align4
loc_8C0DE9C0:
#data bank03.loc_8c034D8c
#data 0x430C0000
#data 0x44011B6d

#align4
loc_8C0DE9CC:
#data 0x56469052
#data 0x600C006c
#data 0x8F09881d
#data 0x904C5545
#data 0x600C006c
#data 0x8B038801
#data 0x005C9048
#data 0x8B0288Ff

#align4
loc_8C0DE9EC:
#data 0x000BE002
#data 0x8044
;-------------------------------------------------------------------------------

loc_8C0DE9F2:
#data 0x9041
#data 0x005C9141
#data 0xC901314c
#data 0x600E2100
#data 0x892B2008
#data 0x6032D31e
#data 0xC8015007
#data 0xC71D8906
#data 0xE034F308
#data 0xC71CF437
#data 0xF308A006

#align4
loc_8C0DEA1C:
#data 0xF308C71b
#data 0xF437E034
#data 0xF308C71a

#align4
loc_8C0DEA28:
#data 0xF437E038
#data 0x035D9026
#data 0x89032338
#data 0xF346E034
#data 0xF437F34d

#align4
loc_8C0DEA3C:
#data 0xD315E034
#data 0x315C6103
#data 0xF318F246
#data 0xF427F230
#data 0x6103E038
#data 0xF246315c
#data 0xF230F318
#data 0xF427432b

#align4
loc_8C0DEA5C:
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0DEA60:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0DEA7A,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0DEA6E:
mov.l @(loc_8C0DEA98,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x01E901D0
#data 0x0141

loc_8C0DEA7A:
#data 0x012c
#data 0x00000130
#data 0x8C26823c
#data 0xC3555555
#data 0x437CDB6d
#data 0xC3805555
#data 0x43722492

#align4
loc_8C0DEA94:
#data bank03.loc_8c034D8c

loc_8C0DEA98:
#data bank04.loc_8c0450C0

loc_8C0DEA9C:
#data 0xE5032FE6
#data 0xE6002FD6
#data 0x6E432FC6
#data 0x9D534F22
#data 0x4C0BDC2a
#data 0x20086463
#data 0x64038D10
#data 0xD228E300
#data 0x14E61424
#data 0x804184E1
#data 0x0434E020
#data 0x04D5E026
#data 0xF3E6E034
#data 0xE038F437
#data 0xF437F3E6

#align4
loc_8C0DEAD8:
#data 0xE600E503
#data 0x64634C0b
#data 0x8D102008
#data 0xE3016403
#data 0x1424D21c
#data 0x84E114E6
#data 0xE0208041
#data 0xE0260434
#data 0xE03404D5
#data 0xF437F3E6
#data 0xF3E6E038
#data 0xF437

loc_8C0DEB06:
#data 0xE503
#data 0x4C0BE600
#data 0x20086463
#data 0x64038D10
#data 0xD211E302
#data 0x14E61424
#data 0x804184E1
#data 0x0434E020
#data 0x04D5E026
#data 0xF3E6E034
#data 0xE038F437
#data 0xF437F3E6

#align4
loc_8C0DEB34:
#data 0x00096043
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0DEB42:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0DEB60,pc),r1 ; r1 set to 0x8C15E52c
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x00001F01

#align4
loc_8C0DEB58:
#data bank04.loc_8c044F12

loc_8C0DEB5C:
#data loc_8c0dEB42

loc_8C0DEB60:
#data 0x8c15E52c

loc_8C0DEB64:
#data 0x84444F22
#data 0x70019196
#data 0x92939693
#data 0xD34D314c
#data 0x5546364c
#data 0x908E8044
#data 0x325C430b
#data 0xE201908c
#data 0x71506143
#data 0x84520424
#data 0x84518042
#data 0xE0508041
#data 0xF437F356
#data 0xF356E054
#data 0x907EF437
#data 0x0434035c
#data 0x025C7001
#data 0xE0300424
#data 0x6253035c
#data 0x04347250
#data 0x430BD33d
#data 0xE30BE00c
#data 0x0434E024
#data 0x024CE020
#data 0x622CD03a
#data 0x032E4208
#data 0x9267E021
#data 0x04242632
#data 0xF308C737
#data 0xF256E034
#data 0xF230E038
#data 0xC735F427
#data 0x905CF408
#data 0x2338035d
#data 0xC7338901
#data 0xF408

loc_8C0DEBF2:
#data 0xE034
#data 0xF430F356
#data 0x4F26F447

#align4
loc_8C0DEBFC:
#data 0x6E432FE6
#data 0x904F2FD6
#data 0x5DE64F22
#data 0xE02103Dc
#data 0x633C01Ec
#data 0x4301611c
#data 0x89073310
#data 0x02DC9044
#data 0x622CE021
#data 0x0E244201
#data 0x80E5E000

#align4
loc_8C0DEC28:
#data 0x03ECE020
#data 0x633CD024
#data 0x023E4308
#data 0x64E3420b
#data 0x233863D0
#data 0x902D8906
#data 0x233803Dc
#data 0xE3018902
#data 0x0E34A003

#align4
loc_8C0DEC4C:
#data 0xE1009026
#data 0x0E14

loc_8C0DEC52:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0DEC5A:
mov 0x21,r0 ; r0 set to 0x21
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(loc_8C0DECC4,pc),r0 ; r0 set to 0x8C15E554
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

loc_8C0DEC6E:
mov 0x21,r0 ; r0 set to 0x21
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(loc_8C0DECC8,pc),r0 ; r0 set to 0x8C15E5B8
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

loc_8C0DEC82:
mov 0x21,r0 ; r0 set to 0x21
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(loc_8C0DECCC,pc),r0 ; r0 set to 0x8C15E61c
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15
#data 0x00Cc
#data 0x00C000Dc
#data 0x01A3012c
#data 0x013000Ff
#data 0x0000014b

#align4
loc_8C0DECA8:
#data bank12.loc_8c129560

loc_8C0DECAC:
#data bank12.loc_8c1294C8

loc_8C0DECB0:
#data 0x8c15E53c
#data 0x434DB6Db
#data 0xC2A00000
#data 0x42A00000

#align4
loc_8C0DECC0:
#data 0x8c15E548

loc_8C0DECC4:
#data 0x8c15E554

loc_8C0DECC8:
#data 0x8c15E5B8

loc_8C0DECCC:
#data 0x8c15E61c

loc_8C0DECD0:
#data 0x6E432FE6
#data 0x84E54F22
#data 0x8B0C2008
#data 0xD39284E5
#data 0x430B7001
#data 0xC90F80E5
#data 0xB25581Ee
#data 0xE00264E3
#data 0xB1D881Ef
#data 0x64E3

loc_8C0DECF6:
#data 0x4F26
#data 0xA12164E3
#data 0x6EF6


loc_8C0DECFE:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(0x05,r14),r0 	
extu.b r0,r0
cmp/eq 0x02,r0 	
bf/s loc_8C0DED1a
mov.l @(0x18,r14),r13
lds.l @r15+,pr 	
mov r14,r4
mov.l @r15+,r13
bra loc_8C0DEF40
mov.l @r15+,r14

loc_8C0DED1A:
#data 0x84E5
#data 0x8B0A2008
#data 0x700184E5
#data 0xE00180E5
#data 0xB23580E6
#data 0xB1BA64E3
#data 0xE00764E3
#data 0x81Ee

loc_8C0DED36:
#data 0xC77d
#data 0xE034F408
#data 0x31DC6103
#data 0xE15CF318
#data 0x620331Ec
#data 0x32ECF218
#data 0xF328F230
#data 0xF3E6F231
#data 0xF320F243
#data 0xE038FE37
#data 0x31DC6103
#data 0xE160F318
#data 0x620331Ec
#data 0x32ECF218
#data 0xF328F230
#data 0xF3E6F231
#data 0xF320F243
#data 0x85EEFE37
#data 0x81EE70Ff
#data 0x4011600f
#data 0x64E38D03
#data 0x700184E5
#data 0x80E5

loc_8C0DED8E:
#data 0x4F26
#data 0xA1556DF6
#data 0x6EF6


loc_8C0DED96:
mov r4,r3
mov.l @(loc_8C0DEF30,pc),r1 ; r1 set to 0x8C15E680
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

#align4
loc_8C0DEDA8:
#data 0x6E432FE6
#data 0x84E54F22
#data 0x80E57001
#data 0x80E6E001
#data 0x64E3B1Ee
#data 0x64E3B173
#data 0x64E3E03c
#data 0x4F2681Ee
#data 0x6EF6

loc_8C0DEDCA:
#data 0xC758
#data 0xF4085546
#data 0x6103E034
#data 0xF318315c
#data 0x314CE15c
#data 0xF2186203
#data 0xF230324c
#data 0xF231F328
#data 0xF243F346
#data 0xF437F320
#data 0x6103E038
#data 0xF318315c
#data 0x314CE160
#data 0xF2186203
#data 0xF230324c
#data 0xF231F328
#data 0xF346F243
#data 0xF437F320

#align4
loc_8C0DEE10:
#data 0x70FF854e
#data 0x600F814e
#data 0x89024011
#data 0x70018445
#data 0x8045

loc_8C0DEE22:
#data 0x854e
#data 0x3037E349
#data 0xA1098B01
#data 0x0009

loc_8C0DEE2E:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0DEE32:
#data 0x2FE6
#data 0x4F226E43
#data 0x700184E5
#data 0xE00180E5
#data 0xB18A80E6
#data 0xB12E64E3
#data 0xE00164E3
#data 0x81EE64E3
#data 0x6EF64F26

#align4
loc_8C0DEE54:
#data 0x5546C735
#data 0xE034F408
#data 0x315C6103
#data 0xE15CF318
#data 0x6203314c
#data 0x324CF218
#data 0xF328F230
#data 0xF346F231
#data 0xF320F243
#data 0xE038F437
#data 0x315C6103
#data 0xE160F318
#data 0x6203314c
#data 0x324CF218
#data 0xF328F230
#data 0xF243F231
#data 0xF320F346
#data 0xF437

loc_8C0DEE9A:
#data 0x2FE6
#data 0x4F222FD6
#data 0x6E437FFc
#data 0xED0253E6
#data 0x60D32F32
#data 0x81EF0009
#data 0x64E3B0F9
#data 0x420BD21c
#data 0xD11E0009
#data 0xC903E322
#data 0x001C33Ec
#data 0xE2226330
#data 0x303C32Ec
#data 0x2200C91f
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x89024011
#data 0x000960D3
#data 0x80E5

loc_8C0DEEE2:
#data 0xE05c
#data 0xF3E663F2
#data 0xF236E034
#data 0xF3E6F230
#data 0xF231C711
#data 0xF42CF308
#data 0xF28DF430
#data 0x8B00F245
#data 0xF44d

loc_8C0DEF02:
#data 0xC70e
#data 0xF345F308
#data 0x64E38F03
#data 0x000960D3
#data 0x80E5

loc_8C0DEF12:
#data 0xB05b
#data 0xB1170009
#data 0x64E364E3
#data 0x4F267F04
#data 0xA08D6DF6
#data 0x00006EF6

#align4
loc_8C0DEF28:
#data bank03.loc_8c03319e
#data 0x41000000

#align4
loc_8C0DEF30:
#data 0x8c15E680

loc_8C0DEF34:
#data 0x8c15DBC8
#data 0x40D55555
#data 0x41555555

#align4
loc_8C0DEF40:
#data 0x4F222FE6
#data 0x6E437FFc
#data 0x2F3253E6
#data 0x70FF85Ef
#data 0x600F81Ef
#data 0x89194011
#data 0x81EFE002
#data 0x64E3B0A3
#data 0x420BD22e
#data 0xD12E0009
#data 0xC903E322
#data 0x001C33Ec
#data 0xE2226330
#data 0x303C32Ec
#data 0x2200C91f
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x89014011
#data 0x80E5E000

#align4
loc_8C0DEF8C:
#data 0x63F2E05c
#data 0xE034F3E6
#data 0xF230F236
#data 0xC722F3E6
#data 0xF308F231
#data 0xF430F42c
#data 0xF245F28d
#data 0xF44D8B00

#align4
loc_8C0DEFAC:
#data 0xF308C71e
#data 0x8F02F345
#data 0xE00064E3
#data 0x80E5

loc_8C0DEFBA:
#data 0xB007
#data 0xB0C30009
#data 0x64E364E3
#data 0x4F267F04
#data 0x6EF6A03a

#align4
loc_8C0DEFCC:
#data 0x5546E05c
#data 0xE034F346
#data 0x961FF256
#data 0xF346F230
#data 0xF431F42c
#data 0xF345F38d
#data 0x364C8F01
#data 0xF44d

loc_8C0DEFEA:
#data 0xC710
#data 0xF435F308
#data 0xC70F8B01
#data 0xF408

loc_8C0DEFF6:
#data 0xC70f
#data 0xF308D110
#data 0xF208C70e
#data 0xF423F433
#data 0x005AF43d
#data 0x8046C90f
#data 0x600C8446
#data 0x001D4000
#data 0x8162000b
;-------------------------------------------------------------------------------
#data 0x000000Cc

#align4
loc_8C0DF01C:
#data bank03.loc_8c03319e

loc_8C0DF020:
#data 0x8c15DBC8
#data 0x40D55555
#data 0x41555555
#data 0x43D55555
#data 0x43D48000
#data 0x3FD55555
#data 0x41800000

#align4
loc_8C0DF03C:
#data 0x8c15E698

loc_8C0DF040:
#data 0x4F229096
#data 0x73FF034c
#data 0x633E0434
#data 0x8B272338
#data 0xE500968f
#data 0xD74a

loc_8C0DF056:
#data 0x908d
#data 0x7308034e
#data 0x70EF0436
#data 0x2268024c
#data 0x90858907
#data 0x7014014e
#data 0x70EC024e
#data 0x323C6312
#data 0x0426

loc_8C0DF076:
#data 0x907d
#data 0xD342917d
#data 0x314C024e
#data 0xE008430b
#data 0x04569078
#data 0x04567004
#data 0x04567004
#data 0x600C8446
#data 0x906B037c
#data 0x024C0434
#data 0x89DA2228

#align4
loc_8C0DF0A0:
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0DF0A6:
#data 0x2FE6
#data 0x7FF44F22
#data 0x6E43E05c
#data 0xE034F3E6
#data 0x65F354E6
#data 0xF246D333
#data 0xF230E060
#data 0xF3E6FF2a
#data 0xF246E038
#data 0x64E3E004
#data 0xFF27F230
#data 0x7434430b
#data 0x7004600c
#data 0x40214021
#data 0x4021E122
#data 0xC91F31Ec
#data 0xB0042100
#data 0x7F0C64E3
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0DF0F2:
#data 0x2FE6
#data 0x6E43E022
#data 0x634C04Ec
#data 0x89032338
#data 0x624CE310
#data 0x8B033233

#align4
loc_8C0DF108:
#data 0xE1009037
#data 0x0E15A003

#align4
loc_8C0DF110:
#data 0xE2019033
#data 0x0E25

loc_8C0DF116:
#data 0xE322
#data 0x33ECD41c
#data 0x633084E7
#data 0x334C633c
#data 0x30206230
#data 0xE022890c
#data 0x00ECD318
#data 0x600CE51b
#data 0x64E3004c
#data 0x84E780E7
#data 0x76136603
#data 0x6EF6432b

#align4
loc_8C0DF144:
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0DF148:
#data 0x93177FFc
#data 0x2F32334c
#data 0xD3108532
#data 0x432B6503
#data 0x7F04

loc_8C0DF15A:
#data 0x7FFc
#data 0x5546900f
#data 0x633C035c
#data 0x43217302
#data 0x2F306533
#data 0x7F04A01d
#data 0x00800142
#data 0x01400154
#data 0x01300148
#data 0x014B00Cc

#align4
loc_8C0DF180:
#data 0x8c15E6B8

loc_8C0DF184:
#data bank12.loc_8c1294Bc

loc_8C0DF188:
#data bank03.loc_8c03362c

loc_8C0DF18C:
#data 0x8c15E6C8

loc_8C0DF190:
#data bank03.loc_8c034C38

loc_8C0DF194:
#data bank03.loc_8c033718

loc_8C0DF198:
#data 0x90427FFc
#data 0x035C5546
#data 0x4301633c
#data 0x2F306533
#data 0x7F04

loc_8C0DF1AA:
#data 0x963b
#data 0x364C5746
#data 0x70018466
#data 0x8066C903
#data 0x00096053
#data 0x40004008
#data 0x84666303
#data 0x4000E104
#data 0x8067303c
#data 0x63628467
#data 0x4008600c
#data 0xE05CF336
#data 0x8467F437
#data 0x600C6362
#data 0x303C4008
#data 0xE060F316
#data 0x901CF437
#data 0x2338037d
#data 0xE05C8903
#data 0xF34DF346
#data 0xF437

loc_8C0DF1FA:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0DF1FE:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0DF228,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0DF22C,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0DF210:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0DF228,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0DF22C,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x014b
#data 0x013000Cc

loc_8C0DF228:
#data 0x012c
#data 0x0000

#align4
loc_8C0DF22C:
#data bank04.loc_8c0450C0

loc_8C0DF230:
#data 0x7FFC4F22
#data 0xE503D351
#data 0xE6002F42
#data 0x6463430b
#data 0x8D0F2008
#data 0xE5006403
#data 0xE020D34d
#data 0x04541434
#data 0x0454E021
#data 0x143663F2
#data 0x938560F2
#data 0x80418401
#data 0x0435E026

#align4
loc_8C0DF264:
#data 0x4F267F04
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0DF26C:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
mov 0x02,r3 ; r3 set to 0x02
extu.b r0,r0
cmp/ge r3,r0
bf/s loc_8C0DF288
mov.l @(0x18,r14),r5
lds.l @r15+,pr 	
mov.l @(loc_8C0DF384,pc),r1 ; r1 set to 0x8C0450C0
mov r14,r4
jmp @r1
mov.l @r15+,r14

loc_8C0DF288:
mov.b @(0x04,r14),r0 	
mov 0x01,r6 ; r6 set to 0x01
tst r0,r0
bf/s loc_8C0DF316
mov 0x00,r4 ; r4 set to 0x00
mov.w @(loc_8C0DF36A,pc),r1 ; r1 set to 0xDc
mov.l @(loc_8C0DF388,pc),r3 ; r3 set to 0x8C129560
mov.w @(loc_8C0DF36A,pc),r2 ; r2 set to 0xDc
add r14,r1 ; r1 ??? bc r14 is ???	
mov.b r6,@r14
mov.b @(0x04,r14),r0 	
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0DF36C,pc),r0 ; r0 set to 0xC0
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0DF36E,pc),r0 ; r0 set to 0x12c
mov r14,r1
add 0x50,r1
mov.b r6,@(r0,r14) 	
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
mov.w @(loc_8C0DF370,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0DF38C,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x0C,r3 ; r3 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov.b r3,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0DF372,pc),r0 ; r0 set to 0x130
mov.w @(r0,r5),r3
mov.w r3,@(r0,r14) 	
add 0x9C,r0 ; r0 set to 0xCc
mov.l r4,@(r0,r14) 	
mov r4,r0 ; r0 set to 0x00
nop 	
mov 0x1B,r5 ; r5 set to 0x1b
mov.b r0,@(0x05,r14) 	
mov 0x50,r6 ; r6 set to 0x50
bsr loc_8C0DF638
mov r14,r4 ; r4 ??? bc r14 is ???	
lds.l @r15+,pr 	
mov.l @(loc_8C0DF390,pc),r2 ; r2 set to 0x8C104434
mov r14,r4
jmp @r2
mov.l @r15+,r14

loc_8C0DF316:
mov.b @r5,r2
tst r2,r2
bt loc_8C0DF34e
mov.w @(loc_8C0DF36E,pc),r0 ; r0 set to 0x12c
mov.b @(r0,r5),r2
tst r2,r2
bt loc_8C0DF34e
mov.b r6,@(r0,r14) 	
add 0x23,r0 ; r0 set to 0x14f
mov.b r6,@r14
mov.b @(r0,r5),r3
mov.w @(loc_8C0DF374,pc),r0 ; r0 set to 0xCc
extu.b r3,r3
mov.l @(r0,r14),r2
cmp/eq r2,r3
bt loc_8C0DF354
mov.w @(loc_8C0DF376,pc),r0 ; r0 set to 0x14f
mov.b @(r0,r5),r1
mov.w @(loc_8C0DF374,pc),r0 ; r0 set to 0xCc
extu.b r1,r1
mov.l r1,@(r0,r14) 	
mov r4,r0 ; r0 ??? bc r4 is ???	
nop 	
mov.b r0,@(0x05,r14) 	
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov.w @(loc_8C0DF378,pc),r0 ; r0 set to 0x141
bra loc_8C0DF354
mov.b r3,@(r0,r14) 	

loc_8C0DF34E:
mov.w @(loc_8C0DF36E,pc),r0 ; r0 set to 0x12c
mov.b r4,@r14
mov.b r4,@(r0,r14) 	

loc_8C0DF354:
mov.w @(loc_8C0DF374,pc),r0 ; r0 set to 0xCC, r0 set to 0xCc
mov r14,r4
lds.l @r15+,pr 	
mov.l @(r0,r14),r3
mov.l @(loc_8C0DF394,pc),r0 ; r0 set to 0x8C15E6E8, r0 set to 0x8C15E6E8
shar r3
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14
#data 0x1F02

loc_8C0DF36A:
#data 0x00Dc

loc_8C0DF36C:
#data 0x00C0

loc_8C0DF36E:
#data 0x012c

loc_8C0DF370:
#data 0x01A3

loc_8C0DF372:
#data 0x0130

loc_8C0DF374:
#data 0x00Cc

loc_8C0DF376:
#data 0x014f

loc_8C0DF378:
#data 0x0141
#data 0x0000

#align4
loc_8C0DF37C:
#data bank04.loc_8c044F12

loc_8C0DF380:
#data loc_8c0dF26c

loc_8C0DF384:
#data bank04.loc_8c0450C0

loc_8C0DF388:
#data bank12.loc_8c129560

loc_8C0DF38C:
#data bank12.loc_8c1294C8

loc_8C0DF390:
#data bank10.loc_8c104434

loc_8C0DF394:
#data 0x8c15E6E8

loc_8C0DF398:
#data 0xF246E034
#data 0xF231F356
#data 0xF325F38d
#data 0xE6008F01
#data 0xE601

loc_8C0DF3AA:
#data 0x000b
#data 0x606c
;-------------------------------------------------------------------------------

loc_8C0DF3AE:
mov.l r14,@-r15
mov 0x00,r0 ; r0 set to 0x00
sts.l pr,@-r15
mov.l @(loc_8C0DF494,pc),r3 ; r3 set to 0x8C03319e
mov r4,r14
jsr @r3
mov.b r0,@(0x05,r14) 	
tst 0x03,r0 	
bt/s loc_8C0DF3C6
mov 0x1B,r5 ; r5 set to 0x1b
bra loc_8C0DF3C8
mov 0x50,r6

loc_8C0DF3C6:
mov 0x51,r6 ; r6 set to 0x51

loc_8C0DF3C8:
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0DF638
mov.l @r15+,r14

loc_8C0DF3D0:
mov 0x01,r0 ; r0 set to 0x01
mov.b r0,@(0x05,r4) 	
mov 0x01,r3 ; r3 set to 0x01
mov.w @(loc_8C0DF48C,pc),r0 ; r0 set to 0x130
mov 0x54,r6 ; r6 set to 0x54
mov.w @(r0,r4),r2
xor r3,r2
mov.w r2,@(r0,r4) 	
bra loc_8C0DF638
mov 0x1B,r5

#align4
loc_8C0DF3E4:
#data 0xF408C72c
#data 0x035D9050
#data 0x89012338
#data 0xF408C72a

#align4
loc_8C0DF3F4:
#data 0xF356E034
#data 0xF346F430
#data 0x000BF431
#data 0xF04c
;-------------------------------------------------------------------------------

loc_8C0DF402:
#data 0x9044
#data 0xE51B6643
#data 0x066E2F46
#data 0x4621D024
#data 0xA111066c
#data 0x7F04


loc_8C0DF416:
mov.l r14,@-r15
mova @(loc_8C0DF4A4,pc),r0  ; r0 init to 0x8C0DF4A4
mov.l r13,@-r15
mov r4,r14
fmov.s fr15,@-r15
sts.l pr,@-r15
fmov.s @r0,fr15
mov.b @(0x05,r14),r0 	
tst r0,r0
bf/s loc_8C0DF4D0
mov r5,r13
mov r13,r5
bsr loc_8C0DF398
mov r14,r4
mov.w @(loc_8C0DF48C,pc),r2 ; r2 set to 0x130
add r14,r2 ; r2 ??? bc r14 is ???	
mov.w @r2,r2
cmp/eq r2,r0
bf loc_8C0DF4F4
mov.w @(loc_8C0DF490,pc),r0 ; r0 set to 0x141
mov.b @(r0,r14),r2
tst r2,r2
bf loc_8C0DF448
bra loc_8C0DF53e
nop 	

#align4
loc_8C0DF448:
#data 0xBFCB65D3
#data 0xF38D64E3
#data 0xF345F40c
#data 0xE4008F02
#data 0xF44DE401

#align4
loc_8C0DF45C:
#data 0x8967FF45
#data 0x80E5E002
#data 0x9014644e
#data 0x8D012448
#data 0xF44D81Ee

#align4
loc_8C0DF470:
#data 0x02ED900c
#data 0x8D012228
#data 0xF44DF38d

#align4
loc_8C0DF47C:
#data 0x8B15F345
#data 0xF208C709
#data 0xFE27E05c
#data 0xE652A015

loc_8C0DF48C:
#data 0x0130
#data 0x00Cc

loc_8C0DF490:
#data 0x0141
#data 0x0160

#align4
loc_8C0DF494:
#data bank03.loc_8c03319e
#data 0x42D55555
#data 0xC2D55555

#align4
loc_8C0DF4A0:
#data 0x8c15E728

loc_8C0DF4A4:
#data 0x41D55555
#data 0xC0D55555

#align4
loc_8C0DF4AC:
#data 0xF208C72a
#data 0xE653E05c
#data 0xFE27

loc_8C0DF4B6:
#data 0x904d
#data 0x233803Ed
#data 0xE51B8D04
#data 0xF3E6E05c
#data 0xFE37F34d

#align4
loc_8C0DF4C8:
#data 0x64E3B0B6
#data 0x0009A037


loc_8C0DF4D0:
mov.b @(0x05,r14),r0 	
extu.b r0,r0
cmp/eq 0x01,r0 	
bf loc_8C0DF4E4
bsr loc_8C0DF658
mov r14,r4
cmp/pz r0
bt loc_8C0DF54a
bra loc_8C0DF530
nop 	

loc_8C0DF4E4:
mov r13,r5
bsr loc_8C0DF398
mov r14,r4
mov.w @(loc_8C0DF554,pc),r2 ; r2 set to 0x130
add r14,r2 ; r2 ??? bc r14 is ???	
mov.w @r2,r2
cmp/eq r2,r0
bt loc_8C0DF502

loc_8C0DF4F4:
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
fmov.s @r15+,fr15
mov.l @r15+,r13
bra loc_8C0DF3D0
mov.l @r15+,r14

loc_8C0DF502:
#data 0xE15c
#data 0xE03431Ec
#data 0xF2E6F318
#data 0xFE27F230
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x8B094011
#data 0xBF6165D3
#data 0xF38D64E3
#data 0xF345F40c
#data 0xF44D8B00

#align4
loc_8C0DF52C:
#data 0x8B06FF45


loc_8C0DF530:
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
fmov.s @r15+,fr15
mov.l @r15+,r13
bra loc_8C0DF3Ae
mov.l @r15+,r14

loc_8C0DF53E:
lds.l @r15+,pr 	
mov r14,r4
fmov.s @r15+,fr15
mov.l @r15+,r13
bra loc_8C0DF658
mov.l @r15+,r14

loc_8C0DF54A:
lds.l @r15+,pr 	
fmov.s @r15+,fr15
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0DF554:
#data 0x0130
#data 0x0000
#data 0x40A00000

#align4
loc_8C0DF55C:
#data 0x6E432FE6
#data 0x4F222FD6
#data 0x200884E5
#data 0x6D538F1a
#data 0x65D384E5
#data 0x80E57001
#data 0x03DD9080
#data 0x0E36907f
#data 0x64E3BF41
#data 0xF4D6E034
#data 0xF431F3E6
#data 0xF345F38d
#data 0xF44D8B00

#align4
loc_8C0DF590:
#data 0xF308C73b
#data 0x8903F435
#data 0xE64FE51b
#data 0x64E3B04c

#align4
loc_8C0DF5A0:
#data 0x03DD906a
#data 0x02EE9069
#data 0x8D023320
#data 0xE00064E3
#data 0x80E5

loc_8C0DF5B2:
#data 0x4F26
#data 0xA04F6DF6
#data 0x6EF6

loc_8C0DF5BA:
#data 0x2FE6
#data 0x4F226E43
#data 0x200884E5
#data 0x84E58B04
#data 0x80E57001
#data 0x64E3BF19

#align4
loc_8C0DF5D0:
#data 0x64E34F26
#data 0x6EF6A040

#align4
loc_8C0DF5D8:
#data 0x4F222FE6
#data 0x6E437FFc
#data 0x84E52F52
#data 0x8B052008
#data 0x700184E5
#data 0x65F280E5
#data 0x64E3BF07

#align4
loc_8C0DF5F4:
#data 0x02EC9042
#data 0x89052228
#data 0x0E34E300
#data 0xD320E522
#data 0x64F2430b

#align4
loc_8C0DF608:
#data 0x7F0464E3
#data 0xA0234F26
#data 0x6EF6

loc_8C0DF612:
#data 0x2FE6
#data 0x4F226E43
#data 0x200884E5
#data 0x84E58B06
#data 0xE65FE51b
#data 0x80E57001
#data 0x64E3B006

#align4
loc_8C0DF62C:
#data 0x64E34F26
#data 0x6EF6A012


loc_8C0DF634:
bra loc_8C0DF658
nop 	

loc_8C0DF638:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0DF688,pc),r3 ; r3 set to 0x8C034C38
jsr @r3
mov.l r4,@r15
mov.w @(loc_8C0DF67E,pc),r3 ; r3 set to 0xE0
mov r0,r4
mov.l @r15,r2
mov r3,r0 ; r0 set to 0xE0
nop 	
add 0x69,r0 ; r0 set to 0x149
mov.b r3,@(r0,r2) 	
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov r4,r0
;-------------------------------------------------------------------------------

loc_8C0DF658:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0DF68C,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov.l r4,@r15
mov.w @(loc_8C0DF67E,pc),r3 ; r3 set to 0xE0
exts.b r0,r4
mov.l @r15,r2
mov r3,r0 ; r0 set to 0xE0
nop 	
add 0x69,r0 ; r0 set to 0x149
mov.b r3,@(r0,r2) 	
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov r4,r0
;-------------------------------------------------------------------------------
#data 0x00D00260
#data 0x0141

loc_8C0DF67E:
#data 0x00E0
#data 0x43555555

#align4
loc_8C0DF684:
#data bank04.loc_8c042008

loc_8C0DF688:
#data bank03.loc_8c034C38

loc_8C0DF68C:
#data bank03.loc_8c034D8c

loc_8C0DF690:
#data 0x4F222FE6
#data 0x2F507FFc
#data 0xD342E503
#data 0xE6006E43
#data 0x6463430b
#data 0x8D132008
#data 0xD33F6403
#data 0x1434E020
#data 0x62F0E300
#data 0xE0210424
#data 0x936A0434
#data 0x84E114E6
#data 0xE0268041
#data 0x90650435
#data 0x906402Ed
#data 0x0426622d

#align4
loc_8C0DF6D0:
#data 0x00096043
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0DF6DC:
#data 0x4F22915c
#data 0x314C8444
#data 0x7001D331
#data 0x80449256
#data 0x430B9055
#data 0x9053325c
#data 0x6143E201
#data 0x04247150
#data 0x80428452
#data 0x80418451
#data 0xF356E050
#data 0xE054F437
#data 0xF437F356
#data 0x035C9045
#data 0x70010434
#data 0x0424025c
#data 0x035CE030
#data 0x72506253
#data 0xD3220434
#data 0xE00C430b
#data 0xE0244F26
#data 0x000B025c
#data 0x0424
;-------------------------------------------------------------------------------

loc_8C0DF736:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0DF73A:
#data 0x2FE6
#data 0x2FD66E43
#data 0x84E44F22
#data 0x8F082008
#data 0x65D36D53
#data 0x64E3BFC6
#data 0xE51BD218
#data 0x420BE618
#data 0x64E3

loc_8C0DF75A:
#data 0xE024
#data 0x0E34E30b
#data 0xF3D6E034
#data 0xE038FE37
#data 0xFE37F3D6
#data 0x03DD9018
#data 0xD3110E35
#data 0x64E3430b
#data 0x4011600e
#data 0x84E48905
#data 0x7001E300
#data 0x900980E4
#data 0x0E34

loc_8C0DF78A:
#data 0x4F26
#data 0x000B6DF6
#data 0x1F036EF6
#data 0x00D00158
#data 0x00C000Dc
#data 0x01A3012c
#data 0x00000130

#align4
loc_8C0DF7A4:
#data bank04.loc_8c044F12

loc_8C0DF7A8:
#data loc_8c0dFB52

loc_8C0DF7AC:
#data bank12.loc_8c129560

loc_8C0DF7B0:
#data bank12.loc_8c1294C8

loc_8C0DF7B4:
#data bank03.loc_8c034C38

loc_8C0DF7B8:
#data bank03.loc_8c034D8c

loc_8C0DF7BC:
#data 0x6E432FE6
#data 0x2FC62FD6
#data 0x84E44F22
#data 0x2008DC36
#data 0x6D538F16
#data 0xBF8365D3
#data 0xE51B64E3
#data 0x4C0BE621
#data 0x905B64E3
#data 0xE30BE4Ff
#data 0xE0310E46
#data 0xE0340E44
#data 0xFE37F3D6
#data 0xF3D69053
#data 0xFE37E038
#data 0x0E34E024

#align4
loc_8C0DF7FC:
#data 0x200884E5
#data 0x904B8B39
#data 0x222802Dc
#data 0xE0018903
#data 0xA01C80E5
#data 0xE624

loc_8C0DF812:
#data 0x84D5
#data 0x8803600c
#data 0x4F268B06
#data 0x64E3D222
#data 0x6DF66CF6
#data 0x6EF6422b

#align4
loc_8C0DF828:
#data 0x02EE9036
#data 0x03DE9037
#data 0x890F3320
#data 0x882400De
#data 0x84E58B02
#data 0x80E57001

#align4
loc_8C0DF840:
#data 0x03DE902d
#data 0x0E369028
#data 0x06Ee

loc_8C0DF84A:
#data 0xE51b
#data 0x64E34C0b
#data 0x0009A01d

#align4
loc_8C0DF854:
#data 0x02EC9024
#data 0x89052228
#data 0x0E34E300
#data 0xD312E523
#data 0x64D3430b

#align4
loc_8C0DF868:
#data 0xD2114F26
#data 0x6CF664E3
#data 0x422B6DF6
#data 0x6EF6

loc_8C0DF876:
#data 0xD20e
#data 0x64E3420b
#data 0x4011600e
#data 0x84E48905
#data 0x7001E300
#data 0x900A80E4
#data 0x0E34

loc_8C0DF88E:
#data 0x4F26
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x041C00Cc
#data 0x02F00411
#data 0x012C0141

#align4
loc_8C0DF8A4:
#data bank03.loc_8c034C38

loc_8C0DF8A8:
#data bank04.loc_8c0450C0

loc_8C0DF8AC:
#data bank04.loc_8c042008

loc_8C0DF8B0:
#data bank03.loc_8c034D8c

loc_8C0DF8B4:
#data 0x6E432FE6
#data 0x4F222FD6
#data 0x200884E4
#data 0x6D538F14
#data 0xBF0965D3
#data 0xD21B64E3
#data 0xE625E51b
#data 0x64E3420b
#data 0x81EEE002
#data 0xE3FFE031
#data 0xE0340E34
#data 0xFE37F3D6
#data 0xF3D69026
#data 0xFE37E038

#align4
loc_8C0DF8EC:
#data 0x430BD313
#data 0x600E64E3
#data 0x89054011
#data 0xD3114F26
#data 0x6DF664E3
#data 0x6EF6432b

#align4
loc_8C0DF904:
#data 0x03EC9017
#data 0x890F2338
#data 0x0E34E300
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x89074011
#data 0xE00264D3
#data 0xE50581Ee
#data 0x6DF64F26
#data 0x6EF6AEB2

#align4
loc_8C0DF92C:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x0141041c

#align4
loc_8C0DF938:
#data bank03.loc_8c034C38

loc_8C0DF93C:
#data bank03.loc_8c034D8c

loc_8C0DF940:
#data bank04.loc_8c0450C0

loc_8C0DF944:
#data 0x6E432FE6
#data 0x2FC62FD6
#data 0x84E44F22
#data 0x8F482008
#data 0x65D36D53
#data 0x64E3BEC0
#data 0xE51BD247
#data 0x420BE626
#data 0xE05C64E3
#data 0xDC45F48d
#data 0xE068FE47
#data 0xFE474C0b
#data 0x70A0C97f
#data 0x4011405a
#data 0xF32D8D04
#data 0x435AD340
#data 0xF320F20d

#align4
loc_8C0DF988:
#data 0xF43CC73f
#data 0x9070F208
#data 0x03DDF422
#data 0x8D012338
#data 0xF44D0E35

#align4
loc_8C0DF99C:
#data 0xF3D6E034
#data 0x4C0BF340
#data 0xC93FFE37
#data 0x405A7050
#data 0x8D044011
#data 0xD334F32d
#data 0xF20D435a
#data 0xF320

loc_8C0DF9BA:
#data 0xC734
#data 0x9059F008
#data 0xE038F2D6
#data 0x4C0BF23e
#data 0xE403FE27
#data 0xD0302409
#data 0xF3464408
#data 0xE3FFE060
#data 0xC72EFE37
#data 0xE06CF308
#data 0xE031FE37
#data 0x0E34

loc_8C0DF9E6:
#data 0x84D5
#data 0x8803600c
#data 0xD22A8905
#data 0x64E3420b
#data 0x4011600e
#data 0x8906

loc_8C0DF9FA:
#data 0x4F26
#data 0x64E3D227
#data 0x6DF66CF6
#data 0x6EF6422b

#align4
loc_8C0DFA08:
#data 0x31ECE15c
#data 0xF318E034
#data 0xE168F2E6
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
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0DFA4A:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0DFA76,pc),r0 ; r0 set to 0x158
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.w @(r0,r13),r3
mov.w @(loc_8C0DFA78,pc),r0 ; r0 set to 0xD0
extu.w r3,r3
mov.l @(r0,r14),r2
cmp/eq r3,r2
bt loc_8C0DFAA0
mov.b @(0x04,r14),r0 	
mov 0x00,r4 ; r4 set to 0x00
add 0x01,r0 ; r0 set to 0xD1
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0DFA7A,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
bra loc_8C0DFAFc
mov.b r4,@r14
#data 0x0130
#data 0x041c

loc_8C0DFA76:
#data 0x0158

loc_8C0DFA78:
#data 0x00D0

loc_8C0DFA7A:
#data 0x012c

#align4
loc_8C0DFA7C:
#data bank03.loc_8c034C38

loc_8C0DFA80:
#data bank03.loc_8c03319e
#data 0x4F800000
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0DFA90:
#data 0x8c15E738
#data 0xBE092492

#align4
loc_8C0DFA98:
#data bank03.loc_8c034D8c

loc_8C0DFA9C:
#data bank04.loc_8c0450C0

loc_8C0DFAA0:
#data 0x200884E4
#data 0xE3018B22
#data 0x2E3065D3
#data 0x64E3BE16
#data 0xF408C734
#data 0x03DD9062
#data 0x8D022338
#data 0xC7320E35
#data 0xF408

loc_8C0DFAC2:
#data 0xE034
#data 0xF3D6D331
#data 0xE635E51b
#data 0xFE37F340
#data 0xF3D69055
#data 0xFE37E038
#data 0x64E3430b
#data 0x60239250
#data 0xD32B0009
#data 0x0E247069
#data 0x64E3430b

#align4
loc_8C0DFAEC:
#data 0x420BD229
#data 0x934564E3
#data 0x00096033
#data 0x0E347069


loc_8C0DFAFC:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0DFB04:
#data 0x6E432FE6
#data 0x4F222FD6
#data 0x200884E4
#data 0x6D538F12
#data 0xBDE165D3
#data 0xE03464E3
#data 0xE51BF3D6
#data 0xFE37E663
#data 0xF3D6902b
#data 0xFE37E038
#data 0x03DD9026
#data 0xD3160E35
#data 0x64E3430b

#align4
loc_8C0DFB38:
#data 0x420BD216
#data 0x600E64E3
#data 0x89024011
#data 0x700184E4
#data 0x80E4

loc_8C0DFB4A:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0DFB52:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov 0x02,r3 ; r3 set to 0x02
extu.b r0,r0
cmp/ge r3,r0
bf/s loc_8C0DFB6a
mov.l @(0x18,r14),r5
mov.l @(loc_8C0DFB98,pc),r1 ; r1 set to 0x8C0450C0
mov r14,r4
jmp @r1
mov.l @r15+,r14

loc_8C0DFB6A:
mov 0x20,r0 ; r0 set to 0x20
mov r14,r4
mov.b @(r0,r14),r2
mov.l @(loc_8C0DFB9C,pc),r0 ; r0 set to 0x8C15E748
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r1
jmp @r1
mov.l @r15+,r14
#data 0x041C0130
#data 0x000000E0
#data 0x42D55555
#data 0xC2D55555

#align4
loc_8C0DFB8C:
#data bank03.loc_8c034C38

loc_8C0DFB90:
#data bank10.loc_8c104434

loc_8C0DFB94:
#data bank03.loc_8c034D8c

loc_8C0DFB98:
#data bank04.loc_8c0450C0

loc_8C0DFB9C:
#data 0x8c15E748
#data 0x7FF44F22
#data 0x60531F42
#data 0xD3310009
#data 0x80F4E503
#data 0xE6002F60
#data 0x6463430b
#data 0x8D0E2008
#data 0xD32D6403
#data 0x314CE120
#data 0x52F21434
#data 0x84F41426
#data 0x2100924d
#data 0x63F0E021
#data 0xE0260434
#data 0x7F0C0425
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0DFBE2:
#data 0x4F22
#data 0x2F427FF4
#data 0x00096053
#data 0x606380F8
#data 0xD31F0009
#data 0x80F4E503
#data 0x430BE600
#data 0x20086463
#data 0x64038D12
#data 0xE120D31b
#data 0x1434314c
#data 0x532662F2
#data 0x62F21436
#data 0x14259329
#data 0x84F8E221
#data 0x2100324c
#data 0x220084F4
#data 0x0435E026

#align4
loc_8C0DFC28:
#data 0x4F267F0c
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0DFC30:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0DFC6C,pc),r2 ; r2 set to 0x2A4
mov 0x20,r0 ; r0 set to 0x20
mov.l @(0x18,r14),r3
mov r14,r4
mov.w @(loc_8C0DFC6E,pc),r1 ; r1 set to 0xCc
add r3,r2 ; r2 ??? bc r3 is ???	
mov.l @(loc_8C0DFC78,pc),r3 ; r3 set to 0x8C28C6D4
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l r2,@r3 ; r3 ??? bc r2 is ???	
mov.l @(loc_8C0DFC7C,pc),r2 ; r2 set to 0x8C28C6D0
mov.l r1,@r2 ; r2 ??? bc r1 is ???	
mov.b @(r0,r14),r3
mov.l @(loc_8C0DFC80,pc),r0 ; r0 set to 0x8C15E918
extu.b r3,r3
shll2 r3
mov.l @(r0,r3),r1
jmp @r1
mov.l @r15+,r14

loc_8C0DFC58:
mov r4,r3
mov.l @(loc_8C0DFC84,pc),r1 ; r1 set to 0x8C15E92c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x2000

loc_8C0DFC6C:
#data 0x02A4

loc_8C0DFC6E:
#data 0x00Cc

#align4
loc_8C0DFC70:
#data bank04.loc_8c044F12

loc_8C0DFC74:
#data loc_8c0dFC30

loc_8C0DFC78:
#data 0x8C28C6D4

#align4
loc_8C0DFC7C:
#data 0x8C28C6D0

#align4
loc_8C0DFC80:
#data 0x8c15E918

loc_8C0DFC84:
#data 0x8c15E92c


loc_8C0DFC88:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0DFD68,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0DFD74,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0DFD68,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r14),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0DFD6A,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0DFD6C,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0DFD78,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r14),r1
mov 0x00,r2 ; r2 set to 0x00
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov 0x1B,r5 ; r5 set to 0x1b
mov.b r2,@(r0,r14) 	
mov 0x00,r6 ; r6 set to 0x00
mov.l @(0x18,r14),r2 ; r2 ??? bc r14 is ???	
mov.w @(loc_8C0DFD6E,pc),r0 ; r0 set to 0x158
mov.l @(loc_8C0DFD7C,pc),r1 ; r1 set to 0x8C28C6D0
mov.w @(r0,r2),r2
mov.l @r1,r3
mov.w r2,@r3
mov.l @(loc_8C0DFD80,pc),r3 ; r3 set to 0x8C034C38
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r14,r4
mov.l @r15+,r14

loc_8C0DFD12:
mov.l @(loc_8C0DFD7C,pc),r2 ; r2 set to 0x8C28C6D0, r2 set to 0x8C28C6D0
mov.w @(loc_8C0DFD6E,pc),r0 ; r0 set to 0x158, r0 set to 0x158
mov.l @r2,r3 ; r3 ??	
mov.w @r3,r1 ; r1 ??? bc r3 is ???	
mov.l @(0x18,r4),r3
mov.w @(r0,r3),r0 ; r0 ??? bc r3 is ???, r0 ??? bc r3 is ???	
cmp/eq r0,r1
bt loc_8C0DFD26
bra bank0e.loc_8c0e043a
nop 	

loc_8C0DFD26:
mov.w @(loc_8C0DFD70,pc),r0 ; r0 set to 0x141
mov.l @(0x18,r4),r3
mov.b @(r0,r3),r2
tst r2,r2
bt loc_8C0DFD38
mov.w @(loc_8C0DFD6A,pc),r0 ; r0 set to 0x12c
mov 0x00,r2 ; r2 set to 0x00
rts 	
mov.b r2,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0DFD38:
mov.w @(loc_8C0DFD6A,pc),r0 ; r0 set to 0x12c
mov 0x01,r3 ; r3 set to 0x01
mov.b r3,@(r0,r4) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r4),r2
fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???	
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
mov.l @(loc_8C0DFD84,pc),r3 ; r3 set to 0x8C034D8c
jmp @r3
fmov.s fr3,@(r0,r4) 	
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0DFD56:
mov r4,r3
mov.l @(loc_8C0DFD88,pc),r1 ; r1 set to 0x8C15E93c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0DFD68:
#data 0x00Dc

loc_8C0DFD6A:
#data 0x012c

loc_8C0DFD6C:
#data 0x01A3

loc_8C0DFD6E:
#data 0x0158

loc_8C0DFD70:
#data 0x0141
#data 0x0000

#align4
loc_8C0DFD74:
#data bank12.loc_8c129560

loc_8C0DFD78:
#data bank12.loc_8c1294C8

loc_8C0DFD7C:
#data 0x8C28C6D0

#align4
loc_8C0DFD80:
#data bank03.loc_8c034C38

loc_8C0DFD84:
#data bank03.loc_8c034D8c

loc_8C0DFD88:
#data 0x8c15E93c


loc_8C0DFD8C:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0DFEA2,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0DFEAC,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0DFEA2,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r14),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0DFEA4,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0DFEA6,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0DFEB0,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r14),r1
mov 0x00,r4 ; r4 set to 0x00
mov 0x24,r0 ; r0 set to 0x24
mov.l @(loc_8C0DFEB4,pc),r5 ; r5 set to 0x8C28C6D0
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r4,@(r0,r14) 	
mov.l @(0x18,r14),r2
mov.w @(loc_8C0DFEA8,pc),r0 ; r0 set to 0x158
mov.l @r5,r3
mov.w @(r0,r2),r1
mov.w r1,@r3
mov.l @r5,r3
mov r4,r0 ; r0 set to 0x00
nop 	
mov.b r0,@(0x02,r3) 	
mov 0x1B,r5 ; r5 set to 0x1b
mov.l @(loc_8C0DFEB8,pc),r3 ; r3 set to 0x8C034C38
mov 0x01,r6 ; r6 set to 0x01
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???	
lds.l @r15+,pr 	
mov r14,r4
mov.l @r15+,r14

loc_8C0DFE1E:
mov.l r14,@-r15
mov.l @(loc_8C0DFEB4,pc),r14 ; r14 set to 0x8C28C6D0, r14 set to 0x8C28C6D0
mov.w @(loc_8C0DFEA8,pc),r0 ; r0 set to 0x158, r0 set to 0x158
mov.l @r14,r3 ; r3 ??	
mov.w @r3,r2
mov.l @(0x18,r4),r3
mov.w @(r0,r3),r1
cmp/eq r1,r2
bt loc_8C0DFE34
bra bank0e.loc_8c0e043a
mov.l @r15+,r14

loc_8C0DFE34:
mov.w @(loc_8C0DFEAA,pc),r0 ; r0 set to 0x140
mov.l @(0x18,r4),r3
mov.b @(r0,r3),r2
cmp/pl r2
bt loc_8C0DFE48
mov.w @(loc_8C0DFEA4,pc),r0 ; r0 set to 0x12c
mov 0x00,r2 ; r2 set to 0x00
mov.b r2,@(r0,r4) 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0DFE48:
mov.w @(loc_8C0DFEA4,pc),r0 ; r0 set to 0x12c
mov 0x01,r3 ; r3 set to 0x01
mov.b r3,@(r0,r4) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r4),r2
fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???	
mov.w @(loc_8C0DFEAA,pc),r2 ; r2 set to 0x140
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov.l @r14,r3
mov.b @(0x02,r3),r0 	
mov.l @(0x18,r4),r3
add r3,r2 ; r2 ??? bc r3 is ???	
mov.b @r2,r2
cmp/eq r2,r0
bf loc_8C0DFE74
mov.l @(loc_8C0DFEBC,pc),r2 ; r2 set to 0x8C034D8c
jmp @r2
mov.l @r15+,r14

loc_8C0DFE74:
mov.w @(loc_8C0DFEAA,pc),r1 ; r1 set to 0x140
mov 0x1B,r5 ; r5 set to 0x1b
mov.l @(0x18,r4),r0
mov.l @r14,r3
mov.b @(r0,r1),r0
mov.b r0,@(0x02,r3) 	
mov.l @r14,r6
mov.l @(loc_8C0DFEB8,pc),r3 ; r3 set to 0x8C034C38
mov.b @(0x02,r6),r0 	
mov r0,r6
jmp @r3
mov.l @r15+,r14
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0DFE90:
mov r4,r3
mov.l @(loc_8C0DFEC0,pc),r1 ; r1 set to 0x8C15E94c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0DFEA2:
#data 0x00Dc

loc_8C0DFEA4:
#data 0x012c

loc_8C0DFEA6:
#data 0x01A3

loc_8C0DFEA8:
#data 0x0158

loc_8C0DFEAA:
#data 0x0140

#align4
loc_8C0DFEAC:
#data bank12.loc_8c129560

loc_8C0DFEB0:
#data bank12.loc_8c1294C8

loc_8C0DFEB4:
#data 0x8C28C6D0

#align4
loc_8C0DFEB8:
#data bank03.loc_8c034C38

loc_8C0DFEBC:
#data bank03.loc_8c034D8c

loc_8C0DFEC0:
#data 0x8c15E94c


loc_8C0DFEC4:
mov.w @(loc_8C0DFFB2,pc),r0 ; r0 set to 0x1C8
mov.w @(loc_8C0DFFB4,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.l @(0x18,r4),r5
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0DFFBC,pc),r3 ; r3 set to 0x8C129560
mov.l @(r0,r5),r5
mov.b @(0x04,r4),r0 	
add 0x01,r0 ; r0 set to 0x1C9
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0DFFB4,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0DFFB6,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0DFFB8,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0DFFC0,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x0A,r2 ; r2 set to 0x0a
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov.b r2,@(r0,r4) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r4) 	
mov.b @(0x01,r5),r0 	
mov.l @(loc_8C0DFFC4,pc),r1 ; r1 set to 0x8C15E7A4
extu.b r0,r0 ; r0 set to 0x31
mov.b @(r0,r1),r6
mov.w @(loc_8C0DFFBA,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r3 ; r3 ??? bc r4 is ???	
tst r3,r3
bt loc_8C0DFF56
mov.l @(loc_8C0DFFC8,pc),r0 ; r0 set to 0x8C15E7E0
extu.b r6,r3
shll2 r3
fmov.s @(r0,r3),fr3
bra loc_8C0DFF60
nop 	

loc_8C0DFF56:
mov.l @(loc_8C0DFFC8,pc),r0 ; r0 set to 0x8C15E7E0
extu.b r6,r2
shll2 r2
fmov.s @(r0,r2),fr3
fneg fr3

loc_8C0DFF60:
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
mov r0,r1 ; r1 set to 0x34, r1 set to 0x34
add r5,r1 ; r1 ??? bc r5 is ???, r1 ??? bc r5 is ???	
fmov.s fr3,@(r0,r4) 	
mov 0x08,r3 ; r3 set to 0x08, r3 set to 0x08
fmov.s @(r0,r4),fr2
mov r3,r6 ; r6 set to 0x08, r6 set to 0x08
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???	
mov.l @(loc_8C0DFFCC,pc),r1 ; r1 set to 0x8C15E7F8, r1 set to 0x8C15E7F8
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov.b @(0x01,r5),r0 	
extu.b r0,r0 ; r0 set to 0x34, r0 set to 0x34
shll2 r0 ; r0 set to 0xD0, r0 set to 0xD0
fmov.s @(r0,r1),fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r5),fr2
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
mov.l @(loc_8C0DFFD0,pc),r1 ; r1 set to 0x8C15E8E4, r1 set to 0x8C15E8E4
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00
mov.w r0,@(0x1E,r4) 	
mov.w @(0x1E,r4),r0 	
shll r0 ; r0 set to 0x00, r0 set to 0x00
mov.w @(r0,r1),r0 ; r0 ??, r0 ??	
mov.w r0,@(0x1C,r4) 	
mov 0x22,r0 ; r0 set to 0x22, r0 set to 0x22
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0DFFD4,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
jmp @r3
lds.l @r15+,pr 	

loc_8C0DFFA0:
mov r4,r3
mov.l @(loc_8C0DFFD8,pc),r1 ; r1 set to 0x8C15E95c
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0DFFB2:
#data 0x01C8

loc_8C0DFFB4:
#data 0x00Dc

loc_8C0DFFB6:
#data 0x012c

loc_8C0DFFB8:
#data 0x01A3

loc_8C0DFFBA:
#data 0x0130

#align4
loc_8C0DFFBC:
#data bank12.loc_8c129560

loc_8C0DFFC0:
#data bank12.loc_8c1294C8

loc_8C0DFFC4:
#data 0x8c15E7A4

loc_8C0DFFC8:
#data 0x8c15E7E0

loc_8C0DFFCC:
#data 0x8c15E7F8

loc_8C0DFFD0:
#data 0x8c15E8E4

loc_8C0DFFD4:
#data bank03.loc_8c034C38

loc_8C0DFFD8:
#data 0x8c15E95c

loc_8C0DFFDC:
#data 0xFFFB2FE6
#data 0x7FF04F22
#data 0x53E66E43
#data 0xD3382F32
#data 0x64E3430b
#data 0x02ECE022
#data 0x0E2472Ff
#data 0x2228622c
#data 0xE1048B36

#align4
loc_8C0E0000:
#data 0x0E14D334
#data 0x430BC732
#data 0xC97FFF08
#data 0x4011405a
#data 0xF32D8D04
#data 0x425AD230
#data 0xF320F20d

#align4
loc_8C0E001C:
#data 0xE004F3F0
#data 0xFF37D32c
#data 0xF308C72d
#data 0xF2F6E004
#data 0xF232E004
#data 0xFF27430b
#data 0x405AC97f
#data 0x8D044011
#data 0xD226F32d
#data 0xF20D425a
#data 0xF320

loc_8C0E0046:
#data 0xF3F0
#data 0xD326E008
#data 0x750465F3
#data 0xFF37E600
#data 0xF308C722
#data 0xF2F6E008
#data 0xF232E008
#data 0xE00CFF27
#data 0xFF27F28d
#data 0x64E3430b

#align4
loc_8C0E006C:
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x8B142008
#data 0xE50385Ef
#data 0xBDB06603
#data 0x85EF64E3
#data 0x7001D418
#data 0x85EF81Ef
#data 0x004D4000
#data 0x8D064011
#data 0xE00081Ee
#data 0x85EF81Ef
#data 0x004D4000
#data 0x81Ee

loc_8C0E00A2:
#data 0x9011
#data 0x023C63F2
#data 0x8B052228
#data 0xE302D10f
#data 0x84296212
#data 0x8B023033

#align4
loc_8C0E00B8:
#data 0x700184E5
#data 0x80E5

loc_8C0E00BE:
#data 0x7F10
#data 0xFFF94F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x00000411

#align4
loc_8C0E00CC:
#data bank03.loc_8c034D8c
#data 0xC27C0000

#align4
loc_8C0E00D4:
#data bank03.loc_8c03319e
#data 0x4F800000
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0E00E4:
#data bank0f.loc_8c0fDAB6

loc_8C0E00E8:
#data 0x8c15E8E4
#data 0x8C28C6D4
