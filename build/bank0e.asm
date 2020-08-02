
#align4
loc_8C0E00F0:
#data 0x6E432FE6
#data 0x85EE4F22
#data 0x81EE70Ff
#data 0x2008600f
#data 0x85EF8B14
#data 0x6603E503
#data 0x64E3BD6b
#data 0xD44A85Ef
#data 0x81EF7001
#data 0x400085Ef
#data 0x4011004d
#data 0x81EE8D06
#data 0x81EFE000
#data 0x400085Ef
#data 0x81EE004d

#align4
loc_8C0E012C:
#data 0x430BD343
#data 0x600E64E3
#data 0x89094011
#data 0x64E384E5
#data 0xE609D340
#data 0x80E57001
#data 0x4F26E51b
#data 0x6EF6432b

#align4
loc_8C0E014C:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0E0152:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0E023C,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt loc_8C0E016a
mov.l @r15,r4
add 0x04,r15
bra loc_8C0E043a
lds.l @r15+,pr 	

loc_8C0E016A:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0E0172:
mov r4,r3
mov.l @(loc_8C0E0244,pc),r1 ; r1 set to 0x8C15E968
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0E0184:
mov.w @(loc_8C0E0232,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0E0248,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0E0232,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0E0234,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E0236,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E024C,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x0A,r2 ; r2 set to 0x0a
mov 0x24,r0 ; r0 set to 0x24
mov.l @(loc_8C0E0250,pc),r5 ; r5 set to 0x8C15E8F0
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov 0xFE,r3 ; r3 set to 0xFFFFFFFe
mov.b r2,@(r0,r4) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r4) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r4),r2 ; r2 ??? bc r4 is ???	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x14,r4),r3 ; r3 ??? bc r4 is ???	
extu.b r2,r2
shll2 r2
fmov.s @(r0,r3),fr2
shll r2
add r5,r2
fmov.s @r2,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r4),r2
mov 0x04,r0 ; r0 set to 0x04
mov.l @(0x14,r4),r3
extu.b r2,r2
shll2 r2
shll r2
add r2,r5 ; r5 ??? bc r2 is ???	
fmov.s @(r0,r5),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r3),fr2
fadd fr3,fr2
mov.l @(loc_8C0E0240,pc),r3 ; r3 set to 0x8C034C38
mov 0x1B,r5 ; r5 set to 0x1b
mov 0x07,r6 ; r6 set to 0x07
fmov.s fr2,@(r0,r4) 	
jmp @r3
lds.l @r15+,pr 	

loc_8C0E0232:
#data 0x00Dc

loc_8C0E0234:
#data 0x012c

loc_8C0E0236:
#data 0x01A3

#align4
loc_8C0E0238:
#data bank15.loc_8c15E8E4

loc_8C0E023C:
#data bank03.loc_8c034D8c

loc_8C0E0240:
#data bank03.loc_8c034C38

loc_8C0E0244:
#data bank15.loc_8c15E968

loc_8C0E0248:
#data bank12.loc_8c129560

loc_8C0E024C:
#data bank12.loc_8c1294C8

loc_8C0E0250:
#data bank15.loc_8c15E8F0


loc_8C0E0254:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0E0368,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt loc_8C0E026c
mov.l @r15,r4
add 0x04,r15
bra loc_8C0E043a
lds.l @r15+,pr 	

loc_8C0E026C:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0E0274:
mov r4,r3
mov.l @(loc_8C0E036C,pc),r1 ; r1 set to 0x8C15E978
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0E0286:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0E035E,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0E0370,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0E035E,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r14),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0E0360,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E0362,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E0374,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r14),r1
mov 0x0B,r2 ; r2 set to 0x0b
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0E0364,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r2 ; r2 ??? bc r14 is ???	
tst r2,r2
bt/s loc_8C0E0304
mov.l @(0x18,r14),r3
mova @(loc_8C0E0378,pc),r0  ; r0 set to 0x8C0E0378
bra loc_8C0E0308
fmov.s @r0,fr3

loc_8C0E0304:
mova @(loc_8C0E037C,pc),r0  ; r0 init to 0x8C0E037c
fmov.s @r0,fr3

loc_8C0E0308:
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fldi0 fr4
fmov.s @(r0,r3),fr2
mov.l @(loc_8C0E0380,pc),r3 ; r3 set to 0x8C26A524, r3 set to 0x8C26A524
fadd fr3,fr2
mov.l @(loc_8C0E0390,pc),r2 ; r2 set to 0x8C104434, r2 set to 0x8C104434
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0E0384,pc),r0  ; r0 set to 0x8C0E0384, r0 set to 0x8C0E0384
fmov.s @r0,fr3 ; r3 ??, r3 ??	
mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
fmov.s @(r0,r3),fr2 ; r2 ??? bc r3 is ???, r2 ??? bc r3 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
mova @(loc_8C0E0388,pc),r0  ; r0 set to 0x8C0E0388, r0 set to 0x8C0E0388
fmov.s @r0,fr2
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr2,@(r0,r14) 	
mova @(loc_8C0E038C,pc),r0  ; r0 set to 0x8C0E038C, r0 set to 0x8C0E038c
fmov.s @r0,fr2
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr2,@(r0,r14) 	
jsr @r2
mov r14,r4
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
mov r14,r4
mov 0x01,r3 ; r3 set to 0x01, r3 set to 0x01
mov.b r3,@r14
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
lds.l @r15+,pr 	
mov.b @(r0,r14),r6
mov.l @(loc_8C0E0394,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
add 0x3E,r6
jmp @r3
mov.l @r15+,r14

loc_8C0E035E:
#data 0x00Dc

loc_8C0E0360:
#data 0x012c

loc_8C0E0362:
#data 0x01A3

loc_8C0E0364:
#data 0x0130
#data 0x0000

#align4
loc_8C0E0368:
#data bank03.loc_8c034D8c

loc_8C0E036C:
#data bank15.loc_8c15E978

loc_8C0E0370:
#data bank12.loc_8c129560

loc_8C0E0374:
#data bank12.loc_8c1294C8

loc_8C0E0378:
#data 0x42A00000

#align4
loc_8C0E037C:
#data 0xC2A00000

#align4
loc_8C0E0380:
#data 0x8C26A524

#align4
loc_8C0E0384:
#data 0x44092492

#align4
loc_8C0E0388:
#data 0xC0892492

#align4
loc_8C0E038C:
#data 0xBF4DB6Db

#align4
loc_8C0E0390:
#data bank10.loc_8c104434

loc_8C0E0394:
#data bank03.loc_8c034e8c


loc_8C0E0398:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x05,r14),r0 	
tst r0,r0
bf loc_8C0E041a
mov.l @(loc_8C0E0450,pc),r3 ; r3 set to 0x8C034DEe
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
mov.w @(loc_8C0E044A,pc),r0 ; r0 set to 0x41c
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fcmp/gt fr3,fr2
bt loc_8C0E0434
mov.b @(0x05,r14),r0 	
mov 0x34,r5 ; r5 set to 0x34
add 0x01,r0 ; r0 set to 0x39
mov.b r0,@(0x05,r14) 	
mov.w @(loc_8C0E044A,pc),r0 ; r0 set to 0x41c
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
mov 0x38,r0 ; r0 set to 0x38
mov.l @(loc_8C0E0454,pc),r3 ; r3 set to 0x8C04223a
fmov.s fr3,@(r0,r14) 	
jsr @r3
mov r14,r4
mov 0x21,r0 ; r0 set to 0x21
mov.l @(loc_8C0E0458,pc),r3 ; r3 set to 0x8C034E8c
lds.l @r15+,pr 	
mov.b @(r0,r14),r6
mov r14,r4
mov 0x17,r5 ; r5 set to 0x17
add 0x42,r6
jmp @r3
mov.l @r15+,r14

loc_8C0E041A:
mov.l @(loc_8C0E0450,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r14,r4
mov.w @(loc_8C0E044C,pc),r1 ; r1 set to 0x1D0
mov.l @(0x18,r14),r0
mov.b @(r0,r1),r0
extu.b r0,r0
cmp/eq 0x16,r0 	
bt loc_8C0E0434
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0E043a
mov.l @r15+,r14

loc_8C0E0434:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E043A:
mov 0x03,r0 ; r0 set to 0x03
mov.b r0,@(0x04,r4) 	
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8C0E044E,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	

loc_8C0E0444:
mov.l @(loc_8C0E045C,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0E044A:
#data 0x041c

loc_8C0E044C:
#data 0x01D0

loc_8C0E044E:
#data 0x012c

#align4
loc_8C0E0450:
#data bank03.loc_8c034dee

loc_8C0E0454:
#data bank04.loc_8c04223a

loc_8C0E0458:
#data bank03.loc_8c034e8c

loc_8C0E045C:
#data bank04.loc_8c0450C0
#data 0x4F222FE6
#data 0x2F507FFc
#data 0x600C60F0
#data 0x8D0A880a
#data 0xD2506E43
#data 0xE600E503
#data 0x6463420b
#data 0x8D0A2008
#data 0xA00D6403
#data 0xD24B0009
#data 0xE600E504
#data 0x6463420b
#data 0x8F052008
#data 0xE0006403
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0xE020D245
#data 0xE2001424
#data 0x043463F0
#data 0x0424E021
#data 0x14E6937d
#data 0x804184E1
#data 0x0435E026
#data 0x02ED9078
#data 0x622D9077
#data 0x60430426
#data 0x7F040009
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0E04D2:
#data 0x2FE6
#data 0x4F22E503
#data 0x6E43D336
#data 0x430BE600
#data 0x20086463
#data 0x64038D12
#data 0xE020D333
#data 0x1434E201
#data 0x0424E300
#data 0x0434E021
#data 0x52E69359
#data 0x84E11426
#data 0xE0268041
#data 0x90540435
#data 0x042602Ee

#align4
loc_8C0E050C:
#data 0x00096043
#data 0x000B4F26
#data 0x2FE66EF6
#data 0x7FFC4F22
#data 0xE5032F50
#data 0x6E43D324
#data 0x430BE600
#data 0x20086463
#data 0x64038D0e
#data 0xE026923d
#data 0x1434D320
#data 0x042514E6
#data 0x84E1E200
#data 0xE0208041
#data 0x043463F0
#data 0x0424E021
#data 0xE503D319
#data 0x430BE600
#data 0x20086463
#data 0x64038D0e
#data 0xE0269227
#data 0x1434D315
#data 0x042514E6
#data 0x84E1E201
#data 0xE0208041
#data 0x043463F0
#data 0x0424E021
#data 0x00096043
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0E0584:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov 0x02,r3 ; r3 set to 0x02
extu.b r0,r0
cmp/ge r3,r0
bf/s loc_8C0E059c
mov.l @(0x18,r14),r5
mov.l @(loc_8C0E05BC,pc),r1 ; r1 set to 0x8C0450C0
mov r14,r4
jmp @r1
mov.l @r15+,r14

loc_8C0E059C:
mov 0x20,r0 ; r0 set to 0x20
mov r14,r4
mov.b @(r0,r14),r2
mov.l @(loc_8C0E05C0,pc),r0 ; r0 set to 0x8C15E9B8
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r1
jmp @r1
mov.l @r15+,r14
#data 0x2200
#data 0x00CC0158

#align4
loc_8C0E05B4:
#data bank04.loc_8c044F12

loc_8C0E05B8:
#data loc_8c0e0584

loc_8C0E05BC:
#data bank04.loc_8c0450C0

loc_8C0E05C0:
#data bank15.loc_8c15E9B8

loc_8C0E05C4:
#data 0x6E432FE6
#data 0x84E44F22
#data 0x8B372008
#data 0x917A84E4
#data 0xD3417001
#data 0x31EC80E4
#data 0x92749076
#data 0x325C430b
#data 0xE6019073
#data 0x715061E3
#data 0x84520E64
#data 0x845180E2
#data 0xE05080E1
#data 0xFE37F356
#data 0xF356E054
#data 0x9065FE37
#data 0x0E34035c
#data 0x025C7001
#data 0xE0300E24
#data 0x6253035c
#data 0x0E347250
#data 0x430BD331
#data 0xE024E00c
#data 0xE400025c
#data 0xE0340E24
#data 0xFE37F356
#data 0xF356E038
#data 0x904EFE37
#data 0x60630E46
#data 0x81EE0009
#data 0x0E449047

#align4
loc_8C0E0640:
#data 0x035D9048
#data 0x633D9047
#data 0x323002Ee
#data 0x4F268904
#data 0x64E3D224
#data 0x6EF6422b

#align4
loc_8C0E0658:
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x89254015
#data 0x81EEE010
#data 0x64E3BF33
#data 0x8D1F2008
#data 0x902E6403
#data 0x03EE912d
#data 0x730131Ec
#data 0x00EE0E36
#data 0xC903D319
#data 0x90242102
#data 0xE00405Ee
#data 0x45084500
#data 0xF356353c
#data 0xF2E6E038
#data 0xF230F458
#data 0x901BF427
#data 0x222802Ed
#data 0xE0348D01
#data 0xF44d

loc_8C0E06AA:
#data 0xF3E6
#data 0xF437F340

#align4
loc_8C0E06B0:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0E06B6:
#data 0x7FFc
#data 0xD30DD00c
#data 0xE5172F50
#data 0x666C66F0
#data 0x432B066c
#data 0x00DC7F04
#data 0x012C00C0
#data 0x00D001A3
#data 0x00CC0158
#data 0x00000130

#align4
loc_8C0E06DC:
#data bank12.loc_8c129560

loc_8C0E06E0:
#data bank12.loc_8c1294C8

loc_8C0E06E4:
#data bank04.loc_8c0450C0

loc_8C0E06E8:
#data bank15.loc_8c15E998

loc_8C0E06EC:
#data bank15.loc_8c15E9E4

loc_8C0E06F0:
#data bank03.loc_8c034e8c

loc_8C0E06F4:
#data 0x6E432FE6
#data 0x84E44F22
#data 0x8B462008
#data 0x918684E4
#data 0xD3467001
#data 0x31EC80E4
#data 0x92809082
#data 0x325C430b
#data 0xE201907f
#data 0x715061E3
#data 0x84520E24
#data 0x845180E2
#data 0xE05080E1
#data 0xFE37F356
#data 0xF356E054
#data 0x9071FE37
#data 0x0E34035c
#data 0x025C7001
#data 0xE0300E24
#data 0x6253035c
#data 0x0E347250
#data 0x430BD336
#data 0xE024E00c
#data 0x025CF38d
#data 0xE06C0E24
#data 0xE068FE37
#data 0xC732FE37
#data 0xE05CF308
#data 0xC731FE37
#data 0xE060F308
#data 0x9054FE37
#data 0x233803Ed
#data 0xE5118D04
#data 0xF3E6E05c
#data 0xFE37F34d

#align4
loc_8C0E0780:
#data 0x64E3BF99
#data 0x81EEE010
#data 0xA03FE00b
#data 0x81Ef

loc_8C0E078E:
#data 0x9045
#data 0x9044025d
#data 0x03EE622d
#data 0x8B0D3320
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x89104015
#data 0x81EEE010
#data 0x70FF85Ef
#data 0x600F81Ef
#data 0x89044015

#align4
loc_8C0E07B8:
#data 0xD21D4F26
#data 0x422B64E3
#data 0x6EF6

loc_8C0E07C2:
#data 0x85Ef
#data 0xBF766503
#data 0x64E3

loc_8C0E07CA:
#data 0xE15c
#data 0x31ECD319
#data 0xE03464E3
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
#data 0x4F26FE27
#data 0x6EF6432b

#align4
loc_8C0E080C:
#data 0x000B4F26
#data 0x00DC6EF6
#data 0x012C00C0
#data 0x013001A3
#data 0x00CC0158

#align4
loc_8C0E0820:
#data bank12.loc_8c129560

loc_8C0E0824:
#data bank12.loc_8c1294C8
#data 0x3E555555
#data 0xBF892492

#align4
loc_8C0E0830:
#data bank04.loc_8c0450C0

loc_8C0E0834:
#data bank03.loc_8c034dee

loc_8C0E0838:
#data 0x6E432FE6
#data 0x84E44F22
#data 0x8B592008
#data 0x918B84E4
#data 0xD3487001
#data 0x31EC80E4
#data 0x92859087
#data 0x325C430b
#data 0xE2019084
#data 0x715061E3
#data 0x84520E24
#data 0x845180E2
#data 0xE05080E1
#data 0xFE37F356
#data 0xF356E054
#data 0x9076FE37
#data 0x0E34035c
#data 0x025C7001
#data 0xE0300E24
#data 0x6253035c
#data 0x0E347250
#data 0x430BD338
#data 0xE30CE00c
#data 0xE024F48d
#data 0x0E34025c
#data 0xFE47E05c
#data 0xFE47E060
#data 0xFE47E068
#data 0xFE47E06c
#data 0xF408C731
#data 0xF308C731
#data 0xFE37E05c
#data 0x03ED9056
#data 0x89052338
#data 0xF408C72e
#data 0xF3E6E05c
#data 0xFE37F34d

#align4
loc_8C0E08CC:
#data 0xD32DE034
#data 0xE604F356
#data 0xFE37F340
#data 0xF308C729
#data 0xF256E038
#data 0xF230E512
#data 0x430BFE27
#data 0xD32764E3
#data 0x2E20E201
#data 0x4F2664E3
#data 0x6EF6432b

#align4
loc_8C0E08F8:
#data 0x200884E5
#data 0xD3238B0e
#data 0x64E3430b
#data 0x02EC9031
#data 0x89242228
#data 0x0E34E300
#data 0x700184E5
#data 0xE01C80E5
#data 0x81EEA01d

#align4
loc_8C0E091C:
#data 0x31ECE15c
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x89034011
#data 0x700184E4
#data 0x80E4A005

#align4
loc_8C0E094C:
#data 0xD20F4F26
#data 0x422B64E3
#data 0x6EF6

loc_8C0E0956:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0E095C:
rts 	
nop 	
;-------------------------------------------------------------------------------
#data 0x00C000Dc
#data 0x01A3012c
#data 0x01410130

#align4
loc_8C0E096C:
#data bank12.loc_8c129560

loc_8C0E0970:
#data bank12.loc_8c1294C8
#data 0x42A00000
#data 0x413AAAAa
#data 0xC2A00000
#data 0xC14DB6Db

#align4
loc_8C0E0984:
#data bank03.loc_8c034e8c

loc_8C0E0988:
#data bank10.loc_8c104434

loc_8C0E098C:
#data bank03.loc_8c034dee

loc_8C0E0990:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x4F222FC6
#data 0x200884E4
#data 0xEC018F59
#data 0x919384E4
#data 0xD34C7001
#data 0x31EC80E4
#data 0x928D908f
#data 0x32DC430b
#data 0x61E3908c
#data 0x0EC47150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC907f
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD33D0E34
#data 0xE00C430b
#data 0xF48DE024
#data 0xE30802Dc
#data 0xE0310E24
#data 0xE05C0E34
#data 0xE060FE47
#data 0xE068FE47
#data 0xE06CFE47
#data 0xC735FE47
#data 0xC735F408
#data 0xE05CF308
#data 0x905DFE37
#data 0x233803Ed
#data 0xC7328905
#data 0xE05CF408
#data 0xF34DF3E6
#data 0xFE37

loc_8C0E0A2E:
#data 0xE034
#data 0xF3D6D32f
#data 0xE608E513
#data 0xFE37F341
#data 0xF3D6E038
#data 0x430BFE37
#data 0x2EC064E3
#data 0x4F2664E3
#data 0x6CF6D229
#data 0x422B6DF6
#data 0x6EF6

loc_8C0E0A56:
#data 0xE024
#data 0x0E2402Dc
#data 0x200884E5
#data 0xE15C8B2a
#data 0x31ECD324
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x64E3430b
#data 0xF4D6E034
#data 0xF431F3E6
#data 0xF345F38d
#data 0xF44D8B00

#align4
loc_8C0E0A94:
#data 0xF308C719
#data 0x8B14F345
#data 0xE60984E5
#data 0xE513D313
#data 0x64E37001
#data 0x901680E5
#data 0x4F260DC5
#data 0x6DF66CF6
#data 0x6EF6432b

#align4
loc_8C0E0AB8:
#data 0xD30F4F26
#data 0x6CF664E3
#data 0x432B6DF6
#data 0x6EF6

loc_8C0E0AC6:
#data 0x4F26
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x00C000Dc
#data 0x01A3012c
#data 0x02AE0130

#align4
loc_8C0E0ADC:
#data bank12.loc_8c129560

loc_8C0E0AE0:
#data bank12.loc_8c1294C8
#data 0x44200000
#data 0x413AAAAa
#data 0xC4200000

#align4
loc_8C0E0AF0:
#data bank03.loc_8c034e8c

loc_8C0E0AF4:
#data bank10.loc_8c104434

loc_8C0E0AF8:
#data bank03.loc_8c034dee
#data 0x43200000

#align4
loc_8C0E0B00:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x4F222FC6
#data 0x200884E4
#data 0xEC018F6e
#data 0x915784E4
#data 0xD32E7001
#data 0x31EC80E4
#data 0x92519053
#data 0x32DC430b
#data 0x61E39050
#data 0x0EC47150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC9043
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD31F0E34
#data 0xE00C430b
#data 0xF48DE024
#data 0x0E2402Dc
#data 0x03ECE031
#data 0x0E3473F8
#data 0xFE47E05c
#data 0xFE47E060
#data 0xFE47E068
#data 0xFE47E06c
#data 0xF408C716
#data 0xF308C716
#data 0xFE37E05c
#data 0x03ED9020
#data 0x89052338
#data 0xF408C713
#data 0xF3E6E05c
#data 0xFE37F34d

#align4
loc_8C0E0BA0:
#data 0xD311E034
#data 0xE513F3D6
#data 0xF340E60a
#data 0xE038FE37
#data 0xFE37F3D6
#data 0x64E3430b
#data 0x64E32EC0
#data 0xD20B4F26
#data 0x6DF66CF6
#data 0x6EF6422b
#data 0x00C000Dc
#data 0x01A3012c
#data 0x00000130

#align4
loc_8C0E0BD4:
#data bank12.loc_8c129560

loc_8C0E0BD8:
#data bank12.loc_8c1294C8
#data 0x44200000
#data 0xC13AAAAa
#data 0xC4200000

#align4
loc_8C0E0BE8:
#data bank03.loc_8c034e8c

loc_8C0E0BEC:
#data bank10.loc_8c104434

loc_8C0E0BF0:
#data 0x02DCE024
#data 0x84E50E24
#data 0x8B422008
#data 0xD334E15c
#data 0xE03431Ec
#data 0xF2E6F318
#data 0x31ECE168
#data 0xFE27F230
#data 0xF2E6E05c
#data 0xF230F318
#data 0x430BFE27
#data 0xE03464E3
#data 0xF3E6F4D6
#data 0xF38DF431
#data 0x8B00F345
#data 0xF44d

loc_8C0E0C2E:
#data 0xC729
#data 0xF345F308
#data 0x84E58B45
#data 0x80E57001
#data 0x0DC59046
#data 0xF408C725
#data 0xF208C725
#data 0xFE27E068
#data 0x03ED903f
#data 0x89052338
#data 0xF408C722
#data 0xF2E6E068
#data 0xFE27F24d

#align4
loc_8C0E0C60:
#data 0xD320E034
#data 0xE513F3E6
#data 0xF341E60b
#data 0x430BFE37
#data 0x4F2664E3
#data 0xD21C64D3
#data 0x6CF6E529
#data 0x422B6DF6
#data 0x6EF6

loc_8C0E0C82:
#data 0x84E5
#data 0x8801600c
#data 0xE05C8B14
#data 0xE034F0E6
#data 0xE168F3E6
#data 0xF30031Ec
#data 0xE05CFE37
#data 0xF318F2E6
#data 0xF32CF230
#data 0xFE27F302
#data 0xF235F28d
#data 0x84E58B02
#data 0x80E57001

#align4
loc_8C0E0CB4:
#data 0xD3064F26
#data 0x6CF664E3
#data 0x432B6DF6
#data 0x6EF6

loc_8C0E0CC2:
#data 0x4F26
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x013002B0

#align4
loc_8C0E0CD0:
#data bank03.loc_8c034dee
#data 0x43D55555
#data 0x42555555
#data 0x3ED55555
#data 0xC2555555

#align4
loc_8C0E0CE4:
#data bank03.loc_8c034e8c

loc_8C0E0CE8:
#data bank04.loc_8c04223a


loc_8C0E0CEC:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
tst r0,r0
bf loc_8C0E0D74
mov.b @(0x04,r14),r0 	
mov.w @(loc_8C0E0DEA,pc),r1 ; r1 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0E0DFC,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0E0DEC,pc),r0 ; r0 set to 0xC0
mov.w @(loc_8C0E0DEA,pc),r2 ; r2 set to 0xDc
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0E0DEE,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E0DF0,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E0E00,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov r14,r4
mov.b @(r0,r5),r2
mov 0x19,r6 ; r6 set to 0x19
mov.b r2,@(r0,r14) 	
mov 0xF8,r2 ; r2 set to 0xFFFFFFF8
mov.b @(r0,r5),r3 ; r3 ??? bc r5 is ???	
mov.b r3,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r2,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr3
mov.l @(loc_8C0E0E04,pc),r3 ; r3 set to 0x8C034E8c
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
mov 0x17,r5 ; r5 set to 0x17
fmov.s fr3,@(r0,r14) 	
lds.l @r15+,pr 	
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0E0D74:
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r3
mov.b r3,@(r0,r14) 	
mov 0xF8,r3 ; r3 set to 0xFFFFFFF8
mov.w @(loc_8C0E0DF2,pc),r0 ; r0 set to 0xCc
mov.l @(r0,r14),r0 ; r0 ??? bc r14 is ???	
shad r3, r0
mov.w @(loc_8C0E0DF4,pc),r3 ; r3 set to 0x159
and 0x1F,r0 	
add r5,r3 ; r3 ??? bc r5 is ???	
mov.b @r3,r3
extu.b r3,r3
cmp/eq r3,r0
bt loc_8C0E0D96
mov 0x03,r0 ; r0 set to 0x03
bra loc_8C0E0E94
mov.b r0,@(0x04,r14) 	

loc_8C0E0D96:
#data 0x84E5
#data 0x2008DD1b
#data 0xE0348B38
#data 0xFE37F356
#data 0xF356E038
#data 0x9024FE37
#data 0x8802005c
#data 0x90208970
#data 0x8801005c
#data 0x84E58B13
#data 0x80E57001
#data 0xF308C712
#data 0xFE37E05c
#data 0xF38DE068
#data 0x9013FE37
#data 0x233803Ed
#data 0xE05C8903
#data 0xF34DF3E6
#data 0xFE37

loc_8C0E0DDE:
#data 0xE020
#data 0x81Ee

loc_8C0E0DE2:
#data 0x4D0b
#data 0xA05B64E3
#data 0x0009

loc_8C0E0DEA:
#data 0x00Dc

loc_8C0E0DEC:
#data 0x00C0

loc_8C0E0DEE:
#data 0x012c

loc_8C0E0DF0:
#data 0x01A3

loc_8C0E0DF2:
#data 0x00Cc

loc_8C0E0DF4:
#data 0x0159
#data 0x02B2
#data 0x00000130

#align4
loc_8C0E0DFC:
#data bank12.loc_8c129560

loc_8C0E0E00:
#data bank12.loc_8c1294C8

loc_8C0E0E04:
#data bank03.loc_8c034e8c

loc_8C0E0E08:
#data bank03.loc_8c034dee
#data 0xC1200000

#align4
loc_8C0E0E10:
#data 0x600C84E5
#data 0x8B2A8801
#data 0x31ECE15c
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x64E34D0b
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x892D4015
#data 0x64E384E5
#data 0xE61AD33f
#data 0x80E57001
#data 0xF408C73c
#data 0xF3E6E05c
#data 0xF343E517
#data 0xE068FE37
#data 0xF243F2E6
#data 0x4F26FE27
#data 0x432B6DF6
#data 0x6EF6

loc_8C0E0E6E:
#data 0xE15c
#data 0xE03431Ec
#data 0xF2E6F318
#data 0x31ECE168
#data 0xFE27F230
#data 0xF2E6E05c
#data 0xF230F318
#data 0x4D0BFE27
#data 0x600E64E3
#data 0x89054011


loc_8C0E0E94:
lds.l @r15+,pr 	
mov.l @(loc_8C0E0F4C,pc),r2 ; r2 set to 0x8C0450C0
mov r14,r4
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

#align4
loc_8C0E0EA0:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0E0EA8:
rts 	
nop 	
;-------------------------------------------------------------------------------

#align4
loc_8C0E0EAC:
#data 0x84444F22
#data 0x8B372008
#data 0x91418444
#data 0xD3257001
#data 0x314C8044
#data 0x923B903d
#data 0x325C430b
#data 0xE601903a
#data 0x71506143
#data 0x84520464
#data 0x84518042
#data 0xE0508041
#data 0xF437F356
#data 0xF356E054
#data 0x902CF437
#data 0x0434035c
#data 0x025C7001
#data 0xE0300424
#data 0x6253035c
#data 0x04347250
#data 0x430BD315
#data 0xE024E00c
#data 0x025C6143
#data 0x7134E307
#data 0x62530424
#data 0x72349016
#data 0xE0240464
#data 0xE0080434
#data 0x814ED30d
#data 0xE00C430b

#align4
loc_8C0E0F24:
#data 0x70FF854e
#data 0x600F814e
#data 0x89024011
#data 0x70018444
#data 0x8044

loc_8C0E0F36:
#data 0x4F26
#data 0x0009000b
;-------------------------------------------------------------------------------
#data 0x00C000Dc
#data 0x01A3012c
#data 0x40800000

#align4
loc_8C0E0F48:
#data bank03.loc_8c034e8c

loc_8C0E0F4C:
#data bank04.loc_8c0450C0

loc_8C0E0F50:
#data bank12.loc_8c129560

loc_8C0E0F54:
#data bank12.loc_8c1294C8


loc_8C0E0F58:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
tst r0,r0
bf/s loc_8C0E0FF2
mov r5,r13
mov.b @(0x04,r14),r0 	
mov.w @(loc_8C0E1030,pc),r1 ; r1 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0E103C,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0E1032,pc),r0 ; r0 set to 0xC0
mov.w @(loc_8C0E1030,pc),r2 ; r2 set to 0xDc
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0E1034,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E1036,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E1040,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0E1034,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r2
tst r2,r2
bt/s loc_8C0E0FCe
mov 0x31,r0 ; r0 set to 0x31
bra loc_8C0E0FD0
mov 0xFC,r3

loc_8C0E0FCE:
#data 0xE3Ee

#align4
loc_8C0E0FD0:
#data 0xE0340E34
#data 0xE517F3D6
#data 0xFE37D31a
#data 0xF3D6E038
#data 0xE000FE37
#data 0xE02181Ee
#data 0x666C06Ec
#data 0x430B4600
#data 0x64E3

loc_8C0E0FF2:
#data 0xE024
#data 0x0E2402Dc
#data 0xF3D6E034
#data 0xE038FE37
#data 0xFE37F3D6
#data 0x30DC9018
#data 0x88058401
#data 0x90138904
#data 0x840130Dc
#data 0x8B058808

#align4
loc_8C0E1018:
#data 0xD20B4F26
#data 0x6DF664E3
#data 0x6EF6422b

#align4
loc_8C0E1024:
#data 0xD2094F26
#data 0x6DF664E3
#data 0x6EF6422b

loc_8C0E1030:
#data 0x00Dc

loc_8C0E1032:
#data 0x00C0

loc_8C0E1034:
#data 0x012c

loc_8C0E1036:
#data 0x01A3
#data 0x00000150

#align4
loc_8C0E103C:
#data bank12.loc_8c129560

loc_8C0E1040:
#data bank12.loc_8c1294C8

loc_8C0E1044:
#data bank03.loc_8c034e8c

loc_8C0E1048:
#data bank03.loc_8c034dee

loc_8C0E104C:
#data bank04.loc_8c0450C0

loc_8C0E1050:
#data 0x4F222FE6
#data 0x20088444
#data 0xE6018F35
#data 0x91658444
#data 0xD3367001
#data 0x314C8044
#data 0x925F9061
#data 0x325C430b
#data 0x6143905e
#data 0x04647150
#data 0x80428452
#data 0x80418451
#data 0xF356E050
#data 0xE054F437
#data 0xF437F356
#data 0x035C9051
#data 0x70010434
#data 0x0424025c
#data 0x035CE030
#data 0x72506253
#data 0xD3270434
#data 0xE00C430b
#data 0x025CE024
#data 0x0424E300
#data 0x903DE2Ff
#data 0xE0310434
#data 0xE0340424
#data 0xF437F356
#data 0xF356E038
#data 0xF437

loc_8C0E10C6:
#data 0x9035
#data 0x9034035d
#data 0x024E633d
#data 0x89033320
#data 0xD21B4F26
#data 0x6EF6422b

#align4
loc_8C0E10DC:
#data 0x9E2BE024
#data 0x3E5C025c
#data 0xE0340424
#data 0xF437F356
#data 0xF356E038
#data 0x84E1F437
#data 0x63EC6E03
#data 0x890D2338
#data 0x63EC9018
#data 0x854E0464
#data 0x890A3300
#data 0x60ECD30f
#data 0x814EE517
#data 0x66E34F26
#data 0x6EF6432b

#align4
loc_8C0E1118:
#data 0x2008854e
#data 0x8903

loc_8C0E111E:
#data 0x4F26
#data 0x432BD30a
#data 0x6EF6

loc_8C0E1126:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x00C000Dc
#data 0x01A3012c
#data 0x00CC0158
#data 0x00000150

#align4
loc_8C0E113C:
#data bank12.loc_8c129560

loc_8C0E1140:
#data bank12.loc_8c1294C8

loc_8C0E1144:
#data bank04.loc_8c0450C0

loc_8C0E1148:
#data bank03.loc_8c034e8c

loc_8C0E114C:
#data bank03.loc_8c034dee
#data 0x4F222FE6
#data 0x6E437FF8
#data 0x00096053
#data 0xE503D351
#data 0x2F6080F4
#data 0x430BE600
#data 0x20086463
#data 0x64038D14
#data 0xE120D34d
#data 0x928E314c
#data 0x958D1434
#data 0x84F414E6
#data 0x2100354c
#data 0x63F0E021
#data 0xE0260434
#data 0x84E10425
#data 0x90828041
#data 0x253103Ed
#data 0x00096043
#data 0x4F267F08
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0E11A4:
mov r4,r3
mov.l @(loc_8C0E12AC,pc),r1 ; r1 set to 0x8C15E9F8
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0E11B6:
mov.b @(0x04,r4),r0 	
add 0x01,r0
mov.b r0,@(0x04,r4) 	

loc_8C0E11BC:
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(loc_8C0E12B0,pc),r0 ; r0 set to 0x8C15EA08, r0 set to 0x8C15EA08
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

loc_8C0E11D0:
mov r4,r3
mov.l @(loc_8C0E12B4,pc),r1 ; r1 set to 0x8C15EA14
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0E11E2:
mov.w @(loc_8C0E129C,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x05,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0E12B8,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x05,r4) 	
mov.w @(loc_8C0E129C,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0E129E,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E12A0,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E12BC,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x00,r2 ; r2 set to 0x00
mov 0x24,r0 ; r0 set to 0x24
mov r2,r6 ; r6 set to 0x00
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov 0x17,r5 ; r5 set to 0x17
mov.b r2,@(r0,r4) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mova @(loc_8C0E12C0,pc),r0  ; r0 set to 0x8C0E12C0
fmov.s @r0,fr3
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr2 ; r2 ??? bc r3 is ???	
mov.l @(loc_8C0E12C4,pc),r3 ; r3 set to 0x8C034E8c
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
jmp @r3
lds.l @r15+,pr 	

#align4
loc_8C0E126C:
#data 0x52469514
#data 0x354C9013
#data 0x012D6351
#data 0x89013310
#data 0x8044E002

#align4
loc_8C0E1280:
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0E1284:
mov r4,r3
mov.l @(loc_8C0E12C8,pc),r1 ; r1 set to 0x8C15EA1c
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x2300
#data 0x015800Cc

loc_8C0E129C:
#data 0x00Dc

loc_8C0E129E:
#data 0x012c

loc_8C0E12A0:
#data 0x01A3
#data 0x0000

#align4
loc_8C0E12A4:
#data bank04.loc_8c044F12

loc_8C0E12A8:
#data loc_8c0e11A4

loc_8C0E12AC:
#data bank15.loc_8c15E9F8

loc_8C0E12B0:
#data bank15.loc_8c15EA08

loc_8C0E12B4:
#data bank15.loc_8c15EA14

loc_8C0E12B8:
#data bank12.loc_8c129560

loc_8C0E12BC:
#data bank12.loc_8c1294C8

loc_8C0E12C0:
#data 0xC0CDB6Db

#align4
loc_8C0E12C4:
#data bank03.loc_8c034e8c

loc_8C0E12C8:
#data bank15.loc_8c15EA1c


loc_8C0E12CC:
mov.w @(loc_8C0E142C,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x05,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0E1438,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x05,r4) 	
mov.w @(loc_8C0E142C,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0E142E,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E1430,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E143C,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r4) 	
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8C0E142E,pc),r0 ; r0 set to 0x12c
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
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r4),r3
tst r3,r3
bt/s loc_8C0E136a
fldi0 fr4
mova @(loc_8C0E1440,pc),r0  ; r0 set to 0x8C0E1440
fmov.s @r0,fr3
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr3,@(r0,r4) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r4) 	
mova @(loc_8C0E1444,pc),r0  ; r0 set to 0x8C0E1444
bra loc_8C0E137a
fmov.s @r0,fr3

loc_8C0E136A:
#data 0xC737
#data 0xE05CF308
#data 0xE068F437
#data 0xC735F447
#data 0xF308

loc_8C0E137A:
#data 0xE060
#data 0xC734F437
#data 0xE06CF308
#data 0x9054F437
#data 0x2338034d
#data 0xE6018D08
#data 0xF346E05c
#data 0xF437F34d
#data 0xF346E068
#data 0xF437F34d

#align4
loc_8C0E13A0:
#data 0xE517D32c
#data 0x4F26432b


loc_8C0E13A8:
mov r4,r3
mov.l @(loc_8C0E1458,pc),r1 ; r1 set to 0x8C15EA24
mov.l r4,@-r15
mov.b @(0x06,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0E13BA:
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
#data 0xE038F427
#data 0x901DF346
#data 0xF2365346
#data 0x8B12F235
#data 0x70018446
#data 0x90158046
#data 0xF3365346
#data 0xF437E038
#data 0x814EE03c
#data 0xF346E060
#data 0xF437F34d
#data 0xF330F39d
#data 0xF233F246
#data 0xF427

loc_8C0E1426:
#data 0xD30d
#data 0x0009432b

loc_8C0E142C:
#data 0x00Dc

loc_8C0E142E:
#data 0x012c

loc_8C0E1430:
#data 0x01A3
#data 0x0130
#data 0x0000041c

#align4
loc_8C0E1438:
#data bank12.loc_8c129560

loc_8C0E143C:
#data bank12.loc_8c1294C8

loc_8C0E1440:
#data 0xBFD55555

#align4
loc_8C0E1444:
#data 0x414DB6Db
#data 0xBF555555
#data 0x41CDB6Db
#data 0xBF092492

#align4
loc_8C0E1454:
#data bank03.loc_8c034e8c

loc_8C0E1458:
#data bank15.loc_8c15EA24

loc_8C0E145C:
#data bank03.loc_8c034dee


loc_8C0E1460:
mov.w @(0x1C,r4),r0 	
mov 0x1E,r3 ; r3 set to 0x1e
add 0xFF,r0
mov.w r0,@(0x1C,r4) 	
mov.w @(0x1C,r4),r0 	
cmp/ge r3,r0
bt/s loc_8C0E1488
mov 0x01,r5 ; r5 set to 0x01
mov.w @(0x1C,r4),r0 	
cmp/pz r0
bt loc_8C0E147c
mov 0x02,r0 ; r0 set to 0x02
bra loc_8C0E148c
mov.b r0,@(0x04,r4) 	

loc_8C0E147C:
tst r5,r0
bt loc_8C0E1488
mov.w @(loc_8C0E156A,pc),r0 ; r0 set to 0x12c
mov 0x00,r1 ; r1 set to 0x00
bra loc_8C0E148c
mov.b r1,@(r0,r4) 	

loc_8C0E1488:
mov.w @(loc_8C0E156A,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r4) 	

loc_8C0E148C:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0E1490:
mov r4,r3
mov.l @(loc_8C0E1574,pc),r1 ; r1 set to 0x8C15EA34
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0E14A2:
mov.w @(loc_8C0E156C,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x05,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0E1578,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x05,r4) 	
mov.w @(loc_8C0E156C,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0E156A,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E156E,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E157C,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r4) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r4),r2
fmov.s @(r0,r2),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0E1570,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r3
tst r3,r3
bt loc_8C0E152c
mov.l @(loc_8C0E1580,pc),r1 ; r1 set to 0x41BAAAAa
mov 0x34,r0 ; r0 set to 0x34
lds r1,fpul 	
bra loc_8C0E1534
fsts fpul,fr3

loc_8C0E152C:
mov.l @(loc_8C0E1584,pc),r1 ; r1 set to 0xC1BAAAAa
mov 0x34,r0 ; r0 set to 0x34
lds r1,fpul 	
fsts fpul,fr3

loc_8C0E1534:
fmov.s @(r0,r4),fr2
mov.l @(loc_8C0E1588,pc),r1 ; r1 set to 0x43294924, r1 set to 0x43294924
fadd fr3,fr2
lds r1,fpul 	
fmov.s fr2,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r4),fr2
fsts fpul,fr3
fadd fr3,fr2
lds.l @r15+,pr 	
rts 	
fmov.s fr2,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0E154C:
mov 0x02,r0 ; r0 set to 0x02
rts 	
mov.b r0,@(0x04,r4) 	
;-------------------------------------------------------------------------------

loc_8C0E1552:
mov.w @(loc_8C0E156A,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@(r0,r4) 	
mov 0x03,r0 ; r0 set to 0x03
rts 	
mov.b r0,@(0x04,r4) 	
;-------------------------------------------------------------------------------

loc_8C0E155E:
mov.w @(loc_8C0E156A,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0E158C,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0E156A:
#data 0x012c

loc_8C0E156C:
#data 0x00Dc

loc_8C0E156E:
#data 0x01A3

loc_8C0E1570:
#data 0x0130
#data 0x0000

#align4
loc_8C0E1574:
#data bank15.loc_8c15EA34

loc_8C0E1578:
#data bank12.loc_8c129560

loc_8C0E157C:
#data bank12.loc_8c1294C8

loc_8C0E1580:
#data 0x41BAAAAa

#align4
loc_8C0E1584:
#data 0xC1BAAAAa

#align4
loc_8C0E1588:
#data 0x43294924

#align4
loc_8C0E158C:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0xE600D34b
#data 0x2F501F41
#data 0x430BE503
#data 0x20086463
#data 0x64038D0a
#data 0xE020D347
#data 0x52F11434
#data 0x63F01426
#data 0x0434927e
#data 0x0425E026
#data 0x4F267F08
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0E15C4:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0E16B6,pc),r2 ; r2 set to 0x2A4
mov 0x20,r0 ; r0 set to 0x20
mov.l @(0x18,r14),r3
mov r14,r4
add r3,r2 ; r2 ??? bc r3 is ???	
mov.l @(loc_8C0E16CC,pc),r3 ; r3 set to 0x8C28C6D8
mov.l r2,@r3 ; r3 ??? bc r2 is ???	
mov.b @(r0,r14),r1
mov.l @(loc_8C0E16D0,pc),r0 ; r0 set to 0x8C15EA3c
extu.b r1,r1
shll2 r1
mov.l @(r0,r1),r2
jmp @r2
mov.l @r15+,r14

loc_8C0E15E4:
mov r4,r3
mov.l @(loc_8C0E16D4,pc),r1 ; r1 set to 0x8C15EA44
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0E15F6:
mov.w @(loc_8C0E16B8,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0E16D8,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0E16B8,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0E16BA,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E16BC,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E16DC,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x24,r0 ; r0 set to 0x24
mov 0x1B,r5 ; r5 set to 0x1b
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r4) 	
mov.w @(loc_8C0E16BE,pc),r0 ; r0 set to 0x130
mov.l @(0x18,r4),r2
mov.w @(r0,r2),r3
mov 0x00,r2 ; r2 set to 0x00
mov r2,r6 ; r6 set to 0x00
mov.w r3,@(r0,r4) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r2,@(r0,r4) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
mov.l @(loc_8C0E16E0,pc),r3 ; r3 set to 0x8C034C38
fmov.s fr3,@(r0,r4) 	
jmp @r3
lds.l @r15+,pr 	

loc_8C0E1686:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x05,r14),r0 	
tst r0,r0
bf loc_8C0E1706
mov.w @(loc_8C0E16C0,pc),r0 ; r0 set to 0x141
mov.l @(0x18,r14),r3
mov.b @(r0,r3),r2
tst r2,r2
bt loc_8C0E1760
mov.b @(0x05,r14),r0 	
add 0x01,r0 ; r0 set to 0x142
mov.b r0,@(0x05,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
mov.w r0,@(0x1E,r14) 	
mov.w @(loc_8C0E16BE,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt loc_8C0E16E8
mova @(loc_8C0E16E4,pc),r0  ; r0 set to 0x8C0E16E4
bra loc_8C0E16Ec
fmov.s @r0,fr3
#data 0x2400

loc_8C0E16B6:
#data 0x02A4

loc_8C0E16B8:
#data 0x00Dc

loc_8C0E16BA:
#data 0x012c

loc_8C0E16BC:
#data 0x01A3

loc_8C0E16BE:
#data 0x0130

loc_8C0E16C0:
#data 0x0141
#data 0x0000

#align4
loc_8C0E16C4:
#data bank04.loc_8c044F12

loc_8C0E16C8:
#data loc_8c0e15C4

loc_8C0E16CC:
#data 0x8C28C6D8

#align4
loc_8C0E16D0:
#data bank15.loc_8c15EA3c

loc_8C0E16D4:
#data bank15.loc_8c15EA44

loc_8C0E16D8:
#data bank12.loc_8c129560

loc_8C0E16DC:
#data bank12.loc_8c1294C8

loc_8C0E16E0:
#data bank03.loc_8c034C38

loc_8C0E16E4:
#data 0xC0555555

#align4
loc_8C0E16E8:
#data 0xF308C752

#align4
loc_8C0E16EC:
#data 0xFE37E05c
#data 0xF38DE068
#data 0xC750FE37
#data 0xE060F308
#data 0xC74FFE37
#data 0xE06CF308
#data 0xFE37


loc_8C0E1706:
mov.l @(loc_8C0E1840,pc),r3 ; r3 set to 0x8C034D8c
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
mov.w @(0x1E,r14),r0 	
add 0xFF,r0 ; r0 set to 0x5f
mov.w r0,@(0x1E,r14) 	
exts.w r0,r0 ; r0 ??	
cmp/pz r0
bt loc_8C0E1758
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0E1928
mov.l @r15+,r14

loc_8C0E1758:
mov.w @(0x1E,r14),r0 	
mov 0x28,r3 ; r3 set to 0x28
cmp/gt r3,r0
bf loc_8C0E176c

loc_8C0E1760:
mov.w @(loc_8C0E182A,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
mov 0x01,r1 ; r1 set to 0x01, r1 set to 0x01
mov.b r1,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E176C:
mov.l @(loc_8C0E1844,pc),r3 ; r3 set to 0x8C26823c
mov.w @(loc_8C0E182A,pc),r1 ; r1 set to 0x12c
mov.l @r3,r0
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(0x1C,r0),r0
and 0x01,r0 	
mov r0,r2
mov.b @(0x02,r14),r0 	
xor r2,r0
mov.b r0,@r1
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E1786:
mov r4,r3
mov.l @(loc_8C0E1848,pc),r1 ; r1 set to 0x8C15EA54
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0E1798:
mov.l r8,@-r15
mov.w @(loc_8C0E182C,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0E184C,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0E182C,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0E182A,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E182E,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E1850,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.w @(loc_8C0E1830,pc),r1 ; r1 set to 0x130
mov.b r3,@(r0,r4) 	
mov.w @(loc_8C0E1830,pc),r0 ; r0 set to 0x130
add r4,r1 ; r1 ??? bc r4 is ???	
mov.w @(r0,r4),r0 ; r0 ??? bc r4 is ???	
xor 0x01,r0 	
mov.w r0,@r1
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r4),r3
mov r0,r8 ; r8 set to 0x34
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0E1830,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r3
tst r3,r3
bt/s loc_8C0E1858
add r4,r8 ; r8 ??? bc r4 is ???	
mov.l @(loc_8C0E1854,pc),r1 ; r1 set to 0xC3555555
lds r1,fpul 	
bra loc_8C0E185e
fsts fpul,fr3

loc_8C0E182A:
#data 0x012c

loc_8C0E182C:
#data 0x00Dc

loc_8C0E182E:
#data 0x01A3

loc_8C0E1830:
#data 0x0130
#data 0x0000
#data 0x40555555
#data 0x414DB6Db
#data 0xBF092492

#align4
loc_8C0E1840:
#data bank03.loc_8c034D8c

loc_8C0E1844:
#data 0x8C26823c

#align4
loc_8C0E1848:
#data bank15.loc_8c15EA54

loc_8C0E184C:
#data bank12.loc_8c129560

loc_8C0E1850:
#data bank12.loc_8c1294C8

loc_8C0E1854:
#data 0xC3555555


loc_8C0E1858:
mov.l @(loc_8C0E1940,pc),r2 ; r2 set to 0x43555555
lds r2,fpul 	
fsts fpul,fr3

loc_8C0E185E:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
mov 0x01,r6 ; r6 set to 0x01, r6 set to 0x01
mov.w @(loc_8C0E1938,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
fadd fr3,fr2
mov.l @(loc_8C0E1944,pc),r1 ; r1 set to 0x42092492, r1 set to 0x42092492
lds r1,fpul 	
fmov.s fr2,@r8
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
fmov.s fr3,@(r0,r4) 	
fmov.s @(r0,r4),fr2
fsts fpul,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov.w @(loc_8C0E193A,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
mov.b r3,@(r0,r4) 	
lds.l @r15+,pr 	
mov.l @(loc_8C0E1948,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
jmp @r3
mov.l @r15+,r8

loc_8C0E188C:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0E193A,pc),r0 ; r0 set to 0x12c
mov.l r13,@-r15
mov 0x01,r13 ; r13 set to 0x01
sts.l pr,@-r15
mov.b r13,@(r0,r14) 	
mov.b @(0x05,r14),r0 	
tst r0,r0
bf loc_8C0E18D4
mov.l @(loc_8C0E194C,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r14,r4
exts.b r0,r0 ; r0 ??	
cmp/pz r0
bt loc_8C0E18C8
mov.l @(loc_8C0E1950,pc),r2 ; r2 set to 0x8C28C6D8
mov.b @(0x05,r14),r0 	
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov.l @r2,r3 ; r3 ??	
mov r13,r0 ; r0 set to 0x01
nop 	
mov.b r0,@(0x0F,r3) 	
mov 0x00,r3 ; r3 set to 0x00
mov.w r0,@(0x1E,r14) 	
mov.w r0,@(0x1C,r14) 	
mov 0x22,r0 ; r0 set to 0x22
bra loc_8C0E1920
mov.b r3,@(r0,r14) 	

loc_8C0E18C8:
mov.w @(loc_8C0E193C,pc),r0 ; r0 set to 0x141
mov.b @(r0,r14),r2
tst r2,r2
bt loc_8C0E1920
bra loc_8C0E1920
nop 	

#align4
loc_8C0E18D4:
#data 0x430BD31d
#data 0x63E364E3
#data 0x330CE038
#data 0x2F36E022
#data 0xE41F00Ec
#data 0x600CD31a
#data 0x7028600b
#data 0x44182409
#data 0x430B4408
#data 0x62F64400
#data 0xF30CC716
#data 0xF008F228
#data 0xF22AF23e
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x8B052008
#data 0x02ECE022
#data 0x0E247201
#data 0x81EE85Ef


loc_8C0E1920:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E1928:
mov 0x03,r0 ; r0 set to 0x03
mov.b r0,@(0x04,r4) 	
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8C0E193A,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	

loc_8C0E1932:
mov.l @(loc_8C0E195C,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0E1938:
#data 0x041c

loc_8C0E193A:
#data 0x012c

loc_8C0E193C:
#data 0x0141
#data 0x0000

#align4
loc_8C0E1940:
#data 0x43555555

#align4
loc_8C0E1944:
#data 0x42092492

#align4
loc_8C0E1948:
#data bank03.loc_8c034C38

loc_8C0E194C:
#data bank03.loc_8c034D8c

loc_8C0E1950:
#data 0x8C28C6D8

#align4
loc_8C0E1954:
#data bank11.loc_8c11E860
#data 0x40892492

#align4
loc_8C0E195C:
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
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x4F222FA6
#data 0xDA457FFc
#data 0x9C81ED0e
#data 0x2F42EE00
#data 0xE503EB04
#data 0x4A0BE600
#data 0x20086463
#data 0x64038D0e
#data 0xD23FE020
#data 0x63F21424
#data 0x04D41436
#data 0x04E4E021
#data 0x63EC7E01
#data 0x33B3E026
#data 0x8BEA04C5
#data 0x00096043
#data 0x4F267F04
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x7FF84F22
#data 0xE600D331
#data 0x2F501F41
#data 0x430BE504
#data 0x20086463
#data 0x64038D0a
#data 0xE020D32d
#data 0x52F11434
#data 0x63F01426
#data 0x0434924c
#data 0x0425E026
#data 0x4F267F08
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0E1A20:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0E1AAE,pc),r3 ; r3 set to 0xCc
mov r14,r4
mov.l @(loc_8C0E1AC0,pc),r2 ; r2 set to 0x8C28C6Dc
add r14,r3 ; r3 ??? bc r14 is ???	
mov.l @(loc_8C0E1AC4,pc),r1 ; r1 set to 0x8C15EA64
mov.l r3,@r2 ; r2 ??? bc r3 is ???	
mov.b @(0x04,r14),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0E1A3C:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0E1AB0,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.w @(loc_8C0E1AB0,pc),r2 ; r2 set to 0xDc
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0E1AB2,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r14),r4
mov.l @(loc_8C0E1AC8,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C0E1AB4,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E1AB6,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E1ACC,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov r14,r4
mov.b r2,@(r0,r14) 	
mov.b @(0x04,r14),r0 	
add 0x01,r0 ; r0 set to 0x25
mov.b r0,@(0x04,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
mov.l @(loc_8C0E1AD0,pc),r0 ; r0 set to 0x8C15EA74
extu.b r3,r3
lds.l @r15+,pr 	
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14
#data 0x2600

loc_8C0E1AAE:
#data 0x00Cc

loc_8C0E1AB0:
#data 0x00Dc

loc_8C0E1AB2:
#data 0x00C0

loc_8C0E1AB4:
#data 0x012c

loc_8C0E1AB6:
#data 0x01A3

#align4
loc_8C0E1AB8:
#data bank04.loc_8c044F12

loc_8C0E1ABC:
#data loc_8c0e1A20

loc_8C0E1AC0:
#data 0x8C28C6Dc

#align4
loc_8C0E1AC4:
#data bank15.loc_8c15EA64

loc_8C0E1AC8:
#data bank12.loc_8c129560

loc_8C0E1ACC:
#data bank12.loc_8c1294C8

loc_8C0E1AD0:
#data bank15.loc_8c15EA74


loc_8C0E1AD4:
mov.l r14,@-r15
sts.l pr,@-r15
bsr loc_8C0E20Ae
mov r4,r14
mov.l @(0x18,r14),r1
mov r14,r4
mov.w @(loc_8C0E1C06,pc),r0 ; r0 set to 0x158
mov 0x00,r6 ; r6 set to 0x00
mov.l @(loc_8C0E1C08,pc),r3 ; r3 set to 0x8C28C6Dc
mov 0x1B,r5 ; r5 set to 0x1b
mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???	
mov.l @r3,r2
mov.w r0,@r2
lds.l @r15+,pr 	
mov.l @(loc_8C0E1C0C,pc),r2 ; r2 set to 0x8C034C38
jmp @r2
mov.l @r15+,r14

loc_8C0E1AF6:
mov.l r14,@-r15
sts.l pr,@-r15
bsr loc_8C0E20Ae
mov r4,r14
mov.l @(0x18,r14),r1
mov r14,r4
mov.w @(loc_8C0E1C06,pc),r0 ; r0 set to 0x158
mov 0x01,r6 ; r6 set to 0x01
mov.l @(loc_8C0E1C08,pc),r3 ; r3 set to 0x8C28C6Dc
mov 0x1B,r5 ; r5 set to 0x1b
mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???	
mov.l @r3,r2
mov.w r0,@r2
lds.l @r15+,pr 	
mov.l @(loc_8C0E1C0C,pc),r2 ; r2 set to 0x8C034C38
jmp @r2
mov.l @r15+,r14

loc_8C0E1B18:
mov.l r14,@-r15
sts.l pr,@-r15
bsr loc_8C0E20Ae
mov r4,r14
mov.l @(0x18,r14),r1
mov r14,r4
mov.w @(loc_8C0E1C06,pc),r0 ; r0 set to 0x158
mov 0x02,r6 ; r6 set to 0x02
mov.l @(loc_8C0E1C08,pc),r3 ; r3 set to 0x8C28C6Dc
mov 0x1B,r5 ; r5 set to 0x1b
mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???	
mov.l @r3,r2
mov.w r0,@r2
lds.l @r15+,pr 	
mov.l @(loc_8C0E1C0C,pc),r2 ; r2 set to 0x8C034C38
jmp @r2
mov.l @r15+,r14

loc_8C0E1B3A:
mov.l r14,@-r15
sts.l pr,@-r15
bsr loc_8C0E20Ae
mov r4,r14
mov.l @(0x18,r14),r1
mov r14,r4
mov.w @(loc_8C0E1C06,pc),r0 ; r0 set to 0x158
mov 0x03,r6 ; r6 set to 0x03
mov.l @(loc_8C0E1C08,pc),r3 ; r3 set to 0x8C28C6Dc
mov 0x1B,r5 ; r5 set to 0x1b
mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???	
mov.l @r3,r2
mov.w r0,@r2
lds.l @r15+,pr 	
mov.l @(loc_8C0E1C0C,pc),r2 ; r2 set to 0x8C034C38
jmp @r2
mov.l @r15+,r14

loc_8C0E1B5C:
mov.l r14,@-r15
sts.l pr,@-r15
bsr loc_8C0E20Ae
mov r4,r14
mov.l @(0x18,r14),r1
mov r14,r4
mov.w @(loc_8C0E1C06,pc),r0 ; r0 set to 0x158
mov 0x04,r6 ; r6 set to 0x04
mov.l @(loc_8C0E1C08,pc),r3 ; r3 set to 0x8C28C6Dc
mov 0x1B,r5 ; r5 set to 0x1b
mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???	
mov.l @r3,r2
mov.w r0,@r2
lds.l @r15+,pr 	
mov.l @(loc_8C0E1C0C,pc),r2 ; r2 set to 0x8C034C38
jmp @r2
mov.l @r15+,r14

loc_8C0E1B7E:
mov.l r14,@-r15
sts.l pr,@-r15
bsr loc_8C0E20Ae
mov r4,r14
mov.l @(0x18,r14),r1
mov r14,r4
mov.w @(loc_8C0E1C06,pc),r0 ; r0 set to 0x158
mov 0x05,r6 ; r6 set to 0x05
mov.l @(loc_8C0E1C08,pc),r3 ; r3 set to 0x8C28C6Dc
mov 0x1B,r5 ; r5 set to 0x1b
mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???	
mov.l @r3,r2
mov.w r0,@r2
lds.l @r15+,pr 	
mov.l @(loc_8C0E1C0C,pc),r2 ; r2 set to 0x8C034C38
jmp @r2
mov.l @r15+,r14

loc_8C0E1BA0:
mov.l r14,@-r15
sts.l pr,@-r15
bsr loc_8C0E20Ae
mov r4,r14
mov.l @(0x18,r14),r1
mov r14,r4
mov.w @(loc_8C0E1C06,pc),r0 ; r0 set to 0x158
mov 0x06,r6 ; r6 set to 0x06
mov.l @(loc_8C0E1C08,pc),r3 ; r3 set to 0x8C28C6Dc
mov 0x1B,r5 ; r5 set to 0x1b
mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???	
mov.l @r3,r2
mov.w r0,@r2
lds.l @r15+,pr 	
mov.l @(loc_8C0E1C0C,pc),r2 ; r2 set to 0x8C034C38
jmp @r2
mov.l @r15+,r14

loc_8C0E1BC2:
mov.l r14,@-r15
sts.l pr,@-r15
bsr loc_8C0E20Ae
mov r4,r14
mov.l @(0x18,r14),r1
mov r14,r4
mov.w @(loc_8C0E1C06,pc),r0 ; r0 set to 0x158
mov 0x07,r6 ; r6 set to 0x07
mov.l @(loc_8C0E1C08,pc),r3 ; r3 set to 0x8C28C6Dc
mov 0x1B,r5 ; r5 set to 0x1b
mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???	
mov.l @r3,r2
mov.w r0,@r2
lds.l @r15+,pr 	
mov.l @(loc_8C0E1C0C,pc),r2 ; r2 set to 0x8C034C38
jmp @r2
mov.l @r15+,r14

loc_8C0E1BE4:
mov.l r14,@-r15
sts.l pr,@-r15
bsr loc_8C0E20Ae
mov r4,r14
mov.l @(0x18,r14),r1
mov r14,r4
mov.w @(loc_8C0E1C06,pc),r0 ; r0 set to 0x158
mov 0x08,r6 ; r6 set to 0x08
mov.l @(loc_8C0E1C08,pc),r3 ; r3 set to 0x8C28C6Dc
mov 0x1B,r5 ; r5 set to 0x1b
mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???	
mov.l @r3,r2
mov.w r0,@r2
lds.l @r15+,pr 	
mov.l @(loc_8C0E1C0C,pc),r2 ; r2 set to 0x8C034C38
jmp @r2
mov.l @r15+,r14

loc_8C0E1C06:
#data 0x0158

#align4
loc_8C0E1C08:
#data 0x8C28C6Dc

#align4
loc_8C0E1C0C:
#data bank03.loc_8c034C38


loc_8C0E1C10:
mov.l r14,@-r15
sts.l pr,@-r15
bsr loc_8C0E20Ae
mov r4,r14
mov 0x24,r0 ; r0 set to 0x24
mov.l @(loc_8C0E1D54,pc),r1 ; r1 set to 0x8C28C6Dc
mov 0x07,r2 ; r2 set to 0x07
mov r14,r4
mov.b r2,@(r0,r14) 	
mov 0x0B,r6 ; r6 set to 0x0b
mov.l @(0x18,r14),r2 ; r2 ??? bc r14 is ???	
mov 0x1B,r5 ; r5 set to 0x1b
mov.w @(loc_8C0E1D4C,pc),r0 ; r0 set to 0x158
mov.l @r1,r3
mov.w @(r0,r2),r2
mov.w r2,@r3
lds.l @r15+,pr 	
mov.l @(loc_8C0E1D58,pc),r3 ; r3 set to 0x8C034C38
jmp @r3
mov.l @r15+,r14

loc_8C0E1C38:
mov.l r14,@-r15
sts.l pr,@-r15
bsr loc_8C0E20Ae
mov r4,r14
mov.l @(0x18,r14),r1
mov r14,r4
mov.w @(loc_8C0E1D4C,pc),r0 ; r0 set to 0x158
mov 0x0C,r6 ; r6 set to 0x0c
mov.l @(loc_8C0E1D54,pc),r3 ; r3 set to 0x8C28C6Dc
mov 0x1B,r5 ; r5 set to 0x1b
mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???	
mov.l @r3,r2
mov.w r0,@r2
lds.l @r15+,pr 	
mov.l @(loc_8C0E1D58,pc),r2 ; r2 set to 0x8C034C38
jmp @r2
mov.l @r15+,r14

loc_8C0E1C5A:
mov.l r14,@-r15
sts.l pr,@-r15
bsr loc_8C0E20Ae
mov r4,r14
mov 0x24,r0 ; r0 set to 0x24
mov.l @(loc_8C0E1D54,pc),r1 ; r1 set to 0x8C28C6Dc
mov 0x07,r2 ; r2 set to 0x07
mov r14,r4
mov.b r2,@(r0,r14) 	
mov 0x0E,r6 ; r6 set to 0x0e
mov.l @(0x18,r14),r2 ; r2 ??? bc r14 is ???	
mov 0x1B,r5 ; r5 set to 0x1b
mov.w @(loc_8C0E1D4C,pc),r0 ; r0 set to 0x158
mov.l @r1,r3
mov.w @(r0,r2),r2
mov.w r2,@r3
lds.l @r15+,pr 	
mov.l @(loc_8C0E1D58,pc),r3 ; r3 set to 0x8C034C38
jmp @r3
mov.l @r15+,r14

loc_8C0E1C82:
mov.l @(0x18,r4),r3
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0E1D54,pc),r1 ; r1 set to 0x8C28C6Dc
mov 0x10,r6 ; r6 set to 0x10
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0E1D4E,pc),r0 ; r0 set to 0x41c
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
mov 0x38,r0 ; r0 set to 0x38
mov 0x00,r3 ; r3 set to 0x00
fmov.s fr3,@(r0,r4) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r4) 	
mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???	
mov.w @(loc_8C0E1D4C,pc),r0 ; r0 set to 0x158
mov.l @r1,r2
mov.w @(r0,r3),r3
mov.w r3,@r2
mov.l @(loc_8C0E1D58,pc),r3 ; r3 set to 0x8C034C38
jmp @r3
mov 0x1B,r5

loc_8C0E1CAE:
#data 0x5146
#data 0x904BE500
#data 0x001DD227
#data 0x23016322
#data 0x00096053
#data 0x80458046
#data 0x04549044
#data 0x53467001
#data 0x0414013c
#data 0x5146E021
#data 0x8417034c
#data 0x8B013300
#data 0x8044E003

#align4
loc_8C0E1CE0:
#data 0x004CE021
#data 0x600CE300
#data 0xE024C801
#data 0x0434000b
;-------------------------------------------------------------------------------

loc_8C0E1CF0:
mov 0x20,r0 ; r0 set to 0x20
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(loc_8C0E1D5C,pc),r0 ; r0 set to 0x8C15EAB0
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

#align4
loc_8C0E1D04:
#data 0x4F222FE6
#data 0x6E43B1D1
#data 0xE201D111
#data 0x0E24901e
#data 0x6312702c
#data 0x53E66231
#data 0x3230033d
#data 0x93168B20
#data 0x332C52E6
#data 0x20088431
#data 0x9310890a
#data 0x52E6E000
#data 0x8031332c
#data 0x430BD309
#data 0x600E64E3
#data 0x8B0F4011

#align4
loc_8C0E1D44:
#data 0x64E34F26
#data 0x6EF6A1Ce

loc_8C0E1D4C:
#data 0x0158

loc_8C0E1D4E:
#data 0x041c
#data 0x0150012c

#align4
loc_8C0E1D54:
#data 0x8C28C6Dc

#align4
loc_8C0E1D58:
#data bank03.loc_8c034C38

loc_8C0E1D5C:
#data bank15.loc_8c15EAB0

loc_8C0E1D60:
#data bank03.loc_8c034D8c

loc_8C0E1D64:
#data 0xE500D33c
#data 0x54E6430b
#data 0x64E34F26
#data 0x6EF6A188


loc_8C0E1D74:
mov.l r14,@-r15
sts.l pr,@-r15
bsr loc_8C0E20Ae
mov r4,r14
mov.l @(loc_8C0E1E5C,pc),r1 ; r1 set to 0x8C28C6Dc
mov 0x01,r2 ; r2 set to 0x01
mov.w @(loc_8C0E1E50,pc),r0 ; r0 set to 0x12c
mov.b r2,@(r0,r14) 	
add 0x2C,r0 ; r0 set to 0x158
mov.l @r1,r3
mov.w @r3,r2 ; r2 ??? bc r3 is ???	
mov.l @(0x18,r14),r3
mov.w @(r0,r3),r3
cmp/eq r3,r2
bf loc_8C0E1DA6
mov.l @(loc_8C0E1E60,pc),r2 ; r2 set to 0x8C034D8c
jsr @r2
mov r14,r4
exts.b r0,r0 ; r0 ??	
cmp/pz r0
bf loc_8C0E1DA6
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0E20E8
mov.l @r15+,r14

loc_8C0E1DA6:
mov.l @(loc_8C0E1E58,pc),r3 ; r3 set to 0x8C035162
mov 0x00,r5 ; r5 set to 0x00
jsr @r3
mov.l @(0x18,r14),r4
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0E2084
mov.l @r15+,r14

loc_8C0E1DB6:
mov.l r14,@-r15
sts.l pr,@-r15
bsr loc_8C0E20Ae
mov r4,r14
mov.l @(loc_8C0E1E5C,pc),r1 ; r1 set to 0x8C28C6Dc
mov 0x01,r2 ; r2 set to 0x01
mov.w @(loc_8C0E1E50,pc),r0 ; r0 set to 0x12c
mov.b r2,@(r0,r14) 	
add 0x2C,r0 ; r0 set to 0x158
mov.l @r1,r3
mov.w @r3,r2 ; r2 ??? bc r3 is ???	
mov.l @(0x18,r14),r3
mov.w @(r0,r3),r3
cmp/eq r3,r2
bt loc_8C0E1DE4
mov.l @(loc_8C0E1E58,pc),r2 ; r2 set to 0x8C035162
mov 0x00,r5 ; r5 set to 0x00
jsr @r2
mov.l @(0x18,r14),r4
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0E2084
mov.l @r15+,r14

#align4
loc_8C0E1DE4:
#data 0x52E69035
#data 0x2338032c
#data 0xD31C8B02
#data 0x64E3430b

#align4
loc_8C0E1DF4:
#data 0x64E34F26
#data 0x6EF6A176


loc_8C0E1DFC:
mov.l r14,@-r15
sts.l pr,@-r15
bsr loc_8C0E20Ae
mov r4,r14
mov.w @(loc_8C0E1E50,pc),r0 ; r0 set to 0x12c
mov 0x01,r2 ; r2 set to 0x01
mov.l @(loc_8C0E1E5C,pc),r1 ; r1 set to 0x8C28C6Dc
mov 0x07,r3 ; r3 set to 0x07
mov.b r2,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14) 	
mov.l @r1,r2 ; r2 ??	
mov.w @(loc_8C0E1E54,pc),r0 ; r0 set to 0x158
mov.w @r2,r3 ; r3 ??? bc r2 is ???	
mov.l @(0x18,r14),r2
mov.w @(r0,r2),r2
cmp/eq r2,r3
bt loc_8C0E1E28
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0E2084
mov.l @r15+,r14

#align4
loc_8C0E1E28:
#data 0x53E69215
#data 0x8421323c
#data 0x89072008
#data 0xE000920f
#data 0x323C53E6
#data 0x8021D308
#data 0x64E3430b

#align4
loc_8C0E1E44:
#data 0x64E3B174
#data 0x64E34F26
#data 0x6EF6A14c

loc_8C0E1E50:
#data 0x012c
#data 0x01A0

loc_8C0E1E54:
#data 0x0158
#data 0x0150

#align4
loc_8C0E1E58:
#data bank03.loc_8c035162

loc_8C0E1E5C:
#data 0x8C28C6Dc

#align4
loc_8C0E1E60:
#data bank03.loc_8c034D8c


loc_8C0E1E64:
mov.w @(loc_8C0E1F7E,pc),r0 ; r0 set to 0x12c
mov 0x01,r3 ; r3 set to 0x01
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b r3,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r14),r2
fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???	
mov.l @(loc_8C0E1F88,pc),r2 ; r2 set to 0x8C28C6Dc
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov.l @r2,r3
mov.w @(loc_8C0E1F80,pc),r0 ; r0 set to 0x158
mov.w @r3,r1
mov.l @(0x18,r14),r3
mov.w @(r0,r3),r0 ; r0 ??? bc r3 is ???	
cmp/eq r0,r1
bf loc_8C0E1EB4
mov.w @(loc_8C0E1F82,pc),r3 ; r3 set to 0x150
mov.l @(0x18,r14),r1
add r1,r3 ; r3 ??? bc r1 is ???	
mov.b @(0x01,r3),r0 	
tst r0,r0
bt loc_8C0E1EB4
mov.w @(loc_8C0E1F82,pc),r3 ; r3 set to 0x150
mov 0x1B,r5 ; r5 set to 0x1b
mov.l @(0x18,r14),r6
mov r14,r4
mov.l @(loc_8C0E1F8C,pc),r1 ; r1 set to 0x8C15EAEc
add r3,r6
mov.l @(loc_8C0E1F90,pc),r2 ; r2 set to 0x8C034C38
mov.b @(0x01,r6),r0 	
lds.l @r15+,pr 	
mov.b @(r0,r1),r6
jmp @r2
mov.l @r15+,r14

loc_8C0E1EB4:
bsr loc_8C0E2118
mov r14,r4
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0E2084
mov.l @r15+,r14

loc_8C0E1EC0:
mov.w @(loc_8C0E1F7E,pc),r0 ; r0 set to 0x12c
mov 0x01,r3 ; r3 set to 0x01
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b r3,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r14),r2
fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???	
mov.l @(loc_8C0E1F88,pc),r2 ; r2 set to 0x8C28C6Dc
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14) 	
mov.l @r2,r3
mov.w @(loc_8C0E1F80,pc),r0 ; r0 set to 0x158
mov.w @r3,r1
mov.l @(0x18,r14),r3
mov.w @(r0,r3),r0 ; r0 ??? bc r3 is ???	
cmp/eq r0,r1
bf loc_8C0E1F14
mov.w @(loc_8C0E1F82,pc),r3 ; r3 set to 0x150
mov.l @(0x18,r14),r1
add r1,r3 ; r3 ??? bc r1 is ???	
mov.b @(0x01,r3),r0 	
tst r0,r0
bt loc_8C0E1F14
bsr loc_8C0E20E8
mov r14,r4
mov.w @(loc_8C0E1F82,pc),r3 ; r3 set to 0x150
mov 0x1B,r5 ; r5 set to 0x1b
mov.l @(0x18,r14),r6
mov r14,r4
mov.l @(loc_8C0E1F94,pc),r1 ; r1 set to 0x8C15EAF0
add r3,r6
mov.l @(loc_8C0E1F90,pc),r2 ; r2 set to 0x8C034C38
mov.b @(0x01,r6),r0 	
lds.l @r15+,pr 	
mov.b @(r0,r1),r6
jmp @r2
mov.l @r15+,r14

loc_8C0E1F14:
bsr loc_8C0E2118
mov r14,r4
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0E2084
mov.l @r15+,r14

loc_8C0E1F20:
mov.l r14,@-r15
mov 0x00,r3 ; r3 set to 0x00
mov 0x24,r0 ; r0 set to 0x24
mov r4,r14
sts.l pr,@-r15
mov.b r3,@(r0,r14) 	
mov 0x01,r2 ; r2 set to 0x01
mov.w @(loc_8C0E1F7E,pc),r0 ; r0 set to 0x12c
mov.l @(loc_8C0E1F98,pc),r3 ; r3 set to 0x8C034D8c
mov.b r2,@(r0,r14) 	
jsr @r3
mov r14,r4
exts.b r0,r0 ; r0 ??	
cmp/pz r0
bt loc_8C0E1F46
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0E2084
mov.l @r15+,r14

loc_8C0E1F46:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0E1F4C:
#data 0x6E432FE6
#data 0x844454E6
#data 0x8801600c
#data 0x84458B0c
#data 0x8B092008
#data 0x004C9010
#data 0x881D600c
#data 0x900C8B04
#data 0x600C004c
#data 0x89138802

#align4
loc_8C0E1F74:
#data 0x700184E4
#data 0x000B80E4
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0E1F7E:
#data 0x012c

loc_8C0E1F80:
#data 0x0158

loc_8C0E1F82:
#data 0x0150
#data 0x01E901D0

#align4
loc_8C0E1F88:
#data 0x8C28C6Dc

#align4
loc_8C0E1F8C:
#data bank15.loc_8c15EAEc

loc_8C0E1F90:
#data bank03.loc_8c034C38

loc_8C0E1F94:
#data bank15.loc_8c15EAF0

loc_8C0E1F98:
#data bank03.loc_8c034D8c

loc_8C0E1F9C:
#data 0x64E384E5
#data 0x600CD14b
#data 0x031E4008
#data 0x6EF6432b
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0E1FB0:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0E20C6,pc),r0 ; r0 set to 0x12c
sts.l pr,@-r15
mov.l @(0x18,r14),r3
mov.b @(r0,r3),r2
tst r2,r2
bt loc_8C0E2026
mov.b @(0x05,r14),r0 	
mov 0x01,r4 ; r4 set to 0x01
mov.l @(loc_8C0E20D4,pc),r5 ; r5 set to 0x8C26A518
add 0x01,r0 ; r0 set to 0x12d
mov.b r0,@(0x05,r14) 	
mov.w @(loc_8C0E20C6,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
mov 0x0C,r0 ; r0 set to 0x0c
fmov.s @(r0,r5),fr2
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3
fsub fr3,fr2
extu.b r3,r3
tst r4,r3
fabs fr2
bt/s loc_8C0E1FEc
fmov fr2,fr4 ; r4 ??? bc r2 is ???	
bra loc_8C0E1FF0
fmov fr4,fr3

loc_8C0E1FEC:
fmov fr4,fr3
fneg fr3

loc_8C0E1FF0:
mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
fmov.s @(r0,r5),fr2
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov.w @(loc_8C0E20C8,pc),r0 ; r0 set to 0x20C, r0 set to 0x20c
mov.l @(0x18,r14),r3
mov.l @(r0,r3),r2
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
mov.b @(r0,r14),r1
mov.l @(loc_8C0E20D8,pc),r0 ; r0 set to 0x8C15EB00, r0 set to 0x8C15EB00
extu.b r1,r1
shll2 r1
fmov.s @(r0,r1),fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r2),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
bsr loc_8C0E2096
mov r14,r4
lds.l @r15+,pr 	
mov.l @(loc_8C0E20DC,pc),r2 ; r2 set to 0x8C034E8C, r2 set to 0x8C034E8c
mov r14,r4
mov 0x2B,r6 ; r6 set to 0x2B, r6 set to 0x2b
mov 0x15,r5 ; r5 set to 0x15, r5 set to 0x15
jmp @r2
mov.l @r15+,r14

loc_8C0E2026:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E202C:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0E20E0,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt loc_8C0E2050
mov.b @(0x05,r14),r0 	
mov r14,r4
mov.l @(loc_8C0E20DC,pc),r3 ; r3 set to 0x8C034E8c
mov 0x2A,r6 ; r6 set to 0x2a
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov 0x15,r5 ; r5 set to 0x15
lds.l @r15+,pr 	
jmp @r3
mov.l @r15+,r14

loc_8C0E2050:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E2056:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0E20E0,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt loc_8C0E2072
mov.b @(0x04,r14),r0 	
add 0x01,r0
mov.b r0,@(0x04,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E2072:
#data 0x902a
#data 0x233803Ec
#data 0xE3008901
#data 0x0E34

loc_8C0E207E:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0E2084:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0E20C6,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	

loc_8C0E2090:
mov.l @(loc_8C0E20E4,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0E2096:
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r4),r2
mov 0x01,r5 ; r5 set to 0x01
extu.b r2,r2
tst r5,r2
bt loc_8C0E20A6
bra loc_8C0E20A8
mov 0x00,r3

loc_8C0E20A6:
mov r5,r3

loc_8C0E20A8:
mov.w @(loc_8C0E20CC,pc),r0 ; r0 set to 0x130, r0 set to 0x130
rts 	
mov.w r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0E20AE:
mov.l @(0x18,r4),r2
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r2),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
mov 0x00,r3 ; r3 set to 0x00
fmov.s fr3,@(r0,r4) 	
mov 0x24,r0 ; r0 set to 0x24
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0E20C6:
#data 0x012c

loc_8C0E20C8:
#data 0x020c
#data 0x0141

loc_8C0E20CC:
#data 0x0130
#data 0x0000

#align4
loc_8C0E20D0:
#data bank15.loc_8c15EAF4

loc_8C0E20D4:
#data 0x8C26A518

#align4
loc_8C0E20D8:
#data bank15.loc_8c15EB00

loc_8C0E20DC:
#data bank03.loc_8c034e8c

loc_8C0E20E0:
#data bank03.loc_8c034dee

loc_8C0E20E4:
#data bank04.loc_8c0450C0


loc_8C0E20E8:
mov.l @(loc_8C0E2160,pc),r3 ; r3 set to 0x8C26823c
mov.l r14,@-r15
mov.l @r3,r0
mov.l @(0x1C,r0),r0
tst 0x01,r0 	
bt/s loc_8C0E2102
mov.l @(0x18,r4),r14
mov 0x25,r0 ; r0 set to 0x25
mov.b @(r0,r14),r6
mov 0x01,r7 ; r7 set to 0x01
extu.b r6,r6
bra loc_8C0E210e
shll r6

loc_8C0E2102:
mov 0x25,r0 ; r0 set to 0x25
mov.b @(r0,r14),r6
mov 0x01,r7 ; r7 set to 0x01
extu.b r6,r6
shll r6
add 0x01,r6

loc_8C0E210E:
mov.l @(loc_8C0E2164,pc),r2 ; r2 set to 0x8C03544C, r2 set to 0x8C03544c
mov r14,r4
mov r7,r5 ; r5 set to 0x01
jmp @r2
mov.l @r15+,r14

loc_8C0E2118:
mov.l r14,@-r15
mov 0x25,r0 ; r0 set to 0x25
mov.l @(0x18,r4),r14
mov 0x01,r7 ; r7 set to 0x01
mov.l @(loc_8C0E2164,pc),r3 ; r3 set to 0x8C03544c
mov r7,r5 ; r5 set to 0x01
mov.b @(r0,r14),r6
mov r14,r4
extu.b r6,r6
shll r6
jmp @r3
mov.l @r15+,r14

#align4
loc_8C0E2130:
#data 0x2FE6D30b
#data 0x50076032
#data 0x8D06C801
#data 0xE0255E46
#data 0xE70106Ec
#data 0xA006666c
#data 0x4600

loc_8C0E214A:
#data 0xE025
#data 0xE70106Ec
#data 0x4600666c
#data 0x7601

loc_8C0E2156:
#data 0xD203
#data 0xE50064E3
#data 0x6EF6422b

#align4
loc_8C0E2160:
#data 0x8C26823c

#align4
loc_8C0E2164:
#data bank03.loc_8c03544c

loc_8C0E2168:
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
loc_8C0E218C:
#data 0x4F267F04
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0E2194:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.w @(loc_8C0E22B2,pc),r3 ; r3 set to 0x150
sts.l pr,@-r15
mov.l @(0x18,r14),r13
add r3,r13
mov.b @(0x01,r13),r0 	
mov r0,r13
tst r13,r13
bt loc_8C0E21Ce
mov.w @(loc_8C0E22B4,pc),r0 ; r0 set to 0x12c
mov 0x01,r1 ; r1 set to 0x01
mov.b r1,@(r0,r14) 	
mov.w @(0x1C,r14),r0 	
cmp/eq r13,r0
bt loc_8C0E21C8
mov.l @(loc_8C0E22C4,pc),r1 ; r1 set to 0x8C034E8c
mov 0x17,r5 ; r5 set to 0x17
mov r13,r6
jsr @r1
mov r14,r4
mov r13,r0 ; r0 ??? bc r13 is ???	
nop 	
bra loc_8C0E21E0
mov.w r0,@(0x1C,r14) 	

#align4
loc_8C0E21C8:
#data 0x430BD33f
#data 0x64E3

loc_8C0E21CE:
#data 0x52E6
#data 0x23386320
#data 0x936C8904
#data 0x303C50E6
#data 0x81EE8401


loc_8C0E21E0:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E21E8:
mov r4,r3
mov.l @(loc_8C0E22CC,pc),r1 ; r1 set to 0x8C15EB10
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0E21FA:
mov.w @(loc_8C0E22B6,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0E22D0,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0E22B6,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r4),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0E22B4,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E22B8,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E22D4,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r4),r1
mov 0x24,r0 ; r0 set to 0x24
mov 0x00,r5 ; r5 set to 0x00
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r4) 	
mov.w @(loc_8C0E22B4,pc),r0 ; r0 set to 0x12c
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

loc_8C0E2284:
mov.w @(loc_8C0E22B4,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
mov.b r3,@(r0,r4) 	
mov.l @(0x18,r4),r2
mov.b @(r0,r2),r3 ; r3 ??? bc r2 is ???, r3 ??? bc r2 is ???	
tst r3,r3
bt loc_8C0E22Ac
mov.l @(0x18,r4),r3
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0E22BA,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.l @(0x18,r4),r3
mov.w @(r0,r3),r2
bra loc_8C0E2194
mov.w r2,@(r0,r4) 	

loc_8C0E22AC:
rts 	
nop 	
;-------------------------------------------------------------------------------
#data 0x2700

loc_8C0E22B2:
#data 0x0150

loc_8C0E22B4:
#data 0x012c

loc_8C0E22B6:
#data 0x00Dc

loc_8C0E22B8:
#data 0x01A3

loc_8C0E22BA:
#data 0x0130

#align4
loc_8C0E22BC:
#data bank04.loc_8c044F12

loc_8C0E22C0:
#data loc_8c0e21E8

loc_8C0E22C4:
#data bank03.loc_8c034e8c

loc_8C0E22C8:
#data bank03.loc_8c034dee

loc_8C0E22CC:
#data bank15.loc_8c15EB10

loc_8C0E22D0:
#data bank12.loc_8c129560

loc_8C0E22D4:
#data bank12.loc_8c1294C8


loc_8C0E22D8:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0E22EA,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	

loc_8C0E22E4:
mov.l @(loc_8C0E22EC,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0E22EA:
#data 0x012c

#align4
loc_8C0E22EC:
#data bank04.loc_8c0450C0
#data 0xE5032FE6
#data 0xE6002FD6
#data 0x6E432FC6
#data 0x9D594F22
#data 0x4C0BDC2d
#data 0x20086463
#data 0x64038D08
#data 0xD22BE026
#data 0x1424E300
#data 0x04D514E6
#data 0x0434E020
#data 0xE600E503
#data 0x64634C0b
#data 0x8D082008
#data 0xE0266403
#data 0xE301D223
#data 0x14E61424
#data 0xE02004D5
#data 0xE5030434
#data 0x4C0BE600
#data 0x20086463
#data 0x64038D08
#data 0xD21CE026
#data 0x1424E302
#data 0x04D514E6
#data 0x0434E020
#data 0xE600E503
#data 0x64634C0b
#data 0x8D082008
#data 0xE0266403
#data 0xE303D214
#data 0x14E61424
#data 0xE02004D5
#data 0xE5030434
#data 0x4C0BE600
#data 0x20086463
#data 0x64038D08
#data 0xD20DE026
#data 0x1424E304
#data 0x04D514E6
#data 0x0434E020
#data 0x00096043
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0E23A2:
mov r4,r3
mov.l @(loc_8C0E23C0,pc),r1 ; r1 set to 0x8C15EB20
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x00002701

#align4
loc_8C0E23B8:
#data bank04.loc_8c044F12

loc_8C0E23BC:
#data loc_8c0e23A2

loc_8C0E23C0:
#data bank15.loc_8c15EB20


loc_8C0E23C4:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.w @(loc_8C0E250E,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0E2518,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.l @(0x18,r14),r4
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0E250E,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r14),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0E2510,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E2512,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E251C,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r14),r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r14) 	
mov 0x0F,r3 ; r3 set to 0x0f
mov.w @(loc_8C0E2510,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov 0x00,r5 ; r5 set to 0x00
mov.b r3,@(r0,r14) 	
mov r5,r0 ; r0 set to 0x00
nop 	
mov.w r0,@(0x1C,r14) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3
mov.l @(loc_8C0E2520,pc),r0 ; r0 set to 0x8C15EB30
extu.b r3,r3
shll r3
mov.w @(r0,r3),r3
mov.w @(loc_8C0E2514,pc),r0 ; r0 set to 0x41c
lds r3,fpul 	
fmov.s @(r0,r4),fr2
mova @(loc_8C0E2524,pc),r0  ; r0 set to 0x8C0E2524
fmov.s @r0,fr0 ; r0 ??	
mov 0x38,r0 ; r0 set to 0x38
float fpul,fr3
fmac fr0,fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8C0E2476
bra loc_8C0E2478
mov 0x17,r13

loc_8C0E2476:
mov r5,r13

loc_8C0E2478:
mov.l @(loc_8C0E2528,pc),r2 ; r2 set to 0x8C034E8C, r2 set to 0x8C034E8c
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
exts.b r13,r6
jsr @r2
mov r14,r4
lds.l @r15+,pr 	
mov r14,r4
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0E248A:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l @(0x18,r14),r3
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34, r0 set to 0x34
mov.w @(loc_8C0E2516,pc),r1 ; r1 set to 0x1D0, r1 set to 0x1D0, r1 set to 0x1D0
mov r3,r2 ; r2 ??? bc r3 is ???, r2 ??? bc r3 is ???	
mov.l r3,@r15
fmov.s @(r0,r2),fr3
fmov.s fr3,@(r0,r14) 	
mov.l @r15,r0 ; r0 ??? bc r15 is ???, r0 ??? bc r15 is ???, r0 ??? bc r15 is ???	
mov.b @(r0,r1),r0
extu.b r0,r0
cmp/eq 0x1D,r0 	
bt loc_8C0E24Be
mov.b @(0x04,r14),r0 	
mov r14,r4
add 0x01,r0
mov.b r0,@(0x04,r14) 	
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r13
bra loc_8C0E24Fc
mov.l @r15+,r14

loc_8C0E24BE:
mov.b @(0x05,r14),r0 	
tst r0,r0
bf loc_8C0E24Ee
mov.l @(0x18,r14),r3
mov 0x60,r0 ; r0 set to 0x60
fldi0 fr3
fmov.s @(r0,r3),fr2
fcmp/gt fr2,fr3
bf loc_8C0E24Ee
mov.b @(0x05,r14),r0 	
add 0x01,r0 ; r0 set to 0x61
mov.b r0,@(0x05,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8C0E24E2
bra loc_8C0E24E4
mov 0x19,r13

loc_8C0E24E2:
#data 0xED18

#align4
loc_8C0E24E4:
#data 0xE517D210
#data 0x420B66De
#data 0x64E3


loc_8C0E24EE:
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0E252C,pc),r3 ; r3 set to 0x8C034DEe
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0E24FC:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0E2510,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	

loc_8C0E2508:
mov.l @(loc_8C0E2530,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0E250E:
#data 0x00Dc

loc_8C0E2510:
#data 0x012c

loc_8C0E2512:
#data 0x01A3

loc_8C0E2514:
#data 0x041c

loc_8C0E2516:
#data 0x01D0

#align4
loc_8C0E2518:
#data bank12.loc_8c129560

loc_8C0E251C:
#data bank12.loc_8c1294C8

loc_8C0E2520:
#data bank15.loc_8c15EB30

loc_8C0E2524:
#data 0x40092492

#align4
loc_8C0E2528:
#data bank03.loc_8c034e8c

loc_8C0E252C:
#data bank03.loc_8c034dee

loc_8C0E2530:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0x60532F42
#data 0xD33A0009
#data 0x80F4E503
#data 0x430BE600
#data 0x20086463
#data 0x64038D0d
#data 0xE026D336
#data 0x1434E120
#data 0x9362314c
#data 0x142662F2
#data 0x84F40435
#data 0xE0002100
#data 0xD32F814e
#data 0xE600E503
#data 0x6463430b
#data 0x8D0D2008
#data 0xD32C6403
#data 0xE120E026
#data 0x314C1434
#data 0x62F2934d
#data 0x04351426
#data 0x210084F4
#data 0x814EE001
#data 0x4F267F08
#data 0x6043000b
;-------------------------------------------------------------------------------

#align4
loc_8C0E259C:
#data 0xE0345346
#data 0xF336D523
#data 0xE038F437
#data 0xF3365346
#data 0xE020F437
#data 0x600C004c
#data 0x40004000
#data 0xC71E035d
#data 0x435AF208
#data 0xF32D9030
#data 0x2338034d
#data 0x8D01F43c
#data 0xF44DF422

#align4
loc_8C0E25D0:
#data 0xE034E320
#data 0xF346334c
#data 0xF340E238
#data 0xF437324c
#data 0xF2286330
#data 0x4300633c
#data 0x353C4300
#data 0x63038551
#data 0xF32D435a
#data 0xF22AF230
#data 0x2008854e
#data 0xD10E8906
#data 0xF246E038
#data 0xF30D415a
#data 0xF427F231

#align4
loc_8C0E260C:
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0E2610:
mov r4,r3
mov.l @(loc_8C0E263C,pc),r1 ; r1 set to 0x8C15EB4c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x2702
#data 0x00000130

#align4
loc_8C0E2628:
#data bank04.loc_8c044F12

loc_8C0E262C:
#data loc_8c0e2610

loc_8C0E2630:
#data bank15.loc_8c15EB3c
#data 0x3FD55555
#data 0x42092492

#align4
loc_8C0E263C:
#data bank15.loc_8c15EB4c


loc_8C0E2640:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0E2716,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0E2720,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0E2716,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r14),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0E2718,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E271A,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E2724,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r14),r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r14) 	
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8C0E2718,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r2
mov.l @(loc_8C0E2728,pc),r0 ; r0 set to 0x8C15EB5c
extu.b r2,r2
mov.b @(r0,r2),r3 ; r3 ??? bc r2 is ???	
mov.w @(loc_8C0E271C,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r2
xor r2,r3
mov.w r3,@(r0,r14) 	
bsr loc_8C0E259c
mov r14,r4 ; r4 ??? bc r14 is ???	
mov.l @(loc_8C0E272C,pc),r2 ; r2 set to 0x8C034E8c
mov 0x17,r5 ; r5 set to 0x17
mov 0x24,r6 ; r6 set to 0x24
jsr @r2
mov r14,r4
lds.l @r15+,pr 	
mov r14,r4
mov.l @r15+,r14

loc_8C0E26DC:
mov.l r14,@-r15
sts.l pr,@-r15
bsr loc_8C0E259c
mov r4,r14
mov.l @(loc_8C0E2730,pc),r2 ; r2 set to 0x8C034DEE, r2 set to 0x8C034DEe
jsr @r2
mov r14,r4
exts.b r0,r0 ; r0 ??	
cmp/pz r0
bt loc_8C0E26Fe
mov.b @(0x04,r14),r0 	
mov r14,r4
add 0x01,r0
mov.b r0,@(0x04,r14) 	
lds.l @r15+,pr 	
bra loc_8C0E2704
mov.l @r15+,r14

loc_8C0E26FE:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E2704:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0E2718,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	

loc_8C0E2710:
mov.l @(loc_8C0E2734,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0E2716:
#data 0x00Dc

loc_8C0E2718:
#data 0x012c

loc_8C0E271A:
#data 0x01A3

loc_8C0E271C:
#data 0x0130
#data 0x0000

#align4
loc_8C0E2720:
#data bank12.loc_8c129560

loc_8C0E2724:
#data bank12.loc_8c1294C8

loc_8C0E2728:
#data bank15.loc_8c15EB5c

loc_8C0E272C:
#data bank03.loc_8c034e8c

loc_8C0E2730:
#data bank03.loc_8c034dee

loc_8C0E2734:
#data bank04.loc_8c0450C0

loc_8C0E2738:
#data 0x4F222FE6
#data 0x906F7FFc
#data 0xE2076E43
#data 0x03EC2F50
#data 0x89143323
#data 0xE503D138
#data 0x410BE600
#data 0x20086463
#data 0x64038D0d
#data 0xE020D235
#data 0x925E1424
#data 0x63F014E6
#data 0xE0260434
#data 0x90570425
#data 0x730103Ec
#data 0x0E34

loc_8C0E2776:
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0E277E:
mov r4,r3
mov.l @(loc_8C0E2838,pc),r1 ; r1 set to 0x8C15EB60
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0E2790:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0E2824,pc),r0 ; r0 set to 0x1B8
mov.l @(0x18,r14),r4
mov.l @(r0,r4),r4
mov.b @(0x01,r4),r0 	
extu.b r0,r0 ; r0 set to 0xB8
cmp/eq 0x28,r0 	
bt loc_8C0E27B2
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0E2986
mov.l @r15+,r14

loc_8C0E27B2:
mov.w @(loc_8C0E2826,pc),r1 ; r1 set to 0xDc
mov.w @(loc_8C0E2828,pc),r0 ; r0 set to 0xC0
mov.l @(loc_8C0E283C,pc),r3 ; r3 set to 0x8C129560
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0E2826,pc),r2 ; r2 set to 0xDc
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C0E282A,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E282C,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E2840,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov 0x17,r5 ; r5 set to 0x17
mov 0x07,r6 ; r6 set to 0x07
mov.b r2,@(r0,r14) 	
mov 0xFF,r2 ; r2 set to 0xFFFFFFFf
mov.w @(loc_8C0E282E,pc),r0 ; r0 set to 0x130
mov.l r4,@(0x14,r14) 	
mov.w @(r0,r4),r3 ; r3 ??? bc r4 is ???	
mov.w r3,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.l @(loc_8C0E2844,pc),r3 ; r3 set to 0x8C034E8c
mov.b r2,@(r0,r14) 	
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0E2848
mov.l @r15+,r14
#data 0x28000229

loc_8C0E2824:
#data 0x01B8

loc_8C0E2826:
#data 0x00Dc

loc_8C0E2828:
#data 0x00C0

loc_8C0E282A:
#data 0x012c

loc_8C0E282C:
#data 0x01A3

loc_8C0E282E:
#data 0x0130

#align4
loc_8C0E2830:
#data bank04.loc_8c044F12

loc_8C0E2834:
#data loc_8c0e277e

loc_8C0E2838:
#data bank15.loc_8c15EB60

loc_8C0E283C:
#data bank12.loc_8c129560

loc_8C0E2840:
#data bank12.loc_8c1294C8

loc_8C0E2844:
#data bank03.loc_8c034e8c

loc_8C0E2848:
#data 0x6E432FE6
#data 0xE0242FD6
#data 0xFFCB2F86
#data 0x5DE64F22
#data 0x0E3403Dc
#data 0x430BD34d
#data 0x84D564E3
#data 0x8803600c
#data 0x908F8B04
#data 0x600C00Dc
#data 0x8926880f

#align4
loc_8C0E2874:
#data 0xE40084E4
#data 0x80E47001
#data 0x00096043
#data 0x908480E5
#data 0x90830E44
#data 0x73FF03Dc
#data 0x633E0D34
#data 0x89004311
#data 0x0D44

loc_8C0E2896:
#data 0x03Dc
#data 0x3323E203
#data 0x01DC8966
#data 0xD33D65E3
#data 0x21187534
#data 0xE601E708
#data 0x64D3430b
#data 0xD23A4F26
#data 0x64E3E549
#data 0x68F6FCF9
#data 0x422B6DF6
#data 0x6EF6

loc_8C0E28C2:
#data 0x62D3
#data 0x61E3D336
#data 0x71347234
#data 0xE00C430b
#data 0x200884E5
#data 0x84E58B3c
#data 0xF440F49d
#data 0x80E57001
#data 0x03DC9057
#data 0xF208C72f
#data 0x633CE060
#data 0xD32E435a
#data 0xF322F32d
#data 0xFE37F343
#data 0xE06CF343
#data 0xFE37430b
#data 0x6D03D22a
#data 0x420B4D18
#data 0xD32964D3
#data 0x430BFC0c
#data 0xE06C64D3
#data 0xF3E6D326
#data 0xE860C726
#data 0xF008F302
#data 0xF2E6E06c
#data 0x38ECE05c
#data 0xF0CCF303
#data 0xFE37F32e
#data 0x64D3430b
#data 0xD31DE06c
#data 0xF302F3E6
#data 0xFC3CF34d
#data 0x64D3430b
#data 0xF3E6E06c
#data 0xF388FC3e
#data 0xF83AF3C0

#align4
loc_8C0E2950:
#data 0x31ECE15c
#data 0xF318E034
#data 0xE160F2E6
#data 0xF23031Ec
#data 0xE038FE27
#data 0xF318F2E6
#data 0xFE27F230

#align4
loc_8C0E296C:
#data 0xFCF94F26
#data 0x6DF668F6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0E2978:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0E298E,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0E2986:
mov.l @(loc_8C0E29B8,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x0233

loc_8C0E298E:
#data 0x012c
#data 0x013C0229

#align4
loc_8C0E2994:
#data bank03.loc_8c034dee

loc_8C0E2998:
#data bank10.loc_8c10235c

loc_8C0E299C:
#data bank04.loc_8c04223a

loc_8C0E29A0:
#data bank12.loc_8c1294C8
#data 0x40092492

#align4
loc_8C0E29A8:
#data bank03.loc_8c03319e

loc_8C0E29AC:
#data bank11.loc_8c11E2E0

loc_8C0E29B0:
#data bank11.loc_8c11E860
#data 0x41000000

#align4
loc_8C0E29B8:
#data bank04.loc_8c0450C0
#data 0x4F222FE6
#data 0x2F507FFc
#data 0xD34EE503
#data 0xE6016E43
#data 0xE400430b
#data 0x8D192008
#data 0xD34B6403
#data 0x1434E020
#data 0x62F0E300
#data 0xE0210424
#data 0x93820434
#data 0x84E114E6
#data 0xE0348041
#data 0xF437F3E6
#data 0xF3E6E038
#data 0xE026F437
#data 0x90770435
#data 0x907602Ed
#data 0x0426622d
#data 0x00096043
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0E2A14:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov 0x02,r3 ; r3 set to 0x02
extu.b r0,r0
cmp/ge r3,r0
bf/s loc_8C0E2A2c
mov.l @(0x18,r14),r5
mov.l @(loc_8C0E2B08,pc),r1 ; r1 set to 0x8C0450C0
mov r14,r4
jmp @r1
mov.l @r15+,r14

loc_8C0E2A2C:
mov 0x20,r0 ; r0 set to 0x20
mov r14,r4
mov.b @(r0,r14),r2
mov.l @(loc_8C0E2B0C,pc),r0 ; r0 set to 0x8C15EB70
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r1
jmp @r1
mov.l @r15+,r14

loc_8C0E2A3E:
#data 0x2FE6
#data 0x2FD66E43
#data 0x84E44F22
#data 0x8F2F2008
#data 0x84E46D53
#data 0x70019150
#data 0x80E4D32e
#data 0x904C31Ec
#data 0x430B924a
#data 0x904932Dc
#data 0x61E3E201
#data 0x0E247150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC903b
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD31F0E34
#data 0xE00C430b
#data 0xD31EE024
#data 0xE51702Dc
#data 0x0E24E601
#data 0x64E3430b

#align4
loc_8C0E2AAC:
#data 0x02DCE024
#data 0x0E24E3Ff
#data 0x0E34E031
#data 0x00DC9020
#data 0x8816600c
#data 0x90158B0f
#data 0x222802Dc
#data 0xE0348B0b
#data 0xF3D6D313
#data 0xFE3764E3
#data 0xF3D6E038
#data 0x4F26FE37
#data 0x432B6DF6
#data 0x6EF6

loc_8C0E2AE2:
#data 0x4F26
#data 0x64E3D308
#data 0x432B6DF6
#data 0x29006EF6
#data 0x00CC0158
#data 0x00C000Dc
#data 0x01A3012c
#data 0x00000159

#align4
loc_8C0E2B00:
#data bank04.loc_8c044F12

loc_8C0E2B04:
#data loc_8c0e2A14

loc_8C0E2B08:
#data bank04.loc_8c0450C0

loc_8C0E2B0C:
#data bank15.loc_8c15EB70

loc_8C0E2B10:
#data bank12.loc_8c129560

loc_8C0E2B14:
#data bank12.loc_8c1294C8

loc_8C0E2B18:
#data bank03.loc_8c034e8c

loc_8C0E2B1C:
#data bank03.loc_8c034dee

loc_8C0E2B20:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x84E44F22
#data 0x8F2F2008
#data 0x84E4E400
#data 0x70019158
#data 0x80E4D32f
#data 0x905431Ec
#data 0x430B9252
#data 0x905132Dc
#data 0x61E3E201
#data 0x0E247150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC9043
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD3200E34
#data 0xE00C430b
#data 0x02DCE024
#data 0x0E24E3Ff
#data 0x0E449030
#data 0x0E34E031

#align4
loc_8C0E2B90:
#data 0x02DD902e
#data 0x622D902d
#data 0x323003Ee
#data 0x90298B1a
#data 0x211801Dc
#data 0x07DC8913
#data 0xD315E517
#data 0x77FFE602
#data 0x64E3430b
#data 0xF3D6E034
#data 0xFE37E201
#data 0xF3D6E038
#data 0xE024FE37
#data 0x0E3403Dc
#data 0xA0099010
#data 0x0E24

loc_8C0E2BCE:
#data 0x900d
#data 0x0E44A006

#align4
loc_8C0E2BD4:
#data 0xD20B4F26
#data 0x6DF664E3
#data 0x6EF6422b

#align4
loc_8C0E2BE0:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x00C000Dc
#data 0x01A3012c
#data 0x00CC0158
#data 0x00000141

#align4
loc_8C0E2BF8:
#data bank12.loc_8c129560

loc_8C0E2BFC:
#data bank12.loc_8c1294C8

loc_8C0E2C00:
#data bank03.loc_8c034F54

loc_8C0E2C04:
#data bank04.loc_8c0450C0

loc_8C0E2C08:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0xEC002FC6
#data 0x84E44F22
#data 0x8F332008
#data 0x84E4E501
#data 0x80E47001
#data 0x0EC4908b
#data 0x000960C3
#data 0x80E59188
#data 0x31EC9087
#data 0xD3469284
#data 0x32DC430b
#data 0x61E39082
#data 0x0E547150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC9075
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD3390E34
#data 0xE00C430b
#data 0x02DCE024
#data 0x0E24E3Ff
#data 0x0EC49062
#data 0x0E34E031

#align4
loc_8C0E2C84:
#data 0x200884E5
#data 0x905D8B47
#data 0x600C00Dc
#data 0x8B488815
#data 0xF3D6E034
#data 0xE038FE37
#data 0xFE37F3D6
#data 0x03DCE024
#data 0x904A0E34
#data 0x604E04Dc
#data 0x8941C880
#data 0x2429E27f
#data 0x2338634e
#data 0x9040892c
#data 0x01EC674e
#data 0x89373170
#data 0xE603903e
#data 0x0E54D323
#data 0x430BE517
#data 0x903A64E3
#data 0x222802Ec
#data 0xD320892c
#data 0x0EC4E503
#data 0x430BE602
#data 0x200864E3
#data 0x64038D24
#data 0xD31CE203
#data 0x1434E020
#data 0xE0210424
#data 0x932704C4
#data 0x84D114D6
#data 0xE0348041
#data 0xF437F3D6
#data 0xF3D6E038
#data 0xE026F437
#data 0x0435A010

#align4
loc_8C0E2D14:
#data 0x700184E5
#data 0x80E5

loc_8C0E2D1A:
#data 0xD212
#data 0x64E3420b
#data 0x4011600e
#data 0x8906

loc_8C0E2D26:
#data 0x4F26
#data 0x64E3D20f
#data 0x6DF66CF6
#data 0x6EF6422b

#align4
loc_8C0E2D34:
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x01416EF6
#data 0x00C000Dc
#data 0x01A3012c
#data 0x01400159
#data 0x00002900

#align4
loc_8C0E2D50:
#data bank12.loc_8c129560

loc_8C0E2D54:
#data bank12.loc_8c1294C8

loc_8C0E2D58:
#data bank03.loc_8c034F54

loc_8C0E2D5C:
#data bank04.loc_8c044F12

loc_8C0E2D60:
#data loc_8c0e2A14

loc_8C0E2D64:
#data bank03.loc_8c034dee

loc_8C0E2D68:
#data bank04.loc_8c0450C0

loc_8C0E2D6C:
#data 0x6E432FE6
#data 0x4F222FD6
#data 0x200884E4
#data 0x6D538F39
#data 0x919784E4
#data 0x92967001
#data 0x31EC80E4
#data 0xD34DE000
#data 0x91902100
#data 0x908F80E6
#data 0x430B31Ec
#data 0x908C32Dc
#data 0x61E3E401
#data 0x0E447150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC907e
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD33D0E34
#data 0xE00C430b
#data 0x02DCE024
#data 0xE517E3Ff
#data 0xE0310E24
#data 0xE6040E34
#data 0xD3389067
#data 0x430B0E44
#data 0x64E3

loc_8C0E2DEE:
#data 0xE024
#data 0x0E2402Dc
#data 0x00DC9061
#data 0x8815600c
#data 0xE0348B0b
#data 0xF3D6D332
#data 0xE038FE37
#data 0xFE37F3D6
#data 0x64E3430b
#data 0x4011600e
#data 0x8905

loc_8C0E2E16:
#data 0x4F26
#data 0x64E3D32d
#data 0x432B6DF6
#data 0x6EF6

loc_8C0E2E22:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0E2E2A:
#data 0x2FE6
#data 0x2FD66E43
#data 0x84E44F22
#data 0x8F342008
#data 0x84E46D53
#data 0x70019139
#data 0x80E4D31f
#data 0x903531Ec
#data 0x430B9233
#data 0x903232Dc
#data 0x61E3E401
#data 0x0E447150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC9024
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD3100E34
#data 0xE00C430b
#data 0x02DCE024
#data 0xE517E3Ff
#data 0xE0310E24
#data 0xE6080E34
#data 0xD30B900d
#data 0x430B0E44
#data 0x64E3

loc_8C0E2EA2:
#data 0x900b
#data 0x222802Ed
#data 0xC70A8B16
#data 0xF308A016
#data 0x00DC0141
#data 0x012C00C0
#data 0x015901A3
#data 0x00000130

#align4
loc_8C0E2EC0:
#data bank12.loc_8c129560

loc_8C0E2EC4:
#data bank12.loc_8c1294C8

loc_8C0E2EC8:
#data bank03.loc_8c034e8c

loc_8C0E2ECC:
#data bank03.loc_8c034dee

loc_8C0E2ED0:
#data bank04.loc_8c0450C0
#data 0xC1BAAAAa

#align4
loc_8C0E2ED8:
#data 0xF308C70f

#align4
loc_8C0E2EDC:
#data 0xF2D6E034
#data 0xFE27F230
#data 0xF308C70d
#data 0xF2D6E038
#data 0xFE27F230
#data 0x03DCE024
#data 0xD30A0E34
#data 0x64E3430b
#data 0x4011600e
#data 0x4F268905
#data 0x64E3D307
#data 0x432B6DF6
#data 0x6EF6

loc_8C0E2F0E:
#data 0x4F26
#data 0x000B6DF6
#data 0x00006EF6
#data 0x41BAAAAa
#data 0x438D6DB7

#align4
loc_8C0E2F20:
#data bank03.loc_8c034dee

loc_8C0E2F24:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0xE600D352
#data 0x2F501F41
#data 0x430BE503
#data 0x20086463
#data 0x64038D0a
#data 0xE020D34e
#data 0x52F11434
#data 0x63F01426
#data 0x0434928b
#data 0x0425E026
#data 0x4F267F08
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0E2F5C:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0E3080,pc),r1 ; r1 set to 0x8C15EB94
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

#align4
loc_8C0E2F70:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x4F229176
#data 0x31EC84E4
#data 0x70019272
#data 0x80E4D33f
#data 0x430B906f
#data 0x906D32Dc
#data 0x61E3E201
#data 0x0E247150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC905f
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD3310E34
#data 0xE00C430b
#data 0x02DCE024
#data 0xE51BE3Ff
#data 0xE0310E24
#data 0x904B0E34
#data 0x02DDD32c
#data 0x622D9049
#data 0xE0200E26
#data 0x762D06Ec
#data 0x64E3430b
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6

loc_8C0E2FF6:
#data 0x2FE6
#data 0x2FD6E034
#data 0x6E436D53
#data 0xF3D64F22
#data 0xE038FE37
#data 0xFE37F3D6
#data 0x03DD9032
#data 0xE0240E35
#data 0x0E2402Dc
#data 0x03DD902a
#data 0x633D9029
#data 0x323002Ee
#data 0xD31A8B0a
#data 0x64E3430b
#data 0x4011600e
#data 0xE020890a
#data 0x600C00Ec
#data 0x89058802

#align4
loc_8C0E303C:
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6A006

#align4
loc_8C0E3048:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0E3050:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0E3054:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0E306C,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0E3094,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x2A00
#data 0x00C000Dc

loc_8C0E306C:
#data 0x012c
#data 0x01A3
#data 0x00CC0158
#data 0x00000130

#align4
loc_8C0E3078:
#data bank04.loc_8c044F12

loc_8C0E307C:
#data loc_8c0e2F5c

loc_8C0E3080:
#data bank15.loc_8c15EB94

loc_8C0E3084:
#data bank12.loc_8c129560

loc_8C0E3088:
#data bank12.loc_8c1294C8

loc_8C0E308C:
#data bank03.loc_8c034C38

loc_8C0E3090:
#data bank03.loc_8c034D8c

loc_8C0E3094:
#data bank04.loc_8c0450C0
#data 0x7FF44F22
#data 0x60531F42
#data 0xD3540009
#data 0x80F4E503
#data 0xE6002F60
#data 0x6463430b
#data 0x8D0E2008
#data 0xD3506403
#data 0x314CE120
#data 0x52F21434
#data 0x84F41426
#data 0x2100928d
#data 0x63F0E021
#data 0xE0260434
#data 0x7F0C0425
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0E30DA:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0E31FC,pc),r1 ; r1 set to 0x8C15EBA4
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0E30EE:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.l r12,@-r15
mov.w @(loc_8C0E31E4,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0E31E4,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0E3200,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0E31E6,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0E31E8,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E31EA,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E3204,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov.b r2,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0E31EC,pc),r0 ; r0 set to 0x158
mov.w @(r0,r13),r2
mov.w @(loc_8C0E31EE,pc),r0 ; r0 set to 0xCc
extu.w r2,r2
mov.l r2,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
tst r3,r3
bf loc_8C0E3174
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3
tst r3,r3
bt/s loc_8C0E3188
mov 0x30,r12 ; r12 set to 0x30
bra loc_8C0E3188
mov 0x31,r12

#align4
loc_8C0E3174:
#data 0x02ECE021
#data 0x89042228
#data 0xE3019038
#data 0x223A02Ed
#data 0x0E25

loc_8C0E3186:
#data 0xEC32


loc_8C0E3188:
mov.l @(loc_8C0E3208,pc),r3 ; r3 set to 0x8C034C38
mov 0x1B,r5 ; r5 set to 0x1b
mov r12,r6
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r12
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0E319E:
mov.w @(loc_8C0E31EC,pc),r0 ; r0 set to 0x158, r0 set to 0x158
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.w @(r0,r5),r3 ; r3 ??? bc r5 is ???	
mov.w @(loc_8C0E31EE,pc),r0 ; r0 set to 0xCC, r0 set to 0xCc
extu.w r3,r3
mov.l @(r0,r14),r2
cmp/eq r3,r2
bf loc_8C0E3226
mov.b @(0x01,r14),r0 	
mov r0,r3 ; r3 set to 0xCC, r3 set to 0xCc
mov.b @(0x01,r5),r0 	
cmp/eq r0,r3
bf loc_8C0E3226
mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
mov.b @(r0,r5),r2
mov.b r2,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???, r3 ??? bc r5 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
mov.b @(r0,r14),r3
tst r3,r3
bf/s loc_8C0E320c
mov r14,r4
mov.w @(loc_8C0E31F2,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
fmov.s @(r0,r5),fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0E31F0,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r5),r3
bra loc_8C0E3212
mov.w r3,@(r0,r14) 	
#data 0x2A01

loc_8C0E31E4:
#data 0x00Dc

loc_8C0E31E6:
#data 0x00C0

loc_8C0E31E8:
#data 0x012c

loc_8C0E31EA:
#data 0x01A3

loc_8C0E31EC:
#data 0x0158

loc_8C0E31EE:
#data 0x00Cc

loc_8C0E31F0:
#data 0x0130

loc_8C0E31F2:
#data 0x041c

#align4
loc_8C0E31F4:
#data bank04.loc_8c044F12

loc_8C0E31F8:
#data loc_8c0e30Da

loc_8C0E31FC:
#data bank15.loc_8c15EBA4

loc_8C0E3200:
#data bank12.loc_8c129560

loc_8C0E3204:
#data bank12.loc_8c1294C8

loc_8C0E3208:
#data bank03.loc_8c034C38

loc_8C0E320C:
#data 0xF356E038
#data 0xFE37

loc_8C0E3212:
#data 0xD30f
#data 0x0009430b
#data 0x4011600e
#data 0xE0208909
#data 0x233803Ec
#data 0x8B05


loc_8C0E3226:
mov.b @(0x04,r14),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0E324C,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	

loc_8C0E3232:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E3238:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0E324C,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0E3246:
mov.l @(loc_8C0E3254,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0E324C:
#data 0x012c
#data 0x0000

#align4
loc_8C0E3250:
#data bank03.loc_8c034D8c

loc_8C0E3254:
#data bank04.loc_8c0450C0

loc_8C0E3258:
#data 0x7FFC4F22
#data 0xE503D349
#data 0xE6002F42
#data 0x6463430b
#data 0x8D0A2008
#data 0xD3466403
#data 0x937C1434
#data 0x142662F2
#data 0x840160F2
#data 0xE0268041
#data 0x0435

loc_8C0E3282:
#data 0x7F04
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0E328A:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0E338C,pc),r1 ; r1 set to 0x8C15EBD0
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0E329E:
mov.w @(loc_8C0E3370,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0E3390,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.w @(loc_8C0E3370,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0E3372,pc),r0 ; r0 set to 0xC0
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0E3374,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E3376,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E3394,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov r4,r1
mov.b @(r0,r5),r2
mov 0x00,r3 ; r3 set to 0x00
mov 0xFF,r6 ; r6 set to 0xFFFFFFFf
mov.b r2,@(r0,r4) 	
mov r5,r2
mov.w @(loc_8C0E3374,pc),r0 ; r0 set to 0x12c
add 0x34,r2
add 0x34,r1
mov.b r3,@(r0,r4) 	
mov 0x31,r0 ; r0 set to 0x31
mov.l @(loc_8C0E3394,pc),r3 ; r3 set to 0x8C1294C8
mov.b r6,@(r0,r4) 	
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.w @(loc_8C0E3378,pc),r0 ; r0 set to 0xCc
mov.l r6,@(r0,r4) 	
mov.w @(loc_8C0E337A,pc),r0 ; r0 set to 0x2A4
mov.l r6,@(r0,r5) 	
lds.l @r15+,pr 	

loc_8C0E3318:
mov.l r14,@-r15
mov r5,r14
mov.w @(loc_8C0E3374,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
tst r3,r3
bt/s loc_8C0E3412
mov r4,r13
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
mov.w @(loc_8C0E337E,pc),r4 ; r4 set to 0x150, r4 set to 0x150
fmov.s @(r0,r14),fr3
mov 0x10,r5 ; r5 set to 0x10, r5 set to 0x10
add r14,r4 ; r4 ??? bc r14 is ???, r4 ??? bc r14 is ???	
fmov.s fr3,@(r0,r13) 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r14),fr3
fmov.s fr3,@(r0,r13) 	
mov.w @(loc_8C0E337C,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r14),r3
mov.w r3,@(r0,r13) 	
mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
mov.b @(r0,r14),r2
mov.b r2,@(r0,r13) 	
mov.b @(0x01,r4),r0 	
mov r0,r4 ; r4 set to 0x24, r4 set to 0x24
mov.w @(loc_8C0E3374,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
mov.b @(r0,r13),r3
tst r3,r3
bt/s loc_8C0E3398
extu.b r4,r12 ; r12 set to 0x24, r12 set to 0x24
mov.w @(loc_8C0E3380,pc),r0 ; r0 set to 0x158, r0 set to 0x158
mov.w @(r0,r14),r3
mov.w @(loc_8C0E3378,pc),r0 ; r0 set to 0xCC, r0 set to 0xCc
extu.w r3,r3
mov.l @(r0,r13),r2
cmp/eq r3,r2
bf loc_8C0E3398
cmp/ge r5,r12
bf loc_8C0E33Dc
bra loc_8C0E339c
nop 	
#data 0x2A02

loc_8C0E3370:
#data 0x00Dc

loc_8C0E3372:
#data 0x00C0

loc_8C0E3374:
#data 0x012c

loc_8C0E3376:
#data 0x01A3

loc_8C0E3378:
#data 0x00Cc

loc_8C0E337A:
#data 0x02A4

loc_8C0E337C:
#data 0x0130

loc_8C0E337E:
#data 0x0150

loc_8C0E3380:
#data 0x0158
#data 0x0000

#align4
loc_8C0E3384:
#data bank04.loc_8c044F12

loc_8C0E3388:
#data loc_8c0e328a

loc_8C0E338C:
#data bank15.loc_8c15EBD0

loc_8C0E3390:
#data bank12.loc_8c129560

loc_8C0E3394:
#data bank12.loc_8c1294C8

loc_8C0E3398:
#data 0x8B323C53

#align4
loc_8C0E339C:
#data 0xE3019046
#data 0x90440D34
#data 0x622C02Ec
#data 0x8B0632C0
#data 0x02ED9040
#data 0x622D903f
#data 0x332003De
#data 0x8910

loc_8C0E33BA:
#data 0x9039
#data 0x76F066C3
#data 0x01ED64D3
#data 0x9034E51b
#data 0xD31D611d
#data 0x4F260D16
#data 0x6CF6D01a
#data 0x6DF6066c
#data 0x6EF6432b

#align4
loc_8C0E33DC:
#data 0x03EC902a
#data 0x89032338
#data 0x00EC9027
#data 0x8912C880

#align4
loc_8C0E33EC:
#data 0x420BD215
#data 0x600E64D3
#data 0x890C4011
#data 0x30EC901e
#data 0x88278401
#data 0x8907

loc_8C0E3402:
#data 0x9016
#data 0xE300E4Ff
#data 0x70600D46
#data 0x900E0D34
#data 0x0E46


loc_8C0E3412:
lds.l @r15+,pr 	
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E341C:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0E3420:
mov.w @(loc_8C0E342C,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0E3448,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0E342C:
#data 0x012c
#data 0x02A4
#data 0x00CC0158
#data 0x014001A0
#data 0x00000150

#align4
loc_8C0E343C:
#data bank15.loc_8c15EBB4

loc_8C0E3440:
#data bank03.loc_8c034C38

loc_8C0E3444:
#data bank03.loc_8c034D8c

loc_8C0E3448:
#data bank04.loc_8c0450C0

loc_8C0E344C:
#data 0x7FFC4F22
#data 0xE504D345
#data 0xE6002F42
#data 0x6463430b
#data 0x8D0A2008
#data 0xD3426403
#data 0x1434E020
#data 0x62F2E300
#data 0x92741426
#data 0xE0260434
#data 0x0425

loc_8C0E3476:
#data 0xD33c
#data 0xE600E504
#data 0x6463430b
#data 0x8D0A2008
#data 0xD3396403
#data 0x1434E020
#data 0x62F2E301
#data 0x92621426
#data 0xE0260434
#data 0x0425

loc_8C0E349A:
#data 0x7F04
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0E34A2:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0E3570,pc),r1 ; r1 set to 0x8C15EBFc
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0E34B6:
#data 0x9151
#data 0x84444F22
#data 0xD32D314c
#data 0x924B7001
#data 0x904A8044
#data 0x325C430b
#data 0xE2019048
#data 0x71506143
#data 0x84520424
#data 0x84518042
#data 0xE0508041
#data 0xF437F356
#data 0xF356E054
#data 0x903AF437
#data 0x0434035c
#data 0x025C7001
#data 0xE0300424
#data 0x6253035c
#data 0x04347250
#data 0x430BD31d
#data 0xE024E00c
#data 0x025CD31b
#data 0x71346143
#data 0x62530424
#data 0x430B7234
#data 0xE0FFE00c
#data 0x814ED617
#data 0x034CE020
#data 0x8D022338
#data 0xD615E702
#data 0xE701

loc_8C0E352E:
#data 0x9019
#data 0xE0310466
#data 0x4F260474


loc_8C0E3538:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.b @(0x01,r14),r0 	
mov r0,r3
mov.b @(0x01,r5),r0 	
cmp/eq r0,r3
bt/s loc_8C0E3584
mov 0x00,r4 ; r4 set to 0x00
mov.b @(0x04,r14),r0 	
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0E3560,pc),r0 ; r0 set to 0x12c
bra loc_8C0E3656
mov.b r4,@(r0,r14) 	
#data 0x2A03
#data 0x00C000Dc

loc_8C0E3560:
#data 0x012c
#data 0x01A3
#data 0x000000Cc

#align4
loc_8C0E3568:
#data bank04.loc_8c044F12

loc_8C0E356C:
#data loc_8c0e34A2

loc_8C0E3570:
#data bank15.loc_8c15EBFc

loc_8C0E3574:
#data bank12.loc_8c129560

loc_8C0E3578:
#data bank12.loc_8c1294C8

loc_8C0E357C:
#data bank15.loc_8c15EBE0

loc_8C0E3580:
#data bank15.loc_8c15EBEe

loc_8C0E3584:
#data 0x0E449076
#data 0x2338035c
#data 0x62538963
#data 0x61E3D33a
#data 0x71347234
#data 0xE00C430b
#data 0x946B906b
#data 0x345C025d
#data 0xE0240E25
#data 0xE20D035c
#data 0x84410E34
#data 0x634F6403
#data 0x89113327
#data 0x6D4F85Ee
#data 0x891730D0
#data 0x00096043
#data 0x644F81Ee
#data 0x05EE9057
#data 0x00096043
#data 0x633C035c
#data 0x633F2F31
#data 0x8B022338

#align4
loc_8C0E35DC:
#data 0xA03AE0Ff
#data 0x81Ee

loc_8C0E35E2:
#data 0xD327
#data 0x66F1E51b
#data 0x64E3430b
#data 0x0009A011

#align4
loc_8C0E35F0:
#data 0xE044D424
#data 0x2338034c
#data 0x84E28B0b
#data 0x600CE301
#data 0x430CCA01
#data 0x600C8446
#data 0x8B022038
#data 0x430BD31e
#data 0x64E3

loc_8C0E3612:
#data 0x902f
#data 0x0E24E201
#data 0x03ECE020
#data 0x8B1A2338
#data 0x000960D3
#data 0x8B16880d
#data 0x02ED9025
#data 0x8D012228
#data 0xE4F6E40a

#align4
loc_8C0E3634:
#data 0xD115644f
#data 0xE034445a
#data 0xF32DF2E6
#data 0xD113415a
#data 0x415AF00d
#data 0xF30DF23e
#data 0xE038FE27
#data 0xF230F2E6
#data 0xFE27


loc_8C0E3656:
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E3660:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0E3674,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0E366E:
mov.l @(loc_8C0E3694,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0E3674:
#data 0x012c
#data 0x0130
#data 0x00CC0150

#align4
loc_8C0E367C:
#data bank12.loc_8c1294C8

loc_8C0E3680:
#data bank03.loc_8c034C38
#data 0x8C2895F0

#align4
loc_8C0E3688:
#data bank03.loc_8c034D8c
#data 0x3FD55555
#data 0x414DB6Db

#align4
loc_8C0E3694:
#data bank04.loc_8c0450C0
#data 0xE5032FE6
#data 0xD3524F22
#data 0xE6006E43
#data 0x6463430b
#data 0x8D132008
#data 0x92926403
#data 0xD34EE026
#data 0x14E61434
#data 0xE0220425
#data 0x043403Ec
#data 0x02EC908a
#data 0x622C9089
#data 0x90870426
#data 0x908603Ec
#data 0x0436633c
#data 0x00096043
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0E36DE:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0E37F0,pc),r1 ; r1 set to 0x8C15EC0c
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0E36F2:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0E37E0,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0E37F4,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.w @(loc_8C0E37E0,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0E37E2,pc),r0 ; r0 set to 0xC0
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0E37E4,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E37E6,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E37F8,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x00,r4 ; r4 set to 0x00
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0E37E4,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov r4,r0 ; r0 set to 0x00
nop 	
mov.w r0,@(0x1C,r14) 	
bsr loc_8C0E3808
mov r14,r4 ; r4 ??? bc r14 is ???	
lds.l @r15+,pr 	
mov.l @(loc_8C0E37FC,pc),r2 ; r2 set to 0x8C034E8c
mov r14,r4
mov 0x08,r6 ; r6 set to 0x08
mov 0x0B,r5 ; r5 set to 0x0b
jmp @r2
mov.l @r15+,r14

loc_8C0E3770:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x01,r14),r0 	
mov r0,r3
mov.b @(0x01,r5),r0 	
cmp/eq r0,r3
bf loc_8C0E37Bc
mov.w @(loc_8C0E37D8,pc),r0 ; r0 set to 0x159
mov.b @(r0,r5),r2
mov.w @(loc_8C0E37DA,pc),r0 ; r0 set to 0xCc
extu.b r2,r2
mov.l @(r0,r14),r3
cmp/eq r2,r3
bf loc_8C0E37Bc
mov.w @(loc_8C0E37DC,pc),r0 ; r0 set to 0x158
mov.b @(r0,r5),r2
mov.w @(loc_8C0E37DE,pc),r0 ; r0 set to 0xD0
extu.b r2,r2
mov.l @(r0,r14),r3
cmp/eq r2,r3
bf loc_8C0E37Bc
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov.b r2,@(r0,r14) 	
bsr loc_8C0E3808
mov r14,r4
mov.l @(loc_8C0E3800,pc),r2 ; r2 set to 0x8C034DEe
jsr @r2
mov r14,r4
mov.w @(loc_8C0E37E4,pc),r0 ; r0 set to 0x12c
mov 0x01,r3 ; r3 set to 0x01
mov.b @(r0,r14),r2 ; r2 ??? bc r14 is ???	
xor r3,r2
mov.b r2,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E37BC:
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0E37Ca
mov.l @r15+,r14
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0E37CA:
mov.w @(loc_8C0E37E4,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0E3804,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x2A04

loc_8C0E37D8:
#data 0x0159

loc_8C0E37DA:
#data 0x00Cc

loc_8C0E37DC:
#data 0x0158

loc_8C0E37DE:
#data 0x00D0

loc_8C0E37E0:
#data 0x00Dc

loc_8C0E37E2:
#data 0x00C0

loc_8C0E37E4:
#data 0x012c

loc_8C0E37E6:
#data 0x01A3

#align4
loc_8C0E37E8:
#data bank04.loc_8c044F12

loc_8C0E37EC:
#data loc_8c0e36De

loc_8C0E37F0:
#data bank15.loc_8c15EC0c

loc_8C0E37F4:
#data bank12.loc_8c129560

loc_8C0E37F8:
#data bank12.loc_8c1294C8

loc_8C0E37FC:
#data bank03.loc_8c034e8c

loc_8C0E3800:
#data bank03.loc_8c034dee

loc_8C0E3804:
#data bank04.loc_8c0450C0

loc_8C0E3808:
#data 0xD3119020
#data 0x4708075c
#data 0x8571373c
#data 0x67036671
#data 0x025D9019
#data 0x89002228
#data 0x666b

loc_8C0E3822:
#data 0x666f
#data 0xE034465a
#data 0xC70AF256
#data 0x677FF008
#data 0x475AF32d
#data 0xF23EE034
#data 0xF427F32d
#data 0xF256E038
#data 0xF008C705
#data 0xF23EE038
#data 0xF427000b
;-------------------------------------------------------------------------------
#data 0x01300140

#align4
loc_8C0E3850:
#data bank15.loc_8c15EC1c
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0E385C:
#data 0x7FF44F22
#data 0x1F41D35b
#data 0xE5032F52
#data 0xE6011F62
#data 0xE400430b
#data 0x8D0C2008
#data 0x93A56403
#data 0x0435E026
#data 0xD355E020
#data 0x042452F2
#data 0x52F11434
#data 0x63F21425
#data 0x1436

loc_8C0E388E:
#data 0x7F0c
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0E3896:
mov r4,r3
mov.l @(loc_8C0E39D8,pc),r1 ; r1 set to 0x8C15EC58
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

#align4
loc_8C0E38A8:
#data 0x4F22918d
#data 0x314C8444
#data 0x70019289
#data 0x80445545
#data 0xD3489086
#data 0x325C430b
#data 0xE2019083
#data 0x71506143
#data 0x84520424
#data 0x84518042
#data 0xE0508041
#data 0xF437F356
#data 0xF356E054
#data 0x9075F437
#data 0x0434035c
#data 0x025C7001
#data 0xE0300424
#data 0x6253035c
#data 0x04347250
#data 0x430BD33a
#data 0xE300E00c
#data 0xE0246143
#data 0xE610025c
#data 0x71340434
#data 0xD3359061
#data 0x0425025d
#data 0x0464700c
#data 0x04647001
#data 0x04647001
#data 0x70016253
#data 0x04647234
#data 0xE00C430b
#data 0xD32EE020
#data 0x666C064c
#data 0x65634600
#data 0x353C4500
#data 0x66518551
#data 0x6703D52a
#data 0x6256C72a
#data 0xC72AF608
#data 0xF408425a
#data 0xF32DE05c
#data 0xF343F362
#data 0xE068F437
#data 0x425A6256
#data 0xF362F32d
#data 0xF437F343
#data 0xF508C723
#data 0xE0606256
#data 0xF32D425a
#data 0xF343F352
#data 0xE06CF437
#data 0x425A6252
#data 0xF352F32d
#data 0xF437F343
#data 0x024D9023
#data 0x89082228
#data 0xF346E05c
#data 0xF34D666b
#data 0xE068F437
#data 0xF34DF346
#data 0xF437

loc_8C0E399E:
#data 0x465a
#data 0xF246E034
#data 0xF06CE517
#data 0xF32DE60a
#data 0xD312475a
#data 0xF05CF23e
#data 0xF427F32d
#data 0xF246E038
#data 0xF427F23e
#data 0x4F26432b
#data 0x00DC2B00
#data 0x012C00C0
#data 0x013001A3

#align4
loc_8C0E39D0:
#data bank04.loc_8c044F12

loc_8C0E39D4:
#data loc_8c0e3896

loc_8C0E39D8:
#data bank15.loc_8c15EC58

loc_8C0E39DC:
#data bank12.loc_8c129560

loc_8C0E39E0:
#data bank12.loc_8c1294C8

loc_8C0E39E4:
#data bank15.loc_8c15EC3c

loc_8C0E39E8:
#data bank15.loc_8c15EC48
#data 0x3FD55555
#data 0x47800000
#data 0x40092492

#align4
loc_8C0E39F8:
#data bank03.loc_8c034e8c

loc_8C0E39FC:
#data 0xE15C2FE6
#data 0x31EC6E43
#data 0xD317E034
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
#data 0x84E48B05
#data 0x7001E300
#data 0x900680E4
#data 0x0E34

loc_8C0E3A56:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0E3A5C:
mov.l @(loc_8C0E3A6C,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x012c

#align4
loc_8C0E3A64:
#data bank03.loc_8c034dee

loc_8C0E3A68:
#data bank03.loc_8c0332E0

loc_8C0E3A6C:
#data bank04.loc_8c0450C0
#data 0xE5032FE6
#data 0xD34B4F22
#data 0xE6016E43
#data 0xE400430b
#data 0x8D0E2008
#data 0x93846403
#data 0x0435E026
#data 0x02EC9082
#data 0x0424E022
#data 0xD244907f
#data 0xE02303Ec
#data 0x14240434
#data 0x604314E6
#data 0x4F260009
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0E3AAC:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
extu.b r0,r0
cmp/eq 0x00,r0 	
bt/s loc_8C0E3ACa
mov.l @(0x18,r14),r13
cmp/eq 0x01,r0 	
bt loc_8C0E3B36
cmp/eq 0x02,r0 	
bt loc_8C0E3B7e
bra loc_8C0E3B8a
nop 	

loc_8C0E3ACA:
#data 0x84E4
#data 0xD33762D3
#data 0x700161E3
#data 0x80E47234
#data 0x430B7134
#data 0x915BE00c
#data 0xD333905b
#data 0x925731Ec
#data 0x32DC430b
#data 0xE2019056
#data 0x715061E3
#data 0x84D20E24
#data 0x84D180E2
#data 0xE05080E1
#data 0xFE37F3D6
#data 0xF3D6E054
#data 0x9048FE37
#data 0x0E3403Dc
#data 0x02DC7001
#data 0xE0300E24
#data 0x62D303Dc
#data 0x0E347250
#data 0x430BD322
#data 0xE024E00c
#data 0x02DCD322
#data 0xE60BE517
#data 0x430B0E24
#data 0x64E3

loc_8C0E3B36:
#data 0x902d
#data 0xE02202Dc
#data 0x323003Ec
#data 0x90288B16
#data 0xE02302Dc
#data 0x323003Ec
#data 0x62D38B10
#data 0x61E3D316
#data 0x71347234
#data 0xE00C430b
#data 0x02DC9020
#data 0x8B122228
#data 0x430BD314
#data 0x600E64E3
#data 0x890C4011

#align4
loc_8C0E3B70:
#data 0xE30084E4
#data 0x80E47001
#data 0xA0069010
#data 0x0E34


loc_8C0E3B7E:
lds.l @r15+,pr 	
mov.l @(loc_8C0E3BBC,pc),r3 ; r3 set to 0x8C0450C0
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0E3B8A:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x2B01
#data 0x01E901D0
#data 0x00C000Dc
#data 0x01A3012c
#data 0x000001A0

#align4
loc_8C0E3BA4:
#data bank04.loc_8c044F12

loc_8C0E3BA8:
#data loc_8c0e3AAc

loc_8C0E3BAC:
#data bank12.loc_8c1294C8

loc_8C0E3BB0:
#data bank12.loc_8c129560

loc_8C0E3BB4:
#data bank03.loc_8c034e8c

loc_8C0E3BB8:
#data bank03.loc_8c034dee

loc_8C0E3BBC:
#data bank04.loc_8c0450C0
#data 0x4F222FE6
#data 0xD33D7FF8
#data 0x1F516E43
#data 0x2F62E503
#data 0x430BE601
#data 0x2008E400
#data 0x64038D14
#data 0xE0269366
#data 0xE0200435
#data 0x042452F1
#data 0x63F2E021
#data 0x905E0434
#data 0x02ECD333
#data 0x0424E022
#data 0x00EC905a
#data 0x814E600c
#data 0x14E61434
#data 0x00096043
#data 0x4F267F08
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0E3C10:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0E3CC4,pc),r1 ; r1 set to 0x8C15EC64
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0E3C24:
sts.l pr,@-r15
add 0xFC,r15
mov.b @(0x04,r4),r0 	
mov.w @(loc_8C0E3CB2,pc),r1 ; r1 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0E3CC8,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r4) 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.w @(loc_8C0E3CB4,pc),r0 ; r0 set to 0xC0
mov.w @(loc_8C0E3CB2,pc),r2 ; r2 set to 0xDc
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0E3CB6,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E3CB8,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E3CCC,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x00,r3 ; r3 set to 0x00
mov 0x17,r5 ; r5 set to 0x17
mov.b r2,@(r0,r4) 	
mov 0x07,r2 ; r2 set to 0x07
mov.w @(loc_8C0E3CB6,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r2,@(r0,r4) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r4),r3 ; r3 ??? bc r4 is ???	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r4),r1
extu.b r3,r3
mov r3,r2 ; r2 ??? bc r3 is ???	
shll r3
extu.b r1,r1
add r2,r3
add r1,r3
mov r3,r6
add 0x0C,r6
mov.l r3,@r15
add 0x04,r15
mov.l @(loc_8C0E3CD0,pc),r2 ; r2 set to 0x8C034E8c
jmp @r2
lds.l @r15+,pr 	
#data 0x01D02B00
#data 0x01E9

loc_8C0E3CB2:
#data 0x00Dc

loc_8C0E3CB4:
#data 0x00C0

loc_8C0E3CB6:
#data 0x012c

loc_8C0E3CB8:
#data 0x01A3
#data 0x0000

#align4
loc_8C0E3CBC:
#data bank04.loc_8c044F12

loc_8C0E3CC0:
#data loc_8c0e3C10

loc_8C0E3CC4:
#data bank15.loc_8c15EC64

loc_8C0E3CC8:
#data bank12.loc_8c129560

loc_8C0E3CCC:
#data bank12.loc_8c1294C8

loc_8C0E3CD0:
#data bank03.loc_8c034e8c

loc_8C0E3CD4:
#data 0x6E432FE6
#data 0x2FD69061
#data 0x4F226D53
#data 0xE02203Dc
#data 0x332002Ec
#data 0x84D58B4c
#data 0x8B492008
#data 0x03DC9056
#data 0x633C85Ee
#data 0x8B433300
#data 0x04DC9051
#data 0x89142448
#data 0xC801604e
#data 0xE0238B11
#data 0x222802Ec
#data 0x90478B0d
#data 0xD325E401
#data 0x0E4461E3
#data 0x0E44E023
#data 0x90407134
#data 0x624304De
#data 0x430B7234
#data 0xE00c

loc_8C0E3D2E:
#data 0x9039
#data 0x222802Ec
#data 0x84E5892c
#data 0x8B1D2008
#data 0x430BD31c
#data 0x600E64E3
#data 0x89234011
#data 0x03DC902e
#data 0x8B1F2338
#data 0x03ECE021
#data 0x8B152338
#data 0xE51784E5
#data 0x700164E3
#data 0xE02080E5
#data 0x4F2606Ec
#data 0x46006363
#data 0xD311363c
#data 0x760E6DF6
#data 0x6EF6432b

#align4
loc_8C0E3D78:
#data 0x430BD30d
#data 0x600E64E3
#data 0x89054011

#align4
loc_8C0E3D84:
#data 0xE30084E4
#data 0x80E47001
#data 0x0E34900a

#align4
loc_8C0E3D90:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0E3D98:
mov.l @(loc_8C0E3DB8,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x01D0
#data 0x019E01E9
#data 0x01B0012c
#data 0x000001A0

#align4
loc_8C0E3DAC:
#data bank12.loc_8c1294C8

loc_8C0E3DB0:
#data bank03.loc_8c034dee

loc_8C0E3DB4:
#data bank03.loc_8c034e8c

loc_8C0E3DB8:
#data bank04.loc_8c0450C0


loc_8C0E3DBC:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0E3F24,pc),r2 ; r2 set to 0x8C287AE8
mov 0x0D,r1 ; r1 set to 0x0d
mov.l r4,@r15
mov.w @r2,r3
cmp/gt r1,r3
bt/s loc_8C0E3DE0
mov r5,r8
bra loc_8C0E3E56
mov 0x00,r0

#align4
loc_8C0E3DE0:
#data 0xE503DA51
#data 0x4A0BE601
#data 0x9D93E400
#data 0xE0266E03
#data 0x0ED5D24e
#data 0xE021E900
#data 0xEC066B93
#data 0x63F20E84
#data 0x1E241E36

#align4
loc_8C0E3E04:
#data 0xE601E503
#data 0xE4004A0b
#data 0xE0266403
#data 0xE02304D5
#data 0xE02004B4
#data 0x7B010494
#data 0xE021D344
#data 0x04843BC3
#data 0x8FED14E5
#data 0x6B931434

#align4
loc_8C0E3E2C:
#data 0xE601E503
#data 0xE4004A0b
#data 0xE0266403
#data 0xE02304D5
#data 0xE02004B4
#data 0x0434E301
#data 0xD33A7B01
#data 0x3BC3E021
#data 0x14E50484
#data 0x14348FEc
#data 0xE001


loc_8C0E3E56:
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

loc_8C0E3E6A:
mov r4,r3
mov.l @(loc_8C0E3F34,pc),r1 ; r1 set to 0x8C15EC70
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0E3E7C:
mov.l r14,@-r15
mov 0x0D,r7 ; r7 set to 0x0d
sts.l pr,@-r15
mov.l @(0x18,r4),r6
mov 0x01,r14 ; r14 set to 0x01
mov r4,r5

loc_8C0E3E88:
mov.w @(loc_8C0E3F16,pc),r1 ; r1 set to 0xDC, r1 set to 0xDc
mov.w @(loc_8C0E3F18,pc),r0 ; r0 set to 0xC0, r0 set to 0xC0
mov.l @(loc_8C0E3F38,pc),r3 ; r3 set to 0x8C129560, r3 set to 0x8C129560
add r5,r1 ; r1 ??? bc r5 is ???, r1 ??? bc r5 is ???	
mov.w @(loc_8C0E3F16,pc),r2 ; r2 set to 0xDC, r2 set to 0xDc
jsr @r3
add r6,r2 ; r2 ??? bc r6 is ???, r2 ??? bc r6 is ???	
mov.w @(loc_8C0E3F1A,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
mov r5,r1
add 0x50,r1
mov.b r14,@(r0,r5) 	
mov.b @(0x02,r6),r0 	
mov.b r0,@(0x02,r5) 	
mov.b @(0x01,r6),r0 	
mov.b r0,@(0x01,r5) 	
mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
fmov.s @(r0,r6),fr3 ; r3 ??? bc r6 is ???, r3 ??? bc r6 is ???	
fmov.s fr3,@(r0,r5) 	
mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
fmov.s @(r0,r6),fr3
fmov.s fr3,@(r0,r5) 	
mov.w @(loc_8C0E3F1C,pc),r0 ; r0 set to 0x1A3, r0 set to 0x1A3
mov.b @(r0,r6),r3
mov.b r3,@(r0,r5) 	
add 0x01,r0 ; r0 set to 0x1A4, r0 set to 0x1A4
mov.b @(r0,r6),r2
mov.b r2,@(r0,r5) 	
mov 0x30,r0 ; r0 set to 0x30, r0 set to 0x30
mov.b @(r0,r6),r3
mov r6,r2
add 0x50,r2
mov.b r3,@(r0,r5) 	
mov.l @(loc_8C0E3F3C,pc),r3 ; r3 set to 0x8C1294C8, r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
mov.b @(r0,r6),r2
dt r7
mov.b r2,@(r0,r5) 	
bf/s loc_8C0E3E88
mov.l @(0x0C,r5),r5
mov.b @(0x04,r4),r0 	
mov 0x14,r6 ; r6 set to 0x14, r6 set to 0x14
mov.l @(loc_8C0E3F40,pc),r5 ; r5 set to 0x8C26A518, r5 set to 0x8C26A518
add 0x01,r0 ; r0 set to 0x25, r0 set to 0x25
mov.b r0,@(0x04,r4) 	
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
mov.b @(r0,r4),r3 ; r3 ??? bc r4 is ???, r3 ??? bc r4 is ???	
mov.w @(loc_8C0E3F1E,pc),r0 ; r0 set to 0x130, r0 set to 0x130
extu.b r3,r3
mov.w r3,@(r0,r4) 	
mova @(loc_8C0E3F44,pc),r0  ; r0 set to 0x8C0E3F44, r0 set to 0x8C0E3F44
fmov.s @r0,fr3
mov.w @(loc_8C0E3F20,pc),r0 ; r0 set to 0x88, r0 set to 0x88
mov.l @(loc_8C0E3F4C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
fmov.s @(r0,r5),fr2
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mova @(loc_8C0E3F48,pc),r0  ; r0 set to 0x8C0E3F48, r0 set to 0x8C0E3F48
fmov.s @r0,fr2
mov.w @(loc_8C0E3F22,pc),r0 ; r0 set to 0x94, r0 set to 0x94
fmov.s @(r0,r5),fr1
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
fadd fr2,fr1
fmov.s fr1,@(r0,r4) 	
lds.l @r15+,pr 	
jmp @r3
mov.l @r15+,r14
#data 0x2B03

loc_8C0E3F16:
#data 0x00Dc

loc_8C0E3F18:
#data 0x00C0

loc_8C0E3F1A:
#data 0x012c

loc_8C0E3F1C:
#data 0x01A3

loc_8C0E3F1E:
#data 0x0130

loc_8C0E3F20:
#data 0x0088

loc_8C0E3F22:
#data 0x0094

#align4
loc_8C0E3F24:
#data 0x8C287AE8

#align4
loc_8C0E3F28:
#data bank04.loc_8c044F12

loc_8C0E3F2C:
#data loc_8c0e3E6a

loc_8C0E3F30:
#data loc_8c0e3FA0

loc_8C0E3F34:
#data bank15.loc_8c15EC70

loc_8C0E3F38:
#data bank12.loc_8c129560

loc_8C0E3F3C:
#data bank12.loc_8c1294C8

loc_8C0E3F40:
#data 0x8C26A518

#align4
loc_8C0E3F44:
#data 0x43A00000

#align4
loc_8C0E3F48:
#data 0x43700000

#align4
loc_8C0E3F4C:
#data bank03.loc_8c034e8c

loc_8C0E3F50:
#data 0x4F222FE6
#data 0x430BD32e
#data 0x600E6E43
#data 0x89054011
#data 0xE30084E4
#data 0x80E47001
#data 0x0E34904f

#align4
loc_8C0E3F6C:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0E3F72:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l @(loc_8C0E4014,pc),r12 ; r12 set to 0x8C0450C0
mov 0x0C,r13 ; r13 set to 0x0c
mov.l r4,@r15
mov.l @(0x0C,r14),r14

loc_8C0E3F86:
jsr @r12
mov r14,r4
dt r13
bf/s loc_8C0E3F86
mov.l @(0x0C,r14),r14
jsr @r12
mov.l @r15,r4
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r12 ; r12 ??? bc r15 is ???	
mov.l @r15+,r13 ; r13 ??? bc r15 is ???	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E3FA0:
mov 0x23,r0 ; r0 set to 0x23
sts.l pr,@-r15
mov.b @(r0,r4),r3
tst r3,r3
bf/s loc_8C0E3FB0
mov 0x21,r0 ; r0 set to 0x21
bra loc_8C0E3FB2
mov.l @(0x14,r4),r5

loc_8C0E3FB0:
#data 0x5542

loc_8C0E3FB2:
#data 0x024c
#data 0x90296143
#data 0x622C7134
#data 0x70FC0425
#data 0x0434035c
#data 0x025E7018
#data 0x0426D313
#data 0x72346253
#data 0xE00C430b
#data 0xF408C711
#data 0xF508C711
#data 0x034CE020
#data 0x89032338
#data 0xF408C70f
#data 0xF508C70f

#align4
loc_8C0E3FEC:
#data 0x034D900e
#data 0x8D012338
#data 0xF44DE034

#align4
loc_8C0E3FF8:
#data 0xF340F346
#data 0xE038F437
#data 0x4F26F246
#data 0x000BF250
#data 0x012CF427
#data 0x00000130

#align4
loc_8C0E4010:
#data bank03.loc_8c034dee

loc_8C0E4014:
#data bank04.loc_8c0450C0

loc_8C0E4018:
#data bank12.loc_8c1294C8
#data 0x424EAAAa
#data 0xC2092492
#data 0xC24EAAAa
#data 0x42092492
#data 0x7FF44F22
#data 0x2F42D339
#data 0xE5031F52
#data 0xE6011F61
#data 0xE400430b
#data 0x8D0D2008
#data 0x93606403
#data 0x0435E026
#data 0x52F2E020
#data 0xE0210424
#data 0xD23153F1
#data 0x14240434
#data 0x143663F2
#data 0x4F267F0c
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0E4068:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0E4120,pc),r1 ; r1 set to 0x8C15EC7c
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0E407C:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0E410C,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0E4124,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.w @(loc_8C0E410C,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0E410E,pc),r0 ; r0 set to 0xC0
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0E4110,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E4112,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E4128,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x00,r3 ; r3 set to 0x00
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0E4110,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r2
mov.w @(loc_8C0E4114,pc),r0 ; r0 set to 0x130
extu.b r2,r2
mov.w r2,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r1
tst r1,r1
bt/s loc_8C0E40F4
mov 0x24,r0 ; r0 set to 0x24
bra loc_8C0E40F6
mov 0x0C,r3

loc_8C0E40F4:
mov 0x0B,r3 ; r3 set to 0x0b

loc_8C0E40F6:
mov.b r3,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
lds.l @r15+,pr 	
mov.b @(r0,r14),r6
mov r14,r4
mov.l @(loc_8C0E412C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
add 0x15,r6
jmp @r3
mov.l @r15+,r14
#data 0x2B00

loc_8C0E410C:
#data 0x00Dc

loc_8C0E410E:
#data 0x00C0

loc_8C0E4110:
#data 0x012c

loc_8C0E4112:
#data 0x01A3

loc_8C0E4114:
#data 0x0130
#data 0x0000

#align4
loc_8C0E4118:
#data bank04.loc_8c044F12

loc_8C0E411C:
#data loc_8c0e4068

loc_8C0E4120:
#data bank15.loc_8c15EC7c

loc_8C0E4124:
#data bank12.loc_8c129560

loc_8C0E4128:
#data bank12.loc_8c1294C8

loc_8C0E412C:
#data bank03.loc_8c034e8c

loc_8C0E4130:
#data 0x2FD62FE6
#data 0x4F226D53
#data 0x200884D5
#data 0x6E438F52
#data 0x00DC905d
#data 0x881D600c
#data 0x90598B4c
#data 0x600C00Dc
#data 0x8B478803
#data 0x04DC9055
#data 0x891D2448
#data 0xC801604e
#data 0xE0238B1a
#data 0x222802Ec
#data 0x904B8B16
#data 0x0E34E301
#data 0x04DE9049
#data 0xF408C725
#data 0x03ECE020
#data 0x89012338
#data 0xF408C723

#align4
loc_8C0E4184:
#data 0xF346E034
#data 0xFE37F340
#data 0xF308C721
#data 0xF246E038
#data 0xFE27F230

#align4
loc_8C0E4198:
#data 0x03EC9034
#data 0x89272338
#data 0x200884E5
#data 0xD31C8B18
#data 0x64E3430b
#data 0x4011600e
#data 0x9029891e
#data 0x233803Dc
#data 0xE0218B1a
#data 0x233803Ec
#data 0x84E58B10
#data 0xD315E617
#data 0x70016563
#data 0x80E564E3
#data 0x6DF64F26
#data 0x6EF6432b

#align4
loc_8C0E41D8:
#data 0x430BD30f
#data 0x600E64E3
#data 0x89054011

#align4
loc_8C0E41E4:
#data 0xE30084E4
#data 0x80E47001
#data 0x0E34900a

#align4
loc_8C0E41F0:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0E41F8:
mov.l @(loc_8C0E4220,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x01D0
#data 0x019E01E9
#data 0x01B0012c
#data 0x000001A0
#data 0x41D55555
#data 0xC1D55555
#data 0x42892492

#align4
loc_8C0E4218:
#data bank03.loc_8c034dee

loc_8C0E421C:
#data bank03.loc_8c034e8c

loc_8C0E4220:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0xE601D34f
#data 0x1F512F42
#data 0x430BE503
#data 0x2008E400
#data 0x64038D0a
#data 0xE026938c
#data 0xE0200435
#data 0xD34952F1
#data 0x14340424
#data 0x142662F2
#data 0x4F267F08
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0E4258:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0E4370,pc),r1 ; r1 set to 0x8C15EC88
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

#align4
loc_8C0E426C:
#data 0x4F229175
#data 0x314C8444
#data 0x7001D33f
#data 0x8044926f
#data 0x430B906e
#data 0x906C325c
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
#data 0xD3300434
#data 0xE00C430b
#data 0x025CE024
#data 0x0424E300
#data 0x0434904b
#data 0x025D7004
#data 0x0425E30c
#data 0x0434E024
#data 0x4F26

loc_8C0E42D6:
#data 0x9042
#data 0x2FE6E300
#data 0x2FD66E43
#data 0x4F226D53
#data 0x62D30E34
#data 0x61E3D323
#data 0x71347234
#data 0xE00C430b
#data 0x02DD9035
#data 0x84D50E25
#data 0x8801600c
#data 0xE4028D03
#data 0x00096043
#data 0x80E4

loc_8C0E430A:
#data 0x902b
#data 0x600C00Dc
#data 0x8902880f
#data 0x00096043
#data 0x80E4

loc_8C0E431A:
#data 0x9024
#data 0x233803Dc
#data 0x84E48913
#data 0x8802600c
#data 0x9018890f
#data 0xD313E201
#data 0x0E24E517
#data 0x4F267015
#data 0xE02007Dc
#data 0x64E306Ec
#data 0x77FF6DF6
#data 0x432B7618
#data 0x6EF6

loc_8C0E434A:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0E4352:
mov.l @(loc_8C0E4380,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x00DC2B05
#data 0x012C00C0
#data 0x013001A3
#data 0x01410159

#align4
loc_8C0E4368:
#data bank04.loc_8c044F12

loc_8C0E436C:
#data loc_8c0e4258

loc_8C0E4370:
#data bank15.loc_8c15EC88

loc_8C0E4374:
#data bank12.loc_8c129560

loc_8C0E4378:
#data bank12.loc_8c1294C8

loc_8C0E437C:
#data bank03.loc_8c034F54

loc_8C0E4380:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0xE601D34b
#data 0x1F512F42
#data 0x430BE503
#data 0x2008E400
#data 0x64038D0c
#data 0xE3019283
#data 0x2430E026
#data 0xE0200425
#data 0xD24453F1
#data 0x14240434
#data 0x143663F2
#data 0x4F267F08
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0E43BC:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0E44C0,pc),r0 ; r0 set to 0x8C15EC94
extu.b r3,r3
mov.l @(0x18,r14),r5
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0E43D2:
mov r4,r3
mov.l @(loc_8C0E44C4,pc),r1 ; r1 set to 0x8C15ECA0
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

#align4
loc_8C0E43E4:
#data 0x4F229160
#data 0x314C905f
#data 0xD336925c
#data 0x325C430b
#data 0xE201905a
#data 0x71506143
#data 0x84520424
#data 0x84518042
#data 0xE0508041
#data 0xF437F356
#data 0xF356E054
#data 0x904CF437
#data 0x0434035c
#data 0x025C7001
#data 0xE0300424
#data 0x6253035c
#data 0x04347250
#data 0x430BD328
#data 0xE024E00c
#data 0x025CD627
#data 0x0424E30c
#data 0x70018444
#data 0xE0248044
#data 0x90350434
#data 0xE038F356
#data 0xE020F437
#data 0xC721814e
#data 0x902EF308
#data 0xC720F466
#data 0xE05CF208
#data 0x9029F427
#data 0x2338035c
#data 0xF4308D09
#data 0xF208C71c
#data 0xF4669023
#data 0xF146E05c
#data 0xF14DF420
#data 0xF417

loc_8C0E447A:
#data 0xD319
#data 0xE517E034
#data 0xE61AF447
#data 0x4F26432b


loc_8C0E4488:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x05,r14),r0 	
extu.b r0,r0
cmp/eq 0x00,r0 	
bt loc_8C0E44E4
cmp/eq 0x01,r0 	
bt loc_8C0E4552
cmp/eq 0x02,r0 	
bf loc_8C0E44A2
bra loc_8C0E45Ac
nop 	

loc_8C0E44A2:
bra loc_8C0E45Be
nop 	
#data 0x2B06
#data 0x00C000Dc
#data 0x01A3012c
#data 0x008C041c
#data 0x008801D2

#align4
loc_8C0E44B8:
#data bank04.loc_8c044F12

loc_8C0E44BC:
#data loc_8c0e43Bc

loc_8C0E44C0:
#data bank15.loc_8c15EC94

loc_8C0E44C4:
#data bank15.loc_8c15ECA0

loc_8C0E44C8:
#data bank12.loc_8c129560

loc_8C0E44CC:
#data bank12.loc_8c1294C8
#data 0x8C26A518
#data 0x43F00000
#data 0xC1855555
#data 0xC4055555

#align4
loc_8C0E44E0:
#data bank03.loc_8c034e8c


loc_8C0E44E4:
mov.l @(loc_8C0E45D8,pc),r3 ; r3 set to 0x8C034DEe
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
mov.w @(0x1C,r14),r0 	
add 0xFF,r0 ; r0 set to 0x5f
mov.w r0,@(0x1C,r14) 	
exts.w r0,r0 ; r0 ??	
tst r0,r0
bf loc_8C0E45Be
mov.b @(0x05,r14),r0 	
mov r14,r4
mov.l @(loc_8C0E45E0,pc),r3 ; r3 set to 0x8C034E8c
mov 0x1B,r6 ; r6 set to 0x1b
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mova @(loc_8C0E45DC,pc),r0  ; r0 set to 0x8C0E45Dc
fmov.s @r0,fr3 ; r3 ??	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r14),fr2
mov 0x68,r0 ; r0 set to 0x68
mov 0x17,r5 ; r5 set to 0x17
fdiv fr3,fr2
fneg fr2
fmov.s fr2,@(r0,r14) 	
lds.l @r15+,pr 	
jmp @r3
mov.l @r15+,r14

loc_8C0E4552:
mov 0x5C,r1 ; r1 set to 0x5c
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
mov 0x68,r0 ; r0 set to 0x68
fmov.s @(r0,r14),fr3
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r14),fr2
fmul fr3,fr2
fldi0 fr3
fcmp/gt fr2,fr3
bt loc_8C0E45Be
mov.b @(0x05,r14),r0 	
fmov fr3,fr4
add 0x01,r0 ; r0 set to 0x5d
mov.b r0,@(0x05,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr4,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
bra loc_8C0E45Be
fmov.s fr4,@(r0,r14) 	

#align4
loc_8C0E45AC:
#data 0x420BD20a
#data 0x600E64E3
#data 0x89024011
#data 0x700184E5
#data 0x80E5


loc_8C0E45BE:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E45C4:
mov r4,r3
mov.l @(loc_8C0E45E4,pc),r1 ; r1 set to 0x8C15ECAc
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x0000

#align4
loc_8C0E45D8:
#data bank03.loc_8c034dee

loc_8C0E45DC:
#data 0x40800000

#align4
loc_8C0E45E0:
#data bank03.loc_8c034e8c

loc_8C0E45E4:
#data bank15.loc_8c15ECAc

loc_8C0E45E8:
#data 0x6E432FE6
#data 0x4F229164
#data 0x31EC9262
#data 0xD3349061
#data 0x325C430b
#data 0xE201905e
#data 0x715061E3
#data 0x84520E24
#data 0x845180E2
#data 0xE05080E1
#data 0xFE37F356
#data 0xF356E054
#data 0x9050FE37
#data 0x0E34035c
#data 0x025C7001
#data 0xE0300E24
#data 0x6253035c
#data 0x0E347250
#data 0x430BD326
#data 0xE024E00c
#data 0x025CD425
#data 0x0E24E30b
#data 0x700184E4
#data 0xE02480E4
#data 0x90390E34
#data 0xE038F356
#data 0xC720FE37
#data 0x9034F308
#data 0xC71FF446
#data 0xE05CF208
#data 0x902FFE27
#data 0x2338035c
#data 0xF4308D09
#data 0xF208C71b
#data 0xF4469029
#data 0xF1E6E05c
#data 0xF14DF420
#data 0xFE17

loc_8C0E467E:
#data 0xD318
#data 0xFE47E034
#data 0x64E3430b
#data 0xD2164F26
#data 0xE61C64E3
#data 0x422BE517
#data 0x6EF6


loc_8C0E4696:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
mov.b @(0x05,r14),r0 	
mov.l @(loc_8C0E46E8,pc),r12 ; r12 set to 0x8C034DEe
extu.b r0,r0
cmp/eq 0x00,r0 	
bt/s loc_8C0E46Ec
mov r5,r13
cmp/eq 0x01,r0 	
bt loc_8C0E4764
cmp/eq 0x02,r0 	
bt loc_8C0E4792
bra loc_8C0E4796
nop 	
#data 0x00C000Dc
#data 0x01A3012c
#data 0x008C041c
#data 0x008801D2

#align4
loc_8C0E46C8:
#data bank12.loc_8c129560

loc_8C0E46CC:
#data bank12.loc_8c1294C8
#data 0x8C26A518
#data 0x42D55555
#data 0xC1200000
#data 0xC2D55555

#align4
loc_8C0E46E0:
#data bank10.loc_8c104434

loc_8C0E46E4:
#data bank03.loc_8c034e8c

loc_8C0E46E8:
#data bank03.loc_8c034dee

loc_8C0E46EC:
#data 0x31ECE15c
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x64E34C0b
#data 0xF4E6E034
#data 0xF431F3D6
#data 0xF345F38d
#data 0xF44D8B00

#align4
loc_8C0E471C:
#data 0xF508C726
#data 0x8B38F545
#data 0x700184E5
#data 0x904280E5
#data 0x233803Dc
#data 0xF45C8D02
#data 0xF408C721

#align4
loc_8C0E4738:
#data 0xD321E034
#data 0xE61DF3D6
#data 0xE51764E3
#data 0xF48DF340
#data 0xE05CFE37
#data 0xE060FE47
#data 0xE068FE47
#data 0xE06CFE47
#data 0x4F26FE47
#data 0x6DF66CF6
#data 0x6EF6432b


loc_8C0E4764:
mov.w @(loc_8C0E47B4,pc),r0 ; r0 set to 0x141
mov.b @(r0,r13),r3
tst r3,r3
bf loc_8C0E4796
jsr @r12
mov r14,r4
mov.w @(loc_8C0E47B4,pc),r0 ; r0 set to 0x141
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8C0E4796
mov.b @(0x05,r14),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0 ; r0 set to 0x142
mov.b r0,@(0x05,r14) 	
mov.w @(loc_8C0E47B4,pc),r0 ; r0 set to 0x141
mov.b r3,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r13),r2
mov r0,r3 ; r3 set to 0x21
add 0x5F,r3 ; r3 set to 0x80
or r3,r2
bra loc_8C0E4796
mov.b r2,@(r0,r13) 	

loc_8C0E4792:
#data 0x4C0b
#data 0x64E3


loc_8C0E4796:
lds.l @r15+,pr 	
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E47A0:
mov r4,r3
mov.l @(loc_8C0E47C4,pc),r1 ; r1 set to 0x8C15ECB4
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x01D2

loc_8C0E47B4:
#data 0x0141
#data 0x0000
#data 0x42D55555
#data 0xC2D55555

#align4
loc_8C0E47C0:
#data bank03.loc_8c034e8c

loc_8C0E47C4:
#data bank15.loc_8c15ECB4

loc_8C0E47C8:
#data 0x6E432FE6
#data 0x4F229164
#data 0x31EC9262
#data 0xD3349061
#data 0x325C430b
#data 0xE201905e
#data 0x715061E3
#data 0x84520E24
#data 0x845180E2
#data 0xE05080E1
#data 0xFE37F356
#data 0xF356E054
#data 0x9050FE37
#data 0x0E34035c
#data 0x025C7001
#data 0xE0300E24
#data 0x6253035c
#data 0x0E347250
#data 0x430BD326
#data 0xE024E00c
#data 0xE30C025c
#data 0x0E24E430
#data 0x700184E4
#data 0xE02480E4
#data 0x90390E34
#data 0x70010E44
#data 0xC71F0E44
#data 0xC71FF408
#data 0xE05CF308
#data 0x9030FE37
#data 0x2338035c
#data 0xC71C8905
#data 0xE05CF408
#data 0xF34DF3E6
#data 0xFE37

loc_8C0E4852:
#data 0xE034
#data 0xF356D319
#data 0xFE37F340
#data 0xF3569022
#data 0xFE37E038
#data 0x64E3430b
#data 0xD2154F26
#data 0xE61E64E3
#data 0x422BE517
#data 0x6EF6


loc_8C0E4876:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l r5,@r15
mov.b @(0x05,r14),r0 	
extu.b r0,r0
cmp/eq 0x00,r0 	
bt/s loc_8C0E48C4
mov 0x00,r13 ; r13 set to 0x00
cmp/eq 0x01,r0 	
bt loc_8C0E48Dc
cmp/eq 0x02,r0 	
bt loc_8C0E48Ec
bra loc_8C0E494a
nop 	
#data 0x00C000Dc
#data 0x01A3012c
#data 0x01D2013e
#data 0x0000041c

#align4
loc_8C0E48A8:
#data bank12.loc_8c129560

loc_8C0E48AC:
#data bank12.loc_8c1294C8
#data 0xC2700000
#data 0x41200000
#data 0x42700000

#align4
loc_8C0E48BC:
#data bank10.loc_8c104434

loc_8C0E48C0:
#data bank03.loc_8c034e8c

loc_8C0E48C4:
#data 0x430BD32a
#data 0x904F64E3
#data 0x222802Ec
#data 0x84E5893b
#data 0x80E57001
#data 0x0ED49048

#align4
loc_8C0E48DC:
#data 0x63F29046
#data 0x2228023c
#data 0x84E58931
#data 0x80E57001

#align4
loc_8C0E48EC:
#data 0x430BD320
#data 0x903B64E3
#data 0x222802Ec
#data 0xE15C8927
#data 0x31ECD31d
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
#data 0x8B062008
#data 0x80E4E002
#data 0x000960D3
#data 0x901280E5
#data 0x0ED4


loc_8C0E494A:
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E4954:
mov.b @(0x05,r4),r0 	
tst r0,r0
bf loc_8C0E4962
mov.b @(0x05,r4),r0 	
add 0x01,r0
bra loc_8C0E4968
mov.b r0,@(0x05,r4) 	

loc_8C0E4962:
mov.l @(loc_8C0E4978,pc),r2 ; r2 set to 0x8C0450C0
jmp @r2
nop 	

loc_8C0E4968:
rts 	
nop 	
;-------------------------------------------------------------------------------
#data 0x012C0141

#align4
loc_8C0E4970:
#data bank03.loc_8c034dee

loc_8C0E4974:
#data bank03.loc_8c03340c

loc_8C0E4978:
#data bank04.loc_8c0450C0

loc_8C0E497C:
#data 0x7FF84F22
#data 0xE600D34e
#data 0x2F501F41
#data 0x430BE503
#data 0x20086463
#data 0x64038D07
#data 0xE020D34a
#data 0x52F11434
#data 0x63F01426
#data 0x0434

loc_8C0E49A2:
#data 0x7F08
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0E49AA:
mov r4,r3
mov.l @(loc_8C0E4AC4,pc),r1 ; r1 set to 0x8C15ECBc
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0E49BC:
mov.w @(loc_8C0E4AB0,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0E4AC8,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.w @(loc_8C0E4AB0,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0E4AB2,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r4),r5
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0E4AB4,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E4AB6,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E4ACC,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov.b r2,@(r0,r4) 	
mov 0xFF,r0 ; r0 set to 0xFFFFFFFf
mov.w r0,@(0x1C,r4) 	
lds.l @r15+,pr 	

loc_8C0E4A1A:
mov.w @(loc_8C0E4AB4,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(0x18,r4),r5
mov.b r3,@(r0,r4) 	
mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
mov.b @(r0,r5),r2
mov.b r2,@(r0,r4) 	
mov.b @(0x01,r4),r0 	
mov r0,r3 ; r3 set to 0x24, r3 set to 0x24
mov.b @(0x01,r5),r0 	
cmp/eq r0,r3
bt loc_8C0E4A40
mov 0x02,r0 ; r0 set to 0x02, r0 set to 0x02
mov.b r0,@(0x04,r4) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E4A40:
mov.w @(loc_8C0E4AB4,pc),r0 ; r0 set to 0x12c
mov.b @(r0,r5),r3
tst r3,r3
bt loc_8C0E4A96
mov r5,r2
mov.l @(loc_8C0E4ACC,pc),r3 ; r3 set to 0x8C1294C8
mov r4,r1
add 0x34,r2
add 0x34,r1
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.w @(loc_8C0E4AB8,pc),r0 ; r0 set to 0x130
mov.w @(loc_8C0E4ABA,pc),r6 ; r6 set to 0x150
mov.w @(r0,r5),r2
add r5,r6 ; r6 ??? bc r5 is ???	
mov.w r2,@(r0,r4) 	
mov.b @(0x01,r6),r0 	
mov r0,r6 ; r6 set to 0x130
extu.b r6,r3 ; r3 set to 0x30
tst r3,r3
bt loc_8C0E4A92
mov.w @(loc_8C0E4AB4,pc),r0 ; r0 set to 0x12c
mov 0x01,r2 ; r2 set to 0x01
extu.b r6,r14 ; r14 set to 0x30
mov.b r2,@(r0,r4) 	
mov.w @(0x1C,r4),r0 	
cmp/eq r14,r0
bt loc_8C0E4A8a
extu.b r6,r0 ; r0 set to 0x30
mov r14,r6 ; r6 set to 0x30
mov.l @(loc_8C0E4AD0,pc),r3 ; r3 set to 0x8C034C38
mov 0x1B,r5 ; r5 set to 0x1b
mov.w r0,@(0x1C,r4) 	
add 0xFF,r6 ; r6 set to 0x2f
lds.l @r15+,pr 	
jmp @r3
mov.l @r15+,r14

loc_8C0E4A8A:
lds.l @r15+,pr 	
mov.l @(loc_8C0E4AD4,pc),r3 ; r3 set to 0x8C034D8c
jmp @r3
mov.l @r15+,r14

loc_8C0E4A92:
#data 0xE0Ff
#data 0x814e


loc_8C0E4A96:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E4A9C:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0E4AB4,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0E4AAA:
mov.l @(loc_8C0E4AD8,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0E4AB0:
#data 0x00Dc

loc_8C0E4AB2:
#data 0x00C0

loc_8C0E4AB4:
#data 0x012c

loc_8C0E4AB6:
#data 0x01A3

loc_8C0E4AB8:
#data 0x0130

loc_8C0E4ABA:
#data 0x0150

#align4
loc_8C0E4ABC:
#data bank04.loc_8c044F12

loc_8C0E4AC0:
#data loc_8c0e49Aa

loc_8C0E4AC4:
#data bank15.loc_8c15ECBc

loc_8C0E4AC8:
#data bank12.loc_8c129560

loc_8C0E4ACC:
#data bank12.loc_8c1294C8

loc_8C0E4AD0:
#data bank03.loc_8c034C38

loc_8C0E4AD4:
#data bank03.loc_8c034D8c

loc_8C0E4AD8:
#data bank04.loc_8c0450C0

loc_8C0E4ADC:
#data 0x7FF84F22
#data 0x60532F42
#data 0xD32D0009
#data 0x80F4E503
#data 0x430BE600
#data 0x20086463
#data 0x64038D11
#data 0xD329E120
#data 0x1434314c
#data 0x84F4E300
#data 0xE0212100
#data 0x93460434
#data 0x142662F2
#data 0x840160F2
#data 0xE0268041
#data 0x0435

loc_8C0E4B1A:
#data 0x7F08
#data 0x000B4F26
#data 0x4F226043
#data 0x2F427FF4
#data 0x00096053
#data 0x606380F8
#data 0xD31A0009
#data 0x80F4E503
#data 0x430BE600
#data 0x20086463
#data 0x64038D12
#data 0xD316E120
#data 0xE221314c
#data 0x84F81434
#data 0x2100324c
#data 0x220084F4
#data 0x143663F2
#data 0x931C60F2
#data 0x80418401
#data 0x0435E026
#data 0x4F267F0c
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0E4B70:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov 0x02,r3 ; r3 set to 0x02
extu.b r0,r0
cmp/ge r3,r0
bf/s loc_8C0E4B88
mov.l @(0x18,r14),r5
mov.l @(loc_8C0E4BA4,pc),r1 ; r1 set to 0x8C0450C0
mov r14,r4
jmp @r1
mov.l @r15+,r14

loc_8C0E4B88:
mov 0x20,r0 ; r0 set to 0x20
mov r14,r4
mov.b @(r0,r14),r2
mov.l @(loc_8C0E4BA8,pc),r0 ; r0 set to 0x8C15EEE8
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r1
jmp @r1
mov.l @r15+,r14
#data 0x2C01

#align4
loc_8C0E4B9C:
#data bank04.loc_8c044F12

loc_8C0E4BA0:
#data loc_8c0e4B70

loc_8C0E4BA4:
#data bank04.loc_8c0450C0

loc_8C0E4BA8:
#data bank15.loc_8c15EEE8

loc_8C0E4BAC:
#data 0x6E432FE6
#data 0x84E44F22
#data 0x8B3B2008
#data 0x005C9096
#data 0x8802600c
#data 0x84E4893c
#data 0x70019191
#data 0x80E4D34a
#data 0x908D31Ec
#data 0x430B928b
#data 0x908A325c
#data 0x61E3E201
#data 0x0E247150
#data 0x80E28452
#data 0x80E18451
#data 0xF356E050
#data 0xE054FE37
#data 0xFE37F356
#data 0x035C907c
#data 0x70010E34
#data 0x0E24025c
#data 0x035CE030
#data 0x72506253
#data 0xD33B0E34
#data 0xE00C430b
#data 0xD33AE024
#data 0x0E24025c
#data 0xF356E034
#data 0xE038FE37
#data 0xE51BF356
#data 0xE020FE37
#data 0x760206Ec
#data 0x64E3430b

#align4
loc_8C0E4C30:
#data 0x420BD233
#data 0x600E64E3
#data 0x89044011

#align4
loc_8C0E4C3C:
#data 0xD2314F26
#data 0x422B64E3
#data 0x6EF6

loc_8C0E4C46:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0E4C4C:
#data 0x6E432FE6
#data 0x4F222FD6
#data 0x200884E4
#data 0x6D538F2f
#data 0x914484E4
#data 0xD3247001
#data 0x31EC80E4
#data 0x923E9040
#data 0x32DC430b
#data 0xE201903d
#data 0x715061E3
#data 0x84D20E24
#data 0x84D180E2
#data 0xE05080E1
#data 0xFE37F3D6
#data 0xF3D6E054
#data 0x902FFE37
#data 0x0E3403Dc
#data 0x02DC7001
#data 0xE0300E24
#data 0x62D303Dc
#data 0x0E347250
#data 0x430BD314
#data 0xE024E00c
#data 0x02DCD313
#data 0xE604E51b
#data 0x430B0E24
#data 0x64E3

loc_8C0E4CBA:
#data 0xE034
#data 0xF3D6D310
#data 0x9016FE37
#data 0xE038F3D6
#data 0x430BFE37
#data 0x600E64E3
#data 0x89054011
#data 0xD30B4F26
#data 0x6DF664E3
#data 0x6EF6432b

#align4
loc_8C0E4CE0:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x00DC01F9
#data 0x012C00C0
#data 0x041C01A3

#align4
loc_8C0E4CF4:
#data bank12.loc_8c129560

loc_8C0E4CF8:
#data bank12.loc_8c1294C8

loc_8C0E4CFC:
#data bank03.loc_8c034C38

loc_8C0E4D00:
#data bank03.loc_8c034D8c

loc_8C0E4D04:
#data bank04.loc_8c0450C0

loc_8C0E4D08:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x4F222FC6
#data 0x200884E4
#data 0xEC018F38
#data 0x917284E4
#data 0xD33C7001
#data 0x31EC80E4
#data 0x926C906e
#data 0x32DC430b
#data 0x61E3906b
#data 0x0EC47150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC905e
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD32D0E34
#data 0xE00C430b
#data 0x02DCE024
#data 0xE51BE3Fc
#data 0xE0340E24
#data 0xE605F3D6
#data 0xE031FE37
#data 0xD3270E34
#data 0x64E3430b
#data 0xE521D226
#data 0x64E3420b

#align4
loc_8C0E4D8C:
#data 0x03DCE024
#data 0x84D50E34
#data 0x8801600c
#data 0x90388B03
#data 0x222802Dc
#data 0x8B06

loc_8C0E4DA2:
#data 0x4F26
#data 0x64E3D31f
#data 0x6DF66CF6
#data 0x6EF6432b

#align4
loc_8C0E4DB0:
#data 0x03DD902e
#data 0x89012338
#data 0xE448A001

loc_8C0E4DBC:
#data 0xE4B8

loc_8C0E4DBE:
#data 0x644f
#data 0x445AD31b
#data 0xF2D6E034
#data 0xF008C717
#data 0xF32DE034
#data 0xFE27F23e
#data 0xF308C715
#data 0xF2D6E038
#data 0xFE27F230
#data 0x64E3430b
#data 0x6232D313
#data 0x21C85127
#data 0x920C8904
#data 0x32ECE000
#data 0x2200A002

#align4
loc_8C0E4DF8:
#data 0x0EC49007

#align4
loc_8C0E4DFC:
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x00DC6EF6
#data 0x012C00C0
#data 0x014001A3
#data 0x00000130

#align4
loc_8C0E4E14:
#data bank12.loc_8c129560

loc_8C0E4E18:
#data bank12.loc_8c1294C8

loc_8C0E4E1C:
#data bank03.loc_8c034C38

loc_8C0E4E20:
#data bank04.loc_8c042008

loc_8C0E4E24:
#data bank04.loc_8c0450C0
#data 0x3FD55555
#data 0x43789249

#align4
loc_8C0E4E30:
#data bank03.loc_8c034D8c
#data 0x8C26823c


loc_8C0E4E38:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.l r12,@-r15
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
tst r0,r0
bf/s loc_8C0E4EAc
mov 0x00,r4 ; r4 set to 0x00
mov.b @(0x04,r14),r0 	
mov.w @(loc_8C0E4F74,pc),r1 ; r1 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0E4F88,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0E4F76,pc),r0 ; r0 set to 0xC0
mov.w @(loc_8C0E4F74,pc),r2 ; r2 set to 0xDc
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0E4F78,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E4F7A,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E4F8C,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0E4F78,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov r4,r0 ; r0 set to 0x00
nop 	
bra loc_8C0E4F6a
mov.w r0,@(0x1E,r14) 	

#align4
loc_8C0E4EAC:
#data 0x9366E024
#data 0x0E2402Dc
#data 0x05DD9062
#data 0x3530655d
#data 0x915F8902
#data 0x8B463510

#align4
loc_8C0E4EC4:
#data 0x02DC905d
#data 0x893D2228
#data 0x85EF9359
#data 0x633033Dc
#data 0x89483030
#data 0x93539053
#data 0xD12C00Dc
#data 0xE02181Ef
#data 0x85EF0CEc
#data 0x2C3E6CCc
#data 0x620370Ff
#data 0x302C4008
#data 0x40080C1a
#data 0x3C0C3C1c
#data 0x62C0903c
#data 0x8D322228
#data 0x85C10E24
#data 0xD322E51b
#data 0x670DE612
#data 0x64E3430b
#data 0xF3C6E004
#data 0xFE37E050
#data 0xF3C6E008
#data 0xFE37E054
#data 0xF4C6E00c
#data 0xF3C6E010
#data 0xF2D6E038
#data 0xFE27F230
#data 0x03DD9027
#data 0x8F012338
#data 0xF44DE034

#align4
loc_8C0E4F40:
#data 0xF340F3D6
#data 0xFE37A011

#align4
loc_8C0E4F48:
#data 0x0E449016
#data 0xA00C604e
#data 0x81Ef

loc_8C0E4F52:
#data 0xF39d
#data 0xFE37E054
#data 0xD30FE050
#data 0xFE3764E3
#data 0x6CF64F26
#data 0x432B6DF6
#data 0x6EF6


loc_8C0E4F6A:
lds.l @r15+,pr 	
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E4F74:
#data 0x00Dc

loc_8C0E4F76:
#data 0x00C0

loc_8C0E4F78:
#data 0x012c

loc_8C0E4F7A:
#data 0x01A3
#data 0x15000158
#data 0x01411510
#data 0x013000B4

#align4
loc_8C0E4F88:
#data bank12.loc_8c129560

loc_8C0E4F8C:
#data bank12.loc_8c1294C8

loc_8C0E4F90:
#data bank15.loc_8c15ECCc

loc_8C0E4F94:
#data bank03.loc_8c034CD6

loc_8C0E4F98:
#data bank04.loc_8c0450C0
#data 0x7FFC4F22
#data 0xE503D34c
#data 0xE6002F42
#data 0x6463430b
#data 0x8D112008
#data 0xE5006403
#data 0xE020D348
#data 0x04541434
#data 0x0454E021
#data 0x63F29083
#data 0x9381023e
#data 0x60F21426
#data 0x80418401
#data 0x0435E026
#data 0x4F267F04
#data 0x6043000b
;-------------------------------------------------------------------------------

#align4
loc_8C0E4FDC:
#data 0x90742FE6
#data 0x00EE5E46
#data 0x600C8401
#data 0x8B04882c
#data 0xE3028444
#data 0x3033600c
#data 0x8B02

loc_8C0E4FF6:
#data 0xD339
#data 0x6EF6432b

#align4
loc_8C0E4FFC:
#data 0x014CE020
#data 0x8B022118
#data 0xA00A65E3
#data 0x6EF6

loc_8C0E500A:
#data 0x004c
#data 0xC880600c
#data 0x65E38902
#data 0x6EF6A1Ee

#align4
loc_8C0E5018:
#data 0xA0C165E3
#data 0x6EF6

loc_8C0E501E:
#data 0x9056
#data 0x2FE6E300
#data 0x2FD66E43
#data 0x4F222FC6
#data 0x84E40E34
#data 0x8F592008
#data 0x84E46D53
#data 0x7001934a
#data 0x80E49148
#data 0x02DE9043
#data 0x323C9045
#data 0x430BD325
#data 0x903E31Ec
#data 0x0E14E101
#data 0x00DE9039
#data 0x80E28402
#data 0x00DE9035
#data 0x80E18401
#data 0x03DE9031
#data 0xF336E050
#data 0x902CFE37
#data 0xE05403De
#data 0xFE37F336
#data 0x03DE9027
#data 0x023C70Db
#data 0x70250E24
#data 0x70DC03De
#data 0x0E24023c
#data 0x03DE7024
#data 0x61E3E030
#data 0x023C7150
#data 0x0E24D312
#data 0x02DE9015
#data 0x430B7250
#data 0x9010E00c
#data 0xE02401De
#data 0x0E34031c
#data 0x02DE900b
#data 0xF326E034
#data 0x9006FE37
#data 0xE03803De
#data 0xFE37F336
#data 0xA057E00a
#data 0x01C881Ef
#data 0x012C2C02
#data 0x00C000Dc

#align4
loc_8C0E50D4:
#data bank04.loc_8c044F12

loc_8C0E50D8:
#data loc_8c0e4FDc

loc_8C0E50DC:
#data bank04.loc_8c0450C0

loc_8C0E50E0:
#data bank12.loc_8c129560

loc_8C0E50E4:
#data bank12.loc_8c1294C8

loc_8C0E50E8:
#data 0x02DC904b
#data 0x8B3C2228
#data 0x600C84D5
#data 0x8D048803
#data 0x60436403
#data 0x88020009
#data 0x8B33

loc_8C0E5102:
#data 0x85Ef
#data 0x89372008
#data 0xE503D320
#data 0x430BE600
#data 0x20086463
#data 0x6C038D25
#data 0xE120D21e
#data 0x31CCD31c
#data 0xE3001C34
#data 0x50076022
#data 0x7001C903
#data 0xE0212100
#data 0x90270C34
#data 0x932651E6
#data 0x00DE1C16
#data 0x8401D116
#data 0xE02680C1
#data 0x0C35410b
#data 0xC93F911e
#data 0x70E0D312
#data 0x430B31Cc
#data 0x91182102
#data 0x600BC93f
#data 0x704031Cc
#data 0x2102

loc_8C0E5162:
#data 0x85Ef
#data 0xA00770Ff
#data 0x81Ef

loc_8C0E516A:
#data 0x4F26
#data 0x64E3D20b
#data 0x6DF66CF6
#data 0x6EF6422b

#align4
loc_8C0E5178:
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x022A6EF6
#data 0x2C0201C8
#data 0x00D000Cc

#align4
loc_8C0E518C:
#data bank04.loc_8c044F12

loc_8C0E5190:
#data loc_8c0e4FDc
#data 0x8C26823c

#align4
loc_8C0E5198:
#data bank03.loc_8c03319e

loc_8C0E519C:
#data bank04.loc_8c0450C0

loc_8C0E51A0:
#data 0x6E432FE6
#data 0x2FC62FD6
#data 0x2FB66C53
#data 0x2FA6E501
#data 0x2F862F96
#data 0xFFEBFFFb
#data 0xFFCBFFDb
#data 0x84E44F22
#data 0x8F542008
#data 0x84E4EA00
#data 0x7001938b
#data 0x80E49189
#data 0x02CE9086
#data 0x323C9086
#data 0x430BD344
#data 0x908231Ec
#data 0x907D0E54
#data 0x840200Ce
#data 0x907980E2
#data 0x840100Ce
#data 0x907580E1
#data 0xE05003Ce
#data 0xFE37F336
#data 0x03CE9070
#data 0xF336E054
#data 0x906BFE37
#data 0x70DB03Ce
#data 0x0E24023c
#data 0x03CE7025
#data 0x023C70Dc
#data 0x70240E24
#data 0xE03003Ce
#data 0x023C61E3
#data 0xD3327150
#data 0x90590E24
#data 0x725002Ce
#data 0xE00C430b
#data 0xE51B9054
#data 0xE02401Ce
#data 0x0E34031c
#data 0x06ECE020
#data 0x7605D32b
#data 0x64E3430b
#data 0x81EE904b
#data 0x70040EA4
#data 0x233803Cd
#data 0x0E358D05
#data 0x34EC9444
#data 0x633B6342
#data 0x2432

loc_8C0E5266:
#data 0xE031
#data 0xA0A7E2Ff
#data 0x0E24

loc_8C0E526E:
#data 0xE024
#data 0x0E1401Cc
#data 0x03CC9039
#data 0x89012338
#data 0x0009A08f

#align4
loc_8C0E5280:
#data 0xFD08C71d
#data 0xFE08C71d
#data 0x600C84C5
#data 0x8D048803
#data 0x60436403
#data 0x88020009
#data 0x8B34

loc_8C0E529A:
#data 0x9024
#data 0xF0DC64E3
#data 0x70A00E54
#data 0xE03403Ee
#data 0x435AF2C6
#data 0xF23EF32d
#data 0xFE27F0Ec
#data 0x03EE4008
#data 0xF2C6E038
#data 0xF32D435a
#data 0xFE27F23e
#data 0xFCF94F26
#data 0xFEF9FDF9
#data 0x68F6FFF9
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0xD3096DF6
#data 0x6EF6432b
#data 0x00DC01C8
#data 0x012C00C0
#data 0x022A00Cc

#align4
loc_8C0E52EC:
#data bank12.loc_8c129560

loc_8C0E52F0:
#data bank12.loc_8c1294C8

loc_8C0E52F4:
#data bank03.loc_8c034C38
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0E5300:
#data bank03.loc_8c034D8c

loc_8C0E5304:
#data 0xDB36C735
#data 0x69A3FF08
#data 0xE82FFC8d

#align4
loc_8C0E5310:
#data 0xE503D334
#data 0x430BE600
#data 0x20086463
#data 0x6D038D3f
#data 0x4B0BD331
#data 0x92561D34
#data 0xC907E120
#data 0x302C31Dc
#data 0xE0212100
#data 0x904F0DA4
#data 0x1D3653E6
#data 0x934C00Ce
#data 0x80D18401
#data 0x0D35E026
#data 0xF3E6E034
#data 0xE038FD37
#data 0xFD37F3E6
#data 0xFDC7E068
#data 0xF308C724
#data 0x4B0BE06c
#data 0xC97FFD37
#data 0x640370C0
#data 0x44084418
#data 0x445A4408
#data 0xF32DE05c
#data 0xF3F3F3D2
#data 0xFD374B0b
#data 0x70E02089
#data 0x44186403
#data 0x44084408
#data 0x445A644b
#data 0xE3027901
#data 0x3933E060
#data 0xF3E2F32d
#data 0xFD37F3F3
#data 0x8BB8

loc_8C0E539E:
#data 0x4F26
#data 0x64E3D313
#data 0xFDF9FCF9
#data 0xFFF9FEF9
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6432b

#align4
loc_8C0E53BC:
#data 0xFCF94F26
#data 0xFEF9FDF9
#data 0x68F6FFF9
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00806EF6
#data 0x2C0201C8
#data 0x47800000

#align4
loc_8C0E53E0:
#data bank03.loc_8c03319e

loc_8C0E53E4:
#data bank04.loc_8c044F12

loc_8C0E53E8:
#data loc_8c0e4FDc
#data 0xBE092492

#align4
loc_8C0E53F0:
#data bank04.loc_8c0450C0

loc_8C0E53F4:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x84E44F22
#data 0x8F512008
#data 0x84E4E401
#data 0x70019387
#data 0x80E49185
#data 0x02DE9082
#data 0x323C9082
#data 0x430BD342
#data 0x907E31Ec
#data 0x90790E44
#data 0x840200De
#data 0x907580E2
#data 0x840100De
#data 0x907180E1
#data 0xE05003De
#data 0xFE37F336
#data 0x03DE906c
#data 0xF336E054
#data 0x9067FE37
#data 0x70DB03De
#data 0x0E24023c
#data 0x03DE7025
#data 0x023C70Dc
#data 0x70240E24
#data 0xE03003De
#data 0x023C61E3
#data 0xD3307150
#data 0x90550E24
#data 0x725002De
#data 0xE00C430b
#data 0xE51B9050
#data 0xE02401De
#data 0x0E34031c
#data 0x00ECE020
#data 0xC907D329
#data 0x760A6603
#data 0x64E3430b
#data 0x81EEE01e
#data 0x9042E300
#data 0xE0240E34
#data 0xE3FF02Dc
#data 0xE0310E24
#data 0x0E34A034

#align4
loc_8C0E54A8:
#data 0x01DCE024
#data 0x90370E14
#data 0x233803Dc
#data 0x85EE8B05
#data 0x81EE70Ff
#data 0x4011600f
#data 0x8905

loc_8C0E54C2:
#data 0x4F26
#data 0x64E3D21a
#data 0x422B6DF6
#data 0x6EF6

loc_8C0E54CE:
#data 0x9026
#data 0x0E44D318
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

#align4
loc_8C0E5510:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x00DC01C8
#data 0x012C00C0
#data 0x0000022a

#align4
loc_8C0E5524:
#data bank12.loc_8c129560

loc_8C0E5528:
#data bank12.loc_8c1294C8

loc_8C0E552C:
#data bank03.loc_8c034C38

loc_8C0E5530:
#data bank04.loc_8c0450C0

loc_8C0E5534:
#data bank03.loc_8c034D8c
#data 0x7FF84F22
#data 0xE601D350
#data 0x1F512F42
#data 0x430BE503
#data 0x2008E400
#data 0x64038D11
#data 0xE026938d
#data 0x71346143
#data 0xE0200435
#data 0xD34952F1
#data 0x62F20424
#data 0x430B7234
#data 0xD147E00c
#data 0x63F21414
#data 0x7F081436
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0E557A:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0E568C,pc),r0 ; r0 set to 0x8C15F054
extu.b r3,r3
mov.l @(0x18,r14),r5
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0E5590:
mov r4,r3
mov.l @(loc_8C0E5690,pc),r1 ; r1 set to 0x8C15F074
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0E55A2:
mov.w @(loc_8C0E5670,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.w @(loc_8C0E5672,pc),r0 ; r0 set to 0xC0
add r4,r1 ; r1 ??? bc r4 is ???	
mov.w @(loc_8C0E5670,pc),r2 ; r2 set to 0xDc
mov.l @(loc_8C0E5694,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0E5674,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E5676,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E5684,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x00,r3 ; r3 set to 0x00
mov r3,r6 ; r6 set to 0x00
mov 0x17,r5 ; r5 set to 0x17
mov.b r2,@(r0,r4) 	
mov.b @(0x04,r4),r0 	
add 0x01,r0 ; r0 set to 0x25
mov.b r0,@(0x04,r4) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0E5698,pc),r3 ; r3 set to 0x8C034E8c
jmp @r3
lds.l @r15+,pr 	

loc_8C0E5608:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.w @(loc_8C0E5678,pc),r3 ; r3 set to 0x2A4
mov r4,r14
add r5,r3 ; r3 ??? bc r5 is ???	
mov.l r3,@r15
mov.b @(0x05,r14),r0 	
tst r0,r0
bf/s loc_8C0E5644
mov 0x00,r13 ; r13 set to 0x00
mov.w @(loc_8C0E567A,pc),r0 ; r0 set to 0x1D0
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x0B,r0 	
bf loc_8C0E5664
mov.l @(loc_8C0E569C,pc),r2 ; r2 set to 0x8C034DEe
jsr @r2
mov r14,r4
mov.w @(loc_8C0E567C,pc),r0 ; r0 set to 0x141
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8C0E56B6
mov.b @(0x05,r14),r0 	
add 0x01,r0 ; r0 set to 0x142
mov.b r0,@(0x05,r14) 	
mov.w @(loc_8C0E567C,pc),r0 ; r0 set to 0x141
bra loc_8C0E56B6
mov.b r13,@(r0,r14) 	

loc_8C0E5644:
mov 0x24,r0 ; r0 set to 0x24
mov.l @(loc_8C0E5684,pc),r3 ; r3 set to 0x8C1294C8
mov 0x07,r2 ; r2 set to 0x07
mov r14,r1
mov.b r2,@(r0,r14) 	
mov r5,r2 ; r2 ??? bc r5 is ???	
add 0x34,r2
add 0x34,r1
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(loc_8C0E569C,pc),r2 ; r2 set to 0x8C034DEe
jsr @r2
mov r14,r4
exts.b r0,r0 ; r0 ??	
cmp/pz r0
bt loc_8C0E56A0

loc_8C0E5664:
mov 0x02,r0 ; r0 set to 0x02, r0 set to 0x02
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0E5674,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
bra loc_8C0E56B6
mov.b r13,@(r0,r14) 	
#data 0x2D00

loc_8C0E5670:
#data 0x00Dc

loc_8C0E5672:
#data 0x00C0

loc_8C0E5674:
#data 0x012c

loc_8C0E5676:
#data 0x01A3

loc_8C0E5678:
#data 0x02A4

loc_8C0E567A:
#data 0x01D0

loc_8C0E567C:
#data 0x0141
#data 0x0000

#align4
loc_8C0E5680:
#data bank04.loc_8c044F12

loc_8C0E5684:
#data bank12.loc_8c1294C8

loc_8C0E5688:
#data loc_8c0e557a

loc_8C0E568C:
#data bank15.loc_8c15F054

loc_8C0E5690:
#data bank15.loc_8c15F074

loc_8C0E5694:
#data bank12.loc_8c129560

loc_8C0E5698:
#data bank03.loc_8c034e8c

loc_8C0E569C:
#data bank03.loc_8c034dee

loc_8C0E56A0:
#data 0x02EC90Ac
#data 0x89062228
#data 0x80E4E002
#data 0x90A6E201
#data 0x63F20ED4
#data 0x2320


loc_8C0E56B6:
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E56C0:
mov r4,r3
mov.l @(loc_8C0E5808,pc),r1 ; r1 set to 0x8C15F080
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0E56D2:
mov.w @(loc_8C0E5800,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.w @(loc_8C0E5802,pc),r0 ; r0 set to 0xC0
add r4,r1 ; r1 ??? bc r4 is ???	
mov.w @(loc_8C0E5800,pc),r2 ; r2 set to 0xDc
mov.l @(loc_8C0E580C,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0E57FE,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E5804,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E5810,pc),r3 ; r3 set to 0x8C1294C8
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
mov.l @(loc_8C0E5810,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(loc_8C0E5814,pc),r2 ; r2 set to 0x8C034E8c
mov 0x17,r5 ; r5 set to 0x17
mov 0x01,r6 ; r6 set to 0x01
jmp @r2
lds.l @r15+,pr 	

loc_8C0E5746:
#data 0x2FE6
#data 0xD3334F22
#data 0x6E43430b
#data 0x4011600e
#data 0xE0028904
#data 0xE30080E4
#data 0x0E34904f

#align4
loc_8C0E5760:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0E5766:
mov r4,r3
mov.l @(loc_8C0E581C,pc),r1 ; r1 set to 0x8C15F08c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0E5778:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0E5800,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.w @(loc_8C0E5800,pc),r2 ; r2 set to 0xDc
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0E5802,pc),r0 ; r0 set to 0xC0
mov.l @(loc_8C0E580C,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0E57FE,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E5804,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E5810,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov.b r2,@(r0,r14) 	
mov 0xFE,r2 ; r2 set to 0xFFFFFFFe
mov.b @(0x04,r14),r0 	
add 0x01,r0 ; r0 set to 0x25
mov.b r0,@(0x04,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r3 ; r3 ??? bc r5 is ???	
mov.b r3,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r2,@(r0,r14) 	
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8C0E57FE,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
add 0x04,r0 ; r0 set to 0x130
mov.w @(r0,r5),r2 ; r2 ??? bc r5 is ???	
mov.w r2,@(r0,r14) 	
bsr loc_8C0E58B2
mov r14,r4
lds.l @r15+,pr 	
mov.l @(loc_8C0E5814,pc),r2 ; r2 set to 0x8C034E8c
mov r14,r4
mov 0x02,r6 ; r6 set to 0x02
mov 0x17,r5 ; r5 set to 0x17
jmp @r2
mov.l @r15+,r14
#data 0x0141

loc_8C0E57FE:
#data 0x012c

loc_8C0E5800:
#data 0x00Dc

loc_8C0E5802:
#data 0x00C0

loc_8C0E5804:
#data 0x01A3
#data 0x0000

#align4
loc_8C0E5808:
#data bank15.loc_8c15F080

loc_8C0E580C:
#data bank12.loc_8c129560

loc_8C0E5810:
#data bank12.loc_8c1294C8

loc_8C0E5814:
#data bank03.loc_8c034e8c

loc_8C0E5818:
#data bank03.loc_8c034dee

loc_8C0E581C:
#data bank15.loc_8c15F08c

loc_8C0E5820:
#data 0xE0242FE6
#data 0x6D532FD6
#data 0xE2FE6E43
#data 0x03DC4F22
#data 0xE0310E34
#data 0x907A0E24
#data 0x0E3503Dd
#data 0x430BD340
#data 0x84E564E3
#data 0x8B0F2008
#data 0x03DC9072
#data 0x8D062338
#data 0x84E565D3
#data 0x7001E301
#data 0x906A80E5
#data 0x0E34

loc_8C0E585E:
#data 0x4F26
#data 0x6DF664E3
#data 0x6EF6A025

#align4
loc_8C0E5868:
#data 0xB02265D3
#data 0x84D564E3
#data 0x8801600c
#data 0x905D8B09
#data 0x600C00Dc
#data 0x8B04880f
#data 0x00DC9059
#data 0x8802600c
#data 0x890f

loc_8C0E588A:
#data 0xE002
#data 0xE30080E4
#data 0x0E34904f
#data 0x904FE301
#data 0x904804De
#data 0x223A024d
#data 0x904A0425
#data 0x213A014c
#data 0x0414

loc_8C0E58AA:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0E58B2:
#data 0x9041
#data 0x065ED323
#data 0x600C8461
#data 0x67034000
#data 0x373C4700
#data 0xC7206275
#data 0xC720F208
#data 0x6271425a
#data 0xF32DF108
#data 0x9030425a
#data 0xF43C025c
#data 0xF422F32d
#data 0xF53C2228
#data 0xF5128F01
#data 0xF44d

loc_8C0E58EA:
#data 0xE034
#data 0xF340F366
#data 0xE038F437
#data 0xF350F366
#data 0xF437000b
;-------------------------------------------------------------------------------

#align4
loc_8C0E58FC:
#data 0x2FE6901a
#data 0x005C6E43
#data 0x600C941a
#data 0x8F038815
#data 0x8447345c
#data 0x89044011

#align4
loc_8C0E5914:
#data 0x80E4E002
#data 0x900AE300
#data 0x0E34

loc_8C0E591E:
#data 0x84E4
#data 0xD10B64E3
#data 0x4008600c
#data 0x432B031e
#data 0x01306EF6
#data 0x012C0141
#data 0x01580159
#data 0x01D201C8
#data 0x000002A4

#align4
loc_8C0E5940:
#data bank03.loc_8c034dee

loc_8C0E5944:
#data bank15.loc_8c15EF00
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0E5950:
#data bank15.loc_8c15F098


loc_8C0E5954:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.w @(loc_8C0E5A74,pc),r3 ; r3 set to 0x2A4
mov r5,r13
mov.w @(loc_8C0E5A76,pc),r1 ; r1 set to 0xDc
mov r4,r14
add r13,r3 ; r3 ??? bc r13 is ???	
mov.w @(loc_8C0E5A78,pc),r0 ; r0 set to 0xC0
mov.l r3,@r15
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0E5A80,pc),r3 ; r3 set to 0x8C129560
mov.w @(loc_8C0E5A76,pc),r2 ; r2 set to 0xDc
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0E5A7A,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E5A7C,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E5A84,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov r14,r1
mov.b @(r0,r13),r2
mov 0x07,r3 ; r3 set to 0x07
add 0x34,r1
mov.b r2,@(r0,r14) 	
mov r13,r2
mov.b @(0x04,r14),r0 	
add 0x34,r2
add 0x01,r0 ; r0 set to 0x25
mov.b r0,@(0x04,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14) 	
mov.l @(loc_8C0E5A84,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.w @(loc_8C0E5A7E,pc),r10 ; r10 set to 0x2D00
mov 0x31,r0 ; r0 set to 0x31
mov 0x7F,r2 ; r2 set to 0x7f
mov r4,r12 ; r12 set to 0x01
mov 0x00,r9 ; r9 set to 0x00
mov.b r2,@(r0,r14) 	
tst r4,r4
mov 0x02,r8 ; r8 set to 0x02
bt/s loc_8C0E5A44
mov 0x11,r11 ; r11 set to 0x11

loc_8C0E59EC:
mov.l @(loc_8C0E5A88,pc),r2 ; r2 set to 0x8C044F12
mov 0x03,r5 ; r5 set to 0x03
mov 0x02,r6 ; r6 set to 0x02
jsr @r2
mov r14,r4 ; r4 ??? bc r14 is ???	
tst r0,r0
bt/s loc_8C0E5A2c
mov r0,r4 ; r4 set to 0x31
mov 0x26,r0 ; r0 set to 0x26
mov r14,r2 ; r2 ??? bc r14 is ???	
mov.w r10,@(r0,r4)  ; r4 ??	
mov 0x20,r0 ; r0 set to 0x20
mov 0x04,r3 ; r3 set to 0x04
mov r4,r1
mov.b r3,@(r0,r4) 	
mov 0x21,r0 ; r0 set to 0x21
mov.l @(loc_8C0E5A84,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r2
add 0x34,r1
mov.b r12,@(r0,r4) 	
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x31,r0 ; r0 set to 0x31
mov r12,r2 ; r2 set to 0x01
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
sub r3,r2 ; r2 ??? bc r3 is ???	
mov.l @(loc_8C0E5A8C,pc),r3 ; r3 set to 0x8C0E557a
mov.b r2,@(r0,r4) 	
mov.l r3,@(0x10,r4) 	
mov.l r13,@(0x18,r4) 	
bra loc_8C0E5A3e
mov.l r14,@(0x14,r4) 	

loc_8C0E5A2C:
mov r8,r0
nop 	
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0E5A7A,pc),r0 ; r0 set to 0x12c
mov.b r9,@(r0,r14) 	
mov 0xFF,r0 ; r0 set to 0xFFFFFFFf
mov.l @r15,r3
bra loc_8C0E5A60
mov.b r0,@(0x07,r3) 	

loc_8C0E5A3E:
#data 0x7C01
#data 0x8BD33CB3


loc_8C0E5A44:
mov r14,r4
mov 0x17,r5 ; r5 set to 0x17
mov 0x06,r6 ; r6 set to 0x06
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0E5A90,pc),r2 ; r2 set to 0x8C034E8c
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_8C0E5A60:
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

loc_8C0E5A74:
#data 0x02A4

loc_8C0E5A76:
#data 0x00Dc

loc_8C0E5A78:
#data 0x00C0

loc_8C0E5A7A:
#data 0x012c

loc_8C0E5A7C:
#data 0x01A3

loc_8C0E5A7E:
#data 0x2D00

#align4
loc_8C0E5A80:
#data bank12.loc_8c129560

loc_8C0E5A84:
#data bank12.loc_8c1294C8

loc_8C0E5A88:
#data bank04.loc_8c044F12

loc_8C0E5A8C:
#data loc_8c0e557a

loc_8C0E5A90:
#data bank03.loc_8c034e8c

loc_8C0E5A94:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x4F222FC6
#data 0xD34B9C90
#data 0x3CDC430b
#data 0xF4D6E038
#data 0x84C7F3E6
#data 0x8F062008
#data 0xC747F431
#data 0xF345F308
#data 0xE0018905
#data 0x80C7

loc_8C0E5AC2:
#data 0xC745
#data 0xF545F508
#data 0x8B05

loc_8C0E5ACA:
#data 0xC744
#data 0xE06CF308
#data 0xA004F433
#data 0xFE47

loc_8C0E5AD6:
#data 0xE038
#data 0xF350F3E6
#data 0xFD37

loc_8C0E5ADE:
#data 0x4F26
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0E5AE8:
#data 0x2FE6906d
#data 0x005C6E43
#data 0x600C9468
#data 0x8F038815
#data 0x8447345c
#data 0x89044011

#align4
loc_8C0E5B00:
#data 0x80E4E002
#data 0x905FE300
#data 0x0E34

loc_8C0E5B0A:
#data 0x84E4
#data 0xD13464E3
#data 0x4008600c
#data 0x432B031e
#data 0x6EF6


loc_8C0E5B1A:
sts.l pr,@-r15
add 0xFC,r15
mov.w @(loc_8C0E5BCA,pc),r1 ; r1 set to 0xDc
mov.w @(loc_8C0E5BCC,pc),r0 ; r0 set to 0xC0
mov.l @(loc_8C0E5BE4,pc),r3 ; r3 set to 0x8C129560
add r4,r1 ; r1 ??? bc r4 is ???	
mov.w @(loc_8C0E5BCA,pc),r2 ; r2 set to 0xDc
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0E5BC8,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E5BCE,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E5BE8,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x07,r3 ; r3 set to 0x07
mov 0x07,r6 ; r6 set to 0x07
mov.b r2,@(r0,r4) 	
mov.b @(0x04,r4),r0 	
add 0x01,r0 ; r0 set to 0x25
mov.b r0,@(0x04,r4) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r4) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
mov 0x17,r5 ; r5 set to 0x17
fmov.s fr3,@(r0,r4) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r4),r3
mov.l @(loc_8C0E5BEC,pc),r0 ; r0 set to 0x8C15EFF0
extu.b r3,r3
mov.b @(r0,r3),r2
extu.b r2,r2
mov.l r2,@r15
mov r2,r7
add 0x04,r15
mov.l @(loc_8C0E5BF0,pc),r3 ; r3 set to 0x8C034F54
jmp @r3
lds.l @r15+,pr 	

loc_8C0E5B9A:
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x6C,r0 ; r0 set to 0x6c
mov.l @(0x14,r4),r5
mov.l @(0x08,r4),r6
fmov.s @(r0,r5),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r6),fr2
fadd fr3,fr2
rts 	
fmov.s fr2,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0E5BB2:
mov r4,r3
mov.l @(loc_8C0E5BF4,pc),r1 ; r1 set to 0x8C15F0B0
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x015902A4

loc_8C0E5BC8:
#data 0x012c

loc_8C0E5BCA:
#data 0x00Dc

loc_8C0E5BCC:
#data 0x00C0

loc_8C0E5BCE:
#data 0x01A3

#align4
loc_8C0E5BD0:
#data bank03.loc_8c034dee
#data 0x439A4924
#data 0x43BC9249
#data 0x41800000

#align4
loc_8C0E5BE0:
#data bank15.loc_8c15F0A4

loc_8C0E5BE4:
#data bank12.loc_8c129560

loc_8C0E5BE8:
#data bank12.loc_8c1294C8

loc_8C0E5BEC:
#data bank15.loc_8c15EFF0

loc_8C0E5BF0:
#data bank03.loc_8c034F54

loc_8C0E5BF4:
#data bank15.loc_8c15F0B0


loc_8C0E5BF8:
mov.w @(loc_8C0E5D30,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.w @(loc_8C0E5D32,pc),r0 ; r0 set to 0xC0
add r4,r1 ; r1 ??? bc r4 is ???	
mov.w @(loc_8C0E5D30,pc),r2 ; r2 set to 0xDc
mov.l @(loc_8C0E5D3C,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0E5D34,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E5D36,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E5D40,pc),r3 ; r3 set to 0x8C1294C8
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
mov.l @(loc_8C0E5D40,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(loc_8C0E5D44,pc),r3 ; r3 set to 0x8C034E8c
mov 0x08,r0 ; r0 set to 0x08
mov 0x17,r5 ; r5 set to 0x17
mov.w r0,@(0x1C,r4) 	
mov r0,r6 ; r6 set to 0x08
jmp @r3
lds.l @r15+,pr 	

#align4
loc_8C0E5C70:
#data 0x6E532FE6
#data 0x200884E5
#data 0x905D8B0a
#data 0x600C00Ec
#data 0x8B05881d
#data 0x70FF854e
#data 0x600F814e
#data 0x8B052008

#align4
loc_8C0E5C90:
#data 0x8044E002
#data 0x904DE300
#data 0x0434A004

#align4
loc_8C0E5C9C:
#data 0x64E3D32a
#data 0x6EF6432b

#align4
loc_8C0E5CA4:
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0E5CA8:
mov r4,r3
mov.l @(loc_8C0E5D4C,pc),r1 ; r1 set to 0x8C15F0Bc
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0E5CBA:
mov.w @(loc_8C0E5D30,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.w @(loc_8C0E5D32,pc),r0 ; r0 set to 0xC0
add r4,r1 ; r1 ??? bc r4 is ???	
mov.w @(loc_8C0E5D30,pc),r2 ; r2 set to 0xDc
mov.l @(loc_8C0E5D3C,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0E5D34,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E5D36,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E5D40,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov r4,r1
mov.b @(r0,r5),r2
mov 0x0C,r3 ; r3 set to 0x0c
add 0x34,r1
mov.b r2,@(r0,r4) 	
mov r5,r2
mov.b @(0x04,r4),r0 	
add 0x01,r0 ; r0 set to 0x25
mov.b r0,@(0x04,r4) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r4) 	
mov r3,r0 ; r0 set to 0x0c
nop 	
mov.l @(loc_8C0E5D40,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
add 0x34,r2
mov.l @(loc_8C0E5D44,pc),r2 ; r2 set to 0x8C034E8c
mov 0x17,r5 ; r5 set to 0x17
mov 0x09,r6 ; r6 set to 0x09
jmp @r2
lds.l @r15+,pr 	

loc_8C0E5D30:
#data 0x00Dc

loc_8C0E5D32:
#data 0x00C0

loc_8C0E5D34:
#data 0x012c

loc_8C0E5D36:
#data 0x01A3
#data 0x000001D0

#align4
loc_8C0E5D3C:
#data bank12.loc_8c129560

loc_8C0E5D40:
#data bank12.loc_8c1294C8

loc_8C0E5D44:
#data bank03.loc_8c034e8c

loc_8C0E5D48:
#data bank03.loc_8c034dee

loc_8C0E5D4C:
#data bank15.loc_8c15F0Bc

loc_8C0E5D50:
#data 0x2FD62FE6
#data 0x4F226D53
#data 0x200884D5
#data 0x6E438F0b
#data 0x00DC9089
#data 0x881D600c
#data 0xD3468B05
#data 0x64E3430b
#data 0x4011600e
#data 0x8905

loc_8C0E5D76:
#data 0xE002
#data 0xE30080E4
#data 0xA017907c
#data 0x0E34

loc_8C0E5D82:
#data 0x62D3
#data 0x61E3D340
#data 0x71347234
#data 0xE00C430b
#data 0x02EC9073
#data 0x890B2228
#data 0xF408C73c
#data 0x03ED906e
#data 0x89012338
#data 0xF408C73a

#align4
loc_8C0E5DA8:
#data 0xF3E6E034
#data 0xFE37F340

#align4
loc_8C0E5DB0:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0E5DB8:
mov r4,r3
mov.l @(loc_8C0E5E94,pc),r1 ; r1 set to 0x8C15F0C8
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0E5DCA:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0E5E7E,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.w @(loc_8C0E5E7E,pc),r2 ; r2 set to 0xDc
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0E5E80,pc),r0 ; r0 set to 0xC0
mov.l @(loc_8C0E5E98,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0E5E78,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E5E82,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E5E88,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov.b r2,@(r0,r14) 	
mov.b @(0x04,r14),r0 	
add 0x01,r0 ; r0 set to 0x25
mov.b r0,@(0x04,r14) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3
mov.l @(loc_8C0E5E9C,pc),r0 ; r0 set to 0x8C15F004
extu.b r3,r3
shll r3
mov.w @(r0,r3),r3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r5),fr2
mova @(loc_8C0E5EA0,pc),r0  ; r0 set to 0x8C0E5EA0
lds r3,fpul 	
mov 0x17,r5 ; r5 set to 0x17
fmov.s @r0,fr0 ; r0 ??	
mov 0x38,r0 ; r0 set to 0x38
mov.l @(loc_8C0E5EA8,pc),r3 ; r3 set to 0x8C034E8c
float fpul,fr3
fmac fr0,fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r6
mov.l @(loc_8C0E5EA4,pc),r0 ; r0 set to 0x8C15F024
extu.b r6,r6
mov.b @(r0,r6),r6
add 0x0A,r6
jsr @r3
mov r14,r4
mov.w @(loc_8C0E5E7A,pc),r0 ; r0 set to 0x141
mov.b @(r0,r14),r2
mov.l @(loc_8C0E5EAC,pc),r0 ; r0 set to 0x8C15F034
shar r2
shll2 r2
fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???	
mov 0x24,r0 ; r0 set to 0x24
ftrc fr3,fpul 	
sts fpul,r3
mov.b r3,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x01D0

loc_8C0E5E78:
#data 0x012c

loc_8C0E5E7A:
#data 0x0141
#data 0x0130

loc_8C0E5E7E:
#data 0x00Dc

loc_8C0E5E80:
#data 0x00C0

loc_8C0E5E82:
#data 0x01A3

#align4
loc_8C0E5E84:
#data bank03.loc_8c034dee

loc_8C0E5E88:
#data bank12.loc_8c1294C8
#data 0xC1555555
#data 0x41555555

#align4
loc_8C0E5E94:
#data bank15.loc_8c15F0C8

loc_8C0E5E98:
#data bank12.loc_8c129560

loc_8C0E5E9C:
#data bank15.loc_8c15F004

loc_8C0E5EA0:
#data 0x40092492

#align4
loc_8C0E5EA4:
#data bank15.loc_8c15F024

loc_8C0E5EA8:
#data bank03.loc_8c034e8c

loc_8C0E5EAC:
#data bank15.loc_8c15F034

loc_8C0E5EB0:
#data 0x84552FE6
#data 0x8F052008
#data 0x907E6E43
#data 0x600C005c
#data 0x8906881d

#align4
loc_8C0E5EC4:
#data 0x80E4E002
#data 0x9077E300
#data 0x000B0E34
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0E5ED2:
#data 0x84E5
#data 0xD13C64E3
#data 0x4008600c
#data 0x432B031e
#data 0x000B6EF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0E5EE6:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.w @(loc_8C0E5FBE,pc),r3 ; r3 set to 0x2A4
mov r4,r14
mov.l @(loc_8C0E5FCC,pc),r2 ; r2 set to 0x8C034DEe
add r5,r3 ; r3 ??? bc r5 is ???	
mov.l r3,@r15
jsr @r2
mov r14,r4
mov.w @(loc_8C0E5FC0,pc),r0 ; r0 set to 0x141
mov.b @(r0,r14),r3
mov.l @(loc_8C0E5FD0,pc),r0 ; r0 set to 0x8C15F034
shar r3
shll2 r3
fmov.s @(r0,r3),fr3
mov 0x24,r0 ; r0 set to 0x24
ftrc fr3,fpul 	
sts fpul,r2
mov.b r2,@(r0,r14) 	
mov.l @r15,r3
mov.b @(0x08,r3),r0 	
tst r0,r0
bt loc_8C0E5F22
mov.b @(0x05,r14),r0 	
add 0x01,r0 ; r0 set to 0x25
mov.b r0,@(0x05,r14) 	
mov 0x0A,r0 ; r0 set to 0x0a
bra loc_8C0E5F2e
mov.w r0,@(0x1C,r14) 	

loc_8C0E5F22:
mov.w @(loc_8C0E5FC2,pc),r0 ; r0 set to 0x14b
mov.b @(r0,r14),r3
mov.w @(loc_8C0E5FBC,pc),r0 ; r0 set to 0x12c
tst r3,r3
movt r2
mov.b r2,@(r0,r14) 	

loc_8C0E5F2E:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E5F36:
#data 0x2FE6
#data 0xD3244F22
#data 0x6E43430b
#data 0x02EC903e
#data 0x4221D022
#data 0xF3264208
#data 0xF33DE024
#data 0x0E34035a
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x8B022008
#data 0x700184E5
#data 0x80E5

loc_8C0E5F66:
#data 0x902c
#data 0x902702Ec
#data 0x03292228
#data 0x4F260E34
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0E5F78:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0E5FCC,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r4,r14
mov.w @(loc_8C0E5FC4,pc),r0 ; r0 set to 0x140
mov.b @(r0,r14),r2
tst r2,r2
bt loc_8C0E5F90
mov 0x02,r0 ; r0 set to 0x02
bra loc_8C0E5F9a
mov.b r0,@(0x04,r14) 	

loc_8C0E5F90:
mov.l @(loc_8C0E5FD4,pc),r3 ; r3 set to 0x8C26823c
mov.l @r3,r0
mov.l @(0x1C,r0),r0
tst 0x01,r0 	
bt loc_8C0E5FA2

loc_8C0E5F9A:
mov.w @(loc_8C0E5FBC,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
bra loc_8C0E5FAe
mov.b r3,@(r0,r14) 	

loc_8C0E5FA2:
mov.w @(loc_8C0E5FC2,pc),r0 ; r0 set to 0x14b
mov.b @(r0,r14),r2
mov.w @(loc_8C0E5FBC,pc),r0 ; r0 set to 0x12c
tst r2,r2
movt r1
mov.b r1,@(r0,r14) 	

loc_8C0E5FAE:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E5FB4:
mov.l @(loc_8C0E5FD8,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x01D0

loc_8C0E5FBC:
#data 0x012c

loc_8C0E5FBE:
#data 0x02A4

loc_8C0E5FC0:
#data 0x0141

loc_8C0E5FC2:
#data 0x014b

loc_8C0E5FC4:
#data 0x0140
#data 0x0000

#align4
loc_8C0E5FC8:
#data bank15.loc_8c15F0D4

loc_8C0E5FCC:
#data bank03.loc_8c034dee

loc_8C0E5FD0:
#data bank15.loc_8c15F034

loc_8C0E5FD4:
#data 0x8C26823c

#align4
loc_8C0E5FD8:
#data bank04.loc_8c0450C0

loc_8C0E5FDC:
#data 0x4F222FE6
#data 0x6E437FF8
#data 0x00096053
#data 0xE503D34f
#data 0x2F6080F4
#data 0x430BE600
#data 0x20086463
#data 0x64038D14
#data 0xE026928d
#data 0xE120D34a
#data 0x9589314c
#data 0x04251434
#data 0x14E6354c
#data 0x804184E1
#data 0x210084F4
#data 0x63F0E021
#data 0x907E0434
#data 0x253103Ed

#align4
loc_8C0E6024:
#data 0x00096043
#data 0x4F267F08
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0E6030:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0E6130,pc),r0 ; r0 set to 0x8C15F0E0
extu.b r3,r3
mov.l @(0x18,r14),r5
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0E6046:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0E6120,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0E6120,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0E6134,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0E6122,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0E6124,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E6126,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E6138,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
fldi0 fr4
mov.b @(r0,r13),r2
mov 0x12,r5 ; r5 set to 0x12
mov.l @(loc_8C0E613C,pc),r3 ; r3 set to 0x8C034E8c
mov 0x04,r6 ; r6 set to 0x04
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0E6124,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r4,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???	
mov r13,r5 ; r5 ??? bc r13 is ???	
mov 0x3C,r0 ; r0 set to 0x3c
mov.w r0,@(0x1C,r14) 	
mov r14,r4
lds.l @r15+,pr 	
mov.l @r15+,r13
bra loc_8C0E62B4
mov.l @r15+,r14

loc_8C0E60EA:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0E6140,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r4,r14
mov.w @(0x1C,r14),r0 	
add 0xFF,r0
mov.w r0,@(0x1C,r14) 	
exts.w r0,r0
tst r0,r0
bf loc_8C0E6114
mov.b @(0x05,r14),r0 	
mov r14,r4
mov.l @(loc_8C0E613C,pc),r3 ; r3 set to 0x8C034E8c
mov 0x05,r6 ; r6 set to 0x05
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov 0x12,r5 ; r5 set to 0x12
lds.l @r15+,pr 	
jmp @r3
mov.l @r15+,r14

loc_8C0E6114:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x2E00
#data 0x015800Cc

loc_8C0E6120:
#data 0x00Dc

loc_8C0E6122:
#data 0x00C0

loc_8C0E6124:
#data 0x012c

loc_8C0E6126:
#data 0x01A3

#align4
loc_8C0E6128:
#data bank04.loc_8c044F12

loc_8C0E612C:
#data loc_8c0e6030

loc_8C0E6130:
#data bank15.loc_8c15F0E0

loc_8C0E6134:
#data bank12.loc_8c129560

loc_8C0E6138:
#data bank12.loc_8c1294C8

loc_8C0E613C:
#data bank03.loc_8c034e8c

loc_8C0E6140:
#data bank03.loc_8c034dee


loc_8C0E6144:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0E62A0,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt loc_8C0E6174
mov.b @(0x05,r14),r0 	
mov r14,r4
mov.l @(loc_8C0E62A8,pc),r3 ; r3 set to 0x8C034E8c
mov 0x06,r6 ; r6 set to 0x06
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov 0x10,r0 ; r0 set to 0x10
mov.w r0,@(0x1C,r14) 	
mova @(loc_8C0E62A4,pc),r0  ; r0 set to 0x8C0E62A4
fmov.s @r0,fr3 ; r3 ??	
mov 0x60,r0 ; r0 set to 0x60
mov 0x12,r5 ; r5 set to 0x12
fmov.s fr3,@(r0,r14) 	
lds.l @r15+,pr 	
jmp @r3
mov.l @r15+,r14

loc_8C0E6174:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E617A:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov 0x60,r1 ; r1 set to 0x60
mov r4,r14
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0E62A0,pc),r3 ; r3 set to 0x8C034DEe
mov 0x38,r0 ; r0 set to 0x38
mov.l r5,@r15
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
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
mov.w @(0x1C,r14),r0 	
add 0xFF,r0 ; r0 set to 0x5f
mov.w r0,@(0x1C,r14) 	
exts.w r0,r0 ; r0 ??	
tst r0,r0
bf loc_8C0E61D6
mov.b @(0x05,r14),r0 	
mov 0x12,r5 ; r5 set to 0x12
mov r14,r4
mov 0x07,r6 ; r6 set to 0x07
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov.w @(loc_8C0E629A,pc),r0 ; r0 set to 0x41c
mov.l @r15,r3
fmov.s @(r0,r3),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14) 	
mov 0x10,r0 ; r0 set to 0x10
mov.w r0,@(0x1C,r14) 	
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0E62A8,pc),r3 ; r3 set to 0x8C034E8c
jmp @r3
mov.l @r15+,r14

loc_8C0E61D6:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E61DE:
#data 0x2FE6
#data 0x7FF84F22
#data 0x6E43E160
#data 0x925731Ec
#data 0x6353E038
#data 0xD32B323c
#data 0x1F212F52
#data 0xF318F2E6
#data 0x31ECE16c
#data 0xFE27F230
#data 0xF2E6E060
#data 0xF230F318
#data 0x430BFE27
#data 0x85EE64E3
#data 0x81EE70Ff
#data 0x2008600f
#data 0x84E58B19
#data 0xE608E512
#data 0x80E57001
#data 0x63F29037
#data 0xE038F336
#data 0xFE37D31d
#data 0x81EEE01e
#data 0xF308C71c
#data 0xFE37E060
#data 0xF308C71b
#data 0xFE37E06c
#data 0x64E3430b
#data 0xE00152F1
#data 0x8021

loc_8C0E6252:
#data 0x7F08
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0E625A:
#data 0x2FE6
#data 0xE1606E43
#data 0x31ECD30f
#data 0x4F22E038
#data 0xE16CF318
#data 0x31ECF2E6
#data 0xFE27F230
#data 0xF2E6E060
#data 0xF230F318
#data 0x430BFE27
#data 0x85EE64E3
#data 0x81EE70Ff
#data 0x2008600f
#data 0x84E48B02
#data 0x80E47001

#align4
loc_8C0E6294:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0E629A:
#data 0x041c
#data 0x000002A4

#align4
loc_8C0E62A0:
#data bank03.loc_8c034dee

loc_8C0E62A4:
#data 0x40092492

#align4
loc_8C0E62A8:
#data bank03.loc_8c034e8c
#data 0x40892492
#data 0x3F092492


loc_8C0E62B4:
mov 0x24,r0 ; r0 set to 0x24
mov.l r14,@-r15
mov.b @(r0,r5),r3
mov r4,r14
mov.l @(loc_8C0E63F0,pc),r1 ; r1 set to 0x8C15F100
mov r14,r4
mov.b r3,@(r0,r14) 	
mov.b @(0x05,r14),r0 	
extu.b r0,r0 ; r0 set to 0x24
shll2 r0 ; r0 set to 0x90
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0E62CE:
mov r4,r3
mov.l @(loc_8C0E63F4,pc),r1 ; r1 set to 0x8C15F114
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0E62E0:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0E63E2,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0E63E2,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0E63F8,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0E63E4,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0E63E6,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E63E8,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E63FC,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
fldi0 fr4
mov.b @(r0,r13),r2
mov 0x02,r3 ; r3 set to 0x02
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0E63E6,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0E6400,pc),r0  ; r0 set to 0x8C0E6400
fmov.s @r0,fr4 ; r4 ??	
mov.w @(loc_8C0E63EA,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bf loc_8C0E6380
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r14),fr3
bra loc_8C0E6386
fadd fr4,fr3

#align4
loc_8C0E6380:
#data 0xF3E6E034
#data 0xF341

loc_8C0E6386:
#data 0xD31f
#data 0xFE37E512
#data 0x430BE60a
#data 0x65D364E3
#data 0x81EEE03c
#data 0x4F2664E3
#data 0x6EF66DF6

#align4
loc_8C0E63A0:
#data 0x4F222FE6
#data 0x93217FFc
#data 0x6E43E024
#data 0x2F32335c
#data 0xD315025c
#data 0x430B0E24
#data 0x62F264E3
#data 0x20088421
#data 0x84E48902
#data 0x80E47001

#align4
loc_8C0E63C8:
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0E63D0:
mov r4,r3
mov.l @(loc_8C0E640C,pc),r1 ; r1 set to 0x8C15F124
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0E63E2:
#data 0x00Dc

loc_8C0E63E4:
#data 0x00C0

loc_8C0E63E6:
#data 0x012c

loc_8C0E63E8:
#data 0x01A3

loc_8C0E63EA:
#data 0x0130
#data 0x000002A4

#align4
loc_8C0E63F0:
#data bank15.loc_8c15F100

loc_8C0E63F4:
#data bank15.loc_8c15F114

loc_8C0E63F8:
#data bank12.loc_8c129560

loc_8C0E63FC:
#data bank12.loc_8c1294C8

loc_8C0E6400:
#data 0x42055555

#align4
loc_8C0E6404:
#data bank03.loc_8c034e8c

loc_8C0E6408:
#data bank03.loc_8c034dee

loc_8C0E640C:
#data bank15.loc_8c15F124


loc_8C0E6410:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0E657E,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0E657E,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0E6590,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0E6580,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0E6582,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E6584,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E6594,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
fldi0 fr4
mov.b @(r0,r13),r2
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov 0x17,r5 ; r5 set to 0x17
mov.b r2,@(r0,r14) 	
mov 0x07,r6 ; r6 set to 0x07
mov.w @(loc_8C0E6582,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6c
mov.l @(loc_8C0E6598,pc),r3 ; r3 set to 0x8C034E8c
fmov.s fr4,@(r0,r14) 	
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???	
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0E649E:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.w @(loc_8C0E6586,pc),r3 ; r3 set to 0x2A4, r3 set to 0x2A4
mov r5,r13
mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
mov r4,r14
add r13,r3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???	
mov.w @(loc_8C0E6588,pc),r4 ; r4 set to 0xCC, r4 set to 0xCc
mov.l r3,@r15
mov.b @(r0,r13),r3
add r14,r4 ; r4 ??? bc r14 is ???, r4 ??? bc r14 is ???	
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0E658A,pc),r0 ; r0 set to 0x158, r0 set to 0x158
mov.w @r4,r3
mov.w @(r0,r13),r2
cmp/eq r3,r2
bt loc_8C0E64D8
mov.b @(0x04,r14),r0 	
mov r14,r4
mov r13,r5
add 0x01,r0 ; r0 set to 0x159, r0 set to 0x159
mov.b r0,@(0x04,r14) 	
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r13
bra loc_8C0E6BEa
mov.l @r15+,r14

loc_8C0E64D8:
mov.l @(loc_8C0E659C,pc),r2 ; r2 set to 0x8C034DEe
jsr @r2
mov r14,r4
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0E65A0,pc),r5 ; r5 set to 0x8C15F134
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0E65A4,pc),r0  ; r0 set to 0x8C0E65A4
fmov.s @r0,fr4
mov.w @(loc_8C0E658C,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bf/s loc_8C0E651e
mov r5,r4 ; r4 set to 0x8C15F134
mov 0x21,r3 ; r3 set to 0x21
fmov fr4,fr0 ; r0 ??	
add r14,r3 ; r3 ??? bc r14 is ???	
mov.b @r3,r3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???	
extu.b r3,r3
shll r3
shll r3
add r3,r4 ; r4 ??? bc r3 is ???	
mov.w @r4,r3
lds r3,fpul 	
float fpul,fr3
bra loc_8C0E653a
fmac fr0,fr3,fr2

loc_8C0E651E:
#data 0xE221
#data 0x622032Ec
#data 0xF2E6E034
#data 0x4200622c
#data 0x342C4200
#data 0x435A6341
#data 0xF342F32d
#data 0xF231

loc_8C0E653A:
#data 0xE321
#data 0x33ECFE27
#data 0xE03862E3
#data 0x2F26320c
#data 0x633C6330
#data 0x43004300
#data 0x8551353c
#data 0x435A6303
#data 0xC71363F6
#data 0xF32DF008
#data 0xF23EF238
#data 0x62F2F32a
#data 0x23386320
#data 0x84E48902
#data 0x80E47001

#align4
loc_8C0E6574:
#data 0x4F267F04
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0E657E:
#data 0x00Dc

loc_8C0E6580:
#data 0x00C0

loc_8C0E6582:
#data 0x012c

loc_8C0E6584:
#data 0x01A3

loc_8C0E6586:
#data 0x02A4

loc_8C0E6588:
#data 0x00Cc

loc_8C0E658A:
#data 0x0158

loc_8C0E658C:
#data 0x0130
#data 0x0000

#align4
loc_8C0E6590:
#data bank12.loc_8c129560

loc_8C0E6594:
#data bank12.loc_8c1294C8

loc_8C0E6598:
#data bank03.loc_8c034e8c

loc_8C0E659C:
#data bank03.loc_8c034dee

loc_8C0E65A0:
#data bank15.loc_8c15F134

loc_8C0E65A4:
#data 0x3FD55555
#data 0x40092492


loc_8C0E65AC:
mov r4,r3
mov.l @(loc_8C0E6700,pc),r1 ; r1 set to 0x8C15F140
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0E65BE:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
add 0x5C,r4
mov.w @(loc_8C0E66EE,pc),r1 ; r1 set to 0xDc
mov r5,r13
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0E66EE,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0E6704,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0E66F0,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0E66F2,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E66F4,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E6708,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov 0x04,r3 ; r3 set to 0x04
mov 0x0F,r6 ; r6 set to 0x0f
mov.b r2,@(r0,r14) 	
mov 0x00,r2 ; r2 set to 0x00
mov.w @(loc_8C0E66F2,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov 0x17,r5 ; r5 set to 0x17
mov.w @(loc_8C0E66F6,pc),r0 ; r0 set to 0x158
mov.l @(loc_8C0E670C,pc),r3 ; r3 set to 0x8C034E8c
mov.b r2,@r4
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
mov.b r0,@(0x01,r4) 	
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0E6646:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.w @(loc_8C0E66F8,pc),r3 ; r3 set to 0xCC, r3 set to 0xCc
mov r4,r14
mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
mov r5,r13
add r14,r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
mov r4,r12
mov.l r3,@r15
add 0x5C,r12
mov.b @(r0,r13),r2 ; r2 ??? bc r13 is ???	
mov.l @(loc_8C0E6710,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
mov.b r2,@(r0,r14) 	
jsr @r3
mov r14,r4
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3C, r0 set to 0x3c
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0E66FA,pc),r0 ; r0 set to 0x201, r0 set to 0x201
mov.b @(r0,r13),r3
tst r3,r3
bf loc_8C0E669a
mov.b @(0x04,r14),r0 	
mov r14,r4
mov r13,r5
add 0x01,r0 ; r0 set to 0x202, r0 set to 0x202
mov.b r0,@(0x04,r14) 	
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r12
mov.l @r15+,r13
bra loc_8C0E6BEa
mov.l @r15+,r14

loc_8C0E669A:
mov.w @(loc_8C0E66F6,pc),r0 ; r0 set to 0x158
mov 0x00,r5 ; r5 set to 0x00
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
extu.b r0,r0
cmp/eq 0x11,r0 	
bf/s loc_8C0E66Ae
mov 0x01,r4 ; r4 set to 0x01
mov.w @(loc_8C0E66F2,pc),r0 ; r0 set to 0x12c
bra loc_8C0E66B2
mov.b r5,@(r0,r14) 	

loc_8C0E66AE:
mov.w @(loc_8C0E66F2,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	

loc_8C0E66B2:
mov.b @(0x05,r14),r0 	
tst r0,r0
bf loc_8C0E66Dc
mov.w @(loc_8C0E66FC,pc),r0 ; r0 set to 0x159, r0 set to 0x159
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???, r0 ??? bc r13 is ???	
extu.b r0,r0
cmp/eq 0x1A,r0 	
bt loc_8C0E6718
mov.l @(loc_8C0E6714,pc),r0 ; r0 set to 0x8C15F150, r0 set to 0x8C15F150
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
mov.l @(loc_8C0E670C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
mov.b r4,@r12
mov.b @r12,r6
extu.b r6,r6
mov.b @(r0,r6),r6
jsr @r3
mov r14,r4
mov.b @(0x05,r14),r0 	
add 0x01,r0 ; r0 set to 0x8C15F151, r0 set to 0x8C15F151
bra loc_8C0E6750
mov.b r0,@(0x05,r14) 	

loc_8C0E66DC:
mov.w @(loc_8C0E66FC,pc),r0 ; r0 set to 0x159
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
extu.b r0,r0
cmp/eq 0x1A,r0 	
bf loc_8C0E6750
mov r5,r0
nop 	
bra loc_8C0E6750
mov.b r0,@(0x05,r14) 	

loc_8C0E66EE:
#data 0x00Dc

loc_8C0E66F0:
#data 0x00C0

loc_8C0E66F2:
#data 0x012c

loc_8C0E66F4:
#data 0x01A3

loc_8C0E66F6:
#data 0x0158

loc_8C0E66F8:
#data 0x00Cc

loc_8C0E66FA:
#data 0x0201

loc_8C0E66FC:
#data 0x0159
#data 0x0000

#align4
loc_8C0E6700:
#data bank15.loc_8c15F140

loc_8C0E6704:
#data bank12.loc_8c129560

loc_8C0E6708:
#data bank12.loc_8c1294C8

loc_8C0E670C:
#data bank03.loc_8c034e8c

loc_8C0E6710:
#data bank03.loc_8c034dee

loc_8C0E6714:
#data bank15.loc_8c15F150

loc_8C0E6718:
#data 0x03DC909d
#data 0x89172338
#data 0x03DC62C0
#data 0x3320622c
#data 0x02DC8909
#data 0xD04EE517
#data 0x2C20D34e
#data 0x666C66C0
#data 0x430B066c
#data 0x64E3

loc_8C0E673E:
#data 0x63F2
#data 0x6131908a
#data 0x321002Dd
#data 0x90868902
#data 0x0E2502Dd


loc_8C0E6750:
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E675C:
mov r4,r3
mov.l @(loc_8C0E6870,pc),r1 ; r1 set to 0x8C15F158
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0E676E:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0E685C,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0E685C,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0E6874,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0E685E,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0E6860,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E6862,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E6878,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov 0x17,r5 ; r5 set to 0x17
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0E6860,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r4,@(r0,r14) 	
mov.w @(loc_8C0E6864,pc),r0 ; r0 set to 0x159
mov.b @(r0,r13),r3 ; r3 ??? bc r13 is ???	
mov 0x21,r0 ; r0 set to 0x21
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0E6856,pc),r0 ; r0 set to 0x141
mov.l @(loc_8C0E686C,pc),r3 ; r3 set to 0x8C034E8c
mov.b @(r0,r13),r6
mov.l @(loc_8C0E6868,pc),r0 ; r0 set to 0x8C15F150
mov.b @(r0,r6),r6
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???	
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0E67F6:
mov.l r14,@-r15
mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
mov.l r13,@-r15
mov r5,r13
mov r4,r14
sts.l pr,@-r15
mov.b @(r0,r13),r3 ; r3 ??? bc r13 is ???	
mov.b r3,@(r0,r14) 	
mov.l @(loc_8C0E687C,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
jsr @r3
mov r14,r4
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3C, r0 set to 0x3c
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0E6864,pc),r0 ; r0 set to 0x159, r0 set to 0x159
mov.b @(r0,r13),r3
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
mov.b @(r0,r14),r2
cmp/eq r2,r3
bt loc_8C0E683c
mov.b @(0x04,r14),r0 	
mov r13,r5
mov r14,r4
add 0x01,r0 ; r0 set to 0x22, r0 set to 0x22
mov.b r0,@(0x04,r14) 	
lds.l @r15+,pr 	
mov.l @r15+,r13
bra loc_8C0E6BEa
mov.l @r15+,r14

loc_8C0E683C:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E6844:
mov r4,r3
mov.l @(loc_8C0E6880,pc),r1 ; r1 set to 0x8C15F168
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0E6856:
#data 0x0141
#data 0x01300158

loc_8C0E685C:
#data 0x00Dc

loc_8C0E685E:
#data 0x00C0

loc_8C0E6860:
#data 0x012c

loc_8C0E6862:
#data 0x01A3

loc_8C0E6864:
#data 0x0159
#data 0x0000

#align4
loc_8C0E6868:
#data bank15.loc_8c15F150

loc_8C0E686C:
#data bank03.loc_8c034e8c

loc_8C0E6870:
#data bank15.loc_8c15F158

loc_8C0E6874:
#data bank12.loc_8c129560

loc_8C0E6878:
#data bank12.loc_8c1294C8

loc_8C0E687C:
#data bank03.loc_8c034dee

loc_8C0E6880:
#data bank15.loc_8c15F168


loc_8C0E6884:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0E69B8,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0E69B8,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0E69C4,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0E69BA,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0E69BC,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E69BE,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E69C8,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov 0x02,r3 ; r3 set to 0x02
mov.b r2,@(r0,r14) 	
mov 0x44,r2 ; r2 set to 0x44
mov.w @(loc_8C0E69BC,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov r14,r3 ; r3 ??? bc r14 is ???	
mov.w @(loc_8C0E69C0,pc),r0 ; r0 set to 0x13d
mov.b r2,@(r0,r14) 	
add 0xFF,r0 ; r0 set to 0x13c
mov.b r2,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
add r0,r3
mov.l @(loc_8C0E69CC,pc),r0 ; r0 set to 0x8C15F178
mov.l r3,@-r15
mov 0x21,r3 ; r3 set to 0x21
add r14,r3 ; r3 ??? bc r14 is ???	
mov.b @r3,r3
extu.b r3,r3
shll r3
mov.w @(r0,r3),r2 ; r2 ??? bc r3 is ???	
mova @(loc_8C0E69D0,pc),r0  ; r0 set to 0x8C0E69D0
fmov.s @r0,fr0 ; r0 ??	
mov 0x21,r0 ; r0 set to 0x21
lds r2,fpul 	
mov.l @r15+,r2
float fpul,fr3
fmov.s @r2,fr2
fmac fr0,fr3,fr2
fmov.s fr2,@r2
mov.b @(r0,r14),r3
tst r3,r3
bf/s loc_8C0E693c
mov 0x17,r5 ; r5 set to 0x17
bra loc_8C0E693e
mov 0x24,r6

loc_8C0E693C:
mov 0x25,r6 ; r6 set to 0x25

loc_8C0E693E:
mov.l @(loc_8C0E69D4,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0E694E:
mov.l r14,@-r15
mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24, r0 set to 0x24
mov.l r13,@-r15
mov r5,r13
mov r4,r14
sts.l pr,@-r15
mov.b @(r0,r13),r3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???	
mov.b r3,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r13),fr3
mov.l @(loc_8C0E69D8,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
fmov.s fr3,@(r0,r14) 	
jsr @r3
mov r14,r4
mov.l @(loc_8C0E69DC,pc),r2 ; r2 set to 0x8C0334A8, r2 set to 0x8C0334A8, r2 set to 0x8C0334A8
jsr @r2
mov r14,r4
tst r0,r0
bf loc_8C0E697c
mov.w @(loc_8C0E69BC,pc),r0 ; r0 set to 0x12C, r0 set to 0x12C, r0 set to 0x12c
mov 0x00,r2 ; r2 set to 0x00, r2 set to 0x00, r2 set to 0x00
bra loc_8C0E6982
mov.b r2,@(r0,r14) 	

loc_8C0E697C:
mov.w @(loc_8C0E69BC,pc),r0 ; r0 set to 0x12c
mov 0x01,r1 ; r1 set to 0x01
mov.b r1,@(r0,r14) 	

loc_8C0E6982:
mov.w @(loc_8C0E69C2,pc),r0 ; r0 set to 0x159, r0 set to 0x159
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???, r0 ??? bc r13 is ???	
extu.b r0,r0
cmp/eq 0x16,r0 	
bt loc_8C0E699e
mov.b @(0x04,r14),r0 	
mov r13,r5
mov r14,r4
add 0x01,r0
mov.b r0,@(0x04,r14) 	
lds.l @r15+,pr 	
mov.l @r15+,r13
bra loc_8C0E6BEa
mov.l @r15+,r14

loc_8C0E699E:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E69A6:
mov r4,r3
mov.l @(loc_8C0E69E0,pc),r1 ; r1 set to 0x8C15F18c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0E69B8:
#data 0x00Dc

loc_8C0E69BA:
#data 0x00C0

loc_8C0E69BC:
#data 0x012c

loc_8C0E69BE:
#data 0x01A3

loc_8C0E69C0:
#data 0x013d

loc_8C0E69C2:
#data 0x0159

#align4
loc_8C0E69C4:
#data bank12.loc_8c129560

loc_8C0E69C8:
#data bank12.loc_8c1294C8

loc_8C0E69CC:
#data bank15.loc_8c15F178

loc_8C0E69D0:
#data 0x40092492

#align4
loc_8C0E69D4:
#data bank03.loc_8c034e8c

loc_8C0E69D8:
#data bank03.loc_8c034dee

loc_8C0E69DC:
#data bank03.loc_8c0334A8

loc_8C0E69E0:
#data bank15.loc_8c15F18c


loc_8C0E69E4:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0E6AF0,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0E6AF0,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0E6B00,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0E6AF2,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0E6AF4,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E6AF6,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E6B04,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0E6AF4,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r4,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3
tst r3,r3
bf loc_8C0E6A5e
mova @(loc_8C0E6B08,pc),r0  ; r0 set to 0x8C0E6B08
bra loc_8C0E6A62
fmov.s @r0,fr3

loc_8C0E6A5E:
#data 0xC72b
#data 0xF308

loc_8C0E6A62:
#data 0xE05c
#data 0x9047FE37
#data 0x233803Ed
#data 0xE6318D04
#data 0xF3E6E05c
#data 0xFE37F34d

#align4
loc_8C0E6A78:
#data 0xE517D325
#data 0x64E3430b
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6

loc_8C0E6A8A:
#data 0x2FE6
#data 0x4F222FD6
#data 0x93327FFc
#data 0xE0246E43
#data 0x33EC6D53
#data 0x02DC2F32
#data 0x0E24D31c
#data 0x64E3430b
#data 0xF3D6E034
#data 0x31ECE15c
#data 0xE038FE37
#data 0xFE37F3D6
#data 0xF2E6E034
#data 0xF230F318
#data 0x62F2FE27
#data 0x6121901a
#data 0x331003Dd
#data 0x84E48902
#data 0x80E47001

#align4
loc_8C0E6AD4:
#data 0x4F267F04
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0E6ADE:
mov r4,r3
mov.l @(loc_8C0E6B18,pc),r1 ; r1 set to 0x8C15F19c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0E6AF0:
#data 0x00Dc

loc_8C0E6AF2:
#data 0x00C0

loc_8C0E6AF4:
#data 0x012c

loc_8C0E6AF6:
#data 0x01A3
#data 0x00CC0130
#data 0x00000158

#align4
loc_8C0E6B00:
#data bank12.loc_8c129560

loc_8C0E6B04:
#data bank12.loc_8c1294C8

loc_8C0E6B08:
#data 0xC29CAAAa
#data 0x4276AAAa

#align4
loc_8C0E6B10:
#data bank03.loc_8c034e8c

loc_8C0E6B14:
#data bank03.loc_8c034dee

loc_8C0E6B18:
#data bank15.loc_8c15F19c

loc_8C0E6B1C:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x4F22916d
#data 0x31EC84E4
#data 0x70019269
#data 0x80E4D337
#data 0x430B9066
#data 0x906432Dc
#data 0x61E3E401
#data 0x0E447150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC9056
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD3290E34
#data 0xE00C430b
#data 0x02DCE024
#data 0xE512E3Ff
#data 0xE60A0E24
#data 0x0E449041
#data 0x0E34E031
#data 0xD323903f
#data 0xE038F3D6
#data 0xE03CFE37
#data 0xFE37F3D6
#data 0x64E3430b
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6

loc_8C0E6BA6:
#data 0x2FE6
#data 0x2FD6E024
#data 0x6E436D53
#data 0x03DC4F22
#data 0xD3190E34
#data 0x64E3430b
#data 0xF3D6E034
#data 0x9023FE37
#data 0x233803Dc
#data 0x84E48B02
#data 0x80E47001

#align4
loc_8C0E6BD0:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0E6BD8:
mov r4,r3
mov.l @(loc_8C0E6C20,pc),r1 ; r1 set to 0x8C15F1Ac
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0E6BEA:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0E6C06,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0E6BF8:
mov.l @(loc_8C0E6C24,pc),r3 ; r3 set to 0x8C0450C0
mov 0x00,r2 ; r2 set to 0x00
mov.w @(loc_8C0E6C06,pc),r0 ; r0 set to 0x12c
jmp @r3
mov.b r2,@(r0,r4) 	
#data 0x00Dc
#data 0x00C0

loc_8C0E6C06:
#data 0x012c
#data 0x041C01A3
#data 0x00000201

#align4
loc_8C0E6C10:
#data bank12.loc_8c129560

loc_8C0E6C14:
#data bank12.loc_8c1294C8

loc_8C0E6C18:
#data bank03.loc_8c034e8c

loc_8C0E6C1C:
#data bank03.loc_8c034dee

loc_8C0E6C20:
#data bank15.loc_8c15F1Ac

loc_8C0E6C24:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0x60532F42
#data 0xD34E0009
#data 0x80F4E503
#data 0x430BE600
#data 0x20086463
#data 0x64038D11
#data 0xE120D34a
#data 0x1434314c
#data 0x62F29387
#data 0x84F41426
#data 0xE0262100
#data 0x90810435
#data 0x032D62F2
#data 0x633D907f
#data 0x7F080436
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0E6C6E:
mov r4,r3
mov.l @(loc_8C0E6D74,pc),r1 ; r1 set to 0x8C15F1Bc
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0E6C80:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0E6D66,pc),r1 ; r1 set to 0xDc
mov 0x01,r4 ; r4 set to 0x01
mov.w @(loc_8C0E6D66,pc),r2 ; r2 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0E6D78,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0E6D64,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov.l @(0x18,r14),r5
add r5,r2 ; r2 ??? bc r5 is ???	
jsr @r3
add 0x94,r0 ; r0 set to 0xC0
mov.w @(loc_8C0E6D64,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E6D68,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E6D7C,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov.b r2,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r2
mov.l @(loc_8C0E6D80,pc),r0 ; r0 set to 0x8C15F1Cc
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3 ; r3 ??? bc r2 is ???	
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???	
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0E6D20
mov.l @r15+,r14

loc_8C0E6CFE:
sts.l pr,@-r15
mov r5,r2
mov.l @(loc_8C0E6D7C,pc),r3 ; r3 set to 0x8C1294C8
mov r4,r1
add 0x34,r2
add 0x34,r1
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(loc_8C0E6D84,pc),r2 ; r2 set to 0x8C034E8c
mov 0x15,r5 ; r5 set to 0x15
mov 0x01,r6 ; r6 set to 0x01
jmp @r2
lds.l @r15+,pr 	

loc_8C0E6D18:
mov.l @(loc_8C0E6D84,pc),r3 ; r3 set to 0x8C034E8c
mov 0x06,r6 ; r6 set to 0x06
jmp @r3
mov 0x15,r5

loc_8C0E6D20:
mov.l r14,@-r15
mov r4,r14
mov.l @(0x18,r14),r5
mov 0x24,r0 ; r0 set to 0x24
mov r14,r4
mov.b @(r0,r5),r3
mov.b r3,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r2
mov.l @(loc_8C0E6D88,pc),r0 ; r0 set to 0x8C15F1D4
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
mov.l @r15+,r14

loc_8C0E6D3E:
#data 0x2FE6
#data 0xD3124F22
#data 0x6E43430b
#data 0x4011600e
#data 0xE0028904
#data 0xE30080E4
#data 0x0E349006

#align4
loc_8C0E6D58:
#data 0x000B4F26
#data 0x2F006EF6
#data 0x00CC0158

loc_8C0E6D64:
#data 0x012c

loc_8C0E6D66:
#data 0x00Dc

loc_8C0E6D68:
#data 0x01A3
#data 0x0000

#align4
loc_8C0E6D6C:
#data bank04.loc_8c044F12

loc_8C0E6D70:
#data loc_8c0e6C6e

loc_8C0E6D74:
#data bank15.loc_8c15F1Bc

loc_8C0E6D78:
#data bank12.loc_8c129560

loc_8C0E6D7C:
#data bank12.loc_8c1294C8

loc_8C0E6D80:
#data bank15.loc_8c15F1Cc

loc_8C0E6D84:
#data bank03.loc_8c034e8c

loc_8C0E6D88:
#data bank15.loc_8c15F1D4

loc_8C0E6D8C:
#data bank03.loc_8c034dee

loc_8C0E6D90:
#data 0x62534F22
#data 0x6143D310
#data 0x71347234
#data 0xE00C430b
#data 0x025D9017
#data 0x622D9016
#data 0x3320034e
#data 0xE0028904
#data 0xE3008044
#data 0x0434900f

#align4
loc_8C0E6DB8:
#data 0x432BD308
#data 0x4F26


loc_8C0E6DBE:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0E6DD6,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0E6DCC:
mov.l @(loc_8C0E6DE0,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x0158
#data 0x00Cc

loc_8C0E6DD6:
#data 0x012c

#align4
loc_8C0E6DD8:
#data bank12.loc_8c1294C8

loc_8C0E6DDC:
#data bank03.loc_8c034dee

loc_8C0E6DE0:
#data bank04.loc_8c0450C0
#data 0x7FFC4F22
#data 0xE504D350
#data 0xE6002F42
#data 0x6463430b
#data 0x8D072008
#data 0xD34D6403
#data 0x1434E026
#data 0x62F2938d
#data 0x04351426
#data 0x4F267F04
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0E6E10:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0E6F34,pc),r1 ; r1 set to 0x8C15F1E4
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

#align4
loc_8C0E6E24:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x4F229178
#data 0x31EC84E4
#data 0x70019274
#data 0x80E4D33f
#data 0x430B9071
#data 0x906F32Dc
#data 0x61E3E201
#data 0x0E247150
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
#data 0xE024E300
#data 0x0E3402Dc
#data 0x03ED9050
#data 0x8D012338
#data 0xE4F2E40e

#align4
loc_8C0E6E90:
#data 0xD32D644f
#data 0xE034445a
#data 0xC729F2D6
#data 0xE034F008
#data 0xE51BF32d
#data 0xF23EE604
#data 0xC726FE27
#data 0xE038F308
#data 0xF230F2D6
#data 0x430BFE27
#data 0xD22464E3
#data 0x420BE54b
#data 0x4F2664E3
#data 0x64E365D3
#data 0x6EF66DF6

#align4
loc_8C0E6ECC:
#data 0x4F222FE6
#data 0x902A7FFc
#data 0x2F526353
#data 0x2228023c
#data 0x6E438F06
#data 0x430BD31b
#data 0x600E64E3
#data 0x89054011

#align4
loc_8C0E6EEC:
#data 0x64E365F2
#data 0x4F267F04
#data 0x6EF6A00d

#align4
loc_8C0E6EF8:
#data 0xE038D116
#data 0x415AF2E6
#data 0xF230F30d
#data 0x7F04FE27
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0E6F0E:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0E6F12:
mov.w @(loc_8C0E6F24,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0E6F58,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x2F01
#data 0x00C000Dc

loc_8C0E6F24:
#data 0x012c
#data 0x01A3
#data 0x019F0130

#align4
loc_8C0E6F2C:
#data bank04.loc_8c044F12

loc_8C0E6F30:
#data loc_8c0e6E10

loc_8C0E6F34:
#data bank15.loc_8c15F1E4

loc_8C0E6F38:
#data bank12.loc_8c129560

loc_8C0E6F3C:
#data bank12.loc_8c1294C8
#data 0x3FD55555
#data 0x43A50000

#align4
loc_8C0E6F48:
#data bank03.loc_8c034C38

loc_8C0E6F4C:
#data bank04.loc_8c04223a

loc_8C0E6F50:
#data bank03.loc_8c034D8c
#data 0x3F892492

#align4
loc_8C0E6F58:
#data bank04.loc_8c0450C0
#data 0x7FFC4F22
#data 0xE504D343
#data 0xE6002F42
#data 0x6463430b
#data 0x8D0A2008
#data 0xD3406403
#data 0x1434E026
#data 0x62F29374
#data 0xE2001426
#data 0xE0200435
#data 0x7F040424
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0E6F8E:
#data 0x2FE6
#data 0x4F22E602
#data 0x6E43D336
#data 0xE504430b
#data 0x8D0F2008
#data 0x925F6403
#data 0xD333E026
#data 0xE3011434
#data 0x042514E6
#data 0x0434E020
#data 0xE200E021
#data 0x90540424
#data 0x043603Ee

#align4
loc_8C0E6FC0:
#data 0x00096043
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0E6FCA:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0E7078,pc),r1 ; r1 set to 0x8C15F1F4
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0E6FDE:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0E7068,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0E7068,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0E707C,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0E706A,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0E706C,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E706E,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E7080,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov.b r2,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3
tst r3,r3
bf/s loc_8C0E7084
mov 0x00,r4 ; r4 set to 0x00
mov.w @(loc_8C0E706C,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
add 0xA0,r0 ; r0 set to 0xCc
mov.l r4,@(r0,r14) 	
add 0x04,r0 ; r0 set to 0xD0
mov.l r4,@(r0,r14) 	
add 0x04,r0 ; r0 set to 0xD4
bra loc_8C0E710a
mov.l r4,@(r0,r14) 	
#data 0x00D02F02

loc_8C0E7068:
#data 0x00Dc

loc_8C0E706A:
#data 0x00C0

loc_8C0E706C:
#data 0x012c

loc_8C0E706E:
#data 0x01A3

#align4
loc_8C0E7070:
#data bank04.loc_8c044F12

loc_8C0E7074:
#data loc_8c0e6FCa

loc_8C0E7078:
#data bank15.loc_8c15F1F4

loc_8C0E707C:
#data bank12.loc_8c129560

loc_8C0E7080:
#data bank12.loc_8c1294C8

loc_8C0E7084:
#data 0x0E54908d
#data 0x0E44E024
#data 0xD548908a
#data 0x706004Ee
#data 0x43086343
#data 0x343C4400
#data 0x345C03Ed
#data 0x8D012338
#data 0x644B6441

#align4
loc_8C0E70A8:
#data 0xD142644f
#data 0xE034445a
#data 0x62E3F2E6
#data 0xF32D9376
#data 0x33EC415a
#data 0xF23EF00d
#data 0xE038FE27
#data 0x2F26320c
#data 0x62336332
#data 0x43004208
#data 0x335C332c
#data 0x63038531
#data 0x63F6435a
#data 0xF008C736
#data 0xF238F32d
#data 0xF32AF23e
#data 0x02EE905c
#data 0x43086323
#data 0x323C4200
#data 0x8552352c
#data 0x6303E51b
#data 0x0E34E021
#data 0xD32E06Ec
#data 0x430B7606
#data 0x64E3


loc_8C0E710A:
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0E7114:
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
mov.b @(r0,r4),r3
tst r3,r3
bt loc_8C0E7120
bra loc_8C0E71C4
nop 	

loc_8C0E7120:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x05,r14),r0 	
tst r0,r0
bf loc_8C0E7188
mov.w @(loc_8C0E71A8,pc),r0 ; r0 set to 0x19f
mov.w @(loc_8C0E71A6,pc),r4 ; r4 set to 0xFf
mov.b @(r0,r5),r3
tst r3,r3
bt loc_8C0E713c
mov.w @(loc_8C0E71AA,pc),r0 ; r0 set to 0xD4
bra loc_8C0E7194
mov.l r4,@(r0,r14) 	

loc_8C0E713C:
mov.w @(loc_8C0E71AC,pc),r0 ; r0 set to 0xCc
mov.l @(r0,r14),r2
add 0xFF,r2
cmp/pz r2
bt/s loc_8C0E719c
mov.l r2,@(r0,r14) 	
mov.w @(loc_8C0E71A4,pc),r0 ; r0 set to 0xD0
mov.l @(r0,r14),r0 ; r0 ??? bc r14 is ???	
cmp/eq 0x08,r0 	
bf loc_8C0E7162
mov.b @(0x05,r14),r0 	
mov 0x03,r3 ; r3 set to 0x03
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov.w @(loc_8C0E71AC,pc),r0 ; r0 set to 0xCc
mov.l r3,@(r0,r14) 	
add 0x08,r0 ; r0 set to 0xD4
bra loc_8C0E719c
mov.l r4,@(r0,r14) 	

loc_8C0E7162:
bsr loc_8C0E6F8e
mov r14,r4
mov.w @(loc_8C0E71AC,pc),r0 ; r0 set to 0xCc
mov 0x03,r3 ; r3 set to 0x03
mov.w @(loc_8C0E71A4,pc),r1 ; r1 set to 0xD0
mov.l r3,@(r0,r14) 	
add 0x04,r0 ; r0 set to 0xD0
mov.l @(r0,r14),r0 ; r0 ??? bc r14 is ???	
add r14,r1 ; r1 ??? bc r14 is ???	
add 0x01,r0
tst 0x01,r0 	
bt/s loc_8C0E719c
mov.l r0,@r1
lds.l @r15+,pr 	
mov.l @(loc_8C0E71C0,pc),r2 ; r2 set to 0x8C04223a
mov 0x50,r5 ; r5 set to 0x50
mov r14,r4
jmp @r2
mov.l @r15+,r14

loc_8C0E7188:
mov.w @(loc_8C0E71AC,pc),r0 ; r0 set to 0xCc
mov.l @(r0,r14),r2
add 0xFF,r2
cmp/pz r2
bt/s loc_8C0E719c
mov.l r2,@(r0,r14) 	

loc_8C0E7194:
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0E7228
mov.l @r15+,r14

loc_8C0E719C:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x012c

loc_8C0E71A4:
#data 0x00D0

loc_8C0E71A6:
#data 0x00Ff

loc_8C0E71A8:
#data 0x019f

loc_8C0E71AA:
#data 0x00D4

loc_8C0E71AC:
#data 0x00Cc
#data 0x0000

#align4
loc_8C0E71B0:
#data bank15.loc_8c15F204
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0E71BC:
#data bank03.loc_8c034C38

loc_8C0E71C0:
#data bank04.loc_8c04223a


loc_8C0E71C4:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l r5,@r15
mov.b @(0x05,r14),r0 	
tst r0,r0
bf loc_8C0E71F6
mov.w @(loc_8C0E723C,pc),r0 ; r0 set to 0xD4
mov.l @r15,r3
mov.l @(r0,r3),r2
tst r2,r2
bt loc_8C0E721c
mov.b @(0x05,r14),r0 	
mov 0x1B,r5 ; r5 set to 0x1b
mov.l @(loc_8C0E7240,pc),r3 ; r3 set to 0x8C034C38
add 0x01,r0 ; r0 set to 0xD5
mov.b r0,@(0x05,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r6
add 0x0A,r6
jsr @r3
mov r14,r4
bra loc_8C0E721c
nop 	

loc_8C0E71F6:
mov.l @(loc_8C0E7244,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt loc_8C0E720e
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
bra loc_8C0E7230
mov.l @r15+,r14

loc_8C0E720E:
mov.l @(loc_8C0E7248,pc),r1 ; r1 set to 0x40092492
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
lds r1,fpul 	
fsts fpul,fr3
fsub fr3,fr2
fmov.s fr2,@(r0,r14) 	

loc_8C0E721C:
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0E7244,pc),r3 ; r3 set to 0x8C034D8C, r3 set to 0x8C034D8c
jmp @r3
mov.l @r15+,r14

loc_8C0E7228:
mov.b @(0x04,r4),r0 	
add 0x01,r0
rts 	
mov.b r0,@(0x04,r4) 	
;-------------------------------------------------------------------------------

loc_8C0E7230:
mov.w @(loc_8C0E723E,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0E724C,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0E723C:
#data 0x00D4

loc_8C0E723E:
#data 0x012c

#align4
loc_8C0E7240:
#data bank03.loc_8c034C38

loc_8C0E7244:
#data bank03.loc_8c034D8c

loc_8C0E7248:
#data 0x40092492

#align4
loc_8C0E724C:
#data bank04.loc_8c0450C0
#data 0x7FFC4F22
#data 0xE504D356
#data 0xE6002F42
#data 0x6463430b
#data 0x8D072008
#data 0xD3536403
#data 0x1434E026
#data 0x62F29399
#data 0x04351426
#data 0x4F267F04
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0E727C:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0E73B8,pc),r1 ; r1 set to 0x8C15F234
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

#align4
loc_8C0E7290:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x4F229184
#data 0x31EC84E4
#data 0x70019280
#data 0x80E4D345
#data 0x430B907d
#data 0x907B32Dc
#data 0x61E3E201
#data 0x0E247150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC906d
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD3370E34
#data 0xE00C430b
#data 0x02DCE024
#data 0x0E24E400
#data 0x0E44905a
#data 0x00096043
#data 0xE02481Ee
#data 0x90550E44
#data 0x233803Ed
#data 0xE40F8D01
#data 0xE4F1

loc_8C0E730A:
#data 0x644f
#data 0x445AD32f
#data 0xF2D6E034
#data 0xF008C72b
#data 0xF32DE034
#data 0xE600E51b
#data 0xFE27F23e
#data 0xF308C728
#data 0xF2D6E038
#data 0xFE27F230
#data 0x64E3430b
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6

loc_8C0E733E:
#data 0x2FE6
#data 0x7FFC4F22
#data 0x63539033
#data 0x023C2F52
#data 0x8F122228
#data 0x85EE6E43
#data 0x81EE70Ff
#data 0x4011600f
#data 0xD31C8905
#data 0xE54FE008
#data 0x430B81Ee
#data 0x64E3

loc_8C0E736A:
#data 0xD21a
#data 0x64E3420b
#data 0x4011600e
#data 0x8905

loc_8C0E7376:
#data 0x65F2
#data 0x7F0464E3
#data 0xA00B4F26
#data 0x6EF6

loc_8C0E7382:
#data 0x9011
#data 0x02ECE301
#data 0x0E24223a
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0E7394:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0E7398:
mov.l @(loc_8C0E73D8,pc),r3 ; r3 set to 0x8C0450C0
mov 0x00,r1 ; r1 set to 0x00
mov.w @(loc_8C0E73A8,pc),r0 ; r0 set to 0x12c
jmp @r3
mov.b r1,@(r0,r4) 	
#data 0x2F03
#data 0x00C000Dc

loc_8C0E73A8:
#data 0x012c
#data 0x01A3
#data 0x019F0130

#align4
loc_8C0E73B0:
#data bank04.loc_8c044F12

loc_8C0E73B4:
#data loc_8c0e727c

loc_8C0E73B8:
#data bank15.loc_8c15F234

loc_8C0E73BC:
#data bank12.loc_8c129560

loc_8C0E73C0:
#data bank12.loc_8c1294C8
#data 0x3FD55555
#data 0x43AD9249

#align4
loc_8C0E73CC:
#data bank03.loc_8c034C38

loc_8C0E73D0:
#data bank04.loc_8c04223a

loc_8C0E73D4:
#data bank03.loc_8c034D8c

loc_8C0E73D8:
#data bank04.loc_8c0450C0
#data 0x7FFC4F22
#data 0xE503D34c
#data 0xE6002F42
#data 0x6463430b
#data 0x8D0E2008
#data 0xD3496403
#data 0x1434E026
#data 0x62F29384
#data 0xE2001426
#data 0xE0200435
#data 0x0424937f
#data 0x334C62F2
#data 0x7F042322
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0E7416:
#data 0x2FE6
#data 0x2FD6E602
#data 0x4F226D43
#data 0x6E53D33c
#data 0xE503430b
#data 0x8D4A2008
#data 0x92696403
#data 0xE601E026
#data 0xE500D338
#data 0x14D61434
#data 0xE0200425
#data 0xE0210464
#data 0x905F0454
#data 0xE02203Dc
#data 0x905C0434
#data 0x600C00Ec
#data 0x8D01C8E0
#data 0x6563E023

#align4
loc_8C0E745C:
#data 0x90550454
#data 0x334C9351
#data 0x06EE23E2
#data 0x03ED70D4
#data 0x01DE7084
#data 0x43006233
#data 0x904A4208
#data 0x331C332c
#data 0x430000Ee
#data 0x88034300
#data 0x6565363c
#data 0x66618F02
#data 0x75087608

#align4
loc_8C0E7490:
#data 0x02ED903e
#data 0x89002228
#data 0x655b

loc_8C0E749A:
#data 0x655f
#data 0xC71F455a
#data 0xE034F208
#data 0x666FF1E6
#data 0x465AF32d
#data 0xF131F322
#data 0xF417F32d
#data 0xF1E6E038
#data 0xF008C719
#data 0xF13EE038
#data 0xF417

loc_8C0E74C2:
#data 0x6043
#data 0x4F260009
#data 0x000B6DF6
#data 0x4F226EF6
#data 0xD3147FFc
#data 0x2F42430b
#data 0x4011600e
#data 0x64F28904
#data 0xD3117F04
#data 0x4F26432b
#data 0x4F267F04
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0E74F0:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0E752C,pc),r1 ; r1 set to 0x8C15F244
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x00882F04
#data 0x014A00D4
#data 0x02C0017c
#data 0x00000130

#align4
loc_8C0E7514:
#data bank04.loc_8c044F12

loc_8C0E7518:
#data loc_8c0e74F0
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0E7524:
#data bank03.loc_8c034dee

loc_8C0E7528:
#data bank04.loc_8c0450C0

loc_8C0E752C:
#data bank15.loc_8c15F244


loc_8C0E7530:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0E7616,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0E7616,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0E7628,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0E7618,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0E761A,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E761C,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E762C,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov 0x00,r4 ; r4 set to 0x00
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0E761A,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r2
tst r2,r2
bf loc_8C0E75B8
mov.w @(loc_8C0E761E,pc),r0 ; r0 set to 0x2C0
mov.l @(r0,r13),r2
mov.w @(loc_8C0E7620,pc),r0 ; r0 set to 0xD8
mov.l r2,@(r0,r14) 	
mov r4,r0 ; r0 set to 0x00
nop 	
mov.w r0,@(0x1C,r14) 	
mov 0x05,r3 ; r3 set to 0x05
mov.w @(loc_8C0E7622,pc),r0 ; r0 set to 0xD4
bra loc_8C0E75De
mov.l r3,@(r0,r14) 	

loc_8C0E75B8:
mov 0x08,r3 ; r3 set to 0x08
mov.w @(loc_8C0E7624,pc),r1 ; r1 set to 0x88
mov 0x24,r0 ; r0 set to 0x24
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l r4,@(0x04,r1) 	
mov 0x1B,r5 ; r5 set to 0x1b
mov.b r3,@(r0,r14) 	
mov 0x01,r3 ; r3 set to 0x01
mov.w @(loc_8C0E7626,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r2
xor r3,r2
mov.w r2,@(r0,r14) 	
add 0xA8,r0 ; r0 set to 0xD8
mov.l @(r0,r13),r1
mov.l @(loc_8C0E7630,pc),r0 ; r0 set to 0x8C15F254
mov.l @(loc_8C0E7634,pc),r2 ; r2 set to 0x8C034C38
mov.b @(r0,r1),r6
jsr @r2
mov r14,r4

loc_8C0E75DE:
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0E75E8:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
add 0xF0,r15
mov.l @(loc_8C0E7638,pc),r2 ; r2 set to 0x8C13B468, r2 set to 0x8C13B468, r2 set to 0x8C13B468
mov r15,r1
mov.l @(loc_8C0E763C,pc),r3 ; r3 set to 0x8C129620, r3 set to 0x8C129620, r3 set to 0x8C129620
mov r4,r14
mov r5,r13
mov r15,r6
jsr @r3
mov 0x10,r0 ; r0 set to 0x10, r0 set to 0x10, r0 set to 0x10
mov.w @(loc_8C0E7624,pc),r12 ; r12 set to 0x88, r12 set to 0x88, r12 set to 0x88
mov.w @(loc_8C0E761A,pc),r0 ; r0 set to 0x12C, r0 set to 0x12C, r0 set to 0x12c
add r14,r12 ; r12 ??? bc r14 is ???, r12 ??? bc r14 is ???, r12 ??? bc r14 is ???	
mov.l @r12,r12
mov.b @(r0,r12),r3 ; r3 ??? bc r12 is ???, r3 ??? bc r12 is ???, r3 ??? bc r12 is ???	
tst r3,r3
bf/s loc_8C0E7640
mov 0x00,r4 ; r4 set to 0x00, r4 set to 0x00, r4 set to 0x00
bra loc_8C0E7766
mov.b r4,@(r0,r14) 	

loc_8C0E7616:
#data 0x00Dc

loc_8C0E7618:
#data 0x00C0

loc_8C0E761A:
#data 0x012c

loc_8C0E761C:
#data 0x01A3

loc_8C0E761E:
#data 0x02C0

loc_8C0E7620:
#data 0x00D8

loc_8C0E7622:
#data 0x00D4

loc_8C0E7624:
#data 0x0088

loc_8C0E7626:
#data 0x0130

#align4
loc_8C0E7628:
#data bank12.loc_8c129560

loc_8C0E762C:
#data bank12.loc_8c1294C8

loc_8C0E7630:
#data bank15.loc_8c15F254

loc_8C0E7634:
#data bank03.loc_8c034C38

loc_8C0E7638:
#data bank13.loc_8c13B468

loc_8C0E763C:
#data bank12.loc_8c129620


loc_8C0E7640:
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3
tst r3,r3
bf loc_8C0E76Fe
mov.w @(loc_8C0E76EC,pc),r0 ; r0 set to 0x2B8
mov.l @(r0,r13),r3
tst r3,r3
bf loc_8C0E7654
bra loc_8C0E7760
nop 	

loc_8C0E7654:
mov.w @(loc_8C0E76EE,pc),r0 ; r0 set to 0x2Bc
mov.l @(r0,r13),r2
tst r2,r2
bf loc_8C0E7660
bra loc_8C0E7760
nop 	

loc_8C0E7660:
mov.w @(loc_8C0E76F0,pc),r0 ; r0 set to 0x2C0
mov.l @(r0,r13),r2
mov.w @(loc_8C0E76F2,pc),r0 ; r0 set to 0xD8
mov.l @(r0,r14),r3
cmp/eq r2,r3
bt loc_8C0E7670
bra loc_8C0E7760
nop 	

#align4
loc_8C0E7670:
#data 0x01DD9040
#data 0x8B764115
#data 0x02DD903d
#data 0x85EE0E25
#data 0x81EE70Ff
#data 0x4011600f
#data 0x9035896d
#data 0x02EEE506
#data 0x32537201
#data 0x0E268F01
#data 0x0E46

loc_8C0E769A:
#data 0x902e
#data 0x233803Dc
#data 0x00DC8F01
#data 0xE402

loc_8C0E76A6:
#data 0x600c
#data 0x8B008801
#data 0xE404

loc_8C0E76AE:
#data 0x9024
#data 0x600C00Dc
#data 0x8B008806
#data 0x6453

loc_8C0E76BA:
#data 0x901d
#data 0x880500Ee
#data 0x74018B00

#align4
loc_8C0E76C4:
#data 0x9419604c
#data 0x006D4000
#data 0x81EE34Ec
#data 0x88015043
#data 0x50428B05
#data 0x89028801
#data 0x88055042
#data 0x8B41

loc_8C0E76E2:
#data 0x65D3
#data 0x64E3BE97
#data 0x0009A03d

loc_8C0E76EC:
#data 0x02B8

loc_8C0E76EE:
#data 0x02Bc

loc_8C0E76F0:
#data 0x02C0

loc_8C0E76F2:
#data 0x00D8
#data 0x01300150
#data 0x01D000D4
#data 0x00Cc

loc_8C0E76FE:
#data 0xD223
#data 0x64E3420b
#data 0x4011600e
#data 0xD3218B2a
#data 0x32ECE222
#data 0x60329137
#data 0x31EC6220
#data 0x302C5007
#data 0x2100C901
#data 0x02EC902f
#data 0x891E2228
#data 0xE208E024
#data 0xE0230E24
#data 0x211801Ec
#data 0xE0248B02
#data 0x0E1401Cc

#align4
loc_8C0E773C:
#data 0x00DE9022
#data 0x8B108801
#data 0x420BD213
#data 0x911C0009
#data 0x931BC901
#data 0x210131Ec
#data 0x901833Ec
#data 0x622C02Cc
#data 0x1321A003


loc_8C0E7760:
mov r13,r5
bsr loc_8C0E7776
mov r14,r4

loc_8C0E7766:
add 0x10,r15
lds.l @r15+,pr 	
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E7772:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0E7776:
mov.w @(loc_8C0E7782,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0E7798,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0E7782:
#data 0x012c
#data 0x013000D8
#data 0x014A0088

#align4
loc_8C0E778C:
#data bank03.loc_8c034D8c
#data 0x8C26823c

#align4
loc_8C0E7794:
#data bank03.loc_8c03319e

loc_8C0E7798:
#data bank04.loc_8c0450C0

loc_8C0E779C:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0xD3494F22
#data 0xE600E503
#data 0x6463430b
#data 0x8D1D2008
#data 0xD5466403
#data 0x89002DD8
#data 0xD545

loc_8C0E77BE:
#data 0x9278
#data 0x1454E026
#data 0x042514E6
#data 0x03ED9074
#data 0x633D9073
#data 0x90710436
#data 0x02EC9372
#data 0x622C906f
#data 0xE0200426
#data 0x3D3C04D4
#data 0x04D4E021
#data 0x02EE9069
#data 0x04269068

#align4
loc_8C0E77F0:
#data 0x00096043
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0E77FC:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0E78D8,pc),r1 ; r1 set to 0x8C15F258
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0E7810:
mov.w @(loc_8C0E78C2,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0E78DC,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.w @(loc_8C0E78C2,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0E78C4,pc),r0 ; r0 set to 0xC0
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0E78C6,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E78C8,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E78E0,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x00,r3 ; r3 set to 0x00
mov.b r2,@(r0,r4) 	
mov 0xFF,r2 ; r2 set to 0xFFFFFFFf
mov.w @(loc_8C0E78C6,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r2,@(r0,r4) 	
lds.l @r15+,pr 	

loc_8C0E7874:
mov r4,r3 ; r3 ??? bc r4 is ???	
mov.l @(loc_8C0E78E4,pc),r1 ; r1 set to 0x8C15F268, r1 set to 0x8C15F268
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0 ; r0 set to 0x31
shll2 r0 ; r0 set to 0xC4
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0E7886:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.w @(loc_8C0E78B4,pc),r0 ; r0 set to 0x158
mov.l r12,@-r15
mov r5,r12
mov.l r11,@-r15
sts.l pr,@-r15
mov.w @(r0,r12),r3
mov.w @(loc_8C0E78B6,pc),r0 ; r0 set to 0xCc
extu.w r3,r3
mov.l @(r0,r14),r2
cmp/eq r3,r2
bt loc_8C0E78E8
lds.l @r15+,pr 	
mov r12,r5
mov r14,r4
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
bra loc_8C0E7D14
mov.l @r15+,r14
#data 0x2F05

loc_8C0E78B4:
#data 0x0158

loc_8C0E78B6:
#data 0x00Cc
#data 0x00D001A1
#data 0x01B000Ff
#data 0x00D4

loc_8C0E78C2:
#data 0x00Dc

loc_8C0E78C4:
#data 0x00C0

loc_8C0E78C6:
#data 0x012c

loc_8C0E78C8:
#data 0x01A3
#data 0x0000

#align4
loc_8C0E78CC:
#data bank04.loc_8c044F12

loc_8C0E78D0:
#data loc_8c0e77Fc

loc_8C0E78D4:
#data loc_8c0e7A8e

loc_8C0E78D8:
#data bank15.loc_8c15F258

loc_8C0E78DC:
#data bank12.loc_8c129560

loc_8C0E78E0:
#data bank12.loc_8c1294C8

loc_8C0E78E4:
#data bank15.loc_8c15F268


loc_8C0E78E8:
mov.w @(loc_8C0E7996,pc),r0 ; r0 set to 0x1B0
mov.l @(r0,r12),r13
add 0xEE,r0 ; r0 set to 0x19e
mov.b @(r0,r12),r3
tst r3,r3
bt loc_8C0E798a
mov.b @(0x05,r13),r0 	
extu.b r0,r0 ; r0 set to 0x9e
cmp/eq 0x03,r0 	
bf loc_8C0E798a
mov.w @(loc_8C0E7998,pc),r0 ; r0 set to 0x1B4
mov.l @(r0,r13),r2
cmp/eq r2,r12
bf loc_8C0E798a
mov.w @(loc_8C0E799A,pc),r0 ; r0 set to 0x1A2
mov.b @(r0,r13),r1
mov.w @(loc_8C0E799C,pc),r0 ; r0 set to 0xD0
extu.b r1,r1
mov.l @(r0,r14),r3
cmp/eq r3,r1
bf loc_8C0E798a
mov.b @(0x05,r14),r0 	
mov 0x01,r3 ; r3 set to 0x01
mov.l @(loc_8C0E79A4,pc),r11 ; r11 set to 0x8C03319e
add 0x01,r0 ; r0 set to 0xD1
mov.b r0,@(0x05,r14) 	
mov.w @(loc_8C0E799E,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
jsr @r11
mov.b r2,@(r0,r14) 	
and 0x3F,r0 	
add 0x78,r0 ; r0 set to 0x9c
jsr @r11
mov.w r0,@(0x1C,r14) 	
and 0x3F,r0 	
add 0xE0,r0 ; r0 set to 0x7c
lds r0,fpul 	
mova @(loc_8C0E79A8,pc),r0  ; r0 set to 0x8C0E79A8
fmov.s @r0,fr2
mov 0x68,r0 ; r0 set to 0x68
float fpul,fr3
fmul fr2,fr3 ; r3 ??? bc r2 is ???	
jsr @r11
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0E79A0,pc),r3 ; r3 set to 0x13c
mov r0,r1 ; r1 set to 0x68
mov.l @(loc_8C0E79AC,pc),r2 ; r2 set to 0x8C1292D4
add r13,r3 ; r3 ??? bc r13 is ???	
mov.b @r3,r3
extu.b r3,r3
jsr @r2
mov r3,r0 ; r0 ??? bc r3 is ???	
lds r0,fpul 	
mova @(loc_8C0E79B0,pc),r0  ; r0 set to 0x8C0E79B0
fmov.s @r0,fr2 ; r2 ??	
mov 0x6C,r0 ; r0 set to 0x6c
mov.l @(loc_8C0E79B4,pc),r3 ; r3 set to 0x8C26823c
mov 0x03,r6 ; r6 set to 0x03
float fpul,fr3
mov.l @(loc_8C0E79B8,pc),r2 ; r2 set to 0x8C034C38
mov 0x1B,r5 ; r5 set to 0x1b
fmul fr2,fr3 ; r3 ??	
fmov.s fr3,@(r0,r14) 	
add 0x68,r0 ; r0 set to 0xD4
mov.l r13,@(r0,r14) 	
mov.l @r3,r0 ; r0 ??? bc r3 is ???	
mov.l @(0x1C,r0),r0
and r0,r6 ; r6 ??? bc r0 is ???	
add 0x06,r6
jsr @r2
mov r14,r4
lds.l @r15+,pr 	
mov r12,r5 ; r5 ??? bc r12 is ???	
mov r14,r4
mov.l @r15+,r11 ; r11 ??? bc r15 is ???	
mov.l @r15+,r12
mov.l @r15+,r13
bra loc_8C0E79Bc
mov.l @r15+,r14

loc_8C0E798A:
lds.l @r15+,pr 	
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E7996:
#data 0x01B0

loc_8C0E7998:
#data 0x01B4

loc_8C0E799A:
#data 0x01A2

loc_8C0E799C:
#data 0x00D0

loc_8C0E799E:
#data 0x012c

loc_8C0E79A0:
#data 0x013c
#data 0x0000

#align4
loc_8C0E79A4:
#data bank03.loc_8c03319e

loc_8C0E79A8:
#data 0x3FD55555

#align4
loc_8C0E79AC:
#data bank12.loc_8c1292D4

loc_8C0E79B0:
#data 0x40092492

#align4
loc_8C0E79B4:
#data 0x8C26823c

#align4
loc_8C0E79B8:
#data bank03.loc_8c034C38

loc_8C0E79BC:
#data 0x4F222FE6
#data 0x430BD33b
#data 0x906C6E43
#data 0xE06804Ee
#data 0x9069F4E6
#data 0x2338034d
#data 0xE0348D01
#data 0xF44d

loc_8C0E79DA:
#data 0xF346
#data 0xFE37F340
#data 0xF4E6E06c
#data 0x004C905f
#data 0x8801600c
#data 0xF39D8B02
#data 0xF433F330

#align4
loc_8C0E79F4:
#data 0x004C9057
#data 0x8803600c
#data 0xC72D8B02
#data 0xF433F308

#align4
loc_8C0E7A04:
#data 0xF346E038
#data 0xFE37F340
#data 0x034CE024
#data 0x90490E34
#data 0x600C004c
#data 0x8B128809
#data 0x054C9045
#data 0x8801605c
#data 0x625C8902
#data 0x8B0A2228

#align4
loc_8C0E7A2C:
#data 0x004C903c
#data 0x8803600c
#data 0x85EE8905
#data 0x81EE70Ff
#data 0x4015600f
#data 0x890b

loc_8C0E7A42:
#data 0x84E5
#data 0xD31C64E3
#data 0x7001E51b
#data 0x902D80E5
#data 0x06EC4F26
#data 0x432B7604
#data 0x6EF6

loc_8C0E7A5A:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0E7A60:
#data 0x4F222FE6
#data 0x430BD312
#data 0x600E6E43
#data 0x8B054011
#data 0x420BD20f
#data 0x600E64E3
#data 0x89054011

#align4
loc_8C0E7A7C:
#data 0xE30084E4
#data 0x80E47001
#data 0x0E349013

#align4
loc_8C0E7A88:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0E7A8E:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0E7ABC,pc),r1 ; r1 set to 0x8C15F274
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x00D4
#data 0x01F90130
#data 0x022A0233
#data 0x012C0158

#align4
loc_8C0E7AB0:
#data bank03.loc_8c034D8c
#data 0x40800000

#align4
loc_8C0E7AB8:
#data bank03.loc_8c034C38

loc_8C0E7ABC:
#data bank15.loc_8c15F274


loc_8C0E7AC0:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0E7B60,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0E7B60,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0E7B68,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0E7B62,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0E7B64,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E7B66,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E7B6C,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov.b r2,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
tst r3,r3
bf loc_8C0E7B38
mov.w @(loc_8C0E7B64,pc),r0 ; r0 set to 0x12c
mov 0x00,r4 ; r4 set to 0x00
mov.b r4,@(r0,r14) 	
mov r4,r0 ; r0 set to 0x00
nop 	
mov.w r0,@(0x1C,r14) 	
mov 0x11,r0 ; r0 set to 0x11
bra loc_8C0E7B54
mov.w r0,@(0x1E,r14) 	

loc_8C0E7B38:
mov.w @(loc_8C0E7B64,pc),r0 ; r0 set to 0x12c
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov.l @(loc_8C0E7B70,pc),r2 ; r2 set to 0x8C03319e
mov.b r4,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
jsr @r2
mov.b r3,@(r0,r14) 	
and 0x03,r0 	
mov.l @(loc_8C0E7B74,pc),r3 ; r3 set to 0x8C034C38
mov r0,r6 ; r6 set to 0x31
mov 0x1B,r5 ; r5 set to 0x1b
add 0x06,r6 ; r6 set to 0x37
jsr @r3
mov r14,r4

loc_8C0E7B54:
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
bra loc_8C0E7874
mov.l @r15+,r14

loc_8C0E7B60:
#data 0x00Dc

loc_8C0E7B62:
#data 0x00C0

loc_8C0E7B64:
#data 0x012c

loc_8C0E7B66:
#data 0x01A3

#align4
loc_8C0E7B68:
#data bank12.loc_8c129560

loc_8C0E7B6C:
#data bank12.loc_8c1294C8

loc_8C0E7B70:
#data bank03.loc_8c03319e

loc_8C0E7B74:
#data bank03.loc_8c034C38


loc_8C0E7B78:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.w @(loc_8C0E7C36,pc),r0 ; r0 set to 0xD4
mov r4,r14
mov.l r5,@r15
mov.l @(r0,r14),r13
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3
tst r3,r3
bf loc_8C0E7C54
mov.b @(0x05,r13),r0 	
extu.b r0,r0 ; r0 set to 0x21
cmp/eq 0x03,r0 	
bt loc_8C0E7BA0
bra loc_8C0E7CE6
nop 	

loc_8C0E7BA0:
mov.w @(loc_8C0E7C38,pc),r0 ; r0 set to 0x233
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
extu.b r0,r0
cmp/eq 0x09,r0 	
bt loc_8C0E7BAe
bra loc_8C0E7CE6
nop 	

loc_8C0E7BAE:
mov.w @(0x1E,r14),r0 	
cmp/pz r0
bt loc_8C0E7BB8
bra loc_8C0E7CE6
nop 	

loc_8C0E7BB8:
mov 0x02,r5 ; r5 set to 0x02
bsr loc_8C0E779c
mov.l @r15,r4
tst r0,r0
bf/s loc_8C0E7BC8
mov r0,r12
bra loc_8C0E7CF8
nop 	

loc_8C0E7BC8:
mov.w @(loc_8C0E7C3A,pc),r0 ; r0 set to 0x13e
mov.l @(loc_8C0E7C40,pc),r1 ; r1 set to 0x8C15F284
mov.b @(r0,r13),r3
add 0x01,r0 ; r0 set to 0x13f
mov.b @(r0,r13),r2
extu.b r3,r3
mov.w @(0x1E,r14),r0 	
extu.b r2,r2
add r2,r3
mov 0xFC,r2 ; r2 set to 0xFFFFFFFc
shad r2, r3
mov.b @(r0,r1),r2 ; r2 ??	
mul.l r2,r3
mov.l @(loc_8C0E7C44,pc),r2 ; r2 set to 0x8C03319e
sts macl,r3
jsr @r2
mov r3,r8
and 0x02,r0 	
mov.l @(loc_8C0E7C4C,pc),r1 ; r1 set to 0x8C15F296
add r0,r8
add 0xFF,r8
lds r8,fpul 	
mova @(loc_8C0E7C48,pc),r0  ; r0 set to 0x8C0E7C48
fmov.s @r0,fr2 ; r2 ??	
mov 0x68,r0 ; r0 set to 0x68
float fpul,fr3
fmul fr2,fr3
fmov.s fr3,@(r0,r12) 	
mov.w @(loc_8C0E7C3C,pc),r0 ; r0 set to 0x13c
mov.b @(r0,r13),r3
mov.w @(0x1E,r14),r0 	
extu.b r3,r3
shlr2 r3
mov.b @(r0,r1),r2
shlr2 r3
shlr r3
mul.l r2,r3
mov.l @(loc_8C0E7C44,pc),r2 ; r2 set to 0x8C03319e
sts macl,r3
jsr @r2
mov r3,r8
and 0x02,r0 	
add r0,r8
add 0xFF,r8
lds r8,fpul 	
mova @(loc_8C0E7C50,pc),r0  ; r0 set to 0x8C0E7C50
fmov.s @r0,fr2 ; r2 ??	
mov 0x6C,r0 ; r0 set to 0x6c
float fpul,fr3
fmul fr2,fr3
fmov.s fr3,@(r0,r12) 	
mov.w @(0x1E,r14),r0 	
add 0xFF,r0 ; r0 set to 0x6b
bra loc_8C0E7CF8
mov.w r0,@(0x1E,r14) 	

loc_8C0E7C36:
#data 0x00D4

loc_8C0E7C38:
#data 0x0233

loc_8C0E7C3A:
#data 0x013e

loc_8C0E7C3C:
#data 0x013c
#data 0x0000

#align4
loc_8C0E7C40:
#data bank15.loc_8c15F284

loc_8C0E7C44:
#data bank03.loc_8c03319e

loc_8C0E7C48:
#data 0x3FD55555

#align4
loc_8C0E7C4C:
#data bank15.loc_8c15F296

loc_8C0E7C50:
#data 0x40092492

#align4
loc_8C0E7C54:
#data 0xDC3384E5
#data 0x8B3A2008
#data 0xF3E6E068
#data 0xF33D905b
#data 0x233803Dd
#data 0x045A8D01
#data 0x644b

loc_8C0E7C6E:
#data 0x445a
#data 0xF2D6E034
#data 0xF230F32d
#data 0xE06CFE27
#data 0xE038F3E6
#data 0xF230F2D6
#data 0xE024FE27
#data 0x0E3403Dc
#data 0x64E34C0b
#data 0x600C84D5
#data 0x8B0C8803
#data 0x04DC9040
#data 0x8801604c
#data 0x624C8902
#data 0x8B042228

#align4
loc_8C0E7CA8:
#data 0x00DC9039
#data 0x8809600c
#data 0x8922

loc_8C0E7CB2:
#data 0x84E5
#data 0xE51B64E3
#data 0x80E57001
#data 0x06EC9030
#data 0x7F047604
#data 0xD3184F26
#data 0x6CF668F6
#data 0x432B6DF6
#data 0x6EF6

loc_8C0E7CD2:
#data 0x4C0b
#data 0x600E64E3
#data 0x8B044011
#data 0x64E34C0b
#data 0x4011600e
#data 0x8908


loc_8C0E7CE6:
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r8
mov.l @r15+,r12
mov.l @r15+,r13
bra loc_8C0E7D14
mov.l @r15+,r14

loc_8C0E7CF8:
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r8
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E7D06:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0E7D22,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0E7D14:
mov.l @(loc_8C0E7D2C,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x0130
#data 0x0233022a
#data 0x0158

loc_8C0E7D22:
#data 0x012c

#align4
loc_8C0E7D24:
#data bank03.loc_8c034D8c

loc_8C0E7D28:
#data bank03.loc_8c034C38

loc_8C0E7D2C:
#data bank04.loc_8c0450C0

loc_8C0E7D30:
#data 0x7FF44F22
#data 0x1F42D344
#data 0xE5031F51
#data 0xE6012F60
#data 0xE400430b
#data 0x8D0C2008
#data 0xD3406403
#data 0x1434E020
#data 0x142652F2
#data 0x143553F1
#data 0x936F62F0
#data 0xE0260424
#data 0x0435

loc_8C0E7D62:
#data 0x7F0c
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0E7D6A:
mov 0x20,r0 ; r0 set to 0x20
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(loc_8C0E7E50,pc),r0 ; r0 set to 0x8C15F338
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

loc_8C0E7D7E:
mov r4,r3
mov.l @(loc_8C0E7E54,pc),r1 ; r1 set to 0x8C15F344
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

#align4
loc_8C0E7D90:
#data 0x4F229155
#data 0x314C8444
#data 0x7001D32f
#data 0x904E8044
#data 0x320C5246
#data 0x70E4430b
#data 0xE101904a
#data 0x61430414
#data 0x71505046
#data 0x80428402
#data 0x84015046
#data 0xE0508041
#data 0xF3365346
#data 0xE054F437
#data 0xF3365346
#data 0x9038F437
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
#data 0x814EE000
#data 0xE3FFE031
#data 0x4F260434

#align4
loc_8C0E7E04:
#data 0xE300901c
#data 0x6E432FE6
#data 0x2FC62FD6
#data 0x5DE64F22
#data 0x90150E34
#data 0x600C00Dc
#data 0x8B078815
#data 0x600C84D6
#data 0x891B8809
#data 0x600C84D6
#data 0x8917880a

#align4
loc_8C0E7E30:
#data 0x64E34F26
#data 0x6DF66CF6
#data 0x6EF6A0E8
#data 0x00DC3000
#data 0x01A3012c
#data 0x000001D0

#align4
loc_8C0E7E48:
#data bank04.loc_8c044F12

loc_8C0E7E4C:
#data loc_8c0e7D6a

loc_8C0E7E50:
#data bank15.loc_8c15F338

loc_8C0E7E54:
#data bank15.loc_8c15F344

loc_8C0E7E58:
#data bank12.loc_8c129560

loc_8C0E7E5C:
#data bank12.loc_8c1294C8

loc_8C0E7E60:
#data 0x62D3E024
#data 0x61E303Dc
#data 0x0E347234
#data 0xD3347134
#data 0xE00C430b
#data 0xD233E020
#data 0x85EE0CEc
#data 0x63C36CCc
#data 0x4C004C08
#data 0x3C3C6403
#data 0x4C08634f
#data 0x4C004308
#data 0x43003C2c
#data 0xD32C3C3c
#data 0x7101614f
#data 0xE009430b
#data 0x61C181Ee
#data 0x8B424115
#data 0xE51BD128
#data 0xE60A67C1
#data 0x64E3410b
#data 0x630385C1
#data 0xC725435a
#data 0xF32DF208
#data 0x03DD903a
#data 0xF43C2338
#data 0xF4228D01
#data 0xF44d

loc_8C0E7ECE:
#data 0xE034
#data 0xF340F3E6
#data 0x85C2FE37
#data 0x435A6303
#data 0xF208C71d
#data 0xF32DE038
#data 0xF422F43c
#data 0xF340F3E6
#data 0x9024FE37
#data 0x600C00Dc
#data 0x8F078802
#data 0xD117E501
#data 0xF1E6E038
#data 0xF30D415a
#data 0xFE17F130

#align4
loc_8C0E7F08:
#data 0x740664C3
#data 0x23586341
#data 0x90118904
#data 0x02EDE301
#data 0x0E25223a

#align4
loc_8C0E7F1C:
#data 0xC8026041
#data 0xE0548903
#data 0xF34DF3E6
#data 0xFE37

loc_8C0E7F2A:
#data 0x9007
#data 0x0E54

loc_8C0E7F2E:
#data 0x4F26
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x01F90130
#data 0x0000012c

#align4
loc_8C0E7F40:
#data bank12.loc_8c1294C8

loc_8C0E7F44:
#data bank15.loc_8c15F2A8

loc_8C0E7F48:
#data bank12.loc_8c1292D4

loc_8C0E7F4C:
#data bank03.loc_8c034CD6
#data 0x3FD55555
#data 0x40092492
#data 0x42092492


loc_8C0E7F5C:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
tst r0,r0
bf loc_8C0E7FF2
mov.b @(0x04,r14),r0 	
mov.w @(loc_8C0E8020,pc),r1 ; r1 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0E8028,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0E8020,pc),r0 ; r0 set to 0xDc
mov.l @(0x18,r14),r2
add r0,r2
jsr @r3
add 0xE4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0E8022,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E8024,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E802C,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r14),r1
mov 0x24,r0 ; r0 set to 0x24
mov 0x1B,r5 ; r5 set to 0x1b
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov 0x0B,r6 ; r6 set to 0x0b
mov.b r3,@(r0,r14) 	
mov.l @(loc_8C0E8030,pc),r3 ; r3 set to 0x8C034C38
jsr @r3
mov r14,r4
mov.l @(0x14,r14),r2
mov r14,r1
mov.l @(loc_8C0E802C,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r1
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.w @(loc_8C0E8026,pc),r0 ; r0 set to 0x41c
mov.l @(0x18,r14),r1
fmov.s @(r0,r1),fr3 ; r3 ??? bc r1 is ???	
mov 0x38,r0 ; r0 set to 0x38
bra loc_8C0E8006
fmov.s fr3,@(r0,r14) 	

loc_8C0E7FF2:
mov.l @(loc_8C0E8034,pc),r2 ; r2 set to 0x8C034D8c
jsr @r2
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt loc_8C0E8006
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0E801a
mov.l @r15+,r14

loc_8C0E8006:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E800C:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0E8022,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0E801A:
mov.l @(loc_8C0E8038,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0E8020:
#data 0x00Dc

loc_8C0E8022:
#data 0x012c

loc_8C0E8024:
#data 0x01A3

loc_8C0E8026:
#data 0x041c

#align4
loc_8C0E8028:
#data bank12.loc_8c129560

loc_8C0E802C:
#data bank12.loc_8c1294C8

loc_8C0E8030:
#data bank03.loc_8c034C38

loc_8C0E8034:
#data bank03.loc_8c034D8c

loc_8C0E8038:
#data bank04.loc_8c0450C0
#data 0x4F222FE6
#data 0x6E437FF8
#data 0x00096053
#data 0xE503D34b
#data 0x2F6080F4
#data 0x430BE600
#data 0x20086463
#data 0x64038D14
#data 0xE0269284
#data 0xE120D346
#data 0x9580314c
#data 0x04251434
#data 0x14E6354c
#data 0x804184E1
#data 0x210084F4
#data 0x63F0E021
#data 0x90750434
#data 0x253103Ed
#data 0x00096043
#data 0x4F267F08
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x4F222FE6
#data 0x6E437FF8
#data 0x00096053
#data 0xE504D336
#data 0x2F6080F4
#data 0x430BE600
#data 0x20086463
#data 0x64038D14
#data 0xE026925a
#data 0xE120D331
#data 0x9556314c
#data 0x04251434
#data 0x14E6354c
#data 0x804184E1
#data 0x210084F4
#data 0x63F0E021
#data 0x904B0434
#data 0x253103Ed
#data 0x00096043
#data 0x4F267F08
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0E80E4:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0E8180,pc),r0 ; r0 set to 0x8C15F354
extu.b r3,r3
mov.l @(0x18,r14),r5
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0E80FA:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0E816E,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0E816E,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0E8184,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0E8170,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0E8172,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E8174,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E8188,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov.b r2,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
tst r3,r3
bf loc_8C0E818c
mov 0x31,r0 ; r0 set to 0x31
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
bra loc_8C0E8190
mov.b r3,@(r0,r14) 	
#data 0x00CC3100
#data 0x0158

loc_8C0E816E:
#data 0x00Dc

loc_8C0E8170:
#data 0x00C0

loc_8C0E8172:
#data 0x012c

loc_8C0E8174:
#data 0x01A3
#data 0x0000

#align4
loc_8C0E8178:
#data bank04.loc_8c044F12

loc_8C0E817C:
#data loc_8c0e80E4

loc_8C0E8180:
#data bank15.loc_8c15F354

loc_8C0E8184:
#data bank12.loc_8c129560

loc_8C0E8188:
#data bank12.loc_8c1294C8

loc_8C0E818C:
#data 0x0E44E031

#align4
loc_8C0E8190:
#data 0x03ECE021
#data 0x89022338
#data 0xE3009081
#data 0x0E34

loc_8C0E819E:
#data 0xE034
#data 0xF3D6D340
#data 0xE607E517
#data 0x9079FE37
#data 0xE038F3D6
#data 0xE03CFE37
#data 0xFE37F3D6
#data 0x64E3430b
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6A055


loc_8C0E81C8:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0E82A8,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt loc_8C0E820a
mov.b @(0x05,r14),r0 	
mov 0x01,r3 ; r3 set to 0x01
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov.w @(loc_8C0E829E,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r2
tst r2,r2
bf loc_8C0E81F4
mov.w @(loc_8C0E82A2,pc),r0 ; r0 set to 0x158
mov 0x08,r2 ; r2 set to 0x08
bra loc_8C0E81Fa
mov.b r2,@(r0,r14) 	

#align4
loc_8C0E81F4:
#data 0xE1099055
#data 0x0E14

loc_8C0E81FA:
#data 0x9052
#data 0xD329E517
#data 0x430B06Ec
#data 0xE05A64E3
#data 0x81Ee


loc_8C0E820A:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0E8210:
#data 0x4F222FE6
#data 0x430BD324
#data 0x85EE6E43
#data 0x81EE70Ff
#data 0x600F7001
#data 0x8B102008
#data 0x700184E5
#data 0xE02180E5
#data 0x233803Ec
#data 0xE60A8D03
#data 0xE3009031
#data 0x0E34

loc_8C0E823E:
#data 0x4F26
#data 0xE517D318
#data 0x432B64E3
#data 0x6EF6

loc_8C0E824A:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0E8250:
#data 0x4F222FE6
#data 0x430BD314
#data 0x600E6E43
#data 0x89054011
#data 0xE30084E4
#data 0x80E47001
#data 0x0E349019

#align4
loc_8C0E826C:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0E8272:
mov 0x24,r0 ; r0 set to 0x24
mov.l r14,@-r15
mov.b @(r0,r5),r3
mov r4,r14
mov.l @(loc_8C0E82AC,pc),r1 ; r1 set to 0x8C15F360
mov r14,r4
mov.b r3,@(r0,r14) 	
mov.b @(0x05,r14),r0 	
extu.b r0,r0 ; r0 set to 0x24
shll2 r0 ; r0 set to 0x90
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0E828C:
mov r4,r3
mov.l @(loc_8C0E82B0,pc),r1 ; r1 set to 0x8C15F36c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0E829E:
#data 0x012c
#data 0x041c

loc_8C0E82A2:
#data 0x0158

#align4
loc_8C0E82A4:
#data bank03.loc_8c034e8c

loc_8C0E82A8:
#data bank03.loc_8c034dee

loc_8C0E82AC:
#data bank15.loc_8c15F360

loc_8C0E82B0:
#data bank15.loc_8c15F36c

loc_8C0E82B4:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x4F229186
#data 0x31EC84E4
#data 0x70019282
#data 0x80E4D344
#data 0x430B907f
#data 0x907D32Dc
#data 0x61E3E201
#data 0x0E247150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC906f
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD3360E34
#data 0xE00C430b
#data 0x02DCE024
#data 0x0E24E3Ff
#data 0x0E34E031
#data 0xF3D6E034
#data 0xC731FE37
#data 0xE038F308
#data 0xF230F2D6
#data 0xE03CFE27
#data 0xFE27F2D6
#data 0xF208C72d
#data 0xFE27E05c
#data 0x03ED904c
#data 0x89032338
#data 0xF2E6E05c
#data 0xFE27F24d

#align4
loc_8C0E8348:
#data 0xD328E15c
#data 0xE03431Ec
#data 0xF2E6F318
#data 0xE606E517
#data 0xFE27F230
#data 0x64E3430b
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6

loc_8C0E836A:
#data 0x2FE6
#data 0x94326E43
#data 0x34EC9032
#data 0x62414F22
#data 0x3320035d
#data 0xE05C8B14
#data 0xE034F3E6
#data 0xF230F256
#data 0xE060FE27
#data 0xE038F3E6
#data 0xF230F256
#data 0xE024FE27
#data 0x0E34035c
#data 0x430BD314
#data 0x600E64E3
#data 0x89054011

#align4
loc_8C0E83A8:
#data 0xE30084E4
#data 0x80E47001
#data 0x0E34900e

#align4
loc_8C0E83B4:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0E83BA:
mov r4,r3
mov.l @(loc_8C0E83F4,pc),r1 ; r1 set to 0x8C15F37c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x00C000Dc
#data 0x01A3012c
#data 0x00CC0130
#data 0x00000158

#align4
loc_8C0E83DC:
#data bank12.loc_8c129560

loc_8C0E83E0:
#data bank12.loc_8c1294C8
#data 0x43384924
#data 0xC13AAAAa

#align4
loc_8C0E83EC:
#data bank03.loc_8c034e8c

loc_8C0E83F0:
#data bank03.loc_8c034dee

loc_8C0E83F4:
#data bank15.loc_8c15F37c

loc_8C0E83F8:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x4F229175
#data 0x31EC84E4
#data 0x70019271
#data 0x80E4D33b
#data 0x430B906e
#data 0x906C32Dc
#data 0x61E3E401
#data 0x0E447150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC905e
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD32D0E34
#data 0xE00C430b
#data 0xD32CE024
#data 0xE51702Dc
#data 0x0E24E605
#data 0x0E44E031
#data 0xF3D6E03c
#data 0x430BFE37
#data 0x65D364E3
#data 0x81EEE010
#data 0x4F2664E3
#data 0x6EF66DF6

#align4
loc_8C0E8478:
#data 0x6E432FE6
#data 0x903B943b
#data 0x4F2234Ec
#data 0x035D6241
#data 0x8B123320
#data 0x035CE024
#data 0xE0340E34
#data 0xD31CF356
#data 0xE038FE37
#data 0xFE37F356
#data 0x64E3430b
#data 0x70FF85Ee
#data 0x700181Ee
#data 0x2008600f
#data 0x8B05

loc_8C0E84B2:
#data 0x84E4
#data 0x7001E300
#data 0x901A80E4
#data 0x0E34

loc_8C0E84BE:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0E84C4:
mov r4,r3
mov.l @(loc_8C0E850C,pc),r1 ; r1 set to 0x8C15F38c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0E84D6:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0E84F2,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0E84E4:
mov.l @(loc_8C0E8510,pc),r3 ; r3 set to 0x8C0450C0
mov 0x00,r2 ; r2 set to 0x00
mov.w @(loc_8C0E84F2,pc),r0 ; r0 set to 0x12c
jmp @r3
mov.b r2,@(r0,r4) 	
#data 0x00Dc
#data 0x00C0

loc_8C0E84F2:
#data 0x012c
#data 0x00CC01A3
#data 0x00000158

#align4
loc_8C0E84FC:
#data bank12.loc_8c129560

loc_8C0E8500:
#data bank12.loc_8c1294C8

loc_8C0E8504:
#data bank03.loc_8c034e8c

loc_8C0E8508:
#data bank03.loc_8c034dee

loc_8C0E850C:
#data bank15.loc_8c15F38c

loc_8C0E8510:
#data bank04.loc_8c0450C0
#data 0x4F222FE6
#data 0x6E437FF8
#data 0x00096053
#data 0xE503D35a
#data 0x2F6080F4
#data 0x430BE600
#data 0x20086463
#data 0x64038D14
#data 0xE02692A1
#data 0xE120D355
#data 0x959D314c
#data 0x04251434
#data 0x14E6354c
#data 0x804184E1
#data 0x210084F4
#data 0x63F0E021
#data 0x90920434
#data 0x253103Ed
#data 0x00096043
#data 0x4F267F08
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0E8568:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0E8694,pc),r0 ; r0 set to 0x8C15F3C4
extu.b r3,r3
mov.l @(0x18,r14),r5
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0E857E:
#data 0x2FE6
#data 0x4F222FD6
#data 0x6E437FFc
#data 0x917984E4
#data 0x70016D53
#data 0x80E4D341
#data 0x907431Ec
#data 0x430B9272
#data 0x907132Dc
#data 0x61E3E401
#data 0x0E447150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC9063
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD3320E34
#data 0xE00C430b
#data 0x02DCE024
#data 0x0E24E3Ff
#data 0x0E449050
#data 0x0E34E031
#data 0xF3D6E034
#data 0xFE37D32c
#data 0xF3D6E038
#data 0xE03CFE37
#data 0x430BF3D6
#data 0xE403FE37
#data 0x2409D628
#data 0x4400644c
#data 0x65434400
#data 0x00096043
#data 0x9039036d
#data 0xD324435a
#data 0xF32D02Ed
#data 0x2228435a
#data 0xF322F20d
#data 0x8D01F33d
#data 0x644B045a

#align4
loc_8C0E862C:
#data 0x62E3644f
#data 0xE05C445a
#data 0xF32D356c
#data 0xE060FE37
#data 0x2F26320c
#data 0xD2178551
#data 0x435A6303
#data 0xC71863F6
#data 0xF32DF008
#data 0xF23EF238
#data 0xF32A420b
#data 0xD316C907
#data 0x2F00660c
#data 0x4600D013
#data 0x066DE51b
#data 0x64E3430b
#data 0x65D364E3
#data 0x4F267F04
#data 0xA0456DF6
#data 0x32006EF6
#data 0x015800Cc
#data 0x00C000Dc
#data 0x01A3012c
#data 0x00000130

#align4
loc_8C0E868C:
#data bank04.loc_8c044F12

loc_8C0E8690:
#data loc_8c0e8568

loc_8C0E8694:
#data bank15.loc_8c15F3C4

loc_8C0E8698:
#data bank12.loc_8c129560

loc_8C0E869C:
#data bank12.loc_8c1294C8

loc_8C0E86A0:
#data bank03.loc_8c03319e

loc_8C0E86A4:
#data bank15.loc_8c15F39c
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0E86B0:
#data bank15.loc_8c15F3Ac

loc_8C0E86B4:
#data bank03.loc_8c034C38

loc_8C0E86B8:
#data 0x2FE6E034
#data 0xE15C6E43
#data 0xD35031Ec
#data 0xF3564F22
#data 0xE038FE37
#data 0xFE37F356
#data 0xF2E6E034
#data 0xE160F318
#data 0xF23031Ec
#data 0xE038FE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x64E3430b
#data 0x4011600e
#data 0x90808905
#data 0x0E34E300
#data 0x700184E4
#data 0x80E4

loc_8C0E86FE:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0E8704:
mov 0x24,r0 ; r0 set to 0x24
mov.l r14,@-r15
mov.b @(r0,r5),r3
mov r4,r14
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0E87F8,pc),r0 ; r0 set to 0x159
mov.b @(r0,r5),r2
tst r2,r2
bt loc_8C0E8720
mov.b @(0x04,r14),r0 	
add 0x01,r0 ; r0 set to 0x15a
mov.b r0,@(0x04,r14) 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E8720:
mov.b @(0x05,r14),r0 	
mov r14,r4
mov.l @(loc_8C0E8808,pc),r1 ; r1 set to 0x8C15F3Dc
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0E8734:
mov r4,r3
mov.l @(loc_8C0E880C,pc),r1 ; r1 set to 0x8C15F3E0
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0E8746:
#data 0x2FE6
#data 0x2FD66E43
#data 0x91546D53
#data 0x84E44F22
#data 0x925031Ec
#data 0xD32D7001
#data 0x904D80E4
#data 0x32DC430b
#data 0xE4019047
#data 0x715061E3
#data 0x84D20E44
#data 0x84D180E2
#data 0xE05080E1
#data 0xFE37F3D6
#data 0xF3D6E054
#data 0x903CFE37
#data 0x0E3403Dc
#data 0x02DC7001
#data 0xE0300E24
#data 0x62D303Dc
#data 0x0E347250
#data 0x430BD31e
#data 0xE024E00c
#data 0xE3FF02Dc
#data 0x90260E24
#data 0xE0310E44
#data 0xE0340E34
#data 0xFE37F3D6
#data 0xF3D6E038
#data 0xE03CFE37
#data 0xFE37F3D6
#data 0xF308C715
#data 0xFE37E05c
#data 0x03ED901a
#data 0x89032338
#data 0xF3E6E05c
#data 0xFE37F34d

#align4
loc_8C0E87D8:
#data 0xD311C710
#data 0xE060F308
#data 0xFE37E51b
#data 0x430BE600
#data 0x4F2664E3
#data 0x64E365D3
#data 0xA03D6DF6
#data 0x012C6EF6

loc_8C0E87F8:
#data 0x0159
#data 0x00Dc
#data 0x01A300C0
#data 0x00000130

#align4
loc_8C0E8804:
#data bank03.loc_8c034D8c

loc_8C0E8808:
#data bank15.loc_8c15F3Dc

loc_8C0E880C:
#data bank15.loc_8c15F3E0

loc_8C0E8810:
#data bank12.loc_8c129560

loc_8C0E8814:
#data bank12.loc_8c1294C8
#data 0xC3805555
#data 0x431A4924

#align4
loc_8C0E8820:
#data bank03.loc_8c034C38

loc_8C0E8824:
#data 0x2FE6E034
#data 0xE15C6E43
#data 0xD34C31Ec
#data 0xF3564F22
#data 0xE038FE37
#data 0xFE37F356
#data 0xF2E6E034
#data 0xE160F318
#data 0xF23031Ec
#data 0xE038FE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x64E3430b
#data 0x4011600e
#data 0x90788905
#data 0x0E34E300
#data 0x700184E4
#data 0x80E4

loc_8C0E886A:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0E8870:
mov 0x24,r0 ; r0 set to 0x24
mov.l r14,@-r15
mov.b @(r0,r5),r3
mov r4,r14
mov.w @(loc_8C0E8954,pc),r4 ; r4 set to 0xCc
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0E8956,pc),r0 ; r0 set to 0x158
add r14,r4 ; r4 ??? bc r14 is ???	
mov.w @r4,r3
mov.w @(r0,r5),r2
cmp/eq r3,r2
bt loc_8C0E8892
mov.b @(0x04,r14),r0 	
add 0x01,r0 ; r0 set to 0x159
mov.b r0,@(0x04,r14) 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E8892:
mov.b @(0x05,r14),r0 	
mov r14,r4
mov.l @(loc_8C0E8964,pc),r1 ; r1 set to 0x8C15F3F0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x000b
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0E88A6:
mov r4,r3
mov.l @(loc_8C0E8968,pc),r1 ; r1 set to 0x8C15F3F4
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0E88B8:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.l r12,@-r15
mov.w @(loc_8C0E8958,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0E8954,pc),r12 ; r12 set to 0xCc
add 0x01,r0
mov.w @(loc_8C0E8958,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r14) 	
add r14,r12 ; r12 ??? bc r14 is ???	
mov.w @(loc_8C0E895A,pc),r0 ; r0 set to 0xC0
mov.l @(loc_8C0E896C,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0E8952,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E895C,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E8970,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0E8952,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mova @(loc_8C0E8974,pc),r0  ; r0 set to 0x8C0E8974
fmov.s @r0,fr3 ; r3 ??	
mov 0x50,r0 ; r0 set to 0x50
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0E8978,pc),r0  ; r0 set to 0x8C0E8978
fmov.s @r0,fr3
mov.w @(loc_8C0E895E,pc),r0 ; r0 set to 0x108
fmov.s fr3,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr3
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
bf loc_8C0E897c
mov.w @(loc_8C0E8956,pc),r0 ; r0 set to 0x158
mov 0x07,r3 ; r3 set to 0x07
bra loc_8C0E8982
mov.b r3,@(r0,r14) 	

loc_8C0E8952:
#data 0x012c

loc_8C0E8954:
#data 0x00Cc

loc_8C0E8956:
#data 0x0158

loc_8C0E8958:
#data 0x00Dc

loc_8C0E895A:
#data 0x00C0

loc_8C0E895C:
#data 0x01A3

loc_8C0E895E:
#data 0x0108

#align4
loc_8C0E8960:
#data bank03.loc_8c034D8c

loc_8C0E8964:
#data bank15.loc_8c15F3F0

loc_8C0E8968:
#data bank15.loc_8c15F3F4

loc_8C0E896C:
#data bank12.loc_8c129560

loc_8C0E8970:
#data bank12.loc_8c1294C8

loc_8C0E8974:
#data 0x3FC00000

#align4
loc_8C0E8978:
#data 0x3F000000

#align4
loc_8C0E897C:
#data 0xE1089086
#data 0x0E14

loc_8C0E8982:
#data 0x9083
#data 0xD345E51b
#data 0x666C06Ec
#data 0x64E3430b
#data 0xF38DE05c
#data 0x907AFE37
#data 0x233803Ed
#data 0xE05C8903
#data 0xF34DF3E6
#data 0xFE37

loc_8C0E89A6:
#data 0xE020
#data 0x600C00Ec
#data 0x8B048802
#data 0xF308C73b
#data 0xA007E060
#data 0xFE37

loc_8C0E89BA:
#data 0xC73a
#data 0xF3089368
#data 0xFE37E060
#data 0x0E36E048

#align4
loc_8C0E89C8:
#data 0x65D3E000
#data 0xE00380C2
#data 0x64E380C3
#data 0x6CF64F26
#data 0xA0206DF6
#data 0x6EF6


loc_8C0E89DE:
mov.w @(loc_8C0E8A92,pc),r0 ; r0 set to 0x1A0
mov.b @(r0,r5),r3
tst r3,r3
bt loc_8C0E89Ee
mov.w @(loc_8C0E8A94,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
bra loc_8C0E89F4
mov.b r3,@(r0,r4) 	

loc_8C0E89EE:
mov.w @(loc_8C0E8A94,pc),r0 ; r0 set to 0x12c
mov 0x01,r1 ; r1 set to 0x01
mov.b r1,@(r0,r4) 	

loc_8C0E89F4:
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r5),fr3
mov 0x5C,r1 ; r1 set to 0x5C, r1 set to 0x5c
add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???	
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r4),fr2
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60, r1 set to 0x60
add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r4),fr2
fmov.s @r1,fr3
fadd fr3,fr2
rts 	
fmov.s fr2,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0E8A1E:
#data 0x2FE6
#data 0x2FD66E43
#data 0x2FC69D38
#data 0x3DEC6C53
#data 0x4F229433
#data 0x70FF84D3
#data 0x700180D3
#data 0x2008600e
#data 0x34CC8F1e
#data 0xE30584D2
#data 0x80D27001
#data 0x303784D2
#data 0xE0008B01
#data 0x80D2

loc_8C0E8A52:
#data 0xD115
#data 0x001C844d
#data 0xE02180D3
#data 0x233803Ec
#data 0xA0018B01
#data 0xE307

loc_8C0E8A66:
#data 0xE308

#align4
loc_8C0E8A68:
#data 0xE51B9010
#data 0x84D20E34
#data 0x6703D30e
#data 0x06EC900a
#data 0x64E3430b

#align4
loc_8C0E8A7C:
#data 0x02ECE021
#data 0x8B152228
#data 0xE300E024
#data 0x0E34A015
#data 0x01300158
#data 0x0A00

loc_8C0E8A92:
#data 0x01A0

loc_8C0E8A94:
#data 0x012c
#data 0x02A4
#data 0x000000Cc

#align4
loc_8C0E8A9C:
#data bank03.loc_8c034C38
#data 0x433C9249
#data 0x43654924

#align4
loc_8C0E8AA8:
#data bank15.loc_8c15F3Bc

loc_8C0E8AAC:
#data bank03.loc_8c034CD6

loc_8C0E8AB0:
#data 0xE107E024
#data 0x0E14

loc_8C0E8AB6:
#data 0x90Aa
#data 0x03CD62D1
#data 0x89033320
#data 0x700184E4
#data 0x80E4A00c

#align4
loc_8C0E8AC8:
#data 0x84E54F26
#data 0xD15365C3
#data 0x6CF664E3
#data 0x4008600c
#data 0x031E6DF6
#data 0x6EF6432b

#align4
loc_8C0E8AE0:
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0E8AEA:
mov r4,r3
mov.l @(loc_8C0E8C20,pc),r1 ; r1 set to 0x8C15F408
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0E8AFC:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0E8C10,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0E8C10,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0E8C24,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0E8C12,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0E8C14,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E8C16,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E8C28,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov 0x00,r3 ; r3 set to 0x00
mov 0x0F,r5 ; r5 set to 0x0f
mov.b r2,@(r0,r14) 	
mov 0x05,r6 ; r6 set to 0x05
mov.w @(loc_8C0E8C14,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r4,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
mov.l @(loc_8C0E8C2C,pc),r3 ; r3 set to 0x8C034E8c
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???	
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
bra loc_8C0E8BC6
mov.l @r15+,r14

loc_8C0E8B8C:
mov.l r14,@-r15
mov 0x34,r0 ; r0 set to 0x34
mov r5,r14
fmov.s @(r0,r14),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0E8C18,pc),r0 ; r0 set to 0x140
mov.b @(r0,r14),r3
tst r3,r3
bf loc_8C0E8BAc
mov.w @(loc_8C0E8C14,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
bra loc_8C0E8BC2
mov.b r3,@(r0,r4) 	

loc_8C0E8BAC:
mov.w @(loc_8C0E8C14,pc),r0 ; r0 set to 0x12c
mov 0x01,r1 ; r1 set to 0x01
mov.l @(loc_8C0E8C30,pc),r3 ; r3 set to 0x8C034F54
mov 0x0F,r5 ; r5 set to 0x0f
mov.b r1,@(r0,r4) 	
add 0x14,r0 ; r0 set to 0x140
mov.b @(r0,r14),r7
mov 0x05,r6 ; r6 set to 0x05
add 0xF0,r7
jmp @r3
mov.l @r15+,r14

loc_8C0E8BC2:
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E8BC6:
mov 0x24,r0 ; r0 set to 0x24
mov.l r14,@-r15
mov.b @(r0,r5),r3
mov r4,r14
mov.w @(loc_8C0E8C1A,pc),r4 ; r4 set to 0xCc
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0E8C0E,pc),r0 ; r0 set to 0x158
add r14,r4 ; r4 ??? bc r14 is ???	
mov.w @r4,r3
mov.w @(r0,r5),r2
cmp/eq r3,r2
bt loc_8C0E8BE8
mov.b @(0x04,r14),r0 	
add 0x01,r0 ; r0 set to 0x159
mov.b r0,@(0x04,r14) 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E8BE8:
mov.b @(0x05,r14),r0 	
mov r14,r4
mov.l @(loc_8C0E8C34,pc),r1 ; r1 set to 0x8C15F418
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0E8BFC:
mov r4,r3
mov.l @(loc_8C0E8C38,pc),r1 ; r1 set to 0x8C15F41c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0E8C0E:
#data 0x0158

loc_8C0E8C10:
#data 0x00Dc

loc_8C0E8C12:
#data 0x00C0

loc_8C0E8C14:
#data 0x012c

loc_8C0E8C16:
#data 0x01A3

loc_8C0E8C18:
#data 0x0140

loc_8C0E8C1A:
#data 0x00Cc

#align4
loc_8C0E8C1C:
#data bank15.loc_8c15F404

loc_8C0E8C20:
#data bank15.loc_8c15F408

loc_8C0E8C24:
#data bank12.loc_8c129560

loc_8C0E8C28:
#data bank12.loc_8c1294C8

loc_8C0E8C2C:
#data bank03.loc_8c034e8c

loc_8C0E8C30:
#data bank03.loc_8c034F54

loc_8C0E8C34:
#data bank15.loc_8c15F418

loc_8C0E8C38:
#data bank15.loc_8c15F41c


loc_8C0E8C3C:
mov.w @(loc_8C0E8CD4,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.w @(loc_8C0E8CD6,pc),r0 ; r0 set to 0xC0
add r4,r1 ; r1 ??? bc r4 is ???	
mov.w @(loc_8C0E8CD4,pc),r2 ; r2 set to 0xDc
mov.l @(loc_8C0E8CDC,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0E8CD8,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E8CDA,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E8CE0,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x00,r3 ; r3 set to 0x00
mov.l @(loc_8C0E8CE4,pc),r5 ; r5 set to 0x8C26A518
mov.b r2,@(r0,r4) 	
mov.w @(loc_8C0E8CD8,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	
mov 0x03,r0 ; r0 set to 0x03
mov.b r0,@(0x05,r5) 	
mov r6,r0 ; r0 set to 0x01
nop 	
mov.b r0,@(0x06,r5) 	
mov 0x02,r0 ; r0 set to 0x02
lds.l @r15+,pr 	
rts 	
mov.b r0,@(0x04,r4) 	
;-------------------------------------------------------------------------------

loc_8C0E8CA6:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0E8CAA:
mov r4,r3
mov.l @(loc_8C0E8CE8,pc),r1 ; r1 set to 0x8C15F42c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0E8CBC:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0E8CD8,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0E8CCA:
mov.l @(loc_8C0E8CEC,pc),r3 ; r3 set to 0x8C0450C0
mov 0x00,r2 ; r2 set to 0x00
mov.w @(loc_8C0E8CD8,pc),r0 ; r0 set to 0x12c
jmp @r3
mov.b r2,@(r0,r4) 	

loc_8C0E8CD4:
#data 0x00Dc

loc_8C0E8CD6:
#data 0x00C0

loc_8C0E8CD8:
#data 0x012c

loc_8C0E8CDA:
#data 0x01A3

#align4
loc_8C0E8CDC:
#data bank12.loc_8c129560

loc_8C0E8CE0:
#data bank12.loc_8c1294C8

loc_8C0E8CE4:
#data 0x8C26A518

#align4
loc_8C0E8CE8:
#data bank15.loc_8c15F42c

loc_8C0E8CEC:
#data bank04.loc_8c0450C0
#data 0x4F222FE6
#data 0x6E437FF8
#data 0x00096053
#data 0xE503D34f
#data 0x2F6080F4
#data 0x430BE600
#data 0x20086463
#data 0x64038D14
#data 0xE026928d
#data 0xE120D34a
#data 0x9589314c
#data 0x04251434
#data 0x14E6354c
#data 0x804184E1
#data 0x210084F4
#data 0x63F0E021
#data 0x907E0434
#data 0x253103Ed
#data 0x00096043
#data 0x4F267F08
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0E8D44:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0E8E44,pc),r0 ; r0 set to 0x8C15F43c
extu.b r3,r3
mov.l @(0x18,r14),r5
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0E8D5A:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0E8E34,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0E8E34,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0E8E48,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0E8E36,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0E8E38,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E8E3A,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E8E4C,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
fldi0 fr4
mov.b @(r0,r13),r2
mov 0x12,r5 ; r5 set to 0x12
mov.l @(loc_8C0E8E50,pc),r3 ; r3 set to 0x8C034E8c
mov 0x04,r6 ; r6 set to 0x04
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0E8E38,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r4,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???	
mov r13,r5 ; r5 ??? bc r13 is ???	
mov 0x3C,r0 ; r0 set to 0x3c
mov.w r0,@(0x1C,r14) 	
mov r14,r4
lds.l @r15+,pr 	
mov.l @r15+,r13
bra loc_8C0E8FC8
mov.l @r15+,r14

loc_8C0E8DFE:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0E8E54,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r4,r14
mov.w @(0x1C,r14),r0 	
add 0xFF,r0
mov.w r0,@(0x1C,r14) 	
exts.w r0,r0
tst r0,r0
bf loc_8C0E8E28
mov.b @(0x05,r14),r0 	
mov r14,r4
mov.l @(loc_8C0E8E50,pc),r3 ; r3 set to 0x8C034E8c
mov 0x05,r6 ; r6 set to 0x05
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov 0x12,r5 ; r5 set to 0x12
lds.l @r15+,pr 	
jmp @r3
mov.l @r15+,r14

loc_8C0E8E28:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x3300
#data 0x015800Cc

loc_8C0E8E34:
#data 0x00Dc

loc_8C0E8E36:
#data 0x00C0

loc_8C0E8E38:
#data 0x012c

loc_8C0E8E3A:
#data 0x01A3

#align4
loc_8C0E8E3C:
#data bank04.loc_8c044F12

loc_8C0E8E40:
#data loc_8c0e8D44

loc_8C0E8E44:
#data bank15.loc_8c15F43c

loc_8C0E8E48:
#data bank12.loc_8c129560

loc_8C0E8E4C:
#data bank12.loc_8c1294C8

loc_8C0E8E50:
#data bank03.loc_8c034e8c

loc_8C0E8E54:
#data bank03.loc_8c034dee


loc_8C0E8E58:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0E8FB4,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt loc_8C0E8E88
mov.b @(0x05,r14),r0 	
mov r14,r4
mov.l @(loc_8C0E8FBC,pc),r3 ; r3 set to 0x8C034E8c
mov 0x06,r6 ; r6 set to 0x06
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov 0x10,r0 ; r0 set to 0x10
mov.w r0,@(0x1C,r14) 	
mova @(loc_8C0E8FB8,pc),r0  ; r0 set to 0x8C0E8FB8
fmov.s @r0,fr3 ; r3 ??	
mov 0x60,r0 ; r0 set to 0x60
mov 0x12,r5 ; r5 set to 0x12
fmov.s fr3,@(r0,r14) 	
lds.l @r15+,pr 	
jmp @r3
mov.l @r15+,r14

loc_8C0E8E88:
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E8E8E:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov 0x60,r1 ; r1 set to 0x60
mov r4,r14
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0E8FB4,pc),r3 ; r3 set to 0x8C034DEe
mov 0x38,r0 ; r0 set to 0x38
mov.l r5,@r15
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
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
mov.w @(0x1C,r14),r0 	
add 0xFF,r0 ; r0 set to 0x5f
mov.w r0,@(0x1C,r14) 	
exts.w r0,r0 ; r0 ??	
tst r0,r0
bf loc_8C0E8EEa
mov.b @(0x05,r14),r0 	
mov 0x12,r5 ; r5 set to 0x12
mov r14,r4
mov 0x07,r6 ; r6 set to 0x07
add 0x01,r0
mov.b r0,@(0x05,r14) 	
mov.w @(loc_8C0E8FAE,pc),r0 ; r0 set to 0x41c
mov.l @r15,r3
fmov.s @(r0,r3),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14) 	
mov 0x10,r0 ; r0 set to 0x10
mov.w r0,@(0x1C,r14) 	
add 0x04,r15
lds.l @r15+,pr 	
mov.l @(loc_8C0E8FBC,pc),r3 ; r3 set to 0x8C034E8c
jmp @r3
mov.l @r15+,r14

loc_8C0E8EEA:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E8EF2:
#data 0x2FE6
#data 0x7FF84F22
#data 0x6E43E160
#data 0x925731Ec
#data 0x6353E038
#data 0xD32B323c
#data 0x1F212F52
#data 0xF318F2E6
#data 0x31ECE16c
#data 0xFE27F230
#data 0xF2E6E060
#data 0xF230F318
#data 0x430BFE27
#data 0x85EE64E3
#data 0x81EE70Ff
#data 0x2008600f
#data 0x84E58B19
#data 0xE608E512
#data 0x80E57001
#data 0x63F29037
#data 0xE038F336
#data 0xFE37D31d
#data 0x81EEE01e
#data 0xF308C71c
#data 0xFE37E060
#data 0xF308C71b
#data 0xFE37E06c
#data 0x64E3430b
#data 0xE00152F1
#data 0x8021

loc_8C0E8F66:
#data 0x7F08
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0E8F6E:
#data 0x2FE6
#data 0xE1606E43
#data 0x31ECD30f
#data 0x4F22E038
#data 0xE16CF318
#data 0x31ECF2E6
#data 0xFE27F230
#data 0xF2E6E060
#data 0xF230F318
#data 0x430BFE27
#data 0x85EE64E3
#data 0x81EE70Ff
#data 0x2008600f
#data 0x84E48B02
#data 0x80E47001

#align4
loc_8C0E8FA8:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0E8FAE:
#data 0x041c
#data 0x000002A4

#align4
loc_8C0E8FB4:
#data bank03.loc_8c034dee

loc_8C0E8FB8:
#data 0x40092492

#align4
loc_8C0E8FBC:
#data bank03.loc_8c034e8c
#data 0x40892492
#data 0x3F092492


loc_8C0E8FC8:
mov 0x24,r0 ; r0 set to 0x24
mov.l r14,@-r15
mov.b @(r0,r5),r3
mov r4,r14
mov.l @(loc_8C0E9104,pc),r1 ; r1 set to 0x8C15F448
mov r14,r4
mov.b r3,@(r0,r14) 	
mov.b @(0x05,r14),r0 	
extu.b r0,r0 ; r0 set to 0x24
shll2 r0 ; r0 set to 0x90
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0E8FE2:
mov r4,r3
mov.l @(loc_8C0E9108,pc),r1 ; r1 set to 0x8C15F45c
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0E8FF4:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0E90F6,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0E90F6,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0E910C,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0E90F8,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0E90FA,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E90FC,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E9110,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
fldi0 fr4
mov.b @(r0,r13),r2
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0E90FA,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r4,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0E9114,pc),r0  ; r0 set to 0x8C0E9114
fmov.s @r0,fr4 ; r4 ??	
mov.w @(loc_8C0E90FE,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bf loc_8C0E9092
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r14),fr3
bra loc_8C0E9098
fadd fr4,fr3

loc_8C0E9092:
#data 0xE034
#data 0xF341F3E6

#align4
loc_8C0E9098:
#data 0xE512D31f
#data 0xE60AFE37
#data 0x64E3430b
#data 0xE03C65D3
#data 0x64E381Ee
#data 0x6DF64F26
#data 0x6EF6

loc_8C0E90B2:
#data 0x4F22
#data 0x93237FF8
#data 0x335CD218
#data 0x1F312F42
#data 0x64F2420b
#data 0x843153F1
#data 0x89032008
#data 0x842462F2
#data 0x80247001

#align4
loc_8C0E90D4:
#data 0x4F267F08
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0E90DC:
mov 0x24,r0 ; r0 set to 0x24
mov.l r14,@-r15
mov.b @(r0,r5),r3
mov r4,r14
mov.l @(loc_8C0E9120,pc),r1 ; r1 set to 0x8C15F46c
mov r14,r4
mov.b r3,@(r0,r14) 	
mov.b @(0x04,r14),r0 	
extu.b r0,r0 ; r0 set to 0x24
shll2 r0 ; r0 set to 0x90
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0E90F6:
#data 0x00Dc

loc_8C0E90F8:
#data 0x00C0

loc_8C0E90FA:
#data 0x012c

loc_8C0E90FC:
#data 0x01A3

loc_8C0E90FE:
#data 0x0130
#data 0x000002A4

#align4
loc_8C0E9104:
#data bank15.loc_8c15F448

loc_8C0E9108:
#data bank15.loc_8c15F45c

loc_8C0E910C:
#data bank12.loc_8c129560

loc_8C0E9110:
#data bank12.loc_8c1294C8

loc_8C0E9114:
#data 0x42055555

#align4
loc_8C0E9118:
#data bank03.loc_8c034e8c

loc_8C0E911C:
#data bank03.loc_8c034dee

loc_8C0E9120:
#data bank15.loc_8c15F46c


loc_8C0E9124:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0E9292,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0E9292,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0E92A4,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0E9294,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0E9296,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E9298,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E92A8,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
fldi0 fr4
mov.b @(r0,r13),r2
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov 0x17,r5 ; r5 set to 0x17
mov.b r2,@(r0,r14) 	
mov 0x07,r6 ; r6 set to 0x07
mov.w @(loc_8C0E9296,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov.l @(loc_8C0E92AC,pc),r3 ; r3 set to 0x8C034E8c
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???	
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0E91B2:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.w @(loc_8C0E929A,pc),r3 ; r3 set to 0x2A4, r3 set to 0x2A4
mov r5,r13
mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
mov r4,r14
add r13,r3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???	
mov.w @(loc_8C0E929C,pc),r4 ; r4 set to 0xCC, r4 set to 0xCc
mov.l r3,@r15
mov.b @(r0,r13),r3
add r14,r4 ; r4 ??? bc r14 is ???, r4 ??? bc r14 is ???	
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0E929E,pc),r0 ; r0 set to 0x158, r0 set to 0x158
mov.w @r4,r3
mov.w @(r0,r13),r2
cmp/eq r3,r2
bt loc_8C0E91Ec
mov.b @(0x04,r14),r0 	
mov r14,r4
mov r13,r5
add 0x01,r0 ; r0 set to 0x159, r0 set to 0x159
mov.b r0,@(0x04,r14) 	
add 0x04,r15
lds.l @r15+,pr 	
mov.l @r15+,r13
bra loc_8C0E92D2
mov.l @r15+,r14

loc_8C0E91EC:
mov.l @(loc_8C0E92B0,pc),r2 ; r2 set to 0x8C034DEe
jsr @r2
mov r14,r4
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0E92B4,pc),r5 ; r5 set to 0x8C15F47c
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0E92B8,pc),r0  ; r0 set to 0x8C0E92B8
fmov.s @r0,fr4
mov.w @(loc_8C0E92A0,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bf/s loc_8C0E9232
mov r5,r4 ; r4 set to 0x8C15F47c
mov 0x21,r3 ; r3 set to 0x21
fmov fr4,fr0 ; r0 ??	
add r14,r3 ; r3 ??? bc r14 is ???	
mov.b @r3,r3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???	
extu.b r3,r3
shll r3
shll r3
add r3,r4 ; r4 ??? bc r3 is ???	
mov.w @r4,r3
lds r3,fpul 	
float fpul,fr3
bra loc_8C0E924e
fmac fr0,fr3,fr2

loc_8C0E9232:
#data 0xE221
#data 0x622032Ec
#data 0xF2E6E034
#data 0x4200622c
#data 0x342C4200
#data 0x435A6341
#data 0xF342F32d
#data 0xF231

loc_8C0E924E:
#data 0xE321
#data 0x33ECFE27
#data 0xE03862E3
#data 0x2F26320c
#data 0x633C6330
#data 0x43004300
#data 0x8551353c
#data 0x435A6303
#data 0xC71363F6
#data 0xF32DF008
#data 0xF23EF238
#data 0x62F2F32a
#data 0x23386320
#data 0x84E48902
#data 0x80E47001

#align4
loc_8C0E9288:
#data 0x4F267F04
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0E9292:
#data 0x00Dc

loc_8C0E9294:
#data 0x00C0

loc_8C0E9296:
#data 0x012c

loc_8C0E9298:
#data 0x01A3

loc_8C0E929A:
#data 0x02A4

loc_8C0E929C:
#data 0x00Cc

loc_8C0E929E:
#data 0x0158

loc_8C0E92A0:
#data 0x0130
#data 0x0000

#align4
loc_8C0E92A4:
#data bank12.loc_8c129560

loc_8C0E92A8:
#data bank12.loc_8c1294C8

loc_8C0E92AC:
#data bank03.loc_8c034e8c

loc_8C0E92B0:
#data bank03.loc_8c034dee

loc_8C0E92B4:
#data bank15.loc_8c15F47c

loc_8C0E92B8:
#data 0x3FD55555
#data 0x40092492


loc_8C0E92C0:
mov r4,r3
mov.l @(loc_8C0E92EC,pc),r1 ; r1 set to 0x8C15F484
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0E92D2:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0E92EA,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0E92E0:
mov.l @(loc_8C0E92F0,pc),r3 ; r3 set to 0x8C0450C0
mov 0x00,r2 ; r2 set to 0x00
mov.w @(loc_8C0E92EA,pc),r0 ; r0 set to 0x12c
jmp @r3
mov.b r2,@(r0,r4) 	

loc_8C0E92EA:
#data 0x012c

#align4
loc_8C0E92EC:
#data bank15.loc_8c15F484

loc_8C0E92F0:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0xE600D34a
#data 0x2F501F41
#data 0x430BE503
#data 0x20086463
#data 0x64038D0d
#data 0xE020D346
#data 0x52F11434
#data 0xE2001426
#data 0x043463F0
#data 0x937BE022
#data 0xE0260424
#data 0x7F080435
#data 0x000B4F26
#data 0x4F226043
#data 0xD33C7FF8
#data 0x1F41E600
#data 0xE5032F50
#data 0x6463430b
#data 0x8D0D2008
#data 0xD3386403
#data 0x1434E022
#data 0x52F1E301
#data 0x04341426
#data 0x62F0E020
#data 0x0424935e
#data 0x0435E026
#data 0x4F267F08
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0E9368:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0E942C,pc),r1 ; r1 set to 0x8C15F494
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0E937C:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0E941A,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0E941A,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0E9430,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0E941C,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0E941E,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E9420,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E9434,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov.b r2,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
extu.b r0,r0
cmp/eq 0x00,r0 	
bt loc_8C0E93Fc
cmp/eq 0x01,r0 	
bt loc_8C0E9404
cmp/eq 0x02,r0 	
bt loc_8C0E9408
cmp/eq 0x03,r0 	
bt loc_8C0E940c
cmp/eq 0x04,r0 	
bt loc_8C0E9410
cmp/eq 0x05,r0 	
bt loc_8C0E9438
bra loc_8C0E943e
nop 	

loc_8C0E93FC:
mov 0x21,r0 ; r0 set to 0x21
mov 0x06,r3 ; r3 set to 0x06
bra loc_8C0E943e
mov.b r3,@(r0,r14) 	

loc_8C0E9404:
bra loc_8C0E943a
mov 0x02,r1

loc_8C0E9408:
bra loc_8C0E9412
mov 0x0A,r2

loc_8C0E940C:
bra loc_8C0E943a
mov 0x12,r1

loc_8C0E9410:
#data 0xE210


loc_8C0E9412:
mov 0x21,r0 ; r0 set to 0x21
bra loc_8C0E943e
mov.b r2,@(r0,r14) 	
#data 0x3400

loc_8C0E941A:
#data 0x00Dc

loc_8C0E941C:
#data 0x00C0

loc_8C0E941E:
#data 0x012c

loc_8C0E9420:
#data 0x01A3
#data 0x0000

#align4
loc_8C0E9424:
#data bank04.loc_8c044F12

loc_8C0E9428:
#data loc_8c0e9368

loc_8C0E942C:
#data bank15.loc_8c15F494

loc_8C0E9430:
#data bank12.loc_8c129560

loc_8C0E9434:
#data bank12.loc_8c1294C8

loc_8C0E9438:
#data 0xE114

loc_8C0E943A:
#data 0xE021
#data 0x0E14


loc_8C0E943E:
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0E9534,pc),r3 ; r3 set to 0x8C034E8c
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
mov 0x15,r5 ; r5 set to 0x15
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r4,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r6
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
bra loc_8C0E95Bc
mov.l @r15+,r14

loc_8C0E9466:
#data 0x2FE6
#data 0x90606E43
#data 0x6D532FD6
#data 0x4F222FC6
#data 0x02DC03Ec
#data 0x33209C58
#data 0x3CDC8D07
#data 0xE02107Dc
#data 0xE515D32c
#data 0x430B06Ec
#data 0x64E3

loc_8C0E948E:
#data 0xE022
#data 0x222802Ec
#data 0x904B891f
#data 0x233803Ec
#data 0x84C4891b
#data 0x8B182008
#data 0x05DE9045
#data 0x035C7035
#data 0x8D072338
#data 0xE03464E3
#data 0xFD37F3E6
#data 0xF3E6E038
#data 0xFD37A006

#align4
loc_8C0E94C0:
#data 0xF3D6E034
#data 0xE038FE37
#data 0xFE37F3D6

#align4
loc_8C0E94CC:
#data 0x430BD31b
#data 0xA0060009
#data 0x0009

loc_8C0E94D6:
#data 0xE034
#data 0xFE37F3D6
#data 0xF3D6E038
#data 0xFE37

loc_8C0E94E2:
#data 0x84C4
#data 0x89382008
#data 0x700184E5
#data 0xE02080E5
#data 0x600C00Ec
#data 0x890B8800
#data 0x890D8801
#data 0x890D8802
#data 0x890D8803
#data 0x890D8804
#data 0x89198805
#data 0x0009A01b

#align4
loc_8C0E9510:
#data 0xE307E021
#data 0x0E34A017

#align4
loc_8C0E9518:
#data 0xE103A013

#align4
loc_8C0E951C:
#data 0xE20BA003

#align4
loc_8C0E9520:
#data 0xE113A00f

loc_8C0E9524:
#data 0xE211

loc_8C0E9526:
#data 0xE021
#data 0x0E24A00d
#data 0x014102A4
#data 0x01C8014b

#align4
loc_8C0E9534:
#data bank03.loc_8c034e8c

loc_8C0E9538:
#data bank03.loc_8c034F54

loc_8C0E953C:
#data bank04.loc_8c04CC1c

loc_8C0E9540:
#data 0xE115

loc_8C0E9542:
#data 0xE021
#data 0x0E14

loc_8C0E9546:
#data 0x4F26
#data 0xD33DE021
#data 0xE51506Ec
#data 0x64E36CF6
#data 0x432B6DF6
#data 0x6EF6

loc_8C0E955A:
#data 0x4F26
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0E9564:
mov.l r14,@-r15
mov 0x34,r0 ; r0 set to 0x34
mov.l r13,@-r15
mov r5,r13
fmov.s @(r0,r13),fr3
mov r4,r14
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0E9634,pc),r0 ; r0 set to 0x14b
mov.b @(r0,r13),r3
tst r3,r3
bt loc_8C0E958e
mov.b @(0x04,r14),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0 ; r0 set to 0x14c
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0E9636,pc),r0 ; r0 set to 0x12c
bra loc_8C0E95B6
mov.b r3,@(r0,r14) 	

loc_8C0E958E:
mov.w @(loc_8C0E9638,pc),r0 ; r0 set to 0x141
mov.b @(r0,r13),r3
mov.b @(r0,r14),r2
cmp/eq r3,r2
bt loc_8C0E95B6
mov.b @(r0,r13),r2
mov 0x0B,r3 ; r3 set to 0x0b
cmp/ge r3,r2
bf loc_8C0E95A4
bra loc_8C0E95A6
mov 0x00,r7

loc_8C0E95A4:
mov.b @(r0,r13),r7

loc_8C0E95A6:
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
mov.l @r15+,r13
mov.l @(loc_8C0E9644,pc),r2 ; r2 set to 0x8C034F54, r2 set to 0x8C034F54
mov 0x15,r5 ; r5 set to 0x15, r5 set to 0x15
mov.b @(r0,r14),r6
mov r14,r4
jmp @r2
mov.l @r15+,r14

loc_8C0E95B6:
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E95BC:
mov 0x24,r0 ; r0 set to 0x24
mov.l r14,@-r15
mov.b @(r0,r5),r3
mov r4,r14
mov.b r3,@(r0,r14) 	
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r14),r2
tst r2,r2
bf loc_8C0E95Ea
mov.b @(0x05,r5),r0 	
tst r0,r0
bf loc_8C0E95Fc
mov.w @(loc_8C0E963A,pc),r0 ; r0 set to 0x1D0
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x15,r0 	
bf loc_8C0E95Fc
mov.w @(loc_8C0E963C,pc),r0 ; r0 set to 0x1E9
mov.b @(r0,r5),r2
tst r2,r2
bt loc_8C0E960c
bra loc_8C0E95Fc
nop 	

loc_8C0E95EA:
#data 0x8455
#data 0x8801600c
#data 0x90228B04
#data 0x600C005c
#data 0x8907881e


loc_8C0E95FC:
mov.b @(0x04,r14),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0E9636,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E960C:
mov.b @(0x05,r14),r0 	
mov r14,r4
mov.l @(loc_8C0E9648,pc),r1 ; r1 set to 0x8C15F4A4
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0E9620:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0E9636,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0E962E:
mov.l @(loc_8C0E964C,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0E9634:
#data 0x014b

loc_8C0E9636:
#data 0x012c

loc_8C0E9638:
#data 0x0141

loc_8C0E963A:
#data 0x01D0

loc_8C0E963C:
#data 0x01E9
#data 0x0000

#align4
loc_8C0E9640:
#data bank03.loc_8c034e8c

loc_8C0E9644:
#data bank03.loc_8c034F54

loc_8C0E9648:
#data bank15.loc_8c15F4A4

loc_8C0E964C:
#data bank04.loc_8c0450C0
#data 0x7FFC4F22
#data 0xE503D353
#data 0xE6002F42
#data 0x6463430b
#data 0x8D072008
#data 0xD3506403
#data 0x1434E026
#data 0x62F29393
#data 0x04351426
#data 0x4F267F04
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0E967C:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0E97AC,pc),r1 ; r1 set to 0x8C15F4Ac
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

#align4
loc_8C0E9690:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x4F22917e
#data 0x31EC84E4
#data 0x7001927a
#data 0x80E4D342
#data 0x430B9077
#data 0x907532Dc
#data 0x61E3E201
#data 0x0E247150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC9067
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD3340E34
#data 0xE00C430b
#data 0xF48DE024
#data 0xE3FE02Dc
#data 0xE05C0E24
#data 0xE060FE47
#data 0xE068FE47
#data 0xE06CFE47
#data 0x904DFE47
#data 0x81EE00Dd
#data 0x0E34E031
#data 0xF308C72a
#data 0xFE37E05c
#data 0xF308C729
#data 0xFE37E060
#data 0x03ED9041
#data 0x8D042338
#data 0xE05CE603
#data 0xF34DF3E6
#data 0xFE37

loc_8C0E972E:
#data 0xD324
#data 0x430BE517
#data 0x4F2664E3
#data 0x64E365D3
#data 0x6EF66DF6


loc_8C0E9740:
mov.w @(loc_8C0E97A0,pc),r3 ; r3 set to 0x158
mov.w @(0x1C,r4),r0 	
add r5,r3 ; r3 ??? bc r5 is ???	
mov.w @r3,r3
extu.w r3,r3
cmp/eq r3,r0
bt loc_8C0E975c
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0E979C,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0E975C:
mov 0x24,r0 ; r0 set to 0x24
mov.l @(loc_8C0E97C4,pc),r3 ; r3 set to 0x8C034DEe
mov.b @(r0,r5),r2
mov.b r2,@(r0,r4) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r4) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s @(r0,r4),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r5),fr2
fadd fr3,fr2
jmp @r3
fmov.s fr2,@(r0,r4) 	
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0E9782:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0E979C,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0E9790:
mov.l @(loc_8C0E97C8,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x3401
#data 0x00C000Dc

loc_8C0E979C:
#data 0x012c
#data 0x01A3

loc_8C0E97A0:
#data 0x0158
#data 0x0130

#align4
loc_8C0E97A4:
#data bank04.loc_8c044F12

loc_8C0E97A8:
#data loc_8c0e967c

loc_8C0E97AC:
#data bank15.loc_8c15F4Ac

loc_8C0E97B0:
#data bank12.loc_8c129560

loc_8C0E97B4:
#data bank12.loc_8c1294C8
#data 0x42200000
#data 0x43700000

#align4
loc_8C0E97C0:
#data bank03.loc_8c034e8c

loc_8C0E97C4:
#data bank03.loc_8c034dee

loc_8C0E97C8:
#data bank04.loc_8c0450C0
#data 0x4F222FE6
#data 0x2F507FFc
#data 0xD357E503
#data 0xE6006E43
#data 0x6463430b
#data 0x8D142008
#data 0xD3546403
#data 0x1434929d
#data 0x84E114E6
#data 0xE0208041
#data 0x043463F0
#data 0x0425E026
#data 0xF3E6E034
#data 0xE038F437
#data 0xF437F3E6
#data 0x00ED908e
#data 0x6043814e
#data 0x7F040009
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0E981A:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0E993C,pc),r1 ; r1 set to 0x8C15F4Bc
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0E982C:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0E992A,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0E992A,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(0x18,r14),r4
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0E992C,pc),r0 ; r0 set to 0xC0
mov.l @(loc_8C0E9940,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C0E992E,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E9930,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E9944,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov r14,r4
mov.b r2,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
mov.l @(loc_8C0E9948,pc),r0 ; r0 set to 0x8C15F4Cc
extu.b r3,r3
lds.l @r15+,pr 	
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0E989C:
mov 0x24,r0 ; r0 set to 0x24
mov 0x0B,r3 ; r3 set to 0x0b
mov.b r3,@(r0,r4) 	
mov 0x03,r6 ; r6 set to 0x03
mov.l @(loc_8C0E994C,pc),r3 ; r3 set to 0x8C034E8c
jmp @r3
mov 0x17,r5

loc_8C0E98AA:
mov 0x24,r0 ; r0 set to 0x24
mov 0x0B,r3 ; r3 set to 0x0b
mov.b r3,@(r0,r4) 	
mov 0x22,r0 ; r0 set to 0x22
mov.l @(loc_8C0E994C,pc),r3 ; r3 set to 0x8C034E8c
mov 0x00,r2 ; r2 set to 0x00
mov 0x07,r6 ; r6 set to 0x07
mov.b r2,@(r0,r4) 	
jmp @r3
mov 0x17,r5

loc_8C0E98BE:
#data 0xE024
#data 0x0434E30b
#data 0xF408C722
#data 0x034D9033
#data 0x8B012338
#data 0xF408C720

#align4
loc_8C0E98D4:
#data 0xD120E034
#data 0xE608F346
#data 0xF340415a
#data 0xF437D31a
#data 0xF246E038
#data 0xF230F30d
#data 0x432BF427
#data 0xE517

loc_8C0E98F2:
#data 0xE024
#data 0x0434E30b
#data 0xF408C718
#data 0x034D9019
#data 0x8B012338
#data 0xF408C716

#align4
loc_8C0E9908:
#data 0xD116E034
#data 0xE608F346
#data 0xF340415a
#data 0xF437D30d
#data 0xF246E038
#data 0xF230F30d
#data 0x432BF427
#data 0x3500E517
#data 0x0158

loc_8C0E992A:
#data 0x00Dc

loc_8C0E992C:
#data 0x00C0

loc_8C0E992E:
#data 0x012c

loc_8C0E9930:
#data 0x01A3
#data 0x0130

#align4
loc_8C0E9934:
#data bank04.loc_8c044F12

loc_8C0E9938:
#data loc_8c0e981a

loc_8C0E993C:
#data bank15.loc_8c15F4Bc

loc_8C0E9940:
#data bank12.loc_8c129560

loc_8C0E9944:
#data bank12.loc_8c1294C8

loc_8C0E9948:
#data bank15.loc_8c15F4Cc

loc_8C0E994C:
#data bank03.loc_8c034e8c
#data 0x436CAAAa
#data 0xC36CAAAa
#data 0x4320B6Db
#data 0x4321AAAa
#data 0xC321AAAa
#data 0x43520000


loc_8C0E9968:
mov 0x20,r0 ; r0 set to 0x20
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(loc_8C0E9A68,pc),r0 ; r0 set to 0x8C15F4Dc
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

loc_8C0E997C:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov.l @(0x18,r14),r3
mov.l r3,@r15
mov.l @(loc_8C0E9A6C,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r14,r4
mov.w @(loc_8C0E9A5E,pc),r0 ; r0 set to 0x158
mov.l @r15,r2
mov.w @(r0,r2),r3 ; r3 ??? bc r2 is ???	
mov.w @(0x1C,r14),r0 	
cmp/eq r0,r3
bt loc_8C0E99A4
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
bra loc_8C0E9A3a
mov.l @r15+,r14

loc_8C0E99A4:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E99AC:
mov.l @(0x18,r4),r5
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r4) 	
mov.w @(loc_8C0E9A60,pc),r0 ; r0 set to 0x141
mov.b @(r0,r5),r3
tst r3,r3
bt loc_8C0E9A3a
mov 0x22,r0 ; r0 set to 0x22
mov.b @(r0,r4),r3
mov 0x01,r6 ; r6 set to 0x01
mov.w @(loc_8C0E9A60,pc),r0 ; r0 set to 0x141
extu.b r3,r3
mov.b @(r0,r5),r2
cmp/eq r2,r3
movt r0
tst r6,r0
bt loc_8C0E99Ea
mov.w @(loc_8C0E9A60,pc),r0 ; r0 set to 0x141
mov 0x22,r1 ; r1 set to 0x22
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0E9A6C,pc),r3 ; r3 set to 0x8C034DEe
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
and 0x01,r0 	
mov.b r0,@r1
mov.w @(loc_8C0E9A62,pc),r0 ; r0 set to 0x142
jmp @r3
mov.b r6,@(r0,r4) 	

loc_8C0E99EA:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0E99EE:
#data 0x2FE6
#data 0x4F226E43
#data 0x200884E5
#data 0x54E68F12
#data 0x034D902f
#data 0x330085Ee
#data 0x84E58907
#data 0xD319E517
#data 0x7001E609
#data 0x430B80E5
#data 0x64E3

loc_8C0E9A16:
#data 0x4F26
#data 0x64E3D214
#data 0x6EF6422b

#align4
loc_8C0E9A20:
#data 0x420BD212
#data 0x600E64E3
#data 0x89034011
#data 0x64E34F26
#data 0x6EF6A003

#align4
loc_8C0E9A34:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0E9A3A:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0E9A64,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0E9A74,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0E9A4C:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0E9A64,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0E9A74,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0E9A5E:
#data 0x0158

loc_8C0E9A60:
#data 0x0141

loc_8C0E9A62:
#data 0x0142

loc_8C0E9A64:
#data 0x012c
#data 0x0000

#align4
loc_8C0E9A68:
#data bank15.loc_8c15F4Dc

loc_8C0E9A6C:
#data bank03.loc_8c034dee

loc_8C0E9A70:
#data bank03.loc_8c034e8c

loc_8C0E9A74:
#data bank04.loc_8c0450C0
#data 0xE5032FE6
#data 0xD3494F22
#data 0xE6006E43
#data 0x6463430b
#data 0x8D132008
#data 0xE5006403
#data 0x1434D345
#data 0x14E69384
#data 0x804184E1
#data 0x0454E020
#data 0x0454E021
#data 0x0435E026
#data 0xF3E6E034
#data 0xE038F437
#data 0xF437F3E6
#data 0x00096043
#data 0x000B4F26
#data 0x2FE66EF6
#data 0x2FD6E503
#data 0x4F22E600
#data 0x6E43D336
#data 0x430BED01
#data 0x20086463
#data 0x64038D13
#data 0x1434D333
#data 0x14E6E300
#data 0x804184E1
#data 0x0434E020
#data 0x9359E021
#data 0xE02604D4
#data 0xE0340435
#data 0xF437F3E6
#data 0xF3E6E038
#data 0xD329F437
#data 0xE600E503
#data 0x6463430b
#data 0x8D122008
#data 0xD3266403
#data 0x93451434
#data 0x84E114E6
#data 0xE0208041
#data 0xE02104D4
#data 0xE02604D4
#data 0xE0340435
#data 0xF437F3E6
#data 0xF3E6E038
#data 0x6043F437
#data 0x4F260009
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0E9B3E:
#data 0x2FE6
#data 0x7FFC4F22
#data 0xE5032F50
#data 0x6E43D316
#data 0x430BE600
#data 0x20086463
#data 0x64038D15
#data 0x1434D313
#data 0x142652E6
#data 0x804184E1
#data 0x63F0E020
#data 0xE0210434
#data 0x931702Ec
#data 0xE0260424
#data 0xE0340435
#data 0xF437F3E6
#data 0xF3E6E038
#data 0xF437

loc_8C0E9B82:
#data 0x6043
#data 0x7F040009
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0E9B8E:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0E9BAC,pc),r1 ; r1 set to 0x8C15F4Ec
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x00003501

#align4
loc_8C0E9BA4:
#data bank04.loc_8c044F12

loc_8C0E9BA8:
#data loc_8c0e9B8e

loc_8C0E9BAC:
#data bank15.loc_8c15F4Ec


loc_8C0E9BB0:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0E9CE4,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0E9CE4,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0E9CF4,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0E9CE6,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r14),r4
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C0E9CE8,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E9CEA,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E9CF8,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0E9CE8,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r14) 	
mov.w @(loc_8C0E9CEC,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???	
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0E9CFC,pc),r0  ; r0 set to 0x8C0E9CFc
fmov.s @r0,fr4
mov 0x50,r0 ; r0 set to 0x50
fmov.s fr4,@(r0,r14) 	
mov 0x54,r0 ; r0 set to 0x54
fmov.s fr4,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3
tst r3,r3
bf loc_8C0E9C38
mov 0x10,r0 ; r0 set to 0x10
mov.w r0,@(0x1C,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov 0x0D,r3 ; r3 set to 0x0d
bra loc_8C0E9C54
mov.b r3,@(r0,r14) 	

loc_8C0E9C38:
mov 0x04,r0 ; r0 set to 0x04
mov.w r0,@(0x1C,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
extu.b r0,r0
cmp/eq 0x01,r0 	
bf loc_8C0E9C4e
mov 0x24,r0 ; r0 set to 0x24
mov 0x0B,r2 ; r2 set to 0x0b
bra loc_8C0E9C54
mov.b r2,@(r0,r14) 	

loc_8C0E9C4E:
mov 0x24,r0 ; r0 set to 0x24
mov 0x09,r1 ; r1 set to 0x09
mov.b r1,@(r0,r14) 	

loc_8C0E9C54:
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
mov.l @(loc_8C0E9D00,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
lds.l @r15+,pr 	
mov.b @(r0,r14),r6
mov r14,r4
mov 0x12,r5 ; r5 set to 0x12, r5 set to 0x12
add 0x0C,r6
jmp @r3
mov.l @r15+,r14

loc_8C0E9C66:
#data 0x2FE6
#data 0x7FFC4F22
#data 0x933E6E43
#data 0xD22454E6
#data 0x2F32334c
#data 0x64E3420b
#data 0x03ECE020
#data 0x8B0B2338
#data 0x03EC9034
#data 0x89072338
#data 0xE501E300
#data 0xBF540E34
#data 0xE50264E3
#data 0x64E3BF51

#align4
loc_8C0E9C9C:
#data 0x843763F2
#data 0x89072008
#data 0x64E384E4
#data 0x80E47001
#data 0x4F267F04
#data 0x6EF6A004

#align4
loc_8C0E9CB4:
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0E9CBC:
#data 0x4F222FE6
#data 0x430BD310
#data 0x85EE6E43
#data 0x81EE70Ff
#data 0x2008600f
#data 0x84E48B05
#data 0x7001E300
#data 0x900580E4
#data 0x0E34

loc_8C0E9CDE:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0E9CE4:
#data 0x00Dc

loc_8C0E9CE6:
#data 0x00C0

loc_8C0E9CE8:
#data 0x012c

loc_8C0E9CEA:
#data 0x01A3

loc_8C0E9CEC:
#data 0x041c
#data 0x02A4
#data 0x00000141

#align4
loc_8C0E9CF4:
#data bank12.loc_8c129560

loc_8C0E9CF8:
#data bank12.loc_8c1294C8

loc_8C0E9CFC:
#data 0x3F99999a

#align4
loc_8C0E9D00:
#data bank03.loc_8c034e8c

loc_8C0E9D04:
#data bank03.loc_8c034dee


loc_8C0E9D08:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0E9D1A,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0E9D1C,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0E9D1A:
#data 0x012c

#align4
loc_8C0E9D1C:
#data bank04.loc_8c0450C0
#data 0xE5032FE6
#data 0x6D432FD6
#data 0xD3554F22
#data 0x430BE600
#data 0x20086463
#data 0x6E038D18
#data 0x1E34D352
#data 0x1ED69399
#data 0x80E184D1
#data 0x0E35E026
#data 0xF3D6E034
#data 0xFE37D34e
#data 0xF3D6E038
#data 0xFE37430b
#data 0xC903E120
#data 0x700431Ec
#data 0xE0212100
#data 0x0E34E300
#data 0x000960E3
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0E9D74:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0E9E8C,pc),r1 ; r1 set to 0x8C15F520
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0E9D86:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0E9E74,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0E9E74,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0E9E90,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0E9E76,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r14),r4
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C0E9E78,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0E9E7A,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0E9E94,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov.b r2,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
mov.l @(loc_8C0E9E98,pc),r0 ; r0 set to 0x8C15F530
extu.b r3,r3
shll2 r3
mov.l @(r0,r3),r2
jsr @r2
mov r14,r4
mov 0x00,r0 ; r0 set to 0x00
mov.b r0,@(0x06,r14) 	
mov.b r0,@(0x05,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0E9DFE:
mov.l r14,@-r15
mov r4,r14
mov 0x34,r0 ; r0 set to 0x34
sts.l pr,@-r15
mov.l @(0x18,r14),r4
mov 0x0A,r3 ; r3 set to 0x0a
fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???	
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0E9E7C,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r4),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14) 	
bsr loc_8C0EA13e
mov r14,r4
mov 0x00,r4 ; r4 set to 0x00
mov r4,r0 ; r0 set to 0x00
nop 	
mov.w r0,@(0x1C,r14) 	
mov.w @(loc_8C0E9E7E,pc),r0 ; r0 set to 0x141
mov.b r4,@(r0,r14) 	
mov 0x01,r0 ; r0 set to 0x01
mov r14,r4 ; r4 ??? bc r14 is ???	
mov.w r0,@(0x1E,r14) 	
lds.l @r15+,pr 	
bra loc_8C0EA0E0
mov.l @r15+,r14

loc_8C0E9E36:
mov.l r14,@-r15
mov r4,r14
mov 0x34,r0 ; r0 set to 0x34
sts.l pr,@-r15
mov.l @(0x18,r14),r4
mov 0x0C,r3 ; r3 set to 0x0c
fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???	
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0E9E7C,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r4),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14) 	
bsr loc_8C0EA13e
mov r14,r4
bsr loc_8C0EA190
mov r14,r4
mov 0x00,r4 ; r4 set to 0x00
mov r4,r0 ; r0 set to 0x00
nop 	
mov.w r0,@(0x1C,r14) 	
mov.w @(loc_8C0E9E7E,pc),r0 ; r0 set to 0x141
mov.b r4,@(r0,r14) 	
mov 0x01,r0 ; r0 set to 0x01
mov r14,r4 ; r4 ??? bc r14 is ???	
mov.w r0,@(0x1E,r14) 	
lds.l @r15+,pr 	
bra loc_8C0EA0E0
mov.l @r15+,r14
#data 0x3502

loc_8C0E9E74:
#data 0x00Dc

loc_8C0E9E76:
#data 0x00C0

loc_8C0E9E78:
#data 0x012c

loc_8C0E9E7A:
#data 0x01A3

loc_8C0E9E7C:
#data 0x041c

loc_8C0E9E7E:
#data 0x0141

#align4
loc_8C0E9E80:
#data bank04.loc_8c044F12

loc_8C0E9E84:
#data loc_8c0e9D74

loc_8C0E9E88:
#data bank03.loc_8c03319e

loc_8C0E9E8C:
#data bank15.loc_8c15F520

loc_8C0E9E90:
#data bank12.loc_8c129560

loc_8C0E9E94:
#data bank12.loc_8c1294C8

loc_8C0E9E98:
#data bank15.loc_8c15F530


loc_8C0E9E9C:
mov.l r14,@-r15
mov r4,r14
mov 0x34,r0 ; r0 set to 0x34
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @(0x18,r14),r4
mov 0x00,r13 ; r13 set to 0x00
fmov.s @(r0,r4),fr3
fmov.s fr3,@(r0,r14) 	
mov.w @(loc_8C0E9FD4,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r4),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r13,@(r0,r14) 	
bsr loc_8C0EA13e
mov r14,r4
mov r13,r0 ; r0 set to 0x00
nop 	
mov.w r0,@(0x1C,r14) 	
mov r14,r4
mov.w @(loc_8C0E9FD6,pc),r0 ; r0 set to 0x141
mov.b r13,@(r0,r14) 	
mov 0x01,r0 ; r0 set to 0x01
mov.w r0,@(0x1E,r14) 	
lds.l @r15+,pr 	
mov.l @r15+,r13 ; r13 ??? bc r15 is ???	
bra loc_8C0EA0E0
mov.l @r15+,r14

loc_8C0E9ED6:
mov 0x20,r0 ; r0 set to 0x20
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(loc_8C0E9FD8,pc),r0 ; r0 set to 0x8C15F550
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

loc_8C0E9EEA:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x05,r14),r0 	
tst r0,r0
bf loc_8C0E9F02
bsr loc_8C0EA1C6
mov r14,r4
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0E9FFe
mov.l @r15+,r14

loc_8C0E9F02:
#data 0xD236
#data 0x64E3420b
#data 0x8F032008
#data 0x84E464E3
#data 0x80E47001

#align4
loc_8C0E9F14:
#data 0x0009B157
#data 0x64E34F26
#data 0x6EF6A0Bc


loc_8C0E9F20:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x05,r14),r0 	
tst r0,r0
bf loc_8C0E9F6c
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
bra loc_8C0EA04c
mov.l @r15+,r14

#align4
loc_8C0E9F6C:
#data 0x430BD31b
#data 0x200864E3
#data 0x84E48B02
#data 0x80E47001

#align4
loc_8C0E9F7C:
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
#data 0x4F26FE27
#data 0x6EF6A06e


loc_8C0E9FBC:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x05,r14),r0 	
tst r0,r0
bf loc_8C0E9FE0
bsr loc_8C0EA1C6
mov r14,r4
lds.l @r15+,pr 	
mov r14,r4
bra loc_8C0EA04c
mov.l @r15+,r14

loc_8C0E9FD4:
#data 0x041c

loc_8C0E9FD6:
#data 0x0141

#align4
loc_8C0E9FD8:
#data bank15.loc_8c15F550

loc_8C0E9FDC:
#data bank03.loc_8c0332E0

loc_8C0E9FE0:
#data 0x420BD23a
#data 0x200864E3
#data 0x64E38F03
#data 0x700184E4
#data 0x80E4

loc_8C0E9FF2:
#data 0xB0E8
#data 0x4F260009
#data 0xA04D64E3
#data 0x6EF6

loc_8C0E9FFE:
#data 0xE020
#data 0x034C5546
#data 0x633CD032
#data 0xF3364308
#data 0xF256905a
#data 0xF230E038
#data 0xC72FF346
#data 0xF308F231
#data 0xF430F42c
#data 0xF245F28d
#data 0xF44D8B00

#align4
loc_8C0EA028:
#data 0xF308C72b
#data 0xF43DF433
#data 0x4511055a
#data 0x75078900

#align4
loc_8C0EA038:
#data 0x854E4521
#data 0x45214521
#data 0x89293057
#data 0x00096053
#data 0x814EA04a

#align4
loc_8C0EA04C:
#data 0x5546E020
#data 0xD01F034c
#data 0x4308633c
#data 0x9033F336
#data 0xE038F256
#data 0xF346F230
#data 0xF231C71b
#data 0xF42CF308
#data 0xF28DF430
#data 0x8B00F245
#data 0xF44d

loc_8C0EA076:
#data 0xC718
#data 0xF433F308
#data 0x055AF43d
#data 0x89004511
#data 0x750f

loc_8C0EA086:
#data 0x854e
#data 0x453CE3Fc
#data 0x89033057
#data 0x00096053
#data 0x814EA024

#align4
loc_8C0EA098:
#data 0x4F222FE6
#data 0x430BD30f
#data 0x90106E43
#data 0x81EF00Ec
#data 0x03EC900e
#data 0x89034311
#data 0xE200900b
#data 0x0E24A003

#align4
loc_8C0EA0B8:
#data 0xE1019007
#data 0x0E14

loc_8C0EA0BE:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x0142041c
#data 0x012C0141

#align4
loc_8C0EA0CC:
#data bank03.loc_8c0332E0

loc_8C0EA0D0:
#data bank15.loc_8c15F4Fc
#data 0x41892492
#data 0x40092492

#align4
loc_8C0EA0DC:
#data bank03.loc_8c034dee

loc_8C0EA0E0:
#data 0x6E432FE6
#data 0xD452E320
#data 0x4F2233Ec
#data 0x85EE6330
#data 0x4300633c
#data 0x6231334c
#data 0x8B083023
#data 0x00ECE020
#data 0x4000600c
#data 0x81EE004d
#data 0x700184E5
#data 0x80E5

loc_8C0EA10E:
#data 0x908c
#data 0xD348E77f
#data 0x00ECE512
#data 0x2709D247
#data 0x00ECE020
#data 0x4008600c
#data 0x330C4000
#data 0x063C85Ee
#data 0x64E3420b
#data 0x630385Ef
#data 0x0E34907a
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0EA13E:
#data 0x2FE6
#data 0x6E43E020
#data 0x4F222F86
#data 0xD83C00Ec
#data 0xD33C600c
#data 0x40084008
#data 0x380C430b
#data 0x4008C903
#data 0x9066F486
#data 0x233803Ed
#data 0xE0348D01
#data 0xF44d

loc_8C0EA16A:
#data 0xF3E6
#data 0x33ECE320
#data 0xE238F340
#data 0xFE3732Ec
#data 0xD0326330
#data 0xF228633c
#data 0xF3364308
#data 0xF22AF231
#data 0x68F64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0EA190:
mov.l r14,@-r15
mov 0x68,r0 ; r0 set to 0x68
fldi0 fr3
mov r4,r14
sts.l pr,@-r15
mov.l @(loc_8C0EA240,pc),r3 ; r3 set to 0x8C03319e
fmov.s fr3,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
jsr @r3
fmov.s fr3,@(r0,r14) 	
mov 0x03,r4 ; r4 set to 0x03
mov.l @(loc_8C0EA248,pc),r3 ; r3 set to 0x8C15F680
and r0,r4 ; r4 ??	
extu.b r4,r5
shll2 r5
shll r5
add r3,r5
fmov.s @r5,fr3 ; r3 ??? bc r5 is ???	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr3,@(r0,r14) 	
mov 0x04,r0 ; r0 set to 0x04
fmov.s @(r0,r5),fr3
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr3,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0EA1C6:
mov r4,r3
mov.l @(loc_8C0EA24C,pc),r1 ; r1 set to 0x8C15F6A0
mov.l r4,@-r15
mov.b @(0x06,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0EA1D8:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x06,r14),r0 	
mov.l @(loc_8C0EA240,pc),r3 ; r3 set to 0x8C03319e
add 0x01,r0
jsr @r3
mov.b r0,@(0x06,r14) 	
mov 0x07,r4 ; r4 set to 0x07
mov.l @(loc_8C0EA250,pc),r3 ; r3 set to 0x8C15F6B0
and r0,r4 ; r4 ??? bc r0 is ???	
mov.l @(loc_8C0EA240,pc),r2 ; r2 set to 0x8C03319e
extu.b r4,r5
shll2 r5
shll r5
add r3,r5
fmov.s @r5,fr3 ; r3 ??? bc r5 is ???	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr3,@(r0,r14) 	
mov 0x04,r0 ; r0 set to 0x04
fmov.s @(r0,r5),fr3
mov 0x68,r0 ; r0 set to 0x68
jsr @r2
fmov.s fr3,@(r0,r14) 	
mov 0x07,r4 ; r4 set to 0x07
mov.l @(loc_8C0EA254,pc),r3 ; r3 set to 0x8C15F6F0
and r0,r4 ; r4 ??	
extu.b r4,r5
shll2 r5
shll r5
add r3,r5
fmov.s @r5,fr3 ; r3 ??? bc r5 is ???	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr3,@(r0,r14) 	
mov 0x04,r0 ; r0 set to 0x04
fmov.s @(r0,r5),fr3
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr3,@(r0,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x0141
#data 0x01300142

#align4
loc_8C0EA230:
#data bank15.loc_8c15F570

loc_8C0EA234:
#data bank15.loc_8c15F582

loc_8C0EA238:
#data bank03.loc_8c034F54

loc_8C0EA23C:
#data bank15.loc_8c15F5Cc

loc_8C0EA240:
#data bank03.loc_8c03319e

loc_8C0EA244:
#data bank15.loc_8c15F65c

loc_8C0EA248:
#data bank15.loc_8c15F680

loc_8C0EA24C:
#data bank15.loc_8c15F6A0

loc_8C0EA250:
#data bank15.loc_8c15F6B0

loc_8C0EA254:
#data bank15.loc_8c15F6F0

loc_8C0EA258:
#data 0xE15C2FE6
#data 0x31EC6E43
#data 0x4F22E034
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
#data 0xF325F38d
#data 0xFE278F09
#data 0xD33584E6
#data 0x430B7001
#data 0xD13480E6
#data 0x001CC903
#data 0x80E7

loc_8C0EA2AE:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0EA2B4:
#data 0x6E432FE6
#data 0x84E74F22
#data 0x80E770Ff
#data 0x2008600c
#data 0x84E68B22
#data 0x7001D32a
#data 0x80E6430b
#data 0xD32AE407
#data 0xD2272409
#data 0x4508654c
#data 0x353C4500
#data 0xE05CF358
#data 0xE004FE37
#data 0xE068F356
#data 0xFE37420b
#data 0xD323E407
#data 0x654C2409
#data 0x45004508
#data 0xF358353c
#data 0xFE37E060
#data 0xF356E004
#data 0xFE37E06c

#align4
loc_8C0EA30C:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0EA312:
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

loc_8C0EA34C:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0EA370,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0EA384,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0EA35E:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0EA370,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0EA384,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0EA370:
#data 0x012c
#data 0x0000

#align4
loc_8C0EA374:
#data bank03.loc_8c03319e

loc_8C0EA378:
#data bank15.loc_8c15F730

loc_8C0EA37C:
#data bank15.loc_8c15F734

loc_8C0EA380:
#data bank15.loc_8c15F774

loc_8C0EA384:
#data bank04.loc_8c0450C0

loc_8C0EA388:
#data 0x4F222FE6
#data 0xE0087FF4
#data 0xFF47D359
#data 0xE600E004
#data 0xFF576E43
#data 0xE5032F51
#data 0x6463430b
#data 0x8D222008
#data 0xD3546403
#data 0x52E61434
#data 0x84E11426
#data 0x90968041
#data 0xE02004E6
#data 0x633D63F1
#data 0x04344319
#data 0x62F0E021
#data 0x0424938e
#data 0x0435E026
#data 0xF3F6E008
#data 0xF437E034
#data 0xF3F6E004
#data 0xF437E038
#data 0x03ECE022
#data 0xE3010434
#data 0x223A02Ec
#data 0x0E24

loc_8C0EA3EE:
#data 0x6043
#data 0x7F0C0009
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0EA3FA:
#data 0xE021
#data 0x034C2FE6
#data 0x8D032338
#data 0x90705E46
#data 0x0E36E304

#align4
loc_8C0EA40C:
#data 0x024CE020
#data 0x8B022228
#data 0xA00365E3
#data 0x6EF6

loc_8C0EA41A:
#data 0x65E3
#data 0x6EF6A0Ce

#align4
loc_8C0EA420:
#data 0xD1376343
#data 0x84342F46
#data 0x4008600c
#data 0x432B031e
#data 0x7F04


loc_8C0EA432:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0EA4EC,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0EA504,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.w @(loc_8C0EA4EC,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0EA4EE,pc),r0 ; r0 set to 0xC0
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0EA4F0,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0EA4F2,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0EA508,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x08,r3 ; r3 set to 0x08
fldi0 fr4
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x00,r2 ; r2 set to 0x00
mov.b r3,@(r0,r14) 	
mov 0x22,r0 ; r0 set to 0x22
mov.b r2,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
mov.l @(loc_8C0EA50C,pc),r3 ; r3 set to 0x8C03319e
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6c
jsr @r3
fmov.s fr4,@(r0,r14) 	
mov.w @(loc_8C0EA4F4,pc),r2 ; r2 set to 0x80
extu.b r0,r4 ; r4 set to 0x6c
mova @(loc_8C0EA510,pc),r0  ; r0 set to 0x8C0EA510
mov.l @(loc_8C0EA50C,pc),r3 ; r3 set to 0x8C03319e
sub r2,r4 ; r4 set to 0xFFFFFFEc
fmov.s @r0,fr2 ; r2 ??	
shll8 r4 ; r4 set to 0xFFFFEC00
shll r4 ; r4 set to 0xFFFFD800
lds r4,fpul 	
mova @(loc_8C0EA514,pc),r0  ; r0 set to 0x8C0EA514
fmov.s @r0,fr1
mov 0x5C,r0 ; r0 set to 0x5c
float fpul,fr3
fmul fr2,fr3 ; r3 ??? bc r2 is ???	
fdiv fr1,fr3
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0EA518,pc),r0  ; r0 set to 0x8C0EA518
fmov.s @r0,fr3
mov 0x6C,r0 ; r0 set to 0x6c
jsr @r3
fmov.s fr3,@(r0,r14) 	
lds.l @r15+,pr 	
and 0x03,r0 	
mov.l @(loc_8C0EA51C,pc),r2 ; r2 set to 0x8C034C38
mov r0,r6 ; r6 set to 0x6c
mov r14,r4 ; r4 ??? bc r14 is ???	
add 0x05,r6 ; r6 set to 0x71
mov 0x1B,r5 ; r5 set to 0x1b
jmp @r2
mov.l @r15+,r14
#data 0x00Cc
#data 0x02C03600

loc_8C0EA4EC:
#data 0x00Dc

loc_8C0EA4EE:
#data 0x00C0

loc_8C0EA4F0:
#data 0x012c

loc_8C0EA4F2:
#data 0x01A3

loc_8C0EA4F4:
#data 0x0080
#data 0x0000

#align4
loc_8C0EA4F8:
#data bank04.loc_8c044F12

loc_8C0EA4FC:
#data loc_8c0eA3Fa

loc_8C0EA500:
#data bank15.loc_8c15F7B4

loc_8C0EA504:
#data bank12.loc_8c129560

loc_8C0EA508:
#data bank12.loc_8c1294C8

loc_8C0EA50C:
#data bank03.loc_8c03319e

loc_8C0EA510:
#data 0x3FD55555

#align4
loc_8C0EA514:
#data 0x47800000

#align4
loc_8C0EA518:
#data 0xBECDB6Db

#align4
loc_8C0EA51C:
#data bank03.loc_8c034C38

loc_8C0EA520:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x4F22FFFb
#data 0xD3297FFc
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
#data 0x63F2902d
#data 0xE038F336
#data 0xF235F2E6
#data 0x84E48916
#data 0x9C25ED00
#data 0x7001EB03
#data 0xC71380E4
#data 0xFF08

loc_8C0EA58E:
#data 0xE021
#data 0xE03805Ec
#data 0xE034F5E6
#data 0x655CF4E6
#data 0x35CCF5F0
#data 0x64E3BEF2
#data 0x62DD7D01
#data 0x8BF032B3

#align4
loc_8C0EA5AC:
#data 0x4F267F04
#data 0x6BF6FFF9
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0EA5BC:
#data 0xD1076343
#data 0x84342F46
#data 0x4008600c
#data 0x432B031e
#data 0x041C7F04
#data 0x00000100

#align4
loc_8C0EA5D4:
#data bank03.loc_8c034D8c
#data 0x41092492

#align4
loc_8C0EA5DC:
#data bank15.loc_8c15F7C4

loc_8C0EA5E0:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0xFFFB2FC6
#data 0x4F2291Aa
#data 0x31EC84E4
#data 0x700192A6
#data 0x80E4D355
#data 0x430B90A3
#data 0x90A132Dc
#data 0x61E3E201
#data 0x0E247150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC9093
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD3470E34
#data 0xE00C430b
#data 0xF48DE308
#data 0xDC45E024
#data 0x0E3402Dc
#data 0xFE47E05c
#data 0xFE47E060
#data 0xFE47E068
#data 0x4C0BE06c
#data 0x9377FE47
#data 0xE207640c
#data 0x442C3438
#data 0xC73D445a
#data 0xC73DFF08
#data 0xE05CF208
#data 0xF322F32d
#data 0x4C0BF3F3
#data 0x640CFE37
#data 0x44187460
#data 0x445A4408
#data 0xF208C737
#data 0xF32DE060
#data 0xF3F3F322
#data 0xC735FE37
#data 0xE06CF308
#data 0xFE374C0b
#data 0xD333C903
#data 0xE51B6603
#data 0x430B7609
#data 0x4F2664E3
#data 0x64E365D3
#data 0x6CF6FFF9
#data 0x6EF66DF6

#align4
loc_8C0EA6B8:
#data 0x4F222FE6
#data 0xD32C7FFc
#data 0x2F526E43
#data 0x64E3430b
#data 0xD32AE15c
#data 0xE03431Ec
#data 0xF2E6F318
#data 0x31ECE168
#data 0xE222F230
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
#data 0x50076032
#data 0x911D32Ec
#data 0x31EC6220
#data 0xC901302c
#data 0x901A2100
#data 0xF32662F2
#data 0xF2E6E038
#data 0x8902F235
#data 0x700184E4
#data 0x80E4

loc_8C0EA72A:
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0EA732:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0EA748,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0EA778,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x00C000Dc

loc_8C0EA748:
#data 0x012c
#data 0x01A3
#data 0x041C0080

#align4
loc_8C0EA750:
#data bank12.loc_8c129560

loc_8C0EA754:
#data bank12.loc_8c1294C8

loc_8C0EA758:
#data bank03.loc_8c03319e
#data 0x47800000
#data 0x3FD55555
#data 0x40092492
#data 0xBECDB6Db

#align4
loc_8C0EA76C:
#data bank03.loc_8c034C38

loc_8C0EA770:
#data bank03.loc_8c034D8c
#data 0x8C26823c

#align4
loc_8C0EA778:
#data bank04.loc_8c0450C0
#data 0xE5032FE6
#data 0x6D432FD6
#data 0xEC002FC6
#data 0x66C32FB6
#data 0xEB012FA6
#data 0x4F222F96
#data 0xD9349A65
#data 0x64C3490b
#data 0x8D112008
#data 0xD2326E03
#data 0x1E242EB0
#data 0x84D11ED6
#data 0xE02080E1
#data 0xE0210EC4
#data 0xE0260EC4
#data 0x90530EA5
#data 0x60C30ED6
#data 0x81EE0009
#data 0xE602E503
#data 0x64E3490b
#data 0x8D112008
#data 0xD2266403
#data 0x142424B0
#data 0x84E114E6
#data 0xE0208041
#data 0xE02104C4
#data 0xE02604B4
#data 0x903B04A5
#data 0x60C304D6
#data 0x814E0009
#data 0xE600E503
#data 0x6463490b
#data 0x8D102008
#data 0xD21A6403
#data 0x142424B0
#data 0x84D114D6
#data 0xE0208041
#data 0xE02104B4
#data 0xE02604C4
#data 0x902304A5
#data 0xE03C04D6
#data 0x6043814e
#data 0x4F260009
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0EA836:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0EA870,pc),r1 ; r1 set to 0x8C15F7D4
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0EA84A:
mov.w @(loc_8C0EA866,pc),r0 ; r0 set to 0x12c
mov 0x00,r6 ; r6 set to 0x00
sts.l pr,@-r15
mov.b r6,@(r0,r4) 	
mov.w @(0x1C,r4),r0 	
tst r0,r0
bt loc_8C0EA874
lds.l @r15+,pr 	
mov.w @(0x1C,r4),r0 	
add 0xFF,r0 ; r0 set to 0x12b
rts 	
mov.w r0,@(0x1C,r4) 	
;-------------------------------------------------------------------------------
#data 0x3601
#data 0x00Cc

loc_8C0EA866:
#data 0x012c

#align4
loc_8C0EA868:
#data bank04.loc_8c044F12

loc_8C0EA86C:
#data loc_8c0eA836

loc_8C0EA870:
#data bank15.loc_8c15F7D4


loc_8C0EA874:
mov.b @(0x04,r4),r0 	
mov.w @(loc_8C0EA9B6,pc),r3 ; r3 set to 0xDc
add 0x01,r0
mov.w @(loc_8C0EA9B6,pc),r1 ; r1 set to 0xDc
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0EA9B4,pc),r0 ; r0 set to 0xCc
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(r0,r4),r2
add r3,r2
mov.l @(loc_8C0EA9C8,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add 0xF4,r0 ; r0 set to 0xC0
mov.w @(loc_8C0EA9B8,pc),r0 ; r0 set to 0x12c
mov 0x01,r7 ; r7 set to 0x01
mov.b r7,@(r0,r4) 	
add 0xA0,r0 ; r0 set to 0xCc
mov.l @(r0,r4),r0 ; r0 ??? bc r4 is ???	
mov.b @(0x02,r0),r0 	
mov.b r0,@(0x02,r4) 	
mov.w @(loc_8C0EA9B4,pc),r0 ; r0 set to 0xCc
mov.l @(r0,r4),r0 ; r0 ??? bc r4 is ???	
mov.b @(0x01,r0),r0 	
mov.b r0,@(0x01,r4) 	
mov.w @(loc_8C0EA9B4,pc),r0 ; r0 set to 0xCc
mov.l @(r0,r4),r3 ; r3 ??? bc r4 is ???	
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
add 0x7C,r0 ; r0 set to 0xCc
mov.l @(r0,r4),r3
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4) 	
add 0x78,r0 ; r0 set to 0xCc
mov.l @(r0,r4),r3
mov.w @(loc_8C0EA9BA,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r3),r2
mov.b r2,@(r0,r4) 	
mov.w @(loc_8C0EA9B4,pc),r0 ; r0 set to 0xCc
mov.l @(r0,r4),r3
mov.w @(loc_8C0EA9BC,pc),r0 ; r0 set to 0x1A4
mov.b @(r0,r3),r2
mov.b r2,@(r0,r4) 	
mov.w @(loc_8C0EA9B4,pc),r0 ; r0 set to 0xCc
mov.l @(r0,r4),r3
mov 0x30,r0 ; r0 set to 0x30
mov r4,r1
add 0x50,r1
mov.b @(r0,r3),r2
mov.l @(loc_8C0EA9CC,pc),r3 ; r3 set to 0x8C1294C8
mov.b r2,@(r0,r4) 	
mov.w @(loc_8C0EA9B4,pc),r0 ; r0 set to 0xCc
mov.l @(r0,r4),r2
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.w @(loc_8C0EA9B4,pc),r0 ; r0 set to 0xCc
mov.l @(r0,r4),r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r4) 	
mov.w @(loc_8C0EA9B8,pc),r0 ; r0 set to 0x12c
mov.b r7,@(r0,r4) 	
mov 0x22,r0 ; r0 set to 0x22
mov.b r6,@(r0,r4) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r4),r3
tst r3,r3
bf loc_8C0EA902
bra loc_8C0EA90c
lds.l @r15+,pr 	

loc_8C0EA902:
bra loc_8C0EA962
lds.l @r15+,pr 	
#data 0x4F26
#data 0x0009000b
;-------------------------------------------------------------------------------

#align4
loc_8C0EA90C:
#data 0xE3079052
#data 0x054E2FE6
#data 0x0434E024
#data 0x035D9051
#data 0x8D012338
#data 0xE640E6C0

#align4
loc_8C0EA924:
#data 0x465A666f
#data 0xF256E034
#data 0xF008C728
#data 0xF32DE034
#data 0xF427F23e
#data 0xF308C726
#data 0xF256E038
#data 0xF427F230
#data 0x814E7054
#data 0x814FE000
#data 0x034CE021
#data 0x8D012338
#data 0xEE08EE09

#align4
loc_8C0EA958:
#data 0xE516D31f
#data 0x432B66E3
#data 0x6EF6

loc_8C0EA962:
#data 0xE021
#data 0xE607034c
#data 0x8D012338
#data 0x6673E700

#align4
loc_8C0EA970:
#data 0x0464E024
#data 0x064E901e
#data 0x066E9022
#data 0xF366E034
#data 0xC716F437
#data 0x901CF308
#data 0xE038F266
#data 0xF427F230
#data 0x814E704a
#data 0x814F9016
#data 0x005C9015
#data 0x881D600c
#data 0xE6478F03
#data 0x20088455
#data 0x8901

loc_8C0EA9AA:
#data 0x9005
#data 0x0474

loc_8C0EA9AE:
#data 0xD30a
#data 0xE516432b

loc_8C0EA9B4:
#data 0x00Cc

loc_8C0EA9B6:
#data 0x00Dc

loc_8C0EA9B8:
#data 0x012c

loc_8C0EA9BA:
#data 0x01A3

loc_8C0EA9BC:
#data 0x01A4
#data 0x0130
#data 0x041C020c
#data 0x01D00102

#align4
loc_8C0EA9C8:
#data bank12.loc_8c129560

loc_8C0EA9CC:
#data bank12.loc_8c1294C8
#data 0x3FD55555
#data 0x439A4924

#align4
loc_8C0EA9D8:
#data bank03.loc_8c034e8c
#data 0x43BC9249


loc_8C0EA9E0:
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r4),r3
tst r3,r3
bt loc_8C0EA9Ec
bra loc_8C0EAB1c
nop 	

#align4
loc_8C0EA9EC:
#data 0x6E432FE6
#data 0xE0212FD6
#data 0x4F222FC6
#data 0xDC3C03Ec
#data 0x8F632338
#data 0xC73B6D53
#data 0x906CF308
#data 0xE038F2D6
#data 0xF230F1E6
#data 0x8B05F215
#data 0xF1E6D137
#data 0xF20D415a
#data 0xFE17F120

#align4
loc_8C0EAA20:
#data 0x200884E5
#data 0x905D8B44
#data 0x02ECE301
#data 0x0E24223a
#data 0x64E34C0b
#data 0x881E85Ee
#data 0xD22F8B04
#data 0xE613E516
#data 0x64E3420b

#align4
loc_8C0EAA44:
#data 0xE35085Ee
#data 0x8B123037
#data 0x01EC904b
#data 0x890E2118
#data 0x03ECE022
#data 0x0E347320
#data 0xC880603c
#data 0x85EF8907
#data 0xCA01D325
#data 0x85EF81Ef
#data 0x430B6503
#data 0x64E3

loc_8C0EAA72:
#data 0x9039
#data 0x600C00Dc
#data 0x8B08881d
#data 0x200884D5
#data 0x85EE8B05
#data 0x81EE70Ff
#data 0x4011600f
#data 0x8941

loc_8C0EAA8E:
#data 0x84E5
#data 0xD119E302
#data 0x7001E612
#data 0x80E564E3
#data 0x9021E516
#data 0x223B02Ec
#data 0x4F260E24
#data 0x6DF66CF6
#data 0x6EF6412b

#align4
loc_8C0EAAB0:
#data 0x64E34C0b
#data 0x4011600e
#data 0x84E4892b
#data 0x7001E300
#data 0x900F80E4
#data 0x0E34A025

#align4
loc_8C0EAAC8:
#data 0x200884D5
#data 0x62D08B02
#data 0x8B152228

#align4
loc_8C0EAAD4:
#data 0x65D34F26
#data 0x6CF664E3
#data 0xA0766DF6
#data 0x041C6EF6
#data 0x0141012c
#data 0x000001D0

#align4
loc_8C0EAAEC:
#data bank03.loc_8c034dee
#data 0x43BC9249
#data 0x40892492

#align4
loc_8C0EAAF8:
#data bank03.loc_8c034e8c

loc_8C0EAAFC:
#data bank0b.loc_8c0b0B00

loc_8C0EAB00:
#data 0xD33962D3
#data 0x723461E3
#data 0x430B7134
#data 0x4C0BE00c
#data 0x64E3

loc_8C0EAB12:
#data 0x4F26
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0EAB1C:
#data 0x6E432FE6
#data 0x4F222FD6
#data 0x200885Ee
#data 0x6D538D3a
#data 0x430BD32f
#data 0x905564E3
#data 0x222802Ec
#data 0xE4078D01
#data 0xE400

loc_8C0EAB3E:
#data 0xE024
#data 0x904E0E44
#data 0x600C00Dc
#data 0x8B1F881d
#data 0x200884D5
#data 0x85EE8B1c
#data 0x6403E33c
#data 0x8B113437
#data 0x3413E178
#data 0xE022890e
#data 0x732003Ec
#data 0x603C0E34
#data 0x8907C880
#data 0xD31F85Ef
#data 0x81EFCA01
#data 0x650385Ef
#data 0x64E3430b

#align4
loc_8C0EAB80:
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x89154015

#align4
loc_8C0EAB8C:
#data 0xD319E000
#data 0x81EE64E3
#data 0xE6484F26
#data 0x6DF6E516
#data 0x6EF6432b

#align4
loc_8C0EABA0:
#data 0x430BD312
#data 0x600E64E3
#data 0x89054011
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6A004

#align4
loc_8C0EABB8:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0EABC0:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0EABE4,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0EABCE:
mov.b @(0x04,r4),r0 	
mov 0x00,r5 ; r5 set to 0x00
mov.l @(loc_8C0EABF8,pc),r3 ; r3 set to 0x8C0450C0
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0EABE4,pc),r0 ; r0 set to 0x12c
mov.b r5,@r4
jmp @r3
mov.b r5,@(r0,r4) 	
#data 0x01D00141

loc_8C0EABE4:
#data 0x012c
#data 0x0000

#align4
loc_8C0EABE8:
#data bank12.loc_8c1294C8

loc_8C0EABEC:
#data bank03.loc_8c034dee

loc_8C0EABF0:
#data bank0b.loc_8c0b0B00

loc_8C0EABF4:
#data bank03.loc_8c034e8c

loc_8C0EABF8:
#data bank04.loc_8c0450C0

loc_8C0EABFC:
#data 0x6E432FE6
#data 0x2FC62FD6
#data 0x6B532FB6
#data 0x63BD2FA6
#data 0x23382F96
#data 0xFFFB2F86
#data 0x4F22FFEb
#data 0x8F02DD4e
#data 0xDD4EE408
#data 0xE401

loc_8C0EAC22:
#data 0x60Bd
#data 0x8F028802
#data 0xDD4CEC00
#data 0xE409

loc_8C0EAC2E:
#data 0xC74d
#data 0x6A4C9989
#data 0xFE08D84a
#data 0xC74B4A15
#data 0xFF088F2a

#align4
loc_8C0EAC40:
#data 0xE600E503
#data 0x6463480b
#data 0x8D1F2008
#data 0xD3476403
#data 0x1434F0Fc
#data 0x84E114E6
#data 0xE0208041
#data 0xE02604B4
#data 0x90710495
#data 0x043653E6
#data 0xF3E6E05c
#data 0xE034F437
#data 0xF2E663D5
#data 0xF32D435a
#data 0xF0ECF23e
#data 0xE038F427
#data 0xF2E663D5
#data 0xF32D435a
#data 0xF427F23e

#align4
loc_8C0EAC8C:
#data 0x63CC7C01
#data 0x8BD533A3

#align4
loc_8C0EAC94:
#data 0x00096043
#data 0xFEF94F26
#data 0x68F6FFF9
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0EACAE:
mov.w @(loc_8C0EAD48,pc),r0 ; r0 set to 0xCc
mov 0x04,r3 ; r3 set to 0x04
mov.l r14,@-r15
mov r4,r14
mov.l @(r0,r14),r5
mov r14,r4
mov.w @(loc_8C0EAD4A,pc),r0 ; r0 set to 0x2B8
mov.l @(loc_8C0EAD70,pc),r1 ; r1 set to 0x8C15F82c
mov.l r3,@(r0,r5) 	
mov.b @(0x04,r14),r0 	
extu.b r0,r0 ; r0 set to 0xB8
shll2 r0 ; r0 set to 0x2E0
mov.l @(r0,r1),r3 ; r3 ??	
jmp @r3
mov.l @r15+,r14

loc_8C0EACCC:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0EAD4C,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0EAD74,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.w @(loc_8C0EAD4C,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0EAD4E,pc),r0 ; r0 set to 0xC0
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0EAD50,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0EAD52,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0EAD78,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x08,r3 ; r3 set to 0x08
fldi0 fr4
mov 0x24,r0 ; r0 set to 0x24
mov r14,r4
mov.b @(r0,r5),r2
mov.b r3,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
mov.l @(loc_8C0EAD7C,pc),r0 ; r0 set to 0x8C15F83c
extu.b r3,r3
lds.l @r15+,pr 	
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14
#data 0x3602

loc_8C0EAD48:
#data 0x00Cc

loc_8C0EAD4A:
#data 0x02B8

loc_8C0EAD4C:
#data 0x00Dc

loc_8C0EAD4E:
#data 0x00C0

loc_8C0EAD50:
#data 0x012c

loc_8C0EAD52:
#data 0x01A3

#align4
loc_8C0EAD54:
#data bank15.loc_8c15F7E8

loc_8C0EAD58:
#data bank15.loc_8c15F7E4

loc_8C0EAD5C:
#data bank15.loc_8c15F808

loc_8C0EAD60:
#data bank04.loc_8c044F12
#data 0x40092492
#data 0x3FD55555

#align4
loc_8C0EAD6C:
#data loc_8c0eACAe

loc_8C0EAD70:
#data bank15.loc_8c15F82c

loc_8C0EAD74:
#data bank12.loc_8c129560

loc_8C0EAD78:
#data bank12.loc_8c1294C8

loc_8C0EAD7C:
#data bank15.loc_8c15F83c

loc_8C0EAD80:
#data 0x2FD62FE6
#data 0x4F22FFFb
#data 0x4D0BDD3a
#data 0x94706E43
#data 0x2409F38d
#data 0xF2E6E05c
#data 0x8B00F235
#data 0x644b

loc_8C0EAD9E:
#data 0x644f
#data 0xC735445a
#data 0xC735FF08
#data 0xE05CF208
#data 0xF322F32d
#data 0x4D0BF3F3
#data 0x600CFE37
#data 0x405A7080
#data 0x8D044011
#data 0xD32FF32d
#data 0xF20D435a
#data 0xF320

loc_8C0EADCA:
#data 0xC72e
#data 0xE060F208
#data 0xF3F3F322
#data 0xFE374D0b
#data 0xD32BC91f
#data 0x64E37010
#data 0x81EEE607
#data 0xE5174F26
#data 0x6DF6FFF9
#data 0x6EF6432b

#align4
loc_8C0EADF0:
#data 0x2FD62FE6
#data 0xFFFB2FC6
#data 0xDD1E4F22
#data 0x6E434D0b
#data 0xF38DE43f
#data 0xE05C2409
#data 0xF235F2E6
#data 0x644B8B00

#align4
loc_8C0EAE10:
#data 0x445A644f
#data 0xFF08C718
#data 0xF208C718
#data 0xF32DE05c
#data 0xF3F3F322
#data 0xFE374D0b
#data 0x70E0C93f
#data 0x40084008
#data 0x4011405a
#data 0xF32D8D04
#data 0x435AD311
#data 0xF320F20d

#align4
loc_8C0EAE40:
#data 0xF208C710
#data 0xF322E060
#data 0x4D0BF3F3
#data 0xC91FFE37
#data 0x81EE7008
#data 0xEC064D0b
#data 0x8B00C803
#data 0xEC07

loc_8C0EAE5E:
#data 0x4F26
#data 0xD20966C3
#data 0xE51764E3
#data 0x6CF6FFF9
#data 0x422B6DF6
#data 0x00F06EF6

#align4
loc_8C0EAE74:
#data bank03.loc_8c03319e
#data 0x43800000
#data 0x3FD55555
#data 0x4F800000
#data 0x40092492

#align4
loc_8C0EAE88:
#data bank03.loc_8c034e8c

loc_8C0EAE8C:
#data 0xC7402FE6
#data 0x6E432FD6
#data 0xFFFB2FC6
#data 0xDD3E4F22
#data 0xFF084D0b
#data 0x70E0C93f
#data 0x40084008
#data 0x4011405a
#data 0xF32D8D04
#data 0x435AD339
#data 0xF320F20d

#align4
loc_8C0EAEB8:
#data 0xF208C738
#data 0xF322E05c
#data 0x4D0BF3F3
#data 0xC93FFE37
#data 0x400870E0
#data 0x405A4008
#data 0x8D044011
#data 0xD330F32d
#data 0xF20D435a
#data 0xF320

loc_8C0EAEDE:
#data 0xC730
#data 0xE060F208
#data 0xF3F3F322
#data 0xFE374D0b
#data 0x7008C91f
#data 0x4D0B81Ee
#data 0xC803EC06
#data 0xEC078B00

#align4
loc_8C0EAEFC:
#data 0x66C34F26
#data 0x64E3D228
#data 0xFFF9E517
#data 0x6DF66CF6
#data 0x6EF6422b


loc_8C0EAF10:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0EAFA8,pc),r3 ; r3 set to 0x8C034DEe
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
mov.w @(0x1C,r14),r0 	
add 0xFF,r0 ; r0 set to 0x5f
mov.w r0,@(0x1C,r14) 	
exts.w r0,r0 ; r0 ??	
tst r0,r0
bf loc_8C0EAF70
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
bra loc_8C0EAF7c
mov.l @r15+,r14

loc_8C0EAF70:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0EAF78:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0EAF7C:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0EAF8E,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0EAFAC,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0EAF8E:
#data 0x012c
#data 0x43800000

#align4
loc_8C0EAF94:
#data bank03.loc_8c03319e
#data 0x4F800000
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0EAFA4:
#data bank03.loc_8c034e8c

loc_8C0EAFA8:
#data bank03.loc_8c034dee

loc_8C0EAFAC:
#data bank04.loc_8c0450C0
#data 0x4F222FE6
#data 0x6E437FFc
#data 0x2F51E403
#data 0x633D63F1
#data 0x8F013343
#data 0xE5046543
#data 0xE600D24e
#data 0x6463420b
#data 0x8D132008
#data 0xD24C6403
#data 0x928C1424
#data 0x84E114E6
#data 0xE0208041
#data 0x043463F0
#data 0x0425E026
#data 0x9083E200
#data 0x908203Ed
#data 0x0436633d
#data 0x0424E022
#data 0x00096043
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0EB008:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0EB10C,pc),r1 ; r1 set to 0x8C15F848
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0EB01C:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0EB0FC,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.w @(loc_8C0EB0FE,pc),r0 ; r0 set to 0xC0
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0EB0FC,pc),r2 ; r2 set to 0xDc
mov.l @(loc_8C0EB110,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0EB100,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0EB102,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0EB114,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov r14,r1
mov.b @(r0,r13),r2
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
add 0x34,r1
mov.b r2,@(r0,r14) 	
mov 0x08,r2 ; r2 set to 0x08
mov.b @(0x04,r14),r0 	
add 0x01,r0 ; r0 set to 0x25
mov.b r0,@(0x04,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b r2,@(r0,r14) 	
mov r13,r2 ; r2 ??? bc r13 is ???	
mov.l @(loc_8C0EB114,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x20,r0 ; r0 set to 0x20
mov.l @(loc_8C0EB11C,pc),r3 ; r3 set to 0x8C034C38
mov.b @(r0,r14),r6
mov 0x1B,r5 ; r5 set to 0x1b
mov.l @(loc_8C0EB118,pc),r0 ; r0 set to 0x8C15F858
extu.b r6,r6
mov.b @(r0,r6),r6
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0EB0B0:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
mov.l r12,@-r15
mov 0x03,r2 ; r2 set to 0x03, r2 set to 0x03
mov.l r11,@-r15
mov r5,r13
sts.l pr,@-r15
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
extu.b r3,r3
cmp/ge r2,r3
bf/s loc_8C0EB0D0
mov 0x00,r12 ; r12 set to 0x00, r12 set to 0x00
bra loc_8C0EB1D4
nop 	

loc_8C0EB0D0:
mov.b @(r0,r14),r0
mov.l @(loc_8C0EB120,pc),r11 ; r11 set to 0x8C034D8c
extu.b r0,r0
cmp/eq 0x02,r0 	
bt loc_8C0EB17a
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
extu.b r0,r0
cmp/eq 0x01,r0 	
bt loc_8C0EB124
jsr @r11
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt loc_8C0EB0F2
bra loc_8C0EB248
nop 	

loc_8C0EB0F2:
bra loc_8C0EB258
nop 	
#data 0x3603
#data 0x00CC0158

loc_8C0EB0FC:
#data 0x00Dc

loc_8C0EB0FE:
#data 0x00C0

loc_8C0EB100:
#data 0x012c

loc_8C0EB102:
#data 0x01A3

#align4
loc_8C0EB104:
#data bank04.loc_8c044F12

loc_8C0EB108:
#data loc_8c0eB008

loc_8C0EB10C:
#data bank15.loc_8c15F848

loc_8C0EB110:
#data bank12.loc_8c129560

loc_8C0EB114:
#data bank12.loc_8c1294C8

loc_8C0EB118:
#data bank15.loc_8c15F858

loc_8C0EB11C:
#data bank03.loc_8c034C38

loc_8C0EB120:
#data bank03.loc_8c034D8c


loc_8C0EB124:
mov.w @(loc_8C0EB1BC,pc),r0 ; r0 set to 0x158
mov.w @(r0,r13),r3
mov.w @(loc_8C0EB1BE,pc),r0 ; r0 set to 0xCc
extu.w r3,r3
mov.l @(r0,r14),r2
cmp/eq r3,r2
bt loc_8C0EB136
bra loc_8C0EB248
nop 	

loc_8C0EB136:
jsr @r11
mov r14,r4
mov.w @(loc_8C0EB1C0,pc),r0 ; r0 set to 0x140
mov.b @(r0,r14),r3
tst r3,r3
bf loc_8C0EB146
bra loc_8C0EB258
nop 	

loc_8C0EB146:
mov.b @(r0,r14),r0
mov.l @(loc_8C0EB1C4,pc),r11 ; r11 set to 0x8C15F862
shll r0
mov.w @(r0,r11),r3
cmp/pz r3
bt loc_8C0EB162
mov.l @(loc_8C0EB1C8,pc),r3 ; r3 set to 0x8C0353Ee
mov 0x01,r7 ; r7 set to 0x01
mov r7,r5 ; r5 set to 0x01
mov 0x00,r6 ; r6 set to 0x00
jsr @r3
mov r13,r4
bra loc_8C0EB174
nop 	

loc_8C0EB162:
mov.w @(loc_8C0EB1C0,pc),r0 ; r0 set to 0x140
mov 0x01,r7 ; r7 set to 0x01
mov.l @(loc_8C0EB1CC,pc),r3 ; r3 set to 0x8C03544c
mov r7,r5 ; r5 set to 0x01
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
shll r0
mov.w @(r0,r11),r6
jsr @r3
mov r13,r4

loc_8C0EB174:
mov.w @(loc_8C0EB1C0,pc),r0 ; r0 set to 0x140, r0 set to 0x140
bra loc_8C0EB258
mov.b r12,@(r0,r14) 	

loc_8C0EB17A:
mov.w @(loc_8C0EB1BC,pc),r0 ; r0 set to 0x158
mov.w @(r0,r13),r3
mov.w @(loc_8C0EB1BE,pc),r0 ; r0 set to 0xCc
extu.w r3,r3
mov.l @(r0,r14),r2
cmp/eq r3,r2
bf loc_8C0EB248
mov.w @(loc_8C0EB1C2,pc),r0 ; r0 set to 0x12c
mov.b r12,@(r0,r14) 	
add 0x1F,r0 ; r0 set to 0x14b
mov.b @(r0,r13),r3
tst r3,r3
bt loc_8C0EB258
mov.w @(loc_8C0EB1C2,pc),r0 ; r0 set to 0x12c
mov 0x01,r3 ; r3 set to 0x01
mov r14,r1
add 0x34,r1
mov.b r3,@(r0,r14) 	
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov.l @(loc_8C0EB1D0,pc),r3 ; r3 set to 0x8C1294C8
mov.b r2,@(r0,r14) 	
mov r13,r2
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
jsr @r11
mov r14,r4
exts.b r0,r0 ; r0 ??	
cmp/pz r0
bf loc_8C0EB248
bra loc_8C0EB258
nop 	

loc_8C0EB1BC:
#data 0x0158

loc_8C0EB1BE:
#data 0x00Cc

loc_8C0EB1C0:
#data 0x0140

loc_8C0EB1C2:
#data 0x012c

#align4
loc_8C0EB1C4:
#data bank15.loc_8c15F862

loc_8C0EB1C8:
#data bank03.loc_8c0353Ee

loc_8C0EB1CC:
#data bank03.loc_8c03544c

loc_8C0EB1D0:
#data bank12.loc_8c1294C8

loc_8C0EB1D4:
#data 0x02DD904e
#data 0x622D904d
#data 0x332003Ee
#data 0x84E58B32
#data 0x8B072008
#data 0x700184E5
#data 0xE03C80E5
#data 0x60C381Ee
#data 0x81EF0009

#align4
loc_8C0EB1F8:
#data 0x707885Ef
#data 0xC71F81Ef
#data 0x9039F408
#data 0x233803Dd
#data 0xC71D8901
#data 0xF408

loc_8C0EB20E:
#data 0xE034
#data 0xF3D6D31d
#data 0xFE37F340
#data 0xF308C71a
#data 0xF2D6E038
#data 0xFE27F230
#data 0x650385Ef
#data 0x64E3430b
#data 0x02ECE022
#data 0x7209E31f
#data 0x02EC0E24
#data 0x0E242239
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x89074015


loc_8C0EB248:
lds.l @r15+,pr 	
mov r13,r5
mov r14,r4
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
bra loc_8C0EB268
mov.l @r15+,r14

loc_8C0EB258:
lds.l @r15+,pr 	
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0EB264:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0EB268:
mov.w @(loc_8C0EB27A,pc),r0 ; r0 set to 0x12c
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0EB28C,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x00CC0158
#data 0x0130

loc_8C0EB27A:
#data 0x012c
#data 0x42200000
#data 0xC2200000
#data 0x43AB6DB6

#align4
loc_8C0EB288:
#data bank03.loc_8c033718

loc_8C0EB28C:
#data bank04.loc_8c0450C0
#data 0x4F222FE6
#data 0x6E437FF8
#data 0x00096053
#data 0xE503D32d
#data 0x2F6080F4
#data 0x430BE600
#data 0x20086463
#data 0x64038D14
#data 0xE026924d
#data 0xE120D328
#data 0x9549314c
#data 0x04251434
#data 0x14E6354c
#data 0x804184E1
#data 0x210084F4
#data 0x63F0E021
#data 0x903E0434
#data 0x253103Ed
#data 0x00096043
#data 0x4F267F08
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x4F222FE6
#data 0x6E437FF8
#data 0x00096053
#data 0xE504D318
#data 0x2F6080F4
#data 0x430BE600
#data 0x20086463
#data 0x64038D14
#data 0xE0269223
#data 0xE120D313
#data 0x951F314c
#data 0x04251434
#data 0x14E6354c
#data 0x804184E1
#data 0x210084F4
#data 0x63F0E021
#data 0x90140434
#data 0x253103Ed
#data 0x00096043
#data 0x4F267F08
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0EB338:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0EB35C,pc),r0 ; r0 set to 0x8C15F8D4
extu.b r3,r3
mov.l @(0x18,r14),r5
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14
#data 0x3700
#data 0x015800Cc

#align4
loc_8C0EB354:
#data bank04.loc_8c044F12

loc_8C0EB358:
#data loc_8c0eB338

loc_8C0EB35C:
#data bank15.loc_8c15F8D4

loc_8C0EB360:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x4F2291B0
#data 0x31EC84E4
#data 0x700192Ac
#data 0x80E4D358
#data 0x430B90A9
#data 0x90A732Dc
#data 0x61E3E401
#data 0x0E447150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC9099
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD34A0E34
#data 0xE00C430b
#data 0xF48DE024
#data 0xE30002Dc
#data 0x90850E24
#data 0xE0310E34
#data 0xE0340E44
#data 0xFE37F3D6
#data 0xF3D6E038
#data 0xE03CFE37
#data 0xFE37F3D6
#data 0xF308C740
#data 0xFE37E05c
#data 0xF308C73f
#data 0xFE37E060
#data 0xFE47E068
#data 0xFE47E06c
#data 0x03ED906e
#data 0x8D042338
#data 0xE05CE602
#data 0xF34DF3E6
#data 0xFE37

loc_8C0EB406:
#data 0xD338
#data 0x430BE512
#data 0x4F2664E3
#data 0x64E365D3
#data 0xA0436DF6
#data 0x6EF6

loc_8C0EB41A:
#data 0xE034
#data 0xF356965b
#data 0xF437365c
#data 0xF356E038
#data 0x8467F437
#data 0x89072008
#data 0xE3018445
#data 0x80457001
#data 0x0434904a
#data 0x814EE038

#align4
loc_8C0EB440:
#data 0x0009000b
;-------------------------------------------------------------------------------

#align4
loc_8C0EB444:
#data 0xE15C2FE6
#data 0x31EC6E43
#data 0xD327E034
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
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x8B022008
#data 0x700184E4
#data 0x80E4

loc_8C0EB49A:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0EB4A0:
mov 0x24,r0 ; r0 set to 0x24
mov.l r14,@-r15
mov.b @(r0,r5),r3
mov r4,r14
mov.l @(loc_8C0EB4F0,pc),r1 ; r1 set to 0x8C15F918
mov r14,r4
mov.b r3,@(r0,r14) 	
mov.b @(0x05,r14),r0 	
extu.b r0,r0 ; r0 set to 0x24
shll2 r0 ; r0 set to 0x90
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0EB4BA:
mov r4,r3
mov.l @(loc_8C0EB4F4,pc),r1 ; r1 set to 0x8C15F920
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x00C000Dc
#data 0x01A3012c
#data 0x02A40130

#align4
loc_8C0EB4D8:
#data bank12.loc_8c129560

loc_8C0EB4DC:
#data bank12.loc_8c1294C8
#data 0x408F5555
#data 0x40AB6DB6

#align4
loc_8C0EB4E8:
#data bank03.loc_8c034e8c

loc_8C0EB4EC:
#data bank03.loc_8c034dee

loc_8C0EB4F0:
#data bank15.loc_8c15F918

loc_8C0EB4F4:
#data bank15.loc_8c15F920


loc_8C0EB4F8:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0EB5EA,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0EB5EA,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0EB5F4,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0EB5EC,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0EB5EE,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0EB5F0,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0EB5F8,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov 0x17,r5 ; r5 set to 0x17
mov.b r2,@(r0,r14) 	
mov 0x00,r6 ; r6 set to 0x00
mov.w @(loc_8C0EB5EE,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
mov.l @(loc_8C0EB5FC,pc),r3 ; r3 set to 0x8C034E8c
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???	
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0EB586:
mov.w @(loc_8C0EB5F2,pc),r0 ; r0 set to 0x159, r0 set to 0x159
mov.l r14,@-r15
sts.l pr,@-r15
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x15,r0 	
bt/s loc_8C0EB5A2
mov r4,r14
mov.b @(0x04,r14),r0 	
add 0x01,r0
mov.b r0,@(0x04,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0EB5A2:
#data 0xE024
#data 0x0E34035c
#data 0xF356E034
#data 0xFE37D314
#data 0xF356E038
#data 0xE03CFE37
#data 0xFE37F356
#data 0x64E3430b
#data 0x4011600e
#data 0x84E48905
#data 0x7001E300
#data 0x900E80E4
#data 0x0E34

loc_8C0EB5D2:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0EB5D8:
mov r4,r3
mov.l @(loc_8C0EB604,pc),r1 ; r1 set to 0x8C15F930
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0EB5EA:
#data 0x00Dc

loc_8C0EB5EC:
#data 0x00C0

loc_8C0EB5EE:
#data 0x012c

loc_8C0EB5F0:
#data 0x01A3

loc_8C0EB5F2:
#data 0x0159

#align4
loc_8C0EB5F4:
#data bank12.loc_8c129560

loc_8C0EB5F8:
#data bank12.loc_8c1294C8

loc_8C0EB5FC:
#data bank03.loc_8c034e8c

loc_8C0EB600:
#data bank03.loc_8c034dee

loc_8C0EB604:
#data bank15.loc_8c15F930


loc_8C0EB608:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0EB6FA,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0EB6FA,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0EB704,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0EB6FC,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0EB6FE,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0EB700,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0EB708,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov r4,r6 ; r6 set to 0x01
mov.b @(r0,r13),r2
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov 0x17,r5 ; r5 set to 0x17
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0EB6FE,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
mov.l @(loc_8C0EB70C,pc),r3 ; r3 set to 0x8C034E8c
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???	
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0EB696:
mov.w @(loc_8C0EB702,pc),r0 ; r0 set to 0x159, r0 set to 0x159
mov.l r14,@-r15
sts.l pr,@-r15
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x15,r0 	
bt/s loc_8C0EB6B2
mov r4,r14
mov.b @(0x04,r14),r0 	
add 0x01,r0
mov.b r0,@(0x04,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0EB6B2:
#data 0xE024
#data 0x0E34035c
#data 0xF356E034
#data 0xFE37D314
#data 0xF356E038
#data 0xE03CFE37
#data 0xFE37F356
#data 0x64E3430b
#data 0x4011600e
#data 0x84E48905
#data 0x7001E300
#data 0x900E80E4
#data 0x0E34

loc_8C0EB6E2:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0EB6E8:
mov r4,r3
mov.l @(loc_8C0EB714,pc),r1 ; r1 set to 0x8C15F940
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0EB6FA:
#data 0x00Dc

loc_8C0EB6FC:
#data 0x00C0

loc_8C0EB6FE:
#data 0x012c

loc_8C0EB700:
#data 0x01A3

loc_8C0EB702:
#data 0x0159

#align4
loc_8C0EB704:
#data bank12.loc_8c129560

loc_8C0EB708:
#data bank12.loc_8c1294C8

loc_8C0EB70C:
#data bank03.loc_8c034e8c

loc_8C0EB710:
#data bank03.loc_8c034dee

loc_8C0EB714:
#data bank15.loc_8c15F940


loc_8C0EB718:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0EB80C,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0EB80C,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0EB818,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0EB80E,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0EB810,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0EB812,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0EB81C,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.l @(loc_8C0EB820,pc),r3 ; r3 set to 0x8C034E8c
mov.b @(r0,r13),r2
mov 0x17,r5 ; r5 set to 0x17
mov 0x02,r6 ; r6 set to 0x02
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0EB810,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
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
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???	
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0EB7A4:
mov.w @(loc_8C0EB814,pc),r0 ; r0 set to 0x159, r0 set to 0x159
mov.l r14,@-r15
sts.l pr,@-r15
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x15,r0 	
bt/s loc_8C0EB7C0
mov r4,r14
mov.b @(0x04,r14),r0 	
add 0x01,r0
mov.b r0,@(0x04,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0EB7C0:
#data 0x035CE024
#data 0xE0340E34
#data 0xD316F356
#data 0xE038FE37
#data 0xFE37F356
#data 0xF356E03c
#data 0x430BFE37
#data 0x600E64E3
#data 0x89054011
#data 0xE30084E4
#data 0x80E47001
#data 0x0E349010

#align4
loc_8C0EB7F0:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0EB7F6:
mov r4,r3
mov.l @(loc_8C0EB828,pc),r1 ; r1 set to 0x8C15F950
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0EB808:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0EB80C:
#data 0x00Dc

loc_8C0EB80E:
#data 0x00C0

loc_8C0EB810:
#data 0x012c

loc_8C0EB812:
#data 0x01A3

loc_8C0EB814:
#data 0x0159
#data 0x0000

#align4
loc_8C0EB818:
#data bank12.loc_8c129560

loc_8C0EB81C:
#data bank12.loc_8c1294C8

loc_8C0EB820:
#data bank03.loc_8c034e8c

loc_8C0EB824:
#data bank03.loc_8c034dee

loc_8C0EB828:
#data bank15.loc_8c15F950

loc_8C0EB82C:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x4F2291Ad
#data 0x31EC84E4
#data 0x700192A9
#data 0x80E4D357
#data 0x430B90A6
#data 0x90A432Dc
#data 0x61E3E401
#data 0x0E447150
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
#data 0xD3490E34
#data 0xE00C430b
#data 0xD348E024
#data 0xE51702Dc
#data 0x0E24E608
#data 0x0E449081
#data 0x0E44E031
#data 0xF3D6E03c
#data 0x430BFE37
#data 0x4F2664E3
#data 0x64E365D3
#data 0x6EF66DF6

#align4
loc_8C0EB8AC:
#data 0x2FD62FE6
#data 0x7FFC4F22
#data 0x6D53E024
#data 0x936E6E43
#data 0x2F3233Ec
#data 0xD33A02Dc
#data 0xE0340E24
#data 0xFE37F3D6
#data 0xF3D6E038
#data 0x430BFE37
#data 0x63F264E3
#data 0x61319060
#data 0x321002Dd
#data 0x84E48902
#data 0x80E47001

#align4
loc_8C0EB8E8:
#data 0x4F267F04
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0EB8F2:
mov r4,r3
mov.l @(loc_8C0EB9B0,pc),r1 ; r1 set to 0x8C15F960
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0EB904:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0EB992,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0EB992,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0EB9A0,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0EB994,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0EB996,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0EB998,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0EB9A4,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0EB996,pc),r0 ; r0 set to 0x12c
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
mova @(loc_8C0EB9B4,pc),r0  ; r0 set to 0x8C0EB9B4
fmov.s @r0,fr4 ; r4 ??	
mov.w @(loc_8C0EB99E,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bf loc_8C0EB9B8
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r14),fr3
bra loc_8C0EB9Be
fsub fr4,fr3

loc_8C0EB992:
#data 0x00Dc

loc_8C0EB994:
#data 0x00C0

loc_8C0EB996:
#data 0x012c

loc_8C0EB998:
#data 0x01A3
#data 0x00Cc
#data 0x0158

loc_8C0EB99E:
#data 0x0130

#align4
loc_8C0EB9A0:
#data bank12.loc_8c129560

loc_8C0EB9A4:
#data bank12.loc_8c1294C8

loc_8C0EB9A8:
#data bank03.loc_8c034e8c

loc_8C0EB9AC:
#data bank03.loc_8c034dee

loc_8C0EB9B0:
#data bank15.loc_8c15F960

loc_8C0EB9B4:
#data 0x41855555


loc_8C0EB9B8:
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r14),fr3
fadd fr4,fr3

loc_8C0EB9BE:
mov.l @(loc_8C0EBB18,pc),r1 ; r1 set to 0x429A4924, r1 set to 0x429A4924
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
lds r1,fpul 	
mov 0x15,r6 ; r6 set to 0x15, r6 set to 0x15
fmov.s @(r0,r14),fr2
mov.l @(loc_8C0EBB1C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
fsts fpul,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
jsr @r3
mov r14,r4
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???, r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0EB9E2:
mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24, r0 set to 0x24
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(r0,r5),r3 ; r3 ??? bc r5 is ???, r3 ??? bc r5 is ???	
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0EBB0A,pc),r0 ; r0 set to 0x159, r0 set to 0x159, r0 set to 0x159
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???, r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x15,r0 	
bt loc_8C0EBA04
mov.b @(0x04,r14),r0 	
add 0x01,r0
mov.b r0,@(0x04,r14) 	
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0EBA04:
#data 0x430BD346
#data 0x600E64E3
#data 0x89054011
#data 0xE30084E4
#data 0x80E47001
#data 0x0E349078

#align4
loc_8C0EBA1C:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0EBA22:
mov r4,r3
mov.l @(loc_8C0EBB24,pc),r1 ; r1 set to 0x8C15F970
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0EBA34:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0EBB0E,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0EBB0E,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0EBB28,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0EBB10,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0EBB0C,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0EBB12,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0EBB2C,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov 0x17,r5 ; r5 set to 0x17
mov.b r2,@(r0,r14) 	
mov 0x07,r6 ; r6 set to 0x07
mov.w @(loc_8C0EBB0C,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
mov.l @(loc_8C0EBB1C,pc),r3 ; r3 set to 0x8C034E8c
fmov.s fr3,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???	
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0EBAC2:
mov.w @(loc_8C0EBB14,pc),r6 ; r6 set to 0xCC, r6 set to 0xCc
mov.w @(loc_8C0EBB16,pc),r0 ; r0 set to 0x158, r0 set to 0x158
add r4,r6 ; r6 ??? bc r4 is ???, r6 ??? bc r4 is ???	
mov.w @r6,r2
mov.w @(r0,r5),r3
cmp/eq r2,r3
bt loc_8C0EBAD8
mov.b @(0x04,r4),r0 	
add 0x01,r0 ; r0 set to 0x159, r0 set to 0x159
rts 	
mov.b r0,@(0x04,r4) 	
;-------------------------------------------------------------------------------

loc_8C0EBAD8:
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r3
mov.b r3,@(r0,r4) 	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr3
mov.l @(loc_8C0EBB20,pc),r3 ; r3 set to 0x8C034DEe
fmov.s fr3,@(r0,r4) 	
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
fmov.s fr3,@(r0,r4) 	
mov 0x3C,r0 ; r0 set to 0x3c
fmov.s @(r0,r5),fr3
jmp @r3
fmov.s fr3,@(r0,r4) 	
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0EBAF8:
mov r4,r3
mov.l @(loc_8C0EBB30,pc),r1 ; r1 set to 0x8C15F980
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0EBB0A:
#data 0x0159

loc_8C0EBB0C:
#data 0x012c

loc_8C0EBB0E:
#data 0x00Dc

loc_8C0EBB10:
#data 0x00C0

loc_8C0EBB12:
#data 0x01A3

loc_8C0EBB14:
#data 0x00Cc

loc_8C0EBB16:
#data 0x0158

#align4
loc_8C0EBB18:
#data 0x429A4924

#align4
loc_8C0EBB1C:
#data bank03.loc_8c034e8c

loc_8C0EBB20:
#data bank03.loc_8c034dee

loc_8C0EBB24:
#data bank15.loc_8c15F970

loc_8C0EBB28:
#data bank12.loc_8c129560

loc_8C0EBB2C:
#data bank12.loc_8c1294C8

loc_8C0EBB30:
#data bank15.loc_8c15F980


loc_8C0EBB34:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0EBC5C,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0EBC5C,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0EBC6C,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0EBC5E,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0EBC60,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0EBC62,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0EBC70,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r13),r2
mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
mov 0x17,r5 ; r5 set to 0x17
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0EBC60,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
mov.l @(loc_8C0EBC74,pc),r3 ; r3 set to 0x8C034E8c
fmov.s fr3,@(r0,r14) 	
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r6
add 0x16,r6
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???	
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
mov.l @r15+,r14

loc_8C0EBBBA:
mov.w @(loc_8C0EBC64,pc),r6 ; r6 set to 0xCC, r6 set to 0xCc
mov.w @(loc_8C0EBC66,pc),r0 ; r0 set to 0x158, r0 set to 0x158
add r4,r6 ; r6 ??? bc r4 is ???, r6 ??? bc r4 is ???	
mov.w @r6,r2
mov.w @(r0,r5),r3 ; r3 ??? bc r5 is ???	
cmp/eq r2,r3
bt loc_8C0EBBD0
mov.b @(0x04,r4),r0 	
add 0x01,r0 ; r0 set to 0x159, r0 set to 0x159
rts 	
mov.b r0,@(0x04,r4) 	
;-------------------------------------------------------------------------------

#align4
loc_8C0EBBD0:
#data 0xD729E024
#data 0x0434035c
#data 0xF356E034
#data 0xE038F437
#data 0xF437F356
#data 0x004CE021
#data 0x4000600c
#data 0x067D4000
#data 0xF208C722
#data 0x9037465a
#data 0x035DF32d
#data 0xF3222338
#data 0x8D01F33d
#data 0x666B065a

#align4
loc_8C0EBC08:
#data 0x6243666f
#data 0xE034465a
#data 0xE321F246
#data 0xF32D334c
#data 0xF427F230
#data 0x320CE038
#data 0x63302F26
#data 0x4300633c
#data 0x373C4300
#data 0x63038571
#data 0x63F6435a
#data 0xF008C712
#data 0xF238F32d
#data 0xF32AF23e
#data 0x432BD310
#data 0x000B0009
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0EBC4A:
mov r4,r3
mov.l @(loc_8C0EBC88,pc),r1 ; r1 set to 0x8C15F990
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0EBC5C:
#data 0x00Dc

loc_8C0EBC5E:
#data 0x00C0

loc_8C0EBC60:
#data 0x012c

loc_8C0EBC62:
#data 0x01A3

loc_8C0EBC64:
#data 0x00Cc

loc_8C0EBC66:
#data 0x0158
#data 0x00000130

#align4
loc_8C0EBC6C:
#data bank12.loc_8c129560

loc_8C0EBC70:
#data bank12.loc_8c1294C8

loc_8C0EBC74:
#data bank03.loc_8c034e8c

loc_8C0EBC78:
#data bank15.loc_8c15F890
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0EBC84:
#data bank03.loc_8c034dee

loc_8C0EBC88:
#data bank15.loc_8c15F990

loc_8C0EBC8C:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x4F22919c
#data 0x31EC84E4
#data 0x70019298
#data 0x80E4D34f
#data 0x430B9095
#data 0x909332Dc
#data 0x61E3E401
#data 0x0E447150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC9085
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD3410E34
#data 0xE00C430b
#data 0x02DCE024
#data 0x0E24E3Ff
#data 0x0E449072
#data 0x0E34E031
#data 0xF3D6E034
#data 0xFE37D43b
#data 0xF3D6E038
#data 0xE03CFE37
#data 0xFE37F3D6
#data 0x00ECE021
#data 0x4000600c
#data 0x034D4000
#data 0xF208C735
#data 0x435AE05c
#data 0xF322F32d
#data 0xE038FE37
#data 0x62E3E321
#data 0x320C33Ec
#data 0x63302F26
#data 0x4300633c
#data 0x343C4300
#data 0x63038541
#data 0x63F6435a
#data 0xF008C72b
#data 0xF138F32d
#data 0xF13E9046
#data 0x02EDF31a
#data 0x89032228
#data 0xF3E6E05c
#data 0xFE37F34d

#align4
loc_8C0EBD5C:
#data 0xD326E15c
#data 0xE03431Ec
#data 0xF2E6F318
#data 0xF230E517
#data 0xE021FE27
#data 0xD02006Ec
#data 0x066C666c
#data 0x64E3430b
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6

loc_8C0EBD86:
#data 0xE024
#data 0x6E432FE6
#data 0x4F229425
#data 0x34EC035c
#data 0x90210E34
#data 0x025D6341
#data 0x8B083230
#data 0x420BD216
#data 0x600E64E3
#data 0x89054011
#data 0xE2009012
#data 0x0E24

loc_8C0EBDB2:
#data 0x84E4
#data 0x80E47001

#align4
loc_8C0EBDB8:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0EBDBE:
mov r4,r3
mov.l @(loc_8C0EBE00,pc),r1 ; r1 set to 0x8C15F9A0
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x00C000Dc
#data 0x01A3012c
#data 0x00CC0130
#data 0x00000158

#align4
loc_8C0EBDE0:
#data bank12.loc_8c129560

loc_8C0EBDE4:
#data bank12.loc_8c1294C8

loc_8C0EBDE8:
#data bank15.loc_8c15F8A0
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0EBDF4:
#data bank15.loc_8c15F8C8

loc_8C0EBDF8:
#data bank03.loc_8c034e8c

loc_8C0EBDFC:
#data bank03.loc_8c034dee

loc_8C0EBE00:
#data bank15.loc_8c15F9A0

loc_8C0EBE04:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x4F229182
#data 0x31EC84E4
#data 0x7001927e
#data 0x80E4D342
#data 0x430B907b
#data 0x907932Dc
#data 0x61E3E401
#data 0x0E447150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC906b
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD3340E34
#data 0xE00C430b
#data 0x02DCE024
#data 0x0E24E3Ff
#data 0x0E449058
#data 0x0E34E031
#data 0xF3D6E034
#data 0xE038FE37
#data 0xFE37F3D6
#data 0xF3D6E03c
#data 0xC72BFE37
#data 0xE05CF308
#data 0xC72AFE37
#data 0xE060F308
#data 0x9045FE37
#data 0x233803Ed
#data 0xE61D8D04
#data 0xF3E6E05c
#data 0xFE37F34d

#align4
loc_8C0EBEA0:
#data 0xE517D324
#data 0x64E3430b
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6

loc_8C0EBEB2:
#data 0xE024
#data 0x6E432FE6
#data 0x4F229431
#data 0x34EC035c
#data 0x902D0E34
#data 0x025D6341
#data 0x8B143230
#data 0xD31AE05c
#data 0xE034F3E6
#data 0xF230F256
#data 0xE060FE27
#data 0xE038F3E6
#data 0xF230F256
#data 0x430BFE27
#data 0x600E64E3
#data 0x89054011
#data 0xE3009012
#data 0x0E34

loc_8C0EBEF6:
#data 0x84E4
#data 0x80E47001

#align4
loc_8C0EBEFC:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0EBF02:
mov r4,r3
mov.l @(loc_8C0EBF3C,pc),r1 ; r1 set to 0x8C15F9B0
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x00C000Dc
#data 0x01A3012c
#data 0x00CC0130
#data 0x00000158

#align4
loc_8C0EBF24:
#data bank12.loc_8c129560

loc_8C0EBF28:
#data bank12.loc_8c1294C8
#data 0xC2820000
#data 0x43586DB6

#align4
loc_8C0EBF34:
#data bank03.loc_8c034e8c

loc_8C0EBF38:
#data bank03.loc_8c034dee

loc_8C0EBF3C:
#data bank15.loc_8c15F9B0


loc_8C0EBF40:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.w @(loc_8C0EC08C,pc),r5 ; r5 set to 0xCc
mov.w @(loc_8C0EC08E,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r5 ; r5 ??? bc r14 is ???	
mov.w @(loc_8C0EC08E,pc),r2 ; r2 set to 0xDc
add 0x08,r5
add 0x01,r0
mov.l @(loc_8C0EC0A0,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0EC090,pc),r0 ; r0 set to 0xC0
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0EC092,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0EC094,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0EC0A4,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov r4,r3 ; r3 set to 0x01
mov.b @(r0,r13),r2
mov 0x00,r1 ; r1 set to 0x00
fldi0 fr4
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0EC092,pc),r0 ; r0 set to 0x12c
mov.b r4,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r4,@(r0,r14) 	
mov.w @(loc_8C0EC096,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r2
xor r3,r2
mov.w r2,@(r0,r14) 	
mov 0x38,r0 ; r0 set to 0x38
mov.w r1,@r5
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
fmov.s fr3,@(r0,r14) 	
mov 0x3C,r0 ; r0 set to 0x3c
fmov.s @(r0,r13),fr3
fmov.s fr3,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
mova @(loc_8C0EC0A8,pc),r0  ; r0 set to 0x8C0EC0A8
fmov.s @r0,fr3
mov 0x5C,r0 ; r0 set to 0x5c
mov.l @(loc_8C0EC0AC,pc),r2 ; r2 set to 0x8C034E8c
mov 0x16,r5 ; r5 set to 0x16
fmov.s fr3,@(r0,r14) 	
mov 0x0A,r6 ; r6 set to 0x0a
jsr @r2
mov r14,r4 ; r4 ??? bc r14 is ???	
lds.l @r15+,pr 	
mov r13,r5 ; r5 ??? bc r13 is ???	
mov r14,r4
mov.l @r15+,r13
bra loc_8C0EC23c
mov.l @r15+,r14

loc_8C0EBFF6:
#data 0x904e
#data 0x034D9548
#data 0x354CD62c
#data 0x8F032338
#data 0x90477508
#data 0x0009A001

loc_8C0EC00C:
#data 0x9045

loc_8C0EC00E:
#data 0xF366
#data 0x005AF33d
#data 0xC7278151
#data 0xF2086351
#data 0xF32D435a
#data 0x8B01F325
#data 0x2521923a

#align4
loc_8C0EC028:
#data 0x0009000b
;-------------------------------------------------------------------------------

#align4
loc_8C0EC02C:
#data 0xE05C952e
#data 0x354CF346
#data 0x63517508
#data 0xF22D435a
#data 0xF23DF230
#data 0x000B035a
#data 0x2531
;-------------------------------------------------------------------------------

loc_8C0EC046:
#data 0x9026
#data 0x034D9620
#data 0x2338364c
#data 0x8F017608
#data 0x655B6561

#align4
loc_8C0EC058:
#data 0x655F8561
#data 0x455A350c
#data 0xF32DE034
#data 0xF437000b
;-------------------------------------------------------------------------------

#align4
loc_8C0EC068:
#data 0xE51F854e
#data 0xD0122509
#data 0x9010055c
#data 0x2338034d
#data 0xE0348D01
#data 0x655b

loc_8C0EC07E:
#data 0x655e
#data 0x455AF246
#data 0xF230F32d
#data 0xF427000b
;-------------------------------------------------------------------------------

loc_8C0EC08C:
#data 0x00Cc

loc_8C0EC08E:
#data 0x00Dc

loc_8C0EC090:
#data 0x00C0

loc_8C0EC092:
#data 0x012c

loc_8C0EC094:
#data 0x01A3

loc_8C0EC096:
#data 0x0130
#data 0x0088008c
#data 0x0000024a

#align4
loc_8C0EC0A0:
#data bank12.loc_8c129560

loc_8C0EC0A4:
#data bank12.loc_8c1294C8

loc_8C0EC0A8:
#data 0x41555555

#align4
loc_8C0EC0AC:
#data bank03.loc_8c034e8c
#data 0x8C26A518
#data 0x4412AAAa

#align4
loc_8C0EC0B8:
#data bank15.loc_8c15F870

loc_8C0EC0BC:
#data 0x2FD62FE6
#data 0x7FF04F22
#data 0x6D539386
#data 0x6E4365D3
#data 0x2F3233Dc
#data 0x64E3BF91
#data 0xBFA965D3
#data 0x65D364E3
#data 0x64E3BFB3
#data 0xF2E6E034
#data 0xF231F3D6
#data 0x045AF23d
#data 0x4311634f
#data 0x644B8900

#align4
loc_8C0EC0F4:
#data 0x644FE310
#data 0x892C3433
#data 0xE01461F2
#data 0x0124E201
#data 0xF408C734
#data 0x02ED9065
#data 0x8B052228
#data 0xF3E6E034
#data 0xF340E004
#data 0xFF37A007

#align4
loc_8C0EC11C:
#data 0xF308C72f
#data 0xF2E6E034
#data 0xF230E004
#data 0xFF27

loc_8C0EC12A:
#data 0xE038
#data 0xF3E6D32c
#data 0x64F3E008
#data 0xFF37F340
#data 0xF2E6E03c
#data 0xF38DE00c
#data 0xFF27F230
#data 0x05ED9047
#data 0x7404430b
#data 0x81EEE008
#data 0x700184E5
#data 0x80E5

loc_8C0EC156:
#data 0x7F10
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0EC160:
#data 0x4F222FE6
#data 0x2F527FFc
#data 0xBF446E43
#data 0x65F264E3
#data 0x64E3BF69
#data 0x70FF85Ee
#data 0x700181Ee
#data 0x2008600f
#data 0xE0208B04
#data 0x84E581Ee
#data 0x80E57001

#align4
loc_8C0EC18C:
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0EC194:
#data 0x6E432FE6
#data 0x4F222FD6
#data 0x6D53BF2b
#data 0xBF5065D3
#data 0x65D364E3
#data 0x64E3BF5e
#data 0x70FF85Ee
#data 0x700181Ee
#data 0x2008600f
#data 0xE05C8B08
#data 0xF34DF3E6
#data 0xE010FE37
#data 0x84E581Ee
#data 0x80E57001

#align4
loc_8C0EC1CC:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x013002A4
#data 0x42CDB6Db
#data 0xC2CDB6Db

#align4
loc_8C0EC1E0:
#data bank10.loc_8c108012

loc_8C0EC1E4:
#data 0x6E432FE6
#data 0x2FD6944c
#data 0x34EC6D53
#data 0x4F227408
#data 0x43156341
#data 0xE5008D03
#data 0x00096053
#data 0x81Ee

loc_8C0EC202:
#data 0x85Ee
#data 0x81EE70Ff
#data 0x600F7001
#data 0x8B052008
#data 0x700184E4
#data 0x903680E4
#data 0x0E54A00c

#align4
loc_8C0EC21C:
#data 0xBEEA65D3
#data 0x65D364E3
#data 0x64E3BF02
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6AF09

#align4
loc_8C0EC234:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0EC23C:
mov 0x24,r0 ; r0 set to 0x24
mov.l r14,@-r15
mov.b @(r0,r5),r3
mov r4,r14
mov.w @(loc_8C0EC284,pc),r4 ; r4 set to 0xCc
mov.b r3,@(r0,r14) 	
mov.w @(loc_8C0EC288,pc),r0 ; r0 set to 0x159
add r14,r4 ; r4 ??? bc r14 is ???	
mov.b @(r0,r5),r2
mov.b @(0x01,r4),r0 	
cmp/eq r0,r2
bt loc_8C0EC25e
mov.b @(0x04,r14),r0 	
add 0x01,r0 ; r0 set to 0x15a
mov.b r0,@(0x04,r14) 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0EC25E:
mov.b @(0x05,r14),r0 	
mov r14,r4
mov.l @(loc_8C0EC28C,pc),r1 ; r1 set to 0x8C15F9C0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14
#data 0x000b
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0EC272:
mov r4,r3
mov.l @(loc_8C0EC290,pc),r1 ; r1 set to 0x8C15F9D0
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0EC284:
#data 0x00Cc
#data 0x012c

loc_8C0EC288:
#data 0x0159
#data 0x0000

#align4
loc_8C0EC28C:
#data bank15.loc_8c15F9C0

loc_8C0EC290:
#data bank15.loc_8c15F9D0

loc_8C0EC294:
#data 0x4F22919b
#data 0x314C8444
#data 0x7001D34f
#data 0x80449295
#data 0x430B9094
#data 0x9092325c
#data 0x6143E201
#data 0x04247150
#data 0x80428452
#data 0x80418451
#data 0xF356E050
#data 0xE054F437
#data 0xF437F356
#data 0x035C9084
#data 0x70010434
#data 0x0424025c
#data 0x035CE030
#data 0x72506253
#data 0xD3400434
#data 0xE00C430b
#data 0x025CE024
#data 0x0424E300
#data 0x04349071
#data 0x4F26

loc_8C0EC2F2:
#data 0x2FE6
#data 0x906FE302
#data 0x6D532FD6
#data 0x703C0D35
#data 0x9E6802Dd
#data 0x8D132228
#data 0x90663EDc
#data 0x07DED535
#data 0x600C8471
#data 0x8D048818
#data 0x60636603
#data 0x88190009
#data 0x8B0a

loc_8C0EC322:
#data 0x8453
#data 0x8B032008
#data 0x600C6050
#data 0x8B038806

#align4
loc_8C0EC330:
#data 0x70018444
#data 0x8044A034

#align4
loc_8C0EC338:
#data 0xE6018442
#data 0x600C6363
#data 0x430C206a
#data 0x600C8456
#data 0x8B292038
#data 0x200884E8
#data 0xE0228926
#data 0x73FF03Ec
#data 0x73010E34
#data 0x2338633e
#data 0xE1048B1e
#data 0xE0210E14
#data 0x73FF03Ec
#data 0x633E0E34
#data 0x8D024311
#data 0xE309E701
#data 0x0E34

loc_8C0EC37A:
#data 0xE025
#data 0x06DC64D3
#data 0x02ECE021
#data 0x666CE500
#data 0x6363D017
#data 0x43084600
#data 0x363C6DF6
#data 0x633C032c
#data 0xD314363c
#data 0x6EF6432b

#align4
loc_8C0EC3A0:
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0EC3A6:
mov.w @(loc_8C0EC3D6,pc),r3 ; r3 set to 0x2A4
mov 0x00,r6 ; r6 set to 0x00
mov.l r5,@-r15
mov.b @(0x04,r4),r0 	
add r3,r5
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0EC3D2,pc),r0 ; r0 set to 0x12c
mov.b r6,@(r0,r4) 	
mov r6,r0 ; r0 set to 0x00
nop 	
mov.b r0,@(0x08,r5) 	
mov 0x23,r0 ; r0 set to 0x23
mov 0x01,r2 ; r2 set to 0x01
mov.b r2,@(r0,r5) 	
mov r6,r5 ; r5 set to 0x00
mov.l @(loc_8C0EC3F0,pc),r2 ; r2 set to 0x8C035162
mov.l @r15,r4
jmp @r2
add 0x04,r15
#data 0x00Dc
#data 0x00C0

loc_8C0EC3D2:
#data 0x012c
#data 0x01A3

loc_8C0EC3D6:
#data 0x02A4
#data 0x020C03E4

#align4
loc_8C0EC3DC:
#data bank12.loc_8c129560

loc_8C0EC3E0:
#data bank12.loc_8c1294C8
#data 0x8C2895F0

#align4
loc_8C0EC3E8:
#data bank15.loc_8c15F9E0

loc_8C0EC3EC:
#data bank03.loc_8c03544c

loc_8C0EC3F0:
#data bank03.loc_8c035162


loc_8C0EC3F4:
mov r4,r3
mov.l @(loc_8C0EC420,pc),r1 ; r1 set to 0x8C15F9Ec
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0EC406:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0EC41E,pc),r0 ; r0 set to 0x12c
rts 	
mov.b r3,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0EC414:
mov.l @(loc_8C0EC424,pc),r3 ; r3 set to 0x8C0450C0
mov 0x00,r2 ; r2 set to 0x00
mov.w @(loc_8C0EC41E,pc),r0 ; r0 set to 0x12c
jmp @r3
mov.b r2,@(r0,r4) 	

loc_8C0EC41E:
#data 0x012c

#align4
loc_8C0EC420:
#data bank15.loc_8c15F9Ec

loc_8C0EC424:
#data bank04.loc_8c0450C0
#data 0x7FFC4F22
#data 0xE503D350
#data 0xE6002F42
#data 0x6463430b
#data 0x8D0F2008
#data 0xE2006403
#data 0xE021D34c
#data 0x04241434
#data 0x0424E020
#data 0x143663F2
#data 0x938860F2
#data 0x80418401
#data 0x0435E026
#data 0x4F267F04
#data 0x6043000b
;-------------------------------------------------------------------------------

#align4
loc_8C0EC464:
#data 0x4F222FE6
#data 0x2F517FFc
#data 0xD340E503
#data 0xE6026E43
#data 0x64E3430b
#data 0x8D122008
#data 0xD33D6403
#data 0x1434E020
#data 0x622D62F1
#data 0x04244219
#data 0x63F0E021
#data 0x93680434
#data 0x142652E6
#data 0x84E114E5
#data 0xE0268041
#data 0x0435

loc_8C0EC4A2:
#data 0x60E3
#data 0x7F040009
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0EC4AE:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov 0x02,r3 ; r3 set to 0x02
extu.b r0,r0
cmp/ge r3,r0
bt/s loc_8C0EC4D0
mov.l @(0x18,r14),r5
mov 0x20,r0 ; r0 set to 0x20
mov r14,r4
mov.b @(r0,r14),r1
mov.l @(loc_8C0EC578,pc),r0 ; r0 set to 0x8C15FA44
extu.b r1,r1
shll2 r1
mov.l @(r0,r1),r2
jmp @r2
mov.l @r15+,r14

loc_8C0EC4D0:
cmp/eq 0x02,r0 	
bf loc_8C0EC4Da
mov 0x03,r0 ; r0 set to 0x03
bra loc_8C0EC4E2
mov.b r0,@(0x04,r14) 	

loc_8C0EC4DA:
mov.l @(loc_8C0EC57C,pc),r1 ; r1 set to 0x8C0450C0
mov r14,r4
jmp @r1
mov.l @r15+,r14

loc_8C0EC4E2:
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0EC4E6:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
tst r0,r0
bf loc_8C0EC592
mov.b @(0x04,r14),r0 	
mov.w @(loc_8C0EC568,pc),r1 ; r1 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0EC580,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0EC56A,pc),r0 ; r0 set to 0xC0
mov.w @(loc_8C0EC568,pc),r2 ; r2 set to 0xDc
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0EC56C,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0EC56E,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0EC584,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.l @(loc_8C0EC588,pc),r4 ; r4 set to 0x8C15F9Fc
mov.b @(r0,r5),r2
mov 0x00,r3 ; r3 set to 0x00
mov.b r2,@(r0,r14) 	
mov.w @(loc_8C0EC56C,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14) 	
mov.w @r4+,r0 ; r0 ??	
mov.w r0,@(0x1E,r14) 	
exts.w r0,r0
tst r0,r0
bf loc_8C0EC58c
lds.l @r15+,pr 	
mov.l @(loc_8C0EC57C,pc),r2 ; r2 set to 0x8C0450C0
mov r14,r4 ; r4 ??? bc r14 is ???	
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14
#data 0x3800

loc_8C0EC568:
#data 0x00Dc

loc_8C0EC56A:
#data 0x00C0

loc_8C0EC56C:
#data 0x012c

loc_8C0EC56E:
#data 0x01A3

#align4
loc_8C0EC570:
#data bank04.loc_8c044F12

loc_8C0EC574:
#data loc_8c0eC4Ae

loc_8C0EC578:
#data bank15.loc_8c15FA44

loc_8C0EC57C:
#data bank04.loc_8c0450C0

loc_8C0EC580:
#data bank12.loc_8c129560

loc_8C0EC584:
#data bank12.loc_8c1294C8

loc_8C0EC588:
#data bank15.loc_8c15F9Fc

loc_8C0EC58C:
#data 0x81EE6045
#data 0x1E45


loc_8C0EC592:
mov.b @(0x05,r14),r0 	
tst r0,r0
bf loc_8C0EC5C6
mov.w @(0x1C,r14),r0 	
add 0xFF,r0
mov.w r0,@(0x1C,r14) 	
exts.w r0,r0
cmp/pz r0
bt loc_8C0EC5Ca
mov.l @(0x14,r14),r13
mov.w @r13+,r5
bsr loc_8C0EC464
mov r14,r4
mov.w @r13+,r0
mov.w r0,@(0x1C,r14) 	
mov.l r13,@(0x14,r14) 	
mov.w @(0x1E,r14),r0 	
add 0xFF,r0
mov.w r0,@(0x1E,r14) 	
exts.w r0,r0
cmp/pl r0
bt loc_8C0EC5Ca
mov.b @(0x05,r14),r0 	
add 0x01,r0
bra loc_8C0EC5Ca
mov.b r0,@(0x05,r14) 	

loc_8C0EC5C6:
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x04,r14) 	

loc_8C0EC5CA:
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0EC5D2:
mov.l r14,@-r15
mov 0x21,r0 ; r0 set to 0x21
mov.l r13,@-r15
mov r4,r14
mov.l r12,@-r15
mov r5,r13
mov.l r11,@-r15
sts.l pr,@-r15
mov.b @(r0,r14),r12
mov.b @(0x04,r14),r0 	
extu.b r12,r12
mov.l @(loc_8C0EC6B4,pc),r2 ; r2 set to 0x8C15FA14
mov r12,r3
shll r12
add r3,r12
tst r0,r0
shll2 r12
bf/s loc_8C0EC6E0
add r2,r12
mov.b @(0x04,r14),r0 	
mov.w @(loc_8C0EC6A6,pc),r1 ; r1 set to 0xDc
add 0x01,r0 ; r0 set to 0x22
mov.l @(loc_8C0EC6B8,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14) 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0EC6A8,pc),r0 ; r0 set to 0xC0
mov.w @(loc_8C0EC6A6,pc),r2 ; r2 set to 0xDc
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C0EC6AA,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0EC6AC,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0EC6BC,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
fldi0 fr4
mov.b @(r0,r13),r2
mov 0xF8,r3 ; r3 set to 0xFFFFFFF8
mov 0x12,r5 ; r5 set to 0x12
mov.b r2,@(r0,r14) 	
mov 0x31,r0 ; r0 set to 0x31
mov.b r3,@(r0,r14) 	
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr4,@(r0,r14) 	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14) 	
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr4,@(r0,r14) 	
mova @(loc_8C0EC6C0,pc),r0  ; r0 set to 0x8C0EC6C0
fmov.s @r0,fr3 ; r3 ??	
mov 0x60,r0 ; r0 set to 0x60
mov.l @(loc_8C0EC6C8,pc),r3 ; r3 set to 0x8C034E8c
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0EC6C4,pc),r0  ; r0 set to 0x8C0EC6C4
fmov.s @r0,fr3 ; r3 ??	
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr3,@(r0,r14) 	
mov.w @(0x0A,r12),r0 	
mov r0,r6 ; r6 set to 0x6c
jsr @r3
mov r14,r4
mov 0x21,r0 ; r0 set to 0x21
mov.w @(loc_8C0EC6AE,pc),r3 ; r3 set to 0x200
mov.b @(r0,r14),r5 ; r5 ??? bc r14 is ???	
extu.b r5,r5
or r3,r5
bsr loc_8C0EC464
mov r14,r4
mov.b @(0x08,r12),r0 	
mov.w r0,@(0x1C,r14) 	
mov.b @(0x09,r12),r0 	
mov.w r0,@(0x1E,r14) 	
mov.w @(loc_8C0EC6B0,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???	
tst r3,r3
bt/s loc_8C0EC6Cc
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r12,fr4
bra loc_8C0EC6Ce
fneg fr4

loc_8C0EC6A6:
#data 0x00Dc

loc_8C0EC6A8:
#data 0x00C0

loc_8C0EC6AA:
#data 0x012c

loc_8C0EC6AC:
#data 0x01A3

loc_8C0EC6AE:
#data 0x0200

loc_8C0EC6B0:
#data 0x0130
#data 0x0000

#align4
loc_8C0EC6B4:
#data bank15.loc_8c15FA14

loc_8C0EC6B8:
#data bank12.loc_8c129560

loc_8C0EC6BC:
#data bank12.loc_8c1294C8

loc_8C0EC6C0:
#data 0xC2092492

#align4
loc_8C0EC6C4:
#data 0xBF892492

#align4
loc_8C0EC6C8:
#data bank03.loc_8c034e8c

loc_8C0EC6CC:
#data 0xF4C8

loc_8C0EC6CE:
#data 0xF3D6
#data 0xFE37F340
#data 0xF308C737
#data 0xF2D6E038
#data 0xFE27F230

#align4
loc_8C0EC6E0:
#data 0x03DCE024
#data 0x84E50E34
#data 0x8B4E2008
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x89084011
#data 0x85EFD32f
#data 0x81EE430b
#data 0x8902C801
#data 0xBEAD9555
#data 0x64E3

loc_8C0EC70A:
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
#data 0xE038FE27
#data 0xE004F3E6
#data 0xF235F2C6
#data 0xF3C68B2b
#data 0xD31AE038
#data 0x84E5FE37
#data 0x80E57001
#data 0x05ECE021
#data 0x4500655c
#data 0x353C4500
#data 0x85516451
#data 0x4B156B4d
#data 0x8F186D03
#data 0xEC00

loc_8C0EC776:
#data 0x65D3
#data 0x64E3BE74
#data 0x62CD7C01
#data 0x8FF832B3
#data 0xA00E7D01
#data 0x0009

loc_8C0EC78A:
#data 0xD30d
#data 0x64E3430b
#data 0x4011600e
#data 0x4F268907
#data 0x64E3D30a
#data 0x6CF66BF6
#data 0x432B6DF6
#data 0x6EF6

loc_8C0EC7A6:
#data 0x4F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x05006EF6
#data 0x441A4924

#align4
loc_8C0EC7B8:
#data bank03.loc_8c03319e

loc_8C0EC7BC:
#data bank15.loc_8c15FA5c

loc_8C0EC7C0:
#data bank03.loc_8c034dee

loc_8C0EC7C4:
#data bank04.loc_8c0450C0

loc_8C0EC7C8:
#data 0x6E432FE6
#data 0x84E44F22
#data 0x8B2E2008
#data 0x91A184E4
#data 0xD3537001
#data 0x31EC80E4
#data 0x929B909d
#data 0x325C430b
#data 0xE201909a
#data 0x715061E3
#data 0x84520E24
#data 0x845180E2
#data 0xE05080E1
#data 0xFE37F356
#data 0xF356E054
#data 0x908CFE37
#data 0x0E34035c
#data 0x025C7001
#data 0xE0300E24
#data 0x6253035c
#data 0x0E347250
#data 0x430BD343
#data 0xE024E00c
#data 0x025CD342
#data 0xE604E512
#data 0x430B0E24
#data 0x64E3

loc_8C0EC832:
#data 0x54E5
#data 0xF346E034
#data 0xE038FE37
#data 0xFE37F346
#data 0x034CE024
#data 0x906D0E34
#data 0x2228024c
#data 0xE2008906
#data 0x0424D338
#data 0x4F2664E3
#data 0x6EF6432b

#align4
loc_8C0EC85C:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0EC862:
#data 0x2FE6
#data 0x2FD66E43
#data 0x84E44F22
#data 0x8F412008
#data 0x84E46D53
#data 0x70019152
#data 0x80E4D32b
#data 0x904E31Ec
#data 0x430B924c
#data 0x904B32Dc
#data 0x61E3E201
#data 0x0E247150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC903d
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD31C0E34
#data 0xE00C430b
#data 0x02DCE024
#data 0xE512E3F8
#data 0xE0340E24
#data 0xFE37F3D6
#data 0xF3D6E038
#data 0x9026FE37
#data 0x81EE00Dd
#data 0x0E34E031
#data 0x06ECE021
#data 0x7607D312
#data 0x64E3430b
#data 0xE51FD212
#data 0x64D3420b

#align4
loc_8C0EC8F4:
#data 0x03DCE024
#data 0x93140E34
#data 0x33DC85Ee
#data 0x633D6331
#data 0x89053030
#data 0xD30A4F26
#data 0x6DF664E3
#data 0x6EF6432b

#align4
loc_8C0EC914:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x00C000Dc
#data 0x01A3012c
#data 0x01580141

#align4
loc_8C0EC928:
#data bank12.loc_8c129560

loc_8C0EC92C:
#data bank12.loc_8c1294C8

loc_8C0EC930:
#data bank03.loc_8c034e8c

loc_8C0EC934:
#data bank04.loc_8c0450C0

loc_8C0EC938:
#data bank04.loc_8c042008

loc_8C0EC93C:
#data 0x6E432FE6
#data 0x4F222FD6
#data 0x200884E4
#data 0x6D538F38
#data 0x915084E4
#data 0xD32A7001
#data 0x31EC80E4
#data 0x924A904c
#data 0x32DC430b
#data 0xE2019049
#data 0x715061E3
#data 0x84D20E24
#data 0x84D180E2
#data 0xE05080E1
#data 0xFE37F3D6
#data 0xF3D6E054
#data 0x903BFE37
#data 0x0E3403Dc
#data 0x02DC7001
#data 0xE0300E24
#data 0x62D303Dc
#data 0x0E347250
#data 0x430BD31a
#data 0xE024E00c
#data 0xE3F802Dc
#data 0x0E24E512
#data 0xF3D6E034
#data 0xFE37E60c
#data 0xF3D6E038
#data 0xE031FE37
#data 0xD3130E34
#data 0x64E3430b

#align4
loc_8C0EC9BC:
#data 0xD312E024
#data 0x0E2402Dc
#data 0x64E3430b
#data 0x4011600e
#data 0x4F268905
#data 0x64E3D30e
#data 0x432B6DF6
#data 0x6EF6

loc_8C0EC9DA:
#data 0x900e
#data 0x233803Ec
#data 0xE3008903
#data 0xE0030E34
#data 0x80D6

loc_8C0EC9EA:
#data 0x4F26
#data 0x000B6DF6
#data 0x00DC6EF6
#data 0x012C00C0
#data 0x014101A3

#align4
loc_8C0EC9FC:
#data bank12.loc_8c129560

loc_8C0ECA00:
#data bank12.loc_8c1294C8

loc_8C0ECA04:
#data bank03.loc_8c034e8c

loc_8C0ECA08:
#data bank03.loc_8c034dee

loc_8C0ECA0C:
#data bank04.loc_8c0450C0

loc_8C0ECA10:
#data 0x6E432FE6
#data 0x84E44F22
#data 0x8B442008
#data 0x916D84E4
#data 0xD3387001
#data 0x31EC80E4
#data 0x92679069
#data 0x325C430b
#data 0xE2019066
#data 0x715061E3
#data 0x84520E24
#data 0x845180E2
#data 0xE05080E1
#data 0xFE37F356
#data 0xF356E054
#data 0x9058FE37
#data 0x0E34035c
#data 0x025C7001
#data 0xE0300E24
#data 0x6253035c
#data 0x0E347250
#data 0x430BD328
#data 0xE024E00c
#data 0x025CD327
#data 0xE606E512
#data 0xE0340E24
#data 0xF34654E5
#data 0xE038FE37
#data 0xFE37F346
#data 0x81EEE020
#data 0x64E3430b
#data 0xF48DE05c
#data 0xE068FE47
#data 0xC71EFE47
#data 0xE060F308
#data 0xC71DFE37
#data 0xE06CF308
#data 0xFE37

loc_8C0ECAA6:
#data 0xD31c
#data 0x64E3430b
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x89024011
#data 0xA01CE002
#data 0x80E4

loc_8C0ECABE:
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
#data 0xFE27

loc_8C0ECAF6:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x00C000Dc
#data 0x01A3012c

#align4
loc_8C0ECB04:
#data bank12.loc_8c129560

loc_8C0ECB08:
#data bank12.loc_8c1294C8

loc_8C0ECB0C:
#data bank03.loc_8c034e8c
#data 0xC0092492
#data 0xBF092492

#align4
loc_8C0ECB18:
#data bank03.loc_8c034dee

loc_8C0ECB1C:
#data 0x7FFC4F22
#data 0xE503D341
#data 0xE6002F42
#data 0x6463430b
#data 0x8D0F2008
#data 0xE2006403
#data 0xE021D33d
#data 0x04241434
#data 0x0424E020
#data 0x143663F2
#data 0x936860F2
#data 0x80418401
#data 0x0435E026

#align4
loc_8C0ECB50:
#data 0x4F267F04
#data 0x6043000b
;-------------------------------------------------------------------------------
#data 0xE5042FE6
#data 0xD3324F22
#data 0xE6006E43
#data 0x6463430b
#data 0x8D122008
#data 0xE2006403
#data 0xE021D32f
#data 0x04241434
#data 0x0424E020
#data 0x14E6934d
#data 0x804184E1
#data 0x0435E026
#data 0x02ED9048
#data 0x622D9047
#data 0x60430426
#data 0x4F260009
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0ECB9C:
#data 0xE3022FE6
#data 0x84444F22
#data 0x3033600c
#data 0x55468D33
#data 0xE7008444
#data 0x8F542008
#data 0x8444E601
#data 0x70019132
#data 0x8044D31d
#data 0x902E314c
#data 0x430B922c
#data 0x902B325c
#data 0x71506143
#data 0x84520464
#data 0x84518042
#data 0xE0508041
#data 0xF437F356
#data 0xF356E054
#data 0x901EF437
#data 0x0434035c
#data 0x025C7001
#data 0xE0300424
#data 0x6253035c
#data 0x04347250
#data 0x430BD30e
#data 0xE024E00c
#data 0x025CD30d
#data 0x60320424
#data 0x88048403
#data 0x8B18

loc_8C0ECC12:
#data 0x4F26
#data 0x432BD30a
#data 0x38016EF6
#data 0x00CC0158
#data 0x00C000Dc
#data 0x01A3012c

#align4
loc_8C0ECC28:
#data bank04.loc_8c044F12

loc_8C0ECC2C:
#data loc_8c0eCB9c

loc_8C0ECC30:
#data loc_8c0eCCCe

loc_8C0ECC34:
#data bank12.loc_8c129560

loc_8C0ECC38:
#data bank12.loc_8c1294C8
#data 0x8C26823c

#align4
loc_8C0ECC40:
#data bank04.loc_8c0450C0

loc_8C0ECC44:
#data 0xF356E034
#data 0xE038F437
#data 0xF437F356
#data 0x00096073
#data 0xE031814e
#data 0x73FF034c
#data 0x0434

loc_8C0ECC5E:
#data 0x904f
#data 0xE0240474
#data 0x0434035c
#data 0x025C904a
#data 0x892A2228
#data 0x9E47E034
#data 0x3E5CF356
#data 0xE038F437
#data 0xF437F356
#data 0x035D903f
#data 0x84E10435
#data 0x63ED6E03
#data 0x89162338
#data 0x63ED9036
#data 0x854E0464
#data 0x89083030
#data 0x000960E3
#data 0xE517D31a
#data 0x6603814e
#data 0x432B4F26
#data 0x6EF6

loc_8C0ECCAE:
#data 0xD218
#data 0x23386320
#data 0x4F268B08
#data 0x432BD316
#data 0x6EF6

loc_8C0ECCBE:
#data 0x60E3
#data 0xA0010009
#data 0x814e

loc_8C0ECCC6:
#data 0x0474

#align4
loc_8C0ECCC8:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0ECCCE:
#data 0x2FE6
#data 0x2FD66E43
#data 0x2FC6E302
#data 0x84E44F22
#data 0x3033600c
#data 0x5DE68D07
#data 0x01DD900f
#data 0x611D900e
#data 0x321002Ee
#data 0x8914

loc_8C0ECCF2:
#data 0x4F26
#data 0x64E3D308
#data 0x6DF66CF6
#data 0x6EF6432b
#data 0x0130012c
#data 0x01580150
#data 0x000000Cc

#align4
loc_8C0ECD0C:
#data bank03.loc_8c034e8c
#data 0x8C289634

#align4
loc_8C0ECD14:
#data bank03.loc_8c034dee

loc_8C0ECD18:
#data bank04.loc_8c0450C0

loc_8C0ECD1C:
#data 0x200884E4
#data 0xE4F88F51
#data 0x919E84E4
#data 0xD3527001
#data 0x31EC80E4
#data 0x9298909a
#data 0x32DC430b
#data 0xE2019097
#data 0x715061E3
#data 0x84D20E24
#data 0x84D180E2
#data 0xE05080E1
#data 0xFE37F3D6
#data 0xF3D6E054
#data 0x9089FE37
#data 0x0E3403Dc
#data 0x02DC7001
#data 0xE0300E24
#data 0x62D303Dc
#data 0x0E347250
#data 0x430BD342
#data 0xE024E00c
#data 0x0E2402Dc
#data 0xF308C740
#data 0xFE37E060
#data 0xF308C73f
#data 0xFE37E05c
#data 0x03ED9071
#data 0x89032338
#data 0xF3E6E05c
#data 0xFE37F34d

#align4
loc_8C0ECD98:
#data 0xD33AE05c
#data 0xE034F3E6
#data 0xE600F2D6
#data 0xF230E51b
#data 0xE060FE27
#data 0xE038F3E6
#data 0xF230F2D6
#data 0xE031FE27
#data 0x64E30E44
#data 0x6CF64F26
#data 0x432B6DF6
#data 0x6EF6

loc_8C0ECDC6:
#data 0x84E5
#data 0x8F262008
#data 0xE05CEC00
#data 0xE034F3E6
#data 0xF230F2D6
#data 0xE060FE27
#data 0xE038F3E6
#data 0xF230F2D6
#data 0xE024FE27
#data 0x0E3403Dc
#data 0xD326E031
#data 0x430B0E44
#data 0x600E64E3
#data 0x89534011
#data 0xE60184E5
#data 0xE700D322
#data 0x64E37001
#data 0xE02280E5
#data 0xE51B0EC4
#data 0x6CF64F26
#data 0x432B6DF6
#data 0x6EF6

loc_8C0ECE1A:
#data 0x9029
#data 0x431103Dc
#data 0xE0228B38
#data 0x902302Ec
#data 0x03DC622c
#data 0x890D3230
#data 0xE02202Dc
#data 0xE51BD315
#data 0x0E24E601
#data 0x677C07Ec
#data 0x64E3430b
#data 0x65D3D212
#data 0x64E3420b

#align4
loc_8C0ECE4C:
#data 0xF3E6E05c
#data 0xF2D6E034
#data 0xFE27F230
#data 0xF3E6E060
#data 0xF2D6E038
#data 0xA01FF230
#data 0x00DCFE27
#data 0x012C00C0
#data 0x013001A3
#data 0x00000141

#align4
loc_8C0ECE74:
#data bank12.loc_8c129560

loc_8C0ECE78:
#data bank12.loc_8c1294C8
#data 0x43AB6DB6
#data 0x41555555

#align4
loc_8C0ECE84:
#data bank03.loc_8c034C38

loc_8C0ECE88:
#data bank03.loc_8c034D8c

loc_8C0ECE8C:
#data bank03.loc_8c034CD6

loc_8C0ECE90:
#data bank0b.loc_8c0b7854

loc_8C0ECE94:
#data 0x0EC4900b
#data 0x700184E4
#data 0x60C380E4
#data 0x80E50009

#align4
loc_8C0ECEA4:
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x012C6EF6

#align4
loc_8C0ECEB0:
#data 0x7FF84F22
#data 0x60532F42
#data 0xD34B0009
#data 0x81F2E503
#data 0x430BE600
#data 0x20086463
#data 0x64038D13
#data 0x9182D347
#data 0xE3001434
#data 0x620385F2
#data 0x0424E020
#data 0x0434E021
#data 0x62F2937a
#data 0x60F21426
#data 0x8401001e
#data 0xE0268041
#data 0x0435

loc_8C0ECEF2:
#data 0x7F08
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0ECEFA:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov 0x02,r3 ; r3 set to 0x02
mov.w @(loc_8C0ECFD6,pc),r0 ; r0 set to 0x1B4
mov.l r12,@-r15
sts.l pr,@-r15
mov.l @(0x18,r14),r13
mov.l @(r0,r13),r12
mov.b @(0x04,r14),r0 	
extu.b r0,r0 ; r0 set to 0xB4
cmp/ge r3,r0
bf loc_8C0ECF22
lds.l @r15+,pr 	
mov.l @(loc_8C0ECFF0,pc),r1 ; r1 set to 0x8C0450C0
mov r14,r4
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r1
mov.l @r15+,r14

loc_8C0ECF22:
#data 0x84E4
#data 0x8B362008
#data 0x915684E4
#data 0xD3317001
#data 0xE00080E4
#data 0x31EC80E5
#data 0x924E9050
#data 0x32CC430b
#data 0xE201904d
#data 0x715061E3
#data 0x84C20E24
#data 0x84C180E2
#data 0xE05080E1
#data 0xFE37F3C6
#data 0xF3C6E054
#data 0x903FFE37
#data 0x0E3403Cc
#data 0x02CC7001
#data 0xE0300E24
#data 0x62C303Cc
#data 0x0E347250
#data 0x430BD320
#data 0xE024E00c
#data 0x02CCD31f
#data 0xE604E519
#data 0x430B0E24
#data 0xE02464E3
#data 0xE3F802Cc
#data 0xE0310E24
#data 0x0E34

loc_8C0ECF96:
#data 0xE024
#data 0x02CCD319
#data 0x430B0E24
#data 0x901E64E3
#data 0x222802Ec
#data 0xD3168903
#data 0x430BE504
#data 0x64C3

loc_8C0ECFB2:
#data 0x84D5
#data 0x8802600c
#data 0x90138B09
#data 0x600C00Dc
#data 0x8B048813
#data 0xE30184D6
#data 0x3037600c
#data 0x8B1c

loc_8C0ECFCE:
#data 0x84E4
#data 0xA0397001
#data 0x80E4

loc_8C0ECFD6:
#data 0x01B4
#data 0x00DC3802
#data 0x012C00C0
#data 0x014101A3
#data 0x000001F6

#align4
loc_8C0ECFE8:
#data bank04.loc_8c044F12

loc_8C0ECFEC:
#data loc_8c0eCEFa

loc_8C0ECFF0:
#data bank04.loc_8c0450C0

loc_8C0ECFF4:
#data bank12.loc_8c129560

loc_8C0ECFF8:
#data bank12.loc_8c1294C8

loc_8C0ECFFC:
#data bank03.loc_8c034e8c

loc_8C0ED000:
#data bank03.loc_8c034dee

loc_8C0ED004:
#data bank04.loc_8c0424A6

loc_8C0ED008:
#data 0x200884E5
#data 0xD3118B1c
#data 0x0009430b
#data 0xC907D110
#data 0xF4164008
#data 0x03DD9019
#data 0x8D012338
#data 0xF44DE034

#align4
loc_8C0ED028:
#data 0xD30AF3D6
#data 0x430BF340
#data 0xD10AFE37
#data 0x4008C907
#data 0xE038F316
#data 0xF230F2D6
#data 0x84E5FE27
#data 0x80E57001

#align4
loc_8C0ED048:
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x01306EF6

#align4
loc_8C0ED054:
#data bank03.loc_8c03319e

loc_8C0ED058:
#data bank15.loc_8c15FA6c

loc_8C0ED05C:
#data bank15.loc_8c15FA8c
#data 0x7FF84F22
#data 0xE600D353
#data 0x2F521F41
#data 0x430BE503
#data 0x20086463
#data 0x64038D0a
#data 0xE026D34f
#data 0x52F11434
#data 0x1426938f
#data 0xE0200435
#data 0x042462F2
#data 0x4F267F08
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0ED094:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0ED1BC,pc),r1 ; r1 set to 0x8C15FAAc
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

#align4
loc_8C0ED0A8:
#data 0x6E432FE6
#data 0x91792FD6
#data 0x84E44F22
#data 0xD34231Ec
#data 0x92737001
#data 0x907280E4
#data 0x325C430b
#data 0xED019070
#data 0x715061E3
#data 0x84520ED4
#data 0x845180E2
#data 0xE05080E1
#data 0xFE37F356
#data 0xF356E054
#data 0x9062FE37
#data 0x0E34035c
#data 0x025C7001
#data 0xE0300E24
#data 0x6253035c
#data 0x0E347250
#data 0x430BD332
#data 0xE024E00c
#data 0x025C61E3
#data 0x7134E308
#data 0x62530E24
#data 0x2ED07234
#data 0xD32C0E34
#data 0xE00C430b
#data 0xD32BE020
#data 0xE00406Ec
#data 0x4600666c
#data 0x363C4608
#data 0xF33DF368
#data 0x903DF366
#data 0x045A02Ed
#data 0x2228F33d
#data 0x065A8D02
#data 0x644B666b

#align4
loc_8C0ED140:
#data 0xE034445a
#data 0xE320F2E6
#data 0x465AF32d
#data 0xF32DF230
#data 0xE05CFE27
#data 0x902AFE37
#data 0x70FF0E34
#data 0x70FF0E34
#data 0x70FF0E34
#data 0x701D0E34
#data 0x9021025c
#data 0x0E26622c
#data 0x00096033
#data 0xE51BD315
#data 0x430B06Ec
#data 0xE02064E3
#data 0x222802Ec
#data 0x90148B09
#data 0x2ED0E31a
#data 0x0E3464E3
#data 0xD30F4F26
#data 0x432B6DF6
#data 0x6EF6

loc_8C0ED19A:
#data 0x4F26
#data 0x000B6DF6
#data 0x3A006EF6
#data 0x00C000Dc
#data 0x01A3012c
#data 0x013F0130
#data 0x014900Cc

#align4
loc_8C0ED1B4:
#data bank04.loc_8c044F12

loc_8C0ED1B8:
#data loc_8c0eD094

loc_8C0ED1BC:
#data bank15.loc_8c15FAAc

loc_8C0ED1C0:
#data bank12.loc_8c129560

loc_8C0ED1C4:
#data bank12.loc_8c1294C8

loc_8C0ED1C8:
#data bank15.loc_8c15FABc

loc_8C0ED1CC:
#data bank03.loc_8c034C38

loc_8C0ED1D0:
#data bank10.loc_8c104434

loc_8C0ED1D4:
#data 0x4F222FE6
#data 0xD31F7FFc
#data 0x2F526E43
#data 0x64E3430b
#data 0xE21A9034
#data 0x70F80E24
#data 0x233803Ec
#data 0xE15C8B0d
#data 0xE03431Ec
#data 0xF2E6F318
#data 0x31ECE168
#data 0xFE27F230
#data 0xF2E6E05c
#data 0xF230F318
#data 0xFE27

loc_8C0ED20E:
#data 0x9020
#data 0x023C63F2
#data 0x622C901e
#data 0x332003Ee
#data 0xD30F8B04
#data 0x64E3430b
#data 0x8B052008

#align4
loc_8C0ED228:
#data 0x64E365F2
#data 0x4F267F04
#data 0x6EF6A004

#align4
loc_8C0ED234:
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0ED23C:
mov 0x03,r0 ; r0 set to 0x03
mov.b r0,@(0x04,r4) 	
mov 0x00,r5 ; r5 set to 0x00
mov.w @(loc_8C0ED256,pc),r0 ; r0 set to 0x12c
mov.b r5,@r4
rts 	
mov.b r5,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0ED24A:
mov.l @(loc_8C0ED260,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x01590149
#data 0x00Cc

loc_8C0ED256:
#data 0x012c

#align4
loc_8C0ED258:
#data bank03.loc_8c034D8c

loc_8C0ED25C:
#data bank03.loc_8c03340c

loc_8C0ED260:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0xE601D355
#data 0x2F521F41
#data 0x430BE503
#data 0x2008E400
#data 0x64038D0a
#data 0xE026D351
#data 0x52F11434
#data 0x14269393
#data 0xE0200435
#data 0x042462F2
#data 0x4F267F08
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0ED298:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0ED3C8,pc),r1 ; r1 set to 0x8C15FACc
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0ED2AC:
mov.w @(loc_8C0ED3B0,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0 	
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0ED3CC,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.w @(loc_8C0ED3B0,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0ED3B2,pc),r0 ; r0 set to 0xC0
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0ED3B4,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0ED3B6,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0ED3D0,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov.b r2,@(r0,r4) 	
lds.l @r15+,pr 	

loc_8C0ED304:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xF4,r15
mov r5,r14
mov.b @(0x05,r14),r0 	
tst r0,r0
bf/s loc_8C0ED364
mov r4,r13
mov.w @(loc_8C0ED3B8,pc),r0 ; r0 set to 0x1D0, r0 set to 0x1D0
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???	
extu.b r0,r0
cmp/eq 0x15,r0 	
bf loc_8C0ED38c
mov.w @(loc_8C0ED3BA,pc),r0 ; r0 set to 0x1E9, r0 set to 0x1E9
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???	
extu.b r0,r0
cmp/eq 0x09,r0 	
bf loc_8C0ED38c
mov.w @(loc_8C0ED3B4,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
mov 0x01,r3 ; r3 set to 0x01, r3 set to 0x01
mov.b r3,@(r0,r13) 	
add 0x18,r0 ; r0 set to 0x144, r0 set to 0x144
mov.l @(r0,r14),r2
mov.l r2,@(r0,r13) 	
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
fmov.s fr3,@(r0,r13) 	
mov.w @(loc_8C0ED3BC,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
fmov.s @(r0,r14),fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s fr3,@(r0,r13) 	
mov.w @(loc_8C0ED3BE,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r14),r3
mov.w r3,@(r0,r13) 	
add 0x1B,r0 ; r0 set to 0x14B, r0 set to 0x14b
mov.b @(r0,r14),r3
mov.w @(loc_8C0ED3BC,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
extu.b r3,r3
lds r3,fpul 	
fmov.s @(r0,r14),fr2
mova @(loc_8C0ED3D4,pc),r0  ; r0 set to 0x8C0ED3D4, r0 set to 0x8C0ED3D4
fmov.s @r0,fr0 ; r0 ??, r0 ??	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
float fpul,fr3
fmac fr0,fr3,fr2
bra loc_8C0ED392
fmov.s fr2,@(r0,r14) 	

loc_8C0ED364:
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0ED3DC,pc),r3 ; r3 set to 0x8C10235c
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
mova @(loc_8C0ED3D8,pc),r0  ; r0 set to 0x8C0ED3D8
mov r15,r5
mov 0x01,r6 ; r6 set to 0x01
fmov.s fr3,@r15
mov 0x08,r7 ; r7 set to 0x08
fmov.s @r0,fr3
mov.w @(loc_8C0ED3BC,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r14),fr2
mov 0x04,r0 ; r0 set to 0x04
fadd fr3,fr2
fmov.s fr2,@(r0,r15) 	
mov 0x3C,r0 ; r0 set to 0x3c
fmov.s @(r0,r13),fr2
mov 0x08,r0 ; r0 set to 0x08
fmov.s fr2,@(r0,r15) 	
jsr @r3
mov r13,r4

loc_8C0ED38C:
mov r14,r5
bsr loc_8C0ED39c
mov r13,r4

loc_8C0ED392:
add 0x0C,r15
lds.l @r15+,pr 	
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0ED39C:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0ED3B4,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	
mov.l @(loc_8C0ED3E0,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x3A00

loc_8C0ED3B0:
#data 0x00Dc

loc_8C0ED3B2:
#data 0x00C0

loc_8C0ED3B4:
#data 0x012c

loc_8C0ED3B6:
#data 0x01A3

loc_8C0ED3B8:
#data 0x01D0

loc_8C0ED3BA:
#data 0x01E9

loc_8C0ED3BC:
#data 0x041c

loc_8C0ED3BE:
#data 0x0130

#align4
loc_8C0ED3C0:
#data bank04.loc_8c044F12

loc_8C0ED3C4:
#data loc_8c0eD298

loc_8C0ED3C8:
#data bank15.loc_8c15FACc

loc_8C0ED3CC:
#data bank12.loc_8c129560

loc_8C0ED3D0:
#data bank12.loc_8c1294C8

loc_8C0ED3D4:
#data 0x40092492

#align4
loc_8C0ED3D8:
#data 0x42CDB6Db

#align4
loc_8C0ED3DC:
#data bank10.loc_8c10235c

loc_8C0ED3E0:
#data bank04.loc_8c0450C0

loc_8C0ED3E4:
#data 0x4F222FE6
#data 0x2F527FFc
#data 0xD345E503
#data 0xE6006E43
#data 0x6463430b
#data 0x8D142008
#data 0x90776403
#data 0x1434D341
#data 0x14E69376
#data 0x907202Ed
#data 0x0426622d
#data 0x804184E1
#data 0x0435E026
#data 0x62F2E020
#data 0xE0210424
#data 0x431963F2
#data 0x0434

loc_8C0ED426:
#data 0x6043
#data 0x7F040009
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0ED432:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
mov.l @(loc_8C0ED50C,pc),r0 ; r0 set to 0x8C15FADc
extu.b r3,r3
mov.l @(0x18,r14),r5
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

loc_8C0ED448:
mov r4,r3
mov.l @(loc_8C0ED510,pc),r1 ; r1 set to 0x8C15FAF0
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0ED45A:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0ED4F6,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0ED514,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.w @(loc_8C0ED4F6,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0ED4F8,pc),r0 ; r0 set to 0xC0
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0ED4FA,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0ED4FC,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0ED518,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x08,r3 ; r3 set to 0x08
mov r14,r1
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov r5,r2
mov.b r3,@(r0,r14) 	
add 0x34,r1
mov.l @(loc_8C0ED518,pc),r3 ; r3 set to 0x8C1294C8
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.w @(loc_8C0ED4FE,pc),r0 ; r0 set to 0xB4
mov 0x00,r3 ; r3 set to 0x00
mov 0x1B,r5 ; r5 set to 0x1b
mov.w r0,@(0x1C,r14) 	
add 0xCE,r0 ; r0 set to 0x82
mov.w r0,@(0x1E,r14) 	
mov 0x23,r0 ; r0 set to 0x23
mov.b r3,@(r0,r14) 	
mov 0x0D,r6 ; r6 set to 0x0d
mov.l @(loc_8C0ED51C,pc),r3 ; r3 set to 0x8C034C38
jsr @r3
mov r14,r4
mov.w @(loc_8C0ED500,pc),r0 ; r0 set to 0x149
mov 0x00,r3 ; r3 set to 0x00
mov 0x01,r2 ; r2 set to 0x01
mov r14,r4
mov.b r2,@r14
mov.b r3,@(r0,r14) 	
lds.l @r15+,pr 	
mov.l @(loc_8C0ED520,pc),r3 ; r3 set to 0x8C104434
jmp @r3
mov.l @r15+,r14
#data 0x00CC0158
#data 0x3A02

loc_8C0ED4F6:
#data 0x00Dc

loc_8C0ED4F8:
#data 0x00C0

loc_8C0ED4FA:
#data 0x012c

loc_8C0ED4FC:
#data 0x01A3

loc_8C0ED4FE:
#data 0x00B4

loc_8C0ED500:
#data 0x0149
#data 0x0000

#align4
loc_8C0ED504:
#data bank04.loc_8c044F12

loc_8C0ED508:
#data loc_8c0eD432

loc_8C0ED50C:
#data bank15.loc_8c15FADc

loc_8C0ED510:
#data bank15.loc_8c15FAF0

loc_8C0ED514:
#data bank12.loc_8c129560

loc_8C0ED518:
#data bank12.loc_8c1294C8

loc_8C0ED51C:
#data bank03.loc_8c034C38

loc_8C0ED520:
#data bank10.loc_8c104434

loc_8C0ED524:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0xFFFB2F86
#data 0x7FF04F22
#data 0x6E43C742
#data 0xFF082F52
#data 0x200885Ef
#data 0xE8008D2c
#data 0x70FF85Ef
#data 0x600F81Ef
#data 0x89254015
#data 0x00096083
#data 0x61F362E3
#data 0x7234D33a
#data 0x710481Ef
#data 0xE00C430b
#data 0x65F3E008
#data 0xE008F3F6
#data 0x7504D336
#data 0xE708F3F0
#data 0xFF37E601
#data 0x64E3430b
#data 0x6D839B5d
#data 0xD932DC33
#data 0x9A58

loc_8C0ED58A:
#data 0x65D3
#data 0x490B25Cb
#data 0x3DAC64E3
#data 0x8BF83DB2
#data 0xE549D32f
#data 0x64E3430b

#align4
loc_8C0ED5A0:
#data 0xE33C85Ee
#data 0x89083033
#data 0xE401904a
#data 0x85EE0E44
#data 0x89242048
#data 0xA0229044
#data 0x0E84

loc_8C0ED5BA:
#data 0xE023
#data 0x722002Ec
#data 0x622C0E24
#data 0x8B1A2228
#data 0xBF0BE502
#data 0x200864F2
#data 0x64038D15
#data 0xF308C721
#data 0xFF37E004
#data 0x03ED9031
#data 0x89042338
#data 0xF3F6E004
#data 0xF34DE004
#data 0xFF37

loc_8C0ED5EE:
#data 0xE004
#data 0xE034F3F6
#data 0xF230F2E6
#data 0xE038F427
#data 0xF4F7

loc_8C0ED5FE:
#data 0x85Ee
#data 0x81EE70Ff
#data 0x4015600f
#data 0x65F28902
#data 0x64E3B1Cb

#align4
loc_8C0ED610:
#data 0x4F267F10
#data 0x68F6FFF9
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0ED626:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0ED62A:
mov r4,r3
mov.l @(loc_8C0ED660,pc),r1 ; r1 set to 0x8C15FB00
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x08000100
#data 0x0130012c
#data 0x41892492

#align4
loc_8C0ED648:
#data bank12.loc_8c1294C8

loc_8C0ED64C:
#data bank10.loc_8c10235c

loc_8C0ED650:
#data bank0b.loc_8c0bA710
#data 0x80000001

#align4
loc_8C0ED658:
#data bank04.loc_8c04223a
#data 0x42055555

#align4
loc_8C0ED660:
#data bank15.loc_8c15FB00


loc_8C0ED664:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0ED776,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0ED780,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.w @(loc_8C0ED776,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r14) 	
mov.w @(loc_8C0ED778,pc),r0 ; r0 set to 0xC0
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0ED77A,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C0ED77C,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C0ED784,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x0F,r3 ; r3 set to 0x0f
mov.l @(loc_8C0ED788,pc),r2 ; r2 set to 0x8C03319e
jsr @r2
mov.b r3,@(r0,r14) 	
extu.b r0,r4 ; r4 set to 0x24
mov.l @(loc_8C0ED79C,pc),r3 ; r3 set to 0x8C034C38
add 0x80,r4 ; r4 set to 0xFFFFFFA4
exts.w r4,r4 ; r4 ??	
lds r4,fpul 	
mova @(loc_8C0ED78C,pc),r0  ; r0 set to 0x8C0ED78c
fmov.s @r0,fr2 ; r2 ??	
mova @(loc_8C0ED790,pc),r0  ; r0 set to 0x8C0ED790
fmov.s @r0,fr1
mov 0x5C,r0 ; r0 set to 0x5c
float fpul,fr3
mov r14,r4
mov 0x0E,r6 ; r6 set to 0x0e
mov 0x1B,r5 ; r5 set to 0x1b
fmul fr2,fr3 ; r3 ??? bc r2 is ???	
fdiv fr1,fr3
fmov.s fr3,@(r0,r14) 	
mov 0x68,r0 ; r0 set to 0x68
fldi0 fr3
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0ED794,pc),r0  ; r0 set to 0x8C0ED794
fmov.s @r0,fr3
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr3,@(r0,r14) 	
mova @(loc_8C0ED798,pc),r0  ; r0 set to 0x8C0ED798
fmov.s @r0,fr3
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr3,@(r0,r14) 	
lds.l @r15+,pr 	
jmp @r3
mov.l @r15+,r14

loc_8C0ED702:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov 0x5C,r1 ; r1 set to 0x5c
mov r4,r14
add r14,r1 ; r1 ??? bc r14 is ???	
mov.l @(loc_8C0ED7A0,pc),r3 ; r3 set to 0x8C034D8c
mov 0x34,r0 ; r0 set to 0x34
mov.l r5,@r15
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
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
exts.b r0,r0 ; r0 ??	
cmp/pz r0
bt loc_8C0ED75c
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
bra loc_8C0ED9A6
mov.l @r15+,r14

loc_8C0ED75C:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0ED764:
mov r4,r3
mov.l @(loc_8C0ED7A4,pc),r1 ; r1 set to 0x8C15FB10
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0ED776:
#data 0x00Dc

loc_8C0ED778:
#data 0x00C0

loc_8C0ED77A:
#data 0x012c

loc_8C0ED77C:
#data 0x01A3
#data 0x0000

#align4
loc_8C0ED780:
#data bank12.loc_8c129560

loc_8C0ED784:
#data bank12.loc_8c1294C8

loc_8C0ED788:
#data bank03.loc_8c03319e

loc_8C0ED78C:
#data 0x3FD55555

#align4
loc_8C0ED790:
#data 0x43800000

#align4
loc_8C0ED794:
#data 0x40092492

#align4
loc_8C0ED798:
#data 0xBD892492

#align4
loc_8C0ED79C:
#data bank03.loc_8c034C38

loc_8C0ED7A0:
#data bank03.loc_8c034D8c

loc_8C0ED7A4:
#data bank15.loc_8c15FB10

loc_8C0ED7A8:
#data 0x6E432FE6
#data 0x6D532FD6
#data 0x4F22918d
#data 0x31EC84E4
#data 0x70019289
#data 0x80E4D349
#data 0x430B9086
#data 0x908432Dc
#data 0x61E3E201
#data 0x0E247150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC9076
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD33B0E34
#data 0xE00C430b
#data 0x02DCE024
#data 0xE51BE3Ff
#data 0xE0310E24
#data 0xE6090E34
#data 0x430BD336
#data 0x4F2664E3
#data 0x64E365D3
#data 0x6EF66DF6

#align4
loc_8C0ED820:
#data 0xE0242FE6
#data 0x2FD66E53
#data 0x4F226D43
#data 0x0D3403Ec
#data 0x03EC9051
#data 0xF208C72e
#data 0x904D435a
#data 0x03EDF32d
#data 0xF43C2338
#data 0xF4228D01
#data 0xF44d

loc_8C0ED84A:
#data 0xE034
#data 0xF340F3E6
#data 0x9042FD37
#data 0xE03803Ec
#data 0xC726F2E6
#data 0xF008435a
#data 0xD325E038
#data 0xF23EF32d
#data 0x430BFD27
#data 0x903564D3
#data 0x903402Ed
#data 0x03DE622d
#data 0x89053230
#data 0x64D34F26
#data 0x6DF665E3
#data 0x6EF6A08f

#align4
loc_8C0ED888:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0ED890:
mov r4,r3
mov.l @(loc_8C0ED8FC,pc),r1 ; r1 set to 0x8C15FB20
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0ED8A2:
mov.b @(0x04,r4),r0 	
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov.w @(loc_8C0ED8D2,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4) 	

loc_8C0ED8AE:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
add 0xF0,r15
mov.w @(loc_8C0ED8E0,pc),r0 ; r0 set to 0x420, r0 set to 0x420
mov r5,r14
mov 0x20,r2 ; r2 set to 0x20, r2 set to 0x20
mov.l r4,@r15
mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???	
cmp/ge r2,r3
bf loc_8C0ED900
mov.w @(loc_8C0ED8E2,pc),r0 ; r0 set to 0xD0, r0 set to 0xD0
mov 0x00,r1 ; r1 set to 0x00, r1 set to 0x00
bra loc_8C0ED994
mov.l r1,@(r0,r14) 	
#data 0x00Dc
#data 0x00C0

loc_8C0ED8D2:
#data 0x012c
#data 0x014101A3
#data 0x01400130
#data 0x00CC0158

loc_8C0ED8E0:
#data 0x0420

loc_8C0ED8E2:
#data 0x00D0

#align4
loc_8C0ED8E4:
#data bank12.loc_8c129560

loc_8C0ED8E8:
#data bank12.loc_8c1294C8

loc_8C0ED8EC:
#data bank03.loc_8c034C38
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0ED8F8:
#data bank03.loc_8c034D8c

loc_8C0ED8FC:
#data bank15.loc_8c15FB20

loc_8C0ED900:
#data 0xE47F925b
#data 0x32ECD330
#data 0x62206032
#data 0x622C5007
#data 0xE20F302c
#data 0x22482409
#data 0xE2FC8B38
#data 0x442CD02b
#data 0x014C924c
#data 0x622132Ec
#data 0x3213611c
#data 0x9046892e
#data 0x211801Ec
#data 0xE5028B2a
#data 0x64E3BD54
#data 0x8D252008
#data 0xD2236C03
#data 0x420B6DF3
#data 0xC90F7D04
#data 0x405A70F8
#data 0x8D044011
#data 0xD31FF32d
#data 0xF20D435a
#data 0xF320

loc_8C0ED95E:
#data 0xC71e
#data 0x902DF208
#data 0xFD3AF322
#data 0x023D63F2
#data 0x89022228
#data 0xF34DF3D8
#data 0xFD3a

loc_8C0ED976:
#data 0xE034
#data 0xF2E6F3D8
#data 0xFC27F230
#data 0xF308C716
#data 0xF2E6E038
#data 0xFC27F230

#align4
loc_8C0ED98C:
#data 0x03EC9019
#data 0x89022338

#align4
loc_8C0ED994:
#data 0xB00665E3
#data 0x64F2

loc_8C0ED99A:
#data 0x7F10
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0ED9A6:
mov 0x03,r0 ; r0 set to 0x03
mov.b r0,@(0x04,r4) 	
mov 0x00,r5 ; r5 set to 0x00
mov.w @(loc_8C0ED9C4,pc),r0 ; r0 set to 0x12c
mov.b r5,@r4
rts 	
mov.b r5,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0ED9B4:
mov.l @(loc_8C0ED9E0,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x01A4
#data 0x01D00420
#data 0x01DC0130

loc_8C0ED9C4:
#data 0x012c
#data 0x0000
#data 0x8C26823c

#align4
loc_8C0ED9CC:
#data bank15.loc_8c15FB30

loc_8C0ED9D0:
#data bank03.loc_8c03319e
#data 0x4F800000
#data 0x3FD55555
#data 0x42892492

#align4
loc_8C0ED9E0:
#data bank04.loc_8c0450C0
#data 0x2FD62FE6
#data 0x2FC6ED00
#data 0x2FB66ED3
#data 0x2FA66C43
#data 0x2F96EA0a
#data 0x9B624F22
#data 0xE504D931
#data 0x490BE600
#data 0x20086463
#data 0x64038D0b
#data 0x1424D22e
#data 0x84C114C6
#data 0xE0268041
#data 0xE02004B5
#data 0xE02104D4
#data 0x7E0104E4
#data 0x8BEA3EA2
#data 0x00096043
#data 0x69F64F26
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0xEE002FE6
#data 0x6D432FD6
#data 0xEC012FC6
#data 0x2FA62FB6
#data 0x2F96EA0a
#data 0x9B364F22
#data 0xE504D91b
#data 0x490BE600
#data 0x20086463
#data 0x64038D0b
#data 0x1424D218
#data 0x84D114D6
#data 0xE0268041
#data 0xE02004B5
#data 0xE02104C4
#data 0x7E0104E4
#data 0x8BEA3EA2
#data 0x00096043
#data 0x69F64F26
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0EDA94:
mov.l r14,@-r15
mov 0x20,r0 ; r0 set to 0x20
mov r4,r14
mov.b @(r0,r14),r3
tst r3,r3
bf loc_8C0EDAA8
mov.l @(0x18,r14),r5
mov r14,r4
bra loc_8C0EDAB0
mov.l @r15+,r14

loc_8C0EDAA8:
mov.l @(0x18,r14),r5
mov r14,r4
bra loc_8C0EDE70
mov.l @r15+,r14

loc_8C0EDAB0:
mov r4,r3
mov.l @(loc_8C0EDACC,pc),r1 ; r1 set to 0x8C15FB38
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x3A03

#align4
loc_8C0EDAC4:
#data bank04.loc_8c044F12

loc_8C0EDAC8:
#data loc_8c0eDA94

loc_8C0EDACC:
#data bank15.loc_8c15FB38

loc_8C0EDAD0:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x4F22FFFb
#data 0xD2587FD8
#data 0xD35861F3
#data 0x6D536E43
#data 0x430B6CF3
#data 0x84E4E028
#data 0x7001919b
#data 0x80E4D354
#data 0x909731Ec
#data 0x430B9295
#data 0x909432Dc
#data 0x61E3E201
#data 0x0E247150
#data 0x80E284D2
#data 0x80E184D1
#data 0xF3D6E050
#data 0xE054FE37
#data 0xFE37F3D6
#data 0x03DC9086
#data 0x70010E34
#data 0x0E2402Dc
#data 0x03DCE030
#data 0x725062D3
#data 0xD3450E34
#data 0xE00C430b
#data 0xD444E024
#data 0xEB0002Dc
#data 0x0E24E30f
#data 0x0EB49071
#data 0x0E34E024
#data 0x03ED906f
#data 0x0E357306
#data 0xF308C73e
#data 0xF546906a
#data 0xFF08C73d
#data 0x00ECE021
#data 0x600CF530
#data 0x03CD4000
#data 0x435A9061
#data 0xF22D03Dd
#data 0xF42C2338
#data 0xF4F28D06
#data 0xF44DC736
#data 0x9057F208
#data 0xF520F546

#align4
loc_8C0EDB8C:
#data 0xE034F540
#data 0xFE57D333
#data 0xF3D69051
#data 0xFE37E038
#data 0x430BE014
#data 0xC90F81Ee
#data 0xE02381Ef
#data 0xE0210EB4
#data 0x633C03Ec
#data 0x3C3C4300
#data 0x630385Ca
#data 0xE034435a
#data 0xE310F2E6
#data 0xF43CF32d
#data 0xF3D6F4F2
#data 0xF340C726
#data 0xF208F321
#data 0xF323E05c
#data 0xE064FE37
#data 0xE068FE47
#data 0xFE37F38d
#data 0x0E34902c
#data 0x0E3470Ff
#data 0x0E3470Ff
#data 0x0E3470Ff
#data 0xD31DE51b
#data 0x430BE60f
#data 0x902064E3
#data 0xD31BE201
#data 0x0EB42E20
#data 0x64E3430b
#data 0x4F267F28
#data 0x6BF6FFF9
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0EDC18:
mov r4,r3
mov.l @(loc_8C0EDC70,pc),r1 ; r1 set to 0x8C15FB48
mov.l r4,@-r15
mov.b @(0x05,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x00Dc
#data 0x012C00C0
#data 0x012E01A3
#data 0x0130008c
#data 0x041C0088
#data 0x0149013f

#align4
loc_8C0EDC40:
#data bank13.loc_8c13B478

loc_8C0EDC44:
#data bank12.loc_8c129620

loc_8C0EDC48:
#data bank12.loc_8c129560

loc_8C0EDC4C:
#data bank12.loc_8c1294C8
#data 0x8C26A518
#data 0x42555555
#data 0x3FD55555
#data 0xC2555555

#align4
loc_8C0EDC60:
#data bank03.loc_8c03319e
#data 0x41A00000

#align4
loc_8C0EDC68:
#data bank03.loc_8c034C38

loc_8C0EDC6C:
#data bank10.loc_8c104434

loc_8C0EDC70:
#data bank15.loc_8c15FB48


loc_8C0EDC74:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.l r12,@-r15
sts.l pr,@-r15
mov.w @(0x1E,r14),r0 	
add 0xFF,r0
mov.w r0,@(0x1E,r14) 	
exts.w r0,r0
cmp/pl r0
bf/s loc_8C0EDC94
mov 0x00,r12 ; r12 set to 0x00
mov.w @(loc_8C0EDD9C,pc),r0 ; r0 set to 0x12c
bra loc_8C0EDD32
mov.b r12,@(r0,r14) 	

#align4
loc_8C0EDC94:
#data 0xE3019082
#data 0x0E3465D3
#data 0x64E3B0Af
#data 0x8B462008
#data 0x430BD33f
#data 0x907864E3
#data 0x31ECE15c
#data 0xE0340EC4
#data 0xF318F2E6
#data 0x31ECE168
#data 0xFE27F230
#data 0xF2E6E05c
#data 0xF230F318
#data 0x85EEFE27
#data 0x8B154015
#data 0xF4E6E064
#data 0x03DD9064
#data 0x8D012338
#data 0xF44DE034

#align4
loc_8C0EDCE0:
#data 0xF430F3D6
#data 0xE05CF3E6
#data 0xF3E6F431
#data 0xF38DF432
#data 0x8B03F345
#data 0x000960C3
#data 0x81EEA006

#align4
loc_8C0EDCFC:
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x8B142008

#align4
loc_8C0EDD08:
#data 0xE61084E5
#data 0x64E3F48d
#data 0x80E57001
#data 0x9044E51b
#data 0x73FA03Ed
#data 0xE05C0E35
#data 0xE068FE47
#data 0xFE47D320
#data 0x6CF64F26
#data 0x432B6DF6
#data 0x6EF6


loc_8C0EDD32:
lds.l @r15+,pr 	
mov.l @r15+,r12
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C0EDD3C:
#data 0x6E432FE6
#data 0x4F222FD6
#data 0x6D53B05b
#data 0x8B232008
#data 0xF5E6E064
#data 0xF308C716
#data 0xF45CC716
#data 0xF208F532
#data 0xF523E064
#data 0x901DFE57
#data 0x233803Dd
#data 0xE0348D01
#data 0xF44d

loc_8C0EDD6E:
#data 0xF3D6
#data 0xF340D30c
#data 0x430BFE37
#data 0x901064E3
#data 0x0E24E200
#data 0x03DC70F7
#data 0x89054311
#data 0x65D34F26
#data 0x6DF664E3
#data 0x6EF6A1B2

#align4
loc_8C0EDD94:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0EDD9C:
#data 0x012c
#data 0x0149
#data 0x012E0130

#align4
loc_8C0EDDA4:
#data bank03.loc_8c034D8c

loc_8C0EDDA8:
#data bank03.loc_8c034C38
#data 0x41700000
#data 0x41800000


loc_8C0EDDB4:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0EDE88,pc),r3 ; r3 set to 0x8C034DEe
mov r4,r14
mov.l r5,@r15
jsr @r3
mov r14,r4
mov 0x5C,r1 ; r1 set to 0x5c
mov.l @(loc_8C0EDE8C,pc),r3 ; r3 set to 0x8C03340c
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
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8C0EDDF6
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
bra loc_8C0EE0F8
mov.l @r15+,r14

loc_8C0EDDF6:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0EDDFE:
#data 0x2FE6
#data 0x84554F22
#data 0x8F092008
#data 0x903A6E43
#data 0x600C005c
#data 0x8B03881d
#data 0xE0004F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0EDE1C:
#data 0xD11CE002
#data 0xE30180E5
#data 0x02ED902e
#data 0x410B223a
#data 0xC9070E25
#data 0x405A7004
#data 0x8D044011
#data 0xD316F32d
#data 0xF20D435a
#data 0xF320

loc_8C0EDE42:
#data 0xC715
#data 0xF208F43c
#data 0x03ED901c
#data 0x8F012338
#data 0xF44DF422

#align4
loc_8C0EDE54:
#data 0xD311E05c
#data 0xE068FE47
#data 0xE517F38d
#data 0xE62BFE37
#data 0x64E3430b
#data 0x4F26E001
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0EDE70:
mov r4,r3
mov.l @(loc_8C0EDEA0,pc),r1 ; r1 set to 0x8C15FB54
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x01D0
#data 0x00000130

#align4
loc_8C0EDE88:
#data bank03.loc_8c034dee

loc_8C0EDE8C:
#data bank03.loc_8c03340c

loc_8C0EDE90:
#data bank03.loc_8c03319e
#data 0x4F800000
#data 0x3FD55555

#align4
loc_8C0EDE9C:
#data bank03.loc_8c034e8c

loc_8C0EDEA0:
#data bank15.loc_8c15FB54

loc_8C0EDEA4:
#data 0x2FD62FE6
#data 0x7F984F22
#data 0xD26061F3
#data 0x67F3D360
#data 0x77406E43
#data 0x430B7140
#data 0xD25EE028
#data 0xD35C61F3
#data 0x430B7134
#data 0xD25CE00a
#data 0xD35961F3
#data 0x760C66F3
#data 0x430B710c
#data 0xD259E028
#data 0xD35564F3
#data 0x430B61F3
#data 0x84E4E00a
#data 0x70019199
#data 0x80E4D355
#data 0x909531Ec
#data 0x430B9293
#data 0x9092325c
#data 0x61E3ED01
#data 0x0ED47150
#data 0x80E28452
#data 0x80E18451
#data 0xF356E050
#data 0xE054FE37
#data 0xFE37F356
#data 0x035C9084
#data 0x70010E34
#data 0x0E24025c
#data 0x035CE030
#data 0x72506253
#data 0xD3460E34
#data 0xE00C430b
#data 0x025CE024
#data 0x0E24E30f
#data 0x0ED49071
#data 0x0E34E024
#data 0x03ED906f
#data 0x0E357306
#data 0x02ECE021
#data 0x22D8622c
#data 0x90678B04
#data 0x02EDE301
#data 0x0E25223a

#align4
loc_8C0EDF60:
#data 0x01ECE021
#data 0x611C9060
#data 0x025D4108
#data 0x6311317c
#data 0x435A2228
#data 0xF42D8D01
#data 0xF44d

loc_8C0EDF7A:
#data 0xE034
#data 0xF340F356
#data 0xE021FE37
#data 0x633C03Ec
#data 0x373C4308
#data 0x63038571
#data 0x904A435a
#data 0xF256F32d
#data 0xF230E038
#data 0xC72BFE27
#data 0xE021F508
#data 0xC72A03Ec
#data 0x633CF208
#data 0x336C4308
#data 0x435A6331
#data 0xF322F32d
#data 0x9035F43c
#data 0x2338035d
#data 0xF4538D01
#data 0xF44d

loc_8C0EDFC6:
#data 0xE05c
#data 0xFE4765E3
#data 0x03ECE021
#data 0x633C7540
#data 0x363C4308
#data 0x63038561
#data 0xC71D435a
#data 0xE060F208
#data 0xE300F32d
#data 0xF353F322
#data 0xE06CFE37
#data 0xFE37F38d
#data 0xFE37E068
#data 0x1531E021
#data 0x00EC2532
#data 0x4001600c
#data 0x024D4000
#data 0xE340E048
#data 0xE2200E26
#data 0x0E34900c
#data 0x0E3470Ff
#data 0xA01D7003
#data 0x00DC0009
#data 0x012C00C0
#data 0x012E01A3
#data 0x041C0130
#data 0x0000013d

#align4
loc_8C0EE030:
#data bank13.loc_8c13B4A0

loc_8C0EE034:
#data bank12.loc_8c129620

loc_8C0EE038:
#data bank13.loc_8c13B4C8

loc_8C0EE03C:
#data bank13.loc_8c13B4D2

loc_8C0EE040:
#data bank13.loc_8c13B4Fa

loc_8C0EE044:
#data bank12.loc_8c129560

loc_8C0EE048:
#data bank12.loc_8c1294C8
#data 0x43800000
#data 0x3FD55555
#data 0x40092492

#align4
loc_8C0EE058:
#data 0x70FF0E24
#data 0xE0210E24
#data 0x63F306Ec
#data 0xD22A7334
#data 0x363C666c
#data 0xE51B6660
#data 0x64E3420b
#data 0xE300904a
#data 0x0E342ED0
#data 0x430BD325
#data 0x7F6864E3
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0EE08C:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8C0EE118,pc),r3 ; r3 set to 0x8C034D8c
mov r4,r14
mov.l r5,@r15
jsr @r3
mov r14,r4
mov.w @(loc_8C0EE10C,pc),r0 ; r0 set to 0x149
mov 0x00,r2 ; r2 set to 0x00
mov 0x5C,r1 ; r1 set to 0x5c
mov.l @(loc_8C0EE11C,pc),r3 ; r3 set to 0x8C0332E0
mov.b r2,@(r0,r14) 	
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
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
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8C0EE0F0
mov.l @r15,r5
mov r14,r4
add 0x04,r15
lds.l @r15+,pr 	
bra loc_8C0EE0F8
mov.l @r15+,r14

loc_8C0EE0F0:
add 0x04,r15
lds.l @r15+,pr 	
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0EE0F8:
mov 0x03,r0 ; r0 set to 0x03
mov.b r0,@(0x04,r4) 	
mov 0x00,r5 ; r5 set to 0x00
mov.w @(loc_8C0EE10E,pc),r0 ; r0 set to 0x12c
mov.b r5,@r4
rts 	
mov.b r5,@(r0,r4) 	
;-------------------------------------------------------------------------------

loc_8C0EE106:
mov.l @(loc_8C0EE120,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0EE10C:
#data 0x0149

loc_8C0EE10E:
#data 0x012c

#align4
loc_8C0EE110:
#data bank03.loc_8c034C38

loc_8C0EE114:
#data bank10.loc_8c104434

loc_8C0EE118:
#data bank03.loc_8c034D8c

loc_8C0EE11C:
#data bank03.loc_8c0332E0

loc_8C0EE120:
#data bank04.loc_8c0450C0
#data 0x7FFC4F22
#data 0xE50AD326
#data 0xE6002F42
#data 0x6463430b
#data 0x8D0D2008
#data 0xD3236403
#data 0xE3001434
#data 0x142662F2
#data 0x923760F2
#data 0x80418401
#data 0x0434E020
#data 0x0425E026
#data 0x4F267F04
#data 0x6043000b
;-------------------------------------------------------------------------------

#align4
loc_8C0EE15C:
#data 0x5346922d
#data 0x323CD51a
#data 0x84412522
#data 0x62035346
#data 0x32008431
#data 0x91238B0f
#data 0x001C5046
#data 0x8815600c
#data 0x911E8B09
#data 0x001C5046
#data 0x8814600c
#data 0x63528B03
#data 0x2008843a
#data 0x8B02

loc_8C0EE192:
#data 0xD30f
#data 0x0009432b

#align4
loc_8C0EE198:
#data 0x55469012
#data 0x035CD20d
#data 0x8D032338
#data 0xC70CF428
#data 0xF308A002

#align4
loc_8C0EE1AC:
#data 0xF308C70b

#align4
loc_8C0EE1B0:
#data 0xE034F430
#data 0xF547000b
;-------------------------------------------------------------------------------
#data 0x02A40500
#data 0x015901D0
#data 0x000001D2

#align4
loc_8C0EE1C4:
#data bank04.loc_8c044F12

loc_8C0EE1C8:
#data loc_8c0eE15c
#data 0x8C28C6E4

#align4
loc_8C0EE1D0:
#data bank04.loc_8c0450C0
#data 0x8C26A524
#data 0xC38E8000
#data 0x438E8000
#data 0x7FFC4F22
#data 0xE50AD323
#data 0xE6012F42
#data 0xE400430b
#data 0x8D072008
#data 0xE0266403
#data 0xE301D21f
#data 0x14240435
#data 0x143663F2
#data 0x4F267F04
#data 0x6043000b
;-------------------------------------------------------------------------------

#align4
loc_8C0EE20C:
#data 0x5546902a
#data 0x600C005c
#data 0x8B208801
#data 0x005C9025
#data 0x8815600c
#data 0x90218B1b
#data 0x600C005c
#data 0x8B168815
#data 0x005C901d
#data 0x8814600c
#data 0xC7128B14
#data 0xF308D410
#data 0xF4469016
#data 0x035C9015
#data 0x8D052338
#data 0xC70EF430
#data 0x900FF208
#data 0xF420F446

#align4
loc_8C0EE254:
#data 0x000BE034
#data 0xF547
;-------------------------------------------------------------------------------

loc_8C0EE25A:
#data 0xD30b
#data 0x0009432b

#align4
loc_8C0EE260:
#data 0x0009000b
;-------------------------------------------------------------------------------
#data 0x01D001E9
#data 0x01580159
#data 0x01D20088
#data 0x0000008c

#align4
loc_8C0EE274:
#data bank04.loc_8c044F12

loc_8C0EE278:
#data loc_8c0eE20c
#data 0x8C26A518
#data 0x42200000
#data 0xC2200000

#align4
loc_8C0EE288:
#data bank04.loc_8c0450C0

loc_8C0EE28C:
#data 0x7FFC4F22
#data 0xE50AD348
#data 0xE6002F42
#data 0x6463430b
#data 0x8D0C2008
#data 0xD3456403
#data 0x1434E026
#data 0x62F2937f
#data 0x04351426
#data 0x62F2907c
#data 0x7301032c
#data 0x0234

loc_8C0EE2BA:
#data 0x7F04
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0EE2C2:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0EE3BC,pc),r1 ; r1 set to 0x8C15FB64
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0EE2D6:
#data 0x2FE6
#data 0x2FD66E43
#data 0x4F226D53
#data 0xE55084E4
#data 0x80E47001
#data 0x80E184D1
#data 0xF3D6E034
#data 0xE038FE37
#data 0xFE37F3D6
#data 0x03DCE024
#data 0xE0000E34
#data 0x905481Ee
#data 0x81EFD32e
#data 0x64E3430b
#data 0x420BD22d
#data 0x4F2664D3
#data 0x64E365D3
#data 0x6EF66DF6

#align4
loc_8C0EE31C:
#data 0x4F222FE6
#data 0x23386350
#data 0x6E438D32
#data 0x045C9042
#data 0x8801604c
#data 0x624C8902
#data 0x8B292228

#align4
loc_8C0EE338:
#data 0x630384E1
#data 0x33008451
#data 0x85EF8B24
#data 0x81EF70Ff
#data 0x4011600f
#data 0x84558B1e
#data 0x8803600c
#data 0x64038D04
#data 0x00096043
#data 0x8B158802

#align4
loc_8C0EE360:
#data 0x64E3B01b
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x89114011
#data 0x420BD215
#data 0xD2150009
#data 0xE120C903
#data 0x81EE7005
#data 0x33176321
#data 0x4F268B06
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0EE38C:
#data 0x64E34F26
#data 0x6EF6A020

#align4
loc_8C0EE394:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0EE39A:
#data 0x2F56
#data 0x64F2E507
#data 0x432BD30b
#data 0x7F04


loc_8C0EE3A6:
rts 	
nop 	
;-------------------------------------------------------------------------------
#data 0x0200
#data 0x00960229
#data 0x0000022a

#align4
loc_8C0EE3B4:
#data bank04.loc_8c044F12

loc_8C0EE3B8:
#data loc_8c0eE2C2

loc_8C0EE3BC:
#data bank15.loc_8c15FB64

loc_8C0EE3C0:
#data bank04.loc_8c04223a

loc_8C0EE3C4:
#data bank10.loc_8c10441e

loc_8C0EE3C8:
#data bank03.loc_8c03319e
#data 0x8C287AE8

#align4
loc_8C0EE3D0:
#data bank03.loc_8c035162

loc_8C0EE3D4:
#data 0x2FE6901a
#data 0x4F226E53
#data 0x00EC2F46
#data 0x8801600c
#data 0x90128B08
#data 0x72FF02Ec
#data 0x622E0E24
#data 0x89014211
#data 0x0E24E200

#align4
loc_8C0EE3F8:
#data 0xE501D305
#data 0x64E3430b
#data 0x7F0464F2
#data 0xD3034F26
#data 0x6EF6432b
#data 0x0229022a

#align4
loc_8C0EE410:
#data bank03.loc_8c035162

loc_8C0EE414:
#data bank04.loc_8c0450C0

loc_8C0EE418:
#data 0x7FFC4F22
#data 0xE50AD33d
#data 0xE6002F42
#data 0x6463430b
#data 0x8D0C2008
#data 0xD33A6403
#data 0x1434E026
#data 0x62F29369
#data 0x04351426
#data 0x62F29066
#data 0x7301032c
#data 0x0234

loc_8C0EE446:
#data 0x7F04
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0EE44E:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0EE51C,pc),r1 ; r1 set to 0x8C15FB74
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0EE462:
#data 0x2FE6
#data 0x2FD66E43
#data 0x4F226D53
#data 0xE54B84E4
#data 0x80E47001
#data 0x80E184D1
#data 0xF3D6E034
#data 0xE038FE37
#data 0xFE37F3D6
#data 0x03DCE024
#data 0xD3250E34
#data 0x64E3430b
#data 0x222862D0
#data 0x65D38902
#data 0x64E3B02a

#align4
loc_8C0EE49C:
#data 0x903665D3
#data 0x81EE64E3
#data 0x6DF64F26
#data 0x6EF6

loc_8C0EE4AA:
#data 0x6350
#data 0x891D2338
#data 0x065C902e
#data 0x8802606c
#data 0x626C8902
#data 0x8B152228

#align4
loc_8C0EE4C0:
#data 0x63038441
#data 0x33008451
#data 0x854E8B10
#data 0x814E70Ff
#data 0x2008600f
#data 0x8455890a
#data 0x8803600c
#data 0x66038D04
#data 0x00096063
#data 0x8B018802

#align4
loc_8C0EE4E8:
#data 0x0009A007

#align4
loc_8C0EE4EC:
#data 0x0009A01e

#align4
loc_8C0EE4F0:
#data 0x6453D30c
#data 0x432B2F56
#data 0x7F04

loc_8C0EE4FA:
#data 0x2F56
#data 0x64F2E503
#data 0x432BD309
#data 0x7F04


loc_8C0EE506:
rts 	
nop 	
;-------------------------------------------------------------------------------
#data 0x0300
#data 0x00960229
#data 0x0000022a

#align4
loc_8C0EE514:
#data bank04.loc_8c044F12

loc_8C0EE518:
#data loc_8c0eE44e

loc_8C0EE51C:
#data bank15.loc_8c15FB74

loc_8C0EE520:
#data bank04.loc_8c04223a

loc_8C0EE524:
#data bank10.loc_8c10491c

loc_8C0EE528:
#data bank03.loc_8c035162

loc_8C0EE52C:
#data 0x2FE6901a
#data 0x4F226E53
#data 0x00EC2F46
#data 0x8802600c
#data 0x90128B08
#data 0x72FF02Ec
#data 0x622E0E24
#data 0x89014211
#data 0x0E24E200

#align4
loc_8C0EE550:
#data 0xE501D305
#data 0x64E3430b
#data 0x7F0464F2
#data 0xD3034F26
#data 0x6EF6432b
#data 0x0229022a

#align4
loc_8C0EE568:
#data bank03.loc_8c035162

loc_8C0EE56C:
#data bank04.loc_8c0450C0

loc_8C0EE570:
#data 0x7FFC4F22
#data 0xE50AD33d
#data 0xE6002F42
#data 0x6463430b
#data 0x8D0C2008
#data 0xD33A6403
#data 0x1434E026
#data 0x62F29369
#data 0x04351426
#data 0x62F29066
#data 0x7301032c
#data 0x0234

loc_8C0EE59E:
#data 0x7F04
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0EE5A6:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0EE674,pc),r1 ; r1 set to 0x8C15FB84
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0EE5BA:
#data 0x2FE6
#data 0x2FD66E43
#data 0x4F226D53
#data 0xE50984E4
#data 0x80E47001
#data 0x80E184D1
#data 0xF3D6E034
#data 0xE038FE37
#data 0xFE37F3D6
#data 0x03DCE024
#data 0xD3250E34
#data 0x64E3430b
#data 0x222862D0
#data 0x65D38902
#data 0x64E3B02a

#align4
loc_8C0EE5F4:
#data 0x903665D3
#data 0x81EE64E3
#data 0x6DF64F26
#data 0x6EF6

loc_8C0EE602:
#data 0x6350
#data 0x891D2338
#data 0x065C902e
#data 0x8803606c
#data 0x626C8902
#data 0x8B152228

#align4
loc_8C0EE618:
#data 0x63038441
#data 0x33008451
#data 0x854E8B10
#data 0x814E70Ff
#data 0x2008600f
#data 0x8455890a
#data 0x8803600c
#data 0x66038D04
#data 0x00096063
#data 0x8B018802

#align4
loc_8C0EE640:
#data 0x0009A007

#align4
loc_8C0EE644:
#data 0x0009A01e

#align4
loc_8C0EE648:
#data 0x6453D30c
#data 0x432B2F56
#data 0x7F04

loc_8C0EE652:
#data 0x2F56
#data 0x64F2E504
#data 0x432BD309
#data 0x7F04


loc_8C0EE65E:
rts 	
nop 	
;-------------------------------------------------------------------------------
#data 0x0400
#data 0x00960229
#data 0x0000022a

#align4
loc_8C0EE66C:
#data bank04.loc_8c044F12

loc_8C0EE670:
#data loc_8c0eE5A6

loc_8C0EE674:
#data bank15.loc_8c15FB84

loc_8C0EE678:
#data bank04.loc_8c04223a

loc_8C0EE67C:
#data bank10.loc_8c107366

loc_8C0EE680:
#data bank03.loc_8c035162

loc_8C0EE684:
#data 0x2FE6901a
#data 0x4F226E53
#data 0x00EC2F46
#data 0x8803600c
#data 0x90128B08
#data 0x72FF02Ec
#data 0x622E0E24
#data 0x89014211
#data 0x0E24E200

#align4
loc_8C0EE6A8:
#data 0xE501D305
#data 0x64E3430b
#data 0x7F0464F2
#data 0xD3034F26
#data 0x6EF6432b
#data 0x0229022a

#align4
loc_8C0EE6C0:
#data bank03.loc_8c035162

loc_8C0EE6C4:
#data bank04.loc_8c0450C0
#data 0x7FFC4F22
#data 0xE50AD336
#data 0xE6012F42
#data 0xE400430b
#data 0x8D072008
#data 0xE0266403
#data 0xE305D232
#data 0x14240435
#data 0x143663F2
#data 0x4F267F04
#data 0x6043000b
;-------------------------------------------------------------------------------

loc_8C0EE6F4:
mov.l @(0x18,r4),r5
mov.b @(0x05,r5),r0 	
tst r0,r0
bf loc_8C0EE78c
mov.w @(loc_8C0EE796,pc),r0 ; r0 set to 0x1E9
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x04,r0 	
bf loc_8C0EE78c
mov.w @(loc_8C0EE798,pc),r0 ; r0 set to 0x1D0
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x1D,r0 	
bf loc_8C0EE78c
mov.w @(loc_8C0EE79A,pc),r0 ; r0 set to 0x159
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x16,r0 	
bf loc_8C0EE78c
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0EE7B0,pc),r4 ; r4 set to 0x8C26A518
fmov.s @(r0,r5),fr5
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r5),fr4 ; r4 ??? bc r5 is ???	
mov.w @(loc_8C0EE79C,pc),r0 ; r0 set to 0x158
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x04,r0 	
bt loc_8C0EE74e
cmp/eq 0x05,r0 	
bt loc_8C0EE74e
cmp/eq 0x06,r0 	
bt loc_8C0EE762
cmp/eq 0x07,r0 	
bt loc_8C0EE762
cmp/eq 0x08,r0 	
bt loc_8C0EE76e
cmp/eq 0x09,r0 	
bt loc_8C0EE76e
cmp/eq 0x0A,r0 	
bt loc_8C0EE778
cmp/eq 0x0B,r0 	
bt loc_8C0EE778
bra loc_8C0EE782
nop 	

loc_8C0EE74E:
mov.w @(loc_8C0EE79E,pc),r0 ; r0 set to 0x94
fmov.s @(r0,r4),fr6
mov.w @(loc_8C0EE7A0,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r5),fr3
fcmp/gt fr3,fr6
bf loc_8C0EE75e
bra loc_8C0EE782
fmov fr6,fr4

loc_8C0EE75E:
bra loc_8C0EE782
fmov.s @(r0,r5),fr4

loc_8C0EE762:
mova @(loc_8C0EE7B4,pc),r0  ; r0 init to 0x8C0EE7B4
fmov.s @r0,fr3
mov.w @(loc_8C0EE7A2,pc),r0 ; r0 set to 0x90
fmov.s @(r0,r4),fr4
bra loc_8C0EE782
fadd fr3,fr4

loc_8C0EE76E:
mova @(loc_8C0EE7B8,pc),r0  ; r0 init to 0x8C0EE7B8
fmov.s @r0,fr3
mov.w @(loc_8C0EE7A4,pc),r0 ; r0 set to 0x88
bra loc_8C0EE77e
nop 	

#align4
loc_8C0EE778:
#data 0xF308C710
#data 0x9013

loc_8C0EE77E:
#data 0xF546
#data 0xF530


loc_8C0EE782:
mov 0x34,r0 ; r0 set to 0x34
fmov.s fr5,@(r0,r5) 	
mov 0x38,r0 ; r0 set to 0x38
rts 	
fmov.s fr4,@(r0,r5) 	
;-------------------------------------------------------------------------------

loc_8C0EE78C:
mov.l @(loc_8C0EE7C0,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0EE796:
#data 0x01E9

loc_8C0EE798:
#data 0x01D0

loc_8C0EE79A:
#data 0x0159

loc_8C0EE79C:
#data 0x0158

loc_8C0EE79E:
#data 0x0094

loc_8C0EE7A0:
#data 0x041c

loc_8C0EE7A2:
#data 0x0090

loc_8C0EE7A4:
#data 0x0088
#data 0x008c

#align4
loc_8C0EE7A8:
#data bank04.loc_8c044F12

loc_8C0EE7AC:
#data loc_8c0eE6F4

loc_8C0EE7B0:
#data 0x8C26A518

#align4
loc_8C0EE7B4:
#data 0xC3809249

#align4
loc_8C0EE7B8:
#data 0x42200000
#data 0xC2200000

#align4
loc_8C0EE7C0:
#data bank04.loc_8c0450C0

loc_8C0EE7C4:
#data 0x7FF44F22
#data 0x1F42D345
#data 0xE50A1F51
#data 0xE6002F60
#data 0x6463430b
#data 0x8D0C2008
#data 0xD3416403
#data 0x1434E020
#data 0x142652F2
#data 0x143553F1
#data 0x937062F0
#data 0xE0260424
#data 0x0435

loc_8C0EE7F6:
#data 0x7F0c
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0EE7FE:
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r4),r2
tst r2,r2
bt loc_8C0EE80a
bra loc_8C0EE910
nop 	

loc_8C0EE80A:
mov r4,r3
mov.l @(loc_8C0EE8E8,pc),r1 ; r1 set to 0x8C15FB94
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

#align4
loc_8C0EE81C:
#data 0xE5008444
#data 0x80447001
#data 0x00096053
#data 0x814F814e
#data 0x0454E022

#align4
loc_8C0EE830:
#data 0x55462FE6
#data 0x20088455
#data 0x904B8B0c
#data 0x600C005c
#data 0x8B078815
#data 0x600C8456
#data 0x89058809
#data 0x600C8456
#data 0x8901880a

#align4
loc_8C0EE854:
#data 0x6EF6A050

#align4
loc_8C0EE858:
#data 0x7001854e
#data 0x600F814e
#data 0x8927C801
#data 0xF408C721
#data 0x035D9035
#data 0x89012338
#data 0xF408C71f

#align4
loc_8C0EE874:
#data 0xE1009030
#data 0x0E5E9330
#data 0x35EC952d
#data 0x22396252
#data 0x2228221b
#data 0x9528890a
#data 0x351C35Ec
#data 0x2008845e
#data 0x65528B04
#data 0xF356E034
#data 0xF537F340

#align4
loc_8C0EE8A0:
#data 0xF2E6E034
#data 0xFE27F240
#data 0x25585545
#data 0xF3568902
#data 0xF537F340

#align4
loc_8C0EE8B4:
#data 0x70FF854f
#data 0x600F814f
#data 0x89064015
#data 0xD30CE004
#data 0x64E3814f
#data 0x432BE505
#data 0x6EF6

loc_8C0EE8CE:
#data 0x000b
#data 0x06006EF6
#data 0x013001D0
#data 0x041401C8
#data 0x02A40800

#align4
loc_8C0EE8E0:
#data bank04.loc_8c044F12

loc_8C0EE8E4:
#data loc_8c0eE7Fe

loc_8C0EE8E8:
#data bank15.loc_8c15FB94
#data 0x40555555
#data 0xC0555555

#align4
loc_8C0EE8F4:
#data bank03.loc_8c035162


loc_8C0EE8F8:
mov r4,r3
mov.l r4,@-r15
mov 0x03,r0 ; r0 set to 0x03
mov.b r0,@(0x04,r3) 	
mov 0x01,r5 ; r5 set to 0x01
mov.l @r15,r4
mov.w @(loc_8C0EE936,pc),r0 ; r0 set to 0x1C8
mov.l @(0x18,r4),r4
mov.l @(loc_8C0EE938,pc),r3 ; r3 set to 0x8C035162
mov.l @(r0,r4),r4
jmp @r3
add 0x04,r15

loc_8C0EE910:
mov r4,r3
mov.l @(loc_8C0EE93C,pc),r1 ; r1 set to 0x8C15FBA4
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0EE922:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0EE926:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0EE92A:
mov 0x03,r0 ; r0 set to 0x03
rts 	
mov.b r0,@(0x04,r4) 	
;-------------------------------------------------------------------------------

loc_8C0EE930:
mov.l @(loc_8C0EE940,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	

loc_8C0EE936:
#data 0x01C8

#align4
loc_8C0EE938:
#data bank03.loc_8c035162

loc_8C0EE93C:
#data bank15.loc_8c15FBA4

loc_8C0EE940:
#data bank04.loc_8c0450C0

loc_8C0EE944:
#data 0x7FFC4F22
#data 0xE50AD33d
#data 0xE6002F42
#data 0x6463430b
#data 0x8D0C2008
#data 0xD33A6403
#data 0x1434E026
#data 0x62F29369
#data 0x04351426
#data 0x62F29066
#data 0x7301032c
#data 0x0234

loc_8C0EE972:
#data 0x7F04
#data 0x000B4F26
#data 0x6043
;-------------------------------------------------------------------------------

loc_8C0EE97A:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x04,r14),r0 	
mov.l @(loc_8C0EEA48,pc),r1 ; r1 set to 0x8C15FBB4
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0EE98E:
#data 0x2FE6
#data 0x2FD66E43
#data 0x4F226D53
#data 0xE54B84E4
#data 0x80E47001
#data 0x80E184D1
#data 0xF3D6E034
#data 0xE038FE37
#data 0xFE37F3D6
#data 0x03DCE024
#data 0xD3250E34
#data 0x64E3430b
#data 0x222862D0
#data 0x65D38902
#data 0x64E3B02a

#align4
loc_8C0EE9C8:
#data 0x903665D3
#data 0x81EE64E3
#data 0x6DF64F26
#data 0x6EF6

loc_8C0EE9D6:
#data 0x6350
#data 0x891D2338
#data 0x065C902e
#data 0x8804606c
#data 0x626C8902
#data 0x8B152228

#align4
loc_8C0EE9EC:
#data 0x63038441
#data 0x33008451
#data 0x854E8B10
#data 0x814E70Ff
#data 0x2008600f
#data 0x8455890a
#data 0x8803600c
#data 0x66038D04
#data 0x00096063
#data 0x8B018802

#align4
loc_8C0EEA14:
#data 0x0009A007

#align4
loc_8C0EEA18:
#data 0x0009A01e

#align4
loc_8C0EEA1C:
#data 0x6453D30c
#data 0x432B2F56
#data 0x7F04

loc_8C0EEA26:
#data 0x2F56
#data 0x64F2E505
#data 0x432BD309
#data 0x7F04


loc_8C0EEA32:
rts 	
nop 	
;-------------------------------------------------------------------------------
#data 0x0700
#data 0x00960229
#data 0x0000022a

#align4
loc_8C0EEA40:
#data bank04.loc_8c044F12

loc_8C0EEA44:
#data loc_8c0eE97a

loc_8C0EEA48:
#data bank15.loc_8c15FBB4

loc_8C0EEA4C:
#data bank04.loc_8c04223a

loc_8C0EEA50:
#data bank10.loc_8c10584e

loc_8C0EEA54:
#data bank03.loc_8c035162

loc_8C0EEA58:
#data 0x2FE6901a
#data 0x4F226E53
#data 0x00EC2F46
#data 0x8804600c
#data 0x90128B08
#data 0x72FF02Ec
#data 0x622E0E24
#data 0x89014211
#data 0x0E24E200

#align4
loc_8C0EEA7C:
#data 0xE501D305
#data 0x64E3430b
#data 0x7F0464F2
#data 0xD3034F26
#data 0x6EF6432b
#data 0x0229022a

#align4
loc_8C0EEA94:
#data bank03.loc_8c035162

loc_8C0EEA98:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0x00096043
#data 0xE601D333
#data 0x2F5080F4
#data 0x430BE50a
#data 0x2008E400
#data 0x64038D0c
#data 0xE120D32f
#data 0x9257314c
#data 0x84F41434
#data 0xE0212100
#data 0x043463F0
#data 0x0425E026
#data 0x4F267F08
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0EEAD8:
mov 0x20,r0 ; r0 set to 0x20
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(loc_8C0EEB7C,pc),r0 ; r0 set to 0x8C15FBC4
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

loc_8C0EEAEC:
mov r4,r3
mov.l @(loc_8C0EEB80,pc),r1 ; r1 set to 0x8C15FBC8
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0EEAFE:
mov.l @(loc_8C0EEB84,pc),r2 ; r2 set to 0x8C26A8Ec
mov.l @r2,r3
tst r3,r3
bf loc_8C0EEB22
mov.l @(loc_8C0EEB88,pc),r2 ; r2 set to 0x8C2896B0
mov 0x3E,r0 ; r0 set to 0x3e
mov.l @r2,r3
mov.b @(r0,r3),r1
cmp/pz r1
bt loc_8C0EEB18
mov 0x02,r0 ; r0 set to 0x02
rts 	
mov.b r0,@(0x04,r4) 	
;-------------------------------------------------------------------------------

#align4
loc_8C0EEB18:
#data 0x70018444
#data 0xE03C8044
#data 0x814e


loc_8C0EEB22:
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0EEB26:
sts.l pr,@-r15
add 0xF0,r15
mov.w @(0x1C,r4),r0 	
add 0xFF,r0
mov.w r0,@(0x1C,r4) 	
exts.w r0,r0
cmp/pl r0
bf loc_8C0EEB56
mov.l @(loc_8C0EEB8C,pc),r2 ; r2 set to 0x8C13B504
mov.l @(loc_8C0EEB90,pc),r3 ; r3 set to 0x8C129740
mov.l r2,@-r15
mov r15,r4
jsr @r3
add 0x04,r4
mov r15,r2 ; r2 ??? bc r15 is ???	
mov.l @(loc_8C0EEB94,pc),r3 ; r3 set to 0x8C0395C6
add 0x04,r2
mov 0x19,r5 ; r5 set to 0x19
mov.l r2,@-r15
mov 0x07,r6 ; r6 set to 0x07
jsr @r3
mov 0x23,r4 ; r4 set to 0x23
bra loc_8C0EEB5c
add 0x08,r15

loc_8C0EEB56:
mov.b @(0x04,r4),r0 	
add 0x01,r0
mov.b r0,@(0x04,r4) 	

loc_8C0EEB5C:
add 0x10,r15
lds.l @r15+,pr 	
rts 	
nop 	
;-------------------------------------------------------------------------------

loc_8C0EEB64:
mov 0x03,r0 ; r0 set to 0x03
rts 	
mov.b r0,@(0x04,r4) 	
;-------------------------------------------------------------------------------

loc_8C0EEB6A:
mov.l @(loc_8C0EEB98,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop 	
#data 0x00000800

#align4
loc_8C0EEB74:
#data bank04.loc_8c044F26

loc_8C0EEB78:
#data loc_8c0eEAD8

loc_8C0EEB7C:
#data bank15.loc_8c15FBC4

loc_8C0EEB80:
#data bank15.loc_8c15FBC8

loc_8C0EEB84:
#data 0x8C26A8Ec

#align4
loc_8C0EEB88:
#data 0x8C2896B0

#align4
loc_8C0EEB8C:
#data bank13.loc_8c13B504

loc_8C0EEB90:
#data bank12.loc_8c129740

loc_8C0EEB94:
#data bank03.loc_8c0395C6

loc_8C0EEB98:
#data bank04.loc_8c0450C0
#data 0x7FFC4F22
#data 0xE50AD317
#data 0xE6012F42
#data 0xE400430b
#data 0x8D072008
#data 0xE0266403
#data 0xE309D213
#data 0x14240435
#data 0x143663F2
#data 0x4F267F04
#data 0x6043000b
;-------------------------------------------------------------------------------

#align4
loc_8C0EEBC8:
#data 0x84555546
#data 0x8B0E2008
#data 0x005C9012
#data 0x8801600c
#data 0x900E8B09
#data 0x600C005c
#data 0x8B048815
#data 0x005C900a
#data 0x8815600c
#data 0x8902

loc_8C0EEBEE:
#data 0xD206
#data 0x0009422b

#align4
loc_8C0EEBF4:
#data 0x0009000b
;-------------------------------------------------------------------------------
#data 0x01D001E9
#data 0x00000159

#align4
loc_8C0EEC00:
#data bank04.loc_8c044F12

loc_8C0EEC04:
#data loc_8c0eEBC8

loc_8C0EEC08:
#data bank04.loc_8c0450C0
#data 0x7FFC4F22
#data 0xE50AD31d
#data 0xE6002F42
#data 0x6463430b
#data 0x8D0A2008
#data 0xD31A6403
#data 0xE30A1434
#data 0x142662F2
#data 0x840160F2
#data 0xE0268041
#data 0x7F040435
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C0EEC3E:
mov.l r14,@-r15
mov.w @(loc_8C0EEC82,pc),r0 ; r0 set to 0x2B8
sts.l pr,@-r15
mov.l @(0x18,r4),r14
mov.l @(r0,r14),r3
cmp/pl r3
bf loc_8C0EEC7a
mov.w @(loc_8C0EEC84,pc),r0 ; r0 set to 0x2Bc
mov.l @(loc_8C0EEC90,pc),r3 ; r3 set to 0x8C1292D4
mov.l @(r0,r14),r1
add 0x01,r1
mov.l r1,@(r0,r14) 	
mov 0x06,r0 ; r0 set to 0x06
mov.w @(loc_8C0EEC84,pc),r1 ; r1 set to 0x2Bc
add r14,r1 ; r1 ??? bc r14 is ???	
jsr @r3
mov.l @r1,r1
mov.w @(loc_8C0EEC84,pc),r2 ; r2 set to 0x2Bc
mov 0x01,r7 ; r7 set to 0x01
mov.l @(loc_8C0EEC94,pc),r3 ; r3 set to 0x8C03544c
mov r14,r4
add r14,r2 ; r2 ??? bc r14 is ???	
mov.l r0,@r2
mov 0x04,r5 ; r5 set to 0x04
mov.w @(loc_8C0EEC84,pc),r0 ; r0 set to 0x2Bc
lds.l @r15+,pr 	
mov.l @(r0,r14),r6
add 0x10,r6
jmp @r3
mov.l @r15+,r14

loc_8C0EEC7A:
lds.l @r15+,pr 	
mov.l @(loc_8C0EEC98,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
mov.l @r15+,r14

loc_8C0EEC82:
#data 0x02B8

loc_8C0EEC84:
#data 0x02Bc
#data 0x0000

#align4
loc_8C0EEC88:
#data bank04.loc_8c044F12

loc_8C0EEC8C:
#data loc_8c0eEC3e

loc_8C0EEC90:
#data bank12.loc_8c1292D4

loc_8C0EEC94:
#data bank03.loc_8c03544c

loc_8C0EEC98:
#data bank04.loc_8c0450C0
#data 0x2FD62FE6
#data 0x4F222FC6
#data 0x9475D340
#data 0x0009430b
#data 0xDE3FD240
#data 0x2E22DC40
#data 0xED00A009
#data 0x64D360E2
#data 0x440865E2
#data 0x55526002
#data 0x044E4C0b
#data 0x63E27D01
#data 0x3D235231
#data 0x4F268BF2
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x7FFC4F22
#data 0x6D53D32f
#data 0x2F62430b
#data 0xDB3062F2
#data 0xA0082D22
#data 0x6CD2EE00
#data 0x440864E3
#data 0x55C260C2
#data 0x044E4B0b
#data 0x63D27E01
#data 0x3E235231
#data 0x7F048BF3
#data 0x6BF64F26
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0xD3264F22
#data 0xD5249437
#data 0xE600430b
#data 0xE6009434
#data 0xD523D222
#data 0x4F26422b
#data 0xD3204F22
#data 0xD51E942d
#data 0xE600430b
#data 0xE600942a
#data 0xD51DD21c
#data 0x4F26422b
#data 0xD31A4F22
#data 0xD5189423
#data 0xE600430b
#data 0xE6009420
#data 0xD517D216
#data 0x4F26422b
#data 0x911AD316
#data 0x4F222FE6
#data 0x001C6032
#data 0x89058800
#data 0x89078801
#data 0x89238802
#data 0x0009A025
#data 0x6E43940e
#data 0x7E01A021
#data 0x6E43940b
#data 0x7E01A01d
#data 0x02940C10
#data 0x02960295
#data 0x029A0297
#data 0x00AD029b
#data 0x02B9029c

#align4
loc_8C0EEDA8:
#data bank11.loc_8c11B800
#data 0x8C26A904
#data 0x0CEA0000

#align4
loc_8C0EEDB4:
#data bank12.loc_8c122FD0
#data 0x0CE80000

#align4
loc_8C0EEDBC:
#data bank02.loc_8c027366
#data 0x0CC00000
#data 0x8C26823c
#data 0x6E43947d
#data 0xD3427E01
#data 0x430BD540
#data 0x4F26E600
#data 0xE600D540
#data 0x64E3D23e
#data 0x6EF6422b
#data 0xE029D23f
#data 0x2FD62FE6
#data 0x63224F22
#data 0x013CDD3b
#data 0x2118DE38
#data 0x94658B07
#data 0x4E0BD535
#data 0x9462E600
#data 0xA007E600
#data 0x945F65D3
#data 0x4E0BD531
#data 0x945CE600
#data 0xE60065D3
#data 0x00094E0b
#data 0x64D34F26
#data 0xD52ED231
#data 0x422B6DF6
#data 0x2FE66EF6
#data 0x2FC62FD6
#data 0x944D4F22
#data 0xDE2DD22e
#data 0x420BD326
#data 0xDC2D2E32
#data 0xED00A009
#data 0x64D360E2
#data 0x440865E2
#data 0x55526002
#data 0x044E4C0b
#data 0x63E27D01
#data 0x3D235231
#data 0x4F268BF2
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x2FD62FE6
#data 0x4F222FC6
#data 0xD21F942f
#data 0xD317DE20
#data 0x2E32420b
#data 0xA009DC1d
#data 0x60E2ED00
#data 0x65E264D3
#data 0x60024408
#data 0x4C0B5552
#data 0x7D01044e
#data 0x523163E2
#data 0x8BF23D23
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x2FE66EF6
#data 0xDE14D40a
#data 0x2FD6D314
#data 0x4F222FC6
#data 0x23422E42
#data 0x940AD20d
#data 0x0009420b
#data 0xA028DC0c
#data 0x02BBED00
#data 0x02A502A4
#data 0x02A902A8
#data 0x08100C90
#data 0x0CE80000

#align4
loc_8C0EEED8:
#data bank02.loc_8c027366
#data 0x0CC00000
#data 0x0CD00000
#data 0x8C26823c

#align4
loc_8C0EEEE8:
#data bank03.loc_8c03552a
#data 0x8C26A90c

#align4
loc_8C0EEEF0:
#data bank11.loc_8c11B800

loc_8C0EEEF4:
#data bank12.loc_8c122FD0
#data 0x8C26A910
#data 0x8C26A920
#data 0x8C26A928
#data 0x64D360E2
#data 0x440865E2
#data 0x55526002
#data 0x044E4C0b
#data 0x63E27D01
#data 0x3D235231
#data 0x4F268BF2
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x2FD62FE6
#data 0x4F222FC6
#data 0xD222943d
#data 0xD320DE1f
#data 0x2E32420b
#data 0xA009DC20
#data 0x60E2ED00
#data 0x65E264D3
#data 0x60024408
#data 0x4C0B5552
#data 0x7D01044e
#data 0x523163E2
#data 0x8BF23D23
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x2FE66EF6
#data 0x2FC62FD6
#data 0x941E4F22
#data 0xDE14D212
#data 0x420BD310
#data 0xDC112E32
#data 0xED00A009
#data 0x64D360E2
#data 0x440865E2
#data 0x55526002
#data 0x044E4C0b
#data 0x63E27D01
#data 0x3D235231
#data 0x4F268BF2
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0xD5089404
#data 0xAE97D603
#data 0x08100009
#data 0x00000D10
#data 0x8C26A914
#data 0x0CE80000

#align4
loc_8C0EEFBC:
#data bank11.loc_8c11B800

loc_8C0EEFC0:
#data bank12.loc_8c122FD0
#data 0x8C26A924
#data 0x8C26A934

#align4
loc_8C0EEFCC:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0xDC0C4F22
#data 0xDE0DDD0c
#data 0xDA09990f
#data 0x60439B0e
#data 0x70FF0009
#data 0x3012E115
#data 0xA1398B01
#data 0x0009

loc_8C0EEFF6:
#data 0x4000
#data 0xC7076103
#data 0x0023001d
#data 0x08100009
#data 0x00000850
#data 0x0CED0000
#data 0x0CC00000
#data 0x0CE80000

#align4
loc_8C0EF014:
#data bank02.loc_8c027366
#data 0x00740040
#data 0x008C0266
#data 0x00C000Ac
#data 0x00D40266
#data 0x00F200De
#data 0x011E0106
#data 0x019E0136
#data 0x01C801B2
#data 0x01F801E0
#data 0x02280210
#data 0xD34E0240
#data 0xD04EE600
#data 0xD54B6430
#data 0x4408644c
#data 0x044E4E0b
#data 0x65C3D349
#data 0xE600D04a
#data 0x644C6430
#data 0x4E0B4408
#data 0x4F26044e
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0xAE136DF6
#data 0x94726EF6
#data 0x4E0BE600
#data 0x946F65A3
#data 0x4E0BE600
#data 0x946C65C3
#data 0xA060D53f
#data 0x946966A3
#data 0x4E0BE600
#data 0x946665D3
#data 0x4E0BE600
#data 0x4F2665C3
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0xAEBE6DF6
#data 0xBE376EF6
#data 0x4F260009
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0xAED36DF6
#data 0xBE396EF6
#data 0x4F260009
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0xAF296DF6
#data 0x94476EF6
#data 0xD62CD52d
#data 0x0009A037
#data 0x0009BE36
#data 0x69F64F26
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6AED9
#data 0x0009BE38
#data 0x69F64F26
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6AF2f
#data 0xE600942f
#data 0x65D34E0b
#data 0xE600942c
#data 0x65C34E0b
#data 0x66D3D51e
#data 0x6493A017
#data 0xE6009425
#data 0x65D34E0b
#data 0xE6009422
#data 0x65C34E0b
#data 0x66D3D519
#data 0x6493A00b
#data 0xE600941b
#data 0x65D34E0b
#data 0xE6009418
#data 0x65C34E0b
#data 0x6493D514
#data 0x4F2666D3
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0xADBF6DF6
#data 0x026E6EF6
#data 0x0C50026f
#data 0x02930292
#data 0x029E0D10
#data 0x02A0029f
#data 0x02A202A1
#data 0x000002A3
#data 0x0CEA0000
#data 0x8C26A95c

#align4
loc_8C0EF180:
#data bank15.loc_8c15FE24

loc_8C0EF184:
#data bank15.loc_8c15FDE0
#data 0x8C26A908
#data 0x0CE08000
#data 0x8C26A91c
#data 0x8C26A928
#data 0x8C26A92c
#data 0x8C26A930
#data 0x0009BE20
#data 0x69F64F26
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6AEF8
#data 0xE6009474
#data 0x65A34E0b
#data 0xE6009471
#data 0x65C34E0b
#data 0xA022D53f
#data 0x946B66A3
#data 0x4E0BE600
#data 0x946865D3
#data 0x4E0BE600
#data 0xD53B65C3
#data 0xA01666D3
#data 0x94610009
#data 0x4E0BE600
#data 0x945E65D3
#data 0x4E0BD537
#data 0x945BE600
#data 0xA02FD536
#data 0x945866D3
#data 0x4E0BE600
#data 0x945565D3
#data 0x4E0BE600
#data 0xD53265C3
#data 0xA02366D3
#data 0x944E64B3
#data 0x4E0BE600
#data 0x944B65D3
#data 0x4E0BE600
#data 0xD52D65C3
#data 0xA01766D3
#data 0x944464B3
#data 0x4E0BE600
#data 0x944165D3
#data 0x4E0BE600
#data 0xD52865C3
#data 0xA00B66D3
#data 0x943A64B3
#data 0x4E0BE600
#data 0x943765D3
#data 0x4E0BE600
#data 0xD52365C3
#data 0x66D364B3
#data 0x69F64F26
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6AD3a

#align4
loc_8C0EF268:
#data 0x69F64F26
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0EF278:
#data 0x674D9321
#data 0x2379921f
#data 0x8B033320
#data 0x451175Ff
#data 0x65638900

#align4
loc_8C0EF28C:
#data 0x27499418
#data 0x8B033740
#data 0x35677501
#data 0xE5008B00

#align4
loc_8C0EF29C:
#data 0x6053000b
;-------------------------------------------------------------------------------
#data 0x02A702A6
#data 0x02AE02Ad
#data 0x02B002Af
#data 0x02B10860
#data 0x02B302B2
#data 0x02B502B4
#data 0x02B702B6
#data 0x080002B8
#data 0x00000400
#data 0x8C26A938
#data 0x8C26A93c
#data 0x0C420000
#data 0x8C26A940
#data 0x8C26A944
#data 0x8C26A948
#data 0x8C26A94c
#data 0x8C26A950

#align4
loc_8C0EF2E4:
#data 0x674D9367
#data 0x23799265
#data 0x8B033320
#data 0x451175Ff
#data 0x65638900

#align4
loc_8C0EF2F8:
#data 0x2749945e
#data 0x8B033740
#data 0x35677501
#data 0xE5008B00

#align4
loc_8C0EF308:
#data 0x6053000b
;-------------------------------------------------------------------------------

#align4
loc_8C0EF30C:
#data 0xD62CE301
#data 0x2378674c
#data 0xE5008D08
#data 0x85486463
#data 0x2039934d
#data 0x85426203
#data 0x250B202b

#align4
loc_8C0EF328:
#data 0x2738E302
#data 0x64638908
#data 0x85487414
#data 0x20299241
#data 0x85426103
#data 0x250B201b

#align4
loc_8C0EF340:
#data 0x6053000b
;-------------------------------------------------------------------------------
#data 0xD31F4F22
#data 0x0009430b
#data 0x420BD21e
#data 0xB0490009
#data 0xD21D0009
#data 0x4F26422b
#data 0x432BD31c
#data 0xD41C0009
#data 0x25586540
#data 0x60538903
#data 0x88040009
#data 0xD5138B1f
#data 0x66519322
#data 0x2368666d
#data 0xE1108919
#data 0x89162168
#data 0x931A8552
#data 0x2038600d
#data 0x60408911
#data 0x2400CA04
#data 0xC8046040
#data 0xD20F8909
#data 0xD110E400
#data 0x2240D30e
#data 0x2340D20f
#data 0xA0022140
#data 0xAFD52240
#data 0x000B0009
#data 0x20000009
#data 0x3C001000
#data 0x01000080
#data 0x8C2681Dc

#align4
loc_8C0EF3C4:
#data bank03.loc_8c0395A0

loc_8C0EF3C8:
#data bank03.loc_8c030F54

loc_8C0EF3CC:
#data bank02.loc_8c02DC4c

loc_8C0EF3D0:
#data bank03.loc_8c03565c
#data 0x8C26A95d
#data 0x8C28C6E8
#data 0x8C28C6E9
#data 0x8C28C6Ea
#data 0x8C28C6Eb
#data 0x7FFC4F22
#data 0xD01CD11b
#data 0x43086310
#data 0x430B033e
#data 0xD21A0009
#data 0x6520D31a
#data 0x45004508
#data 0x2F52353c
#data 0x655261F2
#data 0x7F045411
#data 0x432BD316
#data 0x4F26


loc_8C0EF416:
mov.l @(loc_8C0EF45C,pc),r2 ; r2 set to 0x8C28C6E8
mov 0x01,r3 ; r3 set to 0x01
mov 0x00,r4 ; r4 set to 0x00
mov.l @(loc_8C0EF464,pc),r0 ; r0 set to 0x8C28C6Ea
sts.l pr,@-r15
mov.b r3,@r2 ; r2 ??	
mov 0x07,r1 ; r1 set to 0x07
mov.l @(loc_8C0EF470,pc),r3 ; r3 set to 0x8C28C6E9
mov.l @(loc_8C0EF474,pc),r2 ; r2 set to 0x8C28C6Eb
mov.b r4,@r3 ; r3 ??	
mov.l @(loc_8C0EF47C,pc),r3 ; r3 set to 0x8C031F10
mov.b r1,@r0 ; r0 ??	
mov.b r4,@r2 ; r2 ??	
mov.l @(loc_8C0EF478,pc),r4 ; r4 set to 0x8C15FBE4
jsr @r3
nop 	
mov.l @(loc_8C0EF480,pc),r2 ; r2 set to 0x8C031F24
jsr @r2
fldi1 fr4
mov.l @(loc_8C0EF484,pc),r3 ; r3 set to 0x8C030E30
jsr @r3
nop 	
mov.l @(loc_8C0EF488,pc),r2 ; r2 set to 0x8C030F24
jsr @r2
nop 	
mov.l @(loc_8C0EF48C,pc),r3 ; r3 set to 0x8C041ECc
jsr @r3
nop 	
mov.l @(loc_8C0EF490,pc),r2 ; r2 set to 0x8C04182e
jsr @r2
nop 	
mov.l @(loc_8C0EF494,pc),r3 ; r3 set to 0x8C04185e
jmp @r3
lds.l @r15+,pr 	
#data 0x0000

#align4
loc_8C0EF45C:
#data 0x8C28C6E8

#align4
loc_8C0EF460:
#data bank15.loc_8c15FE68

loc_8C0EF464:
#data 0x8C28C6Ea

#align4
loc_8C0EF468:
#data bank15.loc_8c15FDA0

loc_8C0EF46C:
#data bank02.loc_8c02DC32

loc_8C0EF470:
#data 0x8C28C6E9

#align4
loc_8C0EF474:
#data 0x8C28C6Eb

#align4
loc_8C0EF478:
#data bank15.loc_8c15FBE4

loc_8C0EF47C:
#data bank03.loc_8c031F10

loc_8C0EF480:
#data bank03.loc_8c031F24

loc_8C0EF484:
#data bank03.loc_8c030E30

loc_8C0EF488:
#data bank03.loc_8c030F24

loc_8C0EF48C:
#data bank04.loc_8c041ECc

loc_8C0EF490:
#data bank04.loc_8c04182e

loc_8C0EF494:
#data bank04.loc_8c04185e

loc_8C0EF498:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x7FF84F22
#data 0xEE12DD45
#data 0x60E361D2
#data 0xD3440009
#data 0x0009430b
#data 0x61D21F01
#data 0x000960E3
#data 0x430BD341
#data 0x2F020009
#data 0xE401BF20
#data 0xE60155F1
#data 0xBED16C03
#data 0x65F264C3
#data 0x6B03E611
#data 0x64C3BF02
#data 0x420862B3
#data 0x4200D139
#data 0x63B36A03
#data 0x9365323c
#data 0x32AC4200
#data 0x85122D22
#data 0x2038600d
#data 0xD0348905
#data 0xE300E202
#data 0xD2332020
#data 0x2230

loc_8C0EF50A:
#data 0xD334
#data 0xDC32E505
#data 0x2F36E604
#data 0xE4024C0b
#data 0xE507D231
#data 0x2F26E604
#data 0xE4024C0b
#data 0xE508D32f
#data 0x2F36E604
#data 0xE4024C0b
#data 0xD22D64B3
#data 0x65A34408
#data 0x44002F26
#data 0xE6027505
#data 0x74114C0b
#data 0xDA2A7F10
#data 0xD928ED00
#data 0xEB24

loc_8C0EF54E:
#data 0x60D3
#data 0x40080009
#data 0x039E61D3
#data 0x2F36E600
#data 0x60E32FA6
#data 0xD2190009
#data 0x0009420b
#data 0x61D36503
#data 0x60E37505
#data 0xD3140009
#data 0x0009430b
#data 0x44086403
#data 0x4C0B4400
#data 0x7D017412
#data 0x8FE23DB2
#data 0x7F087F08
#data 0x69F64F26
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C0EF59C:
#data 0x4F22D308
#data 0xD5146432
#data 0x8B032448
#data 0xF308C713
#data 0xF53AA02b

#align4
loc_8C0EF5B0:
#data 0x3413E11e
#data 0xC7118B24
#data 0xF308A024
#data 0x00000360
#data 0x8C28C6F0

#align4
loc_8C0EF5C4:
#data bank12.loc_8c129128

loc_8C0EF5C8:
#data bank12.loc_8c1292D4
#data 0x8C2681Dc
#data 0x8C28C6E8
#data 0x8C28C6E9

#align4
loc_8C0EF5D8:
#data bank03.loc_8c0395C6

loc_8C0EF5DC:
#data bank13.loc_8c13B508

loc_8C0EF5E0:
#data bank13.loc_8c13B518

loc_8C0EF5E4:
#data bank13.loc_8c13B52c

loc_8C0EF5E8:
#data bank13.loc_8c13B53c

loc_8C0EF5EC:
#data bank15.loc_8c15FBF0

loc_8C0EF5F0:
#data bank13.loc_8c13B540
#data 0x8C28C6F8
#data 0x42480000
#data 0x42C80000

#align4
loc_8C0EF600:
#data 0xF308C726

loc_8C0EF604:
#data 0xF53a

loc_8C0EF606:
#data 0xD227
#data 0xF48DD325
#data 0xF24AF34a
#data 0xD226D327
#data 0x430BD124
#data 0x4F26E00c
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C0EF620:
mov.l @(loc_8C0EF6B4,pc),r1 ; r1 set to 0x8C28C6E9
mov.l @(loc_8C0EF6B8,pc),r0 ; r0 set to 0x8C15FE74
mov.b @r1,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
nop 	

loc_8C0EF62E:
#data 0x2FE6
#data 0xD1224F22
#data 0x0009410b
#data 0xD122DE21
#data 0x400860E2
#data 0x8801001e
#data 0x93288B04
#data 0xD01F62E2
#data 0x2020323c

#align4
loc_8C0EF650:
#data 0xD01C64E2
#data 0xBCB94408
#data 0x62E2044e
#data 0xD01BE400
#data 0x032E4208
#data 0x6132D21b
#data 0x2312D319
#data 0x2242D31a
#data 0x2340BF94
#data 0xD419D31a
#data 0x0009430b
#data 0x420BD219
#data 0xD319F49d
#data 0x0009430b
#data 0x420BD218
#data 0xD2090009
#data 0x2230E301
#data 0x000B4F26
#data 0x00FF6EF6
#data 0x447A0000
#data 0x8C28C6Fc
#data 0x8C28C700
#data 0x8C28C710

#align4
loc_8C0EF6AC:
#data bank15.loc_8c15FBD8

loc_8C0EF6B0:
#data bank12.loc_8c1294C8

loc_8C0EF6B4:
#data 0x8C28C6E9

#align4
loc_8C0EF6B8:
#data bank15.loc_8c15FE74

loc_8C0EF6BC:
#data bank03.loc_8c03580c
#data 0x8C28C6F0

#align4
loc_8C0EF6C4:
#data bank15.loc_8c15FC80
#data 0x8C26A95c

#align4
loc_8C0EF6CC:
#data bank15.loc_8c15FD10
#data 0x8C28C6Ec
#data 0x8C28C6F4
#data 0x8C28C71c

#align4
loc_8C0EF6DC:
#data bank15.loc_8c15FBE4

loc_8C0EF6E0:
#data bank03.loc_8c031F10

loc_8C0EF6E4:
#data bank03.loc_8c031F24

loc_8C0EF6E8:
#data bank03.loc_8c030E30

loc_8C0EF6EC:
#data bank03.loc_8c030F24

loc_8C0EF6F0:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x4F22FFFb
#data 0xBE037FF0
#data 0xD52DE401
#data 0xDC2D6403
#data 0x66518558
#data 0x855281F4
#data 0x604D81F6
#data 0x8908C880
#data 0xE30362C0
#data 0x2C207201
#data 0x3233622e
#data 0xE1008B01
#data 0x2C10

loc_8C0EF72E:
#data 0x9343
#data 0x9B406E6d
#data 0x23E8DD24
#data 0x9739953b
#data 0xD9219A3a
#data 0xD4228954
#data 0x890927E8
#data 0xF29DF348
#data 0xF18DF321
#data 0x8F03F135
#data 0xC71EF43a
#data 0xF43AF308

#align4
loc_8C0EF75C:
#data 0x890925E8
#data 0xC71CF348
#data 0xF320F29d
#data 0xF108F43a
#data 0x8901F135
#data 0xF43AF38d

#align4
loc_8C0EF774:
#data 0x2BE8D418
#data 0xF348890a
#data 0xF29DC717
#data 0xF43AF320
#data 0xF135F108
#data 0xC7158902
#data 0xF43AF308

#align4
loc_8C0EF790:
#data 0x8B012EA8
#data 0x0009A07a

#align4
loc_8C0EF798:
#data 0xC712F348
#data 0xF321F29d
#data 0xF108F43a
#data 0x8971F315
#data 0xF308C70f
#data 0xF43AA06e
#data 0x08000400
#data 0x20001000
#data 0x00000200
#data 0x8C2681Dc
#data 0x8C28C71c
#data 0x8C28C6Ec
#data 0x8C28C6F4
#data 0x8C28C700
#data 0x43B38000
#data 0x43B40000
#data 0x8C28C6Fc
#data 0x42B40000
#data 0x42B20000
#data 0xC2B40000
#data 0xC2B20000

#align4
loc_8C0EF7EC:
#data 0x23E8E340
#data 0x8D18C71e
#data 0xD41EFF08
#data 0x890227E8
#data 0xF3F1F348
#data 0xF43a

loc_8C0EF802:
#data 0x25E8
#data 0xF3488902
#data 0xF43AF3F0

#align4
loc_8C0EF80C:
#data 0x89032BE8
#data 0xF346E004
#data 0xF437F3F1

#align4
loc_8C0EF818:
#data 0x89372EA8
#data 0xF346E004
#data 0xA033F3F0
#data 0xF437

loc_8C0EF826:
#data 0x6692
#data 0x76FF5661
#data 0x65D2BD24
#data 0xC7102D02
#data 0x63E3F408
#data 0x23B885F4
#data 0x6503D40e
#data 0x655D8D0d
#data 0x89022B58
#data 0xA002F348
#data 0xF3F1

loc_8C0EF84E:
#data 0xF348
#data 0xF341

loc_8C0EF852:
#data 0xF59d
#data 0xF355F550
#data 0xF43A8D01
#data 0xF45a

loc_8C0EF85E:
#data 0x2EA8
#data 0x25A88914
#data 0xF348890a
#data 0xF3F0A00a
#data 0x3F000000
#data 0x8C28C710
#data 0x40A00000
#data 0x8C28C6F8

#align4
loc_8C0EF87C:
#data 0xF340F348

#align4
loc_8C0EF880:
#data 0xF43AC73a
#data 0xF435F408
#data 0xF44A8900

#align4
loc_8C0EF88C:
#data 0x936B85F6
#data 0x644D6403
#data 0x89092348
#data 0xE208D535
#data 0x73016350
#data 0x633E2530
#data 0x8B013323
#data 0x2510E100

#align4
loc_8C0EF8AC:
#data 0x2348E320
#data 0xD2308902
#data 0x2210E101

#align4
loc_8C0EF8B8:
#data 0x2438D32f
#data 0xBE6D8901
#data 0x0009

loc_8C0EF8C2:
#data 0xD32f
#data 0x430BD42d
#data 0x64C00009
#data 0x89032448
#data 0x00096043
#data 0x8B3D8801

#align4
loc_8C0EF8D8:
#data 0xE505D32b
#data 0xE604D02b
#data 0xD12B6232
#data 0xDE274208
#data 0x2F26022e
#data 0x4E0B2F16
#data 0x63D26463
#data 0xD227E506
#data 0x2F36E604
#data 0x4E0B2F26
#data 0x60926463
#data 0x64D265F3
#data 0x60027514
#data 0x4408D322
#data 0x044E430b
#data 0x65F36092
#data 0x751064D2
#data 0xD31F6002
#data 0x430B4408
#data 0x52F5044e
#data 0xD31DE507
#data 0x2F26E604
#data 0x4E0B2F36
#data 0x52F66463
#data 0xD31AE508
#data 0x2F26E604
#data 0x4E0B2F36
#data 0xD2186463
#data 0xE604E51b
#data 0x4E0B2F26
#data 0x7F24E416

#align4
loc_8C0EF954:
#data 0x4F267F10
#data 0x69F6FFF9
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x00000100
#data 0x461C4000
#data 0x8C28C6Ea
#data 0x8C28C6E8
#data 0x00008000

#align4
loc_8C0EF97C:
#data loc_8c0eF9Ac

loc_8C0EF980:
#data bank03.loc_8c0395Ac

loc_8C0EF984:
#data bank03.loc_8c0395C6
#data 0x8C28C6F0

#align4
loc_8C0EF98C:
#data bank15.loc_8c15FBF0

loc_8C0EF990:
#data bank13.loc_8c13B544

loc_8C0EF994:
#data bank13.loc_8c13B550

loc_8C0EF998:
#data bank10.loc_8c1082E0

loc_8C0EF99C:
#data bank10.loc_8c10823e

loc_8C0EF9A0:
#data bank13.loc_8c13B55c

loc_8C0EF9A4:
#data bank13.loc_8c13B570

loc_8C0EF9A8:
#data bank13.loc_8c13B584


loc_8C0EF9AC:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
fmov.s fr15,@-r15
fmov.s fr14,@-r15
fmov.s fr13,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0EFA88,pc),r13 ; r13 set to 0x8C1204F0
jsr @r13
mov 0x03,r4 ; r4 set to 0x03
mov.l @(loc_8C0EFA8C,pc),r12 ; r12 set to 0x8C121100
jsr @r12
nop 	
mov.l @(loc_8C0EFA90,pc),r3 ; r3 set to 0x8C121710
fldi0 fr15
fmov fr15,fr5
jsr @r3
fmov fr15,fr4 ; r4 ??? bc r15 is ???	
mova @(loc_8C0EFA94,pc),r0  ; r0 init to 0x8C0EFA94
fmov.s @r0,fr13 ; r13 ??	
mova @(loc_8C0EFA98,pc),r0  ; r0 set to 0x8C0EFA98
fmov.s @r0,fr14
mova @(loc_8C0EFA9C,pc),r0  ; r0 set to 0x8C0EFA9c
fmov.s @r0,fr15
mov.l @(loc_8C0EFAA0,pc),r0 ; r0 set to 0x8C2681Dc
mov.w @r0,r0 ; r0 ??	
extu.w r0,r0
tst 0x10,r0 	
bf loc_8C0EF9F0
mov.w @(loc_8C0EFA84,pc),r4 ; r4 set to 0x1E94
fmov fr14,fr5
fmov fr15,fr6
bra loc_8C0EF9F8
fmov fr13,fr4

loc_8C0EF9F0:
mov.w @(loc_8C0EFA86,pc),r4 ; r4 set to 0x4000
fmov fr13,fr4 ; r4 ??? bc r13 is ???	
fmov fr15,fr6
fmov fr14,fr5

loc_8C0EF9F8:
mov.l @(loc_8C0EFAA4,pc),r2 ; r2 set to 0x8C1219B0, r2 set to 0x8C1219B0
jsr @r2
nop 	
mov.l @(loc_8C0EFAAC,pc),r3 ; r3 set to 0x8C28C700, r3 set to 0x8C28C700
mov.l @(loc_8C0EFAB0,pc),r2 ; r2 set to 0x8C28C6FC, r2 set to 0x8C28C6Fc
mov.l @(loc_8C0EFAB4,pc),r1 ; r1 set to 0x8C28C6F8, r1 set to 0x8C28C6F8
fmov.s @r3,fr6
fmov.s @r1,fr4
mov.l @(loc_8C0EFAB8,pc),r3 ; r3 set to 0x8C02DAC4, r3 set to 0x8C02DAC4
fmov.s @r2,fr5
mov.l @(loc_8C0EFAA8,pc),r14 ; r14 set to 0x8C28C704, r14 set to 0x8C28C704
jsr @r3
mov.l r14,@-r15
add 0x04,r15
mov.l @(loc_8C0EFABC,pc),r4 ; r4 set to 0x8C28C710, r4 set to 0x8C28C710
mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
fmov.s @r14,fr2 ; r2 ??, r2 ??	
mov r0,r1 ; r1 set to 0x04, r1 set to 0x04
fmov.s @r4,fr3 ; r3 ??, r3 ??	
add r4,r1 ; r1 set to 0x8C28C714, r1 set to 0x8C28C714
fadd fr3,fr2
fmov.s fr2,@r14 ; r14 ??? bc r2 is ???, r14 ??? bc r2 is ???	
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
mov r0,r1 ; r1 set to 0x08, r1 set to 0x08
add r4,r1 ; r1 set to 0x8C28C718, r1 set to 0x8C28C718
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 	
jsr @r13
mov 0x02,r4 ; r4 set to 0x02, r4 set to 0x02
jsr @r12
nop 	
mov.l @(loc_8C0EFAC0,pc),r3 ; r3 set to 0x8C11FF90, r3 set to 0x8C11FF90
mov 0x00,r6 ; r6 set to 0x00, r6 set to 0x00
mov.l @(loc_8C0EFABC,pc),r5 ; r5 set to 0x8C28C710, r5 set to 0x8C28C710
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???, r4 ??? bc r14 is ???	
jsr @r13
mov 0x01,r4 ; r4 set to 0x01, r4 set to 0x01
jsr @r12
nop 	
mov.l @(loc_8C0EFAC4,pc),r2 ; r2 set to 0x8C123780, r2 set to 0x8C123780
fldi1 fr15
fmov fr15,fr5 ; r5 ??? bc r15 is ???, r5 ??? bc r15 is ???	
fmov fr15,fr6 ; r6 ??? bc r15 is ???, r6 ??? bc r15 is ???	
jsr @r2
fmov fr15,fr4 ; r4 ??? bc r15 is ???, r4 ??? bc r15 is ???	
mov.l @(loc_8C0EFAA0,pc),r0 ; r0 set to 0x8C2681DC, r0 set to 0x8C2681Dc
mov.l @(loc_8C0EFACC,pc),r2 ; r2 set to 0x8C28C6F4, r2 set to 0x8C28C6F4
mov.w @r0,r0 ; r0 ??, r0 ??	
mov.l @(loc_8C0EFAC8,pc),r3 ; r3 set to 0x8C28C6EC, r3 set to 0x8C28C6Ec
extu.w r0,r0
mov.l @r2,r13
mov.l @r3,r14
tst 0x10,r0 	
bf/s loc_8C0EFAD4
shll2 r13
mov.l @(loc_8C0EFAD0,pc),r1 ; r1 set to 0x8C1235E0, r1 set to 0x8C1235E0
mov.l @r14,r0
jsr @r1
mov.l @(r0,r13),r4
bsr loc_8C0EFB70
nop 	
bra loc_8C0EFADc
nop 	

loc_8C0EFA84:
#data 0x1E94

loc_8C0EFA86:
#data 0x4000

#align4
loc_8C0EFA88:
#data bank12.loc_8c1204F0

loc_8C0EFA8C:
#data bank12.loc_8c121100

loc_8C0EFA90:
#data bank12.loc_8c121710

loc_8C0EFA94:
#data 0x3FAAAAAb

#align4
loc_8C0EFA98:
#data 0x3DCCCCCd

#align4
loc_8C0EFA9C:
#data 0x463B8000

#align4
loc_8C0EFAA0:
#data 0x8C2681Dc

#align4
loc_8C0EFAA4:
#data bank12.loc_8c1219B0

loc_8C0EFAA8:
#data 0x8C28C704

#align4
loc_8C0EFAAC:
#data 0x8C28C700

#align4
loc_8C0EFAB0:
#data 0x8C28C6Fc

#align4
loc_8C0EFAB4:
#data 0x8C28C6F8

#align4
loc_8C0EFAB8:
#data bank02.loc_8c02DAC4

loc_8C0EFABC:
#data 0x8C28C710

#align4
loc_8C0EFAC0:
#data bank11.loc_8c11FF90

loc_8C0EFAC4:
#data bank12.loc_8c123780

loc_8C0EFAC8:
#data 0x8C28C6Ec

#align4
loc_8C0EFACC:
#data 0x8C28C6F4

#align4
loc_8C0EFAD0:
#data bank12.loc_8c1235E0

loc_8C0EFAD4:
#data 0x60E2D368
#data 0x04DE430b

#align4
loc_8C0EFADC:
#data 0x6030D367
#data 0x8B3D8801
#data 0xE505D167
#data 0xE604DE65
#data 0x4E0B2F16
#data 0xD365E414
#data 0xE604E506
#data 0x4E0B2F36
#data 0xD263E414
#data 0xE604E507
#data 0x4E0B2F26
#data 0xD361E414
#data 0xE604E508
#data 0x4E0B2F36
#data 0xD25FE414
#data 0xE604E509
#data 0x4E0B2F26
#data 0xD35DE414
#data 0xE604E50a
#data 0x4E0B2F36
#data 0xD25BE414
#data 0xE604E50b
#data 0x4E0B2F26
#data 0xD359E414
#data 0xE604E50c
#data 0x4E0B2F36
#data 0xD257E414
#data 0xE604E50d
#data 0x4E0B2F26
#data 0xD355E414
#data 0xE604E50e
#data 0x4E0B2F36
#data 0x7F28E414

#align4
loc_8C0EFB60:
#data 0xFDF94F26
#data 0xFFF9FEF9
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C0EFB70:
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
add 0xE8,r15
mov.l @(loc_8C0EFCAC,pc),r3 ; r3 set to 0x8C126B90
jsr @r3
fldi1 fr4
mov.l @(loc_8C0EFCB0,pc),r2 ; r2 set to 0x8C121100
jsr @r2
nop 	
mov.l @(loc_8C0EFCBC,pc),r14 ; r14 set to 0x8C126B10
mov 0x00,r13 ; r13 set to 0x00
mov.l @(loc_8C0EFCC0,pc),r10 ; r10 set to 0x8C15FEC4
mov 0x03,r8 ; r8 set to 0x03
mov.l @(loc_8C0EFCB8,pc),r12 ; r12 set to 0x8C15FF0c
mov.l @(loc_8C0EFCB4,pc),r11 ; r11 set to 0x8C15FE7c

loc_8C0EFBA0:
mov.l @(loc_8C0EFCC4,pc),r2 ; r2 set to 0x8C28C6F0, r2 set to 0x8C28C6F0
mov.l @r2,r3 ; r3 ??	
tst r3,r3
bf loc_8C0EFBBa
mov.l @(loc_8C0EFCB8,pc),r0 ; r0 set to 0x8C15FF0C, r0 set to 0x8C15FF0c
mov r13,r6 ; r6 set to 0x00
shll2 r6 ; r6 set to 0x00
mov r10,r5 ; r5 set to 0x8C15FEC4
mov.l @(r0,r6),r6 ; r6 ??	
add 0x0C,r5 ; r5 set to 0x8C15FED0
mov r10,r9 ; r9 set to 0x8C15FEC4
bra loc_8C0EFBC4
mov r10,r4

loc_8C0EFBBA:
mov r11,r5
mov.l @r12,r6
mov r11,r4
add 0x0C,r5
mov r11,r9

loc_8C0EFBC4:
jsr @r14
nop 	
add 0x01,r13
cmp/ge r8,r13
add 0x04,r12
add 0x18,r11
bf/s loc_8C0EFBA0
add 0x18,r10
mova @(loc_8C0EFCC8,pc),r0  ; r0 init to 0x8C0EFCC8, r0 init to 0x8C0EFCC8
mov.l @(loc_8C0EFCD0,pc),r12 ; r12 set to 0xFF00FFFF, r12 set to 0xFF00FFFf
fmov.s @r0,fr13
mova @(loc_8C0EFCCC,pc),r0  ; r0 set to 0x8C0EFCCC, r0 set to 0x8C0EFCCc
fmov.s @r0,fr14
mov 0x05,r11 ; r11 set to 0x05, r11 set to 0x05
fldi0 fr15
bra loc_8C0EFC1c
mov 0xFB,r13

loc_8C0EFBE6:
#data 0x2DD8
#data 0x62D38917
#data 0x63D34208
#data 0x4200323c
#data 0x425A65F3
#data 0x64F3E00c
#data 0xF32D66C3
#data 0xE010FF37
#data 0xFF4AF43c
#data 0xE004FFF7
#data 0xE014FFF7
#data 0xE008FFD7
#data 0x4E0BFFE7
#data 0x740c

loc_8C0EFC1A:
#data 0x7D01


loc_8C0EFC1C:
cmp/gt r11,r13
bf loc_8C0EFBE6
bra loc_8C0EFC5a
mov 0xFB,r13

#align4
loc_8C0EFC24:
#data 0x89172DD8
#data 0x62D363D3
#data 0x65F34308
#data 0x64F3332c
#data 0x66C34300
#data 0xE00C435a
#data 0xE010FFD7
#data 0xF32DFFEa
#data 0xE004FFF7
#data 0xE014FFF7
#data 0xE008FF37
#data 0xFF47F43c
#data 0x740C4E0b

loc_8C0EFC58:
#data 0x7D01


loc_8C0EFC5A:
cmp/gt r11,r13
bf loc_8C0EFC24
add 0x18,r15
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

#align4
loc_8C0EFC78:
#data bank12.loc_8c1235B0
#data 0x8C28C71c

#align4
loc_8C0EFC80:
#data bank03.loc_8c0395C6

loc_8C0EFC84:
#data bank13.loc_8c13B59c

loc_8C0EFC88:
#data bank13.loc_8c13B5B0

loc_8C0EFC8C:
#data bank13.loc_8c13B5C8

loc_8C0EFC90:
#data bank13.loc_8c13B5Dc

loc_8C0EFC94:
#data bank13.loc_8c13B5F0

loc_8C0EFC98:
#data bank13.loc_8c13B604

loc_8C0EFC9C:
#data bank13.loc_8c13B61c

loc_8C0EFCA0:
#data bank13.loc_8c13B634

loc_8C0EFCA4:
#data bank13.loc_8c13B64c

loc_8C0EFCA8:
#data bank13.loc_8c13B660

loc_8C0EFCAC:
#data bank12.loc_8c126B90

loc_8C0EFCB0:
#data bank12.loc_8c121100

loc_8C0EFCB4:
#data bank15.loc_8c15FE7c

loc_8C0EFCB8:
#data bank15.loc_8c15FF0c

loc_8C0EFCBC:
#data bank12.loc_8c126B10

loc_8C0EFCC0:
#data bank15.loc_8c15FEC4

loc_8C0EFCC4:
#data 0x8C28C6F0

#align4
loc_8C0EFCC8:
#data 0xC2480000

#align4
loc_8C0EFCCC:
#data 0x42480000

#align4
loc_8C0EFCD0:
#data 0xFF00FFFf
#data 0x01AA01B9
#data 0x03AF01C3
#data 0x033904Ae
#data 0x02320362
#data 0x03AD0398
#data 0x03B8029f
#data 0x01FF0464
#data 0x030203Ab
#data 0x03190453
#data 0x02A902E5
#data 0x022203D3
#data 0x02A9031f
#data 0x017901Ea
#data 0x01D30182
#data 0x040203Fe
#data 0x0570020d
#data 0x013E03A3
#data 0x010B0398
#data 0x021D01E2
#data 0x01970161
#data 0x01500259
#data 0x02400496
#data 0x0295044d
#data 0x02970459
#data 0x02E204Da
#data 0x04390245
#data 0x038D0188
#data 0x037402C6
#data 0x023B02Da
#data 0x03C9

loc_8C0EFD4A:
#data 0x003d
#data 0x00260011
#data 0x002B0047
#data 0x00610042
#data 0x002D0015
#data 0x000F007f
#data 0x009F0015
#data 0x00460034
#data 0x01050068
#data 0x00180035
#data 0x002D001f
#data 0x001B0033
#data 0x00260028
#data 0x00100025
#data 0x004D0008
#data 0x0045001f
#data 0x002A0054
#data 0x00320022
#data 0x00090000
#data 0x00190017
#data 0x00300027
#data 0x00420015
#data 0x006A0034
#data 0x005B0020
#data 0x00A10066
#data 0x000D0024
#data 0x0027004b
#data 0x0076004a
#data 0x00510024
#data 0x00FE0015

#align4
loc_8C0EFDC0:
#data 0x4F222FE6
#data 0x2F507FFc
#data 0xD34DE504
#data 0xE6006E43
#data 0x6463430b
#data 0x8D302008
#data 0xD34A6403
#data 0x9189E020
#data 0xD3491434
#data 0x14E6314c
#data 0x042462F0
#data 0x90829282
#data 0x32EC430b
#data 0xE2019080
#data 0x71506143
#data 0x84E20424
#data 0x84E18042
#data 0xE0508041
#data 0xF437F3E6
#data 0xF3E6E054
#data 0x9072F437
#data 0x043403Ec
#data 0x02EC7001
#data 0xE0300424
#data 0x62E303Ec
#data 0x04347250
#data 0x430BD338
#data 0xE024E00c
#data 0xE30002Ec
#data 0x905F0424
#data 0x0434

loc_8C0EFE3A:
#data 0x6043
#data 0x7F040009
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C0EFE46:
mov 0x20,r0 ; r0 set to 0x20
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(loc_8C0EFF10,pc),r0 ; r0 set to 0x8C15FF18
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

loc_8C0EFE5A:
mov r4,r3
mov.l @(loc_8C0EFF14,pc),r1 ; r1 set to 0x8C15FF38
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0EFE6C:
mov.b @(0x04,r4),r0 	
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov 0x2C,r0 ; r0 set to 0x2c
rts 	
mov.w r0,@(0x1C,r4) 	
;-------------------------------------------------------------------------------

loc_8C0EFE78:
mov.l r14,@-r15
mov.l r12,@-r15
mov.l @(loc_8C0EFF18,pc),r12 ; r12 set to 0x8C2895F0
mov.b @(0x06,r12),r0 	
tst r0,r0
bf/s loc_8C0EFE8e
mov r4,r14
mov.b @(0x04,r14),r0 	
add 0x01,r0
bra loc_8C0EFF4a
mov.b r0,@(0x04,r14) 	

loc_8C0EFE8E:
mov.w @(0x1C,r14),r0 	
add 0xFF,r0
mov.w r0,@(0x1C,r14) 	
exts.w r0,r0
cmp/pz r0
bt loc_8C0EFF4a
mov.b @(0x04,r14),r0 	
mov 0x01,r1 ; r1 set to 0x01
mov 0x0A,r7 ; r7 set to 0x0a
add 0x01,r0
mov.b r0,@(0x04,r14) 	
mov 0x00,r4 ; r4 set to 0x00
bra loc_8C0EFED4
mov 0x0C,r6

loc_8C0EFEAA:
#data 0x84E2
#data 0x721862C3
#data 0x201A600c
#data 0x40006303
#data 0x4008303c
#data 0x054E302c
#data 0x23386350
#data 0x84558905
#data 0x8802600c
#data 0x90158901
#data 0x0574

loc_8C0EFED2:
#data 0x7404


loc_8C0EFED4:
cmp/hs r6,r4
bf loc_8C0EFEAa
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
extu.b r0,r0
cmp/eq 0x04,r0 	
bf loc_8C0EFF1c
mov.w @(loc_8C0EFEFE,pc),r0 ; r0 set to 0x1Eb
mov 0x1E,r4 ; r4 set to 0x1e
mov.l @(0x18,r14),r2
mov.b r4,@(r0,r2) 	
add 0x02,r0 ; r0 set to 0x1Ed
mov.l @(0x18,r14),r3
mov.b r4,@(r0,r3) 	
bra loc_8C0EFF38
nop 	
#data 0x00C000Dc
#data 0x01A3012c
#data 0x01A0

loc_8C0EFEFE:
#data 0x01Eb

#align4
loc_8C0EFF00:
#data bank04.loc_8c044F26

loc_8C0EFF04:
#data loc_8c0eFE46

loc_8C0EFF08:
#data bank12.loc_8c129560

loc_8C0EFF0C:
#data bank12.loc_8c1294C8

loc_8C0EFF10:
#data bank15.loc_8c15FF18

loc_8C0EFF14:
#data bank15.loc_8c15FF38

loc_8C0EFF18:
#data 0x8C2895F0

#align4
loc_8C0EFF1C:
#data 0x04ECE020
#data 0x8805604c
#data 0x624C8902
#data 0x8B092228

#align4
loc_8C0EFF2C:
#data 0x53E69086
#data 0x70020364
#data 0x036453E6

#align4
loc_8C0EFF38:
#data 0xE2009081
#data 0x032453E6

#align4
loc_8C0EFF40:
#data 0x6CF6D240
#data 0x422B54E6
#data 0x6EF6


loc_8C0EFF4A:
mov.l @r15+,r12
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C0EFF50:
mov r4,r3
mov.l @(loc_8C0F0048,pc),r1 ; r1 set to 0x8C15FF48
mov.l r4,@-r15
mov.b @(0x04,r3),r0 	
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0EFF62:
mov.b @(0x04,r4),r0 	
add 0x01,r0
mov.b r0,@(0x04,r4) 	
mov 0x14,r0 ; r0 set to 0x14
rts 	
mov.w r0,@(0x1C,r4) 	
;-------------------------------------------------------------------------------

loc_8C0EFF6E:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l @(loc_8C0F004C,pc),r13 ; r13 set to 0x8C2895F0
mov.l r11,@-r15
mov.b @(0x06,r13),r0 	
tst r0,r0
bf/s loc_8C0EFF86
mov r4,r14
mov.b @(0x04,r14),r0 	
add 0x01,r0
bra loc_8C0F0034
mov.b r0,@(0x04,r14) 	

loc_8C0EFF86:
mov.b @(0x05,r14),r0 	
tst r0,r0
bf loc_8C0EFF9e
mov.w @(loc_8C0F0040,pc),r0 ; r0 set to 0x3F0
mov.l @(0x18,r14),r3
mov.b @(r0,r3),r2
tst r2,r2
bf loc_8C0F0034
mov.b @(0x05,r14),r0 	
add 0x01,r0 ; r0 set to 0x3F1
bra loc_8C0F0034
mov.b r0,@(0x05,r14) 	

loc_8C0EFF9E:
#data 0x85Ee
#data 0x81EE70Ff
#data 0x4011600f
#data 0x84E48944
#data 0xE40CEB00
#data 0x700165B3
#data 0xE70180E4

#align4
loc_8C0EFFB8:
#data 0x62D384E2
#data 0x600C7218
#data 0x40006303
#data 0x4008303c
#data 0x065E302c
#data 0x23386360
#data 0x84658905
#data 0x8802600c
#data 0x90328901
#data 0x0674

loc_8C0EFFDE:
#data 0x7504
#data 0x8BE93542
#data 0xE10A65B3

#align4
loc_8C0EFFE8:
#data 0x62D384E2
#data 0x600C7218
#data 0x6303207a
#data 0x303C4000
#data 0x302C4008
#data 0x6360065e
#data 0x89052338
#data 0x600C8465
#data 0x8B018803
#data 0x06149019

#align4
loc_8C0F0010:
#data 0x35427504
#data 0x90118BE8
#data 0x024452E6
#data 0x53E67002
#data 0x70B00344
#data 0x03B453E6
#data 0xD3066BF6
#data 0x54E66DF6
#data 0x6EF6432b


loc_8C0F0034:
mov.l @r15+,r11
mov.l @r15+,r13
rts 	
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x019D01Eb

loc_8C0F0040:
#data 0x03F0
#data 0x01A0

#align4
loc_8C0F0044:
#data bank05.loc_8c050FE0

loc_8C0F0048:
#data bank15.loc_8c15FF48

loc_8C0F004C:
#data 0x8C2895F0
