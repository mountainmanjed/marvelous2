loc_8C0C005C:
mov r5,r2
mov.l @(loc_8C0C01B0,pc),r3 ; r3 set to 0x8C1294C8
mov r4,r1
add 0x34,r2
add 0x34,r1
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.w @(loc_8C0C01A8,pc),r0 ; r0 set to 0x141
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
cmp/eq 0x01,r0 	
bf loc_8C0C007c
mov.l @(loc_8C0C01B4,pc),r1 ; r1 set to 0x43700000
mov 0x38,r0 ; r0 set to 0x38
lds r1,fpul 	
bra loc_8C0C0088
fsts fpul,fr3

#align4
loc_8C0C007C:
#data 0xC74ED14f
#data 0xE038F408
#data 0xF30D415a

#align4
loc_8C0C0088:
#data 0xF230F246
#data 0x908CF427
#data 0x2338034d
#data 0xE0348F01
#data 0xF44d

loc_8C0C009A:
#data 0xF346
#data 0xF340

loc_8C0C009E:
#data 0xF437


loc_8C0C00A0:
lds.l @r15+,pr 	
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0C00A6:
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
#data 0x8D15F235
#data 0x84E5FE27
#data 0x7001F48d
#data 0x80E5D335
#data 0xFE47E05c
#data 0xFE47E068
#data 0xF308C730
#data 0xFE37E060
#data 0xF308C72f
#data 0xFE37E06c
#data 0x64E3430b
#data 0x81EEE000

#align4
loc_8C0C0114:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C011A:
#data 0x2FE6
#data 0x7FFC4F22
#data 0x6E43D329
#data 0x430B2F52
#data 0xE15C64E3
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
#data 0x85EEFE27
#data 0x8B0E2008
#data 0x63F2C718
#data 0x901DF308
#data 0xE038F236
#data 0xF230F1E6
#data 0x8B04F215
#data 0xE503E001
#data 0xBD6F81Ee
#data 0x64E3

loc_8C0C0186:
#data 0x9011
#data 0xF32662F2
#data 0xF2E6E038
#data 0x8905F235
#data 0xE30084E4
#data 0x80E47001
#data 0x0E349007

#align4
loc_8C0C01A0:
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0C01A8:
#data 0x0141
#data 0x0130
#data 0x012C041c

#align4
loc_8C0C01B0:
#data bank12.loc_8c1294C8

loc_8C0C01B4:
#data 0x43700000
#data 0xC1555555
#data 0x43892492
#data 0xC0092492
#data 0xBE892492

#align4
loc_8C0C01C8:
#data bank03.loc_8c034D8c
#data 0x434DB6Db

#align4
loc_8C0C01D0:
#data 0x4F222FE6
#data 0x430BD355
#data 0x600E6E43
#data 0x89054011
#data 0xE30084E4
#data 0x80E47001
#data 0x0E34909c

#align4
loc_8C0C01EC:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C01F2:
mov.w @(loc_8C0C0326,pc),r0 ; r0 set to 0x159
mov.l r14,@-r15
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x13,r0 	
bt/s loc_8C0C0210
mov r4,r14
mov.b @(0x04,r14),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0C0324,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0C0210:
mov.b @(0x05,r14),r0 	
mov r14,r4
mov.l @(loc_8C0C0330,pc),r1 ; r1 set to 0x8C15B338
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0C0224:
#data 0x4F222FE6
#data 0xD3407FFc
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
#data 0x63F2905c
#data 0xE038F336
#data 0xF235F2E6
#data 0x84E5890f
#data 0x80E57001
#data 0x63F29052
#data 0xE038F336
#data 0xC72AFE37
#data 0xE060F308
#data 0xC729FE37
#data 0xE06CF308
#data 0xFE37

loc_8C0C029A:
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C02A2:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0C032C,pc),r3 ; r3 set to 0x8C034D8c
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
mov.w @(loc_8C0C0328,pc),r0 ; r0 set to 0x41c
mov.l @r15,r3
fmov.s @(r0,r3),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fcmp/gt fr3,fr2
bt loc_8C0C0318
mov.b @(0x05,r14),r0 	
mov 0x1B,r5 ; r5 set to 0x1b
mov r14,r4
mov 0x05,r6 ; r6 set to 0x05
add 0x01,r0 ; r0 set to 0x39
mov.b r0,@(0x05,r14) 	
mov.w @(loc_8C0C0328,pc),r0 ; r0 set to 0x41c
mov.l @r15,r3
fmov.s @(r0,r3),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14) 	
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0C033C,pc),r3 ; r3 set to 0x8C034C38
jmp @r3
mov.l @r15+,r14

loc_8C0C0318:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0C0320:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0C0324:
#data 0x012c

loc_8C0C0326:
#data 0x0159

loc_8C0C0328:
#data 0x041c
#data 0x0000

#align4
loc_8C0C032C:
#data bank03.loc_8c034D8c

loc_8C0C0330:
#data bank15.loc_8c15b338
#data 0x40892492
#data 0xBF092492

#align4
loc_8C0C033C:
#data bank03.loc_8c034C38

loc_8C0C0340:
#data 0x6E432FE6
#data 0xE300906d
#data 0x0E344F22
#data 0x844354E5
#data 0x8801600c
#data 0xE0268B0a
#data 0x024D9364
#data 0x3230622d
#data 0x84448B04
#data 0x600CE202
#data 0x8B053023

#align4
loc_8C0C036C:
#data 0x700184E4
#data 0x4F2680E4
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0C0378:
#data 0xE02A9355
#data 0x024C343c
#data 0x890C2228
#data 0xD3296243
#data 0x721061E3
#data 0x430B7134
#data 0xD227E00c
#data 0x64E3420b
#data 0xE3019043
#data 0x0E34

loc_8C0C039E:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0C03A4:
#data 0x6E432FE6
#data 0xE300903b
#data 0x0E344F22
#data 0x963854E5
#data 0x600C8443
#data 0x8F0B8801
#data 0xE026364c
#data 0x024D9330
#data 0x3230622d
#data 0x84448B04
#data 0x600CE202
#data 0x8B053023

#align4
loc_8C0C03D4:
#data 0x700184E4
#data 0x4F2680E4
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0C03E0:
#data 0xD3126263
#data 0x721C61E3
#data 0x430B7134
#data 0x901BE00c
#data 0x600C005c
#data 0x8B0B8805
#data 0xF408C70e
#data 0x035D9015
#data 0x89012338
#data 0xF408C70c

#align4
loc_8C0C0408:
#data 0xF3E6E034
#data 0xFE37F340

#align4
loc_8C0C0410:
#data 0x430BD307
#data 0x900464E3
#data 0x0E24E201
#data 0x000B4F26
#data 0x012C6EF6
#data 0x00880601
#data 0x013001F7

#align4
loc_8C0C042C:
#data bank12.loc_8c1294C8

loc_8C0C0430:
#data bank03.loc_8c034D8c
#data 0x42555555
#data 0xC2555555

#align4
loc_8C0C043C:
#data 0x2FE6903f
#data 0x4F226E43
#data 0x903B03Ed
#data 0x3320025d
#data 0x62538B13
#data 0x61E3D31c
#data 0x71347234
#data 0xE00C430b
#data 0xD31AE160
#data 0xE03831Ec
#data 0xF2E6F318
#data 0xFE27F230
#data 0x64E3430b
#data 0x4011600e
#data 0x8905

loc_8C0C0476:
#data 0x84E4
#data 0x7001E300
#data 0x902080E4
#data 0x0E34

loc_8C0C0482:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0C0488:
#data 0x4F222FE6
#data 0x430BD30e
#data 0x600E6E43
#data 0x89054011
#data 0xE30084E4
#data 0x80E47001
#data 0x0E34900f

#align4
loc_8C0C04A4:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C04AA:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0C04C2,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0C04B8:
mov.l @(loc_8C0C04CC,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x00Cc
#data 0x0158

loc_8C0C04C2:
#data 0x012c

#align4
loc_8C0C04C4:
#data bank12.loc_8c1294C8

loc_8C0C04C8:
#data bank03.loc_8c034D8c

loc_8C0C04CC:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0xD34FE601
#data 0x1F512F42
#data 0x430B6563
#data 0x2008E400
#data 0x64038D0a
#data 0xE026938f
#data 0xE0200435
#data 0xD34952F1
#data 0x14340424
#data 0x142662F2
#data 0x4F267F08
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0C0504:
mov r4,r3
mov.l @(loc_8C0C061C,pc),r1 ; r1 set to 0x8C15B34c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0C0516:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0C060C,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0C060C,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(0x18,r14),r4
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0C060E,pc),r0 ; r0 set to 0xC0
mov.l @(loc_8C0C0620,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C0C0610,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0C0612,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0C0624,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x00,r3 ; r3 set to 0x00
mov r14,r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov r4,r2
mov.b r3,@(r0,r14) 	
add 0x34,r1
mov.l @(loc_8C0C0624,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x20,r0 ; r0 set to 0x20
mov.l @(loc_8C0C062C,pc),r3 ; r3 set to 0x8C034C38
mov.b @(r0,r14),r6
mov 0x1B,r5 ; r5 set to 0x1b
mov.l @(loc_8C0C0628,pc),r0 ; r0 set to 0x8C15B344
mov r14,r4
lds.l @r15+,pr 	
extu.b r6,r6
mov.b @(r0,r6),r6
jmp @r3
mov.l @r15+,r14

loc_8C0C0598:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0C0630,pc),r0 ; r0 set to 0x8C15B358
extu.b r3,r3
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0C05AC:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0C0634,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt loc_8C0C05C4
mov.l @r15,r4
add 0x04,r15
bra loc_8C0C082e
lds.l @r15+,pr 	

loc_8C0C05C4:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
nop 	
;-------------------------------------------------------------------------------

#align4
loc_8C0C05CC:
#data 0x6E432FE6
#data 0x84E54F22
#data 0x8B0E2008
#data 0xB11AE507
#data 0x200864E3
#data 0xE5148B09
#data 0x64E3B115
#data 0x8B042008
#data 0xB110E515
#data 0x200864E3
#data 0x8905

loc_8C0C05F6:
#data 0xD20f
#data 0x64E3420b
#data 0x4011600e
#data 0x891a

loc_8C0C0602:
#data 0x4F26
#data 0xA11264E3
#data 0x07006EF6

loc_8C0C060C:
#data 0x00Dc

loc_8C0C060E:
#data 0x00C0

loc_8C0C0610:
#data 0x012c

loc_8C0C0612:
#data 0x01A3

#align4
loc_8C0C0614:
#data bank04.loc_8c044F12

loc_8C0C0618:
#data loc_8c0c0504

loc_8C0C061C:
#data bank15.loc_8c15b34c

loc_8C0C0620:
#data bank12.loc_8c129560

loc_8C0C0624:
#data bank12.loc_8c1294C8

loc_8C0C0628:
#data bank15.loc_8c15b344

loc_8C0C062C:
#data bank03.loc_8c034C38

loc_8C0C0630:
#data bank15.loc_8c15b358

loc_8C0C0634:
#data bank03.loc_8c034D8c

loc_8C0C0638:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C063E:
#data 0x2FE6
#data 0x4F226E43
#data 0x200884E5
#data 0xE5098B09
#data 0x64E3B0E1
#data 0x8B042008
#data 0xB0DCE515
#data 0x200864E3
#data 0x8905

loc_8C0C065E:
#data 0xD234
#data 0x64E3420b
#data 0x4011600e
#data 0x8903

loc_8C0C066A:
#data 0x4F26
#data 0xA0DE64E3
#data 0x6EF6

loc_8C0C0672:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0C0678:
#data 0x6E432FE6
#data 0x84E54F22
#data 0x8B042008
#data 0xB0C4E50b
#data 0x200864E3
#data 0x8905

loc_8C0C068E:
#data 0xD228
#data 0x64E3420b
#data 0x4011600e
#data 0x8903

loc_8C0C069A:
#data 0x4F26
#data 0xA0C664E3
#data 0x6EF6

loc_8C0C06A2:
#data 0x52E6
#data 0xD32361E3
#data 0x72347134
#data 0xE00C430b
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C06B6:
#data 0x2FE6
#data 0x2FD66E43
#data 0x5DE64F22
#data 0x600C84D5
#data 0x893F8803
#data 0x902D932f
#data 0x633033Dc
#data 0x633C00Dc
#data 0x3030C901
#data 0x62D38936
#data 0x61E3D315
#data 0x71347234
#data 0xE00C430b
#data 0x200884E5
#data 0xD3108B26
#data 0x64E3430b
#data 0x00DC901a
#data 0x8816600c
#data 0x90168B24
#data 0x600C00Dc
#data 0x8904880a
#data 0xF38DE05c
#data 0xF234F2D6
#data 0x8B1f

loc_8C0C0712:
#data 0x84E5
#data 0xD30864E3
#data 0x7001E606
#data 0xE51B80E5
#data 0x6DF64F26
#data 0x6EF6432b
#data 0x01D201Fd
#data 0x01580159

#align4
loc_8C0C0730:
#data bank03.loc_8c034D8c

loc_8C0C0734:
#data bank12.loc_8c1294C8

loc_8C0C0738:
#data bank03.loc_8c034C38

loc_8C0C073C:
#data 0x430BD340
#data 0x600E64E3
#data 0x89044011

#align4
loc_8C0C0748:
#data 0x64E34F26
#data 0xA06E6DF6
#data 0x6EF6

loc_8C0C0752:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C075A:
#data 0x2FE6
#data 0x2FD66E43
#data 0x84E54F22
#data 0x8B0D2008
#data 0xB052E517
#data 0xE51364E3
#data 0xB04E6D03
#data 0xE51464E3
#data 0xB04A2D0b
#data 0x2D0B64E3
#data 0x89052DD8

#align4
loc_8C0C0784:
#data 0x420BD22e
#data 0x600E64E3
#data 0x89044011

#align4
loc_8C0C0790:
#data 0x64E34F26
#data 0xA04A6DF6
#data 0x6EF6

loc_8C0C079A:
#data 0x52E6
#data 0xD32961E3
#data 0x72347134
#data 0xE00C430b
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0C07B0:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.l @(0x18,r14),r4
mov.b @(0x05,r4),r0 	
tst r0,r0
bf loc_8C0C07Fe
mov r4,r2
mov.l @(loc_8C0C0844,pc),r3 ; r3 set to 0x8C1294C8
mov r14,r1
add 0x34,r2
add 0x34,r1
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.b @(0x05,r14),r0 	
tst r0,r0
bf loc_8C0C07F2
mov.l @(loc_8C0C0840,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r14,r4
exts.b r0,r0 ; r0 ??	
cmp/pz r0
bt loc_8C0C0806
mov.b @(0x05,r14),r0 	
mov r14,r4
mov.l @(loc_8C0C0848,pc),r3 ; r3 set to 0x8C034C38
mov 0x06,r6 ; r6 set to 0x06
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov 0x1B,r5 ; r5 set to 0x1b
lds.l @r15+,pr 	
jmp @r3
mov.l @r15+,r14

loc_8C0C07F2:
#data 0xD313
#data 0x64E3430b
#data 0x4011600e
#data 0x8903


loc_8C0C07FE:
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0C082e
mov.l @r15+,r14

loc_8C0C0806:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0C080C:
mov.l @(loc_8C0C084C,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0C0812:
#data 0x9012
#data 0x2338034c
#data 0x56468D03
#data 0x70018445
#data 0x8045

loc_8C0C0822:
#data 0x900b
#data 0x600C006c
#data 0x000B3050
#data 0x0029
;-------------------------------------------------------------------------------

loc_8C0C082E:
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x04,r4) 	
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8C0C083E,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------
#data 0x0141
#data 0x0159

loc_8C0C083E:
#data 0x012c

#align4
loc_8C0C0840:
#data bank03.loc_8c034D8c

loc_8C0C0844:
#data bank12.loc_8c1294C8

loc_8C0C0848:
#data bank03.loc_8c034C38

loc_8C0C084C:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0xE600D358
#data 0x2F501F41
#data 0x430BE503
#data 0x20086463
#data 0x64038D0a
#data 0xE020D354
#data 0x52F11434
#data 0x63F01426
#data 0x04349298
#data 0x0425E026
#data 0x4F267F08
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0C0884:
mov r4,r3
mov.l @(loc_8C0C09C0,pc),r1 ; r1 set to 0x8C15B378
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0C0896:
#data 0x2FE6
#data 0x93876E43
#data 0x84E44F22
#data 0x70019184
#data 0x52E680E4
#data 0x323C907f
#data 0x04ECD345
#data 0x430B907d
#data 0x907B31Ec
#data 0x61E3E501
#data 0x0E547150
#data 0x840250E6
#data 0x50E680E2
#data 0x80E18401
#data 0x53E6E050
#data 0xFE37F336
#data 0x53E6E054
#data 0xFE37F336
#data 0x53E69065
#data 0x0E24023c
#data 0x53E67001
#data 0x0E24023c
#data 0x53E6E030
#data 0x0E24023c
#data 0xD33452E6
#data 0x430B7250
#data 0x51E6E00c
#data 0xD232E024
#data 0x031CE62d
#data 0xE3070E34
#data 0x0E549050
#data 0x0E447077
#data 0x0E34E024
#data 0x04EC9047
#data 0x644CE05c
#data 0x44006343
#data 0x4408343c
#data 0xF348342c
#data 0xE004FE37
#data 0xE060F346
#data 0x903CFE37
#data 0x013D53E6
#data 0xD3240E15
#data 0x430BE515
#data 0x4F2664E3
#data 0x6EF664E3

#align4
loc_8C0C094C:
#data 0x6E432FE6
#data 0x2FD6E020
#data 0x03EC4F22
#data 0x8D082338
#data 0x84D55DE6
#data 0x8B1B2008
#data 0x00DC9026
#data 0x881D600c
#data 0x8B16

loc_8C0C096E:
#data 0xD319
#data 0xF3E6E05c
#data 0xF238E034
#data 0xF230D217
#data 0xE060FE27
#data 0xE038F3E6
#data 0xE034FE37
#data 0xFD37F3E6
#data 0xF3E6E038
#data 0x420BFD37
#data 0x600E64E3
#data 0x891F4011

#align4
loc_8C0C099C:
#data 0xE2009008
#data 0xE0030E24
#data 0x80E4A037
#data 0x01A30800
#data 0x00C000Dc
#data 0x0130012c
#data 0x000001D0

#align4
loc_8C0C09B8:
#data bank04.loc_8c044F12

loc_8C0C09BC:
#data loc_8c0c0884

loc_8C0C09C0:
#data bank15.loc_8c15b378

loc_8C0C09C4:
#data bank12.loc_8c129560

loc_8C0C09C8:
#data bank12.loc_8c1294C8

loc_8C0C09CC:
#data bank13.loc_8c13B058

loc_8C0C09D0:
#data bank03.loc_8c034e8c
#data 0x8C26A524

#align4
loc_8C0C09D8:
#data bank03.loc_8c034dee

loc_8C0C09DC:
#data 0x02EC9035
#data 0x89182228
#data 0xE30084E4
#data 0x70019430
#data 0x80E4F48d
#data 0x902A34Dc
#data 0xE0010E34
#data 0x9028804d
#data 0x0D3503Ed
#data 0x902502Ec
#data 0xE05C0D24
#data 0xE060FD47
#data 0xE068FD47
#data 0xE06CFD47
#data 0xFD47

loc_8C0C0A16:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C0A1E:
#data 0x2FE6
#data 0xD30C4F22
#data 0x6E43430b
#data 0x4011600e
#data 0x90108904
#data 0x0E34E300
#data 0x80E4E003

#align4
loc_8C0C0A38:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C0A3E:
mov.w @(loc_8C0C0A52,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0C0A58,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x0141
#data 0x013002A4
#data 0x01D2

loc_8C0C0A52:
#data 0x012c

#align4
loc_8C0C0A54:
#data bank03.loc_8c034dee

loc_8C0C0A58:
#data bank04.loc_8c0450C0

loc_8C0C0A5C:
#data 0x7FF84F22
#data 0xE600D35c
#data 0x2F501F41
#data 0x430BE503
#data 0x20086463
#data 0x64038D0a
#data 0xE020D358
#data 0x52F11434
#data 0x63F01426
#data 0x043492A2
#data 0x0425E026

#align4
loc_8C0C0A88:
#data 0x4F267F08
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0C0A90:
mov r4,r3
mov.l @(loc_8C0C0BDC,pc),r1 ; r1 set to 0x8C15B388
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0C0AA2:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
fmov.s fr15,@-r15
mov.w @(loc_8C0C0BCA,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0C0BCA,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0C0BE0,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0C0BCC,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r14),r13
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0C0BCE,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0C0BD0,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0C0BE4,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r14),r1
mov 0x24,r0 ; r0 set to 0x24
mov r13,r2
add 0x34,r2
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov r14,r1
add 0x34,r1
mov.b r3,@(r0,r14) 	
mov.l @(loc_8C0C0BE4,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(loc_8C0C0BE8,pc),r2 ; r2 set to 0x8C11E730
jsr @r2
nop 	
mov r0,r4 ; r4 set to 0x0c
mova @(loc_8C0C0BEC,pc),r0  ; r0 set to 0x8C0C0BEc
fmov.s @r0,fr4 ; r4 ??	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
tst r3,r3
bt/s loc_8C0C0B80
fldi0 fr15
mov 0x3F,r2 ; r2 set to 0x3f
fmov fr4,fr0 ; r0 ??? bc r4 is ???	
and r2,r4
add 0x18,r4
lds r4,fpul 	
mov 0x00,r3 ; r3 set to 0x00
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
float fpul,fr3
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???	
mov.l @(loc_8C0C0BE8,pc),r3 ; r3 set to 0x8C11E730
fmac fr0,fr3,fr2
jsr @r3
fmov.s fr2,@(r0,r14) 	
mov 0x1F,r2 ; r2 set to 0x1f
mov r0,r4 ; r4 set to 0x38
and r2,r4 ; r4 ??	
mov.l @(loc_8C0C0BF0,pc),r1 ; r1 set to 0x3FD55555
lds r4,fpul 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???	
float fpul,fr3
lds r1,fpul 	
fsts fpul,fr0
fmac fr0,fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fneg fr3
fmov.s fr3,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr15,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s @(r0,r13),fr3
bra loc_8C0C0BAa
fneg fr3

loc_8C0C0B80:
mov 0x1F,r3 ; r3 set to 0x1f
fmov fr4,fr0
and r3,r4
add 0xF0,r4
lds r4,fpul 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
float fpul,fr3
fmac fr0,fr3,fr2
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0C0BF4,pc),r0  ; r0 set to 0x8C0C0BF4
fmov.s @r0,fr4
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fdiv fr4,fr3
fmov.s fr3,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr15,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s @(r0,r13),fr3
fdiv fr4,fr3

loc_8C0C0BAA:
fmov.s fr3,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
mov.l @(loc_8C0C0BF8,pc),r3 ; r3 set to 0x8C26823C, r3 set to 0x8C26823c
fmov.s fr15,@(r0,r14) 	
mov.l @r3,r0 ; r0 ??, r0 ??	
mov.l @(0x1C,r0),r0
tst 0x01,r0 	
bt loc_8C0C0C00
mov.l @(loc_8C0C0BFC,pc),r1 ; r1 set to 0x8C034C38, r1 set to 0x8C034C38
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
mov 0x00,r6 ; r6 set to 0x00, r6 set to 0x00
jsr @r1
mov r14,r4
bra loc_8C0C0C0a
nop 	
#data 0x0801

loc_8C0C0BCA:
#data 0x00Dc

loc_8C0C0BCC:
#data 0x00C0

loc_8C0C0BCE:
#data 0x012c

loc_8C0C0BD0:
#data 0x01A3
#data 0x0000

#align4
loc_8C0C0BD4:
#data bank04.loc_8c044F12

loc_8C0C0BD8:
#data loc_8c0c0A90

loc_8C0C0BDC:
#data bank15.loc_8c15b388

loc_8C0C0BE0:
#data bank12.loc_8c129560

loc_8C0C0BE4:
#data bank12.loc_8c1294C8

loc_8C0C0BE8:
#data bank11.loc_8c11e730

loc_8C0C0BEC:
#data 0x40092492

#align4
loc_8C0C0BF0:
#data 0x3FD55555

#align4
loc_8C0C0BF4:
#data 0x41000000

#align4
loc_8C0C0BF8:
#data 0x8C26823c

#align4
loc_8C0C0BFC:
#data bank03.loc_8c034C38

loc_8C0C0C00:
#data 0xE51BD222
#data 0x420BE601
#data 0x64E3

loc_8C0C0C0A:
#data 0x4F26
#data 0xFFF964E3
#data 0x6EF66DF6

#align4
loc_8C0C0C14:
#data 0x6E432FE6
#data 0xE15CE025
#data 0x4F2231Ec
#data 0x034C54E6
#data 0xE0340E34
#data 0xF318F2E6
#data 0x31ECE168
#data 0xFE27F230
#data 0xF2E6E05c
#data 0xE160F318
#data 0xF23031Ec
#data 0xE038FE27
#data 0xF318F2E6
#data 0x31ECE16c
#data 0xFE27F230
#data 0xF318E060
#data 0xD30EF2E6
#data 0xFE27F230
#data 0x64E3430b
#data 0x4011600e
#data 0x900F8904
#data 0x0E34E300
#data 0x80E4E003

#align4
loc_8C0C0C70:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C0C76:
mov.w @(loc_8C0C0C88,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@(r0,r4) 	

loc_8C0C0C7C:
mov.w @(loc_8C0C0C88,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0C0C94,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0C0C88:
#data 0x012c
#data 0x0000

#align4
loc_8C0C0C8C:
#data bank03.loc_8c034C38

loc_8C0C0C90:
#data bank03.loc_8c034D8c

loc_8C0C0C94:
#data bank04.loc_8c0450C0
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x4F222F86
#data 0x9C4E7FFc
#data 0xD827EE00
#data 0xEB20ED76
#data 0xE9082F42
#data 0xE503EA07
#data 0x480BE600
#data 0x20086463
#data 0x64038D10
#data 0xD221E026
#data 0x63F21424
#data 0x04C51436
#data 0x04E4E020
#data 0x04A4E021
#data 0x000960B3
#data 0x60D3814e
#data 0x814F0009
#data 0x63EE7E01
#data 0x8BE43397
#data 0x00096043
#data 0x4F267F04
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0C0D08:
mov r4,r3
mov.l @(loc_8C0C0D54,pc),r1 ; r1 set to 0x8C15B3C8
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0C0D1A:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.w @(0x1C,r14),r0 	
add 0xFF,r0
mov.w r0,@(0x1C,r14) 	
exts.w r0,r0
cmp/pl r0
bf loc_8C0C0D30
bra loc_8C0C0E9e
nop 	

loc_8C0C0D30:
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r2
add 0xFF,r2
mov.b r2,@(r0,r14) 	
extu.b r2,r2
cmp/pl r2
bt loc_8C0C0D58
mov 0x02,r0 ; r0 set to 0x02
mov r14,r4
mov.b r0,@(0x04,r14) 	
lds.l @r15+,pr 	
bra loc_8C0C0F36
mov.l @r15+,r14
#data 0x0900

#align4
loc_8C0C0D4C:
#data bank04.loc_8c044F12

loc_8C0C0D50:
#data loc_8c0c0D08

loc_8C0C0D54:
#data bank15.loc_8c15b3C8


loc_8C0C0D58:
mov.b @(0x04,r14),r0 	
mov.w @(loc_8C0C0EA4,pc),r1 ; r1 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0C0EAC,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0C0EA4,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r14),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0C0EA6,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0C0EA8,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0C0EB0,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r14),r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r14) 	
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8C0C0EA6,pc),r0 ; r0 set to 0x12c
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
fmov.s fr3,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
extu.b r0,r0
tst 0x04,r0 	
bt loc_8C0C0E28
mov.l @(loc_8C0C0EB4,pc),r2 ; r2 set to 0x8C034E8c
mov 0x17,r5 ; r5 set to 0x17
mov 0x05,r6 ; r6 set to 0x05
jsr @r2
mov r14,r4 ; r4 ??? bc r14 is ???	
mov 0x20,r0 ; r0 set to 0x20
mov.l @(loc_8C0C0EB8,pc),r4 ; r4 set to 0x8C15B3A8
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
extu.b r0,r0
add 0xFC,r0
shll r0
shll2 r0
fmov.s @(r0,r4),fr3
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr3,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3
mov 0x04,r0 ; r0 set to 0x04
extu.b r3,r3
add 0xFC,r3
shll r3
shll2 r3
add r3,r4 ; r4 ??? bc r3 is ???	
fmov.s @(r0,r4),fr3
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0C0EBC,pc),r0  ; r0 set to 0x8C0C0EBc
fmov.s @r0,fr3
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0C0EC0,pc),r0  ; r0 set to 0x8C0C0EC0
fmov.s @r0,fr3
mov 0x6C,r0 ; r0 set to 0x6c
bra loc_8C0C0E44
fmov.s fr3,@(r0,r14) 	

#align4
loc_8C0C0E28:
#data 0xE517D222
#data 0x420BE604
#data 0xE05C64E3
#data 0xFE47F48d
#data 0xFE47E060
#data 0xFE47E068
#data 0xFE47E06c

#align4
loc_8C0C0E44:
#data 0xE03463E3
#data 0xD01E330c
#data 0xE3202F36
#data 0x633033Ec
#data 0x4300633c
#data 0xC71B023d
#data 0xE038F008
#data 0x62F6425a
#data 0xF228F32d
#data 0xF22AF23e
#data 0x320C62E3
#data 0x85EF2F26
#data 0x435A6303
#data 0xC71463F6
#data 0xF32DF008
#data 0xF23EF238
#data 0xF32AE020
#data 0x222802Ec
#data 0xD3108B03
#data 0x430BE50a
#data 0x64E3

loc_8C0C0E96:
#data 0x4F26
#data 0xA01B64E3
#data 0x6EF6


loc_8C0C0E9E:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0C0EA4:
#data 0x00Dc

loc_8C0C0EA6:
#data 0x012c

loc_8C0C0EA8:
#data 0x01A3
#data 0x0000

#align4
loc_8C0C0EAC:
#data bank12.loc_8c129560

loc_8C0C0EB0:
#data bank12.loc_8c1294C8

loc_8C0C0EB4:
#data bank03.loc_8c034e8c

loc_8C0C0EB8:
#data bank15.loc_8c15b3A8

loc_8C0C0EBC:
#data 0x414DB6Db

#align4
loc_8C0C0EC0:
#data 0xBE892492

#align4
loc_8C0C0EC4:
#data bank15.loc_8c15b398
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0C0ED0:
#data bank04.loc_8c042008

loc_8C0C0ED4:
#data 0xE15C2FE6
#data 0x31EC6E43
#data 0xD31BE034
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
#data 0xE4008908
#data 0x00096043
#data 0x900F80E4
#data 0x85EF0E44
#data 0x81EF70Ed

#align4
loc_8C0C0F30:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C0F36:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0C0F48,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	

loc_8C0C0F42:
mov.l @(loc_8C0C0F50,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0C0F48:
#data 0x012c
#data 0x0000

#align4
loc_8C0C0F4C:
#data bank03.loc_8c034dee

loc_8C0C0F50:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0xE600D35a
#data 0x2F501F41
#data 0x430BE503
#data 0x20086463
#data 0x64038D0a
#data 0xE020D356
#data 0x52F11434
#data 0x63F01426
#data 0x0434929f
#data 0x0425E026
#data 0x4F267F08
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0C0F88:
mov r4,r3
mov.l @(loc_8C0C10CC,pc),r1 ; r1 set to 0x8C15B3E8
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0C0F9A:
#data 0x2FE6
#data 0x918D6E43
#data 0x84E44F22
#data 0xD34A31Ec
#data 0x80E47001
#data 0x52E69086
#data 0x430B320c
#data 0x908270E4
#data 0x61E3E401
#data 0x0E447150
#data 0x840250E6
#data 0x50E680E2
#data 0x80E18401
#data 0x53E6E050
#data 0xFE37F336
#data 0x53E6E054
#data 0xFE37F336
#data 0x53E69070
#data 0x0E24023c
#data 0x53E67001
#data 0x0E24023c
#data 0x53E6E030
#data 0x0E24023c
#data 0xD33752E6
#data 0x430B7250
#data 0x51E6E00c
#data 0xD535E024
#data 0x0E34031c
#data 0x9058E307
#data 0xE0240E44
#data 0xE0340E34
#data 0xF32652E6
#data 0xE038FE37
#data 0xF33653E6
#data 0xE020FE37
#data 0x600C00Ec
#data 0x40004000
#data 0xC72B035d
#data 0x435AF208
#data 0x53E69045
#data 0x023DF32d
#data 0x2228F43c
#data 0xF4228D01
#data 0xF44d

loc_8C0C1046:
#data 0xE034
#data 0xF3E662E3
#data 0x33ECE320
#data 0xFE37F340
#data 0x320CE038
#data 0x63302F26
#data 0x4300633c
#data 0x353C4300
#data 0x63038551
#data 0x63F6435a
#data 0xF008C71c
#data 0xF32DE020
#data 0xF23EF238
#data 0x02ECF32a
#data 0x2248622c
#data 0xE5148D02
#data 0xE601A001

loc_8C0C1088:
#data 0xE600

loc_8C0C108A:
#data 0xD216
#data 0x64E3420b
#data 0x64E34F26
#data 0x6EF6


loc_8C0C1096:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0C10E8,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt loc_8C0C10B4
mov.b @(0x04,r14),r0 	
mov r14,r4
add 0x01,r0
mov.b r0,@(0x04,r14) 	
lds.l @r15+,pr 	
bra loc_8C0C10Ec
mov.l @r15+,r14

loc_8C0C10B4:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x0901
#data 0x012C00Dc
#data 0x013001A3

#align4
loc_8C0C10C4:
#data bank04.loc_8c044F12

loc_8C0C10C8:
#data loc_8c0c0F88

loc_8C0C10CC:
#data bank15.loc_8c15b3E8

loc_8C0C10D0:
#data bank12.loc_8c129560

loc_8C0C10D4:
#data bank12.loc_8c1294C8

loc_8C0C10D8:
#data bank15.loc_8c15b3D8
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0C10E4:
#data bank03.loc_8c034e8c

loc_8C0C10E8:
#data bank03.loc_8c034dee


loc_8C0C10EC:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0C10FE,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	

loc_8C0C10F8:
mov.l @(loc_8C0C1100,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0C10FE:
#data 0x012c

#align4
loc_8C0C1100:
#data bank04.loc_8c0450C0
#data 0x7FFC4F22
#data 0xE503D33a
#data 0xE6002F42
#data 0x6463430b
#data 0x8D072008
#data 0xD3376403
#data 0x1434E026
#data 0x62F29362
#data 0x04351426
#data 0x4F267F04
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0C1130:
mov r4,r3
mov.l @(loc_8C0C11FC,pc),r1 ; r1 set to 0x8C15B68c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0C1142:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0C11EA,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0C1200,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0C11EA,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r14),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0C11EC,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0C11EE,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0C1204,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r14),r1
mov 0x24,r0 ; r0 set to 0x24
mov 0x00,r4 ; r4 set to 0x00
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov 0x14,r5 ; r5 set to 0x14
mov 0x03,r6 ; r6 set to 0x03
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0C11EC,pc),r0 ; r0 set to 0x12c
mov.l @(loc_8C0C1208,pc),r3 ; r3 set to 0x8C034E8c
mov.b r4,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r4,@(r0,r14) 	
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???	
lds.l @r15+,pr 	
mov r14,r4
mov.l @r15+,r14

loc_8C0C11C8:
mov.l @(0x18,r4),r5 ; r5 ??? bc r4 is ???	
mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
mov.w @(loc_8C0C11F0,pc),r6 ; r6 set to 0x2A4, r6 set to 0x2A4
mov 0xFF,r2 ; r2 set to 0xFFFFFFFF, r2 set to 0xFFFFFFFf
mov.b @(r0,r5),r3 ; r3 ??? bc r5 is ???	
add r5,r6 ; r6 ??? bc r5 is ???, r6 ??? bc r5 is ???	
mov.b r3,@(r0,r4) 	
mov 0x31,r0 ; r0 set to 0x31, r0 set to 0x31
mov.b r2,@(r0,r4) 	
mov.b @r6,r3
tst r3,r3
bf loc_8C0C120c
mov.b @(0x04,r4),r0 	
add 0x01,r0 ; r0 set to 0x32, r0 set to 0x32
bra loc_8C0C12Aa
mov.b r0,@(0x04,r4) 	
#data 0x0902

loc_8C0C11EA:
#data 0x00Dc

loc_8C0C11EC:
#data 0x012c

loc_8C0C11EE:
#data 0x01A3

loc_8C0C11F0:
#data 0x02A4
#data 0x0000

#align4
loc_8C0C11F4:
#data bank04.loc_8c044F12

loc_8C0C11F8:
#data loc_8c0c1130

loc_8C0C11FC:
#data bank15.loc_8c15b68c

loc_8C0C1200:
#data bank12.loc_8c129560

loc_8C0C1204:
#data bank12.loc_8c1294C8

loc_8C0C1208:
#data bank03.loc_8c034e8c

loc_8C0C120C:
#data 0xE5009056
#data 0xE0340454
#data 0xF3365346
#data 0xE038F437
#data 0xF3365346
#data 0x904CF437
#data 0x023C5346
#data 0x892D2228
#data 0xE2019046
#data 0x0424D724
#data 0x5646701f
#data 0x600C006c
#data 0x40004000
#data 0xC721037d
#data 0x435AF208
#data 0xF32D903a
#data 0x2338036d
#data 0x8D01F43c
#data 0xF44DF422

#align4
loc_8C0C1258:
#data 0xE0349231
#data 0xE138F346
#data 0xF340314c
#data 0x5346F437
#data 0x323CF118
#data 0x622C6220
#data 0x42004200
#data 0x8571372c
#data 0x435A6303
#data 0xF208C713
#data 0xF322F32d
#data 0xF11AF131

#align4
loc_8C0C1288:
#data 0x5346901b
#data 0xE307023c
#data 0x3233622c
#data 0x90118B01
#data 0x0454

loc_8C0C129A:
#data 0x900f
#data 0x023C5346
#data 0x8B002228
#data 0x0454

loc_8C0C12A6:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0C12AA:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0C12BC,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	

loc_8C0C12B6:
mov.l @(loc_8C0C12D0,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0C12BC:
#data 0x012c
#data 0x014b
#data 0x01590130

#align4
loc_8C0C12C4:
#data bank15.loc_8c15b3F8
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0C12D0:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0xE600D326
#data 0x2F501F41
#data 0x430BE503
#data 0x20086463
#data 0x64038D0a
#data 0xE020D322
#data 0x52F11434
#data 0x63F01426
#data 0x0434923a
#data 0x0425E026
#data 0x4F267F08
#data 0x6043000b
;-------------------------------------------------------------------------------

#align4
loc_8C0C1308:
#data 0x7FFC4F22
#data 0xE503D319
#data 0xE6002F42
#data 0x6463430b
#data 0x8D0B2008
#data 0xD3166403
#data 0x1434E020
#data 0x532662F2
#data 0x1436E202
#data 0x04249320
#data 0x0435E026

#align4
loc_8C0C1334:
#data 0x4F267F04
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0C133C:
mov.l @(0x18,r4),r2
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r2),r3
mov.b r3,@(r0,r4) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r4),r2
tst r2,r2
bt loc_8C0C1354
mov 0x31,r0 ; r0 set to 0x31
mov 0x01,r2 ; r2 set to 0x01
rts 	
mov.b r2,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0C1354:
mov 0x31,r0 ; r0 set to 0x31
mov 0xFF,r1 ; r1 set to 0xFFFFFFFf
mov.b r1,@(r0,r4) 	
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0C135E:
mov r4,r3
mov.l @(loc_8C0C137C,pc),r1 ; r1 set to 0x8C15B69c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x00000903

#align4
loc_8C0C1374:
#data bank04.loc_8c044F12

loc_8C0C1378:
#data loc_8c0c135e

loc_8C0C137C:
#data bank15.loc_8c15b69c

loc_8C0C1380:
#data 0x6E432FE6
#data 0x9199FFFb
#data 0x84E44F22
#data 0xD34E31Ec
#data 0x80E47001
#data 0x52E69092
#data 0x430B320c
#data 0x908E70E4
#data 0x61E3E401
#data 0x0E447150
#data 0x840250E6
#data 0x50E680E2
#data 0x80E18401
#data 0x53E6E050
#data 0xFE37F336
#data 0x53E6E054
#data 0xFE37F336
#data 0x53E6907c
#data 0x0E24023c
#data 0x53E67001
#data 0x0E24023c
#data 0x53E6E030
#data 0x0E24023c
#data 0xD33B52E6
#data 0x430B7250
#data 0x51E6E00c
#data 0x031CE024
#data 0x90660E34
#data 0xE0340E44
#data 0xF33653E6
#data 0xE038FE37
#data 0xF33653E6
#data 0xE020FE37
#data 0x233803Ec
#data 0xE4008D1b
#data 0xE307E024
#data 0xC72F0E34
#data 0xE020FF08
#data 0x600C00Ec
#data 0x8B148801
#data 0x53E6C72c
#data 0x904CFF08
#data 0x2228023d
#data 0xD12A8906
#data 0xF2E6E034
#data 0xF30D415a
#data 0xFE27F230

#align4
loc_8C0C143C:
#data 0xA0049041
#data 0x0E45

loc_8C0C1442:
#data 0xE024
#data 0xC7250E44
#data 0xFF08

loc_8C0C144A:
#data 0xFF3d
#data 0xE513D324
#data 0x430B065a
#data 0x4F2664E3
#data 0xFFF964E3
#data 0x6EF6


loc_8C0C145E:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0C14E4,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r4,r14
bsr loc_8C0C133c
mov r14,r4
mov.w @(loc_8C0C14C4,pc),r1 ; r1 set to 0x159
mov.l @(0x18,r14),r0
mov.b @(r0,r1),r0
extu.b r0,r0
cmp/eq 0x13,r0 	
bt loc_8C0C1486
mov.b @(0x04,r14),r0 	
mov r14,r4
add 0x01,r0
mov.b r0,@(0x04,r14) 	
lds.l @r15+,pr 	
bra loc_8C0C14E8
mov.l @r15+,r14

loc_8C0C1486:
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r2
tst r2,r2
bf loc_8C0C14B6
mov.b @(0x05,r14),r0 	
tst r0,r0
bf loc_8C0C14B6
mov.w @(loc_8C0C14C6,pc),r0 ; r0 set to 0x141
mov.l @(0x18,r14),r3
mov.b @(r0,r3),r2
tst r2,r2
bt loc_8C0C14B6
mov.b @(0x05,r14),r0 	
mov 0x13,r5 ; r5 set to 0x13
mov.l @(loc_8C0C14E0,pc),r3 ; r3 set to 0x8C034E8c
mov 0x07,r6 ; r6 set to 0x07
add 0x01,r0 ; r0 set to 0x142
mov.b r0,@(0x05,r14) 	
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0C1308
mov.l @r15+,r14

loc_8C0C14B6:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x012C00Dc
#data 0x013001A3

loc_8C0C14C4:
#data 0x0159

loc_8C0C14C6:
#data 0x0141

#align4
loc_8C0C14C8:
#data bank12.loc_8c129560

loc_8C0C14CC:
#data bank12.loc_8c1294C8
#data 0x41000000
#data 0x40C00000
#data 0x436CAAAa
#data 0x40A00000

#align4
loc_8C0C14E0:
#data bank03.loc_8c034e8c

loc_8C0C14E4:
#data bank03.loc_8c034dee


loc_8C0C14E8:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0C14FA,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	

loc_8C0C14F4:
mov.l @(loc_8C0C14FC,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0C14FA:
#data 0x012c

#align4
loc_8C0C14FC:
#data bank04.loc_8c0450C0
#data 0x7FFC4F22
#data 0xE503D359
#data 0xE6002F42
#data 0x6463430b
#data 0x8D0B2008
#data 0xD3566403
#data 0x91A0E026
#data 0x939D1434
#data 0x142662F2
#data 0x60F20435
#data 0x814E001d
#data 0x4F267F04
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0C1534:
mov r4,r3
mov.l @(loc_8C0C1674,pc),r1 ; r1 set to 0x8C15B6Ac
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0C1546:
#data 0x2FE6
#data 0x90896E43
#data 0x54E6E30f
#data 0x2348044c
#data 0xE0218914
#data 0x611C01Ec
#data 0x890F3410
#data 0xE70F907e
#data 0x64E352E6
#data 0x032CE517
#data 0xD242E021
#data 0x0E34E608
#data 0x937400Ec
#data 0x2709303c
#data 0x6EF6422b

#align4
loc_8C0C1580:
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0C1584:
#data 0x6E432FE6
#data 0x4F22916c
#data 0x31EC84E4
#data 0x7001D33a
#data 0x906580E4
#data 0x320C52E6
#data 0x70E4430b
#data 0xE4019061
#data 0x715061E3
#data 0x50E60E44
#data 0x80E28402
#data 0x840150E6
#data 0xE05080E1
#data 0xF33653E6
#data 0xE054FE37
#data 0xF33653E6
#data 0x904FFE37
#data 0x023C53E6
#data 0x70010E24
#data 0x023C53E6
#data 0xE0300E24
#data 0x023C53E6
#data 0x52E60E24
#data 0x7250D327
#data 0xE00C430b
#data 0xE02451E6
#data 0x031C9239
#data 0xE30F0E34
#data 0x0E449037
#data 0x0E34E024
#data 0x0E24E021
#data 0x53E6E034
#data 0xFE37F336
#data 0x53E6E038
#data 0xFE37F336
#data 0x64E3BF99
#data 0x64E34F26
#data 0x6EF6

loc_8C0C161A:
#data 0x2FE6
#data 0xBF924F22
#data 0x901D6E43
#data 0x024C54E6
#data 0x89052228
#data 0x034D9017
#data 0x633D85Ee
#data 0x89053300

#align4
loc_8C0C1638:
#data 0xE30084E4
#data 0x80E47001
#data 0x0E349011

#align4
loc_8C0C1644:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C164A:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0C1666,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	

loc_8C0C1656:
mov.l @(loc_8C0C1684,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x01580904
#data 0x00FF0141
#data 0x00Dc

loc_8C0C1666:
#data 0x012c
#data 0x000001A3

#align4
loc_8C0C166C:
#data bank04.loc_8c044F12

loc_8C0C1670:
#data loc_8c0c1534

loc_8C0C1674:
#data bank15.loc_8c15b6Ac

loc_8C0C1678:
#data bank03.loc_8c034F54

loc_8C0C167C:
#data bank12.loc_8c129560

loc_8C0C1680:
#data bank12.loc_8c1294C8

loc_8C0C1684:
#data bank04.loc_8c0450C0
#data 0x7FFC4F22
#data 0xD349

loc_8C0C168E:
#data 0xE503
#data 0xE6002F42
#data 0x6463430b
#data 0x8D112008
#data 0xE5006403
#data 0xE020D345
#data 0x04541434
#data 0x0454E021
#data 0x63F2907c
#data 0x937A023e
#data 0x60F21426
#data 0x80418401
#data 0x0435E026

#align4
loc_8C0C16C0:
#data 0x4F267F04
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0C16C8:
mov 0x02,r3 ; r3 set to 0x02
mov.l r14,@-r15
mov.b @(0x04,r4),r0 	
extu.b r0,r0
cmp/ge r3,r0
bf/s loc_8C0C16Dc
mov.l @(0x18,r4),r14
mov.l @(loc_8C0C17BC,pc),r1 ; r1 set to 0x8C0450C0
jmp @r1
mov.l @r15+,r14

loc_8C0C16DC:
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r4),r2
tst r2,r2
bf loc_8C0C16Ea
mov r14,r5
bra loc_8C0C16F0
mov.l @r15+,r14

loc_8C0C16EA:
mov r14,r5
bra loc_8C0C1894
mov.l @r15+,r14

loc_8C0C16F0:
mov.w @(loc_8C0C17AC,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.l r12,@-r15
sts.l pr,@-r15
mov.b r3,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov.b r2,@(r0,r14) 	
mov.b @(0x04,r14),r0 	
tst r0,r0
bf loc_8C0C17C8
mov.b @(0x04,r14),r0 	
mov.w @(loc_8C0C17AE,pc),r3 ; r3 set to 0xDc
add 0x01,r0 ; r0 set to 0x25
mov.w @(loc_8C0C17AE,pc),r1 ; r1 set to 0xDc
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0C17A8,pc),r0 ; r0 set to 0x1C8
mov.l @(r0,r13),r2
mov.w @(loc_8C0C17B0,pc),r0 ; r0 set to 0xC0
add r3,r2
mov.l @(loc_8C0C17C0,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0C17AC,pc),r0 ; r0 set to 0x12c
mov 0x01,r1 ; r1 set to 0x01
mov.b r1,@(r0,r14) 	
mov.w @(loc_8C0C17A8,pc),r0 ; r0 set to 0x1C8
mov.l @(r0,r13),r0 ; r0 ??? bc r13 is ???	
mov.b @(0x02,r0),r0 	
mov.b r0,@(0x02,r14) 	
mov.w @(loc_8C0C17A8,pc),r0 ; r0 set to 0x1C8
mov.l @(r0,r13),r0 ; r0 ??? bc r13 is ???	
mov.b @(0x01,r0),r0 	
mov.b r0,@(0x01,r14) 	
mov.w @(loc_8C0C17A8,pc),r0 ; r0 set to 0x1C8
mov.l @(r0,r13),r3 ; r3 ??? bc r13 is ???	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0C17A8,pc),r0 ; r0 set to 0x1C8
mov.l @(r0,r13),r3
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0C17A8,pc),r0 ; r0 set to 0x1C8
mov.l @(r0,r13),r3
add 0xDB,r0 ; r0 set to 0x1A3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r14) 	
add 0x25,r0 ; r0 set to 0x1C8
mov.l @(r0,r13),r3
add 0xDC,r0 ; r0 set to 0x1A4
mov.b @(r0,r3),r2
mov.b r2,@(r0,r14) 	
add 0x24,r0 ; r0 set to 0x1C8
mov.l @(r0,r13),r3
mov 0x30,r0 ; r0 set to 0x30
mov r14,r1 ; r1 ??? bc r14 is ???	
add 0x50,r1
mov.b @(r0,r3),r2
mov.l @(loc_8C0C17C4,pc),r3 ; r3 set to 0x8C1294C8
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0C17A8,pc),r0 ; r0 set to 0x1C8
mov.l @(r0,r13),r2
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.w @(loc_8C0C17A8,pc),r0 ; r0 set to 0x1C8
mov 0xFF,r2 ; r2 set to 0xFFFFFFFf
mov.l @(r0,r13),r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0C17A8,pc),r0 ; r0 set to 0x1C8
mov.l @(r0,r13),r3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0C17A8,pc),r0 ; r0 set to 0x1C8
mov.l @(r0,r13),r3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x0A,r0 ; r0 set to 0x0a
bra loc_8C0C1868
mov.w r0,@(0x1E,r14) 	

loc_8C0C17A8:
#data 0x01C8
#data 0x0905

loc_8C0C17AC:
#data 0x012c

loc_8C0C17AE:
#data 0x00Dc

loc_8C0C17B0:
#data 0x00C0
#data 0x0000

#align4
loc_8C0C17B4:
#data bank04.loc_8c044F12

loc_8C0C17B8:
#data loc_8c0c16C8

loc_8C0C17BC:
#data bank04.loc_8c0450C0

loc_8C0C17C0:
#data bank12.loc_8c129560

loc_8C0C17C4:
#data bank12.loc_8c1294C8

loc_8C0C17C8:
#data 0x02DC9053
#data 0x8B442228
#data 0x600C84D5
#data 0x8D048803
#data 0x60436403
#data 0x88020009
#data 0x8B37

loc_8C0C17E2:
#data 0xD326
#data 0x430BE507
#data 0x85EF54E6
#data 0x893B2008
#data 0xE503D323
#data 0x430BE600
#data 0x20086463
#data 0x6C038D25
#data 0xE120D221
#data 0x31CCD31f
#data 0xE3001C34
#data 0x50076022
#data 0x7001C903
#data 0xE0212100
#data 0x902B0C34
#data 0x932A51E6
#data 0x00DE1C16
#data 0x8401D119
#data 0xE02680C1
#data 0x0C35410b
#data 0xC93F9122
#data 0x70E0D315
#data 0x430B31Cc
#data 0x911C2102
#data 0x600BC93f
#data 0x704031Cc
#data 0x2102

loc_8C0C184A:
#data 0x85Ef
#data 0xA00B70Ff
#data 0x81Ef

loc_8C0C1852:
#data 0xD20a
#data 0x420BE501
#data 0x54E6

loc_8C0C185A:
#data 0x4F26
#data 0x64E3D30c
#data 0x6DF66CF6
#data 0x6EF6432b


loc_8C0C1868:
lds.l @r15+,pr 	
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x022a
#data 0x090501C8
#data 0x00D000Cc

#align4
loc_8C0C187C:
#data bank03.loc_8c035162

loc_8C0C1880:
#data bank04.loc_8c044F12

loc_8C0C1884:
#data loc_8c0c16C8
#data 0x8C26823c

#align4
loc_8C0C188C:
#data bank03.loc_8c03319e

loc_8C0C1890:
#data bank04.loc_8c0450C0


loc_8C0C1894:
mov.l r14,@-r15
mov 0x24,r0 ; r0 set to 0x24
mov.l r13,@-r15
mov r5,r13
mov r4,r14
sts.l pr,@-r15
mov.b @(r0,r13),r3
mov.b r3,@(r0,r14) 	
mov.b @(0x04,r14),r0 	
tst r0,r0
bf/s loc_8C0C1958
mov 0x01,r5 ; r5 set to 0x01
mov.b @(0x04,r14),r0 	
mov.w @(loc_8C0C19CC,pc),r3 ; r3 set to 0xDc
add 0x01,r0 ; r0 set to 0x25
mov.w @(loc_8C0C19CC,pc),r1 ; r1 set to 0xDc
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0C19CA,pc),r0 ; r0 set to 0x1C8
mov.l @(r0,r13),r2
mov.w @(loc_8C0C19CE,pc),r0 ; r0 set to 0xC0
add r3,r2
mov.l @(loc_8C0C19D8,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0C19D0,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r14) 	
mov.w @(loc_8C0C19CA,pc),r0 ; r0 set to 0x1C8
mov.l @(r0,r13),r0 ; r0 ??? bc r13 is ???	
mov.b @(0x02,r0),r0 	
mov.b r0,@(0x02,r14) 	
mov.w @(loc_8C0C19CA,pc),r0 ; r0 set to 0x1C8
mov.l @(r0,r13),r0 ; r0 ??? bc r13 is ???	
mov.b @(0x01,r0),r0 	
mov.b r0,@(0x01,r14) 	
mov.w @(loc_8C0C19CA,pc),r0 ; r0 set to 0x1C8
mov.l @(r0,r13),r3 ; r3 ??? bc r13 is ???	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0C19CA,pc),r0 ; r0 set to 0x1C8
mov.l @(r0,r13),r3
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0C19CA,pc),r0 ; r0 set to 0x1C8
mov.l @(r0,r13),r3
add 0xDB,r0 ; r0 set to 0x1A3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r14) 	
add 0x25,r0 ; r0 set to 0x1C8
mov.l @(r0,r13),r3
add 0xDC,r0 ; r0 set to 0x1A4
mov.b @(r0,r3),r2
mov.b r2,@(r0,r14) 	
add 0x24,r0 ; r0 set to 0x1C8
mov.l @(r0,r13),r3
mov 0x30,r0 ; r0 set to 0x30
mov r14,r1
mov.b @(r0,r3),r2
add 0x50,r1
mov.l @(loc_8C0C19DC,pc),r3 ; r3 set to 0x8C1294C8
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0C19CA,pc),r0 ; r0 set to 0x1C8
mov.l @(r0,r13),r2
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.w @(loc_8C0C19CA,pc),r0 ; r0 set to 0x1C8
mov 0xFF,r2 ; r2 set to 0xFFFFFFFf
mov 0x1B,r5 ; r5 set to 0x1b
mov.l @(r0,r13),r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r2,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r6
mov.w @(loc_8C0C19D2,pc),r3 ; r3 set to 0xFf
mov.l @(loc_8C0C19E0,pc),r2 ; r2 set to 0x8C034C38
add r3,r6
jsr @r2
mov r14,r4
mov.w @(loc_8C0C19D0,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.w r0,@(0x1C,r14) 	
mov.b r3,@(r0,r14) 	
add 0x04,r0 ; r0 set to 0x130
mov.w @(r0,r13),r2 ; r2 ??? bc r13 is ???	
tst r2,r2
bt/s loc_8C0C1A08
mov.w r2,@(r0,r14) 	
mov.w @(loc_8C0C19D4,pc),r4 ; r4 set to 0xCc
add r14,r4 ; r4 ??? bc r14 is ???	
mov.l @r4,r2
neg r2,r2
bra loc_8C0C1A08
mov.l r2,@r4

#align4
loc_8C0C1958:
#data 0x200884E5
#data 0x903A8B48
#data 0x233803Dc
#data 0x84D58B4a
#data 0x8803600c
#data 0x64038D04
#data 0x00096043
#data 0x8B1D8802

#align4
loc_8C0C1978:
#data 0x64E3902a
#data 0x70A00E54
#data 0xE03403Ee
#data 0xC717F2D6
#data 0xF008435a
#data 0xF32DE034
#data 0xFE27F23e
#data 0x03EE4008
#data 0xF2D6E038
#data 0x435AC712
#data 0xE038F008
#data 0xF32DD311
#data 0xFE27F23e
#data 0x6DF64F26
#data 0x6EF6432b

#align4
loc_8C0C19B4:
#data 0x64E384E5
#data 0xE604D309
#data 0x80E57001
#data 0x4F26E51b
#data 0x432B6DF6
#data 0x6EF6

loc_8C0C19CA:
#data 0x01C8

loc_8C0C19CC:
#data 0x00Dc

loc_8C0C19CE:
#data 0x00C0

loc_8C0C19D0:
#data 0x012c

loc_8C0C19D2:
#data 0x00Ff

loc_8C0C19D4:
#data 0x00Cc
#data 0x022a

#align4
loc_8C0C19D8:
#data bank12.loc_8c129560

loc_8C0C19DC:
#data bank12.loc_8c1294C8

loc_8C0C19E0:
#data bank03.loc_8c034C38
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0C19EC:
#data bank03.loc_8c034D8c

loc_8C0C19F0:
#data 0x430BD307
#data 0x600E64E3
#data 0x89054011

#align4
loc_8C0C19FC:
#data 0xD3054F26
#data 0x6DF664E3
#data 0x6EF6432b


loc_8C0C1A08:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0C1A10:
#data bank03.loc_8c034D8c

loc_8C0C1A14:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0xE600D34d
#data 0x2F501F41
#data 0x430BE503
#data 0x20086463
#data 0x64038D0a
#data 0xE020D349
#data 0x52F11434
#data 0x63F01426
#data 0x04349281
#data 0x0425E026
#data 0x4F267F08
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0C1A4C:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0C1B5C,pc),r1 ; r1 set to 0x8C15B6Bc
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

#align4
loc_8C0C1A60:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x916B2FC6
#data 0x84E44F22
#data 0x926731Ec
#data 0xD33A7001
#data 0x906480E4
#data 0x32DC430b
#data 0xE2019062
#data 0x715061E3
#data 0x84D20E24
#data 0x84D180E2
#data 0xE05080E1
#data 0xFE37F3D6
#data 0xF3D6E054
#data 0x9054FE37
#data 0x0E3403Dc
#data 0x02DC7001
#data 0xE0300E24
#data 0x62D303Dc
#data 0x0E347250
#data 0x430BD32b
#data 0xE024E00c
#data 0xE3FF02Dc
#data 0x0E24E400
#data 0x0E34E031
#data 0x03ECE020
#data 0x8D142338
#data 0x903B6C43
#data 0x233803Ed
#data 0xEC0F8D01
#data 0xECF1

loc_8C0C1ADE:
#data 0xD322
#data 0x0009430b
#data 0xC907D220
#data 0x3C0C420b
#data 0x6403C907
#data 0x7425902d
#data 0x73FD03Ed
#data 0x0E35

loc_8C0C1AFA:
#data 0x6CCf
#data 0xE0344C5a
#data 0xC71AF2D6
#data 0x644FF008
#data 0x445AF32d
#data 0x64E3E034
#data 0xF23EE51b
#data 0xFE27F32d
#data 0xF2D6E038
#data 0xF008C714
#data 0xF23EE038
#data 0x9013FE27
#data 0x901203Dd
#data 0x0E36633d
#data 0x4F26E020
#data 0x6CF606Ec
#data 0xD30E761a
#data 0x432B6DF6
#data 0x0A006EF6
#data 0x00C000Dc
#data 0x01A3012c
#data 0x012E0130
#data 0x00CC0158

#align4
loc_8C0C1B54:
#data bank04.loc_8c044F12

loc_8C0C1B58:
#data loc_8c0c1A4c

loc_8C0C1B5C:
#data bank15.loc_8c15b6Bc

loc_8C0C1B60:
#data bank12.loc_8c129560

loc_8C0C1B64:
#data bank12.loc_8c1294C8

loc_8C0C1B68:
#data bank03.loc_8c03319e
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0C1B74:
#data bank03.loc_8c034C38

loc_8C0C1B78:
#data 0xE0242FE6
#data 0x6D532FD6
#data 0x4F226E43
#data 0x0E3403Dc
#data 0x02DD9020
#data 0x622D901f
#data 0x332003Ee
#data 0xD30F8B05
#data 0x64E3430b
#data 0x4011600e
#data 0x8905

loc_8C0C1BA2:
#data 0x4F26
#data 0x64E365D3
#data 0xA0066DF6
#data 0x6EF6

loc_8C0C1BAE:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C1BB6:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0C1BBA:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0C1BD0,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0C1BD8,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x00CC0158

loc_8C0C1BD0:
#data 0x012c
#data 0x0000

#align4
loc_8C0C1BD4:
#data bank03.loc_8c034D8c

loc_8C0C1BD8:
#data bank04.loc_8c0450C0

loc_8C0C1BDC:
#data 0x7FFC4F22
#data 0xE503D34a
#data 0xE6002F42
#data 0x6463430b
#data 0x8D0A2008
#data 0xD3476403
#data 0x1434E026
#data 0x62F2937f
#data 0x04351426
#data 0x840160F2
#data 0x8041

loc_8C0C1C06:
#data 0x7F04
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0C1C0E:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0C1D14,pc),r1 ; r1 set to 0x8C15B6Cc
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0C1C22:
mov.w @(loc_8C0C1CFC,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0C1D18,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.w @(loc_8C0C1CFC,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0C1CFE,pc),r0 ; r0 set to 0xC0
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0C1D00,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0C1D02,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0C1D1C,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov.b r2,@(r0,r4) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r4) 	
mov 0x00,r2 ; r2 set to 0x00
mov.w @(loc_8C0C1D04,pc),r0 ; r0 set to 0xD0
mov.l r2,@(r0,r4) 	
lds.l @r15+,pr 	

loc_8C0C1C86:
mov.w @(loc_8C0C1D00,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
mov.l r14,@-r15
mov.b r3,@(r0,r4) 	
mov.b @(r0,r5),r2 ; r2 ??? bc r5 is ???	
tst r2,r2
bt loc_8C0C1CE6
mov.w @(loc_8C0C1D06,pc),r14 ; r14 set to 0x150, r14 set to 0x150
add r5,r14 ; r14 ??? bc r5 is ???, r14 ??? bc r5 is ???	
mov.b @(0x01,r14),r0 	
mov r0,r14 ; r14 set to 0x12C, r14 set to 0x12c
tst r14,r14
bt loc_8C0C1CE6
mov 0x20,r2 ; r2 set to 0x20, r2 set to 0x20
cmp/hs r2,r14
bt loc_8C0C1CE6
mov.w @(loc_8C0C1D00,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
mov 0x01,r1 ; r1 set to 0x01, r1 set to 0x01
mov.b r1,@(r0,r4) 	
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???, r3 ??? bc r5 is ???	
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0C1D08,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r5),r3
mov.w r3,@(r0,r4) 	
mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
mov.b @(r0,r5),r1 ; r1 ??? bc r5 is ???, r1 ??? bc r5 is ???	
mov.b r1,@(r0,r4) 	
mov.w @(loc_8C0C1D04,pc),r0 ; r0 set to 0xD0, r0 set to 0xD0
mov.l @(r0,r4),r3
cmp/eq r14,r3
bt loc_8C0C1CD8
mov.l @(loc_8C0C1D20,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
mov.l r14,@(r0,r4) 	
mov r14,r6 ; r6 set to 0x12C, r6 set to 0x12c
jmp @r3
mov.l @r15+,r14

loc_8C0C1CD8:
mov.l @(loc_8C0C1D24,pc),r1 ; r1 set to 0x8C289634
mov.b @r1,r3
tst r3,r3
bf loc_8C0C1CE6
mov.l @(loc_8C0C1D28,pc),r3 ; r3 set to 0x8C034D8c
jmp @r3
mov.l @r15+,r14

loc_8C0C1CE6:
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0C1CEA:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0C1CEE:
mov.w @(loc_8C0C1D00,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0C1D2C,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x0A01

loc_8C0C1CFC:
#data 0x00Dc

loc_8C0C1CFE:
#data 0x00C0

loc_8C0C1D00:
#data 0x012c

loc_8C0C1D02:
#data 0x01A3

loc_8C0C1D04:
#data 0x00D0

loc_8C0C1D06:
#data 0x0150

loc_8C0C1D08:
#data 0x0130
#data 0x0000

#align4
loc_8C0C1D0C:
#data bank04.loc_8c044F12

loc_8C0C1D10:
#data loc_8c0c1C0e

loc_8C0C1D14:
#data bank15.loc_8c15b6Cc

loc_8C0C1D18:
#data bank12.loc_8c129560

loc_8C0C1D1C:
#data bank12.loc_8c1294C8

loc_8C0C1D20:
#data bank03.loc_8c034C38

loc_8C0C1D24:
#data 0x8C289634

#align4
loc_8C0C1D28:
#data bank03.loc_8c034D8c

loc_8C0C1D2C:
#data bank04.loc_8c0450C0
#data 0x4F222FE6
#data 0x2F507FFc
#data 0xD358E503
#data 0xE6006E43
#data 0x6463430b
#data 0x8D122008
#data 0x909E6403
#data 0xD254E301
#data 0xE3002430
#data 0x14E61424
#data 0xE02004E6
#data 0xE0210434
#data 0x939362F0
#data 0xE0260424
#data 0x84E10435
#data 0x60438041
#data 0x7F040009
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C1D7A:
#data 0x4F22
#data 0xD3477FF8
#data 0x1F41E602
#data 0xE5032F52
#data 0x54F1430b
#data 0x8D112008
#data 0xD3436403
#data 0x9078E501
#data 0x14342450
#data 0x142652F1
#data 0x043663F2
#data 0x9371E020
#data 0xE0260454
#data 0x60F20435
#data 0x80418401

#align4
loc_8C0C1DB4:
#data 0x4F267F08
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0C1DBC:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0C1EA4,pc),r1 ; r1 set to 0x8C15B6Dc
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
mov.w @(loc_8C0C1E8A,pc),r0 ; r0 set to 0xD0
mov.l @(r0,r14),r5
jmp @r3
mov.l @r15+,r14

loc_8C0C1DD2:
mov.l r14,@-r15
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r4),r3
tst r3,r3
bf/s loc_8C0C1DF4
mov r5,r14
mov.w @(loc_8C0C1E8E,pc),r0 ; r0 set to 0x12c
mov 0x00,r5 ; r5 set to 0x00
mov.b r5,@(r0,r4) 	
mov r5,r0 ; r0 set to 0x00
nop 	
bra loc_8C0C1E84
mov.w r0,@(0x1C,r4) 	

loc_8C0C1DF4:
mov.w @(loc_8C0C1E90,pc),r1 ; r1 set to 0xDc
mov.w @(loc_8C0C1E92,pc),r0 ; r0 set to 0xC0
mov.l @(loc_8C0C1EA8,pc),r3 ; r3 set to 0x8C129560
add r4,r1 ; r1 ??? bc r4 is ???	
mov.w @(loc_8C0C1E90,pc),r2 ; r2 set to 0xDc
jsr @r3
add r14,r2 ; r2 ??? bc r14 is ???	
mov.w @(loc_8C0C1E8E,pc),r0 ; r0 set to 0x12c
mov 0x01,r5 ; r5 set to 0x01
mov r4,r1
add 0x50,r1
mov.b r5,@(r0,r4) 	
mov.b @(0x02,r14),r0 	
mov.b r0,@(0x02,r4) 	
mov.b @(0x01,r14),r0 	
mov.b r0,@(0x01,r4) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???	
fmov.s fr3,@(r0,r4) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r14),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0C1E94,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r14),r3
mov.b r3,@(r0,r4) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r14),r2
mov.b r2,@(r0,r4) 	
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r14),r3
mov r14,r2
add 0x50,r2
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0C1EAC,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov r4,r1
mov.b @(r0,r14),r2
add 0x34,r1
mov.b r2,@(r0,r4) 	
mov r14,r2
mov.w @(loc_8C0C1E8E,pc),r0 ; r0 set to 0x12c
add 0x34,r2
mov.b r5,@(r0,r4) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r5,@(r0,r4) 	
mov.w @(loc_8C0C1E96,pc),r0 ; r0 set to 0x12e
mov.w @(r0,r4),r3 ; r3 ??? bc r4 is ???	
add 0x04,r3
mov.w r3,@(r0,r4) 	
mov.l @(loc_8C0C1EAC,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.w @(loc_8C0C1E98,pc),r3 ; r3 set to 0x150
mov 0x17,r0 ; r0 set to 0x17
mov.w r0,@(0x1E,r4) 	
add r14,r3 ; r3 ??? bc r14 is ???	
mov.b @(0x01,r3),r0 	
mov 0x20,r3 ; r3 set to 0x20
cmp/ge r3,r0
bf loc_8C0C1E84
mov.w @(loc_8C0C1E98,pc),r0 ; r0 set to 0x150
mov 0x1C,r5 ; r5 set to 0x1c
lds.l @r15+,pr 	
add r14,r0 ; r0 ??? bc r14 is ???	
mov.l @(loc_8C0C1EB0,pc),r2 ; r2 set to 0x8C034C38
mov.b @(0x01,r0),r0 	
and 0x0F,r0 	
mov r0,r6
jmp @r2
mov.l @r15+,r14

loc_8C0C1E84:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0C1E8A:
#data 0x00D0
#data 0x0A02

loc_8C0C1E8E:
#data 0x012c

loc_8C0C1E90:
#data 0x00Dc

loc_8C0C1E92:
#data 0x00C0

loc_8C0C1E94:
#data 0x01A3

loc_8C0C1E96:
#data 0x012e

loc_8C0C1E98:
#data 0x0150
#data 0x0000

#align4
loc_8C0C1E9C:
#data bank04.loc_8c044F12

loc_8C0C1EA0:
#data loc_8c0c1DBc

loc_8C0C1EA4:
#data bank15.loc_8c15b6Dc

loc_8C0C1EA8:
#data bank12.loc_8c129560

loc_8C0C1EAC:
#data bank12.loc_8c1294C8

loc_8C0C1EB0:
#data bank03.loc_8c034C38

loc_8C0C1EB4:
#data 0x6E432FE6
#data 0x4F222FD6
#data 0x623053E6
#data 0x8D482228
#data 0x84D56D53
#data 0x8B442008
#data 0x03DCE024
#data 0xE0200E34
#data 0x222802Ec
#data 0x90508B1e
#data 0x222802Dc
#data 0xE0218B35
#data 0x222802Ec
#data 0x9049890a
#data 0x600C00Dc
#data 0x89058802
#data 0xE200E021
#data 0x85EE0E24
#data 0x81EE7001

#align4
loc_8C0C1F00:
#data 0x933E85Ee
#data 0x81EE303c
#data 0x2008600f
#data 0x65D38B1f
#data 0x64E3BF33
#data 0x0009A01b

#align4
loc_8C0C1F18:
#data 0x02DC9031
#data 0x8B052228
#data 0x70FF85Ef
#data 0x600F81Ef
#data 0x89142008

#align4
loc_8C0C1F2C:
#data 0xE31085Ef
#data 0x89033033
#data 0x01DD9026
#data 0x0E157105

#align4
loc_8C0C1F3C:
#data 0xE30685Ef
#data 0x89043033
#data 0xE201901f
#data 0x212A01Ec
#data 0x0E14

loc_8C0C1F4E:
#data 0x901b
#data 0x431503De
#data 0x8905

loc_8C0C1F56:
#data 0x4F26
#data 0x64E365D3
#data 0xA0066DF6
#data 0x6EF6

loc_8C0C1F62:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C1F6A:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0C1F6E:
mov 0x03,r0 ; r0 set to 0x03
mov.l @(loc_8C0C1F8C,pc),r3 ; r3 set to 0x8C0450C0
mov 0x00,r5 ; r5 set to 0x00
mov.b r5,@r4
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0C1F86,pc),r0 ; r0 set to 0x12c
jmp @r3
mov.b r5,@(r0,r4) 	
#data 0x01A0
#data 0x400001F9
#data 0x012e

loc_8C0C1F86:
#data 0x012c
#data 0x000002C8

#align4
loc_8C0C1F8C:
#data bank04.loc_8c0450C0
#data 0x7FF44F22
#data 0x1F41D351
#data 0xE5032F52
#data 0xE6001F62
#data 0x6463430b
#data 0x8D172008
#data 0xD34D6403
#data 0xE121E026
#data 0x314C1434
#data 0x52F1938a
#data 0x04351426
#data 0x840150F1
#data 0x60F28041
#data 0x2100C97f
#data 0x60F2E122
#data 0xC980314c
#data 0x53F22100
#data 0x0434907b
#data 0x4F267F0c
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0C1FE0:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0C20E4,pc),r1 ; r1 set to 0x8C15B6Ec
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

#align4
loc_8C0C1FF4:
#data 0x916B2FE6
#data 0x84444F22
#data 0xD33A314c
#data 0x92657001
#data 0x90648044
#data 0x325C430b
#data 0xE6019062
#data 0x71506143
#data 0x84520464
#data 0x84518042
#data 0xE0508041
#data 0xF437F356
#data 0xF356E054
#data 0x9054F437
#data 0x0434035c
#data 0x025C7001
#data 0xE0300424
#data 0x6253035c
#data 0x04347250
#data 0x430BD32a
#data 0xE024E00c
#data 0x025CD329
#data 0x0424E742
#data 0x04749042
#data 0x04747001
#data 0xE700700f
#data 0x70F20475
#data 0x70260474
#data 0x84420476
#data 0x600C6232
#data 0x4000D31f
#data 0x012D727c
#data 0x02157101
#data 0x61436253
#data 0x71347234
#data 0xE00C430b
#data 0x024CE021
#data 0x622CE7Ff
#data 0x8D012268
#data 0x65636573

#align4
loc_8C0C2094:
#data 0x024CE022
#data 0x89002228
#data 0x6573

loc_8C0C209E:
#data 0x6053
#data 0x814E0009
#data 0x814FE020
#data 0x6303854e
#data 0x0434E031
#data 0x0E4CE021
#data 0x034CE022
#data 0x8D012338
#data 0x7E047E03

#align4
loc_8C0C20C0:
#data 0xD30C4F26
#data 0xE51766E3
#data 0x6EF6432b
#data 0x01A10A03
#data 0x00C000Dc
#data 0x01A3012c
#data 0x0000019c

#align4
loc_8C0C20DC:
#data bank04.loc_8c044F12

loc_8C0C20E0:
#data loc_8c0c1FE0

loc_8C0C20E4:
#data bank15.loc_8c15b6Ec

loc_8C0C20E8:
#data bank12.loc_8c129560

loc_8C0C20EC:
#data bank12.loc_8c1294C8
#data 0x8C2896B0

#align4
loc_8C0C20F4:
#data bank03.loc_8c034e8c


loc_8C0C20F8:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r5,r3
mov 0x24,r0 ; r0 set to 0x24
mov r4,r14
mov.l r5,@r15
mov.b @(r0,r3),r2
mov.b r2,@(r0,r14) 	
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r14),r3
tst r3,r3
bf loc_8C0C2122
mov.l @(loc_8C0C21A0,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r14,r4
exts.b r0,r0 ; r0 ??	
cmp/pz r0
bf loc_8C0C215a
bra loc_8C0C2166
nop 	

loc_8C0C2122:
mov.l @(loc_8C0C21A0,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r14,r4
mov.w @(0x1E,r14),r0 	
add 0xFF,r0
mov.w r0,@(0x1E,r14) 	
exts.w r0,r0
cmp/pl r0
bt loc_8C0C2166
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r2
mov 0x01,r3 ; r3 set to 0x01
extu.b r2,r2
cmp/gt r3,r2
bt loc_8C0C215a
mov.b @(0x04,r14),r0 	
mov r14,r4
mov 0x17,r5 ; r5 set to 0x17
add 0x01,r0 ; r0 set to 0x22
mov.b r0,@(0x04,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r6
add 0x0B,r6
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0C21A4,pc),r2 ; r2 set to 0x8C034E8c
jmp @r2
mov.l @r15+,r14

loc_8C0C215A:
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
bra loc_8C0C2194
mov.l @r15+,r14

loc_8C0C2166:
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0C21A8,pc),r3 ; r3 set to 0x8C045748
jmp @r3
mov.l @r15+,r14

loc_8C0C2172:
#data 0x2FE6
#data 0xD30A4F22
#data 0x6E43430b
#data 0x4011600e
#data 0x84E48905
#data 0x7001E300
#data 0x900880E4
#data 0x0E34

loc_8C0C218E:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0C2194:
mov.l @(loc_8C0C21AC,pc),r3 ; r3 set to 0x8C0450C0
mov 0x00,r2 ; r2 set to 0x00
mov.w @(loc_8C0C219E,pc),r0 ; r0 set to 0x12c
jmp @r3
mov.b r2,@(r0,r4) 	

loc_8C0C219E:
#data 0x012c

#align4
loc_8C0C21A0:
#data bank03.loc_8c034dee

loc_8C0C21A4:
#data bank03.loc_8c034e8c

loc_8C0C21A8:
#data bank04.loc_8c045748

loc_8C0C21AC:
#data bank04.loc_8c0450C0
#data 0x7FF44F22
#data 0x60532F42
#data 0x80F80009
#data 0x00096063
#data 0xE503D347
#data 0xE60180F4
#data 0xE400430b
#data 0x8D182008
#data 0xE1206403
#data 0x314CD343
#data 0x14349580
#data 0x354C62F2
#data 0x1426937a
#data 0x84F8E221
#data 0x2100324c
#data 0x220084F4
#data 0x0435E026
#data 0x9070E200
#data 0x63F20424
#data 0x023D906f
#data 0x7F0C2521
#data 0x000B4F26
#data 0x4F226043
#data 0x2F427FF4
#data 0x00096053
#data 0x606380F8
#data 0xD3310009
#data 0x80F4E504
#data 0x430BE601
#data 0x2008E400
#data 0x64038D18
#data 0xD32DE120
#data 0x9553314c
#data 0x62F21434
#data 0x934D354c
#data 0xE2211426
#data 0x324C84F8
#data 0x84F42100
#data 0xE0262200
#data 0xE2000435
#data 0x04249043
#data 0x904263F2
#data 0x2521023d
#data 0x4F267F0c
#data 0x6043000b
;-------------------------------------------------------------------------------

#align4
loc_8C0C2264:
#data 0x7FF44F22
#data 0x60532F42
#data 0x80F80009
#data 0x00096063
#data 0xE503D31a
#data 0xE60180F4
#data 0xE400430b
#data 0x8D152008
#data 0xD3176403
#data 0x314CE120
#data 0x62F21434
#data 0x14365326
#data 0x931F62F2
#data 0xE2211425
#data 0x324C84F8
#data 0x84F42100
#data 0xE0262200
#data 0xE2000435
#data 0x04249015

#align4
loc_8C0C22B0:
#data 0x4F267F0c
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0C22B8:
mov.l r14,@-r15
mov r4,r14
mov.l @(0x18,r14),r4
mov 0x24,r0 ; r0 set to 0x24
mov.l @(loc_8C0C22E8,pc),r1 ; r1 set to 0x8C15B6Fc
mov.b @(r0,r4),r3
mov r14,r4
mov.w @(loc_8C0C22DC,pc),r5 ; r5 set to 0x88
mov.b r3,@(r0,r14) 	
mov.b @(0x04,r14),r0 	
add r14,r5 ; r5 ??? bc r14 is ???	
extu.b r0,r0 ; r0 set to 0x24
shll2 r0 ; r0 set to 0x90
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x012C0B00

loc_8C0C22DC:
#data 0x0088
#data 0x0158

#align4
loc_8C0C22E0:
#data bank04.loc_8c044F12

loc_8C0C22E4:
#data loc_8c0c22B8

loc_8C0C22E8:
#data bank15.loc_8c15b6Fc

loc_8C0C22EC:
#data 0x5546E031
#data 0x0434E3Fe
#data 0x814EE028
#data 0xF408C74a
#data 0xF308C74a
#data 0xF437E05c
#data 0xF308C749
#data 0xF437E068
#data 0xF308C748
#data 0xF437E060
#data 0xF308C747
#data 0xF437E06c
#data 0x035D907e
#data 0x8B092338
#data 0xF346E05c
#data 0xF437F34d
#data 0xF346E068
#data 0xF437F34d
#data 0xF408C740

#align4
loc_8C0C2338:
#data 0xF356E034
#data 0xF437F340
#data 0xF308C73e
#data 0xF256E038
#data 0xF230E500
#data 0x9066F427
#data 0x60530454
#data 0xD33A0009
#data 0x8045E608
#data 0xE513432b


loc_8C0C2360:
mov.w @(loc_8C0C241E,pc),r0 ; r0 set to 0x12c
mov 0x00,r6 ; r6 set to 0x00
mov.l @(0x14,r4),r5
mov.b r6,@(r0,r4) 	
mov r6,r0 ; r0 set to 0x00
nop 	
mov.b r0,@(0x05,r4) 	
mov 0xFE,r2 ; r2 set to 0xFFFFFFFe
mov.w r0,@(0x1C,r4) 	
mov 0x1B,r6 ; r6 set to 0x1b
mov.w @(loc_8C0C241C,pc),r0 ; r0 set to 0x130
mov.w @(r0,r5),r3
mov.w r3,@(r0,r4) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r2,@(r0,r4) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr3
mov.l @(loc_8C0C2440,pc),r3 ; r3 set to 0x8C034E8c
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
fmov.s fr3,@(r0,r4) 	
jmp @r3
mov 0x17,r5

loc_8C0C2390:
mov.l r14,@-r15
fmov.s fr15,@-r15
fmov.s fr14,@-r15
fmov.s fr12,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l @(0x18,r14),r3
mov 0x31,r0 ; r0 set to 0x31
mov.l r3,@r15
mov 0xFE,r2 ; r2 set to 0xFFFFFFFe
mov.l @(loc_8C0C2444,pc),r3 ; r3 set to 0x8C11E730
jsr @r3
mov.b r2,@(r0,r14) 	
mov 0x0F,r5 ; r5 set to 0x0f
mov.l @(loc_8C0C2450,pc),r3 ; r3 set to 0x8C15B70c
and r0,r5 ; r5 ??	
exts.w r5,r4
shll2 r4
shll r4
add r3,r4
mov.w @r4,r2 ; r2 ??? bc r4 is ???	
mova @(loc_8C0C2448,pc),r0  ; r0 set to 0x8C0C2448
fmov.s @r0,fr4
mova @(loc_8C0C244C,pc),r0  ; r0 set to 0x8C0C244c
lds r2,fpul 	
fmov.s @r0,fr15
mov 0x5C,r0 ; r0 set to 0x5c
float fpul,fr3
fmul fr4,fr3 ; r3 ??? bc r4 is ???	
fdiv fr15,fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(0x02,r4),r0 	
mov r0,r2 ; r2 set to 0x5c
lds r2,fpul 	
mov 0x68,r0 ; r0 set to 0x68
float fpul,fr3
fmul fr4,fr3
fdiv fr15,fr3
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0C2454,pc),r0  ; r0 set to 0x8C0C2454
fmov.s @r0,fr14
mov.w @(0x04,r4),r0 	
mov r0,r2 ; r2 set to 0x8C0C2454
lds r2,fpul 	
float fpul,fr3
fmul fr14,fr3
mov 0x60,r0 ; r0 set to 0x60
fdiv fr15,fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(0x06,r4),r0 	
mov.l @(loc_8C0C2458,pc),r4 ; r4 set to 0x8C26A518
mov r0,r2 ; r2 set to 0x60
lds r2,fpul 	
mov 0x6C,r0 ; r0 set to 0x6c
float fpul,fr3
fmul fr14,fr3
fdiv fr15,fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0C241C,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r2 ; r2 ??? bc r14 is ???	
tst r2,r2
bt loc_8C0C2460
mova @(loc_8C0C245C,pc),r0  ; r0 set to 0x8C0C245c
fmov.s @r0,fr3
mov.w @(loc_8C0C2420,pc),r0 ; r0 set to 0x88
fmov.s @(r0,r4),fr2
fadd fr3,fr2
bra loc_8C0C247c
mov 0x34,r0

loc_8C0C241C:
#data 0x0130

loc_8C0C241E:
#data 0x012c

loc_8C0C2420:
#data 0x0088
#data 0x0000
#data 0x44480000
#data 0xC0555555
#data 0xBE555555
#data 0xC0892492
#data 0x3E092492
#data 0xC4480000
#data 0x43F00000

#align4
loc_8C0C2440:
#data bank03.loc_8c034e8c

loc_8C0C2444:
#data bank11.loc_8c11e730

loc_8C0C2448:
#data 0x3FD55555

#align4
loc_8C0C244C:
#data 0x43800000

#align4
loc_8C0C2450:
#data bank15.loc_8c15b70c

loc_8C0C2454:
#data 0x40092492

#align4
loc_8C0C2458:
#data 0x8C26A518

#align4
loc_8C0C245C:
#data 0xC1D55555


loc_8C0C2460:
mova @(loc_8C0C25B0,pc),r0  ; r0 init to 0x8C0C25B0
fmov.s @r0,fr3
mov.w @(loc_8C0C25A6,pc),r0 ; r0 set to 0x8c
fmov.s @(r0,r4),fr2
mov 0x34,r0 ; r0 set to 0x34
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r14),fr2
fneg fr2
fmov.s fr2,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s @(r0,r14),fr2
fneg fr2

loc_8C0C247C:
fmov.s fr2,@(r0,r14) 	
mov.l @(loc_8C0C25B4,pc),r2 ; r2 set to 0x8C11E730, r2 set to 0x8C11E730
mov.w @(loc_8C0C25A8,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
mov.l @r15,r3
jsr @r2
fmov.s @(r0,r3),fr12
and 0x7F,r0 	
mov r14,r4
shll8 r0 ; r0 set to 0x41C00, r0 set to 0x41C00
lds r0,fpul 	
mova @(loc_8C0C25B8,pc),r0  ; r0 set to 0x8C0C25B8, r0 set to 0x8C0C25B8
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
mov 0x1D,r6 ; r6 set to 0x1D, r6 set to 0x1d
float fpul,fr3
fmul fr14,fr3
fdiv fr15,fr3
fsub fr3,fr12
fmov.s @r0,fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fadd fr3,fr12
fmov.s fr12,@(r0,r14) 	
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0C25BC,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
fmov.s @r15+,fr12
fmov.s @r15+,fr14
fmov.s @r15+,fr15
jmp @r3
mov.l @r15+,r14

loc_8C0C24B6:
mov.w @(loc_8C0C25AA,pc),r0 ; r0 set to 0x12c
mov 0x00,r5 ; r5 set to 0x00
mov.b r5,@(r0,r4) 	
mov r5,r0 ; r0 set to 0x00
nop 	
mov.l @(loc_8C0C25BC,pc),r3 ; r3 set to 0x8C034E8c
mov 0x1E,r6 ; r6 set to 0x1e
mov.b r0,@(0x05,r4) 	
jmp @r3
mov 0x17,r5

loc_8C0C24CA:
#data 0x2FE6
#data 0x906C6E43
#data 0x54E6E500
#data 0x60530E54
#data 0x80E50009
#data 0xF408C738
#data 0x03ECE021
#data 0xD537C738
#data 0xF208633c
#data 0x42086233
#data 0x332C4300
#data 0x6331335c
#data 0x435AE05c
#data 0xF322F32d
#data 0xFE37F343
#data 0x03ECE021
#data 0x6233633c
#data 0x43004208
#data 0x335C332c
#data 0x63038531
#data 0xF32D435a
#data 0xF108C72b
#data 0xF312E060
#data 0xFE37F343
#data 0x03ECE021
#data 0x6233633c
#data 0x43004208
#data 0x353C332c
#data 0x63038552
#data 0x0E349036
#data 0x024D70D8
#data 0x8B032228
#data 0xF3E6E05c
#data 0xFE37F34d

#align4
loc_8C0C2550:
#data 0xD31AE05c
#data 0xE034F3E6
#data 0xE517F246
#data 0xFE27F230
#data 0xF3E6E060
#data 0xF246E038
#data 0xF23064E3
#data 0x901DFE27
#data 0x432B06Ec
#data 0x6EF6


loc_8C0C2576:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov 0x00,r13 ; r13 set to 0x00
sts.l pr,@-r15
mov.l @(0x18,r14),r4
mov r13,r0 ; r0 set to 0x00
nop 	
mov.b r0,@(0x05,r14) 	
mov.w @(loc_8C0C25AA,pc),r0 ; r0 set to 0x12c
mov.b r13,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3
tst r3,r3
bf loc_8C0C2614
mov.w @(loc_8C0C25AE,pc),r0 ; r0 set to 0x130
mov.w r13,@(r0,r14) 	
mov.b @(0x02,r4),r0 	
tst r0,r0
bf loc_8C0C25D0
mov.w @(loc_8C0C25AC,pc),r0 ; r0 set to 0x158
mov 0x23,r3 ; r3 set to 0x23
bra loc_8C0C25D6
mov.b r3,@(r0,r14) 	

loc_8C0C25A6:
#data 0x008c

loc_8C0C25A8:
#data 0x041c

loc_8C0C25AA:
#data 0x012c

loc_8C0C25AC:
#data 0x0158

loc_8C0C25AE:
#data 0x0130

#align4
loc_8C0C25B0:
#data 0x41D55555

#align4
loc_8C0C25B4:
#data bank11.loc_8c11e730

loc_8C0C25B8:
#data 0x432B6DB6

#align4
loc_8C0C25BC:
#data bank03.loc_8c034e8c
#data 0x43800000

#align4
loc_8C0C25C4:
#data bank15.loc_8c15b78c
#data 0x3FD55555
#data 0x40092492


loc_8C0C25D0:
mov.w @(loc_8C0C26FC,pc),r0 ; r0 set to 0x158
mov 0x24,r1 ; r1 set to 0x24
mov.b r1,@(r0,r14) 	

loc_8C0C25D6:
mov.w @(loc_8C0C26FC,pc),r0 ; r0 set to 0x158, r0 set to 0x158
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
mov.l @(loc_8C0C2704,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
mov.b @(r0,r14),r6
jsr @r3
mov r14,r4
mov.l @(loc_8C0C2708,pc),r2 ; r2 set to 0x8C044F12, r2 set to 0x8C044F12
mov 0x03,r5 ; r5 set to 0x03, r5 set to 0x03
mov 0x02,r6 ; r6 set to 0x02, r6 set to 0x02
jsr @r2
mov r14,r4
tst r0,r0
bt/s loc_8C0C263a
mov r0,r4 ; r4 set to 0x158, r4 set to 0x158
mov.l @(loc_8C0C270C,pc),r2 ; r2 set to 0x8C0C22B8, r2 set to 0x8C0C22B8
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
mov.l r2,@(0x10,r4)  ; r4 ??, r4 ??	
mov 0x05,r2 ; r2 set to 0x05, r2 set to 0x05
mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
mov.l r3,@(0x18,r4) 	
mov 0x01,r3 ; r3 set to 0x01, r3 set to 0x01
mov.l r14,@(0x14,r4) 	
mov.b r2,@(r0,r4) 	
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
mov.w @(loc_8C0C26FE,pc),r2 ; r2 set to 0xB00, r2 set to 0xB00
mov.b r3,@(r0,r4) 	
mov 0x26,r0 ; r0 set to 0x26, r0 set to 0x26
mov.w r2,@(r0,r4) 	
mov.w @(loc_8C0C2700,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
bra loc_8C0C263a
mov.b r13,@(r0,r4) 	

loc_8C0C2614:
mov.b @(0x02,r4),r0 	
tst r0,r0
bf loc_8C0C2622
mov.w @(loc_8C0C26FC,pc),r0 ; r0 set to 0x158
mov 0x25,r3 ; r3 set to 0x25
bra loc_8C0C2628
mov.b r3,@(r0,r14) 	

loc_8C0C2622:
mov.w @(loc_8C0C26FC,pc),r0 ; r0 set to 0x158
mov 0x26,r1 ; r1 set to 0x26
mov.b r1,@(r0,r14) 	

loc_8C0C2628:
lds.l @r15+,pr 	
mov.w @(loc_8C0C26FC,pc),r0 ; r0 set to 0x158, r0 set to 0x158
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
mov.l @(loc_8C0C2704,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
mov r14,r4
mov.l @r15+,r13
mov.b @(r0,r14),r6
jmp @r3
mov.l @r15+,r14

loc_8C0C263A:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0C2642:
mov 0x00,r0 ; r0 set to 0x00
mov.l @(loc_8C0C2704,pc),r3 ; r3 set to 0x8C034E8c
mov.b r0,@(0x05,r4) 	
mova @(loc_8C0C2710,pc),r0  ; r0 set to 0x8C0C2710
fmov.s @r0,fr3 ; r3 ??	
mov 0x5C,r0 ; r0 set to 0x5c
mov 0x28,r6 ; r6 set to 0x28
fmov.s fr3,@(r0,r4) 	
mova @(loc_8C0C2714,pc),r0  ; r0 set to 0x8C0C2714
fmov.s @r0,fr3
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr3,@(r0,r4) 	
jmp @r3
mov 0x17,r5

loc_8C0C265E:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0C2662:
#data 0x5546
#data 0x6063E600
#data 0x80450009
#data 0x04649048
#data 0xF308C729
#data 0xF437E05c
#data 0xF308C728
#data 0xF437E060
#data 0x035D903f
#data 0x8B032338
#data 0xF346E05c
#data 0xF437F34d

#align4
loc_8C0C2690:
#data 0xD31CE05c
#data 0xE034F346
#data 0xE627F256
#data 0xF427F230
#data 0xF346E060
#data 0xF256E038
#data 0xF427F230
#data 0xE517432b


loc_8C0C26B0:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov 0x00,r4 ; r4 set to 0x00
sts.l pr,@-r15
mov.l @(0x18,r14),r13
mov r4,r0 ; r0 set to 0x00
nop 	
mov.b r0,@(0x05,r14) 	
mov.w @(loc_8C0C2700,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3
tst r3,r3
bf loc_8C0C26D6
mov.w @(loc_8C0C26FC,pc),r0 ; r0 set to 0x158
mov 0x29,r3 ; r3 set to 0x29
bra loc_8C0C26Dc
mov.b r3,@(r0,r14) 	

loc_8C0C26D6:
mov.w @(loc_8C0C26FC,pc),r0 ; r0 set to 0x158
mov 0x2A,r1 ; r1 set to 0x2a
mov.b r1,@(r0,r14) 	

loc_8C0C26DC:
mov.w @(loc_8C0C26FC,pc),r0 ; r0 set to 0x158, r0 set to 0x158
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
mov.l @(loc_8C0C2704,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
mov.b @(r0,r14),r6
jsr @r3
mov r14,r4
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0C26FC:
#data 0x0158

loc_8C0C26FE:
#data 0x0B00

loc_8C0C2700:
#data 0x012c
#data 0x0130

#align4
loc_8C0C2704:
#data bank03.loc_8c034e8c

loc_8C0C2708:
#data bank04.loc_8c044F12

loc_8C0C270C:
#data loc_8c0c22B8

loc_8C0C2710:
#data 0x42695555

#align4
loc_8C0C2714:
#data 0x438E8000
#data 0x430A5555
#data 0x43160000

#align4
loc_8C0C2720:
#data 0x4F222FE6
#data 0x6E437FFc
#data 0x2F52E034
#data 0xF34654E5
#data 0xE038FE37
#data 0xFE37F346
#data 0x04ECE021
#data 0x2338634c
#data 0xE3078903
#data 0x3233624c
#data 0x8B08

loc_8C0C274A:
#data 0x9096
#data 0x0E14E100
#data 0x80E4E002
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0C275C:
#data 0xE51BD348
#data 0x430B06Ec
#data 0x65F264E3
#data 0x7F0464E3
#data 0xA4024F26
#data 0x7F046EF6
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C277A:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0C287C,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0C2884,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0C287C,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r14),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0C287A,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0C287E,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0C2888,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r14),r1
mov 0x24,r0 ; r0 set to 0x24
mov r14,r4
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r2
mov.l @(loc_8C0C288C,pc),r0 ; r0 set to 0x8C15B7A0
extu.b r2,r2
lds.l @r15+,pr 	
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
mov.l @r15+,r14

loc_8C0C27FA:
#data 0x854e
#data 0x814E70Ff
#data 0x2008600f
#data 0x84458B05
#data 0x7001E301
#data 0x90348045
#data 0x0434

loc_8C0C2812:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0C2816:
#data 0x2FE6
#data 0xD31D4F22
#data 0x6E43430b
#data 0x4011600e
#data 0xE06C890a
#data 0xFE37F38d
#data 0x84E5E513
#data 0xD318E609
#data 0x80E57001
#data 0x64E3430b

#align4
loc_8C0C283C:
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
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C287A:
#data 0x012c

loc_8C0C287C:
#data 0x00Dc

loc_8C0C287E:
#data 0x01A3

#align4
loc_8C0C2880:
#data bank03.loc_8c034C38

loc_8C0C2884:
#data bank12.loc_8c129560

loc_8C0C2888:
#data bank12.loc_8c1294C8

loc_8C0C288C:
#data bank15.loc_8c15b7A0

loc_8C0C2890:
#data bank03.loc_8c034dee

loc_8C0C2894:
#data bank03.loc_8c034e8c

loc_8C0C2898:
#data 0x4F222FE6
#data 0x430BD34d
#data 0x600E6E43
#data 0x89154011
#data 0x700184E5
#data 0xC74A80E5
#data 0xE068F308
#data 0x908BFE37
#data 0x233803Ed
#data 0xE0688B03
#data 0xF34DF3E6
#data 0xFE37

loc_8C0C28C6:
#data 0xD345
#data 0xE513E030
#data 0xE60A81Ee
#data 0x64E3430b

#align4
loc_8C0C28D4:
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
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C2912:
#data 0x2FE6
#data 0x4F226E43
#data 0x54E685Ee
#data 0x81EE70Ff
#data 0x2008600f
#data 0x84E58B0f
#data 0xD32CE513
#data 0x7001E60b
#data 0xE03480E5
#data 0xFE37F346
#data 0xF346E038
#data 0x9048FE37
#data 0x430B81Ee
#data 0x64E3

loc_8C0C2946:
#data 0xD223
#data 0x64E3420b
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
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C298A:
#data 0x854e
#data 0x814E70Ff
#data 0x2008600f
#data 0x84448B02
#data 0x80447001

#align4
loc_8C0C299C:
#data 0x432BD30d
#data 0x0009


loc_8C0C29A2:
mov r4,r3
mov.l @(loc_8C0C29E0,pc),r1 ; r1 set to 0x8C15B7Cc
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0C29B4:
mov.w @(loc_8C0C29D0,pc),r0 ; r0 set to 0x130
mov 0xFE,r2 ; r2 set to 0xFFFFFFFe
mov.l @(0x14,r4),r5
mov.w @(r0,r5),r3
mov.w r3,@(r0,r4) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r2,@(r0,r4) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r5),fr3
rts 	
fmov.s fr3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0C29D0:
#data 0x0130
#data 0x0300

#align4
loc_8C0C29D4:
#data bank03.loc_8c034dee
#data 0x3E855555

#align4
loc_8C0C29DC:
#data bank03.loc_8c034e8c

loc_8C0C29E0:
#data bank15.loc_8c15b7Cc


loc_8C0C29E4:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.w @(loc_8C0C2AE0,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov r4,r14
mov.l r5,@r15
mov.b r3,@(r0,r14) 	
mov.w @(0x1C,r14),r0 	
add 0xFF,r0 ; r0 set to 0x12b
mov.w r0,@(0x1C,r14) 	
add 0x01,r0 ; r0 set to 0x12c
exts.w r0,r0 ; r0 ??	
tst r0,r0
bf loc_8C0C2A28
mov.b @(0x05,r14),r0 	
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov.w @(loc_8C0C2AE2,pc),r0 ; r0 set to 0xB4
mov.w r0,@(0x1C,r14) 	
mov.l @r15,r5
bsr loc_8C0C29B4
mov r14,r4
mov.l @(loc_8C0C2AE8,pc),r2 ; r2 set to 0x8C034E8c
mov 0x17,r5 ; r5 set to 0x17
mov 0x1B,r6 ; r6 set to 0x1b
jsr @r2
mov r14,r4
mov.l @r15,r5 ; r5 ??? bc r15 is ???	
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
bra loc_8C0C2FD6
mov.l @r15+,r14

loc_8C0C2A28:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0C2A30:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l r5,@r15
mov r4,r14
bsr loc_8C0C29B4
mov r14,r4
mov.l @(loc_8C0C2AEC,pc),r2 ; r2 set to 0x8C034DEe
jsr @r2
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt loc_8C0C2A5e
mov 0x00,r4 ; r4 set to 0x00
mov r4,r0 ; r0 set to 0x00
nop 	
mov.b r0,@(0x05,r14) 	
mov.w @(loc_8C0C2AE0,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0C2A5E:
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
bra loc_8C0C2FD6
mov.l @r15+,r14
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C2A72:
#data 0x2FE6
#data 0x54E56E43
#data 0x600C8444
#data 0x8B088801
#data 0x004CE020
#data 0x8801600c
#data 0xE0218B03
#data 0x2228024c
#data 0x8904

loc_8C0C2A92:
#data 0x84E4
#data 0x80E47001
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0C2A9C:
#data 0x64E384E5
#data 0x600CD113
#data 0x031E4008
#data 0x6EF6432b
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0C2AB0:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0C2AF8,pc),r3 ; r3 set to 0x8C26A5A8
mova @(loc_8C0C2AF4,pc),r0  ; r0 init to 0x8C0C2AF4
mov r4,r14
mov.l r5,@r15
fmov.s @r0,fr3 ; r3 ??	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @r3,fr2
fmov.s @(r0,r14),fr1
fadd fr3,fr2
mov.l @(0x18,r14),r4
mov.w @(loc_8C0C2AE4,pc),r5 ; r5 set to 0x2A4
fcmp/gt fr2,fr1
bf/s loc_8C0C2AFc
add r4,r5 ; r5 ??? bc r4 is ???	
mov.b @(0x04,r14),r0 	
add 0x01,r0 ; r0 set to 0x39
mov.b r0,@(0x04,r14) 	
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0C2AE0:
#data 0x012c

loc_8C0C2AE2:
#data 0x00B4

loc_8C0C2AE4:
#data 0x02A4
#data 0x0000

#align4
loc_8C0C2AE8:
#data bank03.loc_8c034e8c

loc_8C0C2AEC:
#data bank03.loc_8c034dee

loc_8C0C2AF0:
#data bank15.loc_8c15b7E0

loc_8C0C2AF4:
#data 0x42CDB6Db

#align4
loc_8C0C2AF8:
#data 0x8C26A5A8

#align4
loc_8C0C2AFC:
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
#data 0xF4E6E034
#data 0xF431F346
#data 0xF345F38d
#data 0xF44D8B00

#align4
loc_8C0C2B44:
#data 0xF308C73c
#data 0x8D03F345
#data 0xE01164E3
#data 0x0524E201

#align4
loc_8C0C2B54:
#data 0x430BD339
#data 0x65F20009
#data 0x7F0464E3
#data 0xA2384F26
#data 0x7F046EF6
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C2B6E:
#data 0x2FE6
#data 0x4F226E43
#data 0x844454E5
#data 0x8801600c
#data 0x55E68F27
#data 0x03ECE021
#data 0x89222338
#data 0x034CE020
#data 0x8B1E2338
#data 0x004CE021
#data 0x8802600c
#data 0x904B8B19
#data 0x2338035c
#data 0xE0248915
#data 0x0E24024c
#data 0x034CE031
#data 0x0E3473Fe
#data 0xF346E034
#data 0xFE37E301
#data 0xF346E038
#data 0x903AFE37
#data 0xD31E0E34
#data 0x64E3430b
#data 0x4011600e
#data 0x8905

loc_8C0C2BCE:
#data 0x9032
#data 0x0E24E200
#data 0x700184E4
#data 0x80E4

loc_8C0C2BDA:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0C2BE0:
mov.w @(loc_8C0C2C36,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.l @(0x18,r4),r6
mov.b r3,@(r0,r4) 	
add 0x2C,r0 ; r0 set to 0x158
mov.w @r5,r3 ; r3 ??? bc r5 is ???	
mov.w @(r0,r6),r2
cmp/eq r3,r2
bt loc_8C0C2BFa
mov.b @(0x04,r4),r0 	
add 0x01,r0 ; r0 set to 0x159
rts 	
mov.b r0,@(0x04,r4) 	
;-------------------------------------------------------------------------------

loc_8C0C2BFA:
mov.w @(loc_8C0C2C34,pc),r0 ; r0 set to 0x141
mov.b @(r0,r6),r3
tst r3,r3
bt loc_8C0C2C30
mov.w @(loc_8C0C2C36,pc),r0 ; r0 set to 0x12c
mov 0x01,r3 ; r3 set to 0x01
mov.b r3,@(r0,r4) 	
add 0x04,r0 ; r0 set to 0x130
mov.w @(r0,r6),r2
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov.w r2,@(r0,r4) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r4) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r6),fr2
mov.l @(loc_8C0C2C3C,pc),r3 ; r3 set to 0x8C034DEe
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r6),fr2
fadd fr3,fr2
jmp @r3
fmov.s fr2,@(r0,r4) 	

loc_8C0C2C30:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0C2C34:
#data 0x0141

loc_8C0C2C36:
#data 0x012c
#data 0x42A00000

#align4
loc_8C0C2C3C:
#data bank03.loc_8c034dee

loc_8C0C2C40:
#data 0x5545E031
#data 0x0434E3Fe
#data 0xF356E034
#data 0xC72EF437
#data 0xE038F308
#data 0xF230F256
#data 0xF427000b
;-------------------------------------------------------------------------------

#align4
loc_8C0C2C5C:
#data 0x4F222FE6
#data 0x904D7FFc
#data 0xE3006E43
#data 0x54E52F52
#data 0x84440E34
#data 0x8801600c
#data 0xE0218B12
#data 0x222802Ec
#data 0xE0208B1a
#data 0x600C004c
#data 0x8B098801
#data 0x024CE021
#data 0x8B052228
#data 0x92379037
#data 0x633D034d
#data 0x89063320

#align4
loc_8C0C2C9C:
#data 0x700184E4
#data 0x7F0480E4
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C2CAA:
#data 0x65F2
#data 0x64E3BFC8
#data 0x0009A00c

#align4
loc_8C0C2CB4:
#data 0xE3FFE031
#data 0xE0340E34
#data 0xFE37F346
#data 0xF308C712
#data 0xF246E038
#data 0xFE27F230

#align4
loc_8C0C2CCC:
#data 0x430BD310
#data 0x65F264E3
#data 0x7F0464E3
#data 0xA17C4F26
#data 0x7F046EF6
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C2CE6:
mov.w @(loc_8C0C2D00,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.l @(0x18,r4),r6
mov.b r3,@(r0,r4) 	
add 0x2C,r0 ; r0 set to 0x158
mov.w @r5,r3 ; r3 ??? bc r5 is ???	
mov.w @(r0,r6),r2
cmp/eq r3,r2
bt loc_8C0C2D14
mov.b @(0x04,r4),r0 	
add 0x01,r0 ; r0 set to 0x159
rts 	
mov.b r0,@(0x04,r4) 	
;-------------------------------------------------------------------------------

loc_8C0C2D00:
#data 0x012c
#data 0x0158
#data 0x00001718
#data 0x424DB6Db
#data 0x41AB6DB6

#align4
loc_8C0C2D10:
#data bank03.loc_8c034dee

loc_8C0C2D14:
#data 0x006C9098
#data 0x6503C9F0
#data 0x2338635e
#data 0x675E893e
#data 0x47119091
#data 0x8D01E201
#data 0x770F0424

#align4
loc_8C0C2D30:
#data 0x473CE3Fc
#data 0x77FFD348
#data 0x4508657e
#data 0x353C4500
#data 0xC7446252
#data 0xC745F408
#data 0xF208425a
#data 0xF32DE05c
#data 0xF343F322
#data 0xC742F437
#data 0xF1085251
#data 0x425AE060
#data 0xF312F32d
#data 0xF437F343
#data 0x026D9070
#data 0x8B032228
#data 0xF346E05c
#data 0xF437F34d

#align4
loc_8C0C2D78:
#data 0xF346E05c
#data 0xF266E034
#data 0xF230E2Fe
#data 0xE060F427
#data 0xE038F346
#data 0xF230F266
#data 0x905BF427
#data 0x0435036d
#data 0xD332E031
#data 0x0424432b

#align4
loc_8C0C2DA0:
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0C2DA4:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0C2DA8:
mov.w @(loc_8C0C2E4A,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.l @(0x18,r14),r4
mov.b r3,@(r0,r14) 	
add 0x2C,r0 ; r0 set to 0x158
mov.w @r5,r3 ; r3 ??? bc r5 is ???	
mov.w @(r0,r4),r2
cmp/eq r3,r2
bt loc_8C0C2DCc
mov.b @(0x04,r14),r0 	
add 0x01,r0 ; r0 set to 0x159
mov.b r0,@(0x04,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0C2DCC:
#data 0x034C903c
#data 0x891B2338
#data 0xE2FE903a
#data 0x0E35034d
#data 0x0E24E031
#data 0xF3E6E05c
#data 0xF246E034
#data 0xF230D31e
#data 0xE060FE27
#data 0xE038F3E6
#data 0xF230F246
#data 0x430BFE27
#data 0x902664E3
#data 0x222802Ec
#data 0x90208B02
#data 0x0E34E301

#align4
loc_8C0C2E0C:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C2E12:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.w @(loc_8C0C2E4A,pc),r0 ; r0 set to 0x12c
mov.w @(loc_8C0C2E50,pc),r3 ; r3 set to 0x2A4
mov 0x00,r2 ; r2 set to 0x00
mov.l @(0x18,r14),r4
add r4,r3 ; r3 ??? bc r4 is ???	
mov.l r3,@r15
mov.b r2,@(r0,r14) 	
add 0x2C,r0 ; r0 set to 0x158
mov.w @r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(r0,r4),r3
cmp/eq r2,r3
bt loc_8C0C2E84
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r2
tst r2,r2
bt loc_8C0C2E68
mov.b @(0x04,r14),r0 	
add 0x01,r0 ; r0 set to 0x22
mov.b r0,@(0x04,r14) 	
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x0141

loc_8C0C2E4A:
#data 0x012c
#data 0x01400130

loc_8C0C2E50:
#data 0x02A4
#data 0x0000
#data 0x47800000

#align4
loc_8C0C2E58:
#data bank15.loc_8c15b7E8
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0C2E64:
#data bank03.loc_8c034dee


loc_8C0C2E68:
mov.b @(0x05,r14),r0 	
mov 0x01,r3 ; r3 set to 0x01
mov 0x17,r5 ; r5 set to 0x17
mov r14,r4
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov 0x2B,r6 ; r6 set to 0x2b
mov.w @(loc_8C0C2F90,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0C2F98,pc),r3 ; r3 set to 0x8C034E8c
jmp @r3
mov.l @r15+,r14

#align4
loc_8C0C2E84:
#data 0x024C9085
#data 0x89292228
#data 0xE2FE9082
#data 0x0E35034d
#data 0x0E24E031
#data 0x03ECE021
#data 0x89032338
#data 0x03ECE031
#data 0x0E3473Fd

#align4
loc_8C0C2EA8:
#data 0xD23CE034
#data 0xFE37F346
#data 0xF346E038
#data 0x6320FE37
#data 0x8B022338
#data 0x430BD338
#data 0x64E3

loc_8C0C2EC2:
#data 0x9068
#data 0x222802Ec
#data 0xE0218B0a
#data 0x233803Ec
#data 0x63F28903
#data 0x2008843e
#data 0x8B02

loc_8C0C2EDA:
#data 0x9059
#data 0x0E24E201

#align4
loc_8C0C2EE0:
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0C2EE8:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0C2FA0,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov.l @(0x18,r14),r13
exts.b r0,r0
cmp/pz r0
bt loc_8C0C2F0a
mov.w @(loc_8C0C2F90,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@(r0,r14) 	
mov.b @(0x04,r14),r0 	
add 0x01,r0 ; r0 set to 0x12d
bra loc_8C0C2F22
mov.b r0,@(0x04,r14) 	

loc_8C0C2F0A:
mov.w @(loc_8C0C2F94,pc),r0 ; r0 set to 0x130
mov 0xFE,r2 ; r2 set to 0xFFFFFFFe
mov.w @(r0,r13),r3
mov.w r3,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r2,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	

loc_8C0C2F22:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0C2F2A:
mov r4,r3
mov.l @(loc_8C0C2FA4,pc),r1 ; r1 set to 0x8C15B800
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

#align4
loc_8C0C2F3C:
#data 0x6E432FE6
#data 0x4F22E024
#data 0x034C54E5
#data 0xE0310E34
#data 0xE301024c
#data 0x0E2472Fc
#data 0x0E34901c
#data 0x430BD313
#data 0x600E64E3
#data 0x89054011
#data 0xE3009014
#data 0x84E40E34
#data 0x80E47001

#align4
loc_8C0C2F70:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C2F76:
mov.l r14,@-r15
mov r4,r14
mov.l @(0x18,r14),r4
mov.b @(0x01,r4),r0 	
mov r0,r3
mov.b @(0x01,r14),r0 	
cmp/eq r0,r3
bt loc_8C0C2FAc
mov.b @(0x04,r14),r0 	
add 0x01,r0
mov.b r0,@(0x04,r14) 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0C2F90:
#data 0x012c
#data 0x0141

loc_8C0C2F94:
#data 0x0130
#data 0x0140

#align4
loc_8C0C2F98:
#data bank03.loc_8c034e8c
#data 0x8C2895F6

#align4
loc_8C0C2FA0:
#data bank03.loc_8c034dee

loc_8C0C2FA4:
#data bank15.loc_8c15b800

loc_8C0C2FA8:
#data bank03.loc_8c034D8c


loc_8C0C2FAC:
mov 0x20,r0 ; r0 set to 0x20
mov r14,r4
mov.b @(r0,r14),r3
mov.l @(loc_8C0C300C,pc),r0 ; r0 set to 0x8C15B808
extu.b r3,r3
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14
#data 0x000b
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C2FC2:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0C3004,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0C2FD0:
mov.l @(loc_8C0C3010,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0C2FD6:
#data 0x9016
#data 0xF356D50e
#data 0xF246E034
#data 0x8905F325
#data 0xF3569010
#data 0xF246E034
#data 0x8B03F235

#align4
loc_8C0C2FF0:
#data 0xE2009008
#data 0x0424A003

#align4
loc_8C0C2FF8:
#data 0xE1019004
#data 0x0414

loc_8C0C2FFE:
#data 0x9001
#data 0x004C000b
;-------------------------------------------------------------------------------

loc_8C0C3004:
#data 0x012c
#data 0x0088
#data 0x0000008c

#align4
loc_8C0C300C:
#data bank15.loc_8c15b808

loc_8C0C3010:
#data bank04.loc_8c0450C0
#data 0x8C26A518
#data 0x7FF44F22
#data 0x60532F42
#data 0x80F80009
#data 0x00096063
#data 0xE503D32b
#data 0xE60180F4
#data 0xE400430b
#data 0x8D152008
#data 0xE1206403
#data 0x314CD327
#data 0x62F21434
#data 0x14269346
#data 0x60F2E221
#data 0x8401324c
#data 0x84F88041
#data 0x84F42100
#data 0xE0262200
#data 0xE2000435
#data 0x04249039
#data 0x4F267F0c
#data 0x6043000b
;-------------------------------------------------------------------------------

#align4
loc_8C0C306C:
#data 0x4F222FE6
#data 0x6E437FF8
#data 0x00096053
#data 0xE503D317
#data 0x2F6080F4
#data 0x430BE602
#data 0x200864E3
#data 0x64038D14
#data 0xE120D313
#data 0x1434314c
#data 0x142652E6
#data 0x14E5921c
#data 0x804184E1
#data 0x210084F4
#data 0x63F0E021
#data 0xE0260434
#data 0xE3000425
#data 0x04349011

#align4
loc_8C0C30B4:
#data 0x00096043
#data 0x4F267F08
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0C30C0:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0C30E0,pc),r1 ; r1 set to 0x8C15B834
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x012C0B01

#align4
loc_8C0C30D8:
#data bank04.loc_8c044F12

loc_8C0C30DC:
#data loc_8c0c30C0

loc_8C0C30E0:
#data bank15.loc_8c15b834

loc_8C0C30E4:
#data 0x4F222FE6
#data 0x93607FF8
#data 0x2F526E43
#data 0x33ECE501
#data 0x1F31E600
#data 0x64E3BFB8
#data 0x6563E601
#data 0x64E3BFB4
#data 0xE602E501
#data 0x64E3BFB0
#data 0xE603E501
#data 0x64E3BFAc
#data 0xE604E501
#data 0x64E3BFA8
#data 0xE605E501
#data 0x64E3BFA4
#data 0xE606E501
#data 0x64E3BFA0
#data 0xE607E501
#data 0x64E3BF9c
#data 0xE608E501
#data 0x64E3BF98
#data 0xE3009038
#data 0x0E34D41d
#data 0x62F2E034
#data 0xFE37F326
#data 0xF308C719
#data 0x63F2E038
#data 0xF230F236
#data 0x902AFE27
#data 0x233803Ed
#data 0xD4168B00

#align4
loc_8C0C3164:
#data 0xC716445a
#data 0xC716F208
#data 0xE05CF108
#data 0xE517F32d
#data 0xE60164E3
#data 0xF313F322
#data 0xC712FE37
#data 0xE060F308
#data 0xC711FE37
#data 0xE05CF408
#data 0xE068F3E6
#data 0xFE37F343
#data 0xF3E6E060
#data 0xF343E06c
#data 0x53F1FE37
#data 0xF33AF38d
#data 0x4F267F08
#data 0x432BD309
#data 0x00886EF6
#data 0x0130012c
#data 0x435EDB6d
#data 0x00100000
#data 0xFFF00000
#data 0x3FD55555
#data 0x47800000
#data 0xC0700000
#data 0x42800000

#align4
loc_8C0C31D0:
#data bank03.loc_8c034e8c

loc_8C0C31D4:
#data 0x93A77FFc
#data 0x90A6E700
#data 0x2F32334c
#data 0x5645E304
#data 0xE0310474
#data 0xE0210434
#data 0x909D054c
#data 0x034D655c
#data 0x45084508
#data 0x45082338
#data 0x45288F01
#data 0x655b

loc_8C0C3202:
#data 0x455a
#data 0xF508C74d
#data 0xF408C74d
#data 0xF32DE034
#data 0x928CF266
#data 0xF343F352
#data 0xF427F230
#data 0x034CE021
#data 0xF208C748
#data 0x633CC748
#data 0x4308F108
#data 0x43184300
#data 0x633B633f
#data 0x435A332c
#data 0xF066E038
#data 0xF322F32d
#data 0xF030F313
#data 0xE021F407
#data 0x655C054c
#data 0x451175Ff
#data 0x65738900

#align4
loc_8C0C3254:
#data 0x62F2E316
#data 0x455A453c
#data 0xF352F32d
#data 0xF23AF343
#data 0x00096073
#data 0xE517D238
#data 0xE600814e
#data 0x7F04422b

#align4
loc_8C0C3274:
#data 0x965BE031
#data 0x0434E3Fe
#data 0x034D9056
#data 0x8B002338
#data 0x9655

loc_8C0C3286:
#data 0x666f
#data 0x465A904f
#data 0x0434E301
#data 0xF208C72a
#data 0xF32DC72c
#data 0xE034F108
#data 0xF0566633
#data 0xF322D32a
#data 0xF030F313
#data 0xC729F407
#data 0xE038F308
#data 0xF030F056
#data 0x432BF407
#data 0xE517


loc_8C0C32BA:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0C3334,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0C3354,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.w @(loc_8C0C3334,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0C3336,pc),r0 ; r0 set to 0xC0
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0C332A,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0C3338,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0C3358,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov r14,r4
mov.b @(r0,r5),r2
mov.b r2,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
mov.l @(loc_8C0C335C,pc),r0 ; r0 set to 0x8C15B844
extu.b r3,r3
lds.l @r15+,pr 	
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14
#data 0x0088

loc_8C0C332A:
#data 0x012c
#data 0x08000130
#data 0xE0002000

loc_8C0C3334:
#data 0x00Dc

loc_8C0C3336:
#data 0x00C0

loc_8C0C3338:
#data 0x01A3
#data 0x0000
#data 0x3FD55555
#data 0x47800000
#data 0x40092492
#data 0x43800000

#align4
loc_8C0C334C:
#data bank03.loc_8c034e8c
#data 0x43586DB6

#align4
loc_8C0C3354:
#data bank12.loc_8c129560

loc_8C0C3358:
#data bank12.loc_8c1294C8

loc_8C0C335C:
#data bank15.loc_8c15b844

loc_8C0C3360:
#data 0xE602D246
#data 0x633C6320
#data 0x89033367
#data 0x600C8457
#data 0x8B043067

#align4
loc_8C0C3374:
#data 0x70018445
#data 0xE0208045
#data 0x814e

loc_8C0C337E:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0C3382:
#data 0x854e
#data 0x814E70Ff
#data 0x2008600f
#data 0x84458B02
#data 0x80457001

#align4
loc_8C0C3394:
#data 0x0009000b
;-------------------------------------------------------------------------------

#align4
loc_8C0C3398:
#data 0x4F222FE6
#data 0xE05C7FFc
#data 0xF38D6E43
#data 0x2F529466
#data 0xF345F4E6
#data 0x34EC8F01
#data 0xF44d

loc_8C0C33B2:
#data 0xF348
#data 0x31ECE15c
#data 0xE034F340
#data 0xF2E6F43a
#data 0xE168F318
#data 0xD42E31Ec
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
#data 0x9040FE27
#data 0x233803Ed
#data 0xE0348909
#data 0x7058F3E6
#data 0xF231F246
#data 0xF325F38d
#data 0xA00F8909
#data 0x0009

loc_8C0C340E:
#data 0xE034
#data 0x7054F3E6
#data 0xF231F246
#data 0xF235F38d
#data 0x8B06

loc_8C0C341E:
#data 0x84E4
#data 0x80E47001
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0C342C:
#data 0x6032D315
#data 0xC8035007
#data 0x65E38B0d
#data 0x971DD213
#data 0xE6017534
#data 0x64F2420b
#data 0xE54964E3
#data 0x4F267F04
#data 0x432BD30f
#data 0x6EF6

loc_8C0C3452:
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C345A:
mov.w @(loc_8C0C347A,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.l r14,@-r15
mov r4,r14
mov.b r3,@(r0,r14) 	
mov r14,r4
mov.b @(0x05,r14),r0 	
mov.l @(loc_8C0C3490,pc),r1 ; r1 set to 0x8C15B850
extu.b r0,r0 ; r0 set to 0x2c
shll2 r0 ; r0 set to 0xB0
mov.l @(r0,r1),r3 ; r3 ??	
jmp @r3
mov.l @r15+,r14
#data 0x01300088
#data 0x0089

loc_8C0C347A:
#data 0x012c
#data 0x8C2895F0
#data 0x8C26A518
#data 0x8C26823c

#align4
loc_8C0C3488:
#data bank10.loc_8c10235c

loc_8C0C348C:
#data bank04.loc_8c04223a

loc_8C0C3490:
#data bank15.loc_8c15b850

loc_8C0C3494:
#data 0x6E432FE6
#data 0xE3009054
#data 0x9650FFFb
#data 0x54E54F22
#data 0xE3020E34
#data 0x364C8444
#data 0x600C9549
#data 0x8D103033
#data 0xFF6835Ec
#data 0xF28DF358
#data 0xFF25FF31
#data 0xC7218B14
#data 0xFF33F308
#data 0x8B00F2F5
#data 0xFF8d

loc_8C0C34CE:
#data 0xC71f
#data 0xFF35F308
#data 0x8B03

loc_8C0C34D6:
#data 0x84E4
#data 0xA00A7001
#data 0x80E4

loc_8C0C34DE:
#data 0xFF3d
#data 0xE517D31b
#data 0x075AE600
#data 0x64E3430b

#align4
loc_8C0C34EC:
#data 0xE201902a
#data 0x0E24

loc_8C0C34F2:
#data 0x4F26
#data 0x000BFFF9
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C34FA:
#data 0x4F22
#data 0xD3157FFc
#data 0x2F42430b
#data 0x4011600e
#data 0x63F28903
#data 0x70018434
#data 0x8034

loc_8C0C3512:
#data 0x7F04
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0C351A:
mov 0x20,r0 ; r0 set to 0x20
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(loc_8C0C3558,pc),r0 ; r0 set to 0x8C15B85c
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

loc_8C0C352E:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0C3544,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0C353C:
mov.l @(loc_8C0C355C,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x0088

loc_8C0C3544:
#data 0x012c
#data 0x0000
#data 0x41800000
#data 0x40400000

#align4
loc_8C0C3550:
#data bank03.loc_8c034F54

loc_8C0C3554:
#data bank03.loc_8c034dee

loc_8C0C3558:
#data bank15.loc_8c15b85c

loc_8C0C355C:
#data bank04.loc_8c0450C0

loc_8C0C3560:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x7FFC4F22
#data 0xD95B6C43
#data 0xE4009AAe
#data 0xED086E43
#data 0x6B432F52

#align4
loc_8C0C3580:
#data 0xE601E503
#data 0xE400490b
#data 0x8D172008
#data 0xE0266403
#data 0x1424D254
#data 0x04A562E3
#data 0x63F2E020
#data 0x04344221
#data 0xE021E301
#data 0x042423E8
#data 0x024C8904
#data 0x735F6303
#data 0x0424223b

#align4
loc_8C0C35B4:
#data 0x14C57B01
#data 0x143653C6

#align4
loc_8C0C35BC:
#data 0x3ED37E01
#data 0x60B38BDe
#data 0x7F040009
#data 0x69F64F26
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0C35D8:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0C36E8,pc),r1 ; r1 set to 0x8C15B8B0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0C35EA:
#data 0x2FE6
#data 0x2FD66E43
#data 0x4F229171
#data 0x31EC9070
#data 0x926CD33c
#data 0x430B54E5
#data 0x906A324c
#data 0x61E3E201
#data 0x0E247150
#data 0x80E28442
#data 0x80E18441
#data 0xF346E050
#data 0xE054FE37
#data 0xFE37F346
#data 0x034C905c
#data 0x70010E34
#data 0x0E24024c
#data 0x034CE030
#data 0x72506243
#data 0xD32E0E34
#data 0xE00C430b
#data 0x024CE024
#data 0x84E40E24
#data 0x80E47001
#data 0x034CE024
#data 0xE0310E34
#data 0x72FC024c
#data 0xE0200E24
#data 0xD02605Ec
#data 0x4508655c
#data 0xE021055e
#data 0x600C00Ec
#data 0x8D07C880
#data 0xE021ED08
#data 0xE37F02Ec
#data 0x22397504
#data 0xED0C0E24

#align4
loc_8C0C367C:
#data 0x6243E021
#data 0x723401Ec
#data 0x611CD31a
#data 0x41004108
#data 0x61E3351c
#data 0x430B7134
#data 0x6355E00c
#data 0xD117E034
#data 0x435A64E3
#data 0xF32DF2E6
#data 0xD115415a
#data 0xF23EF00d
#data 0xE038FE27
#data 0xE5176351
#data 0x435AF2E6
#data 0xF32DD311
#data 0xF00D415a
#data 0xFE27F23e
#data 0x06ECE020
#data 0x46004F26
#data 0x6DF636Dc
#data 0x6EF6432b
#data 0x00DC0C00
#data 0x012C00C0
#data 0x000001A3

#align4
loc_8C0C36E0:
#data bank04.loc_8c044F12

loc_8C0C36E4:
#data loc_8c0c35D8

loc_8C0C36E8:
#data bank15.loc_8c15b8B0

loc_8C0C36EC:
#data bank12.loc_8c129560

loc_8C0C36F0:
#data bank12.loc_8c1294C8

loc_8C0C36F4:
#data bank15.loc_8c15b8A8
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0C3700:
#data bank03.loc_8c034e8c

loc_8C0C3704:
#data 0x4F222FE6
#data 0x430BD309
#data 0x600E6E43
#data 0x89054011
#data 0xE30084E4
#data 0x80E47001
#data 0x0E349006

#align4
loc_8C0C3720:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C3726:
mov.l @(loc_8C0C3734,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x0000012c

#align4
loc_8C0C3730:
#data bank03.loc_8c034dee

loc_8C0C3734:
#data bank04.loc_8c0450C0

loc_8C0C3738:
#data 0x7FFC4F22
#data 0xE503D34f
#data 0xE6012F42
#data 0xE400430b
#data 0x8D072008
#data 0x938B6403
#data 0xD24BE026
#data 0x14240435
#data 0x143663F2

#align4
loc_8C0C375C:
#data 0x4F267F04
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0C3764:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0C3884,pc),r1 ; r1 set to 0x8C15B8Bc
extu.b r0,r0
mov.w @(loc_8C0C386A,pc),r5 ; r5 set to 0xCc
shll2 r0
mov.l @(0x18,r14),r6
mov.l @(r0,r1),r3
add r14,r5 ; r5 ??? bc r14 is ???	
jmp @r3
mov.l @r15+,r14

loc_8C0C377C:
mov.w @(loc_8C0C386C,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0C3888,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.w @(loc_8C0C386C,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0C386E,pc),r0 ; r0 set to 0xC0
jsr @r3
add r6,r2 ; r2 ??? bc r6 is ???	
mov.w @(loc_8C0C3870,pc),r0 ; r0 set to 0x12c
mov 0x01,r2 ; r2 set to 0x01
mov r4,r1
add 0x50,r1
mov.b r2,@(r0,r4) 	
mov.b @(0x02,r6),r0 	
mov.b r0,@(0x02,r4) 	
mov.b @(0x01,r6),r0 	
mov.b r0,@(0x01,r4) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r6),fr3 ; r3 ??? bc r6 is ???	
fmov.s fr3,@(r0,r4) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r6),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0C3872,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r6),r3
mov.b r3,@(r0,r4) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r6),r2 ; r2 ??? bc r6 is ???	
mov.b r2,@(r0,r4) 	
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r6),r3
mov r6,r2
add 0x50,r2
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0C388C,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r6),r2
mov 0x00,r6 ; r6 set to 0x00
mov.b r2,@(r0,r4) 	
mov.w @(loc_8C0C3870,pc),r0 ; r0 set to 0x12c
mov.b r6,@(r0,r4) 	
lds.l @r15+,pr 	
rts 	
mov.b r6,@r5
;-------------------------------------------------------------------------------

loc_8C0C37DE:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r6,r13
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r3
mov r4,r14
mov 0xFC,r2 ; r2 set to 0xFFFFFFFc
mov r5,r12
mov.b r3,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0C3874,pc),r0 ; r0 set to 0x130
mov.w @(loc_8C0C3876,pc),r2 ; r2 set to 0x150
mov.w @(r0,r13),r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w r3,@(r0,r14) 	
mov.b @(0x01,r2),r0 	
tst r0,r0
bt/s loc_8C0C383c
mov.l r0,@r15
mov.w @(loc_8C0C3870,pc),r0 ; r0 set to 0x12c
mov r13,r2
mov.l @(loc_8C0C388C,pc),r3 ; r3 set to 0x8C1294C8
mov r14,r1
mov 0x01,r4 ; r4 set to 0x01
add 0x34,r2
mov.b r4,@(r0,r14) 	
add 0x34,r1
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.w @(loc_8C0C3878,pc),r0 ; r0 set to 0x141
mov 0x17,r5 ; r5 set to 0x17
mov.b r4,@r12
mov r14,r4 ; r4 ??? bc r14 is ???	
mov.l @r15,r6
mov.b @(r0,r13),r7
add 0x26,r6
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0C3890,pc),r3 ; r3 set to 0x8C034F54
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

#align4
loc_8C0C383C:
#data 0x233863C0
#data 0xD3148909
#data 0x64E3430b
#data 0x4011600e
#data 0x900F8903
#data 0x0E44E400
#data 0x2C40

loc_8C0C3856:
#data 0x7F04
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C3862:
mov.l @(loc_8C0C3898,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x0C01

loc_8C0C386A:
#data 0x00Cc

loc_8C0C386C:
#data 0x00Dc

loc_8C0C386E:
#data 0x00C0

loc_8C0C3870:
#data 0x012c

loc_8C0C3872:
#data 0x01A3

loc_8C0C3874:
#data 0x0130

loc_8C0C3876:
#data 0x0150

loc_8C0C3878:
#data 0x0141
#data 0x0000

#align4
loc_8C0C387C:
#data bank04.loc_8c044F12

loc_8C0C3880:
#data loc_8c0c3764

loc_8C0C3884:
#data bank15.loc_8c15b8Bc

loc_8C0C3888:
#data bank12.loc_8c129560

loc_8C0C388C:
#data bank12.loc_8c1294C8

loc_8C0C3890:
#data bank03.loc_8c034F54

loc_8C0C3894:
#data bank03.loc_8c034dee

loc_8C0C3898:
#data bank04.loc_8c0450C0


loc_8C0C389C:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov.l @(loc_8C0C39A4,pc),r2 ; r2 set to 0x8C287AE8
mov r5,r14
mov.l r4,@r15
mov.l r6,@(0x04,r15) 	
mov.w @r2,r3
cmp/gt r14,r3
bt/s loc_8C0C38Be
mov r7,r12
bra loc_8C0C390e
mov 0x00,r0

loc_8C0C38BE:
#data 0xE40c
#data 0x8F013E47
#data 0x6E43ED00

#align4
loc_8C0C38C8:
#data 0x4E159B69
#data 0x8B1CDA36

#align4
loc_8C0C38D0:
#data 0xE601E503
#data 0xE4004A0b
#data 0x8D102008
#data 0xE0266403
#data 0xE02304B5
#data 0xE02004D4
#data 0x043453F1
#data 0x04C4E021
#data 0x000960E3
#data 0x814FD32d
#data 0x62F21434
#data 0x1426

loc_8C0C38FE:
#data 0x2CC8
#data 0x7D018D01
#data 0x7CFf

loc_8C0C3906:
#data 0x3DE3
#data 0x8BE2

loc_8C0C390A:
#data 0x60D3
#data 0x0009


loc_8C0C390E:
add 0x08,r15
lds.l @r15+,pr 	
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0C391E:
mov.l r14,@-r15
mov 0x23,r0 ; r0 set to 0x23
mov r4,r14
mov.b @(r0,r14),r3
tst r3,r3
bf/s loc_8C0C393c
mov.l @(0x18,r14),r5
mov.b @(0x04,r14),r0 	
mov r14,r4
mov.l @(loc_8C0C39B0,pc),r1 ; r1 set to 0x8C15BA78
extu.b r0,r0 ; r0 set to 0x23
shll2 r0 ; r0 set to 0x8c
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0C393C:
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0C3940:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.l r12,@-r15
sts.l pr,@-r15
mov.w @(loc_8C0C39A0,pc),r12 ; r12 set to 0x2A4
bsr loc_8C0C3A6e
add r13,r12 ; r12 ??? bc r13 is ???	
mov.b @(0x04,r14),r0 	
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov 0x24,r0 ; r0 set to 0x24
fmov.s @(r0,r12),fr3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x28,r0 ; r0 set to 0x28
fmov.s @(r0,r12),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3
mov.l @(loc_8C0C39B4,pc),r0 ; r0 set to 0x8C15BA70
extu.b r3,r3
shll2 r3
mov.l @(r0,r3),r2
mov.w @(loc_8C0C39A2,pc),r0 ; r0 set to 0x1B0
mov.l r2,@(r0,r14) 	
bsr loc_8C0C3DFe
mov r14,r4
mov r13,r5
bsr loc_8C0C3D58
mov r14,r4
mov r13,r5
bsr loc_8C0C3BDc
mov r14,r4
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
mov.l @r15+,r12
mov.l @r15+,r13
bra loc_8C0C3B4e
mov.l @r15+,r14
#data 0x0C02

loc_8C0C39A0:
#data 0x02A4

loc_8C0C39A2:
#data 0x01B0

#align4
loc_8C0C39A4:
#data 0x8C287AE8

#align4
loc_8C0C39A8:
#data bank04.loc_8c044F12

loc_8C0C39AC:
#data loc_8c0c391e

loc_8C0C39B0:
#data bank15.loc_8c15ba78

loc_8C0C39B4:
#data bank15.loc_8c15ba70

loc_8C0C39B8:
#data 0x6E532FE6
#data 0xE03CD551
#data 0xE1012FD6
#data 0x035D4F22
#data 0x025CE03b
#data 0x94926D43
#data 0x622C633d
#data 0x2318412c
#data 0x34EC8F27
#data 0x00EC908c
#data 0x8803600c
#data 0x84478B07
#data 0x8D048802
#data 0x60536503
#data 0x88FF0009
#data 0x8B07

loc_8C0C39F6:
#data 0xE002
#data 0x80D464D3
#data 0x4F2665E3
#data 0xA0166DF6
#data 0x6EF6

loc_8C0C3A06:
#data 0xE024
#data 0x02EC65E3
#data 0x0D24E308
#data 0x0D34E031
#data 0x64D3B1A0
#data 0xB0DF65E3
#data 0x4F2664D3
#data 0x65E364D3
#data 0xA0926DF6
#data 0x6EF6

loc_8C0C3A2A:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C3A32:
#data 0x2FE6
#data 0x2FD6EE01
#data 0x2FC66D43
#data 0x2FA62FB6
#data 0x85DF4F22
#data 0x6C03DA30
#data 0x8D073EC3
#data 0xEB00

loc_8C0C3A4E:
#data 0x9054
#data 0x4A0B54D3
#data 0x7E0104B4
#data 0x8BF83EC3

#align4
loc_8C0C3A5C:
#data 0x64D34A0b
#data 0x6AF64F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C3A6E:
mov.l r14,@-r15
mov r5,r14
mov.l r13,@-r15
mov 0x08,r7 ; r7 set to 0x08
mov.l r12,@-r15
mov 0x00,r5 ; r5 set to 0x00
sts.l pr,@-r15
mov.w @(0x1E,r4),r0 	
mov r0,r6
cmp/pl r6
bf/s loc_8C0C3B22
mov 0x01,r12 ; r12 set to 0x01

loc_8C0C3A86:
mov.w @(loc_8C0C3AFC,pc),r1 ; r1 set to 0xDc
mov r4,r13
mov.w @(loc_8C0C3AFC,pc),r2 ; r2 set to 0xDc
mov.w @(loc_8C0C3AFE,pc),r0 ; r0 set to 0xC0
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0C3B0C,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r14,r2 ; r2 ??? bc r14 is ???	
mov.w @(loc_8C0C3AFA,pc),r0 ; r0 set to 0x12c
mov r13,r1
add 0x50,r1
mov.b r12,@(r0,r4) 	
mov.b @(0x02,r14),r0 	
mov.b r0,@(0x02,r4) 	
mov.b @(0x01,r14),r0 	
mov.b r0,@(0x01,r4) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???	
fmov.s fr3,@(r0,r4) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r14),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0C3B00,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r14),r3
mov.b r3,@(r0,r4) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r14),r2
mov.b r2,@(r0,r4) 	
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r14),r3
mov r14,r2
add 0x50,r2
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0C3B10,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov r13,r1
mov.b @(r0,r14),r2
add 0x34,r1
mov.b r2,@(r0,r4) 	
mov r14,r2
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
add 0x34,r2
mov.b r3,@(r0,r4) 	
mov 0x31,r0 ; r0 set to 0x31
mov.l @(loc_8C0C3B10,pc),r3 ; r3 set to 0x8C1294C8
mov.b r7,@(r0,r4) 	
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r4),r1
tst r1,r1
bt loc_8C0C3B14
bra loc_8C0C3B16
mov 0x01,r2
#data 0x02A4
#data 0x01E9

loc_8C0C3AFA:
#data 0x012c

loc_8C0C3AFC:
#data 0x00Dc

loc_8C0C3AFE:
#data 0x00C0

loc_8C0C3B00:
#data 0x01A3
#data 0x0000
#data 0x8C2895F0

#align4
loc_8C0C3B08:
#data bank04.loc_8c0450C0

loc_8C0C3B0C:
#data bank12.loc_8c129560

loc_8C0C3B10:
#data bank12.loc_8c1294C8

loc_8C0C3B14:
#data 0xE200

loc_8C0C3B16:
#data 0x909f
#data 0x35637501
#data 0x8FB20424
#data 0x5443


loc_8C0C3B22:
mov.l @(loc_8C0C3C60,pc),r2 ; r2 set to 0x8C052618
mov r13,r5
jsr @r2
mov r14,r4
mov.w @(loc_8C0C3C58,pc),r0 ; r0 set to 0x12c
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov.b r12,@(r0,r13) 	
add 0x2E,r0 ; r0 set to 0x15a
mov.b r3,@(r0,r13) 	
add 0x6E,r0 ; r0 set to 0x1C8
mov.l @(r0,r13),r2 ; r2 ??? bc r13 is ???	
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r2),r3 ; r3 ??? bc r2 is ???	
mov 0xFE,r2 ; r2 set to 0xFFFFFFFe
mov.b r3,@(r0,r13) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r2,@(r0,r13) 	
lds.l @r15+,pr 	
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0C3B4E:
#data 0x2FE6
#data 0x2FD66E43
#data 0x2FC6E400
#data 0x2FB66C43
#data 0x2FA66B43
#data 0x2F862F96
#data 0x85EF4F22
#data 0x6903DA3e
#data 0x491579Ff
#data 0x8F1A6503
#data 0xED01

loc_8C0C3B76:
#data 0xE023
#data 0xE51708Ec
#data 0x688CD03a
#data 0xE022088c
#data 0x688C07Ec
#data 0x66837810
#data 0x4A0B677c
#data 0x906164E3
#data 0x233803Ec
#data 0x2BB88B03
#data 0x6BD38B01
#data 0x0ED4

loc_8C0C3BA2:
#data 0x7C01
#data 0x8FE63C93
#data 0x5EE3

loc_8C0C3BAA:
#data 0xE022
#data 0xE71F00Ec
#data 0x600CE50f
#data 0x27097002
#data 0xE60A4721
#data 0x4A0B4721
#data 0x4F2664E3
#data 0x64E39049
#data 0x68F6D328
#data 0x69F605Ee
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6432b

#align4
loc_8C0C3BDC:
#data 0xD624E022
#data 0x2FD6973c
#data 0xC723014c
#data 0xC723F508
#data 0xF408611c
#data 0x90344108
#data 0x316C4100
#data 0x63157104
#data 0x435A375c
#data 0xF32D6311
#data 0x034D435a
#data 0xF63C2338
#data 0xF652F32d
#data 0x8D01F73c
#data 0xF64DF742

#align4
loc_8C0C3C18:
#data 0xF376E024
#data 0xF256E034
#data 0xF261F230
#data 0xE028F427
#data 0xE038F376
#data 0xE701F256
#data 0xF271F230
#data 0x854FF427
#data 0x7DFF6D03
#data 0x650337D3
#data 0xF88D8D50

#align4
loc_8C0C3C44:
#data 0x55439008
#data 0x2228025c
#data 0xFA8C8B16
#data 0xF98CF68c
#data 0xF78CA038

loc_8C0C3C58:
#data 0x012c
#data 0x01C8
#data 0x013002A4

#align4
loc_8C0C3C60:
#data bank05.loc_8c052618

loc_8C0C3C64:
#data bank03.loc_8c034F54

loc_8C0C3C68:
#data bank15.loc_8c15b9E8

loc_8C0C3C6C:
#data bank04.loc_8c04CC1c

loc_8C0C3C70:
#data bank15.loc_8c15b8C8
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0C3C7C:
#data 0x014CE022
#data 0x4108611c
#data 0x316C4100
#data 0x435A6315
#data 0x015C6311
#data 0x435AF32d
#data 0x90A3611c
#data 0x41004108
#data 0xF63C316c
#data 0xF32D7104
#data 0xF6526315
#data 0x6311435a
#data 0xF32DF93c
#data 0xF942435a
#data 0xF32DF73c
#data 0xFA3CF752
#data 0x2338034d
#data 0xFA428D02
#data 0xF64DF74d

#align4
loc_8C0C3CC8:
#data 0xF346E034
#data 0x37D37701
#data 0xF371F360
#data 0xE038F537
#data 0xF390F346
#data 0xF537F3A1
#data 0x64538FB0

#align4
loc_8C0C3CE4:
#data 0x5543E022
#data 0x005C024c
#data 0xF25C622c
#data 0x42004208
#data 0xD23B362c
#data 0x600C6365
#data 0x435A7002
#data 0xE61F6361
#data 0xF32D2609
#data 0x46214621
#data 0x4600435a
#data 0x362C4600
#data 0xF32DF63c
#data 0xF6526365
#data 0xF73C435a
#data 0xF32DF742
#data 0xF53C6361
#data 0x435AF522
#data 0xF24C9058
#data 0x034DF32d
#data 0xF43C2338
#data 0xF4228D02
#data 0xF64DF54d

#align4
loc_8C0C3D40:
#data 0xF346E034
#data 0xF351F360
#data 0xE038F537
#data 0xF370F346
#data 0xF537F341
#data 0x6DF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0C3D58:
#data 0x2FE6E022
#data 0xE6012FD6
#data 0x035C4F22
#data 0x854E0434
#data 0x8D3F2008
#data 0x854E6D63
#data 0x70FF6763
#data 0x854F814e
#data 0x37E36E03
#data 0x8D38C71a
#data 0xF408

loc_8C0C3D82:
#data 0x5643
#data 0xE060E164
#data 0xF266316c
#data 0xF230F318
#data 0xE06CF627
#data 0xF246F32c
#data 0xF38DF230
#data 0x8F03F325
#data 0xF266F627
#data 0xF627F240

#align4
loc_8C0C3DA8:
#data 0xF435F366
#data 0xF3668902
#data 0xF637F341

#align4
loc_8C0C3DB4:
#data 0xE222F366
#data 0xF33D325c
#data 0xE1226220
#data 0x316C7701
#data 0x600C005a
#data 0x40217004
#data 0x40214021
#data 0x302C37E3
#data 0x2100C91f
#data 0x64638FD3
#data 0x0009A009
#data 0x00000130

#align4
loc_8C0C3DE4:
#data bank15.loc_8c15b9C8
#data 0x43800000

#align4
loc_8C0C3DEC:
#data 0x0009B007
#data 0x6D03

loc_8C0C3DF2:
#data 0x60D3
#data 0x4F260009
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C3DFE:
#data 0x9064
#data 0x6566064e
#data 0x8F032558
#data 0x76F8E701
#data 0xE7006566

#align4
loc_8C0C3E10:
#data 0xE0680466
#data 0xE06CF346
#data 0xE068F437
#data 0x435A6355
#data 0xF437F32d
#data 0x6351E06c
#data 0xE068F346
#data 0xF246435a
#data 0xF231E070
#data 0xF232F32d
#data 0xF427F38d
#data 0xF408C723
#data 0xF246E070
#data 0x8B02F325
#data 0xF240F246
#data 0xF427

loc_8C0C3E4E:
#data 0x6355
#data 0x435AF246
#data 0xF32DD11e
#data 0xE101415a
#data 0xF30DF232
#data 0xF233F427
#data 0x6051F427
#data 0x814EF28d
#data 0xF427E06c
#data 0x6603854f
#data 0x89263163

#align4
loc_8C0C3E78:
#data 0xE0605543
#data 0xE06CF356
#data 0xF230F246
#data 0xE070F527
#data 0xF537F346
#data 0x815E854e
#data 0x6303854e
#data 0xE070435a
#data 0xE064F246
#data 0xF233F32d
#data 0xF527F38d
#data 0xF256E06c
#data 0x8B02F325
#data 0xF240F256
#data 0xF527

loc_8C0C3EB2:
#data 0xF356
#data 0x8D03F435
#data 0xF3566453
#data 0xF537F341

#align4
loc_8C0C3EC0:
#data 0x31637101
#data 0x8BD8

loc_8C0C3EC6:
#data 0x000b
#data 0x01B06073
#data 0x43800000
#data 0x41400000
#data 0x7FF84F22
#data 0xE601D346
#data 0x1F512F42
#data 0x430BE503
#data 0x2008E400
#data 0x64038D0a
#data 0xE0269379
#data 0xE0200435
#data 0xD34052F1
#data 0x14340424
#data 0x142662F2
#data 0x4F267F08
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0C3F08:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0C3FFC,pc),r0 ; r0 set to 0x8C15BA84
extu.b r3,r3
mov.l @(0x18,r14),r5
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0C3F1E:
mov r4,r3
mov.l @(loc_8C0C4000,pc),r1 ; r1 set to 0x8C15BA94
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0C3F30:
mov.w @(loc_8C0C3FE4,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.w @(loc_8C0C3FE6,pc),r0 ; r0 set to 0xC0
add r4,r1 ; r1 ??? bc r4 is ???	
mov.w @(loc_8C0C3FE4,pc),r2 ; r2 set to 0xDc
mov.l @(loc_8C0C4004,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0C3FE8,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0C3FEA,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0C4008,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x07,r3 ; r3 set to 0x07
mov 0x00,r6 ; r6 set to 0x00
mov.b r2,@(r0,r4) 	
mov.b @(0x04,r4),r0 	
add 0x01,r0 ; r0 set to 0x25
mov.b r0,@(0x04,r4) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0C3FEC,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r5),fr3
mov 0x38,r0 ; r0 set to 0x38
mov 0x17,r5 ; r5 set to 0x17
fmov.s fr3,@(r0,r4) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0C400C,pc),r3 ; r3 set to 0x8C034E8c
jmp @r3
lds.l @r15+,pr 	

#align4
loc_8C0C3FA4:
#data 0x6E432FE6
#data 0x4F222FD6
#data 0x430BD318
#data 0x901C6D53
#data 0x600C00Dc
#data 0x8B098812
#data 0xE3029018
#data 0x622C02Dc
#data 0x89033237
#data 0x00DC9013
#data 0x89042038

#align4
loc_8C0C3FD0:
#data 0x80E4E002
#data 0x9007E300
#data 0x0E34

loc_8C0C3FDA:
#data 0x4F26
#data 0x000B6DF6
#data 0x0C036EF6

loc_8C0C3FE4:
#data 0x00Dc

loc_8C0C3FE6:
#data 0x00C0

loc_8C0C3FE8:
#data 0x012c

loc_8C0C3FEA:
#data 0x01A3

loc_8C0C3FEC:
#data 0x041c
#data 0x0159
#data 0x01410158

#align4
loc_8C0C3FF4:
#data bank04.loc_8c044F12

loc_8C0C3FF8:
#data loc_8c0c3F08

loc_8C0C3FFC:
#data bank15.loc_8c15ba84

loc_8C0C4000:
#data bank15.loc_8c15ba94

loc_8C0C4004:
#data bank12.loc_8c129560

loc_8C0C4008:
#data bank12.loc_8c1294C8

loc_8C0C400C:
#data bank03.loc_8c034e8c

loc_8C0C4010:
#data bank03.loc_8c034dee

loc_8C0C4014:
#data 0x6E432FE6
#data 0xE039946f
#data 0x034C345c
#data 0x8B092338
#data 0x005C906a
#data 0x8813600c
#data 0x90668B04
#data 0x600C005c
#data 0x89048801

#align4
loc_8C0C4038:
#data 0x80E4E002
#data 0x905FE300
#data 0x0E34

loc_8C0C4042:
#data 0x84E4
#data 0xD13164E3
#data 0x4008600c
#data 0x432B031e
#data 0x6EF6


loc_8C0C4052:
mov.w @(loc_8C0C4102,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.w @(loc_8C0C4104,pc),r0 ; r0 set to 0xC0
add r4,r1 ; r1 ??? bc r4 is ???	
mov.w @(loc_8C0C4102,pc),r2 ; r2 set to 0xDc
mov.l @(loc_8C0C4110,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0C4100,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0C4106,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0C4114,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov r4,r1
mov.b @(r0,r5),r2
mov 0x07,r3 ; r3 set to 0x07
add 0x34,r1
mov.b r2,@(r0,r4) 	
mov r5,r2
mov.b @(0x04,r4),r0 	
add 0x34,r2
add 0x01,r0 ; r0 set to 0x25
mov.b r0,@(0x04,r4) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0C4114,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mova @(loc_8C0C4118,pc),r0  ; r0 set to 0x8C0C4118
mov.l @(loc_8C0C4120,pc),r3 ; r3 set to 0x8C034E8c
fmov.s @r0,fr3 ; r3 ??	
mov 0x5C,r0 ; r0 set to 0x5c
mov 0x17,r5 ; r5 set to 0x17
fmov.s fr3,@(r0,r4) 	
mova @(loc_8C0C411C,pc),r0  ; r0 set to 0x8C0C411c
fmov.s @r0,fr3
mov 0x68,r0 ; r0 set to 0x68
mov 0x16,r6 ; r6 set to 0x16
fmov.s fr3,@(r0,r4) 	
jmp @r3
lds.l @r15+,pr 	

loc_8C0C40D6:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x05,r14),r0 	
tst r0,r0
bf loc_8C0C4128
mov.w @(loc_8C0C4108,pc),r0 ; r0 set to 0x14b
mov.b @(r0,r5),r3
tst r3,r3
bt loc_8C0C4192
mov.b @(0x05,r14),r0 	
mov r14,r4
mov.l @(loc_8C0C4124,pc),r3 ; r3 set to 0x8C034DEe
add 0x01,r0 ; r0 set to 0x14c
mov.b r0,@(0x05,r14) 	
lds.l @r15+,pr 	
jmp @r3
mov.l @r15+,r14
#data 0x02A4
#data 0x01580159

loc_8C0C4100:
#data 0x012c

loc_8C0C4102:
#data 0x00Dc

loc_8C0C4104:
#data 0x00C0

loc_8C0C4106:
#data 0x01A3

loc_8C0C4108:
#data 0x014b
#data 0x0000

#align4
loc_8C0C410C:
#data bank15.loc_8c15baA0

loc_8C0C4110:
#data bank12.loc_8c129560

loc_8C0C4114:
#data bank12.loc_8c1294C8

loc_8C0C4118:
#data 0x3E555555

#align4
loc_8C0C411C:
#data 0xBC555555

#align4
loc_8C0C4120:
#data bank03.loc_8c034e8c

loc_8C0C4124:
#data bank03.loc_8c034dee

loc_8C0C4128:
#data 0x430BD34b
#data 0xE15C64E3
#data 0x31ECE034
#data 0xF318F4E6
#data 0xF24CE168
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
#data 0xF3E6E034
#data 0xF38DF431
#data 0x8B00F345
#data 0xF44d

loc_8C0C4176:
#data 0xC739
#data 0xF345F308
#data 0xE0688909
#data 0xF24DF2E6
#data 0xF29DFE27
#data 0xF1E6F220
#data 0xF122E05c
#data 0xFE17


loc_8C0C4192:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0C4198:
mov r4,r3
mov.l @(loc_8C0C4260,pc),r1 ; r1 set to 0x8C15BAAc
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0C41AA:
#data 0x2FE6
#data 0x4F22914f
#data 0x314C904e
#data 0xD32B924b
#data 0x325C430b
#data 0xE2019049
#data 0x71506143
#data 0x84520424
#data 0x84518042
#data 0xE0508041
#data 0xF437F356
#data 0xF356E054
#data 0x903BF437
#data 0x0434035c
#data 0x025C7001
#data 0xE0300424
#data 0x6253035c
#data 0x04347250
#data 0x430BD31d
#data 0xE024E00c
#data 0x025C6143
#data 0xD31AE600
#data 0x04247134
#data 0x84446253
#data 0x70017234
#data 0xE0248044
#data 0x430B0464
#data 0x901EE00c
#data 0xE021024c
#data 0xE0200424
#data 0x90180E5c
#data 0x2338034d
#data 0x6EEC8D0a
#data 0xE034D10f
#data 0x7E03F246
#data 0xF30D415a
#data 0xF427F230
#data 0x0465900b

#align4
loc_8C0C4240:
#data 0xD30B4F26
#data 0x761A66E3
#data 0x432BE517
#data 0x00DC6EF6
#data 0x012C00C0
#data 0x013001A3

#align4
loc_8C0C4258:
#data bank03.loc_8c034dee
#data 0x3EE60000

#align4
loc_8C0C4260:
#data bank15.loc_8c15baAc

loc_8C0C4264:
#data bank12.loc_8c129560

loc_8C0C4268:
#data bank12.loc_8c1294C8
#data 0x43855555

#align4
loc_8C0C4270:
#data bank03.loc_8c034e8c

loc_8C0C4274:
#data 0x84554F22
#data 0x8F1B2008
#data 0x9085E602
#data 0x600C005c
#data 0x8B158815
#data 0xD3446253
#data 0x72346143
#data 0x430B7134
#data 0xE021E00c
#data 0x2228024c
#data 0xD1408906
#data 0xF246E034
#data 0xF30D415a
#data 0xF427F230

#align4
loc_8C0C42AC:
#data 0x035C906f
#data 0x89052368

#align4
loc_8C0C42B4:
#data 0x00096063
#data 0xE3008044
#data 0x04349068

#align4
loc_8C0C42C0:
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0C42C6:
mov r4,r3
mov.l @(loc_8C0C43A4,pc),r1 ; r1 set to 0x8C15BAB8
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

#align4
loc_8C0C42D8:
#data 0x4F22915b
#data 0x314C905a
#data 0xD3319257
#data 0x325C430b
#data 0xE2019052
#data 0x71506143
#data 0x84520424
#data 0x84518042
#data 0xE0508041
#data 0xF437F356
#data 0xF356E054
#data 0x9046F437
#data 0x0434035c
#data 0x025C7001
#data 0xE0300424
#data 0x6253035c
#data 0x04347250
#data 0x430BD31f
#data 0xE024E00c
#data 0x025CF48d
#data 0x0424E300
#data 0x70018444
#data 0xE0248044
#data 0xC71D0434
#data 0xE05CF308
#data 0xE068F437
#data 0xE060F447
#data 0xC71AF447
#data 0xE06CF308
#data 0xC719F437
#data 0x9021F408
#data 0x2338034d
#data 0xE05C8909
#data 0xF34DF346
#data 0xE068F437
#data 0xF34DF346
#data 0xC713F437
#data 0xF408

loc_8C0C436E:
#data 0xE034
#data 0xF356D313
#data 0xF340E615
#data 0xC710F437
#data 0xE038F308
#data 0xE517F256
#data 0xF427F230
#data 0x4F26432b
#data 0x014101D0
#data 0x00DC012c
#data 0x01A300C0
#data 0x00000130

#align4
loc_8C0C439C:
#data bank12.loc_8c1294C8
#data 0x43855555

#align4
loc_8C0C43A4:
#data bank15.loc_8c15baB8

loc_8C0C43A8:
#data bank12.loc_8c129560
#data 0x41A00000
#data 0xBF4DB6Db
#data 0x42D55555
#data 0xC2D55555
#data 0x42D64924

#align4
loc_8C0C43C0:
#data bank03.loc_8c034e8c


loc_8C0C43C4:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l @(loc_8C0C4470,pc),r4 ; r4 set to 0x8C2895F0
mov 0x3C,r0 ; r0 set to 0x3c
mov.l r5,@r15
mov.w @(r0,r4),r3
mov 0x3B,r0 ; r0 set to 0x3b
mov.b @(r0,r4),r2
mov 0x01,r1 ; r1 set to 0x01
extu.w r3,r3
extu.b r2,r2
shad r2, r1 ; r1 ??? bc r2 is ???	
tst r1,r3
bf loc_8C0C445e
mov.l @(loc_8C0C4474,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???	
exts.b r0,r0 ; r0 ??	
cmp/pz r0
bt loc_8C0C43Fc
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x04,r14) 	
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8C0C446C,pc),r0 ; r0 set to 0x12c
bra loc_8C0C445e
mov.b r3,@(r0,r14) 	

#align4
loc_8C0C43FC:
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
#data 0x63F2901b
#data 0xE038F336
#data 0xF325F2E6
#data 0x90148B0d
#data 0xF48D62F2
#data 0xE038F326
#data 0xE05CFE37
#data 0xE060FE47
#data 0xE068FE47
#data 0xE06CFE47
#data 0xFE47


loc_8C0C445E:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0C4466:
mov.l @(loc_8C0C4478,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0C446C:
#data 0x012c
#data 0x041c

#align4
loc_8C0C4470:
#data 0x8C2895F0

#align4
loc_8C0C4474:
#data bank03.loc_8c034dee

loc_8C0C4478:
#data bank04.loc_8c0450C0
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x4F222FA6
#data 0xD2357FF8
#data 0x2F426D53
#data 0x63211F61
#data 0x890133D7
#data 0xE000A027
#data 0x3D47E40c
#data 0xEE008F01
#data 0x9C596D43
#data 0xDB2E4D15
#data 0xE5038B1a
#data 0x4B0BE601
#data 0x2008E400
#data 0x64038D11
#data 0x04C5E026
#data 0x04E4E023
#data 0x53F1E020
#data 0x60D30434
#data 0xD3260009
#data 0x814F2EE8
#data 0x62F21434
#data 0x14268F01
#data 0x7E016A43
#data 0x8BE43ED3
#data 0x60E31A45
#data 0x7F080009
#data 0x6AF64F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C44FA:
mov.l r14,@-r15
mov 0x23,r0 ; r0 set to 0x23
mov r4,r14
mov.b @(r0,r14),r3
tst r3,r3
bf/s loc_8C0C4518
mov.l @(0x18,r14),r5
mov.b @(0x04,r14),r0 	
mov r14,r4
mov.l @(loc_8C0C456C,pc),r1 ; r1 set to 0x8C15BAF0
extu.b r0,r0 ; r0 set to 0x23
shll2 r0 ; r0 set to 0x8c
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0C4518:
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0C451C:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
bsr loc_8C0C46D0
mov r5,r13
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0C4570,pc),r3 ; r3 set to 0x8C15BAD4
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0C455E,pc),r0 ; r0 set to 0x1B0
mov.l r3,@(r0,r14) 	
mov.l @(loc_8C0C4574,pc),r3 ; r3 set to 0x8C0C3DFe
jsr @r3
mov r14,r4
mov.l @(loc_8C0C4578,pc),r2 ; r2 set to 0x8C0C3D58
mov r13,r5
jsr @r2
mov r14,r4
mov r13,r5
mov 0x00,r6 ; r6 set to 0x00
bsr loc_8C0C4762
mov r14,r4
mov r13,r5
bsr loc_8C0C4878
mov r14,r4
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
mov.l @r15+,r13
bra loc_8C0C47E8
mov.l @r15+,r14
#data 0x0C04

loc_8C0C455E:
#data 0x01B0
#data 0x8C287AE8

#align4
loc_8C0C4564:
#data bank04.loc_8c044F12

loc_8C0C4568:
#data loc_8c0c44Fa

loc_8C0C456C:
#data bank15.loc_8c15baF0

loc_8C0C4570:
#data bank15.loc_8c15baD4

loc_8C0C4574:
#data loc_8c0c3DFe

loc_8C0C4578:
#data loc_8c0c3D58

loc_8C0C457C:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x9C7C2FC6
#data 0x84D54F22
#data 0x20083CDc
#data 0xE4028F0a
#data 0x00DC9076
#data 0x8815600c
#data 0x90728B04
#data 0x600C00Dc
#data 0x89098815

#align4
loc_8C0C45A8:
#data 0x00096043
#data 0x80E465D3
#data 0x64E34F26
#data 0x6DF66CF6
#data 0x6EF6A06c

#align4
loc_8C0C45BC:
#data 0xE03CD533
#data 0x025DE101
#data 0x035CE03b
#data 0x633C622d
#data 0x2218413c
#data 0x84E58B52
#data 0x8800600c
#data 0x88018905
#data 0x88028914
#data 0xA0498923
#data 0x0009

loc_8C0C45E6:
#data 0x65D3
#data 0xB0BAE600
#data 0x65D364E3
#data 0x64E3B142
#data 0xB0F765D3
#data 0x84C564E3
#data 0x893B2008
#data 0x700184E5
#data 0x80E5A038

#align4
loc_8C0C4608:
#data 0xB23965D3
#data 0x65D364E3
#data 0x64E3B0Ea
#data 0x600C84C5
#data 0x892D8801
#data 0xE31084E5
#data 0x80E57001
#data 0xA027E021
#data 0x0E34

loc_8C0C462A:
#data 0xE021
#data 0x73FF03Ec
#data 0x633C0E34
#data 0x8B0D2338
#data 0x00096043
#data 0x65D380E4
#data 0xE3009022
#data 0x64E3E602
#data 0x4F260E34
#data 0x6DF66CF6
#data 0x6EF6A087

#align4
loc_8C0C4654:
#data 0xE60165D3
#data 0x64E3B083
#data 0x65D3D30c
#data 0x64E3430b
#data 0xB17F65D3
#data 0x4F2664E3
#data 0x64E365D3
#data 0x6DF66CF6
#data 0x6EF6A0B8

#align4
loc_8C0C4678:
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x02A46EF6
#data 0x015901D0
#data 0x0000012c
#data 0x8C2895F0

#align4
loc_8C0C4690:
#data loc_8c0c3D58

loc_8C0C4694:
#data 0xEE012FE6
#data 0x6D432FD6
#data 0x2FB62FC6
#data 0x4F222FA6
#data 0xDA4885Df
#data 0x3EC36C03
#data 0xEB008D07

#align4
loc_8C0C46B0:
#data 0x54D39085
#data 0x04B44A0b
#data 0x3EC37E01
#data 0x8BF8

loc_8C0C46BE:
#data 0x4A0b
#data 0x4F2664D3
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0C46D0:
#data 0xE6002FE6
#data 0x67632FD6
#data 0xEC082FC6
#data 0x854F4F22
#data 0x4E156E03
#data 0xED018F38

#align4
loc_8C0C46E8:
#data 0x906A916a
#data 0x314CD337
#data 0x430B9266
#data 0x9062325c
#data 0x71506143
#data 0x845204D4
#data 0x84518042
#data 0xE0508041
#data 0xF437F356
#data 0xF356E054
#data 0x9057F437
#data 0x0434035c
#data 0x025C7001
#data 0xE0300424
#data 0x6253035c
#data 0x04347250
#data 0x430BD329
#data 0xE024E00c
#data 0x025C6143
#data 0x04247134
#data 0x90406253
#data 0x04647234
#data 0x035CE024
#data 0xE0310434
#data 0x04C4D321
#data 0xE00C430b
#data 0x37E37701
#data 0x54438FC8

#align4
loc_8C0C4758:
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C4762:
mov.l r14,@-r15
mov.l r13,@-r15
add 0xFC,r15
mov.w @(loc_8C0C47C6,pc),r3 ; r3 set to 0x2A4
mov 0x00,r7 ; r7 set to 0x00
mov.l @(loc_8C0C47D4,pc),r13 ; r13 set to 0x8C26823c
add r5,r3 ; r3 ??? bc r5 is ???	
mov.l r3,@r15
mov.w @(0x1E,r4),r0 	
mov r0,r14
cmp/pl r14
bf/s loc_8C0C47Ae
mov r7,r5 ; r5 set to 0x00

loc_8C0C477C:
tst r6,r6
bf loc_8C0C478c
mov.w @(loc_8C0C47BE,pc),r0 ; r0 set to 0x12c
mov.b @(r0,r4),r3
tst r3,r3
bt loc_8C0C47Ae
bra loc_8C0C47A6
nop 	

loc_8C0C478C:
mov r6,r0
nop 	
cmp/eq 0x01,r0 	
bf loc_8C0C47A2
mov.l @r13,r0
mov.w @(loc_8C0C47BE,pc),r1 ; r1 set to 0x12c
mov.l @(0x1C,r0),r0
add r4,r1 ; r1 ??? bc r4 is ???	
and 0x01,r0 	
bra loc_8C0C47A6
mov.b r0,@r1

loc_8C0C47A2:
#data 0x900c
#data 0x0474

loc_8C0C47A6:
#data 0x7501
#data 0x8FE735E3
#data 0x5443


loc_8C0C47AE:
tst r6,r6
bf loc_8C0C47E0
cmp/ge r14,r5
bt/s loc_8C0C47D8
mov 0x01,r6 ; r6 set to 0x01
mov.w @(loc_8C0C47BE,pc),r0 ; r0 set to 0x12c
bra loc_8C0C47E0
mov.b r6,@(r0,r4) 	

loc_8C0C47BE:
#data 0x012c
#data 0x00C000Dc
#data 0x01A3

loc_8C0C47C6:
#data 0x02A4

#align4
loc_8C0C47C8:
#data bank04.loc_8c0450C0

loc_8C0C47CC:
#data bank12.loc_8c129560

loc_8C0C47D0:
#data bank12.loc_8c1294C8

loc_8C0C47D4:
#data 0x8C26823c

#align4
loc_8C0C47D8:
#data 0x606362F2
#data 0x80250009


loc_8C0C47E0:
add 0x04,r15
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0C47E8:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x4F222F86
#data 0x6E437FFc
#data 0xEC019334
#data 0xD81AD91b
#data 0x2F32335c
#data 0x6A0385Ef
#data 0x89153CA3

#align4
loc_8C0C4810:
#data 0x5DE3902b
#data 0x222802Dc
#data 0xE0238910
#data 0xE51700Ec
#data 0x0B8C600c
#data 0x07ECE022
#data 0x7B106BBc
#data 0x677C66B3
#data 0x64E3490b
#data 0x3CA37C01
#data 0x6ED38FEa

#align4
loc_8C0C483C:
#data 0xE30162F2
#data 0x600C8425
#data 0x8F013033
#data 0x7D01ED13

#align4
loc_8C0C484C:
#data 0xE51764E3
#data 0x7F0466D3
#data 0xD3074F26
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6432b
#data 0x012C02A4

#align4
loc_8C0C486C:
#data bank15.loc_8c15b9E8

loc_8C0C4870:
#data bank03.loc_8c034F54

loc_8C0C4874:
#data bank03.loc_8c034e8c

loc_8C0C4878:
#data 0x2FE6E022
#data 0x966ADE37
#data 0x074C2FC6
#data 0xF508C736
#data 0x677CC736
#data 0x4708F408
#data 0x77029062
#data 0x37EC4700
#data 0x365C6375
#data 0x6371435a
#data 0x435AF32d
#data 0x2338034d
#data 0xF32DF63c
#data 0xF73CF652
#data 0xF7428D01
#data 0xF64d

loc_8C0C48B6:
#data 0xE024
#data 0xE034F366
#data 0xF230F256
#data 0xF427F261
#data 0xF366E028
#data 0xF256E038
#data 0xF230E601
#data 0xF427F271
#data 0x6C03854f
#data 0x893936C3

#align4
loc_8C0C48DC:
#data 0x5543903d
#data 0x2228025c
#data 0xE0228934
#data 0x074C61E3
#data 0x4708677c
#data 0x37EC4700
#data 0x435A6375
#data 0x075C6371
#data 0x435AF32d
#data 0x4708677c
#data 0x47007702
#data 0xF32DF73c
#data 0xF752371c
#data 0x435A6375
#data 0xF842F83c
#data 0xF32D6371
#data 0xF63C435a
#data 0xF652F32d
#data 0x9017F93c
#data 0x2338034d
#data 0xF9428D02
#data 0xF74DF64d

#align4
loc_8C0C4934:
#data 0xF346E034
#data 0x36C37601
#data 0xF361F370
#data 0xE038F537
#data 0xF380F346
#data 0xF537F391
#data 0x64538FC6

#align4
loc_8C0C4950:
#data 0x000B6CF6
#data 0x02A46EF6
#data 0x012C0130

#align4
loc_8C0C495C:
#data bank15.loc_8c15b8C8
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0C4968:
#data 0x2FC62FE6
#data 0x54457FFc
#data 0xF808C73e
#data 0x5642E022
#data 0x0E6CD73d
#data 0xF508C73d
#data 0x6EECC73d
#data 0x4E08F408
#data 0x4E00906f
#data 0x3E7C9C6c
#data 0x63E5F78d
#data 0x435A3C5c
#data 0xF32D63E1
#data 0x034D435a
#data 0xF63C2338
#data 0xF652F32d
#data 0x8D03F93c
#data 0xC733F942
#data 0xF708F64d

#align4
loc_8C0C49B4:
#data 0xF346E034
#data 0xF370EE01
#data 0xF637F361
#data 0xF346E038
#data 0xF391F380
#data 0x854FF637
#data 0x72FF6203
#data 0x8D353E23
#data 0x2F02

loc_8C0C49D6:
#data 0xE022
#data 0x014C6463
#data 0x611C5642
#data 0x71024108
#data 0x317C4100
#data 0x435A6315
#data 0x016C6311
#data 0x435AF32d
#data 0x4108611c
#data 0x317C4100
#data 0xF32DF63c
#data 0xF6526315
#data 0x6311435a
#data 0xF842F83c
#data 0x435AF32d
#data 0xF32DF73c
#data 0x9028F752
#data 0x034DF93c
#data 0x8D022338
#data 0xF74DF942
#data 0xF64d

loc_8C0C4A26:
#data 0xE034
#data 0x7E01F346
#data 0xF3603E23
#data 0xF637F371
#data 0xF346E038
#data 0xF391F380
#data 0xF6378FCb

#align4
loc_8C0C4A40:
#data 0x600C84C5
#data 0x8B0B8801
#data 0xF3C6E024
#data 0xF266E034
#data 0xF527F231
#data 0xF3C6E028
#data 0xF266E038
#data 0xF527F231

#align4
loc_8C0C4A60:
#data 0x6CF67F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x013002A4
#data 0x41092492

#align4
loc_8C0C4A70:
#data bank15.loc_8c15b8C8
#data 0x3FD55555
#data 0x40092492
#data 0x80000000

#align4
loc_8C0C4A80:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0xFFFB2F86
#data 0xFFDBFFEb
#data 0x4F22FFCb
#data 0x99467FF4
#data 0xE0246C53
#data 0x39CC5E45
#data 0xF396D322
#data 0xF2C6E034
#data 0x65E3E028
#data 0xF2307534
#data 0xF396FF2a
#data 0xF2C6E038
#data 0xF230E004
#data 0x430BFF27
#data 0x640364F3
#data 0x02CC9030
#data 0x89002228
#data 0x644b

loc_8C0C4AD2:
#data 0x7404
#data 0x644CDA18
#data 0x4409FD8d
#data 0x4401E022
#data 0xEB010E44
#data 0x680385Ef
#data 0xFC08C712
#data 0xFE08C713
#data 0xC7133B83
#data 0xFF088D5b

#align4
loc_8C0C4AF8:
#data 0x65E3D20d
#data 0x75345DE2
#data 0x64F3420b
#data 0x90116403
#data 0x233803Cc
#data 0x644B8900

#align4
loc_8C0C4B10:
#data 0x644C7404
#data 0xE0224409
#data 0x0D444401
#data 0x000960B3
#data 0x8B0F8801
#data 0xA01EF4Dc
#data 0x02A4F6Cc
#data 0x000001D2

#align4
loc_8C0C4B30:
#data bank03.loc_8c03362c
#data 0x41092492

#align4
loc_8C0C4B38:
#data bank15.loc_8c15b8C8
#data 0x40092492
#data 0x3FD55555

#align4
loc_8C0C4B44:
#data 0x04ECE022
#data 0x4408644c
#data 0x44007402
#data 0x634534Ac
#data 0x6341435a
#data 0x435AF32d
#data 0xF32DF43c
#data 0xF63CF4F2
#data 0xF6E2

loc_8C0C4B66:
#data 0xE022
#data 0x905704Dc
#data 0x4408644c
#data 0x34AC4400
#data 0x435A6345
#data 0xF32D6341
#data 0x03DD435a
#data 0xF53C2338
#data 0xF5F2F32d
#data 0x8D02F73c
#data 0xF54DF7E2
#data 0xF44d

loc_8C0C4B92:
#data 0xE034
#data 0x7B01F3E6
#data 0xF3403B83
#data 0xFD37F351
#data 0xF3E6E038
#data 0xF371F360
#data 0x8FA5FD37
#data 0x6ED3

loc_8C0C4BAE:
#data 0xE022
#data 0x903304Ec
#data 0x4408644c
#data 0x44007402
#data 0x634534Ac
#data 0x6341435a
#data 0x435AF32d
#data 0x233803Ed
#data 0xF32DF43c
#data 0xF53CF4F2
#data 0xF5E28D01
#data 0xF44d

loc_8C0C4BDA:
#data 0xE034
#data 0xE024F3E6
#data 0xE034F296
#data 0xF321F340
#data 0xE038FC37
#data 0xE028F3E6
#data 0xE038F296
#data 0xF321F350
#data 0xE022FC37
#data 0x0C3403Ec
#data 0x4F267F0c
#data 0xFDF9FCF9
#data 0xFFF9FEF9
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x00000130
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x7FF84F22
#data 0x6E53D245
#data 0x1F612F42
#data 0x33E76321
#data 0xA0238901
#data 0xE40CE000
#data 0x8F013E47
#data 0x6E43ED00
#data 0x4E159C76
#data 0x8B17DB3e
#data 0xE601E503
#data 0xE4004B0b
#data 0x8D0E2008
#data 0xE0266403
#data 0xE02304C5
#data 0xE02004D4
#data 0x043453F1
#data 0x000960E3
#data 0x814FD336
#data 0x62F21434
#data 0x7D011426
#data 0x8BE73DE3
#data 0x000960D3
#data 0x4F267F08
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C4C92:
#data 0x2FE6
#data 0x6E43E023
#data 0x55E603Ec
#data 0x2338944d
#data 0x345C8F1b
#data 0x005C904a
#data 0x8806600c
#data 0x84558B0b
#data 0x8B082008
#data 0x005C9043
#data 0x881D600c
#data 0xE0388B03
#data 0x88FF004c
#data 0x8B01

loc_8C0C4CC6:
#data 0xE002
#data 0x80E4

loc_8C0C4CCA:
#data 0x84E4
#data 0xD12064E3
#data 0x4008600c
#data 0x432B031e
#data 0x6EF6

loc_8C0C4CDA:
#data 0x000b
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C4CDE:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.l r12,@-r15
sts.l pr,@-r15
mov.w @(loc_8C0C4D3A,pc),r12 ; r12 set to 0x2A4
bsr loc_8C0C4DF8
add r13,r12 ; r12 ??? bc r13 is ???	
mov.b @(0x04,r14),r0 	
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov 0x24,r0 ; r0 set to 0x24
fmov.s @(r0,r12),fr3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x28,r0 ; r0 set to 0x28
fmov.s @(r0,r12),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3
mov.l @(loc_8C0C4D54,pc),r0 ; r0 set to 0x8C15BB18
extu.b r3,r3
shll2 r3
mov.l @(r0,r3),r2
mov.w @(loc_8C0C4D40,pc),r0 ; r0 set to 0x1B0
mov.l @(loc_8C0C4D58,pc),r3 ; r3 set to 0x8C0C3DFe
mov.l r2,@(r0,r14) 	
jsr @r3
mov r14,r4
mov r13,r5
bsr loc_8C0C4F34
mov r14,r4
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
mov.l @r15+,r12
mov.l @r15+,r13
bra loc_8C0C4EB0
mov.l @r15+,r14
#data 0x0C05

loc_8C0C4D3A:
#data 0x02A4
#data 0x01D001E9

loc_8C0C4D40:
#data 0x01B0
#data 0x0000
#data 0x8C287AE8

#align4
loc_8C0C4D48:
#data bank04.loc_8c044F12

loc_8C0C4D4C:
#data loc_8c0c4C92

loc_8C0C4D50:
#data bank15.loc_8c15bb20

loc_8C0C4D54:
#data bank15.loc_8c15bb18

loc_8C0C4D58:
#data loc_8c0c3DFe

loc_8C0C4D5C:
#data 0x2FD62FE6
#data 0x7FFC4F22
#data 0x6E539392
#data 0xD44B6D43
#data 0xE03C33Ec
#data 0x034D2F32
#data 0x024CE03b
#data 0x633DE101
#data 0x412C622c
#data 0x8B162318
#data 0x65E3D345
#data 0x64D3430b
#data 0xB0D165E3
#data 0x65E364D3
#data 0x64D3B08c
#data 0xE03864F2
#data 0x6043044c
#data 0x88020009
#data 0x60438903
#data 0x88FF0009
#data 0x8B01

loc_8C0C4DAE:
#data 0xE002
#data 0x80D4

loc_8C0C4DB2:
#data 0x7F04
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0C4DBC:
#data 0xEE012FE6
#data 0x6D432FD6
#data 0x2FB62FC6
#data 0x4F222FA6
#data 0xDA3485Df
#data 0x3EC36C03
#data 0xEB008D07

#align4
loc_8C0C4DD8:
#data 0x54D39059
#data 0x04B44A0b
#data 0x3EC37E01
#data 0x8BF8

loc_8C0C4DE6:
#data 0x4A0b
#data 0x4F2664D3
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0C4DF8:
#data 0x6E532FE6
#data 0xE5002FD6
#data 0xEC072FC6
#data 0x854F4F22
#data 0x46156603
#data 0xE7018F32

#align4
loc_8C0C4E10:
#data 0x6D43913e
#data 0x903C923c
#data 0xD322314c
#data 0x32EC430b
#data 0x61D39035
#data 0x04747150
#data 0x804284E2
#data 0x804184E1
#data 0xF3E6E050
#data 0xE054F437
#data 0xF437F3E6
#data 0x03EC902a
#data 0x70010434
#data 0x042402Ec
#data 0x03ECE030
#data 0x725062E3
#data 0xD3150434
#data 0xE00C430b
#data 0xD313E024
#data 0x02EC61D3
#data 0x723462E3
#data 0x04C47134
#data 0xE00C430b
#data 0x35637501
#data 0x54438FCe

#align4
loc_8C0C4E74:
#data 0x65D3D30d
#data 0x64E3430b
#data 0xE2FF900b
#data 0x4F260D24
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x012C02A4
#data 0x00C000Dc
#data 0x015A01A3
#data 0x8C2895F0

#align4
loc_8C0C4E9C:
#data loc_8c0c3D58

loc_8C0C4EA0:
#data bank04.loc_8c0450C0

loc_8C0C4EA4:
#data bank12.loc_8c129560

loc_8C0C4EA8:
#data bank12.loc_8c1294C8

loc_8C0C4EAC:
#data bank05.loc_8c052618

loc_8C0C4EB0:
#data 0x6E432FE6
#data 0x2FC62FD6
#data 0x2FA62FB6
#data 0x4F222F96
#data 0xD91985Ef
#data 0x7AFF6A03
#data 0x4A15DC18
#data 0x8F116403
#data 0xED00

loc_8C0C4ED2:
#data 0xE023
#data 0xE51700Ec
#data 0x0B9C600c
#data 0x07ECE022
#data 0x7B106BBc
#data 0x677C66B3
#data 0x64E34C0b
#data 0x3DA37D01
#data 0x5EE38FEf

#align4
loc_8C0C4EF4:
#data 0x00ECE022
#data 0xE50FE71f
#data 0x7002600c
#data 0x47212709
#data 0x4721E60a
#data 0x64E34C0b
#data 0x90094F26
#data 0xD30764E3
#data 0x05EE69F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6432b
#data 0x000001C8

#align4
loc_8C0C4F28:
#data bank15.loc_8c15b9E8

loc_8C0C4F2C:
#data bank03.loc_8c034F54

loc_8C0C4F30:
#data bank04.loc_8c04CC1c

loc_8C0C4F34:
#data 0xD650E022
#data 0xC750074c
#data 0xC750F508
#data 0xF408677c
#data 0x90964708
#data 0x91937702
#data 0x376C4700
#data 0x315C6375
#data 0x6371435a
#data 0x435AF32d
#data 0x2338034d
#data 0xF32DF63c
#data 0xF73CF652
#data 0xF7428D01
#data 0xF64d

loc_8C0C4F6E:
#data 0xE024
#data 0xE034F316
#data 0xE701F256
#data 0xF261F230
#data 0xE028F427
#data 0xE038F316
#data 0xF230F256
#data 0xF427F271
#data 0x6203854f
#data 0x372372Ff
#data 0x65038D35

#align4
loc_8C0C4F98:
#data 0x5543E022
#data 0x611C014c
#data 0x41004108
#data 0x6315316c
#data 0x6311435a
#data 0xF32D015c
#data 0x611C435a
#data 0x71024108
#data 0xF73C4100
#data 0x316CF32d
#data 0x6315F752
#data 0xF83C435a
#data 0x6311F842
#data 0x435AF32d
#data 0xF32DF63c
#data 0xF93CF652
#data 0x034D904d
#data 0x8D022338
#data 0xF64DF942
#data 0xF74d

loc_8C0C4FE6:
#data 0xE034
#data 0x7701F346
#data 0xF3703723
#data 0xF537F361
#data 0xF346E038
#data 0xF391F380
#data 0x8FCBF537
#data 0x6453

loc_8C0C5002:
#data 0xE022
#data 0x024C5543
#data 0x622C005c
#data 0x4208F25c
#data 0x362C4200
#data 0x6365D21b
#data 0x7002600c
#data 0x6361435a
#data 0x2609E61f
#data 0x4621F32d
#data 0x435A4621
#data 0x46004600
#data 0xF63C362c
#data 0x6365F32d
#data 0x435AF652
#data 0xF742F73c
#data 0x6361F32d
#data 0xF522F53c
#data 0x9014435a
#data 0xF32DF24c
#data 0x2338034d
#data 0x8D02F43c
#data 0xF54DF422
#data 0xF64d

loc_8C0C505E:
#data 0xE034
#data 0xF360F346
#data 0xF537F351
#data 0xF346E038
#data 0xF341F370
#data 0xF537000b
;-------------------------------------------------------------------------------
#data 0x013002A4

#align4
loc_8C0C5078:
#data bank15.loc_8c15b8C8
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0C5084:
#data bank15.loc_8c15b9C8
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x4F222FA6
#data 0xD2467FF8
#data 0x2F426D53
#data 0x63211F61
#data 0x890133D7
#data 0xE000A027
#data 0x3D47E40c
#data 0xEE008F01
#data 0x9C766D43
#data 0xDB3F4D15
#data 0xE5038B1a
#data 0x4B0BE601
#data 0x2008E400
#data 0x64038D11
#data 0x04C5E026
#data 0x04E4E023
#data 0x53F1E020
#data 0x60D30434
#data 0xD3370009
#data 0x814F2EE8
#data 0x62F21434
#data 0x14268F01
#data 0x7E016A43
#data 0x8BE43ED3
#data 0x60E31A45
#data 0x7F080009
#data 0x6AF64F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C5106:
mov.l r14,@-r15
mov 0x23,r0 ; r0 set to 0x23
mov r4,r14
mov.b @(r0,r14),r3
tst r3,r3
bf/s loc_8C0C5124
mov.l @(0x18,r14),r5
mov.b @(0x04,r14),r0 	
mov r14,r4
mov.l @(loc_8C0C51BC,pc),r1 ; r1 set to 0x8C15BB58
extu.b r0,r0 ; r0 set to 0x23
shll2 r0 ; r0 set to 0x8c
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0C5124:
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0C5128:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
bsr loc_8C0C52Ac
mov r5,r13
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0C51C0,pc),r3 ; r3 set to 0x8C15BB3c
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov 0x00,r0 ; r0 set to 0x00
mov.b r0,@(0x05,r14) 	
mov.w @(loc_8C0C51A4,pc),r0 ; r0 set to 0x1B0
mov.l r3,@(r0,r14) 	
mov.l @(loc_8C0C51C4,pc),r3 ; r3 set to 0x8C0C3DFe
jsr @r3
mov r14,r4
mov.l @(loc_8C0C51C8,pc),r2 ; r2 set to 0x8C0C3D58
mov r13,r5
jsr @r2
mov r14,r4
mov r13,r5
bsr loc_8C0C53D4
mov r14,r4
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
mov.l @r15+,r13
bra loc_8C0C5356
mov.l @r15+,r14

#align4
loc_8C0C5164:
#data 0x2FD62FE6
#data 0x7FFC4F22
#data 0x6D53931b
#data 0x33DC6E43
#data 0x84D52F32
#data 0x8F0E2008
#data 0x9013E402
#data 0x600C00Dc
#data 0x8B08881a
#data 0x00DC900f
#data 0x8814600c
#data 0x900B8B03
#data 0x222802Dc
#data 0x8918

loc_8C0C519A:
#data 0x6043
#data 0xA0420009
#data 0x0C0680E4

loc_8C0C51A4:
#data 0x01B0
#data 0x02A4
#data 0x015901D0
#data 0x00000158
#data 0x8C287AE8

#align4
loc_8C0C51B4:
#data bank04.loc_8c044F12

loc_8C0C51B8:
#data loc_8c0c5106

loc_8C0C51BC:
#data bank15.loc_8c15bb58

loc_8C0C51C0:
#data bank15.loc_8c15bb3c

loc_8C0C51C4:
#data loc_8c0c3DFe

loc_8C0C51C8:
#data loc_8c0c3D58

loc_8C0C51CC:
#data 0xE03CD534
#data 0x025DE101
#data 0x035CE03b
#data 0x633C622d
#data 0x2218413c
#data 0x84E58B39
#data 0x8B112008
#data 0xB1EF65D3
#data 0x65D364E3
#data 0x64E3B0B1
#data 0xE13A60F2
#data 0x88FF001c
#data 0x84E58B2b
#data 0x7001E30a
#data 0xE02180E5
#data 0x0E34A025

#align4
loc_8C0C520C:
#data 0x03ECE021
#data 0x0E3473Ff
#data 0x2338633c
#data 0x60438B0c
#data 0x80E40009
#data 0x903BE300
#data 0x0E34

loc_8C0C5226:
#data 0x64E3
#data 0x7F0465D3
#data 0x6DF64F26
#data 0x6EF6A016

#align4
loc_8C0C5234:
#data 0xB07C65D3
#data 0xD21A64E3
#data 0x420B65D3
#data 0x65D364E3
#data 0x64E3B136
#data 0x65D364E3
#data 0x4F267F04
#data 0xA0806DF6
#data 0x6EF6

loc_8C0C5256:
#data 0x7F04
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0C5260:
#data 0xEE012FE6
#data 0x6D432FD6
#data 0x2FB62FC6
#data 0x4F222FA6
#data 0xDA0D85Df
#data 0x3EC36C03
#data 0xEB008D07

#align4
loc_8C0C527C:
#data 0x54D3900e
#data 0x04B44A0b
#data 0x3EC37E01
#data 0x8BF8

loc_8C0C528A:
#data 0x4A0b
#data 0x4F2664D3
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x0000012c
#data 0x8C2895F0

#align4
loc_8C0C52A4:
#data loc_8c0c3D58

loc_8C0C52A8:
#data bank04.loc_8c0450C0

loc_8C0C52AC:
#data 0xE6002FE6
#data 0xED082FD6
#data 0x854F4F22
#data 0x47156703
#data 0xEE018F35

#align4
loc_8C0C52C0:
#data 0x90779177
#data 0x314CD33d
#data 0x430B9273
#data 0x9072325c
#data 0x71506143
#data 0x845204E4
#data 0x84518042
#data 0xE0508041
#data 0xF437F356
#data 0xF356E054
#data 0x9065F437
#data 0x0434035c
#data 0x025C7001
#data 0xE0300424
#data 0x6253035c
#data 0x04347250
#data 0x430BD32f
#data 0xE024E00c
#data 0x025C6143
#data 0x04247134
#data 0x035C6253
#data 0x04347234
#data 0xD329E031
#data 0x430B04D4
#data 0x7601E00c
#data 0x8FCB3673
#data 0x5443

loc_8C0C532A:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C5332:
#data 0x854f
#data 0x6603D723
#data 0x8F0A4615
#data 0xE500

loc_8C0C533E:
#data 0x6072
#data 0x91387501
#data 0x50073563
#data 0xC901314c
#data 0x8FF62100
#data 0x5443

loc_8C0C5352:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0C5356:
#data 0x2FE6
#data 0x2FD66E43
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x85EF4F22
#data 0x6C03D917
#data 0xDA177CFf
#data 0x64034C15
#data 0xED008F11

#align4
loc_8C0C5378:
#data 0x00ECE023
#data 0x600CE517
#data 0xE0220B9c
#data 0x6BBC07Ec
#data 0x66B37B10
#data 0x4A0B677c
#data 0x7D0164E3
#data 0x8FEF3DC3
#data 0x5EE3

loc_8C0C539A:
#data 0x4F26
#data 0xE614D20c
#data 0xE51764E3
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x422B6DF6
#data 0x00DC6EF6
#data 0x012C00C0
#data 0x000001A3

#align4
loc_8C0C53BC:
#data bank12.loc_8c129560

loc_8C0C53C0:
#data bank12.loc_8c1294C8
#data 0x8C26823c

#align4
loc_8C0C53C8:
#data bank15.loc_8c15b9E8

loc_8C0C53CC:
#data bank03.loc_8c034F54

loc_8C0C53D0:
#data bank03.loc_8c034e8c

loc_8C0C53D4:
#data 0xD634E022
#data 0xC734014c
#data 0xC734F508
#data 0xF408611c
#data 0x905D4108
#data 0x975A7102
#data 0x316C4100
#data 0x375C6315
#data 0x6311435a
#data 0x435AF32d
#data 0x2338034d
#data 0xF32DF63c
#data 0xF73CF652
#data 0xF7428D01
#data 0xF64d

loc_8C0C540E:
#data 0xE024
#data 0xE034F376
#data 0xF230F256
#data 0xF427F261
#data 0xF376E028
#data 0xF256E038
#data 0xF230E701
#data 0xF427F271
#data 0x6203854f
#data 0x89343723

#align4
loc_8C0C5434:
#data 0x5543E022
#data 0x611C014c
#data 0x41004108
#data 0x6315316c
#data 0x6311435a
#data 0xF32D015c
#data 0x611C435a
#data 0x71024108
#data 0xF63C4100
#data 0x316CF32d
#data 0x6315F652
#data 0xF83C435a
#data 0x6311F842
#data 0x435AF32d
#data 0xF32DF73c
#data 0xF93CF752
#data 0x034D9016
#data 0x8D022338
#data 0xF74DF942
#data 0xF64d

loc_8C0C5482:
#data 0xE034
#data 0x7701F346
#data 0xF3603723
#data 0xF537F371
#data 0xF346E038
#data 0xF391F380
#data 0x8FCBF537
#data 0x6453

loc_8C0C549E:
#data 0x000b
#data 0x02A40009
#data 0x00000130

#align4
loc_8C0C54A8:
#data bank15.loc_8c15b8C8
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0C54B4:
#data 0x2FC62FE6
#data 0x54457FFc
#data 0xF808C73e
#data 0x5642E022
#data 0x0E6CD73d
#data 0xF508C73d
#data 0x6EECC73d
#data 0x4E08F408
#data 0x4E00906f
#data 0x3E7C9C6c
#data 0x63E5F78d
#data 0x435A3C5c
#data 0xF32D63E1
#data 0x034D435a
#data 0xF63C2338
#data 0xF652F32d
#data 0x8D03F93c
#data 0xC733F942
#data 0xF708F64d

#align4
loc_8C0C5500:
#data 0xF346E034
#data 0xF370EE01
#data 0xF637F361
#data 0xF346E038
#data 0xF391F380
#data 0x854FF637
#data 0x72FF6203
#data 0x8D353E23
#data 0x2F02

loc_8C0C5522:
#data 0xE022
#data 0x014C6463
#data 0x611C5642
#data 0x71024108
#data 0x317C4100
#data 0x435A6315
#data 0x016C6311
#data 0x435AF32d
#data 0x4108611c
#data 0x317C4100
#data 0xF32DF63c
#data 0xF6526315
#data 0x6311435a
#data 0xF842F83c
#data 0x435AF32d
#data 0xF32DF73c
#data 0x9028F752
#data 0x034DF93c
#data 0x8D022338
#data 0xF74DF942
#data 0xF64d

loc_8C0C5572:
#data 0xE034
#data 0x7E01F346
#data 0xF3603E23
#data 0xF637F371
#data 0xF346E038
#data 0xF391F380
#data 0xF6378FCb

#align4
loc_8C0C558C:
#data 0x02CCE03a
#data 0x8B0B2228
#data 0xF3C6E024
#data 0xF266E034
#data 0xF527F231
#data 0xF3C6E028
#data 0xF266E038
#data 0xF527F231

#align4
loc_8C0C55AC:
#data 0x6CF67F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x013002A4
#data 0xC0892492

#align4
loc_8C0C55BC:
#data bank15.loc_8c15b8C8
#data 0x3FD55555
#data 0x40092492
#data 0x80000000

#align4
loc_8C0C55CC:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0xFFFB2F86
#data 0xFFDBFFEb
#data 0x4F22FFCb
#data 0x99467FF4
#data 0xE0246C53
#data 0x39CC5E45
#data 0xF396D322
#data 0xF2C6E034
#data 0x65E3E028
#data 0xF2307534
#data 0xF396FF2a
#data 0xF2C6E038
#data 0xF230E004
#data 0x430BFF27
#data 0x640364F3
#data 0x02CC9030
#data 0x89002228
#data 0x644b

loc_8C0C561E:
#data 0x7404
#data 0x644CDA18
#data 0x4409FD8d
#data 0x4401E022
#data 0xEB010E44
#data 0x680385Ef
#data 0xFC08C712
#data 0xFE08C713
#data 0xC7133B83
#data 0xFF088D5b

#align4
loc_8C0C5644:
#data 0x65E3D20d
#data 0x75345DE2
#data 0x64F3420b
#data 0x90116403
#data 0x233803Cc
#data 0x644B8900

#align4
loc_8C0C565C:
#data 0x644C7404
#data 0xE0224409
#data 0x0D444401
#data 0x000960B3
#data 0x8B0F8801
#data 0xA01EF4Dc
#data 0x02A4F6Cc
#data 0x000001D2

#align4
loc_8C0C567C:
#data bank03.loc_8c03362c
#data 0xC0892492

#align4
loc_8C0C5684:
#data bank15.loc_8c15b8C8
#data 0x40092492
#data 0x3FD55555

#align4
loc_8C0C5690:
#data 0x04ECE022
#data 0x4408644c
#data 0x44007402
#data 0x634534Ac
#data 0x6341435a
#data 0x435AF32d
#data 0xF32DF43c
#data 0xF63CF4F2
#data 0xF6E2

loc_8C0C56B2:
#data 0xE022
#data 0x905704Dc
#data 0x4408644c
#data 0x34AC4400
#data 0x435A6345
#data 0xF32D6341
#data 0x03DD435a
#data 0xF53C2338
#data 0xF5F2F32d
#data 0x8D02F73c
#data 0xF54DF7E2
#data 0xF44d

loc_8C0C56DE:
#data 0xE034
#data 0x7B01F3E6
#data 0xF3403B83
#data 0xFD37F351
#data 0xF3E6E038
#data 0xF371F360
#data 0x8FA5FD37
#data 0x6ED3

loc_8C0C56FA:
#data 0xE022
#data 0x903304Ec
#data 0x4408644c
#data 0x44007402
#data 0x634534Ac
#data 0x6341435a
#data 0x435AF32d
#data 0x233803Ed
#data 0xF32DF43c
#data 0xF53CF4F2
#data 0xF5E28D01
#data 0xF44d

loc_8C0C5726:
#data 0xE034
#data 0xE024F3E6
#data 0xE034F296
#data 0xF321F340
#data 0xE038FC37
#data 0xE028F3E6
#data 0xE038F296
#data 0xF321F350
#data 0xE022FC37
#data 0x0C3403Ec
#data 0x4F267F0c
#data 0xFDF9FCF9
#data 0xFFF9FEF9
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x00000130
#data 0x4F222FE6
#data 0x6E437FF8
#data 0x00096053
#data 0xE503D351
#data 0x2F6080F4
#data 0x430BE600
#data 0x20086463
#data 0x64038D14
#data 0xE0269291
#data 0xE120D34c
#data 0x958D314c
#data 0x04251434
#data 0x14E6354c
#data 0x804184E1
#data 0x210084F4
#data 0x63F0E021
#data 0x90820434
#data 0x253103Ed
#data 0x00096043
#data 0x4F267F08
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0C57C0:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0C58C8,pc),r0 ; r0 set to 0x8C15BB64
extu.b r3,r3
mov.l @(0x18,r14),r5
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0C57D6:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0C58B8,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0C58B8,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0C58CC,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0C58BA,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0C58BC,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0C58BE,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0C58D0,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0C58BC,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3
tst r3,r3
bf loc_8C0C5852
mov.w @(loc_8C0C58B6,pc),r0 ; r0 set to 0x158
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
bra loc_8C0C585c
mov.b r4,@(r0,r14) 	

loc_8C0C5852:
mov.w @(loc_8C0C58B6,pc),r0 ; r0 set to 0x158
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov.b r4,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	

loc_8C0C585C:
mov.w @(loc_8C0C58B6,pc),r0 ; r0 set to 0x158, r0 set to 0x158
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
mov.l @(loc_8C0C58D4,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
mov.b @(r0,r14),r6
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???, r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
bra loc_8C0C5896
mov.l @r15+,r14

#align4
loc_8C0C5874:
#data 0x4F222FE6
#data 0x430BD317
#data 0x600E6E43
#data 0x89054011
#data 0xE30084E4
#data 0x80E47001
#data 0x0E349016

#align4
loc_8C0C5890:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C5896:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0C58B4,pc),r4 ; r4 set to 0xCc
mov.w @(loc_8C0C58B6,pc),r0 ; r0 set to 0x158
add r14,r4 ; r4 ??? bc r14 is ???	
mov.w @r4,r2
mov.w @(r0,r5),r3
cmp/eq r2,r3
bt loc_8C0C58Dc
mov.b @(0x04,r14),r0 	
add 0x01,r0 ; r0 set to 0x159
mov.b r0,@(0x04,r14) 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x0D00

loc_8C0C58B4:
#data 0x00Cc

loc_8C0C58B6:
#data 0x0158

loc_8C0C58B8:
#data 0x00Dc

loc_8C0C58BA:
#data 0x00C0

loc_8C0C58BC:
#data 0x012c

loc_8C0C58BE:
#data 0x01A3

#align4
loc_8C0C58C0:
#data bank04.loc_8c044F12

loc_8C0C58C4:
#data loc_8c0c57C0

loc_8C0C58C8:
#data bank15.loc_8c15bb64

loc_8C0C58CC:
#data bank12.loc_8c129560

loc_8C0C58D0:
#data bank12.loc_8c1294C8

loc_8C0C58D4:
#data bank03.loc_8c034e8c

loc_8C0C58D8:
#data bank03.loc_8c034dee


loc_8C0C58DC:
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0C5A24,pc),r1 ; r1 set to 0x8C15BB88
fmov.s @(r0,r5),fr3
mov r14,r4
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r3
mov.b r3,@(r0,r14) 	
mov.b @(0x05,r14),r0 	
extu.b r0,r0 ; r0 set to 0x24
shll2 r0 ; r0 set to 0x90
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x000b
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C5902:
mov r4,r3
mov.l @(loc_8C0C5A28,pc),r1 ; r1 set to 0x8C15BB8c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0C5914:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0C5A18,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0C5A18,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0C5A2C,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0C5A1A,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0C5A1C,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0C5A1E,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0C5A30,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0C5A1C,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3
tst r3,r3
bf loc_8C0C599e
mov.w @(loc_8C0C5A20,pc),r0 ; r0 set to 0x158
mov 0x02,r3 ; r3 set to 0x02
mov 0xFF,r2 ; r2 set to 0xFFFFFFFf
mov.b r3,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
bra loc_8C0C59A8
mov.b r2,@(r0,r14) 	

loc_8C0C599E:
mov.w @(loc_8C0C5A20,pc),r0 ; r0 set to 0x158
mov 0x03,r1 ; r1 set to 0x03
mov.b r1,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r4,@(r0,r14) 	

loc_8C0C59A8:
mov.w @(loc_8C0C5A20,pc),r0 ; r0 set to 0x158, r0 set to 0x158
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
mov.l @(loc_8C0C5A34,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
mov.b @(r0,r14),r6
jsr @r3
mov r14,r4
mov.w @(loc_8C0C5A22,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov r13,r5 ; r5 ??? bc r13 is ???, r5 ??? bc r13 is ???	
mov 0x01,r3 ; r3 set to 0x01, r3 set to 0x01
mov r14,r4
mov.w @(r0,r14),r2
xor r3,r2
mov.w r2,@(r0,r14) 	
lds.l @r15+,pr 	
mov.l @r15+,r13
bra loc_8C0C59Ec
mov.l @r15+,r14

loc_8C0C59CA:
#data 0x2FE6
#data 0xD31A4F22
#data 0x6E43430b
#data 0x4011600e
#data 0x84E48905
#data 0x7001E300
#data 0x901B80E4
#data 0x0E34

loc_8C0C59E6:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0C59EC:
mov 0x24,r0 ; r0 set to 0x24
mov.l r14,@-r15
mov.b @(r0,r5),r3
mov r4,r14
mov.l @(loc_8C0C5A3C,pc),r1 ; r1 set to 0x8C15BB9c
mov r14,r4
mov.b r3,@(r0,r14) 	
mov.b @(0x05,r14),r0 	
extu.b r0,r0 ; r0 set to 0x24
shll2 r0 ; r0 set to 0x90
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0C5A06:
mov r4,r3
mov.l @(loc_8C0C5A40,pc),r1 ; r1 set to 0x8C15BBA0
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0C5A18:
#data 0x00Dc

loc_8C0C5A1A:
#data 0x00C0

loc_8C0C5A1C:
#data 0x012c

loc_8C0C5A1E:
#data 0x01A3

loc_8C0C5A20:
#data 0x0158

loc_8C0C5A22:
#data 0x0130

#align4
loc_8C0C5A24:
#data bank15.loc_8c15bb88

loc_8C0C5A28:
#data bank15.loc_8c15bb8c

loc_8C0C5A2C:
#data bank12.loc_8c129560

loc_8C0C5A30:
#data bank12.loc_8c1294C8

loc_8C0C5A34:
#data bank03.loc_8c034e8c

loc_8C0C5A38:
#data bank03.loc_8c034dee

loc_8C0C5A3C:
#data bank15.loc_8c15bb9c

loc_8C0C5A40:
#data bank15.loc_8c15bbA0


loc_8C0C5A44:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0C5B3C,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0C5B3C,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0C5B48,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0C5B3E,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0C5B40,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0C5B42,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0C5B4C,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.l @(loc_8C0C5B50,pc),r3 ; r3 set to 0x8C034E8c
mov.b @(r0,r13),r2
mov 0x17,r5 ; r5 set to 0x17
mov 0x04,r6 ; r6 set to 0x04
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0C5B40,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r4,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???	
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
bra loc_8C0C5AE8
mov.l @r15+,r14

loc_8C0C5AC6:
#data 0x2FE6
#data 0xD3224F22
#data 0x6E43430b
#data 0x4011600e
#data 0x84E48905
#data 0x7001E300
#data 0x902F80E4
#data 0x0E34

loc_8C0C5AE2:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0C5AE8:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0C5B44,pc),r4 ; r4 set to 0xCc
mov.w @(loc_8C0C5B46,pc),r0 ; r0 set to 0x158
add r14,r4 ; r4 ??? bc r14 is ???	
mov.w @r4,r2
mov.w @(r0,r5),r3
cmp/eq r2,r3
bt loc_8C0C5B04
mov.b @(0x04,r14),r0 	
add 0x01,r0 ; r0 set to 0x159
mov.b r0,@(0x04,r14) 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0C5B04:
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0C5B58,pc),r1 ; r1 set to 0x8C15BBB0
fmov.s @(r0,r5),fr3
mov 0x07,r3 ; r3 set to 0x07
mov r14,r4
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14) 	
mov.b @(0x05,r14),r0 	
extu.b r0,r0 ; r0 set to 0x24
shll2 r0 ; r0 set to 0x90
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x000b
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C5B2A:
mov r4,r3
mov.l @(loc_8C0C5B5C,pc),r1 ; r1 set to 0x8C15BBB4
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0C5B3C:
#data 0x00Dc

loc_8C0C5B3E:
#data 0x00C0

loc_8C0C5B40:
#data 0x012c

loc_8C0C5B42:
#data 0x01A3

loc_8C0C5B44:
#data 0x00Cc

loc_8C0C5B46:
#data 0x0158

#align4
loc_8C0C5B48:
#data bank12.loc_8c129560

loc_8C0C5B4C:
#data bank12.loc_8c1294C8

loc_8C0C5B50:
#data bank03.loc_8c034e8c

loc_8C0C5B54:
#data bank03.loc_8c034dee

loc_8C0C5B58:
#data bank15.loc_8c15bbB0

loc_8C0C5B5C:
#data bank15.loc_8c15bbB4

loc_8C0C5B60:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x4F229187
#data 0x31EC84E4
#data 0x70019283
#data 0x80E4D344
#data 0x430B9080
#data 0x907E32Dc
#data 0x61E3E401
#data 0x0E447150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC9070
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD3360E34
#data 0xE00C430b
#data 0x02DCE024
#data 0x0E24E3Ff
#data 0x0E44905d
#data 0x0E34E031
#data 0xF3D6E03c
#data 0xE021FE37
#data 0xD02F03Ec
#data 0x4300633c
#data 0x2228023c
#data 0x90508904
#data 0x02EDE301
#data 0x0E25223a

#align4
loc_8C0C5BE8:
#data 0xD32BE021
#data 0xE51706Ec
#data 0x666CD028
#data 0x066C4600
#data 0x64E3430b
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6A003


loc_8C0C5C08:
mov.l @(loc_8C0C5C9C,pc),r3 ; r3 set to 0x8C034DEe
jmp @r3
nop 	

loc_8C0C5C0E:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0C5C84,pc),r4 ; r4 set to 0xCc
mov.w @(loc_8C0C5C86,pc),r0 ; r0 set to 0x158
add r14,r4 ; r4 ??? bc r14 is ???	
mov.w @r4,r2
mov.w @(r0,r5),r3
cmp/eq r2,r3
bt loc_8C0C5C2a
mov.b @(0x04,r14),r0 	
add 0x01,r0 ; r0 set to 0x159
mov.b r0,@(0x04,r14) 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0C5C2A:
mov 0x24,r0 ; r0 set to 0x24
mov.l @(loc_8C0C5CA0,pc),r1 ; r1 set to 0x8C15BBCc
mov.b @(r0,r5),r3
mov r14,r4
mov.b r3,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r14) 	
mov.b @(0x05,r14),r0 	
extu.b r0,r0 ; r0 set to 0x38
shll2 r0 ; r0 set to 0xE0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0C5C50:
mov r4,r3
mov.l @(loc_8C0C5CA4,pc),r1 ; r1 set to 0x8C15BBD0
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0C5C62:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0C5C7E,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0C5C70:
mov.l @(loc_8C0C5CA8,pc),r3 ; r3 set to 0x8C0450C0
mov 0x00,r2 ; r2 set to 0x00
mov.w @(loc_8C0C5C7E,pc),r0 ; r0 set to 0x12c
jmp @r3
mov.b r2,@(r0,r4) 	
#data 0x00Dc
#data 0x00C0

loc_8C0C5C7E:
#data 0x012c
#data 0x013001A3

loc_8C0C5C84:
#data 0x00Cc

loc_8C0C5C86:
#data 0x0158

#align4
loc_8C0C5C88:
#data bank12.loc_8c129560

loc_8C0C5C8C:
#data bank12.loc_8c1294C8

loc_8C0C5C90:
#data bank15.loc_8c15bbC4

loc_8C0C5C94:
#data bank15.loc_8c15bbC5

loc_8C0C5C98:
#data bank03.loc_8c034e8c

loc_8C0C5C9C:
#data bank03.loc_8c034dee

loc_8C0C5CA0:
#data bank15.loc_8c15bbCc

loc_8C0C5CA4:
#data bank15.loc_8c15bbD0

loc_8C0C5CA8:
#data bank04.loc_8c0450C0

loc_8C0C5CAC:
#data 0x7FF44F22
#data 0x2F42D353
#data 0xE5031F52
#data 0xE6011F61
#data 0xE400430b
#data 0x8D122008
#data 0x93916403
#data 0x9190E026
#data 0xE0200435
#data 0x042452F2
#data 0x53F1E021
#data 0x0434D24a
#data 0x63F21424
#data 0x60F21436
#data 0x600C001c
#data 0x814e

loc_8C0C5CEA:
#data 0x7F0c
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0C5CF2:
mov 0x20,r0 ; r0 set to 0x20
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(loc_8C0C5E08,pc),r0 ; r0 set to 0x8C15BC48
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

loc_8C0C5D06:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0C5E0C,pc),r1 ; r1 set to 0x8C15BC50
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0C5D1A:
#data 0x2FE6
#data 0x93676E43
#data 0x6D532FD6
#data 0x4F229165
#data 0x31EC84E4
#data 0x70019261
#data 0xE02280E4
#data 0x905D0E34
#data 0x430BD335
#data 0x905A32Dc
#data 0x61E3E201
#data 0x0E247150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC904c
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD3280E34
#data 0xE00C430b
#data 0xF48DE024
#data 0x0E2402Dc
#data 0xFE47E068
#data 0xFE47E06c
#data 0x03DCE024
#data 0x0E34E2F8
#data 0x0E24E031
#data 0x03ECE021
#data 0x8B072338
#data 0xE601E500
#data 0x64D3BF84
#data 0xE602E500
#data 0x64D3BF80

#align4
loc_8C0C5DAC:
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6

loc_8C0C5DB6:
#data 0x2FE6
#data 0x4F222FD6
#data 0x6D537FFc
#data 0x200884D5
#data 0x6E438F0f
#data 0x00DC9017
#data 0x8815600c
#data 0x90138B09
#data 0x222802Dc
#data 0x90088B05
#data 0x85EE01Dc
#data 0x3100611c
#data 0x8918

loc_8C0C5DE6:
#data 0xE002
#data 0x80E4A095
#data 0x01590E00
#data 0x00DC00Ff
#data 0x012C00C0
#data 0x01D001A3
#data 0x000001E9

#align4
loc_8C0C5E00:
#data bank04.loc_8c044F12

loc_8C0C5E04:
#data loc_8c0c5CF2

loc_8C0C5E08:
#data bank15.loc_8c15bc48

loc_8C0C5E0C:
#data bank15.loc_8c15bc50

loc_8C0C5E10:
#data bank12.loc_8c129560

loc_8C0C5E14:
#data bank12.loc_8c1294C8

loc_8C0C5E18:
#data 0xE03CD44a
#data 0x024DE501
#data 0x034CE03b
#data 0x622D6153
#data 0x413C633c
#data 0x8B752218
#data 0x01DCE024
#data 0x0E14E3F8
#data 0x0E34E031
#data 0x04DC907f
#data 0x89682448
#data 0x0E54907c
#data 0x03ECE022
#data 0x3430633c
#data 0x0E448937
#data 0x02ECE021
#data 0x2439E30f
#data 0x622CD03a
#data 0x342C4408
#data 0xE5176243
#data 0x062C2F42
#data 0x420BD237
#data 0xE02264E3
#data 0x00ECD436
#data 0x33ECE321
#data 0x6330600c
#data 0x70FFC90f
#data 0x633C4008
#data 0x43004000
#data 0x4000303c
#data 0x6345340c
#data 0xF208C72f
#data 0x435AE05c
#data 0xF322F32d
#data 0xC72DFE37
#data 0xF1086341
#data 0x435AE060
#data 0xF312F32d
#data 0x9046FE37
#data 0x233803Dc
#data 0xE05C8903
#data 0xF34DF3E6
#data 0xFE37

loc_8C0C5EC2:
#data 0x62D3
#data 0x61E3D325
#data 0x71347234
#data 0xE00C430b
#data 0x64E3E15c
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
#data 0x7F04FE27
#data 0xD3144F26
#data 0x432B6DF6
#data 0x6EF6

loc_8C0C5F16:
#data 0x9013
#data 0x0E34E300

#align4
loc_8C0C5F1C:
#data 0x4F267F04
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C5F26:
mov.l @(loc_8C0C5F64,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0C5F2C:
mov r4,r3
mov.l @(loc_8C0C5F68,pc),r1 ; r1 set to 0x8C15BC5c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x0140
#data 0x01D2012c
#data 0x8C2895F0

#align4
loc_8C0C5F48:
#data bank15.loc_8c15bbE0

loc_8C0C5F4C:
#data bank03.loc_8c034e8c

loc_8C0C5F50:
#data bank15.loc_8c15bbF8
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0C5F5C:
#data bank12.loc_8c1294C8

loc_8C0C5F60:
#data bank03.loc_8c034dee

loc_8C0C5F64:
#data bank04.loc_8c0450C0

loc_8C0C5F68:
#data bank15.loc_8c15bc5c


loc_8C0C5F6C:
mov.w @(loc_8C0C6006,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.w @(loc_8C0C6006,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(0x18,r4),r5
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0C6008,pc),r0 ; r0 set to 0xC0
mov.l @(loc_8C0C6010,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0C600A,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0C600C,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0C6014,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x00,r3 ; r3 set to 0x00
mov r4,r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov r5,r2
mov.b r3,@(r0,r4) 	
add 0x34,r1
mov.l @(loc_8C0C6014,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(loc_8C0C6018,pc),r2 ; r2 set to 0x8C034E8c
mov 0x17,r5 ; r5 set to 0x17
mov 0x09,r6 ; r6 set to 0x09
jmp @r2
lds.l @r15+,pr 	

loc_8C0C5FDE:
#data 0x2FE6
#data 0xD30E4F22
#data 0x6E43430b
#data 0x4011600e
#data 0x84E48905
#data 0x7001E300
#data 0x900880E4
#data 0x0E34

loc_8C0C5FFA:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0C6000:
mov.l @(loc_8C0C6020,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0C6006:
#data 0x00Dc

loc_8C0C6008:
#data 0x00C0

loc_8C0C600A:
#data 0x012c

loc_8C0C600C:
#data 0x01A3
#data 0x0000

#align4
loc_8C0C6010:
#data bank12.loc_8c129560

loc_8C0C6014:
#data bank12.loc_8c1294C8

loc_8C0C6018:
#data bank03.loc_8c034e8c

loc_8C0C601C:
#data bank03.loc_8c034dee

loc_8C0C6020:
#data bank04.loc_8c0450C0
#data 0x2FD62FE6
#data 0x90912FC6
#data 0x6B432FB6
#data 0x2FA6D24a
#data 0x0DBC4F22
#data 0x6DDC6321
#data 0x7D014D08
#data 0x890133D7
#data 0xE000A019
#data 0x4D159C83
#data 0x8F13DA44
#data 0xE503EE00
#data 0x4A0BE601
#data 0x2008E400
#data 0x64038D09
#data 0xD340E026
#data 0xE02004C5
#data 0xE02104E4
#data 0x143404D4
#data 0x7E0114B6
#data 0x8BEC3ED3
#data 0x4F26E001
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0C6088:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0C6168,pc),r1 ; r1 set to 0x8C15BC70
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

#align4
loc_8C0C609C:
#data 0x4F22915a
#data 0x314C8444
#data 0x7001D331
#data 0x80449254
#data 0x430B9053
#data 0x9051325c
#data 0x6143E201
#data 0x04247150
#data 0x80428452
#data 0x80418451
#data 0xF356E050
#data 0xE054F437
#data 0xF437F356
#data 0x035C903e
#data 0x70010434
#data 0x0424025c
#data 0x035CE030
#data 0x72506253
#data 0xD3220434
#data 0xE00C430b
#data 0x6143E024
#data 0x025CE30c
#data 0x71346253
#data 0x60330434
#data 0xD31C0009
#data 0x7234430b
#data 0xF48DE05c
#data 0xE060F447
#data 0xE068F447
#data 0xE06CF447
#data 0xE020F447
#data 0x2338034c
#data 0x90178B11
#data 0xD014035c
#data 0x4308633c
#data 0x9016F436
#data 0x2228024d
#data 0xE05C8D01
#data 0xF44d

loc_8C0C6136:
#data 0xF447
#data 0xF447E068
#data 0xA002E008
#data 0x814e

loc_8C0C6142:
#data 0xE003
#data 0x8045

loc_8C0C6146:
#data 0xD30c
#data 0xE613E517
#data 0x4F26432b
#data 0x0E0101A3
#data 0x00C000Dc
#data 0x0130012c
#data 0x8C287AE8

#align4
loc_8C0C6160:
#data bank04.loc_8c044F12

loc_8C0C6164:
#data loc_8c0c6088

loc_8C0C6168:
#data bank15.loc_8c15bc70

loc_8C0C616C:
#data bank12.loc_8c129560

loc_8C0C6170:
#data bank12.loc_8c1294C8

loc_8C0C6174:
#data bank15.loc_8c15bc68

loc_8C0C6178:
#data bank03.loc_8c034e8c

loc_8C0C617C:
#data 0x84552FE6
#data 0x8F0A2008
#data 0x90816E43
#data 0x600C005c
#data 0x8B048815
#data 0x005C907d
#data 0x8801600c
#data 0x8906

loc_8C0C619A:
#data 0xE002
#data 0xE30080E4
#data 0x0E349076
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0C61A8:
#data 0xD43AE024
#data 0x0E24E20c
#data 0x034DE03c
#data 0x024CE03b
#data 0x633DE101
#data 0x412C622c
#data 0x8B072318
#data 0x64E384E5
#data 0x600CD133
#data 0x031E4008
#data 0x6EF6432b

#align4
loc_8C0C61D4:
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0C61D8:
#data 0x62532FE6
#data 0xD32F4F22
#data 0x6E436143
#data 0x71347234
#data 0xE00C430b
#data 0x31ECE15c
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x8B052008
#data 0xD32284E5
#data 0x80E57001
#data 0x64E3430b

#align4
loc_8C0C6220:
#data 0x03ECE021
#data 0xF2E6E05c
#data 0x633CE060
#data 0xF32D435a
#data 0xFE27F233
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C623A:
#data 0x962a
#data 0x4F226253
#data 0x6143D316
#data 0x7234365c
#data 0x430B7134
#data 0xE15CE00c
#data 0xE034314c
#data 0xF246F318
#data 0xF427F230
#data 0x23386360
#data 0x84458908
#data 0x80457001
#data 0xF346E068
#data 0xF437F34d
#data 0x814EE008

#align4
loc_8C0C6274:
#data 0x034CE021
#data 0xF246E05c
#data 0x633CE060
#data 0x4F26435a
#data 0xF233F32d
#data 0xF427000b
;-------------------------------------------------------------------------------
#data 0x01E901D0
#data 0x02A4012c
#data 0x8C2895F0

#align4
loc_8C0C6298:
#data bank15.loc_8c15bc7c

loc_8C0C629C:
#data bank12.loc_8c1294C8

loc_8C0C62A0:
#data bank07.loc_8c07119c


loc_8C0C62A4:
mov.w @(loc_8C0C633C,pc),r6 ; r6 set to 0x2A4
mov r5,r2
sts.l pr,@-r15
mov.l @(loc_8C0C6340,pc),r3 ; r3 set to 0x8C1294C8
mov r4,r1
add r5,r6 ; r6 ??? bc r5 is ???	
add 0x34,r2
add 0x34,r1
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x5C,r1 ; r1 set to 0x5c
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
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov.w @(0x1C,r4),r0 	
add 0xFF,r0 ; r0 set to 0x5b
mov.w r0,@(0x1C,r4) 	
exts.w r0,r0 ; r0 ??	
tst r0,r0
bf loc_8C0C62F2
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x04,r4) 	
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8C0C633E,pc),r0 ; r0 set to 0x12c
mov 0xFF,r2 ; r2 set to 0xFFFFFFFf
mov.b r3,@(r0,r4) 	
lds.l @r15+,pr 	
rts 	
mov.b r2,@r6
;-------------------------------------------------------------------------------

loc_8C0C62F2:
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r4),r3
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r4),fr2
mov 0x60,r0 ; r0 set to 0x60
extu.b r3,r3
lds r3,fpul 	
float fpul,fr3
fdiv fr3,fr2
fmov.s fr2,@(r0,r4) 	
lds.l @r15+,pr 	
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0C630C:
mov.w @(loc_8C0C633C,pc),r3 ; r3 set to 0x2A4
add r3,r5
mov.b @r5,r2
cmp/pz r2
bf loc_8C0C6328
mov.l @(0x08,r4),r5
mov 0x60,r0 ; r0 set to 0x60
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
fmov.s fr3,@(r0,r4) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr2
fsub fr3,fr2
bra loc_8C0C6332
fmov.s fr2,@(r0,r4) 	

loc_8C0C6328:
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x04,r4) 	
mov 0x00,r2 ; r2 set to 0x00
mov.w @(loc_8C0C633E,pc),r0 ; r0 set to 0x12c
mov.b r2,@(r0,r4) 	

loc_8C0C6332:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0C6336:
mov.l @(loc_8C0C6344,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0C633C:
#data 0x02A4

loc_8C0C633E:
#data 0x012c

#align4
loc_8C0C6340:
#data bank12.loc_8c1294C8

loc_8C0C6344:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0xE600D34e
#data 0x1F512F42
#data 0x430BE503
#data 0x20086463
#data 0x64038D0f
#data 0xE0269388
#data 0xE0200435
#data 0xE30152F1
#data 0xE0210424
#data 0x0434D246
#data 0x63F21424
#data 0x62F21436
#data 0x7F081425
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0C6386:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0C6490,pc),r0 ; r0 set to 0x8C15BC8c
extu.b r3,r3
mov.l @(0x18,r14),r5
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0C639C:
mov r4,r3
mov.l @(loc_8C0C6494,pc),r1 ; r1 set to 0x8C15BC94
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0C63AE:
mov.w @(loc_8C0C6476,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.w @(loc_8C0C6478,pc),r0 ; r0 set to 0xC0
add r4,r1 ; r1 ??? bc r4 is ???	
mov.w @(loc_8C0C6476,pc),r2 ; r2 set to 0xDc
mov.l @(loc_8C0C6498,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0C647A,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0C647C,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0C649C,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x0C,r3 ; r3 set to 0x0c
mov 0x17,r5 ; r5 set to 0x17
mov.b r2,@(r0,r4) 	
mov 0x13,r6 ; r6 set to 0x13
mov.b @(0x04,r4),r0 	
add 0x01,r0 ; r0 set to 0x25
mov.b r0,@(0x04,r4) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0C64A0,pc),r3 ; r3 set to 0x8C034E8c
jmp @r3
lds.l @r15+,pr 	

#align4
loc_8C0C6414:
#data 0x96329034
#data 0x600C005c
#data 0x8D0B881c
#data 0x8455365c
#data 0x8B072008
#data 0x005C902b
#data 0x8804600c
#data 0x84648B02
#data 0x89054011

#align4
loc_8C0C6438:
#data 0x8044E002
#data 0x901CE300
#data 0x0434000b
;-------------------------------------------------------------------------------

#align4
loc_8C0C6444:
#data 0xE20CE024
#data 0xE0340424
#data 0xF437F356
#data 0xF3569018
#data 0xF437E038
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0C645C:
mov.l @(loc_8C0C64A4,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0C6462:
mov r4,r3
mov.l @(loc_8C0C64A8,pc),r1 ; r1 set to 0x8C15BCA0
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x0E02

loc_8C0C6476:
#data 0x00Dc

loc_8C0C6478:
#data 0x00C0

loc_8C0C647A:
#data 0x012c

loc_8C0C647C:
#data 0x01A3
#data 0x02A4
#data 0x01E901D0
#data 0x0000041c

#align4
loc_8C0C6488:
#data bank04.loc_8c044F12

loc_8C0C648C:
#data loc_8c0c6386

loc_8C0C6490:
#data bank15.loc_8c15bc8c

loc_8C0C6494:
#data bank15.loc_8c15bc94

loc_8C0C6498:
#data bank12.loc_8c129560

loc_8C0C649C:
#data bank12.loc_8c1294C8

loc_8C0C64A0:
#data bank03.loc_8c034e8c

loc_8C0C64A4:
#data bank04.loc_8c0450C0

loc_8C0C64A8:
#data bank15.loc_8c15bcA0

loc_8C0C64AC:
#data 0x4F229185
#data 0x314C9084
#data 0xD3459281
#data 0x325C430b
#data 0xE201907f
#data 0x71506143
#data 0x84520424
#data 0x84518042
#data 0xE0508041
#data 0xF437F356
#data 0xF356E054
#data 0x9071F437
#data 0x0434035c
#data 0x025C7001
#data 0xE0300424
#data 0x6253035c
#data 0x04347250
#data 0x430BD337
#data 0xE024E00c
#data 0xE30C025c
#data 0x0424E610
#data 0x70018444
#data 0xE0248044
#data 0x905A0434
#data 0x70010464
#data 0x70010464
#data 0x70010464
#data 0xE0340464
#data 0xF437F356
#data 0xF356E038
#data 0xC72BF437
#data 0xE068F308
#data 0x9049F437
#data 0x2338034d
#data 0xE0688903
#data 0xF34DF346
#data 0xF437

loc_8C0C653E:
#data 0xE15c
#data 0x314CD325
#data 0xF318E034
#data 0xE168F246
#data 0xF230314c
#data 0xE613E517
#data 0xE05CF427
#data 0xF318F246
#data 0xF427F230
#data 0x4F26432b

#align4
loc_8C0C6564:
#data 0x2FE69030
#data 0x2FD66E43
#data 0x9D2A005c
#data 0x881C600c
#data 0x3D5C8D0b
#data 0x20088455
#data 0x90248B07
#data 0x600C005c
#data 0x8B028804
#data 0x401184D4
#data 0x8905

loc_8C0C658E:
#data 0xE002
#data 0xE30080E4
#data 0xA00D9013
#data 0x0E34

loc_8C0C659A:
#data 0xE024
#data 0xE20CD10f
#data 0x0E2466D3
#data 0x84E564E3
#data 0x600C6DF6
#data 0x031E4008
#data 0x6EF6432b

#align4
loc_8C0C65B4:
#data 0x000B6DF6
#data 0x00DC6EF6
#data 0x012C00C0
#data 0x013C01A3
#data 0x02A40130
#data 0x01E901D0

#align4
loc_8C0C65CC:
#data bank12.loc_8c129560

loc_8C0C65D0:
#data bank12.loc_8c1294C8
#data 0xC0D55555

#align4
loc_8C0C65D8:
#data bank03.loc_8c034e8c

loc_8C0C65DC:
#data bank15.loc_8c15bcAc

loc_8C0C65E0:
#data 0x6E432FE6
#data 0xE03CD43b
#data 0xED012FD6
#data 0x61D3FFFb
#data 0x034D4F22
#data 0x024CE03b
#data 0x622C633d
#data 0x2318412c
#data 0x84648B02
#data 0x8B4F2008

#align4
loc_8C0C6608:
#data 0xE03454E5
#data 0xF346E15c
#data 0xFE3731Ec
#data 0xF318F2E6
#data 0x31ECE168
#data 0xFE27F230
#data 0xF2E6E05c
#data 0xF230F318
#data 0xFF2CF38d
#data 0x8F01F3F5
#data 0xFF4DFE27

#align4
loc_8C0C6634:
#data 0xF38DC728
#data 0xFF41F408
#data 0x8941F3F5
#data 0x700184E5
#data 0x904280E5
#data 0x233803Ed
#data 0xC7238B02
#data 0xF408FF4d

#align4
loc_8C0C6654:
#data 0xF346E034
#data 0xF340E307
#data 0xE05CFE37
#data 0xE068FE47
#data 0xFE37F38d
#data 0x303385Ee
#data 0xD11C892a
#data 0xE602E503
#data 0x64E3410b
#data 0x8D152008
#data 0x92276403
#data 0xE300E026
#data 0xE0200425
#data 0xE02204D4
#data 0xE05C0434
#data 0x85EEF4F7
#data 0x7001D213
#data 0xE022814e
#data 0x143653E6
#data 0x142414E5
#data 0x0ED4A00e

#align4
loc_8C0C66A8:
#data 0x80E5E002
#data 0xF308C70e
#data 0xFE37E068
#data 0x03ED900b
#data 0x89032338
#data 0xF3E6E068
#data 0xFE37F34d

#align4
loc_8C0C66C4:
#data 0xFFF94F26
#data 0x000B6DF6
#data 0x01306EF6
#data 0x00000E02
#data 0x8C2895F0
#data 0x43200000
#data 0xC3200000

#align4
loc_8C0C66E0:
#data bank04.loc_8c044F12

loc_8C0C66E4:
#data loc_8c0c6386
#data 0x41D55555


loc_8C0C66EC:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l @(loc_8C0C6804,pc),r4 ; r4 set to 0x8C2895F0
mov 0x3C,r0 ; r0 set to 0x3c
mov.l r5,@r15
mov.w @(r0,r4),r3
mov 0x3B,r0 ; r0 set to 0x3b
mov.b @(r0,r4),r2
mov 0x01,r1 ; r1 set to 0x01
extu.w r3,r3
extu.b r2,r2
shad r2, r1 ; r1 ??? bc r2 is ???	
tst r1,r3
bf loc_8C0C676e
mov 0x5C,r0 ; r0 set to 0x5c
mov.l @(0x14,r14),r4 ; r4 ??? bc r14 is ???	
fmov.s @(r0,r14),fr3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r4),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov.b @(0x04,r6),r0 	
tst r0,r0
bf loc_8C0C6750
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8C0C6750
mov.l @(loc_8C0C6808,pc),r3 ; r3 set to 0x8C03340c
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8C0C676e
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x04,r14) 	
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8C0C67FE,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.l @(0x0C,r14),r4
mov 0x01,r3 ; r3 set to 0x01
mov.b r3,@(r0,r4) 	
mov.l @r15,r2
mov.l r2,@(0x14,r4) 	
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0C6750:
#data 0x700184E5
#data 0xC72D80E5
#data 0xE068F308
#data 0x904FFE37
#data 0x233803Ed
#data 0xE0688903
#data 0xF34DF3E6
#data 0xFE37


loc_8C0C676E:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0C6776:
mov.l @(loc_8C0C6804,pc),r5 ; r5 set to 0x8C2895F0
mov 0x3C,r0 ; r0 set to 0x3c
mov 0x01,r1 ; r1 set to 0x01
mov.w @(r0,r5),r3
mov 0x3B,r0 ; r0 set to 0x3b
mov.b @(r0,r5),r2
extu.w r3,r3
extu.b r2,r2
shad r2, r1 ; r1 ??? bc r2 is ???	
tst r1,r3
bf loc_8C0C67F4
mov.l @(0x14,r4),r5 ; r5 ??? bc r4 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r4),r3
tst r3,r3
bt loc_8C0C67Ac
mov 0x5C,r1 ; r1 set to 0x5c
add r4,r1 ; r1 ??? bc r4 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3
fmov.s @(r0,r4),fr2
fadd fr3,fr2
bra loc_8C0C67F4
fmov.s fr2,@(r0,r4) 	

loc_8C0C67AC:
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
mov 0x68,r0 ; r0 set to 0x68
fmov.s @(r0,r4),fr3
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r4),fr2
fmul fr3,fr2
fldi0 fr3
fcmp/gt fr2,fr3
bt loc_8C0C67F4
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x04,r4) 	
mov 0x00,r5 ; r5 set to 0x00
mov.w @(loc_8C0C67FE,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r4) 	
mov.l @(0x14,r4),r4
mov.b @(0x03,r4),r0 	
tst r0,r0
bf loc_8C0C67F0
mov 0xFF,r0 ; r0 set to 0xFFFFFFFf
bra loc_8C0C67F4
mov.b r0,@(0x04,r6) 	

#align4
loc_8C0C67F0:
#data 0x0454E022


loc_8C0C67F4:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0C67F8:
mov.l @(loc_8C0C6810,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0C67FE:
#data 0x012c
#data 0x00000130

#align4
loc_8C0C6804:
#data 0x8C2895F0

#align4
loc_8C0C6808:
#data bank03.loc_8c03340c
#data 0x41D55555

#align4
loc_8C0C6810:
#data bank04.loc_8c0450C0


loc_8C0C6814:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov.l @(loc_8C0C693C,pc),r2 ; r2 set to 0x8C287AE8
mov r5,r14
mov.l r4,@r15
mov.l r6,@(0x04,r15) 	
mov.w @r2,r3
cmp/gt r14,r3
bt/s loc_8C0C6836
mov r7,r12
bra loc_8C0C6886
mov 0x00,r0

loc_8C0C6836:
#data 0xE40c
#data 0x8F013E47
#data 0x6E43ED00

#align4
loc_8C0C6840:
#data 0x4E159B77
#data 0x8B1CDA3e

#align4
loc_8C0C6848:
#data 0xE601E503
#data 0xE4004A0b
#data 0x8D102008
#data 0xE0266403
#data 0xE02304B5
#data 0xE02004D4
#data 0x043453F1
#data 0x04C4E021
#data 0x000960E3
#data 0x814FD335
#data 0x62F21434
#data 0x1426

loc_8C0C6876:
#data 0x2CC8
#data 0x7D018D01
#data 0x7CFf

loc_8C0C687E:
#data 0x3DE3
#data 0x8BE2

loc_8C0C6882:
#data 0x60D3
#data 0x0009


loc_8C0C6886:
add 0x08,r15
lds.l @r15+,pr 	
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0C6896:
#data 0x2FE6
#data 0x6E43E023
#data 0x233803Ec
#data 0x55E68F17
#data 0x20088455
#data 0x90438B09
#data 0x600C005c
#data 0x8B048815
#data 0x005C903f
#data 0x8802600c
#data 0x8901

loc_8C0C68BE:
#data 0xE002
#data 0x80E4

loc_8C0C68C2:
#data 0x84E4
#data 0xD12064E3
#data 0x4008600c
#data 0x432B031e
#data 0x6EF6

loc_8C0C68D2:
#data 0x000b
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C68D6:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.l r12,@-r15
sts.l pr,@-r15
mov.w @(loc_8C0C6938,pc),r12 ; r12 set to 0x2A4
bsr loc_8C0C69F4
add r13,r12 ; r12 ??? bc r13 is ???	
mov.b @(0x04,r14),r0 	
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov 0x0C,r0 ; r0 set to 0x0c
fmov.s @(r0,r12),fr3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x10,r0 ; r0 set to 0x10
fmov.s @(r0,r12),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3
mov.l @(loc_8C0C694C,pc),r0 ; r0 set to 0x8C15BED4
extu.b r3,r3
shll2 r3
mov.l @(r0,r3),r2
mov.l r2,@(0x14,r14) 	
bsr loc_8C0C6D72
mov r14,r4
mov r13,r5
bsr loc_8C0C6CD8
mov r14,r4
mov r13,r5
bsr loc_8C0C6B68
mov r14,r4
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
mov.l @r15+,r12
mov.l @r15+,r13
bra loc_8C0C6AC2
mov.l @r15+,r14
#data 0x0E03
#data 0x01E901D0

loc_8C0C6938:
#data 0x02A4
#data 0x0000

#align4
loc_8C0C693C:
#data 0x8C287AE8

#align4
loc_8C0C6940:
#data bank04.loc_8c044F12

loc_8C0C6944:
#data loc_8c0c6896

loc_8C0C6948:
#data bank15.loc_8c15beDc

loc_8C0C694C:
#data bank15.loc_8c15beD4

loc_8C0C6950:
#data 0x2FD62FE6
#data 0x7FFC4F22
#data 0x6E539385
#data 0xD4446D43
#data 0xE03C33Ec
#data 0x034D2F32
#data 0x024CE03b
#data 0x633DE101
#data 0x412C622c
#data 0x8B1A2318
#data 0xB1AD65E3
#data 0x65E364D3
#data 0x64D3B0F2
#data 0xB09C65E3
#data 0x64F264D3
#data 0x88028446
#data 0x64038D04
#data 0x00096043
#data 0x8B0888Ff

#align4
loc_8C0C699C:
#data 0x64D3E002
#data 0x80D465E3
#data 0x4F267F04
#data 0xA0056DF6
#data 0x6EF6

loc_8C0C69AE:
#data 0x7F04
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0C69B8:
#data 0xEE012FE6
#data 0x6D432FD6
#data 0x2FB62FC6
#data 0x4F222FA6
#data 0xDA2A85Df
#data 0x3EC36C03
#data 0xEB008D07

#align4
loc_8C0C69D4:
#data 0x54D39048
#data 0x04B44A0b
#data 0x3EC37E01
#data 0x8BF8

loc_8C0C69E2:
#data 0x4A0b
#data 0x4F2664D3
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0C69F4:
mov.l r14,@-r15
mov r5,r14
mov.l r13,@-r15
mov 0x08,r7 ; r7 set to 0x08
mov.l r12,@-r15
mov 0x00,r5 ; r5 set to 0x00
sts.l pr,@-r15
mov.w @(0x1E,r4),r0 	
mov r0,r6
cmp/pl r6
bf/s loc_8C0C6AA6
mov 0x01,r13 ; r13 set to 0x01

loc_8C0C6A0C:
mov.w @(loc_8C0C6A6A,pc),r1 ; r1 set to 0xDc
mov r4,r12
mov.w @(loc_8C0C6A6A,pc),r2 ; r2 set to 0xDc
mov.w @(loc_8C0C6A6C,pc),r0 ; r0 set to 0xC0
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0C6A78,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r14,r2 ; r2 ??? bc r14 is ???	
mov.w @(loc_8C0C6A68,pc),r0 ; r0 set to 0x12c
mov r12,r1
add 0x50,r1
mov.b r13,@(r0,r4) 	
mov.b @(0x02,r14),r0 	
mov.b r0,@(0x02,r4) 	
mov.b @(0x01,r14),r0 	
mov.b r0,@(0x01,r4) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???	
fmov.s fr3,@(r0,r4) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r14),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0C6A6E,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r14),r3
mov.b r3,@(r0,r4) 	
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r14),r2
mov.b r2,@(r0,r4) 	
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r14),r3
mov r14,r2
add 0x50,r2
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0C6A7C,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r14),r2
mov.b r2,@(r0,r4) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r4),r1
tst r1,r1
bt loc_8C0C6A80
bra loc_8C0C6A82
mov 0x01,r3
#data 0x02A4

loc_8C0C6A68:
#data 0x012c

loc_8C0C6A6A:
#data 0x00Dc

loc_8C0C6A6C:
#data 0x00C0

loc_8C0C6A6E:
#data 0x01A3
#data 0x8C2895F0

#align4
loc_8C0C6A74:
#data bank04.loc_8c0450C0

loc_8C0C6A78:
#data bank12.loc_8c129560

loc_8C0C6A7C:
#data bank12.loc_8c1294C8

loc_8C0C6A80:
#data 0xE300

loc_8C0C6A82:
#data 0x9065
#data 0x71346143
#data 0xE0240434
#data 0xD33102Ec
#data 0x62E30424
#data 0x7234E031
#data 0x430B0474
#data 0x7501E00c
#data 0x8FB33563
#data 0x5443


loc_8C0C6AA6:
mov.l @(loc_8C0C6B58,pc),r3 ; r3 set to 0x8C052618
mov r12,r5
jsr @r3
mov r14,r4
mov.w @(loc_8C0C6B50,pc),r0 ; r0 set to 0x12c
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov.b r13,@(r0,r12) 	
add 0x2E,r0 ; r0 set to 0x15a
mov.b r3,@(r0,r12) 	
lds.l @r15+,pr 	
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0C6AC2:
#data 0x2FE6
#data 0x2FD66E43
#data 0x2FC6E400
#data 0x2FB66C43
#data 0x2FA66B43
#data 0x2F862F96
#data 0x85EF4F22
#data 0x6903DA1f
#data 0x491579Ff
#data 0x8F1A6503
#data 0xED01

loc_8C0C6AEA:
#data 0xE023
#data 0xE51708Ec
#data 0x688CD01b
#data 0xE022088c
#data 0x688C07Ec
#data 0x66837855
#data 0x4A0B677c
#data 0x902364E3
#data 0x233803Ec
#data 0x2BB88B03
#data 0x6BD38B01
#data 0x0ED4

loc_8C0C6B16:
#data 0x7C01
#data 0x8FE63C93
#data 0x5EE3

loc_8C0C6B1E:
#data 0xE022
#data 0xE71F00Ec
#data 0x600CE50f
#data 0x27097002
#data 0xE6054721
#data 0x4A0B4721
#data 0x4F2664E3
#data 0x64E3900b
#data 0x68F6D309
#data 0x69F605Ee
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6432b

loc_8C0C6B50:
#data 0x012c
#data 0x01C8

#align4
loc_8C0C6B54:
#data bank12.loc_8c1294C8

loc_8C0C6B58:
#data bank05.loc_8c052618

loc_8C0C6B5C:
#data bank03.loc_8c034F54

loc_8C0C6B60:
#data bank15.loc_8c15bdD8

loc_8C0C6B64:
#data bank04.loc_8c04CC1c

loc_8C0C6B68:
#data 0xD657E022
#data 0x2FD697A8
#data 0xC756014c
#data 0xC756F508
#data 0xF408611c
#data 0x90A04108
#data 0x316C4100
#data 0x63157104
#data 0x435A375c
#data 0xF32D6311
#data 0x034D435a
#data 0xF63C2338
#data 0xF652F32d
#data 0x8D01F73c
#data 0xF64DF742

#align4
loc_8C0C6BA4:
#data 0xF376E00c
#data 0xF256E034
#data 0xF261F230
#data 0xE010F427
#data 0xE038F376
#data 0xE701F256
#data 0xF271F230
#data 0x854FF427
#data 0x7DFF6D03
#data 0x650337D3
#data 0xF88D8D3e

#align4
loc_8C0C6BD0:
#data 0x55439078
#data 0x2228025c
#data 0xFA8C8B04
#data 0xF78CF68c
#data 0xF98CA026

#align4
loc_8C0C6BE4:
#data 0x014CE022
#data 0x4108611c
#data 0x316C4100
#data 0x435A6315
#data 0x015C6311
#data 0x435AF32d
#data 0x9060611c
#data 0x41004108
#data 0xF63C316c
#data 0xF32D7104
#data 0xF6526315
#data 0x6311435a
#data 0xF32DF93c
#data 0xF942435a
#data 0xF32DF73c
#data 0xFA3CF752
#data 0x2338034d
#data 0xFA428D02
#data 0xF64DF74d

#align4
loc_8C0C6C30:
#data 0xF346E034
#data 0x37D37701
#data 0xF371F360
#data 0xE038F537
#data 0xF390F346
#data 0xF537F3A1
#data 0x64538FC2

#align4
loc_8C0C6C4C:
#data 0x5543E022
#data 0x005C024c
#data 0xF25C622c
#data 0x42004208
#data 0xD21D362c
#data 0x600C6365
#data 0x435A7002
#data 0xE61F6361
#data 0xF32D2609
#data 0x46214621
#data 0x4600435a
#data 0x362C4600
#data 0xF32DF63c
#data 0xF6526365
#data 0xF73C435a
#data 0xF32DF742
#data 0xF53C6361
#data 0x435AF522
#data 0xF24C9015
#data 0x034DF32d
#data 0xF43C2338
#data 0xF4228D02
#data 0xF64DF54d

#align4
loc_8C0C6CA8:
#data 0xF346E034
#data 0xF351F360
#data 0xE038F537
#data 0xF370F346
#data 0xF537F341
#data 0x6DF6000b
;-------------------------------------------------------------------------------
#data 0x013002A4
#data 0x0000012c

#align4
loc_8C0C6CC8:
#data bank15.loc_8c15bcB8
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0C6CD4:
#data bank15.loc_8c15bdB8

loc_8C0C6CD8:
#data 0x2FE6E022
#data 0xE6012FD6
#data 0x035C4F22
#data 0x854E0434
#data 0x8D392008
#data 0x854E6D63
#data 0x70FF6763
#data 0x854F814e
#data 0x37E36E03
#data 0x8D32C74f
#data 0xF408

loc_8C0C6D02:
#data 0x5643
#data 0xE060E164
#data 0xF266316c
#data 0xF230F318
#data 0xE06CF627
#data 0xF246F32c
#data 0xF38DF230
#data 0x8F03F325
#data 0xF266F627
#data 0xF627F240

#align4
loc_8C0C6D28:
#data 0xF435F366
#data 0xF3668902
#data 0xF637F341

#align4
loc_8C0C6D34:
#data 0xE222F366
#data 0xF33D325c
#data 0xE1226220
#data 0x316C7701
#data 0x600C005a
#data 0x40217004
#data 0x40214021
#data 0x302C37E3
#data 0x2100C91f
#data 0x64638FD3
#data 0x0009A003

#align4
loc_8C0C6D60:
#data 0x0009B007
#data 0x6D03

loc_8C0C6D66:
#data 0x60D3
#data 0x4F260009
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C6D72:
#data 0x5645
#data 0x25586566
#data 0xE7018F03
#data 0x656676F8
#data 0xE700

loc_8C0C6D82:
#data 0xE068
#data 0xF3461465
#data 0xF437E06c
#data 0x6355E068
#data 0xF32D435a
#data 0xE06CF437
#data 0xF3466351
#data 0x435AE068
#data 0xE070F246
#data 0xF32DF231
#data 0xF38DF232
#data 0xC723F427
#data 0xE070F408
#data 0xF325F246
#data 0xF2468B02
#data 0xF427F240

#align4
loc_8C0C6DC0:
#data 0xF2466355
#data 0xD11E435a
#data 0x415AF32d
#data 0xF232E101
#data 0xF427F30d
#data 0xF427F233
#data 0xF28D6051
#data 0xE06C814e
#data 0x854FF427
#data 0x31636603
#data 0x8926

loc_8C0C6DEA:
#data 0x5543
#data 0xF356E060
#data 0xF246E06c
#data 0xF527F230
#data 0xF346E070
#data 0x854EF537
#data 0x854E815e
#data 0x435A6303
#data 0xF246E070
#data 0xF32DE064
#data 0xF38DF233
#data 0xE06CF527
#data 0xF325F256
#data 0xF2568B02
#data 0xF527F240

#align4
loc_8C0C6E24:
#data 0xF435F356
#data 0x64538D03
#data 0xF341F356
#data 0xF537

loc_8C0C6E32:
#data 0x7101
#data 0x8BD83163

#align4
loc_8C0C6E38:
#data 0x6073000b
;-------------------------------------------------------------------------------
#data 0x43800000
#data 0x41400000

#align4
loc_8C0C6E44:
#data 0x7FF44F22
#data 0x1F41D35f
#data 0xE5032F52
#data 0xE6001F62
#data 0x6463430b
#data 0x8D0C2008
#data 0x93AB6403
#data 0x0435E026
#data 0xD359E020
#data 0x042452F2
#data 0x52F11434
#data 0x63F21426
#data 0x1435

loc_8C0C6E76:
#data 0x7F0c
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0C6E7E:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0C6FD0,pc),r0 ; r0 set to 0x8C15BF70
extu.b r3,r3
mov.l @(0x18,r14),r5
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0C6E94:
mov r4,r3
mov.l @(loc_8C0C6FD4,pc),r1 ; r1 set to 0x8C15BF7c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0C6EA6:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0C6FBA,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.w @(loc_8C0C6FBC,pc),r0 ; r0 set to 0xC0
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0C6FBA,pc),r2 ; r2 set to 0xDc
mov.l @(loc_8C0C6FD8,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0C6FBE,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0C6FC0,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0C6FDC,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.l @(loc_8C0C6FE0,pc),r3 ; r3 set to 0x8C052618
mov.b @(r0,r13),r2
mov r14,r5
mov.b r2,@(r0,r14) 	
jsr @r3
mov r13,r4
mov.b @(0x04,r14),r0 	
mov 0x0B,r3 ; r3 set to 0x0b
mov.l @(0x14,r14),r13
mov r14,r1
add 0x01,r0 ; r0 set to 0x25
mov.b r0,@(0x04,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14) 	
mov r13,r2
mov 0x28,r0 ; r0 set to 0x28
mov.l @(loc_8C0C6FDC,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r2
mov.w r0,@(0x1C,r14) 	
add 0x34,r1
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(loc_8C0C6FE4,pc),r2 ; r2 set to 0x8C04223a
mov 0x0D,r5 ; r5 set to 0x0d
jsr @r2
mov r14,r4
mov.w @(loc_8C0C6FC2,pc),r0 ; r0 set to 0x1F6
mov 0x06,r3 ; r3 set to 0x06
mov 0x01,r2 ; r2 set to 0x01
fldi0 fr4
mov.b r3,@(r0,r13) 	
add 0xF5,r0 ; r0 set to 0x1Eb
mov.b r2,@(r0,r13) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr4,@(r0,r13) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r13) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r13) 	
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr4,@(r0,r13) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r3 ; r3 ??? bc r13 is ???	
mov 0xF8,r2 ; r2 set to 0xFFFFFFF8
mov.l @(loc_8C0C6FE8,pc),r1 ; r1 set to 0x8C15BEE8
mov r14,r4
mov.b r3,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r2,@(r0,r14) 	
mov 0x17,r5 ; r5 set to 0x17
mov.b @(0x01,r13),r0 	
extu.b r0,r0 ; r0 set to 0x31
mov.b @(r0,r1),r3
mov 0x23,r0 ; r0 set to 0x23
mov.b r3,@(r0,r14) 	
lds.l @r15+,pr 	
mov.b @(r0,r14),r6
add 0x1D,r6
mov.l @(loc_8C0C6FEC,pc),r3 ; r3 set to 0x8C034E8c
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0C6F76:
mov.w @(loc_8C0C6FC4,pc),r0 ; r0 set to 0x1C8
mov 0x01,r3 ; r3 set to 0x01
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r14,r1
sts.l pr,@-r15
mov.l @(r0,r5),r13
add 0x23,r0 ; r0 set to 0x1Eb
add 0x34,r1
mov.b r3,@(r0,r13) 	
mov r13,r2
mov.l @(loc_8C0C6FDC,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.l @(loc_8C0C6FF0,pc),r1 ; r1 set to 0x8C15BF88
mov.b @(r0,r13),r2
mov 0xF8,r3 ; r3 set to 0xFFFFFFF8
mov r13,r6
mov r14,r4
mov.b r2,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov.b @(0x05,r14),r0 	
lds.l @r15+,pr 	
extu.b r0,r0 ; r0 set to 0x31
shll2 r0 ; r0 set to 0xC4
mov.l @r15+,r13
mov.l @(r0,r1),r3 ; r3 ??	
jmp @r3
mov.l @r15+,r14
#data 0x0E04

loc_8C0C6FBA:
#data 0x00Dc

loc_8C0C6FBC:
#data 0x00C0

loc_8C0C6FBE:
#data 0x012c

loc_8C0C6FC0:
#data 0x01A3

loc_8C0C6FC2:
#data 0x01F6

loc_8C0C6FC4:
#data 0x01C8
#data 0x0000

#align4
loc_8C0C6FC8:
#data bank04.loc_8c044F12

loc_8C0C6FCC:
#data loc_8c0c6E7e

loc_8C0C6FD0:
#data bank15.loc_8c15bf70

loc_8C0C6FD4:
#data bank15.loc_8c15bf7c

loc_8C0C6FD8:
#data bank12.loc_8c129560

loc_8C0C6FDC:
#data bank12.loc_8c1294C8

loc_8C0C6FE0:
#data bank05.loc_8c052618

loc_8C0C6FE4:
#data bank04.loc_8c04223a

loc_8C0C6FE8:
#data bank15.loc_8c15beE8

loc_8C0C6FEC:
#data bank03.loc_8c034e8c

loc_8C0C6FF0:
#data bank15.loc_8c15bf88


loc_8C0C6FF4:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0C7110,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r6,r13
mov.w @(loc_8C0C7104,pc),r0 ; r0 set to 0x141
mov.b @(r0,r14),r2
tst r2,r2
bt loc_8C0C702e
mov.b @(0x05,r14),r0 	
mov 0x00,r3 ; r3 set to 0x00
mov r3,r5 ; r5 set to 0x00
mov r3,r6 ; r6 set to 0x00
add 0x01,r0 ; r0 set to 0x142
mov.b r0,@(0x05,r14) 	
mov.w @(loc_8C0C7106,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r13) 	
mov.l @(loc_8C0C7114,pc),r3 ; r3 set to 0x8C034E8c
jsr @r3
mov r13,r4
lds.l @r15+,pr 	
mov r13,r4
mov.l @(loc_8C0C7118,pc),r2 ; r2 set to 0x8C050552
mov 0x0A,r5 ; r5 set to 0x0a
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_8C0C702E:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0C7036:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0C7110,pc),r3 ; r3 set to 0x8C034DEe
mov r6,r13
mov r4,r14
mov.l r5,@r15
jsr @r3
mov r14,r4
mov.w @(loc_8C0C7108,pc),r0 ; r0 set to 0x19f
mov 0x01,r11 ; r11 set to 0x01
mov.b @(r0,r13),r2
tst r2,r2
bt/s loc_8C0C7086
mov 0x00,r12 ; r12 set to 0x00
mov.b @(0x05,r13),r0 	
extu.b r0,r0 ; r0 set to 0x9f
cmp/eq 0x03,r0 	
bf loc_8C0C7086
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0C7106,pc),r0 ; r0 set to 0x12c
mov.b r12,@(r0,r14) 	
mov r12,r0 ; r0 set to 0x00
nop 	
mov.w r0,@(0x1C,r14) 	
mov 0x08,r3 ; r3 set to 0x08
mov.w @(loc_8C0C7106,pc),r0 ; r0 set to 0x12c
mov 0x0A,r2 ; r2 set to 0x0a
mov.b r11,@(r0,r13) 	
mov.w @(loc_8C0C710A,pc),r0 ; r0 set to 0x1Ef
mov.b r3,@(r0,r13) 	
add 0xFC,r0 ; r0 set to 0x1Eb
mov.b r2,@(r0,r13) 	
mov.w @(loc_8C0C7106,pc),r0 ; r0 set to 0x12c
bra loc_8C0C70Dc
mov.b r11,@(r0,r13) 	

loc_8C0C7086:
#data 0x903e
#data 0x0DC4D324
#data 0x64D3430b
#data 0x890B2008
#data 0xD31E903a
#data 0x85EE0EB4
#data 0x81EE70F9
#data 0x64E3430b
#data 0xE50AD21c
#data 0x64D3420b

#align4
loc_8C0C70AC:
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x891E4011
#data 0xE2089027
#data 0x0D24E30a
#data 0x0D3470Fc
#data 0xD316901f
#data 0x430B0DB4
#data 0xE00264D3
#data 0x901880E4
#data 0x60C30EC4
#data 0x81EE0009


loc_8C0C70DC:
mov.l @(loc_8C0C7124,pc),r3 ; r3 set to 0x8C042008
mov 0x23,r5 ; r5 set to 0x23
jsr @r3
mov r14,r4
mov.l @r15,r5 ; r5 ??? bc r15 is ???	
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
bra loc_8C0C7128
mov.l @r15+,r14

loc_8C0C70F6:
#data 0x7F04
#data 0x6BF64F26
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0C7104:
#data 0x0141

loc_8C0C7106:
#data 0x012c

loc_8C0C7108:
#data 0x019f

loc_8C0C710A:
#data 0x01Ef
#data 0x00000142

#align4
loc_8C0C7110:
#data bank03.loc_8c034dee

loc_8C0C7114:
#data bank03.loc_8c034e8c

loc_8C0C7118:
#data bank05.loc_8c050552

loc_8C0C711C:
#data bank05.loc_8c050610

loc_8C0C7120:
#data bank05.loc_8c051648

loc_8C0C7124:
#data bank04.loc_8c042008

loc_8C0C7128:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x4F222F86
#data 0xD2527FFc
#data 0x2F52ED08
#data 0x33D76321
#data 0x6C438F24
#data 0xEE009996
#data 0xEB01D84e
#data 0xEA02

loc_8C0C7152:
#data 0xE503
#data 0x480BE601
#data 0x2008E400
#data 0x64038D15
#data 0x63E3E026
#data 0xE2070495
#data 0x23B961E3
#data 0x4121E020
#data 0x432C04A4
#data 0x231BE021
#data 0xE0230434
#data 0x01CCD343
#data 0x14340414
#data 0x142662F2
#data 0x14C5

loc_8C0C718A:
#data 0x7E01
#data 0x8BE03ED3

#align4
loc_8C0C7190:
#data 0x4F267F04
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0C71A4:
mov r4,r3
mov.l @(loc_8C0C7290,pc),r1 ; r1 set to 0x8C15BF90
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0C71B6:
#data 0x9160
#data 0x905F4F22
#data 0x925C314c
#data 0x430BD334
#data 0x905A325c
#data 0x6143E201
#data 0x04247150
#data 0x80428452
#data 0x80418451
#data 0xF356E050
#data 0xE054F437
#data 0xF437F356
#data 0x035C904c
#data 0x70010434
#data 0x0424025c
#data 0x035CE030
#data 0x72506253
#data 0xD3270434
#data 0xE00C430b
#data 0x025CE024
#data 0xE2F40424
#data 0x70018444
#data 0xE0248044
#data 0x0434035c
#data 0x0424E031
#data 0xF408C720
#data 0x035C9031
#data 0x89012338
#data 0xF408C71e

#align4
loc_8C0C7228:
#data 0xD31FE034
#data 0xE64BF356
#data 0xF437F340
#data 0xF308C71b
#data 0xF256E038
#data 0xF230E517
#data 0x432BF427
#data 0x4F26

loc_8C0C7246:
#data 0x2FE6
#data 0xD3184F22
#data 0x6E43430b
#data 0x4011600e
#data 0xE0028904
#data 0xE30080E4
#data 0x0E34900f

#align4
loc_8C0C7260:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C7266:
mov r4,r3
mov.l @(loc_8C0C72B0,pc),r1 ; r1 set to 0x8C15BF9c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x00DC0E04
#data 0x012C00C0
#data 0x01D201A3
#data 0x8C287AE8

#align4
loc_8C0C7288:
#data bank04.loc_8c044F12

loc_8C0C728C:
#data loc_8c0c6E7e

loc_8C0C7290:
#data bank15.loc_8c15bf90

loc_8C0C7294:
#data bank12.loc_8c129560

loc_8C0C7298:
#data bank12.loc_8c1294C8
#data 0xC292AAAa
#data 0x4292AAAa
#data 0x43430000

#align4
loc_8C0C72A8:
#data bank03.loc_8c034e8c

loc_8C0C72AC:
#data bank03.loc_8c034dee

loc_8C0C72B0:
#data bank15.loc_8c15bf9c


loc_8C0C72B4:
mov.l r14,@-r15
mov.w @(loc_8C0C73A0,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.w @(loc_8C0C73A2,pc),r0 ; r0 set to 0xC0
add r4,r1 ; r1 ??? bc r4 is ???	
mov.w @(loc_8C0C73A0,pc),r2 ; r2 set to 0xDc
mov.l @(loc_8C0C73AC,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0C73A4,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0C73A6,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0C73B0,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.w @(loc_8C0C73A8,pc),r14 ; r14 set to 0x80
mov.b @(r0,r5),r2
mov.b r2,@(r0,r4) 	
mov.b @(0x04,r4),r0 	
mov.l @(0x14,r4),r5
add 0x01,r0 ; r0 set to 0x25
mov.b r0,@(0x04,r4) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r3 ; r3 ??? bc r5 is ???	
mov.b r3,@(r0,r4) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b @(r0,r5),r2
mov 0xFB,r3 ; r3 set to 0xFFFFFFFb
add 0xFC,r2
mov.b r2,@(r0,r4) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r4),r7
mov 0x23,r0 ; r0 set to 0x23
mov.b @(r0,r4),r6
extu.b r7,r7
mov.l @(loc_8C0C73B4,pc),r0 ; r0 set to 0x8C15BF68
and r7,r14 ; r14 ??? bc r7 is ???	
extu.b r6,r6
shad r3, r14
mov 0x7F,r3 ; r3 set to 0x7f
mov r14,r2
shll2 r6
and r3,r7
mov.l @(r0,r6),r6
shar r2
shll2 r7
add r2,r7
shll r7
add r7,r6
mov.w @r6+,r2
mova @(loc_8C0C73B8,pc),r0  ; r0 set to 0x8C0C73B8
fmov.s @r0,fr0 ; r0 ??	
mov 0x34,r0 ; r0 set to 0x34
lds r2,fpul 	
add 0x1F,r14
fmov.s @(r0,r5),fr2
float fpul,fr3
fmac fr0,fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
mov.w @r6,r2
mov r14,r6
fmov.s @(r0,r5),fr2
mova @(loc_8C0C73BC,pc),r0  ; r0 set to 0x8C0C73Bc
lds r2,fpul 	
mov 0x17,r5 ; r5 set to 0x17
fmov.s @r0,fr0 ; r0 ??	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(loc_8C0C73C0,pc),r2 ; r2 set to 0x8C034E8c
float fpul,fr3
fmac fr0,fr3,fr2 ; r2 ??	
fmov.s fr2,@(r0,r4) 	
lds.l @r15+,pr 	
jmp @r2
mov.l @r15+,r14

loc_8C0C737A:
#data 0x2FE6
#data 0xD3114F22
#data 0x6E43430b
#data 0x4011600e
#data 0xE0028904
#data 0xE30080E4
#data 0x0E349008

#align4
loc_8C0C7394:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C739A:
mov.l @(loc_8C0C73C8,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0C73A0:
#data 0x00Dc

loc_8C0C73A2:
#data 0x00C0

loc_8C0C73A4:
#data 0x012c

loc_8C0C73A6:
#data 0x01A3

loc_8C0C73A8:
#data 0x0080
#data 0x0000

#align4
loc_8C0C73AC:
#data bank12.loc_8c129560

loc_8C0C73B0:
#data bank12.loc_8c1294C8

loc_8C0C73B4:
#data bank15.loc_8c15bf68

loc_8C0C73B8:
#data 0x3FD55555

#align4
loc_8C0C73BC:
#data 0x40092492

#align4
loc_8C0C73C0:
#data bank03.loc_8c034e8c

loc_8C0C73C4:
#data bank03.loc_8c034dee

loc_8C0C73C8:
#data bank04.loc_8c0450C0
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x4F222FA6
#data 0xD2337FF8
#data 0x2F426D53
#data 0x63211F61
#data 0x890133D7
#data 0xE000A027
#data 0x3D47E40c
#data 0xEE008F01
#data 0x9C556D43
#data 0xDB2C4D15
#data 0xE5038B1a
#data 0x4B0BE601
#data 0x2008E400
#data 0x64038D11
#data 0x04C5E026
#data 0x04E4E023
#data 0x53F1E020
#data 0x60D30434
#data 0xD3240009
#data 0x814F2EE8
#data 0x62F21434
#data 0x14268F01
#data 0x7E016A43
#data 0x8BE43ED3
#data 0x60E31A45
#data 0x7F080009
#data 0x6AF64F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C744A:
mov.l r14,@-r15
mov 0x23,r0 ; r0 set to 0x23
mov r4,r14
mov.b @(r0,r14),r3
tst r3,r3
bf/s loc_8C0C7468
mov.l @(0x18,r14),r5
mov.b @(0x04,r14),r0 	
mov r14,r4
mov.l @(loc_8C0C74B4,pc),r1 ; r1 set to 0x8C15BFD4
extu.b r0,r0 ; r0 set to 0x23
shll2 r0 ; r0 set to 0x8c
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0C7468:
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0C746C:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
bsr loc_8C0C75Dc
mov r5,r13
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0C74B8,pc),r3 ; r3 set to 0x8C15BFB8
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov 0x00,r0 ; r0 set to 0x00
mov.b r0,@(0x05,r14) 	
mov.w @(loc_8C0C74A6,pc),r0 ; r0 set to 0x1B0
mov.l r3,@(r0,r14) 	
bsr loc_8C0C7B3a
mov r14,r4
mov r13,r5
bsr loc_8C0C7A98
mov r14,r4
mov r13,r5
bsr loc_8C0C7704
mov r14,r4
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
mov.l @r15+,r13
bra loc_8C0C7686
mov.l @r15+,r14
#data 0x0E05

loc_8C0C74A6:
#data 0x01B0
#data 0x8C287AE8

#align4
loc_8C0C74AC:
#data bank04.loc_8c044F12

loc_8C0C74B0:
#data loc_8c0c744a

loc_8C0C74B4:
#data bank15.loc_8c15bfD4

loc_8C0C74B8:
#data bank15.loc_8c15bfB8

loc_8C0C74BC:
#data 0x2FD62FE6
#data 0x7FFC4F22
#data 0x6D539381
#data 0x33DC6E43
#data 0x84D52F32
#data 0x8F0F2008
#data 0x9079E402
#data 0x600C00Dc
#data 0x8B09881a
#data 0x00DC9075
#data 0x8814600c
#data 0x90718B04
#data 0x600C00Dc
#data 0x89038803

#align4
loc_8C0C74F4:
#data 0x00096043
#data 0x80E4A02d

#align4
loc_8C0C74FC:
#data 0xE03CD535
#data 0x025DE101
#data 0x035CE03b
#data 0x633C622d
#data 0x2218413c
#data 0x84E58B38
#data 0x8B112008
#data 0xB1EF65D3
#data 0x65D364E3
#data 0x64E3B0B1
#data 0xE12060F2
#data 0x88FF001c
#data 0x84E58B2a
#data 0x7001E30a
#data 0xE02180E5
#data 0x0E34A024

#align4
loc_8C0C753C:
#data 0x03ECE021
#data 0x0E3473Ff
#data 0x2338633c
#data 0x60438B0c
#data 0x80E40009
#data 0x903EE300
#data 0x0E34

loc_8C0C7556:
#data 0x64E3
#data 0x7F0465D3
#data 0x6DF64F26
#data 0x6EF6A015

#align4
loc_8C0C7564:
#data 0xB07C65D3
#data 0x65D364E3
#data 0x64E3B294
#data 0xB13765D3
#data 0x64E364E3
#data 0x7F0465D3
#data 0x6DF64F26
#data 0x6EF6A081

#align4
loc_8C0C7584:
#data 0x4F267F04
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C758E:
#data 0x2FE6
#data 0x2FD6EE01
#data 0x2FC66D43
#data 0x2FA62FB6
#data 0x85DF4F22
#data 0x6C03DA0d
#data 0x8D073EC3
#data 0xEB00

loc_8C0C75AA:
#data 0x9012
#data 0x4A0B54D3
#data 0x7E0104B4
#data 0x8BF83EC3

#align4
loc_8C0C75B8:
#data 0x64D34A0b
#data 0x6AF64F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x02A46EF6
#data 0x015901D0
#data 0x012C0158
#data 0x8C2895F0

#align4
loc_8C0C75D8:
#data bank04.loc_8c0450C0

loc_8C0C75DC:
#data 0xE6002FE6
#data 0xED082FD6
#data 0x854F4F22
#data 0x47156703
#data 0xEE018F35

#align4
loc_8C0C75F0:
#data 0x90779177
#data 0x314CD33d
#data 0x430B9273
#data 0x9072325c
#data 0x71506143
#data 0x845204E4
#data 0x84518042
#data 0xE0508041
#data 0xF437F356
#data 0xF356E054
#data 0x9065F437
#data 0x0434035c
#data 0x025C7001
#data 0xE0300424
#data 0x6253035c
#data 0x04347250
#data 0x430BD32f
#data 0xE024E00c
#data 0x025C6143
#data 0x04247134
#data 0x035C6253
#data 0x04347234
#data 0xD329E031
#data 0x430B04D4
#data 0x7601E00c
#data 0x8FCB3673
#data 0x5443

loc_8C0C765A:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C7662:
#data 0x854f
#data 0x6603D723
#data 0x8F0A4615
#data 0xE500

loc_8C0C766E:
#data 0x6072
#data 0x91387501
#data 0x50073563
#data 0xC901314c
#data 0x8FF62100
#data 0x5443

loc_8C0C7682:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0C7686:
#data 0x2FE6
#data 0x2FD66E43
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x85EF4F22
#data 0x6C03D917
#data 0xDA177CFf
#data 0x64034C15
#data 0xED008F11

#align4
loc_8C0C76A8:
#data 0x00ECE023
#data 0x600CE517
#data 0xE0220B9c
#data 0x6BBC07Ec
#data 0x66B37B55
#data 0x4A0B677c
#data 0x7D0164E3
#data 0x8FEF3DC3
#data 0x5EE3

loc_8C0C76CA:
#data 0x4F26
#data 0xE62BD20c
#data 0xE51764E3
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x422B6DF6
#data 0x00DC6EF6
#data 0x012C00C0
#data 0x000001A3

#align4
loc_8C0C76EC:
#data bank12.loc_8c129560

loc_8C0C76F0:
#data bank12.loc_8c1294C8
#data 0x8C26823c

#align4
loc_8C0C76F8:
#data bank15.loc_8c15BDD8

loc_8C0C76FC:
#data bank03.loc_8c034F54

loc_8C0C7700:
#data bank03.loc_8c034e8c

loc_8C0C7704:
#data 0xD634E022
#data 0xC734014c
#data 0xC734F508
#data 0xF408611c
#data 0x905D4108
#data 0x975A7102
#data 0x316C4100
#data 0x375C6315
#data 0x6311435a
#data 0x435AF32d
#data 0x2338034d
#data 0xF32DF63c
#data 0xF73CF652
#data 0xF7428D01
#data 0xF64d

loc_8C0C773E:
#data 0xE00c
#data 0xE034F376
#data 0xF230F256
#data 0xF427F261
#data 0xF376E010
#data 0xF256E038
#data 0xF230E701
#data 0xF427F271
#data 0x6203854f
#data 0x89343723

#align4
loc_8C0C7764:
#data 0x5543E022
#data 0x611C014c
#data 0x41004108
#data 0x6315316c
#data 0x6311435a
#data 0xF32D015c
#data 0x611C435a
#data 0x71024108
#data 0xF63C4100
#data 0x316CF32d
#data 0x6315F652
#data 0xF83C435a
#data 0x6311F842
#data 0x435AF32d
#data 0xF32DF73c
#data 0xF93CF752
#data 0x034D9016
#data 0x8D022338
#data 0xF74DF942
#data 0xF64d

loc_8C0C77B2:
#data 0xE034
#data 0x7701F346
#data 0xF3603723
#data 0xF537F371
#data 0xF346E038
#data 0xF391F380
#data 0x8FCBF537
#data 0x6453

loc_8C0C77CE:
#data 0x000b
#data 0x02A40009
#data 0x00000130

#align4
loc_8C0C77D8:
#data bank15.loc_8c15bcB8
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0C77E4:
#data 0x2FC62FE6
#data 0x54457FFc
#data 0xF808C73e
#data 0x5642E022
#data 0x0E6CD73d
#data 0xF508C73d
#data 0x6EECC73d
#data 0x4E08F408
#data 0x4E00906f
#data 0x3E7C9C6c
#data 0x63E5F78d
#data 0x435A3C5c
#data 0xF32D63E1
#data 0x034D435a
#data 0xF63C2338
#data 0xF652F32d
#data 0x8D03F93c
#data 0xC733F942
#data 0xF708F64d

#align4
loc_8C0C7830:
#data 0xF346E034
#data 0xF370EE01
#data 0xF637F361
#data 0xF346E038
#data 0xF391F380
#data 0x854FF637
#data 0x72FF6203
#data 0x8D353E23
#data 0x2F02

loc_8C0C7852:
#data 0xE022
#data 0x014C6463
#data 0x611C5642
#data 0x71024108
#data 0x317C4100
#data 0x435A6315
#data 0x016C6311
#data 0x435AF32d
#data 0x4108611c
#data 0x317C4100
#data 0xF32DF63c
#data 0xF6526315
#data 0x6311435a
#data 0xF842F83c
#data 0x435AF32d
#data 0xF32DF73c
#data 0x9028F752
#data 0x034DF93c
#data 0x8D022338
#data 0xF74DF942
#data 0xF64d

loc_8C0C78A2:
#data 0xE034
#data 0x7E01F346
#data 0xF3603E23
#data 0xF637F371
#data 0xF346E038
#data 0xF391F380
#data 0xF6378FCb

#align4
loc_8C0C78BC:
#data 0x02CCE020
#data 0x8B0B2228
#data 0xF3C6E00c
#data 0xF266E034
#data 0xF527F231
#data 0xF3C6E010
#data 0xF266E038
#data 0xF527F231

#align4
loc_8C0C78DC:
#data 0x6CF67F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x013002A4
#data 0xC0892492

#align4
loc_8C0C78EC:
#data bank15.loc_8c15bcB8
#data 0x3FD55555
#data 0x40092492
#data 0x80000000

#align4
loc_8C0C78FC:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0xFFFB2F86
#data 0xFFDBFFEb
#data 0x4F22FFCb
#data 0x99467FF4
#data 0xE00C6C53
#data 0x39CC5E45
#data 0xF396D322
#data 0xF2C6E034
#data 0x65E3E010
#data 0xF2307534
#data 0xF396FF2a
#data 0xF2C6E038
#data 0xF230E004
#data 0x430BFF27
#data 0x640364F3
#data 0x02CC9030
#data 0x89002228
#data 0x644b

loc_8C0C794E:
#data 0x7404
#data 0x644CDA18
#data 0x4409FD8d
#data 0x4401E022
#data 0xEB010E44
#data 0x680385Ef
#data 0xFC08C712
#data 0xFE08C713
#data 0xC7133B83
#data 0xFF088D5b

#align4
loc_8C0C7974:
#data 0x65E3D20d
#data 0x75345DE2
#data 0x64F3420b
#data 0x90116403
#data 0x233803Cc
#data 0x644B8900

#align4
loc_8C0C798C:
#data 0x644C7404
#data 0xE0224409
#data 0x0D444401
#data 0x000960B3
#data 0x8B0F8801
#data 0xA01EF4Dc
#data 0x02A4F6Cc
#data 0x000001D2

#align4
loc_8C0C79AC:
#data bank03.loc_8c03362c
#data 0xC0892492

#align4
loc_8C0C79B4:
#data bank15.loc_8c15bcB8
#data 0x40092492
#data 0x3FD55555

#align4
loc_8C0C79C0:
#data 0x04ECE022
#data 0x4408644c
#data 0x44007402
#data 0x634534Ac
#data 0x6341435a
#data 0x435AF32d
#data 0xF32DF43c
#data 0xF63CF4F2
#data 0xF6E2

loc_8C0C79E2:
#data 0xE022
#data 0x909B04Dc
#data 0x4408644c
#data 0x34AC4400
#data 0x435A6345
#data 0xF32D6341
#data 0x03DD435a
#data 0xF53C2338
#data 0xF5F2F32d
#data 0x8D02F73c
#data 0xF54DF7E2
#data 0xF44d

loc_8C0C7A0E:
#data 0xE034
#data 0x7B01F3E6
#data 0xF3403B83
#data 0xFD37F351
#data 0xF3E6E038
#data 0xF371F360
#data 0x8FA5FD37
#data 0x6ED3

loc_8C0C7A2A:
#data 0xE022
#data 0x907704Ec
#data 0x4408644c
#data 0x44007402
#data 0x634534Ac
#data 0x6341435a
#data 0x435AF32d
#data 0x233803Ed
#data 0xF32DF43c
#data 0xF53CF4F2
#data 0xF5E28D01
#data 0xF44d

loc_8C0C7A56:
#data 0xE034
#data 0xE00CF3E6
#data 0xE034F296
#data 0xF321F340
#data 0xE038FC37
#data 0xE010F3E6
#data 0xE038F296
#data 0xF321F350
#data 0xE022FC37
#data 0x0C3403Ec
#data 0x4F267F0c
#data 0xFDF9FCF9
#data 0xFFF9FEF9
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0C7A98:
#data 0x2FE6E022
#data 0xE6012FD6
#data 0x035C4F22
#data 0x854E0434
#data 0x8D3D2008
#data 0x854E6D63
#data 0x70FF6763
#data 0x854F814e
#data 0x37E36E03
#data 0x8D36C719
#data 0xF408

loc_8C0C7AC2:
#data 0x5643
#data 0xE060E164
#data 0xF266316c
#data 0xF230F318
#data 0xE06CF627
#data 0xF246F32c
#data 0xF38DF230
#data 0x8F03F325
#data 0xF266F627
#data 0xF627F240

#align4
loc_8C0C7AE8:
#data 0xF435F366
#data 0xF3668902
#data 0xF637F341

#align4
loc_8C0C7AF4:
#data 0xE222F366
#data 0xF33D325c
#data 0xE1226220
#data 0x316C7701
#data 0x600C005a
#data 0x40217004
#data 0x40214021
#data 0x302C37E3
#data 0x2100C91f
#data 0x64638FD3
#data 0x0009A007
#data 0x00000130
#data 0x43800000

#align4
loc_8C0C7B28:
#data 0x0009B007
#data 0x6D03

loc_8C0C7B2E:
#data 0x60D3
#data 0x4F260009
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C7B3A:
#data 0x9064
#data 0x6566064e
#data 0x8F032558
#data 0x76F8E701
#data 0xE7006566

#align4
loc_8C0C7B4C:
#data 0xE0680466
#data 0xE06CF346
#data 0xE068F437
#data 0x435A6355
#data 0xF437F32d
#data 0x6351E06c
#data 0xE068F346
#data 0xF246435a
#data 0xF231E070
#data 0xF232F32d
#data 0xF427F38d
#data 0xF408C723
#data 0xF246E070
#data 0x8B02F325
#data 0xF240F246
#data 0xF427

loc_8C0C7B8A:
#data 0x6355
#data 0x435AF246
#data 0xF32DD11e
#data 0xE101415a
#data 0xF30DF232
#data 0xF233F427
#data 0x6051F427
#data 0x814EF28d
#data 0xF427E06c
#data 0x6603854f
#data 0x89263163

#align4
loc_8C0C7BB4:
#data 0xE0605543
#data 0xE06CF356
#data 0xF230F246
#data 0xE070F527
#data 0xF537F346
#data 0x815E854e
#data 0x6303854e
#data 0xE070435a
#data 0xE064F246
#data 0xF233F32d
#data 0xF527F38d
#data 0xF256E06c
#data 0x8B02F325
#data 0xF240F256
#data 0xF527

loc_8C0C7BEE:
#data 0xF356
#data 0x8D03F435
#data 0xF3566453
#data 0xF537F341

#align4
loc_8C0C7BFC:
#data 0x31637101
#data 0x8BD8

loc_8C0C7C02:
#data 0x000b
#data 0x01B06073
#data 0x43800000
#data 0x41400000
#data 0x7FF84F22
#data 0xE601D353
#data 0x1F512F42
#data 0x430BE503
#data 0x2008E400
#data 0x64038D0a
#data 0xE0269396
#data 0xE0200435
#data 0xD34D52F1
#data 0x14340424
#data 0x142662F2
#data 0x4F267F08
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0C7C44:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0C7D6C,pc),r0 ; r0 set to 0x8C15BFE0
extu.b r3,r3
mov.l @(0x18,r14),r5
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0C7C5A:
mov r4,r3
mov.l @(loc_8C0C7D70,pc),r1 ; r1 set to 0x8C15BFEc
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

#align4
loc_8C0C7C6C:
#data 0x4F229175
#data 0x314C9074
#data 0xD33F9271
#data 0x325C430b
#data 0xE201906f
#data 0x71506143
#data 0x84520424
#data 0x84518042
#data 0xE0508041
#data 0xF437F356
#data 0xF356E054
#data 0x9061F437
#data 0x0434035c
#data 0x025C7001
#data 0xE0300424
#data 0x6253035c
#data 0x04347250
#data 0x430BD331
#data 0xE024E00c
#data 0x025CF48d
#data 0x84440424
#data 0x80447001
#data 0x035CE024
#data 0xC72C0434
#data 0xE05CF308
#data 0xE068F437
#data 0xE060F447
#data 0xC729F447
#data 0xE06CF308
#data 0xC728F437
#data 0x903CF408
#data 0x2338034d
#data 0xE05C8909
#data 0xF34DF346
#data 0xE068F437
#data 0xF34DF346
#data 0xC722F437
#data 0xF408

loc_8C0C7D02:
#data 0xE034
#data 0xF356D322
#data 0xF340E62c
#data 0xC71FF437
#data 0xE038F308
#data 0xE517F256
#data 0xF427F230
#data 0x4F26432b


loc_8C0C7D20:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l @(loc_8C0C7D94,pc),r4 ; r4 set to 0x8C2895F0
mov 0x3C,r0 ; r0 set to 0x3c
mov.l r5,@r15
mov.w @(r0,r4),r3
mov 0x3B,r0 ; r0 set to 0x3b
mov.b @(r0,r4),r2
mov 0x01,r1 ; r1 set to 0x01
extu.w r3,r3
extu.b r2,r2
shad r2, r1 ; r1 ??? bc r2 is ???	
tst r1,r3
bf loc_8C0C7DFe
mov.l @(loc_8C0C7D98,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???	
exts.b r0,r0 ; r0 ??	
cmp/pz r0
bt loc_8C0C7D9c
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x04,r14) 	
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8C0C7D5E,pc),r0 ; r0 set to 0x12c
bra loc_8C0C7DFe
mov.b r3,@(r0,r14) 	
#data 0x00DC0E06
#data 0x00C0

loc_8C0C7D5E:
#data 0x012c
#data 0x013001A3

#align4
loc_8C0C7D64:
#data bank04.loc_8c044F12

loc_8C0C7D68:
#data loc_8c0c7C44

loc_8C0C7D6C:
#data bank15.loc_8c15bfE0

loc_8C0C7D70:
#data bank15.loc_8c15bfEc

loc_8C0C7D74:
#data bank12.loc_8c129560

loc_8C0C7D78:
#data bank12.loc_8c1294C8
#data 0x41A00000
#data 0xBF4DB6Db
#data 0x43415555
#data 0xC3415555
#data 0x43564924

#align4
loc_8C0C7D90:
#data bank03.loc_8c034e8c

loc_8C0C7D94:
#data 0x8C2895F0

#align4
loc_8C0C7D98:
#data bank03.loc_8c034dee

loc_8C0C7D9C:
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
#data 0x63F29020
#data 0xE038F336
#data 0xF325F2E6
#data 0x90198B0d
#data 0xF48D62F2
#data 0xE038F326
#data 0xE05CFE37
#data 0xE060FE47
#data 0xE068FE47
#data 0xE06CFE47
#data 0xFE47


loc_8C0C7DFE:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0C7E06:
mov r4,r3
mov.l @(loc_8C0C7E1C,pc),r1 ; r1 set to 0x8C15BFF8
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x0000041c

#align4
loc_8C0C7E1C:
#data bank15.loc_8c15BFF8

loc_8C0C7E20:
#data 0x4F22918d
#data 0x314C908c
#data 0xD3499289
#data 0x325C430b
#data 0xE2019087
#data 0x71506143
#data 0x84520424
#data 0x84518042
#data 0xE0508041
#data 0xF437F356
#data 0xF356E054
#data 0x9079F437
#data 0x0434035c
#data 0x025C7001
#data 0xE0300424
#data 0x6253035c
#data 0x04347250
#data 0x430BD33b
#data 0xE024E00c
#data 0xE600025c
#data 0xE2F80424
#data 0x70018444
#data 0x90628044
#data 0xE0240464
#data 0x0434035c
#data 0x0424E031
#data 0x0465905d
#data 0x4F26

loc_8C0C7E8E:
#data 0x2FE6
#data 0x2FD66E53
#data 0x4F222FC6
#data 0x200884E5
#data 0x6D438F42
#data 0x00EC9052
#data 0x8814600c
#data 0x904E8B3c
#data 0x600C00Ec
#data 0x89048802
#data 0x00EC9049
#data 0x8801600c
#data 0x8B32

loc_8C0C7EBE:
#data 0xE024
#data 0x03EC61D3
#data 0x7134E2F8
#data 0xE0310D34
#data 0x62E30D24
#data 0x7234D320
#data 0xE00C430b
#data 0xEC019038
#data 0x22C802Ec
#data 0x02EC891c
#data 0x223AE301
#data 0x70EB0E24
#data 0x420BD21a
#data 0x20C90DC4
#data 0x4000932b
#data 0xE0206C03
#data 0x00DC33Ec
#data 0x600C6330
#data 0x8802633c
#data 0x8B013C3c
#data 0x7C15A001

loc_8C0C7F10:
#data 0x7C19

loc_8C0C7F12:
#data 0xD312
#data 0x66C3E517
#data 0x64D3430b

#align4
loc_8C0C7F1C:
#data 0x00EC9016
#data 0x8904C802

#align4
loc_8C0C7F24:
#data 0x80D4E002
#data 0x900AE300
#data 0x0D34

loc_8C0C7F2E:
#data 0x4F26
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0C7F38:
mov.l @(loc_8C0C7F60,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x00Dc
#data 0x012C00C0
#data 0x013001A3
#data 0x01580159
#data 0x01D20141

#align4
loc_8C0C7F50:
#data bank12.loc_8c129560

loc_8C0C7F54:
#data bank12.loc_8c1294C8

loc_8C0C7F58:
#data bank03.loc_8c03319e

loc_8C0C7F5C:
#data bank03.loc_8c034e8c

loc_8C0C7F60:
#data bank04.loc_8c0450C0
#data 0x7FF44F22
#data 0x60532F42
#data 0x80F80009
#data 0x00096063
#data 0xE503D35a
#data 0xE60080F4
#data 0x6463430b
#data 0x8D122008
#data 0x92A46403
#data 0xE120E026
#data 0x314CD355
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

loc_8C0C7FB2:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0C80E8,pc),r0 ; r0 set to 0x8C15C024
extu.b r3,r3
mov.l @(0x18,r14),r5
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0C7FC8:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0C80D4,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0C80D4,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0C80EC,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0C80D6,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0C80D8,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0C80DA,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0C80F0,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0C80D8,pc),r0 ; r0 set to 0x12c
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
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3
mov.w @(loc_8C0C80DC,pc),r0 ; r0 set to 0x130
extu.b r3,r3
mov.w r3,@(r0,r14) 	
mov r14,r3
mov 0x34,r0 ; r0 set to 0x34
add r0,r3
mov.l @(loc_8C0C80F4,pc),r0 ; r0 set to 0x8C15C004
mov.l r3,@-r15
mov 0x21,r3 ; r3 set to 0x21
add r14,r3 ; r3 ??? bc r14 is ???	
mov.b @r3,r3
extu.b r3,r3
shll r3
mov.w @(r0,r3),r2
mova @(loc_8C0C80F8,pc),r0  ; r0 set to 0x8C0C80F8
fmov.s @r0,fr0 ; r0 ??	
mov 0x1B,r5 ; r5 set to 0x1b
lds r2,fpul 	
mov 0x00,r6 ; r6 set to 0x00
mov.l @r15+,r2
mov.l @(loc_8C0C80FC,pc),r3 ; r3 set to 0x8C034C38
float fpul,fr3
fmov.s @r2,fr2
fmac fr0,fr3,fr2
fmov.s fr2,@r2
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???	
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
bra loc_8C0C808e
mov.l @r15+,r14

loc_8C0C8088:
mov.l @(loc_8C0C8100,pc),r3 ; r3 set to 0x8C034D8c
jmp @r3
nop 	

loc_8C0C808E:
mov 0x24,r0 ; r0 set to 0x24
mov.l r14,@-r15
mov.b @(r0,r5),r3
mov r4,r14
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0C80DE,pc),r0 ; r0 set to 0x159
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x13,r0 	
bt loc_8C0C80Ac
mov.b @(0x04,r14),r0 	
add 0x01,r0
mov.b r0,@(0x04,r14) 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0C80AC:
mov.b @(0x05,r14),r0 	
mov r14,r4
mov.l @(loc_8C0C8104,pc),r1 ; r1 set to 0x8C15C030
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0C80C0:
mov r4,r3
mov.l @(loc_8C0C8108,pc),r1 ; r1 set to 0x8C15C034
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x0F00

loc_8C0C80D4:
#data 0x00Dc

loc_8C0C80D6:
#data 0x00C0

loc_8C0C80D8:
#data 0x012c

loc_8C0C80DA:
#data 0x01A3

loc_8C0C80DC:
#data 0x0130

loc_8C0C80DE:
#data 0x0159

#align4
loc_8C0C80E0:
#data bank04.loc_8c044F12

loc_8C0C80E4:
#data loc_8c0c7FB2

loc_8C0C80E8:
#data bank15.loc_8c15c024

loc_8C0C80EC:
#data bank12.loc_8c129560

loc_8C0C80F0:
#data bank12.loc_8c1294C8

loc_8C0C80F4:
#data bank15.loc_8c15c004

loc_8C0C80F8:
#data 0x3FD55555

#align4
loc_8C0C80FC:
#data bank03.loc_8c034C38

loc_8C0C8100:
#data bank03.loc_8c034D8c

loc_8C0C8104:
#data bank15.loc_8c15c030

loc_8C0C8108:
#data bank15.loc_8c15c034

loc_8C0C810C:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x4F229191
#data 0x31EC84E4
#data 0x7001928d
#data 0x80E4D348
#data 0x430B908a
#data 0x908832Dc
#data 0x61E3E401
#data 0x0E447150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC907a
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD33A0E34
#data 0xE00C430b
#data 0x02DCE024
#data 0x0E24E3Ff
#data 0x0E449067
#data 0x0E34E031
#data 0xF3D6E03c
#data 0xFE37D434
#data 0x00ECE021
#data 0x4000600c
#data 0x034D4000
#data 0xF208C731
#data 0x435AE05c
#data 0xF322F32d
#data 0xE021FE37
#data 0x633C03Ec
#data 0x43004300
#data 0x8541343c
#data 0x435A6303
#data 0xF108C72a
#data 0xF32DE060
#data 0xFE37F312
#data 0x03ED9045
#data 0x8D042338
#data 0xE05CE611
#data 0xF34DF3E6
#data 0xFE37

loc_8C0C81C6:
#data 0xD324
#data 0x430BE517
#data 0x4F2664E3
#data 0x64E365D3
#data 0xA0116DF6
#data 0x6EF6

loc_8C0C81DA:
#data 0x2FE6
#data 0xD31F4F22
#data 0x6E43430b
#data 0x4011600e
#data 0x84E48905
#data 0x7001E300
#data 0x902480E4
#data 0x0E34

loc_8C0C81F6:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0C81FC:
mov.l r14,@-r15
mov 0x5C,r0 ; r0 set to 0x5c
mov r4,r14
fmov.s @(r0,r14),fr3
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0C8260,pc),r1 ; r1 set to 0x8C15C044
fmov.s @(r0,r5),fr2
mov r14,r4
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s @(r0,r14),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r5),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov.b @(0x05,r14),r0 	
extu.b r0,r0 ; r0 set to 0x38
shll2 r0 ; r0 set to 0xE0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0C8228:
mov r4,r3
mov.l @(loc_8C0C8264,pc),r1 ; r1 set to 0x8C15C048
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x00Dc
#data 0x012C00C0
#data 0x013001A3

#align4
loc_8C0C8244:
#data bank12.loc_8c129560

loc_8C0C8248:
#data bank12.loc_8c1294C8

loc_8C0C824C:
#data bank15.loc_8c15c008
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0C8258:
#data bank03.loc_8c034e8c

loc_8C0C825C:
#data bank03.loc_8c034dee

loc_8C0C8260:
#data bank15.loc_8c15c044

loc_8C0C8264:
#data bank15.loc_8c15c048


loc_8C0C8268:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0C8384,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0C8384,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0C8390,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0C8386,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0C8388,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0C838A,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0C8394,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.l @(loc_8C0C83A4,pc),r4 ; r4 set to 0x8C15C010
mov.b @(r0,r13),r2
mov 0x00,r3 ; r3 set to 0x00
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0C8388,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r2
mov.l @(loc_8C0C8398,pc),r0 ; r0 set to 0x8C15C018
extu.b r2,r2
mov.b @(r0,r2),r3 ; r3 ??? bc r2 is ???	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr3
mov.l @(loc_8C0C839C,pc),r3 ; r3 set to 0x8C26A5A8
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @r3,fr3 ; r3 ??	
fmov.s fr3,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0C83A0,pc),r0  ; r0 set to 0x8C0C83A0
fmov.s @r0,fr4 ; r4 ??	
mov.w @(loc_8C0C838C,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r2
tst r2,r2
bf loc_8C0C8318
mov 0x21,r2 ; r2 set to 0x21
fmov fr4,fr0 ; r0 ??? bc r4 is ???	
add r14,r2 ; r2 ??? bc r14 is ???	
mov.b @r2,r2
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r14),fr2
extu.b r2,r2
shll r2
add r2,r4
mov.w @r4,r2
lds r2,fpul 	
float fpul,fr3
bra loc_8C0C8332
fmac fr0,fr3,fr2

loc_8C0C8318:
mov 0x21,r1 ; r1 set to 0x21
add r14,r1 ; r1 ??? bc r14 is ???	
mov.b @r1,r1
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r14),fr2
extu.b r1,r1
shll r1
add r1,r4
mov.w @r4,r2
lds r2,fpul 	
float fpul,fr3
fmul fr4,fr3
fsub fr3,fr2

loc_8C0C8332:
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0C83A8,pc),r0  ; r0 set to 0x8C0C83A8, r0 init to 0x8C0C83A8
fmov.s @r0,fr3
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
mov.l @(loc_8C0C83B0,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
mov 0x13,r5 ; r5 set to 0x13, r5 set to 0x13
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0C83AC,pc),r0  ; r0 set to 0x8C0C83AC, r0 set to 0x8C0C83Ac
fmov.s @r0,fr3 ; r3 ??, r3 ??	
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
mov 0x07,r6 ; r6 set to 0x07, r6 set to 0x07
fmov.s fr3,@(r0,r14) 	
jsr @r3
mov r14,r4
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
mov r13,r5 ; r5 ??? bc r13 is ???, r5 ??? bc r13 is ???	
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???	
mov r14,r4
extu.b r0,r0
shll2 r0
shll r0
mov.w r0,@(0x1C,r14) 	
lds.l @r15+,pr 	
mov.l @r15+,r13
bra loc_8C0C8442
mov.l @r15+,r14

loc_8C0C8366:
#data 0x854e
#data 0x814E70Ff
#data 0x600F7001
#data 0x8B052008
#data 0xE2019008
#data 0x84450424
#data 0x80457001

#align4
loc_8C0C8380:
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0C8384:
#data 0x00Dc

loc_8C0C8386:
#data 0x00C0

loc_8C0C8388:
#data 0x012c

loc_8C0C838A:
#data 0x01A3

loc_8C0C838C:
#data 0x0130
#data 0x0000

#align4
loc_8C0C8390:
#data bank12.loc_8c129560

loc_8C0C8394:
#data bank12.loc_8c1294C8

loc_8C0C8398:
#data bank15.loc_8c15c018

loc_8C0C839C:
#data 0x8C26A5A8

#align4
loc_8C0C83A0:
#data 0x3FD55555

#align4
loc_8C0C83A4:
#data bank15.loc_8c15c010

loc_8C0C83A8:
#data 0xC14DB6Db

#align4
loc_8C0C83AC:
#data 0xBF4DB6Db

#align4
loc_8C0C83B0:
#data bank03.loc_8c034e8c


loc_8C0C83B4:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0C84A4,pc),r3 ; r3 set to 0x8C034DEe
mov r4,r14
mov.l r5,@r15
jsr @r3
mov r14,r4
mov 0x60,r1 ; r1 set to 0x60
mov.l @(loc_8C0C84A8,pc),r4 ; r4 set to 0x8C15C01c
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
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
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
mov.l @r15,r3
extu.b r0,r0
shll r0
mov.w @(r0,r4),r2
mov.w @(loc_8C0C849E,pc),r0 ; r0 set to 0x41c
lds r2,fpul 	
fmov.s @(r0,r3),fr2
mov 0x38,r0 ; r0 set to 0x38
float fpul,fr3
fadd fr3,fr2
fmov.s @(r0,r14),fr3
fcmp/gt fr3,fr2
bf loc_8C0C8434
mov 0x21,r0 ; r0 set to 0x21
mov.l @r15,r2
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
mov 0x13,r5 ; r5 set to 0x13
extu.b r0,r0
shll r0
mov.w @(r0,r4),r3
mov r14,r4 ; r4 ??? bc r14 is ???	
mov.w @(loc_8C0C849E,pc),r0 ; r0 set to 0x41c
lds r3,fpul 	
fmov.s @(r0,r2),fr2
mov 0x38,r0 ; r0 set to 0x38
float fpul,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov.b @(0x05,r14),r0 	
add 0x01,r0 ; r0 set to 0x39
mov.b r0,@(0x05,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r6
add 0x03,r6
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0C84AC,pc),r3 ; r3 set to 0x8C034E8c
jmp @r3
mov.l @r15+,r14

loc_8C0C8434:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0C843C:
mov.l @(loc_8C0C84A4,pc),r3 ; r3 set to 0x8C034DEe
jmp @r3
nop 	

loc_8C0C8442:
mov.l r14,@-r15
mov 0x24,r0 ; r0 set to 0x24
mov 0x0D,r3 ; r3 set to 0x0d
mov r4,r14
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0C84A0,pc),r0 ; r0 set to 0x159
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x13,r0 	
bt loc_8C0C8460
mov.b @(0x04,r14),r0 	
add 0x01,r0
mov.b r0,@(0x04,r14) 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0C8460:
mov.b @(0x05,r14),r0 	
mov r14,r4
mov.l @(loc_8C0C84B0,pc),r1 ; r1 set to 0x8C15C058
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0C8474:
mov r4,r3
mov.l @(loc_8C0C84B4,pc),r1 ; r1 set to 0x8C15C064
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0C8486:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0C84A2,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0C8494:
mov.l @(loc_8C0C84B8,pc),r3 ; r3 set to 0x8C0450C0
mov 0x00,r2 ; r2 set to 0x00
mov.w @(loc_8C0C84A2,pc),r0 ; r0 set to 0x12c
jmp @r3
mov.b r2,@(r0,r4) 	

loc_8C0C849E:
#data 0x041c

loc_8C0C84A0:
#data 0x0159

loc_8C0C84A2:
#data 0x012c

#align4
loc_8C0C84A4:
#data bank03.loc_8c034dee

loc_8C0C84A8:
#data bank15.loc_8c15c01c

loc_8C0C84AC:
#data bank03.loc_8c034e8c

loc_8C0C84B0:
#data bank15.loc_8c15c058

loc_8C0C84B4:
#data bank15.loc_8c15c064

loc_8C0C84B8:
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
#data 0x4F226043
#data 0xD34C7FF8
#data 0x1F41E600
#data 0xE5042F50
#data 0x6463430b
#data 0x8D072008
#data 0xD3486403
#data 0x1434E020
#data 0x142652F1
#data 0x043463F0
#data 0x4F267F08
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0C8518:
mov r4,r3
mov.l @(loc_8C0C8628,pc),r1 ; r1 set to 0x8C15C0E0
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0C852A:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0C8614,pc),r3 ; r3 set to 0x1000
mov.l r13,@-r15
mov.w @(loc_8C0C8616,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0C8616,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(0x18,r14),r4
mov.b r0,@(0x04,r14) 	
mov 0x26,r0 ; r0 set to 0x26
mov.w r3,@(r0,r14) 	
mov.w @(loc_8C0C8618,pc),r0 ; r0 set to 0xC0
mov.l @(loc_8C0C862C,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C0C861A,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0C861C,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0C8630,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov 0x24,r1 ; r1 set to 0x24
add r14,r1 ; r1 ??? bc r14 is ???	
mov.b r2,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r13
mov.l @(loc_8C0C8634,pc),r2 ; r2 set to 0x8C15C074
extu.b r13,r13
mov r13,r3 ; r3 ??? bc r13 is ???	
shll2 r3
shll r13
add r3,r13
add r2,r13
mov.b @(0x04,r13),r0 	
mov.b r0,@r1
mova @(loc_8C0C8638,pc),r0  ; r0 set to 0x8C0C8638
fmov.s @r0,fr4
mov.w @(loc_8C0C861E,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bf loc_8C0C85C4
mov.w @r13,r3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r4),fr2 ; r2 ??? bc r4 is ???	
lds r3,fpul 	
fmov fr4,fr0 ; r0 ??? bc r4 is ???	
float fpul,fr3
bra loc_8C0C85D2
fmac fr0,fr3,fr2

loc_8C0C85C4:
mov.w @r13,r3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r4),fr2
lds r3,fpul 	
float fpul,fr3
fmul fr4,fr3
fsub fr3,fr2

loc_8C0C85D2:
fmov.s fr2,@(r0,r14) 	
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
mov.w @(0x02,r13),r0 	
mov r0,r3 ; r3 set to 0x34
lds r3,fpul 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(loc_8C0C8640,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
fmov.s @(r0,r4),fr2
mova @(loc_8C0C863C,pc),r0  ; r0 set to 0x8C0C863C, r0 set to 0x8C0C863c
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

loc_8C0C85FE:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20, r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
mov.l @(loc_8C0C8644,pc),r0 ; r0 set to 0x8C15C0F0, r0 set to 0x8C15C0F0, r0 set to 0x8C15C0F0
extu.b r3,r3
mov.l @(0x18,r14),r5 ; r5 ??? bc r14 is ???, r5 ??? bc r14 is ???	
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0C8614:
#data 0x1000

loc_8C0C8616:
#data 0x00Dc

loc_8C0C8618:
#data 0x00C0

loc_8C0C861A:
#data 0x012c

loc_8C0C861C:
#data 0x01A3

loc_8C0C861E:
#data 0x0130

#align4
loc_8C0C8620:
#data bank04.loc_8c044F12

loc_8C0C8624:
#data loc_8c0c8518

loc_8C0C8628:
#data bank15.loc_8c15c0E0

loc_8C0C862C:
#data bank12.loc_8c129560

loc_8C0C8630:
#data bank12.loc_8c1294C8

loc_8C0C8634:
#data bank15.loc_8c15c074

loc_8C0C8638:
#data 0x3FD55555

#align4
loc_8C0C863C:
#data 0x40092492

#align4
loc_8C0C8640:
#data bank03.loc_8c034C38

loc_8C0C8644:
#data bank15.loc_8c15c0F0


loc_8C0C8648:
mov r4,r3
mov.l @(loc_8C0C8778,pc),r1 ; r1 set to 0x8C15C138
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0C865A:
mov.b @(0x05,r4),r0 	
mov.l @(loc_8C0C877C,pc),r6 ; r6 set to 0x8C26A518
add 0x01,r0
mov.b r0,@(0x05,r4) 	
mov.w @(loc_8C0C8764,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r3
tst r3,r3
bf loc_8C0C8674
mova @(loc_8C0C8780,pc),r0  ; r0 set to 0x8C0C8780
fmov.s @r0,fr3
mov.w @(loc_8C0C8766,pc),r0 ; r0 set to 0x8c
bra loc_8C0C867a
nop 	

loc_8C0C8674:
mova @(loc_8C0C8784,pc),r0  ; r0 init to 0x8C0C8784
fmov.s @r0,fr3
mov.w @(loc_8C0C8768,pc),r0 ; r0 set to 0x88

loc_8C0C867A:
fmov.s @(r0,r6),fr2
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov.w @(loc_8C0C876A,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
fmov.s @(r0,r5),fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0C8764,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r4),r3
tst r3,r3
bf loc_8C0C86A0
mova @(loc_8C0C8788,pc),r0  ; r0 set to 0x8C0C8788, r0 set to 0x8C0C8788
fmov.s @r0,fr3
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fmov.s fr3,@(r0,r4) 	
mova @(loc_8C0C878C,pc),r0  ; r0 set to 0x8C0C878C, r0 set to 0x8C0C878c
bra loc_8C0C86Ac
fmov.s @r0,fr3

#align4
loc_8C0C86A0:
#data 0xF308C73b
#data 0xF437E05c
#data 0xF308C73a

#align4
loc_8C0C86AC:
#data 0xF48DE068
#data 0xE060F437
#data 0xE06CF447
#data 0xF447

loc_8C0C86BA:
#data 0x2FE6
#data 0xD3364F22
#data 0x6E43430b
#data 0x31ECE15c
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0xF3E6E068
#data 0xF2E6E05c
#data 0xF38DF232
#data 0x8B02F235
#data 0x700184E5
#data 0x80E5

loc_8C0C86F6:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0C86FC:
mov.l @(loc_8C0C8798,pc),r3 ; r3 set to 0x8C034D8c
jmp @r3
nop 	

loc_8C0C8702:
#data 0x2FE6
#data 0x90317FFc
#data 0x03EC6E53
#data 0x89092338
#data 0x00EC902d
#data 0x8814600c
#data 0x90298B04
#data 0x600C00Ec
#data 0x89088802

#align4
loc_8C0C8724:
#data 0xE3008444
#data 0x80447001
#data 0x04349021
#data 0x000B7F04
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C8736:
#data 0xE020
#data 0x024CD118
#data 0x9019E51b
#data 0x6323622c
#data 0x42004308
#data 0x321C323c
#data 0x2F226623
#data 0x846507Ec
#data 0x7F046603
#data 0x432BD311
#data 0x7F046EF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0C8764:
#data 0x0130

loc_8C0C8766:
#data 0x008c

loc_8C0C8768:
#data 0x0088

loc_8C0C876A:
#data 0x041c
#data 0x01D00141
#data 0x012C01E8
#data 0x00000140

#align4
loc_8C0C8778:
#data bank15.loc_8c15c138

loc_8C0C877C:
#data 0x8C26A518

#align4
loc_8C0C8780:
#data 0x433AAAAa

#align4
loc_8C0C8784:
#data 0xC33AAAAa

#align4
loc_8C0C8788:
#data 0xC1555555

#align4
loc_8C0C878C:
#data 0x3ED55555
#data 0x41555555
#data 0xBED55555

#align4
loc_8C0C8798:
#data bank03.loc_8c034D8c

loc_8C0C879C:
#data bank15.loc_8c15c074

loc_8C0C87A0:
#data bank03.loc_8c034CD6

loc_8C0C87A4:
#data 0x7FFC2FE6
#data 0x6E539094
#data 0x233803Ec
#data 0x90908904
#data 0x600C00Ec
#data 0x89088822

#align4
loc_8C0C87BC:
#data 0xE3008444
#data 0x80447001
#data 0x04349088
#data 0x000B7F04
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C87CE:
#data 0xE020
#data 0x024CD143
#data 0x9080E51b
#data 0x6323622c
#data 0x42004308
#data 0x321C323c
#data 0x2F226623
#data 0x846507Ec
#data 0x7F046603
#data 0x432BD33c
#data 0x7F046EF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0C87FC:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0C88E8,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r5,r13
exts.b r0,r0
cmp/pz r0
bt loc_8C0C881e
mov.b @(0x04,r14),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0C88D8,pc),r0 ; r0 set to 0x12c
bra loc_8C0C8872
mov.b r3,@(r0,r14) 	

loc_8C0C881E:
mov 0x20,r0 ; r0 set to 0x20
mov.l @(loc_8C0C88E0,pc),r2 ; r2 set to 0x8C15C074
mov.b @(r0,r14),r4
mova @(loc_8C0C88EC,pc),r0  ; r0 set to 0x8C0C88Ec
fmov.s @r0,fr4
extu.b r4,r4
mov.w @(loc_8C0C88DC,pc),r0 ; r0 set to 0x130
mov r4,r3
shll r4
shll2 r3
add r3,r4
mov.w @(r0,r14),r3
tst r3,r3
bf/s loc_8C0C884c
add r2,r4
mov.w @r4,r3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr2 ; r2 ??? bc r13 is ???	
lds r3,fpul 	
fmov fr4,fr0 ; r0 ??? bc r4 is ???	
float fpul,fr3
bra loc_8C0C885a
fmac fr0,fr3,fr2

loc_8C0C884C:
mov.w @r4,r3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr2
lds r3,fpul 	
float fpul,fr3
fmul fr4,fr3
fsub fr3,fr2

loc_8C0C885A:
fmov.s fr2,@(r0,r14) 	
mov.w @(0x02,r4),r0 	
mov r0,r3 ; r3 set to 0x34
lds r3,fpul 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r13),fr2
mova @(loc_8C0C88F0,pc),r0  ; r0 set to 0x8C0C88F0, r0 set to 0x8C0C88F0
float fpul,fr3
fmov.s @r0,fr0 ; r0 ??, r0 ??	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmac fr0,fr3,fr2
fmov.s fr2,@(r0,r14) 	

loc_8C0C8872:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0C887A:
mov r4,r3
mov.l @(loc_8C0C88F4,pc),r1 ; r1 set to 0x8C15C144
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0C888C:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l @(loc_8C0C88F8,pc),r3 ; r3 set to 0x8C044F12
mov.l r5,@r15
mov 0x03,r5 ; r5 set to 0x03
mov.b @(0x05,r14),r0 	
mov 0x02,r6 ; r6 set to 0x02
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov 0x0A,r0 ; r0 set to 0x0a
mov.w r0,@(0x1E,r14) 	
jsr @r3
mov r14,r4
tst r0,r0
bt/s loc_8C0C890a
mov r0,r13 ; r13 set to 0x0a
mov.l @(loc_8C0C88FC,pc),r3 ; r3 set to 0x8C0C8518
mov.l r3,@(0x10,r13)  ; r13 ??	
mov.l @r15,r2
mov.l r2,@(0x18,r13) 	
mov.w @(0x1E,r14),r0 	
add 0xFF,r0 ; r0 set to 0x09
mov.w r0,@(0x1E,r13) 	
bsr loc_8C0C9070
mov r14,r4
mova @(loc_8C0C8900,pc),r0  ; r0 set to 0x8C0C8900
fmov.s @r0,fr3 ; r3 ??	
fcmp/gt fr0,fr3
bt loc_8C0C8904
mov 0x20,r0 ; r0 set to 0x20
mov 0x05,r2 ; r2 set to 0x05
bra loc_8C0C890a
mov.b r2,@(r0,r13) 	
#data 0x01D00141

loc_8C0C88D8:
#data 0x012c
#data 0x0140

loc_8C0C88DC:
#data 0x0130
#data 0x0000

#align4
loc_8C0C88E0:
#data bank15.loc_8c15c074

loc_8C0C88E4:
#data bank03.loc_8c034CD6

loc_8C0C88E8:
#data bank03.loc_8c034D8c

loc_8C0C88EC:
#data 0x3FD55555

#align4
loc_8C0C88F0:
#data 0x40092492

#align4
loc_8C0C88F4:
#data bank15.loc_8c15c144

loc_8C0C88F8:
#data bank04.loc_8c044F12

loc_8C0C88FC:
#data loc_8c0c8518

loc_8C0C8900:
#data 0x42A00000

#align4
loc_8C0C8904:
#data 0xE106E020
#data 0x0D14


loc_8C0C890A:
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0C8916:
mov.w @(loc_8C0C8A18,pc),r0 ; r0 set to 0x140, r0 set to 0x140
mov.b @(r0,r5),r3
tst r3,r3
bt loc_8C0C8938
mov.w @(loc_8C0C8A1A,pc),r0 ; r0 set to 0x1D0, r0 set to 0x1D0
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x15,r0 	
bf loc_8C0C8938
mov.w @(loc_8C0C8A1C,pc),r0 ; r0 set to 0x1E9, r0 set to 0x1E9
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x01,r0 	
bf loc_8C0C8938
mov.l @(loc_8C0C8A24,pc),r3 ; r3 set to 0x8C034D8C, r3 set to 0x8C034D8c
jmp @r3
nop 	

loc_8C0C8938:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0C8A1E,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0C8946:
mov r4,r3
mov.l @(loc_8C0C8A28,pc),r1 ; r1 set to 0x8C15C14c
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0C8958:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l r5,@r15
mov.b @(0x05,r14),r0 	
mov.l @(0x08,r14),r4
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
extu.b r0,r0
cmp/eq 0x04,r0 	
bf loc_8C0C897c
mova @(loc_8C0C8A2C,pc),r0  ; r0 set to 0x8C0C8A2c
bra loc_8C0C8980
fmov.s @r0,fr4

#align4
loc_8C0C897C:
#data 0xF408C72c

#align4
loc_8C0C8980:
#data 0x03ED904e
#data 0x8D012338
#data 0xF44DE034

#align4
loc_8C0C898C:
#data 0xE503F346
#data 0xE602D328
#data 0xFE37F340
#data 0xF346E038
#data 0x430BFE37
#data 0x200864E3
#data 0x6D038D17
#data 0x1D34D323
#data 0x1D2662F2
#data 0x70FF85Ef
#data 0x85EF81Df
#data 0x89092008
#data 0x64E3B358
#data 0xF308C71e
#data 0x8903F305
#data 0xE205E020
#data 0x0D24A003

#align4
loc_8C0C89D0:
#data 0xE106E020
#data 0x0D14

loc_8C0C89D6:
#data 0x65F2
#data 0x7F0464E3
#data 0x6DF64F26
#data 0x6EF6


loc_8C0C89E2:
mov.l @(0x08,r4),r5
mov 0x02,r3 ; r3 set to 0x02
mov.b @(0x04,r5),r0 	
extu.b r0,r0
cmp/ge r3,r0
bf loc_8C0C89Fc
mov.b @(0x04,r4),r0 	
mov 0x00,r2 ; r2 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0C8A1E,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r2,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0C89FC:
mov.l @(loc_8C0C8A24,pc),r3 ; r3 set to 0x8C034D8c
jmp @r3
nop 	
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0C8A06:
mov r4,r3
mov.l @(loc_8C0C8A40,pc),r1 ; r1 set to 0x8C15C154
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0C8A18:
#data 0x0140

loc_8C0C8A1A:
#data 0x01D0

loc_8C0C8A1C:
#data 0x01E9

loc_8C0C8A1E:
#data 0x012c
#data 0x00000130

#align4
loc_8C0C8A24:
#data bank03.loc_8c034D8c

loc_8C0C8A28:
#data bank15.loc_8c15c14c

loc_8C0C8A2C:
#data 0xC2555555
#data 0xC2A00000

#align4
loc_8C0C8A34:
#data bank04.loc_8c044F12

loc_8C0C8A38:
#data loc_8c0c8518
#data 0x42555555

#align4
loc_8C0C8A40:
#data bank15.loc_8c15c154


loc_8C0C8A44:
mov.b @(0x05,r4),r0 	
mov.l @(0x08,r4),r6
add 0x01,r0
mov.b r0,@(0x05,r4) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r6),r0 ; r0 ??? bc r6 is ???	
extu.b r0,r0
cmp/eq 0x04,r0 	
bf loc_8C0C8A5c
mova @(loc_8C0C8B24,pc),r0  ; r0 set to 0x8C0C8B24
bra loc_8C0C8A60
fmov.s @r0,fr4

#align4
loc_8C0C8A5C:
#data 0xF408C732

#align4
loc_8C0C8A60:
#data 0x034D905f
#data 0x8D012338
#data 0xF44DE034

#align4
loc_8C0C8A6C:
#data 0xF340F366
#data 0xE038F437
#data 0xAFB4F366
#data 0xF437


loc_8C0C8A7A:
mov r4,r3
mov.l @(loc_8C0C8B2C,pc),r1 ; r1 set to 0x8C15C15c
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0C8A8C:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l @(loc_8C0C8B30,pc),r3 ; r3 set to 0x8C044F12
mov.l r5,@r15
mov 0x03,r5 ; r5 set to 0x03
mov.b @(0x05,r14),r0 	
mov 0x02,r6 ; r6 set to 0x02
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov 0x0A,r0 ; r0 set to 0x0a
mov.w r0,@(0x1E,r14) 	
jsr @r3
mov r14,r4
tst r0,r0
bt/s loc_8C0C8ADa
mov r0,r13 ; r13 set to 0x0a
mov.l @(loc_8C0C8B34,pc),r3 ; r3 set to 0x8C0C8518
mov.l r3,@(0x10,r13)  ; r13 ??	
mov.l @r15,r2
mov.l r2,@(0x18,r13) 	
mov.w @(0x1E,r14),r0 	
add 0xFF,r0 ; r0 set to 0x09
mov.w r0,@(0x1E,r13) 	
bsr loc_8C0C9070
mov r14,r4
mova @(loc_8C0C8B38,pc),r0  ; r0 set to 0x8C0C8B38
fmov.s @r0,fr3 ; r3 ??	
fcmp/gt fr0,fr3
bt loc_8C0C8AD4
mov 0x20,r0 ; r0 set to 0x20
mov 0x08,r2 ; r2 set to 0x08
bra loc_8C0C8ADa
mov.b r2,@(r0,r13) 	

#align4
loc_8C0C8AD4:
#data 0xE109E020
#data 0x0D14


loc_8C0C8ADA:
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r13
bra loc_8C0C8916
mov.l @r15+,r14

loc_8C0C8AE8:
mov r4,r3
mov.l @(loc_8C0C8B3C,pc),r1 ; r1 set to 0x8C15C164
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0C8AFA:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l r5,@r15
mov.b @(0x05,r14),r0 	
mov.l @(0x08,r14),r4
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
extu.b r0,r0
cmp/eq 0x07,r0 	
bf loc_8C0C8B48
mova @(loc_8C0C8B40,pc),r0  ; r0 set to 0x8C0C8B40
fmov.s @r0,fr4
mova @(loc_8C0C8B44,pc),r0  ; r0 set to 0x8C0C8B44
bra loc_8C0C8B50
fmov.s @r0,fr5
#data 0x0130

#align4
loc_8C0C8B24:
#data 0xC1D55555
#data 0xC2555555

#align4
loc_8C0C8B2C:
#data bank15.loc_8c15c15c

loc_8C0C8B30:
#data bank04.loc_8c044F12

loc_8C0C8B34:
#data loc_8c0c8518

loc_8C0C8B38:
#data 0x42855555

#align4
loc_8C0C8B3C:
#data bank15.loc_8c15c164

loc_8C0C8B40:
#data 0xC2200000

#align4
loc_8C0C8B44:
#data 0x42892492

#align4
loc_8C0C8B48:
#data 0xF408C73c
#data 0xF508C73c

#align4
loc_8C0C8B50:
#data 0x03ED9072
#data 0x8D012338
#data 0xF44DE034

#align4
loc_8C0C8B5C:
#data 0xE503F346
#data 0xE602D338
#data 0xFE37F340
#data 0xF346E038
#data 0xFE37F350
#data 0x64E3430b
#data 0x8D172008
#data 0xD3336D03
#data 0x62F21D34
#data 0x85EF1D26
#data 0x81DF70Ff
#data 0x200885Ef
#data 0xB26F8909
#data 0xC72E64E3
#data 0xF305F308
#data 0xE0208903
#data 0xA003E208
#data 0x0D24

loc_8C0C8BA2:
#data 0xE020
#data 0x0D14E109

#align4
loc_8C0C8BA8:
#data 0x64E365F2
#data 0x4F267F04
#data 0xAF166DF6
#data 0x6EF6


loc_8C0C8BB6:
mov r4,r3
mov.l @(loc_8C0C8C50,pc),r1 ; r1 set to 0x8C15C16c
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0C8BC8:
mov.b @(0x05,r4),r0 	
mov.l @(0x08,r4),r6
add 0x01,r0
mov.b r0,@(0x05,r4) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r6),r0 ; r0 ??? bc r6 is ???	
extu.b r0,r0
cmp/eq 0x07,r0 	
bf loc_8C0C8BE4
mova @(loc_8C0C8C54,pc),r0  ; r0 set to 0x8C0C8C54
fmov.s @r0,fr4
mova @(loc_8C0C8C58,pc),r0  ; r0 set to 0x8C0C8C58
bra loc_8C0C8BEc
fmov.s @r0,fr5

#align4
loc_8C0C8BE4:
#data 0xF408C71d
#data 0xF508C715

#align4
loc_8C0C8BEC:
#data 0x034D9024
#data 0x8D012338
#data 0xF44DE034

#align4
loc_8C0C8BF8:
#data 0xF340F366
#data 0xE038F437
#data 0xF350F366
#data 0xF437AEEd


loc_8C0C8C08:
add 0xFC,r15
mov.l @(loc_8C0C8C60,pc),r2 ; r2 set to 0x8C2895F6
mov.l r4,@r15
mov 0x01,r4 ; r4 set to 0x01
mov.b @(0x02,r5),r0 	
mov r4,r1 ; r1 set to 0x01
mov.b @r2,r3
extu.b r0,r0
xor r4,r0
shad r0, r1 ; r1 ??? bc r0 is ???	
extu.b r3,r3
tst r1,r3
bf loc_8C0C8C34
mov.l @r15,r2 ; r2 ??? bc r15 is ???	
mov.l @(loc_8C0C8C64,pc),r1 ; r1 set to 0x8C15C174
mov.b @(0x05,r2),r0 	
mov r2,r4 ; r4 ??? bc r2 is ???	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0C8C34:
rts 	
add 0x04,r15
;-------------------------------------------------------------------------------
#data 0x00000130
#data 0xC2A00000
#data 0x42CDB6Db

#align4
loc_8C0C8C44:
#data bank04.loc_8c044F12

loc_8C0C8C48:
#data loc_8c0c8518
#data 0x42555555

#align4
loc_8C0C8C50:
#data bank15.loc_8c15c16c

loc_8C0C8C54:
#data 0xC0555555

#align4
loc_8C0C8C58:
#data 0x42092492
#data 0xC2200000

#align4
loc_8C0C8C60:
#data 0x8C2895F6

#align4
loc_8C0C8C64:
#data bank15.loc_8c15c174


loc_8C0C8C68:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l @(loc_8C0C8D50,pc),r3 ; r3 set to 0x8C044F12
mov.l r5,@r15
mov 0x04,r5 ; r5 set to 0x04
mov.b @(0x05,r14),r0 	
mov 0x02,r6 ; r6 set to 0x02
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov 0x0A,r0 ; r0 set to 0x0a
mov.w r0,@(0x1E,r14) 	
jsr @r3
mov r14,r4
tst r0,r0
bt/s loc_8C0C8CB6
mov r0,r13 ; r13 set to 0x0a
mov.l @(loc_8C0C8D54,pc),r3 ; r3 set to 0x8C0C8518
mov.l r3,@(0x10,r13)  ; r13 ??	
mov.l @r15,r2
mov.l r2,@(0x18,r13) 	
mov.w @(0x1E,r14),r0 	
add 0xFF,r0 ; r0 set to 0x09
mov.w r0,@(0x1E,r13) 	
bsr loc_8C0C9070
mov r14,r4
mova @(loc_8C0C8D58,pc),r0  ; r0 set to 0x8C0C8D58
fmov.s @r0,fr3 ; r3 ??	
fcmp/gt fr0,fr3
bt loc_8C0C8CB0
mov 0x20,r0 ; r0 set to 0x20
mov 0x0B,r2 ; r2 set to 0x0b
bra loc_8C0C8CB6
mov.b r2,@(r0,r13) 	

#align4
loc_8C0C8CB0:
#data 0xE10CE020
#data 0x0D14


loc_8C0C8CB6:
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0C8CC2:
mov.w @(loc_8C0C8D46,pc),r0 ; r0 set to 0x140, r0 set to 0x140
mov.b @(r0,r5),r3
tst r3,r3
bt loc_8C0C8CE4
mov.w @(loc_8C0C8D48,pc),r0 ; r0 set to 0x1D0, r0 set to 0x1D0
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x1D,r0 	
bf loc_8C0C8CE4
mov.w @(loc_8C0C8D4A,pc),r0 ; r0 set to 0x1E9, r0 set to 0x1E9
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x05,r0 	
bf loc_8C0C8CE4
mov.l @(loc_8C0C8D5C,pc),r3 ; r3 set to 0x8C034D8C, r3 set to 0x8C034D8c
jmp @r3
nop 	

loc_8C0C8CE4:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0C8D4C,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0C8CF2:
add 0xFC,r15
mov.l @(loc_8C0C8D60,pc),r2 ; r2 set to 0x8C2895F6
mov.l r4,@r15
mov 0x01,r4 ; r4 set to 0x01
mov.b @(0x02,r5),r0 	
mov r4,r1 ; r1 set to 0x01
mov.b @r2,r3
extu.b r0,r0
xor r4,r0
shad r0, r1 ; r1 ??? bc r0 is ???	
extu.b r3,r3
tst r1,r3
bf loc_8C0C8D1e
mov.l @r15,r2 ; r2 ??? bc r15 is ???	
mov.l @(loc_8C0C8D64,pc),r1 ; r1 set to 0x8C15C17c
mov.b @(0x05,r2),r0 	
mov r2,r4 ; r4 ??? bc r2 is ???	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0C8D1E:
rts 	
add 0x04,r15
;-------------------------------------------------------------------------------

loc_8C0C8D22:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l r5,@r15
mov.b @(0x05,r14),r0 	
mov.l @(0x08,r14),r4
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
extu.b r0,r0
cmp/eq 0x0A,r0 	
bf loc_8C0C8D6c
mova @(loc_8C0C8D68,pc),r0  ; r0 set to 0x8C0C8D68
bra loc_8C0C8D70
fmov.s @r0,fr4

loc_8C0C8D46:
#data 0x0140

loc_8C0C8D48:
#data 0x01D0

loc_8C0C8D4A:
#data 0x01E9

loc_8C0C8D4C:
#data 0x012c
#data 0x0000

#align4
loc_8C0C8D50:
#data bank04.loc_8c044F12

loc_8C0C8D54:
#data loc_8c0c8518

loc_8C0C8D58:
#data 0x42A00000

#align4
loc_8C0C8D5C:
#data bank03.loc_8c034D8c

loc_8C0C8D60:
#data 0x8C2895F6

#align4
loc_8C0C8D64:
#data bank15.loc_8c15c17c

loc_8C0C8D68:
#data 0xC2555555

#align4
loc_8C0C8D6C:
#data 0xF408C747

#align4
loc_8C0C8D70:
#data 0x03ED9088
#data 0x8D012338
#data 0xF44DE034

#align4
loc_8C0C8D7C:
#data 0xE504F346
#data 0xE602D343
#data 0xFE37F340
#data 0xF346E038
#data 0x430BFE37
#data 0x200864E3
#data 0x6D038D17
#data 0x1D34D33e
#data 0x1D2662F2
#data 0x70FF85Ef
#data 0x85EF81Df
#data 0x89092008
#data 0x64E3B160
#data 0xF308C739
#data 0x8903F305
#data 0xE20BE020
#data 0x0D24A003

#align4
loc_8C0C8DC0:
#data 0xE10CE020
#data 0x0D14

loc_8C0C8DC6:
#data 0x65F2
#data 0x7F0464E3
#data 0x6DF64F26
#data 0x6EF6


loc_8C0C8DD2:
mov.l @(0x08,r4),r5
mov 0x02,r3 ; r3 set to 0x02
mov.b @(0x04,r5),r0 	
extu.b r0,r0
cmp/ge r3,r0
bf loc_8C0C8DEc
mov.b @(0x04,r4),r0 	
mov 0x00,r2 ; r2 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0C8E86,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r2,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0C8DEC:
mov.l @(loc_8C0C8E9C,pc),r3 ; r3 set to 0x8C034D8c
jmp @r3
nop 	
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0C8DF6:
add 0xFC,r15
mov.l @(loc_8C0C8EA0,pc),r2 ; r2 set to 0x8C2895F6
mov.l r4,@r15
mov 0x01,r4 ; r4 set to 0x01
mov.b @(0x02,r5),r0 	
mov r4,r1 ; r1 set to 0x01
mov.b @r2,r3
extu.b r0,r0
xor r4,r0
shad r0, r1 ; r1 ??? bc r0 is ???	
extu.b r3,r3
tst r1,r3
bf loc_8C0C8E22
mov.l @r15,r2 ; r2 ??? bc r15 is ???	
mov.l @(loc_8C0C8EA4,pc),r1 ; r1 set to 0x8C15C184
mov.b @(0x05,r2),r0 	
mov r2,r4 ; r4 ??? bc r2 is ???	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0C8E22:
rts 	
add 0x04,r15
;-------------------------------------------------------------------------------

loc_8C0C8E26:
mov.b @(0x05,r4),r0 	
mov.l @(0x08,r4),r6
add 0x01,r0
mov.b r0,@(0x05,r4) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r6),r0 ; r0 ??? bc r6 is ???	
extu.b r0,r0
cmp/eq 0x0A,r0 	
bf loc_8C0C8E3e
mova @(loc_8C0C8EA8,pc),r0  ; r0 set to 0x8C0C8EA8
bra loc_8C0C8E42
fmov.s @r0,fr4

loc_8C0C8E3E:
#data 0xC71b
#data 0xF408

loc_8C0C8E42:
#data 0x901f
#data 0x2338034d
#data 0xE0348D01
#data 0xF44d

loc_8C0C8E4E:
#data 0xF366
#data 0xF437F340
#data 0xF366E038
#data 0xF437AFBb

#align4
loc_8C0C8E5C:
#data 0x2FE69014
#data 0x600C005c
#data 0x8F058814
#data 0x900E6E43
#data 0x600C005c
#data 0x891D8801

#align4
loc_8C0C8E74:
#data 0xE30084E4
#data 0x80E47001
#data 0x0E349003
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x0130

loc_8C0C8E86:
#data 0x012c
#data 0x01E801D0
#data 0xC2A00000

#align4
loc_8C0C8E90:
#data bank04.loc_8c044F12

loc_8C0C8E94:
#data loc_8c0c8518
#data 0x42555555

#align4
loc_8C0C8E9C:
#data bank03.loc_8c034D8c

loc_8C0C8EA0:
#data 0x8C2895F6

#align4
loc_8C0C8EA4:
#data bank15.loc_8c15c184

loc_8C0C8EA8:
#data 0xC1D55555
#data 0xC2555555

#align4
loc_8C0C8EB0:
#data 0x64E384E5
#data 0x600CD14c
#data 0x031E4008
#data 0x6EF6432b
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0C8EC4:
#data 0x2FE6908b
#data 0x600C005c
#data 0x8F058815
#data 0x90856E43
#data 0x600C005c
#data 0x89078808

#align4
loc_8C0C8EDC:
#data 0xE30084E4
#data 0x80E47001
#data 0x0E34907d
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0C8EEC:
#data 0x64E384E5
#data 0x600CD13e
#data 0x031E4008
#data 0x6EF6432b
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0C8F00:
#data 0xD33B8445
#data 0x80457001
#data 0x0436E048

#align4
loc_8C0C8F0C:
#data 0x6E432FE6
#data 0x4F222FD6
#data 0x430BD337
#data 0x90636D53
#data 0x222802Dc
#data 0x84E58B07
#data 0xD334E51b
#data 0x7001E623
#data 0x430B80E5
#data 0x64E3

loc_8C0C8F32:
#data 0xE020
#data 0x04ECD231
#data 0xF408C731
#data 0x9052644c
#data 0x44006343
#data 0x343C4308
#data 0x233803Ed
#data 0x342C8F08
#data 0xE0346341
#data 0x435AF2D6
#data 0xF32DF04c
#data 0xF23EA007

#align4
loc_8C0C8F60:
#data 0xE0346341
#data 0x435AF2D6
#data 0xF342F32d
#data 0xF231

loc_8C0C8F6E:
#data 0xFE27
#data 0x63038541
#data 0xE038435a
#data 0xC722F2D6
#data 0xF008F32d
#data 0xF23EE038
#data 0x4F26FE27
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C8F8E:
#data 0x2FE6
#data 0xD3184F22
#data 0x6E43430b
#data 0x4011600e
#data 0x84E48905
#data 0x7001E300
#data 0x901C80E4
#data 0x0E34

loc_8C0C8FAA:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0C8FB0:
mov 0x20,r0 ; r0 set to 0x20
mov.l @(loc_8C0C8FFC,pc),r2 ; r2 set to 0x8C15C074
mov.b @(r0,r4),r6
mova @(loc_8C0C9000,pc),r0  ; r0 set to 0x8C0C9000
fmov.s @r0,fr4
extu.b r6,r6
mov.w @(loc_8C0C8FE6,pc),r0 ; r0 set to 0x130
mov r6,r3
shll r6
shll2 r3
add r3,r6
mov.w @(r0,r4),r3
tst r3,r3
bf/s loc_8C0C9008
add r2,r6
mov.w @r6,r3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr2 ; r2 ??? bc r5 is ???	
lds r3,fpul 	
fmov fr4,fr0 ; r0 ??? bc r4 is ???	
float fpul,fr3
bra loc_8C0C9016
fmac fr0,fr3,fr2
#data 0x01D0
#data 0x012C01E9
#data 0x0141

loc_8C0C8FE6:
#data 0x0130

#align4
loc_8C0C8FE8:
#data bank15.loc_8c15c18c

loc_8C0C8FEC:
#data bank15.loc_8c15c198
#data 0x0000F000

#align4
loc_8C0C8FF4:
#data bank03.loc_8c034D8c

loc_8C0C8FF8:
#data bank03.loc_8c034C38

loc_8C0C8FFC:
#data bank15.loc_8c15c074

loc_8C0C9000:
#data 0x3FD55555
#data 0x40092492


loc_8C0C9008:
mov.w @r6,r3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr2
lds r3,fpul 	
float fpul,fr3
fmul fr4,fr3
fsub fr3,fr2

loc_8C0C9016:
fmov.s fr2,@(r0,r4) 	
mov.w @(0x02,r6),r0 	
mov r0,r3 ; r3 set to 0x34
lds r3,fpul 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r5),fr2
mova @(loc_8C0C90A0,pc),r0  ; r0 set to 0x8C0C90A0, r0 set to 0x8C0C90A0
float fpul,fr3
fmov.s @r0,fr0 ; r0 ??, r0 ??	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmac fr0,fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov.w @(loc_8C0C9092,pc),r0 ; r0 set to 0x140, r0 set to 0x140
mov.b @(r0,r5),r3 ; r3 ??? bc r5 is ???	
tst r3,r3
bt loc_8C0C904e
mov.w @(loc_8C0C9094,pc),r0 ; r0 set to 0x1D0, r0 set to 0x1D0
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x15,r0 	
bf loc_8C0C904e
mov.w @(loc_8C0C9096,pc),r0 ; r0 set to 0x1E9, r0 set to 0x1E9
mov.b @(r0,r5),r2
tst r2,r2
bf loc_8C0C904e
mov.l @(loc_8C0C90A4,pc),r3 ; r3 set to 0x8C034D8C, r3 set to 0x8C034D8c
jmp @r3
nop 	

loc_8C0C904E:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0C9098,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0C905C:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0C9098,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0C906A:
mov.l @(loc_8C0C90A8,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0C9070:
mov.w @(loc_8C0C909A,pc),r0 ; r0 set to 0x130
mov.l @(loc_8C0C90AC,pc),r5 ; r5 set to 0x8C26A518
mov.w @(r0,r4),r3
tst r3,r3
bf loc_8C0C9084
mov.w @(loc_8C0C909C,pc),r0 ; r0 set to 0x88
fmov.s @(r0,r5),fr3
mov 0x34,r0 ; r0 set to 0x34
bra loc_8C0C908c
fmov.s @(r0,r4),fr0

loc_8C0C9084:
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r4),fr3
add 0x58,r0 ; r0 set to 0x8c
fmov.s @(r0,r5),fr0 ; r0 ??? bc r5 is ???	

loc_8C0C908C:
fsub fr3,fr0
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0C9092:
#data 0x0140

loc_8C0C9094:
#data 0x01D0

loc_8C0C9096:
#data 0x01E9

loc_8C0C9098:
#data 0x012c

loc_8C0C909A:
#data 0x0130

loc_8C0C909C:
#data 0x0088
#data 0x0000

#align4
loc_8C0C90A0:
#data 0x40092492

#align4
loc_8C0C90A4:
#data bank03.loc_8c034D8c

loc_8C0C90A8:
#data bank04.loc_8c0450C0

loc_8C0C90AC:
#data 0x8C26A518
#data 0x7FF84F22
#data 0xE600D35a
#data 0x2F501F41
#data 0x430BE503
#data 0x20086463
#data 0x64038D07
#data 0xE020D356
#data 0x52F11434
#data 0x63F01426
#data 0x7F080434
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0C90DE:
mov r4,r3
mov.l @(loc_8C0C9228,pc),r1 ; r1 set to 0x8C15C254
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0C90F0:
mov.w @(loc_8C0C9210,pc),r3 ; r3 set to 0x1001
mov.w @(loc_8C0C9212,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.w @(loc_8C0C9212,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(0x18,r4),r5
mov.b r0,@(0x04,r4) 	
mov 0x26,r0 ; r0 set to 0x26
mov.w r3,@(r0,r4) 	
mov.w @(loc_8C0C9214,pc),r0 ; r0 set to 0xC0
mov.l @(loc_8C0C922C,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0C9216,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0C9218,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0C9230,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov.b r2,@(r0,r4) 	
lds.l @r15+,pr 	

loc_8C0C9150:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
mov.l @(loc_8C0C9234,pc),r0 ; r0 set to 0x8C15C264, r0 set to 0x8C15C264
extu.b r3,r3
mov.l @(0x18,r14),r5
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0C9166:
mov r4,r3
mov.l @(loc_8C0C9238,pc),r1 ; r1 set to 0x8C15C294
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0C9178:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
sts.l pr,@-r15
add 0xF4,r15
mov r4,r14
mov.w @(loc_8C0C921A,pc),r3 ; r3 set to 0xCc
mov 0x24,r1 ; r1 set to 0x24
add r14,r3 ; r3 ??? bc r14 is ???	
mov.l r3,@r15
add r14,r1 ; r1 ??? bc r14 is ???	
mov.b @(0x05,r14),r0 	
mov.l @(loc_8C0C923C,pc),r3 ; r3 set to 0x8C15C1A4
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r13
extu.b r13,r13
shll2 r13
shll2 r13
add r3,r13
mov.b @(0x0E,r13),r0 	
mov.b r0,@r1
mova @(loc_8C0C9240,pc),r0  ; r0 set to 0x8C0C9240
fmov.s @r0,fr4
mov.w @(loc_8C0C921C,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r2
tst r2,r2
bf/s loc_8C0C91C6
mov r5,r12
mov.w @r13,r2
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r12),fr2
lds r2,fpul 	
fmov fr4,fr0 ; r0 ??? bc r4 is ???	
float fpul,fr3
bra loc_8C0C91D4
fmac fr0,fr3,fr2

loc_8C0C91C6:
mov.w @r13,r2
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r12),fr2
lds r2,fpul 	
float fpul,fr3
fmul fr4,fr3
fsub fr3,fr2

loc_8C0C91D4:
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0C9244,pc),r0  ; r0 set to 0x8C0C9244, r0 init to 0x8C0C9244
fmov.s @r0,fr5
mov r15,r11
mov.w @(0x02,r13),r0 	
fmov fr5,fr0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???	
mov r0,r3
lds r3,fpul 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r12),fr2
float fpul,fr3
fmac fr0,fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov.w @(loc_8C0C921C,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r12),r3
tst r3,r3
bf/s loc_8C0C9248
add 0x04,r11
mov.w @(0x04,r13),r0 	
mov r0,r3 ; r3 set to 0x130, r3 set to 0x130
lds r3,fpul 	
mov.w @r13,r3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???	
float fpul,fr3
lds r3,fpul 	
float fpul,fr2
fmul fr4,fr3
fmul fr4,fr2
fsub fr2,fr3
bra loc_8C0C9260
fmov.s fr3,@r11

loc_8C0C9210:
#data 0x1001

loc_8C0C9212:
#data 0x00Dc

loc_8C0C9214:
#data 0x00C0

loc_8C0C9216:
#data 0x012c

loc_8C0C9218:
#data 0x01A3

loc_8C0C921A:
#data 0x00Cc

loc_8C0C921C:
#data 0x0130
#align4

loc_8C0C9220:
#data bank04.loc_8c044F12

loc_8C0C9224:
#data loc_8c0c90De

loc_8C0C9228:
#data bank15.loc_8c15c254

loc_8C0C922C:
#data bank12.loc_8c129560

loc_8C0C9230:
#data bank12.loc_8c1294C8

loc_8C0C9234:
#data bank15.loc_8c15c264

loc_8C0C9238:
#data bank15.loc_8c15c294

loc_8C0C923C:
#data bank15.loc_8c15c1A4

loc_8C0C9240:
#data 0x3FD55555

#align4
loc_8C0C9244:
#data 0x40092492


loc_8C0C9248:
mov.w @r13,r3
mov.w @(0x04,r13),r0 	
lds r3,fpul 	
mov r0,r3
fmov fr4,fr0
float fpul,fr3
lds r3,fpul 	
float fpul,fr2
fmul fr4,fr2
fneg fr2
fmac fr0,fr3,fr2
fmov.s fr2,@r11

loc_8C0C9260:
mov.w @(0x06,r13),r0 	
fmov fr5,fr0
mov r0,r3
lds r3,fpul 	
mov.w @(loc_8C0C93A8,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
float fpul,fr3
fmov.s @(r0,r12),fr2
mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
fmac fr0,fr3,fr2
fmov.s fr2,@(r0,r11) 	
mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
fmov.s @(r0,r13),fr3
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0C93B0,pc),r0  ; r0 set to 0x8C0C93B0, r0 set to 0x8C0C93B0
fmov.s @r0,fr3
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr3,@(r0,r14) 	
mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
fmov.s @(r0,r11),fr4
bsr loc_8C0C96D8
mov r14,r4
mov r0,r4 ; r4 set to 0x04, r4 set to 0x04
lds r4,fpul 	
fmov.s @r11,fr2
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
mov.l @(loc_8C0C93B4,pc),r2 ; r2 set to 0x8C129128, r2 set to 0x8C129128
float fpul,fr3
fdiv fr3,fr2 ; r2 ??? bc r3 is ???, r2 ??? bc r3 is ???	
fldi0 fr3
fmov.s fr2,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr3,@(r0,r14) 	
mov.w @(0x0C,r13),r0 	
mov.l @r15,r3
mov r0,r1 ; r1 set to 0x68, r1 set to 0x68
shll16 r1 ; r1 set to 0x680000, r1 set to 0x680000
jsr @r2
mov r4,r0 ; r0 set to 0x04, r0 set to 0x04
mov.l r0,@r3
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
mov.b @(0x0F,r13),r0 	
mov.l @(loc_8C0C93B8,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
mov r0,r6 ; r6 set to 0x04, r6 set to 0x04
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???, r4 ??? bc r14 is ???	
mov r12,r5 ; r5 ??? bc r12 is ???, r5 ??? bc r12 is ???	
bsr loc_8C0C92D0
mov r14,r4
add 0x0C,r15
lds.l @r15+,pr 	
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0C92D0:
#data 0xE048966b
#data 0xE15C024e
#data 0x6362364c
#data 0x323C314c
#data 0xE0340426
#data 0xF318F246
#data 0x314CE168
#data 0xF427F230
#data 0xF246E05c
#data 0xE160F318
#data 0xF230314c
#data 0xE038F427
#data 0xF318F246
#data 0x314CE16c
#data 0xF427F230
#data 0xF318E060
#data 0xD32AF246
#data 0xF38DF230
#data 0xE020F427
#data 0xE060064c
#data 0x666CF246
#data 0x4608F235
#data 0x8D1E4608
#data 0x8563363c
#data 0x425A6203
#data 0xF22D9038
#data 0xC721F156
#data 0xE038F008
#data 0xF246F12e
#data 0x8910F215
#data 0xE3008445
#data 0x80457001
#data 0x0436E048
#data 0x63038563
#data 0x9025435a
#data 0xF256F32d
#data 0xF008C717
#data 0xF23EE038
#data 0xF427

loc_8C0C936A:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0C936E:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0C9372:
mov r4,r3
mov.l @(loc_8C0C93C4,pc),r1 ; r1 set to 0x8C15C2A0
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0C9384:
mov.l r14,@-r15
mov r4,r14
mov 0x0B,r3 ; r3 set to 0x0b
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(0x05,r14),r0 	
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0C93AC,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r2
tst r2,r2
bf/s loc_8C0C93Cc
mov r5,r13
mova @(loc_8C0C93C8,pc),r0  ; r0 set to 0x8C0C93C8
bra loc_8C0C93D0
fmov.s @r0,fr3

loc_8C0C93A8:
#data 0x041c
#data 0x00Cc

loc_8C0C93AC:
#data 0x0130
#data 0x0000

#align4
loc_8C0C93B0:
#data 0xBF4DB6Db

#align4
loc_8C0C93B4:
#data bank12.loc_8c129128

loc_8C0C93B8:
#data bank03.loc_8c034C38

loc_8C0C93BC:
#data bank15.loc_8c15c1A4
#data 0x40092492

#align4
loc_8C0C93C4:
#data bank15.loc_8c15c2A0

loc_8C0C93C8:
#data 0xC2555555


loc_8C0C93CC:
mova @(loc_8C0C952C,pc),r0  ; r0 init to 0x8C0C952c
fmov.s @r0,fr3

loc_8C0C93D0:
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r13),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0C9530,pc),r0  ; r0 set to 0x8C0C9530, r0 set to 0x8C0C9530
fmov.s @r0,fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r13),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov.w @(loc_8C0C9528,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bf loc_8C0C93F2
mova @(loc_8C0C9534,pc),r0  ; r0 set to 0x8C0C9534, r0 set to 0x8C0C9534
bra loc_8C0C93F6
fmov.s @r0,fr2

loc_8C0C93F2:
#data 0xC751
#data 0xF208

loc_8C0C93F6:
#data 0xE05c
#data 0xFE27F38d
#data 0xFE37E068
#data 0xF308C74e
#data 0xD34FE060
#data 0xFE37E51b
#data 0xF308C74c
#data 0xE60BE06c
#data 0x430BFE37
#data 0x4F2664E3
#data 0x64E365D3
#data 0x6EF66DF6

#align4
loc_8C0C9424:
#data 0x4F222FE6
#data 0xD3477FFc
#data 0x2F526E43
#data 0x64E3430b
#data 0xF48DE15c
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
#data 0x905CFE27
#data 0xF33663F2
#data 0xE038F340
#data 0xF235F2E6
#data 0x84E5890f
#data 0x80E57001
#data 0x63F29051
#data 0xE038F336
#data 0xFE37F340
#data 0xF308C72e
#data 0xF2E6E060
#data 0xF24DF233
#data 0xFE27

loc_8C0C949E:
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C94A6:
#data 0x2FE6
#data 0x7FFC4F22
#data 0x6E43D326
#data 0x430B2F52
#data 0xE15C64E3
#data 0x31ECF48d
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
#data 0x63F2901b
#data 0xF340F336
#data 0xF2E6E038
#data 0x890FF235
#data 0x700184E5
#data 0x901080E5
#data 0xF33663F2
#data 0xF340E038
#data 0xC70EFE37
#data 0xE060F308
#data 0xF233F2E6
#data 0xFE27F24d

#align4
loc_8C0C9520:
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0C9528:
#data 0x0130
#data 0x041c

#align4
loc_8C0C952C:
#data 0x42555555

#align4
loc_8C0C9530:
#data 0x42CDB6Db

#align4
loc_8C0C9534:
#data 0xBF555555
#data 0x3F555555
#data 0x419A4924
#data 0xBF4DB6Db

#align4
loc_8C0C9544:
#data bank03.loc_8c034C38

loc_8C0C9548:
#data bank03.loc_8c034D8c
#data 0x40800000


loc_8C0C9550:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov.w @(loc_8C0C96AE,pc),r3 ; r3 set to 0xCc
mov r4,r14
mov.l @(loc_8C0C96B8,pc),r2 ; r2 set to 0x8C034D8c
add r14,r3 ; r3 ??? bc r14 is ???	
mov.l r5,@r15
mov.l r3,@(0x04,r15) 	
jsr @r2
mov r14,r4
mov 0x5C,r1 ; r1 set to 0x5c
fldi0 fr4
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???	
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
mov.w @(loc_8C0C96B0,pc),r0 ; r0 set to 0x41c
mov.l @r15,r3
fmov.s @(r0,r3),fr3
fadd fr4,fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fcmp/gt fr3,fr2
bt loc_8C0C9608
mov.b @(0x05,r14),r0 	
add 0x01,r0 ; r0 set to 0x39
mov.b r0,@(0x05,r14) 	
mov.w @(loc_8C0C96B0,pc),r0 ; r0 set to 0x41c
mov.l @r15,r3
fmov.s @(r0,r3),fr3
mov 0x38,r0 ; r0 set to 0x38
fadd fr4,fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0C96B2,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bf loc_8C0C95D0
mova @(loc_8C0C96BC,pc),r0  ; r0 set to 0x8C0C96Bc
bra loc_8C0C95D4
fmov.s @r0,fr3

loc_8C0C95D0:
mova @(loc_8C0C96C0,pc),r0  ; r0 init to 0x8C0C96C0
fmov.s @r0,fr3

loc_8C0C95D4:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
mov.l @(loc_8C0C96C4,pc),r1 ; r1 set to 0x10000, r1 set to 0x10000
fmov.s fr3,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3C, r0 set to 0x3c
mov.l @(loc_8C0C96C8,pc),r2 ; r2 set to 0x8C129128, r2 set to 0x8C129128
mov.w r0,@(0x1C,r14) 	
mov.l @(0x04,r15),r3
jsr @r2
mov.w @(0x1C,r14),r0 	
extu.w r0,r0 ; r0 set to 0x3C, r0 set to 0x3c
mov r14,r4
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
mov.l r0,@r3
mov 0x0B,r6 ; r6 set to 0x0B, r6 set to 0x0b
mov 0x02,r7 ; r7 set to 0x02, r7 set to 0x02
add 0x08,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0C96CC,pc),r3 ; r3 set to 0x8C034CD6, r3 set to 0x8C034CD6
jmp @r3
mov.l @r15+,r14

loc_8C0C9608:
add 0x08,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0C9610:
#data 0xE048954d
#data 0xE15C024e
#data 0x6352354c
#data 0x323C314c
#data 0xE0340426
#data 0xF318F246
#data 0x314CE168
#data 0xF427F230
#data 0xF246E05c
#data 0xE160F318
#data 0xF230314c
#data 0xE038F427
#data 0xF318F246
#data 0x314CE16c
#data 0xF427F230
#data 0xF318E060
#data 0xF230F246
#data 0x854EF427
#data 0x814E70Ff
#data 0x2008600f
#data 0x84458B07
#data 0x7001E300
#data 0xE0148045
#data 0xE048814e
#data 0x0436

loc_8C0C9672:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0C9676:
mov.w @(0x1C,r4),r0 	
add 0xFF,r0
mov.w r0,@(0x1C,r4) 	
exts.w r0,r0
tst r0,r0
bf loc_8C0C9690
mov.b @(0x05,r4),r0 	
mov 0x0C,r6 ; r6 set to 0x0c
mov.l @(loc_8C0C96D0,pc),r3 ; r3 set to 0x8C034C38
add 0x01,r0
mov.b r0,@(0x05,r4) 	
jmp @r3
mov 0x1B,r5

loc_8C0C9690:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0C9694:
mov.l @(loc_8C0C96B8,pc),r3 ; r3 set to 0x8C034D8c
jmp @r3
nop 	

loc_8C0C969A:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0C96B4,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0C96A8:
mov.l @(loc_8C0C96D4,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0C96AE:
#data 0x00Cc

loc_8C0C96B0:
#data 0x041c

loc_8C0C96B2:
#data 0x0130

loc_8C0C96B4:
#data 0x012c
#data 0x0000

#align4
loc_8C0C96B8:
#data bank03.loc_8c034D8c

loc_8C0C96BC:
#data 0xBFD55555

#align4
loc_8C0C96C0:
#data 0x3FD55555

#align4
loc_8C0C96C4:
#data 0x00010000

#align4
loc_8C0C96C8:
#data bank12.loc_8c129128

loc_8C0C96CC:
#data bank03.loc_8c034CD6

loc_8C0C96D0:
#data bank03.loc_8c034C38

loc_8C0C96D4:
#data bank04.loc_8c0450C0


loc_8C0C96D8:
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r4),fr6
mov 0x60,r0 ; r0 set to 0x60
fmov.s @(r0,r4),fr5
mov 0x00,r5 ; r5 set to 0x00

loc_8C0C96E2:
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fadd fr5,fr6
fmov.s @(r0,r4),fr3
fadd fr3,fr5 ; r5 ??? bc r3 is ???	
fldi0 fr3
fcmp/gt fr3,fr5
bt/s loc_8C0C96E2
add 0x01,r5
fcmp/gt fr4,fr6
bt loc_8C0C96E2
rts 	
mov r5,r0
;-------------------------------------------------------------------------------
#data 0x0000

#align4
loc_8C0C96FC:
#data 0x4F222FE6
#data 0x938B7FFc
#data 0xD24A6E43
#data 0xE600E504
#data 0x3E3C2F42
#data 0x6463420b
#data 0x8D072008
#data 0xD2466403
#data 0x1424E001
#data 0x143663F2
#data 0x2E4280E4

#align4
loc_8C0C9728:
#data 0x00096043
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0C9734:
mov r4,r3
mov.l @(loc_8C0C9838,pc),r1 ; r1 set to 0x8C15C2Bc
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0C9746:
mov.l @(loc_8C0C983C,pc),r2 ; r2 set to 0x8C26823c
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.l r12,@-r15
mov.w @(loc_8C0C981E,pc),r1 ; r1 set to 0x80
sts.l pr,@-r15
mov.l @r2,r3
mov.l @(0x14,r3),r0
cmp/eq r1,r0
bf/s loc_8C0C976a
mov 0x00,r12 ; r12 set to 0x00
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x04,r14) 	
mov r12,r0 ; r0 set to 0x00
nop 	
bra loc_8C0C9812
mov.b r0,@(0x05,r14) 	

loc_8C0C976A:
#data 0x84E4
#data 0x70019358
#data 0x80E49157
#data 0x0E35E026
#data 0x925231Ec
#data 0x5DE69052
#data 0x430BD32f
#data 0x904E32Dc
#data 0x61E3E201
#data 0x0E247150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC9040
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD3220E34
#data 0xE00C430b
#data 0x02DCE024
#data 0xE30CE418
#data 0xE5170E24
#data 0xE600902d
#data 0x70010E44
#data 0x70010E44
#data 0x0E44E410
#data 0x0E447001
#data 0x0E34E024
#data 0x430BD318
#data 0xD21864E3
#data 0x64E3420b
#data 0x81EFE004
#data 0x03DC901a
#data 0x8D052338
#data 0xE00564E3
#data 0x901080E6
#data 0x0EC42EC0

#align4
loc_8C0C9808:
#data 0x6CF64F26
#data 0xA01F6DF6
#data 0x6EF6


loc_8C0C9812:
lds.l @r15+,pr 	
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x02A4

loc_8C0C981E:
#data 0x0080
#data 0x00DC1003
#data 0x012C00C0
#data 0x013C01A3
#data 0x00000411

#align4
loc_8C0C9830:
#data bank04.loc_8c044F12

loc_8C0C9834:
#data loc_8c0c9734

loc_8C0C9838:
#data bank15.loc_8c15c2Bc

loc_8C0C983C:
#data 0x8C26823c

#align4
loc_8C0C9840:
#data bank12.loc_8c129560

loc_8C0C9844:
#data bank12.loc_8c1294C8

loc_8C0C9848:
#data bank03.loc_8c034e8c

loc_8C0C984C:
#data bank10.loc_8c104434

loc_8C0C9850:
#data 0x6E432FE6
#data 0xE60155E6
#data 0x6163D342
#data 0x64308452
#data 0x206A600c
#data 0x624C410c
#data 0x8B142218
#data 0x2448644c
#data 0x90708909
#data 0x600C005c
#data 0x8B04881d
#data 0x005C906c
#data 0x8806600c
#data 0x8907

loc_8C0C9886:
#data 0x84E6
#data 0xD13764E3
#data 0x4008600c
#data 0x432B031e
#data 0x6EF6

loc_8C0C9896:
#data 0x000b
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C989A:
mov r4,r3
mov.l @(loc_8C0C996C,pc),r1 ; r1 set to 0x8C15C318
mov.l r4,@-r15
mov.b @(0x07,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0C98AC:
mov.b @(0x07,r4),r0 	
mov 0x00,r5 ; r5 set to 0x00
mov.l @(loc_8C0C9970,pc),r3 ; r3 set to 0x8C034E8c
mov 0x11,r6 ; r6 set to 0x11
add 0x01,r0
mov.b r0,@(0x07,r4) 	
mov.w @(loc_8C0C995A,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r4) 	
mov.b r5,@r4
jmp @r3
mov 0x17,r5

loc_8C0C98C2:
#data 0x8454
#data 0x8B082008
#data 0x005C9048
#data 0x8812600c
#data 0x90448B03
#data 0x2228025c
#data 0x8B3b

loc_8C0C98DA:
#data 0x8447
#data 0xE300E601
#data 0x7001913e
#data 0x314C8047
#data 0x04649037
#data 0x2460E024
#data 0x90350434
#data 0xCA01005d
#data 0x90312101
#data 0x2338035d
#data 0xC71C8B08
#data 0xE034F308
#data 0xF230F256
#data 0xC71AF427
#data 0xF208A008

#align4
loc_8C0C9914:
#data 0xF308C719
#data 0xF256E034
#data 0xF427F230
#data 0xF208C717

#align4
loc_8C0C9924:
#data 0xD312E05c
#data 0xC716F427
#data 0xE038F308
#data 0xE611F256
#data 0xF427F230
#data 0xF28DE068
#data 0xC712F427
#data 0xE060F208
#data 0xC711F427
#data 0xE06CF208
#data 0x432BF427
#data 0xE517

loc_8C0C9952:
#data 0x000b
#data 0x01D00009
#data 0x01E9

loc_8C0C995A:
#data 0x012c
#data 0x01410159
#data 0x00000130
#data 0x8C2895F6

#align4
loc_8C0C9968:
#data bank15.loc_8c15c2Cc

loc_8C0C996C:
#data bank15.loc_8c15c318

loc_8C0C9970:
#data bank03.loc_8c034e8c
#data 0xC212AAAa
#data 0x40555555
#data 0x4212AAAa
#data 0xC0555555
#data 0x42809249
#data 0x414DB6Db
#data 0xBF4DB6Db


loc_8C0C9990:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0C9AD4,pc),r3 ; r3 set to 0x8C034DEe
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
mov.w @(loc_8C0C9AC8,pc),r0 ; r0 set to 0x41c
mov.l @r15,r3
fmov.s @(r0,r3),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fcmp/gt fr3,fr2
bt loc_8C0C9A0c
mov.b @(0x07,r14),r0 	
mov 0x0C,r3 ; r3 set to 0x0c
mov 0x17,r5 ; r5 set to 0x17
mov r14,r4
add 0x01,r0 ; r0 set to 0x39
mov.b r0,@(0x07,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14) 	
mov 0x16,r6 ; r6 set to 0x16
mov.w @(loc_8C0C9AC8,pc),r0 ; r0 set to 0x41c
mov.l @r15,r2
fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???	
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14) 	
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0C9AD8,pc),r3 ; r3 set to 0x8C034E8c
jmp @r3
mov.l @r15+,r14

loc_8C0C9A0C:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0C9A14:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0C9AD4,pc),r3 ; r3 set to 0x8C034DEe
mov r4,r14
mov.l r5,@r15
jsr @r3
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt loc_8C0C9A52
mov.w @(loc_8C0C9ACA,pc),r1 ; r1 set to 0xCc
mov r14,r4
mov.b @(0x06,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
extu.b r0,r0
mov.l r0,@r1
mov.w @(loc_8C0C9ACC,pc),r1 ; r1 set to 0xD0
mov.b @(0x07,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
extu.b r0,r0
mov.l r0,@r1
mov 0x0B,r0 ; r0 set to 0x0b
mov.b r0,@(0x06,r14) 	
mov 0x00,r0 ; r0 set to 0x00
mov.b r0,@(0x07,r14) 	
mov.l @r15,r5
add 0x04,r15
lds.l @r15+,pr 	
bra loc_8C0C9D92
mov.l @r15+,r14

loc_8C0C9A52:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0C9A5A:
mov.l r14,@-r15
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b @r13,r3
tst r3,r3
bf/s loc_8C0C9A6e
mov r4,r14
bra loc_8C0C9B70
nop 	

loc_8C0C9A6E:
mova @(loc_8C0C9ADC,pc),r0  ; r0 init to 0x8C0C9ADc
fmov.s @r0,fr5
mova @(loc_8C0C9AE0,pc),r0  ; r0 set to 0x8C0C9AE0
fmov.s @r0,fr4
mov.w @(loc_8C0C9ACE,pc),r0 ; r0 set to 0x411
mov.b @(r0,r13),r3
tst r3,r3
bf/s loc_8C0C9AE4
mov 0x01,r4 ; r4 set to 0x01
mov.w @(loc_8C0C9AD0,pc),r0 ; r0 set to 0x12c
mov.b r4,@r14
mov.b r4,@(r0,r14) 	
add 0x04,r0 ; r0 set to 0x130
mov.w @(r0,r13),r3
tst r3,r3
bf loc_8C0C9A96
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr3
bra loc_8C0C9A9c
fadd fr4,fr3

loc_8C0C9A96:
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr3
fadd fr5,fr3

loc_8C0C9A9C:
fmov.s fr3,@(r0,r14) 	
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
mov.w @(loc_8C0C9AC8,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
mov 0x00,r6 ; r6 set to 0x00, r6 set to 0x00
mov.l @(loc_8C0C9AD8,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s fr3,@(r0,r14) 	
jsr @r3
mov r14,r4
mov.w @(loc_8C0C9ACA,pc),r1 ; r1 set to 0xCC, r1 set to 0xCc
mov.b @(0x06,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
extu.b r0,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l r0,@r1
mov.w @(loc_8C0C9ACC,pc),r1 ; r1 set to 0xD0, r1 set to 0xD0
mov.b @(0x07,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
extu.b r0,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l r0,@r1
bra loc_8C0C9B50
mov 0x07,r0

loc_8C0C9AC8:
#data 0x041c

loc_8C0C9ACA:
#data 0x00Cc

loc_8C0C9ACC:
#data 0x00D0

loc_8C0C9ACE:
#data 0x0411

loc_8C0C9AD0:
#data 0x012c
#data 0x0000

#align4
loc_8C0C9AD4:
#data bank03.loc_8c034dee

loc_8C0C9AD8:
#data bank03.loc_8c034e8c

loc_8C0C9ADC:
#data 0xC2A00000

#align4
loc_8C0C9AE0:
#data 0x42A00000


loc_8C0C9AE4:
mov.w @(loc_8C0C9BE6,pc),r0 ; r0 set to 0x255
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
extu.b r0,r0
cmp/eq 0x05,r0 	
bf loc_8C0C9B70
mov.w @(loc_8C0C9BE8,pc),r0 ; r0 set to 0x1D0
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
extu.b r0,r0
cmp/eq 0x1D,r0 	
bf loc_8C0C9B70
mov.w @(loc_8C0C9BEA,pc),r0 ; r0 set to 0x12c
mov.b r4,@r14
mov.b r4,@(r0,r14) 	
add 0x04,r0 ; r0 set to 0x130
mov.w @(r0,r13),r3
tst r3,r3
bf loc_8C0C9B0e
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr3
bra loc_8C0C9B14
fadd fr4,fr3

loc_8C0C9B0E:
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr3
fadd fr5,fr3

loc_8C0C9B14:
fmov.s fr3,@(r0,r14) 	
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
mov.w @(loc_8C0C9BEC,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
mov 0x00,r6 ; r6 set to 0x00, r6 set to 0x00
mov.l @(loc_8C0C9BF4,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s fr3,@(r0,r14) 	
jsr @r3
mov r14,r4
mov.w @(loc_8C0C9BEE,pc),r0 ; r0 set to 0x1E9, r0 set to 0x1E9
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???, r0 ??? bc r13 is ???	
extu.b r0,r0
cmp/eq 0x05,r0 	
bt loc_8C0C9B3a
cmp/eq 0x04,r0 	
bt loc_8C0C9B54
bra loc_8C0C9B70
nop 	

loc_8C0C9B3A:
mov.w @(loc_8C0C9BF0,pc),r1 ; r1 set to 0xCc
mov.b @(0x06,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
extu.b r0,r0
mov.l r0,@r1
mov.w @(loc_8C0C9BF2,pc),r1 ; r1 set to 0xD0
mov.b @(0x07,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
extu.b r0,r0
mov.l r0,@r1
mov 0x0F,r0 ; r0 set to 0x0f

loc_8C0C9B50:
bra loc_8C0C9B6c
mov.b r0,@(0x06,r14) 	

#align4
loc_8C0C9B54:
#data 0x84E6914c
#data 0x600C31Ec
#data 0x91482102
#data 0x31EC84E7
#data 0x2102600c
#data 0x80E6E011

#align4
loc_8C0C9B6C:
#data 0x80E7E000


loc_8C0C9B70:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0C9B78:
mov.l r14,@-r15
mov r4,r14
mov.l @(loc_8C0C9BF8,pc),r1 ; r1 set to 0x8C15C328
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(0x07,r14),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jsr @r3
mov r5,r13
mov.w @(loc_8C0C9BE8,pc),r0 ; r0 set to 0x1D0
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
extu.b r0,r0
cmp/eq 0x1D,r0 	
bf loc_8C0C9BDe
mov.w @(loc_8C0C9BEE,pc),r0 ; r0 set to 0x1E9
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
extu.b r0,r0
cmp/eq 0x05,r0 	
bt loc_8C0C9BAa
cmp/eq 0x04,r0 	
bt loc_8C0C9BC2
bra loc_8C0C9BDe
nop 	

loc_8C0C9BAA:
mov.w @(loc_8C0C9BF0,pc),r1 ; r1 set to 0xCc
mov.b @(0x06,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
extu.b r0,r0
mov.l r0,@r1
mov.w @(loc_8C0C9BF2,pc),r1 ; r1 set to 0xD0
mov.b @(0x07,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
extu.b r0,r0
mov.l r0,@r1
bra loc_8C0C9BD8
mov 0x0F,r0

loc_8C0C9BC2:
#data 0x9115
#data 0x31EC84E6
#data 0x2102600c
#data 0x84E79111
#data 0x600C31Ec
#data 0xE0112102

#align4
loc_8C0C9BD8:
#data 0xE00080E6
#data 0x80E7


loc_8C0C9BDE:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0C9BE6:
#data 0x0255

loc_8C0C9BE8:
#data 0x01D0

loc_8C0C9BEA:
#data 0x012c

loc_8C0C9BEC:
#data 0x041c

loc_8C0C9BEE:
#data 0x01E9

loc_8C0C9BF0:
#data 0x00Cc

loc_8C0C9BF2:
#data 0x00D0

#align4
loc_8C0C9BF4:
#data bank03.loc_8c034e8c

loc_8C0C9BF8:
#data bank15.loc_8c15c328


loc_8C0C9BFC:
mov.b @(0x07,r4),r0 	
mov.w @(loc_8C0C9D34,pc),r1 ; r1 set to 0x130
add 0x01,r0
mov.b r0,@(0x07,r4) 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.w @(loc_8C0C9D32,pc),r0 ; r0 set to 0x1D2
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
extu.b r0,r0
xor 0x01,r0 	
mov.w r0,@r1
exts.w r0,r0
tst r0,r0
bf loc_8C0C9C1c
mova @(loc_8C0C9D40,pc),r0  ; r0 set to 0x8C0C9D40
bra loc_8C0C9C20
fmov.s @r0,fr3

loc_8C0C9C1C:
mova @(loc_8C0C9D44,pc),r0  ; r0 init to 0x8C0C9D44
fmov.s @r0,fr3

loc_8C0C9C20:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fmov.s fr3,@(r0,r4) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fldi0 fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0C9D36,pc),r0 ; r0 set to 0x420, r0 set to 0x420
mov.w @(r0,r5),r3
cmp/pl r3
bf/s loc_8C0C9C38
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
bra loc_8C0C9C3a
mov 0x0D,r6

loc_8C0C9C38:
mov 0x4F,r6 ; r6 set to 0x4f

loc_8C0C9C3A:
mov.l @(loc_8C0C9D48,pc),r2 ; r2 set to 0x8C034E8C, r2 set to 0x8C034E8c
jmp @r2
nop 	

#align4
loc_8C0C9C40:
#data 0x4F222FE6
#data 0x430BD341
#data 0xE15C6E43
#data 0x31ECD340
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x64E3430b
#data 0x8B082008
#data 0xE400E005
#data 0x604380E6
#data 0x80E70009
#data 0x905B2E00
#data 0x0E44

loc_8C0C9C82:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0C9C88:
mov r4,r3
mov.l @(loc_8C0C9D54,pc),r1 ; r1 set to 0x8C15C330
mov.l r4,@-r15
mov.b @(0x07,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0C9C9A:
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
loc_8C0C9CCC:
#data 0x644C9032
#data 0x342002Ed
#data 0x91308914
#data 0x31EC84E6
#data 0x2102600c
#data 0x84E7912c
#data 0x600C31Ec
#data 0xE00B2102
#data 0x605380E6
#data 0x65D30009
#data 0x4F2680E7
#data 0x6DF664E3
#data 0x6EF6A049

#align4
loc_8C0C9D00:
#data 0x84E6931b
#data 0x633233Ec
#data 0x3030600c
#data 0xD112890b
#data 0x0009410b
#data 0x6103D211
#data 0xE003420b
#data 0xE517D30a
#data 0x430B6603
#data 0x64E3

loc_8C0C9D26:
#data 0x4F26
#data 0x64E365D3
#data 0xA0176DF6
#data 0x6EF6

loc_8C0C9D32:
#data 0x01D2

loc_8C0C9D34:
#data 0x0130

loc_8C0C9D36:
#data 0x0420
#data 0x00CC012c
#data 0x000000D0

#align4
loc_8C0C9D40:
#data 0xC1200000

#align4
loc_8C0C9D44:
#data 0x41200000

#align4
loc_8C0C9D48:
#data bank03.loc_8c034e8c

loc_8C0C9D4C:
#data bank03.loc_8c034dee

loc_8C0C9D50:
#data bank03.loc_8c03340c

loc_8C0C9D54:
#data bank15.loc_8c15c330

loc_8C0C9D58:
#data bank03.loc_8c03319e

loc_8C0C9D5C:
#data bank12.loc_8c12939c


loc_8C0C9D60:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0C9EB0,pc),r3 ; r3 set to 0x8C034DEe
mov r4,r14
mov.l r5,@r15
jsr @r3
mov r14,r4
mov.w @(0x1E,r14),r0 	
add 0xFF,r0
mov.w r0,@(0x1E,r14) 	
exts.w r0,r0
tst r0,r0
bf loc_8C0C9D8a
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0C9EB4,pc),r3 ; r3 set to 0x8C0CB492
jmp @r3
mov.l @r15+,r14

loc_8C0C9D8A:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0C9D92:
mov r4,r3
mov.l @(loc_8C0C9EB8,pc),r1 ; r1 set to 0x8C15C338
mov.l r4,@-r15
mov.b @(0x07,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

#align4
loc_8C0C9DA4:
#data 0x4F222FE6
#data 0x6E437FFc
#data 0xE301F48d
#data 0x2F52D142
#data 0x84E7E517
#data 0x7001E60e
#data 0xE05C80E7
#data 0xE068FE47
#data 0xE060FE47
#data 0xE06CFE47
#data 0x906AFE47
#data 0x223A02Ed
#data 0x410B0E25
#data 0x65F264E3
#data 0x7F0464E3
#data 0x6EF64F26

#align4
loc_8C0C9DE4:
#data 0x4F222FE6
#data 0x430BD331
#data 0x600E6E43
#data 0x890D4011
#data 0x84E69158
#data 0x600C31Ec
#data 0x91542102
#data 0x31EC84E7
#data 0x2102600c
#data 0x80E6E002
#data 0x80E7E000

#align4
loc_8C0C9E10:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0C9E16:
mov r4,r3
mov.l @(loc_8C0C9EC0,pc),r1 ; r1 set to 0x8C15C340
mov.l r4,@-r15
mov.b @(0x07,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0C9E28:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l r5,@r15
mov.b @(0x07,r14),r0 	
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @r15,r3
fmov.s @(r0,r14),fr2
fmov.s @(r0,r3),fr3
fcmp/gt fr2,fr3
bf/s loc_8C0C9E4e
mov 0x10,r6 ; r6 set to 0x10
mov.w @(loc_8C0C9EA6,pc),r0 ; r0 set to 0x130
mov 0x01,r2 ; r2 set to 0x01
bra loc_8C0C9E54
mov.w r2,@(r0,r14) 	

loc_8C0C9E4E:
mov.w @(loc_8C0C9EA6,pc),r0 ; r0 set to 0x130
mov 0x00,r1 ; r1 set to 0x00
mov.w r1,@(r0,r14) 	

loc_8C0C9E54:
mov.l @(loc_8C0C9EBC,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
jsr @r3
mov r14,r4
mov.l @r15,r5 ; r5 ??? bc r15 is ???, r5 ??? bc r15 is ???	
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r14

loc_8C0C9E66:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0C9EB0,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
mov r4,r14
mov.l r5,@r15
jsr @r3
mov r14,r4
exts.b r0,r0 ; r0 ??	
cmp/pz r0
bt loc_8C0C9E9e
mov.w @(loc_8C0C9EAC,pc),r0 ; r0 set to 0x26C, r0 set to 0x26C, r0 set to 0x26c
mov.l @r15,r3 ; r3 ??? bc r15 is ???, r3 ??? bc r15 is ???, r3 ??? bc r15 is ???	
mov.w @(r0,r3),r2
mov 0x03,r3 ; r3 set to 0x03, r3 set to 0x03, r3 set to 0x03
cmp/ge r3,r2
bt loc_8C0C9E9e
mov.b @(0x07,r14),r0 	
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17, r5 set to 0x17
mov r14,r4
mov 0x46,r6 ; r6 set to 0x46, r6 set to 0x46, r6 set to 0x46
add 0x01,r0 ; r0 set to 0x26D, r0 set to 0x26D, r0 set to 0x26d
mov.b r0,@(0x07,r14) 	
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0C9EBC,pc),r2 ; r2 set to 0x8C034E8C, r2 set to 0x8C034E8C, r2 set to 0x8C034E8c
jmp @r2
mov.l @r15+,r14

loc_8C0C9E9E:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0C9EA6:
#data 0x0130
#data 0x00D000Cc

loc_8C0C9EAC:
#data 0x026c
#data 0x0000

#align4
loc_8C0C9EB0:
#data bank03.loc_8c034dee

loc_8C0C9EB4:
#data loc_8c0cB492

loc_8C0C9EB8:
#data bank15.loc_8c15c338

loc_8C0C9EBC:
#data bank03.loc_8c034e8c

loc_8C0C9EC0:
#data bank15.loc_8c15c340


loc_8C0C9EC4:
sts.l pr,@-r15
add 0xF8,r15
mov.l @(loc_8C0CA01C,pc),r3 ; r3 set to 0x8C034DEe
mov.l r4,@r15
mov.l r5,@(0x04,r15) 	
jsr @r3
mov.l @r15,r4
exts.b r0,r0
cmp/pz r0
bt loc_8C0C9EE4
mov.l @r15,r4
mov.l @(0x04,r15),r5
add 0x08,r15
mov.l @(loc_8C0CA020,pc),r3 ; r3 set to 0x8C0CB492
jmp @r3
lds.l @r15+,pr 	

loc_8C0C9EE4:
add 0x08,r15
lds.l @r15+,pr 	
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0C9EEC:
mov r4,r3
mov.l @(loc_8C0CA024,pc),r1 ; r1 set to 0x8C15C34c
mov.l r4,@-r15
mov.b @(0x07,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0C9EFE:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l @(loc_8C0CA02C,pc),r3 ; r3 set to 0x8C26A5A0
mov.l r5,@r15
mov.b @(0x07,r14),r0 	
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov 0x14,r0 ; r0 set to 0x14
mov.w r0,@(0x1C,r14) 	
mova @(loc_8C0CA028,pc),r0  ; r0 set to 0x8C0CA028
fmov.s @r3,fr2
fmov.s @r0,fr3 ; r3 ??	
mov 0x64,r0 ; r0 set to 0x64
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov.w @(loc_8C0CA010,pc),r0 ; r0 set to 0x41c
mov.l @r15,r3
fmov.s @(r0,r3),fr2
mov 0x70,r0 ; r0 set to 0x70
fmov.s fr2,@(r0,r14) 	
mov 0x64,r0 ; r0 set to 0x64
fmov.s @(r0,r14),fr2
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r14),fr1
fcmp/gt fr1,fr2
bt/s loc_8C0C9F40
mov 0x0D,r6 ; r6 set to 0x0d
mov.w @(loc_8C0CA012,pc),r0 ; r0 set to 0x130
mov 0x00,r2 ; r2 set to 0x00
bra loc_8C0C9F46
mov.w r2,@(r0,r14) 	

#align4
loc_8C0C9F40:
#data 0xE1019067
#data 0x0E15

loc_8C0C9F46:
#data 0xD33a
#data 0x430BE517
#data 0x65F264E3
#data 0x7F0464E3
#data 0x6EF64F26

#align4
loc_8C0C9F58:
#data 0x2FE6905c
#data 0x005C4F22
#data 0x881D600c
#data 0x6E438F05
#data 0x005C9055
#data 0x8805600c
#data 0x8910

loc_8C0C9F72:
#data 0x9151
#data 0x31EC84E6
#data 0x2102600c
#data 0x84E7914d
#data 0x600C31Ec
#data 0xE0102102
#data 0xE00080E6
#data 0x4F2680E7
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0C9F94:
#data 0x85EEE134
#data 0xF31831Ec
#data 0x6303E164
#data 0x435A31Ec
#data 0xF218E234
#data 0xE13832Ec
#data 0x31ECF231
#data 0xF233F32d
#data 0xF320F328
#data 0xE238F23a
#data 0xE170F318
#data 0x31EC85Ee
#data 0x32ECF218
#data 0x435A6303
#data 0xF32DF231
#data 0xF328F233
#data 0xF23AF320
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x8B0D2008
#data 0xE64084E7
#data 0x70019113
#data 0x80E7D310
#data 0x900E31Ec
#data 0xE517005d
#data 0x2101CA01
#data 0x64E3430b

#align4
loc_8C0CA000:
#data 0xD2064F26
#data 0x422B64E3
#data 0x4F266EF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0CA010:
#data 0x041c

loc_8C0CA012:
#data 0x0130
#data 0x01E901D0
#data 0x00D000Cc

#align4
loc_8C0CA01C:
#data bank03.loc_8c034dee

loc_8C0CA020:
#data loc_8c0cB492

loc_8C0CA024:
#data bank15.loc_8c15c34c

loc_8C0CA028:
#data 0x43A00000

#align4
loc_8C0CA02C:
#data 0x8C26A5A0

#align4
loc_8C0CA030:
#data bank03.loc_8c034e8c

loc_8C0CA034:
#data 0x4F222FE6
#data 0x90947FFc
#data 0x335C9392
#data 0x005C2F32
#data 0x881D600c
#data 0x6E438F05
#data 0x005C908c
#data 0x8805600c
#data 0x8911

loc_8C0CA056:
#data 0x9188
#data 0x31EC84E6
#data 0x2102600c
#data 0x84E79184
#data 0x600C31Ec
#data 0xE0102102
#data 0xE00080E6
#data 0x7F0480E7
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0CA07A:
#data 0xD33d
#data 0x64E3430b
#data 0x842762F2
#data 0x890C2008
#data 0xE51784E7
#data 0xE64164E3
#data 0x80E77001
#data 0x81EFE000
#data 0x4F267F04
#data 0x432BD335
#data 0x6EF6

loc_8C0CA0A2:
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0CA0AA:
#data 0x2FE6
#data 0x4F222FD6
#data 0x93577FFc
#data 0x6E436D53
#data 0x2F3233Dc
#data 0x430BD32c
#data 0x905064E3
#data 0x600C00Dc
#data 0x8B0B881d
#data 0x00DC904c
#data 0x8805600c
#data 0x85EF8B06
#data 0x620363F2
#data 0x600C8437
#data 0x8B0B3203

#align4
loc_8C0CA0E4:
#data 0xE51784E7
#data 0xE64264E3
#data 0x80E77001
#data 0x4F267F04
#data 0x6DF6D31f
#data 0x6EF6432b

#align4
loc_8C0CA0FC:
#data 0x4F267F04
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0CA106:
mov.l r14,@-r15
mov.w @(loc_8C0CA166,pc),r0 ; r0 set to 0x1D0
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
extu.b r0,r0
cmp/eq 0x1D,r0 	
bf/s loc_8C0CA142
mov r4,r14
mov.w @(loc_8C0CA168,pc),r0 ; r0 set to 0x1E9
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
extu.b r0,r0
cmp/eq 0x04,r0 	
bf loc_8C0CA142
mov.w @(loc_8C0CA16A,pc),r1 ; r1 set to 0xCc
mov.b @(0x06,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
extu.b r0,r0
mov.l r0,@r1
mov.w @(loc_8C0CA16C,pc),r1 ; r1 set to 0xD0
mov.b @(0x07,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
extu.b r0,r0
mov.l r0,@r1
mov 0x11,r0 ; r0 set to 0x11
mov.b r0,@(0x06,r14) 	
mov 0x00,r0 ; r0 set to 0x00
bra loc_8C0CA15c
mov.b r0,@(0x07,r14) 	

loc_8C0CA142:
mov.l @(loc_8C0CA170,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt loc_8C0CA15c
lds.l @r15+,pr 	
mov r13,r5
mov.l @(loc_8C0CA178,pc),r3 ; r3 set to 0x8C0CB492
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0CA15C:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x02A4

loc_8C0CA166:
#data 0x01D0

loc_8C0CA168:
#data 0x01E9

loc_8C0CA16A:
#data 0x00Cc

loc_8C0CA16C:
#data 0x00D0
#data 0x0000

#align4
loc_8C0CA170:
#data bank03.loc_8c034dee

loc_8C0CA174:
#data bank03.loc_8c034e8c

loc_8C0CA178:
#data loc_8c0cB492


loc_8C0CA17C:
mov r4,r3
mov.l @(loc_8C0CA2E0,pc),r1 ; r1 set to 0x8C15C360
mov.l r4,@-r15
mov.b @(0x07,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CA18E:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b @(0x07,r14),r0 	
mov 0xC0,r5 ; r5 set to 0xFFFFFFC0
mov.l @(loc_8C0CA2E4,pc),r3 ; r3 set to 0x8C0CB46a
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov 0x28,r0 ; r0 set to 0x28
mov.w r0,@(0x1C,r14) 	
jsr @r3
mov r13,r4
mov 0x64,r0 ; r0 set to 0x64
fmov.s fr0,@(r0,r14) 	
mov.w @(loc_8C0CA2D2,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
mov 0x70,r0 ; r0 set to 0x70
fmov.s fr3,@(r0,r14) 	
mov 0x64,r0 ; r0 set to 0x64
fmov.s @(r0,r14),fr3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r14),fr2
fcmp/gt fr2,fr3
bt/s loc_8C0CA1Cc
mov 0x0D,r6 ; r6 set to 0x0d
mov.w @(loc_8C0CA2D4,pc),r0 ; r0 set to 0x130
mov 0x00,r2 ; r2 set to 0x00
bra loc_8C0CA1D2
mov.w r2,@(r0,r14) 	

#align4
loc_8C0CA1CC:
#data 0xE1019082
#data 0x0E15

loc_8C0CA1D2:
#data 0xD345
#data 0x430BE517
#data 0x4F2664E3
#data 0x64E365D3
#data 0x6EF66DF6

#align4
loc_8C0CA1E4:
#data 0x2FE69077
#data 0x005C4F22
#data 0x881D600c
#data 0x6E438F05
#data 0x005C9070
#data 0x8804600c
#data 0x8910

loc_8C0CA1FE:
#data 0x916c
#data 0x31EC84E6
#data 0x2102600c
#data 0x84E79168
#data 0x600C31Ec
#data 0xE0102102
#data 0xE00080E6
#data 0x4F2680E7
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0CA220:
#data 0x85EEE134
#data 0xF31831Ec
#data 0x6303E164
#data 0x435A31Ec
#data 0xF218E234
#data 0xE13832Ec
#data 0x31ECF231
#data 0xF233F32d
#data 0xF320F328
#data 0xE238F23a
#data 0xE170F318
#data 0x31EC85Ee
#data 0x32ECF218
#data 0x435A6303
#data 0xF32DF231
#data 0xF328F233
#data 0xF23AF320
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x8B072008
#data 0xE51784E7
#data 0xE600D31c
#data 0x80E77001
#data 0x64E3430b

#align4
loc_8C0CA280:
#data 0xD21A4F26
#data 0x422B64E3
#data 0x4F266EF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0CA290:
#data 0x6E432FE6
#data 0x901E2FD6
#data 0x6C532FC6
#data 0x00CC4F22
#data 0x881D600c
#data 0xED008F05
#data 0x00CC9016
#data 0x8804600c
#data 0x891e

loc_8C0CA2B2:
#data 0x9112
#data 0x31EC84E6
#data 0x2102600c
#data 0x84E7910e
#data 0x600C31Ec
#data 0xE0102102
#data 0x60D380E6
#data 0xA0400009
#data 0x80E7

loc_8C0CA2D2:
#data 0x041c

loc_8C0CA2D4:
#data 0x0130
#data 0x01D0
#data 0x00CC01E9
#data 0x000000D0

#align4
loc_8C0CA2E0:
#data bank15.loc_8c15c360

loc_8C0CA2E4:
#data loc_8c0cB46a

loc_8C0CA2E8:
#data bank03.loc_8c034e8c

loc_8C0CA2EC:
#data bank03.loc_8c034dee

loc_8C0CA2F0:
#data 0x430BD349
#data 0x908C64E3
#data 0x222802Cc
#data 0xD2478929
#data 0x23386320
#data 0x84E78B25
#data 0xE517E444
#data 0x80E77001
#data 0x907FE643
#data 0x0E3503Cd
#data 0x0E44706c
#data 0x0E447001
#data 0xE3397004
#data 0x0E3464E3
#data 0x0ED5700b
#data 0x0ED470F2
#data 0xD33B7026
#data 0x84E20ED6
#data 0x600C6232
#data 0x727C4000
#data 0x7101012d
#data 0x4F260215
#data 0x6CF6D236
#data 0x422B6DF6
#data 0x6EF6

loc_8C0CA352:
#data 0x4F26
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0CA35C:
#data 0x4F222FE6
#data 0x430BD32d
#data 0x90546E43
#data 0x222802Ec
#data 0x84E78902
#data 0x80E77001

#align4
loc_8C0CA374:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0CA37A:
mova @(loc_8C0CA428,pc),r0  ; r0 init to 0x8C0CA428
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
fmov.s @r0,fr4
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r14),fr3
mov.l @(loc_8C0CA418,pc),r3 ; r3 set to 0x8C034DEe
fadd fr4,fr3 ; r3 ??? bc r4 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r14),fr2
fadd fr4,fr2
fmov.s fr2,@(r0,r14) 	
jsr @r3
mov r14,r4
exts.b r0,r0 ; r0 ??	
cmp/pz r0
bt loc_8C0CA406
mov.b @(0x07,r14),r0 	
mov 0x00,r13 ; r13 set to 0x00
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov r13,r0 ; r0 set to 0x00
nop 	
fldi1 fr4
fadd fr4,fr4
mov.w r0,@(0x1C,r14) 	
mov 0x50,r0 ; r0 set to 0x50
fmov.s fr4,@(r0,r14) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s fr4,@(r0,r14) 	
mov.w @(loc_8C0CA414,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bf loc_8C0CA3Ca
mova @(loc_8C0CA42C,pc),r0  ; r0 set to 0x8C0CA42c
bra loc_8C0CA3Ce
fmov.s @r0,fr3

loc_8C0CA3CA:
#data 0xC719
#data 0xF308

loc_8C0CA3CE:
#data 0xE05c
#data 0xFE37D314
#data 0xF38DE068
#data 0xFE37E517
#data 0x430BE644
#data 0x901864E3
#data 0xD30EE23a
#data 0x700B0E24
#data 0x70F20ED5
#data 0x70260ED4
#data 0x84E20ED6
#data 0x600C6232
#data 0x727C4000
#data 0x7101012d
#data 0x0215


loc_8C0CA406:
lds.l @r15+,pr 	
mov.l @(loc_8C0CA434,pc),r3 ; r3 set to 0x8C045748
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14
#data 0x0141

loc_8C0CA414:
#data 0x0130
#data 0x01A1

#align4
loc_8C0CA418:
#data bank03.loc_8c034dee
#data 0x8C2895F6
#data 0x8C2896B0

#align4
loc_8C0CA424:
#data bank03.loc_8c034e8c

loc_8C0CA428:
#data 0x3D000000

#align4
loc_8C0CA42C:
#data 0xC0D55555
#data 0x40D55555

#align4
loc_8C0CA434:
#data bank04.loc_8c045748


loc_8C0CA438:
mov.l r14,@-r15
mov 0x5C,r1 ; r1 set to 0x5c
mov r4,r14
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34
mov.l r13,@-r15
sts.l pr,@-r15
fmov.s @r1,fr3
mov 0x68,r1 ; r1 set to 0x68
fmov.s @(r0,r14),fr2
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov.w @(loc_8C0CA4F4,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bf/s loc_8C0CA476
mov r5,r13
mova @(loc_8C0CA500,pc),r0  ; r0 set to 0x8C0CA500
fmov.s @r0,fr4
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r14),fr3
fcmp/gt fr3,fr4
bf loc_8C0CA48c
bra loc_8C0CA482
nop 	

loc_8C0CA476:
#data 0xC723
#data 0xE05CF408
#data 0xF345F3E6
#data 0x8B04

loc_8C0CA482:
#data 0xE05c
#data 0xFE47F38d
#data 0xFE37E068

#align4
loc_8C0CA48C:
#data 0x430BD31e
#data 0x903064E3
#data 0x222802Dc
#data 0x902D8909
#data 0x600C00Dc
#data 0x8B04881d
#data 0x00DC9029
#data 0x8804600c
#data 0x890a

loc_8C0CA4AE:
#data 0x84E7
#data 0xD31664E3
#data 0x7001E645
#data 0xE51780E7
#data 0x6DF64F26
#data 0x6EF6432b

#align4
loc_8C0CA4C4:
#data 0x02EC901a
#data 0x8B032228
#data 0x03EC9017
#data 0x89292338

#align4
loc_8C0CA4D4:
#data 0x200885Ee
#data 0xE00A8B26
#data 0x900981Ee
#data 0x233803Ed
#data 0xC70A8B18
#data 0xE05CF308
#data 0xC709FE37
#data 0xF308A018

loc_8C0CA4F4:
#data 0x0130
#data 0x0141
#data 0x01E901D0
#data 0x019F019e

#align4
loc_8C0CA500:
#data 0xC0D55555
#data 0x40D55555

#align4
loc_8C0CA508:
#data bank03.loc_8c034dee

loc_8C0CA50C:
#data bank03.loc_8c034e8c
#data 0x40200000
#data 0xBED55555

#align4
loc_8C0CA518:
#data 0xF308C74b
#data 0xFE37E05c
#data 0xF308C74a

#align4
loc_8C0CA524:
#data 0xFE37E068

#align4
loc_8C0CA528:
#data 0x200885Ee
#data 0x85EE8918
#data 0x81EE70Ff
#data 0x2008600f
#data 0x907F8B12
#data 0xE400E23a
#data 0x0E24D343
#data 0x0E45700b
#data 0x0E4470F2
#data 0x0E467026
#data 0x623284E2
#data 0x4000600c
#data 0x012D727c
#data 0x02157101

#align4
loc_8C0CA560:
#data 0xD33C4F26
#data 0x6DF664E3
#data 0x6EF6432b

#align4
loc_8C0CA56C:
#data 0xFFFB2FE6
#data 0x7FFC4F22
#data 0x6E43C738
#data 0x2F52FF9d
#data 0xE050F408
#data 0xF341F3E6
#data 0xE054FE37
#data 0xF241F2E6
#data 0xE050FE27
#data 0xFF35F3E6
#data 0x64E38F03
#data 0xE054FEF7
#data 0xFEF7

loc_8C0CA59E:
#data 0xD32f
#data 0x0009430b
#data 0x4011600e
#data 0xE050890a
#data 0xFEF764E3
#data 0xFEF7E054
#data 0x7F0465F2
#data 0xFFF94F26
#data 0x6EF6A769

#align4
loc_8C0CA5C0:
#data 0x4F267F04
#data 0x000BFFF9
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0CA5CA:
#data 0x9038
#data 0x6E432FE6
#data 0xE038F356
#data 0xF234F2E6
#data 0x90318B0c
#data 0x600C005c
#data 0x8B048815
#data 0x005C902d
#data 0x8803600c
#data 0x8902

loc_8C0CA5EE:
#data 0x64E3
#data 0x6EF6A74f

#align4
loc_8C0CA5F4:
#data 0x64E384E7
#data 0x600CD119
#data 0x031E4008
#data 0x6EF6432b


loc_8C0CA604:
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
bf/s loc_8C0CA664
mov 0x1A,r5 ; r5 set to 0x1a
mov.w @(loc_8C0CA644,pc),r0 ; r0 set to 0x130
mov 0x01,r2 ; r2 set to 0x01
bra loc_8C0CA66a
mov.w r2,@(r0,r14) 	
#data 0x041C01A1
#data 0x01E901D0

loc_8C0CA644:
#data 0x0130
#data 0x0000
#data 0xC0200000
#data 0x3ED55555
#data 0x8C2896B0

#align4
loc_8C0CA654:
#data bank04.loc_8c045748
#data 0x3D124925

#align4
loc_8C0CA65C:
#data bank03.loc_8c034dee

loc_8C0CA660:
#data bank15.loc_8c15c37c

loc_8C0CA664:
#data 0xE100906e
#data 0x0E15

loc_8C0CA66A:
#data 0xD338
#data 0x64E3430b
#data 0xE517D237
#data 0x420BE60f
#data 0x65F264E3
#data 0x7F0464E3
#data 0x6EF64F26

#align4
loc_8C0CA684:
#data 0x4F222FE6
#data 0x430BD332
#data 0x905A6E43
#data 0x222802Ec
#data 0x84E7890a
#data 0x80E77001
#data 0xF308C72e
#data 0xFE37E060
#data 0xF308C72d
#data 0xFE37E06c

#align4
loc_8C0CA6AC:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0CA6B2:
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
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r4),fr3
mov.w @(loc_8C0CA748,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r5),fr2
fcmp/gt fr2,fr3
bt loc_8C0CA6Ea
mov 0x01,r0 ; r0 set to 0x01
mov.l @(loc_8C0CA754,pc),r3 ; r3 set to 0x8C034DEe
mov.b r0,@(0x07,r4) 	
mov.w @(loc_8C0CA748,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
mov 0x38,r0 ; r0 set to 0x38
jmp @r3
fmov.s fr3,@(r0,r4) 	

loc_8C0CA6EA:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0CA6EE:
mov r4,r3
mov.l @(loc_8C0CA760,pc),r1 ; r1 set to 0x8C15C388
mov.l r4,@-r15
mov.b @(0x07,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

#align4
loc_8C0CA700:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x84E74F22
#data 0x80E77001
#data 0x03DE901b
#data 0x8D032338
#data 0x03DEF48d
#data 0x0D3673Ff

#align4
loc_8C0CA720:
#data 0xFE47E05c
#data 0xFE47E068
#data 0xFE47E060
#data 0xFE47E06c
#data 0xF2E6E034
#data 0xF325F3D6
#data 0xE60F8F14
#data 0xE2019002
#data 0x0E25A013
#data 0x01410130

loc_8C0CA748:
#data 0x041c
#data 0x02E4

#align4
loc_8C0CA74C:
#data bank04.loc_8c042008

loc_8C0CA750:
#data bank03.loc_8c034e8c

loc_8C0CA754:
#data bank03.loc_8c034dee
#data 0x40CDB6Db
#data 0xBF4DB6Db

#align4
loc_8C0CA760:
#data bank15.loc_8c15c388

loc_8C0CA764:
#data 0xE1009085
#data 0x0E15

loc_8C0CA76A:
#data 0xD346
#data 0x430BE517
#data 0x4F2664E3
#data 0x64E365D3
#data 0x6EF66DF6

#align4
loc_8C0CA77C:
#data 0x4F222FE6
#data 0xD3417FFc
#data 0x2F526E43
#data 0x64E3430b
#data 0x02EC9072
#data 0x890A2228
#data 0x700184E7
#data 0xC73C80E7
#data 0xE060F308
#data 0xC73BFE37
#data 0xE06CF308
#data 0xFE37

loc_8C0CA7AA:
#data 0x9164
#data 0x001C60F2
#data 0x881D600c
#data 0x925F8B25
#data 0x002C60F2
#data 0x8805600c
#data 0x88048905
#data 0x7F04890f
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0CA7CE:
#data 0x9154
#data 0x31EC84E6
#data 0x2102600c
#data 0x84E79150
#data 0x600C31Ec
#data 0xA00B2102
#data 0xE00f

loc_8C0CA7E6:
#data 0x9148
#data 0x31EC84E6
#data 0x2102600c
#data 0x84E79144
#data 0x600C31Ec
#data 0xE0112102

#align4
loc_8C0CA7FC:
#data 0xE00080E6
#data 0x80E7

loc_8C0CA802:
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0CA80A:
mov.l r14,@-r15
mov r4,r14
mov 0x60,r1 ; r1 set to 0x60
mov.l r13,@-r15
mov 0x38,r0 ; r0 set to 0x38
mov r5,r13
add r14,r1 ; r1 ??? bc r14 is ???	
sts.l pr,@-r15
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
mov.w @(loc_8C0CA87E,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r13),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fcmp/gt fr3,fr2
bt loc_8C0CA86a
mov.w @(loc_8C0CA87E,pc),r0 ; r0 set to 0x41c
mov.l @(loc_8C0CA888,pc),r3 ; r3 set to 0x8C034DEe
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14) 	
jsr @r3
mov r14,r4
mov.w @(loc_8C0CA880,pc),r0 ; r0 set to 0x2E4
mov.l @(r0,r13),r2
tst r2,r2
bt loc_8C0CA85e
mov.l @(r0,r13),r3
add 0xFF,r3
mov.l r3,@(r0,r13) 	
mov 0x01,r0 ; r0 set to 0x01
bra loc_8C0CA86a
mov.b r0,@(0x07,r14) 	

loc_8C0CA85E:
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
mov.l @r15+,r13
bra loc_8C0CB492
mov.l @r15+,r14

loc_8C0CA86A:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x0130
#data 0x01D00141
#data 0x00CC01E9
#data 0x00D0

loc_8C0CA87E:
#data 0x041c

loc_8C0CA880:
#data 0x02E4
#data 0x0000

#align4
loc_8C0CA884:
#data bank03.loc_8c034e8c

loc_8C0CA888:
#data bank03.loc_8c034dee
#data 0x40CDB6Db
#data 0xBF4DB6Db

#align4
loc_8C0CA894:
#data 0x2FE6907d
#data 0x2338035c
#data 0x6E438F0c
#data 0x005C9078
#data 0x881C600c
#data 0x90748B03
#data 0x2228025c
#data 0x8902

loc_8C0CA8B2:
#data 0x64E3
#data 0x6EF6A5Ed

#align4
loc_8C0CA8B8:
#data 0x64E384E7
#data 0x600CD138
#data 0x031E4008
#data 0x6EF6432b

#align4
loc_8C0CA8C8:
#data 0x4F222FE6
#data 0x6E437FFc
#data 0x84E72F52
#data 0xE619E517
#data 0x80E77001
#data 0x63F2905c
#data 0xD330023d
#data 0x430B0E25
#data 0x65F264E3
#data 0x7F0464E3
#data 0x6EF64F26

#align4
loc_8C0CA8F4:
#data 0x4F222FE6
#data 0x430BD32b
#data 0x600E6E43
#data 0x890D4011
#data 0x84E69149
#data 0x600C31Ec
#data 0x91452102
#data 0x31EC84E7
#data 0x2102600c
#data 0x80E6E001
#data 0x80E7E000

#align4
loc_8C0CA920:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0CA926:
mov.w @(loc_8C0CA994,pc),r0 ; r0 set to 0x1D0
mov.l r14,@-r15
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x1D,r0 	
bf/s loc_8C0CA97e
mov r4,r14
mov.w @(loc_8C0CA99E,pc),r0 ; r0 set to 0x1E9
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x05,r0 	
bt loc_8C0CA946
cmp/eq 0x04,r0 	
bt loc_8C0CA95e
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0CA946:
mov.w @(loc_8C0CA99A,pc),r1 ; r1 set to 0xCc
mov.b @(0x06,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
extu.b r0,r0
mov.l r0,@r1
mov.w @(loc_8C0CA99C,pc),r1 ; r1 set to 0xD0
mov.b @(0x07,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
extu.b r0,r0
mov.l r0,@r1
bra loc_8C0CA974
mov 0x0F,r0

loc_8C0CA95E:
#data 0x911c
#data 0x31EC84E6
#data 0x2102600c
#data 0x84E79118
#data 0x600C31Ec
#data 0xE0112102


loc_8C0CA974:
mov.b r0,@(0x06,r14) 	
mov 0x00,r0 ; r0 set to 0x00
mov.b r0,@(0x07,r14) 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0CA97E:
mov.b @(0x07,r14),r0 	
mov r14,r4
mov.l @(loc_8C0CA9AC,pc),r1 ; r1 set to 0x8C15C39c
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x000b
#data 0x04116EF6

loc_8C0CA994:
#data 0x01D0
#data 0x0256
#data 0x0130

loc_8C0CA99A:
#data 0x00Cc

loc_8C0CA99C:
#data 0x00D0

loc_8C0CA99E:
#data 0x01E9

#align4
loc_8C0CA9A0:
#data bank15.loc_8c15c394

loc_8C0CA9A4:
#data bank03.loc_8c034e8c

loc_8C0CA9A8:
#data bank03.loc_8c034dee

loc_8C0CA9AC:
#data bank15.loc_8c15c39c


loc_8C0CA9B0:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b @(0x07,r14),r0 	
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov 0x1E,r0 ; r0 set to 0x1e
mov.w r0,@(0x1C,r14) 	
mov.w @(loc_8C0CAAE2,pc),r0 ; r0 set to 0x130
mov.w @(r0,r13),r3
mov.w r3,@(r0,r14) 	
mov.l @(loc_8C0CAAEC,pc),r3 ; r3 set to 0x8C03340c
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8C0CAA08
mov.w @(loc_8C0CAAE2,pc),r0 ; r0 set to 0x130
mov.l @(loc_8C0CAAF0,pc),r4 ; r4 set to 0x8C26A518
mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???	
tst r3,r3
bf loc_8C0CA9F2
mova @(loc_8C0CAAF4,pc),r0  ; r0 set to 0x8C0CAAF4
fmov.s @r0,fr3
mov.w @(loc_8C0CAAE4,pc),r0 ; r0 set to 0x8c
fmov.s @(r0,r4),fr2
mov 0x34,r0 ; r0 set to 0x34
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0CAAF8,pc),r0  ; r0 set to 0x8C0CAAF8
bra loc_8C0CAA04
fmov.s @r0,fr2

loc_8C0CA9F2:
#data 0xC742
#data 0x9076F308
#data 0xE034F246
#data 0xFE27F230
#data 0xF208C73f

#align4
loc_8C0CAA04:
#data 0xFE27E05c

#align4
loc_8C0CAA08:
#data 0xF38DE068
#data 0xE517FE37
#data 0xE60D906a
#data 0xF3D6D33b
#data 0xFE37E038
#data 0x64E3430b
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6

loc_8C0CAA2A:
#data 0x2FE6
#data 0xD3364F22
#data 0x6E43430b
#data 0x31ECE15c
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x8B042008
#data 0x700184E7
#data 0x904280E7
#data 0x81Ee

loc_8C0CAA66:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0CAA6C:
#data 0x4F222FE6
#data 0xD3257FFc
#data 0x2F526E43
#data 0x64E3430b
#data 0x31ECE15c
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031Ec
#data 0xFE27E538
#data 0xF2E6E05c
#data 0xF230F318
#data 0xB4E6FE27
#data 0x85EE64F2
#data 0x81EE70Ff
#data 0x2008600f
#data 0xF40C8D10
#data 0x02ED9019
#data 0x8B032228
#data 0xF3E6E034
#data 0x8B07F345

#align4
loc_8C0CAABC:
#data 0x02ED9011
#data 0x89232228
#data 0xF3E6E034
#data 0x891FF435

#align4
loc_8C0CAACC:
#data 0xE51784E7
#data 0xE61A64E3
#data 0x80E77001
#data 0x4F267F04
#data 0x432BD309
#data 0x6EF6

loc_8C0CAAE2:
#data 0x0130

loc_8C0CAAE4:
#data 0x008c
#data 0x0088
#data 0x012C041c

#align4
loc_8C0CAAEC:
#data bank03.loc_8c03340c

loc_8C0CAAF0:
#data 0x8C26A518

#align4
loc_8C0CAAF4:
#data 0x42A00000

#align4
loc_8C0CAAF8:
#data 0xC0FD5555
#data 0xC2A00000
#data 0x40FD5555

#align4
loc_8C0CAB04:
#data bank03.loc_8c034e8c

loc_8C0CAB08:
#data bank03.loc_8c034dee

loc_8C0CAB0C:
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0CAB14:
sts.l pr,@-r15
add 0xF8,r15
mov.l @(loc_8C0CAC50,pc),r3 ; r3 set to 0x8C034DEe
mov.l r4,@r15
mov.l r5,@(0x04,r15) 	
jsr @r3
mov.l @r15,r4
exts.b r0,r0
cmp/pz r0
bt loc_8C0CAB32
mov.l @r15,r4
mov.l @(0x04,r15),r5
add 0x08,r15
bra loc_8C0CB492
lds.l @r15+,pr 	

loc_8C0CAB32:
add 0x08,r15
lds.l @r15+,pr 	
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0CAB3A:
mov r4,r3
mov.l @(loc_8C0CAC54,pc),r1 ; r1 set to 0x8C15C3Ac
mov.l r4,@-r15
mov.b @(0x07,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CAB4C:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l r5,@r15
mov.b @(0x07,r14),r0 	
mov 0x17,r5 ; r5 set to 0x17
mov 0x21,r6 ; r6 set to 0x21
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov.w @(loc_8C0CAC4C,pc),r0 ; r0 set to 0x130
mov.l @r15,r3
mov.w @(r0,r3),r2
mov.l @(loc_8C0CAC58,pc),r3 ; r3 set to 0x8C034E8c
mov.w r2,@(r0,r14) 	
jsr @r3
mov r14,r4
mov.l @r15,r5 ; r5 ??? bc r15 is ???	
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r14

loc_8C0CAB78:
sts.l pr,@-r15
add 0xF8,r15
mov.l @(loc_8C0CAC50,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
mov.l r4,@r15
mov.l r5,@(0x04,r15) 	
jsr @r3
mov.l @r15,r4
exts.b r0,r0 ; r0 ??	
cmp/pz r0
bt loc_8C0CAB96
mov.l @r15,r4
mov.l @(0x04,r15),r5
add 0x08,r15
bra loc_8C0CB492
lds.l @r15+,pr 	

loc_8C0CAB96:
add 0x08,r15
lds.l @r15+,pr 	
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0CAB9E:
mov.w @(loc_8C0CAC4E,pc),r0 ; r0 set to 0x1D0
mov.l r14,@-r15
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x16,r0 	
bt/s loc_8C0CABB2
mov r4,r14
mov r14,r4
bra loc_8C0CB492
mov.l @r15+,r14

loc_8C0CABB2:
mov.b @(0x07,r14),r0 	
mov r14,r4
mov.l @(loc_8C0CAC5C,pc),r1 ; r1 set to 0x8C15C3B4
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0CABC2:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l r5,@r15
mov.b @(0x07,r14),r0 	
mov 0x17,r5 ; r5 set to 0x17
mov 0x1B,r6 ; r6 set to 0x1b
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov.w @(loc_8C0CAC4C,pc),r0 ; r0 set to 0x130
mov.l @r15,r3
mov.w @(r0,r3),r2
mov.l @(loc_8C0CAC58,pc),r3 ; r3 set to 0x8C034E8c
mov.w r2,@(r0,r14) 	
jsr @r3
mov r14,r4
mov.l @r15,r5 ; r5 ??? bc r15 is ???	
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r14

loc_8C0CABEE:
mov.l @(loc_8C0CAC50,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
jmp @r3
nop 	

loc_8C0CABF4:
mov r4,r3
mov.l @(loc_8C0CAC60,pc),r1 ; r1 set to 0x8C15C3Bc
mov.l r4,@-r15
mov.b @(0x07,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CAC06:
#data 0x2FE6
#data 0x2FD66E43
#data 0x4F226D53
#data 0xB42AE538
#data 0xE03464D3
#data 0xC712F4E6
#data 0xF401F308
#data 0x8903F345
#data 0xF208C710
#data 0x8B07F425

#align4
loc_8C0CAC2C:
#data 0xE00165D3
#data 0x64E380E7
#data 0x6DF64F26
#data 0x6EF6A018

#align4
loc_8C0CAC3C:
#data 0xE00365D3
#data 0x64E380E7
#data 0x6DF64F26
#data 0x6EF6A082

loc_8C0CAC4C:
#data 0x0130

loc_8C0CAC4E:
#data 0x01D0

#align4
loc_8C0CAC50:
#data bank03.loc_8c034dee

loc_8C0CAC54:
#data bank15.loc_8c15c3Ac

loc_8C0CAC58:
#data bank03.loc_8c034e8c

loc_8C0CAC5C:
#data bank15.loc_8c15c3B4

loc_8C0CAC60:
#data bank15.loc_8c15c3Bc
#data 0xC1555555
#data 0x41555555


loc_8C0CAC6C:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l r5,@r15
mov.b @(0x07,r14),r0 	
mov 0x38,r5 ; r5 set to 0x38
add 0x01,r0
mov.b r0,@(0x07,r14) 	
bsr loc_8C0CB46a
mov.l @r15,r4
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r14),fr3
fcmp/gt fr3,fr0 ; r0 ??? bc r3 is ???	
bt loc_8C0CAC96
mov.w @(loc_8C0CAD3A,pc),r0 ; r0 set to 0x130
mov 0x00,r2 ; r2 set to 0x00
mov.w r2,@(r0,r14) 	
mova @(loc_8C0CAD40,pc),r0  ; r0 set to 0x8C0CAD40
bra loc_8C0CACA0
fmov.s @r0,fr3

loc_8C0CAC96:
#data 0x9050
#data 0x0E25E201
#data 0xF308C729

#align4
loc_8C0CACA0:
#data 0xD329E05c
#data 0xE068FE37
#data 0xE517F38d
#data 0xE60CFE37
#data 0x64E3430b
#data 0x64E365F2
#data 0x4F267F04
#data 0x6EF6

loc_8C0CACBE:
#data 0x2FE6
#data 0x7FFC4F22
#data 0x6E43D321
#data 0x430B2F52
#data 0xE15C64E3
#data 0xE03431Ec
#data 0xF2E6F318
#data 0x31ECE168
#data 0xE538F230
#data 0xE05CFE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x64F2B3Bd
#data 0xF40C9023
#data 0x222802Ed
#data 0xE4038F04
#data 0xF3E6E034
#data 0x8B07F345

#align4
loc_8C0CAD04:
#data 0x02ED9019
#data 0x89082228
#data 0xF3E6E034
#data 0x8904F435

#align4
loc_8C0CAD14:
#data 0x00096043
#data 0xE03480E7
#data 0xFE47

loc_8C0CAD1E:
#data 0x900d
#data 0x023C63F2
#data 0x89042228
#data 0x00096043
#data 0xE03480E7
#data 0xFE47

loc_8C0CAD32:
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0CAD3A:
#data 0x0130
#data 0x00000141

#align4
loc_8C0CAD40:
#data 0xC0D55555
#data 0x40D55555

#align4
loc_8C0CAD48:
#data bank03.loc_8c034e8c

loc_8C0CAD4C:
#data bank03.loc_8c034dee

loc_8C0CAD50:
#data 0x4F222FE6
#data 0x6E437FFc
#data 0x2F52F48d
#data 0x84E7E517
#data 0x7001E600
#data 0xE05C80E7
#data 0xE060FE47
#data 0xE068FE47
#data 0xE06CFE47
#data 0x9061FE47
#data 0x023D63F2
#data 0x0E25D331
#data 0x64E3430b
#data 0x64E365F2
#data 0x4F267F04
#data 0x6EF6

loc_8C0CAD8E:
#data 0x2FE6
#data 0x2FD66E43
#data 0xD32C4F22
#data 0x6D53430b
#data 0x00DC904f
#data 0x8816600c
#data 0xE5388B1d
#data 0x64D3B35f
#data 0xF4E6E034
#data 0xF308C726
#data 0xF345F401
#data 0xC7258903
#data 0xF425F208
#data 0x8B01

loc_8C0CADC2:
#data 0xE001
#data 0x80E7

loc_8C0CADC6:
#data 0x903b
#data 0x233803Dc
#data 0xE0058909
#data 0x64E3D31c
#data 0x4F2680E7
#data 0xE517E613
#data 0x432B6DF6
#data 0x6EF6

loc_8C0CADE2:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0CADEA:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0CAE48,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt loc_8C0CAE36
mov.b @(0x07,r14),r0 	
mov 0x01,r3 ; r3 set to 0x01
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov.w @(loc_8C0CAE3C,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r2
xor r3,r2
mov.w r2,@(r0,r14) 	
mov.w @(r0,r14),r1
tst r1,r1
bf loc_8C0CAE16
mova @(loc_8C0CAE54,pc),r0  ; r0 set to 0x8C0CAE54
bra loc_8C0CAE1a
fmov.s @r0,fr3

loc_8C0CAE16:
mova @(loc_8C0CAE58,pc),r0  ; r0 init to 0x8C0CAE58
fmov.s @r0,fr3

loc_8C0CAE1A:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
mov.l @(loc_8C0CAE44,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
fmov.s fr3,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fldi0 fr3
mov r14,r4
fmov.s fr3,@(r0,r14) 	
mov 0x01,r0 ; r0 set to 0x01, r0 set to 0x01
mov.w r0,@(0x1C,r14) 	
mov 0x14,r6 ; r6 set to 0x14, r6 set to 0x14
lds.l @r15+,pr 	
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
jmp @r3
mov.l @r15+,r14

loc_8C0CAE36:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0CAE3C:
#data 0x0130
#data 0x01D0
#data 0x00000141

#align4
loc_8C0CAE44:
#data bank03.loc_8c034e8c

loc_8C0CAE48:
#data bank03.loc_8c034dee
#data 0xC1555555
#data 0x41555555

#align4
loc_8C0CAE54:
#data 0xC0D55555

#align4
loc_8C0CAE58:
#data 0x40D55555

#align4
loc_8C0CAE5C:
#data 0x4F222FE6
#data 0x6E43B035
#data 0x31ECE15c
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x03ED908c
#data 0x8B082338
#data 0xC745D246
#data 0xE034F308
#data 0xF1E6F228
#data 0xF125F230
#data 0x8B0c

loc_8C0CAE9A:
#data 0x907f
#data 0x222802Ed
#data 0xD3428912
#data 0xF308C740
#data 0xF238E034
#data 0xF230F1E6
#data 0x8909F215

#align4
loc_8C0CAEB4:
#data 0x64E384E7
#data 0xE615D33d
#data 0x80E77001
#data 0x4F26E517
#data 0x6EF6432b

#align4
loc_8C0CAEC8:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0CAECE:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0CAFB4,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r4,r14
mov.w @(0x1C,r14),r0 	
add 0xFF,r0
mov.w r0,@(0x1C,r14) 	
exts.w r0,r0
tst r0,r0
bf loc_8C0CAEFc
mov.l @(loc_8C0CAFB8,pc),r2 ; r2 set to 0x8C03319e
jsr @r2
nop 	
and 0x1F,r0 	
mov.l @(loc_8C0CAFBC,pc),r3 ; r3 set to 0x8C042008
add 0x3C,r0
mov r14,r4
mov.w r0,@(0x1C,r14) 	
mov 0x1A,r5 ; r5 set to 0x1a
lds.l @r15+,pr 	
jmp @r3
mov.l @r15+,r14

loc_8C0CAEFC:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0CAF02:
mov r4,r3
mov.l @(loc_8C0CAFC0,pc),r1 ; r1 set to 0x8C15C3Dc
mov.l r4,@-r15
mov.b @(0x07,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CAF14:
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
bf/s loc_8C0CAF4c
mov 0x00,r6 ; r6 set to 0x00
mov.w @(loc_8C0CAF9C,pc),r0 ; r0 set to 0x130
mov 0x01,r2 ; r2 set to 0x01
bra loc_8C0CAF52
mov.w r2,@(r0,r14) 	

loc_8C0CAF4C:
mov.w @(loc_8C0CAF9C,pc),r0 ; r0 set to 0x130
mov 0x00,r1 ; r1 set to 0x00
mov.w r1,@(r0,r14) 	

loc_8C0CAF52:
mov.l @(loc_8C0CAFB0,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
jsr @r3
mov r14,r4
mov.l @r15,r5 ; r5 ??? bc r15 is ???, r5 ??? bc r15 is ???	
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r14

loc_8C0CAF64:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0CAFB4,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
mov r4,r14
mov.l r5,@r15
jsr @r3
mov r14,r4
mov.w @(loc_8C0CAF9E,pc),r0 ; r0 set to 0x141, r0 set to 0x141, r0 set to 0x141
mov.l @r15,r2
mov.b @(r0,r2),r3 ; r3 ??? bc r2 is ???, r3 ??? bc r2 is ???, r3 ??? bc r2 is ???	
tst r3,r3
bf loc_8C0CAF94
mov.b @(0x07,r14),r0 	
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17, r5 set to 0x17
mov r14,r4
mov 0x12,r6 ; r6 set to 0x12, r6 set to 0x12, r6 set to 0x12
add 0x01,r0 ; r0 set to 0x142, r0 set to 0x142, r0 set to 0x142
mov.b r0,@(0x07,r14) 	
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0CAFB0,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
jmp @r3
mov.l @r15+,r14

loc_8C0CAF94:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0CAF9C:
#data 0x0130

loc_8C0CAF9E:
#data 0x0141
#data 0x423AAAAa
#data 0x8C26A5A0
#data 0xC23AAAAa
#data 0x8C26A5A4

#align4
loc_8C0CAFB0:
#data bank03.loc_8c034e8c

loc_8C0CAFB4:
#data bank03.loc_8c034dee

loc_8C0CAFB8:
#data bank03.loc_8c03319e

loc_8C0CAFBC:
#data bank04.loc_8c042008

loc_8C0CAFC0:
#data bank15.loc_8c15c3Dc


loc_8C0CAFC4:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0CB0F4,pc),r3 ; r3 set to 0x8C034DEe
mov r4,r14
mov.l r5,@r15
jsr @r3
mov r14,r4
mov.w @(0x1E,r14),r0 	
add 0xFF,r0
mov.w r0,@(0x1E,r14) 	
exts.w r0,r0
tst r0,r0
bf loc_8C0CAFEc
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
bra loc_8C0CB492
mov.l @r15+,r14

loc_8C0CAFEC:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0CAFF4:
mov r4,r3
mov.l @(loc_8C0CB0F8,pc),r1 ; r1 set to 0x8C15C3E8
mov.l r4,@-r15
mov.b @(0x07,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CB006:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b @(0x07,r14),r0 	
mov 0x38,r5 ; r5 set to 0x38
add 0x01,r0
mov.b r0,@(0x07,r14) 	
bsr loc_8C0CB46a
mov r13,r4
mov 0x34,r0 ; r0 set to 0x34
fldi0 fr3
fmov.s @(r0,r14),fr4
fldi1 fr5
fsub fr0,fr4
fneg fr5
fcmp/gt fr4,fr3
bt/s loc_8C0CB034
mov 0x00,r4 ; r4 set to 0x00
mov.w @(loc_8C0CB0F0,pc),r0 ; r0 set to 0x130
bra loc_8C0CB03c
mov.w r4,@(r0,r14) 	

loc_8C0CB034:
fmul fr5,fr4
mov.w @(loc_8C0CB0F0,pc),r0 ; r0 set to 0x130
mov 0x01,r2 ; r2 set to 0x01
mov.w r2,@(r0,r14) 	

loc_8C0CB03C:
mova @(loc_8C0CB0FC,pc),r0  ; r0 set to 0x8C0CB0FC, r0 init to 0x8C0CB0Fc
fmov.s @r0,fr3
fcmp/gt fr4,fr3
bt loc_8C0CB05a
mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
mov.b r0,@(0x06,r14) 	
mov r4,r0 ; r0 ??? bc r4 is ???, r0 ??? bc r4 is ???	
nop 	
mov r13,r5
mov.b r0,@(0x07,r14) 	
lds.l @r15+,pr 	
mov r14,r4
mov.l @r15+,r13
bra loc_8C0CB126
mov.l @r15+,r14

loc_8C0CB05A:
mov.w @(loc_8C0CB0F0,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
mov.w @(r0,r13),r2
cmp/eq r3,r2
bf loc_8C0CB06a
mova @(loc_8C0CB100,pc),r0  ; r0 set to 0x8C0CB100
bra loc_8C0CB06e
fmov.s @r0,fr3

loc_8C0CB06A:
#data 0xC726
#data 0xF308

loc_8C0CB06E:
#data 0xE05c
#data 0xE068FE37
#data 0xFE37F38d
#data 0x03ED903a
#data 0x89032338
#data 0xF3E6E05c
#data 0xFE37F352

#align4
loc_8C0CB088:
#data 0x84E69333
#data 0x633233Ec
#data 0x3030600c
#data 0xD31C8904
#data 0xE60CE517
#data 0x64E3430b

#align4
loc_8C0CB0A0:
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6A000


loc_8C0CB0AC:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0CB0F4,pc),r3 ; r3 set to 0x8C034DEe
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
bf loc_8C0CB10c
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
bra loc_8C0CB492
mov.l @r15+,r14

loc_8C0CB0F0:
#data 0x0130
#data 0x00Cc

#align4
loc_8C0CB0F4:
#data bank03.loc_8c034dee

loc_8C0CB0F8:
#data bank15.loc_8c15c3E8

loc_8C0CB0FC:
#data 0x42BAAAAa

#align4
loc_8C0CB100:
#data 0xC0D55555
#data 0xC0A00000

#align4
loc_8C0CB108:
#data bank03.loc_8c034e8c


loc_8C0CB10C:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0CB114:
mov r4,r3
mov.l @(loc_8C0CB248,pc),r1 ; r1 set to 0x8C15C3F0
mov.l r4,@-r15
mov.b @(0x07,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CB126:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l r5,@r15
mov.b @(0x07,r14),r0 	
mov 0x38,r5 ; r5 set to 0x38
add 0x01,r0
mov.b r0,@(0x07,r14) 	
bsr loc_8C0CB46a
mov.l @r15,r4
mov 0x34,r0 ; r0 set to 0x34
fldi0 fr2
fmov.s @(r0,r14),fr3
fsub fr0,fr3
fcmp/gt fr3,fr2
bt loc_8C0CB154
mov.w @(loc_8C0CB23C,pc),r0 ; r0 set to 0x130
mov 0x00,r2 ; r2 set to 0x00
mov.w r2,@(r0,r14) 	
mova @(loc_8C0CB24C,pc),r0  ; r0 set to 0x8C0CB24c
bra loc_8C0CB15e
fmov.s @r0,fr3

#align4
loc_8C0CB154:
#data 0xE2019072
#data 0xC73D0E25
#data 0xF308

loc_8C0CB15E:
#data 0xE05c
#data 0xFE37936d
#data 0xF38DE068
#data 0xFE3733Ec
#data 0x633284E6
#data 0x3030600c
#data 0xD3378904
#data 0xE60DE517
#data 0x64E3430b

#align4
loc_8C0CB180:
#data 0x64E365F2
#data 0x4F267F04
#data 0x6EF6


loc_8C0CB18A:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0CB258,pc),r3 ; r3 set to 0x8C034DEe
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
bf loc_8C0CB1Ce
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
bra loc_8C0CB492
mov.l @r15+,r14

loc_8C0CB1CE:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0CB1D6:
mov r4,r3
mov.l @(loc_8C0CB25C,pc),r1 ; r1 set to 0x8C15C3F8
mov.l r4,@-r15
mov.b @(0x07,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CB1E8:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b @(0x07,r14),r0 	
mov 0x17,r5 ; r5 set to 0x17
add 0x01,r0
mov.b r0,@(0x07,r14) 	
mov.w @(loc_8C0CB23C,pc),r0 ; r0 set to 0x130
mov.w @(r0,r13),r3
mov.w r3,@(r0,r14) 	
mov.w @(loc_8C0CB240,pc),r0 ; r0 set to 0x1D3
mov.l @(loc_8C0CB254,pc),r3 ; r3 set to 0x8C034E8c
mov.b @(r0,r13),r6
add 0x04,r6
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0CB216:
mov.l r14,@-r15
mov.w @(loc_8C0CB242,pc),r0 ; r0 set to 0x1D0, r0 set to 0x1D0
mov.l r13,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???, r0 ??? bc r13 is ???	
extu.b r0,r0
cmp/eq 0x1D,r0 	
bf/s loc_8C0CB296
mov r4,r14
mov.w @(loc_8C0CB244,pc),r0 ; r0 set to 0x1E9, r0 set to 0x1E9
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???, r0 ??? bc r13 is ???	
extu.b r0,r0
cmp/eq 0x05,r0 	
bt loc_8C0CB260
cmp/eq 0x04,r0 	
bt loc_8C0CB278
bra loc_8C0CB2F2
nop 	

loc_8C0CB23C:
#data 0x0130
#data 0x00Cc

loc_8C0CB240:
#data 0x01D3

loc_8C0CB242:
#data 0x01D0

loc_8C0CB244:
#data 0x01E9
#data 0x0000

#align4
loc_8C0CB248:
#data bank15.loc_8c15c3F0

loc_8C0CB24C:
#data 0xC0FD5555
#data 0x40FD5555

#align4
loc_8C0CB254:
#data bank03.loc_8c034e8c

loc_8C0CB258:
#data bank03.loc_8c034dee

loc_8C0CB25C:
#data bank15.loc_8c15c3F8


loc_8C0CB260:
mov.w @(loc_8C0CB36C,pc),r1 ; r1 set to 0xCc
mov.b @(0x06,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
extu.b r0,r0
mov.l r0,@r1
mov.w @(loc_8C0CB36E,pc),r1 ; r1 set to 0xD0
mov.b @(0x07,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
extu.b r0,r0
mov.l r0,@r1
bra loc_8C0CB28e
mov 0x0F,r0

#align4
loc_8C0CB278:
#data 0x84E69178
#data 0x600C31Ec
#data 0x91742102
#data 0x31EC84E7
#data 0x2102600c
#data 0xE011


loc_8C0CB28E:
mov.b r0,@(0x06,r14) 	
mov 0x00,r0 ; r0 set to 0x00
bra loc_8C0CB2F2
mov.b r0,@(0x07,r14) 	

loc_8C0CB296:
mov.l @(loc_8C0CB378,pc),r2 ; r2 set to 0x8C034DEe
jsr @r2
mov r14,r4
mov.w @(loc_8C0CB370,pc),r0 ; r0 set to 0x141
mov.b @(r0,r14),r3
tst r3,r3
bf loc_8C0CB2F2
mov.b @(0x07,r14),r0 	
add 0x01,r0 ; r0 set to 0x142
mov.b r0,@(0x07,r14) 	
mov.w @(loc_8C0CB372,pc),r0 ; r0 set to 0x1D3
mov.b @(r0,r13),r3
tst r3,r3
bf/s loc_8C0CB2Ba
fldi0 fr4
mova @(loc_8C0CB37C,pc),r0  ; r0 set to 0x8C0CB37c
bra loc_8C0CB2C4
fmov.s @r0,fr3

loc_8C0CB2BA:
mov.b @(r0,r13),r0
cmp/eq 0x01,r0 	
bf loc_8C0CB2Ca
mova @(loc_8C0CB380,pc),r0  ; r0 set to 0x8C0CB380
fmov.s @r0,fr3

loc_8C0CB2C4:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
bra loc_8C0CB2Ce
fmov.s fr3,@(r0,r14) 	

loc_8C0CB2CA:
#data 0xE05c
#data 0xFE47

loc_8C0CB2CE:
#data 0x9051
#data 0x233803Ed
#data 0xE05C8903
#data 0xF34DF3E6
#data 0xFE37

loc_8C0CB2DE:
#data 0xE068
#data 0xC728FE47
#data 0xE060F308
#data 0xC727FE37
#data 0xE06CF308
#data 0xFE37


loc_8C0CB2F2:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0CB2FA:
#data 0x2FE6
#data 0x7FFC4F22
#data 0x6E43E15c
#data 0x2F5231Ec
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
#data 0xF39DF230
#data 0x63F2FE27
#data 0xE060F330
#data 0xF235F236
#data 0x84E7890a
#data 0xD30FE517
#data 0x80E77001
#data 0x66F2900d
#data 0x7607066c
#data 0x64E3430b

#align4
loc_8C0CB360:
#data 0x7F0464E3
#data 0xD2044F26
#data 0x6EF6422b

loc_8C0CB36C:
#data 0x00Cc

loc_8C0CB36E:
#data 0x00D0

loc_8C0CB370:
#data 0x0141

loc_8C0CB372:
#data 0x01D3
#data 0x00000130

#align4
loc_8C0CB378:
#data bank03.loc_8c034dee

loc_8C0CB37C:
#data 0xC0A00000

#align4
loc_8C0CB380:
#data 0x40A00000
#data 0x42092492
#data 0xBF4DB6Db

#align4
loc_8C0CB38C:
#data bank03.loc_8c034e8c

loc_8C0CB390:
#data 0xE15C2FE6
#data 0x31EC6E43
#data 0x2FD6E034
#data 0xF3184F22
#data 0xF2E6E168
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xE160F318
#data 0x31ECF2E6
#data 0xFE27F230
#data 0xF318E038
#data 0xF2E6E16c
#data 0xF23031Ec
#data 0xE060FE27
#data 0xF2E6F318
#data 0xFE27F230
#data 0xF308C744
#data 0xF2E6E060
#data 0x8D03F235
#data 0xE06C6D53
#data 0xFE27F28d

#align4
loc_8C0CB3E4:
#data 0xF3D69076
#data 0xF2E6E038
#data 0x890DF235
#data 0xE51784E7
#data 0x7001D33c
#data 0x906B80E7
#data 0xE038F3D6
#data 0x9068FE37
#data 0x760A06Dc
#data 0x64E3430b

#align4
loc_8C0CB40C:
#data 0xD2374F26
#data 0x6DF664E3
#data 0x6EF6422b


loc_8C0CB418:
sts.l pr,@-r15
add 0xF8,r15
mov.l @(loc_8C0CB4EC,pc),r3 ; r3 set to 0x8C034DEe
mov.l r4,@r15
mov.l r5,@(0x04,r15) 	
jsr @r3
mov.l @r15,r4
exts.b r0,r0
cmp/pz r0
bt loc_8C0CB436
mov.l @r15,r4
mov.l @(0x04,r15),r5
add 0x08,r15
bra loc_8C0CB492
lds.l @r15+,pr 	

loc_8C0CB436:
add 0x08,r15
lds.l @r15+,pr 	
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0CB43E:
mov.b @(0x04,r4),r0 	
mov 0x00,r5 ; r5 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0CB4D8,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r4) 	
rts 	
mov.b r5,@r4
;-------------------------------------------------------------------------------

loc_8C0CB44E:
mov.l @(loc_8C0CB4F0,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

#align4
loc_8C0CB454:
#data 0x655FE301
#data 0x435C644f
#data 0x89012348
#data 0xE001000b
;-------------------------------------------------------------------------------

#align4
loc_8C0CB464:
#data 0x000BE000
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0CB46A:
exts.w r5,r5
lds r5,fpul 	
mova @(loc_8C0CB4F4,pc),r0  ; r0 init to 0x8C0CB4F4
fmov.s @r0,fr2
mov.w @(loc_8C0CB4DA,pc),r0 ; r0 set to 0x130
float fpul,fr3
mov.w @(r0,r4),r3
tst r3,r3
fmov fr3,fr4
bf/s loc_8C0CB488
fmul fr2,fr4
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r4),fr0 ; r0 ??? bc r4 is ???	
rts 	
fadd fr4,fr0
;-------------------------------------------------------------------------------

loc_8C0CB488:
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r4),fr0 ; r0 ??? bc r4 is ???	
fsub fr4,fr0
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0CB492:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov 0x04,r0 ; r0 set to 0x04
mov r4,r14
mov.w r0,@(0x1E,r14) 	
mov r5,r13
mov.w @(loc_8C0CB4DC,pc),r0 ; r0 set to 0x1D0
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
extu.b r0,r0
cmp/eq 0x1D,r0 	
bf/s loc_8C0CB526
mov 0x00,r12 ; r12 set to 0x00
mov.w @(loc_8C0CB4DE,pc),r0 ; r0 set to 0x1E9
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
extu.b r0,r0
cmp/eq 0x05,r0 	
bf loc_8C0CB4F8
mov.w @(loc_8C0CB4E0,pc),r1 ; r1 set to 0xCc
mov.b @(0x06,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
extu.b r0,r0
mov.l r0,@r1
mov.w @(loc_8C0CB4E2,pc),r1 ; r1 set to 0xD0
mov.b @(0x07,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
extu.b r0,r0
mov.l r0,@r1
bra loc_8C0CB642
mov 0x0F,r0
#data 0x01D3041c

loc_8C0CB4D8:
#data 0x012c

loc_8C0CB4DA:
#data 0x0130

loc_8C0CB4DC:
#data 0x01D0

loc_8C0CB4DE:
#data 0x01E9

loc_8C0CB4E0:
#data 0x00Cc

loc_8C0CB4E2:
#data 0x00D0
#data 0xC19A4924

#align4
loc_8C0CB4E8:
#data bank03.loc_8c034e8c

loc_8C0CB4EC:
#data bank03.loc_8c034dee

loc_8C0CB4F0:
#data bank04.loc_8c0450C0

loc_8C0CB4F4:
#data 0x3FD55555


loc_8C0CB4F8:
mov.w @(loc_8C0CB5D8,pc),r0 ; r0 set to 0x1D0
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
extu.b r0,r0
cmp/eq 0x1D,r0 	
bf loc_8C0CB526
mov.w @(loc_8C0CB5DA,pc),r0 ; r0 set to 0x1E9
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
extu.b r0,r0
cmp/eq 0x04,r0 	
bf loc_8C0CB526
mov.w @(loc_8C0CB5DC,pc),r1 ; r1 set to 0xCc
mov.b @(0x06,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
extu.b r0,r0
mov.l r0,@r1
mov.w @(loc_8C0CB5DE,pc),r1 ; r1 set to 0xD0
mov.b @(0x07,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
extu.b r0,r0
mov.l r0,@r1
mov 0x11,r0 ; r0 set to 0x11
bra loc_8C0CB6Fc
nop 	

loc_8C0CB526:
#data 0x905b
#data 0x222802Dc
#data 0x90588903
#data 0x233803Dc
#data 0x890d

loc_8C0CB536:
#data 0xD32c
#data 0x643084D2
#data 0xBF89650c
#data 0x2008644c
#data 0xD3298911
#data 0x6230E105
#data 0x3213622c
#data 0x8B0b

loc_8C0CB552:
#data 0x9143
#data 0x31EC84E6
#data 0x2102600c
#data 0x84E7913f
#data 0x600C31Ec
#data 0xA0C92102
#data 0xE001

loc_8C0CB56A:
#data 0x9035
#data 0x600C00Dc
#data 0x8B0F881c
#data 0x02DC9036
#data 0x8B0B2228
#data 0x84E6912e
#data 0x600C31Ec
#data 0x912A2102
#data 0x31EC84E7
#data 0x2102600c
#data 0xE006A0B4

#align4
loc_8C0CB594:
#data 0x420BD216
#data 0x200864E3
#data 0x911D8B0b
#data 0x31EC84E6
#data 0x2102600c
#data 0x84E79119
#data 0x600C31Ec
#data 0xA0A32102
#data 0xE004

loc_8C0CB5B6:
#data 0x9016
#data 0x03DDE203
#data 0x8B193323
#data 0x84E6910c
#data 0x600C31Ec
#data 0x91082102
#data 0x31EC84E7
#data 0x2102600c
#data 0xE010A092

loc_8C0CB5D8:
#data 0x01D0

loc_8C0CB5DA:
#data 0x01E9

loc_8C0CB5DC:
#data 0x00Cc

loc_8C0CB5DE:
#data 0x00D0
#data 0x02550411
#data 0x026C0256
#data 0x8C289628
#data 0x8C2895F0

#align4
loc_8C0CB5F0:
#data bank03.loc_8c03340c

loc_8C0CB5F4:
#data 0x00DC9067
#data 0x8815600c
#data 0x90638B10
#data 0x600C00Dc
#data 0x8B0B8803
#data 0x84E6915f
#data 0x600C31Ec
#data 0x915B2102
#data 0x31EC84E7
#data 0x2102600c
#data 0xE00AA06e

#align4
loc_8C0CB620:
#data 0x92559055
#data 0x633D03Dd
#data 0x8B0C3320
#data 0x84E6914d
#data 0x600C31Ec
#data 0x91492102
#data 0x31EC84E7
#data 0x2102600c
#data 0xE00e


loc_8C0CB642:
bra loc_8C0CB796
mov.b r0,@(0x06,r14) 	

loc_8C0CB646:
#data 0x9044
#data 0x222802De
#data 0x913C890c
#data 0x31EC84E6
#data 0x2102600c
#data 0x84E79138
#data 0x600C31Ec
#data 0xE0122102
#data 0x80E6A097

#align4
loc_8C0CB668:
#data 0x00DC902d
#data 0x8816600c
#data 0xE40C8F34
#data 0x84E69129
#data 0x600C31Ec
#data 0x91252102
#data 0x31EC84E7
#data 0x2102600c
#data 0x00DCE020
#data 0x8800600c
#data 0x88028915
#data 0x88058913
#data 0x88068911
#data 0x8807890f
#data 0x8808890d
#data 0x8809890d
#data 0x880A890b
#data 0x88018909
#data 0x88038910
#data 0x8804890e
#data 0xA06C890c
#data 0x0009

loc_8C0CB6BE:
#data 0xA00b
#data 0xE008

loc_8C0CB6C2:
#data 0xA009
#data 0x01D0E00d
#data 0x00CC01E9
#data 0x015800D0
#data 0x02E41803

#align4
loc_8C0CB6D4:
#data 0x00096043

#align4
loc_8C0CB6D8:
#data 0x80E6A05d

#align4
loc_8C0CB6DC:
#data 0x03DD9064
#data 0x890D4315
#data 0x84E69161
#data 0x600C31Ec
#data 0x915D2102
#data 0x31EC84E7
#data 0x2102600c
#data 0x00096043


loc_8C0CB6FC:
bra loc_8C0CB796
mov.b r0,@(0x06,r14) 	

#align4
loc_8C0CB700:
#data 0x00DC9055
#data 0x880E600c
#data 0xC7298B11
#data 0xE060F308
#data 0xF235F2D6
#data 0x91488B0b
#data 0x31EC84E6
#data 0x2102600c
#data 0x84E79144
#data 0x600C31Ec
#data 0xAFE72102
#data 0xE009

loc_8C0CB72E:
#data 0xE538
#data 0xBE9A6BF3
#data 0xE03464D3
#data 0xE038F3E6
#data 0xFB0AF031
#data 0xE004F3D6
#data 0xC71BFB37
#data 0xE038F308
#data 0xE004F2E6
#data 0xF230F1B6
#data 0x8D01F215
#data 0xEC01F38d

#align4
loc_8C0CB75C:
#data 0xF325F2B8
#data 0xF1B88B04
#data 0xF24DF29d
#data 0xFB1AF122

#align4
loc_8C0CB76C:
#data 0xF2B8C712
#data 0xF325F308
#data 0x84E68D01
#data 0x7C02

loc_8C0CB77A:
#data 0x9116
#data 0x31EC600c
#data 0x91132102
#data 0x31EC84E7
#data 0x2102600c
#data 0xD10B60Cc
#data 0x001C4000
#data 0x80E6


loc_8C0CB796:
mov 0x00,r0 ; r0 set to 0x00
mov.b r0,@(0x07,r14) 	
add 0x08,r15
lds.l @r15+,pr 	
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x00CC0420
#data 0x01D000D0
#data 0x41892492
#data 0x42CDB6Db
#data 0x42855555

#align4
loc_8C0CB7BC:
#data bank15.loc_8c15c40c
#data 0x7FF84F22
#data 0xE600D354
#data 0x2F501F41
#data 0x430BE503
#data 0x20086463
#data 0x64038D07
#data 0xE020D350
#data 0x52F11434
#data 0x63F01426
#data 0x7F080434
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0CB7EE:
mov r4,r3
mov.l @(loc_8C0CB920,pc),r1 ; r1 set to 0x8C15C48c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CB800:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0CB906,pc),r3 ; r3 set to 0x1004
mov.w @(loc_8C0CB908,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0CB908,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(0x18,r14),r4
mov.b r0,@(0x04,r14) 	
mov 0x26,r0 ; r0 set to 0x26
mov.w r3,@(r0,r14) 	
mov.w @(loc_8C0CB90A,pc),r0 ; r0 set to 0xC0
mov.l @(loc_8C0CB924,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C0CB90C,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0CB90E,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CB928,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.l @(loc_8C0CB92C,pc),r1 ; r1 set to 0x8C15C414
mov.b @(r0,r4),r2
mov 0x00,r3 ; r3 set to 0x00
mov.l @(loc_8C0CB930,pc),r6 ; r6 set to 0x8C26A518
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0CB90C,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
add 0x04,r0 ; r0 set to 0x130
mov.w @(r0,r14),r2
mov 0x01,r3 ; r3 set to 0x01
xor r3,r2
mov.w r2,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r5
mov 0x24,r0 ; r0 set to 0x24
extu.b r5,r5
mov r5,r2
shll r5
add r2,r5
shll2 r5
add r1,r5
mov.b @r5,r3 ; r3 ??? bc r5 is ???	
mov.b r3,@(r0,r14) 	
mov.w @(0x08,r5),r0 	
mov.w r0,@(0x1C,r14) 	
mov.w @(0x0A,r5),r0 	
mov.w r0,@(0x1E,r14) 	
mov.w @(loc_8C0CB910,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bf loc_8C0CB8A6
mova @(loc_8C0CB934,pc),r0  ; r0 set to 0x8C0CB934
fmov.s @r0,fr3
mov.w @(loc_8C0CB912,pc),r0 ; r0 set to 0x8c
bra loc_8C0CB8Ac
nop 	

loc_8C0CB8A6:
#data 0xC724
#data 0x9033F308

#align4
loc_8C0CB8AC:
#data 0xE034F266
#data 0xFE27F230
#data 0xF346902f
#data 0xFE37E038
#data 0xF356E004
#data 0xFE37E05c
#data 0x03ED9024
#data 0x8D042338
#data 0xE05CF48d
#data 0xF34DF3E6
#data 0xFE37

loc_8C0CB8D6:
#data 0xE068
#data 0xFE47D318
#data 0xFE47E060
#data 0xE517E06c
#data 0xE614FE47
#data 0x64E3430b
#data 0x64E34F26
#data 0x6EF6


loc_8C0CB8F2:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x05,r14),r0 	
mov.l @(loc_8C0CB940,pc),r1 ; r1 set to 0x8C15C49c
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0CB906:
#data 0x1004

loc_8C0CB908:
#data 0x00Dc

loc_8C0CB90A:
#data 0x00C0

loc_8C0CB90C:
#data 0x012c

loc_8C0CB90E:
#data 0x01A3

loc_8C0CB910:
#data 0x0130

loc_8C0CB912:
#data 0x008c
#data 0x041C0088

#align4
loc_8C0CB918:
#data bank04.loc_8c044F12

loc_8C0CB91C:
#data loc_8c0cB7Ee

loc_8C0CB920:
#data bank15.loc_8c15c48c

loc_8C0CB924:
#data bank12.loc_8c129560

loc_8C0CB928:
#data bank12.loc_8c1294C8

loc_8C0CB92C:
#data bank15.loc_8c15c414

loc_8C0CB930:
#data 0x8C26A518

#align4
loc_8C0CB934:
#data 0x42555555
#data 0xC2555555

#align4
loc_8C0CB93C:
#data bank03.loc_8c034e8c

loc_8C0CB940:
#data bank15.loc_8c15c49c


loc_8C0CB944:
mov.w @(loc_8C0CB9DC,pc),r0 ; r0 set to 0x1D0
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x16,r0 	
bt loc_8C0CB95a
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x04,r4) 	
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8C0CB9DE,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0CB95A:
#data 0x854e
#data 0x814E70Ff
#data 0x2008600f
#data 0x84458B05
#data 0x7001E301
#data 0x90368045
#data 0x0434

loc_8C0CB972:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0CB976:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0CB9E0,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r4,r14
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
bf loc_8C0CB9Bc
mov.b @(0x05,r14),r0 	
mov r14,r4
mov.l @(loc_8C0CB9E4,pc),r3 ; r3 set to 0x8C034E8c
mov 0x15,r6 ; r6 set to 0x15
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov 0x17,r5 ; r5 set to 0x17
lds.l @r15+,pr 	
jmp @r3
mov.l @r15+,r14

loc_8C0CB9BC:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0CB9C2:
mov.l @(loc_8C0CB9E0,pc),r3 ; r3 set to 0x8C034DEe
jmp @r3
nop 	

loc_8C0CB9C8:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0CB9DE,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0CB9D6:
mov.l @(loc_8C0CB9E8,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0CB9DC:
#data 0x01D0

loc_8C0CB9DE:
#data 0x012c

#align4
loc_8C0CB9E0:
#data bank03.loc_8c034dee

loc_8C0CB9E4:
#data bank03.loc_8c034e8c

loc_8C0CB9E8:
#data bank04.loc_8c0450C0


loc_8C0CB9EC:
mov.l @(loc_8C0CBB0C,pc),r3 ; r3 set to 0x8C26A908
mov.l @(loc_8C0CBB10,pc),r2 ; r2 set to 0x8C15C4Cc
mov.l @r3,r0
mov.l @r2,r1
mov.l @r0,r3 ; r3 ??? bc r0 is ???	
mov.w @(0x1C,r4),r0 	
shll2 r0
mov.l @(r0,r1),r0
shll2 r0
mov.l @(r0,r3),r1
mov.w @(loc_8C0CBB02,pc),r0 ; r0 set to 0x84
mov.l @(loc_8C0CBB14,pc),r3 ; r3 set to 0x8C15C4D8
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
bf loc_8C0CBA36
mov.l @(loc_8C0CBB18,pc),r0 ; r0 set to 0x8C0450C0
jmp @r0
nop 	

loc_8C0CBA36:
rts 	
nop 	
;-------------------------------------------------------------------------------
#data 0x2FE6
#data 0x4F22FFCb
#data 0xD3367FF0
#data 0x2F42E507
#data 0xE6011F61
#data 0x430B1F72
#data 0x2008E400
#data 0x6E038D50
#data 0xE3019054
#data 0x61E3D230
#data 0x70A00E34
#data 0x7134934f
#data 0x0E361E24
#data 0x62F2D32d
#data 0xE00C430b
#data 0x51F1E23c
#data 0x4108D32b
#data 0xD32E313c
#data 0x50F21F13
#data 0x0027FC18
#data 0xD22CC728
#data 0xC728F208
#data 0xC728F108
#data 0xF008041a
#data 0xF32D445a
#data 0xF313F322
#data 0xF33DF300
#data 0x2439045a
#data 0x2F42420b
#data 0xE05CFC02
#data 0x53F3FEC7
#data 0xD322FC38
#data 0x64F2430b
#data 0xD321FC02
#data 0x430BE064
#data 0x931FFEC7
#data 0x8F024011
#data 0xA005E148
#data 0x60072039
#data 0x20397001
#data 0x70016007
#data 0x210231Ec
#data 0x52F161E3
#data 0x63237150
#data 0x323C4200
#data 0x4208D316
#data 0xD30C323c
#data 0xE00C430b
#data 0x4F267F10
#data 0x000BFCF9
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0CBB02:
#data 0x0084
#data 0x0109012c
#data 0x00003FFf

#align4
loc_8C0CBB0C:
#data 0x8C26A908

#align4
loc_8C0CBB10:
#data bank15.loc_8c15c4Cc

loc_8C0CBB14:
#data bank15.loc_8c15c4D8

loc_8C0CBB18:
#data bank04.loc_8c0450C0

loc_8C0CBB1C:
#data bank04.loc_8c044F12

loc_8C0CBB20:
#data loc_8c0cB9Ec

loc_8C0CBB24:
#data bank12.loc_8c1294C8

loc_8C0CBB28:
#data bank15.loc_8c15c4F0
#data 0x47800000
#data 0x43B40000
#data 0x3F000000
#data 0x0000FFFf

#align4
loc_8C0CBB3C:
#data bank11.loc_8c11E860

loc_8C0CBB40:
#data bank11.loc_8c11E2E0

loc_8C0CBB44:
#data bank11.loc_8c11e730

loc_8C0CBB48:
#data bank15.loc_8c15c4Fc
#data 0x2FD62FE6
#data 0x4F222FC6
#data 0xE3027FF8
#data 0x6C6E1F41
#data 0x8D0A3C37
#data 0xEE002F50
#data 0x65F0ED06
#data 0x67E366C3
#data 0x54F1BF65
#data 0x3ED37E01
#data 0x7F088BF7
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x00006EF6

#align4
loc_8C0CBB84:
#data 0x7FF44F22
#data 0x1F42D34c
#data 0xE5031F51
#data 0xE6002F60
#data 0x6463430b
#data 0x8D092008
#data 0xD3486403
#data 0x1434E020
#data 0x142652F2
#data 0x143553F1
#data 0x042462F0

#align4
loc_8C0CBBB0:
#data 0x4F267F0c
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0CBBB8:
mov r4,r3
mov.l @(loc_8C0CBCC4,pc),r1 ; r1 set to 0x8C15C544
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CBBCA:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
fmov.s fr12,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.w @(loc_8C0CBCB0,pc),r3 ; r3 set to 0x1007
add 0x01,r0
mov.w @(loc_8C0CBCB2,pc),r1 ; r1 set to 0xDc
mov.w @(loc_8C0CBCB2,pc),r2 ; r2 set to 0xDc
mov.l @(0x18,r14),r4
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(0x14,r14),r12
mov.b r0,@(0x04,r14) 	
mov 0x26,r0 ; r0 set to 0x26
mov.w r3,@(r0,r14) 	
mov.w @(loc_8C0CBCB4,pc),r0 ; r0 set to 0xC0
mov.l @(loc_8C0CBCC8,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C0CBCB6,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0CBCB8,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CBCCC,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov r15,r13
mov.b @(r0,r4),r2
mov 0x24,r1 ; r1 set to 0x24
add r14,r1 ; r1 ??? bc r14 is ???	
mov.b r2,@(r0,r14) 	
mov 0x1E,r0 ; r0 set to 0x1e
mov.w r0,@(0x1C,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r11
mov.l @(loc_8C0CBCD0,pc),r2 ; r2 set to 0x8C15C520
extu.b r11,r11
mov r11,r3 ; r3 ??? bc r11 is ???	
shll2 r3
shll r11
add r3,r11
add r2,r11
mov.b @(0x04,r11),r0 	
mov.b r0,@r1
mova @(loc_8C0CBCD4,pc),r0  ; r0 set to 0x8C0CBCD4
mov.w @r11,r3
fmov.s @r0,fr2 ; r2 ??	
lds r3,fpul 	
float fpul,fr3
fmul fr2,fr3
fmov.s fr3,@r13
mov.w @(0x02,r11),r0 	
mov r0,r3 ; r3 set to 0x8C0CBCD4
lds r3,fpul 	
mova @(loc_8C0CBCD8,pc),r0  ; r0 set to 0x8C0CBCD8
fmov.s @r0,fr1
float fpul,fr3
fmul fr1,fr3 ; r3 ??? bc r1 is ???	
mov 0x04,r0 ; r0 set to 0x04
mov.l @(loc_8C0CBCDC,pc),r9 ; r9 set to 0x8C11E2E0
mov.l @(loc_8C0CBCE0,pc),r10 ; r10 set to 0x8C11E860
fmov.s fr3,@(r0,r13) 	
mov 0x48,r0 ; r0 set to 0x48
mov.l @(r0,r12),r3
mov.l r3,@(r0,r14) 	
mov.w @(loc_8C0CBCBA,pc),r0 ; r0 set to 0x130
mov.w @(r0,r12),r3
tst r3,r3
bf/s loc_8C0CBCE4
mov.w r3,@(r0,r14) 	
mov 0x48,r0 ; r0 set to 0x48
jsr @r9
mov.l @(r0,r14),r4
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r13,fr3
fmov.s @(r0,r12),fr2
mov 0x48,r0 ; r0 set to 0x48
fmac fr0,fr3,fr2
fmov fr2,fr12
jsr @r10
mov.l @(r0,r14),r4
mov 0x04,r0 ; r0 set to 0x04
fmov.s @(r0,r13),fr3
fmul fr0,fr3
bra loc_8C0CBD02
fsub fr3,fr12

loc_8C0CBCB0:
#data 0x1007

loc_8C0CBCB2:
#data 0x00Dc

loc_8C0CBCB4:
#data 0x00C0

loc_8C0CBCB6:
#data 0x012c

loc_8C0CBCB8:
#data 0x01A3

loc_8C0CBCBA:
#data 0x0130

#align4
loc_8C0CBCBC:
#data bank04.loc_8c044F12

loc_8C0CBCC0:
#data loc_8c0cBBB8

loc_8C0CBCC4:
#data bank15.loc_8c15c544

loc_8C0CBCC8:
#data bank12.loc_8c129560

loc_8C0CBCCC:
#data bank12.loc_8c1294C8

loc_8C0CBCD0:
#data bank15.loc_8c15c520

loc_8C0CBCD4:
#data 0x3FD55555

#align4
loc_8C0CBCD8:
#data 0x40092492

#align4
loc_8C0CBCDC:
#data bank11.loc_8c11E2E0

loc_8C0CBCE0:
#data bank11.loc_8c11E860


loc_8C0CBCE4:
mov 0x48,r0 ; r0 set to 0x48
jsr @r9
mov.l @(r0,r14),r4
fmov.s @r13,fr3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r12),fr2
mov 0x48,r0 ; r0 set to 0x48
fmul fr0,fr3
fsub fr3,fr2
fmov fr2,fr12
jsr @r10
mov.l @(r0,r14),r4
mov 0x04,r0 ; r0 set to 0x04
fmov.s @(r0,r13),fr3
fmac fr0,fr3,fr12

loc_8C0CBD02:
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s fr12,@(r0,r14) 	
mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48
jsr @r10
mov.l @(r0,r14),r4
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @r13,fr3
fmov.s @(r0,r12),fr2
mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48
fmac fr0,fr3,fr2
fmov fr2,fr12
jsr @r9
mov.l @(r0,r14),r4
mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
mov.l @(loc_8C0CBDF4,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
fmac fr0,fr3,fr12
fmov.s fr12,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r14),fr2
fmov.s @(r0,r12),fr3
mova @(loc_8C0CBDE8,pc),r0  ; r0 set to 0x8C0CBDE8, r0 set to 0x8C0CBDE8
fsub fr3,fr2
fmov.s @r0,fr3
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fdiv fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fldi0 fr2
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0CBDEC,pc),r0  ; r0 set to 0x8C0CBDEC, r0 set to 0x8C0CBDEc
fmov.s @r0,fr2
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0CBDF0,pc),r0  ; r0 set to 0x8C0CBDF0, r0 set to 0x8C0CBDF0
fmov.s @r0,fr2
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr2,@(r0,r14) 	
mov.b @(0x05,r11),r0 	
mov r0,r6 ; r6 set to 0x6C, r6 set to 0x6c
jsr @r3
mov r14,r4
bsr loc_8C0CBD72
mov r14,r4
add 0x08,r15
lds.l @r15+,pr 	
fmov.s @r15+,fr12
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0CBD72:
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
#data 0x84448B02
#data 0x80447001

#align4
loc_8C0CBDBC:
#data 0xE30A854e
#data 0x89043037
#data 0x854E910f
#data 0xC901314c
#data 0x2100

loc_8C0CBDCE:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0CBDD2:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0CBDE6,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0CBDE0:
mov.l @(loc_8C0CBDF8,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0CBDE6:
#data 0x012c

#align4
loc_8C0CBDE8:
#data 0x42000000

#align4
loc_8C0CBDEC:
#data 0x41092492

#align4
loc_8C0CBDF0:
#data 0xBF4DB6Db

#align4
loc_8C0CBDF4:
#data bank03.loc_8c034C38

loc_8C0CBDF8:
#data bank04.loc_8c0450C0
#data 0x7FF44F22
#data 0x60531F42
#data 0xD3520009
#data 0x80F4E503
#data 0xE6002F60
#data 0x6463430b
#data 0x8D0E2008
#data 0xD34E6403
#data 0x314CE120
#data 0x52F21434
#data 0x84F41426
#data 0x2100928a
#data 0x63F0E021
#data 0xE0260434
#data 0x7F0C0425
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0CBE3E:
#data 0x4F22
#data 0x2F427FF4
#data 0x00096053
#data 0x606380F8
#data 0xD3400009
#data 0x80F4E503
#data 0x430BE600
#data 0x20086463
#data 0x64038D12
#data 0xE120D33c
#data 0x1434314c
#data 0x532662F2
#data 0x62F21436
#data 0x14259366
#data 0x84F8E221
#data 0x2100324c
#data 0x220084F4
#data 0x0435E026

#align4
loc_8C0CBE84:
#data 0x4F267F0c
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0CBE8C:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0CBF42,pc),r2 ; r2 set to 0x2A4
mov 0x20,r0 ; r0 set to 0x20
mov.l @(0x18,r14),r3
mov r14,r4
mov.w @(loc_8C0CBF44,pc),r1 ; r1 set to 0xCc
add r3,r2 ; r2 ??? bc r3 is ???	
mov.l @(loc_8C0CBF58,pc),r3 ; r3 set to 0x8C28C694
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l r2,@r3 ; r3 ??? bc r2 is ???	
mov.l @(loc_8C0CBF5C,pc),r2 ; r2 set to 0x8C28C698
mov.l r1,@r2 ; r2 ??? bc r1 is ???	
mov.b @(r0,r14),r3
mov.l @(loc_8C0CBF60,pc),r0 ; r0 set to 0x8C15C554
extu.b r3,r3
shll2 r3
mov.l @(r0,r3),r1
jmp @r1
mov.l @r15+,r14

loc_8C0CBEB4:
mov r4,r3
mov.l @(loc_8C0CBF64,pc),r1 ; r1 set to 0x8C15C5A4
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CBEC6:
mov.w @(loc_8C0CBF46,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0CBF68,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0CBF46,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0CBF48,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0CBF4A,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CBF6C,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x00,r2 ; r2 set to 0x00
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r2,@(r0,r4) 	
mov.w @(loc_8C0CBF4C,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r2 ; r2 ??? bc r4 is ???	
tst r2,r2
bt/s loc_8C0CBF74
mov.l @(0x18,r4),r3
mova @(loc_8C0CBF70,pc),r0  ; r0 set to 0x8C0CBF70
bra loc_8C0CBF78
fmov.s @r0,fr3
#data 0x1100

loc_8C0CBF42:
#data 0x02A4

loc_8C0CBF44:
#data 0x00Cc

loc_8C0CBF46:
#data 0x00Dc

loc_8C0CBF48:
#data 0x012c

loc_8C0CBF4A:
#data 0x01A3

loc_8C0CBF4C:
#data 0x0130
#data 0x0000

#align4
loc_8C0CBF50:
#data bank04.loc_8c044F12

loc_8C0CBF54:
#data loc_8c0cBE8c

loc_8C0CBF58:
#data 0x8C28C694

#align4
loc_8C0CBF5C:
#data 0x8C28C698

#align4
loc_8C0CBF60:
#data bank15.loc_8c15c554

loc_8C0CBF64:
#data bank15.loc_8c15c5A4

loc_8C0CBF68:
#data bank12.loc_8c129560

loc_8C0CBF6C:
#data bank12.loc_8c1294C8

loc_8C0CBF70:
#data 0x42555555


loc_8C0CBF74:
mova @(loc_8C0CC0C0,pc),r0  ; r0 init to 0x8C0CC0C0
fmov.s @r0,fr3

loc_8C0CBF78:
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fldi0 fr4
fmov.s @(r0,r3),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mova @(loc_8C0CC0C4,pc),r0  ; r0 set to 0x8C0CC0C4, r0 set to 0x8C0CC0C4
fmov.s @r0,fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr2
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
mov.w @(loc_8C0CC0BA,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r4),r3
tst r3,r3
bt loc_8C0CBFAe
mova @(loc_8C0CC0C8,pc),r0  ; r0 set to 0x8C0CC0C8, r0 set to 0x8C0CC0C8
bra loc_8C0CBFB2
fmov.s @r0,fr2

loc_8C0CBFAE:
mova @(loc_8C0CC0CC,pc),r0  ; r0 init to 0x8C0CC0Cc
fmov.s @r0,fr2

loc_8C0CBFB2:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
mov.l @(loc_8C0CC0D8,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
fmov.s fr2,@(r0,r4) 	
mova @(loc_8C0CC0D0,pc),r0  ; r0 set to 0x8C0CC0D0, r0 set to 0x8C0CC0D0
fmov.s @r0,fr3 ; r3 ??, r3 ??	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
fmov.s fr3,@(r0,r4) 	
mova @(loc_8C0CC0D4,pc),r0  ; r0 set to 0x8C0CC0D4, r0 set to 0x8C0CC0D4
fmov.s @r0,fr3
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
mov 0x00,r6 ; r6 set to 0x00, r6 set to 0x00
fmov.s fr3,@(r0,r4) 	
jmp @r3
lds.l @r15+,pr 	

loc_8C0CBFD0:
mov r4,r3
mov.l @(loc_8C0CC0DC,pc),r1 ; r1 set to 0x8C15C5B4
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CBFE2:
#data 0x2FE6
#data 0xD33E4F22
#data 0x6E43430b
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
#data 0x53E6904a
#data 0xE038F336
#data 0xF235F2E6
#data 0x84E58914
#data 0xF440F49d
#data 0x80E57001
#data 0x53E6903e
#data 0xE038F336
#data 0xE060FE37
#data 0xF343F3E6
#data 0xFE37F34d
#data 0xF3E6E05c
#data 0xFE37F343
#data 0x81EEE030

#align4
loc_8C0CC05C:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0CC062:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0CC0E0,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r4,r14
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
mov.w @(0x1C,r14),r0 	
add 0xFF,r0 ; r0 set to 0x5f
mov.w r0,@(0x1C,r14) 	
exts.w r0,r0 ; r0 ??	
tst r0,r0
bt loc_8C0CC116
mov.w @(0x1C,r14),r0 	
tst 0x04,r0 	
bt loc_8C0CC0E4
bra loc_8C0CC0E6
mov 0x01,r2

loc_8C0CC0BA:
#data 0x0130
#data 0x0000041c

#align4
loc_8C0CC0C0:
#data 0xC2555555

#align4
loc_8C0CC0C4:
#data 0x432B6DB6

#align4
loc_8C0CC0C8:
#data 0xC0A00000

#align4
loc_8C0CC0CC:
#data 0x40A00000

#align4
loc_8C0CC0D0:
#data 0x41092492

#align4
loc_8C0CC0D4:
#data 0xBF4DB6Db

#align4
loc_8C0CC0D8:
#data bank03.loc_8c034C38

loc_8C0CC0DC:
#data bank15.loc_8c15c5B4

loc_8C0CC0E0:
#data bank03.loc_8c034D8c


loc_8C0CC0E4:
mov 0x00,r2 ; r2 set to 0x00

loc_8C0CC0E6:
mov.w @(loc_8C0CC21E,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0CC220,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???	
fcmp/gt fr3,fr2
bt loc_8C0CC120
mov.w @(loc_8C0CC220,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
mov.l @(0x18,r14),r2
fmov.s @(r0,r2),fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s fr3,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fldi1 fr3
fadd fr3,fr3
fmov.s @(r0,r14),fr2
fdiv fr3,fr2
fneg fr2
fmov.s fr2,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0CC116:
lds.l @r15+,pr 	
mov.l @(loc_8C0CC228,pc),r3 ; r3 set to 0x8C0CD9D4
mov r14,r4
jmp @r3
mov.l @r15+,r14

loc_8C0CC120:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0CC126:
mov r4,r3
mov.l @(loc_8C0CC22C,pc),r1 ; r1 set to 0x8C15C5Bc
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CC138:
mov.w @(loc_8C0CC222,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0CC230,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0CC222,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0CC21E,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0CC224,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CC234,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r4) 	
mov.w @(loc_8C0CC226,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r3
tst r3,r3
bt/s loc_8C0CC1B0
mov.l @(0x18,r4),r2
mova @(loc_8C0CC238,pc),r0  ; r0 set to 0x8C0CC238
bra loc_8C0CC1B4
fmov.s @r0,fr3

loc_8C0CC1B0:
mova @(loc_8C0CC23C,pc),r0  ; r0 init to 0x8C0CC23c
fmov.s @r0,fr3

loc_8C0CC1B4:
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fldi0 fr4
fmov.s @(r0,r2),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mova @(loc_8C0CC240,pc),r0  ; r0 set to 0x8C0CC240, r0 set to 0x8C0CC240
fmov.s @r0,fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr2
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
mov.w @(loc_8C0CC226,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r4),r3
tst r3,r3
bt loc_8C0CC1Ea
mova @(loc_8C0CC244,pc),r0  ; r0 set to 0x8C0CC244, r0 set to 0x8C0CC244
bra loc_8C0CC1Ee
fmov.s @r0,fr2

loc_8C0CC1EA:
mova @(loc_8C0CC248,pc),r0  ; r0 init to 0x8C0CC248
fmov.s @r0,fr2

loc_8C0CC1EE:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
mov.l @(loc_8C0CC254,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
fmov.s fr2,@(r0,r4) 	
mova @(loc_8C0CC24C,pc),r0  ; r0 set to 0x8C0CC24C, r0 set to 0x8C0CC24c
fmov.s @r0,fr3 ; r3 ??, r3 ??	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
fmov.s fr3,@(r0,r4) 	
mova @(loc_8C0CC250,pc),r0  ; r0 set to 0x8C0CC250, r0 set to 0x8C0CC250
fmov.s @r0,fr3
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
mov 0x01,r6 ; r6 set to 0x01, r6 set to 0x01
fmov.s fr3,@(r0,r4) 	
jmp @r3
lds.l @r15+,pr 	

loc_8C0CC20C:
mov r4,r3
mov.l @(loc_8C0CC258,pc),r1 ; r1 set to 0x8C15C5Cc
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CC21E:
#data 0x012c

loc_8C0CC220:
#data 0x041c

loc_8C0CC222:
#data 0x00Dc

loc_8C0CC224:
#data 0x01A3

loc_8C0CC226:
#data 0x0130

#align4
loc_8C0CC228:
#data loc_8c0cD9D4

loc_8C0CC22C:
#data bank15.loc_8c15c5Bc

loc_8C0CC230:
#data bank12.loc_8c129560

loc_8C0CC234:
#data bank12.loc_8c1294C8

loc_8C0CC238:
#data 0x42555555

#align4
loc_8C0CC23C:
#data 0xC2555555

#align4
loc_8C0CC240:
#data 0x4311B6Db

#align4
loc_8C0CC244:
#data 0x40555555

#align4
loc_8C0CC248:
#data 0xC0555555

#align4
loc_8C0CC24C:
#data 0xC0CDB6Db

#align4
loc_8C0CC250:
#data 0xBF092492

#align4
loc_8C0CC254:
#data bank03.loc_8c034C38

loc_8C0CC258:
#data bank15.loc_8c15c5Cc

loc_8C0CC25C:
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
#data 0x5346906e
#data 0xE038F336
#data 0xF235F246
#data 0x84458910
#data 0x80457001
#data 0x53469064
#data 0xE038F336
#data 0xE060F437
#data 0xF330F39d
#data 0xF233F246
#data 0xF427F24d
#data 0x814EE030

#align4
loc_8C0CC2C4:
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0CC2C8:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0CC378,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r4,r14
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
mov.w @(0x1C,r14),r0 	
add 0xFF,r0 ; r0 set to 0x5f
mov.w r0,@(0x1C,r14) 	
exts.w r0,r0 ; r0 ??	
tst r0,r0
bt loc_8C0CC352
mov.w @(0x1C,r14),r0 	
tst 0x04,r0 	
bt loc_8C0CC320
bra loc_8C0CC322
mov 0x01,r2

loc_8C0CC320:
mov 0x00,r2 ; r2 set to 0x00

loc_8C0CC322:
mov.w @(loc_8C0CC376,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0CC374,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???	
fcmp/gt fr3,fr2
bt loc_8C0CC35c
mov.w @(loc_8C0CC374,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
mov.l @(0x18,r14),r2
fmov.s @(r0,r2),fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s fr3,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fldi1 fr3
fadd fr3,fr3
fmov.s @(r0,r14),fr2
fdiv fr3,fr2
fneg fr2
fmov.s fr2,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0CC352:
lds.l @r15+,pr 	
mov.l @(loc_8C0CC37C,pc),r3 ; r3 set to 0x8C0CD9D4
mov r14,r4
jmp @r3
mov.l @r15+,r14

loc_8C0CC35C:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0CC362:
mov r4,r3
mov.l @(loc_8C0CC380,pc),r1 ; r1 set to 0x8C15C5D4
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CC374:
#data 0x041c

loc_8C0CC376:
#data 0x012c

#align4
loc_8C0CC378:
#data bank03.loc_8c034D8c

loc_8C0CC37C:
#data loc_8c0cD9D4

loc_8C0CC380:
#data bank15.loc_8c15c5D4


loc_8C0CC384:
mov.w @(loc_8C0CC456,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0CC460,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0CC456,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0CC458,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0CC45A,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CC464,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x00,r2 ; r2 set to 0x00
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r2,@(r0,r4) 	
mov.w @(loc_8C0CC45C,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r2 ; r2 ??? bc r4 is ???	
tst r2,r2
bt/s loc_8C0CC3Fe
mov.l @(0x18,r4),r3
mova @(loc_8C0CC468,pc),r0  ; r0 set to 0x8C0CC468
bra loc_8C0CC402
fmov.s @r0,fr3

loc_8C0CC3FE:
mova @(loc_8C0CC46C,pc),r0  ; r0 init to 0x8C0CC46c
fmov.s @r0,fr3

loc_8C0CC402:
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r3),fr2
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
mov 0x02,r6 ; r6 set to 0x02, r6 set to 0x02
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mova @(loc_8C0CC470,pc),r0  ; r0 set to 0x8C0CC470, r0 set to 0x8C0CC470
fmov.s @r0,fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr2
mov.l @(loc_8C0CC474,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
jmp @r3
lds.l @r15+,pr 	

loc_8C0CC422:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0CC478,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt loc_8C0CC43c
mov.l @r15,r4
add 0x04,r15
mov.l @(loc_8C0CC47C,pc),r3 ; r3 set to 0x8C0CD9D4
jmp @r3
lds.l @r15+,pr 	

loc_8C0CC43C:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0CC444:
mov r4,r3
mov.l @(loc_8C0CC480,pc),r1 ; r1 set to 0x8C15C5E4
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CC456:
#data 0x00Dc

loc_8C0CC458:
#data 0x012c

loc_8C0CC45A:
#data 0x01A3

loc_8C0CC45C:
#data 0x0130
#data 0x0000

#align4
loc_8C0CC460:
#data bank12.loc_8c129560

loc_8C0CC464:
#data bank12.loc_8c1294C8

loc_8C0CC468:
#data 0x42AA0000

#align4
loc_8C0CC46C:
#data 0xC2AA0000

#align4
loc_8C0CC470:
#data 0x43250000

#align4
loc_8C0CC474:
#data bank03.loc_8c034C38

loc_8C0CC478:
#data bank03.loc_8c034D8c

loc_8C0CC47C:
#data loc_8c0cD9D4

loc_8C0CC480:
#data bank15.loc_8c15c5E4

loc_8C0CC484:
#data 0x6E432FE6
#data 0x4F229187
#data 0x31EC84E4
#data 0x7001D346
#data 0x908080E4
#data 0x320C52E6
#data 0x70E4430b
#data 0xE101907c
#data 0x61E30E14
#data 0x715050E6
#data 0x80E28402
#data 0x840150E6
#data 0xE05080E1
#data 0xF33653E6
#data 0xE054FE37
#data 0xF33653E6
#data 0x906AFE37
#data 0x023C53E6
#data 0x70010E24
#data 0x023C53E6
#data 0xE0300E24
#data 0x023C53E6
#data 0x52E60E24
#data 0x7250D333
#data 0xE00C430b
#data 0xE20051E6
#data 0x031CE024
#data 0xE0340E24
#data 0xD22F53E6
#data 0xFE37F336
#data 0x53E6E038
#data 0xFE37F336
#data 0x904B51E6
#data 0x001D6322
#data 0xE0212301
#data 0x233803Ec
#data 0xD3288903
#data 0x430BE54b
#data 0x64E3

loc_8C0CC51E:
#data 0xC727
#data 0xF308D327
#data 0x903C64E3
#data 0xFE37E51b
#data 0x4F26E021
#data 0x760506Ec
#data 0x6EF6432b

#align4
loc_8C0CC538:
#data 0x6E432FE6
#data 0x54E64F22
#data 0x20088445
#data 0x902D8B0d
#data 0x600C004c
#data 0x8B088815
#data 0x004C9029
#data 0x8804600c
#data 0x90258B03
#data 0x2228024c
#data 0x8B04

loc_8C0CC562:
#data 0x4F26
#data 0x64E3D317
#data 0x6EF6432b

#align4
loc_8C0CC56C:
#data 0x420BD216
#data 0x53E664E3
#data 0xF336E034
#data 0xE038FE37
#data 0xF33653E6
#data 0x4F26FE37
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0CC588:
mov r4,r3
mov.l @(loc_8C0CC5CC,pc),r1 ; r1 set to 0x8C15C5F4
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x00Dc
#data 0x01A3012c
#data 0x01080158
#data 0x01E901D0
#data 0x00000141

#align4
loc_8C0CC5AC:
#data bank12.loc_8c129560

loc_8C0CC5B0:
#data bank12.loc_8c1294C8
#data 0x8C28C698

#align4
loc_8C0CC5B8:
#data bank04.loc_8c04223a
#data 0x3F400000

#align4
loc_8C0CC5C0:
#data bank03.loc_8c034C38

loc_8C0CC5C4:
#data loc_8c0cD9D4

loc_8C0CC5C8:
#data bank03.loc_8c034D8c

loc_8C0CC5CC:
#data bank15.loc_8c15c5F4


loc_8C0CC5D0:
mov.w @(loc_8C0CC724,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0CC72C,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0CC724,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0CC726,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0CC728,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CC730,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x0B,r2 ; r2 set to 0x0b
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov 0x1B,r5 ; r5 set to 0x1b
mov.b r2,@(r0,r4) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x14,r4),r3
mov 0x09,r6 ; r6 set to 0x09
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x14,r4),r3
fmov.s @(r0,r3),fr3
mov.l @(loc_8C0CC734,pc),r3 ; r3 set to 0x8C034C38
fmov.s fr3,@(r0,r4) 	
jmp @r3
lds.l @r15+,pr 	

loc_8C0CC654:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0CC738,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt loc_8C0CC66e
mov.l @r15,r4
add 0x04,r15
mov.l @(loc_8C0CC73C,pc),r3 ; r3 set to 0x8C0CD9D4
jmp @r3
lds.l @r15+,pr 	

loc_8C0CC66E:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0CC676:
mov r4,r3
mov.l @(loc_8C0CC740,pc),r1 ; r1 set to 0x8C15C604
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CC688:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0CC724,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0CC72C,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0CC724,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r14),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0CC726,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0CC728,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CC730,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r14),r1
mov 0x00,r2 ; r2 set to 0x00
mov 0x24,r0 ; r0 set to 0x24
mov r14,r4
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov 0x1B,r5 ; r5 set to 0x1b
mov.b r2,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r14),r3
mov.l @(loc_8C0CC744,pc),r2 ; r2 set to 0x8C28C698
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov.l @(0x18,r14),r1
mov.w @(loc_8C0CC72A,pc),r0 ; r0 set to 0x158
mov.l @r2,r3
mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???	
mov.w r0,@r3
mov 0x21,r0 ; r0 set to 0x21
lds.l @r15+,pr 	
mov.b @(r0,r14),r6
mov.l @(loc_8C0CC734,pc),r3 ; r3 set to 0x8C034C38
add 0x0A,r6
jmp @r3
mov.l @r15+,r14

loc_8C0CC724:
#data 0x00Dc

loc_8C0CC726:
#data 0x012c

loc_8C0CC728:
#data 0x01A3

loc_8C0CC72A:
#data 0x0158

#align4
loc_8C0CC72C:
#data bank12.loc_8c129560

loc_8C0CC730:
#data bank12.loc_8c1294C8

loc_8C0CC734:
#data bank03.loc_8c034C38

loc_8C0CC738:
#data bank03.loc_8c034D8c

loc_8C0CC73C:
#data loc_8c0cD9D4

loc_8C0CC740:
#data bank15.loc_8c15c604

loc_8C0CC744:
#data 0x8C28C698


loc_8C0CC748:
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
fmov.s fr3,@(r0,r14) 	
mov.b @(0x05,r14),r0 	
tst r0,r0
bf loc_8C0CC792
mov.l @(loc_8C0CC89C,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r14,r4
mov.l @(loc_8C0CC8A0,pc),r3 ; r3 set to 0x8C28C698
mov.w @(loc_8C0CC890,pc),r0 ; r0 set to 0x158
mov.l @r3,r2
mov.w @r2,r1
mov.l @(0x18,r14),r2
mov.w @(r0,r2),r0 ; r0 ??? bc r2 is ???	
cmp/eq r0,r1
bt loc_8C0CC7A8
mov.b @(0x05,r14),r0 	
mov r14,r4
mov.l @(loc_8C0CC8A4,pc),r3 ; r3 set to 0x8C034C38
mov 0x1B,r5 ; r5 set to 0x1b
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov 0x21,r0 ; r0 set to 0x21
lds.l @r15+,pr 	
mov.b @(r0,r14),r6
add 0x0C,r6
jmp @r3
mov.l @r15+,r14

loc_8C0CC792:
mov.l @(loc_8C0CC89C,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt loc_8C0CC7A8
lds.l @r15+,pr 	
mov.l @(loc_8C0CC8A8,pc),r3 ; r3 set to 0x8C0CD9D4
mov r14,r4
jmp @r3
mov.l @r15+,r14

loc_8C0CC7A8:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0CC7AE:
mov r4,r3
mov.l @(loc_8C0CC8AC,pc),r1 ; r1 set to 0x8C15C614
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CC7C0:
mov.w @(loc_8C0CC892,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0CC8B0,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0CC892,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0CC894,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0CC896,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CC8B4,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x00,r2 ; r2 set to 0x00
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r2,@(r0,r4) 	
mov.w @(loc_8C0CC898,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r3
tst r3,r3
bt loc_8C0CC844
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r4),r3
mov.l @(loc_8C0CC8B8,pc),r0 ; r0 set to 0x8C15C624
extu.b r3,r3
shll2 r3
shll r3
fmov.s @(r0,r3),fr3
bra loc_8C0CC854
nop 	

loc_8C0CC844:
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r4),r2
mov.l @(loc_8C0CC8B8,pc),r0 ; r0 set to 0x8C15C624
extu.b r2,r2
shll2 r2
shll r2
fmov.s @(r0,r2),fr3
fneg fr3

loc_8C0CC854:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fmov.s fr3,@(r0,r4) 	
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
mov.b @(r0,r4),r3
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
mov.l @(loc_8C0CC8BC,pc),r0 ; r0 set to 0x8C15C628, r0 set to 0x8C15C628
mov 0x0E,r6 ; r6 set to 0x0E, r6 set to 0x0e
extu.b r3,r3
shll2 r3
shll r3
fmov.s @(r0,r3),fr3
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr3,@(r0,r4) 	
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fmov.s @(r0,r4),fr3
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s @(r0,r4),fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr2
mov.l @(loc_8C0CC8A4,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
jmp @r3
lds.l @r15+,pr 	

loc_8C0CC890:
#data 0x0158

loc_8C0CC892:
#data 0x00Dc

loc_8C0CC894:
#data 0x012c

loc_8C0CC896:
#data 0x01A3

loc_8C0CC898:
#data 0x0130
#data 0x0000

#align4
loc_8C0CC89C:
#data bank03.loc_8c034D8c

loc_8C0CC8A0:
#data 0x8C28C698

#align4
loc_8C0CC8A4:
#data bank03.loc_8c034C38

loc_8C0CC8A8:
#data loc_8c0cD9D4

loc_8C0CC8AC:
#data bank15.loc_8c15c614

loc_8C0CC8B0:
#data bank12.loc_8c129560

loc_8C0CC8B4:
#data bank12.loc_8c1294C8

loc_8C0CC8B8:
#data bank15.loc_8c15c624

loc_8C0CC8BC:
#data bank15.loc_8c15c628


loc_8C0CC8C0:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0CC9B4,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt loc_8C0CC8Da
mov.l @r15,r4
add 0x04,r15
mov.l @(loc_8C0CC9B8,pc),r3 ; r3 set to 0x8C0CD9D4
jmp @r3
lds.l @r15+,pr 	

loc_8C0CC8DA:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0CC8E2:
mov r4,r3
mov.l @(loc_8C0CC9BC,pc),r1 ; r1 set to 0x8C15C644
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CC8F4:
mov.w @(loc_8C0CC9AC,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0CC9C0,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0CC9AC,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0CC9AE,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0CC9B0,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CC9C4,pc),r3 ; r3 set to 0x8C1294C8
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
mov.l @(0x14,r4),r3
mov 0x09,r6 ; r6 set to 0x09
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x14,r4),r3
fmov.s @(r0,r3),fr3
mov.l @(loc_8C0CC9C8,pc),r3 ; r3 set to 0x8C034C38
fmov.s fr3,@(r0,r4) 	
jmp @r3
lds.l @r15+,pr 	

loc_8C0CC978:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0CC9B4,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt loc_8C0CC992
mov.l @r15,r4
add 0x04,r15
mov.l @(loc_8C0CC9B8,pc),r3 ; r3 set to 0x8C0CD9D4
jmp @r3
lds.l @r15+,pr 	

loc_8C0CC992:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0CC99A:
mov r4,r3
mov.l @(loc_8C0CC9CC,pc),r1 ; r1 set to 0x8C15C654
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CC9AC:
#data 0x00Dc

loc_8C0CC9AE:
#data 0x012c

loc_8C0CC9B0:
#data 0x01A3
#data 0x0000

#align4
loc_8C0CC9B4:
#data bank03.loc_8c034D8c

loc_8C0CC9B8:
#data loc_8c0cD9D4

loc_8C0CC9BC:
#data bank15.loc_8c15c644

loc_8C0CC9C0:
#data bank12.loc_8c129560

loc_8C0CC9C4:
#data bank12.loc_8c1294C8

loc_8C0CC9C8:
#data bank03.loc_8c034C38

loc_8C0CC9CC:
#data bank15.loc_8c15c654


loc_8C0CC9D0:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0CCABE,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0CCAC8,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0CCABE,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r14),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0CCAC0,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0CCAC2,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CCACC,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r14),r1
mov 0x24,r0 ; r0 set to 0x24
mov 0x00,r2 ; r2 set to 0x00
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r14) 	
mov 0x0B,r3 ; r3 set to 0x0b
mov.w @(loc_8C0CCAC4,pc),r0 ; r0 set to 0x130
mov.w r2,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0CCAC4,pc),r0 ; r0 set to 0x130
mov.l @(0x18,r14),r4
mov.w @(r0,r4),r3 ; r3 ??? bc r4 is ???	
tst r3,r3
bt loc_8C0CCA58
mova @(loc_8C0CCAD0,pc),r0  ; r0 set to 0x8C0CCAD0
bra loc_8C0CCA5c
fmov.s @r0,fr3

loc_8C0CCA58:
mova @(loc_8C0CCAD4,pc),r0  ; r0 init to 0x8C0CCAD4
fmov.s @r0,fr3

loc_8C0CCA5C:
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r4),fr2
mov 0x20,r5 ; r5 set to 0x20, r5 set to 0x20
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0CCAD8,pc),r0  ; r0 set to 0x8C0CCAD8, r0 set to 0x8C0CCAD8
fmov.s @r0,fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr2
mov.l @(loc_8C0CCADC,pc),r3 ; r3 set to 0x8C042008, r3 set to 0x8C042008
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
jsr @r3
mov r14,r4
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
mov.l @(loc_8C0CCAE0,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
lds.l @r15+,pr 	
mov.b @(r0,r14),r6
mov r14,r4
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
add 0x10,r6
jmp @r3
mov.l @r15+,r14

loc_8C0CCA8C:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0CCAE4,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt loc_8C0CCAA4
mov.l @r15,r4
add 0x04,r15
bra loc_8C0CD9D4
lds.l @r15+,pr 	

loc_8C0CCAA4:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0CCAAC:
mov r4,r3
mov.l @(loc_8C0CCAE8,pc),r1 ; r1 set to 0x8C15C664
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CCABE:
#data 0x00Dc

loc_8C0CCAC0:
#data 0x012c

loc_8C0CCAC2:
#data 0x01A3

loc_8C0CCAC4:
#data 0x0130
#data 0x0000

#align4
loc_8C0CCAC8:
#data bank12.loc_8c129560

loc_8C0CCACC:
#data bank12.loc_8c1294C8

loc_8C0CCAD0:
#data 0x42D55555

#align4
loc_8C0CCAD4:
#data 0xC2D55555

#align4
loc_8C0CCAD8:
#data 0x433C9249

#align4
loc_8C0CCADC:
#data bank04.loc_8c042008

loc_8C0CCAE0:
#data bank03.loc_8c034C38

loc_8C0CCAE4:
#data bank03.loc_8c034D8c

loc_8C0CCAE8:
#data bank15.loc_8c15c664


loc_8C0CCAEC:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0CCC3C,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0CCC48,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0CCC3C,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r14),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0CCC3E,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0CCC40,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CCC4C,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r14),r1
mov 0x0B,r2 ; r2 set to 0x0b
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0CCC42,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r2 ; r2 ??? bc r14 is ???	
tst r2,r2
bt/s loc_8C0CCB6a
mov.l @(0x18,r14),r3
mova @(loc_8C0CCC50,pc),r0  ; r0 set to 0x8C0CCC50
bra loc_8C0CCB6e
fmov.s @r0,fr3

loc_8C0CCB6A:
mova @(loc_8C0CCC54,pc),r0  ; r0 init to 0x8C0CCC54
fmov.s @r0,fr3

loc_8C0CCB6E:
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r3),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0CCC58,pc),r0  ; r0 set to 0x8C0CCC58, r0 set to 0x8C0CCC58
fmov.s @r0,fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov.w @(loc_8C0CCC42,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt loc_8C0CCB92
mova @(loc_8C0CCC5C,pc),r0  ; r0 set to 0x8C0CCC5C, r0 set to 0x8C0CCC5c
bra loc_8C0CCB96
fmov.s @r0,fr2

loc_8C0CCB92:
mova @(loc_8C0CCC60,pc),r0  ; r0 init to 0x8C0CCC60
fmov.s @r0,fr2

loc_8C0CCB96:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fldi0 fr4
fmov.s fr2,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mova @(loc_8C0CCC64,pc),r0  ; r0 set to 0x8C0CCC64, r0 set to 0x8C0CCC64
fmov.s @r0,fr3
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
mov.l @(loc_8C0CCC68,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
mov r14,r4
fmov.s fr3,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
lds.l @r15+,pr 	
mov.b @(r0,r14),r6
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
add 0x03,r6
jmp @r3
mov.l @r15+,r14

loc_8C0CCBBE:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
fmov.s fr15,@-r15
sts.l pr,@-r15
mov.b @(0x05,r14),r0 	
mov.l @(0x18,r14),r13
tst r0,r0
fldi1 fr15
bf/s loc_8C0CCC70
fadd fr15,fr15
mov.l @(loc_8C0CCC6C,pc),r3 ; r3 set to 0x8C034D8c
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
mov.w @(loc_8C0CCC44,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r13),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fcmp/gt fr3,fr2
bt loc_8C0CCCF4
mov.b @(0x05,r14),r0 	
add 0x01,r0 ; r0 set to 0x39
mov.b r0,@(0x05,r14) 	
mov.w @(loc_8C0CCC44,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r13),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s @(r0,r14),fr3
fneg fr3
fdiv fr15,fr3
fmov.s fr3,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
bra loc_8C0CCCF4
mov.w r0,@(0x1C,r14) 	

loc_8C0CCC3C:
#data 0x00Dc

loc_8C0CCC3E:
#data 0x012c

loc_8C0CCC40:
#data 0x01A3

loc_8C0CCC42:
#data 0x0130

loc_8C0CCC44:
#data 0x041c
#data 0x0000

#align4
loc_8C0CCC48:
#data bank12.loc_8c129560

loc_8C0CCC4C:
#data bank12.loc_8c1294C8

loc_8C0CCC50:
#data 0x41A00000

#align4
loc_8C0CCC54:
#data 0xC1A00000

#align4
loc_8C0CCC58:
#data 0x437EFFFf

#align4
loc_8C0CCC5C:
#data 0xC0555555

#align4
loc_8C0CCC60:
#data 0x40555555

#align4
loc_8C0CCC64:
#data 0xBF092492

#align4
loc_8C0CCC68:
#data bank03.loc_8c034C38

loc_8C0CCC6C:
#data bank03.loc_8c034D8c

loc_8C0CCC70:
#data 0x420BD25b
#data 0xE15C64E3
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
#data 0x9092FE27
#data 0xF33653E6
#data 0xF2E6E038
#data 0x8908F235
#data 0xF3D6908b
#data 0xFE37E038
#data 0xF3E6E060
#data 0xF3F3F34d
#data 0xFE37

loc_8C0CCCCE:
#data 0x85Ee
#data 0x81EE70Ff
#data 0x2008600f
#data 0x4F268B05
#data 0xFFF964E3
#data 0xA6776DF6
#data 0x6EF6

loc_8C0CCCE6:
#data 0xD33f
#data 0x60329176
#data 0x500731Ec
#data 0x2100C901


loc_8C0CCCF4:
lds.l @r15+,pr 	
fmov.s @r15+,fr15
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0CCCFE:
mov r4,r3
mov.l @(loc_8C0CCDE8,pc),r1 ; r1 set to 0x8C15C674
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CCD10:
mov.w @(loc_8C0CCDDA,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0CCDEC,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0CCDDA,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0CCDD8,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0CCDDC,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CCDF0,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x07,r2 ; r2 set to 0x07
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov 0x30,r5 ; r5 set to 0x30
mov.b r2,@(r0,r4) 	
mov.w @(loc_8C0CCDDE,pc),r0 ; r0 set to 0x13c
mov.b r5,@(r0,r4) 	
add 0x01,r0 ; r0 set to 0x13d
mov.b r5,@(r0,r4) 	
add 0xF3,r0 ; r0 set to 0x130
mov.w @(r0,r4),r2 ; r2 ??? bc r4 is ???	
tst r2,r2
bt/s loc_8C0CCD94
mov.l @(0x18,r4),r3
mova @(loc_8C0CCDF4,pc),r0  ; r0 set to 0x8C0CCDF4
bra loc_8C0CCD98
fmov.s @r0,fr3

loc_8C0CCD94:
mova @(loc_8C0CCDF8,pc),r0  ; r0 init to 0x8C0CCDF8
fmov.s @r0,fr3

loc_8C0CCD98:
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fldi0 fr4
fmov.s @(r0,r3),fr2
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
mov 0x12,r6 ; r6 set to 0x12, r6 set to 0x12
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mova @(loc_8C0CCDFC,pc),r0  ; r0 set to 0x8C0CCDFC, r0 set to 0x8C0CCDFc
fmov.s @r0,fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr2
mov.l @(loc_8C0CCE04,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
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
mova @(loc_8C0CCE00,pc),r0  ; r0 set to 0x8C0CCE00, r0 set to 0x8C0CCE00
fmov.s @r0,fr2
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr2,@(r0,r4) 	
mov 0x02,r0 ; r0 set to 0x02, r0 set to 0x02
mov.w r0,@(0x1C,r4) 	
jmp @r3
lds.l @r15+,pr 	
#data 0x041c

loc_8C0CCDD8:
#data 0x012c

loc_8C0CCDDA:
#data 0x00Dc

loc_8C0CCDDC:
#data 0x01A3

loc_8C0CCDDE:
#data 0x013c

#align4
loc_8C0CCDE0:
#data bank03.loc_8c034D8c
#data 0x8C26823c

#align4
loc_8C0CCDE8:
#data bank15.loc_8c15c674

loc_8C0CCDEC:
#data bank12.loc_8c129560

loc_8C0CCDF0:
#data bank12.loc_8c1294C8

loc_8C0CCDF4:
#data 0x42CEAAAa

#align4
loc_8C0CCDF8:
#data 0xC2CEAAAa

#align4
loc_8C0CCDFC:
#data 0x42809249

#align4
loc_8C0CCE00:
#data 0x41700000

#align4
loc_8C0CCE04:
#data bank03.loc_8c034C38

loc_8C0CCE08:
#data 0x4F222FE6
#data 0x430BD34f
#data 0xE15C6E43
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
#data 0x85EEFE27
#data 0x81EE70Ff
#data 0x2008600f
#data 0xD33E8B06
#data 0xE504E002
#data 0xE60081Ee
#data 0x64E3430b

#align4
loc_8C0CCE64:
#data 0x420BD23b
#data 0x200864E3
#data 0x4F268B03
#data 0xA5AF64E3
#data 0x6EF6

loc_8C0CCE76:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0CCE7C:
mov r4,r3
mov.l @(loc_8C0CCF58,pc),r1 ; r1 set to 0x8C15C684
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CCE8E:
mov.w @(loc_8C0CCF42,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0CCF5C,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0CCF42,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0CCF44,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0CCF46,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CCF60,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x07,r2 ; r2 set to 0x07
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov 0x30,r5 ; r5 set to 0x30
mov.b r2,@(r0,r4) 	
mov 0x13,r6 ; r6 set to 0x13
mov.w @(loc_8C0CCF48,pc),r0 ; r0 set to 0x13c
mov.b r5,@(r0,r4) 	
add 0x01,r0 ; r0 set to 0x13d
mov.b r5,@(r0,r4) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r4),r3
mov 0x1B,r5 ; r5 set to 0x1b
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
mov.l @(loc_8C0CCF64,pc),r3 ; r3 set to 0x8C034C38
fmov.s fr3,@(r0,r4) 	
jmp @r3
lds.l @r15+,pr 	

loc_8C0CCF1C:
mov.w @(loc_8C0CCF4A,pc),r1 ; r1 set to 0x1D0
mov.l @(0x18,r4),r0
mov.b @(r0,r1),r0
extu.b r0,r0
cmp/eq 0x16,r0 	
bt loc_8C0CCF2c
bra loc_8C0CD9D4
nop 	

loc_8C0CCF2C:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0CCF30:
mov r4,r3
mov.l @(loc_8C0CCF68,pc),r1 ; r1 set to 0x8C15C694
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CCF42:
#data 0x00Dc

loc_8C0CCF44:
#data 0x012c

loc_8C0CCF46:
#data 0x01A3

loc_8C0CCF48:
#data 0x013c

loc_8C0CCF4A:
#data 0x01D0

#align4
loc_8C0CCF4C:
#data bank03.loc_8c034D8c

loc_8C0CCF50:
#data loc_8c0cBE3e

loc_8C0CCF54:
#data bank03.loc_8c0334A8

loc_8C0CCF58:
#data bank15.loc_8c15c684

loc_8C0CCF5C:
#data bank12.loc_8c129560

loc_8C0CCF60:
#data bank12.loc_8c1294C8

loc_8C0CCF64:
#data bank03.loc_8c034C38

loc_8C0CCF68:
#data bank15.loc_8c15c694


loc_8C0CCF6C:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0CD0CC,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0CD0D4,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0CD0CC,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r14),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0CD0CE,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0CD0D0,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CD0D8,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r14),r1
mov 0x0B,r2 ; r2 set to 0x0b
mov 0x24,r0 ; r0 set to 0x24
mov r14,r4
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov 0x1B,r5 ; r5 set to 0x1b
mov.b r2,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x14,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x14,r14),r3
fmov.s @(r0,r3),fr3
mov.l @(loc_8C0CD0DC,pc),r3 ; r3 set to 0x8C034C38
fmov.s fr3,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21
lds.l @r15+,pr 	
mov.b @(r0,r14),r6
add 0x14,r6
jmp @r3
mov.l @r15+,r14

loc_8C0CCFFC:
mov.l r14,@-r15
mov r4,r14
mov 0x34,r0 ; r0 set to 0x34
sts.l pr,@-r15
mov.l @(0x14,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x14,r14),r3
fmov.s @(r0,r3),fr3
mov.l @(loc_8C0CD0E0,pc),r3 ; r3 set to 0x8C034D8c
fmov.s fr3,@(r0,r14) 	
jsr @r3
mov r14,r4
exts.b r0,r0 ; r0 ??	
cmp/pz r0
bt loc_8C0CD026
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0CD9D4
mov.l @r15+,r14

loc_8C0CD026:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0CD02C:
mov r4,r3
mov.l @(loc_8C0CD0E4,pc),r1 ; r1 set to 0x8C15C6A4
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CD03E:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0CD0CC,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0CD0D4,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0CD0CC,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r14),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0CD0CE,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0CD0D0,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CD0D8,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r14),r1
mov 0x24,r0 ; r0 set to 0x24
mov 0xFF,r2 ; r2 set to 0xFFFFFFFf
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov 0x21,r5 ; r5 set to 0x21
mov.b r3,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r2,@(r0,r14) 	
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8C0CD0CE,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
mov.l @(loc_8C0CD0E8,pc),r3 ; r3 set to 0x8C042008
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov.l @(loc_8C0CD0DC,pc),r2 ; r2 set to 0x8C034C38
mov r14,r4
mov 0x16,r6 ; r6 set to 0x16
mov 0x1B,r5 ; r5 set to 0x1b
jmp @r2
mov.l @r15+,r14

loc_8C0CD0CC:
#data 0x00Dc

loc_8C0CD0CE:
#data 0x012c

loc_8C0CD0D0:
#data 0x01A3
#data 0x0000

#align4
loc_8C0CD0D4:
#data bank12.loc_8c129560

loc_8C0CD0D8:
#data bank12.loc_8c1294C8

loc_8C0CD0DC:
#data bank03.loc_8c034C38

loc_8C0CD0E0:
#data bank03.loc_8c034D8c

loc_8C0CD0E4:
#data bank15.loc_8c15c6A4

loc_8C0CD0E8:
#data bank04.loc_8c042008


loc_8C0CD0EC:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov 0x24,r0 ; r0 set to 0x24
sts.l pr,@-r15
mov.l @(0x18,r14),r13
mov.b @(r0,r13),r3
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0CD1B4,pc),r0 ; r0 set to 0x1F9
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
extu.b r0,r0
cmp/eq 0x00,r0 	
bt/s loc_8C0CD118
mov 0x01,r5 ; r5 set to 0x01
cmp/eq 0x01,r0 	
bt loc_8C0CD11c
cmp/eq 0x02,r0 	
bt loc_8C0CD120
cmp/eq 0x03,r0 	
bt loc_8C0CD124
bra loc_8C0CD124
nop 	

loc_8C0CD118:
bra loc_8C0CD126
mov 0x00,r4

loc_8C0CD11C:
bra loc_8C0CD126
mov r5,r4

loc_8C0CD120:
bra loc_8C0CD126
mov 0x02,r4

loc_8C0CD124:
#data 0xE403


loc_8C0CD126:
mov.w @(loc_8C0CD1B6,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r14) 	
mov.w @(loc_8C0CD1B8,pc),r0 ; r0 set to 0x1D2
mov.b @(r0,r13),r3
tst r3,r3
bt loc_8C0CD140
mov r4,r3
mov.l @(loc_8C0CD1C0,pc),r0 ; r0 set to 0x8C15C6B4
shll2 r3
shll r3
fmov.s @(r0,r3),fr3
bra loc_8C0CD14c
nop 	

#align4
loc_8C0CD140:
#data 0xD01F6243
#data 0x42004208
#data 0xF34DF326

#align4
loc_8C0CD14C:
#data 0xD31EE034
#data 0x4408F2D6
#data 0xF2304400
#data 0xD01AFE27
#data 0xE038F346
#data 0xF230F2D6
#data 0x430BFE27
#data 0xD31864E3
#data 0x84256232
#data 0x89092008
#data 0x00DC9021
#data 0x8815600c
#data 0x901D8B0d
#data 0x600C00Dc
#data 0x8B088804

#align4
loc_8C0CD188:
#data 0xE527D311
#data 0x64E3430b
#data 0x64E34F26
#data 0xA41D6DF6
#data 0x6EF6

loc_8C0CD19A:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0CD1A2:
mov r4,r3
mov.l @(loc_8C0CD1D4,pc),r1 ; r1 set to 0x8C15C6D4
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CD1B4:
#data 0x01F9

loc_8C0CD1B6:
#data 0x012c

loc_8C0CD1B8:
#data 0x01D2
#data 0x01D0
#data 0x000001E9

#align4
loc_8C0CD1C0:
#data bank15.loc_8c15c6B4

loc_8C0CD1C4:
#data bank15.loc_8c15c6B8

loc_8C0CD1C8:
#data bank03.loc_8c034D8c
#data 0x8C28C694

#align4
loc_8C0CD1D0:
#data bank04.loc_8c042008

loc_8C0CD1D4:
#data bank15.loc_8c15c6D4


loc_8C0CD1D8:
mov.w @(loc_8C0CD334,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0CD33C,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0CD334,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0CD336,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0CD338,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CD340,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x0B,r2 ; r2 set to 0x0b
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov 0x1B,r5 ; r5 set to 0x1b
mov.b r2,@(r0,r4) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r4),r3
mov 0x17,r6 ; r6 set to 0x17
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
mov.l @(loc_8C0CD344,pc),r3 ; r3 set to 0x8C034C38
fmov.s fr3,@(r0,r4) 	
jmp @r3
lds.l @r15+,pr 	

loc_8C0CD25C:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0CD348,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt loc_8C0CD274
mov.l @r15,r4
add 0x04,r15
bra loc_8C0CD9D4
lds.l @r15+,pr 	

loc_8C0CD274:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0CD27C:
mov r4,r3
mov.l @(loc_8C0CD34C,pc),r1 ; r1 set to 0x8C15C6E4
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CD28E:
mov.w @(loc_8C0CD334,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0CD33C,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0CD334,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0CD336,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0CD338,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CD340,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x0C,r2 ; r2 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r2,@(r0,r4) 	
mov.w @(loc_8C0CD33A,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r2 ; r2 ??? bc r4 is ???	
tst r2,r2
bt/s loc_8C0CD308
mov.l @(0x18,r4),r3
mova @(loc_8C0CD350,pc),r0  ; r0 set to 0x8C0CD350
bra loc_8C0CD30c
fmov.s @r0,fr3

loc_8C0CD308:
mova @(loc_8C0CD354,pc),r0  ; r0 init to 0x8C0CD354
fmov.s @r0,fr3

loc_8C0CD30C:
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r3),fr2
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
mov 0x0F,r6 ; r6 set to 0x0F, r6 set to 0x0f
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
mov.b @(r0,r4),r2
mov.l @(loc_8C0CD358,pc),r0 ; r0 set to 0x8C15C6F4, r0 set to 0x8C15C6F4
extu.b r2,r2
mov.l @(0x18,r4),r3
shll2 r2
fmov.s @(r0,r2),fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r3),fr2
mov.l @(loc_8C0CD344,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
jmp @r3
lds.l @r15+,pr 	

loc_8C0CD334:
#data 0x00Dc

loc_8C0CD336:
#data 0x012c

loc_8C0CD338:
#data 0x01A3

loc_8C0CD33A:
#data 0x0130

#align4
loc_8C0CD33C:
#data bank12.loc_8c129560

loc_8C0CD340:
#data bank12.loc_8c1294C8

loc_8C0CD344:
#data bank03.loc_8c034C38

loc_8C0CD348:
#data bank03.loc_8c034D8c

loc_8C0CD34C:
#data bank15.loc_8c15c6E4

loc_8C0CD350:
#data 0xC30DAAAa

#align4
loc_8C0CD354:
#data 0x430DAAAa

#align4
loc_8C0CD358:
#data bank15.loc_8c15c6F4


loc_8C0CD35C:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0CD468,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt loc_8C0CD374
mov.l @r15,r4
add 0x04,r15
bra loc_8C0CD9D4
lds.l @r15+,pr 	

loc_8C0CD374:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0CD37C:
mov r4,r3
mov.l @(loc_8C0CD46C,pc),r1 ; r1 set to 0x8C15C704
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CD38E:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0CD460,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0CD470,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0CD460,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r14),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0CD462,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0CD464,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CD474,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r14),r1
mov 0x24,r0 ; r0 set to 0x24
mov 0x0C,r2 ; r2 set to 0x0c
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov 0x1B,r5 ; r5 set to 0x1b
mov.l @(loc_8C0CD478,pc),r3 ; r3 set to 0x8C034C38
mov 0x18,r6 ; r6 set to 0x18
mov.b r2,@(r0,r14) 	
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r14,r4
mov.l @r15+,r14

loc_8C0CD40C:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0CD468,pc),r3 ; r3 set to 0x8C034D8C, r3 set to 0x8C034D8c
jsr @r3
mov r4,r14
bsr loc_8C0CD484
mov r14,r4
mov.l @(loc_8C0CD47C,pc),r3 ; r3 set to 0x8C28C694, r3 set to 0x8C28C694
mov.l @r3,r4
mov.b @(0x02,r4),r0 	
tst r0,r0
bt loc_8C0CD452
mov.b @(0x05,r14),r0 	
tst r0,r0
bf loc_8C0CD43e
mov.b @(0x0D,r4),r0 	
tst r0,r0
bt loc_8C0CD45a
mov.b @(0x05,r14),r0 	
fldi1 fr3
add 0x01,r0 ; r0 set to 0x25
mov.b r0,@(0x05,r14) 	
mov.w @(loc_8C0CD466,pc),r0 ; r0 set to 0x108, r0 set to 0x108
bra loc_8C0CD45a
fmov.s fr3,@(r0,r14) 	

loc_8C0CD43E:
#data 0xD110
#data 0x415A9011
#data 0xF18DF2E6
#data 0xF231F30d
#data 0x8D04F215
#data 0xFE27


loc_8C0CD452:
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0CD9D4
mov.l @r15+,r14

loc_8C0CD45A:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0CD460:
#data 0x00Dc

loc_8C0CD462:
#data 0x012c

loc_8C0CD464:
#data 0x01A3

loc_8C0CD466:
#data 0x0108

#align4
loc_8C0CD468:
#data bank03.loc_8c034D8c

loc_8C0CD46C:
#data bank15.loc_8c15c704

loc_8C0CD470:
#data bank12.loc_8c129560

loc_8C0CD474:
#data bank12.loc_8c1294C8

loc_8C0CD478:
#data bank03.loc_8c034C38

loc_8C0CD47C:
#data 0x8C28C694
#data 0x3D4CCCCd


loc_8C0CD484:
mov.l @(0x14,r4),r3
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0CD5A4,pc),r5 ; r5 set to 0x8C15C714
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x14,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0CD59A,pc),r0 ; r0 set to 0x14b
mov.l @(0x14,r4),r3
mov.b @(r0,r3),r2
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r4),r1
extu.b r2,r2
mov.w @(loc_8C0CD59C,pc),r0 ; r0 set to 0x130
mov r2,r3
shll r2
extu.b r1,r1
add r3,r2
mov.w @(r0,r4),r3
add r1,r2
shll2 r2
shll r2
add r5,r2
fmov.s @r2,fr4
tst r3,r3
mov 0x34,r2 ; r2 set to 0x34
bt/s loc_8C0CD4C4
add r4,r2 ; r2 ??? bc r4 is ???	
bra loc_8C0CD4C8
fmov fr4,fr3

loc_8C0CD4C4:
fmov fr4,fr3
fneg fr3

loc_8C0CD4C8:
fmov.s @r2,fr2
mov 0x21,r1 ; r1 set to 0x21, r1 set to 0x21
add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???	
fadd fr3,fr2
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s fr2,@r2
mov.w @(loc_8C0CD59A,pc),r2 ; r2 set to 0x14B, r2 set to 0x14b
mov.l @(0x14,r4),r3
mov.b @r1,r1
add r3,r2 ; r2 ??? bc r3 is ???, r2 ??? bc r3 is ???	
fmov.s @(r0,r4),fr2
mov.b @r2,r2
extu.b r1,r1
extu.b r2,r2
mov r2,r3
shll r2
add r3,r2
add r1,r2
shll2 r2
shll r2
mov 0x04,r1 ; r1 set to 0x04, r1 set to 0x04
add r2,r5
add r5,r1 ; r1 ??? bc r5 is ???, r1 ??? bc r5 is ???	
fmov.s @r1,fr3
fadd fr3,fr2
rts 	
fmov.s fr2,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0CD4FE:
mov r4,r3
mov.l @(loc_8C0CD5A8,pc),r1 ; r1 set to 0x8C15C7Ec
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CD510:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov 0x01,r5 ; r5 set to 0x01
sts.l pr,@-r15
mov.b @(0x05,r14),r0 	
mov.l @(loc_8C0CD5AC,pc),r13 ; r13 set to 0x8C03319e
tst r0,r0
bf/s loc_8C0CD5B8
mov 0x00,r4 ; r4 set to 0x00
mov.b @(0x05,r14),r0 	
mov.w @(loc_8C0CD59E,pc),r1 ; r1 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0CD5B0,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x05,r14) 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0CD59E,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r14),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0CD5A0,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0CD5A2,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CD5B4,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r14),r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r14) 	
mov 0x0B,r3 ; r3 set to 0x0b
mov.w @(loc_8C0CD5A0,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
jsr @r13
mov.b r3,@(r0,r14) 	
and 0x0F,r0 	
bra loc_8C0CD65a
mov.w r0,@(0x1C,r14) 	

loc_8C0CD59A:
#data 0x014b

loc_8C0CD59C:
#data 0x0130

loc_8C0CD59E:
#data 0x00Dc

loc_8C0CD5A0:
#data 0x012c

loc_8C0CD5A2:
#data 0x01A3

#align4
loc_8C0CD5A4:
#data bank15.loc_8c15c714

loc_8C0CD5A8:
#data bank15.loc_8c15c7Ec

loc_8C0CD5AC:
#data bank03.loc_8c03319e

loc_8C0CD5B0:
#data bank12.loc_8c129560

loc_8C0CD5B4:
#data bank12.loc_8c1294C8

loc_8C0CD5B8:
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x894A4011
#data 0x700184E4
#data 0x604380E4
#data 0x80E50009
#data 0x0E54908b
#data 0x53E5E034
#data 0xFE37F336
#data 0xF308C744
#data 0x53E5E038
#data 0xF230F236
#data 0xFE274D0b
#data 0xE310E41f
#data 0x23482409
#data 0xE0348D01
#data 0xE4F1

loc_8C0CD5FA:
#data 0x445a
#data 0xF2E6D13d
#data 0x415AF32d
#data 0xF23EF00d
#data 0xFE274D0b
#data 0xE310E41f
#data 0x23482409
#data 0xE0388D01
#data 0xE4F1

loc_8C0CD61A:
#data 0x445a
#data 0xF2E6D136
#data 0x415AF32d
#data 0xF00DF48d
#data 0xFE27F23e
#data 0xFE47E05c
#data 0xFE47E060
#data 0xFE47E068
#data 0xFE47E06c
#data 0xF308C72f
#data 0x4D0BE060
#data 0x4F26FE37
#data 0xD32DE707
#data 0x270964E3
#data 0xE6196DF6
#data 0x432BE51b
#data 0x6EF6


loc_8C0CD65A:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0CD662:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x05,r14),r0 	
tst r0,r0
bf loc_8C0CD6B6
mov.l @(loc_8C0CD704,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r14,r4
mov 0x60,r1 ; r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
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
mov.w @(loc_8C0CD6EC,pc),r0 ; r0 set to 0x41c
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fcmp/gt fr3,fr2
bt loc_8C0CD6D2
mov.b @(0x05,r14),r0 	
add 0x01,r0 ; r0 set to 0x39
mov.b r0,@(0x05,r14) 	
mov.w @(loc_8C0CD6EC,pc),r0 ; r0 set to 0x41c
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0CD6EE,pc),r0 ; r0 set to 0x108
fldi1 fr3
bra loc_8C0CD6D2
fmov.s fr3,@(r0,r14) 	

loc_8C0CD6B6:
mov.l @(loc_8C0CD708,pc),r1 ; r1 set to 0x3D4CCCCd
mov.w @(loc_8C0CD6EE,pc),r0 ; r0 set to 0x108
lds r1,fpul 	
fmov.s @(r0,r14),fr2
fldi0 fr1
fsts fpul,fr3
fsub fr3,fr2
fcmp/gt fr1,fr2
bt/s loc_8C0CD6D2
fmov.s fr2,@(r0,r14) 	
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0CD9D4
mov.l @r15+,r14

loc_8C0CD6D2:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0CD6D8:
mov r4,r3
mov.l @(loc_8C0CD70C,pc),r1 ; r1 set to 0x8C15C7Fc
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x012c

loc_8C0CD6EC:
#data 0x041c

loc_8C0CD6EE:
#data 0x0108
#data 0x42892492
#data 0x3FD55555
#data 0x40092492
#data 0xBFCDB6Db

#align4
loc_8C0CD700:
#data bank03.loc_8c034CD6

loc_8C0CD704:
#data bank03.loc_8c034D8c

loc_8C0CD708:
#data 0x3D4CCCCd

#align4
loc_8C0CD70C:
#data bank15.loc_8c15c7Fc


loc_8C0CD710:
mov.w @(loc_8C0CD830,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0CD838,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0CD830,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0CD832,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0CD834,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CD83C,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x0C,r2 ; r2 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov 0x31,r1 ; r1 set to 0x31
mov.b r2,@(r0,r4) 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.b @(0x02,r4),r0 	
neg r0,r0 ; r0 ??	
add 0xFC,r0
mov.b r0,@r1
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x14,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x14,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r4),r3
tst r3,r3
bt loc_8C0CD7Ba
mov.l @(loc_8C0CD840,pc),r1 ; r1 set to 0x441A4924
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r4),fr2 ; r2 ??? bc r4 is ???	
mov 0x1B,r6 ; r6 set to 0x1b
lds r1,fpul 	
fsts fpul,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mova @(loc_8C0CD844,pc),r0  ; r0 set to 0x8C0CD844
fmov.s @r0,fr2
mov 0x54,r0 ; r0 set to 0x54
fmov.s fr2,@(r0,r4) 	
bra loc_8C0CD7Be
mov r6,r5

loc_8C0CD7BA:
mov 0x1B,r5 ; r5 set to 0x1b
mov 0x1A,r6 ; r6 set to 0x1a

loc_8C0CD7BE:
mov.l @(loc_8C0CD848,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
jmp @r3
lds.l @r15+,pr 	

loc_8C0CD7C4:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x05,r14),r0 	
tst r0,r0
bf loc_8C0CD7F6
mov.l @(loc_8C0CD84C,pc),r2 ; r2 set to 0x8C28C694
mov.l @r2,r3
mov.b @(0x0A,r3),r0 	
cmp/pl r0
bf loc_8C0CD7F6
mov.b @(0x05,r14),r0 	
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3
tst r3,r3
bt/s loc_8C0CD7Ee
mov 0x1B,r5 ; r5 set to 0x1b
bra loc_8C0CD7F0
mov 0x1D,r6

loc_8C0CD7EE:
#data 0xE61c

#align4
loc_8C0CD7F0:
#data 0x430BD315
#data 0x64E3


loc_8C0CD7F6:
mov.l @(loc_8C0CD850,pc),r2 ; r2 set to 0x8C034D8c
jsr @r2
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt loc_8C0CD80a
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0CD9D4
mov.l @r15+,r14

loc_8C0CD80A:
mov.l @(loc_8C0CD854,pc),r3 ; r3 set to 0x8C26823c
mov.w @(loc_8C0CD832,pc),r1 ; r1 set to 0x12c
mov.l @r3,r0
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(0x1C,r0),r0
and 0x01,r0 	
mov.b r0,@r1
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0CD81E:
mov r4,r3
mov.l @(loc_8C0CD858,pc),r1 ; r1 set to 0x8C15C80c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CD830:
#data 0x00Dc

loc_8C0CD832:
#data 0x012c

loc_8C0CD834:
#data 0x01A3
#data 0x0000

#align4
loc_8C0CD838:
#data bank12.loc_8c129560

loc_8C0CD83C:
#data bank12.loc_8c1294C8

loc_8C0CD840:
#data 0x441A4924

#align4
loc_8C0CD844:
#data 0x41900000

#align4
loc_8C0CD848:
#data bank03.loc_8c034C38

loc_8C0CD84C:
#data 0x8C28C694

#align4
loc_8C0CD850:
#data bank03.loc_8c034D8c

loc_8C0CD854:
#data 0x8C26823c

#align4
loc_8C0CD858:
#data bank15.loc_8c15c80c


loc_8C0CD85C:
mov.w @(loc_8C0CD99A,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0CD9A4,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0CD99A,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0CD99C,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0CD99E,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CD9A8,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x0C,r2 ; r2 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r2,@(r0,r4) 	
mov.w @(loc_8C0CD9A0,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r2 ; r2 ??? bc r4 is ???	
tst r2,r2
bt/s loc_8C0CD8D6
mov.l @(0x18,r4),r3
mova @(loc_8C0CD9AC,pc),r0  ; r0 set to 0x8C0CD9Ac
bra loc_8C0CD8Da
fmov.s @r0,fr3

loc_8C0CD8D6:
mova @(loc_8C0CD9B0,pc),r0  ; r0 init to 0x8C0CD9B0
fmov.s @r0,fr3

loc_8C0CD8DA:
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r3),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mova @(loc_8C0CD9B4,pc),r0  ; r0 set to 0x8C0CD9B4, r0 set to 0x8C0CD9B4
fmov.s @r0,fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov.w @(loc_8C0CD9A0,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r4),r3
tst r3,r3
bt loc_8C0CD8Fe
mova @(loc_8C0CD9B8,pc),r0  ; r0 set to 0x8C0CD9B8, r0 set to 0x8C0CD9B8
bra loc_8C0CD902
fmov.s @r0,fr2

loc_8C0CD8FE:
mova @(loc_8C0CD9BC,pc),r0  ; r0 init to 0x8C0CD9Bc
fmov.s @r0,fr2

loc_8C0CD902:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fldi0 fr3
fmov.s fr2,@(r0,r4) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr3,@(r0,r4) 	
mova @(loc_8C0CD9C0,pc),r0  ; r0 set to 0x8C0CD9C0, r0 set to 0x8C0CD9C0
fmov.s @r0,fr3
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
mov.l @(loc_8C0CD9C8,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
fmov.s fr3,@(r0,r4) 	
mova @(loc_8C0CD9C4,pc),r0  ; r0 set to 0x8C0CD9C4, r0 set to 0x8C0CD9C4
fmov.s @r0,fr3 ; r3 ??, r3 ??	
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
mov 0x1E,r6 ; r6 set to 0x1E, r6 set to 0x1e
fmov.s fr3,@(r0,r4) 	
jmp @r3
lds.l @r15+,pr 	

loc_8C0CD926:
#data 0x2FE6
#data 0x7FFC4F22
#data 0x6E43E15c
#data 0x53E6E034
#data 0x2F3231Ec
#data 0xF318F2E6
#data 0x31ECE168
#data 0xF230D322
#data 0xE05CFE27
#data 0xE160F318
#data 0x31ECF2E6
#data 0xFE27F230
#data 0xF318E038
#data 0xF2E6E16c
#data 0xF23031Ec
#data 0xE060FE27
#data 0xF2E6F318
#data 0xFE27F230
#data 0x64E3430b
#data 0x420BD217
#data 0x200864E3
#data 0x90128906
#data 0xF33663F2
#data 0xF2E6E038
#data 0x8904F235

#align4
loc_8C0CD988:
#data 0x7F0464E3
#data 0xA0214F26
#data 0x6EF6

loc_8C0CD992:
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0CD99A:
#data 0x00Dc

loc_8C0CD99C:
#data 0x012c

loc_8C0CD99E:
#data 0x01A3

loc_8C0CD9A0:
#data 0x0130
#data 0x041c

#align4
loc_8C0CD9A4:
#data bank12.loc_8c129560

loc_8C0CD9A8:
#data bank12.loc_8c1294C8

loc_8C0CD9AC:
#data 0xC33FAAAa

#align4
loc_8C0CD9B0:
#data 0x433FAAAa

#align4
loc_8C0CD9B4:
#data 0x4211B6Db

#align4
loc_8C0CD9B8:
#data 0xC1A00000

#align4
loc_8C0CD9BC:
#data 0x41A00000

#align4
loc_8C0CD9C0:
#data 0x411A4924

#align4
loc_8C0CD9C4:
#data 0xBF092492

#align4
loc_8C0CD9C8:
#data bank03.loc_8c034C38

loc_8C0CD9CC:
#data bank03.loc_8c034D8c

loc_8C0CD9D0:
#data bank03.loc_8c0332E0


loc_8C0CD9D4:
mov 0x03,r0 ; r0 set to 0x03
mov.b r0,@(0x04,r4) 	
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8C0CD9E4,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	

loc_8C0CD9DE:
mov.l @(loc_8C0CD9E8,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0CD9E4:
#data 0x012c
#data 0x0000

#align4
loc_8C0CD9E8:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0xE600D35b
#data 0x2F501F41
#data 0x430BE503
#data 0x20086463
#data 0x64038D07
#data 0xE020D357
#data 0x52F11434
#data 0x63F01426
#data 0x7F080434
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0CDA1A:
mov r4,r3
mov.l @(loc_8C0CDB68,pc),r1 ; r1 set to 0x8C15C81c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CDA2C:
mov 0x20,r0 ; r0 set to 0x20
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(loc_8C0CDB6C,pc),r0 ; r0 set to 0x8C15C82c
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

loc_8C0CDA40:
mov.w @(loc_8C0CDB54,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0CDB70,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.w @(loc_8C0CDB54,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0CDB56,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r4),r5
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0CDB58,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0CDB5A,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CDB74,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x0E,r3 ; r3 set to 0x0e
mov 0x1B,r5 ; r5 set to 0x1b
mov.b r2,@(r0,r4) 	
mov.w @(loc_8C0CDB58,pc),r0 ; r0 set to 0x12c
mov.b r6,@(r0,r4) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r4) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r4),r2
mov 0x10,r6 ; r6 set to 0x10
fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???	
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
mov.l @(loc_8C0CDB78,pc),r3 ; r3 set to 0x8C034C38
fmov.s fr3,@(r0,r4) 	
jmp @r3
lds.l @r15+,pr 	

loc_8C0CDAC4:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0CDB54,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0CDB54,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0CDB70,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0CDB56,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r14),r4
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C0CDB58,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0CDB5A,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CDB74,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov 0x0E,r3 ; r3 set to 0x0e
mov 0x34,r1 ; r1 set to 0x34
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0CDB58,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r14),r2
fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0CDB5C,pc),r0 ; r0 set to 0x130
mov.l @(0x18,r14),r2
mov.w @(r0,r2),r3
tst r3,r3
bt/s loc_8C0CDB7c
add r14,r1 ; r1 ??? bc r14 is ???	
bra loc_8C0CDB7e
mov 0xD0,r3

loc_8C0CDB54:
#data 0x00Dc

loc_8C0CDB56:
#data 0x00C0

loc_8C0CDB58:
#data 0x012c

loc_8C0CDB5A:
#data 0x01A3

loc_8C0CDB5C:
#data 0x0130
#data 0x0000

#align4
loc_8C0CDB60:
#data bank04.loc_8c044F12

loc_8C0CDB64:
#data loc_8c0cDA1a

loc_8C0CDB68:
#data bank15.loc_8c15c81c

loc_8C0CDB6C:
#data bank15.loc_8c15c82c

loc_8C0CDB70:
#data bank12.loc_8c129560

loc_8C0CDB74:
#data bank12.loc_8c1294C8

loc_8C0CDB78:
#data bank03.loc_8c034C38


loc_8C0CDB7C:
mov 0x30,r3 ; r3 set to 0x30

loc_8C0CDB7E:
lds r3,fpul 	
mov r14,r4
fmov.s @r1,fr2
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
mov.l @(loc_8C0CDD04,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
float fpul,fr3
fadd fr3,fr2
fmov.s fr2,@r1
mov.l @(0x18,r14),r6
lds.l @r15+,pr 	
mov.w @(0x1C,r6),r0 	
mov r0,r6
jmp @r3
mov.l @r15+,r14

loc_8C0CDB9A:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0CDCF8,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0CDCF8,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0CDD08,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0CDCFA,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r14),r4
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C0CDCFC,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0CDCFE,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CDD0C,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov 0x0E,r3 ; r3 set to 0x0e
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0CDCFC,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r14),r2
mov 0x26,r5 ; r5 set to 0x26
fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
mov 0x60,r0 ; r0 set to 0x60
mov.l @(loc_8C0CDD10,pc),r3 ; r3 set to 0x8C042008
fmov.s fr3,@(r0,r14) 	
mov 0x78,r0 ; r0 set to 0x78
mov.w r0,@(0x1C,r14) 	
jsr @r3
mov.l @(0x18,r14),r4
lds.l @r15+,pr 	
mov.l @(loc_8C0CDD04,pc),r2 ; r2 set to 0x8C034C38
mov r14,r4
mov 0x09,r6 ; r6 set to 0x09
mov 0x1B,r5 ; r5 set to 0x1b
jmp @r2
mov.l @r15+,r14

loc_8C0CDC3C:
mov.l r8,@-r15
mov.w @(loc_8C0CDCF8,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0CDD08,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.w @(loc_8C0CDCF8,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0CDCFA,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r4),r5
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0CDCFC,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0CDCFE,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CDD0C,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x0F,r3 ; r3 set to 0x0f
mov 0x34,r8 ; r8 set to 0x34
mov.b r2,@(r0,r4) 	
mov.w @(loc_8C0CDCFC,pc),r0 ; r0 set to 0x12c
mov.b r6,@(r0,r4) 	
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
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0CDD00,pc),r0 ; r0 set to 0x130
mov.l @(0x18,r4),r3
mov.w @(r0,r3),r2
tst r2,r2
bt/s loc_8C0CDCCe
add r4,r8 ; r8 ??? bc r4 is ???	
mov.l @(loc_8C0CDD14,pc),r1 ; r1 set to 0x42DC0000
lds r1,fpul 	
bra loc_8C0CDCD4
fsts fpul,fr3

loc_8C0CDCCE:
mov.l @(loc_8C0CDD18,pc),r2 ; r2 set to 0xC2DC0000
lds r2,fpul 	
fsts fpul,fr3

loc_8C0CDCD4:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(loc_8C0CDD1C,pc),r1 ; r1 set to 0x41892492, r1 set to 0x41892492
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
fadd fr3,fr2
mov.l @(loc_8C0CDD04,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
lds r1,fpul 	
mov 0x0A,r6 ; r6 set to 0x0A, r6 set to 0x0a
fmov.s fr2,@r8
fmov.s @(r0,r4),fr2
fsts fpul,fr3
fsub fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x78,r0 ; r0 set to 0x78, r0 set to 0x78
mov.w r0,@(0x1C,r4) 	
lds.l @r15+,pr 	
jmp @r3
mov.l @r15+,r8

loc_8C0CDCF8:
#data 0x00Dc

loc_8C0CDCFA:
#data 0x00C0

loc_8C0CDCFC:
#data 0x012c

loc_8C0CDCFE:
#data 0x01A3

loc_8C0CDD00:
#data 0x0130
#data 0x0000

#align4
loc_8C0CDD04:
#data bank03.loc_8c034C38

loc_8C0CDD08:
#data bank12.loc_8c129560

loc_8C0CDD0C:
#data bank12.loc_8c1294C8

loc_8C0CDD10:
#data bank04.loc_8c042008

loc_8C0CDD14:
#data 0x42DC0000

#align4
loc_8C0CDD18:
#data 0xC2DC0000

#align4
loc_8C0CDD1C:
#data 0x41892492


loc_8C0CDD20:
mov.l r8,@-r15
mov.w @(loc_8C0CDE72,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0CDE80,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.w @(loc_8C0CDE72,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0CDE74,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r4),r5
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0CDE76,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0CDE78,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CDE84,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x0F,r3 ; r3 set to 0x0f
mov 0x34,r8 ; r8 set to 0x34
mov.b r2,@(r0,r4) 	
mov.w @(loc_8C0CDE76,pc),r0 ; r0 set to 0x12c
mov.b r6,@(r0,r4) 	
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
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0CDE7A,pc),r0 ; r0 set to 0x130
mov.l @(0x18,r4),r3
mov.w @(r0,r3),r2
tst r2,r2
bt/s loc_8C0CDDB2
add r4,r8 ; r8 ??? bc r4 is ???	
mov.l @(loc_8C0CDE88,pc),r1 ; r1 set to 0xC32F0000
lds r1,fpul 	
bra loc_8C0CDDB8
fsts fpul,fr3

loc_8C0CDDB2:
mov.l @(loc_8C0CDE8C,pc),r2 ; r2 set to 0x432F0000
lds r2,fpul 	
fsts fpul,fr3

loc_8C0CDDB8:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(loc_8C0CDE90,pc),r1 ; r1 set to 0x41892492, r1 set to 0x41892492
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
fadd fr3,fr2
mov.l @(loc_8C0CDE94,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
lds r1,fpul 	
mov 0x0A,r6 ; r6 set to 0x0A, r6 set to 0x0a
fmov.s fr2,@r8
fmov.s @(r0,r4),fr2
fsts fpul,fr3
fsub fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x78,r0 ; r0 set to 0x78, r0 set to 0x78
mov.w r0,@(0x1C,r4) 	
lds.l @r15+,pr 	
jmp @r3
mov.l @r15+,r8

loc_8C0CDDDC:
mov.w @(loc_8C0CDE72,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0CDE80,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.w @(loc_8C0CDE72,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0CDE74,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r4),r5
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0CDE76,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0CDE78,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CDE84,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
fldi1 fr3
mov.b @(r0,r5),r2
mov 0x00,r3 ; r3 set to 0x00
mov 0x1B,r5 ; r5 set to 0x1b
mov.b r2,@(r0,r4) 	
mov.w @(loc_8C0CDE76,pc),r0 ; r0 set to 0x12c
mov.b r6,@(r0,r4) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r4) 	
mov 0x0E,r6 ; r6 set to 0x0e
mov.w @(loc_8C0CDE7C,pc),r0 ; r0 set to 0x108
fmov.s fr3,@(r0,r4) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???	
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
mov.l @(loc_8C0CDE94,pc),r3 ; r3 set to 0x8C034C38
fmov.s fr3,@(r0,r4) 	
mova @(loc_8C0CDE98,pc),r0  ; r0 set to 0x8C0CDE98
fmov.s @r0,fr4
mov 0x50,r0 ; r0 set to 0x50
fmov.s fr4,@(r0,r4) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s fr4,@(r0,r4) 	
jmp @r3
lds.l @r15+,pr 	

loc_8C0CDE72:
#data 0x00Dc

loc_8C0CDE74:
#data 0x00C0

loc_8C0CDE76:
#data 0x012c

loc_8C0CDE78:
#data 0x01A3

loc_8C0CDE7A:
#data 0x0130

loc_8C0CDE7C:
#data 0x0108
#data 0x0000

#align4
loc_8C0CDE80:
#data bank12.loc_8c129560

loc_8C0CDE84:
#data bank12.loc_8c1294C8

loc_8C0CDE88:
#data 0xC32F0000

#align4
loc_8C0CDE8C:
#data 0x432F0000

#align4
loc_8C0CDE90:
#data 0x41892492

#align4
loc_8C0CDE94:
#data bank03.loc_8c034C38

loc_8C0CDE98:
#data 0x3F4CCCCd


loc_8C0CDE9C:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.l r8,@-r15
mov.w @(loc_8C0CDF70,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0CDF70,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0CDF7C,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0CDF72,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r14),r4
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C0CDF74,pc),r0 ; r0 set to 0x12c
mov 0x01,r13 ; r13 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r13,@(r0,r14) 	
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
mov.w @(loc_8C0CDF76,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CDF80,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
fldi1 fr4
mov.b @(r0,r4),r2
mov 0x07,r3 ; r3 set to 0x07
mov 0x34,r8 ; r8 set to 0x34
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0CDF74,pc),r0 ; r0 set to 0x12c
mov.b r13,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0CDF78,pc),r0 ; r0 set to 0x108
fmov.s fr4,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???	
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0CDF7A,pc),r0 ; r0 set to 0x130
mov.l @(0x18,r14),r3
mov.w @(r0,r3),r2
tst r2,r2
bt/s loc_8C0CDF3a
add r14,r8 ; r8 ??? bc r14 is ???	
mov.l @(loc_8C0CDF84,pc),r1 ; r1 set to 0x43200000
lds r1,fpul 	
bra loc_8C0CDF40
fsts fpul,fr3

loc_8C0CDF3A:
mov.l @(loc_8C0CDF88,pc),r2 ; r2 set to 0xC3200000
lds r2,fpul 	
fsts fpul,fr3

loc_8C0CDF40:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
mov.l @(loc_8C0CDF8C,pc),r3 ; r3 set to 0x8C03544C, r3 set to 0x8C03544c
mov 0x04,r6 ; r6 set to 0x04, r6 set to 0x04
fadd fr3,fr2
mov 0x01,r7 ; r7 set to 0x01, r7 set to 0x01
fmov.s fr2,@r8
fmov.s fr4,@(r0,r14) 	
jsr @r3
mov r6,r5 ; r5 set to 0x04, r5 set to 0x04
mov.l @(loc_8C0CDF90,pc),r2 ; r2 set to 0x8C034C38, r2 set to 0x8C034C38
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
mov 0x0B,r6 ; r6 set to 0x0B, r6 set to 0x0b
jsr @r2
mov r14,r4
mov.l @(loc_8C0CDF94,pc),r3 ; r3 set to 0x8C104434, r3 set to 0x8C104434
jsr @r3
mov r14,r4
mov.b r13,@r14
lds.l @r15+,pr 	
mov.l @r15+,r8
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0CDF70:
#data 0x00Dc

loc_8C0CDF72:
#data 0x00C0

loc_8C0CDF74:
#data 0x012c

loc_8C0CDF76:
#data 0x01A3

loc_8C0CDF78:
#data 0x0108

loc_8C0CDF7A:
#data 0x0130

#align4
loc_8C0CDF7C:
#data bank12.loc_8c129560

loc_8C0CDF80:
#data bank12.loc_8c1294C8

loc_8C0CDF84:
#data 0x43200000

#align4
loc_8C0CDF88:
#data 0xC3200000

#align4
loc_8C0CDF8C:
#data bank03.loc_8c03544c

loc_8C0CDF90:
#data bank03.loc_8c034C38

loc_8C0CDF94:
#data bank10.loc_8c104434


loc_8C0CDF98:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r8,@-r15
mov.w @(loc_8C0CE07E,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0CE07E,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0CE08C,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0CE080,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r14),r13
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0CE082,pc),r0 ; r0 set to 0x12c
mov 0x01,r12 ; r12 set to 0x01
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
mov.w @(loc_8C0CE084,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CE090,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
fldi1 fr4
mov.b @(r0,r13),r2
mov 0x07,r3 ; r3 set to 0x07
mov 0x34,r8 ; r8 set to 0x34
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0CE082,pc),r0 ; r0 set to 0x12c
mov.b r12,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0CE086,pc),r0 ; r0 set to 0x108
fmov.s fr4,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???	
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0CE088,pc),r0 ; r0 set to 0x130
mov.l @(0x18,r14),r3
mov.w @(r0,r3),r2
tst r2,r2
bt/s loc_8C0CE038
add r14,r8 ; r8 ??? bc r14 is ???	
mov.l @(loc_8C0CE094,pc),r1 ; r1 set to 0x43200000
lds r1,fpul 	
bra loc_8C0CE03e
fsts fpul,fr3

loc_8C0CE038:
mov.l @(loc_8C0CE098,pc),r2 ; r2 set to 0xC3200000
lds r2,fpul 	
fsts fpul,fr3

loc_8C0CE03E:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
mov 0x03,r6 ; r6 set to 0x03, r6 set to 0x03
mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
mov.l @(loc_8C0CE09C,pc),r3 ; r3 set to 0x8C03544C, r3 set to 0x8C03544c
fadd fr3,fr2
mov r6,r5 ; r5 set to 0x03, r5 set to 0x03
mov 0x01,r7 ; r7 set to 0x01, r7 set to 0x01
fmov.s fr2,@r8
fmov.s fr4,@(r0,r14) 	
jsr @r3
mov r13,r4
mov.l @(loc_8C0CE09C,pc),r2 ; r2 set to 0x8C03544C, r2 set to 0x8C03544c
mov 0x05,r6 ; r6 set to 0x05, r6 set to 0x05
mov 0x01,r7 ; r7 set to 0x01, r7 set to 0x01
mov r6,r5 ; r5 set to 0x05, r5 set to 0x05
jsr @r2
mov r13,r4
mov.l @(loc_8C0CE0A0,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
mov 0x0C,r6 ; r6 set to 0x0C, r6 set to 0x0c
jsr @r3
mov r14,r4
mov.l @(loc_8C0CE0A4,pc),r2 ; r2 set to 0x8C104434, r2 set to 0x8C104434
jsr @r2
mov r14,r4
mov.b r12,@r14
lds.l @r15+,pr 	
mov.l @r15+,r8
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0CE07E:
#data 0x00Dc

loc_8C0CE080:
#data 0x00C0

loc_8C0CE082:
#data 0x012c

loc_8C0CE084:
#data 0x01A3

loc_8C0CE086:
#data 0x0108

loc_8C0CE088:
#data 0x0130
#data 0x0000

#align4
loc_8C0CE08C:
#data bank12.loc_8c129560

loc_8C0CE090:
#data bank12.loc_8c1294C8

loc_8C0CE094:
#data 0x43200000

#align4
loc_8C0CE098:
#data 0xC3200000

#align4
loc_8C0CE09C:
#data bank03.loc_8c03544c

loc_8C0CE0A0:
#data bank03.loc_8c034C38

loc_8C0CE0A4:
#data bank10.loc_8c104434


loc_8C0CE0A8:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.l r8,@-r15
mov.w @(loc_8C0CE214,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0CE214,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0CE220,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0CE216,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r14),r4
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C0CE218,pc),r0 ; r0 set to 0x12c
mov 0x01,r13 ; r13 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r13,@(r0,r14) 	
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
mov.w @(loc_8C0CE21A,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CE224,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
fldi1 fr4
mov.b @(r0,r4),r2
mov 0x07,r3 ; r3 set to 0x07
mov 0x34,r8 ; r8 set to 0x34
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0CE218,pc),r0 ; r0 set to 0x12c
mov.b r13,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0CE21C,pc),r0 ; r0 set to 0x108
fmov.s fr4,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???	
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0CE21E,pc),r0 ; r0 set to 0x130
mov.l @(0x18,r14),r3
mov.w @(r0,r3),r2
tst r2,r2
bt/s loc_8C0CE146
add r14,r8 ; r8 ??? bc r14 is ???	
mov.l @(loc_8C0CE228,pc),r1 ; r1 set to 0x43200000
lds r1,fpul 	
bra loc_8C0CE14c
fsts fpul,fr3

loc_8C0CE146:
mov.l @(loc_8C0CE22C,pc),r2 ; r2 set to 0xC3200000
lds r2,fpul 	
fsts fpul,fr3

loc_8C0CE14C:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
mov.l @(loc_8C0CE230,pc),r3 ; r3 set to 0x8C03544C, r3 set to 0x8C03544c
mov 0x06,r6 ; r6 set to 0x06, r6 set to 0x06
fadd fr3,fr2
mov 0x01,r7 ; r7 set to 0x01, r7 set to 0x01
fmov.s fr2,@r8
fmov.s fr4,@(r0,r14) 	
jsr @r3
mov r6,r5 ; r5 set to 0x06, r5 set to 0x06
mov.l @(loc_8C0CE234,pc),r2 ; r2 set to 0x8C034C38, r2 set to 0x8C034C38
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
mov 0x0D,r6 ; r6 set to 0x0D, r6 set to 0x0d
jsr @r2
mov r14,r4
mov.l @(loc_8C0CE238,pc),r3 ; r3 set to 0x8C104434, r3 set to 0x8C104434
jsr @r3
mov r14,r4
mov.b r13,@r14
lds.l @r15+,pr 	
mov.l @r15+,r8
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0CE17C:
mov.l r8,@-r15
mov.w @(loc_8C0CE214,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0CE220,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.w @(loc_8C0CE214,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0CE216,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r4),r5
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0CE218,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0CE21A,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CE224,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
fldi1 fr3
mov.b @(r0,r5),r2
mov 0x00,r3 ; r3 set to 0x00
mov 0x34,r8 ; r8 set to 0x34
mov.b r2,@(r0,r4) 	
mov.w @(loc_8C0CE218,pc),r0 ; r0 set to 0x12c
mov.b r6,@(r0,r4) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r4) 	
mov.w @(loc_8C0CE21C,pc),r0 ; r0 set to 0x108
fmov.s fr3,@(r0,r4) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???	
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0CE21E,pc),r0 ; r0 set to 0x130
mov.l @(0x18,r4),r3
mov.w @(r0,r3),r2
tst r2,r2
bt/s loc_8C0CE23c
add r4,r8 ; r8 ??? bc r4 is ???	
mov.l @(loc_8C0CE228,pc),r1 ; r1 set to 0x43200000
lds r1,fpul 	
bra loc_8C0CE242
fsts fpul,fr3

loc_8C0CE214:
#data 0x00Dc

loc_8C0CE216:
#data 0x00C0

loc_8C0CE218:
#data 0x012c

loc_8C0CE21A:
#data 0x01A3

loc_8C0CE21C:
#data 0x0108

loc_8C0CE21E:
#data 0x0130

#align4
loc_8C0CE220:
#data bank12.loc_8c129560

loc_8C0CE224:
#data bank12.loc_8c1294C8

loc_8C0CE228:
#data 0x43200000

#align4
loc_8C0CE22C:
#data 0xC3200000

#align4
loc_8C0CE230:
#data bank03.loc_8c03544c

loc_8C0CE234:
#data bank03.loc_8c034C38

loc_8C0CE238:
#data bank10.loc_8c104434


loc_8C0CE23C:
mov.l @(loc_8C0CE368,pc),r2 ; r2 set to 0xC3200000
lds r2,fpul 	
fsts fpul,fr3

loc_8C0CE242:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
mova @(loc_8C0CE36C,pc),r0  ; r0 init to 0x8C0CE36C, r0 init to 0x8C0CE36c
mov.l @(loc_8C0CE370,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
fadd fr3,fr2
mov 0x0E,r6 ; r6 set to 0x0E, r6 set to 0x0e
fmov.s fr2,@r8
fmov.s @r0,fr4
mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
fmov.s fr4,@(r0,r4) 	
mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
fmov.s fr4,@(r0,r4) 	
lds.l @r15+,pr 	
jmp @r3
mov.l @r15+,r8

loc_8C0CE260:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x01,r14),r0 	
mov.l @(0x18,r14),r3
mov r0,r2
mov.b @(0x01,r3),r0 	
cmp/eq r0,r2
bt loc_8C0CE276
mov r14,r4
bra loc_8C0CE620
mov.l @r15+,r14

loc_8C0CE276:
mov 0x20,r0 ; r0 set to 0x20
mov r14,r4
mov.b @(r0,r14),r3
mov.l @(loc_8C0CE374,pc),r0 ; r0 set to 0x8C15C854
extu.b r3,r3
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

#align4
loc_8C0CE288:
#data 0x4F222FE6
#data 0x6E437FFc
#data 0xD13953E6
#data 0x84E52F32
#data 0x4008600c
#data 0x430B031e
#data 0x915E64E3
#data 0x001C60F2
#data 0x881E600c
#data 0x84E48905
#data 0x7001E300
#data 0x905580E4
#data 0x0E34

loc_8C0CE2BA:
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0CE2C2:
#data 0x2FE6
#data 0x914E6E43
#data 0x4F222FD6
#data 0xDD2850E6
#data 0x8802001c
#data 0xE51B8B03
#data 0x4D0BE611
#data 0x64E3

loc_8C0CE2DE:
#data 0x9142
#data 0x001C50E6
#data 0x8B038803
#data 0xE612E51b
#data 0x64E34D0b

#align4
loc_8C0CE2F0:
#data 0x50E69139
#data 0x8804001c
#data 0xE51B8B03
#data 0x4D0BE613
#data 0x64E3

loc_8C0CE302:
#data 0x9130
#data 0x001C50E6
#data 0x8B038805
#data 0xE614E51b
#data 0x64E34D0b

#align4
loc_8C0CE314:
#data 0x50E69127
#data 0x8806001c
#data 0xE51B8B03
#data 0x4D0BE615
#data 0x64E3

loc_8C0CE326:
#data 0x911e
#data 0x001C50E6
#data 0x8B038807
#data 0xE615E51b
#data 0x64E34D0b

#align4
loc_8C0CE338:
#data 0x50E69115
#data 0x8808001c
#data 0xE51B8B03
#data 0x4D0BE616
#data 0x64E3

loc_8C0CE34A:
#data 0x910c
#data 0x001C50E6
#data 0x8B028809
#data 0x700184E4
#data 0x80E4

loc_8C0CE35A:
#data 0x4F26
#data 0x000B6DF6
#data 0x01D06EF6
#data 0x0141012c

#align4
loc_8C0CE368:
#data 0xC3200000

#align4
loc_8C0CE36C:
#data 0x3F4CCCCd

#align4
loc_8C0CE370:
#data bank03.loc_8c034C38

loc_8C0CE374:
#data bank15.loc_8c15c854

loc_8C0CE378:
#data bank15.loc_8c15c87c


loc_8C0CE37C:
mov r4,r3
mov.l @(loc_8C0CE4A4,pc),r1 ; r1 set to 0x8C15C880
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CE38E:
#data 0x2FE6
#data 0xD3454F22
#data 0x6E43430b
#data 0x02EC9080
#data 0x89024211
#data 0x700184E4
#data 0x80E4

loc_8C0CE3A6:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0CE3AC:
mov r4,r3
mov.l @(loc_8C0CE4AC,pc),r1 ; r1 set to 0x8C15C884
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CE3BE:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0CE4A8,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r4,r14
mov.w @(loc_8C0CE49E,pc),r0 ; r0 set to 0x130
mov 0x34,r1 ; r1 set to 0x34
mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???	
mov.w @(r0,r3),r2
tst r2,r2
bt/s loc_8C0CE3Da
add r14,r1 ; r1 ??? bc r14 is ???	
bra loc_8C0CE3Dc
mov 0x12,r2

loc_8C0CE3DA:
#data 0xE2Ee

#align4
loc_8C0CE3DC:
#data 0xE060425a
#data 0xD333F218
#data 0xF230F32d
#data 0xF3E6F12a
#data 0xFE37E038
#data 0x50076032
#data 0x8B06C801
#data 0xE038D12e
#data 0x415AF2E6
#data 0xF230F30d
#data 0xFE27

loc_8C0CE406:
#data 0x85Ee
#data 0x81EE70Ff
#data 0x600F7001
#data 0x8B052008
#data 0xE30084E4
#data 0x80E47001
#data 0x0E349040

#align4
loc_8C0CE420:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0CE426:
mov r4,r3
mov.l @(loc_8C0CE4B8,pc),r1 ; r1 set to 0x8C15C888
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CE438:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0CE4A8,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r4,r14
mov.w @(loc_8C0CE49E,pc),r0 ; r0 set to 0x130
mov 0x34,r1 ; r1 set to 0x34
mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???	
mov.w @(r0,r3),r2
tst r2,r2
bt/s loc_8C0CE454
add r14,r1 ; r1 ??? bc r14 is ???	
bra loc_8C0CE456
mov 0x12,r2

loc_8C0CE454:
#data 0xE2Ee

loc_8C0CE456:
#data 0x425a
#data 0x9322E048
#data 0xF32DF218
#data 0xF12AF230
#data 0x323C02Ee
#data 0x85EE0E26
#data 0x81EE70Ff
#data 0x600F7001
#data 0x8B052008
#data 0xE20084E4
#data 0x80E47001
#data 0x0E24900e

#align4
loc_8C0CE484:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0CE48A:
mov r4,r3
mov.l @(loc_8C0CE4BC,pc),r1 ; r1 set to 0x8C15C88c
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x0143

loc_8C0CE49E:
#data 0x0130
#data 0x2000012c

#align4
loc_8C0CE4A4:
#data bank15.loc_8c15c880

loc_8C0CE4A8:
#data bank03.loc_8c034D8c

loc_8C0CE4AC:
#data bank15.loc_8c15c884
#data 0x8C26823c
#data 0x40400000

#align4
loc_8C0CE4B8:
#data bank15.loc_8c15c888

loc_8C0CE4BC:
#data bank15.loc_8c15c88c

loc_8C0CE4C0:
#data 0x4F222FE6
#data 0x430BD350
#data 0xD1506E43
#data 0x415A9096
#data 0xF30DF2E6
#data 0xFE27F231
#data 0xF28DF1E6
#data 0x8B00F215
#data 0xFE27

loc_8C0CE4E2:
#data 0x908c
#data 0x431103Ec
#data 0x84E48905
#data 0x7001E300
#data 0x908580E4
#data 0x0E34

loc_8C0CE4F6:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0CE4FC:
mov.l r14,@-r15
mov r4,r14
mov.l @(loc_8C0CE610,pc),r1 ; r1 set to 0x8C15C890
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(0x05,r14),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jsr @r3
mov.l @(0x18,r14),r13
mov.w @(loc_8C0CE602,pc),r0 ; r0 set to 0x1D0
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
extu.b r0,r0
cmp/eq 0x16,r0 	
bt loc_8C0CE536
mov.b @(0x04,r14),r0 	
mov 0x00,r3 ; r3 set to 0x00
mov r13,r4
mov r3,r5 ; r5 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0CE600,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
lds.l @r15+,pr 	
mov.l @(loc_8C0CE614,pc),r3 ; r3 set to 0x8C035162
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0CE536:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0CE53E:
mov.l @(loc_8C0CE608,pc),r3 ; r3 set to 0x8C034D8c
jmp @r3
nop 	

loc_8C0CE544:
mov.l r14,@-r15
mov r4,r14
mov.l @(loc_8C0CE618,pc),r1 ; r1 set to 0x8C15C894
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(0x05,r14),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jsr @r3
mov.l @(0x18,r14),r13
mov.w @(loc_8C0CE602,pc),r0 ; r0 set to 0x1D0
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
extu.b r0,r0
cmp/eq 0x16,r0 	
bt loc_8C0CE57e
mov.b @(0x04,r14),r0 	
mov 0x00,r3 ; r3 set to 0x00
mov r13,r4
mov r3,r5 ; r5 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0CE600,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
lds.l @r15+,pr 	
mov.l @(loc_8C0CE614,pc),r3 ; r3 set to 0x8C035162
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0CE57E:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0CE586:
mov.l @(loc_8C0CE608,pc),r3 ; r3 set to 0x8C034D8c
jmp @r3
nop 	

loc_8C0CE58C:
mov.l r14,@-r15
mov r4,r14
mov.l @(loc_8C0CE61C,pc),r1 ; r1 set to 0x8C15C898
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(0x05,r14),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jsr @r3
mov.l @(0x18,r14),r13
mov.w @(loc_8C0CE602,pc),r0 ; r0 set to 0x1D0
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
extu.b r0,r0
cmp/eq 0x16,r0 	
bt loc_8C0CE5C6
mov.b @(0x04,r14),r0 	
mov 0x00,r3 ; r3 set to 0x00
mov r13,r4
mov r3,r5 ; r5 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0CE600,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
lds.l @r15+,pr 	
mov.l @(loc_8C0CE614,pc),r3 ; r3 set to 0x8C035162
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0CE5C6:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0CE5CE:
#data 0x9019
#data 0x8801004c
#data 0x84458B05
#data 0x7001E300
#data 0x90118045
#data 0x0434

loc_8C0CE5E2:
#data 0xD309
#data 0x0009432b


loc_8C0CE5E8:
mov.l @(loc_8C0CE608,pc),r3 ; r3 set to 0x8C034D8c
jmp @r3
nop 	

loc_8C0CE5EE:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0CE600,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------
#data 0x01430108

loc_8C0CE600:
#data 0x012c

loc_8C0CE602:
#data 0x01D0
#data 0x00000141

#align4
loc_8C0CE608:
#data bank03.loc_8c034D8c
#data 0x3CA3D70a

#align4
loc_8C0CE610:
#data bank15.loc_8c15c890

loc_8C0CE614:
#data bank03.loc_8c035162

loc_8C0CE618:
#data bank15.loc_8c15c894

loc_8C0CE61C:
#data bank15.loc_8c15c898


loc_8C0CE620:
mov.l @(loc_8C0CE628,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x0000

#align4
loc_8C0CE628:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0xE600D346
#data 0x2F501F41
#data 0x430BE503
#data 0x20086463
#data 0x64038D07
#data 0xE020D342
#data 0x52F11434
#data 0x63F01426
#data 0x7F080434
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0CE65A:
#data 0x4F22
#data 0x2F427FF8
#data 0x00096053
#data 0xE503D339
#data 0xE60080F4
#data 0x6463430b
#data 0x8D0B2008
#data 0xD3366403
#data 0x314CE120
#data 0x62F21434
#data 0x14365326
#data 0x142562F2
#data 0x210084F4

#align4
loc_8C0CE68C:
#data 0x4F267F08
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0CE694:
mov r4,r3
mov.l @(loc_8C0CE754,pc),r1 ; r1 set to 0x8C15C8A0
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CE6A6:
mov 0x20,r0 ; r0 set to 0x20
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(loc_8C0CE758,pc),r0 ; r0 set to 0x8C15C8B0
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

loc_8C0CE6BA:
mov.w @(loc_8C0CE740,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0CE75C,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.w @(loc_8C0CE740,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0CE742,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r4),r5
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0CE744,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0CE746,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CE760,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x1B,r5 ; r5 set to 0x1b
mov.b r2,@(r0,r4) 	
mova @(loc_8C0CE764,pc),r0  ; r0 set to 0x8C0CE764
fmov.s @r0,fr3 ; r3 ??	
mov.w @(loc_8C0CE748,pc),r0 ; r0 set to 0x108
fmov.s fr3,@(r0,r4) 	
add 0x24,r0 ; r0 set to 0x12c
mov.b r6,@(r0,r4) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r4),r3
mov 0x00,r6 ; r6 set to 0x00
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
mov.l @(loc_8C0CE768,pc),r3 ; r3 set to 0x8C034C38
fmov.s fr3,@(r0,r4) 	
jmp @r3
lds.l @r15+,pr 	

loc_8C0CE740:
#data 0x00Dc

loc_8C0CE742:
#data 0x00C0

loc_8C0CE744:
#data 0x012c

loc_8C0CE746:
#data 0x01A3

loc_8C0CE748:
#data 0x0108
#data 0x0000

#align4
loc_8C0CE74C:
#data bank04.loc_8c044F12

loc_8C0CE750:
#data loc_8c0cE694

loc_8C0CE754:
#data bank15.loc_8c15c8A0

loc_8C0CE758:
#data bank15.loc_8c15c8B0

loc_8C0CE75C:
#data bank12.loc_8c129560

loc_8C0CE760:
#data bank12.loc_8c1294C8

loc_8C0CE764:
#data 0x3F000000

#align4
loc_8C0CE768:
#data bank03.loc_8c034C38


loc_8C0CE76C:
mov.w @(loc_8C0CE8CC,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0CE8D8,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.w @(loc_8C0CE8CC,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0CE8CE,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r4),r5
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0CE8D0,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0CE8D2,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CE8DC,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x1B,r5 ; r5 set to 0x1b
mov.b r2,@(r0,r4) 	
mov.w @(loc_8C0CE8D0,pc),r0 ; r0 set to 0x12c
mov.b r6,@(r0,r4) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???	
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
mov.l @(loc_8C0CE8E0,pc),r3 ; r3 set to 0x8C034C38
fmov.s fr3,@(r0,r4) 	
jmp @r3
lds.l @r15+,pr 	

loc_8C0CE7E8:
mov.l r8,@-r15
mov.w @(loc_8C0CE8CC,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0CE8D8,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.w @(loc_8C0CE8CC,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0CE8CE,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r4),r5
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0CE8D0,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0CE8D2,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CE8DC,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x00,r3 ; r3 set to 0x00
mov.b r2,@(r0,r4) 	
mov.w @(loc_8C0CE8D0,pc),r0 ; r0 set to 0x12c
mov.b r6,@(r0,r4) 	
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
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r4),r3
mov r0,r8 ; r8 set to 0x34
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0CE8D4,pc),r0 ; r0 set to 0x130
mov.l @(0x18,r4),r3
mov.w @(r0,r3),r2
tst r2,r2
bt/s loc_8C0CE882
add r4,r8 ; r8 ??? bc r4 is ???	
mov.l @(loc_8C0CE8E4,pc),r1 ; r1 set to 0x43C80000
lds r1,fpul 	
bra loc_8C0CE888
fsts fpul,fr3

loc_8C0CE882:
mov.l @(loc_8C0CE8E8,pc),r2 ; r2 set to 0xC3C80000
lds r2,fpul 	
fsts fpul,fr3

loc_8C0CE888:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
fadd fr3,fr2
fmov.s fr2,@r8
mov 0x34,r8 ; r8 set to 0x34, r8 set to 0x34
mov.l @(0x18,r4),r3
mov.w @(r0,r3),r2
tst r2,r2
bt/s loc_8C0CE8A2
add r4,r8 ; r8 ??? bc r4 is ???, r8 ??? bc r4 is ???	
mov.l @(loc_8C0CE8EC,pc),r1 ; r1 set to 0xC2D55555, r1 set to 0xC2D55555
lds r1,fpul 	
bra loc_8C0CE8A8
fsts fpul,fr3

loc_8C0CE8A2:
mov.l @(loc_8C0CE8F0,pc),r2 ; r2 set to 0x42D55555
lds r2,fpul 	
fsts fpul,fr3

loc_8C0CE8A8:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(loc_8C0CE8F4,pc),r1 ; r1 set to 0x4391B6DB, r1 set to 0x4391B6Db
fadd fr3,fr2
lds r1,fpul 	
fmov.s fr2,@r8
fmov.s @(r0,r4),fr2
fsts fpul,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov.w @(loc_8C0CE8D4,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.l @(0x18,r4),r3
mov.w @(r0,r3),r2
tst r2,r2
bt/s loc_8C0CE8F8
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
bra loc_8C0CE8Fa
mov 0x02,r6

loc_8C0CE8CC:
#data 0x00Dc

loc_8C0CE8CE:
#data 0x00C0

loc_8C0CE8D0:
#data 0x012c

loc_8C0CE8D2:
#data 0x01A3

loc_8C0CE8D4:
#data 0x0130
#data 0x0000

#align4
loc_8C0CE8D8:
#data bank12.loc_8c129560

loc_8C0CE8DC:
#data bank12.loc_8c1294C8

loc_8C0CE8E0:
#data bank03.loc_8c034C38

loc_8C0CE8E4:
#data 0x43C80000

#align4
loc_8C0CE8E8:
#data 0xC3C80000

#align4
loc_8C0CE8EC:
#data 0xC2D55555

#align4
loc_8C0CE8F0:
#data 0x42D55555

#align4
loc_8C0CE8F4:
#data 0x4391B6Db


loc_8C0CE8F8:
mov 0x03,r6 ; r6 set to 0x03

loc_8C0CE8FA:
lds.l @r15+,pr 	
mov.l @(loc_8C0CE9F0,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
jmp @r3
mov.l @r15+,r8

loc_8C0CE902:
mov.l r8,@-r15
mov.w @(loc_8C0CE9E6,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0CE9F4,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.w @(loc_8C0CE9E6,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0CE9E8,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r4),r5
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0CE9EA,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0CE9EC,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CE9F8,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x00,r3 ; r3 set to 0x00
mov 0x34,r8 ; r8 set to 0x34
mov.b r2,@(r0,r4) 	
mov.w @(loc_8C0CE9EA,pc),r0 ; r0 set to 0x12c
mov.b r6,@(r0,r4) 	
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
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0CE9EE,pc),r0 ; r0 set to 0x130
mov.l @(0x18,r4),r3
mov.w @(r0,r3),r2
tst r2,r2
bt/s loc_8C0CE994
add r4,r8 ; r8 ??? bc r4 is ???	
mov.l @(loc_8C0CE9FC,pc),r1 ; r1 set to 0x43C80000
lds r1,fpul 	
bra loc_8C0CE99a
fsts fpul,fr3

loc_8C0CE994:
mov.l @(loc_8C0CEA00,pc),r2 ; r2 set to 0xC3C80000
lds r2,fpul 	
fsts fpul,fr3

loc_8C0CE99A:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
fadd fr3,fr2
fmov.s fr2,@r8
mov 0x34,r8 ; r8 set to 0x34, r8 set to 0x34
mov.l @(0x18,r4),r3
mov.w @(r0,r3),r2
tst r2,r2
bt/s loc_8C0CE9B4
add r4,r8 ; r8 ??? bc r4 is ???, r8 ??? bc r4 is ???	
mov.l @(loc_8C0CEA04,pc),r1 ; r1 set to 0xC2D55555, r1 set to 0xC2D55555
lds r1,fpul 	
bra loc_8C0CE9Ba
fsts fpul,fr3

loc_8C0CE9B4:
mov.l @(loc_8C0CEA08,pc),r2 ; r2 set to 0x42D55555
lds r2,fpul 	
fsts fpul,fr3

loc_8C0CE9BA:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(loc_8C0CEA0C,pc),r1 ; r1 set to 0x424DB6DB, r1 set to 0x424DB6Db
fadd fr3,fr2
lds r1,fpul 	
fmov.s fr2,@r8
fmov.s @(r0,r4),fr2
fsts fpul,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov.w @(loc_8C0CE9EE,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r5),r3
tst r3,r3
bt/s loc_8C0CE9Dc
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
bra loc_8C0CE9De
mov 0x05,r6

loc_8C0CE9DC:
mov 0x06,r6 ; r6 set to 0x06

loc_8C0CE9DE:
lds.l @r15+,pr 	
mov.l @(loc_8C0CE9F0,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
jmp @r3
mov.l @r15+,r8

loc_8C0CE9E6:
#data 0x00Dc

loc_8C0CE9E8:
#data 0x00C0

loc_8C0CE9EA:
#data 0x012c

loc_8C0CE9EC:
#data 0x01A3

loc_8C0CE9EE:
#data 0x0130

#align4
loc_8C0CE9F0:
#data bank03.loc_8c034C38

loc_8C0CE9F4:
#data bank12.loc_8c129560

loc_8C0CE9F8:
#data bank12.loc_8c1294C8

loc_8C0CE9FC:
#data 0x43C80000

#align4
loc_8C0CEA00:
#data 0xC3C80000

#align4
loc_8C0CEA04:
#data 0xC2D55555

#align4
loc_8C0CEA08:
#data 0x42D55555

#align4
loc_8C0CEA0C:
#data 0x424DB6Db


loc_8C0CEA10:
mov.l r8,@-r15
mov.w @(loc_8C0CEB1A,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.w @(loc_8C0CEB1A,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(0x18,r4),r5
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0CEB1C,pc),r0 ; r0 set to 0xC0
mov.l @(loc_8C0CEB28,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0CEB1E,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0CEB20,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CEB2C,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x09,r3 ; r3 set to 0x09
mov.b r2,@(r0,r4) 	
mov.w @(loc_8C0CEB1E,pc),r0 ; r0 set to 0x12c
mov.b r6,@(r0,r4) 	
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
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0CEB20,pc),r0 ; r0 set to 0x1A3
mov.l @(0x18,r4),r3
mov.b @(r0,r3),r2
tst r2,r2
bf loc_8C0CEAB2
mov.w @(loc_8C0CEB22,pc),r0 ; r0 set to 0x130
mov 0x34,r8 ; r8 set to 0x34
mov.w @(r0,r4),r3
tst r3,r3
bt/s loc_8C0CEAAa
add r4,r8 ; r8 ??? bc r4 is ???	
mov.l @(loc_8C0CEB30,pc),r1 ; r1 set to 0x433AAAAa
lds r1,fpul 	
bra loc_8C0CEACc
fsts fpul,fr3

loc_8C0CEAAA:
mov.l @(loc_8C0CEB34,pc),r2 ; r2 set to 0xC33AAAAa
lds r2,fpul 	
bra loc_8C0CEACc
fsts fpul,fr3

loc_8C0CEAB2:
mov.w @(loc_8C0CEB22,pc),r0 ; r0 set to 0x130
mov 0x34,r8 ; r8 set to 0x34
mov.w @(r0,r4),r3
tst r3,r3
bt/s loc_8C0CEAC6
add r4,r8 ; r8 ??? bc r4 is ???	
mov.l @(loc_8C0CEB38,pc),r1 ; r1 set to 0x43BAAAAa
lds r1,fpul 	
bra loc_8C0CEACc
fsts fpul,fr3

loc_8C0CEAC6:
mov.l @(loc_8C0CEB3C,pc),r2 ; r2 set to 0xC3BAAAAa
lds r2,fpul 	
fsts fpul,fr3

loc_8C0CEACC:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
mov.w @(loc_8C0CEB22,pc),r0 ; r0 set to 0x130, r0 set to 0x130
fadd fr3,fr2
mov.l @(loc_8C0CEB40,pc),r5 ; r5 set to 0x8C26A518, r5 set to 0x8C26A518
fmov.s fr2,@r8
mov.w @(r0,r4),r3
tst r3,r3
bt loc_8C0CEAF4
mov.w @(loc_8C0CEB24,pc),r0 ; r0 set to 0x8C, r0 set to 0x8c
fmov.s @(r0,r5),fr4
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r4),fr3
fcmp/gt fr4,fr3
bf loc_8C0CEB0a
mova @(loc_8C0CEB44,pc),r0  ; r0 set to 0x8C0CEB44, r0 set to 0x8C0CEB44
fmov.s @r0,fr3
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fadd fr3,fr4
bra loc_8C0CEB0a
fmov.s fr4,@(r0,r4) 	

#align4
loc_8C0CEAF4:
#data 0xF4569017
#data 0xF346E034
#data 0x8B04F435
#data 0xF308C711
#data 0xF430E034
#data 0xF447


loc_8C0CEB0A:
mov.l @(loc_8C0CEB4C,pc),r3 ; r3 set to 0x8C034C38
mov 0x28,r0 ; r0 set to 0x28
mov 0x1B,r5 ; r5 set to 0x1b
mov.w r0,@(0x1C,r4) 	
lds.l @r15+,pr 	
mov 0x04,r6 ; r6 set to 0x04
jmp @r3
mov.l @r15+,r8

loc_8C0CEB1A:
#data 0x00Dc

loc_8C0CEB1C:
#data 0x00C0

loc_8C0CEB1E:
#data 0x012c

loc_8C0CEB20:
#data 0x01A3

loc_8C0CEB22:
#data 0x0130

loc_8C0CEB24:
#data 0x008c
#data 0x0088

#align4
loc_8C0CEB28:
#data bank12.loc_8c129560

loc_8C0CEB2C:
#data bank12.loc_8c1294C8

loc_8C0CEB30:
#data 0x433AAAAa

#align4
loc_8C0CEB34:
#data 0xC33AAAAa

#align4
loc_8C0CEB38:
#data 0x43BAAAAa

#align4
loc_8C0CEB3C:
#data 0xC3BAAAAa

#align4
loc_8C0CEB40:
#data 0x8C26A518

#align4
loc_8C0CEB44:
#data 0xC2A00000
#data 0x42A00000

#align4
loc_8C0CEB4C:
#data bank03.loc_8c034C38


loc_8C0CEB50:
mova @(loc_8C0CEC54,pc),r0  ; r0 init to 0x8C0CEC54
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.w @(loc_8C0CEC4A,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
fmov.s @r0,fr4
add r14,r1 ; r1 ??? bc r14 is ???	
mov.b @(0x04,r14),r0 	
mov.w @(loc_8C0CEC4A,pc),r2 ; r2 set to 0xDc
add 0x01,r0 ; r0 set to 0x8C0CEC55
mov.l @(loc_8C0CEC58,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0CEC4C,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r14),r4
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C0CEC4E,pc),r0 ; r0 set to 0x12c
mov 0x01,r13 ; r13 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r13,@(r0,r14) 	
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
mov.w @(loc_8C0CEC50,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CEC5C,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov 0x0C,r3 ; r3 set to 0x0c
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0CEC4E,pc),r0 ; r0 set to 0x12c
mov.b r13,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0CEC52,pc),r0 ; r0 set to 0x130
mov.l @(0x18,r14),r2
mov.w @(r0,r2),r3 ; r3 ??? bc r2 is ???	
mov.w r3,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r14),r2
fmov.s @(r0,r2),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0CEC52,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt/s loc_8C0CEBEe
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0CEC60,pc),r3 ; r3 set to 0x8C26A5A0
fmov.s @r3,fr3 ; r3 ??	
bra loc_8C0CEBF4
fsub fr4,fr3

loc_8C0CEBEE:
mov.l @(loc_8C0CEC64,pc),r2 ; r2 set to 0x8C26A5A4
fmov.s @r2,fr3
fadd fr4,fr3

loc_8C0CEBF4:
mov.l @(loc_8C0CEC68,pc),r1 ; r1 set to 0x424DB6DB, r1 set to 0x424DB6Db
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
lds r1,fpul 	
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???	
fldi0 fr4
fsts fpul,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
mov.w @(loc_8C0CEC52,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt loc_8C0CEC1c
mova @(loc_8C0CEC6C,pc),r0  ; r0 set to 0x8C0CEC6C, r0 set to 0x8C0CEC6c
bra loc_8C0CEC20
fmov.s @r0,fr2

loc_8C0CEC1C:
mova @(loc_8C0CEC70,pc),r0  ; r0 init to 0x8C0CEC70
fmov.s @r0,fr2

loc_8C0CEC20:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
mov.l @(loc_8C0CEC74,pc),r3 ; r3 set to 0x8C03544C, r3 set to 0x8C03544c
fmov.s fr2,@(r0,r14) 	
mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
mov 0x04,r6 ; r6 set to 0x04, r6 set to 0x04
mov.w r0,@(0x1C,r14) 	
mov 0x01,r7 ; r7 set to 0x01, r7 set to 0x01
jsr @r3
mov r6,r5 ; r5 set to 0x04, r5 set to 0x04
mov.l @(loc_8C0CEC78,pc),r2 ; r2 set to 0x8C104434, r2 set to 0x8C104434
jsr @r2
mov r14,r4
mov.b r13,@r14
mov 0x08,r6 ; r6 set to 0x08, r6 set to 0x08
lds.l @r15+,pr 	
mov.l @(loc_8C0CEC7C,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0CEC4A:
#data 0x00Dc

loc_8C0CEC4C:
#data 0x00C0

loc_8C0CEC4E:
#data 0x012c

loc_8C0CEC50:
#data 0x01A3

loc_8C0CEC52:
#data 0x0130

#align4
loc_8C0CEC54:
#data 0x42555555

#align4
loc_8C0CEC58:
#data bank12.loc_8c129560

loc_8C0CEC5C:
#data bank12.loc_8c1294C8

loc_8C0CEC60:
#data 0x8C26A5A0

#align4
loc_8C0CEC64:
#data 0x8C26A5A4

#align4
loc_8C0CEC68:
#data 0x424DB6Db

#align4
loc_8C0CEC6C:
#data 0x41EFFFFf

#align4
loc_8C0CEC70:
#data 0xC1EFFFFf

#align4
loc_8C0CEC74:
#data bank03.loc_8c03544c

loc_8C0CEC78:
#data bank10.loc_8c104434

loc_8C0CEC7C:
#data bank03.loc_8c034C38


loc_8C0CEC80:
mova @(loc_8C0CED90,pc),r0  ; r0 init to 0x8C0CED90
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.w @(loc_8C0CED86,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
fmov.s @r0,fr4
add r14,r1 ; r1 ??? bc r14 is ???	
mov.b @(0x04,r14),r0 	
mov.w @(loc_8C0CED86,pc),r2 ; r2 set to 0xDc
add 0x01,r0 ; r0 set to 0x8C0CED91
mov.l @(loc_8C0CED94,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0CED88,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r14),r4
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C0CED8A,pc),r0 ; r0 set to 0x12c
mov 0x01,r13 ; r13 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r13,@(r0,r14) 	
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
mov.w @(loc_8C0CED8C,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CED98,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov 0x0D,r3 ; r3 set to 0x0d
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0CED8A,pc),r0 ; r0 set to 0x12c
mov.b r13,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0CED8E,pc),r0 ; r0 set to 0x130
mov.l @(0x18,r14),r2
mov.w @(r0,r2),r3 ; r3 ??? bc r2 is ???	
mov.w r3,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r14),r2
fmov.s @(r0,r2),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0CED8E,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt/s loc_8C0CED1e
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0CED9C,pc),r3 ; r3 set to 0x8C26A5A0
fmov.s @r3,fr3 ; r3 ??	
bra loc_8C0CED24
fsub fr4,fr3

loc_8C0CED1E:
mov.l @(loc_8C0CEDA0,pc),r2 ; r2 set to 0x8C26A5A4
fmov.s @r2,fr3
fadd fr4,fr3

loc_8C0CED24:
mov.l @(loc_8C0CEDA8,pc),r3 ; r3 set to 0x8C26A5A8, r3 set to 0x8C26A5A8
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0CEDA4,pc),r0  ; r0 init to 0x8C0CEDA4, r0 init to 0x8C0CEDA4
fmov.s @r3,fr2 ; r2 ??	
fmov.s @r0,fr3 ; r3 ??, r3 ??	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fldi0 fr4
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
mov.w @(loc_8C0CED8E,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt loc_8C0CED4c
mova @(loc_8C0CEDAC,pc),r0  ; r0 set to 0x8C0CEDAC, r0 set to 0x8C0CEDAc
bra loc_8C0CED50
fmov.s @r0,fr2

loc_8C0CED4C:
mova @(loc_8C0CEDB0,pc),r0  ; r0 init to 0x8C0CEDB0
fmov.s @r0,fr2

loc_8C0CED50:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
mov.l @(loc_8C0CEDB8,pc),r3 ; r3 set to 0x8C03544C, r3 set to 0x8C03544c
fmov.s fr2,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mova @(loc_8C0CEDB4,pc),r0  ; r0 set to 0x8C0CEDB4, r0 set to 0x8C0CEDB4
fmov.s @r0,fr3 ; r3 ??, r3 ??	
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
mov 0x02,r6 ; r6 set to 0x02, r6 set to 0x02
fmov.s fr3,@(r0,r14) 	
mov 0x10,r0 ; r0 set to 0x10, r0 set to 0x10
mov.w r0,@(0x1C,r14) 	
mov 0x01,r7 ; r7 set to 0x01, r7 set to 0x01
jsr @r3
mov r6,r5 ; r5 set to 0x02, r5 set to 0x02
mov.l @(loc_8C0CEDBC,pc),r2 ; r2 set to 0x8C104434, r2 set to 0x8C104434
jsr @r2
mov r14,r4
mov.b r13,@r14
mov 0x0B,r6 ; r6 set to 0x0B, r6 set to 0x0b
lds.l @r15+,pr 	
mov.l @(loc_8C0CEDC0,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0CED86:
#data 0x00Dc

loc_8C0CED88:
#data 0x00C0

loc_8C0CED8A:
#data 0x012c

loc_8C0CED8C:
#data 0x01A3

loc_8C0CED8E:
#data 0x0130

#align4
loc_8C0CED90:
#data 0xC212AAAa

#align4
loc_8C0CED94:
#data bank12.loc_8c129560

loc_8C0CED98:
#data bank12.loc_8c1294C8

loc_8C0CED9C:
#data 0x8C26A5A0

#align4
loc_8C0CEDA0:
#data 0x8C26A5A4

#align4
loc_8C0CEDA4:
#data 0x42092492

#align4
loc_8C0CEDA8:
#data 0x8C26A5A8

#align4
loc_8C0CEDAC:
#data 0x4130AAAa

#align4
loc_8C0CEDB0:
#data 0xC130AAAa

#align4
loc_8C0CEDB4:
#data 0xBF4DB6Db

#align4
loc_8C0CEDB8:
#data bank03.loc_8c03544c

loc_8C0CEDBC:
#data bank10.loc_8c104434

loc_8C0CEDC0:
#data bank03.loc_8c034C38


loc_8C0CEDC4:
mova @(loc_8C0CEEC8,pc),r0  ; r0 init to 0x8C0CEEC8
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.w @(loc_8C0CEEBE,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
fmov.s @r0,fr4
add r14,r1 ; r1 ??? bc r14 is ???	
mov.b @(0x04,r14),r0 	
mov.w @(loc_8C0CEEBE,pc),r2 ; r2 set to 0xDc
add 0x01,r0 ; r0 set to 0x8C0CEEC9
mov.l @(loc_8C0CEECC,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0CEEC0,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r14),r4
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C0CEEC2,pc),r0 ; r0 set to 0x12c
mov 0x01,r13 ; r13 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r13,@(r0,r14) 	
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
mov.w @(loc_8C0CEEC4,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CEED0,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov 0x07,r3 ; r3 set to 0x07
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0CEEC2,pc),r0 ; r0 set to 0x12c
mov.b r13,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0CEEC6,pc),r0 ; r0 set to 0x130
mov.l @(0x18,r14),r2
mov.w @(r0,r2),r3 ; r3 ??? bc r2 is ???	
mov.w r3,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r14),r2
fmov.s @(r0,r2),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0CEEC6,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt/s loc_8C0CEE62
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0CEED4,pc),r3 ; r3 set to 0x8C26A5A0
fmov.s @r3,fr3 ; r3 ??	
bra loc_8C0CEE68
fsub fr4,fr3

loc_8C0CEE62:
mov.l @(loc_8C0CEED8,pc),r2 ; r2 set to 0x8C26A5A4
fmov.s @r2,fr3
fadd fr4,fr3

loc_8C0CEE68:
mov.l @(loc_8C0CEEDC,pc),r1 ; r1 set to 0x41892492, r1 set to 0x41892492
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
lds r1,fpul 	
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???	
fldi0 fr4
fsts fpul,fr3
fsub fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
mov.w @(loc_8C0CEEC6,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt loc_8C0CEE90
mova @(loc_8C0CEEE0,pc),r0  ; r0 set to 0x8C0CEEE0, r0 set to 0x8C0CEEE0
bra loc_8C0CEE94
fmov.s @r0,fr2

loc_8C0CEE90:
mova @(loc_8C0CEEE4,pc),r0  ; r0 init to 0x8C0CEEE4
fmov.s @r0,fr2

loc_8C0CEE94:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
mov.l @(loc_8C0CEEE8,pc),r3 ; r3 set to 0x8C03544C, r3 set to 0x8C03544c
fmov.s fr2,@(r0,r14) 	
mov 0x05,r0 ; r0 set to 0x05, r0 set to 0x05
mov 0x02,r6 ; r6 set to 0x02, r6 set to 0x02
mov.w r0,@(0x1C,r14) 	
mov 0x01,r7 ; r7 set to 0x01, r7 set to 0x01
jsr @r3
mov r6,r5 ; r5 set to 0x02, r5 set to 0x02
mov.l @(loc_8C0CEEEC,pc),r2 ; r2 set to 0x8C104434, r2 set to 0x8C104434
jsr @r2
mov r14,r4
mov.b r13,@r14
mov 0x07,r6 ; r6 set to 0x07, r6 set to 0x07
lds.l @r15+,pr 	
mov.l @(loc_8C0CEEF0,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0CEEBE:
#data 0x00Dc

loc_8C0CEEC0:
#data 0x00C0

loc_8C0CEEC2:
#data 0x012c

loc_8C0CEEC4:
#data 0x01A3

loc_8C0CEEC6:
#data 0x0130

#align4
loc_8C0CEEC8:
#data 0x42555555

#align4
loc_8C0CEECC:
#data bank12.loc_8c129560

loc_8C0CEED0:
#data bank12.loc_8c1294C8

loc_8C0CEED4:
#data 0x8C26A5A0

#align4
loc_8C0CEED8:
#data 0x8C26A5A4

#align4
loc_8C0CEEDC:
#data 0x41892492

#align4
loc_8C0CEEE0:
#data 0x41D2AAAa

#align4
loc_8C0CEEE4:
#data 0xC1D2AAAa

#align4
loc_8C0CEEE8:
#data bank03.loc_8c03544c

loc_8C0CEEEC:
#data bank10.loc_8c104434

loc_8C0CEEF0:
#data bank03.loc_8c034C38


loc_8C0CEEF4:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.l r8,@-r15
mov.w @(loc_8C0CEFFA,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0CEFFA,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0CF004,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0CEFFC,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r14),r4
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C0CEFFE,pc),r0 ; r0 set to 0x12c
mov 0x01,r13 ; r13 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r13,@(r0,r14) 	
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
mov.w @(loc_8C0CF000,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CF008,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov 0x0E,r3 ; r3 set to 0x0e
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0CEFFE,pc),r0 ; r0 set to 0x12c
mov.b r13,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0CF002,pc),r0 ; r0 set to 0x130
mov.l @(0x18,r14),r2
mov.w @(r0,r2),r3 ; r3 ??? bc r2 is ???	
mov.w r3,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r14),r2
fmov.s @(r0,r2),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0CF002,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt/s loc_8C0CEF90
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0CF00C,pc),r3 ; r3 set to 0x8C26A5A0
fmov.s @r3,fr3 ; r3 ??	
bra loc_8C0CEF94
nop 	

loc_8C0CEF90:
mov.l @(loc_8C0CF010,pc),r2 ; r2 set to 0x8C26A5A4
fmov.s @r2,fr3

loc_8C0CEF94:
mov r0,r8
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0CF002,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt/s loc_8C0CEFAa
add r14,r8
mov.l @(loc_8C0CF014,pc),r1 ; r1 set to 0x42D1FFFF, r1 set to 0x42D1FFFf
lds r1,fpul 	
bra loc_8C0CEFB0
fsts fpul,fr3

loc_8C0CEFAA:
mov.l @(loc_8C0CF018,pc),r2 ; r2 set to 0xC2D1FFFf
lds r2,fpul 	
fsts fpul,fr3

loc_8C0CEFB0:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
mova @(loc_8C0CF01C,pc),r0  ; r0 init to 0x8C0CF01C, r0 init to 0x8C0CF01c
mov.l @(loc_8C0CF020,pc),r3 ; r3 set to 0x8C26A5A8, r3 set to 0x8C26A5A8
mov 0x03,r6 ; r6 set to 0x03, r6 set to 0x03
fadd fr3,fr2
fldi0 fr4
mov 0x01,r7 ; r7 set to 0x01, r7 set to 0x01
fmov.s fr2,@r8
fmov.s @r3,fr2
fmov.s @r0,fr3 ; r3 ??, r3 ??	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(loc_8C0CF028,pc),r3 ; r3 set to 0x8C03544C, r3 set to 0x8C03544c
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
mova @(loc_8C0CF024,pc),r0  ; r0 set to 0x8C0CF024, r0 set to 0x8C0CF024
fmov.s @r0,fr2
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr2,@(r0,r14) 	
jsr @r3
mov r6,r5 ; r5 set to 0x03, r5 set to 0x03
mov.l @(loc_8C0CF02C,pc),r2 ; r2 set to 0x8C104434, r2 set to 0x8C104434
jsr @r2
mov r14,r4
mov.b r13,@r14
mov 0x0A,r6 ; r6 set to 0x0A, r6 set to 0x0a
lds.l @r15+,pr 	
mov.l @(loc_8C0CF030,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
mov r14,r4
mov.l @r15+,r8
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0CEFFA:
#data 0x00Dc

loc_8C0CEFFC:
#data 0x00C0

loc_8C0CEFFE:
#data 0x012c

loc_8C0CF000:
#data 0x01A3

loc_8C0CF002:
#data 0x0130

#align4
loc_8C0CF004:
#data bank12.loc_8c129560

loc_8C0CF008:
#data bank12.loc_8c1294C8

loc_8C0CF00C:
#data 0x8C26A5A0

#align4
loc_8C0CF010:
#data 0x8C26A5A4

#align4
loc_8C0CF014:
#data 0x42D1FFFf

#align4
loc_8C0CF018:
#data 0xC2D1FFFf

#align4
loc_8C0CF01C:
#data 0x42092492

#align4
loc_8C0CF020:
#data 0x8C26A5A8

#align4
loc_8C0CF024:
#data 0xBFE24924

#align4
loc_8C0CF028:
#data bank03.loc_8c03544c

loc_8C0CF02C:
#data bank10.loc_8c104434

loc_8C0CF030:
#data bank03.loc_8c034C38


loc_8C0CF034:
mov.l r14,@-r15
mov r4,r14
mov.l r8,@-r15
mov.w @(loc_8C0CF12E,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0CF12E,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0CF138,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0CF130,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r14),r4
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C0CF132,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0CF134,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CF13C,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov 0x0D,r3 ; r3 set to 0x0d
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0CF132,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0CF136,pc),r0 ; r0 set to 0x130
mov.l @(0x18,r14),r2
mov.w @(r0,r2),r3 ; r3 ??? bc r2 is ???	
mov.w r3,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r14),r2
fmov.s @(r0,r2),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0CF136,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt/s loc_8C0CF0Ce
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0CF140,pc),r3 ; r3 set to 0x8C26A5A0
fmov.s @r3,fr3 ; r3 ??	
bra loc_8C0CF0D2
nop 	

loc_8C0CF0CE:
mov.l @(loc_8C0CF144,pc),r2 ; r2 set to 0x8C26A5A4
fmov.s @r2,fr3

loc_8C0CF0D2:
mov r0,r8
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0CF136,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt/s loc_8C0CF0E8
add r14,r8
mov.l @(loc_8C0CF148,pc),r1 ; r1 set to 0x42D1FFFF, r1 set to 0x42D1FFFf
lds r1,fpul 	
bra loc_8C0CF0Ee
fsts fpul,fr3

loc_8C0CF0E8:
mov.l @(loc_8C0CF14C,pc),r2 ; r2 set to 0xC2D1FFFf
lds r2,fpul 	
fsts fpul,fr3

loc_8C0CF0EE:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
mova @(loc_8C0CF150,pc),r0  ; r0 init to 0x8C0CF150, r0 init to 0x8C0CF150
mov.l @(loc_8C0CF154,pc),r3 ; r3 set to 0x8C26A5A8, r3 set to 0x8C26A5A8
mov 0x02,r6 ; r6 set to 0x02, r6 set to 0x02
fadd fr3,fr2
fldi0 fr4
mov 0x01,r7 ; r7 set to 0x01, r7 set to 0x01
fmov.s fr2,@r8
fmov.s @r3,fr2
fmov.s @r0,fr3 ; r3 ??, r3 ??	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(loc_8C0CF15C,pc),r3 ; r3 set to 0x8C03544C, r3 set to 0x8C03544c
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
mova @(loc_8C0CF158,pc),r0  ; r0 set to 0x8C0CF158, r0 set to 0x8C0CF158
fmov.s @r0,fr2
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr2,@(r0,r14) 	
jsr @r3
mov r6,r5 ; r5 set to 0x02, r5 set to 0x02
lds.l @r15+,pr 	
mov.l @(loc_8C0CF160,pc),r2 ; r2 set to 0x8C034C38, r2 set to 0x8C034C38
mov 0x09,r6 ; r6 set to 0x09, r6 set to 0x09
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
mov r14,r4
mov.l @r15+,r8
jmp @r2
mov.l @r15+,r14

loc_8C0CF12E:
#data 0x00Dc

loc_8C0CF130:
#data 0x00C0

loc_8C0CF132:
#data 0x012c

loc_8C0CF134:
#data 0x01A3

loc_8C0CF136:
#data 0x0130

#align4
loc_8C0CF138:
#data bank12.loc_8c129560

loc_8C0CF13C:
#data bank12.loc_8c1294C8

loc_8C0CF140:
#data 0x8C26A5A0

#align4
loc_8C0CF144:
#data 0x8C26A5A4

#align4
loc_8C0CF148:
#data 0x42D1FFFf

#align4
loc_8C0CF14C:
#data 0xC2D1FFFf

#align4
loc_8C0CF150:
#data 0x42092492

#align4
loc_8C0CF154:
#data 0x8C26A5A8

#align4
loc_8C0CF158:
#data 0xBF76DB6e

#align4
loc_8C0CF15C:
#data bank03.loc_8c03544c

loc_8C0CF160:
#data bank03.loc_8c034C38


loc_8C0CF164:
mov.l r14,@-r15
mov r4,r14
mov.l r8,@-r15
mov.w @(loc_8C0CF25E,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0CF25E,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0CF26C,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0CF260,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r14),r4
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C0CF262,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0CF264,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CF270,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov 0x0F,r3 ; r3 set to 0x0f
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0CF262,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0CF266,pc),r0 ; r0 set to 0x130
mov.l @(0x18,r14),r2
mov.w @(r0,r2),r3 ; r3 ??? bc r2 is ???	
mov.w r3,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r14),r2
fmov.s @(r0,r2),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0CF266,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt/s loc_8C0CF1Fe
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0CF274,pc),r3 ; r3 set to 0x8C26A5A0
fmov.s @r3,fr3 ; r3 ??	
bra loc_8C0CF202
nop 	

loc_8C0CF1FE:
mov.l @(loc_8C0CF278,pc),r2 ; r2 set to 0x8C26A5A4
fmov.s @r2,fr3

loc_8C0CF202:
mov r0,r8
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0CF266,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt/s loc_8C0CF218
add r14,r8
mov.l @(loc_8C0CF27C,pc),r1 ; r1 set to 0x4330AAAA, r1 set to 0x4330AAAa
lds r1,fpul 	
bra loc_8C0CF21e
fsts fpul,fr3

loc_8C0CF218:
mov.l @(loc_8C0CF280,pc),r2 ; r2 set to 0xC330AAAa
lds r2,fpul 	
fsts fpul,fr3

loc_8C0CF21E:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
mova @(loc_8C0CF284,pc),r0  ; r0 init to 0x8C0CF284, r0 init to 0x8C0CF284
fldi0 fr4
mov 0x02,r6 ; r6 set to 0x02, r6 set to 0x02
fadd fr3,fr2
mov 0x01,r7 ; r7 set to 0x01, r7 set to 0x01
fmov.s fr2,@r8
fmov.s @r0,fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr2
mov.l @(loc_8C0CF288,pc),r3 ; r3 set to 0x8C03544C, r3 set to 0x8C03544c
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
mov.w @(loc_8C0CF268,pc),r0 ; r0 set to 0x108, r0 set to 0x108
fmov.s fr4,@(r0,r14) 	
mov 0x1E,r0 ; r0 set to 0x1E, r0 set to 0x1e
mov.w r0,@(0x1C,r14) 	
jsr @r3
mov r6,r5 ; r5 set to 0x02, r5 set to 0x02
lds.l @r15+,pr 	
mov.l @(loc_8C0CF28C,pc),r2 ; r2 set to 0x8C034C38, r2 set to 0x8C034C38
mov 0x0C,r6 ; r6 set to 0x0C, r6 set to 0x0c
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
mov r14,r4
mov.l @r15+,r8
jmp @r2
mov.l @r15+,r14

loc_8C0CF25E:
#data 0x00Dc

loc_8C0CF260:
#data 0x00C0

loc_8C0CF262:
#data 0x012c

loc_8C0CF264:
#data 0x01A3

loc_8C0CF266:
#data 0x0130

loc_8C0CF268:
#data 0x0108
#data 0x0000

#align4
loc_8C0CF26C:
#data bank12.loc_8c129560

loc_8C0CF270:
#data bank12.loc_8c1294C8

loc_8C0CF274:
#data 0x8C26A5A0

#align4
loc_8C0CF278:
#data 0x8C26A5A4

#align4
loc_8C0CF27C:
#data 0x4330AAAa

#align4
loc_8C0CF280:
#data 0xC330AAAa

#align4
loc_8C0CF284:
#data 0x4226AAAa

#align4
loc_8C0CF288:
#data bank03.loc_8c03544c

loc_8C0CF28C:
#data bank03.loc_8c034C38


loc_8C0CF290:
mov.l r8,@-r15
mov.w @(loc_8C0CF3F0,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0CF3FC,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.w @(loc_8C0CF3F0,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0CF3F2,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r4),r5
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0CF3F4,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0CF3F6,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CF400,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x0E,r3 ; r3 set to 0x0e
mov 0x34,r8 ; r8 set to 0x34
mov.b r2,@(r0,r4) 	
mov.w @(loc_8C0CF3F4,pc),r0 ; r0 set to 0x12c
mov.b r6,@(r0,r4) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r4) 	
mov.w @(loc_8C0CF3F8,pc),r0 ; r0 set to 0x130
mov.l @(0x18,r4),r2
mov.w @(r0,r2),r3 ; r3 ??? bc r2 is ???	
mov.w r3,@(r0,r4) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r4),r2
fmov.s @(r0,r2),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0CF3F8,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r3
tst r3,r3
bt/s loc_8C0CF328
add r4,r8 ; r8 ??? bc r4 is ???	
mov.l @(loc_8C0CF404,pc),r1 ; r1 set to 0xC2555555
lds r1,fpul 	
bra loc_8C0CF32e
fsts fpul,fr3

loc_8C0CF328:
mov.l @(loc_8C0CF408,pc),r2 ; r2 set to 0x42555555
lds r2,fpul 	
fsts fpul,fr3

loc_8C0CF32E:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(loc_8C0CF40C,pc),r1 ; r1 set to 0x42092492, r1 set to 0x42092492
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
fadd fr3,fr2
fldi0 fr4
lds r1,fpul 	
mov 0x0E,r6 ; r6 set to 0x0E, r6 set to 0x0e
mov.l @(loc_8C0CF410,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
fmov.s fr2,@r8
fmov.s @(r0,r4),fr2
fsts fpul,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r4) 	
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr4,@(r0,r4) 	
lds.l @r15+,pr 	
jmp @r3
mov.l @r15+,r8

loc_8C0CF358:
mov.l r8,@-r15
mov.w @(loc_8C0CF3F0,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0CF3FC,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.w @(loc_8C0CF3F0,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0CF3F2,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r4),r5
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0CF3F4,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0CF3F6,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CF400,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x00,r3 ; r3 set to 0x00
mov 0x34,r8 ; r8 set to 0x34
mov.b r2,@(r0,r4) 	
mov.w @(loc_8C0CF3F4,pc),r0 ; r0 set to 0x12c
mov.b r6,@(r0,r4) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r4) 	
mov.w @(loc_8C0CF3F8,pc),r0 ; r0 set to 0x130
mov.l @(0x18,r4),r2
mov.w @(r0,r2),r3 ; r3 ??? bc r2 is ???	
mov.w r3,@(r0,r4) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r4),r2
fmov.s @(r0,r2),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0CF3F8,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r3
tst r3,r3
bt/s loc_8C0CF418
add r4,r8 ; r8 ??? bc r4 is ???	
mov.l @(loc_8C0CF414,pc),r1 ; r1 set to 0x42E95555
lds r1,fpul 	
bra loc_8C0CF41e
fsts fpul,fr3

loc_8C0CF3F0:
#data 0x00Dc

loc_8C0CF3F2:
#data 0x00C0

loc_8C0CF3F4:
#data 0x012c

loc_8C0CF3F6:
#data 0x01A3

loc_8C0CF3F8:
#data 0x0130
#data 0x0000

#align4
loc_8C0CF3FC:
#data bank12.loc_8c129560

loc_8C0CF400:
#data bank12.loc_8c1294C8

loc_8C0CF404:
#data 0xC2555555

#align4
loc_8C0CF408:
#data 0x42555555

#align4
loc_8C0CF40C:
#data 0x42092492

#align4
loc_8C0CF410:
#data bank03.loc_8c034C38

loc_8C0CF414:
#data 0x42E95555


loc_8C0CF418:
mov.l @(loc_8C0CF568,pc),r2 ; r2 set to 0xC2E95555
lds r2,fpul 	
fsts fpul,fr3

loc_8C0CF41E:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(loc_8C0CF56C,pc),r1 ; r1 set to 0x414DB6DB, r1 set to 0x414DB6Db
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
fadd fr3,fr2
fldi0 fr4
lds r1,fpul 	
mov 0x0E,r6 ; r6 set to 0x0E, r6 set to 0x0e
mov.l @(loc_8C0CF570,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
fmov.s fr2,@r8
fmov.s @(r0,r4),fr2
fsts fpul,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r4) 	
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr4,@(r0,r4) 	
lds.l @r15+,pr 	
jmp @r3
mov.l @r15+,r8

loc_8C0CF448:
mov.l r14,@-r15
mov r4,r14
mov.l r8,@-r15
mov.w @(loc_8C0CF55E,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0CF55E,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0CF574,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0CF560,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r14),r4
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C0CF562,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0CF564,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0CF578,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov 0x00,r3 ; r3 set to 0x00
mov 0x34,r8 ; r8 set to 0x34
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0CF562,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0CF566,pc),r0 ; r0 set to 0x130
mov.l @(0x18,r14),r2
mov.w @(r0,r2),r3 ; r3 ??? bc r2 is ???	
mov.w r3,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r14),r2
fmov.s @(r0,r2),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0CF566,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt/s loc_8C0CF4E4
add r14,r8 ; r8 ??? bc r14 is ???	
mov.l @(loc_8C0CF57C,pc),r1 ; r1 set to 0x41D55555
lds r1,fpul 	
bra loc_8C0CF4Ea
fsts fpul,fr3

loc_8C0CF4E4:
mov.l @(loc_8C0CF580,pc),r2 ; r2 set to 0xC1D55555
lds r2,fpul 	
fsts fpul,fr3

loc_8C0CF4EA:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(loc_8C0CF584,pc),r1 ; r1 set to 0x434DB6DB, r1 set to 0x434DB6Db
fadd fr3,fr2
fldi0 fr4
lds r1,fpul 	
fmov.s fr2,@r8
fmov.s @(r0,r14),fr2
fsts fpul,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
mov.w @(loc_8C0CF566,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt loc_8C0CF516
mova @(loc_8C0CF588,pc),r0  ; r0 set to 0x8C0CF588, r0 set to 0x8C0CF588
bra loc_8C0CF51a
fmov.s @r0,fr2

loc_8C0CF516:
mova @(loc_8C0CF58C,pc),r0  ; r0 init to 0x8C0CF58c
fmov.s @r0,fr2

loc_8C0CF51A:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fmov.s fr2,@(r0,r14) 	
mov.w @(loc_8C0CF566,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt loc_8C0CF52c
mova @(loc_8C0CF590,pc),r0  ; r0 set to 0x8C0CF590, r0 set to 0x8C0CF590
bra loc_8C0CF530
fmov.s @r0,fr3

loc_8C0CF52C:
mova @(loc_8C0CF594,pc),r0  ; r0 init to 0x8C0CF594
fmov.s @r0,fr3

loc_8C0CF530:
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
mov.l @(loc_8C0CF5A0,pc),r3 ; r3 set to 0x8C03544C, r3 set to 0x8C03544c
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0CF598,pc),r0  ; r0 set to 0x8C0CF598, r0 set to 0x8C0CF598
fmov.s @r0,fr3 ; r3 ??, r3 ??	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
mov 0x08,r6 ; r6 set to 0x08, r6 set to 0x08
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0CF59C,pc),r0  ; r0 set to 0x8C0CF59C, r0 set to 0x8C0CF59c
fmov.s @r0,fr3
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
mov 0x01,r7 ; r7 set to 0x01, r7 set to 0x01
fmov.s fr3,@(r0,r14) 	
jsr @r3
mov 0x04,r5 ; r5 set to 0x04, r5 set to 0x04
lds.l @r15+,pr 	
mov.l @(loc_8C0CF570,pc),r2 ; r2 set to 0x8C034C38, r2 set to 0x8C034C38
mov 0x0D,r6 ; r6 set to 0x0D, r6 set to 0x0d
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
mov r14,r4
mov.l @r15+,r8
jmp @r2
mov.l @r15+,r14

loc_8C0CF55E:
#data 0x00Dc

loc_8C0CF560:
#data 0x00C0

loc_8C0CF562:
#data 0x012c

loc_8C0CF564:
#data 0x01A3

loc_8C0CF566:
#data 0x0130

#align4
loc_8C0CF568:
#data 0xC2E95555

#align4
loc_8C0CF56C:
#data 0x414DB6Db

#align4
loc_8C0CF570:
#data bank03.loc_8c034C38

loc_8C0CF574:
#data bank12.loc_8c129560

loc_8C0CF578:
#data bank12.loc_8c1294C8

loc_8C0CF57C:
#data 0x41D55555

#align4
loc_8C0CF580:
#data 0xC1D55555

#align4
loc_8C0CF584:
#data 0x434DB6Db

#align4
loc_8C0CF588:
#data 0x40BAAAAa

#align4
loc_8C0CF58C:
#data 0xC0BAAAAa

#align4
loc_8C0CF590:
#data 0x3ED55555

#align4
loc_8C0CF594:
#data 0xBED55555

#align4
loc_8C0CF598:
#data 0x40092492

#align4
loc_8C0CF59C:
#data 0x3E892492

#align4
loc_8C0CF5A0:
#data bank03.loc_8c03544c


loc_8C0CF5A4:
mov 0x20,r0 ; r0 set to 0x20
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(loc_8C0CF6E8,pc),r0 ; r0 set to 0x8C15C8F0
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

#align4
loc_8C0CF5B8:
#data 0x4F222FE6
#data 0x6E437FFc
#data 0xD14A53E6
#data 0x84E52F32
#data 0x4008600c
#data 0x430B031e
#data 0x908464E3
#data 0x023C63F2
#data 0x89052228
#data 0xE30084E4
#data 0x80E47001
#data 0x0E34907c

#align4
loc_8C0CF5E8:
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0CF5F0:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0CF6F0,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r4,r14
mov.l @(0x18,r14),r0
mov.b @(0x06,r0),r0 	
extu.b r0,r0
cmp/eq 0x03,r0 	
bt loc_8C0CF616
mov.b @(0x04,r14),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0CF6E0,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0CF616:
mov.l @(0x18,r14),r2
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r2),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0CF62C:
#data 0x4F222FE6
#data 0x6E437FFc
#data 0xD12F53E6
#data 0x84E52F32
#data 0x4008600c
#data 0x430B031e
#data 0x904A64E3
#data 0x023C63F2
#data 0x89052228
#data 0xE30084E4
#data 0x80E47001
#data 0x0E349042

#align4
loc_8C0CF65C:
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0CF664:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0CF6F0,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r4,r14
mov.l @(0x18,r14),r0
mov.b @(0x06,r0),r0 	
extu.b r0,r0
cmp/eq 0x03,r0 	
bt loc_8C0CF68a
mov.b @(0x04,r14),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0CF6E0,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0CF68A:
mov.l @(0x18,r14),r2
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r2),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0CF6A0:
#data 0x6E432FE6
#data 0x2FD6D114
#data 0x84E54F22
#data 0x4008600c
#data 0x430B031e
#data 0x90145DE6
#data 0x600C00Dc
#data 0x8B04881d
#data 0x00DC9010
#data 0x8809600c
#data 0x8905

loc_8C0CF6CA:
#data 0x84E4
#data 0x7001E300
#data 0x900580E4
#data 0x0E34

loc_8C0CF6D6:
#data 0x4F26
#data 0x000B6DF6
#data 0x019F6EF6

loc_8C0CF6E0:
#data 0x012c
#data 0x01D0
#data 0x000001E9

#align4
loc_8C0CF6E8:
#data bank15.loc_8c15c8F0

loc_8C0CF6EC:
#data bank15.loc_8c15c930

loc_8C0CF6F0:
#data bank03.loc_8c034D8c

loc_8C0CF6F4:
#data bank15.loc_8c15c934

loc_8C0CF6F8:
#data bank15.loc_8c15c938

loc_8C0CF6FC:
#data 0x4F222FE6
#data 0x430BD34f
#data 0x52E66E43
#data 0x8426E305
#data 0x3033600c
#data 0x50E68B07
#data 0x600C8406
#data 0x8902880a
#data 0x700184E4
#data 0x80E4

loc_8C0CF722:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0CF728:
#data 0x4F222FE6
#data 0x430BD344
#data 0x50E66E43
#data 0x600C8406
#data 0x8B028804
#data 0x700184E4
#data 0x80E4

loc_8C0CF742:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0CF748:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x05,r14),r0 	
mov.l @(loc_8C0CF844,pc),r1 ; r1 set to 0x8C15C940
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0CF75A:
#data 0x2FE6
#data 0xD3384F22
#data 0x6E43430b
#data 0x70FF85Ee
#data 0x700181Ee
#data 0x2008600f
#data 0x84E58B04
#data 0x80E57001
#data 0x81EEE008

#align4
loc_8C0CF77C:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0CF782:
#data 0x2FE6
#data 0xD32E4F22
#data 0x6E43430b
#data 0x9053D12e
#data 0xF2E6415a
#data 0xF231F30d
#data 0xF1E6FE27
#data 0xF215F28d
#data 0xFE278B00

#align4
loc_8C0CF7A4:
#data 0x70FF85Ee
#data 0x700181Ee
#data 0x2008600f
#data 0x84E48B02
#data 0x80E47001

#align4
loc_8C0CF7B8:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0CF7BE:
mov r4,r3
mov.l @(loc_8C0CF84C,pc),r1 ; r1 set to 0x8C15C948
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CF7D0:
mov.w @(0x1C,r4),r0 	
add 0xFF,r0
mov.w r0,@(0x1C,r4) 	
add 0x01,r0
exts.w r0,r0
cmp/pz r0
bt loc_8C0CF7F8
mov.b @(0x05,r4),r0 	
add 0x01,r0
mov.b r0,@(0x05,r4) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
mov 0x00,r3 ; r3 set to 0x00
fmov.s fr3,@(r0,r4) 	
mov 0x48,r0 ; r0 set to 0x48
mov.l r3,@(r0,r4) 	
mov.l @(loc_8C0CF840,pc),r3 ; r3 set to 0x8C034D8c
jmp @r3
nop 	

loc_8C0CF7F8:
mov 0x5C,r1 ; r1 set to 0x5c
mov.w @(loc_8C0CF83A,pc),r3 ; r3 set to 0x2000
add r4,r1 ; r1 ??? bc r4 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
fmov.s @(r0,r4),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x48,r0 ; r0 set to 0x48
mov.l @(r0,r4),r2
add r3,r2
rts 	
mov.l r2,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0CF812:
mov.w @(loc_8C0CF83C,pc),r0 ; r0 set to 0x1D0
mov.l @(0x18,r4),r5
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x16,r0 	
bt loc_8C0CF826
mov.b @(0x05,r4),r0 	
add 0x01,r0
rts 	
mov.b r0,@(0x05,r4) 	
;-------------------------------------------------------------------------------

loc_8C0CF826:
mov.w @(loc_8C0CF83E,pc),r0 ; r0 set to 0x143
mov.b @(r0,r4),r3
cmp/pz r3
bf loc_8C0CF834
mov.l @(loc_8C0CF840,pc),r3 ; r3 set to 0x8C034D8c
jmp @r3
nop 	

loc_8C0CF834:
rts 	
nop 	
;-------------------------------------------------------------------------------
#data 0x0108

loc_8C0CF83A:
#data 0x2000

loc_8C0CF83C:
#data 0x01D0

loc_8C0CF83E:
#data 0x0143

#align4
loc_8C0CF840:
#data bank03.loc_8c034D8c

loc_8C0CF844:
#data bank15.loc_8c15c940
#data 0x3D75C28f

#align4
loc_8C0CF84C:
#data bank15.loc_8c15c948


loc_8C0CF850:
mov r4,r3
mov.l @(loc_8C0CF99C,pc),r1 ; r1 set to 0x8C15C950
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CF862:
#data 0x4F22
#data 0xE1607FF4
#data 0xE038314c
#data 0xF246F318
#data 0x314CE16c
#data 0xF427F230
#data 0xF246E060
#data 0xF230F318
#data 0x854EF427
#data 0x814E70Ff
#data 0x600F7001
#data 0x8B064015
#data 0x314CE15c
#data 0xF318E034
#data 0xF230F246
#data 0xF427

loc_8C0CF89E:
#data 0xC740
#data 0xF4085346
#data 0xF336E038
#data 0xF340F246
#data 0x8B19F325
#data 0x70018445
#data 0xE0388045
#data 0xF3365346
#data 0xF340D339
#data 0xE034F437
#data 0xE038F346
#data 0xF346FF3a
#data 0xFF37E004
#data 0xF346E03c
#data 0xFF37E008
#data 0xE534430b
#data 0xE500D232
#data 0x64F3420b

#align4
loc_8C0CF8E4:
#data 0x4F267F0c
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0CF8EC:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0CF994,pc),r0 ; r0 set to 0x1D0
sts.l pr,@-r15
mov.l @(0x18,r14),r4
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
extu.b r0,r0
cmp/eq 0x16,r0 	
bt loc_8C0CF90a
mov.b @(0x04,r14),r0 	
add 0x01,r0
mov.b r0,@(0x04,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0CF90A:
#data 0x9044
#data 0x233803Ec
#data 0xE3008905
#data 0xE5070E34
#data 0x430BD324
#data 0x64E3

loc_8C0CF91E:
#data 0x903b
#data 0x421102Ec
#data 0x4F268B04
#data 0x64E3D221
#data 0x6EF6422b

#align4
loc_8C0CF930:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0CF936:
mov r4,r3
mov.l @(loc_8C0CF9B4,pc),r1 ; r1 set to 0x8C15C958
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

#align4
loc_8C0CF948:
#data 0x314CE15c
#data 0xF318E034
#data 0xF230F246
#data 0x854EF427
#data 0x814E70Ff
#data 0x600F7001
#data 0x89024015
#data 0x70018445
#data 0x8045

loc_8C0CF96A:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0CF96E:
mov.w @(loc_8C0CF994,pc),r0 ; r0 set to 0x1D0
mov.l @(0x18,r4),r5
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x16,r0 	
bt loc_8C0CF982
mov.b @(0x04,r4),r0 	
add 0x01,r0
rts 	
mov.b r0,@(0x04,r4) 	
;-------------------------------------------------------------------------------

loc_8C0CF982:
mov.w @(loc_8C0CF998,pc),r0 ; r0 set to 0x143
mov.b @(r0,r4),r3
cmp/pz r3
bf loc_8C0CF990
mov.l @(loc_8C0CF9B0,pc),r3 ; r3 set to 0x8C034D8c
jmp @r3
nop 	

loc_8C0CF990:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0CF994:
#data 0x01D0
#data 0x0141

loc_8C0CF998:
#data 0x0143
#data 0x0000

#align4
loc_8C0CF99C:
#data bank15.loc_8c15c950
#data 0x41555555

#align4
loc_8C0CF9A4:
#data bank04.loc_8c04223a

loc_8C0CF9A8:
#data bank0f.loc_8c0fD6B0

loc_8C0CF9AC:
#data loc_8c0cE65a

loc_8C0CF9B0:
#data bank03.loc_8c034D8c

loc_8C0CF9B4:
#data bank15.loc_8c15c958


loc_8C0CF9B8:
mov r4,r3
mov.l @(loc_8C0CFAD0,pc),r1 ; r1 set to 0x8C15C960
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CF9CA:
#data 0x4F22
#data 0xE1607FF4
#data 0xE038314c
#data 0xF246F318
#data 0x314CE16c
#data 0xF427F230
#data 0xF246E060
#data 0xF230F318
#data 0x854EF427
#data 0x814E70Ff
#data 0x600F7001
#data 0x8B064015
#data 0x314CE15c
#data 0xF318E034
#data 0xF230F246
#data 0xF427

loc_8C0CFA06:
#data 0x5346
#data 0xF346E038
#data 0xF235F236
#data 0x84458B18
#data 0x80457001
#data 0x5346E038
#data 0xD32DF336
#data 0xE034F437
#data 0xE038F346
#data 0xF346FF3a
#data 0xFF37E004
#data 0xF346E03c
#data 0xFF37E008
#data 0xE534430b
#data 0xE500D226
#data 0x64F3420b

#align4
loc_8C0CFA44:
#data 0x4F267F0c
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0CFA4C:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0CFAC8,pc),r0 ; r0 set to 0x1D0
sts.l pr,@-r15
mov.l @(0x18,r14),r4
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
extu.b r0,r0
cmp/eq 0x16,r0 	
bt loc_8C0CFA6a
mov.b @(0x04,r14),r0 	
add 0x01,r0
mov.b r0,@(0x04,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0CFA6A:
#data 0x902e
#data 0x880100Ec
#data 0x902A8B0a
#data 0xD319E200
#data 0x0E24E509
#data 0x64E3430b
#data 0xE508D216
#data 0x64E3420b

#align4
loc_8C0CFA88:
#data 0x00EC901f
#data 0x8B068802
#data 0xE200901b
#data 0xE50BD311
#data 0x430B0E24
#data 0x64E3

loc_8C0CFA9E:
#data 0x9015
#data 0x421102Ec
#data 0x4F268B04
#data 0x64E3D20d
#data 0x6EF6422b

#align4
loc_8C0CFAB0:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0CFAB6:
mov r4,r3
mov.l @(loc_8C0CFAE4,pc),r1 ; r1 set to 0x8C15C968
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CFAC8:
#data 0x01D0
#data 0x0141
#data 0x00000143

#align4
loc_8C0CFAD0:
#data bank15.loc_8c15c960

loc_8C0CFAD4:
#data bank04.loc_8c04223a

loc_8C0CFAD8:
#data bank0f.loc_8c0fD6B0

loc_8C0CFADC:
#data loc_8c0cE65a

loc_8C0CFAE0:
#data bank03.loc_8c034D8c

loc_8C0CFAE4:
#data bank15.loc_8c15c968

loc_8C0CFAE8:
#data 0xE1602FE6
#data 0x31EC6E43
#data 0x4F22E038
#data 0xF318F2E6
#data 0x31ECE16c
#data 0xFE27F230
#data 0xF2E6E060
#data 0xF230F318
#data 0x85EEFE27
#data 0x81EE70Ff
#data 0x600F7001
#data 0x8B064015
#data 0x31ECE15c
#data 0xF318E034
#data 0xF230F2E6
#data 0xFE27

loc_8C0CFB26:
#data 0xC738
#data 0xF30853E6
#data 0xF236E038
#data 0xF230F1E6
#data 0x8B0FF215
#data 0xE50C84E5
#data 0x7001D333
#data 0x430B80E5
#data 0x52E664E3
#data 0xD331E038
#data 0xF32664E3
#data 0x4F26FE37
#data 0x6EF6432b

#align4
loc_8C0CFB58:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0CFB5E:
mov.w @(loc_8C0CFC00,pc),r0 ; r0 set to 0x1D0
mov.l @(0x18,r4),r5
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x16,r0 	
bt loc_8C0CFB72
mov.b @(0x04,r4),r0 	
add 0x01,r0
rts 	
mov.b r0,@(0x04,r4) 	
;-------------------------------------------------------------------------------

loc_8C0CFB72:
mov.w @(loc_8C0CFC02,pc),r0 ; r0 set to 0x143
mov.b @(r0,r4),r3
cmp/pz r3
bf loc_8C0CFB80
mov.l @(loc_8C0CFC10,pc),r3 ; r3 set to 0x8C034D8c
jmp @r3
nop 	

loc_8C0CFB80:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0CFB84:
mov r4,r3
mov.l @(loc_8C0CFC14,pc),r1 ; r1 set to 0x8C15C970
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CFB96:
mov.w @(0x1C,r4),r0 	
add 0xFF,r0
mov.w r0,@(0x1C,r4) 	
add 0x01,r0
exts.w r0,r0
cmp/pl r0
bt loc_8C0CFBAc
mov.b @(0x05,r4),r0 	
add 0x01,r0
bra loc_8C0CFBB0
mov.b r0,@(0x05,r4) 	

loc_8C0CFBAC:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0CFBB0:
mov.w @(loc_8C0CFC00,pc),r0 ; r0 set to 0x1D0
mov.l @(0x18,r4),r5
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x16,r0 	
bt loc_8C0CFBC4
mov.b @(0x04,r4),r0 	
add 0x01,r0
rts 	
mov.b r0,@(0x04,r4) 	
;-------------------------------------------------------------------------------

#align4
loc_8C0CFBC4:
#data 0x901DD114
#data 0xF246415a
#data 0xF30DF49d
#data 0xF427F230
#data 0xF245F246
#data 0xF4478B00

#align4
loc_8C0CFBDC:
#data 0x034C9011
#data 0x8B024311
#data 0x432BD30a
#data 0x0009

loc_8C0CFBEA:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0CFBEE:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x05,r14),r0 	
mov.l @(loc_8C0CFC1C,pc),r1 ; r1 set to 0x8C15C978
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0CFC00:
#data 0x01D0

loc_8C0CFC02:
#data 0x0143
#data 0x00000108
#data 0x43700000

#align4
loc_8C0CFC0C:
#data loc_8c0cE65a

loc_8C0CFC10:
#data bank03.loc_8c034D8c

loc_8C0CFC14:
#data bank15.loc_8c15c970
#data 0x3CF5C28f

#align4
loc_8C0CFC1C:
#data bank15.loc_8c15c978


loc_8C0CFC20:
mov.w @(loc_8C0CFD32,pc),r1 ; r1 set to 0x141
mov.l @(0x18,r4),r0
mov.b @(r0,r1),r0
cmp/eq 0x01,r0 	
bf loc_8C0CFC70
mov.b @(0x05,r4),r0 	
add 0x01,r0
mov.b r0,@(0x05,r4) 	
mov.w @(loc_8C0CFD34,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r3
tst r3,r3
bt loc_8C0CFC3e
mova @(loc_8C0CFD3C,pc),r0  ; r0 set to 0x8C0CFD3c
bra loc_8C0CFC42
fmov.s @r0,fr3

loc_8C0CFC3E:
mova @(loc_8C0CFD40,pc),r0  ; r0 init to 0x8C0CFD40
fmov.s @r0,fr3

loc_8C0CFC42:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0CFD34,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r4),r3
tst r3,r3
bt loc_8C0CFC54
mova @(loc_8C0CFD44,pc),r0  ; r0 set to 0x8C0CFD44, r0 set to 0x8C0CFD44
bra loc_8C0CFC58
fmov.s @r0,fr3

#align4
loc_8C0CFC54:
#data 0xF308C73c

#align4
loc_8C0CFC58:
#data 0xF437E068
#data 0xF308C73b
#data 0xF437E060
#data 0xF308C73a
#data 0xF437E06c
#data 0x814EE01e


loc_8C0CFC70:
rts 	
nop 	
;-------------------------------------------------------------------------------

#align4
loc_8C0CFC74:
#data 0x70FF854e
#data 0x7001814e
#data 0x2008600f
#data 0x84448B02
#data 0x80447001

#align4
loc_8C0CFC88:
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
#data 0x000BF230
#data 0xF427
;-------------------------------------------------------------------------------

loc_8C0CFCC2:
#data 0x2FE6
#data 0x7FFC4F22
#data 0x53E66E43
#data 0x2F32D121
#data 0x600C84E5
#data 0x031E4008
#data 0x64E3430b
#data 0x60F2912b
#data 0x600C001c
#data 0x89028816
#data 0x700184E4
#data 0x80E4

loc_8C0CFCEE:
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0CFCF6:
mov.w @(loc_8C0CFD38,pc),r0 ; r0 set to 0x143
mov.b @(r0,r4),r3
cmp/pz r3
bf loc_8C0CFD04
mov.l @(loc_8C0CFD58,pc),r3 ; r3 set to 0x8C034D8c
jmp @r3
nop 	

loc_8C0CFD04:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0CFD08:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x05,r14),r0 	
mov.l @(loc_8C0CFD5C,pc),r1 ; r1 set to 0x8C15C984
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0CFD1A:
#data 0x900a
#data 0x8801004c
#data 0x84458B04
#data 0x80457001
#data 0x814EE03c

#align4
loc_8C0CFD2C:
#data 0x432BD30a
#data 0x0009

loc_8C0CFD32:
#data 0x0141

loc_8C0CFD34:
#data 0x0130
#data 0x01D0

loc_8C0CFD38:
#data 0x0143
#data 0x0000

#align4
loc_8C0CFD3C:
#data 0xC17D5555

#align4
loc_8C0CFD40:
#data 0x417D5555

#align4
loc_8C0CFD44:
#data 0xBEA00000
#data 0x3EA00000
#data 0x40CDB6Db
#data 0xBF092492

#align4
loc_8C0CFD54:
#data bank15.loc_8c15c980

loc_8C0CFD58:
#data bank03.loc_8c034D8c

loc_8C0CFD5C:
#data bank15.loc_8c15c984

loc_8C0CFD60:
#data 0x70FF854e
#data 0x7001814e
#data 0x2008600f
#data 0x84448B02
#data 0x80447001

#align4
loc_8C0CFD74:
#data 0xD314E15c
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
#data 0xF427432b


loc_8C0CFDB0:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0CFDC4,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0CFDBE:
mov.l @(loc_8C0CFDCC,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0CFDC4:
#data 0x012c
#data 0x0000

#align4
loc_8C0CFDC8:
#data bank03.loc_8c034D8c

loc_8C0CFDCC:
#data bank04.loc_8c0450C0

loc_8C0CFDD0:
#data 0x7FFC4F22
#data 0xE503D34f
#data 0xE6002F42
#data 0x6463430b
#data 0x8D492008
#data 0xD34C6403
#data 0x908B918c
#data 0x314C1434
#data 0xD34A62F2
#data 0x320C1426
#data 0x70E4430b
#data 0xE1019083
#data 0x61430414
#data 0x71505046
#data 0x80428402
#data 0x84015046
#data 0xE0508041
#data 0xF3365346
#data 0xE054F437
#data 0xF3365346
#data 0x9071F437
#data 0x023C5346
#data 0x70010424
#data 0x023C5346
#data 0xE0300424
#data 0x023C5346
#data 0x52460424
#data 0x7250D338
#data 0xE00C430b
#data 0xE0245146
#data 0xE500925f
#data 0x0434031c
#data 0x0425E026
#data 0x9059E320
#data 0x0434E224
#data 0x043470Ff
#data 0x04247003
#data 0x042470Ff
#data 0x00096023
#data 0x60530454
#data 0x80440009
#data 0x04549047

#align4
loc_8C0CFE78:
#data 0x4F267F04
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0CFE80:
mov r4,r3
mov.l @(loc_8C0CFF24,pc),r1 ; r1 set to 0x8C15C98c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CFE92:
mov.l r14,@-r15
mov 0x00,r6 ; r6 set to 0x00
mov 0x48,r0 ; r0 set to 0x48
mov r4,r14
mov.l r13,@-r15
mov 0x04,r13 ; r13 set to 0x04
mov.w @(loc_8C0CFF0E,pc),r5 ; r5 set to 0xCc
sts.l pr,@-r15
mov.l @(0x18,r14),r4
add r14,r5 ; r5 ??? bc r14 is ???	
mov.l r6,@(r0,r14) 	
mov.w @(loc_8C0CFF10,pc),r0 ; r0 set to 0x159
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
extu.b r0,r0
cmp/eq 0x05,r0 	
bt/s loc_8C0CFECc
mov 0x01,r7 ; r7 set to 0x01
cmp/eq 0x06,r0 	
bt loc_8C0CFF28
cmp/eq 0x0B,r0 	
bt loc_8C0CFF4e
cmp/eq 0x18,r0 	
bt loc_8C0CFF7c
cmp/eq 0x0F,r0 	
bf loc_8C0CFEC8
bra loc_8C0CFFCe
nop 	

loc_8C0CFEC8:
bra loc_8C0CFFFc
nop 	

loc_8C0CFECC:
mov.w @(loc_8C0CFF12,pc),r0 ; r0 set to 0x158
mov.w @(r0,r4),r3
add 0x01,r0 ; r0 set to 0x159
mov.w r3,@r5
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
mov.b r0,@(0x01,r5) 	
mov.w @(loc_8C0CFF12,pc),r0 ; r0 set to 0x158
mov.b @(r0,r4),r3
mov.b r3,@r5
mov.b @(0x04,r14),r0 	
add 0x01,r0 ; r0 set to 0x159
mov.b r0,@(0x04,r14) 	
mov r6,r0 ; r0 ??? bc r6 is ???	
nop 	
mov.b r0,@(0x05,r14) 	
mov.w @(loc_8C0CFF06,pc),r0 ; r0 set to 0x12c
mov.b r6,@(r0,r14) 	
add 0x2C,r0 ; r0 set to 0x158
mov.b @(r0,r4),r3
extu.b r3,r3
cmp/ge r13,r3
bf loc_8C0CFEFe
mov 0x21,r0 ; r0 set to 0x21
bra loc_8C0CFFFc
mov.b r7,@(r0,r14) 	

loc_8C0CFEFE:
mov 0x21,r0 ; r0 set to 0x21
bra loc_8C0CFFFc
mov.b r6,@(r0,r14) 	
#data 0x00Dc

loc_8C0CFF06:
#data 0x012c
#data 0x140001A3
#data 0x013d

loc_8C0CFF0E:
#data 0x00Cc

loc_8C0CFF10:
#data 0x0159

loc_8C0CFF12:
#data 0x0158

#align4
loc_8C0CFF14:
#data bank04.loc_8c044F12

loc_8C0CFF18:
#data loc_8c0cFE80

loc_8C0CFF1C:
#data bank12.loc_8c129560

loc_8C0CFF20:
#data bank12.loc_8c1294C8

loc_8C0CFF24:
#data bank15.loc_8c15c98c


loc_8C0CFF28:
mov 0x21,r0 ; r0 set to 0x21
mov 0x02,r2 ; r2 set to 0x02
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0D0034,pc),r0 ; r0 set to 0x158
mov.w @(r0,r4),r3
add 0x01,r0 ; r0 set to 0x159
mov.w r3,@r5
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
mov.b r0,@(0x01,r5) 	
mov.w @(loc_8C0D0034,pc),r0 ; r0 set to 0x158
mov.b @(r0,r4),r3
mov.b r3,@r5
mov.b @(0x04,r14),r0 	
add 0x01,r0 ; r0 set to 0x159
mov.b r0,@(0x04,r14) 	
mov r6,r0 ; r0 ??? bc r6 is ???	
nop 	
bra loc_8C0CFF76
mov.b r0,@(0x05,r14) 	

loc_8C0CFF4E:
#data 0x9071
#data 0x600C004c
#data 0x8B518802
#data 0xE703E021
#data 0x90690E74
#data 0x2531034d
#data 0x700184E4
#data 0x607380E4
#data 0x80E50009
#data 0x00096063
#data 0x80E6


loc_8C0CFF76:
mov.w @(loc_8C0D0036,pc),r0 ; r0 set to 0x12c
bra loc_8C0CFFFc
mov.b r6,@(r0,r14) 	

loc_8C0CFF7C:
mov.w @(loc_8C0D0034,pc),r0 ; r0 set to 0x158
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
extu.b r0,r0
cmp/eq 0x01,r0 	
bf loc_8C0CFFFc
mov 0x21,r0 ; r0 set to 0x21
mov.b r13,@(r0,r14) 	
mov.w @(loc_8C0D0034,pc),r0 ; r0 set to 0x158
mov.w @(r0,r4),r3
add 0x01,r0 ; r0 set to 0x159
mov.w r3,@r5
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
mov.b r0,@(0x01,r5) 	
mov.w @(loc_8C0D0034,pc),r0 ; r0 set to 0x158
mov.b @(r0,r4),r3
mov.b r3,@r5
mov.b @(0x04,r14),r0 	
add 0x01,r0 ; r0 set to 0x159
mov.b r0,@(0x04,r14) 	
mov r7,r0 ; r0 ??? bc r7 is ???	
nop 	
mov.b r0,@(0x05,r14) 	
mov.w @(loc_8C0D0036,pc),r0 ; r0 set to 0x12c
mov.b r7,@(r0,r14) 	
bsr bank0d.loc_8C0D050c
mov r14,r5
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r6
mov 0x1B,r5 ; r5 set to 0x1b
mov.l @(loc_8C0D0038,pc),r0 ; r0 set to 0x8C13B08c
extu.b r6,r6
mov r6,r3
shll2 r3
shll r6
add r3,r6
mov.l @(loc_8C0D003C,pc),r3 ; r3 set to 0x8C034C38
mov.b @(r0,r6),r6
jsr @r3
mov r14,r4
bra loc_8C0CFFFc
nop 	

loc_8C0CFFCE:
#data 0x9031
#data 0x600C004c
#data 0x8B118805
#data 0xE205E021
#data 0x90290E24
#data 0x7001034d
#data 0x004C2531
#data 0x90238051
#data 0x2530034c
#data 0x700184E4
#data 0x60D380E4
#data 0x80E50009


loc_8C0CFFFC:
lds.l @r15+,pr 	
mov r14,r4
mov.l @r15+,r13
bra bank0d.loc_8c0d056a
mov.l @r15+,r14

loc_8C0D0006:
mov.l r14,@-r15
mov r4,r14
mov.l @(loc_8C0D0040,pc),r1 ; r1 set to 0x8C15C99c
sts.l pr,@-r15
mov.b @(0x05,r14),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jsr @r3
nop 	
lds.l @r15+,pr 	
mov r14,r4
bra bank0d.loc_8c0d056a
mov.l @r15+,r14

loc_8C0D0022:
mov r4,r3
mov.l @(loc_8C0D0044,pc),r1 ; r1 set to 0x8C15C9B0
mov.l r4,@-r15
mov.b @(0x06,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D0034:
#data 0x0158

loc_8C0D0036:
#data 0x012c

#align4
loc_8C0D0038:
#data bank13.loc_8c13B08c

loc_8C0D003C:
#data bank03.loc_8c034C38

loc_8C0D0040:
#data bank15.loc_8c15c99c

loc_8C0D0044:
#data bank15.loc_8c15c9B0