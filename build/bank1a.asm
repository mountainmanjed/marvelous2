;-------------------------------------------------------------------------------

loc_8c1A0032:
mov.l @(loc_8c1A0130,pc),r0 ; r0 set to 0x8C1C6708
rts
nop
;-------------------------------------------------------------------------------

loc_8c1A0038:
mov.l @(loc_8c1A0134,pc),r3 ; r3 set to 0x8C1A0410
jmp @r3
nop

loc_8c1A003E:
mov.l r14,@-r15
mov 0x08,r6 ; r6 set to 0x08
mov.l r13,@-r15
mov 0x10,r5 ; r5 set to 0x10
mov.l r12,@-r15
mov r4,r12
sts.l pr,@-r15
mov.l @(loc_8c1A0138,pc),r3 ; r3 set to 0x8C1AF1A4
mov 0x00,r4 ; r4 set to 0x00
mov r4,r14 ; r14 set to 0x00
mov r4,r13 ; r13 set to 0x00
add 0xEC,r15
mov r15,r7
jsr @r3
mov r12,r4 ; r4 ??? bc r12 is ???
mov.l @(loc_8c1A0140,pc),r2 ; r2 set to 0x8C1AECDC
mov.l @(loc_8c1A013C,pc),r4 ; r4 set to 0x8C1C670C
jsr @r2
nop
mov.l @(loc_8c1A0140,pc),r3 ; r3 set to 0x8C1AECDC
jsr @r3
mov r15,r4 ; r4 ??? bc r15 is ???
mov.l @(loc_8c1A0144,pc),r2 ; r2 set to 0x8C1AEE08
jsr @r2
nop
mov.l @(loc_8c1A0148,pc),r4 ; r4 set to 0x8C1C9A7C
bra loc_8c1A0080
mov 0x01,r5

loc_8c1A0076:
#data 0x33C0
#data 0xA0068B01
#data 0x6D53

loc_8c1A007E:
#data 0x7E01

#align4
loc_8c1A0080:
#data 0x400860EC
#data 0x2338034E
#data 0x8BF5

loc_8c1A008A:
#data 0x6DDE
#data 0x8B012DD8
#data 0x2250D22E

#align4
loc_8c1A0094:
#data 0x4F267F14
#data 0x6DF66CF6
#data 0x6EF6000B

loc_8c1a00a0:
rts
nop

loc_8c1A00A4:
mov.l @(loc_8c1A0150,pc),r3 ; r3 set to 0x8C19FDFA
jmp @r3
nop

loc_8c1A00AA:
mov.l @(loc_8c1A0154,pc),r0 ; r0 set to 0xA0600400
rts
nop
;-------------------------------------------------------------------------------
#data 0x0009000B
;-------------------------------------------------------------------------------

loc_8c1A00B4:
rts
nop
;-------------------------------------------------------------------------------
#data 0x0009000B
;-------------------------------------------------------------------------------
#data 0x0009000B
;-------------------------------------------------------------------------------
#data 0x0009000B
;-------------------------------------------------------------------------------

loc_8c1A00C4:
mov.l @(loc_8c1A0158,pc),r3 ; r3 set to 0x8C1C9A7A
rts
mov.b @r3,r0
;-------------------------------------------------------------------------------

loc_8c1A00CA:
mov.l @(loc_8c1A0158,pc),r5 ; r5 set to 0x8C1C9A7A
tst r4,r4
bt loc_8c1A00DC
mov 0x01,r2 ; r2 set to 0x01
mov.b r2,@r5 ; r5 ??
mov.l @(loc_8c1A0160,pc),r3 ; r3 set to 0x8C1A025C
mov.l @(loc_8c1A015C,pc),r5 ; r5 set to 0x8C18BD66
jmp @r3
mov r2,r4

loc_8c1A00DC:
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@r5
mov.l @(loc_8c1A0160,pc),r2 ; r2 set to 0x8C1A025C
mov.l @(loc_8c1A015C,pc),r5 ; r5 set to 0x8C18BD66
jmp @r2
mov r3,r4

loc_8c1A00E8:
mov.l @(loc_8c1A014C,pc),r3 ; r3 set to 0x8C1C9A79
rts
mov.b @r3,r0
;-------------------------------------------------------------------------------

loc_8c1A00EE:
mov.l @(loc_8c1A014C,pc),r3 ; r3 set to 0x8C1C9A79
mov 0x00,r4 ; r4 set to 0x00
mov.b r4,@r3 ; r3 ??
mov.l @(loc_8c1A0158,pc),r2 ; r2 set to 0x8C1C9A7A
mov.b r4,@r2 ; r2 ??
bra bank19.loc_8c19FEB8
mov 0x01,r4

loc_8c1A00FC:
rts
nop
;-------------------------------------------------------------------------------

loc_8c1A0100:
add 0xFC,r15
mov.b r4,@r15
rts
add 0x04,r15
;-------------------------------------------------------------------------------

loc_8c1A0108:
rts
nop
;-------------------------------------------------------------------------------
#data 0x8C34BB93
#data 0x8C34B356

#align4
loc_8c1A0114:
#data loc_8c1A0F28
#data 0x8C34BB48
#data 0x0000FFFF
#data 0x8C34B358
#data 0x8C347A30

#align4
loc_8c1A0128:
#data loc_8c1A1000
#data 0x8C34BB4A

#align4
loc_8c1A0130:
#data bank1c.loc_8c1c6708

loc_8c1A0134:
#data loc_8c1A0410

loc_8c1A0138:
#data loc_8c1AF1A4

loc_8c1A013C:
#data bank1c.loc_8c1c670C

loc_8c1A0140:
#data loc_8c1AECDC

loc_8c1A0144:
#data loc_8c1AEE08

loc_8c1A0148:
#data bank1c.loc_8c1c9A7C

loc_8c1A014C:
#data bank1c.loc_8c1c9A79

loc_8c1A0150:
#data bank19.loc_8c19FDFA

loc_8c1A0154:
#data 0xA0600400

#align4
loc_8c1A0158:
#data bank1c.loc_8c1c9A7A

loc_8c1A015C:
#data bank18.loc_8c18BD66

loc_8c1A0160:
#data loc_8c1A025C


loc_8c1A0164:
extu.b r4,r0
cmp/eq 0x00,r0
bt loc_8c1A01C2
cmp/eq 0x01,r0
bt loc_8c1A01C2
cmp/eq 0x02,r0
bt loc_8c1A01C2
cmp/eq 0x03,r0
bt loc_8c1A01C2
cmp/eq 0x04,r0
bt loc_8c1A01C2
cmp/eq 0x05,r0
bt loc_8c1A01C2
cmp/eq 0x06,r0
bt loc_8c1A01C2
cmp/eq 0x07,r0
bt loc_8c1A01C2
cmp/eq 0x08,r0
bt loc_8c1A01C2
cmp/eq 0x09,r0
bt loc_8c1A01C2
cmp/eq 0x0A,r0
bt loc_8c1A01C2
cmp/eq 0x0B,r0
bt loc_8c1A01C2
cmp/eq 0x0C,r0
bt loc_8c1A01C2
cmp/eq 0x0D,r0
bt loc_8c1A01C2
cmp/eq 0x15,r0
bt loc_8c1A01C2
cmp/eq 0x1A,r0
bt loc_8c1A01C2
cmp/eq 0x1E,r0
bt loc_8c1A01C2
cmp/eq 0x1F,r0
bt loc_8c1A01C2
cmp/eq 0x22,r0
bt loc_8c1A01C2
cmp/eq 0x2A,r0
bt loc_8c1A01C2
cmp/eq 0x2B,r0
bt loc_8c1A01C2
cmp/eq 0x2C,r0
bt loc_8c1A01C2
bra loc_8c1A01C6
nop

loc_8c1A01C2:
rts
mov 0x01,r0
;-------------------------------------------------------------------------------

loc_8c1A01C6:
mov 0x00,r0 ; r0 set to 0x00
rts
nop
;-------------------------------------------------------------------------------

loc_8c1A01CC:
mov.l @(loc_8c1A0230,pc),r3 ; r3 set to 0xA0600000
mov 0x0F,r2 ; r2 set to 0x0F
mov.b @r3,r4
and r2,r4
rts
mov r4,r0
;-------------------------------------------------------------------------------
#data 0xE210D315
#data 0x24296430
#data 0x6043000B
;-------------------------------------------------------------------------------

loc_8c1A01E4:
sts.l pr,@-r15
add 0xF0,r15
mov r4,r0
nop
mov.b r0,@(0x08,r15)
mov.l r5,@r15
mov.l r6,@(0x04,r15)
mov.l @(loc_8c1A0234,pc),r2 ; r2 set to 0x8C347A20
mov.l @r2,r3
mov.l @(0x0C,r3),r1
jsr @r1
nop
mov.l @(loc_8c1A0238,pc),r7 ; r7 set to 0x8C1C9A50
mov r0,r5
mov.l r7,@(0x0C,r15)
mov.b @(0x08,r15),r0
mov.l @(loc_8c1A023C,pc),r6 ; r6 set to 0x8C1C9998
mov.l @(loc_8c1A0240,pc),r3 ; r3 set to 0x8C1B4800
jsr @r3
mov r0,r4
mov.l @(loc_8c1A023C,pc),r3 ; r3 set to 0x8C1C9998
mov.l @r15,r2 ; r2 ??? bc r15 is ???
mov.l r3,@r2
mov.l @(0x0C,r15),r3 ; r3 ??? bc r15 is ???
mov.l @(0x04,r15),r2
add 0x10,r15
lds.l @r15+,pr
mov.l r3,@r2
rts
nop
;-------------------------------------------------------------------------------

loc_8c1A0220:
mov.l @(loc_8c1A0234,pc),r2 ; r2 set to 0x8C347A20
rts
mov.l r4,@r2
;-------------------------------------------------------------------------------

loc_8c1A0226:
mov.l @(loc_8c1A0234,pc),r1 ; r1 set to 0x8C347A20
mov 0x00,r3 ; r3 set to 0x00
rts
mov.l r3,@r1
;-------------------------------------------------------------------------------
#data 0x0000

#align4
loc_8c1A0230:
#data 0xA0600000

#align4
loc_8c1A0234:
#data 0x8C347A20

#align4
loc_8c1A0238:
#data bank1c.loc_8c1c9A50

loc_8c1A023C:
#data bank1c.loc_8c1c9998

loc_8c1A0240:
#data bank1b.loc_8c1b4800


loc_8c1A0244:
mov.l @(loc_8c1A0254,pc),r3 ; r3 set to 0x8C1B4396
jmp @r3
nop

loc_8c1A024A:
rts
nop
;-------------------------------------------------------------------------------

loc_8c1A024E:
mov.l @(loc_8c1A0258,pc),r3 ; r3 set to 0x8C1B43E0
jmp @r3
nop

#align4
loc_8c1A0254:
#data bank1b.loc_8c1b4396

loc_8c1A0258:
#data bank1b.loc_8c1b43E0


loc_8c1A025C:
mov.l r14,@-r15
exts.b r4,r4
sts.l pr,@-r15
mov.l @(loc_8c1A034C,pc),r14 ; r14 set to 0x8C1C9ACD
tst r4,r4
bt loc_8c1A027C
mov.l @(loc_8c1A0350,pc),r2 ; r2 set to 0x8C1844D4
mov 0x00,r7 ; r7 set to 0x00
mov.w @(loc_8c1A0346,pc),r4 ; r4 set to 0xB40
jsr @r2
mov 0x10,r6 ; r6 set to 0x10
mov.l @(loc_8c1A0354,pc),r3 ; r3 set to 0x8C1C9AC8
mov 0x01,r2 ; r2 set to 0x01
mov.l r0,@r3 ; r3 ??? bc r0 is ???
bra loc_8c1A028E
mov.b r2,@r14

#align4
loc_8c1A027C:
#data 0x233863E0
#data 0xD2358905
#data 0x420BD333
#data 0xE1006432
#data 0x2E10


loc_8c1A028E:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1A0294:
mov.l r14,@-r15
exts.b r4,r4
sts.l pr,@-r15
mov.l @(loc_8c1A035C,pc),r14 ; r14 set to 0x8C1C9ACC
tst r4,r4
bt loc_8c1A02B4
mov.l @(loc_8c1A0350,pc),r2 ; r2 set to 0x8C1844D4
mov 0x00,r7 ; r7 set to 0x00
mov.w @(loc_8c1A0348,pc),r4 ; r4 set to 0x900
jsr @r2
mov 0x48,r6 ; r6 set to 0x48
mov.l @(loc_8c1A0360,pc),r3 ; r3 set to 0x8C1C9AC4
mov 0x01,r2 ; r2 set to 0x01
mov.l r0,@r3 ; r3 ??? bc r0 is ???
bra loc_8c1A02C6
mov.b r2,@r14

#align4
loc_8c1A02B4:
#data 0x233863E0
#data 0xD2278905
#data 0x420BD328
#data 0xE1006432
#data 0x2E10


loc_8c1A02C6:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8c1A02CC:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x4F22DB23
#data 0x233863B0
#data 0xD2228B2B
#data 0x420BE301
#data 0xD5212B30
#data 0xDC216403
#data 0x33466352
#data 0x61C28B02
#data 0x2C127101

#align4
loc_8c1A02F8:
#data 0x25426D43
#data 0x4D01D31D
#data 0x34D8430B
#data 0xD21C6103
#data 0x420B901F
#data 0xD3190009
#data 0x430B6E03
#data 0x610364D3
#data 0xD2176403
#data 0x420B9015
#data 0x62C20009
#data 0xD3153E0C
#data 0xE2000237
#data 0x031A2B20
#data 0xD3133E3C
#data 0x23E2

loc_8c1A0336:
#data 0x4F26
#data 0x6BF6D211
#data 0x6CF66022
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1A0346:
#data 0x0B40

loc_8c1A0348:
#data 0x0900
#data 0x2710

#align4
loc_8c1A034C:
#data bank1c.loc_8c1c9ACD

loc_8c1A0350:
#data bank18.loc_8c1844D4

loc_8c1A0354:
#data bank1c.loc_8c1c9AC8

loc_8c1A0358:
#data bank18.loc_8c1847DC

loc_8c1A035C:
#data bank1c.loc_8c1c9ACC

loc_8c1A0360:
#data bank1c.loc_8c1c9AC4

loc_8c1A0364:
#data bank1c.loc_8c1c9ACE

loc_8c1A0368:
#data bank17.loc_8c17878A

loc_8c1A036C:
#data bank1c.loc_8c1c9AD0

loc_8c1A0370:
#data bank1c.loc_8c1c9AC0

loc_8c1A0374:
#data bank17.loc_8c17879A

loc_8c1A0378:
#data bank12.loc_8c1291DC
#data 0x0007DD44

#align4
loc_8c1A0380:
#data bank1c.loc_8c1c9AD4


loc_8c1A0384:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.l @(loc_8c1A03C8,pc),r3 ; r3 set to 0x8C1780B2
add 0xF4,r15
jsr @r3
mov r15,r4
tst r0,r0
bf loc_8c1A03AE
mov.w @r15,r3 ; r3 ??? bc r15 is ???
mov.w r3,@r14
mov.b @(0x02,r15),r0
mov.b r0,@(0x02,r14)
mov.b @(0x03,r15),r0
mov.b r0,@(0x03,r14)
mov.b @(0x04,r15),r0
mov.b r0,@(0x04,r14)
mov.b @(0x05,r15),r0
mov.b r0,@(0x05,r14)
bra loc_8c1A03BE
mov.b @(0x06,r15),r0

loc_8c1A03AE:
mov 0x00,r4 ; r4 set to 0x00
mov.w r4,@r14
mov r4,r0 ; r0 set to 0x00
nop
mov.b r0,@(0x02,r14)
mov.b r0,@(0x03,r14)
mov.b r0,@(0x04,r14)
mov.b r0,@(0x05,r14)

loc_8c1A03BE:
add 0x0C,r15
mov.b r0,@(0x06,r14)
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8c1A03C8:
#data bank17.loc_8c1780B2


loc_8c1A03CC:
mov.l r14,@-r15
mov.l @(loc_8c1A0424,pc),r14 ; r14 set to 0x8C347A2C
sts.l pr,@-r15
mov.l @r14,r3
tst r3,r3
bf loc_8c1A03EA
mov.l @(loc_8c1A0428,pc),r2 ; r2 set to 0x8C347A28
mov.l @r2,r3
mov.l @r3,r1
jsr @r1
nop
lds.l @r15+,pr
mov.l r0,@r14 ; r14 ??? bc r0 is ???
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1A03EA:
mov 0x00,r0 ; r0 set to 0x00
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1A03F2:
mov.l @(loc_8c1A0428,pc),r2 ; r2 set to 0x8C347A28
sts.l pr,@-r15
mov.l @r2,r3
mov.l @(loc_8c1A0424,pc),r0 ; r0 set to 0x8C347A2C
mov.l @(0x08,r3),r1
jsr @r1
mov.l @r0,r4
lds.l @r15+,pr
mov.l @(loc_8c1A0424,pc),r2 ; r2 set to 0x8C347A2C
mov 0x00,r3 ; r3 set to 0x00
rts
mov.l r3,@r2
;-------------------------------------------------------------------------------

loc_8c1A040A:
mov.l @(loc_8c1A042C,pc),r1 ; r1 set to 0x8C1C9B02
rts
mov.w @r1,r0
;-------------------------------------------------------------------------------

loc_8c1A0410:
mov.l @(loc_8c1A0430,pc),r0 ; r0 set to 0x8C1C9AD8
rts
nop
;-------------------------------------------------------------------------------

loc_8c1A0416:
mov.l @(loc_8c1A0428,pc),r3 ; r3 set to 0x8C347A28
rts
mov.l r4,@r3
;-------------------------------------------------------------------------------

loc_8c1A041C:
mov.l @(loc_8c1A0424,pc),r1 ; r1 set to 0x8C347A2C
mov 0x00,r2 ; r2 set to 0x00
rts
mov.l r2,@r1
;-------------------------------------------------------------------------------

#align4
loc_8c1A0424:
#data 0x8C347A2C

#align4
loc_8c1A0428:
#data 0x8C347A28

#align4
loc_8c1A042C:
#data bank1c.loc_8c1c9B02

loc_8c1A0430:
#data bank1c.loc_8c1c9AD8


loc_8c1A0434:
mov.l r14,@-r15
mov 0x08,r7 ; r7 set to 0x08
mov.l r12,@-r15
mov 0x00,r4 ; r4 set to 0x00
sts.l pr,@-r15
mov.l @(loc_8c1A0540,pc),r12 ; r12 set to 0x8C347A30
mov 0x04,r1 ; r1 set to 0x04

loc_8c1A0442:
extu.b r7,r14 ; r14 set to 0x08
mov.w @(loc_8c1A0534,pc),r3 ; r3 set to 0x8C, r3 set to 0x8C
add 0xFF,r14 ; r14 set to 0x07
mov r4,r6 ; r6 set to 0x00
muls.w r3,r14 ; r14 ??
mov r4,r5 ; r5 set to 0x00
sts macl,r14
exts.w r14,r14

loc_8c1A0452:
mov r12,r0 ; r0 set to 0x8C347A30
nop
mov.w @(loc_8c1A0536,pc),r3 ; r3 set to 0x84, r3 set to 0x84, r3 set to 0x84
add 0x78,r0 ; r0 set to 0x8C347AA8
add r14,r0 ; r0 ??? bc r14 is ???
add r0,r3 ; r3 ??? bc r0 is ???, r3 ??? bc r0 is ???, r3 ??? bc r0 is ???
add r5,r3
mov.w r4,@r3
add 0x01,r6 ; r6 set to 0x01
extu.b r6,r2 ; r2 set to 0x01
cmp/ge r1,r2
bf/s loc_8c1A0452
add 0x02,r5 ; r5 set to 0x02
add 0xFF,r7 ; r7 set to 0x07
extu.b r7,r2 ; r2 set to 0x07
cmp/pl r2
bt loc_8c1A0442
mov.l @(loc_8c1A0544,pc),r14 ; r14 set to 0x8C34BB96, r14 set to 0x8C34BB96, r14 set to 0x8C34BB96
bra loc_8c1A047E
nop

loc_8c1A047A:
bsr loc_8c1A0648
nop

loc_8c1A047E:
mov.b @r14,r2
tst r2,r2
bf loc_8c1A047A
lds.l @r15+,pr
mov.l @r15+,r12
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1A048C:
mov.l r14,@-r15
mov 0x08,r7 ; r7 set to 0x08
mov.l r13,@-r15
mov 0x00,r14 ; r14 set to 0x00
mov.l r12,@-r15
mov 0x04,r12 ; r12 set to 0x04
sts.l pr,@-r15
mov.l @(loc_8c1A0540,pc),r5 ; r5 set to 0x8C347A30

loc_8c1A049C:
mov.w @(loc_8c1A0534,pc),r3 ; r3 set to 0x8C, r3 set to 0x8C
extu.b r7,r13 ; r13 set to 0x08
add 0xFF,r13 ; r13 set to 0x07
mov.w @(loc_8c1A0538,pc),r2 ; r2 set to 0x4D8, r2 set to 0x4D8
muls.w r3,r13 ; r13 ??
add r5,r2 ; r2 set to 0x8C347F08, r2 ??? bc r5 is ???
sts macl,r13
exts.w r13,r13
add r13,r2 ; r2 ??? bc r13 is ???
mov.w @r2,r0
or 0x03,r0
mov.w r0,@r2
mov.w @(loc_8c1A0538,pc),r1 ; r1 set to 0x4D8, r1 set to 0x4D8
add r5,r1 ; r1 set to 0x8C347F08, r1 ??? bc r5 is ???
add r13,r1 ; r1 ??? bc r13 is ???
mov r14,r0 ; r0 set to 0x00
nop
mov.w r0,@(0x02,r1)
mov r0,r4 ; r4 set to 0x00
mov r0,r6 ; r6 set to 0x00

loc_8c1A04C4:
mov.w @(loc_8c1A0538,pc),r0 ; r0 set to 0x4D8, r0 set to 0x4D8, r0 set to 0x4D8
mov.w @(loc_8c1A0536,pc),r3 ; r3 set to 0x84, r3 set to 0x84, r3 set to 0x84
add r5,r0 ; r0 set to 0x8C347F08, r0 ??? bc r5 is ???, r0 ??? bc r5 is ???
add r13,r0 ; r0 ??? bc r13 is ???
add r0,r3 ; r3 ??? bc r0 is ???, r3 ??? bc r0 is ???, r3 ??? bc r0 is ???
add r4,r3
mov.w r14,@r3
add 0x01,r6 ; r6 set to 0x01
extu.b r6,r2 ; r2 set to 0x01
cmp/ge r12,r2
bf/s loc_8c1A04C4
add 0x02,r4 ; r4 set to 0x02
add 0xFF,r7 ; r7 set to 0x07
extu.b r7,r2 ; r2 set to 0x07
cmp/pl r2
bt loc_8c1A049C
mov.w @(loc_8c1A053A,pc),r4 ; r4 set to 0x400, r4 set to 0x400, r4 set to 0x400
bsr loc_8c1A1296
nop
lds.l @r15+,pr
mov.l @(loc_8c1A0548,pc),r3 ; r3 set to 0x8C34BB99, r3 set to 0x8C34BB99, r3 set to 0x8C34BB99
mov.b r14,@r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???, r3 ??
mov.l @(loc_8c1A054C,pc),r2 ; r2 set to 0x8C34BB98, r2 set to 0x8C34BB98, r2 set to 0x8C34BB98
mov.b r14,@r2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???, r2 ??
mov.l @(loc_8c1A0550,pc),r1 ; r1 set to 0x8C34BB95, r1 set to 0x8C34BB95, r1 set to 0x8C34BB95
mov.b r14,@r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??
mov.l @r15+,r12 ; r12 ??? bc r15 is ???
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1A0500:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov r5,r10
mov.l r9,@-r15
mov.l @(loc_8c1A0554,pc),r3 ; r3 set to 0x8C34B341
sts.l pr,@-r15
mov.b @r3,r0
mov.l @(loc_8c1A0540,pc),r14 ; r14 set to 0x8C347A30
extu.b r0,r0
cmp/eq 0x0D,r0
bf/s loc_8c1A055C
mov 0x00,r11 ; r11 set to 0x00
mov.l @(loc_8c1A0558,pc),r1 ; r1 set to 0x8C34B34A
mov.b @r1,r5
extu.b r5,r2
tst r2,r2
bt loc_8c1A05E8
extu.b r5,r5
mov.w r5,@r10
mov.w @(loc_8c1A053C,pc),r0 ; r0 set to 0x9B9
add r14,r0 ; r0 set to 0x8C3483E9
bra loc_8c1A0636
mov.l r0,@r4

loc_8c1A0534:
#data 0x008C

loc_8c1A0536:
#data 0x0084

loc_8c1A0538:
#data 0x04D8

loc_8c1A053A:
#data 0x0400

loc_8c1A053C:
#data 0x09B9
#data 0x0000

#align4
loc_8c1A0540:
#data 0x8C347A30

#align4
loc_8c1A0544:
#data 0x8C34BB96

#align4
loc_8c1A0548:
#data 0x8C34BB99

#align4
loc_8c1A054C:
#data 0x8C34BB98

#align4
loc_8c1A0550:
#data 0x8C34BB95

#align4
loc_8c1A0554:
#data 0x8C34B341

#align4
loc_8c1A0558:
#data 0x8C34B34A


loc_8c1A055C:
mov.l @(loc_8c1A0660,pc),r12 ; r12 set to 0x8C34BB97
mov r14,r2
mov.w @(loc_8c1A065A,pc),r3 ; r3 set to 0x8C
add 0x78,r2
mov.b @r12,r13
mov.w @(loc_8c1A065C,pc),r0 ; r0 set to 0x84
extu.b r13,r13
muls.w r3,r13
sts macl,r13
exts.w r13,r13
add r2,r13
mov.w @(r0,r13),r1
tst r1,r1
bt loc_8c1A05EC
mov.w @r13,r0 ; r0 ??? bc r13 is ???
extu.w r0,r0
tst 0x02,r0
bf loc_8c1A05EC
mov.l @(loc_8c1A0664,pc),r9 ; r9 set to 0x8C1B3C8C
bra loc_8c1A05C6
mov r11,r13

loc_8c1A0586:
#data 0x60C0
#data 0x936662E3
#data 0x600C7278
#data 0x64DC203F
#data 0x001A4400
#data 0x302C600F
#data 0x320C925E
#data 0x490B342C
#data 0x60C06441
#data 0x935662E3
#data 0x600C7278
#data 0x61DC203F
#data 0x7D014100
#data 0x600F001A
#data 0x924D302C
#data 0x312C320C
#data 0x21B1

loc_8c1A05C6:
#data 0x60DC
#data 0x890D8804
#data 0x61DCD324
#data 0x41009243
#data 0xD3246030
#data 0x202F600C
#data 0x600F001A
#data 0x011D303C
#data 0x8BCE2118


loc_8c1A05E8:
bra loc_8c1A0632
mov.w r11,@r10

loc_8c1A05EC:
mov.l @(loc_8c1A066C,pc),r3 ; r3 set to 0x8C34BB96
mov.b @r3,r2
tst r2,r2
bf loc_8c1A060E
mov 0x74,r0 ; r0 set to 0x74
mov.w r11,@r10
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
extu.b r0,r0
tst 0x80,r0
bf loc_8c1A062C
mov 0x76,r0 ; r0 set to 0x76
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
extu.b r0,r0
tst 0x02,r0
bf loc_8c1A062C
bra loc_8c1A0636
nop

loc_8c1A060E:
mov r13,r1
add 0x04,r1
mov.l r1,@r4
mov.b @r12,r2
mov.w @(loc_8c1A065A,pc),r1 ; r1 set to 0x8C
extu.b r2,r2
muls.w r1,r2
sts macl,r2
exts.w r2,r2
mov r14,r0
nop
add 0x78,r0
add r0,r2
mov.w @(0x02,r2),r0
mov.w r0,@r10

loc_8c1A062C:
mov.w @r10,r3
tst r3,r3
bf loc_8c1A0636

loc_8c1A0632:
bra loc_8c1A0638
mov 0x00,r0

loc_8c1A0636:
mov 0x01,r0 ; r0 set to 0x01

loc_8c1A0638:
lds.l @r15+,pr
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1A0648:
mov.l @(loc_8c1A0670,pc),r3 ; r3 set to 0x8C34B341
mov.b @r3,r0
extu.b r0,r0
cmp/eq 0x0D,r0
bf loc_8c1A0678
mov.l @(loc_8c1A0674,pc),r2 ; r2 set to 0x8C34B34A
mov 0x00,r1 ; r1 set to 0x00
rts
mov.b r1,@r2
;-------------------------------------------------------------------------------

loc_8c1A065A:
#data 0x008C

loc_8c1A065C:
#data 0x0084
#data 0x0000

#align4
loc_8c1A0660:
#data 0x8C34BB97

#align4
loc_8c1A0664:
#data bank1b.loc_8c1b3C8C
#data 0x8C347B2C

#align4
loc_8c1A066C:
#data 0x8C34BB96

#align4
loc_8c1A0670:
#data 0x8C34B341

#align4
loc_8c1A0674:
#data 0x8C34B34A


loc_8c1A0678:
mov.l @(loc_8c1A0738,pc),r5 ; r5 set to 0x8C34BB96
mov.b @r5,r3
tst r3,r3
bt loc_8c1A06C4
mov.l @(loc_8c1A0740,pc),r4 ; r4 set to 0x8C34BB97
mov.w @(loc_8c1A0732,pc),r2 ; r2 set to 0x8C
mov.b @r4,r3
mov.l @(loc_8c1A073C,pc),r6 ; r6 set to 0x8C347A30
extu.b r3,r3
muls.w r2,r3
mov r6,r1 ; r1 set to 0x8C347A30
add 0x78,r1 ; r1 set to 0x8C347AA8
sts macl,r3
exts.w r3,r3
add r1,r3
mov.w @r3,r0
and 0xF9,r0
mov.w r0,@r3
mov.b @r5,r3
mov r6,r1 ; r1 set to 0x8C347A30
add 0x78,r1 ; r1 set to 0x8C347AA8
add 0xFF,r3
mov.b r3,@r5 ; r5 ??? bc r3 is ???
mov.b @r4,r3
extu.b r3,r3
muls.w r2,r3
sts macl,r3
exts.w r3,r3
add r1,r3
mov.w @r3,r0
or 0x01,r0
mov.w r0,@r3
mov.b @r4,r0
add 0x01,r0
and 0x07,r0
mov.b r0,@r4 ; r4 ??? bc r0 is ???
bra loc_8c1A1296
mov 0x02,r4

loc_8c1A06C4:
rts
nop
;-------------------------------------------------------------------------------

loc_8c1A06C8:
mov.l r14,@-r15
mov 0x24,r0 ; r0 set to 0x24
mov.l r13,@-r15
mov r4,r13
mov.l r12,@-r15
mov r5,r14
mov.l r11,@-r15
extu.b r13,r11
mov.l r10,@-r15
mov r7,r10
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.b r6,@r15
mov.w @(loc_8c1A0734,pc),r3 ; r3 set to 0xFE
mov.b @(r0,r15),r9
mov 0x28,r0 ; r0 set to 0x28
cmp/eq r3,r11
bf/s loc_8c1A06F6
mov.b @(r0,r15),r8
bra loc_8c1A084E
nop

loc_8c1A06F6:
mov.l @(loc_8c1A0744,pc),r1 ; r1 set to 0x8C34B338
bsr loc_8c1A10F2
mov.b r13,@r1 ; r1 ??? bc r13 is ???
exts.b r0,r0
tst r0,r0
bf loc_8c1A0768
mov 0x2C,r0 ; r0 set to 0x2C
mov.l @(loc_8c1A0748,pc),r3 ; r3 set to 0x8C34B339
mov.b r14,@r3 ; r3 ??? bc r14 is ???
mov.b @r15,r2
mov.l @(loc_8c1A074C,pc),r1 ; r1 set to 0x8C34B33A
mov.b r2,@r1 ; r1 ??? bc r2 is ???
mov.l @(loc_8c1A0750,pc),r2 ; r2 set to 0x8C34B33B
mov.b r10,@r2 ; r2 ??? bc r10 is ???
mov.l @(loc_8c1A0754,pc),r3 ; r3 set to 0x8C34B33C
mov.b r9,@r3 ; r3 ??? bc r9 is ???
mov.l @(loc_8c1A0758,pc),r1 ; r1 set to 0x8C34B33D
mov.b r8,@r1 ; r1 ??? bc r8 is ???
mov.b @(r0,r15),r2
mov.l @(loc_8c1A075C,pc),r0 ; r0 set to 0x8C34B33E
mov.b r2,@r0 ; r0 ??? bc r2 is ???
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r15),r3
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8c1A0760,pc),r2 ; r2 set to 0x8C34B33F
mov.b r3,@r2 ; r2 ??? bc r3 is ???
mov.b @(r0,r15),r3
mov.l @(loc_8c1A0764,pc),r0 ; r0 set to 0x8C34B340
bra loc_8c1A084E
mov.b r3,@r0

loc_8c1A0732:
#data 0x008C

loc_8c1A0734:
#data 0x00FE
#data 0x0000

#align4
loc_8c1A0738:
#data 0x8C34BB96

#align4
loc_8c1A073C:
#data 0x8C347A30

#align4
loc_8c1A0740:
#data 0x8C34BB97

#align4
loc_8c1A0744:
#data 0x8C34B338

#align4
loc_8c1A0748:
#data 0x8C34B339

#align4
loc_8c1A074C:
#data 0x8C34B33A

#align4
loc_8c1A0750:
#data 0x8C34B33B

#align4
loc_8c1A0754:
#data 0x8C34B33C

#align4
loc_8c1A0758:
#data 0x8C34B33D

#align4
loc_8c1A075C:
#data 0x8C34B33E

#align4
loc_8c1A0760:
#data 0x8C34B33F

#align4
loc_8c1A0764:
#data 0x8C34B340

#align4
loc_8c1A0768:
#data 0xDC249045
#data 0x62EC03CC
#data 0x3320633C
#data 0x943F8902
#data 0x0CE4B58D

#align4
loc_8c1A077C:
#data 0x000960B3
#data 0x89158800
#data 0x89468801
#data 0x89448802
#data 0x89428803
#data 0x89408804
#data 0x893E8805
#data 0x89288806
#data 0x89168807
#data 0x8938880A
#data 0x891E880B
#data 0x892D880D
#data 0x0009A04F

#align4
loc_8c1A07B0:
#data 0x6793E030
#data 0xE03002FC
#data 0x2F2666A3
#data 0x2F3603FC
#data 0x84FC2F86
#data 0xB0726503
#data 0xA02464E3
#data 0x7F0C

loc_8c1A07CE:
#data 0xE305
#data 0x02CCE076
#data 0x0C24223B
#data 0xE410B55D
#data 0xE400B514
#data 0xA031D207
#data 0x22D0

loc_8c1A07E6:
#data 0xD307
#data 0x430BE072
#data 0x04CC

loc_8c1A07EE:
#data 0xB038
#data 0xA0100009
#data 0x09380009
#data 0x00000800
#data 0x8C347A30
#data 0x8C34B341

#align4
loc_8c1A0804:
#data bank1b.loc_8c1b7412

loc_8c1A0808:
#data 0x0009B02B
#data 0xE400D348
#data 0xD2482340
#data 0x2240

loc_8c1A0816:
#data 0xD148
#data 0xD34821D0
#data 0xD04823E0
#data 0x202062F0
#data 0xD147E02C
#data 0xD34721A0
#data 0xD2472390
#data 0x01FC2280
#data 0x2010D046
#data 0x03FCE030
#data 0xD145E034
#data 0x03FC2130
#data 0x2030D044

#align4
loc_8c1A0848:
#data 0x926FD144
#data 0x2120


loc_8c1A084E:
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

loc_8c1A0862:
#data 0x2FE6
#data 0x4F22E076
#data 0x00ECDE3D
#data 0xC802600C
#data 0xE3058B1A
#data 0x02ECE076
#data 0x0E24223B
#data 0xE410B50B
#data 0xE076E302
#data 0x223B02EC
#data 0xB5040E24
#data 0x934EE410
#data 0x02ECE076
#data 0x0E242239
#data 0x01EC9248
#data 0x0E142129
#data 0xE4104F26
#data 0x6EF6A4F7

#align4
loc_8c1A08A8:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1A08AE:
#data 0x2FE6
#data 0x2FD6E028
#data 0x2FC66D43
#data 0x2FB66C63
#data 0x2F962FA6
#data 0x2F866953
#data 0x7FFC4F22
#data 0xD21B2F70
#data 0xE02C0AFC
#data 0xDB1A6320
#data 0x8F452338
#data 0x60B008FC
#data 0x600C63DC
#data 0x89003030
#data 0x2BD0

loc_8c1A08E6:
#data 0xD217
#data 0x632061CC
#data 0x3310633C
#data 0x2F868909
#data 0x2FA6E02C
#data 0x07FC65C3
#data 0x660384F8
#data 0x6493B07E
#data 0x7F08

loc_8c1A0906:
#data 0xE024
#data 0xD20E2BD0
#data 0x63F022C0
#data 0x2130D10D
#data 0xD00D03FC
#data 0xD20D2030
#data 0xD30D22A0
#data 0x91032380
#data 0x2010D00D
#data 0x0009A060
#data 0x00FB00FE
#data 0x8C34B34B
#data 0x8C34B34A
#data 0x8C34B341
#data 0x8C34B342
#data 0x8C34B343
#data 0x8C34B344
#data 0x8C34B345
#data 0x8C34B346
#data 0x8C34B347
#data 0x8C34B348
#data 0x8C34B349
#data 0x8C34B338
#data 0x8C347A30

#align4
loc_8c1A0964:
#data 0xE305DE53
#data 0x02ECE076
#data 0x0E24223B
#data 0xE410B491
#data 0x2BD0E304
#data 0x2358659C
#data 0xE4098D01
#data 0xE40A

loc_8c1A0982:
#data 0xE018
#data 0x88102059
#data 0xE2208F01
#data 0x7401

loc_8c1A098E:
#data 0x2528
#data 0x74018900

#align4
loc_8c1A0994:
#data 0xD248E02C
#data 0x224165C3
#data 0x2FA62F86
#data 0x84F807FC
#data 0xB02B6603
#data 0xE0766493
#data 0x600C00EC
#data 0x8D07C802
#data 0x93797F08
#data 0x02ECE076
#data 0x0E242239
#data 0xE410B469

#align4
loc_8c1A09C4:
#data 0xE0769373
#data 0x223902EC
#data 0x926F0E24
#data 0x212901EC
#data 0x7F040E14
#data 0xE4104F26
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6A455

#align4
loc_8c1A09EC:
#data 0x4F267F04
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1A0A00:
#data 0x7FF84F22
#data 0x00096063
#data 0x80F4E34A
#data 0xD6292F70
#data 0x6330336C
#data 0x615CD729
#data 0x6013E200
#data 0x88020009
#data 0x27208F17
#data 0xE04AE37F
#data 0x2239026C
#data 0xE2400624
#data 0x212B016C
#data 0xE0100614
#data 0x00FCE14B
#data 0x2100316C
#data 0x016CE04C
#data 0x06142139
#data 0x212B016C
#data 0xA01B0614
#data 0x0009

loc_8c1A0A52:
#data 0x8804
#data 0x60138903
#data 0x88070009
#data 0x8B30

loc_8c1A0A5E:
#data 0xE37F
#data 0x026CE04A
#data 0x06242239
#data 0x016C9223
#data 0x06142129
#data 0xE14BE010
#data 0x316C00FC
#data 0xE04C2100
#data 0x2139016C
#data 0x016C0614
#data 0x06142129

#align4
loc_8c1A0A88:
#data 0x630384FC
#data 0x0634E04D
#data 0x6303E04E
#data 0x026C7371
#data 0x06242239
#data 0x64636070
#data 0xC9FE744E
#data 0x60702700
#data 0xCB02A021
#data 0x00FB00FD
#data 0x00BF00FE
#data 0x8C347A30
#data 0x8C34B354
#data 0x8C34BBA2

#align4
loc_8c1A0AC0:
#data 0x6463E04A
#data 0x73756303
#data 0x026C744A
#data 0x06242239
#data 0x6203E04C
#data 0x016C7234
#data 0x0614212B
#data 0x016CE04E
#data 0x0614212B
#data 0xCB016070
#data 0x60702700
#data 0xC9FD

loc_8c1A0AEE:
#data 0x2700
#data 0xB00A84F4
#data 0x945A6503
#data 0x0009B3CD
#data 0x7F0863F0
#data 0xD22B4F26
#data 0x000B2230
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1A0B0A:
#data 0x635C
#data 0xE27FD729
#data 0x3327D629
#data 0x27428D0B
#data 0x24507401
#data 0xCB20846E
#data 0x6372806E
#data 0x21296130
#data 0xA0042310
#data 0x0009

loc_8c1A0B2E:
#data 0x6372
#data 0xCB806030
#data 0x2300

loc_8c1A0B36:
#data 0x6363
#data 0x60307315
#data 0x2300C9E0
#data 0xC9FC846E
#data 0xD21D806E
#data 0x6322D11D
#data 0x2132000B
;-------------------------------------------------------------------------------

#align4
loc_8c1A0B50:
#data 0x4F222FE6
#data 0x60E0DE1B
#data 0xC804600C
#data 0xD31A8924
#data 0x600C6030
#data 0x8B1BC808
#data 0x6020D218
#data 0xC880600C
#data 0xD30F8916
#data 0x6230D012
#data 0x622C6102
#data 0x321C4200
#data 0x6312D10E
#data 0x8B0F3322
#data 0xD31160E0
#data 0x430BC9FB
#data 0x60E02E00
#data 0x2E00C9F0
#data 0x6030D30E
#data 0x2300C9DC

#align4
loc_8c1A0BA0:
#data 0xD107D306
#data 0x21226232

#align4
loc_8c1A0BA8:
#data 0x000B4F26
#data 0x00806EF6
#data 0x8C34B346
#data 0x8C34BB9C
#data 0x8C34B288
#data 0x8C34B2CC
#data 0x8C34BB38
#data 0x8C34B29D
#data 0x8C34BB92
#data 0x8C347AA4

#align4
loc_8c1A0BD0:
#data bank1b.loc_8c1b3DB0
#data 0x8C34B296

#align4
loc_8c1A0BD8:
#data 0xD441D342
#data 0x655C6530
#data 0x89072558
#data 0x00096053
#data 0x89038801
#data 0x00096053
#data 0x8B1D8802

#align4
loc_8c1A0BF4:
#data 0xE17FD23C
#data 0x633C6320
#data 0x89173317
#data 0x6030D33A
#data 0xC808600C
#data 0x60408B12
#data 0xC820600C
#data 0x60408B15
#data 0x2400CB20
#data 0x6040D435
#data 0x2400CB80
#data 0x6322D234
#data 0xC97F6030
#data 0x94562300
#data 0x0009A333

#align4
loc_8c1A0C30:
#data 0xC9DC6040
#data 0xD2302400
#data 0x6322D130
#data 0x2132

loc_8c1A0C3E:
#data 0x000B
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1A0C42:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l @(loc_8c1A0D04,pc),r14 ; r14 set to 0x8C34B288
sts.l pr,@-r15
mov r14,r4 ; r4 set to 0x8C34B288
mov.l @(loc_8c1A0D00,pc),r5 ; r5 set to 0x8C347A30
add 0x15,r4 ; r4 set to 0x8C34B29D
mov.b @r4,r0
extu.b r0,r0
tst 0x10,r0
bf loc_8c1A0CAA
mov.b @(0x0E,r14),r0
and 0xFC,r0
mov.b r0,@(0x0E,r14)
mov r14,r3 ; r3 set to 0x8C34B288
add 0x15,r3 ; r3 set to 0x8C34B29D
mov.b @r3,r0
and 0xE0,r0
mov.b r0,@r3 ; r3 ??? bc r0 is ???
mov 0x74,r0 ; r0 set to 0x74
mov.b @(r0,r5),r0 ; r0 ??
extu.b r0,r0
tst 0x80,r0
bt loc_8c1A0C82
lds.l @r15+,pr
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
bra loc_8c1A0BD8
mov.l @r15+,r14

loc_8c1A0C82:
mov.b @(0x0E,r14),r0
extu.b r0,r0
tst 0x20,r0
bt loc_8c1A0D3C
mov.b @(0x0E,r14),r0
and 0xDF,r0
mov.b r0,@(0x0E,r14)
mov.l @(loc_8c1A0CF4,pc),r2 ; r2 set to 0x8C34BB9C
mov.l @r2,r3
mov.b @r3,r0
or 0x80,r0
mov.b r0,@r3
mov.w @(loc_8c1A0CDA,pc),r4 ; r4 set to 0x80
bsr loc_8c1A1296
nop
mov.l @(loc_8c1A0CF0,pc),r4 ; r4 set to 0x8C34BB9B
mov.b @r4,r0
and 0x7F,r0
bra loc_8c1A0D3C
mov.b r0,@r4

loc_8c1A0CAA:
mov.l @(loc_8c1A0D08,pc),r3 ; r3 set to 0x8C34BB9A
mov r5,r1
mov.w @(loc_8c1A0CDC,pc),r2 ; r2 set to 0x8C
add 0x78,r1
mov.b @r3,r6
extu.b r6,r6
muls.w r2,r6
sts macl,r6
exts.w r6,r6
add r1,r6
mov.w @(0x02,r6),r0
mov r6,r12
mov r0,r13
mov.b @r4,r0
and 0xFB,r0
mov.b r0,@r4
mov 0x28,r0 ; r0 set to 0x28
extu.w r13,r1
cmp/gt r0,r1
bt/s loc_8c1A0D2C
add 0x04,r12
mov.l @(loc_8c1A0D0C,pc),r11 ; r11 set to 0x8C198E04
bra loc_8c1A0D1A
nop

loc_8c1A0CDA:
#data 0x0080

loc_8c1A0CDC:
#data 0x008C
#data 0x0000
#data 0x8C34B296
#data 0x8C34B341
#data 0x8C34B345
#data 0x8C34BB92

#align4
loc_8c1A0CF0:
#data 0x8C34BB9B

#align4
loc_8c1A0CF4:
#data 0x8C34BB9C
#data 0x8C34B2CC
#data 0x8C34BB38

#align4
loc_8c1A0D00:
#data 0x8C347A30

#align4
loc_8c1A0D04:
#data 0x8C34B288

#align4
loc_8c1A0D08:
#data 0x8C34BB9A

#align4
loc_8c1A0D0C:
#data bank19.loc_8c198E04


loc_8c1A0D10:
jsr @r11
mov.b @r12+,r4
exts.b r0,r0
tst r0,r0
bt loc_8c1A0D2C

loc_8c1A0D1A:
extu.w r13,r3
tst r3,r3
bf/s loc_8c1A0D10
add 0xFF,r13
mov r14,r3
add 0x15,r3
mov.b @r3,r0
bra loc_8c1A0D3A
or 0x02,r0

loc_8c1A0D2C:
mov.b @(0x0E,r14),r0
and 0xFC,r0
mov.b r0,@(0x0E,r14)
mov r14,r3
add 0x15,r3
mov.b @r3,r0
and 0xE0,r0

loc_8c1A0D3A:
mov.b r0,@r3

loc_8c1A0D3C:
lds.l @r15+,pr
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1A0D48:
mov.l @(loc_8c1A0E28,pc),r3 ; r3 set to 0x8C34B341
mov.l @(loc_8c1A0E24,pc),r5 ; r5 set to 0x8C347A30
mov.b @r3,r0
extu.b r0,r0
cmp/eq 0x0D,r0
bf loc_8c1A0D64
mov.l @(loc_8c1A0E2C,pc),r2 ; r2 set to 0x8C34B34B
mov.b @r2,r1
tst r1,r1
bf loc_8c1A0D70
mov.w @(loc_8c1A0E1A,pc),r1 ; r1 set to 0x939
add r5,r1 ; r1 set to 0x8C348369
bra loc_8c1A0D8C
mov.l r1,@r4

loc_8c1A0D64:
mov.l @(loc_8c1A0E30,pc),r2 ; r2 set to 0x8C34BB95
mov 0x08,r1 ; r1 set to 0x08
mov.b @r2,r3
extu.b r3,r3
cmp/ge r1,r3
bf loc_8c1A0D74

loc_8c1A0D70:
rts
mov 0x00,r0
;-------------------------------------------------------------------------------

loc_8c1A0D74:
mov.l @(loc_8c1A0E34,pc),r3 ; r3 set to 0x8C34BB99
mov.w @(loc_8c1A0E1C,pc),r1 ; r1 set to 0x8C
mov.b @r3,r2
mov.w @(loc_8c1A0E1E,pc),r0 ; r0 set to 0x4D8
extu.b r2,r2
muls.w r1,r2
add r5,r0 ; r0 ??? bc r5 is ???
sts macl,r2
exts.w r2,r2
add r0,r2
add 0x04,r2
mov.l r2,@r4

loc_8c1A0D8C:
mov.w @(loc_8c1A0E20,pc),r0 ; r0 set to 0x80, r0 set to 0x80
rts
nop
;-------------------------------------------------------------------------------

loc_8c1A0D92:
extu.w r4,r3
tst r3,r3
bt loc_8c1A0E16
mov.l @(loc_8c1A0E28,pc),r2 ; r2 set to 0x8C34B341
mov.b @r2,r0
extu.b r0,r0
cmp/eq 0x0D,r0
bf loc_8c1A0DA8
mov.l @(loc_8c1A0E2C,pc),r1 ; r1 set to 0x8C34B34B
rts
mov.b r4,@r1
;-------------------------------------------------------------------------------

loc_8c1A0DA8:
mov.l @(loc_8c1A0E34,pc),r5 ; r5 set to 0x8C34BB99
mov.w @(loc_8c1A0E1C,pc),r2 ; r2 set to 0x8C
mov.b @r5,r3
mov.w @(loc_8c1A0E1E,pc),r1 ; r1 set to 0x4D8
extu.b r3,r3
mov.l @(loc_8c1A0E24,pc),r6 ; r6 set to 0x8C347A30
muls.w r2,r3
add r6,r1 ; r1 set to 0x8C347F08
sts macl,r3
exts.w r3,r3
add r1,r3
mov r4,r0
nop
mov.w r0,@(0x02,r3)
mov.b @r5,r3
mov.w @(loc_8c1A0E1E,pc),r1 ; r1 set to 0x4D8
extu.b r3,r3
mov.w @(loc_8c1A0E22,pc),r0 ; r0 set to 0x84
muls.w r2,r3
add r6,r1 ; r1 set to 0x8C347F08
mov.l @(loc_8c1A0E30,pc),r4 ; r4 set to 0x8C34BB95
sts macl,r3
exts.w r3,r3
add r1,r3
mov.w @(r0,r3),r0 ; r0 ??? bc r3 is ???
tst r0,r0
bf loc_8c1A0E08
mov.b @r4,r1 ; r1 ??
add 0x01,r1
mov.b r1,@r4 ; r4 ??? bc r1 is ???
mov.b @r5,r3
mov.w @(loc_8c1A0E1E,pc),r1 ; r1 set to 0x4D8
extu.b r3,r3
muls.w r2,r3
add r6,r1 ; r1 set to 0x8C347F08
sts macl,r3
exts.w r3,r3
add r1,r3
mov.l @(loc_8c1A0E38,pc),r1 ; r1 set to 0xFFFE
mov.w @r3,r0
and r1,r0
mov.w r0,@r3
mov.b @r5,r0
add 0x01,r0
and 0x07,r0
mov.b r0,@r5 ; r5 ??? bc r0 is ???
bra loc_8c1A1296
mov 0x01,r4

#align4
loc_8c1A0E08:
#data 0x70016050
#data 0x2500C907
#data 0x73016340
#data 0x2430


loc_8c1A0E16:
rts
nop
;-------------------------------------------------------------------------------

loc_8c1A0E1A:
#data 0x0939

loc_8c1A0E1C:
#data 0x008C

loc_8c1A0E1E:
#data 0x04D8

loc_8c1A0E20:
#data 0x0080

loc_8c1A0E22:
#data 0x0084

#align4
loc_8c1A0E24:
#data 0x8C347A30

#align4
loc_8c1A0E28:
#data 0x8C34B341

#align4
loc_8c1A0E2C:
#data 0x8C34B34B

#align4
loc_8c1A0E30:
#data 0x8C34BB95

#align4
loc_8c1A0E34:
#data 0x8C34BB99

#align4
loc_8c1A0E38:
#data 0x0000FFFE
#data 0x6210D132
#data 0x8B032228
#data 0xD231905C
#data 0x2422000B
;-------------------------------------------------------------------------------
#data 0x000BE000
#data 0xD32D0009
#data 0x2340000B
;-------------------------------------------------------------------------------
#data 0x6620D22D
#data 0x2338636C
#data 0x666C8905
#data 0xD12B2561
#data 0x000B2412
#data 0xE100E001
#data 0x60132511
#data 0x000B0009
#data 0xD2250009
#data 0x000BE300
#data 0x2230
;-------------------------------------------------------------------------------

loc_8c1A0E82:
rts
nop
;-------------------------------------------------------------------------------

loc_8c1A0E86:
rts
mov r4,r0
;-------------------------------------------------------------------------------

loc_8c1A0E8A:
mov.l r14,@-r15
extu.b r5,r5
sts.l pr,@-r15
tst r5,r5
bf loc_8c1A0E9C
bsr loc_8c1A0FDA
nop
bra loc_8c1A0EEA
nop

loc_8c1A0E9C:
#data 0xE500

loc_8c1A0E9E:
#data 0xDE1E
#data 0x932E615C
#data 0x66E04100
#data 0x666C922C
#data 0x263FD71B
#data 0x061A327C
#data 0x362C666F
#data 0x326C9225
#data 0x6011312C
#data 0x8F162008
#data 0x911E7501
#data 0x75FF655C
#data 0x4500316C
#data 0x2541351C
#data 0x6240D412
#data 0x8B062228
#data 0x6010D111
#data 0xC802600C
#data 0xB01F8B01
#data 0x0009


loc_8c1A0EEA:
lds.l @r15+,pr
mov 0x01,r0 ; r0 set to 0x01
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1A0EF2:
#data 0x605C
#data 0x8BD28804
#data 0x4F26E000
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x008C0080
#data 0x008404D8
#data 0x8C34B34A
#data 0x8C3483E9
#data 0x8C34B34B
#data 0x8C348369
#data 0x8C34BB99
#data 0x8C347A30
#data 0x8C34BB95
#data 0x8C34BB93


loc_8c1A0F28:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l @(loc_8c1A1068,pc),r13 ; r13 set to 0x8C34BB98
mov.w @(loc_8c1A1058,pc),r3 ; r3 set to 0x8C
mov.b @r13,r12
mov.w @(loc_8c1A105A,pc),r2 ; r2 set to 0x4D8
extu.b r12,r12
mov.l @(loc_8c1A106C,pc),r14 ; r14 set to 0x8C347A30
muls.w r3,r12
sts.l pr,@-r15
mov.w @(loc_8c1A105C,pc),r0 ; r0 set to 0x84
add r14,r2 ; r2 set to 0x8C347F08
sts macl,r12
exts.w r12,r12
add r2,r12
mov.w @(r0,r12),r1
tst r1,r1
bt loc_8c1A0FB6
bsr loc_8c1A0FDA
mov.w @(r0,r12),r4
mov.b @r13,r4
mov.w @(loc_8c1A1058,pc),r3 ; r3 set to 0x8C
extu.b r4,r4
mov.w @(loc_8c1A105A,pc),r2 ; r2 set to 0x4D8
muls.w r3,r4
mov.w @(loc_8c1A105E,pc),r0 ; r0 set to 0x86
add r14,r2 ; r2 set to 0x8C347F08
sts macl,r4
exts.w r4,r4
add r2,r4
mov.w @(r0,r4),r1
add 0xFE,r0 ; r0 set to 0x84
mov.w r1,@(r0,r4)
mov.b @r13,r4
add 0x04,r0 ; r0 set to 0x88
mov.w @(loc_8c1A105A,pc),r2 ; r2 set to 0x4D8
extu.b r4,r4
muls.w r3,r4
add r14,r2 ; r2 set to 0x8C347F08
sts macl,r4
exts.w r4,r4
add r2,r4
mov.w @(r0,r4),r1
add 0xFE,r0 ; r0 set to 0x86
mov.w r1,@(r0,r4)
mov.b @r13,r4
add 0x04,r0 ; r0 set to 0x8A
mov.w @(loc_8c1A105A,pc),r2 ; r2 set to 0x4D8
extu.b r4,r4
muls.w r3,r4
add r14,r2 ; r2 set to 0x8C347F08
sts macl,r4
exts.w r4,r4
add r2,r4
mov.w @(r0,r4),r1
add 0xFE,r0 ; r0 set to 0x88
mov.w r1,@(r0,r4)
mov.b @r13,r2 ; r2 ??
mov 0x00,r0 ; r0 set to 0x00
mov.w @(loc_8c1A105A,pc),r1 ; r1 set to 0x4D8
extu.b r2,r2
muls.w r3,r2
add r14,r1 ; r1 set to 0x8C347F08
sts macl,r2
exts.w r2,r2
add r1,r2
mov.w @(loc_8c1A1060,pc),r1 ; r1 set to 0x8A
add r2,r1 ; r1 ??? bc r2 is ???
bra loc_8c1A0FD0
mov.w r0,@r1

loc_8c1A0FB6:
mov.w @(0x02,r12),r0
tst r0,r0
bt loc_8c1A0FD0
mov.l @(loc_8c1A1070,pc),r2 ; r2 set to 0xFFFE
mov.w @r12,r1
and r2,r1
mov.w r1,@r12
lds.l @r15+,pr
mov 0x01,r4 ; r4 set to 0x01
mov.l @r15+,r12
mov.l @r15+,r13
bra loc_8c1A1296
mov.l @r15+,r14

loc_8c1A0FD0:
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1A0FDA:
#data 0xD526
#data 0x600C6050
#data 0x8B0BC802
#data 0x624D963D
#data 0x8B003266
#data 0x6463

loc_8c1A0FEE:
#data 0xD222
#data 0x60502241
#data 0xCB029436
#data 0x2500A14D

#align4
loc_8c1A0FFC:
#data 0x0009000B
;-------------------------------------------------------------------------------

loc_8c1A1000:
mov.l @(loc_8c1A107C,pc),r2 ; r2 set to 0x8C34B349
mov.b @r2,r3
tst r3,r3
bf loc_8c1A100E
mov.l @(loc_8c1A1080,pc),r1 ; r1 set to 0x8C1B3C8C
jmp @r1
nop

loc_8c1A100E:
mov.l @(loc_8c1A1084,pc),r6 ; r6 set to 0x8C34BB9A
mov 0x00,r5 ; r5 set to 0x00
mov.l @(loc_8c1A106C,pc),r7 ; r7 set to 0x8C347A30

loc_8c1A1014:
mov.b @r6,r0
mov r7,r2 ; r2 set to 0x8C347A30
mov.w @(loc_8c1A1058,pc),r3 ; r3 set to 0x8C
add 0x78,r2 ; r2 set to 0x8C347AA8
extu.b r0,r0
muls.w r3,r0
extu.b r5,r1 ; r1 set to 0x00
shll r1 ; r1 set to 0x00
sts macl,r0
exts.w r0,r0
add r2,r0
mov.w @(loc_8c1A105C,pc),r2 ; r2 set to 0x84
add r0,r2 ; r2 ??? bc r0 is ???
add r2,r1 ; r1 ??? bc r2 is ???
mov.w @r1,r0
tst r0,r0
bf/s loc_8c1A1088
add 0x01,r5 ; r5 set to 0x01
mov.b @r6,r0
mov r7,r2 ; r2 set to 0x8C347A30
extu.b r5,r5 ; r5 set to 0x01
mov.w @(loc_8c1A105C,pc),r1 ; r1 set to 0x84
extu.b r0,r0
muls.w r3,r0
add 0x78,r2 ; r2 set to 0x8C347AA8
add 0xFF,r5 ; r5 set to 0x00
shll r5 ; r5 set to 0x00
sts macl,r0
exts.w r0,r0
add r2,r0
add r0,r1 ; r1 ??? bc r0 is ???
add r1,r5 ; r5 ??? bc r1 is ???
bra loc_8c1A108E
mov.w r4,@r5

loc_8c1A1058:
#data 0x008C

loc_8c1A105A:
#data 0x04D8

loc_8c1A105C:
#data 0x0084

loc_8c1A105E:
#data 0x0086

loc_8c1A1060:
#data 0x008A
#data 0x01F4
#data 0x00000100

#align4
loc_8c1A1068:
#data 0x8C34BB98

#align4
loc_8c1A106C:
#data 0x8C347A30

#align4
loc_8c1A1070:
#data 0x0000FFFE
#data 0x8C34BB93
#data 0x8C34B356

#align4
loc_8c1A107C:
#data 0x8C34B349

#align4
loc_8c1A1080:
#data bank1b.loc_8c1b3C8C

loc_8c1A1084:
#data 0x8C34BB9A

#align4
loc_8c1A1088:
#data 0x8804605C
#data 0x8BC2

loc_8c1A108E:
#data 0xD331
#data 0x600C6030
#data 0x8B028808
#data 0x9157D22F
#data 0x2210

loc_8c1A109E:
#data 0x000B
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1A10A2:
sts.l pr,@-r15
exts.b r4,r4
tst r4,r4
bt loc_8c1A10D0
mov.l @(loc_8c1A115C,pc),r3 ; r3 set to 0x8C34BB95
mov.b @r3,r0
tst r0,r0
bt loc_8c1A10BE
mov.l @(loc_8c1A1164,pc),r2 ; r2 set to 0x8C1B3EEC
mov.l @(loc_8c1A1160,pc),r4 ; r4 set to 0x8C34B34C
jsr @r2
mov 0x0A,r5 ; r5 set to 0x0A
bra loc_8c1A10EA
nop

loc_8c1A10BE:
mov.l @(loc_8c1A1168,pc),r1 ; r1 set to 0x8C1B3F0C
mov.l @(loc_8c1A1160,pc),r2 ; r2 set to 0x8C34B34C
jsr @r1
mov.l @r2,r4
exts.b r0,r0
tst r0,r0
bf loc_8c1A10E4
bra loc_8c1A10EA
nop

loc_8c1A10D0:
mov.l @(loc_8c1A116C,pc),r3 ; r3 set to 0x8C34B338
mov.b @r3,r0
extu.b r0,r0
cmp/eq 0x0B,r0
bt loc_8c1A10EA
bsr loc_8c1A10F2
nop
exts.b r0,r0
tst r0,r0
bt loc_8c1A10EA

loc_8c1A10E4:
lds.l @r15+,pr
rts
mov 0x01,r0
;-------------------------------------------------------------------------------

loc_8c1A10EA:
mov 0x00,r0 ; r0 set to 0x00
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c1A10F2:
mov.l @(loc_8c1A1170,pc),r2 ; r2 set to 0x8C34B35A
sts.l pr,@-r15
mov.w @r2,r3
tst r3,r3
bf loc_8c1A1118
mov.l @(loc_8c1A1174,pc),r1 ; r1 set to 0x8C347A80
mov.b @r1,r3
tst r3,r3
bf loc_8c1A1118
mov.l @(loc_8c1A1168,pc),r2 ; r2 set to 0x8C1B3F0C
mov.l @(loc_8c1A1178,pc),r3 ; r3 set to 0x8C34B350
jsr @r2
mov.l @r3,r4
exts.b r0,r0
tst r0,r0
bt loc_8c1A1118
lds.l @r15+,pr
rts
mov 0x01,r0
;-------------------------------------------------------------------------------

loc_8c1A1118:
mov 0x00,r0 ; r0 set to 0x00
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

#align4
loc_8c1A1120:
#data 0x4F22D216
#data 0x23386320
#data 0xD6118B54
#data 0x6561920F
#data 0x3520655D
#data 0x970B8B24

#align4
loc_8c1A1138:
#data 0x89024710
#data 0x35209207
#data 0x89FA

loc_8c1A1142:
#data 0x2778
#data 0x4F268B1C
#data 0xE000000B
;-------------------------------------------------------------------------------
#data 0x07D000FF
#data 0x000003E8
#data 0x8C34BB96
#data 0x8C34BBA0

#align4
loc_8c1A115C:
#data 0x8C34BB95

#align4
loc_8c1A1160:
#data 0x8C34B34C

#align4
loc_8c1A1164:
#data bank1b.loc_8c1b3EEC

loc_8c1A1168:
#data bank1b.loc_8c1b3F0C

loc_8c1A116C:
#data 0x8C34B338

#align4
loc_8c1A1170:
#data 0x8C34B35A

#align4
loc_8c1A1174:
#data 0x8C347A80

#align4
loc_8c1A1178:
#data 0x8C34B350
#data 0x8C34BBA3

#align4
loc_8c1A1180:
#data 0x6352D54A
#data 0x62522340
#data 0x25227201
#data 0x6372D748
#data 0x8B013236
#data 0x2502D047

#align4
loc_8c1A1198:
#data 0xE0506361
#data 0x26317301
#data 0x025CD545
#data 0x8B152228
#data 0x6253D444
#data 0x63427251
#data 0x22106130
#data 0x73016342
#data 0x24326133
#data 0x31266272
#data 0xD33C8B01
#data 0x2432

loc_8c1A11C6:
#data 0x6261
#data 0x72FFE301
#data 0x05342621
#data 0xE404B061

#align4
loc_8c1A11D4:
#data 0x4F26E001
#data 0x0009000B
;-------------------------------------------------------------------------------

loc_8c1A11DC:
rts
mov 0x01,r0
;-------------------------------------------------------------------------------

loc_8c1A11E0:
mov.l @(loc_8c1A12C0,pc),r3 ; r3 set to 0x8C347AA4
mov.b @r3,r0
mov 0x01,r4 ; r4 set to 0x01
extu.b r0,r0
and r0,r4 ; r4 ??? bc r0 is ???
tst r4,r4
movt r4
rts
mov r4,r0
;-------------------------------------------------------------------------------

loc_8c1A11F2:
rts
mov 0x01,r0
;-------------------------------------------------------------------------------
#data 0xD332
#data 0xE4026030
#data 0x2409600C
#data 0x04292448
#data 0x6043000B
;-------------------------------------------------------------------------------

loc_8c1A1208:
exts.b r4,r4
mov.l @(loc_8c1A12B8,pc),r5 ; r5 set to 0x8C347A30
tst r4,r4
bf loc_8c1A121A
mov 0x10,r3 ; r3 set to 0x10
mov 0x75,r0 ; r0 set to 0x75
mov.b @(r0,r5),r2
bra loc_8c1A1224
or r3,r2

loc_8c1A121A:
mov 0x75,r0 ; r0 set to 0x75
mov r0,r3 ; r3 set to 0x75
add 0x7A,r3 ; r3 set to 0xEF
mov.b @(r0,r5),r2
and r3,r2

loc_8c1A1224:
mov.b r2,@(r0,r5)
bra loc_8c1A1296
mov 0x20,r4

loc_8c1A122A:
exts.b r4,r4
mov.l @(loc_8c1A12B8,pc),r5 ; r5 set to 0x8C347A30
tst r4,r4
bf loc_8c1A123E
mov 0x75,r0 ; r0 set to 0x75
mov r0,r3 ; r3 set to 0x75
add 0x0B,r3 ; r3 set to 0x80
mov.b @(r0,r5),r2
bra loc_8c1A1246
or r3,r2

loc_8c1A123E:
mov 0x7F,r3 ; r3 set to 0x7F
mov 0x75,r0 ; r0 set to 0x75
mov.b @(r0,r5),r2
and r3,r2

loc_8c1A1246:
mov.b r2,@(r0,r5)
bra loc_8c1A1296
mov 0x20,r4

loc_8c1A124C:
exts.b r4,r4
mov.l @(loc_8c1A12B8,pc),r5 ; r5 set to 0x8C347A30
tst r4,r4
bf loc_8c1A125E
mov 0x20,r3 ; r3 set to 0x20
mov 0x75,r0 ; r0 set to 0x75
mov.b @(r0,r5),r2
bra loc_8c1A1268
or r3,r2

loc_8c1A125E:
mov 0x75,r0 ; r0 set to 0x75
mov r0,r3 ; r3 set to 0x75
add 0x6A,r3 ; r3 set to 0xDF
mov.b @(r0,r5),r2
and r3,r2

loc_8c1A1268:
mov.b r2,@(r0,r5)
bra loc_8c1A1296
mov 0x20,r4

loc_8c1A126E:
exts.b r4,r4
mov.l @(loc_8c1A12B8,pc),r5 ; r5 set to 0x8C347A30
tst r4,r4
bf loc_8c1A1280
mov 0x40,r3 ; r3 set to 0x40
mov 0x75,r0 ; r0 set to 0x75
mov.b @(r0,r5),r2
bra loc_8c1A128A
or r3,r2

loc_8c1A1280:
mov 0x75,r0 ; r0 set to 0x75
mov r0,r3 ; r3 set to 0x75
add 0x4A,r3 ; r3 set to 0xBF
mov.b @(r0,r5),r2
and r3,r2

loc_8c1A128A:
mov.b r2,@(r0,r5)
bra loc_8c1A1296
mov 0x20,r4

loc_8c1A1290:
exts.b r4,r4
rts
tst r4,r4
;-------------------------------------------------------------------------------

loc_8c1A1296:
#data 0xD20B
#data 0x23386320
#data 0xD20A8903
#data 0x23386320
#data 0x8912

loc_8c1A12A6:
#data 0x000B
#data 0x00000009
#data 0x8C34BB34
#data 0x8C34BB2C
#data 0x8C34B35C

#align4
loc_8c1A12B8:
#data 0x8C347A30
#data 0x8C34BB30

#align4
loc_8c1A12C0:
#data 0x8C347AA4
#data 0x8C34BBA1
#data 0x8C34BBA3

#align4
loc_8c1A12CC:
#data 0x664D976E
#data 0xD5374F22
#data 0x8B0E3677
#data 0x6463E3F8
#data 0x443CE044
#data 0x224B025C
#data 0xE0420524
#data 0x035C644C
#data 0x2438633C
#data 0xA00B8B0E
#data 0x0009

loc_8c1A12F6:
#data 0x890B
#data 0x035CE043
#data 0x0534234B
#data 0x644CE041
#data 0x622C025C
#data 0x8B012428

#align4
loc_8c1A130C:
#data 0x0009B003

#align4
loc_8c1A1310:
#data 0x000B4F26
#data 0xE001
;-------------------------------------------------------------------------------

loc_8c1A1316:
#data 0xD327
#data 0x0009432B


loc_8c1A131C:
rts
nop
;-------------------------------------------------------------------------------

loc_8c1A1320:
rts
mov 0x00,r0
;-------------------------------------------------------------------------------

loc_8c1A1324:
rts
nop
;-------------------------------------------------------------------------------
#data 0xE101D323
#data 0xD2232342
#data 0xD0232252
#data 0x2010000B
;-------------------------------------------------------------------------------

loc_8c1A1338:
mov.l @(loc_8c1A13C0,pc),r3 ; r3 set to 0x8C1C9B08
mov.b @r3,r0
extu.b r0,r0
cmp/eq 0x01,r0
bf loc_8c1A1352
mov.l @(loc_8c1A13B8,pc),r2 ; r2 set to 0x8C34846C
mov.l @r2,r1
tst r1,r1
bt loc_8c1A1352
mov.l @(loc_8c1A13B8,pc),r2 ; r2 set to 0x8C34846C
mov.l @r2,r3 ; r3 ??
jmp @r3
nop

loc_8c1A1352:
rts
nop
;-------------------------------------------------------------------------------

loc_8c1A1356:
mov.l @(loc_8c1A13C0,pc),r1 ; r1 set to 0x8C1C9B08
mov.b @r1,r0
extu.b r0,r0
cmp/eq 0x01,r0
bf loc_8c1A1370
mov.l @(loc_8c1A13BC,pc),r3 ; r3 set to 0x8C348470
mov.l @r3,r2
tst r2,r2
bt loc_8c1A1370
mov.l @(loc_8c1A13BC,pc),r3 ; r3 set to 0x8C348470
mov.l @r3,r2
jmp @r2
nop

loc_8c1A1370:
rts
nop
;-------------------------------------------------------------------------------
#data 0xE100D012
#data 0x2010000B
;-------------------------------------------------------------------------------
#data 0x4F22D311
#data 0x7FF86030
#data 0x65F380F5
#data 0x7504D10F
#data 0x62F364F3
#data 0x80F46010
#data 0x24006050
#data 0x80418451
#data 0x51F3D30B
#data 0xE002430B
#data 0x4F267F08
#data 0x0009000B
;-------------------------------------------------------------------------------
#data 0x00000080
#data 0x8C347A30

#align4
loc_8c1A13B4:
#data bank1b.loc_8c1b7708

loc_8c1A13B8:
#data 0x8C34846C

#align4
loc_8c1A13BC:
#data 0x8C348470

#align4
loc_8c1A13C0:
#data bank1c.loc_8c1c9B08
#data 0x8C34BB96
#data 0x8C34BB95

#align4
loc_8c1A13CC:
#data bank12.loc_8c129620
#data 0x1452E200
#data 0x14335351
#data 0xE30A2420
#data 0x000B1431
#data 0x6043
;-------------------------------------------------------------------------------

loc_8c1A13E2:
mov 0x00,r5 ; r5 set to 0x00
mov.l r5,@(0x08,r4)
mov.b r5,@r4
mov 0x0A,r3 ; r3 set to 0x0A
mov.l r3,@(0x04,r4)
rts
mov r4,r0
;-------------------------------------------------------------------------------

loc_8c1A13F0:
mov.l r5,@(0x08,r4)
mov.l @(0x04,r5),r3
rts
mov.l r3,@(0x0C,r4)
;-------------------------------------------------------------------------------

loc_8c1A13F8:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov 0x00,r13 ; r13 set to 0x00
sts.l pr,@-r15
add 0xE8,r15
mov r15,r4
add 0x10,r4
mov.l r4,@(0x04,r4)
mov r15,r4
add 0x08,r4
mov r4,r2
mov.l r4,@(0x04,r4)
mov r15,r4
mov.b r13,@r2
mov.l r4,@(0x04,r4)
mov.l @(0x08,r14),r3
tst r3,r3
bf loc_8c1A1422
bra loc_8c1A1516
nop

loc_8c1A1422:
mov.l @(0x0C,r14),r0
mov 0x76,r1 ; r1 set to 0x76
mov.b @(r0,r1),r0
extu.b r0,r0
cmp/eq 0x10,r0
bt loc_8c1A145C
mov.l @(0x0C,r14),r2
mov 0x47,r0 ; r0 set to 0x47
mov.b r13,@(r0,r2)
mov.l @(0x0C,r14),r3
mov 0x46,r0 ; r0 set to 0x46
mov.w @(loc_8c1A148E,pc),r4 ; r4 set to 0xFF
mov.b r4,@(r0,r3)
mov.l @(0x0C,r14),r3
mov 0x41,r0 ; r0 set to 0x41
mov.b r4,@(r0,r3)
mov.l @(0x0C,r14),r3
mov 0x42,r0 ; r0 set to 0x42
mov.b r4,@(r0,r3)
mov.l @(loc_8c1A1490,pc),r3 ; r3 set to 0x8C1A2820
jsr @r3
mov.l @(0x08,r14),r4 ; r4 ??? bc r14 is ???
mov.l @(0x0C,r14),r2
mov 0x46,r0 ; r0 set to 0x46
mov.b @(r0,r2),r3 ; r3 ??? bc r2 is ???
tst r3,r3
bt loc_8c1A1462
bra loc_8c1A1518
mov 0x01,r0

loc_8c1A145C:
mov.l @(0x08,r14),r2
mov 0x01,r0 ; r0 set to 0x01
mov.b r0,@(0x03,r2)

loc_8c1A1462:
bsr loc_8c1A1B28
mov r14,r4
bsr loc_8c1A1B50
mov r14,r4
bsr loc_8c1A1A64
mov r14,r4
bsr loc_8c1A1DEC
mov r14,r4
mov.l @(0x0C,r14),r3
mov 0x3E,r0 ; r0 set to 0x3E, r0 set to 0x3E
mov.b r13,@(r0,r3)
bsr loc_8c1A1C66
mov r14,r4
mov.l @(0x0C,r14),r2
mov 0x49,r0 ; r0 set to 0x49, r0 set to 0x49
mov.b r13,@(r0,r2)
mov.l @(0x0C,r14),r3
mov 0x61,r0 ; r0 set to 0x61, r0 set to 0x61
mov.b r13,@(r0,r3)
mov r13,r4
bra loc_8c1A14A0
mov 0x10,r5

loc_8c1A148E:
#data 0x00FF

#align4
loc_8c1A1490:
#data loc_8c1A2820

loc_8c1A1494:
#data 0x630350E3
#data 0x334C7362
#data 0x740123D0

#align4
loc_8c1A14A0:
#data 0x8BF73453
#data 0xE07253E3
#data 0x0324E20A
#data 0xE07453E3
#data 0x0324E201
#data 0x65F353F1
#data 0xB43323D0
#data 0x62F364E3
#data 0x60207208
#data 0x730863F3
#data 0xCB8065F3
#data 0x75082200
#data 0xCB406030
#data 0xB33D2300
#data 0x53E264E3
#data 0x51E3E045
#data 0x031C523F
#data 0x54E22230
#data 0x00096043
#data 0x60007038
#data 0x0329C880
#data 0x633B73FF
#data 0x89092338
#data 0x00096043
#data 0x60007038
#data 0x0129C840
#data 0x611B71FF
#data 0x8B022118

#align4
loc_8c1A1510:
#data 0x420BD22A
#data 0x54E2


loc_8c1A1516:
mov 0x00,r0 ; r0 set to 0x00

loc_8c1A1518:
add 0x18,r15
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1A1522:
mov.l r14,@-r15
mov.l @(0x08,r4),r3
sts.l pr,@-r15
mov.l @(0x0C,r4),r5
tst r3,r3
bt/s loc_8c1A15B2
add 0x4A,r5
mov 0x03,r14 ; r14 set to 0x03
mov 0x00,r6 ; r6 set to 0x00

loc_8c1A1534:
mov r6,r0 ; r0 set to 0x00
nop
cmp/eq 0x00,r0
bt loc_8c1A1548
cmp/eq 0x01,r0
bt loc_8c1A157C
cmp/eq 0x02,r0
bt loc_8c1A1596
bra loc_8c1A15AC
nop

loc_8c1A1548:
mov.l @(0x08,r4),r3
mov.l @(0x14,r3),r2
mov.b @r5+,r3
mov.b r3,@r2
mov.b @r5+,r0
mov.w @(loc_8c1A15B8,pc),r1 ; r1 set to 0x808
mov.l @(loc_8c1A15C0,pc),r3 ; r3 set to 0x8C130F04
extu.b r0,r0
mov.l @(0x08,r4),r2
jsr @r3
add 0x0C,r2
mov.l @(0x08,r4),r7
mov r7,r0
nop
mov.b @(0x0D,r0),r0
mov 0x41,r1 ; r1 set to 0x41
add r7,r1 ; r1 ??? bc r7 is ???
tst 0x80,r0
movt r2
add 0xFF,r2
neg r2,r2
extu.w r2,r2
tst r2,r2
movt r0
bra loc_8c1A15AC
mov.b r0,@r1

loc_8c1A157C:
mov.l @(0x08,r4),r2
mov.l @(0x20,r2),r3
mov.b @r5+,r2
mov.b r2,@r3
mov.b @r5+,r0
mov.w @(loc_8c1A15B8,pc),r1 ; r1 set to 0x808
mov.l @(loc_8c1A15C0,pc),r3 ; r3 set to 0x8C130F04
extu.b r0,r0
mov.l @(0x08,r4),r2
jsr @r3
add 0x18,r2
bra loc_8c1A15AC
nop

loc_8c1A1596:
#data 0x5142
#data 0x531B6254
#data 0x60542320
#data 0xD307910A
#data 0x5242600C
#data 0x7224430B

#align4
loc_8c1A15AC:
#data 0x36E37601
#data 0x8BC0


loc_8c1A15B2:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1A15B8:
#data 0x0808
#data 0x0000

#align4
loc_8c1A15BC:
#data loc_8c1A2820

loc_8c1A15C0:
#data bank13.loc_8c130F04

loc_8c1A15C4:
#data 0x6E432FE6
#data 0x4F222FD6
#data 0x1F517FF0
#data 0x53E22F62
#data 0x894B2338
#data 0xE04C54E2
#data 0x054E928B
#data 0x63505DE3
#data 0x7D788551
#data 0x232F633C
#data 0x031A600D
#data 0x3D3C633F
#data 0x3D0C7D04
#data 0x00096043
#data 0x60007050
#data 0x0029C840
#data 0x600B70FF
#data 0x8B1A8801
#data 0x740864F3
#data 0x6143E300
#data 0x1441E27F
#data 0xE0742130
#data 0x013C53E3
#data 0x03142129
#data 0x65F352E2
#data 0x63237508
#data 0x60307350
#data 0x720862F3
#data 0x2300C9BF
#data 0xCB406020
#data 0xB4EF2200
#data 0x64E3

loc_8c1A1642:
#data 0xD32D
#data 0x66F255F1
#data 0x64D3430B
#data 0xE04C52E2
#data 0x032E61F2
#data 0x301C8531
#data 0xE04C8131
#data 0x034E54E2
#data 0x53428531
#data 0x3030600D
#data 0xE5008B02
#data 0x64E3B10C

#align4
loc_8c1A1670:
#data 0x4F267F10
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1A167A:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov r5,r13
mov.l r12,@-r15
mov.l r11,@-r15
mov r7,r11
mov.l r10,@-r15
mov.l r9,@-r15
mov 0x00,r9 ; r9 set to 0x00
mov.l r8,@-r15
sts.l pr,@-r15
mov.l r9,@r11
mov.l @(0x08,r14),r3
add 0xF4,r15
tst r3,r3
bf/s loc_8c1A16A2
mov r6,r8
bra loc_8c1A178E
nop

loc_8c1A16A2:
mov.l @(0x08,r14),r0
add 0x30,r0
mov.b @r0,r0
tst 0x04,r0
bt loc_8c1A1788
bsr loc_8c1A1D64
mov r14,r4
bra loc_8c1A178E
nop

#align4
loc_8c1A16B4:
#data 0x64E3B075
#data 0x2008600C
#data 0x54E28967
#data 0x6283E04C
#data 0x5A42034E
#data 0x63B28531
#data 0x3238600D
#data 0x3A263A08
#data 0x52E28F03
#data 0x6A8363B2
#data 0x3A38

loc_8c1A16DE:
#data 0xE041
#data 0x2338032C
#data 0x64F38948
#data 0x63437404
#data 0x14416C93
#data 0xA00423C0
#data 0x008C0009

#align4
loc_8c1A16F8:
#data bank12.loc_8c129668

loc_8c1A16FC:
#data 0x7C01

loc_8c1A16FE:
#data 0x3CA2
#data 0x60D38907
#data 0x05CC0009
#data 0x64E3B063
#data 0x2F022008
#data 0x89F4

loc_8c1A1712:
#data 0x65D3
#data 0xBF5566C3
#data 0x63B264E3
#data 0x2B3233CC
#data 0x880060F2
#data 0x3DCC8D30
#data 0x89038801
#data 0x89168802
#data 0x0009A02A

#align4
loc_8c1A1734:
#data 0xE04963D4
#data 0x023452E3
#data 0xE50062B2
#data 0x2B227201
#data 0x64E3B0A0
#data 0x720462F3
#data 0x65F36020
#data 0xCB087504
#data 0xB4632200
#data 0xA01564E3
#data 0x0009

loc_8c1A175E:
#data 0x65D3
#data 0xBF2FE601
#data 0x62B264E3
#data 0x7D01E504
#data 0x2B227201
#data 0x64E3B08A
#data 0x0009A008

#align4
loc_8c1A1778:
#data 0x66A365D3
#data 0x64E3BF22
#data 0x3DAC63B2
#data 0x2B3233AC

#align4
loc_8c1A1788:
#data 0x328262B2
#data 0x8B92


loc_8c1A178E:
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

loc_8c1A17A2:
#data 0x5342
#data 0x8B012338
#data 0xE000000B
;-------------------------------------------------------------------------------

#align4
loc_8c1A17AC:
#data 0xE04C5342
#data 0x013E5243
#data 0x63107278
#data 0x633C9114
#data 0x031A231F
#data 0x323C633F
#data 0x00096023
#data 0xE3016001
#data 0x000B2039
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1A17D2:
#data 0x2FE6
#data 0xED002FD6
#data 0x23385342
#data 0x67D38F03
#data 0xE000A04F
#data 0x008C

loc_8c1A17E6:
#data 0x66D3

#align4
loc_8c1A17E8:
#data 0x8F112668
#data 0x50426E5E
#data 0xC880840D
#data 0x52428B2B
#data 0x00096023
#data 0xC9FF840C
#data 0x8B383E00
#data 0x840D5042
#data 0x8B2FC840
#data 0x0009A030

#align4
loc_8c1A1810:
#data 0x00096063
#data 0x8B138801
#data 0x70195042
#data 0xC8806000
#data 0x52428B15
#data 0x00096023
#data 0x60007018
#data 0x3E00C9FF
#data 0x50428B21
#data 0x60007019
#data 0x8919C840
#data 0x0009A016

#align4
loc_8c1A1840:
#data 0x8B188802
#data 0x70255042
#data 0xC8806000
#data 0x8901

loc_8c1A184E:
#data 0xA016
#data 0x67D3

loc_8c1A1852:
#data 0x5242
#data 0x00096023
#data 0x60007024
#data 0x3E00C9FF
#data 0x50428B0D
#data 0x60007025
#data 0x8901C840

#align4
loc_8c1A186C:
#data 0xE401A001

loc_8c1A1870:
#data 0xE402

loc_8c1A1872:
#data 0xA004
#data 0x6743

loc_8c1A1876:
#data 0xEE03
#data 0x36E37601
#data 0x8BB4

loc_8c1A187E:
#data 0x6073
#data 0x0009

loc_8c1A1882:
#data 0x6DF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1A1888:
#data 0x6E432FE6
#data 0x2FC62FD6
#data 0x2FB6EC00
#data 0x4F222F86
#data 0x64F37FF4
#data 0x63437404
#data 0x14412F50
#data 0x53E223C0
#data 0x89742338
#data 0xE04C53E2
#data 0x8521023E
#data 0x896E2008
#data 0x917454E2
#data 0x7440D33B
#data 0x6243430B
#data 0x2008600C
#data 0x53E2891B
#data 0x5BE3E04C
#data 0x9369023E
#data 0x61207B78
#data 0x213F611C
#data 0x611F011A
#data 0x7B043B1C
#data 0x6DC3A005

#align4
loc_8c1A18E8:
#data 0x35BC65DD
#data 0x64E3B3C2
#data 0x7D01

loc_8c1A18F2:
#data 0x53E2
#data 0x62DDE04C
#data 0x8511013E
#data 0x3203600D
#data 0x8BF2

loc_8c1A1902:
#data 0x53E2
#data 0x52E3E04C
#data 0x7278013E
#data 0x914B6310
#data 0x231F633C
#data 0x633F031A
#data 0x62F0332C
#data 0x2321622C
#data 0xE04C52E2
#data 0x002E53E3
#data 0x65037378
#data 0x62002F02
#data 0x622C8551
#data 0x6503221F
#data 0x622F021A
#data 0x6823323C
#data 0xB3EA7802
#data 0x280164E3
#data 0xE04C53E2
#data 0x6120023E
#data 0x22107101
#data 0x50E2E14C
#data 0x6000001E
#data 0x8808600C
#data 0x52E28B03
#data 0x032EE04C
#data 0x23C0

loc_8c1A196A:
#data 0x53E2
#data 0x023EE04C
#data 0x000960C3
#data 0xE04C8121
#data 0x53E352E2
#data 0xE03F012E
#data 0x03246210
#data 0x730463F3
#data 0x65F36030
#data 0xCB017504
#data 0xB3452300
#data 0x64E3

loc_8c1A1996:
#data 0x7F0C
#data 0x68F64F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x02036EF6
#data 0x0000008C

#align4
loc_8c1A19AC:
#data bank13.loc_8c130F3C


loc_8c1A19B0:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov 0x00,r2 ; r2 set to 0x00
mov.l r12,@-r15
mov 0x50,r0 ; r0 set to 0x50
sts.l pr,@-r15
add 0xEC,r15
mov r15,r4
add 0x0C,r4
mov r4,r3
mov.l r4,@(0x04,r4)
mov.b r2,@r3
mov.l @(0x0C,r14),r1
mov.b @(r0,r1),r3
tst r3,r3
bt loc_8c1A1A4E
mov.l @(0x0C,r14),r6
mov 0x50,r0 ; r0 set to 0x50
mov.l r6,@r15
mov.b @(r0,r6),r6
mov.l @(loc_8c1A1A90,pc),r4 ; r4 set to 0x8C348478
extu.b r6,r6
mov.l @(loc_8c1A1A94,pc),r3 ; r3 set to 0x8C129668
mov.l @r15,r5
jsr @r3
add 0x51,r5
mov.l @(loc_8c1A1A90,pc),r2 ; r2 set to 0x8C348478
mov 0x50,r0 ; r0 set to 0x50
mov.l r2,@(0x04,r15)
mov.l @(0x0C,r14),r3 ; r3 ??? bc r14 is ???
mov.b @(r0,r3),r2 ; r2 ??? bc r3 is ???
extu.b r2,r2
mov r15,r4 ; r4 ??? bc r15 is ???
mov.l r2,@(0x08,r15)
mov.l @(loc_8c1A1A98,pc),r3 ; r3 set to 0x8C18C064
jsr @r3
add 0x04,r4
mov.l @(0x0C,r14),r2
mov r0,r13 ; r13 set to 0x50
mov 0x50,r0 ; r0 set to 0x50
mov.b @(r0,r2),r3 ; r3 ??? bc r2 is ???
mov.l @r13,r2
extu.b r3,r3
cmp/eq r3,r2
bt loc_8c1A1A3C
mov.l @r13,r1
tst r1,r1
bt loc_8c1A1A4E
mov.l @(0x0C,r14),r12
mov.b @(r0,r12),r6
mov r12,r5
mov.l @r13,r3
extu.b r6,r6
mov r12,r4
add 0x51,r5
mov.l r3,@r15
add r3,r5
sub r3,r6
mov.l @(loc_8c1A1A94,pc),r3 ; r3 set to 0x8C129668
jsr @r3
add 0x51,r4
mov.l @r13,r3 ; r3 ??
mov 0x50,r0 ; r0 set to 0x50
mov.l @(0x0C,r14),r2
mov.b @(r0,r2),r1
sub r3,r1
mov.b r1,@(r0,r2)
bra loc_8c1A1A4E
nop

#align4
loc_8c1A1A3C:
#data 0x730C63F3
#data 0x65F36030
#data 0xCB10750C
#data 0xB2E92300
#data 0x64E3


loc_8c1A1A4E:
add 0x14,r15
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1A1A5A:
mov.l @(0x0C,r4),r3
mov 0x61,r0 ; r0 set to 0x61
mov 0x00,r2 ; r2 set to 0x00
rts
mov.b r2,@(r0,r3)
;-------------------------------------------------------------------------------

#align4
loc_8c1A1A64:
#data 0x4F22D10D
#data 0x23386312
#data 0x63128B02
#data 0x21327301

#align4
loc_8c1A1A74:
#data 0x0009B084
#data 0xD209E300
#data 0x22006423
#data 0xE001D108
#data 0xD3082130
#data 0xD2082300
#data 0x4F26422B

#align4
loc_8c1A1A90:
#data 0x8C348478

#align4
loc_8c1A1A94:
#data bank12.loc_8c129668

loc_8c1A1A98:
#data bank18.loc_8c18C064
#data 0x8C34848C
#data 0x8C348488
#data 0x8C348489
#data 0x8C34848A

#align4
loc_8c1A1AAC:
#data bank18.loc_8c18C096


loc_8c1A1AB0:
mov.l r14,@-r15
mov r4,r14
mov.l @(0x08,r14),r3
sts.l pr,@-r15
tst r3,r3
bt loc_8c1A1B22
mov.l @(0x0C,r14),r3
mov 0x40,r0 ; r0 set to 0x40
mov 0x00,r4 ; r4 set to 0x00
mov.b r4,@(r0,r3)
mov.l @(0x08,r14),r3
mov 0x4C,r0 ; r0 set to 0x4C
mov.l @(r0,r3),r2
mov r4,r0 ; r0 set to 0x00
nop
mov.b r0,@(0x01,r2)
mov 0x4C,r0 ; r0 set to 0x4C
mov.l @(0x08,r14),r3
mov.l @(r0,r3),r2
mov r4,r0 ; r0 set to 0x00
nop
mov r0,r5 ; r5 set to 0x00
mov 0x08,r7 ; r7 set to 0x08
mov.b r0,@(0x07,r2)

loc_8c1A1AE0:
mov.w @(loc_8c1A1BF6,pc),r6 ; r6 set to 0x8C, r6 set to 0x8C
mov.w @(loc_8c1A1BF8,pc),r2 ; r2 set to 0x4D8, r2 set to 0x4D8
muls.w r6,r5 ; r5 ??
mov.l @(0x0C,r14),r3
add r2,r3
sts macl,r6
exts.w r6,r6 ; r6 ??, r6 ??
add r6,r3
mov r4,r0 ; r0 set to 0x00
nop
mov.w r0,@(0x02,r3)
mov.w @(loc_8c1A1BF8,pc),r3 ; r3 set to 0x4D8, r3 set to 0x4D8
mov.l @(0x0C,r14),r2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???
mov.w @(loc_8c1A1BFA,pc),r1 ; r1 set to 0xF01, r1 set to 0xF01
add r3,r2
mov.l @(loc_8c1A1C00,pc),r3 ; r3 set to 0x8C130F04, r3 set to 0x8C130F04
add r6,r2
jsr @r3
mov 0x01,r0 ; r0 set to 0x01, r0 set to 0x01
add 0x01,r5
cmp/ge r7,r5
bf loc_8c1A1AE0
mov.l @(0x08,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???
mov 0x59,r0 ; r0 set to 0x59, r0 set to 0x59
mov 0x01,r2 ; r2 set to 0x01, r2 set to 0x01
mov.b r2,@(r0,r3)
mov 0x4C,r0 ; r0 set to 0x4C, r0 set to 0x4C
mov.l @(0x08,r14),r4 ; r4 ??? bc r14 is ???
lds.l @r15+,pr
mov.l @(loc_8c1A1C04,pc),r3 ; r3 set to 0x8C1A283E, r3 set to 0x8C1A283E
mov.l @(r0,r4),r4
jmp @r3
mov.l @r15+,r14

loc_8c1A1B22:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8c1A1B28:
#data 0x6E432FE6
#data 0x53E22F86
#data 0x23384F22
#data 0x58E28908
#data 0x55E3E03C
#data 0x055D7808
#data 0x64E3B2EB
#data 0x2802600D

#align4
loc_8c1A1B48:
#data 0x68F64F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------

loc_8c1A1B50:
bra loc_8c1A1522
nop

#align4
loc_8c1A1B54:
#data 0x23385342
#data 0x50428910
#data 0x60007030
#data 0x8904C810
#data 0xE0465143
#data 0x000BE300
#data 0x0134
;-------------------------------------------------------------------------------

loc_8c1A1B6E:
#data 0x5251
#data 0x5343E046
#data 0x013C6220
#data 0x0314212B

#align4
loc_8c1A1B7C:
#data 0x0009000B
;-------------------------------------------------------------------------------

#align4
loc_8c1A1B80:
#data 0xE1755043
#data 0x001C000B
;-------------------------------------------------------------------------------
#data 0x6E432FE6
#data 0x4F222F86
#data 0x64F37FEC
#data 0x6343740C
#data 0x14412F50
#data 0xE50064F3
#data 0x23507404
#data 0x14416343
#data 0x58F42350
#data 0x64E3B019
#data 0x62F32800
#data 0xD3149122
#data 0x430B60F0
#data 0x65F3720C
#data 0xB012750C
#data 0x62F364E3
#data 0x60207204
#data 0x750465F3
#data 0x2200CB40
#data 0x64E3B224
#data 0x4F267F14
#data 0x000B68F6
#data 0x50436EF6
#data 0x000BE174
#data 0x001C
;-------------------------------------------------------------------------------

loc_8c1A1BEA:
mov.l @(0x04,r5),r2
mov 0x74,r0 ; r0 set to 0x74
mov.l @(0x0C,r4),r3
mov.b @r2,r1
rts
mov.b r1,@(r0,r3)
;-------------------------------------------------------------------------------

loc_8c1A1BF6:
#data 0x008C

loc_8c1A1BF8:
#data 0x04D8

loc_8c1A1BFA:
#data 0x0F01
#data 0x00000701

#align4
loc_8c1A1C00:
#data bank13.loc_8c130F04

loc_8c1A1C04:
#data loc_8c1A283E

loc_8c1A1C08:
#data bank13.loc_8c130ECC
#data 0x6E432FE6
#data 0x4F222F86
#data 0x64F37FEC
#data 0x6343740C
#data 0x14412F50
#data 0xE50064F3
#data 0x23507404
#data 0x14416343
#data 0x58F42350
#data 0x64E3BFD7
#data 0x62F32800
#data 0xD347918A
#data 0x430B60F0
#data 0x65F3720C
#data 0xBFD0750C
#data 0x62F364E3
#data 0x60207204
#data 0x750465F3
#data 0x2200CB40
#data 0x64E3B1E2
#data 0x4F267F14
#data 0x000B68F6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1A1C66:
#data 0x2FE6
#data 0x53E26E43
#data 0x23384F22
#data 0x53E38955
#data 0xE400E061
#data 0x53E30344
#data 0x0344E03F
#data 0xE04C53E2
#data 0x2240023E
#data 0x023E53E2
#data 0x00096043
#data 0xE5086603
#data 0x8026

loc_8c1A1C96:
#data 0x975C
#data 0x267F53E3
#data 0x071A7378
#data 0x337C677F
#data 0x00096043
#data 0x52E38131
#data 0xD32B9152
#data 0x327C7278
#data 0xE001430B
#data 0x36537601
#data 0x53E38BEB
#data 0x0344E050
#data 0xE04053E3
#data 0x53E20344
#data 0x023EE04C
#data 0x00096043
#data 0xE04C8021
#data 0x023E53E2
#data 0x00096043
#data 0x80276603

#align4
loc_8c1A1CE4:
#data 0x92369735
#data 0x53E3267F
#data 0x071A332C
#data 0x337C677F
#data 0x00096043
#data 0x932C8131
#data 0x912952E3
#data 0xD316323C
#data 0x430B327C
#data 0x7601E001
#data 0x8BE93653
#data 0xE04C54E2
#data 0xD3124F26
#data 0x432B044E
#data 0x6EF6

loc_8c1A1D1E:
#data 0x4F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1A1D24:
#data 0x23385342
#data 0x53428905
#data 0x5151E054
#data 0x6310023E
#data 0x2230

loc_8c1A1D36:
#data 0x000B
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1A1D3A:
#data 0x5242
#data 0x89052228
#data 0xE0735243
#data 0x53420254
#data 0x0354E040

#align4
loc_8c1A1D4C:
#data 0x0009000B
;-------------------------------------------------------------------------------
#data 0x008C0601
#data 0x04D80F01

#align4
loc_8c1A1D58:
#data bank13.loc_8c130ECC

loc_8c1A1D5C:
#data bank13.loc_8c130F04

loc_8c1A1D60:
#data loc_8c1A282E

loc_8c1A1D64:
#data 0x6E432FE6
#data 0x53E24F22
#data 0x7FF82338
#data 0x64F3891B
#data 0x6343E200
#data 0x14416523
#data 0xBD832320
#data 0xE07464E3
#data 0x620353E3
#data 0x013C720C
#data 0x0314212B
#data 0x65F352E2
#data 0x73506323
#data 0x62F36030
#data 0x2300CB40
#data 0xCB406020
#data 0xB13B2200
#data 0x64E3

loc_8c1A1DAA:
#data 0x7F08
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1A1DB2:
#data 0x2FE6
#data 0x4F226E43
#data 0x233853E2
#data 0x89117FF8
#data 0xE20064F3
#data 0xE0726343
#data 0x23201441
#data 0x015451E3
#data 0x603063F3
#data 0xCB4065F3
#data 0xBEBB2300
#data 0xD34764E3
#data 0x54E2430B

#align4
loc_8c1A1DE4:
#data 0x4F267F08
#data 0x6EF6000B
;-------------------------------------------------------------------------------

loc_8c1A1DEC:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
mov.l @(0x08,r14),r3
tst r3,r3
add 0xF0,r15
bf loc_8c1A1E02
bra loc_8c1A1EE8
mov 0x00,r0

loc_8c1A1E02:
#data 0x64F3
#data 0x63437408
#data 0x1441ED00
#data 0x52E223D0
#data 0x512D53F3
#data 0x23006010
#data 0x583D53E2
#data 0x64E3B06A
#data 0x60F32800
#data 0x60007008
#data 0x50E2C804
#data 0x70300329
#data 0x73FF6000
#data 0xC804633B
#data 0x71FF0129
#data 0x231A611B
#data 0x89072338
#data 0x703050E2
#data 0xC8046000
#data 0xE5008902
#data 0x64E3BD1A

#align4
loc_8c1A1E54:
#data 0x700860F3
#data 0xC8026000
#data 0x022950E2
#data 0x60007030
#data 0x622B72FF
#data 0x0129C802
#data 0x611B71FF
#data 0x2228221A
#data 0x50E28916
#data 0x60007030
#data 0x8911C802
#data 0x2E10E101
#data 0x523D53E2
#data 0x63E022D0
#data 0x89022338
#data 0x430BD31B
#data 0x0009

loc_8c1A1E96:
#data 0x52E2
#data 0x73306323
#data 0xCB026030
#data 0x2ED02300

#align4
loc_8c1A1EA4:
#data 0x632052F3
#data 0x891C2338
#data 0x531D51E2
#data 0x22286230
#data 0x64F38B17
#data 0xE0746243
#data 0x22D01441
#data 0x53E36203
#data 0x013C720C
#data 0x0314212B
#data 0x65F352E2
#data 0x73506323
#data 0x62F36030
#data 0x2300CB40
#data 0xCB406020
#data 0xB09D2200
#data 0x64E3

loc_8c1A1EE6:
#data 0xE001


loc_8c1A1EE8:
add 0x10,r15
lds.l @r15+,pr
mov.l @r15+,r8
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8c1A1EF4:
#data 0xE1765043
#data 0x001C000B
;-------------------------------------------------------------------------------

#align4
loc_8c1A1EFC:
#data loc_8c1A2820

loc_8c1A1F00:
#data loc_8c1A21DE

loc_8c1A1F04:
#data 0xE6004F22
#data 0x65F37FF8
#data 0x15516353
#data 0x53422360
#data 0x893E2338
#data 0xE04C5342
#data 0x013E5243
#data 0x84119388
#data 0x600C9187
#data 0x321C203F
#data 0xD3439184
#data 0x600F001A
#data 0x430B320C
#data 0x5242E001
#data 0xE14CE04C
#data 0x8431032E
#data 0x80317001
#data 0x001E5042
#data 0x600C8401
#data 0x8B058808
#data 0xE04C5242
#data 0x6063032E
#data 0x80310009

#align4
loc_8c1A1F60:
#data 0xE04C5342
#data 0x6063023E
#data 0x81220009
#data 0x5242E04C
#data 0x012E5343
#data 0xE1408411
#data 0x2100313C
#data 0x70305042
#data 0xC8086000
#data 0x63F38B07
#data 0x216051F1
#data 0xCB026030
#data 0xB0452300
#data 0x65F3

loc_8c1A1F96:
#data 0x7F08
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1A1F9E:
#data 0xD228
#data 0x63224F22
#data 0x8B022338
#data 0x73016322
#data 0x2232

loc_8c1A1FAE:
#data 0xBDE7
#data 0xE4010009
#data 0x2200D223
#data 0x2340D323
#data 0x2140D123
#data 0xD2236423
#data 0x4F26422B

#align4
loc_8c1A1FC8:
#data 0x6E432FE6
#data 0xE2004F22
#data 0x7FF0E061
#data 0x740864F3
#data 0x14416343
#data 0x51E32320
#data 0x2338031C
#data 0x53E38B18
#data 0x7362E210
#data 0x1F212F32
#data 0x430BD318
#data 0x640364F3
#data 0x22286242
#data 0x6242890C
#data 0x53E3E061
#data 0x63F30324
#data 0x60307308
#data 0x750865F3
#data 0x2300CB20
#data 0x64E3B004

#align4
loc_8c1A2018:
#data 0x4F267F10
#data 0x6EF6000B
;-------------------------------------------------------------------------------

loc_8c1A2020:
mov.l r14,@-r15
mov r4,r14
mov.l @(0x08,r14),r3
sts.l pr,@-r15
tst r3,r3
bf loc_8c1A2058
lds.l @r15+,pr
mov 0x00,r0 ; r0 set to 0x00
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x04D8008C
#data 0x00000F01

#align4
loc_8c1A203C:
#data bank13.loc_8c130F04
#data 0x8C348494
#data 0x8C348490
#data 0x8C348491
#data 0x8C348492

#align4
loc_8c1A2050:
#data bank18.loc_8c18C096

loc_8c1A2054:
#data bank18.loc_8c18C02A

loc_8c1A2058:
#data 0x703050E2
#data 0xC8106000
#data 0xBD778B04
#data 0xD33A64E3
#data 0x54E2430B

#align4
loc_8c1A206C:
#data 0x4F26E001
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1A2074:
#data 0x4F225342
#data 0x8F032338
#data 0x4F26E600
#data 0xE000000B
;-------------------------------------------------------------------------------

#align4
loc_8c1A2084:
#data 0x600C6050
#data 0x8D01C801
#data 0x76016050

#align4
loc_8c1A2090:
#data 0xC802600C
#data 0x60508D01
#data 0x7601

loc_8c1A209A:
#data 0x600C
#data 0x8D01C804
#data 0x76016050

#align4
loc_8c1A20A4:
#data 0xC808600C
#data 0x60508D01
#data 0x7601

loc_8c1A20AE:
#data 0x600C
#data 0x8D01C810
#data 0x76016050

#align4
loc_8c1A20B8:
#data 0xC820600C
#data 0x60508D01
#data 0x7601

loc_8c1A20C2:
#data 0x600C
#data 0x8D01C840
#data 0x7601E201

#align4
loc_8c1A20CC:
#data 0x26295442
#data 0xD320913B
#data 0x430B7440
#data 0x88016243
#data 0x88038907
#data 0x8805890A
#data 0x8807890F
#data 0xA0128910
#data 0x0009

loc_8c1A20EE:
#data 0x666C
#data 0x89042668
#data 0x0009A00D

#align4
loc_8c1A20F8:
#data 0x2668666C
#data 0x8909

loc_8c1A20FE:
#data 0x6050
#data 0xA006CB80
#data 0x2500

loc_8c1A2106:
#data 0x6050
#data 0xCB80A002

#align4
loc_8c1A210C:
#data 0xC97F6050

loc_8c1A2110:
#data 0x2500

loc_8c1A2112:
#data 0x6050
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1A211A:
rts
mov r5,r0
;-------------------------------------------------------------------------------
#data 0x4F22
#data 0x7FF8E200
#data 0x635365F3
#data 0x23201551
#data 0x51F1930E
#data 0xBF752130
#data 0x7F0865F3
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1A213E:
mov.w @(loc_8c1A214E,pc),r0 ; r0 set to 0x938
mov.l @(0x0C,r4),r3
mov.b @(r0,r3),r2
extu.b r2,r2
rts
mov.l r2,@(0x04,r4)
;-------------------------------------------------------------------------------
#data 0x0203
#data 0x00FE

loc_8c1A214E:
#data 0x0938

#align4
loc_8c1A2150:
#data loc_8c1A2820

loc_8c1A2154:
#data bank13.loc_8c130F3C

loc_8c1A2158:
#data 0x6312D112
#data 0x8B022338
#data 0x73016312
#data 0x2132

loc_8c1A2166:
#data 0xD411
#data 0xD311E100
#data 0x432BD20E
#data 0x2210

loc_8c1A2172:
#data 0xD210
#data 0x63224F22
#data 0x8B022338
#data 0x73016322
#data 0x2232

loc_8c1A2182:
#data 0xBCFD
#data 0xD20C0009
#data 0xE401E300
#data 0x72022200
#data 0x2130D10A
#data 0x2340D30A
#data 0xD1052240
#data 0x412BD406
#data 0x00004F26
#data 0x8C34849C
#data 0x8C34849A
#data 0x8C348498

#align4
loc_8c1A21B0:
#data bank18.loc_8c18C096
#data 0x8C3484A4
#data 0x8C3484A0
#data 0x8C3484A1
#data 0x8C3484A3


loc_8c1A21C4:
mov.l @(loc_8c1A2298,pc),r2 ; r2 set to 0x8C348DC8
mov.l @(loc_8c1A2294,pc),r3 ; r3 set to 0x8C3484A8
mov.l r3,@r2 ; r2 ??
mov.l @(loc_8c1A229C,pc),r1 ; r1 set to 0x8C3489B8
mov.l @(loc_8c1A22A0,pc),r0 ; r0 set to 0x8C348DCC
rts
mov.l r1,@r0
;-------------------------------------------------------------------------------
#data 0xD331
#data 0x2342E400
#data 0x000BD231
#data 0x2242
;-------------------------------------------------------------------------------

loc_8c1A21DE:
mov.l @(loc_8c1A22A4,pc),r1 ; r1 set to 0x8C348DC4
mov 0x09,r3 ; r3 set to 0x09
mov.l r3,@r1 ; r1 ??
mov.l @(loc_8c1A22A8,pc),r2 ; r2 set to 0x8C342B90
mov.l @r2,r4
mov.l @(0x08,r4),r0
add 0x30,r0
mov.b @r0,r0
tst 0x02,r0
bf loc_8c1A21F8
mov.l @(loc_8c1A22A0,pc),r0 ; r0 set to 0x8C348DCC
bra loc_8c1A2544
mov.l @r0,r4

loc_8c1A21F8:
mov.l @(loc_8c1A22AC,pc),r3 ; r3 set to 0x8C1A1FC8
jmp @r3
nop

loc_8c1A21FE:
mov.l @(loc_8c1A22A8,pc),r3 ; r3 set to 0x8C342B90
mov.l @r3,r4
mov.l @(0x08,r4),r0
add 0x30,r0
mov.b @r0,r0
tst 0x02,r0
bf loc_8c1A2212
mov.l @(loc_8c1A2298,pc),r0 ; r0 set to 0x8C348DC8
bra loc_8c1A223A
mov.l @r0,r4

loc_8c1A2212:
mov.l @(loc_8c1A22B0,pc),r2 ; r2 set to 0x8C1A19B0
jmp @r2
nop

loc_8c1A2218:
mov.w @(loc_8c1A228E,pc),r0 ; r0 set to 0x500
mov 0x00,r5 ; r5 set to 0x00
mov.w r5,@(r0,r4)
add 0x02,r0 ; r0 set to 0x502
mov.w r5,@(r0,r4)
add 0x0A,r0 ; r0 set to 0x50C
mov.l r5,@(r0,r4)
add 0xFC,r0 ; r0 set to 0x508
mov.w @(loc_8c1A2290,pc),r3 ; r3 set to 0x100
add r4,r3 ; r3 ??? bc r4 is ???
mov.l r3,@(r0,r4)
add 0xFC,r0 ; r0 set to 0x504
mov.l r3,@(r0,r4)
rts
mov r4,r0
;-------------------------------------------------------------------------------

loc_8c1A2236:
rts
nop
;-------------------------------------------------------------------------------

loc_8c1A223A:
mov.l @(loc_8c1A22A8,pc),r7 ; r7 set to 0x8C342B90
sts.l pr,@-r15
mov.l @r7,r5
mov.l @(0x08,r5),r2
mov r2,r0
nop
add 0x30,r0
mov.b @r0,r0
and 0x01,r0
extu.b r0,r0
tst r0,r0
bt loc_8c1A2258
lds.l @r15+,pr
rts
mov 0x00,r0
;-------------------------------------------------------------------------------

#align4
loc_8c1A2258:
#data 0xE0595252
#data 0x2338032C
#data 0xE6008D0C
#data 0x90149314
#data 0x0436334C
#data 0x043670FC
#data 0x046570FC
#data 0x04657002
#data 0x0466700A

#align4
loc_8c1A227C:
#data 0xE0596372
#data 0xB06F5232
#data 0xE0010264
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1A228E:
#data 0x0500

loc_8c1A2290:
#data 0x0100
#data 0x0508

#align4
loc_8c1A2294:
#data 0x8C3484A8

#align4
loc_8c1A2298:
#data 0x8C348DC8

#align4
loc_8c1A229C:
#data 0x8C3489B8

#align4
loc_8c1A22A0:
#data 0x8C348DCC

#align4
loc_8c1A22A4:
#data 0x8C348DC4

#align4
loc_8c1A22A8:
#data 0x8C342B90

#align4
loc_8c1A22AC:
#data loc_8c1A1FC8

loc_8c1A22B0:
#data loc_8c1A19B0

loc_8c1A22B4:
#data 0xE04C2FE6
#data 0x2FC62FD6
#data 0x4F22DC4F
#data 0x53E26EC2
#data 0x013E52E3
#data 0x8411938D
#data 0x600C918C
#data 0x321C203F
#data 0x600F001A
#data 0x6023320C
#data 0x60010009
#data 0x2029E201
#data 0x2008600D
#data 0x6D438F34
#data 0xE04C52E2
#data 0x002E9379
#data 0x84019278
#data 0x600C55E3
#data 0x352C203F
#data 0x600F001A
#data 0x8551350C
#data 0x6503D13D
#data 0x64E3410B
#data 0x31DC916B
#data 0x63C22101
#data 0x52329067
#data 0xE04C06DD
#data 0x9360012E
#data 0x8411666D
#data 0x600C65C2
#data 0x203F925C
#data 0xD1345553
#data 0x001A352C
#data 0x350C600F
#data 0x410B7504
#data 0x905364D3
#data 0xE501E300
#data 0xD32F0D35
#data 0x64C2430B
#data 0xE401A001

loc_8c1A2354:
#data 0xE400

loc_8c1A2356:
#data 0x6043
#data 0x4F260009
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1A2364:
#data 0x6E432FE6
#data 0x2FC62FD6
#data 0x2FA62FB6
#data 0x4F22903D
#data 0x70FC03EE
#data 0x7FF802EE
#data 0x8D053230
#data 0x9035ED00
#data 0x700403EE
#data 0x3D380DEE

#align4
loc_8c1A238C:
#data 0xD01FDC1B
#data 0x555165C2
#data 0x4508D21E
#data 0x6322055E
#data 0x03579429
#data 0x6153051A
#data 0x00096043
#data 0x420BD21A
#data 0x92210009
#data 0x6B036153
#data 0x604332EC
#data 0xD3170009
#data 0x0009430B
#data 0x330C6322
#data 0x90152232
#data 0x324202EE
#data 0x02EE8B03
#data 0x32487B01
#data 0x0E26

loc_8c1A23D6:
#data 0x63C2
#data 0x22286230
#data 0x9B0A8900

#align4
loc_8c1A23E0:
#data 0xA05E9A0A
#data 0x008C0009
#data 0x050004D8
#data 0x05080502
#data 0x03E80504
#data 0x0080050C
#data 0x000003FF
#data 0x8C342B90

#align4
loc_8c1A2400:
#data loc_8c1A211A

loc_8c1A2404:
#data bank12.loc_8c129668

loc_8c1A2408:
#data loc_8c1A1F04

loc_8c1A240C:
#data bank1c.loc_8c1c6728
#data 0x8C348DC4

#align4
loc_8c1A2414:
#data bank12.loc_8c1291DC

loc_8c1A2418:
#data bank12.loc_8c12939C

loc_8c1A241C:
#data 0x02ED907F
#data 0x8B082228
#data 0x631061C2
#data 0x8B3C2338
#data 0x64E3BF42
#data 0x2008600C
#data 0x8937

loc_8c1A2436:
#data 0x9073
#data 0x04EDA028

#align4
loc_8c1A243C:
#data 0x93709072
#data 0x33EC02EE
#data 0x32A03238
#data 0x62C2892D
#data 0x60235222
#data 0x70300009
#data 0xC9016000
#data 0x2008600C
#data 0xA0568901
#data 0xE001

loc_8c1A2462:
#data 0x905F
#data 0x61E3634D
#data 0x02EE331C
#data 0x3DB07D01
#data 0x0E267201
#data 0x22046030
#data 0x03ED9052
#data 0x0E357301
#data 0x02ED70FE
#data 0x8D0572FF
#data 0x74010E25

#align4
loc_8c1A248C:
#data 0x03ED9047
#data 0x8BD32338

#align4
loc_8c1A2494:
#data 0x93449046
#data 0x33EC02EE
#data 0x32A03238
#data 0x8901

loc_8c1A24A2:
#data 0x3DB0
#data 0x8BBA

loc_8c1A24A6:
#data 0xE200
#data 0x8B2F3D26
#data 0x01EE903B
#data 0x1FD12F12
#data 0x430BD31C
#data 0x650364F3
#data 0x32D06252
#data 0x9030891E
#data 0x02EE6352
#data 0x323C962B
#data 0x64520E26
#data 0x8D0A34D2
#data 0x36EC

loc_8c1A24D6:
#data 0x03EE
#data 0x34D27401
#data 0x0E367301
#data 0x613073FF
#data 0x8FF62610
#data 0x7601

loc_8c1A24EA:
#data 0x921A
#data 0x0E2632EC
#data 0x93167004
#data 0x33EC6252
#data 0x3D283D3C
#data 0x0ED6A006

#align4
loc_8c1A2500:
#data 0x900F920F
#data 0x0E2632EC
#data 0x0E2670FC

loc_8c1A250C:
#data 0xE000

loc_8c1A250E:
#data 0x7F08
#data 0x6AF64F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x05006EF6
#data 0x01000502
#data 0x05040508

#align4
loc_8c1A2528:
#data bank18.loc_8c18C064


loc_8c1A252C:
mov.w @(loc_8c1A2628,pc),r0 ; r0 set to 0x404
mov r4,r3
mov 0x00,r2 ; r2 set to 0x00
mov.l r4,@(r0,r4)
add 0xFC,r0 ; r0 set to 0x400
mov.l r3,@(r0,r4)
add 0x08,r0 ; r0 set to 0x408
mov.l r2,@(r0,r4)
rts
mov r3,r0
;-------------------------------------------------------------------------------

loc_8c1A2540:
rts
nop
;-------------------------------------------------------------------------------

loc_8c1A2544:
mov.l @(loc_8c1A2630,pc),r3 ; r3 set to 0x8C342B90
sts.l pr,@-r15
mov.l @r3,r5
mov.l @(0x08,r5),r0
add 0x30,r0
mov.b @r0,r0
tst 0x04,r0
bt loc_8c1A255A
lds.l @r15+,pr
rts
mov 0x00,r0
;-------------------------------------------------------------------------------

loc_8c1A255A:
#data 0x5352
#data 0x023CE058
#data 0x89072228
#data 0x62439060
#data 0x0446E300
#data 0x042670FC
#data 0x04367008

#align4
loc_8c1A2574:
#data 0x0009B00B
#data 0xE000D32D
#data 0x51226232
#data 0x321CE258
#data 0xE0012200
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1A258E:
#data 0x2FE6
#data 0x2FD66E43
#data 0xEC002FC6
#data 0xDB252FB6
#data 0x7FEC4F22
#data 0x64B22FC2
#data 0x535D5542
#data 0x22286230
#data 0x60538907
#data 0x70300009
#data 0xC8086000
#data 0xA07A8B01
#data 0xE001

loc_8c1A25BE:
#data 0xD01D
#data 0xD11D5241
#data 0x032E4208
#data 0x902E6412
#data 0xD31B0437
#data 0x430B041A
#data 0x6D036143
#data 0x64E3B072
#data 0x90256403
#data 0x33DC03EE
#data 0x8B073346
#data 0x324602EE
#data 0xA0038B01
#data 0x6DC3

loc_8c1A25F2:
#data 0x03EE
#data 0x3D386D43

#align4
loc_8c1A25F8:
#data 0x89232DD8
#data 0x01EE9014
#data 0x94141F11
#data 0x00096043
#data 0x03EE7008
#data 0x334233DC
#data 0x900B8B03
#data 0x6DDB0DEE
#data 0x3D4C

loc_8c1A261A:
#data 0x64F3
#data 0xD3081FD2
#data 0x7404430B
#data 0x6403A013

loc_8c1A2628:
#data 0x0404
#data 0x03E8
#data 0x04000408

#align4
loc_8c1A2630:
#data 0x8C342B90

#align4
loc_8c1A2634:
#data bank1c.loc_8c1c6728
#data 0x8C348DC4

#align4
loc_8c1A263C:
#data bank12.loc_8c1291DC

loc_8c1A2640:
#data bank18.loc_8c18C02A

loc_8c1A2644:
#data 0xE30164F3
#data 0x1431740C
#data 0x24C2

loc_8c1A264E:
#data 0x908B
#data 0x6D4267F3
#data 0x0EC603EE
#data 0x3D3C70F8
#data 0xD34405EE
#data 0x430B66D3
#data 0x908064B2
#data 0x02EE63F2
#data 0x0E26323C
#data 0x30D060F2
#data 0x90778914
#data 0x3D2862F2
#data 0x0ED662E3
#data 0x70FC03EE
#data 0x0E26323C
#data 0x06EE7004
#data 0xD33970F8
#data 0x430B05EE
#data 0x906864E3
#data 0x0EE662E3
#data 0xE004A009

#align4
loc_8c1A26A0:
#data 0x63E39064
#data 0x70FC0EE6
#data 0xD3330E36
#data 0x64B2430B
#data 0xE000

loc_8c1A26B2:
#data 0x7F14
#data 0x6BF64F26
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1A26C0:
#data 0xE04CD32E
#data 0x6532E700
#data 0x54526673
#data 0xA021044E
#data 0x6440

loc_8c1A26D2:
#data 0x5252
#data 0x634CE04C
#data 0x6210012E
#data 0x3320622C
#data 0x74018F09
#data 0x021E5152
#data 0x85215312
#data 0x3308600D
#data 0xA00373FF
#data 0x363C

loc_8c1A26F6:
#data 0x5352
#data 0x362C5232

#align4
loc_8c1A26FC:
#data 0x8808604C
#data 0x64738B00

#align4
loc_8c1A2704:
#data 0xE04C5352
#data 0x013E624C
#data 0x633C6310
#data 0x890E3230

#align4
loc_8c1A2714:
#data 0x634C912B
#data 0x231F5253
#data 0x031A7278
#data 0x323C633F
#data 0x63316323
#data 0x2329E201
#data 0x2338633D
#data 0x8BCF

loc_8c1A2732:
#data 0x000B
#data 0xD3126063
#data 0x2340000B
;-------------------------------------------------------------------------------
#data 0x000BD210
#data 0xD30F6020
#data 0x600C6030
#data 0x8801000B
;-------------------------------------------------------------------------------

loc_8c1A274C:
sts.l pr,@-r15
mov.l @(loc_8c1A2784,pc),r4 ; r4 set to 0x8C3484A8
bsr loc_8c1A2218
nop
mov.l @(loc_8c1A2788,pc),r4 ; r4 set to 0x8C3489B8
bra loc_8c1A252C
lds.l @r15+,pr

loc_8c1A275A:
sts.l pr,@-r15
mov.l @(loc_8c1A2788,pc),r4 ; r4 set to 0x8C3489B8
bsr loc_8c1A2540
nop
mov.l @(loc_8c1A2784,pc),r4 ; r4 set to 0x8C3484A8
bra loc_8c1A2236
lds.l @r15+,pr
#data 0x04000408
#data 0x008C0404

#align4
loc_8c1A2770:
#data loc_8c1A167A

loc_8c1A2774:
#data bank12.loc_8c129668

loc_8c1A2778:
#data loc_8c1A1D64
#data 0x8C342B90

#align4
loc_8c1A2780:
#data bank1c.loc_8c1c9B11

loc_8c1A2784:
#data 0x8C3484A8

#align4
loc_8c1A2788:
#data 0x8C3489B8


loc_8c1A278C:
mov.l r14,@-r15
mov r4,r14
add 0x0C,r4
mov.l r13,@-r15
mov r4,r2
add 0x01,r2
mov r4,r3
mov.l r4,@(0x04,r4)
mov.l r2,@(0x08,r4)
mov r14,r4
add 0x18,r4
mov r4,r3
add 0x01,r3
mov r4,r2
mov.l r4,@(0x04,r4)
mov.l r3,@(0x08,r4)
mov r14,r4
add 0x24,r4
mov r4,r2
add 0x01,r2
mov r4,r3
mov.l r4,@(0x04,r4)
mov.l r2,@(0x08,r4)
mov r14,r4
add 0x30,r4
mov r4,r2
mov.l r4,@(0x04,r4)
sts.l pr,@-r15
mov r14,r4
mov 0x00,r13 ; r13 set to 0x00
add 0x38,r4
mov.b r13,@r2
mov r4,r2
mov.l r4,@(0x04,r4)
mov r14,r4
mov.b r13,@r2
bsr loc_8c1A282E
add 0x42,r4
mov r14,r3
mov r14,r4
add 0x42,r3
mov 0x4C,r0 ; r0 set to 0x4C
add 0x50,r4
mov.l r4,@(0x04,r4)
mov.l r3,@(r0,r14)
mov.w r13,@r14
mov r13,r0 ; r0 set to 0x00
nop
mov.b r0,@(0x02,r14)
mov.b r0,@(0x03,r14)
mov.l r0,@(0x04,r14)
mov.l @(0x34,r14),r3
mov.b r0,@r3
mov r14,r3
mov 0x41,r0 ; r0 set to 0x41
add 0x30,r3
mov.b r13,@(r0,r14)
mov.b @r3,r0 ; r0 ??? bc r3 is ???
or 0x02,r0
mov.b r0,@r3
mov 0x40,r0 ; r0 set to 0x40
mov.b r13,@(r0,r14)
mov 0x58,r0 ; r0 set to 0x58
mov.b r13,@(r0,r14)
mov 0x59,r0 ; r0 set to 0x59
mov.b r13,@(r0,r14)
mov r14,r0 ; r0 ??? bc r14 is ???
nop
lds.l @r15+,pr
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1A281C:
rts
nop
;-------------------------------------------------------------------------------

loc_8c1A2820:
sts.l pr,@-r15
mov.l @(loc_8c1A2848,pc),r3 ; r3 set to 0x8C1B6EC0
jsr @r3
nop
lds.l @r15+,pr
rts
mov 0x01,r0
;-------------------------------------------------------------------------------

loc_8c1A282E:
mov 0x00,r0 ; r0 set to 0x00
mov.w r0,@(0x02,r4)
mov.w r0,@(0x04,r4)
mov.b r0,@(0x06,r4)
mov.b r0,@(0x07,r4)
mov.b r0,@r4
rts
mov.b r0,@(0x01,r4)
;-------------------------------------------------------------------------------

loc_8c1A283E:
mov 0x00,r0 ; r0 set to 0x00
mov.w r0,@(0x04,r4)
mov.b r0,@(0x07,r4)
rts
mov.b r0,@(0x01,r4)
;-------------------------------------------------------------------------------

#align4
loc_8c1A2848:
#data bank1b.loc_8c1b6EC0
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
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
loc_8c1A4860:
#data 0x00000000

#align4
loc_8c1A4864:
#data 0x00000000


loc_8c1A4868:
mov.l @(loc_8c1A48DC,pc),r0 ; r0 set to 0x8C1A4864
mov.l r15,@r0 ; r0 ??? bc r15 is ???
mov.l @(loc_8c1A48E0,pc),r15 ; r15 set to 0x8C1A4860
sts fpscr,r0
mov.l r0,@-r15 ; r15 ??? bc r0 is ???
mov 0x18,r1 ; r1 set to 0x18
shll16 r1 ; r1 set to 0x180000
not r1,r1 ; r1 ??
and r1,r0
lds r0,fpscr
fmov.s fr0,@-r15
fmov.s fr1,@-r15
fmov.s fr2,@-r15
fmov.s fr3,@-r15
fmov.s fr4,@-r15
fmov.s fr5,@-r15
fmov.s fr6,@-r15
fmov.s fr7,@-r15
fmov.s fr8,@-r15
fmov.s fr9,@-r15
fmov.s fr10,@-r15
fmov.s fr11,@-r15
fmov.s fr12,@-r15
fmov.s fr13,@-r15
fmov.s fr14,@-r15
fmov.s fr15,@-r15
sts.l macl,@-r15
sts.l mach,@-r15
sts.l pr,@-r15
mov r4,r3
mov r5,r4
jsr @r3
mov r6,r5
lds.l @r15+,pr
lds.l @r15+,mach
lds.l @r15+,macl
fmov.s @r15+,fr15
fmov.s @r15+,fr14
fmov.s @r15+,fr13
fmov.s @r15+,fr12
fmov.s @r15+,fr11
fmov.s @r15+,fr10
fmov.s @r15+,fr9
fmov.s @r15+,fr8
fmov.s @r15+,fr7
fmov.s @r15+,fr6
fmov.s @r15+,fr5
fmov.s @r15+,fr4
fmov.s @r15+,fr3
fmov.s @r15+,fr2
fmov.s @r15+,fr1
fmov.s @r15+,fr0
mov.l @r15+,r0
lds r0,fpscr
mov.l @(loc_8c1A48DC,pc),r0 ; r0 set to 0x8C1A4864
mov.l @r0,r15
rts
nop
;-------------------------------------------------------------------------------

#align4
loc_8c1A48DC:
#data loc_8c1A4864

loc_8c1A48E0:
#data loc_8c1A4860
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c1A4900:
mov.l r14,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xF0,r15
mov 0x1F,r3 ; r3 set to 0x1F
mov.l r5,@(0x08,r15)
tst r4,r3
bf/s loc_8c1A4916
mov.l r6,@(0x04,r15)
bra loc_8c1A491E
mov r4,r2

loc_8c1A4916:
#data 0x6343
#data 0x7320E2E0
#data 0x2239

loc_8c1A491E:
#data 0x6523
#data 0x1F23D30F
#data 0x66F34500
#data 0xE402430B
#data 0x2EE86E03
#data 0xD30C8B0A
#data 0x430B58F2
#data 0x280264F2
#data 0x64F2D309
#data 0x430B58F1
#data 0x28027404

#align4
loc_8c1A4948:
#data 0x7F1060E3
#data 0x68F64F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c1A4960:
#data bank18.loc_8c18C360

loc_8c1A4964:
#data bank1b.loc_8c1b7980
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c1A4980:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov 0x1F,r3 ; r3 set to 0x1F
mov r5,r14
tst r4,r3
bf/s loc_8c1A499A
mov.l r6,@r15
bra loc_8c1A49A2
mov r4,r2

loc_8c1A499A:
#data 0x6343
#data 0x7320E2E0
#data 0x2239

loc_8c1A49A2:
#data 0xE300
#data 0x2E321F21
#data 0x55F166E3
#data 0x4500D30C
#data 0xE402430B
#data 0x2CC86C03
#data 0xD30A8B0A
#data 0x430B6DE2
#data 0xD30864D3
#data 0x2E0264D3
#data 0x430B68F2
#data 0x28027404

#align4
loc_8c1A49D0:
#data 0x7F0860C3
#data 0x68F64F26
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1A49E0:
#data bank1b.loc_8c1b7940

loc_8c1A49E4:
#data bank1b.loc_8c1b7980
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c1A4A00:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
mov.l @r4,r0
mov.l @(loc_8c1A4A64,pc),r13 ; r13 set to 0x8C1A4E80
cmp/eq 0x11,r0
bf loc_8c1A4A14
bra loc_8c1A4A16
mov.l @(0x18,r13),r14

loc_8c1A4A14:
mov.l @(0x1C,r13),r14

loc_8c1A4A16:
tst r14,r14
bf loc_8c1A4A1E
bra loc_8c1A4C9C
nop

loc_8c1A4A1E:
mov.l @r4,r0
mov.l @(loc_8c1A4A68,pc),r12 ; r12 set to 0x8C1B78E0
cmp/eq 0x11,r0
bt loc_8c1A4A46
cmp/eq 0x12,r0
bt loc_8c1A4A80
cmp/eq 0x13,r0
bt loc_8c1A4A86
cmp/eq 0x19,r0
bt loc_8c1A4A90
cmp/eq 0x18,r0
bt loc_8c1A4A96
cmp/eq 0x17,r0
bt loc_8c1A4A9C
cmp/eq 0x16,r0
bt loc_8c1A4AA2
cmp/eq 0x15,r0
bt loc_8c1A4AE0
bra loc_8c1A4AEA
nop

loc_8c1A4A46:
mov.w @(loc_8c1A4A60,pc),r3 ; r3 set to 0x4000
bra loc_8c1A4A88
nop
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c1A4A60:
#data 0x4000
#data 0x0000

#align4
loc_8c1A4A64:
#data loc_8c1A4E80

loc_8c1A4A68:
#data bank1b.loc_8c1b78E0
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009


loc_8c1A4A80:
mov.l @(loc_8c1A4AC4,pc),r3 ; r3 set to 0x8000
bra loc_8c1A4A88
nop

loc_8c1A4A86:
#data 0x931B


loc_8c1A4A88:
mov.w @(0x1E,r14),r0
or r3,r0
bra loc_8c1A4AEA
mov.w r0,@(0x1E,r14)

loc_8c1A4A90:
mov.w @(0x1E,r14),r0
bra loc_8c1A4AE4
or 0x01,r0

loc_8c1A4A96:
mov.w @(0x1E,r14),r0
bra loc_8c1A4AE4
or 0x02,r0

loc_8c1A4A9C:
mov.w @(0x1E,r14),r0
bra loc_8c1A4AE4
or 0x04,r0

loc_8c1A4AA2:
mov.w @(0x1E,r14),r0
bra loc_8c1A4AE4
or 0x08,r0
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00000100

#align4
loc_8c1A4AC4:
#data 0x00008000
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c1A4AE0:
#data 0xCB1085EF

#align4
loc_8c1A4AE4:
#data 0x4C0B81EF
#data 0x54EC


loc_8c1A4AEA:
mov.w @(0x1C,r14),r0
mov r0,r4
mov.w @(0x1E,r14),r0
mov r4,r5
mov r0,r6
mov.w @(0x1C,r14),r0
and r6,r5
extu.w r0,r0
extu.w r5,r5
cmp/eq r0,r5
bt loc_8c1A4B04
bra loc_8c1A4C9C
nop

loc_8c1A4B04:
mov.l @(0x08,r14),r0
mov 0x08,r6 ; r6 set to 0x08
cmp/eq 0x04,r0
bt/s loc_8c1A4B12
mov 0x00,r4 ; r4 set to 0x00
bra loc_8c1A4C00
nop

loc_8c1A4B12:
mov.l @(0x30,r14),r2
mov 0x00,r3 ; r3 set to 0x00
cmp/hi r3,r2
bt loc_8c1A4B1E
bra loc_8c1A4C00
nop

loc_8c1A4B1E:
mov.l @(0x04,r14),r3
tst r3,r6
bt/s loc_8c1A4B72
mov 0x01,r5 ; r5 set to 0x01
mov.l @(0x30,r14),r1
mov r4,r0
mov.l @(loc_8c1A4BC4,pc),r6 ; r6 set to 0xFFA0002C
add 0xFF,r1
mov.l r1,@(0x30,r14)
mov.l @(0x10,r14),r2
mov.l @(0x34,r14),r3
add r3,r2
mov.l r2,@(0x10,r14)
mov.l @(0x14,r14),r1
mov.l @(0x38,r14),r3
add r3,r1
mov.l r1,@(0x14,r14)
mov.w r0,@(0x1E,r14)
mov.l @r6,r3
mov.l r4,@r6 ; r6 ??? bc r4 is ???
mov.l @(loc_8c1A4BC8,pc),r3 ; r3 set to 0xFFA00020
mov.l @(0x10,r14),r2
mov.l r2,@r3 ; r3 ??? bc r2 is ???
mov.l @(0x0C,r14),r1
mov.l @(loc_8c1A4BCC,pc),r0 ; r0 set to 0xFFA00028
shlr2 r1
shlr2 r1
shlr r1
mov.l r1,@r0 ; r0 ??? bc r1 is ???
mov.w @(loc_8c1A4BC0,pc),r2 ; r2 set to 0x12C1
mov.l r2,@r6
mov.l @(loc_8c1A4BD4,pc),r2 ; r2 set to 0xFFA00040
mov.l @(loc_8c1A4BD0,pc),r1 ; r1 set to 0x8201
mov.l r1,@r2 ; r2 ??
mov.l @(loc_8c1A4BD8,pc),r1 ; r1 set to 0xA05F6800
mov.l @(0x14,r14),r3
mov.l r3,@r1 ; r1 ??? bc r3 is ???
mov.l @(loc_8c1A4BE0,pc),r2 ; r2 set to 0xA05F6808
mov.l @(loc_8c1A4BDC,pc),r3 ; r3 set to 0xA05F6804
mov.l @(0x0C,r14),r0
bra loc_8c1A4BB4
mov.l r0,@r3

loc_8c1A4B72:
mov.l @(0x30,r14),r3
mov r4,r0
add 0xFF,r3
mov.l r3,@(0x30,r14)
mov.l @(0x10,r14),r2
mov.l @(0x34,r14),r3
add r3,r2
mov.l r2,@(0x10,r14)
mov.l @(0x14,r14),r1
mov.l @(0x38,r14),r3
mov.l @(loc_8c1A4BE8,pc),r2 ; r2 set to 0xA05F7C80
add r3,r1
mov.l @(loc_8c1A4BE4,pc),r3 ; r3 set to 0x6702007F
mov.l r1,@(0x14,r14)
mov.w r0,@(0x1E,r14)
mov.l r3,@r2 ; r2 ??
mov.l @(loc_8c1A4BEC,pc),r0 ; r0 set to 0xA05F7C00
mov.l @(0x14,r14),r1
mov.l r1,@r0 ; r0 ??? bc r1 is ???
mov.l @(loc_8c1A4BF0,pc),r1 ; r1 set to 0xA05F7C04
mov.l @(0x10,r14),r3 ; r3 ??? bc r14 is ???
mov.l r3,@r1 ; r1 ??? bc r3 is ???
mov.l @(loc_8c1A4BF4,pc),r3 ; r3 set to 0xA05F7C08
mov.l @(0x0C,r14),r2
mov.l r2,@r3 ; r3 ??? bc r2 is ???
mov.l @(loc_8c1A4BF8,pc),r2 ; r2 set to 0xA05F7C0C
mov.l @(0x3C,r14),r0
mov.l r0,@r2 ; r2 ??? bc r0 is ???
add 0x0C,r1
mov.l r4,@r1
add 0x0C,r3
mov.l r5,@r3
add 0x0C,r2

loc_8c1A4BB4:
bra loc_8c1A4C9C
mov.l r5,@r2
#data 0x00090009
#data 0x00090009

loc_8c1A4BC0:
#data 0x12C1
#data 0x0000

#align4
loc_8c1A4BC4:
#data 0xFFA0002C

#align4
loc_8c1A4BC8:
#data 0xFFA00020

#align4
loc_8c1A4BCC:
#data 0xFFA00028

#align4
loc_8c1A4BD0:
#data 0x00008201

#align4
loc_8c1A4BD4:
#data 0xFFA00040

#align4
loc_8c1A4BD8:
#data 0xA05F6800

#align4
loc_8c1A4BDC:
#data 0xA05F6804

#align4
loc_8c1A4BE0:
#data 0xA05F6808

#align4
loc_8c1A4BE4:
#data 0x6702007F

#align4
loc_8c1A4BE8:
#data 0xA05F7C80

#align4
loc_8c1A4BEC:
#data 0xA05F7C00

#align4
loc_8c1A4BF0:
#data 0xA05F7C04

#align4
loc_8c1A4BF4:
#data 0xA05F7C08

#align4
loc_8c1A4BF8:
#data 0xA05F7C0C
#data 0x00090009


loc_8c1A4C00:
mov.l @(0x20,r14),r0
cmp/eq 0x00,r0
bt loc_8c1A4C12
cmp/eq 0x01,r0
bt loc_8c1A4C2E
cmp/eq 0x02,r0
bt loc_8c1A4C4A
bra loc_8c1A4C64
nop

loc_8c1A4C12:
mov 0x30,r0 ; r0 set to 0x30
mov.w @(r0,r13),r2
add 0xFF,r2
mov.w r2,@(r0,r13)
mov 0x2E,r0 ; r0 set to 0x2E
mov.w @(r0,r13),r3
add 0x01,r3
mov.w r3,@(r0,r13)
mov 0x1F,r3 ; r3 set to 0x1F
mov.w @(r0,r13),r2
and r3,r2
mov.w r2,@(r0,r13)
bra loc_8c1A4C64
mov.l r4,@(0x20,r13)

loc_8c1A4C2E:
mov 0x36,r0 ; r0 set to 0x36
mov.w @(r0,r13),r3
add 0xFF,r3
mov.w r3,@(r0,r13)
mov 0x34,r0 ; r0 set to 0x34
mov.w @(r0,r13),r2
mov 0x1F,r3 ; r3 set to 0x1F
add 0x01,r2
mov.w r2,@(r0,r13)
mov.w @(r0,r13),r2
and r3,r2
mov.w r2,@(r0,r13)
bra loc_8c1A4C64
mov.l r4,@(0x24,r13)

loc_8c1A4C4A:
#data 0xE03C
#data 0x73FF03DD
#data 0xE03A0D35
#data 0xE31F02DD
#data 0x0D257201
#data 0x223902DD
#data 0x1D4A0D25


loc_8c1A4C64:
mov.l @(0x04,r14),r3
tst r3,r6
bt loc_8c1A4C6E
bra loc_8c1A4C70
mov.l r4,@(0x1C,r13)

loc_8c1A4C6E:
#data 0x1D46

#align4
loc_8c1A4C70:
#data 0x6322D223
#data 0x313851E9
#data 0x4108D322
#data 0x41084108
#data 0x430B4100
#data 0x1E09E064
#data 0x51E61E4A
#data 0x89022118
#data 0x430B53E6
#data 0x64E3

loc_8c1A4C96:
#data 0xD21C
#data 0x0009420B


loc_8c1A4C9C:
lds.l @r15+,pr
mov 0x01,r0 ; r0 set to 0x01
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1A4CA8:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @r4,r0
mov.l @(loc_8c1A4D0C,pc),r5 ; r5 set to 0x8C1A4E80
cmp/eq 0x1B,r0
bt/s loc_8c1A4CC0
mov.l @(0x1C,r5),r14
cmp/eq 0x1C,r0
bt loc_8c1A4CCE
bra loc_8c1A4CD8
nop

loc_8c1A4CC0:
mov.l @(0x10,r5),r13
tst r13,r13
bt loc_8c1A4CD8
jsr @r13
mov r14,r4
bra loc_8c1A4CD8
nop

loc_8c1A4CCE:
#data 0x5D55
#data 0x89012DD8
#data 0x64E34D0B


loc_8c1A4CD8:
lds.l @r15+,pr
mov 0x01,r0 ; r0 set to 0x01
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x0009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0xFFD8000C

#align4
loc_8c1A4D04:
#data bank12.loc_8c1291DC

loc_8c1A4D08:
#data bank18.loc_8c18FAE0

loc_8c1A4D0C:
#data loc_8c1A4E80
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c1A4D20:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov.l @(loc_8c1A4DA8,pc),r3 ; r3 set to 0x8C1A7FC0
jsr @r3
mov.l r4,@r15
tst r0,r0
bf loc_8c1A4D38
mov.l @(loc_8c1A4DAC,pc),r0 ; r0 set to 0xEEEE
bra loc_8c1A4D80
nop

loc_8c1A4D38:
mov.l @r15,r4
mov.l @(loc_8c1A4DB0,pc),r14 ; r14 set to 0x8C18C320
mov.l @(0x10,r4),r3
mov r4,r13
add 0x18,r13
add 0x01,r3
mov r3,r5
shll2 r5
mov.l r3,@(0x10,r4)
shll r5
mov.l r3,@(0x04,r15)
mov r13,r3
mov.w @(loc_8c1A4DA0,pc),r4 ; r4 set to 0x140
add 0x30,r3
mov.l r5,@r15
add r3,r5
jsr @r14
mov.l @r5,r5
mov r13,r5
mov.l @r15,r3
mov.w @(loc_8c1A4DA2,pc),r4 ; r4 set to 0x124
add 0x30,r5
add r3,r5
jsr @r14
mov.l @(0x04,r5),r5
mov.w @(loc_8c1A4DA4,pc),r4 ; r4 set to 0x160
mov.l @(loc_8c1A4DB4,pc),r5 ; r5 set to 0x80000000
jsr @r14
nop
mov.w @(loc_8c1A4DA6,pc),r4 ; r4 set to 0x144
add 0x08,r15
lds.l @r15+,pr
mov.l @(loc_8c1A4DB8,pc),r3 ; r3 set to 0x8C18C32A
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8c1A4D80:
add 0x08,r15
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x0009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c1A4DA0:
#data 0x0140

loc_8c1A4DA2:
#data 0x0124

loc_8c1A4DA4:
#data 0x0160

loc_8c1A4DA6:
#data 0x0144

#align4
loc_8c1A4DA8:
#data loc_8c1A7FC0

loc_8c1A4DAC:
#data 0x0000EEEE

#align4
loc_8c1A4DB0:
#data bank18.loc_8c18C320

loc_8c1A4DB4:
#data 0x80000000

#align4
loc_8c1A4DB8:
#data bank18.loc_8c18C32A
#data 0x00000000


loc_8c1A4DC0:
sts.l pr,@-r15
add 0xFC,r15
tst r6,r6
bf/s loc_8c1A4DD4
mov.l r5,@r15
mov.l @(loc_8c1A4E00,pc),r0 ; r0 set to 0xEEEE
add 0x04,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c1A4DD4:
mov.l @(loc_8c1A4E08,pc),r2 ; r2 set to 0x8C17A6E0
mov.l @r15,r5
mov.l @(loc_8c1A4E04,pc),r3 ; r3 set to 0xA4000000
jsr @r2
add r3,r5
mov 0x00,r0 ; r0 set to 0x00
add 0x04,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c1A4E00:
#data 0x0000EEEE

#align4
loc_8c1A4E04:
#data 0xA4000000

#align4
loc_8c1A4E08:
#data bank17.loc_8c17A6E0
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c1A4E20:
sts.l pr,@-r15
add 0xFC,r15
tst r6,r6
bf/s loc_8c1A4E34
mov.l r4,@r15
mov.l @(loc_8c1A4E60,pc),r0 ; r0 set to 0xEEEE
add 0x04,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c1A4E34:
mov.l @(loc_8c1A4E68,pc),r2 ; r2 set to 0x8C17A6E0
mov.l @r15,r4
mov.l @(loc_8c1A4E64,pc),r3 ; r3 set to 0xA5000000
jsr @r2
add r3,r4
mov 0x00,r0 ; r0 set to 0x00
add 0x04,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c1A4E60:
#data 0x0000EEEE

#align4
loc_8c1A4E64:
#data 0xA5000000

#align4
loc_8c1A4E68:
#data bank17.loc_8c17A6E0
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8c1A4E80:
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c1A6E80:
mov.l @r4,r2
mov.l @(loc_8c1A6EA0,pc),r3 ; r3 set to 0xDFFFFFFF
and r3,r2
rts
mov.l r2,@r4
;-------------------------------------------------------------------------------
#data 0x0009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c1A6EA0:
#data 0xDFFFFFFF
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c1A6EC0:
mov.l @r4,r2
mov.l @(loc_8c1A6EE0,pc),r3 ; r3 set to 0x40000000
or r3,r2
rts
mov.l r2,@r4
;-------------------------------------------------------------------------------
#data 0x0009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c1A6EE0:
#data 0x40000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c1A6F00:
mov.l @r4,r2
mov.l @(loc_8c1A6F20,pc),r3 ; r3 set to 0x20000000
or r3,r2
rts
mov.l r2,@r4
;-------------------------------------------------------------------------------
#data 0x0009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c1A6F20:
#data 0x20000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c1A6F40:
mov.l @r4,r2
mov.l @(loc_8c1A6F60,pc),r3 ; r3 set to 0xBFFFFFFF
and r3,r2
rts
mov.l r2,@r4
;-------------------------------------------------------------------------------
#data 0x0009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c1A6F60:
#data 0xBFFFFFFF
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c1A6F80:
mov.l @r15,r3
mov 0x03,r1 ; r1 set to 0x03
and r1,r6
and r1,r3
shll8 r3
shll2 r6
and r1,r7
shll2 r3
shll2 r6
shll8 r7
shll2 r3
or r7,r6
or r3,r6
mov.l @(0x04,r15),r3
and r1,r5
and r1,r3
shll16 r3
or r3,r6
or r5,r6
mov.l @(loc_8c1A6FC0,pc),r5 ; r5 set to 0x100000
or r6,r5 ; r5 ??? bc r6 is ???
mov.l r5,@r4
rts
mov 0x00,r0
;-------------------------------------------------------------------------------
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c1A6FC0:
#data 0x00100000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c1A6FE0:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8c1A7064,pc),r3 ; r3 set to 0x8C1A7FC0
mov r5,r13
mov.l r4,@r15
jsr @r3
mov 0x01,r14 ; r14 set to 0x01
tst r0,r0
bf loc_8c1A6FFC
mov.l @(loc_8c1A7068,pc),r0 ; r0 set to 0xEEEE
bra loc_8c1A702E
nop

#align4
loc_8c1A6FFC:
#data 0x23D8D31B
#data 0x65F28D09
#data 0x23D8D31A
#data 0x7E018D01
#data 0x7E01

loc_8c1A700E:
#data 0xD319
#data 0x8B002D38
#data 0x7E01

loc_8c1A7016:
#data 0x9023
#data 0xD317E107
#data 0x045E2E19
#data 0x4E184E28
#data 0xE0005242
#data 0x22EB2239
#data 0x1422


loc_8c1A702E:
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1A7038:
sts.l pr,@-r15
add 0xF8,r15
mov.l @(loc_8c1A7064,pc),r3 ; r3 set to 0x8C1A7FC0
mov.l r4,@r15
mov.l r5,@(0x04,r15)
jsr @r3
mov.l @r15,r4
tst r0,r0
bf loc_8c1A7080
mov.l @(loc_8c1A7068,pc),r0 ; r0 set to 0xEEEE
add 0x08,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00000088

#align4
loc_8c1A7064:
#data loc_8c1A7FC0

loc_8c1A7068:
#data 0x0000EEEE
#data 0x02000000
#data 0x01000000
#data 0x00400000
#data 0x00FFFFFF
#data 0x00090009


loc_8c1A7080:
mov.l @r15,r4
mov 0x00,r0 ; r0 set to 0x00
mov.l @(0x04,r15),r3
add 0x18,r4
mov.l @(0x24,r4),r2
mov.l r2,@r3
add 0x08,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c1A70A0:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
add 0xE0,r15
mov.l @(loc_8c1A70EC,pc),r3 ; r3 set to 0x8C1C6818
mov r15,r2
add 0x08,r2
mov r5,r13
mov.l @(0x04,r3),r0
mov r15,r5
mov.l @r3,r1
mov r6,r14
mov.l @(loc_8c1A70F0,pc),r12 ; r12 set to 0x8C18DDA0
add 0x08,r5
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
mov r4,r0
mov 0x0C,r1 ; r1 set to 0x0C
cmp/hs r1,r0
bf loc_8c1A70DE
bra loc_8c1A723E
nop

loc_8c1A70DE:
shll r0
mov r0,r1
mova @(loc_8c1A70F4,pc),r0  ; r0 set to 0x8C1A70F4
mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???
braf r0
nop
#data 0x0000

#align4
loc_8c1A70EC:
#data bank1c.loc_8c1c6818

loc_8c1A70F0:
#data bank18.loc_8c18DDA0

loc_8c1A70F4:
#data 0x010C0104
#data 0x01180112
#data 0x012C0124
#data 0x0022013C
#data 0x00800036
#data 0x00D60092
#data 0x89032DD8
#data 0x514364D3
#data 0x2E12A093
#data 0x6022D221
#data 0x2E02A08F
#data 0x89022DD8
#data 0xA07064D3
#data 0xD11E5244
#data 0x20086012
#data 0xD21D8B17
#data 0x6022E401
#data 0x88012049
#data 0xD31A890D
#data 0xC92C6032
#data 0x8B088820
#data 0x89062448
#data 0x6312D117
#data 0x3237E200
#data 0xA071332E
#data 0xD2144321
#data 0xA06E6122
#data 0xD2132E12
#data 0xA06A6022
#data 0x2DD82E02
#data 0x64D38902
#data 0x5242A04B
#data 0x6012D10F
#data 0x2E02A061
#data 0x89022DD8
#data 0xA00464D3
#data 0xD20B5141
#data 0x40086022
#data 0xA056015E
#data 0x00092E12
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x8C3434A0
#data 0x8C3434E8
#data 0x8C343430
#data 0x8C3434A4
#data 0x8C3434EC
#data 0x8C343434
#data 0x00090009
#data 0x00090009
#data 0x89042DD8
#data 0x514B64D3
#data 0xA00E4108
#data 0xD2244100
#data 0x40086022
#data 0x4111015E
#data 0x71078900
#data 0xD3214121
#data 0x41214121
#data 0x00176032
#data 0xA028011A
#data 0xD21D2E12
#data 0xA0246022
#data 0xD11C2E02
#data 0x6212A007
#data 0xA004D018
#data 0xD1176202
#data 0x40086012
#data 0xA018025E
#data 0xE6002E22
#data 0xA00367D3
#data 0xE50065E3
#data 0x67D366E3
#data 0x4C0BD213
#data 0xA00C6422
#data 0x66F30009
#data 0x65F3D210
#data 0x760467D3
#data 0x64224C0B
#data 0x53F162F2
#data 0x031A0237
#data 0x2E32


loc_8c1A723E:
mov 0x00,r0 ; r0 set to 0x00
add 0x20,r15
lds.l @r15+,pr
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
#data 0x8C343434
#data 0x8C3434A0
#data 0x8C3434A4
#data 0x8C343430
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8c1A7280:
#data 0x2FD62FE6
#data 0x7FFC4F22
#data 0xDD15D316
#data 0x430B2F42
#data 0x20086E53
#data 0x64F28910
#data 0x8D0D2EE8
#data 0x62427418
#data 0x2E22ED00
#data 0x1E315341
#data 0x1E225245
#data 0x1E335346
#data 0x1E24524A
#data 0x1E35534B

#align4
loc_8c1A72B8:
#data 0x7F0460D3
#data 0x6DF64F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x0000EEEE

#align4
loc_8c1A72E4:
#data loc_8c1A7FC0
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c1A7300:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8c1A7384,pc),r3 ; r3 set to 0x80800000
mov r4,r13
mov.l @(loc_8c1A7380,pc),r14 ; r14 set to 0x8C343B1C
mov 0x40,r0 ; r0 set to 0x40
mov.l @(loc_8c1A7398,pc),r4 ; r4 set to 0xFF000000
mov.l r3,@(0x08,r14)  ; r14 ??
mov 0x00,r3 ; r3 set to 0x00
mov.l @(loc_8c1A7388,pc),r2 ; r2 set to 0x20800000
mov.l @(loc_8c1A7394,pc),r5 ; r5 set to 0x3727C5AC
mov.l r2,@(0x0C,r14)
mov.l r3,@(0x10,r14)
mov.l @(loc_8c1A73A0,pc),r3 ; r3 set to 0x440C0000
mov.l @(loc_8c1A739C,pc),r2 ; r2 set to 0x43160000
mov.l @(loc_8c1A7390,pc),r6 ; r6 set to 0x43820000
mov.l @(loc_8c1A738C,pc),r7 ; r7 set to 0x40000000
mov.l r7,@(0x14,r14)
mov.l r6,@(0x18,r14)
mov.l r5,@(0x1C,r14)
mov.l r4,@(0x20,r14)
mov.l r2,@(0x24,r14)
mov.l r7,@(0x28,r14)
mov.l r5,@(0x2C,r14)
mov.l r4,@(0x30,r14)
mov.l r3,@(0x34,r14)
mov 0x3C,r3 ; r3 set to 0x3C
mov.l r6,@(0x38,r14)
mov.l r5,@(0x3C,r14)
mov.l r4,@(r0,r14)
mov 0x1C,r0 ; r0 set to 0x1C
mov.l r3,@(0x04,r14)
mov.l @(loc_8c1A73A4,pc),r3 ; r3 set to 0x8C1A7700
fmov.s @(r0,r14),fr4 ; r4 ??? bc r14 is ???
jsr @r3
mov r13,r4
mov.l @(loc_8c1A73A8,pc),r2 ; r2 set to 0x8C1A7038
mov r15,r5 ; r5 ??? bc r15 is ???
jsr @r2
mov r13,r4
mov.l @(loc_8c1A73AC,pc),r3 ; r3 set to 0x8C1A4E20
mov r14,r5
mov.l @(0x04,r14),r6 ; r6 ??? bc r14 is ???
add 0x08,r5
jsr @r3
mov.l @r15,r4
mov.l @(loc_8c1A73B0,pc),r2 ; r2 set to 0x8C1A6FE0
mov.l @(0x08,r14),r5
jsr @r2
mov r13,r4
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x0009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c1A7380:
#data 0x8C343B1C

#align4
loc_8c1A7384:
#data 0x80800000

#align4
loc_8c1A7388:
#data 0x20800000

#align4
loc_8c1A738C:
#data 0x40000000

#align4
loc_8c1A7390:
#data 0x43820000

#align4
loc_8c1A7394:
#data 0x3727C5AC

#align4
loc_8c1A7398:
#data 0xFF000000

#align4
loc_8c1A739C:
#data 0x43160000

#align4
loc_8c1A73A0:
#data 0x440C0000

#align4
loc_8c1A73A4:
#data loc_8c1A7700

loc_8c1A73A8:
#data loc_8c1A7038

loc_8c1A73AC:
#data loc_8c1A4E20

loc_8c1A73B0:
#data loc_8c1A6FE0
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c1A73C0:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xF4,r15
mov 0x00,r14 ; r14 set to 0x00
mov.l @(loc_8c1A7424,pc),r3 ; r3 set to 0x8C1A7FC0
mov r14,r13 ; r13 set to 0x00
mov.l r4,@(0x04,r15)
mov.l r5,@(0x08,r15)
mov.l r6,@r15
jsr @r3
mov.l @(0x04,r15),r4
tst r0,r0
bf loc_8c1A73E2
mov.l @(loc_8c1A7428,pc),r0 ; r0 set to 0xEEEE
bra loc_8c1A7452
nop

loc_8c1A73E2:
mov.l @(0x04,r15),r4
mov 0xE0,r2 ; r2 set to 0xFFFFFFE0
mov.l @r15,r5
add 0x18,r4
mov.l @(0x08,r15),r1
mov.l @(0x18,r4),r6
mov.w @(loc_8c1A7420,pc),r3 ; r3 set to 0xFF00
tst r1,r1
mov.l @r15,r7
add r6,r5
add r3,r5
bt/s loc_8c1A740C
and r2,r7
mov.l @(0x10,r4),r1
cmp/hs r1,r5
bt loc_8c1A7406
bra loc_8c1A7444
mov r7,r5

loc_8c1A7406:
mov.l @(loc_8c1A7428,pc),r13 ; r13 set to 0xEEEE
bra loc_8c1A7444
mov r14,r5

loc_8c1A740C:
mov.l @(0x28,r4),r1
cmp/hi r1,r5
bf loc_8c1A7440
bra loc_8c1A7444
neg r7,r5
#data 0x0009
#data 0x00090009
#data 0x00090009

loc_8c1A7420:
#data 0xFF00
#data 0x0000

#align4
loc_8c1A7424:
#data loc_8c1A7FC0

loc_8c1A7428:
#data 0x0000EEEE
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009


loc_8c1A7440:
mov.l @(loc_8c1A7464,pc),r13 ; r13 set to 0xEEEE
mov r14,r5

loc_8c1A7444:
mov.w @(loc_8c1A7460,pc),r3 ; r3 set to 0xFF00, r3 set to 0xFF00
add r5,r6
mov r6,r2
mov r13,r0 ; r0 set to 0xEEEE
add r3,r2
mov.l r6,@(0x18,r4)
mov.l r2,@(0x14,r4)

loc_8c1A7452:
add 0x0C,r15
lds.l @r15+,pr
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x00090009

loc_8c1A7460:
#data 0xFF00
#data 0x0000

#align4
loc_8c1A7464:
#data 0x0000EEEE
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8c1A7480:
#data 0x25585541
#data 0x8904

loc_8c1A7486:
#data 0x5353
#data 0x23385551
#data 0x8BFA2558

#align4
loc_8c1A7490:
#data 0xE000000B
;-------------------------------------------------------------------------------

#align4
loc_8c1A7494:
#data 0x4F222FE6
#data 0x2EE85E41
#data 0x8908

loc_8c1A749E:
#data 0x53E5
#data 0x89022338
#data 0x430B53E5
#data 0x64E3

loc_8c1A74AA:
#data 0x5EE1
#data 0x8BF62EE8

#align4
loc_8c1A74B0:
#data 0xE0004F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1A74B8:
#data 0xE7005441
#data 0x8D0B2448
#data 0xE001

loc_8c1A74C2:
#data 0x3450
#data 0x24488B05
#data 0x52428903
#data 0x8B003260
#data 0x6703

loc_8c1A74D2:
#data 0x5441
#data 0x8BF42448

#align4
loc_8c1A74D8:
#data 0x6073000B
;-------------------------------------------------------------------------------

#align4
loc_8c1A74DC:
#data 0x2FD62FE6
#data 0x7FFC4F22
#data 0x65E36E53
#data 0x6D432F62
#data 0x64D3BFE4
#data 0x8B0D2008
#data 0x54D12ED2
#data 0x1E411DE1
#data 0x1E3263F2
#data 0x222852E3
#data 0x52E38902
#data 0x64E3420B

#align4
loc_8c1A750C:
#data 0xE400A001

loc_8c1A7510:
#data 0xD40B

loc_8c1A7512:
#data 0x6043
#data 0x4F267F04
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1A751E:
mov.l @(loc_8c1A7544,pc),r2 ; r2 set to 0x8C1A7480
mov 0x00,r6 ; r6 set to 0x00
mov.l @(loc_8c1A7548,pc),r3 ; r3 set to 0x8C1A7494
mov.l r5,@r4
mov.l r2,@(0x08,r4)
mov.l @(loc_8c1A754C,pc),r2 ; r2 set to 0x8C1A74DC
mov.l r3,@(0x10,r4)
mov.l @(loc_8c1A7550,pc),r3 ; r3 set to 0x8C1C6830
mov.l r6,@(0x04,r4)
mov.l r2,@(0x14,r4)
mov.l @(loc_8c1A7554,pc),r2 ; r2 set to 0x8C1C6890
mov.l r3,@(0x04,r5)
mov.l r2,@(0x08,r5)
rts
mov r6,r0
;-------------------------------------------------------------------------------
#data 0x00090009
#data 0x0000EEEE

#align4
loc_8c1A7544:
#data loc_8c1A7480

loc_8c1A7548:
#data loc_8c1A7494

loc_8c1A754C:
#data loc_8c1A74DC

loc_8c1A7550:
#data bank1c.loc_8c1c6830

loc_8c1A7554:
#data bank1c.loc_8c1c6890
#data 0x00000000
#data 0x00000000

#align4
loc_8c1A7560:
#data 0xE100953F
#data 0xE001D620
#data 0x356C973A

#align4
loc_8c1A756C:
#data 0x8F013540
#data 0x6103752C

#align4
loc_8c1A7574:
#data 0x326C9235
#data 0x3522327C
#data 0x000B8BF6
#data 0x6013
;-------------------------------------------------------------------------------

loc_8c1A7582:
mov.l r14,@-r15
tst r4,r4
mov.l r13,@-r15
bt loc_8c1A75D2
mov r4,r6
mov 0x08,r14 ; r14 set to 0x08
mov 0x01,r7 ; r7 set to 0x01
mov 0x00,r4 ; r4 set to 0x00
mov 0x2C,r13 ; r13 set to 0x2C

loc_8c1A7594:
mov.w @(loc_8c1A75E4,pc),r0 ; r0 set to 0x248
mov r7,r2 ; r2 set to 0x01
shad r4, r2 ; r2 ??
mov.l @(r0,r6),r3
tst r3,r2
bf loc_8c1A75C8
mul.l r13,r4 ; r4 ??
mov.l @(r0,r6),r2
mov r7,r3 ; r3 set to 0x01
shad r4, r3 ; r3 ??? bc r4 is ???
or r3,r2
mov.w @(loc_8c1A75E2,pc),r3 ; r3 set to 0x254
sts macl,r7
add r6,r3 ; r3 ??? bc r6 is ???
mov.l r2,@(r0,r6)
add 0x04,r0 ; r0 set to 0x24C
add r7,r3
mov.l r4,@r3
mov.w @(loc_8c1A75E2,pc),r3 ; r3 set to 0x254
mov.l @(r0,r6),r2
add r6,r3 ; r3 ??? bc r6 is ???
add 0x01,r2
add r3,r7 ; r7 ??? bc r3 is ???
mov.l r2,@(r0,r6)
bra loc_8c1A75CE
mov.l r7,@r5

#align4
loc_8c1A75C8:
#data 0x34E37401
#data 0x8BE2


loc_8c1A75CE:
bra loc_8c1A75D4
mov 0x00,r0

loc_8c1A75D2:
mov.l @(loc_8c1A75EC,pc),r0 ; r0 set to 0xEEEE

loc_8c1A75D4:
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x0009
#data 0x00090009
#data 0x0160

loc_8c1A75E2:
#data 0x0254

loc_8c1A75E4:
#data 0x0248
#data 0x0000
#data 0x8C348DF4

#align4
loc_8c1A75EC:
#data 0x0000EEEE
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0xE508E400
#data 0x0467E62C
#data 0x031AD016
#data 0x74010346
#data 0x8BF83453
#data 0xE000000B
;-------------------------------------------------------------------------------
#data 0xE000000B
;-------------------------------------------------------------------------------

loc_8c1A761C:
sts.l pr,@-r15
add 0xFC,r15
bsr loc_8c1A7560
mov.l r4,@r15
tst r0,r0
bf loc_8c1A7632
mov.l @(loc_8c1A7668,pc),r0 ; r0 set to 0xEEEE
add 0x04,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c1A7632:
mov.l @r15,r5
mov 0x01,r2 ; r2 set to 0x01
mov.l @(loc_8c1A766C,pc),r4 ; r4 set to 0x8C348DF4
mov.l @r5,r3
mov.w @(loc_8c1A7660,pc),r0 ; r0 set to 0x248
shad r3, r2 ; r2 ??? bc r3 is ???
mov.l @(r0,r4),r3
not r2,r2
and r2,r3
mov.l r3,@(r0,r4)  ; r4 ??? bc r3 is ???
add 0x04,r0 ; r0 set to 0x24C
mov.l @(r0,r4),r2
add 0xFF,r2
mov.l r2,@(r0,r4)
mov 0x00,r0 ; r0 set to 0x00
add 0x04,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------
#data 0xE000000B
;-------------------------------------------------------------------------------
#data 0x00090009

loc_8c1A7660:
#data 0x0248
#data 0x0000
#data 0x8C349048

#align4
loc_8c1A7668:
#data 0x0000EEEE

#align4
loc_8c1A766C:
#data 0x8C348DF4
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0xE000000B
;-------------------------------------------------------------------------------
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c1A76A0:
sts.l pr,@-r15
mov.l @(loc_8c1A76E0,pc),r3 ; r3 set to 0x8C18C320
mov 0x01,r5 ; r5 set to 0x01
jsr @r3
mov 0x08,r4 ; r4 set to 0x08
mov.l @(loc_8c1A76E0,pc),r2 ; r2 set to 0x8C18C320
mov 0x08,r4 ; r4 set to 0x08
mov 0x00,r5 ; r5 set to 0x00
jmp @r2
lds.l @r15+,pr

loc_8c1A76B4:
sts.l pr,@-r15
mov.l @(loc_8c1A76E0,pc),r3 ; r3 set to 0x8C18C320
mov 0x02,r5 ; r5 set to 0x02
jsr @r3
mov 0x08,r4 ; r4 set to 0x08
mov.l @(loc_8c1A76E0,pc),r2 ; r2 set to 0x8C18C320
mov 0x08,r4 ; r4 set to 0x08
mov 0x00,r5 ; r5 set to 0x00
jmp @r2
lds.l @r15+,pr
#data 0xD3054F22
#data 0x430BE507
#data 0xD203E408
#data 0xE500E408
#data 0x4F26422B
#data 0x00090009

#align4
loc_8c1A76E0:
#data bank18.loc_8c18C320
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c1A7700:
sts.l pr,@-r15
add 0xF8,r15
mov r15,r3
add 0x04,r3
fmov.s fr4,@r3
mov.l @(loc_8c1A7744,pc),r3 ; r3 set to 0x8C1A7FC0
jsr @r3
mov.l r4,@r15
tst r0,r0
bf loc_8c1A771E
mov.l @(loc_8c1A7748,pc),r0 ; r0 set to 0xEEEE
add 0x08,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c1A771E:
mov r15,r3
mov.w @(loc_8c1A7740,pc),r0 ; r0 set to 0x88
mov.l @r15,r4
add 0x04,r3
mov.l @r3,r2
mov.l @(r0,r4),r4
mov 0x00,r0 ; r0 set to 0x00
mov.l r2,@(0x0C,r4)
add 0x08,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------
#data 0x0009
#data 0x00090009
#data 0x00090009

loc_8c1A7740:
#data 0x0088
#data 0x0000

#align4
loc_8c1A7744:
#data loc_8c1A7FC0

loc_8c1A7748:
#data 0x0000EEEE
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c1A7760:
sts.l pr,@-r15
add 0xF8,r15
mov.l r4,@(0x04,r15)
mov.l r5,@r15
mov.l @r15,r3
mov.l @(0x04,r15),r5
extu.b r3,r3
shll8 r5
or r3,r5
mov.l @(loc_8c1A7780,pc),r3 ; r3 set to 0x8C18C320
jsr @r3
mov 0x74,r4 ; r4 set to 0x74
add 0x08,r15
lds.l @r15+,pr
rts
mov 0x00,r0
;-------------------------------------------------------------------------------

#align4
loc_8c1A7780:
#data bank18.loc_8c18C320
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c1A77A0:
sts.l pr,@-r15
add 0xFC,r15
mov r15,r5
mov.l @(loc_8c1A77C0,pc),r3 ; r3 set to 0x7FFFFFFF
mov.l @(loc_8c1A77C4,pc),r2 ; r2 set to 0x8C18C320
fmov.s fr4,@r15
mov.l @r5,r5
and r3,r5
jsr @r2
mov 0x78,r4 ; r4 set to 0x78
add 0x04,r15
lds.l @r15+,pr
rts
mov 0x00,r0
;-------------------------------------------------------------------------------
#data 0x00090009

#align4
loc_8c1A77C0:
#data 0x7FFFFFFF

#align4
loc_8c1A77C4:
#data bank18.loc_8c18C320
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c1A77E0:
mov r4,r0
mov.l @(loc_8c1A7820,pc),r6 ; r6 set to 0x8C1A4E80
cmp/eq 0x00,r0
bt loc_8c1A77F0
cmp/eq 0x01,r0
bt loc_8c1A77F4
bra loc_8c1A77F8
nop

loc_8c1A77F0:
bra loc_8c1A77FE
mov.l r5,@(0x10,r6)

loc_8c1A77F4:
bra loc_8c1A77FE
mov.l r5,@(0x14,r6)

loc_8c1A77F8:
mov.l @(loc_8c1A7824,pc),r0 ; r0 set to 0xEEEE
rts
nop
;-------------------------------------------------------------------------------

loc_8c1A77FE:
mov 0x00,r0 ; r0 set to 0x00
rts
nop
;-------------------------------------------------------------------------------
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c1A7820:
#data loc_8c1A4E80

loc_8c1A7824:
#data 0x0000EEEE
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c1A7840:
rts
mov.l r5,@(0x2C,r4)
;-------------------------------------------------------------------------------

loc_8c1A7844:
rts
mov.l @(0x2C,r4),r0
;-------------------------------------------------------------------------------
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c1A7860:
sts.l pr,@-r15
add 0xF8,r15
mov.l @(loc_8c1A78C4,pc),r3 ; r3 set to 0x8C1A7FC0
mov.l r4,@r15
mov.l r5,@(0x04,r15)
jsr @r3
mov.l @r15,r4
tst r0,r0
bf loc_8c1A787C
mov.l @(loc_8c1A78C8,pc),r0 ; r0 set to 0xEEEE
add 0x08,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

#align4
loc_8c1A787C:
#data 0x64F29020
#data 0x044ED312
#data 0x22395249
#data 0x51491429
#data 0x212BD210
#data 0x50F11419
#data 0x89032008
#data 0xD10E5049
#data 0x1409201B

#align4
loc_8c1A78A0:
#data 0x7F08E000
#data 0x000B4F26
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00000088

#align4
loc_8c1A78C4:
#data loc_8c1A7FC0

loc_8c1A78C8:
#data 0x0000EEEE
#data 0xFFF9FFFF
#data 0x00020000
#data 0x00040000
#data 0x00000000
#data 0x00000000


loc_8c1A78E0:
mov.l r14,@-r15
mov 0x01,r0 ; r0 set to 0x01
mov r4,r14
mov.w @(loc_8c1A7920,pc),r3 ; r3 set to 0x1E0
mov.l @(loc_8c1A7924,pc),r2 ; r2 set to 0x5F8200
mov 0x00,r4 ; r4 set to 0x00
and r3,r5
mov.l r4,@(0x30,r14)
mov 0x07,r1 ; r1 set to 0x07
mov.l r6,@(0x10,r14)
add r2,r5
mov.l r5,@(0x14,r14)
mov.l r7,@(0x0C,r14)
mov.l r1,@(0x08,r14)
mov.l r0,@(0x04,r14)
mov.w @(loc_8c1A7922,pc),r0 ; r0 set to 0x4000
mov.w r0,@(0x1C,r14)
mov r4,r0 ; r0 set to 0x00
mov.w r0,@(0x1E,r14)
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x0009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c1A7920:
#data 0x01E0

loc_8c1A7922:
#data 0x4000

#align4
loc_8c1A7924:
#data 0x005F8200
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c1A7940:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov.l @(loc_8c1A79A0,pc),r3 ; r3 set to 0x8C1A7FC0
mov r5,r14
mov.l r4,@r15
mov.l r6,@(0x04,r15)
jsr @r3
mov.l @r15,r4
tst r0,r0
bt loc_8c1A7982
mov.l @r15,r4
mov.l @(0x0C,r4),r3 ; r3 ??? bc r4 is ???
cmp/hs r3,r14
bt loc_8c1A7982
mov.l @(0x0C,r4),r2
mov r14,r3
add 0x01,r3
cmp/eq r2,r3
bt/s loc_8c1A7970
mov.l @(0x04,r15),r5
mov.l @(loc_8c1A79A4,pc),r1 ; r1 set to 0x10000000
bra loc_8c1A7974
or r1,r5

loc_8c1A7970:
mov.l @(loc_8c1A79A8,pc),r2 ; r2 set to 0xEFFFFFFF
and r2,r5

loc_8c1A7974:
mov r4,r3
shll2 r14
add 0x48,r3
shll r14
add r3,r14
bra loc_8c1A798C
mov.l r5,@r14

loc_8c1A7982:
mov.l @(loc_8c1A79AC,pc),r0 ; r0 set to 0xEEEE
add 0x08,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1A798C:
mov 0x00,r0 ; r0 set to 0x00
add 0x08,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x0009
#data 0x00090009
#data 0x00090009

#align4
loc_8c1A79A0:
#data loc_8c1A7FC0

loc_8c1A79A4:
#data 0x10000000

#align4
loc_8c1A79A8:
#data 0xEFFFFFFF

#align4
loc_8c1A79AC:
#data 0x0000EEEE
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c1A79C0:
sts.l pr,@-r15
add 0xFC,r15
extu.b r4,r5
mov.l r4,@r15
mov.l @(loc_8c1A79E4,pc),r3 ; r3 set to 0x8C18C320
mov.w @(loc_8c1A79E0,pc),r4 ; r4 set to 0x11C
jsr @r3
nop
add 0x04,r15
lds.l @r15+,pr
rts
mov 0x00,r0
;-------------------------------------------------------------------------------
#data 0x00090009
#data 0x00090009

loc_8c1A79E0:
#data 0x011C
#data 0x0000

#align4
loc_8c1A79E4:
#data bank18.loc_8c18C320
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8c1A7A00:
#data 0x7FF84F22
#data 0x1F41D30E
#data 0x430B2F52
#data 0x200854F1
#data 0x63F28902
#data 0x8B042338

#align4
loc_8c1A7A18:
#data 0x7F08D00A
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1A7A22:
#data 0x63F2
#data 0x54F1E000
#data 0x7F081435
#data 0x000B4F26
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c1A7A40:
#data loc_8c1A7FC0
#data 0x0000EEEE
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c1A7A60:
mov.w @(loc_8c1A7A80,pc),r5 ; r5 set to 0x3E0
mov 0xFB,r3 ; r3 set to 0xFFFFFFFB
sts.l pr,@-r15
and r4,r5 ; r5 ??? bc r4 is ???
mov.w @(loc_8c1A7A82,pc),r4 ; r4 set to 0xE4
mov.l @(loc_8c1A7A84,pc),r2 ; r2 set to 0x8C18C320
jsr @r2
shad r3, r5
lds.l @r15+,pr
rts
mov 0x00,r0
;-------------------------------------------------------------------------------
#data 0x0009
#data 0x00090009
#data 0x00090009

loc_8c1A7A80:
#data 0x03E0

loc_8c1A7A82:
#data 0x00E4

#align4
loc_8c1A7A84:
#data bank18.loc_8c18C320
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c1A7AA0:
mov.l @(loc_8c1A7AE0,pc),r3 ; r3 set to 0x10000000
mov r4,r1
mov.l r5,@(0x30,r1)
mov.l r6,@(0x10,r1)
mov.l r3,@(0x14,r1)
mov 0x09,r3 ; r3 set to 0x09
mov.l r7,@(0x0C,r1)
mov.l @r15,r2
mov.l r2,@(0x08,r1)
mov.l r3,@(0x04,r1)
mov.w @(0x04,r15),r0
mov.l @(loc_8c1A7AE4,pc),r3 ; r3 set to 0x8000
or r3,r0
mov.w r0,@(0x1C,r1)
mov 0x00,r0 ; r0 set to 0x00
rts
mov.w r0,@(0x1E,r1)
;-------------------------------------------------------------------------------
#data 0x0009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c1A7AE0:
#data 0x10000000

#align4
loc_8c1A7AE4:
#data 0x00008000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c1A7B00:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8c1A7B90,pc),r3 ; r3 set to 0x8C1A7FC0
jsr @r3
mov.l r4,@r15
tst r0,r0
bf loc_8c1A7B18
mov.l @(loc_8c1A7B94,pc),r0 ; r0 set to 0xEEEE
bra loc_8c1A7B6C
nop

loc_8c1A7B18:
mov.l @r15,r4
mov 0x00,r3 ; r3 set to 0x00
mov.l @(loc_8c1A7B98,pc),r14 ; r14 set to 0x8C18C320
mov 0x01,r5 ; r5 set to 0x01
mov r4,r13
add 0x18,r13
mov.l r3,@(0x10,r4)
jsr @r14
mov 0x08,r4 ; r4 set to 0x08
mov 0x00,r5 ; r5 set to 0x00
jsr @r14
mov 0x08,r4 ; r4 set to 0x08
mov.w @(loc_8c1A7B80,pc),r4 ; r4 set to 0x13C
jsr @r14
mov.l @(0x20,r13),r5 ; r5 ??? bc r13 is ???
mov.w @(loc_8c1A7B82,pc),r4 ; r4 set to 0x140
jsr @r14
mov.l @(0x30,r13),r5
mov.w @(loc_8c1A7B84,pc),r4 ; r4 set to 0x124
jsr @r14
mov.l @(0x10,r13),r5
mov.w @(loc_8c1A7B86,pc),r4 ; r4 set to 0x128
jsr @r14
mov.l @(0x08,r13),r5
mov.w @(loc_8c1A7B88,pc),r4 ; r4 set to 0x12C
jsr @r14
mov.l @(0x18,r13),r5
mov.w @(loc_8c1A7B8A,pc),r4 ; r4 set to 0x130
jsr @r14
mov.l @(0x14,r13),r5
mov.w @(loc_8c1A7B8C,pc),r4 ; r4 set to 0x164
jsr @r14
mov.l @(0x1C,r13),r5
mov.w @(loc_8c1A7B8E,pc),r4 ; r4 set to 0x144
mov.l @(loc_8c1A7B9C,pc),r5 ; r5 set to 0x80000000
jsr @r14
nop
mov.l @(loc_8c1A7BA0,pc),r2 ; r2 set to 0x8C18C32A
mov.w @(loc_8c1A7B8E,pc),r4 ; r4 set to 0x144
jsr @r2
nop
mov 0x00,r0 ; r0 set to 0x00

loc_8c1A7B6C:
add 0x04,r15
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x0009
#data 0x00090009
#data 0x00090009

loc_8c1A7B80:
#data 0x013C

loc_8c1A7B82:
#data 0x0140

loc_8c1A7B84:
#data 0x0124

loc_8c1A7B86:
#data 0x0128

loc_8c1A7B88:
#data 0x012C

loc_8c1A7B8A:
#data 0x0130

loc_8c1A7B8C:
#data 0x0164

loc_8c1A7B8E:
#data 0x0144

#align4
loc_8c1A7B90:
#data loc_8c1A7FC0

loc_8c1A7B94:
#data 0x0000EEEE

#align4
loc_8c1A7B98:
#data bank18.loc_8c18C320

loc_8c1A7B9C:
#data 0x80000000

#align4
loc_8c1A7BA0:
#data bank18.loc_8c18C32A
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8c1A7BC0:
#data 0x2FD62FE6
#data 0x4F222FC6
#data 0xD32F7FF4
#data 0x1F512F42
#data 0x430B1F62
#data 0x200864F2
#data 0xD22C8903
#data 0x23386322
#data 0x8902

loc_8c1A7BE2:
#data 0xD02B
#data 0x0009A03F

#align4
loc_8c1A7BE8:
#data 0x64F2904A
#data 0x6C430D4E
#data 0xD4289047
#data 0x054E53D9
#data 0x0436633D
#data 0x3520024E
#data 0x7C188D03
#data 0x410BD124
#data 0x0009

loc_8c1A7C0A:
#data 0x53F2
#data 0x4308DE23
#data 0x43094308
#data 0x43094309
#data 0x55C32F32
#data 0xE42C4E0B
#data 0x4E0B55C2
#data 0x942DE420
#data 0x55D94E0B
#data 0x4E0B55D1
#data 0x9428E448
#data 0x55D24E0B
#data 0xE3F09422
#data 0x4E0B55D3
#data 0x55D52539
#data 0xE4684E0B
#data 0x4E0B55D6
#data 0x65F2E46C
#data 0xE44C4E0B
#data 0xD31255F1
#data 0x4E0B353C
#data 0xE501E460
#data 0xE4144E0B
#data 0xE000

loc_8c1A7C66:
#data 0x7F0C
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x00096EF6
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x03B40088
#data 0x008C00F4

#align4
loc_8c1A7C88:
#data loc_8c1A7FC0
#data 0x8C3434E8
#data 0x0000EEEE
#data 0x8C348DF4

#align4
loc_8c1A7C98:
#data loc_8c1A76B4

loc_8c1A7C9C:
#data bank18.loc_8c18C320
#data 0x01000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8c1A7CC0:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x7FF84F22
#data 0x1F41D32E
#data 0x430B2F52
#data 0x200854F1
#data 0x63F28902
#data 0x8B022338

#align4
loc_8c1A7CE0:
#data 0xA03BD02A
#data 0x0009

loc_8c1A7CE6:
#data 0x904B
#data 0x6CF254F1
#data 0x6B430D4E
#data 0xD4279047
#data 0x054E53D9
#data 0x0436633D
#data 0x3520024E
#data 0x7B188D03
#data 0x410BD123
#data 0x0009

loc_8c1A7D0A:
#data 0x55B3
#data 0x4E0BDE22
#data 0x55B2E42C
#data 0xE4204E0B
#data 0x4E0B9434
#data 0x55D155D9
#data 0xE4484E0B
#data 0x4E0B942F
#data 0x942955D2
#data 0x55D3E3F0
#data 0x25394E0B
#data 0x4E0B55D5
#data 0x55D6E468
#data 0xE46C4E0B
#data 0x4E0B55CB
#data 0xD315E44C
#data 0x22286232
#data 0x55C78B02
#data 0xE4604E0B

#align4
loc_8c1A7D54:
#data 0x4E0BE501
#data 0xE000E414

#align4
loc_8c1A7D5C:
#data 0x4F267F08
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00096EF6
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x03B40088
#data 0x008C00F4

#align4
loc_8c1A7D88:
#data loc_8c1A7FC0
#data 0x0000EEEE
#data 0x8C348DF4

#align4
loc_8c1A7D94:
#data loc_8c1A76B4

loc_8c1A7D98:
#data bank18.loc_8c18C320
#data 0x8C3434E8


loc_8c1A7DA0:
mov.l @(loc_8c1A7DC0,pc),r5 ; r5 set to 0x8C34380C
mov r4,r6
shll2 r6
mov r5,r2 ; r2 set to 0x8C34380C
mov.l @(0x04,r5),r3
add 0x08,r2 ; r2 set to 0x8C343814
shll r6
add r6,r2 ; r2 ??? bc r6 is ???
mov.l r3,@r2
mov r5,r2 ; r2 set to 0x8C34380C
add 0x08,r2 ; r2 set to 0x8C343814
add r2,r6
mov 0x00,r4 ; r4 set to 0x00
mov.l r4,@(0x04,r6)
rts
mov r4,r0
;-------------------------------------------------------------------------------

#align4
loc_8c1A7DC0:
#data 0x8C34380C
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c1A7DE0:
mov.l @(loc_8c1A7E48,pc),r7 ; r7 set to 0xEEEE
mov r5,r0
cmp/eq 0x00,r0
mov.l r14,@-r15
mov.l @r4,r6
bt/s loc_8c1A7E7A
mov 0x00,r14 ; r14 set to 0x00
cmp/eq 0x01,r0
bt loc_8c1A7E02
cmp/eq 0x02,r0
bt loc_8c1A7E7A
cmp/eq 0x03,r0
bt loc_8c1A7E14
cmp/eq 0x04,r0
bt loc_8c1A7E64
bra loc_8c1A7E7A
nop

loc_8c1A7E02:
mov.w @(loc_8c1A7E40,pc),r3 ; r3 set to 0x3000
tst r6,r3
bt loc_8c1A7E10
mov.w @(loc_8c1A7E42,pc),r1 ; r1 set to 0xFF4F
and r1,r6
bra loc_8c1A7E70
mov 0x40,r3

loc_8c1A7E10:
bra loc_8c1A7E7C
mov r7,r5

loc_8c1A7E14:
mov 0x30,r3 ; r3 set to 0x30
tst r6,r3
bt loc_8c1A7E60
mov.w @(loc_8c1A7E44,pc),r3 ; r3 set to 0x4000
mov.l @(loc_8c1A7E4C,pc),r1 ; r1 set to 0xFFFF4FFF
bra loc_8c1A7E70
and r1,r6
#data 0x0009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c1A7E40:
#data 0x3000

loc_8c1A7E42:
#data 0xFF4F

loc_8c1A7E44:
#data 0x4000
#data 0x0000

#align4
loc_8c1A7E48:
#data 0x0000EEEE

#align4
loc_8c1A7E4C:
#data 0xFFFF4FFF
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009


loc_8c1A7E60:
bra loc_8c1A7E7C
mov r7,r5

#align4
loc_8c1A7E64:
#data 0x2268921C
#data 0xD10E8905
#data 0x2619D30E


loc_8c1A7E70:
or r3,r6
bra loc_8c1A7E7C
mov r14,r5

loc_8c1A7E76:
#data 0xA001
#data 0x6573


loc_8c1A7E7A:
mov r7,r5

loc_8c1A7E7C:
mov r5,r0
mov.l r6,@r4
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00000300
#data 0xFFFCFFFF
#data 0x00040000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c1A7EC0:
sts.l pr,@-r15
add 0xFC,r15
mov r4,r5
mov.l r4,@r15
mov.l @(loc_8c1A7F04,pc),r3 ; r3 set to 0x8C18C320
mov.w @(loc_8c1A7F00,pc),r4 ; r4 set to 0xBC
jsr @r3
nop
add 0x04,r15
lds.l @r15+,pr
rts
mov 0x00,r0
;-------------------------------------------------------------------------------

loc_8c1A7ED8:
sts.l pr,@-r15
add 0xFC,r15
mov r4,r5
mov.l r4,@r15
mov.l @(loc_8c1A7F04,pc),r3 ; r3 set to 0x8C18C320
mov.w @(loc_8c1A7F02,pc),r4 ; r4 set to 0xC0
jsr @r3
nop
add 0x04,r15
lds.l @r15+,pr
rts
mov 0x00,r0
;-------------------------------------------------------------------------------
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c1A7F00:
#data 0x00BC

loc_8c1A7F02:
#data 0x00C0

#align4
loc_8c1A7F04:
#data bank18.loc_8c18C320
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c1A7F20:
sts.l pr,@-r15
add 0xF4,r15
mov.l @(loc_8c1A7FA4,pc),r3 ; r3 set to 0x8C1A7FC0
mov.l r4,@r15
mov.l r5,@(0x04,r15)
mov.l r6,@(0x08,r15)
jsr @r3
mov.l @r15,r4
tst r0,r0
bf loc_8c1A7F3E
mov.l @(loc_8c1A7FA8,pc),r0 ; r0 set to 0xEEEE
add 0x0C,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c1A7F3E:
mov.w @(loc_8c1A7FA2,pc),r5 ; r5 set to 0x7FF
mov.l @(0x08,r15),r3
mov.l @(0x04,r15),r2
mov.l @r15,r4
and r5,r3
mov.w @(loc_8c1A7FA0,pc),r0 ; r0 set to 0x88
and r5,r2
shll16 r3
mov.l @(r0,r4),r4
or r2,r3
mov 0x00,r0 ; r0 set to 0x00
mov.l r3,@(0x14,r4)
add 0x0C,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c1A7F5E:
sts.l pr,@-r15
add 0xF4,r15
mov.l @(loc_8c1A7FA4,pc),r3 ; r3 set to 0x8C1A7FC0
mov.l r4,@r15
mov.l r5,@(0x04,r15)
mov.l r6,@(0x08,r15)
jsr @r3
mov.l @r15,r4
tst r0,r0
bf loc_8c1A7F7C
mov.l @(loc_8c1A7FA8,pc),r0 ; r0 set to 0xEEEE
add 0x0C,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c1A7F7C:
mov.w @(loc_8c1A7FA2,pc),r5 ; r5 set to 0x7FF
mov.l @(0x08,r15),r3
mov.l @(0x04,r15),r2
mov.l @r15,r4
and r5,r3
mov.w @(loc_8c1A7FA0,pc),r0 ; r0 set to 0x88
and r5,r2
shll16 r3
mov.l @(r0,r4),r4
or r2,r3
mov 0x00,r0 ; r0 set to 0x00
mov.l r3,@(0x18,r4)
add 0x0C,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------
#data 0x00090009

loc_8c1A7FA0:
#data 0x0088

loc_8c1A7FA2:
#data 0x07FF

#align4
loc_8c1A7FA4:
#data loc_8c1A7FC0

loc_8c1A7FA8:
#data 0x0000EEEE
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c1A7FC0:
mov.l @(loc_8c1A8004,pc),r5 ; r5 set to 0x8C348DF4
mov 0x00,r6 ; r6 set to 0x00
mov.l r14,@-r15
mov r6,r2 ; r2 set to 0x00
mov.l r13,@-r15
mov r6,r14 ; r14 set to 0x00
mov.l @(0x0C,r5),r3
mov.w @(loc_8c1A8000,pc),r13 ; r13 set to 0x8C
cmp/hs r3,r2
bt/s loc_8c1A7FF0
mov 0x01,r7 ; r7 set to 0x01

loc_8c1A7FD6:
mul.l r13,r6 ; r6 ??
mov r5,r3 ; r3 set to 0x8C348DF4
add 0x18,r3 ; r3 set to 0x8C348E0C
sts macl,r0
add r3,r0
cmp/eq r0,r4
bf loc_8c1A7FE8
bra loc_8c1A7FF0
mov r7,r14

#align4
loc_8c1A7FE8:
#data 0x76015253
#data 0x8BF23622


loc_8c1A7FF0:
mov.l @r15+,r13
mov r14,r0
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x00090009
#data 0x00090009

loc_8c1A8000:
#data 0x008C
#data 0x0000

#align4
loc_8c1A8004:
#data 0x8C348DF4
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x7FFC4F22
#data 0x2F426543
#data 0x9449D327
#data 0x0009430B
#data 0x4F267F04
#data 0xE000000B
;-------------------------------------------------------------------------------

#align4
loc_8c1A8038:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x4F222F86
#data 0xDA1F7FF8
#data 0xD21FEE00
#data 0x2FE2ED01
#data 0x23D86322
#data 0xD11D8908
#data 0x60129430
#data 0x1FE12F02
#data 0x65F24A0B
#data 0x2F2252F1

#align4
loc_8c1A806C:
#data 0x6032D317
#data 0x890EC802
#data 0x6CE39D26
#data 0x6BE39923

#align4
loc_8c1A807C:
#data 0x05CED015
#data 0x64D34A0B
#data 0x3B937B01
#data 0x8FF77D04
#data 0xA06D7C04
#data 0x0009

loc_8c1A8092:
#data 0xD10E
#data 0xC8046012
#data 0xD2118968
#data 0xD80EDA0F
#data 0x20086022
#data 0xEB208D41
#data 0x6CE3A03D
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x04000108
#data 0x00001000

#align4
loc_8c1A80C8:
#data bank18.loc_8c18C320
#data 0x8C344BFC
#data 0x8C344C08
#data 0x8C343BFC

#align4
loc_8c1A80D8:
#data bank17.loc_8c17A6E0
#data 0xA05F9000
#data 0x8C344C00
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c1A8100:
#data 0x62D3D128
#data 0x631242CC
#data 0x890B2238
#data 0x490869C3
#data 0xD3254908
#data 0x64936593
#data 0x44084508
#data 0x353CE640
#data 0x34AC480B

loc_8c1A8124:
#data 0x7C01

loc_8c1A8126:
#data 0x3CB3
#data 0x8BEA

loc_8c1A812A:
#data 0xD320
#data 0x22286232
#data 0xA0158918
#data 0x6CE3

loc_8c1A8136:
#data 0xD11D
#data 0x43CC63D3
#data 0x23286212
#data 0x69C3890D
#data 0x4908932C
#data 0x4908D217
#data 0x6593393C
#data 0x45086493
#data 0xE6404408
#data 0x480B352C
#data 0x34AC

loc_8c1A815E:
#data 0x7C01

#align4
loc_8c1A8160:
#data 0x8BE83CB3

#align4
loc_8c1A8164:
#data 0x22E2D20F
#data 0x23E2D310

#align4
loc_8c1A816C:
#data 0x22E2D210
#data 0x7F0860F2
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
#data 0x00000200
#data 0x8C344C00
#data 0x8C343BFC
#data 0x8C344C04
#data 0x8C344BFC
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x2FD62FE6
#data 0x6C632FC6
#data 0x4C152FB6
#data 0xE6002FA6
#data 0x4F222F96
#data 0x69638F1A
#data 0x63439232
#data 0x332733CC
#data 0x44118914
#data 0x932C8B12
#data 0xDA166E43
#data 0x4C154E08
#data 0x6B63ED00
#data 0x8F0A3E3C
#data 0x65D63D5C
#data 0x64E34A0B
#data 0x3BC37B01
#data 0x7E048FF9
#data 0x0009A001
#data 0x4F26E912
#data 0x69F66093
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x000BD009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x10000400

#align4
loc_8c1A8244:
#data bank18.loc_8c18C320
#data 0x0000EEEE
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x7FF84F22
#data 0x2F42D317
#data 0x430B1F51
#data 0x200864F2
#data 0xD0158B04
#data 0x4F267F08
#data 0x0009000B
;-------------------------------------------------------------------------------
#data 0x64F29020
#data 0x50F1054E
#data 0x8D0C8803
#data 0x8800E601
#data 0x8801892E
#data 0x88028909
#data 0x88048924
#data 0x88058924
#data 0xA0258924
#data 0xA0240009
#data 0xA022E403
#data 0x0009E400
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00000088

#align4
loc_8c1A82C4:
#data loc_8c1A7FC0
#data 0x0000EEEE
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0xE402A005
#data 0xE404A003
#data 0xE406A001
#data 0x52516463
#data 0xE3F8E107
#data 0x22392419
#data 0xE000224B
#data 0x7F081521
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1A8306:
sts.l pr,@-r15
add 0xF8,r15
mov.l @(loc_8c1A8340,pc),r3 ; r3 set to 0x8C1A7FC0
mov.l r4,@r15
mov.l r5,@(0x04,r15)
jsr @r3
mov.l @r15,r4
tst r0,r0
bf loc_8c1A8360
mov.l @(loc_8c1A8344,pc),r0 ; r0 set to 0xEEEE
add 0x08,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------
#data 0x0009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c1A8340:
#data loc_8c1A7FC0

loc_8c1A8344:
#data 0x0000EEEE
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009


loc_8c1A8360:
mov.w @(loc_8c1A83A0,pc),r0 ; r0 set to 0x88
mov.l @r15,r4
mov.l @(0x04,r15),r3
mov.l @(r0,r4),r4
tst r3,r3
bt loc_8c1A8374
mov.l @(0x04,r4),r0 ; r0 ??? bc r4 is ???
or 0x08,r0
bra loc_8c1A837C
mov.l r0,@(0x04,r4)

loc_8c1A8374:
mov.l @(0x04,r4),r2
mov 0xF7,r3 ; r3 set to 0xFFFFFFF7
and r3,r2
mov.l r2,@(0x04,r4)

loc_8c1A837C:
mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00
add 0x08,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------
#data 0x0009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c1A83A0:
#data 0x0088
#data 0x0000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c1A83C0:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xE4,r15
mov r6,r12
mov.l r4,@(0x0C,r15)
mov 0x1F,r6 ; r6 set to 0x1F
mov r7,r0
mov.w r0,@(0x08,r15)
mov.l @r12,r4
mov r4,r10
tst r6,r10
bf/s loc_8c1A83EA
mov r5,r11
bra loc_8c1A83F0
mov r4,r10

loc_8c1A83EA:
mov 0xE0,r3 ; r3 set to 0xFFFFFFE0
add 0x20,r10
and r3,r10

loc_8c1A83F0:
tst r6,r11
bf loc_8c1A83F8
bra loc_8c1A83FE
mov r5,r11

loc_8c1A83F8:
mov 0xE0,r3 ; r3 set to 0xFFFFFFE0
add 0x20,r11
and r3,r11

loc_8c1A83FE:
mov.w @(0x08,r15),r0
mov r11,r8
mov.l @(loc_8c1A8500,pc),r9 ; r9 set to 0x8C1C9B20
add r10,r8
mov r0,r4
shll2 r4
shll2 r4
mov r9,r3 ; r3 set to 0x8C1C9B20
add 0x24,r3 ; r3 set to 0x8C1C9B44
mov.l r4,@(0x04,r15)
add r3,r4
mov.l @(0x08,r4),r4
mov 0x00,r6 ; r6 set to 0x00
tst r4,r4
bt/s loc_8c1A8444
mov r6,r14 ; r14 set to 0x00

loc_8c1A841E:
mov.l @(0x0C,r4),r5
cmp/hi r10,r5
bt loc_8c1A843E
mov.l @(0x10,r4),r2
add r5,r2
cmp/hi r10,r2
bf loc_8c1A843E
cmp/hi r8,r5
bt loc_8c1A843E
mov.l @(0x10,r4),r3 ; r3 ??? bc r4 is ???
add r5,r3
cmp/hs r8,r3
bf loc_8c1A843E
mov r4,r14 ; r14 ??? bc r4 is ???
bra loc_8c1A8440
mov r6,r4

loc_8c1A843E:
#data 0x5442

#align4
loc_8c1A8440:
#data 0x8BEC2448


loc_8c1A8444:
tst r14,r14
bf loc_8c1A844C
bra loc_8c1A8586
nop

loc_8c1A844C:
mov.l @(0x10,r14),r2
cmp/eq r11,r2
bf loc_8c1A849E
mov r9,r5
mov.l @(0x04,r15),r3
add 0x24,r5
mov r14,r6
add r3,r5
mov.l r5,@r15
add 0x0C,r5
mov.l @r15,r4
bsr loc_8c1A8A10
add 0x08,r4
mov r9,r5
mov.l @(0x04,r15),r3
add 0x24,r5
mov r14,r6
add r3,r5
mov.l r5,@r15
add 0x04,r5
bsr loc_8c1A89D0
mov.l @r15,r4
mov.l @(0x0C,r14),r2
mov 0x01,r3 ; r3 set to 0x01
mov.l r2,@r12
mov.l r12,@(0x14,r14)
mov.w r3,@r14
mov.w @(0x08,r15),r0
tst r0,r0
bf loc_8c1A848E
mov.w @r14,r0
bra loc_8c1A8492
or 0x40,r0

loc_8c1A848E:
mov.w @r14,r0
or 0x80,r0

loc_8c1A8492:
mov.w r0,@r14
mov.w @r14,r2
mov.l @(0x0C,r15),r3
or r3,r2
bra loc_8c1A85F8
mov.w r2,@r14

loc_8c1A849E:
mov.l @(0x0C,r14),r3
cmp/eq r10,r3
bf loc_8c1A8520
bsr loc_8c1A8904
nop
mov r0,r13
tst r13,r13
bf loc_8c1A84B2
bra loc_8c1A8586
nop

loc_8c1A84B2:
mov r9,r5
add 0x24,r5
mov.l @(0x0C,r14),r2
mov r13,r6
mov.l r2,@(0x0C,r13)
mov.l r11,@(0x10,r13)
mov.l @(0x10,r14),r4
sub r11,r4
mov.l r4,@(0x10,r14)
mov.l @(0x0C,r14),r3
add r11,r3
mov.l r3,@(0x0C,r14)
mov.l @(0x04,r15),r3
add r3,r5
mov.l r5,@r15
add 0x04,r5
bsr loc_8c1A89D0
mov.l @r15,r4
mov.l @(0x0C,r13),r2
mov 0x01,r3 ; r3 set to 0x01
mov.l r2,@r12
mov.l r12,@(0x14,r13)
mov.w r3,@r13
mov.w @(0x08,r15),r0
tst r0,r0
bf loc_8c1A84EC
mov.w @r13,r0
bra loc_8c1A84F0
or 0x40,r0

loc_8c1A84EC:
mov.w @r13,r0
or 0x80,r0

loc_8c1A84F0:
mov.w r0,@r13
mov.w @r13,r2
mov.l @(0x0C,r15),r3
or r3,r2
bra loc_8c1A85F8
mov.w r2,@r13
#data 0x00090009

#align4
loc_8c1A8500:
#data bank1c.loc_8c1c9B20
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009


loc_8c1A8520:
mov.l @(0x0C,r14),r1
mov.l @(0x10,r14),r3
add r3,r1
cmp/eq r8,r1
bf loc_8c1A856E
bsr loc_8c1A8904
nop
mov r0,r13
tst r13,r13
bt loc_8c1A8586
mov r9,r5
add 0x24,r5
mov.l @(0x10,r14),r4
mov r13,r6
sub r11,r4
mov.l r4,@(0x10,r14)
mov.l r10,@(0x0C,r13)
mov.l r11,@(0x10,r13)
mov.l @(0x04,r15),r3
add r3,r5
mov.l r5,@r15
add 0x04,r5
bsr loc_8c1A89D0
mov.l @r15,r4
mov.l @(0x0C,r13),r2
mov 0x01,r3 ; r3 set to 0x01
mov.l r2,@r12
mov.l r12,@(0x14,r13)
mov.w r3,@r13
mov.w @(0x08,r15),r0
tst r0,r0
bf loc_8c1A8566
mov.w @r13,r0
bra loc_8c1A856A
or 0x40,r0

loc_8c1A8566:
mov.w @r13,r0
or 0x80,r0

loc_8c1A856A:
bra loc_8c1A85F0
mov.w r0,@r13

loc_8c1A856E:
#data 0xB1C9
#data 0x6D030009
#data 0x89062DD8
#data 0x0009B1C4
#data 0x8F042008
#data 0xB2032F02
#data 0x64D3


loc_8c1A8586:
bra loc_8c1A85FA
mov 0x03,r0

loc_8c1A858A:
#data 0x53E4
#data 0x75246593
#data 0x1F3562A3
#data 0x53E366D3
#data 0x63233238
#data 0x1E241F24
#data 0x1DB41DA3
#data 0x353C53F1
#data 0x75041F56
#data 0x54F6B210
#data 0x669362F2
#data 0x12837624
#data 0x51F452F5
#data 0x63F232B8
#data 0x13243218
#data 0x363C53F1
#data 0x54F41F64
#data 0x566365F2
#data 0x740CB210
#data 0xE30152D3
#data 0x1DC52C22
#data 0x85F42D31
#data 0x8B022008
#data 0xA00260D1
#data 0xCB40

loc_8c1A85EA:
#data 0x60D1
#data 0xCB80

loc_8c1A85EE:
#data 0x2D01

#align4
loc_8c1A85F0:
#data 0x53F362D1
#data 0x2D21223B

loc_8c1A85F8:
#data 0xE000


loc_8c1A85FA:
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

loc_8c1A860E:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xF8,r15
mov 0x1F,r12 ; r12 set to 0x1F
mov.l r4,@(0x04,r15)
tst r5,r12
mov r6,r11
bf/s loc_8c1A8630
mov r7,r8
bra loc_8c1A8638
mov r5,r12

loc_8c1A8630:
mov r5,r12
mov 0xE0,r3 ; r3 set to 0xFFFFFFE0
add 0x20,r12
and r3,r12

loc_8c1A8638:
mov.l @(loc_8c1A8660,pc),r10 ; r10 set to 0x8C1C9B20
exts.w r8,r9
shll2 r9
mov r10,r4 ; r4 set to 0x8C1C9B20
add 0x24,r4 ; r4 set to 0x8C1C9B44
shll2 r9
add r9,r4 ; r4 ??? bc r9 is ???
mov.l @(0x08,r4),r4
mov 0x00,r5 ; r5 set to 0x00
tst r4,r4
bt/s loc_8c1A8686
mov r5,r14 ; r14 set to 0x00

loc_8c1A8650:
mov.l @(0x10,r4),r2
cmp/hs r12,r2
bf loc_8c1A8680
mov r4,r14 ; r14 ??? bc r4 is ???
bra loc_8c1A8682
mov r5,r4
#data 0x00090009

#align4
loc_8c1A8660:
#data bank1c.loc_8c1c9B20
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c1A8680:
#data 0x5442

loc_8c1A8682:
#data 0x2448
#data 0x8BE4


loc_8c1A8686:
tst r14,r14
bt loc_8c1A86E2
mov.l @(0x10,r14),r3
cmp/eq r12,r3
bf loc_8c1A86D8
mov r10,r5
add 0x24,r5
add r9,r5
mov r14,r6
mov.l r5,@r15
add 0x0C,r5
mov.l @r15,r4
bsr loc_8c1A8A10
add 0x08,r4
mov r10,r5
add 0x24,r5
add r9,r5
mov r14,r6
mov.l r5,@r15
add 0x04,r5
bsr loc_8c1A89D0
mov.l @r15,r4
mov.l @(0x0C,r14),r2
exts.w r8,r8
tst r8,r8
mov 0x01,r3 ; r3 set to 0x01
mov.l r2,@r11
mov.l r11,@(0x14,r14)
bf/s loc_8c1A86C8
mov.w r3,@r14
mov.w @r14,r0
bra loc_8c1A86CC
or 0x10,r0

loc_8c1A86C8:
mov.w @r14,r0
or 0x20,r0

loc_8c1A86CC:
mov.w r0,@r14
mov.w @r14,r2
mov.l @(0x04,r15),r3
or r3,r2
bra loc_8c1A8728
mov.w r2,@r14

#align4
loc_8c1A86D8:
#data 0x0009B114
#data 0x2DD86D03
#data 0x8B01


loc_8c1A86E2:
bra loc_8c1A872A
mov 0x03,r0

loc_8c1A86E6:
#data 0x65A3
#data 0x53E37524
#data 0x66D3359C
#data 0x1DC41D33
#data 0x34C854E4
#data 0x52E31E44
#data 0x1E2332CC
#data 0x75042F52
#data 0x64F2B164
#data 0x688F52D3
#data 0x2B222888
#data 0x1DB58F03
#data 0xA00260D1
#data 0xCB10

loc_8c1A871A:
#data 0x60D1
#data 0xCB20

loc_8c1A871E:
#data 0x2D01
#data 0x53F162D1
#data 0x2D21223B

loc_8c1A8728:
#data 0xE000


loc_8c1A872A:
add 0x08,r15
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

loc_8c1A873E:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xF4,r15
mov 0x1F,r12 ; r12 set to 0x1F
mov r6,r11
tst r5,r12
mov.l r4,@(0x08,r15)
mov 0x00,r6 ; r6 set to 0x00
mov r7,r8
bf/s loc_8c1A8780
mov r6,r7 ; r7 set to 0x00
bra loc_8c1A8788
mov r5,r12
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c1A8780:
#data 0xE3E06C53
#data 0x2C397C20

#align4
loc_8c1A8788:
#data 0x648FD91F
#data 0x6E634408
#data 0x44086393
#data 0x1F417324
#data 0x6A63343C
#data 0x24485442
#data 0xED018D41

#align4
loc_8c1A87A4:
#data 0x33C25344
#data 0x2AA88B3A
#data 0x6A438B00

#align4
loc_8c1A87B0:
#data 0x93255243
#data 0x89182238
#data 0x92225543
#data 0x2F529122
#data 0x5344352C
#data 0x60F22519
#data 0x3502303C
#data 0x2F028D0E
#data 0x62535343
#data 0x32C23238
#data 0x63F28908
#data 0x33C23358
#data 0xA0048B01
#data 0xE702

loc_8c1A87E6:
#data 0xA01C
#data 0x5442

loc_8c1A87EA:
#data 0x5543

loc_8c1A87EC:
#data 0x67D3

loc_8c1A87EE:
#data 0x6E43
#data 0x6463A017
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x080007FF
#data 0x0000F800

#align4
loc_8c1A8808:
#data bank1c.loc_8c1c9B20
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c1A8820:
#data 0x5442

loc_8c1A8822:
#data 0x2448
#data 0x8BBE

loc_8c1A8826:
#data 0x2778
#data 0x2AA88B03
#data 0x6EA38901
#data 0x67D3

loc_8c1A8832:
#data 0x2EE8
#data 0x60738937
#data 0x8B078802
#data 0x65C32B52
#data 0x678366B3
#data 0xE400BDBC
#data 0x0009A052

#align4
loc_8c1A884C:
#data 0x33C053E4
#data 0x65938B24
#data 0x752453F1
#data 0x353C66E3
#data 0x750C2F52
#data 0xB0D564F2
#data 0x65937408
#data 0x752453F1
#data 0x353C66E3
#data 0x75042F52
#data 0x64F2B0AC
#data 0x688F52E3
#data 0x2B222888
#data 0x8F031EB5
#data 0x60E12ED1
#data 0xCB10A002

#align4
loc_8c1A888C:
#data 0xCB2060E1

#align4
loc_8c1A8890:
#data 0x62E12E01
#data 0x223B53F2
#data 0x2E21A029

#align4
loc_8c1A889C:
#data 0x0009B032
#data 0x2DD86D03
#data 0x8B01

loc_8c1A88A6:
#data 0xA023
#data 0xE003

loc_8c1A88AA:
#data 0x53E3
#data 0x75246593
#data 0x1D3366D3
#data 0x54E41DC4
#data 0x1E4434C8
#data 0x32CC52E3
#data 0x53F11E23
#data 0x2F52353C
#data 0xB0817504
#data 0x52D364F2
#data 0x2888688F
#data 0x8F032B22
#data 0x60D11DB5
#data 0xCB10A002

#align4
loc_8c1A88E0:
#data 0xCB2060D1

#align4
loc_8c1A88E4:
#data 0x62D12D01
#data 0x223B53F2
#data 0x2D21

loc_8c1A88EE:
#data 0xE000

#align4
loc_8c1A88F0:
#data 0x4F267F0C
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

loc_8c1A8904:
mov.l @(loc_8c1A8960,pc),r4 ; r4 set to 0x8C1C9B20
mov 0x00,r5 ; r5 set to 0x00
mov r5,r3 ; r3 set to 0x00
mov.l @(0x08,r4),r7
cmp/hs r7,r3
bt/s loc_8c1A8986
mov 0x01,r6 ; r6 set to 0x01

loc_8c1A8912:
mov r5,r1 ; r1 set to 0x00
shll r1 ; r1 set to 0x00
mov r5,r3 ; r3 set to 0x00
add r3,r1 ; r1 set to 0x00
mov.l @(0x20,r4),r2
shll2 r1 ; r1 set to 0x00
shll r1 ; r1 set to 0x00
add r2,r1 ; r1 ??? bc r2 is ???
mov.w @r1,r3 ; r3 ??? bc r1 is ???
extu.w r3,r3
tst r6,r3
bf loc_8c1A8980
mov r5,r7 ; r7 set to 0x00
shll r7 ; r7 set to 0x00
mov r5,r3 ; r3 set to 0x00
add r3,r7 ; r7 set to 0x00
mov.l @(0x20,r4),r2
shll2 r7 ; r7 set to 0x00
shll r7 ; r7 set to 0x00
add r7,r2
mov.w r6,@r2
mov.l @(0x20,r4),r0
rts
add r7,r0
;-------------------------------------------------------------------------------
#data 0x0009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c1A8960:
#data bank1c.loc_8c1c9B20
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c1A8980:
#data 0x35727501
#data 0x8BC5


loc_8c1A8986:
mov 0x00,r0 ; r0 set to 0x00
rts
nop
;-------------------------------------------------------------------------------

#align4
loc_8c1A898C:
#data 0xE600D52D
#data 0xD72B6263
#data 0x32325352
#data 0x8918

loc_8c1A899A:
#data 0x6063
#data 0x63634000
#data 0x5258303C
#data 0x40004008
#data 0x3040302C
#data 0x63638B0A
#data 0x60634300
#data 0x5258330C
#data 0x43004308
#data 0x6131332C
#data 0x23112179

#align4
loc_8c1A89C4:
#data 0x76015352
#data 0x8BE63632

#align4
loc_8c1A89CC:
#data 0x0009000B
;-------------------------------------------------------------------------------

loc_8c1A89D0:
mov.l @r4,r2
tst r2,r2
bf loc_8c1A89E2
mov 0x00,r7 ; r7 set to 0x00
mov.l r7,@(0x04,r6)
mov.l r7,@(0x08,r6)
mov.l r6,@r4
bra loc_8c1A89F0
mov.l r6,@r5

loc_8c1A89E2:
mov.l @r4,r5
mov.l @(0x04,r5),r2
mov.l r2,@(0x04,r6)
mov.l @r4,r3
mov.l r3,@(0x08,r6)
mov.l r6,@(0x04,r5)
mov.l r6,@r4

loc_8c1A89F0:
rts
nop
;-------------------------------------------------------------------------------

loc_8c1A89F4:
mov.l @(0x08,r6),r3
tst r3,r3
bf loc_8c1A8A02
mov.l r5,@r4
mov.l r6,@(0x04,r5)
bra loc_8c1A8A0A
mov 0x00,r3

loc_8c1A8A02:
mov.l @(0x08,r6),r4
mov.l r5,@(0x04,r4)
mov.l r6,@(0x04,r5)
mov.l @(0x08,r6),r3

loc_8c1A8A0A:
mov.l r3,@(0x08,r5)
rts
mov.l r5,@(0x08,r6)
;-------------------------------------------------------------------------------

loc_8c1A8A10:
add 0xF8,r15
mov.l @(0x04,r6),r7
tst r7,r7
mov.l r7,@r15
mov.l @(0x08,r6),r3
bf/s loc_8c1A8A24
mov.l r3,@(0x04,r15)
mov.l @(0x08,r6),r1
bra loc_8c1A8A2A
mov.l r1,@r4

loc_8c1A8A24:
mov.l @(0x08,r6),r3
mov.l @r15,r2
mov.l r3,@(0x08,r2)

loc_8c1A8A2A:
mov.l @(0x08,r6),r2
tst r2,r2
bf loc_8c1A8A36
mov.l @(0x04,r6),r2
bra loc_8c1A8A3C
mov.l r2,@r5

loc_8c1A8A36:
mov.l @(0x04,r6),r3
mov.l @(0x04,r15),r1
mov.l r3,@(0x04,r1)

loc_8c1A8A3C:
rts
add 0x08,r15
;-------------------------------------------------------------------------------
#data 0x0000FFFE

#align4
loc_8c1A8A44:
#data bank1c.loc_8c1c9B20
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009


loc_8c1A8A60:
sts.l pr,@-r15
mov.w @(loc_8c1A8AC4,pc),r6 ; r6 set to 0x1000
mov r5,r0
mov.w @(loc_8c1A8AC0,pc),r2 ; r2 set to 0x80
cmp/eq 0x01,r0
mov.w @(loc_8c1A8AC2,pc),r7 ; r7 set to 0x800
bt loc_8c1A8A92
cmp/eq 0x02,r0
bt loc_8c1A8AA0
cmp/eq 0x03,r0
bt loc_8c1A8AE0
cmp/eq 0x04,r0
bt loc_8c1A8AF0
cmp/eq 0x05,r0
bt loc_8c1A8B00
cmp/eq 0x06,r0
bt loc_8c1A8B08
cmp/eq 0x07,r0
bt loc_8c1A8B1A
cmp/eq 0x08,r0
bf loc_8c1A8A8E
bra loc_8c1A8B60
nop

loc_8c1A8A8E:
bra loc_8c1A8B70
nop

loc_8c1A8A92:
mov 0x20,r3 ; r3 set to 0x20
mov.l r6,@r4
mov.l r2,@(0x04,r4)
mov.w @(loc_8c1A8AC6,pc),r2 ; r2 set to 0xF90
mov.l r3,@(0x08,r4)
bra loc_8c1A8B6C
nop

loc_8c1A8AA0:
mov.w @(loc_8c1A8AC8,pc),r1 ; r1 set to 0x2000
mov 0x20,r3 ; r3 set to 0x20
mov.l r1,@r4
mov.l r2,@(0x04,r4)
mov.w @(loc_8c1A8ACA,pc),r2 ; r2 set to 0xFA0
mov.l r3,@(0x08,r4)
bra loc_8c1A8B6C
nop
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c1A8AC0:
#data 0x0080

loc_8c1A8AC2:
#data 0x0800

loc_8c1A8AC4:
#data 0x1000

loc_8c1A8AC6:
#data 0x0F90

loc_8c1A8AC8:
#data 0x2000

loc_8c1A8ACA:
#data 0x0FA0
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009


loc_8c1A8AE0:
mov.w @(loc_8c1A8B40,pc),r1 ; r1 set to 0x3000
mov 0x40,r3 ; r3 set to 0x40
mov.l r1,@r4
mov.l r2,@(0x04,r4)
mov.w @(loc_8c1A8B42,pc),r2 ; r2 set to 0xFC0
mov.l r3,@(0x08,r4)
bra loc_8c1A8B6C
nop

loc_8c1A8AF0:
mov.w @(loc_8c1A8B44,pc),r1 ; r1 set to 0x4000
mov 0x60,r3 ; r3 set to 0x60
mov.l r1,@r4
mov.l r2,@(0x04,r4)
mov.w @(loc_8c1A8B46,pc),r2 ; r2 set to 0xFE0
mov.l r3,@(0x08,r4)
bra loc_8c1A8B6C
nop

loc_8c1A8B00:
mov.w @(loc_8c1A8B4A,pc),r5 ; r5 set to 0x100
mov.w @(loc_8c1A8B48,pc),r1 ; r1 set to 0x5000
bra loc_8c1A8B20
mov.l r1,@r4

loc_8c1A8B08:
mov.w @(loc_8c1A8B4C,pc),r2 ; r2 set to 0x6000
mov.w @(loc_8c1A8B4E,pc),r3 ; r3 set to 0x200
mov.l r2,@r4
mov.w @(loc_8c1A8B50,pc),r2 ; r2 set to 0x160
mov.l r3,@(0x04,r4)
mov.w @(loc_8c1A8B52,pc),r3 ; r3 set to 0xF60
mov.l r2,@(0x08,r4)
bra loc_8c1A8B76
mov.l r3,@(0x0C,r4)

loc_8c1A8B1A:
#data 0x911B
#data 0x2412951B


loc_8c1A8B20:
mov.l r5,@(0x04,r4)
mov.l r5,@(0x08,r4)
bra loc_8c1A8B76
mov.l r6,@(0x0C,r4)
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

loc_8c1A8B40:
#data 0x3000

loc_8c1A8B42:
#data 0x0FC0

loc_8c1A8B44:
#data 0x4000

loc_8c1A8B46:
#data 0x0FE0

loc_8c1A8B48:
#data 0x5000

loc_8c1A8B4A:
#data 0x0100

loc_8c1A8B4C:
#data 0x6000

loc_8c1A8B4E:
#data 0x0200

loc_8c1A8B50:
#data 0x0160

loc_8c1A8B52:
#data 0x0F60
#data 0x04007000
#data 0x00090009
#data 0x00090009

#align4
loc_8c1A8B60:
#data 0x933DD220
#data 0x923C2422
#data 0x14321471


loc_8c1A8B6C:
bra loc_8c1A8B76
mov.l r2,@(0x0C,r4)

loc_8c1A8B70:
lds.l @r15+,pr
rts
mov 0x00,r0
;-------------------------------------------------------------------------------

loc_8c1A8B76:
mov.l @(loc_8c1A8BE8,pc),r3 ; r3 set to 0x8C1291DC
mov r7,r1
jsr @r3
mov.l @(0x04,r4),r0
mov.l r0,@(0x10,r4)
mov 0x01,r0 ; r0 set to 0x01
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

#align4
loc_8c1A8B88:
#data 0xE600D519
#data 0x62632FE6
#data 0xDE165353
#data 0x8D143232
#data 0xE74C

loc_8c1A8B9A:
#data 0x0677
#data 0x335CE348
#data 0x001A6332
#data 0x3040303C
#data 0x06778B07
#data 0x025EE048
#data 0x332C031A
#data 0x21E96131
#data 0x2311

loc_8c1A8BBA:
#data 0x5353
#data 0x36327601
#data 0x8BEB

loc_8c1A8BC2:
#data 0x000B
#data 0x00096EF6
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x0D600560
#data 0x00008000

#align4
loc_8c1A8BE8:
#data bank12.loc_8c1291DC
#data 0x0000FFFE

#align4
loc_8c1A8BF0:
#data bank1c.loc_8c1c9B20
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c1A8C00:
#data 0xE000D60F
#data 0x26685662
#data 0x67038D07

#align4
loc_8c1A8C0C:
#data 0x32765264
#data 0x57648B00

#align4
loc_8c1A8C14:
#data 0x26685662
#data 0x8BF8

loc_8c1A8C1A:
#data 0xD60A
#data 0x26685662
#data 0x8906

loc_8c1A8C22:
#data 0x5264
#data 0x8B003206
#data 0x5064

loc_8c1A8C2A:
#data 0x5662
#data 0x8BF82668

#align4
loc_8c1A8C30:
#data 0x25022472
#data 0xE000000B
;-------------------------------------------------------------------------------
#data 0x00090009
#data 0x00090009

#align4
loc_8c1A8C40:
#data bank1c.loc_8c1c9B44

loc_8c1A8C44:
#data bank1c.loc_8c1c9B54
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8c1A8C60:
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
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
loc_8c1A8CC0:
#data 0xD3194F22
#data 0x430B6142
#data 0xD2185043
#data 0x61421401
#data 0x5043420B
#data 0x14026603
#data 0xD5159022
#data 0x3636035E
#data 0x901E890D
#data 0x3612015E
#data 0x901B8B09
#data 0x025E5341
#data 0x89043326
#data 0x51419017
#data 0x3132035E
#data 0x8901

loc_8c1A8CFE:
#data 0xE301
#data 0x1435

loc_8c1A8D02:
#data 0x4F26
#data 0x0009000B
;-------------------------------------------------------------------------------
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x09480950
#data 0x0944094C

#align4
loc_8c1A8D28:
#data bank12.loc_8c12939C

loc_8c1A8D2C:
#data bank12.loc_8c1291DC
#data 0x8C32D278
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8c1A8D40:
#data 0xD3194F22
#data 0x430B6142
#data 0x52435044
#data 0x3208D317
#data 0x142172FF
#data 0x430B6142
#data 0x66035044
#data 0x901F1402
#data 0x025ED513
#data 0x890D3626
#data 0x015E901B
#data 0x8B093612
#data 0x53419018
#data 0x3326025E
#data 0x90148904
#data 0x035E5141
#data 0x89013132

#align4
loc_8c1A8D84:
#data 0x1435E301

#align4
loc_8c1A8D88:
#data 0x000B4F26
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x09480950
#data 0x0944094C

#align4
loc_8c1A8DA8:
#data bank12.loc_8c1291DC

loc_8c1A8DAC:
#data bank12.loc_8c12939C
#data 0x8C32D278
#data 0x00000000
#data 0x00000000
#data 0x00000000


loc_8c1A8DC0:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8c1A8E00,pc),r14 ; r14 set to 0x8C191744

loc_8c1A8DC6:
jsr @r14
nop
tst r0,r0
bf loc_8c1A8DC6
mov.l @(loc_8c1A8E04,pc),r3 ; r3 set to 0x8C1A76B4, r3 set to 0x8C1A76B4
jsr @r3
nop
mov.l @(loc_8c1A8E08,pc),r2 ; r2 set to 0x8C1A76A0, r2 set to 0x8C1A76A0
jsr @r2
nop
lds.l @r15+,pr
mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x0009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009
#data 0x00090009

#align4
loc_8c1A8E00:
#data bank19.loc_8c191744

loc_8c1A8E04:
#data loc_8c1A76B4

loc_8c1A8E08:
#data loc_8c1A76A0
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8c1A8E20:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x7FF42F86
#data 0xE9008441
#data 0x6C936240
#data 0x5AFA600C
#data 0xDD504018
#data 0x84426303
#data 0xDE4F622C
#data 0x4028600C
#data 0x8443230B
#data 0x600C7404
#data 0x40184028
#data 0x232B230B
#data 0x84411F32
#data 0x4018600C
#data 0x84426B03
#data 0x4028600C
#data 0x84432B0B
#data 0x6240600C
#data 0x40184028
#data 0x2B0B622C
#data 0x61B32B2B
#data 0x60B34129
#data 0x4119E2F8
#data 0x402C611E
#data 0x20E962B3
#data 0x210B611C
#data 0x401860B3
#data 0x740420D9
#data 0x4228210B
#data 0x212B4218
#data 0x84411F11
#data 0x4018600C
#data 0x84426203
#data 0xD335600C
#data 0x220B4028
#data 0x600C8443
#data 0x40184028
#data 0x6040220B
#data 0x220B600C
#data 0x50F22F22
#data 0x8F553030
#data 0x62F27404
#data 0x3230D32D
#data 0x58F18B50
#data 0x78FC384C
#data 0x8B013482
#data 0x0009A102

#align4
loc_8c1A8EE8:
#data 0x62408441
#data 0x4018600C
#data 0x84426303
#data 0x600C622C
#data 0x230B4028
#data 0x74048443
#data 0x4028600C
#data 0x230B4018
#data 0x1F31232B
#data 0x62408441
#data 0x4018600C
#data 0x84426B03
#data 0x4028600C
#data 0x84432B0B
#data 0x4028600C
#data 0x2B0B4018
#data 0x2B2B622C
#data 0x412961B3
#data 0x60B3E2F8
#data 0x402C4119
#data 0x611E62B3
#data 0x611C20E9
#data 0x60B3210B
#data 0x42284018
#data 0x421820D9
#data 0x6033210B
#data 0x2F12212B
#data 0xD10E7404
#data 0x8D073010
#data 0xD10DEB01
#data 0x8B013010
#data 0x0009A08C

#align4
loc_8c1A8F68:
#data 0x0009A0B7

#align4
loc_8c1A8F6C:
#data 0x89012998
#data 0x0009A0B8

#align4
loc_8c1A8F74:
#data 0xE91261F2
#data 0x890D3193

#align4
loc_8c1A8F7C:
#data 0xE000A0B7
#data 0x00FF0000
#data 0x0000FF00
#data 0x4D524F46
#data 0x46464941
#data 0x4D4D4F43
#data 0x444E5353

#align4
loc_8c1A8F98:
#data 0x63408441
#data 0x600C7402
#data 0x4018633C
#data 0x6103203B
#data 0x69036203
#data 0x423CE3F8
#data 0x622C4118
#data 0x221B21E9
#data 0x84412622
#data 0x600C6240
#data 0x63034018
#data 0x622C8442
#data 0x4028600C
#data 0x8443230B
#data 0x4028600C
#data 0x230B4018
#data 0x6933232B
#data 0x61934329
#data 0x4319E2F8
#data 0x6293412C
#data 0x21E9633E
#data 0x231B633C
#data 0x41186193
#data 0x21D94228
#data 0x231B4218
#data 0x232B7404
#data 0x84412A32
#data 0x600C6340
#data 0x4018633C
#data 0xE3F8203B
#data 0x423C6203
#data 0x622C6903
#data 0x61037402
#data 0x21E94118
#data 0x2722221B
#data 0x8441E2F8
#data 0x74026340
#data 0x633C600C
#data 0x203B4018
#data 0x2F01690D
#data 0x432C6393
#data 0x633C6193
#data 0x69338441
#data 0x41186340
#data 0x4018600C
#data 0x203B633C
#data 0x21E981F2
#data 0x291B600D
#data 0x2F026323
#data 0x403C62F2
#data 0x4218600C
#data 0x202B22E9
#data 0x699D924A
#data 0x63F12F01
#data 0x622B3298
#data 0x432D633D
#data 0x25327408
#data 0x69B3A027

#align4
loc_8c1A9080:
#data 0x8B2F2CC8
#data 0x62408441
#data 0x4018600C
#data 0x84426C03
#data 0x600C622C
#data 0x2C0B4028
#data 0x600C8443
#data 0x40184028
#data 0x2C2B2C0B
#data 0x60C361C3
#data 0x62C34129
#data 0x41194019
#data 0x611C20E9
#data 0x60C3210B
#data 0x20D94018
#data 0x210B4228
#data 0x42186C13
#data 0x2C2B7404
#data 0x1FC23C4C
#data 0x6CB3

loc_8c1A90CE:
#data 0x2998
#data 0x2CC88908
#data 0xA0098906
#data 0x0009

loc_8c1A90DA:
#data 0x61F2
#data 0x7101EBFE
#data 0x341C21B9

#align4
loc_8c1A90E4:
#data 0x89013482
#data 0x0009AEFE

loc_8c1A90EC:
#data 0x50F2

loc_8c1A90EE:
#data 0x7F0C
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x400E


loc_8c1A9102:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8c1A9228,pc),r3 ; r3 set to 0x8C12F098
mov.l @(loc_8c1A9224,pc),r5 ; r5 set to 0x8C1C6898
mov.l r4,@r15
jsr @r3
mov 0x04,r6 ; r6 set to 0x04
tst r0,r0
bf loc_8c1A912C
mov.l @r15,r4
mov 0x04,r6 ; r6 set to 0x04
mov.l @(loc_8c1A9228,pc),r3 ; r3 set to 0x8C12F098
mov.l @(loc_8c1A922C,pc),r5 ; r5 set to 0x8C1C68A0
jsr @r3
add 0x08,r4
tst r0,r0
bf loc_8c1A912C
add 0x04,r15
lds.l @r15+,pr
rts
mov 0x01,r0
;-------------------------------------------------------------------------------

loc_8c1A912C:
mov 0x00,r0 ; r0 set to 0x00
add 0x04,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c1A9136:
sts.l pr,@-r15
add 0xE4,r15
mov.w @(loc_8c1A9222,pc),r3 ; r3 set to 0x1000
mov.l r4,@(0x10,r15)
cmp/ge r3,r5
mov.l r6,@(0x14,r15)
bt/s loc_8c1A9150
mov.l r7,@(0x18,r15)
mov.l @(0x14,r15),r1
mov 0x00,r2 ; r2 set to 0x00
mov.w r2,@r1
bra loc_8c1A917C
nop

#align4
loc_8c1A9150:
#data 0x720C62F3
#data 0x66F32F26
#data 0x67F365F3
#data 0x770C7504
#data 0xBE5D7608
#data 0x640354F5
#data 0x8D072448
#data 0x53F47F04
#data 0x343852F5
#data 0x644F2241
#data 0x89034415


loc_8c1A917C:
add 0x1C,r15
lds.l @r15+,pr
rts
mov 0xFF,r0
;-------------------------------------------------------------------------------

#align4
loc_8c1A9184:
#data 0x52FB63F2
#data 0x53F12232
#data 0x223052FA
#data 0x52F853F2
#data 0x53F32230
#data 0x223252FC
#data 0x52F6E3FF
#data 0x53FA2230
#data 0x613052F9
#data 0x633053F8
#data 0x011A213F
#data 0x89004111
#data 0x7107

loc_8c1A91B6:
#data 0x4121
#data 0x41214121
#data 0xE3012210
#data 0xE00052FD
#data 0x7F1C2232
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1A91CE:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xF4,r15
mov r4,r14
mov r14,r3
add 0x10,r3
mov r14,r2
mov.l r5,@(0x04,r15)
add 0x18,r2
mov.l r6,@(0x08,r15)
mov r14,r7
mov 0x01,r0 ; r0 set to 0x01
mov.w r0,@(0x02,r14)
add 0x0C,r7
mov.l r3,@-r15
mov r14,r3
mov.l r2,@-r15
add 0x14,r3
mov r14,r2
add 0x0E,r2
mov.l r3,@-r15
mov r14,r3
mov.l r2,@-r15
mov r14,r2
add 0x0F,r3
add 0x0D,r2
mov.l r3,@-r15
mov.l r2,@-r15
mov r15,r6
mov.l @(0x20,r15),r5
add 0x18,r6
bsr loc_8c1A9136
mov.l @(0x1C,r15),r4
mov r0,r4 ; r4 set to 0x01
cmp/pz r4
bt/s loc_8c1A9230
add 0x18,r15
mov 0x00,r0 ; r0 set to 0x00
add 0x0C,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1A9222:
#data 0x1000

#align4
loc_8c1A9224:
#data bank1c.loc_8c1c6898

loc_8c1A9228:
#data bank12.loc_8c12F098

loc_8c1A922C:
#data bank1c.loc_8c1c68A0


loc_8c1A9230:
mov 0x00,r4 ; r4 set to 0x00
mov r4,r0 ; r0 set to 0x00
mov.w r0,@(0x1C,r14)
mov 0x4A,r0 ; r0 set to 0x4A
mov.w r4,@(r0,r14)
mov 0x48,r0 ; r0 set to 0x48
mov.w r4,@(r0,r14)
mov 0x26,r0 ; r0 set to 0x26
mov.w r4,@(r0,r14)
mov 0x24,r0 ; r0 set to 0x24
mov.w r4,@(r0,r14)
mov 0x58,r1 ; r1 set to 0x58
add r14,r1 ; r1 ??? bc r14 is ???
mov.l r4,@(0x34,r14)
mov.l r4,@(0x30,r14)
mov.l r4,@(0x2C,r14)
mov.l r4,@(0x28,r14)
mov.l r4,@(0x20,r14)
mov.b @(0x0E,r14),r0
mov.l r0,@r1
mov 0x5C,r1 ; r1 set to 0x5C
mov.b @(0x0F,r14),r0
add r14,r1 ; r1 ??? bc r14 is ???
mov.l r0,@r1
mov 0x60,r0 ; r0 set to 0x60
mov.l @(0x10,r14),r3
mov.l r3,@(r0,r14)
mov 0x64,r0 ; r0 set to 0x64
mov.l @(0x3C,r14),r2
mov.l r2,@(r0,r14)
mov 0x40,r0 ; r0 set to 0x40
mov.l @(r0,r14),r3
mov 0x68,r0 ; r0 set to 0x68
mov.l r3,@(r0,r14)
mov 0x44,r0 ; r0 set to 0x44
mov.l @(r0,r14),r2
mov 0x6C,r0 ; r0 set to 0x6C
mov r14,r3
add 0x7C,r3
mov.l r2,@(r0,r14)
mov 0x48,r0 ; r0 set to 0x48
mov.w @(r0,r14),r2
mov 0x4A,r0 ; r0 set to 0x4A
mov.w r2,@r3
mov r14,r2
mov.w @(r0,r14),r3
mov 0x7E,r0 ; r0 set to 0x7E
add 0x4C,r2
mov.w r3,@(r0,r14)
add 0x02,r0 ; r0 set to 0x80
mov.l r2,@(r0,r14)
add 0x1C,r0 ; r0 set to 0x9C
mov.l r4,@(r0,r14)
add 0xFC,r0 ; r0 set to 0x98
mov.l r4,@(r0,r14)
add 0x10,r0 ; r0 set to 0xA8
mov 0x03,r3 ; r3 set to 0x03
mov.w r3,@(r0,r14)
mov.b @(0x0D,r14),r0
cmp/eq 0x08,r0
bf/s loc_8c1A92B4
mov 0x04,r6 ; r6 set to 0x04
mov.w @(loc_8c1A937C,pc),r0 ; r0 set to 0xAA
mov 0x01,r2 ; r2 set to 0x01
bra loc_8c1A92B8
mov.w r2,@(r0,r14)

loc_8c1A92B4:
mov.w @(loc_8c1A937C,pc),r0 ; r0 set to 0xAA
mov.w r4,@(r0,r14)

loc_8c1A92B8:
mov.l @(loc_8c1A9380,pc),r3 ; r3 set to 0x8C129728, r3 set to 0x8C129728
mov r14,r4
mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00
jsr @r3
add 0x4C,r4
mov.w @r15,r0 ; r0 ??? bc r15 is ???
add 0x0C,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8c1A92CC:
#data 0x6E432FE6
#data 0x6D432FD6
#data 0x7D502FC6
#data 0x2F962FB6
#data 0x50E14F22
#data 0x8F6D8801
#data 0xD2276CD2
#data 0x54E2420B
#data 0x8B672008
#data 0x66D39045
#data 0x67D365D3
#data 0x700402EE
#data 0x77287520
#data 0x420B7624
#data 0x54D604EE
#data 0x52D953D8
#data 0x34273438
#data 0x52D18F01
#data 0x54D9

loc_8c1A9316:
#data 0x3427
#data 0x55D58F01
#data 0x54D1

loc_8c1A931E:
#data 0x5BD8
#data 0x4B0084EE
#data 0x3B5C8802
#data 0xE1008F2E
#data 0x671359D7
#data 0x393C53D8
#data 0x44154900
#data 0x6513395C
#data 0x66138F36

#align4
loc_8c1A9340:
#data 0x40006063
#data 0xE2F80DCD
#data 0x77016053
#data 0x63D36DDD
#data 0x4D18432C
#data 0x0BD52D3B
#data 0x70016063
#data 0x37434000
#data 0x60530DCD
#data 0x6DDD7502
#data 0x631361D3
#data 0x4D18432C
#data 0x09D52D3B
#data 0x76028FE4
#data 0x0009A018

loc_8c1A937C:
#data 0x00AA
#data 0x0088

#align4
loc_8c1A9380:
#data bank12.loc_8c129728

loc_8c1A9384:
#data loc_8c1AA62A

loc_8c1A9388:
#data 0x66134415
#data 0x65138F0E

#align4
loc_8c1A9390:
#data 0x0DCD6053
#data 0x6DDDE2F8
#data 0x637367D3
#data 0x4D18432C
#data 0x2D3B7601
#data 0x0BD53643
#data 0x75028FF2

#align4
loc_8c1A93AC:
#data 0xE302906D
#data 0x84EE0E46
#data 0x90690407
#data 0x4400041A
#data 0x1E310E46

#align4
loc_8c1A93C0:
#data 0x880250E1
#data 0x90628B0A
#data 0x701003EE
#data 0x700406EE
#data 0x70F005EE
#data 0x04EE430B
#data 0x1E31E303

#align4
loc_8c1A93DC:
#data 0x69F64F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1A93EA:
#data 0x2FE6
#data 0x2FD66E43
#data 0x2FC66D43
#data 0x2FB67D50
#data 0x4F222FA6
#data 0x880150E1
#data 0x6CD28F62
#data 0x420BD223
#data 0x200854E2
#data 0x903F8B5C
#data 0x65D366D3
#data 0x02EE67D3
#data 0x75207004
#data 0x76247728
#data 0x04EE420B
#data 0x53D854D6
#data 0x343852D9
#data 0x8F013427
#data 0x54D952D1

#align4
loc_8c1A9434:
#data 0x8F013427
#data 0x54D155D5

#align4
loc_8c1A943C:
#data 0x84EE5AD8
#data 0x88024A00
#data 0x8F273A5C
#data 0x51D7EB00
#data 0x53D867B3
#data 0x4100313C
#data 0x315C4415
#data 0x8F2C65B3
#data 0x66B3

loc_8c1A945E:
#data 0x60C3
#data 0x63A3025C
#data 0x622C336C
#data 0x42186063
#data 0x63532321
#data 0x33CC7301
#data 0x77016330
#data 0x75023743
#data 0x4318633C
#data 0x8FEC0135
#data 0xA0167602
#data 0x00A00009
#data 0x009000A4
#data 0x00000088

#align4
loc_8c1A9494:
#data loc_8c1AA62A

loc_8c1A9498:
#data 0x4415E500
#data 0x67B3E600
#data 0x8F0835CC
#data 0x36AC

loc_8c1A94A6:
#data 0x6354
#data 0x37437701
#data 0x4318633C
#data 0x8FF82631
#data 0x7602

loc_8c1A94B6:
#data 0x9024
#data 0x0E46E302
#data 0x040784EE
#data 0x041A9020
#data 0x1E310E46

#align4
loc_8c1A94C8:
#data 0x880250E1
#data 0x901A8B0A
#data 0x701003EE
#data 0x700406EE
#data 0x70F005EE
#data 0x04EE430B
#data 0x1E31E303

#align4
loc_8c1A94E4:
#data 0x6AF64F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1A94F2:
mov.w @(loc_8c1A9508,pc),r0 ; r0 set to 0xAA
mov.w @(r0,r4),r0 ; r0 ??? bc r4 is ???
cmp/eq 0x01,r0
bf loc_8c1A94FE
bra loc_8c1A93EA
nop

loc_8c1A94FE:
bra loc_8c1A92CC
nop
#data 0x00A0
#data 0x009000A4

loc_8c1A9508:
#data 0x00AA
#data 0x0000

#align4
loc_8c1A950C:
#data 0x6E432FE6
#data 0x2FC62FD6
#data 0x2FA62FB6
#data 0x2F862F96
#data 0x84E14F22
#data 0x600C63E0
#data 0x4018D2A6
#data 0x6A03DCA4
#data 0x633C84E2
#data 0x600C5DFA
#data 0x402859F9
#data 0x2A0BDB9F
#data 0x600C84E3
#data 0x40184028
#data 0x2A3B2A0B
#data 0x8D053A20
#data 0xD19D7E04
#data 0x89013A10
#data 0x0009A080

#align4
loc_8c1A9558:
#data 0x63E084E1
#data 0x4018600C
#data 0x84E26A03
#data 0x600C633C
#data 0x2A0B4028
#data 0x600C84E3
#data 0x40184028
#data 0x2A3B2A0B
#data 0x62A368A3
#data 0x63A34829
#data 0x48194219
#data 0x688C22B9
#data 0x62A3282B
#data 0x43284218
#data 0x431822C9
#data 0x283B282B
#data 0x8D5D3857
#data 0x84E17E04
#data 0x600C63E0
#data 0x65034018
#data 0x633C84E2
#data 0x4028600C
#data 0x84E3250B
#data 0x4028600C
#data 0x250B4018
#data 0x6A53253B
#data 0x4A296253
#data 0x42196353
#data 0x22B94A19
#data 0x2A2B6AAC
#data 0x42186253
#data 0x22C94328
#data 0x2A2B4318
#data 0x7E042A3B
#data 0x63E084E1
#data 0x4018600C
#data 0x84E26503
#data 0x600C633C
#data 0x250B4028
#data 0x600C84E3
#data 0x40184028
#data 0x253B250B
#data 0x61536253
#data 0x63534229
#data 0x42194119
#data 0x622C21B9
#data 0x6153221B
#data 0x43284118
#data 0x431821C9
#data 0x6523221B
#data 0x6053253B
#data 0x8D068801
#data 0x88027E04
#data 0x88038906
#data 0xA011890B
#data 0x0009

loc_8c1A9636:
#data 0xE202
#data 0x2D22A002

#align4
loc_8c1A963C:
#data 0x2D32E301

#align4
loc_8c1A9640:
#data 0xE30852F8
#data 0xA0092232
#data 0x0009

loc_8c1A964A:
#data 0xE210
#data 0x2D12E100
#data 0x232253F8
#data 0x0009A002

#align4
loc_8c1A9658:
#data 0xE000A061

#align4
loc_8c1A965C:
#data 0x62E084E1
#data 0x4018600C
#data 0x84E26303
#data 0x600C622C
#data 0x230B4028
#data 0x600C84E3
#data 0x40184028
#data 0x232B230B
#data 0x43296533
#data 0x6153E2F8
#data 0x412C4319
#data 0x633E6253
#data 0x633C21B9
#data 0x6153231B
#data 0x21C94118
#data 0x231B4228
#data 0x42187E04
#data 0x2632232B
#data 0x62E084E1
#data 0x4018600C
#data 0x84E26303
#data 0x600C622C
#data 0x230B4028
#data 0x600C84E3
#data 0x40184028
#data 0x232B230B
#data 0x43296533
#data 0x6153E2F8
#data 0x412C4319
#data 0x21B9633E
#data 0x231B633C
#data 0x41186153
#data 0x42286253
#data 0x421821C9
#data 0x232B231B
#data 0x60D22732
#data 0x89028802
#data 0x880160D2
#data 0x8B05

loc_8c1A96F6:
#data 0xD334
#data 0x430B61A3
#data 0xA0086072
#data 0x0009

loc_8c1A9702:
#data 0x63D2
#data 0x8B062338
#data 0x4A01D22F
#data 0x420B61A3
#data 0x6072

loc_8c1A9712:
#data 0xA002
#data 0x2902

loc_8c1A9716:
#data 0xD22D
#data 0x2922

loc_8c1A971A:
#data 0x6043
#data 0x308C

loc_8c1A971E:
#data 0x4F26
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1A9730:
#data 0x7FFC4F22
#data 0xD526D327
#data 0x430B2F42
#data 0x2008E604
#data 0xD3248906
#data 0xD524E604
#data 0x64F2430B
#data 0x8B032008

#align4
loc_8c1A9750:
#data 0x4F267F04
#data 0xE001000B
;-------------------------------------------------------------------------------

#align4
loc_8c1A9758:
#data 0x7F04E000
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1A9762:
sts.l pr,@-r15
add 0xE4,r15
mov 0x08,r3 ; r3 set to 0x08
mov.l r4,@(0x14,r15)
cmp/ge r3,r5
mov.l r6,@(0x10,r15)
bt/s loc_8c1A977C
mov.l r7,@(0x18,r15)
mov.l @(0x10,r15),r1
mov 0x00,r2 ; r2 set to 0x00
mov.w r2,@r1
bra loc_8c1A97AE
nop

#align4
loc_8c1A977C:
#data 0x2F2652FE
#data 0x731063F3
#data 0x62F32F36
#data 0x2F267210
#data 0x67F366F3
#data 0x7710760C
#data 0x54F8BEBA
#data 0x24486403
#data 0x7F0C8D07
#data 0x52F453F5
#data 0x22413438
#data 0x4415644F
#data 0x8916


loc_8c1A97AE:
add 0x1C,r15
lds.l @r15+,pr
rts
mov 0xFF,r0
;-------------------------------------------------------------------------------
#data 0x0000
#data 0x0000FF00
#data 0x00FF0000
#data 0x0064732E
#data 0x646E732E

#align4
loc_8c1A97C8:
#data bank12.loc_8c1291DC
#data 0x7FFF0000

#align4
loc_8c1A97D0:
#data bank1c.loc_8c1c68A8

loc_8c1A97D4:
#data bank12.loc_8c12F098

loc_8c1A97D8:
#data bank1c.loc_8c1c68B0

loc_8c1A97DC:
#data 0x52FB63F2
#data 0x53F12232
#data 0x223052FA
#data 0x52F853F2
#data 0x53F32230
#data 0x223252FC
#data 0x52F6E3FF
#data 0x53FA2230
#data 0x613052F9
#data 0x633053F8
#data 0x011A213F
#data 0x89004111
#data 0x7107

loc_8c1A980E:
#data 0x4121
#data 0x41214121
#data 0xE3012210
#data 0xE00052FD
#data 0x7F1C2232
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1A9826:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xF0,r15
mov r15,r3
add 0x04,r3
mov r4,r14
mov.l r5,@(0x08,r15)
mov.l r6,@(0x0C,r15)
mov r14,r2
add 0x10,r2
mov r14,r7
mov 0x01,r0 ; r0 set to 0x01
add 0x0C,r7
mov.w r0,@(0x02,r14)
mov.l r3,@-r15
mov r14,r3
add 0x18,r3
mov.l r2,@-r15
mov.l r3,@-r15
mov r14,r2
mov r14,r3
add 0x14,r2
add 0x0E,r3
mov.l r2,@-r15
mov.l r3,@-r15
mov r14,r2
add 0x0F,r2
mov r14,r3
add 0x0D,r3
mov.l r2,@-r15
mov.l r3,@-r15
mov r15,r6
mov.l @(0x28,r15),r5
add 0x1C,r6
bsr loc_8c1A9762
mov.l @(0x24,r15),r4
mov r0,r4 ; r4 set to 0x01
cmp/pz r4
bt/s loc_8c1A987C
add 0x1C,r15
bra loc_8c1A9904
mov 0x00,r0

loc_8c1A987C:
mov 0x00,r13 ; r13 set to 0x00
mov r13,r0 ; r0 set to 0x00
mov.w r0,@(0x1C,r14)
mov 0x4A,r0 ; r0 set to 0x4A
mov.w r13,@(r0,r14)
mov 0x48,r0 ; r0 set to 0x48
mov.w r13,@(r0,r14)
mov 0x26,r0 ; r0 set to 0x26
mov.w r13,@(r0,r14)
mov 0x24,r0 ; r0 set to 0x24
mov.w r13,@(r0,r14)
mov 0x58,r1 ; r1 set to 0x58
add r14,r1 ; r1 ??? bc r14 is ???
mov.l r13,@(0x34,r14)
mov.l r13,@(0x30,r14)
mov.l r13,@(0x2C,r14)
mov.l r13,@(0x28,r14)
mov.l r13,@(0x20,r14)
mov.b @(0x0E,r14),r0
mov.l r0,@r1
mov 0x5C,r1 ; r1 set to 0x5C
mov.b @(0x0F,r14),r0
add r14,r1 ; r1 ??? bc r14 is ???
mov.l r0,@r1
mov 0x60,r0 ; r0 set to 0x60
mov.l @(0x10,r14),r3
mov.l r3,@(r0,r14)
mov 0x64,r0 ; r0 set to 0x64
mov.l @(0x3C,r14),r2
mov.l r2,@(r0,r14)
mov 0x40,r0 ; r0 set to 0x40
mov.l @(r0,r14),r3
mov 0x68,r0 ; r0 set to 0x68
mov r13,r5 ; r5 set to 0x00
mov.l r3,@(r0,r14)
mov 0x44,r0 ; r0 set to 0x44
mov.l @(r0,r14),r2
mov 0x6C,r0 ; r0 set to 0x6C
mov r14,r3
add 0x7C,r3
mov.l r2,@(r0,r14)
mov 0x48,r0 ; r0 set to 0x48
mov.w @(r0,r14),r2
mov 0x4A,r0 ; r0 set to 0x4A
mov r14,r4
mov.w r2,@r3
mov r14,r2
mov.w @(r0,r14),r3
mov 0x7E,r0 ; r0 set to 0x7E
add 0x4C,r2
mov.w r3,@(r0,r14)
add 0x02,r0 ; r0 set to 0x80
mov.l r2,@(r0,r14)
add 0x1C,r0 ; r0 set to 0x9C
mov.l r13,@(r0,r14)
add 0xFC,r0 ; r0 set to 0x98
mov.l r13,@(r0,r14)
add 0x10,r0 ; r0 set to 0xA8
mov 0x04,r3 ; r3 set to 0x04
mov.w r3,@(r0,r14)
mov r3,r6 ; r6 set to 0x04
mov.w @(loc_8c1A990E,pc),r0 ; r0 set to 0xAA
mov.l @(0x04,r15),r2
mov.w r2,@(r0,r14)
mov.l @(loc_8c1A9910,pc),r3 ; r3 set to 0x8C129728
jsr @r3
add 0x4C,r4
mov.w @r15,r0 ; r0 ??? bc r15 is ???

loc_8c1A9904:
add 0x10,r15
lds.l @r15+,pr
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1A990E:
#data 0x00AA

#align4
loc_8c1A9910:
#data bank12.loc_8c129728

loc_8c1A9914:
#data 0x6E432FE6
#data 0x6D432FD6
#data 0x7D502FC6
#data 0x2F962FB6
#data 0x50E14F22
#data 0x8F678801
#data 0xD2406CD2
#data 0x54E2420B
#data 0x8B612008
#data 0x66D39075
#data 0x67D365D3
#data 0x700402EE
#data 0x77287520
#data 0x420B7624
#data 0x54D604EE
#data 0x52D953D8
#data 0x34273438
#data 0x52D18F01
#data 0x54D9

loc_8c1A995E:
#data 0x3427
#data 0x55D58F01
#data 0x54D1

loc_8c1A9966:
#data 0x5BD8
#data 0x4B0084EE
#data 0x3B5C8802
#data 0xE1008F28
#data 0x671359D7
#data 0x393C53D8
#data 0x44154900
#data 0x6513395C
#data 0x66138F30

#align4
loc_8c1A9988:
#data 0x40006063
#data 0xE2F80DCD
#data 0x77016053
#data 0x63D36DDD
#data 0x4D18432C
#data 0x0BD52D3B
#data 0x70016063
#data 0x37434000
#data 0x60530DCD
#data 0x6DDD7502
#data 0x631361D3
#data 0x4D18432C
#data 0x09D52D3B
#data 0x76028FE4
#data 0x0009A012

#align4
loc_8c1A99C4:
#data 0x66134415
#data 0x65138F0E

#align4
loc_8c1A99CC:
#data 0x0DCD6053
#data 0x6DDDE2F8
#data 0x637367D3
#data 0x4D18432C
#data 0x2D3B7601
#data 0x0BD53643
#data 0x75028FF2

#align4
loc_8c1A99E8:
#data 0xE302901E
#data 0x84EE0E46
#data 0x901A0407
#data 0x4400041A
#data 0x1E310E46

#align4
loc_8c1A99FC:
#data 0x880250E1
#data 0x90138B0A
#data 0x701003EE
#data 0x700406EE
#data 0x70F005EE
#data 0x04EE430B
#data 0x1E31E303

#align4
loc_8c1A9A18:
#data 0x69F64F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00886EF6
#data 0x00A400A0
#data 0x00000090

#align4
loc_8c1A9A30:
#data loc_8c1AA62A

loc_8c1A9A34:
#data 0x6E432FE6
#data 0x6D432FD6
#data 0x7D502FC6
#data 0x2FA62FB6
#data 0x50E14F22
#data 0x8F5B8801
#data 0xD23A6CD2
#data 0x54E2420B
#data 0x8B552008
#data 0x66D39069
#data 0x67D365D3
#data 0x700402EE
#data 0x77287520
#data 0x420B7624
#data 0x54D604EE
#data 0x52D953D8
#data 0x34273438
#data 0x52D18F01
#data 0x54D9

loc_8c1A9A7E:
#data 0x3427
#data 0x55D58F01
#data 0x54D1

loc_8c1A9A86:
#data 0x5AD8
#data 0x4A0084EE
#data 0x3A5C8802
#data 0xEB008F20
#data 0x67B351D7
#data 0x313C53D8
#data 0x44154100
#data 0x65B3315C
#data 0x66B38F25

#align4
loc_8c1A9AA8:
#data 0x025C60C3
#data 0x336C63A3
#data 0x6063622C
#data 0x23214218
#data 0x73016353
#data 0x633033CC
#data 0x37437701
#data 0x633C7502
#data 0x01354318
#data 0x76028FEC
#data 0x0009A00F

#align4
loc_8c1A9AD4:
#data 0x4415E500
#data 0x67B3E600
#data 0x8F0835CC
#data 0x36AC

loc_8c1A9AE2:
#data 0x6354
#data 0x37437701
#data 0x4318633C
#data 0x8FF82631
#data 0x7602

loc_8c1A9AF2:
#data 0x901D
#data 0x0E46E302
#data 0x040784EE
#data 0x041A9019
#data 0x1E310E46

#align4
loc_8c1A9B04:
#data 0x880250E1
#data 0x90138B0A
#data 0x701003EE
#data 0x700406EE
#data 0x70F005EE
#data 0x04EE430B
#data 0x1E31E303

#align4
loc_8c1A9B20:
#data 0x6AF64F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00886EF6
#data 0x00A400A0
#data 0x00000090

#align4
loc_8c1A9B38:
#data loc_8c1AA62A

loc_8c1A9B3C:
#data 0x6E432FE6
#data 0x6D432FD6
#data 0x7D502FC6
#data 0x2FA62FB6
#data 0x50E14F22
#data 0x8F608801
#data 0xD2446CD2
#data 0x54E2420B
#data 0x8B5A2008
#data 0x66D3907C
#data 0x67D365D3
#data 0x700402EE
#data 0x77287520
#data 0x420B7624
#data 0x54D604EE
#data 0x52D953D8
#data 0x34273438
#data 0x52D18F01
#data 0x54D9

loc_8c1A9B86:
#data 0x3427
#data 0x56D58F01
#data 0x54D1

loc_8c1A9B8E:
#data 0x5AD8
#data 0xD53684EE
#data 0x88024A00
#data 0x8F233A6C
#data 0x51D7EB00
#data 0x53D867B3
#data 0x313C6DB3
#data 0x44154100
#data 0x8F29316C
#data 0x66B3

loc_8c1A9BB2:
#data 0x60C3
#data 0x62A3007C
#data 0x600C326C
#data 0x035D4000
#data 0x60637D01
#data 0x63732231
#data 0x33CC7301
#data 0x77026330
#data 0x4300633C
#data 0x335C3D43
#data 0x01356331
#data 0x76028FE9
#data 0x0009A010

#align4
loc_8c1A9BE4:
#data 0x4415E600
#data 0x6DB3E700
#data 0x8F0936CC
#data 0x37AC

loc_8c1A9BF2:
#data 0x6064
#data 0x600C7D01
#data 0x3D434000
#data 0x2731035D
#data 0x77028FF7

#align4
loc_8c1A9C04:
#data 0xE302902B
#data 0x84EE0E46
#data 0x90270407
#data 0x0E46041A
#data 0x1E31

loc_8c1A9C16:
#data 0x50E1
#data 0x8B0A8802
#data 0x03EE9021
#data 0x06EE7010
#data 0x05EE7004
#data 0x430B70F0
#data 0xE30304EE
#data 0x1E31

loc_8c1A9C32:
#data 0x4F26
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

loc_8c1A9C40:
mov.w @(loc_8c1A9C64,pc),r0 ; r0 set to 0xAA
mov.w @(r0,r4),r0 ; r0 ??? bc r4 is ???
cmp/eq 0x02,r0
bf loc_8c1A9C4C
bra loc_8c1A9B3C
nop

loc_8c1A9C4C:
mov.w @(loc_8c1A9C64,pc),r0 ; r0 set to 0xAA
mov.w @(r0,r4),r0 ; r0 ??? bc r4 is ???
cmp/eq 0x01,r0
bf loc_8c1A9C58
bra loc_8c1A9A34
nop

loc_8c1A9C58:
bra loc_8c1A9914
nop
#data 0x00A00088
#data 0x009000A4

loc_8c1A9C64:
#data 0x00AA
#data 0x0000

#align4
loc_8c1A9C68:
#data loc_8c1AA62A

loc_8c1A9C6C:
#data bank1c.loc_8c1c9B78


loc_8c1A9C70:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
add 0xFC,r15
mov r4,r5
mov.b @(0x07,r5),r0
mov.l @(0x28,r15),r13
mov 0x02,r9 ; r9 set to 0x02
extu.b r0,r0
mov.l @(0x30,r15),r12
shll2 r0
mov.l @(0x24,r15),r10
shll2 r0
mov.l @(0x20,r15),r11
mov.l @(0x38,r15),r8
mov.l @(0x34,r15),r14
mov.w r0,@r6
mov 0x09,r0 ; r0 set to 0x09
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???
mov 0x01,r6 ; r6 set to 0x01
and 0x03,r0
add 0x01,r0
mov.b r0,@r13
mov 0x2A,r0 ; r0 set to 0x2A
mov.w @(r0,r4),r2
mov.l @(0x2C,r15),r3
extu.w r2,r2
mov.l r2,@r3
mov.b @(0x08,r4),r0
mov.b r0,@r15
mov.b @r15,r0 ; r0 ??? bc r15 is ???
extu.b r0,r0
cmp/eq 0x00,r0
bt/s loc_8c1A9CCE
add 0x0C,r5
cmp/eq 0x01,r0
bt loc_8c1A9CEC
cmp/eq 0x02,r0
bt loc_8c1A9CFE
cmp/eq 0x03,r0
bt loc_8c1A9CFE
bra loc_8c1A9D10
nop

loc_8c1A9CCE:
mov 0x10,r3 ; r3 set to 0x10
mov.b r3,@r11
mov.b @r13,r2
shll r2
mov.b r2,@r10
mov 0x00,r2 ; r2 set to 0x00
mov r2,r1 ; r1 set to 0x00
mov.l r6,@r14
mov.l @r5,r3 ; r3 ??? bc r5 is ???
cmp/gt r3,r2
addc r2,r3
shar r3
mov.l r3,@r12
bra loc_8c1A9D10
mov.w r1,@r8

loc_8c1A9CEC:
mov 0x08,r2 ; r2 set to 0x08
mov.b r2,@r11
mov.b @r13,r3
mov.b r3,@r10
mov.l r6,@r14
mov.l @r5,r2 ; r2 ??? bc r5 is ???
mov.l r2,@r12
bra loc_8c1A9D10
mov.w r6,@r8

loc_8c1A9CFE:
#data 0xE204
#data 0x63D02B20
#data 0x2E922A30
#data 0x42006252
#data 0x28912C22


loc_8c1A9D10:
mov 0x00,r3 ; r3 set to 0x00
mov.b r9,@r10
mov 0x10,r1 ; r1 set to 0x10
mov.l r6,@r14
mov.l @r5,r2
mov 0x00,r0 ; r0 set to 0x00
cmp/gt r2,r3
addc r3,r2
mov 0xFF,r3 ; r3 set to 0xFFFFFFFF
shar r2
mov.l r2,@r12
mov.b r1,@r11
mov.b r3,@r7
add 0x04,r15
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1A9D3C:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xF4,r15
mov.w @(loc_8c1A9D92,pc),r3 ; r3 set to 0xAA
mov r4,r14
mov.l r5,@(0x04,r15)
mov r14,r2
add r14,r3 ; r3 ??? bc r14 is ???
mov.l r6,@(0x08,r15)
add 0x10,r2
mov r14,r7
mov 0x01,r0 ; r0 set to 0x01
add 0x0C,r7
mov.w r0,@(0x02,r14)
mov.l r3,@-r15
mov r14,r3
add 0x18,r3
mov.l r2,@-r15
mov.l r3,@-r15
mov r14,r2
mov r14,r3
add 0x14,r2
add 0x0E,r3
mov.l r2,@-r15
mov.l r3,@-r15
mov r14,r2
add 0x0F,r2
mov r14,r3
add 0x0D,r3
mov.l r2,@-r15
mov.l r3,@-r15
mov r15,r6
mov.l @(0x24,r15),r5
add 0x1C,r6
bsr loc_8c1A9C70
mov.l @(0x20,r15),r4
mov r0,r4 ; r4 set to 0x01
cmp/pz r4
bt/s loc_8c1A9D94
add 0x1C,r15
bra loc_8c1A9E16
mov 0x00,r0

loc_8c1A9D92:
#data 0x00AA


loc_8c1A9D94:
mov 0x00,r13 ; r13 set to 0x00
mov r13,r0 ; r0 set to 0x00
mov.w r0,@(0x1C,r14)
mov 0x4A,r0 ; r0 set to 0x4A
mov.w r13,@(r0,r14)
mov 0x48,r0 ; r0 set to 0x48
mov.w r13,@(r0,r14)
mov 0x26,r0 ; r0 set to 0x26
mov.w r13,@(r0,r14)
mov 0x24,r0 ; r0 set to 0x24
mov.w r13,@(r0,r14)
mov 0x58,r1 ; r1 set to 0x58
add r14,r1 ; r1 ??? bc r14 is ???
mov.l r13,@(0x34,r14)
mov.l r13,@(0x30,r14)
mov.l r13,@(0x2C,r14)
mov.l r13,@(0x28,r14)
mov.l r13,@(0x20,r14)
mov.b @(0x0E,r14),r0
mov.l r0,@r1
mov 0x5C,r1 ; r1 set to 0x5C
mov.b @(0x0F,r14),r0
add r14,r1 ; r1 ??? bc r14 is ???
mov.l r0,@r1
mov 0x60,r0 ; r0 set to 0x60
mov.l @(0x10,r14),r3
mov.l r3,@(r0,r14)
mov 0x64,r0 ; r0 set to 0x64
mov.l @(0x3C,r14),r2
mov.l r2,@(r0,r14)
mov 0x40,r0 ; r0 set to 0x40
mov.l @(r0,r14),r3
mov 0x68,r0 ; r0 set to 0x68
mov r14,r4
mov.l r3,@(r0,r14)
mov 0x44,r0 ; r0 set to 0x44
mov.l @(r0,r14),r2
mov 0x6C,r0 ; r0 set to 0x6C
mov r14,r3
add 0x7C,r3
mov.l r2,@(r0,r14)
mov 0x48,r0 ; r0 set to 0x48
mov.w @(r0,r14),r2
mov 0x4A,r0 ; r0 set to 0x4A
mov 0x04,r6 ; r6 set to 0x04
mov r13,r5 ; r5 set to 0x00
mov.w r2,@r3
mov r14,r2
mov.w @(r0,r14),r3
mov 0x7E,r0 ; r0 set to 0x7E
add 0x4C,r2
mov.w r3,@(r0,r14)
add 0x02,r0 ; r0 set to 0x80
mov.l r2,@(r0,r14)
add 0x1C,r0 ; r0 set to 0x9C
mov.l r13,@(r0,r14)
add 0xFC,r0 ; r0 set to 0x98
mov.l r13,@(r0,r14)
add 0x10,r0 ; r0 set to 0xA8
mov 0x02,r3 ; r3 set to 0x02
mov.w r3,@(r0,r14)
mov.l @(loc_8c1A9EBC,pc),r3 ; r3 set to 0x8C129728
jsr @r3
add 0x4C,r4
mov.w @r15,r0 ; r0 ??? bc r15 is ???

loc_8c1A9E16:
add 0x0C,r15
lds.l @r15+,pr
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8c1A9E20:
#data 0x6E432FE6
#data 0x6D432FD6
#data 0x7D502FC6
#data 0x4F222FB6
#data 0x880150E1
#data 0x6CD28F5B
#data 0x420BD221
#data 0x200854E2
#data 0x90398B55
#data 0x65D366D3
#data 0x02EE67D3
#data 0x75207004
#data 0x76247728
#data 0x04EE420B
#data 0x53D854D6
#data 0x343852D9
#data 0x8F013427
#data 0x54D952D1

#align4
loc_8c1A9E68:
#data 0x8F013427
#data 0x54D155D5

#align4
loc_8c1A9E70:
#data 0x84EE5BD8
#data 0x88024B00
#data 0x8F233B5C
#data 0x51D7E700
#data 0x6D7353D8
#data 0x4100313C
#data 0x315C4415
#data 0x8F246573
#data 0x6673

loc_8c1A9E92:
#data 0x6353
#data 0x33CC4300
#data 0x63316063
#data 0x0B357D01
#data 0x73016353
#data 0x3D434300
#data 0x633133CC
#data 0x01357502
#data 0x76028FEF
#data 0x0009A011
#data 0x00000088

#align4
loc_8c1A9EBC:
#data bank12.loc_8c129728

loc_8c1A9EC0:
#data loc_8c1AA62A

loc_8c1A9EC4:
#data 0x66734415
#data 0x65738F07

#align4
loc_8c1A9ECC:
#data 0x03CD6053
#data 0x36437601
#data 0x8FF90B35
#data 0x7502

loc_8c1A9EDA:
#data 0x9026
#data 0x0E46E302
#data 0x040784EE
#data 0x041A9022
#data 0x0E464400
#data 0x1E31

loc_8c1A9EEE:
#data 0x50E1
#data 0x8B0A8802
#data 0x03EE901B
#data 0x06EE7010
#data 0x05EE7004
#data 0x430B70F0
#data 0xE30304EE
#data 0x1E31

loc_8c1A9F0A:
#data 0x4F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1A9F16:
sts.l pr,@-r15
mov.l @(loc_8c1A9F34,pc),r3 ; r3 set to 0x8C12F098
mov.l @(loc_8c1A9F30,pc),r5 ; r5 set to 0x8C1C68B4
jsr @r3
mov 0x04,r6 ; r6 set to 0x04
lds.l @r15+,pr
tst r0,r0
movt r0
rts
nop
;-------------------------------------------------------------------------------
#data 0x00A0
#data 0x009000A4

#align4
loc_8c1A9F30:
#data bank1c.loc_8c1c68B4

loc_8c1A9F34:
#data bank12.loc_8c12F098

loc_8c1A9F38:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x4F222F86
#data 0xD9647FF8
#data 0x4D156D53
#data 0x2F626B43
#data 0x58FC1F71
#data 0x8F0B5AFA
#data 0xDC60EE00

#align4
loc_8c1A9F60:
#data 0x64E365C2
#data 0x490BE604
#data 0x200834BC
#data 0x7E018902
#data 0x8BF53ED3

#align4
loc_8c1A9F74:
#data 0x8B013ED0
#data 0x0009A0A2

#align4
loc_8c1A9F7C:
#data 0x401160E3
#data 0xA0058B01
#data 0xC903

loc_8c1A9F86:
#data 0x6007
#data 0xC9037001
#data 0x70016007

#align4
loc_8c1A9F90:
#data 0x89012008
#data 0x0009A094

#align4
loc_8c1A9F98:
#data 0x7C086CE3
#data 0x63C13CBC
#data 0x633DE201
#data 0x8B013327
#data 0x0009A08A

#align4
loc_8c1A9FAC:
#data 0x8F0B4D15
#data 0xEE00

loc_8c1A9FB2:
#data 0xD24C
#data 0xE60464E3
#data 0x490B6522
#data 0x200834BC
#data 0x7E018902
#data 0x8BF43ED3

#align4
loc_8c1A9FC8:
#data 0x89793ED0
#data 0x740464E3
#data 0x62F234BC
#data 0x7E088441
#data 0x600C6340
#data 0x65034018
#data 0x633C8442
#data 0x4028600C
#data 0x8443250B
#data 0x740464C3
#data 0x22E1600C
#data 0x40184028
#data 0x253B250B
#data 0xE2FF53F1
#data 0x84412320
#data 0x600C53FD
#data 0x62034018
#data 0x61408442
#data 0x4028600C
#data 0x8443220B
#data 0x600C611C
#data 0x40184028
#data 0x221B220B
#data 0x85C12322
#data 0x28306303
#data 0x620385C7
#data 0x85C62A20
#data 0x620353FB
#data 0x50FB2320
#data 0x6000D22A
#data 0x420B53FE
#data 0x23026153
#data 0x53FFE201
#data 0x60A02322
#data 0x8B058810
#data 0x02FEE040
#data 0x2231E300
#data 0x0009A01F

#align4
loc_8c1AA060:
#data 0x8B058808
#data 0x02FEE040
#data 0x2231E301
#data 0x0009A017

#align4
loc_8c1AA070:
#data 0x880460A0
#data 0x63808B13
#data 0x430052FB
#data 0xE3042230
#data 0x450152FF
#data 0x60802232
#data 0x52FED318
#data 0x6153430B
#data 0xE0402202
#data 0x2A20E210
#data 0x03FEE202
#data 0x2321

loc_8c1AA09E:
#data 0x63A0
#data 0x890D2338
#data 0x623053FB
#data 0x89092228
#data 0x44156480
#data 0xE3028B06
#data 0x89033437
#data 0x623253FD
#data 0x8B012228

#align4
loc_8c1AA0C0:
#data 0xE0FFA001

loc_8c1AA0C4:
#data 0xE000

loc_8c1AA0C6:
#data 0x7F08
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00006EF6

#align4
loc_8c1AA0DC:
#data bank12.loc_8c12F098

loc_8c1AA0E0:
#data bank1c.loc_8c1c9D78

loc_8c1AA0E4:
#data bank1c.loc_8c1c9D80

loc_8c1AA0E8:
#data bank12.loc_8c129128

loc_8c1AA0EC:
#data bank12.loc_8c1291DC


loc_8c1AA0F0:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
add 0xF4,r15
mov.w @(loc_8c1AA1D2,pc),r3 ; r3 set to 0xAA
mov r4,r14
mov.l r5,@(0x04,r15)
mov r14,r2
add r14,r3 ; r3 ??? bc r14 is ???
mov.l r6,@(0x08,r15)
add 0x10,r2
mov r14,r7
mov 0x01,r0 ; r0 set to 0x01
add 0x0C,r7
mov.w r0,@(0x02,r14)
mov.l r3,@-r15
mov r14,r3
add 0x18,r3
mov.l r2,@-r15
mov.l r3,@-r15
mov r14,r2
mov r14,r3
add 0x14,r2
add 0x0E,r3
mov.l r2,@-r15
mov.l r3,@-r15
mov r14,r2
add 0x0F,r2
mov r14,r3
add 0x0D,r3
mov.l r2,@-r15
mov.l r3,@-r15
mov r15,r6
mov.l @(0x24,r15),r5
add 0x1C,r6
bsr loc_8c1A9F38
mov.l @(0x20,r15),r4
mov r0,r4 ; r4 set to 0x01
cmp/pz r4
bt/s loc_8c1AA146
add 0x1C,r15
bra loc_8c1AA1C8
mov 0x00,r0

loc_8c1AA146:
mov 0x00,r13 ; r13 set to 0x00
mov r13,r0 ; r0 set to 0x00
mov.w r0,@(0x1C,r14)
mov 0x4A,r0 ; r0 set to 0x4A
mov.w r13,@(r0,r14)
mov 0x48,r0 ; r0 set to 0x48
mov.w r13,@(r0,r14)
mov 0x26,r0 ; r0 set to 0x26
mov.w r13,@(r0,r14)
mov 0x24,r0 ; r0 set to 0x24
mov.w r13,@(r0,r14)
mov 0x58,r1 ; r1 set to 0x58
add r14,r1 ; r1 ??? bc r14 is ???
mov.l r13,@(0x34,r14)
mov.l r13,@(0x30,r14)
mov.l r13,@(0x2C,r14)
mov.l r13,@(0x28,r14)
mov.l r13,@(0x20,r14)
mov.b @(0x0E,r14),r0
mov.l r0,@r1
mov 0x5C,r1 ; r1 set to 0x5C
mov.b @(0x0F,r14),r0
add r14,r1 ; r1 ??? bc r14 is ???
mov.l r0,@r1
mov 0x60,r0 ; r0 set to 0x60
mov.l @(0x10,r14),r3
mov.l r3,@(r0,r14)
mov 0x64,r0 ; r0 set to 0x64
mov.l @(0x3C,r14),r2
mov.l r2,@(r0,r14)
mov 0x40,r0 ; r0 set to 0x40
mov.l @(r0,r14),r3
mov 0x68,r0 ; r0 set to 0x68
mov r14,r4
mov.l r3,@(r0,r14)
mov 0x44,r0 ; r0 set to 0x44
mov.l @(r0,r14),r2
mov 0x6C,r0 ; r0 set to 0x6C
mov r14,r3
add 0x7C,r3
mov.l r2,@(r0,r14)
mov 0x48,r0 ; r0 set to 0x48
mov.w @(r0,r14),r2
mov 0x4A,r0 ; r0 set to 0x4A
mov 0x04,r6 ; r6 set to 0x04
mov r13,r5 ; r5 set to 0x00
mov.w r2,@r3
mov r14,r2
mov.w @(r0,r14),r3
mov 0x7E,r0 ; r0 set to 0x7E
add 0x4C,r2
mov.w r3,@(r0,r14)
add 0x02,r0 ; r0 set to 0x80
mov.l r2,@(r0,r14)
add 0x1C,r0 ; r0 set to 0x9C
mov.l r13,@(r0,r14)
add 0xFC,r0 ; r0 set to 0x98
mov.l r13,@(r0,r14)
add 0x10,r0 ; r0 set to 0xA8
mov 0x01,r3 ; r3 set to 0x01
mov.w r3,@(r0,r14)
mov.l @(loc_8c1AA1D4,pc),r3 ; r3 set to 0x8C129728
jsr @r3
add 0x4C,r4
mov.w @r15,r0 ; r0 ??? bc r15 is ???

loc_8c1AA1C8:
add 0x0C,r15
lds.l @r15+,pr
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1AA1D2:
#data 0x00AA

#align4
loc_8c1AA1D4:
#data bank12.loc_8c129728

loc_8c1AA1D8:
#data 0x6E432FE6
#data 0x6D432FD6
#data 0x7D502FC6
#data 0x4F222FB6
#data 0x880150E1
#data 0x6CD28F55
#data 0x420BD236
#data 0x200854E2
#data 0x90628B4F
#data 0x65D366D3
#data 0x02EE67D3
#data 0x75207004
#data 0x76247728
#data 0x04EE420B
#data 0x53D854D6
#data 0x343852D9
#data 0x8F013427
#data 0x54D952D1

#align4
loc_8c1AA220:
#data 0x8F013427
#data 0x54D155D5

#align4
loc_8c1AA228:
#data 0x84EE5BD8
#data 0x88024B00
#data 0x8F1D3B5C
#data 0x51D7E700
#data 0x6D7353D8
#data 0x4100313C
#data 0x315C4415
#data 0x8F1E6573
#data 0x6673

loc_8c1AA24A:
#data 0x6353
#data 0x33CC4300
#data 0x63316063
#data 0x0B357D01
#data 0x73016353
#data 0x3D434300
#data 0x633133CC
#data 0x01357502
#data 0x76028FEF
#data 0x0009A00B

#align4
loc_8c1AA270:
#data 0x66734415
#data 0x65738F07

#align4
loc_8c1AA278:
#data 0x03CD6053
#data 0x36437601
#data 0x8FF90B35
#data 0x7502

loc_8c1AA286:
#data 0x901D
#data 0x0E46E302
#data 0x040784EE
#data 0x041A9019
#data 0x0E464400
#data 0x1E31

loc_8c1AA29A:
#data 0x50E1
#data 0x8B0A8802
#data 0x03EE9012
#data 0x06EE7010
#data 0x05EE7004
#data 0x430B70F0
#data 0xE30304EE
#data 0x1E31

loc_8c1AA2B6:
#data 0x4F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00886EF6
#data 0x00A400A0
#data 0x00000090

#align4
loc_8c1AA2CC:
#data loc_8c1AA62A

loc_8c1AA2D0:
#data 0x6E432FE6
#data 0x6D432FD6
#data 0x7D502FC6
#data 0x2FA62FB6
#data 0x50E14F22
#data 0x8F5E8801
#data 0xD23B6CD2
#data 0x54E2420B
#data 0x8B582008
#data 0x66D3906C
#data 0x67D365D3
#data 0x700402EE
#data 0x77287520
#data 0x420B7624
#data 0x54D604EE
#data 0x52D953D8
#data 0x34273438
#data 0x52D18F01
#data 0x54D9

loc_8c1AA31A:
#data 0x3427
#data 0x55D58F01
#data 0x54D1

loc_8c1AA322:
#data 0x5AD8
#data 0x4A0084EE
#data 0x3A5C8802
#data 0xEB008F22
#data 0x67B351D7
#data 0x313C53D8
#data 0x44154100
#data 0x65B3315C
#data 0x66B38F28

#align4
loc_8c1AA344:
#data 0x025C60C3
#data 0x336C63A3
#data 0x6063622C
#data 0x42187280
#data 0x63532321
#data 0x33CC7301
#data 0x77016330
#data 0x75023743
#data 0x7380633C
#data 0x01354318
#data 0x76028FEA
#data 0x0009A010

#align4
loc_8c1AA374:
#data 0x4415E500
#data 0x67B3E600
#data 0x8F0935CC
#data 0x36AC

loc_8c1AA382:
#data 0x6354
#data 0x37437701
#data 0x7380633C
#data 0x26314318
#data 0x76028FF7

#align4
loc_8c1AA394:
#data 0xE302901D
#data 0x84EE0E46
#data 0x90190407
#data 0x0E46041A
#data 0x1E31

loc_8c1AA3A6:
#data 0x50E1
#data 0x8B0A8802
#data 0x03EE9013
#data 0x06EE7010
#data 0x05EE7004
#data 0x430B70F0
#data 0xE30304EE
#data 0x1E31

loc_8c1AA3C2:
#data 0x4F26
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x00A00088
#data 0x009000A4

#align4
loc_8c1AA3D8:
#data loc_8c1AA62A

loc_8c1AA3DC:
#data 0x6E432FE6
#data 0x6D432FD6
#data 0x7D502FC6
#data 0x2FA62FB6
#data 0x50E14F22
#data 0x8F6F8801
#data 0xD2446CD2
#data 0x54E2420B
#data 0x8B692008
#data 0x66D3907D
#data 0x67D365D3
#data 0x700402EE
#data 0x77287520
#data 0x420B7624
#data 0x54D604EE
#data 0x52D953D8
#data 0x34273438
#data 0x52D18F01
#data 0x54D9

loc_8c1AA426:
#data 0x3427
#data 0x55D58F01
#data 0x54D1

loc_8c1AA42E:
#data 0x5BD8
#data 0x4B0084EE
#data 0x3B5C8802
#data 0xE7008F2C
#data 0x53D85AD7
#data 0x3A3C6D73
#data 0x44154A00
#data 0x65733A5C
#data 0x66738F38

#align4
loc_8c1AA450:
#data 0x72026253
#data 0x60C332CC
#data 0x61B36320
#data 0x316C025C
#data 0x6063633C
#data 0x4318622C
#data 0x6253232B
#data 0x63532131
#data 0x72017303
#data 0x32CC33CC
#data 0x62206330
#data 0x633C7D01
#data 0x622C3D43
#data 0x232B4318
#data 0x0A357504
#data 0x76028FE0
#data 0x0009A016

#align4
loc_8c1AA494:
#data 0x4415E600
#data 0x65736D73
#data 0x36BC8F10

#align4
loc_8c1AA4A0:
#data 0x73016353
#data 0x605333CC
#data 0x7D016330
#data 0x3D4302CC
#data 0x622C633C
#data 0x232B4318
#data 0x26317502
#data 0x76028FF0

#align4
loc_8c1AA4C0:
#data 0xE302901E
#data 0x84EE0E46
#data 0x901A0407
#data 0x4400041A
#data 0x1E310E46

#align4
loc_8c1AA4D4:
#data 0x880250E1
#data 0x90138B0A
#data 0x701003EE
#data 0x700406EE
#data 0x70F005EE
#data 0x04EE430B
#data 0x1E31E303

#align4
loc_8c1AA4F0:
#data 0x6AF64F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00886EF6
#data 0x00A400A0
#data 0x00000090

#align4
loc_8c1AA508:
#data loc_8c1AA62A


loc_8c1AA50C:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8c1AA570,pc),r3 ; r3 set to 0x8C12F098
mov.l @(loc_8c1AA56C,pc),r5 ; r5 set to 0x8C1C68BC
mov.l r4,@r15
jsr @r3
mov 0x04,r6 ; r6 set to 0x04
tst r0,r0
bf loc_8c1AA536
mov.l @r15,r4
mov 0x04,r6 ; r6 set to 0x04
mov.l @(loc_8c1AA570,pc),r3 ; r3 set to 0x8C12F098
mov.l @(loc_8c1AA574,pc),r5 ; r5 set to 0x8C1C68CC
jsr @r3
add 0x08,r4
tst r0,r0
bf loc_8c1AA536
add 0x04,r15
lds.l @r15+,pr
rts
mov 0x01,r0
;-------------------------------------------------------------------------------

loc_8c1AA536:
mov 0x00,r0 ; r0 set to 0x00
add 0x04,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c1AA540:
mov.w @(loc_8c1AA568,pc),r0 ; r0 set to 0xAA
mov.w @(r0,r4),r0 ; r0 ??? bc r4 is ???
cmp/eq 0x02,r0
bf loc_8c1AA54C
bra loc_8c1AA3DC
nop

loc_8c1AA54C:
mov.w @(loc_8c1AA568,pc),r0 ; r0 set to 0xAA
mov.w @(r0,r4),r0 ; r0 ??? bc r4 is ???
cmp/eq 0x01,r0
bf loc_8c1AA558
bra loc_8c1AA2D0
nop

loc_8c1AA558:
mov.w @(loc_8c1AA568,pc),r0 ; r0 set to 0xAA
mov.w @(r0,r4),r2
tst r2,r2
bf loc_8c1AA564
bra loc_8c1AA1D8
nop

loc_8c1AA564:
rts
nop
;-------------------------------------------------------------------------------

loc_8c1AA568:
#data 0x00AA
#data 0x0000

#align4
loc_8c1AA56C:
#data bank1c.loc_8c1c68BC

loc_8c1AA570:
#data bank12.loc_8c12F098

loc_8c1AA574:
#data bank1c.loc_8c1c68CC


loc_8c1AA578:
mov.l @(loc_8c1AA6B4,pc),r3 ; r3 set to 0x8C129728
mov.l @(loc_8c1AA6B0,pc),r4 ; r4 set to 0x8C3491C4
mov.w @(loc_8c1AA6AC,pc),r6 ; r6 set to 0x1A0
jmp @r3
mov 0x00,r5

loc_8c1AA582:
#data 0x2FE6
#data 0x2FC62FD6
#data 0x7FFC4F22
#data 0xEC34D548
#data 0xEE00E408

#align4
loc_8c1AA594:
#data 0x031A0EC7
#data 0x6232335C
#data 0x89022228
#data 0x3E437E01
#data 0x8BF6

loc_8c1AA5A6:
#data 0x60E3
#data 0x8B018808
#data 0xE000A01F

#align4
loc_8c1AA5B0:
#data 0xD3400EC7
#data 0x0D1AE634
#data 0xE5003D5C
#data 0x64D3430B
#data 0x67D3E201
#data 0x2D22E300
#data 0x62337730
#data 0x946ED53A
#data 0x1D321DE1
#data 0xD3391D33
#data 0x77022F72
#data 0x66F2430B
#data 0x64D3D234
#data 0xE500E608
#data 0x7428420B
#data 0x60D3

loc_8c1AA5EE:
#data 0x7F04
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1AA5FA:
add 0xF4,r15
mov.l r4,@(0x04,r15)
mov.l r6,@r15
mov.l @(0x04,r15),r7
mov.l @(loc_8c1AA6BC,pc),r3 ; r3 set to 0x8C17E7DC
add 0x30,r7
mov.l r7,@(0x08,r15)
add 0x02,r7
mov.l @r15,r4
mov.l @(0x08,r15),r6
jmp @r3
add 0x0C,r15

loc_8c1AA612:
tst r4,r4
bt loc_8c1AA622
mov.l @(loc_8c1AA6B4,pc),r3 ; r3 set to 0x8C129728
mov 0x00,r2 ; r2 set to 0x00
mov 0x34,r6 ; r6 set to 0x34
mov.l r2,@r4
jmp @r3
mov r2,r5

loc_8c1AA622:
rts
nop
;-------------------------------------------------------------------------------
#data 0x000B
#data 0x1452
;-------------------------------------------------------------------------------

loc_8c1AA62A:
rts
mov.l @(0x0C,r4),r0
;-------------------------------------------------------------------------------

loc_8c1AA62E:
mov.l @(0x0C,r4),r3
tst r3,r3
bf loc_8c1AA646
mov 0x00,r2 ; r2 set to 0x00
mov 0x01,r3 ; r3 set to 0x01
mov.l r3,@(0x14,r4)
mov.l r5,@(0x18,r4)
mov.l r6,@(0x1C,r4)
mov.l r7,@(0x20,r4)
mov.l r2,@(0x24,r4)
rts
mov r3,r0
;-------------------------------------------------------------------------------

loc_8c1AA646:
mov 0x00,r0 ; r0 set to 0x00
rts
nop
;-------------------------------------------------------------------------------

loc_8c1AA64C:
mov.l @(0x0C,r4),r3
tst r3,r3
bf loc_8c1AA664
mov 0x02,r3 ; r3 set to 0x02
mov.l r3,@(0x14,r4)
mov.l r5,@(0x18,r4)
mov.l r6,@(0x1C,r4)
mov.l r7,@(0x20,r4)
mov.l @r15,r2
mov.l r2,@(0x24,r4)
rts
mov 0x01,r0
;-------------------------------------------------------------------------------

loc_8c1AA664:
mov 0x00,r0 ; r0 set to 0x00
rts
nop
;-------------------------------------------------------------------------------

loc_8c1AA66A:
#data 0x5343
#data 0x8B032338
#data 0xE300E201
#data 0x14231434

#align4
loc_8c1AA678:
#data 0x0009000B
;-------------------------------------------------------------------------------

loc_8c1AA67C:
mov 0x00,r2 ; r2 set to 0x00
mov r4,r3
mov.l r4,@-r15
mov 0x08,r6 ; r6 set to 0x08
mov.l r2,@(0x0C,r3)
mov r2,r5 ; r5 set to 0x00
mov.l @r15,r4
mov.l @(loc_8c1AA6B4,pc),r3 ; r3 set to 0x8C129728
add 0x28,r4
jmp @r3
add 0x04,r15

loc_8c1AA692:
#data 0x5043
#data 0x8B018803
#data 0x1423E200

#align4
loc_8c1AA69C:
#data 0x0009000B
;-------------------------------------------------------------------------------

loc_8c1AA6A0:
rts
mov.l @(0x10,r4),r0
;-------------------------------------------------------------------------------

#align4
loc_8c1AA6A4:
#data 0xE301D206
#data 0x2232000B
;-------------------------------------------------------------------------------

loc_8c1AA6AC:
#data 0x01A0
#data 0x01F4

#align4
loc_8c1AA6B0:
#data 0x8C3491C4

#align4
loc_8c1AA6B4:
#data bank12.loc_8c129728
#data 0x0000AC44

#align4
loc_8c1AA6BC:
#data bank17.loc_8c17E7DC

loc_8c1AA6C0:
#data bank1c.loc_8c1c9D84

loc_8c1AA6C4:
#data 0x4F222FE6
#data 0x6E437FF8
#data 0x880150E3
#data 0xE2028B01
#data 0x1E23

loc_8c1AA6D6:
#data 0x50E3
#data 0x8B3C8802
#data 0x880150E5
#data 0x63E38B12
#data 0x2F327330
#data 0x853167E3
#data 0x2F067728
#data 0x51F16203
#data 0x6311D224
#data 0x56E82F36
#data 0x420B55E7
#data 0x7F0854E6
#data 0x1E04A025

#align4
loc_8c1AA708:
#data 0x723062E3
#data 0x85211F21
#data 0x722862E3
#data 0x63032F06
#data 0x631151F2
#data 0x1F222F36
#data 0x2F267204
#data 0x2F3653E9
#data 0xD31855E7
#data 0x57F456E8
#data 0x54E6430B
#data 0x40117F10
#data 0x1E048F02
#data 0xC901A005

#align4
loc_8c1AA740:
#data 0x70016007
#data 0x6007C901
#data 0x7001

loc_8c1AA74A:
#data 0x8801
#data 0xBFA98B01
#data 0x0009

loc_8c1AA752:
#data 0xE303
#data 0x1E33

loc_8c1AA756:
#data 0x7F08
#data 0x000B4F26
#data 0x2FE66EF6
#data 0x9D102FD6
#data 0x4F22D40A
#data 0x6E433D4C
#data 0x604264E3
#data 0x8B018801
#data 0x0009BFA6
#data 0x3ED27E34
#data 0x4F268BF6
#data 0x000B6DF6
#data 0x01A06EF6

#align4
loc_8c1AA788:
#data bank1b.loc_8c1b79E0

loc_8c1AA78C:
#data bank1b.loc_8c1b7AF8
#data 0x8C3491C4


loc_8c1AA794:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xF4,r15
mov.w @(loc_8c1AA8B6,pc),r1 ; r1 set to 0x300
mov.w r4,@r15
mov.w @r15,r0
extu.w r0,r0
cmp/eq r1,r0
bt loc_8c1AA7C8
mov.w @(loc_8c1AA8B8,pc),r1 ; r1 set to 0x340
cmp/eq r1,r0
bt loc_8c1AA7C8
mov.w @(loc_8c1AA8BA,pc),r1 ; r1 set to 0x380
cmp/eq r1,r0
bt loc_8c1AA7C8
mov.w @(loc_8c1AA8BC,pc),r1 ; r1 set to 0x3C0
cmp/eq r1,r0
bt loc_8c1AA7C8
bra loc_8c1AA9B8
nop

loc_8c1AA7C8:
mov.l @(loc_8c1AA8D4,pc),r2 ; r2 set to 0x8C1B7CF4
mov.l @(loc_8c1AA8D0,pc),r12 ; r12 set to 0x8C349364
jsr @r2
mov.l r5,@r12 ; r12 ??? bc r5 is ???
mov.l @(loc_8c1AA8DC,pc),r4 ; r4 set to 0x8C1C69F0
mov.l @(loc_8c1AA8D8,pc),r14 ; r14 set to 0x8C1B7F02
jsr @r14
mov.l r0,@(0x08,r15)
mov.l @(loc_8c1AA8E0,pc),r4 ; r4 set to 0x8C1C6A14
mov 0x08,r6 ; r6 set to 0x08
bsr loc_8c1AA9CC
mov 0x0A,r5 ; r5 set to 0x0A
mov.l @(loc_8c1AA8E4,pc),r4 ; r4 set to 0x8C1C6A20
mov 0x08,r6 ; r6 set to 0x08
bsr loc_8c1AA9CC
mov 0x12,r5 ; r5 set to 0x12
mov.l @(loc_8c1AA8E8,pc),r4 ; r4 set to 0x8C1C6A2C
mov 0x08,r6 ; r6 set to 0x08
bsr loc_8c1AA9CC
mov 0x1A,r5 ; r5 set to 0x1A
mov.l @(loc_8c1AA8EC,pc),r4 ; r4 set to 0x8C1C6A38
mov 0x08,r6 ; r6 set to 0x08
bsr loc_8c1AA9CC
mov 0x22,r5 ; r5 set to 0x22
mov.l @(loc_8c1AA8F0,pc),r4 ; r4 set to 0x8C1C6A44
jsr @r14
nop
mov.w @(loc_8c1AA8BE,pc),r0 ; r0 set to 0xA8
mov.l @r12,r3
mov.l @(loc_8c1AA8F4,pc),r13 ; r13 set to 0x8C1B7F38
jsr @r13
mov.l @(r0,r3),r4 ; r4 ??? bc r3 is ???
mov.l @(loc_8c1AA8F8,pc),r4 ; r4 set to 0x8C1C6A4C
jsr @r14
nop
mov.w @(loc_8c1AA8C0,pc),r0 ; r0 set to 0xAC
mov.l @r12,r3
jsr @r13
mov.l @(r0,r3),r4 ; r4 ??? bc r3 is ???
mov.l @(loc_8c1AA8FC,pc),r4 ; r4 set to 0x8C1C6A58
mov 0x08,r6 ; r6 set to 0x08
bsr loc_8c1AA9CC
mov 0x2D,r5 ; r5 set to 0x2D
mov.l @r12,r4 ; r4 ??? bc r12 is ???
mov 0x08,r6 ; r6 set to 0x08
mov.w @(loc_8c1AA8C2,pc),r11 ; r11 set to 0xF0
add r11,r4
mov.l @r4,r2 ; r2 ??? bc r4 is ???
mov.l r2,@(0x04,r15)
mov.l @r12,r3
mov.l @(0x04,r3),r2
mov.l r2,@r4
mov.l @(loc_8c1AA900,pc),r4 ; r4 set to 0x8C1C6A68
bsr loc_8c1AA9CC
mov 0x35,r5 ; r5 set to 0x35
mov.l @(0x04,r15),r2
mov 0x08,r6 ; r6 set to 0x08
mov.l @r12,r0 ; r0 ??? bc r12 is ???
mov.l @(loc_8c1AA904,pc),r4 ; r4 set to 0x8C1C6A74
mov.l r2,@(r0,r11)  ; r11 ??? bc r2 is ???
bsr loc_8c1AA9CC
mov 0x02,r5 ; r5 set to 0x02
mov.l @(loc_8c1AA908,pc),r4 ; r4 set to 0x8C1C6A84
jsr @r14
nop
mov.l @r12,r0
jsr @r13
mov.l @(r0,r11),r4 ; r4 ??? bc r11 is ???
mov.l @(loc_8c1AA90C,pc),r4 ; r4 set to 0x8C1C6A8C
jsr @r14
nop
mov.w @(loc_8c1AA8C4,pc),r0 ; r0 set to 0xF4
mov.l @r12,r2
jsr @r13
mov.l @(r0,r2),r4 ; r4 ??? bc r2 is ???
mov.l @(loc_8c1AA910,pc),r4 ; r4 set to 0x8C1C6A94
jsr @r14
nop
mov.w @(loc_8c1AA8C6,pc),r0 ; r0 set to 0xF8
mov.l @r12,r3
jsr @r13
mov.l @(r0,r3),r4 ; r4 ??? bc r3 is ???
mov.l @(loc_8c1AA914,pc),r4 ; r4 set to 0x8C1C6A9C
jsr @r14
nop
mov.w @(loc_8c1AA8C8,pc),r0 ; r0 set to 0xFC
mov.l @r12,r3
jsr @r13
mov.l @(r0,r3),r4 ; r4 ??? bc r3 is ???
mov.l @(loc_8c1AA918,pc),r4 ; r4 set to 0x8C1C6AA4
jsr @r14
nop
mov.l @r12,r4 ; r4 ??? bc r12 is ???
jsr @r13
mov.l @r4,r4
mov.l @(loc_8c1AA91C,pc),r4 ; r4 set to 0x8C1C6AAC
jsr @r14
nop
mov.w @(loc_8c1AA8CA,pc),r0 ; r0 set to 0x100
mov.l @r12,r3
jsr @r13
mov.l @(r0,r3),r4 ; r4 ??? bc r3 is ???
mov.l @(loc_8c1AA920,pc),r4 ; r4 set to 0x8C1C6AB4
jsr @r14
nop
mov.w @(loc_8c1AA8CC,pc),r0 ; r0 set to 0x104
mov.l @r12,r3
jsr @r13
mov.l @(r0,r3),r4 ; r4 ??? bc r3 is ???
mov.l @(loc_8c1AA924,pc),r4 ; r4 set to 0x8C1C6ABC
jsr @r14
nop
mov.w @(loc_8c1AA8CE,pc),r0 ; r0 set to 0x108
mov.l @r12,r3
jsr @r13
mov.l @(r0,r3),r4 ; r4 ??? bc r3 is ???
mov.l @(loc_8c1AA928,pc),r8 ; r8 set to 0x8C1C6ACC
bra loc_8c1AA92C
nop

loc_8c1AA8B6:
#data 0x0300

loc_8c1AA8B8:
#data 0x0340

loc_8c1AA8BA:
#data 0x0380

loc_8c1AA8BC:
#data 0x03C0

loc_8c1AA8BE:
#data 0x00A8

loc_8c1AA8C0:
#data 0x00AC

loc_8c1AA8C2:
#data 0x00F0

loc_8c1AA8C4:
#data 0x00F4

loc_8c1AA8C6:
#data 0x00F8

loc_8c1AA8C8:
#data 0x00FC

loc_8c1AA8CA:
#data 0x0100

loc_8c1AA8CC:
#data 0x0104

loc_8c1AA8CE:
#data 0x0108

#align4
loc_8c1AA8D0:
#data 0x8C349364

#align4
loc_8c1AA8D4:
#data bank1b.loc_8c1b7CF4

loc_8c1AA8D8:
#data bank1b.loc_8c1b7F02

loc_8c1AA8DC:
#data bank1c.loc_8c1c69F0

loc_8c1AA8E0:
#data bank1c.loc_8c1c6A14

loc_8c1AA8E4:
#data bank1c.loc_8c1c6A20

loc_8c1AA8E8:
#data bank1c.loc_8c1c6A2C

loc_8c1AA8EC:
#data bank1c.loc_8c1c6A38

loc_8c1AA8F0:
#data bank1c.loc_8c1c6A44

loc_8c1AA8F4:
#data bank1b.loc_8c1b7F38

loc_8c1AA8F8:
#data bank1c.loc_8c1c6A4C

loc_8c1AA8FC:
#data bank1c.loc_8c1c6A58

loc_8c1AA900:
#data bank1c.loc_8c1c6A68

loc_8c1AA904:
#data bank1c.loc_8c1c6A74

loc_8c1AA908:
#data bank1c.loc_8c1c6A84

loc_8c1AA90C:
#data bank1c.loc_8c1c6A8C

loc_8c1AA910:
#data bank1c.loc_8c1c6A94

loc_8c1AA914:
#data bank1c.loc_8c1c6A9C

loc_8c1AA918:
#data bank1c.loc_8c1c6AA4

loc_8c1AA91C:
#data bank1c.loc_8c1c6AAC

loc_8c1AA920:
#data bank1c.loc_8c1c6AB4

loc_8c1AA924:
#data bank1c.loc_8c1c6ABC

loc_8c1AA928:
#data bank1c.loc_8c1c6ACC


loc_8c1AA92C:
mov.l @(loc_8c1AAA28,pc),r9 ; r9 set to 0x8C1C6AC4
mov 0x00,r12 ; r12 set to 0x00
mov 0x45,r11 ; r11 set to 0x45

loc_8c1AA932:
mov r12,r0 ; r0 set to 0x00
cmp/pz r0
bf loc_8c1AA93C
bra loc_8c1AA946
and 0x03,r0

#align4
loc_8c1AA93C:
#data 0x70016007
#data 0x6007C903
#data 0x7001


loc_8c1AA946:
tst r0,r0
bf loc_8c1AA94E
jsr @r14
mov r9,r4

loc_8c1AA94E:
mov.l @(loc_8c1AAA2C,pc),r3 ; r3 set to 0x8C1C68DC, r3 set to 0x8C1C68DC
mov r12,r10
shll2 r10
add r3,r10
jsr @r13
mov.l @r10,r4
mov.l @(loc_8c1AAA30,pc),r4 ; r4 set to 0x8C1C6AC8, r4 set to 0x8C1C6AC8
jsr @r14
nop
mov.l @r10,r4 ; r4 ??? bc r10 is ???, r4 ??? bc r10 is ???
jsr @r13
mov.l @r4,r4
jsr @r14
mov r8,r4
add 0x01,r12
cmp/ge r11,r12
bf loc_8c1AA932
jsr @r14
mov r9,r4
mov.l @(0x08,r15),r0
cmp/eq 0x00,r0
bt loc_8c1AA982
cmp/eq 0x01,r0
bt loc_8c1AA988
bra loc_8c1AA988
nop

loc_8c1AA982:
mov.l @(loc_8c1AAA34,pc),r4 ; r4 set to 0x8C1C6AD0
bra loc_8c1AA98A
nop

loc_8c1AA988:
#data 0xD42B


loc_8c1AA98A:
jsr @r14
nop
mov.l @(loc_8c1AAA3C,pc),r14 ; r14 set to 0x8C1B7E72

loc_8c1AA990:
jsr @r14
nop
exts.b r0,r0
cmp/eq 0x0D,r0
bf loc_8c1AA990
mov.w @r15,r3
mov.l @(loc_8c1AAA40,pc),r2 ; r2 set to 0xFF000024, r2 set to 0xFF000024
extu.w r3,r3
mov.l r3,@r2 ; r2 ??? bc r3 is ???, r2 ??? bc r3 is ???
add 0x0C,r15
lds.l @r15+,pr
mov.l @(loc_8c1AAA44,pc),r1 ; r1 set to 0x8C1B7EAC, r1 set to 0x8C1B7EAC
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r1
mov.l @r15+,r14

loc_8c1AA9B8:
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

#align4
loc_8c1AA9CC:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x4F222F86
#data 0xDC1A7FF8
#data 0x4C0B2F52
#data 0x6DF21F61
#data 0x6BD353F1
#data 0xDA19D918
#data 0xD8163B3C
#data 0x6ED33DB3
#data 0x4E088D09

#align4
loc_8c1AA9FC:
#data 0x480B6092
#data 0x4C0B04EE
#data 0x7D0164A3
#data 0x8FF73DB3
#data 0x7E04

loc_8c1AAA0E:
#data 0xD406
#data 0x00094C0B
#data 0x4F267F08
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1AAA28:
#data bank1c.loc_8c1c6AC4

loc_8c1AAA2C:
#data bank1c.loc_8c1c68DC

loc_8c1AAA30:
#data bank1c.loc_8c1c6AC8

loc_8c1AAA34:
#data bank1c.loc_8c1c6AD0

loc_8c1AAA38:
#data bank1c.loc_8c1c6B1C

loc_8c1AAA3C:
#data bank1b.loc_8c1b7E72

loc_8c1AAA40:
#data 0xFF000024

#align4
loc_8c1AAA44:
#data bank1b.loc_8c1b7EAC

loc_8c1AAA48:
#data bank1b.loc_8c1b7F02

loc_8c1AAA4C:
#data bank1b.loc_8c1b7F38
#data 0x8C349364

#align4
loc_8c1AAA54:
#data bank1c.loc_8c1c6ACC


loc_8c1AAA58:
mov.l @(loc_8c1AAA68,pc),r2 ; r2 set to 0xA05F688C
mov.l @r2,r0
tst 0x01,r0
movt r3
mov.l r3,@r4
rts
mov 0x00,r0
;-------------------------------------------------------------------------------
#data 0x0000

#align4
loc_8c1AAA68:
#data 0xA05F688C


loc_8c1AAA6C:
mov.l @(loc_8c1AAA88,pc),r2 ; r2 set to 0x8C1C993C
mov 0x00,r1 ; r1 set to 0x00
mov.l @r4,r0
mov.l @r2,r3
shll2 r0
shll2 r0
mov.l @r3,r3
shll r0
add r3,r0
mov r0,r4
mov.l r1,@(0x1C,r4)
rts
mov r1,r0
;-------------------------------------------------------------------------------
#data 0x0000

#align4
loc_8c1AAA88:
#data bank1c.loc_8c1c993C


loc_8c1AAA8C:
mov.l @(loc_8c1AAAA8,pc),r2 ; r2 set to 0x8C1C993C
mov 0x01,r1 ; r1 set to 0x01
mov.l @r4,r0
mov.l @r2,r3
shll2 r0
shll2 r0
mov.l @r3,r3
shll r0
add r3,r0
mov r0,r4
mov.l r1,@(0x1C,r4)
rts
mov 0x00,r0
;-------------------------------------------------------------------------------
#data 0x0000

#align4
loc_8c1AAAA8:
#data bank1c.loc_8c1c993C


loc_8c1AAAAC:
mov.l @(loc_8c1AAABC,pc),r2 ; r2 set to 0xA05F688C
mov.l @r2,r0
tst 0x10,r0
movt r3
mov.l r3,@r4
rts
mov 0x00,r0
;-------------------------------------------------------------------------------
#data 0x0000

#align4
loc_8c1AAABC:
#data 0xA05F688C


loc_8c1AAAC0:
mov.l @r4,r0
swap.b r0,r1
swap.w r1,r0
swap.b r0,r1
dt r5
mov.l r1,@r4
bf/s loc_8c1AAAC0
add 0x04,r4
rts
mov 0x00,r0
;-------------------------------------------------------------------------------

loc_8c1AAAD4:
sts.l pr,@-r15
mov.l @(loc_8c1AABE4,pc),r3 ; r3 set to 0x8C129728
mov.l @(loc_8c1AABE0,pc),r4 ; r4 set to 0x8C349368
mov.w @(loc_8c1AABCA,pc),r6 ; r6 set to 0x1AF8
jsr @r3
mov 0x00,r5 ; r5 set to 0x00
mov.l @(loc_8c1AABEC,pc),r3 ; r3 set to 0x8C34AE64
mov 0x00,r4 ; r4 set to 0x00
mov.l @(loc_8c1AABE8,pc),r2 ; r2 set to 0x8C34AE60
mov r4,r1 ; r1 set to 0x00
mov.l @(loc_8c1AABF0,pc),r0 ; r0 set to 0x8C34AE68
mov.l r4,@r2 ; r2 ??
mov.l r4,@r3 ; r3 ??
lds.l @r15+,pr
rts
mov.l r4,@r0
;-------------------------------------------------------------------------------

#align4
loc_8c1AAAF4:
#data 0x2FD62FE6
#data 0x7FFC4F22
#data 0x93650002
#data 0x40094009
#data 0x2F02C90F
#data 0x20390002
#data 0x400ECBF0
#data 0xDE33ED00
#data 0x65D3E602

#align4
loc_8c1AAB18:
#data 0x222862E2
#data 0x92568904
#data 0x35637501
#data 0x3E2C8FF8

#align4
loc_8c1AAB28:
#data 0x88026053
#data 0xA01D8B01
#data 0x6ED3

loc_8c1AAB32:
#data 0x904D
#data 0xD32BE500
#data 0x70040E46
#data 0x70F80ED6
#data 0x96469448
#data 0x430B0ED6
#data 0x964434EC
#data 0xD225E500
#data 0x74046463
#data 0x34EC420B
#data 0x943DD326
#data 0x34EC430B
#data 0xE201D423
#data 0x63422E22
#data 0x24327301

#align4
loc_8c1AAB6C:
#data 0x020260F2
#data 0xC90F912C
#data 0x22194008
#data 0x202B4008
#data 0x60E3400E
#data 0x4F267F04
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1AAB8A:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
sts.l pr,@-r15
mov.w @(loc_8c1AABDA,pc),r0 ; r0 set to 0xFF60
add r0,r15
mov r15,r10
mov.l @(loc_8c1AABE4,pc),r3 ; r3 set to 0x8C129728
mov.l r5,@(0x04,r15)
mov 0x00,r5 ; r5 set to 0x00
mov.l r6,@r15
mov r4,r13
mov.w @(loc_8c1AABDC,pc),r6 ; r6 set to 0x98
add 0x08,r10
mov r7,r11
jsr @r3
mov r10,r4
mov.w @(loc_8c1AABD0,pc),r0 ; r0 set to 0x208
mov.l @(r0,r13),r2
add 0x04,r0 ; r0 set to 0x20C
mov.l @(r0,r13),r3 ; r3 ??? bc r13 is ???
cmp/eq r2,r3
bf loc_8c1AABC0
bra loc_8c1AAC54
mov 0xFF,r0

loc_8c1AABC0:
mov.w @(loc_8c1AABD4,pc),r14 ; r14 set to 0x210
mov 0x00,r4 ; r4 set to 0x00
mov r4,r12 ; r12 set to 0x00
bra loc_8c1AABFE
add r13,r14

loc_8c1AABCA:
#data 0x1AF8
#data 0x0D7CFF0F

loc_8c1AABD0:
#data 0x0208
#data 0x0B68

loc_8c1AABD4:
#data 0x0210
#data 0x0100
#data 0x0104

loc_8c1AABDA:
#data 0xFF60

loc_8c1AABDC:
#data 0x0098
#data 0x0000

#align4
loc_8c1AABE0:
#data 0x8C349368

#align4
loc_8c1AABE4:
#data bank12.loc_8c129728

loc_8c1AABE8:
#data 0x8C34AE60

#align4
loc_8c1AABEC:
#data 0x8C34AE64

#align4
loc_8c1AABF0:
#data 0x8C34AE68

#align4
loc_8c1AABF4:
#data bank13.loc_8c131D04


loc_8c1AABF8:
mov.w @(loc_8c1AAD02,pc),r2 ; r2 set to 0x124
add 0x01,r12
add r2,r14

loc_8c1AABFE:
mov.l @(0x0C,r14),r3
tst r3,r3
bf loc_8c1AABF8
mov.w @(loc_8c1AAD04,pc),r0 ; r0 set to 0x204, r0 set to 0x204
mov 0x01,r2 ; r2 set to 0x01, r2 set to 0x01
mov.w @(loc_8c1AAD08,pc),r6 ; r6 set to 0x100, r6 set to 0x100
shlr2 r11
mov.l r4,@(0x08,r14)
mov.l r2,@(0x0C,r14)
mov r6,r5 ; r5 set to 0x100, r5 set to 0x100
mov.l @(r0,r13),r3
add 0x04,r5 ; r5 set to 0x104, r5 set to 0x104
mov.w @(loc_8c1AAD06,pc),r0 ; r0 set to 0x118, r0 set to 0x118
add r13,r5 ; r5 ??? bc r13 is ???, r5 ??? bc r13 is ???
mov.l r3,@(0x14,r14)
mov.l @r15,r2 ; r2 ??? bc r15 is ???, r2 ??? bc r15 is ???
mov.l @(loc_8c1AAD18,pc),r3 ; r3 set to 0x8C129668, r3 set to 0x8C129668
mov.l r2,@r14
mov.l r11,@(0x04,r14)
mov.l r4,@(r0,r14)
add 0x04,r0 ; r0 set to 0x11C, r0 set to 0x11C
mov.l r4,@(0x10,r14)
mov.l r4,@(r0,r14)
mov r14,r4
jsr @r3
add 0x18,r4
mov.l @(loc_8c1AAD1C,pc),r2 ; r2 set to 0x8C131D04, r2 set to 0x8C131D04
jsr @r2
mov r10,r4
mov.l @(loc_8c1AAD18,pc),r3 ; r3 set to 0x8C129668, r3 set to 0x8C129668
mov r14,r4
mov.w @(loc_8c1AAD08,pc),r6 ; r6 set to 0x100, r6 set to 0x100
mov r10,r5
jsr @r3
add 0x18,r4
mov.l @r15,r2 ; r2 ??? bc r15 is ???, r2 ??? bc r15 is ???
add 0xFF,r11
shll2 r11
mov r12,r0 ; r0 ??? bc r12 is ???, r0 ??? bc r12 is ???
add r2,r11
mov.l r11,@(0x18,r14)
mov.l @(0x04,r15),r3 ; r3 ??? bc r15 is ???, r3 ??? bc r15 is ???
mov.l r3,@(0x20,r14)

loc_8c1AAC54:
mov.w @(loc_8c1AAD0A,pc),r1 ; r1 set to 0xA0, r1 set to 0xA0, r1 set to 0xA0
add r1,r15
lds.l @r15+,pr
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1AAC66:
mov.w @(loc_8c1AAD0C,pc),r0 ; r0 set to 0x20C
mov 0x00,r2 ; r2 set to 0x00
mov.l r14,@-r15
mov r5,r14
mov.l @(r0,r4),r3
add 0xFF,r3
mov.l r3,@(r0,r4)
mov.w @(loc_8c1AAD06,pc),r0 ; r0 set to 0x118
mov.l r2,@(0x0C,r14)
mov.l @(r0,r14),r3
tst r3,r3
bt loc_8c1AAC84
mov.l @(r0,r14),r3
jmp @r3
mov.l @r15+,r14

loc_8c1AAC84:
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x2FD62FE6
#data 0x2FC6ED00
#data 0x4F22EC02
#data 0x63E2DE22
#data 0x89012338
#data 0x64E3B00A
#data 0x7D019235
#data 0x8FF63DC3
#data 0x4F263E2C
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

loc_8c1AACB4:
mov.l r14,@-r15
mov.l r13,@-r15
mov r4,r13
mov.l r12,@-r15
mov 0x00,r12 ; r12 set to 0x00
sts.l pr,@-r15
mov.w @(loc_8c1AAD10,pc),r14 ; r14 set to 0x210
bra loc_8c1AACD8
add r13,r14

loc_8c1AACC6:
#data 0x52E3
#data 0x89022228
#data 0xBFCA65E3
#data 0x64D3

loc_8c1AACD2:
#data 0x9216
#data 0x3E2C7C01


loc_8c1AACD8:
mov.w @(loc_8c1AAD12,pc),r0 ; r0 set to 0x208
mov.l @(r0,r13),r3
cmp/ge r3,r12
bf loc_8c1AACC6
lds.l @r15+,pr
mov r13,r4
mov.l @(loc_8c1AAD24,pc),r3 ; r3 set to 0x8C129728
mov.w @(loc_8c1AAD0E,pc),r6 ; r6 set to 0xD7C
mov 0x00,r5 ; r5 set to 0x00
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8c1AACF2:
mov.l @(loc_8c1AAD28,pc),r2 ; r2 set to 0x8C34AE60
mov.w @(loc_8c1AAD14,pc),r0 ; r0 set to 0xD78
mov.l @r2,r3
mov.l @(r0,r3),r1
mov 0x03,r3 ; r3 set to 0x03
mov.l r3,@(0x0C,r1)
bra loc_8c1AADBA
mov 0x00,r4

loc_8c1AAD02:
#data 0x0124

loc_8c1AAD04:
#data 0x0204

loc_8c1AAD06:
#data 0x0118

loc_8c1AAD08:
#data 0x0100

loc_8c1AAD0A:
#data 0x00A0

loc_8c1AAD0C:
#data 0x020C

loc_8c1AAD0E:
#data 0x0D7C

loc_8c1AAD10:
#data 0x0210

loc_8c1AAD12:
#data 0x0208

loc_8c1AAD14:
#data 0x0D78
#data 0x0000

#align4
loc_8c1AAD18:
#data bank12.loc_8c129668

loc_8c1AAD1C:
#data bank13.loc_8c131D04
#data 0x8C349368

#align4
loc_8c1AAD24:
#data bank12.loc_8c129728

loc_8c1AAD28:
#data 0x8C34AE60
#data 0x9E812FE6
#data 0x05E79381
#data 0x4F22334C
#data 0x3E3C0E1A
#data 0x880150E3
#data 0xB02C8B07
#data 0xE2020009
#data 0x1E23E000
#data 0x000B4F26
#data 0xE0FF6EF6
#data 0x000B4F26
#data 0x2FE66EF6
#data 0x2FC62FD6
#data 0x7FFC4F22
#data 0xED009E67
#data 0x2F526C43
#data 0x3ECCA00D
#data 0x222852E3
#data 0x53E48906
#data 0x332762F2
#data 0x65D38902
#data 0x64C3BFD4
#data 0x7D019256
#data 0x90553E2C
#data 0x3D3303CE
#data 0x7F048BEE
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x92496EF6
#data 0x05279349
#data 0x051A334C
#data 0x5153353C
#data 0x89022118
#data 0x014E9043
#data 0x000B1515
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1AADBA:
mov.l r14,@-r15
cmp/pz r4
mov.l @(loc_8c1AAE40,pc),r14 ; r14 set to 0x8C34AE60
mov.w @(loc_8c1AAE3C,pc),r0 ; r0 set to 0xD78
sts.l pr,@-r15
mov.l @r14,r3
mov.l @(r0,r3),r2
bf loc_8c1AADD4
mov.w @(loc_8c1AAE3A,pc),r0 ; r0 set to 0x204
mov.l @r14,r1
mov.l @(r0,r1),r1
bra loc_8c1AADD6
add r4,r1

loc_8c1AADD4:
#data 0xD11B

loc_8c1AADD6:
#data 0x9031
#data 0x1215D31B
#data 0x044E64E2
#data 0x7418430B
#data 0x8B042008
#data 0xE501D318
#data 0x430B64E2
#data 0x7404

loc_8c1AADF2:
#data 0x4F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------

loc_8c1AADF8:
bra loc_8c1AADBA
mov 0x01,r4

loc_8c1AADFC:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_8c1AAE40,pc),r9 ; r9 set to 0x8C34AE60
mov r4,r13
mov.l @(loc_8c1AAE50,pc),r2 ; r2 set to 0x8C34AE64
mov r13,r4
mov.l @r9,r3
mov 0x00,r12 ; r12 set to 0x00
mov.l @(loc_8c1AAE54,pc),r1 ; r1 set to 0x40000
mov.l r3,@r2 ; r2 ??? bc r3 is ???
sts fpscr,r3
lds r1,fpscr
mov.w @(loc_8c1AAE36,pc),r14 ; r14 set to 0x210
mov.l r13,@r9 ; r9 ??? bc r13 is ???
mov.l r3,@r15
add r13,r14 ; r14 ??? bc r13 is ???
mov.l @(loc_8c1AAE48,pc),r3 ; r3 set to 0x8C131D04
jsr @r3
add 0x04,r4
mov.l @(loc_8c1AAE4C,pc),r10 ; r10 set to 0x8C131C90
bra loc_8c1AAE9E
mov 0x03,r11
#data 0x0124

loc_8c1AAE36:
#data 0x0210
#data 0x0208

loc_8c1AAE3A:
#data 0x0204

loc_8c1AAE3C:
#data 0x0D78
#data 0x0000

#align4
loc_8c1AAE40:
#data 0x8C34AE60
#data 0x7FFFFFFF

#align4
loc_8c1AAE48:
#data bank13.loc_8c131D04

loc_8c1AAE4C:
#data bank13.loc_8c131C90

loc_8c1AAE50:
#data 0x8C34AE64

#align4
loc_8c1AAE54:
#data 0x00040000


loc_8c1AAE58:
mov.w @(loc_8c1AAECA,pc),r0 ; r0 set to 0xD78
mov.l r14,@(r0,r13)
mov.l @(0x0C,r14),r0 ; r0 ??? bc r14 is ???
cmp/eq 0x00,r0
bt loc_8c1AAE98
cmp/eq 0x03,r0
bt loc_8c1AAE72
cmp/eq 0x01,r0
bt loc_8c1AAE7C
cmp/eq 0x02,r0
bt loc_8c1AAE92
bra loc_8c1AAE98
nop

loc_8c1AAE72:
mov r14,r5
bsr loc_8c1AAC66
mov r13,r4
bra loc_8c1AAE98
nop

loc_8c1AAE7C:
mov.w @(loc_8c1AAECC,pc),r0 ; r0 set to 0x204
mov.l @(0x14,r14),r3
mov.l @(r0,r13),r2
cmp/hi r2,r3
bt loc_8c1AAE98
mov r14,r4
mov 0x01,r5 ; r5 set to 0x01
jsr @r10
add 0x18,r4
bra loc_8c1AAE98
nop

loc_8c1AAE92:
#data 0xD310
#data 0x1E381EB3


loc_8c1AAE98:
mov.w @(loc_8c1AAECE,pc),r3 ; r3 set to 0x124
add 0x01,r12
add r3,r14

loc_8c1AAE9E:
mov.w @(loc_8c1AAED0,pc),r0 ; r0 set to 0x208, r0 set to 0x208
mov.l @(r0,r13),r2
cmp/ge r2,r12
bf loc_8c1AAE58
mov.w @(loc_8c1AAECC,pc),r0 ; r0 set to 0x204, r0 set to 0x204
mov.l @(loc_8c1AAED8,pc),r1 ; r1 set to 0x8C34AE64, r1 set to 0x8C34AE64
mov.l @(r0,r13),r2
add 0x01,r2
mov.l r2,@(r0,r13)
mov.l @r1,r3 ; r3 ??
mov.l r3,@r9
mov.l @r15,r2
lds r2,fpscr
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

loc_8c1AAECA:
#data 0x0D78

loc_8c1AAECC:
#data 0x0204

loc_8c1AAECE:
#data 0x0124

loc_8c1AAED0:
#data 0x0208
#data 0x0000

#align4
loc_8c1AAED4:
#data loc_8c1AACF2

loc_8c1AAED8:
#data 0x8C34AE64


loc_8c1AAEDC:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8c1AB024,pc),r3 ; r3 set to 0x8C1ADFA6
jsr @r3
nop
mov.l @(loc_8c1AB028,pc),r14 ; r14 set to 0x8C34AFA8
bra loc_8c1AAEF0
nop

loc_8c1AAEEC:
bsr loc_8c1AAF00
nop

loc_8c1AAEF0:
mov.b @r14,r2
tst r2,r2
bt loc_8c1AAEEC
lds.l @r15+,pr
mov.l @(loc_8c1AB02C,pc),r2 ; r2 set to 0x8C1AE218, r2 set to 0x8C1AE218
mov 0x00,r4 ; r4 set to 0x00, r4 set to 0x00
jmp @r2
mov.l @r15+,r14

loc_8c1AAF00:
sts.l pr,@-r15
mov.l @(loc_8c1AB030,pc),r3 ; r3 set to 0x8C1ADE36
jsr @r3
nop
mov.l @(loc_8c1AB034,pc),r2 ; r2 set to 0x8C1C9D88
mov.l @(loc_8c1AB038,pc),r0 ; r0 set to 0x8C34B036
mov.l @r2,r4
mov.b @r0,r1
mov.b @r4,r3 ; r3 ??? bc r4 is ???
cmp/eq r1,r3
bf loc_8c1AAF20
lds.l @r15+,pr
mov.l @(loc_8c1AB028,pc),r3 ; r3 set to 0x8C34AFA8
mov 0x01,r1 ; r1 set to 0x01
rts
mov.b r1,@r3
;-------------------------------------------------------------------------------

loc_8c1AAF20:
mov.l @(loc_8c1AB03C,pc),r0 ; r0 set to 0x8C34B28B
mov.b @r0,r0 ; r0 ??
extu.b r0,r0
tst 0x20,r0
bt loc_8c1AAF2E
bra loc_8c1AAFBE
lds.l @r15+,pr

loc_8c1AAF2E:
mov.b @r4,r0
extu.b r0,r0
cmp/eq 0x21,r0
bt loc_8c1AAF72
cmp/eq 0x23,r0
bt loc_8c1AAFA2
cmp/eq 0x24,r0
bt loc_8c1AAFAE
cmp/eq 0x25,r0
bt loc_8c1AAF7E
cmp/eq 0x26,r0
bt loc_8c1AAF78
cmp/eq 0x29,r0
bt loc_8c1AAF90
cmp/eq 0x2A,r0
bt loc_8c1AAF84
cmp/eq 0x2B,r0
bt loc_8c1AAFA8
cmp/eq 0x3D,r0
bt loc_8c1AAF6A
cmp/eq 0x3F,r0
bt loc_8c1AAF6A
cmp/eq 0x40,r0
bt loc_8c1AAF96
cmp/eq 0x5C,r0
bt loc_8c1AAF8A
cmp/eq 0x7E,r0
bt loc_8c1AAF9C
bra loc_8c1AAFB4
nop

loc_8c1AAF6A:
mov.l @(loc_8c1AB040,pc),r2 ; r2 set to 0x8C34AFA9
mov.b @r2,r4
bra loc_8c1ABE0C
lds.l @r15+,pr

loc_8c1AAF72:
mov.l @(loc_8c1AB044,pc),r3 ; r3 set to 0x8C1ADD8C
jmp @r3
lds.l @r15+,pr

loc_8c1AAF78:
mov.l @(loc_8c1AB048,pc),r3 ; r3 set to 0x8C1AC31E
jmp @r3
lds.l @r15+,pr

loc_8c1AAF7E:
mov.l @(loc_8c1AB04C,pc),r3 ; r3 set to 0x8C1AD0C4
jmp @r3
lds.l @r15+,pr

loc_8c1AAF84:
mov.l @(loc_8c1AB050,pc),r3 ; r3 set to 0x8C1ADB34
jmp @r3
lds.l @r15+,pr

loc_8c1AAF8A:
mov.l @(loc_8c1AB054,pc),r3 ; r3 set to 0x8C1AD9A8
jmp @r3
lds.l @r15+,pr

loc_8c1AAF90:
mov.l @(loc_8c1AB058,pc),r3 ; r3 set to 0x8C1ADB6E
jmp @r3
lds.l @r15+,pr

loc_8c1AAF96:
mov.l @(loc_8c1AB05C,pc),r3 ; r3 set to 0x8C1ADB96
jmp @r3
lds.l @r15+,pr

loc_8c1AAF9C:
mov.l @(loc_8c1AB060,pc),r3 ; r3 set to 0x8C1ADA42
jmp @r3
lds.l @r15+,pr

loc_8c1AAFA2:
mov.l @(loc_8c1AB064,pc),r3 ; r3 set to 0x8C1ADCEA
jmp @r3
lds.l @r15+,pr

loc_8c1AAFA8:
mov.l @(loc_8c1AB068,pc),r3 ; r3 set to 0x8C1ADCFA
jmp @r3
lds.l @r15+,pr

loc_8c1AAFAE:
mov.l @(loc_8c1AB06C,pc),r3 ; r3 set to 0x8C1ADAD8
jmp @r3
lds.l @r15+,pr

loc_8c1AAFB4:
bra loc_8c1AB078
lds.l @r15+,pr
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1AAFBE:
#data 0x2FE6
#data 0x4F22DE1C
#data 0x600060E2
#data 0x8826600C
#data 0xD2288B24
#data 0x0009420B
#data 0x600060E2
#data 0x8854600C
#data 0xD2248B1C
#data 0x0009420B
#data 0xE33064E2
#data 0x644C6440
#data 0x8B063433
#data 0x3417E139
#data 0x60438903
#data 0x88300009
#data 0x8B0C

loc_8c1AAFFE:
#data 0x60E2
#data 0x600C6000
#data 0x8F038830
#data 0x62E2E400
#data 0x2E227201

#align4
loc_8c1AB010:
#data 0xD3184F26
#data 0x6EF6432B

#align4
loc_8c1AB018:
#data 0xD3034F26
#data 0x2320E202
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1AB024:
#data loc_8c1ADFA6

loc_8c1AB028:
#data 0x8C34AFA8

#align4
loc_8c1AB02C:
#data loc_8c1AE218

loc_8c1AB030:
#data loc_8c1ADE36

loc_8c1AB034:
#data bank1c.loc_8c1c9D88

loc_8c1AB038:
#data 0x8C34B036

#align4
loc_8c1AB03C:
#data 0x8C34B28B

#align4
loc_8c1AB040:
#data 0x8C34AFA9

#align4
loc_8c1AB044:
#data loc_8c1ADD8C

loc_8c1AB048:
#data loc_8c1AC31E

loc_8c1AB04C:
#data loc_8c1AD0C4

loc_8c1AB050:
#data loc_8c1ADB34

loc_8c1AB054:
#data loc_8c1AD9A8

loc_8c1AB058:
#data loc_8c1ADB6E

loc_8c1AB05C:
#data loc_8c1ADB96

loc_8c1AB060:
#data loc_8c1ADA42

loc_8c1AB064:
#data loc_8c1ADCEA

loc_8c1AB068:
#data loc_8c1ADCFA

loc_8c1AB06C:
#data loc_8c1ADAD8

loc_8c1AB070:
#data loc_8c1ADE6A

loc_8c1AB074:
#data loc_8c1AC774

loc_8c1AB078:
#data 0x2FD62FE6
#data 0x2FC6ED02
#data 0xD2132FB6
#data 0x63224F22
#data 0x6130DC10
#data 0xD3117FFC
#data 0x2F10430B
#data 0x6BBC6BF0
#data 0x000960B3
#data 0x89038844
#data 0x420BD20D
#data 0x64030009

#align4
loc_8c1AB0A8:
#data 0x6E4CD50C
#data 0x60B3E601
#data 0x70BF0009
#data 0x3012E11A
#data 0xA10E8B01
#data 0x0009

loc_8c1AB0BE:
#data 0x4000
#data 0xC7076103
#data 0x0023001D
#data 0x00000009
#data 0x8C34AFA8

#align4
loc_8c1AB0D0:
#data bank1c.loc_8c1c9D88

loc_8c1AB0D4:
#data loc_8c1ADE6A

loc_8c1AB0D8:
#data loc_8c1ADDEC
#data 0x8C34AF50
#data 0x0210004A
#data 0x005C0058
#data 0x0084006A
#data 0x00940094
#data 0x021000EC
#data 0x00FA0210
#data 0x01160108
#data 0x01840172
#data 0x02100210
#data 0x0198018A
#data 0x019E0210
#data 0x01D601B8
#data 0x02020210
#data 0x4F267F04
#data 0x6CF66BF6
#data 0xA0E46DF6
#data 0xA0146EF6
#data 0x7F040009
#data 0x6BF64F26
#data 0x6DF66CF6
#data 0x6EF6A135
#data 0x8B013E67
#data 0x0009A0C6
#data 0x8B022EE8
#data 0xA002845E
#data 0x845EC9FD
#data 0xA0C7CB02
#data 0x60E3805E
#data 0x88010009
#data 0xA0B78901
#data 0xA0BF0009
#data 0xD3290009
#data 0x6232904F
#data 0xD228012D
#data 0x2128611D
#data 0x2EE8890C
#data 0x60E38905
#data 0x88090009
#data 0xA0A58901
#data 0x60E30009
#data 0x88090009
#data 0x64638B00
#data 0x6053654C
#data 0x88010009
#data 0x7F048B06
#data 0x6BF64F26
#data 0x6DF66CF6
#data 0x6EF6A440
#data 0x89012558
#data 0x0009A090
#data 0x4F267F04
#data 0x6CF66BF6
#data 0xA3786DF6
#data 0x7F046EF6
#data 0x6BF64F26
#data 0x6DF66CF6
#data 0x6EF6A47E
#data 0x4F267F04
#data 0x6CF66BF6
#data 0xA55B6DF6
#data 0x7F046EF6
#data 0x6BF64F26
#data 0x6DF66CF6
#data 0x6EF6A56C
#data 0x000960E3
#data 0x89078800
#data 0x890F8801
#data 0x89158802
#data 0x891B8803
#data 0x0009A020
#data 0x73186353
#data 0xA0196030
#data 0x00B0C9E7
#data 0x8C34B1F8
#data 0x00008000
#data 0x74186453
#data 0xC9E76040
#data 0x60402400
#data 0xCB10A040
#data 0x74186453
#data 0xC9E76040
#data 0x60402400
#data 0xCB08A038
#data 0x73186353
#data 0xCB186030
#data 0x2300A052
#data 0x2CD0A050
#data 0x89433E67
#data 0x4F267F04
#data 0x6CF66BF6
#data 0xA5656DF6
#data 0x845E6EF6
#data 0xCB20A015
#data 0x4F267F04
#data 0x6CF66BF6
#data 0xA5D56DF6
#data 0x845E6EF6
#data 0xC9DFA00B
#data 0x8B022EE8
#data 0xA006845E
#data 0x60E3C9F7
#data 0x88010009
#data 0x845E8B26
#data 0xA02DCB08
#data 0x60E3805E
#data 0x88030009
#data 0x64538B1E
#data 0x741866E3
#data 0x60404608
#data 0xC99F4608
#data 0x206B4600
#data 0x2400A01E
#data 0x3E33E307
#data 0x7F048910
#data 0x4F26D01D
#data 0x644C7516
#data 0x024C6653
#data 0xC98F6060
#data 0x2620220B
#data 0xD1196BF6
#data 0x6DF66CF6
#data 0x6EF6412B
#data 0x2CD0A008
#data 0x4F267F04
#data 0x6CF66BF6
#data 0xA79C6DF6
#data 0x6EF6

loc_8c1AB2DA:
#data 0x2CD0
#data 0x4F267F04
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1AB2EA:
mov.l @(loc_8c1AB328,pc),r3 ; r3 set to 0x8C34AF51
mov 0x00,r2 ; r2 set to 0x00
bra loc_8c1AB2F2
mov.b r2,@r3

loc_8c1AB2F2:
#data 0x2FE6
#data 0x4F222FD6
#data 0xDD0CD30D
#data 0x0009430B
#data 0x2008600E
#data 0xD30D8B0A
#data 0xDE0AD20B
#data 0x6422430B
#data 0x2008600E
#data 0x84EB8B14
#data 0x80EBCB02

#align4
loc_8c1AB31C:
#data 0xE306A03A

#align4
loc_8c1AB320:
#data bank1c.loc_8c1c6CE0

loc_8c1AB324:
#data loc_8c1AF26C

loc_8c1AB328:
#data 0x8C34AF51
#data 0x8C34AFA8

#align4
loc_8c1AB330:
#data bank1c.loc_8c1c02B6
#data 0x8C34B288
#data 0x8C34B124

#align4
loc_8c1AB33C:
#data bank1b.loc_8c1b3F0C

loc_8c1AB340:
#data 0x740564E3
#data 0xC9FD6040
#data 0x60402400
#data 0x2400C9FE
#data 0x913ED320
#data 0x001D6032
#data 0xC810600D
#data 0xD21E8905
#data 0x0009420B
#data 0x2008600E
#data 0x8915

loc_8c1AB36A:
#data 0x84E6
#data 0xC808600C
#data 0xE2028902
#data 0x2D20A00F

#align4
loc_8c1AB378:
#data 0x430BD318
#data 0xD3180009
#data 0x6030E208
#data 0x2300C97F
#data 0xD116E002
#data 0x2120E305
#data 0x2200D215

loc_8c1AB394:
#data 0x2D30

loc_8c1AB396:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1AB39E:
#data 0x4F22
#data 0xD212D313
#data 0x6422430B
#data 0x2008600E
#data 0xD3118903
#data 0x22286230
#data 0x8908

loc_8c1AB3B6:
#data 0xD310
#data 0xCB026030
#data 0x4F262300
#data 0xE206D10E
#data 0x2120000B
;-------------------------------------------------------------------------------

#align4
loc_8c1AB3C8:
#data 0x4F26A01A
#data 0x000B4F26
#data 0x00B00009
#data 0x8C34B1F8

#align4
loc_8c1AB3D8:
#data loc_8c1ADEE0

loc_8c1AB3DC:
#data loc_8c1AF876
#data 0x8C34AF5E
#data 0x8C34B0FE
#data 0x8C34B11C
#data 0x8C34B124

#align4
loc_8c1AB3F0:
#data bank1b.loc_8c1b3F0C
#data 0x8C34AF51
#data 0x8C34B293
#data 0x8C34AFA8

#align4
loc_8c1AB400:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0xDE352F86
#data 0x64E34F22
#data 0x7FF87405
#data 0xE8016040
#data 0x6D83C908
#data 0x604080F4
#data 0x2400C9F7
#data 0xC9FE6040
#data 0x84ED2400
#data 0x80EDC9BF
#data 0x84E6DB2C
#data 0xC808600C
#data 0xEA028D02
#data 0x0009A0C0

#align4
loc_8c1AB444:
#data 0x914BD329
#data 0x001D6032
#data 0xC810600D
#data 0xD2278907
#data 0x0009420B
#data 0x2008600E
#data 0xA0B28B01
#data 0x0009

loc_8c1AB462:
#data 0xD526
#data 0xDC24E303
#data 0xD9226550
#data 0x2358655C
#data 0x64E38D03
#data 0x2158E102
#data 0x8B60

loc_8c1AB47A:
#data 0x6043
#data 0x70100009
#data 0x600C6000
#data 0x8907C880
#data 0x75106543
#data 0xC97F6050
#data 0x60502500
#data 0x2500CB02

#align4
loc_8c1AB498:
#data 0x6032D319
#data 0x600C6000
#data 0x8B33884C
#data 0xB1BED417
#data 0xD3170009
#data 0x430BD515
#data 0xD21464C3
#data 0x2F22

loc_8c1AB4B6:
#data 0x60F2
#data 0x600C6000
#data 0x8B01883B
#data 0x6DA3A051

#align4
loc_8c1AB4C4:
#data 0x623063F2
#data 0x32306390
#data 0x63F2894B
#data 0x2F327301
#data 0x623073FF
#data 0x8BEC2228
#data 0x0009A043
#data 0x000000B0
#data 0x8C34B288
#data 0x8C34AFA8
#data 0x8C34B1F8

#align4
loc_8c1AB4F0:
#data loc_8c1ADEE0
#data 0x8C34B036
#data 0x8C34B197
#data 0x8C34AF6B

#align4
loc_8c1AB500:
#data bank1c.loc_8c1c9D88
#data 0x8C34AEBE

#align4
loc_8c1AB508:
#data loc_8c1ADF50

loc_8c1AB50C:
#data 0x600C84E1
#data 0x8B282088
#data 0xE74684F4
#data 0x6603D467
#data 0x65C3B05D
#data 0x63DC6D03
#data 0x894D2338
#data 0x600C84E8
#data 0x891AC880
#data 0x64C3B179
#data 0xC97F84E8
#data 0x80E8A015

#align4
loc_8c1AB53C:
#data 0x600C8442
#data 0x890EC804
#data 0xC9FB8442
#data 0x84F48042
#data 0xD45AE746
#data 0xB0426603
#data 0x6D0365C3
#data 0x222862DC
#data 0xA0318B03
#data 0x0009

loc_8c1AB562:
#data 0xA030
#data 0x2B80

loc_8c1AB566:
#data 0xD356
#data 0x430BD454
#data 0xD25565C3
#data 0x64C3420B
#data 0x8801600E
#data 0xE2048B02
#data 0x2B20A023

#align4
loc_8c1AB580:
#data 0xE208D351
#data 0xCB806030
#data 0xD1502300
#data 0xD0502120
#data 0x639020C2
#data 0x332062C0
#data 0x63E38B04
#data 0x60307310
#data 0x2300CB02

#align4
loc_8c1AB5A4:
#data 0x63E3D24B
#data 0x2280731E
#data 0xCB046030
#data 0x60DC2300
#data 0x8B028802
#data 0xA004E106
#data 0x2B10

loc_8c1AB5BE:
#data 0xE005
#data 0x2B00A001

loc_8c1AB5C4:
#data 0x2BA0

loc_8c1AB5C6:
#data 0x7F08
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1AB5DA:
#data 0x2FE6
#data 0x2FC62FD6
#data 0x2FB66C43
#data 0x2F962FA6
#data 0x4F222F86
#data 0x60737FEC
#data 0xE8000009
#data 0x63C281F4
#data 0x2F326B83
#data 0xDD361F51
#data 0xC97F84D8
#data 0x666E80D8
#data 0xD934DE35
#data 0x8D152668
#data 0xD03464D3
#data 0x600C6000
#data 0x8802C903
#data 0x844D8B09
#data 0x804DCB40
#data 0x750465F3
#data 0xE400490B
#data 0xC97F84D8
#data 0x80D8

loc_8c1AB632:
#data 0x62E0
#data 0x232053F1
#data 0x0009A094

#align4
loc_8c1AB63C:
#data 0x74086243
#data 0x1F24720D
#data 0x1F43

loc_8c1AB646:
#data 0x85F4
#data 0x60F26A03
#data 0x600C6000
#data 0x8F768853
#data 0x62F26AAD
#data 0x2F227201
#data 0x600C60E0
#data 0x89098820
#data 0x0009A003

#align4
loc_8c1AB668:
#data 0x730163F2
#data 0x2F32

loc_8c1AB66E:
#data 0x60F2
#data 0x600C6000
#data 0x89F78820

#align4
loc_8c1AB678:
#data 0x600060F2
#data 0x883D600C
#data 0x62F28B10
#data 0x2F227201
#data 0x600C60E0
#data 0x89098820
#data 0x0009A003

#align4
loc_8c1AB694:
#data 0x730163F2
#data 0x2F32

loc_8c1AB69A:
#data 0x60F2
#data 0x600C6000
#data 0x89F78820

#align4
loc_8c1AB6A4:
#data 0x64F3B087
#data 0x63DC6D03
#data 0x3343E40A
#data 0x63F28B1A
#data 0x2C32A03D

#align4
loc_8c1AB6B8:
#data bank1c.loc_8c1c9D88
#data 0x8C34AEBE

#align4
loc_8c1AB6C0:
#data loc_8c1ADF50

loc_8c1AB6C4:
#data loc_8c1AE350
#data 0x8C34AF5E
#data 0x8C34B0FE
#data 0x8C34B190
#data 0x8C34B11C
#data 0x8C34B288

#align4
loc_8c1AB6DC:
#data bank1b.loc_8c1b8740
#data 0x8C34B036
#data 0x8C34AF6B

#align4
loc_8c1AB6E8:
#data 0x603053F4
#data 0x2300CB40
#data 0x917AD43F
#data 0x001D6042
#data 0xC840600D
#data 0x65F38908
#data 0x490B7504
#data 0x600E64D3
#data 0x8B142008
#data 0x0009A011

#align4
loc_8c1AB710:
#data 0x430BD338
#data 0x62BC64D3
#data 0x600D3A28
#data 0x890830A7
#data 0x750465F3
#data 0x64D3490B
#data 0x420BD232
#data 0xA00264D3
#data 0x3B0C

loc_8c1AB732:
#data 0xA036
#data 0xE000

loc_8c1AB736:
#data 0x53F3
#data 0xCB806030
#data 0xAF822300
#data 0x0009

loc_8c1AB742:
#data 0x52F1
#data 0x1F217201
#data 0x613063F2
#data 0x63F22214
#data 0x63E06230
#data 0x8B073230
#data 0x730153F1
#data 0x23841F31
#data 0x2C3263F2

#align4
loc_8c1AB764:
#data 0xE001A01D

#align4
loc_8c1AB768:
#data 0x62F27B01
#data 0x33A363BC
#data 0x8D097201
#data 0x60232F22
#data 0x70FF0009
#data 0x600C6000
#data 0x8901883B
#data 0x0009AF5F

#align4
loc_8c1AB788:
#data 0x6BBC63E0
#data 0x3BA352F1
#data 0x8B032230
#data 0x2C3263F2
#data 0xE003A003

#align4
loc_8c1AB79C:
#data 0xE00262F2
#data 0x2C22

loc_8c1AB7A2:
#data 0x7F14
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1AB7B6:
#data 0x2FE6
#data 0x2FD6E500
#data 0x9715DD0E
#data 0xEE30A024

#align4
loc_8c1AB7C4:
#data 0x61426253
#data 0x63534208
#data 0x6310323C
#data 0x323C4200
#data 0x62136523
#data 0x24227201
#data 0x600C60D0
#data 0x8D138820
#data 0xA00C357C
#data 0x00B20009
#data 0x000000D0
#data 0x8C34B1F8

#align4
loc_8c1AB7F4:
#data bank1b.loc_8c1b89AA
#data 0x8C34B036

#align4
loc_8c1AB7FC:
#data 0x73016342
#data 0x2432

loc_8c1AB802:
#data 0x6042
#data 0x600C6000
#data 0x89F78820

#align4
loc_8c1AB80C:
#data 0x66606642
#data 0x36E3666C
#data 0xE2398B02
#data 0x8BD33627

#align4
loc_8c1AB81C:
#data 0x00096053
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1AB826:
#data 0x2FE6
#data 0x2FC62FD6
#data 0x2FA62FB6
#data 0xD0342F96
#data 0x60004F22
#data 0xC804600C
#data 0x6E438F2B
#data 0xEC00D231
#data 0x6DC3420B
#data 0xD930DA31
#data 0xEB01A012

#align4
loc_8c1AB850:
#data 0x880160DC
#data 0x60E08B05
#data 0x885D600C
#data 0xA0088B09
#data 0x6DC3

loc_8c1AB862:
#data 0x60E0
#data 0x885B600C
#data 0xA0028B01
#data 0x6DB3

loc_8c1AB86E:
#data 0x490B
#data 0x64E0

loc_8c1AB872:
#data 0x7E01

#align4
loc_8c1AB874:
#data 0x64E063A0
#data 0x644C633C
#data 0x89013430
#data 0x8BE52448

#align4
loc_8c1AB884:
#data 0xD2204F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x422B6DF6
#data 0x6EF6

loc_8c1AB896:
#data 0x4F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1AB8A6:
bra loc_8c1AB8AA
nop

loc_8c1AB8AA:
#data 0x2FE6
#data 0x2FC62FD6
#data 0x2FB6EC08
#data 0xDD174F22
#data 0x84E6DE17
#data 0x20C8600C
#data 0xD3178965
#data 0x6230D515
#data 0x22C8622C
#data 0xEB068F05
#data 0x00096053
#data 0x702DE202
#data 0x2020

loc_8c1AB8DA:
#data 0x84E3
#data 0xC840600C
#data 0xD2108922
#data 0x22B0E305
#data 0x84E52D30
#data 0xC804600C
#data 0x64E38961
#data 0x60407405
#data 0x2400C9FB
#data 0xC9FE6040
#data 0x2400A059
#data 0x8C34AF5E

#align4
loc_8c1AB908:
#data loc_8c1AD098

loc_8c1AB90C:
#data loc_8c1AEC3A
#data 0x8C34AF53
#data 0x8C34AFA8
#data 0x8C34B288
#data 0x8C34AF50
#data 0x8C34B2CA
#data 0x8C34B0A3

#align4
loc_8c1AB928:
#data 0x947B63E3
#data 0x6230731B
#data 0x2248622C
#data 0x60E38B06
#data 0x701D0009
#data 0x600C6000
#data 0x890BC820

#align4
loc_8c1AB944:
#data 0xE301D239
#data 0x936C2230
#data 0x2130D138
#data 0x430BD338
#data 0xD2380009
#data 0x22B0A017

#align4
loc_8c1AB95C:
#data 0x62507515
#data 0x2248622C
#data 0xD235890C
#data 0x420B945E
#data 0x84E1E500
#data 0xCB40D433
#data 0x9557D333
#data 0x80E1430B
#data 0x0009A005

#align4
loc_8c1AB980:
#data 0x420BD231
#data 0xD32C0009
#data 0x23C0

loc_8c1AB98A:
#data 0xA014
#data 0x2DB0

loc_8c1AB98E:
#data 0xD32F
#data 0x0009430B
#data 0x600C84E5
#data 0x890AC804
#data 0x740564E3
#data 0xC9FB6040
#data 0x60402400
#data 0x2400C9FE
#data 0xA002E201
#data 0x2D20

loc_8c1AB9B2:
#data 0xE100
#data 0x2D10

loc_8c1AB9B6:
#data 0x4F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1AB9C2:
mov.l r14,@-r15
mov.l @(loc_8c1ABA50,pc),r14 ; r14 set to 0x8C34B288
sts.l pr,@-r15
mov r14,r3 ; r3 set to 0x8C34B288
add 0x10,r3 ; r3 set to 0x8C34B298
mov.b @r3,r0
and 0x7F,r0
mov.b r0,@r3 ; r3 ??? bc r0 is ???
mov.b @(0x0B,r14),r0
mov.l @(loc_8c1ABA4C,pc),r3 ; r3 set to 0x8C1AFA18
and 0xEF,r0
jsr @r3
mov.b r0,@(0x0B,r14)
mov.l @(loc_8c1ABA34,pc),r1 ; r1 set to 0x8C1B374E
mov 0x02,r3 ; r3 set to 0x02
mov.l @(loc_8c1ABA2C,pc),r2 ; r2 set to 0x8C34B2E3
jsr @r1
mov.b r3,@r2 ; r2 ??
mov r14,r4 ; r4 set to 0x8C34B288
add 0x01,r4 ; r4 set to 0x8C34B289
mov.b @r4,r0
and 0x7F,r0
mov.b r0,@r4 ; r4 ??? bc r0 is ???
mov.b @r4,r0
and 0xBF,r0
mov.b r0,@r4
mov.l @(loc_8c1ABA54,pc),r4 ; r4 set to 0x8C34AFA8
mov.b @(0x05,r14),r0
extu.b r0,r0
tst 0x04,r0
bt loc_8c1ABA16
mov r14,r5 ; r5 set to 0x8C34B288
add 0x05,r5 ; r5 set to 0x8C34B28D
mov.b @r5,r0
and 0xFB,r0
mov.b r0,@r5 ; r5 ??? bc r0 is ???
mov.b @r5,r0
and 0xFE,r0
mov.b r0,@r5
mov 0x01,r2 ; r2 set to 0x01
bra loc_8c1ABA1A
mov.b r2,@r4

loc_8c1ABA16:
mov 0x00,r1 ; r1 set to 0x00
mov.b r1,@r4

loc_8c1ABA1A:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1ABA20:
bra loc_8c1ABA58
nop
#data 0x00FF0080
#data 0x00000190

#align4
loc_8c1ABA2C:
#data 0x8C34B2E3
#data 0x8C34B301

#align4
loc_8c1ABA34:
#data bank1b.loc_8c1b374E
#data 0x8C34B11C

#align4
loc_8c1ABA3C:
#data bank1b.loc_8c1b6660
#data 0x8C34AFA0

#align4
loc_8c1ABA44:
#data bank1b.loc_8c1b3EEC

loc_8c1ABA48:
#data bank19.loc_8c19F21E

loc_8c1ABA4C:
#data loc_8c1AFA18

loc_8c1ABA50:
#data 0x8C34B288

#align4
loc_8c1ABA54:
#data 0x8C34AFA8

#align4
loc_8c1ABA58:
#data 0xD4384F22
#data 0x600C8446
#data 0x8B2AC808
#data 0x600C8449
#data 0x8B08C880
#data 0x9064D334
#data 0xD2346532
#data 0x055C6432
#data 0x420B70FF
#data 0x044C

loc_8c1ABA7E:
#data 0xD032
#data 0x600C6000
#data 0x8902C80C
#data 0x420BD230
#data 0x0009

loc_8c1ABA8E:
#data 0xD330
#data 0xCB806030
#data 0xD22F2300
#data 0xE400420B
#data 0x430BD32E
#data 0xD02E0009
#data 0x600C6000
#data 0x8D02C801
#data 0xA0014F26
#data 0xE400

loc_8c1ABAB2:
#data 0xE401

#align4
loc_8c1ABAB4:
#data 0x422BD22A
#data 0x0009

loc_8c1ABABA:
#data 0x4F26
#data 0x0009000B
;-------------------------------------------------------------------------------
#data 0x604C2FE6
#data 0x88002FD6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0xDE254F22
#data 0x7FD4DD23
#data 0x8D1E6AF3
#data 0x88017A20
#data 0x88028923
#data 0x8803895F
#data 0x88048966
#data 0x8805896C
#data 0xA08F8B01
#data 0x88060009
#data 0xA0BC8B01
#data 0x88070009
#data 0xA09F8B01
#data 0x88080009
#data 0xA0A28B01
#data 0x88090009
#data 0xA0A88B01
#data 0xA0AB0009
#data 0xD3140009
#data 0x0009430B
#data 0x4E0BD413
#data 0xA0880009
#data 0xD2120009
#data 0xEB006CF3
#data 0x64C3420B
#data 0xA027D910
#data 0x00896DB3
#data 0x8C34B288
#data 0x8C34B1F8

#align4
loc_8c1ABB44:
#data bank19.loc_8c19A910
#data 0x8C34AF66

#align4
loc_8c1ABB4C:
#data loc_8c1AFF72
#data 0x8C34B291

#align4
loc_8c1ABB54:
#data bank19.loc_8c19FE46

loc_8c1ABB58:
#data bank19.loc_8c19D24C
#data 0x8C34AF65

#align4
loc_8c1ABB60:
#data bank19.loc_8c19FE58

loc_8c1ABB64:
#data loc_8c1AEE08

loc_8c1ABB68:
#data loc_8c1AECDC

loc_8c1ABB6C:
#data loc_8c1AD098

loc_8c1ABB70:
#data bank1c.loc_8c1c6D6C

loc_8c1ABB74:
#data bank1b.loc_8c1b8B5C

loc_8c1ABB78:
#data bank12.loc_8c1297C4
#data 0x000960D3
#data 0x7D0103CC
#data 0x3B3C633C
#data 0x64C3490B
#data 0x8BF53D02
#data 0x430BD37B
#data 0xD27B0009
#data 0x67A3E50A
#data 0x420BE603
#data 0xA04864BD
#data 0xD2760009
#data 0x0009420B
#data 0xE500D376
#data 0x6453430B
#data 0x0009A041
#data 0x420BD271
#data 0xD4730009
#data 0x00094E0B
#data 0x0009A039
#data 0x420BD26D
#data 0xD4700009
#data 0x00094E0B
#data 0x430BD36A
#data 0xD2690009
#data 0x0009420B
#data 0x4E0BD46C
#data 0xD3660009
#data 0x0009430B
#data 0x420BD264
#data 0xD4690009
#data 0x00094E0B
#data 0x430BD361
#data 0xD2600009
#data 0x0009420B
#data 0x4E0BD465
#data 0xD35D0009
#data 0x0009430B
#data 0x0009A013
#data 0x420BD25A
#data 0xD3610009
#data 0x0009430B
#data 0x64034E0B
#data 0x420BD25F
#data 0xD3560009
#data 0x640DE604
#data 0x430BE510
#data 0x4E0B67A3
#data 0xD25164A3
#data 0x0009420B
#data 0x0009A019
#data 0x00094D0B
#data 0x430BD357
#data 0xA0040009
#data 0x4D0B6403
#data 0xD3550009
#data 0x4E0B6432
#data 0x4D0B0009
#data 0xA0080009
#data 0xD3520009
#data 0x0009430B
#data 0x0009A003
#data 0xE302D250
#data 0x7F2C2230
#data 0x69F64F26
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x2FE6E303
#data 0x3537654C
#data 0xD2488B03
#data 0xA00DE102
#data 0x25582210
#data 0x74018B00
#data 0x60E0DE45
#data 0x304CC9FC
#data 0x60E02E00
#data 0x6403C90C
#data 0x6EF6A014
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x654CE303
#data 0x8B033537
#data 0xE102D23C
#data 0x2210A008
#data 0xD53B6453
#data 0x60504408
#data 0x304CC9F3
#data 0x2500A002
#data 0x0009000B
;-------------------------------------------------------------------------------
#data 0x8459D537
#data 0xC880600C
#data 0x66538916
#data 0xE7087606
#data 0x622C6260
#data 0x89022278
#data 0x8808604C
#data 0x62608906
#data 0x2278622C
#data 0x614C8B05
#data 0x89022118
#data 0x432BD32D
#data 0xD32D0009
#data 0xE400432B
#data 0x0009000B
;-------------------------------------------------------------------------------
#data 0x0009A000
#data 0x4F222FE6
#data 0xDE24D526
#data 0x600C845C
#data 0x8F26C801
#data 0x6053E602
#data 0x70100009
#data 0x600C6000
#data 0x8902C880
#data 0xA060D222
#data 0x84562260
#data 0xC808600C
#data 0xE2038B02
#data 0x2E20A05B
#data 0x2448644C
#data 0xD21D893E
#data 0x633C6320
#data 0x8B0C3363
#data 0x600C8453
#data 0x8B08C840
#data 0x600C8453
#data 0x8D01C840
#data 0x2E60E204
#data 0xA044D316
#data 0xA0442320
#data 0x00002E60

#align4
loc_8c1ABD80:
#data loc_8c1AD098

loc_8c1ABD84:
#data loc_8c1AF1A4

loc_8c1ABD88:
#data loc_8c1AED24

loc_8c1ABD8C:
#data bank1c.loc_8c1c6D70

loc_8c1ABD90:
#data bank1c.loc_8c1c6D90

loc_8c1ABD94:
#data bank1c.loc_8c1c6DA4

loc_8c1ABD98:
#data bank1c.loc_8c1c6DB0

loc_8c1ABD9C:
#data bank1c.loc_8c1c6DC4

loc_8c1ABDA0:
#data loc_8c1A0038

loc_8c1ABDA4:
#data bank19.loc_8c19F33C

loc_8c1ABDA8:
#data loc_8c1A0032
#data 0x8C34B1F8

#align4
loc_8c1ABDB0:
#data bank1b.loc_8c1b89F8
#data 0x8C34AFA8
#data 0x8C34AF66
#data 0x8C34B288

#align4
loc_8c1ABDC0:
#data loc_8c1AFF72

loc_8c1ABDC4:
#data bank19.loc_8c19FEEC
#data 0x8C34B11C
#data 0x8C34B0FE
#data 0x8C34B0B0
#data 0x420BD28C
#data 0xD38C0009
#data 0x0009430B
#data 0x420BD28B
#data 0xD38B0009
#data 0x0009430B
#data 0x420BD28A
#data 0xD38A0009
#data 0xC9FE6030
#data 0xD2892300
#data 0x6120D089
#data 0xE3052010
#data 0x4F262E30
#data 0x6EF6000B
;-------------------------------------------------------------------------------

loc_8c1ABE0C:
mov.l r14,@-r15
mov 0x50,r3 ; r3 set to 0x50
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov r4,r11
mov.l r10,@-r15
extu.b r11,r13
mov.l r9,@-r15
extu.b r11,r10
sts.l pr,@-r15
mov.l @(loc_8c1AC028,pc),r12 ; r12 set to 0x8C34AF50
cmp/ge r3,r13
add 0xEC,r15
mov.l r10,@(0x04,r15)
bf/s loc_8c1ABE32
add r12,r10
bra loc_8c1AC1B0
nop

loc_8c1ABE32:
mov.l @(loc_8c1AC02C,pc),r2 ; r2 set to 0x8C1ADE36
jsr @r2
nop
mov.l @(loc_8c1AC034,pc),r3 ; r3 set to 0x8C1C9D88
mov r15,r14
mov.l @(loc_8c1AC030,pc),r9 ; r9 set to 0x8C1AEE08
mov.l @r3,r0
mov.b @r0,r0
extu.b r0,r0
cmp/eq 0x21,r0
bt/s loc_8c1ABE6C
add 0x08,r14
cmp/eq 0x3D,r0
bt loc_8c1ABE94
cmp/eq 0x3F,r0
bt loc_8c1ABE56
bra loc_8c1AC1EA
nop

loc_8c1ABE56:
jsr @r9
nop
mov.b @r10,r4
mov 0x0A,r5 ; r5 set to 0x0A
mov.l @(loc_8c1AC038,pc),r2 ; r2 set to 0x8C1AF1A4
mov r14,r7
mov 0x03,r6 ; r6 set to 0x03
jsr @r2
extu.b r4,r4
bra loc_8c1ABE7E
nop

loc_8c1ABE6C:
jsr @r9
nop
mov.b @r10,r4
mov 0x10,r5 ; r5 set to 0x10
mov.l @(loc_8c1AC038,pc),r3 ; r3 set to 0x8C1AF1A4
mov r14,r7
mov 0x02,r6 ; r6 set to 0x02
jsr @r3
extu.b r4,r4

loc_8c1ABE7E:
mov.l @(loc_8c1AC03C,pc),r2 ; r2 set to 0x8C1AECDC, r2 set to 0x8C1AECDC
jsr @r2
mov r14,r4
jsr @r9
nop
mov.l @(loc_8c1AC040,pc),r3 ; r3 set to 0x8C1ADE6A, r3 set to 0x8C1ADE6A
jsr @r3
nop
mov.l @(loc_8c1AC044,pc),r2 ; r2 set to 0x8C34AFA9, r2 set to 0x8C34AFA9
bra loc_8c1AC1EA
mov.b r11,@r2

loc_8c1ABE94:
mov.l @(loc_8c1AC040,pc),r1 ; r1 set to 0x8C1ADE6A
jsr @r1
nop
mov.l @(loc_8c1AC048,pc),r3 ; r3 set to 0x8C1ADDEC
jsr @r3
nop
extu.b r0,r14
mov.b r0,@r15
mov.l @(loc_8c1AC04C,pc),r0 ; r0 set to 0x8C1C6B50
mov.l @(0x04,r15),r3 ; r3 ??? bc r15 is ???
mov.b @(r0,r3),r2
extu.b r2,r2
cmp/ge r2,r14
bt loc_8c1ABEB4
bra loc_8c1AC1B0
nop

loc_8c1ABEB4:
mov.l @(loc_8c1AC050,pc),r0 ; r0 set to 0x8C1C6BA0
mov.l @(0x04,r15),r2
mov.b @(r0,r2),r3
extu.b r3,r3
cmp/gt r3,r14
bf loc_8c1ABEC4
bra loc_8c1AC1B0
nop

loc_8c1ABEC4:
mov.l @(loc_8c1AC054,pc),r6 ; r6 set to 0x8C34B288
mov r13,r0
nop
cmp/eq 0x1B,r0
bf/s loc_8c1ABF10
mov 0x08,r5 ; r5 set to 0x08
mov.l @(loc_8c1AC058,pc),r0 ; r0 set to 0x8C34AF6B
mov.b @r0,r0 ; r0 ??
extu.b r0,r0
xor r14,r0
tst 0x03,r0
bt loc_8c1ABF10
mov.b @(0x06,r6),r0
extu.b r0,r0
tst r5,r0
bt loc_8c1ABEE8
bra loc_8c1AC1B0
nop

loc_8c1ABEE8:
mov r6,r4
add 0x10,r4
mov.b @r4,r0
and 0xF7,r0
mov.b r0,@r4
mov.b @r4,r0
mov.l @(loc_8c1AC05C,pc),r2 ; r2 set to 0x8C1A11E0
and 0xFB,r0
jsr @r2
mov.b r0,@r4
exts.b r0,r0
tst r0,r0
bf loc_8c1ABF06
bra loc_8c1AC1B8
nop

loc_8c1ABF06:
mov.l @(loc_8c1AC060,pc),r3 ; r3 set to 0x8C34B298
mov.b @r3,r0
or 0x08,r0
bra loc_8c1AC1B8
mov.b r0,@r3

loc_8c1ABF10:
mov r13,r0
nop
cmp/eq 0x15,r0
bf loc_8c1ABF38
mov.l @(loc_8c1AC064,pc),r0 ; r0 set to 0x8C34AF65
mov.b @r0,r0 ; r0 ??
extu.b r0,r0
xor r14,r0
tst 0x01,r0
bt loc_8c1ABF38
mov.b @(0x06,r6),r0
extu.b r0,r0
tst r5,r0
bf loc_8c1ABF30
bra loc_8c1AC1B8
nop

loc_8c1ABF30:
bsr loc_8c1AC1FC
nop
bra loc_8c1AC1B8
nop

loc_8c1ABF38:
mov.l @(loc_8c1AC068,pc),r9 ; r9 set to 0x8C34B140
mov r13,r0
nop
cmp/eq 0x14,r0
bf loc_8c1ABFB6
mov.l @(loc_8c1AC06C,pc),r3 ; r3 set to 0x8C34AF64
mov.b @r3,r2
extu.b r2,r2
cmp/eq r14,r2
bt loc_8c1ABFB6
mov r14,r0
nop
cmp/eq 0x30,r0
bf loc_8c1ABF58
bra loc_8c1AC1B0
nop

loc_8c1ABF58:
mov r14,r0
nop
cmp/eq 0x31,r0
bf loc_8c1ABF64
bra loc_8c1AC1B0
nop

loc_8c1ABF64:
mov r14,r0
nop
cmp/eq 0x32,r0
bf loc_8c1ABF70
bra loc_8c1AC1B0
nop

loc_8c1ABF70:
mov r14,r0
nop
cmp/eq 0x37,r0
bf loc_8c1ABF7C
bra loc_8c1AC1B0
nop

loc_8c1ABF7C:
mov r14,r0
nop
cmp/eq 0x39,r0
bf loc_8c1ABF88
bra loc_8c1AC1B0
nop

loc_8c1ABF88:
mov r14,r0
nop
cmp/eq 0x3A,r0
bf loc_8c1ABF94
bra loc_8c1AC1B0
nop

loc_8c1ABF94:
mov.l @(loc_8c1AC070,pc),r3 ; r3 set to 0x8C1A0E86
jsr @r3
mov.b @r15,r4
extu.b r0,r0
cmp/eq r0,r14
bt loc_8c1ABFA4
bra loc_8c1AC1B0
nop

loc_8c1ABFA4:
mov.b @r15,r2
mov.b r2,@r9
mov.l @(loc_8c1AC074,pc),r3 ; r3 set to 0x8C34B141
mov.l @(loc_8c1AC078,pc),r2 ; r2 set to 0x8C198A10
mov.b @r3,r5
jsr @r2
mov.b @r9,r4
bra loc_8c1AC1B8
nop

loc_8c1ABFB6:
#data 0x60D3
#data 0x88170009
#data 0xD02F8B05
#data 0x600C6000
#data 0xC80E20EA
#data 0x8B09

loc_8c1ABFCA:
#data 0x60D3
#data 0x88270009
#data 0xD02B8B7B
#data 0x600C6000
#data 0xC80C20EA
#data 0x8975

loc_8c1ABFDE:
#data 0x62F0
#data 0x60C32A20
#data 0x70270009
#data 0x600C6000
#data 0x880CC90C
#data 0xA0558B01
#data 0xE40A

loc_8c1ABFF6:
#data 0x64C3
#data 0x60407427
#data 0xC804600C
#data 0xA04D8940
#data 0x00006453

#align4
loc_8c1AC008:
#data bank1b.loc_8c1b4F12

loc_8c1AC00C:
#data loc_8c1AF31A

loc_8c1AC010:
#data bank1b.loc_8c1b398A

loc_8c1AC014:
#data loc_8c1AF914

loc_8c1AC018:
#data loc_8c1AF91A
#data 0x8C34B28F
#data 0x8C34AF53
#data 0x8C34B036

#align4
loc_8c1AC028:
#data 0x8C34AF50

#align4
loc_8c1AC02C:
#data loc_8c1ADE36

loc_8c1AC030:
#data loc_8c1AEE08

loc_8c1AC034:
#data bank1c.loc_8c1c9D88

loc_8c1AC038:
#data loc_8c1AF1A4

loc_8c1AC03C:
#data loc_8c1AECDC

loc_8c1AC040:
#data loc_8c1ADE6A

loc_8c1AC044:
#data 0x8C34AFA9

#align4
loc_8c1AC048:
#data loc_8c1ADDEC

loc_8c1AC04C:
#data bank1c.loc_8c1c6B50

loc_8c1AC050:
#data bank1c.loc_8c1c6BA0

loc_8c1AC054:
#data 0x8C34B288

#align4
loc_8c1AC058:
#data 0x8C34AF6B

#align4
loc_8c1AC05C:
#data loc_8c1A11E0

loc_8c1AC060:
#data 0x8C34B298

#align4
loc_8c1AC064:
#data 0x8C34AF65

#align4
loc_8c1AC068:
#data 0x8C34B140

#align4
loc_8c1AC06C:
#data 0x8C34AF64

#align4
loc_8c1AC070:
#data loc_8c1A0E86

loc_8c1AC074:
#data 0x8C34B141

#align4
loc_8c1AC078:
#data bank19.loc_8c198A10
#data 0x8C34AF67
#data 0x8C34AF77

#align4
loc_8c1AC084:
#data 0x633C6340
#data 0x89012358
#data 0xE409A008

#align4
loc_8c1AC090:
#data 0x000960C3
#data 0x60007017
#data 0x600CE40E
#data 0x44212409

#align4
loc_8c1AC0A0:
#data 0x644CD02F
#data 0x721462C3
#data 0x2930034C
#data 0x22306390
#data 0x000960C3
#data 0xD12B7017
#data 0xE3FC6000
#data 0xC930600C
#data 0xD329403C
#data 0xA077021C
#data 0x2320

loc_8c1AC0CA:
#data 0x60D3
#data 0x88030009
#data 0xD2268B09
#data 0x633C6320
#data 0x89693E30
#data 0x6130D324
#data 0x3E10611C
#data 0x8964

loc_8c1AC0E6:
#data 0x60D3
#data 0x88040009
#data 0xD2218B09
#data 0x633C6320
#data 0x895B3E30
#data 0x6130D31D
#data 0x3E10611C
#data 0x8956

loc_8c1AC102:
#data 0x60D3
#data 0x88050009
#data 0xD21A8B09
#data 0x633C6320
#data 0x894D3E30
#data 0x6130D315
#data 0x3E10611C
#data 0x8948

loc_8c1AC11E:
#data 0x2DD8
#data 0x60E38B2C
#data 0x88010009
#data 0xD3138B08
#data 0x60329115
#data 0x600D001D
#data 0x8901C801
#data 0x2F30E302

#align4
loc_8c1AC13C:
#data 0x600C60F0
#data 0x8B398802
#data 0x9008D30C
#data 0x012D6232
#data 0x611D9206
#data 0x89312128
#data 0xA02FE003
#data 0x00B22F00
#data 0x00002000

#align4
loc_8c1AC160:
#data bank1c.loc_8c1c6D40

loc_8c1AC164:
#data bank1c.loc_8c1c7E6D
#data 0x8C34B141
#data 0x8C34AF54
#data 0x8C34AF55
#data 0x8C34AF53
#data 0x8C34B1F8

#align4
loc_8c1AC17C:
#data 0x000960D3
#data 0x8B068823
#data 0x9172D33B
#data 0x001D6032
#data 0xC880600D
#data 0x890E

loc_8c1AC192:
#data 0x60D3
#data 0x88380009
#data 0xD3378B0E
#data 0x64F0430B
#data 0x2008600E
#data 0xD3358904
#data 0x64F0430B
#data 0x0009A01D


loc_8c1AC1B0:
mov.l @(loc_8c1AC280,pc),r2 ; r2 set to 0x8C34AFA8
mov 0x02,r3 ; r3 set to 0x02
bra loc_8c1AC1EA
mov.b r3,@r2

#align4
loc_8c1AC1B8:
#data 0x65F3D332
#data 0x64B3430B
#data 0xE00462F0
#data 0xD3302A20
#data 0x00CC23B0
#data 0xD330D22F
#data 0x430BC97F
#data 0x60C32200
#data 0x70310009
#data 0x600C6000
#data 0x8902C840
#data 0xCB0484CE
#data 0x80CE


loc_8c1AC1EA:
add 0x14,r15
lds.l @r15+,pr
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1AC1FC:
mov.l @(loc_8c1AC294,pc),r0 ; r0 set to 0x8C34AF65
mov.b @r0,r0 ; r0 ??
extu.b r0,r0
tst 0x01,r0
bt loc_8c1AC20A
bra loc_8c1AC20C
mov 0x00,r4

loc_8c1AC20A:
mov 0x01,r4 ; r4 set to 0x01

loc_8c1AC20C:
mov.l @(loc_8c1AC298,pc),r2 ; r2 set to 0x8C19FE58, r2 set to 0x8C19FE58
jmp @r2
nop

loc_8c1AC212:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @(loc_8c1AC29C,pc),r14 ; r14 set to 0x8C34B288
mov.b @(0x06,r14),r0
extu.b r0,r0
tst 0x08,r0
bt/s loc_8c1AC2B0
mov r4,r13
mov.l @(loc_8c1AC2A0,pc),r3 ; r3 set to 0x8C34AF45
mov.b @r3,r2
tst r2,r2
bf loc_8c1AC2B0
mov.l @(loc_8c1AC2A4,pc),r6 ; r6 set to 0x8C34B034
mov.w @(loc_8c1AC270,pc),r3 ; r3 set to 0x80
mov.w @r6,r5
extu.w r5,r2
cmp/eq r3,r2
bt loc_8c1AC2B0
mov.l @(loc_8c1AC2A8,pc),r2 ; r2 set to 0x8C34AFB3
extu.w r5,r4
add r2,r4

loc_8c1AC23E:
add 0xFF,r4
mov.b @r4,r0
mov.b r0,@(0x01,r4)
mov.b @r4,r0
extu.b r0,r0
cmp/eq 0x5A,r0
bf loc_8c1AC23E
mov.l @(loc_8c1AC2AC,pc),r3 ; r3 set to 0x8C1C9D88, r3 set to 0x8C1C9D88
mov.l @r3,r2 ; r2 ??
cmp/hs r2,r4
bt loc_8c1AC23E
mov r4,r3 ; r3 ??? bc r4 is ???, r3 ??? bc r4 is ???
mov 0x48,r2 ; r2 set to 0x48, r2 set to 0x48
mov.l @(loc_8c1AC2AC,pc),r5 ; r5 set to 0x8C1C9D88, r5 set to 0x8C1C9D88
mov.l r4,@r5 ; r5 ??? bc r4 is ???, r5 ??? bc r4 is ???
mov.b r2,@r3
mov 0x01,r2 ; r2 set to 0x01, r2 set to 0x01
mov.w @r6,r3
add 0x01,r3
mov.w r3,@r6 ; r6 ??? bc r3 is ???
mov.l @(loc_8c1AC2A0,pc),r1 ; r1 set to 0x8C34AF45, r1 set to 0x8C34AF45
mov.b r2,@r1 ; r1 ??, r1 ??
bra loc_8c1AC316
nop
#data 0x00B0

loc_8c1AC270:
#data 0x0080
#data 0x0000
#data 0x8C34B1F8

#align4
loc_8c1AC278:
#data bank1b.loc_8c1b04EE

loc_8c1AC27C:
#data bank1b.loc_8c1b8902

loc_8c1AC280:
#data 0x8C34AFA8

#align4
loc_8c1AC284:
#data bank1b.loc_8c1b050A
#data 0x8C34AFA9
#data 0x8C34B037

#align4
loc_8c1AC290:
#data loc_8c1AF26C

loc_8c1AC294:
#data 0x8C34AF65

#align4
loc_8c1AC298:
#data bank19.loc_8c19FE58

loc_8c1AC29C:
#data 0x8C34B288

#align4
loc_8c1AC2A0:
#data 0x8C34AF45

#align4
loc_8c1AC2A4:
#data 0x8C34B034

#align4
loc_8c1AC2A8:
#data 0x8C34AFB3

#align4
loc_8c1AC2AC:
#data bank1c.loc_8c1c9D88


loc_8c1AC2B0:
mov 0x04,r2 ; r2 set to 0x04
extu.b r13,r3
cmp/ge r2,r3
bt loc_8c1AC310
mov.l @(loc_8c1AC420,pc),r1 ; r1 set to 0x8C1B3EEC
mov.l @(loc_8c1AC41C,pc),r4 ; r4 set to 0x8C34AFA0
jsr @r1
mov 0x64,r5 ; r5 set to 0x64
mov.l @(loc_8c1AC424,pc),r3 ; r3 set to 0x8C1A10A2
jsr @r3
mov 0x00,r4 ; r4 set to 0x00
exts.b r0,r0
tst r0,r0
bf loc_8c1AC2E0
mov.l @(loc_8c1AC428,pc),r3 ; r3 set to 0x8C34AF44
mov.b r13,@r3 ; r3 ??? bc r13 is ???
mov.b @(0x05,r14),r0
or 0x10,r0
mov.b r0,@(0x05,r14)
mov.l @(loc_8c1AC42C,pc),r1 ; r1 set to 0x8C34AFA8
mov 0x05,r2 ; r2 set to 0x05
mov.b r2,@r1 ; r1 ??
bra loc_8c1AC316
nop

loc_8c1AC2E0:
mov.b @(0x05,r14),r0
and 0xEF,r0
mov.b r0,@(0x05,r14)
mov.l @(loc_8c1AC430,pc),r2 ; r2 set to 0x8C34AF45
mov 0x00,r3 ; r3 set to 0x00
mov r3,r4 ; r4 set to 0x00
mov.b r3,@r2 ; r2 ??
mov.l @(loc_8c1AC434,pc),r3 ; r3 set to 0x8C19FE5C
jsr @r3
nop
mov.l @(loc_8c1AC438,pc),r2 ; r2 set to 0x8C1AEE90
jsr @r2
mov r13,r4 ; r4 ??? bc r13 is ???
mov.l @(loc_8c1AC43C,pc),r3 ; r3 set to 0x8C1BFAAC
jsr @r3
mov 0x00,r4 ; r4 set to 0x00
mov.l @(loc_8c1AC440,pc),r2 ; r2 set to 0x8C1B3DE0
jsr @r2
nop
lds.l @r15+,pr
mov.l @(loc_8c1AC444,pc),r3 ; r3 set to 0x8C1AFE8A
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8c1AC310:
mov.l @(loc_8c1AC42C,pc),r1 ; r1 set to 0x8C34AFA8
mov 0x02,r3 ; r3 set to 0x02
mov.b r3,@r1 ; r1 ??

loc_8c1AC316:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1AC31E:
sts.l pr,@-r15
mov.l @(loc_8c1AC448,pc),r2 ; r2 set to 0x8C1ADE6A
add 0xFC,r15
jsr @r2
nop
mov.l @(loc_8c1AC44C,pc),r2 ; r2 set to 0x8C1C9D88
mov.l @(loc_8c1AC448,pc),r1 ; r1 set to 0x8C1ADE6A
mov.l @r2,r0
mov.b @r0,r3
jsr @r1
mov.b r3,@r15
mov.l @(loc_8c1AC450,pc),r2 ; r2 set to 0x8C1ADDEC
jsr @r2
nop
mov r0,r4
mov.b @r15,r0
mov.l @(loc_8c1AC42C,pc),r7 ; r7 set to 0x8C34AFA8
extu.b r0,r0
cmp/eq 0x43,r0
bt loc_8c1AC362
cmp/eq 0x44,r0
bt loc_8c1AC368
cmp/eq 0x46,r0
bt loc_8c1AC36E
cmp/eq 0x50,r0
bt loc_8c1AC374
cmp/eq 0x51,r0
bt loc_8c1AC398
cmp/eq 0x54,r0
bt loc_8c1AC39E
cmp/eq 0x57,r0
bt loc_8c1AC3A4
bra loc_8c1AC3AA
nop

loc_8c1AC362:
add 0x04,r15
bra loc_8c1AC3B6
lds.l @r15+,pr

loc_8c1AC368:
add 0x04,r15
bra loc_8c1AC464
lds.l @r15+,pr

loc_8c1AC36E:
add 0x04,r15
bra loc_8c1AC4C6
lds.l @r15+,pr

loc_8c1AC374:
mov.l @(loc_8c1AC454,pc),r5 ; r5 set to 0x8C34AF66
extu.b r4,r6
tst r6,r6
bf loc_8c1AC382
mov.b @r5,r0
bra loc_8c1AC38E
and 0x7F,r0

loc_8c1AC382:
mov r6,r0
nop
cmp/eq 0x01,r0
bf loc_8c1AC392
mov.b @r5,r0
or 0x80,r0

loc_8c1AC38E:
bra loc_8c1AC3AE
mov.b r0,@r5

loc_8c1AC392:
mov 0x02,r3 ; r3 set to 0x02
bra loc_8c1AC3AE
mov.b r3,@r7

loc_8c1AC398:
add 0x04,r15
bra loc_8c1AC65E
lds.l @r15+,pr

loc_8c1AC39E:
add 0x04,r15
bra loc_8c1AC774
lds.l @r15+,pr

loc_8c1AC3A4:
add 0x04,r15
bra loc_8c1AD0AC
lds.l @r15+,pr

loc_8c1AC3AA:
#data 0xE302
#data 0x2730


loc_8c1AC3AE:
add 0x04,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c1AC3B6:
#data 0xD528
#data 0x2668664C
#data 0x8F136753
#data 0x6070771F
#data 0x76156653
#data 0x2700C9FB
#data 0x6060E202
#data 0x2600C9DF
#data 0x644C6460
#data 0x89022248
#data 0x2148E118
#data 0x8B19

loc_8c1AC3E2:
#data 0xD21E
#data 0xE400422B

#align4
loc_8c1AC3E8:
#data 0x00096063
#data 0x8B0F8801
#data 0x63536070
#data 0xC9FB7315
#data 0x60302700
#data 0x2300CB20
#data 0x6000D017
#data 0xC808600C
#data 0xD2148B05
#data 0xE401422B

#align4
loc_8c1AC410:
#data 0xE202D306
#data 0x2320

loc_8c1AC416:
#data 0x000B
#data 0x00000009

#align4
loc_8c1AC41C:
#data 0x8C34AFA0

#align4
loc_8c1AC420:
#data bank1b.loc_8c1b3EEC

loc_8c1AC424:
#data loc_8c1A10A2

loc_8c1AC428:
#data 0x8C34AF44

#align4
loc_8c1AC42C:
#data 0x8C34AFA8

#align4
loc_8c1AC430:
#data 0x8C34AF45

#align4
loc_8c1AC434:
#data bank19.loc_8c19FE5C

loc_8c1AC438:
#data loc_8c1AEE90

loc_8c1AC43C:
#data bank1b.loc_8c1bFAAC

loc_8c1AC440:
#data bank1b.loc_8c1b3DE0

loc_8c1AC444:
#data loc_8c1AFE8A

loc_8c1AC448:
#data loc_8c1ADE6A

loc_8c1AC44C:
#data bank1c.loc_8c1c9D88

loc_8c1AC450:
#data loc_8c1ADDEC

loc_8c1AC454:
#data 0x8C34AF66
#data 0x8C34AF50

#align4
loc_8c1AC45C:
#data loc_8c1A122A
#data 0x8C34B28E

#align4
loc_8c1AC464:
#data 0x6E432FE6
#data 0xE3034F22
#data 0x343764EC
#data 0xE5028D24
#data 0x89073453
#data 0x9143D223
#data 0x001D6022
#data 0xC810600D
#data 0x6E538900

#align4
loc_8c1AC488:
#data 0x6040D420
#data 0x2400C9FB
#data 0xD21F6040
#data 0x420BC9F7
#data 0x600E2400
#data 0x8F042008
#data 0xD31A62EC
#data 0xCB086030
#data 0x2300

loc_8c1AC4AA:
#data 0xD41A
#data 0x4E086E23
#data 0x4E006040
#data 0x30ECC9E7
#data 0x2400A002

#align4
loc_8c1AC4BC:
#data 0x2250D216

#align4
loc_8c1AC4C0:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1AC4C6:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @(loc_8c1AC51C,pc),r0 ; r0 set to 0x8C34B28E
mov.l @(loc_8c1AC518,pc),r5 ; r5 set to 0x8C34AFA8
add 0xEC,r15
mov.b @r0,r0 ; r0 ??
extu.b r0,r0
tst 0x08,r0
bf/s loc_8c1AC500
mov 0x02,r13 ; r13 set to 0x02
extu.b r4,r0
cmp/eq 0x00,r0
bt loc_8c1AC4EE
cmp/eq 0x01,r0
bt loc_8c1AC4F4
cmp/eq 0x02,r0
bt loc_8c1AC4FA
bra loc_8c1AC500
nop

loc_8c1AC4EE:
mov.l @(loc_8c1AC520,pc),r5 ; r5 set to 0x8C1C6BF0
bra loc_8c1AC52C
nop

loc_8c1AC4F4:
mov.l @(loc_8c1AC524,pc),r5 ; r5 set to 0x8C1C6C40
bra loc_8c1AC52C
nop

loc_8c1AC4FA:
mov.l @(loc_8c1AC528,pc),r5 ; r5 set to 0x8C1C6C90
bra loc_8c1AC52C
nop

loc_8c1AC500:
bra loc_8c1AC654
mov.b r13,@r5
#data 0x000000B2
#data 0x8C34B1F8
#data 0x8C34B298

#align4
loc_8c1AC510:
#data loc_8c1A11E0
#data 0x8C34AF65

#align4
loc_8c1AC518:
#data 0x8C34AFA8

#align4
loc_8c1AC51C:
#data 0x8C34B28E

#align4
loc_8c1AC520:
#data bank1c.loc_8c1c6BF0

loc_8c1AC524:
#data bank1c.loc_8c1c6C40

loc_8c1AC528:
#data bank1c.loc_8c1c6C90


loc_8c1AC52C:
mov.l @(loc_8c1AC6CC,pc),r14 ; r14 set to 0x8C34AF50
mov r14,r4 ; r4 set to 0x8C34AF50
mov r14,r0 ; r0 set to 0x8C34AF50
nop
add 0x11,r0 ; r0 set to 0x8C34AF61
mov.b @r0,r0 ; r0 ??
and 0xF0,r0
mov.b r0,@(0x08,r15)
mov r4,r0 ; r0 set to 0x8C34AF50
nop
mov r4,r3 ; r3 set to 0x8C34AF50
add 0x14,r0 ; r0 set to 0x8C34AF64
add 0x17,r3 ; r3 set to 0x8C34AF67
mov.b @r0,r0 ; r0 ??
mov.b r0,@(0x04,r15)
mov.b @r3,r2
mov.b r2,@r15
mov r4,r0 ; r0 set to 0x8C34AF50
nop
add 0x1F,r0 ; r0 set to 0x8C34AF6F
mov r4,r3 ; r3 set to 0x8C34AF50
mov.b @r0,r0 ; r0 ??
add 0x27,r3 ; r3 set to 0x8C34AF77
mov r4,r7 ; r7 set to 0x8C34AF50
mov 0x00,r4 ; r4 set to 0x00
mov.b r0,@(0x0C,r15)
mov 0x10,r0 ; r0 set to 0x10
mov.b @r3,r2
mov 0x50,r6 ; r6 set to 0x50
mov.b r2,@(r0,r15)

loc_8c1AC568:
add 0x01,r4 ; r4 set to 0x01
mov.b @r5+,r2
extu.b r4,r3 ; r3 set to 0x01
cmp/ge r6,r3
mov.b r2,@r7 ; r7 ??? bc r2 is ???
bf/s loc_8c1AC568
add 0x01,r7
mov.l @(loc_8c1AC6D0,pc),r3 ; r3 set to 0x8C1AF26C, r3 set to 0x8C1AF26C
jsr @r3
nop
mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
mov.l @(loc_8c1AC6D4,pc),r2 ; r2 set to 0x8C34B037, r2 set to 0x8C34B037
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???, r0 ??
mov r14,r3 ; r3 ??? bc r14 is ???, r3 set to 0x8C34AF50
add 0x11,r3 ; r3 set to 0x8C34AF61
mov r14,r4 ; r4 set to 0x8C34AF50
and 0x7F,r0
mov r15,r1
mov.b r0,@r2 ; r2 ??? bc r0 is ???, r2 ??? bc r0 is ???
add 0x17,r4 ; r4 set to 0x8C34AF67
mov.b @(0x08,r15),r0
add 0x0C,r1
mov.b r0,@r3 ; r3 ??? bc r0 is ???
mov r14,r3 ; r3 set to 0x8C34AF50
mov.b @(0x04,r15),r0
add 0x14,r3 ; r3 set to 0x8C34AF64
mov.b r0,@r3 ; r3 ??? bc r0 is ???
mov.b @r4,r0
and 0xC1,r0
mov r0,r3
mov.b @r15,r0
and 0x3E,r0
or r0,r3
mov.b r3,@r4 ; r4 ??? bc r3 is ???
mov r14,r4 ; r4 set to 0x8C34AF50
add 0x1F,r4 ; r4 set to 0x8C34AF6F
mov.b @r4,r0
and 0xEF,r0
mov r0,r3
mov.b @r1,r0
and 0x10,r0
or r0,r3
mov.b r3,@r4 ; r4 ??? bc r3 is ???
mov r14,r4 ; r4 set to 0x8C34AF50
add 0x27,r4 ; r4 set to 0x8C34AF77
mov r15,r1
mov.b @r4,r0
add 0x10,r1
and 0xF3,r0
mov r0,r3
mov.b @r1,r0
and 0x0C,r0
or r0,r3
mov.b r3,@r4 ; r4 ??? bc r3 is ???
mov.l @(loc_8c1AC6D8,pc),r1 ; r1 set to 0x8C1B05D8, r1 set to 0x8C1B05D8
jsr @r1
mov r14,r4 ; r4 set to 0x8C34AF50
mov.l @(loc_8c1AC6DC,pc),r3 ; r3 set to 0x8C1C0480, r3 set to 0x8C1C0480
mov r14,r6 ; r6 set to 0x8C34AF50
mov 0x01,r5 ; r5 set to 0x01, r5 set to 0x01
add 0x38,r6 ; r6 set to 0x8C34AF88
jsr @r3
mov 0x0B,r4 ; r4 set to 0x0B, r4 set to 0x0B
mov.l @(loc_8c1AC6E0,pc),r2 ; r2 set to 0x8C1A1208, r2 set to 0x8C1A1208
jsr @r2
mov 0x00,r4 ; r4 set to 0x00, r4 set to 0x00
mov r14,r0 ; r0 set to 0x8C34AF50
nop
add 0x15,r0 ; r0 set to 0x8C34AF65
mov.b @r0,r0 ; r0 ??
extu.b r0,r0
tst 0x40,r0
bt loc_8c1AC604
mov.l @(loc_8c1AC6E4,pc),r2 ; r2 set to 0x8C1A124C, r2 set to 0x8C1A124C
jsr @r2
mov 0x01,r4 ; r4 set to 0x01, r4 set to 0x01
bra loc_8c1AC61E
nop

#align4
loc_8c1AC604:
#data 0x741564E3
#data 0x644C6440
#data 0x23D86343
#data 0xE1188902
#data 0x8B022148

#align4
loc_8c1AC618:
#data 0x420BD232
#data 0xE400


loc_8c1AC61E:
mov r14,r5
add 0x15,r5
mov.b @r5,r0
extu.b r0,r0
tst 0x20,r0
bt loc_8c1AC638
add 0x14,r15
mov.l @(loc_8c1AC6E8,pc),r2 ; r2 set to 0x8C1A122A
lds.l @r15+,pr
mov 0x01,r4 ; r4 set to 0x01
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

#align4
loc_8c1AC638:
#data 0x644C6450
#data 0x89022D48
#data 0x2348E318
#data 0x8B06

loc_8c1AC646:
#data 0x7F14
#data 0x4F26D327
#data 0x6DF6E400
#data 0x6EF6432B


loc_8c1AC654:
add 0x14,r15
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1AC65E:
#data 0x2FE6
#data 0x4F22E307
#data 0xD7216E4C
#data 0x8D0B3E37
#data 0xD020E602
#data 0x600C6000
#data 0x8B05C808
#data 0x3E53E501
#data 0xE3038B06
#data 0x89033E37

#align4
loc_8c1AC684:
#data 0x27604F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1AC68C:
#data 0x3E53D119
#data 0xE2038B09
#data 0x89063E27
#data 0xE2036010
#data 0xC9F42429
#data 0xA02F204B
#data 0x2100

loc_8c1AC6A6:
#data 0x6010
#data 0x2100C9FC
#data 0x60E3D412
#data 0x88000009
#data 0x88048905
#data 0x88078905
#data 0xA020891E
#data 0x0009

loc_8c1AC6C2:
#data 0xA01C
#data 0xE222

loc_8c1AC6C6:
#data 0xE111
#data 0x2410A01C

#align4
loc_8c1AC6CC:
#data 0x8C34AF50

#align4
loc_8c1AC6D0:
#data loc_8c1AF26C

loc_8c1AC6D4:
#data 0x8C34B037

#align4
loc_8c1AC6D8:
#data bank1b.loc_8c1b05D8

loc_8c1AC6DC:
#data bank1c.loc_8c1c0480

loc_8c1AC6E0:
#data loc_8c1A1208

loc_8c1AC6E4:
#data loc_8c1A124C

loc_8c1AC6E8:
#data loc_8c1A122A
#data 0x8C34AFA8
#data 0x8C34B28E
#data 0x8C34AF6B
#data 0x8C34AF74

loc_8c1AC6FC:
#data 0x9258

loc_8c1AC6FE:
#data 0xA001
#data 0x2420

loc_8c1AC702:
#data 0x2760

#align4
loc_8c1AC704:
#data 0x6040D42B
#data 0x2400C9FB
#data 0xD32A6040
#data 0x430BC9F7
#data 0x600E2400
#data 0x8B032008
#data 0x6030D325
#data 0x2300CB08

#align4
loc_8c1AC724:
#data 0x000B4F26
#data 0xD1246EF6
#data 0x6053654C
#data 0x88010009
#data 0x60108B0A
#data 0x2100CB40
#data 0x6000D020
#data 0xC808600C
#data 0xD21F8B0F
#data 0xE401422B
#data 0x8F0D2558
#data 0x6010E602
#data 0x2100C9BF
#data 0x644C6410
#data 0x89022648
#data 0x2248E218
#data 0xD2178B04
#data 0xE400422B
#data 0x2260D216
#data 0x0009000B
;-------------------------------------------------------------------------------

loc_8c1AC774:
bra loc_8c1AC778
nop

loc_8c1AC778:
mov.l r14,@-r15
extu.b r4,r14
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
mov.l @(loc_8c1AC7CC,pc),r12 ; r12 set to 0x8C34AF50
mov r14,r0
nop
cmp/eq 0x0A,r0
bf/s loc_8c1AC7A0
mov r12,r5 ; r5 set to 0x8C34AF50
mov r5,r3 ; r3 set to 0x8C34AF50
add 0x27,r3 ; r3 set to 0x8C34AF77
mov.b @r3,r0
bra loc_8c1AC7AC
and 0xBF,r0

loc_8c1AC7A0:
cmp/eq 0x09,r0
bf loc_8c1AC7D0
mov r5,r3
add 0x27,r3
mov.b @r3,r0
or 0x40,r0

loc_8c1AC7AC:
bra loc_8c1AC9C0
mov.b r0,@r3
#data 0x000000AA
#data 0x8C34B298

#align4
loc_8c1AC7B8:
#data loc_8c1A11E0
#data 0x8C34AF65
#data 0x8C34B28E

#align4
loc_8c1AC7C4:
#data loc_8c1A124C
#data 0x8C34AFA8

#align4
loc_8c1AC7CC:
#data 0x8C34AF50


loc_8c1AC7D0:
mov r5,r3
add 0x10,r3
mov.b @r3,r2
mov.l @(loc_8c1AC89C,pc),r9 ; r9 set to 0x8C34AFA8
tst r2,r2
bt loc_8c1AC7E4
tst r14,r14
bt loc_8c1AC7E4
bra loc_8c1AC96A
nop

loc_8c1AC7E4:
mov.l @(loc_8c1AC8A4,pc),r13 ; r13 set to 0x8C34B288
mov 0x08,r11 ; r11 set to 0x08
mov.l @(loc_8c1AC8A0,pc),r10 ; r10 set to 0x8C34B0A3
mov r14,r0
nop
cmp/eq 0x00,r0
bf/s loc_8c1AC7F8
mov r13,r4 ; r4 set to 0x8C34B288
bra loc_8c1AC9AA
nop

loc_8c1AC7F8:
cmp/eq 0x01,r0
bt loc_8c1AC844
cmp/eq 0x02,r0
bt loc_8c1AC844
cmp/eq 0x03,r0
bf loc_8c1AC808
bra loc_8c1AC946
nop

loc_8c1AC808:
cmp/eq 0x04,r0
bf loc_8c1AC810
bra loc_8c1AC920
nop

loc_8c1AC810:
cmp/eq 0x05,r0
bt loc_8c1AC8FA
cmp/eq 0x06,r0
bt loc_8c1AC8BC
cmp/eq 0x07,r0
bt loc_8c1AC8BC
cmp/eq 0x08,r0
bt loc_8c1AC824
bra loc_8c1AC9BC
nop

loc_8c1AC824:
mov r5,r0
nop
add 0x1B,r0
mov.b @r0,r0
extu.b r0,r0
tst 0x03,r0
bf loc_8c1AC844
mov r5,r0
nop
add 0x24,r0
mov.b @r0,r0
extu.b r0,r0
tst 0x0D,r0
bt loc_8c1AC844
bra loc_8c1AC96A
nop

loc_8c1AC844:
mov.b @(0x06,r4),r0
extu.b r0,r0
tst r11,r0
bt loc_8c1AC850
bra loc_8c1AC96A
nop

loc_8c1AC850:
mov.l @(loc_8c1AC8A8,pc),r3 ; r3 set to 0x8C34B1F8
mov.w @(loc_8c1AC898,pc),r0 ; r0 set to 0x89
mov.l @r3,r5
mov.l @(loc_8c1AC8AC,pc),r2 ; r2 set to 0x8C19A910
mov.l @r3,r4
mov.b @(r0,r5),r5
add 0xFF,r0 ; r0 set to 0x88
jsr @r2
mov.b @(r0,r4),r4
mov.l @(loc_8c1AC8B0,pc),r3 ; r3 set to 0x8C1BEAF4
jsr @r3
mov 0x01,r4 ; r4 set to 0x01
mov r12,r0 ; r0 ??? bc r12 is ???
nop
add 0x25,r0
mov.b @r0,r0
extu.b r0,r0
cmp/eq 0x0C,r0
bf loc_8c1AC87A
bra loc_8c1AC96A
nop

loc_8c1AC87A:
mov r14,r0
nop
cmp/eq 0x08,r0
bf/s loc_8c1AC888
add 0x10,r12
bra loc_8c1AC88A
mov 0x40,r3

loc_8c1AC888:
mov 0x01,r3 ; r3 set to 0x01

loc_8c1AC88A:
mov.b r3,@r12
mov.l @(loc_8c1AC8B4,pc),r1 ; r1 set to 0x8C34B2CC, r1 set to 0x8C34B2CC
mov.l @(loc_8c1AC8B8,pc),r0 ; r0 set to 0x8C34B12C, r0 set to 0x8C34B12C
mov.l @r1,r2
mov.l r2,@r0 ; r0 ??? bc r2 is ???, r0 ??? bc r2 is ???
bra loc_8c1AC8F6
mov 0x04,r3

loc_8c1AC898:
#data 0x0089
#data 0x0000

#align4
loc_8c1AC89C:
#data 0x8C34AFA8

#align4
loc_8c1AC8A0:
#data 0x8C34B0A3

#align4
loc_8c1AC8A4:
#data 0x8C34B288

#align4
loc_8c1AC8A8:
#data 0x8C34B1F8

#align4
loc_8c1AC8AC:
#data bank19.loc_8c19A910

loc_8c1AC8B0:
#data bank1b.loc_8c1bEAF4

loc_8c1AC8B4:
#data 0x8C34B2CC

#align4
loc_8c1AC8B8:
#data 0x8C34B12C


loc_8c1AC8BC:
mov.b @(0x06,r13),r0
extu.b r0,r0
tst r11,r0
bt loc_8c1AC96A
mov.l @(loc_8c1AC9D4,pc),r3 ; r3 set to 0x8C34B0FE
mov 0x02,r1 ; r1 set to 0x02
mov.b @r3,r2
extu.b r2,r2
cmp/ge r1,r2
bf loc_8c1AC96A
mov.l @(loc_8c1AC9D8,pc),r2 ; r2 set to 0x8C19FD02
jsr @r2
nop
mov.l @(loc_8c1AC9DC,pc),r3 ; r3 set to 0x8C19FD58
jsr @r3
extu.b r0,r8
extu.b r0,r0
cmp/eq r0,r8
bf loc_8c1AC96A
mov r14,r0
nop
cmp/eq 0x06,r0
bf/s loc_8c1AC8F0
add 0x10,r12
bra loc_8c1AC8F2
mov 0x10,r2

loc_8c1AC8F0:
#data 0xE220

loc_8c1AC8F2:
#data 0xE305
#data 0x2C20


loc_8c1AC8F6:
bra loc_8c1AC9B6
mov.b r3,@r10

loc_8c1AC8FA:
mov r5,r3
add 0x17,r3
mov.b @r3,r0
and 0xFE,r0
mov.b r0,@r3
mov.b @(0x06,r13),r0
extu.b r0,r0
tst r11,r0
bt loc_8c1AC9C0
lds.l @r15+,pr
mov.l @(loc_8c1AC9E0,pc),r2 ; r2 set to 0x8C19D5EA
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_8c1AC920:
mov r5,r3
add 0x17,r3
mov.b @r3,r0
or 0x01,r0
mov.b r0,@r3
mov.b @(0x06,r13),r0
extu.b r0,r0
tst r11,r0
bt loc_8c1AC9C0
lds.l @r15+,pr
mov.l @(loc_8c1AC9E4,pc),r2 ; r2 set to 0x8C19D5CC
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_8c1AC946:
#data 0x6043
#data 0x701D0009
#data 0x600C6000
#data 0x8B0AC820
#data 0x00096043
#data 0x6000701B
#data 0xC880600C
#data 0x84468B03
#data 0xC808600C
#data 0x8B01


loc_8c1AC96A:
bra loc_8c1AC9A6
mov 0x02,r2

loc_8c1AC96E:
#data 0xE204
#data 0x25207510
#data 0x430BD31C
#data 0x84DCE401
#data 0x80DCCB01
#data 0xCB0884D3
#data 0xD31980D3
#data 0xE400430B
#data 0x751265C3
#data 0xE3646550
#data 0x655CD217
#data 0x253ED415
#data 0x051A420B
#data 0xE201E303
#data 0x2A30


loc_8c1AC9A6:
bra loc_8c1AC9C0
mov.b r2,@r9

loc_8c1AC9AA:
#data 0x8443
#data 0x20B8600C
#data 0xE2068906
#data 0x2A20


loc_8c1AC9B6:
mov 0x05,r3 ; r3 set to 0x05
bra loc_8c1AC9C0
mov.b r3,@r9

#align4
loc_8c1AC9BC:
#data 0x2910E102


loc_8c1AC9C0:
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
loc_8c1AC9D4:
#data 0x8C34B0FE

#align4
loc_8c1AC9D8:
#data bank19.loc_8c19FD02

loc_8c1AC9DC:
#data bank19.loc_8c19FD58

loc_8c1AC9E0:
#data bank19.loc_8c19D5EA

loc_8c1AC9E4:
#data bank19.loc_8c19D5CC

loc_8c1AC9E8:
#data bank19.loc_8c19FED6

loc_8c1AC9EC:
#data loc_8c1A1290
#data 0x8C34AFA4

#align4
loc_8c1AC9F4:
#data bank1b.loc_8c1b3EEC
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x4F222F86
#data 0x60437FDC
#data 0xEC000009
#data 0xD35280F8
#data 0x23C0E601
#data 0x60E3DE51
#data 0x701B0009
#data 0xE5401F03
#data 0xE2FA6000
#data 0x600CD44E
#data 0xB2DF2509
#data 0x69E3452C
#data 0x6590790E
#data 0xD44BEA02
#data 0x655CE601
#data 0xB2D525A9
#data 0x68E34521
#data 0x60807816
#data 0xD447E601
#data 0xB2CDC903
#data 0x60806503
#data 0xD445E50C
#data 0x600CE601
#data 0x45212509
#data 0x4521B2C4
#data 0x7B186BE3
#data 0xE51860B0
#data 0xE601D441
#data 0x2509600C
#data 0x4521D03E
#data 0x45214521
#data 0x055CB2B6
#data 0xE5106090
#data 0x600CED04
#data 0x2F022509
#data 0xD43A20D9
#data 0x45214521
#data 0x4521E601
#data 0x40214021
#data 0x350CB2A6
#data 0xE5086090
#data 0xE601D435
#data 0x2509600C
#data 0x45214521
#data 0x4521B29C
#data 0xE56060B0
#data 0xE601D431
#data 0xE3FB600C
#data 0xB2932509
#data 0x6080453C
#data 0xE3FCE570
#data 0x600CD42E
#data 0xD02C2509
#data 0x453CE601
#data 0x055CB288
#data 0x751565E3
#data 0xE6019939
#data 0xE3F92F52
#data 0xD4286550
#data 0x2599655C
#data 0x453CB27C
#data 0xE60165B0
#data 0xE3F9D425
#data 0x2599655C
#data 0x453CB274
#data 0xE52060F2
#data 0xE601D422
#data 0xE3FB6000
#data 0x2509600C
#data 0x453CB26A
#data 0xE51860F2
#data 0xE601D41E
#data 0x600C6000
#data 0x45212509
#data 0xB25F4521
#data 0x65E34521
#data 0x1F557527
#data 0x6550E3FB
#data 0x655CE601
#data 0x25991F54
#data 0x453C50F4
#data 0xC903D416
#data 0xD014250B
#data 0x055CB24E
#data 0xA027E601
#data 0x00800009
#data 0x8C34AFB2
#data 0x8C34AF50

#align4
loc_8c1ACB64:
#data bank1c.loc_8c1c6DD8

loc_8c1ACB68:
#data bank1c.loc_8c1c6DDC

loc_8c1ACB6C:
#data bank1c.loc_8c1c6DE0

loc_8c1ACB70:
#data bank1c.loc_8c1c6DE4

loc_8c1ACB74:
#data bank1c.loc_8c1c6CF0

loc_8c1ACB78:
#data bank1c.loc_8c1c6DE8

loc_8c1ACB7C:
#data bank1c.loc_8c1c6DEC

loc_8c1ACB80:
#data bank1c.loc_8c1c6DF0

loc_8c1ACB84:
#data bank1c.loc_8c1c6DF4

loc_8c1ACB88:
#data bank1c.loc_8c1c6CE8

loc_8c1ACB8C:
#data bank1c.loc_8c1c6DF8

loc_8c1ACB90:
#data bank1c.loc_8c1c6DFC

loc_8c1ACB94:
#data bank1c.loc_8c1c6E00

loc_8c1ACB98:
#data bank1c.loc_8c1c6E04

loc_8c1ACB9C:
#data bank1c.loc_8c1c6E08

loc_8c1ACBA0:
#data bank1c.loc_8c1c6D0C

loc_8c1ACBA4:
#data bank1c.loc_8c1c6E0C
#data 0x000960E3
#data 0x957F7017
#data 0xE3FA6000
#data 0x600CD43F
#data 0xB2192509
#data 0x50F5453C
#data 0xD43DE530
#data 0x6000E601
#data 0x600CE3FC
#data 0xB20F2509
#data 0x60F2453C
#data 0xD439E601
#data 0xC9016000
#data 0x6503B208
#data 0x60E3E601
#data 0x70310009
#data 0x6000D435
#data 0xB1FFC91F
#data 0x55F36503
#data 0xD433E601
#data 0x655C6550
#data 0x452125D9
#data 0x4521B1F6
#data 0xE60160B0
#data 0xC901D42F
#data 0x6503B1F0
#data 0xE60165B0
#data 0x655CD42D
#data 0xB1E925A9
#data 0x65804521
#data 0xD42BE601
#data 0x655CE3F9
#data 0xB1E12599
#data 0x50F3453C
#data 0x6000D828
#data 0xC903600C
#data 0x8F084015
#data 0xE6016BE3
#data 0x000960B3
#data 0x6000701B
#data 0xA022C903
#data 0x64B36503
#data 0x64407424
#data 0x6343644C
#data 0x890523D8
#data 0x2148E108
#data 0xE6018902
#data 0xE506A009
#data 0x000960B3
#data 0x60007024
#data 0xC808600C
#data 0xE5078905
#data 0xB1B9E601
#data 0xA02F6483
#data 0x62B30009
#data 0x63207224
#data 0x23D8633C
#data 0xE5058905
#data 0xB1ADE601
#data 0xA0236483
#data 0x60B30009
#data 0x70240009
#data 0x600C6000
#data 0x8D17C801
#data 0xE6016483
#data 0xE504A016
#data 0x000000C0

#align4
loc_8c1ACCB4:
#data bank1c.loc_8c1c6E10

loc_8c1ACCB8:
#data bank1c.loc_8c1c6E14

loc_8c1ACCBC:
#data bank1c.loc_8c1c6E18

loc_8c1ACCC0:
#data bank1c.loc_8c1c6E1C

loc_8c1ACCC4:
#data bank1c.loc_8c1c6E20

loc_8c1ACCC8:
#data bank1c.loc_8c1c6E24

loc_8c1ACCCC:
#data bank1c.loc_8c1c6E28

loc_8c1ACCD0:
#data bank1c.loc_8c1c6E2C

loc_8c1ACCD4:
#data bank1c.loc_8c1c6E30
#data 0xE601E500
#data 0x0009B188
#data 0x751565E3
#data 0xE6012F52
#data 0xD46D6550
#data 0x25D9655C
#data 0xB17D4521
#data 0x60F24521
#data 0xD46AE540
#data 0x6000E601
#data 0x600CE3FA
#data 0xB1732509
#data 0x65E3453C
#data 0x65507518
#data 0xD465E601
#data 0x25D9655C
#data 0xB1694521
#data 0xE6014521
#data 0x000960E3
#data 0xD461701B
#data 0xE5306000
#data 0x600CE3FC
#data 0xB15D2509
#data 0x84F8453C
#data 0x890C2008
#data 0x66F3D35C
#data 0x7604E501
#data 0xE404430B
#data 0xE60184F4
#data 0x80F4C90F
#data 0xB14DD458
#data 0x6BE36503
#data 0x65B07B18
#data 0xD456E601
#data 0x25D9655C
#data 0xB1434521
#data 0xD4544521
#data 0xE60365E3
#data 0xB13D7526
#data 0xE6016550
#data 0x000960E3
#data 0xD450701C
#data 0xC9036000
#data 0x6503B134
#data 0xE80365B0
#data 0xE601D04D
#data 0x655CD44D
#data 0xB12B2589
#data 0xD44C055C
#data 0x668365E3
#data 0xB125752E
#data 0xE6016550
#data 0x000960E3
#data 0xD4487031
#data 0xE5106000
#data 0x600CE3FC
#data 0xB1192509
#data 0x63B0453C
#data 0x2398633C
#data 0xE6018902
#data 0xE500A002
#data 0x6563E601
#data 0xB10DD440
#data 0xE6010009
#data 0x000960E3
#data 0xD43F7027
#data 0xE5306000
#data 0x600CE3FC
#data 0xD03B2509
#data 0xB0FF453C
#data 0x63E3055C
#data 0x6230731B
#data 0x2289622C
#data 0x8B054215
#data 0xE601D437
#data 0x6563B0F4
#data 0x0009A00C
#data 0x60E3E601
#data 0x70240009
#data 0x6000D432
#data 0x600CE50F
#data 0xD0312509
#data 0x055CB0E6
#data 0x741864E3
#data 0xE3206440
#data 0x2348644C
#data 0xE1408B05
#data 0x89022148
#data 0xA002E601
#data 0xE5006563
#data 0xD429E601
#data 0x0009B0D4
#data 0x200884F8
#data 0xD4278905
#data 0xE60365E3
#data 0xB0CB7538
#data 0xB11D6550
#data 0xD3240009
#data 0x84F823C0
#data 0x89022008
#data 0xA001DD22
#data 0xDD220009
#data 0xA05669F3
#data 0x62D0791C
#data 0x622CE364
#data 0x8B013233
#data 0x6B83A001
#data 0x64D06BA3
#data 0xD31C67F3
#data 0x7718E50A
#data 0x430B66B3
#data 0x65F3644C
#data 0x64937518
#data 0xE353A031

#align4
loc_8c1ACEA0:
#data bank1c.loc_8c1c6E34

loc_8c1ACEA4:
#data bank1c.loc_8c1c6E38

loc_8c1ACEA8:
#data bank1c.loc_8c1c6E3C

loc_8c1ACEAC:
#data bank1c.loc_8c1c6E40

loc_8c1ACEB0:
#data bank1c.loc_8c1c0480

loc_8c1ACEB4:
#data bank1c.loc_8c1c6E44

loc_8c1ACEB8:
#data bank1c.loc_8c1c6E48

loc_8c1ACEBC:
#data bank1c.loc_8c1c6E4C

loc_8c1ACEC0:
#data bank1c.loc_8c1c6E50

loc_8c1ACEC4:
#data bank1c.loc_8c1c6CF4

loc_8c1ACEC8:
#data bank1c.loc_8c1c6E54

loc_8c1ACECC:
#data bank1c.loc_8c1c6E58

loc_8c1ACED0:
#data bank1c.loc_8c1c6E5C

loc_8c1ACED4:
#data bank1c.loc_8c1c6E60

loc_8c1ACED8:
#data bank1c.loc_8c1c6CF8

loc_8c1ACEDC:
#data bank1c.loc_8c1c6E64

loc_8c1ACEE0:
#data bank1c.loc_8c1c6E68

loc_8c1ACEE4:
#data bank1c.loc_8c1c6CFC

loc_8c1ACEE8:
#data bank1c.loc_8c1c6E6C

loc_8c1ACEEC:
#data bank1c.loc_8c1c6E70
#data 0x8C34AFB2

#align4
loc_8c1ACEF4:
#data bank1c.loc_8c1c6D14

loc_8c1ACEF8:
#data bank1c.loc_8c1c6D2C

loc_8c1ACEFC:
#data loc_8c1AF1A4
#data 0x62BC6354
#data 0x22282430
#data 0x8FF97401
#data 0xE33D7BFF
#data 0x74012430
#data 0xE60324C0
#data 0x600C60D4
#data 0xB06705EC
#data 0x62D06493
#data 0x622C937A
#data 0x8BA43230
#data 0x4F267F24
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0xE0102FE6
#data 0x2FC62FD6
#data 0x2FA62FB6
#data 0x2F862F96
#data 0x7FE84F22
#data 0x60530F44
#data 0x80FCB09E
#data 0xDC30D431
#data 0x00094C0B
#data 0x0009B098
#data 0xDD326BF3
#data 0xE010DA30
#data 0x7B14D82D
#data 0xA02CD92D
#data 0x64EC0EFC
#data 0x440066F3
#data 0x4D0BE502
#data 0x64EC740C
#data 0x740166F3
#data 0x76084400
#data 0x4D0BE502
#data 0x4C0B740C
#data 0xE50A6493
#data 0xE60167B3
#data 0x64EC480B
#data 0x64B34C0B
#data 0x4C0BD423
#data 0xA00B0009
#data 0x64F10009
#data 0x760466F3
#data 0x2F417401
#data 0x4D0BE501
#data 0x84F474FF
#data 0x64034A0B
#data 0x63F185F4
#data 0x8BF03302
#data 0x84FC7E01
#data 0x600C63EC
#data 0x8BCE3307
#data 0x4F267F18
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x2FD62FE6
#data 0x4F222FC6
#data 0x60537FEC
#data 0xE24A0009
#data 0x2F6080F4
#data 0x63E0DE0D
#data 0x3327633C
#data 0x6C438F03
#data 0xB041E100
#data 0xDD062E10
#data 0x0009A017
#data 0x000000FF

#align4
loc_8c1AD020:
#data loc_8c1AECDC

loc_8c1AD024:
#data bank1c.loc_8c1c6E74

loc_8c1AD028:
#data loc_8c1AF1A4

loc_8c1AD02C:
#data bank1c.loc_8c1c6E84

loc_8c1AD030:
#data loc_8c1AEC3A

loc_8c1AD034:
#data bank1c.loc_8c1c0480

loc_8c1AD038:
#data bank1c.loc_8c1c6E88
#data 0x8C34AFB2
#data 0x64C44D0B
#data 0x730163E0
#data 0x62C02E30
#data 0x8BF72228
#data 0x67F384F4
#data 0x770866F0
#data 0x6403D335
#data 0x430BE50A
#data 0x6CF3644C
#data 0x7C08A005
#data 0x64C44D0B
#data 0x730163E0
#data 0x62C02E30
#data 0x8BF72228
#data 0xE34A61E0
#data 0x3137611C
#data 0x4D0B8904
#data 0x63E0E420
#data 0x2E307301
#data 0x4F267F14
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

loc_8c1AD098:
sts.l pr,@-r15
mov.l @(loc_8c1AD138,pc),r3 ; r3 set to 0x8C1AEC3A
mov.l @(loc_8c1AD134,pc),r2 ; r2 set to 0x8C34B036
jsr @r3
mov.b @r2,r4
mov.l @(loc_8c1AD13C,pc),r1 ; r1 set to 0x8C34B037
mov.l @(loc_8c1AD138,pc),r3 ; r3 set to 0x8C1AEC3A
mov.b @r1,r4
jmp @r3
lds.l @r15+,pr

loc_8c1AD0AC:
mov 0x04,r2 ; r2 set to 0x04
extu.b r4,r3
cmp/ge r2,r3
bt loc_8c1AD0BC
mov.l @(loc_8c1AD144,pc),r1 ; r1 set to 0x8C1B8388
mov.l @(loc_8c1AD140,pc),r5 ; r5 set to 0x8C34AF50
jmp @r1
nop

loc_8c1AD0BC:
mov.l @(loc_8c1AD148,pc),r3 ; r3 set to 0x8C34AFA8
mov 0x02,r1 ; r1 set to 0x02
rts
mov.b r1,@r3
;-------------------------------------------------------------------------------

loc_8c1AD0C4:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
sts.l pr,@-r15
add 0xF8,r15
bsr loc_8c1ADE6A
nop
mov.l @(loc_8c1AD14C,pc),r4 ; r4 set to 0x8C1C9D88
mov.l @r4,r0
mov.b @r0,r0
mov.b r0,@(0x04,r15)
mov.l @r4,r3
mov.b @(0x01,r3),r0
bsr loc_8c1ADE6A
mov.b r0,@r15
bsr loc_8c1ADDEC
nop
mov r0,r14
mov.b @(0x04,r15),r0
mov.l @(loc_8c1AD140,pc),r13 ; r13 set to 0x8C34AF50
mov 0x02,r4 ; r4 set to 0x02
extu.b r0,r0
mov.l @(loc_8c1AD148,pc),r5 ; r5 set to 0x8C34AFA8
cmp/eq 0x43,r0
bt/s loc_8c1AD106
extu.b r14,r12
cmp/eq 0x48,r0
bt loc_8c1AD150
cmp/eq 0x4C,r0
bt loc_8c1AD1E8
bra loc_8c1AD1F8
nop

loc_8c1AD106:
mov 0x01,r3 ; r3 set to 0x01
cmp/gt r3,r12
bt loc_8c1AD160
tst r12,r12
mov r13,r4
bf/s loc_8c1AD11C
add 0x18,r4
mov.b @r4,r0
and 0xFB,r0
bra loc_8c1AD1FA
mov.b r0,@r4

loc_8c1AD11C:
mov.b @r4,r0
mov r13,r2
add 0x2A,r2
or 0x04,r0
mov.b r0,@r4
mov.b @r2,r0
or 0xC0,r0
bra loc_8c1AD1FA
mov.b r0,@r2
#data 0x0000

#align4
loc_8c1AD130:
#data loc_8c1AF1A4

loc_8c1AD134:
#data 0x8C34B036

#align4
loc_8c1AD138:
#data loc_8c1AEC3A

loc_8c1AD13C:
#data 0x8C34B037

#align4
loc_8c1AD140:
#data 0x8C34AF50

#align4
loc_8c1AD144:
#data bank1b.loc_8c1b8388

loc_8c1AD148:
#data 0x8C34AFA8

#align4
loc_8c1AD14C:
#data bank1c.loc_8c1c9D88

loc_8c1AD150:
#data 0x9087DB46
#data 0x032D62B2
#data 0x633D9285
#data 0x89012328


loc_8c1AD160:
bra loc_8c1AD1FA
mov.b r4,@r5

#align4
loc_8c1AD164:
#data 0x600C60F0
#data 0x8B06884C
#data 0x4F267F08
#data 0x6CF66BF6
#data 0xA0476DF6
#data 0x6EF6

loc_8c1AD17A:
#data 0xD33D
#data 0x0009430B
#data 0x3C27E20F
#data 0x65B28915
#data 0xD33AE023
#data 0x055C64B2
#data 0x430BE022
#data 0x66B2044C
#data 0x066CE022
#data 0x000960D3
#data 0x95617017
#data 0xE3FA6000
#data 0x2509600C
#data 0xA012453C
#data 0x0009

loc_8c1AD1B2:
#data 0xE138
#data 0x8B023C13
#data 0x430BD32F
#data 0x0009

loc_8c1AD1BE:
#data 0x66D3
#data 0x66607623
#data 0x000960D3
#data 0x954D7017
#data 0xE3FA6000
#data 0x2509600C
#data 0x453C

loc_8c1AD1D6:
#data 0x7F08
#data 0x4F26D228
#data 0x6BF664E3
#data 0x6DF66CF6
#data 0x6EF6422B


loc_8c1AD1E8:
add 0x08,r15
mov r14,r4
lds.l @r15+,pr
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
bra loc_8c1AD42E
mov.l @r15+,r14

loc_8c1AD1F8:
#data 0x2540


loc_8c1AD1FA:
add 0x08,r15
lds.l @r15+,pr
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8c1AD208:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x4F222FA6
#data 0xB6287FF4
#data 0xB5E70009
#data 0x93240009
#data 0x6C4C6403
#data 0x89493C36
#data 0xD210DE15
#data 0x604064E2
#data 0x883F600C
#data 0x6B228F2C
#data 0x0009B617
#data 0x67F3E510
#data 0x60C3E602
#data 0xD30F0009
#data 0x430B04BC
#data 0xD20E644C
#data 0x0009420B
#data 0x430BD30D
#data 0xD20B64F3
#data 0x0009420B
#data 0x0009A02F
#data 0x040000B2
#data 0x00B800C0
#data 0x8C34B1F8

#align4
loc_8c1AD270:
#data loc_8c1ABA20

loc_8c1AD274:
#data bank19.loc_8c19B148

loc_8c1AD278:
#data bank1b.loc_8c1b43D0

loc_8c1AD27C:
#data bank19.loc_8c19F3A8

loc_8c1AD280:
#data bank1c.loc_8c1c9D88

loc_8c1AD284:
#data loc_8c1AF1A4

loc_8c1AD288:
#data loc_8c1AEE08

loc_8c1AD28C:
#data loc_8c1AECDC

loc_8c1AD290:
#data 0x8B13883D
#data 0x0009B5E9
#data 0xED00DA0E

#align4
loc_8c1AD29C:
#data 0x4D0864E2
#data 0xB36B4D08
#data 0xB5E06440
#data 0x63E23D0C
#data 0x63A06230
#data 0x8BF33230
#data 0x000960C3
#data 0x0BD4A003

#align4
loc_8c1AD2BC:
#data 0xE202D306
#data 0x2320

loc_8c1AD2C2:
#data 0x7F0C
#data 0x6AF64F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x00006EF6
#data 0x8C34B036
#data 0x8C34AFA8

#align4
loc_8c1AD2DC:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x4F222F86
#data 0x7FF0DA3A
#data 0x00094A0B
#data 0x00094A0B
#data 0x1F33E300
#data 0xED01B5B5
#data 0xDC36DE37

#align4
loc_8c1AD304:
#data 0x420852F3
#data 0x1F234208
#data 0xB33564E2
#data 0x52F36440
#data 0x320C600C
#data 0x1F23B5A7
#data 0x63C064E2
#data 0x633C6440
#data 0x3430644C
#data 0x60438907
#data 0x883D0009
#data 0x60438903
#data 0x88540009
#data 0x8BE4

loc_8c1AD33A:
#data 0x52F3
#data 0x2239E3FE
#data 0x60E21F23
#data 0x600C6000
#data 0x8953883D
#data 0x600060E2
#data 0x8854600C
#data 0xB5888B12
#data 0x64E20009
#data 0x6440B30E
#data 0x6D03B583
#data 0x623063E2
#data 0x323063C0
#data 0x64E28906
#data 0x4D084D08
#data 0x6440B302
#data 0x3D0CB577

#align4
loc_8c1AD37C:
#data 0x63DC922A
#data 0x8F013320
#data 0x7DFFEE01

#align4
loc_8c1AD388:
#data 0x62E369DC
#data 0x3297D815
#data 0x8D40DC15
#data 0x6BF3

loc_8c1AD396:
#data 0x54F3
#data 0xD314E510
#data 0xE60867B3
#data 0x6442430B
#data 0x64834C0B
#data 0x64B34C0B
#data 0x64EC52F3
#data 0x72044415
#data 0x1F238F08
#data 0x6143D20D
#data 0xE008420B
#data 0x8B012008
#data 0x00094A0B

#align4
loc_8c1AD3C8:
#data 0x62EC7E01
#data 0x8BE23297
#data 0x0009A021
#data 0x000000FF

#align4
loc_8c1AD3D8:
#data loc_8c1AEE08
#data 0x8C34B036

#align4
loc_8c1AD3E0:
#data bank1c.loc_8c1c9D88

loc_8c1AD3E4:
#data bank1c.loc_8c1c6E8C

loc_8c1AD3E8:
#data loc_8c1AECDC

loc_8c1AD3EC:
#data loc_8c1AF1A4

loc_8c1AD3F0:
#data bank12.loc_8c1292D4

loc_8c1AD3F4:
#data 0xED00B539

#align4
loc_8c1AD3F8:
#data 0x4D0864E2
#data 0xB2BD4D08
#data 0x600C6440
#data 0x3D0CB531
#data 0x623063E2
#data 0x323063C0
#data 0x53F38BF2
#data 0x23D2

loc_8c1AD416:
#data 0x4A0B
#data 0x7F100009
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1AD42E:
mov.l r14,@-r15
extu.b r4,r5
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
sts.l pr,@-r15
mov.l @(loc_8c1AD4F0,pc),r14 ; r14 set to 0x8C1AECDC
mov.l @(loc_8c1AD4EC,pc),r13 ; r13 set to 0x8C1AEE08
add 0xDC,r15
mov.l @(loc_8c1AD4E8,pc),r11 ; r11 set to 0x8C1AF1A4
mov r15,r12
mov r5,r0
nop
cmp/eq 0x09,r0
bf/s loc_8c1AD4C8
add 0x18,r12
mov.l @(loc_8c1AD4F4,pc),r10 ; r10 set to 0x8C1C9D88
mov.l @r10,r4
mov.b @r4,r0
extu.b r0,r0
cmp/eq 0x59,r0
bf loc_8c1AD466
bsr loc_8c1AD2DC
nop
bra loc_8c1AD96A
nop

loc_8c1AD466:
cmp/eq 0x58,r0
bt loc_8c1AD46E
bra loc_8c1AD964
nop

loc_8c1AD46E:
jsr @r13
nop
bsr loc_8c1ADE6A
nop
mov.l @r10,r4
bsr loc_8c1AD97C
mov.b @r4,r4
extu.b r0,r9
shll8 r9
shll2 r9
bsr loc_8c1ADE6A
shll2 r9
mov.l @r10,r4
bsr loc_8c1AD97C
mov.b @r4,r4
extu.b r0,r0
shll8 r0
bsr loc_8c1ADE6A
add r0,r9
mov.l @r10,r4
bsr loc_8c1AD97C
mov.b @r4,r4
extu.b r0,r0
shll2 r0
shll2 r0
bsr loc_8c1ADE6A
add r0,r9
mov.l @r10,r4
bsr loc_8c1AD97C
mov.b @r4,r4
extu.b r0,r0
bsr loc_8c1ADE6A
add r0,r9
mov.l @(loc_8c1AD4F8,pc),r2 ; r2 set to 0x8C19F32E
jsr @r2
mov r9,r4
mov 0x08,r6 ; r6 set to 0x08
mov r0,r4
mov 0x10,r5 ; r5 set to 0x10
jsr @r11
mov r12,r7
jsr @r14
mov r12,r4
bra loc_8c1AD96A
nop

loc_8c1AD4C8:
mov.l @(loc_8c1AD4FC,pc),r4 ; r4 set to 0x8C34B28E
mov.b @r4,r0
extu.b r0,r0
tst 0x08,r0
bf loc_8c1AD4D6
bra loc_8c1AD86C
nop

loc_8c1AD4D6:
tst r5,r5
bf loc_8c1AD504
jsr @r13
nop
mov.l @(loc_8c1AD500,pc),r3 ; r3 set to 0x8C19CB38
jsr @r3
nop
bra loc_8c1AD950
extu.w r0,r4

#align4
loc_8c1AD4E8:
#data loc_8c1AF1A4

loc_8c1AD4EC:
#data loc_8c1AEE08

loc_8c1AD4F0:
#data loc_8c1AECDC

loc_8c1AD4F4:
#data bank1c.loc_8c1c9D88

loc_8c1AD4F8:
#data bank19.loc_8c19F32E

loc_8c1AD4FC:
#data 0x8C34B28E

#align4
loc_8c1AD500:
#data bank19.loc_8c19CB38


loc_8c1AD504:
mov.b @r4,r0
extu.b r0,r0
tst 0x08,r0
bf loc_8c1AD510
bra loc_8c1AD86C
nop

loc_8c1AD510:
mov r5,r0
nop
cmp/eq 0x01,r0
bt loc_8c1AD51C
bra loc_8c1AD86C
nop

loc_8c1AD51C:
jsr @r13
mov 0x00,r10 ; r10 set to 0x00
mov r15,r5
mov.l @(loc_8c1AD5DC,pc),r3 ; r3 set to 0x8C19C378
mov r15,r6
add 0x08,r5
add 0x04,r6
jsr @r3
mov r15,r4
mov.l @(loc_8c1AD5E0,pc),r4 ; r4 set to 0x8C1C6E90
jsr @r14
nop
mov.b @(0x04,r15),r0
mov.l @(loc_8c1AD5E4,pc),r3 ; r3 set to 0xFF7FFFFF
mov r0,r4 ; r4 ??? bc r0 is ???
mov.l @r15,r0
and r3,r0
cmp/eq 0x01,r0
bt/s loc_8c1AD57E
extu.b r4,r4
cmp/eq 0x02,r0
bt loc_8c1AD596
cmp/eq 0x04,r0
bt loc_8c1AD59C
cmp/eq 0x08,r0
bt loc_8c1AD5B4
cmp/eq 0x10,r0
bt loc_8c1AD604
cmp/eq 0x20,r0
bt loc_8c1AD61C
cmp/eq 0x40,r0
bt loc_8c1AD646
mov.w @(loc_8c1AD5D4,pc),r1 ; r1 set to 0x80
cmp/eq r1,r0
bf loc_8c1AD566
bra loc_8c1AD6A0
nop

loc_8c1AD566:
mov.w @(loc_8c1AD5D6,pc),r1 ; r1 set to 0x100
cmp/eq r1,r0
bf loc_8c1AD570
bra loc_8c1AD6A6
nop

loc_8c1AD570:
mov.w @(loc_8c1AD5D8,pc),r1 ; r1 set to 0x200
cmp/eq r1,r0
bf loc_8c1AD57A
bra loc_8c1AD6B0
nop

loc_8c1AD57A:
bra loc_8c1AD6FC
nop

loc_8c1AD57E:
mov r4,r0
nop
cmp/eq 0x02,r0
bf loc_8c1AD58C
mov.l @(loc_8c1AD5E8,pc),r4 ; r4 set to 0x8C1C6EA4
bra loc_8c1AD58E
nop

loc_8c1AD58C:
mov.l @(loc_8c1AD5EC,pc),r4 ; r4 set to 0x8C1C6EB0

loc_8c1AD58E:
jsr @r14
nop
bra loc_8c1AD702
nop

loc_8c1AD596:
mov.l @(loc_8c1AD5F0,pc),r4 ; r4 set to 0x8C1C6EBC
bra loc_8c1AD6FE
nop

loc_8c1AD59C:
mov.b @(0x08,r15),r0
extu.b r0,r0
cmp/eq 0x02,r0
bf loc_8c1AD5AA
mov.l @(loc_8c1AD5F4,pc),r4 ; r4 set to 0x8C1C6EC4
bra loc_8c1AD5AC
nop

loc_8c1AD5AA:
mov.l @(loc_8c1AD5F8,pc),r4 ; r4 set to 0x8C1C6ED4

loc_8c1AD5AC:
jsr @r14
nop
bra loc_8c1AD702
nop

loc_8c1AD5B4:
mov r4,r0
nop
cmp/eq 0x04,r0
bf loc_8c1AD5C2
mov.l @(loc_8c1AD5FC,pc),r4 ; r4 set to 0x8C1C6EE4
bra loc_8c1AD6FE
nop

loc_8c1AD5C2:
cmp/eq 0x03,r0
bt loc_8c1AD5CA
bra loc_8c1AD702
nop

loc_8c1AD5CA:
mov.l @(loc_8c1AD600,pc),r4 ; r4 set to 0x8C1C6EF0
jsr @r14
nop
bra loc_8c1AD702
nop

loc_8c1AD5D4:
#data 0x0080

loc_8c1AD5D6:
#data 0x0100

loc_8c1AD5D8:
#data 0x0200
#data 0x0000

#align4
loc_8c1AD5DC:
#data bank19.loc_8c19C378

loc_8c1AD5E0:
#data bank1c.loc_8c1c6E90

loc_8c1AD5E4:
#data 0xFF7FFFFF

#align4
loc_8c1AD5E8:
#data bank1c.loc_8c1c6EA4

loc_8c1AD5EC:
#data bank1c.loc_8c1c6EB0

loc_8c1AD5F0:
#data bank1c.loc_8c1c6EBC

loc_8c1AD5F4:
#data bank1c.loc_8c1c6EC4

loc_8c1AD5F8:
#data bank1c.loc_8c1c6ED4

loc_8c1AD5FC:
#data bank1c.loc_8c1c6EE4

loc_8c1AD600:
#data bank1c.loc_8c1c6EF0


loc_8c1AD604:
mov r4,r0
nop
cmp/eq 0x04,r0
bf loc_8c1AD612
mov.l @(loc_8c1AD6BC,pc),r4 ; r4 set to 0x8C1C6EF8
bra loc_8c1AD614
nop

loc_8c1AD612:
mov.l @(loc_8c1AD6C0,pc),r4 ; r4 set to 0x8C1C6F04

loc_8c1AD614:
jsr @r14
nop
bra loc_8c1AD702
nop

loc_8c1AD61C:
mov r4,r0
nop
cmp/eq 0x06,r0
bf loc_8c1AD62A
mov.l @(loc_8c1AD6C4,pc),r4 ; r4 set to 0x8C1C6F10
bra loc_8c1AD6FE
nop

loc_8c1AD62A:
cmp/eq 0x08,r0
bf loc_8c1AD63C
mov.l @r15,r1
mov.l @(loc_8c1AD6C8,pc),r2 ; r2 set to 0x800000
tst r2,r1
bt loc_8c1AD63C
mov.l @(loc_8c1AD6CC,pc),r4 ; r4 set to 0x8C1C6F1C
bra loc_8c1AD63E
nop

loc_8c1AD63C:
mov.l @(loc_8c1AD6D0,pc),r4 ; r4 set to 0x8C1C6F38

loc_8c1AD63E:
jsr @r14
nop
bra loc_8c1AD702
nop

loc_8c1AD646:
mov r4,r0
nop
cmp/eq 0x06,r0
bf loc_8c1AD654
mov.l @(loc_8c1AD6D4,pc),r4 ; r4 set to 0x8C1C6F4C
bra loc_8c1AD6FE
nop

loc_8c1AD654:
cmp/eq 0x07,r0
bf loc_8c1AD65E
mov.l @(loc_8c1AD6D8,pc),r4 ; r4 set to 0x8C1C6F58
bra loc_8c1AD6FE
nop

loc_8c1AD65E:
mov r4,r0
nop
cmp/eq 0x08,r0
bf loc_8c1AD66C
mov.l @(loc_8c1AD6DC,pc),r4 ; r4 set to 0x8C1C6F64
bra loc_8c1AD6FE
nop

loc_8c1AD66C:
cmp/eq 0x0B,r0
bf loc_8c1AD676
mov.l @(loc_8c1AD6E0,pc),r4 ; r4 set to 0x8C1C6F70
bra loc_8c1AD6FE
nop

loc_8c1AD676:
mov r4,r0
nop
cmp/eq 0x0C,r0
bf loc_8c1AD684
mov.l @(loc_8c1AD6E4,pc),r4 ; r4 set to 0x8C1C6F80
bra loc_8c1AD6FE
nop

loc_8c1AD684:
cmp/eq 0x0D,r0
bf loc_8c1AD68E
mov.l @(loc_8c1AD6E8,pc),r4 ; r4 set to 0x8C1C6F90
bra loc_8c1AD6FE
nop

loc_8c1AD68E:
mov r4,r0
nop
cmp/eq 0x0E,r0
bf loc_8c1AD702
mov.l @(loc_8c1AD6EC,pc),r4 ; r4 set to 0x8C1C6FA0
jsr @r14
nop
bra loc_8c1AD702
nop

loc_8c1AD6A0:
mov.l @(loc_8c1AD6F0,pc),r4 ; r4 set to 0x8C1C6FB0
bra loc_8c1AD6A8
nop

loc_8c1AD6A6:
mov.l @(loc_8c1AD6F4,pc),r4 ; r4 set to 0x8C1C6FB8

loc_8c1AD6A8:
jsr @r14
nop
bra loc_8c1AD6B6
nop

loc_8c1AD6B0:
mov.l @(loc_8c1AD6F8,pc),r4 ; r4 set to 0x8C1C6FC0
jsr @r14
nop

loc_8c1AD6B6:
bra loc_8c1AD702
mov 0x01,r10
#data 0x0000

#align4
loc_8c1AD6BC:
#data bank1c.loc_8c1c6EF8

loc_8c1AD6C0:
#data bank1c.loc_8c1c6F04

loc_8c1AD6C4:
#data bank1c.loc_8c1c6F10

loc_8c1AD6C8:
#data 0x00800000

#align4
loc_8c1AD6CC:
#data bank1c.loc_8c1c6F1C

loc_8c1AD6D0:
#data bank1c.loc_8c1c6F38

loc_8c1AD6D4:
#data bank1c.loc_8c1c6F4C

loc_8c1AD6D8:
#data bank1c.loc_8c1c6F58

loc_8c1AD6DC:
#data bank1c.loc_8c1c6F64

loc_8c1AD6E0:
#data bank1c.loc_8c1c6F70

loc_8c1AD6E4:
#data bank1c.loc_8c1c6F80

loc_8c1AD6E8:
#data bank1c.loc_8c1c6F90

loc_8c1AD6EC:
#data bank1c.loc_8c1c6FA0

loc_8c1AD6F0:
#data bank1c.loc_8c1c6FB0

loc_8c1AD6F4:
#data bank1c.loc_8c1c6FB8

loc_8c1AD6F8:
#data bank1c.loc_8c1c6FC0

loc_8c1AD6FC:
#data 0xD44A

loc_8c1AD6FE:
#data 0x4E0B
#data 0x0009

loc_8c1AD702:
#data 0x60AE
#data 0x8B118801
#data 0x84F4D348
#data 0x6403430B
#data 0x420BD247
#data 0x2F066403
#data 0x2F36D346
#data 0x64F3D246
#data 0x7414420B
#data 0x64F37F08
#data 0x740C4E0B

#align4
loc_8c1AD72C:
#data 0x00094D0B
#data 0x4E0BD442
#data 0xD3420009
#data 0x0009430B
#data 0xE50AE603
#data 0x4B0B640D
#data 0x4E0B67C3
#data 0x4D0B64C3
#data 0x60F20009
#data 0x8B018802
#data 0x0009A102

#align4
loc_8c1AD758:
#data 0x880460F2
#data 0xA0FD8B01
#data 0x0009

loc_8c1AD762:
#data 0x60F2
#data 0x8B018801
#data 0x0009A0F8

#align4
loc_8c1AD76C:
#data 0x4E0BD435
#data 0xD3350009
#data 0x0009430B
#data 0xE510E604
#data 0x4B0B640D
#data 0x4E0B67C3
#data 0x4D0B64C3
#data 0x60F20009
#data 0x89108820
#data 0x884060F2
#data 0x63F2890D
#data 0x33209243
#data 0x61F28909
#data 0x31309340
#data 0x60F28905
#data 0x3010913D
#data 0xA0D58901
#data 0x0009

loc_8c1AD7B2:
#data 0xD426
#data 0x00094E0B
#data 0x420BD225
#data 0xE6040009
#data 0x640DE50A
#data 0x67C34B0B
#data 0x64C34E0B
#data 0x4E0BD421
#data 0x4D0B0009
#data 0xD4200009
#data 0x00094E0B
#data 0x430BD31F
#data 0xE6030009
#data 0x640DE50A
#data 0x67C34B0B
#data 0x64C34E0B
#data 0x4E0BD41B
#data 0x4D0B0009
#data 0xD41A0009
#data 0x00094E0B
#data 0x420BD219
#data 0xE6030009
#data 0x640DE50A
#data 0x67C34B0B
#data 0x64C34E0B
#data 0x4E0BD412
#data 0x4D0B0009
#data 0xA09D0009
#data 0x00800009
#data 0x02000100

#align4
loc_8c1AD828:
#data bank1c.loc_8c1c6FC8

loc_8c1AD82C:
#data bank1b.loc_8c1bF488

loc_8c1AD830:
#data loc_8c1AEE58

loc_8c1AD834:
#data bank1c.loc_8c1c6FDC

loc_8c1AD838:
#data bank12.loc_8c129740

loc_8c1AD83C:
#data bank1c.loc_8c1c6FE0

loc_8c1AD840:
#data bank19.loc_8c19CB38

loc_8c1AD844:
#data bank1c.loc_8c1c6FF4

loc_8c1AD848:
#data bank19.loc_8c19CE58

loc_8c1AD84C:
#data bank1c.loc_8c1c7018

loc_8c1AD850:
#data bank19.loc_8c19CFC4

loc_8c1AD854:
#data bank1c.loc_8c1c702C

loc_8c1AD858:
#data bank1c.loc_8c1c7030

loc_8c1AD85C:
#data bank19.loc_8c19D096

loc_8c1AD860:
#data bank1c.loc_8c1c7044

loc_8c1AD864:
#data bank1c.loc_8c1c704C

loc_8c1AD868:
#data bank19.loc_8c19D0A4

loc_8c1AD86C:
#data 0x00096053
#data 0x8B778802
#data 0x6230D37C
#data 0x8B732228
#data 0x00094D0B
#data 0x4E0BD47A
#data 0xD07A0009
#data 0x600C6000
#data 0x89048801
#data 0x6000D078
#data 0xC808600C
#data 0x8902

loc_8c1AD89A:
#data 0xD477
#data 0x0009A001

loc_8c1AD8A0:
#data 0xD476

loc_8c1AD8A2:
#data 0x4E0B
#data 0x4D0B0009
#data 0xD4750009
#data 0x00094E0B
#data 0xDA74D375
#data 0x64304A0B
#data 0x00094D0B
#data 0x4E0BD473
#data 0xD2730009
#data 0x64204A0B
#data 0x00094D0B
#data 0x4E0BD471
#data 0xD3710009
#data 0x64304A0B
#data 0x00094D0B
#data 0x4E0BD46F
#data 0xD26F0009
#data 0x64204A0B
#data 0x00094D0B
#data 0x4E0BD46D
#data 0xD36D0009
#data 0x600C6030
#data 0x8904C880
#data 0x4E0BD46B
#data 0xA00B0009
#data 0x0009

loc_8c1AD906:
#data 0xD26A
#data 0x600C6020
#data 0x8902C820
#data 0xA001D468
#data 0x0009

loc_8c1AD916:
#data 0xD468

#align4
loc_8c1AD918:
#data 0x00094E0B

#align4
loc_8c1AD91C:
#data 0x00094D0B
#data 0x4E0BD466
#data 0xD3620009
#data 0x600C6030
#data 0x8902C880
#data 0xA001D463
#data 0x0009

loc_8c1AD936:
#data 0xD460

#align4
loc_8c1AD938:
#data 0x00094E0B
#data 0x00094D0B
#data 0x4E0BD460
#data 0xD2600009
#data 0x0009420B
#data 0x4419640D

#align4
loc_8c1AD950:
#data 0xE50AE603
#data 0x67C34B0B
#data 0x64C34E0B

#align4
loc_8c1AD95C:
#data 0x00094D0B
#data 0x0009A003

#align4
loc_8c1AD964:
#data 0xE202D359
#data 0x2320


loc_8c1AD96A:
add 0x24,r15
lds.l @r15+,pr
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1AD97C:
mov 0x30,r3 ; r3 set to 0x30
extu.b r4,r0
cmp/ge r3,r0
bf loc_8c1AD98E
mov 0x39,r1 ; r1 set to 0x39
cmp/gt r1,r0
bt loc_8c1AD98E
bra loc_8c1AD9A4
add 0xD0,r4

loc_8c1AD98E:
mov 0x41,r2 ; r2 set to 0x41
cmp/ge r2,r0
bf loc_8c1AD99E
mov 0x46,r1 ; r1 set to 0x46
cmp/gt r1,r0
bt loc_8c1AD99E
bra loc_8c1AD9A4
add 0xC9,r4

loc_8c1AD99E:
mov.l @(loc_8c1ADACC,pc),r2 ; r2 set to 0x8C34AFA8
mov 0x02,r3 ; r3 set to 0x02
mov.b r3,@r2 ; r2 ??

loc_8c1AD9A4:
rts
mov r4,r0
;-------------------------------------------------------------------------------

loc_8c1AD9A8:
sts.l pr,@-r15
add 0xFC,r15
bsr loc_8c1ADE6A
nop
mov.l @(loc_8c1ADAD0,pc),r3 ; r3 set to 0x8C1C9D88
mov.l @r3,r2
mov.b @r2,r1
bsr loc_8c1ADE6A
mov.b r1,@r15
bsr loc_8c1ADDEC
nop
mov r0,r4
mov.b @r15,r0
mov.l @(loc_8c1ADACC,pc),r6 ; r6 set to 0x8C34AFA8
extu.b r0,r0
cmp/eq 0x4E,r0
bf/s loc_8c1AD9E0
mov 0x02,r5 ; r5 set to 0x02
mov.l @(loc_8c1ADA74,pc),r0 ; r0 set to 0x8C34B28E
mov.b @r0,r0 ; r0 ??
extu.b r0,r0
tst 0x08,r0
bf loc_8c1AD9DC
add 0x04,r15
bra loc_8c1AD9EA
lds.l @r15+,pr

loc_8c1AD9DC:
bra loc_8c1AD9E2
mov.b r5,@r6

loc_8c1AD9E0:
mov.b r5,@r6

loc_8c1AD9E2:
add 0x04,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c1AD9EA:
mov.l r14,@-r15
extu.b r4,r14
mov.l @(loc_8c1ADAD4,pc),r5 ; r5 set to 0x8C34AF50
mov 0x08,r2 ; r2 set to 0x08
cmp/ge r2,r14
mov r5,r3 ; r3 set to 0x8C34AF50
add 0x1B,r3 ; r3 set to 0x8C34AF6B
mov.b @r3,r0
and 0xFC,r0
mov.b r0,@r3 ; r3 ??? bc r0 is ???
bt loc_8c1ADA28
tst r14,r14
mov r5,r4 ; r4 set to 0x8C34AF50
bf/s loc_8c1ADA0E
add 0x24,r4 ; r4 set to 0x8C34AF74
mov 0x22,r3 ; r3 set to 0x22
bra loc_8c1ADA3E
mov.b r3,@r4

loc_8c1ADA0E:
mov r14,r0
nop
cmp/eq 0x01,r0
bf loc_8c1ADA1C
mov 0x11,r1 ; r1 set to 0x11
bra loc_8c1ADA3E
mov.b r1,@r4

#align4
loc_8c1ADA1C:
#data 0x89038802
#data 0x000960E3
#data 0x8B038803


loc_8c1ADA28:
mov.l @(loc_8c1ADACC,pc),r3 ; r3 set to 0x8C34AFA8
mov 0x02,r2 ; r2 set to 0x02
bra loc_8c1ADA3E
mov.b r2,@r3

#align4
loc_8c1ADA30:
#data 0x430863E3
#data 0x40004308
#data 0x303C4300
#data 0x2400


loc_8c1ADA3E:
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1ADA42:
sts.l pr,@-r15
add 0xFC,r15
bsr loc_8c1ADE6A
nop
mov.l @(loc_8c1ADAD0,pc),r3 ; r3 set to 0x8C1C9D88
mov.l @r3,r2
mov.b @r2,r1
bsr loc_8c1ADE6A
mov.b r1,@r15
mov.b @r15,r0
add 0x04,r15
lds.l @r15+,pr
mov.l @(loc_8c1ADACC,pc),r2 ; r2 set to 0x8C34AFA8
mov 0x02,r3 ; r3 set to 0x02
extu.b r0,r0
mov.b r3,@r2 ; r2 ??
rts
nop
;-------------------------------------------------------------------------------
#data 0x0000
#data 0x8C34B0F8

#align4
loc_8c1ADA6C:
#data bank1c.loc_8c1c7060
#data 0x8C34AF7D

#align4
loc_8c1ADA74:
#data 0x8C34B28E

#align4
loc_8c1ADA78:
#data bank1c.loc_8c1c7080

loc_8c1ADA7C:
#data bank1c.loc_8c1c7090

loc_8c1ADA80:
#data bank1c.loc_8c1c70A0

loc_8c1ADA84:
#data loc_8c1AEE2C
#data 0x8C34B0FB

#align4
loc_8c1ADA8C:
#data bank1c.loc_8c1c70C0
#data 0x8C34B0F9

#align4
loc_8c1ADA94:
#data bank1c.loc_8c1c70E0
#data 0x8C34B0FC

#align4
loc_8c1ADA9C:
#data bank1c.loc_8c1c7100
#data 0x8C34B0FA

#align4
loc_8c1ADAA4:
#data bank1c.loc_8c1c7120
#data 0x8C34B2E1

#align4
loc_8c1ADAAC:
#data bank1c.loc_8c1c7140
#data 0x8C34B2E2

#align4
loc_8c1ADAB4:
#data bank1c.loc_8c1c7148

loc_8c1ADAB8:
#data bank1c.loc_8c1c714C

loc_8c1ADABC:
#data bank1c.loc_8c1c7154

loc_8c1ADAC0:
#data bank1c.loc_8c1c7174

loc_8c1ADAC4:
#data bank1c.loc_8c1c717C

loc_8c1ADAC8:
#data bank19.loc_8c19CE58

loc_8c1ADACC:
#data 0x8C34AFA8

#align4
loc_8c1ADAD0:
#data bank1c.loc_8c1c9D88

loc_8c1ADAD4:
#data 0x8C34AF50

#align4
loc_8c1ADAD8:
#data 0x4F222FE6
#data 0xB1C47FFC
#data 0xD1590009
#data 0x63006012
#data 0x2F30B1BF
#data 0x6EEC6EF0
#data 0x000960E3
#data 0x8901884B
#data 0x0009B178

#align4
loc_8c1ADAFC:
#data 0x000960E3
#data 0xD2527F04
#data 0xE3024F26
#data 0x000B2230
#data 0xD2516EF6
#data 0xD14F644E
#data 0x63202448
#data 0xD34F2130
#data 0x6030D54B
#data 0x8D03C9F8
#data 0xE0012300
#data 0x2500A002
#data 0x2520E202
#data 0x0009000B
;-------------------------------------------------------------------------------

#align4
loc_8c1ADB34:
#data 0x4F222FE6
#data 0xB1967FFC
#data 0xD3420009
#data 0x62106132
#data 0x2F20B191
#data 0x6EEC6EF0
#data 0x000960E3
#data 0x89018844
#data 0x0009B14A

#align4
loc_8c1ADB58:
#data 0x000960E3
#data 0xD23B7F04
#data 0xE3024F26
#data 0x000B2230
#data 0x000B6EF6
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1ADB6E:
sts.l pr,@-r15
add 0xFC,r15
bsr loc_8c1ADE6A
nop
mov.l @(loc_8c1ADC48,pc),r1 ; r1 set to 0x8C1C9D88
mov.l @r1,r0
mov.b @r0,r3
bsr loc_8c1ADE6A
mov.b r3,@r15
bsr loc_8c1ADDEC
nop
mov.b @r15,r0
add 0x04,r15
lds.l @r15+,pr
mov.l @(loc_8c1ADC4C,pc),r2 ; r2 set to 0x8C34AFA8
mov 0x02,r3 ; r3 set to 0x02
extu.b r0,r0
mov.b r3,@r2 ; r2 ??
rts
nop
;-------------------------------------------------------------------------------

loc_8c1ADB96:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
add 0xF0,r15
bsr loc_8c1ADE6A
nop
mov.l @(loc_8c1ADC48,pc),r12 ; r12 set to 0x8C1C9D88
mov.l @r12,r3
mov.b @r3,r2
bsr loc_8c1ADE6A
mov.b r2,@r15
bsr loc_8c1ADDEC
nop
mov r0,r11
mov.b @r15,r0
extu.b r0,r0
cmp/eq 0x43,r0
bt loc_8c1ADBC8
bra loc_8c1ADCD0
nop

loc_8c1ADBC8:
mov.l @r12,r4
mov r15,r13
mov.l @(loc_8c1ADC64,pc),r14 ; r14 set to 0x8C1AECDC
mov.b @r4,r0
mov.l @(loc_8c1ADC5C,pc),r9 ; r9 set to 0x8C34AF50
extu.b r0,r0
mov.l @(loc_8c1ADC60,pc),r10 ; r10 set to 0x8C1AF1A4
cmp/eq 0x3F,r0
bf/s loc_8c1ADBFA
add 0x04,r13
bsr loc_8c1ADE6A
nop
mov.l @(loc_8c1ADC68,pc),r3 ; r3 set to 0x8C1AEE08
jsr @r3
nop
mov r9,r4 ; r4 set to 0x8C34AF50
add 0x38,r4 ; r4 set to 0x8C34AF88
mov.b @r4,r4 ; r4 ??
mov r13,r7
mov 0x01,r6 ; r6 set to 0x01
mov 0x0A,r5 ; r5 set to 0x0A
jsr @r10
extu.b r4,r4
bra loc_8c1ADC98
mov r13,r4

loc_8c1ADBFA:
mov.b @r4,r0
mov.l @(loc_8c1ADC6C,pc),r8 ; r8 set to 0x8C1B04EE
extu.b r0,r0
cmp/eq 0x3D,r0
bf loc_8c1ADCA6
mov.l @r12,r2
add 0x01,r2
mov.l r2,@r12
mov r2,r0
nop
mov.b @r0,r0
extu.b r0,r0
cmp/eq 0x3F,r0
bf loc_8c1ADCC8
bsr loc_8c1ADE6A
nop
mov.l @(loc_8c1ADC70,pc),r3 ; r3 set to 0x8C1AFE8A
jsr @r3
nop
mov.l @(loc_8c1ADC68,pc),r2 ; r2 set to 0x8C1AEE08
jsr @r2
nop
mov.l @(loc_8c1ADC74,pc),r4 ; r4 set to 0x8C1C71C8
jsr @r14
nop
mov 0x00,r11 ; r11 set to 0x00
mov 0x01,r9 ; r9 set to 0x01
bra loc_8c1ADC8E
mov r11,r12

loc_8c1ADC34:
jsr @r8
mov r12,r4
exts.b r0,r0
tst r0,r0
bt loc_8c1ADC8C
exts.b r9,r3
tst r3,r3
bt loc_8c1ADC78
bra loc_8c1ADC7E
mov r11,r9

#align4
loc_8c1ADC48:
#data bank1c.loc_8c1c9D88

loc_8c1ADC4C:
#data 0x8C34AFA8
#data 0x8C34AFB5
#data 0x8C34B036
#data 0x8C34B03D

#align4
loc_8c1ADC5C:
#data 0x8C34AF50

#align4
loc_8c1ADC60:
#data loc_8c1AF1A4

loc_8c1ADC64:
#data loc_8c1AECDC

loc_8c1ADC68:
#data loc_8c1AEE08

loc_8c1ADC6C:
#data bank1b.loc_8c1b04EE

loc_8c1ADC70:
#data loc_8c1AFE8A

loc_8c1ADC74:
#data bank1c.loc_8c1c71C8

loc_8c1ADC78:
#data 0x4E0BD43A
#data 0x0009

loc_8c1ADC7E:
#data 0xE50A
#data 0xE60167D3
#data 0x64CD4A0B
#data 0x64D34E0B


loc_8c1ADC8C:
add 0x01,r12

loc_8c1ADC8E:
mov.w @(loc_8c1ADD62,pc),r2 ; r2 set to 0xFF, r2 set to 0xFF
extu.w r12,r3
cmp/ge r2,r3
bf loc_8c1ADC34
mov.l @(loc_8c1ADD68,pc),r4 ; r4 set to 0x8C1C71D0, r4 set to 0x8C1C71D0

loc_8c1ADC98:
jsr @r14
nop
mov.l @(loc_8c1ADD6C,pc),r2 ; r2 set to 0x8C1AEE08, r2 set to 0x8C1AEE08, r2 set to 0x8C1AEE08
jsr @r2
nop
bra loc_8c1ADCD6
nop

loc_8c1ADCA6:
jsr @r8
mov r11,r4
exts.b r0,r0
tst r0,r0
bt loc_8c1ADCC8
mov.l @(loc_8c1ADD70,pc),r3 ; r3 set to 0x8C1B8902
jsr @r3
mov r11,r4
mov.l @(loc_8c1ADD74,pc),r2 ; r2 set to 0x8C1B04D0
jsr @r2
mov r11,r4
mov.l @(loc_8c1ADD78,pc),r3 ; r3 set to 0x8C1B05D8
jsr @r3
mov r9,r4
add 0x38,r9
bra loc_8c1ADCD6
mov.b r11,@r9

loc_8c1ADCC8:
mov.l @(loc_8c1ADD7C,pc),r2 ; r2 set to 0x8C34AFA8
mov 0x02,r3 ; r3 set to 0x02
bra loc_8c1ADCD6
mov.b r3,@r2

#align4
loc_8c1ADCD0:
#data 0xE002D12A
#data 0x2100


loc_8c1ADCD6:
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

loc_8c1ADCEA:
mov.l @(loc_8c1ADD80,pc),r4 ; r4 set to 0x8C1C9D88
mov 0x02,r2 ; r2 set to 0x02
mov.l @r4,r3
add 0x01,r3
mov.l r3,@r4 ; r4 ??? bc r3 is ???
mov.l @(loc_8c1ADD7C,pc),r1 ; r1 set to 0x8C34AFA8
rts
mov.b r2,@r1
;-------------------------------------------------------------------------------

loc_8c1ADCFA:
sts.l pr,@-r15
mov.l @(loc_8c1ADD84,pc),r3 ; r3 set to 0x8C1B4C72
mov.l @(loc_8c1ADD80,pc),r4 ; r4 set to 0x8C1C9D88
jsr @r3
nop
mov r0,r4 ; r4 ??? bc r0 is ???
bra loc_8c1ADD0A
lds.l @r15+,pr

loc_8c1ADD0A:
mov.l @(loc_8c1ADD7C,pc),r6 ; r6 set to 0x8C34AFA8
extu.b r4,r5
mov r5,r0
nop
cmp/eq 0x02,r0
bf loc_8c1ADD28
mov.l @(loc_8c1ADD80,pc),r3 ; r3 set to 0x8C1C9D88
mov.l @(loc_8c1ADD88,pc),r0 ; r0 set to 0x8C34B036
mov.l @r3,r2
mov.b @r2,r1
mov.b @r0,r2
cmp/eq r2,r1
bf loc_8c1ADD28
bra loc_8c1ADD3A
mov 0x04,r3

loc_8c1ADD28:
mov r5,r0
nop
cmp/eq 0x05,r0
bf loc_8c1ADD34
bra loc_8c1ADD48
mov 0x05,r2

loc_8c1ADD34:
cmp/eq 0x03,r0
bf loc_8c1ADD3E
mov 0x02,r3 ; r3 set to 0x02

loc_8c1ADD3A:
bra loc_8c1ADD5E
mov.b r3,@r6

loc_8c1ADD3E:
mov r5,r0
nop
cmp/eq 0x04,r0
bf loc_8c1ADD4C
mov 0x06,r2 ; r2 set to 0x06

loc_8c1ADD48:
bra loc_8c1ADD5E
mov.b r2,@r6

#align4
loc_8c1ADD4C:
#data 0x6042D40C
#data 0x600C6000
#data 0x8B02883B
#data 0x72016242
#data 0x2422


loc_8c1ADD5E:
rts
nop
;-------------------------------------------------------------------------------

loc_8c1ADD62:
#data 0x00FF

#align4
loc_8c1ADD64:
#data bank1c.loc_8c1c71CC

loc_8c1ADD68:
#data bank1c.loc_8c1c71D0

loc_8c1ADD6C:
#data loc_8c1AEE08

loc_8c1ADD70:
#data bank1b.loc_8c1b8902

loc_8c1ADD74:
#data bank1b.loc_8c1b04D0

loc_8c1ADD78:
#data bank1b.loc_8c1b05D8

loc_8c1ADD7C:
#data 0x8C34AFA8

#align4
loc_8c1ADD80:
#data bank1c.loc_8c1c9D88

loc_8c1ADD84:
#data bank1b.loc_8c1b4C72

loc_8c1ADD88:
#data 0x8C34B036


loc_8c1ADD8C:
mov.l @(loc_8c1ADE88,pc),r2 ; r2 set to 0x8C34B036
mov.l @(loc_8c1ADE84,pc),r3 ; r3 set to 0x8C1C9D88
sts.l pr,@-r15
mov.b @r2,r5
mov.l @r3,r4
extu.b r5,r0
cmp/eq 0x20,r0
add 0xFC,r15
add 0x01,r4
bt/s loc_8c1ADDB0
mov r0,r5
bra loc_8c1ADDA8
nop

loc_8c1ADDA6:
#data 0x7401

#align4
loc_8c1ADDA8:
#data 0x600C6040
#data 0x89FA8820


loc_8c1ADDB0:
mov.b @r4,r2
extu.b r2,r2
cmp/eq r5,r2
bf loc_8c1ADDC4
mov.l @(loc_8c1ADE8C,pc),r2 ; r2 set to 0x8C34AFA9
add 0x04,r15
mov.l @(loc_8c1ADE90,pc),r3 ; r3 set to 0x8C1ABE0C
mov.b @r2,r4
jmp @r3
lds.l @r15+,pr

#align4
loc_8c1ADDC4:
#data 0x0009B051
#data 0x6312D12E
#data 0xB04C6230
#data 0xB00B2F20
#data 0x60F00009
#data 0x882B600C
#data 0x8BFF

loc_8c1ADDDE:
#data 0x7F04
#data 0x4F26D22C
#data 0x2230E302
#data 0x0009000B
;-------------------------------------------------------------------------------

loc_8c1ADDEC:
mov.l r14,@-r15
mov.l r13,@-r15
mov 0x00,r13 ; r13 set to 0x00
mov.l r12,@-r15
mov.l r11,@-r15
sts.l pr,@-r15
mov.w @(loc_8c1ADE80,pc),r11 ; r11 set to 0xD0
mov.l @(loc_8c1ADE84,pc),r14 ; r14 set to 0x8C1C9D88
bra loc_8c1ADE16
mov 0x30,r12

#align4
loc_8c1ADE00:
#data 0x61E262D3
#data 0x63D34208
#data 0x6310323C
#data 0x323C4200
#data 0xB02A6D23
#data 0x3DBC

loc_8c1ADE16:
#data 0x64E2
#data 0x644C6440
#data 0x8B0234C3
#data 0x3427E239
#data 0x8BEC

loc_8c1ADE26:
#data 0x60D3
#data 0x4F260009
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1ADE36:
mov.l @(loc_8c1ADE84,pc),r4 ; r4 set to 0x8C1C9D88
bra loc_8c1ADE42
nop

#align4
loc_8c1ADE3C:
#data 0x72016242
#data 0x2422

loc_8c1ADE42:
#data 0x6542
#data 0x655C6550
#data 0x00096053
#data 0x8905882C
#data 0x3527E220
#data 0xE17E8B02
#data 0x8B043517

#align4
loc_8c1ADE5C:
#data 0x6230D30A
#data 0x3520622C
#data 0x8BEA

loc_8c1ADE66:
#data 0x000B
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1ADE6A:
mov.l @(loc_8c1ADE84,pc),r4 ; r4 set to 0x8C1C9D88
mov.l @r4,r3
add 0x01,r3
mov.l r3,@r4 ; r4 ??? bc r3 is ???
mov.l @(loc_8c1ADE88,pc),r2 ; r2 set to 0x8C34B036
mov.b @r2,r0
extu.b r0,r0
cmp/eq 0x20,r0
bt loc_8c1ADEA8
bra loc_8c1ADE9E
nop

loc_8c1ADE80:
#data 0x00D0
#data 0x0000

#align4
loc_8c1ADE84:
#data bank1c.loc_8c1c9D88

loc_8c1ADE88:
#data 0x8C34B036

#align4
loc_8c1ADE8C:
#data 0x8C34AFA9

#align4
loc_8c1ADE90:
#data loc_8c1ABE0C
#data 0x8C34AFA8

#align4
loc_8c1ADE98:
#data 0x73016342
#data 0x2432

loc_8c1ADE9E:
#data 0x6042
#data 0x600C6000
#data 0x89F78820


loc_8c1ADEA8:
rts
nop
;-------------------------------------------------------------------------------
#data 0x654CE330
#data 0x8B023533
#data 0x3527E239
#data 0xE3418B0F
#data 0x8B023533
#data 0x3527E244
#data 0x60538B09
#data 0x882A0009
#data 0x60538905
#data 0x88230009
#data 0x000B8901
#data 0xE001E000
#data 0x0009000B
;-------------------------------------------------------------------------------

loc_8c1ADEE0:
sts.l pr,@-r15
mov.l @(loc_8c1ADF6C,pc),r3 ; r3 set to 0x8C1C9D88
bra loc_8c1ADEEA
mov.l @r3,r4

loc_8c1ADEE8:
add 0x01,r4

loc_8c1ADEEA:
mov.b @r4,r0
extu.b r0,r0
cmp/eq 0x20,r0
bt loc_8c1ADEE8
mov.l @(loc_8c1ADF70,pc),r3 ; r3 set to 0x8C34AF53, r3 set to 0x8C34AF53
mov.b @r4,r2
mov.b @r3,r1
cmp/eq r1,r2
bf loc_8c1ADF1E
mov.l @(loc_8c1ADF74,pc),r2 ; r2 set to 0x8C34B1F8, r2 set to 0x8C34B1F8
mov.w @(loc_8c1ADF6A,pc),r1 ; r1 set to 0xB2, r1 set to 0xB2
mov.l @r2,r0
mov.w @(r0,r1),r0
extu.w r0,r0
tst 0x20,r0
bt loc_8c1ADF1E
mov.l @(loc_8c1ADF78,pc),r2 ; r2 set to 0x8C19FE3C, r2 set to 0x8C19FE3C
jsr @r2
nop
exts.b r0,r0
tst r0,r0
bf loc_8c1ADF48
mov.l @(loc_8c1ADF7C,pc),r3 ; r3 set to 0x8C34AFA8, r3 set to 0x8C34AFA8
mov 0x02,r2 ; r2 set to 0x02, r2 set to 0x02
bra loc_8c1ADF42
mov.b r2,@r3

loc_8c1ADF1E:
mov.l @(loc_8c1ADF80,pc),r0 ; r0 set to 0x8C34B291
mov.b @r0,r0 ; r0 ??
extu.b r0,r0
tst 0x80,r0
bf loc_8c1ADF48
mov.l @(loc_8c1ADF78,pc),r2 ; r2 set to 0x8C19FE3C
jsr @r2
nop
exts.b r0,r0
tst r0,r0
bt loc_8c1ADF48
mov.l @(loc_8c1ADF84,pc),r2 ; r2 set to 0x8C1AED24
mov 0x00,r5 ; r5 set to 0x00
jsr @r2
mov 0x63,r4 ; r4 set to 0x63
mov.l @(loc_8c1ADF7C,pc),r2 ; r2 set to 0x8C34AFA8
mov 0x04,r3 ; r3 set to 0x04
mov.b r3,@r2 ; r2 ??

loc_8c1ADF42:
lds.l @r15+,pr
rts
mov 0x00,r0
;-------------------------------------------------------------------------------

loc_8c1ADF48:
mov 0x01,r0 ; r0 set to 0x01
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c1ADF50:
mov.l @(loc_8c1ADF88,pc),r7 ; r7 set to 0x8C34B036
mov 0x00,r1 ; r1 set to 0x00
bra loc_8c1ADF8C
mov 0x46,r0

#align4
loc_8c1ADF58:
#data 0x63547101
#data 0x3207621C
#data 0x8F132430
#data 0x000B7401
#data 0xE000
;-------------------------------------------------------------------------------

loc_8c1ADF6A:
#data 0x00B2

#align4
loc_8c1ADF6C:
#data bank1c.loc_8c1c9D88

loc_8c1ADF70:
#data 0x8C34AF53

#align4
loc_8c1ADF74:
#data 0x8C34B1F8

#align4
loc_8c1ADF78:
#data bank19.loc_8c19FE3C

loc_8c1ADF7C:
#data 0x8C34AFA8

#align4
loc_8c1ADF80:
#data 0x8C34B291

#align4
loc_8c1ADF84:
#data loc_8c1AED24

loc_8c1ADF88:
#data 0x8C34B036

#align4
loc_8c1ADF8C:
#data 0x66506270
#data 0x666C622C
#data 0x89013620
#data 0x8BDD2668

#align4
loc_8c1ADF9C:
#data 0xE0016370
#data 0x000B2430
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1ADFA6:
mov.l r14,@-r15
mov 0x06,r3 ; r3 set to 0x06
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
mov.l @(loc_8c1AE158,pc),r12 ; r12 set to 0x8C34AFA8
sts.l pr,@-r15
mov.b r3,@r12 ; r12 ??
mov.l @(loc_8c1AE15C,pc),r13 ; r13 set to 0x8C34B288
mov r13,r4 ; r4 set to 0x8C34B288
mov.b @(0x01,r4),r0
extu.b r0,r0
tst 0x40,r0
bt/s loc_8c1ADFEA
mov 0x08,r10 ; r10 set to 0x08
mov.l @(loc_8c1AE164,pc),r3 ; r3 set to 0x8C1B3F0C
mov.l @(loc_8c1AE160,pc),r2 ; r2 set to 0x8C34AFA0
jsr @r3
mov.l @r2,r4 ; r4 ??
exts.b r0,r0
tst r0,r0
bf loc_8c1ADFDC
bra loc_8c1AE206
nop

loc_8c1ADFDC:
mov.l @(loc_8c1AE168,pc),r3 ; r3 set to 0x8C19F21E
jsr @r3
nop
mov.l @(loc_8c1AE16C,pc),r1 ; r1 set to 0x8C34B11C
mov.b r10,@r1 ; r1 ??? bc r10 is ???
bra loc_8c1AE206
nop

loc_8c1ADFEA:
mov.b @(0x05,r4),r0
extu.b r0,r0
tst 0x10,r0
bt/s loc_8c1AE01E
mov 0x01,r11 ; r11 set to 0x01
mov.l @(loc_8c1AE170,pc),r2 ; r2 set to 0x8C1A10A2
jsr @r2
mov 0x00,r4 ; r4 set to 0x00
exts.b r0,r0
tst r0,r0
bf loc_8c1AE012
mov.l @(loc_8c1AE164,pc),r3 ; r3 set to 0x8C1B3F0C
mov.l @(loc_8c1AE160,pc),r2 ; r2 set to 0x8C34AFA0
jsr @r3
mov.l @r2,r4 ; r4 ??
exts.b r0,r0
tst r0,r0
bf loc_8c1AE012
bra loc_8c1AE206
nop

loc_8c1AE012:
mov.l @(loc_8c1AE178,pc),r2 ; r2 set to 0x8C1AC212
mov.l @(loc_8c1AE174,pc),r3 ; r3 set to 0x8C34AF44
jsr @r2
mov.b @r3,r4
bra loc_8c1AE07C
nop

loc_8c1AE01E:
mov.b @(0x07,r4),r0
extu.b r0,r0
tst r11,r0
bf loc_8c1AE02A
bra loc_8c1AE206
nop

loc_8c1AE02A:
#data 0xDE54
#data 0x844BE802
#data 0x2088600C
#data 0xE9008D4B
#data 0x600C84D7
#data 0x891120A8
#data 0x600C84D4
#data 0x8B0DC810
#data 0x600C84DB
#data 0x8B09C810
#data 0x6000D04B
#data 0xC880600C
#data 0xD24A8B0A
#data 0x633C6320
#data 0x890523A8

#align4
loc_8c1AE064:
#data 0x420BD248
#data 0x600E0009
#data 0x8B072008

#align4
loc_8c1AE070:
#data 0xC9FD84DB
#data 0x84D580DB
#data 0x80D5C9FE


loc_8c1AE07C:
bra loc_8c1AE206
mov.b r11,@r12

#align4
loc_8c1AE080:
#data 0xD242D338
#data 0x6422430B
#data 0x2008600E
#data 0xA0BA8B01
#data 0x0009

loc_8c1AE092:
#data 0xD33F
#data 0x22286230
#data 0xA0B48901
#data 0x0009

loc_8c1AE09E:
#data 0x84DB
#data 0x80DBC9FD
#data 0x600C84D5
#data 0x8B1020B8
#data 0x6493A004

#align4
loc_8c1AE0B0:
#data 0x74FF64E2
#data 0x64402E42

#align4
loc_8c1AE0B8:
#data 0x6053654C
#data 0x88410009
#data 0x60538947
#data 0x88440009
#data 0xA0428BF2
#data 0x0009

loc_8c1AE0CE:
#data 0x64D3
#data 0x600C8445
#data 0x893120B8
#data 0x600C8445
#data 0x89112088
#data 0x420BD22C
#data 0x600E0009
#data 0x89012008
#data 0x0009A08B

#align4
loc_8c1AE0F0:
#data 0xD2294F26
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6422B

#align4
loc_8c1AE104:
#data 0x600C8445
#data 0x8909C804
#data 0xD2234F26
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6422B

#align4
loc_8c1AE120:
#data 0x600C8445
#data 0x896E20A8
#data 0xD21D4F26
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6422B

#align4
loc_8c1AE13C:
#data 0x73106343
#data 0x622C6230
#data 0x892D22B8
#data 0x73106343
#data 0xC9FE6030
#data 0x2300

loc_8c1AE152:
#data 0xA058
#data 0x00002C90

#align4
loc_8c1AE158:
#data 0x8C34AFA8

#align4
loc_8c1AE15C:
#data 0x8C34B288

#align4
loc_8c1AE160:
#data 0x8C34AFA0

#align4
loc_8c1AE164:
#data bank1b.loc_8c1b3F0C

loc_8c1AE168:
#data bank19.loc_8c19F21E

loc_8c1AE16C:
#data 0x8C34B11C

#align4
loc_8c1AE170:
#data loc_8c1A10A2

loc_8c1AE174:
#data 0x8C34AF44

#align4
loc_8c1AE178:
#data loc_8c1AC212

loc_8c1AE17C:
#data bank1c.loc_8c1c9D88
#data 0x8C34AF5E
#data 0x8C34AF6F

#align4
loc_8c1AE188:
#data bank19.loc_8c19FED2
#data 0x8C34B124
#data 0x8C34AF51

#align4
loc_8c1AE194:
#data bank1c.loc_8c1c02B6

loc_8c1AE198:
#data loc_8c1AB2EA

loc_8c1AE19C:
#data loc_8c1AB8A6

loc_8c1AE1A0:
#data loc_8c1AB39E

loc_8c1AE1A4:
#data 0xD22AD32B
#data 0x6422430B
#data 0x2008600E
#data 0xD1298929
#data 0x6311924B
#data 0x3327633D
#data 0xA0228B01
#data 0x2C80

loc_8c1AE1C2:
#data 0xD226
#data 0x84D72E22
#data 0x80D7C9F7
#data 0x843163E2
#data 0x8854600C
#data 0x64038D07
#data 0x00096043
#data 0x8902882F
#data 0xA010E304
#data 0x2C30

loc_8c1AE1E6:
#data 0x4F26
#data 0x720162E2
#data 0x73016323
#data 0x2C902E32
#data 0xD21A68F6
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x422B6DF6
#data 0x6EF6


loc_8c1AE206:
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

loc_8c1AE218:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l @(loc_8c1AE264,pc),r13 ; r13 set to 0x8C34AFA8
sts.l pr,@-r15
mov.b @r13,r0
mov.l @(loc_8c1AE268,pc),r14 ; r14 set to 0x8C1AED24
extu.b r0,r0
cmp/eq 0x01,r0
bt/s loc_8c1AE23E
mov 0x00,r11 ; r11 set to 0x00
cmp/eq 0x02,r0
bt loc_8c1AE248
cmp/eq 0x03,r0
bt loc_8c1AE26C
bra loc_8c1AE278
nop

loc_8c1AE23E:
mov 0x00,r5 ; r5 set to 0x00
jsr @r14
mov r5,r4 ; r4 set to 0x00
bra loc_8c1AE278
nop

loc_8c1AE248:
mov 0x00,r5 ; r5 set to 0x00
bra loc_8c1AE270
mov 0x04,r4
#data 0x0080
#data 0x8C34B138

#align4
loc_8c1AE254:
#data bank1b.loc_8c1b3F0C
#data 0x8C34B034
#data 0x8C34AFB3

#align4
loc_8c1AE260:
#data loc_8c1AFE8A

loc_8c1AE264:
#data 0x8C34AFA8

#align4
loc_8c1AE268:
#data loc_8c1AED24

loc_8c1AE26C:
#data 0xE500E403

#align4
loc_8c1AE270:
#data 0x00094E0B
#data 0x22B0D25B

#align4
loc_8c1AE278:
#data 0xDE5D64D0
#data 0xDA5A604C
#data 0x8805DC5A
#data 0x64038D14
#data 0x00096043
#data 0x890F8806
#data 0xC9BF84E6
#data 0xD25880E6
#data 0x84C3D356
#data 0x2300420B
#data 0x410BD156
#data 0xD2560009
#data 0x0009420B
#data 0x00094A0B

#align4
loc_8c1AE2B0:
#data 0x600C60D0
#data 0x89438806
#data 0x721B62C3
#data 0x6320D551
#data 0x33206250
#data 0x64C38F07
#data 0xD14F6243
#data 0x6320721F
#data 0x33206210
#data 0x8912

loc_8c1AE2D6:
#data 0x741B
#data 0x624063C3
#data 0x2520731F
#data 0x6230D149
#data 0x84E62120
#data 0xC802600C
#data 0xD3478B06
#data 0x600C6030
#data 0x89018805
#data 0x00094A0B

#align4
loc_8c1AE2FC:
#data 0x000960C3
#data 0x6000701F
#data 0xC810600C
#data 0xD2418910
#data 0xD341D142
#data 0x410B6520
#data 0x84E66430
#data 0xC802600C
#data 0xD33B8B06
#data 0x600C6030
#data 0x89018805
#data 0x00094A0B

#align4
loc_8c1AE32C:
#data 0x64E3D33B
#data 0x23B17407
#data 0xC9FE6040
#data 0x60402400
#data 0x2400C9F7

#align4
loc_8c1AE340:
#data 0x2DB04F26
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1AE350:
#data 0xE3492FE6
#data 0x7FFC4F22
#data 0x64402F42
#data 0x3433644C
#data 0xEE008F04
#data 0x3417E15A
#data 0xEE018900

#align4
loc_8c1AE36C:
#data 0x64ECD22C
#data 0x420B63F2
#data 0x6403343C
#data 0x60E36E4C
#data 0x88030009
#data 0x60E38903
#data 0x88020009
#data 0x8B26

loc_8c1AE38A:
#data 0xD026
#data 0x600C6000
#data 0x8B09C808
#data 0xD424D225
#data 0x0009420B
#data 0xD424D325
#data 0x6440430B
#data 0x0009A013

#align4
loc_8c1AE3A8:
#data 0x000960E3
#data 0x8B048802
#data 0x420BD221
#data 0xA00A0009
#data 0x0009

loc_8c1AE3BA:
#data 0xD220
#data 0x0009420B
#data 0xD41FD31A
#data 0x0009430B
#data 0x420BD21C
#data 0x0009

loc_8c1AE3CE:
#data 0x7F04
#data 0xE0014F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------

#align4
loc_8c1AE3D8:
#data 0x7F04E000
#data 0x000B4F26
#data 0x00006EF6
#data 0x8C34B03A

#align4
loc_8c1AE3E8:
#data loc_8c1AFD44
#data 0x8C34AF50
#data 0x8C34B288
#data 0x8C34B036

#align4
loc_8c1AE3F8:
#data bank1b.loc_8c1b4F12

loc_8c1AE3FC:
#data loc_8c1AF31A

loc_8c1AE400:
#data bank1b.loc_8c1b398A
#data 0x8C34B03B
#data 0x8C34B03C
#data 0x8C34AFA8
#data 0x8C34AFB1
#data 0x8C34AFB0

#align4
loc_8c1AE418:
#data bank19.loc_8c198A10
#data 0x8C34B034

#align4
loc_8c1AE420:
#data bank19.loc_8c1994B6
#data 0x8C34AF5E

#align4
loc_8c1AE428:
#data bank1c.loc_8c1c71D4

loc_8c1AE42C:
#data loc_8c1AECDC
#data 0x8C34AF53

#align4
loc_8c1AE434:
#data loc_8c1AEC3A

loc_8c1AE438:
#data bank19.loc_8c19942E

loc_8c1AE43C:
#data loc_8c1AEE08

loc_8c1AE440:
#data bank1c.loc_8c1c71D8
#data 0x9401D302
#data 0x0009432B
#data 0x00000080

#align4
loc_8c1AE450:
#data bank19.loc_8c1995D6


loc_8c1AE454:
mov.l r14,@-r15
mov 0x40,r5 ; r5 set to 0x40
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
mov.l @(loc_8c1AE47C,pc),r2 ; r2 set to 0x8C34B039
sts.l pr,@-r15
mov.b @r2,r3
extu.b r3,r3
tst r5,r3
add 0xB0,r15
bf loc_8c1AE480
mov 0x00,r5 ; r5 set to 0x00
bsr loc_8c1AED24
mov 0x01,r4 ; r4 set to 0x01
bra loc_8c1AE782
nop

#align4
loc_8c1AE47C:
#data 0x8C34B039


loc_8c1AE480:
mov.l @(loc_8c1AE4A8,pc),r2 ; r2 set to 0x8C34B0FE
mov 0x01,r6 ; r6 set to 0x01
mov.l @(loc_8c1AE4A4,pc),r4 ; r4 set to 0x8C34AF50
mov r6,r12 ; r12 set to 0x01
mov.b @r2,r0
add 0x7F,r12 ; r12 set to 0x80
extu.b r0,r0
mov 0x2E,r1 ; r1 set to 0x2E
cmp/hs r1,r0
bf loc_8c1AE498
bra loc_8c1AE5C8
nop

loc_8c1AE498:
shll r0
mov r0,r1
mova @(loc_8c1AE4AC,pc),r0  ; r0 set to 0x8C1AE4AC
mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???
braf r0
nop

#align4
loc_8c1AE4A4:
#data 0x8C34AF50

#align4
loc_8c1AE4A8:
#data 0x8C34B0FE

#align4
loc_8c1AE4AC:
#data 0x00740064
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
#data 0x012400D8
#data 0x00E000DC
#data 0x00E800E4
#data 0x00F000EC
#data 0x00F800F4
#data 0x010000FC
#data 0x01080104
#data 0x0110010C
#data 0x01180114
#data 0x0120011C
#data 0x600C844E
#data 0x890120C8
#data 0xEE3EA05B
#data 0xEE3FA059
#data 0x0009A056
#data 0xEE05A055
#data 0xEE0AA053
#data 0xEE0BA051
#data 0xEE3CA04F
#data 0xEE0CA04D
#data 0xEE3DA04B
#data 0xEE0DA049
#data 0xEE3BA047
#data 0xEE0EA045
#data 0xEE42A043
#data 0xEE43A041
#data 0xEE44A03F
#data 0xEE68A03D
#data 0xEE45A03B
#data 0xEE69A039
#data 0xEE6AA037
#data 0xEE49A035
#data 0xEE47A033
#data 0xEE6BA031
#data 0xEE4AA02F
#data 0xEE48A02D
#data 0xEE6CA02B
#data 0xEE4BA029
#data 0xEE6DA027
#data 0xEE4CA025
#data 0xEE6EA023
#data 0xEE4EA021
#data 0xEE6FA01F
#data 0xEE50A01D
#data 0xEE70A01B
#data 0xEE51A019
#data 0xEE71A017
#data 0xEE59A015
#data 0xEE72A013
#data 0xEE14A011
#data 0xEE73A00F
#data 0xEE5DA00D
#data 0xEE74A00B
#data 0xEE5EA009
#data 0xEE75A007
#data 0xEE5FA005
#data 0xEE76A003
#data 0xEE1BA001

#align4
loc_8c1AE5C8:
#data 0xDD086E63
#data 0x722062D3
#data 0x633C6320
#data 0x8F042358
#data 0x846A66D3
#data 0xC810600C
#data 0x8906

loc_8c1AE5E2:
#data 0xE500
#data 0x64E3B39E
#data 0x0009A0CB
#data 0x8C34B288

#align4
loc_8c1AE5F0:
#data 0x73186343
#data 0x7A146AF3
#data 0x2FA2E900
#data 0xD6256230
#data 0x2258622C
#data 0xEB208F3F
#data 0x62407418
#data 0x22B8622C
#data 0x61D38934
#data 0x6310711B
#data 0x23C8633C
#data 0x90368913
#data 0x046EA005

#align4
loc_8c1AE624:
#data 0x720162F2
#data 0x63442F22
#data 0x2234

loc_8c1AE62E:
#data 0x6240
#data 0x8BF72228
#data 0x64F3B0AF
#data 0x65A363F2
#data 0xB3712390
#data 0xA01BE44D
#data 0x0009

loc_8c1AE646:
#data 0x7D1D
#data 0x633C63D0
#data 0x891123B8
#data 0xA005901E
#data 0x046E

loc_8c1AE656:
#data 0x62F2
#data 0x2F227201
#data 0x22346344

#align4
loc_8c1AE660:
#data 0x22286240
#data 0xB0AC8BF7
#data 0x63F264F3
#data 0x239065A3
#data 0xE44FA002

#align4
loc_8c1AE674:
#data 0xE500E446

#align4
loc_8c1AE678:
#data 0x0009B354

#align4
loc_8c1AE67C:
#data 0x0009B0E7
#data 0xA07C6403
#data 0xE500

loc_8c1AE686:
#data 0x60EC
#data 0xA00A4008
#data 0x0134056E
#data 0x0000013C

#align4
loc_8c1AE694:
#data bank1c.loc_8c1c71E8

loc_8c1AE698:
#data 0x720162F2
#data 0x63542F22
#data 0x2234

loc_8c1AE6A2:
#data 0x6250
#data 0x8BF72228
#data 0x62407418
#data 0x22B8622C
#data 0xD16E8921
#data 0x0009410B
#data 0x600C80F4
#data 0x891A2008
#data 0x68F362F2
#data 0x7201E32F
#data 0x78082F22
#data 0x84F42234
#data 0x6403B3C2
#data 0xD2662F06
#data 0xD3662F26
#data 0x6483430B
#data 0x6183D265
#data 0x420B7F08
#data 0xD36460F2
#data 0x6483430B
#data 0x320C62F2
#data 0x2F22

loc_8c1AE6F6:
#data 0x63D3
#data 0x6230731B
#data 0x22C8622C
#data 0x64D38F07
#data 0x00096043
#data 0x6000701D
#data 0xC820600C
#data 0x8931

loc_8c1AE712:
#data 0x62F2
#data 0x7D1BE32F
#data 0x2F227201
#data 0x62D02234
#data 0x22C8622C
#data 0x61F28912
#data 0x7101E356
#data 0x21342F12
#data 0x62F2E334
#data 0x2F227201
#data 0xE3322234
#data 0x720162F2
#data 0x22342F22
#data 0x64F3B027
#data 0x0009A015

#align4
loc_8c1AE74C:
#data 0xE35262F2
#data 0x2F227201
#data 0xE3452234
#data 0x720162F2
#data 0x22342F22
#data 0x62F2E34C
#data 0x2F227201
#data 0x62F22234
#data 0x2F227201
#data 0xB02622B4
#data 0x64F3

loc_8c1AE776:
#data 0x62F2
#data 0x65A364E3
#data 0x2290

loc_8c1AE77E:
#data 0xB2D1
#data 0x0009


loc_8c1AE782:
add 0x50,r15
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

loc_8c1AE796:
#data 0xD03A
#data 0x600C6000
#data 0x890EC880
#data 0xE3426242
#data 0x24227201
#data 0xE3492234
#data 0x72016242
#data 0x22342422
#data 0x6242E353
#data 0x24227201
#data 0x2234

loc_8c1AE7BE:
#data 0x000B
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1AE7C2:
#data 0xD730
#data 0x6373E601
#data 0x6230731D
#data 0x2268622C
#data 0xE5208F0B
#data 0x71016142
#data 0x21542412
#data 0x73016342
#data 0xD2292432
#data 0x71306120
#data 0x2314

loc_8c1AE7EA:
#data 0x771D
#data 0x633C6370
#data 0x892A2368
#data 0x6142E22D
#data 0x24127101
#data 0x63422154
#data 0x24327301
#data 0x63422324
#data 0x24327301
#data 0xE3562354
#data 0x72016242
#data 0x22342422
#data 0x6242E334
#data 0x24227201
#data 0xE3322234
#data 0x72016242
#data 0x22342422
#data 0x6242E342
#data 0x24227201
#data 0xE3492234
#data 0x72016242
#data 0x22342422
#data 0x6242E353
#data 0x24227201
#data 0x2234

loc_8c1AE84A:
#data 0x000B
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1AE84E:
#data 0xD00F
#data 0x60004F22
#data 0xC880600C
#data 0xD00D891E
#data 0x600C6000
#data 0x8B19C810
#data 0xA01CD20B
#data 0x00006420

#align4
loc_8c1AE86C:
#data bank19.loc_8c19FD02

loc_8c1AE870:
#data bank1c.loc_8c1c7D1C

loc_8c1AE874:
#data bank12.loc_8c129740

loc_8c1AE878:
#data bank12.loc_8c12E5D4

loc_8c1AE87C:
#data bank12.loc_8c1297C4
#data 0x8C34B2A5
#data 0x8C34B288
#data 0x8C34AF7C
#data 0x8C34AF68
#data 0x8C34B292
#data 0x8C34B140

#align4
loc_8c1AE898:
#data 0xD108D309
#data 0x6410430B
#data 0x6403

loc_8c1AE8A2:
#data 0x604C
#data 0xE13B70FF
#data 0x8B013012
#data 0x0009A0E3

#align4
loc_8c1AE8B0:
#data 0x61034000
#data 0x001DC703
#data 0x00090023
#data 0x8C34B0FE

#align4
loc_8c1AE8C0:
#data loc_8c1A0E86
#data 0x0082007E
#data 0x008E0088
#data 0x009A0094
#data 0x00A600A0
#data 0x00B200AC
#data 0x00BE00B8
#data 0x00CA00C4
#data 0x00D600D0
#data 0x00E200DC
#data 0x00EE00E8
#data 0x00FA00F4
#data 0x01060100
#data 0x0112010C
#data 0x011E0118
#data 0x012A0124
#data 0x01360130
#data 0x0142013C
#data 0x014E0148
#data 0x015A0154
#data 0x01660160
#data 0x0172016C
#data 0x017E0178
#data 0x018A0184
#data 0x01BA0190
#data 0x01BA01BA
#data 0x019C0196
#data 0x01A801A2
#data 0x01AE01BA
#data 0x01BA01BA
#data 0xA09C01B4
#data 0x4F260009
#data 0xE005000B
;-------------------------------------------------------------------------------
#data 0x000B4F26
#data 0x4F26E00A
#data 0xE00B000B
;-------------------------------------------------------------------------------
#data 0x000B4F26
#data 0x4F26E03C
#data 0xE00C000B
;-------------------------------------------------------------------------------
#data 0x000B4F26
#data 0x4F26E03D
#data 0xE00D000B
;-------------------------------------------------------------------------------
#data 0x000B4F26
#data 0x4F26E03B
#data 0xE00E000B
;-------------------------------------------------------------------------------
#data 0x000B4F26
#data 0x4F26E042
#data 0xE043000B
;-------------------------------------------------------------------------------
#data 0x000B4F26
#data 0x4F26E044
#data 0xE068000B
;-------------------------------------------------------------------------------
#data 0x000B4F26
#data 0x4F26E045
#data 0xE069000B
;-------------------------------------------------------------------------------
#data 0x000B4F26
#data 0x4F26E06A
#data 0xE049000B
;-------------------------------------------------------------------------------
#data 0x000B4F26
#data 0x4F26E047
#data 0xE06B000B
;-------------------------------------------------------------------------------
#data 0x000B4F26
#data 0x4F26E04A
#data 0xE048000B
;-------------------------------------------------------------------------------
#data 0x000B4F26
#data 0x4F26E06C
#data 0xE04B000B
;-------------------------------------------------------------------------------
#data 0x000B4F26
#data 0x4F26E06D
#data 0xE04C000B
;-------------------------------------------------------------------------------
#data 0x000B4F26
#data 0x4F26E00F
#data 0xE06E000B
;-------------------------------------------------------------------------------
#data 0x000B4F26
#data 0x4F26E04E
#data 0xE06F000B
;-------------------------------------------------------------------------------
#data 0x000B4F26
#data 0x4F26E050
#data 0xE070000B
;-------------------------------------------------------------------------------
#data 0x000B4F26
#data 0x4F26E051
#data 0xE071000B
;-------------------------------------------------------------------------------
#data 0x000B4F26
#data 0x4F26E059
#data 0xE072000B
;-------------------------------------------------------------------------------
#data 0x000B4F26
#data 0x4F26E014
#data 0xE073000B
;-------------------------------------------------------------------------------
#data 0x000B4F26
#data 0x4F26E05D
#data 0xE074000B
;-------------------------------------------------------------------------------
#data 0x000B4F26
#data 0x4F26E05E
#data 0xE075000B
;-------------------------------------------------------------------------------
#data 0x000B4F26
#data 0x4F26E05F
#data 0xE076000B
;-------------------------------------------------------------------------------
#data 0x000B4F26
#data 0x4F26E01B
#data 0xE010000B
;-------------------------------------------------------------------------------
#data 0x000B4F26
#data 0x4F26E015
#data 0xE011000B
;-------------------------------------------------------------------------------
#data 0x000B4F26
#data 0x4F26E060
#data 0xE013000B
;-------------------------------------------------------------------------------
#data 0x000B4F26
#data 0x4F26E018
#data 0xE019000B
;-------------------------------------------------------------------------------
#data 0x000B4F26
#data 0xE01A
;-------------------------------------------------------------------------------

loc_8c1AEA76:
#data 0xE001
#data 0x000B4F26
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1AEA7E:
mov.l @(loc_8c1AEAE8,pc),r2 ; r2 set to 0x8C34B039
mov 0x40,r5 ; r5 set to 0x40
mov.b @r2,r3
extu.b r3,r3
tst r5,r3
bf loc_8c1AEA8E
bra loc_8c1AEC36
nop

loc_8c1AEA8E:
mov.l @(loc_8c1AEAEC,pc),r0 ; r0 set to 0x8C34AF68
mov.b @r0,r0 ; r0 ??
extu.b r0,r0
tst 0x20,r0
bf loc_8c1AEA9C
bra loc_8c1AEC36
nop

loc_8c1AEA9C:
mov.l @(loc_8c1AEAEC,pc),r1 ; r1 set to 0x8C34AF68
mov.b @r1,r3
extu.b r3,r3
tst r5,r3
bt loc_8c1AEAAA
bra loc_8c1AEC36
nop

loc_8c1AEAAA:
mov.l @(loc_8c1AEAF0,pc),r3 ; r3 set to 0x8C34B2A8
mov.b @r3,r2
extu.b r2,r2
tst r5,r2
bt loc_8c1AEAB8
bra loc_8c1AEC36
nop

loc_8c1AEAB8:
mov.l @(loc_8c1AEAF4,pc),r0 ; r0 set to 0x8C34B292
mov.b @r0,r0 ; r0 ??
extu.b r0,r0
tst 0x10,r0
bt loc_8c1AEAC6
bra loc_8c1AEC36
nop

loc_8c1AEAC6:
mov.l @(loc_8c1AEAF8,pc),r2 ; r2 set to 0x8C34B0FE
mov 0x2F,r7 ; r7 set to 0x2F
mov r7,r6 ; r6 set to 0x2F
add 0x51,r6 ; r6 set to 0x80
mov.b @r2,r0
extu.b r0,r0
mov 0x2E,r1 ; r1 set to 0x2E
cmp/hs r1,r0
bf loc_8c1AEADC
bra loc_8c1AEC30
nop

loc_8c1AEADC:
shll r0
mov r0,r1
mova @(loc_8c1AEAFC,pc),r0  ; r0 set to 0x8C1AEAFC
mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???
braf r0
nop

#align4
loc_8c1AEAE8:
#data 0x8C34B039

#align4
loc_8c1AEAEC:
#data 0x8C34AF68

#align4
loc_8c1AEAF0:
#data 0x8C34B2A8

#align4
loc_8c1AEAF4:
#data 0x8C34B292

#align4
loc_8c1AEAF8:
#data 0x8C34B0FE

#align4
loc_8c1AEAFC:
#data 0x00820070
#data 0x008A0086
#data 0x0092008E
#data 0x009A0096
#data 0x00A2009E
#data 0x00AA00A6
#data 0x00B200AE
#data 0x00BA00B6
#data 0x00C200BE
#data 0x00CA00C6
#data 0x00D200CE
#data 0x00DA00D6
#data 0x00E200DE
#data 0x014800E6
#data 0x00EE00EA
#data 0x00F600F2
#data 0x00FE00FA
#data 0x01060102
#data 0x0110010A
#data 0x011A0114
#data 0x0124011E
#data 0x013A0134
#data 0x0144013E
#data 0x6130D32F
#data 0x2168611C
#data 0xA0668901
#data 0xA0646453
#data 0xA062E441
#data 0xA060E428
#data 0xA05DE42E
#data 0xA05C0009
#data 0xA05AE430
#data 0xA058E431
#data 0xA056E432
#data 0xA054E433
#data 0xA052E434
#data 0xA050E435
#data 0xA04EE436
#data 0xA04CE437
#data 0xA04AE438
#data 0xA048E439
#data 0xA046E477
#data 0xA044E43A
#data 0xA042E478
#data 0xA040E479
#data 0xA03EE455
#data 0xA03CE423
#data 0xA03AE47A
#data 0xA038E456
#data 0xA036E424
#data 0xA034E47B
#data 0xA032E425
#data 0xA030E47C
#data 0xA02EE426
#data 0xA02CE47D
#data 0xA02AE427
#data 0xA028E47E
#data 0xA026E42B
#data 0xA024E47F
#data 0xA022E42C
#data 0xA0206463
#data 0x940DE42D
#data 0x0009A01D
#data 0xE41FA01B
#data 0xA0189409
#data 0xA0160009
#data 0x9405E417
#data 0x0009A013
#data 0xE41CA011
#data 0x00820081
#data 0x00000083
#data 0x8C34AF5E
#data 0xA008946D
#data 0xA0060009
#data 0x9469E41D
#data 0x0009A003
#data 0xE420A001


loc_8c1AEC30:
mov r7,r4
bra loc_8c1AED24
mov 0x00,r5

loc_8c1AEC36:
rts
nop
;-------------------------------------------------------------------------------

loc_8c1AEC3A:
sts.l pr,@-r15
add 0xFC,r15
mov r15,r3
add 0x03,r3
mov.b r4,@r3
mov r15,r4
bsr loc_8c1AEC5A
add 0x03,r4
mov.l @(loc_8c1AED00,pc),r3 ; r3 set to 0x8C1A1120
mov.b @(0x03,r15),r0
jsr @r3
mov r0,r4
add 0x04,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c1AEC5A:
#data 0x6740
#data 0x667CE301
#data 0x8D012368
#data 0x7501E500

#align4
loc_8c1AEC68:
#data 0x2368E302
#data 0xE3048D01
#data 0x7501

loc_8c1AEC72:
#data 0x2368
#data 0xE3088D01
#data 0x7501

loc_8c1AEC7A:
#data 0x2368
#data 0xE3108D01
#data 0x7501

loc_8c1AEC82:
#data 0x2368
#data 0xE3208D01
#data 0x7501

loc_8c1AEC8A:
#data 0x2368
#data 0xE3408D01
#data 0x7501

loc_8c1AEC92:
#data 0x2368
#data 0x75018900

#align4
loc_8c1AEC98:
#data 0x26389331
#data 0xE3018D01
#data 0x7501

loc_8c1AECA2:
#data 0xD218
#data 0x600C6020
#data 0x8D06880C
#data 0x880D2539
#data 0x88288908
#data 0xA00F890D
#data 0x0009

loc_8c1AECBA:
#data 0x655C
#data 0x8B042558
#data 0x0009A00A

#align4
loc_8c1AECC4:
#data 0x2558655C
#data 0x8B06

loc_8c1AECCA:
#data 0x6040
#data 0xA003CB80
#data 0x2400

loc_8c1AECD2:
#data 0x6040
#data 0x2400CB80

#align4
loc_8c1AECD8:
#data 0x0009000B
;-------------------------------------------------------------------------------

loc_8c1AECDC:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8c1AED08,pc),r3 ; r3 set to 0x8C1AFE8A
jsr @r3
mov r4,r14
bra loc_8c1AECEE
nop

loc_8c1AECEA:
bsr loc_8c1AEC3A
mov.b @r14+,r4

loc_8c1AECEE:
mov.b @r14,r2
tst r2,r2
bf loc_8c1AECEA
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------
#data 0x0084
#data 0x00800085

#align4
loc_8c1AED00:
#data loc_8c1A1120
#data 0x8C34B141

#align4
loc_8c1AED08:
#data loc_8c1AFE8A


loc_8c1AED0C:
mov.l r14,@-r15
sts.l pr,@-r15
bra loc_8c1AED18
mov r4,r14

loc_8c1AED14:
bsr loc_8c1AEC3A
mov.b @r14+,r4

loc_8c1AED18:
mov.b @r14,r2
tst r2,r2
bf loc_8c1AED14
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8c1AED24:
#data 0x2FD62FE6
#data 0x2FC66D43
#data 0xDB2F2FB6
#data 0x64B34F22
#data 0x6040740E
#data 0x600C7FFC
#data 0x8F4CC804
#data 0x65406E53
#data 0xDC2AE210
#data 0x2258655C
#data 0xD0298910
#data 0x600C6000
#data 0x8B07C840
#data 0x22589246
#data 0xD0268B08
#data 0x600C6000
#data 0x8903C808

#align4
loc_8c1AED68:
#data 0xC9BF84CA
#data 0x80CAA035

#align4
loc_8c1AED70:
#data 0x430BD322
#data 0x2EE80009
#data 0xD0218B03
#data 0x4E086EDC
#data 0x0EEE

loc_8c1AED82:
#data 0x84C8
#data 0x80C8CB01
#data 0x600C84BE
#data 0x8B16C808
#data 0x64DCE209
#data 0x8F023427
#data 0xA004E601
#data 0xE602

loc_8c1AED9E:
#data 0xE363
#data 0x8B003437
#data 0xE603

loc_8c1AEDA6:
#data 0xD317
#data 0x67F3E50A
#data 0x64DC430B
#data 0x64F3BF94
#data 0xBF4084B3
#data 0xA00B6403
#data 0x0009

loc_8c1AEDBE:
#data 0xB023
#data 0xA0020009
#data 0x0009

loc_8c1AEDC6:
#data 0xBF38
#data 0x64E4

loc_8c1AEDCA:
#data 0x62E0
#data 0x8BFA2228
#data 0x0009B01A

#align4
loc_8c1AEDD4:
#data 0xC9FE84C8
#data 0x80C8

loc_8c1AEDDA:
#data 0x7F04
#data 0x6BF64F26
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x00000080
#data 0x8C34AF50
#data 0x8C34B288
#data 0x8C34B292
#data 0x8C34B28E

#align4
loc_8c1AEDFC:
#data loc_8c1AFE8A

loc_8c1AEE00:
#data bank1c.loc_8c1c71E8

loc_8c1AEE04:
#data loc_8c1AF1A4


loc_8c1AEE08:
mov.l r14,@-r15
mov.l @(loc_8c1AEE74,pc),r14 ; r14 set to 0x8C34AF50
sts.l pr,@-r15
mov.b @(0x0E,r14),r0
extu.b r0,r0
tst 0x04,r0
bf loc_8c1AEE26
mov.b @(0x03,r14),r0
bsr loc_8c1AEC3A
mov r0,r4
mov.l @(loc_8c1AEE78,pc),r2 ; r2 set to 0x8C34B037
lds.l @r15+,pr
mov.b @r2,r4
bra loc_8c1AEC3A
mov.l @r15+,r14

loc_8c1AEE26:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1AEE2C:
sts.l pr,@-r15
add 0xF4,r15
mov.b r4,@r15
bsr loc_8c1AEE58
mov.b @r15,r4
mov.l r0,@-r15
mov.l @(loc_8c1AEE7C,pc),r2 ; r2 set to 0x8C1C7D1C
mov.l r2,@-r15
mov.l @(loc_8c1AEE80,pc),r3 ; r3 set to 0x8C129740
mov r15,r4
jsr @r3
add 0x0C,r4
mov r15,r4
bsr loc_8c1AECDC
add 0x0C,r4
mov.l @(loc_8c1AEE84,pc),r4 ; r4 set to 0x8C1C7D20
bsr loc_8c1AED0C
nop
add 0x14,r15
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c1AEE58:
mov.w @(loc_8c1AEE70,pc),r2 ; r2 set to 0xF0
extu.b r4,r3
cmp/hs r2,r3
bt loc_8c1AEE6A
mov.l @(loc_8c1AEE88,pc),r1 ; r1 set to 0x8C1C7400
extu.b r4,r0
shll2 r0
rts
mov.l @(r0,r1),r0
;-------------------------------------------------------------------------------

loc_8c1AEE6A:
mov.l @(loc_8c1AEE8C,pc),r0 ; r0 set to 0x1C200
rts
nop
;-------------------------------------------------------------------------------

loc_8c1AEE70:
#data 0x00F0
#data 0x0000

#align4
loc_8c1AEE74:
#data 0x8C34AF50

#align4
loc_8c1AEE78:
#data 0x8C34B037

#align4
loc_8c1AEE7C:
#data bank1c.loc_8c1c7D1C

loc_8c1AEE80:
#data bank12.loc_8c129740

loc_8c1AEE84:
#data bank1c.loc_8c1c7D20

loc_8c1AEE88:
#data bank1c.loc_8c1c7400

loc_8c1AEE8C:
#data 0x0001C200

#align4
loc_8c1AEE90:
#data 0x2FD62FE6
#data 0x6C432FC6
#data 0x2FA62FB6
#data 0x2F862F96
#data 0xD31A4F22
#data 0xDB17DE18
#data 0xE464430B
#data 0xED00D218
#data 0xD31822D0
#data 0xE401430B
#data 0x420BD217
#data 0xD31764D3
#data 0xE401430B
#data 0x420BD216
#data 0xEA04E401
#data 0x600C84B8
#data 0x8F0420A8
#data 0xD31366B3
#data 0x22286230
#data 0x8902

loc_8c1AEEDE:
#data 0xD211
#data 0x22D09C0E

#align4
loc_8c1AEEE4:
#data 0xA00364D3
#data 0xE521

loc_8c1AEEEA:
#data 0x26D0
#data 0x76017401

#align4
loc_8c1AEEF0:
#data 0x3353634C
#data 0xD70C8BF9
#data 0x66E364D3
#data 0xE550A01A
#data 0x000000FE
#data 0x8C34B288
#data 0x8C34AF50

#align4
loc_8c1AEF0C:
#data bank19.loc_8c19FEE8
#data 0x8C34B148

#align4
loc_8c1AEF14:
#data loc_8c1A126E

loc_8c1AEF18:
#data loc_8c1A1208

loc_8c1AEF1C:
#data loc_8c1A1290

loc_8c1AEF20:
#data bank19.loc_8c19FE46
#data 0x8C34B1F1

#align4
loc_8c1AEF28:
#data bank1c.loc_8c1c6BF0

loc_8c1AEF2C:
#data 0x74016374
#data 0x76012630

#align4
loc_8c1AEF34:
#data 0x3253624C
#data 0x62CC8BF8
#data 0x8D0532A3
#data 0x84B464E3
#data 0x80B4CB20
#data 0x23C0D33A

#align4
loc_8c1AEF4C:
#data 0x420BD23A
#data 0xD33A0009
#data 0x64E3430B
#data 0x420BD239
#data 0xD2390009
#data 0x63229064
#data 0x9362013D
#data 0x2138611D
#data 0xD1368902
#data 0xE400410B

#align4
loc_8c1AEF74:
#data 0x430BD335
#data 0xE0040009
#data 0x00ECD234
#data 0x711B61E3
#data 0x2200C97F
#data 0xD33262E3
#data 0x84E3721F
#data 0x60102300
#data 0x2100D130
#data 0xD2306020
#data 0x60E02200
#data 0x8801600C
#data 0xD3278B09
#data 0x60329142
#data 0x600D001D
#data 0x8902C801
#data 0x730163E0
#data 0x2E30

loc_8c1AEFBA:
#data 0x64E3
#data 0x600C6040
#data 0x8B0A8802
#data 0x9033D31F
#data 0x012D6232
#data 0x611D9231
#data 0x89022128
#data 0x70016040
#data 0x2400

loc_8c1AEFDA:
#data 0x69E3
#data 0x63907915
#data 0x633CE410
#data 0x8B0C2348
#data 0x9021D216
#data 0x031D6122
#data 0x2348633D
#data 0x60908905
#data 0x2900C9E7
#data 0xCB106090
#data 0x2900

loc_8c1AF002:
#data 0x63CC
#data 0xD816D917
#data 0x8B2F33A3
#data 0x731463E3
#data 0x29206230
#data 0x000960E3
#data 0xD1137017
#data 0xE3FC6000
#data 0xC930600C
#data 0x021C403C
#data 0x2820A024
#data 0x010000B0
#data 0x200000B2
#data 0x8C34B038

#align4
loc_8c1AF038:
#data bank1b.loc_8c1b8244

loc_8c1AF03C:
#data bank19.loc_8c19FEB4

loc_8c1AF040:
#data loc_8c1A00B4
#data 0x8C34B1F8

#align4
loc_8c1AF048:
#data bank19.loc_8c19FE4E

loc_8c1AF04C:
#data bank1b.loc_8c1b848A
#data 0x8C34B037
#data 0x8C34B036
#data 0x8C34B03B
#data 0x8C34B03C
#data 0x8C34B141
#data 0x8C34B140

#align4
loc_8c1AF068:
#data bank1c.loc_8c1c7E6D

loc_8c1AF06C:
#data 0x6580D23E
#data 0x6490420B

#align4
loc_8c1AF074:
#data 0xD23D6390
#data 0xE3412230
#data 0x6180D03C
#data 0xE0542010
#data 0x61CCD43B
#data 0x80412430
#data 0x804284E3
#data 0xD3399068
#data 0x8D0B3100
#data 0xD13823D1
#data 0x0009410B
#data 0xD438D339
#data 0x430BD536
#data 0xD2380009
#data 0xE400420B

#align4
loc_8c1AF0B0:
#data 0xD434D335
#data 0x430BD532
#data 0xB0D70009
#data 0xD3340009
#data 0xE401430B
#data 0x420BD233
#data 0x600E0009
#data 0x8B042008
#data 0x731063B3
#data 0xCB086030
#data 0x2300

loc_8c1AF0DA:
#data 0x60E3
#data 0x70150009
#data 0x600C6000
#data 0x8B01C820
#data 0xE400A001

loc_8c1AF0EC:
#data 0xE401

loc_8c1AF0EE:
#data 0xD22A
#data 0x0009420B
#data 0x741564E3
#data 0x600C6040
#data 0x8905C802
#data 0x600C6040
#data 0x8903C820
#data 0x0009A004

#align4
loc_8c1AF10C:
#data 0x8B01C840

#align4
loc_8c1AF110:
#data 0xE400A001

loc_8c1AF114:
#data 0xE401

loc_8c1AF116:
#data 0xD221
#data 0x0009420B
#data 0x000960E3
#data 0x60007031
#data 0xC840600C
#data 0x84EE8902
#data 0x80EECB04

#align4
loc_8c1AF130:
#data 0x6CCC9219
#data 0x84E3D31A
#data 0x8F0A3C20
#data 0x60E32300
#data 0x701B0009
#data 0x600C6000
#data 0x8902C804
#data 0xCB1084BB
#data 0x80BB

loc_8c1AF152:
#data 0x4F26
#data 0x69F668F6
#data 0x6BF66AF6
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x00FF00FD

#align4
loc_8c1AF168:
#data bank19.loc_8c198A10
#data 0x8C34AFB0
#data 0x8C34AFB1
#data 0x8C34AFB3
#data 0x8C34B034

#align4
loc_8c1AF17C:
#data bank19.loc_8c19A902
#data 0x8C34B0F0
#data 0x8C34B0F4

#align4
loc_8c1AF188:
#data bank19.loc_8c19F342

loc_8c1AF18C:
#data bank19.loc_8c19FEEC

loc_8c1AF190:
#data bank19.loc_8c19FE58

loc_8c1AF194:
#data loc_8c1A11E0

loc_8c1AF198:
#data loc_8c1A122A

loc_8c1AF19C:
#data loc_8c1A124C
#data 0x8C34B197


loc_8c1AF1A4:
mov.l r14,@-r15
mov.l r13,@-r15
extu.b r5,r13
mov.l r12,@-r15
mov 0x01,r12 ; r12 set to 0x01
sts.l pr,@-r15
mov r12,r14 ; r14 set to 0x01
add 0xFC,r15
mov.b r12,@r15
bra loc_8c1AF1C6
add 0xFF,r13

loc_8c1AF1BA:
extu.b r5,r2
mov.b @r15,r3
mul.l r14,r2
add 0x01,r3
mov.b r3,@r15
sts macl,r14

loc_8c1AF1C6:
mov r4,r1
mov r14,r0
nop
mov.l @(loc_8c1AF288,pc),r2 ; r2 set to 0x8C1291DC, r2 set to 0x8C1291DC
jsr @r2
nop
cmp/hi r13,r0
bt loc_8c1AF1BA
bra loc_8c1AF1DE
mov 0x30,r13

loc_8c1AF1DA:
#data 0x27D0
#data 0x7701

loc_8c1AF1DE:
#data 0x62F0
#data 0x7201636C
#data 0x72FF2F20
#data 0x3233622C
#data 0xED0A8BF5
#data 0x2FC0

loc_8c1AF1F2:
#data 0x6143
#data 0x000960E3
#data 0x430BD323
#data 0x66030009
#data 0x02E7626E
#data 0x605CD320
#data 0x3428021A
#data 0x61E3430B
#data 0x32D3626E
#data 0x6E038F02
#data 0x7637A001

loc_8c1AF21C:
#data 0x7630

loc_8c1AF21E:
#data 0xE300
#data 0x3E362760
#data 0x77018F08
#data 0xE20861F0
#data 0x2F107101
#data 0x611C71FF
#data 0x8BDC3127

#align4
loc_8c1AF238:
#data 0x4F267F04
#data 0x2730E300
#data 0x6DF66CF6
#data 0x6EF6000B
;-------------------------------------------------------------------------------
#data 0x654CE330
#data 0x8B023533
#data 0x3517E139
#data 0xE3418B05
#data 0x8B043533
#data 0x3517E146
#data 0x000B8901
#data 0xE000E001
#data 0x0009000B
;-------------------------------------------------------------------------------

loc_8c1AF26C:
mov.l @(loc_8c1AF290,pc),r0 ; r0 set to 0x8C34AF66
mov 0xFC,r3 ; r3 set to 0xFFFFFFFC
mov.l @(loc_8c1AF294,pc),r1 ; r1 set to 0x8C1C7E71
mov.b @r0,r0 ; r0 ??
mov.l @(loc_8c1AF28C,pc),r4 ; r4 set to 0x8C34B039
extu.b r0,r0
and 0x70,r0
shad r3, r0
mov.b @(r0,r1),r2
mov.b @r4,r0
and 0x81,r0
or r0,r2
rts
mov.b r2,@r4
;-------------------------------------------------------------------------------

#align4
loc_8c1AF288:
#data bank12.loc_8c1291DC

loc_8c1AF28C:
#data 0x8C34B039

#align4
loc_8c1AF290:
#data 0x8C34AF66

#align4
loc_8c1AF294:
#data bank1c.loc_8c1c7E71

loc_8c1AF298:
#data 0xD530D431
#data 0x6053965C
#data 0x701D0009
#data 0x600C6000
#data 0x8922C820
#data 0x721D6253
#data 0x633C6320
#data 0x890B2368
#data 0x00096053
#data 0x6000701D
#data 0xC801600C
#data 0xA0088901
#data 0xE208

loc_8c1AF2CA:
#data 0xE105
#data 0x2410A023

#align4
loc_8c1AF2D0:
#data 0x6230D324
#data 0x89022228
#data 0xE204

loc_8c1AF2DA:
#data 0xA01C
#data 0x2420

loc_8c1AF2DE:
#data 0xD122
#data 0x20086010
#data 0xE0038902
#data 0x2400A015

#align4
loc_8c1AF2EC:
#data 0xA012E202
#data 0x2420

loc_8c1AF2F2:
#data 0x6153
#data 0x6310711B
#data 0x2368633C
#data 0x751D8909
#data 0x633C6350
#data 0x8B012368
#data 0xE106A004

#align4
loc_8c1AF30C:
#data 0xA002E207
#data 0x2420

loc_8c1AF312:
#data 0xE100

loc_8c1AF314:
#data 0x2410

loc_8c1AF316:
#data 0x000B
#data 0x0009
;-------------------------------------------------------------------------------

loc_8c1AF31A:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
mov.l @(loc_8c1AF36C,pc),r3 ; r3 set to 0x8C19C7D4
add 0xF0,r15
jsr @r3
mov 0x01,r10 ; r10 set to 0x01
mov 0x03,r9 ; r9 set to 0x03
and r10,r0
mov r9,r12 ; r12 set to 0x03
mov.l r0,@(0x0C,r15)
add 0x7D,r12 ; r12 set to 0x80
mov.w @(loc_8c1AF35A,pc),r3 ; r3 set to 0xC0
mov.b r3,@r15
mov.l @(loc_8c1AF370,pc),r14 ; r14 set to 0x8C34AF50
mov r14,r3 ; r3 set to 0x8C34AF50
add 0x1B,r3 ; r3 set to 0x8C34AF6B
mov.b @r3,r2
extu.b r2,r2
tst r9,r2
bt/s loc_8c1AF374
mov r14,r4 ; r4 set to 0x8C34AF50
mov.b @r15,r0
or 0x01,r0
bra loc_8c1AF3C6
mov.b r0,@r15
#data 0x0080

loc_8c1AF35A:
#data 0x00C0
#data 0x8C34B288
#data 0x8C34AF7C
#data 0x8C352F24
#data 0x8C352F05

#align4
loc_8c1AF36C:
#data bank19.loc_8c19C7D4

loc_8c1AF370:
#data 0x8C34AF50

#align4
loc_8c1AF374:
#data 0x75246543
#data 0x80F46050
#data 0x233853F3
#data 0x6050890A
#data 0xC808600C
#data 0x60508B03
#data 0xC880600C
#data 0x8902

loc_8c1AF392:
#data 0x84F4
#data 0x80F4C988

#align4
loc_8c1AF398:
#data 0xD52684F4
#data 0x84EE6403
#data 0x20C8600C
#data 0x644C8D07
#data 0x62F0E00F
#data 0x035C2049
#data 0xA008223B
#data 0x2F20

loc_8c1AF3B6:
#data 0x903B
#data 0x2049E3FC
#data 0x63F0403C
#data 0x232B025C
#data 0x2F30

loc_8c1AF3C6:
#data 0x63F0
#data 0xDD1BEB00
#data 0x2D30E402
#data 0x731C63E3
#data 0x62302FB0
#data 0x731863E3
#data 0x2299622C
#data 0x42084208
#data 0x61302F20
#data 0x2148611C
#data 0x62E38D03
#data 0xCB4060F0
#data 0x2F00

loc_8c1AF3F6:
#data 0x7218
#data 0x633C6320
#data 0x890223A8
#data 0xCB8060F0
#data 0x2F00

loc_8c1AF406:
#data 0x60F0
#data 0x2F00CB08
#data 0x000960E3
#data 0x60007027
#data 0xC820600C
#data 0xE8108F13
#data 0x722762E3
#data 0x633C6320
#data 0x89092388
#data 0xCB0260F0
#data 0x2F00A009
#data 0x000000F0

#align4
loc_8c1AF434:
#data bank1c.loc_8c1c7E79
#data 0x8C34B2E3

#align4
loc_8c1AF43C:
#data 0xCB0460F0
#data 0x2F00

loc_8c1AF442:
#data 0x63E3
#data 0x6230732A
#data 0x2248622C
#data 0x60F08902
#data 0x2F00CB01

#align4
loc_8c1AF454:
#data 0x80D160F0
#data 0x000960E3
#data 0x6000702E
#data 0x2F00C97F
#data 0x000960E3
#data 0x60007018
#data 0xC804600C
#data 0x60F08902
#data 0x2F00CB80

#align4
loc_8c1AF478:
#data 0x80D260F0
#data 0x000960E3
#data 0x6000701C
#data 0xC97C600C
#data 0x40214021
#data 0xD33781F4
#data 0x622C6230
#data 0x891022A8
#data 0x420BD235
#data 0xD3350009
#data 0x430B610D
#data 0x6203E032
#data 0xE31F85F4
#data 0x81F4302C
#data 0x3037600D
#data 0xE01F8B01
#data 0x81F4

loc_8c1AF4BA:
#data 0x63E3
#data 0x85F47328
#data 0x600DE47F
#data 0x40004008
#data 0x623080D3
#data 0x63F02F20
#data 0x3347633C
#data 0x2F408B00

#align4
loc_8c1AF4D8:
#data 0x64E360F0
#data 0x2F00CB80
#data 0x2FB080D4
#data 0x6230D324
#data 0x2288622C
#data 0x74318F1B
#data 0x000960E3
#data 0x60007031
#data 0xC80F600C
#data 0x60408913
#data 0xC804600C
#data 0xA00B8901
#data 0xE220

loc_8c1AF50A:
#data 0x2099
#data 0x8B028803
#data 0xA005E260
#data 0x0009

loc_8c1AF516:
#data 0x6140
#data 0x21A8611C
#data 0xE2408902

#align4
loc_8c1AF520:
#data 0x2F20A001

loc_8c1AF524:
#data 0x2FC0

loc_8c1AF526:
#data 0x60F0
#data 0x2FC080D5
#data 0x6000D012
#data 0xC804600C
#data 0x60F08902
#data 0x2F00CB40

#align4
loc_8c1AF53C:
#data 0xCB1060F0
#data 0x80D62F00
#data 0x84EE2FB0
#data 0x20C8600C
#data 0x60F08902
#data 0x2F00CB80

#align4
loc_8c1AF554:
#data 0x6320D209
#data 0x8B142338
#data 0x600C84EE
#data 0x890D20C8
#data 0xCB2060F0
#data 0x2F00A00D
#data 0x8C34B28E

#align4
loc_8c1AF570:
#data bank19.loc_8c19CFC4

loc_8c1AF574:
#data bank12.loc_8c129128
#data 0x8C34B292
#data 0x8C34B0FE

#align4
loc_8c1AF580:
#data 0xCB4060F0
#data 0x2F00

loc_8c1AF586:
#data 0x60F0
#data 0x60E380D7
#data 0x701D0009
#data 0x80D86000
#data 0x000960E3
#data 0x6000701E
#data 0xC9BFE30F
#data 0x600C2F00
#data 0x3037C91F
#data 0x63E38F04
#data 0xC9E060F0
#data 0x2F00CB0F

#align4
loc_8c1AF5B4:
#data 0x6230731C
#data 0x22C8622C
#data 0x51F38905
#data 0x8B022118
#data 0xCB4060F0
#data 0x2F00

loc_8c1AF5CA:
#data 0x63E3
#data 0x60F07320
#data 0x2FB080D9
#data 0x622C6230
#data 0x8B0422C8
#data 0x711061E3
#data 0x23386310
#data 0x8902

loc_8c1AF5E6:
#data 0x60F0
#data 0x2F00CB40

#align4
loc_8c1AF5EC:
#data 0x000960E3
#data 0x62E37020
#data 0x721B6000
#data 0x600C63F0
#data 0x4008C90C
#data 0x2F30230B
#data 0x611C6120
#data 0x8F272198
#data 0x844E64E3
#data 0x6503600C
#data 0x255825C9
#data 0x6043890D
#data 0x70240009
#data 0x600C6000
#data 0x8906C801
#data 0x00096043
#data 0x60007024
#data 0xC802600C
#data 0x890F

loc_8c1AF636:
#data 0x2558
#data 0x60438B10
#data 0x70240009
#data 0x600C6000
#data 0x8909C810
#data 0x00096043
#data 0x60007024
#data 0xC820600C
#data 0x8B02

loc_8c1AF656:
#data 0x60F0
#data 0x2F00CB08

#align4
loc_8c1AF65C:
#data 0x000960E3
#data 0x6000701E
#data 0xC840600C
#data 0x60F08902
#data 0x2F00CB04

#align4
loc_8c1AF670:
#data 0x80DA60F0
#data 0x60E32FB0
#data 0x70310009
#data 0x600C6000
#data 0x8902C808
#data 0xCB8060F0
#data 0x2F00

loc_8c1AF68A:
#data 0x63E3
#data 0x62307331
#data 0x2288622C
#data 0x60F08902
#data 0x2F00CB40

#align4
loc_8c1AF69C:
#data 0x732A63E3
#data 0x622C6230
#data 0x890222A8
#data 0xCB2060F0
#data 0x2F00

loc_8c1AF6AE:
#data 0x63E3
#data 0x62307320
#data 0x22A8622C
#data 0x60F08902
#data 0x2F00CB10

#align4
loc_8c1AF6C0:
#data 0x000960E3
#data 0x62F0702A
#data 0xE3FC6000
#data 0xC9C0600C
#data 0x220B403C
#data 0x60232F20
#data 0x65F30009
#data 0x80DB7504
#data 0x64F3B4B6
#data 0x80DC60F0
#data 0x80DD84F4
#data 0x60E32FB0
#data 0x702F0009
#data 0xC97F6000
#data 0x80DE2F00
#data 0x60E32FB0
#data 0x70300009
#data 0x600064D3
#data 0x2F00C97F
#data 0x60E380DF
#data 0x70310009
#data 0x600C6000
#data 0x8D02C840
#data 0xA0027410
#data 0x24C0

loc_8c1AF722:
#data 0x84E2
#data 0x2400

loc_8c1AF726:
#data 0x84EC
#data 0x33DCE311
#data 0x63E32300
#data 0x62307326
#data 0xE01263E3
#data 0x0D247343
#data 0xE0136230
#data 0x0D24E314
#data 0x84EA33DC
#data 0x63E32300
#data 0x62307321
#data 0xE01563E3
#data 0x0D247325
#data 0xE0166230
#data 0x2FB00D24
#data 0x000960E3
#data 0x722062E3
#data 0x63F07027
#data 0xC9806000
#data 0x2F30230B
#data 0x62F06120
#data 0x2189611C
#data 0x221B4108
#data 0xD3472F20
#data 0x611C6130
#data 0x21C960F0
#data 0x412162E3
#data 0x201B7218
#data 0xE0172F00
#data 0xE31E6120
#data 0x611C62F0
#data 0x41002189
#data 0x2F20221B
#data 0xE0180D24
#data 0x63E30D34
#data 0x2FB07315
#data 0x622C6230
#data 0x890222C8
#data 0xCB4060F0
#data 0x2F00

loc_8c1AF7C2:
#data 0x60E3
#data 0x702A0009
#data 0x600062E3
#data 0x63F07218
#data 0xC93C600C
#data 0x40214021
#data 0x2F30230B
#data 0x611C6120
#data 0x8F0321C8
#data 0x60F063E3
#data 0x2F00CB10

#align4
loc_8c1AF7EC:
#data 0x62307348
#data 0x2298622C
#data 0x60F08902
#data 0x2F00CB20

#align4
loc_8c1AF7FC:
#data 0xE01963F0
#data 0x0D347E4A
#data 0x63E0E01A
#data 0xE01B0D34
#data 0x6230D325
#data 0xE01C0D24
#data 0x6210D124
#data 0x60D00D24
#data 0xC90F600C
#data 0x8B0A8801
#data 0xE31060D0
#data 0x2D00C9F0
#data 0xC91F84D5
#data 0xE01980D5
#data 0x223B02DC
#data 0x0D24

loc_8c1AF83A:
#data 0xE01D
#data 0x80F42FB0
#data 0x64D3A004

#align4
loc_8c1AF844:
#data 0x634462F0
#data 0x2F20323C

#align4
loc_8c1AF84C:
#data 0x70FF84F4
#data 0x700180F4
#data 0x2008600C
#data 0x62F08BF4
#data 0x4F267F10
#data 0x622B7D1D
#data 0x68F62D20
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1AF876:
mov.l r14,@-r15
mov 0x00,r2 ; r2 set to 0x00
mov.l r13,@-r15
mov.l @(loc_8c1AF8AC,pc),r13 ; r13 set to 0x8C34AF50
sts.l pr,@-r15
mov r13,r3 ; r3 set to 0x8C34AF50
add 0x2D,r3 ; r3 set to 0x8C34AF7D
mov.b r2,@r3 ; r3 ??
mov.l @(loc_8c1AF8B0,pc),r1 ; r1 set to 0x8C34B2CC
mov.l @(loc_8c1AF8B4,pc),r0 ; r0 set to 0x8C34B12C
mov.l @r1,r3
mov.l r3,@r0 ; r0 ??? bc r3 is ???
mov r13,r0 ; r0 set to 0x8C34AF50
nop
add 0x15,r0 ; r0 set to 0x8C34AF65
mov.b @r0,r0 ; r0 ??
extu.b r0,r0
tst 0x01,r0
bt loc_8c1AF8B8
bra loc_8c1AF8BA
mov 0x00,r4
#data 0x8C34B2A2
#data 0x8C34B140
#data 0x8C34B0FE

#align4
loc_8c1AF8AC:
#data 0x8C34AF50

#align4
loc_8c1AF8B0:
#data 0x8C34B2CC

#align4
loc_8c1AF8B4:
#data 0x8C34B12C

loc_8c1AF8B8:
#data 0xE401

loc_8c1AF8BA:
#data 0xD241
#data 0x0009420B
#data 0x84E9DE40
#data 0xC880600C
#data 0xD33F8B08
#data 0x65329075
#data 0x6432D23E
#data 0x70FF055C
#data 0x044C420B

#align4
loc_8c1AF8DC:
#data 0xCB8084E9
#data 0xD33B80E9
#data 0xE400430B
#data 0x420BD23A
#data 0x84E40009
#data 0x80E4C9EF
#data 0x000960D3
#data 0x6000701B
#data 0x600CE302
#data 0x3037C90C
#data 0x84E48B02
#data 0x80E4CB10

#align4
loc_8c1AF90C:
#data 0x6DF64F26
#data 0x6EF6000B
;-------------------------------------------------------------------------------

loc_8c1AF914:
mov.l @(loc_8c1AF9D8,pc),r3 ; r3 set to 0x8C1AEA7E
jmp @r3
nop

loc_8c1AF91A:
#data 0xD230
#data 0x4F22E300
#data 0xD02F2230
#data 0x600C6000
#data 0x8903C880
#data 0x9445D12D
#data 0x0009410B

#align4
loc_8c1AF934:
#data 0x0009BCB0
#data 0x6030D32B
#data 0x2300CB20
#data 0xE264D52A
#data 0x6550D12B
#data 0x655CD429
#data 0x410B252E
#data 0xD329051A
#data 0x0009430B
#data 0x4F26A000

#align4
loc_8c1AF95C:
#data 0xD3274F22
#data 0x0009430B
#data 0x8447D417
#data 0x8047C9FE
#data 0xE304D224
#data 0x22306143
#data 0x600C8443
#data 0x8D06C820
#data 0x60107106
#data 0xCB0CC9B8
#data 0xA1DD2100
#data 0x4F26

loc_8c1AF98A:
#data 0x6010
#data 0xCB0AC9B8
#data 0xD11C2100
#data 0x4F26412B


loc_8c1AF998:
mov.l @(loc_8c1AFA08,pc),r2 ; r2 set to 0x8C34B130
mov 0x01,r3 ; r3 set to 0x01
sts.l pr,@-r15
mov.b r3,@r2 ; r2 ??
mov 0x00,r3 ; r3 set to 0x00
mov.l @(loc_8c1AFA0C,pc),r1 ; r1 set to 0x8C34B2E3
mov.b r3,@r1 ; r1 ??
mov.l @(loc_8c1AFA14,pc),r2 ; r2 set to 0x8C1B374E
mov.w @(loc_8c1AF9BE,pc),r3 ; r3 set to 0xFF
mov.l @(loc_8c1AFA10,pc),r0 ; r0 set to 0x8C34B301
jsr @r2
mov.b r3,@r0 ; r0 ??
lds.l @r15+,pr
mov.l @(loc_8c1AFA00,pc),r2 ; r2 set to 0x8C34B11C
mov 0x06,r1 ; r1 set to 0x06
rts
mov.b r1,@r2
;-------------------------------------------------------------------------------
#data 0x0089
#data 0x0080

loc_8c1AF9BE:
#data 0x00FF

#align4
loc_8c1AF9C0:
#data bank19.loc_8c19FE58
#data 0x8C34B288
#data 0x8C34B1F8

#align4
loc_8c1AF9CC:
#data bank19.loc_8c19A910

loc_8c1AF9D0:
#data bank19.loc_8c19FE46

loc_8c1AF9D4:
#data bank19.loc_8c19D24C

loc_8c1AF9D8:
#data loc_8c1AEA7E
#data 0x8C34B03A
#data 0x8C34AF5E

#align4
loc_8c1AF9E4:
#data bank19.loc_8c1995D6
#data 0x8C34B292
#data 0x8C34AF69
#data 0x8C34B110

#align4
loc_8c1AF9F4:
#data bank1b.loc_8c1b3EEC

loc_8c1AF9F8:
#data loc_8c1AE454

loc_8c1AF9FC:
#data bank19.loc_8c199270

loc_8c1AFA00:
#data 0x8C34B11C

#align4
loc_8c1AFA04:
#data bank1b.loc_8c1b3A04

loc_8c1AFA08:
#data 0x8C34B130

#align4
loc_8c1AFA0C:
#data 0x8C34B2E3

#align4
loc_8c1AFA10:
#data 0x8C34B301

#align4
loc_8c1AFA14:
#data bank1b.loc_8c1b374E


loc_8c1AFA18:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l @(loc_8c1AFB4C,pc),r14 ; r14 set to 0x8C34B288
sts.l pr,@-r15
mov r14,r4 ; r4 set to 0x8C34B288
mov.b @(0x09,r4),r0
extu.b r0,r0
tst 0x80,r0
bf loc_8c1AFA30
bra loc_8c1AFB3A
nop

#align4
loc_8c1AFA30:
#data 0x600C8446
#data 0x8905C808
#data 0xD445D146
#data 0x63426212
#data 0x24223238

#align4
loc_8c1AFA44:
#data 0xD146D344
#data 0x6530D244
#data 0x6420410B
#data 0x430BD344
#data 0x84E9E401
#data 0x80E9C97F
#data 0x2F36E301
#data 0x2FD6ED00
#data 0xE610E508
#data 0xD23F2FD6
#data 0x420B67D3
#data 0xD33EE407
#data 0x7F0C430B
#data 0x420BD23D
#data 0x84E364D3
#data 0x80E3C917
#data 0xC9F084E6
#data 0x84EA80E6
#data 0x80EAC9FB
#data 0xC9DE84EC
#data 0x64E380EC
#data 0x60407410
#data 0x2400C97F
#data 0xC9FD6040
#data 0x63E32400
#data 0x60307314
#data 0x2300C97F
#data 0x731563E3
#data 0xC9AF6030
#data 0x63E32300
#data 0x6030731A
#data 0x2300C91F
#data 0x731B63E3
#data 0xC97F6030
#data 0x63E32300
#data 0x6030731D
#data 0x2300C9DF
#data 0x63C3DC26
#data 0x60307310
#data 0x2300C902
#data 0x000960D3
#data 0x60C380C1
#data 0x70150009
#data 0x600C6000
#data 0x8902C820
#data 0x420BD21F
#data 0xE401

loc_8c1AFAFE:
#data 0x60C3
#data 0x70150009
#data 0x600C6000
#data 0x8902C840
#data 0x420BD21B
#data 0xE401

loc_8c1AFB12:
#data 0xD31B
#data 0xE400430B
#data 0x420BD21A
#data 0xD31AE401
#data 0x65329012
#data 0xD419D21A
#data 0x420B055D
#data 0xD319655D
#data 0x0009430B
#data 0xC9DF84EB
#data 0x80EB


loc_8c1AFB3A:
lds.l @r15+,pr
mov.l @(loc_8c1AFB98,pc),r3 ; r3 set to 0x8C1BFAAC
mov 0x00,r4 ; r4 set to 0x00
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14
#data 0x000000A4

#align4
loc_8c1AFB4C:
#data 0x8C34B288
#data 0x8C34B12C
#data 0x8C34B2CC
#data 0x8C34B141
#data 0x8C34B140

#align4
loc_8c1AFB60:
#data bank19.loc_8c198A10

loc_8c1AFB64:
#data bank19.loc_8c19FE46

loc_8c1AFB68:
#data bank1b.loc_8c1b646E

loc_8c1AFB6C:
#data bank19.loc_8c19D25A

loc_8c1AFB70:
#data bank19.loc_8c19FEEC
#data 0x8C34AF50

#align4
loc_8c1AFB78:
#data loc_8c1A122A

loc_8c1AFB7C:
#data loc_8c1A124C

loc_8c1AFB80:
#data loc_8c1A1208

loc_8c1AFB84:
#data loc_8c1A1290
#data 0x8C34B1F8
#data 0x8C34B124

#align4
loc_8c1AFB90:
#data bank1b.loc_8c1b3EEC

loc_8c1AFB94:
#data bank19.loc_8c19FDFA

loc_8c1AFB98:
#data bank1b.loc_8c1bFAAC

loc_8c1AFB9C:
#data 0x4F222FE6
#data 0x84E6DE9B
#data 0xC808600C
#data 0xB0B38901
#data 0x0009

loc_8c1AFBAE:
#data 0xD299
#data 0x2230E300
#data 0x731663E3
#data 0xC97F6030
#data 0x84E72300
#data 0x80E7CB01
#data 0xCB4084E6
#data 0x84E580E6
#data 0x80E5CB05
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1AFBD6:
sts.l pr,@-r15
bsr loc_8c1AFE8A
nop
mov.l @(loc_8c1AFE10,pc),r4 ; r4 set to 0x8C34B288
mov r4,r3 ; r3 set to 0x8C34B288
add 0x16,r3 ; r3 set to 0x8C34B29E
mov.b @r3,r0
and 0x7F,r0
mov.b r0,@r3 ; r3 ??? bc r0 is ???
mov.b @(0x07,r4),r0
or 0x01,r0
mov.b r0,@(0x07,r4)
mov.b @(0x06,r4),r0
or 0x40,r0
mov.b r0,@(0x06,r4)
mov.b @(0x05,r4),r0
lds.l @r15+,pr
or 0x03,r0
rts
mov.b r0,@(0x05,r4)
;-------------------------------------------------------------------------------

loc_8c1AFBFE:
sts.l pr,@-r15
bsr loc_8c1AFE8A
nop
mov.l @(loc_8c1AFE14,pc),r3 ; r3 set to 0x8C34B17A
mov 0x00,r2 ; r2 set to 0x00
mov.b r2,@r3 ; r3 ??
mov.l @(loc_8c1AFE10,pc),r4 ; r4 set to 0x8C34B288
mov r4,r2 ; r2 set to 0x8C34B288
add 0x16,r2 ; r2 set to 0x8C34B29E
mov.b @r2,r0
and 0x7F,r0
mov.b r0,@r2 ; r2 ??? bc r0 is ???
mov.b @(0x07,r4),r0
or 0x01,r0
mov.b r0,@(0x07,r4)
mov.b @(0x06,r4),r0
or 0x40,r0
mov.b r0,@(0x06,r4)
mov.b @(0x05,r4),r0
lds.l @r15+,pr
or 0x09,r0
rts
mov.b r0,@(0x05,r4)
;-------------------------------------------------------------------------------

#align4
loc_8c1AFC2C:
#data 0xB12C4F22
#data 0xD4770009
#data 0x73166343
#data 0xC97F6030
#data 0x84472300
#data 0x8047CB01
#data 0xCB408446
#data 0xD2738046
#data 0xE054E304
#data 0xE3412231
#data 0x4F26D471
#data 0x80412430
#data 0x8042E05A
#data 0x6030D36F
#data 0x8043000B
;-------------------------------------------------------------------------------
#data 0x7FFC4F22
#data 0x2F40B10D
#data 0x6343D467
#data 0x60307316
#data 0x2300C97F
#data 0xCB018447
#data 0x84468047
#data 0x8046CB40
#data 0xD263E054
#data 0x2231E306
#data 0xD462E341
#data 0x80412430
#data 0x8042E044
#data 0x8043E053
#data 0x8044E03D
#data 0x7F0460F0
#data 0x70304F26
#data 0xD35C8045
#data 0x80466030
#data 0x0009000B
;-------------------------------------------------------------------------------

loc_8c1AFCB8:
sts.l pr,@-r15
bsr loc_8c1AFE8A
nop
mov.l @(loc_8c1AFE10,pc),r4 ; r4 set to 0x8C34B288
mov r4,r3 ; r3 set to 0x8C34B288
add 0x16,r3 ; r3 set to 0x8C34B29E
mov.b @r3,r0
and 0x7F,r0
mov.b r0,@r3 ; r3 ??? bc r0 is ???
mov.b @(0x07,r4),r0
or 0x01,r0
mov.b r0,@(0x07,r4)
mov.b @(0x06,r4),r0
or 0x40,r0
mov.b r0,@(0x06,r4)
mov.l @(loc_8c1AFE18,pc),r2 ; r2 set to 0x8C34B034
mov 0x04,r3 ; r3 set to 0x04
mov 0x54,r0 ; r0 set to 0x54
mov.w r3,@r2 ; r2 ??
mov 0x41,r3 ; r3 set to 0x41
mov.l @(loc_8c1AFE1C,pc),r4 ; r4 set to 0x8C34AFB3
lds.l @r15+,pr
mov.b r3,@r4 ; r4 ??
mov.b r0,@(0x01,r4)
mov 0x4F,r0 ; r0 set to 0x4F
mov.b r0,@(0x02,r4)
mov.l @(loc_8c1AFE20,pc),r3 ; r3 set to 0x8C34B036
mov.b @r3,r0 ; r0 ??
rts
mov.b r0,@(0x03,r4)
;-------------------------------------------------------------------------------

loc_8c1AFCF4:
sts.l pr,@-r15
bsr loc_8c1AFD14
nop
mov.l @(loc_8c1AFE28,pc),r3 ; r3 set to 0x8C1AEC3A
mov.l @(loc_8c1AFE24,pc),r4 ; r4 set to 0x8C34AF53
jsr @r3
mov.b @r4,r4 ; r4 ??
mov.l @(loc_8c1AFE2C,pc),r2 ; r2 set to 0x8C1AED24
mov 0x00,r5 ; r5 set to 0x00
jsr @r2
mov r5,r4 ; r4 set to 0x00
mov.l @(loc_8c1AFE18,pc),r2 ; r2 set to 0x8C34B034
mov 0x00,r3 ; r3 set to 0x00
mov.w r3,@r2 ; r2 ??
bra loc_8c1AFD44
lds.l @r15+,pr

loc_8c1AFD14:
mov.l @(loc_8c1AFE10,pc),r4 ; r4 set to 0x8C34B288
sts.l pr,@-r15
mov r4,r1 ; r1 set to 0x8C34B288
add 0x06,r1 ; r1 set to 0x8C34B28E
mov.b @r1,r0
extu.b r0,r0
tst 0x04,r0
bf loc_8c1AFD3E
mov.b @r1,r0
and 0xF8,r0
or 0x0C,r0
mov.b r0,@r1 ; r1 ??? bc r0 is ???
mov r4,r3 ; r3 set to 0x8C34B288
add 0x16,r3 ; r3 set to 0x8C34B29E
mov.b @r3,r0
mov.l @(loc_8c1AFE30,pc),r2 ; r2 set to 0x8C1B3A32
and 0x7F,r0
jsr @r2
mov.b r0,@r3 ; r3 ??? bc r0 is ???
bra loc_8c1AFE8A
lds.l @r15+,pr

loc_8c1AFD3E:
lds.l @r15+,pr
rts
nop
;-------------------------------------------------------------------------------

loc_8c1AFD44:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
sts.l pr,@-r15
mov.l @(loc_8c1AFE10,pc),r13 ; r13 set to 0x8C34B288
add 0xF8,r15
mov.b @(0x06,r13),r0
and 0xBF,r0
mov.b r0,@(0x06,r13)
mov.l @(loc_8c1AFE34,pc),r12 ; r12 set to 0x8C34AF50
mov 0x00,r11 ; r11 set to 0x00
mov r12,r0 ; r0 set to 0x8C34AF50
nop
add 0x31,r0 ; r0 set to 0x8C34AF81
mov.b @r0,r0 ; r0 ??
extu.b r0,r0
tst 0x40,r0
bt/s loc_8c1AFDA6
mov r12,r14 ; r14 set to 0x8C34AF50
mov r14,r2 ; r2 set to 0x8C34AF50
add 0x30,r2 ; r2 set to 0x8C34AF80
mov r14,r1 ; r1 set to 0x8C34AF50
mov.l r11,@-r15
mov.b @r2,r3
add 0x2F,r1 ; r1 set to 0x8C34AF7F
mov 0x00,r7 ; r7 set to 0x00
mov.l r3,@-r15
mov.b @r1,r3
mov.l r3,@-r15
mov.b @(0x0C,r14),r0
mov.l r0,@-r15
mov r0,r2 ; r2 ??? bc r0 is ???
mov.b @(0x02,r14),r0
mov.l r0,@-r15
mov r0,r3
mov.l @(loc_8c1AFE38,pc),r3 ; r3 set to 0x8C34B141
mov.l @(loc_8c1AFE3C,pc),r2 ; r2 set to 0x8C34B140
mov.l @(loc_8c1AFE40,pc),r1 ; r1 set to 0x8C1A06C8
mov.b @r2,r5
mov.b @r3,r6
jsr @r1
mov 0x07,r4 ; r4 set to 0x07
mov r13,r3 ; r3 set to 0x8C34B288
add 0x16,r3 ; r3 set to 0x8C34B29E
add 0x14,r15
mov.b @r3,r0
bra loc_8c1AFE7A
and 0x7F,r0

loc_8c1AFDA6:
mov r13,r3
add 0x1F,r3
mov.b @r3,r0
and 0xFD,r0
mov.b r0,@r3
mov r13,r3
add 0x20,r3
mov.b @r3,r0
and 0xBF,r0
mov.b r0,@r3
mov r12,r0
nop
add 0x31,r0
mov.b @r0,r0
extu.b r0,r0
and 0x03,r0
cmp/eq 0x03,r0
bf/s loc_8c1AFDD0
mov 0x01,r5 ; r5 set to 0x01
bra loc_8c1AFDF6
mov r5,r14

loc_8c1AFDD0:
mov r12,r3
add 0x31,r3
mov.b @r3,r2
extu.b r2,r2
tst r5,r2
bt/s loc_8c1AFDE2
mov r12,r4
bra loc_8c1AFDF6
mov 0x05,r14

loc_8c1AFDE2:
mov r4,r0
nop
add 0x31,r0
mov.b @r0,r0
extu.b r0,r0
tst 0x04,r0
bt loc_8c1AFDF4
bra loc_8c1AFDF6
mov 0x02,r14

loc_8c1AFDF4:
mov r11,r14

loc_8c1AFDF6:
mov r15,r5
add 0x04,r5
bsr bank1b.loc_8c1b0050
mov r15,r4
mov.l @(loc_8c1AFE44,pc),r3 ; r3 set to 0x8C34B03C, r3 set to 0x8C34B03C
mov 0x10,r4 ; r4 set to 0x10, r4 set to 0x10
mov.b @r3,r0
extu.b r0,r0
tst r0,r4
bt/s loc_8c1AFE48
mov.l r11,@-r15
bra loc_8c1AFE4A
mov 0x06,r4

#align4
loc_8c1AFE10:
#data 0x8C34B288

#align4
loc_8c1AFE14:
#data 0x8C34B17A

#align4
loc_8c1AFE18:
#data 0x8C34B034

#align4
loc_8c1AFE1C:
#data 0x8C34AFB3

#align4
loc_8c1AFE20:
#data 0x8C34B036

#align4
loc_8c1AFE24:
#data 0x8C34AF53

#align4
loc_8c1AFE28:
#data loc_8c1AEC3A

loc_8c1AFE2C:
#data loc_8c1AED24

loc_8c1AFE30:
#data bank1b.loc_8c1b3A32

loc_8c1AFE34:
#data 0x8C34AF50

#align4
loc_8c1AFE38:
#data 0x8C34B141

#align4
loc_8c1AFE3C:
#data 0x8C34B140

#align4
loc_8c1AFE40:
#data loc_8c1A06C8

loc_8c1AFE44:
#data 0x8C34B03C


loc_8c1AFE48:
mov 0x0B,r4 ; r4 set to 0x0B

loc_8c1AFE4A:
mov.b @(0x08,r15),r0
mov r14,r7
mov r0,r2
mov.l r2,@-r15
mov.b @(0x08,r15),r0
mov r0,r3
mov.l r3,@-r15
mov.b @(0x0C,r12),r0
mov.l r0,@-r15
mov r0,r2
mov.b @(0x02,r12),r0
mov r0,r3
mov.l r0,@-r15
mov.l @(loc_8c1B0020,pc),r3 ; r3 set to 0x8C34B141, r3 set to 0x8C34B141
mov.l @(loc_8c1B0028,pc),r1 ; r1 set to 0x8C1A06C8, r1 set to 0x8C1A06C8
mov.b @r3,r6
mov.l @(loc_8c1B0024,pc),r2 ; r2 set to 0x8C34B140, r2 set to 0x8C34B140
jsr @r1
mov.b @r2,r5
mov r13,r3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???
add 0x16,r3
add 0x14,r15
mov.b @r3,r0
or 0x80,r0

loc_8c1AFE7A:
mov.b r0,@r3
add 0x08,r15
lds.l @r15+,pr
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1AFE8A:
#data 0x2FE6
#data 0x2FC62FD6
#data 0x4F22EC00
#data 0x7FF8DD65
#data 0x000960D3
#data 0x60007031
#data 0xC840600C
#data 0x6ED38D18
#data 0x723062E3
#data 0x2FC661E3
#data 0x712F6320
#data 0x2F36E700
#data 0x2F366310
#data 0x2F0684EC
#data 0x84E26203
#data 0x63032F06
#data 0xD256D355
#data 0x6520D156
#data 0x410B6630
#data 0x7F14E407

#align4
loc_8c1AFED8:
#data 0x6343D455
#data 0x60307320
#data 0x2300C9BF
#data 0x73166343
#data 0xC97F6030
#data 0x63432300
#data 0x6030731F
#data 0x2300C9FD
#data 0x000960D3
#data 0x60007031
#data 0xC903600C
#data 0x8F028803
#data 0xA013E501
#data 0x6E53

loc_8c1AFF0E:
#data 0x63D3
#data 0x62307331
#data 0x2258622C
#data 0x64D38D02
#data 0xEE05A00A

#align4
loc_8c1AFF20:
#data 0x00096043
#data 0x60007031
#data 0xC804600C
#data 0xA0018901
#data 0xEE02

loc_8c1AFF32:
#data 0x6EC3

#align4
loc_8c1AFF34:
#data 0x750465F3
#data 0x64F3B08A
#data 0x67E32FC6
#data 0x620384F8
#data 0x84F82F26
#data 0x2F366303
#data 0x2F0684DC
#data 0x84D26203
#data 0x63032F06
#data 0xD232D331
#data 0x6520D132
#data 0x410B6630
#data 0x7F1CE406
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8c1AFF72:
mov.l r14,@-r15
mov 0x03,r5 ; r5 set to 0x03
mov.l @(loc_8c1B0038,pc),r4 ; r4 set to 0x8C34AF66
mov 0x01,r2 ; r2 set to 0x01
sts.l pr,@-r15
mov.b @r4,r3
mov.l @(loc_8c1B0034,pc),r14 ; r14 set to 0x8C19FEEC
extu.b r3,r3
and r5,r3
cmp/gt r2,r3
bt loc_8c1AFF90
jsr @r14
mov r2,r4 ; r4 set to 0x01
bra loc_8c1AFFA4
nop

loc_8c1AFF90:
mov.b @r4,r0
extu.b r0,r0
and r5,r0
cmp/eq 0x02,r0
bf loc_8c1AFF9E
bra loc_8c1AFFA0
mov 0x02,r4

loc_8c1AFF9E:
mov 0x03,r4 ; r4 set to 0x03

loc_8c1AFFA0:
jsr @r14
nop

loc_8c1AFFA4:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8c1AFFAA:
#data 0x2FE6
#data 0xDD202FD6
#data 0xDE224F22
#data 0x844764D3
#data 0xC808600C
#data 0x63E08B1B
#data 0x89282338
#data 0x6230D31E
#data 0x8B242228
#data 0x600C8441
#data 0x8B20C801
#data 0xD31BD21C
#data 0x6432420B
#data 0x2008600E
#data 0x84D98919
#data 0xC880600C
#data 0xD2188B0B
#data 0x0009420B
#data 0x2008600E
#data 0x8905

loc_8c1AFFF6:
#data 0xE200
#data 0x84D12E20
#data 0xA00AC9FE
#data 0x80D1

loc_8c1B0002:
#data 0x63E0
#data 0x2E3073FF
#data 0xCB0184D1
#data 0x4F2680D1
#data 0xADF46DF6
#data 0x6EF6

loc_8c1B0016:
#data 0x4F26
#data 0x000B6DF6
#data 0x00006EF6

#align4
loc_8c1B0020:
#data 0x8C34B141

#align4
loc_8c1B0024:
#data 0x8C34B140

#align4
loc_8c1B0028:
#data loc_8c1A06C8
#data 0x8C34AF50
#data 0x8C34B288

#align4
loc_8c1B0034:
#data bank19.loc_8c19FEEC

loc_8c1B0038:
#data 0x8C34AF66
#data 0x8C34B03A
#data 0x8C34AF51
#data 0x8C34B124

#align4
loc_8c1B0048:
#data bank1b.loc_8c1b3F0C

loc_8c1B004C:
#data bank19.loc_8c19FE3C
