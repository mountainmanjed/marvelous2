;==============================================
loc_8c1A0032:
	mov.l @(loc_8c1A0130,pc),r0 ; r0 set to 0x8C1C6708
	rts
	nop

;==============================================
loc_8c1A0038:
	mov.l @(loc_8c1A0134,pc),r3 ; r3 set to 0x8C1A0410
	jmp @r3
	nop

;==============================================
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
	cmp/eq r12,r3
	bf loc_8c1a007e
	bra loc_8c1a008a
	mov r5,r13

loc_8c1A007E:
	add 0x01,r14

loc_8c1a0080:
	extu.b r14,r0
	shll2 r0
	mov.l @(r0,r4),r3
	tst r3,r3
	bf loc_8c1a0076

loc_8c1a008a:
	exts.b r13,r13
	tst r13,r13
	bf loc_8c1a0094
	mov.l @(loc_8c1a014c,pc),r2
	mov.b r5,@r2

loc_8c1a0094:
	add 0x14,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

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

;==============================================
loc_8c1A00B0:
	rts
	nop

;==============================================
loc_8c1A00B4:
	rts
	nop

;==============================================
loc_8c1A00B8:
	rts
	nop

;==============================================
loc_8c1A00Bc:
	rts
	nop

;==============================================
loc_8c1A00c0:
	rts
	nop

;==============================================
loc_8c1A00C4:
	mov.l @(loc_8c1A0158,pc),r3 ; r3 set to 0x8C1C9A7A
	rts
	mov.b @r3,r0

;==============================================
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

;==============================================
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

;==============================================
loc_8c1A0100:
	add 0xFC,r15
	mov.b r4,@r15
	rts
	add 0x04,r15

;==============================================
loc_8c1A0108:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
#align4

loc_8c1A010c:
	#data 0x8C34BB93
loc_8c1A0110:
	#data 0x8C34B356
loc_8c1A0114:
	#data loc_8c1A0F28
loc_8c1A0118:
	#data 0x8C34BB48
loc_8c1A011c:
	#data 0x0000FFFF
loc_8c1A0120:
	#data 0x8C34B358
loc_8c1A0124:
	#data 0x8C347A30
loc_8c1A0128:
	#data loc_8c1A1000
loc_8c1A012c:
	#data 0x8C34BB4A
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
loc_8c1A0158:
	#data bank1c.loc_8c1c9A7A
loc_8c1A015C:
	#data bank18.loc_8c18BD66
loc_8c1A0160:
	#data loc_8c1A025C

;==============================================
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

loc_8c1A01C6:
	mov 0x00,r0 ; r0 set to 0x00
	rts
	nop

;==============================================
loc_8c1A01CC:
	mov.l @(loc_8c1A0230,pc),r3 ; r3 set to 0xA0600000
	mov 0x0F,r2 ; r2 set to 0x0F
	mov.b @r3,r4
	and r2,r4
	rts
	mov r4,r0

;==============================================
;unused
loc_8c1a01d8:
	mov.l @(0x54,PC),r3
	mov 0x10,r2
	mov.b @r3,r4
	and r2,r4
	rts 
	mov r4,r0

;==============================================
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

;==============================================
loc_8c1A0220:
	mov.l @(loc_8c1A0234,pc),r2 ; r2 set to 0x8C347A20
	rts
	mov.l r4,@r2

;==============================================
loc_8c1A0226:
	mov.l @(loc_8c1A0234,pc),r1 ; r1 set to 0x8C347A20
	mov 0x00,r3 ; r3 set to 0x00
	rts
	mov.l r3,@r1

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1A0230:
	#data 0xA0600000
loc_8c1A0234:
	#data 0x8C347A20
loc_8c1A0238:
	#data bank1c.loc_8c1c9A50
loc_8c1A023C:
	#data bank1c.loc_8c1c9998
loc_8c1A0240:
	#data bank1b.loc_8c1b4800

;==============================================
loc_8c1A0244:
	mov.l @(loc_8c1A0254,pc),r3 ; r3 set to 0x8C1B4396
	jmp @r3
	nop

;==============================================
loc_8c1A024A:
	rts
	nop

;==============================================
loc_8c1A024E:
	mov.l @(loc_8c1A0258,pc),r3 ; r3 set to 0x8C1B43E0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1A0254:
	#data bank1b.loc_8c1b4396
loc_8c1A0258:
	#data bank1b.loc_8c1b43E0

;==============================================
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

loc_8c1a027c:
	mov.b @r14,r3
	tst r3,r3
	bt loc_8c1a028e
	mov.l @(loc_8c1a0358,pc),r2
	mov.l @(loc_8c1a0354,pc),r3
	jsr @r2
	mov.l @r3,r4
	mov 0x00,r1
	mov.b r1,@r14

loc_8c1A028E:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
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

loc_8c1a02b4:
	mov.b @r14,r3
	tst r3,r3
	bt loc_8c1a02c6
	mov.l @(loc_8c1a0358,pc),r2
	mov.l @(loc_8c1a0360,pc),r3
	jsr @r2
	mov.l @r3,r4
	mov 0x00,r1
	mov.b r1,@r14

loc_8c1A02C6:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1A02CC:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l @(0x8C,PC),r11
	sts.l pr,@-r15
	mov.b @r11,r3
	tst r3,r3
	bf loc_8c1a0336
	mov.l @(0x88,PC),r2
	mov 0x01,r3
	jsr @r2
	mov.b r3,@r11
	mov.l @(0x84,PC),r5
	mov r0,r4
	mov.l @(0x84,PC),r12
	mov.l @r5,r3
	cmp/hi r4,r3
	bf loc_8c1a02f8
	mov.l @r12,r1
	add 0x01,r1
	mov.l r1,@r12

loc_8c1A02F8:
	mov r4,r13
	mov.l r4,@r5
	mov.l @(0x74,PC),r3
	shlr r13
	jsr @r3
	sub r13,r4
	mov r0,r1
	mov.l @(0x70,PC),r2
	mov.w @(0x3E,PC),r0
	jsr @r2
	nop 
	mov.l @(0x64,PC),r3
	mov r0,r14
	jsr @r3
	mov r13,r4
	mov r0,r1
	mov r0,r4
	mov.l @(0x5C,PC),r2
	mov.w @(0x2A,PC),r0
	jsr @r2
	nop 
	mov.l @r12,r2
	add r0,r14
	mov.l @(0x54,PC),r3
	mul.l r3,r2
	mov 0x00,r2
	mov.b r2,@r11
	sts macl,r3
	add r3,r14
	mov.l @(0x4C,PC),r3
	mov.l r14,@r3

loc_8c1A0336:
	lds.l @r15+,pr
	mov.l @(0x44,PC),r2
	mov.l @r15+,r11
	mov.l @r2,r0
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A0346:
	#data 0x0B40
loc_8c1A0348:
	#data 0x0900
loc_8c1A034a:
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
loc_8c1A037c:
	#data 0x0007DD44
loc_8c1A0380:
	#data bank1c.loc_8c1c9AD4

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1A03C8:
	#data bank17.loc_8c1780B2

;==============================================
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

;==============================================
loc_8c1A03EA:
	mov 0x00,r0 ; r0 set to 0x00
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
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

;==============================================
loc_8c1A040A:
	mov.l @(loc_8c1A042C,pc),r1 ; r1 set to 0x8C1C9B02
	rts
	mov.w @r1,r0

;==============================================
loc_8c1A0410:
	mov.l @(loc_8c1A0430,pc),r0 ; r0 set to 0x8C1C9AD8
	rts
	nop

;==============================================
loc_8c1A0416:
	mov.l @(loc_8c1A0428,pc),r3 ; r3 set to 0x8C347A28
	rts
	mov.l r4,@r3

;==============================================
loc_8c1A041C:
	mov.l @(loc_8c1A0424,pc),r1 ; r1 set to 0x8C347A2C
	mov 0x00,r2 ; r2 set to 0x00
	rts
	mov.l r2,@r1

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1A0424:
	#data 0x8C347A2C
loc_8c1A0428:
	#data 0x8C347A28
loc_8c1A042C:
	#data bank1c.loc_8c1c9B02
loc_8c1A0430:
	#data bank1c.loc_8c1c9AD8

;==============================================
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

;==============================================
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

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
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
	#align4

loc_8c1A0540:
	#data 0x8C347A30
loc_8c1A0544:
	#data 0x8C34BB96
loc_8c1A0548:
	#data 0x8C34BB99
loc_8c1A054C:
	#data 0x8C34BB98
loc_8c1A0550:
	#data 0x8C34BB95
loc_8c1A0554:
	#data 0x8C34B341
loc_8c1A0558:
	#data 0x8C34B34A

;==============================================
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
	mov.b @r12,r0
	mov r14,r2
	mov.w @(0xCC,PC),r3
	add 0x78,r2
	extu.b r0,r0
	muls.w r3,r0
	extu.b r13,r4
	shll r4
	sts macl,r0
	exts.w r0,r0
	add r2,r0
	mov.w @(0xBC,PC),r2
	add r0,r2
	add r2,r4
	jsr @r9
	mov.w @r4,r4
	mov.b @r12,r0
	mov r14,r2
	mov.w @(0xAC,PC),r3
	add 0x78,r2
	extu.b r0,r0
	muls.w r3,r0
	extu.b r13,r1
	shll r1
	add 0x01,r13
	sts macl,r0
	exts.w r0,r0
	add r2,r0
	mov.w @(0x9A,PC),r2
	add r0,r2
	add r2,r1
	mov.w r11,@r1

loc_8c1a05c6:
	extu.b r13,r0
	cmp/eq 0x04,r0
	bt loc_8c1a05e8
	mov.l @(loc_8c1a0660,pc),r3
	extu.b r13,r1
	mov.w @(loc_8c1a065a,pc),r2
	shll r1
	mov.b @r3,r0
	mov.l @(loc_8C1A0668,pc),r3
	extu.b r0,r0
	muls.w r2,r0
	sts macl,r0
	exts.w r0,r0
	add r3,r0
	mov.w @(r0,r1),r1
	tst r1,r1
	bf loc_8c1a0586

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

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A065A:
	#data 0x008C
loc_8c1A065C:
	#data 0x0084
	#align4

loc_8c1A0660:
	#data 0x8C34BB97
loc_8c1A0664:
	#data bank1b.loc_8c1b3C8C
loc_8c1a0668:
	#data 0x8C347B2C
loc_8c1A066C:
	#data 0x8C34BB96
loc_8c1A0670:
	#data 0x8C34B341
loc_8c1A0674:
	#data 0x8C34B34A

;==============================================
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

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A0732:
	#data 0x008C
loc_8c1A0734:
	#data 0x00FE
	#align4

loc_8c1A0738:
	#data 0x8C34BB96
loc_8c1A073C:
	#data 0x8C347A30
loc_8c1A0740:
	#data 0x8C34BB97
loc_8c1A0744:
	#data 0x8C34B338
loc_8c1A0748:
	#data 0x8C34B339
loc_8c1A074C:
	#data 0x8C34B33A
loc_8c1A0750:
	#data 0x8C34B33B
loc_8c1A0754:
	#data 0x8C34B33C
loc_8c1A0758:
	#data 0x8C34B33D
loc_8c1A075C:
	#data 0x8C34B33E
loc_8c1A0760:
	#data 0x8C34B33F
loc_8c1A0764:
	#data 0x8C34B340

;==============================================
loc_8c1a0768:
	mov.w @(loc_8C1A07F6,pc),r0
	mov.l @(loc_8C1A07FC,pc),r12
	mov.b @(r0,r12),r3
	extu.b r14,r2
	extu.b r3,r3
	cmp/eq r2,r3
	bt loc_8c1a077c
	mov.w @(loc_8C1A07F8,pc),r4
	bsr loc_8c1a1296
	mov.b r14,@(r0,r12)

loc_8c1a077c:
	mov r11,r0
	nop
	cmp/eq 0x00,r0
	bt loc_8c1a07b0
	cmp/eq 0x01,r0
	bt loc_8c1a0816
	cmp/eq 0x02,r0
	bt loc_8c1a0816
	cmp/eq 0x03,r0
	bt loc_8c1a0816
	cmp/eq 0x04,r0
	bt loc_8c1a0816
	cmp/eq 0x05,r0
	bt loc_8c1a0816
	cmp/eq 0x06,r0
	bt loc_8c1a07ee
	cmp/eq 0x07,r0
	bt loc_8c1a07ce
	cmp/eq 0x0A,r0
	bt loc_8c1a0816
	cmp/eq 0x0B,r0
	bt loc_8c1a07e6
	cmp/eq 0x0D,r0
	bt loc_8c1a0808
	bra loc_8c1a084e
	nop

loc_8c1a07b0:
	mov 0x30,r0
	mov r9,r7
	mov.b @(r0,r15),r2
	mov 0x30,r0
	mov r10,r6
	mov.l r2,@-r15
	mov.b @(r0,r15),r3
	mov.l r3,@-r15
	mov.l r8,@-r15
	mov.b @(0x0C,r15),r0
	mov r0,r5
	bsr loc_8c1a08ae
	mov r14,r4
	bra loc_8c1a0816
	add 0x0C,r15

loc_8c1a07ce:
	mov 0x05,r3
	mov 0x76,r0
	mov.b @(r0,r12),r2
	or r3,r2
	mov.b r2,@(r0,r12)
	bsr loc_8c1a1296
	mov 0x10,r4
	bsr loc_8c1a1208
	mov 0x00,r4
	mov.l @(loc_8C1A0800,pc),r2
	bra loc_8c1a0848
	mov.b r13,@r2

loc_8c1a07e6:
	mov.l @(loc_8c1a0804,pc),r3
	mov 0x72,r0
	jsr @r3
	mov.b @(r0,r12),r4

loc_8c1a07ee:
	bsr loc_8c1a0862
	nop
	bra loc_8c1a0816
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1A07F6:
	#data 0x0938
loc_8C1A07F8:
	#data 0x0800
	#align4

loc_8C1A07FC:
	#data 0x8C347A30
loc_8C1A0800:
	#data 0x8C34B341
loc_8c1a0804:
	#data bank1b.loc_8c1b7412

;==============================================
loc_8c1a0808:
	bsr loc_8c1a0862
	nop
	mov.l @(loc_8C1A0930,pc),r3
	mov 0x00,r4
	mov.b r4,@r3
	mov.l @(loc_8C1A0934,pc),r2
	mov.b r4,@r2

loc_8c1a0816:
	mov.l @(loc_8C1A0938,pc),r1
	mov.b r13,@r1
	mov.l @(loc_8C1A093C,pc),r3
	mov.b r14,@r3
	mov.l @(loc_8C1A0940,pc),r0
	mov.b @r15,r2
	mov.b r2,@r0
	mov 0x2C,r0
	mov.l @(loc_8C1A0944,pc),r1
	mov.b r10,@r1
	mov.l @(loc_8C1A0948,pc),r3
	mov.b r9,@r3
	mov.l @(loc_8C1A094C,pc),r2
	mov.b r8,@r2
	mov.b @(r0,r15),r1
	mov.l @(loc_8C1A0950,pc),r0
	mov.b r1,@r0
	mov 0x30,r0
	mov.b @(r0,r15),r3
	mov 0x34,r0
	mov.l @(loc_8C1A0954,pc),r1
	mov.b r3,@r1
	mov.b @(r0,r15),r3
	mov.l @(loc_8C1A0958,pc),r0
	mov.b r3,@r0

loc_8c1a0848:
	mov.l @(loc_8C1A095C,pc),r1
	mov.w @(loc_8C1A092C,pc),r2
	mov.b r2,@r1

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

;==============================================
loc_8c1A0862:
	mov.l r14,@-r15
	mov 0x76,r0
	sts.l pr,@-r15
	mov.l @(0xF4,PC),r14
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x02,r0
	bf loc_8c1a08a8
	mov 0x05,r3
	mov 0x76,r0
	mov.b @(r0,r14),r2
	or r3,r2
	mov.b r2,@(r0,r14)
	bsr loc_8c1a1296
	mov 0x10,r4
	mov 0x02,r3
	mov 0x76,r0
	mov.b @(r0,r14),r2
	or r3,r2
	mov.b r2,@(r0,r14)
	bsr loc_8c1a1296
	mov 0x10,r4
	mov.w @(0x9C,PC),r3
	mov 0x76,r0
	mov.b @(r0,r14),r2
	and r3,r2
	mov.b r2,@(r0,r14)
	mov.w @(0x90,PC),r2
	mov.b @(r0,r14),r1
	and r2,r1
	mov.b r1,@(r0,r14)
	lds.l @r15+,pr
	mov 0x10,r4
	bra loc_8c1a1296
	mov.l @r15+,r14

loc_8c1A08A8:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1A08AE:
	mov.l r14,@-r15
	mov 0x28,r0
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov r6,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov r5,r9
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b r7,@r15
	mov.l @(0x6C,PC),r2
	mov.b @(r0,r15),r10
	mov 0x2C,r0
	mov.b @r2,r3
	mov.l @(0x68,PC),r11
	tst r3,r3
	bf.s loc_8c1a0964
	mov.b @(r0,r15),r8
	mov.b @r11,r0
	extu.b r13,r3
	extu.b r0,r0
	cmp/eq r3,r0
	bt loc_8c1a08e6
	mov.b r13,@r11

loc_8c1A08E6:
	mov.l @(0x5C,PC),r2
	extu.b r12,r1
	mov.b @r2,r3
	extu.b r3,r3
	cmp/eq r1,r3
	bt loc_8c1a0906
	mov.l r8,@-r15
	mov 0x2C,r0
	mov.l r10,@-r15
	mov r12,r5
	mov.b @(r0,r15),r7
	mov.b @(0x8,r15),r0
	mov r0,r6
	bsr loc_8c1a0a00
	mov r9,r4
	add 0x08,r15

loc_8c1A0906:
	mov 0x24,r0
	mov.b r13,@r11
	mov.l @(0x38,PC),r2
	mov.b r12,@r2
	mov.b @r15,r3
	mov.l @(0x34,PC),r1
	mov.b r3,@r1
	mov.b @(r0,r15),r3
	mov.l @(0x34,PC),r0
	mov.b r3,@r0
	mov.l @(0x34,PC),r2
	mov.b r10,@r2
	mov.l @(0x34,PC),r3
	mov.b r8,@r3
	mov.w @(0x6,PC),r1
	mov.l @(0x34,PC),r0
	mov.b r1,@r0
	bra loc_8c1a09ec
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1a092c:
	#data 0x00FE
loc_8c1a092e:
	#data 0x00FB
	#align4

loc_8c1a0930:
	#data 0x8C34B34B
loc_8c1a0934:
	#data 0x8C34B34A
loc_8c1a0938:
	#data 0x8C34B341
loc_8c1a093c:
	#data 0x8C34B342
loc_8c1a0940:
	#data 0x8C34B343
loc_8c1a0944:
	#data 0x8C34B344
loc_8c1a0948:
	#data 0x8C34B345
loc_8c1a094c:
	#data 0x8C34B346
loc_8c1a0950:
	#data 0x8C34B347
loc_8c1a0954:
	#data 0x8C34B348
loc_8c1a0958:
	#data 0x8C34B349
loc_8c1a095c:
	#data 0x8C34B338
loc_8c1a0960:
	#data 0x8C347A30

;==============================================
loc_8c1A0964:
	mov.l @(0x14C,PC),r14
	mov 0x05,r3
	mov 0x76,r0
	mov.b @(r0,r14),r2
	or r3,r2
	mov.b r2,@(r0,r14)
	bsr loc_8c1a1296
	mov 0x10,r4
	mov 0x04,r3
	mov.b r13,@r11
	extu.b r9,r5
	tst r5,r3
	bt.s loc_8c1a0982
	mov 0x09,r4
	mov 0x0A,r4

loc_8c1A0982:
	mov 0x18,r0
	and r5,r0
	cmp/eq 0x10,r0
	bf.s loc_8c1a098e
	mov 0x20,r2
	add 0x01,r4

loc_8c1A098E:
	tst r2,r5
	bt loc_8c1a0994
	add 0x01,r4

loc_8c1A0994:
	mov 0x2C,r0
	mov.l @(0x120,PC),r2
	mov r12,r5
	mov.w r4,@r2
	mov.l r8,@-r15
	mov.l r10,@-r15
	mov.b @(r0,r15),r7
	mov.b @(0x8,r15),r0
	mov r0,r6
	bsr loc_8c1a0a00
	mov r9,r4
	mov 0x76,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x02,r0
	bt.s loc_8c1a09c4
	add 0x08,r15
	mov.w @(0xF2,PC),r3
	mov 0x76,r0
	mov.b @(r0,r14),r2
	and r3,r2
	mov.b r2,@(r0,r14)
	bsr loc_8c1a1296
	mov 0x10,r4

loc_8c1A09C4:
	mov.w @(0xE6,PC),r3
	mov 0x76,r0
	mov.b @(r0,r14),r2
	and r3,r2
	mov.b r2,@(r0,r14)
	mov.w @(0xDE,PC),r2
	mov.b @(r0,r14),r1
	and r2,r1
	mov.b r1,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov 0x10,r4
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c1a1296
	mov.l @r15+,r14

loc_8c1A09EC:
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

;==============================================
loc_8c1A0A00:
	sts.l pr,@-r15
	add 0xF8,r15
	mov r6,r0
	nop 
	mov 0x4A,r3
	mov.b r0,@(0x4,r15)
	mov.b r7,@r15
	mov.l @(0xA4,PC),r6
	add r6,r3
	mov.b @r3,r3
	mov.l @(0xA4,PC),r7
	extu.b r5,r1
	mov 0x00,r2
	mov r1,r0
	nop 
	cmp/eq 0x02,r0
	bf.s loc_8c1a0a52
	mov.b r2,@r7
	mov 0x7F,r3
	mov 0x4A,r0
	mov.b @(r0,r6),r2
	and r3,r2
	mov.b r2,@(r0,r6)
	mov 0x40,r2
	mov.b @(r0,r6),r1
	or r2,r1
	mov.b r1,@(r0,r6)
	mov 0x10,r0
	mov 0x4B,r1
	mov.b @(r0,r15),r0
	add r6,r1
	mov.b r0,@r1
	mov 0x4C,r0
	mov.b @(r0,r6),r1
	and r3,r1
	mov.b r1,@(r0,r6)
	mov.b @(r0,r6),r1
	or r2,r1
	mov.b r1,@(r0,r6)
	bra loc_8c1a0a88
	nop 

loc_8c1A0A52:
	cmp/eq 0x04,r0
	bt loc_8c1a0a5e
	mov r1,r0
	nop 
	cmp/eq 0x07,r0
	bf loc_8c1a0ac0

loc_8c1A0A5E:
	mov 0x7F,r3
	mov 0x4A,r0
	mov.b @(r0,r6),r2
	and r3,r2
	mov.b r2,@(r0,r6)
	mov.w @(0x46,PC),r2
	mov.b @(r0,r6),r1
	and r2,r1
	mov.b r1,@(r0,r6)
	mov 0x10,r0
	mov 0x4B,r1
	mov.b @(r0,r15),r0
	add r6,r1
	mov.b r0,@r1
	mov 0x4C,r0
	mov.b @(r0,r6),r1
	and r3,r1
	mov.b r1,@(r0,r6)
	mov.b @(r0,r6),r1
	and r2,r1
	mov.b r1,@(r0,r6)

loc_8c1A0A88:
	mov.b @(0xC,r15),r0
	mov r0,r3
	mov 0x4D,r0
	mov.b r3,@(r0,r6)
	mov 0x4E,r0
	mov r0,r3
	add 0x71,r3
	mov.b @(r0,r6),r2
	and r3,r2
	mov.b r2,@(r0,r6)
	mov.b @r7,r0
	mov r6,r4
	add 0x4E,r4
	and 0xFE,r0
	mov.b r0,@r7
	mov.b @r7,r0
	bra loc_8c1a0aee
	or 0x02,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1a0aac:
	#data 0x00FD
loc_8c1a0aae:
	#data 0x00FB
loc_8c1a0ab0:
	#data 0x00FE
loc_8c1a0ab2:
	#data 0x00BF
	#align4

loc_8c1a0ab4:
	#data 0x8C347A30
loc_8c1a0ab8:
	#data 0x8C34B354
loc_8c1a0abc:
	#data 0x8C34BBA2

;==============================================
loc_8c1A0AC0:
	mov 0x4A,r0
	mov r6,r4
	mov r0,r3
	add 0x75,r3
	add 0x4A,r4
	mov.b @(r0,r6),r2
	and r3,r2
	mov.b r2,@(r0,r6)
	mov 0x4C,r0
	mov r0,r2
	add 0x34,r2
	mov.b @(r0,r6),r1
	or r2,r1
	mov.b r1,@(r0,r6)
	mov 0x4E,r0
	mov.b @(r0,r6),r1
	or r2,r1
	mov.b r1,@(r0,r6)
	mov.b @r7,r0
	or 0x01,r0
	mov.b r0,@r7
	mov.b @r7,r0
	and 0xFD,r0

loc_8c1A0AEE:
	mov.b r0,@r7
	mov.b @(0x4,r15),r0
	bsr loc_8c1a0b0a
	mov r0,r5
	mov.w @(0xB4,PC),r4
	bsr loc_8c1a1296
	nop 
	mov.b @r15,r3
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(0xAC,PC),r2
	mov.b r3,@r2
	rts 
	nop 

;==============================================
loc_8c1A0B0A:
	extu.b r5,r3
	mov.l @(0xA4,PC),r7
	mov 0x7F,r2
	mov.l @(0xA4,PC),r6
	cmp/gt r2,r3
	bt.s loc_8c1a0b2e
	mov.l r4,@r7
	add 0x01,r4
	mov.b r5,@r4
	mov.b @(0xE,r6),r0
	or 0x20,r0
	mov.b r0,@(0xE,r6)
	mov.l @r7,r3
	mov.b @r3,r1
	and r2,r1
	mov.b r1,@r3
	bra loc_8c1a0b36
	nop 


loc_8c1A0B2E:
	mov.l @r7,r3
	mov.b @r3,r0
	or 0x80,r0
	mov.b r0,@r3


loc_8c1A0B36:
	mov r6,r3
	add 0x15,r3
	mov.b @r3,r0
	and 0xE0,r0
	mov.b r0,@r3
	mov.b @(0xE,r6),r0
	and 0xFC,r0
	mov.b r0,@(0xE,r6)
	mov.l @(0x74,PC),r2
	mov.l @(0x74,PC),r1
	mov.l @r2,r3
	rts 
	mov.l r3,@r1

;==============================================
loc_8c1A0B50:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x6C,PC),r14
	mov.b @r14,r0
	extu.b r0,r0
	tst 0x04,r0
	bt loc_8c1a0ba8
	mov.l @(0x68,PC),r3
	mov.b @r3,r0
	extu.b r0,r0
	tst 0x08,r0
	bf loc_8c1a0ba0
	mov.l @(0x60,PC),r2
	mov.b @r2,r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c1a0ba0
	mov.l @(0x3C,PC),r3
	mov.l @(0x48,PC),r0
	mov.b @r3,r2
	mov.l @r0,r1
	extu.b r2,r2
	shll r2
	add r1,r2
	mov.l @(0x38,PC),r1
	mov.l @r1,r3
	cmp/hs r2,r3
	bf loc_8c1a0ba8
	mov.b @r14,r0
	mov.l @(0x44,PC),r3
	and 0xFB,r0
	jsr @r3
	mov.b r0,@r14
	mov.b @r14,r0
	and 0xF0,r0
	mov.b r0,@r14
	mov.l @(0x38,PC),r3
	mov.b @r3,r0
	and 0xDC,r0
	mov.b r0,@r3

loc_8c1A0BA0:
	mov.l @(0x18,PC),r3
	mov.l @(0x1C,PC),r1
	mov.l @r3,r2
	mov.l r2,@r1

loc_8c1A0BA8:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1a0bae:
	#data 0x0080
	#align4
loc_8c1a0bb0:
	#data 0x8C34B346
loc_8c1a0bb4:
	#data 0x8C34BB9C
loc_8c1a0bb8:
	#data 0x8C34B288
loc_8c1a0bbc:
	#data 0x8C34B2CC
loc_8c1a0bc0:
	#data 0x8C34BB38
loc_8c1a0bc4:
	#data 0x8C34B29D
loc_8c1a0bc8:
	#data 0x8C34BB92
loc_8c1a0bcc:
	#data 0x8C347AA4
loc_8c1A0BD0:
	#data bank1b.loc_8c1b3DB0
loc_8c1A0BD4:
	#data 0x8C34B296

;==============================================
loc_8c1a0bd8:
	mov.l @(loc_8C1A0CE4,pc),r3
	mov.l @(loc_8C1A0CE0,pc),r4
	mov.b @r3,r5
	extu.b r5,r5
	tst r5,r5
	bt loc_8c1a0bf4
	mov r5,r0
	nop
	cmp/eq 0x01,r0
	bt loc_8c1a0bf4
	mov r5,r0
	nop
	cmp/eq 0x02,r0
	bf loc_8c1a0c30

loc_8c1a0bf4:
	mov.l @(loc_8C1A0CE8,pc),r2
	mov 0x7F,r1
	mov.b @r2,r3
	extu.b r3,r3
	cmp/gt r1,r3
	bt loc_8c1a0c30
	mov.l @(loc_8C1A0CEC,pc),r3
	mov.b @r3,r0
	extu.b r0,r0
	tst 0x08,r0
	bf loc_8c1a0c30
	mov.b @r4,r0
	extu.b r0,r0
	tst 0x20,r0
	bf loc_8c1a0c3e
	mov.b @r4,r0
	or 0x20,r0
	mov.b r0,@r4
	mov.l @(loc_8c1a0cf0,pc),r4
	mov.b @r4,r0
	or 0x80,r0
	mov.b r0,@r4
	mov.l @(loc_8c1a0cf4,pc),r2
	mov.l @r2,r3
	mov.b @r3,r0
	and 0x7F,r0
	mov.b r0,@r3
	mov.w @(loc_8c1a0cda,pc),r4
	bra loc_8c1a1296
	nop

loc_8c1a0c30:
	mov.b @r4,r0
	and 0xDC,r0
	mov.b r0,@r4
	mov.l @(loc_8C1A0CF8,pc),r2
	mov.l @(loc_8C1A0CFC,pc),r1
	mov.l @r2,r3
	mov.l r3,@r1

loc_8c1a0c3e:
	rts
	nop

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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A0CDA:
	#data 0x0080
loc_8c1A0CDC:
	#data 0x008C
	#align4

loc_8c1a0ce0:
	#data 0x8C34B296
loc_8c1a0ce4:
	#data 0x8C34B341
loc_8c1a0ce8:
	#data 0x8C34B345
loc_8c1a0cec:
	#data 0x8C34BB92
loc_8c1A0CF0:
	#data 0x8C34BB9B
loc_8c1A0CF4:
	#data 0x8C34BB9C
loc_8c1a0cf8:
	#data 0x8C34B2CC
loc_8c1a0cfc:
	#data 0x8C34BB38
loc_8c1A0D00:
	#data 0x8C347A30
loc_8c1A0D04:
	#data 0x8C34B288
loc_8c1A0D08:
	#data 0x8C34BB9A
loc_8c1A0D0C:
	#data bank19.loc_8c198E04

;==============================================
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

;==============================================
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

;==============================================
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

;==============================================
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

;==============================================
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

loc_8c1a0e08:
	mov.b @r5,r0
	add 0x01,r0
	and 0x07,r0
	mov.b r0,@r5
	mov.b @r4,r3
	add 0x01,r3
	mov.b r3,@r4

loc_8c1A0E16:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
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
loc_8c1A0E28:
	#data 0x8C34B341
loc_8c1A0E2C:
	#data 0x8C34B34B
loc_8c1A0E30:
	#data 0x8C34BB95
loc_8c1A0E34:
	#data 0x8C34BB99
loc_8c1A0E38:
	#data 0x0000FFFE

;==============================================
loc_8c1a0e3c:
	mov.l @(0xC8,PC),r1
	mov.b @r1,r2
	tst r2,r2
	bf loc_8c1a0e4c
	mov.w @(0xB8,PC),r0
	mov.l @(0xC4,PC),r2
	rts 
	mov.l r2,@r4

loc_8c1a0e4c:
	mov 0x00,r0
	rts 
	nop 

;==============================================
loc_8c1a0e52:
	mov.l @(0xB4,PC),r3
	rts 
	mov.b r4,@r3

;==============================================
loc_8c1a0e58:
	mov.l @(0xB4,PC),r2
	mov.b @r2,r6
	extu.b r6,r3
	tst r3,r3
	bt loc_8c1a0e6e
	extu.b r6,r6
	mov.w r6,@r5
	mov.l @(0xAC,PC),r1
	mov.l r1,@r4
	rts 
	mov 0x01,r0

loc_8c1a0e6e:
	mov 0x00,r1
	mov.w r1,@r5
	mov r1,r0
	nop 
	rts 
	nop 

;==============================================
loc_8c1a0e7a:
	mov.l @(0x94,PC),r2
	mov 0x00,r3
	rts 
	mov.b r3,@r2

;==============================================
loc_8c1A0E82:
	rts
	nop

;==============================================
loc_8c1A0E86:
	rts
	mov r4,r0

;==============================================
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

loc_8C1A0E9C:
	mov 0x00,r5

loc_8C1A0E9E:
	mov.l @(loc_8C1A0F18,pc),r14
	extu.b r5,r1
	mov.w @(loc_8C1A0F02,pc),r3
	shll r1
	mov.b @r14,r6
	mov.w @(loc_8C1A0F04,pc),r2
	extu.b r6,r6
	mov.l @(loc_8C1A0F1C,pc),r7
	muls.w r3,r6
	add r7,r2
	sts macl,r6
	exts.w r6,r6
	add r2,r6
	mov.w @(loc_8C1A0F06,pc),r2
	add r6,r2
	add r2,r1
	mov.w @r1,r0
	tst r0,r0
	bf/s loc_8C1A0EF2
	add 0x01,r5
	mov.w @(loc_8C1A0F06,pc),r1
	extu.b r5,r5
	add 0xFF,r5
	add r6,r1
	shll r5
	add r1,r5
	mov.w r4,@r5
	mov.l @(loc_8C1A0F20,pc),r4
	mov.b @r4,r2
	tst r2,r2
	bf loc_8C1A0EEA
	mov.l @(loc_8C1A0F24,pc),r1
	mov.b @r1,r0
	extu.b r0,r0
	tst 0x02,r0
	bf loc_8C1A0EEA
	bsr loc_8C1A0F28
	nop

loc_8C1A0EEA:
	lds.l @r15+,pr
	mov 0x01,r0
	rts
	mov.l @r15+,r14

;==============================================
loc_8C1A0EF2:
	extu.b r5,r0
	cmp/eq 0x04,r0
	bf loc_8C1A0E9E
	mov 0x00,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1A0F00:
	#data 0x0080
loc_8C1A0F02:
	#data 0x008C
loc_8C1A0F04:
	#data 0x04D8
loc_8C1A0F06:
	#data 0x0084
	#align4

loc_8C1A0F08:
	#data 0x8C34B34A
loc_8C1A0F0c:
	#data 0x8C3483E9
loc_8C1A0F10:
	#data 0x8C34B34B
loc_8C1A0F14:
	#data 0x8C348369
loc_8C1A0F18:
	#data 0x8C34BB99
loc_8C1A0F1C:
	#data 0x8C347A30
loc_8C1A0F20:
	#data 0x8C34BB95
loc_8C1A0F24:
	#data 0x8C34BB93

;==============================================
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

;==============================================
loc_8C1A0FDA:
	mov.l @(loc_8C1A1074,pc),r5
	mov.b @r5,r0
	extu.b r0,r0
	tst 0x02,r0
	bf loc_8C1A0FFC
	mov.w @(loc_8C1A1062,pc),r6
	extu.w r4,r2
	cmp/hi r6,r2
	bf loc_8C1A0FEE
	mov r6,r4

loc_8C1A0FEE:
	mov.l @(loc_8C1A1078,pc),r2
	mov.w r4,@r2
	mov.b @r5,r0
	mov.w @(loc_8C1A1064,pc),r4
	or 0x02,r0
	bra loc_8C1A1296
	mov.b r0,@r5

loc_8C1A0FFC:
	rts
	nop

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
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
loc_8C1A1062:
	#data 0x01F4
loc_8C1A1064:
	#data 0x0100
	#align4

loc_8c1A1068:
	#data 0x8C34BB98
loc_8c1A106C:
	#data 0x8C347A30
loc_8c1A1070:
	#data 0x0000FFFE
loc_8c1A1074:
	#data 0x8C34BB93
loc_8C1A1078:
	#data 0x8C34B356
loc_8c1A107C:
	#data 0x8C34B349
loc_8c1A1080:
	#data bank1b.loc_8c1b3C8C
loc_8c1A1084:
	#data 0x8C34BB9A

;==============================================
loc_8C1A1088:
	extu.b r5,r0
	cmp/eq 0x04,r0
	bf loc_8C1A1014

loc_8c1A108E:
	mov.l @(loc_8C1A1154,pc),r3
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bf loc_8C1A109E
	mov.l @(loc_8C1A1158,pc),r2
	mov.w @(loc_8C1A114C,pc),r1
	mov.b r1,@r2

loc_8C1A109E:
	rts
	nop

;==============================================
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

;==============================================
loc_8c1A10EA:
	mov 0x00,r0 ; r0 set to 0x00
	lds.l @r15+,pr
	rts
	nop

;==============================================
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

;==============================================
loc_8c1A1118:
	mov 0x00,r0 ; r0 set to 0x00
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C1A1120:
	mov.l @(loc_8C1A117C,pc),r2
	sts.l pr,@-r15
	mov.b @r2,r3
	tst r3,r3
	bf loc_8C1A11D4
	mov.l @(loc_8C1A1170,pc),r6
	mov.w @(loc_8C1A114E,pc),r2
	mov.w @r6,r5
	extu.w r5,r5
	cmp/eq r2,r5
	bf loc_8C1A1180
	mov.w @(loc_8C1A1150,pc),r7

loc_8C1A1138:
	dt r7
	bt loc_8C1A1142
	mov.w @(loc_8C1A114E,pc),r2
	cmp/eq r2,r5
	bt loc_8C1A1138

loc_8C1A1142:
	tst r7,r7
	bf loc_8C1A1180
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;==============================================
loc_8C1A114C:
	#data 0x00FF
loc_8C1A114E:
	#data 0x07D0
loc_8C1A1150:
	#data 0x03E8
	#align4

loc_8C1A1154:
	#data 0x8C34BB96
loc_8C1A1158:
	#data 0x8C34BBA0
loc_8c1A115C:
	#data 0x8C34BB95
loc_8c1A1160:
	#data 0x8C34B34C
loc_8c1A1164:
	#data bank1b.loc_8c1b3EEC
loc_8c1A1168:
	#data bank1b.loc_8c1b3F0C
loc_8c1A116C:
	#data 0x8C34B338
loc_8c1A1170:
	#data 0x8C34B35A
loc_8c1A1174:
	#data 0x8C347A80
loc_8c1A1178:
	#data 0x8C34B350
loc_8c1A117C:
	#data 0x8C34BBA3

;==============================================
loc_8C1A1180:
	mov.l @(loc_8C1A12AC,pc),r5
	mov.l @r5,r3
	mov.b r4,@r3
	mov.l @r5,r2
	add 0x01,r2
	mov.l r2,@r5
	mov.l @(loc_8C1A12B0,pc),r7
	mov.l @r7,r3
	cmp/hi r3,r2
	bf loc_8C1A1198
	mov.l @(loc_8C1A12B4,pc),r0
	mov.l r0,@r5

loc_8C1A1198:
	mov.w @r6,r3
	mov 0x50,r0
	add 0x01,r3
	mov.w r3,@r6
	mov.l @(loc_8C1A12B8,pc),r5
	mov.b @(r0,r5),r2
	tst r2,r2
	bf loc_8C1A11D4
	mov.l @(loc_8C1A12BC,pc),r4
	mov r5,r2
	add 0x51,r2
	mov.l @r4,r3
	mov.b @r3,r1
	mov.b r1,@r2
	mov.l @r4,r3
	add 0x01,r3
	mov r3,r1
	mov.l r3,@r4
	mov.l @r7,r2
	cmp/hi r2,r1
	bf loc_8C1A11C6
	mov.l @(loc_8C1A12B4,pc),r3
	mov.l r3,@r4

loc_8C1A11C6:
	mov.w @r6,r2
	mov 0x01,r3
	add 0xFF,r2
	mov.w r2,@r6
	mov.b r3,@(r0,r5)
	bsr loc_8C1A1296
	mov 0x04,r4

loc_8C1A11D4:
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1A11DC:
	rts
	mov 0x01,r0

;==============================================
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

;==============================================
loc_8c1A11F2:
	rts
	mov 0x01,r0

;==============================================
loc_8c1A11F6:
	mov.l @(0xC8,PC),r3
	mov.b @r3,r0
	mov 0x02,r4
	extu.b r0,r0
	and r0,r4
	tst r4,r4
	movt r4
	rts 
	mov r4,r0

;==============================================
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

;==============================================
loc_8C1A1296:
	mov.l @(loc_8C1A12C4,pc),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8C1A12A6
	mov.l @(loc_8C1A12C8,pc),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8C1A12CC

loc_8C1A12A6:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1A12AC:
	#data 0x8C34BB34
loc_8c1A12B0:
	#data 0x8C34BB2C
loc_8c1A12B4:
	#data 0x8C34B35C
loc_8c1A12B8:
	#data 0x8C347A30
loc_8c1A12BC:
	#data 0x8C34BB30
loc_8c1A12C0:
	#data 0x8C347AA4
loc_8c1A12C4:
	#data 0x8C34BBA1
loc_8c1A12C8:
	#data 0x8C34BBA3

;==============================================
loc_8C1A12CC:
	mov.w @(loc_8C1A13AC,pc),r7
	extu.w r4,r6
	sts.l pr,@-r15
	mov.l @(loc_8C1A13B0,pc),r5
	cmp/gt r7,r6
	bf loc_8C1A12F6
	mov 0xF8,r3
	mov r6,r4
	mov 0x44,r0
	shad r3, r4
	mov.b @(r0,r5),r2
	or r4,r2
	mov.b r2,@(r0,r5)
	mov 0x42,r0
	extu.b r4,r4
	mov.b @(r0,r5),r3
	extu.b r3,r3
	tst r3,r4
	bf loc_8C1A1310
	bra loc_8C1A130C
	nop

loc_8C1A12F6:
	bt loc_8C1A1310
	mov 0x43,r0
	mov.b @(r0,r5),r3
	or r4,r3
	mov.b r3,@(r0,r5)
	mov 0x41,r0
	extu.b r4,r4
	mov.b @(r0,r5),r2
	extu.b r2,r2
	tst r2,r4
	bf loc_8C1A1310

loc_8C1A130C:
	bsr loc_8C1A1316
	nop

loc_8C1A1310:
	lds.l @r15+,pr
	rts
	mov 0x01,r0

;==============================================
loc_8C1A1316:
	mov.l @(loc_8C1A13B4,pc),r3
	jmp @r3
	nop

;==============================================
loc_8c1A131C:
	rts
	nop

;==============================================
loc_8c1A1320:
	rts
	mov 0x00,r0

;==============================================
loc_8c1A1324:
	rts
	nop

;==============================================
loc_8C1A1328:
	mov.l @(loc_8C1A13B8,pc),r3
	mov 0x01,r1
	mov.l r4,@r3
	mov.l @(loc_8C1A13BC,pc),r2
	mov.l r5,@r2
	mov.l @(loc_8C1A13C0,pc),r0
	rts
	mov.b r1,@r0

;==============================================
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

;==============================================
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

;==============================================
loc_8C1A1374:
	mov.l @(loc_8C1A13C0,pc),r0
	mov 0x00,r1
	rts
	mov.b r1,@r0

;==============================================
loc_8C1A137C:
	mov.l @(loc_8C1A13C4,pc),r3
	sts.l pr,@-r15
	mov.b @r3,r0
	add 0xF8,r15
	mov.b r0,@(0x05,r15)
	mov r15,r5
	mov.l @(loc_8C1A13C8,pc),r1
	add 0x04,r5
	mov r15,r4
	mov r15,r2
	mov.b @r1,r0
	mov.b r0,@(0x04,r15)
	mov.b @r5,r0
	mov.b r0,@r4
	mov.b @(0x01,r5),r0
	mov.b r0,@(0x01,r4)
	mov.l @(loc_8C1A13CC,pc),r3
	mov.l @(0x0C,r15),r1
	jsr @r3
	mov 0x02,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A13AC:
	#data 0x0080
	#align4

loc_8c1A13B0:
	#data 0x8C347A30
loc_8c1A13B4:
	#data bank1b.loc_8c1b7708
loc_8c1A13B8:
	#data 0x8C34846C
loc_8c1A13BC:
	#data 0x8C348470
loc_8c1A13C0:
	#data bank1c.loc_8c1c9B08
loc_8c1A13C4:
	#data 0x8C34BB96
loc_8c1A13C8:
	#data 0x8C34BB95
loc_8c1A13CC:
	#data bank12.loc_8c129620

;==============================================
loc_8C1A13D0:
	mov 0x00,r2
	mov.l r5,@(0x08,r4)
	mov.l @(0x04,r5),r3
	mov.l r3,@(0x0C,r4)
	mov.b r2,@r4
	mov 0x0A,r3
	mov.l r3,@(0x04,r4)
	rts
	mov r4,r0

;==============================================
loc_8c1A13E2:
	mov 0x00,r5 ; r5 set to 0x00
	mov.l r5,@(0x08,r4)
	mov.b r5,@r4
	mov 0x0A,r3 ; r3 set to 0x0A
	mov.l r3,@(0x04,r4)
	rts
	mov r4,r0

;==============================================
loc_8c1A13F0:
	mov.l r5,@(0x08,r4)
	mov.l @(0x04,r5),r3
	rts
	mov.l r3,@(0x0C,r4)

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A148E:
	#data 0x00FF
	#align4

loc_8c1A1490:
	#data loc_8c1A2820

;==============================================
loc_8c1a1494:
	mov.l @(0x0C,r14),r0
	mov r0,r3
	add 0x62,r3
	add r4,r3
	mov.b r13,@r3
	add 0x01,r4

loc_8C1A14A0:
	cmp/ge r5,r4
	bf loc_8C1A1494
	mov.l @(0x0C,r14),r3
	mov 0x72,r0
	mov 0x0A,r2
	mov.b r2,@(r0,r3)
	mov.l @(0x0C,r14),r3
	mov 0x74,r0
	mov 0x01,r2
	mov.b r2,@(r0,r3)
	mov.l @(0x04,r15),r3
	mov r15,r5
	mov.b r13,@r3
	bsr loc_8C1A1D24
	mov r14,r4
	mov r15,r2
	add 0x08,r2
	mov.b @r2,r0
	mov r15,r3
	add 0x08,r3
	mov r15,r5
	or 0x80,r0
	mov.b r0,@r2
	add 0x08,r5
	mov.b @r3,r0
	or 0x40,r0
	mov.b r0,@r3
	bsr loc_8C1A1B54
	mov r14,r4
	mov.l @(0x08,r14),r3
	mov 0x45,r0
	mov.l @(0x0C,r14),r1
	mov.l @(0x3C,r3),r2
	mov.b @(r0,r1),r3
	mov.b r3,@r2
	mov.l @(0x08,r14),r4
	mov r4,r0
	nop
	add 0x38,r0
	mov.b @r0,r0
	tst 0x80,r0
	movt r3
	add 0xFF,r3
	neg r3,r3
	tst r3,r3
	bt loc_8C1A1510
	mov r4,r0
	nop
	add 0x38,r0
	mov.b @r0,r0
	tst 0x40,r0
	movt r1
	add 0xFF,r1
	neg r1,r1
	tst r1,r1
	bf loc_8C1A1516

loc_8C1A1510:
	mov.l @(loc_8C1A15BC,pc),r2
	jsr @r2
	mov.l @(0x08,r14),r4

loc_8c1A1516:
	mov 0x00,r0 ; r0 set to 0x00

loc_8c1A1518:
	add 0x18,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
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

loc_8C1A1596:
	mov.l @(0x08,r4),r1
	mov.b @r5+,r2
	mov.l @(0x2C,r1),r3
	mov.b r2,@r3
	mov.b @r5+,r0
	mov.w @(loc_8C1A15B8,pc),r1
	mov.l @(loc_8C1A15C0,pc),r3
	extu.b r0,r0
	mov.l @(0x08,r4),r2
	jsr @r3
	add 0x24,r2

loc_8c1A15AC:
	add 0x01,r6
	cmp/ge r14,r6
	bf loc_8C1A1534

loc_8c1A15B2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A15B8:
	#data 0x0808
	#align4

loc_8c1A15BC:
	#data loc_8c1A2820
loc_8c1A15C0:
	#data bank13.loc_8c130F04

;==============================================
loc_8C1A15C4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l r5,@(0x04,r15)
	mov.l r6,@r15
	mov.l @(0x08,r14),r3
	tst r3,r3
	bt loc_8C1A1670
	mov.l @(0x08,r14),r4
	mov 0x4C,r0
	mov.w @(loc_8C1A16F6,pc),r2
	mov.l @(r0,r4),r5
	mov.l @(0x0C,r14),r13
	mov.b @r5,r3
	mov.w @(0x02,r5),r0
	add 0x78,r13
	extu.b r3,r3
	muls.w r2,r3
	extu.w r0,r0
	sts macl,r3
	exts.w r3,r3
	add r3,r13
	add 0x04,r13
	add r0,r13
	mov r4,r0
	nop
	add 0x50,r0
	mov.b @r0,r0
	tst 0x40,r0
	movt r0
	add 0xFF,r0
	neg r0,r0
	cmp/eq 0x01,r0
	bf loc_8C1A1642
	mov r15,r4
	add 0x08,r4
	mov 0x00,r3
	mov r4,r1
	mov 0x7F,r2
	mov.l r4,@(0x04,r4)
	mov.b r3,@r1
	mov 0x74,r0
	mov.l @(0x0C,r14),r3
	mov.b @(r0,r3),r1
	and r2,r1
	mov.b r1,@(r0,r3)
	mov.l @(0x08,r14),r2
	mov r15,r5
	add 0x08,r5
	mov r2,r3
	add 0x50,r3
	mov.b @r3,r0
	mov r15,r2
	add 0x08,r2
	and 0xBF,r0
	mov.b r0,@r3
	mov.b @r2,r0
	or 0x40,r0
	mov.b r0,@r2
	bsr loc_8C1A2020
	mov r14,r4

loc_8C1A1642:
	mov.l @(loc_8C1A16F8,pc),r3
	mov.l @(0x04,r15),r5
	mov.l @r15,r6
	jsr @r3
	mov r13,r4
	mov.l @(0x08,r14),r2
	mov 0x4C,r0
	mov.l @r15,r1
	mov.l @(r0,r2),r3
	mov.w @(0x02,r3),r0
	add r1,r0
	mov.w r0,@(0x02,r3)
	mov 0x4C,r0
	mov.l @(0x08,r14),r4
	mov.l @(r0,r4),r3
	mov.w @(0x02,r3),r0
	mov.l @(0x08,r4),r3
	extu.w r0,r0
	cmp/eq r3,r0
	bf loc_8C1A1670
	mov 0x00,r5
	bsr loc_8C1A1888
	mov r14,r4

loc_8C1A1670:
	add 0x10,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
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

loc_8C1A16B4:
	bsr loc_8C1A17A2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8C1A178E
	mov.l @(0x08,r14),r4
	mov 0x4C,r0
	mov r8,r2
	mov.l @(r0,r4),r3
	mov.l @(0x08,r4),r10
	mov.w @(0x02,r3),r0
	mov.l @r11,r3
	extu.w r0,r0
	sub r3,r2
	sub r0,r10
	cmp/hi r2,r10
	bf/s loc_8C1A16DE
	mov.l @(0x08,r14),r2
	mov.l @r11,r3
	mov r8,r10
	sub r3,r10

loc_8C1A16DE:
	mov 0x41,r0
	mov.b @(r0,r2),r3
	tst r3,r3
	bt loc_8C1A1778
	mov r15,r4
	add 0x04,r4
	mov r4,r3
	mov r9,r12
	mov.l r4,@(0x04,r4)
	mov.b r12,@r3
	bra loc_8C1A16FE
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A16F6:
	#data 0x008C
	#align4

loc_8c1A16F8:
	#data bank12.loc_8c129668

;==============================================
loc_8C1A16FC:
	add 0x01,r12

loc_8C1A16FE:
	cmp/hs r10,r12
	bt loc_8C1A1712
	mov r13,r0
	nop
	mov.b @(r0,r12),r5
	bsr loc_8C1A17D2
	mov r14,r4
	tst r0,r0
	mov.l r0,@r15
	bt loc_8C1A16FC

loc_8C1A1712:
	mov r13,r5
	mov r12,r6
	bsr loc_8C1A15C4
	mov r14,r4
	mov.l @r11,r3
	add r12,r3
	mov.l r3,@r11
	mov.l @r15,r0
	cmp/eq 0x00,r0
	bt/s loc_8C1A1788
	add r12,r13
	cmp/eq 0x01,r0
	bt loc_8C1A1734
	cmp/eq 0x02,r0
	bt loc_8C1A175E
	bra loc_8C1A1788
	nop

loc_8C1A1734:
	mov.b @r13+,r3
	mov 0x49,r0
	mov.l @(0x0C,r14),r2
	mov.b r3,@(r0,r2)
	mov.l @r11,r2
	mov 0x00,r5
	add 0x01,r2
	mov.l r2,@r11
	bsr loc_8C1A1888
	mov r14,r4
	mov r15,r2
	add 0x04,r2
	mov.b @r2,r0
	mov r15,r5
	add 0x04,r5
	or 0x08,r0
	mov.b r0,@r2
	bsr loc_8C1A2020
	mov r14,r4
	bra loc_8C1A1788
	nop

loc_8C1A175E:
	mov r13,r5
	mov 0x01,r6
	bsr loc_8C1A15C4
	mov r14,r4
	mov.l @r11,r2
	mov 0x04,r5
	add 0x01,r13
	add 0x01,r2
	mov.l r2,@r11
	bsr loc_8C1A1888
	mov r14,r4
	bra loc_8C1A1788
	nop

loc_8C1A1778:
	mov r13,r5
	mov r10,r6
	bsr loc_8C1A15C4
	mov r14,r4
	mov.l @r11,r3
	add r10,r13
	add r10,r3
	mov.l r3,@r11

loc_8C1A1788:
	mov.l @r11,r2
	cmp/hs r8,r2
	bf loc_8C1A16B4

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

;==============================================
loc_8C1A17A2:
	mov.l @(0x08,r4),r3
	tst r3,r3
	bf loc_8C1A17AC
	rts
	mov 0x00,r0

;==============================================
loc_8C1A17AC:
	mov.l @(0x08,r4),r3
	mov 0x4C,r0
	mov.l @(0x0C,r4),r2
	mov.l @(r0,r3),r1
	add 0x78,r2
	mov.b @r1,r3
	mov.w @(loc_8C1A17E4,pc),r1
	extu.b r3,r3
	muls.w r1,r3
	sts macl,r3
	exts.w r3,r3
	add r3,r2
	mov r2,r0
	nop
	mov.w @r0,r0
	mov 0x01,r3
	and r3,r0
	rts
	nop

;==============================================
loc_8C1A17D2:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l @(0x08,r4),r3
	tst r3,r3
	bf/s loc_8C1A17E6
	mov r13,r7
	bra loc_8C1A1882
	mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1A17E4:
	#data 0x008C

;==============================================
loc_8C1A17E6:
	mov r13,r6

loc_8C1A17E8:
	tst r6,r6
	bf/s loc_8C1A1810
	exts.b r5,r14
	mov.l @(0x08,r4),r0
	mov.b @(0x0D,r0),r0
	tst 0x80,r0
	bf loc_8C1A184E
	mov.l @(0x08,r4),r2
	mov r2,r0
	nop
	mov.b @(0x0C,r0),r0
	and 0xFF,r0
	cmp/eq r0,r14
	bf loc_8C1A1876
	mov.l @(0x08,r4),r0
	mov.b @(0x0D,r0),r0
	tst 0x40,r0
	bf loc_8C1A186C
	bra loc_8C1A1870
	nop

loc_8C1A1810:
	mov r6,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8C1A1840
	mov.l @(0x08,r4),r0
	add 0x19,r0
	mov.b @r0,r0
	tst 0x80,r0
	bf loc_8C1A184E
	mov.l @(0x08,r4),r2
	mov r2,r0
	nop
	add 0x18,r0
	mov.b @r0,r0
	and 0xFF,r0
	cmp/eq r0,r14
	bf loc_8C1A1876
	mov.l @(0x08,r4),r0
	add 0x19,r0
	mov.b @r0,r0
	tst 0x40,r0
	bt loc_8C1A1870
	bra loc_8C1A186C
	nop

loc_8C1A1840:
	cmp/eq 0x02,r0
	bf loc_8C1A1876
	mov.l @(0x08,r4),r0
	add 0x25,r0
	mov.b @r0,r0
	tst 0x80,r0
	bt loc_8C1A1852

loc_8C1A184E:
	bra loc_8C1A187E
	mov r13,r7

loc_8C1A1852:
	mov.l @(0x08,r4),r2
	mov r2,r0
	nop
	add 0x24,r0
	mov.b @r0,r0
	and 0xFF,r0
	cmp/eq r0,r14
	bf loc_8C1A187E
	mov.l @(0x08,r4),r0
	add 0x25,r0
	mov.b @r0,r0
	tst 0x40,r0
	bt loc_8C1A1870

loc_8C1A186C:
	bra loc_8C1A1872
	mov 0x01,r4

loc_8C1A1870:
	mov 0x02,r4

loc_8C1A1872:
	bra loc_8C1A187E
	mov r4,r7

loc_8C1A1876:
	mov 0x03,r14
	add 0x01,r6
	cmp/ge r14,r6
	bf loc_8C1A17E8

loc_8C1A187E:
	mov r7,r0
	nop

loc_8C1A1882:
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C1A1888:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov 0x00,r12
	mov.l r11,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r15,r4
	add 0x04,r4
	mov r4,r3
	mov.b r5,@r15
	mov.l r4,@(0x04,r4)
	mov.b r12,@r3
	mov.l @(0x08,r14),r3
	tst r3,r3
	bt loc_8C1A1996
	mov.l @(0x08,r14),r3
	mov 0x4C,r0
	mov.l @(r0,r3),r2
	mov.w @(0x02,r2),r0
	tst r0,r0
	bt loc_8C1A1996
	mov.l @(0x08,r14),r4
	mov.w @(loc_8C1A19A6,pc),r1
	mov.l @(loc_8C1A19AC,pc),r3
	add 0x40,r4
	jsr @r3
	mov r4,r2
	extu.b r0,r0
	tst r0,r0
	bt loc_8C1A1902
	mov.l @(0x08,r14),r3
	mov 0x4C,r0
	mov.l @(0x0C,r14),r11
	mov.l @(r0,r3),r2
	mov.w @(loc_8C1A19A8,pc),r3
	add 0x78,r11
	mov.b @r2,r1
	extu.b r1,r1
	muls.w r3,r1
	sts macl,r1
	exts.w r1,r1
	add r1,r11
	add 0x04,r11
	bra loc_8C1A18F2
	mov r12,r13

loc_8C1A18E8:
	extu.w r13,r5
	add r11,r5
	bsr loc_8C1A2074
	mov r14,r4
	add 0x01,r13

loc_8C1A18F2:
	mov.l @(0x08,r14),r3
	mov 0x4C,r0
	extu.w r13,r2
	mov.l @(r0,r3),r1
	mov.w @(0x02,r1),r0
	extu.w r0,r0
	cmp/ge r0,r2
	bf loc_8C1A18E8

loc_8C1A1902:
	mov.l @(0x08,r14),r3
	mov 0x4C,r0
	mov.l @(0x0C,r14),r2
	mov.l @(r0,r3),r1
	add 0x78,r2
	mov.b @r1,r3
	mov.w @(loc_8C1A19A8,pc),r1
	extu.b r3,r3
	muls.w r1,r3
	sts macl,r3
	exts.w r3,r3
	add r2,r3
	mov.b @r15,r2
	extu.b r2,r2
	mov.w r2,@r3
	mov.l @(0x08,r14),r2
	mov 0x4C,r0
	mov.l @(0x0C,r14),r3
	mov.l @(r0,r2),r0
	add 0x78,r3
	mov r0,r5
	mov.l r0,@r15
	mov.b @r0,r2
	mov.w @(0x02,r5),r0
	extu.b r2,r2
	muls.w r1,r2
	mov r0,r5
	sts macl,r2
	exts.w r2,r2
	add r3,r2
	mov r2,r8
	add 0x02,r8
	bsr loc_8C1A211A
	mov r14,r4
	mov.w r0,@r8
	mov.l @(0x08,r14),r3
	mov 0x4C,r0
	mov.l @(r0,r3),r2
	mov.b @r2,r1
	add 0x01,r1
	mov.b r1,@r2
	mov 0x4C,r1
	mov.l @(0x08,r14),r0
	mov.l @(r0,r1),r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bf loc_8C1A196A
	mov.l @(0x08,r14),r2
	mov 0x4C,r0
	mov.l @(r0,r2),r3
	mov.b r12,@r3

loc_8C1A196A:
	mov.l @(0x08,r14),r3
	mov 0x4C,r0
	mov.l @(r0,r3),r2
	mov r12,r0
	nop
	mov.w r0,@(0x02,r2)
	mov 0x4C,r0
	mov.l @(0x08,r14),r2
	mov.l @(0x0C,r14),r3
	mov.l @(r0,r2),r1
	mov 0x3F,r0
	mov.b @r1,r2
	mov.b r2,@(r0,r3)
	mov r15,r3
	add 0x04,r3
	mov.b @r3,r0
	mov r15,r5
	add 0x04,r5
	or 0x01,r0
	mov.b r0,@r3
	bsr loc_8C1A2020
	mov r14,r4

loc_8C1A1996:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1A19A6:
	#data 0x0203
loc_8C1A19A8:
	#data 0x008C
	#align4

loc_8c1A19AC:
	#data bank13.loc_8c130F3C

;==============================================s
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

loc_8C1A1A3C:
	mov r15,r3
	add 0x0C,r3
	mov.b @r3,r0
	mov r15,r5
	add 0x0C,r5
	or 0x10,r0
	mov.b r0,@r3
	bsr loc_8C1A2020
	mov r14,r4

loc_8c1A1A4E:
	add 0x14,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1A1A5A:
	mov.l @(0x0C,r4),r3
	mov 0x61,r0 ; r0 set to 0x61
	mov 0x00,r2 ; r2 set to 0x00
	rts
	mov.b r2,@(r0,r3)

;==============================================
loc_8C1A1A64:
	mov.l @(loc_8C1A1A9C,pc),r1
	sts.l pr,@-r15
	mov.l @r1,r3
	tst r3,r3
	bf loc_8C1A1A74
	mov.l @r1,r3
	add 0x01,r3
	mov.l r3,@r1

loc_8c1A1A74:
	bsr loc_8C1A1B80
	nop
	mov 0x00,r3
	mov.l @(loc_8C1A1AA0,pc),r2
	mov r2,r4
	mov.b r0,@r2
	mov.l @(loc_8C1A1AA4,pc),r1
	mov 0x01,r0
	mov.b r3,@r1
	mov.l @(loc_8C1A1AA8,pc),r3
	mov.b r0,@r3
	mov.l @(loc_8C1A1AAC,pc),r2
	jmp @r2
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1A1A90:
	#data 0x8C348478
loc_8c1A1A94:
	#data bank12.loc_8c129668
loc_8c1A1A98:
	#data bank18.loc_8c18C064
loc_8C1A1A9C:
	#data 0x8C34848C
loc_8C1A1AA0:
	#data 0x8C348488
loc_8C1A1AA4:
	#data 0x8C348489
loc_8C1A1AA8:
	#data 0x8C34848A
loc_8c1A1AAC:
	#data bank18.loc_8c18C096

;==============================================
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

;==============================================
loc_8C1A1B28:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r8,@-r15
	mov.l @(0x08,r14),r3
	sts.l pr,@-r15
	tst r3,r3
	bt loc_8C1A1B48
	mov.l @(0x08,r14),r8
	mov 0x3C,r0
	mov.l @(0x0C,r14),r5
	add 0x08,r8
	mov.w @(r0,r5),r5
	bsr loc_8C1A211A
	mov r14,r4
	extu.w r0,r0
	mov.l r0,@r8

loc_8C1A1B48:
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1A1B50:
	bra loc_8c1A1522
	nop

;==============================================
loc_8C1A1B54:
	mov.l @(0x08,r4),r3
	tst r3,r3
	bt loc_8C1A1B7C
	mov.l @(0x08,r4),r0
	add 0x30,r0
	mov.b @r0,r0
	tst 0x10,r0
	bt loc_8C1A1B6E
	mov.l @(0x0C,r4),r1
	mov 0x46,r0
	mov 0x00,r3
	rts
	mov.b r3,@(r0,r1)

loc_8C1A1B6E:
	mov.l @(0x04,r5),r2
	mov 0x46,r0
	mov.l @(0x0C,r4),r3
	mov.b @r2,r2
	mov.b @(r0,r3),r1
	or r2,r1
	mov.b r1,@(r0,r3)

loc_8C1A1B7C:
	rts
	nop

;==============================================
loc_8c1a1b80:
	mov.l @(0x0C,r4),r0
	mov 0x75,r1
	rts
	mov.b @(r0,r1),r0

;==============================================
;unused?
loc_8c1a1b88:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xEC,r15
	mov r15,r4
	add 0x0C,r4
	mov r4,r3
	mov.b r5,@r15
	mov.l r4,@(0x4,r4)
	mov r15,r4
	mov 0x00,r5
	add 0x04,r4
	mov.b r5,@r3
	mov r4,r3
	mov.l r4,@(0x4,r4)
	mov.b r5,@r3
	mov.l @(0x10,r15),r8
	bsr loc_8c1a1be2
	mov r14,r4
	mov.b r0,@r8
	mov r15,r2
	mov.w @(0x44,PC),r1
	mov.l @(0x50,PC),r3
	mov.b @r15,r0
	jsr @r3
	add 0x0C,r2
	mov r15,r5
	add 0x0C,r5
	bsr loc_8c1a1bea
	mov r14,r4
	mov r15,r2
	add 0x04,r2
	mov.b @r2,r0
	mov r15,r5
	add 0x04,r5
	or 0x40,r0
	mov.b r0,@r2
	bsr loc_8c1a2020
	mov r14,r4
	add 0x14,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1A1BE2:
	mov.l @(0xC,r4),r0
	mov 0x74,r1
	rts 
	mov.b @(r0,r1),r0

loc_8c1A1BEA:
mov.l @(0x04,r5),r2
mov 0x74,r0 ; r0 set to 0x74
mov.l @(0x0C,r4),r3
mov.b @r2,r1
rts
mov.b r1,@(r0,r3)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A1BF6:
	#data 0x008C
loc_8c1A1BF8:
	#data 0x04D8
loc_8c1A1BFA:
	#data 0x0F01
loc_8c1A1BFC:
	#data 0x0701
	#align4

loc_8c1A1C00:
	#data bank13.loc_8c130F04
loc_8c1A1C04:
	#data loc_8c1A283E
loc_8c1A1C08:
	#data bank13.loc_8c130ECC

;==============================================
loc_8c1a1c0c:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xEC,r15
	mov r15,r4
	add 0x0C,r4
	mov r4,r3
	mov.b r5,@r15
	mov.l r4,@(0x4,r4)
	mov r15,r4
	mov 0x00,r5
	add 0x04,r4
	mov.b r5,@r3
	mov r4,r3
	mov.l r4,@(0x4,r4)
	mov.b r5,@r3
	mov.l @(0x10,r15),r8
	bsr loc_8c1a1be2
	mov r14,r4
	mov.b r0,@r8
	mov r15,r2
	mov.w @(0x114,PC),r1
	mov.l @(0x11C,PC),r3
	mov.b @r15,r0
	jsr @r3
	add 0x0C,r2
	mov r15,r5
	add 0x0C,r5
	bsr loc_8c1a1bea
	mov r14,r4
	mov r15,r2
	add 0x04,r2
	mov.b @r2,r0
	mov r15,r5
	add 0x04,r5
	or 0x40,r0
	mov.b r0,@r2
	bsr loc_8c1a2020
	mov r14,r4
	add 0x14,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1a1c66:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x08,r14),r3
	sts.l pr,@-r15
	tst r3,r3
	bt loc_8c1a1d1e
	mov.l @(0x0C,r14),r3
	mov 0x61,r0
	mov 0x00,r4
	mov.b r4,@(r0,r3)
	mov.l @(0x0C,r14),r3
	mov 0x3F,r0
	mov.b r4,@(r0,r3)
	mov.l @(0x08,r14),r3
	mov 0x4C,r0
	mov.l @(r0,r3),r2
	mov.b r4,@r2
	mov.l @(0x08,r14),r3
	mov.l @(r0,r3),r2
	mov r4,r0
	nop
	mov r0,r6
	mov 0x08,r5
	mov.b r0,@(0x06,r2)

loc_8c1a1c96:
	mov.w @(loc_8C1A1D52,pc),r7
	mov.l @(0x0C,r14),r3
	muls.w r7,r6
	add 0x78,r3
	sts macl,r7
	exts.w r7,r7
	add r7,r3
	mov r4,r0
	nop
	mov.w r0,@(0x02,r3)
	mov.l @(0x0C,r14),r2
	mov.w @(loc_8C1A1D54,pc),r1
	mov.l @(loc_8c1a1d5c,pc),r3
	add 0x78,r2
	add r7,r2
	jsr @r3
	mov 0x01,r0
	add 0x01,r6
	cmp/ge r5,r6
	bf loc_8c1a1c96
	mov.l @(0x0C,r14),r3
	mov 0x50,r0
	mov.b r4,@(r0,r3)
	mov.l @(0x0C,r14),r3
	mov 0x40,r0
	mov.b r4,@(r0,r3)
	mov.l @(0x08,r14),r3
	mov 0x4C,r0
	mov.l @(r0,r3),r2
	mov r4,r0
	nop
	mov.b r0,@(0x01,r2)
	mov 0x4C,r0
	mov.l @(0x08,r14),r3
	mov.l @(r0,r3),r2
	mov r4,r0
	nop
	mov r0,r6
	mov.b r0,@(0x07,r2)

loc_8c1a1ce4:
	mov.w @(loc_8C1A1D52,pc),r7
	mov.w @(loc_8C1A1D56,pc),r2
	muls.w r7,r6
	mov.l @(0x0C,r14),r3
	add r2,r3
	sts macl,r7
	exts.w r7,r7
	add r7,r3
	mov r4,r0
	nop
	mov.w r0,@(0x02,r3)
	mov.w @(loc_8C1A1D56,pc),r3
	mov.l @(0x0C,r14),r2
	mov.w @(loc_8C1A1D54,pc),r1
	add r3,r2
	mov.l @(loc_8c1a1d5c,pc),r3
	add r7,r2
	jsr @r3
	mov 0x01,r0
	add 0x01,r6
	cmp/ge r5,r6
	bf loc_8c1a1ce4
	mov.l @(0x08,r14),r4
	mov 0x4C,r0
	lds.l @r15+,pr
	mov.l @(loc_8c1a1d60,pc),r3
	mov.l @(r0,r4),r4
	jmp @r3
	mov.l @r15+,r14

loc_8c1a1d1e:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1a1d24:
	mov.l @(0x8,r4),r3
	tst r3,r3
	bt loc_8c1a1d36
	mov.l @(0x8,r4),r3
	mov 0x54,r0
	mov.l @(0x4,r5),r1
	mov.l @(r0,r3),r2
	mov.b @r1,r3
	mov.b r3,@r2

loc_8c1a1d36:
	rts
	nop

;==============================================
loc_8c1a1d3a:
	mov.l @(0x8,r4),r2
	tst r2,r2
	bt loc_8c1a1d4c
	mov.l @(0xC,r4),r2
	mov 0x73,r0
	mov.b r5,@(r0,r2)
	mov.l @(0x8,r4),r3
	mov 0x40,r0
	mov.b r5,@(r0,r3)

loc_8c1a1d4c:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1A1D50:
	#data 0x0601
loc_8C1A1D52:
	#data 0x008C
loc_8C1A1D54:
	#data 0x0F01
loc_8C1A1D56:
	#data 0x04D8
	#align4

loc_8c1a1d58:
	#data bank13.loc_8C130ECC
loc_8c1a1d5c:
	#data bank13.loc_8c130f04
loc_8c1a1d60:
	#data loc_8c1a282e

;==============================================
loc_8c1a1d64:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x8,r14),r3
	tst r3,r3
	add 0xF8,r15
	bt loc_8c1a1daa
	mov r15,r4
	mov 0x00,r2
	mov r4,r3
	mov r2,r5
	mov.l r4,@(0x4,r4)
	mov.b r2,@r3
	bsr loc_8c1a1888
	mov r14,r4
	mov 0x74,r0
	mov.l @(0xC,r14),r3
	mov r0,r2
	add 0x0C,r2
	mov.b @(r0,r3),r1
	or r2,r1
	mov.b r1,@(r0,r3)
	mov.l @(0x8,r14),r2
	mov r15,r5
	mov r2,r3
	add 0x50,r3
	mov.b @r3,r0
	mov r15,r2
	or 0x40,r0
	mov.b r0,@r3
	mov.b @r2,r0
	or 0x40,r0
	mov.b r0,@r2
	bsr loc_8c1a2020
	mov r14,r4

loc_8c1a1daa:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1a1db2:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x8,r14),r3
	tst r3,r3
	add 0xF8,r15
	bt loc_8c1a1de4
	mov r15,r4
	mov 0x00,r2
	mov r4,r3
	mov 0x72,r0
	mov.l r4,@(0x4,r4)
	mov.b r2,@r3
	mov.l @(0xC,r14),r1
	mov.b r5,@(r0,r1)
	mov r15,r3
	mov.b @r3,r0
	mov r15,r5
	or 0x40,r0
	mov.b r0,@r3
	bsr loc_8c1a1b54
	mov r14,r4
	mov.l @(0x11C,PC),r3
	jsr @r3
	mov.l @(0x8,r14),r4

loc_8c1a1de4:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

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

loc_8c1a1e02:
	mov r15,r4
	add 0x08,r4
	mov r4,r3
	mov 0x00,r13
	mov.l r4,@(0x04,r4)
	mov.b r13,@r3
	mov.l @(0x08,r14),r2
	mov.l @(0x0C,r15),r3
	mov.l @(0x34,r2),r1
	mov.b @r1,r0
	mov.b r0,@r3
	mov.l @(0x08,r14),r3
	mov.l @(0x34,r3),r8
	bsr loc_8c1a1ef4
	mov r14,r4
	mov.b r0,@r8
	mov r15,r0
	add 0x08,r0
	mov.b @r0,r0
	tst 0x04,r0
	mov.l @(0x08,r14),r0
	movt r3
	add 0x30,r0
	mov.b @r0,r0
	add 0xFF,r3
	neg r3,r3
	tst 0x04,r0
	movt r1
	add 0xFF,r1
	neg r1,r1
	xor r1,r3
	tst r3,r3
	bt loc_8c1a1e54
	mov.l @(0x08,r14),r0
	add 0x30,r0
	mov.b @r0,r0
	tst 0x04,r0
	bt loc_8c1a1e54
	mov 0x00,r5
	bsr loc_8c1a1888
	mov r14,r4

loc_8c1a1e54:
	mov r15,r0
	add 0x08,r0
	mov.b @r0,r0
	tst 0x02,r0
	mov.l @(0x08,r14),r0
	movt r2
	add 0x30,r0
	mov.b @r0,r0
	add 0xFF,r2
	neg r2,r2
	tst 0x02,r0
	movt r1
	add 0xFF,r1
	neg r1,r1
	xor r1,r2
	tst r2,r2
	bt loc_8c1a1ea4
	mov.l @(0x08,r14),r0
	add 0x30,r0
	mov.b @r0,r0
	tst 0x02,r0
	bt loc_8c1a1ea4
	mov 0x01,r1
	mov.b r1,@r14
	mov.l @(0x08,r14),r3
	mov.l @(0x34,r3),r2
	mov.b r13,@r2
	mov.b @r14,r3
	tst r3,r3
	bt loc_8c1a1e96
	mov.l @(loc_8c1a1f00,pc),r3
	jsr @r3
	nop

loc_8c1a1e96:
	mov.l @(0x08,r14),r2
	mov r2,r3
	add 0x30,r3
	mov.b @r3,r0
	or 0x02,r0
	mov.b r0,@r3
	mov.b r13,@r14

loc_8c1a1ea4:
	mov.l @(0x0C,r15),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c1a1ee6
	mov.l @(0x08,r14),r1
	mov.l @(0x34,r1),r3
	mov.b @r3,r2
	tst r2,r2
	bf loc_8c1a1ee6
	mov r15,r4
	mov r4,r2
	mov 0x74,r0
	mov.l r4,@(0x04,r4)
	mov.b r13,@r2
	mov r0,r2
	mov.l @(0x0C,r14),r3
	add 0x0C,r2
	mov.b @(r0,r3),r1
	or r2,r1
	mov.b r1,@(r0,r3)
	mov.l @(0x08,r14),r2
	mov r15,r5
	mov r2,r3
	add 0x50,r3
	mov.b @r3,r0
	mov r15,r2
	or 0x40,r0
	mov.b r0,@r3
	mov.b @r2,r0
	or 0x40,r0
	mov.b r0,@r2
	bsr loc_8c1a2020
	mov r14,r4

loc_8c1a1ee6:
	mov 0x01,r0

loc_8c1A1EE8:
	add 0x10,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1A1EF4:
	mov.l @(0xC,r4),r0
	mov 0x76,r1
	rts 
	mov.b @(r0,r1),r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1A1EFC:
	#data loc_8c1A2820
loc_8c1A1F00:
	#data loc_8c1A21DE

;==============================================
loc_8c1A1F04:
	sts.l pr,@-r15
	mov 0x00,r6
	add 0xF8,r15
	mov r15,r5
	mov r5,r3
	mov.l r5,@(0x4,r5)
	mov.b r6,@r3
	mov.l @(0x8,r4),r3
	tst r3,r3
	bt loc_8c1a1f96
	mov.l @(0x8,r4),r3
	mov 0x4C,r0
	mov.l @(0xC,r4),r2
	mov.l @(r0,r3),r1
	mov.w @(0x110,PC),r3
	mov.b @(0x1,r1),r0
	mov.w @(0x10E,PC),r1
	extu.b r0,r0
	muls.w r3,r0
	add r1,r2
	mov.w @(0x108,PC),r1
	mov.l @(0x10C,PC),r3
	sts macl,r0
	exts.w r0,r0
	add r0,r2
	jsr @r3
	mov 0x01,r0
	mov.l @(0x8,r4),r2
	mov 0x4C,r0
	mov 0x4C,r1
	mov.l @(r0,r2),r3
	mov.b @(0x1,r3),r0
	add 0x01,r0
	mov.b r0,@(0x1,r3)
	mov.l @(0x8,r4),r0
	mov.l @(r0,r1),r0
	mov.b @(0x1,r0),r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bf loc_8c1a1f60
	mov.l @(0x8,r4),r2
	mov 0x4C,r0
	mov.l @(r0,r2),r3
	mov r6,r0
	nop 
	mov.b r0,@(0x1,r3)

loc_8c1A1F60:
	mov.l @(0x8,r4),r3
	mov 0x4C,r0
	mov.l @(r0,r3),r2
	mov r6,r0
	nop 
	mov.w r0,@(0x4,r2)
	mov 0x4C,r0
	mov.l @(0x8,r4),r2
	mov.l @(0xC,r4),r3
	mov.l @(r0,r2),r1
	mov.b @(0x1,r1),r0
	mov 0x40,r1
	add r3,r1
	mov.b r0,@r1
	mov.l @(0x8,r4),r0
	add 0x30,r0
	mov.b @r0,r0
	tst 0x08,r0
	bf loc_8c1a1f96
	mov r15,r3
	mov.l @(0x4,r15),r1
	mov.b r6,@r1
	mov.b @r3,r0
	or 0x02,r0
	mov.b r0,@r3
	bsr loc_8c1a2020
	mov r15,r5

loc_8c1A1F96:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1A1F9E:
	mov.l @(0xA0,PC),r2
	sts.l pr,@-r15
	mov.l @r2,r3
	tst r3,r3
	bf loc_8c1a1fae
	mov.l @r2,r3
	add 0x01,r3
	mov.l r3,@r2

loc_8c1A1FAE:
	bsr loc_8c1a1b80
	nop 
	mov 0x01,r4
	mov.l @(0x8C,PC),r2
	mov.b r0,@r2
	mov.l @(0x8C,PC),r3
	mov.b r4,@r3
	mov.l @(0x8C,PC),r1
	mov.b r4,@r1
	mov r2,r4
	mov.l @(0x8C,PC),r2
	jmp @r2
	lds.l @r15+,pr

loc_8c1A1FC8:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov 0x00,r2
	mov 0x61,r0
	add 0xF0,r15
	mov r15,r4
	add 0x08,r4
	mov r4,r3
	mov.l r4,@(0x4,r4)
	mov.b r2,@r3
	mov.l @(0xC,r14),r1
	mov.b @(r0,r1),r3
	tst r3,r3
	bf loc_8c1a2018
	mov.l @(0xC,r14),r3
	mov 0x10,r2
	add 0x62,r3
	mov.l r3,@r15
	mov.l r2,@(0x4,r15)
	mov.l @(0x60,PC),r3
	jsr @r3
	mov r15,r4
	mov r0,r4
	mov.l @r4,r2
	tst r2,r2
	bt loc_8c1a2018
	mov.l @r4,r2
	mov 0x61,r0
	mov.l @(0xC,r14),r3
	mov.b r2,@(r0,r3)
	mov r15,r3
	add 0x08,r3
	mov.b @r3,r0
	mov r15,r5
	add 0x08,r5
	or 0x20,r0
	mov.b r0,@r3
	bsr loc_8c1a2020
	mov r14,r4

loc_8c1A2018:
	add 0x10,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
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

;==============================================
loc_8c1A2034:
	#data 0x008C
loc_8c1A2036:
	#data 0x04D8
loc_8c1A2038:
	#data 0x0F01
	#align4

loc_8c1A203C:
	#data bank13.loc_8c130F04
loc_8c1A2040:
	#data 0x8C348494
loc_8c1A2044:
	#data 0x8C348490
loc_8c1A2048:
	#data 0x8C348491
loc_8c1A204c:
	#data 0x8C348492
loc_8c1A2050:
	#data bank18.loc_8c18C096
loc_8c1A2054:
	#data bank18.loc_8c18C02A

;==============================================
loc_8c1a2058:
	mov.l @(0x08,r14),r0
	add 0x30,r0
	mov.b @r0,r0
	tst 0x10,r0
	bf loc_8c1a206c
	bsr loc_8c1a1b54
	mov r14,r4
	mov.l @(loc_8c1a2150,pc),r3
	jsr @r3
	mov.l @(0x08,r14),r4

loc_8c1a206c:
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14
	
;==============================================
loc_8c1a2074:
	mov.l @(0x8,r4),r3
	sts.l pr,@-r15
	tst r3,r3
	bf.s loc_8c1a2084
	mov 0x00,r6
	lds.l @r15+,pr
	rts 
	mov 0x00,r0

;==============================================
loc_8c1a2084:
	mov.b @r5,r0
	extu.b r0,r0
	tst 0x01,r0
	bt.s loc_8c1a2090
	mov.b @r5,r0
	add 0x01,r6

loc_8c1a2090:
	extu.b r0,r0
	tst 0x02,r0
	bt.s loc_8c1a209a
	mov.b @r5,r0
	add 0x01,r6

loc_8c1a209a:
	extu.b r0,r0
	tst 0x04,r0
	bt.s loc_8c1a20a4
	mov.b @r5,r0
	add 0x01,r6

loc_8c1a20a4:
	extu.b r0,r0
	tst 0x08,r0
	bt.s loc_8c1a20ae
	mov.b @r5,r0
	add 0x01,r6

loc_8c1a20ae:
	extu.b r0,r0
	tst 0x10,r0
	bt.s loc_8c1a20b8
	mov.b @r5,r0
	add 0x01,r6

loc_8c1a20b8:
	extu.b r0,r0
	tst 0x20,r0
	bt.s loc_8c1a20c2
	mov.b @r5,r0
	add 0x01,r6

loc_8c1a20c2:
	extu.b r0,r0
	tst 0x40,r0
	bt.s loc_8c1a20cc
	mov 0x01,r2
	add 0x01,r6

loc_8c1a20cc:
	mov.l @(0x8,r4),r4
	and r2,r6
	mov.w @(0x76,PC),r1
	mov.l @(0x80,PC),r3
	add 0x40,r4
	jsr @r3
	mov r4,r2
	cmp/eq 0x01,r0
	bt loc_8c1a20ee
	cmp/eq 0x03,r0
	bt loc_8c1a20f8
	cmp/eq 0x05,r0
	bt loc_8c1a2106
	cmp/eq 0x07,r0
	bt loc_8c1a210c
	bra loc_8c1a2112
	nop 

loc_8c1a20ee:
	extu.b r6,r6
	tst r6,r6
	bt loc_8c1a20fe
	bra loc_8c1a2112
	nop 

loc_8c1a20f8:
	extu.b r6,r6
	tst r6,r6
	bt loc_8c1a2112

loc_8c1a20fe:
	mov.b @r5,r0
	or 0x80,r0
	bra loc_8c1a2112
	mov.b r0,@r5

loc_8c1a2106:
	mov.b @r5,r0
	bra loc_8c1a2110
	or 0x80,r0

loc_8c1a210c:
	mov.b @r5,r0
	and 0x7F,r0

loc_8c1a2110:
	mov.b r0,@r5

loc_8c1a2112:
	mov.b @r5,r0
	lds.l @r15+,pr
	rts 
	nop 

loc_8c1A211A:
	rts
	mov r5,r0

;==============================================
loc_8c1A211e:
	sts.l pr,@-r15
	mov 0x00,r2
	add 0xF8,r15
	mov r15,r5
	mov r5,r3
	mov.l r5,@(0x4,r5)
	mov.b r2,@r3
	mov.w @(0x1C,PC),r3
	mov.l @(0x4,r15),r1
	mov.b r3,@r1
	bsr loc_8c1a2020
	mov r15,r5
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c1A213E:
	mov.w @(loc_8c1A214E,pc),r0 ; r0 set to 0x938
	mov.l @(0x0C,r4),r3
	mov.b @(r0,r3),r2
	extu.b r2,r2
	rts
	mov.l r2,@(0x04,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A214a:
	#data 0x0203
loc_8c1A214c:
	#data 0x00FE
loc_8c1A214E:
	#data 0x0938
	#align4

loc_8c1A2150:
	#data loc_8c1A2820
loc_8c1A2154:
	#data bank13.loc_8c130F3C

;==============================================
loc_8c1A2158:
	mov.l @(0x48,PC),r1
	mov.l @r1,r3
	tst r3,r3
	bf loc_8c1a2166
	mov.l @r1,r3
	add 0x01,r3
	mov.l r3,@r1

loc_8c1a2166:
	mov.l @(0x44,PC),r4
	mov 0x00,r1
	mov.l @(0x44,PC),r3
	mov.l @(0x38,PC),r2
	jmp @r3
	mov.b r1,@r2

;==============================================
loc_8c1a2172:
	mov.l @(0x40,PC),r2
	sts.l pr,@-r15
	mov.l @r2,r3
	tst r3,r3
	bf loc_8c1a2182
	mov.l @r2,r3
	add 0x01,r3
	mov.l r3,@r2

loc_8c1a2182:
	bsr loc_8c1a1b80
	nop 
	mov.l @(0x30,PC),r2
	mov 0x00,r3
	mov 0x01,r4
	mov.b r0,@r2
	add 0x02,r2
	mov.l @(0x28,PC),r1
	mov.b r3,@r1
	mov.l @(0x28,PC),r3
	mov.b r4,@r3
	mov.b r4,@r2
	mov.l @(0x14,PC),r1
	mov.l @(0x18,PC),r4
	jmp @r1
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1a21a4:
	#data 0x8C34849C
loc_8c1a21a8:
	#data 0x8C34849A
loc_8c1a21ac:
	#data 0x8C348498
loc_8c1A21B0:
#data bank18.loc_8c18C096
loc_8c1a21b4:
	#data 0x8C3484A4
loc_8c1a21b8:
	#data 0x8C3484A0
loc_8c1a21bc:
	#data 0x8C3484A1
loc_8c1a21c0:
	#data 0x8C3484A3

;==============================================
loc_8c1A21C4:
	mov.l @(loc_8c1A2298,pc),r2 ; r2 set to 0x8C348DC8
	mov.l @(loc_8c1A2294,pc),r3 ; r3 set to 0x8C3484A8
	mov.l r3,@r2 ; r2 ??
	mov.l @(loc_8c1A229C,pc),r1 ; r1 set to 0x8C3489B8
	mov.l @(loc_8c1A22A0,pc),r0 ; r0 set to 0x8C348DCC
	rts
	mov.l r1,@r0

;==============================================
;unused?
loc_8c1a21d2:
	mov.l @(0xC4,PC),r3
	mov 0x00,r4
	mov.l r4,@r3
	mov.l @(0xC4,PC),r2
	rts 
	mov.l r4,@r2

;==============================================
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

;==============================================
loc_8c1A2236:
	rts
	nop

;==============================================
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

;==============================================
loc_8c1a2258:
	mov.l @(0x08,r5),r2
	mov 0x59,r0
	mov.b @(r0,r2),r3
	tst r3,r3
	bt/s loc_8c1a227c
	mov 0x00,r6
	mov.w @(loc_8c1a2290,pc),r3
	mov.w @(loc_8C1A2292,pc),r0
	add r4,r3
	mov.l r3,@(r0,r4)
	add 0xFC,r0
	mov.l r3,@(r0,r4)
	add 0xFC,r0
	mov.w r6,@(r0,r4)
	add 0x02,r0
	mov.w r6,@(r0,r4)
	add 0x0A,r0
	mov.l r6,@(r0,r4)

loc_8c1a227c:
	mov.l @r7,r3
	mov 0x59,r0
	mov.l @(0x08,r3),r2
	bsr loc_8c1a2364
	mov.b r6,@(r0,r2)
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1a228e:
	#data 0x0500
loc_8c1a2290:
	#data 0x0100
loc_8C1A2292:
	#data 0x0508
	#align4

loc_8c1a2294:
	#data 0x8C3484A8
loc_8c1a2298:
	#data 0x8C348DC8
loc_8c1a229c:
	#data 0x8C3489B8
loc_8c1a22a0:
	#data 0x8C348DCC
loc_8c1a22a4:
	#data 0x8C348DC4
loc_8c1a22a8:
	#data 0x8C342B90
loc_8c1a22ac:
	#data loc_8C1A1FC8
loc_8c1a22b0:
	#data loc_8C1A19B0

;==============================================
loc_8c1a22b4:
	mov.l r14,@-r15
	mov 0x4C,r0
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l @(loc_8C1A23FC,pc),r12
	sts.l pr,@-r15
	mov.l @r12,r14
	mov.l @(0x08,r14),r3
	mov.l @(0x0C,r14),r2
	mov.l @(r0,r3),r1
	mov.w @(loc_8C1A23E6,pc),r3
	mov.b @(0x01,r1),r0
	mov.w @(loc_8C1A23E8,pc),r1
	extu.b r0,r0
	muls.w r3,r0
	add r1,r2
	sts macl,r0
	exts.w r0,r0
	add r0,r2
	mov r2,r0
	nop
	mov.w @r0,r0
	mov 0x01,r2
	and r2,r0
	extu.w r0,r0
	tst r0,r0
	bf/s loc_8c1a2354
	mov r4,r13
	mov.l @(0x08,r14),r2
	mov 0x4C,r0
	mov.w @(loc_8C1A23E6,pc),r3
	mov.l @(r0,r2),r0
	mov.w @(loc_8C1A23E8,pc),r2
	mov.b @(0x01,r0),r0
	mov.l @(0x0C,r14),r5
	extu.b r0,r0
	muls.w r3,r0
	add r2,r5
	sts macl,r0
	exts.w r0,r0
	add r0,r5
	mov.w @(0x02,r5),r0
	mov.l @(loc_8c1a2400,pc),r1
	mov r0,r5
	jsr @r1
	mov r14,r4
	mov.w @(loc_8C1A23EA,pc),r1
	add r13,r1
	mov.w r0,@r1
	mov.l @r12,r3
	mov.w @(loc_8C1A23EA,pc),r0
	mov.l @(0x08,r3),r2
	mov.w @(r0,r13),r6
	mov 0x4C,r0
	mov.l @(r0,r2),r1
	mov.w @(loc_8C1A23E6,pc),r3
	extu.w r6,r6
	mov.b @(0x01,r1),r0
	mov.l @r12,r5
	extu.b r0,r0
	mov.w @(loc_8C1A23E8,pc),r2
	muls.w r3,r0
	mov.l @(0x0C,r5),r5
	mov.l @(loc_8c1a2404,pc),r1
	add r2,r5
	sts macl,r0
	exts.w r0,r0
	add r0,r5
	add 0x04,r5
	jsr @r1
	mov r13,r4
	mov.w @(loc_8C1A23EC,pc),r0
	mov 0x00,r3
	mov 0x01,r5
	mov.w r3,@(r0,r13)
	mov.l @(loc_8c1a2408,pc),r3
	jsr @r3
	mov.l @r12,r4
	bra loc_8c1a2356
	mov 0x01,r4

loc_8c1a2354:
	mov 0x00,r4

loc_8c1a2356:
	mov r4,r0
	nop
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1a2364:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.w @(loc_8C1A23EE,pc),r0
	sts.l pr,@-r15
	mov.l @(r0,r14),r3
	add 0xFC,r0
	mov.l @(r0,r14),r2
	add 0xF8,r15
	cmp/eq r3,r2
	bt/s loc_8c1a238c
	mov 0x00,r13
	mov.w @(loc_8C1A23F0,pc),r0
	mov.l @(r0,r14),r3
	add 0x04,r0
	mov.l @(r0,r14),r13
	sub r3,r13

loc_8c1a238c:
	mov.l @(loc_8C1A23FC,pc),r12
	mov.l @(loc_8c1a240c,pc),r0
	mov.l @r12,r5
	mov.l @(0x04,r5),r5
	mov.l @(loc_8C1A2410,pc),r2
	shll2 r5
	mov.l @(r0,r5),r5
	mov.l @r2,r3
	mov.w @(loc_8C1A23F2,pc),r4
	mul.l r5,r3
	sts macl,r5
	mov r5,r1
	mov r4,r0
	nop
	mov.l @(loc_8c1a2414,pc),r2
	jsr @r2
	nop
	mov.w @(loc_8C1A23F4,pc),r2
	mov r5,r1
	mov r0,r11
	add r14,r2
	mov r4,r0
	nop
	mov.l @(loc_8c1a2418,pc),r3
	jsr @r3
	nop
	mov.l @r2,r3
	add r0,r3
	mov.l r3,@r2
	mov.w @(loc_8C1A23F4,pc),r0
	mov.l @(r0,r14),r2
	cmp/hs r4,r2
	bf loc_8c1a23d6
	mov.l @(r0,r14),r2
	add 0x01,r11
	sub r4,r2
	mov.l r2,@(r0,r14)

loc_8c1a23d6:
	mov.l @r12,r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c1a23e0
	mov.w @(loc_8C1A23F6,pc),r11

loc_8c1a23e0:
	mov.w @(loc_8C1A23F8,pc),r10
	bra loc_8c1a24a2
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1A23E6:
	#data 0x008C
loc_8C1A23E8:
	#data 0x04D8
loc_8C1A23EA:
	#data 0x0500
loc_8C1A23EC:
	#data 0x0502
loc_8C1A23EE:
	#data 0x0508
loc_8C1A23F0:
	#data 0x0504
loc_8C1A23F2:
	#data 0x03E8
loc_8C1A23F4:
	#data 0x050C
loc_8C1A23F6:
	#data 0x0080
loc_8C1A23F8:
	#data 0x03FF
	#align4

loc_8C1A23FC:
	#data 0x8C342B90
loc_8c1a2400:
	#data loc_8c1a211a
loc_8c1a2404:
	#data bank12.loc_8c129668
loc_8c1a2408:
	#data loc_8c1a1f04
loc_8c1a240c:
	#data bank1c.loc_8c1c6728
loc_8C1A2410:
	#data 0x8C348DC4
loc_8c1a2414:
	#data bank12.loc_8c1291dc
loc_8c1a2418:
	#data bank12.loc_8c12939c

;==============================================
loc_8c1a241c:
	mov.w @(loc_8C1A251E,pc),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bf loc_8c1a2436
	mov.l @r12,r1
	mov.b @r1,r3
	tst r3,r3
	bf loc_8c1a24a6
	bsr loc_8c1a22b4
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c1a24a6

loc_8c1a2436:
	mov.w @(loc_8C1A2520,pc),r0
	bra loc_8c1a248c
	mov.w @(r0,r14),r4

loc_8c1a243c:
	mov.w @(loc_8C1A2524,pc),r0
	mov.w @(loc_8C1A2522,pc),r3
	mov.l @(r0,r14),r2
	add r14,r3
	sub r3,r2
	cmp/eq r10,r2
	bt loc_8c1a24a6
	mov.l @r12,r2
	mov.l @(0x08,r2),r2
	mov r2,r0
	nop
	add 0x30,r0
	mov.b @r0,r0
	and 0x01,r0
	extu.b r0,r0
	tst r0,r0
	bt loc_8c1a2462
	bra loc_8c1a250e
	mov 0x01,r0

loc_8c1a2462:
	mov.w @(loc_8C1A2524,pc),r0
	extu.w r4,r3
	mov r14,r1
	add r1,r3
	mov.l @(r0,r14),r2
	add 0x01,r13
	cmp/eq r11,r13
	add 0x01,r2
	mov.l r2,@(r0,r14)
	mov.b @r3,r0
	mov.b r0,@-r2
	mov.w @(loc_8C1A2520,pc),r0
	mov.w @(r0,r14),r3
	add 0x01,r3
	mov.w r3,@(r0,r14)
	add 0xFE,r0
	mov.w @(r0,r14),r2
	add 0xFF,r2
	bt/s loc_8c1a2494
	mov.w r2,@(r0,r14)
	add 0x01,r4

loc_8c1a248c:
	mov.w @(loc_8C1A251E,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c1a243c

loc_8c1a2494:
	mov.w @(loc_8C1A2524,pc),r0
	mov.w @(loc_8C1A2522,pc),r3
	mov.l @(r0,r14),r2
	add r14,r3
	sub r3,r2
	cmp/eq r10,r2
	bt loc_8c1a24a6

loc_8c1a24a2:
	cmp/eq r11,r13
	bf loc_8c1a241c

loc_8c1a24a6:
	mov 0x00,r2
	cmp/hi r2,r13
	bf loc_8c1a250c
	mov.w @(loc_8C1A2526,pc),r0
	mov.l @(r0,r14),r1
	mov.l r1,@r15
	mov.l r13,@(0x04,r15)
	mov.l @(loc_8c1a2528,pc),r3
	jsr @r3
	mov r15,r4
	mov r0,r5
	mov.l @r5,r2
	cmp/eq r13,r2
	bt loc_8c1a2500
	mov.w @(loc_8C1A2526,pc),r0
	mov.l @r5,r3
	mov.l @(r0,r14),r2
	mov.w @(loc_8C1A2522,pc),r6
	add r3,r2
	mov.l r2,@(r0,r14)
	mov.l @r5,r4
	cmp/hs r13,r4
	bt/s loc_8c1a24ea
	add r14,r6

loc_8c1a24d6:
	mov.l @(r0,r14),r3
	add 0x01,r4
	cmp/hs r13,r4
	add 0x01,r3
	mov.l r3,@(r0,r14)
	add 0xFF,r3
	mov.b @r3,r1
	mov.b r1,@r6
	bf/s loc_8c1a24d6
	add 0x01,r6

loc_8c1a24ea:
	mov.w @(loc_8C1A2522,pc),r2
	add r14,r2
	mov.l r2,@(r0,r14)
	add 0x04,r0
	mov.w @(loc_8C1A2522,pc),r3
	mov.l @r5,r2
	add r14,r3
	add r3,r13
	sub r2,r13
	bra loc_8c1a250c
	mov.l r13,@(r0,r14)

loc_8c1a2500:
	mov.w @(loc_8C1A2522,pc),r2
	mov.w @(loc_8C1A2524,pc),r0
	add r14,r2
	mov.l r2,@(r0,r14)
	add 0xFC,r0
	mov.l r2,@(r0,r14)

loc_8c1a250c:
	mov 0x00,r0

loc_8c1a250e:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1A251E:
	#data 0x0500
loc_8C1A2520:
	#data 0x0502
loc_8C1A2522:
	#data 0x0100
loc_8C1A2524:
	#data 0x0508
loc_8C1A2526:
	#data 0x0504
	#align4

loc_8c1a2528:
	#data bank18.loc_8c18c064

;==============================================
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

;==============================================
loc_8c1A2540:
	rts
	nop

;==============================================
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

;==============================================
loc_8c1a255a:
	mov.l @(0x08,r5),r3
	mov 0x58,r0
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c1a2574
	mov.w @(loc_8c1a2628,pc),r0
	mov r4,r2
	mov 0x00,r3
	mov.l r4,@(r0,r4)
	add 0xFC,r0
	mov.l r2,@(r0,r4)
	add 0x08,r0
	mov.l r3,@(r0,r4)

loc_8c1a2574:
	bsr loc_8c1a258e
	nop
	mov.l @(loc_8c1a2630,pc),r3
	mov 0x00,r0
	mov.l @r3,r2
	mov.l @(0x08,r2),r1
	mov 0x58,r2
	add r1,r2
	mov.b r0,@r2
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1a258e:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov 0x00,r12
	mov.l r11,@-r15
	mov.l @(loc_8c1a2630,pc),r11
	sts.l pr,@-r15
	add 0xEC,r15
	mov.l r12,@r15
	mov.l @r11,r4
	mov.l @(0x08,r4),r5
	mov.l @(0x34,r5),r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c1a25be
	mov r5,r0
	nop
	add 0x30,r0
	mov.b @r0,r0
	tst 0x08,r0
	bf loc_8c1a25be
	bra loc_8c1a26b2
	mov 0x01,r0

loc_8c1a25be:
	mov.l @(loc_8c1a2634,pc),r0
	mov.l @(0x04,r4),r2
	mov.l @(loc_8C1A2638,pc),r1
	shll2 r2
	mov.l @(r0,r2),r3
	mov.l @r1,r4
	mov.w @(loc_8C1A262A,pc),r0
	mul.l r3,r4
	mov.l @(loc_8c1a263c,pc),r3
	sts macl,r4
	jsr @r3
	mov r4,r1
	mov r0,r13
	bsr loc_8c1a26c0
	mov r14,r4
	mov r0,r4
	mov.w @(loc_8C1A262C,pc),r0
	mov.l @(r0,r14),r3
	add r13,r3
	cmp/hi r4,r3
	bf loc_8c1a25f8
	mov.l @(r0,r14),r2
	cmp/hi r4,r2
	bf loc_8c1a25f2
	bra loc_8c1a25f8
	mov r12,r13

loc_8c1a25f2:
	mov.l @(r0,r14),r3
	mov r4,r13
	sub r3,r13

loc_8c1a25f8:
	tst r13,r13
	bt loc_8c1a2644
	mov.w @(loc_8c1a2628,pc),r0
	mov.l @(r0,r14),r1
	mov.l r1,@(0x04,r15)
	mov.w @(loc_8C1A262E,pc),r4
	mov r4,r0
	nop
	add 0x08,r0
	mov.l @(r0,r14),r3
	add r13,r3
	cmp/hs r4,r3
	bf loc_8c1a261a
	mov.w @(loc_8C1A262C,pc),r0
	mov.l @(r0,r14),r13
	neg r13,r13
	add r4,r13

loc_8c1a261a:
	mov r15,r4
	mov.l r13,@(0x08,r15)
	mov.l @(loc_8c1a2640,pc),r3
	jsr @r3
	add 0x04,r4
	bra loc_8c1a264e
	mov r0,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1a2628:
	#data 0x0404
loc_8C1A262A:
	#data 0x03E8
loc_8C1A262C:
	#data 0x0408
loc_8C1A262E:
	#data 0x0400
	#align4

loc_8c1a2630:
	#data 0x8C342B90
loc_8c1a2634:
	#data bank1c.loc_8c1c6728
loc_8C1A2638:
	#data 0x8C348DC4
loc_8c1a263c:
	#data bank12.loc_8c1291dc
loc_8c1a2640:
	#data bank18.loc_8c18c02a

;==============================================
loc_8c1a2644:
	mov r15,r4
	mov 0x01,r3
	add 0x0C,r4
	mov.l r3,@(0x04,r4)
	mov.l r12,@r4

loc_8c1a264e:
	mov.w @(loc_8C1A2768,pc),r0
	mov r15,r7
	mov.l @r4,r13
	mov.l @(r0,r14),r3
	mov.l r12,@(r0,r14)
	add 0xF8,r0
	add r3,r13
	mov.l @(r0,r14),r5
	mov.l @(loc_8c1a2770,pc),r3
	mov r13,r6
	jsr @r3
	mov.l @r11,r4
	mov.w @(loc_8C1A276A,pc),r0
	mov.l @r15,r3
	mov.l @(r0,r14),r2
	add r3,r2
	mov.l r2,@(r0,r14)
	mov.l @r15,r0
	cmp/eq r13,r0
	bt loc_8c1a26a0
	mov.w @(loc_8C1A2768,pc),r0
	mov.l @r15,r2
	sub r2,r13
	mov r14,r2
	mov.l r13,@(r0,r14)
	mov.l @(r0,r14),r3
	add 0xFC,r0
	add r3,r2
	mov.l r2,@(r0,r14)
	add 0x04,r0
	mov.l @(r0,r14),r6
	add 0xF8,r0
	mov.l @(loc_8c1a2774,pc),r3
	mov.l @(r0,r14),r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C1A276A,pc),r0
	mov r14,r2
	mov.l r14,@(r0,r14)
	bra loc_8c1a26b2
	mov 0x04,r0

loc_8c1a26a0:
	mov.w @(loc_8C1A276C,pc),r0
	mov r14,r3
	mov.l r14,@(r0,r14)
	add 0xFC,r0
	mov.l r3,@(r0,r14)
	mov.l @(loc_8c1a2778,pc),r3
	jsr @r3
	mov.l @r11,r4
	mov 0x00,r0

loc_8c1a26b2:
	add 0x14,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1a26c0:
	mov.l @(loc_8C1A277C,pc),r3
	mov 0x4C,r0
	mov 0x00,r7
	mov.l @r3,r5
	mov r7,r6
	mov.l @(0x08,r5),r4
	mov.l @(r0,r4),r4
	bra loc_8c1a2714
	mov.b @r4,r4

loc_8c1a26d2:
	mov.l @(0x08,r5),r2
	mov 0x4C,r0
	extu.b r4,r3
	mov.l @(r0,r2),r1
	mov.b @r1,r2
	extu.b r2,r2
	cmp/eq r2,r3
	bf/s loc_8c1a26f6
	add 0x01,r4
	mov.l @(0x08,r5),r1
	mov.l @(r0,r1),r2
	mov.l @(0x08,r1),r3
	mov.w @(0x02,r2),r0
	extu.w r0,r0
	sub r0,r3
	add 0xFF,r3
	bra loc_8c1a26fc
	add r3,r6

loc_8c1a26f6:
	mov.l @(0x08,r5),r3
	mov.l @(0x08,r3),r2
	add r2,r6

loc_8c1a26fc:
	extu.b r4,r0
	cmp/eq 0x08,r0
	bf loc_8c1a2704
	mov r7,r4

loc_8c1a2704:
	mov.l @(0x08,r5),r3
	mov 0x4C,r0
	extu.b r4,r2
	mov.l @(r0,r3),r1
	mov.b @r1,r3
	extu.b r3,r3
	cmp/eq r3,r2
	bt loc_8c1a2732

loc_8c1a2714:
	mov.w @(loc_8C1A276E,pc),r1
	extu.b r4,r3
	mov.l @(0x0C,r5),r2
	muls.w r1,r3
	add 0x78,r2
	sts macl,r3
	exts.w r3,r3
	add r3,r2
	mov r2,r3
	mov.w @r3,r3
	mov 0x01,r2
	and r2,r3
	extu.w r3,r3
	tst r3,r3
	bf loc_8c1a26d2

loc_8c1a2732:
	rts
	mov r6,r0

;==============================================
loc_8c1a2736:
	mov.l @(0x48,PC),r3
	rts 
	mov.b r4,@r3

;==============================================
loc_8c1a273c:
	mov.l @(0x40,PC),r2
	rts 
	mov.b @r2,r0

;==============================================
loc_8c1a2742:
	mov.l @(0x3C,PC),r3
	mov.b @r3,r0
	extu.b r0,r0
	rts 
	cmp/eq 0x01,r0

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1a2768:
	#data 0x0408
loc_8c1a276a:
	#data 0x0400
loc_8c1a276c:
	#data 0x0404
loc_8c1a276e:
	#data 0x008C
	#align4

loc_8c1A2770:
	#data loc_8c1A167A
loc_8c1A2774:
	#data bank12.loc_8c129668
loc_8c1A2778:
	#data loc_8c1A1D64
loc_8c1a277c:
	#data 0x8C342B90
loc_8c1A2780:
	#data bank1c.loc_8c1c9B11
loc_8c1A2784:
	#data 0x8C3484A8
loc_8c1A2788:
	#data 0x8C3489B8

;==============================================
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

;==============================================
loc_8c1A281C:
	rts
	nop

;==============================================
loc_8c1A2820:
	sts.l pr,@-r15
	mov.l @(loc_8c1A2848,pc),r3 ; r3 set to 0x8C1B6EC0
	jsr @r3
	nop
	lds.l @r15+,pr
	rts
	mov 0x01,r0

;==============================================
loc_8c1A282E:
	mov 0x00,r0 ; r0 set to 0x00
	mov.w r0,@(0x02,r4)
	mov.w r0,@(0x04,r4)
	mov.b r0,@(0x06,r4)
	mov.b r0,@(0x07,r4)
	mov.b r0,@r4
	rts
	mov.b r0,@(0x01,r4)

;==============================================
loc_8c1A283E:
	mov 0x00,r0 ; r0 set to 0x00
	mov.w r0,@(0x04,r4)
	mov.b r0,@(0x07,r4)
	rts
	mov.b r0,@(0x01,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A2848:
	#data bank1b.loc_8c1b6EC0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
;Padding? 8c1a284c to 8c1A4860
	#repeat 2053
	#data 0x00000000


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A4860:
	#data 0x00000000
loc_8c1A4864:
	#data 0x00000000

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1A48DC:
	#data loc_8c1A4864
loc_8c1A48E0:
	#data loc_8c1A4860

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
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

loc_8c1a4916:
	mov r4,r3
	mov 0xE0,r2
	add 0x20,r3
	and r3,r2

loc_8c1a491e:
	mov r2,r5
	mov.l @(loc_8c1a4960,pc),r3
	mov.l r2,@(0x0C,r15)
	shll r5
	mov r15,r6
	jsr @r3
	mov 0x02,r4
	mov r0,r14
	tst r14,r14
	bf loc_8c1a4948
	mov.l @(loc_8c1a4964,pc),r3
	mov.l @(0x08,r15),r8
	jsr @r3
	mov.l @r15,r4
	mov.l r0,@r8
	mov.l @(loc_8c1a4964,pc),r3
	mov.l @r15,r4
	mov.l @(0x04,r15),r8
	jsr @r3
	add 0x04,r4
	mov.l r0,@r8

loc_8c1a4948:
	mov r14,r0
	add 0x10,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1a4960:
	#data bank18.loc_8c18c360
loc_8c1a4964:
	#data bank1b.loc_8c1b7980

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================s
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

loc_8c1a499a:
	mov r4,r3
	mov 0xE0,r2
	add 0x20,r3
	and r3,r2

loc_8c1a49a2:
	mov 0x00,r3
	mov.l r2,@(0x04,r15)
	mov.l r3,@r14
	mov r14,r6
	mov.l @(0x04,r15),r5
	mov.l @(loc_8c1a49e0,pc),r3
	shll r5
	jsr @r3
	mov 0x02,r4
	mov r0,r12
	tst r12,r12
	bf loc_8c1a49d0
	mov.l @(loc_8c1a49e4,pc),r3
	mov.l @r14,r13
	jsr @r3
	mov r13,r4
	mov.l @(loc_8c1a49e4,pc),r3
	mov r13,r4
	mov.l r0,@r14
	mov.l @r15,r8
	jsr @r3
	add 0x04,r4
	mov.l r0,@r8

loc_8c1a49d0:
	mov r12,r0
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1a49e0:
	#data bank1b.loc_8c1b7940
loc_8c1a49e4:
	#data bank1b.loc_8c1b7980

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
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

;==============================================
	#repeat 5
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A4A60:
	#data 0x4000
	#align4

loc_8c1A4A64:
	#data loc_8c1A4E80

loc_8c1A4A68:
	#data bank1b.loc_8c1b78E0

;==============================================
	#repeat 4
	nop

	#align16_nop

;==============================================
loc_8c1A4A80:
	mov.l @(loc_8c1A4AC4,pc),r3 ; r3 set to 0x8000
	bra loc_8c1A4A88
	nop

loc_8c1a4a86:
	mov.w @(loc_8C1A4AC0,pc),r3

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

;==============================================
	#repeat 6
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1a4ac0:
	#data 0x0100
	#align4

loc_8c1A4AC4:
	#data 0x00008000

;==============================================
	#repeat 6
	nop

	#align16_nop

;==============================================
loc_8c1a4ae0:
	mov.w @(0x1E,r14),r0
	or 0x10,r0

loc_8c1a4ae4:
	mov.w r0,@(0x1E,r14)
	jsr @r12
	mov.l @(0x30,r14),r4

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

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A4BC0:
	#data 0x12C1
	#align4

loc_8c1A4BC4:
	#data 0xFFA0002C
loc_8c1A4BC8:
	#data 0xFFA00020
loc_8c1A4BCC:
	#data 0xFFA00028
loc_8c1A4BD0:
	#data 0x00008201
loc_8c1A4BD4:
	#data 0xFFA00040
loc_8c1A4BD8:
	#data 0xA05F6800
loc_8c1A4BDC:
	#data 0xA05F6804
loc_8c1A4BE0:
	#data 0xA05F6808
loc_8c1A4BE4:
	#data 0x6702007F
loc_8c1A4BE8:
	#data 0xA05F7C80
loc_8c1A4BEC:
	#data 0xA05F7C00
loc_8c1A4BF0:
	#data 0xA05F7C04
loc_8c1A4BF4:
	#data 0xA05F7C08
loc_8c1A4BF8:
	#data 0xA05F7C0C

;==============================================
	#align16_nop

;==============================================
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

loc_8c1a4c4a:
	mov 0x3C,r0
	mov.w @(r0,r13),r3
	add 0xFF,r3
	mov.w r3,@(r0,r13)
	mov 0x3A,r0
	mov.w @(r0,r13),r2
	mov 0x1F,r3
	add 0x01,r2
	mov.w r2,@(r0,r13)
	mov.w @(r0,r13),r2
	and r3,r2
	mov.w r2,@(r0,r13)
	mov.l r4,@(0x28,r13)

loc_8c1A4C64:
	mov.l @(0x04,r14),r3
	tst r3,r6
	bt loc_8c1A4C6E
	bra loc_8c1A4C70
	mov.l r4,@(0x1C,r13)

loc_8c1a4c6e:
	mov.l r4,@(0x18,r13)

loc_8c1a4c70:
	mov.l @(loc_8C1A4D00,pc),r2
	mov.l @r2,r3
	mov.l @(0x24,r14),r1
	sub r3,r1
	mov.l @(loc_8c1a4d04,pc),r3
	shll2 r1
	shll2 r1
	shll2 r1
	shll r1
	jsr @r3
	mov 0x64,r0
	mov.l r0,@(0x24,r14)
	mov.l r4,@(0x28,r14)
	mov.l @(0x18,r14),r1
	tst r1,r1
	bt loc_8c1a4c96
	mov.l @(0x18,r14),r3
	jsr @r3
	mov r14,r4

loc_8c1a4c96:
	mov.l @(loc_8c1a4d08,pc),r2
	jsr @r2
	nop

loc_8c1A4C9C:
	lds.l @r15+,pr
	mov 0x01,r0 ; r0 set to 0x01
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
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

loc_8c1a4cce:
	mov.l @(0x14,r5),r13
	tst r13,r13
	bt loc_8c1a4cd8
	jsr @r13
	mov r14,r4

loc_8c1A4CD8:
	lds.l @r15+,pr
	mov 0x01,r0 ; r0 set to 0x01
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
	#repeat 9
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1a4d00:
	#data 0xFFD8000C
loc_8c1A4D04:
	#data bank12.loc_8c1291DC
loc_8c1A4D08:
	#data bank18.loc_8c18FAE0

loc_8c1A4D0C:
	#data loc_8c1A4E80

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#align16

;==============================================
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

;==============================================
	#repeat 4
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
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
loc_8c1A4DB0:
	#data bank18.loc_8c18C320
loc_8c1A4DB4:
	#data 0x80000000
loc_8c1A4DB8:
	#data bank18.loc_8c18C32A

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align16

;==============================================
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

;==============================================
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

;==============================================
	#repeat 5
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1A4E00:
	#data 0x0000EEEE
loc_8c1A4E04:
	#data 0xA4000000
loc_8c1A4E08:
	#data bank17.loc_8c17A6E0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
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

;==============================================
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

;==============================================
	#repeat 5
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1A4E60:
	#data 0x0000EEEE
loc_8c1A4E64:
	#data 0xA5000000
loc_8c1A4E68:
	#data bank17.loc_8c17A6E0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#align16

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A4E80:
	#data 0x00000000

	#repeat 2047
	#data 0x00000000

;==============================================
loc_8c1A6E80:
	mov.l @r4,r2
	mov.l @(loc_8c1A6EA0,pc),r3 ; r3 set to 0xDFFFFFFF
	and r3,r2
	rts
	mov.l r2,@r4

;==============================================
	#repeat 5
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1A6EA0:
	#data 0xDFFFFFFF

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c1A6EC0:
	mov.l @r4,r2
	mov.l @(loc_8c1A6EE0,pc),r3 ; r3 set to 0x40000000
	or r3,r2
	rts
	mov.l r2,@r4

;==============================================
	#repeat 5
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1A6EE0:
	#data 0x40000000

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c1A6F00:
	mov.l @r4,r2
	mov.l @(loc_8c1A6F20,pc),r3 ; r3 set to 0x20000000
	or r3,r2
	rts
	mov.l r2,@r4

;==============================================
	#repeat 5
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1A6F20:
	#data 0x20000000

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c1A6F40:
	mov.l @r4,r2
	mov.l @(loc_8c1A6F60,pc),r3 ; r3 set to 0xBFFFFFFF
	and r3,r2
	rts
	mov.l r2,@r4

;==============================================
	#repeat 4
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1A6F60:
	#data 0xBFFFFFFF

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
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

;==============================================
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1A6FC0:
	#data 0x00100000

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
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

loc_8c1a6ffc:
	mov.l @(loc_8C1A706C,pc),r3
	tst r13,r3
	bt/s loc_8c1a7016
	mov.l @r15,r5
	mov.l @(loc_8C1A7070,pc),r3
	tst r13,r3
	bt/s loc_8c1a700e
	add 0x01,r14
	add 0x01,r14

loc_8c1a700e:
	mov.l @(loc_8C1A7074,pc),r3
	tst r3,r13
	bf loc_8c1a7016
	add 0x01,r14

loc_8c1a7016:
	mov.w @(loc_8C1A7060,pc),r0
	mov 0x07,r1
	mov.l @(loc_8C1A7078,pc),r3
	and r1,r14
	mov.l @(r0,r5),r4
	shll16 r14
	shll8 r14
	mov.l @(0x08,r4),r2
	mov 0x00,r0
	and r3,r2
	or r14,r2
	mov.l r2,@(0x08,r4)

loc_8c1A702E:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
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

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1a7060:
	#data 0x0088
	#align4

loc_8c1A7064:
	#data loc_8c1A7FC0
loc_8c1A7068:
	#data 0x0000EEEE
loc_8c1a706c:
	#data 0x02000000
loc_8c1a7070:
	#data 0x01000000
loc_8c1a7074:
	#data 0x00400000
loc_8c1a7078:
	#data 0x00FFFFFF

;==============================================
	#align16_nop

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align16

;==============================================
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

braf_8c1a70e6:
	braf r0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1A70EC:
	#data bank1c.loc_8c1c6818
loc_8c1A70F0:
	#data bank18.loc_8c18DDA0

;==============================================
loc_8c1A70F4:
	#data16 {loc_8c1a71ee-braf_8c1a70e6-4} ; 0x0104
	#data16 {loc_8c1a71f6-braf_8c1a70e6-4} ; 0x010C
	#data16 {loc_8c1a71fc-braf_8c1a70e6-4} ; 0x0112
	#data16 {loc_8c1a7202-braf_8c1a70e6-4} ; 0x0118
	#data16 {loc_8c1a720e-braf_8c1a70e6-4} ; 0x0124
	#data16 {loc_8c1a7216-braf_8c1a70e6-4} ; 0x012C
	#data16 {loc_8c1a7226-braf_8c1a70e6-4} ; 0x013C
	#data16 {loc_8c1a710c-braf_8c1a70e6-4} ; 0x0022
	#data16 {loc_8c1a7120-braf_8c1a70e6-4} ; 0x0036
	#data16 {loc_8c1a716a-braf_8c1a70e6-4} ; 0x0080
	#data16 {loc_8c1a717c-braf_8c1a70e6-4} ; 0x0092
	#data16 {loc_8c1a71c0-braf_8c1a70e6-4} ; 0x00D6

loc_8c1a710c:
	tst r13,r13
	bt loc_8c1a7118
	mov r13,r4
	mov.l @(0xC,r4),r1
	bra loc_8c1a723e
	mov.l r1,@r14

loc_8c1a7118:
	mov.l @(0x84,PC),r2
	mov.l @r2,r0
	bra loc_8c1a723e
	mov.l r0,@r14

;==============================================
loc_8c1a7120:
	tst r13,r13
	bt loc_8c1a712a
	mov r13,r4
	bra loc_8c1a720a
	mov.l @(0x10,r4),r2

loc_8c1a712a:
	mov.l @(0x78,PC),r1
	mov.l @r1,r0
	tst r0,r0
	bf loc_8c1a7162
	mov.l @(0x74,PC),r2
	mov 0x01,r4
	mov.l @r2,r0
	and r4,r0
	cmp/eq 0x01,r0
	bt loc_8c1a715a
	mov.l @(0x68,PC),r3
	mov.l @r3,r0
	and 0x2C,r0
	cmp/eq 0x20,r0
	bf loc_8c1a715a
	tst r4,r4
	bt loc_8c1a715a
	mov.l @(0x5C,PC),r1
	mov.l @r1,r3
	mov 0x00,r2
	cmp/gt r3,r2
	addc r2,r3
	bra loc_8c1a723c
	shar r3

loc_8c1a715a:
	mov.l @(0x50,PC),r2
	mov.l @r2,r1
	bra loc_8c1a723e
	mov.l r1,@r14

loc_8c1a7162:
	mov.l @(0x4C,PC),r2
	mov.l @r2,r0
	bra loc_8c1a723e
	mov.l r0,@r14

;==============================================
loc_8c1a716a:
	tst r13,r13
	bt loc_8c1a7174
	mov r13,r4
	bra loc_8c1a720a
	mov.l @(0x8,r4),r2

loc_8c1a7174:
	mov.l @(0x3C,PC),r1
	mov.l @r1,r0
	bra loc_8c1a723e
	mov.l r0,@r14

;==============================================
loc_8c1a717c:
	tst r13,r13
	bt loc_8c1a7186
	mov r13,r4
	bra loc_8c1a718e
	mov.l @(0x4,r4),r1

loc_8c1a7186:
	mov.l @(0x2C,PC),r2
	mov.l @r2,r0
	shll2 r0
	mov.l @(r0,r5),r1

loc_8c1a718e:
	bra loc_8c1a723e
	mov.l r1,@r14

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1a71a0:
	#data 0x8C3434A0
loc_8c1a71a4:
	#data 0x8C3434E8
loc_8c1a71a8:
	#data 0x8C343430
loc_8c1a71ac:
	#data 0x8C3434A4
loc_8c1a71b0:
	#data 0x8C3434EC
loc_8c1a71b4:
	#data 0x8C343434

;==============================================
	#align16_nop

;==============================================
loc_8c1a71c0:
	tst r13,r13
	bt loc_8c1a71ce
	mov r13,r4
	mov.l @(0x2C,r4),r1
	shll2 r1
	bra loc_8c1a71ea
	shll r1

loc_8c1a71ce:
	mov.l @(0x90,PC),r2
	mov.l @r2,r0
	shll2 r0
	mov.l @(r0,r5),r1
	cmp/pz r1
	bt loc_8c1a71dc
	add 0x07,r1

loc_8c1a71dc:
	shar r1
	mov.l @(0x84,PC),r3
	shar r1
	shar r1
	mov.l @r3,r0
	mul.l r1,r0
	sts macl,r1

loc_8c1a71ea:
	bra loc_8c1a723e
	mov.l r1,@r14

;==============================================
loc_8c1a71ee:
	mov.l @(0x74,PC),r2
	mov.l @r2,r0
	bra loc_8c1a723e
	mov.l r0,@r14

;==============================================
loc_8c1a71f6:
	mov.l @(0x70,PC),r1
	bra loc_8c1a720a
	mov.l @r1,r2

loc_8c1a71fc:
	mov.l @(0x60,PC),r0
	bra loc_8c1a720a
	mov.l @r0,r2

loc_8c1a7202:
	mov.l @(0x5C,PC),r1
	mov.l @r1,r0
	shll2 r0
	mov.l @(r0,r5),r2

loc_8c1a720a:
	bra loc_8c1a723e
	mov.l r2,@r14

loc_8c1a720e:
	mov 0x00,r6
	mov r13,r7
	bra loc_8c1a721c
	mov r14,r5

loc_8c1a7216:
	mov 0x00,r5
	mov r14,r6
	mov r13,r7

loc_8c1a721c:
	mov.l @(0x4C,PC),r2
	jsr @r12
	mov.l @r2,r4
	bra loc_8c1a723e
	nop 

;==============================================
loc_8c1a7226:
	mov r15,r6
	mov.l @(0x40,PC),r2
	mov r15,r5
	mov r13,r7
	add 0x04,r6
	jsr @r12
	mov.l @r2,r4
	mov.l @r15,r2
	mov.l @(0x4,r15),r3
	mul.l r3,r2
	sts macl,r3

loc_8c1a723c:
	mov.l r3,@r14

loc_8c1A723E:
	mov 0x00,r0 ; r0 set to 0x00
	add 0x20,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
	#repeat 4
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c1A7260:
	#data 0x8C343434
loc_8c1A7264:
	#data 0x8C3434A0
loc_8c1A7268:
	#data 0x8C3434A4
loc_8c1A726c:
	#data 0x8C343430

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#align16

;==============================================
loc_8c1A7280:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x58,PC),r3
	mov.l @(0x54,PC),r13
	mov.l r4,@r15
	jsr @r3
	mov r5,r14
	tst r0,r0
	bt loc_8c1a72b8
	mov.l @r15,r4
	tst r14,r14
	bt.s loc_8c1a72b8
	add 0x18,r4
	mov.l @r4,r2
	mov 0x00,r13
	mov.l r2,@r14
	mov.l @(0x4,r4),r3
	mov.l r3,@(0x4,r14)
	mov.l @(0x14,r4),r2
	mov.l r2,@(0x8,r14)
	mov.l @(0x18,r4),r3
	mov.l r3,@(0xC,r14)
	mov.l @(0x28,r4),r2
	mov.l r2,@(0x10,r14)
	mov.l @(0x2C,r4),r3
	mov.l r3,@(0x14,r14)

loc_8c1A72B8:
	mov r13,r0
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
	#repeat 7
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1A72E0:
	#data 0x0000EEEE
loc_8c1A72E4:
	#data loc_8c1A7FC0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
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

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c1A7380:
	#data 0x8C343B1C
loc_8c1A7384:
	#data 0x80800000
loc_8c1A7388:
	#data 0x20800000
loc_8c1A738C:
	#data 0x40000000
loc_8c1A7390:
	#data 0x43820000
loc_8c1A7394:
	#data 0x3727C5AC
loc_8c1A7398:
	#data 0xFF000000
loc_8c1A739C:
	#data 0x43160000
loc_8c1A73A0:
	#data 0x440C0000
loc_8c1A73A4:
	#data loc_8c1A7700
loc_8c1A73A8:
	#data loc_8c1A7038
loc_8c1A73AC:
	#data loc_8c1A4E20
loc_8c1A73B0:
	#data loc_8c1A6FE0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align16

;==============================================
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

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A7420:
	#data 0xFF00
	#align4

loc_8c1A7424:
	#data loc_8c1A7FC0
loc_8c1A7428:
	#data 0x0000EEEE

;==============================================
	#repeat 3
	nop

	#align16_nop

;==============================================
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

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A7460:
	#data 0xFF00
	#align4

loc_8c1A7464:
	#data 0x0000EEEE

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c1A7480:
	mov.l @(0x4,r4),r5
	tst r5,r5
	bt loc_8c1a7490

loc_8c1A7486:
	mov.l @(0xC,r5),r3
	mov.l @(0x4,r5),r5
	tst r3,r3
	tst r5,r5
	bf loc_8c1a7486

loc_8c1A7490:
	rts 
	mov 0x00,r0

;==============================================
loc_8c1A7494:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x4,r4),r14
	tst r14,r14
	bt loc_8c1a74b0

loc_8c1A749E:
	mov.l @(0x14,r14),r3
	tst r3,r3
	bt loc_8c1a74aa
	mov.l @(0x14,r14),r3
	jsr @r3
	mov r14,r4

loc_8c1A74AA:
	mov.l @(0x4,r14),r14
	tst r14,r14
	bf loc_8c1a749e

loc_8c1A74B0:
	lds.l @r15+,pr
	mov 0x00,r0
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1A74B8:
	mov.l @(0x4,r4),r4
	mov 0x00,r7
	tst r4,r4
	bt.s loc_8c1a74d8
	mov 0x01,r0

loc_8c1A74C2:
	cmp/eq r5,r4
	bf loc_8c1a74d2
	tst r4,r4
	bt loc_8c1a74d2
	mov.l @(0x8,r4),r2
	cmp/eq r6,r2
	bf loc_8c1a74d2
	mov r0,r7

loc_8c1A74D2:
	mov.l @(0x4,r4),r4
	tst r4,r4
	bf loc_8c1a74c2

loc_8c1A74D8:
	rts 
	mov r7,r0

;==============================================
loc_8c1A74DC:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r5,r14
	mov r14,r5
	mov.l r6,@r15
	mov r4,r13
	bsr loc_8c1a74b8
	mov r13,r4
	tst r0,r0
	bf loc_8c1a7510
	mov.l r13,@r14
	mov.l @(0x4,r13),r4
	mov.l r14,@(0x4,r13)
	mov.l r4,@(0x4,r14)
	mov.l @r15,r3
	mov.l r3,@(0x8,r14)
	mov.l @(0xC,r14),r2
	tst r2,r2
	bt loc_8c1a750c
	mov.l @(0xC,r14),r2
	jsr @r2
	mov r14,r4

loc_8c1A750C:
	bra loc_8c1a7512
	mov 0x00,r4

loc_8c1A7510:
	mov.l @(0x2C,PC),r4

loc_8c1A7512:
	mov r4,r0
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
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

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1a7540:
	#data 0x0000EEEE
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align16

;==============================================
loc_8c1a7560:
	mov.w @(loc_8c1a75e2,pc),r5
	mov 0x00,r1
	mov.l @(loc_8C1A75E8,pc),r6
	mov 0x01,r0
	mov.w @(loc_8C1A75E0,pc),r7
	add r6,r5

loc_8c1a756c:
	cmp/eq r4,r5
	bf/s loc_8c1a7574
	add 0x2C,r5
	mov r0,r1

loc_8c1a7574:
	mov.w @(loc_8c1a75e2,pc),r2
	add r6,r2
	add r7,r2
	cmp/hs r2,r5
	bf loc_8c1a756c
	rts
	mov r1,r0

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

loc_8c1a75c8:
	add 0x01,r4
	cmp/ge r14,r4
	bf loc_8c1a7594

loc_8c1A75CE:
	bra loc_8c1A75D4
	mov 0x00,r0

loc_8c1A75D2:
	mov.l @(loc_8c1A75EC,pc),r0 ; r0 set to 0xEEEE

loc_8c1A75D4:
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1a75e0:
	#data 0x0160
loc_8c1A75E2:
	#data 0x0254
loc_8c1A75E4:
	#data 0x0248
	#align4

loc_8c1a75e8:
	#data 0x8C348DF4
loc_8c1A75EC:
	#data 0x0000EEEE

;==============================================
	nop
	#align16_nop

;==============================================
loc_8c1a7600:
	mov 0x00,r4
	mov 0x08,r5
	mov 0x2C,r6

loc_8c1a7606:
	mul.l r6,r4
	mov.l @(0x58,PC),r0
	sts macl,r3
	mov.l r4,@(r0,r3)
	add 0x01,r4
	cmp/ge r5,r4
	bf loc_8c1a7606
	rts 
	mov 0x00,r0
          
;==============================================
loc_8c1A7618:
	rts 
	mov 0x00,r0

;==============================================
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

;==============================================
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

;==============================================
loc_8c1a7658:
	rts 
	mov 0x00,r0

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A7660:
	#data 0x0248
	#align4

loc_8c1A7664:
	#data 0x8C349048
loc_8c1A7668:
	#data 0x0000EEEE
loc_8c1A766C:
	#data 0x8C348DF4

;==============================================
	nop
	#align16_nop

;==============================================
loc_8c1a7680:
	rts 
	mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
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

;unused?
loc_8c1A76c8:
	sts.l pr,@-r15
	mov.l @(0x14,PC),r3
	mov 0x07,r5
	jsr @r3
	mov 0x08,r4
	mov.l @(0xC,PC),r2
	mov 0x08,r4
	mov 0x00,r5
	jmp @r2
	lds.l @r15+,pr

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1A76E0:
	#data bank18.loc_8c18C320

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
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

;==============================================
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

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A7740:
	#data 0x0088
	#align4

loc_8c1A7744:
	#data loc_8c1A7FC0
loc_8c1A7748:
	#data 0x0000EEEE

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1A7780:
	#data bank18.loc_8c18C320

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#repeat 4
	#data 0x00000000
	
	#align16
;==============================================
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

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1A77C0:
	#data 0x7FFFFFFF
loc_8c1A77C4:
	#data bank18.loc_8c18C320

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
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

loc_8c1A77FE:
	mov 0x00,r0 ; r0 set to 0x00
	rts
	nop

;==============================================
	#repeat 7
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1A7820:
	#data loc_8c1A4E80
loc_8c1A7824:
	#data 0x0000EEEE

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c1A7840:
	rts
	mov.l r5,@(0x2C,r4)

;==============================================
loc_8c1A7844:
	rts
	mov.l @(0x2C,r4),r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
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

;==============================================
loc_8c1a787c:
	mov.w @(loc_8C1A78C0,pc),r0
	mov.l @r15,r4
	mov.l @(loc_8C1A78CC,pc),r3
	mov.l @(r0,r4),r4
	mov.l @(0x24,r4),r2
	and r3,r2
	mov.l r2,@(0x24,r4)
	mov.l @(0x24,r4),r1
	mov.l @(loc_8C1A78D0,pc),r2
	or r2,r1
	mov.l r1,@(0x24,r4)
	mov.l @(0x04,r15),r0
	tst r0,r0
	bt loc_8c1a78a0
	mov.l @(0x24,r4),r0
	mov.l @(loc_8C1A78D4,pc),r1
	or r1,r0
	mov.l r0,@(0x24,r4)

loc_8c1a78a0:
	mov 0x00,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
	#repeat 5
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1A78C0:
	#data 0x0088
	#align4

loc_8c1a78c4:
	#data loc_8C1A7FC0
loc_8c1a78c8:
	#data 0x0000EEEE
loc_8C1A78CC:
	#data 0xFFF9FFFF
loc_8C1A78D0:
	#data 0x00020000
loc_8C1A78D4:
	#data 0x00040000

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align16

;==============================================
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

;==============================================
	#repeat 5
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A7920:
	#data 0x01E0
loc_8c1A7922:
	#data 0x4000
	#align4

loc_8c1A7924:
	#data 0x005F8200

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
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

;==============================================
loc_8c1A798C:
	mov 0x00,r0 ; r0 set to 0x00
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1A79A0:
	#data loc_8c1A7FC0
loc_8c1A79A4:
	#data 0x10000000
loc_8c1A79A8:
	#data 0xEFFFFFFF
loc_8c1A79AC:
	#data 0x0000EEEE

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#align16

;==============================================
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

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A79E0:
	#data 0x011C
	#align4

loc_8c1A79E4:
	#data bank18.loc_8c18C320

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c1A7A00:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x38,PC),r3
	mov.l r4,@(0x4,r15)
	mov.l r5,@r15
	jsr @r3
	mov.l @(0x4,r15),r4
	tst r0,r0
	bt loc_8c1a7a18
	mov.l @r15,r3
	tst r3,r3
	bf loc_8c1a7a22

loc_8c1A7A18:
	mov.l @(0x28,PC),r0
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c1A7A22:
	mov.l @r15,r3
	mov 0x00,r0
	mov.l @(0x4,r15),r4
	mov.l r3,@(0x14,r4)
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1A7A40:
	#data loc_8c1A7FC0

loc_8c1A7A44:
	#data 0x0000EEEE

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
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

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A7A80:
	#data 0x03E0
loc_8c1A7A82:
	#data 0x00E4
	#align4

loc_8c1A7A84:
	#data bank18.loc_8c18C320

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
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

;==============================================
	#repeat 8
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1A7AE0:
	#data 0x10000000
loc_8c1A7AE4:
	#data 0x00008000

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
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

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
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
loc_8c1A7B98:
	#data bank18.loc_8c18C320
loc_8c1A7B9C:
	#data 0x80000000
loc_8c1A7BA0:
	#data bank18.loc_8c18C32A

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c1A7BC0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0xBC,PC),r3
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov.l r6,@(0x8,r15)
	jsr @r3
	mov.l @r15,r4
	tst r0,r0
	bt loc_8c1a7be2
	mov.l @(0xB0,PC),r2
	mov.l @r2,r3
	tst r3,r3
	bt loc_8c1a7be8

loc_8c1A7BE2:
	mov.l @(0xAC,PC),r0
	bra loc_8c1a7c66
	nop 

loc_8c1A7BE8:
	mov.w @(0x94,PC),r0
	mov.l @r15,r4
	mov.l @(r0,r4),r13
	mov r4,r12
	mov.w @(0x8E,PC),r0
	mov.l @(0xA0,PC),r4
	mov.l @(0x24,r13),r3
	mov.l @(r0,r4),r5
	extu.w r3,r3
	mov.l r3,@(r0,r4)
	mov.l @(r0,r4),r2
	cmp/eq r2,r5
	bt.s loc_8c1a7c0a
	add 0x18,r12
	mov.l @(0x90,PC),r1
	jsr @r1
	nop 

loc_8c1A7C0A:
	mov.l @(0x8,r15),r3
	mov.l @(0x8C,PC),r14
	shll2 r3
	shll2 r3
	shlr2 r3
	shlr2 r3
	shlr2 r3
	mov.l r3,@r15
	mov.l @(0xC,r12),r5
	jsr @r14
	mov 0x2C,r4
	mov.l @(0x8,r12),r5
	jsr @r14
	mov 0x20,r4
	mov.w @(0x5A,PC),r4
	jsr @r14
	mov.l @(0x24,r13),r5
	mov.l @(0x4,r13),r5
	jsr @r14
	mov 0x48,r4
	mov.w @(0x50,PC),r4
	jsr @r14
	mov.l @(0x8,r13),r5
	mov.w @(0x44,PC),r4
	mov 0xF0,r3
	mov.l @(0xC,r13),r5
	jsr @r14
	and r3,r5
	mov.l @(0x14,r13),r5
	jsr @r14
	mov 0x68,r4
	mov.l @(0x18,r13),r5
	jsr @r14
	mov 0x6C,r4
	mov.l @r15,r5
	jsr @r14
	mov 0x4C,r4
	mov.l @(0x4,r15),r5
	mov.l @(0x48,PC),r3
	add r3,r5
	jsr @r14
	mov 0x60,r4
	mov 0x01,r5
	jsr @r14
	mov 0x14,r4
	mov 0x00,r0

loc_8c1A7C66:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A7C80:
	#data 0x0088
loc_8c1A7C82:
	#data 0x03B4
loc_8c1A7C84:
	#data 0x00F4
loc_8c1A7C86:
	#data 0x008C
	#align4

loc_8c1A7C88:
	#data loc_8c1A7FC0
loc_8c1A7C8c:
	#data 0x8C3434E8
loc_8c1A7C90:
	#data 0x0000EEEE
loc_8c1A7C94:
	#data 0x8C348DF4
loc_8c1A7C98:
	#data loc_8c1A76B4
loc_8c1A7C9C:
	#data bank18.loc_8c18C320
loc_8c1A7Ca0:
	#data 0x01000000

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c1A7CC0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0xB8,PC),r3
	mov.l r4,@(0x4,r15)
	mov.l r5,@r15
	jsr @r3
	mov.l @(0x4,r15),r4
	tst r0,r0
	bt loc_8c1a7ce0
	mov.l @r15,r3
	tst r3,r3
	bf loc_8c1a7ce6

loc_8c1A7CE0:
	mov.l @(0xA8,PC),r0
	bra loc_8c1a7d5c
	nop 

loc_8c1A7CE6:
	mov.w @(0x96,PC),r0
	mov.l @(0x4,r15),r4
	mov.l @r15,r12
	mov.l @(r0,r4),r13
	mov r4,r11
	mov.w @(0x8E,PC),r0
	mov.l @(0x9C,PC),r4
	mov.l @(0x24,r13),r3
	mov.l @(r0,r4),r5
	extu.w r3,r3
	mov.l r3,@(r0,r4)
	mov.l @(r0,r4),r2
	cmp/eq r2,r5
	bt.s loc_8c1a7d0a
	add 0x18,r11
	mov.l @(0x8C,PC),r1
	jsr @r1
	nop 

loc_8c1A7D0A:
	mov.l @(0xC,r11),r5
	mov.l @(0x88,PC),r14
	jsr @r14
	mov 0x2C,r4
	mov.l @(0x8,r11),r5
	jsr @r14
	mov 0x20,r4
	mov.w @(0x68,PC),r4
	jsr @r14
	mov.l @(0x24,r13),r5
	mov.l @(0x4,r13),r5
	jsr @r14
	mov 0x48,r4
	mov.w @(0x5E,PC),r4
	jsr @r14
	mov.l @(0x8,r13),r5
	mov.w @(0x52,PC),r4
	mov 0xF0,r3
	mov.l @(0xC,r13),r5
	jsr @r14
	and r3,r5
	mov.l @(0x14,r13),r5
	jsr @r14
	mov 0x68,r4
	mov.l @(0x18,r13),r5
	jsr @r14
	mov 0x6C,r4
	mov.l @(0x2C,r12),r5
	jsr @r14
	mov 0x4C,r4
	mov.l @(0x54,PC),r3
	mov.l @r3,r2
	tst r2,r2
	bf loc_8c1a7d54
	mov.l @(0x1C,r12),r5
	jsr @r14
	mov 0x60,r4

loc_8c1A7D54:
	mov 0x01,r5
	jsr @r14
	mov 0x14,r4
	mov 0x00,r0

loc_8c1A7D5C:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
	#repeat 5
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A7D80:
	#data 0x0088
loc_8c1A7D82:
	#data 0x03B4
loc_8c1A7D84:
	#data 0x00F4
loc_8c1A7D86:
	#data 0x008C
	#align4

loc_8c1A7D88:
	#data loc_8c1A7FC0
loc_8c1A7D8c:
	#data 0x0000EEEE
loc_8c1A7D90:
	#data 0x8C348DF4
loc_8c1A7D94:
	#data loc_8c1A76B4
loc_8c1A7D98:
	#data bank18.loc_8c18C320
loc_8c1A7D9c:
	#data 0x8C3434E8

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1A7DC0:
	#data 0x8C34380C

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
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

;==============================================
	#repeat 9
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A7E40:
	#data 0x3000
loc_8c1A7E42:
	#data 0xFF4F
loc_8c1A7E44:
	#data 0x4000
	#align4

loc_8c1A7E48:
	#data 0x0000EEEE
loc_8c1A7E4C:
	#data 0xFFFF4FFF

;==============================================
	nop
	#align16_nop

;==============================================
loc_8c1A7E60:
	bra loc_8c1A7E7C
	mov r7,r5

loc_8c1a7e64:
	mov.w @(loc_8C1A7EA0,pc),r2
	tst r6,r2
	bt loc_8c1a7e76
	mov.l @(loc_8C1A7EA4,pc),r1
	mov.l @(loc_8C1A7EA8,pc),r3
	and r1,r6

loc_8c1A7E70:
	or r3,r6
	bra loc_8c1A7E7C
	mov r14,r5

loc_8c1A7E76:
	bra loc_8c1a7e7c
	mov r7,r5

loc_8c1A7E7A:
	mov r7,r5

loc_8c1A7E7C:
	mov r5,r0
	mov.l r6,@r4
	rts
	mov.l @r15+,r14

;==============================================
	#repeat 7
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1a7ea0:
	#data 0x0300
	#align4

loc_8c1a7ea4:
	#data 0xFFFCFFFF
loc_8c1a7ea8:
	#data 0x00040000

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
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

;==============================================
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

;==============================================
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A7F00:
	#data 0x00BC
loc_8c1A7F02:
	#data 0x00C0
	#align4

loc_8c1A7F04:
	#data bank18.loc_8c18C320

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
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

;==============================================
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

;==============================================
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

;==============================================
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

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A7FA0:
	#data 0x0088
loc_8c1A7FA2:
	#data 0x07FF
	#align4

loc_8c1A7FA4:
	#data loc_8c1A7FC0
loc_8c1A7FA8:
	#data 0x0000EEEE

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
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

loc_8c1a7fe8:
	mov.l @(0x0C,r5),r2
	add 0x01,r6
	cmp/hs r2,r6
	bf loc_8c1a7fd6

loc_8c1A7FF0:
	mov.l @r15+,r13
	mov r14,r0
	rts
	mov.l @r15+,r14

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A8000:
	#data 0x008C
	#align4

loc_8c1A8004:
	#data 0x8C348DF4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
;unused?
loc_8c1a8020:
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r5
	mov.l r4,@r15
	mov.l @(0x9C,PC),r3
	mov.w @(0x92,PC),r4
	jsr @r3
	nop 
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov 0x00,r0

;==============================================
loc_8c1A8038:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x7C,PC),r10
	mov 0x00,r14
	mov.l @(0x7C,PC),r2
	mov 0x01,r13
	mov.l r14,@r15
	mov.l @r2,r3
	tst r13,r3
	bt loc_8c1a806c
	mov.l @(0x74,PC),r1
	mov.w @(0x60,PC),r4
	mov.l @r1,r0
	mov.l r0,@r15
	mov.l r14,@(0x4,r15)
	jsr @r10
	mov.l @r15,r5
	mov.l @(0x4,r15),r2
	mov.l r2,@r15

loc_8c1A806C:
	mov.l @(0x5C,PC),r3
	mov.l @r3,r0
	tst 0x02,r0
	bt loc_8c1a8092
	mov.w @(0x4C,PC),r13
	mov r14,r12
	mov.w @(0x46,PC),r9
	mov r14,r11

loc_8c1A807C:
	mov.l @(0x54,PC),r0
	mov.l @(r0,r12),r5
	jsr @r10
	mov r13,r4
	add 0x01,r11
	cmp/ge r9,r11
	add 0x04,r13
	bf.s loc_8c1a807c
	add 0x04,r12
	bra loc_8c1a816c
	nop 

loc_8c1A8092:
	mov.l @(0x38,PC),r1
	mov.l @r1,r0
	tst 0x04,r0
	bt loc_8c1a816c
	mov.l @(0x44,PC),r2
	mov.l @(0x3C,PC),r10
	mov.l @(0x38,PC),r8
	mov.l @r2,r0
	tst r0,r0
	bt.s loc_8c1a812a
	mov 0x20,r11
	bra loc_8c1a8126
	mov r14,r12

;==============================================
	#repeat 4
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A80C0:
	#data 0x0108
loc_8c1A80C2:
	#data 0x0400
loc_8c1A80C4:
	#data 0x1000
	#align4

loc_8c1A80C8:
	#data bank18.loc_8c18C320
loc_8c1A80Cc:
	#data 0x8C344BFC
loc_8c1A80d0:
	#data 0x8C344C08
loc_8c1A80d4:
	#data 0x8C343BFC
loc_8c1A80D8:
	#data bank17.loc_8c17A6E0
loc_8c1A80Dc:
	#data 0xA05F9000
loc_8c1A80e0:
	#data 0x8C344C00

;==============================================
	#repeat 7
	nop

	#align16_nop

;==============================================
loc_8c1A8100:
	mov.l @(0xA0,PC),r1
	mov r13,r2
	shad r12,r2
	mov.l @r1,r3
	tst r3,r2
	bt loc_8c1a8124
	mov r12,r9
	shll2 r9
	shll2 r9
	mov.l @(0x94,PC),r3
	mov r9,r5
	mov r9,r4
	shll2 r5
	shll2 r4
	mov 0x40,r6
	add r3,r5
	jsr @r8
	add r10,r4

loc_8c1A8124:
	add 0x01,r12

loc_8c1A8126:
	cmp/ge r11,r12
	bf loc_8c1a8100

loc_8c1A812A:
	mov.l @(0x80,PC),r3
	mov.l @r3,r2
	tst r2,r2
	bt loc_8c1a8164
	bra loc_8c1a8160
	mov r14,r12

loc_8c1A8136:
	mov.l @(0x74,PC),r1
	mov r13,r3
	shad r12,r3
	mov.l @r1,r2
	tst r2,r3
	bt loc_8c1a815e
	mov r12,r9
	mov.w @(0x58,PC),r3
	shll2 r9
	mov.l @(0x5C,PC),r2
	shll2 r9
	add r3,r9
	mov r9,r5
	mov r9,r4
	shll2 r5
	shll2 r4
	mov 0x40,r6
	add r2,r5
	jsr @r8
	add r10,r4

loc_8c1A815E:
	add 0x01,r12

loc_8c1A8160:
	cmp/ge r11,r12
	bf loc_8c1a8136

loc_8c1A8164:
	mov.l @(0x3C,PC),r2
	mov.l r14,@r2
	mov.l @(0x40,PC),r3
	mov.l r14,@r3

loc_8c1A816C:
	mov.l @(0x40,PC),r2
	mov.l r14,@r2
	mov.l @r15,r0
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

;==============================================
	#repeat 7
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1a81a0:
	#data 0x0200
	#align4

loc_8c1a81a4:
	#data 0x8C344C00
loc_8c1a81a8:
	#data 0x8C343BFC
loc_8c1a81ac:
	#data 0x8C344C04
loc_8c1a81b0:
	#data 0x8C344BFC

;==============================================
	#align16_nop

;==============================================
loc_8c1a81c0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r6,r12
	mov.l r11,@-r15
	cmp/pl r12
	mov.l r10,@-r15
	mov 0x00,r6
	mov.l r9,@-r15
	sts.l pr,@-r15
	bf.s loc_8c1a820c
	mov r6,r9
	mov.w @(0x64,PC),r2
	mov r4,r3
	add r12,r3
	cmp/gt r2,r3
	bt loc_8c1a820c
	cmp/pz r4
	bf loc_8c1a820c
	mov.w @(0x58,PC),r3
	mov r4,r14
	mov.l @(0x58,PC),r10
	shll2 r14
	cmp/pl r12
	mov 0x00,r13
	mov r6,r11
	add r3,r14
	bf.s loc_8c1a820e
	add r5,r13

loc_8c1a81fa:
	mov.l @r13+,r5
	jsr @r10
	mov r14,r4
	add 0x01,r11
	cmp/ge r12,r11
	bf.s loc_8c1a81fa
	add 0x04,r14
	bra loc_8c1a820e
	nop 

loc_8c1a820c:
	mov 0x12,r9

loc_8c1a820e:
	lds.l @r15+,pr
	mov r9,r0
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
;unused?
loc_8c1a8220:
	mov.l @(0x24,PC),r0
	rts 
	nop 

;==============================================
	#repeat 7
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A8240:
	#data 0x0400
loc_8c1A8242:
	#data 0x1000
	#align4

loc_8c1A8244:
	#data bank18.loc_8c18C320
loc_8c1A8248:
	#data 0x0000EEEE

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c1a8260:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x5C,PC),r3
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	jsr @r3
	mov.l @r15,r4
	tst r0,r0
	bf loc_8c1a827c
	mov.l @(0x54,PC),r0
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c1a827c:
	mov.w @(0x40,PC),r0
	mov.l @r15,r4
	mov.l @(r0,r4),r5
	mov.l @(0x4,r15),r0
	cmp/eq 0x03,r0
	bt.s loc_8c1a82a2
	mov 0x01,r6
	cmp/eq 0x00,r0
	bt loc_8c1a82ec
	cmp/eq 0x01,r0
	bt loc_8c1a82a6
	cmp/eq 0x02,r0
	bt loc_8c1a82e0
	cmp/eq 0x04,r0
	bt loc_8c1a82e4
	cmp/eq 0x05,r0
	bt loc_8c1a82e8
	bra loc_8c1a82ec
	nop 

loc_8c1a82a2:
	bra loc_8c1a82ee
	mov 0x03,r4

loc_8c1a82a6:
	bra loc_8c1a82ee
	mov 0x00,r4

;==============================================
	#repeat 6
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A82C0:
	#data 0x0088
	#align4

loc_8c1A82C4:
	#data loc_8c1A7FC0
loc_8c1A82C8:
	#data 0x0000EEEE

;==============================================
	#repeat 3
	nop

	#align16_nop

;==============================================
loc_8c1a82e0:
	bra loc_8c1a82ee
	mov 0x02,r4

loc_8c1a82e4:
	bra loc_8c1a82ee
	mov 0x04,r4

loc_8c1a82e8:
	bra loc_8c1a82ee
	mov 0x06,r4

loc_8c1a82ec:
	mov r6,r4

loc_8c1a82ee:
	mov.l @(0x4,r5),r2
	mov 0x07,r1
	mov 0xF8,r3
	and r1,r4
	and r3,r2
	or r4,r2
	mov 0x00,r0
	mov.l r2,@(0x4,r5)
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
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

;==============================================
	#repeat 9
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1A8340:
	#data loc_8c1A7FC0
loc_8c1A8344:
	#data 0x0000EEEE

;==============================================
	#repeat 5
	nop

	#align16_nop

;==============================================
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

;==============================================
	#repeat 7
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A83A0:
	#data 0x0088

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x0000
	#align16
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
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

loc_8c1a843e:
	mov.l @(0x08,r4),r4

loc_8c1a8440:
	tst r4,r4
	bf loc_8c1a841e

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

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1A8500:
	#data bank1c.loc_8c1c9B20

;==============================================
	#repeat 8
	nop

	#align16_nop

;==============================================
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

loc_8c1a856e:
	bsr loc_8c1a8904
	nop
	mov r0,r13
	tst r13,r13
	bt loc_8c1a8586
	bsr loc_8c1a8904
	nop
	tst r0,r0
	bf/s loc_8c1a858a
	mov.l r0,@r15
	bsr loc_8c1a898c
	mov r13,r4

loc_8c1A8586:
	bra loc_8c1A85FA
	mov 0x03,r0

loc_8c1A858A:
	mov.l @(0x10,r14),r3
	mov r9,r5
	add 0x24,r5
	mov r10,r2
	mov.l r3,@(0x14,r15)
	mov r13,r6
	mov.l @(0xC,r14),r3
	sub r3,r2
	mov r2,r3
	mov.l r2,@(0x10,r15)
	mov.l r2,@(0x10,r14)
	mov.l r10,@(0xC,r13)
	mov.l r11,@(0x10,r13)
	mov.l @(0x4,r15),r3
	add r3,r5
	mov.l r5,@(0x18,r15)
	add 0x04,r5
	bsr loc_8c1a89d0
	mov.l @(0x18,r15),r4
	mov.l @r15,r2
	mov r9,r6
	add 0x24,r6
	mov.l r8,@(0xC,r2)
	mov.l @(0x14,r15),r2
	mov.l @(0x10,r15),r1
	sub r11,r2
	mov.l @r15,r3
	sub r1,r2
	mov.l r2,@(0x10,r3)
	mov.l @(0x4,r15),r3
	add r3,r6
	mov.l r6,@(0x10,r15)
	mov.l @(0x10,r15),r4
	mov.l @r15,r5
	mov.l @(0xC,r6),r6
	bsr loc_8c1a89f4
	add 0x0C,r4
	mov.l @(0xC,r13),r2
	mov 0x01,r3
	mov.l r2,@r12
	mov.l r12,@(0x14,r13)
	mov.w r3,@r13
	mov.w @(0x8,r15),r0
	tst r0,r0
	bf loc_8c1a85ea
	mov.w @r13,r0
	bra loc_8c1a85ee
	or 0x40,r0

loc_8c1A85EA:
	mov.w @r13,r0
	or 0x80,r0

loc_8c1A85EE:
	mov.w r0,@r13

loc_8c1a85f0:
	mov.w @r13,r2
	mov.l @(0x0C,r15),r3
	or r3,r2
	mov.w r2,@r13

loc_8c1a85f8:
	mov 0x00,r0

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

;==============================================
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

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1A8660:
	#data bank1c.loc_8c1c9B20

;==============================================
	#repeat 8
	nop

	#align16_nop

;==============================================
loc_8c1a8680:
	mov.l @(0x08,r4),r4

loc_8c1a8682:
	tst r4,r4
	bf loc_8c1a8650

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

loc_8c1a86d8:
	bsr loc_8c1a8904
	nop
	mov r0,r13
	tst r13,r13
	bf loc_8c1a86e6

loc_8c1A86E2:
	bra loc_8c1A872A
	mov 0x03,r0

loc_8c1A86E6:
	mov r10,r5
	add 0x24,r5
	mov.l @(0xC,r14),r3
	add r9,r5
	mov r13,r6
	mov.l r3,@(0xC,r13)
	mov.l r12,@(0x10,r13)
	mov.l @(0x10,r14),r4
	sub r12,r4
	mov.l r4,@(0x10,r14)
	mov.l @(0xC,r14),r2
	add r12,r2
	mov.l r2,@(0xC,r14)
	mov.l r5,@r15
	add 0x04,r5
	bsr loc_8c1a89d0
	mov.l @r15,r4
	mov.l @(0xC,r13),r2
	exts.w r8,r8
	tst r8,r8
	mov.l r2,@r11
	bf.s loc_8c1a871a
	mov.l r11,@(0x14,r13)
	mov.w @r13,r0
	bra loc_8c1a871e
	or 0x10,r0

loc_8c1A871A:
	mov.w @r13,r0
	or 0x20,r0

loc_8c1A871E:
	mov.w r0,@r13
	mov.w @r13,r2
	mov.l @(0x4,r15),r3
	or r3,r2
	mov.w r2,@r13

loc_8c1a8728:
	mov 0x00,r0

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

;==============================================
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

;==============================================
	#repeat 8
	nop

	#align16_nop

;==============================================
loc_8c1a8780:
	mov r5,r12
	mov 0xE0,r3
	add 0x20,r12
	and r3,r12

loc_8c1a8788:
	mov.l @(loc_8c1a8808,pc),r9
	exts.w r8,r4
	shll2 r4
	mov r6,r14
	mov r9,r3
	shll2 r4
	add 0x24,r3
	mov.l r4,@(0x04,r15)
	add r3,r4
	mov r6,r10
	mov.l @(0x08,r4),r4
	tst r4,r4
	bt/s loc_8c1a8826
	mov 0x01,r13

loc_8c1a87a4:
	mov.l @(0x10,r4),r3
	cmp/hs r12,r3
	bf loc_8c1a8820
	tst r10,r10
	bf loc_8c1a87b0
	mov r4,r10

loc_8c1a87b0:
	mov.l @(0x0C,r4),r2
	mov.w @(loc_8C1A8800,pc),r3
	tst r3,r2
	bt loc_8c1a87ea
	mov.l @(0x0C,r4),r5
	mov.w @(loc_8C1A8802,pc),r2
	mov.w @(loc_8C1A8804,pc),r1
	mov.l r5,@r15
	add r2,r5
	mov.l @(0x10,r4),r3
	and r1,r5
	mov.l @r15,r0
	add r3,r0
	cmp/hs r0,r5
	bt/s loc_8c1a87ec
	mov.l r0,@r15
	mov.l @(0x0C,r4),r3
	mov r5,r2
	sub r3,r2
	cmp/hs r12,r2
	bt loc_8c1a87ec
	mov.l @r15,r3
	sub r5,r3
	cmp/hs r12,r3
	bf loc_8c1a87e6
	bra loc_8c1a87ee
	mov 0x02,r7

loc_8c1a87e6:
	bra loc_8c1a8822
	mov.l @(0x08,r4),r4

loc_8c1a87ea:
	mov.l @(0x0C,r4),r5

loc_8c1a87ec:
	mov r13,r7

loc_8c1a87ee:
	mov r4,r14
	bra loc_8c1a8822
	mov r6,r4

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1A8800:
	#data 0x07FF
loc_8C1A8802:
	#data 0x0800
loc_8C1A8804:
	#data 0xF800
	#align4

loc_8c1a8808:
	#data bank1c.loc_8c1c9b20

;==============================================
	#repeat 4
	nop

	#align16_nop

;==============================================
loc_8c1a8820:
	mov.l @(0x08,r4),r4

loc_8c1a8822:
	tst r4,r4
	bf loc_8c1a87a4

loc_8c1a8826:
	tst r7,r7
	bf loc_8c1a8832
	tst r10,r10
	bt loc_8c1a8832
	mov r10,r14
	mov r13,r7

loc_8c1a8832:
	tst r14,r14
	bt loc_8c1a88a6
	mov r7,r0
	cmp/eq 0x02,r0
	bf loc_8c1a884c
	mov.l r5,@r11
	mov r12,r5
	mov r11,r6
	mov r8,r7
	bsr loc_8c1a83c0
	mov 0x00,r4
	bra loc_8c1a88f0
	nop

loc_8c1a884c:
	mov.l @(0x10,r14),r3
	cmp/eq r12,r3
	bf loc_8c1a889c
	mov r9,r5
	mov.l @(0x04,r15),r3
	add 0x24,r5
	mov r14,r6
	add r3,r5
	mov.l r5,@r15
	add 0x0C,r5
	mov.l @r15,r4
	bsr loc_8c1a8a10
	add 0x08,r4
	mov r9,r5
	mov.l @(0x04,r15),r3
	add 0x24,r5
	mov r14,r6
	add r3,r5
	mov.l r5,@r15
	add 0x04,r5
	bsr loc_8c1a89d0
	mov.l @r15,r4
	mov.l @(0x0C,r14),r2
	exts.w r8,r8
	tst r8,r8
	mov.l r2,@r11
	mov.l r11,@(0x14,r14)
	bf/s loc_8c1a888c
	mov.w r13,@r14
	mov.w @r14,r0
	bra loc_8c1a8890
	or 0x10,r0

loc_8c1a888c:
	mov.w @r14,r0
	or 0x20,r0

loc_8c1a8890:
	mov.w r0,@r14
	mov.w @r14,r2
	mov.l @(0x08,r15),r3
	or r3,r2
	bra loc_8c1a88ee
	mov.w r2,@r14

loc_8c1a889c:
	bsr loc_8c1a8904
	nop
	mov r0,r13
	tst r13,r13
	bf loc_8c1a88aa

loc_8c1a88a6:
	bra loc_8c1a88f0
	mov 0x03,r0

loc_8c1a88aa:
	mov.l @(0x0C,r14),r3
	mov r9,r5
	add 0x24,r5
	mov r13,r6
	mov.l r3,@(0x0C,r13)
	mov.l r12,@(0x10,r13)
	mov.l @(0x10,r14),r4
	sub r12,r4
	mov.l r4,@(0x10,r14)
	mov.l @(0x0C,r14),r2
	add r12,r2
	mov.l r2,@(0x0C,r14)
	mov.l @(0x04,r15),r3
	add r3,r5
	mov.l r5,@r15
	add 0x04,r5
	bsr loc_8c1a89d0
	mov.l @r15,r4
	mov.l @(0x0C,r13),r2
	exts.w r8,r8
	tst r8,r8
	mov.l r2,@r11
	bf/s loc_8c1a88e0
	mov.l r11,@(0x14,r13)
	mov.w @r13,r0
	bra loc_8c1a88e4
	or 0x10,r0

loc_8c1a88e0:
	mov.w @r13,r0
	or 0x20,r0

loc_8c1a88e4:
	mov.w r0,@r13
	mov.w @r13,r2
	mov.l @(0x08,r15),r3
	or r3,r2
	mov.w r2,@r13

loc_8c1a88ee:
	mov 0x00,r0

loc_8c1a88f0:
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

;==============================================
	#repeat 8
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1A8960:
	#data bank1c.loc_8c1c9B20

;==============================================
	#repeat 8
	nop

	#align16_nop

;==============================================
loc_8c1a8980:
	add 0x01,r5
	cmp/hs r7,r5
	bf loc_8c1a8912

loc_8c1A8986:
	mov 0x00,r0 ; r0 set to 0x00
	rts
	nop

;==============================================
loc_8c1A898C:
	mov.l @(0xB4,PC),r5
	mov 0x00,r6
	mov r6,r2
	mov.l @(0xAC,PC),r7
	mov.l @(0x8,r5),r3
	cmp/hs r3,r2
	bt loc_8c1a89cc

loc_8c1A899A:
	mov r6,r0
	shll r0
	mov r6,r3
	add r3,r0
	mov.l @(0x20,r5),r2
	shll2 r0
	shll r0
	add r2,r0
	cmp/eq r4,r0
	bf loc_8c1a89c4
	mov r6,r3
	shll r3
	mov r6,r0
	add r0,r3
	mov.l @(0x20,r5),r2
	shll2 r3
	shll r3
	add r2,r3
	mov.w @r3,r1
	and r7,r1
	mov.w r1,@r3

loc_8c1A89C4:
	mov.l @(0x8,r5),r3
	add 0x01,r6
	cmp/hs r3,r6
	bf loc_8c1a899a

loc_8c1A89CC:
	rts
	nop

;==============================================
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

;==============================================
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

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1a8a40:
	#data 0x0000FFFE
loc_8c1A8A44:
	#data bank1c.loc_8c1c9B20

;==============================================
	#repeat 5
	nop

	#align16_nop

;==============================================
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

;==============================================
	#repeat 3
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
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

;==============================================
	#repeat 4
	nop

	#align16_nop

;==============================================
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

loc_8c1a8b1a:
	mov.w @(loc_8C1A8B54,pc),r1
	mov.w @(loc_8C1A8B56,pc),r5
	mov.l r1,@r4

loc_8c1A8B20:
	mov.l r5,@(0x04,r4)
	mov.l r5,@(0x08,r4)
	bra loc_8c1A8B76
	mov.l r6,@(0x0C,r4)

;==============================================
	#repeat 5
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
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
loc_8c1a8b54:
	#data 0x7000
loc_8c1a8b56:
	#data 0x0400

;==============================================
	#align16_nop

;==============================================
loc_8c1a8b60:
	mov.l @(loc_8C1A8BE4,pc),r2
	mov.w @(loc_8C1A8BE0,pc),r3
	mov.l r2,@r4
	mov.w @(loc_8C1A8BE2,pc),r2
	mov.l r7,@(0x04,r4)
	mov.l r3,@(0x08,r4)

loc_8c1A8B6C:
	bra loc_8c1A8B76
	mov.l r2,@(0x0C,r4)

loc_8c1A8B70:
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;==============================================
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

;==============================================
loc_8c1A8B88:
	mov.l @(0x64,PC),r5
	mov 0x00,r6
	mov.l r14,@-r15
	mov r6,r2
	mov.l @(0xC,r5),r3
	mov.l @(0x58,PC),r14
	cmp/hs r3,r2
	bt.s loc_8c1a8bc2
	mov 0x4C,r7

loc_8c1A8B9A:
	mul.l r7,r6
	mov 0x48,r3
	add r5,r3
	mov.l @r3,r3
	sts macl,r0
	add r3,r0
	cmp/eq r4,r0
	bf loc_8c1a8bba
	mul.l r7,r6
	mov 0x48,r0
	mov.l @(r0,r5),r2
	sts macl,r3
	add r2,r3
	mov.w @r3,r1
	and r14,r1
	mov.w r1,@r3

loc_8c1A8BBA:
	mov.l @(0xC,r5),r3
	add 0x01,r6
	cmp/hs r3,r6
	bf loc_8c1a8b9a

loc_8c1A8BC2:
	rts 
	mov.l @r15+,r14

;==============================================
	#repeat 7
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1a8be0:
	#data 0x0560
loc_8c1a8be2:
	#data 0x0D60
	#align4

loc_8c1a8be4:
	#data 0x00008000
loc_8c1A8BE8:
	#data bank12.loc_8c1291DC
loc_8c1A8BEc:
	#data 0x0000FFFE
loc_8c1A8BF0:
	#data bank1c.loc_8c1c9B20

;==============================================
	#align16_nop

;==============================================
loc_8c1A8C00:
	mov.l @(0x3C,PC),r6
	mov 0x00,r0
	mov.l @(0x8,r6),r6
	tst r6,r6
	bt.s loc_8c1a8c1a
	mov r0,r7

loc_8c1A8C0C:
	mov.l @(0x10,r6),r2
	cmp/hi r7,r2
	bf loc_8c1a8c14
	mov.l @(0x10,r6),r7

loc_8c1A8C14:
	mov.l @(0x8,r6),r6
	tst r6,r6
	bf loc_8c1a8c0c

loc_8c1A8C1A:
	mov.l @(0x28,PC),r6
	mov.l @(0x8,r6),r6
	tst r6,r6
	bt loc_8c1a8c30

loc_8c1A8C22:
	mov.l @(0x10,r6),r2
	cmp/hi r0,r2
	bf loc_8c1a8c2a
	mov.l @(0x10,r6),r0

loc_8c1A8C2A:
	mov.l @(0x8,r6),r6
	tst r6,r6
	bf loc_8c1a8c22

loc_8c1A8C30:
	mov.l r7,@r4
	mov.l r0,@r5
	rts 
	mov 0x00,r0

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1A8C40:
	#data bank1c.loc_8c1c9B44
loc_8c1A8C44:
	#data bank1c.loc_8c1c9B54

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A8C60:
	#data 0x00000000

	#repeat 23
	#data 0x00000000

;==============================================
loc_8c1A8CC0:
	sts.l pr,@-r15
	mov.l @(0x64,PC),r3
	mov.l @r4,r1
	jsr @r3
	mov.l @(0xC,r4),r0
	mov.l @(0x60,PC),r2
	mov.l r0,@(0x4,r4)
	mov.l @r4,r1
	jsr @r2
	mov.l @(0xC,r4),r0
	mov r0,r6
	mov.l r0,@(0x8,r4)
	mov.w @(0x44,PC),r0
	mov.l @(0x54,PC),r5
	mov.l @(r0,r5),r3
	cmp/hi r3,r6
	bt loc_8c1a8cfe
	mov.w @(0x3C,PC),r0
	mov.l @(r0,r5),r1
	cmp/hs r1,r6
	bf loc_8c1a8cfe
	mov.w @(0x36,PC),r0
	mov.l @(0x4,r4),r3
	mov.l @(r0,r5),r2
	cmp/hi r2,r3
	bt loc_8c1a8cfe
	mov.w @(0x2E,PC),r0
	mov.l @(0x4,r4),r1
	mov.l @(r0,r5),r3
	cmp/hs r3,r1
	bt loc_8c1a8d02

loc_8c1A8CFE:
	mov 0x01,r3
	mov.l r3,@(0x14,r4)

loc_8c1A8D02:
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
	#repeat 5
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A8D20:
	#data 0x0950
loc_8c1A8D22:
	#data 0x0948
loc_8c1A8D24:
	#data 0x094C
loc_8c1A8D26:
	#data 0x0944
	#align4

loc_8c1A8D28:
	#data bank12.loc_8c12939C
loc_8c1A8D2C:
	#data bank12.loc_8c1291DC
loc_8c1A8D30:
	#data 0x8C32D278

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align16

;==============================================
loc_8c1A8D40:
	sts.l pr,@-r15
	mov.l @(0x64,PC),r3
	mov.l @r4,r1
	jsr @r3
	mov.l @(0x10,r4),r0
	mov.l @(0xC,r4),r2
	mov.l @(0x5C,PC),r3
	sub r0,r2
	add 0xFF,r2
	mov.l r2,@(0x4,r4)
	mov.l @r4,r1
	jsr @r3
	mov.l @(0x10,r4),r0
	mov r0,r6
	mov.l r0,@(0x8,r4)
	mov.w @(0x3E,PC),r0
	mov.l @(0x4C,PC),r5
	mov.l @(r0,r5),r2
	cmp/hi r2,r6
	bt loc_8c1a8d84
	mov.w @(0x36,PC),r0
	mov.l @(r0,r5),r1
	cmp/hs r1,r6
	bf loc_8c1a8d84
	mov.w @(0x30,PC),r0
	mov.l @(0x4,r4),r3
	mov.l @(r0,r5),r2
	cmp/hi r2,r3
	bt loc_8c1a8d84
	mov.w @(0x28,PC),r0
	mov.l @(0x4,r4),r1
	mov.l @(r0,r5),r3
	cmp/hs r3,r1
	bt loc_8c1a8d88

loc_8c1A8D84:
	mov 0x01,r3
	mov.l r3,@(0x14,r4)

loc_8c1A8D88:
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
	#repeat 5
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A8DA0:
	#data 0x0950
loc_8c1A8DA2:
	#data 0x0948
loc_8c1A8DA4:
	#data 0x094C
loc_8c1A8DA6:
	#data 0x0944
	#align4

loc_8c1A8DA8:
	#data bank12.loc_8c1291DC
loc_8c1A8DAC:
	#data bank12.loc_8c12939C
loc_8c1A8Db0:
	#data 0x8C32D278

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align16

;==============================================
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

;==============================================
	#repeat 9
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1A8E00:
	#data bank19.loc_8c191744
loc_8c1A8E04:
	#data loc_8c1A76B4
loc_8c1A8E08:
	#data loc_8c1A76A0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
loc_8c1A8E20:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	add 0xF4,r15
	mov.b @(0x1,r4),r0
	mov 0x00,r9
	mov.b @r4,r2
	mov r9,r12
	extu.b r0,r0
	mov.l @(0x28,r15),r10
	shll8 r0
	mov.l @(0x140,PC),r13
	mov r0,r3
	mov.b @(0x2,r4),r0
	extu.b r2,r2
	mov.l @(0x13C,PC),r14
	extu.b r0,r0
	shll16 r0
	or r0,r3
	mov.b @(0x3,r4),r0
	add 0x04,r4
	extu.b r0,r0
	shll16 r0
	shll8 r0
	or r0,r3
	or r2,r3
	mov.l r3,@(0x8,r15)
	mov.b @(0x1,r4),r0
	extu.b r0,r0
	shll8 r0
	mov r0,r11
	mov.b @(0x2,r4),r0
	extu.b r0,r0
	shll16 r0
	or r0,r11
	mov.b @(0x3,r4),r0
	extu.b r0,r0
	mov.b @r4,r2
	shll16 r0
	shll8 r0
	extu.b r2,r2
	or r0,r11
	or r2,r11
	mov r11,r1
	shlr16 r1
	mov r11,r0
	mov 0xF8,r2
	shlr8 r1
	exts.b r1,r1
	shad r2,r0
	mov r11,r2
	and r14,r0
	extu.b r1,r1
	or r0,r1
	mov r11,r0
	shll8 r0
	and r13,r0
	add 0x04,r4
	or r0,r1
	shll16 r2
	shll8 r2
	or r2,r1
	mov.l r1,@(0x4,r15)
	mov.b @(0x1,r4),r0
	extu.b r0,r0
	shll8 r0
	mov r0,r2
	mov.b @(0x2,r4),r0
	extu.b r0,r0
	mov.l @(0xD4,PC),r3
	shll16 r0
	or r0,r2
	mov.b @(0x3,r4),r0
	extu.b r0,r0
	shll16 r0
	shll8 r0
	or r0,r2
	mov.b @r4,r0
	extu.b r0,r0
	or r0,r2
	mov.l r2,@r15
	mov.l @(0x8,r15),r0
	cmp/eq r3,r0
	bf.s loc_8c1a8f7c
	add 0x04,r4
	mov.l @r15,r2
	mov.l @(0xB4,PC),r3
	cmp/eq r3,r2
	bf loc_8c1a8f7c
	mov.l @(0x4,r15),r8
	add r4,r8
	add 0xFC,r8
	cmp/hs r8,r4
	bf loc_8c1a8ee8
	bra loc_8c1a90ec
	nop 

loc_8c1A8EE8:
	mov.b @(0x1,r4),r0
	mov.b @r4,r2
	extu.b r0,r0
	shll8 r0
	mov r0,r3
	mov.b @(0x2,r4),r0
	extu.b r2,r2
	extu.b r0,r0
	shll16 r0
	or r0,r3
	mov.b @(0x3,r4),r0
	add 0x04,r4
	extu.b r0,r0
	shll16 r0
	shll8 r0
	or r0,r3
	or r2,r3
	mov.l r3,@(0x4,r15)
	mov.b @(0x1,r4),r0
	mov.b @r4,r2
	extu.b r0,r0
	shll8 r0
	mov r0,r11
	mov.b @(0x2,r4),r0
	extu.b r0,r0
	shll16 r0
	or r0,r11
	mov.b @(0x3,r4),r0
	extu.b r0,r0
	shll16 r0
	shll8 r0
	or r0,r11
	extu.b r2,r2
	or r2,r11
	mov r11,r1
	shlr16 r1
	mov 0xF8,r2
	mov r11,r0
	shlr8 r1
	shad r2,r0
	mov r11,r2
	exts.b r1,r1
	and r14,r0
	extu.b r1,r1
	or r0,r1
	mov r11,r0
	shll8 r0
	shll16 r2
	and r13,r0
	shll8 r2
	or r0,r1
	mov r3,r0
	or r2,r1
	mov.l r1,@r15
	add 0x04,r4
	mov.l @(0x38,PC),r1
	cmp/eq r1,r0
	bt.s loc_8c1a8f6c
	mov 0x01,r11
	mov.l @(0x34,PC),r1
	cmp/eq r1,r0
	bf loc_8c1a8f68
	bra loc_8c1a9080
	nop 

loc_8c1a8f68:
	bra loc_8c1a90da
	nop 

loc_8c1a8f6c:
	tst r9,r9
	bt loc_8c1a8f74
	bra loc_8c1a90e4
	nop 

loc_8c1a8f74:
	mov.l @r15,r1
	mov 0x12,r9
	cmp/ge r9,r1
	bt loc_8c1a8f98

loc_8c1A8F7C:
	bra loc_8c1a90ee
	mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1a8f80:
	#data 0x00FF0000
loc_8c1a8f84:
	#data 0x0000FF00
loc_8c1a8f88:
	#data "FORM"
loc_8c1a8f8c:
	#data "AIFF"
loc_8c1a8f90:
	#data "COMM"
loc_8c1a8f94:
	#data "SSND"

;==============================================
loc_8c1A8F98:
	mov.b @(0x1,r4),r0
	mov.b @r4,r3
	add 0x02,r4
	extu.b r0,r0
	extu.b r3,r3
	shll8 r0
	or r3,r0
	mov r0,r1
	mov r0,r2
	mov r0,r9
	mov 0xF8,r3
	shad r3,r2
	shll8 r1
	extu.b r2,r2
	and r14,r1
	or r1,r2
	mov.l r2,@r6
	mov.b @(0x1,r4),r0
	mov.b @r4,r2
	extu.b r0,r0
	shll8 r0
	mov r0,r3
	mov.b @(0x2,r4),r0
	extu.b r2,r2
	extu.b r0,r0
	shll16 r0
	or r0,r3
	mov.b @(0x3,r4),r0
	extu.b r0,r0
	shll16 r0
	shll8 r0
	or r0,r3
	or r2,r3
	mov r3,r9
	shlr16 r3
	mov r9,r1
	mov 0xF8,r2
	shlr8 r3
	shad r2,r1
	mov r9,r2
	exts.b r3,r3
	and r14,r1
	extu.b r3,r3
	or r1,r3
	mov r9,r1
	shll8 r1
	shll16 r2
	and r13,r1
	shll8 r2
	or r1,r3
	add 0x04,r4
	or r2,r3
	mov.l r3,@r10
	mov.b @(0x1,r4),r0
	mov.b @r4,r3
	extu.b r0,r0
	extu.b r3,r3
	shll8 r0
	or r3,r0
	mov 0xF8,r3
	mov r0,r2
	shad r3,r2
	mov r0,r9
	extu.b r2,r2
	add 0x02,r4
	mov r0,r1
	shll8 r1
	and r14,r1
	or r1,r2
	mov.l r2,@r7
	mov 0xF8,r2
	mov.b @(0x1,r4),r0
	mov.b @r4,r3
	add 0x02,r4
	extu.b r0,r0
	extu.b r3,r3
	shll8 r0
	or r3,r0
	extu.w r0,r9
	mov.w r0,@r15
	mov r9,r3
	shad r2,r3
	mov r9,r1
	extu.b r3,r3
	mov.b @(0x1,r4),r0
	mov r3,r9
	mov.b @r4,r3
	shll8 r1
	extu.b r0,r0
	shll8 r0
	extu.b r3,r3
	or r3,r0
	mov.w r0,@(0x4,r15)
	and r14,r1
	extu.w r0,r0
	or r1,r9
	mov r2,r3
	mov.l r0,@r15
	mov.l @r15,r2
	shad r3,r0
	extu.b r0,r0
	shll8 r2
	and r14,r2
	or r2,r0
	mov.w @(0x94,PC),r2
	extu.w r9,r9
	mov.w r0,@r15
	mov.w @r15,r3
	sub r9,r2
	neg r2,r2
	extu.w r3,r3
	shld r2,r3
	add 0x08,r4
	mov.l r3,@r5
	bra loc_8c1a90ce
	mov r11,r9

loc_8c1A9080:
	tst r12,r12
	bf loc_8c1a90e4
	mov.b @(0x1,r4),r0
	mov.b @r4,r2
	extu.b r0,r0
	shll8 r0
	mov r0,r12
	mov.b @(0x2,r4),r0
	extu.b r2,r2
	extu.b r0,r0
	shll16 r0
	or r0,r12
	mov.b @(0x3,r4),r0
	extu.b r0,r0
	shll16 r0
	shll8 r0
	or r0,r12
	or r2,r12
	mov r12,r1
	mov r12,r0
	shlr16 r1
	mov r12,r2
	shlr8 r0
	shlr8 r1
	and r14,r0
	extu.b r1,r1
	or r0,r1
	mov r12,r0
	shll8 r0
	and r13,r0
	shll16 r2
	or r0,r1
	mov r1,r12
	shll8 r2
	add 0x04,r4
	or r2,r12
	add r4,r12
	mov.l r12,@(0x8,r15)
	mov r11,r12

loc_8c1A90CE:
	tst r9,r9
	bt loc_8c1a90e4
	tst r12,r12
	bt loc_8c1a90e4
	bra loc_8c1a90ec
	nop 

loc_8c1A90DA:
	mov.l @r15,r1
	mov 0xFE,r11
	add 0x01,r1
	and r11,r1
	add r1,r4

loc_8c1A90E4:
	cmp/hs r8,r4
	bt loc_8c1a90ec
	bra loc_8c1a8ee8
	nop 

loc_8c1A90EC:
	mov.l @(0x8,r15),r0

loc_8c1A90EE:
	add 0x0C,r15
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1a9100:
	#data 0x400E

;==============================================
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

;==============================================
loc_8c1A912C:
	mov 0x00,r0 ; r0 set to 0x00
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
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

loc_8c1a9150:
	mov r15,r2
	add 0x0C,r2
	mov.l r2,@-r15
	mov r15,r6
	mov r15,r5
	mov r15,r7
	add 0x04,r5
	add 0x0C,r7
	add 0x08,r6
	bsr loc_8c1a8e20
	mov.l @(0x14,r15),r4
	mov r0,r4
	tst r4,r4
	bt/s loc_8c1a917c
	add 0x04,r15
	mov.l @(0x10,r15),r3
	mov.l @(0x14,r15),r2
	sub r3,r4
	mov.w r4,@r2
	exts.w r4,r4
	cmp/pl r4
	bt loc_8c1a9184

loc_8c1A917C:
	add 0x1C,r15
	lds.l @r15+,pr
	rts
	mov 0xFF,r0

;==============================================
loc_8c1A9184:
	mov.l @r15,r3
	mov.l @(0x2C,r15),r2
	mov.l r3,@r2
	mov.l @(0x4,r15),r3
	mov.l @(0x28,r15),r2
	mov.b r3,@r2
	mov.l @(0x8,r15),r3
	mov.l @(0x20,r15),r2
	mov.b r3,@r2
	mov.l @(0xC,r15),r3
	mov.l @(0x30,r15),r2
	mov.l r3,@r2
	mov 0xFF,r3
	mov.l @(0x18,r15),r2
	mov.b r3,@r2
	mov.l @(0x28,r15),r3
	mov.l @(0x24,r15),r2
	mov.b @r3,r1
	mov.l @(0x20,r15),r3
	mov.b @r3,r3
	muls.w r3,r1
	sts macl,r1
	cmp/pz r1
	bt loc_8c1a91b6
	add 0x07,r1

loc_8c1A91B6:
	shar r1
	shar r1
	shar r1
	mov.b r1,@r2
	mov 0x01,r3
	mov.l @(0x34,r15),r2
	mov 0x00,r0
	mov.l r3,@r2
	add 0x1C,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A9222:
	#data 0x1000
	#align4

loc_8c1A9224:
	#data bank1c.loc_8c1c6898
loc_8c1A9228:
	#data bank12.loc_8c12F098
loc_8c1A922C:
	#data bank1c.loc_8c1c68A0

;==============================================
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

;==============================================
loc_8c1a92cc:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	add 0x50,r13
	mov.l r11,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.l @(0x04,r14),r0
	cmp/eq 0x01,r0
	bf/s loc_8c1a93c0
	mov.l @r13,r12
	mov.l @(loc_8c1a9384,pc),r2
	jsr @r2
	mov.l @(0x08,r14),r4
	tst r0,r0
	bf loc_8c1a93c0
	mov.w @(loc_8C1A937E,pc),r0
	mov r13,r6
	mov r13,r5
	mov r13,r7
	mov.l @(r0,r14),r2
	add 0x04,r0
	add 0x20,r5
	add 0x28,r7
	add 0x24,r6
	jsr @r2
	mov.l @(r0,r14),r4
	mov.l @(0x18,r13),r4
	mov.l @(0x20,r13),r3
	mov.l @(0x24,r13),r2
	sub r3,r4
	cmp/gt r2,r4
	bf/s loc_8c1a9316
	mov.l @(0x04,r13),r2
	mov.l @(0x24,r13),r4

loc_8c1a9316:
	cmp/gt r2,r4
	bf/s loc_8c1a931e
	mov.l @(0x14,r13),r5
	mov.l @(0x04,r13),r4

loc_8c1a931e:
	mov.l @(0x20,r13),r11
	mov.b @(0x0E,r14),r0
	shll r11
	cmp/eq 0x02,r0
	add r5,r11
	bf/s loc_8c1a9388
	mov 0x00,r1
	mov.l @(0x1C,r13),r9
	mov r1,r7
	mov.l @(0x20,r13),r3
	add r3,r9
	shll r9
	cmp/pl r4
	add r5,r9
	mov r1,r5
	bf/s loc_8c1a93ac
	mov r1,r6

loc_8c1a9340:
mov r6,r0
	shll r0
	mov.w @(r0,r12),r13
	mov 0xF8,r2
	mov r5,r0
	add 0x01,r7
	extu.w r13,r13
	mov r13,r3
	shad r2, r3
	shll8 r13
	or r3,r13
	mov.w r13,@(r0,r11)
	mov r6,r0
	add 0x01,r0
	shll r0
	cmp/ge r4,r7
	mov.w @(r0,r12),r13
	mov r5,r0
	add 0x02,r5
	extu.w r13,r13
	mov r13,r1
	mov r1,r3
	shad r2, r3
	shll8 r13
	or r3,r13
	mov.w r13,@(r0,r9)
	bf/s loc_8c1a9340
	add 0x02,r6
	bra loc_8c1a93ac
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1a937c:
	#data 0x00AA
loc_8C1A937E:
	#data 0x0088
	#align4

loc_8c1a9380:
	#data bank12.loc_8C129728
loc_8c1a9384:
	#data loc_8c1aa62a

;==============================================
loc_8c1a9388:
	cmp/pl r4
	mov r1,r6
	bf/s loc_8c1a93ac
	mov r1,r5

loc_8c1a9390:
	mov r5,r0
	mov.w @(r0,r12),r13
	mov 0xF8,r2
	extu.w r13,r13
	mov r13,r7
	mov r7,r3
	shad r2, r3
	shll8 r13
	add 0x01,r6
	or r3,r13
	cmp/ge r4,r6
	mov.w r13,@(r0,r11)
	bf/s loc_8c1a9390
	add 0x02,r5

loc_8c1a93ac:
	mov.w @(loc_8C1A948A,pc),r0
	mov 0x02,r3
	mov.l r4,@(r0,r14)
	mov.b @(0x0E,r14),r0
	mul.l r0,r4
	mov.w @(loc_8C1A948C,pc),r0
	sts macl,r4
	shll r4
	mov.l r4,@(r0,r14)
	mov.l r3,@(0x04,r14)

loc_8c1a93c0:
	mov.l @(0x04,r14),r0
	cmp/eq 0x02,r0
	bf loc_8c1a93dc
	mov.w @(loc_8C1A948E,pc),r0
	mov.l @(r0,r14),r3
	add 0x10,r0
	mov.l @(r0,r14),r6
	add 0x04,r0
	mov.l @(r0,r14),r5
	add 0xF0,r0
	jsr @r3
	mov.l @(r0,r14),r4
	mov 0x03,r3
	mov.l r3,@(0x04,r14)

loc_8c1a93dc:
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1a93ea:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	add 0x50,r13
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.l @(0x4,r14),r0
	cmp/eq 0x01,r0
	bf.s loc_8c1a94c8
	mov.l @r13,r12
	mov.l @(0x8C,PC),r2
	jsr @r2
	mov.l @(0x8,r14),r4
	tst r0,r0
	bf loc_8c1a94c8
	mov.w @(0x7E,PC),r0
	mov r13,r6
	mov r13,r5
	mov r13,r7
	mov.l @(r0,r14),r2
	add 0x04,r0
	add 0x20,r5
	add 0x28,r7
	add 0x24,r6
	jsr @r2
	mov.l @(r0,r14),r4
	mov.l @(0x18,r13),r4
	mov.l @(0x20,r13),r3
	mov.l @(0x24,r13),r2
	sub r3,r4
	cmp/gt r2,r4
	bf.s loc_8c1a9434
	mov.l @(0x4,r13),r2
	mov.l @(0x24,r13),r4

loc_8c1a9434:
	cmp/gt r2,r4
	bf.s loc_8c1a943c
	mov.l @(0x14,r13),r5
	mov.l @(0x4,r13),r4

loc_8c1a943c:
	mov.l @(0x20,r13),r10
	mov.b @(0xE,r14),r0
	shll r10
	cmp/eq 0x02,r0
	add r5,r10
	bf.s loc_8c1a9498
	mov 0x00,r11
	mov.l @(0x1C,r13),r1
	mov r11,r7
	mov.l @(0x20,r13),r3
	add r3,r1
	shll r1
	cmp/pl r4
	add r5,r1
	mov r11,r5
	bf.s loc_8c1a94b6
	mov r11,r6

loc_8c1a945e:
	mov r12,r0
	mov.b @(r0,r5),r2
	mov r10,r3
	add r6,r3
	extu.b r2,r2
	mov r6,r0
	shll8 r2
	mov.w r2,@r3
	mov r5,r3
	add 0x01,r3
	add r12,r3
	mov.b @r3,r3
	add 0x01,r7
	cmp/ge r4,r7
	add 0x02,r5
	extu.b r3,r3
	shll8 r3
	mov.w r3,@(r0,r1)
	bf.s loc_8c1a945e
	add 0x02,r6
	bra loc_8c1a94b6
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1A948A:
	#data 0x00A0
loc_8C1A948C:
	#data 0x00A4
loc_8C1A948E:
	#data 0x0090
loc_8C1A9490:
	#data 0x0088
	#align4

loc_8c1a9494:
	#data loc_8C1AA62A

;==============================================
loc_8c1a9498:
	mov 0x00,r5
	cmp/pl r4
	mov 0x00,r6
	mov r11,r7
	add r12,r5
	bf.s loc_8c1a94b6
	add r10,r6

loc_8c1a94a6:
	mov.b @r5+,r3
	add 0x01,r7
	cmp/ge r4,r7
	extu.b r3,r3
	shll8 r3
	mov.w r3,@r6
	bf.s loc_8c1a94a6
	add 0x02,r6

loc_8c1a94b6:
	mov.w @(0x48,PC),r0
	mov 0x02,r3
	mov.l r4,@(r0,r14)
	mov.b @(0xE,r14),r0
	mul.l r0,r4
	mov.w @(0x40,PC),r0
	sts macl,r4
	mov.l r4,@(r0,r14)
	mov.l r3,@(0x4,r14)

loc_8c1a94c8:
	mov.l @(0x4,r14),r0
	cmp/eq 0x02,r0
	bf loc_8c1a94e4
	mov.w @(0x34,PC),r0
	mov.l @(r0,r14),r3
	add 0x10,r0
	mov.l @(r0,r14),r6
	add 0x04,r0
	mov.l @(r0,r14),r5
	add 0xF0,r0
	jsr @r3
	mov.l @(r0,r14),r4
	mov 0x03,r3
	mov.l r3,@(0x4,r14)

loc_8c1a94e4:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A9502:
	#data 0x00A0
loc_8c1A9504:
	#data 0x00A4
loc_8c1A9506:
	#data 0x0090
loc_8c1A9508:
	#data 0x00AA
	#align4

;==============================================
loc_8c1A950C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.b @(0x1,r14),r0
	mov.b @r14,r3
	extu.b r0,r0
	mov.l @(0x298,PC),r2
	shll8 r0
	mov.l @(0x290,PC),r12
	mov r0,r10
	mov.b @(0x2,r14),r0
	extu.b r3,r3
	mov.l @(0x28,r15),r13
	extu.b r0,r0
	mov.l @(0x24,r15),r9
	shll16 r0
	mov.l @(0x27C,PC),r11
	or r0,r10
	mov.b @(0x3,r14),r0
	extu.b r0,r0
	shll16 r0
	shll8 r0
	or r0,r10
	or r3,r10
	cmp/eq r2,r10
	bt.s loc_8c1a9558
	add 0x04,r14
	mov.l @(0x274,PC),r1
	cmp/eq r1,r10
	bt loc_8c1a9558
	bra loc_8c1a9658
	nop 

loc_8c1A9558:
	mov.b @(0x1,r14),r0
	mov.b @r14,r3
	extu.b r0,r0
	shll8 r0
	mov r0,r10
	mov.b @(0x2,r14),r0
	extu.b r3,r3
	extu.b r0,r0
	shll16 r0
	or r0,r10
	mov.b @(0x3,r14),r0
	extu.b r0,r0
	shll16 r0
	shll8 r0
	or r0,r10
	or r3,r10
	mov r10,r8
	mov r10,r2
	shlr16 r8
	mov r10,r3
	shlr8 r2
	shlr8 r8
	and r11,r2
	extu.b r8,r8
	or r2,r8
	mov r10,r2
	shll8 r2
	shll16 r3
	and r12,r2
	shll8 r3
	or r2,r8
	or r3,r8
	cmp/gt r5,r8
	bt.s loc_8c1a9658
	add 0x04,r14
	mov.b @(0x1,r14),r0
	mov.b @r14,r3
	extu.b r0,r0
	shll8 r0
	mov r0,r5
	mov.b @(0x2,r14),r0
	extu.b r3,r3
	extu.b r0,r0
	shll16 r0
	or r0,r5
	mov.b @(0x3,r14),r0
	extu.b r0,r0
	shll16 r0
	shll8 r0
	or r0,r5
	or r3,r5
	mov r5,r10
	mov r5,r2
	shlr16 r10
	mov r5,r3
	shlr8 r2
	shlr8 r10
	and r11,r2
	extu.b r10,r10
	or r2,r10
	mov r5,r2
	shll8 r2
	shll16 r3
	and r12,r2
	shll8 r3
	or r2,r10
	or r3,r10
	add 0x04,r14
	mov.b @(0x1,r14),r0
	mov.b @r14,r3
	extu.b r0,r0
	shll8 r0
	mov r0,r5
	mov.b @(0x2,r14),r0
	extu.b r3,r3
	extu.b r0,r0
	shll16 r0
	or r0,r5
	mov.b @(0x3,r14),r0
	extu.b r0,r0
	shll16 r0
	shll8 r0
	or r0,r5
	or r3,r5
	mov r5,r2
	mov r5,r1
	shlr16 r2
	mov r5,r3
	shlr8 r1
	shlr8 r2
	and r11,r1
	extu.b r2,r2
	or r1,r2
	mov r5,r1
	shll8 r1
	shll16 r3
	and r12,r1
	shll8 r3
	or r1,r2
	mov r2,r5
	or r3,r5
	mov r5,r0
	cmp/eq 0x01,r0
	bt.s loc_8c1a9636
	add 0x04,r14
	cmp/eq 0x02,r0
	bt loc_8c1a963c
	cmp/eq 0x03,r0
	bt loc_8c1a964a
	bra loc_8c1a9658
	nop 

loc_8c1A9636:
	mov 0x02,r2
	bra loc_8c1a9640
	mov.l r2,@r13

loc_8c1A963C:
	mov 0x01,r3
	mov.l r3,@r13

loc_8c1A9640:
	mov.l @(0x20,r15),r2
	mov 0x08,r3
	mov.l r3,@r2
	bra loc_8c1a965c
	nop 

loc_8c1A964A:
	mov 0x10,r2
	mov 0x00,r1
	mov.l r1,@r13
	mov.l @(0x20,r15),r3
	mov.l r2,@r3
	bra loc_8c1a965c
	nop 

loc_8c1A9658:
	bra loc_8c1a971e
	mov 0x00,r0

loc_8c1A965C:
	mov.b @(0x1,r14),r0
	mov.b @r14,r2
	extu.b r0,r0
	shll8 r0
	mov r0,r3
	mov.b @(0x2,r14),r0
	extu.b r2,r2
	extu.b r0,r0
	shll16 r0
	or r0,r3
	mov.b @(0x3,r14),r0
	extu.b r0,r0
	shll16 r0
	shll8 r0
	or r0,r3
	or r2,r3
	mov r3,r5
	shlr16 r3
	mov 0xF8,r2
	mov r5,r1
	shlr8 r3
	shad r2,r1
	mov r5,r2
	exts.b r3,r3
	and r11,r1
	extu.b r3,r3
	or r1,r3
	mov r5,r1
	shll8 r1
	and r12,r1
	shll16 r2
	or r1,r3
	add 0x04,r14
	shll8 r2
	or r2,r3
	mov.l r3,@r6
	mov.b @(0x1,r14),r0
	mov.b @r14,r2
	extu.b r0,r0
	shll8 r0
	mov r0,r3
	mov.b @(0x2,r14),r0
	extu.b r2,r2
	extu.b r0,r0
	shll16 r0
	or r0,r3
	mov.b @(0x3,r14),r0
	extu.b r0,r0
	shll16 r0
	shll8 r0
	or r0,r3
	or r2,r3
	mov r3,r5
	shlr16 r3
	mov 0xF8,r2
	mov r5,r1
	shlr8 r3
	shad r2,r1
	exts.b r3,r3
	and r11,r1
	extu.b r3,r3
	or r1,r3
	mov r5,r1
	shll8 r1
	mov r5,r2
	shll16 r2
	and r12,r1
	shll8 r2
	or r1,r3
	or r2,r3
	mov.l r3,@r7
	mov.l @r13,r0
	cmp/eq 0x02,r0
	bt loc_8c1a96f6
	mov.l @r13,r0
	cmp/eq 0x01,r0
	bf loc_8c1a9702

loc_8c1A96F6:
	mov.l @(0xD0,PC),r3
	mov r10,r1
	jsr @r3
	mov.l @r7,r0
	bra loc_8c1a9712
	nop 

loc_8c1A9702:
	mov.l @r13,r3
	tst r3,r3
	bf loc_8c1a9716
	mov.l @(0xBC,PC),r2
	shlr r10
	mov r10,r1
	jsr @r2
	mov.l @r7,r0

loc_8c1A9712:
	bra loc_8c1a971a
	mov.l r0,@r9

loc_8c1A9716:
	mov.l @(0xB4,PC),r2
	mov.l r2,@r9

loc_8c1A971a:
	mov r4,r0
	add r8,r0

loc_8c1A971e:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1A9730:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x9C,PC),r3
	mov.l @(0x98,PC),r5
	mov.l r4,@r15
	jsr @r3
	mov 0x04,r6
	tst r0,r0
	bt loc_8c1a9750
	mov.l @(0x90,PC),r3
	mov 0x04,r6
	mov.l @(0x90,PC),r5
	jsr @r3
	mov.l @r15,r4
	tst r0,r0
	bf loc_8c1a9758

loc_8c1A9750:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov 0x01,r0

loc_8c1A9758:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
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

loc_8c1a977c:
	mov.l @(0x38,r15),r2
	mov.l r2,@-r15
	mov r15,r3
	add 0x10,r3
	mov.l r3,@-r15
	mov r15,r2
	add 0x10,r2
	mov.l r2,@-r15
	mov r15,r6
	mov r15,r7
	add 0x0C,r6
	add 0x10,r7
	bsr loc_8c1a950c
	mov.l @(0x20,r15),r4
	mov r0,r4
	tst r4,r4
	bt/s loc_8c1a97ae
	add 0x0C,r15
	mov.l @(0x14,r15),r3
	mov.l @(0x10,r15),r2
	sub r3,r4
	mov.w r4,@r2
	exts.w r4,r4
	cmp/pl r4
	bt loc_8c1a97dc

loc_8c1A97AE:
	add 0x1C,r15
	lds.l @r15+,pr
	rts
	mov 0xFF,r0

;==============================================
	#align4

loc_8c1A97b8:
	#data 0x0000FF00
loc_8c1A97Bc:
	#data 0x00FF0000

loc_8c1A97C0:
	#data ".sd"
	#align

loc_8c1A97C4:
	#data ".snd"

loc_8c1A97C8:
	#data bank12.loc_8c1291DC
loc_8c1A97CC:
	#data 0x7FFF0000
loc_8c1A97D0:
	#data bank1c.loc_8c1c68A8
loc_8c1A97D4:
	#data bank12.loc_8c12F098
loc_8c1A97D8:
	#data bank1c.loc_8c1c68B0

;==============================================
loc_8c1A97DC:
	mov.l @r15,r3
	mov.l @(0x2C,r15),r2
	mov.l r3,@r2
	mov.l @(0x4,r15),r3
	mov.l @(0x28,r15),r2
	mov.b r3,@r2
	mov.l @(0x8,r15),r3
	mov.l @(0x20,r15),r2
	mov.b r3,@r2
	mov.l @(0xC,r15),r3
	mov.l @(0x30,r15),r2
	mov.l r3,@r2
	mov 0xFF,r3
	mov.l @(0x18,r15),r2
	mov.b r3,@r2
	mov.l @(0x28,r15),r3
	mov.l @(0x24,r15),r2
	mov.b @r3,r1
	mov.l @(0x20,r15),r3
	mov.b @r3,r3
	muls.w r3,r1
	sts macl,r1
	cmp/pz r1
	bt loc_8c1a980e
	add 0x07,r1

loc_8c1A980E:
	shar r1
	shar r1
	shar r1
	mov.b r1,@r2
	mov 0x01,r3
	mov.l @(0x34,r15),r2
	mov 0x00,r0
	mov.l r3,@r2
	add 0x1C,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A990E:
	#data 0x00AA
	#align4

loc_8c1A9910:
	#data bank12.loc_8c129728

;==============================================
loc_8c1a9914:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	add 0x50,r13
	mov.l r11,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.l @(0x04,r14),r0
	cmp/eq 0x01,r0
	bf/s loc_8c1a99fc
	mov.l @r13,r12
	mov.l @(loc_8c1a9a30,pc),r2
	jsr @r2
	mov.l @(0x08,r14),r4
	tst r0,r0
	bf loc_8c1a99fc
	mov.w @(loc_8C1A9A26,pc),r0
	mov r13,r6
	mov r13,r5
	mov r13,r7
	mov.l @(r0,r14),r2
	add 0x04,r0
	add 0x20,r5
	add 0x28,r7
	add 0x24,r6
	jsr @r2
	mov.l @(r0,r14),r4
	mov.l @(0x18,r13),r4
	mov.l @(0x20,r13),r3
	mov.l @(0x24,r13),r2
	sub r3,r4
	cmp/gt r2,r4
	bf/s loc_8c1a995e
	mov.l @(0x04,r13),r2
	mov.l @(0x24,r13),r4

loc_8c1a995e:
	cmp/gt r2,r4
	bf/s loc_8c1a9966
	mov.l @(0x14,r13),r5
	mov.l @(0x04,r13),r4

loc_8c1a9966:
	mov.l @(0x20,r13),r11
	mov.b @(0x0E,r14),r0
	shll r11
	cmp/eq 0x02,r0
	add r5,r11
	bf/s loc_8c1a99c4
	mov 0x00,r1
	mov.l @(0x1C,r13),r9
	mov r1,r7
	mov.l @(0x20,r13),r3
	add r3,r9
	shll r9
	cmp/pl r4
	add r5,r9
	mov r1,r5
	bf/s loc_8c1a99e8
	mov r1,r6

loc_8c1a9988:
	mov r6,r0
	shll r0
	mov.w @(r0,r12),r13
	mov 0xF8,r2
	mov r5,r0
	add 0x01,r7
	extu.w r13,r13
	mov r13,r3
	shad r2, r3
	shll8 r13
	or r3,r13
	mov.w r13,@(r0,r11)
	mov r6,r0
	add 0x01,r0
	shll r0
	cmp/ge r4,r7
	mov.w @(r0,r12),r13
	mov r5,r0
	add 0x02,r5
	extu.w r13,r13
	mov r13,r1
	mov r1,r3
	shad r2, r3
	shll8 r13
	or r3,r13
	mov.w r13,@(r0,r9)
	bf/s loc_8c1a9988
	add 0x02,r6
	bra loc_8c1a99e8
	nop

loc_8c1a99c4:
	cmp/pl r4
	mov r1,r6
	bf/s loc_8c1a99e8
	mov r1,r5

loc_8c1a99cc:
	mov r5,r0
	mov.w @(r0,r12),r13
	mov 0xF8,r2
	extu.w r13,r13
	mov r13,r7
	mov r7,r3
	shad r2, r3
	shll8 r13
	add 0x01,r6
	or r3,r13
	cmp/ge r4,r6
	mov.w r13,@(r0,r11)
	bf/s loc_8c1a99cc
	add 0x02,r5

loc_8c1a99e8:
	mov.w @(loc_8C1A9A28,pc),r0
	mov 0x02,r3
	mov.l r4,@(r0,r14)
	mov.b @(0x0E,r14),r0
	mul.l r0,r4
	mov.w @(loc_8C1A9A2A,pc),r0
	sts macl,r4
	shll r4
	mov.l r4,@(r0,r14)
	mov.l r3,@(0x04,r14)

loc_8c1a99fc:
	mov.l @(0x04,r14),r0
	cmp/eq 0x02,r0
	bf loc_8c1a9a18
	mov.w @(loc_8C1A9A2C,pc),r0
	mov.l @(r0,r14),r3
	add 0x10,r0
	mov.l @(r0,r14),r6
	add 0x04,r0
	mov.l @(r0,r14),r5
	add 0xF0,r0
	jsr @r3
	mov.l @(r0,r14),r4
	mov 0x03,r3
	mov.l r3,@(0x04,r14)

loc_8c1a9a18:
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1A9A26:
	#data 0x0088
loc_8C1A9A28:
	#data 0x00A0
loc_8C1A9A2A:
	#data 0x00A4
loc_8C1A9A2C:
	#data 0x0090
	#align4

loc_8c1a9a30:
	#data loc_8c1aa62a

;==============================================
loc_8c1a9a34:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	add 0x50,r13
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.l @(0x4,r14),r0
	cmp/eq 0x01,r0
	bf.s loc_8c1a9b04
	mov.l @r13,r12
	mov.l @(0xE8,PC),r2
	jsr @r2
	mov.l @(0x8,r14),r4
	tst r0,r0
	bf loc_8c1a9b04
	mov.w @(0xD2,PC),r0
	mov r13,r6
	mov r13,r5
	mov r13,r7
	mov.l @(r0,r14),r2
	add 0x04,r0
	add 0x20,r5
	add 0x28,r7
	add 0x24,r6
	jsr @r2
	mov.l @(r0,r14),r4
	mov.l @(0x18,r13),r4
	mov.l @(0x20,r13),r3
	mov.l @(0x24,r13),r2
	sub r3,r4
	cmp/gt r2,r4
	bf.s loc_8c1a9a7e
	mov.l @(0x4,r13),r2
	mov.l @(0x24,r13),r4

loc_8c1a9a7e:
	cmp/gt r2,r4
	bf.s loc_8c1a9a86
	mov.l @(0x14,r13),r5
	mov.l @(0x4,r13),r4

loc_8c1a9a86:
	mov.l @(0x20,r13),r10
	mov.b @(0xE,r14),r0
	shll r10
	cmp/eq 0x02,r0
	add r5,r10
	bf.s loc_8c1a9ad4
	mov 0x00,r11
	mov.l @(0x1C,r13),r1
	mov r11,r7
	mov.l @(0x20,r13),r3
	add r3,r1
	shll r1
	cmp/pl r4
	add r5,r1
	mov r11,r5
	bf.s loc_8c1a9af2
	mov r11,r6

loc_8c1a9aa8:
	mov r12,r0
	mov.b @(r0,r5),r2
	mov r10,r3
	add r6,r3
	extu.b r2,r2
	mov r6,r0
	shll8 r2
	mov.w r2,@r3
	mov r5,r3
	add 0x01,r3
	add r12,r3
	mov.b @r3,r3
	add 0x01,r7
	cmp/ge r4,r7
	add 0x02,r5
	extu.b r3,r3
	shll8 r3
	mov.w r3,@(r0,r1)
	bf.s loc_8c1a9aa8
	add 0x02,r6
	bra loc_8c1a9af2
	nop 

loc_8c1a9ad4:
	mov 0x00,r5
	cmp/pl r4
	mov 0x00,r6
	mov r11,r7
	add r12,r5
	bf.s loc_8c1a9af2
	add r10,r6

loc_8c1a9ae2:
	mov.b @r5+,r3
	add 0x01,r7
	cmp/ge r4,r7
	extu.b r3,r3
	shll8 r3
	mov.w r3,@r6
	bf.s loc_8c1a9ae2
	add 0x02,r6

loc_8c1a9af2:
	mov.w @(0x3A,PC),r0
	mov 0x02,r3
	mov.l r4,@(r0,r14)
	mov.b @(0xE,r14),r0
	mul.l r0,r4
	mov.w @(0x32,PC),r0
	sts macl,r4
	mov.l r4,@(r0,r14)
	mov.l r3,@(0x4,r14)

loc_8c1a9b04:
	mov.l @(0x4,r14),r0
	cmp/eq 0x02,r0
	bf loc_8c1a9b20
	mov.w @(0x26,PC),r0
	mov.l @(r0,r14),r3
	add 0x10,r0
	mov.l @(r0,r14),r6
	add 0x04,r0
	mov.l @(r0,r14),r5
	add 0xF0,r0
	jsr @r3
	mov.l @(r0,r14),r4
	mov 0x03,r3
	mov.l r3,@(0x4,r14)

loc_8c1a9b20:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
oc_8c1a9b2e:
	#data 0x0088
oc_8c1a9b30:
	#data 0x00A0
oc_8c1a9b32:
	#data 0x00A4
oc_8c1a9b34:
	#data 0x0090
	#align4

loc_8c1a9b38:
	#data loc_8C1AA62A

;==============================================
loc_8c1a9b3c:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	add 0x50,r13
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.l @(0x4,r14),r0
	cmp/eq 0x01,r0
	bf.s loc_8c1a9c16
	mov.l @r13,r12
	mov.l @(0x110,PC),r2
	jsr @r2
	mov.l @(0x8,r14),r4
	tst r0,r0
	bf loc_8c1a9c16
	mov.w @(0xF8,PC),r0
	mov r13,r6
	mov r13,r5
	mov r13,r7
	mov.l @(r0,r14),r2
	add 0x04,r0
	add 0x20,r5
	add 0x28,r7
	add 0x24,r6
	jsr @r2
	mov.l @(r0,r14),r4
	mov.l @(0x18,r13),r4
	mov.l @(0x20,r13),r3
	mov.l @(0x24,r13),r2
	sub r3,r4
	cmp/gt r2,r4
	bf.s loc_8c1a9b86
	mov.l @(0x4,r13),r2
	mov.l @(0x24,r13),r4

loc_8c1a9b86:
	cmp/gt r2,r4
	bf.s loc_8c1a9b8e
	mov.l @(0x14,r13),r6
	mov.l @(0x4,r13),r4

loc_8c1a9b8e:
	mov.l @(0x20,r13),r10
	mov.b @(0xE,r14),r0
	mov.l @(0xD8,PC),r5
	shll r10
	cmp/eq 0x02,r0
	add r6,r10
	bf.s loc_8c1a9be4
	mov 0x00,r11
	mov.l @(0x1C,r13),r1
	mov r11,r7
	mov.l @(0x20,r13),r3
	mov r11,r13
	add r3,r1
	shll r1
	cmp/pl r4
	add r6,r1
	bf.s loc_8c1a9c04
	mov r11,r6

loc_8c1a9bb2:
	mov r12,r0
	mov.b @(r0,r7),r0
	mov r10,r2
	add r6,r2
	extu.b r0,r0
	shll r0
	mov.w @(r0,r5),r3
	add 0x01,r13
	mov r6,r0
	mov.w r3,@r2
	mov r7,r3
	add 0x01,r3
	add r12,r3
	mov.b @r3,r3
	add 0x02,r7
	extu.b r3,r3
	shll r3
	cmp/ge r4,r13
	add r5,r3
	mov.w @r3,r3
	mov.w r3,@(r0,r1)
	bf.s loc_8c1a9bb2
	add 0x02,r6
	bra loc_8c1a9c04
	nop 

loc_8c1a9be4:
	mov 0x00,r6
	cmp/pl r4
	mov 0x00,r7
	mov r11,r13
	add r12,r6
	bf.s loc_8c1a9c04
	add r10,r7

loc_8c1a9bf2:
	mov.b @r6+,r0
	add 0x01,r13
	extu.b r0,r0
	shll r0
	cmp/ge r4,r13
	mov.w @(r0,r5),r3
	mov.w r3,@r7
	bf.s loc_8c1a9bf2
	add 0x02,r7

loc_8c1a9c04:
	mov.w @(0x56,PC),r0
	mov 0x02,r3
	mov.l r4,@(r0,r14)
	mov.b @(0xE,r14),r0
	mul.l r0,r4
	mov.w @(0x4E,PC),r0
	sts macl,r4
	mov.l r4,@(r0,r14)
	mov.l r3,@(0x4,r14)

loc_8c1a9c16:
	mov.l @(0x4,r14),r0
	cmp/eq 0x02,r0
	bf loc_8c1a9c32
	mov.w @(0x42,PC),r0
	mov.l @(r0,r14),r3
	add 0x10,r0
	mov.l @(r0,r14),r6
	add 0x04,r0
	mov.l @(r0,r14),r5
	add 0xF0,r0
	jsr @r3
	mov.l @(r0,r14),r4
	mov 0x03,r3
	mov.l r3,@(0x4,r14)

loc_8c1a9c32:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A9C5c:
	#data 0x0088
loc_8c1A9C5e:
	#data 0x00A0
loc_8c1A9C60:
	#data 0x00A4
loc_8c1A9C62:
	#data 0x0090
loc_8c1A9C64:
	#data 0x00AA
	#align4

loc_8c1A9C68:
	#data loc_8c1AA62A
loc_8c1A9C6C:
	#data bank1c.loc_8c1c9B78

;==============================================
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

loc_8c1a9cfe:
	mov 0x04,r2
	mov.b r2,@r11
	mov.b @r13,r3
	mov.b r3,@r10
	mov.l r9,@r14
	mov.l @r5,r2
	shll r2
	mov.l r2,@r12
	mov.w r9,@r8

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

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A9D92:
	#data 0x00AA

;==============================================
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

;==============================================
loc_8c1A9E20:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	add 0x50,r13
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @(0x4,r14),r0
	cmp/eq 0x01,r0
	bf.s loc_8c1a9eee
	mov.l @r13,r12
	mov.l @(0x84,PC),r2
	jsr @r2
	mov.l @(0x8,r14),r4
	tst r0,r0
	bf loc_8c1a9eee
	mov.w @(0x72,PC),r0
	mov r13,r6
	mov r13,r5
	mov r13,r7
	mov.l @(r0,r14),r2
	add 0x04,r0
	add 0x20,r5
	add 0x28,r7
	add 0x24,r6
	jsr @r2
	mov.l @(r0,r14),r4
	mov.l @(0x18,r13),r4
	mov.l @(0x20,r13),r3
	mov.l @(0x24,r13),r2
	sub r3,r4
	cmp/gt r2,r4
	bf.s loc_8c1a9e68
	mov.l @(0x4,r13),r2
	mov.l @(0x24,r13),r4

loc_8c1A9E68:
	cmp/gt r2,r4
	bf.s loc_8c1a9e70
	mov.l @(0x14,r13),r5
	mov.l @(0x4,r13),r4

loc_8c1A9E70:
	mov.l @(0x20,r13),r11
	mov.b @(0xE,r14),r0
	shll r11
	cmp/eq 0x02,r0
	add r5,r11
	bf.s loc_8c1a9ec4
	mov 0x00,r7
	mov.l @(0x1C,r13),r1
	mov.l @(0x20,r13),r3
	mov r7,r13
	add r3,r1
	shll r1
	cmp/pl r4
	add r5,r1
	mov r7,r5
	bf.s loc_8c1a9eda
	mov r7,r6

loc_8c1A9E92:
	mov r5,r3
	shll r3
	add r12,r3
	mov r6,r0
	mov.w @r3,r3
	add 0x01,r13
	mov.w r3,@(r0,r11)
	mov r5,r3
	add 0x01,r3
	shll r3
	cmp/ge r4,r13
	add r12,r3
	mov.w @r3,r3
	add 0x02,r5
	mov.w r3,@(r0,r1)
	bf.s loc_8c1a9e92
	add 0x02,r6
	bra loc_8c1a9eda
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A9EB8:
	#data 0x0088
	#align4

loc_8c1A9EBC:
	#data bank12.loc_8c129728

loc_8c1A9EC0:
	#data loc_8c1AA62A

;==============================================
loc_8c1A9EC4:
	cmp/pl r4
	mov r7,r6
	bf.s loc_8c1a9eda
	mov r7,r5

loc_8c1A9ECC:
	mov r5,r0
	mov.w @(r0,r12),r3
	add 0x01,r6
	cmp/ge r4,r6
	mov.w r3,@(r0,r11)
	bf.s loc_8c1a9ecc
	add 0x02,r5

loc_8c1A9EDA:
	mov.w @(0x4C,PC),r0
	mov 0x02,r3
	mov.l r4,@(r0,r14)
	mov.b @(0xE,r14),r0
	mul.l r0,r4
	mov.w @(0x44,PC),r0
	sts macl,r4
	shll r4
	mov.l r4,@(r0,r14)
	mov.l r3,@(0x4,r14)

loc_8c1A9EEE:
	mov.l @(0x4,r14),r0
	cmp/eq 0x02,r0
	bf loc_8c1a9f0a
	mov.w @(0x36,PC),r0
	mov.l @(r0,r14),r3
	add 0x10,r0
	mov.l @(r0,r14),r6
	add 0x04,r0
	mov.l @(r0,r14),r5
	add 0xF0,r0
	jsr @r3
	mov.l @(r0,r14),r4
	mov 0x03,r3
	mov.l r3,@(0x4,r14)

loc_8c1A9F0A:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1A9F2a:
	#data 0x00A0
loc_8c1A9F2c:
	#data 0x00A4
loc_8c1A9F2e:
	#data 0x0090
	#align4

loc_8c1A9F30:
	#data bank1c.loc_8c1c68B4
loc_8c1A9F34:
	#data bank12.loc_8c12F098

;==============================================
loc_8c1a9f38:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c1aa0dc,pc),r9
	mov r5,r13
	cmp/pl r13
	mov r4,r11
	mov.l r6,@r15
	mov.l r7,@(0x04,r15)
	mov.l @(0x30,r15),r8
	mov.l @(0x28,r15),r10
	bf/s loc_8c1a9f74
	mov 0x00,r14
	mov.l @(loc_8c1aa0e0,pc),r12

loc_8c1a9f60:
	mov.l @r12,r5
	mov r14,r4
	mov 0x04,r6
	jsr @r9
	add r11,r4
	tst r0,r0
	bt loc_8c1a9f74
	add 0x01,r14
	cmp/ge r13,r14
	bf loc_8c1a9f60

loc_8c1a9f74:
	cmp/eq r13,r14
	bf loc_8c1a9f7c
	bra loc_8c1aa0c0
	nop

loc_8c1a9f7c:
	mov r14,r0
	cmp/pz r0
	bf loc_8c1a9f86
	bra loc_8c1a9f90
	and 0x03,r0

loc_8c1a9f86:
	not r0,r0
	add 0x01,r0
	and 0x03,r0
	not r0,r0
	add 0x01,r0

loc_8c1a9f90:
	tst r0,r0
	bt loc_8c1a9f98
	bra loc_8c1aa0c0
	nop

loc_8c1a9f98:
	mov r14,r12
	add 0x08,r12
	add r11,r12
	mov.w @r12,r3
	mov 0x01,r2
	extu.w r3,r3
	cmp/gt r2,r3
	bf loc_8c1a9fac
	bra loc_8c1aa0c0
	nop

loc_8c1a9fac:
	cmp/pl r13
	bf/s loc_8c1a9fc8
	mov 0x00,r14

loc_8c1a9fb2:
	mov.l @(loc_8c1aa0e4,pc),r2
	mov r14,r4
	mov 0x04,r6
	mov.l @r2,r5
	jsr @r9
	add r11,r4
	tst r0,r0
	bt loc_8c1a9fc8
	add 0x01,r14
	cmp/ge r13,r14
	bf loc_8c1a9fb2

loc_8c1a9fc8:
	cmp/eq r13,r14
	bt loc_8c1aa0c0
	mov r14,r4
	add 0x04,r4
	add r11,r4
	mov.l @r15,r2
	mov.b @(0x01,r4),r0
	add 0x08,r14
	mov.b @r4,r3
	extu.b r0,r0
	shll8 r0
	mov r0,r5
	mov.b @(0x02,r4),r0
	extu.b r3,r3
	extu.b r0,r0
	shll16 r0
	or r0,r5
	mov.b @(0x03,r4),r0
	mov r12,r4
	add 0x04,r4
	extu.b r0,r0
	mov.w r14,@r2
	shll16 r0
	shll8 r0
	or r0,r5
	or r3,r5
	mov.l @(0x04,r15),r3
	mov 0xFF,r2
	mov.b r2,@r3
	mov.b @(0x01,r4),r0
	mov.l @(0x34,r15),r3
	extu.b r0,r0
	shll8 r0
	mov r0,r2
	mov.b @(0x02,r4),r0
	mov.b @r4,r1
	extu.b r0,r0
	shll16 r0
	or r0,r2
	mov.b @(0x03,r4),r0
	extu.b r1,r1
	extu.b r0,r0
	shll16 r0
	shll8 r0
	or r0,r2
	or r1,r2
	mov.l r2,@r3
	mov.w @(0x02,r12),r0
	mov r0,r3
	mov.b r3,@r8
	mov.w @(0x0E,r12),r0
	mov r0,r2
	mov.b r2,@r10
	mov.w @(0x0C,r12),r0
	mov.l @(0x2C,r15),r3
	mov r0,r2
	mov.b r2,@r3
	mov.l @(0x2C,r15),r0
	mov.l @(loc_8c1aa0e8,pc),r2
	mov.b @r0,r0
	mov.l @(0x38,r15),r3
	jsr @r2
	mov r5,r1
	mov.l r0,@r3
	mov 0x01,r2
	mov.l @(0x3C,r15),r3
	mov.l r2,@r3
	mov.b @r10,r0
	cmp/eq 0x10,r0
	bf loc_8c1aa060
	mov 0x40,r0
	mov.l @(r0,r15),r2
	mov 0x00,r3
	mov.w r3,@r2
	bra loc_8c1aa09e
	nop

loc_8c1aa060:
	cmp/eq 0x08,r0
	bf loc_8c1aa070
	mov 0x40,r0
	mov.l @(r0,r15),r2
	mov 0x01,r3
	mov.w r3,@r2
	bra loc_8c1aa09e
	nop

loc_8c1aa070:
	mov.b @r10,r0
	cmp/eq 0x04,r0
	bf loc_8c1aa09e
	mov.b @r8,r3
	mov.l @(0x2C,r15),r2
	shll r3
	mov.b r3,@r2
	mov 0x04,r3
	mov.l @(0x3C,r15),r2
	shlr r5
	mov.l r3,@r2
	mov.b @r8,r0
	mov.l @(loc_8c1aa0ec,pc),r3
	mov.l @(0x38,r15),r2
	jsr @r3
	mov r5,r1
	mov.l r0,@r2
	mov 0x40,r0
	mov 0x10,r2
	mov.b r2,@r10
	mov 0x02,r2
	mov.l @(r0,r15),r3
	mov.w r2,@r3

loc_8c1aa09e:
	mov.b @r10,r3
	tst r3,r3
	bt loc_8c1aa0c0
	mov.l @(0x2C,r15),r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c1aa0c0
	mov.b @r8,r4
	cmp/pl r4
	bf loc_8c1aa0c0
	mov 0x02,r3
	cmp/gt r3,r4
	bt loc_8c1aa0c0
	mov.l @(0x34,r15),r3
	mov.l @r3,r2
	tst r2,r2
	bf loc_8c1aa0c4

loc_8c1aa0c0:
	bra loc_8c1aa0c6
	mov 0xFF,r0

loc_8c1aa0c4:
	mov 0x00,r0

loc_8c1aa0c6:
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1aa0dc:
	#data bank12.loc_8c12f098
loc_8c1aa0e0:
	#data bank1c.loc_8c1c9d78
loc_8c1aa0e4:
	#data bank1c.loc_8c1c9d80
loc_8c1aa0e8:
	#data bank12.loc_8c129128
loc_8c1aa0ec:
	#data bank12.loc_8c1291dc

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1AA1D2:
	#data 0x00AA
	#align4

loc_8c1AA1D4:
	#data bank12.loc_8c129728

;==============================================
loc_8c1aa1d8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	add 0x50,r13
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @(0x04,r14),r0
	cmp/eq 0x01,r0
	bf/s loc_8c1aa29a
	mov.l @r13,r12
	mov.l @(loc_8c1aa2cc,pc),r2
	jsr @r2
	mov.l @(0x08,r14),r4
	tst r0,r0
	bf loc_8c1aa29a
	mov.w @(loc_8C1AA2C2,pc),r0
	mov r13,r6
	mov r13,r5
	mov r13,r7
	mov.l @(r0,r14),r2
	add 0x04,r0
	add 0x20,r5
	add 0x28,r7
	add 0x24,r6
	jsr @r2
	mov.l @(r0,r14),r4
	mov.l @(0x18,r13),r4
	mov.l @(0x20,r13),r3
	mov.l @(0x24,r13),r2
	sub r3,r4
	cmp/gt r2,r4
	bf/s loc_8c1aa220
	mov.l @(0x04,r13),r2
	mov.l @(0x24,r13),r4

loc_8c1aa220:
	cmp/gt r2,r4
	bf/s loc_8c1aa228
	mov.l @(0x14,r13),r5
	mov.l @(0x04,r13),r4

loc_8c1aa228:
	mov.l @(0x20,r13),r11
	mov.b @(0x0E,r14),r0
	shll r11
	cmp/eq 0x02,r0
	add r5,r11
	bf/s loc_8c1aa270
	mov 0x00,r7
	mov.l @(0x1C,r13),r1
	mov.l @(0x20,r13),r3
	mov r7,r13
	add r3,r1
	shll r1
	cmp/pl r4
	add r5,r1
	mov r7,r5
	bf/s loc_8c1aa286
	mov r7,r6

loc_8c1aa24a:
	mov r5,r3
	shll r3
	add r12,r3
	mov r6,r0
	mov.w @r3,r3
	add 0x01,r13
	mov.w r3,@(r0,r11)
	mov r5,r3
	add 0x01,r3
	shll r3
	cmp/ge r4,r13
	add r12,r3
	mov.w @r3,r3
	add 0x02,r5
	mov.w r3,@(r0,r1)
	bf/s loc_8c1aa24a
	add 0x02,r6
	bra loc_8c1aa286
	nop

loc_8c1aa270:
	cmp/pl r4
	mov r7,r6
	bf/s loc_8c1aa286
	mov r7,r5

loc_8c1aa278:
	mov r5,r0
	mov.w @(r0,r12),r3
	add 0x01,r6
	cmp/ge r4,r6
	mov.w r3,@(r0,r11)
	bf/s loc_8c1aa278
	add 0x02,r5

loc_8c1aa286:
	mov.w @(loc_8C1AA2C4,pc),r0
	mov 0x02,r3
	mov.l r4,@(r0,r14)
	mov.b @(0x0E,r14),r0
	mul.l r0,r4
	mov.w @(loc_8C1AA2C6,pc),r0
	sts macl,r4
	shll r4
	mov.l r4,@(r0,r14)
	mov.l r3,@(0x04,r14)

loc_8c1aa29a:
	mov.l @(0x04,r14),r0
	cmp/eq 0x02,r0
	bf loc_8c1aa2b6
	mov.w @(loc_8C1AA2C8,pc),r0
	mov.l @(r0,r14),r3
	add 0x10,r0
	mov.l @(r0,r14),r6
	add 0x04,r0
	mov.l @(r0,r14),r5
	add 0xF0,r0
	jsr @r3
	mov.l @(r0,r14),r4
	mov 0x03,r3
	mov.l r3,@(0x04,r14)

loc_8c1aa2b6:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1AA2C2:
	#data 0x0088
loc_8C1AA2C4:
	#data 0x00A0
loc_8C1AA2C6:
	#data 0x00A4
loc_8C1AA2C8:
	#data 0x0090
	#align4

loc_8c1aa2cc:
	#data loc_8c1aa62a

;==============================================
loc_8c1aa2d0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	add 0x50,r13
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.l @(0x4,r14),r0
	cmp/eq 0x01,r0
	bf.s loc_8c1aa3a6
	mov.l @r13,r12
	mov.l @(0xEC,PC),r2
	jsr @r2
	mov.l @(0x8,r14),r4
	tst r0,r0
	bf loc_8c1aa3a6
	mov.w @(0xD8,PC),r0
	mov r13,r6
	mov r13,r5
	mov r13,r7
	mov.l @(r0,r14),r2
	add 0x04,r0
	add 0x20,r5
	add 0x28,r7
	add 0x24,r6
	jsr @r2
	mov.l @(r0,r14),r4
	mov.l @(0x18,r13),r4
	mov.l @(0x20,r13),r3
	mov.l @(0x24,r13),r2
	sub r3,r4
	cmp/gt r2,r4
	bf.s loc_8c1aa31a
	mov.l @(0x4,r13),r2
	mov.l @(0x24,r13),r4

loc_8c1aa31a:
	cmp/gt r2,r4
	bf.s loc_8c1aa322
	mov.l @(0x14,r13),r5
	mov.l @(0x4,r13),r4

loc_8c1aa322:
	mov.l @(0x20,r13),r10
	mov.b @(0xE,r14),r0
	shll r10
	cmp/eq 0x02,r0
	add r5,r10
	bf.s loc_8c1aa374
	mov 0x00,r11
	mov.l @(0x1C,r13),r1
	mov r11,r7
	mov.l @(0x20,r13),r3
	add r3,r1
	shll r1
	cmp/pl r4
	add r5,r1
	mov r11,r5
	bf.s loc_8c1aa394
	mov r11,r6

loc_8c1aa344:
	mov r12,r0
	mov.b @(r0,r5),r2
	mov r10,r3
	add r6,r3
	extu.b r2,r2
	mov r6,r0
	add 0x80,r2
	shll8 r2
	mov.w r2,@r3
	mov r5,r3
	add 0x01,r3
	add r12,r3
	mov.b @r3,r3
	add 0x01,r7
	cmp/ge r4,r7
	add 0x02,r5
	extu.b r3,r3
	add 0x80,r3
	shll8 r3
	mov.w r3,@(r0,r1)
	bf.s loc_8c1aa344
	add 0x02,r6
	bra loc_8c1aa394
	nop 

loc_8c1aa374:
	mov 0x00,r5
	cmp/pl r4
	mov 0x00,r6
	mov r11,r7
	add r12,r5
	bf.s loc_8c1aa394
	add r10,r6

loc_8c1aa382:
	mov.b @r5+,r3
	add 0x01,r7
	cmp/ge r4,r7
	extu.b r3,r3
	add 0x80,r3
	shll8 r3
	mov.w r3,@r6
	bf.s loc_8c1aa382
	add 0x02,r6

loc_8c1aa394:
	mov.w @(0x3A,PC),r0
	mov 0x02,r3
	mov.l r4,@(r0,r14)
	mov.b @(0xE,r14),r0
	mul.l r0,r4
	mov.w @(0x32,PC),r0
	sts macl,r4
	mov.l r4,@(r0,r14)
	mov.l r3,@(0x4,r14)

loc_8c1aa3a6:
	mov.l @(0x4,r14),r0
	cmp/eq 0x02,r0
	bf loc_8c1aa3c2
	mov.w @(0x26,PC),r0
	mov.l @(r0,r14),r3
	add 0x10,r0
	mov.l @(r0,r14),r6
	add 0x04,r0
	mov.l @(r0,r14),r5
	add 0xF0,r0
	jsr @r3
	mov.l @(r0,r14),r4
	mov 0x03,r3
	mov.l r3,@(0x4,r14)

loc_8c1aa3c2:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1aa3d0:
	#data 0x0088
loc_8c1aa3d2:
	#data 0x00A0
loc_8c1aa3d4:
	#data 0x00A4
loc_8c1aa3d6:
	#data 0x0090
	#align4

loc_8c1aa3d8:
	#data loc_8C1AA62A

;==============================================
loc_8c1aa3dc:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	add 0x50,r13
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.l @(0x4,r14),r0
	cmp/eq 0x01,r0
	bf.s loc_8c1aa4d4
	mov.l @r13,r12
	mov.l @(0x110,PC),r2
	jsr @r2
	mov.l @(0x8,r14),r4
	tst r0,r0
	bf loc_8c1aa4d4
	mov.w @(0xFA,PC),r0
	mov r13,r6
	mov r13,r5
	mov r13,r7
	mov.l @(r0,r14),r2
	add 0x04,r0
	add 0x20,r5
	add 0x28,r7
	add 0x24,r6
	jsr @r2
	mov.l @(r0,r14),r4
	mov.l @(0x18,r13),r4
	mov.l @(0x20,r13),r3
	mov.l @(0x24,r13),r2
	sub r3,r4
	cmp/gt r2,r4
	bf.s loc_8c1aa426
	mov.l @(0x4,r13),r2
	mov.l @(0x24,r13),r4

loc_8c1aa426:
	cmp/gt r2,r4
	bf.s loc_8c1aa42e
	mov.l @(0x14,r13),r5
	mov.l @(0x4,r13),r4

loc_8c1aa42e:
	mov.l @(0x20,r13),r11
	mov.b @(0xE,r14),r0
	shll r11
	cmp/eq 0x02,r0
	add r5,r11
	bf.s loc_8c1aa494
	mov 0x00,r7
	mov.l @(0x1C,r13),r10
	mov.l @(0x20,r13),r3
	mov r7,r13
	add r3,r10
	shll r10
	cmp/pl r4
	add r5,r10
	mov r7,r5
	bf.s loc_8c1aa4c0
	mov r7,r6

loc_8c1aa450:
	mov r5,r2
	add 0x02,r2
	add r12,r2
	mov r12,r0
	mov.b @r2,r3
	mov r11,r1
	mov.b @(r0,r5),r2
	add r6,r1
	extu.b r3,r3
	mov r6,r0
	extu.b r2,r2
	shll8 r3
	or r2,r3
	mov r5,r2
	mov.w r3,@r1
	mov r5,r3
	add 0x03,r3
	add 0x01,r2
	add r12,r3
	add r12,r2
	mov.b @r3,r3
	mov.b @r2,r2
	add 0x01,r13
	extu.b r3,r3
	cmp/ge r4,r13
	extu.b r2,r2
	shll8 r3
	or r2,r3
	add 0x04,r5
	mov.w r3,@(r0,r10)
	bf.s loc_8c1aa450
	add 0x02,r6
	bra loc_8c1aa4c0
	nop 

loc_8c1aa494:
	mov 0x00,r6
	cmp/pl r4
	mov r7,r13
	mov r7,r5
	bf.s loc_8c1aa4c0
	add r11,r6

loc_8c1aa4a0:
	mov r5,r3
	add 0x01,r3
	add r12,r3
	mov r5,r0
	mov.b @r3,r3
	add 0x01,r13
	mov.b @(r0,r12),r2
	cmp/ge r4,r13
	extu.b r3,r3
	extu.b r2,r2
	shll8 r3
	or r2,r3
	add 0x02,r5
	mov.w r3,@r6
	bf.s loc_8c1aa4a0
	add 0x02,r6

loc_8c1aa4c0:
	mov.w @(0x3C,PC),r0
	mov 0x02,r3
	mov.l r4,@(r0,r14)
	mov.b @(0xE,r14),r0
	mul.l r0,r4
	mov.w @(0x34,PC),r0
	sts macl,r4
	shll r4
	mov.l r4,@(r0,r14)
	mov.l r3,@(0x4,r14)

loc_8c1aa4d4:
	mov.l @(0x4,r14),r0
	cmp/eq 0x02,r0
	bf loc_8c1aa4f0
	mov.w @(0x26,PC),r0
	mov.l @(r0,r14),r3
	add 0x10,r0
	mov.l @(r0,r14),r6
	add 0x04,r0
	mov.l @(r0,r14),r5
	add 0xF0,r0
	jsr @r3
	mov.l @(r0,r14),r4
	mov 0x03,r3
	mov.l r3,@(0x4,r14)

loc_8c1aa4f0:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1aa4fe:
	#data 0x0088
loc_8c1aa500:
	#data 0x00A0
loc_8c1aa502:
	#data 0x00A4
loc_8c1aa504:
	#data 0x0090
	#align4

loc_8c1aa508:
	#data loc_8C1AA62A

;==============================================
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

;==============================================
loc_8c1AA536:
	mov 0x00,r0 ; r0 set to 0x00
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1AA568:
	#data 0x00AA
	#align4

loc_8c1AA56C:
	#data bank1c.loc_8c1c68BC
loc_8c1AA570:
	#data bank12.loc_8c12F098
loc_8c1AA574:
	#data bank1c.loc_8c1c68CC

;==============================================
loc_8c1AA578:
	mov.l @(loc_8c1AA6B4,pc),r3 ; r3 set to 0x8C129728
	mov.l @(loc_8c1AA6B0,pc),r4 ; r4 set to 0x8C3491C4
	mov.w @(loc_8c1AA6AC,pc),r6 ; r6 set to 0x1A0
	jmp @r3
	mov 0x00,r5

loc_8c1AA582:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x120,PC),r5
	mov 0x34,r12
	mov 0x08,r4
	mov 0x00,r14

loc_8c1AA594:
	mul.l r12,r14
	sts macl,r3
	add r5,r3
	mov.l @r3,r2
	tst r2,r2
	bt loc_8c1aa5a6
	add 0x01,r14
	cmp/ge r4,r14
	bf loc_8c1aa594

loc_8c1AA5A6:
	mov r14,r0
	cmp/eq 0x08,r0
	bf loc_8c1aa5b0
	bra loc_8c1aa5ee
	mov 0x00,r0

loc_8c1AA5B0:
	mul.l r12,r14
	mov.l @(0x100,PC),r3
	mov 0x34,r6
	sts macl,r13
	add r5,r13
	mov 0x00,r5
	jsr @r3
	mov r13,r4
	mov 0x01,r2
	mov r13,r7
	mov 0x00,r3
	mov.l r2,@r13
	add 0x30,r7
	mov r3,r2
	mov.l @(0xE8,PC),r5
	mov.w @(0xDC,PC),r4
	mov.l r14,@(0x4,r13)
	mov.l r3,@(0x8,r13)
	mov.l r3,@(0xC,r13)
	mov.l @(0xE4,PC),r3
	mov.l r7,@r15
	add 0x02,r7
	jsr @r3
	mov.l @r15,r6
	mov.l @(0xD0,PC),r2
	mov r13,r4
	mov 0x08,r6
	mov 0x00,r5
	jsr @r2
	add 0x28,r4
	mov r13,r0

loc_8c1AA5EE:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
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

;==============================================
loc_8c1AA626:
	rts 
	mov.l r5,@(0x8,r4)

;==============================================
loc_8c1AA62A:
	rts
	mov.l @(0x0C,r4),r0

;==============================================
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

;==============================================
loc_8c1AA646:
	mov 0x00,r0 ; r0 set to 0x00
	rts
	nop

;==============================================
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

;==============================================
loc_8c1AA664:
	mov 0x00,r0 ; r0 set to 0x00
	rts
	nop

;==============================================
loc_8c1AA66A:
	mov.l @(0xC,r4),r3
	tst r3,r3
	bf loc_8c1aa678
	mov 0x01,r2
	mov 0x00,r3
	mov.l r3,@(0x10,r4)
	mov.l r2,@(0xC,r4)

loc_8c1AA678:
	rts
	nop

;==============================================
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
	mov.l @(0xC,r4),r0
	cmp/eq 0x03,r0
	bf loc_8c1aa69c
	mov 0x00,r2
	mov.l r2,@(0xC,r4)

loc_8c1AA69C:
	rts
	nop

;==============================================
loc_8c1AA6A0:
	rts
	mov.l @(0x10,r4),r0

;==============================================
loc_8c1AA6A4:
	mov.l @(0x18,PC),r2
	mov 0x01,r3
	rts 
	mov.l r3,@r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1AA6AC:
	#data 0x01A0
loc_8c1AA6Ae:
	#data 0x01F4
	#align4

loc_8c1AA6B0:
	#data 0x8C3491C4
loc_8c1AA6B4:
	#data bank12.loc_8c129728
loc_8c1AA6B8:
	#data 0x0000AC44
loc_8c1AA6BC:
	#data bank17.loc_8c17E7DC
loc_8c1AA6C0:
	#data bank1c.loc_8c1c9D84

;==============================================
loc_8c1AA6C4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.l @(0xC,r14),r0
	cmp/eq 0x01,r0
	bf loc_8c1aa6d6
	mov 0x02,r2
	mov.l r2,@(0xC,r14)

loc_8c1AA6D6:
	mov.l @(0xC,r14),r0
	cmp/eq 0x02,r0
	bf loc_8c1aa756
	mov.l @(0x14,r14),r0
	cmp/eq 0x01,r0
	bf loc_8c1aa708
	mov r14,r3
	add 0x30,r3
	mov.l r3,@r15
	mov r14,r7
	mov.w @(0x2,r3),r0
	add 0x28,r7
	mov.l r0,@-r15
	mov r0,r2
	mov.l @(0x4,r15),r1
	mov.l @(0x90,PC),r2
	mov.w @r1,r3
	mov.l r3,@-r15
	mov.l @(0x20,r14),r6
	mov.l @(0x1C,r14),r5
	jsr @r2
	mov.l @(0x18,r14),r4
	add 0x08,r15
	bra loc_8c1aa752
	mov.l r0,@(0x10,r14)

loc_8c1AA708:
	mov r14,r2
	add 0x30,r2
	mov.l r2,@(0x4,r15)
	mov.w @(0x2,r2),r0
	mov r14,r2
	add 0x28,r2
	mov.l r0,@-r15
	mov r0,r3
	mov.l @(0x8,r15),r1
	mov.w @r1,r3
	mov.l r3,@-r15
	mov.l r2,@(0x8,r15)
	add 0x04,r2
	mov.l r2,@-r15
	mov.l @(0x24,r14),r3
	mov.l r3,@-r15
	mov.l @(0x1C,r14),r5
	mov.l @(0x60,PC),r3
	mov.l @(0x20,r14),r6
	mov.l @(0x10,r15),r7
	jsr @r3
	mov.l @(0x18,r14),r4
	add 0x10,r15
	cmp/pz r0
	bf.s loc_8c1aa740
	mov.l r0,@(0x10,r14)
	bra loc_8c1aa74a
	and 0x01,r0

loc_8c1AA740:
	not r0,r0
	add 0x01,r0
	and 0x01,r0
	not r0,r0
	add 0x01,r0

loc_8c1AA74A:
	cmp/eq 0x01,r0
	bf loc_8c1aa752
	bsr loc_8c1aa6a4
	nop 

loc_8c1AA752:
	mov 0x03,r3
	mov.l r3,@(0xC,r14)

loc_8c1AA756:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.w @(0x20,PC),r13
	mov.l @(0x28,PC),r4
	sts.l pr,@-r15
	add r4,r13
	mov r4,r14

loc_8c1aa76c:
	mov r14,r4
	mov.l @r4,r0
	cmp/eq 0x01,r0
	bf loc_8c1aa778
	bsr loc_8c1aa6c4
	nop

loc_8c1aa778:
	add 0x34,r14
	cmp/hs r13,r14
	bf loc_8c1aa76c
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1aa786:
	#data 0x01a0
	#align4

loc_8c1AA788:
	#data bank1b.loc_8c1b79E0
loc_8c1AA78C:
	#data bank1b.loc_8c1b7AF8
loc_8c1AA790:
	#data 0x8C3491C4

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
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

;==============================================
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

loc_8c1aa93c:
	not r0,r0
	add 0x01,r0
	and 0x03,r0
	not r0,r0
	add 0x01,r0

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

loc_8c1aa988:
	mov.l @(loc_8c1aaa38,pc),r4

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

;==============================================
loc_8c1aa9cc:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c1aaa48,pc),r12
	mov.l r5,@r15
	jsr @r12
	mov.l r6,@(0x04,r15)
	mov.l @r15,r13
	mov.l @(0x04,r15),r3
	mov r13,r11
	mov.l @(loc_8C1AAA50,pc),r9
	mov.l @(loc_8c1aaa54,pc),r10
	add r3,r11
	mov.l @(loc_8c1aaa4c,pc),r8
	cmp/ge r11,r13
	mov r13,r14
	bt/s loc_8c1aaa0e
	shll2 r14

loc_8c1aa9fc:
	mov.l @r9,r0
	jsr @r8
	mov.l @(r0,r14),r4
	jsr @r12
	mov r10,r4
	add 0x01,r13
	cmp/ge r11,r13
	bf/s loc_8c1aa9fc
	add 0x04,r14

loc_8c1aaa0e:
	mov.l @(loc_8c1aaa28,pc),r4
	jsr @r12
	nop
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1aaa28:
	#data bank1c.loc_8c1c6ac4
loc_8c1aaa2c:
	#data bank1c.loc_8C1C68DC
loc_8c1aaa30:
	#data bank1c.loc_8C1C6AC8
loc_8c1aaa34:
	#data bank1c.loc_8C1C6AD0
loc_8c1aaa38:
	#data bank1c.loc_8C1C6B1C
loc_8c1aaa3c:
	#data bank1b.loc_8C1B7E72
loc_8c1aaa40:
	#data 0xFF000024
loc_8c1aaa44:
	#data bank1b.loc_8C1B7EAC
loc_8c1aaa48:
	#data bank1b.loc_8c1b7f02
loc_8c1aaa4c:
	#data bank1b.loc_8c1b7f38
loc_8C1AAA50:
	#data 0x8C349364
loc_8c1aaa54:
	#data bank1c.loc_8c1c6acc

;==============================================
loc_8c1AAA58:
	mov.l @(loc_8c1AAA68,pc),r2 ; r2 set to 0xA05F688C
	mov.l @r2,r0
	tst 0x01,r0
	movt r3
	mov.l r3,@r4
	rts
	mov 0x00,r0


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1AAA68:
	#data 0xA05F688C

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1AAA88:
	#data bank1c.loc_8c1c993C

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1AAAA8:
#data bank1c.loc_8c1c993C

;==============================================
loc_8c1AAAAC:
mov.l @(loc_8c1AAABC,pc),r2 ; r2 set to 0xA05F688C
mov.l @r2,r0
tst 0x10,r0
movt r3
mov.l r3,@r4
rts
mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1AAABC:
	#data 0xA05F688C

;==============================================
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

;==============================================
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

;==============================================
loc_8c1AAAF4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	stc sr,r0
	mov.w @(0xCA,PC),r3
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.l r0,@r15
	stc sr,r0
	and r3,r0
	or 0xF0,r0
	ldc r0,sr
	mov 0x00,r13
	mov.l @(0xCC,PC),r14
	mov 0x02,r6
	mov r13,r5

loc_8c1AAB18:
	mov.l @r14,r2
	tst r2,r2
	bt loc_8c1aab28
	mov.w @(0xAC,PC),r2
	add 0x01,r5
	cmp/ge r6,r5
	bf.s loc_8c1aab18
	add r2,r14

loc_8c1AAB28:
	mov r5,r0
	cmp/eq 0x02,r0
	bf loc_8c1aab32
	bra loc_8c1aab6c
	mov r13,r14

loc_8c1AAB32:
	mov.w @(0x9A,PC),r0
	mov 0x00,r5
	mov.l @(0xAC,PC),r3
	mov.l r4,@(r0,r14)
	add 0x04,r0
	mov.l r13,@(r0,r14)
	add 0xF8,r0
	mov.w @(0x90,PC),r4
	mov.w @(0x8C,PC),r6
	mov.l r13,@(r0,r14)
	jsr @r3
	add r14,r4
	mov.w @(0x88,PC),r6
	mov 0x00,r5
	mov.l @(0x94,PC),r2
	mov r6,r4
	add 0x04,r4
	jsr @r2
	add r14,r4
	mov.l @(0x98,PC),r3
	mov.w @(0x7A,PC),r4
	jsr @r3
	add r14,r4
	mov.l @(0x8C,PC),r4
	mov 0x01,r2
	mov.l r2,@r14
	mov.l @r4,r3
	add 0x01,r3
	mov.l r3,@r4

loc_8c1AAB6C:
	mov.l @r15,r0
	stc sr,r2
	mov.w @(0x58,PC),r1
	and 0x0F,r0
	shll2 r0
	and r1,r2
	shll2 r0
	or r2,r0
	ldc r0,sr
	mov r14,r0
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
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

	;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1AABCA:
	#data 0x1AF8
loc_8c1AABCC:
	#data 0xFF0F
loc_8c1AABCE:
	#data 0x0D7C
loc_8c1AABD0:
	#data 0x0208
loc_8c1AABD2:
	#data 0x0B68
loc_8c1AABD4:
	#data 0x0210
loc_8c1AABD6:
	#data 0x0100
loc_8c1AABD8:
	#data 0x0104
loc_8c1AABDA:
	#data 0xFF60
loc_8c1AABDC:
	#data 0x0098
	#align4

loc_8c1AABE0:
	#data 0x8C349368
loc_8c1AABE4:
	#data bank12.loc_8c129728
loc_8c1AABE8:
	#data 0x8C34AE60
loc_8c1AABEC:
	#data 0x8C34AE64
loc_8c1AABF0:
	#data 0x8C34AE68
loc_8c1AABF4:
	#data bank13.loc_8c131D04

;==============================================
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

;==============================================
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

;==============================================
;unused?
loc_8c1AAC88:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	mov 0x02,r12
	sts.l pr,@-r15
	mov.l @(0x88,PC),r14

loc_8c1AAC96:
	mov.l @r14,r3
	tst r3,r3
	bt loc_8c1aaca0
	bsr loc_8c1aacb4
	mov r14,r4

loc_8c1aaca0:
	mov.w @(0x6A,PC),r2
	add 0x01,r13
	cmp/ge r12,r13
	bf.s loc_8c1aac96
	add r2,r14
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
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

loc_8c1aacc6:
	mov.l @(0x0C,r14),r2
	tst r2,r2
	bt loc_8c1aacd2
	mov r14,r5
	bsr loc_8c1aac66
	mov r13,r4

loc_8c1aacd2:
	mov.w @(loc_8c1aad02,pc),r2
	add 0x01,r12
	add r2,r14

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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
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
	#align4

loc_8c1AAD18:
	#data bank12.loc_8c129668
loc_8c1AAD1C:
	#data bank13.loc_8c131D04
loc_8c1AAD20:
	#data 0x8C349368
loc_8c1AAD24:
	#data bank12.loc_8c129728
loc_8c1AAD28:
	#data 0x8C34AE60

;==============================================
loc_8c1aad2c:
	mov.l r14,@-r15
	mov.w @(0x102,PC),r14
	mov.w @(0x102,PC),r3
	mul.l r14,r5
	add r4,r3
	sts.l pr,@-r15
	sts macl,r14
	add r3,r14
	mov.l @(0xC,r14),r0
	cmp/eq 0x01,r0
	bf loc_8c1aad52
	bsr loc_8c1aad9e
	nop 
	mov 0x02,r2
	mov 0x00,r0
	mov.l r2,@(0xC,r14)
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

loc_8c1aad52:
	mov 0xFF,r0
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0xCE,PC),r14
	mov 0x00,r13

loc_8c1aad68:
	mov r4,r12
	mov.l r5,@r15
	bra loc_8c1aad8a
	add r12,r14

loc_8c1aad70:
	mov.l @(0xC,r14),r2
	tst r2,r2
	bt loc_8c1aad84
	mov.l @(0x10,r14),r3
	mov.l @r15,r2
	cmp/gt r2,r3
	bt loc_8c1aad84
	mov r13,r5
	bsr loc_8c1aad2c
	mov r12,r4

loc_8c1aad84:
	mov.w @(0xAC,PC),r2
	add 0x01,r13
	add r2,r14

loc_8c1aad8a:
	mov.w @(0xAA,PC),r0
	mov.l @(r0,r12),r3
	cmp/ge r3,r13
	bf loc_8c1aad70
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

loc_8c1aad9e:
	mov.w @(0x92,PC),r2
	mov.w @(0x92,PC),r3
	mul.l r2,r5
	add r4,r3
	sts macl,r5
	add r3,r5
	mov.l @(0xC,r5),r1
	tst r1,r1
	bt loc_8c1aadb6
	mov.w @(0x86,PC),r0
	mov.l @(r0,r4),r1
	mov.l r1,@(0x14,r5)

loc_8c1aadb6:
	rts 
	nop 

;==============================================
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

loc_8c1aadd4:
	mov.l @(loc_8C1AAE44,pc),r1

loc_8c1aadd6:
	mov.w @(loc_8c1aae3c,pc),r0
	mov.l @(loc_8c1aae48,pc),r3
	mov.l r1,@(0x14,r2)
	mov.l @r14,r4
	mov.l @(r0,r4),r4
	jsr @r3
	add 0x18,r4
	tst r0,r0
	bf loc_8c1aadf2
	mov.l @(loc_8c1aae4c,pc),r3
	mov 0x01,r5
	mov.l @r14,r4
	jsr @r3
	add 0x04,r4

loc_8c1aadf2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1AAE34:
	#data 0x0124
loc_8c1AAE36:
	#data 0x0210
loc_8c1AAE38:
	#data 0x0208
loc_8c1AAE3A:
	#data 0x0204
loc_8c1AAE3C:
	#data 0x0D78
	#align4

loc_8c1AAE40:
	#data 0x8C34AE60
loc_8c1aae44:
	#data 0x7FFFFFFF
loc_8c1AAE48:
	#data bank13.loc_8c131D04
loc_8c1AAE4C:
	#data bank13.loc_8c131C90
loc_8c1AAE50:
	#data 0x8C34AE64
loc_8c1AAE54:
	#data 0x00040000

;==============================================
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

loc_8c1aae92:
	mov.l @(loc_8c1aaed4,pc),r3
	mov.l r11,@(0x0C,r14)
	mov.l r3,@(0x20,r14)

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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1AAECA:
	#data 0x0D78
loc_8c1AAECC:
	#data 0x0204
loc_8c1AAECE:
	#data 0x0124
loc_8c1AAED0:
	#data 0x0208
	#align4

loc_8c1AAED4:
	#data loc_8c1AACF2
loc_8c1AAED8:
	#data 0x8C34AE64

;==============================================
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
	
;==============================================
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

loc_8c1aafb8:
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c1aafbe:
	mov.l r14,@-r15
	mov.l @(loc_8c1ab034,pc),r14
	sts.l pr,@-r15
	mov.l @r14,r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x26,r0
	bf loc_8c1ab018
	mov.l @(loc_8c1ab070,pc),r2
	jsr @r2
	nop
	mov.l @r14,r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x54,r0
	bf loc_8c1ab018
	mov.l @(loc_8c1ab070,pc),r2
	jsr @r2
	nop
	mov.l @r14,r4
	mov 0x30,r3
	mov.b @r4,r4
	extu.b r4,r4
	cmp/ge r3,r4
	bf loc_8c1aaffe
	mov 0x39,r1
	cmp/gt r1,r4
	bt loc_8c1aaffe
	mov r4,r0
	nop
	cmp/eq 0x30,r0
	bf loc_8c1ab018

loc_8c1aaffe:
	mov.l @r14,r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x30,r0
	bf/s loc_8c1ab010
	mov 0x00,r4
	mov.l @r14,r2
	add 0x01,r2
	mov.l r2,@r14

loc_8c1ab010:
	lds.l @r15+,pr
	mov.l @(loc_8c1ab074,pc),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c1ab018:
	lds.l @r15+,pr
	mov.l @(loc_8c1ab028,pc),r3
	mov 0x02,r2
	mov.b r2,@r3
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1ab024:
	#data loc_8c1aDFA6
loc_8c1ab028:
	#data 0x8C34AFA8
loc_8c1ab02c:
	#data loc_8c1aE218
loc_8c1ab030:
	#data loc_8c1aDE36
loc_8c1ab034:
	#data bank1c.loc_8c1c9d88
loc_8c1ab038:
	#data 0x8C34B036
loc_8c1ab03c:
	#data 0x8C34B28B
loc_8c1ab040:
	#data 0x8C34AFA9
loc_8c1ab044:
	#data loc_8c1aDD8C
loc_8c1ab048:
	#data loc_8c1aC31E
loc_8c1ab04c:
	#data loc_8c1aD0C4
loc_8c1ab050:
	#data loc_8c1aDB34
loc_8c1ab054:
	#data loc_8c1aD9A8
loc_8c1ab058:
	#data loc_8c1aDB6E
loc_8c1ab05c:
	#data loc_8c1aDB96
loc_8c1ab060:
	#data loc_8c1aDA42
loc_8c1ab064:
	#data loc_8c1aDCEA
loc_8c1ab068:
	#data loc_8c1aDCFA
loc_8c1ab06c:
	#data loc_8c1aDAD8
loc_8c1ab070:
	#data loc_8c1ade6a
loc_8c1ab074:
	#data loc_8c1ac774

;==============================================
loc_8c1ab078:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x02,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l @(0x4C,PC),r2
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.l @(0x40,PC),r12
	mov.b @r3,r1
	add 0xFC,r15
	mov.l @(0x44,PC),r3
	jsr @r3
	mov.b r1,@r15
	mov.b @r15,r11
	extu.b r11,r11
	mov r11,r0
	nop 
	cmp/eq 0x44,r0
	bt loc_8c1ab0a8
	mov.l @(0x34,PC),r2
	jsr @r2
	nop 
	mov r0,r4

loc_8c1ab0a8:
	mov.l @(0x30,PC),r5
	extu.b r4,r14
	mov 0x01,r6
	mov r11,r0
	nop 
	add 0xBF,r0
	mov 0x1A,r1
	cmp/hs r1,r0
	bf loc_8c1ab0be
	bra loc_8c1ab2da
	nop 

loc_8c1ab0be:
	shll r0
	mov r0,r1
	mova @(loc_8c1ab0e0,PC),r0
	mov.w @(r0,r1),r0

braf_8c1ab0c6:
	braf r0
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c1ab0cc:
	#data 0x8C34AFA8
loc_8c1ab0d0:
	#data bank1c.loc_8c1c9D88
loc_8c1ab0d4:
	#data loc_8c1aDE6A
loc_8c1ab0d8:
	#data loc_8c1aDDEC
loc_8c1ab0dc:
	#data 0x8C34AF50

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1ab0e0:
	#data16 {loc_8c1ab114-braf_8c1ab0c6-4}; 0x004A
	#data16 {loc_8c1ab2da-braf_8c1ab0c6-4}; 0x0210
	#data16 {loc_8c1ab122-braf_8c1ab0c6-4}; 0x0058
	#data16 {loc_8c1ab126-braf_8c1ab0c6-4}; 0x005C
	#data16 {loc_8c1ab134-braf_8c1ab0c6-4}; 0x006A
	#data16 {loc_8c1ab14e-braf_8c1ab0c6-4}; 0x0084
	#data16 {loc_8c1ab15e-braf_8c1ab0c6-4}; 0x0094
	#data16 {loc_8c1ab15e-braf_8c1ab0c6-4}; 0x0094
	#data16 {loc_8c1ab1b6-braf_8c1ab0c6-4}; 0x00EC
	#data16 {loc_8c1ab2da-braf_8c1ab0c6-4}; 0x0210
	#data16 {loc_8c1ab2da-braf_8c1ab0c6-4}; 0x0210
	#data16 {loc_8c1ab1c4-braf_8c1ab0c6-4}; 0x00FA
	#data16 {loc_8c1ab1d2-braf_8c1ab0c6-4}; 0x0108
	#data16 {loc_8c1ab1e0-braf_8c1ab0c6-4}; 0x0116
	#data16 {loc_8c1ab23c-braf_8c1ab0c6-4}; 0x0172
	#data16 {loc_8c1ab24e-braf_8c1ab0c6-4}; 0x0184
	#data16 {loc_8c1ab2da-braf_8c1ab0c6-4}; 0x0210
	#data16 {loc_8c1ab2da-braf_8c1ab0c6-4}; 0x0210
	#data16 {loc_8c1ab254-braf_8c1ab0c6-4}; 0x018A
	#data16 {loc_8c1ab262-braf_8c1ab0c6-4}; 0x0198
	#data16 {loc_8c1ab2da-braf_8c1ab0c6-4}; 0x0210
	#data16 {loc_8c1ab268-braf_8c1ab0c6-4}; 0x019E
	#data16 {loc_8c1ab282-braf_8c1ab0c6-4}; 0x01B8
	#data16 {loc_8c1ab2a0-braf_8c1ab0c6-4}; 0x01D6
	#data16 {loc_8c1ab2da-braf_8c1ab0c6-4}; 0x0210
	#data16 {loc_8c1ab2cc-braf_8c1ab0c6-4}; 0x0202

;==============================================
loc_8c1ab114:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c1ab2ea
	mov.l @r15+,r14

;==============================================
loc_8c1ab122:
	bra loc_8c1ab14e
	nop 

;==============================================
loc_8c1ab126:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c1ab39e
	mov.l @r15+,r14

loc_8c1ab134:
	cmp/gt r6,r14
	bf loc_8c1ab13c
	bra loc_8c1ab2c8
	nop 

loc_8c1ab13c:
	tst r14,r14
	bf loc_8c1ab146
	mov.b @(0xE,r5),r0
	bra loc_8c1ab14a
	and 0xFD,r0

loc_8c1ab146:
	mov.b @(0xE,r5),r0
	or 0x02,r0

loc_8c1ab14a:
	bra loc_8c1ab2dc
	mov.b r0,@(0xE,r5)

;==============================================
loc_8c1ab14e:
	mov r14,r0
	nop 
	cmp/eq 0x01,r0
	bt loc_8c1ab15a
	bra loc_8c1ab2c8
	nop 

loc_8c1ab15a:
	bra loc_8c1ab2dc
	nop 

;==============================================
loc_8c1ab15e:
	mov.l @(0xA4,PC),r3
	mov.w @(0x9E,PC),r0
	mov.l @r3,r2
	mov.w @(r0,r2),r1
	mov.l @(0xA0,PC),r2
	extu.w r1,r1
	tst r2,r1
	bt loc_8c1ab188
	tst r14,r14
	bt loc_8c1ab17e
	mov r14,r0
	nop 
	cmp/eq 0x09,r0
	bt loc_8c1ab17e
	bra loc_8c1ab2c8
	nop 

loc_8c1ab17e:
	mov r14,r0
	nop 
	cmp/eq 0x09,r0
	bf loc_8c1ab188
	mov r6,r4

loc_8c1ab188:
	extu.b r4,r5
	mov r5,r0
	nop 
	cmp/eq 0x01,r0
	bf loc_8c1ab1a0
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c1aba20
	mov.l @r15+,r14

loc_8c1ab1a0:
	tst r5,r5
	bt loc_8c1ab1a8
	bra loc_8c1ab2c8
	nop 

loc_8c1ab1a8:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c1ab8a6
	mov.l @r15+,r14

;==============================================
loc_8c1ab1b6:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c1abac0
	mov.l @r15+,r14

;==============================================
loc_8c1ab1c4:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c1abc88
	mov.l @r15+,r14

;==============================================
loc_8c1ab1d2:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c1abcb8
	mov.l @r15+,r14

;==============================================
loc_8c1ab1e0:
	mov r14,r0
	nop 
	cmp/eq 0x00,r0
	bt loc_8c1ab1f8
	cmp/eq 0x01,r0
	bt loc_8c1ab20c
	cmp/eq 0x02,r0
	bt loc_8c1ab21c
	cmp/eq 0x03,r0
	bt loc_8c1ab22c
	bra loc_8c1ab238
	nop 

loc_8c1ab1f8:
	mov r5,r3
	add 0x18,r3
	mov.b @r3,r0
	bra loc_8c1ab234
	and 0xE7,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1ab202:
	#data 0x00b0
	#align4

loc_8c1ab204:
	#data 0x8c34b1f8
loc_8c1ab208:
	#data 0x00008000

;==============================================
loc_8c1ab20c:
	mov r5,r4
	add 0x18,r4
	mov.b @r4,r0
	and 0xE7,r0
	mov.b r0,@r4
	mov.b @r4,r0
	bra loc_8c1ab29c
	or 0x10,r0

loc_8c1ab21c:
	mov r5,r4
	add 0x18,r4
	mov.b @r4,r0
	and 0xE7,r0
	mov.b r0,@r4
	mov.b @r4,r0
	bra loc_8c1ab29c
	or 0x08,r0

loc_8c1ab22c:
	mov r5,r3
	add 0x18,r3
	mov.b @r3,r0
	or 0x18,r0

loc_8c1ab234:
	bra loc_8c1ab2dc
	mov.b r0,@r3

loc_8c1ab238:
	bra loc_8c1ab2dc
	mov.b r13,@r12

;==============================================
loc_8c1ab23c:
	cmp/gt r6,r14
	bt loc_8c1ab2c8
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c1abd18
	mov.l @r15+,r14

;==============================================
loc_8c1ab24e:
	mov.b @(0xE,r5),r0
	bra loc_8c1ab27e
	or 0x20,r0

;==============================================
loc_8c1ab254:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c1abe0c
	mov.l @r15+,r14

;==============================================
loc_8c1ab262:
	mov.b @(0xE,r5),r0
	bra loc_8c1ab27e
	and 0xDF,r0

;==============================================
loc_8c1ab268:
	tst r14,r14
	bf loc_8c1ab272
	mov.b @(0xE,r5),r0
	bra loc_8c1ab27e
	and 0xF7,r0

loc_8c1ab272:
	mov r14,r0
	nop 
	cmp/eq 0x01,r0
	bf loc_8c1ab2c8
	mov.b @(0xE,r5),r0
	or 0x08,r0

loc_8c1ab27e:
	bra loc_8c1ab2dc
	mov.b r0,@(0xE,r5)

;==============================================
loc_8c1ab282:
	mov r14,r0
	nop 
	cmp/eq 0x03,r0
	bf loc_8c1ab2c8
	mov r5,r4
	mov r14,r6
	add 0x18,r4
	shll2 r6
	mov.b @r4,r0
	shll2 r6
	and 0x9F,r0
	shll r6
	or r6,r0

loc_8c1ab29c:
	bra loc_8c1ab2dc
	mov.b r0,@r4

;==============================================
loc_8c1ab2a0:
	mov 0x07,r3
	cmp/ge r3,r14
	bt loc_8c1ab2c8
	add 0x04,r15
	mov.l @(0x74,PC),r0
	lds.l @r15+,pr
	add 0x16,r5
	extu.b r4,r4
	mov r5,r6
	mov.b @(r0,r4),r2
	mov.b @r6,r0
	and 0x8F,r0
	or r0,r2
	mov.b r2,@r6
	mov.l @r15+,r11
	mov.l @(0x64,PC),r1
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r1
	mov.l @r15+,r14

loc_8c1ab2c8:
	bra loc_8c1ab2dc
	mov.b r13,@r12

;==============================================
loc_8c1ab2cc:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c1ac212
	mov.l @r15+,r14

;==============================================
loc_8c1ab2da:
	mov.b r13,@r12

loc_8c1ab2dc:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1AB2EA:
	mov.l @(loc_8c1AB328,pc),r3 ; r3 set to 0x8C34AF51
	mov 0x00,r2 ; r2 set to 0x00
	bra loc_8c1AB2F2
	mov.b r2,@r3

loc_8c1ab2f2:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c1ab330,pc),r3
	mov.l @(loc_8C1AB32C,pc),r13
	jsr @r3
	nop
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1ab31c
	mov.l @(loc_8c1ab33c,pc),r3
	mov.l @(loc_8C1AB338,pc),r2
	mov.l @(loc_8C1AB334,pc),r14
	jsr @r3
	mov.l @r2,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1ab340
	mov.b @(0x0B,r14),r0
	or 0x02,r0
	mov.b r0,@(0x0B,r14)

loc_8c1ab31c:
	bra loc_8c1ab394
	mov 0x06,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1ab320:
	#data bank1c.loc_8C1C6CE0
loc_8c1ab324:
	#data loc_8C1AF26C
loc_8c1ab328:
	#data 0x8C34AF51
loc_8C1AB32C:
	#data 0x8C34AFA8
loc_8c1ab330:
	#data bank1c.loc_8c1c02b6
loc_8C1AB334:
	#data 0x8C34B288
loc_8C1AB338:
	#data 0x8C34B124
loc_8c1ab33c:
	#data bank1b.loc_8c1b3f0c

;==============================================
loc_8c1ab340:
	mov r14,r4
	add 0x05,r4
	mov.b @r4,r0
	and 0xFD,r0
	mov.b r0,@r4
	mov.b @r4,r0
	and 0xFE,r0
	mov.b r0,@r4
	mov.l @(loc_8C1AB3D4,pc),r3
	mov.w @(loc_8C1AB3D2,pc),r1
	mov.l @r3,r0
	mov.w @(r0,r1),r0
	extu.w r0,r0
	tst 0x10,r0
	bt loc_8c1ab36a
	mov.l @(loc_8c1ab3d8,pc),r2
	jsr @r2
	nop
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1ab396

loc_8c1ab36a:
	mov.b @(0x06,r14),r0
	extu.b r0,r0
	tst 0x08,r0
	bt loc_8c1ab378
	mov 0x02,r2
	bra loc_8c1ab396
	mov.b r2,@r13

loc_8c1ab378:
	mov.l @(loc_8c1ab3dc,pc),r3
	jsr @r3
	nop
	mov.l @(loc_8C1AB3E0,pc),r3
	mov 0x08,r2
	mov.b @r3,r0
	and 0x7F,r0
	mov.b r0,@r3
	mov 0x02,r0
	mov.l @(loc_8C1AB3E4,pc),r1
	mov 0x05,r3
	mov.b r2,@r1
	mov.l @(loc_8C1AB3E8,pc),r2
	mov.b r0,@r2

loc_8c1ab394:
	mov.b r3,@r13

loc_8c1ab396:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1ab39e:
	sts.l pr,@-r15
	mov.l @(0x4C,PC),r3
	mov.l @(0x48,PC),r2
	jsr @r3
	mov.l @r2,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1ab3b6
	mov.l @(0x44,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c1ab3c8

loc_8c1ab3b6:
	mov.l @(0x40,PC),r3
	mov.b @r3,r0
	or 0x02,r0
	mov.b r0,@r3
	lds.l @r15+,pr
	mov.l @(0x38,PC),r1
	mov 0x06,r2
	rts 
	mov.b r2,@r1

;==============================================
loc_8c1ab3c8:
	bra loc_8c1ab400
	lds.l @r15+,pr

;==============================================
;unused?
loc_8c1ab3cc:
	lds.l @r15+,pr
	rts 
	nop 


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1AB3D2:
	#data 0x00B0
	#align4

loc_8C1AB3D4:
	#data 0x8C34B1F8
loc_8c1ab3d8:
	#data loc_8c1adee0
loc_8c1ab3dc:
	#data loc_8c1af876
loc_8C1AB3E0:
	#data 0x8C34AF5E
loc_8C1AB3E4:
	#data 0x8C34B0FE
loc_8C1AB3E8:
	#data 0x8C34B11C
loc_8C1AB3Ec:
	#data 0x8C34B124
loc_8c1ab3f0:
	#data bank1b.loc_8C1B3F0C
loc_8c1ab3f4:
	#data 0x8C34AF51
loc_8c1ab3f8:
	#data 0x8C34B293
loc_8c1ab3fc:
	#data 0x8C34AFA8

;==============================================
loc_8c1ab400:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(0xD4,PC),r14
	sts.l pr,@-r15
	mov r14,r4
	add 0x05,r4
	add 0xF8,r15
	mov.b @r4,r0
	mov 0x01,r8
	and 0x08,r0
	mov r8,r13
	mov.b r0,@(0x4,r15)
	mov.b @r4,r0
	and 0xF7,r0
	mov.b r0,@r4
	mov.b @r4,r0
	and 0xFE,r0
	mov.b r0,@r4
	mov.b @(0xD,r14),r0
	and 0xBF,r0
	mov.b r0,@(0xD,r14)
	mov.l @(0xB0,PC),r11
	mov.b @(0x6,r14),r0
	extu.b r0,r0
	tst 0x08,r0
	bt.s loc_8c1ab444
	mov 0x02,r10
	bra loc_8c1ab5c4
	nop 

loc_8c1ab444:
	mov.l @(0xA4,PC),r3
	mov.w @(0x96,PC),r1
	mov.l @r3,r0
	mov.w @(r0,r1),r0
	extu.w r0,r0
	tst 0x10,r0
	bt loc_8c1ab462
	mov.l @(0x9C,PC),r2
	jsr @r2
	nop 
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1ab462
	bra loc_8c1ab5c6
	nop 

loc_8c1ab462:
	mov.l @(0x98,PC),r5
	mov 0x03,r3
	mov.l @(0x90,PC),r12
	mov.b @r5,r5
	mov.l @(0x88,PC),r9
	extu.b r5,r5
	tst r5,r3
	bt.s loc_8c1ab47a
	mov r14,r4
	mov 0x02,r1
	tst r5,r1
	bf loc_8c1ab53c

loc_8c1ab47a:
	mov r4,r0
	nop 
	add 0x10,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c1ab498
	mov r4,r5
	add 0x10,r5
	mov.b @r5,r0
	and 0x7F,r0
	mov.b r0,@r5
	mov.b @r5,r0
	or 0x02,r0
	mov.b r0,@r5

loc_8c1ab498:
	mov.l @(0x64,PC),r3
	mov.l @r3,r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x4C,r0
	bf loc_8c1ab50c
	mov.l @(0x5C,PC),r4
	bsr loc_8c1ab826
	nop 
	mov.l @(0x5C,PC),r3
	mov.l @(0x54,PC),r5
	jsr @r3
	mov r12,r4
	mov.l @(0x50,PC),r2
	mov.l r2,@r15

loc_8c1ab4b6:
	mov.l @r15,r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x3B,r0
	bf loc_8c1ab4c4
	bra loc_8c1ab566
	mov r10,r13

loc_8c1ab4c4:
	mov.l @r15,r3
	mov.b @r3,r2
	mov.b @r9,r3
	cmp/eq r3,r2
	bt loc_8c1ab566
	mov.l @r15,r3
	add 0x01,r3
	mov.l r3,@r15
	add 0xFF,r3
	mov.b @r3,r2
	tst r2,r2
	bf loc_8c1ab4b6
	bra loc_8c1ab566
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1ab4e0:
	#data 0x00B0
	#align4

loc_8c1ab4e4:
	#data 0x8C34B288
loc_8c1ab4e8:
	#data 0x8C34AFA8
loc_8c1ab4ec:
	#data 0x8C34B1F8
loc_8c1ab4f0:
	#data loc_8C1ADEE0
loc_8c1ab4f4:
	#data 0x8C34B036
loc_8c1ab4f8:
	#data 0x8C34B197
loc_8c1ab4fc:
	#data 0x8C34AF6B
loc_8c1ab500:
	#data bank1c.loc_8C1C9D88
loc_8c1ab504:
	#data 0x8C34AEBE
loc_8c1ab508:
	#data loc_8C1ADF50

;==============================================
loc_8c1ab50c:
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	tst r8,r0
	bf loc_8c1ab566
	mov.b @(0x4,r15),r0
	mov 0x46,r7
	mov.l @(0x19C,PC),r4
	mov r0,r6
	bsr loc_8c1ab5da
	mov r12,r5
	mov r0,r13
	extu.b r13,r3
	tst r3,r3
	bt loc_8c1ab5c4
	mov.b @(0x8,r14),r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c1ab566
	bsr loc_8c1ab826
	mov r12,r4
	mov.b @(0x8,r14),r0
	and 0x7F,r0
	bra loc_8c1ab566
	mov.b r0,@(0x8,r14)

loc_8c1ab53c:
	mov.b @(0x2,r4),r0
	extu.b r0,r0
	tst 0x04,r0
	bt loc_8c1ab562
	mov.b @(0x2,r4),r0
	and 0xFB,r0
	mov.b r0,@(0x2,r4)
	mov.b @(0x4,r15),r0
	mov 0x46,r7
	mov.l @(0x168,PC),r4
	mov r0,r6
	bsr loc_8c1ab5da
	mov r12,r5
	mov r0,r13
	extu.b r13,r2
	tst r2,r2
	bf loc_8c1ab566
	bra loc_8c1ab5c4
	nop 

loc_8c1ab562:
	bra loc_8c1ab5c6
	mov.b r8,@r11

loc_8c1ab566:
	mov.l @(0x158,PC),r3
	mov.l @(0x150,PC),r4
	jsr @r3
	mov r12,r5
	mov.l @(0x154,PC),r2
	jsr @r2
	mov r12,r4
	exts.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c1ab580
	mov 0x04,r2
	bra loc_8c1ab5c6
	mov.b r2,@r11

loc_8c1ab580:
	mov.l @(0x144,PC),r3
	mov 0x08,r2
	mov.b @r3,r0
	or 0x80,r0
	mov.b r0,@r3
	mov.l @(0x140,PC),r1
	mov.b r2,@r1
	mov.l @(0x140,PC),r0
	mov.l r12,@r0
	mov.b @r9,r3
	mov.b @r12,r2
	cmp/eq r2,r3
	bf loc_8c1ab5a4
	mov r14,r3
	add 0x10,r3
	mov.b @r3,r0
	or 0x02,r0
	mov.b r0,@r3

loc_8c1ab5a4:
	mov.l @(0x12C,PC),r2
	mov r14,r3
	add 0x1E,r3
	mov.b r8,@r2
	mov.b @r3,r0
	or 0x04,r0
	mov.b r0,@r3
	extu.b r13,r0
	cmp/eq 0x02,r0
	bf loc_8c1ab5be
	mov 0x06,r1
	bra loc_8c1ab5c6
	mov.b r1,@r11

loc_8c1ab5be:
	mov 0x05,r0
	bra loc_8c1ab5c6
	mov.b r0,@r11

loc_8c1ab5c4:
	mov.b r10,@r11

loc_8c1ab5c6:
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

;==============================================
loc_8c1ab5da:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r4,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xEC,r15
	mov r7,r0
	nop 
	mov 0x00,r8
	mov.w r0,@(0x8,r15)
	mov.l @r12,r3
	mov r8,r11
	mov.l r3,@r15
	mov.l r5,@(0x4,r15)
	mov.l @(0xD8,PC),r13
	mov.b @(0x8,r13),r0
	and 0x7F,r0
	mov.b r0,@(0x8,r13)
	exts.b r6,r6
	mov.l @(0xD4,PC),r14
	mov.l @(0xD0,PC),r9
	tst r6,r6
	bt.s loc_8c1ab63c
	mov r13,r4
	mov.l @(0xD0,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	and 0x03,r0
	cmp/eq 0x02,r0
	bf loc_8c1ab632
	mov.b @(0xD,r4),r0
	or 0x40,r0
	mov.b r0,@(0xD,r4)
	mov r15,r5
	add 0x04,r5
	jsr @r9
	mov 0x00,r4
	mov.b @(0x8,r13),r0
	and 0x7F,r0
	mov.b r0,@(0x8,r13)

loc_8c1ab632:
	mov.b @r14,r2
	mov.l @(0x4,r15),r3
	mov.b r2,@r3
	bra loc_8c1ab764
	nop 

loc_8c1ab63c:
	mov r4,r2
	add 0x08,r4
	add 0x0D,r2
	mov.l r2,@(0x10,r15)
	mov.l r4,@(0xC,r15)

loc_8c1ab646:
	mov.w @(0x8,r15),r0
	mov r0,r10
	mov.l @r15,r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x53,r0
	bf.s loc_8c1ab742
	extu.w r10,r10
	mov.l @r15,r2
	add 0x01,r2
	mov.l r2,@r15
	mov.b @r14,r0
	extu.b r0,r0
	cmp/eq 0x20,r0
	bt loc_8c1ab678
	bra loc_8c1ab66e
	nop 

loc_8c1ab668:
	mov.l @r15,r3
	add 0x01,r3
	mov.l r3,@r15

loc_8c1ab66e:
	mov.l @r15,r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x20,r0
	bt loc_8c1ab668

loc_8c1ab678:
	mov.l @r15,r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x3D,r0
	bf loc_8c1ab6a4
	mov.l @r15,r2
	add 0x01,r2
	mov.l r2,@r15
	mov.b @r14,r0
	extu.b r0,r0
	cmp/eq 0x20,r0
	bt loc_8c1ab6a4
	bra loc_8c1ab69a
	nop 

loc_8c1ab694:
	mov.l @r15,r3
	add 0x01,r3
	mov.l r3,@r15

loc_8c1ab69a:
	mov.l @r15,r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x20,r0
	bt loc_8c1ab694

loc_8c1ab6a4:
	bsr loc_8c1ab7b6
	mov r15,r4
	mov r0,r13
	extu.b r13,r3
	mov 0x0A,r4
	cmp/ge r4,r3
	bf loc_8c1ab6e8
	mov.l @r15,r3
	bra loc_8c1ab732
	mov.l r3,@r12

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1ab6b8:
	#data bank1c.loc_8C1C9D88
loc_8c1ab6bc:
	#data 0x8C34AEBE
loc_8c1ab6c0:
	#data loc_8C1ADF50
loc_8c1ab6c4:
	#data loc_8C1AE350
loc_8c1ab6c8:
	#data 0x8C34AF5E
loc_8c1ab6cc:
	#data 0x8C34B0FE
loc_8c1ab6d0:
	#data 0x8C34B190
loc_8c1ab6d4:
	#data 0x8C34B11C
loc_8c1ab6d8:
	#data 0x8C34B288
loc_8c1ab6dc:
	#data bank1b.loc_8C1B8740
loc_8c1ab6e0:
	#data 0x8C34B036
loc_8c1ab6e4:
	#data 0x8C34AF6B

;==============================================
loc_8c1ab6e8:
	mov.l @(0x10,r15),r3
	mov.b @r3,r0
	or 0x40,r0
	mov.b r0,@r3
	mov.l @(0xFC,PC),r4
	mov.w @(0xF4,PC),r1
	mov.l @r4,r0
	mov.w @(r0,r1),r0
	extu.w r0,r0
	tst 0x40,r0
	bt loc_8c1ab710
	mov r15,r5
	add 0x04,r5
	jsr @r9
	mov r13,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1ab736
	bra loc_8c1ab732
	nop 

loc_8c1ab710:
	mov.l @(0xE0,PC),r3
	jsr @r3
	mov r13,r4
	extu.b r11,r2
	sub r2,r10
	extu.w r0,r0
	cmp/gt r10,r0
	bt loc_8c1ab732
	mov r15,r5
	add 0x04,r5
	jsr @r9
	mov r13,r4
	mov.l @(0xC8,PC),r2
	jsr @r2
	mov r13,r4
	bra loc_8c1ab736
	add r0,r11

loc_8c1ab732:
	bra loc_8c1ab7a2
	mov 0x00,r0

loc_8c1ab736:
	mov.l @(0xC,r15),r3
	mov.b @r3,r0
	or 0x80,r0
	mov.b r0,@r3
	bra loc_8c1ab646
	nop 

loc_8c1ab742:
	mov.l @(0x4,r15),r2
	add 0x01,r2
	mov.l r2,@(0x4,r15)
	mov.l @r15,r3
	mov.b @r3,r1
	mov.b r1,@-r2
	mov.l @r15,r3
	mov.b @r3,r2
	mov.b @r14,r3
	cmp/eq r3,r2
	bf loc_8c1ab768
	mov.l @(0x4,r15),r3
	add 0x01,r3
	mov.l r3,@(0x4,r15)
	mov.b r8,@-r3
	mov.l @r15,r3
	mov.l r3,@r12

loc_8c1ab764:
	bra loc_8c1ab7a2
	mov 0x01,r0

loc_8c1ab768:
	add 0x01,r11
	mov.l @r15,r2
	extu.b r11,r3
	cmp/ge r10,r3
	add 0x01,r2
	bt.s loc_8c1ab788
	mov.l r2,@r15
	mov r2,r0
	nop 
	add 0xFF,r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x3B,r0
	bt loc_8c1ab788
	bra loc_8c1ab646
	nop 

loc_8c1ab788:
	mov.b @r14,r3
	extu.b r11,r11
	mov.l @(0x4,r15),r2
	cmp/ge r10,r11
	mov.b r3,@r2
	bf loc_8c1ab79c
	mov.l @r15,r3
	mov.l r3,@r12
	bra loc_8c1ab7a2
	mov 0x03,r0

loc_8c1ab79c:
	mov.l @r15,r2
	mov 0x02,r0
	mov.l r2,@r12

loc_8c1ab7a2:
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

;==============================================
loc_8c1ab7b6:
	mov.l r14,@-r15
	mov 0x00,r5
	mov.l r13,@-r15
	mov.l @(0x38,PC),r13
	mov.w @(0x2A,PC),r7
	bra loc_8c1ab80c
	mov 0x30,r14

loc_8c1ab7c4:
	mov r5,r2
	mov.l @r4,r1
	shll2 r2
	mov r5,r3
	add r3,r2
	mov.b @r1,r3
	shll r2
	add r3,r2
	mov r2,r5
	mov r1,r2
	add 0x01,r2
	mov.l r2,@r4
	mov.b @r13,r0
	extu.b r0,r0
	cmp/eq 0x20,r0
	bt.s loc_8c1ab80c
	add r7,r5
	bra loc_8c1ab802
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1ab7ea:
	#data 0x00B2
loc_8c1ab7ec:
	#data 0x00D0
	#align4

loc_8c1ab7f0:
	#data 0x8C34B1F8
loc_8c1ab7f4:
	#data bank1b.loc_8C1B89AA
loc_8c1ab7f8:
	#data 0x8C34B036

;==============================================
loc_8c1ab7fc:
	mov.l @r4,r3
	add 0x01,r3
	mov.l r3,@r4

loc_8c1ab802:
	mov.l @r4,r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x20,r0
	bt loc_8c1ab7fc

loc_8c1ab80c:
	mov.l @r4,r6
	mov.b @r6,r6
	extu.b r6,r6
	cmp/ge r14,r6
	bf loc_8c1ab81c
	mov 0x39,r2
	cmp/gt r2,r6
	bf loc_8c1ab7c4

loc_8c1ab81c:
	mov r5,r0
	nop 
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1ab826:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l @(0xD0,PC),r0
	sts.l pr,@-r15
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x04,r0
	bf.s loc_8c1ab896
	mov r4,r14
	mov.l @(0xC4,PC),r2
	mov 0x00,r12
	jsr @r2
	mov r12,r13
	mov.l @(0xC4,PC),r10
	mov.l @(0xC0,PC),r9
	bra loc_8c1ab874
	mov 0x01,r11

loc_8c1ab850:
	extu.b r13,r0
	cmp/eq 0x01,r0
	bf loc_8c1ab862
	mov.b @r14,r0
	extu.b r0,r0
	cmp/eq 0x5D,r0
	bf loc_8c1ab872
	bra loc_8c1ab872
	mov r12,r13

loc_8c1ab862:
	mov.b @r14,r0
	extu.b r0,r0
	cmp/eq 0x5B,r0
	bf loc_8c1ab86e
	bra loc_8c1ab872
	mov r11,r13

loc_8c1ab86e:
	jsr @r9
	mov.b @r14,r4

loc_8c1ab872:
	add 0x01,r14

loc_8c1ab874:
	mov.b @r10,r3
	mov.b @r14,r4
	extu.b r3,r3
	extu.b r4,r4
	cmp/eq r3,r4
	bt loc_8c1ab884
	tst r4,r4
	bf loc_8c1ab850

loc_8c1ab884:
	lds.l @r15+,pr
	mov.l @(0x80,PC),r2
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14
 
loc_8c1ab896:
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

loc_8c1AB8A6:
	bra loc_8c1AB8AA
	nop

loc_8c1ab8aa:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov 0x08,r12
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C1AB914,pc),r13
	mov.l @(loc_8C1AB918,pc),r14
	mov.b @(0x06,r14),r0
	extu.b r0,r0
	tst r12,r0
	bt loc_8c1ab98e
	mov.l @(loc_8C1AB920,pc),r3
	mov.l @(loc_8C1AB91C,pc),r5
	mov.b @r3,r2
	extu.b r2,r2
	tst r12,r2
	bf/s loc_8c1ab8da
	mov 0x06,r11
	mov r5,r0
	nop
	mov 0x02,r2
	add 0x2D,r0
	mov.b r2,@r0

loc_8c1ab8da:
	mov.b @(0x03,r14),r0
	extu.b r0,r0
	tst 0x40,r0
	bt loc_8c1ab928
	mov.l @(loc_8C1AB924,pc),r2
	mov 0x05,r3
	mov.b r11,@r2
	mov.b r3,@r13
	mov.b @(0x05,r14),r0
	extu.b r0,r0
	tst 0x04,r0
	bt loc_8c1ab9b6
	mov r14,r4
	add 0x05,r4
	mov.b @r4,r0
	and 0xFB,r0
	mov.b r0,@r4
	mov.b @r4,r0
	and 0xFE,r0
	bra loc_8c1ab9b6
	mov.b r0,@r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1ab904:
	#data 0x8C34AF5E
loc_8c1ab908:
	#data loc_8c1aD098
loc_8c1ab90c:
	#data loc_8c1aEC3A
loc_8c1ab910:
	#data 0x8C34AF53
loc_8C1AB914:
	#data 0x8C34AFA8
loc_8C1AB918:
	#data 0x8C34B288
loc_8C1AB91C:
	#data 0x8C34AF50
loc_8C1AB920:
	#data 0x8C34B2CA
loc_8C1AB924:
	#data 0x8C34B0A3

;==============================================
loc_8c1ab928:
	mov r14,r3
	mov.w @(loc_8C1ABA24,pc),r4
	add 0x1B,r3
	mov.b @r3,r2
	extu.b r2,r2
	tst r4,r2
	bf loc_8c1ab944
	mov r14,r0
	nop
	add 0x1D,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x20,r0
	bt loc_8c1ab95c

loc_8c1ab944:
	mov.l @(loc_8c1aba2c,pc),r2
	mov 0x01,r3
	mov.b r3,@r2
	mov.w @(loc_8C1ABA26,pc),r3
	mov.l @(loc_8C1ABA30,pc),r1
	mov.b r3,@r1
	mov.l @(loc_8c1aba34,pc),r3
	jsr @r3
	nop
	mov.l @(loc_8C1ABA38,pc),r2
	bra loc_8c1ab98a
	mov.b r11,@r2

loc_8c1ab95c:
	add 0x15,r5
	mov.b @r5,r2
	extu.b r2,r2
	tst r4,r2
	bt loc_8c1ab980
	mov.l @(loc_8c1aba3c,pc),r2
	mov.w @(loc_8C1ABA28,pc),r4
	jsr @r2
	mov 0x00,r5
	mov.b @(0x01,r14),r0
	mov.l @(loc_8C1ABA40,pc),r4
	or 0x40,r0
	mov.l @(loc_8c1aba44,pc),r3
	mov.w @(loc_8C1ABA28,pc),r5
	jsr @r3
	mov.b r0,@(0x01,r14)
	bra loc_8c1ab98a
	nop

loc_8c1ab980:
	mov.l @(loc_8c1aba48,pc),r2
	jsr @r2
	nop
	mov.l @(loc_8C1ABA38,pc),r3
	mov.b r12,@r3

loc_8c1ab98a:
	bra loc_8c1ab9b6
	mov.b r11,@r13

loc_8c1ab98e:
	mov.l @(loc_8c1aba4c,pc),r3
	jsr @r3
	nop
	mov.b @(0x05,r14),r0
	extu.b r0,r0
	tst 0x04,r0
	bt loc_8c1ab9b2
	mov r14,r4
	add 0x05,r4
	mov.b @r4,r0
	and 0xFB,r0
	mov.b r0,@r4
	mov.b @r4,r0
	and 0xFE,r0
	mov.b r0,@r4
	mov 0x01,r2
	bra loc_8c1ab9b6
	mov.b r2,@r13

loc_8c1ab9b2:
	mov 0x00,r1
	mov.b r1,@r13

loc_8c1ab9b6:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

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

;==============================================
loc_8c1ABA20:
	bra loc_8c1ABA58
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1aba24:
	#data 0x0080
loc_8c1aba26:
	#data 0x00FF
loc_8c1aba28:
	#data 0x0190
	#align4

loc_8c1ABA2C:
	#data 0x8C34B2E3
loc_8c1aba30:
	#data 0x8C34B301
loc_8c1ABA34:
	#data bank1b.loc_8c1b374E
loc_8c1aba38:
	#data 0x8C34B11C
loc_8c1ABA3C:
	#data bank1b.loc_8c1b6660
loc_8c1aba40:
	#data 0x8C34AFA0
loc_8c1ABA44:
	#data bank1b.loc_8c1b3EEC
loc_8c1ABA48:
	#data bank19.loc_8c19F21E
loc_8c1ABA4C:
	#data loc_8c1AFA18
loc_8c1ABA50:
	#data 0x8C34B288
loc_8c1ABA54:
	#data 0x8C34AFA8

;==============================================
loc_8c1aba58:
	sts.l pr,@-r15
	mov.l @(loc_8C1ABB3C,pc),r4
	mov.b @(0x06,r4),r0
	extu.b r0,r0
	tst 0x08,r0
	bf loc_8c1ababa
	mov.b @(0x09,r4),r0
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c1aba7e
	mov.l @(loc_8C1ABB40,pc),r3
	mov.w @(loc_8C1ABB3A,pc),r0
	mov.l @r3,r5
	mov.l @(loc_8c1abb44,pc),r2
	mov.l @r3,r4
	mov.b @(r0,r5),r5
	add 0xFF,r0
	jsr @r2
	mov.b @(r0,r4),r4

loc_8c1aba7e:
	mov.l @(loc_8C1ABB48,pc),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x0C,r0
	bt loc_8c1aba8e
	mov.l @(loc_8c1abb4c,pc),r2
	jsr @r2
	nop

loc_8c1aba8e:
	mov.l @(loc_8C1ABB50,pc),r3
	mov.b @r3,r0
	or 0x80,r0
	mov.b r0,@r3
	mov.l @(loc_8c1abb54,pc),r2
	jsr @r2
	mov 0x00,r4
	mov.l @(loc_8c1abb58,pc),r3
	jsr @r3
	nop
	mov.l @(loc_8C1ABB5C,pc),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x01,r0
	bt/s loc_8c1abab2
	lds.l @r15+,pr
	bra loc_8c1abab4
	mov 0x00,r4

loc_8c1abab2:
	mov 0x01,r4

loc_8c1abab4:
	mov.l @(loc_8c1abb60,pc),r2
	jmp @r2
	nop

loc_8c1ababa:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1abac0:
	mov.l r14,@-r15
	extu.b r4,r0
	mov.l r13,@-r15
	cmp/eq 0x00,r0
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.l @(0x94,PC),r14
	mov.l @(0x8C,PC),r13
	add 0xD4,r15
	mov r15,r10
	bt.s loc_8c1abb1a
	add 0x20,r10
	cmp/eq 0x01,r0
	bt loc_8c1abb2a
	cmp/eq 0x02,r0
	bt loc_8c1abba6
	cmp/eq 0x03,r0
	bt loc_8c1abbb8
	cmp/eq 0x04,r0
	bt loc_8c1abbc8
	cmp/eq 0x05,r0
	bf loc_8c1abaf6
	bra loc_8c1abc14
	nop 

loc_8c1abaf6:
	cmp/eq 0x06,r0
	bf loc_8c1abafe
	bra loc_8c1abc76
	nop 

loc_8c1abafe:
	cmp/eq 0x07,r0
	bf loc_8c1abb06
	bra loc_8c1abc44
	nop 

loc_8c1abb06:
	cmp/eq 0x08,r0
	bf loc_8c1abb0e
	bra loc_8c1abc52
	nop 

loc_8c1abb0e:
	cmp/eq 0x09,r0
	bf loc_8c1abb16
	bra loc_8c1abc66
	nop 

loc_8c1abb16:
	bra loc_8c1abc70
	nop 

loc_8c1abb1a:
	mov.l @(0x50,PC),r3
	jsr @r3
	nop 
	mov.l @(0x4C,PC),r4
	jsr @r14
	nop 
	bra loc_8c1abc3a
	nop 

loc_8c1abb2a:
	mov.l @(0x48,PC),r2
	mov r15,r12
	mov 0x00,r11
	jsr @r2
	mov r12,r4
	mov.l @(0x40,PC),r9
	bra loc_8c1abb88
	mov r11,r13

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1ABB3A:
	#data 0x0089
	#align4

loc_8C1ABB3C:
	#data 0x8C34B288
loc_8C1ABB40:
	#data 0x8C34B1F8
loc_8c1abb44:
	#data bank19.loc_8c19a910
loc_8C1ABB48:
	#data 0x8C34AF66
loc_8c1abb4c:
	#data loc_8c1aff72
loc_8C1ABB50:
	#data 0x8C34B291
loc_8c1abb54:
	#data bank19.loc_8c19fe46
loc_8c1abb58:
	#data bank19.loc_8c19d24c
loc_8C1ABB5C:
	#data 0x8C34AF65
loc_8c1abb60:
	#data bank19.loc_8c19fe58
loc_8c1abb64:
	#data loc_8c1aEE08
loc_8c1abb68:
	#data loc_8c1aECDC
loc_8c1abb6c:
	#data loc_8c1aD098
loc_8c1abb70:
	#data bank1c.loc_8C1C6D6C
loc_8c1abb74:
	#data bank1b.loc_8C1B8B5C
loc_8c1abb78:
	#data bank12.loc_8C1297C4

;==============================================
loc_8c1abb7C:
	mov r13,r0
	nop 
	mov.b @(r0,r12),r3
	add 0x01,r13
	extu.b r3,r3
	add r3,r11

loc_8c1abb88:
	jsr @r9
	mov r12,r4
	cmp/hs r0,r13
	bf loc_8c1abb7c
	mov.l @(0x1EC,PC),r3
	jsr @r3
	nop 
	mov.l @(0x1EC,PC),r2
	mov 0x0A,r5
	mov r10,r7
	mov 0x03,r6
	jsr @r2
	extu.w r11,r4
	bra loc_8c1abc36
	nop 

loc_8c1abba6:
	mov.l @(0x1D8,PC),r2
	jsr @r2
	nop 
	mov.l @(0x1D8,PC),r3
	mov 0x00,r5
	jsr @r3
	mov r5,r4
	bra loc_8c1abc3a
	nop 

loc_8c1abbb8:
	mov.l @(0x1C4,PC),r2
	jsr @r2
	nop 
	mov.l @(0x1CC,PC),r4
	jsr @r14
	nop 
	bra loc_8c1abc3a
	nop 

loc_8c1abbc8:
	mov.l @(0x1B4,PC),r2
	jsr @r2
	nop 
	mov.l @(0x1C0,PC),r4
	jsr @r14
	nop 
	mov.l @(0x1A8,PC),r3
	jsr @r3
	nop 
	mov.l @(0x1A4,PC),r2
	jsr @r2
	nop 
	mov.l @(0x1B0,PC),r4
	jsr @r14
	nop 
	mov.l @(0x198,PC),r3
	jsr @r3
	nop 
	mov.l @(0x190,PC),r2
	jsr @r2
	nop 
	mov.l @(0x1A4,PC),r4
	jsr @r14
	nop 
	mov.l @(0x184,PC),r3
	jsr @r3
	nop 
	mov.l @(0x180,PC),r2
	jsr @r2
	nop 
	mov.l @(0x194,PC),r4
	jsr @r14
	nop 
	mov.l @(0x174,PC),r3
	jsr @r3
	nop 
	bra loc_8c1abc3a
	nop 

loc_8c1abc14:
	mov.l @(0x168,PC),r2
	jsr @r2
	nop 
	mov.l @(0x184,PC),r3
	jsr @r3
	nop 
	jsr @r14
	mov r0,r4
	mov.l @(0x17C,PC),r2
	jsr @r2
	nop 
	mov.l @(0x158,PC),r3
	mov 0x04,r6
	extu.w r0,r4
	mov 0x10,r5
	jsr @r3
	mov r10,r7

loc_8c1abc36:
	jsr @r14
	mov r10,r4

loc_8c1abc3a:
	mov.l @(0x144,PC),r2
	jsr @r2
	nop 
	bra loc_8c1abc76
	nop 

loc_8c1abc44:
	jsr @r13
	nop 
	mov.l @(0x15C,PC),r3
	jsr @r3
	nop 
	bra loc_8c1abc5a
	mov r0,r4

loc_8c1abc52:
	jsr @r13
	nop 
	mov.l @(0x154,PC),r3
	mov.l @r3,r4

loc_8c1abc5a:
	jsr @r14
	nop 
	jsr @r13
	nop 
	bra loc_8c1abc76
	nop 

loc_8c1abc66:
	mov.l @(0x148,PC),r3
	jsr @r3
	nop 
	bra loc_8c1abc76
	nop 

loc_8c1abc70:
	mov.l @(0x140,PC),r2
	mov 0x02,r3
	mov.b r3,@r2

loc_8c1abc76:
	add 0x2C,r15
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1abc88:
	mov 0x03,r3
	mov.l r14,@-r15
	extu.b r4,r5
	cmp/gt r3,r5
	bf loc_8c1abc9a
	mov.l @(0x120,PC),r2
	mov 0x02,r1
	bra loc_8c1abcb4
	mov.b r1,@r2

loc_8c1abc9a:
	tst r5,r5
	bf loc_8c1abca0
	add 0x01,r4

loc_8c1abca0:
	mov.l @(0x114,PC),r14
	mov.b @r14,r0
	and 0xFC,r0
	add r4,r0
	mov.b r0,@r14
	mov.b @r14,r0
	and 0x0C,r0
	mov r0,r4
	bra loc_8c1abcdc
	mov.l @r15+,r14

loc_8c1abcb4:
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1abcb8:
	mov 0x03,r3
	extu.b r4,r5
	cmp/gt r3,r5
	bf loc_8c1abcc8
	mov.l @(0xF0,PC),r2
	mov 0x02,r1
	bra loc_8c1abcd8
	mov.b r1,@r2

loc_8c1abcc8:
	mov r5,r4
	mov.l @(0xEC,PC),r5
	shll2 r4
	mov.b @r5,r0
	and 0xF3,r0
	add r4,r0
	bra loc_8c1abcdc
	mov.b r0,@r5

loc_8c1abcd8:
	rts 
	nop 

;==============================================
loc_8c1abcdc:
	mov.l @(0xDC,PC),r5
	mov.b @(0x9,r5),r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c1abd14
	mov r5,r6
	add 0x06,r6
	mov 0x08,r7
	mov.b @r6,r2
	extu.b r2,r2
	tst r7,r2
	bt loc_8c1abcfa
	extu.b r4,r0
	cmp/eq 0x08,r0
	bt loc_8c1abd08

loc_8c1abcfa:
	mov.b @r6,r2
	extu.b r2,r2
	tst r7,r2
	bf loc_8c1abd0e
	extu.b r4,r1
	tst r1,r1
	bt loc_8c1abd0e

loc_8c1abd08:
	mov.l @(0xB4,PC),r3
	jmp @r3
	nop 

loc_8c1abd0e:
	mov.l @(0xB4,PC),r3
	jmp @r3
	mov 0x00,r4

loc_8c1abd14:
	rts 
	nop 

;==============================================
loc_8c1abd18:
	bra loc_8c1abd1c
	nop 

;==============================================
loc_8c1abd1c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x98,PC),r5
	mov.l @(0x90,PC),r14
	mov.b @(0xC,r5),r0
	extu.b r0,r0
	tst 0x01,r0
	bf.s loc_8c1abd7a
	mov 0x02,r6
	mov r5,r0
	nop 
	add 0x10,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c1abd42
	mov.l @(0x88,PC),r2
	bra loc_8c1abe02
	mov.b r6,@r2

loc_8c1abd42:
	mov.b @(0x6,r5),r0
	extu.b r0,r0
	tst 0x08,r0
	bf loc_8c1abd50
	mov 0x03,r2
	bra loc_8c1abe06
	mov.b r2,@r14

loc_8c1abd50:
	extu.b r4,r4
	tst r4,r4
	bt loc_8c1abdd4
	mov.l @(0x74,PC),r2
	mov.b @r2,r3
	extu.b r3,r3
	cmp/ge r6,r3
	bf loc_8c1abd7a
	mov.b @(0x3,r5),r0
	extu.b r0,r0
	tst 0x40,r0
	bf loc_8c1abd7a
	mov.b @(0x3,r5),r0
	extu.b r0,r0
	tst 0x40,r0
	bt.s loc_8c1abd74
	mov 0x04,r2
	mov.b r6,@r14

loc_8c1abd74:
	mov.l @(0x58,PC),r3
	bra loc_8c1abe02
	mov.b r2,@r3

loc_8c1abd7a:
	bra loc_8c1abe06
	mov.b r6,@r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1abd80:
	#data loc_8c1aD098
loc_8c1abd84:
	#data loc_8c1aF1A4
loc_8c1abd88:
	#data loc_8c1aED24
loc_8c1abd8c:
	#data bank1c.loc_8c1c6D70
loc_8c1abd90:
	#data bank1c.loc_8c1c6D90
loc_8c1abd94:
	#data bank1c.loc_8c1c6DA4
loc_8c1abd98:
	#data bank1c.loc_8c1c6DB0
loc_8c1abd9c:
	#data bank1c.loc_8c1c6DC4
loc_8c1abda0:
	#data loc_8c1a0038
loc_8c1abda4:
	#data bank19.loc_8c19F33C
loc_8c1abda8:
	#data loc_8c1a0032
loc_8c1abdac:
	#data 0x8C34B1F8
loc_8c1abdb0:
	#data bank1b.loc_8c1b89F8
loc_8c1abdb4:
	#data 0x8C34AFA8
loc_8c1abdb8:
	#data 0x8C34AF66
loc_8c1abdbc:
	#data 0x8C34B288
loc_8c1abdc0:
	#data loc_8c1aFF72
loc_8c1abdc4:
	#data bank19.loc_8c19FEEC
loc_8c1abdc8:
	#data 0x8C34B11C
loc_8c1abdcc:
	#data 0x8C34B0FE
loc_8c1abdd0:
	#data 0x8C34B0B0

;==============================================
loc_8c1abdd4:

	mov.l @(0x230,PC),r2
	jsr @r2
	nop 
	mov.l @(0x230,PC),r3
	jsr @r3
	nop 
	mov.l @(0x22C,PC),r2
	jsr @r2
	nop 
	mov.l @(0x22C,PC),r3
	jsr @r3
	nop 
	mov.l @(0x228,PC),r2
	jsr @r2
	nop 
	mov.l @(0x228,PC),r3
	mov.b @r3,r0
	and 0xFE,r0
	mov.b r0,@r3
	mov.l @(0x224,PC),r2
	mov.l @(0x224,PC),r0
	mov.b @r2,r1
	mov.b r1,@r0

loc_8c1abe02:
	mov 0x05,r3
	mov.b r3,@r14

loc_8c1abe06:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
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

loc_8c1abfb6:
	mov r13,r0
	nop
	cmp/eq 0x17,r0
	bf loc_8c1abfca
	mov.l @(loc_8C1AC07C,pc),r0
	mov.b @r0,r0
	extu.b r0,r0
	xor r14,r0
	tst 0x0E,r0
	bf loc_8c1abfde

loc_8c1abfca:
	mov r13,r0
	nop
	cmp/eq 0x27,r0
	bf loc_8c1ac0ca
	mov.l @(loc_8C1AC080,pc),r0
	mov.b @r0,r0
	extu.b r0,r0
	xor r14,r0
	tst 0x0C,r0
	bt loc_8c1ac0ca

loc_8c1abfde:
	mov.b @r15,r2
	mov.b r2,@r10
	mov r12,r0
	nop
	add 0x27,r0
	mov.b @r0,r0
	extu.b r0,r0
	and 0x0C,r0
	cmp/eq 0x0C,r0
	bf loc_8c1abff6
	bra loc_8c1ac0a0
	mov 0x0A,r4

loc_8c1abff6:
	mov r12,r4
	add 0x27,r4
	mov.b @r4,r0
	extu.b r0,r0
	tst 0x04,r0
	bt loc_8c1ac084
	bra loc_8c1ac0a0
	mov r5,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c1ac008:
	#data bank1b.loc_8c1b4F12
loc_8c1ac00c:
	#data loc_8c1aF31A
loc_8c1ac010:
	#data bank1b.loc_8c1b398A
loc_8c1ac014:
	#data loc_8c1aF914
loc_8c1ac018:
	#data loc_8c1aF91A
loc_8c1ac01c:
	#data 0x8C34B28F
loc_8c1ac020:
	#data 0x8C34AF53
loc_8c1ac024:
	#data 0x8C34B036
loc_8c1ac028:
	#data 0x8C34AF50
loc_8c1ac02c:
	#data loc_8c1aDE36
loc_8c1ac030:
	#data loc_8c1aEE08
loc_8c1ac034:
	#data bank1c.loc_8c1c9D88
loc_8c1ac038:
	#data loc_8c1aF1A4
loc_8c1ac03c:
	#data loc_8c1aECDC
loc_8c1ac040:
	#data loc_8c1aDE6A
loc_8c1ac044:
	#data 0x8C34AFA9
loc_8c1ac048:
	#data loc_8c1aDDEC
loc_8c1ac04c:
	#data bank1c.loc_8c1c6B50
loc_8c1ac050:
	#data bank1c.loc_8c1c6BA0
loc_8c1ac054:
	#data 0x8C34B288
loc_8c1ac058:
	#data 0x8C34AF6B
loc_8c1ac05c:
	#data loc_8c1a11E0
loc_8c1ac060:
	#data 0x8C34B298
loc_8c1ac064:
	#data 0x8C34AF65
loc_8c1ac068:
	#data 0x8C34B140
loc_8c1ac06c:
	#data 0x8C34AF64
loc_8c1ac070:
	#data loc_8c1a0E86
loc_8c1ac074:
	#data 0x8C34B141
loc_8c1ac078:
	#data bank19.loc_8c198A10
loc_8C1AC07C:
	#data 0x8C34AF67
loc_8C1AC080:
	#data 0x8C34AF77

;==============================================
loc_8c1ac084:
	mov.b @r4,r3
	extu.b r3,r3
	tst r5,r3
	bt loc_8c1ac090
	bra loc_8c1ac0a0
	mov 0x09,r4

loc_8c1ac090:
	mov r12,r0
	nop
	add 0x17,r0
	mov.b @r0,r0
	mov 0x0E,r4
	extu.b r0,r0
	and r0,r4
	shar r4

loc_8c1ac0a0:
	mov.l @(loc_8c1ac160,pc),r0
	extu.b r4,r4
	mov r12,r2
	add 0x14,r2
	mov.b @(r0,r4),r3
	mov.b r3,@r9
	mov.b @r9,r3
	mov.b r3,@r2
	mov r12,r0
	nop
	add 0x17,r0
	mov.l @(loc_8c1ac164,pc),r1
	mov.b @r0,r0
	mov 0xFC,r3
	extu.b r0,r0
	and 0x30,r0
	shad r3, r0
	mov.l @(loc_8C1AC168,pc),r3
	mov.b @(r0,r1),r2
	bra loc_8c1ac1b8
	mov.b r2,@r3

loc_8c1ac0ca:
	mov r13,r0
	nop
	cmp/eq 0x03,r0
	bf loc_8c1ac0e6
	mov.l @(loc_8C1AC16C,pc),r2
	mov.b @r2,r3
	extu.b r3,r3
	cmp/eq r3,r14
	bt loc_8c1ac1b0
	mov.l @(loc_8C1AC170,pc),r3
	mov.b @r3,r1
	extu.b r1,r1
	cmp/eq r1,r14
	bt loc_8c1ac1b0

loc_8c1ac0e6:
	mov r13,r0
	nop
	cmp/eq 0x04,r0
	bf loc_8c1ac102
	mov.l @(loc_8C1AC174,pc),r2
	mov.b @r2,r3
	extu.b r3,r3
	cmp/eq r3,r14
	bt loc_8c1ac1b0
	mov.l @(loc_8C1AC170,pc),r3
	mov.b @r3,r1
	extu.b r1,r1
	cmp/eq r1,r14
	bt loc_8c1ac1b0

loc_8c1ac102:
	mov r13,r0
	nop
	cmp/eq 0x05,r0
	bf loc_8c1ac11e
	mov.l @(loc_8C1AC174,pc),r2
	mov.b @r2,r3
	extu.b r3,r3
	cmp/eq r3,r14
	bt loc_8c1ac1b0
	mov.l @(loc_8C1AC16C,pc),r3
	mov.b @r3,r1
	extu.b r1,r1
	cmp/eq r1,r14
	bt loc_8c1ac1b0

loc_8c1ac11e:
	tst r13,r13
	bf loc_8c1ac17c
	mov r14,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c1ac13c
	mov.l @(loc_8C1AC178,pc),r3
	mov.w @(loc_8C1AC15A,pc),r1
	mov.l @r3,r0
	mov.w @(r0,r1),r0
	extu.w r0,r0
	tst 0x01,r0
	bt loc_8c1ac13c
	mov 0x02,r3
	mov.b r3,@r15

loc_8c1ac13c:
	mov.b @r15,r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c1ac1b8
	mov.l @(loc_8C1AC178,pc),r3
	mov.w @(loc_8C1AC15A,pc),r0
	mov.l @r3,r2
	mov.w @(r0,r2),r1
	mov.w @(loc_8C1AC15C,pc),r2
	extu.w r1,r1
	tst r2,r1
	bt loc_8c1ac1b8
	mov 0x03,r0
	bra loc_8c1ac1b8
	mov.b r0,@r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1AC15A:
	#data 0x00B2
loc_8C1AC15C:
	#data 0x2000
	#align4

loc_8c1ac160:
	#data bank1c.loc_8c1c6d40
loc_8c1ac164:
	#data bank1c.loc_8c1c7e6d
loc_8C1AC168:
	#data 0x8C34B141
loc_8C1AC16C:
	#data 0x8C34AF54
loc_8C1AC170:
	#data 0x8C34AF55
loc_8C1AC174:
	#data 0x8C34AF53
loc_8C1AC178:
	#data 0x8C34B1F8

;==============================================
loc_8c1ac17c:
	mov r13,r0
	nop
	cmp/eq 0x23,r0
	bf loc_8c1ac192
	mov.l @(loc_8C1AC274,pc),r3
	mov.w @(loc_8C1AC26E,pc),r1
	mov.l @r3,r0
	mov.w @(r0,r1),r0
	extu.w r0,r0
	tst 0x80,r0
	bt loc_8c1ac1b0

loc_8c1ac192:
	mov r13,r0
	nop
	cmp/eq 0x38,r0
	bf loc_8c1ac1b8
	mov.l @(loc_8c1ac278,pc),r3
	jsr @r3
	mov.b @r15,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1ac1b0
	mov.l @(loc_8c1ac27c,pc),r3
	jsr @r3
	mov.b @r15,r4
	bra loc_8c1ac1ea
	nop

loc_8c1AC1B0:
	mov.l @(loc_8c1AC280,pc),r2 ; r2 set to 0x8C34AFA8
	mov 0x02,r3 ; r3 set to 0x02
	bra loc_8c1AC1EA
	mov.b r3,@r2

loc_8c1ac1b8:
	mov.l @(loc_8c1ac284,pc),r3
	mov r15,r5
	jsr @r3
	mov r11,r4
	mov.b @r15,r2
	mov 0x04,r0
	mov.b r2,@r10
	mov.l @(loc_8C1AC288,pc),r3
	mov.b r11,@r3
	mov.b @(r0,r12),r0
	mov.l @(loc_8C1AC28C,pc),r2
	mov.l @(loc_8c1ac290,pc),r3
	and 0x7F,r0
	jsr @r3
	mov.b r0,@r2
	mov r12,r0
	nop
	add 0x31,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x40,r0
	bt loc_8c1ac1ea
	mov.b @(0x0E,r12),r0
	or 0x04,r0
	mov.b r0,@(0x0E,r12)

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

;==============================================
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

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV	
loc_8c1ac26e:
	#data 0x00B0
loc_8c1AC270:
	#data 0x0080
	#align4

loc_8c1ac274:
	#data 0x8C34B1F8
loc_8c1AC278:
	#data bank1b.loc_8c1b04EE
loc_8c1AC27C:
	#data bank1b.loc_8c1b8902
loc_8c1AC280:
	#data 0x8C34AFA8
loc_8c1AC284:
	#data bank1b.loc_8c1b050A
loc_8c1ac288:
	#data 0x8C34AFA9
loc_8c1ac28c:
	#data 0x8C34B037
loc_8c1AC290:
	#data loc_8c1AF26C
loc_8c1AC294:
	#data 0x8C34AF65
loc_8c1AC298:
	#data bank19.loc_8c19FE58
loc_8c1AC29C:
	#data 0x8C34B288
loc_8c1AC2A0:
	#data 0x8C34AF45
loc_8c1AC2A4:
	#data 0x8C34B034
loc_8c1AC2A8:
	#data 0x8C34AFB3
loc_8c1AC2AC:
	#data bank1c.loc_8c1c9D88

;==============================================
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

;==============================================
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

loc_8c1ac3aa:
	mov 0x02,r3
	mov.b r3,@r7

loc_8c1AC3AE:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1ac3b6:
	mov.l @(loc_8C1AC458,pc),r5
	extu.b r4,r6
	tst r6,r6
	mov r5,r7
	bf/s loc_8c1ac3e8
	add 0x1F,r7
	mov.b @r7,r0
	mov r5,r6
	add 0x15,r6
	and 0xFB,r0
	mov.b r0,@r7
	mov 0x02,r2
	mov.b @r6,r0
	and 0xDF,r0
	mov.b r0,@r6
	mov.b @r6,r4
	extu.b r4,r4
	tst r4,r2
	bt loc_8c1ac3e2
	mov 0x18,r1
	tst r4,r1
	bf loc_8c1ac416

loc_8c1ac3e2:
	mov.l @(loc_8c1ac45c,pc),r2
	jmp @r2
	mov 0x00,r4

loc_8c1ac3e8:
	mov r6,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c1ac410
	mov.b @r7,r0
	mov r5,r3
	add 0x15,r3
	and 0xFB,r0
	mov.b r0,@r7
	mov.b @r3,r0
	or 0x20,r0
	mov.b r0,@r3
	mov.l @(loc_8C1AC460,pc),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x08,r0
	bf loc_8c1ac416
	mov.l @(loc_8c1ac45c,pc),r2
	jmp @r2
	mov 0x01,r4

loc_8c1ac410:
	mov.l @(loc_8c1ac42c,pc),r3
	mov 0x02,r2
	mov.b r2,@r3

loc_8c1ac416:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1ac41c:
	#data 0x8C34AFA0
loc_8c1ac420:
	#data bank1b.loc_8c1b3EEC
loc_8c1ac424:
	#data loc_8c1a10A2
loc_8c1ac428:
	#data 0x8C34AF44
loc_8c1ac42c:
	#data 0x8C34AFA8
loc_8c1ac430:
	#data 0x8C34AF45
loc_8c1ac434:
	#data bank19.loc_8c19FE5C
loc_8c1ac438:
	#data loc_8c1aEE90
loc_8c1ac43c:
	#data bank1b.loc_8c1bFAAC
loc_8c1ac440:
	#data bank1b.loc_8c1b3DE0
loc_8c1ac444:
	#data loc_8c1aFE8A
loc_8c1ac448:
	#data loc_8c1aDE6A
loc_8c1ac44c:
	#data bank1c.loc_8c1c9D88
loc_8c1ac450:
	#data loc_8c1aDDEC
loc_8c1ac454:
	#data 0x8C34AF66
loc_8C1AC458:
	#data 0x8C34AF50
loc_8c1ac45c:
	#data loc_8c1a122a
loc_8C1AC460:
	#data 0x8C34B28E

;==============================================
loc_8c1ac464:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov 0x03,r3
	extu.b r14,r4
	cmp/gt r3,r4
	bt.s loc_8c1ac4bc
	mov 0x02,r5
	cmp/ge r5,r4
	bt loc_8c1ac488
	mov.l @(0x8C,PC),r2
	mov.w @(0x86,PC),r1
	mov.l @r2,r0
	mov.w @(r0,r1),r0
	extu.w r0,r0
	tst 0x10,r0
	bt loc_8c1ac488
	mov r5,r14

loc_8c1ac488:
	mov.l @(0x80,PC),r4
	mov.b @r4,r0
	and 0xFB,r0
	mov.b r0,@r4
	mov.b @r4,r0
	mov.l @(0x7C,PC),r2
	and 0xF7,r0
	jsr @r2
	mov.b r0,@r4
	exts.b r0,r0
	tst r0,r0
	bf.s loc_8c1ac4aa
	extu.b r14,r2
	mov.l @(0x68,PC),r3
	mov.b @r3,r0
	or 0x08,r0
	mov.b r0,@r3

loc_8c1ac4aa:
	mov.l @(0x68,PC),r4
	mov r2,r14
	shll2 r14
	mov.b @r4,r0
	shll r14
	and 0xE7,r0
	add r14,r0
	bra loc_8c1ac4c0
	mov.b r0,@r4

loc_8c1ac4bc:
	mov.l @(0x58,PC),r2
	mov.b r5,@r2


loc_8c1ac4c0:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1AC504:
	#data 0x00B2
	#align4

loc_8c1AC508:
	#data 0x8C34B1F8
loc_8c1AC50c:
	#data 0x8C34B298
loc_8c1AC510:
	#data loc_8c1A11E0
loc_8c1AC514:
	#data 0x8C34AF65
loc_8c1AC518:
	#data 0x8C34AFA8
loc_8c1AC51C:
	#data 0x8C34B28E
loc_8c1AC520:
	#data bank1c.loc_8c1c6BF0
loc_8c1AC524:
	#data bank1c.loc_8c1c6C40
loc_8c1AC528:
	#data bank1c.loc_8c1c6C90

;==============================================
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

loc_8c1ac604:
	mov r14,r4
	add 0x15,r4
	mov.b @r4,r4
	extu.b r4,r4
	mov r4,r3
	tst r13,r3
	bt loc_8c1ac618
	mov 0x18,r1
	tst r4,r1
	bf loc_8c1ac61e

loc_8c1ac618:
	mov.l @(loc_8c1ac6e4,pc),r2
	jsr @r2
	mov 0x00,r4

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

loc_8c1ac638:
	mov.b @r5,r4
	extu.b r4,r4
	tst r4,r13
	bt loc_8c1ac646
	mov 0x18,r3
	tst r4,r3
	bf loc_8c1ac654

loc_8c1ac646:
	add 0x14,r15
	mov.l @(loc_8c1ac6e8,pc),r3
	lds.l @r15+,pr
	mov 0x00,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c1AC654:
	add 0x14,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1ac65e:
	mov.l r14,@-r15
	mov 0x07,r3
	sts.l pr,@-r15
	extu.b r4,r14
	mov.l @(loc_8C1AC6EC,pc),r7
	cmp/gt r3,r14
	bt/s loc_8c1ac684
	mov 0x02,r6
	mov.l @(loc_8C1AC6F0,pc),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x08,r0
	bf loc_8c1ac684
	mov 0x01,r5
	cmp/ge r5,r14
	bf loc_8c1ac68c
	mov 0x03,r3
	cmp/gt r3,r14
	bt loc_8c1ac68c

loc_8c1ac684:
	lds.l @r15+,pr
	mov.b r6,@r7
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1ac68c:
	mov.l @(loc_8C1AC6F4,pc),r1
	cmp/ge r5,r14
	bf loc_8c1ac6a6
	mov 0x03,r2
	cmp/gt r2,r14
	bt loc_8c1ac6a6
	mov.b @r1,r0
	mov 0x03,r2
	and r2,r4
	and 0xF4,r0
	or r4,r0
	bra loc_8c1ac704
	mov.b r0,@r1

loc_8c1ac6a6:
	mov.b @r1,r0
	and 0xFC,r0
	mov.b r0,@r1
	mov.l @(loc_8C1AC6F8,pc),r4
	mov r14,r0
	nop
	cmp/eq 0x00,r0
	bt loc_8c1ac6c2
	cmp/eq 0x04,r0
	bt loc_8c1ac6c6
	cmp/eq 0x07,r0
	bt loc_8c1ac6fc
	bra loc_8c1ac702
	nop

loc_8c1ac6c2:
	bra loc_8c1ac6fe
	mov 0x22,r2

loc_8c1ac6c6:
	mov 0x11,r1
	bra loc_8c1ac704
	mov.b r1,@r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1ac6cc:
	#data 0x8C34AF50
loc_8c1ac6d0:
	#data loc_8c1aF26C
loc_8c1ac6d4:
	#data 0x8C34B037
loc_8c1ac6d8:
	#data bank1b.loc_8c1b05D8
loc_8c1ac6dc:
	#data bank1c.loc_8c1c0480
loc_8c1ac6e0:
	#data loc_8c1a1208
loc_8c1ac6e4:
	#data loc_8c1a124C
loc_8c1ac6e8:
	#data loc_8c1a122A
loc_8C1AC6EC:
	#data 0x8C34AFA8
loc_8C1AC6F0:
	#data 0x8C34B28E
loc_8C1AC6F4:
	#data 0x8C34AF6B
loc_8C1AC6F8:
	#data 0x8C34AF74

;==============================================
loc_8c1ac6fc:
	mov.w @(loc_8C1AC7B0,pc),r2

loc_8c1ac6fe:
	bra loc_8c1ac704
	mov.b r2,@r4

loc_8c1ac702:
	mov.b r6,@r7

loc_8c1ac704:
	mov.l @(loc_8C1AC7B4,pc),r4
	mov.b @r4,r0
	and 0xFB,r0
	mov.b r0,@r4
	mov.b @r4,r0
	mov.l @(loc_8c1ac7b8,pc),r3
	and 0xF7,r0
	jsr @r3
	mov.b r0,@r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1ac724
	mov.l @(loc_8C1AC7B4,pc),r3
	mov.b @r3,r0
	or 0x08,r0
	mov.b r0,@r3

loc_8c1ac724:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
;unused?
loc_8c1ac72a:
	mov.l @(0x90,PC),r1
	extu.b r4,r5
	mov r5,r0
	nop 
	cmp/eq 0x01,r0
	bf loc_8c1ac74c
	mov.b @r1,r0
	or 0x40,r0
	mov.b r0,@r1
	mov.l @(0x80,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x08,r0
	bf loc_8c1ac766
	mov.l @(0x7C,PC),r2
	jmp @r2
	mov 0x01,r4

loc_8c1ac74c:
	tst r5,r5
	bf.s loc_8c1ac76c
	mov 0x02,r6
	mov.b @r1,r0
	and 0xBF,r0
	mov.b r0,@r1
	mov.b @r1,r4
	extu.b r4,r4
	tst r4,r6
	bt loc_8c1ac766
	mov 0x18,r2
	tst r4,r2
	bf loc_8c1ac770

loc_8c1ac766:
	mov.l @(0x5C,PC),r2
	jmp @r2
	mov 0x00,r4

loc_8c1ac76c:
	mov.l @(0x58,PC),r2
	mov.b r6,@r2

loc_8c1ac770:
	rts
	nop

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1ac7b0:
	#data 0x00AA
	#align4

loc_8c1ac7b4:
	#data 0x8C34B298
loc_8c1AC7B8:
	#data loc_8c1A11E0
loc_8c1AC7bc:
	#data 0x8C34AF65
loc_8c1AC7c0:
	#data 0x8C34B28E
loc_8c1AC7C4:
	#data loc_8c1A124C
loc_8c1AC7C8:
	#data 0x8C34AFA8
loc_8c1AC7CC:
	#data 0x8C34AF50

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1AC898:
	#data 0x0089
	#align4

loc_8c1AC89C:
	#data 0x8C34AFA8
loc_8c1AC8A0:
	#data 0x8C34B0A3
loc_8c1AC8A4:
	#data 0x8C34B288
loc_8c1AC8A8:
	#data 0x8C34B1F8
loc_8c1AC8AC:
	#data bank19.loc_8c19A910
loc_8c1AC8B0:
	#data bank1b.loc_8c1bEAF4
loc_8c1AC8B4:
	#data 0x8C34B2CC
loc_8c1AC8B8:
	#data 0x8C34B12C

;==============================================
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

loc_8c1ac8f0:
	mov 0x20,r2

loc_8c1ac8f2:
	mov 0x05,r3
	mov.b r2,@r12

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

loc_8c1ac946:
	mov r4,r0
	nop
	add 0x1D,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x20,r0
	bf loc_8c1ac96a
	mov r4,r0
	nop
	add 0x1B,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c1ac96a
	mov.b @(0x06,r4),r0
	extu.b r0,r0
	tst 0x08,r0
	bf loc_8c1ac96e

loc_8c1AC96A:
	bra loc_8c1AC9A6
	mov 0x02,r2

loc_8c1AC96E:
	mov 0x04,r2
	add 0x10,r5
	mov.b r2,@r5
	mov.l @(0x70,PC),r3
	jsr @r3
	mov 0x01,r4
	mov.b @(0xC,r13),r0
	or 0x01,r0
	mov.b r0,@(0xC,r13)
	mov.b @(0x3,r13),r0
	or 0x08,r0
	mov.b r0,@(0x3,r13)
	mov.l @(0x64,PC),r3
	jsr @r3
	mov 0x00,r4
	mov r12,r5
	add 0x12,r5
	mov.b @r5,r5
	mov 0x64,r3
	mov.l @(0x5C,PC),r2
	extu.b r5,r5
	mov.l @(0x54,PC),r4
	mulu.w r3,r5
	jsr @r2
	sts macl,r5
	mov 0x03,r3
	mov 0x01,r2
	mov.b r3,@r10

loc_8c1AC9A6:
	bra loc_8c1AC9C0
	mov.b r2,@r9

loc_8c1ac9aa:
	mov.b @(0x03,r4),r0
	extu.b r0,r0
	tst r11,r0
	bt loc_8c1ac9c0
	mov 0x06,r2
	mov.b r2,@r10

loc_8c1AC9B6:
	mov 0x05,r3 ; r3 set to 0x05
	bra loc_8c1AC9C0
	mov.b r3,@r9

loc_8c1ac9bc:
	mov 0x02,r1
	mov.b r1,@r9

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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1AC9D4:
	#data 0x8C34B0FE
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
loc_8c1AC9f0:
	#data 0x8C34AFA4
loc_8c1AC9F4:
	#data bank1b.loc_8c1b3EEC

;==============================================
;unused?
loc_8c1AC9F8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xDC,r15
	mov r4,r0
	nop 
	mov 0x00,r12
	mov.b r0,@(0x8,r15)
	mov.l @(0x148,PC),r3
	mov 0x01,r6
	mov.b r12,@r3
	mov.l @(0x144,PC),r14
	mov r14,r0
	nop 
	add 0x1B,r0
	mov.l r0,@(0xC,r15)
	mov 0x40,r5
	mov.b @r0,r0
	mov 0xFA,r2
	mov.l @(0x138,PC),r4
	extu.b r0,r0
	and r0,r5
	bsr loc_8c1acff0
	shad r2,r5
	mov r14,r9
	add 0x0E,r9
	mov.b @r9,r5
	mov 0x02,r10
	mov.l @(0x12C,PC),r4
	mov 0x01,r6
	extu.b r5,r5
	and r10,r5
	bsr loc_8c1acff0
	shar r5
	mov r14,r8
	add 0x16,r8
	mov.b @r8,r0
	mov 0x01,r6
	mov.l @(0x11C,PC),r4
	and 0x03,r0
	bsr loc_8c1acff0
	mov r0,r5
	mov.b @r8,r0
	mov 0x0C,r5
	mov.l @(0x114,PC),r4
	mov 0x01,r6
	extu.b r0,r0
	and r0,r5
	shar r5
	bsr loc_8c1acff0
	shar r5
	mov r14,r11
	add 0x18,r11
	mov.b @r11,r0
	mov 0x18,r5
	mov.l @(0x104,PC),r4
	mov 0x01,r6
	extu.b r0,r0
	and r0,r5
	mov.l @(0xF8,PC),r0
	shar r5
	shar r5
	shar r5
	bsr loc_8c1acff0
	mov.b @(r0,r5),r5
	mov.b @r9,r0
	mov 0x10,r5
	mov 0x04,r13
	extu.b r0,r0
	and r0,r5
	mov.l r0,@r15
	and r13,r0
	mov.l @(0xE8,PC),r4
	shar r5
	shar r5
	mov 0x01,r6
	shar r5
	shar r0
	shar r0
	bsr loc_8c1acff0
	add r0,r5
	mov.b @r9,r0
	mov 0x08,r5
	mov.l @(0xD4,PC),r4
	mov 0x01,r6
	extu.b r0,r0
	and r0,r5
	shar r5
	shar r5
	bsr loc_8c1acff0
	shar r5
	mov.b @r11,r0
	mov 0x60,r5
	mov.l @(0xC4,PC),r4
	mov 0x01,r6
	extu.b r0,r0
	mov 0xFB,r3
	and r0,r5
	bsr loc_8c1acff0
	shad r3,r5
	mov.b @r8,r0
	mov 0x70,r5
	mov 0xFC,r3
	mov.l @(0xB8,PC),r4
	extu.b r0,r0
	and r0,r5
	mov.l @(0xB0,PC),r0
	mov 0x01,r6
	shad r3,r5
	bsr loc_8c1acff0
	mov.b @(r0,r5),r5
	mov r14,r5
	add 0x15,r5
	mov.w @(0x72,PC),r9
	mov 0x01,r6
	mov.l r5,@r15
	mov 0xF9,r3
	mov.b @r5,r5
	mov.l @(0xA0,PC),r4
	extu.b r5,r5
	and r9,r5
	bsr loc_8c1acff0
	shad r3,r5
	mov.b @r11,r5
	mov 0x01,r6
	mov.l @(0x94,PC),r4
	mov 0xF9,r3
	extu.b r5,r5
	and r9,r5
	bsr loc_8c1acff0
	shad r3,r5
	mov.l @r15,r0
	mov 0x20,r5
	mov.l @(0x88,PC),r4
	mov 0x01,r6
	mov.b @r0,r0
	mov 0xFB,r3
	extu.b r0,r0
	and r0,r5
	bsr loc_8c1acff0
	shad r3,r5
	mov.l @r15,r0
	mov 0x18,r5
	mov.l @(0x78,PC),r4
	mov 0x01,r6
	mov.b @r0,r0
	extu.b r0,r0
	and r0,r5
	shar r5
	shar r5
	bsr loc_8c1acff0
	shar r5
	mov r14,r5
	add 0x27,r5
	mov.l r5,@(0x14,r15)
	mov 0xFB,r3
	mov.b @r5,r5
	mov 0x01,r6
	extu.b r5,r5
	mov.l r5,@(0x10,r15)
	and r9,r5
	mov.l @(0x10,r15),r0
	shad r3,r5
	mov.l @(0x58,PC),r4
	and 0x03,r0
	or r0,r5
	mov.l @(0x50,PC),r0
	bsr loc_8c1acff0
	mov.b @(r0,r5),r5
	mov 0x01,r6
	bra loc_8c1acba8
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1acb5a:
	#data 0x0080
	#align4

loc_8c1acb5c:
	#data 0x8C34AFB2
loc_8c1acb60:
	#data 0x8C34AF50
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

;==============================================
;unused?
loc_8c1ACBA8:
	mov r14,r0
	nop 
	add 0x17,r0
	mov.w @(0xFE,PC),r5
	mov.b @r0,r0
	mov 0xFA,r3
	mov.l @(0xFC,PC),r4
	extu.b r0,r0
	and r0,r5
	bsr loc_8c1acff0
	shad r3,r5
	mov.l @(0x14,r15),r0
	mov 0x30,r5
	mov.l @(0xF4,PC),r4
	mov 0x01,r6
	mov.b @r0,r0
	mov 0xFC,r3
	extu.b r0,r0
	and r0,r5
	bsr loc_8c1acff0
	shad r3,r5
	mov.l @r15,r0
	mov 0x01,r6
	mov.l @(0xE4,PC),r4
	mov.b @r0,r0
	and 0x01,r0
	bsr loc_8c1acff0
	mov r0,r5
	mov 0x01,r6
	mov r14,r0
	nop 
	add 0x31,r0
	mov.l @(0xD4,PC),r4
	mov.b @r0,r0
	and 0x1F,r0
	bsr loc_8c1acff0
	mov r0,r5
	mov.l @(0xC,r15),r5
	mov 0x01,r6
	mov.l @(0xCC,PC),r4
	mov.b @r5,r5
	extu.b r5,r5
	and r13,r5
	shar r5
	bsr loc_8c1acff0
	shar r5
	mov.b @r11,r0
	mov 0x01,r6
	mov.l @(0xBC,PC),r4
	and 0x01,r0
	bsr loc_8c1acff0
	mov r0,r5
	mov.b @r11,r5
	mov 0x01,r6
	mov.l @(0xB4,PC),r4
	extu.b r5,r5
	and r10,r5
	bsr loc_8c1acff0
	shar r5
	mov.b @r8,r5
	mov 0x01,r6
	mov.l @(0xAC,PC),r4
	mov 0xF9,r3
	extu.b r5,r5
	and r9,r5
	bsr loc_8c1acff0
	shad r3,r5
	mov.l @(0xC,r15),r0
	mov.l @(0xA0,PC),r8
	mov.b @r0,r0
	extu.b r0,r0
	and 0x03,r0
	cmp/pl r0
	bf.s loc_8c1acc4e
	mov r14,r11
	mov 0x01,r6
	mov r11,r0
	nop 
	add 0x1B,r0
	mov.b @r0,r0
	and 0x03,r0
	bra loc_8c1acc92
	mov r0,r5

loc_8c1acc4e:
	mov r11,r4
	add 0x24,r4
	mov.b @r4,r4
	extu.b r4,r4
	mov r4,r3
	tst r13,r3
	bt loc_8c1acc68
	mov 0x08,r1
	tst r4,r1
	bt loc_8c1acc68
	mov 0x01,r6
	bra loc_8c1acc7a
	mov 0x06,r5

loc_8c1acc68:
	mov r11,r0
	nop 
	add 0x24,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x08,r0
	bt loc_8c1acc82
	mov 0x07,r5
	mov 0x01,r6

loc_8c1acc7a:
	bsr loc_8c1acff0
	mov r8,r4
	bra loc_8c1acce0
	nop 

loc_8c1acc82:
	mov r11,r2
	add 0x24,r2
	mov.b @r2,r3
	extu.b r3,r3
	tst r13,r3
	bt loc_8c1acc9a
	mov 0x05,r5
	mov 0x01,r6

loc_8c1acc92:
	bsr loc_8c1acff0
	mov r8,r4
	bra loc_8c1acce0
	nop 

loc_8c1acc9a:
	mov r11,r0
	nop 
	add 0x24,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x01,r0
	bt.s loc_8c1accd8
	mov r8,r4
	mov 0x01,r6
	bra loc_8c1accdc
	mov 0x04,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1ACCB0:
	#data 0x00C0
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

;==============================================
;unused?
loc_8c1accd8:
	mov 0x00,r5
	mov 0x01,r6

loc_8c1accdc:
	bsr loc_8c1acff0
	nop 

loc_8c1acce0:
	mov r14,r5
	add 0x15,r5
	mov.l r5,@r15
	mov 0x01,r6
	mov.b @r5,r5
	mov.l @(0x1B4,PC),r4
	extu.b r5,r5
	and r13,r5
	shar r5
	bsr loc_8c1acff0
	shar r5
	mov.l @r15,r0
	mov 0x40,r5
	mov.l @(0x1A8,PC),r4
	mov 0x01,r6
	mov.b @r0,r0
	mov 0xFA,r3
	extu.b r0,r0
	and r0,r5
	bsr loc_8c1acff0
	shad r3,r5
	mov r14,r5
	add 0x18,r5
	mov.b @r5,r5
	mov 0x01,r6
	mov.l @(0x194,PC),r4
	extu.b r5,r5
	and r13,r5
	shar r5
	bsr loc_8c1acff0
	shar r5
	mov 0x01,r6
	mov r14,r0
	nop 
	add 0x1B,r0
	mov.l @(0x184,PC),r4
	mov.b @r0,r0
	mov 0x30,r5
	mov 0xFC,r3
	extu.b r0,r0
	and r0,r5
	bsr loc_8c1acff0
	shad r3,r5
	mov.b @(0x8,r15),r0
	tst r0,r0
	bt loc_8c1acd56
	mov.l @(0x170,PC),r3
	mov r15,r6
	mov 0x01,r5
	add 0x04,r6
	jsr @r3
	mov 0x04,r4
	mov.b @(0x4,r15),r0
	mov 0x01,r6
	and 0x0F,r0
	mov.b r0,@(0x4,r15)
	mov.l @(0x160,PC),r4
	bsr loc_8c1acff0
	mov r0,r5

loc_8c1acd56:
	mov r14,r11
	add 0x18,r11
	mov.b @r11,r5
	mov 0x01,r6
	mov.l @(0x158,PC),r4
	extu.b r5,r5
	and r13,r5
	shar r5
	bsr loc_8c1acff0
	shar r5
	mov.l @(0x150,PC),r4
	mov r14,r5
	mov 0x03,r6
	add 0x26,r5
	bsr loc_8c1acff0
	mov.b @r5,r5
	mov 0x01,r6
	mov r14,r0
	nop 
	add 0x1C,r0
	mov.l @(0x140,PC),r4
	mov.b @r0,r0
	and 0x03,r0
	bsr loc_8c1acff0
	mov r0,r5
	mov.b @r11,r5
	mov 0x03,r8
	mov.l @(0x134,PC),r0
	mov 0x01,r6
	mov.l @(0x134,PC),r4
	extu.b r5,r5
	and r8,r5
	bsr loc_8c1acff0
	mov.b @(r0,r5),r5
	mov.l @(0x130,PC),r4
	mov r14,r5
	mov r8,r6
	add 0x2E,r5
	bsr loc_8c1acff0
	mov.b @r5,r5
	mov 0x01,r6
	mov r14,r0
	nop 
	add 0x31,r0
	mov.l @(0x120,PC),r4
	mov.b @r0,r0
	mov 0x10,r5
	mov 0xFC,r3
	extu.b r0,r0
	and r0,r5
	bsr loc_8c1acff0
	shad r3,r5
	mov.b @r11,r3
	extu.b r3,r3
	tst r9,r3
	bt loc_8c1acdcc
	mov 0x01,r6
	bra loc_8c1acdd0
	mov 0x00,r5

loc_8c1acdcc:
	mov 0x01,r6
	mov r6,r5

loc_8c1acdd0:
	mov.l @(0x100,PC),r4
	bsr loc_8c1acff0
	nop 
	mov 0x01,r6
	mov r14,r0
	nop 
	add 0x27,r0
	mov.l @(0xFC,PC),r4
	mov.b @r0,r0
	mov 0x30,r5
	mov 0xFC,r3
	extu.b r0,r0
	and r0,r5
	mov.l @(0xEC,PC),r0
	shad r3,r5
	bsr loc_8c1acff0
	mov.b @(r0,r5),r5
	mov r14,r3
	add 0x1B,r3
	mov.b @r3,r2
	extu.b r2,r2
	and r8,r2
	cmp/pl r2
	bf loc_8c1ace0c
	mov.l @(0xDC,PC),r4
	mov 0x01,r6
	bsr loc_8c1acff0
	mov r6,r5
	bra loc_8c1ace24
	nop 

loc_8c1ace0c:
	mov 0x01,r6
	mov r14,r0
	nop 
	add 0x24,r0
	mov.l @(0xC8,PC),r4
	mov.b @r0,r0
	mov 0x0F,r5
	extu.b r0,r0
	and r0,r5
	mov.l @(0xC4,PC),r0
	bsr loc_8c1acff0
	mov.b @(r0,r5),r5

loc_8c1ace24:
	mov r14,r4
	add 0x18,r4
	mov.b @r4,r4
	mov 0x20,r3
	extu.b r4,r4
	tst r4,r3
	bf loc_8c1ace3e
	mov 0x40,r1
	tst r4,r1
	bt loc_8c1ace3e
	mov 0x01,r6
	bra loc_8c1ace42
	mov r6,r5

loc_8c1ace3e:
	mov 0x00,r5
	mov 0x01,r6

loc_8c1ace42:
	mov.l @(0xA4,PC),r4
	bsr loc_8c1acff0
	nop 
	mov.b @(0x8,r15),r0
	tst r0,r0
	bt loc_8c1ace5a
	mov.l @(0x9C,PC),r4
	mov r14,r5
	mov 0x03,r6
	add 0x38,r5
	bsr loc_8c1acff0
	mov.b @r5,r5

loc_8c1ace5a:
	bsr loc_8c1ad098
	nop 
	mov.l @(0x90,PC),r3
	mov.b r12,@r3
	mov.b @(0x8,r15),r0
	tst r0,r0
	bt loc_8c1ace6e
	mov.l @(0x88,PC),r13
	bra loc_8c1ace70
	nop 

loc_8c1ace6e:
	mov.l @(0x88,PC),r13

loc_8c1ace70:
	mov r15,r9
	bra loc_8c1acf22
	add 0x1C,r9

loc_8c1ace76:
	mov.b @r13,r2
	mov 0x64,r3
	extu.b r2,r2
	cmp/ge r3,r2
	bf loc_8c1ace84
	bra loc_8c1ace86
	mov r8,r11

loc_8c1ace84:
	mov r10,r11

loc_8c1ace86:
	mov.b @r13,r4
	mov r15,r7
	mov.l @(0x70,PC),r3
	mov 0x0A,r5
	add 0x18,r7
	mov r11,r6
	jsr @r3
	extu.b r4,r4
	mov r15,r5
	add 0x18,r5
	mov r9,r4
	bra loc_8c1acf02
	mov 0x53,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
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
loc_8c1ACEF0:
	#data 0x8C34AFB2
loc_8c1ACEF4:
	#data bank1c.loc_8c1c6D14
loc_8c1ACEF8:
	#data bank1c.loc_8c1c6D2C
loc_8c1ACEFC:
	#data loc_8c1AF1A4

;==============================================
;unused?
loc_8c1ACf00:
	mov.b @r5+,r3

loc_8c1acf02:
	extu.b r11,r2
	mov.b r3,@r4
	tst r2,r2
	add 0x01,r4
	bf.s loc_8c1acf00
	add 0xFF,r11
	mov 0x3D,r3
	mov.b r3,@r4
	add 0x01,r4
	mov.b r12,@r4
	mov 0x03,r6
	mov.b @r13+,r0
	extu.b r0,r0
	mov.b @(r0,r14),r5
	bsr loc_8c1acff0
	mov r9,r4

loc_8c1acf22:
	mov.b @r13,r2
	mov.w @(0xF4,PC),r3
	extu.b r2,r2
	cmp/eq r3,r2
	bf loc_8c1ace76
	add 0x24,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
;unused?
loc_8c1acf40:
	mov.l r14,@-r15
	mov 0x10,r0
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xE8,r15
	mov.b r4,@(r0,r15)
	mov r5,r0
	bsr loc_8c1ad098
	mov.b r0,@(0xC,r15)
	mov.l @(0xC4,PC),r4
	mov.l @(0xC0,PC),r12
	jsr @r12
	nop 
	bsr loc_8c1ad098
	nop 
	mov r15,r11
	mov.l @(0xC8,PC),r13
	mov.l @(0xC0,PC),r10
	mov 0x10,r0
	mov.l @(0xB4,PC),r8
	add 0x14,r11
	mov.l @(0xB4,PC),r9
	bra loc_8c1acfd2
	mov.b @(r0,r15),r14

loc_8c1acf7a:
	extu.b r14,r4
	mov r15,r6
	shll r4
	mov 0x02,r5
	jsr @r13
	add 0x0C,r4
	extu.b r14,r4
	mov r15,r6
	add 0x01,r4
	shll r4
	add 0x08,r6
	mov 0x02,r5
	jsr @r13
	add 0x0C,r4
	jsr @r12
	mov r9,r4
	mov 0x0A,r5
	mov r11,r7
	mov 0x01,r6
	jsr @r8
	extu.b r14,r4
	jsr @r12
	mov r11,r4
	mov.l @(0x8C,PC),r4
	jsr @r12
	nop 
	bra loc_8c1acfc8
	nop 

loc_8c1acfb2:
	mov.w @r15,r4
	mov r15,r6
	add 0x04,r6
	add 0x01,r4
	mov.w r4,@r15
	mov 0x01,r5
	jsr @r13
	add 0xFF,r4
	mov.b @(0x4,r15),r0
	jsr @r10
	mov r0,r4

loc_8c1acfc8::
	mov.w @(0x8,r15),r0
	mov.w @r15,r3
	cmp/hs r0,r3
	bf loc_8c1acfb2
	add 0x01,r14

loc_8c1acfd2:
	mov.b @(0xC,r15),r0
	extu.b r14,r3
	extu.b r0,r0
	cmp/gt r0,r3
	bf loc_8c1acf7a
	add 0x18,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9

loc_8c1acfe4:
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

loc_8c1acff0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xEC,r15
	mov r5,r0
	nop 
	mov 0x4A,r2
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov.l @(0x34,PC),r14
	mov.b @r14,r3
	extu.b r3,r3
	cmp/gt r2,r3
	bf.s loc_8c1ad016
	mov r4,r12
	mov 0x00,r1
	bsr loc_8c1ad098
	mov.b r1,@r14

loc_8c1ad016:
	mov.l @(0x18,PC),r13
	bra loc_8c1ad04a
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1AD01c:
	#data 0x00FF
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
loc_8c1AD03c:
	#data 0x8C34AFB2

;==============================================
loc_8c1ad040:
	jsr @r13
	mov.b @r12+,r4
	mov.b @r14,r3
	add 0x01,r3
	mov.b r3,@r14

loc_8c1ad04a:
	mov.b @r12,r2
	tst r2,r2
	bf loc_8c1ad040
	mov.b @(0x4,r15),r0
	mov r15,r7
	mov.b @r15,r6
	add 0x08,r7
	mov.l @(0xD4,PC),r3
	mov r0,r4
	mov 0x0A,r5
	jsr @r3
	extu.b r4,r4
	mov r15,r12
	bra loc_8c1ad072
	add 0x08,r12

loc_8c1ad068:
	jsr @r13
	mov.b @r12+,r4
	mov.b @r14,r3
	add 0x01,r3
	mov.b r3,@r14

loc_8c1ad072:
	mov.b @r12,r2
	tst r2,r2
	bf loc_8c1ad068
	mov.b @r14,r1
	mov 0x4A,r3
	extu.b r1,r1
	cmp/gt r3,r1
	bt loc_8c1ad08c
	jsr @r13
	mov 0x20,r4
	mov.b @r14,r3
	add 0x01,r3
	mov.b r3,@r14

loc_8c1ad08c:
	add 0x14,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
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

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1AD130:
	#data loc_8c1AF1A4
loc_8c1AD134:
	#data 0x8C34B036
loc_8c1AD138:
	#data loc_8c1AEC3A
loc_8c1AD13C:
	#data 0x8C34B037
loc_8c1AD140:
	#data 0x8C34AF50
loc_8c1AD144:
	#data bank1b.loc_8c1b8388
loc_8c1AD148:
	#data 0x8C34AFA8
loc_8c1AD14C:
	#data bank1c.loc_8c1c9D88

;==============================================
loc_8c1ad150:
	mov.l @(loc_8C1AD26C,pc),r11
	mov.w @(loc_8C1AD264,pc),r0
	mov.l @r11,r2
	mov.w @(r0,r2),r3
	mov.w @(loc_8C1AD266,pc),r2
	extu.w r3,r3
	tst r2,r3
	bt loc_8c1ad164

loc_8c1AD160:
	bra loc_8c1AD1FA
	mov.b r4,@r5

loc_8c1AD164:
	mov.b @r15,r0
	extu.b r0,r0
	cmp/eq 0x4C,r0
	bf loc_8c1ad17a
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c1ad208
	mov.l @r15+,r14

loc_8c1AD17A:
	mov.l @(0xF4,PC),r3
	jsr @r3
	nop 
	mov 0x0F,r2
	cmp/gt r2,r12
	bt loc_8c1ad1b2
	mov.l @r11,r5
	mov 0x23,r0
	mov.l @(0xE8,PC),r3
	mov.l @r11,r4
	mov.b @(r0,r5),r5
	mov 0x22,r0
	jsr @r3
	mov.b @(r0,r4),r4
	mov.l @r11,r6
	mov 0x22,r0
	mov.b @(r0,r6),r6
	mov r13,r0
	nop 
	add 0x17,r0
	mov.w @(0xC2,PC),r5
	mov.b @r0,r0
	mov 0xFA,r3
	extu.b r0,r0
	and r0,r5
	shad r3,r5
	bra loc_8c1ad1d6
	nop 

loc_8c1AD1B2:
	mov 0x38,r1
	cmp/ge r1,r12
	bf loc_8c1ad1be
	mov.l @(0xBC,PC),r3
	jsr @r3
	nop 

loc_8c1AD1BE:
	mov r13,r6
	add 0x23,r6
	mov.b @r6,r6
	mov r13,r0
	nop 
	add 0x17,r0
	mov.w @(0x9A,PC),r5
	mov.b @r0,r0
	mov 0xFA,r3
	extu.b r0,r0
	and r0,r5
	shad r3,r5

loc_8c1AD1D6:
	add 0x08,r15
	mov.l @(0xA0,PC),r2
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c1AD1E8:
	add 0x08,r15
	mov r14,r4
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c1AD42E
	mov.l @r15+,r14

loc_8c1ad1f8:
	mov.b r4,@r5

loc_8c1AD1FA:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1AD208:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	bsr loc_8c1ade6a
	nop 
	bsr loc_8c1addec
	nop 
	mov.w @(0x48,PC),r3
	mov r0,r4
	extu.b r4,r12
	cmp/hi r3,r12
	bt loc_8c1ad2bc
	mov.l @(0x54,PC),r14
	mov.l @(0x40,PC),r2
	mov.l @r14,r4
	mov.b @r4,r0
	extu.b r0,r0
	cmp/eq 0x3F,r0
	bf.s loc_8c1ad290
	mov.l @r2,r11
	bsr loc_8c1ade6a
	nop 
	mov 0x10,r5
	mov r15,r7
	mov 0x02,r6
	mov r12,r0
	nop 
	mov.l @(0x3C,PC),r3
	mov.b @(r0,r11),r4
	jsr @r3
	extu.b r4,r4
	mov.l @(0x38,PC),r2
	jsr @r2
	nop 
	mov.l @(0x34,PC),r3
	jsr @r3
	mov r15,r4
	mov.l @(0x2C,PC),r2
	jsr @r2
	nop 
	bra loc_8c1ad2c2
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1ad264:
	#data 0x00B2
loc_8c1ad266:
	#data 0x0400
loc_8c1ad268:
	#data 0x00C0
loc_8c1ad26a:
	#data 0x00B8
	#align4

loc_8c1ad26c:
	#data 0x8C34B1F8
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

;==============================================
loc_8c1AD290:
	cmp/eq 0x3D,r0
	bf loc_8c1ad2bc
	bsr loc_8c1ade6a
	nop 
	mov.l @(0x38,PC),r10
	mov 0x00,r13

loc_8c1AD29C:
	mov.l @r14,r4
	shll2 r13
	shll2 r13
	bsr loc_8c1ad97c
	mov.b @r4,r4
	bsr loc_8c1ade6a
	add r0,r13
	mov.l @r14,r3
	mov.b @r3,r2
	mov.b @r10,r3
	cmp/eq r3,r2
	bf loc_8c1ad29c
	mov r12,r0
	nop 
	bra loc_8c1ad2c2
	mov.b r13,@(r0,r11)

loc_8c1AD2BC:
	mov.l @(0x18,PC),r3
	mov 0x02,r2
	mov.b r2,@r3

loc_8c1AD2C2:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c1ad2d4:
	#data 0x8C34B036
loc_8c1ad2d8:
	#data 0x8C34AFA8
	
;==============================================
loc_8c1ad2dc:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c1ad3d8,pc),r10
	add 0xF0,r15
	jsr @r10
	nop
	jsr @r10
	nop
	mov 0x00,r3
	mov.l r3,@(0x0C,r15)
	bsr loc_8c1ade6a
	mov 0x01,r13
	mov.l @(loc_8c1ad3e0,pc),r14
	mov.l @(loc_8C1AD3DC,pc),r12

loc_8c1ad304:
	mov.l @(0x0C,r15),r2
	shll2 r2
	shll2 r2
	mov.l r2,@(0x0C,r15)
	mov.l @r14,r4
	bsr loc_8c1ad97c
	mov.b @r4,r4
	mov.l @(0x0C,r15),r2
	extu.b r0,r0
	add r0,r2
	bsr loc_8c1ade6a
	mov.l r2,@(0x0C,r15)
	mov.l @r14,r4
	mov.b @r12,r3
	mov.b @r4,r4
	extu.b r3,r3
	extu.b r4,r4
	cmp/eq r3,r4
	bt loc_8c1ad33a
	mov r4,r0
	nop
	cmp/eq 0x3D,r0
	bt loc_8c1ad33a
	mov r4,r0
	nop
	cmp/eq 0x54,r0
	bf loc_8c1ad304

loc_8c1ad33a:
	mov.l @(0x0C,r15),r2
	mov 0xFE,r3
	and r3,r2
	mov.l r2,@(0x0C,r15)
	mov.l @r14,r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x3D,r0
	bt loc_8c1ad3f4
	mov.l @r14,r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x54,r0
	bf loc_8c1ad37c
	bsr loc_8c1ade6a
	nop
	mov.l @r14,r4
	bsr loc_8c1ad97c
	mov.b @r4,r4
	bsr loc_8c1ade6a
	mov r0,r13
	mov.l @r14,r3
	mov.b @r3,r2
	mov.b @r12,r3
	cmp/eq r3,r2
	bt loc_8c1ad37c
	mov.l @r14,r4
	shll2 r13
	shll2 r13
	bsr loc_8c1ad97c
	mov.b @r4,r4
	bsr loc_8c1ade6a
	add r0,r13

loc_8c1ad37c:
	mov.w @(loc_8C1AD3D4,pc),r2
	extu.b r13,r3
	cmp/eq r2,r3
	bf/s loc_8c1ad388
	mov 0x01,r14
	add 0xFF,r13

loc_8c1ad388:
	extu.b r13,r9
	mov r14,r2
	mov.l @(loc_8c1ad3e4,pc),r8
	cmp/gt r9,r2
	mov.l @(loc_8c1ad3e8,pc),r12
	bt/s loc_8c1ad416
	mov r15,r11

loc_8c1ad396:
	mov.l @(0x0C,r15),r4
	mov 0x10,r5
	mov.l @(loc_8c1ad3ec,pc),r3
	mov r11,r7
	mov 0x08,r6
	jsr @r3
	mov.l @r4,r4
	jsr @r12
	mov r8,r4
	jsr @r12
	mov r11,r4
	mov.l @(0x0C,r15),r2
	extu.b r14,r4
	cmp/pl r4
	add 0x04,r2
	bf/s loc_8c1ad3c8
	mov.l r2,@(0x0C,r15)
	mov.l @(loc_8c1ad3f0,pc),r2
	mov r4,r1
	jsr @r2
	mov 0x08,r0
	tst r0,r0
	bf loc_8c1ad3c8
	jsr @r10
	nop

loc_8c1ad3c8:
	add 0x01,r14
	extu.b r14,r2
	cmp/gt r9,r2
	bf loc_8c1ad396
	bra loc_8c1ad416
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1AD3D4:
	#data 0x00FF
	#align4

loc_8c1ad3d8:
	#data loc_8c1aee08
loc_8C1AD3DC:
	#data 0x8C34B036
loc_8c1ad3e0:
	#data bank1c.loc_8c1c9d88
loc_8c1ad3e4:
	#data bank1c.loc_8c1c6e8c
loc_8c1ad3e8:
	#data loc_8c1aecdc
loc_8c1ad3ec:
	#data loc_8c1af1a4
loc_8c1ad3f0:
	#data bank12.loc_8c1292d4

;==============================================
loc_8c1ad3f4:
	bsr loc_8c1ade6a
	mov 0x00,r13

loc_8c1ad3f8:
	mov.l @r14,r4
	shll2 r13
	shll2 r13
	bsr loc_8c1ad97c
	mov.b @r4,r4
	extu.b r0,r0
	bsr loc_8c1ade6a
	add r0,r13
	mov.l @r14,r3
	mov.b @r3,r2
	mov.b @r12,r3
	cmp/eq r3,r2
	bf loc_8c1ad3f8
	mov.l @(0x0C,r15),r3
	mov.l r13,@r3

loc_8c1ad416:
	jsr @r10
	nop
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
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
loc_8c1AD500:
	#data bank19.loc_8c19CB38

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1AD5D4:
	#data 0x0080
loc_8c1AD5D6:
	#data 0x0100
loc_8c1AD5D8:
	#data 0x0200
	#align4

loc_8c1AD5DC:
	#data bank19.loc_8c19C378
loc_8c1AD5E0:
	#data bank1c.loc_8c1c6E90
loc_8c1AD5E4:
	#data 0xFF7FFFFF
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

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1AD6BC:
	#data bank1c.loc_8c1c6EF8
loc_8c1AD6C0:
	#data bank1c.loc_8c1c6F04
loc_8c1AD6C4:
	#data bank1c.loc_8c1c6F10
loc_8c1AD6C8:
	#data 0x00800000
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

;==============================================
loc_8c1ad6fc:
	mov.l @(loc_8c1ad828,pc),r4

loc_8c1ad6fe:
	jsr @r14
	nop

loc_8c1ad702:
	exts.b r10,r0
	cmp/eq 0x01,r0
	bf loc_8c1ad72c
	mov.l @(loc_8c1ad82c,pc),r3
	mov.b @(0x04,r15),r0
	jsr @r3
	mov r0,r4
	mov.l @(loc_8c1ad830,pc),r2
	jsr @r2
	mov r0,r4
	mov.l r0,@-r15
	mov.l @(loc_8c1ad834,pc),r3
	mov.l r3,@-r15
	mov.l @(loc_8c1ad838,pc),r2
	mov r15,r4
	jsr @r2
	add 0x14,r4
	add 0x08,r15
	mov r15,r4
	jsr @r14
	add 0x0C,r4

loc_8c1ad72c:
	jsr @r13
	nop
	mov.l @(loc_8c1ad83c,pc),r4
	jsr @r14
	nop
	mov.l @(loc_8c1ad840,pc),r3
	jsr @r3
	nop
	mov 0x03,r6
	mov 0x0A,r5
	extu.w r0,r4
	jsr @r11
	mov r12,r7
	jsr @r14
	mov r12,r4
	jsr @r13
	nop
	mov.l @r15,r0
	cmp/eq 0x02,r0
	bf loc_8c1ad758
	bra loc_8c1ad95c
	nop

loc_8c1ad758:
	mov.l @r15,r0
	cmp/eq 0x04,r0
	bf loc_8c1ad762
	bra loc_8c1ad95c
	nop

loc_8c1ad762:
	mov.l @r15,r0
	cmp/eq 0x01,r0
	bf loc_8c1ad76c
	bra loc_8c1ad95c
	nop

loc_8c1ad76c:
	mov.l @(loc_8c1ad844,pc),r4
	jsr @r14
	nop
	mov.l @(loc_8c1ad848,pc),r3
	jsr @r3
	nop
	mov 0x04,r6
	mov 0x10,r5
	extu.w r0,r4
	jsr @r11
	mov r12,r7
	jsr @r14
	mov r12,r4
	jsr @r13
	nop
	mov.l @r15,r0
	cmp/eq 0x20,r0
	bt loc_8c1ad7b2
	mov.l @r15,r0
	cmp/eq 0x40,r0
	bt loc_8c1ad7b2
	mov.l @r15,r3
	mov.w @(loc_8C1AD822,pc),r2
	cmp/eq r2,r3
	bt loc_8c1ad7b2
	mov.l @r15,r1
	mov.w @(loc_8C1AD824,pc),r3
	cmp/eq r3,r1
	bt loc_8c1ad7b2
	mov.l @r15,r0
	mov.w @(loc_8C1AD826,pc),r1
	cmp/eq r1,r0
	bt loc_8c1ad7b2
	bra loc_8c1ad95c
	nop

loc_8c1ad7b2:
	mov.l @(loc_8c1ad84c,pc),r4
	jsr @r14
	nop
	mov.l @(loc_8c1ad850,pc),r2
	jsr @r2
	nop
	mov 0x04,r6
	mov 0x0A,r5
	extu.w r0,r4
	jsr @r11
	mov r12,r7
	jsr @r14
	mov r12,r4
	mov.l @(loc_8c1ad854,pc),r4
	jsr @r14
	nop
	jsr @r13
	nop
	mov.l @(loc_8c1ad858,pc),r4
	jsr @r14
	nop
	mov.l @(loc_8c1ad85c,pc),r3
	jsr @r3
	nop
	mov 0x03,r6
	mov 0x0A,r5
	extu.w r0,r4
	jsr @r11
	mov r12,r7
	jsr @r14
	mov r12,r4
	mov.l @(loc_8c1ad860,pc),r4
	jsr @r14
	nop
	jsr @r13
	nop
	mov.l @(loc_8c1ad864,pc),r4
	jsr @r14
	nop
	mov.l @(loc_8c1ad868,pc),r2
	jsr @r2
	nop
	mov 0x03,r6
	mov 0x0A,r5
	extu.w r0,r4
	jsr @r11
	mov r12,r7
	jsr @r14
	mov r12,r4
	mov.l @(loc_8c1ad860,pc),r4
	jsr @r14
	nop
	jsr @r13
	nop
	bra loc_8c1ad95c
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1AD822:
	#data 0x0080
loc_8C1AD824:
	#data 0x0100
loc_8C1AD826:
	#data 0x0200
	#align4

loc_8c1ad828:
	#data bank1c.loc_8c1c6fc8
loc_8c1ad82c:
	#data bank1b.loc_8c1bf488
loc_8c1ad830:
	#data loc_8c1aee58
loc_8c1ad834:
	#data bank1c.loc_8c1c6fdc
loc_8c1ad838:
	#data bank12.loc_8c129740
loc_8c1ad83c:
	#data bank1c.loc_8c1c6fe0
loc_8c1ad840:
	#data bank19.loc_8c19cb38
loc_8c1ad844:
	#data bank1c.loc_8c1c6ff4
loc_8c1ad848:
	#data bank19.loc_8c19ce58
loc_8c1ad84c:
	#data bank1c.loc_8c1c7018
loc_8c1ad850:
	#data bank19.loc_8c19cfc4
loc_8c1ad854:
	#data bank1c.loc_8c1c702c
loc_8c1ad858:
	#data bank1c.loc_8c1c7030
loc_8c1ad85c:
	#data bank19.loc_8c19d096
loc_8c1ad860:
	#data bank1c.loc_8c1c7044
loc_8c1ad864:
	#data bank1c.loc_8c1c704c
loc_8c1ad868:
	#data bank19.loc_8c19d0a4

;==============================================
loc_8c1ad86c:
	mov r5,r0
	nop 
	cmp/eq 0x02,r0
	bf loc_8c1ad964
	mov.l @(0x1F0,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bf loc_8c1ad964
	jsr @r13
	nop 
	mov.l @(0x1E8,PC),r4
	jsr @r14
	nop 
	mov.l @(0x1E8,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c1ad89a
	mov.l @(0x1E0,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x08,r0
	bt loc_8c1ad8a0

loc_8c1ad89a:
	mov.l @(0x1DC,PC),r4
	bra loc_8c1ad8a2
	nop 

loc_8c1ad8a0:
	mov.l @(0x1D8,PC),r4

loc_8c1ad8a2:
	jsr @r14
	nop 
	jsr @r13
	nop 
	mov.l @(0x1D4,PC),r4
	jsr @r14
	nop 
	mov.l @(0x1D4,PC),r3
	mov.l @(0x1D0,PC),r10
	jsr @r10
	mov.b @r3,r4
	jsr @r13
	nop 
	mov.l @(0x1CC,PC),r4
	jsr @r14
	nop 
	mov.l @(0x1CC,PC),r2
	jsr @r10
	mov.b @r2,r4
	jsr @r13
	nop 
	mov.l @(0x1C4,PC),r4
	jsr @r14
	nop 
	mov.l @(0x1C4,PC),r3
	jsr @r10
	mov.b @r3,r4
	jsr @r13
	nop 
	mov.l @(0x1BC,PC),r4
	jsr @r14
	nop 
	mov.l @(0x1BC,PC),r2
	jsr @r10
	mov.b @r2,r4
	jsr @r13
	nop 
	mov.l @(0x1B4,PC),r4
	jsr @r14
	nop 
	mov.l @(0x1B4,PC),r3
	mov.b @r3,r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c1ad906
	mov.l @(0x1AC,PC),r4
	jsr @r14
	nop 
	bra loc_8c1ad91c
	nop 

loc_8c1ad906:
	mov.l @(0x1A8,PC),r2
	mov.b @r2,r0
	extu.b r0,r0
	tst 0x20,r0
	bt loc_8c1ad916
	mov.l @(0x1A0,PC),r4
	bra loc_8c1ad918
	nop 

loc_8c1ad916:
	mov.l @(0x1A0,PC),r4

loc_8c1ad918:
	jsr @r14
	nop

loc_8c1ad91c:
	jsr @r13
	nop 
	mov.l @(0x198,PC),r4
	jsr @r14
	nop 
	mov.l @(0x188,PC),r3
	mov.b @r3,r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c1ad936
	mov.l @(0x18C,PC),r4
	bra loc_8c1ad938
	nop 

loc_8c1ad936:
	mov.l @(0x180,PC),r4

loc_8c1ad938:
	jsr @r14
	nop 
	jsr @r13
	nop 
	mov.l @(0x180,PC),r4
	jsr @r14
	nop 
	mov.l @(0x180,PC),r2
	jsr @r2
	nop 
	extu.w r0,r4
	shlr8 r4

loc_8c1ad950:
	mov 0x03,r6
	mov 0x0A,r5
	jsr @r11
	mov r12,r7
	jsr @r14
	mov r12,r4

loc_8c1ad95c:
	jsr @r13
	nop
	bra loc_8c1ad96a
	nop

loc_8c1ad964:
	mov.l @(0x164,PC),r3
	mov 0x02,r2
	mov.b r2,@r3

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

;==============================================
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

;==============================================
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

;==============================================
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

loc_8c1ada1c:
	cmp/eq 0x02,r0
	bt loc_8c1ada28
	mov r14,r0
	nop
	cmp/eq 0x03,r0
	bf loc_8c1ada30

loc_8c1ADA28:
	mov.l @(loc_8c1ADACC,pc),r3 ; r3 set to 0x8C34AFA8
	mov 0x02,r2 ; r2 set to 0x02
	bra loc_8c1ADA3E
	mov.b r2,@r3

loc_8c1ADA30:
	mov r14,r3
	shll2 r3
	shll2 r3
	shll r0
	shll r3
	add r3,r0
	mov.b r0,@r4

loc_8c1ADA3E:
	rts
	mov.l @r15+,r14

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1ADA68:
	#data 0x8C34B0F8
loc_8c1ADA6C:
	#data bank1c.loc_8c1c7060
loc_8c1ADA70:
	#data 0x8C34AF7D
loc_8c1ADA74:
	#data 0x8C34B28E
loc_8c1ADA78:
	#data bank1c.loc_8c1c7080
loc_8c1ADA7C:
	#data bank1c.loc_8c1c7090
loc_8c1ADA80:
	#data bank1c.loc_8c1c70A0
loc_8c1ADA84:
	#data loc_8c1AEE2C
loc_8c1ADA88:
	#data 0x8C34B0FB
loc_8c1ADA8C:
	#data bank1c.loc_8c1c70C0
loc_8c1ADA90:
	#data 0x8C34B0F9
loc_8c1ADA94:
	#data bank1c.loc_8c1c70E0
loc_8c1ADA98:
	#data 0x8C34B0FC
loc_8c1ADA9C:
	#data bank1c.loc_8c1c7100
loc_8c1ADAA0:
	#data 0x8C34B0FA
loc_8c1ADAA4:
	#data bank1c.loc_8c1c7120
loc_8c1ADAA8:
	#data 0x8C34B2E1
loc_8c1ADAAC:
	#data bank1c.loc_8c1c7140
loc_8c1ADAb0:
	#data 0x8C34B2E2
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
loc_8c1ADAD0:
	#data bank1c.loc_8c1c9D88
loc_8c1ADAD4:
	#data 0x8C34AF50

;==============================================
loc_8c1ADAD8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	bsr loc_8c1ade6a
	nop 
	mov.l @(0x164,PC),r1
	mov.l @r1,r0
	mov.b @r0,r3
	bsr loc_8c1ade6a
	mov.b r3,@r15
	mov.b @r15,r14
	extu.b r14,r14
	mov r14,r0
	nop 
	cmp/eq 0x4B,r0
	bt loc_8c1adafc
	bsr loc_8c1addec
	nop 

loc_8c1ADAFC:
	mov r14,r0
	nop 
	add 0x04,r15
	mov.l @(0x148,PC),r2
	lds.l @r15+,pr
	mov 0x02,r3
	mov.b r3,@r2
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1adb0e:
	mov.l @(0x144,PC),r2
	exts.b r4,r4
	mov.l @(0x13C,PC),r1
	tst r4,r4
	mov.b @r2,r3
	mov.b r3,@r1
	mov.l @(0x13C,PC),r3
	mov.l @(0x12C,PC),r5
	mov.b @r3,r0
	and 0xF8,r0
	bt.s loc_8c1adb2c
	mov.b r0,@r3
	mov 0x01,r0
	bra loc_8c1adb30
	mov.b r0,@r5

loc_8c1adb2c:
	mov 0x02,r2
	mov.b r2,@r5

loc_8c1adb30:
	rts 
	nop 

;==============================================
loc_8c1ADB34:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	bsr loc_8c1ade6a
	nop 
	mov.l @(0x108,PC),r3
	mov.l @r3,r1
	mov.b @r1,r2
	bsr loc_8c1ade6a
	mov.b r2,@r15
	mov.b @r15,r14
	extu.b r14,r14
	mov r14,r0
	nop 
	cmp/eq 0x44,r0
	bt loc_8c1adb58
	bsr loc_8c1addec
	nop 

loc_8c1ADB58:
	mov r14,r0
	nop 
	add 0x04,r15
	mov.l @(0xEC,PC),r2
	lds.l @r15+,pr
	mov 0x02,r3
	mov.b r3,@r2
	rts 
	mov.l @r15+,r14

;unused?
loc_8c1adb6a:
	rts 
	nop 


;==============================================
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

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1ADC48:
	#data bank1c.loc_8c1c9D88
loc_8c1ADC4C:
	#data 0x8C34AFA8
loc_8c1ADC50:
	#data 0x8C34AFB5
loc_8c1ADC54:
	#data 0x8C34B036
loc_8c1ADC58:
	#data 0x8C34B03D
loc_8c1ADC5C:
	#data 0x8C34AF50
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

;==============================================
loc_8c1adc78:
	mov.l @(loc_8c1add64,pc),r4
	jsr @r14
	nop

loc_8c1adc7e:
	mov 0x0A,r5
	mov r13,r7
	mov 0x01,r6
	jsr @r10
	extu.w r12,r4
	jsr @r14
	mov r13,r4

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

loc_8c1adcd0:
	mov.l @(loc_8c1add7c,pc),r1
	mov 0x02,r0
	mov.b r0,@r1

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

;==============================================
loc_8c1ADCEA:
	mov.l @(loc_8c1ADD80,pc),r4 ; r4 set to 0x8C1C9D88
	mov 0x02,r2 ; r2 set to 0x02
	mov.l @r4,r3
	add 0x01,r3
	mov.l r3,@r4 ; r4 ??? bc r3 is ???
	mov.l @(loc_8c1ADD7C,pc),r1 ; r1 set to 0x8C34AFA8
	rts
	mov.b r2,@r1

;==============================================
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

loc_8c1add4c:
	mov.l @(loc_8c1add80,pc),r4
	mov.l @r4,r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x3B,r0
	bf loc_8c1add5e
	mov.l @r4,r2
	add 0x01,r2
	mov.l r2,@r4

loc_8c1ADD5E:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
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
loc_8c1ADD80:
	#data bank1c.loc_8c1c9D88
loc_8c1ADD84:
	#data bank1b.loc_8c1b4C72
loc_8c1ADD88:
	#data 0x8C34B036

;==============================================
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
	add 0x01,r4

loc_8c1adda8:
	mov.b @r4,r0
	extu.b r0,r0
	cmp/eq 0x20,r0
	bt loc_8c1adda6

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

loc_8c1addc4:
	bsr loc_8c1ade6a
	nop
	mov.l @(loc_8c1ade84,pc),r1
	mov.l @r1,r3
	mov.b @r3,r2
	bsr loc_8c1ade6a
	mov.b r2,@r15
	bsr loc_8c1addec
	nop
	mov.b @r15,r0
	extu.b r0,r0
	cmp/eq 0x2B,r0
	bf loc_8c1addde

loc_8c1addde:
	add 0x04,r15
	mov.l @(loc_8C1ADE94,pc),r2
	lds.l @r15+,pr
	mov 0x02,r3
	mov.b r3,@r2
	rts
	nop

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

loc_8c1ADE00:
	mov r13,r2
	mov.l @r14,r1
	shll2 r2
	mov r13,r3
	add r3,r2
	mov.b @r1,r3
	shll r2
	add r3,r2
	mov r2,r13
	bsr loc_8c1ade6a
	add r11,r13

loc_8c1ade16:
	mov.l @r14,r4
	mov.b @r4,r4
	extu.b r4,r4
	cmp/ge r12,r4
	bf loc_8c1ade26
	mov 0x39,r2
	cmp/gt r2,r4
	bf loc_8c1ade00

loc_8c1ade26:
	mov r13,r0
	nop
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c1ADE36:
	mov.l @(loc_8c1ADE84,pc),r4 ; r4 set to 0x8C1C9D88
	bra loc_8c1ADE42
	nop

loc_8c1ADE3C:
	mov.l @r4,r2
	add 0x01,r2
	mov.l r2,@r4

loc_8c1ade42:
	mov.l @r4,r5
	mov.b @r5,r5
	extu.b r5,r5
	mov r5,r0
	nop
	cmp/eq 0x2C,r0
	bt loc_8c1ade5c
	mov 0x20,r2
	cmp/gt r2,r5
	bf loc_8c1ade5c
	mov 0x7E,r1
	cmp/gt r1,r5
	bf loc_8c1ade66

loc_8c1ade5c:
	mov.l @(loc_8c1ade88,pc),r3
	mov.b @r3,r2
	extu.b r2,r2
	cmp/eq r2,r5
	bf loc_8c1ade3c

loc_8c1ade66:
	rts
	nop

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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1ADE80:
	#data 0x00D0
	#align4

loc_8c1ADE84:
	#data bank1c.loc_8c1c9D88
loc_8c1ADE88:
	#data 0x8C34B036
loc_8c1ADE8C:
	#data 0x8C34AFA9
loc_8c1ADE90:
	#data loc_8c1ABE0C
loc_8c1ade94:
	#data 0x8C34AFA8

;==============================================
loc_8c1ADE98:
	mov.l @r4,r3
	add 0x01,r3
	mov.l r3,@r4

loc_8c1ade9e:
	mov.l @r4,r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x20,r0
	bt loc_8c1ade98

loc_8c1ADEA8:
	rts
	nop

;==============================================
;unused?
loc_8c1adeac:
	mov 0x30,r3
	extu.b r4,r5
	cmp/ge r3,r5
	bf loc_8c1adeba
	mov 0x39,r2
	cmp/gt r2,r5
	bf loc_8c1adeda

loc_8c1adeba:
	mov 0x41,r3
	cmp/ge r3,r5
	bf loc_8c1adec6
	mov 0x44,r2
	cmp/gt r2,r5
	bf loc_8c1adeda

loc_8c1adec6:
	mov r5,r0
	nop 
	cmp/eq 0x2A,r0
	bt loc_8c1adeda
	mov r5,r0
	nop 
	cmp/eq 0x23,r0
	bt loc_8c1adeda
	rts 
	mov 0x00,r0

loc_8c1adeda:
	mov 0x01,r0
	rts 
	nop 

;==============================================
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

;==============================================
loc_8c1ADF48:
	mov 0x01,r0 ; r0 set to 0x01
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c1ADF50:
	mov.l @(loc_8c1ADF88,pc),r7 ; r7 set to 0x8C34B036
	mov 0x00,r1 ; r1 set to 0x00
	bra loc_8c1ADF8C
	mov 0x46,r0

loc_8c1ADF58:
	add 0x01,r1
	mov.b @r5+,r3
	extu.b r1,r2
	cmp/gt r0,r2
	mov.b r3,@r4
	bf.s loc_8c1adf8c
	add 0x01,r4
	rts 
	mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1ADF6A:
	#data 0x00B2
	#align4

loc_8c1ADF6C:
	#data bank1c.loc_8c1c9D88
loc_8c1ADF70:
	#data 0x8C34AF53
loc_8c1ADF74:
	#data 0x8C34B1F8
loc_8c1ADF78:
	#data bank19.loc_8c19FE3C
loc_8c1ADF7C:
	#data 0x8C34AFA8
loc_8c1ADF80:
	#data 0x8C34B291
loc_8c1ADF84:
	#data loc_8c1AED24
loc_8c1ADF88:
	#data 0x8C34B036

;==============================================
loc_8c1adf8c:
	mov.b @r7,r2
	mov.b @r5,r6
	extu.b r2,r2
	extu.b r6,r6
	cmp/eq r2,r6
	bt loc_8c1adf9c
	tst r6,r6
	bf loc_8c1adf58

loc_8c1adf9c:
	mov.b @r7,r3
	mov 0x01,r0
	mov.b r3,@r4
	rts
	nop

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

loc_8c1ae02a:
	mov.l @(loc_8c1ae17c,pc),r14
	mov 0x02,r8
	mov.b @(0x0B,r4),r0
	extu.b r0,r0
	tst r8,r0
	bt/s loc_8c1ae0ce
	mov 0x00,r9
	mov.b @(0x07,r13),r0
	extu.b r0,r0
	tst r10,r0
	bt loc_8c1ae064
	mov.b @(0x04,r13),r0
	extu.b r0,r0
	tst 0x10,r0
	bf loc_8c1ae064
	mov.b @(0x0B,r13),r0
	extu.b r0,r0
	tst 0x10,r0
	bf loc_8c1ae064
	mov.l @(loc_8C1AE180,pc),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c1ae070
	mov.l @(loc_8C1AE184,pc),r2
	mov.b @r2,r3
	extu.b r3,r3
	tst r10,r3
	bt loc_8c1ae070

loc_8c1ae064:
	mov.l @(loc_8c1ae188,pc),r2
	jsr @r2
	nop
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1ae080

loc_8c1ae070:
	mov.b @(0x0B,r13),r0
	and 0xFD,r0
	mov.b r0,@(0x0B,r13)
	mov.b @(0x05,r13),r0
	and 0xFE,r0
	mov.b r0,@(0x05,r13)

loc_8c1AE07C:
	bra loc_8c1AE206
	mov.b r11,@r12

loc_8c1AE080:
	mov.l @(0xE0,PC),r3
	mov.l @(0x108,PC),r2
	jsr @r3
	mov.l @r2,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1ae092
	bra loc_8c1ae206
	nop 

loc_8c1AE092:
	mov.l @(0xFC,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c1ae09e
	bra loc_8c1ae206
	nop 

loc_8c1AE09E:
	mov.b @(0xB,r13),r0
	and 0xFD,r0
	mov.b r0,@(0xB,r13)
	mov.b @(0x5,r13),r0
	extu.b r0,r0
	tst r11,r0
	bf loc_8c1ae0ce
	bra loc_8c1ae0b8
	mov r9,r4

loc_8c1AE0B0:
	mov.l @r14,r4
	add 0xFF,r4
	mov.l r4,@r14
	mov.b @r4,r4

loc_8c1AE0B8:
	extu.b r4,r5
	mov r5,r0
	nop 
	cmp/eq 0x41,r0
	bt loc_8c1ae152
	mov r5,r0
	nop 
	cmp/eq 0x44,r0
	bf loc_8c1ae0b0
	bra loc_8c1ae152
	nop 

loc_8c1AE0CE:
	mov r13,r4
	mov.b @(0x5,r4),r0
	extu.b r0,r0
	tst r11,r0
	bt loc_8c1ae13c
	mov.b @(0x5,r4),r0
	extu.b r0,r0
	tst r8,r0
	bt loc_8c1ae104
	mov.l @(0xB0,PC),r2
	jsr @r2
	nop 
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1ae0f0
	bra loc_8c1ae206
	nop 

loc_8c1AE0F0:
	lds.l @r15+,pr
	mov.l @(0xA4,PC),r2
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c1AE104:
	mov.b @(0x5,r4),r0
	extu.b r0,r0
	tst 0x04,r0
	bt loc_8c1ae120
	lds.l @r15+,pr
	mov.l @(0x8C,PC),r2
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c1AE120:
	mov.b @(0x5,r4),r0
	extu.b r0,r0
	tst r10,r0
	bt loc_8c1ae206
	lds.l @r15+,pr
	mov.l @(0x74,PC),r2
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c1AE13C:
	mov r4,r3
	add 0x10,r3
	mov.b @r3,r2
	extu.b r2,r2
	tst r11,r2
	bt loc_8c1ae1a4
	mov r4,r3
	add 0x10,r3
	mov.b @r3,r0
	and 0xFE,r0
	mov.b r0,@r3

loc_8c1AE152:
	bra loc_8c1ae206
	mov.b r9,@r12

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1AE158:
	#data 0x8C34AFA8
loc_8c1AE15C:
	#data 0x8C34B288
loc_8c1AE160:
	#data 0x8C34AFA0
loc_8c1AE164:
	#data bank1b.loc_8c1b3F0C
loc_8c1AE168:
	#data bank19.loc_8c19F21E
loc_8c1AE16C:
	#data 0x8C34B11C
loc_8c1AE170:
	#data loc_8c1A10A2
loc_8c1AE174:
	#data 0x8C34AF44
loc_8c1AE178:
	#data loc_8c1AC212
loc_8c1AE17C:
	#data bank1c.loc_8c1c9D88
loc_8c1ae180:
	#data 0x8C34AF5E
loc_8c1ae184:
	#data 0x8C34AF6F
loc_8c1AE188:
	#data bank19.loc_8c19FED2
loc_8c1AE18c:
	#data 0x8C34B124
loc_8c1AE190:
	#data 0x8C34AF51
loc_8c1AE194:
	#data bank1c.loc_8c1c02B6
loc_8c1AE198:
	#data loc_8c1AB2EA
loc_8c1AE19C:
	#data loc_8c1AB8A6
loc_8c1AE1A0:
	#data loc_8c1AB39E

;==============================================
loc_8c1AE1A4:
	mov.l @(0xAC,PC),r3
	mov.l @(0xA8,PC),r2
	jsr @r3
	mov.l @r2,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1ae206
	mov.l @(0xA4,PC),r1
	mov.w @(0x96,PC),r2
	mov.w @r1,r3
	extu.w r3,r3
	cmp/gt r2,r3
	bf loc_8c1ae1c2
	bra loc_8c1ae206
	mov.b r8,@r12

loc_8c1AE1C2:
	mov.l @(0x98,PC),r2
	mov.l r2,@r14
	mov.b @(0x7,r13),r0
	and 0xF7,r0
	mov.b r0,@(0x7,r13)
	mov.l @r14,r3
	mov.b @(0x1,r3),r0
	extu.b r0,r0
	cmp/eq 0x54,r0
	bt.s loc_8c1ae1e6
	mov r0,r4
	mov r4,r0
	nop 
	cmp/eq 0x2F,r0
	bt loc_8c1ae1e6
	mov 0x04,r3
	bra loc_8c1ae206
	mov.b r3,@r12

loc_8c1AE1E6:
	lds.l @r15+,pr
	mov.l @r14,r2
	add 0x01,r2
	mov r2,r3
	add 0x01,r3
	mov.l r3,@r14
	mov.b r9,@r12
	mov.l @r15+,r8
	mov.l @(0x68,PC),r2
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;==============================================
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

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1AE24e:
	#data 0x0080
	#align4

loc_8c1AE250:
	#data 0x8C34B138
loc_8c1AE254:
	#data bank1b.loc_8c1b3F0C
loc_8c1AE258:
	#data 0x8C34B034
loc_8c1AE25c:
	#data 0x8C34AFB3
loc_8c1AE260:
	#data loc_8c1AFE8A
loc_8c1AE264:
	#data 0x8C34AFA8
loc_8c1AE268:
	#data loc_8c1AED24

;==============================================
loc_8c1ae26c:
	mov 0x03,r4
	mov 0x00,r5

loc_8c1ae270:
	jsr @r14
	nop
	mov.l @(loc_8C1AE3E4,pc),r2
	mov.b r11,@r2

loc_8c1ae278:
	mov.b @r13,r4
	mov.l @(loc_8C1AE3F0,pc),r14
	extu.b r4,r0
	mov.l @(loc_8c1ae3e8,pc),r10
	mov.l @(loc_8C1AE3EC,pc),r12
	cmp/eq 0x05,r0
	bt/s loc_8c1ae2b0
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x06,r0
	bt loc_8c1ae2b0
	mov.b @(0x06,r14),r0
	and 0xBF,r0
	mov.b r0,@(0x06,r14)
	mov.l @(loc_8c1ae3f8,pc),r2
	mov.l @(loc_8C1AE3F4,pc),r3
	mov.b @(0x03,r12),r0
	jsr @r2
	mov.b r0,@r3
	mov.l @(loc_8c1ae3fc,pc),r1
	jsr @r1
	nop
	mov.l @(loc_8c1ae400,pc),r2
	jsr @r2
	nop
	jsr @r10
	nop

loc_8c1ae2b0:
	mov.b @r13,r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bt loc_8c1ae340
	mov r12,r2
	add 0x1B,r2
	mov.l @(loc_8C1AE404,pc),r5
	mov.b @r2,r3
	mov.b @r5,r2
	cmp/eq r2,r3
	bf/s loc_8c1ae2d6
	mov r12,r4
	mov r4,r2
	mov.l @(loc_8C1AE408,pc),r1
	add 0x1F,r2
	mov.b @r2,r3
	mov.b @r1,r2
	cmp/eq r2,r3
	bt loc_8c1ae2fc

loc_8c1ae2d6:
	add 0x1B,r4
	mov r12,r3
	mov.b @r4,r2
	add 0x1F,r3
	mov.b r2,@r5
	mov.l @(loc_8C1AE408,pc),r1
	mov.b @r3,r2
	mov.b r2,@r1
	mov.b @(0x06,r14),r0
	extu.b r0,r0
	tst 0x02,r0
	bf loc_8c1ae2fc
	mov.l @(loc_8C1AE40C,pc),r3
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bt loc_8c1ae2fc
	jsr @r10
	nop

loc_8c1ae2fc:
	mov r12,r0
	nop
	add 0x1F,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x10,r0
	bt loc_8c1ae32c
	mov.l @(loc_8C1AE410,pc),r2
	mov.l @(loc_8c1ae418,pc),r1
	mov.l @(loc_8C1AE414,pc),r3
	mov.b @r2,r5
	jsr @r1
	mov.b @r3,r4
	mov.b @(0x06,r14),r0
	extu.b r0,r0
	tst 0x02,r0
	bf loc_8c1ae32c
	mov.l @(loc_8C1AE40C,pc),r3
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bt loc_8c1ae32c
	jsr @r10
	nop

loc_8c1ae32c:
	mov.l @(loc_8C1AE41C,pc),r3
	mov r14,r4
	add 0x07,r4
	mov.w r11,@r3
	mov.b @r4,r0
	and 0xFE,r0
	mov.b r0,@r4
	mov.b @r4,r0
	and 0xF7,r0
	mov.b r0,@r4

loc_8c1ae340:
	lds.l @r15+,pr
	mov.b r11,@r13
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1ae350:
	mov.l r14,@-r15
	mov 0x49,r3
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r4,@r15
	mov.b @r4,r4
	extu.b r4,r4
	cmp/ge r3,r4
	bf.s loc_8c1ae36c
	mov 0x00,r14
	mov 0x5A,r1
	cmp/gt r1,r4
	bt loc_8c1ae36c
	mov 0x01,r14

loc_8c1ae36c:
	mov.l @(0xB0,PC),r2
	extu.b r14,r4
	mov.l @r15,r3
	jsr @r2
	add r3,r4
	mov r0,r4
	extu.b r4,r14
	mov r14,r0
	nop 
	cmp/eq 0x03,r0
	bt loc_8c1ae38a
	mov r14,r0
	nop 
	cmp/eq 0x02,r0
	bf loc_8c1ae3d8

loc_8c1ae38a:
	mov.l @(0x98,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x08,r0
	bf loc_8c1ae3a8
	mov.l @(0x94,PC),r2
	mov.l @(0x90,PC),r4
	jsr @r2
	nop 
	mov.l @(0x94,PC),r3
	mov.l @(0x90,PC),r4
	jsr @r3
	mov.b @r4,r4
	bra loc_8c1ae3ce
	nop 

loc_8c1ae3a8:
	mov r14,r0
	nop 
	cmp/eq 0x02,r0
	bf loc_8c1ae3ba
	mov.l @(0x84,PC),r2
	jsr @r2
	nop 
	bra loc_8c1ae3ce
	nop 

loc_8c1ae3ba:
	mov.l @(0x80,PC),r2
	jsr @r2
	nop 
	mov.l @(0x68,PC),r3
	mov.l @(0x7C,PC),r4
	jsr @r3
	nop 
	mov.l @(0x70,PC),r2
	jsr @r2
	nop 

loc_8c1ae3ce:
	add 0x04,r15
	lds.l @r15+,pr
	mov 0x01,r0
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1ae3d8:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
	#align4

loc_8C1AE3E4:
	#data 0x8C34B03A
loc_8c1ae3e8:
	#data loc_8c1afd44
loc_8C1AE3EC:
	#data 0x8C34AF50
loc_8C1AE3F0:
	#data 0x8C34B288
loc_8C1AE3F4:
	#data 0x8C34B036
loc_8c1ae3f8:
	#data bank1b.loc_8c1b4f12
loc_8c1ae3fc:
	#data loc_8c1af31a
loc_8c1ae400:
	#data bank1b.loc_8c1b398a
loc_8C1AE404:
	#data 0x8C34B03B
loc_8C1AE408:
	#data 0x8C34B03C
loc_8C1AE40C:
	#data 0x8C34AFA8
loc_8C1AE410:
	#data 0x8C34AFB1
loc_8C1AE414:
	#data 0x8C34AFB0
loc_8c1ae418:
	#data bank19.loc_8c198a10
loc_8C1AE41C:
	#data 0x8C34B034
loc_8c1ae420:
	#data bank19.loc_8c1994B6
loc_8c1ae424:
	#data 0x8C34AF5E
loc_8c1ae428:
	#data bank1c.loc_8c1c71D4
loc_8c1ae42c:
	#data loc_8c1aECDC
loc_8c1ae430:
	#data 0x8C34AF53
loc_8c1ae434:
	#data loc_8c1aEC3A
loc_8c1ae438:
	#data bank19.loc_8c19942E
loc_8c1ae43c:
	#data loc_8c1aEE08
loc_8c1ae440:
	#data bank1c.loc_8c1c71D8

;==============================================
loc_8c1ae444:
	mov.l @(loc_8c1ae450,PC),r3
	mov.w @(loc_8c1ae44c,PC),r4
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1ae44c:
	#data 0x0080
	#align4

loc_8c1ae450:
	#data bank19.loc_8c1995D6

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1AE47C:
	#data 0x8C34B039

;==============================================
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

braf_8c1ae4a0:
	braf r0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1AE4A4:
	#data 0x8C34AF50
loc_8c1AE4A8:
	#data 0x8C34B0FE

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1AE4AC:
	#data16 {loc_8c1ae508-braf_8c1ae4a0-4} ; 0x0064
	#data16 {loc_8c1ae518-braf_8c1ae4a0-4} ; 0x0074
	#data16 {loc_8c1ae51c-braf_8c1ae4a0-4} ; 0x0078
	#data16 {loc_8c1ae520-braf_8c1ae4a0-4} ; 0x007C
	#data16 {loc_8c1ae524-braf_8c1ae4a0-4} ; 0x0080
	#data16 {loc_8c1ae528-braf_8c1ae4a0-4} ; 0x0084
	#data16 {loc_8c1ae52c-braf_8c1ae4a0-4} ; 0x0088
	#data16 {loc_8c1ae530-braf_8c1ae4a0-4} ; 0x008C
	#data16 {loc_8c1ae534-braf_8c1ae4a0-4} ; 0x0090
	#data16 {loc_8c1ae538-braf_8c1ae4a0-4} ; 0x0094
	#data16 {loc_8c1ae53c-braf_8c1ae4a0-4} ; 0x0098
	#data16 {loc_8c1ae540-braf_8c1ae4a0-4} ; 0x009C
	#data16 {loc_8c1ae544-braf_8c1ae4a0-4} ; 0x00A0
	#data16 {loc_8c1ae548-braf_8c1ae4a0-4} ; 0x00A4
	#data16 {loc_8c1ae54c-braf_8c1ae4a0-4} ; 0x00A8
	#data16 {loc_8c1ae550-braf_8c1ae4a0-4} ; 0x00AC
	#data16 {loc_8c1ae554-braf_8c1ae4a0-4} ; 0x00B0
	#data16 {loc_8c1ae558-braf_8c1ae4a0-4} ; 0x00B4
	#data16 {loc_8c1ae55c-braf_8c1ae4a0-4} ; 0x00B8
	#data16 {loc_8c1ae560-braf_8c1ae4a0-4} ; 0x00BC
	#data16 {loc_8c1ae564-braf_8c1ae4a0-4} ; 0x00C0
	#data16 {loc_8c1ae568-braf_8c1ae4a0-4} ; 0x00C4
	#data16 {loc_8c1ae56c-braf_8c1ae4a0-4} ; 0x00C8
	#data16 {loc_8c1ae570-braf_8c1ae4a0-4} ; 0x00CC
	#data16 {loc_8c1ae574-braf_8c1ae4a0-4} ; 0x00D0
	#data16 {loc_8c1ae578-braf_8c1ae4a0-4} ; 0x00D4
	#data16 {loc_8c1ae57c-braf_8c1ae4a0-4} ; 0x00D8
	#data16 {loc_8c1ae5c8-braf_8c1ae4a0-4} ; 0x0124
	#data16 {loc_8c1ae580-braf_8c1ae4a0-4} ; 0x00DC
	#data16 {loc_8c1ae584-braf_8c1ae4a0-4} ; 0x00E0
	#data16 {loc_8c1ae588-braf_8c1ae4a0-4} ; 0x00E4
	#data16 {loc_8c1ae58c-braf_8c1ae4a0-4} ; 0x00E8
	#data16 {loc_8c1ae590-braf_8c1ae4a0-4} ; 0x00EC
	#data16 {loc_8c1ae594-braf_8c1ae4a0-4} ; 0x00F0
	#data16 {loc_8c1ae598-braf_8c1ae4a0-4} ; 0x00F4
	#data16 {loc_8c1ae59c-braf_8c1ae4a0-4} ; 0x00F8
	#data16 {loc_8c1ae5a0-braf_8c1ae4a0-4} ; 0x00FC
	#data16 {loc_8c1ae5a4-braf_8c1ae4a0-4} ; 0x0100
	#data16 {loc_8c1ae5a8-braf_8c1ae4a0-4} ; 0x0104
	#data16 {loc_8c1ae5ac-braf_8c1ae4a0-4} ; 0x0108
	#data16 {loc_8c1ae5b0-braf_8c1ae4a0-4} ; 0x010C
	#data16 {loc_8c1ae5b4-braf_8c1ae4a0-4} ; 0x0110
	#data16 {loc_8c1ae5b8-braf_8c1ae4a0-4} ; 0x0114
	#data16 {loc_8c1ae5bc-braf_8c1ae4a0-4} ; 0x0118
	#data16 {loc_8c1ae5c0-braf_8c1ae4a0-4} ; 0x011C
	#data16 {loc_8c1ae5c4-braf_8c1ae4a0-4} ; 0x0120

;==============================================
loc_8c1ae508:
	mov.b @(0xE,r4),r0
	extu.b r0,r0
	tst r12,r0
	bt loc_8c1ae514
	bra loc_8c1ae5ca
	mov 0x3E,r14

loc_8c1ae514:
	bra loc_8c1ae5ca
	mov 0x3F,r14

;==============================================
loc_8c1ae518:
	bra loc_8c1ae5c8
	nop 

;==============================================
loc_8c1ae51c:
	bra loc_8c1ae5ca
	mov 0x05,r14

;==============================================
loc_8c1ae520:
	bra loc_8c1ae5ca
	mov 0x0A,r14

;==============================================
loc_8c1ae524:
	bra loc_8c1ae5ca
	mov 0x0B,r14

;==============================================
loc_8c1ae528:
	bra loc_8c1ae5ca
	mov 0x3C,r14

;==============================================
loc_8c1ae52c:
	bra loc_8c1ae5ca
	mov 0x0C,r14

;==============================================
loc_8c1ae530:
	bra loc_8c1ae5ca
	mov 0x3D,r14

;==============================================
loc_8c1ae534:
	bra loc_8c1ae5ca
	mov 0x0D,r14

;==============================================
loc_8c1ae538:
	bra loc_8c1ae5ca
	mov 0x3B,r14

;==============================================
loc_8c1ae53c:
	bra loc_8c1ae5ca
	mov 0x0E,r14

;==============================================
loc_8c1ae540:
	bra loc_8c1ae5ca
	mov 0x42,r14

;==============================================
loc_8c1ae544:
	bra loc_8c1ae5ca
	mov 0x43,r14

;==============================================
loc_8c1ae548:
	bra loc_8c1ae5ca
	mov 0x44,r14

;==============================================
loc_8c1ae54c:
	bra loc_8c1ae5ca
	mov 0x68,r14

;==============================================
loc_8c1ae550:
	bra loc_8c1ae5ca
	mov 0x45,r14

;==============================================
loc_8c1ae554:
	bra loc_8c1ae5ca
	mov 0x69,r14

;==============================================
loc_8c1ae558:
	bra loc_8c1ae5ca
	mov 0x6A,r14

;==============================================
loc_8c1ae55c:
	bra loc_8c1ae5ca
	mov 0x49,r14

;==============================================
loc_8c1ae560:
	bra loc_8c1ae5ca
	mov 0x47,r14

;==============================================
loc_8c1ae564:
	bra loc_8c1ae5ca
	mov 0x6B,r14

;==============================================
loc_8c1ae568:
	bra loc_8c1ae5ca
	mov 0x4A,r14

;==============================================
loc_8c1ae56c:
	bra loc_8c1ae5ca
	mov 0x48,r14

;==============================================
loc_8c1ae570:
	bra loc_8c1ae5ca
	mov 0x6C,r14

;==============================================
loc_8c1ae574:
	bra loc_8c1ae5ca
	mov 0x4B,r14

;==============================================
loc_8c1ae578:
	bra loc_8c1ae5ca
	mov 0x6D,r14

;==============================================
loc_8c1ae57c:
	bra loc_8c1ae5ca
	mov 0x4C,r14

;==============================================
loc_8c1ae580:
	bra loc_8c1ae5ca
	mov 0x6E,r14

;==============================================
loc_8c1ae584:
	bra loc_8c1ae5ca
	mov 0x4E,r14

;==============================================
loc_8c1ae588:
	bra loc_8c1ae5ca
	mov 0x6F,r14

;==============================================
loc_8c1ae58c:
	bra loc_8c1ae5ca
	mov 0x50,r14

;==============================================
loc_8c1ae590:
	bra loc_8c1ae5ca
	mov 0x70,r14

;==============================================
loc_8c1ae594:
	bra loc_8c1ae5ca
	mov 0x51,r14

;==============================================
loc_8c1ae598:
	bra loc_8c1ae5ca
	mov 0x71,r14

;==============================================
loc_8c1ae59c:
	bra loc_8c1ae5ca
	mov 0x59,r14

;==============================================
loc_8c1ae5a0:
	bra loc_8c1ae5ca
	mov 0x72,r14

;==============================================
loc_8c1ae5a4:
	bra loc_8c1ae5ca
	mov 0x14,r14

;==============================================
loc_8c1ae5a8:
	bra loc_8c1ae5ca
	mov 0x73,r14

;==============================================
loc_8c1ae5ac:
	bra loc_8c1ae5ca
	mov 0x5D,r14

;==============================================
loc_8c1ae5b0:
	bra loc_8c1ae5ca
	mov 0x74,r14

;==============================================
loc_8c1ae5b4:
	bra loc_8c1ae5ca
	mov 0x5E,r14

;==============================================
loc_8c1ae5b8:
	bra loc_8c1ae5ca
	mov 0x75,r14

;==============================================
loc_8c1ae5bc:
	bra loc_8c1ae5ca
	mov 0x5F,r14

;==============================================
loc_8c1ae5c0:
	bra loc_8c1ae5ca
	mov 0x76,r14

;==============================================
loc_8c1ae5c4:
	bra loc_8c1ae5ca
	mov 0x1B,r14

;==============================================
loc_8c1ae5c8:
	mov r6,r14

loc_8c1ae5ca:
	mov.l @(loc_8C1AE5EC,pc),r13
	mov r13,r2
	add 0x20,r2
	mov.b @r2,r3
	extu.b r3,r3
	tst r5,r3
	bf/s loc_8c1ae5e2
	mov r13,r6
	mov.b @(0x0A,r6),r0
	extu.b r0,r0
	tst 0x10,r0
	bt loc_8c1ae5f0

loc_8c1ae5e2:
	mov 0x00,r5
	bsr loc_8c1aed24
	mov r14,r4
	bra loc_8c1ae782
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8C1AE5EC:
	#data 0x8C34B288

;==============================================
loc_8c1ae5f0:
	mov r4,r3
	add 0x18,r3
	mov r15,r10
	add 0x14,r10
	mov 0x00,r9
	mov.l r10,@r15
	mov.b @r3,r2
	mov.l @(loc_8c1ae694,pc),r6
	extu.b r2,r2
	tst r5,r2
	bf/s loc_8c1ae686
	mov 0x20,r11
	add 0x18,r4
	mov.b @r4,r2
	extu.b r2,r2
	tst r11,r2
	bt loc_8c1ae67c
	mov r13,r1
	add 0x1B,r1
	mov.b @r1,r3
	extu.b r3,r3
	tst r12,r3
	bt loc_8c1ae646
	mov.w @(loc_8C1AE68E,pc),r0
	bra loc_8c1ae62e
	mov.l @(r0,r6),r4

loc_8c1ae624:
	mov.l @r15,r2
	add 0x01,r2
	mov.l r2,@r15
	mov.b @r4+,r3
	mov.b r3,@-r2

loc_8c1ae62e:
	mov.b @r4,r2
	tst r2,r2
	bf loc_8c1ae624
	bsr loc_8c1ae796
	mov r15,r4
	mov.l @r15,r3
	mov r10,r5
	mov.b r9,@r3
	bsr loc_8c1aed24
	mov 0x4D,r4
	bra loc_8c1ae67c
	nop

loc_8c1ae646:
	add 0x1D,r13
	mov.b @r13,r3
	extu.b r3,r3
	tst r11,r3
	bt loc_8c1ae674
	mov.w @(loc_8C1AE690,pc),r0
	bra loc_8c1ae660
	mov.l @(r0,r6),r4

loc_8c1ae656:
	mov.l @r15,r2
	add 0x01,r2
	mov.l r2,@r15
	mov.b @r4+,r3
	mov.b r3,@-r2

loc_8c1ae660:
	mov.b @r4,r2
	tst r2,r2
	bf loc_8c1ae656
	bsr loc_8c1ae7c2
	mov r15,r4
	mov.l @r15,r3
	mov r10,r5
	mov.b r9,@r3
	bra loc_8c1ae678
	mov 0x4F,r4

loc_8c1ae674:
	mov 0x46,r4
	mov 0x00,r5

loc_8c1ae678:
	bsr loc_8c1aed24
	nop

loc_8c1ae67c:
	bsr loc_8c1ae84e
	nop
	mov r0,r4
	bra loc_8c1ae77e
	mov 0x00,r5

loc_8c1ae686:
	extu.b r14,r0
	shll2 r0
	bra loc_8c1ae6a2
	mov.l @(r0,r6),r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1AE68E:
	#data 0x0134
loc_8C1AE690:
	#data 0x013C
	#align4

loc_8c1ae694:
	#data bank1c.loc_8c1c71e8

;==============================================
loc_8c1ae698:
	mov.l @r15,r2
	add 0x01,r2
	mov.l r2,@r15
	mov.b @r5+,r3
	mov.b r3,@-r2
	
loc_8c1ae6a2:
	mov.b @r5,r2
	tst r2,r2
	bf loc_8c1ae698
	add 0x18,r4
	mov.b @r4,r2
	extu.b r2,r2
	tst r11,r2
	bt loc_8c1ae6f6
	mov.l @(loc_8c1ae86c,pc),r1
	jsr @r1
	nop
	mov.b r0,@(0x04,r15)
	extu.b r0,r0
	tst r0,r0
	bt loc_8c1ae6f6
	mov.l @r15,r2
	mov r15,r8
	mov 0x2F,r3
	add 0x01,r2
	mov.l r2,@r15
	add 0x08,r8
	mov.b r3,@-r2
	mov.b @(0x04,r15),r0
	bsr loc_8c1aee58
	mov r0,r4
	mov.l r0,@-r15
	mov.l @(loc_8c1ae870,pc),r2
	mov.l r2,@-r15
	mov.l @(loc_8c1ae874,pc),r3
	jsr @r3
	mov r8,r4
	mov.l @(loc_8c1ae878,pc),r2
	mov r8,r1
	add 0x08,r15
	jsr @r2
	mov.l @r15,r0
	mov.l @(loc_8c1ae87c,pc),r3
	jsr @r3
	mov r8,r4
	mov.l @r15,r2
	add r0,r2
	mov.l r2,@r15

loc_8c1ae6f6:
	mov r13,r3
	add 0x1B,r3
	mov.b @r3,r2
	extu.b r2,r2
	tst r12,r2
	bf/s loc_8c1ae712
	mov r13,r4
	mov r4,r0
	nop
	add 0x1D,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x20,r0
	bt loc_8c1ae776

loc_8c1ae712:
	mov.l @r15,r2
	mov 0x2F,r3
	add 0x1B,r13
	add 0x01,r2
	mov.l r2,@r15
	mov.b r3,@-r2
	mov.b @r13,r2
	extu.b r2,r2
	tst r12,r2
	bt loc_8c1ae74c
	mov.l @r15,r1
	mov 0x56,r3
	add 0x01,r1
	mov.l r1,@r15
	mov.b r3,@-r1
	mov 0x34,r3
	mov.l @r15,r2
	add 0x01,r2
	mov.l r2,@r15
	mov.b r3,@-r2
	mov 0x32,r3
	mov.l @r15,r2
	add 0x01,r2
	mov.l r2,@r15
	mov.b r3,@-r2
	bsr loc_8c1ae796
	mov r15,r4
	bra loc_8c1ae776
	nop

loc_8c1ae74c:
	mov.l @r15,r2
	mov 0x52,r3
	add 0x01,r2
	mov.l r2,@r15
	mov.b r3,@-r2
	mov 0x45,r3
	mov.l @r15,r2
	add 0x01,r2
	mov.l r2,@r15
	mov.b r3,@-r2
	mov 0x4C,r3
	mov.l @r15,r2
	add 0x01,r2
	mov.l r2,@r15
	mov.b r3,@-r2
	mov.l @r15,r2
	add 0x01,r2
	mov.l r2,@r15
	mov.b r11,@-r2
	bsr loc_8c1ae7c2
	mov r15,r4

loc_8c1ae776:
	mov.l @r15,r2
	mov r14,r4
	mov r10,r5
	mov.b r9,@r2

loc_8c1ae77e:
	bsr loc_8c1aed24
	nop

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

;==============================================
loc_8c1AE796:
	mov.l @(0xE8,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c1ae7be
	mov.l @r4,r2
	mov 0x42,r3
	add 0x01,r2
	mov.l r2,@r4
	mov.b r3,@-r2
	mov 0x49,r3
	mov.l @r4,r2
	add 0x01,r2
	mov.l r2,@r4
	mov.b r3,@-r2
	mov 0x53,r3
	mov.l @r4,r2
	add 0x01,r2
	mov.l r2,@r4
	mov.b r3,@-r2

loc_8c1AE7BE:
	rts 
	nop 

;==============================================
loc_8c1AE7C2:
	mov.l @(0xC0,PC),r7
	mov 0x01,r6
	mov r7,r3
	add 0x1D,r3
	mov.b @r3,r2
	extu.b r2,r2
	tst r6,r2
	bf.s loc_8c1ae7ea
	mov 0x20,r5
	mov.l @r4,r1
	add 0x01,r1
	mov.l r1,@r4
	mov.b r5,@-r1
	mov.l @r4,r3
	add 0x01,r3
	mov.l r3,@r4
	mov.l @(0xA4,PC),r2
	mov.b @r2,r1
	add 0x30,r1
	mov.b r1,@-r3

loc_8c1AE7EA:
	add 0x1D,r7
	mov.b @r7,r3
	extu.b r3,r3
	tst r6,r3
	bt loc_8c1ae84a
	mov 0x2D,r2
	mov.l @r4,r1
	add 0x01,r1
	mov.l r1,@r4
	mov.b r5,@-r1
	mov.l @r4,r3
	add 0x01,r3
	mov.l r3,@r4
	mov.b r2,@-r3
	mov.l @r4,r3
	add 0x01,r3
	mov.l r3,@r4
	mov.b r5,@-r3
	mov 0x56,r3
	mov.l @r4,r2
	add 0x01,r2
	mov.l r2,@r4
	mov.b r3,@-r2
	mov 0x34,r3
	mov.l @r4,r2
	add 0x01,r2
	mov.l r2,@r4
	mov.b r3,@-r2
	mov 0x32,r3
	mov.l @r4,r2
	add 0x01,r2
	mov.l r2,@r4
	mov.b r3,@-r2
	mov 0x42,r3
	mov.l @r4,r2
	add 0x01,r2
	mov.l r2,@r4
	mov.b r3,@-r2
	mov 0x49,r3
	mov.l @r4,r2
	add 0x01,r2
	mov.l r2,@r4
	mov.b r3,@-r2
	mov 0x53,r3
	mov.l @r4,r2
	add 0x01,r2
	mov.l r2,@r4
	mov.b r3,@-r2

loc_8c1AE84A:
	rts 
	nop 

;==============================================
loc_8c1AE84E:
	mov.l @(0x3C,PC),r0
	sts.l pr,@-r15
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c1ae898
	mov.l @(0x34,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x10,r0
	bf loc_8c1ae898
	mov.l @(0x2C,PC),r2
	bra loc_8c1ae8a2
	mov.b @r2,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
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
loc_8c1AE880:
	#data 0x8C34B2A5
loc_8c1AE884:
	#data 0x8C34B288
loc_8c1AE888:
	#data 0x8C34AF7C
loc_8c1AE88c:
	#data 0x8C34AF68
loc_8c1AE890:
	#data 0x8C34B292
loc_8c1AE894:
	#data 0x8C34B140

;==============================================
loc_8c1AE898:
	mov.l @(loc_8c1ae8c0,PC),r3
	mov.l @(loc_8c1ae8bc,PC),r1
	jsr @r3
	mov.b @r1,r4
	mov r0,r4

loc_8c1AE8A2:
	extu.b r4,r0
	add 0xFF,r0
	mov 0x3B,r1
	cmp/hs r1,r0
	bf loc_8c1ae8b0
	bra loc_8c1aea76
	nop 

loc_8c1AE8B0:
	shll r0
	mov r0,r1
	mova @(loc_8c1ae8c4,PC),r0
	mov.w @(r0,r1),r0

braf_8c1ae8b8:
	braf r0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1ae8bc:
	#data 0x8c34b0fe
loc_8c1AE8C0:
	#data loc_8c1A0E86

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1ae8c4:
	#data16 {loc_8c1ae93a-braf_8c1ae8b8-4} ; 0x007E
	#data16 {loc_8c1ae93e-braf_8c1ae8b8-4} ; 0x0082
	#data16 {loc_8c1ae944-braf_8c1ae8b8-4} ; 0x0088
	#data16 {loc_8c1ae94a-braf_8c1ae8b8-4} ; 0x008E
	#data16 {loc_8c1ae950-braf_8c1ae8b8-4} ; 0x0094
	#data16 {loc_8c1ae956-braf_8c1ae8b8-4} ; 0x009A
	#data16 {loc_8c1ae95c-braf_8c1ae8b8-4} ; 0x00A0
	#data16 {loc_8c1ae962-braf_8c1ae8b8-4} ; 0x00A6
	#data16 {loc_8c1ae968-braf_8c1ae8b8-4} ; 0x00AC
	#data16 {loc_8c1ae96e-braf_8c1ae8b8-4} ; 0x00B2
	#data16 {loc_8c1ae974-braf_8c1ae8b8-4} ; 0x00B8
	#data16 {loc_8c1ae97a-braf_8c1ae8b8-4} ; 0x00BE
	#data16 {loc_8c1ae980-braf_8c1ae8b8-4} ; 0x00C4
	#data16 {loc_8c1ae986-braf_8c1ae8b8-4} ; 0x00CA
	#data16 {loc_8c1ae98c-braf_8c1ae8b8-4} ; 0x00D0
	#data16 {loc_8c1ae992-braf_8c1ae8b8-4} ; 0x00D6
	#data16 {loc_8c1ae998-braf_8c1ae8b8-4} ; 0x00DC
	#data16 {loc_8c1ae99e-braf_8c1ae8b8-4} ; 0x00E2
	#data16 {loc_8c1ae9a4-braf_8c1ae8b8-4} ; 0x00E8
	#data16 {loc_8c1ae9aa-braf_8c1ae8b8-4} ; 0x00EE
	#data16 {loc_8c1ae9b0-braf_8c1ae8b8-4} ; 0x00F4
	#data16 {loc_8c1ae9b6-braf_8c1ae8b8-4} ; 0x00FA
	#data16 {loc_8c1ae9bc-braf_8c1ae8b8-4} ; 0x0100
	#data16 {loc_8c1ae9c2-braf_8c1ae8b8-4} ; 0x0106
	#data16 {loc_8c1ae9c8-braf_8c1ae8b8-4} ; 0x010C
	#data16 {loc_8c1ae9ce-braf_8c1ae8b8-4} ; 0x0112
	#data16 {loc_8c1ae9d4-braf_8c1ae8b8-4} ; 0x0118
	#data16 {loc_8c1ae9da-braf_8c1ae8b8-4} ; 0x011E
	#data16 {loc_8c1ae9e0-braf_8c1ae8b8-4} ; 0x0124
	#data16 {loc_8c1ae9e6-braf_8c1ae8b8-4} ; 0x012A
	#data16 {loc_8c1ae9ec-braf_8c1ae8b8-4} ; 0x0130
	#data16 {loc_8c1ae9f2-braf_8c1ae8b8-4} ; 0x0136
	#data16 {loc_8c1ae9f8-braf_8c1ae8b8-4} ; 0x013C
	#data16 {loc_8c1ae9fe-braf_8c1ae8b8-4} ; 0x0142
	#data16 {loc_8c1aea04-braf_8c1ae8b8-4} ; 0x0148
	#data16 {loc_8c1aea0a-braf_8c1ae8b8-4} ; 0x014E
	#data16 {loc_8c1aea10-braf_8c1ae8b8-4} ; 0x0154
	#data16 {loc_8c1aea16-braf_8c1ae8b8-4} ; 0x015A
	#data16 {loc_8c1aea1c-braf_8c1ae8b8-4} ; 0x0160
	#data16 {loc_8c1aea22-braf_8c1ae8b8-4} ; 0x0166
	#data16 {loc_8c1aea28-braf_8c1ae8b8-4} ; 0x016C
	#data16 {loc_8c1aea2e-braf_8c1ae8b8-4} ; 0x0172
	#data16 {loc_8c1aea34-braf_8c1ae8b8-4} ; 0x0178
	#data16 {loc_8c1aea3a-braf_8c1ae8b8-4} ; 0x017E
	#data16 {loc_8c1aea40-braf_8c1ae8b8-4} ; 0x0184
	#data16 {loc_8c1aea46-braf_8c1ae8b8-4} ; 0x018A
	#data16 {loc_8c1aea4c-braf_8c1ae8b8-4} ; 0x0190
	#data16 {loc_8c1aea76-braf_8c1ae8b8-4} ; 0x01BA
	#data16 {loc_8c1aea76-braf_8c1ae8b8-4} ; 0x01BA
	#data16 {loc_8c1aea76-braf_8c1ae8b8-4} ; 0x01BA
	#data16 {loc_8c1aea52-braf_8c1ae8b8-4} ; 0x0196
	#data16 {loc_8c1aea58-braf_8c1ae8b8-4} ; 0x019C
	#data16 {loc_8c1aea5e-braf_8c1ae8b8-4} ; 0x01A2
	#data16 {loc_8c1aea64-braf_8c1ae8b8-4} ; 0x01A8
	#data16 {loc_8c1aea76-braf_8c1ae8b8-4} ; 0x01BA
	#data16 {loc_8c1aea6a-braf_8c1ae8b8-4} ; 0x01AE
	#data16 {loc_8c1aea76-braf_8c1ae8b8-4} ; 0x01BA
	#data16 {loc_8c1aea76-braf_8c1ae8b8-4} ; 0x01BA
	#data16 {loc_8c1aea70-braf_8c1ae8b8-4} ; 0x01B4

;==============================================
loc_8c1ae93a:
	bra loc_8c1aea76
	nop 

;==============================================
loc_8c1ae93e:
	lds.l @r15+,pr
	rts 
	mov 0x05,r0

;==============================================
loc_8c1ae944:
	lds.l @r15+,pr
	rts 
	mov 0x0A,r0

;==============================================
loc_8c1ae94a:
	lds.l @r15+,pr
	rts 
	mov 0x0B,r0

;==============================================
loc_8c1ae950:
	lds.l @r15+,pr
	rts 
	mov 0x3C,r0

;==============================================
loc_8c1ae956:
	lds.l @r15+,pr
	rts 
	mov 0x0C,r0

;==============================================
loc_8c1ae95c:
	lds.l @r15+,pr
	rts 
	mov 0x3D,r0

;==============================================
loc_8c1ae962:
	lds.l @r15+,pr
	rts 
	mov 0x0D,r0

;==============================================
loc_8c1ae968:
	lds.l @r15+,pr
	rts 
	mov 0x3B,r0

;==============================================
loc_8c1ae96e:
	lds.l @r15+,pr
	rts 
	mov 0x0E,r0

;==============================================
loc_8c1ae974:
	lds.l @r15+,pr
	rts 
	mov 0x42,r0

;==============================================
loc_8c1ae97a:
	lds.l @r15+,pr
	rts 
	mov 0x43,r0

;==============================================
loc_8c1ae980:
	lds.l @r15+,pr
	rts 
	mov 0x44,r0

;==============================================
loc_8c1ae986:
	lds.l @r15+,pr
	rts 
	mov 0x68,r0

;==============================================
loc_8c1ae98c:
	lds.l @r15+,pr
	rts 
	mov 0x45,r0

;==============================================
loc_8c1ae992:
	lds.l @r15+,pr
	rts 
	mov 0x69,r0

;==============================================
loc_8c1ae998:
	lds.l @r15+,pr
	rts 
	mov 0x6A,r0

;==============================================
loc_8c1ae99e:
	lds.l @r15+,pr
	rts 
	mov 0x49,r0

;==============================================
loc_8c1ae9a4:
	lds.l @r15+,pr
	rts 
	mov 0x47,r0

;==============================================
loc_8c1ae9aa:
	lds.l @r15+,pr
	rts 
	mov 0x6B,r0

;==============================================
loc_8c1ae9b0:
	lds.l @r15+,pr
	rts 
	mov 0x4A,r0

;==============================================
loc_8c1ae9b6:
	lds.l @r15+,pr
	rts 
	mov 0x48,r0

;==============================================
loc_8c1ae9bc:
	lds.l @r15+,pr
	rts 
	mov 0x6C,r0

;==============================================
loc_8c1ae9c2:
	lds.l @r15+,pr
	rts 
	mov 0x4B,r0

;==============================================
loc_8c1ae9c8:
	lds.l @r15+,pr
	rts 
	mov 0x6D,r0

;==============================================
loc_8c1ae9ce:
	lds.l @r15+,pr
	rts 
	mov 0x4C,r0

;==============================================
loc_8c1ae9d4:
	lds.l @r15+,pr
	rts 
	mov 0x0F,r0

;==============================================
loc_8c1ae9da:
	lds.l @r15+,pr
	rts 
	mov 0x6E,r0

;==============================================
loc_8c1ae9e0:
	lds.l @r15+,pr
	rts 
	mov 0x4E,r0

;==============================================
loc_8c1ae9e6:
	lds.l @r15+,pr
	rts 
	mov 0x6F,r0

;==============================================
loc_8c1ae9ec:
	lds.l @r15+,pr
	rts 
	mov 0x50,r0

;==============================================
loc_8c1ae9f2:
	lds.l @r15+,pr
	rts 
	mov 0x70,r0

;==============================================
loc_8c1ae9f8:
	lds.l @r15+,pr
	rts 
	mov 0x51,r0

;==============================================
loc_8c1ae9fe:
	lds.l @r15+,pr
	rts 
	mov 0x71,r0

;==============================================
loc_8c1aea04:
	lds.l @r15+,pr
	rts 
	mov 0x59,r0

;==============================================
loc_8c1aea0a:
	lds.l @r15+,pr
	rts 
	mov 0x72,r0

;==============================================
loc_8c1aea10:
	lds.l @r15+,pr
	rts 
	mov 0x14,r0

;==============================================
loc_8c1aea16:
	lds.l @r15+,pr
	rts 
	mov 0x73,r0

;==============================================
loc_8c1aea1c:
	lds.l @r15+,pr
	rts 
	mov 0x5D,r0

;==============================================
loc_8c1aea22:
	lds.l @r15+,pr
	rts 
	mov 0x74,r0

;==============================================
loc_8c1aea28:
	lds.l @r15+,pr
	rts 
	mov 0x5E,r0

;==============================================
loc_8c1aea2e:
	lds.l @r15+,pr
	rts 
	mov 0x75,r0

;==============================================
loc_8c1aea34:
	lds.l @r15+,pr
	rts 
	mov 0x5F,r0

;==============================================
loc_8c1aea3a:
	lds.l @r15+,pr
	rts 
	mov 0x76,r0

;==============================================
loc_8c1aea40:
	lds.l @r15+,pr
	rts 
	mov 0x1B,r0

;==============================================
loc_8c1aea46:
	lds.l @r15+,pr
	rts 
	mov 0x10,r0

;==============================================
loc_8c1aea4c:
	lds.l @r15+,pr
	rts 
	mov 0x15,r0

;==============================================
loc_8c1aea52:
	lds.l @r15+,pr
	rts 
	mov 0x11,r0

;==============================================
loc_8c1aea58:
	lds.l @r15+,pr
	rts 
	mov 0x60,r0

;==============================================
loc_8c1aea5e:
	lds.l @r15+,pr
	rts 
	mov 0x13,r0

;==============================================
loc_8c1aea64:
	lds.l @r15+,pr
	rts 
	mov 0x18,r0

;==============================================
loc_8c1aea6a:
	lds.l @r15+,pr
	rts 
	mov 0x19,r0

;==============================================
loc_8c1aea70:
	lds.l @r15+,pr
	rts 
	mov 0x1A,r0

;==============================================
loc_8c1AEA76:
	mov 0x01,r0
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
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

braf_8c1aeae4:
	braf r0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1AEAE8:
	#data 0x8C34B039
loc_8c1AEAEC:
	#data 0x8C34AF68
loc_8c1AEAF0:
	#data 0x8C34B2A8
loc_8c1AEAF4:
	#data 0x8C34B292
loc_8c1AEAF8:
	#data 0x8C34B0FE

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1AEAFC:
	#data16 {loc_8c1aeb58-braf_8c1aeae4-4} ; 0x0070
	#data16 {loc_8c1aeb6a-braf_8c1aeae4-4} ; 0x0082
	#data16 {loc_8c1aeb6e-braf_8c1aeae4-4} ; 0x0086
	#data16 {loc_8c1aeb72-braf_8c1aeae4-4} ; 0x008A
	#data16 {loc_8c1aeb76-braf_8c1aeae4-4} ; 0x008E
	#data16 {loc_8c1aeb7a-braf_8c1aeae4-4} ; 0x0092
	#data16 {loc_8c1aeb7e-braf_8c1aeae4-4} ; 0x0096
	#data16 {loc_8c1aeb82-braf_8c1aeae4-4} ; 0x009A
	#data16 {loc_8c1aeb86-braf_8c1aeae4-4} ; 0x009E
	#data16 {loc_8c1aeb8a-braf_8c1aeae4-4} ; 0x00A2
	#data16 {loc_8c1aeb8e-braf_8c1aeae4-4} ; 0x00A6
	#data16 {loc_8c1aeb92-braf_8c1aeae4-4} ; 0x00AA
	#data16 {loc_8c1aeb96-braf_8c1aeae4-4} ; 0x00AE
	#data16 {loc_8c1aeb9a-braf_8c1aeae4-4} ; 0x00B2
	#data16 {loc_8c1aeb9e-braf_8c1aeae4-4} ; 0x00B6
	#data16 {loc_8c1aeba2-braf_8c1aeae4-4} ; 0x00BA
	#data16 {loc_8c1aeba6-braf_8c1aeae4-4} ; 0x00BE
	#data16 {loc_8c1aebaa-braf_8c1aeae4-4} ; 0x00C2
	#data16 {loc_8c1aebae-braf_8c1aeae4-4} ; 0x00C6
	#data16 {loc_8c1aebb2-braf_8c1aeae4-4} ; 0x00CA
	#data16 {loc_8c1aebb6-braf_8c1aeae4-4} ; 0x00CE
	#data16 {loc_8c1aebba-braf_8c1aeae4-4} ; 0x00D2
	#data16 {loc_8c1aebbe-braf_8c1aeae4-4} ; 0x00D6
	#data16 {loc_8c1aebc2-braf_8c1aeae4-4} ; 0x00DA
	#data16 {loc_8c1aebc6-braf_8c1aeae4-4} ; 0x00DE
	#data16 {loc_8c1aebca-braf_8c1aeae4-4} ; 0x00E2
	#data16 {loc_8c1aebce-braf_8c1aeae4-4} ; 0x00E6
	#data16 {loc_8c1aec30-braf_8c1aeae4-4} ; 0x0148
	#data16 {loc_8c1aebd2-braf_8c1aeae4-4} ; 0x00EA
	#data16 {loc_8c1aebd6-braf_8c1aeae4-4} ; 0x00EE
	#data16 {loc_8c1aebda-braf_8c1aeae4-4} ; 0x00F2
	#data16 {loc_8c1aebde-braf_8c1aeae4-4} ; 0x00F6
	#data16 {loc_8c1aebe2-braf_8c1aeae4-4} ; 0x00FA
	#data16 {loc_8c1aebe6-braf_8c1aeae4-4} ; 0x00FE
	#data16 {loc_8c1aebea-braf_8c1aeae4-4} ; 0x0102
	#data16 {loc_8c1aebee-braf_8c1aeae4-4} ; 0x0106
	#data16 {loc_8c1aebf2-braf_8c1aeae4-4} ; 0x010A
	#data16 {loc_8c1aebf8-braf_8c1aeae4-4} ; 0x0110
	#data16 {loc_8c1aebfc-braf_8c1aeae4-4} ; 0x0114
	#data16 {loc_8c1aec02-braf_8c1aeae4-4} ; 0x011A
	#data16 {loc_8c1aec06-braf_8c1aeae4-4} ; 0x011E
	#data16 {loc_8c1aec0c-braf_8c1aeae4-4} ; 0x0124
	#data16 {loc_8c1aec1c-braf_8c1aeae4-4} ; 0x0134
	#data16 {loc_8c1aec22-braf_8c1aeae4-4} ; 0x013A
	#data16 {loc_8c1aec26-braf_8c1aeae4-4} ; 0x013E
	#data16 {loc_8c1aec2c-braf_8c1aeae4-4} ; 0x0144

;==============================================
loc_8c1aeb58:
	mov.l @(0xBC,PC),r3
	mov.b @r3,r1
	extu.b r1,r1
	tst r6,r1
	bt loc_8c1aeb66
	bra loc_8c1aec32
	mov r5,r4

loc_8c1aeb66:
	bra loc_8c1aec32
	mov 0x41,r4

;==============================================
loc_8c1aeb6a:
	bra loc_8c1aec32
	mov 0x28,r4

;==============================================
loc_8c1aeb6e:
	bra loc_8c1aec32
	mov 0x2E,r4

;==============================================
loc_8c1aeb72:
	bra loc_8c1aec30
	nop 

;==============================================
loc_8c1aeb76:
	bra loc_8c1aec32
	mov 0x30,r4

;==============================================
loc_8c1aeb7a:
	bra loc_8c1aec32
	mov 0x31,r4

;==============================================
loc_8c1aeb7e:
	bra loc_8c1aec32
	mov 0x32,r4

;==============================================
loc_8c1aeb82:
	bra loc_8c1aec32
	mov 0x33,r4

;==============================================
loc_8c1aeb86:
	bra loc_8c1aec32
	mov 0x34,r4

;==============================================
loc_8c1aeb8a:
	bra loc_8c1aec32
	mov 0x35,r4

;==============================================
loc_8c1aeb8e:
	bra loc_8c1aec32
	mov 0x36,r4

;==============================================
loc_8c1aeb92:
	bra loc_8c1aec32
	mov 0x37,r4

;==============================================
loc_8c1aeb96:
	bra loc_8c1aec32
	mov 0x38,r4

;==============================================
loc_8c1aeb9a:
	bra loc_8c1aec32
	mov 0x39,r4

;==============================================
loc_8c1aeb9e:
	bra loc_8c1aec32
	mov 0x77,r4

;==============================================
loc_8c1aeba2:
	bra loc_8c1aec32
	mov 0x3A,r4

;==============================================
loc_8c1aeba6:
	bra loc_8c1aec32
	mov 0x78,r4

;==============================================
loc_8c1aebaa:
	bra loc_8c1aec32
	mov 0x79,r4

;==============================================
loc_8c1aebae:
	bra loc_8c1aec32
	mov 0x55,r4

;==============================================
loc_8c1aebb2:
	bra loc_8c1aec32
	mov 0x23,r4

;==============================================
loc_8c1aebb6:
	bra loc_8c1aec32
	mov 0x7A,r4

;==============================================
loc_8c1aebba:
	bra loc_8c1aec32
	mov 0x56,r4

;==============================================
loc_8c1aebbe:
	bra loc_8c1aec32
	mov 0x24,r4

;==============================================
loc_8c1aebc2:
	bra loc_8c1aec32
	mov 0x7B,r4

;==============================================
loc_8c1aebc6:
	bra loc_8c1aec32
	mov 0x25,r4

;==============================================
loc_8c1aebca:
	bra loc_8c1aec32
	mov 0x7C,r4

;==============================================
loc_8c1aebce:
	bra loc_8c1aec32
	mov 0x26,r4

;==============================================
loc_8c1aebd2:
	bra loc_8c1aec32
	mov 0x7D,r4

;==============================================
loc_8c1aebd6:
	bra loc_8c1aec32
	mov 0x27,r4

;==============================================
loc_8c1aebda:
	bra loc_8c1aec32
	mov 0x7E,r4

;==============================================
loc_8c1aebde:
	bra loc_8c1aec32
	mov 0x2B,r4

;==============================================
loc_8c1aebe2:
	bra loc_8c1aec32
	mov 0x7F,r4

;==============================================
loc_8c1aebe6:
	bra loc_8c1aec32
	mov 0x2C,r4

;==============================================
loc_8c1aebea:
	bra loc_8c1aec32
	mov r6,r4

;==============================================
loc_8c1aebee:
	bra loc_8c1aec32
	mov 0x2D,r4

;==============================================
loc_8c1aebf2:
	mov.w @(0x1A,PC),r4
	bra loc_8c1aec32
	nop 

;==============================================
loc_8c1aebf8:
	bra loc_8c1aec32
	mov 0x1F,r4

;==============================================
loc_8c1aebfc:
	mov.w @(0x12,PC),r4
	bra loc_8c1aec32
	nop 

;==============================================
loc_8c1aec02:
	bra loc_8c1aec32
	mov 0x17,r4

;==============================================
loc_8c1aec06:
	mov.w @(0xA,PC),r4
	bra loc_8c1aec32
	nop 

;==============================================
loc_8c1aec0c:
	bra loc_8c1aec32
	mov 0x1C,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1aec10:
	#data 0x0081
loc_8c1aec12:
	#data 0x0082
loc_8c1aec14:
	#data 0x0083
	#align4

loc_8c1aec18:
	#data 0x8c34af5e

;==============================================
loc_8c1aec1c:
	mov.w @(0xDA,PC),r4
	bra loc_8c1aec32
	nop 

;==============================================
loc_8c1aec22:
	bra loc_8c1aec32
	mov 0x1D,r4

;==============================================
loc_8c1aec26:
	mov.w @(0xD2,PC),r4
	bra loc_8c1aec32
	nop 

;==============================================
loc_8c1aec2c:
	bra loc_8c1aec32
	mov 0x20,r4

;==============================================
loc_8c1AEC30:
	mov r7,r4

loc_8c1AEC32:
	bra loc_8c1AED24
	mov 0x00,r5

loc_8c1AEC36:
	rts
	nop

;==============================================
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

;==============================================
loc_8c1aec5a:
	mov.b @r4,r7
	mov 0x01,r3
	extu.b r7,r6
	tst r6,r3
	bt/s loc_8c1aec68
	mov 0x00,r5
	add 0x01,r5

loc_8c1aec68:
	mov 0x02,r3
	tst r6,r3
	bt/s loc_8c1aec72
	mov 0x04,r3
	add 0x01,r5

loc_8c1aec72:
	tst r6,r3
	bt/s loc_8c1aec7a
	mov 0x08,r3
	add 0x01,r5

loc_8c1aec7a:
	tst r6,r3
	bt/s loc_8c1aec82
	mov 0x10,r3
	add 0x01,r5

loc_8c1aec82:
	tst r6,r3
	bt/s loc_8c1aec8a
	mov 0x20,r3
	add 0x01,r5

loc_8c1aec8a:
	tst r6,r3
	bt/s loc_8c1aec92
	mov 0x40,r3
	add 0x01,r5

loc_8c1aec92:
	tst r6,r3
	bt loc_8c1aec98
	add 0x01,r5

loc_8c1aec98:
	mov.w @(loc_8C1AECFE,pc),r3
	tst r3,r6
	bt/s loc_8c1aeca2
	mov 0x01,r3
	add 0x01,r5

loc_8c1aeca2:
	mov.l @(loc_8C1AED04,pc),r2
	mov.b @r2,r0
	extu.b r0,r0
	cmp/eq 0x0C,r0
	bt/s loc_8c1aecba
	and r3,r5
	cmp/eq 0x0D,r0
	bt loc_8c1aecc4
	cmp/eq 0x28,r0
	bt loc_8c1aecd2
	bra loc_8c1aecd8
	nop

loc_8c1aecba:
	extu.b r5,r5
	tst r5,r5
	bf loc_8c1aecca
	bra loc_8c1aecd8
	nop

loc_8c1aecc4:
	extu.b r5,r5
	tst r5,r5
	bf loc_8c1aecd8

loc_8c1aecca:
	mov.b @r4,r0
	or 0x80,r0
	bra loc_8c1aecd8
	mov.b r0,@r4

loc_8c1aecd2:
	mov.b @r4,r0
	or 0x80,r0
	mov.b r0,@r4

loc_8c1aecd8:
	rts
	nop

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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1aecfa:
	#data 0x0084
loc_8c1aecfc:
	#data 0x0085
loc_8c1aecfe:
	#data 0x0080
	#align4

loc_8c1AED00:
	#data loc_8c1A1120
loc_8c1aed04:
	#data 0x8C34B141
loc_8c1AED08:
	#data loc_8c1AFE8A

;==============================================
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

;==============================================
loc_8c1aed24:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l @(loc_8C1AEDEC,pc),r11
	sts.l pr,@-r15
	mov r11,r4
	add 0x0E,r4
	mov.b @r4,r0
	add 0xFC,r15
	extu.b r0,r0
	tst 0x04,r0
	bf/s loc_8c1aedda
	mov r5,r14
	mov.b @r4,r5
	mov 0x10,r2
	mov.l @(loc_8C1AEDF0,pc),r12
	extu.b r5,r5
	tst r5,r2
	bt loc_8c1aed70
	mov.l @(loc_8C1AEDF4,pc),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x40,r0
	bf loc_8c1aed68
	mov.w @(loc_8C1AEDE8,pc),r2
	tst r5,r2
	bf loc_8c1aed70
	mov.l @(loc_8C1AEDF8,pc),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x08,r0
	bt loc_8c1aed70

loc_8c1aed68:
	mov.b @(0x0A,r12),r0
	and 0xBF,r0
	bra loc_8c1aedda
	mov.b r0,@(0x0A,r12)

loc_8c1aed70:
	mov.l @(loc_8c1aedfc,pc),r3
	jsr @r3
	nop
	tst r14,r14
	bf loc_8c1aed82
	mov.l @(loc_8c1aee00,pc),r0
	extu.b r13,r14
	shll2 r14
	mov.l @(r0,r14),r14

loc_8c1aed82:
	mov.b @(0x08,r12),r0
	or 0x01,r0
	mov.b r0,@(0x08,r12)
	mov.b @(0x0E,r11),r0
	extu.b r0,r0
	tst 0x08,r0
	bf loc_8c1aedbe
	mov 0x09,r2
	extu.b r13,r4
	cmp/gt r2,r4
	bf/s loc_8c1aed9e
	mov 0x01,r6
	bra loc_8c1aeda6
	mov 0x02,r6

loc_8c1aed9e:
	mov 0x63,r3
	cmp/gt r3,r4
	bf loc_8c1aeda6
	mov 0x03,r6

loc_8c1aeda6:
	mov.l @(loc_8c1aee04,pc),r3
	mov 0x0A,r5
	mov r15,r7
	jsr @r3
	extu.b r13,r4
	bsr loc_8c1aecdc
	mov r15,r4
	mov.b @(0x03,r11),r0
	bsr loc_8c1aec3a
	mov r0,r4
	bra loc_8c1aedd4
	nop

loc_8c1aedbe:
	bsr loc_8c1aee08
	nop
	bra loc_8c1aedca
	nop

loc_8c1aedc6:
	bsr loc_8c1aec3a
	mov.b @r14+,r4

loc_8c1aedca:
	mov.b @r14,r2
	tst r2,r2
	bf loc_8c1aedc6
	bsr loc_8c1aee08
	nop

loc_8c1aedd4:
	mov.b @(0x08,r12),r0
	and 0xFE,r0
	mov.b r0,@(0x08,r12)

loc_8c1aedda:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1AEDE8:
	#data 0x0080
	#align4

loc_8C1AEDEC:
	#data 0x8C34AF50
loc_8C1AEDF0:
	#data 0x8C34B288
loc_8C1AEDF4:
	#data 0x8C34B292
loc_8C1AEDF8:
	#data 0x8C34B28E
loc_8c1aedfc:
	#data loc_8c1afe8a
loc_8c1aee00:
	#data bank1c.loc_8c1c71e8
loc_8c1aee04:
	#data loc_8c1af1a4

;==============================================
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

;==============================================
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

;==============================================
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

;==============================================
loc_8c1AEE6A:
	mov.l @(loc_8c1AEE8C,pc),r0 ; r0 set to 0x1C200
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1AEE70:
	#data 0x00F0
	#align4

loc_8c1AEE74:
	#data 0x8C34AF50
loc_8c1AEE78:
	#data 0x8C34B037
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

;==============================================
loc_8c1AEE90:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r4,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(0x68,PC),r3
	mov.l @(0x60,PC),r14
	mov.l @(0x5C,PC),r11
	jsr @r3
	mov 0x64,r4
	mov.l @(0x60,PC),r2
	mov 0x00,r13
	mov.b r13,@r2
	mov.l @(0x60,PC),r3
	jsr @r3
	mov 0x01,r4
	mov.l @(0x5C,PC),r2
	jsr @r2
	mov r13,r4
	mov.l @(0x5C,PC),r3
	jsr @r3
	mov 0x01,r4
	mov.l @(0x58,PC),r2
	jsr @r2
	mov 0x01,r4
	mov 0x04,r10
	mov.b @(0x8,r11),r0
	extu.b r0,r0
	tst r10,r0
	bf.s loc_8c1aeede
	mov r11,r6
	mov.l @(0x4C,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c1aeee4

loc_8c1AEEDE:
	mov.l @(0x44,PC),r2
	mov.w @(0x1C,PC),r12
	mov.b r13,@r2

loc_8c1AEEE4:
	mov r13,r4
	bra loc_8c1aeef0
	mov 0x21,r5

loc_8c1AEEEA:
	mov.b r13,@r6
	add 0x01,r4
	add 0x01,r6

loc_8c1AEEF0:
	extu.b r4,r3
	cmp/ge r5,r3
	bf loc_8c1aeeea
	mov.l @(0x30,PC),r7
	mov r13,r4
	mov r14,r6
	bra loc_8c1aef34
	mov 0x50,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1aef00:
	#data 0x00FE
	#align4

loc_8c1aef04:
	#data 0x8C34B288
loc_8c1aef08:
	#data 0x8C34AF50
loc_8c1AEF0C:
	#data bank19.loc_8c19FEE8
loc_8c1AEF10:
	#data 0x8C34B148
loc_8c1AEF14:
	#data loc_8c1A126E
loc_8c1AEF18:
	#data loc_8c1A1208
loc_8c1AEF1C:
	#data loc_8c1A1290
loc_8c1AEF20:
	#data bank19.loc_8c19FE46
loc_8c1AEF24:
	#data 0x8C34B1F1
loc_8c1AEF28:
	#data bank1c.loc_8c1c6BF0

;==============================================
loc_8c1AEF2C:
	mov.b @r7+,r3
	add 0x01,r4
	mov.b r3,@r6
	add 0x01,r6

loc_8c1AEF34:
	extu.b r4,r2
	cmp/ge r5,r2
	bf loc_8c1aef2c
	extu.b r12,r2
	cmp/ge r10,r2
	bt.s loc_8c1aef4c
	mov r14,r4
	mov.b @(0x4,r11),r0
	or 0x20,r0
	mov.b r0,@(0x4,r11)
	mov.l @(0xE8,PC),r3
	mov.b r12,@r3

loc_8c1AEF4C:
	mov.l @(0xE8,PC),r2
	jsr @r2
	nop 
	mov.l @(0xE8,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(0xE4,PC),r2
	jsr @r2
	nop 
	mov.l @(0xE4,PC),r2
	mov.w @(0xC8,PC),r0
	mov.l @r2,r3
	mov.w @(r0,r3),r1
	mov.w @(0xC4,PC),r3
	extu.w r1,r1
	tst r3,r1
	bt loc_8c1aef74
	mov.l @(0xD8,PC),r1
	jsr @r1
	mov 0x00,r4

loc_8c1AEF74:
	mov.l @(0xD4,PC),r3
	jsr @r3
	nop 
	mov 0x04,r0
	mov.l @(0xD0,PC),r2
	mov.b @(r0,r14),r0
	mov r14,r1
	add 0x1B,r1
	and 0x7F,r0
	mov.b r0,@r2
	mov r14,r2
	mov.l @(0xC8,PC),r3
	add 0x1F,r2
	mov.b @(0x3,r14),r0
	mov.b r0,@r3
	mov.b @r1,r0
	mov.l @(0xC0,PC),r1
	mov.b r0,@r1
	mov.b @r2,r0
	mov.l @(0xC0,PC),r2
	mov.b r0,@r2
	mov.b @r14,r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c1aefba
	mov.l @(0x9C,PC),r3
	mov.w @(0x84,PC),r1
	mov.l @r3,r0
	mov.w @(r0,r1),r0
	extu.w r0,r0
	tst 0x01,r0
	bt loc_8c1aefba
	mov.b @r14,r3
	add 0x01,r3
	mov.b r3,@r14

loc_8c1AEFBA:
	mov r14,r4
	mov.b @r4,r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c1aefda
	mov.l @(0x7C,PC),r3
	mov.w @(0x66,PC),r0
	mov.l @r3,r2
	mov.w @(r0,r2),r1
	mov.w @(0x62,PC),r2
	extu.w r1,r1
	tst r2,r1
	bt loc_8c1aefda
	mov.b @r4,r0
	add 0x01,r0
	mov.b r0,@r4

loc_8c1AEFDA:
	mov r14,r9
	add 0x15,r9
	mov.b @r9,r3
	mov 0x10,r4
	extu.b r3,r3
	tst r4,r3
	bf loc_8c1af002
	mov.l @(0x58,PC),r2
	mov.w @(0x42,PC),r0
	mov.l @r2,r1
	mov.w @(r0,r1),r3
	extu.w r3,r3
	tst r4,r3
	bt loc_8c1af002
	mov.b @r9,r0
	and 0xE7,r0
	mov.b r0,@r9
	mov.b @r9,r0
	or 0x10,r0
	mov.b r0,@r9

loc_8c1AF002:
	extu.b r12,r3
	mov.l @(0x5C,PC),r9
	mov.l @(0x58,PC),r8
	cmp/ge r10,r3
	bf loc_8c1af06c
	mov r14,r3
	add 0x14,r3
	mov.b @r3,r2
	mov.b r2,@r9
	mov r14,r0
	nop 
	add 0x17,r0
	mov.l @(0x4C,PC),r1
	mov.b @r0,r0
	mov 0xFC,r3
	extu.b r0,r0
	and 0x30,r0
	shad r3,r0
	mov.b @(r0,r1),r2
	bra loc_8c1af074
	mov.b r2,@r8

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1af02c:
	#data 0x00b0
loc_8c1af02e:
	#data 0x0100
loc_8c1af030:
	#data 0x00b2
loc_8c1af032:
	#data 0x2000
	#align4

loc_8c1af034:
	#data 0x8c34b038
loc_8c1AF038:
	#data bank1b.loc_8c1b8244
loc_8c1AF03C:
	#data bank19.loc_8c19FEB4
loc_8c1AF040:
	#data loc_8c1A00B4
loc_8c1AF044:
	#data 0x8C34B1F8
loc_8c1AF048:
	#data bank19.loc_8c19FE4E
loc_8c1AF04C:
	#data bank1b.loc_8c1b848A
loc_8c1AF050:
	#data 0x8C34B037
loc_8c1AF054:
	#data 0x8C34B036
loc_8c1AF058:
	#data 0x8C34B03B
loc_8c1AF05C:
	#data 0x8C34B03C
loc_8c1AF060:
	#data 0x8C34B141
loc_8c1AF064:
	#data 0x8C34B140
loc_8c1AF068:
	#data bank1c.loc_8c1c7E6D

;==============================================
loc_8c1AF06C:
	mov.l @(0xF8,PC),r2
	mov.b @r8,r5
	jsr @r2
	mov.b @r9,r4

loc_8c1AF074:
	mov.b @r9,r3
	mov.l @(0xF4,PC),r2
	mov.b r3,@r2
	mov 0x41,r3
	mov.l @(0xF0,PC),r0
	mov.b @r8,r1
	mov.b r1,@r0
	mov 0x54,r0
	mov.l @(0xEC,PC),r4
	extu.b r12,r1
	mov.b r3,@r4
	mov.b r0,@(0x1,r4)
	mov.b @(0x3,r14),r0
	mov.b r0,@(0x2,r4)
	mov.w @(0xD0,PC),r0
	mov.l @(0xE4,PC),r3
	cmp/eq r0,r1
	bt.s loc_8c1af0b0
	mov.w r13,@r3
	mov.l @(0xE0,PC),r1
	jsr @r1
	nop 
	mov.l @(0xE4,PC),r3
	mov.l @(0xE0,PC),r4
	mov.l @(0xD8,PC),r5
	jsr @r3
	nop 
	mov.l @(0xE0,PC),r2
	jsr @r2
	mov 0x00,r4

loc_8c1AF0B0:
	mov.l @(0xD4,PC),r3
	mov.l @(0xD0,PC),r4
	mov.l @(0xC8,PC),r5
	jsr @r3
	nop 
	bsr loc_8c1af26c
	nop 
	mov.l @(0xD0,PC),r3
	jsr @r3
	mov 0x01,r4
	mov.l @(0xCC,PC),r2
	jsr @r2
	nop 
	exts.b r0,r0
	tst r0,r0
	bf loc_8c1af0da
	mov r11,r3
	add 0x10,r3
	mov.b @r3,r0
	or 0x08,r0
	mov.b r0,@r3

loc_8c1AF0DA:
	mov r14,r0
	nop 
	add 0x15,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x20,r0
	bf loc_8c1af0ec
	bra loc_8c1af0ee
	mov 0x00,r4

loc_8c1AF0EC:
	mov 0x01,r4

loc_8c1AF0EE:
	mov.l @(0xA8,PC),r2
	jsr @r2
	nop 
	mov r14,r4
	add 0x15,r4
	mov.b @r4,r0
	extu.b r0,r0
	tst 0x02,r0
	bt loc_8c1af10c
	mov.b @r4,r0
	extu.b r0,r0
	tst 0x20,r0
	bt loc_8c1af110
	bra loc_8c1af114
	nop 

loc_8c1AF10C:
	tst 0x40,r0
	bf loc_8c1af114

loc_8c1AF110:
	bra loc_8c1af116
	mov 0x00,r4

loc_8c1AF114:
	mov 0x01,r4

loc_8c1AF116:
	mov.l @(0x84,PC),r2
	jsr @r2
	nop 
	mov r14,r0
	nop 
	add 0x31,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x40,r0
	bt loc_8c1af130
	mov.b @(0xE,r14),r0
	or 0x04,r0
	mov.b r0,@(0xE,r14)

loc_8c1AF130:
	mov.w @(0x32,PC),r2
	extu.b r12,r12
	mov.l @(0x68,PC),r3
	mov.b @(0x3,r14),r0
	cmp/eq r2,r12
	bf.s loc_8c1af152
	mov.b r0,@r3
	mov r14,r0
	nop 
	add 0x1B,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x04,r0
	bt loc_8c1af152
	mov.b @(0xB,r11),r0
	or 0x10,r0
	mov.b r0,@(0xB,r11)

loc_8c1AF152:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1AF164:
	#data 0x00FD
loc_8c1AF166:
	#data 0x00FF
	#align4

loc_8c1AF168:
	#data bank19.loc_8c198A10
loc_8c1AF16c:
	#data 0x8C34AFB0
loc_8c1AF170:
	#data 0x8C34AFB1
loc_8c1AF174:
	#data 0x8C34AFB3
loc_8c1AF178:
	#data 0x8C34B034
loc_8c1AF17C:
	#data bank19.loc_8c19A902
loc_8c1AF180:
	#data 0x8C34B0F0
loc_8c1AF184:
	#data 0x8C34B0F4
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
loc_8c1AF1a0:
	#data 0x8C34B197

;==============================================
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
	mov.b r13,@r7
	add 0x01,r7

loc_8c1af1de:
	mov.b @r15,r2
	extu.b r6,r3
	add 0x01,r2
	mov.b r2,@r15
	add 0xFF,r2
	extu.b r2,r2
	cmp/ge r3,r2
	bf loc_8c1af1da
	mov 0x0A,r13
	mov.b r12,@r15

loc_8c1af1f2:
	mov r4,r1
	mov r14,r0
	nop
	mov.l @(loc_8c1af288,pc),r3
	jsr @r3
	nop
	mov r0,r6
	exts.b r6,r2
	mul.l r14,r2
	mov.l @(loc_8c1af288,pc),r3
	extu.b r5,r0
	sts macl,r2
	sub r2,r4
	jsr @r3
	mov r14,r1
	exts.b r6,r2
	cmp/ge r13,r2
	bf/s loc_8c1af21c
	mov r0,r14
	bra loc_8c1af21e
	add 0x37,r6

loc_8c1af21c:
	add 0x30,r6

loc_8c1af21e:
	mov 0x00,r3
	mov.b r6,@r7
	cmp/hi r3,r14
	bf/s loc_8c1af238
	add 0x01,r7
	mov.b @r15,r1
	mov 0x08,r2
	add 0x01,r1
	mov.b r1,@r15
	add 0xFF,r1
	extu.b r1,r1
	cmp/gt r2,r1
	bf loc_8c1af1f2

loc_8c1af238:
	add 0x04,r15
	lds.l @r15+,pr
	mov 0x00,r3
	mov.b r3,@r7
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
;unused?
loc_8c1af248:
	mov 0x30,r3
	extu.b r4,r5
	cmp/ge r3,r5
	bf loc_8c1af256
	mov 0x39,r1
	cmp/gt r1,r5
	bf loc_8c1af262

loc_8c1AF256:
	mov 0x41,r3
	cmp/ge r3,r5
	bf loc_8c1af266
	mov 0x46,r1
	cmp/gt r1,r5
	bt loc_8c1af266

loc_8c1AF262:
	rts 
	mov 0x01,r0

loc_8c1AF266:
	mov 0x00,r0
	rts 
	nop 

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1AF288:
	#data bank12.loc_8c1291DC
loc_8c1AF28C:
	#data 0x8C34B039
loc_8c1AF290:
	#data 0x8C34AF66
loc_8c1AF294:
	#data bank1c.loc_8c1c7E71

;==============================================
loc_8c1AF298:
	mov.l @(0xC4,PC),r4
	mov.l @(0xC0,PC),r5
	mov.w @(0xB8,PC),r6
	mov r5,r0
	nop 
	add 0x1D,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x20,r0
	bt loc_8c1af2f2
	mov r5,r2
	add 0x1D,r2
	mov.b @r2,r3
	extu.b r3,r3
	tst r6,r3
	bt loc_8c1af2d0
	mov r5,r0
	nop 
	add 0x1D,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x01,r0
	bt loc_8c1af2ca
	bra loc_8c1af2da
	mov 0x08,r2

loc_8c1AF2CA:
	mov 0x05,r1
	bra loc_8c1af316
	mov.b r1,@r4

loc_8c1AF2D0:
	mov.l @(0x90,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c1af2de
	mov 0x04,r2

loc_8c1AF2DA:
	bra loc_8c1af316
	mov.b r2,@r4

loc_8c1AF2DE:
	mov.l @(0x88,PC),r1
	mov.b @r1,r0
	tst r0,r0
	bt loc_8c1af2ec
	mov 0x03,r0
	bra loc_8c1af316
	mov.b r0,@r4

loc_8c1AF2EC:
	mov 0x02,r2
	bra loc_8c1af316
	mov.b r2,@r4

loc_8c1AF2F2:
	mov r5,r1
	add 0x1B,r1
	mov.b @r1,r3
	extu.b r3,r3
	tst r6,r3
	bt loc_8c1af312
	add 0x1D,r5
	mov.b @r5,r3
	extu.b r3,r3
	tst r6,r3
	bf loc_8c1af30c
	bra loc_8c1af314
	mov 0x06,r1

loc_8c1AF30C:
	mov 0x07,r2
	bra loc_8c1af316
	mov.b r2,@r4

loc_8c1AF312:
	mov 0x00,r1

loc_8c1AF314:
	mov.b r1,@r4

loc_8c1AF316:
	rts
	nop

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1AF358:
	#data 0x0080
loc_8c1AF35A:
	#data 0x00C0
	#align4

loc_8c1AF35c:
	#data 0x8C34B288
loc_8c1AF360:
	#data 0x8C34AF7C
loc_8c1AF364:
	#data 0x8C352F24
loc_8c1AF368:
	#data 0x8C352F05
loc_8c1AF36C:
	#data bank19.loc_8c19C7D4
loc_8c1AF370:
	#data 0x8C34AF50

;==============================================
loc_8c1af374:
	mov r4,r5
	add 0x24,r5
	mov.b @r5,r0
	mov.b r0,@(0x04,r15)
	mov.l @(0x0C,r15),r3
	tst r3,r3
	bt loc_8c1af398
	mov.b @r5,r0
	extu.b r0,r0
	tst 0x08,r0
	bf loc_8c1af392
	mov.b @r5,r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c1af398

loc_8c1af392:
	mov.b @(0x04,r15),r0
	and 0x88,r0
	mov.b r0,@(0x04,r15)

loc_8c1af398:
	mov.b @(0x04,r15),r0
	mov.l @(loc_8c1af434,pc),r5
	mov r0,r4
	mov.b @(0x0E,r14),r0
	extu.b r0,r0
	tst r12,r0
	bt/s loc_8c1af3b6
	extu.b r4,r4
	mov 0x0F,r0
	mov.b @r15,r2
	and r4,r0
	mov.b @(r0,r5),r3
	or r3,r2
	bra loc_8c1af3c6
	mov.b r2,@r15

loc_8c1af3b6:
	mov.w @(loc_8C1AF430,pc),r0
	mov 0xFC,r3
	and r4,r0
	shad r3, r0
	mov.b @r15,r3
	mov.b @(r0,r5),r2
	or r2,r3
	mov.b r3,@r15

loc_8c1af3c6:
	mov.b @r15,r3
	mov 0x00,r11
	mov.l @(loc_8C1AF438,pc),r13
	mov 0x02,r4
	mov.b r3,@r13
	mov r14,r3
	add 0x1C,r3
	mov.b r11,@r15
	mov.b @r3,r2
	mov r14,r3
	add 0x18,r3
	extu.b r2,r2
	and r9,r2
	shll2 r2
	shll2 r2
	mov.b r2,@r15
	mov.b @r3,r1
	extu.b r1,r1
	tst r4,r1
	bt/s loc_8c1af3f6
	mov r14,r2
	mov.b @r15,r0
	or 0x40,r0
	mov.b r0,@r15

loc_8c1af3f6:
	add 0x18,r2
	mov.b @r2,r3
	extu.b r3,r3
	tst r10,r3
	bt loc_8c1af406
	mov.b @r15,r0
	or 0x80,r0
	mov.b r0,@r15

loc_8c1af406:
	mov.b @r15,r0
	or 0x08,r0
	mov.b r0,@r15
	mov r14,r0
	nop
	add 0x27,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x20,r0
	bf/s loc_8c1af442
	mov 0x10,r8
	mov r14,r2
	add 0x27,r2
	mov.b @r2,r3
	extu.b r3,r3
	tst r8,r3
	bt loc_8c1af43c
	mov.b @r15,r0
	or 0x02,r0
	bra loc_8c1af442
	mov.b r0,@r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1AF430:
	#data 0x00F0
	#align4

loc_8c1af434:
	#data bank1c.loc_8c1c7e79
loc_8C1AF438:
	#data 0x8C34B2E3

;==============================================
loc_8c1af43c:
	mov.b @r15,r0
	or 0x04,r0
	mov.b r0,@r15

loc_8c1af442:
	mov r14,r3
	add 0x2A,r3
	mov.b @r3,r2
	extu.b r2,r2
	tst r4,r2
	bt loc_8c1af454
	mov.b @r15,r0
	or 0x01,r0
	mov.b r0,@r15

loc_8c1af454:
	mov.b @r15,r0
	mov.b r0,@(0x01,r13)
	mov r14,r0
	nop
	add 0x2E,r0
	mov.b @r0,r0
	and 0x7F,r0
	mov.b r0,@r15
	mov r14,r0
	nop
	add 0x18,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x04,r0
	bt loc_8c1af478
	mov.b @r15,r0
	or 0x80,r0
	mov.b r0,@r15

loc_8c1af478:
	mov.b @r15,r0
	mov.b r0,@(0x02,r13)
	mov r14,r0
	nop
	add 0x1C,r0
	mov.b @r0,r0
	extu.b r0,r0
	and 0x7C,r0
	shar r0
	shar r0
	mov.w r0,@(0x08,r15)
	mov.l @(loc_8C1AF56C,pc),r3
	mov.b @r3,r2
	extu.b r2,r2
	tst r10,r2
	bt loc_8c1af4ba
	mov.l @(loc_8c1af570,pc),r2
	jsr @r2
	nop
	mov.l @(loc_8c1af574,pc),r3
	extu.w r0,r1
	jsr @r3
	mov 0x32,r0
	mov r0,r2
	mov.w @(0x08,r15),r0
	mov 0x1F,r3
	add r2,r0
	mov.w r0,@(0x08,r15)
	extu.w r0,r0
	cmp/gt r3,r0
	bf loc_8c1af4ba
	mov 0x1F,r0
	mov.w r0,@(0x08,r15)

loc_8c1af4ba:
	mov r14,r3
	add 0x28,r3
	mov.w @(0x08,r15),r0
	mov 0x7F,r4
	extu.w r0,r0
	shll2 r0
	shll r0
	mov.b r0,@(0x03,r13)
	mov.b @r3,r2
	mov.b r2,@r15
	mov.b @r15,r3
	extu.b r3,r3
	cmp/gt r4,r3
	bf loc_8c1af4d8
	mov.b r4,@r15

loc_8c1af4d8:
	mov.b @r15,r0
	mov r14,r4
	or 0x80,r0
	mov.b r0,@r15
	mov.b r0,@(0x04,r13)
	mov.b r11,@r15
	mov.l @(loc_8C1AF578,pc),r3
	mov.b @r3,r2
	extu.b r2,r2
	tst r8,r2
	bf/s loc_8c1af526
	add 0x31,r4
	mov r14,r0
	nop
	add 0x31,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x0F,r0
	bt loc_8c1af526
	mov.b @r4,r0
	extu.b r0,r0
	tst 0x04,r0
	bt loc_8c1af50a
	bra loc_8c1af520
	mov 0x20,r2

loc_8c1af50a:
	and r9,r0
	cmp/eq 0x03,r0
	bf loc_8c1af516
	mov 0x60,r2
	bra loc_8c1af520
	nop

loc_8c1af516:
	mov.b @r4,r1
	extu.b r1,r1
	tst r10,r1
	bt loc_8c1af524
	mov 0x40,r2

loc_8c1af520:
	bra loc_8c1af526
	mov.b r2,@r15

loc_8c1af524:
	mov.b r12,@r15

loc_8c1af526:
	mov.b @r15,r0
	mov.b r0,@(0x05,r13)
	mov.b r12,@r15
	mov.l @(loc_8C1AF578,pc),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x04,r0
	bt loc_8c1af53c
	mov.b @r15,r0
	or 0x40,r0
	mov.b r0,@r15

loc_8c1af53c:
	mov.b @r15,r0
	or 0x10,r0
	mov.b r0,@r15
	mov.b r0,@(0x06,r13)
	mov.b r11,@r15
	mov.b @(0x0E,r14),r0
	extu.b r0,r0
	tst r12,r0
	bt loc_8c1af554
	mov.b @r15,r0
	or 0x80,r0
	mov.b r0,@r15

loc_8c1af554:
	mov.l @(loc_8C1AF57C,pc),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c1af586
	mov.b @(0x0E,r14),r0
	extu.b r0,r0
	tst r12,r0
	bt loc_8c1af580
	mov.b @r15,r0
	or 0x20,r0
	bra loc_8c1af586
	mov.b r0,@r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8C1AF56C:
	#data 0x8C34B28E
loc_8c1af570:
	#data bank19.loc_8c19cfc4
loc_8c1af574:
	#data bank12.loc_8c129128
loc_8C1AF578:
	#data 0x8C34B292
loc_8C1AF57C:
	#data 0x8C34B0FE

;==============================================
loc_8c1af580:
	mov.b @r15,r0
	or 0x40,r0
	mov.b r0,@r15
	
loc_8c1af586:
	mov.b @r15,r0
	mov.b r0,@(0x07,r13)
	mov r14,r0
	nop
	add 0x1D,r0
	mov.b @r0,r0
	mov.b r0,@(0x08,r13)
	mov r14,r0
	nop
	add 0x1E,r0
	mov.b @r0,r0
	mov 0x0F,r3
	and 0xBF,r0
	mov.b r0,@r15
	extu.b r0,r0
	and 0x1F,r0
	cmp/gt r3,r0
	bf/s loc_8c1af5b4
	mov r14,r3
	mov.b @r15,r0
	and 0xE0,r0
	or 0x0F,r0
	mov.b r0,@r15

loc_8c1af5b4:
	add 0x1C,r3
	mov.b @r3,r2
	extu.b r2,r2
	tst r12,r2
	bt loc_8c1af5ca
	mov.l @(0x0C,r15),r1
	tst r1,r1
	bf loc_8c1af5ca
	mov.b @r15,r0
	or 0x40,r0
	mov.b r0,@r15

loc_8c1af5ca:
	mov r14,r3
	add 0x20,r3
	mov.b @r15,r0
	mov.b r0,@(0x09,r13)
	mov.b r11,@r15
	mov.b @r3,r2
	extu.b r2,r2
	tst r12,r2
	bf loc_8c1af5e6
	mov r14,r1
	add 0x10,r1
	mov.b @r1,r3
	tst r3,r3
	bt loc_8c1af5ec

loc_8c1af5e6:
	mov.b @r15,r0
	or 0x40,r0
	mov.b r0,@r15

loc_8c1af5ec:
	mov r14,r0
	nop
	add 0x20,r0
	mov r14,r2
	mov.b @r0,r0
	add 0x1B,r2
	mov.b @r15,r3
	extu.b r0,r0
	and 0x0C,r0
	shll2 r0
	or r0,r3
	mov.b r3,@r15
	mov.b @r2,r1
	extu.b r1,r1
	tst r9,r1
	bf/s loc_8c1af65c
	mov r14,r4
	mov.b @(0x0E,r4),r0
	extu.b r0,r0
	mov r0,r5
	and r12,r5
	tst r5,r5
	bt loc_8c1af636
	mov r4,r0
	nop
	add 0x24,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x01,r0
	bt loc_8c1af636
	mov r4,r0
	nop
	add 0x24,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x02,r0
	bt loc_8c1af656

loc_8c1af636:
	tst r5,r5
	bf loc_8c1af65c
	mov r4,r0
	nop
	add 0x24,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x10,r0
	bt loc_8c1af65c
	mov r4,r0
	nop
	add 0x24,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x20,r0
	bf loc_8c1af65c

loc_8c1af656:
	mov.b @r15,r0
	or 0x08,r0
	mov.b r0,@r15

loc_8c1af65c:
	mov r14,r0
	nop
	add 0x1E,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x40,r0
	bt loc_8c1af670
	mov.b @r15,r0
	or 0x04,r0
	mov.b r0,@r15

loc_8c1af670:
	mov.b @r15,r0
	mov.b r0,@(0x0A,r13)
	mov.b r11,@r15
	mov r14,r0
	nop
	add 0x31,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x08,r0
	bt loc_8c1af68a
	mov.b @r15,r0
	or 0x80,r0
	mov.b r0,@r15

loc_8c1af68a:
	mov r14,r3
	add 0x31,r3
	mov.b @r3,r2
	extu.b r2,r2
	tst r8,r2
	bt loc_8c1af69c
	mov.b @r15,r0
	or 0x40,r0
	mov.b r0,@r15

loc_8c1af69c:
	mov r14,r3
	add 0x2A,r3
	mov.b @r3,r2
	extu.b r2,r2
	tst r10,r2
	bt loc_8c1af6ae
	mov.b @r15,r0
	or 0x20,r0
	mov.b r0,@r15

loc_8c1af6ae:
	mov r14,r3
	add 0x20,r3
	mov.b @r3,r2
	extu.b r2,r2
	tst r10,r2
	bt loc_8c1af6c0
	mov.b @r15,r0
	or 0x10,r0
	mov.b r0,@r15

loc_8c1af6c0:
	mov r14,r0
	nop
	add 0x2A,r0
	mov.b @r15,r2
	mov.b @r0,r0
	mov 0xFC,r3
	extu.b r0,r0
	and 0xC0,r0
	shad r3, r0
	or r0,r2
	mov.b r2,@r15
	mov r2,r0
	nop
	mov r15,r5
	add 0x04,r5
	mov.b r0,@(0x0B,r13)
	bsr bank1b.loc_8c1b0050
	mov r15,r4
	mov.b @r15,r0
	mov.b r0,@(0x0C,r13)
	mov.b @(0x04,r15),r0
	mov.b r0,@(0x0D,r13)
	mov.b r11,@r15
	mov r14,r0
	nop
	add 0x2F,r0
	mov.b @r0,r0
	and 0x7F,r0
	mov.b r0,@r15
	mov.b r0,@(0x0E,r13)
	mov.b r11,@r15
	mov r14,r0
	nop
	add 0x30,r0
	mov r13,r4
	mov.b @r0,r0
	and 0x7F,r0
	mov.b r0,@r15
	mov.b r0,@(0x0F,r13)
	mov r14,r0
	nop
	add 0x31,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x40,r0
	bt/s loc_8c1af722
	add 0x10,r4
	bra loc_8c1af726
	mov.b r12,@r4

loc_8c1af722:
	mov.b @(0x02,r14),r0
	mov.b r0,@r4

loc_8c1af726:
	mov.b @(0x0C,r14),r0
	mov 0x11,r3
	add r13,r3
	mov.b r0,@r3
	mov r14,r3
	add 0x26,r3
	mov.b @r3,r2
	mov r14,r3
	mov 0x12,r0
	add 0x43,r3
	mov.b r2,@(r0,r13)
	mov.b @r3,r2
	mov 0x13,r0
	mov 0x14,r3
	mov.b r2,@(r0,r13)
	add r13,r3
	mov.b @(0x0A,r14),r0
	mov.b r0,@r3
	mov r14,r3
	add 0x21,r3
	mov.b @r3,r2
	mov r14,r3
	mov 0x15,r0
	add 0x25,r3
	mov.b r2,@(r0,r13)
	mov.b @r3,r2
	mov 0x16,r0
	mov.b r2,@(r0,r13)
	mov.b r11,@r15
	mov r14,r0
	nop
	mov r14,r2
	add 0x20,r2
	add 0x27,r0
	mov.b @r15,r3
	mov.b @r0,r0
	and 0x80,r0
	or r0,r3
	mov.b r3,@r15
	mov.b @r2,r1
	mov.b @r15,r2
	extu.b r1,r1
	and r8,r1
	shll2 r1
	or r1,r2
	mov.b r2,@r15
	mov.l @(loc_8C1AF8A0,pc),r3
	mov.b @r3,r1
	extu.b r1,r1
	mov.b @r15,r0
	and r12,r1
	mov r14,r2
	shar r1
	add 0x18,r2
	or r1,r0
	mov.b r0,@r15
	mov 0x17,r0
	mov.b @r2,r1
	mov 0x1E,r3
	mov.b @r15,r2
	extu.b r1,r1
	and r8,r1
	shll r1
	or r1,r2
	mov.b r2,@r15
	mov.b r2,@(r0,r13)
	mov 0x18,r0
	mov.b r3,@(r0,r13)
	mov r14,r3
	add 0x15,r3
	mov.b r11,@r15
	mov.b @r3,r2
	extu.b r2,r2
	tst r12,r2
	bt loc_8c1af7c2
	mov.b @r15,r0
	or 0x40,r0
	mov.b r0,@r15

loc_8c1af7c2:
	mov r14,r0
	nop
	add 0x2A,r0
	mov r14,r2
	mov.b @r0,r0
	add 0x18,r2
	mov.b @r15,r3
	extu.b r0,r0
	and 0x3C,r0
	shar r0
	shar r0
	or r0,r3
	mov.b r3,@r15
	mov.b @r2,r1
	extu.b r1,r1
	tst r12,r1
	bf/s loc_8c1af7ec
	mov r14,r3
	mov.b @r15,r0
	or 0x10,r0
	mov.b r0,@r15

loc_8c1af7ec:
	add 0x48,r3
	mov.b @r3,r2
	extu.b r2,r2
	tst r9,r2
	bt loc_8c1af7fc
	mov.b @r15,r0
	or 0x20,r0
	mov.b r0,@r15

loc_8c1af7fc:
	mov.b @r15,r3
	mov 0x19,r0
	add 0x4A,r14
	mov.b r3,@(r0,r13)
	mov 0x1A,r0
	mov.b @r14,r3
	mov.b r3,@(r0,r13)
	mov 0x1B,r0
	mov.l @(loc_8C1AF8A4,pc),r3
	mov.b @r3,r2
	mov.b r2,@(r0,r13)
	mov 0x1C,r0
	mov.l @(loc_8C1AF8A8,pc),r1
	mov.b @r1,r2
	mov.b r2,@(r0,r13)
	mov.b @r13,r0
	extu.b r0,r0
	and 0x0F,r0
	cmp/eq 0x01,r0
	bf loc_8c1af83a
	mov.b @r13,r0
	mov 0x10,r3
	and 0xF0,r0
	mov.b r0,@r13
	mov.b @(0x05,r13),r0
	and 0x1F,r0
	mov.b r0,@(0x05,r13)
	mov 0x19,r0
	mov.b @(r0,r13),r2
	or r3,r2
	mov.b r2,@(r0,r13)

loc_8c1af83a:
	mov 0x1D,r0
	mov.b r11,@r15
	mov.b r0,@(0x04,r15)
	bra loc_8c1af84c
	mov r13,r4

loc_8c1af844:
	mov.b @r15,r2
	mov.b @r4+,r3
	add r3,r2
	mov.b r2,@r15

loc_8c1af84c:
	mov.b @(0x04,r15),r0
	add 0xFF,r0
	mov.b r0,@(0x04,r15)
	add 0x01,r0
	extu.b r0,r0
	tst r0,r0
	bf loc_8c1af844
	mov.b @r15,r2
	add 0x10,r15
	lds.l @r15+,pr
	add 0x1D,r13
	neg r2,r2
	mov.b r2,@r13
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1af8a0:
	#data 0x8C34B2A2
loc_8c1af8a4:
	#data 0x8C34B140
loc_8c1af8a8:
	#data 0x8C34B0FE
loc_8c1AF8AC:
	#data 0x8C34AF50
loc_8c1AF8B0:
	#data 0x8C34B2CC
loc_8c1AF8B4:
	#data 0x8C34B12C

;==============================================
loc_8c1af8b8:
	mov 0x01,r4

loc_8c1af8ba:
	mov.l @(loc_8c1af9c0,pc),r2
	jsr @r2
	nop
	mov.l @(loc_8C1AF9C4,pc),r14
	mov.b @(0x09,r14),r0
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c1af8dc
	mov.l @(loc_8C1AF9C8,pc),r3
	mov.w @(loc_8C1AF9BA,pc),r0
	mov.l @r3,r5
	mov.l @(loc_8c1af9cc,pc),r2
	mov.l @r3,r4
	mov.b @(r0,r5),r5
	add 0xFF,r0
	jsr @r2
	mov.b @(r0,r4),r4

loc_8c1af8dc:
	mov.b @(0x09,r14),r0
	or 0x80,r0
	mov.b r0,@(0x09,r14)
	mov.l @(loc_8c1af9d0,pc),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(loc_8c1af9d4,pc),r2
	jsr @r2
	nop
	mov.b @(0x04,r14),r0
	and 0xEF,r0
	mov.b r0,@(0x04,r14)
	mov r13,r0
	nop
	add 0x1B,r0
	mov.b @r0,r0
	mov 0x02,r3
	extu.b r0,r0
	and 0x0C,r0
	cmp/gt r3,r0
	bf loc_8c1af90c
	mov.b @(0x04,r14),r0
	or 0x10,r0
	mov.b r0,@(0x04,r14)

loc_8c1af90c:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c1AF914:
	mov.l @(loc_8c1AF9D8,pc),r3 ; r3 set to 0x8C1AEA7E
	jmp @r3
	nop

loc_8c1AF91A:
	mov.l @(0xC0,PC),r2
	mov 0x00,r3
	sts.l pr,@-r15
	mov.b r3,@r2
	mov.l @(0xBC,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c1af934
	mov.l @(0xB4,PC),r1
	mov.w @(0x8A,PC),r4
	jsr @r1
	nop 

loc_8c1AF934:
	bsr loc_8c1af298
	nop 
	mov.l @(0xAC,PC),r3
	mov.b @r3,r0
	or 0x20,r0
	mov.b r0,@r3
	mov.l @(0xA8,PC),r5
	mov 0x64,r2
	mov.l @(0xAC,PC),r1
	mov.b @r5,r5
	mov.l @(0xA4,PC),r4
	extu.b r5,r5
	mulu.w r2,r5
	jsr @r1
	sts macl,r5
	mov.l @(0xA4,PC),r3
	jsr @r3
	nop 
	bra loc_8c1af95c
	lds.l @r15+,pr

loc_8c1AF95C:
	sts.l pr,@-r15
	mov.l @(0x9C,PC),r3
	jsr @r3
	nop 
	mov.l @(0x5C,PC),r4
	mov.b @(0x7,r4),r0
	and 0xFE,r0
	mov.b r0,@(0x7,r4)
	mov.l @(0x90,PC),r2
	mov 0x04,r3
	mov r4,r1
	mov.b r3,@r2
	mov.b @(0x3,r4),r0
	extu.b r0,r0
	tst 0x20,r0
	bt.s loc_8c1af98a
	add 0x06,r1
	mov.b @r1,r0
	and 0xB8,r0
	or 0x0C,r0
	mov.b r0,@r1
	bra loc_8c1afd44
	lds.l @r15+,pr

loc_8c1AF98A:
	mov.b @r1,r0
	and 0xB8,r0
	or 0x0A,r0
	mov.b r0,@r1
	mov.l @(0x70,PC),r1
	jmp @r1
	lds.l @r15+,pr

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1af9ba:
	#data 0x0089
loc_8c1af9bc:
	#data 0x0080
loc_8c1AF9BE:
	#data 0x00FF
	#align4

loc_8c1AF9C0:
	#data bank19.loc_8c19FE58
loc_8c1af9c4:
	#data 0x8C34B288
loc_8c1af9c8:
	#data 0x8C34B1F8
loc_8c1AF9CC:
	#data bank19.loc_8c19A910
loc_8c1AF9D0:
	#data bank19.loc_8c19FE46
loc_8c1AF9D4:
	#data bank19.loc_8c19D24C
loc_8c1AF9D8:
	#data loc_8c1AEA7E
loc_8c1AF9DC:
	#data 0x8C34B03A
loc_8c1AF9E0:
	#data 0x8C34AF5E
loc_8c1AF9E4:
	#data bank19.loc_8c1995D6
loc_8c1AF9E8:
	#data 0x8C34B292
loc_8c1AF9Ec:
	#data 0x8C34AF69
loc_8c1AF9f0:
	#data 0x8C34B110
loc_8c1AF9F4:
	#data bank1b.loc_8c1b3EEC
loc_8c1AF9F8:
	#data loc_8c1AE454
loc_8c1AF9FC:
	#data bank19.loc_8c199270
loc_8c1AFA00:
	#data 0x8C34B11C
loc_8c1AFA04:
	#data bank1b.loc_8c1b3A04
loc_8c1AFA08:
	#data 0x8C34B130
loc_8c1AFA0C:
	#data 0x8C34B2E3
loc_8c1AFA10:
	#data 0x8C34B301
loc_8c1AFA14:
	#data bank1b.loc_8c1b374E

;==============================================
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

loc_8c1afa30:
	mov.b @(0x06,r4),r0
	extu.b r0,r0
	tst 0x08,r0
	bt loc_8c1afa44
	mov.l @(loc_8C1AFB54,pc),r1
	mov.l @(loc_8C1AFB50,pc),r4
	mov.l @r1,r2
	mov.l @r4,r3
	sub r3,r2
	mov.l r2,@r4

loc_8c1afa44:
	mov.l @(loc_8C1AFB58,pc),r3
	mov.l @(loc_8c1afb60,pc),r1
	mov.l @(loc_8C1AFB5C,pc),r2
	mov.b @r3,r5
	jsr @r1
	mov.b @r2,r4
	mov.l @(loc_8c1afb64,pc),r3
	jsr @r3
	mov 0x01,r4
	mov.b @(0x09,r14),r0
	and 0x7F,r0
	mov.b r0,@(0x09,r14)
	mov 0x01,r3
	mov.l r3,@-r15
	mov 0x00,r13
	mov.l r13,@-r15
	mov 0x08,r5
	mov 0x10,r6
	mov.l r13,@-r15
	mov.l @(loc_8c1afb68,pc),r2
	mov r13,r7
	jsr @r2
	mov 0x07,r4
	mov.l @(loc_8c1afb6c,pc),r3
	jsr @r3
	add 0x0C,r15
	mov.l @(loc_8c1afb70,pc),r2
	jsr @r2
	mov r13,r4
	mov.b @(0x03,r14),r0
	and 0x17,r0
	mov.b r0,@(0x03,r14)
	mov.b @(0x06,r14),r0
	and 0xF0,r0
	mov.b r0,@(0x06,r14)
	mov.b @(0x0A,r14),r0
	and 0xFB,r0
	mov.b r0,@(0x0A,r14)
	mov.b @(0x0C,r14),r0
	and 0xDE,r0
	mov.b r0,@(0x0C,r14)
	mov r14,r4
	add 0x10,r4
	mov.b @r4,r0
	and 0x7F,r0
	mov.b r0,@r4
	mov.b @r4,r0
	and 0xFD,r0
	mov.b r0,@r4
	mov r14,r3
	add 0x14,r3
	mov.b @r3,r0
	and 0x7F,r0
	mov.b r0,@r3
	mov r14,r3
	add 0x15,r3
	mov.b @r3,r0
	and 0xAF,r0
	mov.b r0,@r3
	mov r14,r3
	add 0x1A,r3
	mov.b @r3,r0
	and 0x1F,r0
	mov.b r0,@r3
	mov r14,r3
	add 0x1B,r3
	mov.b @r3,r0
	and 0x7F,r0
	mov.b r0,@r3
	mov r14,r3
	add 0x1D,r3
	mov.b @r3,r0
	and 0xDF,r0
	mov.b r0,@r3
	mov.l @(loc_8C1AFB74,pc),r12
	mov r12,r3
	add 0x10,r3
	mov.b @r3,r0
	and 0x02,r0
	mov.b r0,@r3
	mov r13,r0
	nop
	mov.b r0,@(0x01,r12)
	mov r12,r0
	nop
	add 0x15,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x20,r0
	bt loc_8c1afafe
	mov.l @(loc_8c1afb78,pc),r2
	jsr @r2
	mov 0x01,r4

loc_8c1afafe:
	mov r12,r0
	nop
	add 0x15,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x40,r0
	bt loc_8c1afb12
	mov.l @(loc_8c1afb7c,pc),r2
	jsr @r2
	mov 0x01,r4

loc_8c1afb12:
	mov.l @(loc_8c1afb80,pc),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(loc_8c1afb84,pc),r2
	jsr @r2
	mov 0x01,r4
	mov.l @(loc_8C1AFB88,pc),r3
	mov.w @(loc_8C1AFB48,pc),r0
	mov.l @r3,r5
	mov.l @(loc_8c1afb90,pc),r2
	mov.l @(loc_8C1AFB8C,pc),r4
	mov.w @(r0,r5),r5
	jsr @r2
	extu.w r5,r5
	mov.l @(loc_8c1afb94,pc),r3
	jsr @r3
	nop
	mov.b @(0x0B,r14),r0
	and 0xDF,r0
	mov.b r0,@(0x0B,r14)

loc_8c1AFB3A:
	lds.l @r15+,pr
	mov.l @(loc_8c1AFB98,pc),r3 ; r3 set to 0x8C1BFAAC
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1afb48:
	#data 0x00A4
	#align4

loc_8c1AFB4C:
	#data 0x8C34B288
loc_8c1afb50:
	#data 0x8C34B12C
loc_8c1afb54:
	#data 0x8C34B2CC
loc_8c1afb58:
	#data 0x8C34B141
loc_8c1afb5c:
	#data 0x8C34B140
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
loc_8c1afb74:
	#data 0x8C34AF50
loc_8c1AFB78:
	#data loc_8c1A122A
loc_8c1AFB7C:
	#data loc_8c1A124C
loc_8c1AFB80:
	#data loc_8c1A1208
loc_8c1AFB84:
	#data loc_8c1A1290
loc_8c1afb88:
	#data 0x8C34B1F8
loc_8c1afb8c:
	#data 0x8C34B124
loc_8c1AFB90:
	#data bank1b.loc_8c1b3EEC
loc_8c1AFB94:
	#data bank19.loc_8c19FDFA
loc_8c1AFB98:
	#data bank1b.loc_8c1bFAAC

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1AFB9C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x26C,PC),r14
	mov.b @(0x6,r14),r0
	extu.b r0,r0
	tst 0x08,r0
	bt loc_8c1afbae
	bsr loc_8c1afd14
	nop 

loc_8c1AFBAE:
	mov.l @(0x264,PC),r2
	mov 0x00,r3
	mov.b r3,@r2
	mov r14,r3
	add 0x16,r3
	mov.b @r3,r0
	and 0x7F,r0
	mov.b r0,@r3
	mov.b @(0x7,r14),r0
	or 0x01,r0
	mov.b r0,@(0x7,r14)
	mov.b @(0x6,r14),r0
	or 0x40,r0
	mov.b r0,@(0x6,r14)
	mov.b @(0x5,r14),r0
	or 0x05,r0
	mov.b r0,@(0x5,r14)
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
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

;==============================================
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

;==============================================
loc_8c1AFC2C:
	sts.l pr,@-r15
	bsr loc_8c1afe8a
	nop 
	mov.l @(0x1DC,PC),r4
	mov r4,r3
	add 0x16,r3
	mov.b @r3,r0
	and 0x7F,r0
	mov.b r0,@r3
	mov.b @(0x7,r4),r0
	or 0x01,r0
	mov.b r0,@(0x7,r4)
	mov.b @(0x6,r4),r0
	or 0x40,r0
	mov.b r0,@(0x6,r4)
	mov.l @(0x1CC,PC),r2
	mov 0x04,r3
	mov 0x54,r0
	mov.w r3,@r2
	mov 0x41,r3
	mov.l @(0x1C4,PC),r4
	lds.l @r15+,pr
	mov.b r3,@r4
	mov.b r0,@(0x1,r4)
	mov 0x5A,r0
	mov.b r0,@(0x2,r4)
	mov.l @(0x1BC,PC),r3
	mov.b @r3,r0
	rts 
	mov.b r0,@(0x3,r4)

;==============================================
loc_8c1afc68:
	sts.l pr,@-r15
	add 0xFC,r15
	bsr loc_8c1afe8a
	mov.b r4,@r15
	mov.l @(0x19C,PC),r4
	mov r4,r3
	add 0x16,r3
	mov.b @r3,r0
	and 0x7F,r0
	mov.b r0,@r3
	mov.b @(0x7,r4),r0
	or 0x01,r0
	mov.b r0,@(0x7,r4)
	mov.b @(0x6,r4),r0
	or 0x40,r0
	mov.b r0,@(0x6,r4)
	mov 0x54,r0
	mov.l @(0x18C,PC),r2
	mov 0x06,r3
	mov.w r3,@r2
	mov 0x41,r3
	mov.l @(0x188,PC),r4
	mov.b r3,@r4
	mov.b r0,@(0x1,r4)
	mov 0x44,r0
	mov.b r0,@(0x2,r4)
	mov 0x53,r0
	mov.b r0,@(0x3,r4)
	mov 0x3D,r0
	mov.b r0,@(0x4,r4)
	mov.b @r15,r0
	add 0x04,r15
	lds.l @r15+,pr
	add 0x30,r0
	mov.b r0,@(0x5,r4)
	mov.l @(0x170,PC),r3
	mov.b @r3,r0
	mov.b r0,@(0x6,r4)
	rts 
	nop 

;==============================================
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

;==============================================
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

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1AFE10:
	#data 0x8C34B288
loc_8c1AFE14:
	#data 0x8C34B17A
loc_8c1AFE18:
	#data 0x8C34B034
loc_8c1AFE1C:
	#data 0x8C34AFB3
loc_8c1AFE20:
	#data 0x8C34B036
loc_8c1AFE24:
	#data 0x8C34AF53
loc_8c1AFE28:
	#data loc_8c1AEC3A
loc_8c1AFE2C:
	#data loc_8c1AED24
loc_8c1AFE30:
	#data bank1b.loc_8c1b3A32
loc_8c1AFE34:
	#data 0x8C34AF50
loc_8c1AFE38:
	#data 0x8C34B141
loc_8c1AFE3C:
	#data 0x8C34B140
loc_8c1AFE40:
	#data loc_8c1A06C8
loc_8c1AFE44:
	#data 0x8C34B03C

;==============================================
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

;==============================================
loc_8c1afe8a:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov 0x00,r12
	sts.l pr,@-r15
	mov.l @(loc_8C1B002C,pc),r13
	add 0xF8,r15
	mov r13,r0
	nop
	add 0x31,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x40,r0
	bt/s loc_8c1afed8
	mov r13,r14
	mov r14,r2
	add 0x30,r2
	mov r14,r1
	mov.l r12,@-r15
	mov.b @r2,r3
	add 0x2F,r1
	mov 0x00,r7
	mov.l r3,@-r15
	mov.b @r1,r3
	mov.l r3,@-r15
	mov.b @(0x0C,r14),r0
	mov.l r0,@-r15
	mov r0,r2
	mov.b @(0x02,r14),r0
	mov.l r0,@-r15
	mov r0,r3
	mov.l @(loc_8c1b0020,pc),r3
	mov.l @(loc_8c1b0024,pc),r2
	mov.l @(loc_8c1b0028,pc),r1
	mov.b @r2,r5
	mov.b @r3,r6
	jsr @r1
	mov 0x07,r4
	add 0x14,r15

loc_8c1afed8:
	mov.l @(loc_8C1B0030,pc),r4
	mov r4,r3
	add 0x20,r3
	mov.b @r3,r0
	and 0xBF,r0
	mov.b r0,@r3
	mov r4,r3
	add 0x16,r3
	mov.b @r3,r0
	and 0x7F,r0
	mov.b r0,@r3
	mov r4,r3
	add 0x1F,r3
	mov.b @r3,r0
	and 0xFD,r0
	mov.b r0,@r3
	mov r13,r0
	nop
	add 0x31,r0
	mov.b @r0,r0
	extu.b r0,r0
	and 0x03,r0
	cmp/eq 0x03,r0
	bf/s loc_8c1aff0e
	mov 0x01,r5
	bra loc_8c1aff34
	mov r5,r14

loc_8c1aff0e:
	mov r13,r3
	add 0x31,r3
	mov.b @r3,r2
	extu.b r2,r2
	tst r5,r2
	bt/s loc_8c1aff20
	mov r13,r4
	bra loc_8c1aff34
	mov 0x05,r14

loc_8c1aff20:
	mov r4,r0
	nop
	add 0x31,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x04,r0
	bt loc_8c1aff32
	bra loc_8c1aff34
	mov 0x02,r14
	
loc_8c1aff32:
	mov r12,r14
	
loc_8c1aff34:
	mov r15,r5
	add 0x04,r5
	bsr bank1b.loc_8c1b0050
	mov r15,r4
	mov.l r12,@-r15
	mov r14,r7
	mov.b @(0x08,r15),r0
	mov r0,r2
	mov.l r2,@-r15
	mov.b @(0x08,r15),r0
	mov r0,r3
	mov.l r3,@-r15
	mov.b @(0x0C,r13),r0
	mov.l r0,@-r15
	mov r0,r2
	mov.b @(0x02,r13),r0
	mov.l r0,@-r15
	mov r0,r3
	mov.l @(loc_8c1b0020,pc),r3
	mov.l @(loc_8c1b0024,pc),r2
	mov.l @(loc_8c1b0028,pc),r1
	mov.b @r2,r5
	mov.b @r3,r6
	jsr @r1
	mov 0x06,r4
	add 0x1C,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

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

;==============================================
loc_8c1AFFAA:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(0x80,PC),r13
	sts.l pr,@-r15
	mov.l @(0x88,PC),r14
	mov r13,r4
	mov.b @(0x7,r4),r0
	extu.b r0,r0
	tst 0x08,r0
	bf loc_8c1afff6
	mov.b @r14,r3
	tst r3,r3
	bt loc_8c1b0016
	mov.l @(0x78,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bf loc_8c1b0016
	mov.b @(0x1,r4),r0
	extu.b r0,r0
	tst 0x01,r0
	bf loc_8c1b0016
	mov.l @(0x70,PC),r2
	mov.l @(0x6C,PC),r3
	jsr @r2
	mov.l @r3,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1b0016
	mov.b @(0x9,r13),r0
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c1b0002
	mov.l @(0x60,PC),r2
	jsr @r2
	nop 
	exts.b r0,r0
	tst r0,r0
	bt loc_8c1b0002

loc_8c1AFFF6:
	mov 0x00,r2
	mov.b r2,@r14
	mov.b @(0x1,r13),r0
	and 0xFE,r0
	bra loc_8c1b0016
	mov.b r0,@(0x1,r13)

loc_8c1B0002:
	mov.b @r14,r3
	add 0xFF,r3
	mov.b r3,@r14
	mov.b @(0x1,r13),r0
	or 0x01,r0
	mov.b r0,@(0x1,r13)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c1afbfe
	mov.l @r15+,r14

loc_8c1B0016:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1B0020:
	#data 0x8C34B141
loc_8c1B0024:
	#data 0x8C34B140
loc_8c1B0028:
	#data loc_8c1A06C8
loc_8c1b002c:
	#data 0x8C34AF50
loc_8c1b0030:
	#data 0x8C34B288
loc_8c1B0034:
	#data bank19.loc_8c19FEEC
loc_8c1B0038:
	#data 0x8C34AF66
loc_8c1B003c:
	#data 0x8C34B03A
loc_8c1B0040:
	#data 0x8C34AF51
loc_8c1B0044:
	#data 0x8C34B124
loc_8c1B0048:
	#data bank1b.loc_8c1b3F0C
loc_8c1B004C:
	#data bank19.loc_8c19FE3C
