loc_8C0A0000:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
mov.w @(loc_8C0A00E4,pc),r1 ; r1 set to 0xDc
add 0x01,r0
mov.w @(loc_8C0A00E2,pc),r4 ; r4 set to 0x2A4
mov.b r0,@(0x04,r14) 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0A00E6,pc),r0 ; r0 set to 0xC0
add r13,r4 ; r4 ??? bc r13 is ???	
mov.w @(loc_8C0A00E4,pc),r2 ; r2 set to 0xDc
mov.l @(loc_8C0A00F4,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0A00E8,pc),r0 ; r0 set to 0x12c
mov 0x01,r5 ; r5 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r5,@(r0,r14) 	
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
mov.w @(loc_8C0A00EA,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0A00F8,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov 0xFE,r3 ; r3 set to 0xFFFFFFFe
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0A00E8,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov 0x32,r3 ; r3 set to 0x32
mov.b @(0x02,r4),r0 	
add 0x01,r0 ; r0 set to 0x32
mov.b r0,@(0x02,r4) 	
mov 0x00,r4 ; r4 set to 0x00
mov.w @(loc_8C0A00EC,pc),r0 ; r0 set to 0x1A1
mov.b r3,@(r0,r14) 	
add 0x0B,r0 ; r0 set to 0x1Ac
mov.w r4,@(r0,r14) 	
add 0xF2,r0 ; r0 set to 0x19e
mov.b r4,@(r0,r14) 	
add 0x26,r0 ; r0 set to 0x1C4
mov.l @(loc_8C0A00FC,pc),r3 ; r3 set to 0x8C2896B0
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
mov.w @(loc_8C0A00EE,pc),r0 ; r0 set to 0x19c
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x19d
mov.b r4,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
mov.l @(loc_8C0A0100,pc),r5 ; r5 set to 0x8C1563F0
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0A0104,pc),r0  ; r0 set to 0x8C0A0104
fmov.s @r0,fr4 ; r4 ??	
mov.w @(loc_8C0A00F0,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r2
tst r2,r2
bf/s loc_8C0A0108
mov r5,r4 ; r4 set to 0x8C1563F0
mov 0x21,r2 ; r2 set to 0x21
fmov fr4,fr0 ; r0 ??	
add r14,r2 ; r2 ??? bc r14 is ???	
mov.b @r2,r2
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r14),fr2
extu.b r2,r2
shll r2
shll r2
add r2,r4 ; r4 ??? bc r2 is ???	
mov.w @r4,r2
lds r2,fpul 	
float fpul,fr3
bra loc_8C0A0124
fmac fr0,fr3,fr2

loc_8C0A00E2:
#data 0x02A4

loc_8C0A00E4:
#data 0x00Dc

loc_8C0A00E6:
#data 0x00C0

loc_8C0A00E8:
#data 0x012c

loc_8C0A00EA:
#data 0x01A3

loc_8C0A00EC:
#data 0x01A1

loc_8C0A00EE:
#data 0x019c

loc_8C0A00F0:
#data 0x0130
#data 0x0000

#align4
loc_8C0A00F4:
#data bank12.loc_8c129560

loc_8C0A00F8:
#data bank12.loc_8c1294C8

loc_8C0A00FC:
#data 0x8C2896B0

#align4
loc_8C0A0100:
#data 0x8C1563F0

loc_8C0A0104:
#data 0x3FD55555

#align4
loc_8C0A0108:
#data 0x31ECE121
#data 0xE0346110
#data 0x611CF2E6
#data 0x41004100
#data 0x6241341c
#data 0xF32D425a
#data 0xF231F342

#align4
loc_8C0A0124:
#data 0xFE27E321
#data 0x62E333Ec
#data 0xD44DE038
#data 0x2F26320c
#data 0x6330E221
#data 0x4300633c
#data 0x353C4300
#data 0x63038551
#data 0x63F6435a
#data 0xF008C744
#data 0xF32DC744
#data 0xF23EF238
#data 0xF508F32a
#data 0x00DC907d
#data 0x6303600c
#data 0x303C4000
#data 0x622032Ec
#data 0x6323622c
#data 0x42004208
#data 0x302C323c
#data 0x024E4008
#data 0x425AE05c
#data 0xF342F32d
#data 0xFE37F353
#data 0x03DC9067
#data 0x01ECE021
#data 0x6233633c
#data 0x611C4300
#data 0x6213332c
#data 0x41004108
#data 0x331C312c
#data 0x334C4308
#data 0xE0685131
#data 0xF32D415a
#data 0xF353F342
#data 0xE060FE37
#data 0xFE37F38d
#data 0x03DC904d
#data 0x01ECE021
#data 0x633CE06c
#data 0x43006233
#data 0x332C611c
#data 0x41086213
#data 0x312C4100
#data 0x4308331c
#data 0x5342343c
#data 0xF32D435a
#data 0xF353F342
#data 0x9037FE37
#data 0x233803Ed
#data 0xE60C8D08
#data 0xF3E6E05c
#data 0xFE37F34d
#data 0xF3E6E068
#data 0xFE37F34d

#align4
loc_8C0A0200:
#data 0xE517D319
#data 0x64E3430b
#data 0xE104D318
#data 0x32136231
#data 0xE5018B0f
#data 0xBEAEE600
#data 0xE50164E3
#data 0xBEAAE600
#data 0xE50164E3
#data 0xBEA6E600
#data 0xE50164E3
#data 0xBEA2E600
#data 0x64E3

loc_8C0A0232:
#data 0x4F26
#data 0x64E365D3
#data 0x6EF66DF6


loc_8C0A023C:
mov 0x24,r0 ; r0 set to 0x24
mov.l r14,@-r15
mov.b @(r0,r5),r3
mov r4,r14
mov.l @(loc_8C0A0270,pc),r1 ; r1 set to 0x8C156458
mov r14,r4
mov.b r3,@(r0,r14) 	
mov.b @(0x05,r14),r0 	
extu.b r0,r0 ; r0 set to 0x24
shll2 r0 ; r0 set to 0x90
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x01A3
#data 0x00000130
#data 0x40092492
#data 0x47800000

#align4
loc_8C0A0264:
#data 0x8C1563F8

loc_8C0A0268:
#data bank03.loc_8c034e8c
#data 0x8C287AE8

#align4
loc_8C0A0270:
#data 0x8C156458

loc_8C0A0274:
#data 0x4F222FE6
#data 0xD34D7FFc
#data 0x2F526E43
#data 0x64E3430b
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
#data 0xF3E6E068
#data 0xF2E6E05c
#data 0xF38DF232
#data 0x8B03F235
#data 0xFE47F43c
#data 0xFE47E068

#align4
loc_8C0A02D4:
#data 0x63F2E038
#data 0x9065F3E6
#data 0xF325F236
#data 0x84E58909
#data 0x80E57001
#data 0x63F2905e
#data 0xE038F336
#data 0xA00FFE37
#data 0xE00c

loc_8C0A02F6:
#data 0x9058
#data 0x233803Ec
#data 0xD22D8B06
#data 0x64E3420b
#data 0x03EC9052
#data 0x89042338

#align4
loc_8C0A030C:
#data 0x700184E5
#data 0xE00180E5

loc_8C0A0314:
#data 0x81Ee

loc_8C0A0316:
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0A031E:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0A03B0,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r4,r14
mov.w @(0x1C,r14),r0 	
add 0xFF,r0
mov.w r0,@(0x1C,r14) 	
exts.w r0,r0
tst r0,r0
bf loc_8C0A0350
mov.b @(0x05,r14),r0 	
mov 0x17,r5 ; r5 set to 0x17
mov.l @(loc_8C0A03B8,pc),r3 ; r3 set to 0x8C034E8c
mov 0x0D,r6 ; r6 set to 0x0d
add 0x01,r0
mov.b r0,@(0x05,r14) 	
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov.l @(loc_8C0A03BC,pc),r2 ; r2 set to 0x8C04223a
mov 0x49,r5 ; r5 set to 0x49
mov r14,r4
jmp @r2
mov.l @r15+,r14

loc_8C0A0350:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0A0356:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov.w @(loc_8C0A03AE,pc),r2 ; r2 set to 0x2A4
mov r5,r3
mov.l r5,@r15
mov r4,r14
add r3,r2 ; r2 ??? bc r3 is ???	
mov.l @(loc_8C0A03B0,pc),r3 ; r3 set to 0x8C034DEe
mov.l r2,@(0x04,r15) 	
jsr @r3
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt loc_8C0A038e
mov.b @(0x04,r14),r0 	
mov r14,r4
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.l @(0x04,r15),r3 ; r3 ??? bc r15 is ???	
mov.b @(0x02,r3),r0 	
add 0xFF,r0
mov.b r0,@(0x02,r3) 	
mov.l @r15,r5
add 0x08,r15
lds.l @r15+,pr 	
bra loc_8C0A050e
mov.l @r15+,r14

loc_8C0A038E:
add 0x08,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0A0396:
mov r4,r3
mov.l @(loc_8C0A03C0,pc),r1 ; r1 set to 0x8C156464
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x019F041c
#data 0x019e

loc_8C0A03AE:
#data 0x02A4

#align4
loc_8C0A03B0:
#data bank03.loc_8c034dee

loc_8C0A03B4:
#data bank04.loc_8c045748

loc_8C0A03B8:
#data bank03.loc_8c034e8c

loc_8C0A03BC:
#data bank04.loc_8c04223a

loc_8C0A03C0:
#data 0x8C156464

loc_8C0A03C4:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x65E391Ab
#data 0x84E44F22
#data 0x92A6755c
#data 0x700131Ec
#data 0x80E454E5
#data 0xD35390A2
#data 0x32DC430b
#data 0xE601909f
#data 0x715061E3
#data 0x84D20E64
#data 0x84D180E2
#data 0xE05080E1
#data 0xFE37F3D6
#data 0xF3D6E054
#data 0x9091FE37
#data 0x0E3403Dc
#data 0x02DC7001
#data 0xE0300E24
#data 0x62D303Dc
#data 0x0E347250
#data 0x430BD345
#data 0xE024E00c
#data 0xE3FF02Dc
#data 0x907E0E24
#data 0xE0310E64
#data 0xE0340E34
#data 0xE608F346
#data 0xE038FE37
#data 0xFE37F346
#data 0xF346E03c
#data 0xFE37E400

#align4
loc_8C0A0448:
#data 0x6353E034
#data 0xE038F3E6
#data 0xF33D334c
#data 0x2321025a
#data 0xF3E66353
#data 0x334C7308
#data 0x7402F33d
#data 0x025A3462
#data 0x8BED2321
#data 0xE517D232
#data 0x420BE60c
#data 0x4F2664E3
#data 0x64E365D3
#data 0x6EF66DF6

#align4
loc_8C0A0480:
#data 0x2FD62FE6
#data 0x4F222FC6
#data 0x6D437FFc
#data 0xE02453D5
#data 0x2F325CD2
#data 0x025C6E43
#data 0xD3287E5c
#data 0x430B0D24
#data 0x85E364D3
#data 0x630364E3
#data 0xE034435a
#data 0xFD37F32d
#data 0x81438542
#data 0x81428541
#data 0x81416041
#data 0xF3C6E034
#data 0xF33D7408
#data 0x2E31035a
#data 0x630385E7
#data 0xE038435a
#data 0xFD37F32d
#data 0x81438542
#data 0x740864E3
#data 0x81428541
#data 0x740864E3
#data 0x81416041
#data 0xF3C6E038
#data 0x005AF33d
#data 0x60F281E4
#data 0x600C8405
#data 0x8B028802
#data 0x700184D4
#data 0x80D4

loc_8C0A0502:
#data 0x7F04
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0A050E:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0A052A,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0A051C:
mov.l @(loc_8C0A0540,pc),r3 ; r3 set to 0x8C0450C0
mov 0x00,r2 ; r2 set to 0x00
mov.w @(loc_8C0A052A,pc),r0 ; r0 set to 0x12c
jmp @r3
mov.b r2,@(r0,r4) 	
#data 0x00Dc
#data 0x00C0

loc_8C0A052A:
#data 0x012c
#data 0x000001A3

#align4
loc_8C0A0530:
#data bank12.loc_8c129560

loc_8C0A0534:
#data bank12.loc_8c1294C8

loc_8C0A0538:
#data bank03.loc_8c034e8c

loc_8C0A053C:
#data bank03.loc_8c034dee

loc_8C0A0540:
#data bank04.loc_8c0450C0
#data 0x7FF44F22
#data 0x60532F42
#data 0x80F80009
#data 0x00096063
#data 0xE502D319
#data 0xE60080F4
#data 0x6463430b
#data 0x8D122008
#data 0x92286403
#data 0xE120E026
#data 0x314CD314
#data 0x04251434
#data 0x63F2E221
#data 0x1436324c
#data 0x840160F2
#data 0x84F88041
#data 0x84F42100
#data 0x7F0C2200
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0A0592:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0A05C4,pc),r0 ; r0 set to 0x8C156474
extu.b r3,r3
mov.l @(0x18,r14),r5
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0A05A8:
mov r4,r3
mov.l @(loc_8C0A05C8,pc),r1 ; r1 set to 0x8C15647c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x2E03

#align4
loc_8C0A05BC:
#data bank04.loc_8c044F12

loc_8C0A05C0:
#data loc_8c0a0592

loc_8C0A05C4:
#data 0x8C156474

loc_8C0A05C8:
#data 0x8C15647c

loc_8C0A05CC:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x4F229198
#data 0x31EC84E4
#data 0x70019294
#data 0x80E4D34d
#data 0x430B9091
#data 0x908F32Dc
#data 0x61E3E401
#data 0x0E447150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC9081
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD33F0E34
#data 0xE00C430b
#data 0x02DCE024
#data 0x0E24E3Ff
#data 0x0E44906e
#data 0x0E34E031
#data 0xE400E021
#data 0xE33D0E44
#data 0x0E349068
#data 0x0E45700b
#data 0x0E4470F2
#data 0xD3357026
#data 0xE4410E46
#data 0x623284E2
#data 0x4000600c
#data 0x012D727c
#data 0x02157101
#data 0x0E449057
#data 0xD12F7001
#data 0xE0340E44
#data 0xE517F3D6
#data 0xE61E415a
#data 0xE038FE37
#data 0xD22BF3D6
#data 0xE03CFE37
#data 0xFE37F3D6
#data 0xF2E6E038
#data 0xF230F30d
#data 0x420BFE27
#data 0x4F2664E3
#data 0x64E365D3
#data 0x6EF66DF6

#align4
loc_8C0A069C:
#data 0x6E432FE6
#data 0xE401D222
#data 0x614384E2
#data 0x600C6320
#data 0x410C204a
#data 0x2318633c
#data 0x902D8B26
#data 0x600C005c
#data 0x8B028816
#data 0x20088455
#data 0x8902

loc_8C0A06C6:
#data 0x64E3
#data 0x6EF6A130

#align4
loc_8C0A06CC:
#data 0x035CE024
#data 0xE0210E34
#data 0x222802Ec
#data 0xE0318B03
#data 0xA002E2Ff
#data 0x0E24

loc_8C0A06E2:
#data 0xE031
#data 0x0E44

loc_8C0A06E6:
#data 0xE034
#data 0xFE37F356
#data 0x035C9013
#data 0x8B072338
#data 0x64E384E5
#data 0x600CD10d
#data 0x031E4008
#data 0x6EF6432b

#align4
loc_8C0A0704:
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x00C000Dc
#data 0x01A3012c
#data 0x019C01A1
#data 0x01A00159

#align4
loc_8C0A0718:
#data bank12.loc_8c129560

loc_8C0A071C:
#data bank12.loc_8c1294C8
#data 0x8C2896B0
#data 0x439A4924

#align4
loc_8C0A0728:
#data bank03.loc_8c034e8c
#data 0x8C2895F6

#align4
loc_8C0A0730:
#data 0x8C15648c

loc_8C0A0734:
#data 0x4F222FE6
#data 0x935B7FFc
#data 0xD22F6E43
#data 0x2F32335c
#data 0x64E3420b
#data 0x4011600e
#data 0x84E58912
#data 0x7001F48d
#data 0xE00180E5
#data 0x803363F2
#data 0xFE47E05c
#data 0xFE47E060
#data 0xFE47E068
#data 0xFE47E06c
#data 0xF308C724
#data 0xFE37E06c

#align4
loc_8C0A0774:
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0A077C:
#data 0x903A2FE6
#data 0x6D532FD6
#data 0x03DC4F22
#data 0x8D032338
#data 0xE0216E43
#data 0x0E34E301

#align4
loc_8C0A0794:
#data 0xD31BE160
#data 0xE03831Ec
#data 0xF2E6F318
#data 0x31ECE16c
#data 0xFE27F230
#data 0xF2E6E060
#data 0xF230F318
#data 0x430BFE27
#data 0xC71464E3
#data 0x901DF308
#data 0xE038F2D6
#data 0xF230F1E6
#data 0x8908F125
#data 0x65D384E5
#data 0x700164E3
#data 0x4F2680E5
#data 0xA0A26DF6
#data 0x6EF6

loc_8C0A07DA:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0A07E2:
mov r4,r3
mov.l @(loc_8C0A080C,pc),r1 ; r1 set to 0x8C156494
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x014102A4
#data 0x0000041c

#align4
loc_8C0A07FC:
#data bank03.loc_8c034dee
#data 0xBF092492

#align4
loc_8C0A0804:
#data bank04.loc_8c045748
#data 0x43542492

#align4
loc_8C0A080C:
#data 0x8C156494


loc_8C0A0810:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0A0936,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0A0936,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0A0940,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0A0938,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0A093A,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0A093C,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0A0944,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.l @(loc_8C0A0948,pc),r1 ; r1 set to 0x43542492
mov.b @(r0,r13),r2
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
lds r1,fpul 	
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0A093A,pc),r0 ; r0 set to 0x12c
fldi0 fr4
mov.b r4,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
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
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fsts fpul,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
mova @(loc_8C0A094C,pc),r0  ; r0 set to 0x8C0A094c
fmov.s @r0,fr2
mov 0x6C,r0 ; r0 set to 0x6c
mov.l @(loc_8C0A0950,pc),r3 ; r3 set to 0x8C034E8c
mov 0x17,r5 ; r5 set to 0x17
fmov.s fr2,@(r0,r14) 	
mov 0x1F,r6 ; r6 set to 0x1f
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???	
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0A08C6:
mov.l r14,@-r15
mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
mov.l r13,@-r15
mov r5,r13
mov r4,r14
mov 0x60,r1 ; r1 set to 0x60, r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
sts.l pr,@-r15
mov.b @(r0,r13),r3 ; r3 ??? bc r13 is ???	
mov.b r3,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r13),fr3
mov.l @(loc_8C0A0954,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???	
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
exts.b r0,r0 ; r0 ??, r0 ??	
cmp/pz r0
bt loc_8C0A0916
mov.b @(0x04,r14),r0 	
mov r13,r5
mov r14,r4
add 0x01,r0
mov.b r0,@(0x04,r14) 	
lds.l @r15+,pr 	
mov.l @r15+,r13
bra loc_8C0A091e
mov.l @r15+,r14

loc_8C0A0916:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0A091E:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0A093A,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0A092C:
mov.l @(loc_8C0A0958,pc),r3 ; r3 set to 0x8C0450C0
mov 0x00,r2 ; r2 set to 0x00
mov.w @(loc_8C0A093A,pc),r0 ; r0 set to 0x12c
jmp @r3
mov.b r2,@(r0,r4) 	

loc_8C0A0936:
#data 0x00Dc

loc_8C0A0938:
#data 0x00C0

loc_8C0A093A:
#data 0x012c

loc_8C0A093C:
#data 0x01A3
#data 0x0000

#align4
loc_8C0A0940:
#data bank12.loc_8c129560

loc_8C0A0944:
#data bank12.loc_8c1294C8

loc_8C0A0948:
#data 0x43542492

#align4
loc_8C0A094C:
#data 0x3C892492

#align4
loc_8C0A0950:
#data bank03.loc_8c034e8c

loc_8C0A0954:
#data bank03.loc_8c034dee

loc_8C0A0958:
#data bank04.loc_8c0450C0
#data 0x7FF44F22
#data 0x60532F42
#data 0x80F80009
#data 0x00096063
#data 0xE501D333
#data 0xE60080F4
#data 0x6463430b
#data 0x8D122008
#data 0x925C6403
#data 0xE120E026
#data 0x314CD32e
#data 0x04251434
#data 0x63F2E221
#data 0x1436324c
#data 0x840160F2
#data 0x84F88041
#data 0x84F42100
#data 0x7F0C2200
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0A09AA:
#data 0x2FE6
#data 0x7FF44F22
#data 0x60536E43
#data 0x80F80009
#data 0x60732F60
#data 0xD31F0009
#data 0x81F2E601
#data 0x430B6563
#data 0x2008E400
#data 0x64038D1b
#data 0xE0269233
#data 0xE120D31a
#data 0x1434314c
#data 0x53E60425
#data 0x84E11436
#data 0x14E58041
#data 0x210084F8
#data 0x63F0E021
#data 0x85F20434
#data 0x435A6303
#data 0xF32DE05c
#data 0xE014F437
#data 0x600C00Fc
#data 0x814f

loc_8C0A0A06:
#data 0x6043
#data 0x7F0C0009
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0A0A12:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0A0A44,pc),r0 ; r0 set to 0x8C1564A4
extu.b r3,r3
mov.l @(0x18,r14),r5
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0A0A28:
mov r4,r3
mov.l @(loc_8C0A0A48,pc),r1 ; r1 set to 0x8C1564Ac
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x2E04

#align4
loc_8C0A0A3C:
#data bank04.loc_8c044F12

loc_8C0A0A40:
#data loc_8c0a0A12

loc_8C0A0A44:
#data 0x8C1564A4

loc_8C0A0A48:
#data 0x8C1564Ac

loc_8C0A0A4C:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x919D2FC6
#data 0x84E44F22
#data 0x929931Ec
#data 0xD3507001
#data 0x909680E4
#data 0x32DC430b
#data 0xE4019094
#data 0x715061E3
#data 0x84D20E44
#data 0x84D180E2
#data 0xE05080E1
#data 0xFE37F3D6
#data 0xF3D6E054
#data 0x9086FE37
#data 0x0E3403Dc
#data 0x02DC7001
#data 0xE0300E24
#data 0x62D303Dc
#data 0x0E347250
#data 0x430BD341
#data 0xE024E00c
#data 0xE3FE02Dc
#data 0x0E24EC00
#data 0x9071E234
#data 0xE0310E44
#data 0xE4420E34
#data 0xD33B906e
#data 0x700B0E24
#data 0x70F20EC5
#data 0x70260EC4
#data 0x84E20EC6
#data 0x600C6232
#data 0x727C4000
#data 0x7101012d
#data 0x905E0215
#data 0x70010E44
#data 0xD2320E44
#data 0xE613E517
#data 0x64E3420b
#data 0x65D3E023
#data 0xE0040EC4
#data 0x81EE64E3
#data 0x6CF64F26
#data 0x6EF66DF6

#align4
loc_8C0A0B04:
#data 0x2FE6904c
#data 0x600C005c
#data 0x8F038816
#data 0x84556E43
#data 0x89052008

#align4
loc_8C0A0B18:
#data 0x64E384E4
#data 0x80E47001
#data 0x6EF6A20b

#align4
loc_8C0A0B24:
#data 0x025CE024
#data 0xE0340E24
#data 0xFE37F356
#data 0xF356E038
#data 0xE03CFE37
#data 0xFE37F356
#data 0x03ED9031
#data 0x8B042338
#data 0xE034D11b
#data 0xA004415a
#data 0xF30d

loc_8C0A0B4E:
#data 0xD11a
#data 0x415AE034
#data 0xF30d

loc_8C0A0B56:
#data 0xF2E6
#data 0xF230D118
#data 0x415AD418
#data 0xFE27E101
#data 0xF2E6E038
#data 0xF230F30d
#data 0xE03CFE27
#data 0xE03B034d
#data 0x633D024c
#data 0x412C622c
#data 0x8B072318
#data 0x64E384E5
#data 0x600CD10f
#data 0x031E4008
#data 0x6EF6432b

#align4
loc_8C0A0B90:
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x00C000Dc
#data 0x01A3012c
#data 0x019C01A1
#data 0x01300159

#align4
loc_8C0A0BA4:
#data bank12.loc_8c129560

loc_8C0A0BA8:
#data bank12.loc_8c1294C8
#data 0x8C2896B0

#align4
loc_8C0A0BB0:
#data bank03.loc_8c034e8c
#data 0xC3325555
#data 0x43325555
#data 0x434B9249
#data 0x8C2895F0

#align4
loc_8C0A0BC4:
#data 0x8C1564Bc


loc_8C0A0BC8:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
fmov.s fr15,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0A0D28,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r4,r14
mov.w @(0x1C,r14),r0 	
add 0xFF,r0
mov.w r0,@(0x1C,r14) 	
exts.w r0,r0
tst r0,r0
bf loc_8C0A0C44
mov.b @(0x05,r14),r0 	
mov 0x07,r3 ; r3 set to 0x07
mov.w @(loc_8C0A0D20,pc),r12 ; r12 set to 0xFF56
mov 0x06,r13 ; r13 set to 0x06
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b r3,@(r0,r14) 	
mov 0x00,r0 ; r0 set to 0x00
mov.w r0,@(0x1E,r14) 	
mova @(loc_8C0A0D2C,pc),r0  ; r0 set to 0x8C0A0D2c
fmov.s @r0,fr15

loc_8C0A0BFC:
mov.w @(0x1E,r14),r0 	
mov 0x01,r5 ; r5 set to 0x01, r5 set to 0x01
mov r12,r7 ; r7 set to 0xFF56
mov.l r0,@-r15
mov r0,r3 ; r3 set to 0x8C0A0D2c
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
mov.b @(r0,r14),r6
bsr loc_8C0A09Aa
mov r14,r4
add 0x04,r15
exts.w r12,r12 ; r12 ??	
mov.w @(0x1E,r14),r0 	
lds r12,fpul 	
dt r13
add 0x01,r0 ; r0 set to 0x22, r0 set to 0x22
mov.w r0,@(0x1E,r14) 	
float fpul,fr3
mov.w @(0x1E,r14),r0 	
and 0x03,r0 	
fsub fr15,fr3 ; r3 ??? bc r15 is ???	
ftrc fr3,fpul 	
sts fpul,r12
bf/s loc_8C0A0BFc
mov.w r0,@(0x1E,r14) 	
mov 0x00,r2 ; r2 set to 0x00, r2 set to 0x00
mov.l @(loc_8C0A0D30,pc),r3 ; r3 set to 0x8C04223A, r3 set to 0x8C04223a
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
mov r14,r4
mov.b r2,@(r0,r14) 	
mov 0x48,r5 ; r5 set to 0x48, r5 set to 0x48
lds.l @r15+,pr 	
fmov.s @r15+,fr15
mov.l @r15+,r12
mov.l @r15+,r13 ; r13 ??? bc r15 is ???	
jmp @r3
mov.l @r15+,r14

loc_8C0A0C44:
lds.l @r15+,pr 	
fmov.s @r15+,fr15
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0A0C50:
#data 0x4F222FE6
#data 0x93647FFc
#data 0xD2336E43
#data 0x2F32335c
#data 0x64E3420b
#data 0x430BD333
#data 0x905B64E3
#data 0x222802Ec
#data 0xE4008913
#data 0x70600E44
#data 0x0E34E334
#data 0x0E45700b
#data 0x0E4470F2
#data 0xD32C7026
#data 0x84E20E46
#data 0x600C6232
#data 0x727C4000
#data 0x7101012d
#data 0x0215

loc_8C0A0C9A:
#data 0x85Ef
#data 0x973FE501
#data 0x63032F06
#data 0x06ECE021
#data 0x64E3BE7f
#data 0xE0217F04
#data 0xE30702Ec
#data 0x0E247201
#data 0x223902Ec
#data 0x85EF0E24
#data 0x81EF7001
#data 0xC90385Ef
#data 0x62F281Ef
#data 0x20088426
#data 0x84E5890a
#data 0x64E3E517
#data 0x7001E614
#data 0x7F0480E5
#data 0xD2164F26
#data 0x6EF6422b

#align4
loc_8C0A0CE8:
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0A0CF0:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0A0D28,pc),r3 ; r3 set to 0x8C034DEe
mov r4,r14
mov.l r5,@r15
jsr @r3
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt loc_8C0A0D18
mov.b @(0x04,r14),r0 	
mov r14,r4
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.l @r15,r5
add 0x04,r15
lds.l @r15+,pr 	
bra loc_8C0A0F3a
mov.l @r15+,r14

loc_8C0A0D18:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0A0D20:
#data 0xFF56
#data 0x02A4
#data 0x00000141

#align4
loc_8C0A0D28:
#data bank03.loc_8c034dee

loc_8C0A0D2C:
#data 0x42480000

#align4
loc_8C0A0D30:
#data bank04.loc_8c04223a

loc_8C0A0D34:
#data bank04.loc_8c045748
#data 0x8C2896B0

#align4
loc_8C0A0D3C:
#data bank03.loc_8c034e8c


loc_8C0A0D40:
mov r4,r3
mov.l @(loc_8C0A0E88,pc),r1 ; r1 set to 0x8C1564C8
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0A0D52:
#data 0x2FE6
#data 0x7FFC4F22
#data 0x918C6E43
#data 0xD34B928b
#data 0x2F5231Ec
#data 0x54E584E4
#data 0x80E47001
#data 0x430B9084
#data 0x9082324c
#data 0x61E3E501
#data 0x0E547150
#data 0x80E28442
#data 0x80E18441
#data 0xF346E050
#data 0xE054FE37
#data 0xFE37F346
#data 0x034C9074
#data 0x70010E34
#data 0x0E24024c
#data 0x034CE030
#data 0x72506243
#data 0xD33A0E34
#data 0xE00C430b
#data 0x024CE024
#data 0x0E24E3Fe
#data 0x0E549061
#data 0x0E34E031
#data 0x200885Ef
#data 0x905C8B20
#data 0x0E54E542
#data 0x034CE023
#data 0x04347301
#data 0x024CE303
#data 0x04242239
#data 0xE400014c
#data 0x71379050
#data 0x0E14D22c
#data 0x0E45700b
#data 0x0E4470F2
#data 0x0E467026
#data 0x612284E2
#data 0x4000600c
#data 0x031D717c
#data 0x01357301
#data 0x0E54903f

#align4
loc_8C0A0E04:
#data 0xE31A903e
#data 0x0E34E517
#data 0x0E3470Ff
#data 0x06ECE021
#data 0x7615D320
#data 0x64E3430b
#data 0x64E365F2
#data 0x4F267F04
#data 0x6EF6

loc_8C0A0E26:
#data 0x902e
#data 0x005C2FE6
#data 0x8816600c
#data 0x6E438F03
#data 0x20088455
#data 0x8905

loc_8C0A0E3A:
#data 0x84E4
#data 0x700164E3
#data 0xA08180E4
#data 0x6EF6

loc_8C0A0E46:
#data 0xE024
#data 0x025CD414
#data 0x0E24E101
#data 0x034DE03c
#data 0x024CE03b
#data 0x622C633d
#data 0x2318412c
#data 0x84E58B07
#data 0xD10E64E3
#data 0x4008600c
#data 0x432B031e
#data 0x6EF6

loc_8C0A0E72:
#data 0x000b
#data 0x00DC6EF6
#data 0x012C00C0
#data 0x019C01A3
#data 0x019D01A1
#data 0x0159013f

#align4
loc_8C0A0E88:
#data 0x8C1564C8

loc_8C0A0E8C:
#data bank12.loc_8c129560

loc_8C0A0E90:
#data bank12.loc_8c1294C8
#data 0x8C2896B0

#align4
loc_8C0A0E98:
#data bank03.loc_8c034e8c
#data 0x8C2895F0

#align4
loc_8C0A0EA0:
#data 0x8C1564D8

loc_8C0A0EA4:
#data 0x4F222FE6
#data 0x927C7FF8
#data 0x63536E43
#data 0x323C2F52
#data 0x55E51F21
#data 0x64E3B052
#data 0x420BD23b
#data 0x85EF64E3
#data 0x8B022008
#data 0x430BD339
#data 0x64E3

loc_8C0A0ECE:
#data 0x52F1
#data 0x20088426
#data 0x84E58907
#data 0xD336E517
#data 0x7001E61d
#data 0x430B80E5
#data 0x64E3

loc_8C0A0EE6:
#data 0xD234
#data 0x64E3420b
#data 0x8B082008
#data 0x64E384E4
#data 0x80E47001
#data 0x7F0865F2
#data 0xA0234F26
#data 0x6EF6

loc_8C0A0F02:
#data 0x7F08
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0A0F0A:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0A0FAC,pc),r3 ; r3 set to 0x8C034DEe
mov r4,r14
mov.l r5,@r15
jsr @r3
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt loc_8C0A0F32
mov.b @(0x04,r14),r0 	
mov r14,r4
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.l @r15,r5
add 0x04,r15
lds.l @r15+,pr 	
bra loc_8C0A0F48
mov.l @r15+,r14

loc_8C0A0F32:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0A0F3A:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0A0FA8,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0A0F48:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0A0FA8,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0A0F56:
mov.l @(loc_8C0A0FBC,pc),r3 ; r3 set to 0x8C0450C0
mov 0x00,r2 ; r2 set to 0x00
mov.w @(loc_8C0A0FA8,pc),r0 ; r0 set to 0x12c
jmp @r3
mov.b r2,@(r0,r4) 	

#align4
loc_8C0A0F60:
#data 0xF356E034
#data 0xE038F437
#data 0xF437F356
#data 0xF356E03c
#data 0x901AF437
#data 0x2338034d
#data 0xE15C8B06
#data 0xE034314c
#data 0xF246F318
#data 0xF230A006

#align4
loc_8C0A0F88:
#data 0x314CE15c
#data 0xF318E034
#data 0xF231F246

#align4
loc_8C0A0F94:
#data 0xF427D10a
#data 0x415AE05c
#data 0xF30DF246
#data 0x000BF231
#data 0x02A4F427

loc_8C0A0FA8:
#data 0x012c
#data 0x0130

#align4
loc_8C0A0FAC:
#data bank03.loc_8c034dee

loc_8C0A0FB0:
#data bank04.loc_8c045748

loc_8C0A0FB4:
#data bank03.loc_8c034e8c

loc_8C0A0FB8:
#data bank03.loc_8c03340c

loc_8C0A0FBC:
#data bank04.loc_8c0450C0
#data 0x42480000
#data 0x4F222FE6
#data 0x6E437FF8
#data 0x00096053
#data 0xE501D31d
#data 0x2F6080F4
#data 0x430BE600
#data 0x20086463
#data 0x64038D14
#data 0xE026922c
#data 0xE120D318
#data 0x9528314c
#data 0x04251434
#data 0x14E6354c
#data 0x804184E1
#data 0x210084F4
#data 0x63F0E021
#data 0x901D0434
#data 0x253103Ed
#data 0x00096043
#data 0x4F267F08
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0A1018:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0A1050,pc),r0 ; r0 set to 0x8C1564Ec
extu.b r3,r3
mov.l @(0x18,r14),r5
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0A102E:
mov r4,r3
mov.l @(loc_8C0A1054,pc),r1 ; r1 set to 0x8C1564F8
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x00CC2E05
#data 0x00000158

#align4
loc_8C0A1048:
#data bank04.loc_8c044F12

loc_8C0A104C:
#data loc_8c0a1018

loc_8C0A1050:
#data 0x8C1564Ec

loc_8C0A1054:
#data 0x8C1564F8

loc_8C0A1058:
#data 0x2FD62FE6
#data 0x2F862FC6
#data 0x7FFC4F22
#data 0x6D5390A8
#data 0x91A76E43
#data 0x9CA403De
#data 0x2F3231Ec
#data 0x3CEC84E4
#data 0x700192A0
#data 0x80E4D353
#data 0x430B909d
#data 0x909B32Dc
#data 0x61E3E401
#data 0x0E447150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC908d
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD3450E34
#data 0xE00C430b
#data 0x02DCE024
#data 0x0E24E33e
#data 0x0E44907a
#data 0x0E44E031
#data 0x9077E400
#data 0x700B0E34
#data 0x70F20E45
#data 0x70260E44
#data 0x0E46D33c
#data 0x84E2E442
#data 0x600C6232
#data 0x727C4000
#data 0x7101012d
#data 0xE2440215
#data 0x0E449065
#data 0x0E447001
#data 0x0E2470A0
#data 0x0E2470Ff
#data 0xF3D6E034
#data 0xD232E834
#data 0xE038FE37
#data 0xFE37F3D6
#data 0xF3D6E03c
#data 0x420BFE37
#data 0xD12E38Ec
#data 0x4000C90f
#data 0x031DF48d
#data 0xF288E05c
#data 0x435AE234
#data 0xF230F32d
#data 0xFE47F82a
#data 0xFE47E068
#data 0xF308C727
#data 0xFE37E060
#data 0xF308C726
#data 0xFE37E06c
#data 0xF32660F2
#data 0x005AF33d
#data 0xC72381C1
#data 0x9033F308
#data 0xF230F2D6
#data 0xE517D321
#data 0x005AF23d
#data 0xE02181C2
#data 0x762006Ec
#data 0x64E3430b
#data 0x65D364E3
#data 0x4F267F04
#data 0x6CF668F6
#data 0x6EF66DF6

#align4
loc_8C0A1188:
#data 0x2FE6901f
#data 0x600C005c
#data 0x8F038816
#data 0x84556E43
#data 0x89022008

#align4
loc_8C0A119C:
#data 0xA36E64E3
#data 0x6EF6

loc_8C0A11A2:
#data 0xE024
#data 0x035CD112
#data 0x0E3464E3
#data 0x600C84E5
#data 0x031E4008
#data 0x6EF6432b
#data 0x00CC020c
#data 0x00C000Dc
#data 0x01A3012c
#data 0x019C01A1
#data 0x0159041c

#align4
loc_8C0A11CC:
#data bank12.loc_8c129560

loc_8C0A11D0:
#data bank12.loc_8c1294C8
#data 0x8C2896B0

#align4
loc_8C0A11D8:
#data bank03.loc_8c03319e

loc_8C0A11DC:
#data 0x8C156508
#data 0x42092492
#data 0x3E892492
#data 0x44700000

#align4
loc_8C0A11EC:
#data bank03.loc_8c034e8c

loc_8C0A11F0:
#data 0x8C156528


loc_8C0A11F4:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r8,@-r15
mov.w @(loc_8C0A130C,pc),r13 ; r13 set to 0xCc
sts.l pr,@-r15
mov.l @(loc_8C0A1314,pc),r3 ; r3 set to 0x8C0334A8
add r14,r13 ; r13 ??? bc r14 is ???	
jsr @r3
mov 0x00,r12 ; r12 set to 0x00
tst r0,r0
bf loc_8C0A1214
mov.w @(loc_8C0A130E,pc),r0 ; r0 set to 0x12c
bra loc_8C0A121a
mov.b r12,@(r0,r14) 	

loc_8C0A1214:
mov.w @(loc_8C0A130E,pc),r0 ; r0 set to 0x12c
mov 0x01,r2 ; r2 set to 0x01
mov.b r2,@(r0,r14) 	

loc_8C0A121A:
mov 0x60,r1 ; r1 set to 0x60, r1 set to 0x60
mov.l @(loc_8C0A1318,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???	
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???	
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
mov.w @(0x04,r13),r0 	
mov r0,r3 ; r3 set to 0x60, r3 set to 0x60
lds r3,fpul 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r14),fr2
float fpul,fr3
fcmp/gt fr3,fr2
bf loc_8C0A12C4
mov.b @(0x05,r14),r0 	
mov 0x40,r3 ; r3 set to 0x40, r3 set to 0x40
add 0x01,r0 ; r0 set to 0x39, r0 set to 0x39
mov.b r0,@(0x05,r14) 	
mov.w @(loc_8C0A1310,pc),r0 ; r0 set to 0x1A1, r0 set to 0x1A1
mov.b r3,@(r0,r14) 	
add 0x0B,r0 ; r0 set to 0x1AC, r0 set to 0x1Ac
mov.w r12,@(r0,r14) 	
add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19e
mov.b r12,@(r0,r14) 	
add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4
mov.l @(loc_8C0A131C,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
mov.l r12,@(r0,r14) 	
mov.b @(0x02,r14),r0 	
mov.l @r3,r2
extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4
shll r0 ; r0 set to 0x188, r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2) 	
mov.w @(0x02,r13),r0 	
mov r0,r2 ; r2 set to 0x188, r2 set to 0x188
lds r2,fpul 	
mov.l @(loc_8C0A1320,pc),r2 ; r2 set to 0x8C03319E, r2 set to 0x8C03319e
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
mov r0,r8 ; r8 set to 0x34, r8 set to 0x34
float fpul,fr3
fmov.s fr3,@(r0,r14) 	
jsr @r2
add r14,r8 ; r8 ??? bc r14 is ???, r8 ??? bc r14 is ???	
mov.l @(loc_8C0A1324,pc),r1 ; r1 set to 0x8C156508, r1 set to 0x8C156508
and 0x0F,r0 	
shll r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???, r2 ??? bc r8 is ???	
mov.w @(r0,r1),r3 ; r3 ??, r3 ??	
mova @(loc_8C0A1328,pc),r0  ; r0 set to 0x8C0A1328, r0 set to 0x8C0A1328
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
mov r14,r4
lds r3,fpul 	
mov.l @(loc_8C0A1330,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
float fpul,fr3
fadd fr3,fr2
fmov.s fr2,@r8
fmov.s @r0,fr3 ; r3 ??, r3 ??	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0A132C,pc),r0  ; r0 set to 0x8C0A132C, r0 set to 0x8C0A132c
fmov.s @r0,fr3
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr3,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
lds.l @r15+,pr 	
mov.b @(r0,r14),r6
mov.l @r15+,r8
add 0x22,r6
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0A12C4:
mov.w @(loc_8C0A1312,pc),r0 ; r0 set to 0x19f
mov.b @(r0,r14),r2
tst r2,r2
bt loc_8C0A12D4
mov.b @(0x04,r14),r0 	
add 0x01,r0 ; r0 set to 0x1A0
bra loc_8C0A12E4
mov.b r0,@(0x04,r14) 	

loc_8C0A12D4:
lds.l @r15+,pr 	
mov.l @(loc_8C0A1334,pc),r3 ; r3 set to 0x8C045748
mov r14,r4
mov.l @r15+,r8
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0A12E4:
lds.l @r15+,pr 	
mov.l @r15+,r8
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0A12F0:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0A1314,pc),r3 ; r3 set to 0x8C0334A8
mov r4,r14
mov.l r5,@r15
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8C0A1338
mov.w @(loc_8C0A130E,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
bra loc_8C0A133e
mov.b r3,@(r0,r14) 	

loc_8C0A130C:
#data 0x00Cc

loc_8C0A130E:
#data 0x012c

loc_8C0A1310:
#data 0x01A1

loc_8C0A1312:
#data 0x019f

#align4
loc_8C0A1314:
#data bank03.loc_8c0334A8

loc_8C0A1318:
#data bank03.loc_8c034dee

loc_8C0A131C:
#data 0x8C2896B0

#align4
loc_8C0A1320:
#data bank03.loc_8c03319e

loc_8C0A1324:
#data 0x8C156508

loc_8C0A1328:
#data 0xC2092492

#align4
loc_8C0A132C:
#data 0xBE892492

#align4
loc_8C0A1330:
#data bank03.loc_8c034e8c

loc_8C0A1334:
#data bank04.loc_8c045748


loc_8C0A1338:
mov.w @(loc_8C0A13DC,pc),r0 ; r0 set to 0x12c
mov 0x01,r1 ; r1 set to 0x01
mov.b r1,@(r0,r14) 	

loc_8C0A133E:
mov 0x60,r1 ; r1 set to 0x60, r1 set to 0x60
mov.l @(loc_8C0A13E4,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???	
fmov.s @(r0,r14),fr2
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
mov.w @(loc_8C0A13DE,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
mov.l @r15,r2
fmov.s @(r0,r2),fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r14),fr2
fcmp/gt fr2,fr3
bf loc_8C0A137a
mov.w @(loc_8C0A13DE,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
mov.l @r15,r2
fmov.s @(r0,r2),fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
bra loc_8C0A1390
fmov.s fr3,@(r0,r14) 	

loc_8C0A137A:
#data 0x9031
#data 0x233803Ec
#data 0xD2198B06
#data 0x64E3420b
#data 0x03EC902b
#data 0x89022338


loc_8C0A1390:
mov.b @(0x04,r14),r0 	
add 0x01,r0
mov.b r0,@(0x04,r14) 	

loc_8C0A1396:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0A139E:
mov.l r14,@-r15
mov r4,r5
sts.l pr,@-r15
mov.l @(loc_8C0A13EC,pc),r3 ; r3 set to 0x8C10235c
mov 0x01,r6 ; r6 set to 0x01
mov r4,r14
mov 0x08,r7 ; r7 set to 0x08
jsr @r3
add 0x34,r5
mov.l @(loc_8C0A13F0,pc),r2 ; r2 set to 0x8C04223a
mov 0x49,r5 ; r5 set to 0x49
jsr @r2
mov r14,r4
mov.b @(0x04,r14),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0A13DC,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0A13CA:
mov r4,r3
mov.l @(loc_8C0A13F4,pc),r1 ; r1 set to 0x8C156530
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0A13DC:
#data 0x012c

loc_8C0A13DE:
#data 0x041c
#data 0x019E019f

#align4
loc_8C0A13E4:
#data bank03.loc_8c034dee

loc_8C0A13E8:
#data bank04.loc_8c045748

loc_8C0A13EC:
#data bank10.loc_8c10235c

loc_8C0A13F0:
#data bank04.loc_8c04223a

loc_8C0A13F4:
#data 0x8C156530

loc_8C0A13F8:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x91992FC6
#data 0x84E44F22
#data 0x949431Ec
#data 0x92937001
#data 0x34EC80E4
#data 0xD34D9091
#data 0x32DC430b
#data 0xE501908e
#data 0x715061E3
#data 0x84D20E54
#data 0x84D180E2
#data 0xE05080E1
#data 0xFE37F3D6
#data 0xF3D6E054
#data 0x9080FE37
#data 0x0E3403Dc
#data 0x02DC7001
#data 0xE0300E24
#data 0x62D303Dc
#data 0x0E347250
#data 0x430BD33f
#data 0xE024E00c
#data 0x02DCDC3e
#data 0x0E24E3Ff
#data 0x0E54906c
#data 0x0E34E031
#data 0xF3D6E034
#data 0xE038FE37
#data 0xFE37F3D6
#data 0xF3D6E03c
#data 0xE021FE37
#data 0x600C00Ec
#data 0x40004008
#data 0x405A00Cd
#data 0xF208C733
#data 0xF322F32d
#data 0x005AF33d
#data 0xE0218141
#data 0xE10200Ec
#data 0x4008600c
#data 0x30CC4000
#data 0xC72D031d
#data 0x435AF108
#data 0xF312F32d
#data 0x005AF33d
#data 0x90438142
#data 0x233803Ed
#data 0x85418902
#data 0x8141600b

#align4
loc_8C0A14C4:
#data 0x03ECE021
#data 0x4308633c
#data 0x33CC4300
#data 0x62038532
#data 0x0E249035
#data 0x923303Ec
#data 0x3320633c
#data 0x90308905
#data 0xE342E143
#data 0x70010E14
#data 0x0E34

loc_8C0A14EE:
#data 0xE021
#data 0x06ECD31b
#data 0x666CE517
#data 0x46004608
#data 0x856336Cc
#data 0x430B6603
#data 0x4F2664E3
#data 0x64E365D3
#data 0x6DF66CF6
#data 0x6EF6


loc_8C0A1512:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0A1536,pc),r4 ; r4 set to 0xCc
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0A1548,pc),r0 ; r0 set to 0x158
add r14,r4 ; r4 ??? bc r14 is ???	
sts.l pr,@-r15
mov.w @r4,r2
mov.w @(r0,r13),r3
cmp/eq r2,r3
bt loc_8C0A1564
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
mov.l @r15+,r13
bra loc_8C0A187e
mov.l @r15+,r14

loc_8C0A1536:
#data 0x00Cc
#data 0x00C000Dc
#data 0x01A3012c
#data 0x01A10130
#data 0x019C00Ff

loc_8C0A1548:
#data 0x0158
#data 0x0000

#align4
loc_8C0A154C:
#data bank12.loc_8c129560

loc_8C0A1550:
#data bank12.loc_8c1294C8

loc_8C0A1554:
#data 0x8C156540
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0A1560:
#data bank03.loc_8c034e8c


loc_8C0A1564:
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r3
mov 0x34,r2 ; r2 set to 0x34
add r14,r2 ; r2 ??? bc r14 is ???	
mov.b r3,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(0x02,r4),r0 	
fmov.s @r2,fr2
mov r0,r3 ; r3 set to 0x38
lds r3,fpul 	
float fpul,fr3
fadd fr3,fr2
fmov.s fr2,@r2
mov 0x38,r2 ; r2 set to 0x38
mov.w @(0x04,r4),r0 	
add r14,r2 ; r2 ??? bc r14 is ???	
fmov.s @r2,fr2
mov r0,r3 ; r3 set to 0x38
lds r3,fpul 	
mov.l @(loc_8C0A16AC,pc),r3 ; r3 set to 0x8C034DEe
float fpul,fr3
fadd fr3,fr2
fmov.s fr2,@r2
jsr @r3
mov r14,r4
exts.b r0,r0 ; r0 ??	
cmp/pz r0
bt loc_8C0A15B8
mov.b @(0x04,r14),r0 	
mov r13,r5
mov r14,r4
add 0x01,r0
mov.b r0,@(0x04,r14) 	
lds.l @r15+,pr 	
mov.l @r15+,r13
bra loc_8C0A1870
mov.l @r15+,r14

loc_8C0A15B8:
mov.w @(loc_8C0A169A,pc),r0 ; r0 set to 0x1A1
mov.w @(loc_8C0A169C,pc),r3 ; r3 set to 0xFf
mov.b @(r0,r14),r2
extu.b r2,r2
cmp/eq r3,r2
bt loc_8C0A15D0
lds.l @r15+,pr 	
mov.l @(loc_8C0A16B0,pc),r1 ; r1 set to 0x8C045748
mov r14,r4
mov.l @r15+,r13
jmp @r1
mov.l @r15+,r14

loc_8C0A15D0:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0A15D8:
mov r4,r3
mov.l @(loc_8C0A16B4,pc),r1 ; r1 set to 0x8C156590
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0A15EA:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0A169E,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0A169E,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0A16B8,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0A16A0,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0A16A2,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0A16A4,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0A16BC,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.l @(loc_8C0A16C0,pc),r5 ; r5 set to 0x8C1564E0
mov.b @(r0,r13),r2
mov 0x22,r3 ; r3 set to 0x22
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0A16A2,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r4,@(r0,r14) 	
mov.w @(loc_8C0A16A6,pc),r0 ; r0 set to 0x13f
mov.b r3,@(r0,r14) 	
add 0xFF,r0 ; r0 set to 0x13e
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
mova @(loc_8C0A16C4,pc),r0  ; r0 set to 0x8C0A16C4
fmov.s @r0,fr4 ; r4 ??	
mov.w @(loc_8C0A16A8,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bf/s loc_8C0A16C8
mov r5,r4 ; r4 set to 0x8C1564E0
mov 0x21,r3 ; r3 set to 0x21
add r14,r3 ; r3 ??? bc r14 is ???	
mov.b @r3,r3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r14),fr2
extu.b r3,r3
shll r3
shll r3
add r3,r4 ; r4 ??? bc r3 is ???	
mov.w @r4,r3
lds r3,fpul 	
float fpul,fr3
fmul fr4,fr3
bra loc_8C0A16E4
fsub fr3,fr2

loc_8C0A169A:
#data 0x01A1

loc_8C0A169C:
#data 0x00Ff

loc_8C0A169E:
#data 0x00Dc

loc_8C0A16A0:
#data 0x00C0

loc_8C0A16A2:
#data 0x012c

loc_8C0A16A4:
#data 0x01A3

loc_8C0A16A6:
#data 0x013f

loc_8C0A16A8:
#data 0x0130
#data 0x0000

#align4
loc_8C0A16AC:
#data bank03.loc_8c034dee

loc_8C0A16B0:
#data bank04.loc_8c045748

loc_8C0A16B4:
#data 0x8C156590

loc_8C0A16B8:
#data bank12.loc_8c129560

loc_8C0A16BC:
#data bank12.loc_8c1294C8

loc_8C0A16C0:
#data 0x8C1564E0

loc_8C0A16C4:
#data 0x3FD55555


loc_8C0A16C8:
mov 0x21,r2 ; r2 set to 0x21
fmov fr4,fr0
add r14,r2 ; r2 ??? bc r14 is ???	
mov.b @r2,r2
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r14),fr2
extu.b r2,r2
shll r2
shll r2
add r2,r4
mov.w @r4,r3
lds r3,fpul 	
float fpul,fr3
fmac fr0,fr3,fr2

loc_8C0A16E4:
mov 0x21,r3 ; r3 set to 0x21, r3 set to 0x21
fmov.s fr2,@(r0,r14) 	
add r14,r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
mov r14,r2
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
add r0,r2
mov.l r2,@-r15
mov.b @r3,r3
mov.l @(loc_8C0A1820,pc),r2 ; r2 set to 0x8C03319E, r2 set to 0x8C03319e
extu.b r3,r3
shll r3
shll r3
add r3,r5
mov.w @(0x02,r5),r0 	
mov r0,r3 ; r3 set to 0x38, r3 set to 0x38
lds r3,fpul 	
mov.l @r15+,r3 ; r3 ??? bc r15 is ???, r3 ??? bc r15 is ???	
mova @(loc_8C0A181C,pc),r0  ; r0 set to 0x8C0A181C, r0 set to 0x8C0A181c
fmov.s @r0,fr0 ; r0 ??, r0 ??	
float fpul,fr3
fmov.s @r3,fr2 ; r2 ??? bc r3 is ???, r2 ??? bc r3 is ???	
fmac fr0,fr3,fr2
jsr @r2
fmov.s fr2,@r3
mov 0x1F,r4 ; r4 set to 0x1F, r4 set to 0x1f
and r0,r4 ; r4 ??? bc r0 is ???, r4 ??? bc r0 is ???	
exts.w r4,r4
mov 0x10,r3 ; r3 set to 0x10, r3 set to 0x10
sub r4,r3 ; r3 ??? bc r4 is ???, r3 ??? bc r4 is ???	
lds r3,fpul 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r14),fr2
float fpul,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov.w @(loc_8C0A1810,pc),r0 ; r0 set to 0x1A3, r0 set to 0x1A3
mov.b @(r0,r13),r3
tst r3,r3
bf loc_8C0A1738
mova @(loc_8C0A1824,pc),r0  ; r0 set to 0x8C0A1824, r0 set to 0x8C0A1824
bra loc_8C0A173c
fmov.s @r0,fr3

#align4
loc_8C0A1738:
#data 0xF308C73b

#align4
loc_8C0A173C:
#data 0xFE37E05c
#data 0xF308C73a
#data 0xFE37E068
#data 0x03ED9063
#data 0x8D082338
#data 0xE05CE444
#data 0xF34DF3E6
#data 0xE068FE37
#data 0xF34DF3E6
#data 0xFE37

loc_8C0A1762:
#data 0x9057
#data 0xD332E500
#data 0x0E44E629
#data 0x0E55700b
#data 0x0E5470F2
#data 0x0E567026
#data 0x84E2E517
#data 0x600C6232
#data 0x727C4000
#data 0x7101012d
#data 0x90440215
#data 0x0E44D229
#data 0x0E447001
#data 0x64E3420b
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6

loc_8C0A17A2:
#data 0x2FE6
#data 0x2FD6E024
#data 0x6E436D53
#data 0x31ECE15c
#data 0x03DC4F22
#data 0xE0340E34
#data 0xF318F2E6
#data 0x31ECE168
#data 0xF230D31d
#data 0xE05CFE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x64E3430b
#data 0x02EC9020
#data 0x8B062228
#data 0x420BD217
#data 0x901A64E3
#data 0x233803Ec
#data 0x8903

loc_8C0A17EA:
#data 0x84E4
#data 0xA00B7001
#data 0x80E4

loc_8C0A17F2:
#data 0xD313
#data 0x64E3430b
#data 0x8B052008
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6A03b

#align4
loc_8C0A1808:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0A1810:
#data 0x01A3
#data 0x0130
#data 0x019C01A1
#data 0x019E019f

#align4
loc_8C0A181C:
#data 0x40092492

#align4
loc_8C0A1820:
#data bank03.loc_8c03319e

loc_8C0A1824:
#data 0xC1BAAAAa
#data 0xC1D55555
#data 0xBE555555
#data 0x8C2896B0

#align4
loc_8C0A1834:
#data bank03.loc_8c034e8c

loc_8C0A1838:
#data bank03.loc_8c034dee

loc_8C0A183C:
#data bank04.loc_8c045748

loc_8C0A1840:
#data bank03.loc_8c03340c


loc_8C0A1844:
mov.l r14,@-r15
mov r4,r5
sts.l pr,@-r15
mov.l @(loc_8C0A188C,pc),r3 ; r3 set to 0x8C10235c
mov 0x01,r6 ; r6 set to 0x01
mov r4,r14
mov 0x08,r7 ; r7 set to 0x08
jsr @r3
add 0x34,r5
mov.l @(loc_8C0A1890,pc),r2 ; r2 set to 0x8C04223a
mov 0x49,r5 ; r5 set to 0x49
jsr @r2
mov r14,r4
mov.b @(0x04,r14),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0A1888,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0A1870:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0A1888,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0A187E:
mov.l @(loc_8C0A1894,pc),r3 ; r3 set to 0x8C0450C0
mov 0x00,r2 ; r2 set to 0x00
mov.w @(loc_8C0A1888,pc),r0 ; r0 set to 0x12c
jmp @r3
mov.b r2,@(r0,r4) 	

loc_8C0A1888:
#data 0x012c
#data 0x0000

#align4
loc_8C0A188C:
#data bank10.loc_8c10235c

loc_8C0A1890:
#data bank04.loc_8c04223a

loc_8C0A1894:
#data bank04.loc_8c0450C0
#data 0x7FF44F22
#data 0x60532F42
#data 0x80F80009
#data 0x00096063
#data 0xE501D351
#data 0xE60080F4
#data 0x6463430b
#data 0x8D122008
#data 0x92936403
#data 0xE120E026
#data 0x314CD34c
#data 0x04251434
#data 0x63F2E221
#data 0x1436324c
#data 0x840160F2
#data 0x84F88041
#data 0x84F42100
#data 0x7F0C2200
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0A18E6:
#data 0x2FE6
#data 0x7FF84F22
#data 0x60536E43
#data 0xD33F0009
#data 0x2F6080F4
#data 0x6563E601
#data 0xE400430b
#data 0x8D112008
#data 0x926D6403
#data 0xD33AE026
#data 0x314CE120
#data 0x04251434
#data 0x143653E6
#data 0x804184E1
#data 0x84F414E5
#data 0xE0212100
#data 0x043463F0

#align4
loc_8C0A1928:
#data 0x00096043
#data 0x4F267F08
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0A1934:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0A19F8,pc),r0 ; r0 set to 0x8C1565C0
extu.b r3,r3
mov.l @(0x18,r14),r5
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0A194A:
mov r4,r3
mov.l @(loc_8C0A19FC,pc),r1 ; r1 set to 0x8C1565C8
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

#align4
loc_8C0A195C:
#data 0x4F229143
#data 0x314C8444
#data 0x7001D326
#data 0x8044923d
#data 0x430B903c
#data 0x903A325c
#data 0x6143E201
#data 0x04247150
#data 0x80428452
#data 0x80418451
#data 0xF356E050
#data 0xE054F437
#data 0xF437F356
#data 0x035C902c
#data 0x70010434
#data 0x0424025c
#data 0x035CE030
#data 0x72506253
#data 0xD3170434
#data 0xE00C430b
#data 0x025CE024
#data 0x0424E300
#data 0x9018E2Fe
#data 0xE0310434
#data 0xE0040424
#data 0x4F26814e

#align4
loc_8C0A19C4:
#data 0x2FE69013
#data 0x600C005c
#data 0x8F038816
#data 0x84556E43
#data 0x89172008

#align4
loc_8C0A19D8:
#data 0x64E384E4
#data 0x80E47001
#data 0x6EF6A1B2
#data 0x00DC2E06
#data 0x012C00C0
#data 0x015901A3

#align4
loc_8C0A19F0:
#data bank04.loc_8c044F12

loc_8C0A19F4:
#data loc_8c0a1934

loc_8C0A19F8:
#data 0x8C1565C0

loc_8C0A19FC:
#data 0x8C1565C8

loc_8C0A1A00:
#data bank12.loc_8c129560

loc_8C0A1A04:
#data bank12.loc_8c1294C8

loc_8C0A1A08:
#data 0x025CE024
#data 0xE0340E24
#data 0xFE37F356
#data 0xF356E038
#data 0xE03CFE37
#data 0xFE37F356
#data 0x03ED9074
#data 0x8B042338
#data 0xE034D139
#data 0xA004415a
#data 0xF30d

loc_8C0A1A32:
#data 0xD138
#data 0x415AE034
#data 0xF30d

loc_8C0A1A3A:
#data 0xF2E6
#data 0xF230D136
#data 0x415AD436
#data 0xFE27E101
#data 0xF2E6E038
#data 0xF230F30d
#data 0xE03CFE27
#data 0xE03B034d
#data 0x633D024c
#data 0x412C622c
#data 0x8B072318
#data 0x64E384E5
#data 0x600CD12d
#data 0x031E4008
#data 0x6EF6432b

#align4
loc_8C0A1A74:
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0A1A78:
#data 0x70FF854e
#data 0x600F814e
#data 0x8B082008
#data 0xE5008445
#data 0x80457001
#data 0x0454E021
#data 0x00096053
#data 0x814e

loc_8C0A1A96:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0A1A9A:
#data 0x2FE6
#data 0x7FF84F22
#data 0x92346E43
#data 0x2F526353
#data 0x1F21323c
#data 0x70FF85Ee
#data 0x700181Ee
#data 0x2008600f
#data 0xE0028B0e
#data 0xE02181Ee
#data 0xE50106Ec
#data 0x64E3BF0f
#data 0x02ECE021
#data 0x7201E301
#data 0x02EC0E24
#data 0x0E242239

#align4
loc_8C0A1AD8:
#data 0x841651F1
#data 0x89082008
#data 0x64E384E4
#data 0x80E47001
#data 0x7F0865F2
#data 0xA12B4F26
#data 0x6EF6

loc_8C0A1AF2:
#data 0x7F08
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0A1AFA:
mov r4,r3
mov.l @(loc_8C0A1B24,pc),r1 ; r1 set to 0x8C1565E0
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x02A40130
#data 0xC3325555
#data 0x43325555
#data 0x434B9249
#data 0x8C2895F0

#align4
loc_8C0A1B20:
#data 0x8C1565D8

loc_8C0A1B24:
#data 0x8C1565E0


loc_8C0A1B28:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.w @(loc_8C0A1C6C,pc),r1 ; r1 set to 0xDc
mov.w @(loc_8C0A1C6C,pc),r2 ; r2 set to 0xDc
mov.l @(loc_8C0A1C80,pc),r3 ; r3 set to 0x8C129560
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l r5,@r15
mov.b @(0x04,r14),r0 	
mov.l @(0x14,r14),r4
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0A1C6E,pc),r0 ; r0 set to 0xC0
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C0A1C70,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0A1C72,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0A1C84,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov 0xFE,r3 ; r3 set to 0xFFFFFFFe
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0A1C70,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov 0x44,r5 ; r5 set to 0x44
mov.w @(loc_8C0A1C74,pc),r0 ; r0 set to 0x19c
mov.b r5,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x19d
mov.b r5,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
tst r3,r3
bf/s loc_8C0A1BAe
mov 0x00,r5 ; r5 set to 0x00
mov.w @(loc_8C0A1C76,pc),r0 ; r0 set to 0x1A1
mov 0x42,r3 ; r3 set to 0x42
bra loc_8C0A1BB4
mov.b r3,@(r0,r14) 	

loc_8C0A1BAE:
#data 0x9062
#data 0x0E24E243

#align4
loc_8C0A1BB4:
#data 0xD3349060
#data 0x70F20E55
#data 0x70260E54
#data 0x84E20E56
#data 0xE31A6232
#data 0x4000600c
#data 0x012D727c
#data 0x02157101
#data 0x0E349051
#data 0x0E3470Ff
#data 0xF346E034
#data 0xFE37D32a
#data 0xF346E038
#data 0xE03CFE37
#data 0x430BF346
#data 0xE40FFE37
#data 0x240963E3
#data 0x330CE038
#data 0x644FD024
#data 0x44002F36
#data 0xC723024d
#data 0xC723F008
#data 0x62F6425a
#data 0xF228F32d
#data 0xF22AF23e
#data 0xE05CF308
#data 0xC71FFE37
#data 0xE068F308
#data 0x9029FE37
#data 0x233803Ed
#data 0xE6298D08
#data 0xF3E6E05c
#data 0xFE37F34d
#data 0xF3E6E068
#data 0xFE37F34d

#align4
loc_8C0A1C40:
#data 0xE517D317
#data 0x64E3430b
#data 0x64E365F2
#data 0x4F267F04
#data 0x6EF6


loc_8C0A1C52:
mov 0x24,r0 ; r0 set to 0x24
mov.l r14,@-r15
mov.b @(r0,r5),r3
mov r4,r14
mov.l @(loc_8C0A1CA4,pc),r1 ; r1 set to 0x8C1565F0
mov r14,r4
mov.b r3,@(r0,r14) 	
mov.b @(0x05,r14),r0 	
extu.b r0,r0 ; r0 set to 0x24
shll2 r0 ; r0 set to 0x90
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0A1C6C:
#data 0x00Dc

loc_8C0A1C6E:
#data 0x00C0

loc_8C0A1C70:
#data 0x012c

loc_8C0A1C72:
#data 0x01A3

loc_8C0A1C74:
#data 0x019c

loc_8C0A1C76:
#data 0x01A1
#data 0x013F01Ac
#data 0x00000130

#align4
loc_8C0A1C80:
#data bank12.loc_8c129560

loc_8C0A1C84:
#data bank12.loc_8c1294C8
#data 0x8C2896B0

#align4
loc_8C0A1C8C:
#data bank03.loc_8c03319e

loc_8C0A1C90:
#data 0x8C1565A0
#data 0x40092492
#data 0xC1BAAAAa
#data 0xBE555555

#align4
loc_8C0A1CA0:
#data bank03.loc_8c034e8c

loc_8C0A1CA4:
#data 0x8C1565F0

loc_8C0A1CA8:
#data 0x4F222FE6
#data 0xE15C7FFc
#data 0x31EC6E43
#data 0xE034D32f
#data 0xF2E62F52
#data 0xE168F318
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x64E3430b
#data 0x02EC904b
#data 0x8B062228
#data 0x420BD226
#data 0x904564E3
#data 0x233803Ec
#data 0x8906

loc_8C0A1CEA:
#data 0x84E5
#data 0x80E57001
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0A1CF8:
#data 0x430BD320
#data 0x200864E3
#data 0x84E48B08
#data 0x700164E3
#data 0x65F280E4
#data 0x4F267F04
#data 0x6EF6A021

#align4
loc_8C0A1D14:
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0A1D1C:
mov.l r14,@-r15
mov r4,r5
sts.l pr,@-r15
mov.l @(loc_8C0A1D80,pc),r3 ; r3 set to 0x8C10235c
mov 0x01,r6 ; r6 set to 0x01
mov r4,r14
mov 0x08,r7 ; r7 set to 0x08
jsr @r3
add 0x34,r5
mov.l @(loc_8C0A1D84,pc),r2 ; r2 set to 0x8C04223a
mov 0x49,r5 ; r5 set to 0x49
jsr @r2
mov r14,r4
mov.b @(0x04,r14),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0A1D72,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0A1D48:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0A1D72,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0A1D56:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0A1D72,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0A1D64:
mov.l @(loc_8C0A1D88,pc),r3 ; r3 set to 0x8C0450C0
mov 0x00,r2 ; r2 set to 0x00
mov.w @(loc_8C0A1D72,pc),r0 ; r0 set to 0x12c
jmp @r3
mov.b r2,@(r0,r4) 	
#data 0x019f
#data 0x019e

loc_8C0A1D72:
#data 0x012c

#align4
loc_8C0A1D74:
#data bank03.loc_8c034dee

loc_8C0A1D78:
#data bank04.loc_8c045748

loc_8C0A1D7C:
#data bank03.loc_8c03340c

loc_8C0A1D80:
#data bank10.loc_8c10235c

loc_8C0A1D84:
#data bank04.loc_8c04223a

loc_8C0A1D88:
#data bank04.loc_8c0450C0
#data 0x4F222FE6
#data 0x2F507FFc
#data 0xD31DE501
#data 0xE6006E43
#data 0x6463430b
#data 0x8D1B2008
#data 0xD31A6403
#data 0x1434E020
#data 0x14E6932a
#data 0x042462F0
#data 0x0435E026
#data 0xF408C716
#data 0x03ED9023
#data 0x89012338
#data 0xF408C714
#data 0xF3E6E034
#data 0xF437F340
#data 0xF308C712
#data 0xF2E6E038
#data 0xF427F230
#data 0x00096043
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0A1DE8:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0A1E08,pc),r0 ; r0 set to 0x2F0
mov 0x02,r2 ; r2 set to 0x02
mov.l @(0x18,r14),r3
mov r14,r4
mov.l @(loc_8C0A1E20,pc),r1 ; r1 set to 0x8C1565F8
mov.l r2,@(r0,r3) 	
mov.b @(0x04,r14),r0 	
extu.b r0,r0 ; r0 set to 0xF0
shll2 r0 ; r0 set to 0x3C0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x01302F00

loc_8C0A1E08:
#data 0x02F0
#data 0x0000

#align4
loc_8C0A1E0C:
#data bank04.loc_8c044F12

loc_8C0A1E10:
#data loc_8c0a1DE8
#data 0x41D55555
#data 0xC1D55555
#data 0x43092492

#align4
loc_8C0A1E20:
#data 0x8C1565F8

loc_8C0A1E24:
#data 0x4F222FE6
#data 0xD2547FD0
#data 0xD35461F3
#data 0x762C66F3
#data 0x430B712c
#data 0xD252E004
#data 0xD35061F3
#data 0x430B711c
#data 0xD250E010
#data 0xD35061F3
#data 0x430B7110
#data 0xD24FE00c
#data 0xD34A61F3
#data 0x430B7108
#data 0xD348E006
#data 0xD24C61F3
#data 0xE008430b
#data 0xE3018444
#data 0x9282E120
#data 0x80447001
#data 0x907DE740
#data 0x70100434
#data 0x70010414
#data 0x9178E328
#data 0x70010434
#data 0x70010474
#data 0x314CD342
#data 0x55460474
#data 0x430B325c
#data 0x906B7081
#data 0x6143E201
#data 0x04247150
#data 0x80428452
#data 0x80418451
#data 0xF356E050
#data 0xE054F437
#data 0xF437F356
#data 0x035C905e
#data 0x70010434
#data 0x0424025c
#data 0x035CE030
#data 0x72506253
#data 0xD32F0434
#data 0xE00C430b
#data 0xE024E308
#data 0xE0030434
#data 0x63F38047
#data 0x7308904a
#data 0xE0200E4c
#data 0x6EEC024c
#data 0x22284E00
#data 0x8D013E3c
#data 0x6E736EE1

#align4
loc_8C0A1EF8:
#data 0x005E903f
#data 0x8B008802
#data 0x4E08

loc_8C0A1F02:
#data 0x60E3
#data 0x814E0009
#data 0x814FE064
#data 0xEE00E023
#data 0xE02004E4
#data 0x677C074c
#data 0x2338637d
#data 0xE7048900

#align4
loc_8C0A1F20:
#data 0x63F3902b
#data 0x025EE121
#data 0x9025314c
#data 0x677D372c
#data 0x6270373c
#data 0x62F32120
#data 0x7210004c
#data 0x4008600c
#data 0x901AF426
#data 0x8801005e
#data 0xC7148B02
#data 0xF432F308

#align4
loc_8C0A1F50:
#data 0xF508C713
#data 0x005E9011
#data 0x8F018803
#data 0xF453E020

#align4
loc_8C0A1F60:
#data 0x2228024c
#data 0xC70F8928
#data 0x9006F408
#data 0x8801005e
#data 0x0009A01a
#data 0x00DC012c
#data 0x02C001A3

#align4
loc_8C0A1F7C:
#data 0x8C13B018

loc_8C0A1F80:
#data bank12.loc_8c129620

loc_8C0A1F84:
#data 0x8C13B01c

loc_8C0A1F88:
#data 0x8C13B02c

loc_8C0A1F8C:
#data bank12.loc_8c1294C8

loc_8C0A1F90:
#data 0x8C13B038

loc_8C0A1F94:
#data 0x8C13B03e

loc_8C0A1F98:
#data bank12.loc_8c129560
#data 0x3FC00000
#data 0x3F400000
#data 0xC1200000

#align4
loc_8C0A1FA8:
#data 0xC7488B01
#data 0xF408

loc_8C0A1FAE:
#data 0x9086
#data 0x8803005e
#data 0xF4538B00

#align4
loc_8C0A1FB8:
#data 0x024D9082
#data 0x8D012228
#data 0xF44DE05c

#align4
loc_8C0A1FC4:
#data 0xE068F447
#data 0xF437F38d
#data 0x034CE020
#data 0x8F042338
#data 0xE054E744
#data 0xE050F457
#data 0xF457

loc_8C0A1FDE:
#data 0x9070
#data 0x0474926d
#data 0x04747001
#data 0x004CE020
#data 0x600C325c
#data 0xE022036c
#data 0xE0200434
#data 0x63F3004c
#data 0x731C6222
#data 0x4008600c
#data 0x012C303c
#data 0xD231905c
#data 0x700B0414
#data 0x70F204E5
#data 0x702604E4
#data 0x612204E6
#data 0x8442717c
#data 0x600CE602
#data 0x031D4000
#data 0x01357301
#data 0x410BD129
#data 0x7F30E515
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0A203A:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
fmov.s fr15,@-r15
sts.l pr,@-r15
add 0xF0,r15
mov r4,r14
mov.l @(loc_8C0A20D8,pc),r2 ; r2 set to 0x8C13B046
mov.l @(loc_8C0A20DC,pc),r3 ; r3 set to 0x8C129620
mov r15,r1
mov.l @(0x18,r14),r13
jsr @r3
mov 0x10,r0 ; r0 set to 0x10
mov.b @(0x05,r14),r0 	
mov.l @(loc_8C0A20E0,pc),r12 ; r12 set to 0x8C034DEe
tst r0,r0
bt loc_8C0A2062
bra loc_8C0A2296
nop 	

loc_8C0A2062:
mov.l @(loc_8C0A20E4,pc),r3 ; r3 set to 0x8C03340c
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8C0A2074
bsr loc_8C0A238c
mov r14,r4
bra loc_8C0A22Ee
nop 	

#align4
loc_8C0A2074:
#data 0x02EC9027
#data 0x8B052228
#data 0xF3D69024
#data 0xF2E6E038
#data 0x8B3BF325

#align4
loc_8C0A2088:
#data 0xF408C717
#data 0xF508C717
#data 0x03ED9016
#data 0x89032338
#data 0xF408C715
#data 0xF508C715

#align4
loc_8C0A20A0:
#data 0xFE47E05c
#data 0xF308C714
#data 0xFE37E060
#data 0xFE57E068
#data 0xF308C712
#data 0xFE37E06c
#data 0xA07EE001
#data 0x02C080E6
#data 0x019C0130
#data 0x019F01A1
#data 0x0000041c
#data 0xC1A00000
#data 0x8C2896B0

#align4
loc_8C0A20D4:
#data bank03.loc_8c034e8c

loc_8C0A20D8:
#data 0x8C13B046

loc_8C0A20DC:
#data bank12.loc_8c129620

loc_8C0A20E0:
#data bank03.loc_8c034dee

loc_8C0A20E4:
#data bank03.loc_8c03340c
#data 0x40555555
#data 0xBBD55555
#data 0xC0555555
#data 0x3BD55555
#data 0xC0CDB6Db
#data 0xBE892492

#align4
loc_8C0A2100:
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x8F042008
#data 0xB105FF8d
#data 0xA04A64E3
#data 0x0009

loc_8C0A2116:
#data 0x905a
#data 0x222802Ec
#data 0xEB008D37
#data 0x73FE03Ec
#data 0x633E0E34
#data 0x8B014315
#data 0x0009A0Df

#align4
loc_8C0A2130:
#data 0xB0F30EB4
#data 0xE02164E3
#data 0x72FF02Ec
#data 0x622C0E24
#data 0x89322228
#data 0x9243E020
#data 0x63F300Ec
#data 0x600C32Dc
#data 0x40086222
#data 0x012C303c
#data 0xD21F903b
#data 0x700B0E14
#data 0x70F20EB5
#data 0x70260EB4
#data 0x84E20EB6
#data 0x600C6122
#data 0x717C4000
#data 0x7301031d
#data 0x4C0B0135
#data 0xE02064E3
#data 0x222802Ec
#data 0xA0818B01
#data 0x0009

loc_8C0A218A:
#data 0xA0B0
#data 0x0009

loc_8C0A218E:
#data 0x9021
#data 0x233803Ec
#data 0x0EB48924
#data 0x64E3B0C0
#data 0x02ECE021
#data 0x0E2472Ff
#data 0x2228622c
#data 0x8B1a

loc_8C0A21AA:
#data 0xE05c
#data 0xE060FEF7
#data 0xE068FEF7
#data 0xE06CFEF7
#data 0xFEF7

loc_8C0A21BA:
#data 0x84E5
#data 0xD307E515
#data 0x7001E603
#data 0x430B80E5
#data 0xA09064E3
#data 0x01A00009
#data 0x01A102C0
#data 0x0000019e
#data 0x8C2896B0

#align4
loc_8C0A21DC:
#data bank03.loc_8c034e8c

loc_8C0A21E0:
#data 0x02ECE020
#data 0x89282228
#data 0x03ECE022
#data 0x0E3473Ff
#data 0x02ED9085
#data 0x89032228
#data 0x03ECE022
#data 0x0E347302

#align4
loc_8C0A2200:
#data 0x02ECE022
#data 0x2239E31f
#data 0x84E70E24
#data 0x80E770Ff
#data 0x2008600c
#data 0xE0038B0c
#data 0x80E79572
#data 0x640385Ef
#data 0x624D7464
#data 0x8B003257
#data 0x6453

loc_8C0A222A:
#data 0x6043
#data 0x81EF0009

#align4
loc_8C0A2230:
#data 0xD33685Ef
#data 0x430B6503
#data 0x64E3

loc_8C0A223A:
#data 0x9062
#data 0x222802Dc
#data 0x905F8B14
#data 0x03DD925f
#data 0x2328633d
#data 0xF4FC8D02
#data 0xF408C72f

#align4
loc_8C0A2254:
#data 0x92579056
#data 0x633D03Dd
#data 0x89012328
#data 0xF408C72c

#align4
loc_8C0A2264:
#data 0xF3E6E038
#data 0xFE37F340

#align4
loc_8C0A226C:
#data 0x31ECE15c
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x64E34C0b

#align4
loc_8C0A228C:
#data 0x430BD322
#data 0xA02C64E3
#data 0x0009

loc_8C0A2296:
#data 0x84E6
#data 0x89042008
#data 0xE3019035
#data 0x213A01Ec
#data 0x0E14

loc_8C0A22A6:
#data 0xE15c
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
#data 0x4C0BFE27
#data 0x600E64E3
#data 0x89024011
#data 0x700184E4
#data 0x80E4


loc_8C0A22EE:
add 0x10,r15
lds.l @r15+,pr 	
fmov.s @r15+,fr15
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x0130
#data 0x052503E8
#data 0x2000034a
#data 0x012C1000

#align4
loc_8C0A230C:
#data bank03.loc_8c033718
#data 0x40700000
#data 0xC0700000

#align4
loc_8C0A2318:
#data bank04.loc_8c045748

loc_8C0A231C:
#data 0x4F222FE6
#data 0x903D7FF4
#data 0x03EC6E43
#data 0x892B2338
#data 0xC81100Ec
#data 0xE0238B28
#data 0x02ECD41b
#data 0xF308C71b
#data 0x622CE023
#data 0x42004208
#data 0xF228324c
#data 0xFF2AF232
#data 0xC71703Ec
#data 0xE004F208
#data 0x4308633c
#data 0x343C4300
#data 0xE004F146
#data 0xFF17F122
#data 0x06ECE023
#data 0x0E647601
#data 0x666C76Ff
#data 0xD30F7609
#data 0x430B65F3
#data 0xE02364E3
#data 0xE30702Ec
#data 0x0E242239

#align4
loc_8C0A2384:
#data 0x4F267F0c
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0A238C:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0A23A2,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0A239A:
mov.l @(loc_8C0A23B4,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x019e

loc_8C0A23A2:
#data 0x012c

#align4
loc_8C0A23A4:
#data 0x8C156608
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0A23B0:
#data bank0f.loc_8c0fDAB6

loc_8C0A23B4:
#data bank04.loc_8c0450C0
#data 0x7FFC4F22
#data 0xE501D348
#data 0xE6002F42
#data 0x6463430b
#data 0x8D0D2008
#data 0xD3456403
#data 0x1434E026
#data 0x62F2937c
#data 0x04351426
#data 0x62F29079
#data 0x9077032d
#data 0x0436633d
#data 0x4F267F04
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0A23F0:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0A24E8,pc),r1 ; r1 set to 0x8C156648
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0A2404:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0A24D6,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0A24D6,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0A24EC,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0A24D8,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0A24DA,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0A24DC,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0A24F0,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov 0x15,r5 ; r5 set to 0x15
mov.b r2,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov 0x0D,r6 ; r6 set to 0x0d
mov.l @(loc_8C0A24F4,pc),r3 ; r3 set to 0x8C034E8c
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0A247C:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0A24F8,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
jsr @r3
mov r5,r13
mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
mov.l @(loc_8C0A24F0,pc),r3 ; r3 set to 0x8C1294C8, r3 set to 0x8C1294C8
mov.b @(r0,r13),r2
mov r14,r1
add 0x34,r1
mov.b r2,@(r0,r14) 	
mov r13,r2
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
mov.w @(loc_8C0A24D2,pc),r0 ; r0 set to 0x158, r0 set to 0x158
mov.w @(r0,r13),r2
mov.w @(loc_8C0A24D4,pc),r0 ; r0 set to 0xCC, r0 set to 0xCc
extu.w r2,r2
mov.l @(r0,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
cmp/eq r2,r3
bt loc_8C0A24B8
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
mov.l @r15+,r13
bra loc_8C0A24C4
mov.l @r15+,r14

loc_8C0A24B8:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0A24C0:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0A24C4:
mov.w @(loc_8C0A24DA,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0A24FC,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x2F01

loc_8C0A24D2:
#data 0x0158

loc_8C0A24D4:
#data 0x00Cc

loc_8C0A24D6:
#data 0x00Dc

loc_8C0A24D8:
#data 0x00C0

loc_8C0A24DA:
#data 0x012c

loc_8C0A24DC:
#data 0x01A3
#data 0x0000

#align4
loc_8C0A24E0:
#data bank04.loc_8c044F12

loc_8C0A24E4:
#data loc_8c0a23F0

loc_8C0A24E8:
#data 0x8C156648

loc_8C0A24EC:
#data bank12.loc_8c129560

loc_8C0A24F0:
#data bank12.loc_8c1294C8

loc_8C0A24F4:
#data bank03.loc_8c034e8c

loc_8C0A24F8:
#data bank03.loc_8c034dee

loc_8C0A24FC:
#data bank04.loc_8c0450C0
#data 0x7FF44F22
#data 0x60532F42
#data 0x81F40009
#data 0x00096063
#data 0xE501D345
#data 0xE60081F2
#data 0x6463430b
#data 0x8D152008
#data 0xD3426403
#data 0x917BE026
#data 0x93761434
#data 0x62F2314c
#data 0x04351426
#data 0x62F29072
#data 0x9070032d
#data 0x0436633d
#data 0x210285F4
#data 0x85F2916d
#data 0x2102314c
#data 0x4F267F0c
#data 0x6043000b
;-------------------------------------------------------------------------------
#data 0x2FD62FE6
#data 0xEC012FC6
#data 0x2FA62FB6
#data 0x2F966A43
#data 0xE8002F86
#data 0x6D834F22
#data 0x430BD330
#data 0xEE070009
#data 0xE30ED22f
#data 0x0E372E09
#data 0x6563E600
#data 0x3E2C0E1a
#data 0x64A3BFBc
#data 0x8D072008
#data 0xE0216403
#data 0xE0200484
#data 0x904504D4
#data 0x043663E1
#data 0x6BE369E3
#data 0x7B087906
#data 0x66B16591
#data 0x64A3BFAa
#data 0x8D082008
#data 0xE0216403
#data 0x04C49136
#data 0x04D4E020
#data 0x85E1314c
#data 0x66B12102
#data 0x659185E6
#data 0x85E5360c
#data 0xBF97350c
#data 0x200864A3
#data 0x64038D08
#data 0x9123E021
#data 0xE02004C4
#data 0x314C04D4
#data 0x210285E2
#data 0xE2087D01
#data 0x332363Df
#data 0x60438BBc
#data 0x4F260009
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0A2608:
mov r4,r3
mov.l @(loc_8C0A2638,pc),r1 ; r1 set to 0x8C156708
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x2F02
#data 0x00CC0158
#data 0x00D400D0
#data 0x000000D8

#align4
loc_8C0A2628:
#data bank04.loc_8c044F12

loc_8C0A262C:
#data loc_8c0a2608

loc_8C0A2630:
#data bank03.loc_8c03319e

loc_8C0A2634:
#data 0x8C156658

loc_8C0A2638:
#data 0x8C156708

loc_8C0A263C:
#data 0x6E432FE6
#data 0x2FC62FD6
#data 0xFFFB2FB6
#data 0x4F2291B2
#data 0x31EC84E4
#data 0x700192Ae
#data 0x80E454E6
#data 0x81EEE005
#data 0xD35890A9
#data 0x324C430b
#data 0xE20190A6
#data 0x715061E3
#data 0x84420E24
#data 0x844180E2
#data 0xE05080E1
#data 0xFE37F346
#data 0xF346E054
#data 0x9098FE37
#data 0x0E34034c
#data 0x024C7001
#data 0xE0300E24
#data 0x6243034c
#data 0x0E347250
#data 0x430BD34a
#data 0xE024E00c
#data 0x024C9188
#data 0x31ECE308
#data 0xE0200E24
#data 0xC90100Ec
#data 0xE0242100
#data 0xE0200E34
#data 0xE30102Ec
#data 0x622C907c
#data 0x0E254201
#data 0x0E24E022
#data 0x02ED9076
#data 0x0E252239
#data 0x2118014d
#data 0xE5108D01
#data 0xE5F0

loc_8C0A26DA:
#data 0x655f
#data 0x455AD33c
#data 0xFF08C739
#data 0xF246E034
#data 0xF0FCF32d
#data 0xFE27F23e
#data 0xF308C736
#data 0xF246E038
#data 0xF230E442
#data 0x905CFE27
#data 0x70010E44
#data 0x0E44430b
#data 0xC90FD132
#data 0xD3324000
#data 0x9053041d
#data 0x700B0E44
#data 0x0E45E400
#data 0x0E4470F2
#data 0x0E467026
#data 0x623284E2
#data 0x9448600c
#data 0x727C4000
#data 0x34EC012d
#data 0x02157101
#data 0xD2285D43
#data 0x5B424D08
#data 0x5C414D00
#data 0x61D13D2c
#data 0x3B0C85D1
#data 0x200885D2
#data 0x3C1C8D05
#data 0xE1019030
#data 0x231A03Ed
#data 0x0E35

loc_8C0A275E:
#data 0x85D3
#data 0xD31FE515
#data 0xE0226603
#data 0x600C00Ec
#data 0x4008C902
#data 0x430B360c
#data 0xE02264E3
#data 0x600C00Ec
#data 0x8D01C801
#data 0x6CCBE022

#align4
loc_8C0A2784:
#data 0x600C00Ec
#data 0x8905C802
#data 0xE3019014
#data 0x02ED6BBb
#data 0x0E25223a

#align4
loc_8C0A2798:
#data 0xF0FC6CCf
#data 0xE0344C5a
#data 0x6BBFF2E6
#data 0xF23EF32d
#data 0xE038FE27
#data 0x0009A01a
#data 0x00C000Dc
#data 0x01A3012c
#data 0x019C0130
#data 0x00CC01A1

#align4
loc_8C0A27C0:
#data bank12.loc_8c129560

loc_8C0A27C4:
#data bank12.loc_8c1294C8
#data 0x3FD55555
#data 0x4391B6Db

#align4
loc_8C0A27D0:
#data bank03.loc_8c03319e

loc_8C0A27D4:
#data 0x8C156718
#data 0x8C2896B0

#align4
loc_8C0A27DC:
#data 0x8C1566C8

loc_8C0A27E0:
#data bank03.loc_8c034e8c

loc_8C0A27E4:
#data 0x64E34B5a
#data 0xF2E6D122
#data 0x415AF32d
#data 0xF23EF00d
#data 0x4F26FE27
#data 0x6BF6FFF9
#data 0x6DF66CF6
#data 0x6EF6

loc_8C0A2802:
#data 0x9034
#data 0x2FE6E301
#data 0x4F226E43
#data 0x54E602Ec
#data 0x0E24223a
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x8B174011
#data 0x034D9026
#data 0x633D9025
#data 0x323002Ee
#data 0xD3128B10
#data 0x64E3430b
#data 0x02ECE021
#data 0x8B042228
#data 0x430BD30f
#data 0xC8070009
#data 0x8B08

loc_8C0A2846:
#data 0x4F26
#data 0x64E3D30d
#data 0x6EF6432b

#align4
loc_8C0A2850:
#data 0x64E34F26
#data 0x6EF6A005

#align4
loc_8C0A2858:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0A285E:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0A2862:
mov.w @(loc_8C0A286E,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0A2884,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0A286E:
#data 0x012c
#data 0x00CC0158
#data 0x40092492

#align4
loc_8C0A2878:
#data bank03.loc_8c034dee

loc_8C0A287C:
#data bank03.loc_8c03319e

loc_8C0A2880:
#data bank04.loc_8c045748

loc_8C0A2884:
#data bank04.loc_8c0450C0

loc_8C0A2888:
#data 0x4F222FE6
#data 0x2F527FFc
#data 0xD343E501
#data 0xE6006E43
#data 0x6463430b
#data 0x8D142008
#data 0xD3406403
#data 0x14349073
#data 0x14E69372
#data 0x042662F2
#data 0x0435E026
#data 0x200884E3
#data 0xE0208B03
#data 0xA004E200
#data 0x0424

loc_8C0A28C2:
#data 0xE020
#data 0x710101Ec
#data 0x0414

loc_8C0A28CA:
#data 0x6043
#data 0x7F040009
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0A28D6:
mov r4,r3
mov.l @(loc_8C0A29A8,pc),r1 ; r1 set to 0x8C156738
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

#align4
loc_8C0A28E8:
#data 0x91529051
#data 0x054E4F22
#data 0x8444314c
#data 0x7001D32d
#data 0x8044924b
#data 0x814EE078
#data 0x814FE008
#data 0x430B9046
#data 0x9044325c
#data 0x6143E201
#data 0x04247150
#data 0x80428452
#data 0x80418451
#data 0xF356E050
#data 0xE054F437
#data 0xF437F356
#data 0x035C9036
#data 0x70010434
#data 0x0424025c
#data 0x035CE030
#data 0x72506253
#data 0xD31C0434
#data 0xE00C430b
#data 0x025CE024
#data 0xE600E3Ff
#data 0xE0310424
#data 0x90220434
#data 0x70010464
#data 0x70930464
#data 0x2338034d
#data 0xE6208D01
#data 0xE6E0

loc_8C0A2966:
#data 0x666f
#data 0x465A5346
#data 0xF236E034
#data 0xF008C710
#data 0xF32DE034
#data 0xE604D30f
#data 0xF427F23e
#data 0xF356900c
#data 0xE514E038
#data 0x432BF437
#data 0x00CC4F26
#data 0x00DC2F03
#data 0x012C00C0
#data 0x019C01A3
#data 0x0000041c

#align4
loc_8C0A29A0:
#data bank04.loc_8c044F12

loc_8C0A29A4:
#data loc_8c0a28D6

loc_8C0A29A8:
#data 0x8C156738

loc_8C0A29AC:
#data bank12.loc_8c129560

loc_8C0A29B0:
#data bank12.loc_8c1294C8
#data 0x3FD55555

#align4
loc_8C0A29B8:
#data bank03.loc_8c034e8c

loc_8C0A29BC:
#data 0x6E432FE6
#data 0x4F22E024
#data 0x035C55E6
#data 0x85EF0E34
#data 0x890D2008
#data 0x70FF85Ef
#data 0x600F81Ef
#data 0x8B072008
#data 0x02ECE020
#data 0x622CE304
#data 0x89013233
#data 0x64E3BF4e

#align4
loc_8C0A29EC:
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x8B092008
#data 0x64E384E4
#data 0xE603D311
#data 0x80E47001
#data 0x4F26E514
#data 0x6EF6432b

#align4
loc_8C0A2A0C:
#data 0xD30E4F26
#data 0x432B64E3
#data 0x6EF6

loc_8C0A2A16:
#data 0x2FE6
#data 0xD30B4F22
#data 0x6E43430b
#data 0x4011600e
#data 0x84E48905
#data 0x7001E300
#data 0x900880E4
#data 0x0E34

loc_8C0A2A32:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0A2A38:
mov.l @(loc_8C0A2A4C,pc),r3 ; r3 set to 0x8C0450C0
mov 0x00,r2 ; r2 set to 0x00
mov.w @(loc_8C0A2A42,pc),r0 ; r0 set to 0x12c
jmp @r3
mov.b r2,@(r0,r4) 	

loc_8C0A2A42:
#data 0x012c

#align4
loc_8C0A2A44:
#data bank03.loc_8c034e8c

loc_8C0A2A48:
#data bank03.loc_8c034dee

loc_8C0A2A4C:
#data bank04.loc_8c0450C0
#data 0xC74C2FE6
#data 0xEE002FD6
#data 0xEC042FC6
#data 0x6D432FB6
#data 0xFFFB2FA6
#data 0xFFDBFFEb
#data 0xFD084F22
#data 0xFE08C746
#data 0xFF08C746
#data 0xDA429B80
#data 0xE600E501
#data 0x64634A0b
#data 0x8D162008
#data 0xE0266403
#data 0x1424D241
#data 0x04B514D6
#data 0x04E4E020
#data 0x03DD9071
#data 0x8D012338
#data 0xF4DCF4Ec
#data 0xF3D6E034
#data 0xF437F340
#data 0xF3D69068
#data 0xF3F0E038
#data 0x7E02F437
#data 0x8BDF3EC3
#data 0x00096043
#data 0xFDF94F26
#data 0xFFF9FEF9
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0A2AD0:
#data 0xE6002FE6
#data 0x6D432FD6
#data 0x6C532FC6
#data 0xE501FFFb
#data 0xD3274F22
#data 0x6463430b
#data 0x8D352008
#data 0x92436E03
#data 0xD327E026
#data 0x1EC61E34
#data 0xE0200E25
#data 0x0E3403Dc
#data 0xF308C724
#data 0xF4D6E038
#data 0xF4309038
#data 0xF245F2C6
#data 0xFF8D8F1c
#data 0xFF08C720
#data 0x03DCE020
#data 0x89012338
#data 0xFF08C71e

#align4
loc_8C0A2B24:
#data 0x430BD31e
#data 0xC9070009
#data 0x4011405a
#data 0xF32D8D04
#data 0x425AD21b
#data 0xF320F20d

#align4
loc_8C0A2B3C:
#data 0xF008C71a
#data 0x901BE301
#data 0xE021F4C6
#data 0xF43E0E34

#align4
loc_8C0A2B4C:
#data 0xF3D6E034
#data 0xFE37F3F0
#data 0xFE47E038

#align4
loc_8C0A2B58:
#data 0xFFF94F26
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0A2B64:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0A2BAC,pc),r1 ; r1 set to 0x8C156748
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x01302F04
#data 0x0000041c

#align4
loc_8C0A2B80:
#data bank04.loc_8c044F12
#data 0x41555555
#data 0xC1555555
#data 0x42CDB6Db

#align4
loc_8C0A2B90:
#data loc_8c0a2B64
#data 0xC2092492
#data 0x42055555
#data 0xC2055555

#align4
loc_8C0A2BA0:
#data bank03.loc_8c03319e
#data 0x4F800000
#data 0x40092492

#align4
loc_8C0A2BAC:
#data 0x8C156748


loc_8C0A2BB0:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0A2CC8,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0A2CC8,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0A2CD4,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0A2CCA,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0A2CCC,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0A2CCE,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0A2CD8,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov 0x08,r3 ; r3 set to 0x08
mov.b @(r0,r13),r2
mov 0x20,r5 ; r5 set to 0x20
mov.b r3,@(r0,r14) 	
mov r5,r0 ; r0 set to 0x20
nop 	
mov.w r0,@(0x1C,r14) 	
mov 0x43,r3 ; r3 set to 0x43
mov.w @(loc_8C0A2CD0,pc),r0 ; r0 set to 0x19c
mov 0x42,r2 ; r2 set to 0x42
mov 0x00,r4 ; r4 set to 0x00
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
mov.l @(loc_8C0A2CDC,pc),r3 ; r3 set to 0x8C2896B0
mov.l r4,@(r0,r14) 	
mov.b @(0x02,r14),r0 	
mov.l @r3,r2 ; r2 ??	
extu.b r0,r0 ; r0 set to 0xC4
shll r0 ; r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2) 	
mov.w @(loc_8C0A2CD2,pc),r0 ; r0 set to 0x13f
mov.b r5,@(r0,r14) 	
add 0xFF,r0 ; r0 set to 0x13e
mov.b r5,@(r0,r14) 	
add 0xFF,r0 ; r0 set to 0x13d
mov.b r5,@(r0,r14) 	
add 0xFF,r0 ; r0 set to 0x13c
mov.l @(loc_8C0A2CE0,pc),r2 ; r2 set to 0x8C034E8c
mov.b r5,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r6
mov 0x16,r5 ; r5 set to 0x16
add 0x08,r6
jsr @r2
mov r14,r4 ; r4 ??? bc r14 is ???	
mov.l @(loc_8C0A2CE4,pc),r3 ; r3 set to 0x8C03340c
jsr @r3
mov r14,r4
tst r0,r0
bt loc_8C0A2C7e
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
bra loc_8C0A2AD0
mov.l @r15+,r14

loc_8C0A2C7E:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0A2C86:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l r5,@r15
mov.b @(0x05,r14),r0 	
tst r0,r0
bf loc_8C0A2D40
mov.w @(0x1C,r14),r0 	
add 0xFF,r0
mov.w r0,@(0x1C,r14) 	
exts.w r0,r0
cmp/pl r0
bt loc_8C0A2CF0
mov.b @(0x05,r14),r0 	
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3
tst r3,r3
bf loc_8C0A2D04
mov.l @(loc_8C0A2CE8,pc),r3 ; r3 set to 0x8C03319e
jsr @r3
nop 	
and 0x03,r0 	
mov.l @(loc_8C0A2CEC,pc),r2 ; r2 set to 0x8C034C38
mov r0,r6 ; r6 set to 0x21
mov 0x1B,r5 ; r5 set to 0x1b
add 0x0A,r6 ; r6 set to 0x2b
jsr @r2
mov r14,r4
bra loc_8C0A2D04
nop 	

loc_8C0A2CC8:
#data 0x00Dc

loc_8C0A2CCA:
#data 0x00C0

loc_8C0A2CCC:
#data 0x012c

loc_8C0A2CCE:
#data 0x01A3

loc_8C0A2CD0:
#data 0x019c

loc_8C0A2CD2:
#data 0x013f

#align4
loc_8C0A2CD4:
#data bank12.loc_8c129560

loc_8C0A2CD8:
#data bank12.loc_8c1294C8

loc_8C0A2CDC:
#data 0x8C2896B0

#align4
loc_8C0A2CE0:
#data bank03.loc_8c034e8c

loc_8C0A2CE4:
#data bank03.loc_8c03340c

loc_8C0A2CE8:
#data bank03.loc_8c03319e

loc_8C0A2CEC:
#data bank03.loc_8c034C38

loc_8C0A2CF0:
#data 0x02EC9052
#data 0x8B022228
#data 0x430BD32a
#data 0x64E3

loc_8C0A2CFE:
#data 0xD22a
#data 0x64E3420b


loc_8C0A2D04:
mov.b @(0x06,r14),r0 	
tst r0,r0
bf loc_8C0A2D80
mov.w @(loc_8C0A2D9A,pc),r0 ; r0 set to 0x19e
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8C0A2D80
mov.w @(loc_8C0A2D9C,pc),r0 ; r0 set to 0x1B0
mov.l @(r0,r14),r4
mov.w @(loc_8C0A2D9E,pc),r0 ; r0 set to 0x233
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
extu.b r0,r0
cmp/eq 0x09,r0 	
bf loc_8C0A2D80
mov.l @(loc_8C0A2DAC,pc),r3 ; r3 set to 0x8C0E779c
mov 0x01,r5 ; r5 set to 0x01
jsr @r3
mov.l @r15,r4
tst r0,r0
bt loc_8C0A2D80
mov.b @(0x06,r14),r0 	
mov r14,r4
mov 0x0A,r5 ; r5 set to 0x0a
add 0x01,r0
mov.b r0,@(0x06,r14) 	
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0A2DB0,pc),r3 ; r3 set to 0x8C04223a
jmp @r3
mov.l @r15+,r14

loc_8C0A2D40:
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8C0A2D5c
mov.l @(loc_8C0A2DA4,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r14,r4
exts.b r0,r0 ; r0 ??	
cmp/pz r0
bf loc_8C0A2D74
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0A2D5C:
#data 0x430BD315
#data 0x600E64E3
#data 0x8B054011
#data 0x420BD212
#data 0x600E64E3
#data 0x89054011


loc_8C0A2D74:
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
bra loc_8C0A2D8c
mov.l @r15+,r14

loc_8C0A2D80:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0A2D88:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0A2D8C:
mov.w @(loc_8C0A2DA0,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0A2DB8,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x0141

loc_8C0A2D9A:
#data 0x019e

loc_8C0A2D9C:
#data 0x01B0

loc_8C0A2D9E:
#data 0x0233

loc_8C0A2DA0:
#data 0x012c
#data 0x0000

#align4
loc_8C0A2DA4:
#data bank03.loc_8c034dee

loc_8C0A2DA8:
#data bank04.loc_8c045748

loc_8C0A2DAC:
#data bank0e.loc_8c0e779c

loc_8C0A2DB0:
#data bank04.loc_8c04223a

loc_8C0A2DB4:
#data bank03.loc_8c034D8c

loc_8C0A2DB8:
#data bank04.loc_8c0450C0
#data 0x7FFC4F22
#data 0xE501D34f
#data 0xE6002F42
#data 0x6463430b
#data 0x8D0A2008
#data 0xD34C6403
#data 0x1434E026
#data 0x62F2938c
#data 0xE2001426
#data 0xE0200435
#data 0x7F040424
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0A2DEE:
#data 0x2FE6
#data 0x7FFC4F22
#data 0xE5012F52
#data 0x6E43D341
#data 0x430BE600
#data 0x20086463
#data 0x64038D1d
#data 0xE026D33e
#data 0x71346143
#data 0x93701434
#data 0x142662F2
#data 0x0435E201
#data 0x0424E020
#data 0x03ECE022
#data 0x723462E3
#data 0xD3370434
#data 0xE00C430b
#data 0xE03462F2
#data 0xF326F246
#data 0xF231E064
#data 0x85EFF427
#data 0x814f

loc_8C0A2E42:
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0A2E4A:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0A2F0C,pc),r1 ; r1 set to 0x8C156758
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0A2E5E:
mov.w @(loc_8C0A2EF8,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0A2F10,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.w @(loc_8C0A2EF8,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0A2EFA,pc),r0 ; r0 set to 0xC0
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0A2EFC,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0A2EFE,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0A2F08,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov.b r2,@(r0,r4) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r4),r3 ; r3 ??? bc r4 is ???	
tst r3,r3
bf/s loc_8C0A2F18
mov 0x00,r6 ; r6 set to 0x00
mov.w @(loc_8C0A2EFC,pc),r0 ; r0 set to 0x12c
fldi0 fr4
mov.b r6,@(r0,r4) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr4,@(r0,r4) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r4) 	
mova @(loc_8C0A2F14,pc),r0  ; r0 set to 0x8C0A2F14
fmov.s @r0,fr3
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr3,@(r0,r4) 	
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr4,@(r0,r4) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x64,r0 ; r0 set to 0x64
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x22,r0 ; r0 set to 0x22
mov.b r6,@(r0,r4) 	
mov r6,r0 ; r0 set to 0x00
nop 	
bra loc_8C0A2F6c
mov.w r0,@(0x1C,r4) 	
#data 0x2F042F05

loc_8C0A2EF8:
#data 0x00Dc

loc_8C0A2EFA:
#data 0x00C0

loc_8C0A2EFC:
#data 0x012c

loc_8C0A2EFE:
#data 0x01A3

#align4
loc_8C0A2F00:
#data bank04.loc_8c044F12

loc_8C0A2F04:
#data loc_8c0a2E4a

loc_8C0A2F08:
#data bank12.loc_8c1294C8

loc_8C0A2F0C:
#data 0x8C156758

loc_8C0A2F10:
#data bank12.loc_8c129560

loc_8C0A2F14:
#data 0x41700000


loc_8C0A2F18:
mov.w @(0x1E,r4),r0 	
mov 0x42,r5 ; r5 set to 0x42
mov r0,r2
mov 0x31,r0 ; r0 set to 0x31
mov.b r2,@(r0,r4) 	
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r4),r3
mov.l @(loc_8C0A3060,pc),r0 ; r0 set to 0x8C156768
extu.b r3,r3
shll2 r3
fmov.s @(r0,r3),fr3
mov 0x54,r0 ; r0 set to 0x54
mov 0x41,r3 ; r3 set to 0x41
fmov.s fr3,@(r0,r4) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0A3054,pc),r0 ; r0 set to 0x19c
mov.b r5,@(r0,r4) 	
add 0x01,r0 ; r0 set to 0x19d
mov.b r5,@(r0,r4) 	
add 0x04,r0 ; r0 set to 0x1A1
mov.b r3,@(r0,r4) 	
add 0x0B,r0 ; r0 set to 0x1Ac
mov.w r6,@(r0,r4) 	
add 0xF2,r0 ; r0 set to 0x19e
mov.l @(loc_8C0A3064,pc),r3 ; r3 set to 0x8C2896B0
mov.b r6,@(r0,r4) 	
add 0x26,r0 ; r0 set to 0x1C4
mov.l r6,@(r0,r4) 	
mov.l @r3,r2
mov.b @(0x02,r4),r0 	
add 0x7C,r2
extu.b r0,r0 ; r0 set to 0xC4
shll r0 ; r0 set to 0x188
mov.w @(r0,r2),r1
mov 0x16,r5 ; r5 set to 0x16
mov 0x06,r6 ; r6 set to 0x06
add 0x01,r1
mov.w r1,@(r0,r2) 	
mov.l @(loc_8C0A3068,pc),r2 ; r2 set to 0x8C034E8c
jmp @r2
lds.l @r15+,pr 	

loc_8C0A2F6C:
lds.l @r15+,pr 	
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0A2F72:
#data 0x2FE6
#data 0xE0206E43
#data 0x4F222FD6
#data 0x233803Ec
#data 0x6D538F33
#data 0x9566E160
#data 0xE03831Ec
#data 0xF2E6F318
#data 0x31ECE16c
#data 0xFE27F230
#data 0xF2E6E060
#data 0xF230F318
#data 0xE034FE27
#data 0xE064F3D6
#data 0xE022FE37
#data 0x730303Ec
#data 0xE31F0E34
#data 0x223902Ec
#data 0xB0610E24
#data 0xE00164E3
#data 0x81EF934a
#data 0x02ECE022
#data 0x323CE110
#data 0x3217622c
#data 0x65D38D02
#data 0x81EFE0Ff

#align4
loc_8C0A2FD8:
#data 0x64E3BF09
#data 0x420BD223
#data 0x200864E3
#data 0xA0298924
#data 0x0009

loc_8C0A2FEA:
#data 0xE024
#data 0x02DCD320
#data 0xE0640E24
#data 0xE034F3E6
#data 0xF230F2D6
#data 0x430BFE27
#data 0x600E64E3
#data 0x8B134011
#data 0x430BD31a
#data 0x902464E3
#data 0x222802Ec
#data 0xE3008912
#data 0xC7170E34
#data 0xE050F408
#data 0xF342F3E6
#data 0xE054FE37
#data 0xF242F2E6
#data 0xFE27A006

#align4
loc_8C0A3030:
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6A006

#align4
loc_8C0A303C:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0A3044:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0A3048:
mov.w @(loc_8C0A305C,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0A307C,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0A3054:
#data 0x019c
#data 0x1F40
#data 0x014000F8

loc_8C0A305C:
#data 0x012c
#data 0x0000

#align4
loc_8C0A3060:
#data 0x8C156768

loc_8C0A3064:
#data 0x8C2896B0

#align4
loc_8C0A3068:
#data bank03.loc_8c034e8c

loc_8C0A306C:
#data bank03.loc_8c0335B0

loc_8C0A3070:
#data bank03.loc_8c034dee

loc_8C0A3074:
#data bank04.loc_8c045748
#data 0x3F400000

#align4
loc_8C0A307C:
#data bank04.loc_8c0450C0

loc_8C0A3080:
#data 0xFFFB2FE6
#data 0x4F22FFEb
#data 0x655F7FFc
#data 0x455A6E43
#data 0xFF08C717
#data 0x00ECE022
#data 0xD316F32d
#data 0x600B600c
#data 0xC91F7028
#data 0x4018FE3c
#data 0x4008FEF2
#data 0x2F014000
#data 0x640F430b
#data 0xC710FE02
#data 0xC710F308
#data 0xF308FE32
#data 0xFE33C70f
#data 0x9011F308
#data 0x233803Ed
#data 0xF4ECFEF3
#data 0xF4328D01
#data 0xF44d

loc_8C0A30D6:
#data 0xE064
#data 0xE034F3E6
#data 0xFE47F430
#data 0x4F267F04
#data 0xFFF9FEF9
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x00000130
#data 0x43800000

#align4
loc_8C0A30F4:
#data bank11.loc_8c11E2E0
#data 0x447A0000
#data 0x47C35000
#data 0x3FD55555
#data 0x2FD62FE6
#data 0x2FC6ED02
#data 0x2FB6D249
#data 0x4F222FA6
#data 0x33D36321
#data 0x6C438D02
#data 0xE000A017
#data 0xEE009B80
#data 0xE501DA44
#data 0x4A0BE600
#data 0x64036463
#data 0xD2429079
#data 0x14C61424
#data 0x814E00Cd
#data 0x04E4E020
#data 0x3ED37E01
#data 0x8FEEE026
#data 0x604304B5
#data 0x4F260009
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0A315C:
mov r4,r3
mov.l @(loc_8C0A3240,pc),r1 ; r1 set to 0x8C156840
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0A316E:
mov.w @(loc_8C0A3228,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0A3244,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0A3228,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0A322A,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0A322C,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0A3248,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x24,r0 ; r0 set to 0x24
mov 0x45,r2 ; r2 set to 0x45
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r4) 	
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8C0A322E,pc),r0 ; r0 set to 0x19c
mov.b r2,@(r0,r4) 	
add 0x01,r0 ; r0 set to 0x19d
mov.w @(loc_8C0A3230,pc),r2 ; r2 set to 0xFf
mov.b r3,@(r0,r4) 	
mov 0x22,r0 ; r0 set to 0x22
mov 0x20,r3 ; r3 set to 0x20
mov.b r2,@(r0,r4) 	
add r4,r3 ; r3 ??? bc r4 is ???	
mov.w @(loc_8C0A3232,pc),r0 ; r0 set to 0x130
mov.b @r3,r3
mov.w @(r0,r4),r2 ; r2 ??? bc r4 is ???	
extu.b r3,r3
xor r3,r2
mov.w r2,@(r0,r4) 	
mov 0x31,r0 ; r0 set to 0x31
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov.b r3,@(r0,r4) 	
lds.l @r15+,pr 	

loc_8C0A3200:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.w @(loc_8C0A322A,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
mov.l r12,@-r15
mov 0x00,r12 ; r12 set to 0x00, r12 set to 0x00
mov.w @(loc_8C0A3226,pc),r3 ; r3 set to 0x158, r3 set to 0x158
sts.l pr,@-r15
mov.l @(0x18,r14),r13
mov.b r12,@(r0,r14) 	
add r13,r3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???	
mov.w @(0x1C,r14),r0 	
mov.w @r3,r3
cmp/eq r3,r0
bt loc_8C0A324c
mov 0x02,r0 ; r0 set to 0x02, r0 set to 0x02
bra loc_8C0A332c
mov.b r0,@(0x04,r14) 	
#data 0x3000

loc_8C0A3226:
#data 0x0158

loc_8C0A3228:
#data 0x00Dc

loc_8C0A322A:
#data 0x012c

loc_8C0A322C:
#data 0x01A3

loc_8C0A322E:
#data 0x019c

loc_8C0A3230:
#data 0x00Ff

loc_8C0A3232:
#data 0x0130
#data 0x8C287AE8

#align4
loc_8C0A3238:
#data bank04.loc_8c044F12

loc_8C0A323C:
#data loc_8c0a315c

loc_8C0A3240:
#data 0x8C156840

loc_8C0A3244:
#data bank12.loc_8c129560

loc_8C0A3248:
#data bank12.loc_8c1294C8

loc_8C0A324C:
#data 0x34DC947d
#data 0x64038441
#data 0x4311634e
#data 0xE0228B68
#data 0x624C03Ec
#data 0x3320633c
#data 0xD33B891a
#data 0xE600E517
#data 0x07EC0E44
#data 0x430B677c
#data 0x906964E3
#data 0x02ECD337
#data 0x0E247056
#data 0x0EC5700b
#data 0x0EC470F2
#data 0x0EC67026
#data 0x623284E2
#data 0x4000600c
#data 0x012D727c
#data 0x02157101

#align4
loc_8C0A329C:
#data 0xD32F62D3
#data 0x723461E3
#data 0x430B7134
#data 0x904FE00c
#data 0x02DCD42c
#data 0x03ECE020
#data 0x622CC72b
#data 0x4208F208
#data 0x633C9047
#data 0x43084200
#data 0x323C324c
#data 0x435A6321
#data 0xF32D03Dd
#data 0xF43C2338
#data 0xF4228D01
#data 0xF44d

loc_8C0A32DA:
#data 0xE034
#data 0xF3E69336
#data 0x33DC62E3
#data 0xFE37F340
#data 0x320CE038
#data 0xE2202F26
#data 0x32EC6330
#data 0x633C6220
#data 0x622C4308
#data 0x42084300
#data 0x342C343c
#data 0xE2018541
#data 0x435A6303
#data 0xC71663F6
#data 0xF32DF008
#data 0xF23EF238
#data 0x9019F32a
#data 0xD31364E3
#data 0x4F260E24
#data 0x6DF66CF6
#data 0x6EF6432b


loc_8C0A332C:
lds.l @r15+,pr 	
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0A3336:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0A3350,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0A3344:
mov.l @(loc_8C0A3370,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x0150
#data 0x0130014b

loc_8C0A3350:
#data 0x012c
#data 0x0000

#align4
loc_8C0A3354:
#data bank03.loc_8c034F54
#data 0x8C2896B0

#align4
loc_8C0A335C:
#data bank12.loc_8c1294C8

loc_8C0A3360:
#data 0x8C1567E8
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0A336C:
#data bank04.loc_8c045748

loc_8C0A3370:
#data bank04.loc_8c0450C0
#data 0xE5012FE6
#data 0xD3534F22
#data 0xE6006E43
#data 0x6463430b
#data 0x8D0E2008
#data 0xD3506403
#data 0xE020E200
#data 0x93951434
#data 0x14E514E6
#data 0xE0260424
#data 0x90900435
#data 0x908F02Ec
#data 0x60430424
#data 0x4F260009
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0A33B0:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x2FB62FC6
#data 0x6A632FA6
#data 0x4A152F96
#data 0xD9404F22
#data 0x8F269B7a
#data 0xEC00

loc_8C0A33CE:
#data 0xE501
#data 0x490BE602
#data 0xD23D64E3
#data 0xD33D6403
#data 0x14246143
#data 0x723462E3
#data 0x430B7134
#data 0xE020E00c
#data 0x0424E201
#data 0x14E6E022
#data 0x53E57C01
#data 0x14353CA3
#data 0x936202Ec
#data 0xE0260424
#data 0x343C04B5
#data 0x242162D1
#data 0x814185D1
#data 0x814285D2
#data 0x8FDA85D3
#data 0x8143

loc_8C0A341A:
#data 0x4F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0A342A:
#data 0x2F86
#data 0xFFEBFFFb
#data 0x4F22FFDb
#data 0x74047FF4
#data 0x644CD329
#data 0xC7252F52
#data 0xFF084409
#data 0xE0284401
#data 0x3048644c
#data 0x4018C91f
#data 0x40004008
#data 0xC72081F4
#data 0xC720FD08
#data 0x85F4FE08
#data 0x1F0168F2
#data 0x6403430b
#data 0xF302F3Fc
#data 0xD31FC71d
#data 0xC71DF208
#data 0xF3E2F108
#data 0xF3D3F323
#data 0xF83AF312
#data 0x780468F2
#data 0x54F1430b
#data 0xC719FF02
#data 0xC719F308
#data 0xFFE2F208
#data 0xFFD3FF33
#data 0xF8FAFF22
#data 0x4F267F0c
#data 0xFEF9FDF9
#data 0x000BFFF9
#data 0x68F6
;-------------------------------------------------------------------------------

loc_8C0A34AA:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0A34F8,pc),r1 ; r1 set to 0x8C1570F0
extu.b r0,r0
mov.w @(loc_8C0A34C6,pc),r5 ; r5 set to 0x88
shll2 r0
mov.l @(r0,r1),r3
add r14,r5 ; r5 ??? bc r14 is ???	
jmp @r3
mov.l @r15+,r14
#data 0x01E93001
#data 0x00Be

loc_8C0A34C6:
#data 0x0088

#align4
loc_8C0A34C8:
#data bank04.loc_8c044F12

loc_8C0A34CC:
#data loc_8c0a34Aa

loc_8C0A34D0:
#data bank12.loc_8c1294C8
#data 0x48C80000
#data 0x43800000
#data 0x447A0000

#align4
loc_8C0A34E0:
#data bank11.loc_8c11E2E0
#data 0x47C35000
#data 0x3FD55555

#align4
loc_8C0A34EC:
#data bank11.loc_8c11E860
#data 0x47F42400
#data 0x40092492

#align4
loc_8C0A34F8:
#data 0x8C1570F0


loc_8C0A34FC:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.l r12,@-r15
mov r5,r12
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
fmov.s fr15,@-r15
fmov.s fr14,@-r15
mov.w @(loc_8C0A3598,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.w @(loc_8C0A359A,pc),r0 ; r0 set to 0xC0
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0A3598,pc),r2 ; r2 set to 0xDc
mov.l @(0x18,r14),r13
mov.l @(loc_8C0A35A4,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0A359C,pc),r0 ; r0 set to 0x12c
mov 0x01,r10 ; r10 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r10,@(r0,r14) 	
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
mov.w @(loc_8C0A359E,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0A35A8,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov r14,r1
mov.b @(r0,r13),r2
mov 0x64,r3 ; r3 set to 0x64
mov 0x00,r11 ; r11 set to 0x00
mov.b r2,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov r13,r2
mov.w @(loc_8C0A359C,pc),r0 ; r0 set to 0x12c
add 0x34,r2
mov.l @(loc_8C0A35A8,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r1
mov.b r11,@(r0,r14) 	
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.w @(loc_8C0A35A0,pc),r0 ; r0 set to 0x15a
mov 0xFF,r2 ; r2 set to 0xFFFFFFFf
mov.b r2,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
tst r3,r3
bt loc_8C0A35Ac
mov.b @(0x04,r14),r0 	
add 0x01,r0 ; r0 set to 0x21
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0A35A2,pc),r0 ; r0 set to 0xA8
mov.l @(0x18,r14),r4
bra loc_8C0A3794
mov.l r14,@(r0,r4) 	

loc_8C0A3598:
#data 0x00Dc

loc_8C0A359A:
#data 0x00C0

loc_8C0A359C:
#data 0x012c

loc_8C0A359E:
#data 0x01A3

loc_8C0A35A0:
#data 0x015a

loc_8C0A35A2:
#data 0x00A8

#align4
loc_8C0A35A4:
#data bank12.loc_8c129560

loc_8C0A35A8:
#data bank12.loc_8c1294C8

loc_8C0A35AC:
#data 0x90B694B8
#data 0x0DA434Dc
#data 0x000960B3
#data 0xE0348149
#data 0x90B00CB4
#data 0x00DCD45c
#data 0x8802600c
#data 0xD45B8900

#align4
loc_8C0A35CC:
#data 0x02DC90Aa
#data 0xFF08C75a
#data 0x4208622c
#data 0x342C4200
#data 0x65418541
#data 0x435A6303
#data 0xF32D909f
#data 0x233803Dd
#data 0x8D02F43c
#data 0xF44DF4F2
#data 0x655b

loc_8C0A35F6:
#data 0xE022
#data 0xE0180E54
#data 0xC750FC47
#data 0xE11CFE08
#data 0x31CC8542
#data 0x435A6303
#data 0xF32DE01c
#data 0xFC37F3E2
#data 0xF3E6E034
#data 0xFE37F340
#data 0xF2E6E038
#data 0xF230F318
#data 0xE034FE27
#data 0xE010F3E6
#data 0xE038FC37
#data 0xE014F3E6
#data 0xE060FC37
#data 0xFE37F38d
#data 0xFE37E05c
#data 0x907163Be
#data 0x0EB4E245
#data 0x0E357090
#data 0x0E24706c
#data 0x0EB47001
#data 0x03DC7006
#data 0x633CD03a
#data 0x9064023c
#data 0x0E24D339
#data 0x0EB5700b
#data 0x0EB470F2
#data 0x0EB67026
#data 0x84E26232
#data 0x600C727c
#data 0x40009958
#data 0x7101012d
#data 0xE0320215
#data 0xE0220CB4
#data 0x600C00Ec
#data 0x29097004
#data 0x89004911
#data 0x7907

loc_8C0A3696:
#data 0x4921
#data 0x4921D12c
#data 0xE51B4921
#data 0xE601679c
#data 0x64E3410b
#data 0x649C9041
#data 0x4408D328
#data 0x913E4400
#data 0x02EE0E36
#data 0x933931Ec
#data 0x33EC8529
#data 0x6332600d
#data 0x40084008
#data 0xD322303c
#data 0x343C2102
#data 0x425A6241
#data 0xF3F2F32d
#data 0x025AF33d
#data 0x85412C21
#data 0x425A6203
#data 0xF3E2F32d
#data 0x005AF33d
#data 0x854281C1
#data 0x425A6203
#data 0xF3F2F32d
#data 0x005AF33d
#data 0x854381C2
#data 0x425A6203
#data 0xF3E2F32d
#data 0x005AF33d
#data 0x60B381C3
#data 0xD1110009
#data 0x80CF80Ce
#data 0xA01F1C0a
#data 0x01EA0009
#data 0x01E902A4
#data 0x013001A3
#data 0x01A101A0
#data 0x015400F8
#data 0x01C0016c

#align4
loc_8C0A3734:
#data 0x8C156850

loc_8C0A3738:
#data 0x8C156870
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0A3744:
#data 0x8C156898
#data 0x8C2896B0

#align4
loc_8C0A374C:
#data bank03.loc_8c034CD6

loc_8C0A3750:
#data 0x8C1569A8

loc_8C0A3754:
#data 0x8C1568A6
#data 0x8C287AE8

#align4
loc_8C0A375C:
#data 0xE00E6211
#data 0x8B093203
#data 0x660365C3
#data 0x64E3BE22
#data 0x700184E4
#data 0xE03480E4
#data 0x0CA4A00e

#align4
loc_8C0A3778:
#data 0xD33CE003
#data 0x64E380D6
#data 0xFEF94F26
#data 0x69F6FFF9
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6432b


loc_8C0A3794:
lds.l @r15+,pr 	
fmov.s @r15+,fr14
fmov.s @r15+,fr15
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0A37A8:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0A3870,pc),r0 ; r0 set to 0x8C157100
extu.b r3,r3
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

#align4
loc_8C0A37BC:
#data 0x6E432FE6
#data 0x844554E6
#data 0x8B1F2008
#data 0x004C904c
#data 0x8815600c
#data 0x90488B05
#data 0xE036024c
#data 0x3230035c
#data 0x8B14

loc_8C0A37DE:
#data 0x9041
#data 0x600C004c
#data 0x8B05881d
#data 0x024C903d
#data 0x035CE036
#data 0x8B093230

#align4
loc_8C0A37F4:
#data 0x004C9036
#data 0x8815600c
#data 0x90318908
#data 0x600C004c
#data 0x8903881d

#align4
loc_8C0A3808:
#data 0x64E3D21a
#data 0x6EF6422b

#align4
loc_8C0A3810:
#data 0xE301902a
#data 0x0434E600
#data 0x805EE00e
#data 0xF356E018
#data 0xF246E034
#data 0xE70EE010
#data 0xF527F230
#data 0xF356E01c
#data 0xF246E038
#data 0xF230E014
#data 0xE024F527
#data 0x64E3034c
#data 0x90120E34
#data 0xE0340E64
#data 0x0564

loc_8C0A384A:
#data 0x900e
#data 0x54434710
#data 0x04648FFb
#data 0x64E384E5
#data 0x600CD107
#data 0x031E4008
#data 0x6EF6432b
#data 0x01E901D0
#data 0x012C01Ea

#align4
loc_8C0A386C:
#data bank04.loc_8c0450C0

loc_8C0A3870:
#data 0x8C157100

loc_8C0A3874:
#data loc_8c0a4FA4

loc_8C0A3878:
#data 0x8C157108

loc_8C0A387C:
#data 0x2FD62FE6
#data 0x7FF84F22
#data 0x907A6E43
#data 0x034C54E6
#data 0x8F032338
#data 0x03EC6D53
#data 0x89042338

#align4
loc_8C0A3898:
#data 0xB25165D3
#data 0xA05464E3
#data 0x0009

loc_8C0A38A2:
#data 0x976d
#data 0x00096073
#data 0x70F2926b
#data 0x324C034d
#data 0x22796221
#data 0x0435232b
#data 0x84DFE307
#data 0x8B133037
#data 0xE2009060
#data 0x064D955f
#data 0x905D0425
#data 0x600C004c
#data 0x8F018802
#data 0x6573666d

#align4
loc_8C0A38D8:
#data 0x2658655d
#data 0x65D38904
#data 0x64E3B0Ea
#data 0x0009A031

#align4
loc_8C0A38E8:
#data 0xF3E6E038
#data 0xF246904d
#data 0x8B05F235
#data 0x65D3D226
#data 0x64E3420b
#data 0x0009A025

#align4
loc_8C0A3900:
#data 0x65F3E022
#data 0x04ECBD91
#data 0xF3F8E05c
#data 0x61F3F2E6
#data 0xF2307104
#data 0xFE27E401
#data 0xF2E6E060
#data 0xF230F318
#data 0xE05CFE27
#data 0xE010F3E6
#data 0xE034F2D6
#data 0xFE27F230
#data 0xF3E6E060
#data 0xF2D6E014
#data 0xF230E038
#data 0x9025FE27
#data 0xE0000E44
#data 0xE03480Df
#data 0x0D44

loc_8C0A394A:
#data 0x7F08
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0A3954:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x7FF84F22
#data 0x900C6E43
#data 0x03CC5CE6
#data 0x8F032338
#data 0x03EC6D53
#data 0x890F2338

#align4
loc_8C0A3974:
#data 0xB1E365D3
#data 0xA08A64E3
#data 0x019E0009
#data 0x034E0360
#data 0x03000352
#data 0x041C01F9
#data 0x0000012c

#align4
loc_8C0A3990:
#data loc_8c0a53B8

loc_8C0A3994:
#data 0x60639684
#data 0x92820009
#data 0x03CD70F2
#data 0x622132Cc
#data 0x232B2269
#data 0xE3070C35
#data 0x303784Df
#data 0xEB008F13
#data 0x94769076
#data 0x0CB505Cd
#data 0x00CC9074
#data 0x8802600c
#data 0x655D8F01
#data 0x6463

loc_8C0A39CA:
#data 0x644d
#data 0x89042548
#data 0xB07165D3
#data 0xA05C64E3
#data 0x0009

loc_8C0A39DA:
#data 0xE038
#data 0x9064F3E6
#data 0xF235F2C6
#data 0xD2328B05
#data 0x420B65D3
#data 0xA05064E3
#data 0x0009

loc_8C0A39F2:
#data 0xE022
#data 0xBD1865F3
#data 0xE06804Ec
#data 0xF3E6F2F8
#data 0x61F3E068
#data 0xF2337104
#data 0xF3E6FF2a
#data 0xF2F6E004
#data 0xF233E004
#data 0xE05CFF27
#data 0xF3F8F2E6
#data 0xFE27F230
#data 0xF2E6E060
#data 0xF230F318
#data 0xE05CFE27
#data 0xE010F3E6
#data 0xE034F2D6
#data 0xFE27F230
#data 0xF3E6E060
#data 0xF2D6E014
#data 0xE401E038
#data 0xFE27F230
#data 0x0E449030
#data 0x0D44E034
#data 0x70FF85D4
#data 0x600F81D4
#data 0x89174015
#data 0xE008F39d
#data 0x81D4F330
#data 0xF2E6E068
#data 0xFE27F232
#data 0xF108C711
#data 0x8B0BF215
#data 0x80C6E003
#data 0x80E5E002
#data 0x81D49017
#data 0x00ECE022
#data 0x81D5600c
#data 0x0DB4E033

#align4
loc_8C0A3A8C:
#data 0x000960B3
#data 0x80Df

loc_8C0A3A92:
#data 0x7F08
#data 0x6BF64F26
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x034E0360
#data 0x03200352
#data 0x041C01F9
#data 0x0E00012c

#align4
loc_8C0A3AB0:
#data loc_8c0a53B8
#data 0x42000000

#align4
loc_8C0A3AB8:
#data 0x2FD62FE6
#data 0x7FFC4F22
#data 0x53D66D43
#data 0x6E53D258
#data 0x2F32420b
#data 0xE40090A8
#data 0xE50263F2
#data 0x60530345
#data 0x80D50009
#data 0x84EF63E3
#data 0x80317308
#data 0x00096043
#data 0xE02280E8
#data 0x600C00Dc
#data 0x53EA81E5
#data 0x89042338
#data 0x605353Ea
#data 0x80340009
#data 0x1E4a

loc_8C0A3B02:
#data 0x64D3
#data 0x7F0465E3
#data 0x6DF64F26
#data 0x6EF6

loc_8C0A3B0E:
#data 0x2FE6
#data 0x2FC62FD6
#data 0x2FA62FB6
#data 0x2F862F96
#data 0xFFEBFFFb
#data 0x7FE84F22
#data 0x68D36D53
#data 0x6E437808
#data 0x1FE4E200
#data 0x53E61FD2
#data 0x93741F33
#data 0x62D31F25
#data 0x72088481
#data 0x85D4680c
#data 0x81D43038
#data 0x628C8421
#data 0x3020600c
#data 0x638E8D02
#data 0x1F25E201

#align4
loc_8C0A3B58:
#data 0x89014311
#data 0x0009A0D5

#align4
loc_8C0A3B60:
#data 0x63F3E033
#data 0xC73102Dc
#data 0x9C5B7304
#data 0xE940DB31
#data 0xEA3F2320
#data 0xC72EFE08
#data 0xFF08

loc_8C0A3B7A:
#data 0x53F3
#data 0x023CE024
#data 0x0E2463F3
#data 0x720462F3
#data 0x41116120
#data 0x89062310
#data 0xC97F60F2
#data 0x6303600b
#data 0x633C7340
#data 0x2F32

loc_8C0A3B9E:
#data 0x53F2
#data 0x612062F3
#data 0x310C8535
#data 0xE0222210
#data 0x61F3923b
#data 0x332C63F2
#data 0x63F30E34
#data 0x60307304
#data 0x700CC97f
#data 0x61F22100
#data 0x3193611e
#data 0x61F28B05
#data 0x2F1221A9
#data 0x23CA53F1
#data 0x1F31

loc_8C0A3BD6:
#data 0x52F1
#data 0x63F2E033
#data 0x223B22C9
#data 0x1F216323
#data 0x52F50D34
#data 0x89112228
#data 0x1F25E200
#data 0x740C64F2
#data 0x3393634e
#data 0x53F18B03
#data 0x23CA24A9
#data 0x1F31

loc_8C0A3C02:
#data 0x52F1
#data 0x22C9E033
#data 0x6323224b
#data 0x0D341F21

#align4
loc_8C0A3C10:
#data 0x00ECE022
#data 0x7004600c
#data 0x4011C9F8
#data 0x0009A00c
#data 0x01400352
#data 0x00E00080

#align4
loc_8C0A3C28:
#data bank02.loc_8c02FD26
#data 0x40092492
#data 0x3FD55555

#align4
loc_8C0A3C34:
#data 0x8C1568A6

loc_8C0A3C38:
#data 0x70078900

#align4
loc_8C0A3C3C:
#data 0xD3524021
#data 0x40214021
#data 0x2F02E51b
#data 0x6703E601
#data 0x64E3430b
#data 0xD24E9094
#data 0x0E269194
#data 0x31EC03Ee
#data 0x938E8539
#data 0x33EC600d
#data 0x40086332
#data 0x303C4008
#data 0xE1022102
#data 0x430863F2
#data 0x33BC4300
#data 0x435A6331
#data 0xF3F2F32d
#data 0x035AF33d
#data 0x60F22D31
#data 0x40004008
#data 0x031D30Bc
#data 0xE204435a
#data 0xF32D64E3
#data 0xF33DF3E2
#data 0x81D1005a
#data 0x400860F2
#data 0x30BC4000
#data 0x435A032d
#data 0xF32DE306
#data 0xF33DF3F2
#data 0x81D2005a
#data 0x400860F2
#data 0x30BC4000
#data 0x435A033d
#data 0xF3E2F32d
#data 0x005AF33d
#data 0x5EE381D3
#data 0x9D5678Ff
#data 0x8F024811
#data 0xAF4E3DEc
#data 0x0009

loc_8C0A3CDE:
#data 0x55F2
#data 0xE301E010
#data 0xE034F356
#data 0x72086253
#data 0xE014F437
#data 0xE038F356
#data 0x9045F437
#data 0x84210434
#data 0x4015600c
#data 0xB6B88B03
#data 0xA00F55F4
#data 0x0009

loc_8C0A3D0A:
#data 0x52F4
#data 0x70018424
#data 0x50F38024
#data 0x600C8406
#data 0x8B028806
#data 0xA00252F3
#data 0xE007

loc_8C0A3D22:
#data 0x52F3
#data 0xE003

loc_8C0A3D26:
#data 0x8026

#align4
loc_8C0A3D28:
#data 0x4F267F18
#data 0xFFF9FEF9
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0A3D40:
#data 0x2FD62FE6
#data 0x2FC66D43
#data 0x2FB66C53
#data 0x901A2FA6
#data 0x5ED64F22
#data 0x0BEED30e
#data 0x64E3430b
#data 0x8B1B2008
#data 0x430BD30b
#data 0x200864D3
#data 0x4F268B14
#data 0x64D365C3
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6AE9e
#data 0x016C0154
#data 0x008801C0
#data 0x01B0012c

#align4
loc_8C0A3D88:
#data bank03.loc_8c034CD6

loc_8C0A3D8C:
#data 0x8C1569A8

loc_8C0A3D90:
#data bank05.loc_8c05264c

loc_8C0A3D94:
#data 0x0BDE906f

#align4
loc_8C0A3D98:
#data 0xE300906e
#data 0x0E34EA03
#data 0x80E6E005
#data 0x000960A3
#data 0xE02D80D5
#data 0xE50DD336
#data 0xE60581De
#data 0x64E3430b
#data 0xE200905f
#data 0x0E24945e
#data 0x0EA47050
#data 0x0EA47005
#data 0x0E447005
#data 0x00EC70F2
#data 0x880A600c
#data 0x65B38F02
#data 0x0E449051

#align4
loc_8C0A3DDC:
#data 0x430BD32b
#data 0xD22B64D3
#data 0x64E3420b
#data 0x1C0A65C3
#data 0x64D34F26
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6A000


loc_8C0A3DFC:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov 0x03,r4 ; r4 set to 0x03
mov.w @(loc_8C0A3E80,pc),r0 ; r0 set to 0x1Ed
mov.l r12,@-r15
sts.l pr,@-r15
mov.l @(0x18,r14),r13
mov.b r4,@(r0,r13) 	
add 0x05,r0 ; r0 set to 0x1F2
mov.b r4,@(r0,r13) 	
mov.b @(0x06,r13),r0 	
extu.b r0,r0 ; r0 set to 0xF2
cmp/eq 0x06,r0 	
bf/s loc_8C0A3E2a
mov r5,r12
lds.l @r15+,pr 	
mov r12,r5
mov r14,r4 ; r4 ??? bc r14 is ???	
mov.l @r15+,r12
mov.l @r15+,r13
bra loc_8C0A3F1e
mov.l @r15+,r14

loc_8C0A3E2A:
#data 0x8809
#data 0x64038D04
#data 0x00096043
#data 0x8B06880a

#align4
loc_8C0A3E38:
#data 0x65C34F26
#data 0x6CF664E3
#data 0xA6406DF6
#data 0x6EF6

loc_8C0A3E46:
#data 0x901c
#data 0x844504De
#data 0x8802600c
#data 0x85EE8B08
#data 0x81EE70Ff
#data 0x4015600f
#data 0x9011891a
#data 0x0424E207

#align4
loc_8C0A3E64:
#data 0xE00265C3
#data 0x64E380D6
#data 0x6CF64F26
#data 0xAE216DF6
#data 0x01B06EF6
#data 0x019D019c
#data 0x01F700C0

loc_8C0A3E80:
#data 0x01Ed
#data 0x01C8
#data 0x000001F6

#align4
loc_8C0A3E88:
#data bank02.loc_8c02FEC4

loc_8C0A3E8C:
#data bank05.loc_8c05248e

loc_8C0A3E90:
#data loc_8c0a55E0

loc_8C0A3E94:
#data 0xF3C6E010
#data 0xF2E6E05c
#data 0xF230E034
#data 0xE014FE27
#data 0xE060F3C6
#data 0xE038F2E6
#data 0xFE27F230
#data 0xF3E6E034
#data 0xFC37E02c
#data 0xF3D69093
#data 0xF2E6E038
#data 0xF231C74b
#data 0xF42CF308
#data 0xF28DF430
#data 0x8F07F245
#data 0xE03867D3
#data 0xF141F1D6
#data 0xF0E6FD17
#data 0xFE07F041

#align4
loc_8C0A3EE0:
#data 0x65C3D344
#data 0x430B56Ca
#data 0xE12C64E3
#data 0x31CCD342
#data 0xE034F318
#data 0x31EC6103
#data 0xF231F218
#data 0xF320F3D6
#data 0x430BFD37
#data 0x906D64D3
#data 0x0E44E401
#data 0x0C44E034
#data 0x80CFE000
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0A3F1E:
add 0xFC,r15
mov.l @(0x18,r4),r3
mov 0x04,r0 ; r0 set to 0x04
mov.l r3,@r15
mov.b r0,@(0x05,r4) 	
mov 0x20,r0 ; r0 set to 0x20
mov.l @r15,r3
mov.b @(r0,r3),r2
mov.l @(loc_8C0A3FFC,pc),r0 ; r0 set to 0x8C157120
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

loc_8C0A3F3A:
mov.l r14,@-r15
mov 0x03,r6 ; r6 set to 0x03
mov.w @(loc_8C0A3FE6,pc),r0 ; r0 set to 0x1Ed
mov.l @(0x18,r4),r14
mov.b r6,@(r0,r14) 	
add 0x05,r0 ; r0 set to 0x1F2
mov.b r6,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3
mov.l @(loc_8C0A4000,pc),r0 ; r0 set to 0x8C15712c
extu.b r3,r3
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

#align4
loc_8C0A3F58:
#data 0x56469046
#data 0xC729076e
#data 0xE038F308
#data 0xF176F266
#data 0xF125F230
#data 0xF2668B01
#data 0xF727

loc_8C0A3F72:
#data 0xAFE2
#data 0x0009


loc_8C0A3F76:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xE8,r15
mov r4,r10
mov.w @(loc_8C0A3FEA,pc),r0 ; r0 set to 0x141
mov.l @(0x18,r10),r14
mov r5,r11
mov.b @(r0,r14),r3
cmp/pz r3
bt/s loc_8C0A3F9c
mov 0x00,r9 ; r9 set to 0x00
bra loc_8C0A40F6
nop 	

loc_8C0A3F9C:
mov.b @(r0,r14),r13
mov 0x0E,r3 ; r3 set to 0x0e
mov.l @(loc_8C0A4008,pc),r2 ; r2 set to 0x8C156B40
muls.w r3,r13
sts macl,r13
add r2,r13
mov.l r13,@(0x24,r11) 	
mov.b @r13,r3 ; r3 ??? bc r13 is ???	
cmp/pz r3
bt loc_8C0A3FBa
mov.l @(loc_8C0A400C,pc),r3 ; r3 set to 0x8C02FD62
jsr @r3
nop 	
bra loc_8C0A40F8
nop 	

loc_8C0A3FBA:
mov.l @(loc_8C0A4010,pc),r3 ; r3 set to 0x8C0A5144
mov r11,r5
mov r13,r6
jsr @r3
mov r10,r4
mov.w @(loc_8C0A3FE4,pc),r0 ; r0 set to 0x12c
mov 0x01,r2 ; r2 set to 0x01
mov r10,r13
mov r11,r12
mov.b r2,@(r0,r10) 	
mov r11,r8
mov.w @(loc_8C0A3FE8,pc),r0 ; r0 set to 0x1C8
mov.l r10,@(0x04,r15) 	
mov.w @(loc_8C0A3FEC,pc),r10 ; r10 set to 0x80
mov.l @(r0,r14),r3 ; r3 ??? bc r14 is ???	
mov r10,r11 ; r11 set to 0x80
add 0x74,r11 ; r11 set to 0xF4
mov.l r3,@(0x08,r15) 	
bra loc_8C0A40Ae
mov.l r9,@r15
#data 0x041c

loc_8C0A3FE4:
#data 0x012c

loc_8C0A3FE6:
#data 0x01Ed

loc_8C0A3FE8:
#data 0x01C8

loc_8C0A3FEA:
#data 0x0141

loc_8C0A3FEC:
#data 0x0080
#data 0x0000
#data 0xC3092492

#align4
loc_8C0A3FF4:
#data loc_8c0a4FE2

loc_8C0A3FF8:
#data bank05.loc_8c0500Ac

loc_8C0A3FFC:
#data 0x8C157120

loc_8C0A4000:
#data 0x8C15712c
#data 0x430B4924

#align4
loc_8C0A4008:
#data 0x8C156B40

loc_8C0A400C:
#data bank02.loc_8c02FD62

loc_8C0A4010:
#data loc_8c0a5144


loc_8C0A4014:
mov r13,r2
mov.l @(loc_8C0A4124,pc),r3 ; r3 set to 0x8C1294C8
mov r15,r1
add 0x34,r2
add 0x0C,r1
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.w @r12,r3 ; r3 ??? bc r12 is ???	
mov 0x0C,r0 ; r0 set to 0x0c
fmov.s @(r0,r15),fr2
mov 0x0C,r0 ; r0 set to 0x0c
lds r3,fpul 	
mov r15,r4
float fpul,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r15) 	
mov.w @(0x02,r12),r0 	
mov r0,r3 ; r3 set to 0x0c
lds r3,fpul 	
mov 0x10,r0 ; r0 set to 0x10
mov.l @(loc_8C0A4128,pc),r3 ; r3 set to 0x8C03362c
fmov.s @(r0,r15),fr2
mov 0x10,r0 ; r0 set to 0x10
float fpul,fr3
fsub fr3,fr2
fmov.s fr2,@(r0,r15) 	
mov.l @(0x08,r15),r5
add 0x34,r5
jsr @r3
add 0x0C,r4
mov r0,r6 ; r6 set to 0x10
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r13),r7
mov r7,r4
sub r6,r4
extu.b r4,r3 ; r3 ??? bc r4 is ???	
tst r3,r3
bt loc_8C0A407e
mov.w @(loc_8C0A411A,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r2
tst r2,r2
bf/s loc_8C0A4076
extu.b r4,r5
mov 0x0C,r3 ; r3 set to 0x0c
cmp/gt r3,r5
bf loc_8C0A407e
mov r7,r6 ; r6 ??? bc r7 is ???	
bra loc_8C0A407e
add r11,r6

loc_8C0A4076:
#data 0x35B3
#data 0x66738901
#data 0x760c

loc_8C0A407E:
#data 0x55F1
#data 0x055CE022
#data 0x35AC9049
#data 0x233803Ed
#data 0x64538D01
#data 0x34Ac

loc_8C0A4092:
#data 0x3468
#data 0x4411644e
#data 0x5DD38F01
#data 0x6653

loc_8C0A409E:
#data 0x9C3d
#data 0x65C33CDc
#data 0x64D3B105
#data 0x730163F2
#data 0x2F32


loc_8C0A40AE:
mov.l @r15,r3
mov.b @(0x0F,r8),r0 	
cmp/ge r0,r3
bf loc_8C0A4014
mov.l @(0x28,r8),r6
mov r12,r5
mov r14,r7
bsr loc_8C0A4FE2
mov r13,r4
mov 0x2C,r0 ; r0 set to 0x2c
fmov.s @(r0,r12),fr3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr4
fsub fr3,fr4
fldi0 fr3
fcmp/eq fr3,fr4
bf loc_8C0A40D4
bra loc_8C0A429e
nop 	

loc_8C0A40D4:
fmov.s @(r0,r14),fr3
fadd fr4,fr3
fmov.s fr3,@(r0,r14) 	
mov.l @(0x04,r15),r4
bra loc_8C0A40Ec
mov r9,r5

loc_8C0A40E0:
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r4),fr3
add 0x01,r5
fadd fr4,fr3
fmov.s fr3,@(r0,r4) 	
mov.l @(0x0C,r4),r4

loc_8C0A40EC:
mov.b @(0x0F,r8),r0 	
cmp/ge r0,r5
bf loc_8C0A40E0
bra loc_8C0A429e
nop 	

loc_8C0A40F6:
#data 0x5DB9


loc_8C0A40F8:
mov.w @(loc_8C0A411E,pc),r0 ; r0 set to 0x141
mov 0xFF,r2 ; r2 set to 0xFFFFFFFf
mov.l @(loc_8C0A412C,pc),r3 ; r3 set to 0x8C0A5144
mov r11,r5
mov.b r2,@(r0,r14) 	
mov r13,r6
jsr @r3
mov r10,r4
mov.w @(loc_8C0A4120,pc),r0 ; r0 set to 0x12c
mov 0x01,r2 ; r2 set to 0x01
mov r11,r12
mov r10,r8
mov.b r2,@(r0,r10) 	
mov r10,r13
mov.l r11,@r15
bra loc_8C0A4174
mov.l r9,@(0x04,r15) 	

loc_8C0A411A:
#data 0x0130
#data 0x0088

loc_8C0A411E:
#data 0x0141

loc_8C0A4120:
#data 0x012c
#data 0x0000

#align4
loc_8C0A4124:
#data bank12.loc_8c1294C8

loc_8C0A4128:
#data bank03.loc_8c03362c

loc_8C0A412C:
#data loc_8c0a5144


loc_8C0A4130:
mov.l @(0x0C,r13),r13
mov 0x22,r0 ; r0 set to 0x22
mov.w @(loc_8C0A421E,pc),r2 ; r2 set to 0x88
add r13,r2 ; r2 ??? bc r13 is ???	
mov.l r2,@r15
mov.b @(r0,r8),r6
mov.b @(r0,r13),r11
mov.w @(loc_8C0A4220,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt loc_8C0A4158
mov r11,r3
sub r6,r3
mov 0x11,r2 ; r2 set to 0x11
extu.b r3,r3
cmp/gt r2,r3
bf loc_8C0A4168
mov.w @(loc_8C0A4222,pc),r6 ; r6 set to 0xEf
bra loc_8C0A4168
add r11,r6

#align4
loc_8C0A4158:
#data 0x34B86463
#data 0x644CE311
#data 0x8B013437
#data 0x761166B3


loc_8C0A4168:
mov.l @r15,r5
bsr loc_8C0A42B2
mov r13,r4
mov.l @(0x04,r15),r2
add 0x01,r2
mov.l r2,@(0x04,r15) 	

loc_8C0A4174:
mov.l @(0x04,r15),r3
mov.b @(0x0F,r12),r0 	
cmp/ge r0,r3
bf loc_8C0A4130
mov.l @r15,r5
mov r14,r7
mov.l @(0x28,r12),r6
bsr loc_8C0A4FE2
mov r13,r4
mov.l @r15,r2
mov 0x2C,r0 ; r0 set to 0x2C, r0 set to 0x2c
fmov.s @(r0,r2),fr3
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r13),fr4
fsub fr3,fr4
fldi0 fr3
fcmp/eq fr3,fr4
bt loc_8C0A41B6
fmov.s @(r0,r14),fr3
mov r8,r13
fadd fr4,fr3
fmov.s fr3,@(r0,r14) 	
bra loc_8C0A41B0
mov r9,r4

#align4
loc_8C0A41A4:
#data 0xF3D6E034
#data 0xF3407401
#data 0x5DD3FD37

#align4
loc_8C0A41B0:
#data 0x340384Cf
#data 0x8BF6


loc_8C0A41B6:
mov.w @(loc_8C0A4224,pc),r5 ; r5 set to 0x2A4
mov.l @(loc_8C0A4230,pc),r2 ; r2 set to 0x8C0A53F0
add r14,r5 ; r5 ??? bc r14 is ???	
jsr @r2
mov r14,r4
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r8),r2 ; r2 ??? bc r8 is ???	
mov.b @(r0,r13),r3
cmp/eq r2,r3
bt loc_8C0A4206
mov.l @(0x28,r12),r3
tst r3,r3
bt loc_8C0A429e
mov.w @(loc_8C0A4226,pc),r0 ; r0 set to 0x41c
mov.l @(0x28,r12),r3
fmov.s @(r0,r14),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r3),fr2
fcmp/gt fr3,fr2
bt loc_8C0A429e
mov.l @(loc_8C0A4234,pc),r3 ; r3 set to 0x8C0423Ac
mov.w @(loc_8C0A4228,pc),r0 ; r0 set to 0x1C8
jsr @r3
mov.l @(r0,r14),r4
mov.w @(loc_8C0A4224,pc),r6 ; r6 set to 0x2A4
mov r14,r5
mov.l @(loc_8C0A4238,pc),r2 ; r2 set to 0x8C0A5448
add r14,r6 ; r6 ??? bc r14 is ???	
jsr @r2
mov r8,r4
mov.b @(0x05,r8),r0 	
extu.b r0,r0 ; r0 set to 0xC8
cmp/eq 0x03,r0 	
bf loc_8C0A4206
mov.l @(loc_8C0A423C,pc),r2 ; r2 set to 0x8C042008
mov 0x07,r5 ; r5 set to 0x07
jsr @r2
mov r14,r4
bra loc_8C0A429e
nop 	

loc_8C0A4206:
mov.w @(loc_8C0A4228,pc),r0 ; r0 set to 0x1C8
mov.l @(r0,r14),r4
add 0xEC,r0 ; r0 set to 0x1B4
mov.l r14,@(r0,r4) 	
mov.w @(loc_8C0A422A,pc),r0 ; r0 set to 0x411
mov.b @(r0,r14),r3
tst r3,r3
bf loc_8C0A4240
mov.w @(loc_8C0A422C,pc),r0 ; r0 set to 0x1F6
mov 0x01,r3 ; r3 set to 0x01
bra loc_8C0A4246
mov.b r3,@(r0,r4) 	

loc_8C0A421E:
#data 0x0088

loc_8C0A4220:
#data 0x0130

loc_8C0A4222:
#data 0x00Ef

loc_8C0A4224:
#data 0x02A4

loc_8C0A4226:
#data 0x041c

loc_8C0A4228:
#data 0x01C8

loc_8C0A422A:
#data 0x0411

loc_8C0A422C:
#data 0x01F6
#data 0x0000

#align4
loc_8C0A4230:
#data loc_8c0a53F0

loc_8C0A4234:
#data bank04.loc_8c0423Ac

loc_8C0A4238:
#data loc_8c0a5448

loc_8C0A423C:
#data bank04.loc_8c042008

loc_8C0A4240:
#data 0xE11090B1
#data 0x0414

loc_8C0A4246:
#data 0x90Af
#data 0xE606E50d
#data 0x043403Ec
#data 0x90AAE300
#data 0xD05902Ed
#data 0x3327622d
#data 0xD358323e
#data 0x012C4221
#data 0x041490A2
#data 0x64E3430b
#data 0x6043E402
#data 0x80850009
#data 0x84CF63C3
#data 0x80317308
#data 0x00096093
#data 0xE02280C8
#data 0x600C00Ac
#data 0xE03381C5
#data 0x53CA0C94
#data 0x89042338
#data 0x604353Ca
#data 0x80340009
#data 0x1C9a


loc_8C0A429E:
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

loc_8C0A42B2:
#data 0x2FE6
#data 0xE0226E43
#data 0x2FC62FD6
#data 0x4F229C77
#data 0x606C0E64
#data 0x2C097004
#data 0x8D014C11
#data 0x7C076D53

#align4
loc_8C0A42D0:
#data 0xD23C4C21
#data 0x4C214C21
#data 0x67CCE51b
#data 0x420BE601
#data 0x906564E3
#data 0xD33864Cc
#data 0x44004408
#data 0x0E369162
#data 0x31EC02Ee
#data 0x8529935d
#data 0x600D33Ec
#data 0x40086332
#data 0x303C4008
#data 0x2102D332
#data 0x343CC730
#data 0x6241F408
#data 0x425AC730
#data 0xF342F32d
#data 0x025AF33d
#data 0xF5082D21
#data 0x62038541
#data 0x9546425a
#data 0xF352F32d
#data 0x005AF33d
#data 0x854281D1
#data 0x425A6203
#data 0xF342F32d
#data 0x005AF33d
#data 0x854381D2
#data 0x425A6203
#data 0xF352F32d
#data 0x005AF33d
#data 0xE03481D3
#data 0x354C54E2
#data 0x6251F246
#data 0xF32D425a
#data 0x85D2F230
#data 0x6203E101
#data 0xE02C425a
#data 0xF231F32d
#data 0xE034FD27
#data 0x8551FE27
#data 0x425A6203
#data 0xF246E038
#data 0xF32D85D3
#data 0x425A6203
#data 0xF231E038
#data 0xF230F32d
#data 0xE024FE27
#data 0x0E24024c
#data 0x0E14900e
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x01F66EF6
#data 0x02A401D2
#data 0x00F801A1
#data 0x016C0154
#data 0x008801C0
#data 0x0000012c

#align4
loc_8C0A43BC:
#data 0x8C15689e

loc_8C0A43C0:
#data bank02.loc_8c02FEC4

loc_8C0A43C4:
#data bank03.loc_8c034CD6

loc_8C0A43C8:
#data 0x8C1569A8
#data 0x3FD55555

#align4
loc_8C0A43D0:
#data 0x8C1568A6
#data 0x40092492

#align4
loc_8C0A43D8:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x4F222F86
#data 0x68437FF0
#data 0x5B869038
#data 0x6953E403
#data 0x0B446A83
#data 0x0B447005
#data 0x03BC9031
#data 0x8F114311
#data 0x0EBC6C93
#data 0xD216E30e
#data 0x2E3F6593
#data 0x3E2C0E1a
#data 0x19E966E3
#data 0x6483B752
#data 0x421162E0
#data 0xD2118B02
#data 0x0009420b

#align4
loc_8C0A4428:
#data 0x6E836D93
#data 0xE900A0D2

#align4
loc_8C0A4430:
#data 0x660384Dc
#data 0x04ECE022
#data 0x654384Cd
#data 0x634C3468
#data 0x8D192338
#data 0x624E6703
#data 0x634C4211
#data 0x2F328D0e
#data 0x647B63F2
#data 0x3437644c
#data 0x84CD8B0e
#data 0x350CA00b
#data 0x014101Ed

#align4
loc_8C0A4464:
#data 0x8C156B40

loc_8C0A4468:
#data bank02.loc_8c02FD62

loc_8C0A446C:
#data 0x627C63F2
#data 0x89013233
#data 0x3578

loc_8C0A4476:
#data 0x6653

#align4
loc_8C0A4478:
#data 0x9571E022
#data 0xE4080E64
#data 0x611C01Ec
#data 0x21597104
#data 0x00096043
#data 0x430BD336
#data 0xD3360009
#data 0xE601E51b
#data 0x670C2F00
#data 0x64E3430b
#data 0xD233905f
#data 0x0E26D533
#data 0x915C03Ee
#data 0x93598539
#data 0x600D31Ec
#data 0x633233Ec
#data 0x40084008
#data 0x2102303c
#data 0x64F0C72d
#data 0xC72DF408
#data 0x4408644c
#data 0x345C4400
#data 0x435A6341
#data 0xF342F32d
#data 0x035AF33d
#data 0xF5082D31
#data 0x29988541
#data 0x435A6303
#data 0xF352F32d
#data 0x005AF33d
#data 0x854281D1
#data 0x435A6303
#data 0xF342F32d
#data 0x005AF33d
#data 0x854381D2
#data 0x435A6303
#data 0xF352F32d
#data 0x005AF33d
#data 0x81D38F36
#data 0x64F3E010
#data 0x7408F3D6
#data 0xF43AE014
#data 0xE004F3D6
#data 0xE035F437
#data 0x233803Cc
#data 0x85D2890e
#data 0x6303F248
#data 0xF32D435a
#data 0xF42AF231
#data 0x630385D3
#data 0xE004435a
#data 0xF32DF246
#data 0xF427F230

#align4
loc_8C0A454C:
#data 0xE02CF348
#data 0xE034FD37
#data 0xE004FE37
#data 0xE038F346
#data 0xFE37A031
#data 0x015400F8
#data 0x01C0016c

#align4
loc_8C0A4568:
#data bank12.loc_8c129128

loc_8C0A456C:
#data bank03.loc_8c034CD6

loc_8C0A4570:
#data 0x8C1569A8

loc_8C0A4574:
#data 0x8C1568A6
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0A4580:
#data 0xE0349582
#data 0x354C54E2
#data 0x6351F246
#data 0x435A85D2
#data 0xE02C6303
#data 0x435AF32d
#data 0xF32DF230
#data 0xF431F42c
#data 0xE034FD47
#data 0x8551FE47
#data 0x435A6303
#data 0xF246E038
#data 0xF32D85D3
#data 0x435A6303
#data 0xF231E038
#data 0xF230F32d
#data 0xFE27

loc_8C0A45C2:
#data 0x9062
#data 0x7901E301
#data 0x2FE20E34
#data 0x9D5B1FD1
#data 0x3DEC5EE3

#align4
loc_8C0A45D4:
#data 0x390784Cf
#data 0xAF298901
#data 0x0009

loc_8C0A45DE:
#data 0x56Ca
#data 0x55F167B3
#data 0xB4FC6EF2
#data 0x52F164E3
#data 0xF326E02c
#data 0xF4E6E034
#data 0xF38DF431
#data 0x8910F434
#data 0x64A3F3B6
#data 0xFB37F340
#data 0xE500A007

#align4
loc_8C0A4608:
#data 0xF346E034
#data 0xF3407501
#data 0x2F42F437
#data 0x5443

loc_8C0A4616:
#data 0x84Cf
#data 0x8BF53503
#data 0x6EF2

loc_8C0A461E:
#data 0x85C5
#data 0x896D2008
#data 0x35BC9532
#data 0x64B3B6E2
#data 0x03ACE022
#data 0x323002Ec
#data 0x53CA891c
#data 0x89612338
#data 0x53CA9027
#data 0xE038F3B6
#data 0xF235F236
#data 0xD313895a
#data 0x430B9020
#data 0x961B04Be
#data 0x36BC65B3
#data 0x64A3B6F6
#data 0x600C84A5
#data 0x8B058803
#data 0xE507D20d
#data 0x64B3420b
#data 0x0009A048

#align4
loc_8C0A4670:
#data 0x04BE900e
#data 0x04B670Ec
#data 0x03BC900b
#data 0x8B0F2338
#data 0xE3019008
#data 0x0434A00f
#data 0x012C0088
#data 0x041C02A4
#data 0x041101C8
#data 0x000001F6

#align4
loc_8C0A4698:
#data bank04.loc_8c0423Ac

loc_8C0A469C:
#data bank04.loc_8c042008

loc_8C0A46A0:
#data 0xE110908d
#data 0x0414

loc_8C0A46A6:
#data 0x908b
#data 0xE606E50d
#data 0x043403Bc
#data 0x9086E300
#data 0xD04602Bd
#data 0x3327622d
#data 0xD345323e
#data 0x012C4221
#data 0x0414907e
#data 0x64B3430b
#data 0x6043E402
#data 0x80A50009
#data 0x84CF63C3
#data 0x80317308
#data 0x80C8E000
#data 0x008CE022
#data 0x600CE300
#data 0xE03381C5
#data 0x52CA0C34
#data 0x89052228
#data 0x604352Ca
#data 0xE3000009
#data 0x1C3A8024

#align4
loc_8C0A4700:
#data 0x4F267F10
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0A4714:
#data 0x5646C730
#data 0xE038F308
#data 0x9052F466
#data 0x036EF430
#data 0xF236E038
#data 0x8B04F245
#data 0x026E904b
#data 0xF266E038
#data 0xF227


loc_8C0A4736:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xE8,r15
mov r5,r11
mov.b @(0x0F,r11),r0 	
mov r4,r10
cmp/eq 0x0E,r0 	
bt/s loc_8C0A4766
mov.l @(0x18,r10),r14
mov.b @(0x0F,r11),r0 	
mov 0x0E,r3 ; r3 set to 0x0e
cmp/ge r3,r0
bt loc_8C0A4762
mov.b @(0x0F,r11),r0 	
bra loc_8C0A4764
add 0x01,r0

loc_8C0A4762:
#data 0x70Ff

loc_8C0A4764:
#data 0x80Bf


loc_8C0A4766:
mov.w @(loc_8C0A47C8,pc),r0 ; r0 set to 0x141
mov.b @(r0,r14),r3
cmp/pz r3
bt/s loc_8C0A477a
mov 0x00,r9 ; r9 set to 0x00
mov.l @(loc_8C0A47DC,pc),r2 ; r2 set to 0x8C02FD62
jsr @r2
nop 	
bra loc_8C0A48C6
nop 	

loc_8C0A477A:
mov.b @(r0,r14),r13
mov 0x0E,r3 ; r3 set to 0x0e
mov.l @(loc_8C0A47E0,pc),r2 ; r2 set to 0x8C156B40
muls.w r3,r13
sts macl,r13
add r2,r13
mov.l r13,@(0x24,r11) 	
mov.b @r13,r3 ; r3 ??? bc r13 is ???	
cmp/pz r3
bt loc_8C0A4798
mov.l @(loc_8C0A47DC,pc),r3 ; r3 set to 0x8C02FD62
jsr @r3
nop 	
bra loc_8C0A48C8
nop 	

loc_8C0A4798:
mov r11,r5
mov r13,r6
bsr loc_8C0A5144
mov r10,r4
mov.w @(loc_8C0A47CA,pc),r0 ; r0 set to 0x12c
mov 0x01,r2 ; r2 set to 0x01
mov r10,r13
mov r11,r12
mov.b r2,@(r0,r10) 	
mov r11,r8
mov.w @(loc_8C0A47C6,pc),r0 ; r0 set to 0x1C8
mov.l r10,@(0x04,r15) 	
mov.w @(loc_8C0A47CC,pc),r10 ; r10 set to 0x80
mov.l @(r0,r14),r3
mov r10,r11 ; r11 set to 0x80
add 0x74,r11 ; r11 set to 0xF4
mov.l r3,@(0x08,r15) 	
bra loc_8C0A487e
mov.l r9,@r15
#data 0x01F6
#data 0x02A401D2
#data 0x01A1

loc_8C0A47C6:
#data 0x01C8

loc_8C0A47C8:
#data 0x0141

loc_8C0A47CA:
#data 0x012c

loc_8C0A47CC:
#data 0x0080
#data 0x0000

#align4
loc_8C0A47D0:
#data 0x8C15689e

loc_8C0A47D4:
#data bank02.loc_8c02FEC4
#data 0x3F0B4924

#align4
loc_8C0A47DC:
#data bank02.loc_8c02FD62

loc_8C0A47E0:
#data 0x8C156B40


loc_8C0A47E4:
mov r13,r2
mov.l @(loc_8C0A48F0,pc),r3 ; r3 set to 0x8C1294C8
mov r15,r1
add 0x34,r2
add 0x0C,r1
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.w @r12,r3 ; r3 ??? bc r12 is ???	
mov 0x0C,r0 ; r0 set to 0x0c
fmov.s @(r0,r15),fr2
mov 0x0C,r0 ; r0 set to 0x0c
lds r3,fpul 	
mov r15,r4
float fpul,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r15) 	
mov.w @(0x02,r12),r0 	
mov r0,r3 ; r3 set to 0x0c
lds r3,fpul 	
mov 0x10,r0 ; r0 set to 0x10
mov.l @(loc_8C0A48F4,pc),r3 ; r3 set to 0x8C03362c
fmov.s @(r0,r15),fr2
mov 0x10,r0 ; r0 set to 0x10
float fpul,fr3
fsub fr3,fr2
fmov.s fr2,@(r0,r15) 	
mov.l @(0x08,r15),r5
add 0x34,r5
jsr @r3
add 0x0C,r4
mov r0,r6 ; r6 set to 0x10
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r13),r5
mov r5,r4
sub r6,r4
extu.b r4,r3 ; r3 ??? bc r4 is ???	
tst r3,r3
bt loc_8C0A484e
mov.w @(loc_8C0A48E8,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r2
tst r2,r2
bf/s loc_8C0A4846
extu.b r4,r7
mov 0x0C,r3 ; r3 set to 0x0c
cmp/gt r3,r7
bf loc_8C0A484e
mov r5,r6 ; r6 ??? bc r5 is ???	
bra loc_8C0A484e
add r11,r6

loc_8C0A4846:
#data 0x37B3
#data 0x66538901
#data 0x760c

loc_8C0A484E:
#data 0x55F1
#data 0x055CE022
#data 0x35AC9048
#data 0x233803Ed
#data 0x64538D01
#data 0x34Ac

loc_8C0A4862:
#data 0x3468
#data 0x4411644e
#data 0x5DD38F01
#data 0x6653

loc_8C0A486E:
#data 0x9C3c
#data 0x65C33CDc
#data 0x64D3BD1d
#data 0x730163F2
#data 0x2F32


loc_8C0A487E:
mov.l @r15,r3
mov.b @(0x0F,r8),r0 	
cmp/ge r0,r3
bf loc_8C0A47E4
mov.l @(0x28,r8),r6
mov r12,r5
mov r14,r7
bsr loc_8C0A4FE2
mov r13,r4
mov 0x2C,r0 ; r0 set to 0x2c
fmov.s @(r0,r12),fr3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr4
fsub fr3,fr4
fldi0 fr3
fcmp/eq fr3,fr4
bf loc_8C0A48A4
bra loc_8C0A4A62
nop 	

loc_8C0A48A4:
fmov.s @(r0,r14),fr3
fadd fr4,fr3
fmov.s fr3,@(r0,r14) 	
mov.l @(0x04,r15),r4
bra loc_8C0A48Bc
mov r9,r5

loc_8C0A48B0:
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r4),fr3
add 0x01,r5
fadd fr4,fr3
fmov.s fr3,@(r0,r4) 	
mov.l @(0x0C,r4),r4

loc_8C0A48BC:
mov.b @(0x0F,r8),r0 	
cmp/ge r0,r5
bf loc_8C0A48B0
bra loc_8C0A4A62
nop 	

loc_8C0A48C6:
#data 0x5DB9


loc_8C0A48C8:
mov.w @(loc_8C0A48EC,pc),r0 ; r0 set to 0x141
mov 0xFF,r2 ; r2 set to 0xFFFFFFFf
mov r11,r5
mov r13,r6
mov.b r2,@(r0,r14) 	
bsr loc_8C0A5144
mov r10,r4
mov.w @(loc_8C0A48EE,pc),r0 ; r0 set to 0x12c
mov 0x01,r2 ; r2 set to 0x01
mov r11,r12
mov r10,r8
mov.b r2,@(r0,r10) 	
mov r10,r13
mov.l r11,@r15
bra loc_8C0A493c
mov.l r9,@(0x04,r15) 	

loc_8C0A48E8:
#data 0x0130
#data 0x0088

loc_8C0A48EC:
#data 0x0141

loc_8C0A48EE:
#data 0x012c

#align4
loc_8C0A48F0:
#data bank12.loc_8c1294C8

loc_8C0A48F4:
#data bank03.loc_8c03362c


loc_8C0A48F8:
mov.l @(0x0C,r13),r13
mov 0x22,r0 ; r0 set to 0x22
mov.w @(loc_8C0A49F8,pc),r2 ; r2 set to 0x88
add r13,r2 ; r2 ??? bc r13 is ???	
mov.l r2,@r15
mov.b @(r0,r8),r6
mov.b @(r0,r13),r11
mov.w @(loc_8C0A49FA,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt loc_8C0A4920
mov r11,r3
sub r6,r3
mov 0x11,r2 ; r2 set to 0x11
extu.b r3,r3
cmp/gt r2,r3
bf loc_8C0A4930
mov.w @(loc_8C0A49FC,pc),r6 ; r6 set to 0xEf
bra loc_8C0A4930
add r11,r6

#align4
loc_8C0A4920:
#data 0x34B86463
#data 0x644CE311
#data 0x8B013437
#data 0x761166B3


loc_8C0A4930:
mov.l @r15,r5
bsr loc_8C0A42B2
mov r13,r4
mov.l @(0x04,r15),r2
add 0x01,r2
mov.l r2,@(0x04,r15) 	

loc_8C0A493C:
mov.l @(0x04,r15),r3
mov.b @(0x0F,r12),r0 	
cmp/ge r0,r3
bf loc_8C0A48F8
mov.l @r15,r5
mov r14,r7
mov.l @(0x28,r12),r6
bsr loc_8C0A4FE2
mov r13,r4
mov.l @r15,r2
mov 0x2C,r0 ; r0 set to 0x2C, r0 set to 0x2c
fmov.s @(r0,r2),fr3
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r13),fr4
fsub fr3,fr4
fldi0 fr3
fcmp/eq fr3,fr4
bt loc_8C0A497e
fmov.s @(r0,r14),fr3
mov r8,r13
fadd fr4,fr3
fmov.s fr3,@(r0,r14) 	
bra loc_8C0A4978
mov r9,r4

#align4
loc_8C0A496C:
#data 0xF3D6E034
#data 0xF3407401
#data 0x5DD3FD37

#align4
loc_8C0A4978:
#data 0x340384Cf
#data 0x8BF6


loc_8C0A497E:
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r8),r3
mov.b @(r0,r13),r2
cmp/eq r3,r2
bt loc_8C0A49B0
mov.l @(0x28,r12),r3
tst r3,r3
bt loc_8C0A4A62
mov.w @(loc_8C0A49FE,pc),r0 ; r0 set to 0x41c
mov.l @(0x28,r12),r3
fmov.s @(r0,r14),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r3),fr2
fcmp/gt fr3,fr2
bt loc_8C0A4A62
mov.b @(0x05,r8),r0 	
extu.b r0,r0 ; r0 set to 0x38
cmp/eq 0x03,r0 	
bf loc_8C0A49B0
mov.l @(loc_8C0A4A08,pc),r2 ; r2 set to 0x8C042008
mov 0x07,r5 ; r5 set to 0x07
jsr @r2
mov r14,r4
bra loc_8C0A4A62
nop 	

loc_8C0A49B0:
mov.w @(loc_8C0A4A00,pc),r0 ; r0 set to 0x1C8
mov r15,r1
mov.l @(loc_8C0A4A0C,pc),r3 ; r3 set to 0x8C1294C8
add 0x0C,r1
mov.l @(r0,r14),r2
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.w @(loc_8C0A4A00,pc),r0 ; r0 set to 0x1C8
mov r15,r5
mov.w @(loc_8C0A4A02,pc),r7 ; r7 set to 0x179
add 0x0C,r5
mov.l @(r0,r14),r1
mov 0x01,r6 ; r6 set to 0x01
mov.w @(loc_8C0A49FE,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r1),fr3 ; r3 ??? bc r1 is ???	
mov 0x10,r0 ; r0 set to 0x10
fmov.s fr3,@(r0,r15) 	
mov r7,r0 ; r0 set to 0x179
nop 	
mov.l @(loc_8C0A4A10,pc),r3 ; r3 set to 0x8C10235c
add 0x4F,r0 ; r0 set to 0x1C8
jsr @r3
mov.l @(r0,r14),r4
mov.w @(loc_8C0A4A00,pc),r0 ; r0 set to 0x1C8
mov.l @(r0,r14),r4
add 0xEC,r0 ; r0 set to 0x1B4
mov.l r14,@(r0,r4) 	
mov.w @(loc_8C0A4A04,pc),r0 ; r0 set to 0x411
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
tst r3,r3
bf loc_8C0A4A14
mov.w @(loc_8C0A4A06,pc),r0 ; r0 set to 0x1F6
mov 0x01,r3 ; r3 set to 0x01
bra loc_8C0A4A1a
mov.b r3,@(r0,r4) 	

loc_8C0A49F8:
#data 0x0088

loc_8C0A49FA:
#data 0x0130

loc_8C0A49FC:
#data 0x00Ef

loc_8C0A49FE:
#data 0x041c

loc_8C0A4A00:
#data 0x01C8

loc_8C0A4A02:
#data 0x0179

loc_8C0A4A04:
#data 0x0411

loc_8C0A4A06:
#data 0x01F6

#align4
loc_8C0A4A08:
#data bank04.loc_8c042008

loc_8C0A4A0C:
#data bank12.loc_8c1294C8

loc_8C0A4A10:
#data bank10.loc_8c10235c

loc_8C0A4A14:
#data 0xE1109085
#data 0x0414

loc_8C0A4A1A:
#data 0x9083
#data 0xE50DE22a
#data 0xE60603Ec
#data 0x70CF0434
#data 0x0424D340
#data 0x64E3430b
#data 0x6043E402
#data 0x80850009
#data 0x84CF63C3
#data 0x80317308
#data 0x00096093
#data 0xE02280C8
#data 0x600C00Ac
#data 0xE03381C5
#data 0x53CA0C94
#data 0x89042338
#data 0x604353Ca
#data 0x80340009
#data 0x1C9a


loc_8C0A4A62:
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

loc_8C0A4A76:
#data 0xE201

#align4
loc_8C0A4A78:
#data 0x66439755
#data 0xE0345442
#data 0x9150376c
#data 0xF2666371
#data 0x435A314c
#data 0xF32D8512
#data 0x435A6303
#data 0xF230E034
#data 0xF231F32d
#data 0x8571F427
#data 0x435A6303
#data 0xF266E038
#data 0xF32D8513
#data 0x435A6303
#data 0xF231E038
#data 0xF230F32d
#data 0x3540F427
#data 0x8FDB9034
#data 0x000B0424
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0A4AC6:
#data 0x2FE6
#data 0x2FD66E53
#data 0x6C432FC6
#data 0x902A2FB6
#data 0x2F962FA6
#data 0x4F222F86
#data 0x04BE5BC6
#data 0x034C7072
#data 0x04347302
#data 0x80C5E005
#data 0x81E4E000
#data 0xD30FE03c
#data 0x430B81Ce
#data 0xD20EE518
#data 0x420BE506
#data 0x84B664B3
#data 0x8809600c
#data 0xE8028F04
#data 0xE201E030
#data 0x0E25A002

#align4
loc_8C0A4B14:
#data 0x0E85E030

#align4
loc_8C0A4B18:
#data 0x64E3E900
#data 0xA02C6DC3
#data 0x01F66A93
#data 0x008801D2
#data 0x01C8012c

#align4
loc_8C0A4B2C:
#data bank02.loc_8c02FEC4

loc_8C0A4B30:
#data bank05.loc_8c050552

loc_8C0A4B34:
#data bank05.loc_8c05064e

loc_8C0A4B38:
#data 0x00096093
#data 0x2338639f
#data 0x81458D16
#data 0xC801609f
#data 0xD2368B12
#data 0x65C366E3
#data 0x420B7608
#data 0x200864D3
#data 0x64038D0a
#data 0x00096083
#data 0x84EF814e
#data 0x814F30A8
#data 0x03ECE030
#data 0x0434E021

#align4
loc_8C0A4B70:
#data 0x7A019453
#data 0x79FF5DD3
#data 0x34Dc

loc_8C0A4B7A:
#data 0x84Ef
#data 0x8BDB3A07
#data 0xE600D229
#data 0x420B6563
#data 0xD32764B3
#data 0xE601E500
#data 0x64B3430b
#data 0xE600D225
#data 0x420B55Ea
#data 0x4F2664B3
#data 0x65E364C3
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6


loc_8C0A4BB2:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r13
mov.w @(loc_8C0A4C1C,pc),r0 ; r0 set to 0x1Ed
mov.l @(0x18,r13),r12
mov 0x03,r4 ; r4 set to 0x03
mov.b r4,@(r0,r12) 	
add 0x05,r0 ; r0 set to 0x1F2
mov.b r4,@(r0,r12) 	
mov.b @(0x06,r12),r0 	
extu.b r0,r0 ; r0 set to 0xF2
cmp/eq 0x06,r0 	
bf/s loc_8C0A4BF4
mov r5,r14
mov r13,r4 ; r4 ??? bc r13 is ???	
mov r14,r5
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
bra loc_8C0A3F1e
mov.l @r15+,r14

loc_8C0A4BF4:
mov.w @(loc_8C0A4C1E,pc),r3 ; r3 set to 0x360
mov 0x02,r11 ; r11 set to 0x02
mov r3,r0 ; r0 set to 0x360
nop 	
add 0xEE,r0 ; r0 set to 0x34e
mov.w @(r0,r12),r4
and r3,r4
extu.w r4,r2
tst r2,r2
bt/s loc_8C0A4C38
mov 0x01,r9 ; r9 set to 0x01
mov.w @(loc_8C0A4C20,pc),r1 ; r1 set to 0x300
extu.w r4,r4
tst r1,r4
bt loc_8C0A4C30
mov 0x30,r0 ; r0 set to 0x30
mov.w r9,@(r0,r14) 	
bra loc_8C0A4C36
mov 0x09,r0
#data 0x0088

loc_8C0A4C1C:
#data 0x01Ed

loc_8C0A4C1E:
#data 0x0360

loc_8C0A4C20:
#data 0x0300
#data 0x0000

#align4
loc_8C0A4C24:
#data loc_8c0a5598

loc_8C0A4C28:
#data bank0e.loc_8c0e7D30

loc_8C0A4C2C:
#data bank0e.loc_8c0eE7C4

loc_8C0A4C30:
#data 0x0EB5E030
#data 0xE00a

loc_8C0A4C36:
#data 0x80C6

#align4
loc_8C0A4C38:
#data 0x70FF85De
#data 0x600F81De
#data 0x8B124015
#data 0xC80785De
#data 0xD22E8B07
#data 0x420BE51e
#data 0x65E364C3
#data 0xB0CA66C3
#data 0x64D3

loc_8C0A4C5A:
#data 0xD32b
#data 0x430B9051
#data 0x200804Ce
#data 0xE0FF8901
#data 0x81De

loc_8C0A4C6A:
#data 0x85De
#data 0x89144011
#data 0x000960B3
#data 0xE20780C6
#data 0x64D39043
#data 0x03CE65E3
#data 0x0324702e
#data 0x4F267F04
#data 0x68F6D320
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x432B6DF6
#data 0x6EF6

loc_8C0A4C9A:
#data 0xD21d
#data 0x64C3420b
#data 0x89032008
#data 0x66C365E3
#data 0x64D3B0A1

#align4
loc_8C0A4CAC:
#data 0x70FF85E4
#data 0x600F81E4
#data 0x89544015
#data 0x000960B3
#data 0x85E581E4
#data 0x8B142098
#data 0x66E3D213
#data 0x760865D3
#data 0x64D3420b
#data 0x8D0C2008
#data 0xE0306403
#data 0xE02102Ec
#data 0x0424E300
#data 0x330785E5
#data 0x4021303e
#data 0x84EF814e
#data 0x814f

loc_8C0A4CEE:
#data 0x6AE3
#data 0xA0336BD3
#data 0xE800

loc_8C0A4CF6:
#data 0x85A5
#data 0x890D4011
#data 0xA02885A5
#data 0x01C87001

#align4
loc_8C0A4D04:
#data bank04.loc_8c042008

loc_8C0A4D08:
#data bank05.loc_8c050610

loc_8C0A4D0C:
#data loc_8c0a3AB8

loc_8C0A4D10:
#data bank05.loc_8c050682

loc_8C0A4D14:
#data loc_8c0a5598

loc_8C0A4D18:
#data 0x031CD146
#data 0x633CD046
#data 0x9081023c
#data 0xE0220B24
#data 0x600C00Bc
#data 0xC9F87004
#data 0x89004011
#data 0x7007

loc_8C0A4D36:
#data 0x4021
#data 0x4021D340
#data 0x670C4021
#data 0x90712F00
#data 0x06BCE51b
#data 0x64B3430b
#data 0x700185A5
#data 0xC91f

loc_8C0A4D52:
#data 0x81A5
#data 0x9A687801
#data 0x3ABC5BB3

#align4
loc_8C0A4D5C:
#data 0x380784Ef
#data 0x8BC9

loc_8C0A4D62:
#data 0xE010
#data 0xE05CF3E6
#data 0xE02CF2D6
#data 0xFE27F230
#data 0xFD27E034
#data 0xF3E6E014
#data 0xF2D6E060
#data 0xF230E038
#data 0x9053FD27
#data 0xE038F3C6
#data 0xC72DF2D6
#data 0xF308F231
#data 0xF430F42c
#data 0xF245F28d
#data 0x67C38F07
#data 0xF1D6E038
#data 0xFD17F140
#data 0xF040F0C6
#data 0xFC07

loc_8C0A4DAA:
#data 0x56Ea
#data 0xB11865E3
#data 0xE12C64D3
#data 0x31ECD323
#data 0xE034F318
#data 0x31DC6103
#data 0xF231F218
#data 0xF320F3C6
#data 0x430BFC37
#data 0x902E64C3
#data 0xE0340D94
#data 0xE0000E94
#data 0x7F0480Ef
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0A4DEE:
#data 0x2FE6
#data 0x4F226E63
#data 0x600C84E6
#data 0x8B0A8809
#data 0xE501D212
#data 0x64E3420b
#data 0xE5FE9014
#data 0xD3104F26
#data 0x432B04Ee
#data 0x6EF6

loc_8C0A4E12:
#data 0xD30f
#data 0x430BE501
#data 0x900964E3
#data 0x4F26E5Fe
#data 0x04EED30b
#data 0x6EF6432b
#data 0x00880158
#data 0x012C041c
#data 0x000001C8

#align4
loc_8C0A4E34:
#data 0x8C1569Bc

loc_8C0A4E38:
#data 0x8C1569Dc

loc_8C0A4E3C:
#data bank03.loc_8c034CD6
#data 0xC3092492

#align4
loc_8C0A4E44:
#data bank05.loc_8c0500Ac

loc_8C0A4E48:
#data bank05.loc_8c0590F4

loc_8C0A4E4C:
#data bank05.loc_8c05929c

loc_8C0A4E50:
#data bank05.loc_8c056DE4


loc_8C0A4E54:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov.w @(loc_8C0A4F8E,pc),r14 ; r14 set to 0x88
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r4),r13
add r13,r14 ; r14 ??? bc r13 is ???	
mov.b @(r0,r14),r3
tst r3,r3
bf/s loc_8C0A4E76
mov.l @(0x14,r4),r10
bra loc_8C0A4F7e
nop 	

loc_8C0A4E76:
#data 0xE024
#data 0x03AC5642
#data 0x04349787
#data 0x8572376c
#data 0x435A6303
#data 0xE0346351
#data 0xF32DF266
#data 0xF230435a
#data 0xF231F32d
#data 0x8573F427
#data 0x435A6303
#data 0xF266E038
#data 0xF32D8551
#data 0x435A6303
#data 0xF231E038
#data 0xF230F32d
#data 0x906BF427
#data 0x67F3E600
#data 0x04646C73
#data 0xF346E034
#data 0x65C3E010
#data 0xFC3A7504
#data 0xE022F3E6
#data 0x034CF53a
#data 0x8D064311
#data 0xE010EB01
#data 0xE034F3E6
#data 0xF346FC3a
#data 0xF53a

loc_8C0A4EE6:
#data 0xF2C8
#data 0xF235F358
#data 0xE0388918
#data 0xE014F346
#data 0xFC3AE340
#data 0xE022F3E6
#data 0x074CF53a
#data 0x3737677c
#data 0x91448B08
#data 0x89053713
#data 0xF3E6E014
#data 0xFC3AE038
#data 0xF53AF346

#align4
loc_8C0A4F18:
#data 0xF358F2C8
#data 0x8B16F235

#align4
loc_8C0A4F20:
#data 0x04B49036
#data 0x700184Ef
#data 0x84D580Ef
#data 0x8B0E2008
#data 0xE30484Ee
#data 0x890A3033
#data 0x000960B3
#data 0x902980D5
#data 0x00096063
#data 0xC71581E4
#data 0xE068F308
#data 0xFD37

loc_8C0A4F4E:
#data 0x84Ee
#data 0x80EE70Ff
#data 0x4015600e
#data 0x84D58911
#data 0x30B7600c
#data 0x9019890d
#data 0xD30E9217
#data 0x430B0D24
#data 0xE03264D3
#data 0x222802Ec
#data 0x0EB48B03
#data 0x900EE380
#data 0x0A34


loc_8C0A4F7E:
add 0x08,r15
lds.l @r15+,pr 	
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0A4F8E:
#data 0x0088
#data 0x00C0012c
#data 0x00800A00
#data 0x019C014a
#data 0x40800000

#align4
loc_8C0A4FA0:
#data bank04.loc_8c045748

loc_8C0A4FA4:
#data 0x2FD62FE6
#data 0x4F222FC6
#data 0x2F427FF8
#data 0x1F516453
#data 0x2448544a
#data 0xE0028901
#data 0x8044

loc_8C0A4FBE:
#data 0xDC46
#data 0x6EF2ED0e

#align4
loc_8C0A4FC4:
#data 0x4C0B5EE3
#data 0x4D1064E3
#data 0x64F28BFa
#data 0x7F0855F1
#data 0x6CF64F26
#data 0x6EF66DF6


loc_8C0A4FDC:
mov.l @(loc_8C0A50D8,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0A4FE2:
#data 0x2FE6
#data 0x2FC62FD6
#data 0x4F222FB6
#data 0x906D7FFc
#data 0x6E436C73
#data 0x03CD2F62
#data 0xED00E410
#data 0x8F022338
#data 0x946465D3
#data 0xE508

loc_8C0A5006:
#data 0xE022
#data 0x03EC9262
#data 0x32ECD033
#data 0x644C343c
#data 0x44094409
#data 0x345C4401
#data 0x034C644c
#data 0x22309057
#data 0x05CED32e
#data 0x64E3430b
#data 0x244864F2
#data 0x904E897a
#data 0x0BCED12b
#data 0x84B1934c
#data 0x0B1C600c
#data 0x00096033
#data 0x62E37051
#data 0x61430CEc
#data 0x3C3C7234
#data 0x7134D325
#data 0xE00C430b
#data 0xD22465Bc
#data 0xD1244508
#data 0x63CC4508
#data 0x352C4508
#data 0x353C4308
#data 0xE0346351
#data 0x435AF246
#data 0x415AF32d
#data 0x314CE138
#data 0xF23EF00d
#data 0x8551F427
#data 0x6303F118
#data 0xC71A435a
#data 0xF208D51a
#data 0xF322F32d
#data 0xF11AF131
#data 0x60CCD118
#data 0x93154000
#data 0x334C001c
#data 0x2301600c
#data 0x8802600f
#data 0x88038903
#data 0xA0258907
#data 0x0009

loc_8C0A50B6:
#data 0xE048
#data 0xE3010456
#data 0xA0219006
#data 0x0435

loc_8C0A50C2:
#data 0xE048
#data 0x90010456
#data 0x04D5A01c
#data 0x00F00130
#data 0x01C80150
#data 0x000000Ff

#align4
loc_8C0A50D8:
#data bank04.loc_8c0450C0

loc_8C0A50DC:
#data 0x8C157138

loc_8C0A50E0:
#data bank04.loc_8c04CC1c

loc_8C0A50E4:
#data 0x8C1569E0

loc_8C0A50E8:
#data bank12.loc_8c1294C8

loc_8C0A50EC:
#data 0x8C156A40
#data 0x3FD55555
#data 0x40092492
#data 0x00008000

#align4
loc_8C0A50FC:
#data 0x8C156A20

loc_8C0A5100:
#data 0x04D6E048

#align4
loc_8C0A5104:
#data 0x6CCCD30d
#data 0x4C00D00b
#data 0x6BBC33Cc
#data 0x06BC6330
#data 0x363CE514
#data 0x4F267F04
#data 0x6BF6D308
#data 0x6DF66CF6
#data 0x6EF6432b

#align4
loc_8C0A5128:
#data 0x4F267F04
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00006EF6

#align4
loc_8C0A5138:
#data 0x8c156A1b

loc_8C0A513C:
#data 0x8c156A1f

loc_8C0A5140:
#data bank03.loc_8c034e8c

loc_8C0A5144:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0xFFFB2F86
#data 0x4F22FFEb
#data 0x6A637FF8
#data 0x6D4384A1
#data 0x64035CD5
#data 0xFF08C751
#data 0x85A26E53
#data 0x6B5365F3
#data 0x435A6303
#data 0xF32D9094
#data 0xFB3AF3F2
#data 0x233803Cd
#data 0xE0228D04
#data 0x644BF3B8
#data 0xFB3AF34d

#align4
loc_8C0A518C:
#data 0xE0180D44
#data 0x6853F3B8
#data 0xFE377804
#data 0xFE08C745
#data 0x630385A3
#data 0xE01C435a
#data 0xF3E2F32d
#data 0xE018FE37
#data 0xE034F3E6
#data 0xE010F2C6
#data 0xFE27F230
#data 0xFB2AE01c
#data 0xE038F3E6
#data 0xE014F2C6
#data 0xFE27F230
#data 0x7004604c
#data 0x29099969
#data 0x8D014911
#data 0x7907F82a

#align4
loc_8C0A51D8:
#data 0xD2364921
#data 0x49214921
#data 0x679CE51b
#data 0x420BE601
#data 0x905B64D3
#data 0xD332649c
#data 0x44004408
#data 0x0D369158
#data 0x31DC02De
#data 0x85299353
#data 0x600D33Dc
#data 0x40086332
#data 0x303C4008
#data 0x2102D32b
#data 0x6241343c
#data 0xF32D425a
#data 0xF33DF3F2
#data 0x2E21025a
#data 0x62038541
#data 0xF32D425a
#data 0xF33DF3E2
#data 0x81E1005a
#data 0x62038542
#data 0xF32D425a
#data 0xF33DF3F2
#data 0x81E2005a
#data 0x62038543
#data 0xF32D425a
#data 0xF33DF3E2
#data 0x81E3005a
#data 0x200884A3
#data 0x85E2890d
#data 0x6203F2B8
#data 0xF32D425a
#data 0xFB2AF231
#data 0xF28885E3
#data 0x425A6203
#data 0xF230F32d
#data 0xF82a

loc_8C0A5272:
#data 0xF3B8
#data 0xFE37E02c
#data 0xFD37E034
#data 0xF388E038
#data 0xE024FD37
#data 0x0D3403Cc
#data 0x4F267F08
#data 0xFFF9FEF9
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x00F80130
#data 0x016C0154
#data 0x000001C0
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0A52B4:
#data bank03.loc_8c034CD6

loc_8C0A52B8:
#data 0x8C1569A8

loc_8C0A52BC:
#data 0x8C1568A6

loc_8C0A52C0:
#data 0x2FD62FE6
#data 0x7FF42FB6
#data 0x67F38562
#data 0x5B457704
#data 0x435A6303
#data 0x6273C742
#data 0xE135F208
#data 0x315CF32d
#data 0xF3227704
#data 0x2F72F23a
#data 0x63038563
#data 0xC73D435a
#data 0xF32DF108
#data 0xF73AF312
#data 0x81556060
#data 0x21008463
#data 0x6E038468
#data 0x6703846a
#data 0x6D03846b
#data 0x6103846c
#data 0x805D8469
#data 0x03BD9061
#data 0x89062338
#data 0x6DDBF328
#data 0xF34D611b
#data 0xF23A677b
#data 0x6EEb

loc_8C0A532A:
#data 0xF228
#data 0x6653E018
#data 0xE01CF527
#data 0xF33863F2
#data 0xE034F537
#data 0xE010F2B6
#data 0xF230F328
#data 0xE038F527
#data 0xF2B663F2
#data 0xF338E014
#data 0xF527F230
#data 0x03BCE024
#data 0xA0250434
#data 0xEB00

loc_8C0A535E:
#data 0x60E3
#data 0x806C0009
#data 0x6613637e
#data 0x43113E7c
#data 0x8F0436E8
#data 0x4611666e
#data 0xA0028904
#data 0x0009

loc_8C0A537A:
#data 0x4611
#data 0x8B00

loc_8C0A537E:
#data 0x6E13

#align4
loc_8C0A5380:
#data 0x233863Dc
#data 0x37DC8D0c
#data 0x431163De
#data 0x667E8D04
#data 0x89054615
#data 0xE601A003

#align4
loc_8C0A5398:
#data 0x8B014611
#data 0x961e

loc_8C0A539E:
#data 0x6763

#align4
loc_8C0A53A0:
#data 0x7B01961d
#data 0x364C5443

#align4
loc_8C0A53A8:
#data 0x3B07845f
#data 0x7F0C8BD7
#data 0x6DF66BF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0A53B8:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0A53E8,pc),r3 ; r3 set to 0x8C0E7D30
mov r4,r14
mov.l r5,@r15
mov r14,r5
mov 0x02,r6 ; r6 set to 0x02
jsr @r3
mov.l @(0x18,r14),r4
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0A53EC,pc),r3 ; r3 set to 0x8C0A3AB8
jmp @r3
mov.l @r15+,r14
#data 0x0130
#data 0x008800Ff
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0A53E8:
#data bank0e.loc_8c0e7D30

loc_8C0A53EC:
#data loc_8c0a3AB8


loc_8C0A53F0:
mov.w @(loc_8C0A54E2,pc),r0 ; r0 set to 0x1C8
mov 0x01,r7 ; r7 set to 0x01
mov.l @(r0,r4),r3
add 0x72,r0 ; r0 set to 0x23a
mov.b @(r0,r3),r2
cmp/ge r7,r2
bt loc_8C0A5444
mov.w @(loc_8C0A54E4,pc),r0 ; r0 set to 0x34a
mov.w @(loc_8C0A54E6,pc),r3 ; r3 set to 0x3C00
mov.w @(r0,r4),r2
extu.w r2,r2
tst r3,r2
bt loc_8C0A5444
mov.w @(loc_8C0A54E8,pc),r0 ; r0 set to 0x34e
mov.w @(loc_8C0A54EA,pc),r3 ; r3 set to 0x300
mov.w @(r0,r4),r0 ; r0 ??? bc r4 is ???	
extu.w r0,r0
tst r3,r0
bt loc_8C0A541a
bra loc_8C0A5426
mov 0x00,r6

loc_8C0A541A:
#data 0x9065
#data 0x600D004d
#data 0x890FC860
#data 0x6673

loc_8C0A5426:
#data 0x905c
#data 0x7072034e
#data 0x7202023c
#data 0x60630324
#data 0x815B0009
#data 0x004D9054
#data 0x6073815a
#data 0x81590009


loc_8C0A5444:
rts 	
nop 	
;-------------------------------------------------------------------------------

#align4
loc_8C0A5448:
#data 0x4F222FE6
#data 0x2F427FF0
#data 0x20088569
#data 0x6E538D41
#data 0x6043E400
#data 0xE20A0009
#data 0x63618169
#data 0x3323633d
#data 0x856A8908
#data 0x600D953e
#data 0x8D032058
#data 0x856AE401
#data 0x816A205a

#align4
loc_8C0A547C:
#data 0x0644E011
#data 0x902EE238
#data 0x70EC03Ee
#data 0x701403E6
#data 0x70D903Ee
#data 0xD3180324
#data 0x64E3430b
#data 0x02EE9023
#data 0x032D9027
#data 0x891A2338
#data 0x61F3901d
#data 0x7104D313
#data 0x723402Ee
#data 0xE00C430b
#data 0x64F39015
#data 0x01EED310
#data 0xF3169018
#data 0xFF37E008
#data 0x05EE900d
#data 0x650C8452
#data 0x7404430b
#data 0xE00362F2
#data 0xE00B8025
#data 0x80E6

loc_8C0A54DA:
#data 0x7F10
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0A54E2:
#data 0x01C8

loc_8C0A54E4:
#data 0x034a

loc_8C0A54E6:
#data 0x3C00

loc_8C0A54E8:
#data 0x034e

loc_8C0A54EA:
#data 0x0300
#data 0x04200C00
#data 0x0000041c

#align4
loc_8C0A54F4:
#data bank05.loc_8c05933c

loc_8C0A54F8:
#data bank12.loc_8c1294C8

loc_8C0A54FC:
#data bank10.loc_8c100672
#data 0x7FF44F22
#data 0x60532F42
#data 0x80F80009
#data 0x00096063
#data 0xE501D356
#data 0xE60080F4
#data 0x6463430b
#data 0x8D132008
#data 0x919A6403
#data 0x1434D352
#data 0x62F2E321
#data 0x1426334c
#data 0x60F2E220
#data 0x001D324c
#data 0x84F8814e
#data 0x84F42200
#data 0x2300928c
#data 0x0425E026
#data 0x4F267F0c
#data 0x6043000b
;-------------------------------------------------------------------------------

#align4
loc_8C0A5550:
#data 0xE5012FE6
#data 0xD3454F22
#data 0xE6006E43
#data 0x6463430b
#data 0x8D162008
#data 0x91786403
#data 0x1434D341
#data 0x52E6E303
#data 0x50E61426
#data 0x814E001d
#data 0x0434E020
#data 0x02ECE021
#data 0xE0220424
#data 0x043403Ec
#data 0x936784E5
#data 0xE0268045
#data 0x0435

loc_8C0A5592:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0A5598:
#data 0x7FF44F22
#data 0x1F42D333
#data 0x1F612F52
#data 0x6563E601
#data 0xE400430b
#data 0x8D132008
#data 0xD32F6403
#data 0xE205E020
#data 0x04241434
#data 0x904E53F2
#data 0x62F21436
#data 0x63F21425
#data 0x04265236
#data 0x53F19048
#data 0x04369244
#data 0x0425E026

#align4
loc_8C0A55D8:
#data 0x4F267F0c
#data 0x6043000b
;-------------------------------------------------------------------------------

#align4
loc_8C0A55E0:
#data 0xE6012FE6
#data 0xD3214F22
#data 0x6E436563
#data 0xE400430b
#data 0x8D2D2008
#data 0xD31E6403
#data 0xE020E204
#data 0x14349131
#data 0x314C0424
#data 0x902D922d
#data 0x14E6D31a
#data 0x32EC430b
#data 0xE2019029
#data 0x71506143
#data 0x84E20424
#data 0x84E18042
#data 0xE0508041
#data 0xF437F3E6
#data 0xF3E6E054
#data 0x901BF437
#data 0x043403Ec
#data 0x02EC7001
#data 0xE0300424
#data 0x62E303Ec
#data 0x04347250
#data 0x430BD30c
#data 0xE024E00c
#data 0x042402Ec

#align4
loc_8C0A5650:
#data 0x00096043
#data 0x000B4F26
#data 0x01586EF6
#data 0x00CC3002
#data 0x00DC00D0
#data 0x012C00C0
#data 0x000001A3

#align4
loc_8C0A566C:
#data bank04.loc_8c044F12

loc_8C0A5670:
#data loc_8c0a567c

loc_8C0A5674:
#data bank12.loc_8c129560

loc_8C0A5678:
#data bank12.loc_8c1294C8


loc_8C0A567C:
mov 0x20,r0 ; r0 set to 0x20
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(loc_8C0A57CC,pc),r0 ; r0 set to 0x8C157148
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

loc_8C0A5690:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
tst r3,r3
bf/s loc_8C0A56B8
mov.l @(0x18,r14),r4
mov.w @(loc_8C0A57BC,pc),r0 ; r0 set to 0x158
mov.w @(r0,r4),r1
mov.w @(0x1C,r14),r0 	
extu.w r1,r1
cmp/eq r0,r1
bf loc_8C0A56Ce
mov.w @(loc_8C0A57BE,pc),r0 ; r0 set to 0x1D0
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
extu.b r0,r0
cmp/eq 0x14,r0 	
bt loc_8C0A56D4
bra loc_8C0A56Ce
nop 	

#align4
loc_8C0A56B8:
#data 0x024D9080
#data 0x622D85Ee
#data 0x8B043200
#data 0x004C907b
#data 0x8815600c
#data 0x8902


loc_8C0A56CE:
mov r14,r4
bra loc_8C0A61B4
mov.l @r15+,r14

loc_8C0A56D4:
mov.b @(0x04,r14),r0 	
mov r14,r4
mov.l @(loc_8C0A57D0,pc),r1 ; r1 set to 0x8C157170
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

#align4
loc_8C0A56E4:
#data 0x4F22916c
#data 0x314C8444
#data 0x7001D339
#data 0x90658044
#data 0x320C5246
#data 0x70E4430b
#data 0xE1019061
#data 0x61430414
#data 0x71505046
#data 0x80428402
#data 0x84015046
#data 0xE0508041
#data 0xF3365346
#data 0xE054F437
#data 0xF3365346
#data 0x904FF437
#data 0x023C5346
#data 0x70010424
#data 0x023C5346
#data 0xE0300424
#data 0x023C5346
#data 0x52460424
#data 0x7250D326
#data 0xE00C430b
#data 0xE0245146
#data 0x031CE500
#data 0xE3450434
#data 0x04549037
#data 0x04347070
#data 0x04547001
#data 0x0454E024
#data 0x034CE021
#data 0x633CD01d
#data 0x033D4300
#data 0xF208C71c
#data 0x435AE05c
#data 0xF322F32d
#data 0x9024F437
#data 0x2338034d
#data 0xE60B8D04
#data 0xF346E05c
#data 0xF437F34d

#align4
loc_8C0A578C:
#data 0x034CE020
#data 0x89002338
#data 0xE63c

loc_8C0A5796:
#data 0x9017
#data 0x0464D312
#data 0x0455700b
#data 0x045470F2
#data 0x04567026
#data 0x62328442
#data 0x4000600c
#data 0x4F26727c
#data 0x7101012d
#data 0x0215000b
;-------------------------------------------------------------------------------

loc_8C0A57BC:
#data 0x0158

loc_8C0A57BE:
#data 0x01D0
#data 0x012C00Dc
#data 0x013001A3
#data 0x000001A1

#align4
loc_8C0A57CC:
#data 0x8C157148

loc_8C0A57D0:
#data 0x8C157170

loc_8C0A57D4:
#data bank12.loc_8c129560

loc_8C0A57D8:
#data bank12.loc_8c1294C8

loc_8C0A57DC:
#data 0x8C157180
#data 0x3FD55555
#data 0x8C2896B0

#align4
loc_8C0A57E8:
#data 0x6E432FE6
#data 0x4F222FD6
#data 0x200884E5
#data 0x5DE68F0f
#data 0x03DC9054
#data 0x89392338
#data 0xE51484E5
#data 0xE600D32a
#data 0x80E57001
#data 0x64E3430b
#data 0xE2019049
#data 0x0E24

loc_8C0A5816:
#data 0x62D3
#data 0x61E3D326
#data 0x71347234
#data 0xE00C430b
#data 0x31ECE15c
#data 0xF318E034
#data 0xF230F2E6
#data 0x9039FE27
#data 0x233803Dc
#data 0xD31F8B1c
#data 0x64E3430b
#data 0x4011600e
#data 0x90308B09
#data 0x222802Dc
#data 0xD31A890c
#data 0x64E3430b
#data 0x4011600e
#data 0x8906

loc_8C0A585A:
#data 0xE000
#data 0x81DE64E3
#data 0x6DF64F26
#data 0x6EF6A4A6

#align4
loc_8C0A5868:
#data 0xD2144F26
#data 0x6DF664E3
#data 0x6EF6422b

#align4
loc_8C0A5874:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0A587C:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0A58AC,pc),r0 ; r0 set to 0x158
mov.l @(0x18,r14),r4
mov.w @(r0,r4),r3
mov.w @(0x1C,r14),r0 	
extu.w r3,r3
cmp/eq r0,r3
bt loc_8C0A5894
mov r14,r4
bra loc_8C0A61B4
mov.l @r15+,r14

loc_8C0A5894:
mov.b @(0x04,r14),r0 	
mov r14,r4
mov.l @(loc_8C0A58C0,pc),r1 ; r1 set to 0x8C157188
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x012C0141
#data 0x020001A0

loc_8C0A58AC:
#data 0x0158
#data 0x0000

#align4
loc_8C0A58B0:
#data bank03.loc_8c034e8c

loc_8C0A58B4:
#data bank12.loc_8c1294C8

loc_8C0A58B8:
#data bank03.loc_8c034dee

loc_8C0A58BC:
#data bank04.loc_8c045748

loc_8C0A58C0:
#data 0x8C157188


loc_8C0A58C4:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0A5A0A,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0A5A14,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0A5A0A,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r14),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0A5A0C,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0A5A0E,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0A5A18,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r14),r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov r14,r1
add 0x34,r1
mov.b r3,@(r0,r14) 	
mov.l @(0x18,r14),r2
mov.l @(loc_8C0A5A18,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x00,r4 ; r4 set to 0x00
mov r4,r0 ; r0 set to 0x00
nop 	
mov.w r0,@(0x1E,r14) 	
mov 0x22,r0 ; r0 set to 0x22
mov.b r4,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
tst r3,r3
bf loc_8C0A5958
mov 0x24,r0 ; r0 set to 0x24
bra loc_8C0A595e
mov.b r4,@(r0,r14) 	

loc_8C0A5958:
mov 0x24,r0 ; r0 set to 0x24
mov 0x07,r2 ; r2 set to 0x07
mov.b r2,@(r0,r14) 	

loc_8C0A595E:
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
mov.l @(loc_8C0A5A1C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
lds.l @r15+,pr 	
mov.b @(r0,r14),r6
mov r14,r4
mov 0x12,r5 ; r5 set to 0x12, r5 set to 0x12
add 0x01,r6
jmp @r3
mov.l @r15+,r14

loc_8C0A5970:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l @(0x18,r14),r3
mov.l r3,@r15
mov.w @(0x1E,r14),r0 	
add 0xFF,r0
mov.w r0,@(0x1E,r14) 	
exts.w r0,r0
cmp/pl r0
bt loc_8C0A59A8
bsr loc_8C0A5550
mov r14,r4
mov.b @(0x05,r14),r0 	
tst r0,r0
bf loc_8C0A5996
bra loc_8C0A5998
mov 0x04,r0

loc_8C0A5996:
#data 0xE007

#align4
loc_8C0A5998:
#data 0xE02281Ef
#data 0xE12200Ec
#data 0x700131Ec
#data 0x2100C907


loc_8C0A59A8:
mov.b @(0x05,r14),r0 	
tst r0,r0
bf loc_8C0A59D8
mov.l @(loc_8C0A5A20,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r14,r4
mov.w @(loc_8C0A5A10,pc),r0 ; r0 set to 0x14b
mov.l @r15,r2
mov.b @(r0,r2),r3 ; r3 ??? bc r2 is ???	
tst r3,r3
bt loc_8C0A59F0
mov.b @(0x05,r14),r0 	
mov r14,r4
mov 0x12,r5 ; r5 set to 0x12
add 0x01,r0 ; r0 set to 0x14c
mov.b r0,@(0x05,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r6
add 0x03,r6
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0A5A1C,pc),r3 ; r3 set to 0x8C034E8c
jmp @r3
mov.l @r15+,r14

#align4
loc_8C0A59D8:
#data 0x430BD311
#data 0x600E64E3
#data 0x89054011
#data 0xE30084E4
#data 0x80E47001
#data 0x0E34900e


loc_8C0A59F0:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0A59F8:
mov r4,r3
mov.l @(loc_8C0A5A24,pc),r1 ; r1 set to 0x8C157198
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0A5A0A:
#data 0x00Dc

loc_8C0A5A0C:
#data 0x012c

loc_8C0A5A0E:
#data 0x01A3

loc_8C0A5A10:
#data 0x014b
#data 0x0000

#align4
loc_8C0A5A14:
#data bank12.loc_8c129560

loc_8C0A5A18:
#data bank12.loc_8c1294C8

loc_8C0A5A1C:
#data bank03.loc_8c034e8c

loc_8C0A5A20:
#data bank03.loc_8c034dee

loc_8C0A5A24:
#data 0x8C157198


loc_8C0A5A28:
mov.l r14,@-r15
mov.w @(loc_8C0A5B48,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0A5B50,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0A5B48,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0A5B4A,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0A5B4C,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0A5B54,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov r4,r1
add 0x34,r1
mov.b r3,@(r0,r4) 	
mov.l @(0x18,r4),r2
mov.l @(loc_8C0A5B54,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r4),r5
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r4),r3 ; r3 ??? bc r4 is ???	
mov 0x00,r6 ; r6 set to 0x00
mov r6,r14 ; r14 set to 0x00
tst r3,r3
bf/s loc_8C0A5ACa
fldi0 fr5
mov 0x24,r0 ; r0 set to 0x24
fmov fr5,fr4
mov.b r6,@(r0,r4) 	
mova @(loc_8C0A5B58,pc),r0  ; r0 set to 0x8C0A5B58
fmov.s @r0,fr3
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr3,@(r0,r4) 	
mova @(loc_8C0A5B5C,pc),r0  ; r0 set to 0x8C0A5B5c
fmov.s @r0,fr3
mov 0x6C,r0 ; r0 set to 0x6c
bra loc_8C0A5B0a
fmov.s fr3,@(r0,r4) 	

loc_8C0A5ACA:
mov 0x24,r0 ; r0 set to 0x24
mov 0x07,r2 ; r2 set to 0x07
mov.b r2,@(r0,r4) 	
mov.b @(0x05,r4),r0 	
tst r0,r0
bf/s loc_8C0A5AE2
mov 0x04,r14 ; r14 set to 0x04
mov.l @(loc_8C0A5B60,pc),r1 ; r1 set to 0x42092492
mov 0x38,r0 ; r0 set to 0x38
lds r1,fpul 	
bra loc_8C0A5AEa
fsts fpul,fr3

loc_8C0A5AE2:
#data 0xD120
#data 0x415AE038
#data 0xF30d

loc_8C0A5AEA:
#data 0xF246
#data 0xF427F230
#data 0xF308C71d
#data 0xF437E060
#data 0xF308C71c
#data 0xF437E06c
#data 0xF408C71b
#data 0xE5076057
#data 0x2509

loc_8C0A5B0A:
#data 0xD01a
#data 0x4500655c
#data 0xC719035d
#data 0x435AF208
#data 0xF32D9019
#data 0x2338034d
#data 0xF622F63c
#data 0xF4608D01
#data 0xF44d

loc_8C0A5B2A:
#data 0xE034
#data 0xF346D313
#data 0x67E3E512
#data 0xF340E605
#data 0xE05CF437
#data 0xE068F457
#data 0x4F26F457
#data 0x6EF6432b

loc_8C0A5B48:
#data 0x00Dc

loc_8C0A5B4A:
#data 0x012c

loc_8C0A5B4C:
#data 0x01A3
#data 0x0130

#align4
loc_8C0A5B50:
#data bank12.loc_8c129560

loc_8C0A5B54:
#data bank12.loc_8c1294C8

loc_8C0A5B58:
#data 0x40092492

#align4
loc_8C0A5B5C:
#data 0x3F092492

#align4
loc_8C0A5B60:
#data 0x42092492
#data 0x432B6DB6
#data 0x40892492
#data 0x3F892492
#data 0xC1555555

#align4
loc_8C0A5B74:
#data 0x8C1571A8
#data 0x3FD55555

#align4
loc_8C0A5B7C:
#data bank03.loc_8c034F54


loc_8C0A5B80:
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
mov.b @(0x05,r4),r0 	
tst r0,r0
bf loc_8C0A5BC4
mova @(loc_8C0A5C70,pc),r0  ; r0 set to 0x8C0A5C70
bra loc_8C0A5BC8
fmov.s @r0,fr4

#align4
loc_8C0A5BC4:
#data 0xF408C72b

#align4
loc_8C0A5BC8:
#data 0xF346E060
#data 0x8B04F345
#data 0xF38DE06c
#data 0xE060F437
#data 0xF447

loc_8C0A5BDA:
#data 0xC727
#data 0xF3085546
#data 0xF456E038
#data 0x034CE021
#data 0x8D032338
#data 0xC723F430
#data 0xF420F208

#align4
loc_8C0A5BF4:
#data 0x20088445
#data 0xC7218902
#data 0xF430F308

#align4
loc_8C0A5C00:
#data 0xF346E038
#data 0x8B05F345
#data 0xE3008444
#data 0x80447001
#data 0x0434902b

#align4
loc_8C0A5C14:
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0A5C18:
mov.w @(loc_8C0A5C6A,pc),r0 ; r0 set to 0x12c
mov 0x00,r2 ; r2 set to 0x00
mov.b r2,@(r0,r4) 	
mov.w @(loc_8C0A5C6C,pc),r0 ; r0 set to 0x1C8
mov.l @(0x18,r4),r3
mov.l @(r0,r3),r2 ; r2 ??? bc r3 is ???	
mov 0x24,r0 ; r0 set to 0x24
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov.b @(r0,r2),r1
mov.b r1,@(r0,r4) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r4) 	
mov.b @(0x04,r4),r0 	
extu.b r0,r0 ; r0 set to 0x31
cmp/eq 0x00,r0 	
bt loc_8C0A5C48
cmp/eq 0x01,r0 	
bt loc_8C0A5C48
cmp/eq 0x02,r0 	
bt loc_8C0A5C50
cmp/eq 0x03,r0 	
bt loc_8C0A5C50
bra loc_8C0A5C50
nop 	

loc_8C0A5C48:
mov.w @(loc_8C0A5C6A,pc),r0 ; r0 set to 0x12c
mov 0x01,r3 ; r3 set to 0x01
bra loc_8C0A5C54
mov.b r3,@(r0,r4) 	

loc_8C0A5C50:
bra loc_8C0A61B4
nop 	

loc_8C0A5C54:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0A5C58:
mov r4,r3
mov.l @(loc_8C0A5C84,pc),r1 ; r1 set to 0x8C1571B8
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0A5C6A:
#data 0x012c

loc_8C0A5C6C:
#data 0x01C8
#data 0x0000

#align4
loc_8C0A5C70:
#data 0x40F00000
#data 0x41892492
#data 0x42CDB6Db
#data 0x42092492
#data 0x43892492

#align4
loc_8C0A5C84:
#data 0x8C1571B8

loc_8C0A5C88:
#data 0x6E432FE6
#data 0x91992FD6
#data 0x84E44F22
#data 0x929531Ec
#data 0xD34E7001
#data 0x909280E4
#data 0x55E654E5
#data 0x324C430b
#data 0xED01908e
#data 0x715061E3
#data 0x84420ED4
#data 0x844180E2
#data 0xE05080E1
#data 0xFE37F346
#data 0xF346E054
#data 0x9080FE37
#data 0x0E34034c
#data 0x024C7001
#data 0xE0300E24
#data 0x6243034c
#data 0x0E347250
#data 0x430BD33e
#data 0xE024E00c
#data 0x024C61E3
#data 0x7134E300
#data 0x62530E24
#data 0x7234906a
#data 0xD3380E34
#data 0xE00C430b
#data 0xD137E031
#data 0x0E24E205
#data 0x85EEE517
#data 0x031CD235
#data 0x00ECE021
#data 0x600C633c
#data 0x320C4008
#data 0x9257332c
#data 0x32EC6030
#data 0x2200D330
#data 0x06EC9052
#data 0x64E3430b
#data 0x6232D32e
#data 0x21D85127
#data 0x90478901
#data 0x0ED4

loc_8C0A5D3A:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0A5D42:
#data 0x9044
#data 0x2FE6E300
#data 0x4F226E43
#data 0x706006Ee
#data 0x54E655E5
#data 0xE0240E34
#data 0x0E24025c
#data 0x20088465
#data 0x90358B13
#data 0x600C006c
#data 0x8B0E8815
#data 0x600C8455
#data 0x8B0A8805
#data 0x00EE902d
#data 0x88026001
#data 0x85EF8B0d
#data 0x81EF70Ff
#data 0x4011600f
#data 0x8905

loc_8C0A5D8A:
#data 0x84E4
#data 0x80E47001
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0A5D96:
#data 0x5443
#data 0x1E46

loc_8C0A5D9A:
#data 0x6243
#data 0x61E3D30e
#data 0x71347234
#data 0xE00C430b
#data 0x6022D20f
#data 0xC8015007
#data 0xD10E8905
#data 0x64E3410b
#data 0xE3019006
#data 0x0E34

loc_8C0A5DBE:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x00C000Dc
#data 0x01A3012c
#data 0x00CC0158
#data 0x00D001D0

#align4
loc_8C0A5DD4:
#data bank12.loc_8c129560

loc_8C0A5DD8:
#data bank12.loc_8c1294C8

loc_8C0A5DDC:
#data 0x8C1571D4

loc_8C0A5DE0:
#data 0x8C1571C8

loc_8C0A5DE4:
#data bank03.loc_8c034e8c
#data 0x8C26823c

#align4
loc_8C0A5DEC:
#data bank03.loc_8c034dee


loc_8C0A5DF0:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0A5F26,pc),r1 ; r1 set to 0x1D0
mov.l @(0x18,r14),r0
mov.b @(r0,r1),r0
extu.b r0,r0
cmp/eq 0x16,r0 	
bt loc_8C0A5E06
mov r14,r4
bra loc_8C0A61B4
mov.l @r15+,r14

loc_8C0A5E06:
mov.b @(0x04,r14),r0 	
mov r14,r4
mov.l @(loc_8C0A5F34,pc),r1 ; r1 set to 0x8C1571E4
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0A5E16:
#data 0x4F22
#data 0x61435246
#data 0x7134D346
#data 0x430B7234
#data 0x907FE00c
#data 0xD2446143
#data 0xE021054e
#data 0xC743034c
#data 0xF2084508
#data 0x352C633c
#data 0x353C4300
#data 0xE0386350
#data 0x435A310c
#data 0x84512F16
#data 0x6303F32d
#data 0x63F6435a
#data 0xF008C73b
#data 0xF43CF138
#data 0x9064F32d
#data 0xF31AF13e
#data 0x2118014d
#data 0xF4228D01
#data 0xF44d

loc_8C0A5E6E:
#data 0xE034
#data 0x4F26F346
#data 0x000BF340
#data 0xF437
;-------------------------------------------------------------------------------

loc_8C0A5E7A:
mov.w @(loc_8C0A5F28,pc),r0 ; r0 set to 0xCc
mov.l @(loc_8C0A5F48,pc),r1 ; r1 set to 0x8C157200
mov.l @(r0,r4),r0 ; r0 ??? bc r4 is ???	
shll r0
mov.w @(r0,r1),r0
rts 	
mov.w r0,@(0x1E,r4) 	
;-------------------------------------------------------------------------------

#align4
loc_8C0A5E88:
#data 0x6E432FE6
#data 0x4F22914e
#data 0x31EC84E4
#data 0x7001D32d
#data 0x904780E4
#data 0x320C52E6
#data 0x70E4430b
#data 0xE1019043
#data 0x61E30E14
#data 0x715050E6
#data 0x80E28402
#data 0x840150E6
#data 0xE05080E1
#data 0xF33653E6
#data 0xE054FE37
#data 0xF33653E6
#data 0x9031FE37
#data 0x023C53E6
#data 0x70010E24
#data 0x023C53E6
#data 0xE0300E24
#data 0x023C53E6
#data 0x52E60E24
#data 0x7250D314
#data 0xE00C430b
#data 0xE40051E6
#data 0x031CE024
#data 0x90170E44
#data 0xBF8C0E46
#data 0xBFBC64E3
#data 0x901664E3
#data 0x0E34E302
#data 0x02ECE021
#data 0x89022228
#data 0xE204900f
#data 0x0E24

loc_8C0A5F16:
#data 0x900c
#data 0x4F26E513
#data 0x64E3D30c
#data 0x432B06Ec
#data 0x6EF6

loc_8C0A5F26:
#data 0x01D0

loc_8C0A5F28:
#data 0x00Cc
#data 0x0130
#data 0x012C00Dc
#data 0x015801A3

#align4
loc_8C0A5F34:
#data 0x8C1571E4

loc_8C0A5F38:
#data bank12.loc_8c1294C8

loc_8C0A5F3C:
#data 0x8C1571F4
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0A5F48:
#data 0x8C157200

loc_8C0A5F4C:
#data bank12.loc_8c129560

loc_8C0A5F50:
#data bank03.loc_8c034e8c


loc_8C0A5F54:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.w @(0x1E,r14),r0 	
add 0xFF,r0
mov.w r0,@(0x1E,r14) 	
exts.w r0,r0
cmp/pl r0
bt loc_8C0A5FCa
mov.w @(loc_8C0A6084,pc),r0 ; r0 set to 0xCc
mov.l @(r0,r14),r2
add 0x01,r2
mov.l r2,@(r0,r14) 	
bsr loc_8C0A5E7a
mov r14,r4
mov.w @(0x1E,r14),r0 	
tst r0,r0
bf loc_8C0A5F92
mov.b @(0x04,r14),r0 	
add 0x01,r0 ; r0 set to 0xCd
mov.b r0,@(0x04,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3
tst r3,r3
bf loc_8C0A5FD8
mov.l @(0x18,r14),r3
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x07,r3) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0A5F92:
#data 0xD240
#data 0x6563E601
#data 0xE400420b
#data 0x8D142008
#data 0xD23D6403
#data 0x6143E020
#data 0x14247134
#data 0x53E6E208
#data 0x04241436
#data 0x03ECE021
#data 0x04349265
#data 0x0425E026
#data 0xD33662E3
#data 0x430B7234
#data 0xE00c


loc_8C0A5FCA:
bsr loc_8C0A5E16
mov r14,r4
lds.l @r15+,pr 	
mov.l @(loc_8C0A60A0,pc),r3 ; r3 set to 0x8C034DEe
mov r14,r4
jmp @r3
mov.l @r15+,r14

loc_8C0A5FD8:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0A5FDE:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0A6088,pc),r1 ; r1 set to 0x1D0
mov.l @(0x18,r14),r0
mov.b @(r0,r1),r0
extu.b r0,r0
cmp/eq 0x16,r0 	
bt loc_8C0A5FF4
mov r14,r4
bra loc_8C0A61B4
mov.l @r15+,r14

loc_8C0A5FF4:
mov.b @(0x04,r14),r0 	
mov r14,r4
mov.l @(loc_8C0A60A4,pc),r1 ; r1 set to 0x8C157208
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0A6004:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0A608A,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0A60A8,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0A608A,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r14),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0A608C,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0A608E,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0A609C,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x00,r2 ; r2 set to 0x00
mov.l @(0x18,r14),r1
mov 0x24,r0 ; r0 set to 0x24
mov.b r2,@(r0,r14) 	
mov 0x08,r0 ; r0 set to 0x08
mov.w r0,@(0x1E,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
tst r3,r3
bf loc_8C0A60Ac
mov.w @(loc_8C0A6090,pc),r0 ; r0 set to 0x158
mov 0x03,r3 ; r3 set to 0x03
bra loc_8C0A60B2
mov.b r3,@(r0,r14) 	

loc_8C0A6084:
#data 0x00Cc
#data 0x3002

loc_8C0A6088:
#data 0x01D0

loc_8C0A608A:
#data 0x00Dc

loc_8C0A608C:
#data 0x012c

loc_8C0A608E:
#data 0x01A3

loc_8C0A6090:
#data 0x0158
#data 0x0000

#align4
loc_8C0A6094:
#data bank04.loc_8c044F12

loc_8C0A6098:
#data loc_8c0a567c

loc_8C0A609C:
#data bank12.loc_8c1294C8

loc_8C0A60A0:
#data bank03.loc_8c034dee

loc_8C0A60A4:
#data 0x8C157208

loc_8C0A60A8:
#data bank12.loc_8c129560


loc_8C0A60AC:
mov.w @(loc_8C0A61BA,pc),r0 ; r0 set to 0x158
mov 0x05,r1 ; r1 set to 0x05
mov.b r1,@(r0,r14) 	

loc_8C0A60B2:
mov.w @(loc_8C0A61BA,pc),r0 ; r0 set to 0x158, r0 set to 0x158
mov 0x13,r5 ; r5 set to 0x13, r5 set to 0x13
lds.l @r15+,pr 	
mov.l @(loc_8C0A61C4,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
mov r14,r4
mov.b @(r0,r14),r6
jmp @r3
mov.l @r15+,r14

loc_8C0A60C2:
mov.w @(0x1E,r4),r0 	
add 0xFF,r0
mov.w r0,@(0x1E,r4) 	
exts.w r0,r0
cmp/pl r0
bt loc_8C0A60Dc
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0A61BC,pc),r0 ; r0 set to 0x12c
bra loc_8C0A60E2
mov.b r3,@(r0,r4) 	

loc_8C0A60DC:
mov.l @(loc_8C0A61C8,pc),r3 ; r3 set to 0x8C034DEe
jmp @r3
nop 	

loc_8C0A60E2:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0A60E6:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0A61BA,pc),r0 ; r0 set to 0x158
sts.l pr,@-r15
mov.l @(0x18,r14),r4
mov.w @(r0,r4),r3
mov.w @(0x1C,r14),r0 	
extu.w r3,r3
cmp/eq r0,r3
bt loc_8C0A6102
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0A61B4
mov.l @r15+,r14

loc_8C0A6102:
mov r4,r2
mov.l @(loc_8C0A61CC,pc),r3 ; r3 set to 0x8C1294C8
mov r14,r1
add 0x34,r2
add 0x34,r1
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.b @(0x04,r14),r0 	
tst r0,r0
bf loc_8C0A619c
mov.b @(0x04,r14),r0 	
mov.w @(loc_8C0A61BE,pc),r1 ; r1 set to 0xDc
add 0x01,r0 ; r0 set to 0x0d
mov.l @(loc_8C0A61D0,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0A61C0,pc),r0 ; r0 set to 0xC0
mov.w @(loc_8C0A61BE,pc),r2 ; r2 set to 0xDc
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C0A61BC,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0A61C2,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0A61CC,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov.b r2,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
tst r3,r3
bf loc_8C0A6180
mov.w @(loc_8C0A61BA,pc),r0 ; r0 set to 0x158
mov 0x0D,r3 ; r3 set to 0x0d
mov 0x00,r2 ; r2 set to 0x00
mov.b r3,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
bra loc_8C0A618c
mov.b r2,@(r0,r14) 	

loc_8C0A6180:
mov.w @(loc_8C0A61BA,pc),r0 ; r0 set to 0x158
mov 0x0E,r1 ; r1 set to 0x0e
mov 0x07,r3 ; r3 set to 0x07
mov.b r1,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14) 	

loc_8C0A618C:
mov.w @(loc_8C0A61BA,pc),r0 ; r0 set to 0x158, r0 set to 0x158
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
lds.l @r15+,pr 	
mov.l @(loc_8C0A61C4,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
mov r14,r4
mov.b @(r0,r14),r6
jmp @r3
mov.l @r15+,r14

loc_8C0A619C:
lds.l @r15+,pr 	
mov.l @(loc_8C0A61C8,pc),r3 ; r3 set to 0x8C034DEe
mov r14,r4
jmp @r3
mov.l @r15+,r14

loc_8C0A61A6:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0A61BC,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0A61B4:
mov.l @(loc_8C0A61D4,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0A61BA:
#data 0x0158

loc_8C0A61BC:
#data 0x012c

loc_8C0A61BE:
#data 0x00Dc

loc_8C0A61C0:
#data 0x00C0

loc_8C0A61C2:
#data 0x01A3

#align4
loc_8C0A61C4:
#data bank03.loc_8c034e8c

loc_8C0A61C8:
#data bank03.loc_8c034dee

loc_8C0A61CC:
#data bank12.loc_8c1294C8

loc_8C0A61D0:
#data bank12.loc_8c129560

loc_8C0A61D4:
#data bank04.loc_8c0450C0
#data 0x7FFC4F22
#data 0xE501D324
#data 0xE6002F42
#data 0x6463430b
#data 0x8D0A2008
#data 0xD3216403
#data 0x1434E026
#data 0x62F29338
#data 0xE2001426
#data 0xE0200435
#data 0x7F040424
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0A620A:
#data 0x2FE6
#data 0x53E66E43
#data 0x023CE024
#data 0xE0200E24
#data 0x233803Ec
#data 0x85EE8902
#data 0x8B0C2008

#align4
loc_8C0A6224:
#data 0xE3009021
#data 0x64E3D113
#data 0x84E40E34
#data 0x600C951c
#data 0x031E4008
#data 0x432B35Ec
#data 0x6EF6

loc_8C0A623E:
#data 0x000b
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0A6242:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0A626E,pc),r0 ; r0 set to 0x1D3
mov.l @(0x18,r14),r4
mov.b @(r0,r4),r3
mov 0x2A,r0 ; r0 set to 0x2a
mov.b r3,@(r0,r5) 	
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r4),r2
mov r14,r4
mov.b r2,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3
mov.l @(loc_8C0A627C,pc),r0 ; r0 set to 0x8C157284
extu.b r3,r3
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14
#data 0x012C3003
#data 0x0088

loc_8C0A626E:
#data 0x01D3

#align4
loc_8C0A6270:
#data bank04.loc_8c044F12

loc_8C0A6274:
#data loc_8c0a620a

loc_8C0A6278:
#data 0x8C157274

loc_8C0A627C:
#data 0x8C157284

loc_8C0A6280:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0xFFFB2F86
#data 0x4F22FFEb
#data 0x915C7FF8
#data 0x905B6C43
#data 0x92586A53
#data 0x5DC631Cc
#data 0x430BD32d
#data 0x905432Dc
#data 0x61C3E901
#data 0x0C947150
#data 0x80C284D2
#data 0x80C184D1
#data 0xF3D6E050
#data 0xE054FC37
#data 0xFC37F3D6
#data 0x03DC9046
#data 0x70010C34
#data 0x0C2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD3200C34
#data 0xE00C430b
#data 0xD31EE024
#data 0x61C302Dc
#data 0x0C247134
#data 0x723462D3
#data 0xE00C430b
#data 0x02DD902f
#data 0x8D042228
#data 0xE02266D3
#data 0x622B02Cc
#data 0x0C24

loc_8C0A630A:
#data 0x65A3
#data 0x64C3B40a
#data 0xF38DE060
#data 0xE05CFC37
#data 0xE031FC37
#data 0x0C84E8Ff
#data 0x00096093
#data 0xE103D20f
#data 0xEB0081A4
#data 0x0AB4E028
#data 0x33136321
#data 0x64C38918
#data 0x7F0865A3
#data 0xFEF94F26
#data 0x68F6FFF9
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0xA3E66DF6
#data 0x00DC6EF6
#data 0x012C00C0
#data 0x013001A3

#align4
loc_8C0A635C:
#data bank12.loc_8c129560

loc_8C0A6360:
#data bank12.loc_8c1294C8
#data 0x8C287AE8

#align4
loc_8C0A6368:
#data 0xE501D266
#data 0x420BE602
#data 0xD36564C3
#data 0xE0206403
#data 0xE20291Bc
#data 0x04241434
#data 0x92B7314c
#data 0x90B6D361
#data 0x14C514D6
#data 0x32DC430b
#data 0x614390B2
#data 0x04947150
#data 0x804284D2
#data 0x804184D1
#data 0xF3D6E050
#data 0xE054F437
#data 0xF437F3D6
#data 0x03DC90A5
#data 0x70010434
#data 0x042402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD3530434
#data 0xE00C430b
#data 0x9597E024
#data 0xE3FE02Dc
#data 0x0424354c
#data 0x0434E031
#data 0x03ACE02a
#data 0xE0010534
#data 0xC74C8044
#data 0x1A49E302
#data 0xC74BFE08
#data 0x2F32FF08

#align4
loc_8C0A63F0:
#data 0xE501D344
#data 0x430BE602
#data 0xD24364C3
#data 0xE0206E03
#data 0xE3019178
#data 0x0E341E24
#data 0x927331Ec
#data 0x9072D33f
#data 0x1EC51ED6
#data 0x32DC430b
#data 0x61E3906e
#data 0x0E947150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC9061
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD3310E34
#data 0xE00C430b
#data 0x02DCE024
#data 0xE0220E24
#data 0x0E3403Cc
#data 0x600C00Ec
#data 0xC9F87004
#data 0x89004011
#data 0x7007

loc_8C0A646A:
#data 0x4021
#data 0x4021D32b
#data 0xE51B4021
#data 0xE60180F4
#data 0x430B670c
#data 0x903E64E3
#data 0x913ED227
#data 0x03CE0E26
#data 0x943731Ec
#data 0x93378539
#data 0x600D34Ec
#data 0x633233Ec
#data 0x40084008
#data 0xD321303c
#data 0xE0242102
#data 0xE0310EB4
#data 0x84F40E84
#data 0x4508650c
#data 0x353C4500
#data 0x425A6251
#data 0xF3E2F32d
#data 0x025AF33d
#data 0x85512421
#data 0x425A6203
#data 0xF3F2F32d
#data 0x005AF33d
#data 0x85528141
#data 0x425A6203
#data 0xF3E2F32d
#data 0x005AF33d
#data 0x85538142
#data 0x425A6203
#data 0xF3F2F32d
#data 0x005AF33d
#data 0x0009A01a
#data 0x00C000Dc
#data 0x01A3012c
#data 0x01540088
#data 0x01C0016c

#align4
loc_8C0A6504:
#data bank04.loc_8c044F12

loc_8C0A6508:
#data loc_8c0a620a

loc_8C0A650C:
#data bank12.loc_8c129560

loc_8C0A6510:
#data bank12.loc_8c1294C8
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0A651C:
#data bank03.loc_8c034CD6

loc_8C0A6520:
#data 0x8C157260

loc_8C0A6524:
#data 0x8C1568A6

loc_8C0A6528:
#data 0xE02A8143
#data 0x042402Ac
#data 0x0EB5907e
#data 0x80E4E001
#data 0x72FF62F2
#data 0x8D022228
#data 0xAF552F22
#data 0x0009

loc_8C0A6546:
#data 0x84C4
#data 0x65A364C3
#data 0x80C47001
#data 0x4F267F08
#data 0xFFF9FEF9
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6A02e


loc_8C0A6568:
mov.w @(loc_8C0A6630,pc),r0 ; r0 set to 0x130
mov 0x00,r3 ; r3 set to 0x00
mov.w r3,@(r0,r4) 	
mov.b @(0x04,r4),r0 	
add 0x01,r0 ; r0 set to 0x131
rts 	
mov.b r0,@(0x04,r4) 	
;-------------------------------------------------------------------------------

loc_8C0A6576:
mov.b @(0x04,r4),r0 	
add 0x01,r0
rts 	
mov.b r0,@(0x04,r4) 	
;-------------------------------------------------------------------------------

loc_8C0A657E:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
tst r3,r3
bf loc_8C0A65B2
mov 0x00,r6 ; r6 set to 0x00
mov r14,r4
bra loc_8C0A65A8
mov r6,r7

loc_8C0A6592:
#data 0x5443
#data 0x5344D228
#data 0x8B0A3320
#data 0x00096063
#data 0x7701814e
#data 0x04649045

#align4
loc_8C0A65A8:
#data 0x035CE028
#data 0x37337303
#data 0x8BEf


loc_8C0A65B2:
mov 0x20,r0 ; r0 set to 0x20
mov r14,r4
mov.b @(r0,r14),r2
mov.l @(loc_8C0A663C,pc),r0 ; r0 set to 0x8C157290
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
mov.l @r15+,r14

#align4
loc_8C0A65C4:
#data 0xE3009035
#data 0xE0280434
#data 0xE029035c
#data 0x05345646
#data 0x20088465
#data 0x902B8B04
#data 0x600C006c
#data 0x89018815

#align4
loc_8C0A65E4:
#data 0x0009A27c

#align4
loc_8C0A65E8:
#data 0x036C9025
#data 0x8B092338
#data 0xD213D014
#data 0x63216100
#data 0x611CE201
#data 0x633D421c
#data 0x890E2328

#align4
loc_8C0A6604:
#data 0xE5019015
#data 0x54430454
#data 0x60530454
#data 0x814E0009
#data 0x5443900d
#data 0x60530454
#data 0x000B0009
#data 0x814e
;-------------------------------------------------------------------------------

loc_8C0A6622:
#data 0x8445
#data 0x890F2008
#data 0x0009A085
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0A6630:
#data 0x0130
#data 0x012c
#data 0x01A001D0

#align4
loc_8C0A6638:
#data loc_8c0a620a

loc_8C0A663C:
#data 0x8C157290
#data 0x8C28962c
#data 0x8C28962b

#align4
loc_8C0A6648:
#data 0x6E432FE6
#data 0x2FC62FD6
#data 0x5CE64F22
#data 0x600C84C6
#data 0x8F078804
#data 0x4F266D53
#data 0x64E365D3
#data 0x6DF66CF6
#data 0x6EF6A23a

#align4
loc_8C0A666C:
#data 0x8B068806
#data 0x65D34F26
#data 0x6CF664E3
#data 0xA04D6DF6
#data 0x6EF6

loc_8C0A667E:
#data 0x65D3
#data 0xB24F66C3
#data 0x904A64E3
#data 0x0E64E601
#data 0xF3D6E00c
#data 0xF2E6E034
#data 0xF23054E3
#data 0xE010F427
#data 0xE038F3D6
#data 0xF230F2E6
#data 0x903AF427
#data 0x60630464
#data 0x814E0009
#data 0xF3D6E014
#data 0xF2E6E034
#data 0xF2305543
#data 0xE018F527
#data 0xE038F3D6
#data 0xF230F2E6
#data 0x9028F527
#data 0x60630564
#data 0x815E0009
#data 0x03DCE028
#data 0x2338E029
#data 0x0D348D09
#data 0x5E534F26
#data 0x6CF6951c
#data 0x35EC64E3
#data 0xA0826DF6
#data 0x6EF6

loc_8C0A66F2:
#data 0xE01c
#data 0xF3D666C3
#data 0xF256E034
#data 0xF23164E3
#data 0xE020FC27
#data 0xE038F3D6
#data 0xF231F256
#data 0x4F26FC27
#data 0x6DF66CF6
#data 0x6EF6A288

#align4
loc_8C0A6718:
#data 0xA0076643
#data 0x012CE700
#data 0x0088

loc_8C0A6722:
#data 0x8465
#data 0x70017701
#data 0x56638065

#align4
loc_8C0A672C:
#data 0x035CE028
#data 0x37337304
#data 0x8BF5

loc_8C0A6736:
#data 0x2FE6
#data 0x2FD66E53
#data 0x2FC66D43
#data 0x5CD64F22
#data 0x66C3B1Ee
#data 0xE5019072
#data 0xE00C0D54
#data 0xE034F3E6
#data 0x54D3F2D6
#data 0xF427F230
#data 0xF3E6E010
#data 0xF2D6E038
#data 0xF427F230
#data 0x04549062
#data 0x00096053
#data 0xE014814e
#data 0xE034F3E6
#data 0x5443F2D6
#data 0xF427F230
#data 0xF3E6E018
#data 0xF2D6E038
#data 0xF427F230
#data 0x04549050
#data 0x00096053
#data 0xE028814e
#data 0xE20203Ec
#data 0x3327E029
#data 0x8B080E34
#data 0x5E434F26
#data 0x6CF69543
#data 0x35EC64E3
#data 0xA0206DF6
#data 0x6EF6

loc_8C0A67B6:
#data 0xE01c
#data 0xF3E6D21f
#data 0xF246E034
#data 0xFC27F231
#data 0xF3E6E020
#data 0xF246E038
#data 0xFC27F231
#data 0x0C559030
#data 0x700184D4
#data 0xE02880D4
#data 0x73FE03Ec
#data 0x5E430E34
#data 0x64E3420b
#data 0xD3134F26
#data 0x6CF654E3
#data 0x432B6DF6
#data 0x6EF6

loc_8C0A67F6:
#data 0x901e
#data 0x036C5646
#data 0x8B092338
#data 0xD20ED00f
#data 0x63216100
#data 0x611CE201
#data 0x633D421c
#data 0x89062328

#align4
loc_8C0A6814:
#data 0xE501900c
#data 0x60530454
#data 0x000B0009
#data 0x814e
;-------------------------------------------------------------------------------

loc_8C0A6822:
#data 0x8445
#data 0x890D2008
#data 0x0009A09d
#data 0x0009000b
;-------------------------------------------------------------------------------
#data 0x0088012c
#data 0x01A002A6

#align4
loc_8C0A6838:
#data bank04.loc_8c0450C0
#data 0x8C28962c
#data 0x8C28962b

#align4
loc_8C0A6844:
#data 0x2FD62FE6
#data 0x2FC6

loc_8C0A684A:
#data 0x6643
#data 0x61535D62
#data 0x55D29C86
#data 0x5E46E034
#data 0xF2563C5c
#data 0x851263C1
#data 0x6303435a
#data 0x5465E034
#data 0x435AF32d
#data 0x92779778
#data 0x32DC374c
#data 0xF32DF230
#data 0xF627F231
#data 0x630385C1
#data 0xE038435a
#data 0xF32DF256
#data 0x8513F231
#data 0x6303EC01
#data 0xE038435a
#data 0xF230F32d
#data 0x9062F627
#data 0x60C306C4
#data 0x816E0009
#data 0x6321E034
#data 0x435A5563
#data 0xF2D69658
#data 0xF32D365c
#data 0x63038562
#data 0xE034435a
#data 0xF32DF230
#data 0xF527F231
#data 0x63038521
#data 0xE038435a
#data 0x8563F2D6
#data 0x6303F32d
#data 0xE038435a
#data 0xF32DF231
#data 0xF527F230
#data 0x05C4903f
#data 0x000960C3
#data 0xE029815e
#data 0x73FE037c
#data 0x633E0734
#data 0x8B044315
#data 0x54539632
#data 0xAFA4364c
#data 0x6563

loc_8C0A6902:
#data 0x902f
#data 0x233803Ec
#data 0xE01C8B26
#data 0xE034F376
#data 0xF231F256
#data 0xE020FE27
#data 0xE038F376
#data 0xF231F256
#data 0x8574FE27
#data 0x8174600b
#data 0x4011600f
#data 0x63618B14
#data 0xF2E6E034
#data 0x435AE238
#data 0xF32D32Ec
#data 0xFE27F230
#data 0x66E38561
#data 0x6303F228
#data 0xF32D435a
#data 0xF22AF231
#data 0x6DF66CF6
#data 0x6EF6A168

#align4
loc_8C0A6958:
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x012C0088
#data 0x01A0

loc_8C0A6966:
#data 0x2FE6
#data 0x4F222FC6

#align4
loc_8C0A696C:
#data 0xE0345642
#data 0x6C5391A5
#data 0x93A25762
#data 0xF276317c
#data 0x85C26211
#data 0x6203425a
#data 0x5545E034
#data 0x425AF32d
#data 0x353C5E46
#data 0xF230336c
#data 0xF231F32d
#data 0x8511F427
#data 0x425A6203
#data 0xF276E038
#data 0x85C3F32d
#data 0xF2316203
#data 0xE038425a
#data 0xF32DE701
#data 0xF427F230
#data 0x04749082
#data 0x00096073
#data 0xE034814e
#data 0x54436231
#data 0x9178425a
#data 0x314CF266
#data 0x8512F32d
#data 0x425A6203
#data 0xF230E034
#data 0xF231F32d
#data 0x8531F427
#data 0x425A6203
#data 0xF266E038
#data 0xF32D8513
#data 0x425A6203
#data 0xF231E038
#data 0xF230F32d
#data 0x905FF427
#data 0x60730474
#data 0x814E0009
#data 0x025CE029
#data 0x052472Fe
#data 0x8802005c
#data 0x96528904
#data 0x364C5443
#data 0x6563AFA6

#align4
loc_8C0A6A20:
#data 0x03EC904f
#data 0x8B232338
#data 0xD227D028
#data 0x63216100
#data 0x611CE201
#data 0x633D421c
#data 0x8B192328
#data 0xD224E01c
#data 0xE034F356
#data 0xF231F246
#data 0xE020FE27
#data 0xE038F356
#data 0xF231F246
#data 0xE028FE27
#data 0x73FE035c
#data 0x5E430534
#data 0x64E3420b
#data 0xD31A4F26
#data 0x6CF654E3
#data 0x6EF6432b

#align4
loc_8C0A6A70:
#data 0x6CF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0A6A78:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.w @(loc_8C0A6AC4,pc),r0 ; r0 set to 0x141
sts.l pr,@-r15
mov.l @(0x18,r14),r13
mov.b @(r0,r13),r3
cmp/pz r3
bf/s loc_8C0A6A90
mov r14,r1
bra loc_8C0A6A92
mov 0x00,r7

loc_8C0A6A90:
mov 0x01,r7 ; r7 set to 0x01

loc_8C0A6A92:
mov.l @(loc_8C0A6AD4,pc),r3 ; r3 set to 0x8C1294C8, r3 set to 0x8C1294C8
mov r13,r2
add 0x34,r1
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
mov.w @(loc_8C0A6AC6,pc),r0 ; r0 set to 0x2A4, r0 set to 0x2A4
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
mov.l @(loc_8C0A6ADC,pc),r3 ; r3 set to 0x8C034CD6, r3 set to 0x8C034CD6
mov.w @(r0,r13),r6
mov.l @(loc_8C0A6AD8,pc),r0 ; r0 set to 0x8C15729C, r0 set to 0x8C15729c
extu.w r6,r6
mov.b @(r0,r6),r6
jsr @r3
mov r14,r4
mov.w @(loc_8C0A6AC0,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
mov 0x01,r2 ; r2 set to 0x01, r2 set to 0x01
mov.b r2,@(r0,r14) 	
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x0088

loc_8C0A6AC0:
#data 0x012c
#data 0x01A0

loc_8C0A6AC4:
#data 0x0141

loc_8C0A6AC6:
#data 0x02A4
#data 0x8C28962c
#data 0x8C28962b

#align4
loc_8C0A6AD0:
#data bank04.loc_8c0450C0

loc_8C0A6AD4:
#data bank12.loc_8c1294C8

loc_8C0A6AD8:
#data 0x8C15729c

loc_8C0A6ADC:
#data bank03.loc_8c034CD6

loc_8C0A6AE0:
#data 0xE0282FE6
#data 0x2FC62FD6
#data 0x6B532FB6
#data 0x4F222FA6
#data 0x2F46DA47
#data 0x54B90DBc
#data 0x4D157D03
#data 0xEE008F06

#align4
loc_8C0A6B00:
#data 0x5C424A0b
#data 0x3ED37E01
#data 0x64C38FFa

#align4
loc_8C0A6B0C:
#data 0x65B364F2
#data 0x4F267F04
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6


loc_8C0A6B1E:
mov.l @(loc_8C0A6C10,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

#align4
loc_8C0A6B24:
#data 0x2FD62FE6
#data 0x2FA62FC6
#data 0x7FF04F22
#data 0x9A69906b
#data 0x3A6C036c
#data 0x8D014311
#data 0xEE01EE00

#align4
loc_8C0A6B40:
#data 0x62A167Ec
#data 0x47086373
#data 0xD1324700
#data 0x373C622d
#data 0x42006323
#data 0x323C4708
#data 0x371CC72f
#data 0x4208F408
#data 0x8571372c
#data 0x435A6303
#data 0xF32DE010
#data 0xF537F342
#data 0x63038573
#data 0xE018435a
#data 0xF342F32d
#data 0x8575F537
#data 0x435A6303
#data 0x61F3E020
#data 0x6DC36C13
#data 0x7D04F32d
#data 0x720862C3
#data 0xF537F342
#data 0x6371C720
#data 0x435AF408
#data 0xF342F32d
#data 0x8572FC3a
#data 0x435A6303
#data 0xF342F32d
#data 0x8574FD3a
#data 0x435A6303
#data 0xF32D9028
#data 0xF23AF342
#data 0x2338036d
#data 0xF3C88908
#data 0xFC3AF34d
#data 0xF24DF2D8
#data 0xF328FD2a
#data 0xF23AF34d

#align4
loc_8C0A6BD8:
#data 0xE00CF2C8
#data 0x67ECD311
#data 0xE014F527
#data 0xF537F3D8
#data 0xF328E01c
#data 0x66A1F537
#data 0x666DD00b
#data 0x430B066c
#data 0x7F10E51b
#data 0x6AF64F26
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x014102A4
#data 0x00000130

#align4
loc_8C0A6C10:
#data bank04.loc_8c0450C0

loc_8C0A6C14:
#data 0x8C157218
#data 0x40092492
#data 0x3FD55555

#align4
loc_8C0A6C20:
#data 0x8c15729f

loc_8C0A6C24:
#data bank03.loc_8c034CD6

loc_8C0A6C28:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x4F222F86
#data 0xD2337FFc
#data 0xE4026943
#data 0x63212F62
#data 0x8F503343
#data 0x9D586E53
#data 0xD82FEBFf
#data 0x3DEC6C43
#data 0xEA01

loc_8C0A6C56:
#data 0xE501
#data 0x480BE602
#data 0x640364E3
#data 0xE020E301
#data 0x914BD22a
#data 0x04341424
#data 0x62F2E022
#data 0x9544314c
#data 0x92431426
#data 0x1495354c
#data 0x043403Ec
#data 0xD324903f
#data 0x32EC430b
#data 0x6143903c
#data 0x04A47150
#data 0x804284E2
#data 0x804184E1
#data 0xF3E6E050
#data 0xE054F437
#data 0xF437F3E6
#data 0x03EC902f
#data 0x70010434
#data 0x042402Ec
#data 0x03ECE030
#data 0x725062E3
#data 0xD3170434
#data 0xE00C430b
#data 0x02ECE024
#data 0x04244C10
#data 0x04B4E031
#data 0x253163D1
#data 0x815185D1
#data 0x815285D2
#data 0x8FBC85D3
#data 0x940E8153
#data 0x349CE028
#data 0x7202024c
#data 0x0424

loc_8C0A6CEA:
#data 0x7F04
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00886EF6
#data 0x00C000Dc
#data 0x01A3012c
#data 0x8C287AE8

#align4
loc_8C0A6D0C:
#data bank04.loc_8c044F12

loc_8C0A6D10:
#data loc_8c0a620a

loc_8C0A6D14:
#data bank12.loc_8c129560

loc_8C0A6D18:
#data bank12.loc_8c1294C8
#data 0x7FF44F22
#data 0x60532F42
#data 0x80F80009
#data 0x00096063
#data 0xE501D319
#data 0xE60080F4
#data 0x6463430b
#data 0x8D122008
#data 0x92286403
#data 0xE120E026
#data 0x314CD314
#data 0x04251434
#data 0x63F2E221
#data 0x1436324c
#data 0x840160F2
#data 0x84F88041
#data 0x84F42100
#data 0x7F0C2200
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0A6D6A:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0A6D9C,pc),r0 ; r0 set to 0x8C1572B8
extu.b r3,r3
mov.l @(0x18,r14),r5
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0A6D80:
mov r4,r3
mov.l @(loc_8C0A6DA0,pc),r1 ; r1 set to 0x8C1572Bc
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x3100

#align4
loc_8C0A6D94:
#data bank04.loc_8c044F12

loc_8C0A6D98:
#data loc_8c0a6D6a

loc_8C0A6D9C:
#data 0x8C1572B8

loc_8C0A6DA0:
#data 0x8C1572Bc

loc_8C0A6DA4:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x84E44F22
#data 0x700191B9
#data 0x80E494B6
#data 0x92B431Ec
#data 0xD35E34Ec
#data 0x430B90B2
#data 0x90B032Dc
#data 0x61E3E501
#data 0x0E547150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC90A2
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD3500E34
#data 0xE00C430b
#data 0x02DCE024
#data 0x0E24E3Ff
#data 0x908EE210
#data 0xE0310E54
#data 0xE3320E34
#data 0xE500908b
#data 0x70FF0E24
#data 0x70FF0E24
#data 0x70FF0E24
#data 0x70650E24
#data 0x700B0E34
#data 0x70F20E55
#data 0x70260E54
#data 0x0E56D342
#data 0x623284E2
#data 0x727C600c
#data 0x012D4000
#data 0x7101E544
#data 0x90710215
#data 0x70010E54
#data 0xE0210E54
#data 0xD03B02Ec
#data 0x012C622c
#data 0x0E14E022
#data 0x02DD9067
#data 0x89082228
#data 0x02ECE022
#data 0x7220622b
#data 0xE21F0E24
#data 0x212901Ec
#data 0x0E14

loc_8C0A6E7A:
#data 0xE03c
#data 0xF3D6F48d
#data 0xE034FE37
#data 0xC730F3D6
#data 0x035AF33d
#data 0xF3082431
#data 0xF2D6E038
#data 0xF23DF230
#data 0x8141005a
#data 0x6341E034
#data 0xF22D435a
#data 0x8541FE27
#data 0x435A6303
#data 0xF22DE038
#data 0xE05CFE27
#data 0xE060FE47
#data 0xE068FE47
#data 0xFE47953a
#data 0xD322E06c
#data 0x430BFE47
#data 0xD22164E3
#data 0xE601E517
#data 0x64E3420b
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6


loc_8C0A6EDE:
mov.l r14,@-r15
mov 0x24,r0 ; r0 set to 0x24
mov 0x0B,r3 ; r3 set to 0x0b
mov r4,r14
mov.b r3,@(r0,r14) 	
mov r14,r4
mov.b @(0x05,r14),r0 	
mov.l @(loc_8C0A6F54,pc),r1 ; r1 set to 0x8C1572Cc
extu.b r0,r0 ; r0 set to 0x24
shll2 r0 ; r0 set to 0x90
mov.l @(r0,r1),r3 ; r3 ??	
jmp @r3
mov.l @r15+,r14

loc_8C0A6EF8:
mov.l r14,@-r15
mov 0x21,r0 ; r0 set to 0x21
mov.w @(loc_8C0A6F36,pc),r6 ; r6 set to 0x2A4
mov r4,r14
sts.l pr,@-r15
mov.b @(r0,r14),r3
add r5,r6 ; r6 ??? bc r5 is ???	
mov r6,r2
mov.w @(loc_8C0A6F24,pc),r4 ; r4 set to 0xCc
extu.b r3,r3
add r2,r3
mov.b @r3,r1
add r14,r4 ; r4 ??? bc r14 is ???	
tst r1,r1
bf/s loc_8C0A6F58
mov 0x03,r7 ; r7 set to 0x03
mov r7,r0 ; r0 set to 0x03
nop 	
mov.b r0,@(0x04,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0A6F24:
#data 0x00Cc
#data 0x00Dc
#data 0x012C00C0
#data 0x013F01A3
#data 0x0130019c
#data 0x1900

loc_8C0A6F36:
#data 0x02A4

#align4
loc_8C0A6F38:
#data bank12.loc_8c129560

loc_8C0A6F3C:
#data bank12.loc_8c1294C8
#data 0x8C2896B0

#align4
loc_8C0A6F44:
#data 0x8C1572A4
#data 0x43092492

#align4
loc_8C0A6F4C:
#data bank03.loc_8c033674

loc_8C0A6F50:
#data bank03.loc_8c034e8c

loc_8C0A6F54:
#data 0x8C1572Cc


loc_8C0A6F58:
mov.b @(0x05,r5),r0 	
tst r0,r0
bt loc_8C0A6F78
mov r7,r0
nop 	
mov.b r0,@(0x04,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3
mov r6,r2
mov 0x00,r1 ; r1 set to 0x00
extu.b r3,r3
add r2,r3
mov.b r1,@r3
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0A6F78:
mov 0x34,r0 ; r0 set to 0x34
fldi0 fr4
fmov.s @(r0,r5),fr3
mova @(loc_8C0A7054,pc),r0  ; r0 set to 0x8C0A7054
ftrc fr3,fpul 	
sts fpul,r3
mov.w r3,@r4
fmov.s @r0,fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r5),fr2
fadd fr3,fr2
ftrc fr2,fpul 	
sts fpul,r0
mov.w r0,@(0x02,r4) 	
mov 0x34,r0 ; r0 set to 0x34
mov.w @r4,r3
lds r3,fpul 	
float fpul,fr2
fmov.s fr2,@(r0,r14) 	
mov.w @(0x02,r4),r0 	
mov r0,r3 ; r3 set to 0x34
lds r3,fpul 	
mov 0x38,r0 ; r0 set to 0x38
float fpul,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6c
mov.l @(loc_8C0A7058,pc),r3 ; r3 set to 0x8C033674
mov.w @(loc_8C0A704E,pc),r5 ; r5 set to 0x1900
fmov.s fr4,@(r0,r14) 	
jsr @r3
mov r14,r4
mov.l @(loc_8C0A705C,pc),r2 ; r2 set to 0x8C034DEe
jsr @r2
mov r14,r4
exts.b r0,r0 ; r0 ??	
cmp/pz r0
bt loc_8C0A6FF0
mov.b @(0x05,r14),r0 	
mov 0x00,r3 ; r3 set to 0x00
mov.l @(loc_8C0A7060,pc),r2 ; r2 set to 0x8C034F54
mov r14,r4
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r14),r7
mov 0x03,r6 ; r6 set to 0x03
lds.l @r15+,pr 	
extu.b r7,r7
cmp/gt r7,r3
mov 0x17,r5 ; r5 set to 0x17
addc r3,r7
shar r7
jmp @r2
mov.l @r15+,r14

loc_8C0A6FF0:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0A6FF6:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov 0x21,r0 ; r0 set to 0x21
mov.l r12,@-r15
mov r5,r13
mov.w @(loc_8C0A7050,pc),r12 ; r12 set to 0x2A4
mov.l r11,@-r15
add r13,r12 ; r12 ??? bc r13 is ???	
mov.l r10,@-r15
mov r12,r2
mov.l r9,@-r15
sts.l pr,@-r15
mov.b @(r0,r14),r3
mov.w @(loc_8C0A7052,pc),r10 ; r10 set to 0xCc
extu.b r3,r3
add r2,r3
mov.b @r3,r1
tst r1,r1
bf/s loc_8C0A7026
add r14,r10 ; r10 ??? bc r14 is ???	
mov 0x03,r0 ; r0 set to 0x03
bra loc_8C0A717a
mov.b r0,@(0x04,r14) 	

loc_8C0A7026:
mov.b @(0x05,r13),r0 	
mov 0x01,r9 ; r9 set to 0x01
tst r0,r0
bt/s loc_8C0A7064
mov 0x00,r11 ; r11 set to 0x00
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x04,r14) 	
mov r9,r0 ; r0 set to 0x01
nop 	
mov.b r0,@(0x06,r14) 	
mov r11,r0 ; r0 set to 0x00
nop 	
mov.b r0,@(0x07,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3
mov r12,r2
extu.b r3,r3
add r2,r3
bra loc_8C0A717a
mov.b r11,@r3

loc_8C0A704E:
#data 0x1900

loc_8C0A7050:
#data 0x02A4

loc_8C0A7052:
#data 0x00Cc

#align4
loc_8C0A7054:
#data 0x43092492

#align4
loc_8C0A7058:
#data bank03.loc_8c033674

loc_8C0A705C:
#data bank03.loc_8c034dee

loc_8C0A7060:
#data bank03.loc_8c034F54

loc_8C0A7064:
#data 0x430BD34a
#data 0x908E64E3
#data 0x02ED03Dd
#data 0x89153230
#data 0x0E2502Dd
#data 0x03ECE021
#data 0x633CD045
#data 0xE022023c
#data 0x90800E24
#data 0x233803Dd
#data 0xE0228908
#data 0x633B03Ec
#data 0x0E347320
#data 0x02ECE31f
#data 0x0E242239

#align4
loc_8C0A70A0:
#data 0xF48DE034
#data 0xC73CF3D6
#data 0x015AF33d
#data 0xF3082A11
#data 0xF2D6E038
#data 0xF23DF230
#data 0x81A1005a
#data 0x63A1E034
#data 0xF22D435a
#data 0x85A1FE27
#data 0x435A6303
#data 0xF22DE038
#data 0xE05CFE27
#data 0xE060FE47
#data 0xE068FE47
#data 0xE06CFE47
#data 0x9553D32e
#data 0x430BFE47
#data 0xE02164E3
#data 0x02EC63C3
#data 0x622C7306
#data 0x6120323c
#data 0x89112118
#data 0x63C301Ec
#data 0x611C7306
#data 0x63C3313c
#data 0x02EC21B0
#data 0x323C622c
#data 0x84E522B0
#data 0x80E57001
#data 0x000960B3
#data 0x80E6A01f

#align4
loc_8C0A7120:
#data 0x200884Cc
#data 0xE0218929
#data 0x03EC62C3
#data 0x633C902f
#data 0x23B0332c
#data 0x0E3403Dc
#data 0x600C00Ec
#data 0x89058800
#data 0x89038801
#data 0x89038802
#data 0x0009A004

#align4
loc_8C0A714C:
#data 0x6093A003

#align4
loc_8C0A7150:
#data 0xE002A001

loc_8C0A7154:
#data 0xE003

loc_8C0A7156:
#data 0x80E6
#data 0x700184E5
#data 0x80E5

loc_8C0A715E:
#data 0x60B3
#data 0x64D30009
#data 0x80E7D30e
#data 0x4F26E521
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x432B6DF6
#data 0x6EF6


loc_8C0A717A:
lds.l @r15+,pr 	
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x0130
#data 0x01A31900

#align4
loc_8C0A7190:
#data bank03.loc_8c034dee

loc_8C0A7194:
#data 0x8C1572A4
#data 0x43092492

#align4
loc_8C0A719C:
#data bank03.loc_8c033674

loc_8C0A71A0:
#data bank04.loc_8c042008

loc_8C0A71A4:
#data 0x4F222FE6
#data 0xD3487FFc
#data 0x2F526E43
#data 0x64E3430b
#data 0x89042008
#data 0x430BD345
#data 0x200864E3
#data 0x8B05

loc_8C0A71C2:
#data 0xE003
#data 0x7F0480E4
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0A71CE:
#data 0xE038
#data 0xF3E663F2
#data 0xF2369074
#data 0x8B08F235
#data 0x80E4E002
#data 0x80E6E000
#data 0x7F0480E7
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0A71EE:
#data 0x84E6
#data 0xD13864E3
#data 0x65F2600c
#data 0x031E4008
#data 0x4F267F04
#data 0x6EF6432b
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0A720C:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l r5,@r15
mov.b @(0x07,r14),r0 	
tst r0,r0
bf loc_8C0A7248
mov.b @(0x07,r14),r0 	
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov.w @(loc_8C0A72C2,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bf/s loc_8C0A7234
mov 0x0C,r7 ; r7 set to 0x0c
mov 0x22,r0 ; r0 set to 0x22
mov 0x18,r3 ; r3 set to 0x18
bra loc_8C0A723a
mov.b r3,@(r0,r14) 	

loc_8C0A7234:
mov 0x22,r0 ; r0 set to 0x22
mov 0x08,r1 ; r1 set to 0x08
mov.b r1,@(r0,r14) 	

loc_8C0A723A:
mov.l @(loc_8C0A72D8,pc),r3 ; r3 set to 0x8C034F54, r3 set to 0x8C034F54
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
mov 0x03,r6 ; r6 set to 0x03, r6 set to 0x03
jsr @r3
mov r14,r4
bra loc_8C0A7250
nop 	

loc_8C0A7248:
mov.l @(loc_8C0A72DC,pc),r3 ; r3 set to 0x8C033674
mov.w @(loc_8C0A72C4,pc),r5 ; r5 set to 0x2Bc
jsr @r3
mov r14,r4

loc_8C0A7250:
mov.l @r15,r5 ; r5 ??? bc r15 is ???	
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
bra loc_8C0A76C0
mov.l @r15+,r14

#align4
loc_8C0A725C:
#data 0x2FD62FE6
#data 0x7FFC4F22
#data 0x9D2E6E43
#data 0x84E72F52
#data 0x8F3B2008
#data 0x84E73DEc
#data 0x7001D41b
#data 0xC71980E7
#data 0x9023F408
#data 0x600C00Ec
#data 0x004C4000
#data 0xF32D405a
#data 0xF242F23c
#data 0x005AF23d
#data 0x901481D2
#data 0x233803Ed
#data 0x85D28902
#data 0x81D2600b

#align4
loc_8C0A72A4:
#data 0xE1019010
#data 0x600C00Ec
#data 0x304C4000
#data 0x435A031c
#data 0xF342F32d
#data 0x005AF33d
#data 0x81D3A063
#data 0x041c

loc_8C0A72C2:
#data 0x0130

loc_8C0A72C4:
#data 0x02Bc
#data 0x00Cc
#data 0x000001A3

#align4
loc_8C0A72CC:
#data bank03.loc_8c03340c

loc_8C0A72D0:
#data bank03.loc_8c0335B0

loc_8C0A72D4:
#data 0x8C1572D8

loc_8C0A72D8:
#data bank03.loc_8c034F54

loc_8C0A72DC:
#data bank03.loc_8c033674
#data 0x3FD55555

#align4
loc_8C0A72E4:
#data 0x8C1572Aa

loc_8C0A72E8:
#data 0x02ED9084
#data 0x8B032228
#data 0x03ECE022
#data 0x73FFA003

#align4
loc_8C0A72F8:
#data 0x03ECE022
#data 0x7301

loc_8C0A72FE:
#data 0x0E34
#data 0x02ECE022
#data 0x2239E31f
#data 0x90730E24
#data 0x211801Ed
#data 0xE30F8F09
#data 0x07ECE022
#data 0x677CE200
#data 0x372E3277
#data 0xA0094721
#data 0x77Fc

loc_8C0A7326:
#data 0xE022
#data 0xE20007Ec
#data 0x3277677c
#data 0x4721372e
#data 0x770C677b

#align4
loc_8C0A7338:
#data 0xE517D230
#data 0xE6032739
#data 0x64E3420b
#data 0x85D263D1
#data 0x330CF48d
#data 0x2D319553
#data 0x630385D3
#data 0x303C85D1
#data 0xE03481D1
#data 0x435A63D1
#data 0xFE37F32d
#data 0x630385D1
#data 0xE038435a
#data 0xF32DD324
#data 0xE05CFE37
#data 0xE060FE47
#data 0xE068FE47
#data 0xE06CFE47
#data 0x430BFE47
#data 0x64E3

loc_8C0A7386:
#data 0x65F2
#data 0x7F0464E3
#data 0x6DF64F26
#data 0x6EF6A196


loc_8C0A7394:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.w @(loc_8C0A73F8,pc),r13 ; r13 set to 0xCc
mov.l r5,@r15
mov.b @(0x07,r14),r0 	
tst r0,r0
bf/s loc_8C0A73B6
add r14,r13 ; r13 ??? bc r14 is ???	
mov.b @(0x07,r14),r0 	
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov.w @(loc_8C0A73FA,pc),r0 ; r0 set to 0x1900
bra loc_8C0A7458
nop 	

loc_8C0A73B6:
mov.w @(loc_8C0A73F4,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r2
tst r2,r2
bf loc_8C0A73C6
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r14),r3
bra loc_8C0A73Cc
add 0xFF,r3

loc_8C0A73C6:
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r14),r3
add 0x01,r3

loc_8C0A73CC:
mov.b r3,@(r0,r14) 	
mov 0x22,r0 ; r0 set to 0x22, r0 set to 0x22
mov.b @(r0,r14),r2
mov 0x1F,r3 ; r3 set to 0x1F, r3 set to 0x1f
and r3,r2
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0A73F4,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r14),r1
tst r1,r1
bf/s loc_8C0A7404
mov 0x0F,r3 ; r3 set to 0x0F, r3 set to 0x0f
mov 0x22,r0 ; r0 set to 0x22, r0 set to 0x22
mov.b @(r0,r14),r7
mov 0x00,r2 ; r2 set to 0x00, r2 set to 0x00
extu.b r7,r7
cmp/gt r7,r2
addc r2,r7
shar r7
bra loc_8C0A7416
add 0xFC,r7

loc_8C0A73F4:
#data 0x0130
#data 0x0FA0

loc_8C0A73F8:
#data 0x00Cc

loc_8C0A73FA:
#data 0x1900

#align4
loc_8C0A73FC:
#data bank03.loc_8c034F54

loc_8C0A7400:
#data bank03.loc_8c033674


loc_8C0A7404:
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r14),r7
mov 0x00,r2 ; r2 set to 0x00
extu.b r7,r7
cmp/gt r7,r2
addc r2,r7
shar r7
neg r7,r7
add 0x0C,r7

loc_8C0A7416:
mov.l @(loc_8C0A7524,pc),r2 ; r2 set to 0x8C034F54, r2 set to 0x8C034F54
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
and r3,r7
mov 0x03,r6 ; r6 set to 0x03, r6 set to 0x03
jsr @r2
mov r14,r4
mov.w @r13,r3
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fldi0 fr4
lds r3,fpul 	
float fpul,fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(0x02,r13),r0 	
mov r0,r3 ; r3 set to 0x34, r3 set to 0x34
lds r3,fpul 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(loc_8C0A7528,pc),r3 ; r3 set to 0x8C033674, r3 set to 0x8C033674
float fpul,fr3
fmov.s fr3,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
mov.w @(0x08,r13),r0 	
mov r0,r5 ; r5 set to 0x6C, r5 set to 0x6c
jsr @r3
mov r14,r4
mov.w @(0x08,r13),r0 	
add 0x64,r0 ; r0 set to 0xD0, r0 set to 0xD0

loc_8C0A7458:
mov r14,r4
mov.w r0,@(0x08,r13) 	
mov.l @r15,r5 ; r5 ??? bc r15 is ???, r5 ??? bc r15 is ???	
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r13
bra loc_8C0A76C0
mov.l @r15+,r14

loc_8C0A7468:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l r5,@r15
mov.b @(0x07,r14),r0 	
tst r0,r0
bf loc_8C0A74Ba
mov.b @(0x07,r14),r0 	
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov.w @(loc_8C0A751C,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bf loc_8C0A7496
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r14),r7
mov 0x00,r3 ; r3 set to 0x00
extu.b r7,r7
cmp/gt r7,r3
addc r3,r7
bra loc_8C0A74A8
shar r7

loc_8C0A7496:
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r14),r7
mov 0x00,r3 ; r3 set to 0x00
extu.b r7,r7
cmp/gt r7,r3
addc r3,r7
shar r7
neg r7,r7
add 0x10,r7

loc_8C0A74A8:
mov.l @(loc_8C0A7524,pc),r3 ; r3 set to 0x8C034F54, r3 set to 0x8C034F54
mov 0x0F,r2 ; r2 set to 0x0F, r2 set to 0x0f
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
and r2,r7
mov 0x03,r6 ; r6 set to 0x03, r6 set to 0x03
jsr @r3
mov r14,r4
bra loc_8C0A74C2
nop 	

loc_8C0A74BA:
mov.l @(loc_8C0A7528,pc),r3 ; r3 set to 0x8C033674
mov.w @(loc_8C0A751E,pc),r5 ; r5 set to 0x2Bc
jsr @r3
mov r14,r4

loc_8C0A74C2:
mov.l @r15,r5 ; r5 ??? bc r15 is ???	
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
bra loc_8C0A76C0
mov.l @r15+,r14

loc_8C0A74CE:
mov r4,r3
mov.l @(loc_8C0A752C,pc),r1 ; r1 set to 0x8C1572E8
mov.l r4,@-r15
mov.b @(0x06,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0A74E0:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x07,r14),r0 	
tst r0,r0
bf loc_8C0A7500
mov.b @(0x07,r14),r0 	
mov r14,r4
mov.l @(loc_8C0A7530,pc),r3 ; r3 set to 0x8C034E8c
mov 0x02,r6 ; r6 set to 0x02
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov 0x17,r5 ; r5 set to 0x17
lds.l @r15+,pr 	
jmp @r3
mov.l @r15+,r14

#align4
loc_8C0A7500:
#data 0x430BD30c
#data 0x600E64E3
#data 0x89044011
#data 0xE3009008
#data 0xE0030E34
#data 0x80E4

loc_8C0A7516:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0A751C:
#data 0x0130

loc_8C0A751E:
#data 0x02Bc
#data 0x0000012c

#align4
loc_8C0A7524:
#data bank03.loc_8c034F54

loc_8C0A7528:
#data bank03.loc_8c033674

loc_8C0A752C:
#data 0x8C1572E8

loc_8C0A7530:
#data bank03.loc_8c034e8c

loc_8C0A7534:
#data bank03.loc_8c034dee


loc_8C0A7538:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l r5,@r15
mov.b @(0x07,r14),r0 	
tst r0,r0
bf loc_8C0A7584
mov.b @(0x07,r14),r0 	
fldi0 fr4
add 0x01,r0
mov.w @(loc_8C0A7650,pc),r5 ; r5 set to 0x258
mov.b r0,@(0x07,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r14),r3
mov.l @(loc_8C0A7658,pc),r1 ; r1 set to 0x8C033674
neg r3,r3
add 0x20,r3
mov.b r3,@(r0,r14) 	
mov 0x1F,r3 ; r3 set to 0x1f
mov.b @(r0,r14),r2
and r3,r2
mov.b r2,@(r0,r14) 	
jsr @r1
mov r14,r4
mova @(loc_8C0A765C,pc),r0  ; r0 set to 0x8C0A765c
fmov.s @r0,fr3 ; r3 ??	
mov 0x6C,r0 ; r0 set to 0x6c
bra loc_8C0A75F4
fmov.s fr3,@(r0,r14) 	

loc_8C0A7584:
mov 0x5C,r1 ; r1 set to 0x5c
mov.l @(loc_8C0A7660,pc),r3 ; r3 set to 0x8C034DEe
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
mov.l @(loc_8C0A7664,pc),r2 ; r2 set to 0x8C03340c
jsr @r2
mov r14,r4
tst r0,r0
bf loc_8C0A75D8
mov 0x03,r0 ; r0 set to 0x03
mov.b r0,@(0x04,r14) 	
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0A75D8:
#data 0x63F2E038
#data 0x9038F3E6
#data 0xF235F236
#data 0xE0028B06
#data 0x80E4E400
#data 0x00096043
#data 0x80E780E6


loc_8C0A75F4:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0A75FC:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x07,r14),r0 	
tst r0,r0
bf loc_8C0A766c
mov.b @(0x07,r14),r0 	
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov.w @(loc_8C0A7654,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bf loc_8C0A7626
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r14),r7
mov 0x00,r3 ; r3 set to 0x00
extu.b r7,r7
cmp/gt r7,r3
addc r3,r7
bra loc_8C0A7638
shar r7

loc_8C0A7626:
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r14),r7
mov 0x00,r3 ; r3 set to 0x00
extu.b r7,r7
cmp/gt r7,r3
addc r3,r7
shar r7
neg r7,r7
add 0x10,r7

loc_8C0A7638:
mov.l @(loc_8C0A7668,pc),r3 ; r3 set to 0x8C034F54, r3 set to 0x8C034F54
mov 0x0F,r2 ; r2 set to 0x0F, r2 set to 0x0f
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
and r2,r7
mov 0x04,r6 ; r6 set to 0x04, r6 set to 0x04
jsr @r3
mov r14,r4
mov 0x14,r0 ; r0 set to 0x14, r0 set to 0x14
mov.w r0,@(0x1C,r14) 	
mov 0x07,r0 ; r0 set to 0x07, r0 set to 0x07
bra loc_8C0A76Ae
mov.w r0,@(0x1E,r14) 	

loc_8C0A7650:
#data 0x0258
#data 0x041c

loc_8C0A7654:
#data 0x0130
#data 0x0000

#align4
loc_8C0A7658:
#data bank03.loc_8c033674

loc_8C0A765C:
#data 0xBF4DB6Db

#align4
loc_8C0A7660:
#data bank03.loc_8c034dee

loc_8C0A7664:
#data bank03.loc_8c03340c

loc_8C0A7668:
#data bank03.loc_8c034F54

loc_8C0A766C:
#data 0x02EE904f
#data 0xF326E034
#data 0x85EFFE37
#data 0x890C2008
#data 0xE23485Ef
#data 0x32ECD125
#data 0x031CF228
#data 0xF32D435a
#data 0xF22AF230
#data 0x70FF85Ef
#data 0x81Ef

loc_8C0A7696:
#data 0x85Ee
#data 0x81EE70Ff
#data 0x600F7001
#data 0x8B042008
#data 0xE2009034
#data 0xE0030E24
#data 0x80E4


loc_8C0A76AE:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0A76B4:
mov.w @(loc_8C0A7710,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0A771C,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

#align4
loc_8C0A76C0:
#data 0x2FE69027
#data 0x2FD66E43
#data 0x03EC4F22
#data 0x8F0E2338
#data 0xD313ED02
#data 0x64E3430b
#data 0x02EC901c
#data 0x89122228
#data 0xE30104Ec
#data 0x8B022348
#data 0x2148E110
#data 0x8905

loc_8C0A76EE:
#data 0x60D3
#data 0x80E40009
#data 0xA004E001
#data 0x80E6

loc_8C0A76FA:
#data 0x60D3
#data 0x80E40009
#data 0x80E6

loc_8C0A7702:
#data 0xE000
#data 0x80E7

loc_8C0A7706:
#data 0x4F26
#data 0x000B6DF6
#data 0x01B06EF6

loc_8C0A7710:
#data 0x012c
#data 0x019f
#data 0x0000019e

#align4
loc_8C0A7718:
#data 0x8C1572Ae

loc_8C0A771C:
#data bank04.loc_8c0450C0

loc_8C0A7720:
#data bank04.loc_8c045748
#data 0x7FF44F22
#data 0x60532F42
#data 0x80F80009
#data 0x00096063
#data 0xE501D340
#data 0xE60080F4
#data 0x6463430b
#data 0x8D122008
#data 0x92706403
#data 0xE120E026
#data 0x314CD33b
#data 0x04251434
#data 0x63F2E221
#data 0x1436324c
#data 0x840160F2
#data 0x84F88041
#data 0x84F42100
#data 0x7F0C2200
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0A7772:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0A7840,pc),r0 ; r0 set to 0x8C157314
extu.b r3,r3
mov.l @(0x18,r14),r5
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0A7788:
mov r4,r3
mov.l @(loc_8C0A7844,pc),r1 ; r1 set to 0x8C157318
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0A779A:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.l r12,@-r15
mov 0x00,r12 ; r12 set to 0x00
mov.w @(loc_8C0A782C,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0A782C,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0A7848,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0A782E,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0A7830,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0A7832,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0A784C,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov.b r2,@(r0,r14) 	
mov 0x10,r2 ; r2 set to 0x10
mov.w @(loc_8C0A7830,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0A7834,pc),r0 ; r0 set to 0x13f
mov.b r2,@(r0,r14) 	
add 0xFF,r0 ; r0 set to 0x13e
mov.b r2,@(r0,r14) 	
add 0xFF,r0 ; r0 set to 0x13d
mov.b r2,@(r0,r14) 	
add 0xFF,r0 ; r0 set to 0x13c
mov.b r2,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r5
extu.b r5,r5
tst r4,r5
bt loc_8C0A7850
mov.w @(loc_8C0A7836,pc),r0 ; r0 set to 0x1A1
mov 0x3B,r2 ; r2 set to 0x3b
bra loc_8C0A7856
mov.b r2,@(r0,r14) 	
#data 0x3101

loc_8C0A782C:
#data 0x00Dc

loc_8C0A782E:
#data 0x00C0

loc_8C0A7830:
#data 0x012c

loc_8C0A7832:
#data 0x01A3

loc_8C0A7834:
#data 0x013f

loc_8C0A7836:
#data 0x01A1

#align4
loc_8C0A7838:
#data bank04.loc_8c044F12

loc_8C0A783C:
#data loc_8c0a7772

loc_8C0A7840:
#data 0x8C157314

loc_8C0A7844:
#data 0x8C157318

loc_8C0A7848:
#data bank12.loc_8c129560

loc_8C0A784C:
#data bank12.loc_8c1294C8

loc_8C0A7850:
#data 0xE33C90A6
#data 0x0E34

loc_8C0A7856:
#data 0x90A4
#data 0xD353E444
#data 0x70F20EC5
#data 0x70260EC4
#data 0x84E20EC6
#data 0xE3186232
#data 0x4000600c
#data 0x012D727c
#data 0x02157101
#data 0x0E449094
#data 0x0E447001
#data 0x0EC57093
#data 0x0E34E022
#data 0x02DD908d
#data 0x89082228
#data 0x02ECE022
#data 0x622BE31f
#data 0x0E247220
#data 0x223902Ec
#data 0x0E24

loc_8C0A78A2:
#data 0xE034
#data 0xF3D6D441
#data 0xE021FE37
#data 0x633C03Ec
#data 0x43004300
#data 0x8531334c
#data 0x435A6303
#data 0xF2D6E038
#data 0xF32DC73b
#data 0xE038F008
#data 0xFE27F23e
#data 0xF3D6E03c
#data 0xE021FE37
#data 0x600C00Ec
#data 0x40004000
#data 0x435A034d
#data 0xC734F32d
#data 0xE05CF208
#data 0xFE37F322
#data 0x03DD905b
#data 0x89032338
#data 0xF3E6E05c
#data 0xFE37F34d

#align4
loc_8C0A78FC:
#data 0xD32EE15c
#data 0xE03431Ec
#data 0xF2E6F318
#data 0xE601E517
#data 0xFE27F230
#data 0x64E3430b
#data 0x65D34F26
#data 0x6CF664E3
#data 0x6EF66DF6


loc_8C0A7920:
mov 0x24,r0 ; r0 set to 0x24
mov.l r14,@-r15
mov.b @(r0,r5),r3
mov r4,r14
mov.l @(loc_8C0A79BC,pc),r1 ; r1 set to 0x8C157328
mov r14,r4
mov.b r3,@(r0,r14) 	
mov.b @(0x05,r14),r0 	
extu.b r0,r0 ; r0 set to 0x24
shll2 r0 ; r0 set to 0x90
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0A793A:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0A79C0,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt loc_8C0A799a
mov.b @(0x05,r14),r0 	
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov.w @(loc_8C0A79A6,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???	
tst r3,r3
bf loc_8C0A7968
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r14),r7
mov 0x00,r3 ; r3 set to 0x00
extu.b r7,r7
cmp/gt r7,r3
addc r3,r7
bra loc_8C0A797a
shar r7

#align4
loc_8C0A7968:
#data 0x07ECE022
#data 0x677CE300
#data 0x373E3377
#data 0x677B4721
#data 0x7710

loc_8C0A797A:
#data 0xD312
#data 0xE517E20f
#data 0xE6032729
#data 0x64E3430b
#data 0x420BD20f
#data 0xE4070009
#data 0x74042409
#data 0x00096043
#data 0x81Ee


loc_8C0A799A:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x01AC01A1
#data 0x019c

loc_8C0A79A6:
#data 0x0130
#data 0x8C2896B0

#align4
loc_8C0A79AC:
#data 0x8C1572F4
#data 0x40092492
#data 0x3FD55555

#align4
loc_8C0A79B8:
#data bank03.loc_8c034e8c

loc_8C0A79BC:
#data 0x8C157328

loc_8C0A79C0:
#data bank03.loc_8c034dee

loc_8C0A79C4:
#data bank03.loc_8c034F54

loc_8C0A79C8:
#data bank03.loc_8c03319e

loc_8C0A79CC:
#data 0x4F222FE6
#data 0x6E437FFc
#data 0x85EE2F52
#data 0x81EE70Ff
#data 0x600F7001
#data 0x8B0F2008
#data 0xE52184E5
#data 0x7001D34a
#data 0x430B80E5
#data 0xE05C64F2
#data 0xFE47F48d
#data 0xFE47E060
#data 0xFE47E068
#data 0xFE47E06c

#align4
loc_8C0A7A04:
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0A7A0C:
#data 0x4F222FE6
#data 0xD3417FFc
#data 0x2F526E43
#data 0x64E3430b
#data 0x89042008
#data 0x430BD33e
#data 0x200864E3
#data 0x8B05

loc_8C0A7A2A:
#data 0xE003
#data 0x7F0480E4
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0A7A36:
#data 0xE038
#data 0xF3E663F2
#data 0xF2369066
#data 0x8B08F235
#data 0x80E4E002
#data 0x80E6E000
#data 0x7F0480E7
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0A7A56:
#data 0xD332
#data 0x430B9559
#data 0x65F264E3
#data 0x7F0464E3
#data 0xA1034F26
#data 0x7F046EF6
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0A7A72:
mov r4,r3
mov.l @(loc_8C0A7B24,pc),r1 ; r1 set to 0x8C157334
mov.l r4,@-r15
mov.b @(0x06,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0A7A84:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x07,r14),r0 	
tst r0,r0
bf loc_8C0A7AA4
mov.b @(0x07,r14),r0 	
mov r14,r4
mov.l @(loc_8C0A7B28,pc),r3 ; r3 set to 0x8C034E8c
mov 0x02,r6 ; r6 set to 0x02
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov 0x17,r5 ; r5 set to 0x17
lds.l @r15+,pr 	
jmp @r3
mov.l @r15+,r14

#align4
loc_8C0A7AA4:
#data 0x430BD321
#data 0x600E64E3
#data 0x89044011
#data 0xE300902e
#data 0xE0030E34
#data 0x80E4

loc_8C0A7ABA:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0A7AC0:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l r5,@r15
mov.b @(0x07,r14),r0 	
tst r0,r0
bf loc_8C0A7B34
mov.b @(0x07,r14),r0 	
fldi0 fr4
add 0x01,r0
mov.w @(loc_8C0A7B12,pc),r5 ; r5 set to 0x258
mov.b r0,@(0x07,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r14),r3
mov.l @(loc_8C0A7B20,pc),r1 ; r1 set to 0x8C033674
neg r3,r3
add 0x20,r3
mov.b r3,@(r0,r14) 	
mov 0x1F,r3 ; r3 set to 0x1f
mov.b @(r0,r14),r2
and r3,r2
mov.b r2,@(r0,r14) 	
jsr @r1
mov r14,r4
mova @(loc_8C0A7B30,pc),r0  ; r0 set to 0x8C0A7B30
fmov.s @r0,fr3 ; r3 ??	
mov 0x6C,r0 ; r0 set to 0x6c
bra loc_8C0A7BA4
fmov.s fr3,@(r0,r14) 	
#data 0x03E8041c
#data 0x012c

loc_8C0A7B12:
#data 0x0258

#align4
loc_8C0A7B14:
#data bank04.loc_8c042008

loc_8C0A7B18:
#data bank03.loc_8c03340c

loc_8C0A7B1C:
#data bank03.loc_8c0335B0

loc_8C0A7B20:
#data bank03.loc_8c033674

loc_8C0A7B24:
#data 0x8C157334

loc_8C0A7B28:
#data bank03.loc_8c034e8c

loc_8C0A7B2C:
#data bank03.loc_8c034dee

loc_8C0A7B30:
#data 0xBF4DB6Db


loc_8C0A7B34:
mov 0x5C,r1 ; r1 set to 0x5c
mov.l @(loc_8C0A7C5C,pc),r3 ; r3 set to 0x8C034DEe
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
mov.l @(loc_8C0A7C60,pc),r2 ; r2 set to 0x8C03340c
jsr @r2
mov r14,r4
tst r0,r0
bf loc_8C0A7B88
mov 0x03,r0 ; r0 set to 0x03
mov.b r0,@(0x04,r14) 	
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0A7B88:
#data 0x63F2E038
#data 0x9061F3E6
#data 0xF235F236
#data 0xE0028B06
#data 0x80E4E400
#data 0x00096043
#data 0x80E780E6


loc_8C0A7BA4:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0A7BAC:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x07,r14),r0 	
tst r0,r0
bf loc_8C0A7C00
mov.b @(0x07,r14),r0 	
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov.w @(loc_8C0A7C56,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bf loc_8C0A7BD6
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r14),r7
mov 0x00,r3 ; r3 set to 0x00
extu.b r7,r7
cmp/gt r7,r3
addc r3,r7
bra loc_8C0A7BE8
shar r7

loc_8C0A7BD6:
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r14),r7
mov 0x00,r3 ; r3 set to 0x00
extu.b r7,r7
cmp/gt r7,r3
addc r3,r7
shar r7
neg r7,r7
add 0x10,r7

loc_8C0A7BE8:
mov.l @(loc_8C0A7C64,pc),r3 ; r3 set to 0x8C034F54, r3 set to 0x8C034F54
mov 0x0F,r2 ; r2 set to 0x0F, r2 set to 0x0f
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
and r2,r7
mov 0x04,r6 ; r6 set to 0x04, r6 set to 0x04
jsr @r3
mov r14,r4
mov 0x14,r0 ; r0 set to 0x14, r0 set to 0x14
mov.w r0,@(0x1C,r14) 	
mov 0x07,r0 ; r0 set to 0x07, r0 set to 0x07
bra loc_8C0A7C42
mov.w r0,@(0x1E,r14) 	

#align4
loc_8C0A7C00:
#data 0x02EE902a
#data 0xF326E034
#data 0x85EFFE37
#data 0x890C2008
#data 0xE23485Ef
#data 0x32ECD114
#data 0x031CF228
#data 0xF32D435a
#data 0xF22AF230
#data 0x70FF85Ef
#data 0x81Ef

loc_8C0A7C2A:
#data 0x85Ee
#data 0x81EE70Ff
#data 0x600F7001
#data 0x8B042008
#data 0xE200900f
#data 0xE0030E24
#data 0x80E4


loc_8C0A7C42:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0A7C48:
mov.w @(loc_8C0A7C5A,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0A7C6C,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x041c

loc_8C0A7C56:
#data 0x0130
#data 0x01B0

loc_8C0A7C5A:
#data 0x012c

#align4
loc_8C0A7C5C:
#data bank03.loc_8c034dee

loc_8C0A7C60:
#data bank03.loc_8c03340c

loc_8C0A7C64:
#data bank03.loc_8c034F54

loc_8C0A7C68:
#data 0x8C15730c

loc_8C0A7C6C:
#data bank04.loc_8c0450C0

loc_8C0A7C70:
#data 0x2FE69025
#data 0x2FD66E43
#data 0x03EC4F22
#data 0x8F0E2338
#data 0xD310ED02
#data 0x64E3430b
#data 0x02EC901a
#data 0x89122228
#data 0xE30104Ec
#data 0x8B022348
#data 0x2148E110
#data 0x8905

loc_8C0A7C9E:
#data 0x60D3
#data 0x80E40009
#data 0xA004E001
#data 0x80E6

loc_8C0A7CAA:
#data 0x60D3
#data 0x80E40009
#data 0x80E6

loc_8C0A7CB2:
#data 0xE000
#data 0x80E7

loc_8C0A7CB6:
#data 0x4F26
#data 0x000B6DF6
#data 0x019F6EF6
#data 0x0000019e

#align4
loc_8C0A7CC4:
#data bank04.loc_8c045748
#data 0x7FF44F22
#data 0x60532F42
#data 0x80F80009
#data 0x00096063
#data 0xE501D330
#data 0xE60080F4
#data 0x6463430b
#data 0x8D122008
#data 0x92566403
#data 0xE120E026
#data 0x314CD32b
#data 0x04251434
#data 0x63F2E221
#data 0x1436324c
#data 0x840160F2
#data 0x84F88041
#data 0x84F42100
#data 0x7F0C2200
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0A7D16:
#data 0x2FE6
#data 0x7FF44F22
#data 0x60536E43
#data 0x80F80009
#data 0x00096063
#data 0xD31CE601
#data 0x656380F4
#data 0x430B2F70
#data 0x2008E400
#data 0x64038D15
#data 0xE026922d
#data 0xE120D317
#data 0x1434314c
#data 0xE2210425
#data 0x324C53E6
#data 0x14E51436
#data 0x804184E1
#data 0x210084F8
#data 0x220084F4
#data 0x63F0E023
#data 0x0434

loc_8C0A7D66:
#data 0x6043
#data 0x7F0C0009
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0A7D72:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0A7DA4,pc),r0 ; r0 set to 0x8C157348
extu.b r3,r3
mov.l @(0x18,r14),r5
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0A7D88:
mov r4,r3
mov.l @(loc_8C0A7DA8,pc),r1 ; r1 set to 0x8C157354
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x3300

#align4
loc_8C0A7D9C:
#data bank04.loc_8c044F12

loc_8C0A7DA0:
#data loc_8c0a7D72

loc_8C0A7DA4:
#data 0x8C157348

loc_8C0A7DA8:
#data 0x8C157354

loc_8C0A7DAC:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x918D2FC6
#data 0x84E44F22
#data 0x928931Ec
#data 0xD3487001
#data 0x908680E4
#data 0x32DC430b
#data 0xEC019084
#data 0x715061E3
#data 0x84D20EC4
#data 0x84D180E2
#data 0xE05080E1
#data 0xFE37F3D6
#data 0xF3D6E054
#data 0x9076FE37
#data 0x0E3403Dc
#data 0x02DC7001
#data 0xE0300E24
#data 0x62D303Dc
#data 0x0E347250
#data 0x430BD339
#data 0xE024E00c
#data 0xE3FE02Dc
#data 0x0E24E400
#data 0x0EC49062
#data 0x0E34E031
#data 0xD334905f
#data 0x70FE02Ec
#data 0x0E247235
#data 0x0E45700b
#data 0x0E4470F2
#data 0x0E467026
#data 0x84E2E442
#data 0x600C6232
#data 0x727C4000
#data 0x7101012d
#data 0x904B0215
#data 0xD22A0E44
#data 0xE5177001
#data 0xE6050E44
#data 0x64E3420b
#data 0x000960C3
#data 0xE523D326
#data 0x430B81Ee
#data 0x4F2664E3
#data 0x64E365D3
#data 0x6DF66CF6
#data 0x6EF6

loc_8C0A7E6E:
#data 0xE024
#data 0x035C2FE6
#data 0x0E346E43
#data 0x005C9031
#data 0x8815600c
#data 0x84558B02
#data 0x89052008

#align4
loc_8C0A7E88:
#data 0x64E384E4
#data 0x80E47001
#data 0x6EF6A1F4

#align4
loc_8C0A7E94:
#data 0xD619E034
#data 0xFE37F356
#data 0xF356E038
#data 0xE03CFE37
#data 0xFE37F356
#data 0xF408C713
#data 0x03ED9018
#data 0x8F252338
#data 0xE3216463
#data 0x33ECF04c
#data 0xE0346330
#data 0x633CF2E6
#data 0x43004300
#data 0x6341343c
#data 0xF32D435a
#data 0xF23EA024
#data 0x00C000Dc
#data 0x01A3012c
#data 0x0159019c
#data 0x00000130

#align4
loc_8C0A7EE4:
#data bank12.loc_8c129560

loc_8C0A7EE8:
#data bank12.loc_8c1294C8
#data 0x8C2896B0

#align4
loc_8C0A7EF0:
#data bank03.loc_8c034e8c

loc_8C0A7EF4:
#data bank04.loc_8c042008
#data 0x3FD55555

#align4
loc_8C0A7EFC:
#data 0x8C157340

loc_8C0A7F00:
#data 0x32ECE221
#data 0xE0346220
#data 0x622CF2E6
#data 0x42004200
#data 0x6341342c
#data 0xF32D435a
#data 0xF231F342

#align4
loc_8C0A7F1C:
#data 0xFE27E321
#data 0x62E333Ec
#data 0xD13AE038
#data 0x64E3320c
#data 0x63302F26
#data 0x4300633c
#data 0x363C4300
#data 0x63038561
#data 0x63F6435a
#data 0xF008C732
#data 0xF238F32d
#data 0xF32AF23e
#data 0x600C84E5
#data 0x031E4008
#data 0x6EF6432b


loc_8C0A7F58:
sts.l pr,@-r15
add 0xFC,r15
mov 0x00,r7 ; r7 set to 0x00
mov.l r4,@r15
mov r7,r6 ; r6 set to 0x00
bsr loc_8C0A7D16
mov 0x02,r5 ; r5 set to 0x02
mov.l @r15,r2
mov.b @(0x05,r2),r0 	
add 0x01,r0
mov.b r0,@(0x05,r2) 	
add 0x04,r15
lds.l @r15+,pr 	
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0A7F76:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.w @(loc_8C0A8008,pc),r3 ; r3 set to 0x2A4
mov r4,r14
mov.l @(loc_8C0A8014,pc),r2 ; r2 set to 0x8C034DEe
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
and r0,r6 ; r6 ??? bc r0 is ???	
and r0,r7 ; r7 ??? bc r0 is ???	
bsr loc_8C0A7D16
mov r14,r4
mov.l @r15,r2 ; r2 ??? bc r15 is ???	
mov.b @r2,r3
tst r3,r3
bt loc_8C0A7FBe
mov.b @(0x05,r14),r0 	
mov 0x17,r5 ; r5 set to 0x17
mov r14,r4
mov 0x06,r6 ; r6 set to 0x06
add 0x01,r0
mov.b r0,@(0x05,r14) 	
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0A8018,pc),r3 ; r3 set to 0x8C034E8c
jmp @r3
mov.l @r15+,r14

loc_8C0A7FBE:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0A7FC6:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0A8014,pc),r3 ; r3 set to 0x8C034DEe
mov r4,r14
mov.l r5,@r15
jsr @r3
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt loc_8C0A7FEe
mov.b @(0x04,r14),r0 	
mov r14,r4
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.l @r15,r5
add 0x04,r15
lds.l @r15+,pr 	
bra loc_8C0A827c
mov.l @r15+,r14

loc_8C0A7FEE:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0A7FF6:
mov r4,r3
mov.l @(loc_8C0A801C,pc),r1 ; r1 set to 0x8C157370
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0A8008:
#data 0x02A4
#data 0x0000
#data 0x40092492

#align4
loc_8C0A8010:
#data 0x8C157364

loc_8C0A8014:
#data bank03.loc_8c034dee

loc_8C0A8018:
#data bank03.loc_8c034e8c

loc_8C0A801C:
#data 0x8C157370


loc_8C0A8020:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.w @(loc_8C0A814E,pc),r1 ; r1 set to 0xDc
mov.w @(loc_8C0A814E,pc),r2 ; r2 set to 0xDc
mov.l @(loc_8C0A815C,pc),r3 ; r3 set to 0x8C129560
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l r5,@r15
mov.b @(0x04,r14),r0 	
mov.l @(0x14,r14),r4
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0A8150,pc),r0 ; r0 set to 0xC0
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C0A8152,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0A8154,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0A8160,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov 0xFE,r3 ; r3 set to 0xFFFFFFFe
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0A8152,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov 0x00,r5 ; r5 set to 0x00
mov.w @(loc_8C0A8154,pc),r0 ; r0 set to 0x1A3
mov.l @(loc_8C0A8164,pc),r3 ; r3 set to 0x8C2896B0
mov.b @(r0,r14),r2
add 0xFE,r0 ; r0 set to 0x1A1
add 0x30,r2
mov.b r2,@(r0,r14) 	
add 0x0B,r0 ; r0 set to 0x1Ac
mov.w r5,@(r0,r14) 	
add 0xF2,r0 ; r0 set to 0x19e
mov.b r5,@(r0,r14) 	
add 0x26,r0 ; r0 set to 0x1C4
mov.l r5,@(r0,r14) 	
mov.b @(0x02,r14),r0 	
mov.l @r3,r2
extu.b r0,r0 ; r0 set to 0xC4
shll r0 ; r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2) 	
mov 0x23,r0 ; r0 set to 0x23
mov.b @(r0,r14),r2
tst r2,r2
bf/s loc_8C0A80C6
mov 0x42,r5 ; r5 set to 0x42
mov.w @(loc_8C0A8156,pc),r0 ; r0 set to 0x19c
bra loc_8C0A80Cc
mov.b r5,@(r0,r14) 	

loc_8C0A80C6:
mov.w @(loc_8C0A8156,pc),r0 ; r0 set to 0x19c
mov 0x60,r1 ; r1 set to 0x60
mov.b r1,@(r0,r14) 	

loc_8C0A80CC:
mov.w @(loc_8C0A8158,pc),r0 ; r0 set to 0x19D, r0 set to 0x19d
mov 0x0D,r3 ; r3 set to 0x0D, r3 set to 0x0d
mov.b r5,@(r0,r14) 	
add 0xA2,r0 ; r0 set to 0x13F, r0 set to 0x13f
mov.b r3,@(r0,r14) 	
add 0xFF,r0 ; r0 set to 0x13E, r0 set to 0x13e
mov.b r3,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???, r3 ??? bc r4 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r4),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3C, r0 set to 0x3c
fmov.s @(r0,r4),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0A815A,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bf loc_8C0A80Fe
mov.l @(loc_8C0A8168,pc),r1 ; r1 set to 0xC2555555, r1 set to 0xC2555555
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
lds r1,fpul 	
bra loc_8C0A8106
fsts fpul,fr3

loc_8C0A80FE:
mov.l @(loc_8C0A816C,pc),r1 ; r1 set to 0x42555555
mov 0x34,r0 ; r0 set to 0x34
lds r1,fpul 	
fsts fpul,fr3

loc_8C0A8106:
fmov.s @(r0,r14),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov.w @(loc_8C0A815A,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bf loc_8C0A811a
mova @(loc_8C0A8170,pc),r0  ; r0 set to 0x8C0A8170, r0 set to 0x8C0A8170
bra loc_8C0A811e
fmov.s @r0,fr3

loc_8C0A811A:
mova @(loc_8C0A8174,pc),r0  ; r0 init to 0x8C0A8174
fmov.s @r0,fr3

loc_8C0A811E:
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
mov.l @(loc_8C0A8178,pc),r13 ; r13 set to 0x8C034E8C, r13 set to 0x8C034E8c
fmov.s fr3,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fldi0 fr3
fmov.s fr3,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???	
extu.b r0,r0
cmp/eq 0x02,r0 	
bf loc_8C0A8140
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
mov 0x00,r6 ; r6 set to 0x00, r6 set to 0x00
jsr @r13
mov r14,r4
bra loc_8C0A8182
nop 	

loc_8C0A8140:
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3
tst r3,r3
bf/s loc_8C0A817c
mov 0x17,r5 ; r5 set to 0x17
bra loc_8C0A817e
mov 0x02,r6

loc_8C0A814E:
#data 0x00Dc

loc_8C0A8150:
#data 0x00C0

loc_8C0A8152:
#data 0x012c

loc_8C0A8154:
#data 0x01A3

loc_8C0A8156:
#data 0x019c

loc_8C0A8158:
#data 0x019d

loc_8C0A815A:
#data 0x0130

#align4
loc_8C0A815C:
#data bank12.loc_8c129560

loc_8C0A8160:
#data bank12.loc_8c1294C8

loc_8C0A8164:
#data 0x8C2896B0

#align4
loc_8C0A8168:
#data 0xC2555555

#align4
loc_8C0A816C:
#data 0x42555555

#align4
loc_8C0A8170:
#data 0xC2480000

#align4
loc_8C0A8174:
#data 0x42480000

#align4
loc_8C0A8178:
#data bank03.loc_8c034e8c

loc_8C0A817C:
#data 0xE603

loc_8C0A817E:
#data 0x4D0b
#data 0x64E3

loc_8C0A8182:
#data 0x65F2
#data 0x7F0464E3
#data 0x6DF64F26
#data 0x6EF6

loc_8C0A818E:
#data 0xE024
#data 0x035C2FE6
#data 0x0E346E43
#data 0x005C9085
#data 0x8815600c
#data 0x84558B02
#data 0x89052008

#align4
loc_8C0A81A8:
#data 0x64E384E4
#data 0x80E47001
#data 0x6EF6A06d

#align4
loc_8C0A81B4:
#data 0x64E384E5
#data 0x600CD13c
#data 0x031E4008
#data 0x6EF6432b


loc_8C0A81C4:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov 0x68,r1 ; r1 set to 0x68
mov r4,r14
mov 0x5C,r0 ; r0 set to 0x5c
mov.w @(loc_8C0A82A8,pc),r2 ; r2 set to 0x2A4
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
bsr loc_8C0A82C8
mov r14,r4
mov.l @(loc_8C0A82B0,pc),r2 ; r2 set to 0x8C034DEe
jsr @r2
mov r14,r4
mov.l @(loc_8C0A82B4,pc),r3 ; r3 set to 0x8C045748
jsr @r3
mov r14,r4
mov.l @(0x04,r15),r2 ; r2 ??? bc r15 is ???	
mov.b @r2,r3 ; r3 ??? bc r2 is ???	
tst r3,r3
bt loc_8C0A8222
mov.b @(0x05,r14),r0 	
add 0x01,r0 ; r0 set to 0x5d
mov.b r0,@(0x05,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
extu.b r0,r0
cmp/eq 0x02,r0 	
bf/s loc_8C0A8214
mov 0x17,r5 ; r5 set to 0x17
bra loc_8C0A8216
mov 0x01,r6

loc_8C0A8214:
mov 0x04,r6 ; r6 set to 0x04

loc_8C0A8216:
mov r14,r4
add 0x08,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0A82B8,pc),r2 ; r2 set to 0x8C034E8C, r2 set to 0x8C034E8c
jmp @r2
mov.l @r15+,r14

loc_8C0A8222:
mov.l @(loc_8C0A82BC,pc),r3 ; r3 set to 0x8C03340c
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8C0A823e
mov.b @(0x04,r14),r0 	
mov r14,r4
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.l @r15,r5
add 0x08,r15
lds.l @r15+,pr 	
bra loc_8C0A828e
mov.l @r15+,r14

loc_8C0A823E:
add 0x08,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0A8246:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l r5,@r15
mov r4,r14
mov.l @(0x14,r14),r5
bsr loc_8C0A82C8
mov r14,r4
mov.l @(loc_8C0A82B0,pc),r2 ; r2 set to 0x8C034DEe
jsr @r2
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt loc_8C0A8274
mov.b @(0x04,r14),r0 	
mov r14,r4
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.l @r15,r5
add 0x04,r15
lds.l @r15+,pr 	
bra loc_8C0A828e
mov.l @r15+,r14

loc_8C0A8274:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0A827C:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0A82AA,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0A82C0,pc),r3 ; r3 set to 0x8C042008
jmp @r3
mov 0x2B,r5

loc_8C0A828E:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0A82AA,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0A829C:
mov.l @(loc_8C0A82C4,pc),r3 ; r3 set to 0x8C0450C0
mov 0x00,r2 ; r2 set to 0x00
mov.w @(loc_8C0A82AA,pc),r0 ; r0 set to 0x12c
jmp @r3
mov.b r2,@(r0,r4) 	
#data 0x0159

loc_8C0A82A8:
#data 0x02A4

loc_8C0A82AA:
#data 0x012c

#align4
loc_8C0A82AC:
#data 0x8C157380

loc_8C0A82B0:
#data bank03.loc_8c034dee

loc_8C0A82B4:
#data bank04.loc_8c045748

loc_8C0A82B8:
#data bank03.loc_8c034e8c

loc_8C0A82BC:
#data bank03.loc_8c03340c

loc_8C0A82C0:
#data bank04.loc_8c042008

loc_8C0A82C4:
#data bank04.loc_8c0450C0


loc_8C0A82C8:
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x3C,r0 ; r0 set to 0x3c
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
extu.b r0,r0
cmp/eq 0x02,r0 	
bf loc_8C0A8306
mov.w @(loc_8C0A8336,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r2
tst r2,r2
bf loc_8C0A82F6
mov.l @(loc_8C0A8338,pc),r1 ; r1 set to 0xC1D55555
mov 0x34,r0 ; r0 set to 0x34
lds r1,fpul 	
bra loc_8C0A82Fe
fsts fpul,fr3

loc_8C0A82F6:
mov.l @(loc_8C0A833C,pc),r1 ; r1 set to 0x41D55555
mov 0x34,r0 ; r0 set to 0x34
lds r1,fpul 	
fsts fpul,fr3

loc_8C0A82FE:
fmov.s @(r0,r4),fr2
fadd fr3,fr2
bra loc_8C0A8326
fmov.s fr2,@(r0,r4) 	

loc_8C0A8306:
mov.w @(loc_8C0A8336,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r2
tst r2,r2
bf loc_8C0A8318
mov.l @(loc_8C0A8340,pc),r1 ; r1 set to 0xC2555555
mov 0x34,r0 ; r0 set to 0x34
lds r1,fpul 	
bra loc_8C0A8320
fsts fpul,fr3

loc_8C0A8318:
mov.l @(loc_8C0A8344,pc),r1 ; r1 set to 0x42555555
mov 0x34,r0 ; r0 set to 0x34
lds r1,fpul 	
fsts fpul,fr3

loc_8C0A8320:
fmov.s @(r0,r4),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	

loc_8C0A8326:
mov 0x5C,r1 ; r1 set to 0x5C, r1 set to 0x5C, r1 set to 0x5c
add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???, r1 ??? bc r4 is ???	
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34, r0 set to 0x34
fmov.s @r1,fr3
fmov.s @(r0,r4),fr2
fadd fr3,fr2
rts 	
fmov.s fr2,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0A8336:
#data 0x0130

#align4
loc_8C0A8338:
#data 0xC1D55555

#align4
loc_8C0A833C:
#data 0x41D55555

#align4
loc_8C0A8340:
#data 0xC2555555

#align4
loc_8C0A8344:
#data 0x42555555
#data 0x7FF44F22
#data 0x60532F42
#data 0x80F80009
#data 0x00096063
#data 0xE501D31e
#data 0xE60080F4
#data 0x6463430b
#data 0x8D122008
#data 0x92316403
#data 0xE120E026
#data 0x314CD319
#data 0x04251434
#data 0x63F2E221
#data 0x1436324c
#data 0x840160F2
#data 0x84F88041
#data 0x84F42100
#data 0x7F0C2200
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0A8396:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0A83D2,pc),r0 ; r0 set to 0x159
mov.l @(0x18,r14),r5
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x15,r0 	
bt loc_8C0A83Ac
mov r14,r4
bra loc_8C0A8588
mov.l @r15+,r14

loc_8C0A83AC:
mov 0x20,r0 ; r0 set to 0x20
mov r14,r4
mov.b @(r0,r14),r3
mov.l @(loc_8C0A83DC,pc),r0 ; r0 set to 0x8C15739c
extu.b r3,r3
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0A83BE:
mov r4,r3
mov.l @(loc_8C0A83E0,pc),r1 ; r1 set to 0x8C1573A0
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x3301

loc_8C0A83D2:
#data 0x0159

#align4
loc_8C0A83D4:
#data bank04.loc_8c044F12

loc_8C0A83D8:
#data loc_8c0a8396

loc_8C0A83DC:
#data 0x8C15739c

loc_8C0A83E0:
#data 0x8C1573A0

loc_8C0A83E4:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x4F2291Af
#data 0x31EC84E4
#data 0x700192Ab
#data 0x80E4D358
#data 0x430B90A8
#data 0x90A632Dc
#data 0x61E3E401
#data 0x0E447150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC9098
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD34A0E34
#data 0xE00C430b
#data 0x02DCE024
#data 0x90860E24
#data 0xE0310E44
#data 0xE03C0E44
#data 0xE400F3D6
#data 0xE021FE37
#data 0xD04303Ec
#data 0x023C633c
#data 0xD342907b
#data 0x700B0E24
#data 0x70F20E45
#data 0x70260E44
#data 0x84E20E46
#data 0x600C6232
#data 0x727C4000
#data 0x7101012d
#data 0xE4420215
#data 0xE517906a
#data 0x70010E44
#data 0xE0210E44
#data 0x906106Ec
#data 0x02DC666c
#data 0x622CD035
#data 0x362C4208
#data 0x066CD234
#data 0x64E3420b
#data 0x00ECE021
#data 0xC802600c
#data 0x65D38D05
#data 0xE3019053
#data 0x223A02Ed
#data 0x0E25

loc_8C0A84BA:
#data 0x4F26
#data 0x6DF664E3
#data 0x6EF6


loc_8C0A84C2:
mov r4,r3
mov.l @(loc_8C0A8574,pc),r1 ; r1 set to 0x8C1573B0
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0A84D4:
mov.l r14,@-r15
mov 0x24,r0 ; r0 set to 0x24
mov.l r13,@-r15
mov r5,r13
mov r4,r14
sts.l pr,@-r15
mov.b @(r0,r13),r3
mov.b r3,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr3
mov r14,r3
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
add r0,r3
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov.l r3,@-r15
mov 0x21,r3 ; r3 set to 0x21
add r14,r3 ; r3 ??? bc r14 is ???	
mov.l @(loc_8C0A8578,pc),r0 ; r0 set to 0x8C157388
mov.b @r3,r3
extu.b r3,r3
shll r3
mov.w @(r0,r3),r2
mova @(loc_8C0A857C,pc),r0  ; r0 set to 0x8C0A857c
fmov.s @r0,fr0 ; r0 ??	
lds r2,fpul 	
mov.l @r15+,r2
float fpul,fr3
fmov.s @r2,fr2
fmac fr0,fr3,fr2
fmov.s fr2,@r2
mov.l @(loc_8C0A8580,pc),r3 ; r3 set to 0x8C045748
jsr @r3
mov r14,r4
mov.l @(loc_8C0A8584,pc),r2 ; r2 set to 0x8C034DEe
jsr @r2
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt loc_8C0A8538
mov.b @(0x04,r14),r0 	
mov r13,r5
mov r14,r4
add 0x01,r0
mov.b r0,@(0x04,r14) 	
lds.l @r15+,pr 	
mov.l @r15+,r13
bra loc_8C0A8540
mov.l @r15+,r14

loc_8C0A8538:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0A8540:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0A8552,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------
#data 0x00Dc
#data 0x00C0

loc_8C0A8552:
#data 0x012c
#data 0x01A101A3
#data 0x0130019c

#align4
loc_8C0A855C:
#data bank12.loc_8c129560

loc_8C0A8560:
#data bank12.loc_8c1294C8

loc_8C0A8564:
#data 0x8C157398
#data 0x8C2896B0

#align4
loc_8C0A856C:
#data 0x8C157390

loc_8C0A8570:
#data bank03.loc_8c034e8c

loc_8C0A8574:
#data 0x8C1573B0

loc_8C0A8578:
#data 0x8C157388

loc_8C0A857C:
#data 0x40092492

#align4
loc_8C0A8580:
#data bank04.loc_8c045748

loc_8C0A8584:
#data bank03.loc_8c034dee


loc_8C0A8588:
mov.l @(loc_8C0A8594,pc),r3 ; r3 set to 0x8C0450C0
mov 0x00,r2 ; r2 set to 0x00
mov.w @(loc_8C0A8592,pc),r0 ; r0 set to 0x12c
jmp @r3
mov.b r2,@(r0,r4) 	

loc_8C0A8592:
#data 0x012c

#align4
loc_8C0A8594:
#data bank04.loc_8c0450C0
#data 0x7FF44F22
#data 0x60532F42
#data 0x80F80009
#data 0x00096063
#data 0xE501D32d
#data 0xE60080F4
#data 0x6463430b
#data 0x8D122008
#data 0x924F6403
#data 0xE120E026
#data 0x314CD328
#data 0x04251434
#data 0x63F2E221
#data 0x1436324c
#data 0x840160F2
#data 0x84F88041
#data 0x84F42100
#data 0x7F0C2200
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0A85E6:
#data 0x2FE6
#data 0x7FF84F22
#data 0x60536E43
#data 0xD31B0009
#data 0x80F4E501
#data 0xE6022F60
#data 0x64E3430b
#data 0x8D112008
#data 0x92296403
#data 0xD316E026
#data 0x314CE120
#data 0x04251434
#data 0x84E114E5
#data 0x53E68041
#data 0x84F41436
#data 0xE0212100
#data 0x043463F0

#align4
loc_8C0A8628:
#data 0x00096043
#data 0x4F267F08
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0A8634:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0A8668,pc),r0 ; r0 set to 0x8C157404
extu.b r3,r3
mov.l @(0x18,r14),r5
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0A864A:
mov r4,r3
mov.l @(loc_8C0A866C,pc),r1 ; r1 set to 0x8C15740c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x00003302

#align4
loc_8C0A8660:
#data bank04.loc_8c044F12

loc_8C0A8664:
#data loc_8c0a8634

loc_8C0A8668:
#data 0x8C157404

loc_8C0A866C:
#data 0x8C15740c


loc_8C0A8670:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
mov.w @(loc_8C0A8754,pc),r1 ; r1 set to 0xDc
add 0x01,r0
mov.w @(loc_8C0A8752,pc),r4 ; r4 set to 0x2A4
mov.b r0,@(0x04,r14) 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0A8756,pc),r0 ; r0 set to 0xC0
add r13,r4 ; r4 ??? bc r13 is ???	
mov.w @(loc_8C0A8754,pc),r2 ; r2 set to 0xDc
mov.l @(loc_8C0A8764,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0A8758,pc),r0 ; r0 set to 0x12c
mov 0x01,r5 ; r5 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r5,@(r0,r14) 	
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
mov.w @(loc_8C0A875A,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0A8768,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov 0xFE,r3 ; r3 set to 0xFFFFFFFe
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0A8758,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov 0x32,r3 ; r3 set to 0x32
mov.b @(0x02,r4),r0 	
add 0x01,r0 ; r0 set to 0x32
mov.b r0,@(0x02,r4) 	
mov 0x00,r4 ; r4 set to 0x00
mov.w @(loc_8C0A875C,pc),r0 ; r0 set to 0x1A1
mov.b r3,@(r0,r14) 	
add 0x0B,r0 ; r0 set to 0x1Ac
mov.w r4,@(r0,r14) 	
add 0xF2,r0 ; r0 set to 0x19e
mov.b r4,@(r0,r14) 	
add 0x26,r0 ; r0 set to 0x1C4
mov.l @(loc_8C0A876C,pc),r3 ; r3 set to 0x8C2896B0
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
mov.w @(loc_8C0A875E,pc),r0 ; r0 set to 0x19c
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x19d
mov.b r4,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
mov.l @(loc_8C0A8770,pc),r5 ; r5 set to 0x8C1573B4
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0A8774,pc),r0  ; r0 set to 0x8C0A8774
fmov.s @r0,fr4 ; r4 ??	
mov.w @(loc_8C0A8760,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r2
tst r2,r2
bf/s loc_8C0A8778
mov r5,r4 ; r4 set to 0x8C1573B4
mov 0x21,r2 ; r2 set to 0x21
fmov fr4,fr0 ; r0 ??	
add r14,r2 ; r2 ??? bc r14 is ???	
mov.b @r2,r2
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r14),fr2
extu.b r2,r2
shll r2
shll r2
add r2,r4 ; r4 ??? bc r2 is ???	
mov.w @r4,r2
lds r2,fpul 	
float fpul,fr3
bra loc_8C0A8794
fmac fr0,fr3,fr2

loc_8C0A8752:
#data 0x02A4

loc_8C0A8754:
#data 0x00Dc

loc_8C0A8756:
#data 0x00C0

loc_8C0A8758:
#data 0x012c

loc_8C0A875A:
#data 0x01A3

loc_8C0A875C:
#data 0x01A1

loc_8C0A875E:
#data 0x019c

loc_8C0A8760:
#data 0x0130
#data 0x0000

#align4
loc_8C0A8764:
#data bank12.loc_8c129560

loc_8C0A8768:
#data bank12.loc_8c1294C8

loc_8C0A876C:
#data 0x8C2896B0

#align4
loc_8C0A8770:
#data 0x8C1573B4

loc_8C0A8774:
#data 0x3FD55555

#align4
loc_8C0A8778:
#data 0x31ECE121
#data 0xE0346110
#data 0x611CF2E6
#data 0x41004100
#data 0x6241341c
#data 0xF32D425a
#data 0xF231F342

#align4
loc_8C0A8794:
#data 0xFE27E321
#data 0x62E333Ec
#data 0xD44AE038
#data 0x2F26320c
#data 0x6330E221
#data 0x4300633c
#data 0x353C4300
#data 0x63038551
#data 0x63F6435a
#data 0xF008C741
#data 0xF32DC741
#data 0xF23EF238
#data 0xF508F32a
#data 0x00DC9078
#data 0x6303600c
#data 0x303C4000
#data 0x622032Ec
#data 0x6323622c
#data 0x42004208
#data 0x302C323c
#data 0x024E4008
#data 0x425AE05c
#data 0xF342F32d
#data 0xFE37F353
#data 0x03DC9062
#data 0x01ECE021
#data 0x6233633c
#data 0x611C4300
#data 0x6213332c
#data 0x41004108
#data 0x331C312c
#data 0x334C4308
#data 0xE0685131
#data 0xF32D415a
#data 0xF353F342
#data 0xE060FE37
#data 0xFE37F38d
#data 0x03DC9048
#data 0x01ECE021
#data 0x633CE06c
#data 0x43006233
#data 0x332C611c
#data 0x41086213
#data 0x312C4100
#data 0x4308331c
#data 0x5342343c
#data 0xF32D435a
#data 0xF353F342
#data 0x9032FE37
#data 0x233803Ed
#data 0xE60C8D08
#data 0xF3E6E05c
#data 0xFE37F34d
#data 0xF3E6E068
#data 0xFE37F34d

#align4
loc_8C0A8870:
#data 0xE517D316
#data 0x64E3430b
#data 0xE600E501
#data 0x64E3BEB3
#data 0xE600E501
#data 0x64E3BEAf
#data 0xE600E501
#data 0x64E3BEAb
#data 0xE600E501
#data 0x64E3BEA7
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6


loc_8C0A88A2:
mov 0x24,r0 ; r0 set to 0x24
mov.l r14,@-r15
mov.b @(r0,r5),r3
mov r4,r14
mov.l @(loc_8C0A88D0,pc),r1 ; r1 set to 0x8C15741c
mov r14,r4
mov.b r3,@(r0,r14) 	
mov.b @(0x05,r14),r0 	
extu.b r0,r0 ; r0 set to 0x24
shll2 r0 ; r0 set to 0x90
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x013001A3
#data 0x40092492
#data 0x47800000

#align4
loc_8C0A88C8:
#data 0x8C1573Bc

loc_8C0A88CC:
#data bank03.loc_8c034e8c

loc_8C0A88D0:
#data 0x8C15741c

loc_8C0A88D4:
#data 0x4F222FE6
#data 0xD3477FFc
#data 0x2F526E43
#data 0x64E3430b
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
#data 0xF3E6E068
#data 0xF2E6E05c
#data 0xF38DF232
#data 0x8B03F235
#data 0xFE47F43c
#data 0xFE47E068

#align4
loc_8C0A8934:
#data 0x63F2E038
#data 0x9059F3E6
#data 0xF325F236
#data 0x84E58909
#data 0x80E57001
#data 0x63F29052
#data 0xE038F336
#data 0xA00FFE37
#data 0xE00c

loc_8C0A8956:
#data 0x904c
#data 0x233803Ec
#data 0xD2278B06
#data 0x64E3420b
#data 0x03EC9046
#data 0x89042338

#align4
loc_8C0A896C:
#data 0x700184E5
#data 0xE00180E5

loc_8C0A8974:
#data 0x81Ee

loc_8C0A8976:
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0A897E:
#data 0x2FE6
#data 0xD31D4F22
#data 0x6E43430b
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x8B0F2008
#data 0x65E384E5
#data 0x7534D319
#data 0x80E57001
#data 0xE601E708
#data 0x64E3430b
#data 0xE549D216
#data 0x64E3420b
#data 0x81EEE00a

#align4
loc_8C0A89B4:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0A89BA:
mov.w @(0x1C,r4),r0 	
mov.w @(loc_8C0A89F6,pc),r6 ; r6 set to 0x2A4
add 0xFF,r0
mov.w r0,@(0x1C,r4) 	
add 0x01,r0
exts.w r0,r0
tst r0,r0
bf/s loc_8C0A89Da
add r5,r6 ; r6 ??? bc r5 is ???	
mov.b @(0x04,r4),r0 	
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.b @(0x02,r6),r0 	
add 0xFF,r0
bra loc_8C0A8B56
mov.b r0,@(0x02,r6) 	

loc_8C0A89DA:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0A89DE:
mov r4,r3
mov.l @(loc_8C0A8A08,pc),r1 ; r1 set to 0x8C157428
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x019F041c
#data 0x019e

loc_8C0A89F6:
#data 0x02A4

#align4
loc_8C0A89F8:
#data bank03.loc_8c034dee

loc_8C0A89FC:
#data bank04.loc_8c045748

loc_8C0A8A00:
#data bank10.loc_8c10235c

loc_8C0A8A04:
#data bank04.loc_8c04223a

loc_8C0A8A08:
#data 0x8C157428

loc_8C0A8A0C:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x65E391Ab
#data 0x84E44F22
#data 0x92A6755c
#data 0x700131Ec
#data 0x80E454E5
#data 0xD35390A2
#data 0x32DC430b
#data 0xE601909f
#data 0x715061E3
#data 0x84D20E64
#data 0x84D180E2
#data 0xE05080E1
#data 0xFE37F3D6
#data 0xF3D6E054
#data 0x9091FE37
#data 0x0E3403Dc
#data 0x02DC7001
#data 0xE0300E24
#data 0x62D303Dc
#data 0x0E347250
#data 0x430BD345
#data 0xE024E00c
#data 0xE3FF02Dc
#data 0x907E0E24
#data 0xE0310E64
#data 0xE0340E34
#data 0xE608F346
#data 0xE038FE37
#data 0xFE37F346
#data 0xF346E03c
#data 0xFE37E400

#align4
loc_8C0A8A90:
#data 0x6353E034
#data 0xE038F3E6
#data 0xF33D334c
#data 0x2321025a
#data 0xF3E66353
#data 0x334C7308
#data 0x7402F33d
#data 0x025A3462
#data 0x8BED2321
#data 0xE517D232
#data 0x420BE60c
#data 0x4F2664E3
#data 0x64E365D3
#data 0x6EF66DF6

#align4
loc_8C0A8AC8:
#data 0x2FD62FE6
#data 0x4F222FC6
#data 0x6D437FFc
#data 0xE02453D5
#data 0x2F325CD2
#data 0x025C6E43
#data 0xD3287E5c
#data 0x430B0D24
#data 0x85E364D3
#data 0x630364E3
#data 0xE034435a
#data 0xFD37F32d
#data 0x81438542
#data 0x81428541
#data 0x81416041
#data 0xF3C6E034
#data 0xF33D7408
#data 0x2E31035a
#data 0x630385E7
#data 0xE038435a
#data 0xFD37F32d
#data 0x81438542
#data 0x740864E3
#data 0x81428541
#data 0x740864E3
#data 0x81416041
#data 0xF3C6E038
#data 0x005AF33d
#data 0x60F281E4
#data 0x600C8405
#data 0x8B028802
#data 0x700184D4
#data 0x80D4

loc_8C0A8B4A:
#data 0x7F04
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0A8B56:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0A8B72,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0A8B64:
mov.l @(loc_8C0A8B88,pc),r3 ; r3 set to 0x8C0450C0
mov 0x00,r2 ; r2 set to 0x00
mov.w @(loc_8C0A8B72,pc),r0 ; r0 set to 0x12c
jmp @r3
mov.b r2,@(r0,r4) 	
#data 0x00Dc
#data 0x00C0

loc_8C0A8B72:
#data 0x012c
#data 0x000001A3

#align4
loc_8C0A8B78:
#data bank12.loc_8c129560

loc_8C0A8B7C:
#data bank12.loc_8c1294C8

loc_8C0A8B80:
#data bank03.loc_8c034e8c

loc_8C0A8B84:
#data bank03.loc_8c034dee

loc_8C0A8B88:
#data bank04.loc_8c0450C0
#data 0x7FF44F22
#data 0x60532F42
#data 0x80F80009
#data 0x00096063
#data 0xE502D319
#data 0xE60080F4
#data 0x6463430b
#data 0x8D122008
#data 0x92286403
#data 0xE120E026
#data 0x314CD314
#data 0x04251434
#data 0x63F2E221
#data 0x1436324c
#data 0x840160F2
#data 0x84F88041
#data 0x84F42100
#data 0x7F0C2200
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0A8BDA:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0A8C0C,pc),r0 ; r0 set to 0x8C157438
extu.b r3,r3
mov.l @(0x18,r14),r5
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0A8BF0:
mov r4,r3
mov.l @(loc_8C0A8C10,pc),r1 ; r1 set to 0x8C157440
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x3303

#align4
loc_8C0A8C04:
#data bank04.loc_8c044F12

loc_8C0A8C08:
#data loc_8c0a8BDa

loc_8C0A8C0C:
#data 0x8C157438

loc_8C0A8C10:
#data 0x8C157440

loc_8C0A8C14:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x4F229198
#data 0x31EC84E4
#data 0x70019294
#data 0x80E4D34d
#data 0x430B9091
#data 0x908F32Dc
#data 0x61E3E401
#data 0x0E447150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC9081
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD33F0E34
#data 0xE00C430b
#data 0x02DCE024
#data 0x0E24E3Ff
#data 0x0E44906e
#data 0x0E34E031
#data 0xE400E021
#data 0xE33D0E44
#data 0x0E349068
#data 0x0E45700b
#data 0x0E4470F2
#data 0xD3357026
#data 0xE4410E46
#data 0x623284E2
#data 0x4000600c
#data 0x012D727c
#data 0x02157101
#data 0x0E449057
#data 0xD12F7001
#data 0xE0340E44
#data 0xE517F3D6
#data 0xE618415a
#data 0xE038FE37
#data 0xD22BF3D6
#data 0xE03CFE37
#data 0xFE37F3D6
#data 0xF2E6E038
#data 0xF230F30d
#data 0x420BFE27
#data 0x4F2664E3
#data 0x64E365D3
#data 0x6EF66DF6

#align4
loc_8C0A8CE4:
#data 0x6E432FE6
#data 0xE401D222
#data 0x614384E2
#data 0x600C6320
#data 0x410C204a
#data 0x2318633c
#data 0x902D8B26
#data 0x600C005c
#data 0x8B028816
#data 0x20088455
#data 0x8902

loc_8C0A8D0E:
#data 0x64E3
#data 0x6EF6A130

#align4
loc_8C0A8D14:
#data 0x035CE024
#data 0xE0210E34
#data 0x222802Ec
#data 0xE0318B03
#data 0xA002E2Ff
#data 0x0E24

loc_8C0A8D2A:
#data 0xE031
#data 0x0E44

loc_8C0A8D2E:
#data 0xE034
#data 0xFE37F356
#data 0x035C9013
#data 0x8B072338
#data 0x64E384E5
#data 0x600CD10d
#data 0x031E4008
#data 0x6EF6432b

#align4
loc_8C0A8D4C:
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x00C000Dc
#data 0x01A3012c
#data 0x019C01A1
#data 0x01A00159

#align4
loc_8C0A8D60:
#data bank12.loc_8c129560

loc_8C0A8D64:
#data bank12.loc_8c1294C8
#data 0x8C2896B0
#data 0x439A4924

#align4
loc_8C0A8D70:
#data bank03.loc_8c034e8c
#data 0x8C2895F6

#align4
loc_8C0A8D78:
#data 0x8C157450

loc_8C0A8D7C:
#data 0x4F222FE6
#data 0x935B7FFc
#data 0xD22F6E43
#data 0x2F32335c
#data 0x64E3420b
#data 0x4011600e
#data 0x84E58912
#data 0x7001F48d
#data 0xE00180E5
#data 0x803363F2
#data 0xFE47E05c
#data 0xFE47E060
#data 0xFE47E068
#data 0xFE47E06c
#data 0xF308C724
#data 0xFE37E06c

#align4
loc_8C0A8DBC:
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0A8DC4:
#data 0x903A2FE6
#data 0x6D532FD6
#data 0x03DC4F22
#data 0x8D032338
#data 0xE0216E43
#data 0x0E34E301

#align4
loc_8C0A8DDC:
#data 0xD31BE160
#data 0xE03831Ec
#data 0xF2E6F318
#data 0x31ECE16c
#data 0xFE27F230
#data 0xF2E6E060
#data 0xF230F318
#data 0x430BFE27
#data 0xC71464E3
#data 0x901DF308
#data 0xE038F2D6
#data 0xF230F1E6
#data 0x8908F125
#data 0x65D384E5
#data 0x700164E3
#data 0x4F2680E5
#data 0xA0A26DF6
#data 0x6EF6

loc_8C0A8E22:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0A8E2A:
mov r4,r3
mov.l @(loc_8C0A8E54,pc),r1 ; r1 set to 0x8C157458
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x014102A4
#data 0x0000041c

#align4
loc_8C0A8E44:
#data bank03.loc_8c034dee
#data 0xBF092492

#align4
loc_8C0A8E4C:
#data bank04.loc_8c045748
#data 0x43542492

#align4
loc_8C0A8E54:
#data 0x8C157458


loc_8C0A8E58:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0A8F7E,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0A8F7E,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0A8F88,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0A8F80,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0A8F82,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0A8F84,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0A8F8C,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.l @(loc_8C0A8F90,pc),r1 ; r1 set to 0x43542492
mov.b @(r0,r13),r2
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
lds r1,fpul 	
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0A8F82,pc),r0 ; r0 set to 0x12c
fldi0 fr4
mov.b r4,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
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
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fsts fpul,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
mova @(loc_8C0A8F94,pc),r0  ; r0 set to 0x8C0A8F94
fmov.s @r0,fr2
mov 0x6C,r0 ; r0 set to 0x6c
mov.l @(loc_8C0A8F98,pc),r3 ; r3 set to 0x8C034E8c
mov 0x17,r5 ; r5 set to 0x17
fmov.s fr2,@(r0,r14) 	
mov 0x19,r6 ; r6 set to 0x19
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???	
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0A8F0E:
mov.l r14,@-r15
mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
mov.l r13,@-r15
mov r5,r13
mov r4,r14
mov 0x60,r1 ; r1 set to 0x60, r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
sts.l pr,@-r15
mov.b @(r0,r13),r3 ; r3 ??? bc r13 is ???	
mov.b r3,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r13),fr3
mov.l @(loc_8C0A8F9C,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???	
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
exts.b r0,r0 ; r0 ??, r0 ??	
cmp/pz r0
bt loc_8C0A8F5e
mov.b @(0x04,r14),r0 	
mov r13,r5
mov r14,r4
add 0x01,r0
mov.b r0,@(0x04,r14) 	
lds.l @r15+,pr 	
mov.l @r15+,r13
bra loc_8C0A8F66
mov.l @r15+,r14

loc_8C0A8F5E:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0A8F66:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0A8F82,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0A8F74:
mov.l @(loc_8C0A8FA0,pc),r3 ; r3 set to 0x8C0450C0
mov 0x00,r2 ; r2 set to 0x00
mov.w @(loc_8C0A8F82,pc),r0 ; r0 set to 0x12c
jmp @r3
mov.b r2,@(r0,r4) 	

loc_8C0A8F7E:
#data 0x00Dc

loc_8C0A8F80:
#data 0x00C0

loc_8C0A8F82:
#data 0x012c

loc_8C0A8F84:
#data 0x01A3
#data 0x0000

#align4
loc_8C0A8F88:
#data bank12.loc_8c129560

loc_8C0A8F8C:
#data bank12.loc_8c1294C8

loc_8C0A8F90:
#data 0x43542492

#align4
loc_8C0A8F94:
#data 0x3C892492

#align4
loc_8C0A8F98:
#data bank03.loc_8c034e8c

loc_8C0A8F9C:
#data bank03.loc_8c034dee

loc_8C0A8FA0:
#data bank04.loc_8c0450C0
#data 0x7FF44F22
#data 0x60532F42
#data 0x80F80009
#data 0x00096063
#data 0xE501D333
#data 0xE60080F4
#data 0x6463430b
#data 0x8D122008
#data 0x925C6403
#data 0xE120E026
#data 0x314CD32e
#data 0x04251434
#data 0x63F2E221
#data 0x1436324c
#data 0x840160F2
#data 0x84F88041
#data 0x84F42100
#data 0x7F0C2200
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0A8FF2:
#data 0x2FE6
#data 0x7FF44F22
#data 0x60536E43
#data 0x80F80009
#data 0x60732F60
#data 0xD31F0009
#data 0x81F2E601
#data 0x430B6563
#data 0x2008E400
#data 0x64038D1b
#data 0xE0269233
#data 0xE120D31a
#data 0x1434314c
#data 0x53E60425
#data 0x84E11436
#data 0x14E58041
#data 0x210084F8
#data 0x63F0E021
#data 0x85F20434
#data 0x435A6303
#data 0xF32DE05c
#data 0xE014F437
#data 0x600C00Fc
#data 0x814f

loc_8C0A904E:
#data 0x6043
#data 0x7F0C0009
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0A905A:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0A908C,pc),r0 ; r0 set to 0x8C157468
extu.b r3,r3
mov.l @(0x18,r14),r5
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0A9070:
mov r4,r3
mov.l @(loc_8C0A9090,pc),r1 ; r1 set to 0x8C157470
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x3304

#align4
loc_8C0A9084:
#data bank04.loc_8c044F12

loc_8C0A9088:
#data loc_8c0a905a

loc_8C0A908C:
#data 0x8C157468

loc_8C0A9090:
#data 0x8C157470

loc_8C0A9094:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x919D2FC6
#data 0x84E44F22
#data 0x929931Ec
#data 0xD3507001
#data 0x909680E4
#data 0x32DC430b
#data 0xE4019094
#data 0x715061E3
#data 0x84D20E44
#data 0x84D180E2
#data 0xE05080E1
#data 0xFE37F3D6
#data 0xF3D6E054
#data 0x9086FE37
#data 0x0E3403Dc
#data 0x02DC7001
#data 0xE0300E24
#data 0x62D303Dc
#data 0x0E347250
#data 0x430BD341
#data 0xE024E00c
#data 0xE3FE02Dc
#data 0x0E24EC00
#data 0x9071E234
#data 0xE0310E44
#data 0xE4420E34
#data 0xD33B906e
#data 0x700B0E24
#data 0x70F20EC5
#data 0x70260EC4
#data 0x84E20EC6
#data 0x600C6232
#data 0x727C4000
#data 0x7101012d
#data 0x905E0215
#data 0x70010E44
#data 0xD2320E44
#data 0xE60DE517
#data 0x64E3420b
#data 0x65D3E023
#data 0xE0040EC4
#data 0x81EE64E3
#data 0x6CF64F26
#data 0x6EF66DF6

#align4
loc_8C0A914C:
#data 0x2FE6904c
#data 0x600C005c
#data 0x8F038816
#data 0x84556E43
#data 0x89052008

#align4
loc_8C0A9160:
#data 0x64E384E4
#data 0x80E47001
#data 0x6EF6A20b

#align4
loc_8C0A916C:
#data 0x025CE024
#data 0xE0340E24
#data 0xFE37F356
#data 0xF356E038
#data 0xE03CFE37
#data 0xFE37F356
#data 0x03ED9031
#data 0x8B042338
#data 0xE034D11b
#data 0xA004415a
#data 0xF30d

loc_8C0A9196:
#data 0xD11a
#data 0x415AE034
#data 0xF30d

loc_8C0A919E:
#data 0xF2E6
#data 0xF230D118
#data 0x415AD418
#data 0xFE27E101
#data 0xF2E6E038
#data 0xF230F30d
#data 0xE03CFE27
#data 0xE03B034d
#data 0x633D024c
#data 0x412C622c
#data 0x8B072318
#data 0x64E384E5
#data 0x600CD10f
#data 0x031E4008
#data 0x6EF6432b

#align4
loc_8C0A91D8:
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x00C000Dc
#data 0x01A3012c
#data 0x019C01A1
#data 0x01300159

#align4
loc_8C0A91EC:
#data bank12.loc_8c129560

loc_8C0A91F0:
#data bank12.loc_8c1294C8
#data 0x8C2896B0

#align4
loc_8C0A91F8:
#data bank03.loc_8c034e8c
#data 0xC3325555
#data 0x43325555
#data 0x434B9249
#data 0x8C2895F0

#align4
loc_8C0A920C:
#data 0x8C157480


loc_8C0A9210:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
fmov.s fr15,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0A9370,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r4,r14
mov.w @(0x1C,r14),r0 	
add 0xFF,r0
mov.w r0,@(0x1C,r14) 	
exts.w r0,r0
tst r0,r0
bf loc_8C0A928c
mov.b @(0x05,r14),r0 	
mov 0x07,r3 ; r3 set to 0x07
mov.w @(loc_8C0A9368,pc),r12 ; r12 set to 0xFF56
mov 0x06,r13 ; r13 set to 0x06
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b r3,@(r0,r14) 	
mov 0x00,r0 ; r0 set to 0x00
mov.w r0,@(0x1E,r14) 	
mova @(loc_8C0A9374,pc),r0  ; r0 set to 0x8C0A9374
fmov.s @r0,fr15

loc_8C0A9244:
mov.w @(0x1E,r14),r0 	
mov 0x01,r5 ; r5 set to 0x01, r5 set to 0x01
mov r12,r7 ; r7 set to 0xFF56
mov.l r0,@-r15
mov r0,r3 ; r3 set to 0x8C0A9374
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
mov.b @(r0,r14),r6
bsr loc_8C0A8FF2
mov r14,r4
add 0x04,r15
exts.w r12,r12 ; r12 ??	
mov.w @(0x1E,r14),r0 	
lds r12,fpul 	
dt r13
add 0x01,r0 ; r0 set to 0x22, r0 set to 0x22
mov.w r0,@(0x1E,r14) 	
float fpul,fr3
mov.w @(0x1E,r14),r0 	
and 0x03,r0 	
fsub fr15,fr3 ; r3 ??? bc r15 is ???	
ftrc fr3,fpul 	
sts fpul,r12
bf/s loc_8C0A9244
mov.w r0,@(0x1E,r14) 	
mov 0x00,r2 ; r2 set to 0x00, r2 set to 0x00
mov.l @(loc_8C0A9378,pc),r3 ; r3 set to 0x8C04223A, r3 set to 0x8C04223a
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
mov r14,r4
mov.b r2,@(r0,r14) 	
mov 0x48,r5 ; r5 set to 0x48, r5 set to 0x48
lds.l @r15+,pr 	
fmov.s @r15+,fr15
mov.l @r15+,r12
mov.l @r15+,r13 ; r13 ??? bc r15 is ???	
jmp @r3
mov.l @r15+,r14

loc_8C0A928C:
lds.l @r15+,pr 	
fmov.s @r15+,fr15
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0A9298:
#data 0x4F222FE6
#data 0x93647FFc
#data 0xD2336E43
#data 0x2F32335c
#data 0x64E3420b
#data 0x430BD333
#data 0x905B64E3
#data 0x222802Ec
#data 0xE4008913
#data 0x70600E44
#data 0x0E34E334
#data 0x0E45700b
#data 0x0E4470F2
#data 0xD32C7026
#data 0x84E20E46
#data 0x600C6232
#data 0x727C4000
#data 0x7101012d
#data 0x0215

loc_8C0A92E2:
#data 0x85Ef
#data 0x973FE501
#data 0x63032F06
#data 0x06ECE021
#data 0x64E3BE7f
#data 0xE0217F04
#data 0xE30702Ec
#data 0x0E247201
#data 0x223902Ec
#data 0x85EF0E24
#data 0x81EF7001
#data 0xC90385Ef
#data 0x62F281Ef
#data 0x20088426
#data 0x84E5890a
#data 0x64E3E517
#data 0x7001E60e
#data 0x7F0480E5
#data 0xD2164F26
#data 0x6EF6422b

#align4
loc_8C0A9330:
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0A9338:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0A9370,pc),r3 ; r3 set to 0x8C034DEe
mov r4,r14
mov.l r5,@r15
jsr @r3
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt loc_8C0A9360
mov.b @(0x04,r14),r0 	
mov r14,r4
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.l @r15,r5
add 0x04,r15
lds.l @r15+,pr 	
bra loc_8C0A9582
mov.l @r15+,r14

loc_8C0A9360:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0A9368:
#data 0xFF56
#data 0x02A4
#data 0x00000141

#align4
loc_8C0A9370:
#data bank03.loc_8c034dee

loc_8C0A9374:
#data 0x42480000

#align4
loc_8C0A9378:
#data bank04.loc_8c04223a

loc_8C0A937C:
#data bank04.loc_8c045748
#data 0x8C2896B0

#align4
loc_8C0A9384:
#data bank03.loc_8c034e8c


loc_8C0A9388:
mov r4,r3
mov.l @(loc_8C0A94D0,pc),r1 ; r1 set to 0x8C15748c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0A939A:
#data 0x2FE6
#data 0x7FFC4F22
#data 0x918C6E43
#data 0xD34B928b
#data 0x2F5231Ec
#data 0x54E584E4
#data 0x80E47001
#data 0x430B9084
#data 0x9082324c
#data 0x61E3E501
#data 0x0E547150
#data 0x80E28442
#data 0x80E18441
#data 0xF346E050
#data 0xE054FE37
#data 0xFE37F346
#data 0x034C9074
#data 0x70010E34
#data 0x0E24024c
#data 0x034CE030
#data 0x72506243
#data 0xD33A0E34
#data 0xE00C430b
#data 0x024CE024
#data 0x0E24E3Fe
#data 0x0E549061
#data 0x0E34E031
#data 0x200885Ef
#data 0x905C8B20
#data 0x0E54E542
#data 0x034CE023
#data 0x04347301
#data 0x024CE303
#data 0x04242239
#data 0xE400014c
#data 0x71379050
#data 0x0E14D22c
#data 0x0E45700b
#data 0x0E4470F2
#data 0x0E467026
#data 0x612284E2
#data 0x4000600c
#data 0x031D717c
#data 0x01357301
#data 0x0E54903f

#align4
loc_8C0A944C:
#data 0xE31A903e
#data 0x0E34E517
#data 0x0E3470Ff
#data 0x06ECE021
#data 0x760FD320
#data 0x64E3430b
#data 0x64E365F2
#data 0x4F267F04
#data 0x6EF6

loc_8C0A946E:
#data 0x902e
#data 0x005C2FE6
#data 0x8816600c
#data 0x6E438F03
#data 0x20088455
#data 0x8905

loc_8C0A9482:
#data 0x84E4
#data 0x700164E3
#data 0xA08180E4
#data 0x6EF6

loc_8C0A948E:
#data 0xE024
#data 0x025CD414
#data 0x0E24E101
#data 0x034DE03c
#data 0x024CE03b
#data 0x622C633d
#data 0x2318412c
#data 0x84E58B07
#data 0xD10E64E3
#data 0x4008600c
#data 0x432B031e
#data 0x6EF6

loc_8C0A94BA:
#data 0x000b
#data 0x00DC6EF6
#data 0x012C00C0
#data 0x019C01A3
#data 0x019D01A1
#data 0x0159013f

#align4
loc_8C0A94D0:
#data 0x8C15748c

loc_8C0A94D4:
#data bank12.loc_8c129560

loc_8C0A94D8:
#data bank12.loc_8c1294C8
#data 0x8C2896B0

#align4
loc_8C0A94E0:
#data bank03.loc_8c034e8c
#data 0x8C2895F0

#align4
loc_8C0A94E8:
#data 0x8C15749c

loc_8C0A94EC:
#data 0x4F222FE6
#data 0x927C7FF8
#data 0x63536E43
#data 0x323C2F52
#data 0x55E51F21
#data 0x64E3B052
#data 0x420BD23b
#data 0x85EF64E3
#data 0x8B022008
#data 0x430BD339
#data 0x64E3

loc_8C0A9516:
#data 0x52F1
#data 0x20088426
#data 0x84E58907
#data 0xD336E617
#data 0x70016563
#data 0x430B80E5
#data 0x64E3

loc_8C0A952E:
#data 0xD234
#data 0x64E3420b
#data 0x8B082008
#data 0x64E384E4
#data 0x80E47001
#data 0x7F0865F2
#data 0xA0234F26
#data 0x6EF6

loc_8C0A954A:
#data 0x7F08
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0A9552:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0A95F4,pc),r3 ; r3 set to 0x8C034DEe
mov r4,r14
mov.l r5,@r15
jsr @r3
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt loc_8C0A957a
mov.b @(0x04,r14),r0 	
mov r14,r4
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.l @r15,r5
add 0x04,r15
lds.l @r15+,pr 	
bra loc_8C0A9590
mov.l @r15+,r14

loc_8C0A957A:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0A9582:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0A95F0,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0A9590:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0A95F0,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0A959E:
mov.l @(loc_8C0A9604,pc),r3 ; r3 set to 0x8C0450C0
mov 0x00,r2 ; r2 set to 0x00
mov.w @(loc_8C0A95F0,pc),r0 ; r0 set to 0x12c
jmp @r3
mov.b r2,@(r0,r4) 	

#align4
loc_8C0A95A8:
#data 0xF356E034
#data 0xE038F437
#data 0xF437F356
#data 0xF356E03c
#data 0x901AF437
#data 0x2338034d
#data 0xE15C8B06
#data 0xE034314c
#data 0xF246F318
#data 0xF230A006

#align4
loc_8C0A95D0:
#data 0x314CE15c
#data 0xF318E034
#data 0xF231F246

#align4
loc_8C0A95DC:
#data 0xF427D10a
#data 0x415AE05c
#data 0xF30DF246
#data 0x000BF231
#data 0x02A4F427

loc_8C0A95F0:
#data 0x012c
#data 0x0130

#align4
loc_8C0A95F4:
#data bank03.loc_8c034dee

loc_8C0A95F8:
#data bank04.loc_8c045748

loc_8C0A95FC:
#data bank03.loc_8c034e8c

loc_8C0A9600:
#data bank03.loc_8c03340c

loc_8C0A9604:
#data bank04.loc_8c0450C0
#data 0x42480000
#data 0x4F222FE6
#data 0x6E437FF8
#data 0x00096053
#data 0xE501D31d
#data 0x2F6080F4
#data 0x430BE600
#data 0x20086463
#data 0x64038D14
#data 0xE026922c
#data 0xE120D318
#data 0x9528314c
#data 0x04251434
#data 0x14E6354c
#data 0x804184E1
#data 0x210084F4
#data 0x63F0E021
#data 0x901D0434
#data 0x253103Ed
#data 0x00096043
#data 0x4F267F08
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0A9660:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0A9698,pc),r0 ; r0 set to 0x8C1574A4
extu.b r3,r3
mov.l @(0x18,r14),r5
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0A9676:
mov r4,r3
mov.l @(loc_8C0A969C,pc),r1 ; r1 set to 0x8C1574B0
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x00CC2E05
#data 0x00000158

#align4
loc_8C0A9690:
#data bank04.loc_8c044F12

loc_8C0A9694:
#data loc_8c0a9660

loc_8C0A9698:
#data 0x8C1574A4

loc_8C0A969C:
#data 0x8C1574B0

loc_8C0A96A0:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x91992FC6
#data 0x84E44F22
#data 0x949431Ec
#data 0x92937001
#data 0x34EC80E4
#data 0xD34D9091
#data 0x32DC430b
#data 0xE501908e
#data 0x715061E3
#data 0x84D20E54
#data 0x84D180E2
#data 0xE05080E1
#data 0xFE37F3D6
#data 0xF3D6E054
#data 0x9080FE37
#data 0x0E3403Dc
#data 0x02DC7001
#data 0xE0300E24
#data 0x62D303Dc
#data 0x0E347250
#data 0x430BD33f
#data 0xE024E00c
#data 0x02DCDC3e
#data 0x0E24E3Ff
#data 0x0E54906c
#data 0x0E34E031
#data 0xF3D6E034
#data 0xE038FE37
#data 0xFE37F3D6
#data 0xF3D6E03c
#data 0xE021FE37
#data 0x600C00Ec
#data 0x40004008
#data 0x405A00Cd
#data 0xF208C733
#data 0xF322F32d
#data 0x005AF33d
#data 0xE0218141
#data 0xE10200Ec
#data 0x4008600c
#data 0x30CC4000
#data 0xC72D031d
#data 0x435AF108
#data 0xF312F32d
#data 0x005AF33d
#data 0x90438142
#data 0x233803Ed
#data 0x85418902
#data 0x8141600b

#align4
loc_8C0A976C:
#data 0x03ECE021
#data 0x4308633c
#data 0x33CC4300
#data 0x62038532
#data 0x0E249035
#data 0x923303Ec
#data 0x3320633c
#data 0x90308905
#data 0xE342E143
#data 0x70010E14
#data 0x0E34

loc_8C0A9796:
#data 0xE021
#data 0x06ECD31b
#data 0x666CE517
#data 0x46004608
#data 0x856336Cc
#data 0x430B6603
#data 0x4F2664E3
#data 0x64E365D3
#data 0x6DF66CF6
#data 0x6EF6


loc_8C0A97BA:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0A97DE,pc),r4 ; r4 set to 0xCc
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0A97F0,pc),r0 ; r0 set to 0x158
add r14,r4 ; r4 ??? bc r14 is ???	
sts.l pr,@-r15
mov.w @r4,r2
mov.w @(r0,r13),r3
cmp/eq r2,r3
bt loc_8C0A980c
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
mov.l @r15+,r13
bra loc_8C0A9A74
mov.l @r15+,r14

loc_8C0A97DE:
#data 0x00Cc
#data 0x00C000Dc
#data 0x01A3012c
#data 0x01A10130
#data 0x019C00Ff

loc_8C0A97F0:
#data 0x0158
#data 0x0000

#align4
loc_8C0A97F4:
#data bank12.loc_8c129560

loc_8C0A97F8:
#data bank12.loc_8c1294C8

loc_8C0A97FC:
#data 0x8C1574C0
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0A9808:
#data bank03.loc_8c034e8c


loc_8C0A980C:
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r3
mov 0x34,r2 ; r2 set to 0x34
add r14,r2 ; r2 ??? bc r14 is ???	
mov.b r3,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(0x02,r4),r0 	
fmov.s @r2,fr2
mov r0,r3 ; r3 set to 0x38
lds r3,fpul 	
float fpul,fr3
fadd fr3,fr2
fmov.s fr2,@r2
mov 0x38,r2 ; r2 set to 0x38
mov.w @(0x04,r4),r0 	
add r14,r2 ; r2 ??? bc r14 is ???	
fmov.s @r2,fr2
mov r0,r3 ; r3 set to 0x38
lds r3,fpul 	
mov.l @(loc_8C0A9938,pc),r3 ; r3 set to 0x8C034DEe
float fpul,fr3
fadd fr3,fr2
fmov.s fr2,@r2
jsr @r3
mov r14,r4
exts.b r0,r0 ; r0 ??	
cmp/pz r0
bt loc_8C0A9860
mov.b @(0x04,r14),r0 	
mov r13,r5
mov r14,r4
add 0x01,r0
mov.b r0,@(0x04,r14) 	
lds.l @r15+,pr 	
mov.l @r15+,r13
bra loc_8C0A9A66
mov.l @r15+,r14

loc_8C0A9860:
mov.w @(loc_8C0A9928,pc),r0 ; r0 set to 0x1A1
mov.w @(loc_8C0A992A,pc),r3 ; r3 set to 0xFf
mov.b @(r0,r14),r2
extu.b r2,r2
cmp/eq r3,r2
bt loc_8C0A9878
lds.l @r15+,pr 	
mov.l @(loc_8C0A993C,pc),r1 ; r1 set to 0x8C045748
mov r14,r4
mov.l @r15+,r13
jmp @r1
mov.l @r15+,r14

loc_8C0A9878:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0A9880:
mov r4,r3
mov.l @(loc_8C0A9940,pc),r1 ; r1 set to 0x8C157510
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0A9892:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0A992C,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0A992C,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0A9944,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0A992E,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0A9930,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0A9932,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0A9948,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov 0x22,r3 ; r3 set to 0x22
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0A9930,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r4,@(r0,r14) 	
mov.w @(loc_8C0A9934,pc),r0 ; r0 set to 0x13f
mov.b r3,@(r0,r14) 	
add 0xFF,r0 ; r0 set to 0x13e
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
mova @(loc_8C0A994C,pc),r0  ; r0 set to 0x8C0A994c
fmov.s @r0,fr4 ; r4 ??	
mov.w @(loc_8C0A9936,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bf loc_8C0A9950
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r14),fr3
bra loc_8C0A9956
fsub fr4,fr3

loc_8C0A9928:
#data 0x01A1

loc_8C0A992A:
#data 0x00Ff

loc_8C0A992C:
#data 0x00Dc

loc_8C0A992E:
#data 0x00C0

loc_8C0A9930:
#data 0x012c

loc_8C0A9932:
#data 0x01A3

loc_8C0A9934:
#data 0x013f

loc_8C0A9936:
#data 0x0130

#align4
loc_8C0A9938:
#data bank03.loc_8c034dee

loc_8C0A993C:
#data bank04.loc_8c045748

loc_8C0A9940:
#data 0x8C157510

loc_8C0A9944:
#data bank12.loc_8c129560

loc_8C0A9948:
#data bank12.loc_8c1294C8

loc_8C0A994C:
#data 0x42F00000

#align4
loc_8C0A9950:
#data 0xF3E6E034
#data 0xF340

loc_8C0A9956:
#data 0xFE37
#data 0xF2E6E038
#data 0xFE27F240
#data 0xF308C74a
#data 0xFE37E05c
#data 0xF308C749
#data 0xFE37E068
#data 0x03ED9085
#data 0x89072338
#data 0xF3E6E05c
#data 0xFE37F34d
#data 0xF3E6E068
#data 0xFE37F34d

#align4
loc_8C0A9988:
#data 0xE308907a
#data 0x0E34E400
#data 0x0E45700b
#data 0x0E4470F2
#data 0xD33E7026
#data 0x0E46E517
#data 0x84E2E442
#data 0x6232E61d
#data 0x4000600c
#data 0x012D727c
#data 0x02157101
#data 0xD2389065
#data 0x70010E44
#data 0x420B0E44
#data 0x4F2664E3
#data 0x64E365D3
#data 0x6EF66DF6

#align4
loc_8C0A99CC:
#data 0xE0242FE6
#data 0x6D532FD6
#data 0xE15C6E43
#data 0x4F2231Ec
#data 0x0E3403Dc
#data 0xF2E6E034
#data 0xE168F318
#data 0xD32C31Ec
#data 0xFE27F230
#data 0xF2E6E05c
#data 0xF230F318
#data 0x430BFE27
#data 0x904164E3
#data 0x222802Ec
#data 0xD2268B06
#data 0x64E3420b
#data 0x03EC903b
#data 0x89032338

#align4
loc_8C0A9A14:
#data 0x700184E4
#data 0x80E4A00b

#align4
loc_8C0A9A1C:
#data 0x430BD321
#data 0x200864E3
#data 0x4F268B05
#data 0x64E365D3
#data 0xA0216DF6
#data 0x6EF6

loc_8C0A9A32:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0A9A3A:
mov.l r14,@-r15
mov r4,r5
sts.l pr,@-r15
mov.l @(loc_8C0A9AA8,pc),r3 ; r3 set to 0x8C10235c
mov 0x01,r6 ; r6 set to 0x01
mov r4,r14
mov 0x08,r7 ; r7 set to 0x08
jsr @r3
add 0x34,r5
mov.l @(loc_8C0A9AAC,pc),r2 ; r2 set to 0x8C04223a
mov 0x49,r5 ; r5 set to 0x49
jsr @r2
mov r14,r4
mov.b @(0x04,r14),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0A9A88,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0A9A66:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0A9A88,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0A9A74:
mov.l @(loc_8C0A9AB0,pc),r3 ; r3 set to 0x8C0450C0
mov 0x00,r2 ; r2 set to 0x00
mov.w @(loc_8C0A9A88,pc),r0 ; r0 set to 0x12c
jmp @r3
mov.b r2,@(r0,r4) 	
#data 0x0130
#data 0x019C01A1
#data 0x019E019f

loc_8C0A9A88:
#data 0x012c
#data 0x0000
#data 0xC0D55555
#data 0xBED55555
#data 0x8C2896B0

#align4
loc_8C0A9A98:
#data bank03.loc_8c034e8c

loc_8C0A9A9C:
#data bank03.loc_8c034dee

loc_8C0A9AA0:
#data bank04.loc_8c045748

loc_8C0A9AA4:
#data bank03.loc_8c03340c

loc_8C0A9AA8:
#data bank10.loc_8c10235c

loc_8C0A9AAC:
#data bank04.loc_8c04223a

loc_8C0A9AB0:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0x60532F42
#data 0xD3520009
#data 0x80F4E501
#data 0x430BE600
#data 0x20086463
#data 0x64038D10
#data 0xD34EE020
#data 0xE123E500
#data 0x314C1434
#data 0x62F29391
#data 0x04541426
#data 0x210084F4
#data 0x0454E022
#data 0x0435E026
#data 0x4F267F08
#data 0x6043000b
;-------------------------------------------------------------------------------
#data 0x7FF84F22
#data 0xE600D342
#data 0x2F501F41
#data 0x430BE501
#data 0x20086463
#data 0x64038D10
#data 0xE020D33e
#data 0xE3001434
#data 0x142652F1
#data 0xE0230434
#data 0xE30162F0
#data 0xE0220424
#data 0x0434926b
#data 0x0425E026
#data 0x4F267F08
#data 0x6043000b
;-------------------------------------------------------------------------------

#align4
loc_8C0A9B38:
#data 0xE6022FE6
#data 0x6E432FD6
#data 0xEC012FC6
#data 0x2FA62FB6
#data 0xE9052F96
#data 0x4F222F86
#data 0x9B56D82d
#data 0x65C3480b
#data 0x8D1A2008
#data 0xD22B6D03
#data 0x1D24E022
#data 0x1D3653E6
#data 0x1DE5E300
#data 0x0D2402Ec
#data 0x0D34E023
#data 0x0DC4E020
#data 0x0DB5E026
#data 0x00096093
#data 0x79FF9440
#data 0x34DC953e
#data 0x35EC81Df
#data 0x14D124E2
#data 0x15D1

loc_8C0A9B92:
#data 0xEA05

#align4
loc_8C0A9B94:
#data 0xE602E501
#data 0x64E3480b
#data 0x8D192008
#data 0xD21A6403
#data 0x1424E022
#data 0x143653E6
#data 0x02EC14E5
#data 0xE0230424
#data 0xE02004C4
#data 0xE02604C4
#data 0x609304B5
#data 0x961F0009
#data 0x951D79Ff
#data 0x814F36Ec
#data 0x25E235Dc
#data 0x15315361

#align4
loc_8C0A9BD4:
#data 0x8BDD4A10
#data 0x00096043
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0A9BEE:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0A9C10,pc),r1 ; r1 set to 0x8C15752c
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x3400
#data 0x00000088

#align4
loc_8C0A9C08:
#data bank04.loc_8c044F12

loc_8C0A9C0C:
#data loc_8c0a9BEe

loc_8C0A9C10:
#data 0x8C15752c


loc_8C0A9C14:
mov.w @(loc_8C0A9D1A,pc),r0 ; r0 set to 0x13c
mov.l @(loc_8C0A9D2C,pc),r3 ; r3 set to 0x20202020
mov.l r3,@(r0,r4) 	
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r4),r2
tst r2,r2
bf loc_8C0A9C2e
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r4),r2
tst r2,r2
bf loc_8C0A9C3a
bra loc_8C0A9C3e
nop 	

loc_8C0A9C2E:
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r4),r3
tst r3,r3
bf loc_8C0A9C3a
bra loc_8C0AA054
nop 	

loc_8C0A9C3A:
bra loc_8C0A9ED0
nop 	

loc_8C0A9C3E:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.w @(loc_8C0A9D1C,pc),r3 ; r3 set to 0x2A4
mov.w @(loc_8C0A9D20,pc),r1 ; r1 set to 0xDc
mov 0x01,r12 ; r12 set to 0x01
add r5,r3 ; r3 ??? bc r5 is ???	
mov.w @(loc_8C0A9D1E,pc),r4 ; r4 set to 0x88
mov.l r3,@r15
add r14,r1 ; r1 ??? bc r14 is ???	
mov.b @(0x04,r14),r0 	
mov 0x00,r13 ; r13 set to 0x00
mov.l @(loc_8C0A9D30,pc),r3 ; r3 set to 0x8C129560
add r14,r4 ; r4 ??? bc r14 is ???	
add 0x01,r0
mov.w @(loc_8C0A9D20,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0A9D22,pc),r0 ; r0 set to 0xC0
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0A9D24,pc),r0 ; r0 set to 0x12c
mov r14,r1
add 0x50,r1
mov.b r12,@(r0,r14) 	
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
mov.w @(loc_8C0A9D26,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0A9D34,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x0D,r7 ; r7 set to 0x0d
mov.b r2,@(r0,r14) 	
mov 0x23,r0 ; r0 set to 0x23
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
extu.b r0,r0
cmp/eq 0x00,r0 	
bt/s loc_8C0A9CD0
mov 0x09,r6 ; r6 set to 0x09
cmp/eq 0x01,r0 	
bt loc_8C0A9CE6
cmp/eq 0x02,r0 	
bt loc_8C0A9CF4
cmp/eq 0x03,r0 	
bt loc_8C0A9D00
cmp/eq 0x04,r0 	
bt loc_8C0A9D0c
cmp/eq 0x05,r0 	
bt loc_8C0A9D38
bra loc_8C0A9D60
nop 	

loc_8C0A9CD0:
mov 0x21,r0 ; r0 set to 0x21
mov.b r6,@(r0,r14) 	
mov.w @(loc_8C0A9D28,pc),r0 ; r0 set to 0x255
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x03,r0 	
bt loc_8C0A9CEc
mov.w @(loc_8C0A9D2A,pc),r0 ; r0 set to 0x1A1
mov 0x31,r3 ; r3 set to 0x31
bra loc_8C0A9D42
mov.b r3,@(r0,r14) 	

loc_8C0A9CE6:
#data 0xE021
#data 0x0E24E205


loc_8C0A9CEC:
mov.w @(loc_8C0A9D2A,pc),r0 ; r0 set to 0x1A1
mov 0x30,r3 ; r3 set to 0x30
bra loc_8C0A9D42
mov.b r3,@(r0,r14) 	

loc_8C0A9CF4:
mov 0x21,r0 ; r0 set to 0x21
mov.b r7,@(r0,r14) 	
mov 0x2E,r3 ; r3 set to 0x2e
mov.w @(loc_8C0A9D2A,pc),r0 ; r0 set to 0x1A1
bra loc_8C0A9D42
mov.b r3,@(r0,r14) 	

loc_8C0A9D00:
mov 0x21,r0 ; r0 set to 0x21
mov.b r6,@(r0,r14) 	
mov 0x33,r3 ; r3 set to 0x33
mov.w @(loc_8C0A9D2A,pc),r0 ; r0 set to 0x1A1
bra loc_8C0A9D42
mov.b r3,@(r0,r14) 	

loc_8C0A9D0C:
mov 0x21,r0 ; r0 set to 0x21
mov 0x05,r1 ; r1 set to 0x05
mov.b r1,@(r0,r14) 	
mov 0x32,r3 ; r3 set to 0x32
mov.w @(loc_8C0A9D2A,pc),r0 ; r0 set to 0x1A1
bra loc_8C0A9D42
mov.b r3,@(r0,r14) 	

loc_8C0A9D1A:
#data 0x013c

loc_8C0A9D1C:
#data 0x02A4

loc_8C0A9D1E:
#data 0x0088

loc_8C0A9D20:
#data 0x00Dc

loc_8C0A9D22:
#data 0x00C0

loc_8C0A9D24:
#data 0x012c

loc_8C0A9D26:
#data 0x01A3

loc_8C0A9D28:
#data 0x0255

loc_8C0A9D2A:
#data 0x01A1

#align4
loc_8C0A9D2C:
#data 0x20202020

#align4
loc_8C0A9D30:
#data bank12.loc_8c129560

loc_8C0A9D34:
#data bank12.loc_8c1294C8

loc_8C0A9D38:
#data 0x0E74E021
#data 0x90B4E32f
#data 0x0E34


loc_8C0A9D42:
mov.w @(loc_8C0A9EAC,pc),r0 ; r0 set to 0x1Ac
mov.l @(loc_8C0A9EB4,pc),r3 ; r3 set to 0x8C2896B0
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

loc_8C0A9D60:
mova @(loc_8C0A9EB8,pc),r0  ; r0 set to 0x8C0A9EB8, r0 init to 0x8C0A9EB8
mov.l @(loc_8C0A9EC0,pc),r6 ; r6 set to 0x8C15753C, r6 set to 0x8C15753c
fmov.s @r0,fr6 ; r6 ??, r6 ??	
mova @(loc_8C0A9EBC,pc),r0  ; r0 set to 0x8C0A9EBC, r0 set to 0x8C0A9EBc
fmov.s @r0,fr5
mova @(loc_8C0A9EC4,pc),r0  ; r0 set to 0x8C0A9EC4, r0 set to 0x8C0A9EC4
fmov.s @r0,fr4
mov.w @(loc_8C0A9EAE,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r5),r3 ; r3 ??? bc r5 is ???	
tst r3,r3
bf/s loc_8C0A9DE4
mov r6,r7
mov 0x23,r0 ; r0 set to 0x23, r0 set to 0x23
mov.b @(r0,r14),r3
mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
extu.b r3,r3
shll2 r3
shll2 r3
add r3,r7
mov.l @r7,r3
lds r3,fpul 	
float fpul,fr3
fmul fr5,fr3
fdiv fr4,fr3
fneg fr3
fmov.s fr3,@(r0,r4) 	
mov 0x23,r0 ; r0 set to 0x23, r0 set to 0x23
mov.b @(r0,r14),r3
mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
extu.b r3,r3
shll2 r3
shll2 r3
add r6,r3
mov.l @(0x04,r3),r2
lds r2,fpul 	
float fpul,fr3
fmul fr6,fr3
fdiv fr4,fr3
fmov.s fr3,@(r0,r4) 	
mov 0x23,r0 ; r0 set to 0x23, r0 set to 0x23
mov.b @(r0,r14),r3
extu.b r3,r3
shll2 r3
shll2 r3
add r6,r3
mov.l @(0x08,r3),r2
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
lds r2,fpul 	
float fpul,fr3
fmul fr5,fr3
fdiv fr4,fr3
fneg fr3
fmov.s fr3,@(r0,r14) 	
mov 0x23,r0 ; r0 set to 0x23, r0 set to 0x23
mov.b @(r0,r14),r3
extu.b r3,r3
shll2 r3
shll2 r3
add r3,r6
mov.l @(0x0C,r6),r3
lds r3,fpul 	
float fpul,fr3
fmul fr5,fr3
fdiv fr4,fr3
bra loc_8C0A9E48
fneg fr3

#align4
loc_8C0A9DE4:
#data 0x02ECE023
#data 0x622CE008
#data 0x42084208
#data 0x6372372c
#data 0xF32D435a
#data 0xF343F352
#data 0xE023F437
#data 0xE00C03Ec
#data 0x4308633c
#data 0x336C4308
#data 0x425A5231
#data 0xF362F32d
#data 0xF437F343
#data 0x03ECE023
#data 0x4308633c
#data 0x336C4308
#data 0xE05C5232
#data 0xF32D425a
#data 0xF343F352
#data 0xE023FE37
#data 0x633C03Ec
#data 0x43084308
#data 0x5363363c
#data 0xF32D435a
#data 0xF343F352

#align4
loc_8C0A9E48:
#data 0xFE37E068
#data 0xF346E008
#data 0xF256E034
#data 0xF230E344
#data 0xE00CFE27
#data 0xE038F346
#data 0xE515F256
#data 0xFE27F230
#data 0x0E349022
#data 0x0EC47001
#data 0xD315E021
#data 0x430B06Ec
#data 0xD31464E3
#data 0xE2FEE031
#data 0x430B0E24
#data 0xBE5764E3
#data 0x200864E3
#data 0xE0038B07
#data 0x900E80E4
#data 0x63F20ED4
#data 0x000960C3
#data 0x8034

loc_8C0A9E9E:
#data 0x7F04
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x01A16EF6

loc_8C0A9EAC:
#data 0x01Ac

loc_8C0A9EAE:
#data 0x0130
#data 0x012C019c

#align4
loc_8C0A9EB4:
#data 0x8C2896B0

#align4
loc_8C0A9EB8:
#data 0x40092492

#align4
loc_8C0A9EBC:
#data 0x3FD55555

#align4
loc_8C0A9EC0:
#data 0x8C15753c

loc_8C0A9EC4:
#data 0x47800000

#align4
loc_8C0A9EC8:
#data bank03.loc_8c034e8c

loc_8C0A9ECC:
#data bank04.loc_8c045748

loc_8C0A9ED0:
#data 0x6E432FE6
#data 0x4F22919b
#data 0x31EC84E4
#data 0x70019696
#data 0xD34D9295
#data 0x54E536Ec
#data 0x909180E4
#data 0x325C430b
#data 0xE201908f
#data 0x715061E3
#data 0x84520E24
#data 0x845180E2
#data 0xE05080E1
#data 0xFE37F356
#data 0xF356E054
#data 0x9081FE37
#data 0x0E34035c
#data 0x025C7001
#data 0xE0300E24
#data 0x6253035c
#data 0x0E347250
#data 0x430BD33d
#data 0xE024E00c
#data 0xE300025c
#data 0x906E0E24
#data 0xE0310E34
#data 0x7201024c
#data 0x53430E24
#data 0x8B4F3E30
#data 0xD736C737
#data 0xC737F508
#data 0xE023F408
#data 0xE008034c
#data 0x4308633c
#data 0x6331337c
#data 0xF32D435a
#data 0xF343F352
#data 0xC731F637
#data 0xE023F708
#data 0x633C034c
#data 0x373C4308
#data 0x63038571
#data 0xE00C435a
#data 0xF372F32d
#data 0xF637F343
#data 0xF68DE05c
#data 0xE060FE67
#data 0xE068FE67
#data 0xE06CFE67
#data 0x903DFE67
#data 0x035CD725
#data 0x633CE05c
#data 0x337C4308
#data 0x435A6331
#data 0xF352F32d
#data 0xFE37F343
#data 0x035C9030
#data 0x4308633c
#data 0x8571373c
#data 0x435A6303
#data 0xF372F32d
#data 0xE060F343
#data 0x9024FE37
#data 0x2338035d
#data 0xE05C8B08
#data 0xF3E66563
#data 0xF34D7508
#data 0xF358FE37
#data 0xF53AF34d

#align4
loc_8C0A9FE4:
#data 0x004CE023
#data 0xE60CE708
#data 0x8800600c
#data 0xE5048D20
#data 0x89208801
#data 0x89218802
#data 0x89198803
#data 0x891A8804
#data 0x891B8805
#data 0x0009A01c
#data 0x00DC0088
#data 0x012C00C0
#data 0x013001A3

#align4
loc_8C0AA018:
#data bank12.loc_8c129560

loc_8C0AA01C:
#data bank12.loc_8c1294C8

loc_8C0AA020:
#data 0x8C15759c
#data 0x3FD55555
#data 0x43800000
#data 0x40092492

#align4
loc_8C0AA030:
#data 0x8C157520

loc_8C0AA034:
#data 0xA005E021
#data 0x0E74

loc_8C0AA03A:
#data 0xE021
#data 0x0E54A002

#align4
loc_8C0AA040:
#data 0x0E64E021

#align4
loc_8C0AA044:
#data 0xE0214F26
#data 0x06ECD32c
#data 0x64E3E515
#data 0x6EF6432b


loc_8C0AA054:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.w @(loc_8C0AA0EE,pc),r3 ; r3 set to 0x2A4
mov.w @(loc_8C0AA0F2,pc),r1 ; r1 set to 0xDc
add r5,r3 ; r3 ??? bc r5 is ???	
mov.w @(loc_8C0AA0F0,pc),r4 ; r4 set to 0x88
mov.l r3,@r15
add r14,r1 ; r1 ??? bc r14 is ???	
mov.b @(0x04,r14),r0 	
add r14,r4 ; r4 ??? bc r14 is ???	
mov.w @(loc_8C0AA0F2,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0AA100,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0AA0F4,pc),r0 ; r0 set to 0xC0
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0AA0F6,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0AA0F8,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0AA104,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x0D,r7 ; r7 set to 0x0d
mov.b r2,@(r0,r14) 	
mov 0x23,r0 ; r0 set to 0x23
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
extu.b r0,r0
cmp/eq 0x00,r0 	
bt/s loc_8C0AA0E0
mov 0x09,r6 ; r6 set to 0x09
cmp/eq 0x01,r0 	
bt loc_8C0AA0E6
cmp/eq 0x02,r0 	
bt loc_8C0AA108
cmp/eq 0x03,r0 	
bt loc_8C0AA0E0
cmp/eq 0x04,r0 	
bt loc_8C0AA0E6
cmp/eq 0x05,r0 	
bt loc_8C0AA108
bra loc_8C0AA10c
nop 	

loc_8C0AA0E0:
mov 0x21,r0 ; r0 set to 0x21
bra loc_8C0AA10c
mov.b r6,@(r0,r14) 	

loc_8C0AA0E6:
mov 0x21,r0 ; r0 set to 0x21
mov 0x05,r2 ; r2 set to 0x05
bra loc_8C0AA10c
mov.b r2,@(r0,r14) 	

loc_8C0AA0EE:
#data 0x02A4

loc_8C0AA0F0:
#data 0x0088

loc_8C0AA0F2:
#data 0x00Dc

loc_8C0AA0F4:
#data 0x00C0

loc_8C0AA0F6:
#data 0x012c

loc_8C0AA0F8:
#data 0x01A3
#data 0x0000

#align4
loc_8C0AA0FC:
#data bank03.loc_8c034e8c

loc_8C0AA100:
#data bank12.loc_8c129560

loc_8C0AA104:
#data bank12.loc_8c1294C8

loc_8C0AA108:
#data 0x0E74E021


loc_8C0AA10C:
mova @(loc_8C0AA248,pc),r0  ; r0 init to 0x8C0AA248
mov.l @(loc_8C0AA250,pc),r6 ; r6 set to 0x8C1575B4
fmov.s @r0,fr6 ; r6 ??	
mova @(loc_8C0AA24C,pc),r0  ; r0 set to 0x8C0AA24c
fmov.s @r0,fr5
mova @(loc_8C0AA254,pc),r0  ; r0 set to 0x8C0AA254
fmov.s @r0,fr4
mov.w @(loc_8C0AA242,pc),r0 ; r0 set to 0x130
mov.w @(r0,r5),r3
tst r3,r3
bf/s loc_8C0AA190
mov r6,r7
mov 0x23,r0 ; r0 set to 0x23
mov.b @(r0,r14),r3
mov 0x08,r0 ; r0 set to 0x08
extu.b r3,r3
shll2 r3
shll2 r3
add r3,r7
mov.l @r7,r3
lds r3,fpul 	
float fpul,fr3
fmul fr5,fr3
fdiv fr4,fr3
fneg fr3
fmov.s fr3,@(r0,r4) 	
mov 0x23,r0 ; r0 set to 0x23
mov.b @(r0,r14),r3
mov 0x0C,r0 ; r0 set to 0x0c
extu.b r3,r3
shll2 r3
shll2 r3
add r6,r3
mov.l @(0x04,r3),r2
lds r2,fpul 	
float fpul,fr3
fmul fr6,fr3
fdiv fr4,fr3
fmov.s fr3,@(r0,r4) 	
mov 0x23,r0 ; r0 set to 0x23
mov.b @(r0,r14),r3
extu.b r3,r3
shll2 r3
shll2 r3
add r6,r3
mov.l @(0x08,r3),r2
mov 0x5C,r0 ; r0 set to 0x5c
lds r2,fpul 	
float fpul,fr3
fmul fr5,fr3
fdiv fr4,fr3
fneg fr3
fmov.s fr3,@(r0,r14) 	
mov 0x23,r0 ; r0 set to 0x23
mov.b @(r0,r14),r3
extu.b r3,r3
shll2 r3
shll2 r3
add r3,r6
mov.l @(0x0C,r6),r3
lds r3,fpul 	
float fpul,fr3
fmul fr5,fr3
fdiv fr4,fr3
bra loc_8C0AA1F4
fneg fr3

#align4
loc_8C0AA190:
#data 0x02ECE023
#data 0x622CE008
#data 0x42084208
#data 0x6372372c
#data 0xF32D435a
#data 0xF343F352
#data 0xE023F437
#data 0xE00C03Ec
#data 0x4308633c
#data 0x336C4308
#data 0x425A5231
#data 0xF362F32d
#data 0xF437F343
#data 0x03ECE023
#data 0x4308633c
#data 0x336C4308
#data 0xE05C5232
#data 0xF32D425a
#data 0xF343F352
#data 0xE023FE37
#data 0x633C03Ec
#data 0x43084308
#data 0x5363363c
#data 0xF32D435a
#data 0xF343F352

#align4
loc_8C0AA1F4:
#data 0xD318E068
#data 0xE008FE37
#data 0xE034F346
#data 0xF230F256
#data 0xE00CFE27
#data 0xE038F346
#data 0xE515F256
#data 0xFE27F230
#data 0x06ECE021
#data 0x64E3430b
#data 0xE2FEE031
#data 0xBC890E24
#data 0x200864E3
#data 0xE0038B07
#data 0xE30080E4
#data 0x0E349008
#data 0x62F2E001
#data 0x8024

loc_8C0AA23A:
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0AA242:
#data 0x0130
#data 0x0000012c

#align4
loc_8C0AA248:
#data 0x40092492

#align4
loc_8C0AA24C:
#data 0x3FD55555

#align4
loc_8C0AA250:
#data 0x8C1575B4

loc_8C0AA254:
#data 0x47800000

#align4
loc_8C0AA258:
#data bank03.loc_8c034e8c


loc_8C0AA25C:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
bsr loc_8C0AA6Fc
mov r5,r13
mov.w @(loc_8C0AA360,pc),r0 ; r0 set to 0x19e
mov.b @(r0,r14),r2
tst r2,r2
bt loc_8C0AA2A8
mov.w @(loc_8C0AA362,pc),r0 ; r0 set to 0x1B0
mov r13,r5
mov.l @(r0,r14),r3
mov 0x03,r0 ; r0 set to 0x03
mov.l r3,@r15
mov.w r0,@(0x1C,r14) 	
mov.b @(0x05,r14),r0 	
add 0x01,r0 ; r0 set to 0x04
mov.b r0,@(0x05,r14) 	
bsr loc_8C0AA750
mov r14,r4
mov.l @r15,r2
mov.b @(0x03,r2),r0 	
tst r0,r0
bf loc_8C0AA2E2
mov.l @(loc_8C0AA370,pc),r4 ; r4 set to 0x8C26A518
mov 0x01,r0 ; r0 set to 0x01
mov 0x30,r5 ; r5 set to 0x30
mov.b r0,@(0x05,r4) 	
mov.b r0,@(0x06,r4) 	
mov r13,r4 ; r4 ??? bc r13 is ???	
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0AA374,pc),r3 ; r3 set to 0x8C04223a
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

#align4
loc_8C0AA2A8:
#data 0xB27EE500
#data 0x200864E3
#data 0x90578B0b
#data 0x02DD9357
#data 0x2238622d
#data 0x9053890a
#data 0x02DD9153
#data 0x2218622d
#data 0x8904

loc_8C0AA2CA:
#data 0xE003
#data 0x84E581Ee
#data 0x80E57001

#align4
loc_8C0AA2D4:
#data 0x65D364E3
#data 0x4F267F04
#data 0xA2376DF6
#data 0x6EF6


loc_8C0AA2E2:
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0AA2EC:
#data 0x70FF854e
#data 0x7001814e
#data 0x2008600f
#data 0xC7208B30
#data 0xF508D61e
#data 0xF408C71f
#data 0x034CE023
#data 0x633CE05c
#data 0x43004308
#data 0x6232336c
#data 0xF32D425a
#data 0xF353F342
#data 0xE023F437
#data 0xE068034c
#data 0x4308633c
#data 0x363C4300
#data 0x435A5361
#data 0xF342F32d
#data 0xF437F353
#data 0x034D9018
#data 0x89072338
#data 0xF346E05c
#data 0xF437F34d
#data 0xF346E068
#data 0xF437F34d

#align4
loc_8C0AA350:
#data 0xE300900d
#data 0x84450434
#data 0x80457001

#align4
loc_8C0AA35C:
#data 0x0009A1F8

loc_8C0AA360:
#data 0x019e

loc_8C0AA362:
#data 0x01B0
#data 0x0300034e
#data 0x0400034a
#data 0x019C0130

#align4
loc_8C0AA370:
#data 0x8C26A518

#align4
loc_8C0AA374:
#data bank04.loc_8c04223a

loc_8C0AA378:
#data 0x8C157614
#data 0x47800000
#data 0x3FD55555

#align4
loc_8C0AA384:
#data 0x6E432FE6
#data 0xE008949f
#data 0x6D532FD6
#data 0x959B34Ec
#data 0xF3464F22
#data 0xF4D6E034
#data 0xF43035Dc
#data 0xF4E6F34c
#data 0x03ED9093
#data 0x8F012338
#data 0xF44DF431

#align4
loc_8C0AA3B0:
#data 0xF435F38d
#data 0xE008891d
#data 0xE034F246
#data 0xE300F1D6
#data 0xFE17F120
#data 0xF246E00c
#data 0xF1D6E038
#data 0xFE17F120
#data 0xF437E010
#data 0x907B64E3
#data 0xE0030E34
#data 0xE00181Ee
#data 0x65D38054
#data 0x700184E5
#data 0x4F2680E5
#data 0xA1C16DF6
#data 0x6EF6

loc_8C0AA3F2:
#data 0x65D3
#data 0x64E3B182
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6A1A6


loc_8C0AA404:
mov.w @(0x1C,r4),r0 	
add 0xFF,r0
mov.w r0,@(0x1C,r4) 	
add 0x01,r0
exts.w r0,r0
tst r0,r0
bf loc_8C0AA420
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0AA4D2,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0AA420:
bra loc_8C0AA750
nop 	
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0AA428:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.l @(0x14,r14),r4
mov 0x02,r3 ; r3 set to 0x02
mov.w @(loc_8C0AA4CA,pc),r5 ; r5 set to 0x88
mov.b @(0x04,r4),r0 	
extu.b r0,r0
cmp/ge r3,r0
bf/s loc_8C0AA450
add r4,r5 ; r5 ??? bc r4 is ???	
mov.b @(0x04,r14),r0 	
mov 0x00,r2 ; r2 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0AA4D2,pc),r0 ; r0 set to 0x12c
mov.b r2,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0AA450:
#data 0x630385Ef
#data 0x3307855c
#data 0xD3208905
#data 0x64E3430b
#data 0x31EC9137
#data 0x2100

loc_8C0AA466:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0AA46C:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xF4,r15
mov.w @(loc_8C0AA4D4,pc),r0 ; r0 set to 0x1C8
mov r5,r13
mov r4,r14
mov.l @(r0,r13),r4
add 0x35,r0 ; r0 set to 0x1Fd
mov.b @(r0,r4),r3
tst r3,r3
bt loc_8C0AA4E8
mov 0x03,r0 ; r0 set to 0x03
mov.w @(loc_8C0AA4D8,pc),r7 ; r7 set to 0x89
mov.w r0,@(0x1C,r14) 	
mov 0x01,r3 ; r3 set to 0x01
mov.b @(0x05,r14),r0 	
mov 0x02,r2 ; r2 set to 0x02
mov 0x20,r5 ; r5 set to 0x20
mov r3,r6 ; r6 set to 0x01
add 0x01,r0 ; r0 set to 0x04
mov.b r0,@(0x05,r14) 	
mov.w @(loc_8C0AA4D6,pc),r0 ; r0 set to 0x1B4
mov.l r13,@(r0,r4) 	
add 0x42,r0 ; r0 set to 0x1F6
mov.b r3,@(r0,r4) 	
add 0x03,r0 ; r0 set to 0x1F9
mov.b r2,@(r0,r4) 	
add 0xA8,r0 ; r0 set to 0x1A1
mov.b r5,@(r0,r4) 	
mov.b r5,@(r0,r13) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(loc_8C0AA4E0,pc),r3 ; r3 set to 0x8C10235c
fmov.s fr3,@r15
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???	
mov 0x04,r0 ; r0 set to 0x04
fmov.s fr3,@(r0,r15) 	
jsr @r3
mov r15,r5 ; r5 ??? bc r15 is ???	
mov.l @(loc_8C0AA4E4,pc),r2 ; r2 set to 0x8C04223a
mov 0x49,r5 ; r5 set to 0x49
jsr @r2
mov r14,r4
bra loc_8C0AA4Ee
nop 	

loc_8C0AA4CA:
#data 0x0088
#data 0x013002A4
#data 0x019c

loc_8C0AA4D2:
#data 0x012c

loc_8C0AA4D4:
#data 0x01C8

loc_8C0AA4D6:
#data 0x01B4

loc_8C0AA4D8:
#data 0x0089
#data 0x0000

#align4
loc_8C0AA4DC:
#data bank03.loc_8c0334A8

loc_8C0AA4E0:
#data bank10.loc_8c10235c

loc_8C0AA4E4:
#data bank04.loc_8c04223a


loc_8C0AA4E8:
mov r13,r5
bsr loc_8C0AA6Fc
mov r14,r4

loc_8C0AA4EE:
mov r13,r5
bsr loc_8C0AA750
mov r14,r4
add 0x0C,r15
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0AA4FE:
#data 0x854e
#data 0x814E70Ff
#data 0x600F7001
#data 0x8B2D2008
#data 0xD641C742
#data 0xC742F508
#data 0xE023F408
#data 0xE05C034c
#data 0x4308633c
#data 0x336C4300
#data 0x425A6232
#data 0xF342F32d
#data 0xF437F353
#data 0x034CE023
#data 0x633CE068
#data 0x43004308
#data 0x5361363c
#data 0xF32D435a
#data 0xF353F342
#data 0x905EF437
#data 0x2338034d
#data 0xE05C8907
#data 0xF34DF346
#data 0xE068F437
#data 0xF34DF346
#data 0xF437

loc_8C0AA562:
#data 0x8445
#data 0x80457001

#align4
loc_8C0AA568:
#data 0x0009A0F2

#align4
loc_8C0AA56C:
#data 0x6E432FE6
#data 0xE008944c
#data 0x6D532FD6
#data 0x954834Ec
#data 0xF3464F22
#data 0xF4D6E034
#data 0xF43035Dc
#data 0xF4E6F34c
#data 0x03ED903d
#data 0x8F012338
#data 0xF44DF431

#align4
loc_8C0AA598:
#data 0xF435F38d
#data 0xE008891a
#data 0xE034F246
#data 0xF120F1D6
#data 0xE00CFE17
#data 0xE038F246
#data 0xF120F1D6
#data 0xE010FE17
#data 0xE003F437
#data 0xE00181Ee
#data 0x65D38054
#data 0x64E384E5
#data 0x80E57001
#data 0x6DF64F26
#data 0x6EF6A0D0

#align4
loc_8C0AA5D4:
#data 0xB09165D3
#data 0x4F2664E3
#data 0x64E365D3
#data 0xA0B56DF6
#data 0x6EF6


loc_8C0AA5E6:
mov.w @(0x1C,r4),r0 	
add 0xFF,r0
mov.w r0,@(0x1C,r4) 	
add 0x01,r0
exts.w r0,r0
tst r0,r0
bf loc_8C0AA602
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0AA610,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0AA602:
bra loc_8C0AA750
nop 	
#data 0x000b
#data 0x01300009
#data 0x02A40088

loc_8C0AA610:
#data 0x012c
#data 0x0000

#align4
loc_8C0AA614:
#data 0x8C157644
#data 0x47800000
#data 0x3FD55555


loc_8C0AA620:
mov 0x24,r0 ; r0 set to 0x24
mov.l r14,@-r15
mov.b @(r0,r5),r3
mov r4,r14
mov.w @(loc_8C0AA736,pc),r6 ; r6 set to 0x2A4
mov.b r3,@(r0,r14) 	
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r14),r3
add r5,r6 ; r6 ??? bc r5 is ???	
tst r3,r3
bf/s loc_8C0AA674
mov 0x00,r4 ; r4 set to 0x00
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3
tst r3,r3
bf loc_8C0AA660
mov.b @(0x05,r5),r0 	
tst r0,r0
bf loc_8C0AA68e
mov.w @(loc_8C0AA738,pc),r0 ; r0 set to 0x1D0
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x15,r0 	
bf loc_8C0AA68e
mov.b @(0x05,r14),r0 	
mov r14,r4 ; r4 ??? bc r14 is ???	
mov.l @(loc_8C0AA740,pc),r1 ; r1 set to 0x8C157674
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0AA660:
mov.b @(0x05,r5),r0 	
tst r0,r0
bf loc_8C0AA6C2
mov.w @(loc_8C0AA738,pc),r0 ; r0 set to 0x1D0
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x15,r0 	
bt loc_8C0AA6D0
bra loc_8C0AA6C2
nop 	

#align4
loc_8C0AA674:
#data 0x03ECE020
#data 0x8B192338
#data 0x600C8455
#data 0x8B048801
#data 0x005C9058
#data 0x881E600c
#data 0x8908


loc_8C0AA68E:
mov.b @(0x04,r14),r0 	
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0AA73A,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x01,r0 ; r0 set to 0x01
mov.b r0,@(0x04,r6) 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0AA6A0:
#data 0x64E384E5
#data 0x600CD127
#data 0x031E4008
#data 0x6EF6432b

#align4
loc_8C0AA6B0:
#data 0x600C8455
#data 0x8B048801
#data 0x005C903e
#data 0x881E600c
#data 0x8906


loc_8C0AA6C2:
mov.b @(0x04,r14),r0 	
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0AA73A,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0AA6D0:
mov.w @(loc_8C0AA73A,pc),r0 ; r0 set to 0x12c
mov.l @(loc_8C0AA748,pc),r1 ; r1 set to 0x8C157684
mov.b r4,@(r0,r14) 	
mov r14,r4
mov.b @(0x05,r14),r0 	
extu.b r0,r0 ; r0 set to 0x2c
shll2 r0 ; r0 set to 0xB0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0AA6E8:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0AA73A,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0AA6F6:
mov.l @(loc_8C0AA74C,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0AA6FC:
mov 0x68,r1 ; r1 set to 0x68
mov.w @(loc_8C0AA73C,pc),r5 ; r5 set to 0x88
add r4,r1 ; r1 ??? bc r4 is ???	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @r1,fr3
fmov.s @(r0,r4),fr2
mov 0x6C,r1 ; r1 set to 0x6c
add r4,r1 ; r1 ??? bc r4 is ???	
fadd fr3,fr2
add r4,r5 ; r5 ??? bc r4 is ???	
fmov.s fr2,@(r0,r4) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s @(r0,r4),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r4),fr3
mov 0x10,r0 ; r0 set to 0x10
fmov.s @(r0,r5),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r5) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s @(r0,r4),fr3
mov 0x14,r0 ; r0 set to 0x14
fmov.s @(r0,r5),fr2
fadd fr3,fr2
rts 	
fmov.s fr2,@(r0,r5) 	
;-------------------------------------------------------------------------------

loc_8C0AA736:
#data 0x02A4

loc_8C0AA738:
#data 0x01D0

loc_8C0AA73A:
#data 0x012c

loc_8C0AA73C:
#data 0x0088
#data 0x0000

#align4
loc_8C0AA740:
#data 0x8C157674

loc_8C0AA744:
#data 0x8C157688

loc_8C0AA748:
#data 0x8C157684

loc_8C0AA74C:
#data bank04.loc_8c0450C0

loc_8C0AA750:
#data 0xE0089662
#data 0xF366364c
#data 0xF256E034
#data 0xF230E010
#data 0xE034F366
#data 0xF427F230
#data 0xF366E00c
#data 0xF256E038
#data 0xF427F230

#align4
loc_8C0AA774:
#data 0x4F222FE6
#data 0xE0227FFc
#data 0x2F526E43
#data 0x233803Ec
#data 0xD3268B02
#data 0x64E3430b

#align4
loc_8C0AA78C:
#data 0x420BD225
#data 0xD32564E3
#data 0x64E3430b
#data 0x64E3913f
#data 0x210031Ec
#data 0x7F0465F2
#data 0xA0494F26
#data 0x6EF6

loc_8C0AA7AA:
#data 0x665c
#data 0x4608D320
#data 0xE034D71e
#data 0xF246363c
#data 0x7054F368
#data 0xF376F231
#data 0x8907F325
#data 0xF368E034
#data 0x7058F246
#data 0xF376F230
#data 0x8B01F235

#align4
loc_8C0AA7D4:
#data 0xE001000b
;-------------------------------------------------------------------------------

#align4
loc_8C0AA7D8:
#data 0x0009A002
#data 0x0009000b
;-------------------------------------------------------------------------------

#align4
loc_8C0AA7E0:
#data 0x2FE6C714
#data 0xF3084F22
#data 0xF246E038
#data 0xF2309016
#data 0xF1E65E46
#data 0x8B0BF125
#data 0xE001D40c
#data 0xE530D30e
#data 0x80468045
#data 0x64E3430b
#data 0xE0014F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0AA810:
#data 0x4F26E000
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x012C0088
#data 0x0000041c

#align4
loc_8C0AA820:
#data bank04.loc_8c045748

loc_8C0AA824:
#data bank03.loc_8c034dee

loc_8C0AA828:
#data bank03.loc_8c0334A8
#data 0x8C26A518

#align4
loc_8C0AA830:
#data 0x8C157698
#data 0xC2092492

#align4
loc_8C0AA838:
#data bank04.loc_8c04223a

loc_8C0AA83C:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0xFFEBFFFb
#data 0x7FFC4F22
#data 0x6D53E034
#data 0x9B5F9560
#data 0x2F42354c
#data 0x3B4CF3D6
#data 0xE008F246
#data 0xF356F231
#data 0x03DD9057
#data 0x2338F52c
#data 0xF5318F01
#data 0xF54d

loc_8C0AA876:
#data 0xF38d
#data 0x8B01F355
#data 0x0009A0D9

#align4
loc_8C0AA880:
#data 0xF608C727
#data 0xF408C727
#data 0xF5639048
#data 0xD02603Dc
#data 0x4308633c
#data 0x435A033d
#data 0xF53DF32d
#data 0x095AF362
#data 0xF743F73c
#data 0xF7636193
#data 0x0A5AF73d
#data 0x000960A3
#data 0x430BD31e
#data 0x815C0009
#data 0xC71D6C03
#data 0xF5086193
#data 0x000960A3
#data 0x430BD31b
#data 0x6E030009
#data 0x63CF9026
#data 0x02DCD615
#data 0xD718435a
#data 0x8F2F2228
#data 0x03DCF62d
#data 0x633CF06c
#data 0x363C4308
#data 0x63038561
#data 0xC93F60Ef
#data 0x4000435a
#data 0xE038037d
#data 0x435AF32d
#data 0xF352F22d
#data 0xF343F252
#data 0xF23EF243
#data 0xE00CF3D6
#data 0xF356F230
#data 0xF230E038
#data 0xF427A035
#data 0x01300088
#data 0x000001A3
#data 0x3FD55555
#data 0x43800000

#align4
loc_8C0AA928:
#data 0x8C157520

loc_8C0AA92C:
#data bank12.loc_8c129284
#data 0x40092492

#align4
loc_8C0AA934:
#data bank12.loc_8c129454

loc_8C0AA938:
#data 0x8C1576A0

loc_8C0AA93C:
#data 0x600C00Dc
#data 0x8B1E8802
#data 0x91809080
#data 0xF06C02Dc
#data 0x4208622c
#data 0x8561362c
#data 0x60EF6303
#data 0x435AC93f
#data 0x307C4000
#data 0xF32D031d
#data 0x435AE038
#data 0xF352F22d
#data 0xF343F252
#data 0xF23EF243
#data 0xE00CF3D6
#data 0xF356F230
#data 0xF230E038
#data 0xF427

loc_8C0AA982:
#data 0xE022
#data 0x600C004c
#data 0x8B178801
#data 0x024CE020
#data 0x8B132228
#data 0xE3018445
#data 0x3033600c
#data 0x9055890e
#data 0x70350EDe
#data 0x233803Ec
#data 0x2EE88B08
#data 0x904E8906
#data 0x222802Ed
#data 0xD3278902
#data 0x65E3430b

#align4
loc_8C0AA9BC:
#data 0xE0346EF2
#data 0x5EE39546
#data 0xE004FFD6
#data 0xD32335Ec
#data 0x74086453
#data 0x6CE3F348
#data 0xF346FF30
#data 0xFED6E038
#data 0xFE30E034
#data 0xE038FEF7
#data 0x430BFEE7
#data 0x85BC64C3
#data 0x401170Ff
#data 0xDA1A8B1f
#data 0xED00A01a

#align4
loc_8C0AA9F8:
#data 0x2EE85EE3
#data 0xE05C8919
#data 0xE034F3C6
#data 0xFEF7FF30
#data 0xF3C6E060
#data 0xFE30E038
#data 0x901EFEE7
#data 0x03CC02Ec
#data 0x89063320
#data 0xE02107Cc
#data 0xE51506Ec
#data 0x4A0B666c
#data 0x64E3

loc_8C0AAA2A:
#data 0x7D01

#align4
loc_8C0AAA2C:
#data 0x3D0385Bc
#data 0x8BE2

loc_8C0AAA32:
#data 0x7F04
#data 0xFEF94F26
#data 0x69F6FFF9
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x008001A3
#data 0x042001C8
#data 0x01410088

#align4
loc_8C0AAA54:
#data bank04.loc_8c04CC1c

loc_8C0AAA58:
#data bank03.loc_8c034dee

loc_8C0AAA5C:
#data bank03.loc_8c034F54
#data 0xE6002FE6
#data 0x6D432FD6
#data 0x6C532FC6
#data 0xE5012FB6
#data 0x4F222FA6
#data 0x9B46DA24
#data 0x64634A0b
#data 0x8D0B2008
#data 0xE0206E03
#data 0xE300D221
#data 0x1ED61E24
#data 0x0EC41EE5
#data 0x0E34E021
#data 0x0EB5E026
#data 0xE602E501
#data 0x64E34A0b
#data 0x8D0B2008
#data 0xE0206403
#data 0xE301D218
#data 0x14D61424
#data 0x04C414E5
#data 0x0434E021
#data 0x04B5E026
#data 0xE602E501
#data 0x64E34A0b
#data 0x8D0B2008
#data 0xE0206403
#data 0xE302D20f
#data 0x14D61424
#data 0x04C414E5
#data 0x0434E021
#data 0x04B5E026
#data 0x000960E3
#data 0x6AF64F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0AAAF2:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0AAB10,pc),r1 ; r1 set to 0x8C1577A0
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x3401

#align4
loc_8C0AAB08:
#data bank04.loc_8c044F12

loc_8C0AAB0C:
#data loc_8c0aAAF2

loc_8C0AAB10:
#data 0x8C1577A0


loc_8C0AAB14:
mov.l r14,@-r15
mova @(loc_8C0AAC7C,pc),r0  ; r0 init to 0x8C0AAC7c
mov.l r13,@-r15
mov r4,r14
mov.l r12,@-r15
mov 0x00,r13 ; r13 set to 0x00
mov.l r11,@-r15
fmov.s fr15,@-r15
fmov.s fr14,@-r15
mov.l @(loc_8C0AAC88,pc),r3 ; r3 set to 0x20204060
mov.w @(loc_8C0AAC6A,pc),r1 ; r1 set to 0xDc
mov.w @(loc_8C0AAC64,pc),r12 ; r12 set to 0x88
mov.w @(loc_8C0AAC66,pc),r4 ; r4 set to 0x2A4
add r14,r1 ; r1 ??? bc r14 is ???	
sts.l pr,@-r15
fmov.s @r0,fr14
mova @(loc_8C0AAC84,pc),r0  ; r0 set to 0x8C0AAC84
fmov.s @r0,fr15
add r14,r12 ; r12 ??? bc r14 is ???	
mov.w @(loc_8C0AAC68,pc),r0 ; r0 set to 0x13c
add r5,r4 ; r4 ??? bc r5 is ???	
mov.w @(loc_8C0AAC6A,pc),r2 ; r2 set to 0xDc
mov.l r3,@(r0,r14) 	
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0AAC8C,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0 ; r0 set to 0x13d
mov.l @(loc_8C0AAC80,pc),r11 ; r11 set to 0x8C1577C6
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0AAC6C,pc),r0 ; r0 set to 0xC0
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0AAC6E,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0AAC70,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0AAC90,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.l @(loc_8C0AAC94,pc),r6 ; r6 set to 0x8C26A518
mov.b @(r0,r5),r2
mov.b r13,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov.b @(0x05,r4),r0 	
add 0x01,r0 ; r0 set to 0x32
mov.b r0,@(0x05,r4) 	
mova @(loc_8C0AAC98,pc),r0  ; r0 set to 0x8C0AAC98
fmov.s @r0,fr4
mov.w @(loc_8C0AAC72,pc),r0 ; r0 set to 0x130
mov.l @(loc_8C0AAC9C,pc),r4 ; r4 set to 0x8C1577B4
mov.w @(r0,r5),r3
tst r3,r3
bf loc_8C0AABF6
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
mov 0x21,r2 ; r2 set to 0x21
add r14,r2 ; r2 ??? bc r14 is ???	
extu.b r0,r0
mov.b @r2,r2
mov r0,r3
shll2 r3
shll r0
extu.b r2,r2
add r3,r0
shll r2
add r4,r0
mov.w @(r0,r2),r3
mov.w @(loc_8C0AAC74,pc),r0 ; r0 set to 0x8c
lds r3,fpul 	
fmov.s @(r0,r6),fr2
mov 0x34,r0 ; r0 set to 0x34
float fpul,fr3
fmul fr4,fr3
fdiv fr15,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3
extu.b r3,r3
shll2 r3
add r11,r3
mov.w @r3,r3
lds r3,fpul 	
float fpul,fr3
fmul fr4,fr3
fdiv fr15,fr3
bra loc_8C0AAC38
fneg fr3

loc_8C0AABF6:
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
mov 0x21,r2 ; r2 set to 0x21
add r14,r2 ; r2 ??? bc r14 is ???	
extu.b r0,r0
mov.b @r2,r2
mov r0,r3
shll2 r3
shll r0
extu.b r2,r2
add r3,r0
shll r2
add r4,r0
mov.w @(r0,r2),r3
mov.w @(loc_8C0AAC64,pc),r0 ; r0 set to 0x88
lds r3,fpul 	
fmov.s @(r0,r6),fr2
mov 0x34,r0 ; r0 set to 0x34
float fpul,fr3
fmul fr4,fr3
fdiv fr15,fr3
fsub fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3
extu.b r3,r3
shll2 r3
add r11,r3
mov.w @r3,r3
lds r3,fpul 	
float fpul,fr3
fmul fr4,fr3
fdiv fr15,fr3

loc_8C0AAC38:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fmov.s fr3,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???	
extu.b r0,r0
cmp/eq 0x02,r0 	
bt loc_8C0AACA4
mova @(loc_8C0AACA0,pc),r0  ; r0 set to 0x8C0AACA0, r0 set to 0x8C0AACA0
fmov.s @r0,fr3
mov 0x21,r3 ; r3 set to 0x21, r3 set to 0x21
mov.w @(loc_8C0AAC76,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
fmov.s @(r0,r5),fr2
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov.w @(loc_8C0AAC78,pc),r0 ; r0 set to 0x255, r0 set to 0x255
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x03,r0 	
mov.w @(loc_8C0AAC7A,pc),r0 ; r0 set to 0x1A1, r0 set to 0x1A1
bra loc_8C0AACD2
mov.b r3,@(r0,r14) 	

loc_8C0AAC64:
#data 0x0088

loc_8C0AAC66:
#data 0x02A4

loc_8C0AAC68:
#data 0x013c

loc_8C0AAC6A:
#data 0x00Dc

loc_8C0AAC6C:
#data 0x00C0

loc_8C0AAC6E:
#data 0x012c

loc_8C0AAC70:
#data 0x01A3

loc_8C0AAC72:
#data 0x0130

loc_8C0AAC74:
#data 0x008c

loc_8C0AAC76:
#data 0x041c

loc_8C0AAC78:
#data 0x0255

loc_8C0AAC7A:
#data 0x01A1

#align4
loc_8C0AAC7C:
#data 0x40092492

#align4
loc_8C0AAC80:
#data 0x8C1577C6

loc_8C0AAC84:
#data 0x43800000

#align4
loc_8C0AAC88:
#data 0x20204060

#align4
loc_8C0AAC8C:
#data bank12.loc_8c129560

loc_8C0AAC90:
#data bank12.loc_8c1294C8

loc_8C0AAC94:
#data 0x8C26A518

#align4
loc_8C0AAC98:
#data 0x3FD55555

#align4
loc_8C0AAC9C:
#data 0x8C1577B4

loc_8C0AACA0:
#data 0x439A4924


loc_8C0AACA4:
mov 0x21,r0 ; r0 set to 0x21
mov.w @(loc_8C0AAD52,pc),r1 ; r1 set to 0x2000
mov.b @(r0,r14),r2
mov.w @(loc_8C0AAD54,pc),r0 ; r0 set to 0x41c
extu.b r2,r2
mov r2,r3
shll r2
add r3,r2
fmov.s @(r0,r5),fr2
shll8 r2
shll2 r2
shll2 r2
add r1,r2
lds r2,fpul 	
mov 0x38,r0 ; r0 set to 0x38
mov 0x39,r3 ; r3 set to 0x39
float fpul,fr3
fmul fr14,fr3 ; r3 ??? bc r14 is ???	
fdiv fr15,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov.w @(loc_8C0AAD56,pc),r0 ; r0 set to 0x1A1
mov.b r3,@(r0,r14) 	

loc_8C0AACD2:
mov.w @(loc_8C0AAD58,pc),r0 ; r0 set to 0x1AC, r0 set to 0x1Ac
mov.l @(loc_8C0AAD5C,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
mov.w r13,@(r0,r14) 	
add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19e
mov.b r13,@(r0,r14) 	
add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4
mov.l r13,@(r0,r14) 	
mov.b @(0x02,r14),r0 	
mov.l @r3,r2
extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4
shll r0 ; r0 set to 0x188, r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1 ; r1 ??? bc r2 is ???	
add 0x01,r1
mov.w r1,@(r0,r2) 	
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
extu.b r3,r3
shll2 r3
add r11,r3
mov.w @(0x02,r3),r0 	
mov r0,r3 ; r3 set to 0x20, r3 set to 0x20
lds r3,fpul 	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
float fpul,fr3
fmul fr14,fr3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
fdiv fr15,fr3
fmov.s fr3,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fldi0 fr3
fmov.s fr3,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr3,@(r0,r14) 	
mov 0x44,r4 ; r4 set to 0x44, r4 set to 0x44
mov.w @(loc_8C0AAD5A,pc),r0 ; r0 set to 0x19C, r0 set to 0x19c
mov 0x15,r5 ; r5 set to 0x15, r5 set to 0x15
mov.l @(loc_8C0AAD60,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
mov 0x17,r6 ; r6 set to 0x17, r6 set to 0x17
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x19D, r0 set to 0x19d
mov.b r4,@(r0,r14) 	
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???, r4 ??? bc r14 is ???	
mov 0x22,r0 ; r0 set to 0x22, r0 set to 0x22
mov.b r13,@(r0,r12) 	
mov 0x23,r0 ; r0 set to 0x23, r0 set to 0x23
mov.b r13,@(r0,r12) 	
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
mov.b r13,@(r0,r12) 	
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
mov.l @(loc_8C0AAD64,pc),r0 ; r0 set to 0x8C1577B0, r0 set to 0x8C1577B0
extu.b r3,r3
mov.b @(r0,r3),r2
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
mov.b r2,@(r0,r12) 	
lds.l @r15+,pr 	
fmov.s @r15+,fr14
fmov.s @r15+,fr15
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0AAD52:
#data 0x2000

loc_8C0AAD54:
#data 0x041c

loc_8C0AAD56:
#data 0x01A1

loc_8C0AAD58:
#data 0x01Ac

loc_8C0AAD5A:
#data 0x019c

#align4
loc_8C0AAD5C:
#data 0x8C2896B0

#align4
loc_8C0AAD60:
#data bank03.loc_8c034e8c

loc_8C0AAD64:
#data 0x8C1577B0

loc_8C0AAD68:
#data 0xE15C2FE6
#data 0xE0346E43
#data 0x949C31Ec
#data 0xF2E64F22
#data 0xF31834Ec
#data 0x31ECE168
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
#data 0xE021FE27
#data 0x6243034c
#data 0x4300907e
#data 0x332C015d
#data 0x2311E020
#data 0x4300034c
#data 0x6131332c
#data 0x611D9375
#data 0x89062138
#data 0xE038D13b
#data 0x415AF2E6
#data 0xF230F30d
#data 0xFE27

loc_8C0AADDA:
#data 0xE020
#data 0x034C6243
#data 0x332C4300
#data 0x93656131
#data 0x2138611d
#data 0xD1348906
#data 0xF2E6E038
#data 0xF30D415a
#data 0xFE27F231

#align4
loc_8C0AADFC:
#data 0x034CE020
#data 0x7301E500
#data 0xE0210434
#data 0xE30F024c
#data 0x04247201
#data 0x024CE020
#data 0x04242239
#data 0x014CE021
#data 0x04142139
#data 0x02EC9049
#data 0x8D062228
#data 0x6043E402
#data 0x80E40009
#data 0x00096053
#data 0x80E5

loc_8C0AAE36:
#data 0x903f
#data 0x233803Ec
#data 0x60438905
#data 0x80E40009
#data 0x00096053
#data 0x80E5

loc_8C0AAE4A:
#data 0xD31e
#data 0x64E3430b
#data 0x420BD21d
#data 0xD31D64E3
#data 0x64E3430b
#data 0x8B012008
#data 0x80E4E003

#align4
loc_8C0AAE64:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0AAE6A:
#data 0x2FE6
#data 0xF38D6E43
#data 0xD117E303
#data 0x941AE523
#data 0x84E54F22
#data 0x700134Ec
#data 0xE06C80E5
#data 0xE068FE37
#data 0xE021FE37
#data 0x600C00Ec
#data 0x001D4000
#data 0xE02281Ee
#data 0xD30E0434
#data 0x64E3430b
#data 0xD20D4F26
#data 0xE61864E3
#data 0x422BE515
#data 0x00886EF6
#data 0x2000034a
#data 0x019E1000
#data 0x0000019f
#data 0x40892492
#data 0x40092492

#align4
loc_8C0AAEC4:
#data bank03.loc_8c034dee

loc_8C0AAEC8:
#data bank04.loc_8c045748

loc_8C0AAECC:
#data bank03.loc_8c0332E0

loc_8C0AAED0:
#data 0x8C1577D2

loc_8C0AAED4:
#data bank04.loc_8c042008

loc_8C0AAED8:
#data bank03.loc_8c034e8c

loc_8C0AAEDC:
#data 0x2FD62FE6
#data 0x7FFC4F22
#data 0x6E439060
#data 0xE402935d
#data 0x2F3233Ec
#data 0x222802Ec
#data 0xED008D06
#data 0x00096043
#data 0x60D380E4
#data 0x80E50009

#align4
loc_8C0AAF04:
#data 0x03EC9051
#data 0x89052338
#data 0x00096043
#data 0x60D380E4
#data 0x80E50009

#align4
loc_8C0AAF18:
#data 0xD324E15c
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
#data 0x600E64E3
#data 0x891D4011
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x8B172008
#data 0x420BD211
#data 0xE00164E3
#data 0xE02281Ee
#data 0x023C63F2
#data 0x032472Ff
#data 0x2228622e
#data 0x84E48B0a
#data 0x80E47001
#data 0x000960D3
#data 0xE515D309
#data 0xE61980E5
#data 0x64E3430b

#align4
loc_8C0AAF98:
#data 0x7F0464E3
#data 0xD2064F26
#data 0x422B6DF6
#data 0x00886EF6
#data 0x019F019e

#align4
loc_8C0AAFAC:
#data bank03.loc_8c034dee

loc_8C0AAFB0:
#data loc_8c0aB274

loc_8C0AAFB4:
#data bank03.loc_8c034e8c

loc_8C0AAFB8:
#data bank04.loc_8c045748

loc_8C0AAFBC:
#data 0xE15C2FE6
#data 0xE0346E43
#data 0x949331Ec
#data 0xF2E64F22
#data 0xF31834Ec
#data 0x31ECE168
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
#data 0xE702FE27
#data 0x03EC9077
#data 0x8D062338
#data 0x6073E600
#data 0x80E40009
#data 0x00096063
#data 0x80E5

loc_8C0AB016:
#data 0x906d
#data 0x233803Ec
#data 0x60738905
#data 0x80E40009
#data 0x00096063
#data 0x80E5

loc_8C0AB02A:
#data 0xE024
#data 0x2338034c
#data 0x90608B08
#data 0x600D005d
#data 0x8907C820
#data 0xE201E024
#data 0x0424A004

#align4
loc_8C0AB044:
#data 0xE33C85Ee
#data 0x8B053037

#align4
loc_8C0AB04C:
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x8B032008

#align4
loc_8C0AB058:
#data 0x64E34F26
#data 0x6EF6AF05

#align4
loc_8C0AB060:
#data 0x430BD326
#data 0x4F2664E3
#data 0x64E3D225
#data 0x6EF6422b


loc_8C0AB070:
mov 0x3C,r0 ; r0 set to 0x3c
mov.w @(loc_8C0AB0F0,pc),r6 ; r6 set to 0x88
mov.w r0,@(0x1C,r4) 	
mov.w @(loc_8C0AB0F8,pc),r0 ; r0 set to 0x34a
mov.w @(r0,r5),r0 ; r0 ??? bc r5 is ???	
extu.w r0,r0
tst 0x20,r0 	
bt/s loc_8C0AB08a
add r4,r6 ; r6 ??? bc r4 is ???	
mov 0x24,r0 ; r0 set to 0x24
mov 0x00,r2 ; r2 set to 0x00
bra loc_8C0AB090
mov.b r2,@(r0,r6) 	

loc_8C0AB08A:
mov 0x24,r0 ; r0 set to 0x24
mov 0x01,r1 ; r1 set to 0x01
mov.b r1,@(r0,r6) 	

loc_8C0AB090:
mov.b @(0x05,r4),r0 	
add 0x01,r0 ; r0 set to 0x25
bra loc_8C0AAFBc
mov.b r0,@(0x05,r4) 	

#align4
loc_8C0AB098:
#data 0xE15C2FE6
#data 0x31EC6E43
#data 0xD316E034
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
#data 0x420BD209
#data 0x200864E3
#data 0xE0038B01
#data 0x80E4

loc_8C0AB0EA:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0AB0F0:
#data 0x0088
#data 0x019e
#data 0x034E019f

loc_8C0AB0F8:
#data 0x034a
#data 0x0000

#align4
loc_8C0AB0FC:
#data bank03.loc_8c034dee

loc_8C0AB100:
#data bank04.loc_8c045748

loc_8C0AB104:
#data bank03.loc_8c0332E0

loc_8C0AB108:
#data 0x4F222FE6
#data 0x90957FFc
#data 0x2F526E43
#data 0x233803Ec
#data 0x64E38F04
#data 0x03EC908f
#data 0x89022338

#align4
loc_8C0AB124:
#data 0x700184E5
#data 0x80E5

loc_8C0AB12A:
#data 0xD347
#data 0x0009430b
#data 0x64E365F2
#data 0x4F267F04
#data 0x6EF6AFAe


loc_8C0AB13C:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
extu.b r0,r0
cmp/eq 0x00,r0 	
bt loc_8C0AB156
cmp/eq 0x01,r0 	
bt loc_8C0AB166
cmp/eq 0x02,r0 	
bt loc_8C0AB176
bra loc_8C0AB186
nop 	

loc_8C0AB156:
mov.b @(0x05,r14),r0 	
mov r14,r4
mov.l @(loc_8C0AB24C,pc),r1 ; r1 set to 0x8C1577D8
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0AB166:
mov.b @(0x05,r14),r0 	
mov r14,r4
mov.l @(loc_8C0AB250,pc),r1 ; r1 set to 0x8C1577Dc
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0AB176:
mov.b @(0x05,r14),r0 	
mov r14,r4
mov.l @(loc_8C0AB254,pc),r1 ; r1 set to 0x8C1577E8
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0AB186:
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0AB18A:
#data 0x2FE6
#data 0xD3324F22
#data 0x6E43430b
#data 0x8B052008
#data 0xE30084E4
#data 0x80E47001
#data 0x0E34904e

#align4
loc_8C0AB1A4:
#data 0xD32DE15c
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
#data 0x6EF6

loc_8C0AB1E6:
#data 0x8445
#data 0x80457001
#data 0xF308C71c
#data 0xF437E05c
#data 0xF38DE068
#data 0x9022F437
#data 0x2338034d
#data 0xE05C8B03
#data 0xF34DF346
#data 0xF437

loc_8C0AB20A:
#data 0xC716
#data 0xE060F308
#data 0xC715F437
#data 0xE06CF308
#data 0xF437AFB7


loc_8C0AB21C:
mov r4,r3
mov.l @(loc_8C0AB26C,pc),r1 ; r1 set to 0x8C1577F0
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0AB22E:
mov.w @(loc_8C0AB244,pc),r3 ; r3 set to 0x2A4
mov.l @(loc_8C0AB270,pc),r2 ; r2 set to 0x8C0450C0
add r3,r5
mov.b @(0x05,r5),r0 	
add 0xFF,r0
jmp @r2
mov.b r0,@(0x05,r5) 	
#data 0x019F019e
#data 0x0130012c

loc_8C0AB244:
#data 0x02A4
#data 0x0000

#align4
loc_8C0AB248:
#data bank04.loc_8c045748

loc_8C0AB24C:
#data 0x8C1577D8

loc_8C0AB250:
#data 0x8C1577Dc

loc_8C0AB254:
#data 0x8C1577E8

loc_8C0AB258:
#data bank03.loc_8c0334A8

loc_8C0AB25C:
#data bank03.loc_8c034dee
#data 0x3FD55555
#data 0x404DB6Db
#data 0x3F092492

#align4
loc_8C0AB26C:
#data 0x8C1577F0

loc_8C0AB270:
#data bank04.loc_8c0450C0

loc_8C0AB274:
#data 0xE6022FE6
#data 0xD35A4F22
#data 0x430B6E43
#data 0x2008E501
#data 0x64038D08
#data 0xE026D357
#data 0x939C1434
#data 0x142652E6
#data 0x043514E5

#align4
loc_8C0AB298:
#data 0x00096043
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0AB2A2:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0AB3EC,pc),r1 ; r1 set to 0x8C1577F8
extu.b r0,r0
mov.l @(0x14,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0AB2B6:
#data 0x908a
#data 0x9189D34d
#data 0x97854F22
#data 0x9285314c
#data 0x374C5646
#data 0x84440436
#data 0x7001D349
#data 0x907E8044
#data 0x326C430b
#data 0xE201907c
#data 0x71506143
#data 0x84620424
#data 0x84618042
#data 0xE0508041
#data 0xF437F366
#data 0xF366E054
#data 0x906EF437
#data 0x0434036c
#data 0x026C7001
#data 0xE0300424
#data 0x6263036c
#data 0x04347250
#data 0x430BD33a
#data 0xE024E00c
#data 0x0424026c
#data 0xF308C738
#data 0xF73AC738
#data 0xE004F308
#data 0x9057F737
#data 0x2338035d
#data 0x66738B03
#data 0xF34DF368
#data 0xF63a

loc_8C0AB336:
#data 0xE034
#data 0xF256F378
#data 0xF230E322
#data 0xE004F427
#data 0xE038F376
#data 0xE544F256
#data 0xF427F230
#data 0x04549043
#data 0x04547001
#data 0x04347004
#data 0xE500700b
#data 0x0455D328
#data 0x045470F2
#data 0x04567026
#data 0x62328442
#data 0x4000600c
#data 0x012D727c
#data 0xE61AE515
#data 0x02157101
#data 0x422BD221
#data 0x4F26

loc_8C0AB386:
#data 0x9029
#data 0x6E432FE6
#data 0x03EC4F22
#data 0x8F0E2338
#data 0x902254E6
#data 0x233803Ec
#data 0x901F8B09
#data 0xE038F346
#data 0xF235F2E6
#data 0x90198930
#data 0xE038F346
#data 0xFE37

loc_8C0AB3B2:
#data 0x84E4
#data 0x7001E400
#data 0x604380E4
#data 0x80E50009
#data 0x0E449008
#data 0x000B4F26
#data 0x34026EF6
#data 0x013C0088
#data 0x00C000Dc
#data 0x01A3012c
#data 0x019C0130
#data 0x019F019e
#data 0x0000041c

#align4
loc_8C0AB3E4:
#data bank04.loc_8c044F12

loc_8C0AB3E8:
#data loc_8c0aB2A2

loc_8C0AB3EC:
#data 0x8C1577F8
#data 0x08080808

#align4
loc_8C0AB3F4:
#data bank12.loc_8c129560

loc_8C0AB3F8:
#data bank12.loc_8c1294C8
#data 0x41C80000
#data 0x41F00000
#data 0x8C2896B0

#align4
loc_8C0AB408:
#data bank03.loc_8c034e8c

loc_8C0AB40C:
#data 0xD338E15c
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
#data 0x64E3D229
#data 0x6EF6422b
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0AB45A:
#data 0x9645
#data 0xF256E034
#data 0xF368364c
#data 0xF427F230
#data 0xF366E004
#data 0xF256E038
#data 0xF427F230
#data 0xF308C720
#data 0xF437E05c
#data 0xF38DE068
#data 0xC71EF437
#data 0xE060F308
#data 0xC71DF437
#data 0xE06CF308
#data 0x902AF437
#data 0x2338035d
#data 0xE05C8B03
#data 0xF34DF346
#data 0xF437

loc_8C0AB4A2:
#data 0x8445
#data 0x000B7001
#data 0x8045
;-------------------------------------------------------------------------------

loc_8C0AB4AA:
mov r4,r3
mov.l @(loc_8C0AB504,pc),r1 ; r1 set to 0x8C157808
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0AB4BC:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
mov r14,r5
mov.w @(loc_8C0AB4EC,pc),r7 ; r7 set to 0x409
mov 0x01,r6 ; r6 set to 0x01
mov.l @(loc_8C0AB508,pc),r3 ; r3 set to 0x8C10235c
add 0x01,r0
mov.l @(0x18,r14),r4
mov.b r0,@(0x04,r14) 	
jsr @r3
add 0x34,r5
lds.l @r15+,pr 	
mov.l @(loc_8C0AB50C,pc),r2 ; r2 set to 0x8C04223a
mov 0x49,r5 ; r5 set to 0x49
mov r14,r4
jmp @r2
mov.l @r15+,r14

loc_8C0AB4E2:
mov.l @(loc_8C0AB510,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x01300088

loc_8C0AB4EC:
#data 0x0409
#data 0x0000

#align4
loc_8C0AB4F0:
#data bank03.loc_8c034dee

loc_8C0AB4F4:
#data bank04.loc_8c045748
#data 0x40555555
#data 0xC0092492
#data 0xBE892492

#align4
loc_8C0AB504:
#data 0x8C157808

loc_8C0AB508:
#data bank10.loc_8c10235c

loc_8C0AB50C:
#data bank04.loc_8c04223a

loc_8C0AB510:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0xE600D356
#data 0x2F501F41
#data 0x430BE501
#data 0x20086463
#data 0x64038D0d
#data 0xE020D352
#data 0x52F11434
#data 0xE2001426
#data 0x043463F0
#data 0x9390E021
#data 0xE0260424
#data 0x7F080435
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0AB54E:
#data 0x2FE6
#data 0x7FFC4F22
#data 0xE5012F50
#data 0x6E43D346
#data 0x430BE602
#data 0x200864E3
#data 0x64038D0e
#data 0xE020D343
#data 0x52E61434
#data 0x14E51426
#data 0x043403Ec
#data 0x62F0E021
#data 0x04249371
#data 0x0435E026

#align4
loc_8C0AB584:
#data 0x00096043
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0AB590:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0AB67C,pc),r1 ; r1 set to 0x8C157810
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0AB5A4:
mov.l r14,@-r15
mov r4,r14
mov.l @(loc_8C0AB680,pc),r3 ; r3 set to 0x10101010
mov.w @(loc_8C0AB666,pc),r0 ; r0 set to 0x13c
mov.l r13,@-r15
mov r5,r13
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
sts.l pr,@-r15
mov.l r3,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.w @(loc_8C0AB664,pc),r11 ; r11 set to 0x88
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
add r14,r11 ; r11 ??? bc r14 is ???	
tst r3,r3
bf/s loc_8C0AB5D8
mov 0x01,r12 ; r12 set to 0x01
bra loc_8C0AB5D4
mov 0x0B,r10

#align4
loc_8C0AB5CC:
#data 0xBFBE65A3
#data 0x7AFF64E3

#align4
loc_8C0AB5D4:
#data 0x89F93AC3


loc_8C0AB5D8:
mov.b @(0x04,r14),r0 	
mov.w @(loc_8C0AB668,pc),r1 ; r1 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0AB684,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0AB66A,pc),r0 ; r0 set to 0xC0
mov.w @(loc_8C0AB668,pc),r2 ; r2 set to 0xDc
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0AB66C,pc),r0 ; r0 set to 0x12c
mov r14,r1
add 0x50,r1
mov.b r12,@(r0,r14) 	
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
mov.w @(loc_8C0AB66E,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0AB688,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov 0x00,r4 ; r4 set to 0x00
mov.b r2,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r12,@(r0,r14) 	
mov r4,r0 ; r0 set to 0x00
nop 	
mov.b r0,@(0x0A,r11) 	
mov.w r0,@r11
mov.w r0,@(0x04,r11) 	
mov.w r0,@(0x02,r11) 	
mov.w r0,@(0x08,r11) 	
mov r12,r0 ; r0 ??? bc r12 is ???	
nop 	
mov.w r0,@(0x06,r11) 	
mov 0x42,r3 ; r3 set to 0x42
mov.w @(loc_8C0AB670,pc),r0 ; r0 set to 0x19c
mov 0x40,r2 ; r2 set to 0x40
mov.b r3,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x19d
mov.b r2,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
extu.b r0,r0
cmp/eq 0x02,r0 	
bf loc_8C0AB68c
mov.w @(loc_8C0AB672,pc),r0 ; r0 set to 0x1A1
mov 0x34,r2 ; r2 set to 0x34
bra loc_8C0AB692
mov.b r2,@(r0,r14) 	
#data 0x3403

loc_8C0AB664:
#data 0x0088

loc_8C0AB666:
#data 0x013c

loc_8C0AB668:
#data 0x00Dc

loc_8C0AB66A:
#data 0x00C0

loc_8C0AB66C:
#data 0x012c

loc_8C0AB66E:
#data 0x01A3

loc_8C0AB670:
#data 0x019c

loc_8C0AB672:
#data 0x01A1

#align4
loc_8C0AB674:
#data bank04.loc_8c044F12

loc_8C0AB678:
#data loc_8c0aB590

loc_8C0AB67C:
#data 0x8C157810

loc_8C0AB680:
#data 0x10101010

#align4
loc_8C0AB684:
#data bank12.loc_8c129560

loc_8C0AB688:
#data bank12.loc_8c1294C8


loc_8C0AB68C:
mov.w @(loc_8C0AB7B6,pc),r0 ; r0 set to 0x1A1
mov 0x02,r3 ; r3 set to 0x02
mov.b r3,@(r0,r14) 	

loc_8C0AB692:
mov.w @(loc_8C0AB7B8,pc),r0 ; r0 set to 0x1AC, r0 set to 0x1Ac
mov.l @(loc_8C0AB7C4,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
mov.w r4,@(r0,r14) 	
add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19e
mov.b r4,@(r0,r14) 	
add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4
mov.l r4,@(r0,r14) 	
mov.b @(0x02,r14),r0 	
mov.l @r3,r2
extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4
mov.l @(loc_8C0AB7C8,pc),r3 ; r3 set to 0x8C045748, r3 set to 0x8C045748
shll r0 ; r0 set to 0x188, r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2) 	
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
bra loc_8C0AB85c
mov.l @r15+,r14

loc_8C0AB6C8:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0AB7BC,pc),r5 ; r5 set to 0x2A4
mov.w @(loc_8C0AB7BA,pc),r4 ; r4 set to 0x88
add r13,r5 ; r5 ??? bc r13 is ???	
add r14,r4 ; r4 ??? bc r14 is ???	
sts.l pr,@-r15
mov.b @(0x09,r5),r0 	
mov.b r0,@(0x0A,r4) 	
mov.b @(0x0A,r4),r0 	
cmp/pz r0
bt loc_8C0AB6F2
mov.b @(0x04,r14),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0AB7BE,pc),r0 ; r0 set to 0x12c
bra loc_8C0AB710
mov.b r3,@(r0,r14) 	

loc_8C0AB6F2:
mov.w @r4,r2
mov r13,r5
add 0x01,r2
mov.w r2,@r4
mov.w @r4,r0
and 0x01,r0 	
mov.w r0,@r4
bsr loc_8C0AB8F0
mov r14,r4
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
mov.l @r15+,r13
bra loc_8C0AB99c
mov.l @r15+,r14

loc_8C0AB710:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0AB718:
mov.w @(loc_8C0AB7C0,pc),r0 ; r0 set to 0x140
mov.w @(loc_8C0AB7BA,pc),r6 ; r6 set to 0x88
mov.b @(r0,r5),r3
tst r3,r3
bt/s loc_8C0AB738
add r4,r6 ; r6 ??? bc r4 is ???	
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
cmp/eq 0x7F,r0 	
bf loc_8C0AB72e
bra loc_8C0AB730
mov 0xFF,r0

loc_8C0AB72E:
#data 0xE001

#align4
loc_8C0AB730:
#data 0xE3008161
#data 0x05349044

#align4
loc_8C0AB738:
#data 0x40118561
#data 0xE0088904
#data 0x8445814e
#data 0x80457001

#align4
loc_8C0AB748:
#data 0x0009AFBe


loc_8C0AB74C:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l r5,@r15
mov.l @(0x14,r14),r4
mov.w @(loc_8C0AB7BA,pc),r13 ; r13 set to 0x88
mov.b @(0x04,r4),r0 	
mov.w @(loc_8C0AB7BA,pc),r3 ; r3 set to 0x88
add r4,r13 ; r13 ??? bc r4 is ???	
mov.w @(loc_8C0AB7BA,pc),r11 ; r11 set to 0x88
extu.b r0,r0
mov.l @(0x08,r14),r5
cmp/eq 0x01,r0 	
add r14,r11 ; r11 ??? bc r14 is ???	
add r3,r5
bt/s loc_8C0AB77e
mov 0x00,r12 ; r12 set to 0x00
mov.b @(0x04,r14),r0 	
add 0x01,r0
bra loc_8C0AB802
mov.b r0,@(0x04,r14) 	

loc_8C0AB77E:
mov.b @(0x0A,r13),r0 	
mov.b r0,@(0x0A,r11) 	
mov.w @r5,r3
mov.w r3,@r11
mov.l @r15,r5
bsr loc_8C0AB8F0
mov r14,r4
mov.l @r15,r5
bsr loc_8C0AB99c
mov r14,r4
mov.w @(loc_8C0AB7C2,pc),r0 ; r0 set to 0x19f
mov.b @(r0,r14),r2
tst r2,r2
bt/s loc_8C0AB7Cc
mov 0xFF,r4 ; r4 set to 0xFFFFFFFf
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
extu.b r0,r0
mov.w r0,@(0x06,r13) 	
mov r4,r0 ; r0 set to 0xFFFFFFFf
nop 	
mov.w r0,@(0x02,r13) 	
mov r12,r0 ; r0 ??? bc r12 is ???	
nop 	
mov.w r0,@(0x02,r11) 	
mov.w @(loc_8C0AB7C2,pc),r0 ; r0 set to 0x19f
bra loc_8C0AB804
nop 	

loc_8C0AB7B6:
#data 0x01A1

loc_8C0AB7B8:
#data 0x01Ac

loc_8C0AB7BA:
#data 0x0088

loc_8C0AB7BC:
#data 0x02A4

loc_8C0AB7BE:
#data 0x012c

loc_8C0AB7C0:
#data 0x0140

loc_8C0AB7C2:
#data 0x019f

#align4
loc_8C0AB7C4:
#data 0x8C2896B0

#align4
loc_8C0AB7C8:
#data bank04.loc_8c045748


loc_8C0AB7CC:
mov.w @(loc_8C0AB8D4,pc),r0 ; r0 set to 0x19e
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8C0AB7Ee
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
extu.b r0,r0
mov.w r0,@(0x06,r13) 	
mov r4,r0
nop 	
mov.w r0,@(0x02,r13) 	
mov r12,r0
nop 	
mov.w r0,@(0x02,r11) 	
mov.w @(loc_8C0AB8D4,pc),r0 ; r0 set to 0x19e
bra loc_8C0AB804
nop 	

loc_8C0AB7EE:
mov.w @(loc_8C0AB8D6,pc),r0 ; r0 set to 0x12c
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8C0AB84e
mov.w @(0x08,r13),r0 	
tst r0,r0
bt loc_8C0AB808
mov r12,r0 ; r0 ??? bc r12 is ???	
nop 	
mov.w r0,@(0x08,r13) 	

loc_8C0AB802:
mov.w @(loc_8C0AB8D6,pc),r0 ; r0 set to 0x12c

loc_8C0AB804:
bra loc_8C0AB84e
mov.b r12,@(r0,r14) 	

#align4
loc_8C0AB808:
#data 0x85D3E321
#data 0x633033Ec
#data 0x3030633c
#data 0xE4018F0a
#data 0xE30B85D3
#data 0x89053033
#data 0x700185D3
#data 0x604381D3
#data 0x81D40009

#align4
loc_8C0AB82C:
#data 0x401585D1
#data 0xD32A8B07
#data 0x51276232
#data 0x89022418
#data 0x410BD128
#data 0x64E3

loc_8C0AB842:
#data 0xD328
#data 0x64E3430b
#data 0x31EC9145
#data 0x2100


loc_8C0AB84E:
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0AB85C:
mov 0x24,r0 ; r0 set to 0x24
mov.l r14,@-r15
mov.b @(r0,r5),r3
mov r4,r14
mov.b r3,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r2
tst r2,r2
bt loc_8C0AB874
mov r14,r4
bra loc_8C0AB74c
mov.l @r15+,r14

loc_8C0AB874:
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
extu.b r0,r0
cmp/eq 0x02,r0 	
bf loc_8C0AB892
mov.b @(0x05,r5),r0 	
tst r0,r0
bf loc_8C0AB8A2
mov.w @(loc_8C0AB8D8,pc),r0 ; r0 set to 0x1D0
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x1D,r0 	
bt loc_8C0AB8B2
bra loc_8C0AB8A2
nop 	

loc_8C0AB892:
#data 0x8455
#data 0x8B042008
#data 0x005C901e
#data 0x8814600c
#data 0x8907


loc_8C0AB8A2:
mov.b @(0x04,r14),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0AB8D6,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0AB8B2:
mov.b @(0x05,r14),r0 	
mov r14,r4
mov.l @(loc_8C0AB8E8,pc),r1 ; r1 set to 0x8C157820
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x000b
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0AB8C6:
mov.b @(0x04,r4),r0 	
add 0x01,r0
rts 	
mov.b r0,@(0x04,r4) 	
;-------------------------------------------------------------------------------

loc_8C0AB8CE:
mov.l @(loc_8C0AB8EC,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0AB8D4:
#data 0x019e

loc_8C0AB8D6:
#data 0x012c

loc_8C0AB8D8:
#data 0x01D0
#data 0x0000
#data 0x8C26823c

#align4
loc_8C0AB8E0:
#data bank04.loc_8c045748

loc_8C0AB8E4:
#data bank03.loc_8c0332E0

loc_8C0AB8E8:
#data 0x8C157820

loc_8C0AB8EC:
#data bank04.loc_8c0450C0

loc_8C0AB8F0:
#data 0x9373E021
#data 0x5745024c
#data 0x22285642
#data 0x373C8F2b
#data 0xF408C738
#data 0x064CE020
#data 0x2668666c
#data 0x60638903
#data 0x88020009
#data 0x8B04

loc_8C0AB916:
#data 0xE05c
#data 0xC733F447
#data 0xF308A004

#align4
loc_8C0AB920:
#data 0xF447E05c
#data 0xF308C731

#align4
loc_8C0AB928:
#data 0xF437E060
#data 0x034D9057
#data 0x8B032338
#data 0xF346E05c
#data 0xF437F34d

#align4
loc_8C0AB93C:
#data 0xF346E05c
#data 0xF256E034
#data 0xF427F230
#data 0xF346E060
#data 0xF256E038
#data 0x000BF230
#data 0xF427
;-------------------------------------------------------------------------------

loc_8C0AB956:
#data 0x034c
#data 0x633C8573
#data 0x89183307
#data 0xF308C723
#data 0xF437E05c
#data 0x034D9039
#data 0x8B032338
#data 0xF346E05c
#data 0xF437F34d

#align4
loc_8C0AB978:
#data 0xF346E05c
#data 0xF266E034
#data 0xF230E301
#data 0xE038F427
#data 0xF437F366
#data 0xA0039028
#data 0x0434

loc_8C0AB992:
#data 0x9025
#data 0x0414E100

#align4
loc_8C0AB998:
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0AB99C:
mov 0x21,r0 ; r0 set to 0x21
mov.w @(loc_8C0AB9DC,pc),r5 ; r5 set to 0x88
mov.w @(loc_8C0AB9DC,pc),r3 ; r3 set to 0x88
mov.l r14,@-r15
add r4,r5 ; r5 ??? bc r4 is ???	
mov.b @(r0,r4),r2
mov.l @(0x14,r4),r6
tst r2,r2
bt/s loc_8C0AB9C6
add r3,r6
mov.b @(r0,r4),r2
mov.w @(0x06,r6),r0 	
extu.b r2,r2
cmp/eq r0,r2
bf loc_8C0AB9C6
mov.w @r5,r14
mov.b @(0x0A,r5),r0 	
add r0,r14
mov.l @(loc_8C0AB9F4,pc),r0 ; r0 set to 0x8C157828
bra loc_8C0AB9D0
mov.b @(r0,r14),r14

loc_8C0AB9C6:
mov.w @r5,r14
mov.b @(0x0A,r5),r0 	
add r0,r14
mov.l @(loc_8C0AB9F8,pc),r0 ; r0 set to 0x8C157832
mov.b @(r0,r14),r14

loc_8C0AB9D0:
mov.l @(loc_8C0AB9FC,pc),r3 ; r3 set to 0x8C034F54, r3 set to 0x8C034F54
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
mov r14,r7
mov 0x00,r6 ; r6 set to 0x00, r6 set to 0x00
jmp @r3
mov.l @r15+,r14

loc_8C0AB9DC:
#data 0x0088
#data 0x0130
#data 0x0000012c
#data 0x4312AAAa
#data 0x435EDB6d
#data 0x430B4924
#data 0x42555555

#align4
loc_8C0AB9F4:
#data 0x8C157828

loc_8C0AB9F8:
#data 0x8C157832

loc_8C0AB9FC:
#data bank03.loc_8c034F54
#data 0x7FFC4F22
#data 0xE501D34a
#data 0xE6002F42
#data 0x6463430b
#data 0x8D072008
#data 0xD3476403
#data 0x1434E026
#data 0x62F29380
#data 0x04351426
#data 0x4F267F04
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0ABA2C:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0ABB38,pc),r1 ; r1 set to 0x8C15783c
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

#align4
loc_8C0ABA40:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x4F22916b
#data 0x31EC84E4
#data 0x70019267
#data 0x80E4D339
#data 0x430B9064
#data 0x906232Dc
#data 0x61E3E201
#data 0x0E247150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC9054
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD32B0E34
#data 0xE00C430b
#data 0x02DCE024
#data 0x0E24E342
#data 0x9042E244
#data 0x70010E34
#data 0xC7260E24
#data 0xE05CF308
#data 0xC725FE37
#data 0xE060F308
#data 0x9037FE37
#data 0x233803Ed
#data 0xE05C8B03
#data 0xF34DF3E6
#data 0xFE37

loc_8C0ABACA:
#data 0xE031
#data 0x0E34E3Ff
#data 0x902CE237
#data 0xD31DE400
#data 0x0E24E517
#data 0x0E45700b
#data 0x0E4470F2
#data 0x0E467026
#data 0x84E2E601
#data 0x600C6232
#data 0x727C4000
#data 0x7101012d
#data 0xD2150215
#data 0x64E3420b
#data 0xF3E6E05c
#data 0xF2D6E034
#data 0xFE27F230
#data 0xF3E6E060
#data 0xF2D6E038
#data 0xFE27F230
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x00DC3404
#data 0x012C00C0
#data 0x019C01A3
#data 0x01A10130

#align4
loc_8C0ABB30:
#data bank04.loc_8c044F12

loc_8C0ABB34:
#data loc_8c0aBA2c

loc_8C0ABB38:
#data 0x8C15783c

loc_8C0ABB3C:
#data bank12.loc_8c129560

loc_8C0ABB40:
#data bank12.loc_8c1294C8
#data 0x4353AAAa
#data 0x43700000
#data 0x8C2896B0

#align4
loc_8C0ABB50:
#data bank03.loc_8c034e8c

loc_8C0ABB54:
#data 0x2FE6E024
#data 0x2FD66E43
#data 0x4F22ED00
#data 0x0E34035c
#data 0xF3E6E05c
#data 0xF256E034
#data 0xFE27F230
#data 0xF3E6E060
#data 0xF256E038
#data 0xFE27F230
#data 0x0ED49076
#data 0x20088455
#data 0x90728B25
#data 0x600C005c
#data 0x8B20881d
#data 0xE3038456
#data 0x3033600c
#data 0x84E58B0d
#data 0x8B122008
#data 0xE30184E5
#data 0x7001E517
#data 0xE60280E5
#data 0x0E349060
#data 0x430BD332
#data 0x64E3

loc_8C0ABBB6:
#data 0x84E5
#data 0x8B042008
#data 0x430BD330
#data 0xA00C64E3
#data 0x0009

loc_8C0ABBC6:
#data 0xD32e
#data 0x64E3430b
#data 0x4011600e
#data 0x8905

loc_8C0ABBD2:
#data 0x84E4
#data 0x80E47001
#data 0xA021904a
#data 0x0ED4

loc_8C0ABBDE:
#data 0x9048
#data 0x233803Ec
#data 0x64E38D14
#data 0x706003Ec
#data 0x700B0E34
#data 0x70F20ED5
#data 0x70260ED4
#data 0x0ED6D322
#data 0x623284E2
#data 0x4000600c
#data 0x012D727c
#data 0x02157101
#data 0x0ED49031

#align4
loc_8C0ABC10:
#data 0x0009B014
#data 0xD21C4F26
#data 0x6DF664E3
#data 0x6EF6422b

#align4
loc_8C0ABC20:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0ABC28:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0ABC70,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0ABC36:
mov.l @(loc_8C0ABC8C,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

#align4
loc_8C0ABC3C:
#data 0x5546901a
#data 0x8445065e
#data 0x8B0F2008
#data 0xF466E034
#data 0x9012F346
#data 0x2338035d
#data 0xF4318F01
#data 0xF44d

loc_8C0ABC5A:
#data 0xC70d
#data 0xF435F308
#data 0x90098B02
#data 0x0425E210

#align4
loc_8C0ABC68:
#data 0x0009000b
;-------------------------------------------------------------------------------
#data 0x01D0019f

loc_8C0ABC70:
#data 0x012c
#data 0x0141
#data 0x0130020c
#data 0x000001Ac

#align4
loc_8C0ABC7C:
#data bank03.loc_8c034e8c

loc_8C0ABC80:
#data bank03.loc_8c034dee
#data 0x8C2896B0

#align4
loc_8C0ABC88:
#data bank04.loc_8c045748

loc_8C0ABC8C:
#data bank04.loc_8c0450C0
#data 0x42A00000
#data 0xE5012FE6
#data 0xD3514F22
#data 0xE6006E43
#data 0x6463430b
#data 0x8D0E2008
#data 0xE0346403
#data 0x1434D34d
#data 0x9391F3E6
#data 0xE038F437
#data 0xF437F3E6
#data 0x84E114E6
#data 0xE0268041
#data 0x60430435
#data 0x4F260009
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0ABCD0:
mov.l r14,@-r15
sts.l pr,@-r15
bsr loc_8C0ABF1e
mov r4,r14
mov.b @(0x04,r14),r0 	
mov r14,r4
mov.l @(loc_8C0ABDE8,pc),r1 ; r1 set to 0x8C15784c
extu.b r0,r0
lds.l @r15+,pr 	
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0ABCEA:
#data 0x2FE6
#data 0x2FD66E43
#data 0x4F222FC6
#data 0x700184E4
#data 0x5CE680E4
#data 0x64E3B0Ce
#data 0xE201DD3a
#data 0xE021D33a
#data 0x0C24430b
#data 0xD439C90f
#data 0x2D026203
#data 0x4208D038
#data 0x905EF326
#data 0x03CCF43a
#data 0x8F032338
#data 0xF348E034
#data 0xF43AF34d

#align4
loc_8C0ABD2C:
#data 0xF348F2E6
#data 0xF230D333
#data 0xD534D733
#data 0xC730FE27
#data 0xF308F238
#data 0xF230E038
#data 0x60D2FE27
#data 0x6603C907
#data 0x46084608
#data 0x367C2D02
#data 0xF268E004
#data 0xF166F52a
#data 0xF41AE008
#data 0xE060F266
#data 0x63D2FE27
#data 0x43084308
#data 0x337CE00c
#data 0xE06CF236
#data 0x9030FE27
#data 0x233803Cc
#data 0xF2588B05
#data 0xF52AF24d
#data 0xF14DF148
#data 0xF41a

loc_8C0ABD8A:
#data 0xF358
#data 0xE333E05c
#data 0xE068FE37
#data 0xE442F348
#data 0xFE37E516
#data 0x901DE603
#data 0x70010E44
#data 0x70040E44
#data 0x700B0E34
#data 0xD317E400
#data 0x70F20E45
#data 0x70260E44
#data 0x84E20E46
#data 0x600C6232
#data 0x727C4000
#data 0x7101012d
#data 0x4F260215
#data 0x64E3D210
#data 0x6DF66CF6
#data 0x6EF6422b
#data 0x01D23500
#data 0x0000019c

#align4
loc_8C0ABDE0:
#data bank04.loc_8c044F12

loc_8C0ABDE4:
#data loc_8c0aBCD0

loc_8C0ABDE8:
#data 0x8C15784c
#data 0x8C28C678

#align4
loc_8C0ABDF0:
#data bank03.loc_8c03319e
#data 0x8C28C680

#align4
loc_8C0ABDF8:
#data 0x8C15785c
#data 0x42892492
#data 0x8C26A5A8

#align4
loc_8C0ABE04:
#data 0x8C15789c
#data 0x8C28C67c
#data 0x8C2896B0

#align4
loc_8C0ABE10:
#data bank03.loc_8c034e8c


loc_8C0ABE14:
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
mov.l @(0x18,r14),r4
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr3
mov.w @(loc_8C0ABF22,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r4),fr2
fcmp/gt fr3,fr2
bf loc_8C0ABE80
mov.b @(0x04,r14),r0 	
mov r14,r5
mov.l @(loc_8C0ABF2C,pc),r3 ; r3 set to 0x8C10235c
add 0x34,r5
add 0x01,r0 ; r0 set to 0x41d
mov.b r0,@(0x04,r14) 	
mov 0x08,r7 ; r7 set to 0x08
mov.w @(loc_8C0ABF22,pc),r0 ; r0 set to 0x41c
mov 0x01,r6 ; r6 set to 0x01
fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???	
mov 0x38,r0 ; r0 set to 0x38
mov r14,r4
fmov.s fr3,@(r0,r14) 	
lds.l @r15+,pr 	
jmp @r3
mov.l @r15+,r14

loc_8C0ABE80:
mov.l @(loc_8C0ABF30,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov.l @(loc_8C0ABF34,pc),r2 ; r2 set to 0x8C045748
mov r14,r4
jmp @r2
mov.l @r15+,r14

loc_8C0ABE90:
mov.w @(loc_8C0ABF24,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@(r0,r4) 	

loc_8C0ABE96:
mov.l @(loc_8C0ABF38,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop 	

#align4
loc_8C0ABE9C:
#data 0x90429143
#data 0x52464F22
#data 0xD325314c
#data 0x430B320c
#data 0x903970E4
#data 0x0414E101
#data 0x50466143
#data 0x84027150
#data 0x50468042
#data 0x80418401
#data 0x5346E050
#data 0xF437F336
#data 0x5346E054
#data 0xF437F336
#data 0x53469028
#data 0x0424023c
#data 0x53467001
#data 0x0424023c
#data 0x5346E030
#data 0x0424023c
#data 0xD3145246
#data 0x430B7250
#data 0x5146E00c
#data 0xE220E024
#data 0x0434031c
#data 0x9012E324
#data 0x70FF0424
#data 0x70030424
#data 0x70FF0434
#data 0x0434E200
#data 0x00096033
#data 0x000B4F26
#data 0x0424
;-------------------------------------------------------------------------------

loc_8C0ABF1E:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0ABF22:
#data 0x041c

loc_8C0ABF24:
#data 0x012c
#data 0x00Dc
#data 0x013D01A3

#align4
loc_8C0ABF2C:
#data bank10.loc_8c10235c

loc_8C0ABF30:
#data bank03.loc_8c034dee

loc_8C0ABF34:
#data bank04.loc_8c045748

loc_8C0ABF38:
#data bank04.loc_8c0450C0

loc_8C0ABF3C:
#data bank12.loc_8c129560

loc_8C0ABF40:
#data bank12.loc_8c1294C8
#data 0xE5012FE6
#data 0xD33F4F22
#data 0xE6006E43
#data 0x6463430b
#data 0x8D182008
#data 0xE0346403
#data 0xE200D33b
#data 0xF3E61434
#data 0xF437936a
#data 0xF3E6E038
#data 0x14E6F437
#data 0x804184E1
#data 0x0435E026
#data 0x0424E020
#data 0x70F085Ee
#data 0x905C814e
#data 0x600C00Ec
#data 0x6043814f
#data 0x4F260009
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0ABF94:
#data 0xE5012FE6
#data 0xD32B4F22
#data 0xE6006E43
#data 0x6463430b
#data 0x8D172008
#data 0xE0346403
#data 0x9247D327
#data 0xF3E61434
#data 0xE038F437
#data 0xF437F3E6
#data 0x143653E6
#data 0x14E5933c
#data 0x804184E1
#data 0x0435E026
#data 0x0424E020
#data 0x814E85Ee
#data 0x814F85Ef

#align4
loc_8C0ABFD8:
#data 0x00096043
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0ABFE2:
mov.l r14,@-r15
sts.l pr,@-r15
bsr loc_8C0AC2C4
mov r4,r14
mov.b @(0x04,r14),r0 	
mov r14,r4
mov.l @(loc_8C0AC050,pc),r1 ; r1 set to 0x8C15791c
extu.b r0,r0
lds.l @r15+,pr 	
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0ABFFC:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0AC054,pc),r12 ; r12 set to 0x8C28C684
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.l @(0x18,r14),r13
bsr loc_8C0AC242
mov r14,r4
mov.w @(loc_8C0AC042,pc),r0 ; r0 set to 0x19c
mov 0x42,r4 ; r4 set to 0x42
mov.l @(loc_8C0AC058,pc),r5 ; r5 set to 0x8C2896B0
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x19d
mov.b r4,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3
tst r3,r3
bf/s loc_8C0AC0Bc
mov 0x00,r4 ; r4 set to 0x00
mov.w @(loc_8C0AC044,pc),r0 ; r0 set to 0x255
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
extu.b r0,r0
cmp/eq 0x03,r0 	
bf loc_8C0AC05c
mov.w @(loc_8C0AC046,pc),r0 ; r0 set to 0x1A1
mov 0x35,r2 ; r2 set to 0x35
bra loc_8C0AC068
mov.b r2,@(r0,r14) 	
#data 0x01583501
#data 0x00Ff

loc_8C0AC042:
#data 0x019c

loc_8C0AC044:
#data 0x0255

loc_8C0AC046:
#data 0x01A1

#align4
loc_8C0AC048:
#data bank04.loc_8c044F12

loc_8C0AC04C:
#data loc_8c0aBFE2

loc_8C0AC050:
#data 0x8C15791c

loc_8C0AC054:
#data 0x8C28C684

#align4
loc_8C0AC058:
#data 0x8C2896B0

#align4
loc_8C0AC05C:
#data 0x03DC9099
#data 0x430070Fe
#data 0x0E347334

#align4
loc_8C0AC068:
#data 0x0E459094
#data 0x0E4470F2
#data 0x0E467026
#data 0x635284E2
#data 0x4000600c
#data 0x023D737c
#data 0x03257201
#data 0xF308C746
#data 0xFC3A9085
#data 0x233803Dc
#data 0xE0348F03
#data 0xF34DF3C8
#data 0xFC3a

loc_8C0AC09A:
#data 0xF2E6
#data 0xD141F3C8
#data 0x415AF230
#data 0xE038FE27
#data 0xF30DF2E6
#data 0xFE27F230
#data 0x06DC906f
#data 0x4600666c
#data 0x7603A032


loc_8C0AC0BC:
mov.w @(loc_8C0AC198,pc),r0 ; r0 set to 0x255
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
extu.b r0,r0
cmp/eq 0x03,r0 	
bf loc_8C0AC0Ce
mov.w @(loc_8C0AC19A,pc),r0 ; r0 set to 0x1A1
mov 0x2C,r2 ; r2 set to 0x2c
bra loc_8C0AC0D4
mov.b r2,@(r0,r14) 	

loc_8C0AC0CE:
mov.w @(loc_8C0AC19A,pc),r0 ; r0 set to 0x1A1
mov 0x2B,r3 ; r3 set to 0x2b
mov.b r3,@(r0,r14) 	

loc_8C0AC0D4:
mov.w @(loc_8C0AC194,pc),r0 ; r0 set to 0x1AC, r0 set to 0x1Ac
mov 0x04,r1 ; r1 set to 0x04, r1 set to 0x04
mov.w r4,@(r0,r14) 	
add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19e
mov.b r4,@(r0,r14) 	
add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4
mov.l r4,@(r0,r14) 	
mov.b @(0x02,r14),r0 	
mov.l @r5,r3 ; r3 ??? bc r5 is ???	
extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4
mov.l @(loc_8C0AC1A8,pc),r4 ; r4 set to 0x8C15792C, r4 set to 0x8C15792c
shll r0 ; r0 set to 0x188, r0 set to 0x188
add 0x7C,r3
mov.w @(r0,r3),r2
add 0x01,r2
mov.w r2,@(r0,r3) 	
mov.w @(loc_8C0AC192,pc),r0 ; r0 set to 0x1A3, r0 set to 0x1A3
mov.b @(r0,r13),r3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
extu.b r3,r3
shll2 r3
shll r3
add r4,r3
fmov.s @r3,fr3
mov.w @(loc_8C0AC192,pc),r3 ; r3 set to 0x1A3, r3 set to 0x1A3
fmov.s fr3,@r12
add r13,r3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???	
mov.b @r3,r3
extu.b r3,r3
shll2 r3
shll r3
add r3,r4 ; r4 ??? bc r3 is ???, r4 ??? bc r3 is ???	
add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???	
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x09,r6 ; r6 set to 0x09, r6 set to 0x09
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	

loc_8C0AC120:
lds.l @r15+,pr 	
mov.l @(loc_8C0AC1AC,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
mov 0x15,r5 ; r5 set to 0x15, r5 set to 0x15
mov r14,r4
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0AC130:
mov.l r14,@-r15
mov 0x5C,r1 ; r1 set to 0x5c
mov r4,r14
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
mov.w @(0x1E,r14),r0 	
mov.l @(0x18,r14),r4
mov.w @(loc_8C0AC19C,pc),r3 ; r3 set to 0x158
add r4,r3 ; r3 ??? bc r4 is ???	
mov.b @r3,r3
extu.b r3,r3
cmp/eq r3,r0
bt loc_8C0AC182
mov r14,r4
bra loc_8C0AC236
mov.l @r15+,r14

loc_8C0AC182:
mov.b @(0x05,r14),r0 	
mov r14,r4
mov.l @(loc_8C0AC1B0,pc),r1 ; r1 set to 0x8C15793c
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0AC192:
#data 0x01A3

loc_8C0AC194:
#data 0x01Ac
#data 0x01D2

loc_8C0AC198:
#data 0x0255

loc_8C0AC19A:
#data 0x01A1

loc_8C0AC19C:
#data 0x0158
#data 0x0000
#data 0xC2A35555
#data 0x435A9249

#align4
loc_8C0AC1A8:
#data 0x8C15792c

loc_8C0AC1AC:
#data bank03.loc_8c034e8c

loc_8C0AC1B0:
#data 0x8C15793c


loc_8C0AC1B4:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
bsr loc_8C0AC2Ec
mov r4,r14
mov.l @(loc_8C0AC2D4,pc),r2 ; r2 set to 0x8C034DEe
jsr @r2
mov r14,r4
mov.w @(0x1C,r14),r0 	
mov.l @(0x18,r14),r4
add 0xFF,r0
mov.w r0,@(0x1C,r14) 	
exts.w r0,r0
tst r0,r0
bf loc_8C0AC1F6
mov.b @(0x05,r14),r0 	
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3
tst r3,r3
bf loc_8C0AC1Ea
mov.w @(loc_8C0AC2C8,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r4),r13
shll r13
bra loc_8C0AC1Ec
add 0x06,r13

loc_8C0AC1EA:
#data 0xED07

#align4
loc_8C0AC1EC:
#data 0xE515D23a
#data 0x420B66Dc
#data 0x64E3

loc_8C0AC1F6:
#data 0x9068
#data 0x233803Ec
#data 0xE3008903
#data 0xBEC70E34
#data 0x64E3

loc_8C0AC206:
#data 0x4F26
#data 0x64E3D234
#data 0x422B6DF6
#data 0x6EF6

loc_8C0AC212:
#data 0x2FE6
#data 0xB0694F22
#data 0xD22E6E43
#data 0x64E3420b
#data 0x4011600e
#data 0x64E38D03
#data 0x700184E4
#data 0x80E4

loc_8C0AC22E:
#data 0x4F26
#data 0x432BD32a
#data 0x6EF6


loc_8C0AC236:
mov.w @(loc_8C0AC2CC,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@(r0,r4) 	

loc_8C0AC23C:
mov.l @(loc_8C0AC2E0,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0AC242:
mov.w @(loc_8C0AC2CE,pc),r1 ; r1 set to 0xDc
mov.w @(loc_8C0AC2CE,pc),r0 ; r0 set to 0xDc
sts.l pr,@-r15
mov.l @(0x18,r4),r2
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0AC2E4,pc),r3 ; r3 set to 0x8C129560
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0AC2CC,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0AC2C8,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0AC2E8,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x24,r0 ; r0 set to 0x24
mov 0x20,r2 ; r2 set to 0x20
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r4) 	
mov 0x24,r3 ; r3 set to 0x24
mov.w @(loc_8C0AC2D0,pc),r0 ; r0 set to 0x13d
mov.b r2,@(r0,r4) 	
add 0xFF,r0 ; r0 set to 0x13c
mov.b r2,@(r0,r4) 	
add 0x03,r0 ; r0 set to 0x13f
mov.b r3,@(r0,r4) 	
add 0xFF,r0 ; r0 set to 0x13e
mov 0x00,r2 ; r2 set to 0x00
mov.b r3,@(r0,r4) 	
mov r3,r0 ; r0 set to 0x24
nop 	
lds.l @r15+,pr 	
rts 	
mov.b r2,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0AC2C4:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0AC2C8:
#data 0x01A3
#data 0x0141

loc_8C0AC2CC:
#data 0x012c

loc_8C0AC2CE:
#data 0x00Dc

loc_8C0AC2D0:
#data 0x013d
#data 0x0000

#align4
loc_8C0AC2D4:
#data bank03.loc_8c034dee

loc_8C0AC2D8:
#data bank03.loc_8c034e8c

loc_8C0AC2DC:
#data bank04.loc_8c045748

loc_8C0AC2E0:
#data bank04.loc_8c0450C0

loc_8C0AC2E4:
#data bank12.loc_8c129560

loc_8C0AC2E8:
#data bank12.loc_8c1294C8


loc_8C0AC2EC:
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r4),r3
tst r3,r3
bf/s loc_8C0AC31a
mov.l @(0x18,r4),r5
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r4) 	
mova @(loc_8C0AC364,pc),r0  ; r0 set to 0x8C0AC364
fmov.s @r0,fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r5),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mova @(loc_8C0AC368,pc),r0  ; r0 set to 0x8C0AC368
fmov.s @r0,fr4
mov.w @(loc_8C0AC35E,pc),r0 ; r0 set to 0x1D2
mov.b @(r0,r5),r3
tst r3,r3
bf loc_8C0AC354
mova @(loc_8C0AC36C,pc),r0  ; r0 set to 0x8C0AC36c
bra loc_8C0AC354
fmov.s @r0,fr4

loc_8C0AC31A:
#data 0x5645
#data 0xD714E034
#data 0xF437F366
#data 0x035C901c
#data 0x633CE004
#data 0x43004308
#data 0xF336337c
#data 0xF266E038
#data 0xF427F230
#data 0x035C9010
#data 0x633C702f
#data 0x43004308
#data 0x035C373c
#data 0x8F012338
#data 0xF44DF478


loc_8C0AC354:
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r4),fr3
fadd fr4,fr3
rts 	
fmov.s fr3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0AC35E:
#data 0x01D2
#data 0x000001A3

#align4
loc_8C0AC364:
#data 0x435A9249

#align4
loc_8C0AC368:
#data 0x42A35555

#align4
loc_8C0AC36C:
#data 0xC2A35555

#align4
loc_8C0AC370:
#data 0x8C157944
#data 0xE1032FE6
#data 0x2FC62FD6
#data 0x2FB6D248
#data 0x4F222FA6
#data 0x33136321
#data 0x6E438D02
#data 0xE000A039
#data 0xDD44E601
#data 0x4D0B6563
#data 0x6403E400
#data 0xEC009A7f
#data 0xE601DB41
#data 0x14B46563
#data 0x14E514E6
#data 0x804184E1
#data 0x04A5E026
#data 0x04C4E020
#data 0x04C4E021
#data 0x64C34D0b
#data 0xE3016403
#data 0x65336633
#data 0x14E614B4
#data 0x84E114E5
#data 0xE0268041
#data 0xE02004A5
#data 0xE0210434
#data 0x4D0B04C4
#data 0x640364C3
#data 0x6233E301
#data 0x14E614B4
#data 0x84E114E5
#data 0xE0268041
#data 0xE02004A5
#data 0xE0210434
#data 0x60430424
#data 0x4F260009
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0AC410:
#data 0xE102D223
#data 0x4F222FE6
#data 0x33136321
#data 0x6E438D04
#data 0xE0004F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0AC428:
#data 0xE601D21e
#data 0x420B6563
#data 0xD31DE400
#data 0x14346403
#data 0x14E69331
#data 0x142552E5
#data 0x84E1E203
#data 0xE0268041
#data 0xE0200435
#data 0xE0210424
#data 0x0434E300
#data 0x00096043
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0AC45E:
mov.l r14,@-r15
sts.l pr,@-r15
bsr loc_8C0ACF1a
mov r4,r14
mov.b @(0x04,r14),r0 	
mov r14,r4
mov.l @(loc_8C0AC4AC,pc),r1 ; r1 set to 0x8C157954
extu.b r0,r0
lds.l @r15+,pr 	
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0AC478:
mov.l r14,@-r15
mov r4,r14
mov 0x20,r0 ; r0 set to 0x20
sts.l pr,@-r15
mov.b @(r0,r14),r3
mov.l @(loc_8C0AC4B0,pc),r0 ; r0 set to 0x8C157964
extu.b r3,r3
shll2 r3
mov.l @(r0,r3),r2
jsr @r2
nop 	
mov.b @(0x04,r14),r0 	
add 0x01,r0 ; r0 set to 0x8C157965
mov.b r0,@(0x04,r14) 	
mov 0x00,r0 ; r0 set to 0x00
mov.b r0,@(0x05,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x3502
#data 0x8C287AE8

#align4
loc_8C0AC4A4:
#data bank04.loc_8c044F12

loc_8C0AC4A8:
#data loc_8c0aC45e

loc_8C0AC4AC:
#data 0x8C157954

loc_8C0AC4B0:
#data 0x8C157964


loc_8C0AC4B4:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.w @(loc_8C0AC608,pc),r0 ; r0 set to 0x20c
mov.l @(0x14,r14),r13
mov.l @(r0,r13),r3
mov.l r3,@r15
bsr loc_8C0ACE98
mov r14,r4
mov 0x24,r0 ; r0 set to 0x24
fldi1 fr7
mov 0x0B,r2 ; r2 set to 0x0b
fadd fr7,fr7
mov.b r2,@(r0,r14) 	
mov 0x00,r4 ; r4 set to 0x00
mov.w @(loc_8C0AC60A,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0AC61C,pc),r0  ; r0 set to 0x8C0AC61c
fmov.s @r0,fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr2 ; r2 ??? bc r13 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0AC620,pc),r0  ; r0 set to 0x8C0AC620
mov.l @r15,r3
fmov.s @r0,fr4 ; r4 ??	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r3),fr1
fmov.s @(r0,r13),fr2
mov 0x5C,r0 ; r0 set to 0x5c
fsub fr2,fr1
fmov fr1,fr5
fdiv fr4,fr5
fmov fr5,fr6
fdiv fr7,fr6
fadd fr6,fr5
fmov.s fr5,@(r0,r14) 	
fldi0 fr5
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr5,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
mov 0x37,r3 ; r3 set to 0x37
mov.w @(loc_8C0AC60C,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r13),fr1
mov 0x60,r0 ; r0 set to 0x60
fsub fr2,fr1
fmov fr4,fr2
fmov fr1,fr4
fdiv fr2,fr4
fmov fr4,fr6
fdiv fr7,fr6
fadd fr6,fr4
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr5,@(r0,r14) 	
mov.w @(loc_8C0AC60E,pc),r0 ; r0 set to 0x1A1
mov.b r3,@(r0,r14) 	
add 0x0B,r0 ; r0 set to 0x1Ac
mov.w r4,@(r0,r14) 	
add 0xF2,r0 ; r0 set to 0x19e
mov.b r4,@(r0,r14) 	
add 0x26,r0 ; r0 set to 0x1C4
mov.l @(loc_8C0AC624,pc),r3 ; r3 set to 0x8C2896B0
mov.l r4,@(r0,r14) 	
mov.b @(0x02,r14),r0 	
mov.l @r3,r2
extu.b r0,r0 ; r0 set to 0xC4
shll r0 ; r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
mov 0x42,r4 ; r4 set to 0x42
mov 0x17,r5 ; r5 set to 0x17
add 0x01,r1
mov.w r1,@(r0,r2) 	
mov 0x16,r6 ; r6 set to 0x16
mov.w @(loc_8C0AC610,pc),r0 ; r0 set to 0x19c
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x19d
mov.b r4,@(r0,r14) 	
mov r14,r4 ; r4 ??? bc r14 is ???	
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0AC628,pc),r2 ; r2 set to 0x8C034E8c
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_8C0AC56C:
mov.l r14,@-r15
mov.l r13,@-r15
fmov.s fr15,@-r15
fmov.s fr14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l @(0x14,r14),r3
mov.w @(loc_8C0AC612,pc),r13 ; r13 set to 0xCc
mov.l r3,@r15
add r14,r13 ; r13 ??? bc r14 is ???	
bsr loc_8C0ACE98
mov r14,r4
mova @(loc_8C0AC62C,pc),r0  ; r0 init to 0x8C0AC62c
mov.l @r15,r3
fmov.s @r0,fr14
mova @(loc_8C0AC630,pc),r0  ; r0 set to 0x8C0AC630
fmov.s @r0,fr15
mov.w @(loc_8C0AC614,pc),r0 ; r0 set to 0x1D2
mov.l @(loc_8C0AC634,pc),r4 ; r4 set to 0x8C26A518
mov.b @(r0,r3),r2
tst r2,r2
bt loc_8C0AC5A2
mov.w @(loc_8C0AC616,pc),r0 ; r0 set to 0x8c
fmov.s @(r0,r4),fr3
bra loc_8C0AC5A8
fadd fr15,fr3

loc_8C0AC5A2:
mov.w @(loc_8C0AC618,pc),r0 ; r0 set to 0x88
fmov.s @(r0,r4),fr3
fadd fr14,fr3

loc_8C0AC5A8:
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
mov.l @(loc_8C0AC63C,pc),r3 ; r3 set to 0x8C03319E, r3 set to 0x8C03319e
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0AC638,pc),r0  ; r0 set to 0x8C0AC638, r0 set to 0x8C0AC638
fmov.s @r0,fr3 ; r3 ??, r3 ??	
mov.w @(loc_8C0AC61A,pc),r0 ; r0 set to 0x90, r0 set to 0x90
fmov.s @(r0,r4),fr2
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fadd fr3,fr2
jsr @r3
fmov.s fr2,@(r0,r14) 	
mov 0x22,r1 ; r1 set to 0x22, r1 set to 0x22
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
and 0x1F,r0 	
mov.b r0,@r1
mova @(loc_8C0AC640,pc),r0  ; r0 set to 0x8C0AC640, r0 set to 0x8C0AC640
fmov.s @r0,fr4
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
mov.b @(r0,r14),r3
tst r3,r3
bf/s loc_8C0AC5E6
mov 0x12,r5 ; r5 set to 0x12, r5 set to 0x12
mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
fmov.s fr14,@(r0,r13) 	
mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
fmov.s fr4,@(r0,r13) 	
mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
mov 0x07,r3 ; r3 set to 0x07, r3 set to 0x07
mov.b r3,@(r0,r14) 	
bra loc_8C0AC5F6
mov 0x16,r6

loc_8C0AC5E6:
mov 0x04,r0 ; r0 set to 0x04
fmov.s fr15,@(r0,r13) 	
mov 0x08,r0 ; r0 set to 0x08
fmov.s fr4,@(r0,r13) 	
mov 0x24,r0 ; r0 set to 0x24
mov 0x00,r3 ; r3 set to 0x00
mov 0x25,r6 ; r6 set to 0x25
mov.b r3,@(r0,r14) 	

loc_8C0AC5F6:
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0AC628,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
fmov.s @r15+,fr14
fmov.s @r15+,fr15
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0AC608:
#data 0x020c

loc_8C0AC60A:
#data 0x012c

loc_8C0AC60C:
#data 0x041c

loc_8C0AC60E:
#data 0x01A1

loc_8C0AC610:
#data 0x019c

loc_8C0AC612:
#data 0x00Cc

loc_8C0AC614:
#data 0x01D2

loc_8C0AC616:
#data 0x008c

loc_8C0AC618:
#data 0x0088

loc_8C0AC61A:
#data 0x0090

#align4
loc_8C0AC61C:
#data 0x43892492

#align4
loc_8C0AC620:
#data 0x41000000

#align4
loc_8C0AC624:
#data 0x8C2896B0

#align4
loc_8C0AC628:
#data bank03.loc_8c034e8c

loc_8C0AC62C:
#data 0xC2555555

#align4
loc_8C0AC630:
#data 0x42555555

#align4
loc_8C0AC634:
#data 0x8C26A518

#align4
loc_8C0AC638:
#data 0x43092492

#align4
loc_8C0AC63C:
#data bank03.loc_8c03319e

loc_8C0AC640:
#data 0x432D5555


loc_8C0AC644:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0AC7A8,pc),r13 ; r13 set to 0x8C03319e
bsr loc_8C0ACE98
mov r4,r14
mov.w @(loc_8C0AC79E,pc),r0 ; r0 set to 0x12c
mov 0x01,r2 ; r2 set to 0x01
mov 0x00,r12 ; r12 set to 0x00
mov.b r2,@(r0,r14) 	
mov r12,r0 ; r0 set to 0x00
nop 	
mov.b r0,@(0x06,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov 0x0B,r3 ; r3 set to 0x0b
mov.b r3,@(r0,r14) 	
jsr @r13
mov.l @(0x18,r14),r11
and 0x1F,r0 	
lds r0,fpul 	
mova @(loc_8C0AC7AC,pc),r0  ; r0 set to 0x8C0AC7Ac
fmov.s @r0,fr0 ; r0 ??	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r11),fr2 ; r2 ??? bc r11 is ???	
float fpul,fr3
fmac fr0,fr3,fr2
jsr @r13
fmov.s fr2,@(r0,r14) 	
and 0x0F,r0 	
fldi0 fr4
lds r0,fpul 	
mova @(loc_8C0AC7B0,pc),r0  ; r0 set to 0x8C0AC7B0
fmov.s @r0,fr0 ; r0 ??	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r11),fr2
float fpul,fr3
mov.l @(loc_8C0AC7BC,pc),r3 ; r3 set to 0x8C26823c
fmac fr0,fr3,fr2
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0AC7B4,pc),r0  ; r0 set to 0x8C0AC7B4
fmov.s @r0,fr3 ; r3 ??	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0AC7B8,pc),r0  ; r0 set to 0x8C0AC7B8
fmov.s @r0,fr3
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr3,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr4,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x0A,r0 ; r0 set to 0x0a
mov.w r0,@(0x1C,r14) 	
mov.l @r3,r0 ; r0 ??? bc r3 is ???	
mov.l @(0x1C,r0),r0
tst 0x03,r0 	
bt loc_8C0AC6C2
mov.w @(loc_8C0AC7A0,pc),r0 ; r0 set to 0x1A1
mov 0x39,r1 ; r1 set to 0x39
bra loc_8C0AC6C8
mov.b r1,@(r0,r14) 	

loc_8C0AC6C2:
mov.w @(loc_8C0AC7A0,pc),r0 ; r0 set to 0x1A1
mov 0x38,r2 ; r2 set to 0x38
mov.b r2,@(r0,r14) 	

loc_8C0AC6C8:
mov.w @(loc_8C0AC7A2,pc),r0 ; r0 set to 0x1AC, r0 set to 0x1Ac
mov 0x42,r4 ; r4 set to 0x42, r4 set to 0x42
mov.l @(loc_8C0AC7C0,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
mov.w r12,@(r0,r14) 	
add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19e
mov.b r12,@(r0,r14) 	
add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4
mov.l r12,@(r0,r14) 	
mov.b @(0x02,r14),r0 	
mov.l @r3,r2 ; r2 ??	
extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4
shll r0 ; r0 set to 0x188, r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2) 	
mov.w @(loc_8C0AC7A4,pc),r0 ; r0 set to 0x19C, r0 set to 0x19c
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x19D, r0 set to 0x19d
jsr @r13
mov.b r4,@(r0,r14) 	
mov 0x0F,r12 ; r12 set to 0x0F, r12 set to 0x0f
mov r14,r4 ; r4 ??? bc r14 is ???, r4 ??? bc r14 is ???	
and r0,r12 ; r12 ??, r12 ??	
mov.l @(loc_8C0AC7C4,pc),r0 ; r0 set to 0x8C157984, r0 set to 0x8C157984
extu.b r12,r3 ; r3 ??? bc r12 is ???, r3 ??? bc r12 is ???	
shll2 r3
mov.l @(r0,r3),r2
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
extu.b r12,r12
mov.l @(loc_8C0AC7CC,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
mov.b r2,@(r0,r14) 	
mov 0x12,r5 ; r5 set to 0x12, r5 set to 0x12
lds.l @r15+,pr 	
mov.l @(loc_8C0AC7C8,pc),r0 ; r0 set to 0x8C157974, r0 set to 0x8C157974
mov.l @r15+,r11
mov.b @(r0,r12),r6
mov.l @r15+,r12
extu.b r6,r6
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0AC71C:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
bsr loc_8C0ACE98
mov.l @(0x18,r14),r13
mov 0x24,r0 ; r0 set to 0x24
mov.l @(loc_8C0AC7D4,pc),r3 ; r3 set to 0x8C04223a
mov 0x0B,r2 ; r2 set to 0x0b
mov.b r2,@(r0,r14) 	
mov 0x42,r4 ; r4 set to 0x42
mov.w @(loc_8C0AC7A4,pc),r0 ; r0 set to 0x19c
mov 0x4C,r5 ; r5 set to 0x4c
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x19d
mov.b r4,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0AC7D0,pc),r0  ; r0 set to 0x8C0AC7D0
fmov.s @r0,fr3
mov 0x54,r0 ; r0 set to 0x54
fmov.s fr3,@(r0,r14) 	
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???	
mov.w @(loc_8C0AC7A0,pc),r0 ; r0 set to 0x1A1
mov 0x3B,r2 ; r2 set to 0x3b
mov 0x00,r4 ; r4 set to 0x00
mov.l @(loc_8C0AC7C0,pc),r3 ; r3 set to 0x8C2896B0
mov.b r2,@(r0,r14) 	
add 0x0B,r0 ; r0 set to 0x1Ac
mov.w r4,@(r0,r14) 	
add 0xF2,r0 ; r0 set to 0x19e
mov.b r4,@(r0,r14) 	
add 0x26,r0 ; r0 set to 0x1C4
mov.l r4,@(r0,r14) 	
mov 0x19,r6 ; r6 set to 0x19
mov.b @(0x02,r14),r0 	
mov 0x15,r5 ; r5 set to 0x15
mov.l @r3,r2 ; r2 ??	
mov r14,r4 ; r4 ??? bc r14 is ???	
extu.b r0,r0 ; r0 set to 0xC4
shll r0 ; r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2) 	
lds.l @r15+,pr 	
mov.l @(loc_8C0AC7CC,pc),r2 ; r2 set to 0x8C034E8c
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_8C0AC78A:
mov 0x20,r0 ; r0 set to 0x20
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(loc_8C0AC7D8,pc),r0 ; r0 set to 0x8C1579C4
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

loc_8C0AC79E:
#data 0x012c

loc_8C0AC7A0:
#data 0x01A1

loc_8C0AC7A2:
#data 0x01Ac

loc_8C0AC7A4:
#data 0x019c
#data 0x0000

#align4
loc_8C0AC7A8:
#data bank03.loc_8c03319e

loc_8C0AC7AC:
#data 0x3FD55555

#align4
loc_8C0AC7B0:
#data 0x40092492

#align4
loc_8C0AC7B4:
#data 0x41092492

#align4
loc_8C0AC7B8:
#data 0x3E892492

#align4
loc_8C0AC7BC:
#data 0x8C26823c

#align4
loc_8C0AC7C0:
#data 0x8C2896B0

#align4
loc_8C0AC7C4:
#data 0x8C157984

loc_8C0AC7C8:
#data 0x8C157974

loc_8C0AC7CC:
#data bank03.loc_8c034e8c

loc_8C0AC7D0:
#data 0x4019999a

#align4
loc_8C0AC7D4:
#data bank04.loc_8c04223a

loc_8C0AC7D8:
#data 0x8C1579C4


loc_8C0AC7DC:
mov r4,r3
mov.l @(loc_8C0AC924,pc),r1 ; r1 set to 0x8C1579D4
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0AC7EE:
mov 0x5C,r1 ; r1 set to 0x5c
mov.l @(0x14,r4),r5
add r4,r1 ; r1 ??? bc r4 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3
fmov.s @(r0,r4),fr2
mov 0x68,r1 ; r1 set to 0x68
add r4,r1 ; r1 ??? bc r4 is ???	
fadd fr3,fr2
mov 0x01,r3 ; r3 set to 0x01
fmov.s fr2,@(r0,r4) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r4),fr2
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
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
mov.w @(loc_8C0AC91A,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r4),fr3
mov.w @(loc_8C0AC91C,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r5),fr2
fcmp/gt fr2,fr3
bf loc_8C0AC840
mov.l @(loc_8C0AC928,pc),r3 ; r3 set to 0x8C034DEe
jmp @r3
nop 	

loc_8C0AC840:
mov.b @(0x05,r4),r0 	
mov 0x0D,r3 ; r3 set to 0x0d
mov 0x17,r6 ; r6 set to 0x17
add 0x01,r0
mov.b r0,@(0x05,r4) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r4) 	
mov.w @(loc_8C0AC91C,pc),r0 ; r0 set to 0x41c
mov.l @(loc_8C0AC92C,pc),r3 ; r3 set to 0x8C034E8c
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r4) 	
jmp @r3
mov 0x15,r5

#align4
loc_8C0AC85C:
#data 0x6E432FE6
#data 0x4F222FD6
#data 0x945A5DE5
#data 0x200884D5
#data 0x34DC8F0a
#data 0x00DC9056
#data 0x881D600c
#data 0x90528B04
#data 0x600C00Dc
#data 0x89068801

#align4
loc_8C0AC884:
#data 0xE30084E4
#data 0x80E47001
#data 0xA0329045
#data 0x0E34

loc_8C0AC892:
#data 0x6140
#data 0x890E2118
#data 0xE51584E5
#data 0xE618D323
#data 0x80E57001
#data 0x81EEE020
#data 0x64E3430b
#data 0x64E34F26
#data 0xADAD6DF6
#data 0x6EF6

loc_8C0AC8B6:
#data 0xD31e
#data 0x50076032
#data 0x8B14C807
#data 0xE601D11c
#data 0x410B6563
#data 0x2008E400
#data 0x64038D0d
#data 0x1424D219
#data 0x14E6E200
#data 0x143553E5
#data 0x84D1E302
#data 0xE0208041
#data 0xE0210434
#data 0x0424

loc_8C0AC8EA:
#data 0x4F26
#data 0x64E3D313
#data 0x432B6DF6
#data 0x6EF6

loc_8C0AC8F6:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0AC8FE:
#data 0x854e
#data 0x814E70Ff
#data 0x2008600f
#data 0x84448B05
#data 0x7001E300
#data 0x90028044
#data 0x0434

loc_8C0AC916:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0AC91A:
#data 0x012c

loc_8C0AC91C:
#data 0x041c
#data 0x02A4
#data 0x01E901D0

#align4
loc_8C0AC924:
#data 0x8C1579D4

loc_8C0AC928:
#data bank03.loc_8c034dee

loc_8C0AC92C:
#data bank03.loc_8c034e8c
#data 0x8C26823c

#align4
loc_8C0AC934:
#data bank04.loc_8c044F12

loc_8C0AC938:
#data loc_8c0aC45e

loc_8C0AC93C:
#data bank04.loc_8c045748

loc_8C0AC940:
#data 0x6E432FE6
#data 0x600C84E5
#data 0x891C8802
#data 0x844554E5
#data 0x8B092008
#data 0x004C9096
#data 0x8801600c
#data 0x90928B04
#data 0x600C004c
#data 0x890E881d

#align4
loc_8C0AC968:
#data 0xF48DE002
#data 0xC74880E5
#data 0xE060F308
#data 0xC747FE37
#data 0xE06CF308
#data 0xE05CFE37
#data 0xE068FE47
#data 0xFE47

loc_8C0AC986:
#data 0x84E5
#data 0xD14364E3
#data 0x4008600c
#data 0x432B031e
#data 0x6EF6

loc_8C0AC996:
#data 0x2FE6
#data 0x7FF44F22
#data 0x6E439574
#data 0x54E5E004
#data 0xF35635Ec
#data 0xFF3A906f
#data 0x2338034c
#data 0xF3F88B02
#data 0xFF3AF34d

#align4
loc_8C0AC9B8:
#data 0xF2F8E034
#data 0xE008F346
#data 0xF230D336
#data 0xF356FF2a
#data 0xF246E038
#data 0x64E3E004
#data 0xF23065F3
#data 0x430BFF27
#data 0x70047434
#data 0x40219556
#data 0xE122D32f
#data 0x40214021
#data 0x210031Ec
#data 0x64E3430b
#data 0x420BD22c
#data 0x7F0C64E3
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0AC9FE:
#data 0x9643
#data 0x5545E004
#data 0xF466364c
#data 0x035C903f
#data 0x8F012338
#data 0xF44DE034

#align4
loc_8C0ACA14:
#data 0xD323F356
#data 0xF437F340
#data 0xF366E008
#data 0xF256E038
#data 0x432BF230
#data 0xF427


loc_8C0ACA2A:
mov 0x5C,r1 ; r1 set to 0x5c
mov.l @(loc_8C0ACAA8,pc),r3 ; r3 set to 0x8C26A5A8
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
fmov.s fr2,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @r3,fr2
fmov.s @(r0,r4),fr3
fcmp/gt fr2,fr3
bf loc_8C0ACA7a
mov.b @(0x04,r4),r0 	
add 0x01,r0 ; r0 set to 0x39
mov.b r0,@(0x04,r4) 	
mov 0x00,r0 ; r0 set to 0x00
bra loc_8C0ACA80
mov.b r0,@(0x05,r4) 	

loc_8C0ACA7A:
mov.l @(loc_8C0ACAA4,pc),r1 ; r1 set to 0x8C034DEe
jmp @r1
nop 	

loc_8C0ACA80:
rts 	
nop 	
;-------------------------------------------------------------------------------
#data 0x01D001E9
#data 0x01D200Cc
#data 0x00000190
#data 0xC0892492
#data 0x3F092492

#align4
loc_8C0ACA98:
#data 0x8C1579E0

loc_8C0ACA9C:
#data bank03.loc_8c03362c

loc_8C0ACAA0:
#data bank03.loc_8c033674

loc_8C0ACAA4:
#data bank03.loc_8c034dee

loc_8C0ACAA8:
#data 0x8C26A5A8


loc_8C0ACAAC:
mov r4,r3
mov.l @(loc_8C0ACBB0,pc),r1 ; r1 set to 0x8C1579Ec
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0ACABE:
mov.w @(0x1C,r4),r0 	
add 0xFF,r0
mov.w r0,@(0x1C,r4) 	
exts.w r0,r0
tst r0,r0
bt/s loc_8C0ACAE6
mov 0x01,r5 ; r5 set to 0x01
mov.l @(loc_8C0ACBB4,pc),r3 ; r3 set to 0x8C26823c
mov.l @r3,r2
mov.l @(0x1C,r2),r1
tst r5,r1
bt loc_8C0ACAE0
mov.w @(loc_8C0ACBA4,pc),r2 ; r2 set to 0x12c
mov 0x00,r0 ; r0 set to 0x00
add r4,r2 ; r2 ??? bc r4 is ???	
bra loc_8C0ACAF2
mov.b r0,@r2

loc_8C0ACAE0:
mov.w @(loc_8C0ACBA4,pc),r0 ; r0 set to 0x12c
bra loc_8C0ACAF2
mov.b r5,@(r0,r4) 	

loc_8C0ACAE6:
mov.b @(0x05,r4),r0 	
add 0x01,r0
mov.b r0,@(0x05,r4) 	
mov.w @(loc_8C0ACBA4,pc),r0 ; r0 set to 0x12c
bra loc_8C0ACAF6
mov.b r5,@(r0,r4) 	

loc_8C0ACAF2:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0ACAF6:
#data 0x2FE6
#data 0x7FFC4F22
#data 0x55E56E43
#data 0x54E69051
#data 0x924F035e
#data 0x84442F32
#data 0x8801600c
#data 0x352C8F03
#data 0x21186150
#data 0x8909

loc_8C0ACB1A:
#data 0x84E5
#data 0x700164E3
#data 0xE00380E5
#data 0x7F0481Ee
#data 0xA16B4F26
#data 0x6EF6

loc_8C0ACB2E:
#data 0xE021
#data 0xD02103Ec
#data 0x4308633c
#data 0x410B013e
#data 0xD31D64E3
#data 0x50076032
#data 0x8B1BC81f
#data 0x410BD11c
#data 0xC8030009
#data 0xE4008D04
#data 0xE2399029
#data 0x0E24A003

#align4
loc_8C0ACB5C:
#data 0xE3389025
#data 0x0E34

loc_8C0ACB62:
#data 0x9023
#data 0x0E45D316
#data 0x0E4470F2
#data 0x0E467026
#data 0x623284E2
#data 0x4000600c
#data 0x012D727c
#data 0x02157101

#align4
loc_8C0ACB80:
#data 0x430BD310
#data 0x901264E3
#data 0x032C62F2
#data 0x8B052338
#data 0x7F0464E3
#data 0xD30C4F26
#data 0x6EF6432b

#align4
loc_8C0ACB9C:
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0ACBA4:
#data 0x012c
#data 0x020c
#data 0x01A102A4
#data 0x01A001Ac

#align4
loc_8C0ACBB0:
#data 0x8C1579Ec

loc_8C0ACBB4:
#data 0x8C26823c

#align4
loc_8C0ACBB8:
#data 0x8C1579F8

loc_8C0ACBBC:
#data bank03.loc_8c03319e
#data 0x8C2896B0

#align4
loc_8C0ACBC4:
#data bank03.loc_8c034dee

loc_8C0ACBC8:
#data bank04.loc_8c045748


loc_8C0ACBCC:
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

loc_8C0ACC04:
mov r4,r3
mov.l @(loc_8C0ACDA0,pc),r1 ; r1 set to 0x8C157A04, r1 set to 0x8C157A04
mov.l r4,@-r15
mov.b @(0x06,r3),r0 	
extu.b r0,r0 ; r0 set to 0x60
shll2 r0 ; r0 set to 0x180
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0ACC16:
mov.l r14,@-r15
mov.l r13,@-r15
mov r4,r13
sts.l pr,@-r15
mov.b @(0x06,r13),r0 	
mov.l @(loc_8C0ACDA4,pc),r14 ; r14 set to 0x8C28C68c
mov.l @(loc_8C0ACDA8,pc),r3 ; r3 set to 0x8C03319e
add 0x01,r0
jsr @r3
mov.b r0,@(0x06,r13) 	
mov.l @(loc_8C0ACDAC,pc),r4 ; r4 set to 0x8C157A14
and 0x07,r0 	
mov.b r0,@r14 ; r14 ??? bc r0 is ???	
mov 0x5C,r0 ; r0 set to 0x5c
mov.b @r14,r2
extu.b r2,r2
shll2 r2
shll r2
add r4,r2
fmov.s @r2,fr3 ; r3 ??? bc r2 is ???	
fmov.s fr3,@(r0,r13) 	
mov 0x04,r0 ; r0 set to 0x04
mov.b @r14,r3
extu.b r3,r3
shll2 r3
shll r3
add r4,r3
fmov.s @(r0,r3),fr3
mov 0x68,r0 ; r0 set to 0x68
mov.l @(loc_8C0ACDA8,pc),r3 ; r3 set to 0x8C03319e
jsr @r3
fmov.s fr3,@(r0,r13) 	
mov.l @(loc_8C0ACDB0,pc),r4 ; r4 set to 0x8C157A54
and 0x07,r0 	
mov.b r0,@r14
mov 0x60,r0 ; r0 set to 0x60
mov.b @r14,r2
extu.b r2,r2
shll2 r2
shll r2
add r4,r2
fmov.s @r2,fr3 ; r3 ??? bc r2 is ???	
fmov.s fr3,@(r0,r13) 	
mov 0x04,r0 ; r0 set to 0x04
mov.b @r14,r3
extu.b r3,r3
shll2 r3
shll r3
add r4,r3
fmov.s @(r0,r3),fr3
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr3,@(r0,r13) 	
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0ACC86:
#data 0x2FE6
#data 0x6E43E15c
#data 0xE03431Ec
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
#data 0xF38DF230
#data 0x8F0AF325
#data 0x84E6FE27
#data 0x7001D336
#data 0x80E6430b
#data 0xC903D137
#data 0x001D4000
#data 0x81Ee

loc_8C0ACCDE:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0ACCE4:
mov.l r14,@-r15
mov.l r13,@-r15
mov r4,r13
sts.l pr,@-r15
mov.b @(0x06,r13),r0 	
mov.l @(loc_8C0ACDB8,pc),r14 ; r14 set to 0x8C28C68d
mov.l @(loc_8C0ACDA8,pc),r3 ; r3 set to 0x8C03319e
add 0x01,r0
jsr @r3
mov.b r0,@(0x06,r13) 	
mov.l @(loc_8C0ACDBC,pc),r4 ; r4 set to 0x8C157A9c
and 0x07,r0 	
mov.b r0,@r14 ; r14 ??? bc r0 is ???	
mov 0x5C,r0 ; r0 set to 0x5c
mov.b @r14,r2
extu.b r2,r2
shll2 r2
shll r2
add r4,r2
fmov.s @r2,fr3 ; r3 ??? bc r2 is ???	
fmov.s fr3,@(r0,r13) 	
mov 0x04,r0 ; r0 set to 0x04
mov.b @r14,r3
extu.b r3,r3
shll2 r3
shll r3
add r4,r3
fmov.s @(r0,r3),fr3
mov 0x68,r0 ; r0 set to 0x68
mov.l @(loc_8C0ACDA8,pc),r3 ; r3 set to 0x8C03319e
jsr @r3
fmov.s fr3,@(r0,r13) 	
mov.l @(loc_8C0ACDC0,pc),r4 ; r4 set to 0x8C157ADc
and 0x07,r0 	
mov.b r0,@r14
mov 0x60,r0 ; r0 set to 0x60
mov.b @r14,r2
extu.b r2,r2
shll2 r2
shll r2
add r4,r2
fmov.s @r2,fr3 ; r3 ??? bc r2 is ???	
fmov.s fr3,@(r0,r13) 	
mov 0x04,r0 ; r0 set to 0x04
mov.b @r14,r3
extu.b r3,r3
shll2 r3
shll r3
add r4,r3
fmov.s @(r0,r3),fr3
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr3,@(r0,r13) 	
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0ACD54:
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
rts 	
fmov.s fr2,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0ACD8E:
mov r4,r3
mov.l @(loc_8C0ACDC4,pc),r1 ; r1 set to 0x8C157B1c
mov.l r4,@-r15
mov.b @(0x06,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

#align4
loc_8C0ACDA0:
#data 0x8C157A04

loc_8C0ACDA4:
#data 0x8C28C68c

#align4
loc_8C0ACDA8:
#data bank03.loc_8c03319e

loc_8C0ACDAC:
#data 0x8C157A14

loc_8C0ACDB0:
#data 0x8C157A54

loc_8C0ACDB4:
#data 0x8C157A94

loc_8C0ACDB8:
#data 0x8C28C68d

#align4
loc_8C0ACDBC:
#data 0x8C157A9c

loc_8C0ACDC0:
#data 0x8C157ADc

loc_8C0ACDC4:
#data 0x8C157B1c


loc_8C0ACDC8:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x06,r14),r0 	
mov.l @(loc_8C0ACF28,pc),r3 ; r3 set to 0x8C03319e
add 0x01,r0
jsr @r3
mov.b r0,@(0x06,r14) 	
mov 0x22,r1 ; r1 set to 0x22
mov r14,r4
add r14,r1 ; r1 ??? bc r14 is ???	
and 0x1F,r0 	
mov.b r0,@r1
lds.l @r15+,pr 	
mov.l @r15+,r14

loc_8C0ACDE6:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0ACF2C,pc),r3 ; r3 set to 0x8C033674, r3 set to 0x8C033674
mov.w @(loc_8C0ACF1E,pc),r5 ; r5 set to 0x190, r5 set to 0x190
jsr @r3
mov r4,r14
mov 0x22,r0 ; r0 set to 0x22, r0 set to 0x22
mov.b @(r0,r14),r2
mov 0x1F,r3 ; r3 set to 0x1F, r3 set to 0x1f
add 0x01,r2
and r3,r2
mov.b r2,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0ACE04:
mov.w @(0x1C,r4),r0 	
add 0xFF,r0
mov.w r0,@(0x1C,r4) 	
exts.w r0,r0
tst r0,r0
bt/s loc_8C0ACE2c
mov 0x00,r5 ; r5 set to 0x00
mov.l @(loc_8C0ACF30,pc),r3 ; r3 set to 0x8C26823c
mov.l @r3,r2
mov.l @(0x1C,r2),r1
tst r1,r1
bt loc_8C0ACE22
mov.w @(loc_8C0ACF20,pc),r0 ; r0 set to 0x12c
bra loc_8C0ACE38
mov.b r5,@(r0,r4) 	

loc_8C0ACE22:
mov.l @(loc_8C0ACF34,pc),r2 ; r2 set to 0x8C034DEe
mov 0x01,r1 ; r1 set to 0x01
mov.w @(loc_8C0ACF20,pc),r0 ; r0 set to 0x12c
jmp @r2
mov.b r1,@(r0,r4) 	

loc_8C0ACE2C:
mov.b @(0x04,r4),r0 	
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov r5,r0
nop 	
mov.b r0,@(0x05,r4) 	

loc_8C0ACE38:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0ACE3C:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.l @(0x18,r14),r4
mov.b @(0x04,r4),r0 	
extu.b r0,r0
cmp/eq 0x01,r0 	
bt loc_8C0ACE5a
mov.b @(0x04,r14),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0ACF20,pc),r0 ; r0 set to 0x12c
bra loc_8C0ACE7e
mov.b r3,@(r0,r14) 	

loc_8C0ACE5A:
#data 0xE021
#data 0x211801Ec
#data 0xC7358905
#data 0xE038F308
#data 0xF230F246
#data 0xFE27

loc_8C0ACE6E:
#data 0xD331
#data 0x64E3430b
#data 0xD2314F26
#data 0x422B64E3
#data 0x6EF6


loc_8C0ACE7E:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0ACE84:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0ACF20,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0ACE92:
mov.l @(loc_8C0ACF40,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0ACE98:
mov.w @(loc_8C0ACF22,pc),r1 ; r1 set to 0xDc
mov.w @(loc_8C0ACF22,pc),r0 ; r0 set to 0xDc
sts.l pr,@-r15
mov.l @(0x18,r4),r2
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0ACF44,pc),r3 ; r3 set to 0x8C129560
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0ACF20,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0ACF24,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0ACF48,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x24,r0 ; r0 set to 0x24
mov 0x20,r2 ; r2 set to 0x20
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r4) 	
mov 0x24,r3 ; r3 set to 0x24
mov.w @(loc_8C0ACF26,pc),r0 ; r0 set to 0x13d
mov.b r2,@(r0,r4) 	
add 0xFF,r0 ; r0 set to 0x13c
mov.b r2,@(r0,r4) 	
add 0x03,r0 ; r0 set to 0x13f
mov.b r3,@(r0,r4) 	
add 0xFF,r0 ; r0 set to 0x13e
mov 0x0B,r2 ; r2 set to 0x0b
mov.b r3,@(r0,r4) 	
mov r3,r0 ; r0 set to 0x24
nop 	
lds.l @r15+,pr 	
rts 	
mov.b r2,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0ACF1A:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0ACF1E:
#data 0x0190

loc_8C0ACF20:
#data 0x012c

loc_8C0ACF22:
#data 0x00Dc

loc_8C0ACF24:
#data 0x01A3

loc_8C0ACF26:
#data 0x013d

#align4
loc_8C0ACF28:
#data bank03.loc_8c03319e

loc_8C0ACF2C:
#data bank03.loc_8c033674

loc_8C0ACF30:
#data 0x8C26823c

#align4
loc_8C0ACF34:
#data bank03.loc_8c034dee
#data 0x43F89249

#align4
loc_8C0ACF3C:
#data bank04.loc_8c045748

loc_8C0ACF40:
#data bank04.loc_8c0450C0

loc_8C0ACF44:
#data bank12.loc_8c129560

loc_8C0ACF48:
#data bank12.loc_8c1294C8

loc_8C0ACF4C:
#data 0x4F222FE6
#data 0x6E437FF8
#data 0x00096053
#data 0xE501D352
#data 0x2F6080F4
#data 0x430BE602
#data 0x200864E3
#data 0x64038D18
#data 0xD34EE034
#data 0x1434E120
#data 0xF3E6314c
#data 0xE038F437
#data 0xF437F3E6
#data 0x53E514E6
#data 0x55E51435
#data 0x8451938b
#data 0xE0268041
#data 0x84F40435
#data 0xE0212100
#data 0x043463F0

#align4
loc_8C0ACF9C:
#data 0x00096043
#data 0x4F267F08
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x6E432FE6
#data 0x2FC62FD6
#data 0x2FB6EC00
#data 0x2FA66DC3
#data 0x2F96EA04
#data 0x9B704F22
#data 0xE601D938
#data 0x490B6563
#data 0x2008E400
#data 0x64038D12
#data 0xD235E034
#data 0xF3E61424
#data 0xE038F437
#data 0xF437F3E6
#data 0x14E514E6
#data 0x804184E1
#data 0x04B5E026
#data 0x04C4E020
#data 0x04D4E021
#data 0x63DF7D01
#data 0x8BE233A3
#data 0x00096043
#data 0x69F64F26
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0AD010:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x4F222FA6
#data 0x6E437FF8
#data 0x00096053
#data 0xED00DA1f
#data 0xEB089C3b
#data 0x2F6080F4

#align4
loc_8C0AD030:
#data 0xE602E501
#data 0x64E34A0b
#data 0x8D172008
#data 0xE0346403
#data 0xE120D219
#data 0x1424314c
#data 0xF437F3E6
#data 0xF3E6E038
#data 0x14E6F437
#data 0x143553E5
#data 0x845155E5
#data 0xE0268041
#data 0x84F404C5
#data 0xE0212100
#data 0x043463F0

#align4
loc_8C0AD06C:
#data 0x63DF7D01
#data 0x8BDD33B3
#data 0x00096043
#data 0x4F267F08
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0AD088:
mov.l r14,@-r15
sts.l pr,@-r15
bsr loc_8C0AD860
mov r4,r14
mov.b @(0x04,r14),r0 	
mov r14,r4
mov.l @(loc_8C0AD0AC,pc),r1 ; r1 set to 0x8C157B24
extu.b r0,r0
lds.l @r15+,pr 	
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x3503

#align4
loc_8C0AD0A4:
#data bank04.loc_8c044F12

loc_8C0AD0A8:
#data loc_8c0aD088

loc_8C0AD0AC:
#data 0x8C157B24


loc_8C0AD0B0:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov r14,r4
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3
mov.l @(loc_8C0AD210,pc),r0 ; r0 set to 0x8C157B34
extu.b r3,r3
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

#align4
loc_8C0AD0CC:
#data 0x6E432FE6
#data 0x2FC62FD6
#data 0x4F229D97
#data 0xB3803DEc
#data 0xE0245CE6
#data 0x0E24E20b
#data 0xF3C69090
#data 0xFD37E008
#data 0x00ECE021
#data 0x7001600c
#data 0xC74781Ef
#data 0x9086F408
#data 0x233803Cc
#data 0xC7458901
#data 0xF408

loc_8C0AD106:
#data 0xE034
#data 0xF3E6D144
#data 0x415AE517
#data 0xD343F341
#data 0xE038FE37
#data 0xF30DF2E6
#data 0xFE27F230
#data 0x06ECE021
#data 0x760C666c
#data 0x64E3430b
#data 0x02CC906e
#data 0x8B0B2228
#data 0xF408C73b
#data 0x03CC9067
#data 0x8B012338
#data 0xF408C739

#align4
loc_8C0AD144:
#data 0xF3C6E034
#data 0xF340A004

#align4
loc_8C0AD14C:
#data 0x04CE905f
#data 0xF346E034

#align4
loc_8C0AD154:
#data 0xFD37E004
#data 0xF38DE06c
#data 0xFE37E321
#data 0xFE37E068
#data 0xF408C731
#data 0xF3E6E034
#data 0xF2D6E004
#data 0x33ECE05c
#data 0xF243F231
#data 0xE038FE27
#data 0xE008F3E6
#data 0xE060F2D6
#data 0xF243F231
#data 0xC729FE27
#data 0xF4086330
#data 0x633CE034
#data 0xE15C435a
#data 0xF04C31Ec
#data 0xE321F218
#data 0x33ECF32d
#data 0x31ECE160
#data 0xF3E6F232
#data 0xFE37F32e
#data 0x6330E038
#data 0x633CF218
#data 0xF32D435a
#data 0xF3E6F232
#data 0xFE37F32e
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0AD1CE:
mov.l r14,@-r15
sts.l pr,@-r15
bsr loc_8C0AD7De
mov r4,r14
mov.l @(loc_8C0AD220,pc),r3 ; r3 set to 0x8C034E8c
mov 0x0C,r2 ; r2 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov r14,r4
mov.b r2,@(r0,r14) 	
mov 0x0D,r6 ; r6 set to 0x0d
lds.l @r15+,pr 	
mov 0x15,r5 ; r5 set to 0x15
jmp @r3
mov.l @r15+,r14

loc_8C0AD1EA:
mov.l r14,@-r15
sts.l pr,@-r15
bsr loc_8C0AD7De
mov r4,r14
mov.l @(loc_8C0AD220,pc),r3 ; r3 set to 0x8C034E8c
mov 0x09,r2 ; r2 set to 0x09
mov 0x24,r0 ; r0 set to 0x24
mov r14,r4
mov.b r2,@(r0,r14) 	
mov 0x13,r6 ; r6 set to 0x13
lds.l @r15+,pr 	
mov 0x15,r5 ; r5 set to 0x15
jmp @r3
mov.l @r15+,r14
#data 0x00Cc
#data 0x01D2041c
#data 0x020C01A3

#align4
loc_8C0AD210:
#data 0x8C157B34
#data 0x42555555
#data 0xC2555555
#data 0x43700000

#align4
loc_8C0AD220:
#data bank03.loc_8c034e8c
#data 0x43200000
#data 0xC3200000
#data 0x42800000
#data 0x41800000


loc_8C0AD234:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
bsr loc_8C0AD7De
mov.l @(0x18,r14),r13
mov 0x24,r0 ; r0 set to 0x24
mov.w @(loc_8C0AD388,pc),r3 ; r3 set to 0xD4
mov 0x0A,r2 ; r2 set to 0x0a
mov.b r2,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
mov 0x42,r4 ; r4 set to 0x42
mov 0x40,r5 ; r5 set to 0x40
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0AD386,pc),r0 ; r0 set to 0x19c
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x19d
mov.b r4,@(r0,r14) 	
add 0xA0,r0 ; r0 set to 0x13d
mov.b r3,@(r0,r14) 	
add 0xFF,r0 ; r0 set to 0x13c
mov.b r3,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x13d
mov 0x01,r4 ; r4 set to 0x01
mov.b r4,@(r0,r14) 	
mov.b r4,@(r0,r14) 	
mov.b r5,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x13e
mov.b r5,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x13f
mov.b r5,@(r0,r14) 	
mov.b r5,@(r0,r14) 	
add 0xED,r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov.w @(loc_8C0AD38A,pc),r0 ; r0 set to 0x255
mov.l @(0x14,r14),r4 ; r4 ??? bc r14 is ???	
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
extu.b r0,r0
cmp/eq 0x08,r0 	
bf loc_8C0AD290
bra loc_8C0AD29c
mov 0x32,r2

loc_8C0AD290:
mov.w @(loc_8C0AD38A,pc),r0 ; r0 set to 0x255
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
extu.b r0,r0
cmp/eq 0x03,r0 	
bf loc_8C0AD2A2
mov 0x30,r2 ; r2 set to 0x30

loc_8C0AD29C:
mov.w @(loc_8C0AD38C,pc),r0 ; r0 set to 0x1A1, r0 set to 0x1A1
bra loc_8C0AD2A8
mov.b r2,@(r0,r14) 	

loc_8C0AD2A2:
mov.w @(loc_8C0AD38C,pc),r0 ; r0 set to 0x1A1
mov 0x31,r3 ; r3 set to 0x31
mov.b r3,@(r0,r14) 	

loc_8C0AD2A8:
mov.w @(loc_8C0AD38E,pc),r0 ; r0 set to 0x1AC, r0 set to 0x1Ac
mov 0x00,r4 ; r4 set to 0x00, r4 set to 0x00
mov.l @(loc_8C0AD390,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
mov 0x15,r5 ; r5 set to 0x15, r5 set to 0x15
mov.w r4,@(r0,r14) 	
add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19e
mov.b r4,@(r0,r14) 	
add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4
mov.l r4,@(r0,r14) 	
mov r14,r4 ; r4 ??? bc r14 is ???, r4 ??? bc r14 is ???	
mov.b @(0x02,r14),r0 	
mov.l @r3,r2
extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4
mov.l @(loc_8C0AD394,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
shll r0 ; r0 set to 0x188, r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2) 	
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
lds.l @r15+,pr 	
mov.b @(r0,r14),r6
mov.l @r15+,r13
extu.b r6,r6
add 0x11,r6
jmp @r3
mov.l @r15+,r14

loc_8C0AD2DE:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
bsr loc_8C0AD7De
mov.l @(0x18,r14),r13
mov 0x24,r0 ; r0 set to 0x24
mov.w @(loc_8C0AD388,pc),r3 ; r3 set to 0xD4
mov 0x0A,r2 ; r2 set to 0x0a
mov.b r2,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
mov 0x42,r4 ; r4 set to 0x42
mov 0x01,r2 ; r2 set to 0x01
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0AD386,pc),r0 ; r0 set to 0x19c
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x19d
mov.b r4,@(r0,r14) 	
add 0xA0,r0 ; r0 set to 0x13d
mov.b r3,@(r0,r14) 	
add 0xFF,r0 ; r0 set to 0x13c
mov.b r3,@(r0,r14) 	
mov 0x40,r4 ; r4 set to 0x40
add 0x01,r0 ; r0 set to 0x13d
mov.b r2,@(r0,r14) 	
mov.b r2,@(r0,r14) 	
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x13e
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x13f
mov.b r4,@(r0,r14) 	
mov.b r4,@(r0,r14) 	
add 0xED,r0 ; r0 set to 0x12c
mov 0x00,r4 ; r4 set to 0x00
mov.l @(loc_8C0AD398,pc),r1 ; r1 set to 0x43F00000
mov.b r4,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
lds r1,fpul 	
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???	
fsts fpul,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x02,r0 ; r0 set to 0x02
mov.w r0,@(0x1C,r14) 	
mov.w @(loc_8C0AD38A,pc),r0 ; r0 set to 0x255
mov.l @(0x14,r14),r5
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x08,r0 	
bf loc_8C0AD352
mov.w @(loc_8C0AD38C,pc),r0 ; r0 set to 0x1A1
mov 0x32,r2 ; r2 set to 0x32
bra loc_8C0AD358
mov.b r2,@(r0,r14) 	

loc_8C0AD352:
mov.w @(loc_8C0AD38C,pc),r0 ; r0 set to 0x1A1
mov 0x31,r3 ; r3 set to 0x31
mov.b r3,@(r0,r14) 	

loc_8C0AD358:
mov.w @(loc_8C0AD38E,pc),r0 ; r0 set to 0x1AC, r0 set to 0x1Ac
mov.l @(loc_8C0AD390,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
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
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
tst r3,r3
bf/s loc_8C0AD39c
mov r14,r4
mov 0x15,r6 ; r6 set to 0x15, r6 set to 0x15
bra loc_8C0AD3A4
mov r6,r5

loc_8C0AD386:
#data 0x019c

loc_8C0AD388:
#data 0x00D4

loc_8C0AD38A:
#data 0x0255

loc_8C0AD38C:
#data 0x01A1

loc_8C0AD38E:
#data 0x01Ac

#align4
loc_8C0AD390:
#data 0x8C2896B0

#align4
loc_8C0AD394:
#data bank03.loc_8c034e8c

loc_8C0AD398:
#data 0x43F00000


loc_8C0AD39C:
mov.b @(r0,r14),r6
mov 0x15,r5 ; r5 set to 0x15
extu.b r6,r6
add 0x11,r6

loc_8C0AD3A4:
lds.l @r15+,pr 	
mov.l @(loc_8C0AD500,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0AD3AE:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
bsr loc_8C0AD7De
mov r4,r14
mov 0x24,r0 ; r0 set to 0x24
fldi0 fr4
mov 0x0B,r2 ; r2 set to 0x0b
mov.l @(loc_8C0AD504,pc),r1 ; r1 set to 0x434DB6Db
mov.b r2,@(r0,r14) 	
mov 0x01,r3 ; r3 set to 0x01
mov.w @(loc_8C0AD4FA,pc),r0 ; r0 set to 0x12c
mov 0x34,r8 ; r8 set to 0x34
lds r1,fpul 	
mov.b r3,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???	
fsts fpul,fr3
fadd fr3,fr2
mov.l @(loc_8C0AD508,pc),r13 ; r13 set to 0x8C03319e
fmov.s fr2,@(r0,r14) 	
jsr @r13
add r14,r8 ; r8 ??? bc r14 is ???	
and 0x3F,r0 	
lds r0,fpul 	
mova @(loc_8C0AD50C,pc),r0  ; r0 set to 0x8C0AD50c
fmov.s @r0,fr2
mova @(loc_8C0AD510,pc),r0  ; r0 set to 0x8C0AD510
fmov.s @r0,fr0 ; r0 ??	
float fpul,fr3
fmac fr0,fr3,fr2
fmov.s @r8,fr3 ; r3 ??? bc r8 is ???	
fadd fr2,fr3
fmov.s fr3,@r8
mov 0x38,r8 ; r8 set to 0x38
jsr @r13
add r14,r8 ; r8 ??? bc r14 is ???	
and 0x7F,r0 	
lds r0,fpul 	
mova @(loc_8C0AD514,pc),r0  ; r0 set to 0x8C0AD514
fmov.s @r0,fr3
mova @(loc_8C0AD518,pc),r0  ; r0 set to 0x8C0AD518
fmov.s @r0,fr0 ; r0 ??	
float fpul,fr2
fmac fr0,fr2,fr3
fmov.s @r8,fr2
fadd fr3,fr2
jsr @r13
fmov.s fr2,@r8
mov.l @(loc_8C0AD51C,pc),r1 ; r1 set to 0x8C157B50
and 0x03,r0 	
shll2 r0
fmov.s @(r0,r1),fr3
mov 0x60,r0 ; r0 set to 0x60
jsr @r13
fmov.s fr3,@(r0,r14) 	
lds.l @r15+,pr 	
mov.l @(loc_8C0AD520,pc),r1 ; r1 set to 0x8C157B4c
and 0x03,r0 	
mov.l @(loc_8C0AD500,pc),r3 ; r3 set to 0x8C034E8c
mov 0x17,r5 ; r5 set to 0x17
mov.l @r15+,r8
mov r14,r4
mov.b @(r0,r1),r6
mov.l @r15+,r13 ; r13 ??? bc r15 is ???	
extu.b r6,r6
jmp @r3
mov.l @r15+,r14

loc_8C0AD448:
mov 0x20,r0 ; r0 set to 0x20
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(loc_8C0AD524,pc),r0 ; r0 set to 0x8C157B60
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

loc_8C0AD45C:
mov r4,r3
mov.l @(loc_8C0AD528,pc),r1 ; r1 set to 0x8C157B78
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0AD46E:
#data 0x854f
#data 0x814F70Ff
#data 0x2008600f
#data 0x84458B04
#data 0x80457001
#data 0x814FE004

#align4
loc_8C0AD484:
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0AD488:
mov.l r14,@-r15
mov r4,r14
mov 0x5C,r1 ; r1 set to 0x5c
mov.l r13,@-r15
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0AD4FC,pc),r13 ; r13 set to 0xCc
mov 0x34,r0 ; r0 set to 0x34
sts.l pr,@-r15
fmov.s @(r0,r14),fr2
add r14,r13 ; r13 ??? bc r14 is ???	
fmov.s @r1,fr3
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
fmov.s @r1,fr3
fmov.s @(r0,r14),fr2
fadd fr3,fr2
mov.l @(loc_8C0AD52C,pc),r3 ; r3 set to 0x8C034DEe
fmov.s fr2,@(r0,r14) 	
jsr @r3
mov r14,r4
mov.w @(0x1E,r14),r0 	
add 0xFF,r0 ; r0 set to 0x5f
mov.w r0,@(0x1E,r14) 	
exts.w r0,r0 ; r0 ??	
tst r0,r0
bf loc_8C0AD56a
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r2
tst r2,r2
bt loc_8C0AD530
mov.b @(0x04,r14),r0 	
mov 0x00,r4 ; r4 set to 0x00
add 0x01,r0 ; r0 set to 0x22
mov.b r0,@(0x04,r14) 	
mov r4,r0 ; r0 set to 0x00
nop 	
mov.b r0,@(0x05,r14) 	
mov.w @(loc_8C0AD4FA,pc),r0 ; r0 set to 0x12c
bra loc_8C0AD56a
mov.b r4,@(r0,r14) 	

loc_8C0AD4FA:
#data 0x012c

loc_8C0AD4FC:
#data 0x00Cc
#data 0x0000

#align4
loc_8C0AD500:
#data bank03.loc_8c034e8c

loc_8C0AD504:
#data 0x434DB6Db

#align4
loc_8C0AD508:
#data bank03.loc_8c03319e

loc_8C0AD50C:
#data 0xC2555555

#align4
loc_8C0AD510:
#data 0x3FD55555

#align4
loc_8C0AD514:
#data 0xC3092492

#align4
loc_8C0AD518:
#data 0x40092492

#align4
loc_8C0AD51C:
#data 0x8C157B50

loc_8C0AD520:
#data 0x8C157B4c

loc_8C0AD524:
#data 0x8C157B60

loc_8C0AD528:
#data 0x8C157B78

loc_8C0AD52C:
#data bank03.loc_8c034dee


loc_8C0AD530:
mov.b @(0x05,r14),r0 	
mov 0x01,r3 ; r3 set to 0x01
mov 0x0D,r2 ; r2 set to 0x0d
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov 0x15,r5 ; r5 set to 0x15
mov.w @(loc_8C0AD672,pc),r0 ; r0 set to 0x12c
mov 0x0F,r6 ; r6 set to 0x0f
mov.b r3,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r2,@(r0,r14) 	
mov 0x04,r0 ; r0 set to 0x04
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0AD678,pc),r3 ; r3 set to 0x8C034E8c
fmov.s fr3,@(r0,r14) 	
mov 0x08,r0 ; r0 set to 0x08
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14) 	
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r14,r4
mov 0x00,r6 ; r6 set to 0x00
mov 0x01,r5 ; r5 set to 0x01
mov.l @r15+,r13
bra loc_8C0ACF4c
mov.l @r15+,r14

loc_8C0AD56A:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0AD572:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @(0x14,r14),r4
mov.b @(0x05,r4),r0 	
tst r0,r0
bf/s loc_8C0AD5Aa
mov 0x00,r13 ; r13 set to 0x00
mov.l @(loc_8C0AD67C,pc),r2 ; r2 set to 0x8C034DEe
jsr @r2
mov r14,r4
mov.w @(loc_8C0AD674,pc),r0 ; r0 set to 0x141
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8C0AD5Ba
mov.b @(0x05,r14),r0 	
mov r14,r4
mov 0x00,r6 ; r6 set to 0x00
add 0x01,r0 ; r0 set to 0x142
mov.b r0,@(0x05,r14) 	
mov 0x02,r5 ; r5 set to 0x02
mov.w @(loc_8C0AD674,pc),r0 ; r0 set to 0x141
mov.b r13,@(r0,r14) 	
lds.l @r15+,pr 	
mov.l @r15+,r13 ; r13 ??? bc r15 is ???	
bra loc_8C0ACF4c
mov.l @r15+,r14

loc_8C0AD5AA:
mov.b @(0x04,r14),r0 	
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov r13,r0
nop 	
mov.b r0,@(0x05,r14) 	
mov.w @(loc_8C0AD672,pc),r0 ; r0 set to 0x12c
mov.b r13,@(r0,r14) 	

loc_8C0AD5BA:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0AD5C2:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @(0x14,r14),r4
mov.b @(0x05,r4),r0 	
tst r0,r0
bf/s loc_8C0AD61e
mov 0x00,r13 ; r13 set to 0x00
mov.l @(loc_8C0AD67C,pc),r2 ; r2 set to 0x8C034DEe
jsr @r2
mov r14,r4
mov.w @(loc_8C0AD674,pc),r0 ; r0 set to 0x141
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8C0AD62e
mov.b @(0x05,r14),r0 	
mov 0x03,r5 ; r5 set to 0x03
mov 0x00,r6 ; r6 set to 0x00
add 0x01,r0 ; r0 set to 0x142
mov.b r0,@(0x05,r14) 	
mov.w @(loc_8C0AD674,pc),r0 ; r0 set to 0x141
mov.b r13,@(r0,r14) 	
mov 0x3E,r0 ; r0 set to 0x3e
mov.w r0,@(0x1E,r14) 	
bsr loc_8C0ACF4c
mov r14,r4
mov 0x04,r5 ; r5 set to 0x04
mov 0x00,r6 ; r6 set to 0x00
bsr loc_8C0ACF4c
mov r14,r4
mov 0x03,r5 ; r5 set to 0x03
mov 0x01,r6 ; r6 set to 0x01
bsr loc_8C0ACF4c
mov r14,r4
mov 0x04,r5 ; r5 set to 0x04
mov 0x01,r6 ; r6 set to 0x01
bsr loc_8C0ACF4c
mov r14,r4
lds.l @r15+,pr 	
mov.l @(loc_8C0AD680,pc),r3 ; r3 set to 0x8C04223a
mov r14,r4
mov 0x4C,r5 ; r5 set to 0x4c
mov.l @r15+,r13 ; r13 ??? bc r15 is ???	
jmp @r3
mov.l @r15+,r14

loc_8C0AD61E:
mov.b @(0x04,r14),r0 	
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov r13,r0
nop 	
mov.b r0,@(0x05,r14) 	
mov.w @(loc_8C0AD672,pc),r0 ; r0 set to 0x12c
mov.b r13,@(r0,r14) 	

loc_8C0AD62E:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0AD636:
#data 0x854f
#data 0x814F70Ff
#data 0x2008600f
#data 0x84448B08
#data 0x7001E500
#data 0x60538044
#data 0x80450009
#data 0x0454900f

#align4
loc_8C0AD654:
#data 0x0009000b
;-------------------------------------------------------------------------------

#align4
loc_8C0AD658:
#data 0x84545546
#data 0x8801600c
#data 0x84448905
#data 0x7001E300
#data 0x90028044
#data 0x0434

loc_8C0AD66E:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0AD672:
#data 0x012c

loc_8C0AD674:
#data 0x0141
#data 0x0000

#align4
loc_8C0AD678:
#data bank03.loc_8c034e8c

loc_8C0AD67C:
#data bank03.loc_8c034dee

loc_8C0AD680:
#data bank04.loc_8c04223a

loc_8C0AD684:
#data 0x84545546
#data 0x8801600c
#data 0x84448908
#data 0x7001E500
#data 0x60538044
#data 0x80450009
#data 0x04549089

#align4
loc_8C0AD6A0:
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0AD6A4:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @(0x18,r14),r4
mov.b @(0x04,r4),r0 	
extu.b r0,r0
cmp/eq 0x01,r0 	
bf/s loc_8C0AD6Dc
mov 0x00,r13 ; r13 set to 0x00
mov.l @(loc_8C0AD7BC,pc),r2 ; r2 set to 0x8C034DEe
jsr @r2
mov r14,r4
mov.l @(loc_8C0AD7C0,pc),r3 ; r3 set to 0x8C045748
jsr @r3
mov r14,r4
mov.w @(loc_8C0AD7B4,pc),r0 ; r0 set to 0x141
mov.b @(r0,r14),r2 ; r2 ??? bc r14 is ???	
tst r2,r2
bt loc_8C0AD6Ec
mov.b r13,@(r0,r14) 	
mov r14,r4
lds.l @r15+,pr 	
mov 0x00,r6 ; r6 set to 0x00
mov 0x05,r5 ; r5 set to 0x05
mov.l @r15+,r13 ; r13 ??? bc r15 is ???	
bra loc_8C0AD010
mov.l @r15+,r14

loc_8C0AD6DC:
mov.b @(0x04,r14),r0 	
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov r13,r0
nop 	
mov.b r0,@(0x05,r14) 	
mov.w @(loc_8C0AD7B2,pc),r0 ; r0 set to 0x12c
mov.b r13,@(r0,r14) 	

loc_8C0AD6EC:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0AD6F4:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.w @(0x1C,r14),r0 	
tst r0,r0
bf/s loc_8C0AD70a
mov.l @(0x18,r14),r4
mov.w @(0x1C,r14),r0 	
add 0xFF,r0
bra loc_8C0AD754
mov.w r0,@(0x1C,r14) 	

loc_8C0AD70A:
mov.b @(0x04,r4),r0 	
extu.b r0,r0
cmp/eq 0x01,r0 	
bf loc_8C0AD74e
mov.w @(loc_8C0AD7B2,pc),r0 ; r0 set to 0x12c
mov 0x01,r2 ; r2 set to 0x01
mov.l @(loc_8C0AD7C4,pc),r5 ; r5 set to 0x8C26A518
mov.b r2,@(r0,r14) 	
mova @(loc_8C0AD7C8,pc),r0  ; r0 set to 0x8C0AD7C8
fmov.s @r0,fr4
mov.w @(loc_8C0AD7B6,pc),r0 ; r0 set to 0x94
fmov.s @(r0,r5),fr3
fcmp/gt fr4,fr3
bf loc_8C0AD736
mova @(loc_8C0AD7CC,pc),r0  ; r0 set to 0x8C0AD7Cc
fmov.s @r0,fr3
mov.w @(loc_8C0AD7B8,pc),r0 ; r0 set to 0x90
fmov.s @(r0,r5),fr2 ; r2 ??	
mov 0x38,r0 ; r0 set to 0x38
fadd fr3,fr2
bra loc_8C0AD73e
fmov.s fr2,@(r0,r14) 	

loc_8C0AD736:
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r4),fr3
fadd fr4,fr3
fmov.s fr3,@(r0,r14) 	

loc_8C0AD73E:
mov.l @(loc_8C0AD7BC,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov.l @(loc_8C0AD7C0,pc),r2 ; r2 set to 0x8C045748, r2 set to 0x8C045748
mov r14,r4
jmp @r2
mov.l @r15+,r14

loc_8C0AD74E:
mov.b @(0x04,r14),r0 	
add 0x01,r0
mov.b r0,@(0x04,r14) 	

loc_8C0AD754:
mov.w @(loc_8C0AD7B2,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
mov.b r3,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0AD760:
#data 0x314CE160
#data 0xF318E038
#data 0xE16CF246
#data 0xF230314c
#data 0xE060F427
#data 0xF318F246
#data 0xF427F230
#data 0x84545546
#data 0x8801600c
#data 0x84448905
#data 0x7001E300
#data 0x90108044
#data 0x0434

loc_8C0AD792:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0AD796:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0AD7B2,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
extu.b r0,r0
cmp/eq 0x03,r0 	
bf loc_8C0AD7D4
mov.l @(loc_8C0AD7D0,pc),r2 ; r2 set to 0x8C04223a
jmp @r2
mov 0x3A,r5

loc_8C0AD7B2:
#data 0x012c

loc_8C0AD7B4:
#data 0x0141

loc_8C0AD7B6:
#data 0x0094

loc_8C0AD7B8:
#data 0x0090
#data 0x0000

#align4
loc_8C0AD7BC:
#data bank03.loc_8c034dee

loc_8C0AD7C0:
#data bank04.loc_8c045748

loc_8C0AD7C4:
#data 0x8C26A518

#align4
loc_8C0AD7C8:
#data 0x43F00000

#align4
loc_8C0AD7CC:
#data 0xC3F00000

#align4
loc_8C0AD7D0:
#data bank04.loc_8c04223a


loc_8C0AD7D4:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0AD7D8:
mov.l @(loc_8C0AD86C,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0AD7DE:
mov.w @(loc_8C0AD864,pc),r1 ; r1 set to 0xDc
mov.w @(loc_8C0AD864,pc),r0 ; r0 set to 0xDc
sts.l pr,@-r15
mov.l @(0x18,r4),r2
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0AD870,pc),r3 ; r3 set to 0x8C129560
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0AD866,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0AD868,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0AD874,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x24,r0 ; r0 set to 0x24
mov 0x20,r2 ; r2 set to 0x20
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r4) 	
mov 0x24,r3 ; r3 set to 0x24
mov.w @(loc_8C0AD86A,pc),r0 ; r0 set to 0x13d
mov.b r2,@(r0,r4) 	
add 0xFF,r0 ; r0 set to 0x13c
mov.b r2,@(r0,r4) 	
add 0x03,r0 ; r0 set to 0x13f
mov.b r3,@(r0,r4) 	
add 0xFF,r0 ; r0 set to 0x13e
mov 0x0B,r2 ; r2 set to 0x0b
mov.b r3,@(r0,r4) 	
mov r3,r0 ; r0 set to 0x24
nop 	
lds.l @r15+,pr 	
rts 	
mov.b r2,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0AD860:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0AD864:
#data 0x00Dc

loc_8C0AD866:
#data 0x012c

loc_8C0AD868:
#data 0x01A3

loc_8C0AD86A:
#data 0x013d

#align4
loc_8C0AD86C:
#data bank04.loc_8c0450C0

loc_8C0AD870:
#data bank12.loc_8c129560

loc_8C0AD874:
#data bank12.loc_8c1294C8
#data 0x4F222FE6
#data 0x6E437FF8
#data 0x00096053
#data 0x80F4D33f
#data 0xE6012F60
#data 0x430B6563
#data 0x2008E400
#data 0x64038D1a
#data 0xD33BE034
#data 0x956DE120
#data 0x314C1434
#data 0x354CF3E6
#data 0xF4379369
#data 0xF3E6E038
#data 0x14E6F437
#data 0x804184E1
#data 0x0435E026
#data 0x210084F4
#data 0x63F0E021
#data 0x905B0434
#data 0x252202Ee
#data 0x00096043
#data 0x4F267F08
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0AD8D8:
#data 0x6E432FE6
#data 0xED002FD6
#data 0xEC092FC6
#data 0x2FA62FB6
#data 0x2F96EA08
#data 0x9B464F22
#data 0xD924

loc_8C0AD8F2:
#data 0xE601
#data 0x490B6563
#data 0x2008E400
#data 0x64038D19
#data 0x963BE034
#data 0x36EC953a
#data 0x354CD21f
#data 0xF3E61424
#data 0xE038F437
#data 0xF437F3E6
#data 0x143653E6
#data 0x804184E1
#data 0x04B5E026
#data 0x04C4E020
#data 0x04D4E021
#data 0x25326362
#data 0x14E5

loc_8C0AD932:
#data 0x7D01
#data 0x8BDC3DA3
#data 0x00096043
#data 0x69F64F26
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0AD94C:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0AD98C,pc),r3 ; r3 set to 0x8C0AFC66
jsr @r3
mov r4,r14
mov 0x20,r0 ; r0 set to 0x20
mov r14,r4
mov.b @(r0,r14),r2
mov.l @(loc_8C0AD990,pc),r0 ; r0 set to 0x8C157B8c
extu.b r2,r2
lds.l @r15+,pr 	
shll2 r2
mov.l @(r0,r2),r3 ; r3 ??? bc r2 is ???	
jmp @r3
mov.l @r15+,r14

loc_8C0AD96A:
mov r4,r3
mov.l @(loc_8C0AD994,pc),r1 ; r1 set to 0x8C157BBc
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x350400Cc
#data 0x0000020c

#align4
loc_8C0AD984:
#data bank04.loc_8c044F12

loc_8C0AD988:
#data loc_8c0aD94c

loc_8C0AD98C:
#data loc_8c0aFC66

loc_8C0AD990:
#data 0x8C157B8c

loc_8C0AD994:
#data 0x8C157BBc


loc_8C0AD998:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov 0x00,r13 ; r13 set to 0x00
mov.l r12,@-r15
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov r13,r0 ; r0 set to 0x00
nop 	
mov.l @(loc_8C0ADAAC,pc),r3 ; r3 set to 0x8C0AFBE4
mov.b r0,@(0x05,r14) 	
mov.b r0,@(0x06,r14) 	
mov.l @(0x18,r14),r12
jsr @r3
mov r14,r4
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0ADAB0,pc),r3 ; r3 set to 0x8C0AF80c
fmov.s @(r0,r12),fr3 ; r3 ??? bc r12 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r12),fr3
fmov.s fr3,@(r0,r14) 	
jsr @r3
mov r14,r4
mov.w @(loc_8C0ADAA0,pc),r0 ; r0 set to 0x1A1
mov 0x12,r2 ; r2 set to 0x12
mov.l @(loc_8C0ADAB4,pc),r3 ; r3 set to 0x8C2896B0
mov.b r2,@(r0,r14) 	
add 0x0B,r0 ; r0 set to 0x1Ac
mov.w r13,@(r0,r14) 	
add 0xF2,r0 ; r0 set to 0x19e
mov.b r13,@(r0,r14) 	
add 0x26,r0 ; r0 set to 0x1C4
mov.l r13,@(r0,r14) 	
mov.b @(0x02,r14),r0 	
mov.l @r3,r2 ; r2 ??	
extu.b r0,r0 ; r0 set to 0xC4
shll r0 ; r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2) 	
mov.l @(loc_8C0ADAB8,pc),r2 ; r2 set to 0x8C0AF848
jsr @r2
mov r14,r4
lds.l @r15+,pr 	
mov r13,r6 ; r6 set to 0x00
mov.l @(loc_8C0ADABC,pc),r3 ; r3 set to 0x8C034E8c
mov r14,r4
mov 0x19,r5 ; r5 set to 0x19
mov.l @r15+,r12
mov.l @r15+,r13 ; r13 ??? bc r15 is ???	
jmp @r3
mov.l @r15+,r14

loc_8C0ADA08:
mov.w @(loc_8C0ADAA2,pc),r0 ; r0 set to 0x19f
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8C0ADA20
lds.l @r15+,pr 	
mov.l @(loc_8C0ADAC0,pc),r3 ; r3 set to 0x8C0AF96a
mov r14,r4
jmp @r3
mov.l @r15+,r14

loc_8C0ADA20:
mov.l @(loc_8C0ADAC4,pc),r3 ; r3 set to 0x8C0AF9A2
jsr @r3
mov r14,r4
tst r0,r0
bt loc_8C0ADA34
lds.l @r15+,pr 	
mov.l @(loc_8C0ADAC8,pc),r3 ; r3 set to 0x8C0AF994
mov r14,r4
jmp @r3
mov.l @r15+,r14

loc_8C0ADA34:
mov.b @(0x05,r14),r0 	
mov r14,r4
mov.l @(loc_8C0ADACC,pc),r1 ; r1 set to 0x8C157BCc
extu.b r0,r0
lds.l @r15+,pr 	
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0ADA46:
#data 0x902d
#data 0x6E432FE6
#data 0x233803Ec
#data 0x9028891e
#data 0x844304Ee
#data 0x8B152008
#data 0x024C9024
#data 0x8B112228
#data 0xE3188441
#data 0x3033600c
#data 0x84418B04
#data 0x600CE21a
#data 0x8B073027

#align4
loc_8C0ADA78:
#data 0x00EC9014
#data 0x8B03C87f
#data 0x64E3D213
#data 0x6EF6422b

#align4
loc_8C0ADA88:
#data 0x64E3D20f
#data 0x6EF6422b

#align4
loc_8C0ADA90:
#data 0x64E384E6
#data 0x600CD10f
#data 0x031E4008
#data 0x6EF6432b

loc_8C0ADAA0:
#data 0x01A1

loc_8C0ADAA2:
#data 0x019f
#data 0x01B0019e
#data 0x00000411

#align4
loc_8C0ADAAC:
#data loc_8c0aFBE4

loc_8C0ADAB0:
#data loc_8c0aF80c

loc_8C0ADAB4:
#data 0x8C2896B0

#align4
loc_8C0ADAB8:
#data loc_8c0aF848

loc_8C0ADABC:
#data bank03.loc_8c034e8c

loc_8C0ADAC0:
#data loc_8c0aF96a

loc_8C0ADAC4:
#data loc_8c0aF9A2

loc_8C0ADAC8:
#data loc_8c0aF994

loc_8C0ADACC:
#data 0x8C157BCc

loc_8C0ADAD0:
#data loc_8c0aF922

loc_8C0ADAD4:
#data 0x8C157BD4

loc_8C0ADAD8:
#data 0x6E432FE6
#data 0x909E2FD6
#data 0x5DE64F22
#data 0x600C00Dc
#data 0x8B048807
#data 0x00DC9098
#data 0x8802600c
#data 0x8905

loc_8C0ADAF6:
#data 0x4F26
#data 0x64E3D24b
#data 0x422B6DF6
#data 0x6EF6

loc_8C0ADB02:
#data 0xE15c
#data 0x31ECD349
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
#data 0x64E3430b
#data 0xF3E6E038
#data 0xF2D6906d
#data 0x8F07F235
#data 0xF3D6F48d
#data 0xFE37E038
#data 0xFE47E060
#data 0xFE47E06c

#align4
loc_8C0ADB5C:
#data 0x03EC9062
#data 0x8B144311
#data 0x700184E6
#data 0xE06C80E6
#data 0xE068FE47
#data 0xC72FFE47
#data 0xE060F308
#data 0xC72EFE37
#data 0x9052F408
#data 0x233803Dc
#data 0xC72C8B01
#data 0xF408

loc_8C0ADB8A:
#data 0xE05c
#data 0xFE47

loc_8C0ADB8E:
#data 0x4F26
#data 0x64E3D32a
#data 0x432B6DF6
#data 0x6EF6

loc_8C0ADB9A:
#data 0x2FE6
#data 0xE15C6E43
#data 0xE0342FD6
#data 0x4F2231Ec
#data 0xF318F2E6
#data 0x31ECE168
#data 0xF2305DE6
#data 0xE05CFE27
#data 0xE160F318
#data 0x31ECF2E6
#data 0xFE27F230
#data 0xF318E038
#data 0xF2E6E16c
#data 0xF23031Ec
#data 0xE060FE27
#data 0xF2E6F318
#data 0xD319F230
#data 0x430BFE27
#data 0xD21864E3
#data 0x64E3420b
#data 0xF3E6E038
#data 0xF2D69019
#data 0x8F08F235
#data 0xF3D664E3
#data 0xFE37E038
#data 0xF38DE06c
#data 0xE060FE37
#data 0xFE37

loc_8C0ADC06:
#data 0xD309
#data 0x0009430b
#data 0x4011600e
#data 0x4F26891a
#data 0x64E3D304
#data 0x432B6DF6
#data 0x01596EF6
#data 0x041C0158
#data 0x01D20140

#align4
loc_8C0ADC28:
#data loc_8c0aF994

loc_8C0ADC2C:
#data bank03.loc_8c034dee
#data 0xC0092492
#data 0x40D55555
#data 0xC0D55555

#align4
loc_8C0ADC3C:
#data bank04.loc_8c045748

loc_8C0ADC40:
#data loc_8c0aF6D6

loc_8C0ADC44:
#data loc_8c0aF734

loc_8C0ADC48:
#data 0xD3444F26
#data 0x6DF664E3
#data 0x6EF6432b

#align4
loc_8C0ADC54:
#data 0x2FD62FE6
#data 0x4F222FC6
#data 0x6E437FFc
#data 0x93785CE6
#data 0x33CC9476
#data 0x34EC2F32
#data 0x6D42D33c
#data 0x64E3430b
#data 0x200884E6
#data 0x84E68B52
#data 0x80E67001
#data 0xF408C738
#data 0xF5E6E034
#data 0xF531F3D6
#data 0xF535F38d
#data 0xC7358B01
#data 0xF408

loc_8C0ADC96:
#data 0xF540
#data 0xF45CF38d
#data 0x8B00F345
#data 0xF44d

loc_8C0ADCA2:
#data 0x84D1
#data 0x600CD431
#data 0x65434008
#data 0x305C4000
#data 0xF435F308
#data 0xF38D8F06
#data 0x600C84D1
#data 0x40004008
#data 0xF458350c

#align4
loc_8C0ADCC4:
#data 0x8F01F355
#data 0xF44DE05c

#align4
loc_8C0ADCCC:
#data 0xE038FE47
#data 0xE104F2E6
#data 0x84D1F3D6
#data 0x600CF231
#data 0x40004008
#data 0xF42C304c
#data 0xF431F316
#data 0xF345F38d
#data 0x84D18B09
#data 0x4008600c
#data 0x340C4000
#data 0xF246E004
#data 0xA002E060
#data 0xFE27

loc_8C0ADD02:
#data 0xE060
#data 0xFE47

loc_8C0ADD06:
#data 0xD31a
#data 0x64E3430b
#data 0xE51964E3
#data 0x7F04E601
#data 0xD2174F26
#data 0x6DF66CF6
#data 0x6EF6422b

#align4
loc_8C0ADD20:
#data 0x842362F2
#data 0x893C2008
#data 0x03CC9016
#data 0x8B382338
#data 0x430BD311
#data 0x200864E3
#data 0xD3108B04
#data 0x64E3430b
#data 0x891F2008

#align4
loc_8C0ADD44:
#data 0x7F0464E3
#data 0xD30D4F26
#data 0x6DF66CF6
#data 0x6EF6432b
#data 0x02A400Cc
#data 0x00000411

#align4
loc_8C0ADD5C:
#data bank04.loc_8c045748

loc_8C0ADD60:
#data loc_8c0aFB80
#data 0xC1D55555
#data 0x41D55555

#align4
loc_8C0ADD6C:
#data 0x8C158124

loc_8C0ADD70:
#data loc_8c0aF5Dc

loc_8C0ADD74:
#data bank03.loc_8c034e8c

loc_8C0ADD78:
#data loc_8c0aF6Ac

loc_8C0ADD7C:
#data loc_8c0aF770

loc_8C0ADD80:
#data loc_8c0aF96a

loc_8C0ADD84:
#data 0x430BD33f
#data 0xD23F64E3
#data 0x64E3420b
#data 0x4011600e
#data 0xD23D890d
#data 0x420B65D3
#data 0x200864E3
#data 0x8B07

loc_8C0ADDA2:
#data 0x64E3
#data 0x4F267F04
#data 0x6CF6D239
#data 0x422B6DF6
#data 0x6EF6

loc_8C0ADDB2:
#data 0x7F04
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0ADDBE:
mov r4,r3
mov.l @(loc_8C0ADE94,pc),r1 ; r1 set to 0x8C157BDc
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

#align4
loc_8C0ADDD0:
#data 0x6E432FE6
#data 0x84E64F22
#data 0x20089453
#data 0x34EC8F10
#data 0x700184E6
#data 0x844780E6
#data 0x8B024011
#data 0x420BD22a
#data 0x64E3

loc_8C0ADDF2:
#data 0xD32a
#data 0xE603E519
#data 0x64E3430b
#data 0x0009A00b

#align4
loc_8C0ADE00:
#data 0x420BD221
#data 0x600E64E3
#data 0x89044011
#data 0xD2244F26
#data 0x422B64E3
#data 0x6EF6

loc_8C0ADE16:
#data 0x4F26
#data 0x64E3D222
#data 0x6EF6422b

#align4
loc_8C0ADE20:
#data 0x6E432FE6
#data 0x84E64F22
#data 0x2008942b
#data 0x34EC8F10
#data 0x700184E6
#data 0x844780E6
#data 0x8B024011
#data 0x420BD216
#data 0x64E3

loc_8C0ADE42:
#data 0xD316
#data 0xE602E519
#data 0x64E3430b
#data 0x0009A00b

#align4
loc_8C0ADE50:
#data 0x420BD20d
#data 0x600E64E3
#data 0x89044011
#data 0xD2104F26
#data 0x422B64E3
#data 0x6EF6

loc_8C0ADE66:
#data 0x4F26
#data 0x64E3D20e
#data 0x6EF6422b


loc_8C0ADE70:
mov r4,r3
mov.l @(loc_8C0ADEA8,pc),r1 ; r1 set to 0x8C157BE4
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x00Cc

#align4
loc_8C0ADE84:
#data loc_8c0aF5Dc

loc_8C0ADE88:
#data bank03.loc_8c034dee

loc_8C0ADE8C:
#data loc_8c0aF598

loc_8C0ADE90:
#data loc_8c0aF994

loc_8C0ADE94:
#data 0x8C157BDc

loc_8C0ADE98:
#data loc_8c0aFB9c

loc_8C0ADE9C:
#data bank03.loc_8c034e8c

loc_8C0ADEA0:
#data loc_8c0aFBB0

loc_8C0ADEA4:
#data loc_8c0aFB7c

loc_8C0ADEA8:
#data 0x8C157BE4


loc_8C0ADEAC:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov 0x00,r13 ; r13 set to 0x00
mov.l r12,@-r15
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov r13,r0 ; r0 set to 0x00
nop 	
mov.l @(loc_8C0ADFD0,pc),r3 ; r3 set to 0x8C0AFBE4
mov.b r0,@(0x05,r14) 	
mov.b r0,@(0x06,r14) 	
mov.l @(0x18,r14),r12
jsr @r3
mov r14,r4
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0ADFD4,pc),r3 ; r3 set to 0x8C0AF80c
fmov.s @(r0,r12),fr3 ; r3 ??? bc r12 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r12),fr3
fmov.s fr3,@(r0,r14) 	
jsr @r3
mov r14,r4
mov.w @(loc_8C0ADFC6,pc),r0 ; r0 set to 0x1A1
mov 0x14,r2 ; r2 set to 0x14
mov.l @(loc_8C0ADFD8,pc),r3 ; r3 set to 0x8C2896B0
mov.b r2,@(r0,r14) 	
add 0x0B,r0 ; r0 set to 0x1Ac
mov.w r13,@(r0,r14) 	
add 0xF2,r0 ; r0 set to 0x19e
mov.b r13,@(r0,r14) 	
add 0x26,r0 ; r0 set to 0x1C4
mov.l r13,@(r0,r14) 	
mov.b @(0x02,r14),r0 	
mov.l @r3,r2 ; r2 ??	
extu.b r0,r0 ; r0 set to 0xC4
shll r0 ; r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2) 	
mov.l @(loc_8C0ADFDC,pc),r2 ; r2 set to 0x8C0AF848
jsr @r2
mov r14,r4
lds.l @r15+,pr 	
mov r13,r6 ; r6 set to 0x00
mov.l @(loc_8C0ADFE0,pc),r3 ; r3 set to 0x8C034E8c
mov r14,r4
mov 0x19,r5 ; r5 set to 0x19
mov.l @r15+,r12
mov.l @r15+,r13 ; r13 ??? bc r15 is ???	
jmp @r3
mov.l @r15+,r14

loc_8C0ADF1C:
mov.w @(loc_8C0ADFC8,pc),r0 ; r0 set to 0x19f
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8C0ADF34
lds.l @r15+,pr 	
mov.l @(loc_8C0ADFE4,pc),r3 ; r3 set to 0x8C0AF96a
mov r14,r4
jmp @r3
mov.l @r15+,r14

loc_8C0ADF34:
mov.l @(loc_8C0ADFE8,pc),r3 ; r3 set to 0x8C0AF9A2
jsr @r3
mov r14,r4
tst r0,r0
bt loc_8C0ADF48
lds.l @r15+,pr 	
mov.l @(loc_8C0ADFEC,pc),r3 ; r3 set to 0x8C0AF994
mov r14,r4
jmp @r3
mov.l @r15+,r14

loc_8C0ADF48:
mov.b @(0x05,r14),r0 	
mov r14,r4
mov.l @(loc_8C0ADFF0,pc),r1 ; r1 set to 0x8C157BF4
extu.b r0,r0
lds.l @r15+,pr 	
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0ADF5A:
#data 0x9036
#data 0x6E432FE6
#data 0x03EC4F22
#data 0x891B2338
#data 0x04EE9030
#data 0x20088443
#data 0x902C8B1b
#data 0x2228024c
#data 0x84418B17
#data 0x600CE318
#data 0x8B043033
#data 0xE21A8441
#data 0x3027600c
#data 0x8B0d

loc_8C0ADF8E:
#data 0x901c
#data 0xC87F00Ec
#data 0x4F268B09
#data 0x64E3D316
#data 0x6EF6432b

#align4
loc_8C0ADFA0:
#data 0x430BD315
#data 0x200864E3
#data 0x8904

loc_8C0ADFAA:
#data 0x4F26
#data 0x64E3D30f
#data 0x6EF6432b

#align4
loc_8C0ADFB4:
#data 0x64E384E6
#data 0x600CD110
#data 0x40084F26
#data 0x432B031e
#data 0x6EF6

loc_8C0ADFC6:
#data 0x01A1

loc_8C0ADFC8:
#data 0x019f
#data 0x019e
#data 0x041101B0

#align4
loc_8C0ADFD0:
#data loc_8c0aFBE4

loc_8C0ADFD4:
#data loc_8c0aF80c

loc_8C0ADFD8:
#data 0x8C2896B0

#align4
loc_8C0ADFDC:
#data loc_8c0aF848

loc_8C0ADFE0:
#data bank03.loc_8c034e8c

loc_8C0ADFE4:
#data loc_8c0aF96a

loc_8C0ADFE8:
#data loc_8c0aF9A2

loc_8C0ADFEC:
#data loc_8c0aF994

loc_8C0ADFF0:
#data 0x8C157BF4

loc_8C0ADFF4:
#data loc_8c0aF922

loc_8C0ADFF8:
#data loc_8c0aFA8e

loc_8C0ADFFC:
#data 0x8C157BFc

loc_8C0AE000:
#data 0x6E432FE6
#data 0x2FD6E15c
#data 0xFFFB31Ec
#data 0x4F22E034
#data 0xF318F2E6
#data 0x31ECE168
#data 0xF2305DE6
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
#data 0xF3E6E038
#data 0xF2D6907f
#data 0x8F07F235
#data 0xF3D6FF8d
#data 0xFE37E038
#data 0xFEF7E060
#data 0xFEF7E06c

#align4
loc_8C0AE060:
#data 0x430BD33b
#data 0x600E64E3
#data 0x89194011
#data 0xE51984E6
#data 0xE601D338
#data 0x80E67001
#data 0x64E3430b
#data 0xFEF7E06c
#data 0xFEF7E068
#data 0xF308C734
#data 0xFE37E060
#data 0xF408C733
#data 0x03DC905c
#data 0x8B012338
#data 0xF408C731

#align4
loc_8C0AE09C:
#data 0xFE47E05c

#align4
loc_8C0AE0A0:
#data 0xD3304F26
#data 0xFFF964E3
#data 0x432B6DF6
#data 0x6EF6

loc_8C0AE0AE:
#data 0x2FE6
#data 0xE15C6E43
#data 0xE0342FD6
#data 0x4F2231Ec
#data 0xF318F2E6
#data 0x31ECE168
#data 0xF2305DE6
#data 0xE05CFE27
#data 0xE160F318
#data 0x31ECF2E6
#data 0xFE27F230
#data 0xF318E038
#data 0xF2E6E16c
#data 0xF23031Ec
#data 0xE060FE27
#data 0xF2E6F318
#data 0xD31EF230
#data 0x430BFE27
#data 0xE03864E3
#data 0x9026F3E6
#data 0xF235F2D6
#data 0x64E38F08
#data 0xE038F3D6
#data 0xFE37F48d
#data 0xFE47E060
#data 0xFE47E06c

#align4
loc_8C0AE114:
#data 0x430BD30e
#data 0x600E0009
#data 0x89054011
#data 0xD3124F26
#data 0x6DF664E3
#data 0x6EF6432b

#align4
loc_8C0AE12C:
#data 0xD30D4F26
#data 0x6DF664E3
#data 0x6EF6432b


loc_8C0AE138:
mov r4,r3
mov.l @(loc_8C0AE170,pc),r1 ; r1 set to 0x8C157C04
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x041c
#data 0x000001D2

#align4
loc_8C0AE150:
#data bank03.loc_8c034dee

loc_8C0AE154:
#data bank03.loc_8c034e8c
#data 0xC0092492
#data 0x40D55555
#data 0xC0D55555

#align4
loc_8C0AE164:
#data bank04.loc_8c045748

loc_8C0AE168:
#data loc_8c0aF6D6

loc_8C0AE16C:
#data loc_8c0aF994

loc_8C0AE170:
#data 0x8C157C04


loc_8C0AE174:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov 0x00,r13 ; r13 set to 0x00
mov.l r12,@-r15
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov r13,r0 ; r0 set to 0x00
nop 	
mov.l @(loc_8C0AE298,pc),r3 ; r3 set to 0x8C0AFBE4
mov.b r0,@(0x05,r14) 	
mov.b r0,@(0x06,r14) 	
mov.l @(0x18,r14),r12
jsr @r3
mov r14,r4
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0AE29C,pc),r3 ; r3 set to 0x8C0AF80c
fmov.s @(r0,r12),fr3 ; r3 ??? bc r12 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r12),fr3
fmov.s fr3,@(r0,r14) 	
jsr @r3
mov r14,r4
mov.w @(loc_8C0AE28E,pc),r0 ; r0 set to 0x1A1
mov 0x16,r2 ; r2 set to 0x16
mov.l @(loc_8C0AE2A0,pc),r3 ; r3 set to 0x8C2896B0
mov.b r2,@(r0,r14) 	
add 0x0B,r0 ; r0 set to 0x1Ac
mov.w r13,@(r0,r14) 	
add 0xF2,r0 ; r0 set to 0x19e
mov.b r13,@(r0,r14) 	
add 0x26,r0 ; r0 set to 0x1C4
mov.l r13,@(r0,r14) 	
mov.b @(0x02,r14),r0 	
mov.l @r3,r2 ; r2 ??	
extu.b r0,r0 ; r0 set to 0xC4
shll r0 ; r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2) 	
mov.l @(loc_8C0AE2A4,pc),r2 ; r2 set to 0x8C0AF848
jsr @r2
mov r14,r4
lds.l @r15+,pr 	
mov.l @(loc_8C0AE2A8,pc),r3 ; r3 set to 0x8C034E8c
mov 0x19,r5 ; r5 set to 0x19
mov r14,r4
mov 0x13,r6 ; r6 set to 0x13
mov.l @r15+,r12
mov.l @r15+,r13 ; r13 ??? bc r15 is ???	
jmp @r3
mov.l @r15+,r14

loc_8C0AE1E4:
mov.w @(loc_8C0AE290,pc),r0 ; r0 set to 0x19f
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8C0AE1Fc
lds.l @r15+,pr 	
mov.l @(loc_8C0AE2AC,pc),r3 ; r3 set to 0x8C0AF96a
mov r14,r4
jmp @r3
mov.l @r15+,r14

loc_8C0AE1FC:
mov.l @(loc_8C0AE2B0,pc),r3 ; r3 set to 0x8C0AF9A2
jsr @r3
mov r14,r4
tst r0,r0
bt loc_8C0AE210
lds.l @r15+,pr 	
mov.l @(loc_8C0AE2B4,pc),r3 ; r3 set to 0x8C0AF994
mov r14,r4
jmp @r3
mov.l @r15+,r14

loc_8C0AE210:
mov.b @(0x05,r14),r0 	
mov r14,r4
mov.l @(loc_8C0AE2B8,pc),r1 ; r1 set to 0x8C157C14
extu.b r0,r0
lds.l @r15+,pr 	
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0AE222:
#data 0x9036
#data 0x6E432FE6
#data 0x03EC4F22
#data 0x891B2338
#data 0x04EE9030
#data 0x20088443
#data 0x902C8B1b
#data 0x2228024c
#data 0x84418B17
#data 0x600CE318
#data 0x8B043033
#data 0xE21A8441
#data 0x3027600c
#data 0x8B0d

loc_8C0AE256:
#data 0x901c
#data 0xC87F00Ec
#data 0x4F268B09
#data 0x64E3D316
#data 0x6EF6432b

#align4
loc_8C0AE268:
#data 0x430BD315
#data 0x200864E3
#data 0x8904

loc_8C0AE272:
#data 0x4F26
#data 0x64E3D30f
#data 0x6EF6432b

#align4
loc_8C0AE27C:
#data 0x64E384E6
#data 0x600CD110
#data 0x40084F26
#data 0x432B031e
#data 0x6EF6

loc_8C0AE28E:
#data 0x01A1

loc_8C0AE290:
#data 0x019f
#data 0x019e
#data 0x041101B0

#align4
loc_8C0AE298:
#data loc_8c0aFBE4

loc_8C0AE29C:
#data loc_8c0aF80c

loc_8C0AE2A0:
#data 0x8C2896B0

#align4
loc_8C0AE2A4:
#data loc_8c0aF848

loc_8C0AE2A8:
#data bank03.loc_8c034e8c

loc_8C0AE2AC:
#data loc_8c0aF96a

loc_8C0AE2B0:
#data loc_8c0aF9A2

loc_8C0AE2B4:
#data loc_8c0aF994

loc_8C0AE2B8:
#data 0x8C157C14

loc_8C0AE2BC:
#data loc_8c0aF922

loc_8C0AE2C0:
#data loc_8c0aFA8e

loc_8C0AE2C4:
#data 0x8C157C1c

loc_8C0AE2C8:
#data 0x6E432FE6
#data 0x4F222FD6
#data 0x430BD33a
#data 0xE15C5DE6
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
#data 0xE05CFE27
#data 0x9050F4E6
#data 0x233803Ed
#data 0xF38D8F01
#data 0xF44d

loc_8C0AE31E:
#data 0xF435
#data 0xE0388B13
#data 0x9047F2E6
#data 0xF125F1D6
#data 0x64E38F08
#data 0xE038F2D6
#data 0xFE27F43c
#data 0xFE47E060
#data 0xFE47E06c

#align4
loc_8C0AE340:
#data 0xD31F4F26
#data 0x432B6DF6
#data 0x6EF6

loc_8C0AE34A:
#data 0x84E6
#data 0x700164E3
#data 0xE00080E6
#data 0x4F2680E7
#data 0xA0006DF6
#data 0x6EF6

loc_8C0AE35E:
#data 0x2FE6
#data 0xFFFB2FD6
#data 0x7FF04F22
#data 0x84E76E43
#data 0x8B332008
#data 0xE30184E7
#data 0x80E77001
#data 0xF408C712
#data 0xF508C712
#data 0x02ED9019
#data 0x0E25223a
#data 0x2228622f
#data 0xC70F8B03
#data 0xC70FF408
#data 0xF508

loc_8C0AE396:
#data 0xE05c
#data 0xFE47D30e
#data 0xFE57E068
#data 0xF48DE060
#data 0xFE47E519
#data 0xFE47E06c
#data 0x430BE614
#data 0xA07064E3
#data 0x01300009
#data 0x0000041c

#align4
loc_8C0AE3BC:
#data bank03.loc_8c034dee

loc_8C0AE3C0:
#data bank04.loc_8c045748
#data 0x40D55555
#data 0x3ED55555
#data 0xC0D55555
#data 0xBED55555

#align4
loc_8C0AE3D4:
#data bank03.loc_8c034e8c

loc_8C0AE3D8:
#data 0xE0345DE6
#data 0xD35765F3
#data 0xE004F3D6
#data 0x750464E3
#data 0xC753FF37
#data 0xE038F308
#data 0xE008F2D6
#data 0xFF27F230
#data 0x7434430b
#data 0xC7506403
#data 0x4400FF08
#data 0xD34FE030
#data 0x3048644c
#data 0x4018C93f
#data 0x2F014008
#data 0x64F1430b
#data 0xC74BFF02
#data 0xC74BF308
#data 0xC74BF208
#data 0xC74BF108
#data 0xF308FF32
#data 0xE15CE060
#data 0xFF2331Ec
#data 0xFF32FF13
#data 0xE034FEF7
#data 0xF218F0E6
#data 0x31ECE168
#data 0xFE07F020
#data 0xF0E6E05c
#data 0xE160F218
#data 0xF02031Ec
#data 0xE038FE07
#data 0xF218F0E6
#data 0x31ECE16c
#data 0xFE07F020
#data 0xF0E6E060
#data 0xF020F218
#data 0xE034FE07
#data 0xF2E6F4D6
#data 0x03ED905d
#data 0x8F012338
#data 0xF44DF421

#align4
loc_8C0AE480:
#data 0xF345F38d
#data 0xD2348B04
#data 0x64E3420b
#data 0x0009A006

#align4
loc_8C0AE490:
#data 0x420BD232
#data 0x64E3

loc_8C0AE496:
#data 0xD332
#data 0x64E3430b

#align4
loc_8C0AE49C:
#data 0x4F267F10
#data 0x6DF6FFF9
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0AE4A8:
mov r4,r3
mov.l @(loc_8C0AE564,pc),r1 ; r1 set to 0x8C157C24
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0AE4BA:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov 0x00,r13 ; r13 set to 0x00
mov.l r12,@-r15
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov r13,r0 ; r0 set to 0x00
nop 	
mov.l @(loc_8C0AE568,pc),r3 ; r3 set to 0x8C0AFBE4
mov.b r0,@(0x05,r14) 	
mov.b r0,@(0x06,r14) 	
mov.l @(0x18,r14),r12
jsr @r3
mov r14,r4
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0AE56C,pc),r3 ; r3 set to 0x8C0AF848
fmov.s @(r0,r12),fr3 ; r3 ??? bc r12 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r12),fr3
fmov.s fr3,@(r0,r14) 	
jsr @r3
mov r14,r4
mov.l @(loc_8C0AE570,pc),r2 ; r2 set to 0x8C0AF80c
jsr @r2
mov r14,r4
mov.w @(loc_8C0AE534,pc),r0 ; r0 set to 0x1A1
mov 0x13,r3 ; r3 set to 0x13
mov 0x19,r5 ; r5 set to 0x19
mov r14,r4
mov.b r3,@(r0,r14) 	
add 0x0B,r0 ; r0 set to 0x1Ac
mov.w r13,@(r0,r14) 	
add 0xF2,r0 ; r0 set to 0x19e
mov.b r13,@(r0,r14) 	
add 0x26,r0 ; r0 set to 0x1C4
mov.l @(loc_8C0AE574,pc),r3 ; r3 set to 0x8C2896B0
mov.l r13,@(r0,r14) 	
mov.b @(0x02,r14),r0 	
mov.l @r3,r2 ; r2 ??	
extu.b r0,r0 ; r0 set to 0xC4
shll r0 ; r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2) 	
mov 0x21,r0 ; r0 set to 0x21
lds.l @r15+,pr 	
mov.b @(r0,r14),r6
mov.l @(loc_8C0AE578,pc),r0 ; r0 set to 0x8C157C34
mov.l @r15+,r12
extu.b r6,r6
mov.l @(loc_8C0AE57C,pc),r2 ; r2 set to 0x8C034E8c
mov.l @r15+,r13 ; r13 ??? bc r15 is ???	
mov.b @(r0,r6),r6
jmp @r2
mov.l @r15+,r14
#data 0x0130

loc_8C0AE534:
#data 0x01A1
#data 0x0000
#data 0x43892492

#align4
loc_8C0AE53C:
#data bank03.loc_8c03362c
#data 0x48610000

#align4
loc_8C0AE544:
#data bank11.loc_8c11E860
#data 0x447A0000
#data 0x47F42400
#data 0x43800000
#data 0x40092492

#align4
loc_8C0AE558:
#data loc_8c0aF994

loc_8C0AE55C:
#data bank03.loc_8c034dee

loc_8C0AE560:
#data bank04.loc_8c045748

loc_8C0AE564:
#data 0x8C157C24

loc_8C0AE568:
#data loc_8c0aFBE4

loc_8C0AE56C:
#data loc_8c0aF848

loc_8C0AE570:
#data loc_8c0aF80c

loc_8C0AE574:
#data 0x8C2896B0

#align4
loc_8C0AE578:
#data 0x8C157C34

loc_8C0AE57C:
#data bank03.loc_8c034e8c


loc_8C0AE580:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0AE6A4,pc),r3 ; r3 set to 0x8C0AF636
jsr @r3
mov r4,r14
tst r0,r0
bt loc_8C0AE596
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0AE81c
mov.l @r15+,r14

loc_8C0AE596:
mov.l @(loc_8C0AE6A8,pc),r3 ; r3 set to 0x8C0AF9A2
jsr @r3
mov r14,r4
tst r0,r0
bt loc_8C0AE5Aa
lds.l @r15+,pr 	
mov.l @(loc_8C0AE6AC,pc),r3 ; r3 set to 0x8C0AF994
mov r14,r4
jmp @r3
mov.l @r15+,r14

loc_8C0AE5AA:
mov.b @(0x05,r14),r0 	
mov r14,r4
mov.l @(loc_8C0AE6B0,pc),r1 ; r1 set to 0x8C157C3c
extu.b r0,r0
lds.l @r15+,pr 	
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

#align4
loc_8C0AE5BC:
#data 0x2FE6906e
#data 0x2FD66E43
#data 0x03EC4F22
#data 0x8D1C2338
#data 0x90665DE6
#data 0x844304Ee
#data 0x8B532008
#data 0x024C9062
#data 0x8B4F2228
#data 0xE3188441
#data 0x3033600c
#data 0x84418B04
#data 0x600CE21a
#data 0x8B453027

#align4
loc_8C0AE5F4:
#data 0x00EC9052
#data 0x8B41C87f
#data 0x64E34F26
#data 0xA0CC6DF6
#data 0x6EF6

loc_8C0AE606:
#data 0xD32b
#data 0x64E3430b
#data 0x89042008
#data 0x64E34F26
#data 0xA0E16DF6
#data 0x6EF6

loc_8C0AE61A:
#data 0xE15c
#data 0x31ECD426
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
#data 0x00ECE021
#data 0x4008600c
#data 0xE038F346
#data 0x901EF2E6
#data 0xF3D6F231
#data 0x8B0EF325
#data 0x00ECE021
#data 0x4008600c
#data 0x9014F346
#data 0xE038F2D6
#data 0xFE27F231

#align4
loc_8C0AE680:
#data 0x64E34F26
#data 0xA0C96DF6
#data 0x6EF6

loc_8C0AE68A:
#data 0xD30c
#data 0x64E3430b
#data 0xD20B4F26
#data 0x6DF664E3
#data 0x6EF6422b
#data 0x01B0019e
#data 0x041C0411

#align4
loc_8C0AE6A4:
#data loc_8c0aF636

loc_8C0AE6A8:
#data loc_8c0aF9A2

loc_8C0AE6AC:
#data loc_8c0aF994

loc_8C0AE6B0:
#data 0x8C157C3c

loc_8C0AE6B4:
#data loc_8c0aFA8e

loc_8C0AE6B8:
#data 0x8C157C44

loc_8C0AE6BC:
#data bank03.loc_8c034dee

loc_8C0AE6C0:
#data bank04.loc_8c045748


loc_8C0AE6C4:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l @(0x18,r14),r12
mov.w @(loc_8C0AE7F2,pc),r3 ; r3 set to 0x2A4
mov.w @(loc_8C0AE7F0,pc),r4 ; r4 set to 0xCc
add r12,r3 ; r3 ??? bc r12 is ???	
mov.l r3,@r15
add r14,r4 ; r4 ??? bc r14 is ???	
mov.l @(loc_8C0AE804,pc),r3 ; r3 set to 0x8C0AFB80
mov.l @r4,r13
jsr @r3
mov r14,r4
mov.b @(0x06,r14),r0 	
tst r0,r0
bf loc_8C0AE72c
mov.b @(0x06,r14),r0 	
add 0x01,r0
mov.b r0,@(0x06,r14) 	
mov.w @(loc_8C0AE7F4,pc),r0 ; r0 set to 0x130
mov.w @(r0,r13),r3 ; r3 ??? bc r13 is ???	
mov.w r3,@(r0,r14) 	
mov.l @(loc_8C0AE808,pc),r3 ; r3 set to 0x8C0AFAA2
jsr @r3
mov r14,r4
mov.b @(0x01,r13),r0 	
mov r14,r4
mov.l @(loc_8C0AE80C,pc),r2 ; r2 set to 0x8C1582Fc
mov 0x19,r5 ; r5 set to 0x19
extu.b r0,r6 ; r6 set to 0x30
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
shll2 r6 ; r6 set to 0xC0
shll2 r6 ; r6 set to 0x300
extu.b r3,r3
shll2 r3
shll2 r6 ; r6 set to 0xC00
add r2,r6 ; r6 set to 0x8C158EFc
shll r3
add r3,r6 ; r6 ??? bc r3 is ???	
mov.b @(0x06,r6),r0 	
mov r0,r6 ; r6 set to 0x21
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0AE810,pc),r3 ; r3 set to 0x8C034E8c
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

#align4
loc_8C0AE72C:
#data 0x430BD336
#data 0x62F264E3
#data 0x20088423
#data 0x905C8903
#data 0x233803Cc
#data 0x8906

loc_8C0AE742:
#data 0x64E3
#data 0x4F267F04
#data 0x6DF66CF6
#data 0x6EF6A046

#align4
loc_8C0AE750:
#data 0x600C84D5
#data 0x8B138803
#data 0x04DC904e
#data 0x8809604c
#data 0x64038D04
#data 0x00096043
#data 0x8B098817

#align4
loc_8C0AE76C:
#data 0xE4029045
#data 0x0D45D328
#data 0x0D447055
#data 0x64E3430b
#data 0x89062008

#align4
loc_8C0AE780:
#data 0x7F0464E3
#data 0x6CF64F26
#data 0xA0476DF6
#data 0x6EF6

loc_8C0AE78E:
#data 0x64E3
#data 0x4F267F04
#data 0x6CF6D320
#data 0x432B6DF6
#data 0x6EF6

loc_8C0AE79E:
#data 0x8445
#data 0x9525E600
#data 0x80457001
#data 0x6063354c
#data 0x80460009
#data 0x034E9024
#data 0x25329023
#data 0x8059931b
#data 0x343C5446
#data 0x20088442
#data 0xE0788B01
#data 0x8043

loc_8C0AE7CA:
#data 0x8442
#data 0x60638057
#data 0x805A0009
#data 0x70018442
#data 0x8042000b
;-------------------------------------------------------------------------------

#align4
loc_8C0AE7DC:
#data 0xE3018444
#data 0x80447001
#data 0x8045E000
#data 0x90098046
#data 0x0434000b
;-------------------------------------------------------------------------------

loc_8C0AE7F0:
#data 0x00Cc

loc_8C0AE7F2:
#data 0x02A4

loc_8C0AE7F4:
#data 0x0130
#data 0x0411
#data 0x01E40233
#data 0x00FF01B0
#data 0x0000012c

#align4
loc_8C0AE804:
#data loc_8c0aFB80

loc_8C0AE808:
#data loc_8c0aFAA2

loc_8C0AE80C:
#data 0x8C1582Fc

loc_8C0AE810:
#data bank03.loc_8c034e8c

loc_8C0AE814:
#data loc_8c0aF770

loc_8C0AE818:
#data bank03.loc_8c034dee


loc_8C0AE81C:
mov.b @(0x04,r4),r0 	
mov 0x01,r5 ; r5 set to 0x01
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov r5,r0 ; r0 set to 0x01
nop 	
mov.b r0,@(0x05,r4) 	
mov 0x00,r0 ; r0 set to 0x00
mov.b r0,@(0x06,r4) 	
mov.w @(loc_8C0AE948,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r5,@(r0,r4) 	
;-------------------------------------------------------------------------------

#align4
loc_8C0AE834:
#data 0x6E432FE6
#data 0x84E64F22
#data 0x20089485
#data 0x34EC8F15
#data 0x700184E6
#data 0x844780E6
#data 0x8B024011
#data 0x420BD23f
#data 0x64E3

loc_8C0AE856:
#data 0x84E5
#data 0x8F022008
#data 0xA001E519
#data 0xE617

loc_8C0AE862:
#data 0xE60a

#align4
loc_8C0AE864:
#data 0x430BD33b
#data 0xA00D64E3
#data 0x0009

loc_8C0AE86E:
#data 0xD23a
#data 0x64E3420b
#data 0x4011600e
#data 0x84E48906
#data 0x7001E300
#data 0x906180E4
#data 0x0E34A005

#align4
loc_8C0AE888:
#data 0xD3344F26
#data 0x432B64E3
#data 0x6EF6

loc_8C0AE892:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0AE898:
mov r4,r3
mov.l @(loc_8C0AE960,pc),r1 ; r1 set to 0x8C157C64
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0AE8AA:
#data 0x2FE6
#data 0x2FD66E43
#data 0x2FC6ED00
#data 0x84E44F22
#data 0x80E47001
#data 0x000960D3
#data 0x80E5D328
#data 0x5CE680E6
#data 0x64E3430b
#data 0xF3C6E034
#data 0xE038FE37
#data 0xFE37F3C6
#data 0x81EEE060
#data 0xF508C722
#data 0xF408C722
#data 0x03CC9032
#data 0x8B032338
#data 0xF508C720
#data 0xF408C720

#align4
loc_8C0AE8F4:
#data 0xF3E6E034
#data 0xFE37F350
#data 0xFE47E05c
#data 0xF48DE068
#data 0xE060FE47
#data 0xE06CFE47
#data 0xB77DFE47
#data 0x901C64E3
#data 0xD318E215
#data 0x0E24E519
#data 0x0ED5700b
#data 0x0ED470F2
#data 0x0ED67026
#data 0x84E264E3
#data 0x6232E60d
#data 0x4000600c
#data 0x012D727c
#data 0x02157101
#data 0xD2054F26
#data 0x6DF66CF6
#data 0x6EF6422b

loc_8C0AE948:
#data 0x012c
#data 0x00Cc
#data 0x01A101D2

#align4
loc_8C0AE950:
#data loc_8c0aFB9c

loc_8C0AE954:
#data bank03.loc_8c034e8c

loc_8C0AE958:
#data bank03.loc_8c034dee

loc_8C0AE95C:
#data loc_8c0aFB7c

loc_8C0AE960:
#data 0x8C157C64

loc_8C0AE964:
#data loc_8c0aFBE4
#data 0x42D55555
#data 0x40555555
#data 0xC2D55555
#data 0xC0555555
#data 0x8C2896B0

#align4
loc_8C0AE97C:
#data 0x2FE6906c
#data 0x4F226E43
#data 0x233803Ec
#data 0xD3358B04
#data 0x64E3430b
#data 0x89032008

#align4
loc_8C0AE994:
#data 0x64E34F26
#data 0x6EF6AF20

#align4
loc_8C0AE99C:
#data 0x64E384E5
#data 0x600CD130
#data 0x40084F26
#data 0x432B031e
#data 0x6EF6

loc_8C0AE9AE:
#data 0x9054
#data 0x6E432FE6
#data 0x03EC4F22
#data 0x891A2338
#data 0x04EE904e
#data 0x20088443
#data 0x904A8B44
#data 0x2228024c
#data 0x84418B40
#data 0x600CE318
#data 0x8B043033
#data 0xE21A8441
#data 0x3027600c
#data 0x8B36

loc_8C0AE9E2:
#data 0x903a
#data 0xC87F00Ec
#data 0x4F268B32
#data 0xA09064E3
#data 0x6EF6

loc_8C0AE9F2:
#data 0xD31d
#data 0x64E3430b
#data 0x8B292008
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x89232008
#data 0xD318E15c
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
#data 0x64E3D209
#data 0x6EF6422b

#align4
loc_8C0AEA50:
#data 0x64E34F26
#data 0x6EF6AEC2
#data 0x019E019f
#data 0x041101B0

#align4
loc_8C0AEA60:
#data loc_8c0aF9A2

loc_8C0AEA64:
#data 0x8C157C74

loc_8C0AEA68:
#data loc_8c0aFA8e

loc_8C0AEA6C:
#data bank03.loc_8c034dee

loc_8C0AEA70:
#data bank04.loc_8c045748

loc_8C0AEA74:
#data 0x2FD62FE6
#data 0x7FF84F22
#data 0x6E43936a
#data 0x1F3133Ec
#data 0x430BD337
#data 0x926464E3
#data 0x32DC5DE6
#data 0x84E62F22
#data 0x8B052008
#data 0xD33384E6
#data 0x80E67001
#data 0x64E3430b

#align4
loc_8C0AEAA4:
#data 0x842362F2
#data 0x89032008
#data 0x03DC9054
#data 0x89052338

#align4
loc_8C0AEAB4:
#data 0x7F0864E3
#data 0x6DF64F26
#data 0x6EF6AE8e

#align4
loc_8C0AEAC0:
#data 0xE03454F1
#data 0xF3466442
#data 0x8445FE37
#data 0x8803600c
#data 0x90428B19
#data 0x605C054c
#data 0x8D048809
#data 0x60536503
#data 0x88170009
#data 0x8B0f

loc_8C0AEAE6:
#data 0x9039
#data 0x0455E502
#data 0x04547055
#data 0x64E3B63e
#data 0x8B062008
#data 0x7F0864E3
#data 0xD31B4F26
#data 0x432B6DF6
#data 0x6EF6

loc_8C0AEB06:
#data 0x64E3
#data 0x4F267F08
#data 0xAE856DF6
#data 0x6EF6

loc_8C0AEB12:
#data 0x8445
#data 0x951DE700
#data 0x80457001
#data 0x6073354c
#data 0x80460009
#data 0x034E901b
#data 0x2532901a
#data 0x80599313
#data 0x5646702d
#data 0x363C0474
#data 0x20088462
#data 0xE0788B01
#data 0x8063

loc_8C0AEB42:
#data 0x8462
#data 0x84628057
#data 0x80627001
#data 0x00096073
#data 0x805A000b
;-------------------------------------------------------------------------------
#data 0x02A400Cc
#data 0x02330411
#data 0x01B001E4
#data 0x000000Ff

#align4
loc_8C0AEB64:
#data loc_8c0aFB80

loc_8C0AEB68:
#data loc_8c0aD8D8

loc_8C0AEB6C:
#data bank03.loc_8c034dee

loc_8C0AEB70:
#data 0x6E432FE6
#data 0x84E54F22
#data 0x2008943b
#data 0x34EC8F21
#data 0x200884E6
#data 0x84E68B12
#data 0x7001E301
#data 0x903180E6
#data 0x84470E34
#data 0x8B024011
#data 0x420BD217
#data 0x64E3

loc_8C0AEB9E:
#data 0xD317
#data 0xE611E519
#data 0x64E3430b
#data 0x0009A006

#align4
loc_8C0AEBAC:
#data 0x420BD214
#data 0x600E64E3
#data 0x8B0A4011

#align4
loc_8C0AEBB8:
#data 0xD2124F26
#data 0x422B64E3
#data 0x6EF6

loc_8C0AEBC2:
#data 0x8447
#data 0x8B024011
#data 0x420BD20b
#data 0x64E3

loc_8C0AEBCE:
#data 0x84E4
#data 0x7001E300
#data 0x900D80E4
#data 0x4F260E34
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0AEBE0:
mov r4,r3
mov.l @(loc_8C0AEC08,pc),r1 ; r1 set to 0x8C157C7c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x00Cc
#data 0x0000012c

#align4
loc_8C0AEBF8:
#data loc_8c0aFB9c

loc_8C0AEBFC:
#data bank03.loc_8c034e8c

loc_8C0AEC00:
#data bank03.loc_8c034dee

loc_8C0AEC04:
#data loc_8c0aFB7c

loc_8C0AEC08:
#data 0x8C157C7c

loc_8C0AEC0C:
#data 0x6E432FE6
#data 0x2FC62FD6
#data 0x4F22EC00
#data 0x700184E4
#data 0x60C380E4
#data 0xD3380009
#data 0x80E680E5
#data 0x430B5DE6
#data 0xE02164E3
#data 0x02ECD435
#data 0x622C9063
#data 0x420803Dc
#data 0x23384200
#data 0x8F01324c
#data 0xF44DF428

#align4
loc_8C0AEC48:
#data 0xF3D6E034
#data 0xFE37F340
#data 0x03ECE021
#data 0xF2D6E038
#data 0x4308633c
#data 0x343C4300
#data 0xD42AF348
#data 0xFE27F230
#data 0x03ECE021
#data 0x633CE008
#data 0x43084308
#data 0xF336334c
#data 0xFE37E060
#data 0x03ECE021
#data 0x4308633c
#data 0x334C4308
#data 0xF336E00c
#data 0xFE37E06c
#data 0x05ECE021
#data 0x655CE004
#data 0x45084508
#data 0xF556354c
#data 0x03DC902d
#data 0x8F022338
#data 0xF54DF458
#data 0xF44d

loc_8C0AECAE:
#data 0xE05c
#data 0xE068FE47
#data 0xB5A9FE57
#data 0x902164E3
#data 0xD314E217
#data 0x0E24E519
#data 0x0EC5700b
#data 0x0EC470F2
#data 0x0EC67026
#data 0x84E264E3
#data 0x600C6232
#data 0x727C4000
#data 0x7101012d
#data 0xE0210215
#data 0xD00B06Ec
#data 0xD20B666c
#data 0xF3664608
#data 0xF33D4F26
#data 0x065A6CF6
#data 0x422B6DF6
#data 0x01D26EF6
#data 0x000001A1

#align4
loc_8C0AED04:
#data loc_8c0aFBE4

loc_8C0AED08:
#data 0x8C157C8c

loc_8C0AED0C:
#data 0x8C157CCc
#data 0x8C2896B0

#align4
loc_8C0AED14:
#data 0x8C157D4c

loc_8C0AED18:
#data bank03.loc_8c034e8c

loc_8C0AED1C:
#data 0x6E432FE6
#data 0x4F222FD6
#data 0x5DE6B487
#data 0x8B622008
#data 0x64E3B639
#data 0x8B262008
#data 0x200884E5
#data 0x90768B69
#data 0x233803Ec
#data 0x9073891b
#data 0x844304Ee
#data 0x8B522008
#data 0x024C906f
#data 0x8B4E2228
#data 0xE3188441
#data 0x3033600c
#data 0x84418B04
#data 0x600CE21a
#data 0x8B443027

#align4
loc_8C0AED68:
#data 0x00EC905f
#data 0x8B40C87f
#data 0x64E34F26
#data 0xAD126DF6
#data 0x6EF6

loc_8C0AED7A:
#data 0xB688
#data 0x200864E3
#data 0x8904

loc_8C0AED82:
#data 0x4F26
#data 0x6DF664E3
#data 0x6EF6AD28

#align4
loc_8C0AED8C:
#data 0xD429E15c
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
#data 0xE021FE27
#data 0x600C00Ec
#data 0xF3464008
#data 0xF2D6902e
#data 0xF231E038
#data 0xF235F3E6
#data 0xE0218B0e
#data 0x600C00Ec
#data 0xF3464008
#data 0xF2D69022
#data 0xF230E038
#data 0xFE27

loc_8C0AEDF2:
#data 0x4F26
#data 0x6DF664E3
#data 0x6EF6AD10

#align4
loc_8C0AEDFC:
#data 0x430BD30e
#data 0x4F2664E3
#data 0x64E3D20d
#data 0x422B6DF6
#data 0x6EF6

loc_8C0AEE0E:
#data 0x4F26
#data 0x6DF664E3
#data 0x6EF6AC56


loc_8C0AEE18:
mov r4,r3
mov.l @(loc_8C0AEE40,pc),r1 ; r1 set to 0x8C157D8c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x019e
#data 0x041101B0
#data 0x0000041c

#align4
loc_8C0AEE34:
#data 0x8C157D6c

loc_8C0AEE38:
#data bank03.loc_8c034dee

loc_8C0AEE3C:
#data bank04.loc_8c045748

loc_8C0AEE40:
#data 0x8C157D8c


loc_8C0AEE44:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov 0x00,r0 ; r0 set to 0x00
mov.b r0,@(0x05,r14) 	
mov.l @(0x18,r14),r13
bsr loc_8C0AFBE4
mov r14,r4
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0AEF64,pc),r3 ; r3 set to 0x8C034E8c
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
mov r14,r4
mov 0x04,r6 ; r6 set to 0x04
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr3
mov 0x17,r5 ; r5 set to 0x17
fmov.s fr3,@(r0,r14) 	
lds.l @r15+,pr 	
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

#align4
loc_8C0AEE78:
#data 0x6E432FE6
#data 0x4F22906e
#data 0x004C54E6
#data 0x8807600c
#data 0x90688B10
#data 0x600C004c
#data 0x8B0B8801
#data 0xD334E034
#data 0xFE37F346
#data 0xF346E038
#data 0x430BFE37
#data 0x600E64E3
#data 0x89034011

#align4
loc_8C0AEEAC:
#data 0x64E34F26
#data 0x6EF6A67a

#align4
loc_8C0AEEB4:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0AEEBA:
mov r4,r3
mov.l @(loc_8C0AEF6C,pc),r1 ; r1 set to 0x8C157D9c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0AEECC:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov 0x00,r13 ; r13 set to 0x00
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov r13,r0 ; r0 set to 0x00
nop 	
mov.b r0,@(0x05,r14) 	
bsr loc_8C0AFBE4
mov r14,r4
bsr loc_8C0AF83c
mov r14,r4
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3
tst r3,r3
bf loc_8C0AEEFa
mov.w @(loc_8C0AEF60,pc),r0 ; r0 set to 0x1A1
mov 0x07,r3 ; r3 set to 0x07
bra loc_8C0AEF00
mov.b r3,@(r0,r14) 	

loc_8C0AEEFA:
mov.w @(loc_8C0AEF60,pc),r0 ; r0 set to 0x1A1
mov 0x41,r2 ; r2 set to 0x41
mov.b r2,@(r0,r14) 	

loc_8C0AEF00:
mov.w @(loc_8C0AEF62,pc),r0 ; r0 set to 0x1AC, r0 set to 0x1Ac
mov r14,r4
mov.l @(loc_8C0AEF70,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
mov 0x05,r6 ; r6 set to 0x05, r6 set to 0x05
mov.w r13,@(r0,r14) 	
add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19e
mov.b r13,@(r0,r14) 	
add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4
mov.l r13,@(r0,r14) 	
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
mov.b @(0x02,r14),r0 	
mov.l @r3,r2 ; r2 ??	
extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4
mov.l @(loc_8C0AEF64,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
shll r0 ; r0 set to 0x188, r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2) 	
lds.l @r15+,pr 	
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0AEF2E:
mov.l r14,@-r15
mov 0x21,r0 ; r0 set to 0x21
mov r4,r14
sts.l pr,@-r15
mov.b @(r0,r14),r3
tst r3,r3
bf/s loc_8C0AEF74
mov.l @(0x18,r14),r4
mov.b @(0x05,r4),r0 	
tst r0,r0
bf loc_8C0AEFA6
mov.w @(loc_8C0AEF5C,pc),r0 ; r0 set to 0x159
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
extu.b r0,r0
cmp/eq 0x09,r0 	
bf loc_8C0AEFA6
mov.w @(loc_8C0AEF5E,pc),r0 ; r0 set to 0x158
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
extu.b r0,r0
cmp/eq 0x01,r0 	
bt loc_8C0AEF8e
bra loc_8C0AEFA6
nop 	

loc_8C0AEF5C:
#data 0x0159

loc_8C0AEF5E:
#data 0x0158

loc_8C0AEF60:
#data 0x01A1

loc_8C0AEF62:
#data 0x01Ac

#align4
loc_8C0AEF64:
#data bank03.loc_8c034e8c

loc_8C0AEF68:
#data bank03.loc_8c034dee

loc_8C0AEF6C:
#data 0x8C157D9c

loc_8C0AEF70:
#data 0x8C2896B0

#align4
loc_8C0AEF74:
#data 0x20088445
#data 0x90828B15
#data 0x600C004c
#data 0x8B108815
#data 0x004C907e
#data 0x881A600c
#data 0x8B0b

loc_8C0AEF8E:
#data 0xE034
#data 0xF346D33e
#data 0xE038FE37
#data 0xFE37F346
#data 0x64E3430b
#data 0x4011600e
#data 0x8903


loc_8C0AEFA6:
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0AFBA8
mov.l @r15+,r14

loc_8C0AEFAE:
#data 0x4F26
#data 0x64E3D337
#data 0x6EF6432b


loc_8C0AEFB8:
mov r4,r3
mov.l @(loc_8C0AF094,pc),r1 ; r1 set to 0x8C157DAc
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0AEFCA:
#data 0x2FE6
#data 0x2FD66E43
#data 0x4F22ED00
#data 0x700184E4
#data 0x60D380E4
#data 0x80E50009
#data 0x64E3B600
#data 0x64E3B42a
#data 0xE30D904d
#data 0x0E3464E3
#data 0x0ED5700b
#data 0x0ED470F2
#data 0xD3277026
#data 0x84E20ED6
#data 0x600C6232
#data 0x727C4000
#data 0x7101012d
#data 0x4F260215
#data 0x6EF66DF6

#align4
loc_8C0AF014:
#data 0x6E432FE6
#data 0x90322FD6
#data 0x5DE64F22
#data 0x600C00Dc
#data 0x8B04880b
#data 0x00DC902c
#data 0x8801600c
#data 0x8904

loc_8C0AF032:
#data 0x4F26
#data 0x6DF664E3
#data 0x6EF6A5B6

#align4
loc_8C0AF03C:
#data 0x02DC9024
#data 0x89174211
#data 0xF3D6E034
#data 0xE77FE301
#data 0xE038FE37
#data 0xE517F3D6
#data 0xFE37E606
#data 0x0E349017
#data 0x00DC7015
#data 0x2709D30e
#data 0x64E3430b
#data 0xD2094F26
#data 0x6DF664E3
#data 0x6EF6422b

#align4
loc_8C0AF074:
#data 0xE2009009
#data 0x4F260E24
#data 0x000B6DF6
#data 0x01596EF6
#data 0x01A10158
#data 0x012C0141

#align4
loc_8C0AF08C:
#data bank03.loc_8c034dee

loc_8C0AF090:
#data bank04.loc_8c045748

loc_8C0AF094:
#data 0x8C157DAc
#data 0x8C2896B0

#align4
loc_8C0AF09C:
#data bank03.loc_8c034F54


loc_8C0AF0A0:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0AF1AA,pc),r0 ; r0 set to 0x248
sts.l pr,@-r15
mov.l @(0x18,r14),r5
mov.w @(loc_8C0AF1A8,pc),r4 ; r4 set to 0xCc
mov.b @(r0,r5),r3
tst r3,r3
bf/s loc_8C0AF0F4
add r14,r4 ; r4 ??? bc r14 is ???	
mov.b @(0x04,r14),r0 	
tst r0,r0
bf loc_8C0AF0E8
mov.b @(0x04,r14),r0 	
add 0x01,r0 ; r0 set to 0x249
mov.b r0,@(0x04,r14) 	
bsr loc_8C0AFBE4
mov r14,r4
mov 0x21,r0 ; r0 set to 0x21
mov r14,r4
mov.b @(r0,r14),r2
mov 0x19,r5 ; r5 set to 0x19
mov.l @(loc_8C0AF1B4,pc),r0 ; r0 set to 0x8C157DC4
extu.b r2,r2
mov.b @(r0,r2),r3
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r6
mov.l @(loc_8C0AF1B8,pc),r0 ; r0 set to 0x8C157DBc
lds.l @r15+,pr 	
extu.b r6,r6
mov.l @(loc_8C0AF1BC,pc),r3 ; r3 set to 0x8C034E8c
mov.b @(r0,r6),r6
jmp @r3
mov.l @r15+,r14

#align4
loc_8C0AF0E8:
#data 0xE30255E5
#data 0x600C8454
#data 0x8B033033


loc_8C0AF0F4:
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0AFBBe
mov.l @r15+,r14

#align4
loc_8C0AF0FC:
#data 0x015D9056
#data 0x0E15D52f
#data 0x6442E034
#data 0xFE37F346
#data 0x02ECE021
#data 0x622CE004
#data 0x42004208
#data 0xF326325c
#data 0xF2469047
#data 0xF230E038
#data 0xE021FE27
#data 0x903F02Ec
#data 0x4208622c
#data 0x352C4200
#data 0x222802Ed
#data 0xF4588F01
#data 0xF44d

loc_8C0AF13E:
#data 0xE034
#data 0xF3E6D320
#data 0xF34064E3
#data 0x4F26FE37
#data 0x6EF6432b


loc_8C0AF150:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0AF1AA,pc),r0 ; r0 set to 0x248
mov.l @(0x18,r14),r4
mov.b @(r0,r4),r3
tst r3,r3
bt loc_8C0AF164
mov r14,r4
bra loc_8C0AFBBe
mov.l @r15+,r14

loc_8C0AF164:
mov.b @(0x04,r14),r0 	
mov r14,r4
mov.l @(loc_8C0AF1C8,pc),r1 ; r1 set to 0x8C157E0c
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0AF174:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
fmov.s fr15,@-r15
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.l @(0x18,r14),r13
bsr loc_8C0AFBE4
mov r14,r4
mov.w @(loc_8C0AF1B0,pc),r0 ; r0 set to 0x19c
mov 0x44,r4 ; r4 set to 0x44
mov.l @(loc_8C0AF1CC,pc),r3 ; r3 set to 0x8C26823c
mov.b r4,@(r0,r14) 	
add 0x01,r0 ; r0 set to 0x19d
mov.b r4,@(r0,r14) 	
mov.l @r3,r0 ; r0 ??	
mov.l @(0x1C,r0),r0
tst 0x01,r0 	
bt/s loc_8C0AF1D0
mov 0x00,r4 ; r4 set to 0x00
mov.w @(loc_8C0AF1B2,pc),r0 ; r0 set to 0x1A1
mov 0x27,r1 ; r1 set to 0x27
bra loc_8C0AF1D6
mov.b r1,@(r0,r14) 	

loc_8C0AF1A8:
#data 0x00Cc

loc_8C0AF1AA:
#data 0x0248
#data 0x041C0130

loc_8C0AF1B0:
#data 0x019c

loc_8C0AF1B2:
#data 0x01A1

#align4
loc_8C0AF1B4:
#data 0x8C157DC4

loc_8C0AF1B8:
#data 0x8C157DBc

loc_8C0AF1BC:
#data bank03.loc_8c034e8c

loc_8C0AF1C0:
#data 0x8C157DCc

loc_8C0AF1C4:
#data bank03.loc_8c034dee

loc_8C0AF1C8:
#data 0x8C157E0c

loc_8C0AF1CC:
#data 0x8C26823c

#align4
loc_8C0AF1D0:
#data 0xE2299092
#data 0x0E24

loc_8C0AF1D6:
#data 0x9090
#data 0xD34AE519
#data 0x0E45E61b
#data 0x0E4470F2
#data 0x0E467026
#data 0x623284E2
#data 0xD347600c
#data 0x727C4000
#data 0x7101012d
#data 0xE0340215
#data 0xFE37F3D6
#data 0xF308C741
#data 0xF2D6E038
#data 0xFE27F230
#data 0x81EEE030
#data 0x64E3430b
#data 0xF48DE068
#data 0xFE47DD3d
#data 0x4D0BE06c
#data 0xC907FE47
#data 0x4008D13b
#data 0xF4164000
#data 0x03ED9066
#data 0x8F012338
#data 0xF44DE05c

#align4
loc_8C0AF238:
#data 0xFE474D0b
#data 0xD136C907
#data 0x40004008
#data 0xFF164D0b
#data 0x8D01C801
#data 0xFF4DE060

#align4
loc_8C0AF250:
#data 0x64E3FEF7
#data 0xFFF94F26
#data 0xA16A6DF6
#data 0x6EF6

loc_8C0AF25E:
#data 0x2FE6
#data 0x4F226E43
#data 0x200884E6
#data 0xD32C8B39
#data 0x64E3430b
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
#data 0x8B074011
#data 0x02EC9023
#data 0x8B032228
#data 0x03EC9020
#data 0x89072338

#align4
loc_8C0AF2C4:
#data 0xE51984E6
#data 0xE602D310
#data 0x80E67001
#data 0x64E3430b

#align4
loc_8C0AF2D4:
#data 0xD2124F26
#data 0x422B64E3
#data 0x6EF6

loc_8C0AF2DE:
#data 0xD20f
#data 0x64E3420b
#data 0x4011600e
#data 0x4F268903
#data 0xA46664E3
#data 0x6EF6

loc_8C0AF2F2:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x01AC01A1
#data 0x019F0130
#data 0x0000019e
#data 0x8C2896B0
#data 0x43700000

#align4
loc_8C0AF30C:
#data bank03.loc_8c034e8c

loc_8C0AF310:
#data bank03.loc_8c03319e

loc_8C0AF314:
#data 0x8C157E14

loc_8C0AF318:
#data 0x8C157E18

loc_8C0AF31C:
#data bank03.loc_8c034dee

loc_8C0AF320:
#data bank04.loc_8c045748


loc_8C0AF324:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0AF432,pc),r0 ; r0 set to 0x248
mov.l @(0x18,r14),r4
mov.b @(r0,r4),r3
tst r3,r3
bt loc_8C0AF338
mov r14,r4
bra loc_8C0AFBBe
mov.l @r15+,r14

loc_8C0AF338:
mov.b @(0x04,r14),r0 	
mov r14,r4
mov.l @(loc_8C0AF43C,pc),r1 ; r1 set to 0x8C157E54
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

#align4
loc_8C0AF348:
#data 0x6E432FE6
#data 0x4F222FD6
#data 0x700184E4
#data 0x5DE680E4
#data 0x64E3B444
#data 0xF408C738
#data 0x03ED9068
#data 0x8B012338
#data 0xF408C736

#align4
loc_8C0AF36C:
#data 0xD637E034
#data 0xE444F3D6
#data 0xF340E52a
#data 0xC733FE37
#data 0xE038F308
#data 0xF230F2D6
#data 0x9056FE27
#data 0x70010E44
#data 0x70040E44
#data 0x700B0E54
#data 0x0E45E400
#data 0x0E4470F2
#data 0x0E467026
#data 0x636284E2
#data 0x4000600c
#data 0x023D737c
#data 0x03257201
#data 0x6032D327
#data 0xC8015007
#data 0x903D8903
#data 0xA002E128
#data 0x0E14

loc_8C0AF3C2:
#data 0x9039
#data 0x0E54

loc_8C0AF3C6:
#data 0x9038
#data 0x0E45E519
#data 0x0E4470F2
#data 0x0E467026
#data 0x636284E2
#data 0x600CE615
#data 0x737C4000
#data 0x7201023d
#data 0xE0600325
#data 0x81EED31a
#data 0x64E3430b
#data 0xF48DE068
#data 0xFE47D318
#data 0x430BE06c
#data 0xC907FE47
#data 0x4008D116
#data 0xF4164000
#data 0x03ED9014
#data 0x8F012338
#data 0xF44DE05c

#align4
loc_8C0AF414:
#data 0x430BD310
#data 0xC907FE47
#data 0x4008D110
#data 0x400064E3
#data 0xE060F316
#data 0x4F26FE37
#data 0xA0806DF6
#data 0x6EF6

loc_8C0AF432:
#data 0x0248
#data 0x019C0130
#data 0x01AC01A1

#align4
loc_8C0AF43C:
#data 0x8C157E54
#data 0x425C0000
#data 0xC25C0000
#data 0x434DB6Db
#data 0x8C2896B0
#data 0x8C26823c

#align4
loc_8C0AF454:
#data bank03.loc_8c034e8c

loc_8C0AF458:
#data bank03.loc_8c03319e

loc_8C0AF45C:
#data 0x8C157E5c

loc_8C0AF460:
#data 0x8C157E60


loc_8C0AF464:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(0x06,r14),r0 	
tst r0,r0
bf/s loc_8C0AF514
mov.l @(0x18,r14),r13
mov.l @(loc_8C0AF580,pc),r3 ; r3 set to 0x8C034DEe
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
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr3
mov.w @(loc_8C0AF578,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r13),fr2
fcmp/gt fr3,fr2
bf loc_8C0AF4Dc
mov.b @(0x06,r14),r0 	
mov r14,r4
mov.l @(loc_8C0AF584,pc),r3 ; r3 set to 0x8C034E8c
mov 0x02,r6 ; r6 set to 0x02
add 0x01,r0 ; r0 set to 0x41d
mov.b r0,@(0x06,r14) 	
mov 0x19,r5 ; r5 set to 0x19
mov.w @(loc_8C0AF578,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14) 	
lds.l @r15+,pr 	
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

#align4
loc_8C0AF4DC:
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x8B074011
#data 0x02EC9047
#data 0x8B032228
#data 0x03EC9044
#data 0x89072338

#align4
loc_8C0AF4F8:
#data 0xE51984E6
#data 0xE602D321
#data 0x80E67001
#data 0x64E3430b

#align4
loc_8C0AF508:
#data 0xD21F4F26
#data 0x6DF664E3
#data 0x6EF6422b


loc_8C0AF514:
mov.l @(loc_8C0AF580,pc),r2 ; r2 set to 0x8C034DEe
jsr @r2
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt loc_8C0AF52a
lds.l @r15+,pr 	
mov r14,r4
mov.l @r15+,r13
bra loc_8C0AFBBe
mov.l @r15+,r14

loc_8C0AF52A:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0AF532:
#data 0x2F86
#data 0x7FFC4F22
#data 0x6343E834
#data 0xD313383c
#data 0x2F42430b
#data 0xD112C907
#data 0xF2884008
#data 0xF3164000
#data 0xF82AF230
#data 0x63F2E838
#data 0xD30C383c
#data 0x0009430b
#data 0xD10CC907
#data 0xF2884008
#data 0xF3164000
#data 0xF82AF230
#data 0x4F267F04
#data 0x68F6000b
;-------------------------------------------------------------------------------

loc_8C0AF578:
#data 0x041c
#data 0x019f
#data 0x0000019e

#align4
loc_8C0AF580:
#data bank03.loc_8c034dee

loc_8C0AF584:
#data bank03.loc_8c034e8c

loc_8C0AF588:
#data bank04.loc_8c045748

loc_8C0AF58C:
#data bank03.loc_8c03319e

loc_8C0AF590:
#data 0x8C157E9c

loc_8C0AF594:
#data 0x8C157EA0

loc_8C0AF598:
#data 0x2FE6937a
#data 0x4F22343c
#data 0x84E56E42
#data 0x8B0C2008
#data 0x6032D33d
#data 0xC8015007
#data 0xD13C8903
#data 0x410BE5Ff
#data 0x64E3

loc_8C0AF5BA:
#data 0x906a
#data 0x431503Ed
#data 0x8B03

loc_8C0AF5C2:
#data 0x4F26
#data 0x000BE0Ff
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0AF5CA:
#data 0xD337
#data 0xE61CE50b
#data 0x64E3430b
#data 0x4F26E000
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0AF5DC:
mov.w @(loc_8C0AF690,pc),r5 ; r5 set to 0xCc
mov 0x34,r0 ; r0 set to 0x34
add r4,r5 ; r5 ??? bc r4 is ???	
mov.l @r5,r5
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r4),fr4
fldi0 fr3
fcmp/gt fr3,fr4
bf loc_8C0AF600
mov.w @(loc_8C0AF694,pc),r0 ; r0 set to 0x130
mov 0x00,r2 ; r2 set to 0x00
bra loc_8C0AF606
mov.w r2,@(r0,r4) 	

#align4
loc_8C0AF600:
#data 0xE1019048
#data 0x0415

loc_8C0AF606:
#data 0xE022
#data 0x9043034c
#data 0x025D633c
#data 0x89043320
#data 0xE301024d
#data 0x223AF44d
#data 0x0425

loc_8C0AF61E:
#data 0xE034
#data 0xE160F346
#data 0xF340314c
#data 0xE038F437
#data 0xF318F246
#data 0x000BF230
#data 0xF427
;-------------------------------------------------------------------------------

loc_8C0AF636:
mov.w @(loc_8C0AF696,pc),r0 ; r0 set to 0x19f
mov.w @(loc_8C0AF690,pc),r5 ; r5 set to 0xCc
mov.b @(r0,r4),r3
tst r3,r3
bf/s loc_8C0AF646
add r4,r5 ; r5 ??? bc r4 is ???	
rts 	
mov 0x00,r0
;-------------------------------------------------------------------------------

loc_8C0AF646:
mov.w @(loc_8C0AF698,pc),r3 ; r3 set to 0x2A4
mov.l @(0x18,r4),r4
add r3,r4
mov.b @(0x02,r4),r0 	
tst r0,r0
bf loc_8C0AF68a
mov.b @(0x09,r5),r0 	
tst r0,r0
bt loc_8C0AF68a
mov.l @r5,r4
mov.b @(0x05,r4),r0 	
extu.b r0,r0
cmp/eq 0x03,r0 	
bf loc_8C0AF68a
mov.w @(loc_8C0AF69A,pc),r0 ; r0 set to 0x233
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
extu.b r0,r0
cmp/eq 0x09,r0 	
bf/s loc_8C0AF678
mov 0x00,r5 ; r5 set to 0x00
mov.w @(loc_8C0AF69C,pc),r0 ; r0 set to 0x1E4
mov.w r5,@(r0,r4) 	
add 0x55,r0 ; r0 set to 0x239
bra loc_8C0AF68a
mov.b r5,@(r0,r4) 	

#align4
loc_8C0AF678:
#data 0x004C900f
#data 0x8817600c
#data 0x900B8B03
#data 0x70550455
#data 0x0454


loc_8C0AF68A:
mov 0xFF,r0 ; r0 set to 0xFFFFFFFf
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0AF690:
#data 0x00Cc
#data 0x0420

loc_8C0AF694:
#data 0x0130

loc_8C0AF696:
#data 0x019f

loc_8C0AF698:
#data 0x02A4

loc_8C0AF69A:
#data 0x0233

loc_8C0AF69C:
#data 0x01E4
#data 0x0000
#data 0x8C26823c

#align4
loc_8C0AF6A4:
#data bank05.loc_8c05929c

loc_8C0AF6A8:
#data bank05.loc_8c058DC4


loc_8C0AF6AC:
mov.w @(loc_8C0AF7BE,pc),r3 ; r3 set to 0xCc
mov.w @(loc_8C0AF7C0,pc),r0 ; r0 set to 0x420
add r3,r4
mov.l @r4,r5
mov.w @(r0,r5),r2
tst r2,r2
bt loc_8C0AF6Cc
mov.b @(0x05,r5),r0 	
tst r0,r0
bf loc_8C0AF6C6
mov.w @(loc_8C0AF7C2,pc),r0 ; r0 set to 0xFf
bra loc_8C0AF6D0
mov.b r0,@(0x08,r4) 	

loc_8C0AF6C6:
#data 0x8448
#data 0x89012008


loc_8C0AF6CC:
rts 	
mov 0xFF,r0
;-------------------------------------------------------------------------------

loc_8C0AF6D0:
mov 0x00,r0 ; r0 set to 0x00
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0AF6D6:
mov.l r14,@-r15
fmov.s fr15,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov 0x22,r0 ; r0 set to 0x22
mov r4,r14
mov.b @(r0,r14),r3
mov 0x1F,r2 ; r2 set to 0x1f
add 0x01,r3
and r2,r3
mov.b r3,@(r0,r14) 	
mova @(loc_8C0AF7D4,pc),r0  ; r0 set to 0x8C0AF7D4
fmov.s @r0,fr15
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
mov.l @(loc_8C0AF7D8,pc),r3 ; r3 set to 0x8C11E860
extu.b r0,r0
neg r0,r0
add 0x28,r0
and r2,r0
shll8 r0
shll2 r0
shll r0
mov.w r0,@r15
jsr @r3
mov.w @r15,r4
fmul fr0,fr15
mova @(loc_8C0AF7DC,pc),r0  ; r0 set to 0x8C0AF7Dc
fmov.s @r0,fr0 ; r0 ??	
mova @(loc_8C0AF7E0,pc),r0  ; r0 set to 0x8C0AF7E0
fmul fr0,fr15
fmov.s @r0,fr0 ; r0 ??	
mova @(loc_8C0AF7E4,pc),r0  ; r0 set to 0x8C0AF7E4
fdiv fr0,fr15
fmov.s @r0,fr0 ; r0 ??	
mova @(loc_8C0AF7E8,pc),r0  ; r0 set to 0x8C0AF7E8
fdiv fr0,fr15
fmov.s @r0,fr0 ; r0 ??	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???	
fmac fr0,fr15,fr3
fmov.s fr3,@(r0,r14) 	
add 0x04,r15
lds.l @r15+,pr 	
fmov.s @r15+,fr15
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0AF734:
mov.w @(loc_8C0AF7C6,pc),r0 ; r0 set to 0x34a
mov.l @(0x18,r4),r5
mov.w @(loc_8C0AF7C4,pc),r3 ; r3 set to 0x3000
mov.w @(r0,r5),r6
and r3,r6
extu.w r6,r2
tst r2,r2
bt loc_8C0AF76c
mov.w @(loc_8C0AF7C8,pc),r1 ; r1 set to 0x1000
extu.w r6,r6
cmp/eq r1,r6
bf loc_8C0AF75e
mov.l @(loc_8C0AF7EC,pc),r2 ; r2 set to 0x3F892492
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r4),fr2 ; r2 ??? bc r4 is ???	
lds r2,fpul 	
fsts fpul,fr3
fsub fr3,fr2
fmov.s fr2,@(r0,r4) 	
bra loc_8C0AF76c
nop 	

loc_8C0AF75E:
#data 0xD224
#data 0xF246E038
#data 0xF30D425a
#data 0xF427F230


loc_8C0AF76C:
rts 	
nop 	
;-------------------------------------------------------------------------------

#align4
loc_8C0AF770:
#data 0x56469525
#data 0x9428354c
#data 0x8445346c
#data 0x8457630c
#data 0x8B393300
#data 0x92239022
#data 0x9020066e
#data 0x633D036d
#data 0x89022328
#data 0x7002845a
#data 0x805a

loc_8C0AF79A:
#data 0x9018
#data 0x036D9219
#data 0x2328633d
#data 0x845A8902
#data 0x805A7002

#align4
loc_8C0AF7AC:
#data 0x8457D111
#data 0x845A031c
#data 0x3037600c
#data 0xA0248920
#data 0x0009

loc_8C0AF7BE:
#data 0x00Cc

loc_8C0AF7C0:
#data 0x0420

loc_8C0AF7C2:
#data 0x00Ff

loc_8C0AF7C4:
#data 0x3000

loc_8C0AF7C6:
#data 0x034a

loc_8C0AF7C8:
#data 0x1000
#data 0x02A4
#data 0x034E020c
#data 0x03603C00

#align4
loc_8C0AF7D4:
#data 0x47160000

#align4
loc_8C0AF7D8:
#data bank11.loc_8c11E860

loc_8C0AF7DC:
#data 0x447A0000

#align4
loc_8C0AF7E0:
#data 0x47F42400

#align4
loc_8C0AF7E4:
#data 0x43800000

#align4
loc_8C0AF7E8:
#data 0x40092492

#align4
loc_8C0AF7EC:
#data 0x3F892492
#data 0x404DB6Db

#align4
loc_8C0AF7F4:
#data 0x8C157EDc

loc_8C0AF7F8:
#data 0x8B043307

#align4
loc_8C0AF7FC:
#data 0x70018445
#data 0x000B8045
#data 0xE001
;-------------------------------------------------------------------------------

loc_8C0AF806:
#data 0xE000
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0AF80C:
mov.w @(loc_8C0AF97E,pc),r0 ; r0 set to 0x19c
mov 0x44,r3 ; r3 set to 0x44
mov r3,r2 ; r2 set to 0x44
mov.l @(0x18,r4),r6
mov.b r3,@(r0,r4) 	
add 0x01,r0 ; r0 set to 0x19d
mov.b r2,@(r0,r4) 	
add 0xBC,r0 ; r0 set to 0x159
mov.w @(loc_8C0AF97A,pc),r5 ; r5 set to 0xCc
mov.b @(r0,r6),r0 ; r0 ??? bc r6 is ???	
add r4,r5 ; r5 ??? bc r4 is ???	
mov.w @(loc_8C0AF97C,pc),r7 ; r7 set to 0x2A4
mov.b r0,@(0x04,r5) 	
mov.w @(loc_8C0AF980,pc),r0 ; r0 set to 0x158
add r6,r7 ; r7 ??? bc r6 is ???	
mov.b @(r0,r6),r0 ; r0 ??? bc r6 is ???	
mov.b r0,@(0x05,r5) 	
mov 0x00,r0 ; r0 set to 0x00
mov.b r0,@(0x08,r5) 	
mov.b @(0x04,r7),r0 	
mov.b r0,@(0x06,r5) 	
mov 0xFF,r0 ; r0 set to 0xFFFFFFFf
rts 	
mov.b r0,@(0x07,r5) 	
;-------------------------------------------------------------------------------

loc_8C0AF83C:
mov.w @(loc_8C0AF97E,pc),r0 ; r0 set to 0x19c
mov 0x41,r5 ; r5 set to 0x41
mov.b r5,@(r0,r4) 	
add 0x01,r0 ; r0 set to 0x19d
rts 	
mov.b r5,@(r0,r4) 	
;-------------------------------------------------------------------------------

#align4
loc_8C0AF848:
#data 0x5546E020
#data 0xE021034c
#data 0x633C014c
#data 0x62339095
#data 0x611C4308
#data 0x332CD64b
#data 0x331C025c
#data 0x43004308
#data 0x336C2228
#data 0xF4388F01
#data 0xF44d

loc_8C0AF872:
#data 0xE320
#data 0x334CD746
#data 0xE034E121
#data 0xF346314c
#data 0xF437F340
#data 0x6330E038
#data 0x633C6110
#data 0x6233F246
#data 0x611C4308
#data 0x331C332c
#data 0x43004308
#data 0xE104363c
#data 0xF318316c
#data 0xF427F230
#data 0x034CE020
#data 0x6233633c
#data 0xE0214308
#data 0x332C014c
#data 0x611CE008
#data 0x4308331c
#data 0x337C4308
#data 0xE060F336
#data 0xE020F437
#data 0xE021034c
#data 0xE00C014c
#data 0x6233633c
#data 0x611C4308
#data 0x331C332c
#data 0x43084308
#data 0xF336337c
#data 0xF437E06c
#data 0x064CE020
#data 0xE021666c
#data 0x024C6363
#data 0x363C4608
#data 0x362C622c
#data 0x46084608
#data 0x367CE004
#data 0x903BF566
#data 0x2338035d
#data 0xF4688F02
#data 0xF44DF54d

#align4
loc_8C0AF918:
#data 0xF447E05c
#data 0x000BE068
#data 0xF457
;-------------------------------------------------------------------------------

loc_8C0AF922:
#data 0x8445
#data 0x9528E700
#data 0x80457001
#data 0x6073354c
#data 0x80460009
#data 0x034E9027
#data 0x25329026
#data 0x70318059
#data 0x56466252
#data 0xE022012c
#data 0x04149318
#data 0x8462363c
#data 0x8B012008
#data 0x8063E078

#align4
loc_8C0AF958:
#data 0x80578462
#data 0x70018462
#data 0x60738062
#data 0x000B0009
#data 0x805a
;-------------------------------------------------------------------------------

loc_8C0AF96A:
mov.b @(0x04,r4),r0 	
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov 0x01,r0 ; r0 set to 0x01
mov.b r0,@(0x05,r4) 	
mov 0x00,r0 ; r0 set to 0x00
rts 	
mov.b r0,@(0x06,r4) 	
;-------------------------------------------------------------------------------

loc_8C0AF97A:
#data 0x00Cc

loc_8C0AF97C:
#data 0x02A4

loc_8C0AF97E:
#data 0x019c

loc_8C0AF980:
#data 0x0158
#data 0x01D2
#data 0x01B00130
#data 0x000000Ff

#align4
loc_8C0AF98C:
#data 0x8C157EFc

loc_8C0AF990:
#data 0x8C157FB4


loc_8C0AF994:
mov.b @(0x04,r4),r0 	
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov 0x00,r0 ; r0 set to 0x00
mov.b r0,@(0x05,r4) 	
rts 	
mov.b r0,@(0x06,r4) 	
;-------------------------------------------------------------------------------

loc_8C0AF9A2:
mov.w @(loc_8C0AFA82,pc),r5 ; r5 set to 0xCc
mov.w @(loc_8C0AFA84,pc),r6 ; r6 set to 0x2A4
add r4,r5 ; r5 ??? bc r4 is ???	
mov.l @(0x18,r4),r4
mov.b @(0x05,r4),r0 	
tst r0,r0
bf/s loc_8C0AF9Cc
add r4,r6 ; r6 ??? bc r4 is ???	
mov.w @(loc_8C0AFA86,pc),r0 ; r0 set to 0x1D0
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
extu.b r0,r0
cmp/eq 0x15,r0 	
bf loc_8C0AF9Cc
mov.w @(loc_8C0AFA88,pc),r0 ; r0 set to 0x1E9
mov 0x02,r3 ; r3 set to 0x02
mov.b @(r0,r4),r2
extu.b r2,r2
cmp/ge r3,r2
bf loc_8C0AFA78
bra loc_8C0AFA7e
nop 	

#align4
loc_8C0AF9CC:
#data 0x63038464
#data 0x33008456
#data 0x84548B50
#data 0x89112008
#data 0x20088455
#data 0x9052890e
#data 0x8454024c
#data 0x8B043200
#data 0x024C904e
#data 0x32008455
#data 0x8942

loc_8C0AF9F6:
#data 0xE600
#data 0x00096063
#data 0x80558054

#align4
loc_8C0AFA00:
#data 0x004C9043
#data 0x8807600c
#data 0x903F8B04
#data 0x600C004c
#data 0x89318802

#align4
loc_8C0AFA14:
#data 0x004C9039
#data 0x8808600c
#data 0x90358B04
#data 0x600C004c
#data 0x89278802

#align4
loc_8C0AFA28:
#data 0x004C902f
#data 0x8809600c
#data 0x902B8B04
#data 0x600C004c
#data 0x891D8802

#align4
loc_8C0AFA3C:
#data 0x004C9025
#data 0x880A600c
#data 0x90218B04
#data 0x600C004c
#data 0x89138802

#align4
loc_8C0AFA50:
#data 0x004C901b
#data 0x880B600c
#data 0x90178B04
#data 0x600C004c
#data 0x89098802

#align4
loc_8C0AFA64:
#data 0x004C9011
#data 0x880C600c
#data 0x900D8B06
#data 0x600C004c
#data 0x8B018802


loc_8C0AFA78:
rts 	
mov 0xFF,r0
;-------------------------------------------------------------------------------

loc_8C0AFA7C:
#data 0xE000


loc_8C0AFA7E:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0AFA82:
#data 0x00Cc

loc_8C0AFA84:
#data 0x02A4

loc_8C0AFA86:
#data 0x01D0

loc_8C0AFA88:
#data 0x01E9
#data 0x0159
#data 0x0158


loc_8C0AFA8E:
mov.l @(0x18,r4),r4
mov.b @(0x05,r4),r0 	
extu.b r0,r0
cmp/eq 0x03,r0 	
bf loc_8C0AFA9c
rts 	
mov 0xFF,r0
;-------------------------------------------------------------------------------

loc_8C0AFA9C:
mov 0x00,r0 ; r0 set to 0x00
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0AFAA2:
#data 0x958f
#data 0xD649E034
#data 0x6552354c
#data 0xF437F356
#data 0xF356E038
#data 0x9086F437
#data 0x0435035d
#data 0x8451E321
#data 0x6330334c
#data 0x4008600c
#data 0x4008633c
#data 0x40084308
#data 0x306C4300
#data 0xC73E033d
#data 0x435AF208
#data 0xF32D9073
#data 0x035DF43c
#data 0x8F012338
#data 0xF44DF422

#align4
loc_8C0AFAEC:
#data 0x6243E034
#data 0xE321F346
#data 0xF340334c
#data 0xF437E102
#data 0x320CE038
#data 0x84512F26
#data 0x600C6330
#data 0x633C4008
#data 0x40084008
#data 0x306C4308
#data 0x303C4300
#data 0xC72E031d
#data 0x435AF008
#data 0x905063F6
#data 0xF238F32d
#data 0xF32AF23e
#data 0xE321025d
#data 0x0425334c
#data 0x63308451
#data 0x4008600c
#data 0x633C4008
#data 0x40084308
#data 0x306C4300
#data 0x8404303c
#data 0x89042008
#data 0xE3019039
#data 0x223A024d
#data 0x0425

loc_8C0AFB5A:
#data 0x8451
#data 0x314CE124
#data 0x4008600c
#data 0x40084008
#data 0xE021360c
#data 0x633C034c
#data 0x43004308
#data 0x8465363c
#data 0x2100000b
;-------------------------------------------------------------------------------

loc_8C0AFB7C:
rts 	
mov 0x00,r0
;-------------------------------------------------------------------------------

loc_8C0AFB80:
mov.l @(loc_8C0AFBD8,pc),r2 ; r2 set to 0x8C26823c
mov.w @(loc_8C0AFBC4,pc),r3 ; r3 set to 0xCc
mov.l @r2,r0
add r3,r4
mov.l @(0x1C,r0),r0
tst 0x01,r0 	
bt/s loc_8C0AFB94
mov.l @r4,r4
bra loc_8C0AFB96
mov 0x01,r5

loc_8C0AFB94:
mov 0x08,r5 ; r5 set to 0x08

loc_8C0AFB96:
mov.l @(loc_8C0AFBDC,pc),r1 ; r1 set to 0x8C035162, r1 set to 0x8C035162
jmp @r1
nop 	

loc_8C0AFB9C:
mov.w @(loc_8C0AFBC4,pc),r3 ; r3 set to 0xCc
mov.l @(loc_8C0AFBDC,pc),r2 ; r2 set to 0x8C035162
add r3,r4
mov.l @r4,r4
jmp @r2
mov 0x01,r5

loc_8C0AFBA8:
mov.b @(0x04,r4),r0 	
add 0x01,r0
rts 	
mov.b r0,@(0x04,r4) 	
;-------------------------------------------------------------------------------

loc_8C0AFBB0:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0AFBC8,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0AFBBE:
mov.l @(loc_8C0AFBE0,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0AFBC4:
#data 0x00Cc
#data 0x0130

loc_8C0AFBC8:
#data 0x012c
#data 0x0000

#align4
loc_8C0AFBCC:
#data 0x8C1582Fc
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0AFBD8:
#data 0x8C26823c

#align4
loc_8C0AFBDC:
#data bank03.loc_8c035162

loc_8C0AFBE0:
#data bank04.loc_8c0450C0


loc_8C0AFBE4:
mov.w @(loc_8C0AFC6A,pc),r1 ; r1 set to 0xDc
mov.w @(loc_8C0AFC6A,pc),r0 ; r0 set to 0xDc
sts.l pr,@-r15
mov.l @(0x18,r4),r2
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0AFC74,pc),r3 ; r3 set to 0x8C129560
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0AFC6C,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0AFC6E,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0AFC78,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x24,r0 ; r0 set to 0x24
mov 0x20,r2 ; r2 set to 0x20
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r4) 	
mov 0x24,r3 ; r3 set to 0x24
mov.w @(loc_8C0AFC70,pc),r0 ; r0 set to 0x13d
mov.b r2,@(r0,r4) 	
add 0xFF,r0 ; r0 set to 0x13c
mov.b r2,@(r0,r4) 	
add 0x03,r0 ; r0 set to 0x13f
mov.b r3,@(r0,r4) 	
add 0xFF,r0 ; r0 set to 0x13e
mov 0x0B,r2 ; r2 set to 0x0b
mov.b r3,@(r0,r4) 	
mov r3,r0 ; r0 set to 0x24
nop 	
lds.l @r15+,pr 	
rts 	
mov.b r2,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0AFC66:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0AFC6A:
#data 0x00Dc

loc_8C0AFC6C:
#data 0x012c

loc_8C0AFC6E:
#data 0x01A3

loc_8C0AFC70:
#data 0x013d
#data 0x0000

#align4
loc_8C0AFC74:
#data bank12.loc_8c129560

loc_8C0AFC78:
#data bank12.loc_8c1294C8
#data 0x7FFC4F22
#data 0xE501D334
#data 0xE6002F42
#data 0x6463430b
#data 0x8D112008
#data 0xE3016403
#data 0x2430D230
#data 0x1424E500
#data 0x143663F2
#data 0x935560F2
#data 0x80418401
#data 0x0435E026
#data 0x0454E020
#data 0x0456904f
#data 0x4F267F04
#data 0x6043000b
;-------------------------------------------------------------------------------

#align4
loc_8C0AFCBC:
#data 0xEE012FE6
#data 0xED002FD6
#data 0x6C532FC6
#data 0x2FA62FB6
#data 0x2F966A43
#data 0x2F86E905
#data 0xD81F4F22
#data 0x9B3a

loc_8C0AFCDA:
#data 0xE501
#data 0x480BE602
#data 0x200864A3
#data 0x64038D0e
#data 0xD21B9033
#data 0x142424E0
#data 0x04A614C6
#data 0x804184C1
#data 0x04B5E026
#data 0x04E4E020
#data 0x04D4E021

#align4
loc_8C0AFD04:
#data 0x63DC7D01
#data 0x8BE63393
#data 0x00096043
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0AFD22:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
tst r3,r3
bf loc_8C0AFD36
mov.l @(0x18,r14),r5
mov r14,r4
bra loc_8C0AFD3e
mov.l @r15+,r14

loc_8C0AFD36:
mov.l @(0x18,r14),r5
mov r14,r4
bra bank0b.loc_8C0B02Fc
mov.l @r15+,r14

loc_8C0AFD3E:
mov r4,r3
mov.l @(loc_8C0AFD5C,pc),r1 ; r1 set to 0x8C1591D0
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x00D83600

#align4
loc_8C0AFD54:
#data bank04.loc_8c044F12

loc_8C0AFD58:
#data loc_8c0aFD22

loc_8C0AFD5C:
#data 0x8C1591D0

loc_8C0AFD60:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x4F2291Ad
#data 0x31EC84E4
#data 0x700192A9
#data 0x80E4D35a
#data 0x430B90A6
#data 0x90A432Dc
#data 0x61E3E201
#data 0x0E247150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC9096
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD34C0E34
#data 0xE00C430b
#data 0xE024E400
#data 0xE30602Dc
#data 0xE5420E44
#data 0x0E369083
#data 0x0E467004
#data 0x0E467004
#data 0xD345907e
#data 0x70010E54
#data 0x70040E54
#data 0x700B0E54
#data 0x70F20E45
#data 0x70260E44
#data 0x84E20E46
#data 0x600C6232
#data 0x727C4000
#data 0x7101012d
#data 0x926A0215
#data 0x00096023
#data 0xD43B704f
#data 0x70FF0E24
#data 0x70FF0E24
#data 0x70FF0E24
#data 0xC7360E24
#data 0xE054F308
#data 0xE050FE37
#data 0x6241FE37
#data 0x425A8541
#data 0x90556203
#data 0x01DDF42d
#data 0x2118425a
#data 0xF52D8D01
#data 0xF44d

loc_8C0AFE36:
#data 0xE034
#data 0xF3D6D330
#data 0xF008C72d
#data 0xE516E034
#data 0xE60DF34e
#data 0xE038FE37
#data 0xC72AF3D6
#data 0xE038F008
#data 0xFE37F35e
#data 0x64E3430b
#data 0xBF2D65D3
#data 0xD32764E3
#data 0x430BE524
#data 0x4F2664E3
#data 0x64E365D3
#data 0x6EF66DF6


loc_8C0AFE74:
mov.l r14,@-r15
mov 0x04,r3 ; r3 set to 0x04
mov.w @(loc_8C0AFED6,pc),r0 ; r0 set to 0x2C0
mov r4,r14
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.l r3,@(r0,r13) 	
mov 0x01,r4 ; r4 set to 0x01
mov.w @(loc_8C0AFED8,pc),r0 ; r0 set to 0x19e
fldi1 fr4
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
tst r3,r3
bt/s loc_8C0AFF34
fadd fr4,fr4 ; r4 ??	
mov.w @(loc_8C0AFEDA,pc),r0 ; r0 set to 0xD0
mov.l @(loc_8C0AFF04,pc),r3 ; r3 set to 0x20000000
mov.l r4,@(r0,r14) 	
add 0x04,r0 ; r0 set to 0xD4
mov.l @(r0,r14),r2
add r3,r2
tst r2,r2
bf/s loc_8C0AFF34
mov.l r2,@(r0,r14) 	
mov.w @(loc_8C0AFECE,pc),r0 ; r0 set to 0xCc
mov.l @(r0,r14),r2
add 0xFF,r2
cmp/pl r2
mov.l r2,@(r0,r14) 	
bf loc_8C0AFF20
mov.w @(loc_8C0AFEDC,pc),r0 ; r0 set to 0x1A1
mov 0x42,r1 ; r1 set to 0x42
mov 0x00,r5 ; r5 set to 0x00
mov.b r1,@(r0,r14) 	
add 0x0B,r0 ; r0 set to 0x1Ac
mov.w r5,@(r0,r14) 	
add 0xF2,r0 ; r0 set to 0x19e
mov.b r5,@(r0,r14) 	
add 0x26,r0 ; r0 set to 0x1C4
bra loc_8C0AFF08
nop 	
#data 0x00Dc
#data 0x012C00C0
#data 0x01A3

loc_8C0AFECE:
#data 0x00Cc
#data 0x00F0019c
#data 0x0130

loc_8C0AFED6:
#data 0x02C0

loc_8C0AFED8:
#data 0x019e

loc_8C0AFEDA:
#data 0x00D0

loc_8C0AFEDC:
#data 0x01A1
#data 0x0000

#align4
loc_8C0AFEE0:
#data bank12.loc_8c129560

loc_8C0AFEE4:
#data bank12.loc_8c1294C8
#data 0x8C2896B0
#data 0x3E800000

#align4
loc_8C0AFEF0:
#data 0x8C1591C0
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0AFEFC:
#data bank03.loc_8c034e8c

loc_8C0AFF00:
#data bank04.loc_8c042008

loc_8C0AFF04:
#data 0x20000000


loc_8C0AFF08:
mov.l @(loc_8C0AFFCC,pc),r2 ; r2 set to 0x8C2896B0
mov.l r5,@(r0,r14) 	
mov.b @(0x02,r14),r0 	
mov.l @r2,r1
extu.b r0,r0
shll r0
add 0x7C,r1
mov.w @(r0,r1),r3
add 0x01,r3
mov.w r3,@(r0,r1) 	
bra loc_8C0AFF34
nop 	

#align4
loc_8C0AFF20:
#data 0x0E469051
#data 0xF3E6E05c
#data 0xFE37F343
#data 0xF2E6E060
#data 0xFE27F243

#align4
loc_8C0AFF34:
#data 0x200884D5
#data 0x90448909
#data 0xE05C0E46
#data 0xF343F3E6
#data 0xE060FE37
#data 0xF243F2E6
#data 0xFE27

loc_8C0AFF4E:
#data 0x903a
#data 0x233803Ee
#data 0x9037891a
#data 0xD11DE301
#data 0x415A02Ec
#data 0x0E24223a
#data 0xF2E6E050
#data 0xF231F30d
#data 0xC719FE27
#data 0xE050F208
#data 0xF215F1E6
#data 0x4F268B05
#data 0x64E365D3
#data 0xA2A56DF6
#data 0x6EF6

loc_8C0AFF86:
#data 0xF3E6
#data 0xFE37E054

#align4
loc_8C0AFF8C:
#data 0x03EC901d
#data 0x89092338
#data 0xB17965D3
#data 0x901664E3
#data 0x72FF02Ec
#data 0x622E0E24
#data 0x8B0A2228

#align4
loc_8C0AFFA8:
#data 0x65D384E5
#data 0xD10A4F26
#data 0x4008600c
#data 0x6DF664E3
#data 0x432B031e
#data 0x6EF6

loc_8C0AFFBE:
#data 0x4F26
#data 0x000B6DF6
#data 0x00D86EF6
#data 0x01A0012c

#align4
loc_8C0AFFCC:
#data 0x8C2896B0
#data 0x3D4CCCCd
#data 0x3C23D70a

#align4
loc_8C0AFFD8:
#data 0x8C1591E0


loc_8C0AFFDC:
mov.b @(0x05,r5),r0 	
tst r0,r0
bt loc_8C0AFFE6
bra bank0b.loc_8C0B04D0
nop 	

loc_8C0AFFE6:
#data 0xC746
#data 0x9087F408
#data 0x4311035c
#data 0xF59D8D25
#data 0xE3048445
#data 0x7001F68d
#data 0x8045D641

#align4
loc_8C0B0000:
#data 0x0534907c
#data 0xF457E050
#data 0x814EE010
#data 0xF467E05c
#data 0xF467E060
#data 0xF467E068
#data 0xF467E06c
#data 0x035D906f
#data 0x8F022338
#data 0xD638E708
#data 0xE718

loc_8C0B002A:
#data 0x465a
#data 0xF208C737
#data 0xF32DE05c
#data 0xF323F342
#data 0xE022F437
#data 0x0474

loc_8C0B003E:
#data 0xD134
#data 0x415A905c
#data 0xE050065c
#data 0xF30DF246
#data 0xF255F230
#data 0xF4278F01
#data 0xF457

loc_8C0B0056:
#data 0xD32f
#data 0xF3466763
#data 0xE0544708
#data 0xF437373c
#data 0x66718571
#data 0x90486703
#data 0x2228025d
#data 0xF59D8D01
#data 0x666b

loc_8C0B0076:
#data 0x465a
#data 0xF056E034
#data 0xF246F550
#data 0x475AF32d
#data 0xF04CF200
#data 0xF32DF23e
#data 0xF427F253
#data 0xF246E038
#data 0xC720F056
#data 0xF008F200
#data 0xF23EE038
#data 0x000BF253
#data 0xF427
;-------------------------------------------------------------------------------

loc_8C0B00A6:
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
#data 0x84458B06
#data 0x80457001
#data 0x814EE030
#data 0x814FE000

#align4
loc_8C0B00F8:
#data 0x0009A0F0
#data 0x01300141
#data 0x3FD55555
#data 0x00071600
#data 0xFFF8EA00
#data 0x47800000
#data 0x3DCCCCCd

#align4
loc_8C0B0114:
#data 0x8C1591Bc
#data 0x40092492