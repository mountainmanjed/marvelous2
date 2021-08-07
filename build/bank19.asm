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

loc_8c19011c:
	mov.l @r14,r3
	mov r10,r2
	sub r3,r2
	cmp/hs r13,r2
	bf loc_8c19010e

loc_8c190126:
	mov.l @r15,r2
	tst r2,r2
	bf loc_8c19014a
	mov.l @r14,r3
	mov r10,r2
	sub r3,r2
	cmp/hs r13,r2
	bt loc_8c19014a

loc_8c190136:
	jsr @r9
	mov r11,r4
	mov r0,r4
	tst r12,r4
	bf loc_8c19014a
	mov.l @r14,r3
	mov r10,r2
	sub r3,r2
	cmp/hs r13,r2
	bf loc_8c190136

loc_8c19014a:
	mov 0x00,r0
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


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c190160:
	#data 0x010C
loc_8c190162:
	#data 0x2000
loc_8c190164:
	#data 0x3D09
	#align4

loc_8c190168:
	#data 0xFFD8000C
loc_8c19016c:
	#data bank18.loc_8C18C32A
	#data 0x00000000
	#align16

;==============================================
loc_8c190180:
	mov 0x01,r3 ; r3 set to 0x01
	rts
	mov.l r3,@(0x04,r4)

;==============================================
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

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
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
loc_8c19021C:
	#data 0x8C343440
loc_8c190220:
	#data 0x8C343448
loc_8c190224:
	#data 0x8C34344C
loc_8c190228:
	#data 0x8C343484
loc_8c19022C:
	#data 0x8C343488
loc_8c190230:
	#data 0x8C343454
loc_8c190234:
	#data 0x8C343450
loc_8c190238:
	#data 0x8C34348C

;==============================================
	#align16_nop

;==============================================
loc_8c190240:
	mov.l r14,@-r15
	mov 0x58,r0
	mov.l r13,@-r15
	mov r15,r4
	add 0x08,r4
	mov.l @(r0,r4),r3
	mov 0x54,r0
	mov.l @(r0,r4),r2
	mov.w @(loc_8C1902E0,pc),r5
	and r5,r2
	shll16 r2
	and r5,r3
	or r2,r3
	mov.l @(loc_8C1902E4,pc),r2
	mov.l r3,@r2
	mov 0x60,r0
	mov.l @(r0,r4),r1
	mov 0x5C,r0
	mov.l @(r0,r4),r3
	and r5,r1
	and r5,r3
	shll16 r3
	or r3,r1
	mov.l @(loc_8C1902E8,pc),r3
	mov.l r1,@r3
	mov 0x48,r0
	mov.l @(r0,r4),r2
	mov 0x4C,r0
	mov.l @(r0,r4),r1
	mov 0x1F,r6
	mov 0x0F,r5
	and r6,r1
	shll2 r1
	shll2 r1
	and r5,r2
	mov 0x50,r0
	or r1,r2
	mov.l @(r0,r4),r1
	and r5,r1
	shll8 r1
	shll r1
	or r1,r2
	mov.l @(loc_8C1902EC,pc),r1
	mov.l r2,@r1
	mov.l @(loc_8C1902F0,pc),r2
	mov.l @r4,r3
	mov.l r3,@r2
	mov.l @(loc_8C1902F4,pc),r3
	mov.l @(0x04,r4),r1
	mov.l r1,@r3
	mov.l @(0x08,r4),r14
	mov.w @(loc_8C1902E2,pc),r5
	mov.l @r4,r7
	and r5,r14
	mov.l @(loc_8C1902F8,pc),r0
	shll16 r14
	mov.l @(0x04,r4),r13
	shll2 r14
	and r5,r7
	mov.l @r0,r1
	cmp/pl r1
	bf/s loc_8c190300
	shll2 r14
	mov.l @(loc_8C1902F8,pc),r1
	mov.l @r1,r2
	sub r2,r13
	mov.l @(loc_8C1902FC,pc),r3
	and r5,r13
	shll8 r13
	shll2 r13
	or r13,r7
	or r14,r7
	bra loc_8c19030e
	mov.l r7,@r3

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1902E0:
	#data 0x07FF
loc_8C1902E2:
	#data 0x03FF
	#align4

loc_8C1902E4:
	#data 0x8C34343C
loc_8C1902E8:
	#data 0x8C343440
loc_8C1902EC:
	#data 0x8C343444
loc_8C1902F0:
	#data 0x8C3434B0
loc_8C1902F4:
	#data 0x8C3434B4
loc_8C1902F8:
	#data 0x8C3434AC
loc_8C1902FC:
	#data 0x8C343448

;==============================================
loc_8c190300:
	and r5,r13
	mov.l @(loc_8C1903C4,pc),r1
	shll8 r13
	shll2 r13
	or r13,r7
	or r14,r7
	mov.l r7,@r1

loc_8c19030e:
	mov.l @(0x18,r4),r2
	mov.l @(0x14,r4),r3
	extu.b r2,r2
	mov.l @(loc_8C1903C8,pc),r1
	shll8 r2
	extu.b r3,r3
	or r2,r3
	mov.l r3,@r1
	mov.l @(0x0C,r4),r2
	mov 0x01,r5
	mov.l @(0x1C,r4),r0
	mov.l @(0x10,r4),r3
	and r5,r2
	and r5,r0
	extu.w r3,r3
	shll16 r2
	shll16 r0
	or r2,r3
	mov.l @(loc_8C1903CC,pc),r2
	shll2 r0
	or r0,r3
	mov.l r3,@r2
	mov 0x44,r0
	mov.w @(loc_8C1903C0,pc),r3
	mov.l @(r0,r4),r0
	add 0xC4,r2
	and r3,r0
	mov.l r0,@r2
	mov.l @(0x2C,r4),r0
	mov 0x07,r7
	mov.l @(0x30,r4),r1
	and r5,r0
	shll2 r0
	shll r0
	and r7,r1
	or r0,r1
	mov.l @(0x34,r4),r0
	extu.b r0,r0
	shll8 r0
	or r0,r1
	mov.l @(0x38,r4),r0
	extu.b r0,r0
	shll16 r0
	or r0,r1
	mov.l @(loc_8C1903D0,pc),r0
	mov.l r1,@r0
	mov.l @(0x28,r4),r1
	mov 0x16,r2
	mov.l @(0x3C,r4),r0
	mov.l @(0x20,r4),r3
	and r5,r1
	and 0x03,r0
	and r5,r3
	shll r1
	shll2 r0
	or r1,r3
	or r0,r3
	mov 0x40,r0
	mov.l @(r0,r4),r0
	and r0,r7
	mov 0x70,r0
	mov.b @(r0,r4),r1
	shll2 r7
	shll2 r7
	extu.b r1,r1
	shll8 r1
	or r7,r3
	mov 0x68,r0
	or r1,r3
	mov.l @(r0,r4),r1
	mov 0x64,r0
	and r1,r6
	mov.l @(r0,r4),r1
	shll16 r6
	and r5,r1
	shad r2, r1
	or r6,r3
	or r1,r3
	mov 0x6C,r0
	mov.l @(r0,r4),r1
	mov 0x17,r2
	and r5,r1
	shad r2, r1
	or r1,r3
	mov.l @(loc_8C1903D4,pc),r1
	mov.l r3,@r1
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1903C0:
	#data 0x01FF
	#align4

loc_8C1903C4:
	#data 0x8C343448
loc_8C1903C8:
	#data 0x8C343484
loc_8C1903CC:
	#data 0x8C343488
loc_8C1903D0:
	#data 0x8C343454
loc_8C1903D4:
	#data 0x8C343450

;==============================================
	#align16_nop

;==============================================
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

;==============================================
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1904A0:
	#data 0xFF34
	#align4

loc_8c1904A4:
	#data bank1c.loc_8c1c5B0C
loc_8c1904A8:
	#data bank1c.loc_8c1c5B24
loc_8c1904AC:
	#data bank1c.loc_8c1c5B38
loc_8c1904B0:
	#data 0x8C343430
loc_8c1904B4:
	#data 0x8C3434A0
loc_8c1904B8:
	#data 0x8C3434A4

;==============================================
	#align16_nop

;==============================================
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

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c190560:
	#data 0x8C343430

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;==============================================
loc_8c190580:
	mov 0x03,r3
	mov 0x06,r2
	mov.l r2,@(0x30,r14)
	mov.l r3,@(0x3C,r14)

loc_8c190588:
	mov.l r13,@(0x2C,r14)

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

loc_8c1905a6:
	mov.l r13,@(0x28,r14)

loc_8c1905a8:
	mul.l r12,r7
	mov.l @(0x08,r15),r2
	mov.l r2,@(0x24,r14)
	sts macl,r3
	mov.l r13,@(0x1C,r14)
	cmp/pz r3
	bt/s loc_8c1905ba
	mov.l r3,@r15
	add 0x3F,r3

loc_8c1905ba:
	mov 0xFA,r2
	shad r2, r3
	mov.l @(loc_8c1906a4,pc),r2
	mov 0x44,r0
	mov.l r3,@(r0,r14)
	mov.l @r15,r1
	jsr @r2
	mov r4,r0
	mov 0x00,r2
	add 0xFF,r0
	mov.l r0,@r14
	mov 0x08,r11
	mov.l @(0x04,r15),r3
	cmp/gt r3,r2
	addc r2,r3
	shar r3
	add 0xFF,r3
	mov.l r3,@(0x0C,r15)
	mov.l @(0x08,r15),r0
	mov.l @(0x04,r15),r10
	cmp/eq 0x01,r0
	bf/s loc_8c190634
	add 0xFF,r10
	mov.l @(loc_8c1906a0,pc),r2
	mov.l @r2,r1
	tst r4,r1
	bt loc_8c190618
	mov.l @(0x0C,r15),r3
	mov.l r3,@(0x04,r14)
	mov.l @(loc_8c1906a4,pc),r3
	mov.l @r15,r1
	jsr @r3
	mov r4,r0
	mov.l @(loc_8C1906A8,pc),r3
	add 0x01,r0
	mov 0x00,r1
	mov.l r0,@(0x08,r14)
	mov.l r1,@r3
	mov.l @(loc_8c1906a4,pc),r2
	mov r12,r1
	add 0x04,r3
	jsr @r2
	mov r11,r0
	mul.l r7,r0
	sts macl,r0
	bra loc_8c1906da
	mov.l r0,@r3

loc_8c190618:
	mov.l @(loc_8C1906A8,pc),r3
	mov 0x00,r1
	mov.l r10,@(0x04,r14)
	mov.l r1,@r3
	mov.l @(loc_8c1906a4,pc),r2
	mov r12,r1
	add 0x04,r3
	jsr @r2
	mov r11,r0
	mul.l r7,r0
	sts macl,r0
	mov.l r0,@r3
	bra loc_8c1906da
	mov.l r6,@(0x08,r14)

loc_8c190634:
	mov.l @(loc_8c1906a0,pc),r2
	mov.l @r2,r1
	tst r6,r1
	bt loc_8c190658
	mov.l @(loc_8C1906A8,pc),r3
	mov 0x00,r1
	mov.l r10,@(0x04,r14)
	mov.l r1,@r3
	mov.l @(loc_8c1906a4,pc),r2
	mov r12,r1
	add 0x04,r3
	jsr @r2
	mov r11,r0
	mul.l r7,r0
	sts macl,r0
	mov.l r0,@r3
	bra loc_8c1906da
	mov.l r6,@(0x08,r14)

loc_8c190658:
	mov.l @(loc_8c1906a0,pc),r0
	mov.l @r0,r1
	tst r4,r1
	bt loc_8c1906c0
	mov.l @(0x0C,r15),r3
	mov.l @(loc_8C1906A8,pc),r1
	mov.l r3,@(0x04,r14)
	mov 0x00,r3
	mov.l r3,@r1
	mov.l @(loc_8c1906a4,pc),r3
	mov r12,r1
	mov.l @(loc_8C1906AC,pc),r2
	jsr @r3
	mov r11,r0
	mul.l r7,r0
	sts macl,r0
	mov.l r0,@r2
	mov.l @(loc_8c1906a4,pc),r3
	mov.l @r15,r1
	jsr @r3
	mov r4,r0
	add 0x01,r0
	bra loc_8c1906da
	mov.l r0,@(0x08,r14)

;==============================================
	#repeat 6
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c1906a0:
	#data 0x8C343430
loc_8c1906a4:
	#data bank12.loc_8c129128
loc_8C1906A8:
	#data 0x8C3434C4
loc_8C1906AC:
	#data 0x8C3434C8

;==============================================
	nop
	#align16_nop

;==============================================
loc_8c1906c0:
	mov.l @(loc_8C190744,pc),r1
	mov 0x00,r3
	mov.l r10,@(0x04,r14)
	mov.l r3,@r1
	mov.l @(loc_8c19074c,pc),r3
	mov r12,r1
	mov.l @(loc_8C190748,pc),r2
	jsr @r3
	mov r11,r0
	mul.l r7,r0
	sts macl,r0
	mov.l r0,@r2
	mov.l r6,@(0x08,r14)

loc_8c1906da:
	tst r5,r5
	bf loc_8c1906e2
	bra loc_8c1907e0
	nop

loc_8c1906e2:
	mov.l @(loc_8C190750,pc),r1
	mov.l r6,@(0x0C,r14)
	mov.l @(0x04,r14),r3
	add 0xFE,r3
	mov.l r3,@(0x04,r14)
	mov.l @r1,r2
	tst r6,r2
	bt/s loc_8c1906fa
	mov 0x02,r5
	mov.w @(loc_8C190740,pc),r0
	bra loc_8c1908e6
	mov.l r0,@(0x10,r14)

loc_8c1906fa:
	mov.l @(loc_8C190750,pc),r2
	mov 0xEC,r3
	mov.l @r2,r0
	and r3,r0
	cmp/eq 0x64,r0
	bt loc_8c190760
	cmp/eq 0x68,r0
	bt loc_8c190760
	cmp/eq 0x60,r0
	bt loc_8c190776
	cmp/eq 0x40,r0
	bt loc_8c190776
	cmp/eq 0x44,r0
	bt loc_8c190776
	cmp/eq 0x24,r0
	bt loc_8c190794
	cmp/eq 0x28,r0
	bt loc_8c190794
	cmp/eq 0x20,r0
	bt loc_8c1907a6
	cmp/eq 0x00,r0
	bt loc_8c1907a6
	cmp/eq 0x04,r0
	bt loc_8c1907a6
	bra loc_8c1908e6
	nop

;==============================================
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C190740:
	#data 0x0401
	#align4

loc_8C190744:
	#data 0x8C3434C4
loc_8C190748:
	#data 0x8C3434C8
loc_8c19074c:
	#data bank12.loc_8c129128
loc_8C190750:
	#data 0x8C343430

;==============================================
	#align16_nop

;==============================================
loc_8c190760:
	mov.l @(loc_8C1907C4,pc),r1
	mov.l @r1,r0
	shll2 r0
	mov.l @(r0,r9),r2
	mov.l r2,@(0x10,r14)
	mov.l @(loc_8c1907c8,pc),r2
	mov.l @r15,r1
	jsr @r2
	mov r4,r0
	bra loc_8c1907a0
	nop

loc_8c190776:
	mov.l @(loc_8C1907CC,pc),r1
	mov 0x00,r2
	mov.l r2,@r1
	mov.l @(loc_8C1907D0,pc),r0
	mov r2,r3
	mov.l r2,@r0
	mov.l @(loc_8C1907C4,pc),r3
	mov r15,r1
	add 0x18,r1
	mov.l @r3,r2
	shll2 r2
	add r1,r2
	mov.l @r2,r0
	bra loc_8c1907b6
	mov.l r0,@(0x10,r14)

loc_8c190794:
	mov.w @(loc_8C1907C0,pc),r1
	mov.l @(loc_8c1907c8,pc),r2
	mov.l r1,@(0x10,r14)
	mov.l @r15,r1
	jsr @r2
	mov r4,r0

loc_8c1907a0:
	add 0x01,r0
	bra loc_8c1908e6
	mov.l r0,@(0x08,r14)

loc_8c1907a6:
	mov.l @(loc_8C1907CC,pc),r1
	mov 0x00,r2
	mov.l r2,@r1
	mov.l @(loc_8C1907D0,pc),r0
	mov r2,r3
	mov.l r2,@r0
	mov.w @(loc_8C1907C2,pc),r2
	mov.l r2,@(0x10,r14)

loc_8c1907b6:
	bra loc_8c1908e6
	mov.l r6,@(0x08,r14)

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1907C0:
	#data 0x0401
loc_8C1907C2:
	#data 0x0800
	#align4

loc_8C1907C4:
	#data 0x8C3434F0
loc_8c1907c8:
	#data bank12.loc_8c129128
loc_8C1907CC:
	#data 0x8C3434C4
loc_8C1907D0:
	#data 0x8C3434C8

;==============================================
	#align16_nop

;==============================================
loc_8c1907e0:
	mov.l @(loc_8C190864,pc),r3
	mov.l r13,@(0x0C,r14)
	mov.l @(0x04,r14),r2
	add 0xFF,r2
	mov.l r2,@(0x04,r14)
	mov.l @r3,r0
	and r6,r0
	cmp/eq 0x01,r0
	bf/s loc_8c1907fc
	mov 0x42,r5
	tst r13,r13
	bt loc_8c190880
	bra loc_8c190812
	nop

loc_8c1907fc:
	mov.l @(loc_8C190864,pc),r2
	mov.l @r2,r0
	and 0x2C,r0
	cmp/eq 0x20,r0
	bf loc_8c19080e
	tst r6,r6
	bt loc_8c190880
	bra loc_8c190812
	nop

loc_8c19080e:
	tst r13,r13
	bt loc_8c190880

loc_8c190812:
	mov.l @(loc_8C190864,pc),r3
	mov.l @r3,r0
	and r5,r0
	cmp/eq 0x42,r0
	bf loc_8c19082c
	mov.l @(loc_8C190868,pc),r2
	mov r15,r0
	add 0x18,r0
	mov.l @r2,r1
	shll2 r1
	mov.l @(r0,r1),r3
	bra loc_8c190830
	mov.l r3,@(0x10,r14)

loc_8c19082c:
	mov.w @(loc_8C190860,pc),r2
	mov.l r2,@(0x10,r14)

loc_8c190830:
	mov.l @(loc_8C19086C,pc),r3
	mov 0x00,r2
	mov.l r2,@r3
	mov.l @(loc_8C190870,pc),r1
	mov.l r2,@r1
	mov.l r6,@(0x08,r14)
	mov.l @(0x04,r14),r0
	add 0xFF,r0
	bra loc_8c1908e4
	mov.l r0,@(0x04,r14)

;==============================================
	#repeat 8
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C190860:
	#data 0x0800
	#align4

loc_8C190864:
	#data 0x8C343430
loc_8C190868:
	#data 0x8C3434F0
loc_8C19086C:
	#data 0x8C3434C4
loc_8C190870:
	#data 0x8C3434C8


;==============================================
	nop
	#align16_nop

;==============================================
loc_8c190880:
	mov.l @(loc_8C1908C4,pc),r2
	mov.l @r2,r3
	tst r6,r3
	bt loc_8c19088e
	mov.w @(loc_8C1908C0,pc),r0
	bra loc_8c1908e4
	mov.l r0,@(0x10,r14)

loc_8c19088e:
	mov.l @(loc_8C1908C4,pc),r3
	mov.l @r3,r0
	and r5,r0
	cmp/eq 0x42,r0
	bf loc_8c1908a4
	mov.l @(loc_8C1908C8,pc),r1
	mov.l @r1,r0
	shll2 r0
	mov.l @(r0,r9),r2
	bra loc_8c1908e4
	mov.l r2,@(0x10,r14)
	
loc_8c1908a4:
	mov.l @(loc_8C1908C4,pc),r0
	mov.l @r0,r1
	tst r4,r1
	bt loc_8c1908e0
	mov.w @(loc_8C1908C2,pc),r2
	bra loc_8c1908e2
	nop

;==============================================
	nop
	#align16_nop

;==============================================
loc_8C1908C0:
	#data 0x0400
loc_8C1908C2:
	#data 0x0401
	#align4

loc_8C1908C4:
	#data 0x8C343430
loc_8C1908C8:
	#data 0x8C3434F0

;==============================================
	#repeat 3
	nop

	#align16_nop

;==============================================
loc_8c1908e0:
	mov.w @(loc_8C190980,pc),r2

loc_8c1908e2:
	mov.l r2,@(0x10,r14)

loc_8c1908e4:
	mov r6,r5

loc_8c1908e6:
	mov.l @(0x04,r14),r3
	mov 0x40,r2
	mov r7,r1
	add 0xFF,r3
	mov.l r3,@(0x04,r14)
	mov.w @(loc_8C190982,pc),r3
	mov.l r2,@(0x14,r14)
	mov.l @(loc_8c190984,pc),r2
	mov.l r3,@(0x18,r14)
	jsr @r2
	mov r4,r0
	mul.l r5,r0
	mov.l @(loc_8C190988,pc),r3
	sts macl,r0
	mov.l r0,@r3
	mov.l @(0x04,r15),r1
	mov.l @(0x10,r15),r2
	mul.l r8,r1
	mov.l @(loc_8c190984,pc),r3
	sts macl,r1
	mul.l r2,r1
	sts macl,r1
	jsr @r3
	mov r4,r0
	mov.l @(0x14,r15),r1
	mov.l @(loc_8C19098C,pc),r3
	add r1,r0
	mov.l r0,@r3
	mov r3,r0
	mov 0x0F,r4
	mov.l @r0,r2
	cmp/hi r4,r2
	bf/s loc_8c19092e
	mov 0x09,r2
	mov.l @(loc_8C19098C,pc),r3
	mov.l r4,@r3

loc_8c19092e:
	mov 0x4C,r0
	mov.l r2,@(r0,r14)
	mov 0x48,r0
	mov 0x06,r3
	mov.l r3,@(r0,r14)
	mov r12,r0
	cmp/eq 0x10,r0
	bf loc_8c190944
	mov 0x50,r0
	bra loc_8c19094a
	mov.l r11,@(r0,r14)

loc_8c190944:
	mov 0x50,r0
	mov 0x0B,r2
	mov.l r2,@(r0,r14)

loc_8c19094a:
	mov 0x58,r0
	mov.l @(loc_8C190990,pc),r3
	mov.l r13,@(r0,r14)
	mov 0x54,r0
	add 0xFF,r7
	mov.l r7,@(r0,r14)
	mov 0x60,r0
	mov.l r13,@(r0,r14)
	mov.l @r3,r0
	and r6,r0
	cmp/eq 0x01,r0
	bf loc_8c19096a
	tst r13,r13
	bt loc_8c1909ac
	bra loc_8c1909a4
	nop

loc_8c19096a:
	mov.l @(loc_8C190990,pc),r2
	mov.l @r2,r0
	and 0x2C,r0
	cmp/eq 0x20,r0
	bf loc_8c1909a0
	tst r6,r6
	bt loc_8c1909ac
	bra loc_8c1909a4
	nop


;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C190980:
	#data 0x0400
loc_8C190982:
	#data 0x0080
	#align4

loc_8c190984:
	#data bank12.loc_8c129128
loc_8C190988:
	#data 0x8C3434CC
loc_8C19098C:
	#data 0x8C3434D0
loc_8C190990:
	#data 0x8C343430


;==============================================
	#align16_nop

;==============================================
loc_8c1909a0:
	tst r13,r13
	bt loc_8c1909ac

loc_8c1909a4:
	mov.l @(0x0C,r15),r3
	mov 0x5C,r0
	bra loc_8c1909b0
	mov.l r3,@(r0,r14)

loc_8c1909ac:
	mov 0x5C,r0
	mov.l r10,@(r0,r14)

loc_8c1909b0:
	mov.l @(loc_8c1909e4,pc),r3
	mov 0x74,r0
	mov r14,r2
	sub r0,r15
	jsr @r3
	mov r15,r1
	bsr loc_8c190240
	nop
	mov.l @(loc_8C1909E8,pc),r1
	mov.l r13,@r1
	mov.l @(loc_8C1909EC,pc),r3
	mov.l r13,@r3
	mov.w @(loc_8C1909E0,pc),r1
	mov r13,r0
	add r1,r15
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
loc_8C1909E0:
	#data 0x0140
	#align4

loc_8c1909e4:
	#data bank12.loc_8c129560
loc_8C1909E8:
	#data 0x8C3434D4
loc_8C1909EC:
	#data 0x8C3434D8

;==============================================
	nop
	nop
	#align16_nop

;==============================================
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

;==============================================
	#repeat 7
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c190BA0:
	#data 0x00F8
loc_8c190BA2:
	#data 0x07FF
loc_8c190BA4:
	#data 0x03FF
	#align4

loc_8c190BA8:
	#data 0x8C3434A8
loc_8c190BAC:
	#data 0x8C3434AC
loc_8c190BB0:
	#data 0x8C3434BC
loc_8c190BB4:
	#data 0x8C3434C0
loc_8c190BB8:
	#data 0x8C343468
loc_8c190BBC:
	#data 0x8C343474
loc_8c190BC0:
	#data 0x8C34346C
loc_8c190BC4:
	#data 0x8C343478
loc_8c190BC8:
	#data 0x8C34347C
loc_8c190BCC:
	#data 0x8C343470
loc_8c190BD0:
	#data 0x8C343480
loc_8c190BD4:
	#data 0x8C34348C
loc_8c190BD8:
	#data 0x8C343490
loc_8c190BDC:
	#data 0x8C343494
loc_8c190BE0:
	#data bank18.loc_8c18C320
loc_8c190BE4:
	#data bank18.loc_8c18C32A
loc_8c190BE8:
	#data 0x00800000

;==============================================
#repeat 10
nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
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

;==============================================
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

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
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
loc_8c190C9C:
	#data 0x8C343474
loc_8c190CA0:
	#data 0x8C343478
loc_8c190CA4:
	#data 0x8C34347C
loc_8c190CA8:
	#data 0x8C343480
loc_8c190CAC:
	#data 0x8C343490
loc_8c190CB0:
	#data 0x8C343494
loc_8c190CB4:
	#data 0x8C34348C
loc_8c190CB8:
	#data 0x8C34346C
loc_8c190CBC:
	#data 0x8C3434A4

;==============================================
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

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
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
loc_8c190D0C:
	#data 0x8C3434A0
loc_8c190D10:
	#data 0x8C343434

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align16

;==============================================
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

;==============================================
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

;==============================================
loc_8c190d6e:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C190DD4,pc),r3
	mov.l @r3,r0
	tst 0x04,r0
	bt loc_8c190da0
	mov 0xFB,r2
	mov.l @r3,r1
	and r2,r1
	mov.l r1,@r3
	mov.w @(loc_8c190dc2,pc),r12
	mov 0x00,r14
	mov.l @(loc_8c190dc8,pc),r11
	mov r12,r13

loc_8c190d90:
	mov.l @(loc_8c190dcc,pc),r0
	mov.l @(r0,r14),r5
	jsr @r11
	mov r13,r4
	add 0x04,r14
	cmp/hs r12,r14
	bf/s loc_8c190d90
	add 0x04,r13
	
loc_8c190da0:
	lds.l @r15+,pr
	mov 0x78,r0
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
	#repeat 3
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c190dc0:
	#data 0x0080
loc_8c190dc2:
	#data 0x0200
loc_8c190DC4:
	#data 0x0210
	#align4

loc_8c190DC8:
	#data bank18.loc_8c18C320
loc_8c190DCC:
	#data 0x8C3435E0
loc_8c190DD0:
	#data bank12.loc_8c129728
loc_8C190DD4:
	#data 0x8C3437E0

;==============================================
	#align16_nop

;==============================================
loc_8c190de0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C190E68,pc),r3
	mov.l @r3,r0
	tst 0x04,r0
	bt loc_8c190df0
	bsr loc_8c190d6e
	nop

loc_8c190df0:
	mov.l @(loc_8C190E68,pc),r3
	mov.l @(loc_8c190e6c,pc),r14
	mov.l @r3,r3
	mov.l @(loc_8C190E68,pc),r2
	mov.l @r2,r0
	tst 0x01,r0
	bt loc_8c190e0e
	mov 0xFE,r3
	mov.l @r2,r1
	and r3,r1
	mov.l r1,@r2
	mov.w @(loc_8C190E60,pc),r4
	mov.l @(loc_8C190E70,pc),r0
	jsr @r14
	mov.l @r0,r5

loc_8c190e0e:
	mov.l @(loc_8C190E68,pc),r3
	mov.l @r3,r0
	tst 0x02,r0
	bt loc_8c190e26
	mov 0xFD,r2
	mov.l @r3,r1
	and r2,r1
	mov.l r1,@r3
	mov.w @(loc_8C190E62,pc),r4
	mov.l @(loc_8C190E74,pc),r0
	jsr @r14
	mov.l @r0,r5

loc_8c190e26:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C190E2C:
	mov.l @(loc_8c190e78,pc),r0
	sts.l pr,@-r15
	tst 0x1F,r0
	bf loc_8C190E44
	mov.l @(loc_8c190e7c,pc),r2
	mov.l @(loc_8c190e78,pc),r6
	mov.w @(loc_8c190e64,pc),r7
	jsr @r2
	mov 0x00,r5
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;==============================================
loc_8C190E44:
	mov.l @(loc_8c190e78,pc),r2
	mov 0x00,r5
	mov.l @(loc_8c190e7c,pc),r3
	mov.w @(loc_8c190e64,pc),r7
	mov r2,r6
	jmp @r3
	lds.l @r15+,pr

;unused?
loc_8c190e52:
	lds.l @r15+,pr
	rts
	nop

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c190E60:
	#data 0x00B0
loc_8c190E62:
	#data 0x00B8
loc_8c190E64:
	#data 0x0200
	#align4

loc_8c190E68:
	#data 0x8C3437E0
loc_8c190E6C:
	#data bank18.loc_8c18C320
loc_8c190E70:
	#data 0x8C3437E8
loc_8c190E74:
	#data 0x8C3437EC
loc_8c190E78:
	#data 0x8C3435E0
loc_8c190E7C:
	#data bank1a.loc_8c1a78E0

;==============================================
loc_8c190E80:
	mov.l @(0x08,r4),r4
	tst r4,r4
	bt/s loc_8C190E8E
	mov 0x00,r0
	mov 0x00,r5
	mov.l r5,@(0x18,r4)
	mov.l r5,@(0x14,r4)

loc_8C190E8E:
	rts
	nop

;==============================================
loc_8c190e92:
	mov.l @(0x08,r4),r4
	tst r4,r4
	bt/s loc_8c190ea0
	mov 0x00,r0
	mov 0x00,r5
	mov.l r5,@(0x18,r4)
	mov.l r5,@(0x14,r4)

loc_8c190ea0:
	rts
	nop

;==============================================
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

;==============================================
loc_8C190EDE:
	sts.l pr,@-r15
	mov.l @(loc_8C190F50,pc),r2
	mov.l @r2,r3
	tst r3,r3
	bt loc_8C190EF2
	mov.l @(loc_8C190F50,pc),r1
	mov.l @r1,r3
	mov.l @(loc_8c190f24,pc),r4
	jsr @r3
	nop

loc_8C190EF2:
	mov.l @(loc_8c190f54,pc),r3
	mov 0x18,r6
	mov.l @(loc_8c190f24,pc),r4
	jsr @r3
	mov 0x00,r5
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;==============================================
	#repeat 9
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c190F20:
	#data 0x8C348DE8
loc_8c190F24:
	#data 0x8C348DD0
loc_8c190F28:
	#data bank1a.loc_8c1a751E
loc_8c190F2C:
	#data loc_8c190186
loc_8c190F30:
	#data 0x8C343424
loc_8c190F34:
	#data 0x8C348DE4
loc_8c190F38:
	#data 0x8C343430
loc_8c190F3C:
	#data 0x8C343418
loc_8c190F40:
	#data loc_8c190E92
loc_8c190F44:
	#data 0x8C343AF4
loc_8c190F48:
	#data 0x8C343B00
loc_8c190F4C:
	#data 0x8C343AE8
loc_8C190F50:
	#data 0x8C348DE0
loc_8c190F54:
	#data bank12.loc_8c129728

;==============================================
	#align16_nop

;==============================================
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

loc_8c190f9c:
	mov.l @r14,r3
	mov r10,r2
	sub r3,r2
	cmp/hs r13,r2
	bf loc_8c190f8e

loc_8c190fa6:
	mov.l @r15,r2
	tst r2,r2
	bf loc_8c190fca
	mov.l @r14,r3
	mov r10,r2
	sub r3,r2
	cmp/hs r13,r2
	bt loc_8c190fca

loc_8c190fb6:
	jsr @r9
	mov r12,r4
	mov r0,r4
	tst r11,r4
	bt loc_8c190fca
	mov.l @r14,r3
	mov r10,r2
	sub r3,r2
	cmp/hs r13,r2
	bf loc_8c190fb6

loc_8c190fca:
	mov 0x00,r0
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c190fe0:
	#data 0x03FF
loc_8c190fe2:
	#data 0x010C
loc_8c190fe4:
	#data 0x3D09
	#align4

loc_8c190fe8:
	#data 0xFFD8000C
loc_8c190fec:
	#data bank18.loc_8C18C32A

;==============================================
	nop
	nop
	#align16_nop

;==============================================
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

;==============================================
	#repeat 8
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c191080:
	#data 0x0DD18957
loc_8c191084:
	#data 0xFFFF0000
loc_8c191088:
	#data 0x8C343B10
loc_8c19108C:
	#data bank18.loc_8c18C32A
loc_8c191090:
	#data 0x8C343B00
loc_8c191094:
	#data 0x17FD11DB
loc_8c191098:
	#data 0x00800408
loc_8c19109C:
	#data 0x15D1C951

;==============================================
loc_8c1910a0:
	mov.l @(loc_8C191104,pc),r10

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

loc_8c1910da:
	mov.l @(loc_8c191110,pc),r0
	mov 0x01,r1
	mov.l r1,@r0

loc_8c1910E0:
	bra loc_8c19113E
	mov r12,r13

loc_8c1910E4:
	bra loc_8c191130
	mov 0x03,r1

;==============================================
	#repeat 6
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c191100:
	#data 0x0101
	#align4

loc_8c191104:
	#data 0x15D1C955
loc_8c191108:
	#data 0xA05F689C
loc_8c19110C:
	#data 0x8C343B0C
loc_8c191110:
	#data 0x8C343B04

;==============================================
	#align16_nop

;==============================================
loc_8c191120:
	mov.l @(loc_8c1911B0,pc),r13 ; r13 set to 0x10101
	mov.l @(loc_8c1911AC,pc),r1 ; r1 set to 0x8C343B04
	bra loc_8c19113E
	mov.l r6,@r1

loc_8c191128:
	mov.l @(loc_8c1911AC,pc),r1 ; r1 set to 0x8C343B04
	bra loc_8c19113C
	mov.l r6,@r1

loc_8c19112e:
	mov 0x6F,r1

loc_8c191130:
	mov.l @(loc_8c1911AC,pc),r0 ; r0 set to 0x8C343B04
	bra loc_8c19113C
	mov.l r1,@r0

loc_8c191136:
	mov.l @(loc_8c1911ac,pc),r0
	mov.w @(loc_8C1911A0,pc),r1
	mov.l r1,@r0

loc_8c19113c:
	mov r4,r13

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

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1911a0:
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
loc_8c1911B0:
	#data 0x00010101
loc_8c1911B4:
	#data bank18.loc_8c18C320
loc_8c1911B8:
	#data 0x00800000
loc_8c1911BC:
	#data 0x02800000
loc_8c1911C0:
	#data 0x01E00000
loc_8c1911C4:
	#data 0x8C343B00
loc_8c1911C8:
	#data 0x00093F39

;==============================================
	#repeat 4
	nop

	#align16_nop

;==============================================
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

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
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
	#align4

loc_8c191274:
	#data 0x00092039
loc_8c191278:
	#data 0x3F800000
loc_8c19127C:
	#data 0x007F7F7F
loc_8c191280:
	#data 0x3727C5A0
loc_8c191284:
	#data 0x01203000
loc_8c191288:
	#data 0x8C343B00
loc_8c19128C:
	#data 0x0027DF77

;==============================================
	nop
	nop
	#align16_nop

;==============================================
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

;==============================================
loc_8c1912d4:
	mov.l @(loc_8C191310,pc),r3
	rts
	mov.l @r3,r0

;==============================================
loc_8c1912da:
	mov.l @(loc_8C191314,pc),r2
	rts
	mov.l @r2,r0

;==============================================
loc_8c1912e0:
	mov.l @(loc_8C191318,pc),r3
	rts
	mov.l @r3,r0

;==============================================
	#repeat 7
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c191300:
	#data 0x0007DF77
loc_8c191304:
	#data bank17.loc_8c17A6E0
loc_8c191308:
	#data 0x00200000
loc_8c19130C:
	#data 0xA5000000
loc_8C191310:
	#data 0x8C343B10
loc_8C191314:
	#data 0x8C343B00
loc_8C191318:
	#data 0x8C343B0C

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align16

;==============================================
loc_8c191320:
	mov.l @(loc_8c1913A4,pc),r5 ; r5 set to 0x8C348DF4
	cmp/eq r4,r5
	movt r4
	rts
	mov r4,r0

;==============================================
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

;==============================================
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

;==============================================
loc_8c19135e:
	mov.w @(loc_8C1913A0,pc),r3
	mov 0x00,r5
	mov.l @(0x08,r4),r4
	mov.l @(loc_8c1913b0,pc),r2
	mov.l r3,@r4
	mov.l @(loc_8c1913b4,pc),r3
	mov.w @(loc_8C1913A2,pc),r6
	mov.l r5,@(0x04,r4)
	mov.l r5,@(0x08,r4)
	mov.l r2,@(0x10,r4)
	mov 0x04,r2
	mov.l r3,@(0x14,r4)
	mov r2,r3
	mov.l r2,@(0x0C,r4)
	mov r5,r2
	cmp/hs r3,r2
	bt loc_8c191394

loc_8c191380:
	mul.l r6,r5
	mov r4,r3
	add 0x18,r3
	sts macl,r0
	add r3,r0
	mov.l r5,@r0
	add 0x01,r5
	mov.l @(0x0C,r4),r2
	cmp/hs r2,r5
	bf loc_8c191380

loc_8c191394:
	rts
	nop

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1913A0:
	#data 0x03B8
loc_8c1913A2:
	#data 0x008C
	#align4

loc_8c1913A4:
	#data 0x8C348DF4
loc_8c1913A8:
	#data bank12.loc_8c1291DC
loc_8c1913AC:
	#data bank12.loc_8c12939C
loc_8c1913B0:
	#data loc_8c19132A
loc_8c1913B4:
	#data loc_8c191344

;==============================================
	#align16_nop

;==============================================
loc_8c1913c0:
	mov.l @(loc_8c191468,pc),r3
	mov 0x00,r5
	mov.w @(loc_8C191460,pc),r2
	mov.l r3,@(0x14,r4)
	mov.l @(0x08,r4),r4
	mov.l @(loc_8c19146c,pc),r3
	mov.l r2,@r4
	mov.l @(loc_8c191470,pc),r2
	mov.w @(loc_8C191462,pc),r6
	mov.l r5,@(0x04,r4)
	mov.l r5,@(0x08,r4)
	mov.l r3,@(0x10,r4)
	mov 0x04,r3
	mov.l r2,@(0x14,r4)
	mov r3,r2
	mov.l r3,@(0x0C,r4)
	mov r5,r3
	cmp/hs r2,r3
	bt loc_8c1913fa

loc_8c1913e6:
	mul.l r6,r5
	mov r4,r3
	add 0x18,r3
	sts macl,r0
	add r3,r0
	mov.l r5,@r0
	add 0x01,r5
	mov.l @(0x0C,r4),r2
	cmp/hs r2,r5
	bf loc_8c1913e6

loc_8c1913fa:
	rts
	mov 0x00,r0

;==============================================
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
	
;==============================================
loc_8c191418:
	mov.w @(loc_8C191464,pc),r0
	mov.l @(loc_8C19148C,pc),r1
	mov.l @(r0,r4),r3
	mov.l @r1,r2
	mov.l r2,@(0x28,r3)
	add 0x04,r1
	mov.l @(r0,r4),r3
	mov.l @r1,r2
	mov.l r2,@(0x24,r3)
	tst r7,r7
	mov.l r6,@(0x1C,r4)
	mov.l r5,@(0x18,r4)
	mov.l @(r0,r4),r3
	mov.l r7,@(0x1C,r3)
	bt loc_8c191440
	mov.l @(r0,r4),r3
	mov.l @(loc_8C191490,pc),r2
	mov.l @(0x24,r3),r1
	or r2,r1
	mov.l r1,@(0x24,r3)

loc_8c191440:
	rts
	mov 0x00,r0

;==============================================
	#repeat 7
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C191460:
	#data 0x03B8
loc_8C191462:
	#data 0x008C
loc_8C191464:
	#data 0x0088
	#align4

loc_8c191468:
	#data loc_8C19135E
loc_8c19146c:
	#data loc_8c19132A
loc_8c191470:
	#data loc_8c191344
loc_8c191474:
	#data 0x8C348DF4
loc_8c191478:
	#data loc_8c1913c0
loc_8c19147c:
	#data 0x8C3491B8
loc_8c191480:
	#data 0x8C348DE4
loc_8c191484:
	#data 0x8C3491AC
loc_8c191488:
	#data 0x8C348DD0
loc_8C19148C:
	#data 0x8C343484
loc_8C191490:
	#data 0x00010000

;==============================================
	#align16_nop

;==============================================
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
	add 0x01,r4
	cmp/ge r5,r4
	bf loc_8c1914d6

loc_8c19151c:
	mov r11,r0
	cmp/eq 0x01,r0
	bt loc_8c191528

loc_8c191522:
	mov.l @(loc_8c19154C,pc),r0 ; r0 set to 0xEEEE
	bra loc_8c19152A
	nop

loc_8c191528:
	mov 0x00,r0

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

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c191540:
	#data 0x008C
loc_8c191542:
	#data 0x0088
	#align4

loc_8c191544:
	#data 0x8C348DF4
loc_8c191548:
	#data bank1a.loc_8c1a7582
loc_8c19154C:
	#data 0x0000EEEE

;==============================================
	nop
	nop
	#align16_nop

;==============================================
loc_8c191560:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8C1915C4,pc),r13
	mov r5,r14
	mov.l r4,@(0x04,r15)
	mov.l r5,@r15
	bsr loc_8c191320
	mov.l @(0x04,r15),r4
	tst r0,r0
	bt loc_8c191582
	mov.l @(loc_8c1915c8,pc),r3
	jsr @r3
	mov.l @r15,r4
	tst r0,r0
	bf loc_8c191588

loc_8c191582:
	mov.l @(loc_8C1915CC,pc),r0
	bra loc_8c1915b2
	nop

loc_8c191588:
	mov.l @r14,r5
	mov 0x01,r4
	mov.l @(0x04,r13),r3
	shad r5, r4
	tst r4,r3
	bt loc_8c1915a2
	mov.l @(0x04,r13),r3
	not r4,r4
	and r4,r3
	mov.l r3,@(0x04,r13)
	mov.l @(0x08,r13),r2
	add 0xFF,r2
	mov.l r2,@(0x08,r13)

loc_8c1915a2:
	mov.l @(loc_8c1915d0,pc),r3
	mov.w @(loc_8C1915C0,pc),r0
	jsr @r3
	mov.l @(r0,r14),r4
	mov 0x00,r4
	mov r4,r0
	mov.l r4,@(0x1C,r14)
	mov.l r4,@(0x20,r14)

loc_8c1915b2:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1915C0:
	#data 0x0088
	#align4

loc_8C1915C4:
	#data 0x8C348DF4
loc_8c1915C8:
	#data bank1a.loc_8c1a7FC0
loc_8C1915CC:
	#data 0x0000EEEE
loc_8c1915D0:
	#data bank1a.loc_8c1a761C

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align16

;==============================================
loc_8c1915e0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(loc_8c191664,pc),r3
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c191644
	mov.w @(loc_8C191660,pc),r0
	mov.l @(loc_8C191668,pc),r4
	mov r0,r3
	mov.l @(loc_8C19166C,pc),r2
	add r4,r3
	mov.l @(r0,r4),r14
	mov.l r3,@(0x04,r15)
	mov r15,r3
	add 0x08,r3
	mov.l r2,@(0x08,r15)
	mov.l r3,@r15
	mov.l @(0x04,r15),r3
	mov.l @(loc_8c191670,pc),r13
	mov.l @r3,r2
	cmp/eq r14,r2
	bf loc_8c191636
	mov.l @r15,r1
	mov.l @r1,r3
	tst r3,r3
	bt loc_8c191636

loc_8c19161a:
	jsr @r13
	mov 0x07,r4
	mov.l @r15,r3
	mov.l @r3,r2
	add 0xFF,r2
	mov.l r2,@r3
	mov.l @(0x04,r15),r3
	mov.l @r3,r2
	cmp/eq r14,r2
	bf loc_8c191636
	mov.l @r15,r1
	mov.l @r1,r3
	tst r3,r3
	bf loc_8c19161a

loc_8c191636:
	mov.l @r15,r3
	mov.l @r3,r2
	tst r2,r2
	bf loc_8c191644
	mov.l @(loc_8C191674,pc),r4
	bra loc_8c191646
	nop

loc_8c191644:
	mov 0x00,r4

loc_8c191646:
	mov r4,r0
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C191660:
	#data 0x0940
	#align4

loc_8c191664:
	#data bank18.loc_8c18dfa0
loc_8C191668:
	#data 0x8C32D278
loc_8C19166C:
	#data 0x00100000
loc_8c191670:
	#data bank18.loc_8c18f7e0
loc_8C191674:
	#data 0x0000EEEE

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align16

;==============================================
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

loc_8c1916a8:
	mov.l @(0x10,r14),r14
	tst r14,r14
	bf loc_8c191696

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

;==============================================
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

;==============================================
	#repeat 7
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c191700:
	#data 0x2000
	#align4

loc_8c191704:
	#data bank1a.loc_8c1a73C0
loc_8c191708:
	#data 0x8C32DAAC
loc_8c19170C:
	#data 0x00008000

;==============================================
	nop
	#align16_nop

;==============================================
loc_8c191720:
	mov.l @(0x10,r14),r14
	tst r14,r14
	bf loc_8c1916d6

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

loc_8c191744:
	sts.l pr,@-r15
	mov.l @(loc_8C191790,pc),r2
	mov.l @r2,r3
	tst r3,r3
	bt loc_8c19175a
	mov.l @(loc_8c191794,pc),r3
	jsr @r3
	nop
	mov.l @(loc_8C191790,pc),r3
	mov 0x00,r2
	mov.l r2,@r3

loc_8c19175a:
	mov.w @(loc_8C191786,pc),r5
	mov 0x00,r4
	mov.w @(loc_8C191784,pc),r6

loc_8c191760:
	mov.l @(loc_8C191798,pc),r0
	mov.l @(r0,r4),r2
	tst r2,r2
	bt loc_8c191770
	lds.l @r15+,pr
	mov.l @(loc_8C19179C,pc),r0
	rts
	nop

loc_8c191770:
	add r6,r4
	cmp/hs r5,r4
	bf loc_8c191760
	mov 0x00,r0
	lds.l @r15+,pr
	rts
	nop

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c191780:
	#data 0x0838
loc_8c191782:
	#data 0x095C
loc_8C191784:
	#data 0x01C4
loc_8C191786:
	#data 0x0E20
	#align4

loc_8c191788:
	#data 0x8C32D278
loc_8c19178c:
	#data bank18.loc_8C18F7E0
loc_8C191790:
	#data 0x8C32EA9C
loc_8c191794:
	#data loc_8c1915e0
loc_8C191798:
	#data 0x8C32DC18
loc_8C19179C:
	#data 0x0000EEEE

;==============================================
loc_8c1917a0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov 0x10,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov 0x08,r10
	mov.l r9,@-r15
	mov 0xFF,r9
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C191804,pc),r13
	mov.l @(loc_8c191808,pc),r2
	mov.l @r2,r3
	tst r3,r3
	bf/s loc_8c191820
	mov 0x00,r14
	mov.l @(loc_8c191808,pc),r1
	mov.l @(loc_8C19180C,pc),r3
	mov.l r3,@r1
	mov r14,r4

loc_8c1917ca:
	mov.w @(loc_8C191800,pc),r3
	add r13,r3
	add r4,r3
	add 0x04,r4
	cmp/hs r10,r4
	bf/s loc_8c1917ca
	mov.l r14,@r3
	mov r14,r4

loc_8c1917da:
	mov.w @(loc_8C191802,pc),r3
	add r13,r3
	add r4,r3
	add 0x04,r4
	cmp/hs r12,r4
	bf/s loc_8c1917da
	mov.l r14,@r3
	bra loc_8c191876
	nop

;==============================================
	#repeat 6
	nop
	
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C191800:
	#data 0x07D8
loc_8C191802:
	#data 0x07E0
	#align4

loc_8C191804:
	#data 0x8C32D278
loc_8c191808:
	#data bank1c.loc_8c1c95b8
loc_8C19180C:
	#data 0x8C32DBE8

;==============================================
	nop
	#align16_nop

;==============================================
loc_8c191820:
	mov.l @(loc_8c19192c,pc),r1
	jsr @r1
	nop
	mov r14,r11
	mov r14,r8

loc_8c19182a:
	mov.w @(loc_8C191920,pc),r3
	add r13,r3
	add r11,r3
	mov.l @r3,r2
	tst r2,r2
	bt loc_8c191846
	mov.w @(loc_8C191920,pc),r5
	mov.l @(loc_8c191930,pc),r3
	add r13,r5
	mov.w @(loc_8C191922,pc),r0
	add r8,r5
	mov.l @r5,r5
	jsr @r3
	mov.l @(r0,r13),r4

loc_8c191846:
	add 0x04,r11
	cmp/hs r10,r11
	bf/s loc_8c19182a
	add 0x04,r8
	mov.l @(loc_8c191934,pc),r8
	mov r14,r11
	mov r14,r10
	
loc_8c191854:
	mov.l @(loc_8C191938,pc),r0
	mov.l r9,@(r0,r11)
	mov.w @(loc_8C191924,pc),r3
	add r13,r3
	add r11,r3
	mov.l @r3,r2
	tst r2,r2
	bt loc_8c19186e
	mov.w @(loc_8C191924,pc),r4
	add r13,r4
	add r10,r4
	jsr @r8
	mov.l @r4,r4
	
loc_8c19186e:
	add 0x04,r11
	cmp/hs r12,r11
	bf/s loc_8c191854
	add 0x04,r10
	
loc_8c191876:
	mov.l @(loc_8C19193C,pc),r2
	mov.l r14,@r2
	mov.l @(loc_8C191940,pc),r3
	mov.l r14,@r3
	mov.l @(loc_8C191944,pc),r1
	mov.l r9,@r1
	mov.l @(loc_8C191948,pc),r2
	mov.l r14,@r2
	mov.l @(loc_8C19194C,pc),r3
	mov.l r14,@r3
	mov.l @(loc_8C191950,pc),r1
	mov.l r14,@r1
	add 0x0C,r2
	mov.l r14,@r2
	add 0x0C,r3
	mov.l r14,@r3
	add 0x0C,r1
	mov.l r14,@r1
	add 0x0C,r2
	mov.l r14,@r2
	add 0x0C,r3
	mov.l r14,@r3
	add 0x0C,r1
	mov.l r14,@r1
	mov.l @(loc_8C191954,pc),r2
	mov.l r14,@r2
	mov.l @(loc_8C191958,pc),r3
	mov.l r14,@r3
	mov.l @(loc_8C19195C,pc),r1
	mov.l r14,@r1
	mov.w @(loc_8C191928,pc),r5
	mov r14,r4
	mov.w @(loc_8C191926,pc),r6
	
loc_8c1918b8:
	mov.l @(loc_8C191960,pc),r0
	mov.l r14,@(r0,r4)
	mov r0,r3
	add r4,r3
	mov.l r14,@(0x0C,r3)
	mov r0,r2
	add r4,r2
	add r6,r4
	cmp/hs r5,r4
	bf/s loc_8c1918b8
	mov.l r14,@(0x10,r2)
	mov.l @(loc_8C191964,pc),r2
	mov.l r14,@r2
	mov.l @(loc_8C191968,pc),r3
	mov.l r14,@r3
	mov.l @(loc_8C19196C,pc),r1
	mov.l r14,@r1
	mov.l @(loc_8c191974,pc),r2
	mov 0x00,r6
	mov.l @(loc_8c191970,pc),r5
	jsr @r2
	mov 0x14,r4
	mov.l @(loc_8c191974,pc),r3
	mov 0x00,r6
	mov.l @(loc_8c191978,pc),r5
	jsr @r3
	mov 0x1D,r4
	mov.l @(loc_8c191980,pc),r2
	mov.l @(loc_8c19197c,pc),r5
	jsr @r2
	mov 0x00,r4
	lds.l @r15+,pr
	mov.l @(loc_8c191980,pc),r3
	mov 0x01,r4
	mov.l @(loc_8c191984,pc),r5
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
	#repeat 3
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C191920:
	#data 0x07D8
loc_8C191922:
	#data 0x07D4
loc_8C191924:
	#data 0x07E0
loc_8C191926:
	#data 0x01C4
loc_8C191928:
	#data 0x0E20
	#align4

loc_8c19192c:
	#data bank1a.loc_8c1a8dc0
loc_8c191930:
	#data loc_8c191560
loc_8c191934:
	#data bank18.loc_8c18d160
loc_8C191938:
	#data 0x8C32EA54
loc_8C19193C:
	#data 0x8C32EA68
loc_8C191940:
	#data 0x8C32EA74
loc_8C191944:
	#data 0x8C32EA78
loc_8C191948:
	#data 0x8C32DBF4
loc_8C19194C:
	#data 0x8C32DBF8
loc_8C191950:
	#data 0x8C32DBFC
loc_8C191954:
	#data 0x8C32EA88
loc_8C191958:
	#data 0x8C32EA8C
loc_8C19195C:
	#data 0x8C32EA94
loc_8C191960:
	#data 0x8C32DC18
loc_8C191964:
	#data 0x8C32EA6C
loc_8C191968:
	#data 0x8C32EA70
loc_8C19196C:
	#data 0x8C32EA98
loc_8c191970:
	#data loc_8c191e56
loc_8c191974:
	#data bank18.loc_8c18c740
loc_8c191978:
	#data loc_8c191d86
loc_8c19197c:
	#data loc_8c191680
loc_8c191980:
	#data bank1a.loc_8c1a77e0
loc_8c191984:
	#data loc_8c1916c0

;==============================================
	#repeat 6
	nop

	#align16_nop

;==============================================
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

;==============================================
loc_8c1919B4:
	add r6,r4
	cmp/hs r7,r4
	bf/s loc_8c1919A8
	add r6,r5
	mov 0x00,r0 ; r0 set to 0x00
	rts
	nop

;==============================================
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

;==============================================
loc_8c1919e0:
	add r6,r4
	cmp/hs r7,r4
	bf/s loc_8c1919ca
	add r6,r5
	mov 0x00,r0
	rts
	nop

;==============================================
	#repeat 4
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c191a00:
	#data 0x0E20
loc_8c191a02:
	#data 0x01C4
	#align4

loc_8c191a04:
	#data 0x8C32DC18
loc_8c191a08:
	#data 0x8C32DC24

;==============================================
	#repeat 4
	nop

	#align16_nop

;==============================================
loc_8c191a20:
	mov.w @(loc_8C191AC0,pc),r7
	mov 0x00,r4
	mov.w @(loc_8C191AC2,pc),r6
	mov r4,r5

loc_8c191a28:
	mov.l @(loc_8C191AC4,pc),r0
	mov.l @(r0,r4),r0
	cmp/eq 0x01,r0
	bf loc_8c191a3e
	mov.l @(loc_8C191AC8,pc),r0
	mov.l @(r0,r4),r2
	tst r2,r2
	bf loc_8c191a3e
	mov.l @(loc_8C191AC4,pc),r0
	rts
	add r5,r0

loc_8c191a3e:
	add r6,r4
	cmp/hs r7,r4
	bf/s loc_8c191a28
	add r6,r5
	mov 0x00,r0
	rts
	nop

;==============================================
loc_8C191A4A:
	mov.l @(loc_8C191ACC,pc),r3
	mov.l @r3,r5
	tst r5,r5
	bt/s loc_8C191A6E
	mov 0x01,r6
	mov.l @(loc_8C191ACC,pc),r1
	mov 0x00,r7
	mov.l r7,@r1
	mov.l @(loc_8C191AD0,pc),r2
	mov.l r6,@r2
	mov.l @(loc_8C191AD4,pc),r3
	not r5,r5
	mov.l @r3,r0
	and r5,r0
	mov.l r0,@r3
	add 0x18,r3
	mov.l r7,@r3

loc_8C191A6E:
	mov.l @(loc_8C191AD4,pc),r2
	neg r4,r4
	mov.l @r2,r0
	shld r4, r0
	rts
	and r6,r0

;==============================================
loc_8C191A7A:
	mov.l @(loc_8C191AD8,pc),r3
	mov.l @r3,r5
	tst r5,r5
	bt/s loc_8C191A9C
	mov 0x01,r6
	mov.l @(loc_8C191AD8,pc),r1
	mov 0x00,r7
	mov.l r7,@r1
	mov.l @(loc_8C191ADC,pc),r2
	mov.l r6,@r2
	mov.l @(loc_8C191AE0,pc),r3
	not r5,r5
	mov.l @r3,r0
	and r5,r0
	mov.l r0,@r3
	add 0x18,r3
	mov.l r7,@r3

loc_8C191A9C:
	mov.l @(loc_8C191AE0,pc),r2
	neg r4,r4
	mov.l @r2,r0
	shld r4, r0
	rts
	and r6,r0

;==============================================
	#repeat 6
	nop

	#align16_nop
;==============================================
loc_8C191AC0:
	#data 0x0E20
loc_8C191AC2:
	#data 0x01C4
	#align4

loc_8C191AC4:
	#data 0x8C32DC18
loc_8C191AC8:
	#data 0x8C32DC28
loc_8C191ACC:
	#data 0x8C32DC00
loc_8C191AD0:
	#data 0x8C32DC0C
loc_8C191AD4:
	#data 0x8C32DBF4
loc_8C191AD8:
	#data 0x8C32DC04
loc_8C191ADC:
	#data 0x8C32DC10
loc_8C191AE0:
	#data 0x8C32DBF8

;==============================================
	#repeat 8
	nop

	#align16_nop

;==============================================
loc_8c191b00:
	mov.l @(loc_8C191C00,pc),r3
	mov.l @r3,r5
	tst r5,r5
	bt/s loc_8c191b22
	mov 0x01,r6
	mov.l @(loc_8C191C00,pc),r1
	mov 0x00,r7
	mov.l r7,@r1
	mov.l @(loc_8C191C04,pc),r2
	mov.l r6,@r2
	mov.l @(loc_8C191C08,pc),r3
	not r5,r5
	mov.l @r3,r0
	and r5,r0
	mov.l r0,@r3
	add 0x18,r3
	mov.l r7,@r3

loc_8c191b22:
	mov.l @(loc_8C191C08,pc),r2
	neg r4,r4
	mov.l @r2,r0
	shld r4, r0
	rts
	and r6,r0

loc_8c191B2e:
	mov.l @(loc_8C191C0C,pc),r3
	mov 0x01,r5
	mov.l r5,@r3
	mov.l @(loc_8C191C10,pc),r2
	shad r4, r5
	mov.l @r2,r1
	or r5,r1
	mov.l r1,@r2
	mov r3,r0
	mov 0x00,r2
	rts
	mov.l r2,@r0

;==============================================
loc_8c191B46:
	mov.l @(loc_8C191C04,pc),r3
	mov 0x01,r5
	mov.l r5,@r3
	mov.l @(loc_8C191C08,pc),r2
	shad r4, r5
	mov.l @r2,r1
	or r5,r1
	mov.l r1,@r2
	mov r3,r0
	mov 0x00,r2
	rts
	mov.l r2,@r0

;==============================================
loc_8c191b5e:
	mov.l @(loc_8C191C14,pc),r3
	mov 0x01,r5
	mov.l r5,@r3
	mov.l @(loc_8C191C18,pc),r2
	shad r4, r5
	mov.l @r2,r1
	or r5,r1
	mov.l r1,@r2
	mov r3,r0
	mov 0x00,r2
	mov.l r2,@r0
	mov.l @(loc_8C191C1C,pc),r2
	mov.l @r2,r1
	tst r1,r1
	bt loc_8c191b88
	mov.l @(loc_8C191C20,pc),r3
	mov.l @r3,r0
	add 0x01,r0
	mov r3,r1
	and 0x01,r0
	mov.l r0,@r1

loc_8c191b88:
	rts
	nop

;==============================================
;unused?
loc_8c191b8c:
	mov.l @(0x94,PC),r2
	mov.l @r2,r3
	cmp/hs r3,r4
	bt loc_8c191bb6
	mov.l @(0x74,PC),r1
	mov 0x01,r5
	mov.l @r1,r3
	tst r3,r3
	bt.s loc_8c191bac
	shad r4,r5
	mov.l @(0x84,PC),r3
	mov.l @r3,r0
	or r5,r0
	mov.l r0,@r3
	bra loc_8c191bb6
	nop

loc_8c191bac:
	mov.l @(0x60,PC),r3
	not r5,r5
	mov.l @r3,r0
	and r5,r0
	mov.l r0,@r3

loc_8c191bb6:
	rts
	nop

;==============================================
loc_8c191bba:
	mov.l @(0x70,PC),r2
	mov.l @r2,r3
	cmp/hs r3,r4
	bt loc_8c191be4
	mov.l @(0x50,PC),r1
	mov 0x01,r5
	mov.l @r1,r3
	tst r3,r3
	bt.s loc_8c191bda
	shad r4,r5
	mov.l @(0x60,PC),r3
	mov.l @r3,r0
	or r5,r0
	mov.l r0,@r3
	bra loc_8c191be4
	nop

loc_8c191bda:
	mov.l @(0x3C,PC),r3
	not r5,r5
	mov.l @r3,r0
	and r5,r0
	mov.l r0,@r3

loc_8c191be4:
	rts
	nop

;==============================================
	#repeat 6
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8C191C00:
	#data 0x8C32DC08
loc_8C191C04:
	#data 0x8C32DC14
loc_8C191C08:
	#data 0x8C32DBFC
loc_8C191C0C:
	#data 0x8C32DC0C
loc_8C191C10:
	#data 0x8C32DBF4
loc_8C191C14:
	#data 0x8C32DC10
loc_8C191C18:
	#data 0x8C32DBF8
loc_8C191C1C:
	#data 0x8C32EA9C
loc_8C191C20:
	#data 0x8C32EA98
loc_8C191C24:
	#data 0x8C32DBE8
loc_8C191C28:
	#data 0x8C32DC00
loc_8C191C2c:
	#data 0x8C32DBEC
loc_8C191C30:
	#data 0x8C32DC04

;==============================================
	#align16_nop

;==============================================
;unused?
loc_8c191c40:
	mov.l @(0x9C,PC),r2
	mov.l @r2,r3
	cmp/hs r3,r4
	bt loc_8c191c6a
	mov.l @(0x98,PC),r1
	mov 0x01,r5
	mov.l @r1,r3
	tst r3,r3
	bt.s loc_8c191c60
	shad r4,r5
	mov.l @(0x90,PC),r3
	mov.l @r3,r0
	or r5,r0
	mov.l r0,@r3
	bra loc_8c191c6a
	nop

loc_8c191c60:
	mov.l @(0x88,PC),r3
	not r5,r5
	mov.l @r3,r0
	and r5,r0
	mov.l r0,@r3

loc_8c191c6a:
	rts
	nop

;==============================================
loc_8c191c6e:
	mov.l @(0x80,PC),r3
	mov.l @r3,r4
	tst r4,r4
	mov 0x00,r6
	bt.s loc_8c191c90
	mov 0x01,r5
	mov.l @(0x74,PC),r1
	mov.l r6,@r1
	mov.l @(0x74,PC),r2
	mov.l r5,@r2
	mov.l @(0x74,PC),r3
	not r4,r4
	mov.l @r3,r0
	and r4,r0
	mov.l r0,@r3
	add 0x18,r3
	mov.l r6,@r3

loc_8c191c90:
	mov.l @(0x68,PC),r1
	mov.l @r1,r2
	tst r2,r2
	bt loc_8c191cac
	mov.l @(0x64,PC),r2
	mov.l @r2,r3
	shad r3,r5
	mov.l @(0x58,PC),r3
	mov.l @r3,r0
	tst r0,r5
	bf loc_8c191cd2
	mov.l @(0x58,PC),r1
	rts
	mov.l @r1,r0

loc_8c191cac:
	mov.l @(0x54,PC),r0
	mov.l @r0,r3
	mov 0x00,r2
	cmp/hs r3,r2
	bt.s loc_8c191cd2
	mov r6,r4

loc_8c191cb8:
	mov.l @(0x3C,PC),r1
	mov r5,r3
	shad r4,r3
	mov.l @r1,r2
	tst r2,r3
	bf loc_8c191cc8
	rts
	mov r4,r0

loc_8c191cc8:
	mov.l @(0x38,PC),r2
	add 0x01,r4
	mov.l @r2,r3
	cmp/hs r3,r4
	bf loc_8c191cb8

loc_8c191cd2:
	mov 0xFF,r0
	rts
	nop


;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c191ce0:
	#data 0x8C32DBF0
loc_8c191ce4:
	#data 0x8C32DC14
loc_8c191ce8:
	#data 0x8C32DC08
loc_8c191cec:
	#data 0x8C32DBFC
loc_8c191cf0:
	#data 0x8C32DC04
loc_8c191cf4:
	#data 0x8C32DC10
loc_8c191cf8:
	#data 0x8C32DBF8
loc_8c191cfc:
	#data 0x8C32EA9C
loc_8c191d04:
	#data 0x8C32EA98
loc_8c191d08:
	#data 0x8C32DBEC

;==============================================
	#repeat 6
	nop

	#align16_nop

;==============================================
loc_8c191d20:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @(0xBC,PC),r2
	mov.l @r2,r3
	tst r3,r3
	bt loc_8c191d7a
	mov.l @(0xB8,PC),r3
	mov.l @r3,r1
	add 0xFF,r1
	mov.l r1,@r3
	mov r3,r0
	mov.l @r0,r3
	tst r3,r3
	bf loc_8c191d7a
	mov.w @(0x9A,PC),r0
	mov.l @(0xA8,PC),r13
	mov.l @(r0,r13),r3
	add 0x01,r3
	bsr loc_8c191e56
	mov.l r3,@(r0,r13)
	mov.l @(0xA4,PC),r2
	jsr @r2
	nop
	mov.w @(0x8A,PC),r0
	mov.l @(r0,r13),r0
	cmp/eq 0x01,r0
	bt loc_8c191d72
	mov.l @(0x98,PC),r11
	mov 0x00,r14
	mov 0x08,r12

loc_8c191d62:
	mov.w @(0x7E,PC),r4
	add r13,r4
	add r14,r4
	jsr @r11
	mov.l @r4,r4
	add 0x04,r14
	cmp/hs r12,r14
	bf loc_8c191d62

loc_8c191d72:
	mov.w @(0x6C,PC),r0
	mov.l @(0x74,PC),r3
	mov.l @(r0,r13),r2
	mov.l r2,@r3

loc_8c191d7a:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
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

;==============================================
	#repeat 4
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c191De0:
	#data 0x0830
loc_8c191De2:
	#data 0x082C
loc_8c191De4:
	#data 0x07D8
	#align4

loc_8c191De8:
	#data 0x8C32EA68
loc_8c191Dec:
	#data 0x8C32EA90
loc_8c191DF0:
	#data 0x8C32D278
loc_8c191DF4:
	#data bank1a.loc_8c1a76B4
loc_8c191DF8:
	#data bank18.loc_8c18CD60
loc_8c191DFC:
	#data 0x8C32EA74
loc_8c191E00:
	#data 0x8C32EA80
loc_8c191E04:
	#data 0x8C32EA7C
loc_8c191E08:
	#data 0x8C32DBF0
loc_8c191E0C:
	#data 0x8C32DC14
loc_8c191E10:
	#data 0x8C32DC08

;==============================================
	#align16_nop

;==============================================
loc_8c191e20:
	mov.l @(loc_8C191EE4,pc),r3
	not r5,r5
	mov.l @r3,r2
	and r5,r2
	mov.l r2,@r3

loc_8c191e2a:
	mov.l @(loc_8C191EE8,pc),r1
	mov.l @r1,r3
	mov 0xFF,r2
	mov.l @(loc_8C191EEC,pc),r0
	mov.l r2,@(0x24,r3)
	mov 0x00,r3
	mov.l r3,@r0

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

;==============================================
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

;=============================================
	#repeat 6
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c191EE0:
	#data 0x0938
loc_8c191EE2:
	#data 0x0914
	#align4

loc_8c191ee4:
	#data 0x8C32DBFC
loc_8c191ee8:
	#data 0x8C32EA7C
loc_8c191eec:
	#data 0x8C32EA74
loc_8c191EF0:
	#data loc_8c193180
loc_8c191EF4:
	#data bank18.loc_8c18F7E0
loc_8c191EF8:
	#data 0x8C32DBB8
loc_8c191EFC:
	#data 0x8C32EA68
loc_8c191F00:
	#data 0x8C32D278
loc_8c191F04:
	#data 0xFFD8000C
loc_8c191F08:
	#data 0x8C32EA6C
loc_8c191F0C:
	#data 0x8C32EA9C
loc_8c191F10:
	#data 0x8C32DBEC
loc_8c191F14:
	#data 0x8C32DC10
loc_8c191F18:
	#data 0x8C32DC04

;==============================================
	#align16_nop

;==============================================
loc_8c191f20:
	mov.l @(loc_8C191FE8,pc),r2
	not r5,r5
	mov.l @r2,r1
	and r5,r1
	mov.l r1,@r2

loc_8c191f2a:
	mov.l @(loc_8c191fec,pc),r2
	mov.l @r2,r3
	mov 0xFF,r1
	mov.l r1,@(0x20,r3)

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

;==============================================
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

loc_8c191fb6:
	mov.l @(loc_8C192018,pc),r3
	not r5,r5
	mov.l @r3,r0
	and r5,r0
	mov.l r0,@r3

loc_8c191FC0:
	mov.l r6,@(0x1C,r14)
	bra loc_8c192026
	mov.l r7,@(0x14,r14)

;==============================================
	#repeat 6
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c191FE0:
	#data 0x08F4
loc_8c191FE2:
	#data 0x0934
loc_8c191FE4:
	#data 0x083C
	#align4

loc_8c191fe8:
	#data 0x8C32DBF8
loc_8c191FEC:
	#data 0x8C32EA6C
loc_8c191FF0:
	#data 0x8C32EA70
loc_8c191FF4:
	#data loc_8c193180
loc_8c191FF8:
#data bank18.loc_8c18F7E0
loc_8c191FFC:
	#data bank1a.loc_8c1a7844
loc_8c192000:
	#data 0x8C32D278
loc_8c192004:
	#data 0xFFD8000C
loc_8c192008:
	#data bank1a.loc_8c1a7280
loc_8c19200C:
	#data 0x8C32DBE8
loc_8c192010:
	#data 0x8C32DC0C
loc_8c192014:
	#data 0x8C32DC00
loc_8c192018:
	#data 0x8C32DBF4

;==============================================
	#align16_nop

;==============================================
loc_8c192020:
	mov.l @(0x10,r14),r14
	tst r14,r14
	bf loc_8c191f8e

loc_8c192026:
	mov.l @(loc_8c1920c0,pc),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(loc_8c1920c4,pc),r2
	jsr @r2
	mov 0x05,r4

loc_8c192032:
	mov 0x00,r0 ; r0 set to 0x00
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
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

;==============================================
	#repeat 8
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1920C0:
	#data loc_8c193180
loc_8c1920C4:
	#data bank18.loc_8c18F7E0
loc_8c1920C8:
	#data 0x8C32D278
loc_8c1920CC:
	#data 0x8C32DBF0
loc_8c1920D0:
	#data 0x8C32D2A0
loc_8c1920D4:
	#data 0x8C32EA9C
loc_8c1920D8:
	#data 0x8C32EA38

;==============================================
	#align16_nop

;==============================================
loc_8c1920E0:
	jsr @r10
	mov 0x07,r4

loc_8c1920e4:
	mov.l @(loc_8C1921A4,pc),r2
	mov.l @r2,r4
	tst r4,r4
	bt loc_8c192102
	mov.l @(loc_8C1921A4,pc),r1
	mov.l r11,@r1
	mov.l @(loc_8C1921A8,pc),r3
	mov.l r12,@r3
	mov.l @(loc_8C1921AC,pc),r2
	not r4,r4
	mov.l @r2,r0
	and r4,r0
	mov.l r0,@r2
	add 0x18,r2
	mov.l r11,@r2

loc_8c192102:
	mov.l @(loc_8C1921AC,pc),r1
	neg r13,r3
	mov.l @r1,r4
	shld r3, r4
	and r12,r4
	tst r4,r4
	bf loc_8c1920e0
	mov.l @(loc_8C1921A8,pc),r3
	mov.l r12,@r3
	mov.l @(loc_8C1921AC,pc),r1
	mov r12,r2
	shad r13, r2
	mov.l @r1,r0
	or r2,r0
	mov.l r0,@r1
	mov r3,r2
	mov.l r11,@r2
	mov.w @(loc_8c1921a0,pc),r0
	mov.l r12,@(0x14,r14)
	mov.l r13,@(0x1C,r14)
	mov.l @(r0,r9),r0
	bra loc_8c1921e6
	cmp/eq 0x01,r0

loc_8c192130:
	mov.w @(loc_8c1921A0,pc),r0 ; r0 set to 0x82C
	mov.l @(r0,r9),r0 ; r0 ??? bc r9 is ???
	cmp/eq 0x01,r0
	bf loc_8c192144
	mov.w @(loc_8c1921A2,pc),r0 ; r0 set to 0x954
	mov.l @(r0,r9),r1
	bra loc_8c192144
	tst r1,r1

loc_8c192140:
	jsr @r10
	mov 0x07,r4

loc_8c192144:
	mov.l @(loc_8C1921A4,pc),r3
	mov.l @r3,r4
	tst r4,r4
	bt loc_8c192162
	mov.l @(loc_8C1921A4,pc),r1
	mov.l r11,@r1
	mov.l @(loc_8C1921A8,pc),r2
	mov.l r12,@r2
	mov.l @(loc_8C1921AC,pc),r3
	not r4,r4
	mov.l @r3,r0
	and r4,r0
	mov.l r0,@r3
	add 0x18,r3
	mov.l r11,@r3

loc_8c192162:
	mov.l @(loc_8C1921AC,pc),r2
	neg r13,r3
	mov.l @r2,r4
	shld r3, r4
	and r12,r4
	tst r4,r4
	bf loc_8c192140
	mov.l @(loc_8C1921A8,pc),r3
	mov.l r12,@r3
	mov.l @(loc_8C1921AC,pc),r1
	mov r12,r2
	shad r13, r2
	mov.l @r1,r0
	or r2,r0
	mov.l r0,@r1
	mov r3,r2
	mov.l r11,@r2
	bra loc_8c1921c4
	mov.l r13,@(0x1C,r14)

;==============================================
	#repeat 5
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1921a0:
	#data 0x082C
loc_8c1921a2:
	#data 0x0954
	#align4

loc_8C1921A4:
	#data 0x8C32DC00
loc_8C1921A8:
	#data 0x8C32DC0C
loc_8C1921AC:
	#data 0x8C32DBF4

;==============================================
	nop
	#align16_nop

;==============================================
loc_8c1921c0:
	jsr @r10
	mov 0x07,r4

loc_8c1921c4:
	bsr loc_8c191c6e
	nop
	cmp/eq 0xFF,r0
	bt/s loc_8c1921c0
	mov r0,r13
	bsr loc_8c191b5e
	mov r13,r4
	mov.l @(loc_8C192284,pc),r0
	mov 0x03,r3
	mov.l r13,@(0x20,r14)
	shll2 r13
	mov.l @(r0,r13),r2
	mov.l r2,@(0x3C,r14)
	mov.l @(loc_8c192288,pc),r2
	mov.l r3,@(0x14,r14)
	jsr @r2
	mov.l @(0x3C,r14),r4

loc_8c1921e6:
	stc sr, r0
	mov.w @(loc_8C192280,pc),r3
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.l r0,@r15
	stc sr, r0
	and r3,r0
	or 0xF0,r0
	ldc r0, sr
	bsr loc_8c191a20
	nop
	tst r0,r0
	bt/s loc_8c19220a
	mov r0,r4
	mov.l r14,@(0x10,r4)
	bra loc_8c19220c
	mov.l r4,@(0x0C,r14)

loc_8c19220a:
	mov.l r11,@(0x0C,r14)

loc_8c19220c:
	mov.l @(loc_8C192290,pc),r1
	mov.l @(loc_8C19228C,pc),r3
	mov.l r11,@(0x10,r14)
	mov.l @r1,r2
	and r3,r2
	mov.w @(loc_8C192280,pc),r1
	mov.l r2,@(0x04,r14)
	stc sr, r2
	mov.l r12,@r14
	mov.l @r15,r0
	and r1,r2
	and 0x0F,r0
	shll2 r0
	shll2 r0
	or r2,r0
	ldc r0, sr
	mov.l @(loc_8C192290,pc),r2
	mov.l @r2,r1
	add 0x01,r1
	mov.l r1,@r2
	mov.l @(loc_8C192294,pc),r2
	mov.l r14,@r2
	mov 0x00,r0
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

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

;==============================================
	#repeat 7
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c192280:
	#data 0xFF0F
	#align4

loc_8c192284:
	#data 0x8C32EA3C
loc_8c192288:
	#data bank1a.loc_8c1a7B00
loc_8c19228c:
	#data 0x7FFFFFFF
loc_8c192290:
	#data 0x8C32EA94
loc_8c192294:
	#data 0x8C32EA64
loc_8c192298:
	#data 0x8C32EA38

;==============================================
	#align16_nop

;==============================================
loc_8c1922a0:
	mov.l @(loc_8C192304,pc),r3
	mov.l @r3,r11
	mov.l @(0x08,r4),r2
	mov.w @(loc_8C192300,pc),r14
	mov.l @(0x10,r2),r1
	mov.l @(loc_8C192310,pc),r2
	mov.l @(loc_8c19230c,pc),r13
	mov.l @(loc_8c192308,pc),r12
	mov.l r1,@r15
	jsr @r13
	mov.l @r2,r4
	cmp/eq r14,r0
	bt loc_8c1922c8

loc_8c1922ba:
	jsr @r12
	mov 0x07,r4
	mov.l @(loc_8C192310,pc),r2
	jsr @r13
	mov.l @r2,r4
	cmp/eq r14,r0
	bf loc_8c1922ba

loc_8c1922c8:
	mov.l @r15,r2
	tst r2,r2
	bf loc_8c1922e0
	mov.l @(0x3C,r11),r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c192314,pc),r3
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c1922e0:
	mov.l @(0x3C,r11),r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c192318,pc),r3
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c1922F2:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c192300:
	#data 0x0101
	#align4

loc_8c192304:
	#data 0x8C32EA64
loc_8c192308:
	#data bank18.loc_8c18F7E0
loc_8c19230C:
	#data bank18.loc_8c18F3C0
loc_8c192310:
	#data 0x8C32EA8C
loc_8c192314:
	#data bank1a.loc_8c1a7B00
loc_8c192318:
	#data bank1a.loc_8c1a4D20

;==============================================
	#align16_nop

;==============================================
loc_8c192320:
	mov.l r14,@-r15
	mov r6,r3
	mov.l r13,@-r15
	mov r6,r13
	mov.l r12,@-r15
	shll2 r13
	mov.l @(0x9C,PC),r12
	add r3,r13
	mov.w @(0x8C,PC),r0
	shll2 r13
	sts.l pr,@-r15
	mov.l @(r0,r12),r2
	mov r7,r14
	tst r2,r2
	bt.s loc_8c192352
	shll2 r14
	mov.w @(0x7E,PC),r0
	add r12,r0
	add r13,r0
	mov.l @(r0,r14),r4
	mov.w @(0x78,PC),r0
	add r5,r0
	add r13,r0
	bra loc_8c192384

	mov.l @(r0,r14),r6

loc_8c192352:
	mov 0x00,r4
	mov.w @(0x6C,PC),r7
	mov r4,r2
	cmp/hs r6,r2
	mov r4,r1
	bt.s loc_8c19236e
	add r5,r7

loc_8c192360:
	mov r14,r0
	mov.l @(r0,r7),r2
	add 0x01,r1
	cmp/hs r6,r1
	add r2,r4
	bf.s loc_8c192360
	add 0x14,r7

loc_8c19236E:
	mov.w @(0x50,PC),r3
	mov.w @(0x50,PC),r0
	add r12,r3
	add r5,r0
	add r13,r0
	add r14,r3
	mov.l @(r0,r14),r6
	mov.l @r3,r2
	add r4,r6
	sub r4,r2
	mov r2,r4

loc_8c192384:
	mov.w @(0x3E,PC),r0
	add r12,r0
	add r13,r0
	mov.l @(r0,r14),r3
	cmp/hi r3,r6
	bf loc_8c192398
	mov.w @(0x32,PC),r0
	add r12,r0
	add r13,r0
	mov.l r6,@(r0,r14)

loc_8c192398:
	mov.w @(0x28,PC),r0
	add r5,r0
	add r13,r0
	mov.l @(r0,r14),r3
	cmp/hs r3,r4
	bt loc_8c1923b0
	mov.w @(0x20,PC),r0
	mov 0x02,r3
	mov.l r3,@(r0,r12)
	mov.l @(0x24,PC),r3
	jsr @r3
	mov 0x08,r4

loc_8c1923B0:
	lds.l @r15+,pr
	mov 0x00,r0
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1923c0:
	#data 0x07D0
loc_8c1923c2:
	#data 0x0730
loc_8c1923c4:
	#data 0x00E4
loc_8c1923c6:
	#data 0x0854
loc_8c1923c8:
	#data 0x095C
	#align4

loc_8c1923CC:
	#data 0x8C32D278
loc_8c1923D0:
	#data bank18.loc_8c18F7E0

;==============================================
	#align16_nop

;==============================================
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

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c192420:
	#data 0x0184
	#align4

loc_8c192424:
	#data 0x8C32EA64
loc_8c192428:
	#data 0x8C32EA38

;==============================================
	#repeat 3
	nop

	#align16_nop
;==============================================
loc_8c192440:
	mov.l @(loc_8C192504,pc),r2
	mov r10,r13
	mov.l @r2,r0
	mov.l @(loc_8C192508,pc),r3
	mov.l r0,@r3

loc_8c19244a:
	shll2 r8
	mov r11,r3
	mov 0x05,r2
	add r3,r8
	mov.l r2,@(0x08,r15)
	shll2 r8

loc_8c192456:
	mov.w @(loc_8C192500,pc),r0
	mov r13,r9
	shll2 r9
	mov r14,r2
	add r14,r0
	add r8,r0
	add r9,r0
	mov.l r0,@-r15
	add 0x44,r2
	mov.l @(0x08,r12),r1
	add r8,r2
	mov.l @r12,r0
	add r9,r2
	mov.l @(0x0C,r1),r1
	mov.l @(r0,r9),r3
	mov.l @(0x0C,r12),r0
	shll2 r1
	mov.l @(r0,r1),r0
	add r8,r0
	mov.l @(r0,r9),r1
	mov.l r1,@r2
	sub r1,r3
	mov.l @r15+,r2
	mov.l r3,@r2
	mov.l @(loc_8C19250C,pc),r2
	mov.l @r2,r1
	tst r1,r1
	bt loc_8c192492
	cmp/eq r10,r13
	bt loc_8c19249c

loc_8c192492:
	mov r14,r5
	mov r11,r6
	mov r13,r7
	bsr loc_8c192320
	mov r12,r4

loc_8c19249c:
	mov.w @(loc_8C192500,pc),r0
	add r14,r0
	add r8,r0
	mov.l @(r0,r9),r3
	tst r3,r3
	bf loc_8c1924ac
	bra loc_8c192620
	nop

loc_8c1924ac:
	mov.l @(loc_8C19250C,pc),r2
	mov.l @r2,r1
	tst r1,r1
	bf loc_8c192520
	mov.l @r12,r0
	mov.l @(loc_8C192510,pc),r3
	mov.l @(r0,r9),r4
	mov.l @(loc_8C192514,pc),r1
	mov.l @(r0,r9),r2
	and r3,r4
	mov.l @(loc_8C192518,pc),r0
	or r1,r4
	mov.l @(loc_8C19251C,pc),r3
	shlr16 r2
	mov 0x00,r1
	shlr8 r2
	mov.l r2,@r0
	mov.l r2,@r3
	mov.l r1,@r4
	pref @r4
	mov.l @r12,r0
	mov 0x01,r1
	shad r13, r1
	mov.l @(r0,r9),r2
	add 0x20,r2
	mov.l r2,@(r0,r9)
	mov.w @(loc_8C192500,pc),r0
	add r14,r0
	add r8,r0
	mov.l @(r0,r9),r2
	add 0x20,r2
	mov.l r2,@(r0,r9)
	mov.w @(loc_8C192502,pc),r2
	mov.l @r15,r0
	add r14,r2
	add r0,r2
	mov.l @r2,r3
	or r1,r3
	mov.l r3,@r2
	bra loc_8c192620
	nop

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C192500:
	#data 0x00E4
loc_8C192502:
	#data 0x0184
	#align4

loc_8C192504:
	#data 0xFFD8000C
loc_8C192508:
	#data 0x8C32DBAC
loc_8C19250C:
	#data 0x8C32EA38
loc_8C192510:
	#data 0x03FFFFFF
loc_8C192514:
	#data 0xE0000000
loc_8C192518:
	#data 0xFF00003C
loc_8C19251C:
	#data 0xFF000038

;==============================================
loc_8c192520:
	cmp/eq r10,r13
	bt loc_8c192566
	mov.l @r12,r0
	mov.l @(loc_8C1925C4,pc),r3
	mov.l @(r0,r9),r4
	mov.l @(loc_8C1925C8,pc),r1
	mov.l @(r0,r9),r2
	and r3,r4
	mov.l @(loc_8C1925CC,pc),r0
	or r1,r4
	mov.l @(loc_8C1925D0,pc),r3
	shlr16 r2
	mov 0x00,r1
	shlr8 r2
	mov.l r2,@r0
	mov.l r2,@r3
	mov.l r1,@r4
	pref @r4
	mov.w @(loc_8C1925C0,pc),r0
	mov 0x01,r1
	shad r13, r1
	add r14,r0
	add r8,r0
	mov.l @(r0,r9),r2
	add 0x20,r2
	mov.l r2,@(r0,r9)
	mov.w @(loc_8C1925C2,pc),r2
	mov.l @r15,r0
	add r14,r2
	add r0,r2
	mov.l @r2,r3
	or r1,r3
	mov.l r3,@r2
	bra loc_8c19258c
	nop

loc_8c192566:
	mov.w @(loc_8C1925C2,pc),r3
	mov 0x01,r1
	mov.l @r15,r0
	shad r13, r1
	add r14,r3
	add r0,r3
	mov r14,r0
	mov.l @r3,r2
	add 0x44,r0
	add r8,r0
	or r1,r2
	mov.l r2,@r3
	mov.l @(loc_8c1925d4,pc),r3
	mov.l r3,@(r0,r9)
	mov 0x20,r3
	mov.w @(loc_8C1925C0,pc),r0
	add r14,r0
	add r8,r0
	mov.l r3,@(r0,r9)

loc_8c19258c:
	mov.l @r12,r0
	mov.l @(loc_8C1925D8,pc),r1
	mov.l @(r0,r9),r2
	add 0x20,r2
	mov.l r2,@(r0,r9)
	mov.l @r1,r3
	add 0xFF,r3
	cmp/eq r3,r11
	bt loc_8c192620
	bra loc_8c1925e6
	nop

;==============================================
	#repeat 9
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1925C0:
	#data 0x00E4
loc_8C1925C2:
	#data 0x0184
	#align4

loc_8C1925C4:
	#data 0x03FFFFFF
loc_8C1925C8:
	#data 0xE0000000
loc_8C1925CC:
	#data 0xFF00003C
loc_8C1925D0:
	#data 0xFF000038
loc_8c1925d4:
	#data bank1a.loc_8c1a8c60
loc_8C1925D8:
	#data 0x8C32EA84

;==============================================
	#align16_nop

;==============================================
loc_8c1925e0:
	mov.l @(loc_8c192684,pc),r3
	jsr @r3
	mov 0x07,r4
	
loc_8c1925e6:
	mov.l @(loc_8c192688,pc),r2
	jsr @r2
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c1925e0
	mov.l r0,@(0x04,r15)
	mov.w @(loc_8C192680,pc),r0
	mov 0x01,r2
	shad r13, r2
	add r14,r0
	mov.l r2,@-r15
	add r8,r0
	mov.l @(loc_8c19268c,pc),r2
	mov 0x00,r3
	mov.l r3,@-r15
	mov.l @(r0,r9),r7
	mov r14,r0
	add 0x44,r0
	mov.l @(0x3C,r14),r5
	add r8,r0
	mov.l @(r0,r9),r6
	jsr @r2
	mov.l @(0x0C,r15),r4
	add 0x08,r15
	mov.l @(loc_8c192690,pc),r3
	jsr @r3
	mov.l @(0x04,r15),r4
	mov.l @(loc_8C192694,pc),r2
	mov.l r0,@r2
	
loc_8c192620:
	mov 0x05,r3
	add 0x01,r13
	cmp/hs r3,r13
	bf loc_8c19262a
	mov 0x00,r13
	
loc_8c19262a:
	mov.l @(0x08,r15),r3
	add 0xFF,r3
	tst r3,r3
	bt/s loc_8c192638
	mov.l r3,@(0x08,r15)
	bra loc_8c192456
	nop
	
loc_8c192638:
	mov 0x00,r0
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

;==============================================
loc_8c192666:
	mov 0x01,r0 ; r0 set to 0x01
	lds.l @r15+,pr
	rts
	nop

;==============================================
	#repeat 3
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c192680:
	#data 0x00E4
	#align4

loc_8c192684:
	#data bank18.loc_8c18F7E0
loc_8c192688:
	#data bank18.loc_8c18DA80
loc_8c19268C:
	#data bank1a.loc_8c1a7AA0
loc_8c192690:
	#data bank18.loc_8c18FC20
loc_8c192694:
	#data 0x8C32EA8C
loc_8c192698:
	#data 0x8C32EA38

;==============================================
	#align16_nop

;==============================================
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

loc_8c1926cc:
	mov.l r12,@(0x38,r14)

loc_8c1926ce:
	mov.w @(loc_8C192762,pc),r0
	mov.l r6,@(0x30,r14)
	mov.l r4,@(0x08,r14)
	mov.l @(r0,r11),r2
	mov.w @(loc_8C192764,pc),r0
	mov.l r2,@(r0,r14)
	mov.w @(loc_8C192766,pc),r0
	mov.l @(r0,r11),r3
	mov.w @(loc_8C192768,pc),r0
	mov.l r3,@(r0,r14)
	mov.w @(loc_8C19276A,pc),r0
	mov.l @(r0,r11),r2
	mov.w @(loc_8C19276C,pc),r0
	mov.l r2,@(r0,r14)
	mov.w @(loc_8C19276E,pc),r0
	mov.l @(r0,r11),r3
	mov.w @(loc_8C192770,pc),r0
	mov.l r3,@(r0,r14)
	mov.w @(loc_8C192772,pc),r0
	mov.l @(r0,r11),r2
	mov.w @(loc_8C192774,pc),r0
	mov.l r2,@(r0,r14)
	mov.w @(loc_8C192776,pc),r0
	mov.l @(r0,r11),r3
	mov.w @(loc_8C192778,pc),r0
	mov.l r3,@(r0,r14)
	mov.w @(loc_8C19277A,pc),r0
	mov.l @(r0,r11),r2
	mov.w @(loc_8C19277C,pc),r0
	mov.l r2,@(r0,r14)
	mov.w @(loc_8C19277E,pc),r0
	mov.l @(r0,r11),r3
	mov.w @(loc_8C192780,pc),r0
	tst r4,r4
	bf/s loc_8c19271c
	mov.l r3,@(r0,r14)
	mov 0x40,r0
	mov r12,r5
	mov.l r7,@(r0,r14)

loc_8c19271c:
	mov.l @(loc_8C19278C,pc),r2
	mov.l @r2,r3
	tst r5,r5
	bt/s loc_8c1927a0
	mov.l r3,@(0x28,r14)
	mov 0x08,r0
	mov.l r0,@(0x18,r14)
	mov.l @r2,r3
	add 0x01,r3
	mov.l r3,@r2
	mov.l @(loc_8C192790,pc),r3
	mov.l @r3,r1
	mov.l @(loc_8C19278C,pc),r2
	mov.l @r2,r0
	cmp/hs r1,r0
	bf loc_8c192740
	mov.l @(loc_8C19278C,pc),r0
	mov.l r12,@r0

loc_8c192740:
	mov.l @(loc_8C192794,pc),r2
	mov.l @r2,r3
	tst r3,r3
	bt loc_8c1927a4
	mov.l @(loc_8C19278C,pc),r3
	mov.l @r3,r1
	and r13,r1
	mov.l r1,@r3
	bra loc_8c1927a4
	nop

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c192760:
	#data 0x0954
loc_8C192762:
	#data 0x0808
loc_8C192764:
	#data 0x01A4
loc_8C192766:
	#data 0x0810
loc_8C192768:
	#data 0x01AC
loc_8C19276A:
	#data 0x080C
loc_8C19276C:
	#data 0x01A8
loc_8C19276E:
	#data 0x0814
loc_8C192770:
	#data 0x01B0
loc_8C192772:
	#data 0x0818
loc_8C192774:
	#data 0x01B4
loc_8C192776:
	#data 0x0820
loc_8C192778:
	#data 0x01BC
loc_8C19277A:
	#data 0x081C
loc_8C19277C:
	#data 0x01B8
loc_8C19277E:
	#data 0x0824
loc_8C192780:
	#data 0x01C0
	#align4

loc_8c192784:
	#data 0x8C32EA64
loc_8c192788:
	#data 0x8C32D278
loc_8C19278C:
	#data 0x8C32EA88
loc_8C192790:
	#data 0x8C32DBF0
loc_8C192794:
	#data 0x8C32EA9C

;==============================================
	#align16_nop

;==============================================
loc_8c1927a0:
	mov 0x06,r0
	mov.l r0,@(0x18,r14)

loc_8c1927a4:
	mov.w @(loc_8C192820,pc),r0
	mov.l @(loc_8C192828,pc),r1
	mov.l @(r0,r11),r3
	mov.l r3,@(0x2C,r14)
	mov.l @r1,r2
	tst r2,r2
	bf loc_8c1927b8
	mov 0x02,r2
	bra loc_8c1928c8
	mov.l r2,@(0x14,r14)

loc_8c1927b8:
	mov 0x48,r0
	mov.w @(loc_8C192822,pc),r4
	mov.l @(r0,r11),r5
	add r11,r4
	add 0xFF,r5
	shll2 r5
	add r5,r4
	mov.l @r4,r4
	mov 0x05,r11
	mov r11,r7
	mov r4,r6

loc_8c1927ce:
	mov.w @(loc_8C192824,pc),r3
	mov r13,r2
	shad r6, r2
	add r14,r3
	add r5,r3
	mov.l @r3,r3
	tst r3,r2
	bt loc_8c1927e0
	mov r6,r10

loc_8c1927e0:
	mov.l @(loc_8c19282c,pc),r3
	mov r6,r1
	add 0x01,r1
	jsr @r3
	mov r11,r0
	dt r7
	bf/s loc_8c1927ce
	mov r0,r6
	mov r4,r9
	mov r11,r8

loc_8c1927f4:
	mov.l @(loc_8C192830,pc),r2
	mov.l @r2,r3
	mov.w @(loc_8C192824,pc),r1
	add 0xFF,r3
	shll2 r3
	mov r13,r0
	add r14,r1
	add r1,r3
	mov.l @r3,r3
	shad r9, r0
	tst r3,r0
	bt loc_8c1928b8
	bra loc_8c192846
	nop

;==============================================
	nop
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C192820:
	#data 0x07F4
loc_8C192822:
	#data 0x0710
loc_8C192824:
	#data 0x0184
	#align4

loc_8C192828:
	#data 0x8C32EA38
loc_8c19282c:
	#data bank12.loc_8c12939c
loc_8C192830:
	#data 0x8C32EA84


;==============================================
	#align16_nop

;==============================================
loc_8c192840:
	mov.l @(loc_8c192904,pc),r2
	jsr @r2
	mov 0x07,r4

loc_8c192846:
	mov.l @(loc_8c192908,pc),r3
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c192840
	mov.l r0,@r15
	mov r13,r2
	shad r9, r2
	mov.l @(loc_8C19290C,pc),r3
	mov.l r2,@-r15
	mov.l r12,@-r15
	mov.l @r3,r0
	add 0xFF,r0
	mov.w @(loc_8C192900,pc),r1
	mov r0,r2
	shll2 r0
	mov r9,r7
	add r2,r0
	shll2 r7
	mov r3,r2
	shll2 r0
	mov.l r7,@(0x0C,r15)
	add r14,r1
	add r1,r0
	mov.l @(r0,r7),r7
	mov.l @r2,r6
	add 0xFF,r6
	mov r14,r0
	mov r6,r1
	shll2 r6
	add r1,r6
	mov.l @(loc_8c192910,pc),r3
	add 0x44,r0
	mov.l @(0x3C,r14),r5
	shll2 r6
	add r0,r6
	mov.l @(0x0C,r15),r0
	mov.l @(r0,r6),r6
	jsr @r3
	mov.l @(0x08,r15),r4
	cmp/eq r10,r9
	bf/s loc_8c1928ae
	add 0x08,r15
	mov.l @(loc_8c192918,pc),r3
	mov.l @(loc_8c192914,pc),r5
	jsr @r3
	mov.l @r15,r4
	mov.l @(loc_8C19290C,pc),r2
	mov.l @r2,r5
	mov.l @(loc_8c19291c,pc),r3
	jsr @r3
	mov.l @r15,r4

loc_8c1928ae:
	mov.l @(loc_8c192920,pc),r3
	jsr @r3
	mov.l @r15,r4
	mov.l @(loc_8C192924,pc),r2
	mov.l r0,@r2

loc_8c1928b8:
	mov.l @(loc_8c192928,pc),r3
	mov r9,r1
	add 0x01,r1
	jsr @r3
	mov r11,r0
	dt r8
	bf/s loc_8c1927f4
	mov r0,r9

loc_8c1928c8:
	bsr loc_8c193180
	mov 0x00,r4
	mov.l @(0x04,r14),r0
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
	#repeat 8
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C192900:
	#data 0x00E4
	#align4

loc_8c192904:
	#data bank18.loc_8c18f7e0
loc_8c192908:
	#data bank18.loc_8c18da80
loc_8C19290C:
	#data 0x8C32EA84
loc_8c192910:
	#data bank1a.loc_8c1a7aa0
loc_8c192914:
	#data loc_8c191f4e
loc_8c192918:
	#data bank18.loc_8c18fd60
loc_8c19291c:
	#data bank1a.loc_8c1a7840
loc_8c192920:
	#data bank18.loc_8c18fc20
loc_8C192924:
	#data 0x8C32EA8C
loc_8c192928:
	#data bank12.loc_8c12939c

;==============================================
	#repeat 4
	nop

	#align16_nop

;==============================================
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
	mov.l @(loc_8C192A2C,pc),r2
	not r7,r7
	mov.l @r2,r0
	and r7,r0
	mov.l r0,@r2

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
	
loc_8c1929a4:
	mov.l @(loc_8C192A3C,pc),r2
	not r6,r6
	mov.l @r2,r0
	and r6,r0
	mov.l r0,@r2

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

loc_8c1929d6:
	mov.l @(loc_8C192A4C,pc),r2
	not r7,r7
	mov.l @r2,r0
	and r7,r0
	mov.l r0,@r2

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

loc_8c1929fa:
	tst r4,r4
	bt loc_8c192a00
	mov.l r6,@(0x0C,r4)

loc_8c192A00:
	rts
	mov 0x00,r0

;==============================================
loc_8c192A04:
	mov 0x01,r0 ; r0 set to 0x01
	rts
	nop

;==============================================
	#repeat 4
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c192A20:
	#data 0x8C32DBE8
loc_8c192A24:
	#data 0x8C32DC0C
loc_8c192A28:
	#data 0x8C32DC00
loc_8c192a2c:
	#data 0x8C32DBF4
loc_8c192A30:
	#data 0x8C32DBEC
loc_8c192A34:
	#data 0x8C32DC10
loc_8c192A38:
	#data 0x8C32DC04
loc_8c192a3c:
	#data 0x8C32DBF8
loc_8c192A40:
	#data 0x8C32DBF0
loc_8c192A44:
	#data 0x8C32DC14
loc_8c192A48:
	#data 0x8C32DC08
loc_8c192a4c:
	#data 0x8C32DBFC

;==============================================
	nop
	#align16_nop

;==============================================
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

loc_8c192ab4:
	add 0xFF,r4
	cmp/pz r4
	bt loc_8c192a98

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

;==============================================
	#repeat 4
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c192B20:
	#data 0x0184
	#align4

loc_8c192B24:
	#data 0x8C32EA3C
loc_8c192B28:
	#data 0x8C32EA84
loc_8c192B2C:
	#data 0xFFD8000C
loc_8c192B30:
	#data 0x8C32DBAC

;==============================================
	#align16_nop

;==============================================
loc_8c192B40:
	mov 0x02,r8 ; r8 set to 0x02

loc_8c192B42:
	bra loc_8c192B48
	mov.l r9,@(0x10,r15)

loc_8c192b46:
	mov r9,r8

loc_8c192b48:
	mov.l @(loc_8c192be4,pc),r2
	jsr @r2
	mov 0x00,r4
	mov r14,r2
	shad r13, r2
	mov.l r2,@-r15
	mov r0,r10
	mov.w @(loc_8C192BE0,pc),r0
	mov r13,r7
	mov.l r8,@-r15
	shll2 r7
	mov.l @(0x08,r15),r3
	add r11,r0
	mov.l r7,@(0x14,r15)
	mov r11,r6
	add r3,r0
	mov.l @(0x08,r15),r3
	mov.l @(r0,r7),r7
	add 0x44,r6
	mov.l @(0x14,r15),r0
	add r3,r6
	mov.l @(loc_8c192be8,pc),r3
	mov.l @(0x3C,r11),r5
	mov.l @(r0,r6),r6
	jsr @r3
	mov r10,r4
	mov.l @(loc_8c192bec,pc),r3
	mov.l @r3,r2
	add 0xFF,r2
	cmp/eq r2,r12
	bf/s loc_8c192b9e
	add 0x08,r15
	mov.l @(0x08,r15),r1
	cmp/eq r1,r13
	bf loc_8c192b9e
	mov.l @(loc_8c192bf4,pc),r3
	mov.l @(loc_8c192bf0,pc),r5
	jsr @r3
	mov r10,r4
	mov.l @(loc_8c192bf8,pc),r2
	mov r12,r5
	jsr @r2
	mov r10,r4

loc_8c192b9e:
	mov.l @(loc_8c192bfc,pc),r3
	jsr @r3
	mov r10,r4

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

;==============================================
	#repeat 4
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c192be0:
	#data 0x00E4
	#align4

loc_8c192BE4:
	#data bank18.loc_8c18DA80
loc_8c192BE8:
	#data bank1a.loc_8c1a7AA0
loc_8c192BEC:
	#data 0x8C32EA84
loc_8c192BF0:
	#data loc_8c191F4E
loc_8c192BF4:
	#data bank18.loc_8c18FD60
loc_8c192BF8:
	#data bank1a.loc_8c1a7840
loc_8c192BFC:
	#data bank18.loc_8c18FC20

;==============================================
loc_8c192C00:
	mov.l @(0x5C,PC),r3
	sts.l pr,@-r15
	mov.l @r3,r5
	mov.l @(0x4,r5),r2
	mov.l @(0xC,r5),r1
	mov.l @(0x8,r5),r7
	sub r2,r1
	mov.l @r5,r6
	mov r1,r5
	mov.l @r4,r1
	sub r6,r7
	mov.l @(0x4C,PC),r2
	add 0x01,r7
	add 0x01,r5
	jsr @r2
	mov r5,r0
	mov.l @(0x44,PC),r2
	add r6,r0
	mov.l r0,@(0x4,r4)
	mov.l @r4,r1
	jsr @r2
	mov r5,r0
	mov r3,r2
	mov.l @r2,r1
	mul.l r5,r7
	mov.l @(0x4,r1),r1
	add r1,r0
	sts macl,r7
	mov.l r0,@(0x8,r4)
	mov.l @r4,r0
	add 0xFF,r7
	cmp/eq r7,r0
	bf loc_8c192c46
	mov 0x01,r1
	mov.l r1,@(0x18,r4)

loc_8c192C46:
	lds.l @r15+,pr
	rts
	nop

;==============================================
	#repeat 5
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c192c60:
	#data 0x8C32DAA0
loc_8c192C64:
	#data bank12.loc_8c1291DC
loc_8c192C68:
	#data bank12.loc_8c12939C

;==============================================
	#repeat 5
	nop

	#align16_nop

;==============================================
loc_8c192C80:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(0x124,PC),r3
	mov.l @(0x11C,PC),r12
	jsr @r3
	mov r4,r14
	mov.l @(0x120,PC),r2
	jsr @r2
	nop
	mov.l @(0x8,r14),r3
	mov 0x00,r10
	mov.l @(0x118,PC),r13
	tst r3,r3
	bf.s loc_8c192cac
	mov 0x01,r11
	bra loc_8c192e5c
	nop

loc_8c192CAC:
	mov.l @(0x110,PC),r3
	mov.l @r3,r0
	cmp/eq 0x01,r0
	bt loc_8c192cd0
	mov.l @(0x10C,PC),r1
	jsr @r1
	mov.l @(0x28,r14),r4
	tst r0,r0
	bt loc_8c192cc2
	bra loc_8c192f48
	nop

loc_8c192CC2:
	mov.l @(0x104,PC),r1
	mov.l @(0x28,r14),r2
	mov.l @r1,r3
	cmp/eq r2,r3
	bf loc_8c192cd0
	bra loc_8c192f48
	nop

loc_8c192CD0:
	mov.w @(0xCC,PC),r0
	mov.l @(r0,r13),r0
	cmp/eq 0x01,r0
	bf loc_8c192cde
	mov.l @(0xF0,PC),r2
	jsr @r2
	nop

loc_8c192CDE:
	mov.l @(0x28,r14),r3
	mov.l @(0xEC,PC),r0
	shll2 r3
	mov.l @(r0,r3),r2
	mov 0x40,r0
	mov.l r2,@(r0,r14)
	mov.l @(0x28,r14),r3
	mov.l @(0xD0,PC),r2
	mov.l r3,@(0x24,r14)
	mov.l @r2,r0
	cmp/eq 0x01,r0
	bt loc_8c192d0c
	mov.l @(0xDC,PC),r1
	mov.l @(0x24,r14),r4
	mov.l r11,@r1
	mov.l @(0xD8,PC),r2
	mov r11,r3
	shad r4,r3
	mov.l @r2,r0
	or r3,r0
	mov.l r0,@r2
	mov r1,r3
	mov.l r10,@r3

loc_8c192D0C:
	mov.l @(0xCC,PC),r2
	mov.l @(0x30,r14),r5
	jsr @r2
	mov.l @(0x3C,r14),r4
	mov.w @(0x8A,PC),r0
	mov.l @(0xC8,PC),r3
	mov.l @(r0,r14),r6
	add 0xF8,r0
	mov.l @(r0,r14),r5
	add 0xFF,r6
	jsr @r3
	mov.l @(0x3C,r14),r4
	mov.w @(0x7C,PC),r0
	mov.l @(0xBC,PC),r3
	mov.l @(r0,r14),r6
	add 0xF8,r0
	mov.l @(r0,r14),r5
	add 0xFF,r6
	jsr @r3
	mov.l @(0x3C,r14),r4
	mov.l @(0x8,r14),r0
	cmp/eq 0x02,r0
	bf loc_8c192d58
	mov.l @(0xAC,PC),r2
	mov.l @r2,r3
	tst r3,r3
	bf loc_8c192d58
	mov.w @(0x60,PC),r3
	mov.w @(0x60,PC),r0
	add r14,r3
	mov.l @(0xA0,PC),r5
	mov.l r3,@(r0,r13)
	mov.l @(0xA0,PC),r3
	jsr @r3
	mov.l @(0x3C,r14),r4
	mov.l @(0xA0,PC),r2
	jsr @r2
	mov.l @(0x3C,r14),r4

loc_8c192D58:
	mov.l @(0x2C,r13),r3
	tst r3,r3
	bt loc_8c192d6e
	mov.w @(0x48,PC),r0
	mov.l @(r0,r13),r3
	tst r3,r3
	bt loc_8c192d6e
	mov.l @(0x90,PC),r3
	mov.l r10,@(r0,r13)
	jsr @r3
	mov 0x00,r4

loc_8c192D6E:
	mov.l @(0x8C,PC),r2
	mov.l @(0x3C,r14),r5
	jsr @r2
	mov.l @(0x20,r14),r4
	mov.w @(0x32,PC),r0
	mov.w @(0x32,PC),r2
	mov.l @(r0,r13),r3
	add r13,r2
	shll2 r3
	add r2,r3
	mov.l @(0x7C,PC),r2
	mov.l @r2,r1
	mov.l r1,@r3
	mov.l @(0x28,r13),r3
	tst r3,r3
	bra loc_8c192e20
	nop

;==============================================
	#repeat 4
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c192da0:
	#data 0x082C
loc_8c192da2:
	#data 0x01AC
loc_8c192da4:
	#data 0x01B0
loc_8c192da6:
	#data 0x01B4
loc_8c192da8:
	#data 0x0828
loc_8c192daa:
	#data 0x093C
loc_8c192dac:
	#data 0x0938
loc_8c192dae:
	#data 0x0914
	#align4

loc_8c192db0:
	#data 0x0000EEEE
loc_8c192DB4:
	#data bank1a.loc_8c1a8038
loc_8c192DB8:
	#data loc_8c190DE0
loc_8c192DBC:
	#data 0x8C32D278
loc_8c192DC0:
	#data 0x8C32DBF0
loc_8c192DC4:
	#data loc_8c191B00
loc_8c192DC8:
	#data 0x8C32EA78
loc_8c192DCC:
	#data bank1a.loc_8c1a76B4
loc_8c192Dd0:
	#data 0x8C32EA44
loc_8c192Dd4:
	#data 0x8C32DC14
loc_8c192Dd8:
	#data 0x8C32DBFC
loc_8c192DDC:
	#data bank1a.loc_8c1a8306
loc_8c192DE0:
	#data bank1a.loc_8c1a7F20
loc_8c192DE4:
	#data bank1a.loc_8c1a7F5E
loc_8c192DE8:
	#data 0x8C32D2A4
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
loc_8c192e00:
	#data 0xFFD8000C

;==============================================
	#repeat 7
	nop

	#align16_nop

;==============================================
loc_8c192E20:
	bt loc_8c192e3a
	mov.l @(0x28,r14),r3
	mov.l @(0xA0,PC),r8
	mov.l @(0xA4,PC),r1
	shll2 r3
	jsr @r1
	add r3,r8
	mov.l r0,@r8
	mov.l @(0x9C,PC),r3
	mov r0,r5
	mov.l r0,@(0x34,r14)
	jsr @r3
	mov.l @(0x3C,r14),r4

loc_8c192E3A:
	mov 0x40,r0
	mov.l @(0x94,PC),r3
	mov.l @(r0,r14),r5
	jsr @r3
	mov.l @(0x3C,r14),r4
	mov.l @(0x90,PC),r2
	mov.l r14,@r2
	mov.l @(0x90,PC),r3
	mov.l r11,@r3
	mov.w @(0x70,PC),r0
	mov 0x05,r1
	add 0x24,r2
	mov.l r1,@(0x14,r14)
	mov.l @(r0,r13),r0
	mov.l r0,@r2
	bra loc_8c192f48
	mov r10,r12

loc_8c192E5C:
	mov.w @(0x60,PC),r0
	mov.l @(r0,r13),r0
	cmp/eq 0x01,r0
	bf loc_8c192e6a
	mov.l @(0x78,PC),r2
	jsr @r2
	nop

loc_8c192E6A:
	mov 0x40,r0
	mov.l @(0x74,PC),r3
	mov.l @(0x30,r14),r5
	mov.l @(r0,r14),r12
	jsr @r3
	mov.l @(0x3C,r14),r4
	mov.l @(0xC,r12),r6
	mov 0x00,r5
	mov.l @(0x6C,PC),r2
	add 0xFF,r6
	jsr @r2
	mov.l @(0x3C,r14),r4
	mov.l @(0x10,r12),r6
	mov 0x00,r5
	mov.l @(0x64,PC),r3
	add 0xFF,r6
	jsr @r3
	mov.l @(0x3C,r14),r4
	mov.l @(0x60,PC),r2
	mov.l @(0x3C,r14),r5
	jsr @r2
	mov.l @(0x20,r14),r4
	mov.l @(0x5C,PC),r3
	mov 0x00,r5
	jsr @r3
	mov.l @(0x3C,r14),r4
	mov.w @(0x20,PC),r0
	mov.w @(0x20,PC),r3
	mov.l @(r0,r13),r2
	add r13,r3
	shll2 r2
	add r3,r2
	mov.l @(0x4C,PC),r3
	mov.l @r3,r1
	mov.l r1,@r2
	mov.l @(0x18,r12),r1
	mov.l @(0x48,PC),r2
	tst r2,r1
	bt.s loc_8c192f20
	mov.l @(0x1C,r12),r5
	mov.l @(0x44,PC),r3
	bra loc_8c192f22
	mov.l @r3,r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c192ec0:
	#data 0x082C
loc_8c192ec2:
	#data 0x0938
loc_8c192ec4:
	#data 0x0914
	#align4

loc_8c192ec8:
	#data 0x8C32EA54
loc_8c192ECC:
	#data bank17.loc_8c17AAA0
loc_8c192ED0:
	#data bank1a.loc_8c1a7860
loc_8c192ED4:
	#data bank1a.loc_8c1a7CC0
loc_8c192ED8:
	#data 0x8C32EA6C
loc_8c192EDc:
	#data 0x8C32EA68
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
loc_8c192Ef8:
	#data 0xFFD8000C
loc_8c192Efc:
	#data 0x02000000
loc_8c192f00:
	#data 0x8C344C20

;==============================================
	#repeat 7
	nop

	#align16_nop

;==============================================
loc_8c192F20:
	mov.l @(0xC,r12),r6

loc_8c192F22:
	mov.l @(0xC0,PC),r3
	jsr @r3
	mov.l @(0x3C,r14),r4
	mov.l @(0xBC,PC),r2
	mov.l @(0x20,r13),r5
	jsr @r2
	mov.l @(0x3C,r14),r4
	mov.l @(0xB8,PC),r3
	mov.l r14,@r3
	mov.l @(0xB8,PC),r2
	mov.l r11,@r2
	mov.w @(0xA4,PC),r0
	mov 0x05,r1
	add 0x24,r3
	mov.l r1,@(0x14,r14)
	mov.l @(r0,r13),r0
	add 0x0A,r0
	mov.l r0,@r3
	mov r10,r12

loc_8c192F48:
	lds.l @r15+,pr
	mov r12,r0
	mov.l @r15+,r8
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c192F5A:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x90,PC),r2
	mov 0x01,r3
	mov r4,r14
	mov.l r3,@r2
	mov.l @(0x8C,PC),r0
	mov.l @(0x2C,r14),r1
	mov.l r1,@r0
	mov.l @(0x88,PC),r3
	mov.l r14,@r3
	mov.l @(0x88,PC),r1
	mov.l @(0x28,r14),r2
	mov.l r2,@r1
	mov.l @(0x88,PC),r13
	mov 0x07,r0
	mov.l r0,@(0x14,r14)
	mov.l @(0x28,r13),r2
	tst r2,r2
	bt loc_8c192f96
	mov 0x40,r0
	mov.l @(0x7C,PC),r3
	mov.l @(r0,r14),r5
	mov.l r5,@r15
	jsr @r3
	mov r5,r4
	bra loc_8c192fa6
	nop

loc_8c192F96:
	mov.l @(0x2C,r13),r2
	tst r2,r2
	bf loc_8c192fa6
	mov.l @(0x68,PC),r3
	mov 0x40,r0
	mov 0x00,r5
	jsr @r3
	mov.l @(r0,r14),r4

loc_8c192FA6:
	mov.w @(0x38,PC),r0
	mov.l @(r0,r13),r2
	tst r2,r2
	bt loc_8c192fba
	mov 0x00,r3
	mov r3,r4
	mov.l r3,@(r0,r13)
	mov.l @(0x54,PC),r3
	jsr @r3
	nop

loc_8c192FBA:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
	#repeat 6
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c192Fe0:
	#data 0x082C
loc_8c192Fe2:
	#data 0x093C
	#align4

loc_8c192FE4:
	#data bank1a.loc_8c1a7BC0
loc_8c192FE8:
	#data bank18.loc_8c18FF20
loc_8c192FEc:
	#data 0x8C32EA6C
loc_8c192Ff0:
	#data 0x8C32EA68
loc_8c192Ff4:
	#data 0x8C32EA74
loc_8c192Ff8:
	#data 0x8C32EA80
loc_8c192Ffc:
	#data 0x8C32EA7C
loc_8c193000:
	#data 0x8C32EA78
loc_8c193004:
	#data 0x8C32D278
loc_8c193008:
	#data bank18.loc_8c18D196
loc_8c19300C:
	#data bank18.loc_8c18C6C0

;==============================================
	nop
	#align16_nop

;==============================================
loc_8c193020:
	mov.l @(0x11C,PC),r2
	mov.l @r2,r3
	tst r3,r3
	bf loc_8c19302c
	bra loc_8c19311e
	nop

loc_8c19302C:
	tst r4,r4
	bf loc_8c193034
	bra loc_8c19311e
	nop

loc_8c193034:
	tst r5,r5
	mov 0xFF,r6
	bt.s loc_8c19307e
	mov 0x01,r4
	mov.l @(0x104,PC),r2
	mov.l @r2,r3
	tst r3,r3
	bt loc_8c19311e

	mov.l @(0xFC,PC),r3
	mov.l @r3,r7
	mov.l @(0xFC,PC),r0
	mov.l @(0x20,r7),r7
	mov.l @r0,r1
	cmp/hs r1,r7
	bt loc_8c193074
	mov.l @(0xF8,PC),r2
	mov r4,r5
	mov.l @r2,r1
	tst r1,r1
	bt.s loc_8c19306a
	shad r7,r5
	mov.l @(0xF0,PC),r3
	mov.l @r3,r1
	or r5,r1
	mov.l r1,@r3
	bra loc_8c193074
	nop

loc_8c19306A:
	mov.l @(0xE8,PC),r3
	not r5,r5
	mov.l @r3,r1
	and r5,r1
	mov.l r1,@r3

loc_8c193074:
	mov.l @(0xCC,PC),r2
	mov.l @r2,r3
	mov.l r6,@(0x20,r3)
	bra loc_8c19311e

	nop

loc_8c19307E:
	mov.l @(0xD8,PC),r3
	mov.l @r3,r2
	tst r2,r2
	bf loc_8c19311e
	mov.l @(0xD4,PC),r1
	mov.l @r1,r2
	tst r2,r2
	bt loc_8c19311e
	mov.l @(0xCC,PC),r2
	mov.l @r2,r0
	mov.l @(0x24,r0),r0
	cmp/eq 0xFF,r0
	bt loc_8c1930ce
	mov.l @(0xC0,PC),r3
	mov.l @r3,r5
	mov.l @(0xC0,PC),r0
	mov.l @(0x24,r5),r5
	mov.l @r0,r1
	cmp/hs r1,r5
	bt loc_8c1930c8
	mov.l @(0xBC,PC),r2
	mov r4,r7
	mov.l @r2,r1
	tst r1,r1
	bt.s loc_8c1930be
	shad r5,r7
	mov.l @(0xB4,PC),r3
	mov.l @r3,r1
	or r7,r1
	mov.l r1,@r3
	bra loc_8c1930c8

	nop

loc_8c1930BE:
	mov.l @(0xAC,PC),r3
	not r7,r7
	mov.l @r3,r1
	and r7,r1
	mov.l r1,@r3

loc_8c1930C8:
	mov.l @(0x90,PC),r2
	mov.l @r2,r3
	mov.l r6,@(0x24,r3)

loc_8c1930CE:
	mov.l @(0x8C,PC),r3
	mov.l @r3,r0
	mov.l @(0x28,r0),r0
	mov 0x01,r5
	mov.l @(0x88,PC),r1
	add 0x01,r0
	and r0,r5
	add 0x02,r5
	mov r5,r7
	mov.l @r1,r2
	cmp/hs r2,r7
	bt loc_8c193108
	mov.l @(0x7C,PC),r0
	mov r4,r1
	mov.l @r0,r2
	tst r2,r2
	bt.s loc_8c1930fe
	shad r7,r1
	mov.l @(0x74,PC),r3
	mov.l @r3,r2
	or r1,r2
	mov.l r2,@r3
	bra loc_8c193108

	nop

loc_8c1930FE:
	mov.l @(0x6C,PC),r3
	not r1,r1
	mov.l @r3,r2
	and r1,r2
	mov.l r2,@r3

loc_8c193108:
	mov.l @(0x64,PC),r3
	mov.l r6,@r3
	mov.l @(0x4C,PC),r1
	mov.l @r1,r2
	mov.l @(0x60,PC),r0
	mov.l r5,@(0x28,r2)
	mov 0x00,r2
	mov.l r2,@r0
	add 0xF4,r3
	bra loc_8c192c80
	mov.l @r3,r4


loc_8c19311E:
	rts
	nop

;==============================================
	#repeat 9
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c193140:
	#data 0x8C32EA9C
loc_8c193144:
	#data 0x8C32EA70
loc_8c193148:
	#data 0x8C32DBEC
loc_8c19314c:
	#data 0x8C32DC10
loc_8c193150:
	#data 0x8C32DC04
loc_8c193154:
	#data 0x8C32DBF8
loc_8c193158:
	#data 0x8C32EA68
loc_8c19315c:
	#data 0x8C32EA6C
loc_8c193160:
	#data 0x8C32DBF0
loc_8c193164:
	#data 0x8C32DC14
loc_8c193168:
	#data 0x8C32DC08
loc_8c19316c:
	#data 0x8C32DBFC
loc_8c193170:
	#data 0x8C32EA78
loc_8c193174:
	#data 0x8C32EA74

;==============================================
	#align16_nop

;==============================================
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

loc_8c1931d8:
	mov.l @(0x38,r14),r2
	tst r2,r2
	bt loc_8c1931e4
	mov r12,r0
	cmp/eq 0x01,r0
	bf loc_8c193230

loc_8c1931e4:
	mov.l @(loc_8C193208,pc),r3
	mov.l @r3,r2
	tst r2,r2
	bf loc_8c193230
	bsr loc_8c192c80
	mov r14,r4
	tst r0,r0
	bf loc_8c193230
	bra loc_8c193230
	mov r13,r11

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c193200:
	#data 0xFF0F
	#align4

loc_8c193204:
	#data loc_8C1919C2
loc_8C193208:
	#data 0x8C32EA68

;==============================================
	#repeat 6
	nop

	#align16_nop

;==============================================
loc_8c193220:
	mov.l @(0x40,PC),r2
	mov.l @r2,r3
	tst r3,r3
	bf loc_8c193230
	tst r12,r12
	bt loc_8c193230
	bsr loc_8c192f5a
	mov r14,r4

loc_8c193230:
	mov.l @(0x10,r14),r14
	tst r14,r14
	bf loc_8c1931b0
	mov r11,r5
	bsr loc_8c193020
	mov r12,r4
	mov.l @r15,r0
	stc sr, r2
	mov.w @(loc_8C193260,pc),r3
	and 0x0F,r0
	shll2 r0
	and r3,r2
	shll2 r0
	or r2,r0
	ldc r0, sr

loc_8c19324E:
	mov 0x00,r0 ; r0 set to 0x00
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c193260:
	#data 0xFF0F
	#align4

loc_8c193264:
	#data 0x8C32EA74

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
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

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c193340:
	#data 0x07D8
loc_8c193342:
	#data 0x0800
loc_8c193344:
	#data 0x07D4
	#align4

loc_8c193348:
	#data 0x8C32D278
loc_8c19334C:
	#data bank1a.loc_8c1a4980
loc_8c193350:
	#data 0x42480000
loc_8c193354:
	#data loc_8c1914A0
loc_8c193358:
	#data bank1a.loc_8c1a8D40

;==============================================
	#align16_nop

;==============================================
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

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c193400:
	#data 0x07D8
	#align4

loc_8c193404:
	#data bank1a.loc_8c1a8CC0
loc_8c193408:
	#data bank1a.loc_8c1a7A00
loc_8c19340C:
	#data bank18.loc_8c18DDA0
loc_8c193410:
	#data bank18.loc_8c18FD80

;==============================================
	#align16_nop

;==============================================
loc_8c193420:
	mov r13,r0
	add 0x38,r0
	add r10,r0
	mov r0,r3
	add 0x10,r3
	add r5,r3
	fmov.s @r3,fr2
	fcmp/gt fr15,fr2
	bf loc_8c19343c
	mov r5,r0

loc_8c193434:
	mov 0x03,r3 ; r3 set to 0x03
	mov.l r3,@(r0,r12)
	bra loc_8c193448
	nop

loc_8c19343C:
	mov r5,r0
	bra loc_8c193448
	mov.l r8,@(r0,r12)

loc_8c193442:
	mov 0x01,r3
	mov r5,r0
	mov.l r3,@(r0,r12)

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

;==============================================
	#repeat 3
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
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

;==============================================
	#align16_nop

;==============================================
loc_8c193500:
	tst 0x20,r0
	bt loc_8c193514
	mov.l @(0x10,r15),r2
	mov.l @r2,r3
	tst r3,r3
	bt loc_8c193514
	mov.l @(loc_8c1935c4,pc),r3
	mov 0x03,r5
	jsr @r3
	mov r15,r4

loc_8c193514:
	mov r13,r0
	add 0x38,r0
	mov.l @(r0,r10),r0
	tst 0x40,r0
	bt loc_8c19352e
	mov.l @(0x08,r15),r2
	mov.l @r2,r3
	tst r3,r3
	bt loc_8c19352e
	mov.l @(loc_8c1935c4,pc),r3
	mov 0x04,r5
	jsr @r3
	mov r15,r4

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

loc_8c193588:
	mov.l @(0x2C,r14),r3
	tst r3,r3
	bt loc_8c1935a6
	mov.l @(loc_8c1935d4,pc),r12
	mov r11,r13

loc_8c193592:
	mov.w @(loc_8c1935c0,pc),r4
	mov 0x00,r5
	add r14,r4
	add r13,r4
	jsr @r12
	mov.l @r4,r4
	mov 0x08,r3
	add 0x04,r13
	cmp/hs r3,r13
	bf loc_8c193592

loc_8c1935a6:
	mov 0x00,r0

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

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1935C0:
	#data 0x07D8
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

;==============================================
	#align16_nop

;==============================================
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

;==============================================
	#repeat 7
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c193640:
	#data 0x8C32D278

;==============================================
	#repeat 7
	nop

	#align16_nop

;==============================================
loc_8c193660:
	mov.l @(0x28,r4),r2
	mov.l @(loc_8c193788,pc),r3
	mov.l r2,@(0x14,r6)
	mov.l r2,@(0x30,r5)
	mov.l @(0x0C,r15),r1
	jsr @r3
	mov.l @(0x28,r4),r0
	and r11,r0
	mov.l r0,@(0x0C,r15)

loc_8c193672:
	mov.l @(0x30,r5),r3
	mov 0x00,r6
	mov r6,r2
	mov r6,r12
	cmp/hs r3,r2
	bt/s loc_8c1936ea
	mov 0x14,r9

loc_8c193680:
	mov.w @(loc_8C193780,pc),r3
	mov r12,r0
	shll2 r0
	mov r12,r2
	add r5,r3
	mov.w @(loc_8C193782,pc),r1
	add r3,r0
	mov r12,r3
	shll2 r2
	add r3,r2
	shll2 r2
	shll2 r2
	add r5,r1
	shll r2
	add r1,r2
	mov.l r2,@r0
	mov r2,r3
	mov r12,r2
	shll2 r2
	mov r12,r3
	add r3,r2
	shll2 r2
	shll2 r2
	mov 0x00,r1
	shll r2
	mov.l r2,@r15
	mov.l @(0x34,r4),r3
	cmp/hs r3,r1
	bt/s loc_8c1936e2
	mov r6,r13

loc_8c1936bc:
	mov r13,r10
	shll2 r10
	mov r13,r3
	add r3,r10
	shll2 r10
	mov r6,r7

loc_8c1936c8:
	mov.w @(loc_8C193782,pc),r0
	mov.l @r15,r3
	add r5,r0
	add r3,r0
	add r10,r0
	mov.l r6,@(r0,r7)
	add 0x04,r7
	cmp/hs r9,r7
	bf loc_8c1936c8
	mov.l @(0x34,r4),r2
	add 0x01,r13
	cmp/hs r2,r13
	bf loc_8c1936bc

loc_8c1936e2:
	mov.l @(0x30,r5),r2
	add 0x01,r12
	cmp/hs r2,r12
	bf loc_8c193680

loc_8c1936ea:
	mova @(loc_8C19378C,pc),r0
	mov r15,r7
	fmov.s @r0,fr4
	mov 0x05,r10
	mov.l @(0x04,r4),r0
	mov 0x38,r12
	fldi0 fr5
	tst 0x40,r0
	bf/s loc_8c193702
	add 0x20,r7
	bra loc_8c193906
	nop

loc_8c193702:
	mov r7,r3
	add 0x14,r3
	mov.w @(loc_8C193784,pc),r0
	mov 0x01,r2
	mov 0x00,r1
	mov.l r2,@(r0,r5)
	mov r7,r2
	mov.l r6,@(0x0C,r15)
	mov.l r3,@(0x18,r15)
	mov.l r2,@(0x1C,r15)
	mov.l @(0x34,r4),r3
	cmp/hs r3,r1
	bf loc_8c193720
	bra loc_8c193b2e
	nop

loc_8c193720:
	mov.l @(0x0C,r15),r2
	mov.l @(0x0C,r15),r0
	mul.l r12,r2
	mov.w @(loc_8C193786,pc),r3
	shll2 r0
	add r5,r3
	sts macl,r2
	add r3,r0
	mov r4,r3
	add 0x38,r3
	add r3,r2
	mov.l @(0x0C,r2),r1
	mov.l r1,@r0
	mov.l @(0x1C,r15),r13

loc_8c19373c:
	fmov.s fr5,@r13
	add 0x04,r13
	mov.l @(0x18,r15),r3
	cmp/hs r3,r13
	bf loc_8c19373c
	mov.l @(0x0C,r15),r8
	mov r6,r13
	mul.l r12,r8
	sts macl,r8

loc_8c19374e:
	mov.l @(0x04,r4),r3
	tst r14,r3
	bt loc_8c1937a0
	mov r4,r1
	add 0x38,r1
	add r8,r1
	mov.l @(0x0C,r1),r3
	cmp/eq r13,r3
	bt loc_8c1937b8
	mov r4,r3
	add 0x38,r3
	add r8,r3
	mov r13,r0
	mov r3,r1
	shll2 r0
	add 0x10,r1
	mov r0,r2
	add r2,r1
	mov.l r0,@r15
	fmov.s @r1,fr3
	bra loc_8c1937b8
	fmov.s fr3,@(r0,r7)

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C193780:
	#data 0x0150
loc_8C193782:
	#data 0x0170
loc_8C193784:
	#data 0x07D0
loc_8C193786:
	#data 0x0710
	#align4

loc_8c193788:
	#data bank12.loc_8c1291dc
loc_8C19378C:
	#data 0x42C80000

;==============================================
	#repeat 2
	nop

	#align16_nop

;==============================================
loc_8c1937a0:
	mov r4,r3
	add 0x38,r3
	add r8,r3
	mov r13,r0
	mov r3,r1
	shll2 r0
	add 0x10,r1
	mov r0,r2
	add r2,r1
	mov.l r0,@r15
	fmov.s @r1,fr3
	fmov.s fr3,@(r0,r7)

loc_8c1937b8:
	add 0x01,r13
	cmp/hs r10,r13
	bf loc_8c19374e
	mov.l @(0x0C,r15),r13
	mov r4,r3
	add 0x38,r3
	mul.l r12,r13
	sts macl,r13
	add r3,r13
	mov.l @(0x04,r13),r2
	mov.l r2,@(0x08,r15)
	mov.l @(0x08,r13),r3
	mov.l r3,@r15
	mov.l @(0x04,r4),r2
	tst r14,r2
	bf loc_8c1937e2
	mov.l @(loc_8c193884,pc),r3
	mov.l @r15,r1
	jsr @r3
	mov.l @(0x28,r4),r0
	mov.l r0,@r15

loc_8c1937e2:
	mov.l @r15,r3
	mov r6,r8
	and r11,r3
	mov.l r3,@r15
	mov.l @(0x0C,r15),r13
	mov r13,r2
	shll2 r13
	add r2,r13
	shll2 r13
	
loc_8c1937f4:
	mov.l @r15,r2
	mov r8,r0
	mov.w @(loc_8C193880,pc),r3
	lds r2,fpul
	cmp/pz r2
	add r5,r3
	fmov.s @(r0,r7),fr3
	add r13,r3
	add r8,r3
	bt/s loc_8c193812
	float fpul,fr2
	mov.l @(loc_8C193888,pc),r1
	lds r1,fpul
	fsts fpul,fr1
	fadd fr1,fr2
	
loc_8c193812:
	fmul fr2,fr3
	mov.l @(loc_8C19388C,pc),r1
	lds r1,fpul
	fdiv fr4,fr3
	fsts fpul,fr2
	fcmp/gt fr3,fr2
	bt loc_8c193824
	fadd fr2,fr2
	fsub fr2,fr3
	
loc_8c193824:
	ftrc fr3,fpul
	add 0x04,r8
	cmp/hs r9,r8
	sts fpul,r2
	and r11,r2
	mov.l r2,@r3
	bf loc_8c1937f4
	mov 0x00,r1
	mov.l r6,@(0x04,r15)
	mov.l @(0x0C,r15),r3
	mul.l r12,r3
	sts macl,r3
	mov.l r3,@(0x14,r15)
	mov.l @(0x30,r5),r2
	cmp/hs r2,r1
	bt loc_8c1938d6
	
loc_8c193844:
	mov.l @(0x04,r15),r2
	mov r6,r8
	mov r2,r3
	shll2 r2
	add r3,r2
	shll2 r2
	shll2 r2
	shll r2
	mov.l r2,@r15
	
loc_8c193856:
	mov.l @(0x04,r4),r3
	tst r14,r3
	bt loc_8c1938a0
	mov r4,r2
	mov.l @(0x14,r15),r3
	add 0x38,r2
	add r3,r2
	mov.l @(0x0C,r2),r1
	cmp/eq r1,r8
	bf loc_8c1938a0
	mov.w @(loc_8C193882,pc),r0
	mov.l @r15,r3
	add r5,r0
	mov.l @(loc_8C193890,pc),r2
	add r3,r0
	mov r8,r3
	shll2 r3
	add r13,r0
	mov.l r2,@(r0,r3)
	bra loc_8c1938c4
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C193880:
	#data 0x0730
loc_8C193882:
	#data 0x0170
	#align4

loc_8c193884:
	#data bank12.loc_8c1291dc
loc_8C193888:
	#data 0x4F800000
loc_8C19388C:
	#data 0x4F000000
loc_8C193890:
	#data 0x10000000

;==============================================
	#align16_nop

;==============================================
loc_8c1938a0:
	mov.w @(loc_8C193980,pc),r0
	mov.l @r15,r3
	add r5,r0
	add r3,r0
	mov r8,r3
	add r13,r0
	shll2 r3
	mov.l r3,@(0x10,r15)
	mov.l @(0x08,r15),r2
	mov.l r2,@(r0,r3)
	mov.w @(loc_8C193982,pc),r3
	mov.l @(0x10,r15),r0
	add r5,r3
	mov.l @(0x08,r15),r2
	add r13,r3
	mov.l @(r0,r3),r3
	add r3,r2
	mov.l r2,@(0x08,r15)

loc_8c1938c4:
	add 0x01,r8
	cmp/hs r10,r8
	bf loc_8c193856
	mov.l @(0x04,r15),r2
	add 0x01,r2
	mov.l r2,@(0x04,r15)
	mov.l @(0x30,r5),r3
	cmp/hs r3,r2
	bf loc_8c193844

loc_8c1938d6:
	mov r6,r8

loc_8c1938d8:
	mov.w @(loc_8C193980,pc),r3
	mov.w @(loc_8C193984,pc),r0
	add r5,r3
	add r13,r3
	mov r3,r2
	add r8,r2
	mov.l @r2,r3
	add r5,r0
	add r13,r0
	mov.l r3,@(r0,r8)
	add 0x04,r8
	cmp/hs r9,r8
	bf loc_8c1938d8
	mov.l @(0x0C,r15),r3
	add 0x01,r3
	mov.l r3,@(0x0C,r15)
	mov.l @(0x34,r4),r2
	cmp/hs r2,r3
	bt loc_8c193902
	bra loc_8c193720
	nop

loc_8c193902:
	bra loc_8c193b2e
	nop

loc_8c193906:
	mov r7,r3
	mov.w @(loc_8C193986,pc),r0
	add 0x14,r3
	mov r7,r13
	mov.l r6,@(r0,r5)
	mov.l r3,@r15

loc_8c193912:
	fmov.s fr5,@r13
	add 0x04,r13
	mov.l @r15,r3
	cmp/hs r3,r13
	bf loc_8c193912
	mov 0x00,r2
	mov.l r6,@(0x04,r15)
	mov.l @(0x34,r4),r3
	cmp/hs r3,r2
	bt loc_8c1939d0

loc_8c193926:
	mov.l @(0x04,r15),r2
	mov r6,r13
	mov.l @(0x04,r15),r0
	mul.l r12,r2
	mov.w @(loc_8C193988,pc),r3
	shll2 r0
	add r5,r3
	sts macl,r2
	add r3,r0
	mov r4,r3
	add 0x38,r3
	add r3,r2
	mov.l @(0x0C,r2),r1
	mov.l r1,@r0
	mov.l @(0x04,r15),r3
	mul.l r12,r3
	sts macl,r3
	mov.l r3,@r15

loc_8c19394a:
	mov.l @(0x04,r4),r2
	tst r14,r2
	bt loc_8c1939a0
	mov r4,r1
	mov.l @r15,r3
	add 0x38,r1
	add r3,r1
	mov.l @(0x0C,r1),r2
	cmp/eq r13,r2
	bt loc_8c1939be
	mov r4,r2
	add 0x38,r2
	mov r13,r0
	shll2 r0
	mov.l r0,@(0x08,r15)
	mov.l @r15,r3
	fmov.s @(r0,r7),fr2
	add r3,r2
	mov r0,r3
	mov r2,r1
	add 0x10,r1
	add r3,r1
	fmov.s @r1,fr3
	fadd fr3,fr2
	bra loc_8c1939be
	fmov.s fr2,@(r0,r7)

;==============================================
	#align16_nop

;==============================================
loc_8C193980:
	#data 0x0170
loc_8C193982:
	#data 0x0730
loc_8C193984:
	#data 0x00B0
loc_8C193986:
	#data 0x07D0
loc_8C193988:
	#data 0x0710

;==============================================
	#repeat 5
	nop

	#align16_nop

;==============================================
loc_8c1939a0:
	mov r4,r2
	add 0x38,r2
	mov r13,r0
	shll2 r0
	mov.l r0,@(0x08,r15)
	mov.l @r15,r3
	fmov.s @(r0,r7),fr2
	add r3,r2
	mov r0,r3
	mov r2,r1
	add 0x10,r1
	add r3,r1
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r7)

loc_8c1939be:
	add 0x01,r13
	cmp/hs r10,r13
	bf loc_8c19394a
	mov.l @(0x04,r15),r2
	add 0x01,r2
	mov.l r2,@(0x04,r15)
	mov.l @(0x34,r4),r3
	cmp/hs r3,r2
	bf loc_8c193926

loc_8c1939d0:
	mov r7,r12
	add 0x14,r12
	mov r7,r13

loc_8c1939d6:
	mov.l @(0x34,r4),r3
	lds r3,fpul
	cmp/pz r3
	bt/s loc_8c1939e8
	float fpul,fr3
	mov.l @(loc_8C193AA8,pc),r2
	lds r2,fpul
	fsts fpul,fr2
	fadd fr2,fr3

loc_8c1939e8:
	fmov.s @r13,fr1
	fdiv fr3,fr1
	fmov.s fr1,@r13
	add 0x04,r13
	cmp/hs r12,r13
	bf loc_8c1939d6
	mov 0x00,r2
	mov.l r6,@(0x08,r15)
	mov.l @(0x30,r5),r3
	cmp/hs r3,r2
	bf loc_8c193a02
	bra loc_8c193b16
	nop

loc_8c193a02:
	mov.l r6,@r15
	mov.l @(0x08,r15),r12
	mov.l @(0x08,r15),r2
	mov r12,r3
	shll2 r12
	add r3,r12
	mov r2,r3
	shll2 r2
	shll2 r12
	add r3,r2
	shll2 r2
	shll2 r12
	mov.l r2,@(0x04,r15)
	shll r12

loc_8c193a1e:
	mov.l @(0x0C,r15),r3
	mov.l @r15,r13
	lds r3,fpul
	cmp/pz r3
	shll2 r13
	bt/s loc_8c193a34
	float fpul,fr3
	mov.l @(loc_8C193AA8,pc),r2
	lds r2,fpul
	fsts fpul,fr2
	fadd fr2,fr3

loc_8c193a34:
	mov.l @(0x04,r4),r3
	tst r14,r3
	bt/s loc_8c193ac0
	fmov fr3,fr5
	mov 0x44,r0
	mov.l @r15,r1
	mov.l @(r0,r4),r2
	cmp/eq r1,r2
	bf loc_8c193ac0
	mov.w @(loc_8C193AA0,pc),r0
	mov.l @(loc_8C193AAC,pc),r3
	add r5,r0
	mov.l @(loc_8C193AB0,pc),r2
	add r12,r0
	mov.l r3,@(r0,r13)
	mov.w @(loc_8C193AA0,pc),r0
	lds r2,fpul
	add r5,r0
	add r12,r0
	mov r0,r3
	add 0x14,r3
	add r13,r3
	mov.w @(loc_8C193AA2,pc),r0
	mov.l r8,@r3
	mov.l @(0x04,r15),r3
	add r5,r0
	fsts fpul,fr2
	add r3,r0
	mov.l r8,@(r0,r13)
	mov r13,r0
	fmov.s @(r0,r7),fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fcmp/gt fr3,fr2
	bt loc_8c193a7e
	fadd fr2,fr2
	fsub fr2,fr3

loc_8c193a7e:
	ftrc fr3,fpul
	mov.w @(loc_8C193AA4,pc),r1
	add r5,r1
	add r13,r1
	sts fpul,r3
	and r11,r3
	mov.l r3,@(0x10,r15)
	mov.l r3,@r1
	bra loc_8c193af8
	nop

;===========================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C193AA0:
	#data 0x0170
loc_8C193AA2:
	#data 0x0670
loc_8C193AA4:
	#data 0x0730
	#align4

loc_8C193AA8:
	#data 0x4F800000
loc_8C193AAC:
	#data 0x10000000
loc_8C193AB0:
	#data 0x4F000000

;===========================================
	#align16_nop

;===========================================
loc_8c193ac0:
	mov.w @(loc_8C193BA0,pc),r0
	mov.l @(loc_8C193BB0,pc),r2
	add r5,r0
	add r12,r0
	lds r2,fpul
	mov.l r8,@(r0,r13)
	mov.w @(loc_8C193BA2,pc),r0
	mov.l @(0x04,r15),r3
	add r5,r0
	fsts fpul,fr2
	add r3,r0
	mov.l r8,@(r0,r13)
	mov r13,r0
	fmov.s @(r0,r7),fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fcmp/gt fr3,fr2
	bt loc_8c193ae8
	fadd fr2,fr2
	fsub fr2,fr3
	
loc_8c193ae8:
	ftrc fr3,fpul
	mov.w @(loc_8C193BA4,pc),r1
	add r5,r1
	add r13,r1
	sts fpul,r3
	and r11,r3
	mov.l r3,@(0x10,r15)
	mov.l r3,@r1
	
loc_8c193af8:
	mov.l @r15,r3
	mov.l @(0x10,r15),r2
	add 0x01,r3
	cmp/hs r10,r3
	add r2,r8
	bf/s loc_8c193a1e
	mov.l r3,@r15
	mov.l @(0x08,r15),r3
	add 0x01,r3
	mov.l r3,@(0x08,r15)
	mov.l @(0x30,r5),r2
	cmp/hs r2,r3
	bt loc_8c193b16
	bra loc_8c193a02
	nop
	
loc_8c193b16:
	mov r6,r4
	
loc_8c193b18:
	mov.w @(loc_8C193BA0,pc),r3
	mov.w @(loc_8C193BA6,pc),r2
	add r5,r3
	add r5,r2
	add r4,r3
	add r4,r2
	mov.l @r3,r1
	add 0x04,r4
	cmp/hs r9,r4
	bf/s loc_8c193b18
	mov.l r1,@r2
	
loc_8c193b2e:
	mov 0x00,r0
	add 0x34,r15
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
loc_8c193b44:
	mov.l r14,@-r15
	mov 0x00,r4
	mov.l @(0x68,PC),r14
	mov r4,r5
	mov.w @(0x58,PC),r0
	mov.w @(0x58,PC),r6
	sts.l pr,@-r15
	mov.l r4,@(r0,r14)
	add 0x04,r0
	mov.l @(0x60,PC),r3
	add r14,r6
	mov.l r4,@(r0,r14)
	jsr @r3
	mov 0x07,r4
	mov.w @(0x48,PC),r6
	mov 0x00,r5
	mov.l @(0x50,PC),r2
	add r14,r6
	jsr @r2
	mov 0x08,r4
	mov.l @(0x14,r14),r3
	tst r3,r3
	bt loc_8c193b7a
	mov.w @(0x36,PC),r0
	mov.l @(r0,r14),r3
	add 0xFF,r3
	mov.l r3,@(r0,r14)

loc_8c193b7a:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

;==============================================
	#repeat 8
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C193BA0:
	#data 0x0170
loc_8C193BA2:
	#data 0x0670
loc_8C193BA4:
	#data 0x0730
loc_8C193BA6:
	#data 0x00B0
loc_8C193BA8:
	#data 0x0808
loc_8C193BAa:
	#data 0x0810
loc_8C193BAc:
	#data 0x0814
	#align4

loc_8C193BB0:
	#data 0x4F000000
loc_8c193bb4:
	#data 0x8C32D278
loc_8c193bb8:
	#data bank1a.loc_8C1A70A0

;==============================================
	#align16_nop

;==============================================
loc_8c193bc0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r3
	mov.w @(0x74,PC),r0
	mov.l @(0x78,PC),r14
	mov.l r4,@r15
	mov.l @(0x14,r3),r2
	mov.l @(0x74,PC),r3
	mov.l r2,@(r0,r14)
	jsr @r3
	mov.l @(0x18,r14),r4
	mov.l @r15,r2
	mov.w @(0x64,PC),r1
	mov.l @(0xC,r2),r3
	mov 0xFE,r2
	add r14,r1
	add 0x01,r3
	and r2,r3
	mul.l r3,r0
	sts macl,r0
	mov.l r0,@r1
	mov.w @(0x52,PC),r0
	mov.l @(r0,r14),r3
	add 0xF8,r0
	mov.l @(r0,r14),r1
	add 0xFC,r0
	add r3,r1
	mov.l @(r0,r14),r3
	cmp/hs r3,r1
	bf loc_8c193c10
	mov.w @(0x40,PC),r0
	mov.l @(r0,r14),r3
	add 0xF4,r0
	mov.l @(r0,r14),r1
	add 0x04,r0
	sub r3,r1
	mov.l @(0x40,PC),r3
	add r3,r1
	mov.l r1,@(r0,r14)

loc_8c193c10:
	mov.w @(0x2E,PC),r0
	mov.l @(r0,r14),r3
	add 0xF4,r0
	mov.l @(r0,r14),r2
	add 0x04,r0
	mov.l @(r0,r14),r1
	add 0x04,r0
	sub r3,r2
	sub r1,r2
	mov.l r2,@(r0,r14)
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
	#repeat 3
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c193c40:
	#data 0x07FC
loc_8c193c42:
	#data 0x0804
	#align4

loc_8c193c44:
	#data 0x8C32D278
loc_8c193c48:
	#data bank18.loc_8C18D268
loc_8c193c4c:
	#data 0xFFFC0000

;==============================================
	nop
	#align16_nop

;==============================================
loc_8c193c60:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0xDC,PC),r3
	mov r4,r14
	mov.l @(0xD4,PC),r13
	jsr @r3
	mov.l @(0x18,r13),r4
	mov r15,r6
	mov.l @(0xD4,PC),r2
	mov r15,r5
	mov r0,r12
	add 0x04,r6
	jsr @r2
	mov r0,r4
	mov.w @(0xB6,PC),r0
	mov.l @(0xC8,PC),r11
	jsr @r11
	mov.l @(r0,r13),r4
	mov.w @(0xB0,PC),r0
	jsr @r11
	mov.l @(r0,r13),r4
	mov.l @(0xC0,PC),r10
	jsr @r10
	mov.l @r15,r4
	mov.w @(0xA2,PC),r1
	add r13,r1
	mov.l r0,@r1
	jsr @r10
	mov.l @(0x4,r15),r4
	mov.w @(0x9A,PC),r1
	add r13,r1
	mov.l r0,@r1
	mov.l @(0x8,r14),r3
	mov.l @r15,r1
	mov.l @r3,r2
	mov.l r1,@(0x1C,r2)
	mov.l @(0x8,r14),r3
	mov.l @r3,r2
	mov 0x01,r3
	mov.l r12,@(0x14,r2)
	mov.l @(0xC,r14),r2
	cmp/hi r3,r2
	bf.s loc_8c193cd0
	mov 0x02,r4
	mov.l @(0x8,r14),r2
	mov.l @(0x4,r15),r0
	mov.l @(0x4,r2),r1
	mov.l r0,@(0x1C,r1)
	mov.l @(0x8,r14),r2
	mov.l @(0x4,r2),r1
	mov.l r12,@(0x14,r1)

loc_8c193cd0:
	mov.l @(0x4,r14),r3
	tst r4,r3
	bf loc_8c193d2c
	mov.l @(0xC,r14),r1
	cmp/hi r4,r1
	bf loc_8c193d2c
	mov.l @(0x70,PC),r2
	mov r15,r6
	mov r15,r5
	add 0x04,r6
	jsr @r2
	mov r12,r4
	mov.w @(0x58,PC),r0
	jsr @r11
	mov.l @(r0,r13),r4
	mov.w @(0x54,PC),r0
	jsr @r11
	mov.l @(r0,r13),r4
	jsr @r10
	mov.l @r15,r4
	mov.w @(0x48,PC),r1
	add r13,r1
	mov.l r0,@r1
	jsr @r10
	mov.l @(0x4,r15),r4
	mov.w @(0x40,PC),r1
	add r13,r1
	mov.l r0,@r1
	mov.l @(0x8,r14),r3
	mov.l @r15,r1
	mov.l @(0x8,r3),r2
	mov.l r1,@(0x1C,r2)
	mov.l @(0x8,r14),r3
	mov.l @(0x8,r3),r2
	mov 0x03,r3
	mov.l r12,@(0x14,r2)
	mov.l @(0xC,r14),r2
	cmp/hi r3,r2
	bf loc_8c193d2c
	mov.l @(0x8,r14),r2
	mov.l @(0x4,r15),r0
	mov.l @(0xC,r2),r1
	mov.l r0,@(0x1C,r1)
	mov.l @(0x8,r14),r2
	mov.l @(0xC,r2),r1
	mov.l r12,@(0x14,r1)

loc_8c193d2c:
	mov 0x00,r0
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c193d40:
	#data 0x07E0
loc_8c193d42:
	#data 0x07E4
loc_8c193d44:
	#data 0x07E8
loc_8c193d46:
	#data 0x07EC
	#align4

loc_8c193d48:
	#data 0x8C32D278
loc_8c193d4c:
	#data bank18.loc_8C18D268
loc_8c193d50:
	#data bank1a.loc_8C1A4900
loc_8c193d54:
	#data bank18.loc_8C18D160
loc_8c193d58:
	#data bank18.loc_8C18D016

;==============================================
	#align16_nop

;==============================================
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

;==============================================
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

;==============================================
	#repeat 5
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c193E00:
	#data 0x00B0
loc_8c193E02:
	#data 0x0150
	#align4

loc_8c193E04:
	#data 0x8C32D278
loc_8c193E08:
	#data bank1c.loc_8c1c5B4C

;==============================================
	#repeat 5
	nop

	#align16_nop

;==============================================
loc_8c193e20:
	mov.l @(0x0C,r4),r10

loc_8c193e22:
	mov.l @(loc_8C193EC4,pc),r13
	mov r8,r3
	mov.l @(loc_8c193ec0,pc),r9
	cmp/hs r10,r3
	mov.l r8,@r15
	mov.l @(0x08,r4),r11
	bt/s loc_8c193e76
	mov 0x01,r12

loc_8c193e32:
	mov.l @r11,r14
	mov.l r12,@r14
	mov.l @(0x18,r13),r3
	mov.l r3,@(0x08,r14)
	mov r15,r3
	mov.l @(0x18,r13),r2
	add 0x04,r3
	shll2 r2
	add r3,r2
	mov.l @r2,r1
	mov.l r1,@(0x04,r14)
	mov.l r8,@(0x18,r14)
	mov.l @(0x2C,r13),r2
	tst r2,r2
	bt/s loc_8c193e58
	mov r14,r6
	mov.l @(0x18,r14),r2
	or r12,r2
	mov.l r2,@(0x18,r14)

loc_8c193e58:
	mov 0x00,r5
	add 0x0C,r6
	jsr @r9
	mov 0x07,r4
	mov r14,r6
	mov 0x00,r5
	add 0x10,r6
	jsr @r9
	mov 0x08,r4
	mov.l @r15,r3
	add 0x01,r3
	cmp/hs r10,r3
	mov.l r3,@r15
	bf/s loc_8c193e32
	add 0x04,r11

loc_8c193e76:
	mov 0x00,r0
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
loc_8c193e8c:
	mov.l @(0x4,r4),r0
	tst 0x02,r0
	bf loc_8c193e9a
	mov.l @(0x34,PC),r3
	mov.l @r3,r2
	tst r2,r2
	bt loc_8c193eac

loc_8c193e9a:
	mov.l @(0xC,r4),r0
	cmp/eq 0x02,r0
	bf loc_8c193ea6
	mov.l @(0x4,r4),r0
	tst 0x20,r0
	bt loc_8c193eac

loc_8c193ea6:
	mov.l @(0x24,PC),r0
	rts
	nop

;==============================================
loc_8c193eac:
	mov 0x00,r0
	rts
	nop

;==============================================
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c193ec0:
	#data bank1a.loc_8c1a70a0
loc_8C193EC4:
	#data 0x8C32D278
loc_8c193ec8:
	#data 0x8C32D2A0
loc_8c193ecc:
	#data 0x0000EEEE

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#align16

;==============================================
loc_8c193ee0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x5C,PC),r14
	mov 0x00,r11
	mov.w @(0x4A,PC),r3
	mov r11,r12
	and r7,r14
	mov r11,r13
	cmp/eq r3,r14
	extu.b r7,r7
	bt.s loc_8c193f08
	mov.l r7,@r15
	mov.w @(0x3C,PC),r1
	cmp/eq r1,r14
	bf loc_8c193f0e

loc_8c193f08:
	mov 0x03,r3
	bra loc_8c193f12
	mov.l r3,@r4

loc_8c193f0e:
	mov 0x02,r1
	mov.l r1,@r4

loc_8c193f12:
	mov.w @(0x2E,PC),r3
	mov 0x01,r10
	cmp/eq r3,r14
	bt.s loc_8c193f22
	mov 0x04,r7
	mov.w @(0x26,PC),r1
	cmp/eq r1,r14
	bf loc_8c193f2a

loc_8c193f22:
	mov.l @(0x2C,PC),r3
	mov.l r10,@(0x4,r4)
	bra loc_8c193fc2
	mov.l r3,@(0x8,r4)

loc_8c193f2a:
	mov.w @(0x1A,PC),r1
	cmp/eq r1,r14
	bt loc_8c193f36
	mov.w @(0x16,PC),r2
	cmp/eq r2,r14
	bf loc_8c193f60

loc_8c193f36:
	mov.l @(0x1C,PC),r2
	bra loc_8c193f8e
	mov.l r10,@(0x4,r4)

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c193f40:
	#data 0x1000
loc_8c193f42:
	#data 0x1100
loc_8c193f44:
	#data 0x0500
loc_8c193f46:
	#data 0x0600
loc_8c193f48:
	#data 0x0700
loc_8c193f4a:
	#data 0x0800
	#align4

loc_8c193f4c:
	#data 0x0000FF00
loc_8c193f50:
	#data 0x28000000
loc_8c193f54:
	#data 0x30000000

;==============================================
	#align16_nop

;==============================================
loc_8c193f60:
	mov.l r10,@(0x4,r4)
	mov.l @r15,r0
	cmp/eq 0x00,r0
	bt loc_8c193f7c
	cmp/eq 0x01,r0
	bt loc_8c193f80
	cmp/eq 0x02,r0
	bt loc_8c193f86
	cmp/eq 0x03,r0
	bt loc_8c193f8c
	cmp/eq 0x04,r0
	bt loc_8c193f92
	bra loc_8c193fc0
	nop

loc_8c193f7c:
	bra loc_8c193fc2
	mov.l r11,@(0x8,r4)

loc_8c193f80:
	mov.l @(0x1C,PC),r2
	bra loc_8c193f8e
	nop

loc_8c193f86:
	mov.l @(0x1C,PC),r1
	bra loc_8c193f94
	nop

loc_8c193f8c:
	mov.l @(0x18,PC),r2

loc_8c193f8e:
	bra loc_8c193fc2
	mov.l r2,@(0x8,r4)

loc_8c193f92:
	mov.l @(0x18,PC),r1

loc_8c193f94:
	bra loc_8c193fc2
	mov.l r1,@(0x8,r4)

;============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c193fa0:
	#data 0x08000000
loc_8c193fa4:
	#data 0x10000000
loc_8c193fa8:
	#data 0x18000000
loc_8c193fac:
	#data 0x20000000

;============================================
	nop
	#align16_nop

;============================================
loc_8c193fc0:
	mov r7,r12

loc_8c193fc2:
	mov r5,r0
	cmp/eq 0x08,r0
	mov.l r5,@(0xC,r4)
	bt.s loc_8c194032
	mov.l r6,@(0x10,r4)
	cmp/eq 0x10,r0
	bt loc_8c193ff4
	cmp/eq 0x20,r0
	bt loc_8c193ff8
	cmp/eq 0x40,r0
	bt loc_8c193ffc
	mov.w @(0x24,PC),r1
	cmp/eq r1,r0
	bt loc_8c194020
	mov.w @(0x20,PC),r1
	cmp/eq r1,r0
	bt loc_8c194024
	mov.w @(0x1C,PC),r1
	cmp/eq r1,r0
	bt loc_8c194028
	mov.w @(0x18,PC),r1
	cmp/eq r1,r0
	bt loc_8c19402c
	bra loc_8c194030
	nop

loc_8c193ff4:
	bra loc_8c194032
	mov 0x08,r13

loc_8c193ff8:
	bra loc_8c194032
	mov 0x10,r13

loc_8c193ffc:
	bra loc_8c194032
	mov 0x18,r13

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c194000:
	#data 0x0080
loc_8c194002:
	#data 0x0100
loc_8c194004:
	#data 0x0200
loc_8c194006:
	#data 0x0400

;==============================================
	#repeat 6
	nop

	#align16_nop

;==============================================
loc_8c194020:
	bra loc_8c194032
	mov 0x20,r13

loc_8c194024:
	bra loc_8c194032
	mov 0x28,r13

loc_8c194028:
	bra loc_8c194032
	mov 0x30,r13

loc_8c19402c:
	bra loc_8c194032
	mov 0x38,r13

loc_8c194030:
	mov r7,r12

loc_8c194032:
	mov r6,r0
	cmp/eq 0x08,r0
	bt loc_8c1940b8
	cmp/eq 0x10,r0
	bt loc_8c194060
	cmp/eq 0x20,r0
	bt loc_8c194064
	cmp/eq 0x40,r0
	bt loc_8c194068
	mov.w @(0x38,PC),r1
	cmp/eq r1,r0
	bt loc_8c1940a0
	mov.w @(0x34,PC),r1
	cmp/eq r1,r0
	bt loc_8c1940a4
	mov.w @(0x30,PC),r1
	cmp/eq r1,r0
	bt loc_8c1940aa
	mov.w @(0x2C,PC),r1
	cmp/eq r1,r0
	bt loc_8c1940b0
	bra loc_8c1940b6
	nop


loc_8c194060:
	bra loc_8c1940b8
	or r10,r13

loc_8c194064:
	bra loc_8c1940b2
	mov 0x02,r2

loc_8c194068:
	bra loc_8c1940ac
	mov 0x03,r1


;==============================================
	#repeat 4
	nop

	#align16_nop

;==============================================
loc_8c194080:
	#data 0x0080
loc_8c194082:
	#data 0x0100
loc_8c194084:
	#data 0x0200
loc_8c194086:
	#data 0x0400

;==============================================
	#repeat 6
	nop

	#align16_nop

;==============================================
loc_8c1940a0:
	bra loc_8c1940b8
	or r7,r13

loc_8c1940a4:
	mov 0x05,r3
	bra loc_8c1940b8
	or r3,r13

loc_8c1940aa:
	mov 0x06,r1

loc_8c1940ac:
	bra loc_8c1940b8
	or r1,r13

loc_8c1940b0:
	mov 0x07,r2

loc_8c1940b2:
	bra loc_8c1940b8
	or r2,r13

loc_8c1940b6:
	mov r7,r12

loc_8c1940b8:
	mov.w @(0xC4,PC),r3
	cmp/eq r3,r14
	bt loc_8c1940dc
	mov.w @(0xC0,PC),r1
	cmp/eq r1,r14
	bt loc_8c1940dc
	mov.w @(0xBC,PC),r0
	cmp/eq r0,r14
	bt loc_8c1940dc
	mov.w @(0xB8,PC),r2
	cmp/eq r2,r14
	bt loc_8c1940dc
	mov.w @(0xB4,PC),r1
	cmp/eq r1,r14
	bt loc_8c1940dc
	cmp/eq r6,r5
	bt loc_8c1940dc
	mov r7,r12

loc_8c1940dc:
	mov.w @(0xAA,PC),r3
	cmp/eq r3,r14
	bt.s loc_8c194102
	mov.l r11,@(0x18,r4)
	mov.w @(0xA4,PC),r1
	cmp/eq r1,r14
	bt loc_8c194102
	mov.w @(0xA0,PC),r0
	cmp/eq r0,r14
	bt loc_8c194102
	mov.w @(0x9C,PC),r2
	cmp/eq r2,r14
	bt loc_8c194102
	mov.w @(0x98,PC),r1
	cmp/eq r1,r14
	bt loc_8c194102
	mov.w @(0x94,PC),r2
	cmp/eq r2,r14
	bf loc_8c19410a

loc_8c194102:
	mov.l @(0x18,r4),r1
	mov.l @(0x94,PC),r3
	or r3,r1
	mov.l r1,@(0x18,r4)


loc_8c19410a:
	mov.w @(0x74,PC),r5
	cmp/eq r5,r14
	bt loc_8c194116
	mov.w @(0x6C,PC),r2
	cmp/eq r2,r14
	bf loc_8c19411e

loc_8c194116:
	mov.l @(0x18,r4),r1
	mov.l @(0x84,PC),r3
	or r3,r1
	mov.l r1,@(0x18,r4)

loc_8c19411e:
	mov.w @(0x74,PC),r2
	cmp/eq r2,r14
	bt loc_8c194136
	mov.w @(0x66,PC),r1
	cmp/eq r1,r14
	bt loc_8c194136
	mov.w @(0x6A,PC),r0
	cmp/eq r0,r14
	bt loc_8c194136
	mov.w @(0x5C,PC),r2
	cmp/eq r2,r14
	bf loc_8c19413e

loc_8c194136:
	mov.l @(0x18,r4),r1
	mov.l @(0x68,PC),r3
	or r3,r1
	mov.l r1,@(0x18,r4)

loc_8c19413e:
	cmp/eq r5,r14
	bf loc_8c19414a
	mov.l @(0x18,r4),r2
	mov.l @(0x60,PC),r3
	or r3,r2
	mov.l r2,@(0x18,r4)

loc_8c19414a:
	mov.w @(0x38,PC),r1
	cmp/eq r1,r14
	bt loc_8c194162
	mov.w @(0x3E,PC),r2
	cmp/eq r2,r14
	bt loc_8c194162
	mov.w @(0x2E,PC),r0
	cmp/eq r0,r14
	bt loc_8c194162
	mov.w @(0x34,PC),r2
	cmp/eq r2,r14
	bf loc_8c19416a

loc_8c194162:
	mov.l @(0x18,r4),r1
	mov.l @(0x44,PC),r3
	or r3,r1
	mov.l r1,@(0x18,r4)

loc_8c19416a:
	mov.l @(0x18,r4),r2
	or r13,r2
	bsr loc_8c1942ec
	mov.l r2,@(0x18,r4)
	bra loc_8c1941c0
	nop

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c194180:
	#data 0x0900
loc_8c194182:
	#data 0x0B00
loc_8c194184:
	#data 0x0D00
loc_8c194186:
	#data 0x0500
loc_8c194188:
	#data 0x0700
loc_8c19418a:
	#data 0x0F00
loc_8c19418c:
	#data 0x0200
loc_8c19418e:
	#data 0x0400
loc_8c194190:
	#data 0x1100
loc_8c194192:
	#data 0x0600
loc_8c194194:
	#data 0x0800
loc_8c194196:
	#data 0x0300
loc_8c194198:
	#data 0x1000
	#align4

loc_8c19419c:
	#data 0x80000000
loc_8c1941a0:
	#data 0x04000000
loc_8c1941a4:
	#data 0x40000000
loc_8c1941a8:
	#data 0x02000000
loc_8c1941ac:
	#data 0x00008000

;==============================================
	nop
	#align16_nop

;==============================================
loc_8c1941c0:
	mov r12,r0
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1941d2:
	cmp/ge r5,r4
	bf loc_8c1941d8
	mov r5,r4

loc_8c1941d8:
	mov r4,r0
	cmp/eq 0x01,r0
	bt loc_8c194212
	cmp/eq 0x02,r0
	bt loc_8c194240
	cmp/eq 0x04,r0
	bt loc_8c194244
	cmp/eq 0x08,r0
	bt loc_8c194264
	cmp/eq 0x10,r0
	bt loc_8c194248
	cmp/eq 0x20,r0
	bt loc_8c19424c
	cmp/eq 0x40,r0
	bt loc_8c194250
	mov.w @(0x26,PC),r1
	cmp/eq r1,r0
	bt loc_8c194254
	mov.w @(0x22,PC),r1
	cmp/eq r1,r0
	bt loc_8c194258
	mov.w @(0x1E,PC),r1
	cmp/eq r1,r0
	bt loc_8c19425c
	mov.w @(0x1A,PC),r1
	cmp/eq r1,r0
	bt loc_8c194260
	bra loc_8c194264
	nop


loc_8c194212:
	rts
	mov 0x00,r0

;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c194220:
	#data 0x0080
loc_8c194222:
	#data 0x0100
loc_8c194224:
	#data 0x0200
loc_8c194226:
	#data 0x0400

;==============================================
	#repeat 6
	nop

	#align16_nop

;==============================================
loc_8c194240:
	rts
	mov 0x01,r0

;==============================================
loc_8c194244:
	rts
	mov 0x02,r0

;==============================================
loc_8c194248:
	rts
	mov 0x04,r0

;==============================================
loc_8c19424c:
	rts
	mov 0x05,r0

;==============================================
loc_8c194250:
	rts
	mov 0x06,r0

;==============================================
loc_8c194254:
	rts
	mov 0x07,r0

;==============================================
loc_8c194258:
	rts
	mov 0x08,r0

;==============================================
loc_8c19425c:
	rts
	mov 0x09,r0

;==============================================
loc_8c194260:
	rts
	mov 0x0A,r0

;==============================================
loc_8c194264:
	mov 0x03,r0
	rts
	nop

;==============================================
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

;==============================================
loc_8c19428C:
	rts
	mov 0x01,r0

;==============================================
	nop
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1942A0:
	#data 0x80000000

;==============================================
	#repeat 8
	nop

	#align16_nop

;==============================================
loc_8c1942C0:
	mov.l @(0x18,r4),r3
	tst r3,r5
	bt loc_8c1942CA
	rts
	mov 0x04,r0

;==============================================
loc_8c1942CA:
	rts
	mov 0x03,r0

;==============================================
loc_8c1942CE:
	mov.l @(0x18,r4),r3
	tst r3,r5
	bt loc_8c1942E6
	rts
	mov 0x06,r0

;==============================================
loc_8c1942D8:
	mov.l @(0x18,r4),r3
	tst r3,r5
	bt loc_8c1942E2
	rts
	mov 0x08,r0

;==============================================
loc_8c1942E2:
	rts
	mov 0x07,r0

;==============================================
loc_8c1942E6:
	mov 0x05,r0 ; r0 set to 0x05
	rts
	nop

;==============================================
loc_8c1942EC:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @r14,r0
	extu.w r0,r0
	cmp/eq 0x03,r0
	bf loc_8c194302
	bsr loc_8c1944dc
	mov r14,r4
	bra loc_8c19430e
	nop

loc_8c194302:
	mov.l @(0x18,r14),r2
	mov.l @(0x58,PC),r3
	tst r3,r2
	bt loc_8c194312
	bsr loc_8c1943b4
	mov r14,r4

loc_8c19430E:
	bra loc_8c194328
	mov r0,r4

loc_8c194312:
	mov.l @(0x18,r14),r1
	mov.l @(0x4C,PC),r2
	tst r2,r1
	bt loc_8c194322
	bsr loc_8c194436
	mov r14,r4
	bra loc_8c194326
	nop

loc_8c194322:
	bsr loc_8c194330
	mov r14,r4

loc_8c194326:
	mov r0,r4

loc_8c194328:
	mov.l r4,@(0x14,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c194330:
	mov.l @(0x10,r4),r5
	mov.l @(0xC,r4),r6
	mov.l @(0x18,r4),r2
	mul.l r5,r6
	mov.l @(0x2C,PC),r3
	tst r3,r2
	bt.s loc_8c1943a4
	sts macl,r7
	shlr r6
	shlr r5
	cmp/hs r5,r6
	bt.s loc_8c194380
	mov 0x01,r0
	bra loc_8c194382
	mov r6,r1

;==============================================
	#repeat 4
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c194360:
	#data 0x40000000
loc_8c194364:
	#data 0x00008000
loc_8c194368:
	#data 0x80000000

;==============================================
	#repeat 4
	nop

	#align16_nop

;==============================================
loc_8c194380:
	mov r5,r1

loc_8c194382:
	cmp/hi r0,r1
	bf loc_8c194396

loc_8c194386:
	mul.l r5,r6
	shlr r6
	shlr r5
	shlr r1
	sts macl,r3
	cmp/hi r0,r1
	add r3,r7
	bt loc_8c194386

loc_8c194396:
	cmp/eq r5,r6
	bf loc_8c19439e
	bra loc_8c1943a4

	add 0x04,r7

loc_8c19439E:
	mul.l r5,r6
	sts macl,r6
	add r6,r7

loc_8c1943A4:
	mov.l @(0x4,r4),r0
	cmp/eq 0x01,r0
	bf loc_8c1943ae
	bra loc_8c1943b0
	shll r7

loc_8c1943AE:
	shll2 r7

loc_8c1943B0:
	rts
	mov r7,r0

;==============================================
loc_8c1943B4:
	mov.l @(0x10,r4),r5
	mov.l @(0xC,r4),r6
	mov.l @(0x18,r4),r2
	shlr r6
	mov.l @(0x40,PC),r3
	shlr r5
	mul.l r5,r6
	tst r3,r2
	bt.s loc_8c194420
	sts macl,r7
	shlr r6
	shlr r5
	cmp/hs r5,r6
	bt.s loc_8c1943d6
	mov 0x01,r0
	bra loc_8c1943d8
	mov r6,r4

loc_8c1943D6:
	mov r5,r4

loc_8c1943D8:
	cmp/hi r0,r4
	bf loc_8c1943ec

loc_8c1943DC:
	mul.l r5,r6
	shlr r6
	shlr r5
	shlr r4
	sts macl,r3
	cmp/hi r0,r4
	add r3,r7
	bt loc_8c1943dc

loc_8c1943EC:
	cmp/eq r5,r6
	bf loc_8c1943f4
	bra loc_8c1943fa
	add 0x02,r7

loc_8c1943F4:
	mul.l r5,r6
	sts macl,r6
	add r6,r7

loc_8c1943FA:
	bra loc_8c19442e

	add 0x0A,r7


;==============================================
	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c194400:
	#data 0x80000000

;==============================================
	#repeat 8
	nop

	#align16_nop

;==============================================
loc_8c194420:
	mov.l @(0xC,r4),r0
	cmp/eq 0x08,r0
	bf loc_8c19442e
	mov.l @(0x10,r4),r0
	cmp/eq 0x08,r0
	bf loc_8c19442e
	add 0x10,r7

loc_8c19442E:
	mov.w @(0x6E,PC),r3
	add r3,r7
	rts
	mov r7,r0

;==============================================
loc_8c194436:
	mov.l @(0x6C,PC),r3
	mov.l r14,@-r15
	mov.l @(0x10,r4),r7
	mov.l @(0xC,r4),r6
	mov.l @(0x18,r4),r2
	mul.l r7,r6
	tst r3,r2
	sts macl,r5
	bt.s loc_8c1944c2
	mov 0x01,r14
	shlr r6
	shlr r7
	cmp/hs r7,r6
	bt loc_8c194456
	bra loc_8c194458
	mov r6,r0

loc_8c194456:
	mov r7,r0

loc_8c194458:
	cmp/hi r14,r0
	bf loc_8c19446c

loc_8c19445C:
	mul.l r7,r6
	shlr r6
	shlr r7
	shlr r0
	sts macl,r3
	cmp/hi r14,r0
	add r3,r5
	bt loc_8c19445c

loc_8c19446C:
	cmp/eq r7,r6
	bf loc_8c194474
	bra loc_8c19447a
	add 0x01,r5

loc_8c194474:
	mul.l r7,r6
	sts macl,r6
	add r6,r5

loc_8c19447A:
	mov.l @(0x8,r4),r3
	mov.l @(0x28,PC),r2
	cmp/eq r2,r3
	bf loc_8c1944c0
	bra loc_8c1944c2

	add 0x2B,r5

;==============================================
	#repeat 7
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1944a0:
	#data 0x0800
	#align4

loc_8c1944a4:
	#data 0x80000000
loc_8c1944a8:
	#data 0x28000000

;==============================================
	#repeat 4
	nop

	#align16_nop

;==============================================
loc_8c1944C0:
	add 0x0B,r5

loc_8c1944C2:
	mov.l @(0x8,r4),r3
	mov.l @(0xB8,PC),r2
	cmp/eq r2,r3
	bf loc_8c1944d6
	mov r5,r0
	cmp/eq 0x01,r0
	bf loc_8c1944d4
	bra loc_8c1944d6
	mov r14,r5

loc_8c1944D4:
	shlr r5

loc_8c1944D6:
	mov r5,r0
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1944DC:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r11
	mov.l @(0xC,r11),r13
	mov.l r13,@r15
	shlr r13
	mov.l @(0x10,r11),r14
	mov.l r14,@(0x4,r15)
	shlr r14
	mul.l r14,r13
	mov.l @(0x4,r15),r5
	sts macl,r12
	bsr loc_8c1941d2
	mov.l @r15,r4
	mov.l @(0x80,PC),r3
	mov r0,r4
	mov.l @(0x18,r11),r2
	mov r0,r5
	tst r3,r2
	bt.s loc_8c19454c
	shll2 r5
	shlr r13
	shlr r14
	cmp/hs r14,r13
	bt.s loc_8c19451c
	mov 0x01,r6
	bra loc_8c19451e
	mov r13,r4

loc_8c19451C:
	mov r14,r4

loc_8c19451E:
	cmp/hi r6,r4
	bf loc_8c194532

loc_8c194522:
	mul.l r14,r13
	shlr r13
	shlr r14
	shlr r4
	sts macl,r3
	cmp/hi r6,r4
	add r3,r12
	bt loc_8c194522

loc_8c194532:
	cmp/eq r14,r13
	bf loc_8c19453a
	bra loc_8c194540
	add 0x02,r12

loc_8c19453A:
	mul.l r14,r13
	sts macl,r13
	add r13,r12

loc_8c194540:
	mov.l @(0x44,PC),r0
	add 0x0A,r12
	mov.l @(r0,r5),r3
	add r3,r12
	bra loc_8c194552

	nop

loc_8c19454C:
	mov.l @(0x3C,PC),r0
	mov.l @(r0,r5),r2
	add r2,r12

loc_8c194552:
	mov r12,r0
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
	#repeat 9
	nop

	#align16_nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c194580:
	#data 0x28000000
loc_8c194584:
	#data 0x80000000
loc_8c194588:
	#data bank1c.loc_8c1c5B80
loc_8c19458C:
	#data bank1c.loc_8c1c5B64

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#align16

;==============================================
loc_8c1945A0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x94,PC),r14
	mov r4,r12
	shll2 r12
	mov.l r5,@r15
	mov r14,r0
	add 0x08,r0
	mov.l @r14,r3
	mov 0x00,r2
	mov.l @(0x4,r14),r13
	not r3,r3
	mov.l r2,@(0x4,r14)
	mov.l @(r0,r12),r0
	and r3,r13
	tst 0x01,r0
	bt loc_8c1945e6
	mov 0x10,r0
	mov.l @(0x78,PC),r3
	fmov @(r0,r14),fr4
	jsr @r3
	mov.l @r15,r4
	mov.l @(0x74,PC),r3
	jsr @r3
	mov.l @r15,r4
	mov r14,r3
	add 0x08,r3
	add r12,r3
	mov.l @r3,r1
	mov 0xFE,r2
	and r2,r1
	mov.l r1,@r3

loc_8c1945E6:
	mov 0x02,r3
	tst r13,r3
	bt loc_8c1945f4
	mov.l @(0x5C,PC),r3
	mov 0x20,r0
	jsr @r3
	fmov @(r0,r14),fr4

loc_8c1945F4:
	mov 0x04,r2
	tst r13,r2
	bt loc_8c194602
	mov.l @(0x54,PC),r2
	mov.l @(0x1C,r14),r5
	jsr @r2
	mov.l @(0x18,r14),r4

loc_8c194602:
	mov 0x08,r3
	tst r13,r3
	bt loc_8c19460e
	mov.l @(0x48,PC),r3
	jsr @r3
	mov.l @(0x14,r14),r4

loc_8c19460E:
	mov 0x10,r2
	tst r13,r2
	bt loc_8c19461a
	mov.l @(0x40,PC),r2
	jsr @r2
	mov.l @(0x24,r14),r4

loc_8c19461A:
	mov 0x20,r3
	tst r13,r3
	bt loc_8c194626
	mov.l @(0x38,PC),r3
	jsr @r3
	mov.l @(0x28,r14),r4

loc_8c194626:
	mov 0x40,r2
	tst r2,r13
	bt loc_8c194632
	mov.l @(0x30,PC),r1
	jsr @r1
	mov.l @(0x2C,r14),r4

loc_8c194632:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c194640:
	#data 0x8C344C0C
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#align16

;==============================================
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

;==============================================
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

;==============================================
loc_8c1946C4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.w @(0xA8,PC),r13
	mov.l r4,@(0xC,r15)
	mov 0x00,r4
	mov.l r5,@r15
	mov.l @(0xA8,PC),r5
	mov.l r6,@(0x4,r15)
	mov 0x08,r6
	mov.l r7,@(0x8,r15)

loc_8c1946DC:
	mul.l r13,r4
	sts macl,r3
	add r5,r3
	mov.w @r3,r2
	tst r2,r2
	bt loc_8c1946ee
	add 0x01,r4
	cmp/ge r6,r4
	bf loc_8c1946dc

loc_8c1946EE:
	mov r4,r0
	cmp/eq 0x08,r0
	bt loc_8c194718
	mul.l r13,r4
	mov.l @(0x8C,PC),r3
	mov r13,r6
	sts macl,r14
	add r5,r14
	mov 0x00,r5
	jsr @r3
	mov r14,r4
	mov.l @(0x80,PC),r3
	mov 0x01,r2
	jsr @r3
	mov.w r2,@r14
	mov r0,r2
	tst r2,r2
	bf.s loc_8c19471c
	mov.l r0,@(0x8,r14)
	bsr loc_8c194750
	mov r14,r4

loc_8c194718:
	bra loc_8c194746
	mov 0x00,r0

loc_8c19471C:
	mov.l @(0xC,r15),r2
	mov 0x40,r0
	mov.l r2,@(0x38,r14)
	mov.l @r15,r3
	mov.l r3,@(0x3C,r14)
	mov.l @(0x4,r15),r2
	mov.l r2,@(r0,r14)
	mov 0x44,r0
	mov.l @(0x8,r15),r3
	mov.l @(0x5C,PC),r2
	mov.l r3,@(r0,r14)
	add 0x44,r0
	mov.l r2,@(r0,r14)
	add 0x04,r0
	mov.l @(0x54,PC),r3
	mov.l r14,@(r0,r14)
	add 0x04,r0
	mov.l r3,@(r0,r14)
	add 0x04,r0
	mov.l r14,@(r0,r14)
	mov r14,r0

loc_8c194746:
	add 0x10,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c194750:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	tst r14,r14
	bt loc_8c19476e
	mov.l @(0x38,PC),r2
	jsr @r2
	mov.l @(0x8,r14),r4
	mov.l @(0x20,PC),r3
	mov 0x00,r5
	mov.w @(0x10,PC),r6
	jsr @r3
	mov r14,r4
	mov 0x00,r2
	mov.w r2,@r14

loc_8c19476E:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c194774:
	#data 0x0560
loc_8c194776:
	#data 0x009C
loc_8c194778:
	#data 0x00AC
	#align4

loc_8c19477C:
	#data bank1a.loc_8c1aA578
loc_8c194780:
	#data 0x8C344C3C
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

;==============================================
loc_8c194798:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov r14,r3
	add 0x10,r3
	mov r14,r2
	add 0x18,r2
	mov r6,r13
	mov r14,r7
	mov 0x01,r0
	mov r5,r12
	mov r13,r5
	mov.w r0,@(0x02,r14)
	add 0x0C,r7
	mov.l r3,@-r15
	mov r14,r3
	mov.l r2,@-r15
	mov r14,r2
	add 0x14,r3
	mov.l r3,@-r15
	add 0x0E,r2
	mov.l r2,@-r15
	mov r14,r3
	add 0x0F,r3
	mov r14,r2
	mov.l r3,@-r15
	add 0x0D,r2
	mov.l r2,@-r15
	mov.l @(loc_8c194960,pc),r3
	mov r15,r6
	add 0x18,r6
	jsr @r3
	mov r12,r4
	mov r0,r4
	cmp/pz r4
	bf/s loc_8c1947fa
	add 0x18,r15
	mov.l @(loc_8c194964,pc),r2
	mov r14,r6
	mov r13,r5
	add 0x1C,r6
	jsr @r2
	mov r12,r4
	mov r0,r4
	cmp/pz r4
	bt loc_8c1947fe

loc_8c1947fa:
	bra loc_8c19489a
	mov 0x00,r0

loc_8c1947fe:
	mov.w @(0x1C,r14),r0
	mov.l @(0x14,r14),r5
	mov.l @(loc_8c194968,pc),r3
	mov r0,r6
	jsr @r3
	mov.l @(0x08,r14),r4
	mov r14,r2
	mov r14,r3
	add 0x34,r2
	mov r14,r6
	add 0x30,r3
	mov.l r2,@-r15
	mov r14,r2
	mov.l r3,@-r15
	mov r14,r3
	add 0x2C,r2
	add 0x28,r3
	mov.l r2,@-r15
	mov r14,r2
	mov.l r3,@-r15
	mov.l @(loc_8c19496c,pc),r3
	mov r14,r7
	add 0x26,r2
	mov r13,r5
	add 0x20,r6
	mov.l r2,@-r15
	add 0x24,r7
	jsr @r3
	mov r12,r4
	add 0x14,r15
	mov 0x58,r1
	mov.b @(0x0E,r14),r0
	add r14,r1
	mov.l r0,@r1
	mov 0x5C,r1
	mov.b @(0x0F,r14),r0
	add r14,r1
	mov.l r0,@r1
	mov 0x60,r0
	mov.l @(0x10,r14),r3
	mov.l r3,@(r0,r14)
	mov 0x64,r0
	mov.l @(0x3C,r14),r2
	mov.l r2,@(r0,r14)
	mov 0x40,r0
	mov.l @(r0,r14),r3
	mov 0x68,r0
	mov.l r3,@(r0,r14)
	mov 0x44,r0
	mov.l @(r0,r14),r2
	mov 0x6C,r0
	mov r14,r3
	add 0x7C,r3
	mov.l r2,@(r0,r14)
	mov 0x48,r0
	mov.w @(r0,r14),r2
	mov 0x4A,r0
	mov.w r2,@r3
	mov r14,r2
	mov.w @(r0,r14),r3
	mov 0x7E,r0
	mov.w r3,@(r0,r14)
	add 0x02,r0
	mov r14,r4
	add 0x4C,r2
	mov.l r2,@(r0,r14)
	add 0x1C,r0
	mov 0x00,r3
	mov r3,r2
	mov.l r3,@(r0,r14)
	mov.l @(loc_8c194970,pc),r3
	add 0x0C,r0
	mov r2,r5
	mov.w r2,@(r0,r14)
	mov 0x04,r6
	jsr @r3
	add 0x4C,r4
	mov.w @r15,r0

loc_8c19489a:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
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
loc_8c194978:
	#data 0x00008000
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


;==============================================
loc_8c19499C:
	mov.w @(loc_8c194ACC,pc),r0 ; r0 set to 0x88
	mov.l r5,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x8C
	rts
	mov.l r6,@(r0,r4)

;==============================================
;unused
loc_8c1949a6:
	mov.w @(0x124,PC),r0
	mov.l r5,@(r0,r4)
	add 0x04,r0
	rts
	mov.l r6,@(r0,r4)

;==============================================
loc_8c1949B0:
	rts
	mov.l @(0x3C,r4),r0

;==============================================
loc_8c1949B4:
	mov.w @(loc_8c194AD0,pc),r0 ; r0 set to 0xA8
	rts
	mov.w @(r0,r4),r0

;==============================================
loc_8c1949BA:
	rts
	mov.l @(0x14,r4),r0

;==============================================
loc_8c1949BE:
	rts
	mov.b @(0x0E,r4),r0

;==============================================
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

;==============================================
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

;==============================================
loc_8c1949F8:
	mov 0x10,r0 ; r0 set to 0x10
	rts
	nop

;==============================================
loc_8c1949FE:
	rts
	mov.l @(0x10,r4),r0

;==============================================
loc_8c194A02:
	rts
	mov.b @(0x0F,r4),r0

;==============================================
loc_8c194A06:
	rts
	mov.l @(0x18,r4),r0

;==============================================
loc_8c194A0A:
	rts
	mov.w @(0x1C,r4),r0

;==============================================
loc_8c194A0E:
	rts
	mov.l @(0x20,r4),r0

;==============================================
loc_8c194A12:
	mov 0x24,r0 ; r0 set to 0x24
	rts
	mov.w @(r0,r4),r0

;==============================================
loc_8c194A18:
	rts
	mov.l @(0x28,r4),r0
;==============================================
loc_8c194A1C:
	rts
	mov.l @(0x2C,r4),r0
;==============================================

loc_8c194A20:
	rts
	mov.l @(0x30,r4),r0
;==============================================

loc_8c194A24:
	rts
	mov.l @(0x34,r4),r0
;==============================================

loc_8c194A28:
	rts
	mov.l @(0x04,r4),r0
;==============================================

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

loc_8c194a46:
	mov 0x50,r0
	mov.l r5,@(r0,r4)
	mov.b @(0x0D,r4),r0
	cmp/pz r0
	bt loc_8c194a52
	add 0x07,r0

loc_8c194a52:
	shar r0
	mov.l @(loc_8c194adc,pc),r2
	shar r0
	shar r0
	mov r0,r3
	mov.b @(0x0E,r4),r0
	mul.l r0,r3
	sts macl,r0
	jsr @r2
	mov r6,r1

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

;==============================================
loc_8c194A7E:
	mov.l @(0x4,r4),r3
	tst r3,r3
	bf loc_8c194a88
	mov 0x01,r3
	mov.l r3,@(0x4,r4)

loc_8c194A88:
	rts
	nop

;==============================================
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

;==============================================
loc_8c194AA6:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x4,r14),r0
	cmp/eq 0x03,r0
	bf loc_8c194ac0
	mov.l @(0x30,PC),r2
	jsr @r2
	mov.l @(0x8,r14),r4
	mov.w @(0x1A,PC),r0
	mov 0x00,r4
	mov.l r4,@(r0,r14)
	mov.l r4,@(0x4,r14)

loc_8c194AC0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c194AC6:
	mov.w @(loc_8c194AD8,pc),r0 ; r0 set to 0xA4
	rts
	mov.l @(r0,r4),r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c194ACC:
	#data 0x0088
loc_8c194ACe:
	#data 0x0090
loc_8c194AD0:
	#data 0x00A8
loc_8c194AD2:
	#data 0x00AA
loc_8c194AD4:
	#data 0x0084
loc_8c194Ad6:
	#data 0x009C
loc_8c194AD8:
	#data 0x00A4
	#align4

loc_8c194ADC:
	#data bank12.loc_8c129128
loc_8c194AE0:
	#data bank1a.loc_8c1aA67C
loc_8c194AE4:
	#data bank1a.loc_8c1aA692

;==============================================
loc_8c194AE8:
	mov.w @(loc_8c194C24,pc),r0 ; r0 set to 0xA0
	rts
	mov.l @(r0,r4),r0

;==============================================
loc_8c194Aee:
	rts
	mov.l @(0x8,r4),r0

;==============================================
loc_8c194AF2:
	mov r4,r6
	mov.l r14,@-r15
	add 0x50,r6
	sts.l pr,@-r15
	mov 0x50,r0
	mov.l r5,@-r15
	mov.l @(0x20,r6),r3
	mov.l @(0x14,r6),r7
	shll r3
	mov.l @r15,r6
	add r3,r7
	mov.l @(0x11C,PC),r3
	mov.l @(r0,r4),r5
	mov.l @(0x8,r4),r14
	jsr @r3
	mov r14,r4
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x110,PC),r2
	jmp @r2
	mov.l @r15+,r14

loc_8c194B1E:
	mov.l r14,@-r15
	mov r4,r6
	sts.l pr,@-r15
	mov 0x50,r0
	add 0x50,r6
	mov.l r5,@-r15
	mov.l @(0x20,r6),r3
	mov.l @(r0,r4),r5
	mov.l @(0x8,r4),r14
	shll r3
	mov.l @(0x1C,r6),r4
	mov.l @(0x14,r6),r7
	shll r4
	add r3,r7
	mov.l @(0xF4,PC),r3
	add r7,r4
	mov.l r4,@-r15
	mov.l @(0x4,r15),r6
	shll r6
	jsr @r3
	mov r14,r4
	mov r14,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(0xDC,PC),r2
	jmp @r2
	mov.l @r15+,r14

loc_8c194B54:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r5
	add 0x50,r5
	mov.l @(0xC8,PC),r3
	mov.l @(0x4,r5),r1
	jsr @r3
	mov.l @(0x8,r5),r0
	mov.l @(0x28,r5),r10
	mov r0,r14
	mov.l @(0x10,r5),r6
	mov r10,r1
	mov.l @(0xB8,PC),r3
	add r6,r1
	mov.l @(0x20,r5),r11
	add 0xFF,r1
	mov.l @(0x24,r5),r13
	mov.l @(0x18,r5),r7
	mov.l r1,@r15
	jsr @r3
	mov r6,r0
	mov.l @(0xAC,PC),r2
	mov r0,r12
	mov.l @r15,r1
	jsr @r2
	mov r6,r0
	sub r11,r7
	mov r6,r9
	mov r7,r1
	add r6,r1
	mov.l @(0x94,PC),r3
	sub r0,r9
	add 0xFF,r9
	add 0xFF,r1
	jsr @r3
	mov r6,r0
	mov r0,r7
	cmp/ge r7,r12
	mul.l r6,r7
	sts macl,r2
	bt.s loc_8c194bc0
	mov.l r2,@r15
	mov.l @(0x18,r5),r1
	sub r9,r2
	add r11,r2
	cmp/ge r1,r2
	bt loc_8c194bc0

	add 0x01,r7

loc_8c194BC0:
	cmp/ge r13,r10
	bt loc_8c194bc6
	add r9,r13

loc_8c194BC6:
	mov.l @(0x6C,PC),r3
	mov r13,r1
	jsr @r3
	mov r6,r0
	mov r0,r6
	cmp/gt r6,r14
	bf loc_8c194bd6
	mov r6,r14

loc_8c194BD6:
	cmp/gt r12,r14
	bf loc_8c194bdc
	mov r12,r14

loc_8c194BDC:
	cmp/gt r7,r14
	bf.s loc_8c194be4
	mov.l @(0x8,r5),r0
	mov r7,r14

loc_8c194BE4:
	cmp/eq 0x02,r0
	bf loc_8c194bfc
	mov r14,r5
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c194b1e
	mov.l @r15+,r14

loc_8c194BFC:
	mov r14,r5
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c194af2
	mov.l @r15+,r14

loc_8c194C10:
	cmp/pl r6
	bf loc_8c194c20

loc_8c194C14:
	mov.w @r5+,r3
	add 0xFF,r6
	cmp/pl r6
	mov.w r3,@r4
	bt.s loc_8c194c14
	add 0x02,r4

loc_8c194C20:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c194C24:
	#data 0x00A0
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

;==============================================
loc_8c194C3C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r5,@(0x4,r15)
	mov r4,r14
	mov.l r6,@r15
	mov r7,r6
	mov.l r7,@(0x8,r15)
	mov.l @(0x4,r15),r5
	shll r5
	add r14,r5
	bsr loc_8c194c10
	mov r14,r4
	mov.l @(0x4,r15),r5
	mov.l @r15,r3
	mov.l @(0x8,r15),r6
	mov r3,r4
	add r3,r5
	shll r5
	shll r4
	add r14,r4
	add r14,r5
	add 0x0C,r15
	lds.l @r15+,pr
	bra loc_8c194c10
	mov.l @r15+,r14

loc_8c194C70:
	add 0xF4,r15
	mov.l r4,@r15
	mov r7,r6
	mov.l r5,@(0x4,r15)
	mov.l r7,@(0x8,r15)
	mov.l @(0x4,r15),r5
	mov.l @r15,r3
	shll r5
	add r3,r5
	mov r3,r4
	bra loc_8c194c10
	add 0x0C,r15

loc_8c194C88:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	add 0x50,r14
	mov.l @(0x10,r14),r11
	mov r4,r12
	mov 0x40,r0
	mov.l @(0xC,r14),r3
	mov r11,r5
	mov.l r3,@(0x8,r15)
	mov.l @(0x28,r14),r4
	mov.l @(r0,r12),r10
	mov 0x44,r0
	add r4,r5
	mov.l @(0xAC,PC),r3
	add 0xFF,r5
	mov.l @(0x20,r14),r13
	mov.l @(0x14,r14),r9
	mov r5,r1
	mov.l @(r0,r12),r8
	jsr @r3
	mov r11,r0
	mov.l @(0xA0,PC),r3
	mov r5,r1
	mov.l r0,@r15
	jsr @r3
	mov r11,r0
	mov r11,r2
	sub r0,r2
	mov.l @(0x94,PC),r3
	add 0xFF,r2
	mov.l r2,@(0x4,r15)
	jsr @r3
	mov.l @(0x8,r12),r4
	mov r0,r5
	mov.l @(0x80,PC),r3
	mul.l r5,r11
	sts macl,r1
	jsr @r3
	mov.l @(0x8,r14),r0
	mov.l @r15,r2
	mov r0,r4
	cmp/gt r5,r2
	bt loc_8c194cf2
	mov.l @(0x4,r15),r1
	sub r1,r4

loc_8c194CF2:
	mov.w @(0x64,PC),r0
	add r4,r13
	cmp/ge r10,r13
	mov.l r4,@(r0,r12)
	mov.l @(0x8,r15),r3
	mov.w @(0x5C,PC),r0
	mul.l r5,r3
	sts macl,r5
	bf.s loc_8c194d46
	mov.l r5,@(r0,r12)
	mov.l @(0x8,r14),r0
	cmp/eq 0x02,r0
	bf.s loc_8c194d2a
	sub r10,r13
	mov r10,r5
	mov r9,r4
	mov r13,r7
	mov r8,r6
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c194c3c
	mov.l @r15+,r14

loc_8c194D2A:
	mov r10,r5
	mov r9,r4
	mov r13,r7
	mov r8,r6
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c194c70
	mov.l @r15+,r14

loc_8c194D46:
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c194D5a:
	#data 0x00A0
loc_8c194D5c:
	#data 0x00A4
	#align4

loc_8c194D60:
	#data bank12.loc_8c129128
loc_8c194D64:
	#data bank12.loc_8c1292D4
loc_8c194D68:
	#data bank1a.loc_8c1aA6A0

;==============================================
loc_8c194d6c:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	mov.l @(0x04,r14),r0
	cmp/eq 0x01,r0
	bf/s loc_8c194da6
	add 0x50,r13
	mov.l @(loc_8c194e60,pc),r2
	jsr @r2
	mov.l @(0x08,r14),r4
	tst r0,r0
	bf loc_8c194da6
	mov.w @(loc_8C194E54,pc),r0
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
	bsr loc_8c194b54
	mov r14,r4
	mov 0x02,r2
	mov.l r2,@(0x04,r14)

loc_8c194da6:
	mov.l @(0x04,r14),r0
	cmp/eq 0x02,r0
	bf loc_8c194ddc
	mov.l @(loc_8c194e64,pc),r2
	jsr @r2
	mov.l @(0x08,r14),r4
	mov.l @(loc_8c194e60,pc),r3
	jsr @r3
	mov.l @(0x08,r14),r4
	cmp/eq 0x03,r0
	bf loc_8c194ddc
	bsr loc_8c194c88
	mov r14,r4
	mov.l @(loc_8c194e68,pc),r2
	jsr @r2
	mov.l @(0x08,r14),r4
	mov.w @(loc_8C194E56,pc),r0
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

loc_8c194ddc:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

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

;==============================================
;unused?
loc_8c194E26:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.w @(0x2C,PC),r12
	mov.l @(0x4C,PC),r4
	sts.l pr,@-r15
	mov.w @(0x24,PC),r13
	add r4,r12
	mov r4,r14

loc_8c194e38:
	mov r14,r4
	mov.w @r4,r0
	cmp/eq 0x01,r0
	bf loc_8c194e44
	bsr loc_8c194de4
	nop

loc_8c194e44:
	add r13,r14
	cmp/hs r12,r14
	bf loc_8c194e38
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c194e54:
	#data 0x0088
loc_8c194e56:
	#data 0x0090
loc_8c194E58:
	#data 0x00A8
loc_8c194E5a:
	#data 0x00AC
loc_8c194E5c:
	#data 0x0560
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
loc_8c194E7c:
	#data 0x8C344C3C

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c194E9A:
	#data 0xFF0F

;==============================================
loc_8c194E9C:
	mova @(loc_8c194EAC,pc),r0  ; r0 init to 0x8C194EAC
	mov.l @(loc_8c194EA8,pc),r1 ; r1 set to 0xA0000000
	or r0,r1 ; r1 ??
	jmp @r1
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4_nop

loc_8c194EA8:
	#data 0xA0000000

;==============================================
loc_8c194EAC:
	mov.l @(0x6C,PC),r2
	mov.l @(0x68,PC),r5
	mov.l @r2,r0
	shlr2 r0
	shlr2 r0
	shlr r0
	and 0x01,r0
	cmp/eq 0x01,r0
	bf.s loc_8c194ee4
	mov 0x00,r4
	mov.w @(0x48,PC),r7
	mov r4,r6

loc_8c194ec4:
	mov r6,r2
	add 0x20,r6
	cmp/hs r7,r6
	or r5,r2
	bf.s loc_8c194ec4
	mov.l r4,@r2
	mov.w @(0x3C,PC),r6
	mov.w @(0x38,PC),r7

loc_8c194ed4:
	mov r6,r2
	add 0x20,r6
	cmp/hs r7,r6
	or r5,r2
	bf.s loc_8c194ed4
	mov.l r4,@r2
	bra loc_8c194ef4
	nop

loc_8c194ee4:
	mov.w @(0x2A,PC),r7
	mov r4,r6

loc_8c194ee8:
	mov r6,r3
	add 0x20,r6
	cmp/hs r7,r6
	or r5,r3
	bf.s loc_8c194ee8
	mov.l r4,@r3

loc_8c194ef4:
	mov.w @r15,r0
	stc sr,r3
	extu.w r0,r0
	mov.w @(0x16,PC),r2
	and 0x0F,r0
	shll2 r0
	and r2,r3
	shll2 r0
	or r3,r0
	ldc r0,sr
	bra loc_8c194f20
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c194f0c:
	#data 0x1000
loc_8c194f0e:
	#data 0x3000
loc_8c194f10:
	#data 0x2000
loc_8c194f12:
	#data 0x4000
loc_8c194f14:
	#data 0xFF0F
	#align4

loc_8c194f18:
	#data 0xF4000000
loc_8c194f1c:
	#data 0xFF00001C

;==============================================
loc_8c194f20:
	nop
	#align16_nop

;==============================================
loc_8c194f30:
	rts
	add 0x04,r15

;==============================================
loc_8c194f34:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x58,PC),r3
	jsr @r3
	mov.l r4,@r15
	mov.w @(0x4E,PC),r3
	mov.l @r15,r1
	mov.w @(0x4C,PC),r2
	and r3,r1
	mov.l @(0x50,PC),r4
	or r2,r1
	mov.l r1,@r4
	mov 0xF7,r1
	mov.l @r4,r0
	and r1,r0
	or 0x08,r0
	mov.l r0,@r4
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c194F90:
	#data 0xF7FF
loc_8c194F92:
	#data 0x0800
	#align4

loc_8c194F94:
	#data loc_8c194E80
loc_8c194F98:
	#data 0xFF00001C
loc_8c194F9C:
	#data loc_8c195180
loc_8c194FA0:
	#data 0x1FFFFFE0
loc_8c194FA4:
	#data 0x00030000
loc_8c194FA8:
	#data loc_8c194FC2

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c194FDA:
	#data 0xFF0F
	#align4

loc_8c194FDC:
	#data loc_8c195180

;==============================================
loc_8c194FE0:
	mova @(loc_8c194FF0,pc),r0  ; r0 init to 0x8C194FF0
	mov.l @(loc_8c194FEC,pc),r1 ; r1 set to 0xA0000000
	or r0,r1 ; r1 ??
	jmp @r1
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4_nop

loc_8c194FEC:
	#data 0xA0000000

;==============================================
loc_8c194FF0:
	mov.l @(0x2C,PC),r2
	add r13,r12
	mov 0xF9,r1
	mov.l @(0x24,PC),r3
	mov.l @r2,r4
	mov 0x01,r5
	add 0xFF,r12
	mov r4,r13
	shlr2 r13
	shld r1,r4
	shlr2 r13
	and r5,r4
	shlr r13
	mov.l r4,@(0x4,r15)
	and r3,r12
	mov r14,r4
	and r5,r13
	mov r12,r5
	mov r13,r6
	bra loc_8c195024
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c19501c:
	#data 0x1FFFFFE0
loc_8c195020:
	#data 0xFF00001C

;==============================================
loc_8c195024:
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(0x10,PC),r0
	mov.l @(0x10,PC),r8
	mov.l @(0x14,PC),r9
	mov.l @(0x14,PC),r10
	mov.l @(0x18,PC),r2
	mov.l @(0x18,PC),r3
	bra loc_8c195072
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align16

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c195040:
	#data 0xf4000000
loc_8c195044:
	#data 0x1ffffc00
loc_8c195048:
	#data 0x00001fff
loc_8c19504c:
	#data 0x00002000
loc_8c195050:
	#data 0x00000fe0

;==============================================
loc_8c195054:
	mov r0,r1
	or r8,r1
	mov.l @r1,r1
	and r9,r1
	or r0,r1
	cmp/hi r1,r4
	bt loc_8c195068
	cmp/hi r5,r1
	bt loc_8c195068
	ocbi @r1

loc_8c195068:
	tst r6,r6
	bt loc_8c195070
	cmp/eq r0,r3
	bt loc_8c195076

loc_8c195070:
	add 0x20,r0

loc_8c195072:
	cmp/hi r0,r2
	bt loc_8c195054

loc_8c195076:
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @(0x4,r15),r3
	tst r3,r3
	bf loc_8c195088
	mov.l @(0x10,PC),r3
	jmp @r3
	nop

loc_8c195088:
	mov r14,r4
	mov r12,r5
	mov r13,r6
	bra loc_8c195098
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c195094:
	#data loc_8c195102

;==============================================
loc_8c195098:
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(0xC,PC),r0
	mov.l @(0x10,PC),r8
	mov.l @(0x10,PC),r9
	mov.l @(0x14,PC),r10
	mov.l @(0x14,PC),r2
	mov.l @(0x18,PC),r3
	bra loc_8c1950ee
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1950b0:
	#data 0x00002000
loc_8c1950b4:
	#data 0xF4000000
loc_8c1950b8:
	#data 0x1FFFFC00
loc_8c1950bc:
	#data 0x00001FFF
loc_8c1950c0:
	#data 0x00004000
loc_8c1950c4:
	#data 0x00002FE0

;==============================================
loc_8c1950c8:
	mov r0,r1
	or r8,r1
	mov.l @r1,r1
	and r9,r1
	or r0,r1
	mov r0,r11
	and r10,r11
	or r11,r1

loc_8c1950d8:
	or r12,r1
	cmp/hi r1,r4
	bt loc_8c1950e4
	cmp/hi r5,r1
	bt loc_8c1950e4
	ocbi @r1

loc_8c1950e4:
	tst r6,r6
	bt loc_8c1950ec
	cmp/eq r0,r3
	bt loc_8c1950f2

loc_8c1950ec:
	add 0x20,r0

loc_8c1950ee:
	cmp/hi r0,r2
	bt loc_8c1950c8

loc_8c1950f2:
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	nop
	mov.l @(0xC,PC),r2
	jmp @r2
	nop

;==============================================
loc_8c195102:
	mov r14,r4
	mov r12,r5
	mov r13,r6
	bra loc_8c195110
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c19510C:
	#data loc_8c19516C

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c195128:
	#data 0x00002000
loc_8c19512C:
	#data 0xF4000000
loc_8c195130:
	#data 0x1FFFFC00
loc_8c195134:
	#data 0x00001FFF
loc_8c195138:
	#data 0x00004000
loc_8c19513C:
	#data 0x00002FE0

;==============================================
loc_8c195140:
	mov r0,r1
	or r8,r1
	mov.l @r1,r1
	and r9,r1
	or r0,r1
	cmp/hi r1,r4
	bt loc_8c195154
	cmp/hi r5,r1
	bt loc_8c195154
	ocbi @r1

loc_8c195154:
	tst r6,r6
	bt loc_8c19515c
	cmp/eq r0,r3
	bt loc_8c195162

loc_8c19515C:
	add 0x20,r0

loc_8c19515e:
	cmp/hi r0,r2
	bt loc_8c195140

loc_8c195162:
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	nop

loc_8c19516c:
	mov.w @r15,r0
	stc sr, r3
	extu.w r0,r0
	mov.w @(loc_8C19518A,pc),r2
	and 0x0F,r0
	shll2 r0
	and r2,r3
	shll2 r0
	or r3,r0
	ldc r0, sr

loc_8c195180:
	add 0x08,r15
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19518a:
	#data 0xFF0F

;==============================================
loc_8c19518C:
	rts
	nop

;==============================================
loc_8c195190:
	rts
	nop

;==============================================
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

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1951C2:
	#data 0xFF0F

;==============================================
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

loc_8c1951fa:
	mov r15,r5
	add 0x08,r5
	add 0x04,r5

loc_8c195200:
	mov.l @(loc_8c195234,pc),r3
	mov r5,r6
	mov.l @(loc_8c19522c,pc),r4
	jsr @r3
	mov.l @(0x08,r15),r5
	mov.l @(loc_8c195224,pc),r2
	mov.l @r2,r14
	tst r14,r14
	bt loc_8c19521a
	mov.l @(loc_8c195228,pc),r1
	mov.l @(loc_8c19522c,pc),r5
	jsr @r14
	mov.l @r1,r4

loc_8c19521a:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c195220:
	#data 0x0100
	#align4

loc_8c195224:
	#data bank1c.loc_8c1c98b8

loc_8c195228:
	#data bank1c.loc_8c1c98bc
loc_8c19522c:
	#data 0x8C34519C
loc_8c195230:
	#data bank12.loc_8C129728
loc_8c195234:
	#data bank12.loc_8c129804

;==============================================
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

;==============================================
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

;==============================================
loc_8c195280:
	mov.l r12,@-r15
	add 0xFC,r15
	exts.w r4,r4
	cmp/pz r4
	bt loc_8c195292
	mov 0x00,r0
	add 0x04,r15
	rts
	mov.l @r15+,r12

loc_8c195292:
	mov.l @(0xBC,PC),r4
	mov 0x00,r5
	mov.w @(0xAC,PC),r0
	mov r4,r1
	add 0x40,r1
	mov.l @(0xAC,PC),r7
	cmp/hs r1,r4
	mov.l r4,@r15
	mov r4,r6
	bt.s loc_8c1952c0
	mov 0x01,r12

loc_8c1952A8:
	mov.l @r4,r2
	tst r2,r2
	bf loc_8c1952b6
	mov r6,r5
	mov.l r7,@(0x4,r5)
	bra loc_8c1952c0
	mov.l r12,@r5

loc_8c1952B6:
	add 0x08,r4
	cmp/hs r1,r4
	add r0,r7
	bf.s loc_8c1952a8
	add 0x08,r6

loc_8c1952C0:
	mov r5,r0
	add 0x04,r15
	rts
	mov.l @r15+,r12

;==============================================
loc_8c1952C8:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	tst r14,r14
	bt loc_8c1952ea
	mov.l @(0x74,PC),r2
	mov 0x00,r5
	mov.w @(0x6C,PC),r6
	jsr @r2
	mov.l @(0x4,r14),r4
	mov.l @(0x68,PC),r3
	mov 0x00,r5
	mov 0x08,r6
	jsr @r3
	mov r14,r4
	mov 0x00,r2
	mov.l r2,@r14

loc_8c1952EA:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1952F0:
	mov.l @(0x60,PC),r7
	mov.w @(0x4E,PC),r3
	mov r7,r5
	mov r7,r4
	add r3,r7
	cmp/hs r7,r4
	bt.s loc_8c195312
	mov 0x00,r6

loc_8c195300:
	mov.b @(0x4,r4),r0
	tst r0,r0
	bf loc_8c19530a
	bra loc_8c195312

	mov r5,r6

loc_8c19530A:
	add 0x68,r4
	cmp/hs r7,r4
	bf.s loc_8c195300
	add 0x68,r5


loc_8c195312:
	rts
	mov r6,r0

;==============================================
loc_8c195316:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x01,r3
	mov.l @(0x2C,PC),r12
	mov r4,r10
	cmp/ge r3,r10
	bf loc_8c195338
	mov 0x02,r1
	cmp/gt r1,r10
	bf loc_8c195360

loc_8c195338:
	mov.l @(0x20,PC),r3

loc_8c19533A:
	jsr @r12
	mov.l r3,@-r15
	bra loc_8c19546a
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c195342:
	#data 0x0800
loc_8c195344:
	#data 0x0340
loc_8c195346:
	#data 0x0100
	#align4

loc_8c195348:
	#data bank12.loc_8c129728
loc_8c19534C:
	#data 0x8C3455DC
loc_8c195350:
	#data 0x8C345DDC
loc_8c195354:
	#data 0x8C34529C
loc_8c195358:
	#data loc_8c1951E2
loc_8c19535C:
	#data bank1c.loc_8c1c5D24

;==============================================
loc_8c195360:
	bsr loc_8c1952f0
	nop
	mov r0,r14
	tst r14,r14
	bf loc_8c195370
	mov.l @(0x21C,PC),r3
	bra loc_8c19533a
	nop

loc_8c195370:
	mov.l @(0x218,PC),r3
	mov 0x00,r13
	mov.l r3,@r14
	bra loc_8c1953cc
	mov r13,r11

loc_8c19537A:
	mov.l @(0x214,PC),r3
	jsr @r3
	nop
	mov r0,r4
	tst r4,r4
	bf loc_8c1953be
	mov.l @(0x20C,PC),r3
	jsr @r12
	mov.l r3,@-r15
	add 0x04,r15
	mov r14,r4
	add 0x2C,r4
	cmp/pl r11
	mov r4,r14
	mov.l r13,@r15
	bf.s loc_8c19546a
	mov r4,r10

loc_8c19539C:
	jsr @r9
	mov.l @r10,r4
	cmp/pz r0
	bt loc_8c1953aa
	jsr @r12
	mov.l r8,@-r15
	add 0x04,r15

loc_8c1953AA:
	mov.l r13,@r14
	add 0x04,r14
	mov.l @r15,r3
	add 0x01,r3
	cmp/ge r11,r3
	mov.l r3,@r15
	bf.s loc_8c19539c
	add 0x04,r10
	bra loc_8c19546a
	nop

loc_8c1953BE:
	mov r14,r3
	mov r11,r2
	add 0x2C,r3
	shll2 r2
	add r3,r2
	add 0x01,r11
	mov.l r4,@r2

loc_8c1953CC:
	mov.l @(0x1CC,PC),r9
	cmp/ge r10,r11
	mov.l @(0x1C4,PC),r8
	bf loc_8c19537a
	bra loc_8c195428
	mov r13,r11

loc_8c1953D8:
	mov.l @(0x1B4,PC),r2
	jsr @r2
	nop
	mov r0,r4
	tst r4,r4
	bf loc_8c19541a
	mov.l @(0x1AC,PC),r2
	jsr @r12
	mov.l r2,@-r15
	add 0x04,r15
	mov r14,r10
	cmp/pl r11
	add 0x2C,r10
	mov.l r13,@r15
	bf.s loc_8c19546a
	add 0x34,r14

loc_8c1953F8:
	jsr @r9
	mov.l @r14,r4
	cmp/pz r0
	bt loc_8c195406
	jsr @r12
	mov.l r8,@-r15
	add 0x04,r15

loc_8c195406:
	mov.l r13,@r10
	add 0x04,r10
	mov.l @r15,r3
	add 0x01,r3
	cmp/ge r11,r3
	mov.l r3,@r15
	bf.s loc_8c1953f8
	add 0x04,r14
	bra loc_8c19546a
	nop

loc_8c19541A:
	mov r14,r2
	mov r11,r3
	add 0x34,r2
	shll2 r3
	add r2,r3
	add 0x01,r11
	mov.l r4,@r3

loc_8c195428:
	cmp/ge r10,r11
	bf loc_8c1953d8
	mov.l @(0x170,PC),r2
	jsr @r2
	mov r10,r4
	mov.w r0,@(0x6,r14)
	mov.w @(0x6,r14),r0
	mov r0,r4
	cmp/pz r4
	bf loc_8c195442
	mov 0x07,r2
	cmp/gt r2,r4
	bf loc_8c19544c

loc_8c195442:
	mov.l @(0x160,PC),r1
	jsr @r12
	mov.l r1,@-r15
	bra loc_8c19546a
	add 0x04,r15

loc_8c19544C:
	mov.w @(0x6,r14),r0
	bsr loc_8c195280
	mov r0,r4
	mov r0,r2
	tst r2,r2
	bf.s loc_8c19546e
	mov.l r0,@(0x1C,r14)
	mov.l @(0x14C,PC),r3
	jsr @r12
	mov.l r3,@-r15
	add 0x04,r15
	mov.l @(0x148,PC),r3
	mov.w @(0x6,r14),r0
	jsr @r3
	mov r0,r4

loc_8c19546A:
	bra loc_8c1954d4
	mov 0x00,r0

loc_8c19546E:
	mov.l @(0x140,PC),r3
	mov.l @(0x1C,r14),r4
	jsr @r3
	mov.l @(0x4,r4),r4
	mov 0x60,r0
	mov r15,r6
	mov.b r13,@(r0,r14)
	mov r13,r0
	mov.b r0,@(0x5,r14)
	mov 0x00,r5
	mov.l r0,@(0x18,r14)
	add 0x04,r6
	mov.l @(0x12C,PC),r3
	mov.l r10,@(0xC,r14)
	mov.l r10,@(0x8,r14)
	mov.w @(0x6,r14),r0
	jsr @r3
	mov r0,r4
	mov.l r0,@(0x20,r14)
	mov r15,r6
	mov.w @(0x6,r14),r0
	add 0x04,r6
	mov.l @(0x118,PC),r3
	mov 0x01,r5
	jsr @r3
	mov r0,r4
	mov.l r0,@(0x24,r14)
	mov 0x48,r0
	mov 0xFF,r4
	mov.l @(0x4,r15),r2
	mov 0x00,r3
	mov.l r2,@(0x28,r14)
	mov r3,r2
	mov.l r4,@(r0,r14)
	mov 0x4C,r0
	mov.l r13,@(r0,r14)
	mov 0x50,r0
	mov.l r13,@(r0,r14)
	mov 0x54,r0
	mov.l r13,@(r0,r14)
	mov 0x58,r0
	mov.w r3,@(r0,r14)
	mov 0x5A,r0
	mov.w r2,@(r0,r14)
	mov 0x61,r0
	mov.b r4,@(r0,r14)
	mov 0x62,r0
	mov.w r4,@(r0,r14)
	mov 0x01,r0
	mov.b r0,@(0x4,r14)
	mov r14,r0

loc_8c1954D4:
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
loc_8c1954E8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	tst r14,r14
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	bt loc_8c195578
	mov.l @(0x18,r14),r2
	tst r2,r2
	bt loc_8c19550a
	mov.l @(0xB4,PC),r3
	mov.w @(0x6,r14),r0
	jsr @r3
	mov r0,r4

loc_8c19550A:
	mov.l @(0x90,PC),r11
	mov 0x00,r9
	mov.l @(0xB0,PC),r12
	mov.l @(0xA8,PC),r10
	bra loc_8c195530
	mov r9,r13

loc_8c195516:
	mov r14,r3
	mov r13,r4
	add 0x2C,r3
	shll2 r4
	add r3,r4
	jsr @r11
	mov.l @r4,r4
	cmp/pz r0
	bt loc_8c19552e
	jsr @r10
	mov.l r12,@-r15
	add 0x04,r15

loc_8c19552E:
	add 0x01,r13

loc_8c195530:
	mov.l @(0x8,r14),r3
	cmp/ge r3,r13
	bf loc_8c195516
	bra loc_8c195554
	mov r9,r13

loc_8c19553A:
	mov r14,r3
	mov r13,r4
	add 0x34,r3
	shll2 r4
	add r3,r4
	jsr @r11
	mov.l @r4,r4
	cmp/pz r0
	bt loc_8c195552
	jsr @r10
	mov.l r12,@-r15
	add 0x04,r15

loc_8c195552:
	add 0x01,r13

loc_8c195554:
	mov.l @(0x8,r14),r3
	cmp/ge r3,r13
	bf loc_8c19553a
	mov.l @(0x50,PC),r3
	mov.w @(0x6,r14),r0
	jsr @r3
	mov r0,r4
	bsr loc_8c1952c8
	mov.l @(0x1C,r14),r4
	mov.l @(0x5C,PC),r3
	mov 0x00,r5
	mov 0x68,r6
	mov.l r9,@(0x8,r14)
	mov.l r9,@(0xC,r14)
	jsr @r3
	mov r14,r4
	mov r9,r0
	mov.b r0,@(0x4,r14)

loc_8c195578:
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
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

;==============================================
loc_8c1955C8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf.s loc_8c195644
	mov r4,r13
	mov.l @(0x108,PC),r3
	mov.l @(0x1C,r14),r4
	jsr @r3
	mov.l @(0x4,r4),r4
	mov.l @(0x14,r14),r5
	bsr loc_8c195704
	mov r13,r4
	mov.l @(0x10,r14),r5
	bsr loc_8c19576c
	mov r13,r4
	mov.l @(0xC,r14),r5
	bsr loc_8c1956ba
	mov r13,r4
	mov.l @(0x3C,r14),r5
	bsr loc_8c1957a0
	mov r13,r4
	mov r14,r6
	add 0x40,r6
	mov.l @r6,r6
	mov 0x00,r5
	bsr loc_8c1958a4
	mov r13,r4
	mov 0x44,r0
	mov.l @(r0,r14),r6
	mov 0x01,r5
	bsr loc_8c1958a4
	mov r13,r4
	mov 0x4C,r0
	mov.l @(r0,r14),r7
	mov 0x48,r0
	mov.l @(r0,r14),r6
	mov 0x00,r5
	bsr loc_8c195b9c
	mov r13,r4
	mov 0x54,r0
	mov.l @(r0,r14),r7
	mov 0x50,r0
	mov.l @(r0,r14),r6
	mov 0x01,r5
	bsr loc_8c195b9c
	mov r13,r4
	mov 0x5A,r0
	mov.w @(r0,r14),r7
	mov 0x58,r0
	mov.w @(r0,r14),r6
	mov 0x03,r5
	bsr loc_8c195b9c
	mov r13,r4
	mov 0x5C,r0
	mov.l @(r0,r14),r6
	mov 0x02,r5
	mov 0x00,r7
	bsr loc_8c195b9c
	mov r13,r4

loc_8c195644:
	mov.w @(0x9A,PC),r4

loc_8c195646:
	dt r4
	bf loc_8c195646
	mov.l @(0x1C,r14),r5
	mov.l @(0x98,PC),r3
	mov.w @(0x6,r14),r0
	mov.l @(0x4,r5),r5
	jsr @r3
	mov r0,r4
	mov.l @(0x94,PC),r3
	mov.w @(0x6,r14),r0
	jsr @r3
	mov r0,r4
	mov 0x01,r2
	mov.l r2,@(0x18,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
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

;==============================================
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

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1956e2:
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

;==============================================
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

;==============================================
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

;==============================================
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

;==============================================
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

;==============================================
loc_8c1957A0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	mov.w @(0xA0,PC),r6
	sts.l pr,@-r15
	cmp/gt r6,r5
	bf.s loc_8c1957da
	mov.l r5,@(0x3C,r13)
	cmp/pz r5
	bt.s loc_8c1957d2
	mov 0x7F,r4
	mov r5,r1
	shll8 r1
	mov r5,r3
	mov.l @(0x90,PC),r2
	sub r3,r1
	add 0x80,r1
	jsr @r2
	mov r6,r0
	mov r0,r5
	mov r4,r14
	shll r5
	sub r5,r14
	cmp/gt r4,r14
	bf loc_8c1957d6

loc_8c1957D2:
	bra loc_8c1957dc

	mov r4,r14

loc_8c1957D6:
	cmp/pz r14
	bt loc_8c1957dc


loc_8c1957DA:
	mov 0x00,r14

loc_8c1957DC:
	mov.l @(0x18,r13),r2
	tst r2,r2
	bf loc_8c195800
	mov.l @(0x1C,r13),r4
	mov r14,r6
	mov.l @(0x80,PC),r3
	mov 0x00,r5
	jsr @r3
	mov.l @(0x4,r4),r4
	lds.l @r15+,pr
	mov.l @(0x1C,r13),r4
	mov r14,r6
	mov.l @(0x70,PC),r3
	mov 0x01,r5
	mov.l @r15+,r13
	mov.l @(0x4,r4),r4
	jmp @r3
	mov.l @r15+,r14

loc_8c195800:
	mov.w @(0x6,r13),r0
	mov r14,r6
	mov.l @(0x64,PC),r3
	mov 0x00,r5
	jsr @r3
	mov r0,r4
	lds.l @r15+,pr
	mov.w @(0x6,r13),r0
	mov r14,r6
	mov.l @(0x58,PC),r3
	mov 0x01,r5
	mov.l @r15+,r13
	mov r0,r4
	jmp @r3
	mov.l @r15+,r14

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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c195848:
	#data 0x03FF
loc_8c19584A:
	#data 0xFC41
	#align4

loc_8c19584C:
	#data 0x0000AC44
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

;==============================================
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

;==============================================
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

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c195988:
	#data 0x03BF
loc_8c19598A:
	#data 0x0080
loc_8c19598C:
	#data 0x00FF
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

;==============================================
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

;==============================================
loc_8c1959fe:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov 0x3F,r4
	cmp/ge r4,r5
	bf loc_8c195a0e
	mov r4,r5

loc_8c195a0e:
	mov 0xC0,r4
	cmp/gt r4,r5
	bt/s loc_8c195a18
	mov 0x50,r0
	mov r4,r5

loc_8c195a18:
	mov 0x63,r4
	mov.l r5,@(r0,r14)
	cmp/ge r4,r6
	bf/s loc_8c195a24
	mov.l r5,@(0x04,r15)
	mov r4,r6

loc_8c195a24:
	mov 0x9D,r4
	cmp/gt r4,r6
	bt/s loc_8c195a2e
	mov 0x54,r0
	mov r4,r6

loc_8c195a2e:
	mov r6,r1
	shll2 r1
	mov.l @(loc_8c195bf0,pc),r3
	shll2 r1
	mov.l r6,@(r0,r14)
	shll2 r1
	jsr @r3
	mov 0x64,r0
	mov.l r0,@r15
	mov.l @(loc_8c195bf4,pc),r3
	mov.w @(0x06,r14),r0
	mov.l @(0x04,r15),r5
	jsr @r3
	mov r0,r4
	mov.w @(0x06,r14),r0
	mov.l @r15,r5
	mov r0,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(loc_8c195bf8,pc),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c195A5A:
	mov 0x50,r0 ; r0 set to 0x50
	mov.l @(r0,r4),r3
	mov 0x54,r0 ; r0 set to 0x54
	mov.l r3,@r5
	mov.l @(r0,r4),r2
	rts
	mov.l r2,@r6

;==============================================
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

loc_8c195a86:
	mov 0x7F,r4
	cmp/ge r4,r13
	bf loc_8c195a8e
	mov r4,r13

loc_8c195A8E:
	cmp/pl r14
	bt loc_8c195A96
	bra loc_8c195A9E
	mov r5,r14

loc_8c195a96:
	mov 0x1F,r4
	cmp/ge r4,r14
	bf loc_8c195a9e
	mov r4,r14

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

;==============================================
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

;==============================================
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

;==============================================
loc_8c195B36:
	mov 0x5C,r0 ; r0 set to 0x5C
	rts
	mov.l @(r0,r4),r0

;==============================================
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

loc_8c195b52:
	mov.l @(loc_8c195c04,pc),r3
	mov r15,r5
	jsr @r3
	mov.l @(0x04,r15),r4
	mov r0,r13
	tst r13,r13
	bf loc_8c195b6a
	mov.l @(loc_8c195c0c,pc),r2
	mov.l @(loc_8c195c08,pc),r3
	jsr @r2
	mov.l r3,@-r15
	add 0x04,r15

loc_8c195b6a:
	mov.l @(0x1C,r14),r4
	mov r13,r5
	mov.l @(loc_8c195c10,pc),r3
	mov.l @r15,r6
	jsr @r3
	mov.l @(0x04,r4),r4
	mov.l @(0x1C,r14),r5
	mov.l @(loc_8c195c14,pc),r3
	mov.w @(0x06,r14),r0
	mov.l @(0x04,r5),r5
	jsr @r3
	mov r0,r4
	mov.l @r15,r2
	mov 0x64,r0
	mov.l r2,@(r0,r14)
	mov 0x01,r0

loc_8c195B8A:
	mov.b r0,@(0x05,r14)
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c195B96:
	mov 0x64,r0 ; r0 set to 0x64
	rts
	mov.l @(r0,r4),r0

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
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

;==============================================
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

;==============================================
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

loc_8c195cf8:
	cmp/eq 0xFC,r0
	bf loc_8c195d04
	mov.l @(loc_8c195df8,pc),r2
	jsr @r14
	mov.l r2,@-r15
	add 0x04,r15

loc_8c195D04:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c195d0c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov r14,r3
	shll2 r5
	mov.l r7,@r15
	mov.l r5,@(0x04,r15)
	add 0x20,r3
	mov.l @(0x10,r14),r2
	add r3,r5
	mul.l r2,r6
	sts macl,r6
	cmp/pz r6
	bt loc_8c195d2c
	add 0x07,r6

loc_8c195d2c:
	shar r6
	mov.l @r5,r2
	shar r6
	mov.l @(0x04,r15),r3
	shar r6
	mov r14,r4
	add r2,r6
	mov.l @r15,r5
	add 0x2C,r4
	mov.l @(loc_8c195de4,pc),r2
	add r3,r4
	mov 0x20,r7
	jsr @r2
	mov.l @r4,r4
	mov r0,r4
	cmp/pz r4
	bt loc_8c195d8a
	mov r4,r0
	mov.l @(loc_8c195de8,pc),r14
	cmp/eq 0xFF,r0
	bf loc_8c195d5c
	mov.l @(loc_8c195dec,pc),r3
	bra loc_8c195d6e
	nop

loc_8c195d5c:
	cmp/eq 0xFE,r0
	bf loc_8c195d66
	mov.l @(loc_8c195df0,pc),r2
	bra loc_8c195d70
	mov.l r2,@-r15

loc_8c195d66:
	mov r4,r0
	cmp/eq 0xFD,r0
	bf loc_8c195d7e
	mov.l @(loc_8c195df4,pc),r3

loc_8c195d6e:
	mov.l r3,@-r15

loc_8c195d70:
	jsr @r14
	nop
	add 0x04,r15
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c195d7e:
	cmp/eq 0xFC,r0
	bf loc_8c195d8a
	mov.l @(loc_8c195df8,pc),r2
	jsr @r14
	mov.l r2,@-r15
	add 0x04,r15

loc_8c195d8a:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
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

;==============================================
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


;==============================================
loc_8c195E3e:
	rts
	nop

;==============================================
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

;==============================================
loc_8c195E54:
	rts
	mov 0x00,r0

;==============================================
loc_8c195E58:
	mov.l @(loc_8c195E70,pc),r0 ; r0 set to 0x8C1C98C0
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c195E5E:
	#data 0x0100
loc_8c195E60:
	#data 0x0101
	#align4

loc_8c195E64:
	#data bank12.loc_8c126AB0
loc_8c195E68:
	#data bank1c.loc_8c1c5FBC
loc_8c195E6C:
	#data loc_8c1951E2
loc_8c195E70:
	#data bank1c.loc_8c1c98C0

;==============================================
loc_8c195E74:
	mov.l @(loc_8c195f58,PC),r0
	stc sr,r1
	or r0,r1
	ldc r1,sr
	mov.l @(loc_8c195f64,PC),r0
	mov.l @r0,r0
	tst r0,r0
	bt.s loc_8c195e90
	clrt
	mov.l @(loc_8c195f5c,PC),r0
	mov.l @r0,r1
	add 0xFF,r1
	mov.l r1,@r0
	tst r1,r1

loc_8c195E90:
	mov 0x04,r0
	shll16 r0
	lds r0,fpscr
	xor r0,r0
	lds r0,fpul
	frchg
	stc.l r7_bank,@-r15
	stc.l r6_bank,@-r15
	stc.l r5_bank,@-r15
	stc.l r4_bank,@-r15
	stc.l r3_bank,@-r15
	stc.l r2_bank,@-r15
	stc.l r1_bank,@-r15
	stc.l r0_bank,@-r15
	stc.l sgr,@-r15
	stc.l dbr,@-r15
	mov r15,r5
	stc.l sr,@-r15
	mov.l @(loc_8c195f68,PC),r0
	jsr @r0
	nop
	ldc.l @r15+,sr
	ldc.l @r15+,dbr
	mov.l @r15+,r4
	ldc.l @r15+,r0_bank
	ldc.l @r15+,r1_bank
	ldc.l @r15+,r2_bank
	ldc.l @r15+,r3_bank
	ldc.l @r15+,r4_bank
	ldc.l @r15+,r5_bank
	ldc.l @r15+,r6_bank
	ldc.l @r15+,r7_bank
	fmov @r15+,fr0
	fmov @r15+,fr1
	fmov @r15+,fr2
	fmov @r15+,fr3
	fmov @r15+,fr4
	fmov @r15+,fr5
	fmov @r15+,fr6
	fmov @r15+,fr7
	fmov @r15+,fr8
	fmov @r15+,fr9
	fmov @r15+,fr10
	fmov @r15+,fr11
	fmov @r15+,fr12
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	frchg
	fmov @r15+,fr0
	fmov @r15+,fr1
	fmov @r15+,fr2
	fmov @r15+,fr3
	fmov @r15+,fr4
	fmov @r15+,fr5
	fmov @r15+,fr6
	fmov @r15+,fr7
	fmov @r15+,fr8
	fmov @r15+,fr9
	fmov @r15+,fr10
	fmov @r15+,fr11
	fmov @r15+,fr12
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	lds.l @r15+,fpscr
	lds.l @r15+,fpul
	mov.l @r15+,r4
	mov.l @r15+,r0
	mov.l @r15+,r1
	mov.l @r15+,r2
	mov.l @r15+,r3
	mov.l @r15+,r4
	mov.l @r15+,r5
	mov.l @r15+,r6
	mov.l @r15+,r7
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	mov.l @r15+,r14
	lds.l @r15+,macl
	lds.l @r15+,mach
	ldc.l @r15+,vbr
	ldc.l @r15+,gbr
	lds.l @r15+,pr
	ldc.l @r15+,spc
	ldc.l @r15+,ssr
	bf loc_8c195f4a
	mov.l @(0x18,PC),r15
	mov.l @r15,r15

loc_8c195F4A:
	mov.l r0,@-r15
	mov 0xAC,r0
	shll16 r0
	shll8 r0
	or 0x10,r0
	jmp @r0
	mov.l @r15+,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c195f58:
	#data 0x30000000
loc_8c195F5C:
	#data loc_8c196340
loc_8c195F60:
	#data loc_8c196334
loc_8c195F64:
	#data loc_8c196338
loc_8c195F68:
	#data bank1a.loc_8c1aA794

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c195F94:
	#data loc_8c19633C
loc_8c195F98:
	#data 0x00000000
loc_8c195f9c:
	#data 0xAC004000
loc_8c195FA0:
	#data loc_8c196030

;==============================================
loc_8c195FA4:
	nop
	nop
	nop
	nop
	bra loc_8c195FCA
	nop

;unused
loc_8c195fb0:
	sts.l pr,@-r15
	mov.l r0,@-r15
	mov.l r4,@-r15
	mov.l r5,@-r15
	mov.l @(0x2C,PC),r4
	mov.l @(0x3C,PC),r0
	mov.l @(0x2C,PC),r5
	jsr @r0
	nop
	mov.l @r15+,r5
	mov.l @r15+,r4
	mov.l @r15+,r0
	lds.l @r15+,pr

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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c195Fe4:
	#data 0x00000200
loc_8c195Fe8:
	#data 0x00000002
loc_8c195FF0:
	#data loc_8c19633C
loc_8c195FF4:
	#data 0x00000000
loc_8c195FF8:
	#data 0xAC004000
loc_8c195FFC:
	#data loc_8c196030

;==============================================
loc_8c196000:
	rte
	nop

;==============================================
loc_8c196004:
	sts.l pr,@-r15
	mov.l r0,@-r15
	mov.l r4,@-r15
	mov.l r5,@-r15
	mov.l @(0x14,PC),r4
	mov.l @(0x1C,PC),r0
	mov.l @(0x14,PC),r5
	jsr @r0
	nop
	mov.l @r15+,r5
	mov.l @r15+,r4
	mov.l @r15+,r0
	lds.l @r15+,pr
	rte
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c196024:
	#data 0x00000200
loc_8c196028:
	#data 0x00000003
loc_8c19602c:
	#data 0xAC004000

;==============================================
loc_8c196030:
	mov.l @r15+,r1
	stc.l ssr,@-r15
	stc.l spc,@-r15
	sts.l pr,@-r15
	stc.l gbr,@-r15
	stc.l vbr,@-r15
	sts.l mach,@-r15
	sts.l macl,@-r15
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l r7,@-r15
	mov.l r6,@-r15
	mov.l r5,@-r15
	mov.l r4,@-r15
	mov.l r3,@-r15
	mov.l r2,@-r15
	mov.l r1,@-r15
	mov.l r0,@-r15
	stc.l sr,@-r15
	sts.l fpul,@-r15
	sts.l fpscr,@-r15
	mov 0x04,r0
	shll16 r0
	lds r0,fpscr
	xor r0,r0
	lds r0,fpul
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	fmov fr12,@-r15
	fmov fr11,@-r15
	fmov fr10,@-r15
	fmov fr9,@-r15
	fmov fr8,@-r15
	fmov fr7,@-r15
	fmov fr6,@-r15
	fmov fr5,@-r15
	fmov fr4,@-r15
	fmov fr3,@-r15
	fmov fr2,@-r15
	fmov fr1,@-r15
	fmov fr0,@-r15
	frchg
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	fmov fr12,@-r15
	fmov fr11,@-r15
	fmov fr10,@-r15
	fmov fr9,@-r15
	fmov fr8,@-r15
	fmov fr7,@-r15
	fmov fr6,@-r15
	fmov fr5,@-r15
	fmov fr4,@-r15
	fmov fr3,@-r15
	fmov fr2,@-r15
	fmov fr1,@-r15
	fmov fr0,@-r15
	frchg
	stc sr,r0
	mov.l @(0xD4,PC),r1
	and r1,r0
	or 0xF0,r0
	ldc r0,sr
	mov 0xFE,r3
	shll8 r3
	stc vbr,r14
	mov.l @(0xD0,PC),r4
	mov.l @r4,r4
	mov r4,r2
	add r3,r2
	mov 0x02,r0
	shll8 r0
	shar r2
	shar r2
	shar r2
	add r2,r14
	mov.l @(r0,r14),r14
	tst r14,r14
	bt loc_8c1960e8
	jsr @r14
	nop
	mov.l @(0xAC,PC),r0
	stc sr,r1
	or r0,r1
	ldc r1,sr

loc_8c1960E8:
	mov 0x04,r0
	shll16 r0
	lds r0,fpscr
	xor r0,r0
	lds r0,fpul
	frchg
	fmov @r15+,fr0
	fmov @r15+,fr1
	fmov @r15+,fr2
	fmov @r15+,fr3
	fmov @r15+,fr4
	fmov @r15+,fr5
	fmov @r15+,fr6
	fmov @r15+,fr7
	fmov @r15+,fr8
	fmov @r15+,fr9
	fmov @r15+,fr10
	fmov @r15+,fr11
	fmov @r15+,fr12
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	frchg
	fmov @r15+,fr0
	fmov @r15+,fr1
	fmov @r15+,fr2
	fmov @r15+,fr3
	fmov @r15+,fr4
	fmov @r15+,fr5
	fmov @r15+,fr6
	fmov @r15+,fr7
	fmov @r15+,fr8
	fmov @r15+,fr9
	fmov @r15+,fr10
	fmov @r15+,fr11
	fmov @r15+,fr12
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	lds.l @r15+,fpscr
	lds.l @r15+,fpul
	ldc.l @r15+,sr
	mov.l @r15+,r0
	mov.l @r15+,r1
	mov.l @r15+,r2
	mov.l @r15+,r3
	mov.l @r15+,r4
	mov.l @r15+,r5
	mov.l @r15+,r6
	mov.l @r15+,r7
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	mov.l @r15+,r14
	lds.l @r15+,macl
	lds.l @r15+,mach
	ldc.l @r15+,vbr
	ldc.l @r15+,gbr
	lds.l @r15+,pr
	ldc.l @r15+,spc
	ldc.l @r15+,ssr
	mov.l r0,@-r15
	mov.l r1,@-r15
	mov.l @(0x24,PC),r1
	mov.l @(0x10,PC),r0
	mov.l @r1,r1
	shll8 r0
	cmp/ge r0,r1
	bf.s loc_8c196184
	mov.l @r15+,r1
	stc vbr,r0
	jmp @r0
	mov.l @r15+,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c196180:
	#data 0x00000002
	

;==============================================
loc_8c196184:
	mov.l @r15+,r0
	rte
	nop
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c19618C:
	#data 0xEFFFFFFF
loc_8c196190:
	#data 0x10000000
loc_8c196194:
	#data loc_8c19633C

;==============================================
loc_8c196198:
	mov r0,r1
	mova @(0x1AC,PC),r0
	mov.l r1,@-r0
	add 0xFC,r0
	mov.l @r0,r1
	add 0x01,r1
	mov.l r1,@r0
	add 0x04,r0
	dt r1
	mov.l @r0,r0
	bf.s loc_8c1961be
	mov.l @r15+,r1
	mov.l r0,@-r15
	mova @(0x180,PC),r0
	add 0x04,r15
	mov.l r15,@r0
	add 0xFC,r15
	mov.l @r15+,r0
	mov.l @(0x178,PC),r15

loc_8c1961BE:
	stc.l ssr,@-r15
	stc.l spc,@-r15
	sts.l pr,@-r15
	stc.l gbr,@-r15
	stc.l vbr,@-r15
	sts.l mach,@-r15
	sts.l macl,@-r15
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l r7,@-r15
	mov.l r6,@-r15
	mov.l r5,@-r15
	mov.l r4,@-r15
	mov.l r3,@-r15
	mov.l r2,@-r15
	mov.l r1,@-r15
	mov.l r0,@-r15
	stc.l sr,@-r15
	sts.l fpul,@-r15
	sts.l fpscr,@-r15
	mov 0x04,r0
	shll16 r0
	lds r0,fpscr
	xor r0,r0
	lds r0,fpul
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	fmov fr12,@-r15
	fmov fr11,@-r15
	fmov fr10,@-r15
	fmov fr9,@-r15
	fmov fr8,@-r15
	fmov fr7,@-r15
	fmov fr6,@-r15
	fmov fr5,@-r15
	fmov fr4,@-r15
	fmov fr3,@-r15
	fmov fr2,@-r15
	fmov fr1,@-r15
	fmov fr0,@-r15
	frchg
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	fmov fr12,@-r15
	fmov fr11,@-r15
	fmov fr10,@-r15
	fmov fr9,@-r15
	fmov fr8,@-r15
	fmov fr7,@-r15
	fmov fr6,@-r15
	fmov fr5,@-r15
	fmov fr4,@-r15
	fmov fr3,@-r15
	fmov fr2,@-r15
	fmov fr1,@-r15
	fmov fr0,@-r15
	frchg
	stc sr,r0
	mov.l @(0xE4,PC),r1
	and r1,r0
	or 0xF0,r0
	ldc r0,sr
	mov 0xFE,r3
	shll8 r3
	stc vbr,r14
	mova @(0xEC,PC),r0
	mov.l @r0,r4
	mov r4,r2
	add r3,r2
	mov 0x02,r0
	shll8 r0
	shar r2
	shar r2
	shar r2
	add r2,r14
	mov.l @(r0,r14),r14
	tst r14,r14
	bt loc_8c19626c
	jsr @r14
	nop

loc_8c19626C:
	mov.l @(0xBC,PC),r0
	stc sr,r1
	or r0,r1
	ldc r1,sr
	mova @(0xC8,PC),r0
	mov.l @r0,r1
	add 0xFF,r1
	mov.l r1,@r0
	tst r1,r1
	mov 0x04,r0
	shll16 r0
	lds r0,fpscr
	xor r0,r0
	lds r0,fpul
	frchg
	fmov @r15+,fr0
	fmov @r15+,fr1
	fmov @r15+,fr2
	fmov @r15+,fr3
	fmov @r15+,fr4
	fmov @r15+,fr5
	fmov @r15+,fr6
	fmov @r15+,fr7
	fmov @r15+,fr8
	fmov @r15+,fr9
	fmov @r15+,fr10
	fmov @r15+,fr11
	fmov @r15+,fr12
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	frchg
	fmov @r15+,fr0
	fmov @r15+,fr1
	fmov @r15+,fr2
	fmov @r15+,fr3
	fmov @r15+,fr4
	fmov @r15+,fr5
	fmov @r15+,fr6
	fmov @r15+,fr7
	fmov @r15+,fr8
	fmov @r15+,fr9
	fmov @r15+,fr10
	fmov @r15+,fr11
	fmov @r15+,fr12
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	lds.l @r15+,fpscr
	lds.l @r15+,fpul
	mov.l @r15+,r4
	mov.l @r15+,r0
	mov.l @r15+,r1
	mov.l @r15+,r2
	mov.l @r15+,r3
	mov.l @r15+,r4
	mov.l @r15+,r5
	mov.l @r15+,r6
	mov.l @r15+,r7
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	mov.l @r15+,r14
	lds.l @r15+,macl
	lds.l @r15+,mach
	ldc.l @r15+,vbr
	ldc.l @r15+,gbr
	lds.l @r15+,pr
	ldc.l @r15+,spc
	ldc.l @r15+,ssr
	bf loc_8c196302
	mov.l @(0x30,PC),r15

loc_8c196302:
	mov.l r0,@-r15
	mov.l r1,@-r15
	mov.l @(0x28,PC),r1
	mov.l @(0x10,PC),r0
	mov.l @r1,r1
	shll8 r0
	cmp/ge r0,r1
	bf.s loc_8c196320
	mov.l @r15+,r1
	stc vbr,r0
	jmp @r0
	mov.l @r15+,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c19631c:
	#data 0x00000002

;==============================================
loc_8c196320:
	mov.l @r15+,r0
	rte
	nop
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c196328:
	#data 0xEFFFFFFF
loc_8c19632c:
	#data 0x30000000
loc_8c196330:
	#data loc_8c19633C
loc_8c196334:
	#data 0x00000000
loc_8c196338:
	#data 0x00000000
loc_8c19633C:
	#data 0x00000000
loc_8c196340:
	#data 0x00000000
loc_8c196344:
	#data 0x00000000

;==============================================
loc_8c196348:
	mov.l @(0xF0,PC),r2
	mov.l @(0xEC,PC),r3
	rts
	mov.l r3,@r2

;==============================================
loc_8c196350:
	mov.l r13,@-r15
	add 0xFC,r15
	mov.l @(0xE4,PC),r1
	mov 0x3F,r7
	mov.l @(0xE4,PC),r13
	mov.l @r1,r0
	mov.w @(0xCA,PC),r1
	shlr16 r0
	shlr2 r0
	and r0,r7
	mov 0x40,r0
	cmp/hs r0,r7
	bt loc_8c19637e

loc_8c19636A:
	mov r7,r2
	shll8 r2
	add r13,r2
	mov.l @r2,r3
	and r1,r3
	cmp/eq r1,r3
	bf loc_8c19637e
	add 0x01,r7
	cmp/hs r0,r7
	bf loc_8c19636a

loc_8c19637E:
	mov r7,r0
	cmp/eq 0x40,r0
	bf loc_8c19638a
	mov.w @(0xA4,PC),r4
	bra loc_8c1963da
	nop

loc_8c19638A:
	mov.w @(0xA0,PC),r3
	exts.b r6,r0
	cmp/eq 0x01,r0
	and r3,r5
	or r1,r5
	mov.l r5,@r15
	bt loc_8c1963a8
	cmp/eq 0x02,r0
	bt loc_8c1963ae
	cmp/eq 0x03,r0
	bt loc_8c1963b4
	cmp/eq 0x04,r0
	bt loc_8c1963bc
	bra loc_8c1963c0
	nop

loc_8c1963A8:
	mov.l @(0x98,PC),r5
	bra loc_8c1963c0
	mov 0x00,r6

loc_8c1963AE:
	mov.l @(0x98,PC),r5
	bra loc_8c1963c0
	mov 0x10,r6

loc_8c1963B4:
	mov.l @(0x94,PC),r5
	mov.w @(0x76,PC),r6
	bra loc_8c1963c0
	nop

loc_8c1963BC:
	mov.l @(0x90,PC),r5
	mov.w @(0x70,PC),r6

loc_8c1963C0:
	and r5,r4
	mov r7,r5
	shll8 r5
	mov.l @(0x8C,PC),r1
	mov.w @(0x68,PC),r3
	add r5,r13
	or r6,r4
	mov.l @r15,r2
	or r3,r4
	add r1,r5
	mov.l r2,@r13
	mov.l r4,@r5
	mov r7,r4

loc_8c1963DA:
	mov r4,r0
	add 0x04,r15
	rts
	mov.l @r15+,r13

;==============================================
loc_8c1963E2:
	mov 0x40,r3
	cmp/hs r3,r4
	bt loc_8c196404
	mov r4,r5
	shll8 r5
	mov.l @(0x50,PC),r6
	mov r5,r2
	mov.w @(0x42,PC),r1
	mov 0x00,r3
	add r6,r2
	mov.l @r2,r4
	add r5,r6
	mov.l @(0x58,PC),r2
	and r1,r4
	add r2,r5
	mov.l r4,@r6
	mov.l r3,@r5

loc_8c196404:
	rts
	nop

;==============================================
loc_8c196408:
	mov 0x40,r2
	cmp/hs r2,r4
	bt loc_8c196426
	mov r4,r6
	mov.l @(0x40,PC),r7
	shll8 r6
	add r7,r6
	mov.l @r6,r6
	mov 0xF6,r3
	exts.b r5,r5
	and r3,r6
	shll8 r4
	or r5,r6
	add r7,r4
	mov.l r6,@r4

loc_8c196426:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19642a:
	#data 0x0100
loc_8c19642c:
	#data 0x00FF
loc_8c19642e:
	#data 0xFC00
loc_8c196430:
	#data 0x0080
loc_8c196432:
	#data 0x0090
loc_8c196434:
	#data 0x013E
loc_8c196436:
	#data 0xFEFF
loc_8c196438:
	#data 0x0005
loc_8c19643a:
	#data 0x0004
loc_8c19643c:
	#data 0x0010
loc_8c19643e:
	#data 0xFF00
	#align4


loc_8c196440:
	#data 0xF6000000

loc_8c196444:
	#data 0x1FFFFC00
loc_8c196448:
	#data 0x1FFFF000
loc_8c19644c:
	#data 0x1FFF0000
loc_8c196450:
	#data 0x1FF00000
loc_8c196454:
	#data 0xF7000000

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19648A:
	#data 0x0110
	#align4

loc_8c19648C:
	#data bank1c.loc_8c1c993C
loc_8c196490:
	#data bank1a.loc_8c1aAA58

;==============================================
loc_8c196494:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	stc sr,r0
	mov.w @(0x6E,PC),r3
	mov r4,r14
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.l r0,@r15
	stc sr,r0
	and r3,r0
	or 0xF0,r0
	ldc r0,sr
	mov.l @(0x60,PC),r6
	mov 0x00,r5
	mov.l @r14,r3
	mov.l @r6,r4
	shll2 r3
	mov.w @(0x52,PC),r2
	shll2 r3
	mov.l @r4,r4
	shll r3
	add r3,r4
	mov.l r5,@(0x14,r4)
	mov 0x01,r4
	mov.l r5,@(0x2C,r14)
	mov.l r4,@(0x30,r14)
	mov.l @r6,r0
	mov.l @r14,r3
	add r0,r2
	shll2 r3
	add r2,r3
	mov.l @(0x40,PC),r2
	mov.l @r3,r1
	add 0x01,r1
	mov.l r1,@r3
	mov.l @r14,r1
	mov.l @r2,r3
	add 0x0F,r1
	shad r1,r4
	mov.l r4,@r3
	mov.l @(0x1C,r14),r3
	tst r3,r3
	bt loc_8c1964f4
	mov.l @(0x1C,r14),r3
	jsr @r3
	mov.l @(0x20,r14),r4

loc_8c1964F4:
	mov.l @r15,r0
	stc sr,r2
	mov.w @(0x12,PC),r3
	and 0x0F,r0
	shll2 r0
	and r3,r2
	shll2 r0
	or r2,r0
	ldc r0,sr
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19650e:
	#data 0xFF0F

loc_8c196510:
	#data 0x00EC
	#align4

loc_8c196514:
	#data bank1c.loc_8c1c993C
loc_8c196518:
	#data bank1c.loc_8c1c9934

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1965E4:
	#data bank1c.loc_8c1c993C

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19661C:
	#data 0x00D0
	#align4

loc_8c196620:
	#data bank1a.loc_8c1aAA6C
loc_8c196624:
	#data bank1c.loc_8c1c993C
loc_8c196628:
	#data 0x8C345F50

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c196654:
	#data 0x07F00000
loc_8c196658:
	#data 0x46590000
loc_8c19665C:
	#data 0xA05F78BC
loc_8c196660:
	#data bank1c.loc_8c1c9938

;==============================================
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


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c196698:
	#data 0x00D0
	#align4

loc_8c19669C:
	#data bank1a.loc_8c1aAA8C
loc_8c1966A0:
	#data bank1c.loc_8c1c993C
loc_8c1966A4:
	#data 0x8C345F50

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1966DA:
	#data 0x010C
	#align4

loc_8c1966DC:
	#data bank1c.loc_8c1c993C
loc_8c1966E0:
	#data bank1a.loc_8c1aAAAC

;==============================================
loc_8c1966E4:
	mov.l r14,@-r15
	mov.l @(0xF8,PC),r14
	mov.l @(0xF8,PC),r3
	mov.w @(0xE2,PC),r0
	mov r3,r2
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.l r3,@r14
	mov.l r4,@(r0,r2)
	add 0x04,r0
	mov.l @r14,r3
	mov.l r6,@(r0,r3)
	add 0xFC,r0
	mov.l @r14,r3
	mov 0x1F,r6
	mov.l @(r0,r3),r2
	tst r6,r2
	bt.s loc_8c196722
	mov 0xE0,r5
	mov.w @(0xBC,PC),r0
	mov.l @r14,r1
	mov.l @(r0,r1),r3
	add 0x20,r3
	mov.l r3,@(r0,r1)
	mov.l @r14,r3
	mov.l @(r0,r3),r2
	and r5,r2
	mov.l r2,@(r0,r3)

loc_8c196722:
	mov.w @(0xAC,PC),r0
	mov.l @r14,r4
	mov.l @(r0,r4),r3
	tst r3,r6
	bt loc_8c19673a
	mov.l @(r0,r4),r3
	add 0x20,r3
	mov.l r3,@(r0,r4)
	mov.l @r14,r3
	mov.l @(r0,r3),r2
	and r5,r2
	mov.l r2,@(r0,r3)

loc_8c19673A:
	mov.w @(0x92,PC),r0
	mov.l @r14,r3
	mov.l @(0xA8,PC),r4
	mov.l @(r0,r3),r2
	or r4,r2
	mov.l r2,@(r0,r3)
	add 0x04,r0
	mov.l @r14,r3
	mov.l @(r0,r3),r2
	or r4,r2
	mov.l r2,@(r0,r3)
	mov.l @(0x98,PC),r3
	jsr @r3
	nop
	mov.l @(0x98,PC),r4
	mov.l @(0x98,PC),r11
	mov r4,r10
	add 0x10,r10
	mov r4,r5
	mov r4,r12
	mov r4,r13

loc_8c196764:
	mov.w @(0x6C,PC),r2
	mov.l @r14,r0
	mov.l @r13,r3
	add r0,r2
	add r3,r2
	mov.b @r2,r1
	tst r1,r1
	bt loc_8c196778
	jsr @r11
	mov.l @r12,r4

loc_8c196778:
	add 0x04,r13
	cmp/hs r10,r13
	bf.s loc_8c196764
	add 0x04,r12
	mov.l @(0x74,PC),r2
	jsr @r2
	nop
	mov.w @(0x4C,PC),r0
	mov 0x01,r4
	mov.l @r14,r3
	mov.l @(0x6C,PC),r1
	mov.l r4,@(r0,r3)
	mov.w @(0x44,PC),r0
	mov.l @r14,r3
	mov.l @(r0,r3),r2
	mov.w @(0x40,PC),r0
	mov.l r1,@(r0,r2)
	mov.w @(0x3A,PC),r0
	mov 0x00,r5
	mov.l @r14,r3
	mov.l @(r0,r3),r2
	mov.l r5,@(0x10,r2)
	mov.l @r14,r3
	mov.l @(r0,r3),r2
	add 0xDC,r0
	mov r3,r1
	mov.l @(r0,r3),r3
	add 0xF0,r0
	mov.l @(r0,r1),r1
	mov.w @(0x26,PC),r0
	or r3,r1
	mov.l r1,@(r0,r2)
	mov.w @(0x1C,PC),r0
	mov.l @r14,r3
	mov.l @(r0,r3),r2
	mov.l r4,@(0x14,r2)
	lds.l @r15+,pr
	mov r5,r0
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1967d0:
	#data 0x0FC4
loc_8c1967d2:
	#data 0x0FC8
loc_8c1967d4:
	#data 0x0F90
loc_8c1967d6:
	#data 0x0FC0
loc_8c1967d8:
	#data 0x10F4
loc_8c1967da:
	#data 0x008C
loc_8c1967dc:
	#data 0x0080
	#align4

loc_8c1967e0:
	#data 0x8C347150
loc_8c1967e4:
	#data 0x8C346054
loc_8c1967e8:
	#data 0xA0000000
loc_8c1967EC:
	#data loc_8c19708C
loc_8c1967F0:
	#data bank1c.loc_8c1c60C8
loc_8c1967F4:
	#data loc_8c197EDC
loc_8c1967F8:
	#data loc_8c1982C0
loc_8c1967fc:
	#data 0x6155404F

;==============================================
loc_8c196800:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0x148,PC),r3
	mov 0x1F,r11
	mov.l @(0x140,PC),r14
	mov r7,r12
	mov.w @(0x12C,PC),r0
	mov r3,r2
	mov.l r4,@(0x8,r15)
	mov.l r5,@r15
	mov.l r3,@r14
	mov.l r6,@(r0,r2)
	mov.l @r14,r3
	mov.l @r15,r2
	mov.w @(0x11E,PC),r0
	mov.l r2,@(r0,r3)
	add 0xFC,r0
	mov.l @r14,r3
	mov.l @(r0,r3),r2
	tst r11,r2
	bt.s loc_8c19684a
	mov 0xE0,r9
	mov.w @(0x10C,PC),r0
	mov.l @r14,r1
	mov.l @(r0,r1),r3
	add 0x20,r3
	mov.l r3,@(r0,r1)
	mov.l @r14,r3
	mov.l @(r0,r3),r2
	and r9,r2
	mov.l r2,@(r0,r3)

loc_8c19684A:
	mov.w @(0xFC,PC),r0
	mov.l @r14,r4
	mov.l @(r0,r4),r3
	tst r11,r3
	bt loc_8c196862
	mov.l @(r0,r4),r3
	add 0x20,r3
	mov.l r3,@(r0,r4)
	mov.l @r14,r3
	mov.l @(r0,r3),r2
	and r9,r2
	mov.l r2,@(r0,r3)

loc_8c196862:
	mov.w @(0xE2,PC),r0
	mov.l @r14,r3
	mov.l @(0xF8,PC),r10
	mov.l @(r0,r3),r2
	or r10,r2
	mov.l r2,@(r0,r3)
	add 0x04,r0
	mov.l @r14,r3
	mov.l @(r0,r3),r2
	or r10,r2
	mov.l r2,@(r0,r3)
	mov.l @(0xE8,PC),r3
	jsr @r3
	nop
	mov 0x00,r13
	mov r13,r4
	mov 0x60,r5

loc_8c196884:
	mov.w @(0xC4,PC),r3
	mov.l @r14,r2
	add r2,r3
	add r4,r3
	mov.l r13,@r3
	mov.w @(0xBA,PC),r3
	mov.l @r14,r2
	add r2,r3
	add r4,r3
	add 0x04,r4
	cmp/hs r5,r4
	add 0x60,r3
	bf.s loc_8c196884
	mov.l r13,@r3
	mov.l @(0x8,r15),r3
	cmp/pl r12
	mov.w @(0xA6,PC),r7
	mov.l r3,@(0x4,r15)
	bf.s loc_8c1968ee
	mov r13,r5

loc_8c1968AC:
	mov.l @r15,r4
	add 0x04,r4
	mov.l r4,@r15
	add 0xFC,r4
	mov.l @r4,r4
	mov r4,r3
	tst r11,r3
	bt loc_8c1968c0
	add 0x20,r4
	and r9,r4

loc_8c1968C0:
	mov.l @(0x4,r15),r1
	or r10,r4
	mov.w @(0x84,PC),r2
	add 0x01,r5
	add 0x04,r1
	cmp/ge r12,r5
	mov.l r1,@(0x4,r15)
	add 0xFC,r1
	mov.l @r1,r1
	mov.l @r14,r3
	mov r1,r6
	shll2 r6
	add r3,r2
	add r6,r2
	mov.l r4,@r2
	add r7,r4
	mov.w @(0x68,PC),r2
	mov.l @r14,r3
	add r3,r2
	add r2,r6
	add 0x60,r6
	bf.s loc_8c1968ac
	mov.l r4,@r6

loc_8c1968EE:
	mov.l @r14,r2
	mov r13,r4
	mov.w @(0x52,PC),r0
	mov 0x18,r5
	mov r2,r3
	mov.l @(r0,r3),r1
	mov.w @(0x52,PC),r0
	mov.l r1,@(r0,r2)
	mov r12,r1
	mov.l @r14,r3
	shll8 r1
	mov.w @(0x40,PC),r0
	shll2 r1
	mov r3,r2
	mov.l @(r0,r2),r2
	mov.w @(0x42,PC),r0
	add r2,r1
	mov.l r1,@(r0,r3)
	add 0xFC,r0
	mov.l @r14,r3
	mov r3,r2
	mov.l @(r0,r2),r1
	mov.w @(0x36,PC),r0
	mov.l r1,@(r0,r3)

loc_8c19691E:
	mov.w @(0x34,PC),r3
	mov.l @r14,r0
	add r0,r3
	add r4,r3
	add 0x01,r4
	cmp/ge r5,r4
	bf.s loc_8c19691e
	mov.b r13,@r3
	mov.l @(0x8,r15),r11
	cmp/pl r12
	mov 0x65,r7
	mov r13,r5
	bf.s loc_8c196992
	mov 0x72,r6

loc_8c19693A:
	mov.l @r11+,r4
	mov r4,r0
	cmp/eq 0x00,r0
	bt loc_8c196976
	cmp/eq 0x06,r0
	bra loc_8c196968
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c196948:
	#data 0x0FC4
loc_8c19694a:
	#data 0x0FC8
loc_8c19694c:
	#data 0x0FE8
loc_8c19694e:
	#data 0x0400
loc_8c196950:
	#data 0x10A8
loc_8c196952:
	#data 0x10AC
loc_8c196954:
	#data 0x0FCC
loc_8c196956:
	#data 0x0F90
	#align4

loc_8c196958:
	#data 0x8C347150
loc_8c19695c:
	#data 0x8C346054
loc_8c196960:
	#data 0xA0000000
loc_8c196964:
	#data loc_8c19708C

;==============================================
loc_8c196968:
	bt loc_8c196976
	cmp/eq 0x0C,r0
	bt loc_8c196976
	cmp/eq 0x12,r0
	bt loc_8c196976
	bra loc_8c196982
	nop

loc_8c196976:
	mov.w @(0xC8,PC),r3
	mov.l @r14,r0
	add r0,r3
	add r3,r4
	bra loc_8c19698c
	mov.b r6,@r4

loc_8c196982:
	mov.w @(0xBC,PC),r3
	mov.l @r14,r0
	add r0,r3
	add r3,r4
	mov.b r7,@r4

loc_8c19698C:
	add 0x01,r5
	cmp/ge r12,r5
	bf loc_8c19693a

loc_8c196992:
	mov.l @(0xBC,PC),r4
	mov.l @(0xBC,PC),r9
	mov r4,r10
	add 0x10,r10
	mov r4,r5
	mov r4,r11
	mov r4,r12

loc_8c1969A0:
	mov.w @(0x9E,PC),r2
	mov.l @r14,r0
	mov.l @r12,r3
	add r0,r2
	add r3,r2
	mov.b @r2,r1
	tst r1,r1
	bt loc_8c1969b4
	jsr @r9
	mov.l @r11,r4

loc_8c1969B4:
	add 0x04,r12
	cmp/hs r10,r12
	bf.s loc_8c1969a0
	add 0x04,r11
	mov.l @(0x98,PC),r2
	jsr @r2
	nop
	mov.w @(0x7E,PC),r0
	mov 0x01,r4
	mov.l @r14,r3
	mov.l @(0x90,PC),r1
	mov.l r4,@(r0,r3)
	mov.w @(0x76,PC),r0
	mov.l @r14,r3
	mov.l @(r0,r3),r2
	mov.w @(0x72,PC),r0
	mov.l r1,@(r0,r2)
	mov.w @(0x6C,PC),r0
	mov.l @r14,r3
	mov.l @(r0,r3),r2
	mov.l r13,@(0x10,r2)
	mov.l @r14,r3
	mov.l @(r0,r3),r2
	add 0xDC,r0
	mov r3,r1
	mov.l @(r0,r3),r3
	add 0xF0,r0
	mov.l @(r0,r1),r1
	mov.w @(0x5A,PC),r0
	or r3,r1
	mov.l r1,@(r0,r2)
	mov.w @(0x50,PC),r0
	mov.l @r14,r3
	mov.l @(r0,r3),r2
	mov.l r4,@(0x14,r2)
	mov r13,r0
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c196a0e:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l @(loc_8C196A60,pc),r10
	mov.w @(loc_8C196A4E,pc),r0
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @r10,r14
	mov.w @(loc_8C196A4C,pc),r11
	mov.l @(r0,r14),r3
	mov r14,r12
	add 0x28,r12
	cmp/pl r3
	bf/s loc_8c196a38
	add r14,r11
	mov.l @(loc_8c196a64,pc),r3
	jsr @r3
	mov.l @(r0,r14),r4

loc_8c196a38:
	mov.l @(loc_8c196a54,pc),r8
	mov 0x01,r13
	mov 0x18,r9
	bra loc_8c196af0
	mov 0x00,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C196A42:
	#data 0x0F90
loc_8C196A44:
	#data 0x0FC0
loc_8C196A46:
	#data 0x10F4
loc_8C196A48:
	#data 0x008C
loc_8C196A4a:
	#data 0x0080
loc_8C196A4C:
	#data 0x044C
loc_8C196A4E:
	#data 0x10E4
	#align4

loc_8c196a50:
	#data bank1c.loc_8C1C60C8
loc_8c196a54:
	#data loc_8c197edc
loc_8c196a58:
	#data loc_8C1982C0
loc_8c196a5c:
	#data 0x6155404F
loc_8C196A60:
	#data 0x8C347150
loc_8c196a64:
	#data loc_8c1972f8

;==============================================
loc_8c196a68:
	mov.w @(loc_8C196B3C,pc),r3
	mov.l @r10,r0
	add r0,r3
	add r14,r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c196aea
	mov.b @(0x06,r12),r0
	tst r0,r0
	bf loc_8c196aea
	mov.b @(0x04,r12),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c196ab2
	cmp/eq 0x02,r0
	bt loc_8c196aba
	cmp/eq 0x03,r0
	bt loc_8c196ac4
	cmp/eq 0x04,r0
	bt loc_8c196ace
	cmp/eq 0x09,r0
	bt loc_8c196ad8
	cmp/eq 0x0A,r0
	bt loc_8c196aea
	cmp/eq 0x0B,r0
	bt loc_8c196aea
	cmp/eq 0x0C,r0
	bt loc_8c196aea
	cmp/eq 0x0D,r0
	bt loc_8c196aea
	cmp/eq 0x00,r0
	bt loc_8c196aea
	mov.w @(loc_8C196B3E,pc),r1
	cmp/eq r1,r0
	bt loc_8c196aea
	bra loc_8c196aea
	nop

loc_8c196ab2:
	jsr @r8
	mov r14,r4
	bra loc_8c196aea
	nop

loc_8c196aba:
	mov.l @(loc_8c196b44,pc),r2
	jsr @r2
	mov r14,r4
	bra loc_8c196aea
	nop

loc_8c196ac4:
	mov.l @(loc_8c196b48,pc),r2
	jsr @r2
	mov r14,r4
	bra loc_8c196aea
	nop

loc_8c196ace:
	mov.l @(loc_8c196b4c,pc),r2
	jsr @r2
	mov r14,r4
	bra loc_8c196aea
	nop

loc_8c196ad8:
	mov.l @r11,r5
	mov r5,r2
	tst r13,r2
	bt/s loc_8c196ae4
	mov r14,r4
	mov r13,r5

loc_8c196ae4:
	mov.l @(loc_8c196b50,pc),r2
	jsr @r2
	nop

loc_8c196aea:
	add 0x78,r11
	add 0x2C,r12
	add 0x01,r14

loc_8c196af0:
	cmp/ge r9,r14
	bf loc_8c196a68
	mov.l @(loc_8c196b54,pc),r3
	jsr @r3
	nop
	lds.l @r15+,pr
	mov 0x00,r0
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c196b3c:
	#data 0x0F90
loc_8c196b3e:
	#data 0x00FF
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

;==============================================
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

loc_8c196bb2:
	mov.w @(loc_8c196c72,pc),r0
	mov.l @(loc_8C196C98,pc),r2
	mov.l @r14,r3
	mov.l r2,@(r0,r3)

loc_8c196bba:
	mov.w @(loc_8c196c74,pc),r0
	mov.l @r14,r3
	mov.l @(r0,r3),r2
	mov.l r13,@(0x14,r2)
	mov.l @r14,r3
	mov.l @(r0,r3),r2
	add 0xDC,r0
	mov r3,r1
	mov.l @(r0,r3),r3
	add 0xF0,r0
	mov.l @(r0,r1),r1
	mov.w @(loc_8C196C76,pc),r0
	or r3,r1
	mov.l r1,@(r0,r2)
	mov.w @(loc_8c196c74,pc),r0
	mov.l @r14,r3
	mov.l @(r0,r3),r2
	mov.l r12,@(0x14,r2)

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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c196C6E:
	#data 0x0FAC
loc_8c196C70:
	#data 0x03E8
loc_8c196C72:
	#data 0x10C0
loc_8c196C74:
	#data 0x10F4
loc_8c196c76:
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
	#align4

loc_8c196C88:
	#data loc_8c198320
loc_8c196C8C:
	#data bank1c.loc_8c1c605C
loc_8c196C90:
	#data bank1c.loc_8c1c58D8
loc_8c196C94:
	#data bank12.loc_8c129128
loc_8c196c98:
	#data 0xC3500000
loc_8c196C9C:
	#data loc_8c1982EA

;==============================================
loc_8c196ca0:
	mov.w @(loc_8C196DB8,pc),r3
	mov.l @r14,r0
	add r0,r3
	add r5,r3
	mov.b @r3,r2
	tst r2,r2
	bt/s loc_8c196cbe
	add 0x01,r5
	mov.b @(0x06,r4),r0
	mov.b r0,@(0x07,r4)
	mov r13,r0
	mov.b r0,@(0x06,r4)
	mov.l @(0x18,r4),r3
	mov.l r3,@(0x1C,r4)
	mov.l r0,@(0x18,r4)

loc_8c196cbe:
	add 0x2C,r4

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

;==============================================
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

;==============================================
loc_8c196CF2:
	mov.w @(loc_8c196DBC,pc),r0 ; r0 set to 0x10F4
	mov.l @(r0,r4),r3
	mov.l @(0x18,r3),r0 ; r0 ??? bc r3 is ???
	tst 0x01,r0
	bt loc_8c196D02
	lds.l @r15+,pr
	rts
	mov 0xFF,r0

;==============================================
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

;==============================================
loc_8c196D18:
	mov 0x00,r0 ; r0 set to 0x00
	lds.l @r15+,pr
	rts
	nop

;==============================================
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

;==============================================
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

loc_8c196d50:
	mov.l @(loc_8c196dcc,pc),r0
	mov r14,r3
	shll2 r3
	mov.w @(loc_8C196DB8,pc),r1
	mov.l @(r0,r3),r2
	mov.l @r10,r0
	add r0,r1
	add r1,r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c196d9c
	mov.l @(loc_8c196dd0,pc),r2
	jsr @r2
	mov r14,r4
	mov r14,r3
	mov r14,r4
	shll2 r3
	mov r8,r11
	shll r4
	add r3,r4
	mov r4,r12
	mov r4,r13

loc_8c196d7c:
	mov.w @(loc_8C196DB8,pc),r3
	mov.l @r10,r0
	add r0,r3
	add r12,r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c196d92
	mov.l @(loc_8c196dd4,pc),r3
	mov r14,r5
	jsr @r3
	mov r13,r4

loc_8c196d92:
	add 0x01,r11
	cmp/ge r9,r11
	add 0x01,r13
	bf/s loc_8c196d7c
	add 0x01,r12

loc_8c196d9c:
	add 0x01,r14
	
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c196db8:
	#data 0x0F90
loc_8c196DBA:
	#data 0x0FC0
loc_8c196DBC:
	#data 0x10F4
	#align4

loc_8c196DC0:
	#data loc_8c198320
loc_8c196DC4:
	#data 0x8C347150
loc_8c196DC8:
	#data bank1c.loc_8c1c605C
loc_8c196DCC:
	#data bank1c.loc_8c1c60C8
loc_8c196DD0:
	#data loc_8c19787A
loc_8c196DD4:
	#data loc_8c197940

;==============================================
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
	
loc_8c196DF8:
	jsr @r13
	nop
	mov r0,r5
	jsr @r11
	mov r9,r4
	cmp/gt r10,r0
	bt loc_8c196e12

loc_8c196e06:
	mov.w @(loc_8C196EF4,pc),r0
	mov.l @r14,r2
	mov.l @(r0,r2),r3
	mov.l @(0x18,r3),r1
	tst r12,r1
	bf loc_8c196df8

loc_8c196e12:
	mov.w @(loc_8C196EF4,pc),r0
	mov 0x00,r4
	mov.l @r14,r2
	mov.l @(r0,r2),r3
	mov.l r4,@(0x18,r3)
	mov.l @r14,r3
	mov.l @(r0,r3),r2
	mov.l r4,@(0x14,r2)
	mov.l @r14,r3
	mov.l @(r0,r3),r2
	mov.l r4,@(0x10,r2)
	mov.l @r14,r3
	mov.l @(loc_8C196F10,pc),r1
	mov.l @(r0,r3),r2
	mov.w @(loc_8C196EF6,pc),r0
	mov.l r1,@(r0,r2)
	mov.w @(loc_8C196EF4,pc),r0
	mov.l @r14,r3
	mov.l @(loc_8C196F14,pc),r1
	mov.l @(r0,r3),r2
	mov.w @(loc_8C196EF8,pc),r0
	mov.l r1,@(r0,r2)
	mov.w @(loc_8C196EF4,pc),r0
	mov.l @r14,r3
	mov.l @(loc_8C196F18,pc),r1
	mov.l @(r0,r3),r2
	jsr @r13
	mov.l r1,@(0x04,r2)
	mov.w @(loc_8C196EFA,pc),r10
	bra loc_8c196e5e
	mov r0,r9

loc_8c196e50:
	jsr @r13
	nop
	mov r0,r5
	jsr @r11
	mov r9,r4
	cmp/gt r10,r0
	bt loc_8c196e6a

loc_8c196e5e:
	mov.w @(loc_8C196EF4,pc),r0
	mov.l @r14,r2
	mov.l @(r0,r2),r3
	mov.l @(0x18,r3),r1
	tst r12,r1
	bf loc_8c196e50

loc_8c196e6a:
	lds.l @r15+,pr
	mov 0x00,r0
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

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

loc_8c196ea0:
	mov r15,r5
	add 0x08,r5
	add 0x04,r5

loc_8c196ea6:
	mov.l @(loc_8c196f20,pc),r3
	mov r5,r6
	mov.l @(loc_8C196F1C,pc),r4
	jsr @r3
	mov.l @(0x08,r15),r5
	mov.l @(loc_8c196f24,pc),r2
	mov.l @r2,r14
	tst r14,r14
	bt loc_8c196ebe
	mov.l @(loc_8C196F1C,pc),r4
	jsr @r14
	nop

loc_8c196EBE:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c196EC4:
	mov 0x2C,r2 ; r2 set to 0x2C
	mov.l @(loc_8c196F0C,pc),r3 ; r3 set to 0x8C347150
	mul.l r2,r4
	mov.l @r3,r0
	add 0x28,r0
	sts macl,r4
	rts
	add r4,r0

;==============================================
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

;==============================================
loc_8c196EE6:
	mov.l @(loc_8c196F0C,pc),r3 ; r3 set to 0x8C347150
	shll2 r4
	shll r4
	mov.l @r3,r0
	add 0x04,r0
	rts
	add r4,r0

;==============================================
loc_8c196ef4:
	#data 0x10F4
loc_8c196ef6:
	#data 0x008C
loc_8c196ef8:
	#data 0x0080
loc_8c196efa:
	#data 0x4268
loc_8c196EFC:
	#data 0x10C8
loc_8c196EFE:
	#data 0x044C
	#align4

loc_8c196F00:
	#data bank17.loc_8c17878A
loc_8c196F04:
	#data 0x000186A0
loc_8c196F08:
	#data bank17.loc_8c178794
loc_8c196F0C:
	#data 0x8C347150
loc_8c196f10:
	#data 0x6155404F
loc_8c196f14:
	#data 0xC3500000
loc_8c196f18:
	#data 0x0CFF0000
loc_8c196f1c:
	#data 0x8C345F54
loc_8c196F20:
	#data bank12.loc_8c129804
loc_8c196F24:
	#data bank1c.loc_8c1c9944

;==============================================
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

;==============================================
loc_8c196F42:
	sts.l pr,@-r15
	bsr loc_8c196EC4
	nop
	lds.l @r15+,pr
	mov r0,r4
	mov.b @(0x0C,r4),r0
	rts
	extu.b r0,r0

;==============================================
loc_8c196F52:
	sts.l pr,@-r15
	bsr loc_8c196EC4
	nop
	lds.l @r15+,pr
	mov r0,r4
	mov 0x01,r0 ; r0 set to 0x01
	rts
	mov.b r0,@(0x0D,r4)

;==============================================
loc_8c196F62:
	mov.l @(loc_8c197064,pc),r2 ; r2 set to 0x8C347150
	shll16 r4
	mov.w @(loc_8c19704A,pc),r0 ; r0 set to 0x10C0
	mov.l @r2,r3
	rts
	mov.l r4,@(r0,r3)

;==============================================
loc_8c196F6E:
	mov.l @(loc_8c197064,pc),r3 ; r3 set to 0x8C347150
	mov.w @(loc_8c19704A,pc),r1 ; r1 set to 0x10C0
	mov.l @r3,r0
	mov.l @(r0,r1),r0
	shlr16 r0
	exts.w r0,r0
	rts
	extu.w r0,r0

;==============================================
loc_8c196F7E:
	mov.l @(loc_8c197064,pc),r2 ; r2 set to 0x8C347150
	mov 0x01,r1 ; r1 set to 0x01
	mov.w @(loc_8c19704C,pc),r0 ; r0 set to 0x10C4
	and r1,r4
	mov.l @r2,r3
	rts
	mov.l r4,@(r0,r3)

;==============================================
loc_8c196F8C:
	mov.l @(loc_8c197064,pc),r3 ; r3 set to 0x8C347150
	mov.w @(loc_8c19704C,pc),r1 ; r1 set to 0x10C4
	mov.l @r3,r0
	rts
	mov.l @(r0,r1),r0

;==============================================
loc_8c196F96:
	mov.l @(loc_8c197064,pc),r2 ; r2 set to 0x8C347150
	mov.w @(loc_8c19704E,pc),r0 ; r0 set to 0x10CC
	mov.l @r2,r3
	rts
	mov.l r4,@(r0,r3)

;==============================================
loc_8c196FA0:
	mov.l @(loc_8c197064,pc),r3 ; r3 set to 0x8C347150
	mov.w @(loc_8c19704E,pc),r1 ; r1 set to 0x10CC
	mov.l @r3,r0
	rts
	mov.l @(r0,r1),r0

;==============================================
loc_8c196FAA:
	mov.l @(loc_8c197064,pc),r2 ; r2 set to 0x8C347150
	mov.w @(loc_8c197050,pc),r0 ; r0 set to 0x10D0
	mov.l @r2,r3
	rts
	mov.l r4,@(r0,r3)

;==============================================
loc_8c196FB4:
	mov.l @(loc_8c197064,pc),r3 ; r3 set to 0x8C347150
	mov.w @(loc_8c197050,pc),r1 ; r1 set to 0x10D0
	mov.l @r3,r0
	rts
	mov.l @(r0,r1),r0

;==============================================
loc_8c196FBE:
	tst r4,r4
	bt loc_8c196fc8
	mov.l @(0xA4,PC),r3
	mov.l @r3,r2
	mov.l r2,@r4

loc_8c196FC8:
	tst r5,r5
	bt loc_8c196fd2
	mov.l @(0x9C,PC),r1
	mov.l @r1,r0
	mov.l r0,@r5

loc_8c196FD2:
	rts
	nop

;==============================================
loc_8c196FD6:
	mov.l @(loc_8c197064,pc),r2 ; r2 set to 0x8C347150
	mov.w @(loc_8c197052,pc),r0 ; r0 set to 0x10C8
	mov.l @r2,r3
	rts
	mov.l r4,@(r0,r3)

;==============================================
loc_8c196FE0:
	mov.l @(loc_8c197064,pc),r3 ; r3 set to 0x8C347150
	mov.w @(loc_8c197052,pc),r1 ; r1 set to 0x10C8
	mov.l @r3,r0
	rts
	mov.l @(r0,r1),r0

;==============================================
loc_8c196FEA:
	mov.l @(loc_8c197064,pc),r2 ; r2 set to 0x8C347150
	mov.w @(loc_8c197054,pc),r0 ; r0 set to 0x10D8
	mov.l @r2,r3
	rts
	mov.l r4,@(r0,r3)

;==============================================
loc_8c196FF4:
	mov.l @(loc_8c197064,pc),r3 ; r3 set to 0x8C347150
	mov.w @(loc_8c197054,pc),r1 ; r1 set to 0x10D8
	mov.l @r3,r0
	rts
	mov.l @(r0,r1),r0

;==============================================
loc_8c196FFE:
	mov.l @(loc_8c197064,pc),r5 ; r5 set to 0x8C347150
	mov.w @(loc_8c197056,pc),r0 ; r0 set to 0x10E0
	mov.l @r5,r3
	mov.l r4,@(r0,r3)
	add 0x04,r0 ; r0 set to 0x10E4
	mov.l @r5,r3
	rts
	mov.l r4,@(r0,r3)

;==============================================
loc_8c19700E:
	mov.l @(loc_8c197064,pc),r3 ; r3 set to 0x8C347150
	mov.w @(loc_8c197058,pc),r1 ; r1 set to 0x10E4
	mov.l @r3,r0
	rts
	mov.l @(r0,r1),r0

;==============================================
;unused?
loc_8c197018:
	mov.l @(0x48,PC),r3
	mov.w @(0x3C,PC),r1
	mov.l @r3,r0
	rts
	mov.l @(r0,r1),r0

;==============================================
loc_8c197022:
	mov.l @(loc_8c197064,pc),r2 ; r2 set to 0x8C347150
	mov.w @(loc_8c19705C,pc),r0 ; r0 set to 0x10DC
	mov.l @r2,r3
	rts
	mov.l r4,@(r0,r3)

;==============================================
loc_8c19702C:
	mov.l @(loc_8c197064,pc),r3 ; r3 set to 0x8C347150
	mov.w @(loc_8c19705C,pc),r1 ; r1 set to 0x10DC
	mov.l @r3,r0
	rts
	mov.l @(r0,r1),r0

;==============================================
loc_8c197036:
	mov.l @(loc_8c197064,pc),r2 ; r2 set to 0x8C347150
	mov.w @(loc_8c19705E,pc),r0 ; r0 set to 0xFAC
	mov.l @r2,r3
	rts
	mov.l r4,@(r0,r3)

;==============================================
loc_8c197040:
	mov.l @(loc_8c197064,pc),r3 ; r3 set to 0x8C347150
	mov.w @(loc_8c197060,pc),r1 ; r1 set to 0xFB0
	mov.l @r3,r0
	rts
	mov.l @(r0,r1),r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
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
loc_8c19705a:
	#data 0x10B0
loc_8c19705C:
	#data 0x10DC
loc_8c19705E:
	#data 0x0FAC
loc_8c197060:
	#data 0x0FB0
	#align4

loc_8c197064:
	#data 0x8C347150
loc_8c197068:
	#data bank1c.loc_8c1c60D8
loc_8c19706C:
	#data bank1c.loc_8c1c60DC

;==============================================
loc_8c197070:
	mov.l @(loc_8c197088,pc),r2 ; r2 set to 0x8C347150
	mov.w @(loc_8c197084,pc),r0 ; r0 set to 0xFBC
	mov.l @r2,r3
	rts
	mov.l r4,@(r0,r3)

;==============================================
loc_8c19707A:
	mov.l @(loc_8c197088,pc),r3 ; r3 set to 0x8C347150
	mov.w @(loc_8c197084,pc),r1 ; r1 set to 0xFBC
	mov.l @r3,r0
	rts
	mov.l @(r0,r1),r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c197084:
	#data 0x0FBC
	#align4

loc_8c197088:
	#data 0x8C347150

;==============================================
loc_8c19708C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0xE8,PC),r14
	mov 0x00,r13
	mov.w @(0xC6,PC),r0
	mov r13,r4
	mov.l @r14,r3
	mov 0x60,r12
	mov.w @(0xC0,PC),r6
	mov r13,r7
	mov.l r13,@(r0,r3)
	add 0x04,r0
	mov.l @r14,r3
	mov.w @(0xB8,PC),r5
	mov.l r13,@(r0,r3)

loc_8c1970B8:
	mov.w @(0xB8,PC),r0
	mov.l @r14,r3
	mov.w @(0xB2,PC),r2
	mov.l @(r0,r3),r1
	add r3,r2
	add r7,r1
	add r4,r2
	mov.l r1,@r2
	mov.w @(0xA6,PC),r2
	mov.l @r14,r3
	mov.l @(r0,r3),r1
	add r3,r2
	add r4,r2
	add 0x04,r4
	add r6,r1
	cmp/hs r12,r4
	add 0x60,r2
	mov.l r1,@r2
	add r5,r6
	bf.s loc_8c1970b8
	add r5,r7
	mov.l @r14,r2
	mov 0x08,r6
	mov.w @(0x8C,PC),r0
	mov 0x00,r5
	mov r2,r3
	mov.l @(r0,r3),r1
	mov.w @(0x86,PC),r0
	mov.l r1,@(r0,r2)
	mov.l @r14,r3
	mov.w @(0x7E,PC),r0
	mov r3,r2
	mov.w @(0x7E,PC),r1
	mov.l @(r0,r2),r2
	mov.w @(0x7C,PC),r0
	add r1,r2
	mov.l r2,@(r0,r3)
	add 0xFC,r0
	mov.l @r14,r3
	mov r3,r2
	mov.l @(r0,r2),r2
	mov.w @(0x70,PC),r0
	mov.l r2,@(r0,r3)
	mov.l @r14,r4
	mov.l @(0x78,PC),r3
	jsr @r3
	add 0x04,r4
	mov.l @r14,r4
	mov 0x00,r5
	mov.l @(0x70,PC),r3
	mov.w @(0x60,PC),r6
	jsr @r3
	add 0x28,r4
	mov.w @(0x5C,PC),r11
	mov r13,r12

loc_8c197126:
	mov.w @(0x5A,PC),r3
	mov.l @r14,r4
	add r3,r4
	bsr loc_8c197dfe
	add r12,r4
	add 0x78,r12
	cmp/hs r11,r12
	bf loc_8c197126
	mov r13,r4
	mov 0x18,r5

loc_8c19713A:
	mov.w @(0x48,PC),r3
	mov.l @r14,r0
	add r0,r3
	add r4,r3
	add 0x01,r4
	cmp/ge r5,r4
	bf.s loc_8c19713a
	mov.b r13,@r3
	mov.l @(0x44,PC),r2
	mov r15,r1
	mov.l @(0x44,PC),r3
	mov r15,r4
	add 0x04,r4
	add 0x04,r1
	jsr @r3
	mov 0x04,r0
	mov.l @(0x3C,PC),r0
	mov.l @r0,r1
	mov 0x01,r3
	extu.b r1,r1
	cmp/gt r3,r1
	bt.s loc_8c19719c
	mov r13,r11
	bra loc_8c19719e
	mov 0x07,r9

loc_8c19716c:
	#data 0x10B4
loc_8c19716e:
	#data 0x6000
loc_8c197170:
	#data 0x0400
loc_8c197172:
	#data 0x0FE8
loc_8c197174:
	#data 0x0FC8
loc_8c197176:
	#data 0x0FC4
loc_8c197178:
	#data 0x10A8
loc_8c19717a:
	#data 0x3000
loc_8c19717c:
	#data 0x10AC
loc_8c19717e:
	#data 0x0FCC
loc_8c197180:
	#data 0x0108
loc_8c197182:
	#data 0x0B40
loc_8c197184:
	#data 0x044C
loc_8c197186:
	#data 0x0F90
	#align4

loc_8c197188:
	#data 0x8C347150
loc_8c19718C:
	#data loc_8c1982D4
loc_8c197190:
	#data bank1c.loc_8c1c6084
loc_8c197194:
	#data bank12.loc_8c129620
loc_8c197198:
	#data 0xA05F689C

;==============================================
loc_8c19719C:
	mov 0x0F,r9

loc_8c19719E:
	mov r4,r5
	add 0x04,r4
	mov 0x05,r6
	mov.l r4,@r15
	mov r13,r7
	mov 0x52,r8
	mov 0x45,r10

loc_8c1971AC:
	mov.b @r5,r3
	exts.b r9,r2
	tst r2,r3
	bt loc_8c1971d6
	mov.w @(0xFC,PC),r3
	mov r11,r4
	mov.l @r14,r0
	add 0x01,r4
	mov r13,r12
	add r0,r3
	add r7,r3
	mov.b r8,@r3

loc_8c1971C4:
	mov.w @(0xEC,PC),r3
	add 0x01,r12
	mov.l @r14,r0
	cmp/ge r6,r12
	add r0,r3
	add r4,r3
	mov.b r10,@r3
	bf.s loc_8c1971c4
	add 0x01,r4

loc_8c1971D6:
	mov.l @r15,r3
	add 0x01,r5
	add 0x06,r11
	cmp/hs r3,r5
	bf.s loc_8c1971ac
	add 0x06,r7
	mov.w @(0xD0,PC),r0
	mov.l @(0xDC,PC),r3
	mov.l @r14,r1
	mov.l r3,@(r0,r1)
	mov.w @(0xCA,PC),r0
	mov.l @r14,r2
	mov.l r13,@(r0,r2)
	add 0xFC,r0
	mov.l @r14,r3
	mov 0x01,r2
	mov.l r13,@(r0,r3)
	add 0x08,r0
	mov.l @r14,r3
	mov.l r2,@(r0,r3)
	mov 0x0A,r2
	mov.w @(0xB6,PC),r0
	mov.l @r14,r3
	mov.l r13,@(r0,r3)
	add 0x24,r0
	mov.l @r14,r3
	mov.l r13,@(r0,r3)
	add 0xFC,r0
	mov.l @r14,r3
	mov.l r13,@(r0,r3)
	add 0xE4,r0
	mov.l @r14,r3
	mov.l r6,@(r0,r3)
	add 0x04,r0
	mov.l @r14,r3
	mov.l r13,@(r0,r3)
	add 0x08,r0
	mov.l @r14,r3
	mov.l r2,@(r0,r3)
	add 0x04,r0
	mov.l @r14,r3
	mov.l @(0x9C,PC),r2
	mov.l r6,@(r0,r3)
	add 0x04,r0
	mov.l @r14,r3
	mov.l r13,@(r0,r3)
	add 0x04,r0
	mov.l @r14,r3
	mov.l r13,@(r0,r3)
	mov.w @(0x80,PC),r0
	mov.l @r14,r3
	mov.l r13,@(r0,r3)
	add 0x04,r0
	mov.l @r14,r3
	mov.l r13,@(r0,r3)
	add 0x0C,r0
	mov.l @r14,r3
	mov.l r13,@(r0,r3)
	mov.l @r14,r3
	mov.w @(0x6E,PC),r0
	mov.l r2,@r3
	mov.l @(0x78,PC),r2
	mov.l @r14,r3
	mov.l r2,@(0x24,r3)
	mov.l @(0x78,PC),r2
	mov.l @r14,r3
	mov.l r2,@(r0,r3)
	mov.w @(0x60,PC),r0
	mov.l @(0x74,PC),r2
	mov.l @r14,r3
	mov.l r2,@(r0,r3)
	add 0x1C,r0
	mov.l @(0x70,PC),r2
	mov.l @r14,r3
	mov.l r2,@(r0,r3)
	add 0x3C,r0
	mov.l @(0x6C,PC),r2
	mov.l @r14,r3
	mov.l r2,@(r0,r3)
	mov.w @(0x4A,PC),r0
	mov.l @(0x68,PC),r2
	mov.l @r14,r3
	mov.l r2,@(r0,r3)
	add 0x18,r0
	mov.l @(0x64,PC),r2
	mov.l @r14,r3
	mov.l r2,@(r0,r3)
	add 0x1C,r0
	mov.l @(0x60,PC),r2
	mov.l @r14,r3
	mov.l r2,@(r0,r3)
	add 0x08,r0
	mov.l @(0x5C,PC),r2
	mov.l @r14,r3
	mov.l r2,@(r0,r3)
	mov.l @(0x58,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(0x58,PC),r2
	jsr @r2
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

;==============================================
loc_8c1972b4:
	#data 0x0F90
loc_8c1972b6:
	#data 0x10C0
loc_8c1972b8:
	#data 0x0FDC
loc_8c1972ba:
	#data 0x10C8
loc_8c1972bc:
	#data 0x0FAC
loc_8c1972be:
	#data 0x0448
loc_8c1972c0:
	#data 0x0F8C
loc_8c1972c2:
	#data 0x10BC
	#align4

loc_8c1972c4:
	#data 0xC3500000
loc_8c1972c8:
	#data "PORT"
loc_8c1972cc:
	#data "DEV "
loc_8c1972d0:
	#data "INFO"
loc_8c1972d4:
	#data "ENBL"
loc_8c1972d8:
	#data "STAT"
loc_8c1972dc:
	#data "RADR"
loc_8c1972e0:
	#data "TOUT"
loc_8c1972e4:
	#data "DRQC"
loc_8c1972e8:
	#data "FUNC"
loc_8c1972ec:
	#data "END "
loc_8c1972F0:
	#data loc_8c196F7E
loc_8c1972F4:
	#data loc_8c1982F4

;==============================================
loc_8c1972F8:
	mov.l @(0x80,PC),r5
	cmp/pl r4
	mov.w @(0x76,PC),r0
	mov.l @r5,r3
	mov r0,r1
	add 0x0C,r1
	mov r3,r2
	add r2,r1
	mov.l @r1,r1
	mov.l @(r0,r3),r2
	shll2 r1
	mov.w @(0x66,PC),r7
	add r1,r2
	mov.l r2,@(r0,r3)
	mov.l @r5,r1
	mov.l @(r0,r1),r1
	bf.s loc_8c197326
	mov 0x00,r6

loc_8c19731C:
	add 0x01,r6
	mov.l r7,@r1
	cmp/ge r4,r6
	bf.s loc_8c19731c
	add 0x04,r1

loc_8c197326:
	mov.w @(0x50,PC),r0
	mov.l @r5,r2
	mov.l r4,@(r0,r2)
	add 0x04,r0
	mov.l @r5,r3
	shll2 r4
	mov.l @(r0,r3),r2
	add r4,r2
	mov.l r2,@(r0,r3)
	rts
	mov 0x00,r0

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c197376:
	#data 0x0FCC
loc_8c197378:
	#data 0x0700
loc_8c19737a:
	#data 0x0FD8
	#align4

loc_8c19737C:
	#data 0x8C347150

;==============================================
loc_8c197380:
	mov.b @(0x04,r15),r0
	mov r15,r2
	mov.w @(loc_8C19747C,pc),r5
	add 0x10,r2
	mov.b r0,@(0x06,r3)
	mov r11,r8
	mov.l @(loc_8c19748c,pc),r0
	add r12,r8
	mov r8,r4
	add 0x03,r4
	mov.l r4,@(0x08,r15)
	mov 0x03,r4
	mov.b @(r0,r9),r3
	mov.w @(loc_8C19747E,pc),r0
	and r3,r5
	mov.b r3,@r2
	extu.b r5,r5
	mov.l r5,@(0x0C,r15)
	mov 0xFA,r2
	shad r2, r5
	and r4,r5
	mov.l r5,@r15
	mov.l @r14,r13
	mov r13,r2
	mov.l @(r0,r2),r3
	cmp/pl r3
	bf loc_8c1973d6
	mov.w @(loc_8C197480,pc),r0
	mov.l @(r0,r13),r1
	cmp/pl r1
	bf loc_8c1973d6
	mov.w @(loc_8C197482,pc),r0
	mov.l @(r0,r13),r2
	mov.l @r2,r3
	shlr16 r3
	exts.w r3,r3
	and r3,r4
	mov.l @r15,r3
	cmp/eq r4,r3
	bf loc_8c1973d6
	mov.w @(loc_8C19747E,pc),r0
	bsr loc_8c1972f8
	mov.l @(r0,r13),r4

loc_8c1973d6:
	mov.w @(loc_8C197482,pc),r0
	mov.l @r14,r2
	mov r0,r1
	add 0x0C,r1
	mov r2,r3
	add r3,r1
	mov.l @r1,r1
	mov.l @(r0,r2),r3
	shll2 r1
	add r1,r3
	mov.l r3,@(r0,r2)
	extu.b r8,r1
	mov.l @r15,r2
	mov.l @r14,r13
	shll16 r2
	mov.l @(r0,r13),r13
	or r1,r2
	mov.l r1,@(0x14,r15)
	mov.w @(loc_8C197484,pc),r1
	mov.l r2,@r13
	add 0x04,r13
	mov.l r13,@-r15
	add 0x04,r13
	mov.l @r14,r0
	mov r0,r3
	add r3,r1
	mov.l @r1,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	shll2 r3
	mov.w @(loc_8C197486,pc),r2
	mov r9,r4
	shll r3
	add r2,r0
	shll2 r4
	add r3,r0
	bsr loc_8c1982ea
	mov.l @(r0,r4),r4
	mov.l @r15+,r2
	mov.w @(loc_8C197488,pc),r1
	mov.l r0,@r2
	mov.b @(0x04,r15),r0
	mov.l @(loc_8C197490,pc),r6
	extu.b r0,r0
	mov.l @(0x18,r15),r7
	mov.l r0,@r15
	mov 0x10,r0
	mov.b @(r0,r15),r9
	mov.l @r14,r0
	mov.l @(loc_8C197498,pc),r4
	mov.l @(r0,r1),r0
	mov.l @(loc_8C197494,pc),r5
	cmp/eq 0x01,r0
	bf/s loc_8c19749c
	extu.b r9,r9
	mov.l @r15,r3
	shll16 r9
	mov.l @(0x0C,r15),r0
	and r4,r9
	shll16 r3
	cmp/pl r11
	shll8 r3
	shll8 r0
	and r5,r3
	and r6,r0
	or r9,r3
	or r0,r3
	mov.l @(0x14,r15),r0
	or r0,r3
	mov.l r3,@r13
	add 0x04,r13
	bf/s loc_8c1974f0
	mov 0x00,r9

loc_8c19746c:
	mov.l @r7+,r3
	add 0x01,r9
	cmp/ge r11,r9
	mov.l r3,@r13
	bf/s loc_8c19746c
	add 0x04,r13
	bra loc_8c1974f0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C19747C:
	#data 0x00C0
loc_8C19747E:
	#data 0x10CC
loc_8C197480:
	#data 0x0FD8
loc_8C197482:
	#data 0x0FCC
loc_8C197484:
	#data 0x10B4
loc_8C197486:
	#data 0x0FE8
loc_8C197488:
	#data 0x10C4
	#align4

loc_8c19748c:
	#data bank1c.loc_8c1c60b0
loc_8C197490:
	#data 0x0000FF00
loc_8C197494:
	#data 0xFF000000
loc_8C197498:
	#data 0x00FF0000

;==============================================
loc_8c19749c:
	mov.l @(0x0C,r15),r3
	shll8 r9
	shll16 r8
	mov.l @r15,r0
	shll16 r3
	cmp/pl r11
	shll8 r8
	and r4,r3
	and r6,r9
	and r5,r8
	or r9,r3
	or r8,r3
	or r0,r3
	mov.l r3,@r13
	add 0x04,r13
	bf/s loc_8c1974f0
	mov 0x00,r8

loc_8c1974be:
	mov.l @r7+,r9
	add 0x01,r8
	cmp/ge r11,r8
	mov r9,r2
	mov r9,r3
	shll16 r2
	mov r9,r1
	shll8 r3
	shll8 r2
	and r4,r3
	and r5,r2
	or r3,r2
	mov 0xF8,r3
	shad r3, r1
	and r6,r1
	or r1,r2
	mov r9,r1
	shlr16 r1
	shlr8 r1
	exts.b r1,r1
	extu.b r1,r1
	or r1,r2
	mov.l r2,@r13
	bf/s loc_8c1974be
	add 0x04,r13

loc_8c1974f0:
	mov.w @(loc_8C1975A6,pc),r1
	mov.l @r14,r0
	mov.l @(r0,r1),r0
	cmp/eq 0x01,r0
	bf loc_8c197532
	mov.l @(0x3C,r15),r7
	cmp/pl r12
	bf/s loc_8c197546
	mov 0x00,r11

loc_8c197502:
	mov.b @(0x01,r7),r0
	add 0x01,r11
	mov.b @r7,r1
	cmp/ge r12,r11
	shll16 r0
	and r4,r0
	mov r0,r3
	mov.b @(0x02,r7),r0
	shll16 r1
	shll8 r0
	and r6,r0
	or r0,r3
	mov.b @(0x03,r7),r0
	shll8 r1
	and r5,r1
	extu.b r0,r0
	or r1,r3
	or r0,r3
	mov.l r3,@r13
	add 0x04,r13
	bf/s loc_8c197502
	add 0x04,r7
	bra loc_8c197546
	nop

loc_8c197532:
	mov.l @(0x3C,r15),r5
	cmp/pl r12
	bf/s loc_8c197546
	mov 0x00,r4

loc_8c19753a:
	mov.l @r5+,r3
	add 0x01,r4
	cmp/ge r12,r4
	mov.l r3,@r13
	bf/s loc_8c19753a
	add 0x04,r13

loc_8c197546:
	mov.w @(loc_8C1975A8,pc),r0
	mov.l @(0x08,r15),r2
	mov.l @r14,r3
	mov.l r2,@(r0,r3)
	add 0x04,r0
	mov.l @r14,r3
	mov.l @(0x08,r15),r2
	mov.l @(r0,r3),r1
	shll2 r2
	add r2,r1
	mov.l r1,@(r0,r3)
	add 0x04,r0
	mov.l @r14,r3
	mov.l @r14,r2
	mov.l @(r0,r3),r1
	add 0x28,r2
	add 0x01,r1
	mov.l r1,@(r0,r3)
	add 0xFF,r1
	add r10,r2
	mov.l r1,@(0x18,r2)
	mov.l @r14,r3
	mov.l @(loc_8C1975AC,pc),r2
	mov.l @(r0,r3),r1
	and r2,r1
	mov.l r1,@(r0,r3)
	mov.l @r14,r3
	mov.l @(r0,r3),r1
	tst r1,r1
	bf loc_8c19758a
	mov.w @(loc_8C1975AA,pc),r0
	mov 0x01,r3
	mov.l @r14,r1
	mov.l r3,@(r0,r1)

loc_8c19758a:
	mov.l @r14,r0
	add 0x28,r0
	add r10,r0
	mov.l @(0x18,r0),r0

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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1975a6:
	#data 0x10C4
loc_8c1975a8:
	#data 0x0FD8
loc_8c1975aa:
	#data 0x0FE0
	#align4

loc_8c1975ac:
	#data 0x7FFFFFFF

;==============================================
loc_8c1975B0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xE8,r15
	mov 0x10,r0
	mov r7,r10
	mov r15,r2
	add 0x0C,r2
	mov.l r4,@r15
	mov r7,r12
	mov.b r5,@(r0,r15)
	mov 0x03,r5
	mov.l @(0x100,PC),r0
	mov.l @(0x100,PC),r13
	mov.l r6,@(0x4,r15)
	mov.l @(0x3C,r15),r11
	add r11,r10
	mov r10,r4
	add 0x03,r4
	mov.l r4,@(0x8,r15)
	mov.l @r15,r3
	mov.b @(r0,r3),r0
	mov 0xFA,r3
	mov.b r0,@(0xC,r15)
	mov.b @r2,r0
	mov.l @r13,r14
	and 0xC0,r0
	mov r0,r4
	mov.w @(0xD2,PC),r0
	extu.b r4,r8
	mov.l @(r0,r14),r2
	mov r8,r9
	shad r3,r9
	cmp/pl r2
	bf.s loc_8c197620
	and r5,r9
	mov.w @(0xC4,PC),r0
	mov.l @(r0,r14),r1
	cmp/pl r1
	bf loc_8c197620
	mov.w @(0xBE,PC),r0
	mov.l @(r0,r14),r4
	mov.l @r4,r4
	shlr16 r4
	exts.w r4,r4
	and r5,r4
	cmp/eq r4,r9
	bf loc_8c197620
	mov.w @(0xAA,PC),r0
	bsr loc_8c1972f8
	mov.l @(r0,r14),r4

loc_8c197620:
	mov.w @(0xA8,PC),r0
	shll16 r9
	mov.l @r13,r2
	mov r0,r1
	add 0x0C,r1
	mov r2,r3
	add r3,r1
	mov.l @r1,r1
	mov.l @(r0,r2),r3
	shll2 r1
	add r1,r3
	mov.w @(0x94,PC),r1
	mov.l r3,@(r0,r2)
	extu.b r10,r2
	mov.l @r13,r14
	or r2,r9
	mov.l @(r0,r14),r14
	mov.l r2,@(0x14,r15)
	mov.l r9,@r14
	add 0x04,r14
	mov.l r14,@-r15
	add 0x04,r14
	mov.l @r13,r0
	mov r0,r3
	add r3,r1
	mov.l @r1,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	shll2 r3
	shll r3
	mov.w @(0x6C,PC),r2
	mov.l @(0x4,r15),r4
	add r2,r0
	shll2 r4
	add r3,r0
	bsr loc_8c1982ea
	mov.l @(r0,r4),r4
	mov.l @r15+,r2
	mov.w @(0x5E,PC),r1
	mov.l r0,@r2
	mov 0x10,r0
	mov.b @(r0,r15),r3
	mov.l @(0x64,PC),r5
	mov.l @(0x60,PC),r6
	extu.b r3,r3
	mov.l @(0x4,r15),r7
	mov.l @(0x60,PC),r4
	mov.l r3,@(0x4,r15)
	mov.b @(0xC,r15),r0
	extu.b r0,r0
	mov.l r0,@r15
	mov.l @r13,r0
	mov.l @(r0,r1),r0
	cmp/eq 0x01,r0
	bf.s loc_8c1976e8
	mov 0x00,r9
	mov.l @(0x4,r15),r3
	shll8 r8
	mov.l @r15,r0
	and r6,r8
	shll16 r3
	cmp/pl r12
	shll16 r0
	shll8 r3
	and r5,r0
	and r4,r3
	or r0,r3
	mov.l @(0x14,r15),r0
	or r8,r3
	or r0,r3
	mov.l r3,@r14
	add 0x04,r14
	bf.s loc_8c19773c
	mov r9,r10

loc_8c1976B8:
	mov.l @r7+,r3
	add 0x01,r10
	cmp/ge r12,r10
	mov.l r3,@r14
	bf.s loc_8c1976b8
	add 0x04,r14
	bra loc_8c19773c
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1976c8:
	#data 0x10CC
loc_8c1976ca:
	#data 0x0FD8
loc_8c1976cc:
	#data 0x0FCC
loc_8c1976ce:
	#data 0x10B4
loc_8c1976d0:
	#data 0x0FE8
loc_8c1976d2:
	#data 0x10C4
	#align4

loc_8c1976D4:
	#data bank1c.loc_8c1c60B0
loc_8c1976D8:
	#data 0x8C347150
loc_8c1976DC:
	#data 0x0000FF00
loc_8c1976E0:
	#data 0x00FF0000
loc_8c1976E4:
	#data 0xFF000000

;==============================================
loc_8c1976E8:
	mov.l @r15,r3
	shll16 r8
	shll16 r10
	cmp/pl r12
	shll8 r3
	and r6,r3
	and r5,r8
	shll8 r10
	or r3,r8
	mov.l @(0x4,r15),r3
	and r4,r10
	or r10,r8
	or r3,r8
	mov.l r8,@r14
	add 0x04,r14
	bf.s loc_8c19773c
	mov r9,r8

loc_8c19770A:
	mov.l @r7+,r10
	add 0x01,r8
	cmp/ge r12,r8
	mov r10,r2
	mov r10,r3
	shll16 r2
	mov r10,r1
	shll8 r3
	shll8 r2
	and r5,r3
	and r4,r2
	or r3,r2
	mov 0xF8,r3
	shad r3,r1
	and r6,r1
	or r1,r2
	mov r10,r1
	shlr16 r1
	shlr8 r1
	exts.b r1,r1
	extu.b r1,r1
	or r1,r2
	mov.l r2,@r14
	bf.s loc_8c19770a
	add 0x04,r14

loc_8c19773C:
	mov.w @(0xF2,PC),r1
	mov.l @r13,r0
	mov.l @(r0,r1),r0
	cmp/eq 0x01,r0
	bf loc_8c19777e
	mov.l @(0x38,r15),r7
	cmp/pl r11
	bf.s loc_8c197792
	mov r9,r12

loc_8c19774E:
	mov.b @(0x1,r7),r0
	add 0x01,r12
	mov.b @r7,r1
	cmp/ge r11,r12
	shll16 r0
	and r5,r0
	mov r0,r3
	mov.b @(0x2,r7),r0
	shll16 r1
	shll8 r0
	and r6,r0
	or r0,r3
	mov.b @(0x3,r7),r0
	shll8 r1
	and r4,r1
	extu.b r0,r0
	or r1,r3
	or r0,r3
	mov.l r3,@r14
	add 0x04,r14
	bf.s loc_8c19774e
	add 0x04,r7
	bra loc_8c197792
	nop

loc_8c19777E:
	mov.l @(0x38,r15),r5
	cmp/pl r11
	bf.s loc_8c197792
	mov r9,r4

loc_8c197786:
	mov.l @r5+,r3
	add 0x01,r4
	cmp/ge r11,r4
	mov.l r3,@r14
	bf.s loc_8c197786
	add 0x04,r14

loc_8c197792:
	mov.w @(0x9E,PC),r0
	mov.l @(0x8,r15),r2
	mov.l @r13,r3
	mov.l r2,@(r0,r3)
	add 0x04,r0
	mov.l @r13,r3
	mov.l @(0x8,r15),r2
	mov.l @(r0,r3),r1
	shll2 r2
	add r2,r1
	mov.l r1,@(r0,r3)
	mov 0x00,r0
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

;==============================================
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

;==============================================
;unused
loc_8c1977f8:
	mov.l @(0x40,PC),r5
	shll16 r4
	mov.w @(0x36,PC),r0
	mov.l @r5,r3
	mov r0,r1
	add 0x0C,r1
	mov r3,r2
	add r2,r1
	mov.l @r1,r1
	mov.l @(r0,r3),r2
	shll2 r1
	add r1,r2
	mov.l r2,@(r0,r3)
	mov 0x01,r1
	mov.l @r5,r6
	mov.w @(0x20,PC),r3
	mov.l @(r0,r6),r6
	add 0x0C,r0
	or r3,r4
	mov.l r4,@r6
	mov.l @r5,r2
	mov.l r1,@(r0,r2)
	add 0x04,r0
	mov.l @r5,r2
	mov.l @(r0,r2),r1
	add 0x04,r1
	mov.l r1,@(r0,r2)
	rts
	mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c197832:
	#data 0x10C4
loc_8c197834:
	#data 0x0FD8
loc_8c197836:
	#data 0x0FCC
loc_8c197838:
	#data 0x0300
loc_8c19783a:
	#data 0x0200
	#align4

loc_8c19783C:
	#data 0x8C347150

;==============================================
loc_8c197840:
	mov.l @(0xF4,PC),r5
	shll16 r4
	mov.w @(0xE2,PC),r0
	mov.l @r5,r3
	mov r0,r1
	add 0x0C,r1
	mov r3,r2
	add r2,r1
	mov.l @r1,r1
	mov.l @(r0,r3),r2
	shll2 r1
	add r1,r2
	mov.l r2,@(r0,r3)
	mov 0x01,r1
	mov.l @r5,r6
	mov.w @(0xCA,PC),r3
	mov.l @(r0,r6),r6
	add 0x0C,r0
	or r3,r4
	mov.l r4,@r6
	mov.l @r5,r2
	mov.l r1,@(r0,r2)
	add 0x04,r0
	mov.l @r5,r2
	mov.l @(r0,r2),r1
	add 0x04,r1
	mov.l r1,@(r0,r2)
	rts
	mov 0x00,r0

;==============================================
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
;==============================================
loc_8c1978EC:
	mov.w @(loc_8c197936,pc),r1 ; r1 set to 0x10C4
	mov.l @r6,r0
	mov.l @(r0,r1),r0
	cmp/eq 0x01,r0
	bf loc_8c1978FC
	mov r15,r4
	bra loc_8c197900
	add 0x01,r4

loc_8c1978fc:
	mov r15,r4
	add 0x02,r4

loc_8c197900:
	mov.b @r4,r6
	mov r7,r4
	mov.l r7,@(0x04,r5)

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

;==============================================
loc_8c19792a:
	#data 0x0FCC
loc_8c19792C:
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
loc_8c19793C:
	#data bank1c.loc_8c1c60C8

;==============================================
loc_8c197940:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0x128,PC),r13
	mov r5,r2
	shll2 r2
	mov.w @(0x11A,PC),r1
	shll r2
	mov.l r5,@r15
	mov.l @r13,r3
	add 0x04,r3
	add r3,r2
	mov 0x2C,r3
	mov.l r2,@(0x4,r15)
	mul.l r3,r4
	mov.l @r13,r14
	mov.w @(0x104,PC),r2
	add 0x28,r14
	mov.l @r13,r10
	sts macl,r3
	add r2,r10
	mov.l @r13,r0
	add r3,r14
	mov 0x78,r3
	mul.l r3,r4
	sts macl,r3
	add r3,r10
	mov r0,r3
	add r3,r1
	mov.l @r1,r1
	neg r1,r1
	add 0x01,r1
	mov r1,r3
	shll r1
	add r3,r1
	mov.w @(0xE2,PC),r3
	shll2 r1
	mov r4,r11
	shll2 r1
	shll2 r11
	shll r1
	mov.l r11,@(0x8,r15)
	add r3,r0
	add r1,r0
	mov.l @(r0,r11),r11
	mov.b @r14,r0
	mov.b r0,@(0x1,r14)
	mov.b @(0x4,r14),r0
	mov.b r0,@(0x5,r14)
	mov.l @(0x1C,r14),r1
	tst r1,r1
	bt.s loc_8c1979b8
	mov 0x00,r12
	mov.l @(0x1C,r14),r1
	mov.l r1,@(0x20,r14)
	mov.l r12,@(0x1C,r14)

loc_8c1979B8:
	mov.l @(0xC0,PC),r0
	mov 0x1F,r2
	mov.b @(r0,r4),r3
	and r2,r3
	mov r3,r4
	extu.b r4,r1
	tst r1,r1
	bt loc_8c1979d6
	mov r10,r6
	mov r14,r7
	mov.l r11,@-r15
	bsr loc_8c197b88
	mov.l @(0x8,r15),r5
	bra loc_8c1979e0
	add 0x04,r15

loc_8c1979D6:
	mov r10,r5
	mov r14,r6
	mov r11,r7
	bsr loc_8c197ae4
	mov.l @r15,r4

loc_8c1979E0:
	mov r0,r5
	mov.b @(0x7,r14),r0
	tst r0,r0
	bt loc_8c197a0c
	mov.l @r13,r2
	mov.w @(0x84,PC),r0
	mov r2,r3
	mov.l @(r0,r3),r1
	mov.l @(0x8,r15),r0
	neg r1,r1
	add 0x01,r1
	mov r1,r3
	shll r1
	add r3,r1
	mov.w @(0x74,PC),r3
	shll2 r1
	shll2 r1
	add r3,r2
	shll r1
	add r2,r1
	mov.l @(r0,r1),r2
	mov.l r2,@(0x10,r14)

loc_8c197A0C:
	mov.b @(0xD,r14),r0
	tst r0,r0
	bt loc_8c197a18
	mov r12,r0
	mov.b r0,@(0xC,r14)
	mov.b r0,@(0xD,r14)

loc_8c197A18:
	mov.b @(0x2,r14),r0
	mov r0,r3
	mov.b @(0xC,r14),r0
	or r3,r0
	mov.b r0,@(0xC,r14)
	mov.b @(0x3,r14),r0
	mov r0,r3
	mov.b @(0xC,r14),r0
	or r3,r0
	mov.b r0,@(0xC,r14)
	mov r5,r0
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c197A3E:
	mov.b @(0x7,r4),r0
	mov 0x01,r6
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf.s loc_8c197a5a
	mov 0x00,r5
	mov.b @(0x8,r4),r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bf loc_8c197a56
	bra loc_8c197a82

	mov.b r6,@r4

loc_8c197A56:
	bra loc_8c197a82

	mov.b r5,@r4

loc_8c197A5A:
	mov.b @(0x8,r4),r0
	mov.w @(0x16,PC),r1
	extu.b r0,r0
	cmp/eq r1,r0
	bt loc_8c197a6c
	cmp/eq 0x00,r0
	bt loc_8c197a6c
	bra loc_8c197a80
	nop

loc_8c197A6C:
	bra loc_8c197a82
	mov.b r5,@r4


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c197A70:
	#data 0x044C
loc_8c197A72:
	#data 0x10B4
loc_8c197A74:
	#data 0x0FE8
loc_8c197A76:
	#data 0x00FF
	#align4

loc_8c197A78:
	#data 0x8C347150
loc_8c197A7C:
	#data bank1c.loc_8c1c60B0

;==============================================
loc_8c197A80:
	mov.b r6,@r4

loc_8c197A82:
	rts
	mov 0x00,r0

;==============================================
loc_8c197A86:
	add 0xFC,r15
	mov.l @(0xF4,PC),r2
	mov.w @(0xEA,PC),r1
	mov.l @r5+,r3
	mov.l r3,@r15
	mov.l @r2,r0
	mov.l @(r0,r1),r0
	cmp/eq 0x01,r0
	bf loc_8c197aac
	mov r15,r6
	mov.b @r6+,r0
	mov.b r0,@(0xB,r4)
	mov.b @r6+,r0
	mov.b r0,@(0xA,r4)
	mov.b @r6+,r0
	mov.b r0,@(0x9,r4)
	mov.b @r6,r0
	bra loc_8c197abe
	mov.b r0,@(0x8,r4)

loc_8c197AAC:
	mov r15,r6
	mov.b @r6+,r0
	mov.b r0,@(0x8,r4)
	mov.b @r6+,r0
	mov.b r0,@(0x9,r4)
	mov.b @r6+,r0
	mov.b r0,@(0xA,r4)
	mov.b @r6,r0
	mov.b r0,@(0xB,r4)

loc_8c197ABE:
	mov.b @(0x8,r4),r0
	mov.w @(0xB6,PC),r3
	extu.b r0,r0
	cmp/eq r3,r0
	bf loc_8c197ace
	mov 0xFF,r1
	bra loc_8c197ade
	mov.l r1,@(0x14,r4)

loc_8c197ACE:
	mov.w @(0xAA,PC),r2
	cmp/ge r2,r0
	bt loc_8c197ada
	mov 0x00,r0
	bra loc_8c197ade
	mov.l r0,@(0x14,r4)

loc_8c197ADA:
	mov.l @r5,r1
	mov.l r1,@(0x14,r4)

loc_8c197ADE:
	mov 0x00,r0
	rts
	add 0x04,r15

;==============================================
loc_8c197AE4:
	mov.l r14,@-r15
	mov r6,r14
	mov.l r13,@-r15
	mov r7,r13
	mov.l r12,@-r15
	mov r5,r12
	sts.l pr,@-r15
	mov r7,r5
	bsr loc_8c197a86
	mov r6,r4
	mov r13,r5
	bsr loc_8c197a3e
	mov r14,r4
	mov.b @(0x1,r14),r0
	mov.b @r14,r4
	mov.w @(0x72,PC),r1
	xor r4,r0
	and r4,r0
	mov.b r0,@(0x2,r14)
	mov.b @r14,r4
	not r4,r0
	mov r0,r3
	mov.b @(0x1,r14),r0
	xor r4,r0
	and r3,r0
	mov.l @(0x68,PC),r3
	mov.b r0,@(0x3,r14)
	mov.l @r3,r0
	mov.l @(r0,r1),r0
	cmp/eq 0x01,r0
	bf loc_8c197b3c
	mov.b @(0x8,r14),r0
	mov.w @(0x52,PC),r2
	extu.b r0,r4
	cmp/eq r2,r4
	bt loc_8c197b3c
	tst r4,r4
	bt loc_8c197b3c
	mov.l @r13,r5
	mov.l @(0x50,PC),r3
	extu.b r5,r5
	add 0x01,r5
	jsr @r3
	mov r13,r4

loc_8c197B3C:
	mov.b @r14,r2
	tst r2,r2
	bt.s loc_8c197b48
	mov 0x01,r4
	bra loc_8c197b4a

	mov 0x09,r0

loc_8c197B48:
	mov r4,r0

loc_8c197B4A:
	mov.b r0,@(0x4,r14)
	mov.b @(0x3,r14),r0
	tst r0,r0
	mov.b @(0x2,r14),r0
	tst r0,r0
	bt loc_8c197b62
	mov 0x10,r0
	mov r14,r5
	mov r13,r6
	mov.b r4,@(r0,r12)
	bsr loc_8c197cba
	mov r12,r4

loc_8c197B62:
	mov.b @(0x3,r14),r0
	tst r0,r0
	bt loc_8c197b6c
	bsr loc_8c197dfe
	mov r12,r4

loc_8c197B6C:
	lds.l @r15+,pr
	mov 0x00,r0
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c197b78:
	#data 0x10c4
loc_8c197b7a:
	#data 0x00ff
loc_8c197b7c:
	#data 0x00e0
	#align4

loc_8c197b80:
	#data 0x8C347150
loc_8c197B84:
	#data bank1a.loc_8c1aAAC0

;==============================================
loc_8c197B88:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r5,r10
	mov r7,r14
	mov 0x00,r13
	mov.b r4,@r15
	mov.l @(0x1C,r15),r12
	mov r6,r11
	mov r12,r5
	bsr loc_8c197a86
	mov r7,r4
	mov r13,r0
	mov.b r0,@(0x2,r14)
	mov.b r0,@(0x3,r14)
	mov.b @(0x2,r10),r0
	mov.b @r15,r5
	extu.b r0,r0
	extu.b r5,r5
	tst r5,r0
	bt.s loc_8c197bc8
	mov 0x01,r4
	mov r4,r0
	mov.b r0,@(0x4,r14)
	mov.b r13,@r14
	mov.l @(0x24,r14),r3
	add 0x01,r3
	mov.l r3,@(0x24,r14)

loc_8c197BC8:
	mov.b @(0x3,r10),r0
	extu.b r0,r0
	tst r5,r0
	bt loc_8c197bdc
	mov 0x04,r0
	mov.b r0,@(0x4,r14)
	mov r4,r0
	mov.b r13,@r14
	mov.b r0,@(0x3,r14)
	mov.l r13,@(0x24,r14)

loc_8c197BDC:
	mov.b @r10,r2
	mov.w @(0x66,PC),r6
	extu.b r2,r2
	tst r5,r2
	bt loc_8c197c50
	mov.b @(0x7,r14),r0
	tst r0,r0
	bf loc_8c197bf6
	mov.b @r14,r2
	tst r2,r2
	bf loc_8c197c42
	bra loc_8c197c56
	nop

loc_8c197BF6:
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c197c26
	mov.b @(0x8,r14),r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bf loc_8c197c0c
	mov r4,r0
	mov.b r0,@(0x2,r14)
	bra loc_8c197c42
	mov.b r0,@r14

loc_8c197C0C:
	mov.l @(0x3C,PC),r1
	mov.l @(0x24,r14),r3
	mov.w @(0x36,PC),r0
	add 0x01,r3
	mov.l r3,@(0x24,r14)
	mov.l @r1,r2
	mov.l @(r0,r2),r3
	mov.l @(0x24,r14),r0
	cmp/hi r3,r0
	bt loc_8c197c32
	mov r4,r0
	bra loc_8c197c56
	mov.b r0,@(0x4,r14)

loc_8c197C26:
	mov.b @(0x7,r14),r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c197c3c
	mov r4,r0
	mov.b r0,@(0x3,r14)

loc_8c197C32:
	mov r6,r0
	mov.b r13,@r14
	mov.b r0,@(0x4,r14)
	bra loc_8c197c56
	mov.l r13,@(0x24,r14)

loc_8c197C3C:
	mov.b @(0x7,r14),r0
	tst r0,r0
	bt loc_8c197c56

loc_8c197C42:
	mov r13,r0
	bra loc_8c197c56
	mov.b r0,@(0x4,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c197c48:
	#data 0x00FF
loc_8c197c4a:
	#data 0x10D8
	#align4

loc_8c197c4c:
	#data 0x8C347150

;==============================================
loc_8c197C50:
	mov r6,r0
	mov.b r0,@(0x4,r14)
	mov.b r13,@r14

loc_8c197C56:
	mov.b @r14,r3
	tst r3,r3
	bt loc_8c197c88
	mov.b @(0x7,r14),r0
	tst r0,r0
	bt loc_8c197c88
	mov.l @(0xF4,PC),r3
	mov.w @(0xEC,PC),r1
	mov.l @r3,r0
	mov.l @(r0,r1),r0
	cmp/eq 0x01,r0
	bf loc_8c197c88
	mov.l @r12,r0
	mov r0,r4
	cmp/eq 0xFF,r0
	bt loc_8c197c88
	mov.w @(0xDC,PC),r2
	cmp/eq r2,r4
	bt loc_8c197c88
	mov.l @r12,r5
	mov.l @(0xDC,PC),r3
	extu.b r5,r5
	add 0x01,r5
	jsr @r3
	mov r12,r4

loc_8c197C88:
	mov.b @(0x2,r14),r0
	tst r0,r0
	bt loc_8c197c9a
	mov 0x10,r0
	mov r14,r5
	mov r12,r6
	mov.b r13,@(r0,r11)
	bsr loc_8c197cba
	mov r11,r4

loc_8c197C9A:
	mov.b @(0x3,r14),r0
	tst r0,r0
	bt loc_8c197ca8
	mov 0x10,r0
	mov.b r13,@(r0,r11)
	bsr loc_8c197dfe
	mov r11,r4

loc_8c197CA8:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c197CBA:
	add 0x04,r6
	mov.l @(0xA0,PC),r3
	mov r6,r5
	mov.b @(0x1,r5),r0
	mov.l @(0xA0,PC),r2
	mov r4,r6
	extu.b r0,r0
	shll16 r0
	and r3,r0
	mov r0,r1
	mov.b @(0x2,r5),r0
	shll8 r3
	extu.b r0,r0
	shll8 r0
	and r2,r0
	or r0,r1
	mov.b @r5,r0
	mov 0x00,r7
	extu.b r0,r0
	shll16 r0
	shll8 r0
	and r3,r0
	or r0,r1
	mov.b @(0x3,r5),r0
	add 0x04,r5
	extu.b r0,r0
	or r0,r1
	mov.l r1,@r4
	bra loc_8c197cfc
	add 0x04,r6

loc_8c197CF6:
	mov.b @r5+,r3
	mov.b r3,@r6
	add 0x01,r6

loc_8c197CFC:
	mov r4,r2
	add 0x08,r2
	cmp/hs r2,r6
	bf loc_8c197cf6
	mov r4,r6
	bra loc_8c197d10
	add 0x08,r6

loc_8c197D0A:
	mov.b @r5+,r3
	mov.b r3,@r6
	add 0x01,r6

loc_8c197D10:
	mov r4,r2
	add 0x0C,r2
	cmp/hs r2,r6
	bf loc_8c197d0a
	mov r4,r6
	bra loc_8c197d24
	add 0x0C,r6

loc_8c197D1E:
	mov.b @r5+,r3
	mov.b r3,@r6
	add 0x01,r6

loc_8c197D24:
	mov r4,r2
	add 0x10,r2
	cmp/hs r2,r6
	bf loc_8c197d1e
	mov.b @r5+,r3
	mov 0x11,r0
	mov.b r3,@(r0,r4)
	mov 0x10,r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8c197d68
	mov.b @r5,r0
	mov r4,r2
	add 0x12,r2
	and 0x03,r0
	mov.b r0,@r2
	mov 0x13,r1
	mov.b @r5,r0
	add r4,r1
	extu.b r0,r0
	shlr2 r0
	and 0x03,r0
	bra loc_8c197d7c
	mov.b r0,@r1

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c197d54:
	#data 0x10C4
loc_8c197d56:
	#data 0xFF00
	#align4

loc_8c197d58:
	#data 0x8C347150
loc_8c197D5C:
	#data bank1a.loc_8c1aAAC0
loc_8c197d60:
	#data 0x00FF0000
loc_8c197d64:
	#data 0x0000FF00

;==============================================
loc_8c197D68:
	mov.b @r5,r0
	mov r4,r2
	mov.l @(0x12C,PC),r1
	add 0x12,r2
	extu.b r0,r0
	and 0x0F,r0
	mov.b @(r0,r1),r3
	mov 0x13,r0
	mov.b r3,@r2
	mov.b r7,@(r0,r4)

loc_8c197D7C:
	mov.l @(0x120,PC),r3
	mov.w @(0x116,PC),r1
	mov.l @r3,r0
	mov.l @(r0,r1),r0
	cmp/eq 0x01,r0
	bf loc_8c197da0
	mov r4,r6
	bra loc_8c197d94
	add 0x14,r6

loc_8c197D8E:
	mov.b @r5+,r3
	mov.b r3,@r6
	add 0x01,r6

loc_8c197D94:
	mov r4,r2
	add 0x33,r2
	cmp/hs r2,r6
	bf loc_8c197d8e
	bra loc_8c197dba
	nop

loc_8c197DA0:
	mov r4,r6
	add 0x01,r5
	bra loc_8c197dae
	add 0x14,r6

loc_8c197DA8:
	mov.b @r5+,r3
	mov.b r3,@r6
	add 0x01,r6

loc_8c197DAE:
	mov r4,r2
	add 0x32,r2
	cmp/hs r2,r6
	bf loc_8c197da8
	mov 0x32,r0
	mov.b r7,@(r0,r4)

loc_8c197DBA:
	mov 0x33,r0
	mov r4,r6
	mov.b r7,@(r0,r4)
	bra loc_8c197dca
	add 0x34,r6

loc_8c197DC4:
	mov.b @r5+,r3
	mov.b r3,@r6
	add 0x01,r6

loc_8c197DCA:
	mov r4,r2
	add 0x70,r2
	cmp/hs r2,r6
	bf loc_8c197dc4
	mov 0x70,r0
	mov.b r7,@(r0,r4)
	mov 0x74,r1
	mov.b @(0x1,r5),r0
	add r4,r1
	mov.b @r5,r3
	extu.b r0,r0
	extu.b r3,r3
	shll8 r0
	or r3,r0
	mov.w r0,@r1
	mov.b @(0x3,r5),r0
	extu.b r0,r0
	shll8 r0
	mov r0,r3
	mov.b @(0x2,r5),r0
	extu.b r0,r0
	or r0,r3
	mov 0x76,r0
	mov.w r3,@(r0,r4)
	rts
	mov 0x00,r0

;==============================================
loc_8c197DFE:
	mov.l r14,@-r15
	mov 0x1E,r6
	sts.l pr,@-r15
	mov r4,r14
	bsr loc_8c1982d4
	mov 0x00,r5
	mov r14,r2
	mov 0x6E,r4
	mov 0x15,r0
	add 0x14,r2
	mov 0x28,r3
	mov.b r3,@r2
	mov 0x6F,r3
	mov.b r4,@(r0,r14)
	mov 0x16,r0
	mov.b r3,@(r0,r14)
	mov 0x17,r0
	mov.b r4,@(r0,r14)
	mov 0x18,r0
	mov 0x65,r3
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov 0x19,r0
	mov 0x29,r2
	add 0x1A,r4
	mov.b r2,@(r0,r14)
	mov 0x20,r5

loc_8c197E34:
	mov r14,r3
	mov.b r5,@r4
	add 0x33,r3
	add 0x01,r4
	cmp/hs r3,r4
	bf loc_8c197e34
	mov 0x33,r0
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov r3,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
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

;==============================================
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

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c197E98:
	#data 0x10C4
	#align4

loc_8c197E9C:
	#data bank1c.loc_8c1c9948
loc_8c197EA0:
	#data 0x8C347150
loc_8c197EA4:
	#data loc_8c198320
loc_8c197EA8:
	#data bank1c.loc_8c1c6088
loc_8c197EAC:
	#data loc_8c196E7C

;==============================================
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

;==============================================
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

;==============================================
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

;==============================================
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

;==============================================
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

;==============================================
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

;==============================================
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

;==============================================
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

;==============================================
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

;==============================================
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

;==============================================
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

;==============================================
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

;==============================================
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

;==============================================
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

;==============================================
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

;==============================================
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

;==============================================
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

;==============================================
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

;==============================================
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

;==============================================
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

;==============================================
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

;==============================================
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

;==============================================
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

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c19813C:
	#data loc_8c198320
loc_8c198140:
	#data bank1c.loc_8c1c6088
loc_8c198144:
	#data loc_8c196E7C

;==============================================
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

;==============================================
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

;==============================================
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

;==============================================
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

;==============================================
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

;==============================================
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

;==============================================
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

;==============================================
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

;==============================================
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

;==============================================
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

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c198258:
	#data 0x00FC
	#align4

loc_8c19825C:
	#data loc_8c198320
loc_8c198260:
	#data bank1c.loc_8c1c6088
loc_8c198264:
	#data loc_8c196E7C

;==============================================
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

;==============================================
loc_8c19828C:
	bra loc_8c198290
	nop

loc_8c198290:
	bra loc_8c1977BE
	nop

;==============================================
loc_8c198294:
	mov.l @(0x6C,PC),r3
	sts.l pr,@-r15
	mov.l @r3,r0
	tas.b @r0
	bt loc_8c1982ae
	mov.l @(0x6C,PC),r2
	mov.l @(0x64,PC),r1
	jsr @r2
	mov.l r1,@-r15
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov 0xFE,r0

loc_8c1982ae:
	bsr loc_8c1982c0
	nop
	mov.l @(0x50,PC),r3
	mov 0x00,r1
	mov.l @r3,r2
	mov.b r1,@r2
	lds.l @r15+,pr
	rts
	nop

;==============================================
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

;==============================================
loc_8c1982D4:
	cmp/pl r6
	mov 0x00,r7
	bf.s loc_8c1982e6
	mov r4,r0

loc_8c1982DC:
	add 0x01,r7
	mov.l r5,@r0
	cmp/ge r6,r7
	bf.s loc_8c1982dc
	add 0x04,r0

loc_8c1982E6:
	rts
	mov r6,r0

;==============================================
loc_8c1982EA:
	mov.l @(loc_8c198318,pc),r0 ; r0 set to 0xFFFFFFF
	rts
	and r4,r0

;==============================================
loc_8c1982f0:
	rts
	mov r4,r0

;==============================================
loc_8c1982F4:
	mov.l @(loc_8c198310,pc),r2 ; r2 set to 0x8C347150
	mov.w @(loc_8c198302,pc),r0 ; r0 set to 0x10F4
	mov.l @(loc_8c19831C,pc),r1 ; r1 set to 0xA05F6C00
	mov.l @r2,r3
	rts
	mov.l r1,@(r0,r3)

;==============================================
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
loc_8c198314:
	#data 0x80000000
loc_8c198318:
	#data 0x0FFFFFFF
loc_8c19831C:
	#data 0xA05F6C00
loc_8c198320:
	#data loc_8c198324
loc_8c198324:
	#data 0x00000000

;==============================================
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

;==============================================
loc_8c198338:
	add r5,r4
	mov.w @r4,r1
	swap.b r1,r1
	rts
	extu.w r1,r0

;==============================================
loc_8c198342:
	add r5,r4
	mov.w @r4,r1
	rts
	extu.w r1,r0

;==============================================
loc_8c19834A:
	swap.b r6,r6
	add r5,r4
	rts
	mov.w r6,@r4

;==============================================
loc_8c198352:
	add r5,r4
	rts
	mov.w r6,@r4

;==============================================
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

;==============================================
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

;==============================================
loc_8c198386:
	mov.l @(loc_8c1983B4,pc),r3 ; r3 set to 0x8C1AADFC
	mov.l @(loc_8c1983AC,pc),r2 ; r2 set to 0x8C347154
	jmp @r3
	mov.l @r2,r4

;==============================================
loc_8c19838e:
	mov.l @(0x28,PC),r2
	mov.l @(0x18,PC),r3
	jmp @r2
	mov.l @r3,r4

;==============================================
loc_8c198396:
	mov.l @(loc_8c1983BC,pc),r2 ; r2 set to 0x8C1AADF8
	jmp @r2
	nop

;==============================================
loc_8c19839c:
	mov.l @(0x20,PC),r2
	jmp @r2
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1983A4:
	#data bank1a.loc_8c1aAAD4
loc_8c1983A8:
	#data bank1a.loc_8c1aAAF4
loc_8c1983AC:
	#data 0x8C347154
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

;==============================================
loc_8c1983C4:
	mov.l @(loc_8c198480,pc),r2 ; r2 set to 0x8C1C9958
	mov 0x00,r3 ; r3 set to 0x00
	rts
	mov.l r3,@r2

;==============================================
loc_8c1983CC:
	rts
	nop

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19847A:
	#data 0xFF30
loc_8c19847C:
	#data 0x00FC
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

;==============================================
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

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
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
	#align4

loc_8c198600:
	#data 0x8C33C568
loc_8c198604:
	#data bank18.loc_8c1859B2
loc_8c198608:
	#data bank18.loc_8c185D00
loc_8c19860C:
	#data bank12.loc_8c129128
loc_8c198610:
	#data 0x8C33C56C
loc_8c198614:
	#data loc_8c198396
loc_8c198618:
	#data bank1c.loc_8c1c60E0
loc_8c19861C:
	#data bank18.loc_8c1859A0

;==============================================
loc_8c198620:
	jsr @r9
	mov r14,r4
	tst r0,r0
	bf loc_8c19866e
	mov.l @(0x8,r15),r3
	mov 0x00,r6
	mov.l @(0xF0,PC),r12
	mov 0x02,r5
	mov.l r3,@-r15
	mov r10,r7
	jsr @r12
	mov r14,r4
	mov r0,r12
	cmp/pz r12
	bt.s loc_8c19864a
	add 0x04,r15
	jsr @r13
	nop

loc_8c198644:
	mov.l @(0xDC,PC),r9
	bra loc_8c198620
	nop

loc_8c19864A:
	mov.l @(0xDC,PC),r2
	mov r12,r5
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c19865e
	jsr @r13
	nop
	bra loc_8c19864a
	nop

loc_8c19865E:
	mov.l @(0xCC,PC),r3
	jsr @r3
	mov r14,r4
	mov.l r0,@(0x4,r15)
	jsr @r9
	mov r14,r4
	tst r0,r0
	bt loc_8c198674

loc_8c19866E:
	mov.w @(0xA4,PC),r0
	bra loc_8c1986c6
	nop

loc_8c198674:
	mov.l @(0x4,r15),r0
	mov.l @(0x4,r15),r9
	mov.b @(0x4,r0),r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bt.s loc_8c19869a
	mov.l @(0x8,r9),r9
	mov.w @(0x92,PC),r1
	cmp/eq r1,r0
	bt loc_8c198644
	mov.w @(0x8E,PC),r1
	cmp/eq r1,r0
	bf loc_8c198694
	mov.l @(0xA0,PC),r0
	bra loc_8c1986c6
	nop

loc_8c198694:
	mov.w @(loc_8c19871C,pc),r0 ; r0 set to 0xFF01
	bra loc_8c1986C6
	nop

loc_8c19869A:
	mov.l @(0x1C,r11),r6
	mov 0x44,r0
	mov.l @(0x94,PC),r3
	mov r9,r5
	mov.l @(r0,r6),r6
	add 0x0C,r5
	jsr @r3
	mov r8,r4
	mov.l @(0x1C,r11),r2
	mov 0x44,r0
	add 0x01,r10
	mov.l @(r0,r2),r3
	mov.l @r15,r2
	add r3,r8
	add 0x01,r2
	mov.l r2,@r15

loc_8c1986ba:
	mov.l @(0x1C,r11),r3
	mov.l @r15,r1
	mov.l @(0x3C,r3),r2
	cmp/ge r2,r1
	bf loc_8c198644
	mov 0x00,r0

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

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c198716:
	#data 0xFF30
loc_8c198718:
	#data 0x00FC
loc_8c19871a:
	#data 0x00FB
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
loc_8c198730:
	#data 0xFFFF0000
loc_8c198734:
	#data loc_8c198328
loc_8c198738:
	#data loc_8c198396
loc_8c19873C:
	#data 0x8C33C56C

;==============================================
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

loc_8c198764:
	jsr @r11
	mov r14,r4
	tst r0,r0
	bf loc_8c198836
	mov.l @(0xD8,PC),r3
	mov 0x04,r12
	mov.l @r15,r1
	jsr @r3
	mov r12,r0
	mov.l r0,@-r15
	mov 0x02,r5
	mov.l @(0x8,r15),r3
	mov 0x00,r6
	mov r9,r7
	mov.l r3,@-r15
	mov.l @(0xC8,PC),r3
	mov.l r8,@-r15
	jsr @r3
	mov r14,r4
	mov r0,r12
	cmp/pz r12
	bt.s loc_8c19879a
	add 0x0C,r15
	jsr @r13
	nop
	bra loc_8c198764
	nop

loc_8c19879A:
	mov r12,r5
	jsr @r10
	mov r14,r4
	tst r0,r0
	bf loc_8c1987ac
	jsr @r13
	nop
	bra loc_8c19879a
	nop

loc_8c1987AC:
	mov.l @(0x94,PC),r3
	jsr @r3
	mov r14,r4
	mov.l r0,@(0x18,r15)
	jsr @r11
	mov r14,r4
	tst r0,r0
	bf loc_8c198836
	mov.l @(0x18,r15),r0
	mov.b @(0x4,r0),r0
	extu.b r0,r0
	cmp/eq 0x07,r0
	bt loc_8c1987d0
	mov.w @(0x72,PC),r1
	cmp/eq r1,r0
	bt loc_8c198764
	bra loc_8c1988a2
	nop

loc_8c1987D0:
	mov.l @(0x4,r15),r2
	add 0x01,r9
	mov.l @r15,r3
	add r3,r2
	mov.l r2,@(0x4,r15)
	mov.l @(0x1C,r15),r1
	add 0x01,r1
	mov.l r1,@(0x1C,r15)

loc_8c1987e0:
	mov.l @(0x14,r15),r3
	mov 0x40,r0
	mov.l @(0x1C,r3),r2
	mov.l @(r0,r2),r1
	mov.l @(0x1C,r15),r0
	cmp/ge r1,r0
	bf loc_8c198764

loc_8c1987ee:
	jsr @r11
	mov r14,r4
	tst r0,r0
	bf loc_8c198836
	mov.l @(loc_8c198850,pc),r12
	mov 0x00,r6
	mov 0x02,r5
	mov.l r8,@-r15
	mov r9,r7
	jsr @r12
	mov r14,r4
	mov r0,r12
	cmp/pz r12
	bt/s loc_8c198814
	add 0x04,r15
	jsr @r13
	nop
	bra loc_8c1987ee
	nop

loc_8c198814:
	mov r12,r5
	jsr @r10
	mov r14,r4
	tst r0,r0
	bf loc_8c198826
	jsr @r13
	nop
	bra loc_8c198814
	nop

loc_8c198826:
	mov.l @(loc_8c198844,pc),r3
	jsr @r3
	mov r14,r4
	mov.l r0,@(0x04,r15)
	jsr @r11
	mov r14,r4
	tst r0,r0
	bt loc_8c198854

loc_8c198836:
	mov.w @(loc_8C19883E,pc),r0
	bra loc_8c1988a4
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C19883C:
	#data 0x00FC
loc_8C19883E:
	#data 0xFF30
	#align4

loc_8c198840:
	#data bank1c.loc_8C1C60E0
loc_8c198844:
	#data bank18.loc_8c1859a0
loc_8c198848:
	#data bank12.loc_8C129128
loc_8c19884c:
	#data bank18.loc_8C185B38
loc_8c198850:
	#data bank18.loc_8c185b6c

;==============================================
loc_8c198854:
	mov.l @(loc_8c198964,pc),r3
	mov.l @r3,r2
	mov r2,r1
	tst r1,r1
	bt/s loc_8c198874
	mov.l r2,@r15
	mov r15,r6
	mov r15,r7
	mov.l @r15,r1
	mov r8,r5
	add 0x0C,r6
	add 0x10,r7
	jsr @r1
	mov.l @(0x08,r15),r4
	tst r0,r0
	bf loc_8c198880

loc_8c198874:
	mov.l @(0x04,r15),r0
	mov.b @(0x04,r0),r0
	mov.b r0,@(0x0C,r15)
	mov.l @(0x04,r15),r3
	mov.l @(0x0C,r3),r2
	mov.l r2,@(0x10,r15)

loc_8c198880:
	mov.b @(0x0C,r15),r0
	extu.b r0,r0
	cmp/eq 0x07,r0
	bt loc_8c198898
	mov.w @(loc_8C19895A,pc),r1
	cmp/eq r1,r0
	bt loc_8c1987ee
	mov.w @(loc_8C19895C,pc),r1
	cmp/eq r1,r0
	bt loc_8c19889c
	bra loc_8c1988a2
	nop

loc_8c198898:
	bra loc_8c1988a4
	mov 0x00,r0

loc_8c19889c:
	mov.w @(loc_8C19895E,pc),r0
	bra loc_8c1988a4
	nop

loc_8c1988a2:
	mov.w @(loc_8C198960,pc),r0

loc_8c1988a4:
	add 0x20,r15
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
loc_8c1988b8:
	mov.w @(0xA6,PC),r1
	mov 0x00,r6
	mov 0xFF,r0
	mov 0x00,r7

loc_8c1988c0:
	mov.b @r5,r2
	mov.b @r4,r3
	cmp/eq r2,r3
	bt.s loc_8c1988cc
	add 0x01,r6
	mov r0,r7

loc_8c1988cc:
	cmp/ge r1,r6
	add 0x01,r4
	bf.s loc_8c1988c0
	add 0x01,r5
	rts
	mov r7,r0

;==============================================
loc_8c1988d8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x88,PC),r0
	mov r4,r14
	shll2 r14
	mov.l @(0x84,PC),r3
	mov.l @(r0,r14),r14
	jsr @r3
	mov r14,r4
	mov.l @(0x80,PC),r3
	mov.l r0,@r15
	jsr @r3
	mov r14,r4
	mov.l @r15,r2
	mov r0,r4
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c198904
	mov.l @r4,r0
	tst 0x02,r0
	bf loc_8c19890e

loc_8c198904:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c19890e:
	mov 0x01,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c198918:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x48,PC),r0
	mov r4,r14
	shll2 r14
	mov.l @(0x44,PC),r3
	mov.l @(r0,r14),r14
	jsr @r3
	mov r14,r4
	mov.l @(0x40,PC),r3
	mov.l r0,@(0x4,r15)
	jsr @r3
	mov r14,r4
	mov.l r0,@r15
	mov.l @(0x4,r15),r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c198950
	mov.l @(0x34,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c198950
	mov.l @r15,r0
	mov.l @r0,r0
	tst 0x02,r0
	bf loc_8c198978

loc_8c198950:
	mov 0x00,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C19895A:
	#data 0x00FC
loc_8C19895C:
	#data 0x00FB
loc_8C19895E:
	#data 0xFF40
loc_8C198960:
	#data 0xFF01
loc_8C198962:
	#data 0x0200
	#align4

loc_8c198964:
	#data bank1c.loc_8c1c9958
loc_8c198968:
	#data bank1c.loc_8C1C60E0
loc_8c19896c:
	#data bank18.loc_8C1859A0
loc_8c198970:
	#data bank18.loc_8C1859B2
loc_8c198974:
	#data bank18.loc_8C185C7A

;==============================================
loc_8c198978:
	mov 0x01,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

;==============================================
loc_8c198984:
	mov.l @(loc_8c198990,pc),r7 ; r7 set to 0x00
	mov.l @(loc_8c198994,pc),r0 ; r0 set to 0x8C0000B8
	mov.l @r0,r0 ; r0 ??
	jmp @r0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c198990:
	#data 0x00000000
loc_8c198994:
	#data 0x8C0000B8

;==============================================
loc_8c198998:
	mov.l @(loc_8c1989A4,pc),r7 ; r7 set to 0x01
	mov.l @(loc_8c1989A8,pc),r0 ; r0 set to 0x8C0000B8
	mov.l @r0,r0 ; r0 ??
	jmp @r0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1989A4:
	#data 0x00000001
loc_8c1989A8:
	#data 0x8C0000B8

;==============================================
loc_8c1989AC:
	mov.l @(loc_8c1989B8,pc),r7 ; r7 set to 0x02
	mov.l @(loc_8c1989BC,pc),r0 ; r0 set to 0x8C0000B8
	mov.l @r0,r0 ; r0 ??
	jmp @r0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c1989B8:
	#data 0x00000002
loc_8c1989BC:
	#data 0x8C0000B8

;==============================================
loc_8c1989C0:
	mov.l @(loc_8c1989CC,pc),r7 ; r7 set to 0x03
	mov.l @(loc_8c1989D0,pc),r0 ; r0 set to 0x8C0000B8
	mov.l @r0,r0 ; r0 ??
	jmp @r0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1989CC:
	#data 0x00000003
loc_8c1989D0:
	#data 0x8C0000B8

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c198A08:
	#data 0x0000FFFF
loc_8c198A0C:
	#data bank1c.loc_8c1c6100

;==============================================
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

loc_8c198a70:
	mov.b @r14,r0
	and 0xF3,r0

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

loc_8c198aa6:
	mov r4,r0
	nop
	cmp/eq 0x0C,r0
	bt loc_8c198ab2
	mov 0x10,r2
	or r2,r6

loc_8c198AB2:
	mov.l @r15,r3
	add 0x04,r15
	mov.b r6,@r3
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c198ABC:
	#data 0x00FF
loc_8c198ABE:
	#data 0x00FE
	#align4

loc_8c198AC0:
	#data 0x8C34B141
loc_8c198AC4:
	#data 0x8C34B140
loc_8c198AC8:
	#data 0x8C34AF50
loc_8c198ACC:
	#data bank1c.loc_8c1c6300

;==============================================
loc_8c198AD0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(0x1EC,PC),r14
	mov.l @(0x1E4,PC),r10
	add 0xFC,r15
	mov.b r13,@r15
	mov r10,r0
	nop
	add 0x17,r0
	mov.b @r0,r0
	extu.b r0,r0
	and 0x30,r0
	cmp/eq 0x10,r0
	bf.s loc_8c198b08
	mov.b @(0xE,r10),r0
	mov.l @(0x1D4,PC),r3
	mov 0x02,r1
	mov.w @r3,r2
	extu.w r2,r2
	cmp/ge r1,r2
	bt loc_8c198b0c

loc_8c198B08:
	mov 0x7F,r3
	and r3,r13

loc_8c198B0C:
	extu.b r0,r0
	tst 0x02,r0
	bt loc_8c198b32
	mov r14,r0
	nop
	add 0x20,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x40,r0
	bt loc_8c198b2e
	mov r14,r0
	nop
	add 0x1F,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x02,r0
	bf loc_8c198b32

loc_8c198B2E:
	bra loc_8c198b34
	mov 0x01,r9

loc_8c198B32:
	mov 0x00,r9

loc_8c198B34:
	mov.l @(0x1A0,PC),r2
	extu.b r13,r11
	mov.b @r2,r3
	extu.b r3,r3
	cmp/eq r3,r11
	bt loc_8c198b46
	mov.b @(0x7,r14),r0
	or 0x08,r0
	mov.b r0,@(0x7,r14)

loc_8c198B46:
	mov.l @(0x194,PC),r8
	mov.b @(0x7,r14),r0
	extu.b r0,r0
	tst 0x01,r0
	bt loc_8c198b6a
	mov.l @(0x190,PC),r3
	mov.l @(0x18C,PC),r2
	jsr @r3
	mov.l @r2,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c198b62
	bra loc_8c198dd4

	nop

loc_8c198B62:
	jsr @r8
	mov r13,r4
	bra loc_8c198dd4

	nop

loc_8c198B6A:
	mov r14,r0
	nop
	add 0x16,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c198b7c
	bra loc_8c198dd4

	nop

loc_8c198B7C:
	mov.b @(0x6,r14),r0
	extu.b r0,r0
	tst 0x01,r0
	bt loc_8c198b88
	bra loc_8c198dd4

	nop

loc_8c198B88:
	mov.l @(0x15C,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x40,r0
	bt loc_8c198b96
	bra loc_8c198dd4

	nop

loc_8c198B96:
	mov.b @(0x6,r14),r0
	extu.b r0,r0
	tst 0x04,r0
	bt loc_8c198bac
	bsr loc_8c198e04
	mov r13,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c198bac
	bra loc_8c198dd4

	nop

loc_8c198BAC:
	mov r14,r3
	add 0x15,r3
	mov.b @r3,r0
	and 0xDF,r0
	mov.b r0,@r3
	mov.l @(0x11C,PC),r12
	mov r10,r0
	nop
	add 0x1F,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c198c06
	mov.l @(0x10C,PC),r3
	mov 0x02,r1
	mov.w @r3,r2
	extu.w r2,r2
	cmp/ge r1,r2
	bt loc_8c198c06
	mov r11,r0
	nop
	cmp/eq 0x61,r0
	bt loc_8c198c06
	mov r11,r0
	nop
	cmp/eq 0x41,r0
	bt loc_8c198c06
	mov.l @(0xF0,PC),r2
	mov.w @r2,r3
	tst r3,r3
	bt loc_8c198c02
	mov r11,r0
	nop
	cmp/eq 0x74,r0
	bt loc_8c198c06
	mov r11,r0
	nop
	cmp/eq 0x54,r0
	bt loc_8c198c06
	mov r11,r0
	nop
	cmp/eq 0x2F,r0
	bt loc_8c198c06

loc_8c198C02:
	bra loc_8c198dd2

	mov 0x00,r2

loc_8c198C06:
	mov r10,r0
	nop
	add 0x1F,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x10,r0
	bf loc_8c198c2a
	mov.w @r12,r2
	tst r2,r2
	bf loc_8c198c2a
	mov.l @(0xD0,PC),r2
	jsr @r2
	mov 0x00,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c198c2a
	bra loc_8c198dd4

	nop

loc_8c198C2A:
	mov.b @(0x5,r10),r0
	mov.w @r12,r5
	extu.b r0,r0
	cmp/eq r0,r11
	bf.s loc_8c198c82
	extu.w r5,r5
	mov r14,r0
	nop
	add 0x20,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x40,r0
	bt loc_8c198c50
	tst r5,r5
	bf loc_8c198c4c
	bra loc_8c198dd4

	nop

loc_8c198C4C:
	bra loc_8c198c5a
	nop

loc_8c198C50:
	mov 0x02,r2
	cmp/gt r2,r5
	bt loc_8c198c5a
	bra loc_8c198dd4

	nop

loc_8c198C5A:
	mov.w @r12,r1
	exts.b r9,r9
	tst r9,r9
	add 0xFF,r1
	bf.s loc_8c198c6a
	mov.w r1,@r12
	bra loc_8c198dd4

	nop

loc_8c198C6A:
	mov r10,r4
	add 0x05,r4
	mov.l r4,@r15
	jsr @r8
	mov.b @r4,r4
	jsr @r8
	mov 0x20,r4
	mov.l @r15,r4
	jsr @r8
	mov.b @r4,r4
	bra loc_8c198dd4

	nop

loc_8c198C82:
	mov 0x7F,r3
	mov.l @(0x68,PC),r4
	cmp/ge r3,r5
	bf loc_8c198c9a
	mov.b @r4,r1
	extu.b r1,r1
	cmp/eq r1,r11
	bt loc_8c198c9a
	mov.w @r12,r1
	mov.b @r4,r13
	add 0x02,r1
	mov.w r1,@r12

loc_8c198C9A:
	mov.b @r4,r3
	extu.b r13,r11
	extu.b r3,r3
	cmp/eq r3,r11
	bf loc_8c198d18
	mov.b @(0x3,r10),r0
	mov r14,r3
	add 0x14,r3
	mov.b r0,@r4
	mov.b @r3,r0
	and 0xF7,r0
	mov.b r0,@r3
	mov r14,r0
	nop
	add 0x20,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x40,r0
	bt loc_8c198cf4
	mov r14,r3
	add 0x20,r3
	mov.b @r3,r0
	or 0x80,r0
	bra loc_8c198d18
	mov.b r0,@r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c198CCC:
#data 0x8C34AF50
loc_8c198CD0:
	#data 0x8C34B288
loc_8c198CD4:
	#data 0x8C34B034
loc_8c198CD8:
	#data 0x8C34B037
loc_8c198CDC:
	#data bank1a.loc_8c1aEC3A
loc_8c198Ce0:
	#data 0x8C34B138
loc_8c198CE4:
	#data bank1b.loc_8c1b3F0C
loc_8c198CE8:
	#data 0x8C34AF81
loc_8c198CEC:
	#data bank1a.loc_8c1a10A2
loc_8c198Cf0:
	#data 0x8C34B036

;==============================================
loc_8c198CF4:
	mov r14,r3
	add 0x16,r3
	mov.b @r3,r0
	and 0x7F,r0
	mov.b r0,@r3
	mov.b @(0x7,r14),r0
	or 0x01,r0
	mov.b r0,@(0x7,r14)
	mov.b @(0x6,r14),r0
	exts.b r9,r3
	tst r3,r3
	or 0x40,r0
	bt.s loc_8c198d18
	mov.b r0,@(0x6,r14)
	mov.l @(0xDC,PC),r2
	mov.l @(0xD8,PC),r4
	jsr @r2
	mov 0x0D,r5

loc_8c198D18:
	mov.w @r12,r4
	mov.w @(0xCA,PC),r3
	extu.w r4,r4
	cmp/gt r3,r4
	bt loc_8c198dd4

	mov r14,r0
	nop
	add 0x1F,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x02,r0
	bf loc_8c198d60

	mov r14,r0
	nop
	add 0x14,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x20,r0
	bf loc_8c198d60

	exts.b r9,r2
	tst r2,r2
	bt loc_8c198d60
	mov.b @(0x6,r14),r0
	extu.b r0,r0
	tst 0x02,r0
	bf loc_8c198d60
	mov 0x02,r2
	cmp/ge r2,r4
	bt loc_8c198d5c
	mov.l @(0xA0,PC),r3
	jsr @r3
	mov.b @r15,r4
	bra loc_8c198d60
	nop

loc_8c198D5C:
	jsr @r8
	mov r13,r4

loc_8c198D60:
	mov 0x61,r3
	cmp/ge r3,r11
	bf loc_8c198d78
	mov 0x7A,r1
	cmp/gt r1,r11
	bt loc_8c198d78
	mov.l @(0x88,PC),r2
	mov.b @r2,r0
	extu.b r0,r0
	cmp/eq r0,r11
	bt loc_8c198d78
	add 0xE0,r13

loc_8c198D78:
	mov r14,r0
	nop
	add 0x20,r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x40,r0
	bf loc_8c198dc6
	mov.l @(0x74,PC),r3
	mov.w @r3,r0
	extu.w r0,r0
	cmp/eq 0x01,r0
	bf loc_8c198dc6
	extu.b r13,r4
	mov r4,r0
	nop
	cmp/eq 0x41,r0
	bt loc_8c198dd4
	mov r4,r0
	nop
	cmp/eq 0x2F,r0
	bf loc_8c198dc6
	mov r14,r3
	add 0x16,r3
	mov.b @r3,r0
	and 0x7F,r0
	mov.b r0,@r3
	mov.b @(0x7,r14),r0
	or 0x01,r0
	mov.b r0,@(0x7,r14)
	mov.b @(0x6,r14),r0
	exts.b r9,r9
	tst r9,r9
	or 0x40,r0
	bt.s loc_8c198dc6
	mov.b r0,@(0x6,r14)
	mov.l @(0x30,PC),r2
	mov.l @(0x28,PC),r4
	jsr @r2
	mov 0x0D,r5

loc_8c198DC6:
	mov.w @r12,r3
	mov.l @(0x34,PC),r0
	extu.w r3,r3
	mov.b r13,@(r0,r3)
	mov.w @r12,r2
	add 0x01,r2

loc_8c198DD2:
	mov.w r2,@r12

loc_8c198DD4:
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c198De8:
	#data 0x0080
	#align4

loc_8c198Dec:
	#data 0x8C34B138
loc_8c198DF0:
	#data bank1b.loc_8c1b3EEC
loc_8c198DF4:
	#data bank1a.loc_8c1a1120
loc_8c198DF8:
	#data 0x8C34B036
loc_8c198DFc:
	#data 0x8C34B034
loc_8c198e00:
	#data 0x8C34AFB3

;==============================================
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

loc_8c198e1a:
	mov.l @(loc_8C198EE4,pc),r7
	mov 0x30,r6
	mov r7,r0
	nop
	add 0x17,r0
	mov.b @r0,r0
	extu.b r0,r0
	and r6,r0
	cmp/eq 0x10,r0
	bt loc_8c198e32
	mov 0x7F,r2
	and r2,r4

loc_8c198e32:
	mov 0x61,r3
	extu.b r4,r5
	cmp/ge r3,r5
	bf loc_8c198e54
	mov 0x7A,r1
	cmp/gt r1,r5
	bt loc_8c198e54
	mov.l @(loc_8C198EE8,pc),r2
	mov.b @r2,r0
	extu.b r0,r0
	cmp/eq r0,r5
	bt loc_8c198e54
	mov.b @(0x05,r7),r0
	extu.b r0,r0
	cmp/eq r0,r5
	bt loc_8c198e54
	add 0xE0,r4

loc_8c198e54:
	mov.b @(0x05,r7),r0
	extu.b r4,r12
	mov.l @(loc_8C198EF0,pc),r14
	extu.b r0,r0
	mov.l @(loc_8C198EEC,pc),r13
	mov.b @r14,r5
	cmp/eq r0,r12
	bf/s loc_8c198ef4
	extu.b r5,r5
	mov 0x02,r2
	cmp/ge r2,r5
	bt loc_8c198e70
	bra loc_8c198fc2
	nop

loc_8c198e70:
	mov r5,r0
	nop
	cmp/eq 0x02,r0
	bf loc_8c198e7c
	bra loc_8c198fbe
	nop

loc_8c198e7c:
	mov.b @r14,r3
	add 0xFF,r3
	mov.b r3,@r14
	mov.b @r14,r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c198e90
	mov 0x01,r1
	bra loc_8c198fbe
	mov.b r1,@r11

loc_8c198e90:
	mov.b @r14,r12
	mov.w @(loc_8C198EDE,pc),r3
	bra loc_8c198e9a
	add r3,r12

loc_8c198e98:
	add 0xFF,r12

loc_8c198e9a:
	extu.b r12,r0
	mov.b @(r0,r13),r4
	extu.b r4,r4
	cmp/ge r6,r4
	bf loc_8c198eaa
	mov 0x39,r3
	cmp/gt r3,r4
	bf loc_8c198e98

loc_8c198eaa:
	mov r4,r0
	nop
	cmp/eq 0x3D,r0
	bt loc_8c198e98
	extu.b r12,r0
	add 0xFF,r0
	bsr loc_8c199186
	mov.b @(r0,r13),r4
	exts.b r0,r0
	tst r0,r0
	bt/s loc_8c198ec4
	mov 0x01,r3
	add 0xFF,r12

loc_8c198ec4:
	bra loc_8c198ed0
	mov.b r3,@r11

loc_8c198ec8:
	extu.b r12,r0
	mov.b @(r0,r13),r4
	bsr loc_8c198fe4
	add 0x01,r12

loc_8c198ed0:
	mov.b @r14,r3
	extu.b r12,r2
	extu.b r3,r3
	cmp/eq r3,r2
	bf loc_8c198ec8
	bra loc_8c198fbe
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C198EDE:
	#data 0x00FF
	#align4

loc_8c198ee0:
	#data 0x8C34B17A
loc_8C198EE4:
	#data 0x8C34AF50
loc_8C198EE8:
	#data 0x8C34B036
loc_8C198EEC:
	#data 0x8C34B150
loc_8C198EF0:
	#data 0x8C34B179

;==============================================
loc_8c198ef4:
	mov r12,r0
	nop
	cmp/eq 0x20,r0
	bt loc_8c198fbe
	mov r12,r0
	nop
	cmp/eq 0x2C,r0
	bt loc_8c198fbe
	mov 0x7E,r3
	cmp/gt r3,r12
	bt loc_8c198fbe
	mov 0x20,r1
	cmp/ge r1,r12
	bt loc_8c198f18
	mov r12,r0
	nop
	cmp/eq 0x0D,r0
	bf loc_8c198fbe

loc_8c198f18:
	mov r12,r0
	nop
	cmp/eq 0x0D,r0
	bf loc_8c198f2a
	mov.l @(loc_8C1990E0,pc),r3
	mov.b @r3,r2
	extu.b r2,r2
	cmp/eq r12,r2
	bf loc_8c198fbe

loc_8c198f2a:
	mov.b @r14,r0
	mov 0x29,r2
	add 0x01,r0
	mov.b r0,@r14
	add 0xFF,r0
	extu.b r0,r0
	mov.b r4,@(r0,r13)
	mov.b @r14,r3
	extu.b r3,r3
	cmp/gt r2,r3
	bt loc_8c198fc2
	mov.b @r14,r6
	extu.b r6,r6
	mov r6,r0
	nop
	cmp/eq 0x01,r0
	bf/s loc_8c198f5a
	mov r13,r5
	mov.b @r5,r0
	extu.b r0,r0
	cmp/eq 0x41,r0
	bf loc_8c198fc2
	bra loc_8c198fbe
	nop

loc_8c198f5a:
	cmp/eq 0x02,r0
	bf loc_8c198f76
	mov.b @(0x01,r5),r0
	extu.b r0,r0
	cmp/eq 0x54,r0
	bt loc_8c198fbe
	mov.b @(0x01,r5),r0
	extu.b r0,r0
	cmp/eq 0x41,r0
	bf loc_8c198fc2
	mov.b @r14,r3
	add 0xFF,r3
	bra loc_8c198fbe
	mov.b r3,@r14

loc_8c198f76:
	bsr loc_8c198fe4
	nop
	exts.b r0,r0
	tst r0,r0
	bt loc_8c198fc2
	mov.l @(loc_8C1990E0,pc),r2
	mov.b @r2,r3
	extu.b r3,r3
	cmp/eq r12,r3
	bf loc_8c198fbe
	mov 0x00,r5
	mov.b r5,@r11
	mov.l @(loc_8C1990E4,pc),r3
	mov.b @r3,r0
	or 0x20,r0
	mov.b r0,@r3
	mov.l @(loc_8C1990EC,pc),r6
	mov.l @(loc_8C1990E8,pc),r4
	bra loc_8c198fb0
	mov.w r5,@r4

loc_8c198f9e:
	mov.w @r4,r5
	extu.w r5,r5
	mov r5,r0
	nop
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r6)
	mov.w @r4,r2
	add 0x01,r2
	mov.w r2,@r4

loc_8c198fb0:
	mov.b @r14,r3
	add 0xFF,r3
	mov.b r3,@r14
	add 0x01,r3
	extu.b r3,r3
	tst r3,r3
	bf loc_8c198f9e

loc_8c198FBE:
	bra loc_8c198FD8
	mov 0x01,r0

loc_8c198FC2:
	bsr loc_8c199270
	nop
	mov.l @(0x128,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x04,r0
	bt loc_8c198fd6
	mov.l @(0x120,PC),r2
	jsr @r2
	nop

loc_8c198FD6:
	mov 0x00,r0

loc_8c198FD8:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c198FE4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l @(0x114,PC),r13
	sts.l pr,@-r15
	mov.b @r13,r0
	mov.l @(0x10C,PC),r12
	extu.b r0,r0
	mov.l @(0xFC,PC),r9
	mov.l @(0xFC,PC),r10
	cmp/eq 0x01,r0
	mov.l @(0xFC,PC),r11
	add 0xFC,r15
	bt.s loc_8c19903c
	mov r4,r14
	cmp/eq 0x02,r0
	bt loc_8c19907c

	cmp/eq 0x03,r0
	bt loc_8c1990c2
	cmp/eq 0x04,r0
	bf loc_8c199018
	bra loc_8c199110
	nop

loc_8c199018:
	cmp/eq 0x05,r0
	bf loc_8c199020
	bra loc_8c199136
	nop

loc_8c199020:
	cmp/eq 0x06,r0
	bf loc_8c199028
	bra loc_8c199162
	nop

loc_8c199028:
	cmp/eq 0x07,r0
	bf loc_8c199030
	bra loc_8c199172

	nop

loc_8c199030:
	cmp/eq 0x08,r0
	bf loc_8c199038
	bra loc_8c199172

	nop

loc_8c199038:
	bra loc_8c199172

	nop

loc_8c19903C:
	mov.l @(0xA0,PC),r2
	extu.b r14,r4
	mov.b @r2,r3
	extu.b r3,r3
	cmp/eq r4,r3
	bf loc_8c19904c
	bra loc_8c199172
	nop

loc_8c19904C:
	mov r4,r0
	nop
	cmp/eq 0x3F,r0
	bf loc_8c199058
	bra loc_8c199172
	nop

loc_8c199058:
	extu.b r14,r0
	cmp/eq 0x21,r0
	bf loc_8c199062
	bra loc_8c199172
	nop

loc_8c199062:
	extu.b r14,r0
	cmp/eq 0x3D,r0
	bf loc_8c19906e
	mov.l @(0xA0,PC),r3
	bra loc_8c19912e
	mov.b @r3,r2

loc_8c19906E:
	bsr loc_8c199186
	mov r14,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c19907c
	bra loc_8c199172
	nop

loc_8c19907C:
	mov 0x41,r2
	extu.b r14,r4
	cmp/ge r2,r4
	bt loc_8c199088
	bra loc_8c19916e
	nop

loc_8c199088:
	mov 0x5A,r1
	cmp/gt r1,r4
	bt loc_8c19916e
	extu.b r14,r4
	mov.l @r12,r3
	add 0xBF,r4
	shll r4
	extu.b r4,r5
	add r3,r5
	mov.b @r5,r2
	tst r2,r2
	bt loc_8c19916e
	mov.b @(0x1,r5),r0
	mov.b r0,@r10
	mov.b @r10,r3
	tst r3,r3
	bf loc_8c1990bc
	mov.l @r12,r1
	cmp/eq r1,r9
	bf loc_8c199172
	extu.b r4,r0
	cmp/eq 0x24,r0
	bf loc_8c199172
	mov 0x04,r2
	bra loc_8c199172
	mov.b r2,@r13

loc_8c1990BC:
	mov 0x03,r1
	bra loc_8c199172
	mov.b r1,@r13

loc_8c1990C2:
	mov r15,r5
	bsr loc_8c1991d6
	mov r14,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c199172

	mov.b @r10,r3
	mov.b @r15,r2
	cmp/hi r3,r2
	bt loc_8c19916e

	mov 0x02,r3
	mov.l r9,@r12
	bra loc_8c19903c

	mov.b r3,@r13

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c1990e0:
	#data 0x8C34B036
loc_8c1990e4:
	#data 0x8C34B29D
loc_8c1990e8:
	#data 0x8C34B034
loc_8c1990ec:
	#data 0x8C34AFB3
loc_8c1990f0:
	#data 0x8C34B28E
loc_8c1990F4:
	#data bank1a.loc_8c1aFCB8
loc_8c1990F8:
	#data bank1c.loc_8c1c633C
loc_8c1990FC:
	#data 0x8C34B17C
loc_8c199100:
	#data 0x8C34B17B
loc_8c199104:
	#data 0x8C34B180
loc_8c199108:
	#data 0x8C34B17A
loc_8c19910c:
	#data 0x8C34AFA9

;==============================================
loc_8c199110:
	mov r15,r5
	bsr loc_8c1991d6
	mov r14,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c199172
	extu.b r14,r0
	cmp/eq 0x3D,r0
	bf loc_8c19915e

	mov.b @r15,r2
	mov 0x33,r3
	extu.b r2,r2
	cmp/gt r3,r2
	bt loc_8c19916e

	mov.b @r15,r2

loc_8c19912E:
	mov 0x05,r3
	mov.b r2,@r11
	bra loc_8c199172
	mov.b r3,@r13

loc_8c199136:
	mov r15,r5
	bsr loc_8c1991d6
	mov r14,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c199172

	mov.b @r11,r5
	mov.l @(0xA4,PC),r0
	extu.b r5,r5
	mov.b @r15,r4
	mov.b @(r0,r5),r3
	extu.b r4,r4
	extu.b r3,r3
	cmp/ge r3,r4
	bf loc_8c19916e
	mov.l @(0x98,PC),r0
	mov.b @(r0,r5),r3
	extu.b r3,r3
	cmp/gt r3,r4
	bt loc_8c19916e

loc_8c19915E:
	bra loc_8c19903c
	mov.l r9,@r12

loc_8c199162:
	extu.b r14,r0
	cmp/eq 0x46,r0
	bf loc_8c19916e

	mov 0x07,r2
	bra loc_8c199172

	mov.b r2,@r13

loc_8c19916E:
	bra loc_8c199174
	mov 0x00,r0

loc_8c199172:
	mov 0x01,r0

loc_8c199174:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c199186:
	extu.b r4,r0
	mov.l @(0x68,PC),r5
	cmp/eq 0x25,r0
	bt loc_8c1991ac
	cmp/eq 0x26,r0
	bt loc_8c1991a6
	cmp/eq 0x2A,r0
	bt loc_8c1991b2
	cmp/eq 0x2B,r0
	bt loc_8c1991c4
	cmp/eq 0x40,r0
	bt loc_8c1991be
	cmp/eq 0x5C,r0
	bt loc_8c1991b8
	bra loc_8c1991cc
	nop

loc_8c1991A6:
	mov.l @(0x50,PC),r3
	bra loc_8c1991d0
	mov.l r3,@r5

loc_8c1991AC:
	mov.l @(0x4C,PC),r1
	bra loc_8c1991ba

	nop

loc_8c1991B2:
	mov.l @(0x4C,PC),r2
	bra loc_8c1991c0
	nop

loc_8c1991B8:
	mov.l @(0x48,PC),r1

loc_8c1991BA:
	bra loc_8c1991d0
	mov.l r1,@r5

loc_8c1991BE:
	mov.l @(0x48,PC),r2

loc_8c1991C0:
	bra loc_8c1991d0
	mov.l r2,@r5

loc_8c1991C4:
	mov.l @(0x44,PC),r3
	mov 0x06,r1
	bra loc_8c1991d0
	mov.b r1,@r3

loc_8c1991CC:
	rts
	mov 0x00,r0

;==============================================
loc_8c1991D0:
	mov 0x01,r0
	rts
	nop

;==============================================
loc_8c1991D6:
	mov 0x30,r7
	mov.l r14,@-r15
	extu.b r4,r6
	mov.l r13,@-r15
	cmp/ge r7,r6
	bf loc_8c199210
	mov 0x39,r2
	cmp/gt r2,r6
	bt loc_8c199210
	bra loc_8c19926a
	mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1991EC:
	#data bank1c.loc_8c1c6B50
loc_8c1991F0:
	#data bank1c.loc_8c1c6BA0
loc_8c1991F4:
	#data 0x8C34B180
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
loc_8c19920c:
	#data 0x8C34B17A

;==============================================
loc_8c199210:
	mov.l @(0xE0,PC),r2
	mov.l @(0xE4,PC),r6
	mov.b @r2,r4
	mov.w @(0xD4,PC),r3
	bra loc_8c19921e
	add r3,r4

loc_8c19921C:
	add 0xFF,r4

loc_8c19921E:
	extu.b r4,r0
	mov.b @(r0,r6),r14
	extu.b r14,r14
	cmp/ge r7,r14
	bf loc_8c19922e
	mov 0x39,r3
	cmp/gt r3,r14
	bf loc_8c19921c

loc_8c19922E:
	add 0x01,r4
	extu.b r4,r0
	mov.b @(r0,r6),r3
	extu.b r3,r0
	cmp/eq 0x30,r0
	bt loc_8c19922e
	mov.w @(0xB2,PC),r13
	bra loc_8c199256
	mov 0x00,r14

loc_8c199240:
	mov r14,r2
	mov r14,r1
	shll2 r2
	extu.b r4,r0
	add r1,r2
	mov.b @(r0,r6),r3
	shll r2
	add r2,r3
	add r13,r3
	add 0x01,r4
	mov r3,r14

loc_8c199256:
	extu.b r4,r0
	mov.b @(r0,r6),r1
	extu.b r1,r1
	cmp/ge r7,r1
	bf loc_8c199266
	mov 0x39,r3
	cmp/gt r3,r1
	bf loc_8c199240

loc_8c199266:
	mov 0x01,r0
	mov.b r14,@r5

loc_8c19926A:
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
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

;==============================================
loc_8c199284:
	mov.l r14,@-r15
	mov.l @(0x80,PC),r0
	sts.l pr,@-r15
	mov.b @r0,r1
	tst r1,r1
	bt loc_8c1992aa
	mov.l @(0x78,PC),r4
	mov.l @r4,r3
	add 0x01,r3
	mov.l r3,@r4
	mov.l @(0x74,PC),r4
	mov.b @r4,r0
	add 0x01,r0
	mov.b r0,@r4
	extu.b r0,r0
	cmp/eq 0x0A,r0
	bf loc_8c19935e
	mov 0x00,r2
	mov.b r2,@r4

loc_8c1992AA:
	mov.l @(0x68,PC),r14
	mov r14,r4
	add 0x10,r4
	mov.b @r4,r0
	extu.b r0,r0
	tst 0x10,r0
	bt loc_8c199356
	mov.b @r4,r0
	extu.b r0,r0
	tst 0x20,r0
	bf loc_8c199328
	mov.l @(0x54,PC),r2
	jsr @r2
	mov 0x00,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c199356
	mov r14,r3
	add 0x10,r3
	mov.b @r3,r0
	or 0x20,r0
	mov.b r0,@r3
	mov.l @(0x44,PC),r5
	mov.l @(0x44,PC),r4
	mov.b @r5,r5
	mov.l @(0x44,PC),r2
	extu.b r5,r5
	mov r5,r3
	shll2 r5
	add r3,r5
	jsr @r2
	shll r5
	bra loc_8c199356
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1992ee:
	#data 0x00FE
loc_8c1992f0:
	#data 0x00D0
	#align4

loc_8c1992F4:
	#data 0x8C34B179
loc_8c1992F8:
	#data 0x8C34B150
loc_8c1992FC:
	#data 0x8C34B17A
loc_8c199300:
	#data bank1c.loc_8c1c633C
loc_8c199304:
	#data 0x8C34B180
loc_8c199308:
	#data 0x8C34B148
loc_8c19930c:
	#data 0x8C34B144
loc_8c199310:
	#data 0x8C34B142
loc_8c199314:
	#data 0x8C34B288
loc_8c199318:
	#data bank1a.loc_8c1a10A2
loc_8c19931c:
	#data 0x8C34AF59
loc_8c199320:
	#data 0x8C34B13C
loc_8c199324:
	#data bank1b.loc_8c1b3EEC

;==============================================
loc_8c199328:
	mov.l @(0xA8,PC),r3
	mov.l @(0xA4,PC),r2
	jsr @r3
	mov.l @r2,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c199356
	mov.l @(0xA0,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(0x9C,PC),r0
	mov.b @r0,r0
	extu.b r0,r0
	tst 0x02,r0
	bt loc_8c19934c
	mov.l @(0x98,PC),r2
	jsr @r2
	mov 0x00,r4

loc_8c19934C:
	mov r14,r3
	add 0x10,r3
	mov.b @r3,r0
	and 0xCE,r0
	mov.b r0,@r3

loc_8c199356:
	lds.l @r15+,pr
	mov.l @(0x88,PC),r2
	jmp @r2
	mov.l @r15+,r14

loc_8c19935E:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c199364:
	mov.l @(0x84,PC),r6
	sts.l pr,@-r15
	mov.b @r6,r0
	mov.l @(0x7C,PC),r7
	extu.b r0,r0
	cmp/eq 0x10,r0
	bf.s loc_8c19937a
	mov r6,r4
	mov.b @(0xE,r7),r0
	or 0x10,r0
	mov.b r0,@(0xE,r7)

loc_8c19937A:
	mov.b @r4,r0
	mov.l @(0x70,PC),r3
	extu.b r0,r0
	mov.b @r3,r5
	cmp/eq 0x05,r0
	bf.s loc_8c19939c
	extu.b r5,r5
	mov r5,r0
	nop
	cmp/eq 0x04,r0
	bf loc_8c1993c8
	mov.l @(0x60,PC),r2
	jsr @r2
	nop
	mov.l @(0x60,PC),r3
	jmp @r3
	lds.l @r15+,pr

loc_8c19939C:
	cmp/eq 0x06,r0
	bf loc_8c1993b4
	mov r5,r0
	nop
	cmp/eq 0x04,r0
	bf loc_8c1993c8
	mov.l @(0x50,PC),r1
	mov.b @r1,r2
	tst r2,r2
	bt loc_8c1993c2
	bra loc_8c1993c8
	nop

loc_8c1993B4:
	mov.b @r4,r0
	extu.b r0,r0
	cmp/eq 0x13,r0
	bf loc_8c1993c8
	mov.l @(0x40,PC),r1
	mov 0x13,r2
	mov.b r2,@r1

loc_8c1993C2:
	mov.b @(0x7,r7),r0
	or 0x80,r0
	mov.b r0,@(0x7,r7)

loc_8c1993C8:
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c1993d0:
	#data 0x8C34B13C
loc_8c1993D4:
	#data bank1b.loc_8c1b3F0C
loc_8c1993D8:
	#data bank1a.loc_8c1a122A
loc_8c1993Dc:
	#data 0x8C34AF65
loc_8c1993E0:
	#data bank1a.loc_8c1a124C
loc_8c1993E4:
	#data bank1b.loc_8c1b3E34
loc_8c1993E8:
	#data 0x8C34B288
loc_8c1993Ec:
	#data 0x8C34B301
loc_8c1993F0:
	#data 0x8C34B11C
loc_8c1993F4:
	#data bank1b.loc_8c1b3A32
loc_8c1993F8:
	#data bank1a.loc_8c1aF91A
loc_8c1993Fc:
	#data 0x8C34B130
loc_8c199400:
	#data 0x8C34AF7D

;==============================================
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

;==============================================
loc_8c19942E:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l @(0xEC,PC),r3
	mov.w @(0xDE,PC),r1
	mov.l @r3,r0
	sts.l pr,@-r15
	mov.w @(r0,r1),r0
	extu.w r0,r0
	tst 0x80,r0
	add 0xF8,r15
	bf loc_8c19949e
	mov.l @(0xDC,PC),r2
	jsr @r2
	nop
	mov.l @(0xE0,PC),r4
	mov.l @(0xD8,PC),r13
	jsr @r13
	nop
	mov.l @(0xE0,PC),r12
	mov r15,r14
	mov.l @(0xD8,PC),r11
	mov 0x0A,r5
	mov.b @(0x1,r12),r0
	mov r14,r7
	mov 0x02,r6
	jsr @r11
	mov r0,r4
	jsr @r13
	mov r14,r4
	mov.l @(0xCC,PC),r4
	jsr @r13
	nop
	mov.b @(0x2,r12),r0
	mov 0x0A,r5
	mov r14,r7
	mov 0x02,r6
	jsr @r11
	mov r0,r4
	jsr @r13
	mov r14,r4
	mov.l @(0xB8,PC),r4
	jsr @r13
	nop
	mov.b @(0x3,r12),r0
	mov 0x0A,r5
	mov r14,r7
	mov 0x02,r6
	jsr @r11
	mov r0,r4
	jsr @r13
	mov r14,r4
	mov.l @(0x8C,PC),r3
	jsr @r3
	nop

loc_8c19949E:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
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

loc_8c1994D4:
	mov.l @(0x70,PC),r3
	extu.b r14,r11
	add r10,r11
	jsr @r3
	mov.b @r11,r4
	exts.b r0,r0
	tst r0,r0
	bt.s loc_8c1994ee
	add 0x01,r14
	mov.b @r11,r3
	extu.b r12,r0
	add 0x01,r12
	mov.b r3,@(r0,r13)

loc_8c1994ee:
	extu.b r14,r0
	mov.b @r8,r3
	mov.b @(r0,r10),r2
	extu.b r3,r3
	extu.b r2,r2
	cmp/eq r2,r3
	bt loc_8c199504
	mov 0x28,r2
	extu.b r12,r3
	cmp/ge r2,r3
	bf loc_8c1994d4

loc_8c199504:
	extu.b r12,r12
	mov r12,r0
	nop
	mov.b r9,@(r0,r13)
	bsr loc_8c199c6c
	mov r13,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c19954c
	bra loc_8c1995c4
	mov 0x03,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19951a:
	#data 0x0090
	#align4

loc_8c19951c:
	#data bank1b.loc_8C1B3F0C
loc_8c199520:
	#data 0x8C34B14C
loc_8c199524:
	#data 0x8C34B1F8
loc_8c199528:
	#data bank1a.loc_8C1AEE08
loc_8c19952c:
	#data bank1a.loc_8C1AECDC
loc_8c199530:
	#data bank1c.loc_8C1C6478
loc_8c199534:
	#data bank1a.loc_8C1AF1A4
loc_8c199538:
	#data 0x8C347930
loc_8c19953c:
	#data bank1c.loc_8C1C6484
loc_8c199540:
	#data 0x8C34B036
loc_8c199544:
	#data 0x8C347943
loc_8c199548:
	#data loc_8C19A62A

;==============================================
loc_8c19954c:
	bsr loc_8c199e24
	mov r13,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c19955a
	bra loc_8c1995c4
	mov 0x02,r0

loc_8c19955a:
	mov.l @(loc_8C19964C,pc),r6
	mov.w @(loc_8C199640,pc),r1
	mov.l @r6,r0
	mov.w @(r0,r1),r0
	extu.w r0,r0
	tst 0x10,r0
	bf loc_8c19957c
	mov.l @(loc_8C199650,pc),r5
	mov.l @(loc_8C199654,pc),r4
	mov.b @r5,r2
	mov.b r2,@r4
	mov.b @(0x01,r5),r0
	mov.b r0,@(0x01,r4)
	mov.b @(0x02,r5),r0
	mov.b r0,@(0x02,r4)
	mov.b @(0x03,r5),r0
	mov.b r0,@(0x03,r4)

loc_8c19957c:
	mov.w @(loc_8C199640,pc),r0
	mov.l @r6,r4
	mov.w @(r0,r4),r4
	mov 0x03,r0
	extu.w r4,r4
	and r4,r0
	cmp/eq 0x02,r0
	bt loc_8c199598
	mov 0x0C,r0
	and r4,r0
	shar r0
	shar r0
	cmp/eq 0x02,r0
	bf loc_8c1995c2

loc_8c199598:
	mov 0x20,r2
	tst r4,r2
	bf loc_8c1995c2
	mov.l @(loc_8C199658,pc),r3
	mov 0x32,r2
	mov.l @(loc_8C199650,pc),r5
	mov.b @r3,r4
	mov.l @(loc_8C19965C,pc),r1
	extu.b r4,r4
	mov.b @r5,r3
	muls.w r2,r4
	sts macl,r4
	exts.w r4,r4
	add r1,r4
	mov.b r3,@r4
	mov.b @(0x01,r5),r0
	mov.b r0,@(0x01,r4)
	mov.b @(0x02,r5),r0
	mov.b r0,@(0x02,r4)
	mov.b @(0x03,r5),r0
	mov.b r0,@(0x03,r4)

loc_8c1995c2:
	mov 0x01,r0

loc_8c1995c4:
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
loc_8c1995d6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b r4,@r15
	mov.l @(0x68,PC),r13
	mov.w @(0x5C,PC),r0
	mov.l @r13,r3
	mov.b @r15,r14
	mov.w @(r0,r3),r2
	extu.b r14,r14
	extu.w r2,r2
	tst r14,r2
	bt loc_8c1995f6
	bsr loc_8c19a40e
	nop

loc_8c1995f6:
	mov.w @(0x4A,PC),r0
	mov.l @r13,r3
	mov.w @(r0,r3),r2
	extu.w r2,r2
	tst r14,r2
	bt loc_8c199606
	bsr loc_8c199714
	nop

loc_8c199606:
	mov.w @(0x3C,PC),r0
	mov.l @r13,r3
	mov.w @(r0,r3),r2
	extu.w r2,r2
	tst r14,r2
	bt loc_8c199616
	bsr loc_8c1998c8
	nop

loc_8c199616:
	mov.w @(0x2E,PC),r0
	mov.l @r13,r3
	mov.w @(r0,r3),r2
	extu.w r2,r2
	tst r2,r14
	bt loc_8c199626
	bsr loc_8c199836
	nop

loc_8c199626:
	mov.b @r15,r3
	tst r3,r3
	bf loc_8c199636
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c1999a6
	mov.l @r15+,r14

loc_8c199636:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C199640:
	#data 0x0090
loc_8C199642:
	#data 0x009C
loc_8C199644:
	#data 0x009E
loc_8C199646:
	#data 0x00A0
loc_8C199648:
	#data 0x00A2
	#align4

loc_8C19964C:
	#data 0x8C34B1F8
loc_8C199650:
	#data 0x8C347928
loc_8C199654:
	#data 0x8C347938
loc_8C199658:
	#data 0x8C34793D
loc_8C19965C:
	#data 0x8C347182

;==============================================
loc_8C199660:
	mov.l r14,@-r15
	extu.b r4,r5
	mov.l r13,@-r15
	tst r5,r5
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	bf loc_8c199678
	bsr loc_8c19a4c0
	nop
	bra loc_8c1996fa
	nop

loc_8C199678:
	mov r5,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c1996e8
	mov.l @(0x100,PC),r3
	jsr @r3
	nop
	mov.l @(0x104,PC),r2
	mov r15,r14
	mov.l @(0xFC,PC),r12
	mov 0x0A,r5
	mov r14,r7
	mov 0x03,r6
	jsr @r12
	mov.b @r2,r4
	mov.l @(0xF8,PC),r13
	jsr @r13
	mov r14,r4
	mov.l @(0xF4,PC),r4
	jsr @r13
	nop
	mov.l @(0xF4,PC),r3
	mov 0x0A,r5
	mov r14,r7
	mov 0x02,r6
	jsr @r12
	mov.b @r3,r4
	jsr @r13
	mov r14,r4
	mov.l @(0xE8,PC),r4
	jsr @r13
	nop
	mov.l @(0xE4,PC),r2
	mov 0x0A,r5
	mov r14,r7
	mov 0x02,r6
	jsr @r12
	mov.b @r2,r4
	jsr @r13
	mov r14,r4
	mov.l @(0xD0,PC),r4
	jsr @r13
	nop
	mov.l @(0xD4,PC),r3
	mov 0x0A,r5
	mov r14,r7
	mov 0x02,r6
	jsr @r12
	mov.b @r3,r4
	jsr @r13
	mov r14,r4
	mov.l @(0xA4,PC),r2
	jsr @r2
	nop
	bra loc_8c1996fa
	nop

loc_8c1996e8:
	cmp/eq 0x4B,r0
	bf loc_8c1996f4
	bsr loc_8c199836
	nop
	bra loc_8c1996fa
	nop

loc_8c1996f4:
	mov.l @(0xB0,PC),r2
	mov 0x02,r3
	mov.b r3,@r2

loc_8c1996fa:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c199706:
	mov.w @(loc_8c199780,pc),r0 ; r0 set to 0x7D0
	mov.l @(loc_8c1997AC,pc),r1 ; r1 set to 0x8C347158
	rts
	mov.l r1,@r4

;==============================================
loc_8c19970E:
	mov.l @(loc_8c1997B0,pc),r3 ; r3 set to 0x8C347928
	rts
	mov.l r3,@r4

;==============================================
loc_8c199714:
	mov.l @(loc_8c1997B0,pc),r5 ; r5 set to 0x8C347928
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x03,r5)
	mov.b r0,@(0x02,r5)
	mov.b r0,@(0x01,r5)
	rts
	mov.b r0,@r5

;==============================================
loc_8c199722:
	mov.l @(loc_8c1997b0,pc),r4
	mov 0x3C,r6
	mov.b @(0x03,r4),r0
	add 0x01,r0
	mov.b r0,@(0x03,r4)
	mov.b @(0x03,r4),r0
	cmp/ge r6,r0
	bf loc_8c199766
	mov 0x00,r5
	mov r5,r0
	nop
	mov.b r0,@(0x03,r4)
	mov.b @(0x02,r4),r0
	add 0x01,r0
	mov.b r0,@(0x02,r4)
	mov.b @(0x02,r4),r0
	cmp/ge r6,r0
	bf loc_8c199766
	mov r5,r0
	nop
	mov.b r0,@(0x02,r4)
	mov 0x18,r3
	mov.b @(0x01,r4),r0
	add 0x01,r0
	mov.b r0,@(0x01,r4)
	mov.b @(0x01,r4),r0
	cmp/ge r3,r0
	bf loc_8c199766
	mov r5,r0
	nop
	mov.b r0,@(0x01,r4)
	mov.b @r4,r2
	add 0x01,r2
	mov.b r2,@r4

loc_8c199766:
	mov.l @(loc_8C1997A4,pc),r3
	mov.b @(0x03,r4),r0
	mov.b r0,@r3
	mov.l @(loc_8C1997A0,pc),r2
	mov.b @(0x02,r4),r0
	mov.b r0,@r2
	mov.l @(loc_8C199798,pc),r1
	mov.b @(0x01,r4),r0
	mov.b r0,@r1
	mov.l @(loc_8C19978C,pc),r0
	mov.b @r4,r3
	rts
	mov.b r3,@r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c199780:
	#data 0x07D0
	#align4

loc_8c199784:
	#data bank1a.loc_8C1AEE08
loc_8c199788:
	#data bank1a.loc_8C1AF1A4
loc_8C19978C:
	#data 0x8C34793E
loc_8c199790:
	#data bank1a.loc_8C1AECDC
loc_8c199794:
	#data bank1c.loc_8C1C6488
loc_8C199798:
	#data 0x8C34793F
loc_8c19979c:
	#data bank1c.loc_8C1C6484
loc_8C1997A0:
	#data 0x8C347940
loc_8C1997A4:
	#data 0x8C347941
loc_8c1997a8:
	#data 0x8C34AFA8
loc_8c1997ac:
	#data 0x8C347158
loc_8c1997b0:
	#data 0x8C347928

;==============================================
loc_8c1997b4:
	mov.b @(0x7,r15),r0
	mov 0xFF,r6
	mov.l @(0x2EC,PC),r4
	mov r0,r3
	mov.b @(0x3,r15),r0
	sub r3,r0
	mov.b r0,@(0x3,r4)
	exts.b r0,r0
	cmp/pz r0
	bt.s loc_8c1997d4
	mov 0x00,r5
	mov.b @(0x3,r4),r0
	add 0x3C,r0
	mov.b r0,@(0x3,r4)
	bra loc_8c1997d8

	mov r6,r0

loc_8c1997d4:
	mov r5,r0
	nop

loc_8c1997d8:
	mov.b r0,@(0x2,r4)
	mov r15,r1
	mov.b @(0x2,r15),r0
	add 0x06,r1
	mov.b @r1,r2
	mov r0,r3
	mov.b @(0x2,r4),r0
	add r3,r0
	sub r2,r0
	mov.b r0,@(0x2,r4)
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c1997fc
	mov.b @(0x2,r4),r0
	add 0x3C,r0
	mov.b r0,@(0x2,r4)
	bra loc_8c199800
	mov r6,r0

loc_8c1997fc:
	mov r5,r0
	nop

loc_8c199800:
	mov.b r0,@(0x1,r4)
	mov r15,r1
	mov.b @(0x1,r15),r0
	add 0x05,r1
	mov.b @r1,r2
	mov r0,r3
	mov.b @(0x1,r4),r0
	add r3,r0
	sub r2,r0
	mov.b r0,@(0x1,r4)
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c199824
	mov.b @(0x1,r4),r0
	add 0x18,r0
	mov.b r0,@(0x1,r4)
	bra loc_8c199826
	mov.b r6,@r4

loc_8c199824:
	mov.b r5,@r4

loc_8c199826:
	mov.b @r4,r3
	mov.b @r15,r0
	add r3,r0
	mov r0,r2
	mov.b @(0x4,r15),r0
	sub r0,r2
	rts
	mov.b r2,@r4

;==============================================
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

;==============================================
loc_8c1998C8:
	mov 0x32,r1
	mov.l r14,@-r15
	mov 0x2A,r0
	mov.l r13,@-r15
	mov.l @(0x1E4,PC),r3
	mov 0x00,r6
	mov 0x20,r14
	mov r6,r7
	mov 0x28,r13
	mov.b r6,@r3
	mov.l @(0x1D0,PC),r4
	mov.l @(0x1D4,PC),r5
	mov.b @r4,r2
	extu.b r2,r2
	muls.w r1,r2
	sts macl,r2
	exts.w r2,r2
	add r5,r2
	mov.b r0,@r2

loc_8c1998EE:
	mov.b @r4,r0
	mov 0x32,r3
	exts.b r7,r2
	extu.b r0,r0
	muls.w r3,r0
	add 0x01,r7
	sts macl,r0
	exts.w r0,r0
	add r5,r0
	mov r0,r1
	add 0x01,r1
	add r1,r2
	mov.b r14,@r2
	exts.b r7,r2
	cmp/ge r13,r2
	bf loc_8c1998ee
	mov.b @r4,r3
	mov 0x32,r2
	mov 0x29,r0
	extu.b r3,r3
	muls.w r2,r3
	sts macl,r3
	exts.w r3,r3
	add r5,r3
	mov.b r6,@(r0,r3)
	mov 0x2A,r0
	mov.b @r4,r3
	extu.b r3,r3
	muls.w r2,r3
	sts macl,r3
	exts.w r3,r3
	add r5,r3
	mov.b r6,@(r0,r3)
	mov 0x2B,r0
	mov.b @r4,r3
	extu.b r3,r3
	muls.w r2,r3
	sts macl,r3
	exts.w r3,r3
	add r5,r3
	mov.b r6,@(r0,r3)
	mov 0x2C,r0
	mov.b @r4,r3
	extu.b r3,r3
	muls.w r2,r3
	sts macl,r3
	exts.w r3,r3
	add r5,r3
	mov.b r6,@(r0,r3)
	mov 0x2D,r0
	mov.b @r4,r3
	extu.b r3,r3
	muls.w r2,r3
	sts macl,r3
	exts.w r3,r3
	add r5,r3
	mov.b r6,@(r0,r3)
	mov 0x2E,r0
	mov.b @r4,r3
	extu.b r3,r3
	muls.w r2,r3
	sts macl,r3
	exts.w r3,r3
	add r5,r3
	mov.b r6,@(r0,r3)
	mov 0x2F,r0
	mov.b @r4,r3
	extu.b r3,r3
	muls.w r2,r3
	sts macl,r3
	exts.w r3,r3
	add r5,r3
	mov.b r6,@(r0,r3)
	mov 0x30,r0
	mov.b @r4,r3
	extu.b r3,r3
	muls.w r2,r3
	sts macl,r3
	exts.w r3,r3
	add r5,r3
	mov.b r6,@(r0,r3)
	mov 0x31,r0
	mov.b @r4,r3
	extu.b r3,r3
	muls.w r2,r3
	sts macl,r3
	exts.w r3,r3
	add r5,r3
	mov.b r6,@(r0,r3)
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1999A6:
	mov 0x32,r3
	mov.l r14,@-r15
	mov 0x29,r0
	mov.l r13,@-r15
	mov.l @(0x100,PC),r4
	mov.l @(0x100,PC),r5
	mov.b @r4,r6
	extu.b r6,r6
	muls.w r3,r6
	sts macl,r6
	exts.w r6,r6
	add r5,r6
	mov.b @(r0,r6),r2
	tst r2,r2
	bf loc_8c199a82

	mov 0x2A,r2
	mov.b r2,@r6
	mov 0x00,r6
	mov r6,r7
	mov 0x20,r13
	mov 0x28,r14

loc_8c1999D0:
	mov.b @r4,r0
	mov 0x32,r3
	exts.b r7,r2
	extu.b r0,r0
	muls.w r3,r0
	add 0x01,r7
	sts macl,r0
	exts.w r0,r0
	add r5,r0
	mov r0,r1
	add 0x01,r1
	add r1,r2
	mov.b r13,@r2
	exts.b r7,r2
	cmp/ge r14,r2
	bf loc_8c1999d0
	mov.b @r4,r3
	mov 0x32,r2
	mov 0x29,r0
	extu.b r3,r3
	muls.w r2,r3
	sts macl,r3
	exts.w r3,r3
	add r5,r3
	mov.b r6,@(r0,r3)
	mov 0x2A,r0
	mov.b @r4,r3
	extu.b r3,r3
	muls.w r2,r3
	sts macl,r3
	exts.w r3,r3
	add r5,r3
	mov.b r6,@(r0,r3)
	mov 0x2B,r0
	mov.b @r4,r3
	extu.b r3,r3
	muls.w r2,r3
	sts macl,r3
	exts.w r3,r3
	add r5,r3
	mov.b r6,@(r0,r3)
	mov 0x2C,r0
	mov.b @r4,r3
	extu.b r3,r3
	muls.w r2,r3
	sts macl,r3
	exts.w r3,r3
	add r5,r3
	mov.b r6,@(r0,r3)
	mov 0x2D,r0
	mov.b @r4,r3
	extu.b r3,r3
	muls.w r2,r3
	sts macl,r3
	exts.w r3,r3
	add r5,r3
	mov.b r6,@(r0,r3)
	mov 0x2E,r0
	mov.b @r4,r3
	extu.b r3,r3
	muls.w r2,r3
	sts macl,r3
	exts.w r3,r3
	add r5,r3
	mov.b r6,@(r0,r3)
	mov 0x2F,r0
	mov.b @r4,r3
	extu.b r3,r3
	muls.w r2,r3
	sts macl,r3
	exts.w r3,r3
	add r5,r3
	mov.b r6,@(r0,r3)
	mov 0x30,r0
	mov.b @r4,r3
	extu.b r3,r3
	muls.w r2,r3
	sts macl,r3
	exts.w r3,r3
	add r5,r3
	mov.b r6,@(r0,r3)
	mov 0x31,r0
	mov.b @r4,r3
	extu.b r3,r3
	muls.w r2,r3
	sts macl,r3
	exts.w r3,r3
	add r5,r3
	mov.b r6,@(r0,r3)

loc_8c199A82:
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c199A88:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov r4,r9
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	mov.l @(0x10,PC),r8
	bra loc_8c199b62
	mov r13,r11

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c199AA8:
	#data 0x8C34792C
loc_8c199AAC:
	#data 0x8C347938
loc_8c199AB0:
	#data 0x8C34793D
loc_8c199AB4:
	#data 0x8C347158
loc_8c199AB8:
	#data 0x8C34793C

;==============================================
loc_8c199ABC:
	mov 0x32,r3
	extu.b r11,r10
	muls.w r3,r10
	sts macl,r10
	exts.w r10,r10
	add r8,r10
	mov.b @r10,r0
	cmp/eq 0x42,r0
	bt.s loc_8c199ad8
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x44,r0
	bf loc_8c199b60


loc_8c199AD8:
	mov r13,r12
	bra loc_8c199ae0
	mov r13,r14

loc_8c199ADE:
	add 0x01,r12

loc_8c199AE0:
	mov r10,r3
	add 0x01,r3
	extu.b r12,r0
	mov.b @(r0,r3),r0
	cmp/eq 0x3A,r0
	bt loc_8c199afa
	mov 0x28,r3
	extu.b r12,r2
	cmp/ge r3,r2
	bf loc_8c199ade
	bra loc_8c199afa
	nop

loc_8c199AF8:
	add 0x01,r14

loc_8c199AFA:
	extu.b r14,r0
	bsr loc_8c19a62a
	mov.b @(r0,r9),r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c199b0e
	mov 0x28,r2
	extu.b r14,r3
	cmp/ge r2,r3
	bf loc_8c199af8

loc_8c199B0E:
	extu.b r14,r14
	extu.b r12,r4
	cmp/eq r14,r4
	bf loc_8c199b60
	mov 0x28,r3
	cmp/ge r3,r4
	bt loc_8c199b60
	mov 0x32,r3
	mov r13,r4
	extu.b r11,r14
	muls.w r3,r14
	sts macl,r14
	exts.w r14,r14
	bra loc_8c199b2e
	add r8,r14

loc_8c199B2C:
	add 0x01,r4

loc_8c199B2E:
	mov r14,r5
	add 0x01,r5
	extu.b r4,r6
	add r6,r5
	mov.b @r5,r5
	mov r5,r0
	nop
	cmp/eq 0x3A,r0
	bt loc_8c199b4c
	mov r6,r0
	nop
	mov.b @(r0,r9),r3
	extu.b r3,r3
	cmp/eq r3,r5
	bt loc_8c199b2c

loc_8c199B4C:
	mov r14,r3
	add 0x01,r3
	extu.b r4,r0
	mov.b @(r0,r3),r0
	cmp/eq 0x3A,r0
	bf loc_8c199b60
	mov.l @r15,r2
	mov.b r11,@r2
	bra loc_8c199b6c
	mov 0x01,r0

loc_8c199B60:
	add 0x01,r11

loc_8c199B62:
	mov 0x28,r2
	extu.b r11,r3
	cmp/ge r2,r3
	bf loc_8c199abc
	mov 0x00,r0

loc_8c199B6C:
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
loc_8c199B80:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov 0x00,r11
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov r4,r9
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	bra loc_8c199c48
	mov r11,r14

loc_8c199B9A:
	mov 0x32,r3
	mov.l @(0xC4,PC),r12
	extu.b r14,r4
	muls.w r3,r4
	sts macl,r4
	exts.w r4,r4
	add r12,r4
	mov.b @r4,r0
	cmp/eq 0x42,r0
	bt.s loc_8c199c46
	mov r0,r5
	mov r5,r0
	nop
	cmp/eq 0x44,r0
	bt loc_8c199c46

	mov 0x44,r5
	mov.b r5,@r4
	bra loc_8c199bda
	mov r11,r10

loc_8c199BC0:
	mov 0x32,r2
	extu.b r14,r3
	muls.w r2,r3
	sts macl,r3
	exts.w r3,r3
	add r12,r3
	add 0x01,r3
	add r13,r3
	mov r13,r0
	nop
	mov.b @(r0,r9),r1
	add 0x01,r10
	mov.b r1,@r3

loc_8c199BDA:
	extu.b r10,r13
	mov r13,r0
	nop
	bsr loc_8c19a62a
	mov.b @(r0,r9),r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c199bf2
	mov 0x28,r2
	extu.b r10,r3
	cmp/ge r2,r3
	bf loc_8c199bc0

loc_8c199BF2:
	mov 0x32,r3
	extu.b r14,r5
	muls.w r3,r5
	mov 0x3A,r4
	mov 0x29,r0
	sts macl,r5
	exts.w r5,r5
	add r12,r5
	mov r5,r2
	add 0x01,r2
	add r13,r2
	mov.b r4,@r2
	mov.b r11,@(r0,r5)
	add 0x2A,r5
	mov.l @(0x58,PC),r4
	mov.b @r4,r2
	mov.b r2,@r5
	mov.b @(0x1,r4),r0
	mov.b r0,@(0x1,r5)
	mov.b @(0x2,r4),r0
	mov.b r0,@(0x2,r5)
	mov.b @(0x3,r4),r0
	mov.b r0,@(0x3,r5)
	mov r4,r5
	extu.b r14,r4
	mov.b @r5,r2
	muls.w r3,r4
	sts macl,r4
	exts.w r4,r4
	add r12,r4
	add 0x2E,r4
	mov.b r2,@r4
	mov.b @(0x1,r5),r0
	mov.b r0,@(0x1,r4)
	mov.b @(0x2,r5),r0
	mov.b r0,@(0x2,r4)
	mov.b @(0x3,r5),r0
	mov.b r0,@(0x3,r4)
	mov.l @r15,r3
	mov.b r14,@r3
	bra loc_8c199c50

	nop

loc_8c199C46:
	add 0x01,r14

loc_8c199C48:
	extu.b r14,r2
	mov 0x28,r4
	cmp/ge r4,r2
	bf loc_8c199b9a

loc_8c199C50:
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
	#align4

loc_8c199c64:
	#data 0x8C347158
loc_8c199c68:
	#data 0x8C347928

;==============================================
loc_8c199C6C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov.l @(0x50,PC),r13
	mov.w @(0x4A,PC),r1
	mov.l @r13,r0
	mov.w @(r0,r1),r0
	extu.w r0,r0
	and 0x0C,r0
	shar r0
	shar r0
	cmp/eq 0x00,r0
	bf loc_8c199c94
	bra loc_8c199df4
	nop

loc_8c199C94:
	cmp/eq 0x01,r0
	bt loc_8c199ca0
	cmp/eq 0x02,r0
	bt loc_8c199cd8
	bra loc_8c199df4
	nop

loc_8c199CA0:
	bsr loc_8c19a160
	nop
	exts.b r0,r0
	tst r0,r0
	bt loc_8c199cb2
	mov.l @(0x28,PC),r2
	mov 0x00,r3
	bsr loc_8c199836
	mov.b r3,@r2

loc_8c199CB2:
	mov.l @r13,r3
	mov.w @(0x16,PC),r2
	mov.l @(0x1C,PC),r1
	add r3,r2
	mov.w @r2,r2
	mov.b @r1,r0
	extu.w r2,r2
	cmp/ge r2,r0
	bf loc_8c199cc8
	bra loc_8c199dea
	nop

loc_8c199CC8:
	bra loc_8c199df4
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c199ccc:
	#data 0x0090
loc_8c199cce:
	#data 0x0096
	#align4

loc_8c199cd0:
	#data 0x8C34B1F8
loc_8c199cd4:
	#data 0x8C34793C

;==============================================
loc_8c199CD8:
	mov.l @(0x130,PC),r5
	bsr loc_8c199a88
	mov.l @r15,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c199ce8
	bra loc_8c199dee
	nop

loc_8c199CE8:
	mov.l @(0x120,PC),r14
	mov.l @(0x124,PC),r11
	bsr loc_8c19a22c
	mov.b @r14,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c199d3c
	mov.b @r14,r3
	mov 0x32,r2
	mov 0x00,r1
	extu.b r3,r3
	muls.w r2,r3
	mov 0x29,r0
	sts macl,r3
	exts.w r3,r3
	add r11,r3
	mov.b r1,@(r0,r3)
	mov.b @r14,r5
	mov.l @(0x104,PC),r4
	extu.b r5,r5
	muls.w r2,r5
	mov.b @r4,r3
	sts macl,r5
	exts.w r5,r5
	add r11,r5
	add 0x2E,r5
	mov.b r3,@r5
	mov 0x32,r3
	mov.b @(0x1,r4),r0
	mov.b r0,@(0x1,r5)
	mov.b @(0x2,r4),r0
	mov.b r0,@(0x2,r5)
	mov.b @(0x3,r4),r0
	mov.b r0,@(0x3,r5)
	mov.b @r14,r2
	extu.b r2,r2
	muls.w r3,r2
	sts macl,r2
	exts.w r2,r2
	mov 0x44,r1
	add r11,r2
	mov.b r1,@r2

loc_8c199D3C:
	mov.b @r14,r4
	mov 0x32,r3
	extu.b r4,r4
	muls.w r3,r4
	sts macl,r4
	exts.w r4,r4
	add r11,r4
	mov.b @r4,r0
	cmp/eq 0x42,r0
	bt loc_8c199dea
	mov 0x29,r0
	mov.l @r13,r2
	mov.b @(r0,r4),r1
	add 0x6D,r0
	mov.w @(r0,r2),r2
	extu.b r1,r1
	extu.w r2,r2
	cmp/ge r2,r1
	bt loc_8c199dd8
	add 0x2E,r4
	mov r15,r12
	add 0x04,r12
	mov.b @r4,r2
	mov r15,r10
	add 0x08,r10
	mov.b r2,@r12
	mov r12,r2
	mov.b @(0x1,r4),r0
	mov.b r0,@(0x1,r12)
	mov.b @(0x2,r4),r0
	mov.b r0,@(0x2,r12)
	mov.b @(0x3,r4),r0
	mov.b r0,@(0x3,r12)
	mov.l @(0x94,PC),r4
	mov.b @r4,r3
	mov.b r3,@r10
	mov.b @(0x1,r4),r0
	mov.b r0,@(0x1,r10)
	mov.b @(0x2,r4),r0
	mov.b r0,@(0x2,r10)
	mov.b @(0x3,r4),r0
	mov.b r0,@(0x3,r10)
	mov 0x04,r0
	mov.l @(0x84,PC),r3
	sub r0,r15
	jsr @r3
	mov r15,r1
	mov.l @(0x7C,PC),r3
	mov 0x04,r0
	mov r10,r2
	sub r0,r15
	jsr @r3
	mov r15,r1
	bsr loc_8c1997b4
	nop
	mov.l @(0x70,PC),r4
	mov 0x3C,r5
	mov.l @(0x70,PC),r2
	mov.b @(0x1,r4),r0
	mov.b @r2,r3
	muls.w r5,r0
	mov.w @(0x4C,PC),r1
	mov.b @(0x2,r4),r0
	mov.l @r13,r4
	sts macl,r5
	muls.w r1,r3
	add r0,r5
	mov.w @(0x42,PC),r0
	sts macl,r3
	mov.w @(r0,r4),r4
	add r3,r5
	extu.w r4,r3
	cmp/hs r3,r5
	bf.s loc_8c199df4
	add 0x08,r15
	extu.w r4,r3
	cmp/pl r3
	bf loc_8c199df4


loc_8c199DD8:
	mov.b @r14,r3
	mov 0x32,r2
	mov 0x42,r1
	extu.b r3,r3
	muls.w r2,r3
	sts macl,r3
	exts.w r3,r3
	add r11,r3
	mov.b r1,@r3

loc_8c199DEA:
	bra loc_8c199df6
	mov 0x01,r0

loc_8c199DEE:
	mov.l @(0x1C,PC),r5
	bsr loc_8c199b80
	mov.l @r15,r4

loc_8c199DF4:
	mov 0x00,r0

loc_8c199DF6:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c199e06:
	#data 0x05A0
loc_8c199e08:
	#data 0x0098
	#align4

loc_8c199e0c:
	#data 0x8C34793D
loc_8c199e10:
	#data 0x8C347158
loc_8c199e14:
	#data 0x8C347928
loc_8c199E18:
	#data bank12.loc_8c129620
loc_8c199E1c:
	#data 0x8C34792C
loc_8c199E20:
	#data 0x8C347930

;==============================================
loc_8c199E24:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov 0x00,r9
	mov.l r8,@-r15
	mov.l @(0xD8,PC),r13
	sts.l pr,@-r15
	mov.l @(0xD0,PC),r12
	add 0xF4,r15
	mov.l r4,@r15
	mov.w @(0xC2,PC),r1
	mov.l @r13,r0
	mov.l @(0xD0,PC),r14
	mov.w @(r0,r1),r0
	extu.w r0,r0
	and 0x03,r0
	cmp/eq 0x00,r0
	bf.s loc_8c199e54
	mov r9,r8
	bra loc_8c19a08a

	nop

loc_8c199E54:
	cmp/eq 0x01,r0
	bt loc_8c199e60
	cmp/eq 0x02,r0
	bt loc_8c199f28
	bra loc_8c19a08a
	nop

loc_8c199E60:
	mov.l @(0xB4,PC),r11
	bsr loc_8c19a160
	nop
	exts.b r0,r0
	tst r0,r0
	bt loc_8c199e72
	mov r9,r0
	nop
	mov.b r0,@(0x4,r11)

loc_8c199E72:
	mov.w @(0x90,PC),r2
	mov.l @r13,r3
	mov.b @(0x4,r11),r0
	add r3,r2
	mov.w @r2,r2
	extu.w r2,r2
	cmp/ge r2,r0
	bt loc_8c199e86
	bra loc_8c19a08a
	nop

loc_8c199E86:
	mov r11,r4
	mov r15,r11
	add 0x04,r11
	mov.b @r4,r2
	mov r15,r10
	add 0x08,r10
	mov.b r2,@r11
	mov.b @(0x1,r4),r0
	mov.b r0,@(0x1,r11)
	mov.b @(0x2,r4),r0
	mov.b r0,@(0x2,r11)
	mov.b @(0x3,r4),r0
	mov.b r0,@(0x3,r11)
	mov.l @(0x78,PC),r4
	mov.b @r4,r2
	mov.b r2,@r10
	mov r11,r2
	mov.b @(0x1,r4),r0
	mov.b r0,@(0x1,r10)
	mov.b @(0x2,r4),r0
	mov.b r0,@(0x2,r10)
	mov.b @(0x3,r4),r0
	mov.b r0,@(0x3,r10)
	mov 0x04,r0
	mov.l @(0x68,PC),r3
	sub r0,r15
	jsr @r3
	mov r15,r1
	mov.l @(0x60,PC),r3
	mov 0x04,r0
	mov r10,r2
	sub r0,r15
	jsr @r3
	mov r15,r1
	bsr loc_8c1997b4
	nop
	mov.b @(0x2,r14),r0
	mov 0x3C,r4
	mov.w @(0x32,PC),r3
	muls.w r4,r0
	mov.b @(0x3,r14),r0
	mov.b @r14,r2
	mov.l @(0x48,PC),r1
	sts macl,r4
	add r0,r4
	mov.b @(0x1,r14),r0
	muls.w r3,r0
	sts macl,r0
	mul.l r1,r2
	add r0,r4
	mov.w @(0x1C,PC),r0
	sts macl,r2
	add r2,r4
	mov.l @r13,r2
	mov.w @(r0,r2),r0
	extu.w r0,r0
	cmp/hs r0,r4
	bt.s loc_8c199f00
	add 0x08,r15
	bra loc_8c19a064
	nop

loc_8c199F00:
	bra loc_8c19a08a
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c199f04:
	#data 0x0090
loc_8c199f06:
	#data 0x0092
loc_8c199f08:
	#data 0x0E10
loc_8c199f0a:
	#data 0x0094
	#align4

loc_8c199f0c:
	#data 0x8C347930
loc_8c199f10:
	#data 0x8C34B1F8
loc_8c199f14:
	#data 0x8C34792C
loc_8c199f18:
	#data 0x8C347938
loc_8c199f1c:
	#data 0x8C347928
loc_8c199F20:
	#data bank12.loc_8c129620
loc_8c199F24:
	#data 0x00015180

;==============================================
loc_8c199F28:
	mov.l @(0x144,PC),r5
	bsr loc_8c199a88
	mov.l @r15,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c199f38
	bra loc_8c19a084
	nop

loc_8c199F38:
	mov.l @(0x134,PC),r11
	mov.l @(0x138,PC),r10
	bsr loc_8c19a22c
	mov.b @r11,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c199f7a
	mov.b @r11,r3
	mov 0x32,r2
	mov 0x29,r0
	extu.b r3,r3
	muls.w r2,r3
	sts macl,r3
	exts.w r3,r3
	add r10,r3
	mov.b r9,@(r0,r3)
	mov.b @r11,r5
	mov.l @(0x11C,PC),r4
	extu.b r5,r5
	muls.w r2,r5
	mov.b @r4,r3
	sts macl,r5
	exts.w r5,r5
	add r10,r5
	add 0x2E,r5
	mov.b r3,@r5
	mov.b @(0x1,r4),r0
	mov.b r0,@(0x1,r5)
	mov.b @(0x2,r4),r0
	mov.b r0,@(0x2,r5)
	mov.b @(0x3,r4),r0
	bra loc_8c19a08a
	mov.b r0,@(0x3,r5)

loc_8c199F7A:
	mov.b @r11,r4
	mov 0x32,r3
	mov 0x29,r0
	mov.l @r13,r5
	extu.b r4,r4
	muls.w r3,r4
	sts macl,r4
	exts.w r4,r4
	add r10,r4
	mov.b @(r0,r4),r2
	add 0x69,r0
	mov.w @(r0,r5),r1
	extu.b r2,r2
	extu.w r1,r1
	cmp/ge r1,r2
	bf loc_8c19a08a
	mov.w @(0xCA,PC),r0
	mov.w @(0xCA,PC),r2
	mov.w @(r0,r5),r1
	extu.w r1,r1
	tst r2,r1
	bt loc_8c199fee
	add 0x2E,r4
	mov r15,r11
	add 0x04,r11
	mov.b @r4,r1
	mov r15,r10
	add 0x08,r10
	mov.b r1,@r11
	mov.b @(0x1,r4),r0
	mov.b r0,@(0x1,r11)
	mov.b @(0x2,r4),r0
	mov.b r0,@(0x2,r11)
	mov.b @(0x3,r4),r0
	mov.b r0,@(0x3,r11)
	mov.l @(0xB4,PC),r4
	mov.b @r4,r2
	mov.b r2,@r10
	mov r11,r2
	mov.b @(0x1,r4),r0
	mov.b r0,@(0x1,r10)
	mov.b @(0x2,r4),r0
	mov.b r0,@(0x2,r10)
	mov.b @(0x3,r4),r0
	mov.b r0,@(0x3,r10)
	mov 0x04,r0
	mov.l @(0xA4,PC),r3
	sub r0,r15
	jsr @r3
	mov r15,r1
	mov.l @(0x9C,PC),r3
	mov 0x04,r0
	mov r10,r2
	sub r0,r15
	jsr @r3
	mov r15,r1
	bra loc_8c19a032
	nop

loc_8c199FEE:
	add 0x2A,r4
	mov r15,r11
	add 0x04,r11
	mov.b @r4,r3
	mov r15,r10
	add 0x08,r10
	mov.b r3,@r11
	mov.b @(0x1,r4),r0
	mov.b r0,@(0x1,r11)
	mov.b @(0x2,r4),r0
	mov.b r0,@(0x2,r11)
	mov.b @(0x3,r4),r0
	mov.b r0,@(0x3,r11)
	mov.l @(0x6C,PC),r4
	mov.b @r4,r2
	mov.b r2,@r10
	mov r11,r2
	mov.b @(0x1,r4),r0
	mov.b r0,@(0x1,r10)
	mov.b @(0x2,r4),r0
	mov.b r0,@(0x2,r10)
	mov.b @(0x3,r4),r0
	mov.b r0,@(0x3,r10)
	mov 0x04,r0
	mov.l @(0x5C,PC),r3
	sub r0,r15
	jsr @r3
	mov r15,r1
	mov.l @(0x54,PC),r3
	mov 0x04,r0
	mov r10,r2
	sub r0,r15
	jsr @r3
	mov r15,r1

loc_8c19A032:
	bsr loc_8c1997b4
	nop
	mov.b @(0x2,r14),r0
	mov 0x3C,r4
	mov.w @(0x2E,PC),r3
	muls.w r4,r0
	mov.b @(0x3,r14),r0
	mov.b @r12,r2
	mov.l @(0x3C,PC),r1
	sts macl,r4
	add r0,r4
	mov.b @(0x1,r14),r0
	muls.w r3,r0
	sts macl,r0
	mul.l r1,r2
	add r0,r4
	mov.w @(0x18,PC),r0
	sts macl,r2
	add r2,r4
	mov.l @r13,r2
	mov.w @(r0,r2),r0
	extu.w r0,r0
	cmp/hs r0,r4
	bt.s loc_8c19a08a
	add 0x08,r15

loc_8c19A064:
	bra loc_8c19a08a

	mov 0x01,r8

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19A068:
	#data 0x0090
loc_8c19A06a:
	#data 0x0200
loc_8c19A06c:
	#data 0x0E10
loc_8c19A06e:
	#data 0x0094
	#align4

loc_8c19A070:
	#data 0x8C34793D
loc_8c19A074:
	#data 0x8C347158
loc_8c19A078:
	#data 0x8C347928
loc_8c19A07C:
	#data bank12.loc_8c129620
loc_8c19A080:
	#data 0x00015180

;==============================================
loc_8c19A084:
	mov.l @(0xC0,PC),r5
	bsr loc_8c199b80
	mov.l @r15,r4

loc_8c19A08A:
	exts.b r8,r0
	cmp/eq 0x01,r0
	bf loc_8c19a12e
	mov.b r9,@r12
	mov r9,r0
	nop
	mov.b r0,@(0x1,r12)
	mov.w @(0xAA,PC),r0
	mov.l @r13,r1
	mov.l @(0xAC,PC),r3
	mov.w @(r0,r1),r1
	extu.w r1,r1
	jsr @r3
	mov 0x3C,r0
	mov.b r0,@(0x2,r12)
	mov 0x3C,r3
	mov.w @(0x98,PC),r1
	mov.l @r13,r0
	mov.b @(r0,r1),r2
	mov.b @(0x2,r12),r0
	muls.w r3,r0
	sts macl,r0
	sub r0,r2
	mov r2,r0
	nop
	mov.b r0,@(0x3,r12)
	mov r15,r11
	mov.l @(0x8C,PC),r5
	add 0x04,r11
	mov.l @(0x8C,PC),r4
	mov r15,r14
	mov.b @r5,r2
	add 0x08,r14
	mov.b r2,@r4
	mov.b @(0x1,r5),r0
	mov.b r0,@(0x1,r4)
	mov.b @(0x2,r5),r0
	mov.b r0,@(0x2,r4)
	mov.b @(0x3,r5),r0
	mov.b r0,@(0x3,r4)
	mov.b @r4,r3
	mov.b r3,@r11
	mov.b @(0x1,r4),r0
	mov.b r0,@(0x1,r11)
	mov.b @(0x2,r4),r0
	mov.b r0,@(0x2,r11)
	mov.b @(0x3,r4),r0
	mov.b r0,@(0x3,r11)
	mov.l @(0x6C,PC),r4
	mov.b @r4,r2
	mov.b r2,@r14
	mov.b @(0x1,r4),r0
	mov.b r0,@(0x1,r14)
	mov.b @(0x2,r4),r0
	mov.b r0,@(0x2,r14)
	mov.b @(0x3,r4),r0
	mov.b r0,@(0x3,r14)
	mov.l @(0x5C,PC),r3
	mov 0x04,r0
	mov r11,r2
	sub r0,r15
	jsr @r3
	mov r15,r1
	mov.l @(0x50,PC),r3
	mov 0x04,r0
	mov r14,r2
	sub r0,r15
	jsr @r3
	mov r15,r1
	bsr loc_8c1997b4
	nop
	mov.l @(0x34,PC),r5
	add 0x08,r15
	mov.l @(0x38,PC),r4
	mov.b @r5,r3
	mov.b r3,@r4
	mov.b @(0x1,r5),r0
	mov.b r0,@(0x1,r4)
	mov.b @(0x2,r5),r0
	mov.b r0,@(0x2,r4)
	mov.b @(0x3,r5),r0
	mov.b r0,@(0x3,r4)

loc_8c19A12E:
	mov r8,r0
	nop
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19a146:
	#data 0x0094
	#align4

loc_8c19a148:
	#data 0x8C34793D
loc_8c19A14C:
	#data bank12.loc_8c129128
loc_8c19A150:
	#data 0x8C34792C
loc_8c19A154:
	#data 0x8C347934
loc_8c19A158:
	#data 0x8C347930
loc_8c19A15C:
	#data bank12.loc_8c129620

;==============================================
loc_8c19A160:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0xA8,PC),r4
	add 0xF8,r15
	mov.b @r4,r3
	mov r15,r14
	mov r15,r13
	add 0x04,r13
	mov.b r3,@r14
	mov.b @(0x1,r4),r0
	mov.b r0,@(0x1,r14)
	mov.b @(0x2,r4),r0
	mov.b r0,@(0x2,r14)
	mov.b @(0x3,r4),r0
	mov.b r0,@(0x3,r14)
	mov.l @(0x90,PC),r4
	mov.b @r4,r2
	mov.b r2,@r13
	mov r14,r2
	mov.b @(0x1,r4),r0
	mov.b r0,@(0x1,r13)
	mov.b @(0x2,r4),r0
	mov.b r0,@(0x2,r13)
	mov.b @(0x3,r4),r0
	mov.b r0,@(0x3,r13)
	mov 0x04,r0
	mov.l @(0x80,PC),r3
	sub r0,r15
	jsr @r3
	mov r15,r1
	mov.l @(0x78,PC),r3
	mov 0x04,r0
	mov r13,r2
	sub r0,r15
	jsr @r3
	mov r15,r1
	bsr loc_8c1997b4
	nop
	mov.l @(0x6C,PC),r4
	mov 0x3C,r6
	mov.l @(0x6C,PC),r2
	mov.b @(0x1,r4),r0
	mov.b @r2,r3
	muls.w r6,r0
	mov.w @(0x4A,PC),r1
	mov.b @(0x2,r4),r0
	mov.l @(0x64,PC),r5
	sts macl,r6
	muls.w r1,r3
	mov.l @r5,r4
	add r0,r6
	mov.w @(0x3E,PC),r0
	mov.w @(r0,r4),r0
	sts macl,r3
	extu.w r0,r0
	tst 0x40,r0
	add r3,r6
	bt.s loc_8c19a1e8
	add 0x08,r15
	mov.l @r5,r0
	mov.w @(0x2E,PC),r1
	mov.l @(0x48,PC),r3
	mov.w @(r0,r1),r0
	mov.b @r3,r2
	extu.w r0,r0
	cmp/ge r0,r2
	bt loc_8c19a1fc

loc_8c19A1E8:
	mov.w @(0x22,PC),r0
	mov.w @(r0,r4),r5
	extu.w r5,r3
	cmp/hs r3,r6
	bf loc_8c19a1fc
	extu.w r5,r3
	tst r3,r3
	bt loc_8c19a1fc
	bra loc_8c19a1fe
	mov 0x01,r0

loc_8c19A1FC:
	mov 0x00,r0

loc_8c19A1FE:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c19A208:
	#data 0x05A0
loc_8c19A20a:
	#data 0x0090
loc_8c19A20c:
	#data 0x0096
loc_8c19A20e:
	#data 0x009A
	#align4

loc_8c19A210:
	#data 0x8C347938
loc_8c19A214:
	#data 0x8C347928
loc_8c19A218:
	#data bank12.loc_8c129620
loc_8c19A21c:
	#data 0x8C34792C
loc_8c19A220:
	#data 0x8C347930
loc_8c19A224:
	#data 0x8C34B1F8
loc_8c19A228:
	#data 0x8C34793C

;==============================================
loc_8c19A22C:
	extu.b r4,r6
	mov.l r14,@-r15
	mov 0x32,r3
	mov.l r13,@-r15
	muls.w r3,r6
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l @(0x12C,PC),r5
	sts macl,r6
	sts.l pr,@-r15
	mov.l @(0x11C,PC),r11
	exts.w r6,r6
	mov.l @(0x11C,PC),r12
	add r5,r6
	mov.b @r6,r6
	add 0xF8,r15
	mov r6,r0
	nop
	cmp/eq 0x42,r0
	bt loc_8c19a260
	mov r6,r0
	nop
	cmp/eq 0x44,r0
	bt loc_8c19a260
	bra loc_8c19a37c
	nop

loc_8c19A260:
	mov.w @(0xF2,PC),r0
	mov.l @r11,r3
	mov.l @(0x104,PC),r4
	mov.w @(r0,r3),r2
	mov.w @(0xEC,PC),r3
	extu.w r2,r2
	tst r3,r2
	bt loc_8c19a2c6
	mov.b @r4,r2
	mov 0x32,r1
	mov r15,r14
	mov r15,r13
	extu.b r2,r2
	muls.w r1,r2
	add 0x04,r13
	sts macl,r2
	exts.w r2,r2
	add r5,r2
	mov r2,r4
	add 0x2E,r4
	mov.b @r4,r3
	mov.b r3,@r14
	mov.b @(0x1,r4),r0
	mov.b r0,@(0x1,r14)
	mov.b @(0x2,r4),r0
	mov.b r0,@(0x2,r14)
	mov.b @(0x3,r4),r0
	mov.b r0,@(0x3,r14)
	mov.l @(0xD4,PC),r4
	mov.b @r4,r2
	mov.b r2,@r13
	mov r14,r2
	mov.b @(0x1,r4),r0
	mov.b r0,@(0x1,r13)
	mov.b @(0x2,r4),r0
	mov.b r0,@(0x2,r13)
	mov.b @(0x3,r4),r0
	mov.b r0,@(0x3,r13)
	mov 0x04,r0
	sub r0,r15
	mov.l @(0xC0,PC),r3
	jsr @r3
	mov r15,r1
	mov.l @(0xBC,PC),r3
	mov 0x04,r0
	mov r13,r2
	sub r0,r15
	jsr @r3
	mov r15,r1
	bra loc_8c19a318
	nop

loc_8c19A2C6:
	mov.b @r4,r2
	mov 0x32,r1
	mov r15,r14
	mov r15,r13
	extu.b r2,r2
	muls.w r1,r2
	add 0x04,r13
	sts macl,r2
	exts.w r2,r2
	add r5,r2
	mov r2,r4
	add 0x2A,r4
	mov.b @r4,r3
	mov.b r3,@r14
	mov.b @(0x1,r4),r0
	mov.b r0,@(0x1,r14)
	mov.b @(0x2,r4),r0
	mov.b r0,@(0x2,r14)
	mov.b @(0x3,r4),r0
	mov.b r0,@(0x3,r14)
	mov.l @(0x80,PC),r4
	mov.b @r4,r2
	mov.b r2,@r13
	mov r14,r2
	mov.b @(0x1,r4),r0
	mov.b r0,@(0x1,r13)
	mov.b @(0x2,r4),r0
	mov.b r0,@(0x2,r13)
	mov.b @(0x3,r4),r0
	mov.b r0,@(0x3,r13)
	mov 0x04,r0
	sub r0, r15
	mov.l @(0x6c,pc), r3
	jsr @r3
	mov r15,r1
	mov.l @(0x64,pc),r3
	mov 0x04,r0
	mov r13,r2
	sub r0,r15
	jsr @r3
	mov r15,r1

loc_8c19A318:
	bsr loc_8c1997b4
	nop
	mov.b @(0x1,r12),r0
	mov 0x3C,r6
	mov.l @(0x54,PC),r2
	muls.w r6,r0
	mov.b @r2,r3
	mov.w @(0x30,PC),r1
	mov.b @(0x2,r12),r0
	sts macl,r6
	muls.w r1,r3
	mov.l @r11,r4
	add r0,r6
	mov.w @(0x26,PC),r0
	sts macl,r3
	mov.w @(r0,r4),r5
	add r3,r6
	extu.w r5,r3
	cmp/hs r3,r6
	bf.s loc_8c19a3fe
	add 0x08,r15
	extu.w r5,r3
	tst r3,r3
	bt loc_8c19a3fe
	mov.w @(0xA,PC),r0
	mov.w @(r0,r4),r0
	extu.w r0,r0
	tst 0x40,r0
	bt loc_8c19a3fa
	bra loc_8c19a3fe
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19a356:
	#data 0x0090
loc_8c19a358:
	#data 0x0100
loc_8c19a35a:
	#data 0x05A0
loc_8c19a35c:
	#data 0x009A
	#align4

loc_8c19a360:
	#data 0x8C34B1F8
loc_8c19a364:
	#data 0x8C34792C
loc_8c19a368:
	#data 0x8C347158
loc_8c19a36c:
	#data 0x8C34793D
loc_8c19a370:
	#data 0x8C347928
loc_8c19A374:
	#data bank12.loc_8c129620
loc_8c19A378:
	#data 0x8C347930

;==============================================
loc_8c19A37C:
	mov 0x32,r2
	mov r15,r13
	extu.b r4,r4
	mov r15,r14
	muls.w r2,r4
	add 0x04,r14
	sts macl,r4
	exts.w r4,r4
	add r5,r4
	add 0x2E,r4
	mov.b @r4,r3
	mov.b r3,@r13
	mov.b @(0x1,r4),r0
	mov.b r0,@(0x1,r13)
	mov.b @(0x2,r4),r0
	mov.b r0,@(0x2,r13)
	mov.b @(0x3,r4),r0
	mov.b r0,@(0x3,r13)
	mov.l @(0x100,PC),r4
	mov.b @r4,r2
	mov.b r2,@r14
	mov r13,r2
	mov.b @(0x1,r4),r0
	mov.b r0,@(0x1,r14)
	mov.b @(0x2,r4),r0
	mov.b r0,@(0x2,r14)
	mov.b @(0x3,r4),r0
	mov.b r0,@(0x3,r14)
	mov 0x04,r0
	mov.l @(0xF0,PC),r3
	sub r0,r15
	jsr @r3
	mov r15,r1
	mov.l @(0xE8,PC),r3
	mov 0x04,r0
	mov r14,r2
	sub r0,r15
	jsr @r3
	mov r15,r1
	bsr loc_8c1997b4
	nop
	mov.b @(0x1,r12),r0
	mov 0x3C,r5
	mov.l @(0xD8,PC),r2
	muls.w r5,r0
	mov.b @r2,r3
	mov.w @(0xC2,PC),r1
	mov.b @(0x2,r12),r0
	sts macl,r5
	muls.w r1,r3
	mov.l @r11,r4
	add r0,r5
	mov.w @(0xB8,PC),r0
	sts macl,r3
	mov.w @(r0,r4),r4
	add r3,r5
	extu.w r4,r3
	cmp/hs r3,r5
	bf.s loc_8c19a3fe
	add 0x08,r15
	extu.w r4,r3
	tst r3,r3
	bt loc_8c19a3fe

loc_8c19A3FA:
	bra loc_8c19a400
	mov 0x01,r0

loc_8c19A3FE:
	mov 0x00,r0

loc_8c19A400:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c19A40E:
	mov.l @(0xA0,PC),r5
	mov.b @(0x4,r5),r0
	add 0x01,r0
	mov.b r0,@(0x4,r5)
	mov.l @(0x9C,PC),r6
	mov.w @(0x86,PC),r1
	mov.l @r6,r0
	mov.w @(r0,r1),r0
	extu.w r0,r0
	tst 0x10,r0
	bt loc_8c19a436
	mov.l @(0x7C,PC),r4
	mov.b @r4,r2
	mov.b r2,@r5
	mov.b @(0x1,r4),r0
	mov.b r0,@(0x1,r5)
	mov.b @(0x2,r4),r0
	mov.b r0,@(0x2,r5)
	mov.b @(0x3,r4),r0
	mov.b r0,@(0x3,r5)

loc_8c19A436:
	mov.w @(0x68,PC),r0
	mov.l @r6,r4
	mov.w @(r0,r4),r4
	mov 0x03,r0
	extu.w r4,r4
	and r4,r0
	cmp/eq 0x02,r0
	bt loc_8c19a452
	mov 0x0C,r0
	and r4,r0
	shar r0
	shar r0
	cmp/eq 0x02,r0
	bf loc_8c19a49a

loc_8c19A452:
	mov.l @(0x68,PC),r5
	mov 0x32,r3
	mov.l @(0x60,PC),r7
	mov 0x29,r0
	mov.b @r5,r2
	extu.b r2,r2
	muls.w r3,r2
	sts macl,r2
	exts.w r2,r2
	add r7,r2
	mov.b @(r0,r2),r1
	add 0x01,r1
	mov.b r1,@(r0,r2)
	mov.w @(0x32,PC),r1
	mov.l @r6,r0
	mov.w @(r0,r1),r0
	extu.w r0,r0
	tst 0x20,r0
	bt loc_8c19a49a
	mov.b @r5,r0
	mov.l @(0x28,PC),r4
	extu.b r0,r0
	muls.w r3,r0
	mov.b @r4,r2
	sts macl,r0
	exts.w r0,r0
	add r7,r0
	mov r0,r5
	add 0x2A,r5
	mov.b r2,@r5
	mov.b @(0x1,r4),r0
	mov.b r0,@(0x1,r5)
	mov.b @(0x2,r4),r0
	mov.b r0,@(0x2,r5)
	mov.b @(0x3,r4),r0
	mov.b r0,@(0x3,r5)

loc_8c19A49A:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19a49e:
	#data 0x05a0
loc_8c19a4a0:
	#data 0x009a
loc_8c19a4a2:
	#data 0x0090
	#align4

loc_8c19A4A4:
	#data 0x8C347928
loc_8c19A4A8:
	#data bank12.loc_8c129620
loc_8c19A4Ac:
	#data 0x8C347930
loc_8c19A4b0:
	#data 0x8C347938
loc_8c19A4b4:
	#data 0x8C34B1F8
loc_8c19A4b8:
	#data 0x8C347158
loc_8c19A4bc:
	#data 0x8C34793D

;==============================================
loc_8c19a4c0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov 0x00,r8
	sts.l pr,@-r15
	mov.l @(0x1A8,PC),r13
	mov.l @(0x1A8,PC),r14
	add 0xEC,r15
	mov.l @(0x198,PC),r9
	mov r15,r12
	mov.l @(0x198,PC),r11
	add 0x08,r12

loc_8c19a4e0:
	mov.l @(0x1A0,PC),r3
	jsr @r3
	mov.b r8,@r14
	mov 0x0A,r5
	mov r12,r7
	mov 0x02,r6
	jsr @r11
	mov.b @r14,r4
	jsr @r13
	mov r12,r4
	mov.l @(0x190,PC),r4
	jsr @r13
	nop
	mov 0x32,r3
	exts.b r8,r2
	muls.w r3,r2
	sts macl,r2
	exts.w r2,r2
	mov.l r2,@r15
	mov.l @(0x184,PC),r0
	mov.b @(r0,r2),r1
	mov.b r1,@r14
	mov.l @(0x180,PC),r2
	jsr @r2
	mov.b @r14,r4
	mov.l @(0x180,PC),r4
	jsr @r13
	nop
	mov.l @r15,r2
	mov 0x00,r10
	mov.l @(0x16C,PC),r3
	add r3,r2
	mov.l r2,@(0x4,r15)

loc_8c19a522:
	mov.l @(0x4,r15),r2
	exts.b r10,r3
	add 0x01,r2
	add r2,r3
	mov.b @r3,r1
	mov.b r1,@r14
	mov.l @(0x160,PC),r3
	jsr @r3
	mov.b @r14,r4
	add 0x01,r10
	mov 0x28,r3
	exts.b r10,r2
	cmp/ge r3,r2
	bf loc_8c19a522
	mov.l @(0x154,PC),r4
	jsr @r13
	nop
	mov.l @r15,r10
	mov 0x29,r0
	mov.l @(0x140,PC),r3
	mov 0x02,r6
	mov 0x0A,r5
	mov r12,r7
	add r3,r10
	mov.b @(r0,r10),r2
	mov.b r2,@r14
	jsr @r11
	mov.b @r14,r4
	jsr @r13
	mov r12,r4
	mov.l @(0x134,PC),r4
	jsr @r13
	nop
	mov 0x2B,r0
	mov r12,r7
	mov.b @(r0,r10),r3
	mov 0x02,r6
	mov 0x0A,r5
	mov.b r3,@r14
	jsr @r11
	mov.b @r14,r4
	jsr @r13
	mov r12,r4
	jsr @r13
	mov r9,r4
	mov 0x2C,r0
	mov r12,r7
	mov.b @(r0,r10),r3
	mov 0x02,r6
	mov 0x0A,r5
	mov.b r3,@r14
	jsr @r11
	mov.b @r14,r4
	jsr @r13
	mov r12,r4
	jsr @r13
	mov r9,r4
	mov 0x2D,r0
	mov r12,r7
	mov.b @(r0,r10),r3
	mov 0x02,r6
	mov 0x0A,r5
	mov.b r3,@r14
	jsr @r11
	mov.b @r14,r4
	jsr @r13
	mov r12,r4
	mov.l @(0xDC,PC),r4
	jsr @r13
	nop
	mov 0x2F,r0
	mov r12,r7
	mov.b @(r0,r10),r3
	mov 0x02,r6
	mov 0x0A,r5
	mov.b r3,@r14
	jsr @r11
	mov.b @r14,r4
	jsr @r13
	mov r12,r4
	jsr @r13
	mov r9,r4
	mov 0x30,r0
	mov r12,r7
	mov.b @(r0,r10),r3
	mov 0x02,r6
	mov 0x0A,r5
	mov.b r3,@r14
	jsr @r11
	mov.b @r14,r4
	jsr @r13
	mov r12,r4
	jsr @r13
	mov r9,r4
	mov 0x31,r0
	mov r12,r7
	mov.b @(r0,r10),r3
	mov 0x02,r6
	mov 0x0A,r5
	mov.b r3,@r14
	jsr @r11
	mov.b @r14,r4
	jsr @r13
	mov r12,r4
	mov.l @(0x94,PC),r4
	jsr @r13
	nop
	mov.l @(0x9C,PC),r3
	mov 0x0A,r5
	mov r12,r7
	mov 0x02,r6
	jsr @r11
	mov.b @r3,r4
	jsr @r13
	mov r12,r4
	add 0x01,r8
	mov 0x14,r3
	exts.b r8,r2
	cmp/ge r3,r2
	bt loc_8c19a616
	bra loc_8c19a4e0
	nop

loc_8c19a616:
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
loc_8c19A62A:
	mov 0x30,r3
	extu.b r4,r5
	cmp/ge r3,r5
	bf loc_8c19a638
	mov 0x39,r1
	cmp/gt r1,r5
	bf loc_8c19a668

loc_8c19A638:
	mov r5,r0
	nop
	cmp/eq 0x41,r0
	bt loc_8c19a668
	mov r5,r0
	nop
	cmp/eq 0x42,r0
	bt loc_8c19a668
	mov r5,r0
	nop
	cmp/eq 0x43,r0
	bt loc_8c19a668
	mov r5,r0
	nop
	cmp/eq 0x44,r0
	bt loc_8c19a668
	mov r5,r0
	nop
	cmp/eq 0x23,r0
	bt loc_8c19a668
	mov r5,r0
	nop
	cmp/eq 0x2A,r0
	bf loc_8c19a66c

loc_8c19A668:
	rts
	mov 0x01,r0

loc_8c19A66C:
	mov 0x00,r0
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c19A674:
	#data bank1c.loc_8c1c6484
loc_8c19A678:
	#data bank1a.loc_8c1aF1A4
loc_8c19A67C:
	#data bank1a.loc_8c1aECDC
loc_8c19A680:
	#data 0x8C347942
loc_8c19A684:
	#data bank1a.loc_8c1aEE08
loc_8c19A688:
	#data bank1c.loc_8c1c6488
loc_8c19A68c:
	#data 0x8C347158
loc_8c19A690:
	#data bank1a.loc_8c1aEC3A
loc_8c19A694:
	#data bank1c.loc_8c1c648C
loc_8c19A698:
	#data 0x8C34793C

;==============================================
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

loc_8c19a6c4:
	mov.l @(loc_8c19a77c,pc),r3
	jsr @r3
	mov 0x01,r4
	mov.l @(loc_8c19a780,pc),r2
	mov.l @(loc_8c19a770,pc),r4
	jsr @r2
	mov 0x04,r5

loc_8c19a6d2:
	jsr @r11
	mov.l @r12,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c19a6d2
	mov.l @(loc_8c19a77c,pc),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(loc_8c19a780,pc),r2
	mov.l @(loc_8c19a770,pc),r4
	jsr @r2
	mov 0x0F,r5

loc_8c19a6ea:
	jsr @r11
	mov.l @r12,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c19a6f8
	bra loc_8c19a73a
	mov 0x01,r8

loc_8c19a6f8:
	mov.l @r13,r4
	add 0x68,r4
	mov.b @r4,r0
	extu.b r0,r0
	add 0x04,r4
	mov.w r0,@(0x02,r14)
	mov.b @r4,r3
	mov.w @(0x02,r14),r0
	extu.b r3,r3
	shll8 r3
	or r3,r0
	add 0x04,r4
	mov.w r0,@(0x02,r14)
	mov.b @r4,r3
	extu.b r3,r3
	add 0x04,r4
	mov.w r3,@r14
	mov.b @r4,r2
	mov.w @r14,r3
	extu.b r2,r2
	shll8 r2
	or r2,r3
	mov.w r3,@r14
	mov.w @r14,r2
	mov.l @(loc_8C19A784,pc),r3
	extu.w r2,r2
	cmp/eq r3,r2
	bt loc_8c19a73a
	mov.w @(0x02,r14),r0
	mov.w @(loc_8C19A762,pc),r2
	extu.w r0,r0
	cmp/eq r2,r0
	bf loc_8c19a6ea

loc_8c19a73a:
	extu.b r8,r3
	tst r3,r3
	bt/s loc_8c19a74c
	add 0xFF,r10
	extu.b r10,r2
	tst r2,r2
	bt loc_8c19a74e
	bra loc_8c19a74e
	mov r9,r8

loc_8c19a74c:
	mov r9,r10

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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19a762:
	#data 0x5536
loc_8c19A764:
	#data 0x044C
	#align4

loc_8c19A768:
	#data bank1a.loc_8c1a00CA
loc_8c19A76C:
	#data bank1b.loc_8c1b3F0C
loc_8c19A770:
	#data 0x8C347A18
loc_8c19A774:
	#data 0x8C347970
loc_8c19A778:
	#data 0x8C3479B4
loc_8c19A77C:
	#data loc_8c19FEB8
loc_8c19A780:
	#data bank1b.loc_8c1b3EEC
loc_8c19a784:
	#data 0x0000EA3C
loc_8c19A788:
	#data bank1a.loc_8c1a003E

;==============================================
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

loc_8c19A7FC:
	jsr @r11
	mov.l @r12,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c19a812
	mov.w @(0xFE,PC),r14
	mov r14,r4

loc_8c19A80A:
	jsr @r10
	nop
	bra loc_8c19A8BA
	mov 0x00,r0

loc_8c19a812:
	mov.l @r13,r4
	mov r4,r0
	nop
	add 0x78,r0
	mov.b @r0,r0
	tst 0x08,r0
	bt loc_8c19a7fc
	add 0x48,r4
	mov.b @r4,r0
	extu.b r0,r0
	add 0x04,r4
	mov.w r0,@(0x16,r14)
	mov.b @r4,r3
	mov.w @(0x16,r14),r0
	extu.b r3,r3
	shll8 r3
	or r3,r0
	add 0x04,r4
	mov.w r0,@(0x16,r14)
	mov.b @r4,r0
	extu.b r0,r0
	add 0x04,r4
	mov.w r0,@(0x14,r14)
	mov.b @r4,r3
	mov.w @(0x14,r14),r0
	extu.b r3,r3
	shll8 r3
	or r3,r0
	add 0x04,r4
	mov.w r0,@(0x14,r14)
	mov.b @r4,r0
	extu.b r0,r0
	add 0x04,r4
	mov.w r0,@(0x12,r14)
	mov.b @r4,r3
	mov.w @(0x12,r14),r0
	extu.b r3,r3
	shll8 r3
	or r3,r0
	add 0x04,r4
	mov.w r0,@(0x12,r14)
	mov.b @r4,r0
	extu.b r0,r0
	add 0x04,r4
	mov.w r0,@(0x10,r14)
	mov.b @r4,r3
	mov.w @(0x10,r14),r0
	extu.b r3,r3
	shll8 r3
	or r3,r0
	add 0x04,r4
	mov.w r0,@(0x10,r14)
	mov.b @r4,r0
	extu.b r0,r0
	add 0x04,r4
	mov.w r0,@(0x0E,r14)
	mov.b @r4,r3
	mov.w @(0x0E,r14),r0
	extu.b r3,r3
	shll8 r3
	or r3,r0
	mov.w r0,@(0x0E,r14)
	mov.l @r13,r0
	mov.b @r0,r0
	extu.b r0,r0
	mov.w r0,@(0x18,r14)
	mov.l @r13,r4
	add 0x44,r4
	mov.b @r4,r3
	mov.w @(0x18,r14),r0
	extu.b r3,r3
	shll8 r3
	or r3,r0
	mov 0x40,r2
	mov.w r0,@(0x18,r14)
	mov.l @r13,r3
	add r3,r2
	mov.b @r2,r2

loc_8c19a8ae:
	jsr @r11
	mov.l @r12,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c19a8ae
	mov 0x01,r0

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

;==============================================
;unused
loc_8c19a8cc:
	mov.l @(0x3C,PC),r4
	mov.l @r4,r3
	add 0x54,r3
	mov.b @r3,r0
	and 0xDF,r0
	mov.b r0,@r3
	mov.l @r4,r3
	add 0x54,r3
	mov.b @r3,r0
	and 0xEF,r0
	mov.b r0,@r3
	mov.l @r4,r3
	add 0x54,r3
	mov.b @r3,r0
	or 0x80,r0
	mov.b r0,@r3
	mov.l @r4,r3
	add 0x54,r3
	mov.b @r3,r0
	or 0x40,r0
	mov.b r0,@r3
	mov.l @r4,r3
	add 0x7C,r3
	mov.b @r3,r0
	or 0x01,r0
	rts
	mov.b r0,@r3

;==============================================
loc_8c19A902:
	mov 0x30,r5 ; r5 set to 0x30
	bra loc_8c19A910
	mov 0x2B,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19A908:
	#data 0x0460
	#align4

loc_8c19A90c:
	#data 0x8C347970

;==============================================
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

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19AA24:
	#data 0x06A9
loc_8c19AA26:
	#data 0x01F4
	#align4

loc_8c19AA28:
	#data bank1b.loc_8c1b2EF0
loc_8c19AA2C:
	#data 0x8C347970
loc_8c19AA30:
	#data 0x8C347974
loc_8c19AA34:
	#data 0x8C347979
loc_8c19AA38:
	#data 0x8C347A14
loc_8c19AA3C:
	#data 0x8C3479A1
loc_8c19AA40:
	#data 0x8C3479B2
loc_8c19AA44:
	#data 0x8C3479B3
loc_8c19AA48:
	#data loc_8c19E30C
loc_8c19AA4C:
	#data 0x8C3479F0
loc_8c19AA50:
	#data bank1b.loc_8c1b3EEC
loc_8c19AA54:
	#data 0x8C3479CE
loc_8c19AA58:
	#data loc_8c19E562
loc_8c19AA5C:
	#data loc_8c19FE4A
loc_8c19AA60:
	#data 0x8C3479E7

;==============================================
loc_8c19aa64:
	mov 0x00,r14

loc_8c19aa66:
	mov 0x0F,r2
	mov.l @(loc_8C19AB74,pc),r13
	extu.b r14,r3
	cmp/gt r2,r3
	bf loc_8c19aaa6
	mov.l @(loc_8C19AB78,pc),r3
	extu.b r14,r4
	mov 0x32,r5
	add r3,r4
	extu.w r4,r1
	cmp/hi r5,r1
	bf loc_8c19aa80
	mov r5,r4

loc_8c19aa80:
	extu.w r4,r4
	mov.l @(loc_8c19ab7c,pc),r0
	add 0xFF,r4
	shll r4
	mov.w @(r0,r4),r3
	mov 0x02,r6
	mov.w r3,@r13
	mov.w @(loc_8C19AB6E,pc),r4
	mov.l @(loc_8c19ab80,pc),r2
	jsr @r2
	mov.w @r13,r5
	mov.l @(loc_8c19ab84,pc),r3
	mov.l @r3,r1
	add 0x4C,r1
	mov.b @r1,r0
	and 0x0F,r0
	or 0xF0,r0
	bra loc_8c19aac4
	mov.b r0,@r1

loc_8c19aaa6:
	mov.w @(loc_8C19AB70,pc),r3
	mov 0x02,r6
	mov.w r3,@r13
	mov.w @(loc_8C19AB6E,pc),r4
	mov.l @(loc_8c19ab80,pc),r1
	jsr @r1
	mov r3,r5
	mov.l @(loc_8c19ab84,pc),r3
	mov.l @r3,r2
	mov r14,r0
	nop
	mov.l @(loc_8c19ab88,pc),r3
	add 0x4C,r2
	jsr @r3
	mov 0x04,r1

loc_8c19aac4:
	lds.l @r15+,pr
	mov.l @(loc_8c19ab8c,pc),r2
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

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

;==============================================
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

loc_8c19ab1c:
	cmp/eq 0x02,r0
	bf loc_8c19ab26
	mov.b @(0x0C,r4),r0
	and 0xFE,r0
	mov.b r0,@(0x0C,r4)

loc_8c19AB26:
	rts
	nop

;==============================================
loc_8c19AB2A:
	rts
	nop

;==============================================
loc_8c19AB2E:
	mov.l @(loc_8c19AB84,pc),r3 ; r3 set to 0x8C347970
	mov.l @r3,r1
	add 0x24,r1
	mov.b @r1,r0
	or 0x80,r0
	rts
	mov.b r0,@r1

;==============================================
;unused
loc_8c19ab3c:
	mov.l @(0x44,PC),r3
	mov.l @r3,r1
	add 0x24,r1
	mov.b @r1,r0
	and 0x7F,r0
	rts
	mov.b r0,@r1

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19ab6e:
	#data 0x03DA
loc_8c19ab70:
	#data 0x4000
	#align4

loc_8c19ab74:
	#data 0x8C347988
loc_8c19ab78:
	#data 0x0000FFF1
loc_8c19AB7C:
	#data bank1c.loc_8c1c64CE
loc_8c19AB80:
	#data loc_8c19E30C
loc_8c19AB84:
	#data 0x8C347970
loc_8c19AB88:
	#data bank13.loc_8c130ECC
loc_8c19AB8C:
	#data loc_8c19E562

;==============================================
;unused
loc_8c19ab90:
	mov.l r14,@-r15
	exts.b r4,r0
	sts.l pr,@-r15
	mov.l @(0xF0,PC),r14
	cmp/eq 0x01,r0
	bf loc_8c19abc8
	bsr loc_8c19a9e8
	nop
	mov 0x01,r6
	mov 0x04,r3
	mov r6,r5
	mov.l r3,@-r15
	mov r3,r7
	bsr loc_8c19bae0
	mov r3,r4
	mov.l @r14,r3
	add 0x04,r15
	add 0x14,r3
	mov.b @r3,r0
	mov.l @(0xD4,PC),r2
	and 0xF7,r0
	jsr @r2
	mov.b r0,@r3
	mov.l @r14,r3
	add 0x14,r3
	mov.b @r3,r0
	bra loc_8c19abd2
	or 0x10,r0

loc_8c19abc8:
	mov.l @r14,r2
	mov r2,r3
	add 0x24,r3
	mov.b @r3,r0
	and 0xFB,r0

loc_8c19abd2:
	mov.b r0,@r3
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
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

;==============================================
loc_8c19abf8:
	mov.w @(0x72,PC),r4
	bra loc_8c19abfe
	nop

loc_8c19abfe:
	mov.l r14,@-r15
	mov 0x03,r2
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w r4,@r15
	mov.l @(0x80,PC),r5
	mov.b @r5,r4
	extu.b r4,r3
	cmp/ge r2,r3
	bf loc_8c19ac1a
	bra loc_8c19ae3a
	nop

loc_8c19ac1a:
	mov.l @(0x78,PC),r0
	extu.b r4,r4
	mov.w @r15,r1
	shll r4
	mov.w r1,@(r0,r4)
	mov.b @r5,r0
	add 0x01,r0
	mov.b r0,@r5
	add 0xFF,r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c19ac3e
	cmp/eq 0x01,r0
	bt loc_8c19ac56
	cmp/eq 0x02,r0
	bt loc_8c19ac9c
	bra loc_8c19ace0
	nop

loc_8c19ac3e:
	mov.w @(0x32,PC),r3
	mov.w @(0x2C,PC),r13
	mov.w @(0x2C,PC),r14
	mov.l r3,@-r15
	mov.w @(0x2C,PC),r7
	mov.w @(0x2E,PC),r5
	mov.w @(0x2A,PC),r6
	mov.l @(0x48,PC),r1
	jsr @r1
	mov 0x00,r4
	bra loc_8c19acde
	nop

loc_8c19ac56:
	mov.w @(0x26,PC),r1
	mov.w @(0x20,PC),r13
	mov.w @(0x20,PC),r14
	mov.l r1,@-r15
	mov.w @(0x20,PC),r7
	mov.w @(0x22,PC),r5
	mov.w @(0x1E,PC),r6
	mov.l @(0x30,PC),r3
	jsr @r3
	mov 0x01,r4
	bra loc_8c19acde
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19ac6e:
	#data 0x00F5
loc_8c19ac70:
	#data 0x0AA1
loc_8c19ac72:
	#data 0x0BA1
loc_8c19ac74:
	#data 0x0580
loc_8c19ac76:
	#data 0x0880
loc_8c19ac78:
	#data 0x00CF
loc_8c19ac7a:
	#data 0x7F30
loc_8c19ac7c:
	#data 0x0AA7
loc_8c19ac7e:
	#data 0x0BA7
loc_8c19ac80:
	#data 0x1C00
loc_8c19ac82:
	#data 0x2A00
loc_8c19ac84:
	#data 0x02DF
loc_8c19ac86:
	#data 0x7E67
	#align4

loc_8c19AC88:
	#data 0x8C347970
loc_8c19AC8C:
	#data loc_8c19BC4A
loc_8c19AC90:
	#data 0x8C3479E5
loc_8c19AC94:
	#data 0x8C3479AC
loc_8c19AC98:
	#data loc_8c19E4B4

;==============================================
loc_8c19AC9c:
	mov.l @(0x124,PC),r3
	mov.l @r3,r2
	mov.b @(0x8,r2),r0
	or 0x40,r0
	mov.b r0,@(0x8,r2)
	mov 0x00,r12
	mov.w @(0xDE,PC),r13
	mov.w @(0xDE,PC),r14
	mov r12,r6
	mov.l r12,@-r15
	mov.l r12,@-r15
	mov.l @(0x114,PC),r2
	mov.w @(0xD8,PC),r4
	mov.w @(0xD4,PC),r7
	jsr @r2
	mov r12,r5
	mov.l r12,@-r15
	mov r12,r6
	mov.l r12,@-r15
	mov.w @(0xCC,PC),r4
	mov.l @(0x100,PC),r3
	mov.w @(0xC4,PC),r7
	jsr @r3
	mov r12,r5
	mov.w @(0xC4,PC),r2
	add 0x10,r15
	mov.l r2,@-r15
	mov.w @(0xC2,PC),r6
	mov.w @(0xC2,PC),r5
	mov.l @(0xF4,PC),r3
	mov.w @(0xBA,PC),r7
	jsr @r3
	mov 0x02,r4

loc_8c19acde:
	add 0x04,r15

loc_8c19ace0:
	mov.w @r15,r0
	mov.w @(0xB6,PC),r1
	extu.w r0,r0
	mov.l @(0xE8,PC),r12
	cmp/eq r1,r0
	bt loc_8c19ad0c
	mov.w @(0xAE,PC),r1
	cmp/eq r1,r0
	bt loc_8c19ad3a
	mov.w @(0xAA,PC),r1
	cmp/eq r1,r0
	bt loc_8c19ad62
	mov.w @(0xA6,PC),r1
	cmp/eq r1,r0
	bt loc_8c19ade8
	mov.w @(0xA2,PC),r1
	cmp/eq r1,r0
	bf loc_8c19ad08
	bra loc_8c19ae10
	nop

loc_8c19ad08:
	bra loc_8c19ae36
	nop

loc_8c19ad0c:
	mov.w @(0x98,PC),r3
	mov.w @(0x94,PC),r12
	mov.l r3,@-r15
	mov.l @(0xC0,PC),r2
	mov r12,r5
	mov r12,r7
	mov.l r2,@-r15
	mov.l @(0xBC,PC),r6
	mov.l @(0xA8,PC),r1
	jsr @r1
	mov r13,r4
	mov.w @(0x84,PC),r3
	mov r12,r5
	mov r12,r7
	mov.l r3,@-r15
	mov.l @(0xB0,PC),r2
	mov.l r2,@-r15
	mov.w @(0x7A,PC),r6
	mov.l @(0x94,PC),r1
	jsr @r1
	mov r14,r4
	bra loc_8c19ae36
	add 0x10,r15

loc_8c19ad3a:
	mov.w @(0x70,PC),r2
	mov.l r2,@-r15
	mov.l r12,@-r15
	mov.l @(0x9C,PC),r6
	mov.w @(0x6C,PC),r5
	mov.l @(0x80,PC),r3
	mov.w @(0x66,PC),r7
	jsr @r3
	mov r13,r4
	mov.w @(0x64,PC),r2
	mov.l r2,@-r15
	mov.l r12,@-r15
	mov.w @(0x60,PC),r6
	mov.w @(0x5A,PC),r5
	mov.l @(0x70,PC),r3
	mov.w @(0x54,PC),r7
	jsr @r3
	mov r14,r4
	bra loc_8c19ae36
	add 0x10,r15

loc_8c19ad62:
	mov.w @(0x52,PC),r3
	mov.l r3,@-r15
	mov.l r12,@-r15
	mov.l @(0x78,PC),r6
	mov.w @(0x4E,PC),r5
	mov.l @(0x58,PC),r2
	mov.w @(0x48,PC),r7
	jsr @r2
	mov r13,r4
	mov.w @(0x46,PC),r3
	mov.l r3,@-r15
	mov.l r12,@-r15
	mov.w @(0x42,PC),r6
	mov.w @(0x3C,PC),r5
	mov.l @(0x48,PC),r2
	mov.w @(0x36,PC),r7
	jsr @r2
	mov r14,r4
	bra loc_8c19ae36
	add 0x10,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19ad8a:
	#data 0x0aad
loc_8c19ad8c:
	#data 0x0bad
loc_8c19ad8e:
	#data 0x7fff
loc_8c19ad90:
	#data 0x0ab2
loc_8c19ad92:
	#data 0x0bb2
loc_8c19ad94:
	#data 0x1c00
loc_8c19ad96:
	#data 0x2a00
loc_8c19ad98:
	#data 0x02df
loc_8c19ad9a:
	#data 0x7e67
loc_8c19ad9c:
	#data 0x00f5
loc_8c19ad9e:
	#data 0x044c
loc_8c19ada0:
	#data 0x0514
loc_8c19ada2:
	#data 0x0834
loc_8c19ada4:
	#data 0x08b1
loc_8c19ada6:
	#data 0x08c2
loc_8c19ada8:
	#data 0x74fe
loc_8c19adaa:
	#data 0x6495
loc_8c19adac:
	#data 0x1184
loc_8c19adae:
	#data 0x48c6
loc_8c19adb0:
	#data 0x01b4
loc_8c19adb2:
	#data 0x01b3
loc_8c19adb4:
	#data 0x4897
loc_8c19adb6:
	#data 0x0097
loc_8c19adb8:
	#data 0x35a7
loc_8c19adba:
	#data 0x0245
loc_8c19adbc:
	#data 0x0244
loc_8c19adbe:
	#data 0x3574
loc_8c19adc0:
	#data 0x00ca
	#align4

loc_8c19ADC4:
	#data 0x8C347970
loc_8c19ADC8:
	#data loc_8c19E450
loc_8c19ADCC:
	#data loc_8c19E4B4
loc_8c19ADd0:
	#data 0x0000C147
loc_8c19ADd4:
	#data 0x0000C774
loc_8c19ADd8:
	#data 0x0000EE7C
loc_8c19ADdc:
	#data 0x0000CD4F
loc_8c19ADe0:
	#data 0x0000FC9C
loc_8c19ADe4:
	#data 0x0000FB7B

;==============================================
loc_8c19ade8:
	mov.l @(0x104,PC),r2
	mov.l r2,@-r15
	mov.l r12,@-r15
	mov.l @(0x104,PC),r6
	mov.w @(0xE8,PC),r5
	mov.l @(0x104,PC),r3
	mov.w @(0xE2,PC),r7
	jsr @r3
	mov r13,r4
	mov.l @(0x100,PC),r2
	mov.l r2,@-r15
	mov.l r12,@-r15
	mov.w @(0xDA,PC),r6
	mov.w @(0xD6,PC),r5
	mov.l @(0xF0,PC),r3
	mov.w @(0xD0,PC),r7
	jsr @r3
	mov r14,r4
	bra loc_8c19ae36
	add 0x10,r15

loc_8c19ae10:
	mov.l @(0xEC,PC),r3
	mov.l r3,@-r15
	mov.l r12,@-r15
	mov.l @(0xEC,PC),r6
	mov.w @(0xC6,PC),r5
	mov.l @(0xDC,PC),r2
	mov.w @(0xC0,PC),r7
	jsr @r2
	mov r13,r4
	mov.l @(0xE4,PC),r3
	mov.l r3,@-r15
	mov.l r12,@-r15
	mov.w @(0xB8,PC),r6
	mov.w @(0xB4,PC),r5
	mov.l @(0xC8,PC),r2
	mov.w @(0xAE,PC),r7
	jsr @r2
	mov r14,r4
	add 0x10,r15

loc_8c19ae36:
	bra loc_8c19ae3c
	mov 0x01,r0

loc_8c19ae3a:
	mov 0x00,r0

loc_8c19ae3c:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c19ae48:
	mov.l @(0xC0,PC),r3
	mov.l @r3,r5
	mov r5,r0
	nop
	add 0x6C,r0
	mov.b @r0,r0
	tst 0x80,r0
	movt r2
	add 0xFF,r2
	neg r2,r2
	tst r2,r2
	bt loc_8c19ae64
	bra loc_8c19af5a
	nop

loc_8c19ae64:
	mov r5,r0
	nop
	add 0x6C,r0
	mov.b @r0,r0
	tst 0x40,r0
	movt r0
	add 0xFF,r0
	neg r0,r0
	tst r0,r0
	bf loc_8c19af5a
	mov 0x48,r0
	mov.b @(r0,r5),r3
	mov.w @(0x66,PC),r2
	extu.b r3,r3
	cmp/eq r2,r3
	bt.s loc_8c19ae9a
	extu.w r4,r6
	mov.b @(r0,r5),r1
	mov.w @(0x5C,PC),r3
	extu.b r1,r1
	cmp/eq r3,r1
	bt loc_8c19ae9a
	mov.b @(r0,r5),r1
	mov.w @(0x54,PC),r2
	extu.b r1,r1
	cmp/eq r2,r1
	bf loc_8c19af18

loc_8c19ae9a:
	mov.w @(0x4E,PC),r4
	cmp/eq r4,r6
	bf loc_8c19aeba
	mov.l @(0x6C,PC),r3
	mov.w @r3,r2
	extu.w r2,r2
	cmp/eq r4,r2
	bf loc_8c19aeba
	mov r5,r0
	nop
	add 0x2C,r0
	mov.b @r0,r0
	tst 0x10,r0
	bf loc_8c19af56
	bra loc_8c19af5a
	nop

loc_8c19aeba:
	mov.w @(0x30,PC),r4
	cmp/eq r4,r6
	bf loc_8c19af18
	mov.l @(0x50,PC),r2
	mov.w @r2,r3
	extu.w r3,r3
	cmp/eq r4,r3
	bf loc_8c19af18
	mov r5,r0
	nop
	add 0x2C,r0
	mov.b @r0,r0
	tst 0x08,r0
	bt loc_8c19af5a
	bra loc_8c19af56
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19aeda:
	#data 0x01E9
loc_8c19aedc:
	#data 0x01E8
loc_8c19aede:
	#data 0x034E
loc_8c19aee0:
	#data 0x0206
loc_8c19aee2:
	#data 0x0205
loc_8c19aee4:
	#data 0x0380
loc_8c19aee6:
	#data 0x0080
loc_8c19aee8:
	#data 0x0083
loc_8c19aeea:
	#data 0x0081
loc_8c19aeec:
	#data 0x0834
loc_8c19aeee:
	#data 0x08B1
	#align4

loc_8c19aef0:
	#data 0x0000DF4F
loc_8c19aef4:
	#data 0x0000FC32
loc_8c19AEF8:
	#data loc_8c19E450
loc_8c19AEFc:
	#data 0x0000DF19
loc_8c19af00:
	#data 0x0000D22D
loc_8c19af04:
	#data 0x0000FBF9
loc_8c19af08:
	#data 0x0000D1F8
loc_8c19af0c:
	#data 0x8C347970
loc_8c19af10:
	#data 0x8C3479AE
loc_8c19af14:
	#data 0x8C3479B0

;==============================================
loc_8c19af18:
	mov.l @(0x154,PC),r4
	mov.w @r4,r2
	extu.w r2,r2
	cmp/eq r2,r6
	bf loc_8c19af2e
	mov r5,r0
	nop
	add 0x2C,r0
	mov.b @r0,r0
	tst 0x80,r0
	bf loc_8c19af56

loc_8c19af2e:
	mov.w @(0x2,r4),r0
	extu.w r0,r0
	cmp/eq r0,r6
	bf loc_8c19af42
	mov r5,r0
	nop
	add 0x2C,r0
	mov.b @r0,r0
	tst 0x40,r0
	bf loc_8c19af56

loc_8c19af42:
	mov.w @(0x4,r4),r0
	extu.w r0,r0
	cmp/eq r0,r6
	bf loc_8c19af5a
	mov r5,r0
	nop
	add 0x2C,r0
	mov.b @r0,r0
	tst 0x20,r0
	bt loc_8c19af5a

loc_8c19af56:
	rts
	mov 0x01,r0

loc_8c19af5a:
	mov 0x00,r0
	rts
	nop

;==============================================
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

;==============================================
loc_8c19AF8C:
	mov r4,r0
	nop
	add 0x2C,r0
	mov.b @r0,r0
	tst 0x40,r0
	bt loc_8c19AF9C
	rts
	mov 0x02,r0

;==============================================
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

;==============================================
loc_8c19AFBA:
	mov 0x00,r0 ; r0 set to 0x00
	rts
	nop

;==============================================
loc_8c19afc0:
	mov.l @(0xBC,PC),r2
	mov 0x00,r3
	rts
	mov.b r3,@r2

;==============================================
loc_8c19afc8:
	mov.l @(0xAC,PC),r3
	mov.l @(0xB4,PC),r6
	mov.l @r3,r5
	mov r5,r0
	nop
	add 0x6C,r0
	mov.b @r0,r0
	tst 0x40,r0
	bt.s loc_8c19afe6
	mov.b @r6,r7
	tst r7,r7
	bf loc_8c19b068
	mov 0x01,r1
	bra loc_8c19b068
	mov.b r1,@r6

loc_8c19afe6:
	mov r5,r0
	nop
	add 0x6C,r0
	mov.b @r0,r0
	tst 0x10,r0
	bt loc_8c19b064
	mov r7,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c19b064
	mov r5,r0
	nop
	add 0x6C,r0
	mov.b @r0,r0
	mov 0x09,r3
	and 0x0F,r0
	cmp/gt r3,r0
	bt loc_8c19b01a
	mov r5,r0
	nop
	add 0x6C,r0
	mov.b @r0,r0
	and 0x0F,r0
	add 0x30,r0
	bra loc_8c19b050
	mov.b r0,@r4

loc_8c19b01a:
	mov r5,r0
	nop
	add 0x6C,r0
	mov.b @r0,r0
	and 0x0F,r0
	cmp/eq 0x0A,r0
	bf loc_8c19b02e
	mov 0x2A,r1
	bra loc_8c19b050
	mov.b r1,@r4

loc_8c19b02e:
	mov r5,r0
	nop
	add 0x6C,r0
	mov.b @r0,r0
	and 0x0F,r0
	cmp/eq 0x0B,r0
	bf loc_8c19b042
	mov 0x23,r2
	bra loc_8c19b050
	mov.b r2,@r4

loc_8c19b042:
	mov r5,r0
	nop
	add 0x6C,r0
	mov.b @r0,r0
	and 0x0F,r0
	add 0x35,r0
	mov.b r0,@r4

loc_8c19b050:
	mov 0x00,r3
	mov.b r3,@r6
	mov.l @(0x20,PC),r1
	mov.l @r1,r3
	add 0x6C,r3
	mov.b @r3,r0
	and 0xEF,r0
	mov.b r0,@r3
	rts
	mov 0x01,r0

loc_8c19b064:
	mov 0x00,r3
	mov.b r3,@r6

loc_8c19b068:
	mov 0x00,r0
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c19B070:
	#data 0x8C3479AC
loc_8c19B074:
	#data 0x8C3479B3
loc_8c19B078:
	#data 0x8C347970
loc_8c19B07C:
	#data 0x8C3479B2
loc_8c19B080:
	#data 0x8C3479A2

;==============================================
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

loc_8c19b0d0:
	mov.l @(loc_8c19b190,pc),r3
	mov 0x2E,r5
	mov 0x01,r6
	jsr @r3
	mov r13,r4
	mov 0x38,r5
	mov 0x01,r6

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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
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
loc_8c19B198:
	#data loc_8c19E562

;==============================================
loc_8c19b19c:
	mov 0x00,r14

loc_8c19b19e:
	extu.b r14,r3
	cmp/gt r4,r3
	bf loc_8c19b1a6
	mov r4,r14

loc_8c19b1a6:
	mov.b @r15,r0
	extu.b r14,r13
	mov.w @(loc_8C19B2AA,pc),r9
	shll r13
	mov.w @(loc_8C19B2AC,pc),r11
	extu.b r0,r0
	mov.l @(loc_8c19b2b0,pc),r8
	mov r9,r10
	cmp/eq 0x01,r0
	add 0x01,r10
	mov r11,r12
	bt/s loc_8c19b1cc
	add 0x01,r12
	cmp/eq 0x02,r0
	bt loc_8c19b1f2
	cmp/eq 0x03,r0
	bt loc_8c19b218
	bra loc_8c19b23e
	nop

loc_8c19b1cc:
	mov.l @(loc_8c19b2b4,pc),r5
	mov 0x02,r6
	add r13,r5
	mov.l r5,@r15
	mov.l @(loc_8c19b2b8,pc),r3
	mov.w @r5,r5
	jsr @r3
	mov r9,r4
	mov.l @r15,r5
	mov 0x02,r6
	mov.l @(loc_8c19b2b8,pc),r3
	mov.w @r5,r5
	extu.w r5,r5
	shlr8 r5
	jsr @r3
	mov r10,r4
	mov.l @(loc_8c19b2bc,pc),r5
	bra loc_8c19b262
	mov 0x02,r6

loc_8c19b1f2:
	mov r13,r5
	add r8,r5
	mov.l r5,@r15
	mov 0x02,r6
	mov.l @(loc_8c19b2b8,pc),r3
	mov.w @r5,r5
	jsr @r3
	mov r9,r4
	mov.l @r15,r5
	mov 0x02,r6
	mov.l @(loc_8c19b2b8,pc),r3
	mov.w @r5,r5
	extu.w r5,r5
	shlr8 r5
	jsr @r3
	mov r10,r4
	mov.l @(loc_8c19b2c0,pc),r5
	bra loc_8c19b262
	mov 0x02,r6

loc_8c19b218:
	mov.l @(loc_8c19b2c4,pc),r5
	mov 0x02,r6
	add r13,r5
	mov.l r5,@r15
	mov.l @(loc_8c19b2b8,pc),r3
	mov.w @r5,r5
	jsr @r3
	mov r9,r4
	mov.l @r15,r5
	mov 0x02,r6
	mov.l @(loc_8c19b2b8,pc),r3
	mov.w @r5,r5
	extu.w r5,r5
	shlr8 r5
	jsr @r3
	mov r10,r4
	mov.l @(loc_8c19b2c8,pc),r5
	bra loc_8c19b262
	mov 0x02,r6

loc_8c19b23e:
	mov r13,r5
	add r8,r5
	mov.l r5,@r15
	mov 0x02,r6
	mov.l @(loc_8c19b2b8,pc),r3
	mov.w @r5,r5
	jsr @r3
	mov r9,r4
	mov.l @r15,r5
	mov 0x02,r6
	mov.l @(loc_8c19b2b8,pc),r3
	mov.w @r5,r5
	extu.w r5,r5
	shlr8 r5
	jsr @r3
	mov r10,r4
	mov.l @(loc_8c19b2c0,pc),r5
	mov 0x02,r6

loc_8c19b262:
	add r13,r5
	mov.l r5,@r15
	mov.l @(loc_8c19b2b8,pc),r3
	mov.w @r5,r5
	jsr @r3
	mov r11,r4
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	mov r12,r4
	mov.w @r5,r5
	mov.l @(loc_8c19b2b8,pc),r3
	mov 0x02,r6
	mov.l @r15+,r8
	extu.w r5,r5
	shlr8 r5
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19b2aa:
	#data 0x029B
loc_8c19b2ac:
	#data 0x029D
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
loc_8c19B2D0:
	#data loc_8c19E562
loc_8c19B2D4:
	#data loc_8c19FE4A

;==============================================
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

;==============================================
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

;==============================================
loc_8c19B3E6:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b r4,@r15
	mov.l @(0x58,PC),r3
	mov.l @r3,r0
	add 0x24,r0
	mov.b @r0,r0
	tst 0x20,r0
	bf loc_8c19b406
	mov.l @(0x60,PC),r1
	jsr @r1
	mov 0x01,r4
	mov.l @(0x54,PC),r3
	mov.l @(0x5C,PC),r4
	jsr @r3
	mov 0x0A,r5

loc_8c19B406:
	mov.b @r15,r1
	mov.l @(0x58,PC),r0
	mov.l @(0x3C,PC),r3
	extu.b r1,r1
	mov.b @(r0,r1),r1
	mov 0x40,r0
	mov.l @r3,r2
	mov.b r1,@(r0,r2)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
;unused
loc_8c19b41e:
	mov.l @(0x28,PC),r2
	mov 0x40,r0
	mov.w @(0x16,PC),r1
	mov.l @r2,r3
	rts
	mov.b r1,@(r0,r3)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
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
loc_8c19B43c:
	#data 0x00FF
	#align4

loc_8c19B440:
	#data loc_8c19E30C
loc_8c19B444:
	#data bank12.loc_8c129128
loc_8c19B448:
	#data 0x8C347970
loc_8c19B44C:
	#data loc_8c19E562
loc_8c19B450:
	#data 0x8C347A18
loc_8c19B454:
	#data bank1b.loc_8c1b3EEC
loc_8c19B458:
	#data bank1b.loc_8c1b3F0C
loc_8c19B45C:
	#data loc_8c19FE4A
loc_8c19B460:
	#data 0x8C3479D8
loc_8c19B464:
	#data bank1c.loc_8c1c64BE

;==============================================
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
	extu.w r5,r7
	mov.l r14,@-r15
	mov.l r12,@-r15
	mov.b @r4,r3
	extu.b r3,r3
	cmp/ge r3,r7
	bt loc_8c19b49c
	bra loc_8c19b4e8
	mov 0x00,r0

loc_8c19B49C:
	mov 0x00,r5
	mov 0xFE,r14
	add r4,r5
	mov 0x00,r12
	add r4,r14
	mov r5,r0
	nop
	extu.w r6,r1
	cmp/pl r1
	bf loc_8c19b4dc

loc_8c19B4B0:
	extu.w r12,r2
	shll r2
	add r4,r2
	mov.b @r2,r3
	extu.b r3,r3
	cmp/eq r3,r7
	bf loc_8c19b4c2
	bra loc_8c19b4e8
	mov.b @(0x1,r5),r0

loc_8c19B4C2:
	mov.b @r0,r2
	extu.b r2,r2
	cmp/ge r2,r7
	bt loc_8c19b4ce
	bra loc_8c19b4e8
	mov.b @(0x1,r14),r0

loc_8c19B4CE:
	add 0x01,r12
	extu.w r12,r3
	cmp/ge r1,r3
	add 0x02,r14
	add 0x02,r0
	bf.s loc_8c19b4b0
	add 0x02,r5

loc_8c19B4DC:
	mov r1,r0
	nop
	add 0xFF,r0
	shll r0
	add r4,r0
	mov.b @(0x1,r0),r0

loc_8c19B4E8:
	mov.l @r15+,r12
	rts
	mov.l @r15+,r14

;==============================================
loc_8c19B4EE:
	extu.w r6,r3
	add 0xFF,r3
	shll2 r3
	add r4,r3
	mov.w @r3,r2
	extu.w r5,r0
	extu.w r2,r2
	cmp/gt r2,r0
	bf loc_8c19b504
	rts
	mov 0x00,r0

;==============================================
loc_8c19B504:
	mov.l @(0x60,PC),r5
	add r6,r5
	extu.w r5,r7
	shll2 r7
	add r4,r7
	extu.w r5,r3
	mov r7,r1
	cmp/pl r3
	add 0x04,r1
	bf.s loc_8c19b546
	mov r7,r6


loc_8c19B51A:
	extu.w r5,r3
	shll2 r3
	add r4,r3
	mov.w @r3,r2
	extu.w r2,r2
	cmp/eq r2,r0
	bf loc_8c19b52c
	rts
	mov.w @(0x2,r7),r0

;==============================================
loc_8c19B52C:
	mov.w @r6,r2
	extu.w r2,r2
	cmp/gt r2,r0
	bf loc_8c19b538
	rts
	mov.w @(0x2,r1),r0

;==============================================
loc_8c19B538:
	add 0xFF,r5
	extu.w r5,r3
	cmp/pl r3
	add 0xFC,r1
	add 0xFC,r6
	bt.s loc_8c19b51a
	add 0xFC,r7

loc_8c19B546:
	mov.w @(0x2,r4),r0
	rts
	nop

;==============================================
loc_8c19B54C:
	extu.w r5,r7
	mov.l r14,@-r15
	mov.l r12,@-r15
	mov.w @r4,r3
	extu.w r3,r3
	cmp/ge r3,r7
	bt loc_8c19b56c
	bra loc_8c19b5b8
	mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19B55E:
	#data 0x026B
loc_8c19B560:
	#data 0x026C
loc_8c19B562:
	#data 0x026D
	#align4

loc_8c19B564:
	#data loc_8c19E30C
loc_8c19B568:
	#data 0x0000FFFF

;==================================
loc_8c19B56C:
	mov 0x00,r5
	mov 0xFC,r14
	add r4,r5
	mov 0x00,r12
	add r4,r14
	mov r5,r0
	nop
	extu.w r6,r1
	cmp/pl r1
	bf loc_8c19b5ac

loc_8c19B580:
	extu.w r12,r2
	shll2 r2
	add r4,r2
	mov.w @r2,r3
	extu.w r3,r3
	cmp/eq r3,r7
	bf loc_8c19b592
	bra loc_8c19b5b8
	mov.w @(0x2,r5),r0

loc_8c19B592:
	mov.w @r0,r2
	extu.w r2,r2
	cmp/ge r2,r7
	bt loc_8c19b59e
	bra loc_8c19b5b8
	mov.w @(0x2,r14),r0

loc_8c19B59E:
	add 0x01,r12
	extu.w r12,r3
	cmp/ge r1,r3
	add 0x04,r14
	add 0x04,r0
	bf.s loc_8c19b580
	add 0x04,r5

loc_8c19B5AC:
	mov r1,r0
	nop
	add 0xFF,r0
	shll2 r0
	add r4,r0
	mov.w @(0x2,r0),r0

loc_8c19B5B8:
	mov.l @r15+,r12
	rts
	mov.l @r15+,r14

;==============================================
loc_8c19B5BE:
	mov.l r14,@-r15
	mov 0x00,r0
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov r4,r11
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov r7,r8
	sts.l pr,@-r15
	extu.b r5,r7
	tst r7,r7
	add 0xF0,r15
	mov.l @(0x34,r15),r14
	mov.b r0,@(0x4,r15)
	mov.b r0,@r15
	bt.s loc_8c19b5ea
	mov 0x01,r4
	extu.b r6,r2
	cmp/gt r2,r7
	bf loc_8c19b5ec

loc_8c19B5EA:
	mov r4,r5

loc_8c19B5EC:
	extu.b r8,r7
	tst r7,r7
	bt loc_8c19b5fc
	mov 0x30,r0
	mov.b @(r0,r15),r3
	extu.b r3,r3
	cmp/gt r3,r7
	bf loc_8c19b5fe

loc_8c19B5FC:
	mov r4,r8

loc_8c19B5FE:
	mov.l @(0x48,PC),r3
	mov.l @r3,r2
	mov.b @(0xC,r2),r0
	and 0x7F,r0
	mov.b r0,@(0xC,r2)
	mov.l @(0x40,PC),r2
	mov 0x02,r7
	mov 0x08,r10
	tst r11,r2
	bt.s loc_8c19b6b8
	extu.b r6,r13
	mov.l @(0x38,PC),r0
	cmp/eq r0,r11
	bf loc_8c19b628
	mov 0x06,r1
	cmp/ge r1,r13
	bf loc_8c19b624
	bra loc_8c19b688
	mov.b r7,@r14

loc_8c19B624:
	bra loc_8c19b688
	mov.b r4,@r14

loc_8c19B628:
	mov.l @(0x28,PC),r1
	cmp/eq r1,r11
	bf.s loc_8c19b658
	mov 0x07,r4
	cmp/ge r10,r13
	bf loc_8c19b638
	bra loc_8c19ba70
	mov 0x14,r3

loc_8c19B638:
	cmp/ge r4,r13
	bf loc_8c19b642
	mov 0x12,r2

loc_8c19B63E:
	bra loc_8c19ba94
	mov.b r2,@r14


loc_8c19B642:
	mov 0x11,r3
	bra loc_8c19ba94
	mov.b r3,@r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c19B648:
	#data 0x8C347970
loc_8c19B64c:
	#data 0x00FF0000
loc_8c19B650:
	#data 0x00040000
loc_8c19B654:
	#data 0x00080000

;==============================================
loc_8c19B658:
	mov.l @(0x98,PC),r3
	cmp/eq r3,r11
	bf loc_8c19b696
	mov 0x0C,r0
	cmp/ge r0,r13
	bf loc_8c19b66a
	mov.w @(0x7E,PC),r1
	bra loc_8c19b672
	nop

loc_8c19B66A:
	mov 0x0B,r2
	cmp/ge r2,r13
	bf loc_8c19b676
	mov.w @(0x74,PC),r1

loc_8c19B672:
	bra loc_8c19b688
	mov.b r1,@r14

loc_8c19B676:
	cmp/ge r10,r13
	bf loc_8c19b680
	mov.w @(0x6C,PC),r3
	bra loc_8c19b688
	mov.b r3,@r14

loc_8c19B680:
	cmp/ge r4,r13
	bf loc_8c19b688
	mov.w @(0x64,PC),r1
	mov.b r1,@r14

loc_8c19B688:
	mov.l @(0x6C,PC),r3
	mov.l @r3,r2
	mov.b @(0xC,r2),r0
	or 0x80,r0
	mov.b r0,@(0xC,r2)
	bra loc_8c19ba94
	nop

loc_8c19B696:
	mov.l @(0x64,PC),r0
	cmp/eq r0,r11
	bf loc_8c19b6aa
	cmp/ge r7,r13
	bt loc_8c19b6a4
	bra loc_8c19ba94
	nop

loc_8c19B6A4:
	mov.w @(0x46,PC),r2
	bra loc_8c19ba94
	mov.b r2,@r14

loc_8c19B6AA:
	mov.l @(0x54,PC),r1
	cmp/eq r1,r11
	bf loc_8c19b6b4
	bra loc_8c19ba94
	nop

loc_8c19B6B4:
	bra loc_8c19ba94
	nop

loc_8c19B6B8:
	mov 0xFD,r0
	and r11,r0
	cmp/eq 0x04,r0
	bf loc_8c19b6d4
	mov r13,r0
	nop
	cmp/eq 0x04,r0
	bf loc_8c19b6ce
	mov.w @(0x24,PC),r2
	bra loc_8c19b63e
	nop

loc_8c19B6CE:
	mov.w @(0x20,PC),r0
	bra loc_8c19ba94
	mov.b r0,@r14

loc_8c19B6D4:
	mov r11,r3
	tst r4,r3
	bt loc_8c19b708
	mov 0x04,r1
	cmp/ge r1,r13
	bf loc_8c19b704
	mov 0x62,r2
	bra loc_8c19b708
	mov.b r2,@r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19b6e6:
	#data 0x00B1
loc_8c19b6e8:
	#data 0x00B2
loc_8c19b6ea:
	#data 0x00B4
loc_8c19b6ec:
	#data 0x00B8
loc_8c19b6ee:
	#data 0x00A8
loc_8c19b6f0:
	#data 0x00A4
loc_8c19b6f2:
	#data 0x00A1
	#align4

loc_8c19b6f4:
	#data 0x00100000
loc_8c19b6f8:
	#data 0x8C347970
loc_8c19b6fc:
	#data 0x00020000
loc_8c19b700:
	#data 0x00400000

;==============================================
loc_8c19B704:
	mov 0x60,r0
	mov.b r0,@r14

loc_8c19B708:
	tst r11,r7
	bt loc_8c19b71c
	mov 0x02,r2
	cmp/ge r2,r13
	bf loc_8c19b71c
	extu.b r5,r1
	cmp/gt r2,r1
	bt loc_8c19b71c
	mov.w @(0x44,PC),r2
	mov.b r2,@r14

loc_8c19B71C:
	mov r11,r3
	tst r10,r3
	bt loc_8c19b740
	mov 0x03,r1
	cmp/ge r1,r13
	bf loc_8c19b740
	mov 0x04,r3
	extu.b r5,r2
	cmp/gt r3,r2
	bt loc_8c19b740
	mov 0x03,r1
	cmp/gt r1,r13
	bf loc_8c19b73c
	mov 0x52,r2
	bra loc_8c19b740
	mov.b r2,@r14

loc_8c19B73C:
	mov 0x51,r0
	mov.b r0,@r14

loc_8c19B740:
	mov 0x10,r3
	tst r11,r3
	bt loc_8c19b768
	mov 0x04,r1
	cmp/ge r1,r13
	bf loc_8c19b768
	mov 0x05,r3
	extu.b r5,r2
	cmp/gt r3,r2
	bt loc_8c19b768
	mov 0x04,r1
	cmp/gt r1,r13
	bf loc_8c19b764
	mov.w @(0x4,PC),r2
	bra loc_8c19b768
	mov.b r2,@r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19B760:
	#data 0x00A0
loc_8c19B762:
	#data 0x0084

;==============================================
loc_8c19B764:
	mov.w @(0xB0,PC),r0
	mov.b r0,@r14

loc_8c19B768:
	mov 0x20,r3
	tst r11,r3
	bt.s loc_8c19b7ae
	extu.b r5,r9
	mov 0x06,r1
	cmp/ge r1,r13
	bf loc_8c19b7ae
	mov 0x08,r3
	extu.b r5,r2
	cmp/gt r3,r2
	bt loc_8c19b7ae
	mov 0x06,r3
	mov.w @(0x96,PC),r12
	cmp/gt r3,r9
	mov r4,r0
	bt.s loc_8c19b790
	mov.b r0,@(0x4,r15)
	mov 0x71,r1
	mov.w @(0x8C,PC),r12
	mov.b r1,@r14

loc_8c19B790:
	cmp/ge r10,r13
	bf loc_8c19b7ae
	mov.w @(0x86,PC),r2
	mov 0x75,r3
	cmp/ge r10,r13
	mov.b r3,@r14
	or r2,r12
	bf loc_8c19b7ae
	mov.l @(0x80,PC),r3
	tst r11,r3
	bt loc_8c19b7ae
	mov.w @(0x76,PC),r1
	mov 0x74,r3
	mov.b r3,@r14
	and r1,r12

loc_8c19B7AE:
	extu.b r5,r0
	mov 0x40,r3
	mov.w r0,@(0xC,r15)
	tst r11,r3
	extu.b r6,r0
	bt.s loc_8c19b83a
	mov.w r0,@(0x8,r15)
	mov 0x06,r1
	cmp/ge r1,r13
	bf loc_8c19b83a
	mov 0x0C,r2
	cmp/gt r2,r9
	bt loc_8c19b83a
	mov r4,r0
	nop
	mov.b r0,@(0x4,r15)
	mov 0x05,r6
	mov.b r4,@r15
	mov.w @(0xC,r15),r0
	mov.l @(0x50,PC),r4
	bsr loc_8c19b4ee
	mov r0,r5
	mov r0,r12
	mov.w @(0x8,r15),r0
	mov.l @(0x4C,PC),r4
	mov 0x05,r6
	bsr loc_8c19b54c
	mov r0,r5
	and r0,r12
	extu.w r12,r2
	tst r10,r2
	bt loc_8c19b7f2
	bra loc_8c19b814
	mov 0x76,r1

loc_8c19B7F2:
	extu.w r12,r0
	tst 0x20,r0
	bt loc_8c19b7fe
	mov 0x72,r2
	bra loc_8c19b83a
	mov.b r2,@r14

loc_8c19B7FE:
	mov.w @(0x1C,PC),r3
	extu.w r12,r1
	tst r3,r1
	bt loc_8c19b80c
	mov 0x74,r0
	bra loc_8c19b83a
	mov.b r0,@r14

loc_8c19B80C:
	extu.w r12,r0
	tst 0x40,r0
	bt loc_8c19b830
	mov 0x78,r1

loc_8c19B814:
	bra loc_8c19b83a
	mov.b r1,@r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19B818:
	#data 0x0082
loc_8c19B81a:
	#data 0x0111
loc_8c19B81c:
	#data 0x0511
loc_8c19B81e:
	#data 0x0200
loc_8c19B820:
	#data 0x0080
	#align4

loc_8c19B824:
	#data 0x00800000
loc_8c19B828:
	#data bank1c.loc_8c1c65E0
loc_8c19B82C:
	#data bank1c.loc_8c1c65CC

;==============================================
loc_8c19B830:
	mov.w @(0x42,PC),r2
	tst r2,r0
	bt loc_8c19b83a
	mov 0x71,r1
	mov.b r1,@r14

loc_8c19B83A:
	mov.b @(0x4,r15),r0
	tst r0,r0
	bt loc_8c19b8b4
	mov.b @r15,r3
	tst r3,r3
	bt loc_8c19b884
	mov.l @(0x38,PC),r3
	mov 0x01,r6
	mov.w @(0x2A,PC),r4
	jsr @r3
	mov r12,r5
	mov.w @(0x26,PC),r4
	mov 0x01,r6
	mov.l @(0x28,PC),r3
	extu.w r12,r5
	jsr @r3
	shlr8 r5
	mov.l @(0x20,PC),r2
	mov 0x01,r6
	mov.w @(0x18,PC),r4
	jsr @r2
	mov r12,r5
	mov.w @(0x14,PC),r4
	mov 0x01,r6
	mov.l @(0x14,PC),r3
	extu.w r12,r5
	jsr @r3
	shlr8 r5
	bra loc_8c19b888
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19b876:
	#data 0x0400
loc_8c19b878:
	#data 0x02C4
loc_8c19b87a:
	#data 0x02C5
loc_8c19b87c:
	#data 0x02C6
loc_8c19b87e:
	#data 0x02C7
	#align4

loc_8c19B880:
	#data loc_8c19E30C

;==============================================
loc_8c19B884:
	mov.l @(0x104,PC),r3
	and r3,r12

loc_8c19B888:
	mov.l @(0x104,PC),r2
	mov 0x01,r6
	mov.w @(0xE0,PC),r4
	jsr @r2
	mov r12,r5
	mov.w @(0xDC,PC),r4
	mov 0x01,r6
	mov.l @(0xF8,PC),r3
	extu.w r12,r5
	jsr @r3
	shlr8 r5
	mov.l @(0xF0,PC),r2
	mov 0x01,r6
	mov.w @(0xCE,PC),r4
	jsr @r2
	mov r12,r5
	mov.w @(0xCA,PC),r4
	mov 0x01,r6
	mov.l @(0xE0,PC),r3
	extu.w r12,r5
	jsr @r3
	shlr8 r5

loc_8c19B8B4:
	mov 0x30,r0
	mov.w @(0xC0,PC),r3
	mov.b @(r0,r15),r0
	mov.w @(0xBA,PC),r12
	tst r11,r3
	extu.b r0,r0
	bf.s loc_8c19b8c8
	mov.w r0,@(0x4,r15)
	bra loc_8c19b9ba
	nop

loc_8c19B8C8:
	mov 0x05,r1
	cmp/ge r1,r13
	bf loc_8c19b9ba
	mov 0x20,r2
	cmp/gt r2,r9
	bt loc_8c19b9ba
	mov 0x30,r0
	mov.b @(r0,r15),r1
	mov 0x05,r3
	extu.b r1,r1
	cmp/ge r3,r1
	bf loc_8c19b9ba
	extu.b r8,r0
	cmp/gt r2,r0
	bt loc_8c19b9ba
	mov.l @(0xAC,PC),r4
	mov 0x0F,r6
	mov.w @(0x4,r15),r0
	bsr loc_8c19b48a
	mov r0,r5
	mov.b r0,@r15
	mov 0x01,r6
	mov.l @(0xA0,PC),r3
	mov.b r0,@r3
	mov.b @r15,r0
	mov.w @(0x80,PC),r4
	mov.l @(0x90,PC),r3
	extu.b r0,r0
	mov.w @(0x78,PC),r5
	jsr @r3
	or r0,r5
	mov.b @r15,r0
	mov 0x0F,r6
	or 0xC0,r0
	mov.b r0,@r14
	mov.l @(0x84,PC),r4
	mov.w @(0x8,r15),r0
	bsr loc_8c19b48a
	mov r0,r5
	mov.l @(0x84,PC),r2
	mov r0,r4
	mov 0x0F,r6
	mov.b r4,@r2
	mov.l @(0x80,PC),r4
	bsr loc_8c19b4ee
	extu.b r8,r5
	mov.w r0,@r15
	mov 0x01,r6
	mov.w @(0x54,PC),r4
	mov.l @(0x64,PC),r3
	jsr @r3
	mov r0,r5
	mov.w @r15,r5
	mov 0x01,r6
	mov.w @(0x4A,PC),r4
	mov.l @(0x58,PC),r3
	extu.w r5,r5
	jsr @r3
	shlr8 r5
	mov.l @(0x50,PC),r2
	mov.w @(0x42,PC),r4
	mov.w @(0x3E,PC),r5
	jsr @r2
	mov 0x01,r6
	mov.l @(0x44,PC),r3
	mov 0x00,r5
	mov 0x01,r6
	jsr @r3
	mov r12,r4
	mov.l @(0x50,PC),r2
	jsr @r2
	nop
	exts.b r0,r0
	tst r0,r0
	bf loc_8c19b9ac
	mov.l @(0x48,PC),r3
	mov.l @r3,r0
	add 0x24,r0
	mov.b @r0,r0
	tst 0x80,r0
	bf loc_8c19b9ac
	mov.w @(0x1A,PC),r3
	bra loc_8c19b9ba
	mov.b r3,@r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19b970:
	#data 0x02c0
loc_8c19b972:
	#data 0x02c1
loc_8c19b974:
	#data 0x02c2
loc_8c19b976:
	#data 0x02c3
loc_8c19b978:
	#data 0x06a3
loc_8c19b97a:
	#data 0x0080
loc_8c19b97c:
	#data 0x00c0
loc_8c19b97e:
	#data 0x0309
loc_8c19b980:
	#data 0x0382
loc_8c19b982:
	#data 0x0383
loc_8c19b984:
	#data 0x00c8
loc_8c19b986:
	#data 0x0304
loc_8c19b988:
	#data 0x00aa
	#align4

loc_8c19B98c:
	#data 0x0000F77F
loc_8c19B990:
	#data loc_8c19E30C
loc_8c19B994:
	#data bank1c.loc_8c1c666C
loc_8c19B998:
	#data 0x8C347983
loc_8c19B99c:
	#data 0x8C347981
loc_8c19B9A0:
	#data bank1c.loc_8c1c6630
loc_8c19B9A4:
	#data loc_8c19CD7A
loc_8c19B9A8:
	#data 0x8C347970

;==============================================
loc_8c19B9AC:
	mov.l @(0x10C,PC),r3
	mov 0x01,r6
	mov.w @(0xF4,PC),r4
	mov.l @(0x10C,PC),r2
	mov.b @r3,r5
	jsr @r2
	extu.b r5,r5

loc_8c19B9BA:
	mov.w @(0xEC,PC),r3
	tst r3,r11
	bt loc_8c19ba94
	mov 0x05,r1
	cmp/ge r1,r13
	bf loc_8c19ba94
	mov 0x20,r0
	cmp/gt r0,r9
	bt loc_8c19ba94
	mov 0x30,r0
	mov.b @(r0,r15),r2
	mov 0x18,r3
	extu.b r2,r2
	cmp/ge r3,r2
	bf loc_8c19ba94
	mov 0x38,r0
	extu.b r8,r8
	cmp/gt r0,r8
	bt loc_8c19ba94
	mov.l @(0xE0,PC),r2
	mov 0x01,r5
	jsr @r2
	mov r12,r4
	and 0x40,r0
	mov.b r0,@r15
	mov 0x05,r5
	mov.l @(0xD0,PC),r3
	extu.b r0,r0
	mov 0x01,r6
	or r0,r5
	jsr @r3
	mov r12,r4
	mov.l @(0xC4,PC),r2
	mov.w @(0xAE,PC),r4
	mov.w @(0xAA,PC),r5
	jsr @r2
	mov 0x01,r6
	mov.l @(0xC0,PC),r4
	mov 0x16,r6
	mov.w @(0x4,r15),r0
	bsr loc_8c19b48a
	mov r0,r5
	mov.w @(0xA0,PC),r4
	mov r0,r13
	mov.w @(0x9A,PC),r5
	mov 0x01,r6
	mov.l @(0xA8,PC),r3
	extu.b r13,r0
	jsr @r3
	or r0,r5
	mov.w @(0x8E,PC),r2
	mov 0x0F,r6
	or r13,r2
	mov.b r2,@r14
	mov.l @(0xA4,PC),r3
	mov.b r13,@r3
	mov.w @(0xC,r15),r0
	mov.l @(0xA0,PC),r4
	bsr loc_8c19b4ee
	mov r0,r5
	mov r0,r13
	mov.w @(0x8,r15),r0
	mov.l @(0x9C,PC),r4
	mov 0x0F,r6
	bsr loc_8c19b54c
	mov r0,r5
	mov.w @(0x72,PC),r4
	and r0,r13
	mov.l @(0x7C,PC),r2
	mov 0x01,r6
	jsr @r2
	mov r13,r5
	mov.w @(0x68,PC),r4
	mov 0x01,r6
	mov.l @(0x70,PC),r3
	extu.w r13,r5
	jsr @r3
	shlr8 r5
	mov.l @(0x80,PC),r2
	jsr @r2
	nop
	exts.b r0,r0
	tst r0,r0
	bf loc_8c19ba74
	mov.l @(0x78,PC),r3
	mov.l @r3,r0
	add 0x24,r0
	mov.b @r0,r0
	tst 0x80,r0
	bf loc_8c19ba74
	mov.w @(0x46,PC),r3

loc_8c19BA70:
	bra loc_8c19ba94
	mov.b r3,@r14

loc_8c19BA74:
	add 0x10,r15
	mov.l @(0x54,PC),r3
	lds.l @r15+,pr
	mov.b @r3,r5
	mov 0x01,r6
	mov.w @(0x26,PC),r4
	mov.l @r15+,r8
	extu.b r5,r5
	mov.l @(0x38,PC),r2
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c19BA94:
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
loc_8c19baa8:
	#data 0x0604
loc_8c19baaa:
	#data 0x0200
loc_8c19baac:
	#data 0x00D8
loc_8c19baae:
	#data 0x0304
loc_8c19bab0:
	#data 0x00E0
loc_8c19bab2:
	#data 0x06A2
loc_8c19bab4:
	#data 0x0382
loc_8c19bab6:
	#data 0x0383
loc_8c19bab8:
	#data 0x00AA
	#align4

loc_8c19BAbc:
	#data 0x8C347983
loc_8c19BAC0:
	#data loc_8c19E30C
loc_8c19BAC4:
	#data loc_8c19E1F8
loc_8c19BAC8:
	#data bank1c.loc_8c1c66A6
loc_8c19BAcc:
	#data 0x8C347985
loc_8c19BAD0:
	#data bank1c.loc_8c1c6630
loc_8c19BAD4:
	#data bank1c.loc_8c1c65F4
loc_8c19BAD8:
	#data loc_8c19CD7A
loc_8c19BADC:
	#data 0x8C347970

;==============================================
loc_8c19BAE0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r5,r0
	nop
	mov r6,r12
	mov.b r0,@(0x4,r15)
	mov r7,r0
	nop
	mov.b r0,@(0x8,r15)
	mov 0x20,r0
	extu.b r12,r2
	mov.b @(r0,r15),r11
	mov 0x00,r3
	tst r2,r2
	mov.b r3,@r15
	bf.s loc_8c19bb0c
	mov r4,r14
	mov 0x20,r12

loc_8c19BB0C:
	extu.b r11,r2
	tst r2,r2
	bf loc_8c19bb14
	mov 0x38,r11

loc_8c19BB14:
	mov.w @(0xCA,PC),r2
	tst r14,r2
	bt loc_8c19bb2e
	mov.l @(0xD4,PC),r1
	mov.l @r1,r0
	tst 0x01,r0
	bf loc_8c19bb2e
	mov.w @(0xBE,PC),r2
	mov.w @(0xBE,PC),r3
	mov.w @(0xBE,PC),r1
	and r2,r14
	and r3,r14
	or r1,r14

loc_8c19BB2E:
	mov r15,r3
	mov.l r3,@-r15
	mov 0x10,r0
	mov.l r11,@-r15
	mov.b @(r0,r15),r7
	mov r12,r6
	mov.b @(0xC,r15),r0
	mov r0,r5
	bsr loc_8c19b5be
	mov r14,r4
	add 0x08,r15
	mov.b @r15,r2
	tst r2,r2
	bf loc_8c19bb4e
	mov.w @(0x9C,PC),r3
	mov.b r3,@r15

loc_8c19BB4E:
	mov.l @(0xA8,PC),r3
	mov.l @(0xA0,PC),r13
	jsr @r3
	nop
	exts.b r0,r0
	tst r0,r0
	bt loc_8c19bb6a
	mov.l @(0x94,PC),r3
	mov.l @r3,r0
	add 0x54,r0
	mov.b @r0,r0
	and 0x01,r0
	cmp/eq 0x01,r0
	bt loc_8c19bb72

loc_8c19BB6A:
	mov.b @r15,r2
	mov 0x48,r0
	mov.l @r13,r3
	mov.b r2,@(r0,r3)

loc_8c19BB72:
	mov.b @r15,r3
	mov.w @(0x74,PC),r2
	extu.b r3,r3
	cmp/eq r2,r3
	bf loc_8c19bb84
	mov.l @(0x7C,PC),r1
	mov.b @r1,r0
	or 0x80,r0
	mov.b r0,@r1

loc_8c19BB84:
	bsr loc_8c19c7a0
	nop
	exts.b r0,r0
	tst r0,r0
	bf loc_8c19bc26
	mov.l @(0x70,PC),r13
	mov 0x00,r3
	mov.b r3,@r13
	mov.l @(0x6C,PC),r2
	jsr @r2
	mov r14,r4
	cmp/eq r14,r0
	bt loc_8c19bbcc
	mov.b @r15,r2
	mov.w @(0x48,PC),r3
	extu.b r2,r2
	cmp/eq r3,r2
	bt loc_8c19bbc6
	mov.l @(0x48,PC),r2
	mov 0x48,r0
	mov.l @r2,r1
	mov.b @(r0,r1),r0
	mov 0x71,r3
	extu.b r0,r0
	cmp/ge r3,r0
	bf loc_8c19bbcc
	mov.l @r2,r0
	mov 0x48,r1
	mov.b @(r0,r1),r1
	mov 0x76,r0
	extu.b r1,r1
	cmp/gt r0,r1
	bt loc_8c19bbcc

loc_8c19BBC6:
	mov.b @r13,r0
	or 0x01,r0
	mov.b r0,@r13

loc_8c19BBCC:
	mov.b @(0x4,r15),r0
	extu.b r12,r12
	extu.b r0,r0
	cmp/eq r12,r0
	bf loc_8c19bc0a
	mov.b @(0x8,r15),r0
	extu.b r11,r11
	extu.b r0,r0
	cmp/eq r11,r0
	bra loc_8c19bc08
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19bbe2:
	#data 0x0300
loc_8c19bbe4:
	#data 0xFDFF
loc_8c19bbe6:
	#data 0xFEFF
loc_8c19bbe8:
	#data 0x0080
loc_8c19bbea:
	#data 0x00A0
loc_8c19bbec:
	#data 0x00AA
	#align4

loc_8c19bbf0:
	#data 0x8C347994
loc_8c19bbf4:
	#data 0x8C347970
loc_8c19BBF8:
	#data loc_8c19CD7A
loc_8c19BBFc:
	#data 0x8C347979
loc_8c19Bc00:
	#data 0x8C3479E8
loc_8c19BC04:
	#data bank1b.loc_8c1b4F16

;==============================================
loc_8c19BC08:
	bt loc_8c19bc10

loc_8c19BC0A:
	mov.b @r13,r0
	or 0x02,r0
	mov.b r0,@r13

loc_8c19BC10:
	mov.l @(0x110,PC),r2
	jsr @r2
	nop
	exts.b r0,r0
	tst r0,r0
	bf loc_8c19bc3c
	mov.l @(0x108,PC),r2
	jsr @r2
	nop
	bra loc_8c19bc3c
	nop

loc_8c19BC26:
	mov.l @r13,r3
	add 0x24,r3
	mov.b @r3,r0
	and 0xFE,r0
	mov.b r0,@r3
	mov.l @r13,r2
	mov r2,r3
	add 0x20,r3
	mov.b @r3,r0
	and 0xFE,r0
	mov.b r0,@r3

loc_8c19BC3C:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19BD22:
	#data 0x03A5
	#align4

loc_8c19BD24:
	#data loc_8c19CD7A
loc_8c19BD28:
	#data loc_8c19E562
loc_8c19BD2C:
	#data 0x8C347974
loc_8c19BD30:
	#data 0x8C347970
loc_8c19BD34:
	#data 0x8C347A14
loc_8c19BD38:
	#data 0x8C34797E
loc_8c19BD3C:
	#data 0x8C3479A0
loc_8c19BD40:
	#data bank1b.loc_8c1b0E88
loc_8c19BD44:
	#data 0x8C3479E8
loc_8c19BD48:
	#data loc_8c19E1F8
loc_8c19BD4C:
	#data loc_8c19E30C

;==============================================
loc_8c19bd50:
	mov.l @r14,r2
	mov.b @(0x0C,r2),r0
	and 0xF7,r0
	mov.b r0,@(0x0C,r2)
	mov.l @r14,r2
	mov r2,r3
	add 0x54,r3
	mov.b @r3,r0
	and 0xFE,r0
	mov.b r0,@r3

loc_8c19bd64:
	mov.l @r14,r3
	add 0x24,r3
	mov.b @r3,r0
	or 0x01,r0
	mov.b r0,@r3
	mov.l @r14,r3
	add 0x20,r3
	mov.b @r3,r0
	or 0x01,r0
	mov.b r0,@r3
	mov.l @r14,r0
	mov 0x48,r1
	mov.w @(loc_8C19BE0C,pc),r3
	mov.b @(r0,r1),r0
	extu.b r0,r0
	and 0xF0,r0
	cmp/eq r3,r0
	bf loc_8c19bd9c
	mov.l @r14,r0
	add 0x24,r0
	mov.b @r0,r0
	tst 0x10,r0
	bf loc_8c19bd9c
	mov.l @(loc_8c19be18,pc),r3
	mov 0x02,r6
	mov.w @(loc_8C19BE0E,pc),r4
	jsr @r3
	mov 0x00,r5

loc_8c19bd9c:
	mov.l @r14,r0
	add 0x54,r0
	mov.b @r0,r0
	mov.w @(loc_8C19BE10,pc),r1
	and 0x01,r0
	mov.l @(loc_8c19be1c,pc),r3
	mov r13,r2
	jsr @r3
	add 0x01,r2
	mov.l @(loc_8c19be20,pc),r2
	mov.w @(loc_8C19BE12,pc),r4
	jsr @r2
	mov 0x01,r5
	mov.b r0,@r15
	mov 0x08,r5
	mov.w @(loc_8C19BE12,pc),r4
	mov 0x01,r6
	mov.l @(loc_8c19be18,pc),r3
	extu.b r0,r0
	jsr @r3
	or r0,r5
	mov.l @r14,r0
	add 0x24,r0
	mov.b @r0,r0
	tst 0x10,r0
	bt loc_8c19be98
	add 0x04,r15
	mov.l @(loc_8c19be28,pc),r3
	lds.l @r15+,pr
	mov.l @(loc_8C19BE24,pc),r4
	mov.w @(loc_8C19BE14,pc),r5
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

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
	
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19be0c:
	#data 0x00A0
loc_8c19be0e:
	#data 0x0A04
loc_8c19be10:
	#data 0x0301
loc_8c19be12:
	#data 0x010D
loc_8c19be14:
	#data 0x00C8
	#align4

loc_8c19BE18:
	#data loc_8c19E30C
loc_8c19BE1C:
	#data bank13.loc_8c130ECC
loc_8c19BE20:
	#data loc_8c19E1F8
loc_8c19be24:
	#data 0x8C347A08
loc_8c19BE28:
	#data bank1b.loc_8c1b3EEC

;==============================================
loc_8c19be2c:
	mov 0x01,r0

loc_8c19be2e:
	mov.l @(loc_8c19bea8,pc),r3
	mov.w @(loc_8C19BEA6,pc),r1
	jsr @r3
	nop
	mov.l @(loc_8c19beac,pc),r2
	jsr @r2
	nop
	mov.l @r14,r3
	add 0x20,r3
	mov.b @r3,r0
	or 0x40,r0
	mov.b r0,@r3
	mov.l @r14,r0
	add 0x24,r0
	mov.b @r0,r0
	tst 0x10,r0
	bf loc_8c19be6e
	mov.l @r14,r0
	mov 0x48,r1
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c19be68
	mov.l @r14,r0
	mov 0x48,r2
	mov.b @(r0,r2),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c19be6e

loc_8c19be68:
	mov.b @(0x03,r13),r0
	or 0x02,r0
	mov.b r0,@(0x03,r13)

loc_8c19be6e:
	mov.l @r14,r0
	add 0x24,r0
	mov.b @r0,r0
	tst 0x10,r0
	bt loc_8c19be98
	mov.l @r14,r3
	add 0x20,r3
	mov.b @r3,r0
	or 0x01,r0
	mov.b r0,@r3
	mov.l @(loc_8c19beb4,pc),r2
	mov.l @(loc_8C19BEB0,pc),r4
	jsr @r2
	mov 0x01,r5
	mov.l @(loc_8C19BEB0,pc),r12
	mov.l @(loc_8c19beb8,pc),r11

loc_8c19be8e:
	jsr @r11
	mov.l @r12,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c19be8e

loc_8c19be98:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C19BEA6:
	#data 0x0301
	#align4

loc_8c19bea8:
	#data bank13.loc_8c130ecc
loc_8c19beac:
	#data loc_8c19e562
loc_8C19BEB0:
	#data 0x8C347A18
loc_8c19beb4:
	#data bank1b.loc_8c1b3eec
loc_8c19beb8:
	#data bank1b.loc_8c1b3f0c

;==============================================
loc_8c19bebc:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.l @(0xE4,PC),r14
	mov.l @(0xE4,PC),r3
	mov.l @(0xDC,PC),r11
	add 0xFC,r15
	mov.l @(0xD4,PC),r10
	jsr @r3
	nop
	mov r11,r0
	nop
	mov.b @(0x1,r0),r0
	tst 0x02,r0
	bf loc_8c19bf50
	mov.l @(0xCC,PC),r3
	mov.l @r3,r0
	add 0x54,r0
	mov.b @r0,r0
	tst 0x08,r0
	bf loc_8c19bf50
	mov.l @r3,r0
	mov 0x48,r1
	mov.b @(r0,r1),r2
	mov.w @(0xA0,PC),r0
	extu.b r2,r2
	cmp/eq r0,r2
	bt loc_8c19bf50
	mov.l @r14,r3
	mov 0x48,r0
	mov.b @(r0,r3),r2
	mov.w @(0x94,PC),r3
	extu.b r2,r2
	cmp/eq r3,r2
	bt loc_8c19bf3e
	mov.l @r14,r1
	mov.b @(r0,r1),r2
	mov.w @(0x8A,PC),r1
	extu.b r2,r2
	cmp/eq r1,r2
	bt loc_8c19bf3e
	mov.l @r14,r0
	mov 0x48,r2
	mov.b @(r0,r2),r0
	extu.b r0,r0
	cmp/eq 0x60,r0
	bt loc_8c19bf3e
	mov.l @r14,r0
	mov 0x48,r3
	mov.w @(0x74,PC),r2
	mov.b @(r0,r3),r3
	extu.b r3,r3
	cmp/eq r2,r3
	bt loc_8c19bf3e
	mov.l @r14,r0
	mov 0x48,r3
	mov.w @(0x68,PC),r2
	mov.b @(r0,r3),r3
	extu.b r3,r3
	cmp/eq r2,r3
	bf loc_8c19bf4a

loc_8c19bf3e:
	mov.l @r14,r2
	mov r2,r3
	add 0x14,r3
	mov.b @r3,r0
	and 0xF7,r0
	mov.b r0,@r3

loc_8c19bf4a:
	mov.b @(0x1,r11),r0
	or 0x02,r0
	mov.b r0,@(0x1,r11)

loc_8c19bf50:
	mov.l @r14,r2
	mov 0x48,r0
	mov.b @(r0,r2),r3
	mov.w @(0x48,PC),r2
	extu.b r3,r3
	cmp/eq r2,r3
	bt loc_8c19bf92
	mov.l @r14,r0
	mov 0x48,r1
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x70,r0
	bt loc_8c19bf92
	mov.l @r14,r0
	mov 0x48,r3
	mov.w @(0x32,PC),r2
	mov.b @(r0,r3),r3
	extu.b r3,r3
	cmp/eq r2,r3
	bt loc_8c19bf92
	mov.l @r14,r0
	mov 0x48,r3
	mov.w @(0x26,PC),r2
	mov.b @(r0,r3),r3
	extu.b r3,r3
	cmp/eq r2,r3
	bt loc_8c19bf92
	mov.l @r14,r0
	mov 0x48,r3
	mov.b @(r0,r3),r0
	extu.b r0,r0
	cmp/eq 0x40,r0
	bf loc_8c19bfb8

loc_8c19bf92:
	mov 0x07,r3
	bra loc_8c19c278
	mov.b r3,@r10

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19bf98:
	#data 0x00AA
loc_8c19bf9a:
	#data 0x00A1
loc_8c19bf9c:
	#data 0x00A4
loc_8c19bf9e:
	#data 0x00A0
loc_8c19bfa0:
	#data 0x00A8
loc_8c19bfa2:
	#data 0x0090
loc_8c19bfa4:
	#data 0x00AF
loc_8c19bfa6:
	#data 0x00C0
	#align4

loc_8c19bfa8:
	#data 0x8C34797E
loc_8c19bfac:
	#data 0x8C347974
loc_8c19bfb0:
	#data 0x8C347970
loc_8c19bfb4:
	#data 0x8C1B2888

;==============================================
loc_8c19bfb8:
	mov.l @(0xF8,PC),r13
	mov.w @(0xE2,PC),r12
	bsr loc_8c19cd7a
	nop
	exts.b r0,r0
	tst r0,r0
	bf loc_8c19bfca
	bra loc_8c19c0e0
	nop

loc_8c19bfca:
	mov.l @(0xEC,PC),r3
	mov.l @r3,r0
	add 0x3C,r0
	mov.b @r0,r0
	tst 0x20,r0
	bf loc_8c19bfda
	bra loc_8c19c0e0
	nop

loc_8c19bfda:
	mov.l @r3,r0
	add 0x38,r0
	mov.b @r0,r0
	tst 0x80,r0
	bt loc_8c19bfe8
	bra loc_8c19c0e0
	nop

loc_8c19bfe8:
	mov 0x00,r2
	mov 0x20,r3
	mov.b r3,@r10
	mov.l @(0xCC,PC),r1
	mov.b r2,@r1
	mov.l @r14,r2
	mov r11,r0
	nop
	mov.b @(0x1,r0),r0
	mov.w @(0xA4,PC),r1
	tst 0x10,r0
	mov.l @(0xC0,PC),r3
	movt r0
	add 0xFF,r0
	neg r0,r0
	jsr @r3
	add 0x54,r2
	mov.l @r14,r2
	mov 0x48,r0
	mov.b @(r0,r2),r3
	extu.b r3,r3
	and r12,r3
	cmp/eq r12,r3
	bt loc_8c19c038
	mov.l @r14,r0
	mov 0x48,r1
	mov.w @(0x84,PC),r3
	mov.b @(r0,r1),r0
	extu.b r0,r0
	and 0xF0,r0
	cmp/eq r3,r0
	bt loc_8c19c038
	mov.l @r14,r0
	mov 0x48,r2
	mov.w @(0x76,PC),r3
	mov.b @(r0,r2),r0
	extu.b r0,r0
	and 0xF0,r0
	cmp/eq r3,r0
	bf loc_8c19c060

loc_8c19c038:
	mov.l @(0x88,PC),r3
	mov.w @(0x6A,PC),r4
	jsr @r3
	mov 0x01,r5
	mov.b r0,@r15
	mov 0x01,r6
	mov.w @(0x62,PC),r4
	mov.l @(0x80,PC),r3
	jsr @r3
	extu.b r0,r5
	mov.l @(0x74,PC),r2
	mov.w @(0x5A,PC),r4
	jsr @r2
	mov 0x01,r5
	mov.b r0,@r15
	mov 0x01,r6
	mov.w @(0x52,PC),r4
	mov.l @(0x6C,PC),r3
	jsr @r3
	extu.b r0,r5

loc_8c19c060:
	mov.l @r14,r2
	mov 0x48,r0
	mov.b @(r0,r2),r3
	extu.b r3,r3
	and r12,r3
	cmp/eq r12,r3
	bf loc_8c19c086
	mov.l @(0x5C,PC),r0
	mov.b @r0,r0
	tst 0x20,r0
	bf loc_8c19c086
	mov.l @(0x5C,PC),r2
	mov.l @(0x54,PC),r4
	mov.w @(0x32,PC),r5
	jsr @r2
	nop
	mov.b @(0x3,r13),r0
	or 0x20,r0
	mov.b r0,@(0x3,r13)

loc_8c19c086:
	bsr loc_8c19c588
	mov 0x01,r4
	bsr loc_8c19b468
	nop
	mov.l @(0x48,PC),r3
	jsr @r3
	nop
	bsr loc_8c19c7da
	nop
	mov.l @(0x40,PC),r3
	mov.l r0,@r3
	bra loc_8c19c366
	mov 0x03,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19c0a0:
	#data 0x00E0
loc_8c19c0a2:
	#data 0x0701
loc_8c19c0a4:
	#data 0x0090
loc_8c19c0a6:
	#data 0x00C0
loc_8c19c0a8:
	#data 0x0600
loc_8c19c0aa:
	#data 0x0459
loc_8c19c0ac:
	#data 0x0601
loc_8c19c0ae:
	#data 0x045B
loc_8c19c0b0:
	#data 0x012C
	#align4

loc_8c19c0b4:
	#data 0x8C347979
loc_8c19c0b8:
	#data 0x8C347970
loc_8c19c0bc:
	#data 0x8C3479A0
loc_8c19c0c0:
	#data 0x8C130ECC
loc_8c19c0c4:
	#data loc_8C19E1F8
loc_8c19c0c8:
	#data loc_8C19E30C
loc_8c19c0cc:
	#data 0x8C34797A
loc_8c19c0d0:
	#data 0x8C347A10
loc_8c19c0d4:
	#data bank1b.loc_8C1B3EEC
loc_8c19c0d8:
	#data bank1b.loc_8C1B2856
loc_8c19c0dc:
	#data 0x8C347A14

;==============================================
loc_8c19c0e0:
	mov.w @(0x102,PC),r9
	mov r13,r0
	nop
	mov.b @r0,r0
	tst 0x80,r0
	bt loc_8c19c152
	mov.l @(0xFC,PC),r3
	mov 0x48,r1
	mov.w @(0xF4,PC),r2
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	and 0xF0,r0
	cmp/eq r2,r0
	bt loc_8c19c152
	mov.b @r13,r0
	and 0x7F,r0
	mov.b r0,@r13
	mov.b @(0x1,r13),r0
	or 0x01,r0
	mov.b r0,@(0x1,r13)
	mov 0x48,r0
	mov.l @r14,r2
	mov.b @(r0,r2),r3
	extu.b r3,r3
	and r12,r3
	cmp/eq r12,r3
	bf loc_8c19c138
	mov.l @r14,r3
	add 0x4C,r3
	mov.b @r3,r0
	and 0x0F,r0
	or 0xC0,r0
	mov.b r0,@r3
	mov.b @(0x1,r13),r0
	or 0x80,r0
	mov.b r0,@(0x1,r13)
	mov.b @(0x1,r13),r0
	or 0x02,r0
	mov.b r0,@(0x1,r13)
	mov.b @r13,r0
	or 0x20,r0
	bra loc_8c19c152
	mov.b r0,@r13

loc_8c19c138:
	mov.l @r14,r3
	mov.b @(r0,r3),r2
	mov.w @(0xAA,PC),r3
	extu.b r2,r2
	and r9,r2
	cmp/eq r3,r2
	bf loc_8c19c152
	mov.b @(0x1,r13),r0
	or 0x02,r0
	mov.b r0,@(0x1,r13)
	mov.b @r13,r0
	or 0x08,r0
	mov.b r0,@r13

loc_8c19c152:
	mov r13,r0
	nop
	mov.b @(0x1,r0),r0
	tst 0x02,r0
	bt loc_8c19c188
	mov.l @(0x90,PC),r1
	jsr @r1
	nop
	mov r0,r4
	tst r4,r4
	bf loc_8c19c16c
	bra loc_8c19c360
	nop

loc_8c19c16c:
	mov r4,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c19c17c
	mov.b @(0x1,r13),r0
	and 0xFD,r0
	bra loc_8c19c360
	mov.b r0,@(0x1,r13)

loc_8c19c17c:
	cmp/eq 0x02,r0
	bf loc_8c19c188
	mov.b @(0x1,r13),r0
	and 0xFD,r0
	bra loc_8c19c278
	mov.b r0,@(0x1,r13)

loc_8c19c188:
	mov r13,r0
	nop
	mov.b @(0x1,r0),r0
	tst 0x02,r0
	bf loc_8c19c1a6
	mov r13,r0
	nop
	mov.b @(0x1,r0),r0
	and 0x01,r0
	extu.b r0,r0
	tst r0,r0
	bt loc_8c19c1a6
	mov.b @(0x1,r13),r0
	and 0xFE,r0
	mov.b r0,@(0x1,r13)

loc_8c19c1a6:
	mov.l @r14,r3
	mov 0x48,r0
	mov.b @(r0,r3),r2
	mov.w @(0x38,PC),r3
	extu.b r2,r2
	and r9,r2
	cmp/eq r3,r2
	bf loc_8c19c1c0
	mov.l @(0x3C,PC),r1
	jsr @r1
	nop
	bra loc_8c19c27c
	nop

loc_8c19c1c0:
	mov.l @r14,r1
	mov.b @(r0,r1),r2
	extu.b r2,r2
	and r12,r2
	cmp/eq r12,r2
	bf loc_8c19c200
	mov.l @(0x28,PC),r0
	mov.b @r0,r0
	tst 0x20,r0
	bf loc_8c19c200
	mov.l @(0x20,PC),r0
	mov.b @r0,r0
	tst 0x02,r0
	bf loc_8c19c200
	mov.l @(0x1C,PC),r3
	jsr @r3
	nop
	bra loc_8c19c27c
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19c1e6:
	#data 0x00F0
loc_8c19c1e8:
	#data 0x00A0
loc_8c19c1ea:
	#data 0x00C0
	#align4

loc_8c19c1ec:
	#data 0x8C347970
loc_8c19c1f0:
	#data bank1b.loc_8C1B3038
loc_8c19c1f4:
	#data bank1b.loc_8C1B0F9C
loc_8c19c1f8:
	#data 0x8C34797A
loc_8c19c1fc:
	#data bank1b.loc_8C1B1118

;==============================================
loc_8c19c200:
	mov.l @r14,r3
	mov 0x48,r0
	mov.b @(r0,r3),r2
	mov.w @(0xA4,PC),r3
	extu.b r2,r2
	and r9,r2
	cmp/eq r3,r2
	bf loc_8c19c22a
	mov.l @(0xA0,PC),r0
	mov.b @r0,r0
	tst 0x40,r0
	bf loc_8c19c22a
	mov.l @(0x98,PC),r0
	mov.b @r0,r0
	tst 0x02,r0
	bf loc_8c19c22a
	mov.l @(0x94,PC),r3
	jsr @r3
	nop
	bra loc_8c19c27c
	nop

loc_8c19c22a:
	mov.l @r14,r3
	mov 0x48,r0
	mov.b @(r0,r3),r2
	mov.w @(0x7C,PC),r3
	extu.b r2,r2
	and r9,r2
	cmp/eq r3,r2
	bf loc_8c19c242
	mov.l @(0x78,PC),r0
	mov.b @r0,r0
	tst 0x02,r0
	bt loc_8c19c252

loc_8c19c242:
	mov.l @(0x70,PC),r0
	mov.b @r0,r0
	tst 0x40,r0
	bf loc_8c19c252
	mov.l @(0x68,PC),r0
	mov.b @r0,r0
	tst 0x20,r0
	bt loc_8c19c25c

loc_8c19c252:
	mov.l @(0x68,PC),r2
	jsr @r2
	nop
	bra loc_8c19c27c
	nop

loc_8c19c25c:
	mov.l @r14,r0
	mov 0x48,r1
	mov.b @(r0,r1),r0
	extu.b r0,r0
	and r9,r0
	cmp/eq 0x70,r0
	bf loc_8c19c27c
	mov.l @(0x54,PC),r2
	jsr @r2
	nop
	mov.b @r10,r0
	extu.b r0,r0
	cmp/eq 0x07,r0
	bf loc_8c19c27c

loc_8c19c278:
	bra loc_8c19c366
	mov 0x05,r0

loc_8c19c27c:
	mov.l @r14,r0
	add 0x24,r0
	mov.b @r0,r0
	tst 0x10,r0
	bt loc_8c19c35a
	mov.l @(0x3C,PC),r0
	mov.b @r0,r0
	tst 0x04,r0
	bf loc_8c19c35a
	mov.l @(0x3C,PC),r3
	mov 0x00,r13
	mov.l @(0x34,PC),r2
	jsr @r3
	mov.l @r2,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c19c2d0
	mov.l @r14,r0
	mov 0x48,r1
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x4C,r0
	bt loc_8c19c318
	bra loc_8c19c322
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19c2ae:
	#data 0x0090
loc_8c19c2b0:
	#data 0x00C0
	#align4

loc_8c19c2b4:
	#data 0x8C34797A
loc_8c19c2b8:
	#data bank1b.loc_8C1B17CC
loc_8c19c2bc:
	#data bank1b.loc_8C1B1DB8
loc_8c19c2c0:
	#data bank1b.loc_8C1B248E
loc_8c19c2c4:
	#data 0x8C347975
loc_8c19c2c8:
	#data 0x8C347A08
loc_8c19c2cc:
	#data bank1b.loc_8C1B3F0C

;==============================================
loc_8c19c2d0:
	mov.l @r14,r2
	mov r2,r0
	nop
	add 0x54,r0
	mov.b @r0,r0
	tst 0x08,r0
	movt r0
	add 0xFF,r0
	neg r0,r0
	cmp/eq 0x01,r0
	bf loc_8c19c31c
	mov.l @r14,r2
	mov r2,r0
	nop
	add 0x24,r0
	mov.b @r0,r0
	tst 0x04,r0
	movt r0
	add 0xFF,r0
	neg r0,r0
	cmp/eq 0x01,r0
	bf loc_8c19c31c
	mov.l @r14,r2
	mov 0x48,r0
	mov.b @(r0,r2),r3
	mov.w @(0xC6,PC),r2
	extu.b r3,r3
	cmp/eq r2,r3
	bf loc_8c19c31c
	mov.l @(0xCC,PC),r1
	mov.w @(0xBE,PC),r4
	jsr @r1
	mov 0x01,r5
	extu.w r0,r0
	tst 0x08,r0
	bf loc_8c19c31c

loc_8c19c318:
	bra loc_8c19c322
	mov 0x01,r13

loc_8c19c31c:
	mov.b @(0x1,r11),r0
	or 0x04,r0
	mov.b r0,@(0x1,r11)

loc_8c19c322:
	exts.b r13,r0
	cmp/eq 0x01,r0
	bf loc_8c19c35a
	mov.l @r14,r3
	add 0x54,r3
	mov.b @r3,r0
	or 0x08,r0
	mov.b r0,@r3
	mov.l @r14,r3
	add 0x24,r3
	mov.b @r3,r0
	and 0xFB,r0
	mov.b r0,@r3
	mov.l @r14,r2
	mov 0x48,r0
	mov 0x76,r3
	mov.b r3,@(r0,r2)
	mov.l @(0x94,PC),r2
	jsr @r2
	nop
	mov.l @(0x94,PC),r3
	mov 0x01,r6
	mov.w @(0x7E,PC),r4
	jsr @r3
	mov r6,r5
	mov.b @(0x1,r11),r0
	or 0x04,r0
	mov.b r0,@(0x1,r11)

loc_8c19c35a:
	mov.b @r10,r2
	tst r2,r2
	bt loc_8c19c364

loc_8c19c360:
	bra loc_8c19c366
	mov 0x02,r0

loc_8c19c364:
	mov 0x01,r0

loc_8c19c366:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19C3cc:
	#data 0x00AA
loc_8c19C3ce:
	#data 0x0302
loc_8c19C3D0:
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
loc_8c19C3EC:
	#data 0x8C34797A
loc_8c19C3F0:
	#data bank1c.loc_8c1c997E

;==============================================
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

loc_8c19c430:
	mov 0x48,r0
	mov.b @(r0,r5),r0
	mov.w @(loc_8C19C476,pc),r3
	extu.b r0,r0
	and r6,r0
	cmp/eq r3,r0
	bt loc_8c19c44e
	mov.l @(loc_8c19c47c,pc),r0
	mov.b @r0,r0
	tst 0x40,r0
	bf loc_8c19c44e
	mov.l @(loc_8c19c47c,pc),r0
	mov.b @r0,r0
	tst 0x20,r0
	bt loc_8c19c488

loc_8c19c44e:
	mov.w @(loc_8C19C478,pc),r3
	mov 0x01,r5
	mov.l r3,@r4
	mov.l @(loc_8c19c480,pc),r2
	jsr @r2
	mov r11,r4
	extu.w r0,r0
	mov.b @(r0,r12),r3
	mov 0x01,r5
	mov.b r3,@r13
	mov.l @(loc_8c19c480,pc),r2
	jsr @r2
	mov r10,r4
	extu.w r0,r0
	mov.b @(r0,r12),r3

loc_8c19C46C:
	bra loc_8c19C57A
	mov.b r3,@r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19C470:
	#data 0x00F0
loc_8c19C472:
	#data 0x0090
loc_8c19C474:
	#data 0x0100
loc_8c19c476:
	#data 0x00C0
loc_8c19c478:
	#data 0x0080
	#align4

loc_8c19C47C:
	#data 0x8C34797A
loc_8c19C480:
	#data loc_8c19E1F8
loc_8c19C484:
	#data bank1c.loc_8c1c996F

;==============================================
loc_8c19C488:
	mov 0x48,r0
	mov 0x01,r7
	mov 0x40,r12
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x52,r0
	bt.s loc_8c19c530
	mov 0x04,r6
	cmp/eq 0x60,r0
	bt loc_8c19c566
	cmp/eq 0x62,r0
	bt loc_8c19c55e
	cmp/eq 0x71,r0
	bt loc_8c19c50a
	cmp/eq 0x72,r0
	bt loc_8c19c4e0
	cmp/eq 0x74,r0
	bt loc_8c19c4e6
	cmp/eq 0x75,r0
	bt loc_8c19c4fc
	cmp/eq 0x76,r0
	bt loc_8c19c4da
	cmp/eq 0x78,r0
	bt loc_8c19c504
	mov.w @(0x7A,PC),r1
	cmp/eq r1,r0
	bt loc_8c19c52a
	mov.w @(0x76,PC),r1
	cmp/eq r1,r0
	bt loc_8c19c522
	mov.w @(0x72,PC),r1
	cmp/eq r1,r0
	bt loc_8c19c558
	mov.w @(0x6E,PC),r1
	cmp/eq r1,r0
	bt loc_8c19c550
	mov.w @(0x6A,PC),r1
	cmp/eq r1,r0
	bt loc_8c19c548
	bra loc_8c19c570
	nop

loc_8c19C4DA:
	mov.l r12,@r4
	bra loc_8c19c576
	mov 0x0C,r3

loc_8c19C4E0:
	mov.l r12,@r4
	bra loc_8c19c576
	mov 0x0B,r3

loc_8c19C4E6:
	mov.l @(0x5C,PC),r1
	mov.w @(0x54,PC),r3
	mov.w @r1,r2
	extu.w r2,r2
	tst r3,r2
	bt loc_8c19c4f6
	bra loc_8c19c4f8
	mov 0x40,r1

loc_8c19C4F6:
	mov 0x20,r1

loc_8c19C4F8:
	bra loc_8c19c500
	mov.l r1,@r4

loc_8c19C4FC:
	mov 0x20,r2
	mov.l r2,@r4

loc_8c19C500:
	bra loc_8c19c576
	mov 0x08,r3

loc_8c19C504:
	mov.l r12,@r4
	bra loc_8c19c576
	mov 0x07,r3

loc_8c19C50A:
	mov.l @(0x38,PC),r1
	mov.w @(0x30,PC),r3
	mov.w @r1,r2
	extu.w r2,r2
	tst r3,r2
	bt loc_8c19c51a
	bra loc_8c19c51c
	mov 0x40,r1

loc_8c19C51A:
	mov 0x20,r1

loc_8c19C51C:
	mov.l r1,@r4
	bra loc_8c19c56a
	mov 0x06,r2

loc_8c19C522:
	mov 0x10,r1
	mov.l r1,@r4
	bra loc_8c19c576
	mov 0x05,r3

loc_8c19C52A:
	mov 0x10,r1
	bra loc_8c19c560
	mov.l r1,@r4

loc_8c19C530:
	mov 0x08,r2
	bra loc_8c19c560
	mov.l r2,@r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19c536:
	#data 0x0082
loc_8c19c538:
	#data 0x0084
loc_8c19c53a:
	#data 0x00A0
loc_8c19c53c:
	#data 0x00A1
loc_8c19c53e:
	#data 0x00A4
loc_8c19c540:
	#data 0x0880
	#align4

loc_8c19c544:
	#data 0x8C34798E

;==============================================
loc_8c19C548:
	mov.l r6,@r4
	mov.b r6,@r13
	bra loc_8c19c57a
	mov.b r7,@r14

loc_8c19C550:
	mov.l r6,@r4
	mov.b r7,@r13
	bra loc_8c19c57a
	mov.b r6,@r14

loc_8c19C558:
	mov 0x02,r3
	bra loc_8c19c568
	mov.l r3,@r4

loc_8c19C55E:
	mov.l r7,@r4

loc_8c19C560:
	mov.b r6,@r14
	bra loc_8c19c57a
	mov.b r6,@r13

loc_8c19C566:
	mov.l r7,@r4

loc_8c19C568:
	mov 0x02,r2

loc_8c19C56A:
	mov.b r2,@r14
	bra loc_8c19c57a
	mov.b r2,@r13

loc_8c19C570:
	mov.l @(0xE0,PC),r1
	mov.l r1,@r4
	mov.w @(0xD2,PC),r3

loc_8c19C576:
	mov.b r3,@r14
	mov.b r3,@r13

loc_8c19C57A:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19C64a:
	#data 0x00FF
loc_8c19C64C:
	#data 0x00F0
loc_8c19C64E:
	#data 0x0208
loc_8c19C650:
	#data 0x0204
	#align4

loc_8c19C654:
	#data 0x00008000
loc_8c19C658:
	#data 0x8C3479EC
loc_8c19C65C:
	#data 0x8C347970
loc_8c19C660:
	#data 0x8C34798C
loc_8c19C664:
	#data loc_8c19E1F8
loc_8c19C668:
	#data 0x8C34798E
loc_8c19C66C:
	#data 0x8C34798A
loc_8c19C670:
	#data 0x8C347974
loc_8c19C674:
	#data 0x0000F66E
loc_8c19C678:
	#data bank1c.loc_8c1c7D28

;==============================================
loc_8c19c67c:
	mov 0x48,r0
	mov.b @(r0,r5),r2
	mov.w @(loc_8C19C774,pc),r1
	extu.b r2,r2
	and r6,r2
	cmp/eq r1,r2
	bt loc_8c19c696
	mov.b @(r0,r5),r2
	mov.w @(loc_8C19C776,pc),r3
	extu.b r2,r2
	and r6,r2
	cmp/eq r3,r2
	bf loc_8c19c6bc

loc_8c19c696:
	mov.l @(loc_8c19c780,pc),r3
	mov 0x01,r5
	jsr @r3
	mov r13,r4
	mov.b r0,@r15
	mov.l @(loc_8c19c780,pc),r3
	mov.w @(loc_8C19C778,pc),r4
	jsr @r3
	mov 0x01,r5
	mov 0x7F,r2
	mov r0,r4
	mov.b @r15,r3
	and r2,r4
	extu.b r4,r4
	extu.b r3,r3
	shll8 r4
	or r3,r4
	bra loc_8c19c6d0
	mov.l r4,@r14

loc_8c19c6bc:
	mov.w @(loc_8C19C77A,pc),r4
	mov.b @(r0,r5),r2
	extu.b r2,r2
	and r4,r2
	cmp/eq r4,r2
	bf loc_8c19c6d0
	mov.l @(loc_8c19c784,pc),r1
	jsr @r1
	nop
	mov.l r0,@r14

loc_8c19C6D0:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c19C6DE:
	mov.l @(loc_8c19C788,pc),r3 ; r3 set to 0x8C3479EC
	rts
	mov.l @r3,r0

;==============================================
;unused
loc_8c19c6e4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l @(0xA4,PC),r0
	sts.l pr,@-r15
	mov.b @r0,r0
	mov.l @(0x9C,PC),r14
	mov.l @(0x94,PC),r13
	tst 0x04,r0
	add 0xFC,r15
	bt loc_8c19c726
	mov.l @r14,r3
	add 0x78,r3
	mov.b @r3,r0
	and 0xDF,r0
	mov.b r0,@r3
	mov.l @(0x90,PC),r2
	mov 0x0A,r5
	jsr @r2
	mov r15,r4
	bra loc_8c19c71c
	nop

loc_8c19c712:
	jsr @r13
	mov.l @r15,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c19c726

loc_8c19c71c:
	mov.l @r14,r0
	add 0x78,r0
	mov.b @r0,r0
	tst 0x08,r0
	bt loc_8c19c712

loc_8c19c726:
	mov.l @r14,r3
	add 0x24,r3
	mov.b @r3,r0
	and 0xFE,r0
	mov.b r0,@r3
	mov.l @r14,r3
	add 0x20,r3
	mov.b @r3,r0
	and 0xFE,r0
	mov.b r0,@r3
	mov.l @(0x5C,PC),r2
	mov 0x32,r5
	jsr @r2
	mov r15,r4
	mov.w @(0x36,PC),r12
	mov.l @(0x54,PC),r11
	bra loc_8c19c75c
	nop

loc_8c19c74a:
	jsr @r13
	mov.l @r15,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c19c75c
	jsr @r11
	mov r12,r4
	bra loc_8c19c766
	nop

loc_8c19c75c:
	mov.l @r14,r0
	add 0x3C,r0
	mov.b @r0,r0
	tst 0x20,r0
	bf loc_8c19c74a

loc_8c19c766:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c19c774:
	#data 0x00C0
loc_8c19c776:
	#data 0x0090
loc_8c19c778:
	#data 0x0209
loc_8c19c77a:
	#data 0x00E0
loc_8c19c77c:
	#data 0x0488
	#align4

loc_8c19C780:
	#data loc_8c19E1F8
loc_8c19C784:
	#data bank1b.loc_8c1b1012
loc_8c19C788:
	#data 0x8C3479EC
loc_8c19C78C:
	#data bank1b.loc_8c1b3F0C
loc_8c19C790:
	#data 0x8C347970
loc_8c19C794:
	#data 0x8C347977
loc_8c19C798:
	#data bank1b.loc_8c1b3EEC
loc_8c19C79C:
	#data bank1a.loc_8c1a003E

;==============================================
loc_8c19c7a0:
	mov.l @(loc_8C19C8CC,pc),r2
	mov 0x48,r0
	mov.l @r2,r4
	mov.b @(r0,r4),r3
	mov.w @(loc_8C19C8B2,pc),r1
	extu.b r3,r3
	cmp/eq r1,r3
	bt loc_8c19c7ca
	mov.b @(r0,r4),r0
	and 0xF0,r0
	mov.w @(loc_8C19C8B4,pc),r3
	mov r0,r5
	extu.b r5,r4
	cmp/eq r3,r4
	bt loc_8c19c7ca
	mov r4,r0
	nop
	cmp/eq 0x10,r0
	bt loc_8c19c7ca
	tst r4,r4
	bf loc_8c19c7ce

loc_8c19c7ca:
	rts
	mov 0x01,r0

;==============================================
loc_8c19c7ce:
	mov 0x00,r0
	rts
	nop

loc_8c19C7D4:
	mov.l @(loc_8c19C8D0,pc),r3 ; r3 set to 0x8C347A14
	rts
	mov.l @r3,r0

;==============================================
loc_8c19C7DA:
	sts.l pr,@-r15
	mov.w @(0xD6,PC),r4
	mov.l @(0xF4,PC),r3
	add 0xFC,r15
	jsr @r3
	mov 0x01,r5
	mov.b r0,@r15
	mov.l @(0xE8,PC),r3
	mov.w @(0xCA,PC),r4
	jsr @r3
	mov 0x01,r5
	mov r0,r4
	mov.b @r15,r0
	extu.b r0,r0
	tst 0x10,r0
	bt loc_8c19c80e
	extu.b r4,r0
	shlr2 r0
	shlr2 r0
	shlr r0
	cmp/eq 0x01,r0
	bf loc_8c19c80e
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov 0x01,r0

;==============================================
loc_8c19C80E:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c19C818:
	rts
	nop

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19c8b2:
	#data 0x00A8
loc_8c19c8b4:
	#data 0x00B0
loc_8c19c8b6:
	#data 0x0302
loc_8c19c8b8:
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
	#align4

loc_8c19c8cc:
	#data 0x8C347970
loc_8c19C8D0:
	#data 0x8C347A14
loc_8c19C8D4:
	#data loc_8c19E1F8
loc_8c19C8D8:
	#data loc_8c19E30C
loc_8c19C8DC:
	#data 0x8C347974
loc_8c19C8E0:
	#data bank13.loc_8c130ECC

;==============================================
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

loc_8c19c95e:
	mov 0x02,r2
	or r2,r13

loc_8c19c962:
	mov.l @(loc_8c19c9f4,pc),r3
	mov.w @(loc_8c19c9e0,pc),r4
	jsr @r3
	extu.b r13,r5
	mov 0x20,r2
	tst r14,r2
	bf loc_8c19c988
	mov.l @(loc_8c19c9fc,pc),r2
	mov.w @(loc_8C19C9E6,pc),r4
	jsr @r2
	mov 0x01,r5
	mov.l @(loc_8c19c9f4,pc),r2
	mov r0,r13
	mov.w @(loc_8C19C9E6,pc),r4
	mov 0x7F,r3
	and r3,r13
	mov 0x01,r6
	jsr @r2
	extu.b r13,r5

loc_8c19c988:
	mov.w @(loc_8C19C9E8,pc),r3
	mov.l @(loc_8C19CA00,pc),r2
	and r14,r3
	shlr2 r3
	shlr2 r3
	shlr2 r3
	mov.b r3,@r2
	mov.w @(loc_8C19C9EA,pc),r4
	mov.l @(loc_8c19c9fc,pc),r1
	jsr @r1
	mov 0x01,r5
	mov.l @(loc_8c19c9fc,pc),r3
	mov r0,r13
	mov.w @(loc_8C19C9EC,pc),r4
	jsr @r3
	mov 0x01,r5
	mov.w @(loc_8C19C9EE,pc),r2
	tst r14,r2
	bt/s loc_8c19c9b6
	mov r0,r12
	mov 0x20,r1
	bra loc_8c19c9ba
	or r1,r13

loc_8c19c9b6:
	mov.w @(loc_8C19C9F0,pc),r2
	and r2,r13

loc_8c19c9ba:
	mov.l @(loc_8C19CA04,pc),r3
	tst r14,r3
	bt loc_8c19c9c6
	mov 0x10,r1
	bra loc_8c19c9ca
	or r1,r13

loc_8c19c9c6:
	mov.w @(loc_8C19C9F2,pc),r2
	and r2,r13

loc_8c19c9ca:
	extu.b r13,r0
	tst 0x30,r0
	bf loc_8c19ca08
	mov.w @(loc_8c19c9e2,pc),r2
	bra loc_8c19ca0c
	and r2,r12

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19c9d6:
	#data 0x00FB
loc_8c19c9d8:
	#data 0x0304
loc_8c19c9da:
	#data 0x0305
loc_8c19c9dc:
	#data 0x013F
loc_8c19c9de:
	#data 0x00BF
loc_8c19c9e0:
	#data 0x0100
loc_8c19c9e2:
	#data 0x00F7
loc_8c19c9e4:
	#data 0x00FD
loc_8C19C9E6:
	#data 0x010D
loc_8C19C9E8:
	#data 0x00C0
loc_8C19C9EA:
	#data 0x0105
loc_8C19C9EC:
	#data 0x0101
loc_8C19C9EE:
	#data 0x4000
loc_8C19C9F0:
	#data 0x00DF
loc_8C19C9F2:
	#data 0x00EF
	#align4

loc_8c19c9f4:
	#data 0x8C19E30C
loc_8c19c9f8:
	#data 0x8C347994
loc_8c19c9fc:
	#data loc_8c19e1f8
loc_8C19CA00:
	#data 0x8C347986
loc_8C19CA04:
	#data 0x00008000

;==============================================
loc_8c19ca08:
	mov 0x08,r1
	or r1,r12

loc_8c19ca0c:
	mov.l @(loc_8C19CB14,pc),r3
	tst r14,r3
	bt loc_8c19ca18
	mov.w @(loc_8C19CB00,pc),r1
	bra loc_8c19ca1c
	or r1,r13

loc_8c19ca18:
	mov 0x7F,r2
	and r2,r13

loc_8c19ca1c:
	mov.l @(loc_8C19CB18,pc),r3
	tst r14,r3
	bt loc_8c19ca28
	mov 0x40,r1
	bra loc_8c19ca2c
	or r1,r13

loc_8c19ca28:
	mov.w @(loc_8C19CB02,pc),r2
	and r2,r13

loc_8c19ca2c:
	extu.b r13,r0
	tst 0xC0,r0
	bf loc_8c19ca38
	mov.w @(loc_8C19CB04,pc),r2
	bra loc_8c19ca3c
	and r2,r12

loc_8c19ca38:
	mov 0x10,r1
	or r1,r12

loc_8c19ca3c:
	mov.l @(loc_8C19CB1C,pc),r3
	tst r3,r14
	bt/s loc_8c19ca4a
	mov 0x01,r6
	mov 0x20,r1
	bra loc_8c19ca4e
	or r1,r12

loc_8c19ca4a:
	mov.w @(loc_8C19CB06,pc),r0
	and r0,r12

loc_8c19ca4e:
	mov.l @(loc_8c19cb20,pc),r3
	mov.w @(loc_8C19CB08,pc),r4
	jsr @r3
	extu.b r13,r5
	lds.l @r15+,pr
	extu.b r12,r5
	mov.w @(loc_8C19CB0A,pc),r4
	mov.l @(loc_8c19cb20,pc),r2
	mov 0x01,r6
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;==============================================
;unused
loc_8c19ca68:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b r4,@r15
	mov.l @(0xB0,PC),r2
	mov.b @r15,r3
	mov.b r3,@r2
	mov.l @(0xAC,PC),r4
	mov.w @r5,r3
	mov.w r3,@r4
	mov.b @(0x2,r5),r0
	mov.b r0,@(0x2,r4)
	mov.b @(0x3,r5),r0
	mov.b r0,@(0x3,r4)
	mov.b @(0x4,r5),r0
	mov 0x01,r5
	mov.b r0,@(0x4,r4)
	mov.w @(0x7C,PC),r14
	mov.l @(0x9C,PC),r2
	jsr @r2
	mov r14,r4
	mov r0,r13
	mov.b @r15,r0
	extu.b r0,r0
	tst 0x01,r0
	bt.s loc_8c19caaa
	mov r14,r4
	mov 0x01,r6
	mov r6,r5
	add 0x7F,r5
	bra loc_8c19cab0
	or r13,r5

loc_8c19caaa:
	mov.l @(0x84,PC),r5
	mov 0x01,r6
	and r13,r5

loc_8c19cab0:
	mov.l @(0x6C,PC),r2
	jsr @r2
	nop
	mov.l @(0x70,PC),r4
	mov.l @(0x78,PC),r3
	mov.w @r4,r5
	extu.w r5,r5
	cmp/eq r3,r5
	bt loc_8c19cac8
	mov.w @(0x48,PC),r1
	cmp/eq r1,r5
	bf loc_8c19caf6

loc_8c19cac8:
	mov.b @(0x3,r4),r0
	mov 0x02,r3
	extu.b r0,r5
	tst r5,r3
	bf loc_8c19cade
	mov 0x01,r1
	tst r5,r1
	bt loc_8c19cae4
	mov.b @(0x2,r4),r0
	tst r0,r0
	bt loc_8c19cae4

loc_8c19cade:
	mov 0x01,r6
	bra loc_8c19cae8
	mov r6,r5

loc_8c19cae4:
	mov 0x00,r5
	mov 0x01,r6

loc_8c19cae8:
	add 0x04,r15
	mov.l @(0x34,PC),r3
	lds.l @r15+,pr
	mov.w @(0x1E,PC),r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c19caf6:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C19CB00:
	#data 0x0080
loc_8C19CB02:
	#data 0x00BF
loc_8C19CB04:
	#data 0x00EF
loc_8C19CB06:
	#data 0x00DF
loc_8C19CB08:
	#data 0x0105
loc_8C19CB0A:
	#data 0x0101
loc_8C19CB0c:
	#data 0x039B
loc_8C19CB0e:
	#data 0x4A00
loc_8C19CB10:
	#data 0x067D
	#align4

loc_8C19CB14:
	#data 0x00010000
loc_8C19CB18:
	#data 0x00020000
loc_8C19CB1C:
	#data 0x00040000
loc_8c19cb20:
	#data loc_8c19e30c
loc_8c19cb24:
	#data 0x8C347987
loc_8c19cb28:
	#data 0x8C347998
loc_8c19cb2c:
	#data 0x8C19E1F8
loc_8c19cb30:
	#data 0x0000FF7F
loc_8c19cb34:
	#data 0x00009400

;==============================================
loc_8c19cb38:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0xFC,PC),r3
	mov.w @(0xE8,PC),r4
	jsr @r3
	mov 0x02,r5
	mov r0,r4
	mov.l @(0xF4,PC),r3
	mov.w @(0xE0,PC),r0
	jsr @r3
	extu.w r4,r1
	mov.l @(0xF0,PC),r5
	mov r0,r14
	mov.w @(0xD8,PC),r6
	mov 0x48,r0
	mov.l @r5,r4
	mov.b @(r0,r4),r2
	extu.b r2,r2
	and r6,r2
	cmp/eq r6,r2
	bt loc_8c19cbd6
	mov.l @r5,r0
	mov 0x48,r1
	mov.w @(0xC6,PC),r3
	mov.b @(r0,r1),r0
	extu.b r0,r0
	and 0xF0,r0
	cmp/eq r3,r0
	bt loc_8c19cbd6
	mov.l @r5,r0
	mov 0x48,r2
	mov.w @(0xB8,PC),r3
	mov.b @(r0,r2),r0
	extu.b r0,r0
	and 0xF0,r0
	cmp/eq r3,r0
	bt loc_8c19cbd6
	mov.l @r5,r0
	mov 0x48,r2
	mov.b @(r0,r2),r0
	extu.b r0,r0
	and 0xF0,r0
	cmp/eq 0x40,r0
	bt loc_8c19cbd6
	mov.l @r5,r0
	mov 0x48,r3
	mov.b @(r0,r3),r0
	extu.b r0,r0
	and 0xF0,r0
	cmp/eq 0x30,r0
	bt loc_8c19cbd6
	mov.l @r5,r0
	mov 0x48,r2
	mov.w @(0x8E,PC),r3
	mov.b @(r0,r2),r0
	extu.b r0,r0
	and 0xF0,r0
	cmp/eq r3,r0
	bt loc_8c19cbd6
	mov.l @r5,r0
	mov 0x48,r2
	mov.b @(r0,r2),r0
	extu.b r0,r0
	and 0xF0,r0
	cmp/eq 0x10,r0
	bt loc_8c19cbd6
	mov.l @r5,r0
	mov 0x48,r3
	mov.b @(r0,r3),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c19cbd6
	mov.l @r5,r0
	mov 0x48,r2
	mov.b @(r0,r2),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c19cc68

loc_8c19cbd6:
	mov 0x34,r2
	mov 0x48,r0
	sub r14,r2
	mov.b @(r0,r4),r3
	extu.b r3,r3
	and r6,r3
	cmp/eq r6,r3
	bt.s loc_8c19cbf8
	mov r2,r14
	mov.b @(r0,r4),r0
	mov.w @(0x44,PC),r3
	extu.b r0,r0
	and 0xF0,r0
	cmp/eq r3,r0
	bt loc_8c19cbf8
	bra loc_8c19ccfc
	nop

loc_8c19cbf8:
	mov.l @(0x40,PC),r3
	mov.w @(0x3A,PC),r4
	jsr @r3
	mov 0x02,r5
	extu.b r0,r0
	mov 0x03,r13
	shlr r0
	and r0,r13
	extu.b r13,r0
	cmp/eq 0x00,r0
	bt.s loc_8c19cc48
	mov 0x00,r5
	cmp/eq 0x01,r0
	bt loc_8c19cc20
	cmp/eq 0x02,r0
	bt loc_8c19cc24
	cmp/eq 0x03,r0
	bt loc_8c19cc28
	bra loc_8c19cc48
	nop

loc_8c19cc20:
	bra loc_8c19cc4a
	mov 0x0A,r4

loc_8c19cc24:
	bra loc_8c19cc4a
	mov 0x0F,r4

loc_8c19cc28:
	bra loc_8c19cc4a
	mov 0x14,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19cc2c:
	#data 0x0A00
loc_8c19cc2e:
	#data 0x02AB
loc_8c19cc30:
	#data 0x00E0
loc_8c19cc32:
	#data 0x0090
loc_8c19cc34:
	#data 0x00C0
loc_8c19cc36:
	#data 0x00B0
loc_8c19cc38:
	#data 0x03CB
	#align4

loc_8c19cc3c:
	#data loc_8C19E1F8
loc_8c19cc40:
	#data bank12.loc_8C129128
loc_8c19cc44:
	#data 0x8C347970

;==============================================
loc_8c19cc48:
	mov r5,r4

loc_8c19cc4a:
	extu.b r4,r4
	mov.l @(0xC8,PC),r3
	add r4,r14
	mov.w @(0xB4,PC),r4
	jsr @r3
	mov 0x02,r5
	extu.b r13,r13
	tst r13,r13
	bt loc_8c19ccfc
	mov 0x03,r2
	extu.w r14,r3
	cmp/gt r2,r3
	bf loc_8c19ccfc
	bra loc_8c19ccfc
	add 0xFC,r14

loc_8c19cc68:
	mov 0x48,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	and 0xF0,r0
	cmp/eq 0x70,r0
	bf loc_8c19cc7c
	mov 0x35,r2
	sub r14,r2
	bra loc_8c19ccfc
	mov r2,r14

loc_8c19cc7c:
	mov 0x48,r0
	mov.b @(r0,r4),r1
	mov.w @(0x86,PC),r3
	extu.b r1,r1
	cmp/eq r3,r1
	bt loc_8c19ccba
	mov.b @(r0,r4),r1
	mov.w @(0x7E,PC),r2
	extu.b r1,r1
	cmp/eq r2,r1
	bt loc_8c19ccba
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x52,r0
	bt loc_8c19ccba
	mov 0x48,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x51,r0
	bt loc_8c19ccba
	mov 0x48,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x62,r0
	bt loc_8c19ccba
	mov 0x48,r0
	mov.b @(r0,r4),r1
	mov.w @(0x58,PC),r3
	extu.b r1,r1
	cmp/eq r3,r1
	bf loc_8c19ccbe

loc_8c19ccba:
	bra loc_8c19cce8
	mov 0x30,r1

loc_8c19ccbe:
	mov.b @(r0,r4),r2
	mov.w @(0x4C,PC),r3
	extu.b r2,r2
	cmp/eq r3,r2
	bt loc_8c19cce6
	mov.b @(r0,r4),r1
	mov.w @(0x44,PC),r2
	extu.b r1,r1
	cmp/eq r2,r1
	bt loc_8c19cce6
	mov.b @(r0,r4),r1
	mov.w @(0x3C,PC),r3
	extu.b r1,r1
	cmp/eq r3,r1
	bt loc_8c19cce6
	mov.b @(r0,r4),r1
	mov.w @(0x34,PC),r2
	extu.b r1,r1
	cmp/eq r2,r1
	bf loc_8c19ccee

loc_8c19cce6:
	mov 0x36,r1

loc_8c19cce8:
	sub r14,r1
	bra loc_8c19ccfc
	mov r1,r14

loc_8c19ccee:
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x60,r0
	bf loc_8c19ccfc
	mov 0x33,r2
	sub r14,r2
	mov r2,r14

loc_8c19ccfc:
	mov r14,r0
	nop
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19cd08:
	#data 0x03CD
loc_8c19cd0a:
	#data 0x0084
loc_8c19cd0c:
	#data 0x0082
loc_8c19cd0e:
	#data 0x00A4
loc_8c19cd10:
	#data 0x00A0
loc_8c19cd12:
	#data 0x00A8
loc_8c19cd14:
	#data 0x0086
loc_8c19cd16:
	#data 0x00A1
	#align4

loc_8c19cd18:
	#data loc_8C19E1F8

;==============================================
loc_8c19cd1c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0x10C,PC),r13
	add 0xFC,r15
	mov r13,r0
	nop
	mov.b @(0x3,r0),r0
	tst 0x02,r0
	bt loc_8c19cd70
	mov r13,r0
	nop
	mov.b @(0x3,r0),r0
	and 0x01,r0
	extu.b r0,r0
	tst r0,r0
	bt loc_8c19cd70
	mov.l @(0xF4,PC),r14
	mov.l @r14,r0
	add 0x78,r0
	mov.b @r0,r0
	tst 0x04,r0
	movt r3
	add 0xFF,r3
	neg r3,r3
	mov.b r3,@r15
	mov.l @r14,r3
	add 0x78,r3
	mov.b @r3,r0
	mov.l @(0xE0,PC),r2
	and 0xFB,r0
	jsr @r2
	mov.b r0,@r3
	mov.w @(0xC6,PC),r1
	mov.l @(0xD8,PC),r3
	mov.l @r14,r2
	mov.b @r15,r0
	jsr @r3
	add 0x78,r2
	mov.b @(0x3,r13),r0
	and 0xFE,r0
	mov.b r0,@(0x3,r13)

loc_8c19cd70:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
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

loc_8c19cd9c:
	mov r4,r0
	nop
	add 0x3C,r0
	mov.b @r0,r0
	tst 0x80,r0
	bt loc_8c19cdf4
	mov 0x48,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x70,r0
	bt loc_8c19cdf8
	mov 0x48,r0
	mov.b @(r0,r4),r2
	mov.w @(loc_8C19CE2A,pc),r3
	extu.b r2,r2
	cmp/eq r3,r2
	bt loc_8c19cdf8
	mov.b @(r0,r4),r1
	mov.w @(loc_8C19CE2C,pc),r2
	extu.b r1,r1
	cmp/eq r2,r1
	bt loc_8c19cdf8
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x40,r0
	bt loc_8c19cdf8
	mov r4,r0
	nop
	add 0x3C,r0
	mov.b @r0,r0
	tst 0x40,r0
	bt loc_8c19cdf4
	mov.l @(loc_8C19CE30,pc),r4
	mov r4,r0
	nop
	mov.b @(0x03,r0),r0
	tst 0x02,r0
	bt loc_8c19cdee
	mov.b @(0x03,r4),r0
	or 0x01,r0
	mov.b r0,@(0x03,r4)

loc_8c19CDEE:
	lds.l @r15+,pr
	rts
	mov 0x01,r0

loc_8c19CDF4:
	bsr loc_8c19cd1c
	nop

loc_8c19CDF8:
	mov 0x00,r0 ; r0 set to 0x00
	lds.l @r15+,pr
	rts
	nop

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19ce28:
	#data 0x0501
loc_8c19ce2a:
	#data 0x00AF
loc_8c19ce2c:
	#data 0x00C0
	#align4

loc_8c19ce30:
	#data 0x8C347974
loc_8c19CE34:
	#data 0x8C347970
loc_8c19CE38:
	#data loc_8c19F0BA
loc_8c19CE3C:
	#data bank13.loc_8c130ECC

;==============================================
loc_8c19CE40:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;==============================================
loc_8c19CE48:
mov.l @(loc_8c19CF10,pc),r1 ; r1 set to 0x8C1B2A48
add 0x04,r15
jmp @r1
lds.l @r15+,pr

;==============================================
;unused
loc_8c19ce50:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c19CE58:
	mov.l @(loc_8c19CF14,pc),r3 ; r3 set to 0x8C19E1F8
	mov.w @(loc_8c19CF00,pc),r4 ; r4 set to 0x20C
	jmp @r3
	mov 0x02,r5

;==============================================
loc_8c19CE60:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(0xB0,PC),r3
	sts.l pr,@-r15
	mov.l @r3,r4
	mov r4,r0
	nop
	add 0x2C,r0
	mov.b @r0,r0
	tst 0x02,r0
	bt loc_8c19cea4
	mov r4,r0
	nop
	add 0x1C,r0
	mov.b @r0,r0
	tst 0x08,r0
	bf loc_8c19cea4
	mov 0x48,r0
	mov.b @(r0,r4),r1
	mov.w @(0x78,PC),r2
	extu.b r1,r1
	cmp/ge r2,r1
	bf loc_8c19ce98
	mov.b @(r0,r4),r1
	mov.w @(0x70,PC),r3
	extu.b r1,r1
	cmp/gt r3,r1
	bf loc_8c19cea4

loc_8c19CE98:
	mov r4,r1
	add 0x2C,r1
	mov.b @r1,r0
	and 0xFD,r0
	bra loc_8c19cfba
	mov.b r0,@r1

loc_8c19CEA4:
	mov 0x48,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x60,r0
	bt loc_8c19cf86
	mov.w @(0x54,PC),r1
	cmp/eq r1,r0
	bt loc_8c19cf86
	mov.w @(0x50,PC),r1
	cmp/eq r1,r0
	bt loc_8c19cf86
	mov.w @(0x4C,PC),r1
	cmp/eq r1,r0
	bt loc_8c19cf86
	mov.l @(0x58,PC),r13
	mov 0x48,r0
	mov.b @(r0,r4),r0
	mov.w @(0x42,PC),r3
	extu.b r0,r0
	and 0xF0,r0
	cmp/eq r3,r0
	bf loc_8c19ced8
	mov.l @(0x4C,PC),r0
	mov.b @r0,r0
	tst 0x40,r0
	bt loc_8c19ceee

loc_8c19CED8:
	mov 0x48,r0
	mov.b @(r0,r4),r0
	mov.w @(0x2E,PC),r3
	extu.b r0,r0
	and 0xE0,r0
	cmp/eq r3,r0
	bf loc_8c19cf64
	mov.l @(0x38,PC),r0
	mov.b @r0,r0
	tst 0x20,r0
	bf loc_8c19cf64

loc_8c19CEEE:
	mov.l @(0x34,PC),r3
	mov.b @r3,r0
	extu.b r0,r0
	tst 0x01,r0
	bt.s loc_8c19cf2c
	mov 0x02,r5
	mov.l @(0x2C,PC),r14
	bra loc_8c19cf2e
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19CF00:
	#data 0x020C
loc_8c19CF02:
	#data 0x00C1
loc_8c19CF04:
	#data 0x00CE
loc_8c19CF06:
	#data 0x00A0
loc_8c19CF08:
	#data 0x00A1
loc_8c19CF0a:
	#data 0x00A4
loc_8c19CF0c:
	#data 0x0090
loc_8c19CF0e:
	#data 0x00E0
	#align4

loc_8c19CF10:
	#data bank1b.loc_8c1b2A48
loc_8c19CF14:
	#data loc_8c19E1F8
loc_8c19CF18:
	#data 0x8C347970
loc_8c19CF1c:
	#data 0x8C347986
loc_8c19CF20:
	#data 0x8C34797A
loc_8c19CF24:
	#data 0x8C347987
loc_8c19CF28:
	#data bank1c.loc_8c1c649A

;==============================================
loc_8c19CF2C:
	mov.l @(0xF0,PC),r14

loc_8c19CF2E:
	mov.l @(0xF4,PC),r3
	mov.w @(0xDE,PC),r4
	jsr @r3
	nop
	mov.b @r13,r5
	mov r0,r6
	extu.w r6,r4
	extu.b r5,r5
	mov r5,r3
	shll r5
	shll2 r3
	add r3,r5
	add r14,r5
	mov.w @r5,r2
	extu.w r2,r2
	cmp/ge r2,r4
	bf loc_8c19cf86
	mov.w @(0x2,r5),r0
	extu.w r0,r0
	cmp/ge r0,r4
	bf loc_8c19cf9e
	mov.w @(0x4,r5),r0
	extu.w r0,r0
	cmp/ge r0,r4
	bf loc_8c19cfb6
	bra loc_8c19cfba
	nop

loc_8c19CF64:
	mov.l @(0xBC,PC),r3
	mov.w @(0xAA,PC),r4
	jsr @r3
	mov 0x01,r5
	mov.b @r13,r2
	mov r0,r6
	mov.l @(0xB4,PC),r4
	extu.b r6,r5
	mov r2,r3
	shll r2
	add r3,r2
	exts.b r2,r2
	add r4,r2
	mov.b @r2,r1
	extu.b r1,r1
	cmp/ge r1,r5
	bt loc_8c19cf8a

loc_8c19CF86:
	bra loc_8c19cfbc
	mov 0x00,r0

loc_8c19CF8A:
	mov.b @r13,r2
	mov r2,r3
	shll r2
	add r3,r2
	exts.b r2,r2
	add r4,r2
	mov.b @(0x1,r2),r0
	extu.b r0,r0
	cmp/ge r0,r5
	bt loc_8c19cfa2

loc_8c19CF9E:
	bra loc_8c19cfbc
	mov 0x01,r0

loc_8c19CFA2:
	mov.b @r13,r2
	mov r2,r3
	shll r2
	add r3,r2
	exts.b r2,r2
	add r4,r2
	mov.b @(0x2,r2),r0
	extu.b r0,r0
	cmp/ge r0,r5
	bt loc_8c19cfba

loc_8c19CFB6:
	bra loc_8c19cfbc
	mov 0x02,r0

loc_8c19CFBA:
	mov 0x03,r0

loc_8c19CFBC:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19D012:
	#data 0x0810
loc_8c19D014:
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
loc_8c19D034:
	#data bank12.loc_8c1291DC

;==============================================
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

;==============================================
loc_8c19d086:
	cmp/pz r4
	bt loc_8c19d08c
	mov 0x00,r4

loc_8c19d08c:
	mov r4,r0
	nop
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c19D096:
	rts
	mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19D09A:
	#data 0x2710
loc_8c19D09C:
	#data 0x0960
	#align4

loc_8c19D0A0:
	#data bank12.loc_8c1291DC

;==============================================
loc_8c19D0A4:
	sts.l pr,@-r15
	mov.l @(0xC4,PC),r3
	mov.w @(0xA4,PC),r4
	jsr @r3
	mov 0x02,r5
	mov.l @(0xC0,PC),r2
	mov r0,r6
	mov.w @(0x9C,PC),r7
	mov.b @r2,r5
	extu.b r5,r5
	cmp/eq r7,r5
	bf.s loc_8c19d10c
	extu.w r6,r4
	mov.w @(0x92,PC),r1
	cmp/ge r1,r4
	bt loc_8c19d11a
	mov.w @(0x8E,PC),r3
	cmp/ge r3,r4
	bt loc_8c19d126
	mov.w @(0x8A,PC),r3
	cmp/ge r3,r4
	bt loc_8c19d132
	mov.w @(0x86,PC),r3
	cmp/ge r3,r4
	bt loc_8c19d13e
	mov.w @(0x82,PC),r3
	cmp/ge r3,r4
	bt loc_8c19d14a
	mov.w @(0x7E,PC),r3
	cmp/ge r3,r4
	bt loc_8c19d17a
	mov.w @(0x7A,PC),r3
	cmp/ge r3,r4
	bt loc_8c19d186
	mov.w @(0x76,PC),r3
	cmp/ge r3,r4
	bt loc_8c19d192
	mov.w @(0x72,PC),r3
	cmp/ge r3,r4
	bt loc_8c19d19e
	mov.w @(0x6E,PC),r3
	cmp/ge r3,r4
	bt loc_8c19d1aa
	mov.w @(0x6A,PC),r3
	cmp/ge r3,r4
	bt loc_8c19d1b6
	mov 0x70,r3
	cmp/ge r3,r4
	bt loc_8c19d1c0
	mov 0x45,r3
	cmp/ge r3,r4
	bt loc_8c19d1cc

loc_8c19D10C:
	mov r5,r0
	nop
	cmp/eq 0x40,r0
	bf loc_8c19d1d2
	mov.w @(0x52,PC),r2
	cmp/ge r2,r4
	bf loc_8c19d120

loc_8c19D11A:
	lds.l @r15+,pr
	rts
	mov 0x08,r0

;==============================================
loc_8c19D120:
	mov.w @(0x30,PC),r2
	cmp/ge r2,r4
	bf loc_8c19d12c

loc_8c19D126:
	lds.l @r15+,pr
	rts
	mov 0x09,r0

;==============================================
loc_8c19D12C:
	mov.w @(0x26,PC),r2
	cmp/ge r2,r4
	bf loc_8c19d138

loc_8c19D132:
	lds.l @r15+,pr
	rts
	mov 0x0A,r0

;==============================================
loc_8c19D138:
	mov.w @(0x1C,PC),r2
	cmp/ge r2,r4
	bf loc_8c19d144

loc_8c19D13E:
	lds.l @r15+,pr
	rts
	mov 0x0B,r0

;==============================================
loc_8c19D144:
	mov.w @(0x12,PC),r2
	cmp/ge r2,r4
	bf loc_8c19d174

loc_8c19D14A:
	lds.l @r15+,pr
	rts
	mov 0x0C,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19d150:
	#data 0x0B52
loc_8c19d152:
	#data 0x0080
loc_8c19d154:
	#data 0x1100
loc_8c19d156:
	#data 0x0F00
loc_8c19d158:
	#data 0x0D00
loc_8c19d15a:
	#data 0x0C00
loc_8c19d15c:
	#data 0x0A00
loc_8c19d15e:
	#data 0x0900
loc_8c19d160:
	#data 0x0700
loc_8c19d162:
	#data 0x0400
loc_8c19d164:
	#data 0x0250
loc_8c19d166:
	#data 0x0150
loc_8c19d168:
	#data 0x00C0
loc_8c19d16a:
	#data 0x1300
	#align4

loc_8c19D16C:
	#data loc_8c19E1F8
loc_8c19D170:
	#data 0x8C3479E6

;==============================================
loc_8c19D174:
	mov.w @(0xFA,PC),r2
	cmp/ge r2,r4
	bf loc_8c19d180

loc_8c19D17A:
	lds.l @r15+,pr
	rts
	mov 0x0D,r0

loc_8c19D180:
	mov.w @(0xF0,PC),r2
	cmp/ge r2,r4
	bf loc_8c19d18c


loc_8c19D186:
	lds.l @r15+,pr
	rts
	mov 0x0F,r0

loc_8c19D18C:
	mov.w @(0xE6,PC),r2
	cmp/ge r2,r4
	bf loc_8c19d198

loc_8c19D192:
	lds.l @r15+,pr
	rts
	mov 0x14,r0

loc_8c19D198:
	mov.w @(0xDC,PC),r2
	cmp/ge r2,r4
	bf loc_8c19d1a4

loc_8c19D19e:
	lds.l @r15+,pr
	rts
	mov 0x19,r0

loc_8c19D1a4:
	mov.w @(0xD2,PC),r2
	cmp/ge r2,r4
	bf loc_8c19d1b0

loc_8c19D1aa:
	lds.l @r15+,pr
	rts
	mov 0x1E,r0

loc_8c19D1b0:
	mov.w @(0xC8,PC),r2
	cmp/ge r2,r4
	bf loc_8c19d1bc

loc_8c19D1b6:
	lds.l @r15+,pr
	rts
	mov 0x23,r0

loc_8c19D1bc:
	cmp/ge r7,r4
	bf loc_8c19d1c6

loc_8c19D1c0:
	lds.l @r15+,pr
	rts
	mov 0x28,r0

loc_8c19D1C6:
	mov 0x40,r3
	cmp/ge r3,r4
	bf loc_8c19d1d2

loc_8c19D1CC:
	lds.l @r15+,pr
	rts
	mov 0x2D,r0

loc_8c19D1D2:
	mov 0x32,r0
	lds.l @r15+,pr
	rts
	nop

;==============================================
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
	
;==============================================
loc_8c19D204:
	mov.l @(0x8C,PC),r3
	sts.l pr,@-r15
	mov.l @r3,r4
	mov r4,r0
	nop
	add 0x24,r0
	mov.b @r0,r0
	tst 0x04,r0
	bt loc_8c19d228
	mov r4,r2
	add 0x24,r2
	mov.b @r2,r0
	mov.l @(0x78,PC),r4
	and 0xFB,r0
	mov.l @(0x78,PC),r1
	mov.w @(0x60,PC),r5
	jsr @r1
	mov.b r0,@r2

loc_8c19D228:
	mov.l @(0x68,PC),r3
	mov.l @r3,r0
	add 0x3C,r0
	mov.b @r0,r0
	tst 0x08,r0
	bt loc_8c19d244
	mov.l @(0x64,PC),r1
	mov.l @(0x60,PC),r4
	mov.w @(0x4A,PC),r5
	jsr @r1
	nop
	lds.l @r15+,pr
	rts
	mov 0x01,r0

;==============================================
loc_8c19D244:
	mov 0x00,r0
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c19D24C:
	mov.l @(loc_8c19D294,pc),r3 ; r3 set to 0x8C347970
	mov.l @r3,r1
	add 0x1C,r1
	mov.b @r1,r0
	or 0x02,r0
	rts
	mov.b r0,@r1

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19D272:
	#data 0x0A00
loc_8c19D274:
	#data 0x0800
loc_8c19D276:
	#data 0x0500
loc_8c19D278:
	#data 0x0300
loc_8c19D27a:
	#data 0x0180
loc_8c19D27c:
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
loc_8c19D28C:
	#data 0x8C3479D1
loc_8c19D290:
	#data loc_8c19E30C
loc_8c19D294:
	#data 0x8C347970
loc_8c19D298:
	#data 0x8C3479F0
loc_8c19D29C:
	#data bank1b.loc_8c1b3EEC

;==============================================
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

loc_8c19D2E0:
	mov.l @r14,r3
	add 0x18,r3
	mov.b @r3,r0
	and 0xFC,r0
	or 0x03,r0
	mov.b r0,@r3
	jsr @r11
	mov.l @r12,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c19d2fe
	jsr @r10
	mov r13,r4
	bra loc_8c19d33a
	nop

loc_8c19d2fe:
	mov.l @r14,r2
	mov r2,r0
	nop
	add 0x18,r0
	mov.b @r0,r0
	and 0x03,r0
	cmp/eq 0x03,r0
	bf loc_8c19d2e0
	mov.l @r14,r0
	add 0x20,r0
	mov.b @r0,r0
	mov.l @r14,r3
	and 0x01,r0
	mov r0,r4
	add 0x20,r3
	mov.b @r3,r0
	and 0xFE,r0
	mov.b r0,@r3
	mov.l @r14,r3
	add 0x20,r3
	mov.b @r3,r0
	or 0x80,r0
	mov.b r0,@r3
	mov.l @r14,r2
	mov r4,r0
	nop
	mov.l @(loc_8c19d3b8,pc),r3
	mov.w @(loc_8C19D3A0,pc),r1
	jsr @r3
	add 0x20,r2

loc_8c19d33a:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
;unused?
loc_8c19d348:
	rts
	nop

;==============================================
;unused?
loc_8c19d34c:
	mov.l @(0x54,PC),r1
	mov.l @r1,r3
	add 0x20,r3
	mov.b @r3,r0
	and 0xFE,r0
	rts
	mov.b r0,@r3

;==============================================
;unused?
loc_8c19d35a:
	mov.l @(0x48,PC),r1
	mov.l @r1,r3
	add 0x20,r3
	mov.b @r3,r0
	or 0x01,r0
	rts
	mov.b r0,@r3

;==============================================
;unused?
loc_8c19d368:
	mov.l @(0x38,PC),r1
	mov.l @r1,r0
	add 0x3C,r0
	mov.b @r0,r0
	tst 0x20,r0
	movt r0
	add 0xFF,r0
	rts
	neg r0,r0

;==============================================
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

;==============================================
;unused?
loc_8c19D38c:
	mov.l @(0x14,PC),r3
	mov.l @r3,r0
	add 0x3C,r0
	mov.b @r0,r0
	tst 0x80,r0
	movt r0
	add 0xFF,r0
	rts
	neg r0,r0

;==============================================
loc_8c19D39E:
	#data 0x04C4
loc_8c19d3a0:
	#data 0x0701
	#align4

loc_8c19D3A4:
	#data 0x8C347970
loc_8c19D3A8:
	#data 0x8C347A18
loc_8c19D3AC:
	#data bank1b.loc_8c1b3EEC
loc_8c19D3B0:
	#data bank1a.loc_8c1a003E
loc_8c19D3B4:
	#data bank1b.loc_8c1b3F0C
loc_8c19D3B8:
	#data bank13.loc_8c130ECC

;==============================================
loc_8c19D3BC:
	mov.l r14,@-r15
	mov 0x48,r0
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov.l @(0x10C,PC),r14
	sts.l pr,@-r15
	mov.l @r14,r13
	add 0xFC,r15
	mov.b @(r0,r13),r3
	mov.w @(0xF0,PC),r2
	extu.b r3,r3
	cmp/eq r2,r3
	bf loc_8c19d416
	mov.w @(0xEA,PC),r4
	bsr loc_8c19e1f8
	mov 0x01,r5
	mov 0x48,r1
	add r13,r1
	mov.b r0,@r1
	mov.l @r14,r3
	mov 0x48,r0
	mov.b @(r0,r3),r2
	mov.w @(0xDA,PC),r3
	extu.b r2,r2
	cmp/eq r3,r2
	bf loc_8c19d400
	mov.w @(0xD4,PC),r4
	mov 0x01,r6
	bsr loc_8c19e30c
	mov 0x00,r5

loc_8c19D400:
	mov.l @r14,r3
	mov 0x48,r0
	mov.b @(r0,r3),r2
	mov.w @(0xC8,PC),r3
	extu.b r2,r2
	cmp/eq r3,r2
	bf loc_8c19d416
	mov.w @(0xBE,PC),r4
	mov 0x01,r6
	bsr loc_8c19e30c
	mov 0x05,r5

loc_8c19D416:
	mov.w @(0xBA,PC),r5
	mov.l @(0xC4,PC),r10
	jsr @r10
	mov r15,r4
	mov.w @(0xB4,PC),r8
	mov.l @(0xC0,PC),r11
	mov.l @(0xC4,PC),r12
	mov r8,r9
	mov.l @(0xC4,PC),r13
	add 0xEC,r9

loc_8c19D42A:
	mov.l @r14,r3
	add 0x14,r3
	mov.b @r3,r0
	and 0xF7,r0
	mov.b r0,@r3
	mov.l @r14,r2
	mov.b @(0xC,r2),r0
	and 0xF7,r0
	mov.b r0,@(0xC,r2)
	mov.l @r14,r3
	add 0x24,r3
	mov.b @r3,r0
	and 0xFE,r0
	mov.b r0,@r3
	mov.l @r14,r3
	add 0x24,r3
	mov.b @r3,r0
	and 0xFB,r0
	mov.b r0,@r3
	mov.l @r14,r3
	add 0x54,r3
	mov.b @r3,r0
	and 0xFD,r0
	mov.b r0,@r3
	mov.l @r14,r3
	add 0x1C,r3
	mov.b @r3,r0
	or 0x08,r0
	mov.b r0,@r3
	mov.l @r14,r0
	mov 0x48,r1
	mov.w @(0x6C,PC),r3
	mov.b @(r0,r1),r0
	extu.b r0,r0
	and 0xF0,r0
	cmp/eq r3,r0
	bf loc_8c19d518
	mov.l @r14,r2
	add 0x7C,r2
	mov.b @r2,r0
	or 0x01,r0
	mov.b r0,@r2
	mov.l @(0x64,PC),r4
	jsr @r10
	mov 0x0A,r5
	bra loc_8c19d496
	nop

loc_8c19D488:
	jsr @r13
	mov.l @r11,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c19d496
	bra loc_8c19d558
	mov r9,r4

loc_8c19D496:
	mov.l @r14,r0
	mov 0x50,r1
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x43,r0
	bf loc_8c19d488
	mov 0x00,r2
	mov 0x43,r5
	mov.l r2,@-r15
	mov.l @(0x44,PC),r3
	mov 0x01,r6
	mov r2,r7
	jsr @r3
	mov r6,r4
	exts.b r0,r0
	tst r0,r0
	bf.s loc_8c19d4c0
	add 0x04,r15
	mov.w @(0x1C,PC),r4
	bra loc_8c19d558
	nop

loc_8c19D4C0:
	mov.l @(0x20,PC),r4
	jsr @r10
	mov 0x0A,r5
	bra loc_8c19d502
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19D4ca:
	#data 0x00AA
loc_8c19D4cc:
	#data 0x0309
loc_8c19D4ce:
	#data 0x00C1
loc_8c19D4d0:
	#data 0x02E3
loc_8c19D4d2:
	#data 0x00CE
loc_8c19D4d4:
	#data 0x00C8
loc_8c19D4d6:
	#data 0x04EC
loc_8c19D4d8:
	#data 0x00C0
loc_8c19D4da:
	#data 0x04E2
	#align4

loc_8c19D4dc:
	#data 0x8C347970
loc_8c19D4E0:
	#data bank1b.loc_8c1b3EEC
loc_8c19D4E4:
	#data 0x8C347A18
loc_8c19D4E8:
	#data bank1a.loc_8c1a003E
loc_8c19D4EC:
	#data bank1b.loc_8c1b3F0C
loc_8c19D4F0:
	#data bank1b.loc_8c1b31DA

;==============================================
loc_8c19D4F4:
	jsr @r13
	mov.l @r11,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c19d502
	bra loc_8c19d558
	mov r8,r4

loc_8c19D502:
	mov.l @r14,r2
	mov r2,r0
	nop
	add 0x7C,r0
	mov.b @r0,r0
	and 0x01,r0
	extu.b r0,r0
	tst r0,r0
	bf loc_8c19d4f4
	bra loc_8c19d51e
	nop

loc_8c19D518:
	mov.l @(0xF0,PC),r2
	jsr @r2
	nop

loc_8c19D51E:
	mov.l @r14,r3
	add 0x24,r3
	mov.b @r3,r0
	or 0x04,r0
	mov.b r0,@r3
	mov.l @r14,r3
	add 0x20,r3
	mov.b @r3,r0
	or 0x01,r0
	mov.b r0,@r3
	mov.l @r14,r3
	add 0x24,r3
	mov.b @r3,r0
	or 0x01,r0
	mov.b r0,@r3
	mov.l @(0xD0,PC),r4
	jsr @r10
	mov 0x06,r5

loc_8c19D542:
	jsr @r13
	mov.l @r11,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c19d542
	jsr @r13
	mov.l @r15,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c19d560
	mov.w @(0xAE,PC),r4

loc_8c19D558:
	jsr @r12
	nop
	bra loc_8c19d56e
	nop

loc_8c19D560:
	mov.l @r14,r0
	add 0x3C,r0
	mov.b @r0,r0
	tst 0x10,r0
	bf loc_8c19d56e
	bra loc_8c19d42a
	nop

loc_8c19D56E:
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

;==============================================
loc_8c19D5B4:
	mov 0x00,r0 ; r0 set to 0x00
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r8

;==============================================
;unused?
loc_8c19d5be:
	mov.l @(0x54,PC),r3
	mov.l @r3,r1
	add 0x1C,r1
	mov.b @r1,r0
	and 0xF7,r0
	bra loc_8c19e562
	mov.b r0,@r1

;==============================================
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

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19D608:
	#data 0x04F6
loc_8c19D60A:
	#data 0x00A7
	#align4

loc_8c19D60C:
	#data loc_8c19E562
loc_8c19D610:
	#data 0x8C347A18
loc_8c19D614:
	#data 0x8C347970
loc_8c19D618:
	#data 0x8C347975

;==============================================
loc_8c19D61C:
	mov.l r14,@-r15
	mov.l r8,@-r15
	mov.l @(0xE8,PC),r14
	sts.l pr,@-r15
	mov.l @r14,r0
	mov.b @(0x8,r0),r0
	mov.l @(0xE4,PC),r3
	and 0x01,r0
	mov.b r0,@r3
	mov.l @r14,r2
	mov.b @(0x8,r2),r0
	and 0xFE,r0
	mov.b r0,@(0x8,r2)
	mov.l @r14,r1
	mov 0x48,r0
	mov.b @(r0,r1),r2
	mov.w @(0xBE,PC),r1
	extu.b r2,r2
	cmp/eq r1,r2
	bt loc_8c19d65c
	mov.l @r14,r2
	mov.b @(r0,r2),r3
	mov.w @(0xB4,PC),r2
	extu.b r3,r3
	cmp/eq r2,r3
	bt loc_8c19d65c
	mov.l @r14,r0
	mov 0x48,r1
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x52,r0
	bf loc_8c19d668

loc_8c19D65C:
	mov.l @r14,r3
	add 0x1C,r3
	mov.b @r3,r0
	or 0x40,r0
	bra loc_8c19d6aa
	mov.b r0,@r3

loc_8c19D668:
	mov.w @(0x96,PC),r3
	and 0xF0,r0
	cmp/eq r3,r0
	bf loc_8c19d682
	mov.l @(0xA0,PC),r2
	jsr @r2
	nop
	mov.l @(0xA0,PC),r3
	jsr @r3
	extu.b r0,r8
	extu.b r0,r0
	cmp/eq r0,r8
	bf loc_8c19d6aa

loc_8c19D682:
	mov.w @(0x7E,PC),r4
	mov 0x02,r6
	bsr loc_8c19e30c
	mov 0x10,r5
	mov.w @(0x7A,PC),r4
	mov.w @(0x76,PC),r5
	bsr loc_8c19e30c
	mov 0x02,r6
	mov.l @(0x88,PC),r3
	mov 0x04,r2
	mov.b r2,@r3
	mov.l @r14,r1
	add 0x20,r1
	mov.b @r1,r0
	or 0x04,r0
	mov.b r0,@r1
	mov.l @r14,r2
	mov.b @(0x8,r2),r0
	or 0x02,r0
	mov.b r0,@(0x8,r2)

loc_8c19D6AA:
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19d6fe:
	#data 0x0084
loc_8c19d700:
	#data 0x0082
loc_8c19d702:
	#data 0x00C0
loc_8c19d704:
	#data 0x0A0F
loc_8c19d706:
	#data 0x0100
loc_8c19d708:
	#data 0x0B0F
	#align4

loc_8c19D70C:
	#data 0x8C347970
loc_8c19D710:
	#data 0x8C3479A6
loc_8c19D714:
	#data loc_8c19FD02
loc_8c19D718:
	#data loc_8c19FD58
loc_8c19D71C:
	#data 0x8C3479A1

;==============================================
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

loc_8c19d754:
	mov r4,r0
	nop
	mov.b @(0x08,r0),r0
	tst 0x20,r0
	bt loc_8c19d768
	mov.w @(loc_8C19D82A,pc),r4
	mov.l @r15,r8
	bsr loc_8c19e1f8
	mov 0x02,r5
	mov.w r0,@r8

loc_8c19D768:
	add 0x04,r15
	lds.l @r15+,pr
	mov 0x02,r0 ; r0 set to 0x02
	rts
	mov.l @r15+,r8

;==============================================
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

;==============================================
loc_8c19D78E:
	mov 0x00,r0 ; r0 set to 0x00
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r8

;==============================================
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

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19d82a:
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
	#align4

loc_8c19D838:
	#data 0x8C347970
loc_8c19D83C:
	#data 0x8C3479A6
loc_8c19D840:
	#data bank13.loc_8c130ECC
loc_8c19D844:
	#data 0x8C3479A1
loc_8c19D848:
	#data 0x8C347A18
loc_8c19D84C:
	#data bank1b.loc_8c1b3EEC
loc_8c19D850:
	#data bank1b.loc_8c1b3F0C

;==============================================
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

;==============================================
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

loc_8c19D8CC:
	jsr @r11
	mov.l @r12,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c19d8de
	jsr @r10
	mov r13,r4
	bra loc_8c19d918
	nop

loc_8c19d8de:
	mov.l @r14,r0
	add 0x3C,r0
	mov.b @r0,r0
	tst 0x04,r0
	bf loc_8c19d8cc
	mov.l @r14,r0
	add 0x20,r0
	mov.b @r0,r0
	mov.l @r14,r3
	and 0x01,r0
	mov r0,r4
	add 0x20,r3
	mov.b @r3,r0
	and 0xFE,r0
	mov.b r0,@r3
	mov.l @(loc_8c19d960,pc),r1
	mov.l @(loc_8c19d964,pc),r3
	mov.b @r1,r0
	mov.w @(loc_8C19D958,pc),r1
	mov.l @r14,r2
	jsr @r3
	add 0x4C,r2
	mov.l @r14,r2
	mov r4,r0
	nop
	mov.l @(loc_8c19d964,pc),r3
	mov.w @(loc_8c19d954,pc),r1
	jsr @r3
	add 0x20,r2

loc_8c19d918:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19D954:
	#data 0x0701
loc_8c19D956:
	#data 0x050A
loc_8c19d958:
	#data 0x0602
	#align4

loc_8c19D95C:
	#data 0x8C347970
loc_8c19D960:
	#data 0x8C3479A7
loc_8c19D964:
	#data bank13.loc_8c130ECC
loc_8c19D968:
	#data 0x8C347A18
loc_8c19D96C:
	#data bank1b.loc_8c1b3EEC
loc_8c19D970:
	#data bank1a.loc_8c1a003E
loc_8c19D974:
	#data bank1b.loc_8c1b3F0C
loc_8c19D978:
	#data 0x8C347975
loc_8c19D97C:
	#data 0x8C3479A6
loc_8c19D980:
	#data 0x8C3479A1

;==============================================
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

;==============================================
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

loc_8c19da26:
	mov r4,r0
	nop
	add 0x3C,r0
	mov.b @r0,r0
	tst 0x04,r0
	movt r0
	add 0xFF,r0
	neg r0,r0
	cmp/eq 0x01,r0
	bf loc_8c19da40

loc_8c19DA3A:
	lds.l @r15+,pr
	rts
	mov 0x02,r0

;==============================================
loc_8c19DA40:
	mov 0x00,r3
	mov.b r3,@r5

loc_8c19DA44:
	mov 0x00,r0 ; r0 set to 0x00
	lds.l @r15+,pr
	rts
	nop

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
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
loc_8c19DAA8:
	#data 0x8C347974

;==============================================
loc_8c19DAAC:
	mov.l r14,@-r15
	mov 0x10,r0
	sts.l pr,@-r15
	add 0xE0,r15
	mov.b r4,@(r0,r15)
	mov 0x18,r0
	mov.b r5,@(r0,r15)
	mov r6,r0
	nop
	mov.b r0,@(0xC,r15)
	mov 0x14,r0
	mov.b r7,@(r0,r15)
	mov.w @(0x11E,PC),r4
	bsr loc_8c19e1f8
	mov 0x01,r5
	mov r15,r1
	add 0x1C,r1
	extu.b r0,r5
	mov.b r0,@r1
	mov.l @(0x118,PC),r3
	mov 0x01,r6
	mov.w @(0x10C,PC),r4
	bsr loc_8c19e30c
	and r3,r5
	mov.l @(0x110,PC),r3
	jsr @r3
	nop
	mov r15,r5
	mov.l @(0x10C,PC),r2
	mov r15,r6
	mov r15,r4
	add 0x08,r6
	add 0x08,r5
	jsr @r2
	add 0x04,r4
	mov r15,r3
	mov 0x18,r0
	mov.l r3,@-r15
	mov.b @(r0,r15),r2
	mov 0x14,r0
	mov.l r2,@-r15
	mov.b @(r0,r15),r7
	mov 0x20,r0
	mov.b @(r0,r15),r6
	mov 0x18,r0
	mov.l @(0xF0,PC),r3
	mov.b @(r0,r15),r5
	jsr @r3
	mov.l @(0xC,r15),r4
	mov.l @(0xEC,PC),r3
	mov 0x00,r2
	mov.b r2,@r3
	mov.l @(0xE8,PC),r4
	mov.l @r4,r2
	add 0x01,r2
	mov.l r2,@r4
	mov.l @(0xE4,PC),r14
	mov.l @r14,r4
	mov r4,r0
	nop
	add 0x54,r0
	mov.b @r0,r0
	and 0x01,r0
	extu.b r0,r0
	tst r0,r0
	bf.s loc_8c19db38
	add 0x08,r15
	mov.b @r15,r2
	mov 0x48,r0
	mov.b r2,@(r0,r4)

loc_8c19DB38:
	mov.l @r14,r3
	add 0x20,r3
	mov.b @r3,r0
	or 0x02,r0
	mov.b r0,@r3
	mov.l @(0xC4,PC),r4
	mov.b @r4,r0
	or 0x40,r0
	mov.b r0,@r4
	mov.b @r4,r0
	and 0xDF,r0
	mov.b r0,@r4
	mov.b @r4,r0
	or 0x10,r0
	mov.b r0,@r4
	mov.l @r14,r3
	add 0x14,r3
	mov.b @r3,r0
	mov.l @(0xAC,PC),r2
	and 0x7F,r0
	jsr @r2
	mov.b r0,@r3
	mov.l @r14,r3
	mov 0x48,r0
	mov.l @(0xA4,PC),r4
	mov.w @(0x7A,PC),r5
	mov.b @(r0,r3),r2
	extu.b r2,r2
	and r5,r2
	cmp/eq r5,r2
	bf loc_8c19db7e
	mov.b @(0x1,r4),r0
	or 0x80,r0
	bra loc_8c19db94
	mov.b r0,@(0x1,r4)

loc_8c19DB7E:
	mov.l @r14,r0
	mov 0x48,r1
	mov.w @(0x64,PC),r3
	mov.b @(r0,r1),r0
	extu.b r0,r0
	and 0xF0,r0
	cmp/eq r3,r0
	bf loc_8c19db94
	mov.b @r4,r0
	or 0x01,r0
	mov.b r0,@r4

loc_8c19DB94:
	add 0x20,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
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

loc_8c19dbe6:
	#data 0x0680
loc_8c19dbe8:
	#data 0x00e0
loc_8c19dbea:
	#data 0x0090
	#align4

loc_8c19DBEC:
	#data 0x0000FFDF
loc_8c19DBF0:
	#data loc_8c19ED64
loc_8c19DBF4:
	#data loc_8c19C378
loc_8c19DBF8:
	#data loc_8c19B5BE
loc_8c19DBFC:
	#data 0x8C34797E
loc_8c19Dc00:
	#data 0x8C3479F8
loc_8c19Dc04:
	#data 0x8C347970
loc_8c19Dc08:
	#data 0x8C347974
loc_8c19DC0C:
	#data bank1b.loc_8c1b0E88
loc_8c19DC10:
	#data 0x8C347979

;==============================================
loc_8c19dc14:
	mov r15,r3
	add 0x04,r3
	mov.l r3,@-r15
	mov 0x20,r6
	mov 0x00,r5
	mov.l r13,@-r15
	mov r14,r7

loc_8c19dc22:
	mov.l @(loc_8c19dd30,pc),r3
	jsr @r3
	mov.l @(0x08,r15),r4
	mov.l @(loc_8C19DD34,pc),r3
	mov 0x00,r2
	add 0x08,r15
	mov.b r2,@r3
	mov.l @(loc_8C19DD38,pc),r4
	mov.l @r4,r2
	add 0x01,r2
	mov.l r2,@r4
	mov.w @(loc_8C19DD28,pc),r1
	mov.l @r15,r2
	mov.l @(loc_8c19dd3c,pc),r4
	cmp/eq r1,r2
	bt loc_8c19dc6c
	mov.l @r15,r0
	mov.w @(loc_8C19DD2A,pc),r2
	cmp/eq r2,r0
	bt loc_8c19dc6c
	mov.l @r15,r0
	mov.w @(loc_8C19DD2C,pc),r3
	cmp/eq r3,r0
	bt loc_8c19dc6c
	mov.l @r15,r0
	cmp/eq 0x40,r0
	bt loc_8c19dc6c
	mov.l @(loc_8c19dd40,pc),r0
	mov.b @r0,r0
	and 0x01,r0
	extu.b r0,r0
	tst r0,r0
	bf loc_8c19dc6c
	mov.l @(loc_8C19DD44,pc),r0
	mov.b @r0,r0
	tst 0x80,r0
	bt loc_8c19dc78

loc_8c19dc6c:
	mov.l @r4,r2
	mov r2,r3
	add 0x54,r3
	mov.b @r3,r0
	and 0xFE,r0
	mov.b r0,@r3

loc_8c19dc78:
	mov.l @r4,r5
	mov r5,r0
	nop
	add 0x54,r0
	mov.b @r0,r0
	and 0x01,r0
	extu.b r0,r0
	tst r0,r0
	bf loc_8c19dc92
	mov 0x48,r1
	mov.b @(0x04,r15),r0
	add r5,r1
	mov.b r0,@r1

loc_8c19dc92:
	mov.l @r4,r3
	add 0x54,r3
	mov.b @r3,r0
	or 0x04,r0
	mov.b r0,@r3
	mov.l @(loc_8c19dd48,pc),r4
	add 0x10,r15
	lds.l @r15+,pr
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
	or 0x08,r0
	mov.b r0,@r4
	mov.l @(loc_8c19dd40,pc),r4
	mov.b @(0x03,r4),r0
	and 0xDF,r0
	mov.b r0,@(0x03,r4)
	mov.b @(0x03,r4),r0
	and 0xFD,r0
	mov.b r0,@(0x03,r4)
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19dd28:
	#data 0x0100
loc_8c19dd2a:
	#data 0x0200
loc_8c19dd2c:
	#data 0x0080
loc_8c19DD2E:
	#data 0x00E0
	#align4

loc_8c19DD30:
	#data loc_8c19B5BE
loc_8c19dd34:
	#data 0x8C34797E
loc_8c19dd38:
	#data 0x8C3479FC
loc_8c19DD3C:
	#data 0x8C347970
loc_8c19DD40:
	#data 0x8C347979
loc_8c19dd44:
	#data 0x8C34797A
loc_8c19DD48:
	#data 0x8C347974
loc_8c19DD4C:
	#data 0x8C347A00
loc_8c19DD50:
	#data bank1b.loc_8c1b0E88

;==============================================
loc_8c19dd54:
	mov.l @r13,r0
	mov 0x48,r1
	mov.w @(loc_8c19de74,pc),r3
	mov.b @(r0,r1),r0
	extu.b r0,r0
	and 0xF0,r0
	cmp/eq r3,r0
	bf loc_8c19dd6a
	mov.b @r14,r0
	or 0x01,r0
	mov.b r0,@r14

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

loc_8c19ddae:
	mov.l @(loc_8c19de84,pc),r2
	jsr @r2
	nop
	mov.l @(loc_8C19DE88,pc),r2
	mov 0x00,r3
	mov.b r3,@r2
	mov r13,r0
	nop

loc_8c19DDBE:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
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
	#align4

loc_8c19DE80:
	#data 0x8C347A04
loc_8c19DE84:
	#data loc_8c19ED64
loc_8c19de88:
	#data 0x8C34797E
loc_8c19DE8C:
	#data bank1b.loc_8c1b2888
loc_8c19DE90:
	#data 0x8C347970
loc_8c19DE94:
	#data bank1b.loc_8c1b3EEC
loc_8c19DE98:
	#data 0x8C347974
loc_8c19DE9C:
	#data 0x8C34797A
loc_8c19DEA0:
	#data bank1b.loc_8c1b1118

;==============================================
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

loc_8c19dec4:
	mov 0x48,r0
	mov.b @(r0,r4),r3
	mov.w @(loc_8C19DEEE,pc),r2
	extu.b r3,r3
	and r11,r3
	cmp/eq r2,r3
	bt loc_8c19dee2
	mov.l @(loc_8c19def0,pc),r0
	mov.b @r0,r0
	tst 0x40,r0
	bf loc_8c19dee2
	mov.l @(loc_8c19def0,pc),r0
	mov.b @r0,r0
	tst 0x20,r0
	bt loc_8c19defc

loc_8c19dee2:
	mov.l @(loc_8c19def8,pc),r2
	jsr @r2
	nop
	bra loc_8c19df1c
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19deec:
	#data 0x0090
loc_8C19DEEE:
	#data 0x00C0
	#align4

loc_8c19def0:
	#data 0x8C34797A
loc_8c19def4:
	#data bank1b.loc_8C1B17CC
loc_8c19def8:
	#data bank1b.loc_8c1b1db8

;==============================================
loc_8c19defc:
	mov 0x48,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	and r11,r0
	cmp/eq 0x70,r0
	bf loc_8c19df1c
	mov.l @(loc_8c19e00c,pc),r2
	jsr @r2
	nop
	mov.l @(loc_8C19E010,pc),r3
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x07,r0
	bf loc_8c19df1c
	bra loc_8c19e150
	nop

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

loc_8c19df4a:
	mov.l @r14,r2
	mov r12,r0
	nop
	mov.b @(0x01,r0),r0
	mov.w @(loc_8C19DFFA,pc),r1
	tst 0x10,r0
	mov.l @(loc_8c19e01c,pc),r3
	movt r0
	add 0xFF,r0
	neg r0,r0
	jsr @r3
	add 0x54,r2
	mov.l @(loc_8c19e020,pc),r2
	jsr @r2
	mov 0x01,r4
	mov.l @(loc_8c19e024,pc),r3
	jsr @r3
	nop
	mov.l @(loc_8c19e028,pc),r2
	jsr @r2
	nop
	mov.l @(loc_8C19E030,pc),r2
	mov.l @(loc_8C19E02C,pc),r3
	mov.l @(loc_8C19E034,pc),r1
	mov.b @r2,r5
	mov.b @r3,r6
	bsr loc_8c19e878
	mov.b @r1,r4
	mov.l @r14,r2
	mov 0x48,r0
	mov.b @(r0,r2),r3
	extu.b r3,r3
	and r13,r3
	cmp/eq r13,r3
	bt loc_8c19dfb0
	mov.l @r14,r0
	mov 0x48,r1
	mov.w @(loc_8C19DFFC,pc),r3
	mov.b @(r0,r1),r0
	extu.b r0,r0
	and 0xF0,r0
	cmp/eq r3,r0
	bt loc_8c19dfb0
	mov.l @r14,r0
	mov 0x48,r2
	mov.w @(loc_8C19DFFE,pc),r3
	mov.b @(r0,r2),r0
	extu.b r0,r0
	and 0xF0,r0
	cmp/eq r3,r0
	bf loc_8c19dfd0

loc_8c19dfb0:
	mov.w @(loc_8C19E000,pc),r4
	bsr loc_8c19e1f8
	mov 0x01,r5
	mov 0x01,r6
	mov.b r0,@r15
	mov.w @(loc_8C19E002,pc),r4
	bsr loc_8c19e30c
	extu.b r0,r5
	mov.w @(loc_8C19E004,pc),r4
	bsr loc_8c19e1f8
	mov 0x01,r5
	mov 0x01,r6
	mov.b r0,@r15
	mov.w @(loc_8C19E006,pc),r4
	bsr loc_8c19e30c
	extu.b r0,r5

loc_8c19dfd0:
	mov.l @r14,r2
	mov 0x48,r0
	mov.b @(r0,r2),r3
	extu.b r3,r3
	and r13,r3
	cmp/eq r13,r3
	bf loc_8c19dff6
	mov.l @(loc_8C19E038,pc),r0
	mov.b @r0,r0
	tst 0x20,r0
	bf loc_8c19dff6
	mov.l @(loc_8C19E03C,pc),r4
	mov.w @(loc_8C19E008,pc),r5
	jsr @r10
	nop
	mov.l @(loc_8C19E040,pc),r2
	mov.b @r2,r0
	or 0x20,r0
	mov.b r0,@r2

loc_8c19dff6:
	bra loc_8c19e1e4
	mov 0x03,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C19DFFA:
	#data 0x0701
loc_8C19DFFC:
	#data 0x0090
loc_8C19DFFE:
	#data 0x00C0
loc_8C19E000:
	#data 0x0600
loc_8C19E002:
	#data 0x0459
loc_8C19E004:
	#data 0x0601
loc_8C19E006:
	#data 0x045B
loc_8C19E008:
	#data 0x012C
	#align4

loc_8c19e00c:
	#data bank1b.loc_8C1B248E
loc_8c19e010:
	#data 0x8C34797E
loc_8c19e014:
	#data loc_8C19CD7A
loc_8c19e018:
	#data 0x8C347970
loc_8c19e01c:
	#data bank13.loc_8c130ecc
loc_8c19e020:
	#data loc_8c19c588
loc_8c19e024:
	#data loc_8c19b468
loc_8c19e028:
	#data bank1b.loc_8c1b2856
loc_8C19E02C:
	#data 0x8C3479DF
loc_8C19E030:
	#data 0x8C3479DE
loc_8C19E034:
	#data 0x8C3479DD
loc_8C19E038:
	#data 0x8C34797A
loc_8C19E03C:
	#data 0x8C347A10
loc_8C19E040:
	#data 0x8C34797C

;==============================================
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

loc_8c19e068:
	mov.l @(loc_8c19e108,pc),r2
	jsr @r2
	nop
	exts.b r0,r0
	tst r0,r0
	bt loc_8c19e080
	mov.l @(loc_8c19e104,pc),r3
	mov.l @r3,r0
	add 0x3C,r0
	mov.b @r0,r0
	tst 0x20,r0
	bf loc_8c19e0f0

loc_8c19e080:
	mov.l @r14,r3
	mov 0x48,r0
	mov.b @(r0,r3),r2
	mov.w @(loc_8C19E102,pc),r3
	extu.b r2,r2
	and r11,r2
	cmp/eq r3,r2
	bt loc_8c19e0a0
	mov.l @(loc_8C19E10C,pc),r0
	mov.b @r0,r0
	tst 0x40,r0
	bf loc_8c19e0a0
	mov.l @(loc_8C19E10C,pc),r0
	mov.b @r0,r0
	tst 0x20,r0
	bt loc_8c19e0aa

loc_8c19e0a0:
	mov.l @(loc_8c19e110,pc),r3
	jsr @r3
	nop
	bra loc_8c19e0c6
	nop

loc_8c19e0aa:
	mov.l @r14,r3
	mov 0x48,r0
	mov.b @(r0,r3),r2
	extu.b r2,r2
	and r13,r2
	cmp/eq r13,r2
	bf loc_8c19e0c6
	mov.l @(loc_8C19E10C,pc),r0
	mov.b @r0,r0
	tst 0x20,r0
	bf loc_8c19e0c6
	mov.l @(loc_8c19e114,pc),r1
	jsr @r1
	nop

loc_8c19e0c6:
	mov.l @(loc_8C19E118,pc),r4
	jsr @r10
	mov 0x02,r5
	mov r12,r0
	nop
	mov.b @r0,r0
	tst 0x08,r0
	bt loc_8c19e0e2
	mov.l @(loc_8c19e104,pc),r1
	mov.l @r1,r0
	add 0x54,r0
	mov.b @r0,r0
	tst 0x04,r0
	bf loc_8c19e0ec

loc_8c19e0e2:
	mov r12,r0
	nop
	mov.b @r0,r0
	tst 0x04,r0
	bt loc_8c19e0fe

loc_8c19E0EC:
	bra loc_8c19E1E4
	mov 0x01,r0

loc_8c19E0F0:
	mov.l @(0x28,PC),r2
	mov.l @(0x24,PC),r3
	jsr @r2
	mov.l @r3,r4
	exts.b r0,r0
	tst r0,r0
	bf loc_8c19e120

loc_8c19E0FE:
bra loc_8c19E1E4
mov 0x02,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19e102:
	#data 0x00C0
	#align4

loc_8c19E104:
	#data 0x8C347970
loc_8c19E108:
	#data loc_8c19CD7A
loc_8c19e10c:
	#data 0x8C34797A
loc_8c19E110:
	#data bank1b.loc_8c1b25C4
loc_8c19E114:
	#data bank1b.loc_8c1b2764
loc_8c19e118:
	#data 0x8C3479F4
loc_8c19E11C:
	#data bank1b.loc_8c1b3F0C

;==============================================
loc_8c19E120:
	mov.l @r14,r2
	mov r12,r0
	nop
	mov.b @(0x1,r0),r0
	mov.w @(0x102,PC),r1
	tst 0x10,r0
	mov.l @(0x110,PC),r3
	movt r0
	add 0xFF,r0
	neg r0,r0
	jsr @r3
	add 0x54,r2
	mov.l @(0x108,PC),r2
	jsr @r2
	mov 0x00,r4
	mov.l @r14,r3
	add 0x38,r3
	mov.b @r3,r0
	and 0xDF,r0
	mov.b r0,@r3
	mov.l @(0xFC,PC),r1
	mov.l @r1,r2
	tst r2,r2
	bf loc_8c19e154

loc_8c19E150:
	bra loc_8c19E1E4
	mov 0x05,r0

loc_8c19E154:
	mov.l @(0xF4,PC),r3
	jsr @r3
	nop
	mov.l @(0xF4,PC),r2
	jsr @r2
	nop
	mov.l @(0xF4,PC),r2
	mov.l @(0xF0,PC),r3
	mov.l @(0xF4,PC),r1
	mov.b @r2,r5
	mov.b @r3,r6
	bsr loc_8c19e878
	mov.b @r1,r4
	mov.l @r14,r2
	mov 0x48,r0
	mov.b @(r0,r2),r3
	extu.b r3,r3
	and r13,r3
	cmp/eq r13,r3
	bt loc_8c19e19c
	mov.l @r14,r0
	mov 0x48,r1
	mov.w @(0xAC,PC),r3
	mov.b @(r0,r1),r0
	extu.b r0,r0
	and 0xF0,r0
	cmp/eq r3,r0
	bt loc_8c19e19c
	mov.l @r14,r0
	mov 0x48,r2
	mov.w @(0x9E,PC),r3
	mov.b @(r0,r2),r0
	extu.b r0,r0
	and 0xF0,r0
	cmp/eq r3,r0
	bf loc_8c19e1bc

loc_8c19E19C:
	mov.w @(0x94,PC),r4
	bsr loc_8c19e1f8
	mov 0x01,r5
	mov 0x01,r6
	mov.b r0,@r15
	mov.w @(0x8C,PC),r4
	bsr loc_8c19e30c
	extu.b r0,r5
	mov.w @(0x88,PC),r4
	bsr loc_8c19e1f8
	mov 0x01,r5
	mov 0x01,r6
	mov.b r0,@r15
	mov.w @(0x80,PC),r4
	bsr loc_8c19e30c
	extu.b r0,r5

loc_8c19E1BC:
	mov.l @r14,r2
	mov 0x48,r0
	mov.b @(r0,r2),r3
	extu.b r3,r3
	and r13,r3
	cmp/eq r13,r3
	bf loc_8c19e1e2
	mov.l @(0x94,PC),r0
	mov.b @r0,r0
	tst 0x20,r0
	bf loc_8c19e1e2
	mov.l @(0x90,PC),r4
	mov.w @(0x64,PC),r5
	jsr @r10
	nop
	mov.l @(0x8C,PC),r2
	mov.b @r2,r0
	or 0x20,r0
	mov.b r0,@r2

loc_8c19E1E2:
	mov 0x04,r0

loc_8c19E1E4:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c19E1F4:
	rts
	nop

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19E22e:
	#data 0x0701
loc_8c19E230:
	#data 0x0090
loc_8c19E232:
	#data 0x00C0
loc_8c19E234:
	#data 0x0600
loc_8c19E236:
	#data 0x0459
loc_8c19E238:
	#data 0x0601
loc_8c19E23a:
	#data 0x045B
loc_8c19E23c:
	#data 0x012C
	#align4

loc_8c19E240:
	#data bank13.loc_8c130ECC
loc_8c19E244:
	#data loc_8c19C588
loc_8c19E248:
	#data 0x8C3479EC
loc_8c19E24C:
	#data loc_8c19B468
loc_8c19E250:
	#data bank1b.loc_8c1b2856
loc_8c19E254:
	#data 0x8C3479DF
loc_8c19E258:
	#data 0x8C3479DE
loc_8c19E25c:
	#data 0x8C3479DD
loc_8c19E260:
	#data 0x8C34797A
loc_8c19E264:
	#data 0x8C347A10
loc_8c19E268:
	#data 0x8C34797C
loc_8c19E26C:
	#data bank1a.loc_8c1a00E8
loc_8c19E270:
	#data 0x8C347970

;==============================================
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

loc_8c19e2aa:
	mov.l @(loc_8c19e364,pc),r13
	mov.l @(loc_8c19e36c,pc),r12
	jsr @r12
	mov.l @r13,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c19e2c4
	mov.w @(loc_8C19E35C,pc),r14
	mov.l @(loc_8c19e370,pc),r13
	jsr @r13
	mov r14,r4

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

loc_8c19e2ee:
	mov 0x64,r0
	mov.b @(r0,r4),r0
	mov 0x60,r3
	extu.b r0,r0
	add r4,r3
	shll8 r0
	mov.b @r3,r3
	extu.b r3,r3
	or r3,r0

loc_8c19E300:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19E35A:
	#data 0x0404
loc_8c19e35c:
	#data 0x0514
	#align4

loc_8c19E360:
	#data bank13.loc_8c130ECC
loc_8c19E364:
	#data 0x8C347A18
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

;==============================================
loc_8c19e37c:
	mov r4,r3
	add 0x74,r3
	mov.b @r3,r0
	and 0xBF,r0
	mov.b r0,@r3

loc_8c19e386:
	mov.l @r14,r3
	add 0x74,r3
	mov.b @r3,r0
	or 0x20,r0
	mov.b r0,@r3
	mov.w @(0x04,r15),r0
	mov.l @r14,r2
	mov r0,r3
	mov 0x70,r0
	mov.b r3,@(r0,r2)
	mov.b @r15,r3
	mov 0x60,r0
	mov.l @r14,r2
	mov.b r3,@(r0,r2)
	mov.b @(0x08,r15),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c19e3b6
	mov.w @r15,r3
	mov 0x64,r0
	mov.l @r14,r2
	extu.w r3,r3
	shlr8 r3
	mov.b r3,@(r0,r2)

loc_8c19e3b6:
	mov.l @r14,r3
	add 0x74,r3
	mov.b @r3,r0
	or 0x80,r0
	mov.b r0,@r3
	mov.l @(loc_8c19e4a0,pc),r2
	mov.l @(loc_8C19E49C,pc),r4
	jsr @r2
	mov 0x32,r5
	mov.l @(loc_8C19E49C,pc),r12
	mov.w @(loc_8C19E49A,pc),r13
	mov.l @(loc_8c19e4a4,pc),r10
	mov.l @(loc_8c19e4a8,pc),r11
	bra loc_8c19e3e6
	nop

loc_8c19e3d4:
	jsr @r11
	mov.l @r12,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c19e3e6
	jsr @r10
	mov r13,r4
	bra loc_8c19e406
	nop

loc_8c19e3e6:
	mov.l @r14,r0
	add 0x74,r0
	mov.b @r0,r0
	tst 0x80,r0
	bf loc_8c19e3d4
	mov.l @r14,r3
	add 0x74,r3
	mov.b @r3,r0
	and 0xDF,r0
	mov.b r0,@r3
	mov.l @r14,r2
	mov r2,r3
	add 0x74,r3
	mov.b @r3,r0
	and 0xBF,r0
	mov.b r0,@r3

loc_8c19E406:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
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

;==============================================
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

;==============================================
loc_8c19E444:
	mov.l @(loc_8c19E4AC,pc),r3 ; r3 set to 0x8C3479B2
	mov 0x00,r4 ; r4 set to 0x00
	mov.b r4,@r3 ; r3 ??
	mov.l @(loc_8c19E4B0,pc),r2 ; r2 set to 0x8C3479B3
	rts
	mov.b r4,@r2

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19e49a:
	#data 0x051E
	#align4

loc_8c19e49c:
	#data 0x8C347A18
loc_8c19E4A0:
	#data bank1b.loc_8c1b3EEC
loc_8c19E4A4:
	#data bank1a.loc_8c1a003E
loc_8c19E4A8:
	#data bank1b.loc_8c1b3F0C
loc_8c19E4AC:
	#data 0x8C3479B2
loc_8c19E4B0:
	#data 0x8C3479B3

;==============================================
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

loc_8c19E58C:
	jsr @r12
	mov.l @r15,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c19e59e
	jsr @r11
	mov r13,r4
	bra loc_8c19e5b0
	nop

loc_8c19e59e:
	mov.l @r14,r2
	mov r2,r0
	nop
	add 0x7C,r0
	mov.b @r0,r0
	and 0x01,r0
	extu.b r0,r0
	tst r0,r0
	bf loc_8c19e58c

loc_8c19e5b0:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c19e5be:
	#data 0x0BA0
loc_8c19e5c0:
	#data 0x0AA0
loc_8c19e5c2:
	#data 0x0AB8
loc_8c19e5c4:
	#data 0x0BB8
loc_8c19e5c6:
	#data 0x0702
loc_8c19e5c8:
	#data 0x0701
loc_8c19e5ca:
	#data 0x0532
	#align4

loc_8c19e5cc:
	#data 0x0000FFFE
loc_8c19e5d0:
	#data 0x8C347970
loc_8c19e5d4:
	#data bank1b.loc_8C1B3EEC
loc_8c19e5d8:
	#data bank1a.loc_8C1A003E
loc_8c19e5dc:
	#data bank1b.loc_8C1B3F0C

;==============================================
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

loc_8c19e636:
	mov.l @(loc_8c19e6c4,pc),r3
	jsr @r3
	mov 0x00,r4

loc_8c19e63c:
	mov.l @(loc_8C19E6C8,pc),r0
	mov.b @r0,r0
	tst 0x08,r0
	bt loc_8c19e670
	mov.l @(loc_8c19e6bc,pc),r3
	mov.l @(loc_8C19E6CC,pc),r1
	jsr @r3
	mov.l @r1,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c19e670
	mov.l @r14,r3
	add 0x1C,r3
	mov.b @r3,r0
	and 0xFE,r0
	mov.b r0,@r3
	mov.l @(loc_8C19E6C8,pc),r2
	mov.b @r2,r0
	and 0xF7,r0
	mov.b r0,@r2
	mov.l @r14,r2
	mov r2,r3
	add 0x78,r3
	mov.b @r3,r0
	or 0x20,r0
	mov.b r0,@r3

loc_8c19e670:
	mov.l @(loc_8C19E6D0,pc),r0
	mov.b @r0,r0
	tst 0x20,r0
	bt loc_8c19e696
	mov.l @(loc_8c19e6bc,pc),r3
	mov.l @(loc_8C19E6D4,pc),r1
	jsr @r3
	mov.l @r1,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c19e696
	mov.w @(loc_8C19E6AE,pc),r4
	mov 0x02,r6
	bsr loc_8c19e30c
	mov 0x00,r5
	mov.l @(loc_8C19E6D0,pc),r2
	mov.b @r2,r0
	and 0xDF,r0
	mov.b r0,@r2

loc_8c19e696:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
;unused?
loc_8c19e69c:
	sts.l pr,@-r15
	bsr loc_8c19e6dc
	nop
	mov.l @(0x1C,PC),r2
	mov 0x0A,r5
	mov.l @(0x30,PC),r4
	jmp @r2
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19e6ac:
	#data 0x0081
loc_8C19E6AE:
	#data 0x0B11
	#align4

loc_8c19e6b0:
	#data 0x8C347970
loc_8c19e6b4:
	#data 0x8C3479CE
loc_8c19e6b8:
	#data 0x8C3479D8
loc_8c19e6bc:
	#data bank1b.loc_8c1b3f0c
loc_8c19e6c0:
	#data bank1b.loc_8C1B3EEC
loc_8c19e6c4:
	#data loc_8c19fe4a
loc_8C19E6C8:
	#data 0x8C347976
loc_8C19E6CC:
	#data 0x8C3479E0
loc_8C19E6D0:
	#data 0x8C34797C
loc_8C19E6D4:
	#data 0x8C347A10
loc_8C19E6D8:
	#data 0x8C3479A8

;==============================================
loc_8C19E6Dc:
	mov.l r14,@-r15
	mov.l @(0x110,PC),r3
	sts.l pr,@-r15
	mov.l @r3,r2
	mov.b @(0x8,r2),r0
	or 0x40,r0
	mov.b r0,@(0x8,r2)
	mov 0x00,r14
	mov.l r14,@-r15
	mov r14,r6
	mov.l r14,@-r15
	mov.w @(0xDC,PC),r7
	mov.w @(0xDC,PC),r4
	bsr loc_8c19e450
	mov r14,r5
	mov.l r14,@-r15
	mov r14,r6
	mov.l r14,@-r15
	mov.w @(0xCE,PC),r7
	mov.w @(0xD0,PC),r4
	bsr loc_8c19e450
	mov r14,r5
	mov.w @(0xCC,PC),r2
	mov.l r2,@-r15
	mov.l @(0xE8,PC),r6
	mov.w @(0xCA,PC),r5
	mov.w @(0xCA,PC),r4
	mov.l @(0xE0,PC),r3
	mov.w @(0xC2,PC),r7
	bsr loc_8c19e450
	mov.l r3,@-r15
	mov.w @(0xC2,PC),r3
	mov.l r3,@-r15
	mov.w @(loc_8c19e7e2,PC),r6
	mov.w @(loc_8c19e7dc,PC),r5
	mov.w @(loc_8c19e7e4,PC),r4
	mov.l @(loc_8c19e7f4,PC),r2
	mov.w @(loc_8c19e7da,PC),r7
	bsr loc_8c19e450
	mov.l r2,@-r15
	mov.w @(loc_8c19e7e6,PC),r3
	mov.l r3,@-r15
	mov.w @(loc_8c19e7ea,PC),r6
	mov.w @(loc_8c19e7ec,PC),r5
	mov.w @(loc_8c19e7e8,PC),r7
	bsr loc_8c19e4b4
	mov 0x02,r4
	add 0x24,r15
	mov.l @(loc_8c19e7fc,PC),r2
	lds.l @r15+,pr
	mov 0x01,r3
	mov.b r3,@r2
	mov.l @(0xB8,PC),r1
	mov.b r14,@r1
	rts
	mov.l @r15+,r14

;==============================================
loc_8c19e74c:
	mov.l @(0xA0,PC),r3
	sts.l pr,@-r15
	mov.l @r3,r0
	add 0x2C,r0
	mov.b @r0,r0
	tst 0x20,r0
	bt loc_8c19e76e
	mov.l @(0xAC,PC),r2
	mov.l @(0xA4,PC),r0
	jsr @r2
	mov.l @r0,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c19e776
	lds.l @r15+,pr
	rts
	mov 0x01,r0

loc_8c19e76e:
	mov.l @(0x9C,PC),r1
	mov.l @(0x90,PC),r4
	jsr @r1
	mov 0x0A,r5

loc_8c19e776:
	mov 0x00,r0
	lds.l @r15+,pr
	rts
	nop


;==============================================
loc_8c19e77e:
	mov.l @(0x70,PC),r3
	mov.l @r3,r0
	add 0x28,r0
	mov.b @r0,r0
	tst 0x40,r0
	movt r0
	add 0xFF,r0
	rts
	neg r0,r0

;==============================================
loc_8c19e790:
	mov.l @(0x5C,PC),r3
	sts.l pr,@-r15
	mov.l @r3,r4
	mov r4,r0
	nop
	add 0x24,r0
	mov.b @r0,r0
	tst 0x10,r0
	movt r0
	add 0xFF,r0
	neg r0,r0
	cmp/eq 0x01,r0
	bf loc_8c19e814
	mov r4,r0
	nop
	add 0x3C,r0
	mov.b @r0,r0
	tst 0x10,r0
	bt loc_8c19e866
	mov r4,r0
	nop
	add 0x3C,r0
	mov.b @r0,r0
	tst 0x20,r0
	bt loc_8c19e866
	mov.l @(0x4C,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c19e860
	bsr loc_8c19e520
	nop
	bra loc_8c19e860
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19e7d2:
	#data 0x7FFF
loc_8c19e7d4:
	#data 0x0AB2
loc_8c19e7d6:
	#data 0x0BB2
loc_8c19e7d8:
	#data 0x10A6
loc_8c19e7da:
	#data 0x0307
loc_8c19e7dc:
	#data 0x0306
loc_8c19e7de:
	#data 0x0AAD
loc_8c19e7e0:
	#data 0x106E
loc_8c19e7e2:
	#data 0x010D
loc_8c19e7e4:
	#data 0x0BAD
loc_8c19e7e6:
	#data 0x1C00
loc_8c19e7e8:
	#data 0x2A00
loc_8c19e7ea:
	#data 0x02DF
loc_8c19e7ec:
	#data 0x7E67
	#align4

loc_8c19e7f0:
	#data 0x8C347970
loc_8c19e7f4:
	#data 0x0000C147
loc_8c19e7f8:
	#data 0x0000F9F9
loc_8c19e7fc:
	#data 0x8C3479B2
loc_8c19e800:
	#data 0x8C3479B3
loc_8c19e804:
	#data 0x8C3479A8
loc_8c19e808:
	#data bank1b.loc_8C1B3F0C
loc_8c19e80c:
	#data bank1b.loc_8C1B3EEC
loc_8c19e810:
	#data 0x8C3479DC

;==============================================
loc_8c19e814:
	mov r4,r0
	nop
	add 0x28,r0
	mov.b @r0,r0
	tst 0x80,r0
	bt loc_8c19e866
	mov r4,r0
	nop
	add 0x3C,r0
	mov.b @r0,r0
	tst 0x80,r0
	bt loc_8c19e866
	mov 0x48,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c19e84a
	mov.w @(0x34,PC),r4
	bsr loc_8c19e1f8
	mov 0x02,r5
	mov.l @(loc_8c19E874,PC),r5
	mov.w @(0x2C,PC),r4
	and r0,r5
	bsr loc_8c19e30c
	mov 0x02,r6
	bra loc_8c19e860
	nop

loc_8c19e84a:
	mov 0x48,r0
	mov.b @(r0,r4),r0
	mov.w @(0x1E,PC),r3
	extu.b r0,r0
	and 0xF0,r0
	cmp/eq r3,r0
	bf loc_8c19e860
	mov.w @(0x16,PC),r4
	mov 0x01,r6
	bsr loc_8c19e30c
	mov 0x14,r5

loc_8c19e860:
	lds.l @r15+,pr
	rts
	mov 0x01,r0

loc_8c19e866:
	mov 0x00,r0
	lds.l @r15+,pr
	rts
	nop


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19E86e:
	#data 0x4803
loc_8c19E870:
	#data 0x00B0
loc_8c19E872:
	#data 0x0270
	#align4

loc_8c19E874:
	#data 0x0000FFEF

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
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
loc_8c19E988:
	#data 0x8C3479DE
loc_8c19E98C:
	#data 0x8C3479DF
loc_8c19E990:
	#data 0x8C347974
loc_8c19E994:
	#data 0x8C347970
loc_8c19E998:
	#data 0x8C3479DC

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
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
loc_8c19EA7C:
	#data bank1a.loc_8c1a003E
loc_8c19EA80:
	#data bank1b.loc_8c1b3F0C

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
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
	#align4

loc_8c19EB68:
	#data loc_8c19C7A0
loc_8c19EB6C:
	#data 0x8C34797C
loc_8c19EB70:
	#data 0x8C347A18
loc_8c19EB74:
	#data bank13.loc_8c130ECC

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
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
loc_8c19ECB4:
	#data bank13.loc_8c130ECC
loc_8c19ECB8:
	#data loc_8c19C7A0

;==============================================
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

loc_8c19ecfe:
	jsr @r12
	mov.l @r10,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c19ed12
	mov r13,r4

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

loc_8c19ed20:
	mov.l @r14,r2
	mov r2,r3
	add 0x18,r3
	mov.b @r3,r0
	and 0xEF,r0
	mov.b r0,@r3

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

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19EDDC:
	#data 0x0701
loc_8c19EDDE:
	#data 0x0564
loc_8c19EDE0:
	#data 0x056E
	#align4

loc_8c19EDE4:
	#data bank13.loc_8c130ECC
loc_8c19EDE8:
	#data 0x8C347A18
loc_8c19EDEC:
	#data loc_8c19F0BA
loc_8c19EDF0:
	#data bank1a.loc_8c1a00CA
loc_8c19EDF4:
	#data 0x8C347970
loc_8c19EDF8:
	#data bank1b.loc_8c1b3EEC
loc_8c19EDFC:
	#data bank1a.loc_8c1a003E
loc_8c19EE00:
	#data bank1b.loc_8c1b3F0C

;==============================================
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
	jsr @r13
	mov.l @r12,r4
	exts.b r0,r0
	tst r0,r0
	bt loc_8c19ee5c

loc_8c19EE54:
	jsr @r11
	mov r10,r4
	bra loc_8c19EE66
	nop

loc_8c19ee5c:
	mov.l @r14,r0
	add 0x3C,r0
	mov.b @r0,r0
	tst 0x20,r0
	bt loc_8c19ee4a

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

;==============================================
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

;==============================================
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

;==============================================
loc_8c19EEC4:
	mov.l @(0x44,PC),r4
	mov r4,r0
	nop
	mov.b @(0x1,r0),r0
	and 0x01,r0
	extu.b r0,r0
	tst r0,r0
	bf loc_8c19eee8
	mov r4,r0
	nop
	mov.b @(0x2,r0),r0
	tst 0x08,r0
	bf loc_8c19eee8
	mov r4,r0
	nop
	mov.b @(0x3,r0),r0
	tst 0x40,r0
	bt loc_8c19eeec

loc_8c19EEE8:
	rts
	mov 0x01,r0

;==============================================
loc_8c19EEEC:
	tst 0x10,r0
	bt loc_8c19ef14
	mov r4,r0
	nop
	mov.b @(0x2,r0),r0
	bra loc_8c19ef22
	tst 0x04,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c19EEFA:
	#data 0x0701
loc_8c19EEFC:
	#data 0x0578
	#align4

loc_8c19EF00:
	#data bank13.loc_8c130ECC
loc_8c19EF04:
	#data 0x8C347A18
loc_8c19EF08:
	#data bank1b.loc_8c1b3EEC
loc_8c19EF0C:
	#data 0x8C347974
loc_8c19EF10:
	#data 0x8C347970

;==============================================
loc_8c19EF14:
	mov.l @(0x118,PC),r3
	mov.l @r3,r2
	mov r2,r0
	nop
	add 0x78,r0
	mov.b @r0,r0
	tst 0x20,r0

loc_8c19EF22:
	movt r4
	add 0xFF,r4
	neg r4,r4
	mov r4,r0
	nop
	rts
	nop

;==============================================
loc_8c19EF30:
	mov.l @(0xFC,PC),r3
	mov.l @r3,r5
	mov r5,r0
	nop
	add 0x30,r0
	mov.b @r0,r0
	tst 0x02,r0
	bf loc_8c19ef50
	mov r5,r0
	nop
	add 0x78,r0
	mov.b @r0,r0
	and 0x01,r0
	extu.b r0,r0
	tst r0,r0
	bt loc_8c19ef58

loc_8c19EF50:
	mov.b @r5,r3
	mov.b r3,@r4
	rts
	mov 0x01,r0

;==============================================
loc_8c19EF58:
	mov 0x00,r0
	rts
	nop

;==============================================
loc_8c19EF5E:
	mov.l @(loc_8c19F034,pc),r0 ; r0 set to 0x8C347977
	mov.b @r0,r0 ; r0 ??
	tst 0x08,r0
	bt loc_8c19EF6A
	rts
	mov 0x00,r0

;==============================================
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

;==============================================
loc_8c19EF9A:
	mov.l @(loc_8c19F030,pc),r2 ; r2 set to 0x8C347970
	mov 0x40,r0 ; r0 set to 0x40
	mov.l @r2,r3
	rts
	mov.b r4,@(r0,r3)

;==============================================
loc_8c19EFA4:
	rts
	nop

;==============================================
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

;==============================================
loc_8c19EFE4:
	lds.l @r15+,pr
	rts
	mov 0x30,r0

;==============================================
loc_8c19EFEA:
	lds.l @r15+,pr
	rts
	mov 0x18,r0

;==============================================
loc_8c19EFF0:
	lds.l @r15+,pr
	rts
	mov 0x10,r0

;==============================================
loc_8c19EFF6:
	lds.l @r15+,pr
	rts
	mov 0x0C,r0

;==============================================
loc_8c19EFFC:
	lds.l @r15+,pr
	rts
	mov 0x0A,r0

;==============================================
loc_8c19F002:
	lds.l @r15+,pr
	rts
	mov 0x08,r0

;==============================================
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c19F030:
	#data 0x8C347970
loc_8c19F034:
	#data 0x8C347977
loc_8c19F038:
	#data 0x8C3479DC

;==============================================
loc_8c19F03C:
lds.l @r15+,pr
mov.w @(loc_8c19F168,pc),r0 ; r0 set to 0xAB
rts
nop
;==============================================

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
;==============================================

loc_8c19F056:
lds.l @r15+,pr
rts
mov 0x04,r0
;==============================================

loc_8c19F05C:
lds.l @r15+,pr
rts
mov 0x0B,r0
;==============================================

loc_8c19F062:
lds.l @r15+,pr
rts
mov 0x06,r0
;==============================================

loc_8c19F068:
lds.l @r15+,pr
rts
mov 0x03,r0
;==============================================

loc_8c19F06E:
lds.l @r15+,pr
rts
mov 0x02,r0
;==============================================

loc_8c19F074:
mov 0x01,r0 ; r0 set to 0x01
lds.l @r15+,pr
rts
nop
;==============================================
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
;==============================================
#data 0x000BE001
#data 0x0009
;==============================================

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

loc_8c19f188:
mov.l @r14,r4
mov r4,r0
nop
add 0x78,r0
mov.b @r0,r0
and 0x01,r0
extu.b r0,r0
tst r0,r0
bf loc_8c19f142
mov.l @(loc_8C19F2A0,pc),r0
mov.b @r0,r0
tst 0x04,r0
bt loc_8c19f1ae
mov r4,r0
nop
add 0x78,r0
mov.b @r0,r0
tst 0x08,r0
bf loc_8c19f142

loc_8c19f1ae:
mov.l @(loc_8C19F2A0,pc),r0
mov.b @r0,r0
and 0x01,r0
extu.b r0,r0
tst r0,r0
bt loc_8c19f1c6
mov r4,r0
nop
add 0x7C,r0
mov.b @r0,r0
tst 0x08,r0
bf loc_8c19f142

loc_8c19f1c6:
mov r13,r0
nop
mov.b @(0x02,r0),r0
mov r4,r2
mov.w @(loc_8C19F28A,pc),r1
tst 0x04,r0
mov.l @(loc_8c19f2a4,pc),r3
movt r0
add 0xFF,r0
neg r0,r0
jsr @r3
add 0x78,r2
mov.l @r14,r2
mov r13,r0
nop
mov.b @(0x02,r0),r0
mov.w @(loc_8C19F28C,pc),r1
mov.l @(loc_8c19f2a4,pc),r3
and 0x01,r0
jsr @r3
add 0x7C,r2
mov.l @r14,r2
mov r13,r0
nop
mov.b @(0x02,r0),r0
mov.w @(loc_8C19F28E,pc),r1
tst 0x02,r0
mov.l @(loc_8c19f2a4,pc),r3
movt r0
add 0xFF,r0
neg r0,r0
jsr @r3
add 0x78,r2
mov.b @(0x03,r13),r0
and 0xEF,r0
mov.b r0,@(0x03,r13)

loc_8c19F20E:
lds.l @r15+,pr
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

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
#data 0x0009
loc_8c19f28a:
#data 0x0201
loc_8c19f28c:
#data 0x0301
loc_8c19f28e:
#data 0x0501
#data 0x00CE00C1
#data 0x009D0091
#data 0x00C000E0
#data 0x000000C8
loc_8c19f2a0:
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
;==============================================

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
;==============================================

loc_8c19F326:
mov 0x01,r0 ; r0 set to 0x01
lds.l @r15+,pr
rts
nop
;==============================================

loc_8c19F32E:
sts.l pr,@-r15
mov.l @(loc_8c19F398,pc),r3 ; r3 set to 0x8C19E1F8
jsr @r3
mov 0x02,r5 ; r5 set to 0x02
lds.l @r15+,pr
rts
extu.w r0,r0
;==============================================

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
;==============================================

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

loc_8c19f43a:
mov 0x0D,r4

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
;==============================================

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
;==============================================
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
;==============================================
#data 0xD3094F22
#data 0x430B9407
#data 0x4F26E501
#data 0x0009000B
;==============================================
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
;==============================================

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
;==============================================

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
;==============================================

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
;==============================================

loc_8c19fd02:
mov.l r14,@-r15
mov 0x48,r0
mov.l @(loc_8C19FD54,pc),r3
mov.w @(loc_8C19FD4C,pc),r4
mov.l @r3,r14
mov.b @(r0,r14),r2
mov.w @(loc_8C19FD4E,pc),r1
extu.b r2,r2
and r4,r2
cmp/eq r1,r2
bt loc_8c19fd30
mov.b @(r0,r14),r2
mov.w @(loc_8C19FD50,pc),r3
extu.b r2,r2
and r4,r2
cmp/eq r3,r2
bt loc_8c19fd30
mov.b @(r0,r14),r0
mov.w @(loc_8C19FD52,pc),r2
extu.b r0,r0
and 0xE0,r0
cmp/eq r2,r0
bf loc_8c19fd3c

loc_8c19fd30:
mov r14,r0
nop
add 0x38,r0
mov.b @r0,r0
bra loc_8c19fd46
and 0x1F,r0

loc_8c19fd3c:
mov r14,r0
nop
add 0x38,r0
mov.b @r0,r0
and 0x0F,r0

loc_8c19fd46:
mov r0,r4
bra loc_8c19fc3a
mov.l @r15+,r14

loc_8C19FD4C:
#data 0x00F0

loc_8C19FD4E:
#data 0x0090

loc_8C19FD50:
#data 0x00C0

loc_8C19FD52:
#data 0x00E0

loc_8C19FD54:
#data 0x7970
#data 0x8C34

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

loc_8c19fdb6:
mov 0x48,r0
mov.b @(r0,r14),r2
mov.w @(loc_8C19FE26,pc),r3
extu.b r2,r2
and r4,r2
cmp/eq r3,r2
bt loc_8c19fdd4
mov.l @(loc_8c19fe2c,pc),r0
mov.b @r0,r0
tst 0x40,r0
bf loc_8c19fdd4
mov.l @(loc_8c19fe2c,pc),r0
mov.b @r0,r0
tst 0x20,r0
bt loc_8c19fde6

loc_8c19fdd4:
mov.l @(loc_8c19fe30,pc),r3
mov 0x01,r5
jsr @r3
mov r13,r4
lds.l @r15+,pr
mov r0,r4
mov.l @r15+,r13
bra loc_8c19fbcc
mov.l @r15+,r14

loc_8c19fde6:
mov r14,r0
nop
add 0x38,r0
mov.b @r0,r0
lds.l @r15+,pr
and 0x0F,r0
mov r0,r4
mov.l @r15+,r13
bra loc_8c19fc3a
mov.l @r15+,r14

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
;==============================================

loc_8c19FE16:
mov 0x01,r0 ; r0 set to 0x01
lds.l @r15+,pr
rts
nop
;==============================================

loc_8c19FE1E:
#data 0x00E0

loc_8c19FE20:
#data 0x02E4

loc_8c19FE22:
#data 0x00F0

loc_8c19FE24:
#data 0x0090
loc_8c19fe26:
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
;==============================================
#data 0x432BD330
#data 0x0009


loc_8c19FE46:
rts
nop
;==============================================

loc_8c19FE4A:
rts
nop
;==============================================

loc_8c19FE4E:
rts
nop
;==============================================
#data 0x644C
#data 0x2448000B
;==============================================

loc_8c19FE58:
rts
nop
;==============================================

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
;==============================================

loc_8c19FEB4:
rts
nop
;==============================================

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
;==============================================
#data 0x000B
#data 0x0009
;==============================================

loc_8c19FED2:
rts
mov 0x01,r0
;==============================================

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
;==============================================

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
