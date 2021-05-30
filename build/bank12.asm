loc_8C120220:
	frchg 
	fmov @r4+,fr0
	fmov @r4+,fr1
	fmov @r4+,fr2
	fmov @r4+,fr3
	fmov @r4+,fr4
	fmov @r4+,fr5
	fmov @r4+,fr6
	fmov @r4+,fr7
	fmov @r4+,fr8
	fmov @r4+,fr9
	fmov @r4+,fr10
	fmov @r4+,fr11
	fmov @r4+,fr12
	fmov @r4+,fr13
	fmov @r4+,fr14
	fmov @r4+,fr15
	rts 
	frchg 

	nop

;unused
	rts
	nop

;==============================================
	nop
	nop

;==============================================
loc_8C120250:
	tst r4,r4
	bf loc_8c120258
	mov.l @(0x4,PC),r4
	mov.l @(0x8,r4),r4

loc_8C120258:
	bra loc_8c120260
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c12025c:
	#data 0x8C2D68E8

;==============================================
loc_8C120260:
	fschg 
	fmov @r4+,fr1
	fmov @r4+,fr3
	fmov @r4+,fr5
	fmov @r4+,fr7
	fmov @r4+,fr9
	fmov @r4+,fr11
	fmov @r4+,fr13
	fmov @r4+,fr15
	fschg 
	rts 
	nop 

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C120280:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xE4,r15
	tst r4,r4
	mov r5,r13
	bf.s loc_8c1202a4
	mov.l r4,@(0x8,r15)
	mov.l @(0x23C,PC),r2
	jsr @r2
	mov 0x00,r4
	mov r0,r4

loc_8C1202A4:
	fldi0 fr6
	mov 0x00,r14
	mov 0x04,r6
	fmov fr6,fr15
	fldi1 fr7
	bra loc_8c120306
	mov r14,r7

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C1202C0:
	mov r7,r0
	mov r0,r12
	shll2 r12
	mov r14,r5
	mov.b r0,@(r0,r13)
	fmov fr6,fr4
	bra loc_8c1202e6
	shll2 r12

loc_8C1202D0:
	mov r5,r3
	mov r4,r0
	shll2 r3
	add r12,r0
	fmov @(r0,r3),fr3
	fabs fr3
	fmov fr3,fr5
	fcmp/gt fr4,fr5
	bf.s loc_8c1202e6
	add 0x01,r5
	fmov fr5,fr4

loc_8C1202E6:
	cmp/ge r6,r5
	bf loc_8c1202d0
	fldi0 fr3
	fcmp/eq fr3,fr4
	bf loc_8c1202f4
	bra loc_8c1203e0
	nop 

loc_8C1202F4:
	fmov fr7,fr3
	fdiv fr4,fr3
	mov r15,r2
	mov r7,r3
	shll2 r3
	add 0x0C,r2
	add r2,r3
	add 0x01,r7
	fmov fr3,@r3

loc_8C120306:
	cmp/ge r6,r7
	bf loc_8c1202c0
	fldi1 fr6
	mov r13,r3
	fmov fr7,fr15
	add 0x04,r3
	mov r14,r7
	fneg fr6
	bra loc_8c1203d0
	mov.l r3,@(0x4,r15)

;==============================================
	nop
	nop
	nop

;==============================================
loc_8C120320:
	mov r7,r14
	cmp/ge r6,r14
	mov r7,r12
	fmov fr6,fr5
	bt.s loc_8c12035c
	shll2 r12

loc_8C12032C:
	mov r14,r0
	mov.b @(r0,r13),r11
	mov r4,r3
	mov r15,r2
	mov r11,r0
	shll2 r0
	shll2 r0
	add r3,r0
	mov r11,r3
	add 0x0C,r2
	fmov @(r0,r12),fr3
	shll2 r3
	add r2,r3
	fabs fr3
	fmov @r3,fr2
	fmov fr3,fr4
	fmul fr2,fr4
	fcmp/gt fr5,fr4
	bf loc_8c120356
	mov r14,r5
	fmov fr4,fr5

loc_8C120356:
	add 0x01,r14
	cmp/ge r6,r14
	bf loc_8c12032c

loc_8C12035C:
	mov r5,r10
	cmp/eq r7,r5
	add r13,r10
	bt.s loc_8c120372
	mov.b @r10,r14
	mov r7,r11
	add r13,r11
	mov.b @r11,r2
	fneg fr15
	mov.b r2,@r10
	mov.b r14,@r11

loc_8C120372:
	mov r14,r9
	shll2 r9
	mov r4,r0
	shll2 r9
	add r9,r0
	fldi0 fr3
	fmov @(r0,r12),fr4
	fcmp/eq fr3,fr4
	bt.s loc_8c1203e0
	fmul fr4,fr15
	mov r7,r11
	add 0x01,r11
	mov r11,r8
	bra loc_8c1203c8
	add r13,r8

loc_8C120390:
	mov.b @r8+,r14
	mov r4,r0
	mov r11,r5
	cmp/ge r6,r5
	shll2 r14
	shll2 r14
	add r14,r0
	fmov @(r0,r12),fr5
	fdiv fr4,fr5
	bt.s loc_8c1203c8
	fmov fr5,@(r0,r12)

loc_8C1203A6:
	mov r5,r10
	shll2 r10
	fmov fr5,fr2
	mov r4,r0
	mov.l r0,@r15
	add r14,r0
	mov.l @r15,r3
	add 0x01,r5
	cmp/ge r6,r5
	add r9,r3
	add r10,r3
	fmov @r3,fr3
	fmul fr3,fr2
	fmov @(r0,r10),fr3
	fsub fr2,fr3
	bf.s loc_8c1203a6
	fmov fr3,@(r0,r10)

loc_8C1203C8:
	mov.l @(0x4,r15),r2
	cmp/hs r2,r8
	bf loc_8c120390
	add 0x01,r7

loc_8C1203D0:
	cmp/ge r6,r7
	bf loc_8c120320
	mov.l @(0x8,r15),r3
	tst r3,r3
	bf loc_8c1203e0
	mov.l @(0x104,PC),r3
	jsr @r3
	nop 

loc_8C1203E0:
	fmov fr15,fr0
	add 0x1C,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c120400:
	mov.l r14,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xC0,r15
	mov 0x0C,r0
	mov r4,r14
	fmov @(r0,r14),fr5
	mov 0x10,r0
	fldi1 fr4
	fadd fr4,fr4
	fmov fr5,fr3
	fmul fr5,fr3
	fldi1 fr15
	mov r15,r4
	fmul fr4,fr3
	fneg fr3
	fadd fr15,fr3
	fmov fr3,@r15
	fmov @(r0,r14),fr5
	mov 0x14,r0
	fmov fr5,fr3
	fmul fr5,fr3
	fmul fr4,fr3
	fneg fr3
	fadd fr15,fr3
	fmov fr3,@(r0,r15)
	mov 0x14,r0
	fmov @(r0,r14),fr5
	mov 0x28,r0
	fmov fr5,fr3
	fmul fr5,fr3
	fmul fr4,fr3
	fneg fr3
	fadd fr15,fr3
	fmov fr3,@(r0,r15)
	mov 0x10,r0
	fmov @(r0,r14),fr3
	mov 0x0C,r0
	fmov @(r0,r14),fr2
	mov 0x10,r0
	fmul fr3,fr2
	fmul fr4,fr2
	fneg fr2
	fmov fr2,@(r0,r4)
	mov 0x04,r0
	fmov fr2,@(r0,r4)
	mov 0x14,r0
	fmov @(r0,r14),fr3
	mov 0x0C,r0
	fmov @(r0,r14),fr2
	mov 0x20,r0
	mov r15,r4
	fmul fr3,fr2
	fmul fr4,fr2
	fneg fr2
	fmov fr2,@(r0,r4)
	mov 0x08,r0
	fmov fr2,@(r0,r4)
	mov 0x14,r0
	fmov @(r0,r14),fr3
	mov 0x10,r0
	fmov @(r0,r14),fr2
	mov 0x24,r0
	mov r15,r4
	fmul fr3,fr2
	fmul fr4,fr2
	fneg fr2
	fmov fr2,@(r0,r4)
	mov r14,r5
	mov.l @(0x58,PC),r3
	mov 0x18,r0
	add 0x0C,r5
	fmov fr2,@(r0,r4)
	jsr @r3
	mov r14,r4
	fmov fr0,fr4
	fadd fr4,fr4
	mov 0x0C,r0
	fmov @(r0,r14),fr3
	mov 0x30,r0
	fmov fr4,fr2
	fmul fr3,fr2
	fmov fr2,@(r0,r15)
	mov 0x10,r0
	fmov @(r0,r14),fr3
	mov 0x34,r0
	fmov fr4,fr2
	fmul fr3,fr2
	fmov fr2,@(r0,r15)
	mov 0x14,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmul fr3,fr4
	fmov fr4,@(r0,r15)
	mov 0x0C,r0
	fldi0 fr4
	fmov fr4,@(r0,r15)
	mov 0x1C,r0
	fmov fr4,@(r0,r15)
	mov 0x2C,r0
	fmov fr4,@(r0,r15)
	mov 0x3C,r0
	fmov fr15,@(r0,r15)
	bsr loc_8c120540
	mov r15,r4
	add 0x40,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C1204DC:
	#data bank11.loc_8c11FA80
loc_8C1204E0:
	#data bank11.loc_8c1201E0
loc_8C1204E4:
	#data loc_8c1211C0

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C1204F0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C120580,pc),r3 ; r3 set to 0x8C11FA80
	mov.l r4,@-r15
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @(loc_8C120588,pc),r4 ; r4 set to 0x8C2D68E4
	mov.l @(loc_8C120584,pc),r5 ; r5 set to 0x8C2D68E8
	mov.b @r4,r1
	mov r5,r2 ; r2 set to 0x8C2D68E8
	mov r5,r14 ; r14 set to 0x8C2D68E8
	mov r1,r3 ; r3 ??? bc r1 is ???
	shll r1
	add r3,r1
	mov.l @(loc_8C12058C,pc),r3 ; r3 set to 0x8C1294C8
	shll2 r1
	add r5,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @r15,r2 ; r2 ??? bc r15 is ???
	mov r14,r1 ; r1 set to 0x8C2D68E8
	mov.b r2,@r4 ; r4 ??? bc r2 is ???
	mov.b @r4,r2
	mov r2,r3 ; r3 ??? bc r2 is ???
	shll r2
	add r3,r2
	mov.l @(loc_8C12058C,pc),r3 ; r3 set to 0x8C1294C8
	shll2 r2
	add r5,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x08,r14),r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C120590,pc),r2 ; r2 set to 0x8C1201E0
	jmp @r2
	mov.l @r15+,r14

;==============================================
	nop
	nop
	nop

;==============================================
loc_8C120540:
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	fmov.s fr13,@-r15
	flds fr12,fpul
	fmov.s @r4+,fr0
	fmov.s @r4+,fr1
	fmov.s @r4+,fr2
	fmov.s @r4+,fr3
	fmov.s @r4+,fr4
	fmov.s @r4+,fr5
	fmov.s @r4+,fr6
	ftrv xmtrx,fv0
	fmov.s @r4+,fr7
	fmov.s @r4+,fr8
	fmov.s @r4+,fr9
	fmov.s @r4+,fr10
	ftrv xmtrx,fv4
	fmov.s @r4+,fr11
	fmov.s @r4+,fr12
	fmov.s @r4+,fr13
	fmov.s @r4+,fr14
	ftrv xmtrx,fv8
	fmov.s @r4+,fr15
	ftrv xmtrx,fv12
	frchg
	fsts fpul,fr12
	fmov.s @r15+,fr13
	fmov.s @r15+,fr14
	rts
	fmov.s @r15+,fr15

;==============================================
loc_8C12057C:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C120580:
	#data bank11.loc_8c11FA80
loc_8C120584:
	#data 0x8C2D68E8
loc_8C120588:
	#data 0x8C2D68E4
loc_8C12058C:
	#data loc_8c1294C8
loc_8C120590:
	#data bank11.loc_8c1201E0

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C1205A0:
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	fmov.s fr13,@-r15
	fmov.s fr12,@-r15
	fschg
	fmov.s @r4+,fr0
	fmov.s @r4+,fr2
	fmov.s @r4+,fr4
	fmov.s @r4+,fr6
	ftrv xmtrx,fv0
	fmov.s @r4+,fr8
	fmov.s @r4+,fr10
	ftrv xmtrx,fv4
	fmov.s @r4+,fr12
	fmov.s @r4+,fr14
	ftrv xmtrx,fv8
	ftrv xmtrx,fv12
	fschg
	frchg
	fmov.s @r15+,fr12
	fmov.s @r15+,fr13
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	nop
	rts
	nop

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C1205E0:
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	fmov.s fr13,@-r15
	fmov.s fr12,@-r15
	fschg
	fmov.s @r4+,fr0
	fmov.s @r4+,fr2
	fmov.s @r4+,fr4
	fmov.s @r4+,fr6
	fmov.s @r4+,fr8
	fmov.s @r4+,fr10
	fmov.s @r4+,fr12
	fmov.s @r4+,fr14
	frchg
	fschg
	ftrv xmtrx,fv0
	ftrv xmtrx,fv4
	ftrv xmtrx,fv8
	ftrv xmtrx,fv12
	frchg
	fmov.s @r15+,fr12
	fmov.s @r15+,fr13
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	rts
	nop

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C120620:
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	fmov.s fr13,@-r15
	fmov.s fr12,@-r15
	fmov.s @r4+,fr0
	fmov.s @r4+,fr1
	fmov.s @r4+,fr2
	fmov.s @r4+,fr3
	fmov.s @r4+,fr4
	fmov.s @r4+,fr5
	fmov.s @r4+,fr6
	fmov.s @r4+,fr7
	fmov.s @r4+,fr8
	fmov.s @r4+,fr9
	fmov.s @r4+,fr10
	fmov.s @r4+,fr11
	fmov.s @r4+,fr12
	fmov.s @r4+,fr13
	fmov.s @r4+,fr14
	fmov.s @r4+,fr15
	frchg
	ftrv xmtrx,fv0
	ftrv xmtrx,fv4
	ftrv xmtrx,fv8
	ftrv xmtrx,fv12
	frchg
	fmov.s @r15+,fr12
	fmov.s @r15+,fr13
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	rts
	nop

;==============================================
loc_8C120660:
	mov.l @(loc_8C1208A8,pc),r4 ; r4 set to 0x8C2D68E8
	mov.l @(loc_8C1208AC,pc),r3 ; r3 set to 0x8C1205A0
	mov.l @(0x08,r4),r4 ; r4 ??
	jmp @r3
	add 0xC0,r4

;==============================================
	nop
	nop
	nop

;==============================================
loc_8c120670:
	mov.l @(0x240,PC),r3
	mov.l @(0x23C,PC),r4
	jmp @r3
	mov.l @(0x8,r4),r4

;==============================================
	nop
	nop
	nop
	nop
;==============================================
loc_8c120680:
	sts.l pr,@-r15
	mov.l @(0x234,PC),r3
	mov.l @(0x228,PC),r4
	jsr @r3
	mov.l @(0x8,r4),r4
	bra loc_8c120660
	lds.l @r15+,pr
	nop 
	mov.l @(0x224,PC),r3
	mov.l @(0x21C,PC),r4
	jmp @r3
	mov.l @(0x8,r4),r4

;==============================================
	nop
	nop
	nop
	nop
;==============================================
loc_8c1206a0:
	mov.l r14,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xC0,r15
	mov 0x0C,r0
	mov r4,r14
	fmov @(r0,r14),fr4
	mov 0x10,r0
	fldi1 fr15
	mov r15,r4
	fmov fr4,fr3
	fmul fr4,fr3
	fneg fr3
	fadd fr15,fr3
	fmov fr3,@r15
	fmov @(r0,r14),fr4
	mov 0x14,r0
	fmov fr4,fr3
	fmul fr4,fr3
	fneg fr3
	fadd fr15,fr3
	fmov fr3,@(r0,r15)
	mov 0x14,r0
	fmov @(r0,r14),fr4
	mov 0x28,r0
	fmov fr4,fr3
	fmul fr4,fr3
	fneg fr3
	fadd fr15,fr3
	fmov fr3,@(r0,r15)
	mov 0x10,r0
	fmov @(r0,r14),fr3
	mov 0x0C,r0
	fmov @(r0,r14),fr2
	fmul fr3,fr2
	fneg fr2
	mov 0x10,r0
	mov r14,r5
	fmov fr2,@(r0,r4)
	mov 0x04,r0
	fmov fr2,@(r0,r4)
	mov 0x14,r0
	fmov @(r0,r14),fr3
	mov 0x0C,r0
	fmov @(r0,r14),fr2
	mov 0x20,r0
	mov r15,r4
	mov.l @(0x1BC,PC),r3
	fmul fr3,fr2
	add 0x0C,r5
	fneg fr2
	fmov fr2,@(r0,r4)
	mov 0x08,r0
	fmov fr2,@(r0,r4)
	mov 0x14,r0
	fmov @(r0,r14),fr3
	mov 0x10,r0
	fmov @(r0,r14),fr2
	mov 0x24,r0
	mov r15,r4
	fmul fr3,fr2
	fneg fr2
	fmov fr2,@(r0,r4)
	mov 0x18,r0
	fmov fr2,@(r0,r4)
	jsr @r3
	mov r14,r4
	mov 0x0C,r0
	fmov fr0,fr2
	fmov @(r0,r14),fr3
	mov 0x30,r0
	fmov fr0,fr4
	fmul fr3,fr2
	mov.l @(0x18C,PC),r3
	fmov fr2,@(r0,r15)
	mov 0x10,r0
	fmov @(r0,r14),fr3
	mov 0x34,r0
	fmov fr4,fr2
	fmul fr3,fr2
	fmov fr2,@(r0,r15)
	mov 0x14,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmul fr3,fr4
	fmov fr4,@(r0,r15)
	mov 0x0C,r0
	fldi0 fr4
	fmov fr4,@(r0,r15)
	mov 0x1C,r0
	fmov fr4,@(r0,r15)
	mov 0x2C,r0
	fmov fr4,@(r0,r15)
	mov 0x3C,r0
	fmov fr15,@(r0,r15)
	jsr @r3
	mov r15,r4
	add 0x40,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts 
	mov.l @r15+,r14

;==============================================
	nop
	nop

;==============================================
loc_8c120770:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	add 0xB4,r15
	mov r5,r12
	fmov @r12,fr3
	fmov @r6,fr2
	mov r15,r14
	mov 0x04,r0
	mov r4,r13
	fsub fr3,fr2
	fldi1 fr14
	fmov fr2,@r14
	fmov @(r0,r6),fr2
	fmov @(r0,r12),fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x08,r0
	fmov @(r0,r6),fr2
	fmov @(r0,r12),fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x0C,r0
	fmov @(r0,r13),fr4
	mov 0x04,r0
	fmov @(r0,r14),fr0
	mov 0x10,r0
	fmov @(r0,r13),fr3
	mov 0x08,r0
	fmov @r14,fr5
	fmul fr0,fr3
	fmov fr5,fr0
	fmac fr0,fr4,fr3
	fmov @(r0,r14),fr0
	mov 0x14,r0
	fmov @(r0,r13),fr2
	fmac fr0,fr2,fr3
	fmov fr14,fr15
	mov 0x0C,r0
	fdiv fr3,fr15
	fmul fr15,fr4
	fmul fr4,fr5
	fneg fr5
	fadd fr14,fr5
	fmov fr5,@(r0,r15)
	mov 0x04,r0
	fmov @(r0,r14),fr3
	mov 0x10,r0
	fmul fr4,fr3
	fneg fr3
	fmov fr3,@(r0,r15)
	mov 0x08,r0
	fmov @(r0,r14),fr3
	mov 0x14,r0
	fmul fr4,fr3
	fneg fr3
	fmov fr3,@(r0,r15)
	mov 0x10,r0
	fmov @(r0,r13),fr4
	mov 0x1C,r0
	fmov @r14,fr3
	fmul fr15,fr4
	fmul fr4,fr3
	fneg fr3
	fmov fr3,@(r0,r15)
	mov 0x04,r0
	fmov @(r0,r14),fr3
	fmul fr4,fr3
	fneg fr3
	fadd fr14,fr3
	mov 0x20,r0
	mov r13,r5
	fmov fr3,@(r0,r15)
	mov 0x08,r0
	fmov @(r0,r14),fr3
	mov 0x24,r0
	fmul fr4,fr3
	fneg fr3
	fmov fr3,@(r0,r15)
	mov 0x14,r0
	fmov @(r0,r13),fr4
	mov 0x2C,r0
	fmov @r14,fr3
	fmul fr15,fr4
	fmul fr4,fr3
	fneg fr3
	fmov fr3,@(r0,r15)
	mov 0x04,r0
	fmov @(r0,r14),fr3
	mov 0x30,r0
	fmul fr4,fr3
	fneg fr3
	fmov fr3,@(r0,r15)
	mov 0x08,r0
	fmov @(r0,r14),fr3
	mov 0x34,r0
	fmul fr4,fr3
	fneg fr3
	fadd fr14,fr3
	fmov fr3,@(r0,r15)
	mov.l @(0x7C,PC),r3
	add 0x0C,r5
	jsr @r3
	mov r13,r4
	fmov fr0,fr4
	fmul fr15,fr4
	fmov @r14,fr3
	mov 0x3C,r0
	mov.l @(0x70,PC),r3
	mov r15,r4
	fmul fr4,fr3
	fmov fr3,@(r0,r15)
	mov 0x04,r0
	fmov @(r0,r14),fr3
	mov 0x40,r0
	fmul fr4,fr3
	fmov fr3,@(r0,r15)
	mov 0x08,r0
	fmov @(r0,r14),fr3
	mov 0x44,r0
	fmul fr4,fr3
	fldi0 fr4
	fmov fr3,@(r0,r15)
	mov 0x18,r0
	fmov fr4,@(r0,r15)
	mov 0x28,r0
	fmov fr4,@(r0,r15)
	mov 0x38,r0
	fmov fr4,@(r0,r15)
	mov 0x48,r0
	fmov fr14,@(r0,r15)
	jsr @r3
	add 0x0C,r4
	mov.l @(0x40,PC),r2
	jsr @r2
	mov r12,r4
	add 0x4C,r15
	lds.l @r15+,pr
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C1208A0:
	mov.l @(loc_8C1208A8,pc),r5 ; r5 set to 0x8C2D68E8
	bra loc_8C1208D0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C1208A8:
	#data 0x8C2D68E8
loc_8C1208AC:
	#data loc_8c1205A0
loc_8C1208B0:
	#data 0x8C2D6900
loc_8C1208B4:
	#data loc_8c120620
loc_8C1208B8:
	#data loc_8c120950
loc_8C1208BC:
	#data loc_8c1211C0
loc_8C1208C0:
	#data loc_8c120540
loc_8C1208C4:
	#data loc_8c1210E0

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c1208d0:
	cmp/pl r4
	mov.w @r5+,r6
	bt loc_8c1208d8
	mov 0x01,r4

loc_8c1208d8:
	mov.w @r5,r2
	add 0xFE,r5
	cmp/ge r4,r6
	sub r4,r6
	bt loc_8c1208e4
	mov 0x00,r6

loc_8c1208e4:
	movt r0
	mov.l @(0x04,r5),r7
	mov r6,r4
	shll8 r4
	cmp/ge r2,r6
	shlr2 r4
	mov.w r6,@r5
	add r4,r7
	bt loc_8c1208f8
	mov.l r7,@(0x08,r5)

loc_8c1208f8:
	rts
	nop

;==============================================
	nop
	nop

;==============================================
loc_8c120900:
	mov.l @(0x3C,PC),r3
	cmp/pl r4
	bt loc_8c120908
	mov 0x01,r4

loc_8c120908:
	mov.w @r3+,r6
	fschg 
	mov.w @r3,r2
	add 0xFE,r3
	cmp/ge r4,r6
	sub r4,r6
	bt loc_8c120918
	mov 0x00,r6

loc_8c120918:
	movt r0
	mov.l @(0x4,r3),r7
	mov r6,r4
	shll8 r4
	cmp/ge r2,r6
	shlr2 r4
	mov.w r6,@r3
	add r4,r7
	bt loc_8c12092c
	mov.l r7,@(0x8,r3)

loc_8c12092c:
	fmov @r7+,fr1
	fmov @r7+,fr3
	fmov @r7+,fr5
	fmov @r7+,fr7
	fmov @r7+,fr9
	fmov @r7+,fr11
	fmov @r7+,fr13
	fmov @r7+,fr15
	rts 
	fschg 

;==============================================
	#align4
loc_8c120940:
	#data 0x8C2D68E8

;==============================================
loc_8c120944:
	rts
	nop

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c120950:
	mov.l @(0x38,PC),r3
	frchg 
	fschg 
	mov.l @(0x8,r3),r1
	mov.l @r3,r2
	mov r1,r7
	add 0x40,r1
	fmov fr14,@-r1
	exts.w r2,r6
	fmov fr12,@-r1
	swap.w r2,r2
	fmov fr10,@-r1
	exts.w r2,r2
	fmov fr8,@-r1
	cmp/gt r6,r2
	fmov fr6,@-r1
	movt r0
	fmov fr4,@-r1
	add 0x01,r6
	fmov fr2,@-r1
	add 0x40,r7
	fmov fr0,@-r1
	bf.s loc_8c120980
	mov.l r7,@(0x8,r3)

loc_8c120980:
	tst r4,r4
	bf.s loc_8c120990
	mov.w r6,@r3
	fschg 
	rts 
	frchg 
 
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c12098c:
	#data 0x8C2D68E8

;==============================================
loc_8c120990:
	mov 0x04,r1
	pref @r4
	tst r1,r4
	bt loc_8c1209be
	fschg 
	fmov @r4+,fr0
	fmov @r4+,fr1
	fmov @r4+,fr2
	fmov @r4+,fr3
	fmov @r4+,fr4
	fmov @r4+,fr5
	fmov @r4+,fr6
	fmov @r4+,fr7
	fmov @r4+,fr8
	fmov @r4+,fr9
	fmov @r4+,fr10
	fmov @r4+,fr11
	fmov @r4+,fr12
	fmov @r4+,fr13
	fmov @r4+,fr14
	fmov @r4+,fr15
	rts 
	frchg 

;==============================================
loc_8c1209be:
	fmov @r4+,fr0
	fmov @r4+,fr2
	fmov @r4+,fr4
	fmov @r4+,fr6
	fmov @r4+,fr8
	fmov @r4+,fr10
	fmov @r4+,fr12
	fmov @r4+,fr14
	fschg 
	rts 
	frchg 

;unused
	rts 
	nop 

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c1209e0:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x14,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(0x14,PC),r3
	jsr @r3
	mov.l r0,@r15
	mov.l @r15,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c1209fc:
	#data loc_8C120950
loc_8c120a00:
	#data loc_8C121100

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c120a10:
	frchg 
	fldi0 fr3
	fsub fr11,fr11
	fldi0 fr7
	fldi1 fr15
	flds fr1,fpul
	fipr fv12,fv0
	fmov fr4,fr1
	fipr fv12,fv4
	fsts fpul,fr4
	fipr fv12,fv8
	fldi0 fr12
	fsub fr14,fr14
	fsub fr3,fr12
	fldi0 fr13
	fsub fr7,fr13
	flds fr2,fpul
	fsub fr11,fr14
	fmov fr8,fr2
	fsub fr3,fr3
	fsts fpul,fr8
	fsub fr7,fr7
	flds fr6,fpul
	fsub fr11,fr11
	fmov fr9,fr6
	fsts fpul,fr9
	frchg 
	nop 
	rts 
	nop 

;==============================================
	nop
	nop

;==============================================
loc_8c120a50:
	frchg 
	fneg fr4
	fneg fr5
	fneg fr6
	fneg fr7
	fneg fr8
	fneg fr9
	fneg fr10
	fneg fr11
	frchg 
	rts 
	nop 

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c120a70:
	frchg 
	fneg fr8
	fneg fr9
	fneg fr10
	fneg fr11
	frchg 
	rts 
	nop 

;==============================================
loc_8c120a80:
	frchg 
	fneg fr0
	fneg fr1
	fneg fr2
	fneg fr3
	fneg fr8
	fneg fr9
	fneg fr10
	fneg fr11
	frchg 
	rts 
	nop 

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c120aa0:
	frchg 
	fneg fr0
	fneg fr1
	fneg fr2
	fneg fr3
	frchg 
	rts 
	nop 

;==============================================
loc_8c120ab0:
	frchg 
	fneg fr0
	fneg fr1
	fneg fr2
	fneg fr3
	fneg fr4
	fneg fr5
	fneg fr6
	fneg fr7
	frchg 
	rts 
	nop 

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c120ad0:
	frchg 
	fneg fr4
	fneg fr5
	fneg fr6
	fneg fr7
	frchg 
	rts 
	nop 

;==============================================
loc_8c120ae0:
	sts.l pr,@-r15
	add 0xF0,r15
	mov 0x04,r0
	mov.l @(0x30,PC),r3
	mov.l r5,@r15
	fmov @r4,fr3
	fmov fr3,@(r0,r15)
	mov 0x04,r0
	fmov @(r0,r4),fr3
	mov 0x08,r0
	fmov fr3,@(r0,r15)
	mov 0x08,r0
	fmov @(r0,r4),fr3
	mov 0x0C,r0
	mov r15,r4
	fmov fr3,@(r0,r15)
	jsr @r3
	add 0x04,r4
	mov.l @(0x14,PC),r3
	mov r15,r4
	mov.l @r15,r5
	jsr @r3
	add 0x04,r4
	add 0x10,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
	#align4
loc_8c120b18:
	#data loc_8C121490
loc_8c120b1c:
	#data loc_8C120B80

;==============================================
loc_8C120B20:
	lds r4,fpul
	fsca fpul,fr4
	fldi0 fr0
	fldi0 fr3
	fldi0 fr7
	fmov fr5,fr1
	fmov fr4,fr2
	fmov fr2,fr5
	fneg fr5
	fmov fr1,fr6
	ftrv xmtrx,fv0
	fldi0 fr4
	ftrv xmtrx,fv4
	fschg
	fmov fr0,fr5
	fmov fr2,fr7
	fmov fr4,fr9
	fmov fr6,fr11
	fschg
	nop
	rts
	nop

;==============================================
	nop
	nop

;==============================================
loc_8C120B50:
	fmov fr5,fr1
	fmov fr4,fr2
	fldi0 fr0
	fldi0 fr3
	fmov fr5,fr6
	fmov fr4,fr5
	fneg fr5
	ftrv xmtrx,fv0
	fldi0 fr4
	fldi0 fr7
	ftrv xmtrx,fv4
	fschg
	fmov fr0,fr5
	fmov fr2,fr7
	fmov fr4,fr9
	fmov fr6,fr11
	fschg
	nop
	rts
	nop

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C120B80:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8C120C58,pc),r3 ; r3 set to 0x8C11E2E0
	mov.l r4,@(0x04,r15)
	mov.l r5,@r15
	jsr @r3
	mov r5,r4
	mov.l @(loc_8C120C5C,pc),r3 ; r3 set to 0x8C11E860
	fmov.s fr0,@-r15
	jsr @r3
	mov.l @(0x04,r15),r4
	mov.l @(0x08,r15),r4
	fmov.s @r15+,fr5
	fmov fr0,fr4
	add 0x08,r15
	lds.l @r15+,pr

loc_8C120BA0:
	fmov.s fr15,@-r15
	fmov.s fr13,@-r15
	sts.l pr,@-r15
	add 0xC0,r15
	fldi1 fr9
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	fmov fr9,fr10
	fsub fr5,fr10
	fmov.s @r4,fr8
	fmov fr4,fr1
	fmov.s @(r0,r4),fr7
	fmul fr8,fr1
	fmov fr10,fr15
	fmul fr8,fr15
	fmul fr8,fr8
	fmov fr9,fr3 ; r3 ??? bc r9 is ???
	fmul fr7,fr10
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
	fmov.s @(r0,r4),fr6
	fmov fr15,fr11
	fmul fr7,fr11
	fsub fr8,fr3
	fmov fr5,fr0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???
	fmov fr10,fr13
	fmul fr6,fr13
	fmov fr15,fr10
	fmul fr6,fr10
	fmov fr8,fr2
	fmov fr4,fr15
	fmac fr0,fr3,fr2
	fmul fr7,fr15
	fmul fr6,fr4
	fmul fr7,fr7
	fmul fr6,fr6
	fmov.s fr2,@r15
	fmov fr4,fr3
	fadd fr11,fr3
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	fsub fr4,fr11
	fmov fr7,fr2
	fmov.s fr3,@(r0,r15)
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
	fmov fr10,fr3
	fsub fr15,fr3
	fadd fr10,fr15
	fmov.s fr3,@(r0,r15)
	mov 0x10,r0 ; r0 set to 0x10, r0 set to 0x10
	fmov fr9,fr3
	fsub fr7,fr3
	fmov.s fr11,@(r0,r15)
	mov 0x14,r0 ; r0 set to 0x14, r0 set to 0x14
	fmac fr0,fr3,fr2
	fmov fr1,fr3
	fadd fr13,fr3
	fsub fr1,fr13
	fmov.s fr2,@(r0,r15)
	mov 0x18,r0 ; r0 set to 0x18, r0 set to 0x18
	fmov.s fr3,@(r0,r15)
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	fmov fr9,fr3
	fsub fr6,fr3
	fmov fr6,fr2
	fmov.s fr15,@(r0,r15)
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
	fmov.s fr13,@(r0,r15)
	mov 0x28,r0 ; r0 set to 0x28, r0 set to 0x28
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r15)
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fldi0 fr3
	mov r15,r4
	fmov.s fr3,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	mov.l @(loc_8C120C60,pc),r3 ; r3 set to 0x8C120540, r3 set to 0x8C120540
	fmov.s fr3,@(r0,r4)
	mov 0x30,r0 ; r0 set to 0x30, r0 set to 0x30
	fmov.s fr3,@(r0,r4)
	mov 0x2C,r0 ; r0 set to 0x2C, r0 set to 0x2c
	fmov.s fr3,@(r0,r4)
	mov 0x1C,r0 ; r0 set to 0x1C, r0 set to 0x1c
	fmov.s fr3,@(r0,r4)
	mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
	fmov.s fr3,@(r0,r4)
	mov 0x3C,r0 ; r0 set to 0x3C, r0 set to 0x3c
	fmov.s fr9,@(r0,r15)
	jsr @r3
	mov r15,r4
	add 0x40,r15
	lds.l @r15+,pr
	fmov.s @r15+,fr13
	rts
	fmov.s @r15+,fr15

;==============================================
	#align4
loc_8C120C58:
	#data bank11.loc_8c11E2E0
loc_8C120C5C:
	#data bank11.loc_8c11E860
loc_8C120C60:
	#data loc_8c120540

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c120c70:
	lds r4,fpul
	fsca fpul,fr4
	fldi0 fr0
	fldi0 fr3
	fldi0 fr7
	fmov fr5,fr1
	fmov fr4,fr5
	fmov fr5,fr2
	fneg fr2
	fmov fr1,fr6
	ftrv xmtrx,fv0
	fldi0 fr4
	ftrv xmtrx,fv4
	fschg 
	fmov fr0,fr5
	fmov fr2,fr7
	fmov fr4,fr9
	fmov fr6,fr11
	fschg 
	nop 
	rts 
	nop

;==============================================
	nop
	nop

;==============================================
loc_8C120CA0:
	fmov fr5,fr1
	fmov fr4,fr2
	fldi0 fr0
	fldi0 fr3
	fmov fr5,fr6
	fmov fr4,fr5
	ftrv xmtrx,fv0
	fldi0 fr4
	fldi0 fr7
	ftrv xmtrx,fv4
	fschg
	fmov fr0,fr5
	fmov fr2,fr7
	fmov fr4,fr9
	fmov fr6,fr11
	fschg
	rts
	nop

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C120CD0:
	lds r4,fpul
	fsca fpul,fr4
	fldi0 fr1
	fldi0 fr3
	fldi0 fr7
	fmov fr5,fr0
	fmov fr4,fr2
	fneg fr2
	fmov fr0,fr6
	ftrv xmtrx,fv0
	fldi0 fr5
	ftrv xmtrx,fv4
	fschg
	fmov fr0,fr1
	fmov fr2,fr3
	fmov fr4,fr9
	fmov fr6,fr11
	fschg
	rts
	nop

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C120D00:
	fmov fr5,fr0
	fmov fr4,fr2
	fneg fr2
	fmov fr0,fr6
	fldi0 fr1
	fldi0 fr3
	ftrv xmtrx,fv0
	fldi0 fr5
	fldi0 fr7
	ftrv xmtrx,fv4
	fschg
	fmov fr0,fr1
	fmov fr2,fr3
	fmov fr4,fr9
	fmov fr6,fr11
	fschg
	rts
	nop

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c120d30:
	lds r4,fpul
	fsca fpul,fr4
	fldi0 fr1
	fldi0 fr3
	fldi0 fr7
	fmov fr5,fr0
	fmov fr4,fr2
	fneg fr4
	fmov fr0,fr6
	ftrv xmtrx,fv0
	fldi0 fr5
	ftrv xmtrx,fv4
	fschg 
	fmov fr0,fr1
	fmov fr2,fr3
	fmov fr4,fr9
	fmov fr6,fr11
	fschg 
	rts 
	nop

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C120D60:
	fmov fr5,fr0
	fmov fr4,fr2
	fneg fr4
	fmov fr0,fr6
	fldi0 fr1
	fldi0 fr3
	ftrv xmtrx,fv0
	fldi0 fr5
	fldi0 fr7
	ftrv xmtrx,fv4
	fschg
	fmov fr0,fr1
	fmov fr2,fr3
	fmov fr4,fr9
	fmov fr6,fr11
	fschg
	rts
	nop

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C120D90:
	lds r4,fpul
	fsca fpul,fr4
	fldi0 fr2
	fldi0 fr3
	fldi0 fr6
	fmov fr5,fr0
	fmov fr4,fr1
	fneg fr4
	ftrv xmtrx,fv0
	fldi0 fr7
	ftrv xmtrx,fv4
	fschg
	fmov fr0,fr1
	fmov fr2,fr3
	fmov fr4,fr5
	fmov fr6,fr7
	fschg
	nop
	rts
	nop

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C120DC0:
	fmov fr4,fr1
	fneg fr4
	fmov fr5,fr0
	fldi0 fr2
	fldi0 fr3
	ftrv xmtrx,fv0
	fldi0 fr6
	fldi0 fr7
	ftrv xmtrx,fv4
	fschg
	fmov fr0,fr1
	fmov fr2,fr3
	fmov fr4,fr5
	fmov fr6,fr7
	fschg
	nop
	rts
	nop

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C120df0:
	lds r4,fpul
	fsca fpul,fr4
	fldi0 fr2
	fldi0 fr3
	fldi0 fr6
	fmov fr5,fr0
	fmov fr4,fr1
	fneg fr1
	ftrv xmtrx,fv0
	fldi0 fr7
	ftrv xmtrx,fv4
	fschg 
	fmov fr0,fr1
	fmov fr2,fr3
	fmov fr4,fr5
	fmov fr6,fr7
	fschg 
	nop 
	rts 
	nop

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C120E20:
	fmov fr4,fr1
	fneg fr1
	fmov fr5,fr0
	fldi0 fr2
	fldi0 fr3
	ftrv xmtrx,fv0
	fldi0 fr6
	fldi0 fr7
	ftrv xmtrx,fv4
	fschg
	fmov fr0,fr1
	fmov fr2,fr3
	fmov fr4,fr5
	fmov fr6,fr7
	fschg
	nop
	rts
	nop

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C120E50:
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.l @(0x12C,PC),r3
	jsr @r3
	fmov fr4,fr15
	mov.l @(0x12C,PC),r2
	fmov fr0,@-r15
	jsr @r2
	fmov fr15,fr4
	fmov @r15+,fr5
	mov.l @(0x124,PC),r3
	lds.l @r15+,pr
	fmov fr0,fr4
	jmp @r3
	fmov @r15+,fr15

;==============================================
	nop

;==============================================
loc_8c120e70:
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.l @(0x10C,PC),r3
	jsr @r3
	fmov fr4,fr15
	mov.l @(0x10C,PC),r2
	fmov fr0,@-r15
	jsr @r2
	fmov fr15,fr4
	fmov @r15+,fr5
	mov.l @(0x108,PC),r3
	lds.l @r15+,pr
	fmov fr0,fr4
	jmp @r3
	fmov @r15+,fr15
;==============================================
	nop

;==============================================
loc_8c120e90:
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.l @(0xEC,PC),r3
	jsr @r3
	fmov fr4,fr15
	mov.l @(0xEC,PC),r2
	fmov fr0,@-r15
	jsr @r2
	fmov fr15,fr4
	fmov @r15+,fr5
	mov.l @(0xEC,PC),r3
	lds.l @r15+,pr
	fmov fr0,fr4
	jmp @r3
	fmov @r15+,fr15

;==============================================
	nop

;==============================================
loc_8c120eb0:
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.l @(0xCC,PC),r3
	jsr @r3
	fmov fr4,fr15
	mov.l @(0xCC,PC),r2
	fmov fr0,@-r15
	jsr @r2
	fmov fr15,fr4
	fmov @r15+,fr5
	mov.l @(0xD0,PC),r3
	lds.l @r15+,pr
	fmov fr0,fr4
	jmp @r3
	fmov @r15+,fr15

;==============================================
	nop

;==============================================
loc_8c120ed0:
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.l @(0xAC,PC),r3
	jsr @r3
	fmov fr4,fr15
	mov.l @(0xAC,PC),r2
	fmov fr0,@-r15
	jsr @r2
	fmov fr15,fr4
	fmov @r15+,fr5
	mov.l @(0xB4,PC),r3
	lds.l @r15+,pr
	fmov fr0,fr4
	jmp @r3
	fmov @r15+,fr15

;==============================================
	nop

;==============================================
loc_8c120ef0:
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.l @(0x8C,PC),r3
	jsr @r3
	fmov fr4,fr15
	mov.l @(0x8C,PC),r2
	fmov fr0,@-r15
	jsr @r2
	fmov fr15,fr4
	fmov @r15+,fr5
	mov.l @(0x98,PC),r3
	lds.l @r15+,pr
	fmov fr0,fr4
	jmp @r3
	fmov @r15+,fr15

;==============================================
	nop

;==============================================
loc_8c120f10:
	mov.l r14,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov r15,r6
	mov.l @(0x88,PC),r3
	mov r4,r14
	add 0x04,r6
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov.l @(0x80,PC),r2
	mov r15,r4
	jsr @r2
	add 0x04,r4
	mov.l @(0x7C,PC),r3
	mov.l @r15,r5
	fmov fr0,fr15
	jsr @r3
	mov r14,r4
	fldi0 fr3
	fcmp/eq fr3,fr15
	bt.s loc_8c120f50
	fmov fr0,fr5
	mov.l @(0x6C,PC),r2
	mov r15,r4
	fmov fr15,fr4
	jsr @r2
	add 0x04,r4
	bra loc_8c120f78
	nop 

;==============================================
	nop

;==============================================
loc_8c120f50:
	fcmp/gt fr5,fr3
	bf loc_8c120f78
	mov 0x04,r0
	fldi1 fr5
	fmov @(r0,r14),fr3
	mov 0x04,r0
	mov.l @(0x50,PC),r3
	mov r15,r4
	fmov fr3,@(r0,r15)
	mov 0x08,r0
	fmov @(r0,r14),fr3
	mov 0x08,r0
	fldi0 fr4
	fmov fr3,@(r0,r15)
	mov 0x0C,r0
	fmov @r14,fr3
	fneg fr5
	fmov fr3,@(r0,r15)
	jsr @r3
	add 0x04,r4

loc_8c120f78:
	add 0x10,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C120F84:
	#data bank11.loc_8c11E330
loc_8C120F88:
	#data bank11.loc_8c11E960
loc_8C120F8C:
	#data loc_8c120B50
loc_8C120F90:
	#data loc_8c120CA0
loc_8C120F94:
	#data loc_8c120D00
loc_8C120F98:
	#data loc_8c120D60
loc_8C120F9C:
	#data loc_8c120DC0
loc_8C120FA0:
	#data loc_8c120E20
loc_8C120FA4:
	#data loc_8c121200
loc_8C120FA8:
	#data loc_8c121490
loc_8C120FAC:
	#data loc_8c1211C0
loc_8C120FB0:
	#data loc_8c120BA0

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C120FC0:
	fmov.s fr6,@-r15
	fmov.s fr5,@-r15
	fmov.s fr4,@-r15
	frchg
	flds fr15,fpul
	fmov.s @r15+,fr15
	fmul fr15,fr0
	fmul fr15,fr1
	fmul fr15,fr2
	fmul fr15,fr3
	fmov.s @r15+,fr15
	fmul fr15,fr4
	fmul fr15,fr5
	fmul fr15,fr6
	fmul fr15,fr7
	fmov.s @r15+,fr15
	fmul fr15,fr8
	fmul fr15,fr9
	fmul fr15,fr10
	fmul fr15,fr11
	fsts fpul,fr15
	frchg
	rts
	nop

;==============================================
loc_8C120FF0:
	frchg
	flds fr15,fpul
	fmov.s @r4+,fr15
	fmul fr15,fr0
	fmul fr15,fr1
	fmul fr15,fr2
	fmul fr15,fr3
	fmov.s @r4+,fr15
	fmul fr15,fr4
	fmul fr15,fr5
	fmul fr15,fr6
	fmul fr15,fr7
	fmov.s @r4+,fr15
	fmul fr15,fr8
	fmul fr15,fr9
	fmul fr15,fr10
	fmul fr15,fr11
	fsts fpul,fr15
	frchg
	nop
	rts
	nop

;==============================================
	nop
	nop

;==============================================
loc_8c121020:
	frchg 
	fmov @r4+,fr12
	fmov @r4+,fr13
	fmov @r4+,fr14
	frchg 
	nop 
	rts 
	nop 


;==============================================
loc_8c121030:
	frchg 
	flds fr15,fpul
	fmov @r4+,fr15
	fsub fr15,fr0
	fmov @r4+,fr15
	fsub fr15,fr1
	fmov @r4+,fr15
	fsub fr15,fr2
	fmov @r4+,fr15
	fsub fr15,fr3
	fmov @r4+,fr15
	fsub fr15,fr4
	fmov @r4+,fr15
	fsub fr15,fr5
	fmov @r4+,fr15
	fsub fr15,fr6
	fmov @r4+,fr15
	fsub fr15,fr7
	fmov @r4+,fr15
	fsub fr15,fr8
	fmov @r4+,fr15
	fsub fr15,fr9
	fmov @r4+,fr15
	fsub fr15,fr10
	fmov @r4+,fr15
	fsub fr15,fr11
	fmov @r4+,fr15
	fsub fr15,fr12
	fmov @r4+,fr15
	fsub fr15,fr13
	fmov @r4+,fr15
	fsub fr15,fr14
	fsts fpul,fr15
	flds fr0,fpul
	fmov @r4+,fr0
	fsub fr0,fr15
	fsts fpul,fr0
	frchg 
	rts 
	nop 

;==============================================
loc_8C121080:
	frchg
	flds fr1,fpul
	fmov fr4,fr1
	fsts fpul,fr4
	flds fr2,fpul
	fmov fr8,fr2
	fsts fpul,fr8
	flds fr3,fpul
	fmov fr12,fr3
	fsts fpul,fr12
	flds fr6,fpul
	fmov fr9,fr6
	fsts fpul,fr9
	flds fr7,fpul
	fmov fr13,fr7
	fsts fpul,fr13
	flds fr11,fpul
	fmov fr14,fr11
	fsts fpul,fr14
	frchg
	rts
	nop

;==============================================
	nop
	nop

;==============================================
loc_8C1210B0:
	fldi1 fr7
	ftrv xmtrx,fv4
	fschg
	fmov fr4,fr13
	fmov fr6,fr15
	fschg
	rts
	nop

;==============================================
loc_8C1210C0:
	mov.l r14,@-r15
	mov 0x08,r0 ; r0 set to 0x08
	mov r4,r14
	fmov.s @(r0,r14),fr6
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @r14,fr4
	fmov.s @(r0,r14),fr5
	mov.l @(loc_8C1210F4,pc),r3 ; r3 set to 0x8C1210B0
	fneg fr4
	fneg fr6
	fneg fr5
	jmp @r3
	mov.l @r15+,r14

;==============================================
	nop
	nop
	nop

;==============================================
loc_8C1210E0:
	mov.l r14,@-r15
	mov 0x08,r0 ; r0 set to 0x08
	mov r4,r14
	fmov.s @(r0,r14),fr6
	mov 0x04,r0 ; r0 set to 0x04
	mov.l @(loc_8C1210F4,pc),r3 ; r3 set to 0x8C1210B0
	fmov.s @r14,fr4
	fmov.s @(r0,r14),fr5
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C1210F4:
	#data loc_8c1210B0

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C121100:
	fschg
	fldi0 fr0
	fldi0 fr1
	fldi0 fr2
	fldi1 fr3
	fmov fr0,fr3
	fmov fr0,fr7
	fmov fr0,fr9
	fmov fr0,fr13
	fldi1 fr0
	fmov fr0,fr1
	fmov fr0,fr11
	fmov fr2,fr5
	fmov fr2,fr15
	fschg
	nop
	rts
	nop

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c121130:
	frchg 
	fldi1 fr0
	fldi0 fr1
	fldi0 fr2
	fldi0 fr4
	fldi1 fr5
	fldi0 fr6
	fldi0 fr8
	fldi0 fr9
	fldi1 fr10
	frchg 
	nop 
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
	#data 0x00000000

;==============================================
loc_8c121150:
	fmov @r4+,fr0
	mov 0xF8,r0
	fmov @r5+,fr4
	fmov @r4+,fr1
	fmov @r5+,fr5
	fadd fr4,fr0
	fmov @r4,fr2
	fmov @r5,fr6
	fadd fr5,fr1
	fmov fr0,@(r0,r4)
	mov 0xFC,r0
	fadd fr6,fr2
	fmov fr1,@(r0,r4)
	fmov fr2,@r4
	rts 
	nop 


;==============================================
loc_8c121170:
	fmov @r5+,fr0
	fmov @r6+,fr4
	fmov @r5+,fr1
	fmov @r6+,fr5
	fadd fr4,fr0
	fmov @r5,fr2
	fmov @r6,fr6
	fadd fr5,fr1
	fmov fr0,@r4
	add 0x04,r4
	fadd fr6,fr2
	fmov fr1,@r4
	add 0x04,r4
	fmov fr2,@r4
	rts 
	nop 

;==============================================
loc_8c121190:
	fmov fr5,fr0
	fmov @r4+,fr1
	mov 0xFC,r0
	fmov @r4+,fr2
	fmov @r4,fr3
	fmul fr4,fr1
	fmov @r5+,fr5
	fmul fr4,fr2
	fmov @r5+,fr6
	fmul fr4,fr3
	fmov @r5,fr7
	fmac fr0,fr5,fr1
	add 0x04,r6
	fmac fr0,fr6,fr2
	fmov fr1,@(r0,r6)
	fmac fr0,fr7,fr3
	fmov fr2,@r6
	add 0x04,r6
	fmov fr3,@r6
	nop 
	rts 
	nop 

;==============================================
	nop
	nop

;==============================================
loc_8C1211C0:
	fmov.s @r4+,fr0
	fmov.s @r4+,fr1
	fmov.s @r4+,fr2
	fldi0 fr3
	fmov.s @r5+,fr4
	fmov.s @r5+,fr5
	fmov.s @r5+,fr6
	fldi0 fr7
	fipr fv0,fv4
	fmov fr7,fr0
	rts
	nop

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c1211e0:
	fmov @r4+,fr0
	fmov @r5+,fr4
	fmov @r4+,fr1
	fmov @r5+,fr5
	fsub fr4,fr0
	fmov @r4,fr2
	fmov @r5,fr6
	fsub fr5,fr1
	fldi0 fr3
	fsub fr6,fr2
	fipr fv0,fv0
	fmov fr3,fr0
	fsqrt fr0
	nop 
	rts 
	nop 

;==============================================
loc_8C121200:
	fmov.s @r4+,fr0
	fmov.s @r4+,fr5
	fmov.s @r4,fr6
	fmov.s @r5+,fr8
	fmov.s @r5+,fr9
	fmov.s @r5,fr10
	add 0x0C,r6
	fmov fr5,fr3
	fmul fr8,fr3
	fmov fr0,fr2
	fmul fr10,fr2
	fmov fr6,fr1
	fmul fr9,fr1
	fneg fr3
	fmac fr0,fr9,fr3
	fneg fr2
	fmov fr6,fr0
	fmac fr0,fr8,fr2
	fneg fr1
	fmov.s fr3,@-r6
	fmov fr5,fr0
	fmac fr0,fr10,fr1
	fmov.s fr2,@-r6
	fmov.s fr1,@-r6
	rts
	nop

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c121240:
	fmov @r4+,fr0
	fmov @r4+,fr5
	fmov @r4,fr6
	fmov @r5+,fr8
	fmov @r5+,fr9
	fmov @r5,fr10
	fmov fr5,fr3
	fmul fr8,fr3
	fmov fr0,fr2
	fmul fr10,fr2
	fmov fr6,fr1
	fmul fr9,fr1
	fneg fr3
	fmac fr0,fr9,fr3
	fneg fr2
	fmov fr6,fr0
	fmac fr0,fr8,fr2
	fneg fr1
	fmov fr5,fr0
	fmac fr0,fr10,fr1
	fldi0 fr0
	fipr fv0,fv0
	fmov fr3,fr0
	fsqrt fr0
	rts 
	nop 

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C121280:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C1212BC,pc),r3 ; r3 set to 0x8C1212E0
	mov r4,r13
	fmov.s fr4,@r15
	mov r5,r14
	jsr @r3
	mov r14,r4
	fmov.s @r15,fr4
	mov 0x04,r0 ; r0 set to 0x04
	fmov fr0,fr5
	fdiv fr5,fr4
	fmov.s @r14,fr3 ; r3 ??? bc r14 is ???
	fmov fr5,fr0 ; r0 ??? bc r5 is ???
	fmul fr4,fr3
	fmov.s fr3,@r13
	fmov.s @(r0,r14),fr2
	fmul fr4,fr2
	fmov.s fr2,@(r0,r13)
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s @(r0,r14),fr3
	fmul fr4,fr3
	fmov.s fr3,@(r0,r13)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C1212BC:
	#data loc_8c1212E0

;==============================================
loc_8c1212c0:
	fmov @r5+,fr0
	mov 0xFC,r0
	fmov @r5+,fr1
	add 0x04,r4
	fmov @r5,fr2
	fmul fr4,fr0
	fmul fr4,fr1
	fmul fr4,fr2
	fmov fr0,@(r0,r4)
	fmov fr1,@r4
	add 0x04,r4
	fmov fr2,@r4
	rts 
	nop 

;==============================================
	nop
	nop

;==============================================
loc_8C1212E0:
	fmov.s @r4+,fr0
	fmov.s @r4+,fr1
	fmov.s @r4+,fr2
	fldi0 fr3
	fipr fv0,fv0
	fmov fr3,fr0
	fsqrt fr0
	nop
	rts
	nop

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c121300:
	fmov @r4+,fr0
	fmov @r4+,fr1
	fmov @r4+,fr2
	fldi0 fr3
	fipr fv0,fv0
	fmov fr3,fr0
	rts 
	nop 

;==============================================
loc_8c121310:
	fmov @r4+,fr0
	mov 0xF8,r0
	fmov @r5+,fr4
	fmov @r4+,fr1
	fmov @r5+,fr5
	fsub fr4,fr0
	fmov @r4,fr2
	fmov @r5,fr6
	fsub fr5,fr1
	fmov fr0,@(r0,r4)
	mov 0xFC,r0
	fsub fr6,fr2
	fmov fr1,@(r0,r4)
	fmov fr2,@r4
	rts 
	nop 

;==============================================
loc_8C121330:
	fmov.s @r5+,fr0
	fmov.s @r6+,fr4
	fmov.s @r5+,fr1
	fmov.s @r6+,fr5
	fsub fr4,fr0
	fmov.s @r5,fr2
	fmov.s @r6,fr6
	fsub fr5,fr1
	fmov.s fr0,@r4
	add 0x04,r4
	fsub fr6,fr2
	fmov.s fr1,@r4
	add 0x04,r4
	fmov.s fr2,@r4
	rts
	nop

;==============================================
loc_8C121350:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xE8,r15
	fmov @r5,fr2
	mov 0x0C,r0
	fmov @r4,fr3
	mov r7,r14
	fsub fr3,fr2
	fmov fr2,@(r0,r15)
	mov 0x04,r0
	fmov @(r0,r5),fr2
	fmov @(r0,r4),fr3
	mov 0x10,r0
	fsub fr3,fr2
	fmov fr2,@(r0,r15)
	mov 0x08,r0
	fmov @(r0,r5),fr2
	fmov @(r0,r4),fr3
	mov 0x14,r0
	fsub fr3,fr2
	fmov fr2,@(r0,r15)
	mov 0x04,r0
	fmov @r6,fr2
	fmov @r5,fr3
	fsub fr3,fr2
	fmov fr2,@r15
	fmov @(r0,r6),fr2
	fmov @(r0,r5),fr3
	mov 0x04,r0
	fsub fr3,fr2
	fmov fr2,@(r0,r15)
	mov 0x08,r0
	fmov @(r0,r6),fr2
	fmov @(r0,r5),fr3
	fsub fr3,fr2
	mov.l @(0x104,PC),r3
	mov 0x08,r0
	mov r15,r4
	mov r15,r5
	fmov fr2,@(r0,r15)
	mov r14,r6
	jsr @r3
	add 0x0C,r4
	mov.l @(0xF8,PC),r2
	mov r14,r5
	jsr @r2
	mov r14,r4
	fldi0 fr3
	fmov fr0,fr4
	fcmp/eq fr3,fr4
	bf loc_8c1213c0
	mov 0x00,r0
	add 0x18,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c1213c0:
	mov.l @(0xE0,PC),r2
	jsr @r2
	nop 
	mov 0x04,r0
	fmov fr0,fr4
	fmov @r14,fr3
	fmul fr4,fr3
	fmov fr3,@r14
	fmov @(r0,r14),fr2
	fmul fr4,fr2
	fmov fr2,@(r0,r14)
	mov 0x08,r0
	fmov @(r0,r14),fr3
	fmul fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x01,r0
	add 0x18,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c1213f0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xE8,r15
	fmov @r5,fr2
	mov 0x0C,r0
	fmov @r4,fr3
	mov r7,r14
	fsub fr3,fr2
	fmov fr2,@(r0,r15)
	mov 0x04,r0
	fmov @(r0,r5),fr2
	fmov @(r0,r4),fr3
	mov 0x10,r0
	fsub fr3,fr2
	fmov fr2,@(r0,r15)
	mov 0x08,r0
	fmov @(r0,r5),fr2
	fmov @(r0,r4),fr3
	mov 0x14,r0
	fsub fr3,fr2
	fmov fr2,@(r0,r15)
	mov 0x04,r0
	fmov @r6,fr2
	fmov @r5,fr3
	fsub fr3,fr2
	fmov fr2,@r15
	fmov @(r0,r6),fr2
	fmov @(r0,r5),fr3
	mov 0x04,r0
	fsub fr3,fr2
	fmov fr2,@(r0,r15)
	mov 0x08,r0
	fmov @(r0,r6),fr2
	fmov @(r0,r5),fr3
	fsub fr3,fr2
	mov r15,r5
	mov.l @(0x60,PC),r3
	mov 0x08,r0
	mov r14,r6
	add 0x0C,r5
	fmov fr2,@(r0,r15)
	jsr @r3
	mov r15,r4
	mov.l @(0x58,PC),r2
	mov r14,r5
	jsr @r2
	mov r14,r4
	fldi0 fr3
	fmov fr0,fr4
	fcmp/eq fr3,fr4
	bf loc_8c121460
	mov 0x00,r0
	add 0x18,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c121460:
	mov.l @(0x40,PC),r2
	jsr @r2
	nop 
	mov 0x04,r0
	fmov fr0,fr4
	fmov @r14,fr3
	fmul fr4,fr3
	fmov fr3,@r14
	fmov @(r0,r14),fr2
	fmul fr4,fr2
	fmov fr2,@(r0,r14)
	mov 0x08,r0
	fmov @(r0,r14),fr3
	fmul fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x01,r0
	add 0x18,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C121490:
	add 0xFC,r15
	mov r4,r5
	mov.l r4,@r15
	bra loc_8C1214B0
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C12149C:
	#data loc_8c121200
loc_8C1214A0:
	#data loc_8c1211C0
loc_8C1214A4:
	#data bank11.loc_8c11E510

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C1214B0:
	fmov.s @r4+,fr4
	fmov.s @r4+,fr5
	fmov.s @r4+,fr6
	fldi0 fr7
	add 0x0C,r5
	fipr fv4,fv4
	fmov fr7,fr0
	fsqrt fr0
	fsrra fr7
	fmul fr7,fr6
	fmul fr7,fr5
	fmul fr7,fr4
	fmov.s fr6,@-r5
	fmov.s fr5,@-r5
	fmov.s fr4,@-r5
	nop
	rts
	add 0x04,r15

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c1214e0:
	fmov @r4+,fr4
	fmov @r4+,fr5
	fmov @r4+,fr6
	fldi0 fr7
	add 0x0C,r5
	fipr fv4,fv4
	fmov fr7,fr0
	fsqrt fr0
	fsrra fr7
	fmul fr7,fr6
	fmul fr7,fr5
	fmul fr7,fr4
	fmov fr6,@-r5
	fmov fr5,@-r5
	fmov fr4,@-r5
	nop 
	rts 
	nop

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c121510:
	fmov @r4+,fr4
	fmov @r4+,fr5
	fmov @r4+,fr6
	fldi0 fr7
	fipr fv4,fv4
	fsrra fr7
	fmul fr7,fr6
	fmul fr7,fr5
	fmul fr7,fr4
	fmov fr6,@-r4
	fmov fr5,@-r4
	fmov fr4,@-r4
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
	#data 0x00000000

;==============================================
loc_8c121530:
	sts.l pr,@-r15
	add 0xC0,r15
	fldi1 fr2
	fadd fr2,fr2
	fmov fr8,fr1
	mov 0x04,r0
	fmov fr7,fr0
	fsub fr6,fr0
	fmov fr5,fr11
	fsub fr4,fr11
	fmul fr2,fr1
	fldi0 fr10
	fadd fr5,fr4
	fadd fr7,fr6
	fmov fr1,fr3
	fdiv fr0,fr1
	fdiv fr11,fr4
	fdiv fr11,fr3
	fmov fr3,@r15
	fmov fr10,@(r0,r15)
	mov 0x08,r0
	fmov fr10,@(r0,r15)
	mov 0x0C,r0
	fmov fr10,@(r0,r15)
	mov 0x10,r0
	fmov fr10,@(r0,r15)
	mov 0x14,r0
	fmov fr1,@(r0,r15)
	mov 0x18,r0
	fmov fr10,@(r0,r15)
	mov 0x1C,r0
	fmov fr10,@(r0,r15)
	mov 0x20,r0
	fmov fr4,@(r0,r15)
	fmov fr8,fr4
	fdiv fr0,fr6
	fneg fr4
	mov 0x24,r0
	fmov fr9,fr5
	fsub fr8,fr5
	fmov fr4,fr3
	fsub fr9,fr3
	mov.l @(0x244,PC),r4
	fdiv fr5,fr3
	fmov fr6,@(r0,r15)
	mov 0x28,r0
	fmov fr3,@(r0,r15)
	mov 0x2C,r0
	fldi1 fr3
	fneg fr3
	fmov fr3,@(r0,r15)
	mov 0x30,r0
	fmov fr8,fr3
	fmul fr9,fr3
	fmov fr10,@(r0,r15)
	mov 0x34,r0
	fmov fr10,@(r0,r15)
	mov 0x38,r0
	fmul fr2,fr3
	fneg fr3
	fdiv fr5,fr3
	fmov fr3,@(r0,r15)
	mov 0x3C,r0
	fmov fr10,@(r0,r15)
	mov 0x1C,r0
	fmov fr8,@(r0,r4)
	fldi1 fr5
	fdiv fr8,fr5
	mov 0x20,r0
	mov.l @(0x218,PC),r3
	fmov fr9,@(r0,r4)
	mov 0x24,r0
	fmov fr5,@(r0,r4)
	mov.l @(0x20C,PC),r4
	fmov fr8,@(r0,r4)
	mov 0x0C,r0
	fmov fr4,@(r0,r4)
	mov 0x28,r0
	fmov fr9,@(r0,r4)
	mov 0x20,r0
	fmov fr5,@(r0,r4)
	jsr @r3
	mov r15,r4
	mov.l @(0x200,PC),r2
	jsr @r2
	nop 
	add 0x40,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c1215f0:
	sts.l pr,@-r15
	add 0xC0,r15
	fldi1 fr2
	fadd fr2,fr2
	fmov fr8,fr1
	mov 0x04,r0
	fmov fr7,fr0
	fsub fr6,fr0
	fmov fr5,fr11
	fsub fr4,fr11
	fmul fr2,fr1
	fldi0 fr10
	fadd fr5,fr4
	fadd fr7,fr6
	fmov fr1,fr3
	fdiv fr0,fr1
	fdiv fr11,fr4
	fdiv fr11,fr3
	fmov fr3,@r15
	fmov fr10,@(r0,r15)
	mov 0x08,r0
	fmov fr10,@(r0,r15)
	mov 0x0C,r0
	fmov fr10,@(r0,r15)
	mov 0x10,r0
	fmov fr10,@(r0,r15)
	mov 0x14,r0
	fmov fr1,@(r0,r15)
	mov 0x18,r0
	fmov fr10,@(r0,r15)
	mov 0x1C,r0
	fmov fr10,@(r0,r15)
	mov 0x20,r0
	fmov fr4,@(r0,r15)
	fdiv fr0,fr6
	mov 0x24,r0
	fmov fr9,fr4
	fsub fr8,fr4
	fldi1 fr5
	mov.l @(0x18C,PC),r4
	fmov fr6,@(r0,r15)
	mov 0x28,r0
	fmov fr8,fr6
	fneg fr6
	fmov fr6,fr3
	fsub fr9,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r15)
	mov 0x2C,r0
	fmov fr8,fr3
	fmul fr9,fr3
	fmov fr5,@(r0,r15)
	mov 0x30,r0
	fmov fr10,@(r0,r15)
	mov 0x34,r0
	fmov fr10,@(r0,r15)
	mov 0x38,r0
	fmul fr2,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r15)
	mov 0x3C,r0
	fmov fr10,@(r0,r15)
	mov 0x1C,r0
	fmov fr8,@(r0,r4)
	mov 0x20,r0
	fmov fr9,@(r0,r4)
	fmov fr5,fr4
	fdiv fr8,fr4
	mov 0x24,r0
	mov.l @(0x158,PC),r3
	fmov fr4,@(r0,r4)
	mov.l @(0x150,PC),r4
	fmov fr8,@(r0,r4)
	mov 0x0C,r0
	fmov fr6,@(r0,r4)
	mov 0x28,r0
	fmov fr9,@(r0,r4)
	mov 0x20,r0
	fmov fr4,@(r0,r4)
	jsr @r3
	mov r15,r4
	mov.l @(0x144,PC),r2
	jsr @r2
	nop 
	add 0x40,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c1216a0:
	sts.l pr,@-r15
	mov.l @(0x13C,PC),r3
	mov.l @(0x134,PC),r4
	jsr @r3
	mov.l @(0x8,r4),r4
	mov.l @(0x138,PC),r2
	jsr @r2
	nop 
	mov.l @(0x138,PC),r3
	mov.l @(0x134,PC),r4
	jsr @r3
	nop 
	mov.l @(0x134,PC),r2
	mov 0x01,r4
	jmp @r2
	lds.l @r15+,pr

;==============================================
loc_8C1216C0:
	sts.l pr,@-r15
	mov.l @(loc_8C1217E0,pc),r3 ; r3 set to 0x8C120950
	mov.l @(loc_8C1217DC,pc),r4 ; r4 set to 0x8C2D690c
	jsr @r3
	mov.l @(0x08,r4),r4 ; r4 ??
	mov.l @(loc_8C1217D4,pc),r3 ; r3 set to 0x8C120540
	mov.l @(loc_8C1217F4,pc),r4 ; r4 set to 0x8C2D6900
	jsr @r3
	mov.l @(0x08,r4),r4 ; r4 ??
	mov.l @(loc_8C1217E4,pc),r2 ; r2 set to 0x8C120660
	jsr @r2
	nop
	mov.l @(loc_8C1217EC,pc),r3 ; r3 set to 0x8C11FB70
	mov.l @(loc_8C1217E8,pc),r4 ; r4 set to 0x8C2D6AD8
	jsr @r3
	nop
	mov.l @(loc_8C1217F0,pc),r2 ; r2 set to 0x8C120900
	mov 0x01,r4 ; r4 set to 0x01
	jmp @r2
	lds.l @r15+,pr

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c1216f0:
	sts.l pr,@-r15
	mov.l @(0xEC,PC),r3
	mov.l @(0xFC,PC),r4
	jsr @r3
	mov.l @(0x8,r4),r4
	mov.l @(0xE8,PC),r2
	jsr @r2
	nop 
	mov.l @(0xF8,PC),r3
	mov.l @(0xF4,PC),r4
	jsr @r3
	nop 
	mov.l @(0xE4,PC),r2
	mov 0x01,r4
	jmp @r2
	lds.l @r15+,pr

;==============================================
loc_8C121710:
	fmov fr5,fr2
	mov.l @(loc_8C121804,pc),r2 ; r2 set to 0x8C16BD84
	mov.l @(loc_8C121800,pc),r3 ; r3 set to 0x8C16BD80
	fmov fr4,fr3 ; r3 ??? bc r4 is ???
	mov.l @(loc_8C121808,pc),r1 ; r1 set to 0x8C1210B0
	fabs fr2
	fabs fr3
	fmov.s fr3,@r3
	fmov.s fr2,@r2 ; r2 ??
	jmp @r1
	fldi0 fr6

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C121730:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	fmov.s fr13,@-r15
	fmov.s fr12,@-r15
	sts.l pr,@-r15
	add 0xA8,r15
	mov.l @(loc_8C12180C,pc),r11 ; r11 set to 0x8C11EB20
	mov 0x08,r0 ; r0 set to 0x08
	fldi1 fr14
	mov.l r4,@(0x04,r15)
	fmov.s fr4,@(r0,r15)
	mov.l @(0x04,r15),r13
	fmov fr6,fr12
	shar r13
	fmov fr5,fr13
	jsr @r11
	mov r13,r4
	fmov fr14,fr3
	fdiv fr0,fr3
	mov 0x08,r0 ; r0 set to 0x08
	mov.l @(loc_8C121800,pc),r10 ; r10 set to 0x8C16BD80
	mov.l @(loc_8C121810,pc),r12 ; r12 set to 0x8C11E170
	mov.l @(loc_8C121814,pc),r14 ; r14 set to 0x8C11E2E0
	fmov.s fr3,@r15
	fmov.s @(r0,r15),fr15
	fmov.s @r10,fr2
	fdiv fr3,fr15
	fldi0 fr3
	fcmp/eq fr3,fr2
	bt loc_8C1217A0
	jsr @r12
	fmov fr15,fr4
	mov.l r0,@(0x04,r15)
	jsr @r11
	mov r0,r4 ; r4 set to 0x08
	fmov.s @r10,fr3
	fmov fr0,fr4 ; r4 ??
	fadd fr14,fr3
	jsr @r12
	fmul fr3,fr4
	jsr @r14
	mov r0,r4 ; r4 set to 0x08
	fmov fr14,fr2
	fdiv fr0,fr2
	mov 0x14,r0 ; r0 set to 0x14
	bra loc_8C1217B0
	fmov.s fr2,@(r0,r15)

;==============================================
	nop
	nop
	nop

;==============================================
loc_8C1217A0:
	jsr @r12
	fmov fr15,fr4
	jsr @r14
	mov r0,r4
	fmov fr14,fr3
	fdiv fr0,fr3
	mov 0x14,r0 ; r0 set to 0x14
	fmov.s fr3,@(r0,r15)

loc_8C1217B0:
	mov.l @(loc_8C121804,pc),r9 ; r9 set to 0x8C16BD84, r9 set to 0x8C16BD84
	fldi0 fr3
	fmov.s @r9,fr2
	fcmp/eq fr3,fr2
	bt loc_8C121820
	jsr @r11
	mov r13,r4
	fmov.s @r9,fr3
	fmov fr0,fr4
	fadd fr14,fr3
	jsr @r12
	fmul fr3,fr4
	bra loc_8C121822
	mov r0,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C1217cc:
	#data 0x8C32B420
loc_8C1217D0:
	#data 0x8C2DEE20
loc_8C1217D4:
	#data loc_8c120540
loc_8C1217D8:
	#data loc_8c122780
loc_8C1217DC:
	#data 0x8C2D690c
loc_8C1217E0:
	#data loc_8c120950
loc_8C1217E4:
	#data loc_8c120660
loc_8C1217E8:
	#data 0x8C2D6AD8
loc_8C1217EC:
	#data bank11.loc_8c11FB70
loc_8C1217F0:
	#data loc_8c120900
loc_8C1217F4:
	#data 0x8C2D6900
loc_8C1217F8:
	#data 0x8C2D6A98
loc_8C1217FC:
	#data bank11.loc_8c11FA80
loc_8C121800:
	#data bank16.loc_8c16BD80
loc_8C121804:
	#data bank16.loc_8c16BD84
loc_8C121808:
	#data loc_8c1210B0
loc_8C12180C:
	#data bank11.loc_8c11EB20
loc_8C121810:
	#data bank11.loc_8c11E170
loc_8C121814:
	#data bank11.loc_8c11E2E0

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C121820:
	mov r13,r4

loc_8C121822:
	jsr @r14
	nop
	mova @(loc_8C121AAC,pc),r0  ; r0 init to 0x8C121AAC, r0 init to 0x8C121AAc
	fmov fr14,fr4
	fdiv fr0,fr4
	mov.l @(loc_8C121AB4,pc),r6 ; r6 set to 0x8C16BD54, r6 set to 0x8C16BD54
	mov.l @(loc_8C121AB0,pc),r4 ; r4 set to 0x8C16BD50, r4 set to 0x8C16BD50
	mov.l @(loc_8C121ABC,pc),r3 ; r3 set to 0x8C16BD88, r3 set to 0x8C16BD88
	mov.l @(loc_8C121AB8,pc),r5 ; r5 set to 0x8C2D6B98, r5 set to 0x8C2D6B98
	fldi0 fr15
	fmov.s fr15,@r10
	fmov.s fr15,@r9
	fmov.s @r0,fr5 ; r5 ??, r5 ??
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
	fmov.s @r15,fr2
	fmov.s @(r0,r15),fr3 ; r3 ??? bc r15 is ???, r3 ??? bc r15 is ???
	mov 0x10,r0 ; r0 set to 0x10, r0 set to 0x10
	fdiv fr3,fr2
	fmov.s fr2,@(r0,r15)
	mov 0x14,r0 ; r0 set to 0x14, r0 set to 0x14
	fmov.s @(r0,r15),fr1
	fmov fr2,fr0 ; r0 ??? bc r2 is ???, r0 ??? bc r2 is ???
	fmul fr1,fr0
	fmul fr5,fr0
	fmov.s fr0,@r4 ; r4 ??? bc r0 is ???, r4 ??? bc r0 is ???
	fmov.s @r15,fr3
	fmul fr4,fr3
	fmul fr5,fr3
	fmov.s fr3,@r6 ; r6 ??? bc r3 is ???, r6 ??? bc r3 is ???
	fmov.s @r4,fr3
	fmov.s @r3,fr2
	mov.l @(loc_8C121AC0,pc),r4 ; r4 set to 0x8C2D6B9C, r4 set to 0x8C2D6B9c
	fmul fr3,fr2
	fmov.s fr2,@r5
	mov.l @(loc_8C121AC4,pc),r2 ; r2 set to 0x8C16BD8C, r2 set to 0x8C16BD8c
	fmov.s @r6,fr3
	fmov.s @r2,fr2 ; r2 ??, r2 ??
	mov.l @(loc_8C121AC8,pc),r6 ; r6 set to 0x8C16BD58, r6 set to 0x8C16BD58
	fmul fr3,fr2
	fmov fr2,fr4 ; r4 ??? bc r2 is ???, r4 ??? bc r2 is ???
	fmov.s fr2,@r4
	fmov.s @r5,fr5
	fcmp/gt fr4,fr5
	bf/s loc_8C121880
	mov r13,r4
	bra loc_8C121882
	fmov.s fr5,@r6

loc_8C121880:
	fmov.s fr4,@r6

loc_8C121882:
	jsr @r11
	nop
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
	fmov fr0,fr4
	fmov.s @(r0,r15),fr3
	jsr @r12
	fmul fr3,fr4
	lds r0,fpul
	mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
	mov.l @(loc_8C121ACC,pc),r4 ; r4 set to 0x8C2D6B58, r4 set to 0x8C2D6B58
	float fpul,fr3
	mov r4,r10 ; r10 set to 0x8C2D6B58, r10 set to 0x8C2D6B58
	add 0x10,r10 ; r10 set to 0x8C2D6B68, r10 set to 0x8C2D6B68
	mov r4,r11 ; r11 set to 0x8C2D6B58, r11 set to 0x8C2D6B58
	mov r11,r12 ; r12 set to 0x8C2D6B58, r12 set to 0x8C2D6B58
	mov r11,r9 ; r9 set to 0x8C2D6B58, r9 set to 0x8C2D6B58
	add 0x20,r12 ; r12 set to 0x8C2D6B78, r12 set to 0x8C2D6B78
	add 0x30,r9 ; r9 set to 0x8C2D6B88, r9 set to 0x8C2D6B88
	fmov.s fr3,@(r0,r15)
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	fmov.s fr15,@(r0,r10)  ; r10 ??? bc r15 is ???, r10 ??? bc r15 is ???
	fmov.s fr15,@(r0,r11)  ; r11 ??? bc r15 is ???, r11 ??? bc r15 is ???
	mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
	fmov.s fr15,@r9 ; r9 ??? bc r15 is ???, r9 ??? bc r15 is ???
	fmov.s fr15,@r12 ; r12 ??? bc r15 is ???, r12 ??? bc r15 is ???
	fmov.s @(r0,r15),fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r14
	mov.l r4,@(0x04,r15)
	fmov fr0,fr3
	mov.l @(loc_8C121AD0,pc),r3 ; r3 set to 0x8C11E860, r3 set to 0x8C11E860
	fneg fr3
	fmov.s fr0,@r11
	fmov.s fr3,@r10
	jsr @r3
	mov.l @(0x04,r15),r4 ; r4 ??? bc r15 is ???, r4 ??? bc r15 is ???
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
	fmov.s fr0,@(r0,r10)
	fmov.s fr0,@(r0,r11)
	jsr @r14
	mov r13,r4
	fmov fr0,fr3 ; r3 ??, r3 ??
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	fneg fr3
	mov.l @(loc_8C121AD0,pc),r3 ; r3 set to 0x8C11E860, r3 set to 0x8C11E860
	fmov.s fr0,@(r0,r12)
	fmov.s fr3,@(r0,r9)
	jsr @r3
	mov r13,r4
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
	fmov.s fr0,@(r0,r9)
	fmov.s fr0,@(r0,r12)
	mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
	fmov.s fr15,@(r0,r10)
	fmov.s fr15,@(r0,r11)
	fmov.s fr15,@(r0,r9)
	fmov.s fr15,@(r0,r12)
	mov 0x10,r0 ; r0 set to 0x10, r0 set to 0x10
	fmov.s @(r0,r15),fr3 ; r3 ??? bc r15 is ???, r3 ??? bc r15 is ???
	mov 0x18,r0 ; r0 set to 0x18, r0 set to 0x18
	fmov.s fr3,@(r0,r15)
	mov 0x1C,r0 ; r0 set to 0x1C, r0 set to 0x1c
	fmov.s fr15,@(r0,r15)
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	fmov.s fr15,@(r0,r15)
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
	fmov.s fr15,@(r0,r15)
	mov 0x28,r0 ; r0 set to 0x28, r0 set to 0x28
	fmov.s fr15,@(r0,r15)
	mov 0x2C,r0 ; r0 set to 0x2C, r0 set to 0x2c
	fmov.s @r15,fr3
	fmov.s fr3,@(r0,r15)
	mov 0x30,r0 ; r0 set to 0x30, r0 set to 0x30
	fmov.s fr15,@(r0,r15)
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s fr15,@(r0,r15)
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s fr15,@(r0,r15)
	mov 0x3C,r0 ; r0 set to 0x3C, r0 set to 0x3c
	fmov fr13,fr3
	fmov.s fr15,@(r0,r15)
	fmov fr13,fr4
	fsub fr12,fr4
	fadd fr12,fr3
	mov 0x40,r0 ; r0 set to 0x40, r0 set to 0x40
	fldi1 fr2
	fadd fr2,fr2
	mov.l @(loc_8C121AD4,pc),r4 ; r4 set to 0x8C32B420, r4 set to 0x8C32B420
	fdiv fr4,fr3
	fmov.s fr3,@(r0,r15)
	mov 0x44,r0 ; r0 set to 0x44, r0 set to 0x44
	fldi1 fr3
	fneg fr3
	fmov.s fr3,@(r0,r15)
	mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48
	fmov fr13,fr3
	fmul fr12,fr3
	fmov.s fr15,@(r0,r15)
	mov 0x4C,r0 ; r0 set to 0x4C, r0 set to 0x4c
	fmov.s fr15,@(r0,r15)
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	fmul fr2,fr3
	fdiv fr4,fr3
	fmov fr14,fr4 ; r4 ??? bc r14 is ???, r4 ??? bc r14 is ???
	fdiv fr13,fr4
	fmov.s fr3,@(r0,r15)
	mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
	fmov.s fr15,@(r0,r15)
	mov 0x1C,r0 ; r0 set to 0x1C, r0 set to 0x1c
	fmov.s fr13,@(r0,r4)
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	fmov.s fr12,@(r0,r4)
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
	fmov.s fr4,@(r0,r4)
	mov.l @(loc_8C121AD8,pc),r4 ; r4 set to 0x8C2DEE20, r4 set to 0x8C2DEE20
	mov.l @(loc_8C121ADC,pc),r3 ; r3 set to 0x8C120540, r3 set to 0x8C120540
	fmov.s fr13,@(r0,r4)  ; r4 ??? bc r13 is ???, r4 ??? bc r13 is ???
	mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
	fneg fr13
	fmov.s fr13,@(r0,r4)
	mov 0x28,r0 ; r0 set to 0x28, r0 set to 0x28
	fmov.s fr12,@(r0,r4)
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	fmov.s fr4,@(r0,r4)
	mov r15,r4
	jsr @r3
	add 0x18,r4
	mov.l @(loc_8C121AE0,pc),r2 ; r2 set to 0x8C122780, r2 set to 0x8C122780
	jsr @r2
	nop
	add 0x58,r15
	lds.l @r15+,pr
	fmov.s @r15+,fr12
	fmov.s @r15+,fr13
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C1219B0:
mov.l r14,@-r15
mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	fmov.s fr13,@-r15
	fmov.s fr12,@-r15
	sts.l pr,@-r15
	add 0xA8,r15
	mov.l @(loc_8C121AE4,pc),r11 ; r11 set to 0x8C11EB20
	mov 0x0C,r0 ; r0 set to 0x0c
	fldi1 fr14
	mov.l r4,@(0x04,r15)
	fmov.s fr4,@(r0,r15)
	fmov.s fr6,@r15
	mov.l @(0x04,r15),r13
	fmov fr5,fr13
	shar r13
	jsr @r11
	mov r13,r4
	fmov fr14,fr3
	fdiv fr0,fr3
	mov.l @(loc_8C121AE8,pc),r9 ; r9 set to 0x8C16BD80
	mov 0x08,r0 ; r0 set to 0x08
	fldi0 fr2
	mov.l @(loc_8C121AF0,pc),r14 ; r14 set to 0x8C11E2E0
	mov.l @(loc_8C121AEC,pc),r12 ; r12 set to 0x8C11E170
	fmov.s fr3,@(r0,r15)
	fmov.s @r9,fr1
	fcmp/eq fr2,fr1
	bt loc_8C121A10
	jsr @r11
	mov r13,r4
	fmov.s @r9,fr3
	fmov fr0,fr4
	fadd fr14,fr3
	jsr @r12
	fmul fr3,fr4
	jsr @r14
	mov r0,r4 ; r4 set to 0x08
	fmov fr14,fr2
	fdiv fr0,fr2
	mov 0x14,r0 ; r0 set to 0x14
	bra loc_8C121A1c
	fmov.s fr2,@(r0,r15)

loc_8C121A10:
	jsr @r14
	mov r13,r4
	fmov fr14,fr3
	fdiv fr0,fr3
	mov 0x14,r0 ; r0 set to 0x14
	fmov.s fr3,@(r0,r15)

loc_8C121A1C:
	mov.l @(loc_8C121AF4,pc),r10 ; r10 set to 0x8C16BD84, r10 set to 0x8C16BD84
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
	fldi0 fr2
	fmov.s @r10,fr1
	fmov.s @(r0,r15),fr3
	mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
	fcmp/eq fr2,fr1
	fmov.s @(r0,r15),fr12
	bt/s loc_8C121A50
	fmul fr3,fr12
	fmov fr14,fr4
	jsr @r12
	fdiv fr12,fr4
	mov.l r0,@(0x04,r15)
	jsr @r11
	mov r0,r4 ; r4 set to 0x0C, r4 set to 0x0c
	fmov.s @r10,fr3
	fmov fr0,fr4 ; r4 ??, r4 ??
	fadd fr14,fr3
	bra loc_8C121A54
	fmul fr3,fr4

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C121A50:
	fmov fr14,fr4
	fdiv fr12,fr4

loc_8C121A54:
	jsr @r12
	nop
	jsr @r14
	mov r0,r4
	fmov fr14,fr4
	fdiv fr0,fr4
	mova @(loc_8C121AAC,pc),r0  ; r0 init to 0x8C121AAC, r0 init to 0x8C121AAc
	mov.l @(loc_8C121AB4,pc),r6 ; r6 set to 0x8C16BD54, r6 set to 0x8C16BD54
	mov.l @(loc_8C121AB0,pc),r5 ; r5 set to 0x8C16BD50, r5 set to 0x8C16BD50
	mov.l @(loc_8C121ABC,pc),r3 ; r3 set to 0x8C16BD88, r3 set to 0x8C16BD88
	mov.l @(loc_8C121AB8,pc),r4 ; r4 set to 0x8C2D6B98, r4 set to 0x8C2D6B98
	mov.l @(loc_8C121AC4,pc),r2 ; r2 set to 0x8C16BD8C, r2 set to 0x8C16BD8c
	fldi0 fr15
	fmov.s fr15,@r9
	fmov.s fr15,@r10
	fmov.s @r0,fr5 ; r5 ??, r5 ??
	mov 0x14,r0 ; r0 set to 0x14, r0 set to 0x14
	fmov.s @(r0,r15),fr3 ; r3 ??? bc r15 is ???, r3 ??? bc r15 is ???
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
	fmov.s @(r0,r15),fr2 ; r2 ??? bc r15 is ???, r2 ??? bc r15 is ???
	fmul fr3,fr2
	fmov fr12,fr3
	fmul fr4,fr3
	fmul fr5,fr2
	fmul fr5,fr3
	fmov.s fr2,@r5
	fmov.s fr3,@r6 ; r6 ??? bc r3 is ???, r6 ??? bc r3 is ???
	fmov.s @r3,fr2
	fmov.s @r5,fr3
	mov.l @(loc_8C121AC0,pc),r5 ; r5 set to 0x8C2D6B9C, r5 set to 0x8C2D6B9c
	fmul fr3,fr2
	fmov.s fr2,@r4 ; r4 ??? bc r2 is ???, r4 ??? bc r2 is ???
	fmov.s @r6,fr3
	fmov.s @r2,fr2
	fmul fr3,fr2
	fmov.s fr2,@r5 ; r5 ??? bc r2 is ???, r5 ??? bc r2 is ???
	fmov.s @r4,fr5
	fmov fr2,fr4
	fcmp/gt fr4,fr5
	mov.l @(loc_8C121AC8,pc),r6 ; r6 set to 0x8C16BD58, r6 set to 0x8C16BD58
	bf/s loc_8C121B00
	mov r13,r4
	bra loc_8C121B02
	fmov.s fr5,@r6


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C121AAC:
	#data 0x3F000000
loc_8C121AB0:
	#data bank16.loc_8c16BD50
loc_8C121AB4:
	#data bank16.loc_8c16BD54
loc_8C121AB8:
	#data 0x8C2D6B98
loc_8C121ABC:
	#data bank16.loc_8c16BD88
loc_8C121AC0:
	#data 0x8C2D6B9c
loc_8C121AC4:
	#data bank16.loc_8c16BD8c
loc_8C121AC8:
	#data bank16.loc_8c16BD58
loc_8C121ACC:
	#data 0x8C2D6B58
loc_8C121AD0:
	#data bank11.loc_8c11E860
loc_8C121AD4:
	#data 0x8C32B420
loc_8C121AD8:
	#data 0x8C2DEE20
loc_8C121ADC:
	#data loc_8c120540
loc_8C121AE0:
	#data loc_8c122780
loc_8C121AE4:
	#data bank11.loc_8c11EB20
loc_8C121AE8:
	#data bank16.loc_8c16BD80
loc_8C121AEC:
	#data bank11.loc_8c11E170
loc_8C121AF0:
	#data bank11.loc_8c11E2E0
loc_8C121AF4:
	#data bank16.loc_8c16BD84

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C121B00:
	fmov.s fr4,@r6

loc_8C121B02:
	jsr @r11
	nop
	mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
	fmov fr0,fr4
	fmov.s @(r0,r15),fr3
	jsr @r12
	fdiv fr3,fr4
	lds r0,fpul
	mov 0x10,r0 ; r0 set to 0x10, r0 set to 0x10
	mov.l @(loc_8C121DD8,pc),r4 ; r4 set to 0x8C2D6B58, r4 set to 0x8C2D6B58
	float fpul,fr3
	mov r4,r11 ; r11 set to 0x8C2D6B58, r11 set to 0x8C2D6B58
	mov r11,r12 ; r12 set to 0x8C2D6B58, r12 set to 0x8C2D6B58
	mov r11,r9 ; r9 set to 0x8C2D6B58, r9 set to 0x8C2D6B58
	mov r4,r10 ; r10 set to 0x8C2D6B58, r10 set to 0x8C2D6B58
	add 0x20,r12 ; r12 set to 0x8C2D6B78, r12 set to 0x8C2D6B78
	add 0x30,r9 ; r9 set to 0x8C2D6B88, r9 set to 0x8C2D6B88
	add 0x10,r10 ; r10 set to 0x8C2D6B68, r10 set to 0x8C2D6B68
	fmov.s fr3,@(r0,r15)
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	fmov.s fr15,@(r0,r10)  ; r10 ??? bc r15 is ???, r10 ??? bc r15 is ???
	fmov.s fr15,@(r0,r11)  ; r11 ??? bc r15 is ???, r11 ??? bc r15 is ???
	fmov.s fr15,@r9 ; r9 ??? bc r15 is ???, r9 ??? bc r15 is ???
	fmov.s fr15,@r12 ; r12 ??? bc r15 is ???, r12 ??? bc r15 is ???
	jsr @r14
	mov r13,r4 ; r4 ??? bc r13 is ???, r4 ??? bc r13 is ???
	fmov fr0,fr3
	mov.l @(loc_8C121DDC,pc),r3 ; r3 set to 0x8C11E860, r3 set to 0x8C11E860
	fneg fr3
	fmov.s fr0,@r11
	fmov.s fr3,@r10
	jsr @r3
	mov r13,r4
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
	fmov.s fr0,@(r0,r10)
	fmov.s fr0,@(r0,r11)
	mov 0x10,r0 ; r0 set to 0x10, r0 set to 0x10
	fmov.s @(r0,r15),fr3 ; r3 ??? bc r15 is ???, r3 ??? bc r15 is ???
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r14
	mov.l r4,@(0x04,r15)
	fmov fr0,fr3
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	fneg fr3
	mov.l @(loc_8C121DDC,pc),r3 ; r3 set to 0x8C11E860, r3 set to 0x8C11E860
	fmov.s fr0,@(r0,r12)
	fmov.s fr3,@(r0,r9)
	jsr @r3
	mov.l @(0x04,r15),r4
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
	fmov fr13,fr2
	fmov.s fr0,@(r0,r9)
	fmov.s fr0,@(r0,r12)
	mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
	fmov.s fr15,@(r0,r10)
	fmov.s fr15,@(r0,r11)
	fmov.s fr15,@(r0,r9)
	fmov.s fr15,@(r0,r12)
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
	fmov.s @(r0,r15),fr3 ; r3 ??? bc r15 is ???, r3 ??? bc r15 is ???
	mov 0x18,r0 ; r0 set to 0x18, r0 set to 0x18
	fmov.s fr3,@(r0,r15)
	mov 0x1C,r0 ; r0 set to 0x1C, r0 set to 0x1c
	fmov.s fr15,@(r0,r15)
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	fmov.s fr15,@(r0,r15)
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
	fmov.s fr15,@(r0,r15)
	mov 0x28,r0 ; r0 set to 0x28, r0 set to 0x28
	fmov.s fr15,@(r0,r15)
	mov 0x2C,r0 ; r0 set to 0x2C, r0 set to 0x2c
	fmov.s fr12,@(r0,r15)
	mov 0x30,r0 ; r0 set to 0x30, r0 set to 0x30
	fmov.s fr15,@(r0,r15)
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s fr15,@(r0,r15)
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s fr15,@(r0,r15)
	mov 0x3C,r0 ; r0 set to 0x3C, r0 set to 0x3c
	fmov.s fr15,@(r0,r15)
	fmov.s @r15,fr3
	fmov fr13,fr4
	fsub fr3,fr4
	fadd fr3,fr2
	mov 0x40,r0 ; r0 set to 0x40, r0 set to 0x40
	fldi1 fr3
	fneg fr3
	fldi1 fr1
	fadd fr1,fr1
	fdiv fr4,fr2
	mov.l @(loc_8C121DE0,pc),r4 ; r4 set to 0x8C32B420, r4 set to 0x8C32B420
	fmov.s fr2,@(r0,r15)
	mov 0x44,r0 ; r0 set to 0x44, r0 set to 0x44
	fmov.s fr3,@(r0,r15)
	mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48
	fmov fr13,fr2
	fmov.s fr15,@(r0,r15)
	mov 0x4C,r0 ; r0 set to 0x4C, r0 set to 0x4c
	fmov.s fr15,@(r0,r15)
	mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
	fmov.s @r15,fr3
	fmul fr3,fr2
	fmul fr1,fr2
	fdiv fr4,fr2
	fmov fr14,fr4 ; r4 ??? bc r14 is ???, r4 ??? bc r14 is ???
	fmov.s fr2,@(r0,r15)
	mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
	fmov.s fr15,@(r0,r15)
	mov 0x1C,r0 ; r0 set to 0x1C, r0 set to 0x1c
	fmov.s fr13,@(r0,r4)
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	fmov.s @r15,fr3
	fmov.s fr3,@(r0,r4)
	fdiv fr13,fr4
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
	mov.l @(loc_8C121DE8,pc),r3 ; r3 set to 0x8C120540, r3 set to 0x8C120540
	fmov.s fr4,@(r0,r4)
	mov.l @(loc_8C121DE4,pc),r4 ; r4 set to 0x8C2DEE20, r4 set to 0x8C2DEE20
	fmov.s fr13,@(r0,r4)  ; r4 ??? bc r13 is ???, r4 ??? bc r13 is ???
	mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
	fneg fr13
	fmov.s fr13,@(r0,r4)
	mov 0x28,r0 ; r0 set to 0x28, r0 set to 0x28
	fmov.s @r15,fr3 ; r3 ??? bc r15 is ???, r3 ??? bc r15 is ???
	fmov.s fr3,@(r0,r4)
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	fmov.s fr4,@(r0,r4)
	mov r15,r4
	jsr @r3
	add 0x18,r4
	mov.l @(loc_8C121DEC,pc),r2 ; r2 set to 0x8C122780, r2 set to 0x8C122780
	jsr @r2
	nop
	add 0x58,r15
	lds.l @r15+,pr
	fmov.s @r15+,fr12
	fmov.s @r15+,fr13
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c121c30:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	fmov fr12,@-r15
	sts.l pr,@-r15
	add 0xB0,r15
	mov.l @(0x1A4,PC),r12
	mov 0x08,r0
	fldi1 fr15
	mov.l r4,@r15
	fmov fr4,@(r0,r15)
	mov.l @r15,r11
	fmov fr6,fr12
	shar r11
	fmov fr5,fr14
	jsr @r12
	mov r11,r4
	fmov fr15,fr13
	fdiv fr0,fr13
	mov 0x08,r0
	mov.l @(0x18C,PC),r9
	fmov @(r0,r15),fr3
	mov 0x04,r0
	fldi0 fr2
	mov.l @(0x188,PC),r13
	mov.l @(0x18C,PC),r14
	fdiv fr13,fr3
	fmov fr3,@(r0,r15)
	fmov @r9,fr1
	fcmp/eq fr2,fr1
	bt loc_8c121ca0
	jsr @r14
	fmov fr3,fr4
	mov.l r0,@r15
	jsr @r12
	mov r0,r4
	fmov @r9,fr3
	fmov fr0,fr4
	fadd fr15,fr3
	jsr @r14
	fmul fr3,fr4
	jsr @r13
	mov r0,r4
	fmov fr15,fr2
	fdiv fr0,fr2
	mov 0x0C,r0
	bra loc_8c121cb0
	fmov fr2,@(r0,r15)

;==============================================
	nop
	nop

;==============================================
loc_8c121ca0:
	jsr @r14
	fmov fr3,fr4
	jsr @r13
	mov r0,r4
	fmov fr15,fr3
	fdiv fr0,fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r15)

loc_8c121cb0:
	mov.l @(0x14C,PC),r10
	fldi0 fr3
	fmov @r10,fr2
	fcmp/eq fr3,fr2
	bt loc_8c121cd0
	jsr @r12
	mov r11,r4
	fmov @r10,fr3
	fmov fr0,fr4
	fadd fr15,fr3
	jsr @r14
	fmul fr3,fr4
	bra loc_8c121cd2
	mov r0,r4

;==============================================
	nop
	nop

;==============================================
loc_8c121cd0:
	mov r11,r4

loc_8c121cd2:
	jsr @r13
	nop 
	mova @(0x130,PC),r0
	fmov fr15,fr5
	fdiv fr0,fr5
	fmov fr13,fr7
	mov.l @(0x12C,PC),r5
	mov.l @(0x120,PC),r4
	mov.l @(0x130,PC),r3
	mov.l @(0x128,PC),r6
	fldi0 fr4
	mov.l @(0x130,PC),r2
	fmov fr4,@r9
	fmov fr4,@r10
	fmov @r0,fr6
	mov 0x08,r0
	fmov @(r0,r15),fr3
	mov 0x0C,r0
	fmov @(r0,r15),fr2
	fdiv fr3,fr7
	fmov fr13,fr3
	fmul fr5,fr3
	fmul fr6,fr3
	fmov fr7,fr1
	fmul fr2,fr1
	fmul fr6,fr1
	fmov fr1,@r4
	fmov fr3,@r5
	fmov @r4,fr3
	fmov @r3,fr2
	mov.l @(0x108,PC),r4
	fmul fr3,fr2
	fmov fr2,@r6
	fmov @r5,fr3
	fmov @r2,fr2
	mov.l @(0x104,PC),r5
	fmul fr3,fr2
	fmov fr2,fr5
	fmov fr2,@r4
	fmov @r6,fr6
	fcmp/gt fr5,fr6
	bf loc_8c121d30
	bra loc_8c121d32
	fmov fr6,@r5
	
;==============================================
	nop
	nop
	nop

;==============================================
loc_8c121d30:
	fmov fr5,@r5

loc_8c121d32:
	mov 0x10,r0
	fmov fr14,fr5
	fmov fr7,@(r0,r15)
	mov 0x14,r0
	fmov fr14,fr3
	fadd fr12,fr3
	fmov fr4,@(r0,r15)
	mov 0x18,r0
	fsub fr12,fr5
	fmov fr4,@(r0,r15)
	mov 0x1C,r0
	fmov fr4,@(r0,r15)
	mov 0x20,r0
	fmov fr4,@(r0,r15)
	mov 0x24,r0
	fdiv fr5,fr3
	fmov fr13,@(r0,r15)
	mov 0x28,r0
	fmov fr4,@(r0,r15)
	mov 0x2C,r0
	fmov fr4,@(r0,r15)
	mov 0x30,r0
	fmov fr4,@(r0,r15)
	mov 0x34,r0
	fmov fr4,@(r0,r15)
	mov 0x38,r0
	fmov fr3,@(r0,r15)
	mov 0x3C,r0
	fmov fr15,@(r0,r15)
	mov 0x40,r0
	fmov fr4,@(r0,r15)
	mov 0x44,r0
	fldi1 fr2
	fadd fr2,fr2
	fmov fr14,fr3
	fmul fr12,fr3
	fmov fr4,@(r0,r15)
	mov 0x48,r0
	mov.l @(0x60,PC),r4
	mov.l @(0x64,PC),r3
	fmul fr2,fr3
	fneg fr3
	fdiv fr5,fr3
	fmov fr3,@(r0,r15)
	mov 0x4C,r0
	fmov fr4,@(r0,r15)
	mov 0x1C,r0
	fmov fr15,fr4
	fdiv fr14,fr4
	fmov fr14,@(r0,r4)
	mov 0x20,r0
	fmov fr12,@(r0,r4)
	mov 0x24,r0
	fmov fr4,@(r0,r4)
	mov.l @(0x44,PC),r4
	fmov fr14,@(r0,r4)
	mov 0x0C,r0
	fneg fr14
	fmov fr14,@(r0,r4)
	mov 0x28,r0
	fmov fr12,@(r0,r4)
	mov 0x20,r0
	fmov fr4,@(r0,r4)
	mov r15,r4
	jsr @r3
	add 0x10,r4
	mov.l @(0x34,PC),r2
	jsr @r2
	nop 
	add 0x50,r15
	lds.l @r15+,pr
	fmov @r15+,fr12
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C121DD8:
	#data 0x8C2D6B58
loc_8C121DDC:
	#data bank11.loc_8c11E860
loc_8C121DE0:
	#data 0x8C32B420
loc_8C121DE4:
	#data 0x8C2DEE20
loc_8C121DE8:
	#data loc_8c120540
loc_8C121DEC:
	#data loc_8c122780
loc_8C121DF0:
	#data bank11.loc_8c11EB20
loc_8C121DF4:
	#data bank16.loc_8c16BD80
loc_8C121DF8:
	#data bank11.loc_8c11E2E0
loc_8C121DFC:
	#data bank11.loc_8c11E170
loc_8C121E00:
	#data bank16.loc_8c16BD84
loc_8C121E04:
	#data bank16.loc_8c16BD50
loc_8C121E08:
	#data 0x3F000000
loc_8C121E0C:
	#data bank16.loc_8c16BD54
loc_8C121E10:
	#data 0x8C2D6B98
loc_8C121E14:
	#data bank16.loc_8c16BD88
loc_8C121E18:
	#data 0x8C2D6B9c
loc_8C121E1C:
	#data bank16.loc_8c16BD8c
loc_8C121E20:
	#data bank16.loc_8c16BD58

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c121e30:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	fmov fr12,@-r15
	sts.l pr,@-r15
	add 0xB0,r15
	mov.l @(0x2A4,PC),r12
	mov 0x08,r0
	fldi1 fr15
	mov.l r4,@(0x4,r15)
	fmov fr4,@(r0,r15)
	mov.l @(0x4,r15),r11
	fmov fr6,fr12
	shar r11
	fmov fr5,fr14
	jsr @r12
	mov r11,r4
	fmov fr15,fr3
	fdiv fr0,fr3
	mov.l @(0x28C,PC),r10
	fldi0 fr2
	mov.l @(0x28C,PC),r13
	mov.l @(0x290,PC),r14
	fmov fr3,@r15
	fmov @r10,fr1
	fcmp/eq fr2,fr1
	bt loc_8c121e90
	jsr @r12
	mov r11,r4
	fmov @r10,fr3
	fmov fr0,fr4
	fadd fr15,fr3
	jsr @r14
	fmul fr3,fr4
	jsr @r13
	mov r0,r4
	fmov fr15,fr2
	fdiv fr0,fr2
	mov 0x0C,r0
	bra loc_8c121e9c
	fmov fr2,@(r0,r15)

;==============================================
	nop
	nop

;==============================================
loc_8c121e90:
	jsr @r13
	mov r11,r4
	fmov fr15,fr3
	fdiv fr0,fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r15)

loc_8c121e9c:
	mov.l @(0x25C,PC),r11
	mov 0x08,r0
	fldi0 fr2
	fmov @r11,fr1
	fmov @r15,fr3
	fcmp/eq fr2,fr1
	fmov @(r0,r15),fr13
	bt.s loc_8c121ed0
	fmul fr3,fr13
	fmov fr15,fr4
	jsr @r14
	fdiv fr13,fr4
	mov.l r0,@(0x4,r15)
	jsr @r12
	mov r0,r4
	fmov @r11,fr3
	fmov fr0,fr4
	fadd fr15,fr3
	bra loc_8c121ed4
	fmul fr3,fr4

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c121ed0:
	fmov fr15,fr4
	fdiv fr13,fr4

loc_8c121ed4:
	jsr @r14
	nop 
	jsr @r13
	mov r0,r4
	fmov fr15,fr5
	fdiv fr0,fr5
	mova @(0x220,PC),r0
	mov.l @(0x224,PC),r6
	mov.l @(0x218,PC),r5
	mov.l @(0x228,PC),r3
	mov.l @(0x220,PC),r4
	mov.l @(0x22C,PC),r2
	mov.l @(0x224,PC),r7
	fldi0 fr4
	fmov fr4,@r10
	fmov fr4,@r11
	fmov @r0,fr6
	mov 0x0C,r0
	fmov @(r0,r15),fr3
	fmov @r15,fr2
	fmul fr3,fr2
	fmov fr13,fr3
	fmul fr5,fr3
	fmul fr6,fr2
	fmul fr6,fr3
	fmov fr2,@r5
	fmov fr3,@r6
	fmov @r3,fr2
	fmov @r5,fr3
	mov.l @(0x20C,PC),r5
	fmul fr3,fr2
	fmov fr2,@r4
	fmov @r6,fr3
	fmov @r2,fr2
	fmul fr3,fr2
	fmov fr2,@r7
	fmov @r4,fr6
	fmov fr2,fr5
	fcmp/gt fr5,fr6
	bf loc_8c121f30
	bra loc_8c121f32
	fmov fr6,@r5

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8c121f30:
	fmov fr5,@r5

loc_8c121f32:
	fmov @r15,fr3
	mov 0x10,r0
	fmov fr14,fr5
	fsub fr12,fr5
	fmov fr3,@(r0,r15)
	mov 0x14,r0
	fmov fr14,fr3
	fadd fr12,fr3
	fmov fr4,@(r0,r15)
	mov 0x18,r0
	fmov fr4,@(r0,r15)
	mov 0x1C,r0
	fmov fr4,@(r0,r15)
	mov 0x20,r0
	fdiv fr5,fr3
	fmov fr4,@(r0,r15)
	mov 0x24,r0
	fmov fr13,@(r0,r15)
	mov 0x28,r0
	fmov fr4,@(r0,r15)
	mov 0x2C,r0
	fmov fr4,@(r0,r15)
	mov 0x30,r0
	fmov fr4,@(r0,r15)
	mov 0x34,r0
	fmov fr4,@(r0,r15)
	mov 0x38,r0
	fmov fr3,@(r0,r15)
	mov 0x3C,r0
	fmov fr15,@(r0,r15)
	mov 0x40,r0
	fmov fr4,@(r0,r15)
	fmov fr14,fr3
	fmul fr12,fr3
	fldi1 fr2
	fadd fr2,fr2
	mov 0x44,r0
	mov.l @(0x1A0,PC),r4
	fmov fr4,@(r0,r15)
	mov 0x48,r0
	fmul fr2,fr3
	fneg fr3
	fdiv fr5,fr3
	fmov fr3,@(r0,r15)
	mov 0x4C,r0
	fmov fr4,@(r0,r15)
	mov 0x1C,r0
	fmov fr15,fr4
	fdiv fr14,fr4
	fmov fr14,@(r0,r4)
	mov 0x20,r0
	fmov fr12,@(r0,r4)
	mov 0x24,r0
	fmov fr4,@(r0,r4)
	mov.l @(0x184,PC),r4
	fmov fr14,@(r0,r4)
	mov 0x0C,r0
	fneg fr14
	fmov fr14,@(r0,r4)
	mov 0x28,r0
	fmov fr12,@(r0,r4)
	mov 0x20,r0
	fmov fr4,@(r0,r4)
	mov r15,r4
	mov.l @(0x174,PC),r3
	jsr @r3
	add 0x10,r4
	mov.l @(0x170,PC),r2
	jsr @r2
	nop 
	add 0x50,r15
	lds.l @r15+,pr
	fmov @r15+,fr12
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C121FE0:
	sts.l pr,@-r15
	add 0xE8,r15
	mov.l r4,@(0x04,r15)
	mov.l @(loc_8C122134,pc),r3 ; r3 set to 0x8C120950
	mov.l @(loc_8C122130,pc),r4 ; r4 set to 0x8C2D6AD8
	jsr @r3
	mov.l r5,@r15
	mov.l @(loc_8C122138,pc),r3 ; r3 set to 0x8C11F870
	mov r15,r5
	add 0x08,r5
	jsr @r3
	mov.l @(0x04,r15),r4 ; r4 ??? bc r15 is ???
	mov 0x14,r0 ; r0 set to 0x14
	fldi1 fr4
	fmov.s @(r0,r15),fr3 ; r3 ??? bc r15 is ???
	mov 0x08,r0 ; r0 set to 0x08
	fmov fr4,fr5
	fdiv fr3,fr5
	fmov.s @(r0,r15),fr3
	mov 0x08,r0 ; r0 set to 0x08
	mov.l @(loc_8C122110,pc),r2 ; r2 set to 0x8C16BD88
	mov.l @(loc_8C12213C,pc),r3 ; r3 set to 0x8C16BD94
	fmul fr5,fr3 ; r3 ??? bc r5 is ???
	fmov.s fr3,@(r0,r15)
	mov 0x0C,r0 ; r0 set to 0x0c
	fmov.s @(r0,r15),fr3
	mov 0x0C,r0 ; r0 set to 0x0c
	fmul fr5,fr3
	fmov.s fr3,@(r0,r15)
	mova @(loc_8C122104,pc),r0  ; r0 set to 0x8C122104
	fmov.s @r0,fr5
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s @(r0,r15),fr3
	fmov.s @r2,fr0 ; r0 ??
	fadd fr4,fr3
	fmov.s @r3,fr2 ; r2 ??? bc r3 is ???
	mov.l @r15,r1
	fmul fr0,fr3
	fmov fr5,fr0
	fmac fr0,fr3,fr2
	fmov.s fr2,@r1
	mov r15,r1
	mov.l @r15,r0
	add 0x0C,r1
	fmov.s @r1,fr3
	mov 0x04,r2 ; r2 set to 0x04
	mov.l @(loc_8C122118,pc),r1 ; r1 set to 0x8C16BD8c
	fneg fr3
	fadd fr4,fr3
	fmov.s @r1,fr0
	mov.l @(loc_8C122140,pc),r3 ; r3 set to 0x8C16BD90
	fmul fr0,fr3 ; r3 ??? bc r0 is ???
	fmov.s @r3,fr2 ; r2 ??? bc r3 is ???
	fmov fr5,fr0
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r2)
	mov.l @(loc_8C122144,pc),r2 ; r2 set to 0x8C120900
	jsr @r2
	mov 0x01,r4 ; r4 set to 0x01
	add 0x18,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
	nop

;==============================================
loc_8C122060:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov.l @(0xCC,PC),r3
	mov.l @(0xDC,PC),r4
	jsr @r3
	mov.l r5,@(0x4,r15)
	mov.l @(0xDC,PC),r3
	mov.l @(0x4,r15),r5
	jsr @r3
	mov.l @r15,r4
	mov 0x01,r4
	add 0x08,r15
	mov.l @(0xC8,PC),r2
	jmp @r2
	lds.l @r15+,pr


;==============================================
loc_8C122080:
	mov.l @(0x8C,PC),r5
	mova @(0x80,PC),r0
	fmov @r0,fr5
	mov 0x04,r0
	fmov @r5,fr3
	mov.l @(0x8C,PC),r6
	fmul fr5,fr3
	fldi0 fr4
	fmov fr3,@r4
	fmov fr4,@(r0,r4)
	mov 0x08,r0
	fmov fr4,@(r0,r4)
	mov 0x0C,r0
	fmov fr4,@(r0,r4)
	mov 0x10,r0
	fmov fr4,@(r0,r4)
	mov 0x14,r0
	fmov @r6,fr3
	fmul fr5,fr3
	fneg fr3
	fmov fr3,@(r0,r4)
	mov 0x18,r0
	fmov fr4,@(r0,r4)
	mov 0x1C,r0
	fmov fr4,@(r0,r4)
	mov 0x20,r0
	fmov fr4,@(r0,r4)
	mov 0x24,r0
	fmov fr4,@(r0,r4)
	mova @(0x94,PC),r0
	fmov @r0,fr3
	mov 0x28,r0
	mov.l @(0x7C,PC),r3
	fmov fr3,@(r0,r4)
	mov 0x2C,r0
	fmov fr5,fr0
	fmov fr4,@(r0,r4)
	mov 0x30,r0
	fmov @r3,fr3
	fmov @r5,fr2
	mov.l @(0x68,PC),r2
	fmac fr0,fr2,fr3
	fmov fr3,@(r0,r4)
	mov 0x34,r0
	fmov @r6,fr2
	fmov @r2,fr3
	fmac fr0,fr2,fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov fr0,@(r0,r4)
	mov 0x3C,r0
	fldi1 fr3
	rts 
	fmov fr3,@(r0,r4)

;==============================================
	#align4
loc_8C1220EC:
	#data bank11.loc_8c11EB20
loc_8C1220F0:
	#data bank16.loc_8c16BD80
loc_8C1220F4:
	#data bank11.loc_8c11E2E0
loc_8C1220F8:
	#data bank11.loc_8c11E170
loc_8C1220FC:
	#data bank16.loc_8c16BD84
loc_8C122100:
	#data bank16.loc_8c16BD50
loc_8C122104:
	#data 0x3F000000
loc_8C122108:
	#data bank16.loc_8c16BD54
loc_8C12210c:
	#data 0x8C2D6B98
loc_8C122110:
	#data bank16.loc_8c16BD88
loc_8C122114:
	#data 0x8C2D6B9c
loc_8C122118:
	#data bank16.loc_8c16BD8c
loc_8C12211C:
	#data bank16.loc_8c16BD58
loc_8C122120:
	#data 0x8C32B420
loc_8C122124:
	#data 0x8C2DEE20
loc_8C122128:
	#data loc_8c120540
loc_8C12212C:
	#data loc_8c122780
loc_8C122130:
	#data 0x8C2D6AD8
loc_8C122134:
	#data loc_8c120950
loc_8C122138:
	#data bank11.loc_8c11F870
loc_8C12213C:
	#data bank16.loc_8c16BD94
loc_8C122140:
	#data bank16.loc_8c16BD90
loc_8C122144:
	#data loc_8c120900
loc_8C122148:
	#data 0x8C2D6A98
loc_8C12214C:
	#data bank11.loc_8c11F8B0
loc_8C122150:
	#data 0xBF000000

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C122160:
	fmov fr15,@-r15
	fmov fr14,@-r15
	mov.l @(0xC4,PC),r4
	fmov fr13,@-r15
	fmov fr12,@-r15
	fmov fr6,fr14
	sts.l pr,@-r15
	mov.w @(0xA,r4),r0
	fmov fr4,fr15
	fmov fr5,fr6
	tst r0,r0
	fmov fr5,fr13
	fldi1 fr4
	fmov fr7,fr12
	fmov fr7,fr5
	bt.s loc_8c122190
	fadd fr4,fr4
	mov.w @(0x6,r4),r0
	mov.w @(0xA0,PC),r3
	shll r0
	cmp/gt r3,r0
	bt loc_8c122190
	fmul fr4,fr5
	fmul fr4,fr6

loc_8C122190:
	mov.l @(0xA0,PC),r2
	mov.l @(0x9C,PC),r3
	mov.l @(0xA0,PC),r1
	fmov fr15,@r3
	fmov fr13,@r2
	mov.l @(0xA4,PC),r2
	mov.l @(0x9C,PC),r3
	mov.l @(0xA4,PC),r6
	mov.l @(0xA8,PC),r5
	mov.l @(0xA4,PC),r7
	fmov fr14,@r1
	fmov fr12,@r3
	fmov fr6,@r2
	fmov fr5,@r6
	mov.w @(0xA,r4),r0
	tst r0,r0
	bt loc_8c1221c0
	fmov fr15,fr3
	fmul fr4,fr3
	fmov fr14,fr2
	fmul fr4,fr2
	fmov fr3,@r7
	bra loc_8c1221c4
	fmov fr2,@r5

loc_8C1221C0:
	fmov fr15,@r7
	fmov fr14,@r5

loc_8C1221C4:
	mov.l @(0x8C,PC),r3
	fmov @r5,fr2
	fmov @r3,fr3
	mov.l @(0x84,PC),r4
	fmul fr3,fr2
	mov.l @(0x8C,PC),r2
	mov.l @(0x84,PC),r5
	fmov fr2,@r4
	fmov @r6,fr2
	fmov @r2,fr3
	mov.l @(0x84,PC),r6
	fmul fr3,fr2
	fmov fr2,fr4
	fmov fr2,@r5
	fmov @r4,fr5
	fcmp/gt fr4,fr5
	bf loc_8c1221f0
	bra loc_8c1221f2
	fmov fr5,@r6

;==============================================
	nop
	nop
	nop

;==============================================
loc_8C1221F0:
	fmov fr4,@r6

loc_8C1221F2:
	mov.l @(0x70,PC),r4
	bsr loc_8c122080
	nop 
	lds.l @r15+,pr
	fmov fr12,fr7
	fmov fr13,fr5
	fmov @r15+,fr12
	fmov fr14,fr6
	fmov @r15+,fr13
	fmov fr15,fr4
	fmov @r15+,fr14
	bra loc_8c1222d0
	fmov @r15+,fr15

;==============================================
	nop
	nop

;==============================================
loc_8C122210:
	mov.l @(0x54,PC),r2
	mov 0x01,r3
	mov.l @(0x54,PC),r1
	mov.l r3,@r2
	mov.l @(0x58,PC),r2
	mov.l @(0x54,PC),r3
	fmov fr4,@r1
	mov.l @(0x58,PC),r1
	fmov fr5,@r3
	fmov fr6,@r2
	rts 
	fmov fr7,@r1

;==============================================
loc_8c122228:
	#data 0x01E0
	#align4
loc_8c12222c:
	#data 0x8C2DEE5c
loc_8c122230:
	#data 0x8C2D6BA8
loc_8c122234:
	#data 0x8C2D6BAc
loc_8c122238:
	#data 0x8C2D6BA0
loc_8c12223c:
	#data 0x8C2D6BA4
loc_8C122240:
	#data bank16.loc_8c16BD94
loc_8C122244:
	#data bank16.loc_8c16BD8c
loc_8C122248:
	#data bank16.loc_8c16BD90
loc_8C12224C:
	#data bank16.loc_8c16BD88
loc_8c122250:
	#data 0x8C2D6B98
loc_8C122254:
	#data bank16.loc_8c16BD50
loc_8C122258:
	#data 0x8C2D6B9c
loc_8C12225C:
	#data bank16.loc_8c16BD54
loc_8C122260:
	#data bank16.loc_8c16BD58
loc_8C122264:
	#data 0x8C2D6B18
loc_8C122268:
	#data bank16.loc_8c16BD98
loc_8C12226c:
	#data 0x8C2D6BB0
loc_8C122274:
	#data 0x8C2D6BB4
loc_8C122278:
	#data 0x8C2D6BB8
loc_8C12227c:
	#data 0x8C2D6BBc

;==============================================
	nop
	nop

;==============================================
loc_8C122280:
	mov.l @(0x170,PC),r2
	sts.l pr,@-r15
	mov.l @r2,r3
	tst r3,r3
	bt loc_8c1222b4
	mov.l @(0x16C,PC),r3
	mov.l @(0x16C,PC),r1
	fmov @r3,fr3
	fmov @r1,fr2
	ftrc fr3,fpul
	mov.l @(0x168,PC),r2
	mov.l @(0x16C,PC),r3
	fmov @r2,fr1
	fmov @r3,fr3
	sts fpul,r7
	ftrc fr2,fpul
	mov.l @(0x164,PC),r2
	sts fpul,r6
	ftrc fr1,fpul
	sts fpul,r5
	ftrc fr3,fpul
	jsr @r2
	sts fpul,r4
	mov.l @(0x144,PC),r2
	mov 0x00,r3
	mov.l r3,@r2

loc_8c1222b4:
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
	nop
	nop
	nop

;==============================================
loc_8c1222c0:
	mov.l @(0x130,PC),r0
	mov 0x00,r1
	rts 
	mov.l r1,@r0

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C1222D0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	ftrc fr4,fpul
	fmov fr4,fr3
	fadd fr6,fr3
	fmov fr5,fr2
	fadd fr7,fr2
	mov.l @(0x118,PC),r9
	mov 0x00,r12
	sts fpul,r14
	ftrc fr5,fpul
	mov.w @(0x4,r9),r0
	cmp/pz r14
	sts fpul,r11
	ftrc fr3,fpul
	sts fpul,r13
	ftrc fr2,fpul
	sts fpul,r10
	bt.s loc_8c122310
	mov r0,r4
	bra loc_8c122316
	mov r12,r14

;==============================================
	nop

;==============================================
loc_8C122310:
	cmp/ge r4,r14
	bf loc_8c122316
	mov r4,r14

loc_8C122316:
	cmp/pz r13
	bt loc_8c122320
	bra loc_8c122326
	mov r12,r13

;==============================================
	nop

;==============================================
loc_8C122320:
	cmp/ge r4,r13
	bf loc_8c122326
	mov r4,r13

loc_8C122326:
	mov.w @(0x6,r9),r0
	cmp/pz r11
	bt.s loc_8c122340
	mov r0,r4
	bra loc_8c122346
	mov r12,r11

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
#align4
loc_8C122340:
	cmp/ge r4,r11
	bf loc_8c122346
	mov r4,r11

loc_8C122346:
	cmp/pz r10
	bt loc_8c122350
	bra loc_8c122356
	mov r12,r10

;==============================================
	nop

;==============================================
loc_8C122350:
	cmp/ge r4,r10
	bf loc_8c122356
	mov r4,r10

loc_8C122356:
	lds r10,fpul
	mov.l @(0xB4,PC),r3
	fldi1 fr15
	float fpul,fr3
	lds r13,fpul
	mov.l @r3,r0
	float fpul,fr2
	lds r11,fpul
	cmp/eq 0x01,r0
	fmov fr3,fr13
	float fpul,fr3
	lds r14,fpul
	fmov fr2,fr6
	float fpul,fr2
	fmov fr3,fr14
	bf.s loc_8c122430
	fmov fr2,fr4
	mov.l @(0x98,PC),r1
	mov.l @r1,r0
	cmp/eq 0x00,r0
	bt loc_8c1223a0
	cmp/eq 0x01,r0
	bt loc_8c1223b0
	cmp/eq 0x02,r0
	bt loc_8c1223c0
	cmp/eq 0x03,r0
	bt loc_8c1223d0
	cmp/eq 0x04,r0
	bt loc_8c1223e0
	bra loc_8c1223e4
	nop 

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C1223A0:
	mova @(0x74,PC),r0
	bra loc_8c1223e4
	fmov @r0,fr15

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C1223B0:
	mova @(0x68,PC),r0
	bra loc_8c1223e4
	fmov @r0,fr15

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C1223C0:
	mova @(0x5C,PC),r0
	bra loc_8c1223e4
	fmov @r0,fr15

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C1223D0:
	mova @(0x50,PC),r0
	bra loc_8c1223e4
	fmov @r0,fr15

;==============================================
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C1223E0:
	mova @(0x44,PC),r0
	fmov @r0,fr15

loc_8C1223E4:
	fmov fr13,fr7
	fmul fr15,fr7
	fmov fr14,fr5
	bsr loc_8c122210
	fmul fr15,fr5
	bra loc_8c122436
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C1223F4:
	#data bank16.loc_8c16BD98
loc_8C1223F8:
	#data 0x8C2D6BBc
loc_8C1223Fc:
	#data 0x8C2D6BB8
loc_8C122400:
	#data 0x8C2D6BB4
loc_8C122404:
	#data 0x8C2D6BB0
loc_8C122408:
	#data bank17.loc_8c17E3C0
loc_8C12240c:
	#data 0x8C2DEE5c
loc_8C122410:
	#data 0x8C2AA51c
loc_8C122414:
	#data bank16.loc_8c16BBF0
loc_8C122418:
	#data 0x3F843958
loc_8C12241c:
	#data 0x3F8872B0
loc_8C122420:
	#data 0x3F8CCCCd
loc_8C122424:
	#data 0x3F910625
loc_8C122428:
	#data 0x3F953F7d

;==============================================
	nop
	nop

;==============================================
loc_8C122430:
	fmov fr13,fr7
	bsr loc_8c122210
	fmov fr14,fr5

loc_8C122436:
	mov.w @(0x6,r9),r0
	mov.l @(0xF4,PC),r6
	mov r0,r4
	mov.w @(0xA,r9),r0
	tst r0,r0
	bf loc_8c122490
	mov.l @(0xF0,PC),r1
	mov 0xFB,r3
	mov r11,r7
	shad r3,r14
	shad r3,r13
	mov.l r14,@r15
	mov.l r13,@(0x4,r15)
	shad r3,r7
	mov.l @r1,r2
	mov r10,r5
	tst r2,r2
	bf.s loc_8c12247a
	shad r3,r5
	mov.w @(0xCC,PC),r2
	mov r4,r3
	shll r3
	cmp/gt r2,r3
	bt.s loc_8c122470
	mov r12,r7
	mov r4,r5
	add 0x0F,r5
	bra loc_8c122476
	mov 0xFC,r3

;==============================================
loc_8C122470:
	mov r4,r5
	mov 0xFB,r3
	add 0x1F,r5

loc_8C122476:
	shad r3,r5
	add 0xFF,r5

loc_8C12247A:
	mov.l @(0xBC,PC),r1
	mov.l @r15,r2
	mov.l r2,@r6
	mov.l @(0x4,r15),r3
	mov.l r3,@r1
	bra loc_8c1224c4
	nop 

;==============================================
	nop
	nop
	nop
	nop

;==============================================
loc_8C122490:
	mov 0xFC,r3
	mov.w @(0x96,PC),r2
	shad r3,r13
	shad r3,r14
	mov r4,r3
	shll r3
	mov.l r14,@(0x4,r15)
	cmp/gt r2,r3
	mov.l r13,@r15
	bt.s loc_8c1224b0
	mov r12,r7
	mov r4,r5
	add 0x0F,r5
	bra loc_8c1224b6
	mov 0xFC,r3

;==============================================
	nop

;==============================================
loc_8C1224B0:
	mov r4,r5
	mov 0xFB,r3
	add 0x1F,r5

loc_8C1224B6:
	shad r3,r5
	mov.l @(0x7C,PC),r1
	mov.l @(0x4,r15),r2
	add 0xFF,r5
	mov.l r2,@r6
	mov.l @r15,r3
	mov.l r3,@r1

loc_8C1224C4:
	mov.l @(0x74,PC),r2
	mov.l @(0x7C,PC),r0
	mov.l r7,@r2
	mov.l @(0x74,PC),r3
	mov.l r5,@r3
	mov.l @r6,r2
	mov.l @r0,r1
	cmp/eq r2,r1
	bf loc_8c1224fa
	mov.l @(0x60,PC),r2
	mov.l @(0x6C,PC),r1
	mov.l @r2,r3
	mov.l @r1,r2
	cmp/eq r3,r2
	bf loc_8c1224fa
	mov.l @(0x58,PC),r1
	mov.l @(0x64,PC),r3
	mov.l @r1,r2
	mov.l @r3,r1
	cmp/eq r2,r1
	bf loc_8c1224fa
	mov.l @(0x50,PC),r1
	mov.l @(0x5C,PC),r2
	mov.l @r1,r3
	mov.l @r2,r1
	cmp/eq r3,r1
	bt loc_8c122510

loc_8C1224FA:
	mov.l @(0x58,PC),r3
	mov 0x01,r0
	bra loc_8c122514
	mov.l r0,@r3

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8C122510:
	mov.l @(0x40,PC),r1
	mov.l r12,@r1

loc_8C122514:
	add 0x08,r15
	lds.l @r15+,pr
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c12252c:
	#data 0x01E0
	#align4

loc_8C122530:
	#data bank16.loc_8c16BD5c
loc_8C122534:
	#data 0x8C2AA518
loc_8C122538:
	#data bank16.loc_8c16BD60
loc_8C12253C:
	#data bank16.loc_8c16BD64
loc_8C122540:
	#data bank16.loc_8c16BD68
loc_8C122544:
	#data bank16.loc_8c16BD6c
loc_8C122548:
	#data bank16.loc_8c16BD70
loc_8C12254C:
	#data bank16.loc_8c16BD74
loc_8C122550:
	#data bank16.loc_8c16BD78
loc_8C122554:
	#data bank16.loc_8c16BD7c

;==============================================
	#align16_nop

;==============================================
loc_8C122560:
	sts.l pr,@-r15
	add 0xCC,r15
	mov 0x14,r0 ; r0 set to 0x14
	mov.l @(loc_8C122650,pc),r3 ; r3 set to 0x8C120950
	fmov.s fr4,@(r0,r15)
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s fr5,@(r0,r15)
	mov 0x10,r0 ; r0 set to 0x10
	fmov.s fr6,@(r0,r15)
	mov.l r4,@(0x0C,r15)
	mov.l @(loc_8C12264C,pc),r4 ; r4 set to 0x8C2D6B18
	mov.l r5,@(0x04,r15)
	jsr @r3
	mov.l r6,@r15
	mov.l @(loc_8C122658,pc),r2 ; r2 set to 0x8C120540
	mov.l @(loc_8C122654,pc),r4 ; r4 set to 0x8C2D6AD8
	jsr @r2
	nop
	mov 0x14,r0 ; r0 set to 0x14
	mov r15,r5
	fmov.s @(r0,r15),fr3 ; r3 ??? bc r15 is ???
	mov 0x28,r0 ; r0 set to 0x28
	mov.l @(loc_8C12265C,pc),r3 ; r3 set to 0x8C11F870
	mov r15,r4 ; r4 ??? bc r15 is ???
	fmov.s fr3,@(r0,r15)
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s @(r0,r15),fr3 ; r3 ??? bc r15 is ???
	mov 0x2C,r0 ; r0 set to 0x2c
	add 0x18,r5
	fmov.s fr3,@(r0,r15)
	mov 0x10,r0 ; r0 set to 0x10
	fmov.s @(r0,r15),fr3
	mov 0x30,r0 ; r0 set to 0x30
	fmov.s fr3,@(r0,r15)
	jsr @r3
	add 0x28,r4
	mov 0x24,r0 ; r0 set to 0x24
	fldi1 fr4
	fmov.s @(r0,r15),fr3
	mov 0x18,r0 ; r0 set to 0x18
	mov.l @(0x0C,r15),r3
	fdiv fr3,fr4
	fmov.s @(r0,r15),fr3
	mov 0x1C,r0 ; r0 set to 0x1c
	fmul fr4,fr3
	fmov.s fr3,@r3
	fmov.s @(r0,r15),fr3
	mov.l @(0x04,r15),r3
	fmul fr4,fr3
	fmov.s fr3,@r3
	mov.l @r15,r3
	fmov.s fr4,@r3
	mov.l @(loc_8C122660,pc),r3 ; r3 set to 0x8C120900
	jsr @r3
	mov 0x01,r4 ; r4 set to 0x01
	add 0x34,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
	#align16_nop

;==============================================
loc_8c1225e0:
	sts.l pr,@-r15
	mov.l @(0x80,PC),r3
	mov.l @(0x64,PC),r4
	jsr @r3
	nop 
	mov.l @(0x6C,PC),r2
	mov.l @(0x64,PC),r4
	jmp @r2
	lds.l @r15+,pr

;==============================================
	#align16_nop

;==============================================
loc_8c122600:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l @(0x54,PC),r3
	mov r5,r14
	jsr @r3
	mov r15,r5
	mov 0x0C,r0
	fldi1 fr4
	fmov @(r0,r15),fr3
	mov 0x04,r0
	fdiv fr3,fr4
	fmov @r15,fr3
	fmul fr4,fr3
	fmov fr3,@r14
	fmov @(r0,r15),fr3
	mov 0x04,r0
	fmul fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x08,r0
	fmov fr4,@(r0,r14)
	add 0x10,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
loc_8c122640:
	mov.l @(0x24,PC),r4
	mov.l @(0x8,PC),r5
	mov.l @(0x8,r4),r4
	bra loc_8c122670
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C12264C:
	#data 0x8C2D6B18
loc_8C122650:
	#data loc_8c120950
loc_8C122654:
	#data 0x8C2D6AD8
loc_8C122658:
	#data loc_8c120540
loc_8C12265C:
	#data bank11.loc_8c11F870
loc_8C122660:
	#data loc_8c120900
loc_8C122664:
	#data bank11.loc_8c1201E0
loc_8C122668:
	#data 0x8C2D690c

;==============================================
	#align16_nop

;==============================================
loc_8c122670:
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	fmov fr12,@-r15
	fschg 
	fmov @r4+,fr0
	fmov @r4+,fr2
	fmov @r4+,fr4
	fmov @r4+,fr6
	fmov @r4+,fr8
	fmov @r4+,fr10
	fmov @r4+,fr12
	fmov @r4+,fr14
	fschg 
	frchg 
	mov r5,r4
	pref @r4
	ftrv xmtrx,fv0
	add 0x20,r4
	ftrv xmtrx,fv4
	ftrv xmtrx,fv8
	ftrv xmtrx,fv12
	pref @r4
	frchg 
	fmov @r5+,fr0
	fmov @r5+,fr1
	fmov @r5+,fr2
	fmov @r5+,fr3
	fmov @r5+,fr4
	fmov @r5+,fr5
	fmov @r5+,fr6
	fmov @r5+,fr7
	fmov @r5+,fr8
	fmov @r5+,fr9
	fmov @r5+,fr10
	fmov @r5+,fr11
	fmov @r5+,fr12
	fmov @r5+,fr13
	fmov @r5+,fr14
	fmov @r5+,fr15
	frchg 
	ftrv xmtrx,fv0
	ftrv xmtrx,fv4
	ftrv xmtrx,fv8
	ftrv xmtrx,fv12
	frchg 
	fmov @r15+,fr12
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	rts 
	nop 

;==============================================
	#align16_nop

;==============================================
loc_8c1226e0:
	sts.l pr,@-r15
	mov.l @(0x38,PC),r3
	mov.l @(0x30,PC),r4
	jsr @r3
	nop 
	mov.l @(0x38,PC),r3
	mov.l @(0x30,PC),r4
	jsr @r3
	mov.l @(0x8,r4),r4
	mov.l @(0x30,PC),r3
	mov.l @(0x30,PC),r4
	jsr @r3
	mov.l @(0x8,r4),r4
	mov.l @(0x30,PC),r2
	jsr @r2
	nop 
	mov.l @(0x2C,PC),r3
	mov 0x01,r4
	jmp @r3
	lds.l @r15+,pr

;==============================================
	#align16_nop

;==============================================
loc_8C122710:
	mov.l @(loc_8C122734,pc),r3 ; r3 set to 0x8C32B448
	rts
	fmov.s fr4,@r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C122718:
	#data 0x8C2D6B18
loc_8C12271C:
	#data loc_8c120950
loc_8C122720:
	#data 0x8C2D690c
loc_8C122724:
	#data loc_8c120540
loc_8C122728:
	#data 0x8C2D6900
loc_8C12272C:
	#data loc_8c120660
loc_8C122730:
	#data loc_8c1208A0
loc_8C122734:
	#data 0x8C32B448

;==============================================
	#align16_nop

;==============================================
loc_8C122740:
	frchg
	fmov.s @r4+,fr1
	fmov.s @r4,fr2
	add 0x08,r4
	fmov.s @r4,fr3
	fmov.s @r4+,fr0
	fneg fr3
	fmov.s @r4+,fr5
	fmov.s @r4,fr6
	add 0x08,r4
	fmov.s @r4,fr7
	fmov.s @r4+,fr4
	fneg fr7
	fmov.s @r4+,fr9
	fmov.s @r4,fr10
	add 0x08,r4
	fmov.s @r4,fr11
	fmov.s @r4+,fr8
	fneg fr11
	fmov.s @r4+,fr13
	fmov.s @r4,fr14
	add 0x08,r4
	fmov.s @r4,fr15
	fmov.s @r4+,fr12
	fneg fr15
	frchg
	rts
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C122780:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C1227B8,pc),r13 ; r13 set to 0x8C11FB70
	mov.l @(loc_8C1227B4,pc),r14 ; r14 set to 0x8C2D6C40
	jsr @r13
	mov r14,r4 ; r4 set to 0x8C2D6C40
	mov.l @(loc_8C1227C0,pc),r3 ; r3 set to 0x8C122740
	mov.l @(loc_8C1227BC,pc),r4 ; r4 set to 0x8C2D6B18
	jsr @r3
	nop
	mov.l @(loc_8C1227C4,pc),r2 ; r2 set to 0x8C1205A0
	jsr @r2
	mov r14,r4 ; r4 set to 0x8C2D6C40
	mov.l @(loc_8C1227C8,pc),r4 ; r4 set to 0x8C2D6BC0
	jsr @r13
	nop
	mov.l @(loc_8C1227CC,pc),r4 ; r4 set to 0x8C2D6C00
	jsr @r13
	nop
	lds.l @r15+,pr
	mov.l @(loc_8C1227D0,pc),r3 ; r3 set to 0x8C120250
	mov r14,r4 ; r4 set to 0x8C2D6C40
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C1227B4:
	#data 0x8C2D6C40
loc_8C1227B8:
	#data bank11.loc_8c11FB70
loc_8C1227BC:
	#data 0x8C2D6B18
loc_8C1227C0:
	#data loc_8c122740
loc_8C1227C4:
	#data loc_8c1205A0
loc_8C1227C8:
	#data 0x8C2D6BC0
loc_8C1227CC:
	#data 0x8C2D6C00
loc_8C1227D0:
	#data loc_8c120250
	#align16

;==============================================
loc_8C1227E0:
	mov.l r14,@-r15
	mov 0x00,r3
	mov.l @(0xDC,PC),r14
	mov.l @(0xD8,PC),r2
	sts.l pr,@-r15
	mov.l r3,@r2
	mov.l @r14,r14
	tst r14,r14
	bt loc_8c1227f6
	jsr @r14
	nop 

loc_8C1227F6:
	lds.l @r15+,pr
	mov 0x00,r0
	rts 
	mov.l @r15+,r14

;==============================================
	nop

;==============================================
loc_8C122800:
	mov.l r14,@-r15
	mov 0x01,r3
	mov.l @(0xC0,PC),r14
	mov.l @(0xB8,PC),r2
	sts.l pr,@-r15
	mov.l r3,@r2
	mov.l @r14,r14
	tst r14,r14
	bt loc_8c122816
	jsr @r14
	nop 

loc_8C122816:
	lds.l @r15+,pr
	mov 0x00,r0
	rts 
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8C122820:
	mov.l r14,@-r15
	mov 0x02,r3
	mov.l @(0xA4,PC),r14
	mov.l @(0x98,PC),r2
	sts.l pr,@-r15
	mov.l r3,@r2
	mov.l @r14,r14
	tst r14,r14
	bt loc_8c122836
	jsr @r14
	nop 

loc_8c122836:
	lds.l @r15+,pr
	mov 0x00,r0
	rts 
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8C122840:
	mov.l r14,@-r15
	mov 0x03,r3
	mov.l @(0x88,PC),r14
	mov.l @(0x78,PC),r2
	sts.l pr,@-r15
	mov.l r3,@r2
	mov.l @r14,r14
	tst r14,r14
	bt loc_8c122856
	jsr @r14
	nop 

loc_8C122856:
	mov.l @(0x7C,PC),r3
	mov.w @(0x62,PC),r2
	mov.l r2,@r3
	lds.l @r15+,pr
	mov 0x00,r0
	rts 
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8C122870:
	mov.l r14,@-r15
	mov 0x05,r3
	mov.l @(0x60,PC),r14
	mov.l @(0x48,PC),r2
	sts.l pr,@-r15
	mov.l r3,@r2
	mov.l @r14,r14
	tst r14,r14
	bt loc_8c122886
	jsr @r14
	nop 

loc_8C122886:
	mov.l @(0x54,PC),r3
	mov 0x03,r2
	mov.l r2,@r3
	lds.l @r15+,pr
	mov 0x00,r0
	rts 
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8C1228A0:
	mov.l r14,@-r15
	mov 0x04,r3
	mov.l @(0x38,PC),r14
	mov.l @(0x18,PC),r2
	sts.l pr,@-r15
	mov.l r3,@r2
	mov.l @r14,r14
	tst r14,r14
	bt loc_8c1228b6
	jsr @r14
	nop 

loc_8C1228B6:

	lds.l @r15+,pr
	mov 0x00,r0
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1228be:
	#data 0x4000
	#align4

loc_8c1228c0:
	#data 0x8C2D6CE8
loc_8c1228c4:
	#data 0x8C2D6C80
loc_8c1228c8:
	#data 0x8C2D6C84
loc_8c1228cc:
	#data 0x8C2D6C88
loc_8c1228d0:
	#data 0x8C2D6C8c
loc_8c1228d4:
	#data 0xA05F6900
loc_8c1228d8:
	#data 0x8C2D6C90
loc_8c1228dc:
	#data 0xA05F705c
loc_8c1228e0:
	#data 0x8C2D6CB0

;==============================================
	#align16_nop

;==============================================
loc_8c1228f0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	stc sr, r3
	mov.l @(loc_8C122A00,pc),r2
	mov.l r4,@r15
	mov.l r3,@(0x04,r15)
	or r2,r3
	ldc r3, sr
	mov 0x00,r14
	mov.l @(loc_8C122A08,pc),r12
	mov.l @(loc_8c122a04,pc),r7
	mov r14,r0
	mov 0xFF,r6
	mov 0x34,r5

loc_8c122916:
	mov.l r14,@(r0,r7)
	mov.l r6,@(r0,r12)
	add 0x04,r0
	cmp/hs r5,r0
	bf loc_8c122916
	mov.l @(loc_8c122a0c,pc),r13
	mov r14,r11
	mov 0x0C,r10

loc_8c122926:
	mov.w @(0x02,r13),r0
	mov r0,r5
	bsr loc_8c122be0
	mov.w @r13,r4
	add 0x01,r11
	cmp/ge r10,r11
	bf/s loc_8c122926
	add 0x04,r13
	mov r14,r13
	mov 0x0D,r11

loc_8c12293a:
	mov 0x00,r5
	bsr loc_8c122aa0
	mov r13,r4
	add 0x01,r13
	cmp/ge r11,r13
	bf loc_8c12293a
	bsr loc_8c122c80
	mov 0x00,r4
	mov.l @(loc_8c122a14,pc),r2
	mov.l @(loc_8c122a10,pc),r4
	jsr @r2
	mov 0x00,r5
	mov.l @(loc_8c122a1c,pc),r5
	mov 0x00,r7
	mov.w @(loc_8C1229F8,pc),r4
	mov.l @(loc_8c122a18,pc),r14
	jsr @r14
	mov 0x58,r6
	mov.l @(loc_8c122a20,pc),r5
	mov 0x00,r7
	mov.w @(loc_8C1229FA,pc),r4
	mov.l r0,@(0x04,r12)
	jsr @r14
	mov r7,r6
	mov.l r0,@(0x08,r12)
	mov.l @r15,r3
	tst r3,r3
	bt loc_8c12298a
	mov.w @(loc_8C1229FC,pc),r4
	mov 0x00,r7
	mov.l @(loc_8c122a24,pc),r5
	jsr @r14
	mov r7,r6
	mov.l @(loc_8c122a28,pc),r5
	mov 0x00,r7
	mov.w @(loc_8C1229FE,pc),r4
	mov.l r0,@(0x0C,r12)
	jsr @r14
	mov r7,r6
	mov.l r0,@(0x10,r12)

loc_8c12298a:
	mov.l @(loc_8c122a30,pc),r3
	mov.l @(loc_8c122a2c,pc),r4
	jsr @r3
	mov 0x00,r5
	bsr loc_8c122cb0
	mov 0x00,r4
	mov.l @(0x04,r15),r3
	ldc r3, sr
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

;==============================================
loc_8c1229b0:
	bra loc_8c1228f0
	mov 0x01,r4

;==============================================
	#align16_nop

;==============================================
loc_8C1229C0:
	bra loc_8C1228F0
	mov 0x00,r4

;==============================================
	#align16_nop

;==============================================
loc_8C1229D0:
	mov.l @(loc_8C122A04,pc),r3 ; r3 set to 0x8C2D6C80
	mov.l r5,@r3 ; r3 ??? bc r5 is ???
	rts
	mov 0x01,r0

;==============================================
	#align16_nop

;==============================================
loc_8C1229E0:
	mov.l @(loc_8C122A34,pc),r3 ; r3 set to 0x8C2D6C84
	mov.l r5,@r3 ; r3 ??? bc r5 is ???
	rts
	mov 0x01,r0

;==============================================
	#align16_nop

;==============================================
loc_8C1229F0:
	mov.l @(loc_8C122A38,pc),r3 ; r3 set to 0x8C2D6C88
	mov.l r5,@r3 ; r3 ??? bc r5 is ???
	rts
	mov 0x01,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1229f8:
	#data 0x0900
loc_8c1229fa:
	#data 0x0920
loc_8c1229fc:
	#data 0x0A40
loc_8c1229fe:
	#data 0x0B00
	#align4

loc_8c122a00:
	#data 0x10000000
loc_8C122A04:
	#data 0x8C2D6C80
loc_8c122a08:
	#data 0x8C2D6CB4
loc_8C122A0C:
	#data bank13.loc_8c13f4C2
loc_8C122A10:
	#data loc_8c1227E0
loc_8C122A14:
	#data bank17.loc_8c17AE00
loc_8C122A18:
	#data bank18.loc_8c1844D4
loc_8C122A1C:
	#data loc_8c122800
loc_8C122A20:
	#data loc_8c122820
loc_8C122A24:
	#data loc_8c122840
loc_8C122A28:
	#data loc_8c122870
loc_8C122A2C:
	#data loc_8c1228A0
loc_8C122A30:
	#data bank17.loc_8c17AF80
loc_8C122A34:
	#data 0x8C2D6C84
loc_8C122A38:
	#data 0x8C2D6C88

;==============================================
	#align16_nop

;==============================================
loc_8C122A40:
	mov.l @(loc_8C122B80,pc),r3 ; r3 set to 0x8C2D6C8c
	mov.l r5,@r3 ; r3 ??? bc r5 is ???
	rts
	mov 0x01,r0

;==============================================
	#align16_nop

;==============================================
loc_8C122A50:
	mov.l @(loc_8C122B84,pc),r3 ; r3 set to 0x8C2D6C90
	mov.l r5,@r3 ; r3 ??? bc r5 is ???
	rts
	mov 0x01,r0

;==============================================
	#align16_nop

;==============================================
loc_8C122A60:
	mov.l @(loc_8C122B88,pc),r0 ; r0 set to 0x8C13F4B4
	add 0xFB,r4
	shll r4
	mov.w @(loc_8C122B78,pc),r1 ; r1 set to 0x1C0
	stc vbr, r2
	mov.w @(r0,r4),r4
	shlr2 r4
	add r1,r2
	shlr r4
	add r2,r4
	mov.l r5,@r4
	rts
	mov 0x01,r0

;==============================================
	#align16_nop

;==============================================
loc_8C122A80:
	mov.l @(loc_8C122B8C,pc),r3 ; r3 set to 0x8C2D6CB0
	mov.l r5,@r3 ; r3 ??? bc r5 is ???
	rts
	mov 0x01,r0

;==============================================
	#align16_nop

;==============================================
loc_8C122A90:
	rts
	mov 0x00,r0

;==============================================
	#align16_nop

;==============================================
loc_8C122AA0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	stc sr, r0
	mov.w @(loc_8C122B7A,pc),r3 ; r3 set to 0xFF0f
	mov r4,r14
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.l r0,@r15
	stc sr, r0
	and r3,r0
	or 0xE0,r0
	ldc r0, sr
	mov 0x0D,r2 ; r2 set to 0x0d
	cmp/ge r2,r14
	bt loc_8C122AE0
	mov.l @(loc_8C122B90,pc),r0 ; r0 set to 0x8C16BD9c
	mov r14,r1
	shll2 r1
	mov.l @(r0,r1),r3 ; r3 ??? bc r1 is ???
	jsr @r3
	mov r14,r4
	bra loc_8C122AE4
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C122AE0:
	bsr loc_8C122A90
	mov r14,r4

loc_8C122AE4:
	mov r0,r4
	mov.l @r15,r0
	stc sr, r2
	mov.w @(loc_8C122B7A,pc),r3 ; r3 set to 0xFF0F, r3 set to 0xFF0f
	and 0x0F,r0
	shll2 r0
	and r3,r2
	shll2 r0
	or r2,r0
	ldc r0, sr
	mov r4,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8c122b10:
	mov 0x0D,r3
	cmp/ge r3,r4
	bt loc_8c122b30
	mov.l @(0x7C,PC),r0
	shll2 r4
	mov.l @(r0,r4),r1
	mov.l r1,@r5
	bra loc_8c122b36
	mov 0x01,r4

;==============================================
	#align16_nop

;==============================================
loc_8c122b30:
	mov 0x00,r6
	mov r6,r4
	mov.l r6,@r5

loc_8c122b36:
	rts 
	mov r4,r0

;==============================================
	#align16_nop

;==============================================
;unused?
loc_8c122b40:
	mov.l @(0x54,PC),r3
	rts 
	mov.l @r3,r0


;==============================================
	#align16_nop

;==============================================
loc_8C122B50:
	rts
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C122B60:
	mov.l @(loc_8C122B9C,pc),r1 ; r1 set to 0xA05F6900
	mov.w @(loc_8C122B7C,pc),r2 ; r2 set to 0x4000
	rts
	mov.l r2,@r1

;==============================================
	#align16_nop

;==============================================
loc_8C122B70:
	mov.l @(loc_8C122BA0,pc),r0 ; r0 set to 0xA05F705c
	mov 0x03,r3 ; r3 set to 0x03
	rts
	mov.l r3,@r0

;==============================================
loc_8C122B78:
	#data 0x01C0
loc_8C122B7A:
	#data 0xFF0f
loc_8C122B7C:
	#data 0x4000
	#align4

loc_8C122B80:
	#data 0x8C2D6C8c
loc_8C122B84:
	#data 0x8C2D6C90
loc_8C122B88:
	#data bank13.loc_8c13f4B4
loc_8C122B8C:
	#data 0x8C2D6CB0
loc_8C122B90:
	#data bank16.loc_8c16BD9c
loc_8C122B94:
	#data 0x8C2D6C80
loc_8C122B98:
	#data 0x8C2D6CE8
loc_8C122B9C:
	#data 0xA05F6900
loc_8C122BA0:
	#data 0xA05F705c
;==============================================
	#align16_nop

;==============================================
loc_8C122BB0:
	mov.l r14,@-r15
	mov 0x06,r3
	mov r4,r14
	cmp/ge r3,r14
	bt loc_8c122bd0
	mov.l @(0x110,PC),r0
	mov r14,r1
	shll2 r1
	mov r14,r4
	mov.l @(r0,r1),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8C122BD0:
	rts 
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8C122BE0:
	add 0xFC,r15
	mov 0x0C,r3
	cmp/gt r3,r4
	bt loc_8c122bf2
	cmp/pz r5
	bf loc_8c122bf2
	mov 0x0F,r2
	cmp/gt r2,r5
	bf loc_8c122c00

loc_8C122BF2:
	mov 0x00,r0
	rts 
	add 0x04,r15

;==============================================
	#align16_nop

;==============================================
loc_8C122C00:
	stc sr,r7
	mov.l @(0xCC,PC),r2
	or r7,r2
	ldc r2,sr
	mov.l @(0xC8,PC),r3
	mov r4,r6
	shll2 r6
	mov.l @(0xC8,PC),r4
	add r3,r6
	mov.w @(0x2,r6),r0
	mov.b @r6,r2
	mov.l r0,@r15
	not r0,r0
	add r2,r4
	mov.w @r4,r2
	and r2,r0
	mov r0,r2
	mov.b @(0x1,r6),r0
	shad r0,r5
	or r5,r2
	mov.w r2,@r4
	mov.w @r4,r1
	ldc r7,sr
	mov 0x01,r0
	rts 
	add 0x04,r15

;==============================================
	#align16_nop

;==============================================
loc_8c122c40:
	mov 0x0C,r3
	cmp/gt r3,r4
	bf loc_8c122c50
	rts 
	mov 0x00,r0

;==============================================
	#align16_nop

;==============================================
loc_8c122c50:
	mov.l @(0x80,PC),r3
	mov r4,r6
	shll2 r6
	mov.l @(0x80,PC),r4
	add r3,r6
	mov.b @r6,r2
	add r2,r4
	mov.w @r4,r0
	extu.w r0,r2
	mov.b @(0x1,r6),r0
	mov 0x0F,r1
	neg r0,r0
	shld r0,r2
	and r1,r2
	mov 0x01,r0
	mov.l r2,@r5
	rts 
	nop 

;==============================================
	#align16_nop

;==============================================
loc_8C122C80:
	sts.l pr,@-r15
	add 0xFC,r15
	stc sr,r3
	mov.l @(0x48,PC),r2
	mov.l r3,@r15
	or r2,r3
	ldc r3,sr
	mov.l @(0x4C,PC),r3
	jsr @r3
	mov 0x00,r5
	mov.l @r15,r2
	ldc r2,sr
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov 0x00,r0

;==============================================
loc_8C122Ca0:
	bra loc_8c122ca0
	nop 

;==============================================
	#align16_nop

;==============================================
loc_8C122CB0:
	mov.l @(0x2C,PC),r3
	jmp @r3

;==============================================
	#align16_nop

;==============================================
loc_8C122CC0:
	mov.l @(loc_8C122CE8,pc),r2 ; r2 set to 0x8C1C44D4
	mov.l @(loc_8C122CE4,pc),r3 ; r3 set to 0x80000000
	mov.l @(loc_8C122CEC,pc),r1 ; r1 set to 0x8C1C9584
	mov.l r3,@r2 ; r2 ??
	rts
	mov.l r4,@r1

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C122CCC:
	#data bank16.loc_8c16BDD0
loc_8C122CD0:
	#data 0x10000000
loc_8C122CD4:
	#data bank16.loc_8c16BDE8
loc_8C122CD8:
	#data 0xFFD00004
loc_8C122CDC:
	#data bank17.loc_8c17B000
loc_8C122CE0:
	#data bank17.loc_8c17AB8c
loc_8C122CE4:
	#data 0x80000000
loc_8C122CE8:
	#data bank1c.loc_8c1c44D4
loc_8C122CEC:
	#data bank1c.loc_8c1c9584

;==============================================
loc_8C122CF0:
	mov.l @(loc_8C122F04,pc),r3 ; r3 set to 0x8C2DEE54
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @(loc_8C122F08,pc),r2 ; r2 set to 0x8C2D6CEc
	mov.l r4,@r3 ; r3 ??
	rts
	mov.l r4,@r2

;==============================================
	#align16_nop

;==============================================
loc_8c122d00:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	sts.l macl,@-r15
	add 0xF0,r15
	mov 0x00,r9
	mov r7,r8
	tst r6,r6
	mov.l r5,@(0x08,r15)
	mov.l r9,@(0x04,r15)
	mov.l r9,@(0x0C,r15)
	bf/s loc_8c122d50
	mov.l r9,@r8
	mov.l @r4,r2
	cmp/pz r2
	bf loc_8c122d30
	mov.l @(0x18,r4),r1
	tst r1,r1
	bf loc_8c122d40

loc_8c122d30:
	bra loc_8c122f9e
	mov 0x00,r0

;==============================================
	#align16_nop

;==============================================
loc_8c122d40:
	mov r4,r12
	bra loc_8c122d52
	add 0x18,r12

;==============================================
	#align16_nop

;==============================================
loc_8c122d50:
	mov r6,r12

loc_8c122d52:
	mov r12,r14
	mov.l @(0x20,r14),r10
	mov r10,r13
	cmp/pz r13
	bf/s loc_8c122df2
	add 0x50,r12
	mov.l @(0x34,r15),r0
	cmp/eq 0x01,r0
	bf loc_8c122d70
	mov r13,r2
	mov.l @(0x08,r15),r3
	shll2 r2
	shll2 r2
	add r3,r2
	mov.l @(0x0C,r2),r13

loc_8c122d70:
	mov.l @(loc_8c122f04,pc),r1
	mov.l @(loc_8C122F0C,pc),r11
	mov.l @r1,r3
	add r3,r13
	shll2 r13
	shll r13
	mov r13,r0
	mov.l r13,@r15
	mov.l @r11,r2
	add r2,r0
	mov.l @r0,r2
	tst r2,r2
	bf loc_8c122d9e
	mov.l @r15,r2
	mov 0x04,r1
	mov.l @r11,r3
	add r3,r2
	mov.l @(loc_8c122f10,pc),r3
	add r2,r1
	jsr @r3
	mov.l r1,@-r15
	mov.l @r15+,r3
	mov.l r0,@r3

loc_8c122d9e:
	mov.l @r15,r2
	mov.l @r11,r3
	add r3,r2
	mov.l @r2,r1
	add 0x01,r1
	mov.l r1,@r2
	mov.l @r11,r3
	mov 0x3C,r11
	mov.l @r15,r13
	mov.l @(loc_8C122F14,pc),r2
	add r3,r13
	mov.l @(0x04,r13),r13
	mov.l @r2,r3
	mul.l r11,r13
	sts macl,r11
	add r3,r11
	mov.l @(0x2C,r11),r1
	tst r1,r1
	bf loc_8c122dec
	mov r10,r1
	mov.l @(0x08,r15),r3
	shll2 r1
	mov r13,r5
	shll2 r1
	add r3,r1
	mov.l @(loc_8c122f18,pc),r3
	mov.l r1,@(0x04,r15)
	mov.l @(0x08,r1),r6
	jsr @r3
	mov r1,r4
	mov.l @(0x0C,r15),r2
	mov.l @(loc_8c122f1c,pc),r3
	or r0,r2
	mov.l r2,@(0x0C,r15)
	jsr @r3
	mov r13,r4
	mov 0x01,r2
	mov.l r13,@(0x38,r11)
	mov.l r2,@(0x04,r15)

loc_8c122dec:
	mov.l @(0x2C,r11),r3
	add 0x01,r3
	mov.l r3,@(0x2C,r11)

loc_8c122df2:
	cmp/pz r10
	bt loc_8c122e04
	mov.l @(loc_8C122F20,pc),r3
	mov.l @r14,r0
	or 0x01,r0
	mov.l r0,@r14
	mov.l @(0x04,r14),r2
	or r3,r2
	mov.l r2,@(0x04,r14)

loc_8c122e04:
	mov.l @(loc_8c122f28,pc),r0
	cmp/pz r13
	mov.l @r14,r1
	mov.l @(loc_8C122F24,pc),r3
	mov.l @r0,r2
	and r3,r1
	mov.l @(loc_8C122F2C,pc),r3
	shll16 r2
	or r3,r2
	or r2,r1
	bf/s loc_8c122e30
	mov.l r1,@r14
	mov.l @(loc_8c122f30,pc),r1
	mov r13,r5
	jsr @r1
	mov r14,r4
	bra loc_8c122e36
	nop

;==============================================
	#align16_nop

;==============================================
loc_8c122e30:
	mov.l @(loc_8c122f34,pc),r2
	jsr @r2
	mov r14,r4

loc_8c122e36:
	mov.l @(loc_8c122f38,pc),r2
	mov.l @r2,r3
	tst r3,r3
	bt/s loc_8c122e44
	mov 0x07,r4
	bra loc_8c122f50
	nop

loc_8c122e44:
	mov.l @(0x0C,r14),r3
	mov 0xE5,r1
	shld r1, r3
	and r3,r4
	mov.l @(loc_8c122f08,pc),r3
	mov.l @r3,r5
	tst r5,r5
	bf loc_8c122e58
	bra loc_8c122f74
	nop

loc_8c122e58:
	mov r4,r0
	cmp/eq 0x05,r0
	bt loc_8c122e68
	mov r4,r0
	cmp/eq 0x06,r0
	bt loc_8c122e68
	bra loc_8c122f74
	nop

loc_8c122e68:
	mov.l @(loc_8C122F3C,pc),r6
	mov.l @(0x3C,r14),r4
	mov.w @(0x04,r6),r0
	cmp/ge r0,r4
	bf loc_8c122e76
	bra loc_8c122f74
	nop

loc_8c122e76:
	mov r4,r2
	shll2 r2
	mov.l @(0x18,r6),r13
	mov r4,r10
	mov r4,r3
	shll r10
	shll r2
	add r2,r13
	mov.w @(0x04,r13),r0
	add r3,r10
	shll2 r10
	tst r0,r0
	bt/s loc_8c122ea0
	add r5,r10
	mov.w @(0x04,r13),r0
	add 0x01,r0
	mov.w r0,@(0x04,r13)
	bra loc_8c122ef2
	mov.w @r13,r11

;==============================================
	#align16_nop

;==============================================
loc_8c122ea0:
	mov.b @(0x02,r10),r0
	mov 0xFC,r3
	mov.b r0,@(0x02,r13)
	mov.l @(0x08,r10),r0
	add 0x0F,r0
	shad r3, r0
	mov.b r0,@(0x03,r13)
	mov 0x01,r0
	mov.w r0,@(0x04,r13)
	mov r4,r0
	mov.w r0,@(0x06,r13)
	mov.l @(0x08,r10),r3
	mov r3,r5
	mov.l r3,@r15
	mov.l @(loc_8c122f40,pc),r3
	mov.w @(0x02,r10),r0
	jsr @r3
	mov r0,r4
	mov r0,r11
	cmp/pz r11
	bf loc_8c122ef0
	mov.l @(loc_8c122f44,pc),r3
	mov.w r11,@r13
	mov.l @r15,r5
	jsr @r3
	mov r11,r4
	mov r11,r4
	mov.l @(loc_8c122f48,pc),r3
	mov.l @r15,r6
	shll2 r4
	mov.l @(0x04,r10),r5
	jsr @r3
	shll2 r4
	bra loc_8c122ef2
	nop

;==============================================
	#align16_nop

;==============================================
loc_8c122ef0:
	mov r9,r11

loc_8c122ef2:
	mov.l @(0x0C,r14),r2
	mov 0x15,r1
	mov.l @(loc_8C122F4C,pc),r3
	shad r1, r11
	and r3,r2
	or r11,r2
	bra loc_8c122f74
	mov.l r2,@(0x0C,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c122f04:
	#data 0x8C2DEE54
loc_8c122f08:
	#data 0x8C2D6CEC
loc_8C122F0C:
	#data 0x8C2AA26C
loc_8c122f10:
	#data bank11.loc_8c11b980
loc_8C122F14:
	#data 0x8C2DE690
loc_8c122f18:
	#data bank11.loc_8c11b640
loc_8c122f1c:
	#data bank11.loc_8c11bc40
loc_8C122F20:
	#data 0x00400000
loc_8C122F24:
	#data 0xFFFCFFFF
loc_8c122f28:
	#data bank16.loc_8c16bbf4
loc_8C122F2C:
	#data 0x008C0000
loc_8c122f30:
	#data bank11.loc_8c11bb70
loc_8c122f34:
	#data bank11.loc_8c11bd20
loc_8c122f38:
	#data bank16.loc_8c16bbec
loc_8C122F3C:
	#data 0x8C32B420
loc_8c122f40:
	#data bank11.loc_8c11be90
loc_8c122f44:
	#data bank11.loc_8c11bf50
loc_8c122f48:
	#data bank11.loc_8c11f7f0
loc_8C122F4C:
	#data 0xF81FFFFF

;==============================================
loc_8c122f50:
	mov.l @(0x0C,r14),r1
	mov 0xE5,r3
	shld r3, r1
	and r1,r4
	mov r4,r0
	cmp/eq 0x05,r0
	bt loc_8c122f64
	mov r4,r0
	cmp/eq 0x06,r0
	bf loc_8c122f74

loc_8c122f64:
	mov.l @(0x0C,r14),r2
	mov 0x15,r1
	mov.l @(loc_8C12317C,pc),r3
	mov.l @(0x3C,r14),r4
	and r3,r2
	shad r1, r4
	or r4,r2
	mov.l r2,@(0x0C,r14)

loc_8c122f74:
	mov.l @(loc_8c123180,pc),r3
	jsr @r3
	mov r14,r4
	mov 0x4C,r0
	mov.l @(r0,r14),r2
	add r2,r12
	mov.l @r12,r4
	tst r4,r4
	bf loc_8c122f90
	bra loc_8c122f9c
	mov.l r9,@r8

;==============================================
	#align16_nop

;==============================================
loc_8c122f90:
	mov.l @(0x04,r15),r2
	tst r2,r2
	bf loc_8c122f9a
	bra loc_8c122d52
	nop

loc_8c122f9a:
	mov.l r12,@r8

loc_8c122f9c:
	mov.l @(0x0C,r15),r0

loc_8c122f9e:
	add 0x10,r15
	lds.l @r15+,macl
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
	#align16_nop

;==============================================
loc_8c122fc0:
	sts.l pr,@-r15
	mov 0x00,r3
	bsr loc_8c122d00
	mov.l r3,@-r15
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8C122FD0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov 0x00,r14 ; r14 set to 0x00
	mov.l r4,@(0x08,r15)
	mov r14,r13 ; r13 set to 0x00
	mov.l r5,@(0x04,r15)
	mov.l r14,@r15

loc_8C122FE2:
	mov.l r14,@-r15
	mov.l @(0x04,r15),r6
	mov r15,r7
	mov.l @(0x08,r15),r5
	add 0x04,r7
	bsr loc_8C122D00
	mov.l @(0x0C,r15),r4
	add 0x04,r15
	mov.l @r15,r2
	or r0,r13 ; r13 ??? bc r0 is ???
	tst r2,r2
	bf loc_8C122FE2
	mov r13,r0
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8c123010:
	sts.l pr,@-r15
	mov 0x01,r3
	bsr loc_8c122d00
	mov.l r3,@-r15
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c123020:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@(0x4,r15)
	mov 0x00,r4
	mov r4,r14
	mov 0x01,r13
	mov.l r5,@(0x8,r15)
	mov.l r4,@r15

loc8c123034:
	mov.l r13,@-r15
	mov.l @(0x4,r15),r6
	mov r15,r7
	mov.l @(0xC,r15),r5
	add 0x04,r7
	bsr loc_8c122d00
	mov.l @(0x8,r15),r4
	add 0x04,r15
	mov.l @r15,r2
	or r0,r14
	tst r2,r2
	bf loc8c123034
	mov r14,r0
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8c123060:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r5,r8
	mov.l r6,@r15
	mov.l @r4,r3
	cmp/pz r3
	bf.s loc_8c123084
	mov 0x00,r12
	mov.l @(0x18,r4),r1
	tst r1,r1
	bf loc_8c123090

loc_8c123084:
	bra loc_8c12311c
	mov 0x00,r0

;==============================================
	#align16_nop

;==============================================
loc_8c123090:
	tst r8,r8
	mov.l @(0xF0,PC),r10
	movt r0
	mov r4,r13
	xor 0x01,r0
	mov.l r0,@(0x4,r15)
	add 0x18,r13
	mov 0x01,r9
	mov 0xFF,r11

loc_8c1230a2:
	mov r13,r14
	mov.l @(0x20,r14),r5
	cmp/pz r5
	bf.s loc_8c1230e2
	add 0x50,r13
	mov.l @r15,r3
	tst r3,r3
	bt loc_8c1230c2
	mov.l @(0x4,r15),r3
	tst r3,r3
	bt loc_8c1230c2
	mov r5,r3
	shll2 r3
	shll2 r3
	add r8,r3
	mov.l @(0xC,r3),r5

loc_8c1230c2:
	mov.l @(0xC4,PC),r1
	mov.l @(0xC4,PC),r0
	mov.l @r1,r2
	mov.l @r0,r3
	add r2,r5
	mov r5,r4
	shll2 r4
	shll r4
	add r3,r4
	mov.l @r4,r2
	tst r2,r2
	bf loc_8c1230e0
	mov r9,r12
	bra loc_8c1230e2
	mov r11,r5

;==============================================
loc_8c1230e0:
	mov.l @(0x4,r4),r5
loc_8c1230e2:
	mov.l @(0xC,r14),r2
	cmp/pz r5
	and r10,r2
	bf.s loc_8c123100
	mov.l r2,@(0x8,r15)
	mov.l @(0xA0,PC),r2
	jsr @r2
	mov r14,r4
	bra loc_8c123106
	nop 

;==============================================
	#align16_nop

;==============================================
loc_8c123100:
	mov.l @(0x90,PC),r2
	jsr @r2
	mov r14,r4

loc_8c123106:
	mov 0x4C,r0
	mov.l @(0x8,r15),r3
	mov.l @(0xC,r14),r2
	or r3,r2
	mov.l r2,@(0xC,r14)
	mov.l @(r0,r14),r1
	add r1,r13
	mov.l @r13,r4
	tst r4,r4
	bf loc_8c1230a2
	mov r12,r0

loc_8c12311c:
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
loc_8c123130:
	mov 0x00,r6
	bra loc_8c123060
	mov r6,r5

;==============================================
	#align16_nop

;==============================================
loc_8c123140:
	bra loc_8c123060
	mov 0x01,r6

;==============================================
	#align16_nop

;==============================================
loc_8c123150:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	sts.l macl,@-r15
	add 0xEC,r15
	mov 0x00,r3
	mov.l r5,@(0x4,r15)
	mov.l r6,@(0x8,r15)
	mov.l r3,@(0x10,r15)
	mov.l @r4,r2
	cmp/pz r2
	bf loc_8c123178
	mov.l @(0x18,r4),r1
	tst r1,r1
	bf loc_8c1231a0

loc_8c123178:
	bra loc_8c123282
	mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c12317c:
	#data 0xF81FFFFf
loc_8C123180:
	#data loc_8c129CB0
loc_8C123184:
	#data 0x07E00000
loc_8C123188:
	#data 0x8C2DEE54
loc_8C12318c:
	#data 0x8C2AA26c
loc_8C123190:
	#data bank11.loc_8c11BB70
loc_8C123194:
	#data bank11.loc_8c11BD20

;==============================================
	#align16_nop

;==============================================
loc_8c1231a0:
	mov.l @(0x4,r15),r0
	mov r4,r10
	mov.l @(0x188,PC),r14
	mov 0xFF,r8
	tst r0,r0
	mov.l @(0x180,PC),r13
	movt r0
	xor 0x01,r0
	mov.l r0,@(0xC,r15)
	add 0x18,r10

loc_8c1231b4:
	mov r10,r12
	mov.l @(0x20,r12),r4
	cmp/pz r4
	bf.s loc_8c123248
	add 0x50,r10
	mov.l @(0x8,r15),r3
	tst r3,r3
	bt loc_8c1231d6
	mov.l @(0xC,r15),r3
	tst r3,r3
	bt loc_8c1231d6
	mov r4,r3
	mov.l @(0x4,r15),r2
	shll2 r3
	shll2 r3
	add r2,r3
	mov.l @(0xC,r3),r4

loc_8c1231d6:
	mov.l @(0x15C,PC),r1
	mov.l @r14,r3
	mov.l @r1,r2
	add r2,r4
	mov r4,r11
	shll2 r11
	shll r11
	add r11,r3
	mov.l @r3,r0
	mov 0x00,r2
	cmp/hi r2,r0
	bf loc_8c123248
	mov.l @r14,r3
	add r11,r3
	mov.l @r3,r0
	add 0xFF,r0
	mov.l r0,@r3
	mov.l @r14,r3
	add r11,r3
	mov.l @r3,r0
	tst r0,r0
	bf loc_8c123248
	mov.l @r14,r0
	add r11,r0
	mov.l @(0x4,r0),r3
	mov.l r3,@r15
	mov 0x3C,r3
	mov.l @r15,r0
	mov.l @r13,r1
	mul.l r3,r0
	sts macl,r9
	add r9,r1
	mov.l @(0x28,r1),r0
	tst r0,r0
	bf loc_8c12322e
	mov.l @(0x118,PC),r1
	mov.l @r13,r4
	jsr @r1
	add r9,r4
	mov r0,r4
	tst r4,r4
	bt loc_8c12322e
	mov 0x01,r2
	mov.l r2,@(0x10,r15)

loc_8c12322e:
	mov.l @r13,r3
	mov 0x00,r2
	add r9,r3
	mov.l r2,@(0x2C,r3)
	mov.l @r13,r3
	add r9,r3
	mov.l r8,@(0x38,r3)
	mov.l @(0xFC,PC),r3
	jsr @r3
	mov.l @r15,r4
	mov.l @r14,r2
	add r11,r2
	mov.l r8,@(0x4,r2)

loc_8c123248:
	mov.l @(0xF4,PC),r2
	mov.l @r2,r3
	tst r3,r3
	bf loc_8c123274
	mov.l @(0xC,r12),r0
	mov 0xE5,r3
	mov 0x07,r4
	shld r3,r0
	mov.l @(0xE8,PC),r3
	mov.l @r3,r1
	tst r1,r1
	bt.s loc_8c123274
	and r0,r4
	mov r4,r0
	cmp/eq 0x05,r0
	bt loc_8c12326e
	mov r4,r0
	cmp/eq 0x06,r0
	bf loc_8c123274

loc_8c12326e:
	mov.l @(0xD8,PC),r3
	jsr @r3
	mov.l @(0x3C,r12),r4

loc_8c123274:
	mov 0x4C,r0
	mov.l @(r0,r12),r2
	add r2,r10
	mov.l @r10,r4
	tst r4,r4
	bf loc_8c1231b4
	mov.l @(0x10,r15),r0

loc_8c123282:
	add 0x14,r15
	lds.l @r15+,macl
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
	#align16_nop

;==============================================
loc_8c1232a0:
	mov 0x00,r6
	bra loc_8c123150
	mov r6,r5
	nop 

;==============================================
	#align16_nop

;==============================================
loc_8c1232b0:
	bra loc_8c123150
	mov 0x01,r6

;==============================================
	#align16_nop

;==============================================
loc_8c1232c0:
	mov.l @(0x80,PC),r3
	rts 
	mov.l r4,@r3

;==============================================
	#align16_nop

;==============================================
loc_8c1232d0:
	mov.l @(0x6C,PC),r2
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @r2,r0
	cmp/eq 0x01,r0
	bf loc_8c123324
	mov.l @r4,r1
	cmp/pz r1
	bf loc_8c123324
	mov.l @(0x18,r4),r0
	tst r0,r0
	bt loc_8c123324
	mov.l @(0x60,PC),r14
	mov r4,r6
	mov 0x07,r13
	add 0x18,r6

loc_8c1232f0:
	mov r6,r4
	mov.l @(0xC,r4),r7
	mov 0xE5,r3
	shld r3,r7
	and r13,r7
	mov r7,r0
	cmp/eq 0x05,r0
	bt.s loc_8c123308
	add 0x50,r6
	mov r7,r0
	cmp/eq 0x06,r0
	bf loc_8c123318

loc_8c123308:
	mov.l @(0x3C,r4),r7
	mov 0x15,r3
	mov.l @(0xC,r4),r2
	add r5,r7
	shad r3,r7
	and r14,r2
	or r7,r2
	mov.l r2,@(0xC,r4)

loc_8c123318:
	mov 0x4C,r0
	mov.l @(r0,r4),r1
	add r1,r6
	mov.l @r6,r4
	tst r4,r4
	bf loc_8c1232f0

loc_8c123324:
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C12332c:
	#data 0x8C2DE690
loc_8C123330:
	#data 0x8C2AA26c
loc_8C123334:
	#data 0x8C2DEE54
loc_8C123338:
	#data bank17.loc_8c17C960
loc_8C12333C:
	#data bank11.loc_8c11BA00
loc_8C123340:
	#data bank16.loc_8c16BBEc
loc_8C123344:
	#data 0x8C2D6CEc
loc_8C123348:
	#data bank11.loc_8c11BDC0
loc_8C12334c:
	#data 0xF81FFFFf

;==============================================
loc_8C123350:
	sts.l pr,@-r15
	mov.l @(loc_8C123498,pc),r3 ; r3 set to 0x8C17E240
	jsr @r3
	nop
	bsr loc_8C123380
	mov 0x01,r4 ; r4 set to 0x01
	mov 0x01,r4 ; r4 set to 0x01
	bra loc_8C1233B0
	lds.l @r15+,pr
;==============================================
	#align16_nop

;==============================================
loc_8C123370:
	mov.l @(loc_8C123498,pc),r3 ; r3 set to 0x8C17E240
	jmp @r3
	nop

;==============================================
	#align16_nop

;==============================================
loc_8c123380:
	mov r4,r0
	cmp/eq 0x02,r0
	bt loc_8c123388
	mov 0x01,r4

loc_8c123388:
	mov.l @(loc_8C12349C,pc),r2
	mov 0x1D,r3
	shad r3, r4
	rts
	mov.l r4,@r2

;==============================================
	#align16_nop

;==============================================
loc_8c1233a0:
	mov.l @(0xF8,PC),r1
	mov 0xE3,r3
	mov.l @r1,r0
	rts 
	shad r3,r0

;==============================================
	#align16_nop

;==============================================
loc_8c1233b0:
	mov r4,r0
	cmp/eq 0xFF,r0
	bt loc_8c1233b8
	mov 0x01,r4

loc_8c1233b8:
	mov.l @(0xE4,PC),r2
	rts 
	mov.l r4,@r2

;==============================================
	#align16_nop

;==============================================
loc_8c1233c0:
	mov.l @(0xDC,PC),r3
	rts 
	mov.l @r3,r0

;==============================================
	#align16_nop

;==============================================
loc_8c1233d0:
	sts.l pr,@-r15
	mov.l @(0xD0,PC),r3
	jsr @r3
	mov.l r4,@-r15
	mov.l @r15,r4
	mov 0x00,r5
	add 0x04,r15
	bra loc_8c123440
	lds.l @r15+,pr

;==============================================
	#align16_nop

;==============================================
loc_8c1233f0:
	sts.l pr,@-r15
	mov.l @(0xB0,PC),r3
	jsr @r3
	mov.l r4,@-r15
	mov.l @r15,r4
	mov 0xFF,r5
	add 0x04,r15
	bra loc_8c123440
	lds.l @r15+,pr

;==============================================
	#align16_nop

;==============================================
loc_8C123410:
	sts.l pr,@-r15
	mov.l @(loc_8C1234A8,pc),r3 ; r3 set to 0x8C123D10
	jsr @r3
	mov.l r4,@-r15
	mov.l @r15,r4
	mov 0x00,r5 ; r5 set to 0x00
	add 0x04,r15
	bra loc_8C123440
	lds.l @r15+,pr
;==============================================
	#align16_nop

;==============================================
;unused?
loc_8c123430:
	sts.l pr,@-r15
	mov.l @(0x74,PC),r3
	jsr @r3
	mov.l r4,@-r15
	mov.l @r15,r4
	mov 0xFF,r5
	add 0x04,r15
	lds.l @r15+,pr

loc_8c123440:
	sts.l pr,@-r15
	mov.l r5,@-r15
	mov.l @r4,r3
	cmp/pz r3
	bf/s loc_8c12348e
	mov.l @(0x18,r4),r5
	tst r5,r5
	bt loc_8c12348e
	mov.l @(loc_8C1234AC,pc),r1
	mov.l @(loc_8C1234B0,pc),r0
	mov.l @r1,r2
	mov.l @(loc_8C1234B4,pc),r3
	mov.l @(0x04,r2),r6
	mov.l @(loc_8C1234B8,pc),r2
	shlr16 r6
	shlr8 r6
	mov.l r6,@r0
	mov.l @(loc_8C1234BC,pc),r0
	mov.l r6,@r3
	mov.l @r0,r1
	mov.l @(loc_8C1234C0,pc),r3
	or r1,r5
	mov.l @(loc_8C1234C4,pc),r1
	and r3,r5
	mov.l @(loc_8C1234C8,pc),r3
	or r1,r5
	mov.l @(loc_8C12349C,pc),r0
	mov.l r5,@r2
	mov 0x00,r2
	mov.l r2,@r3
	mov.l @r0,r2
	mov.l @(loc_8C1234CC,pc),r1
	mov.l @(loc_8C1234A0,pc),r3
	mov.l r2,@r1
	mov.l @(loc_8c1234d0,pc),r2
	mov.l @(loc_8C1234B8,pc),r5
	mov.l @r3,r7
	jsr @r2
	mov.l @r15,r6

loc_8c12348e:
	mov 0x01,r4
	add 0x04,r15
	mov.l @(loc_8c1234d4,pc),r3
	jmp @r3
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c123498:
	#data bank17.loc_8c17E240
loc_8C12349C:
	#data 0x8C2D6CF0
loc_8C1234A0:
	#data 0x8C2D6CF4
loc_8c1234a4:
	#data loc_8C123D00
loc_8c1234a8:
	#data loc_8C123D10
loc_8C1234AC:
	#data 0x8C2AA508
loc_8C1234B0:
	#data 0xFF000038
loc_8C1234B4:
	#data 0xFF00003C
loc_8C1234B8:
	#data 0x8C2DEE20
loc_8C1234BC:
	#data 0x8C2DEE8C
loc_8C1234C0:
	#data 0x00030000
loc_8C1234C4:
	#data 0x818C0000
loc_8C1234C8:
	#data 0x8C2DEE24
loc_8C1234CC:
	#data 0x8C2DEE28
loc_8c1234d0:
	#data loc_8c12d7c0
loc_8c1234d4:
	#data loc_8c120900
	#align16

;==============================================
loc_8c1234e0:
	mov.l @(0x240,PC),r0
	rts 
	nop 

;==============================================
	#align16_nop

;==============================================
loc_8C1234F0:
	mova @(loc_8C123738,pc),r0  ; r0 init to 0x8C123738
	mov.l r12,@-r15
	mov.l @(loc_8C123728,pc),r3 ; r3 set to 0x8C16BE18
	mov 0x00,r6 ; r6 set to 0x00
	mov.l r11,@-r15
	mov r6,r4 ; r4 set to 0x00
	mov.l r10,@-r15
	mov 0x20,r10 ; r10 set to 0x20
	mov.l @(loc_8C12372C,pc),r2 ; r2 set to 0x8C2DEE3c
	mov r10,r12 ; r12 set to 0x20
	mov.l r9,@-r15
	add 0x60,r12 ; r12 set to 0x80
	fmov.s @r3,fr3 ; r3 ??
	mov 0x02,r11 ; r11 set to 0x02
	mov.l @(loc_8C123730,pc),r1 ; r1 set to 0x8C2D6CEc
	mov.l @(loc_8C123734,pc),r9 ; r9 set to 0x8C2D6CF8
	fldi1 fr5
	fldi0 fr7
	fmov.s fr3,@r2 ; r2 ??? bc r3 is ???
	mov.l r6,@r1 ; r1 ??
	fmov.s @r0,fr10 ; r10 ??
	mova @(loc_8C12373C,pc),r0  ; r0 set to 0x8C12373c
	fmov.s @r0,fr9 ; r9 ??
	mova @(loc_8C123740,pc),r0  ; r0 set to 0x8C123740
	fmov.s @r0,fr8

loc_8C123522:
	mov r4,r1 ; r1 set to 0x00
	shll8 r1 ; r1 set to 0x00
	shll r1 ; r1 set to 0x00
	mov r6,r5 ; r5 set to 0x00
	add r9,r1 ; r1 ??? bc r9 is ???

loc_8C12352C:
	lds r5,fpul
	mov r5,r0 ; r0 set to 0x00
	shll2 r0 ; r0 set to 0x00
	cmp/ge r11,r4
	fmov fr5,fr6 ; r6 ??
	float fpul,fr3
	fmov.s fr7,@(r0,r1)
	fmul fr10,fr3
	fdiv fr8,fr3
	fmov fr3,fr4 ; r4 ??? bc r3 is ???
	fadd fr9,fr4
	fmul fr4,fr4
	fadd fr4,fr4
	fsub fr5,fr4
	bt/s loc_8C123550
	fmul fr4,fr4
	bra loc_8C123560
	fmov.s fr4,@(r0,r1)
	
loc_8c123550:
	cmp/pl r4
	bf/s loc_8c12355e
	mov r6,r7

loc_8c123556:
	add 0x01,r7
	cmp/ge r4,r7
	bf/s loc_8c123556
	fmul fr4,fr6

loc_8c12355e:
	fmov.s fr6,@(r0,r1)

loc_8C123560:
	add 0x01,r5
	cmp/ge r12,r5
	bf loc_8C12352c
	add 0x01,r4
	cmp/ge r10,r4
	bf loc_8C123522
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	rts
	mov.l @r15+,r12

;==============================================
	#align16_nop

;==============================================
loc_8c123580:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x1C0,PC),r3
	mov.l @(0x1BC,PC),r14
	jsr @r3
	mov r14,r4
	mov.l @(0x1C0,PC),r2
	mov.l @(0x1BC,PC),r4
	jsr @r2
	nop 
	mov.l @(0x1B0,PC),r3
	mov.l @(0x1BC,PC),r4
	jsr @r3
	nop 
	lds.l @r15+,pr
	mov.l @(0x1B8,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8C1235B0:
	sts.l pr,@-r15
	mov r4,r3
	mov 0x02,r2
	mov.l r4,@-r15
	mov.l @(0x4,r3),r4
	tst r2,r4
	bf loc_8c1235c4
	mov.l @(0x19C,PC),r1
	jsr @r1
	nop 

loc_8C1235C4:
	mov.l @(0x198,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(0x184,PC),r2
	mov.l @(0x184,PC),r4
	jsr @r2
	nop 
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(0x18C,PC),r3
	jmp @r3
	lds.l @r15+,pr

;==============================================
	#align16_nop

;==============================================
loc_8C1235E0:
	mov r4,r3
	sts.l pr,@-r15
	mov.l r4,@-r15
	mov.l @(0x4,r3),r0
	tst 0x02,r0
	bf loc_8c1235f2
	mov.l @(0x178,PC),r1
	jsr @r1
	nop 

loc_8C1235F2:
	mov.l @(0x178,PC),r3
	jsr @r3
	nop 
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(0x164,PC),r3
	jmp @r3
	lds.l @r15+,pr

;==============================================
	#align16_nop

;==============================================
loc_8C123610:
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x04,r0
	mov.l r4,@r15
	fmov fr4,@(r0,r15)
	mov.l @r15,r3
	mov.l @(0x4,r3),r0
	tst 0x02,r0
	bf loc_8c123628
	mov.l @(0x138,PC),r1
	jsr @r1
	nop 

loc_8C123628:
	mov.l @(0x134,PC),r3
	jsr @r3
	mov 0x00,r4
	mov.l @(0x120,PC),r2
	mov.l @(0x120,PC),r4
	jsr @r2
	nop 
	mov 0x04,r0
	mov.l @r15,r4
	fmov @(r0,r15),fr4
	add 0x08,r15
	mov.l @(0x130,PC),r3
	jmp @r3
	lds.l @r15+,pr

;==============================================
	#align16_nop

;==============================================
loc_8C123650:
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x04,r0
	mov.l r4,@r15
	fmov fr4,@(r0,r15)
	mov.l @r15,r3
	mov.l @(0x4,r3),r0
	tst 0x02,r0
	bf loc_8c123668
	mov.l @(0x104,PC),r1
	jsr @r1
	nop 

loc_8C123668:
	mov.l @(0x100,PC),r3
	jsr @r3
	nop 
	mov 0x04,r0
	mov.l @r15,r4
	fmov @(r0,r15),fr4
	add 0x08,r15
	mov.l @(0xF8,PC),r3
	jmp @r3
	lds.l @r15+,pr

;==============================================
	#align16_nop

;==============================================
loc_8C123680:
	mov.l @(loc_8C123728,pc),r3 ; r3 set to 0x8C16BE18
	mov.l @(loc_8C12372C,pc),r2 ; r2 set to 0x8C2DEE3c
	fmov.s fr4,@r3 ; r3 ??? bc r4 is ???
	rts
	fmov.s fr4,@r2

;==============================================
	#align16_nop

;==============================================
loc_8C123690:
	mov.l @(0xE0,PC),r5
	mov 0x04,r0
	mov.l @(0xE0,PC),r4
	fmov @r5,fr3
	fadd fr4,fr3
	fmov fr3,@r4
	fmov @(r0,r5),fr2
	fadd fr5,fr2
	fmov fr2,@(r0,r4)
	mov 0x08,r0
	fmov @(r0,r5),fr3
	fadd fr6,fr3
	fmov fr3,@(r0,r4)
	mov 0x04,r0
	mov.l @(0xCC,PC),r4
	fmov fr4,@r4
	fmov fr5,@(r0,r4)
	mov 0x08,r0
	rts 
	fmov fr6,@(r0,r4)

;==============================================
	#align16_nop

;==============================================
loc_8C1236c0:
	mov.l r14,@-r15
	mov 0x08,r0
	mov r4,r14
	fmov @(r0,r14),fr6
	mov 0x04,r0
	fmov @r14,fr4
	fmov @(r0,r14),fr5
	bra loc_8c123690
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8C1236E0:
	mov.l r14,@-r15
	mov 0x08,r0 ; r0 set to 0x08
	mov r4,r14
	fmov.s @(r0,r14),fr6
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @r14,fr4
	fmov.s @(r0,r14),fr5
	mov.l @r15+,r14
	mov.l @(loc_8C123774,pc),r4 ; r4 set to 0x8C16BE20
	mov 0x04,r0 ; r0 set to 0x04
	fmov fr6,fr8
	fldi1 fr7
	fadd fr7,fr8
	fmov.s fr4,@r4 ; r4 ??
	fmov.s fr5,@(r0,r4)
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s fr6,@(r0,r4)
	mov 0x0C,r0 ; r0 set to 0x0c
	fmov.s fr8,@(r0,r4)
	mov 0x04,r0 ; r0 set to 0x04
	mov.l @(loc_8C123778,pc),r4 ; r4 set to 0x8C16BE30
	fmov.s fr4,@r4 ; r4 ??
	fmov.s fr5,@(r0,r4)
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s fr8,@(r0,r4)
	mov 0x04,r0 ; r0 set to 0x04
	mov.l @(loc_8C12377C,pc),r4 ; r4 set to 0x8C16BE40
	fldi0 fr4
	fmov.s fr4,@r4 ; r4 ??
	fmov.s fr4,@(r0,r4)
	mov 0x08,r0 ; r0 set to 0x08
	rts
	fmov.s fr7,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C123724:
	#data 0x8c1437B6
loc_8C123728:
	#data bank16.loc_8c16BE18
loc_8C12372C:
	#data 0x8C2DEE3c
loc_8C123730:
	#data 0x8C2D6CEc
loc_8C123734:
	#data 0x8C2D6CF8
loc_8C123738:
	#data 0x3E95F612
loc_8C12373C:
	#data 0x3F3504F7
loc_8C123740:
	#data 0x42FE0000
loc_8C123744:
	#data 0x8C2DACF8
loc_8C123748:
	#data bank11.loc_8c11FB70
loc_8C12374c:
	#data 0x8C2D6C00
loc_8C123750:
	#data loc_8c1205E0
loc_8C123754:
	#data 0x8C2D6BC0
loc_8C123758:
	#data loc_8c120250
loc_8C12375C:
	#data loc_8c123B00
loc_8C123760:
	#data loc_8c120950
loc_8C123764:
	#data loc_8c123C20
loc_8C123768:
	#data loc_8c123B40
loc_8C12376C:
	#data loc_8c123D10
loc_8C123770:
	#data loc_8c123C90
loc_8C123774:
	#data bank16.loc_8c16BE20
loc_8C123778:
	#data bank16.loc_8c16BE30
loc_8C12377C:
	#data bank16.loc_8c16BE40

;==============================================
loc_8C123780:
	mov.l @(loc_8C1237DC,pc),r4 ; r4 set to 0x8C16BE50
	mov 0x04,r0 ; r0 set to 0x04
	sts.l pr,@-r15
	mov.l @(loc_8C1237E0,pc),r1 ; r1 set to 0x8C16BE60
	mov r4,r2 ; r2 set to 0x8C16BE50
	mov.l @(loc_8C1237E4,pc),r3 ; r3 set to 0x8C1294C8
	fmov.s fr4,@r4 ; r4 ??
	fmov.s fr5,@(r0,r4)
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s fr6,@(r0,r4)
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	lds.l @r15+,pr
	rts
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C1237a0:
	mov.l @(0x38,PC),r4
	mov 0x04,r0
	fmov fr4,@r4
	fmov fr5,@(r0,r4)
	mov 0x08,r0
	rts 
	fmov fr6,@(r0,r4)

;==============================================
	#align16_nop

;==============================================
loc_8c1237b0:
	mov.l @(0x2C,PC),r4
	mov 0x04,r0
	fmov fr4,@r4
	fmov fr5,@(r0,r4)
	mov 0x08,r0
	rts 
	fmov fr6,@(r0,r4)

;==============================================
	#align16_nop

;==============================================
loc_8c1237C0:
	not r4,r4
	mov.l @(0x24,PC),r3
	mov 0x07,r6
	and r6,r4
	not r5,r5
	shll2 r4
	and r6,r5
	shll2 r4
	shll2 r5
	shll r4
	add r5,r4
	rts 
	mov.l r4,@r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C1237DC:
	#data bank16.loc_8c16BE50
loc_8C1237E0:
	#data bank16.loc_8c16BE60
loc_8C1237E4:
	#data loc_8c1294C8
loc_8C1237E8:
	#data 0x8C2AA4C4
;==============================================
	#align16_nop

;==============================================
loc_8c1237f0:
	mov.l @(0x48,PC),r1
	fneg fr4
	mov 0x00,r0
	fmov fr5,@(r0,r1)
	mov 0x04,r0
	fmov fr4,@(r0,r1)
	fldi0 fr0
	fcmp/gt fr0,fr5
	fneg fr4
	bf loc_8c12380c
	fcmp/gt fr4,fr0
	bt loc_8c12380c
	bra loc_8c123826
	nop 

loc_8c12380c:
	mov.l @(0x30,PC),r0
	mov.l @(0x38,PC),r1
	mov.l @(0x38,PC),r2
	mov.l r1,@r0
	add 0x04,r0
	mov.l r2,@r0
	mov.l @(0x28,PC),r0
	mov.l @(0x38,PC),r1
	mov.l @(0x38,PC),r2
	mov.l r1,@r0
	add 0x04,r0
	rts 
	mov.l r2,@r0

loc_8c123826:
	mov.l @(0x18,PC),r0
	mov.l @(0x24,PC),r1
	mov.l r1,@r0
	add 0x04,r0
	mov.l r1,@r0
	mov.l @(0x10,PC),r0
	mov.l @(0x28,PC),r1
	mov.l r1,@r0
	add 0x04,r0
	rts 
	mov.l r1,@r0

;==============================================
	#align4
loc_8C12383C:
	#data bank16.loc_8c16BE70
loc_8C123840:
	#data loc_8c123C78
loc_8C123844:
	#data loc_8c123CE8
loc_8C123848:
	#data loc_8c129CC0
loc_8C12384C:
	#data loc_8c129CC0
loc_8C123850:
	#data loc_8c12ADE0
loc_8C123854:
	#data loc_8c129CC2
loc_8C123858:
	#data loc_8c129CC2
loc_8C12385C:
	#data loc_8c12ADE2

;==============================================
loc_8c123860:
	rts
	nop
;==============================================
	#align16_nop

;==============================================
loc_8c123870:
	mov.l @(0x21C,PC),r5
	tst r4,r4
	bf loc_8c123880
	mov 0x00,r2
	bra loc_8c123898
	mov.l r2,@r5
;==============================================
	#align16_nop

;==============================================
loc_8c123880:
	mov r4,r0
	cmp/eq 0x01,r0
	bf loc_8c123890
	mov.l @(0x20C,PC),r3
	bra loc_8c123898
	mov.l r3,@r5

;==============================================
	#align16_nop

;==============================================
loc_8c123890:
	cmp/eq 0x02,r0
	bf loc_8c123898
	mov.l @(0x200,PC),r2
	mov.l r2,@r5

loc_8c123898:
	rts 
	nop 

;==============================================
	#align16_nop

;==============================================
loc_8c1238a0:
	mov.l @(0x1F8,PC),r5
	mov.l @(0x1FC,PC),r4
	mov.l @r5,r3
	mov.l @r3,r2
	mov.l r2,@r4
	mov.l @r5,r3
	mov.l @(0x4,r3),r2
	mov.l r2,@(0x4,r4)
	mov.l @r5,r3
	mov.l @(0x8,r3),r2
	mov.l r2,@(0x8,r4)
	mov.l @r5,r3
	mov.l @(0xC,r3),r2
	rts 
	mov.l r2,@(0xC,r4)
;==============================================
	#align16_nop

;==============================================
loc_8c1238c0:
	mov.l @(0x1D8,PC),r0
	mov.l r13,@-r15
	mov.l @r0,r3
	mov.l @(0x1D8,PC),r13
	mov.l @r3,r1
	mov.l @r13,r2
	sub r2,r1
	mov.l r1,@r4
	mov.l @r0,r3
	mov.l @(0x4,r13),r2
	mov.l @(0x4,r3),r1
	sub r2,r1
	mov.l r1,@r5
	mov.l @r0,r3
	mov.l @(0x8,r13),r2
	mov.l @(0x8,r3),r1
	sub r2,r1
	mov.l r1,@r6
	mov.l @r0,r3
	mov.l @(0xC,r13),r2
	mov.l @(0xC,r3),r1
	sub r2,r1
	mov.l r1,@r7
	rts 
	mov.l @r15+,r13

;==============================================
	#align16_nop

;==============================================
loc_8c123900:
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l @(0x19C,PC),r2
	mov r4,r3
	add 0x14,r3
	mov.l r4,@r15
	fmov @r3,fr15
	fmov @r2,fr3
	mov.l @(0x194,PC),r3
	fmul fr3,fr15
	jsr @r3
	mov 0x00,r4
	mov.l @(0x194,PC),r2
	mov.l @(0x18C,PC),r4
	jsr @r2
	nop 
	mov.l @r15,r4
	mov r15,r5
	mov.l @(0x18C,PC),r3
	add 0x04,r5
	jsr @r3
	add 0x08,r4
	mov.l @(0x188,PC),r2
	jsr @r2
	mov 0x01,r4
	mov 0x04,r0
	mov.l @(0x184,PC),r3
	fmov @(r0,r15),fr4
	fmov @r3,fr2
	fmov fr4,fr3
	fadd fr15,fr3
	fcmp/gt fr3,fr2
	bt loc_8c1239aa
	mov.l @(0x178,PC),r3
	mov 0x08,r0
	mov.l @(0x178,PC),r4
	fmov @r3,fr3
	fmov @(r0,r15),fr2
	mov 0x08,r0
	fmul fr4,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r15)
	fmov @r4,fr6
	fmul fr15,fr6
	fmov fr6,fr3
	fneg fr3
	fcmp/gt fr3,fr2
	bf loc_8c1239aa
	mov.l @(0x164,PC),r3
	mov 0x04,r0
	fmov @(r0,r15),fr3
	mov 0x0C,r0
	fmov @r3,fr2
	fmul fr3,fr2
	fmov @(r0,r15),fr3
	mov 0x0C,r0
	fsub fr2,fr3
	fmov fr3,@(r0,r15)
	mov 0x0C,r0
	fmov @r4,fr4
	fmov @(r0,r15),fr2
	fmul fr15,fr4
	fmov fr4,fr3
	fneg fr3
	fcmp/gt fr3,fr2
	bf loc_8c1239aa
	mov.l @(0x144,PC),r3
	mov 0x04,r0
	fmov @(r0,r15),fr5
	mov 0x08,r0
	fmov @r3,fr3
	fmov fr5,fr0
	fmac fr0,fr3,fr6
	fmov @(r0,r15),fr3
	fcmp/gt fr3,fr6
	bf loc_8c1239aa
	mov.l @(0x134,PC),r3
	mov 0x0C,r0
	fmov fr5,fr0
	fmov @r3,fr3
	fmac fr0,fr3,fr4
	fmov @(r0,r15),fr3
	fcmp/gt fr3,fr4
	bt loc_8c1239c0

loc_8c1239aa:
	mov 0x00,r0
	add 0x10,r15
	lds.l @r15+,pr
	rts 
	fmov @r15+,fr15


;==============================================
	#align16_nop

;==============================================
loc_8c1239c0:
	mov 0x01,r0
	add 0x10,r15
	lds.l @r15+,pr
	rts 
	fmov @r15+,fr15

;==============================================
	#align16_nop

;==============================================
;unused?
loc_8c1239d0:
	fmov fr14,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l @(0xCC,PC),r2
	mov r4,r3
	add 0x14,r3
	mov.l r4,@r15
	fmov @r3,fr14
	fmov @r2,fr3
	mov.l @(0xC4,PC),r3
	fmul fr3,fr14
	jsr @r3
	mov 0x00,r4
	mov.l @(0xC4,PC),r2
	mov.l @(0xBC,PC),r4
	jsr @r2
	nop 
	mov.l @r15,r4
	mov r15,r5
	mov.l @(0xBC,PC),r3
	add 0x04,r5
	jsr @r3
	add 0x08,r4
	mov.l @(0xB8,PC),r2
	jsr @r2
	mov 0x01,r4
	mov 0x04,r0
	mov.l @(0xCC,PC),r4
	fmov @(r0,r15),fr4
	mov 0x24,r0
	fmov @(r0,r4),fr2
	fmov fr4,fr3
	fadd fr14,fr3
	fcmp/gt fr3,fr2
	bt loc_8c123a5c
	fmov fr4,fr3
	fsub fr14,fr3
	mov 0x28,r0
	fmov @(r0,r4),fr2
	fcmp/gt fr2,fr3
	bt loc_8c123a5c
	mov.l @(0xA0,PC),r2
	mov 0x08,r0
	fmov @(r0,r15),fr6
	fmov @r2,fr1
	fmul fr14,fr1
	fmov fr1,fr3
	fneg fr3
	fcmp/gt fr3,fr6
	bf loc_8c123a5c
	mov 0x0C,r0
	fmov fr1,fr3
	fmov @(r0,r15),fr5
	fneg fr3
	fcmp/gt fr3,fr5
	bf loc_8c123a5c
	mov.l @(0x88,PC),r3
	fmov fr4,fr0
	fmov @r3,fr2
	fmov fr1,fr3
	fmac fr0,fr2,fr3
	fcmp/gt fr6,fr3
	bf loc_8c123a5c
	mov.l @(0x80,PC),r3
	fmov fr4,fr0
	fmov @r3,fr2
	fmov fr1,fr3
	fmac fr0,fr2,fr3
	fcmp/gt fr5,fr3
	bt loc_8c123a70

loc_8c123a5c:
	mov 0x00,r0
	add 0x10,r15
	lds.l @r15+,pr
	rts 
	fmov @r15+,fr14

;==============================================
	#align16_nop

;==============================================
loc_8c123a70:
	mov 0x01,r0
	add 0x10,r15
	lds.l @r15+,pr
	rts 
	fmov @r15+,fr14

;==============================================
	#align16_nop

;==============================================
loc_8c123a80:
	mov.l @r4,r3
	cmp/pz r3
	bf loc_8c123a8c
	mov.l @(0x18,r4),r1
	tst r1,r1
	bf loc_8c123ae0

loc_8c123a8c:
	rts 
	mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C123A90:
	#data bank16.loc_8c16BE78
loc_8C123A94:
	#data loc_8c12BF8a
loc_8C123A98:
	#data loc_8c12CB6a
loc_8C123A9c:
	#data 0x8C2AA508
loc_8C123Aa0:
	#data 0x8C2AA544
loc_8C123Aa4:
	#data 0x8C32B448
loc_8C123AA8:
	#data loc_8c120950
loc_8C123AAc:
	#data 0x8C2D6BC0
loc_8C123AB0:
	#data loc_8c1205E0
loc_8C123AB4:
	#data bank11.loc_8c11F8B0
loc_8C123AB8:
	#data loc_8c120900
loc_8C123ABc:
	#data 0x8C2DEE44
loc_8C123AC0:
	#data bank16.loc_8c16BD90
loc_8C123AC4:
	#data 0x8C2D6B98
loc_8C123AC8:
	#data bank16.loc_8c16BD94
loc_8C123ACC:
	#data bank16.loc_8c16BD88
loc_8C123AD0:
	#data bank16.loc_8c16BD8c
loc_8C123AD4:
	#data 0x8C2DEE20

;==============================================
	#align16_nop

;==============================================
loc_8c123ae0:
	add 0x18,r4

loc_8c123ae2:
	mov 0x4C,r0
	mov r4,r5
	mov.l @(r0,r5),r2
	add 0x50,r4
	add r2,r4
	mov.l @r4,r5
	tst r5,r5
	bf loc_8c123ae2
	mov.l @(0x4,r4),r0
	rts 
	nop 

;==============================================
	#align16_nop

;==============================================
loc_8C123B00:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C123BBC,pc),r3 ; r3 set to 0x8C121080
	jsr @r3
	nop
	mov.l @(loc_8C123BC0,pc),r14 ; r14 set to 0x8C2DEE20
	mov.l @(loc_8C123BC4,pc),r4 ; r4 set to 0x8C16BE20
	mov.l @(loc_8C123BC8,pc),r2 ; r2 set to 0x8C11F910
	mov r14,r5 ; r5 set to 0x8C2DEE20
	jsr @r2
	add 0x10,r5 ; r5 set to 0x8C2DEE30
	mov.l @(loc_8C123BC8,pc),r3 ; r3 set to 0x8C11F910
	mov.l @(loc_8C123BCC,pc),r4 ; r4 set to 0x8C16BE30
	jsr @r3
	mov r14,r5 ; r5 set to 0x8C2DEE20
	mova @(loc_8C123BD0,pc),r0  ; r0 init to 0x8C123BD0
	mov.l @(loc_8C123BD4,pc),r3 ; r3 set to 0x8C121280
	fmov.s @r0,fr4 ; r4 ??
	mov r14,r5 ; r5 set to 0x8C2DEE20
	jsr @r3
	mov r14,r4 ; r4 set to 0x8C2DEE20
	lds.l @r15+,pr
	mov.l @(loc_8C123BBC,pc),r2 ; r2 set to 0x8C121080
	jmp @r2
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8C123B40:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C123BD8,pc),r3 ; r3 set to 0x8C1204F0
	jsr @r3
	mov 0x02,r4 ; r4 set to 0x02
	mov.l @(loc_8C123BBC,pc),r13 ; r13 set to 0x8C121080
	jsr @r13
	nop
	mov.l @(loc_8C123BDC,pc),r4 ; r4 set to 0x8C16BE40
	mov.l @(loc_8C123BC0,pc),r14 ; r14 set to 0x8C2DEE20
	mov.l @(loc_8C123BC8,pc),r12 ; r12 set to 0x8C11F910
	jsr @r12
	mov r14,r5 ; r5 set to 0x8C2DEE20
	jsr @r13
	nop
	mov.l @(loc_8C123BD8,pc),r2 ; r2 set to 0x8C1204F0
	jsr @r2
	mov 0x01,r4 ; r4 set to 0x01
	jsr @r13
	nop
	mov.l @(loc_8C123BC4,pc),r4 ; r4 set to 0x8C16BE20
	mov r14,r5 ; r5 set to 0x8C2DEE20
	jsr @r12
	add 0x10,r5 ; r5 set to 0x8C2DEE30
	mov.l @(loc_8C123BC4,pc),r4 ; r4 set to 0x8C16BE20
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @r14,fr2 ; r2 ??
	mov r0,r1 ; r1 set to 0x04
	fmov.s @r4,fr3 ; r3 ??
	add r4,r1 ; r1 set to 0x8C16BE24
	mov r14,r5 ; r5 set to 0x8C2DEE20
	fadd fr3,fr2
	fmov.s fr2,@r14 ; r14 ??? bc r2 is ???
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x08,r0 ; r0 set to 0x08
	mov r0,r1 ; r1 set to 0x08
	add r4,r1 ; r1 set to 0x8C16BE28
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r12
	mov r14,r4 ; r4 ??? bc r14 is ???
	mova @(loc_8C123BD0,pc),r0  ; r0 set to 0x8C123BD0
	mov.l @(loc_8C123BD4,pc),r3 ; r3 set to 0x8C121280
	fmov.s @r0,fr4
	mov r14,r5 ; r5 ??? bc r14 is ???
	jsr @r3
	mov r14,r4
	jsr @r13
	nop
	lds.l @r15+,pr
	mov.l @r15+,r12 ; r12 ??? bc r15 is ???
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C123BBC:
	#data loc_8c121080
loc_8C123BC0:
	#data 0x8C2DEE20
loc_8C123BC4:
	#data bank16.loc_8c16BE20
loc_8C123BC8:
	#data bank11.loc_8c11F910
loc_8C123BCC:
	#data bank16.loc_8c16BE30
loc_8C123BD0:
	#data 0x43DA4000
loc_8C123BD4:
	#data loc_8c121280
loc_8C123BD8:
	#data loc_8c1204F0
loc_8C123BDC:
	#data bank16.loc_8c16BE40

;==============================================
loc_8c123be0:
	frchg 
	fmov @r4+,fr1
	fmov @r4,fr2
	add 0x08,r4
	fmov @r4,fr3
	fmov @r4+,fr0
	fneg fr3
	fmov @r4+,fr5
	fmov @r4,fr6
	add 0x08,r4
	fmov @r4,fr7
	fmov @r4+,fr4
	fneg fr7
	fmov @r4+,fr9
	fmov @r4,fr10
	add 0x08,r4
	fmov @r4,fr11
	fmov @r4+,fr8
	fneg fr11
	fmov @r4+,fr13
	fmov @r4,fr14
	add 0x08,r4
	fmov @r4,fr15
	fmov @r4+,fr12
	fneg fr15
	frchg 
	rts 
	nop 

;==============================================
	#align16_nop

;==============================================
loc_8C123C20:
	mova @(loc_8C123C60,pc),r0  ; r0 init to 0x8C123C60
	mov.l r14,@-r15
	mov r0,r14 ; r14 set to 0x8C123C60
	mov.l @r4,r0 ; r0 ??? bc r4 is ???
	sts.l pr,@-r15
	cmp/eq 0x00,r0
	mov.l @(0x14,r14),r5
	bf/s loc_8C123C42
	cmp/eq 0x01,r0
	mov.l @(0x18,r14),r3
	jsr @r3
	mov.l @(0x20,r14),r14 ; r14 ??
	jsr @r14
	mov 0x01,r4 ; r4 set to 0x01
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C123C42:
	bf loc_8C123C54
	mov.l @(0x1C,r14),r3
	jsr @r3
	mov.l @(0x20,r14),r14
	jsr @r14
	mov 0x01,r4 ; r4 set to 0x01
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C123C54:
	mov.l @(0x20,r14),r14
	jsr @r14
	mov 0x01,r4 ; r4 set to 0x01
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C123C60:
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000

loc_8C123C74:
	#data 0x8C2DEE20
loc_8C123C78:
	#data loc_8c129CC0
loc_8C123C7C:
	#data loc_8c129CC0
loc_8C123C80:
	#data loc_8c120900

;==============================================
loc_8C123C84:
	rts
	nop
;==============================================
	#align16_nop

;==============================================
loc_8C123C90:
	mova @(loc_8C123CD0,pc),r0  ; r0 init to 0x8C123CD0
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov r0,r14 ; r14 set to 0x8C123CD0
	mov.l @r4,r0 ; r0 ??? bc r4 is ???
	cmp/eq 0x00,r0
	mov.l @(0x14,r14),r5
	bf/s loc_8C123CB2
	cmp/eq 0x01,r0
	mov.l @(0x18,r14),r3
	jsr @r3
	mov.l @(0x20,r14),r14 ; r14 ??
	jsr @r14
	mov 0x01,r4 ; r4 set to 0x01
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C123CB2:
	bf loc_8C123CC4
	mov.l @(0x1C,r14),r3
	jsr @r3
	mov.l @(0x20,r14),r14
	jsr @r14
	mov 0x01,r4 ; r4 set to 0x01
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C123CC4:
	mov.l @(0x20,r14),r14
	jsr @r14
	mov 0x01,r4 ; r4 set to 0x01
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C123CD0:
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000

loc_8C123CE4:
	#data 0x8C2DEE20
loc_8C123CE8:
	#data loc_8c129CC2
loc_8C123CEC:
	#data loc_8c129CC2
loc_8C123CF0:
	#data loc_8c120900

;==============================================
loc_8C123CF4:
	rts
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C123D00:
	sts.l pr,@-r15
	mov.l @(loc_8C123D28,pc),r3 ; r3 set to 0x8C120950
	jsr @r3
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @(loc_8C123D30,pc),r2 ; r2 set to 0x8C1205E0
	mov.l @(loc_8C123D2C,pc),r4 ; r4 set to 0x8C2D6BC0
	jmp @r2
	lds.l @r15+,pr

loc_8C123D10:
	sts.l pr,@-r15
	mov.l @(loc_8C123D28,pc),r3 ; r3 set to 0x8C120950
	mov.l @(loc_8C123D2C,pc),r4 ; r4 set to 0x8C2D6BC0
	jsr @r3
	nop
	mov.l @(loc_8C123D38,pc),r3 ; r3 set to 0x8C120540
	mov.l @(loc_8C123D34,pc),r4 ; r4 set to 0x8C2D6900
	jsr @r3
	mov.l @(0x08,r4),r4 ; r4 ??
	mov.l @(loc_8C123D3C,pc),r2 ; r2 set to 0x8C120660
	jmp @r2
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C123D28:
	#data loc_8c120950
loc_8C123D2C:
	#data 0x8C2D6BC0
loc_8C123D30:
	#data loc_8c1205E0
loc_8C123D34:
	#data 0x8C2D6900
loc_8C123D38:
	#data loc_8c120540
loc_8C123D3C:
	#data loc_8c120660

;==============================================
loc_8c123d40:
	mov.l @(0x230,PC),r0
	rts 
	nop 

;==============================================
	#align16_nop

;==============================================
loc_8C123D50:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x218,PC),r3
	mova @(0x21C,PC),r0
	mov 0xFF,r13
	mov.l r4,@(0x4,r15)
	mov r6,r14
	mov.l r5,@r15
	mov.l r13,@r3
	fmov @r0,fr5
	mova @(0x210,PC),r0
	bsr loc_8c124480
	fmov @r0,fr4
	mov.l @(0x214,PC),r11
	mov r14,r4
	mov.l @(0x214,PC),r10
	shll r4
	mov.l @(0x214,PC),r7
	mov 0xFC,r5
	mov.l @(0x204,PC),r3
	mov 0x20,r6
	mov.l r14,@r3
	mov.l @r15,r2
	mov.l r2,@r11
	mov.l @(0x4,r15),r2
	mov.l r2,@r10
	mov.l @(0x4,r15),r2
	add r2,r4
	mov.l @(0x200,PC),r2
	add 0x03,r4
	and r5,r4
	mov.l r4,@r7
	mov.l @r15,r1
	add 0x1F,r1
	jsr @r2
	mov r6,r0
	shll2 r0
	mov.l @(0x1F4,PC),r1
	add r4,r0
	cmp/pl r14
	add 0x03,r0
	mov r0,r4
	and r5,r4
	mov 0x00,r5
	mov.l r4,@r1
	mov r5,r1
	bf.s loc_8c123dc4
	mov r5,r4

loc_8C123DB8:
	mov.l @r10,r0
	add 0x01,r1
	cmp/ge r14,r1
	mov.w r13,@(r0,r4)
	bf.s loc_8c123db8
	add 0x02,r4

loc_8C123DC4:
	bra loc_8c123dda
	mov r5,r4

;==============================================
	#align16_nop

;==============================================
loc_8C123DD0:
	mov.l @r7,r3
	mov r4,r0
	shll2 r0
	add 0x01,r4
	mov.l r5,@(r0,r3)

loc_8C123DDA:
	mov.l @r11,r1
	mov.l @(0x1B4,PC),r3
	add 0x1F,r1
	jsr @r3
	mov r6,r0
	cmp/ge r0,r4
	bf loc_8c123dd0
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8c123e00:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	sts.l macl,@-r15
	add 0xFC,r15
	mov r6,r11
	shll2 r11
	mov r7,r0
	mov 0x00,r8
	cmp/eq 0x01,r0
	shll2 r11
	mov.l r5,@r15
	mov r6,r9
	bf/s loc_8c123e2a
	add r4,r11
	mov.l @(0x0C,r11),r6

loc_8c123e2a:
	mov.l @(loc_8C123F9C,pc),r3
	mov.l @(loc_8C123FA0,pc),r14
	mov.l @r3,r2
	mov.l @r14,r1
	add r2,r6
	mov r6,r13
	shll2 r13
	shll r13
	add r13,r1
	mov.l @r1,r0
	tst r0,r0
	bf/s loc_8c123e56
	mov r6,r10
	mov.l @r14,r2
	mov 0x04,r3
	mov.l @(loc_8c123fa4,pc),r1
	add r13,r2
	add r2,r3
	jsr @r1
	mov.l r3,@-r15
	mov.l @r15+,r1
	mov.l r0,@r1

loc_8c123e56:
	mov.l @r14,r3
	mov 0x3C,r12
	mov.l @(loc_8C123F8C,pc),r0
	mov r10,r4
	add r13,r3
	mov.l @r3,r2
	shll r4
	add 0x01,r2
	mov.l r2,@r3
	mov.l @r14,r3
	mov.l @r0,r1
	add r13,r3
	mov.l @(loc_8C123FA8,pc),r2
	mov.l @(0x04,r3),r13
	add r1,r4
	mov.w @r4,r0
	mul.l r12,r13
	mov.l @r2,r3
	cmp/eq 0xFF,r0
	sts macl,r12
	add r3,r12
	bf loc_8c123eb0
	bsr loc_8c124cb0
	nop
	cmp/eq 0xFF,r0
	bt/s loc_8c123ea0
	mov r0,r14
	mov.l @(loc_8C123F8C,pc),r2
	shll r10
	mov.l @r2,r0
	bra loc_8c123eb2
	mov.w r14,@(r0,r10)

;==============================================
	#align16_nop

;==============================================
loc_8c123ea0:
	mov.l @(loc_8C123F78,pc),r3
	mov 0x03,r2
	mov.l r2,@r3
	bra loc_8c12405e
	mov 0x02,r0

;==============================================
	#align16_nop

;==============================================
loc_8c123eb0:
	mov.w @r4,r14

loc_8c123eb2:
	mov.l @(0x2C,r12),r3
	tst r3,r3
	bf loc_8c123ecc
	mov.l @(loc_8c123fac,pc),r3
	mov r13,r5
	mov.l @(0x08,r11),r6
	jsr @r3
	mov r11,r4
	mov.l @(loc_8c123fb0,pc),r2
	or r0,r8
	jsr @r2
	mov r13,r4
	mov.l r13,@(0x38,r12)

loc_8c123ecc:
	mov.l @(0x2C,r12),r2
	mov r14,r4
	shll2 r4
	mov r13,r5
	add 0x01,r2
	mov.l r2,@(0x2C,r12)
	shll2 r4
	mov.l @(loc_8C123F98,pc),r2
	shll r4
	mov.l @r2,r3
	bsr loc_8c124c40
	add r3,r4
	mov.l @r15,r3
	tst r3,r3
	bf loc_8c123eee
	bra loc_8c12405c
	nop

loc_8c123eee:
	mov r14,r13
	mov.l @(loc_8C123F98,pc),r2
	shll2 r13
	mov r9,r12
	shll2 r13
	mov.l @r2,r3
	mov.l @r15,r0
	shll2 r12
	shll r13
	mov.l @(loc_8c123fb8,pc),r1
	add r3,r13
	mov.l @(r0,r12),r12
	mov.l @(0x0C,r13),r0
	mov 0xE5,r3
	mov 0x07,r4
	shld r3, r0
	and r0,r4
	mov.l @(loc_8C123FB4,pc),r0
	mov.w r0,@(0x16,r13)
	mov.l @r1,r3
	tst r3,r3
	bt loc_8c123f1e
	bra loc_8c124040
	nop

loc_8c123f1e:
	mov.l @(loc_8C123FBC,pc),r5
	mov.l @r5,r3
	tst r3,r3
	bf loc_8c123f2a
	bra loc_8c12405c
	nop

loc_8c123f2a:
	mov r4,r0
	cmp/eq 0x05,r0
	bt loc_8c123f3a
	mov r4,r0
	cmp/eq 0x06,r0
	bt loc_8c123f3a
	bra loc_8c12405c
	nop

loc_8c123f3a:
	mov.l @(loc_8C123FC0,pc),r2
	mov.w @r2,r3
	cmp/ge r3,r12
	bf loc_8c123f46
	bra loc_8c12405c
	nop

loc_8c123f46:
	mov r12,r0
	mov r0,r11
	mov r0,r2
	shll r11
	add r2,r11
	mov.l @(loc_8C123FC4,pc),r3
	mov r0,r2
	shll2 r2
	shll r2
	mov.w r0,@(0x16,r13)
	mov.l @r3,r14
	shll2 r11
	mov.l @r5,r1
	add r2,r14
	mov.w @(0x04,r14),r0
	tst r0,r0
	bt/s loc_8c123fd0
	add r1,r11
	mov.w @(0x04,r14),r0
	add 0x01,r0
	mov.w r0,@(0x04,r14)
	bra loc_8c124022
	mov.w @r14,r12

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c123f74:
	#data bank14.loc_8C143801
loc_8C123F78:
	#data 0x8C2DAD38
loc_8C123F7c:
	#data 0x43F00000
loc_8C123F80:
	#data 0x44200000
loc_8C123F84:
	#data 0x8C2DAD40
loc_8C123F88:
	#data 0x8C2DAD44
loc_8C123F8C:
	#data 0x8C2DAD3C
loc_8C123F90:
	#data 0x8C2DAD48
loc_8c123f94:
	#data 0x8C129128
loc_8C123F98:
	#data 0x8C2DAD4C
loc_8C123F9C:
	#data 0x8C2DEE54
loc_8C123FA0:
	#data 0x8C2AA26C
loc_8c123fa4:
	#data bank11.loc_8c11b980
loc_8C123FA8:
	#data 0x8C2DE690
loc_8c123fac:
	#data bank11.loc_8c11b640
loc_8c123fb0:
	#data bank11.loc_8c11bc40
loc_8C123FB4:
	#data 0x0000FFFF
loc_8c123fb8:
	#data bank16.loc_8c16bbec
loc_8C123FBC:
	#data 0x8C2D6CEC
loc_8C123FC0:
	#data 0x8C32B424
loc_8C123FC4:
	#data 0x8C32B438

;==============================================
	#align16_nop

;==============================================
loc_8c123fd0:
	mov.b @(0x02,r11),r0
	mov 0xFC,r2
	mov.b r0,@(0x02,r14)
	mov.l @(0x08,r11),r0
	add 0x0F,r0
	shad r2, r0
	mov.l @(loc_8c124264,pc),r2
	mov.b r0,@(0x03,r14)
	mov 0x01,r0
	mov.w r0,@(0x04,r14)
	mov r12,r0
	mov.w r0,@(0x06,r14)
	mov.l @(0x08,r11),r10
	mov.w @(0x02,r11),r0
	mov r10,r5
	jsr @r2
	mov r0,r4
	mov r0,r12
	cmp/pz r12
	bf loc_8c124020
	mov.l @(loc_8c124268,pc),r2
	mov r10,r5
	mov.w r12,@r14
	jsr @r2
	mov r12,r4
	mov r12,r4
	mov.l @(loc_8c12426c,pc),r3
	mov.l @(0x04,r11),r5
	mov r10,r6
	shll2 r4
	jsr @r3
	shll2 r4
	bra loc_8c124022
	nop
;==============================================
	#align16_nop

;==============================================
loc_8c124020:
	mov 0x00,r12

loc_8c124022:
	mov.l @(0x0C,r13),r2
	mov 0x15,r1
	mov.l @(loc_8C124270,pc),r3
	shad r1, r12
	and r3,r2
	or r12,r2
	bra loc_8c12405c
	mov.l r2,@(0x0C,r13)

;==============================================
	#align16_nop

;==============================================
loc_8c124040:
	mov r4,r0
	cmp/eq 0x05,r0
	bt loc_8c12404c
	mov r4,r0
	cmp/eq 0x06,r0
	bf loc_8c12405c

loc_8c12404c:
	mov.l @(0x0C,r13),r2
	mov r12,r0
	mov.l @(loc_8C124270,pc),r3
	mov 0x15,r1
	shad r1, r0
	and r3,r2
	or r0,r2
	mov.l r2,@(0x0C,r13)

loc_8c12405c:
	mov r8,r0

loc_8c12405e:
	add 0x04,r15
	lds.l @r15+,macl
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
	#align16_nop

;==============================================
loc_8C124080:
	bra loc_8C123E00
	mov 0x00,r7

;==============================================
	#align16_nop

;==============================================
loc_8c124090:
	bra loc_8c123e00
	mov 0x01,r7

;==============================================
	#align16_nop

;==============================================
loc_8C1240A0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r11
	mov 0x00,r4 ; r4 set to 0x00
	mov r4,r14 ; r14 set to 0x00
	mov r4,r12 ; r12 set to 0x00
	mov.l r5,@r15
	bra loc_8C1240D0
	mov r11,r13

;==============================================
	#align16_nop

;==============================================
loc_8C1240C0:
	mov.l @r15,r5
	mov r14,r6
	mov 0x00,r7 ; r7 set to 0x00
	bsr loc_8C123E00
	mov r11,r4
	add 0x01,r14
	add 0x10,r13
	or r0,r12

loc_8C1240D0:
	mov.l @(0x04,r13),r0
	cmp/eq 0xFF,r0
	bf loc_8C1240C0
	mov r12,r0
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8c1240f0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r11
	mov 0x00,r4
	mov r4,r14
	mov r4,r12
	mov.l r5,@r15
	bra loc_8c124120
	mov r11,r13

;==============================================
	#align16_nop

;==============================================
loc_8c124110:
	mov.l @r15,r5
	mov r14,r6
	mov 0x01,r7
	bsr loc_8c123e00
	mov r11,r4
	add 0x01,r14
	add 0x10,r13
	or r0,r12

loc_8c124120:
	mov.l @(0x4,r13),r0
	cmp/eq 0xFF,r0
	bf loc_8c124110
	mov r12,r0
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8c124140:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r6,r0
	cmp/eq 0x01,r0
	bf.s loc_8c124150
	mov 0x00,r14
	mov.l @(0xC,r15),r5

loc_8c124150:
	mov.l @(0x120,PC),r3
	mov.l @(0x124,PC),r0
	mov.l @r3,r2
	mov.l @r0,r1
	add r2,r5
	mov r5,r4
	shll2 r4
	shll r4
	add r1,r4
	mov.l @r4,r3
	tst r3,r3
	bf.s loc_8c124170
	mov r5,r6
	bra loc_8c1241aa
	mov 0xFF,r14

;==============================================
	#align16_nop

;==============================================
loc_8c124170:
	mov.l @(0x108,PC),r3
	mov.l @(0x4,r4),r5
	mov r6,r4
	mov.l @r3,r0
	shll r4
	mov.l @(0x104,PC),r1
	mov.w @(r0,r4),r4
	mov.l @(0x104,PC),r3
	shll2 r4
	shll2 r4
	shll r4
	mov.l r4,@(0x4,r15)
	mov.l @r1,r2
	add r2,r4
	mov.l r4,@(0x8,r15)
	mov.l @(0xC,r4),r2
	and r3,r2
	mov.l @(0xF4,PC),r3
	mov.l r2,@r15
	jsr @r3
	mov.l @(0x8,r15),r4
	mov.l @(0xE4,PC),r2
	mov.l @(0x4,r15),r3
	mov.l @r2,r0
	mov.l @r15,r1
	add r0,r3
	mov.l @(0xC,r3),r0
	or r1,r0
	mov.l r0,@(0xC,r3)

loc_8c1241aa:
	mov r14,r0
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8c1241c0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov r4,r11
	sts.l pr,@-r15
	mov 0x00,r4
	mov r4,r14
	mov r4,r12
	bra loc_8c1241ee
	mov r11,r13

;==============================================
	#align16_nop

;==============================================
loc_8c1241e0:
	mov r14,r5
	mov 0x00,r6
	bsr loc_8c124140
	mov r11,r4
	add 0x01,r14
	add 0x10,r13
	or r0,r12

loc_8c1241ee:
	mov.l @(0x4,r13),r0
	cmp/eq 0xFF,r0
	bf loc_8c1241e0
	lds.l @r15+,pr
	mov r12,r0
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8c124210:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov r4,r11
	sts.l pr,@-r15
	mov 0x00,r4
	mov r4,r14
	mov r4,r12
	bra loc_8c12423e
	mov r11,r13

;==============================================
	#align16_nop

;==============================================
loc_8c124230:
	mov r14,r5
	mov 0x01,r6
	bsr loc_8c124140
	mov r11,r4
	add 0x01,r14
	add 0x10,r13
	or r0,r12

loc_8c12423e:
	mov.l @(0x4,r13),r0
	cmp/eq 0xFF,r0
	bf loc_8c124230
	lds.l @r15+,pr
	mov r12,r0
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8c124260:
	bra loc_8c124140
	mov 0x00,r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C124264:
	#data bank11.loc_8c11BE90
loc_8C124268:
	#data bank11.loc_8c11BF50
loc_8C12426C:
	#data bank11.loc_8c11F7F0
loc_8c124270:
	#data 0xF81FFFFf
loc_8c124274:
	#data 0x8C2DEE54
loc_8c124278:
	#data 0x8C2AA26c
loc_8c12427c:
	#data 0x8C2DAD3c
loc_8C124280:
	#data 0x8C2DAD4c
loc_8C124284:
	#data 0x07E00000
loc_8C124288:
	#data bank11.loc_8c11BB70

;==============================================
	#align16_nop

;==============================================
loc_8c124290:
	bra loc_8c124140
	mov 0x01,r6

;==============================================
	#align16_nop

;==============================================
loc_8c1242a0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	sts.l macl,@-r15
	add 0xF8,r15
	mov r6,r5
	mov r7,r0
	shll2 r5
	cmp/eq 0x01,r0
	shll2 r5
	bf/s loc_8c1242c2
	add r5,r4
	mov.l @(0x0C,r4),r6

loc_8c1242c2:
	mov.l @(loc_8C1244DC,pc),r3
	mov.l @(loc_8C1244E0,pc),r13
	mov.l @r3,r2
	add r2,r6
	mov r6,r14
	shll2 r14
	shll r14
	mov.l r6,@r15
	mov.l @r13,r1
	mov 0x00,r2
	add r14,r1
	mov.l @r1,r0
	cmp/hi r2,r0
	bf loc_8c1243aa
	mov.l @r13,r1
	add r14,r1
	mov.l @r1,r0
	add 0xFF,r0
	mov.l r0,@r1
	mov.l @r13,r1
	add r14,r1
	mov.l @r1,r0
	tst r0,r0
	bf loc_8c1243aa
	mov.l @r13,r10
	mov 0x3C,r12
	mov.l @(loc_8C1244E4,pc),r11
	add r14,r10
	mov.l @(0x04,r10),r10
	mov.l @r11,r1
	mul.l r12,r10
	sts macl,r12
	add r12,r1
	mov.l @(0x28,r1),r0
	tst r0,r0
	bf loc_8c124330
	mov.l @(loc_8c1244e8,pc),r1
	mov.l @r11,r4
	jsr @r1
	add r12,r4
	mov r0,r4
	tst r4,r4
	bt loc_8c124330
	mov.l @(loc_8C1244EC,pc),r3
	mov 0x02,r2
	mov.l r2,@r3
	bra loc_8c1243ac
	mov r4,r0

;==============================================
	#align16_nop

;==============================================
loc_8c124330:
	mov.l @r11,r2
	mov 0x00,r3
	mov 0xFF,r9
	add r12,r2
	mov.l r3,@(0x2C,r2)
	mov.l @r11,r2
	mov.l @(loc_8C1244F0,pc),r3
	add r12,r2
	mov.l r9,@(0x38,r2)
	mov.l @r15,r12
	mov.l @(loc_8c1244f4,pc),r2
	shll r12
	mov.l r12,@(0x04,r15)
	mov.l @r3,r0
	mov.w @(r0,r12),r12
	jsr @r2
	mov r10,r4
	bsr loc_8c124d60
	mov r12,r4
	mov.l @r13,r2
	mov.l @(loc_8c1244f8,pc),r1
	add r14,r2
	mov.l r9,@(0x04,r2)
	mov.l @(loc_8C1244F0,pc),r2
	mov.l @(0x04,r15),r0
	mov.l @r2,r3
	mov.w r9,@(r0,r3)
	mov.l @r1,r3
	tst r3,r3
	bf loc_8c1243aa
	mov.l @(loc_8C1244FC,pc),r0
	mov r12,r4
	shll2 r4
	mov.l @(loc_8C124500,pc),r2
	mov.l @r0,r3
	shll2 r4
	shll r4
	add r3,r4
	mov.l @(0x0C,r4),r0
	mov 0xE5,r3
	mov 0x07,r5
	shld r3, r0
	mov.l @r2,r3
	and r0,r5
	mov.w @(0x16,r4),r0
	tst r3,r3
	bt/s loc_8c1243aa
	extu.w r0,r4
	mov r5,r0
	cmp/eq 0x05,r0
	bt loc_8c12439c
	mov r5,r0
	cmp/eq 0x06,r0
	bf loc_8c1243aa

loc_8c12439c:
	mov.l @(loc_8C124504,pc),r2
	mov.w @r2,r3
	cmp/ge r3,r4
	bt loc_8c1243aa
	mov.l @(loc_8c124508,pc),r2
	jsr @r2
	nop

loc_8c1243aa:
	mov 0x00,r0

loc_8c1243ac:
	add 0x08,r15
	lds.l @r15+,macl
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8C1243C0:
	bra loc_8C1242A0
	mov 0x00,r7

;==============================================
	#align16_nop

;==============================================
loc_8C1243d0:
	bra loc_8c1242a0
	mov 0x01,r7

;==============================================
	#align16_nop

;==============================================
loc_8C1243E0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r11
	mov 0x00,r4 ; r4 set to 0x00
	mov r4,r14 ; r14 set to 0x00
	mov r4,r12 ; r12 set to 0x00
	mov.l r5,@r15
	bra loc_8C124410
	mov r11,r13

;==============================================
	#align16_nop

;==============================================
loc_8C124400:
	mov.l @r15,r5
	mov r14,r6
	mov 0x00,r7 ; r7 set to 0x00
	bsr loc_8C1242A0
	mov r11,r4
	add 0x01,r14
	add 0x10,r13
	or r0,r12

loc_8C124410:
	mov.l @(0x04,r13),r0
	cmp/eq 0xFF,r0
	bf loc_8C124400
	mov r12,r0
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8c124430:
	mov.l r14,@-r15
	mov.l r13,@-r15

loc_8c124434:
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r11
	mov 0x00,r4
	mov r4,r14
	mov r4,r12
	mov.l r5,@r15
	bra loc_8c124460
	mov r11,r13

;==============================================
	#align16_nop

;==============================================
loc_8c124450:
	mov.l @r15,r5
	mov r14,r6
	mov 0x01,r7
	bsr loc_8c1242a0

loc_8c124458:
	mov r11,r4
	add 0x01,r14
	add 0x10,r13
	or r0,r12

loc_8c124460:
	mov.l @(0x4,r13),r0
	cmp/eq 0xFF,r0
	bf loc_8c124450
	mov r12,r0
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8C124480:
	fldi1 fr6
	mov 0x04,r0 ; r0 set to 0x04
	fmov fr6,fr3
	fdiv fr5,fr6
	fdiv fr4,fr3
	mov.l @(loc_8C12450C,pc),r4 ; r4 set to 0x8C2DAD50
	fmov.s fr3,@r4 ; r4 ??? bc r3 is ???
	fmov.s fr6,@(r0,r4)
	mov.l @(loc_8C124510,pc),r4 ; r4 set to 0x8C2DAD58
	fmov.s fr4,@r4 ; r4 ??
	rts
	fmov.s fr5,@(r0,r4)

;==============================================
	#align16_nop

;==============================================
loc_8c1244a0:
	mov.l @(0x6C,PC),r6
	mov 0x04,r0
	fmov @r6,fr3
	fmov fr3,@r4
	fmov @(r0,r6),fr2
	rts 
	fmov fr2,@r5

;==============================================
	#align16_nop

;==============================================
loc_8C1244B0:
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
	fmov.s fr12,@-r15
	sts.l pr,@-r15
	add 0xC4,r15
	mov.l @(loc_8C124514,pc),r1 ; r1 set to 0x8C2DAD40
	mov r4,r13
	mov.l @r13,r2
	mov.l @r1,r3
	cmp/ge r3,r2
	bf/s loc_8C124520
	fldi1 fr15
	bra loc_8C1248Ec
	mov 0xFF,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1244dc:
	#data 0x8C2DEE54
loc_8c1244e0:
	#data 0x8C2AA26c
loc_8c1244e4:
	#data 0x8C2DE690
loc_8C1244E8:
	#data bank17.loc_8c17C960
loc_8c1244ec:
	#data 0x8C2DAD38
loc_8c1244f0:
	#data 0x8C2DAD3c
loc_8C1244F4:
	#data bank11.loc_8c11BA00
loc_8C1244F8:
	#data bank16.loc_8c16BBEc
loc_8c1244fc:
	#data 0x8C2DAD4c
loc_8c124500:
	#data 0x8C2D6CEc
loc_8c124504:
	#data 0x8C32B424
loc_8C124508:
	#data bank11.loc_8c11BDC0
loc_8C12450C:
	#data 0x8C2DAD50
loc_8C124510:
	#data 0x8C2DAD58
loc_8C124514:
	#data 0x8C2DAD40
;==============================================
	#align16_nop

;==============================================
loc_8C124520:
	mov.l @(loc_8C1245F8,pc),r3 ; r3 set to 0x8C2DAD3c
	mov.l @r13,r8
	mov.l @r3,r0
	shll r8
	mov.w @(r0,r8),r8
	mov r8,r0
	cmp/eq 0xFF,r0
	bf loc_8C124534
	bra loc_8C1248Ea
	nop

loc_8C124534:
	mov.l @(loc_8C1245FC,pc),r2 ; r2 set to 0x8C2DAD4c
	mov r8,r12
	shll2 r12
	mov.l @(0x30,r13),r0
	mov.l @r2,r3
	shll2 r12
	shll r12
	cmp/eq 0x00,r0
	add r3,r12
	bt/s loc_8C124570
	mov 0x00,r4 ; r4 set to 0x00
	cmp/eq 0x02,r0
	bt loc_8C124580
	cmp/eq 0x04,r0
	bt loc_8C124580
	mov 0x2C,r0 ; r0 set to 0x2c
	fmov.s @(r0,r13),fr14
	fcmp/gt fr14,fr15
	bt/s loc_8C124584
	mov r4,r14 ; r14 set to 0x00
	mov.w @(0x14,r12),r0
	tst r0,r0
	bt loc_8C124586
	bra loc_8C124584
	nop
;==============================================
	#align16_nop

;==============================================
loc_8C124570:
	bra loc_8C124586
	mov r4,r14

;==============================================
	#align16_nop

;==============================================
loc_8c124580:
	mov 0x2C,r0
	fmov.s @(r0,r13),fr14

loc_8c124584:
	mov 0x01,r14

loc_8C124586:
	mova @(loc_8C124600,pc),r0  ; r0 init to 0x8C124600
	fmov fr15,fr13
	fmov.s @r0,fr4
	mov 0x10,r0 ; r0 set to 0x10
	fmov.s @(r0,r13),fr3
	mov 0x18,r0 ; r0 set to 0x18
	fmov.s @(r0,r12),fr2
	mov 0x14,r0 ; r0 set to 0x14
	mov.l @(loc_8C124604,pc),r3 ; r3 set to 0x8C11E860
	fmul fr3,fr2
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???
	mov 0x1C,r0 ; r0 set to 0x1c
	fmov fr2,fr12
	fmul fr4,fr12
	fmov.s @(r0,r12),fr2
	mov 0x04,r0 ; r0 set to 0x04
	fmul fr3,fr2
	fmul fr4,fr2
	fmov.s fr2,@(r0,r15)
	mov 0x0C,r0 ; r0 set to 0x0c
	fmov.s @(r0,r13),fr3
	fdiv fr3,fr13
	jsr @r3
	mov.l @(0x28,r13),r4
	mov.l @(loc_8C124608,pc),r3 ; r3 set to 0x8C11E2E0
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s fr0,@(r0,r15)
	jsr @r3
	mov.l @(0x28,r13),r4
	mov 0x08,r0 ; r0 set to 0x08
	mov r15,r10
	fmov.s @(r0,r15),fr6
	mov 0x04,r0 ; r0 set to 0x04
	mov r15,r11
	add 0x1C,r10
	fmov.s @(r0,r15),fr5
	add 0x2C,r11
	mov r10,r6
	mov r11,r5
	fmov fr0,fr7
	fmov fr12,fr4
	bsr loc_8C124AB0
	mov r13,r4
	mov.l @(loc_8C124614,pc),r2 ; r2 set to 0x8C16BD8c
	mov 0x04,r0 ; r0 set to 0x04
	mov.l @(loc_8C124610,pc),r3 ; r3 set to 0x8C16BD88
	mov.l @(loc_8C12460C,pc),r4 ; r4 set to 0x8C2DAD50
	fmov.s @r2,fr2 ; r2 ??
	fmov.s @(r0,r4),fr5
	fmov.s @r3,fr3 ; r3 ??
	fmov.s @r4,fr4 ; r4 ??
	fmul fr2,fr5
	mov 0x00,r4 ; r4 set to 0x00
	fmul fr3,fr4 ; r4 ??? bc r3 is ???
	bra loc_8C124630
	mov 0x10,r9

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C1245F8:
	#data 0x8C2DAD3c
loc_8C1245FC:
	#data 0x8C2DAD4c
loc_8C124600:
	#data 0x3F000000
loc_8C124604:
	#data bank11.loc_8c11E860
loc_8C124608:
	#data bank11.loc_8c11E2E0
loc_8C12460C:
	#data 0x8C2DAD50
loc_8C124610:
	#data bank16.loc_8c16BD88
loc_8C124614:
	#data bank16.loc_8c16BD8c

;==============================================
	#align16_nop

;==============================================
loc_8C124620:
	mov r4,r0
	fmov @(r0,r11),fr3
	add 0x04,r4
	fmul fr4,fr3
	fmov fr3,@(r0,r11)
	fmov @(r0,r10),fr2
	fmul fr5,fr2
	fmov fr2,@(r0,r10)

loc_8c124630:
	cmp/hs r9,r4
	bf loc_8c124620
	mov.l @r12,r2
	mov.l @(loc_8C1246FC,pc),r3
	and r3,r2
	mov.w @(loc_8C1246F4,pc),r3
	mov.l r2,@r12
	mov.l @(0x04,r12),r1
	mov.l @(loc_8C124700,pc),r2
	and r2,r1
	mov.l r1,@(0x04,r12)
	mov.l @(0x08,r12),r0
	mov.l @(loc_8C124704,pc),r1
	and r1,r0
	mov.l r0,@(0x08,r12)
	mov.l @(0x34,r13),r0
	tst r3,r0
	bf loc_8c12465c
	mov.l @(0x08,r12),r0
	mov.l @(loc_8C124708,pc),r2
	or r2,r0
	mov.l r0,@(0x08,r12)

loc_8c12465c:
	mov.l @(0x34,r13),r3
	mov.w @(loc_8C1246F6,pc),r4
	mov.w @(loc_8C1246F8,pc),r5
	tst r4,r3
	bt loc_8c12466c
	mov.l @(0x08,r12),r1
	or r5,r1
	mov.l r1,@(0x08,r12)

loc_8c12466c:
	mov.l @(0x34,r13),r2
	mov.l @(loc_8C12470C,pc),r3
	tst r3,r2
	bt loc_8c12467a
	mov.l @(0x08,r12),r0
	or r4,r0
	mov.l r0,@(0x08,r12)
	
loc_8c12467a:
	mov.l @(0x34,r13),r0
	mov 0xF8,r3
	mov 0x07,r4
	shad r3, r0
	and r0,r4
	tst r4,r4
	bf/s loc_8c12468c
	mov 0x1D,r3
	mov 0x04,r4

loc_8c12468c:
	mov.l @(0x04,r12),r2
	shad r3, r4
	tst r14,r14
	or r4,r2
	bt/s loc_8c1246d0
	mov.l r2,@(0x04,r12)
	mov.l @(0x30,r13),r0
	cmp/eq 0x04,r0
	bf loc_8c1246b0
	mov.l @(0x08,r12),r1
	mov.l @(loc_8C124710,pc),r2
	or r2,r1
	mov.l r1,@(0x08,r12)
	mov.l @r12,r0
	mov.l @(loc_8C124714,pc),r1
	bra loc_8c1246ca
	or r1,r0
;==============================================
	#align16_nop

;==============================================
loc_8c1246b0:
	mov.l @(loc_8C124718,pc),r2
	mov.l @(loc_8C12471C,pc),r1
	mov.l @r2,r0
	mov.l @(0x08,r12),r3
	xor 0xFC,r0
	shll16 r0
	shll8 r0
	or r1,r0
	or r0,r3
	mov.l r3,@(0x08,r12)
	mov.l @r12,r0
	mov.l @(loc_8C124720,pc),r3
	or r3,r0

loc_8c1246ca:
	bra loc_8c1246da
	mov.l r0,@r12
;==============================================
	#align16_nop

;==============================================
loc_8c1246d0:
	mov.l @(0x08,r12),r1
	mov.l @(loc_8C124724,pc),r2
	fmov fr15,fr14
	or r2,r1
	mov.l r1,@(0x08,r12)

loc_8c1246da:
	mov.l @(0x34,r13),r3
	tst r3,r5
	bt loc_8c124740
	mov.l @(loc_8c12472c,pc),r3
	mov.l @(loc_8c124730,pc),r2
	mov.l @(loc_8c124728,pc),r1
	fmov.s @r2,fr5
	fmov.s @r1,fr7
	fmov.s @r3,fr6
	bsr loc_8c124b40
	fmov fr14,fr4
	bra loc_8c12476c
	mov.l r0,@(0x10,r12)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1246F4:
	#data 0x0800
loc_8C1246F6:
	#data 0x1000
loc_8C1246F8:
	#data 0x2000
	#align4

loc_8C1246FC:
	#data 0xF8FCFFFF
loc_8C124700:
	#data 0x1FFFFFFF
loc_8C124704:
	#data 0x03278FFF
loc_8C124708:
	#data 0x00800000
loc_8C12470C:
	#data 0x00010000
loc_8C124710:
	#data 0x94100000
loc_8C124714:
	#data 0x04000000
loc_8C124718:
	#data 0x8C2AA4C4
loc_8C12471C:
	#data 0x00100000
loc_8C124720:
	#data 0x02000000
loc_8C124724:
	#data 0x20080000
loc_8c124728:
	#data bank16.loc_8c16be58
loc_8c12472c:
	#data bank16.loc_8c16be54
loc_8c124730:
	#data bank16.loc_8c16be50
;==============================================
	#align16_nop

;==============================================
loc_8c124740:
	mov.l @(0x34,r13),r2
	mov.l @(loc_8C12497C,pc),r3
	tst r3,r2
	bt loc_8c124760
	bsr loc_8c124d80
	fmov fr14,fr4
	mov.l @(0x38,r13),r3
	shll16 r0
	shll8 r0
	bra loc_8c12476a
	or r3,r0
;==============================================
	#align16_nop

;==============================================
loc_8c124760:
	fmov fr15,fr5
	fmov fr15,fr6
	fmov fr15,fr7
	bsr loc_8c124b40
	fmov fr14,fr4

loc_8c12476a:
	mov.l r0,@(0x10,r12)

loc_8c12476c:
	mov.l @(0x34,r13),r0
	and 0x30,r0
	mov r0,r4
	mov 0x18,r0
	fmov.s @(r0,r13),fr7
	tst r4,r9
	mov 0x20,r0
	bt/s loc_8c12478a
	fmov.s @(r0,r13),fr4
	fmov fr7,fr3
	fmov fr15,fr7
	fsub fr3,fr7
	fmov fr4,fr3
	fmov fr15,fr4
	fsub fr3,fr4

loc_8c12478a:
	mov 0x1C,r0
	mov 0x20,r3
	fmov.s @(r0,r13),fr5
	tst r3,r4
	mov 0x24,r0
	bf/s loc_8c1247a4
	fmov.s @(r0,r13),fr6
	fmov fr5,fr3
	fmov fr15,fr5
	fsub fr3,fr5
	fmov fr6,fr3
	fmov fr15,fr6
	fsub fr3,fr6

loc_8c1247a4:
	mov.l @(0x34,r13),r0
	mov.l @(loc_8C124980,pc),r3
	mov.l @(loc_8C124984,pc),r1
	and r3,r0
	cmp/eq r1,r0
	bt loc_8c1247c0
	mov.l @(loc_8C124980,pc),r1
	cmp/eq r1,r0
	bt loc_8c1247d0
	bra loc_8c1247d8
	nop

;==============================================
	#align16_nop

;==============================================
loc_8c1247c0:
	mov.l @r12,r1
	mov.l @(loc_8C12497C,pc),r2
	or r2,r1
	bra loc_8c1247d8
	mov.l r1,@r12

;==============================================
	#align16_nop

;==============================================
loc_8c1247d0:
	mov.l @r12,r0
	mov.l @(loc_8C124988,pc),r2
	or r2,r0
	mov.l r0,@r12

loc_8c1247d8:
	mov r15,r4
	add 0x18,r4
	mov.l @(loc_8C12498C,pc),r5
	fmov.s fr7,@r4
	mov.l @r4,r3
	and r5,r3
	mov.l r3,@(0x14,r15)
	fmov.s fr4,@r4
	mov.l @r4,r3
	and r3,r5
	mov.l r5,@r15
	fmov.s fr5,@r4
	mov.l @r4,r9
	fmov.s fr6,@r4
	mov.l @r4,r2
	shlr16 r9
	shlr16 r2
	mov.l r2,@(0x0C,r15)
	mov.l @(0x30,r13),r0
	cmp/eq 0xFF,r0
	bf/s loc_8c124812
	mov r0,r4
	tst r14,r14
	bt loc_8c124810
	bra loc_8c124812
	mov 0x02,r4
;==============================================
	#align16_nop

;==============================================
loc_8c124810:
	mov 0x00,r4

loc_8c124812:
	mov.l @(loc_8C124990,pc),r3
	shll2 r4
	mov.l r4,@(0x10,r15)
	mov.l @r3,r0
	mov.l @(loc_8C124998,pc),r3
	mov.l @(r0,r4),r4
	mov.l @(loc_8C12499C,pc),r14
	mov r4,r2
	shlr16 r2
	shlr8 r2
	mov.l @(loc_8C124994,pc),r1
	and r4,r14
	mov.l @(loc_8C1249A4,pc),r4
	mov.l r2,@r1
	mov.l r2,@r3
	mov.l @(loc_8C12497C,pc),r3
	mov.l @(0x34,r13),r0
	mov.l @(loc_8C1249A0,pc),r2
	tst r3,r0
	bt/s loc_8c124850
	or r2,r14
	mov.l @r12,r0
	mov.l @r4,r1
	or r1,r0
	bra loc_8c124856
	or 0x04,r0

;==============================================
	#align16_nop

;==============================================
loc_8c124850:
	mov.l @r12,r0
	mov.l @r4,r1
	or r1,r0

loc_8c124856:
	mov.l r0,@r14
	mov.l @(0x04,r12),r3
	mov.l r3,@(0x04,r14)
	mov.l @(0x08,r12),r2
	mov.l @(0x04,r4),r3
	or r3,r2
	mov.l r2,@(0x08,r14)
	mov.l @(0x0C,r12),r3
	mov.l r3,@(0x0C,r14)
	mov.l @(0x10,r12),r2
	mov.l r2,@(0x10,r14)
	bsr loc_8c124d80
	fmov fr14,fr4
	mov.l @(0x3C,r13),r2
	shll16 r0
	shll8 r0
	or r2,r0
	mov.l r0,@(0x14,r14)
	pref @r14
	mov.l @(loc_8C1249A8,pc),r3
	add 0x20,r14
	mov r10,r4
	mov r11,r5
	mov.l r3,@r14
	mov 0x0C,r0
	mov.l @r5,r2
	mov.l r2,@(0x04,r14)
	mov.l @r4,r3
	mov.l r3,@(0x08,r14)
	fmov.s fr13,@(r0,r14)
	mov 0x18,r0
	mov.l @(0x04,r5),r3
	mov.l r3,@(0x10,r14)
	mov.l @(0x04,r4),r2
	mov.l r2,@(0x14,r14)
	fmov.s fr13,@(r0,r14)
	mov 0x24,r0
	mov.l @(0x08,r5),r3
	mov.l r3,@(0x1C,r14)
	mov.l @(0x08,r4),r2
	mov.l r2,@(0x20,r14)
	fmov.s fr13,@(r0,r14)
	mov.l @(0x0C,r5),r3
	mov.l r3,@(0x28,r14)
	mov.l @(0x0C,r4),r2
	mov.l @(loc_8C1249AC,pc),r3
	mov.l r2,@(0x2C,r14)
	or r3,r8
	mov.l r8,@(0x30,r14)
	mov.l @(0x14,r15),r2
	or r9,r2
	mov.l r2,@(0x34,r14)
	mov.l @r15,r1
	or r1,r9
	mov.l r9,@(0x38,r14)
	mov.l @(0x0C,r15),r2
	mov.l @r15,r1
	or r2,r1
	mov.l r1,@(0x3C,r14)
	pref @r14
	add 0x20,r14
	pref @r14
	mov.l @(loc_8C124990,pc),r1
	add 0x20,r14
	mov.l @(0x10,r15),r4
	mov.l @r1,r2
	mov.l @(loc_8C1249B0,pc),r3
	add r2,r4
	mov.l @(loc_8C12499C,pc),r2
	mov.l @r4,r0
	and r2,r14
	and r3,r0
	or r14,r0
	mov.l r0,@r4

loc_8C1248EA:
	mov 0x00,r0 ; r0 set to 0x00

loc_8C1248EC:
	add 0x3C,r15
	lds.l @r15+,pr
	fmov.s @r15+,fr12
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

;==============================================
	#align16_nop

;==============================================
loc_8C124910:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C1249B4,pc),r2 ; r2 set to 0x8C2DEE54
	mov.l @(loc_8C1249B8,pc),r1 ; r1 set to 0x8C2DAD3c
	mov.l r5,@r15
	mov.l @r2,r3
	mov.l @r1,r0
	add r3,r4
	mov.l @(loc_8C1249BC,pc),r2 ; r2 set to 0x8C2DAD4c
	shll r4
	mov.w @(r0,r4),r14
	mov 0x07,r4 ; r4 set to 0x07
	mov.l @r2,r3
	shll2 r14
	shll2 r14
	shll r14
	add r3,r14
	mov.l @(0x0C,r14),r0
	mov 0xE5,r3 ; r3 set to 0xFFFFFFE5
	shld r3, r0
	mov.l @(loc_8C1249C0,pc),r3 ; r3 set to 0x8C16BBEc
	mov.l @r3,r1 ; r1 ??
	tst r1,r1
	bt/s loc_8C1249D0
	and r0,r4 ; r4 ??? bc r0 is ???
	mov r4,r0
	cmp/eq 0x05,r0
	bt loc_8C12495e
	mov r4,r0
	cmp/eq 0x06,r0
	bt loc_8C12495e
	bra loc_8C124A90
	nop

loc_8C12495E:
	mov.l @(0x0C,r14),r4
	mov 0xEB,r3 ; r3 set to 0xFFFFFFEb
	mov.l @(loc_8C1249C4,pc),r2 ; r2 set to 0xF81FFFFf
	mov 0x3F,r10 ; r10 set to 0x3f
	mov r4,r0
	mov.l @r15,r1
	shld r3, r0
	mov 0x15,r3 ; r3 set to 0x15
	and r2,r4
	shad r3, r1
	or r1,r4
	and r0,r10 ; r10 ??? bc r0 is ???
	bra loc_8C124A90
	mov.l r4,@(0x0C,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c12497c:
	#data 0x00020000
loc_8c124980:
	#data 0x0000C000
loc_8c124984:
	#data 0x00008000
loc_8c124988:
	#data 0x00030000
loc_8c12498c:
	#data 0xFFFF0000
loc_8c124990:
	#data 0x8C2AA508
loc_8c124994:
	#data 0xFF000038
loc_8c124998:
	#data 0xFF00003c
loc_8c12499c:
	#data 0x03FFFFFf
loc_8c1249a0:
	#data 0xE0000000
loc_8c1249a4:
	#data 0x8C2DEE8c
loc_8c1249a8:
	#data 0xF0000000
loc_8c1249ac:
	#data 0x53500000
loc_8c1249b0:
	#data 0xFC000000
loc_8C1249B4:
	#data 0x8C2DEE54
loc_8C1249B8:
	#data 0x8C2DAD3c
loc_8C1249BC:
	#data 0x8C2DAD4c
loc_8C1249C0:
	#data bank16.loc_8c16BBEc
loc_8C1249C4:
	#data 0xF81FFFFf

;==============================================
	#align16_nop

;==============================================
loc_8c1249d0:
	mov.l @(loc_8C124BC8,pc),r3
	mov.l @r3,r2
	tst r2,r2
	bt loc_8c124a90
	mov r4,r0
	cmp/eq 0x05,r0
	bt loc_8c1249e4
	mov r4,r0
	cmp/eq 0x06,r0
	bf loc_8c124a90

loc_8c1249e4:
	mov.w @(0x16,r14),r0
	mov.l @(loc_8c124bcc,pc),r3
	extu.w r0,r4
	jsr @r3
	mov r4,r10
	mov.l @(loc_8C124BD0,pc),r0
	mov.l @(loc_8C124BD4,pc),r5
	mov.w r0,@(0x16,r14)
	mov.w @(0x04,r5),r0
	mov.l @r15,r4
	cmp/ge r0,r4
	bt loc_8c124a90
	mov r4,r0
	mov r0,r11
	mov r0,r3
	shll r11
	add r3,r11
	mov r0,r3
	shll2 r3
	mov.w r0,@(0x16,r14)
	mov.l @(0x18,r5),r13
	shll r3
	mov.l @(loc_8C124BC8,pc),r1
	shll2 r11
	add r3,r13
	mov.w @(0x04,r13),r0
	mov.l @r1,r2
	tst r0,r0
	bt/s loc_8c124a30
	add r2,r11
	mov.w @(0x04,r13),r0
	add 0x01,r0
	mov.w r0,@(0x04,r13)
	bra loc_8c124a82
	mov.w @r13,r12

;==============================================
	#align16_nop

;==============================================
loc_8c124a30:
	mov.b @(0x02,r11),r0
	mov 0xFC,r3
	mov.b r0,@(0x02,r13)
	mov.l @(0x08,r11),r0
	add 0x0F,r0
	shad r3, r0
	mov.l @(loc_8c124bd8,pc),r3
	mov.b r0,@(0x03,r13)
	mov 0x01,r0
	mov.w r0,@(0x04,r13)
	mov r4,r0
	mov.w r0,@(0x06,r13)
	mov.l @(0x08,r11),r9
	mov.w @(0x02,r11),r0
	mov r9,r5
	jsr @r3
	mov r0,r4
	mov r0,r12
	cmp/pz r12
	bf loc_8c124a80
	mov.l @(loc_8c124bdc,pc),r3
	mov r9,r5
	mov.w r12,@r13
	jsr @r3
	mov r12,r4
	mov r12,r4
	mov.l @(loc_8c124be0,pc),r2
	mov.l @(0x04,r11),r5
	mov r9,r6
	shll2 r4
	jsr @r2
	shll2 r4
	bra loc_8c124a82
	nop

;==============================================
	#align16_nop

;==============================================
loc_8c124a80:
	mov 0x00,r12

loc_8c124a82:
	mov.l @(0x0C,r14),r2
	mov 0x15,r1
	mov.l @(loc_8C124BE4,pc),r3
	shad r1, r12
	and r3,r2
	or r12,r2
	mov.l r2,@(0x0C,r14)

loc_8C124A90:
	mov r10,r0
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
	#align16_nop

;==============================================
loc_8C124AB0:
	fmov.s fr14,@-r15
	sts.l pr,@-r15
	add 0xDC,r15
	fmov fr5,fr9
	fmul fr7,fr5
	fmov fr4,fr8
	fmul fr6,fr4
	fmul fr7,fr8
	mov r15,r1
	fmul fr6,fr9
	mov.l @(loc_8C124BE8,pc),r2 ; r2 set to 0x8C13F548
	mov r15,r7
	mov.l @(loc_8C124BEC,pc),r3 ; r3 set to 0x8C1294Bc
	add 0x04,r7
	add 0x04,r1
	jsr @r3
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(0x34,r4),r0 ; r0 ??? bc r4 is ???
	tst 0x0F,r0
	bf loc_8C124AE0
	fldi1 fr10
	fmov fr10,fr6
	bra loc_8C124AF8
	fmov fr10,fr7

loc_8c124ae0:
	mov.l r0,@r15
	and 0x03,r0
	lds r0,fpul
	mov.l @r15,r0
	shar r0
	float fpul,fr3
	shar r0
	and 0x03,r0
	lds r0,fpul
	fmov fr3,fr6
	float fpul,fr3
	fmov fr3,fr7

loc_8c124af8:
	mov 0x04,r1

loc_8c124afa:
	fmov.s @r7+,fr11
	mov 0x04,r0
	fldi0 fr3
	fsub fr6,fr11
	fmov.s @r7+,fr10
	fmov.s @(r0,r4),fr1
	mov 0x08,r0
	fsub fr7,fr10
	fcmp/eq fr3,fr11
	bt/s loc_8c124b1c
	fmov.s @(r0,r4),fr14
	fmov fr4,fr2
	fmul fr11,fr2
	fmov fr11,fr0
	fmac fr0,fr8,fr1
	fneg fr2
	fadd fr2,fr14

loc_8c124b1c:
	fldi0 fr3
	fcmp/eq fr3,fr10
	bt loc_8c124b28
	fmov fr10,fr0
	fmac fr0,fr5,fr14
	fmac fr0,fr9,fr1

loc_8c124b28:
	add 0xFF,r1
	fmov.s fr1,@r5
	fmov.s fr14,@r6
	tst r1,r1
	add 0x04,r6
	bf/s loc_8c124afa
	add 0x04,r5
	add 0x24,r15
	lds.l @r15+,pr
	rts
	fmov.s @r15+,fr14

;==============================================
	#align16_nop

;==============================================
loc_8c124b40:
	mova @(0xAC,PC),r0
	fmov @r0,fr8
	mova @(0xAC,PC),r0
	fmov @r0,fr9
	fmul fr8,fr4
	fmul fr8,fr5
	fmul fr8,fr6
	fmul fr8,fr7
	fcmp/gt fr9,fr4
	bf.s loc_8c124b70
	fmov fr4,fr8
	mova @(0xA0,PC),r0
	fmov fr8,fr2
	fmov @r0,fr3
	fadd fr3,fr2
	bra loc_8c124b72
	fmov fr2,fr3

;==============================================
	#align16_nop

;==============================================
loc_8c124b70:
	fmov fr8,fr3

loc_8c124b72:
	ftrc fr3,fpul
	fcmp/gt fr9,fr5
	sts fpul,r4
	bf.s loc_8c124b90
	fmov fr5,fr4
	mova @(0x78,PC),r0
	fmov fr4,fr2
	fmov @r0,fr3
	fadd fr3,fr2
	bra loc_8c124b92
	fmov fr2,fr3

;==============================================
	#align16_nop

;==============================================
loc_8c124b90:
	fmov fr4,fr3

loc_8c124b92:
	ftrc fr3,fpul
	fcmp/gt fr9,fr6
	sts fpul,r5
	bf.s loc_8c124bb0
	fmov fr6,fr4
	mova @(0x58,PC),r0
	fmov fr4,fr2
	fmov @r0,fr3
	fadd fr3,fr2
	bra loc_8c124bb2
	fmov fr2,fr3

;==============================================
	#align16_nop

;==============================================

loc_8c124bb0:
	fmov fr4,fr3

loc_8c124bb2:
	ftrc fr3,fpul
	fcmp/gt fr9,fr7
	sts fpul,r6
	bf.s loc_8c124c00
	fmov fr7,fr4
	mova @(0x38,PC),r0
	fmov fr4,fr2
	fmov @r0,fr3
	fadd fr3,fr2
	bra loc_8c124c02
	fmov fr2,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c124bc8:
	#data 0x8C2D6CEC
loc_8c124bcc:
	#data 0x8C11BDC0
loc_8c124bd0:
	#data 0x0000FFFF
loc_8c124bd4:
	#data 0x8C32B420
loc_8c124bd8:
	#data bank11.loc_8C11BE90
loc_8c124bdc:
	#data bank11.loc_8C11BF50
loc_8c124be0:
	#data bank11.loc_8C11F7F0
loc_8c124be4:
	#data 0xF81FFFFF
loc_8c124be8:
	#data bank13.loc_8C13F548
loc_8c124bec:
	#data 0x8C1294BC
loc_8c124bf0:
	#data 0x437F0000
loc_8c124bf4:
	#data 0x4F000000
loc_8c124bf8:
	#data 0xCF800000

;==============================================
	#align16_nop

;==============================================
loc_8c124c00:
	fmov fr4,fr3

loc_8c124c02:
	ftrc fr3,fpul
	mov.w @(0xF6,PC),r0
	cmp/hi r0,r4
	sts fpul,r7
	bf.s loc_8c124c10
	mov 0x00,r1
	mov r0,r4

loc_8c124c10:
	cmp/hi r0,r5
	bf loc_8c124c16
	mov r0,r5

loc_8c124c16:
	cmp/hi r0,r6
	bf loc_8c124c1c
	mov r0,r6

loc_8c124c1c:
	cmp/hi r0,r7
	bf.s loc_8c124c24
	shll8 r4
	mov r0,r7

loc_8c124c24:
	or r5,r4
	shll8 r4
	or r6,r4
	shll8 r4
	or r7,r4
	rts 
	mov r4,r0

;==============================================
	#align16_nop

;==============================================
loc_8c124c40:
	mov.l @(0xC0,PC),r3
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r13
	mov.w @(0xB2,PC),r2
	sts.l pr,@-r15
	mov.l r3,@r14
	mov.l @(0xB4,PC),r3
	mov.l r13,@(0x4,r14)
	mov.l r2,@(0x8,r14)
	mov.l r13,@(0xC,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0xC,r14),r5
	mov 0xE5,r3
	mov r13,r0
	mov 0x07,r4
	shld r3,r5
	mov.w r0,@(0x14,r14)
	and r4,r5
	mov r5,r0
	cmp/eq 0x00,r0
	bt loc_8c124c80
	cmp/eq 0x02,r0
	bt loc_8c124c80
	cmp/eq 0x05,r0
	bt loc_8c124c80
	cmp/eq 0x06,r0
	bt loc_8c124c80
	bra loc_8c124c84
	nop 

loc_8c124c80:
	mov 0x01,r0
	mov.w r0,@(0x14,r14)

loc_8c124c84:
	mov.l @(0x8,r14),r0
	mov.l @(0x84,PC),r5
	shlr2 r0
	shlr r0
	and r4,r0
	shll2 r0
	fmov @(r0,r5),fr3
	mov 0x18,r0
	fmov fr3,@(r0,r14)
	mov.l @(0x8,r14),r0
	and r4,r0
	shll2 r0
	fmov @(r0,r5),fr3
	mov 0x1C,r0
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8c124cb0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r11,@-r15
	mov 0x00,r11
	mov.l r10,@-r15
	mov 0x01,r10
	mov.l r9,@-r15
	mov 0x20,r9
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(0x4C,PC),r7
	mov.l @(0x48,PC),r8
	bra loc_8c124d32
	mov r11,r5

;==============================================
	#align16_nop

;==============================================
loc_8c124cd0:
	mov.l @r7,r0
	mov r5,r14
	shll2 r14
	mov.l @(r0,r14),r0
	cmp/eq 0xFF,r0
	bt.s loc_8c124d30
	mov r0,r13
	mov r5,r1
	shll2 r1
	shll2 r1
	mov r11,r6
	shll r1
	mov r10,r4

loc_8c124cea:
	mov r13,r2
	tst r4,r2
	bf loc_8c124d20
	mov.l @r7,r0
	mov.l @(r0,r14),r2
	or r4,r2
	mov.l r2,@(r0,r14)
	mov r1,r0
	bra loc_8c124d42
	add r6,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c124cfe:
	#data 0x00FF
loc_8c124d00:
	#data 0x04C0
	#align4
	
loc_8c124d04:
	#data 0xA0000009
loc_8c124d08:
	#data bank11.loc_8C11BB70
loc_8c124d0c:
	#data bank13.loc_8C13F528
loc_8c124d10:
	#data 0x8C2DAD44
loc_8c124d14:
	#data 0x8C2DAD48
;==============================================
	#align16_nop

;==============================================
loc_8c124d20:
	shll r4
	bra loc_8c124cea
	add 0x01,r6

;==============================================
	#align16_nop

;==============================================
loc_8c124d30:
	add 0x01,r5

loc_8c124d32:
	mov.l @r8,r1
	mov.l @(0x7C,PC),r3
	add 0x1F,r1
	jsr @r3
	mov r9,r0
	cmp/ge r0,r5
	bf loc_8c124cd0
	mov 0xFF,r0

loc_8c124d42:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8c124d60:
	mov 0x1F,r3
	mov.l @(0x54,PC),r2
	mov 0x01,r5
	and r4,r3
	mov.l @r2,r0
	shad r3,r5
	mov 0xFB,r3
	shad r3,r4
	mov r4,r3
	shll2 r3
	mov.l @(r0,r3),r1
	not r5,r5
	and r5,r1
	rts 
	mov.l r1,@(r0,r3)
	nop 

;==============================================
	#align16_nop

;==============================================
loc_8c124d80:
	mova @(0x38,PC),r0
	fmov @r0,fr3
	mova @(0x38,PC),r0
	fmov @r0,fr1
	fmul fr3,fr4
	fcmp/gt fr1,fr4
	bf.s loc_8c124da0
	fmov fr4,fr5
	mova @(0x30,PC),r0
	fmov fr5,fr0
	fmov @r0,fr2
	fadd fr2,fr0
	bra loc_8c124da2
	fmov fr0,fr2

;==============================================
	#align16_nop

;==============================================
loc_8c124da0:
	fmov fr5,fr2

loc_8c124da2:
	ftrc fr2,fpul
	mov.w @(0xA,PC),r5
	sts fpul,r4
	cmp/hi r5,r4
	bf loc_8c124dae
	mov r5,r4

loc_8c124dae:
	rts 
	mov r4,r0

;==============================================
loc_8c124db2:
	#data 0x00FF
	#align4

loc_8c124db4:
	#data loc_8c129128
loc_8c124db8:
	#data 0x8c2dad48
loc_8c124dbc:
	#data 0x437f0000
loc_8c124dc0:
	#data 0x4f000000
loc_8c124dc4:
	#data 0xcf800000

;==============================================
	#align16

;==============================================
loc_8C124DD0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l @(loc_8C124EA0,pc),r7 ; r7 set to 0x5F800000
	sts.l pr,@-r15
	mov.l @(loc_8C124EA4,pc),r3 ; r3 set to 0xA0800090
	add r7,r4
	mov.l r4,@r3 ; r3 ??? bc r4 is ???
	mov.l @(loc_8C124EA8,pc),r2 ; r2 set to 0xA0800094
	add r7,r5
	mov.l r5,@r2 ; r2 ??? bc r5 is ???
	mov.l @(loc_8C124EAC,pc),r4 ; r4 set to 0xA0800098
	mov.l r6,@r4 ; r4 ??? bc r6 is ???
	mov.l @(loc_8C124EB0,pc),r14 ; r14 set to 0x400000
	mov 0x00,r6 ; r6 set to 0x00
	mov r6,r5 ; r5 set to 0x00

loc_8C124DF0:
	mov.l @r4,r3
	tst r3,r3
	bf loc_8C124E00
	add 0x01,r5 ; r5 set to 0x01
	cmp/ge r14,r5
	bf loc_8C124DF0
	bra loc_8C124E14
	nop

loc_8C124E00:
	mov.l @(loc_8C124EB4,pc),r12 ; r12 set to 0x2000A0
	mov r6,r13

loc_8C124E04:
	mov.l @(loc_8C124EB8,pc),r2 ; r2 set to 0x8C125B70, r2 set to 0x8C125B70
	jsr @r2
	mov r12,r4 ; r4 set to 0x2000A0
	tst r0,r0
	bt loc_8C124E20
	add 0x01,r13
	cmp/ge r14,r13
	bf loc_8C124E04

loc_8C124E14:
	mov.w @(loc_8C124E9C,pc),r0 ; r0 set to 0xFF00, r0 set to 0xFF00, r0 set to 0xFF00
	bra loc_8C124E22
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C124E20:
	mov 0x00,r0 ; r0 set to 0x00

loc_8C124E22:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8C124E30:
	mov.l @(loc_8C124EAC,pc),r2 ; r2 set to 0xA0800098
	mov.l @r2,r3
	tst r3,r3
	bt loc_8C124E40
	rts
	mov 0x01,r0

;==============================================
	#align16_nop

;==============================================
loc_8C124E40:
	mov 0x00,r0 ; r0 set to 0x00
	rts
	nop

;==============================================
	#align16_nop

;==============================================
loc_8c124e50:
	cmp/pz r5
	bf loc_8c124e5a
	mov 0x08,r2
	cmp/ge r2,r5
	bf loc_8c124e60

loc_8c124e5a:
	rts
	mov 0xFF,r0

;==============================================
	#align16_nop

;==============================================
loc_8c124e60:
	mov.l @(loc_8c124ebc,pc),r0
	mov 0x04,r7
	mov 0x00,r6
	mov r4,r1

loc_8c124e68:
	mov.b @r0+,r2
	mov.b @r1+,r3
	cmp/eq r2,r3
	bt loc_8c124e80
	rts
	mov 0xFE,r0

;==============================================
	#align16_nop

;==============================================
loc_8c124e80:
	add 0x01,r6
	cmp/ge r7,r6
	bf loc_8c124e68
	mov r5,r0
	shll r0
	mov r5,r3
	mov.l @(loc_8C124EC0,pc),r1
	add r3,r0
	shll2 r0
	mov.l @(r0,r1),r0
	cmp/eq 0xFF,r0
	bt loc_8c124ed0
	rts
	mov 0xFD,r0

;==============================================
	#align4
loc_8c124e9c:
	#data 0x0000ff00
loc_8c124ea0:
	#data 0x5f800000
loc_8c124ea4:
	#data 0xa0800090
loc_8c124ea8:
	#data 0xa0800094
loc_8c124eac:
	#data 0xa0800098
loc_8c124eb0:
	#data 0x00400000
loc_8c124eb4:
	#data 0x002000a0
loc_8c124eb8:
	#data loc_8c125b70
loc_8c124ebc:
	#data bank13.loc_8c13f57c
loc_8C124EC0:
	#data 0x8C2DAE60

;==============================================
	#align16_nop

;==============================================
loc_8c124ed0:
	mov.l @(loc_8C12509C,pc),r2
	mov.l @(0x08,r4),r4
	mov.l @r2,r5
	mov.l @(loc_8c1250a0,pc),r1
	mov.l @r1,r3
	add r3,r4
	cmp/gt r5,r4
	bf loc_8c124ef0
	rts
	mov 0xFC,r0

;==============================================
	#align16_nop

;==============================================
loc_8c124ef0:
	mov.l @(loc_8C1250A4,pc),r2
	mov.l @r2,r3
	tst r3,r3
	bt loc_8c124f00
	rts
	mov 0xFB,r0

;==============================================
	#align16_nop

;==============================================
loc_8c124f00:
	mov 0x00,r0
	rts
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C124F10:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	add 0xF8,r15
	mov.l @(loc_8C1250A0,pc),r3 ; r3 set to 0x8C2DAD78
	mov r4,r1
	mov.l @(loc_8C1250A8,pc),r10 ; r10 set to 0x8C2DAE60
	mov.l @r3,r2
	add r6,r2
	mov.l r2,@r3 ; r3 ??? bc r2 is ???
	mov r4,r3
	shll r3
	mov.l @(loc_8C1250AC,pc),r2 ; r2 set to 0xA0800060
	add r1,r3
	shll2 r3
	mov.l r3,@(0x04,r15)
	add r10,r3
	mov.l r3,@r15
	mov.l r5,@r3
	mov.l @r15,r3
	mov.l r6,@(0x08,r3)
	mov r4,r3
	shll2 r3
	add r2,r3
	mov.l r5,@r3
	mov r4,r5
	add 0xFF,r5
	mov r5,r14
	mov r5,r3
	shll r14
	mov r10,r1 ; r1 set to 0x8C2DAE60
	add r3,r14
	shll2 r14
	add r10,r14
	mov r14,r5
	mov 0x00,r11 ; r11 set to 0x00
	cmp/hs r1,r5
	mov r11,r13 ; r13 set to 0x00
	bf/s loc_8C124F78
	mov.l r14,@r15

loc_8C124F62:
	mov.l @r5,r0
	cmp/eq 0xFF,r0
	bt loc_8C124F70
	mov.l @(0x04,r14),r13 ; r13 ??? bc r14 is ???
	mov.l @(0x08,r14),r3
	bra loc_8C124F78
	add r3,r13

loc_8c124f70:
	add 0xF4,r5
	cmp/hs r1,r5
	bt/s loc_8c124f62
	add 0xF4,r14

loc_8c124f78:
	tst r13,r13
	bf loc_8c124f80
	mov.l @(loc_8C1250B0,pc),r3
	mov.l @r3,r13

loc_8c124f80:
	add 0x01,r4
	mov.l @(0x04,r15),r2
	mov r4,r5
	mov r4,r3
	shll r5
	add r3,r5
	shll2 r5
	add r10,r5
	mov r5,r4
	add r1,r2
	mov.l r13,@(0x04,r2)
	mov.l r10,@r15
	mov.l r5,@(0x04,r15)
	mov.l @r15,r14
	add 0x60,r14
	cmp/hs r14,r4
	bt loc_8c124fba

loc_8c124fa2:
	mov.l @r4,r0
	cmp/eq 0xFF,r0
	bt loc_8c124fb2
	mov.l @(0x04,r5),r2
	mov.l @(0x08,r5),r3
	add r6,r2
	mov.l r2,@(0x04,r5)
	add r3,r11

loc_8c124fb2:
	add 0x0C,r4
	cmp/hs r14,r4
	bf/s loc_8c124fa2
	add 0x0C,r5

loc_8c124fba:
	mov r13,r0
	mov.l r11,@r7
	add 0x08,r15
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8c124fd0:
	cmp/pz r4
	bf loc_8c124fda
	mov 0x08,r2
	cmp/ge r2,r4
	bf loc_8c124fe0

loc_8c124fda:
	rts 
	mov 0xFF,r0

;==============================================
	#align16_nop

;==============================================
loc_8c124fe0:
	mov r4,r0
	shll r0
	mov r4,r3
	mov.l @(0xC0,PC),r1
	add r3,r0
	shll2 r0
	mov.l @(r0,r1),r0
	cmp/eq 0xFF,r0
	bf loc_8c125000
	rts 
	mov 0xFE,r0

;==============================================
	#align16_nop

;==============================================
loc_8c125000:
	mov.l @(0xA0,PC),r3
	mov.l @r3,r2
	tst r2,r2
	bt loc_8c125010
	rts 
	mov 0xFD,r0

;==============================================
	#align16_nop

;==============================================
loc_8c125010:
	mov 0x00,r0
	rts 
	nop 

;==============================================
	#align16_nop

;==============================================
loc_8c125020:
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	add 0xFC,r15
	mov.l @(0x74,PC),r7
	mov r4,r2
	shll r2
	mov.l @r7,r3
	mov 0xFF,r1
	sub r5,r3
	mov.l r3,@r7
	mov r4,r3
	add r3,r2
	mov.l @(0x6C,PC),r7
	shll2 r2
	mov r4,r3
	add r7,r2
	mov.l r1,@r2
	shll2 r3
	mov.l @(0x64,PC),r2
	add r2,r3
	mov.l r1,@r3
	add 0x01,r4
	mov.l r7,@r15
	mov r4,r11
	shll r11
	mov r4,r3
	add r3,r11
	shll2 r11
	add r7,r11
	mov r11,r1
	mov r11,r4
	mov r11,r7
	mov.l @r15,r11
	mov 0x00,r12
	add 0x60,r11
	cmp/hs r11,r4
	bt.s loc_8c12508e
	mov r12,r13

loc_8c12506e:
	mov.l @r4,r0
	cmp/eq 0xFF,r0
	bt loc_8c125084
	tst r13,r13
	bf.s loc_8c12507c
	mov.l @(0x8,r7),r2
	mov.l @(0x4,r1),r13

loc_8c12507c:
	mov.l @(0x4,r7),r3
	add r2,r12
	sub r5,r3
	mov.l r3,@(0x4,r7)

loc_8c125084:
	add 0x0C,r4
	cmp/hs r11,r4
	add 0x0C,r7
	bf.s loc_8c12506e
	add 0x0C,r1

loc_8c12508e:
	mov r13,r0
	mov.l r12,@r6
	add 0x04,r15
	mov.l @r15+,r11
	mov.l @r15+,r12
	rts 
	mov.l @r15+,r13

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c12509c:
	#data 0xA0800088
loc_8c1250a0:
	#data 0x8C2DAD78
loc_8c1250a4:
	#data 0x8C2DAD80
loc_8c1250a8:
	#data 0x8C2DAE60
loc_8c1250ac:
	#data 0xA0800060
loc_8C1250B0:
	#data 0x8C2DAD6C

;==============================================
	#align16_nop

;==============================================
loc_8C1250C0:
	mov.w @(loc_8C125196,pc),r0 ; r0 set to 0xC4
	mov.l r14,@-r15
	mov.l r12,@-r15
	mov.w @(loc_8C125198,pc),r2 ; r2 set to 0x6E0
	mov.l @(loc_8C1251A0,pc),r6 ; r6 set to 0x8C2DAD9c
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l @(r0,r4),r3
	mov r3,r1
	cmp/hs r2,r1
	mov.l r3,@r6 ; r6 ??? bc r3 is ???
	bt loc_8C1250E0
	bra loc_8C12523c
	mov 0xFF,r0

;==============================================
	#align16_nop

;==============================================
loc_8C1250E0:
	mov.l @(loc_8C1251A4,pc),r6 ; r6 set to 0x8C2DAD74
	tst r5,r5
	bf loc_8C1250F0
	mov.l @(loc_8C1251A8,pc),r3 ; r3 set to 0x200000
	bra loc_8C125110
	mov.l r3,@r6

;==============================================
	#align16_nop

;==============================================
loc_8C1250F0:
	mov.w @(loc_8C12519A,pc),r1 ; r1 set to 0x200
	cmp/eq r1,r5
	bf loc_8C125100
	mov.l @(loc_8C1251AC,pc),r2 ; r2 set to 0x800000
	bra loc_8C125110
	mov.l r2,@r6

;==============================================
	#align16_nop

;==============================================
loc_8C125100:
	bra loc_8C12523c
	mov 0xFE,r0

;==============================================
	#align16_nop

;==============================================
loc_8c125110:
	mov.l @(loc_8C1251B0,pc),r10
	mov.l @r10,r6
	mov.l @(loc_8C1251B4,pc),r9
	mov 0x01,r7
	and r9,r6
	or r7,r6
	mov.l r6,@r10
	mov.l @(loc_8C1251B8,pc),r2
	mov.l r5,@r2
	mov.l @r10,r6
	and r9,r6
	or r7,r6
	mov.l r6,@r10
	mov.l @(loc_8C1251BC,pc),r11
	mov r4,r0
	add 0x54,r0
	mov r4,r14
	mov r11,r7
	mov.l @r0,r0
	mov 0x00,r12
	mov r12,r1
	shlr2 r0
	cmp/hs r0,r1
	bt/s loc_8c12514e
	mov r12,r6

loc_8c125142:
	mov.l @r14+,r3
	mov.l r3,@r7
	add 0x01,r6
	cmp/hs r0,r6
	bf/s loc_8c125142
	add 0x04,r7

loc_8c12514e:
	mov.l @(loc_8C1251C0,pc),r3
	mov.l r5,@r3
	mov.l @(loc_8C1251C4,pc),r6
	mov 0xFF,r14
	bra loc_8c125166
	mov 0x08,r5

;==============================================
	#align16_nop

;==============================================
loc_8c125160:
	mov.l r14,@r6
	add 0xFF,r5
	add 0x04,r6

loc_8c125166:
	tst r5,r5
	bf loc_8c125160
	mov.l @r10,r5
	and r9,r5
	mov.l r5,@r10
	mov.l @(loc_8C1251C8,pc),r7
	mov r7,r6
	mov r7,r5
	bra loc_8c125188
	add 0x60,r6

;==============================================
	#align16_nop

;==============================================
loc_8c125180:
	mov.l r14,@r5
	mov.l r12,@(0x04,r5)
	mov.l r12,@(0x08,r5)
	add 0x0C,r5

loc_8c125188:
	cmp/hs r6,r5
	bf loc_8c125180
	mov.l @(loc_8C1251CC,pc),r7
	mov.w @(loc_8C12519C,pc),r6
	mov r7,r5
	bra loc_8c1251e0
	add r7,r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c125196:
	#data 0x00C4
loc_8c125198:
	#data 0x06E0
loc_8c12519a:
	#data 0x0200
loc_8C12519C:
	#data 0x00C0
	#align4

loc_8c1251a0:
	#data 0x8C2DAD9C
loc_8c1251a4:
	#data 0x8C2DAD74
loc_8c1251a8:
	#data 0x00200000
loc_8c1251ac:
	#data 0x00800000
loc_8C1251B0:
	#data 0xA0702C00
loc_8C1251B4:
	#data 0x0000FFFE
loc_8C1251B8:
	#data 0xA0702800
loc_8C1251BC:
	#data 0xA0800000
loc_8C1251C0:
	#data 0xA0800050
loc_8C1251C4:
	#data 0xA0800060
loc_8C1251C8:
	#data 0x8C2DAE60
loc_8C1251CC:
	#data 0x8C2DADA0

;==============================================
loc_8c1251d0:
	mov r5,r7
	mov r12,r0
	add 0x04,r7
	mov.b r14,@r5
	mov.b r0,@(0x01,r5)
	add 0x18,r5
	mov.l r14,@(0x04,r7)
	mov.l r14,@r7

loc_8c1251e0:
	cmp/hs r6,r5
	bf loc_8c1251d0
	mov.w @(loc_8C1252B4,pc),r0
	mov.l @(loc_8C1252BC,pc),r3
	mov.l @(r0,r4),r2
	add 0xFC,r0
	add r11,r2
	mov.l r2,@r3
	mov.l @(r0,r4),r1
	add 0x48,r0
	mov.l @(loc_8C1252C0,pc),r3
	mov.l @(loc_8C1252C4,pc),r2
	add r3,r1
	mov.l r1,@r2
	mov.l @(r0,r4),r3
	mov.l @(loc_8C1252D0,pc),r1
	add r3,r11
	mov.l @(loc_8C1252CC,pc),r3
	mov.l @(loc_8C1252C8,pc),r2
	mov.l r11,@r2
	mov.l r3,@r1
	mov.l @(loc_8C1252D8,pc),r3
	mov.l @(loc_8C1252D4,pc),r2
	mov.l @(loc_8C1252DC,pc),r1
	mov.l r12,@r2
	mov.l r12,@r3
	mov.l r12,@r1
	mov.l @(loc_8c1252e4,pc),r5
	mov r12,r4
	mov.l @(loc_8C1252E0,pc),r6

loc_8c12521c:
	mov.l @r6,r3
	tst r3,r3
	bf loc_8c125230
	add 0x01,r4
	cmp/hs r5,r4
	bf loc_8c12521c
	mov.w @(loc_8C1252B6,pc),r0
	bra loc_8c12523c
	nop

;==============================================
	#align16_nop

;==============================================
loc_8c125230:
	mov.w @(loc_8C1252B8,pc),r2
	mov.l @(loc_8C1252E8,pc),r3
	mov.l @r3,r1
	and r2,r1
	mov.l r1,@r3
	mov 0x00,r0

loc_8C12523C:
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	rts
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8C125250:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r5,@(0x04,r15)
	mov r4,r12
	bsr loc_8C124E50
	mov r12,r4
	tst r0,r0
	bf/s loc_8C125306
	mov r0,r4
	mov.l @(0x08,r12),r9
	mov r15,r7
	mov.l @(0x04,r12),r5
	mov r9,r6
	bsr loc_8C124F10
	mov.l @(0x04,r15),r4
	mov.l @(loc_8C1252E4,pc),r8 ; r8 set to 0x400000
	mov r0,r11
	mov.w @(loc_8C1252BA,pc),r13 ; r13 set to 0x18A0
	mov 0x00,r14 ; r14 set to 0x00

loc_8C125284:
	bsr loc_8C125B70
	mov r13,r4 ; r4 set to 0x18A0
	tst r0,r0
	bt loc_8C1252A0
	add 0x01,r14 ; r14 set to 0x01
	cmp/ge r8,r14
	bf loc_8C125284
	bra loc_8C125364
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C1252A0:
	mov.l @(loc_8C1252EC,pc),r10 ; r10 set to 0xA08000B4
	mov 0x00,r4 ; r4 set to 0x00

loc_8C1252A4:
	mov.l @r10,r3
	tst r3,r3
	bf loc_8C1252F0
	add 0x01,r4 ; r4 set to 0x01
	cmp/ge r8,r4
	bf loc_8C1252A4
	bra loc_8C125364
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1252b4:
	#data 0x0084
loc_8c1252b6:
	#data 0xFF00
loc_8c1252b8:
	#data 0x07F7
loc_8C1252BA:
	#data 0x18A0
	#align4

loc_8c1252bc:
	#data 0x8C2DAD6c
loc_8c1252c0:
	#data 0xA0800010
loc_8c1252c4:
	#data 0x8C2DAD70
loc_8c1252c8:
	#data 0x8C2DAD68
loc_8c1252cc:
	#data 0xA0800400
loc_8c1252d0:
	#data 0x8C2DAD64
loc_8c1252d4:
	#data 0x8C2DAD78
loc_8c1252d8:
	#data 0x8C2DAD80
loc_8c1252dc:
	#data 0x8C2DAD60
loc_8c1252e0:
	#data 0xA080005c
loc_8C1252E4:
	#data 0x00400000
loc_8c1252e8:
	#data 0xA070289c
loc_8C1252EC:
	#data 0xA08000B4

;==============================================
loc_8c1252f0:
	mov.l @r15,r3
	tst r3,r3
	bt loc_8c125330
	mov r11,r5
	mov.l @r15,r6
	add r9,r5
	bsr loc_8c124dd0
	mov r11,r4
	tst r0,r0
	bt/s loc_8c125310
	mov r0,r4

loc_8C125306:
	bra loc_8C125376
	mov r4,r0

;==============================================
	#align16_nop

;==============================================
loc_8C125310:
	mov.l @(0x9C,PC),r13
	mov 0x00,r14

loc_8C125314:
	bsr loc_8c124e30
	nop 
	tst r0,r0
	bt loc_8c125330
	add 0x01,r14
	cmp/ge r13,r14
	bf loc_8c125314
	bra loc_8c125364
	nop 

;==============================================
	#align16_nop

;==============================================
loc_8C125330:
	mov r9,r7
	mov 0x00,r5
	mov r5,r2
	shlr2 r7
	cmp/hs r7,r2
	mov r12,r4
	bt.s loc_8c12534c
	mov r11,r6

loc_8C125340:
	mov.l @r4+,r3
	mov.l r3,@r6
	add 0x01,r5
	cmp/hs r7,r5
	bf.s loc_8c125340
	add 0x04,r6

loc_8C12534C:
	mov.l @(0x64,PC),r5
	mov 0x01,r6
	mov.l r6,@r5
	tst r6,r6
	bt.s loc_8c125364
	mov 0x00,r4

loc_8C125358:
	mov.l @r10,r2
	tst r2,r2
	bt loc_8c125370
	add 0x01,r4
	cmp/ge r8,r4
	bf loc_8c125358

loc_8C125364:
	mov.w @(loc_8C1253AE,pc),r0 ; r0 set to 0xFF00
	bra loc_8C125376
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C125370:
	mov 0x00,r3
	mov.l r3,@r5
	mov 0x00,r0

loc_8C125376:
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
	#align16_nop

;==============================================
loc_8C125390:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r5,@(0x04,r15)
	mov r4,r14
	mov.l r6,@(0x08,r15)
	mov.l @(0x04,r15),r5
	bsr loc_8C124E50
	mov r14,r4
	tst r0,r0
	bt/s loc_8C1253C0
	mov r0,r4
	bra loc_8C1253Ec
	mov r4,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1253AE:
	#data 0xFF00
	#align4

loc_8c1253b0:
	#data 0x01000000
loc_8c1253b4:
	#data 0xA08000B0

;==============================================
	#align16_nop

;==============================================
loc_8C1253C0:
	mov.l @(0x08,r14),r13
	mov r15,r7
	mov.l @(0x04,r14),r5
	mov r13,r6
	bsr loc_8C124F10
	mov.l @(0x04,r15),r4
	mov.l @(loc_8C1254B8,pc),r2 ; r2 set to 0x8C2DAD94
	mov.l @(loc_8C1254C0,pc),r1 ; r1 set to 0x8C2DAD80
	mov.l r0,@r2 ; r2 ??? bc r0 is ???
	mov 0x01,r2 ; r2 set to 0x01
	mov.l @(loc_8C1254BC,pc),r3 ; r3 set to 0x8C2DAD90
	mov.l r14,@r3 ; r3 ??? bc r14 is ???
	mov.l r2,@r1 ; r1 ??
	mov.l @(loc_8C1254C4,pc),r2 ; r2 set to 0x8C2DAD84
	mov.l @(0x08,r15),r0
	mov.l @(loc_8C1254C8,pc),r3 ; r3 set to 0x8C2DAD88
	mov.l r0,@r2 ; r2 ??? bc r0 is ???
	mov.l @(loc_8C1254CC,pc),r0 ; r0 set to 0x8C2DAD8c
	mov.l r13,@r3 ; r3 ??? bc r13 is ???
	mov.l @r15,r1
	mov.l r1,@r0 ; r0 ??? bc r1 is ???
	mov 0x00,r0 ; r0 set to 0x00

loc_8C1253EC:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8c125400:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r5,@(0x4,r15)
	mov r4,r13
	mov.l r6,@(0x8,r15)
	mov.l @(0x4,r15),r5
	bsr loc_8c124e50
	mov r13,r4
	tst r0,r0
	bt.s loc_8c125420
	mov r0,r4
	bra loc_8c125448
	mov r4,r0

;==============================================
	#align16_nop

;==============================================
loc_8c125420:
	mov.l @(0x8,r13),r14
	mov r15,r7
	mov.l @(0x4,r13),r5
	mov r14,r6
	bsr loc_8c124f10
	mov.l @(0x4,r15),r4
	mov.w @(0x82,PC),r3
	mov.l @(0x90,PC),r1
	mov.l @(0x84,PC),r2
	mov.l r0,@r2
	mov.l r3,@r1
	mov.l @(0x8C,PC),r3
	mov.l @(0x8,r15),r2
	mov.l @(0x90,PC),r0
	mov.l r2,@r3
	mov.l @(0x88,PC),r2
	mov.l r14,@r2
	mov.l @r15,r1
	mov.l r1,@r0
	mov 0x00,r0

loc_8c125448:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14


;==============================================
	#align16_nop

;==============================================
;unused?
loc_8c125460:
	mov.l @(0x5C,PC),r5
	mov.w @(0x4E,PC),r3
	mov.l r14,@-r15
	mov.l r12,@-r15
	mov.l @r5,r2
	cmp/eq r3,r2
	bt loc_8c125480
	bra loc_8c1254ea
	mov 0xFF,r0

;==============================================
	#align16_nop

;==============================================
loc_8c125480:
	mov r4,r12
	mov.l @(0x4C,PC),r14
	mov.l @(0x40,PC),r6
	mov 0x01,r1
	mov.l @(0x38,PC),r0
	mov.l @(0x2C,PC),r4
	bra loc_8c1254e2
	mov 0x00,r7

loc_8c125490:
	mov.l @r4,r2
	add 0x04,r2
	mov.l r2,@r4
	add 0xFC,r2
	mov.l @r12+,r3
	mov.l r3,@r2
	mov.l @r6,r2
	add 0xFC,r2
	tst r2,r2
	bf.s loc_8c1254e0
	mov.l r2,@r6
	mov.l r1,@r14
	mov.l @r5,r2
	add 0x01,r2
	mov.l r2,@r5
	bra loc_8c1254ea
	mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1254b2:
	#data 0x1001
loc_8c1254b4:
	#data 0x1004
	#align4

loc_8C1254B8:
	#data 0x8C2DAD94
loc_8C1254BC:
	#data 0x8C2DAD90
loc_8C1254C0:
	#data 0x8C2DAD80
loc_8C1254C4:
	#data 0x8C2DAD84
loc_8C1254C8:
	#data 0x8C2DAD88
loc_8C1254CC:
	#data 0x8C2DAD8c
loc_8C1254d0:
	#data 0xA08000B0

;==============================================
	#align16_nop

;==============================================
loc_8C1254e0:
	add 0x01,r7

loc_8c1254e2:
	mov.l @r0,r3
	cmp/ge r3,r7
	bf loc_8c125490
	mov 0x01,r0

loc_8c1254ea:
	mov.l @r15+,r12
	rts 
	mov.l @r15+,r14

;==============================================
loc_8C1254F0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(loc_8C12559C,pc),r14 ; r14 set to 0x8C2DAD80
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov 0x00,r10 ; r10 set to 0x00
	mov.l @(loc_8C125590,pc),r4 ; r4 set to 0xA08000B4
	sts.l pr,@-r15
	mov.l @r14,r0
	mov r4,r11 ; r11 set to 0xA08000B4
	mov.l @(loc_8C125598,pc),r13 ; r13 set to 0x8C2DAD94
	extu.b r0,r0
	mov.l @(loc_8C125594,pc),r12 ; r12 set to 0x8C2DAD88
	cmp/eq 0x00,r0
	bt/s loc_8C125530
	add 0xFC,r11 ; r11 set to 0xA08000B0
	cmp/eq 0x01,r0
	bt loc_8C125540
	cmp/eq 0x02,r0
	bt loc_8C125570
	cmp/eq 0x03,r0
	bt loc_8C1255B0
	cmp/eq 0x04,r0
	bt loc_8C1255Be
	cmp/eq 0x05,r0
	bf loc_8C12552a
	bra loc_8C125620
	nop

loc_8C12552A:
	bra loc_8C125636
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C125530:
	bra loc_8C125636
	mov 0xFF,r0

;==============================================
	#align16_nop

;==============================================
loc_8C125540:
	mov.l @(loc_8C1255A0,pc),r12 ; r12 set to 0x400000
	mov r10,r13
	mov.w @(loc_8C12558C,pc),r11 ; r11 set to 0x18A0

loc_8C125546:
	bsr loc_8C125B70
	mov r11,r4 ; r4 set to 0x18A0
	tst r0,r0
	bt loc_8C125560
	add 0x01,r13
	cmp/ge r12,r13
	bf loc_8C125546
	bra loc_8C125626
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C125560:
	mov.l @r14,r2
	add 0x01,r2
	bra loc_8C125626
	mov.l r2,@r14

;==============================================
	#align16_nop

;==============================================
loc_8C125570:
	mov.l @r4,r3
	tst r3,r3
	bt loc_8C125626
	mov.l @(loc_8C1255A4,pc),r2 ; r2 set to 0x8C2DAD8c
	mov.l @r2,r6
	tst r6,r6
	bt loc_8C1255F2
	mov.l @r13,r5
	mov.l @r12,r3
	add r3,r5
	bsr loc_8C124DD0
	mov.l @r13,r4
	bra loc_8C1255F2
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C12558C:
	#data 0x18A0
	#align4

loc_8C125590:
	#data 0xA08000B4
loc_8C125594:
	#data 0x8C2DAD88
loc_8C125598:
	#data 0x8C2DAD94
loc_8C12559C:
	#data 0x8C2DAD80
loc_8C1255A0:
	#data 0x00400000
loc_8C1255A4:
	#data 0x8C2DAD8c

;==============================================
	#align16_nop

;==============================================
loc_8C1255B0:
	bsr loc_8C124E30
	nop
	tst r0,r0
	bf loc_8C125626
	mov.l @r14,r2
	add 0x01,r2
	mov.l r2,@r14

loc_8C1255BE:
	mov.l @r14,r5
	mov.l @(loc_8C125648,pc),r3 ; r3 set to 0xFF00, r3 set to 0xFF00
	and r3,r5
	tst r5,r5
	bf/s loc_8C125610
	mov 0x01,r4 ; r4 set to 0x01, r4 set to 0x01
	bra loc_8C125602
	mov r10,r5

;==============================================
	#align16_nop

;==============================================
loc_8c1255d0:
	mov.l @(loc_8C12564C,pc),r6
	mov.l @r13,r3
	add 0x04,r3
	mov.l r3,@r13
	add 0xFC,r3
	mov.l @r6,r2
	add 0x04,r2
	mov.l r2,@r6
	add 0xFC,r2
	mov.l @r2,r1
	mov.l r1,@r3
	mov.l @r12,r3
	add 0xFC,r3
	tst r3,r3
	bf/s loc_8c125600
	mov.l r3,@r12
	mov.l r4,@r11

loc_8C1255F2:
	mov.l @r14,r3
	add 0x01,r3
	bra loc_8C125626
	mov.l r3,@r14

;==============================================
	#align16_nop

;==============================================
loc_8C125600:
	add 0x01,r5

loc_8C125602:
	mov.l @(loc_8C125650,pc),r6 ; r6 set to 0x8C2DAD84
	mov.l @r6,r3
	cmp/ge r3,r5
	bf loc_8C1255D0
	bra loc_8C125626
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C125610:
	mov.w @(loc_8C125644,pc),r2 ; r2 set to 0x100
	cmp/eq r2,r5
	bf loc_8C125634
	mov.l r4,@r11
	mov.l @r14,r0
	add 0x01,r0
	bra loc_8C125626
	mov.l r0,@r14

loc_8c125620:
	mov.l @r4,r2
	tst r2,r2
	bt loc_8c125630

loc_8C125626:
	bra loc_8C125636
	mov 0x01,r0

;==============================================
	#align16_nop

;==============================================
loc_8C125630:
	mov.l r10,@r11
	mov.l r10,@r14

loc_8c125634:
	mov 0x00,r0

loc_8C125636:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C125644:
	#data 0x0100
	#align4

loc_8C125648:
	#data 0x0000FF00
loc_8c12564c:
	#data 0x8C2DAD90
loc_8C125650:
	#data 0x8C2DAD84

;==============================================
	#align16_nop

;==============================================
loc_8C125660:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	bsr loc_8C124FD0
	mov r4,r14
	tst r0,r0
	bf/s loc_8C1256E4
	mov r0,r4
	mov r14,r9
	shll r9
	mov r14,r3
	mov.l @(loc_8C125708,pc),r0 ; r0 set to 0x8C2DAE68
	add r3,r9
	mov r15,r6
	shll2 r9
	mov.l @(r0,r9),r9
	mov r9,r5
	bsr loc_8C125020
	mov r14,r4
	mov.w @(loc_8C125706,pc),r10 ; r10 set to 0x18A0
	mov 0x00,r12 ; r12 set to 0x00
	mov.l @(loc_8C12570C,pc),r14 ; r14 set to 0x400000
	mov r0,r11 ; r11 set to 0x8C2DAE68
	mov r12,r13 ; r13 set to 0x00

loc_8C12569A:
	bsr loc_8C125B70
	mov r10,r4 ; r4 set to 0x18A0
	tst r0,r0
	bt loc_8C1256B0
	add 0x01,r13 ; r13 set to 0x01
	cmp/ge r14,r13
	bf loc_8C12569a
	bra loc_8C125738
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C1256B0:
	mov.l @(loc_8C125710,pc),r13 ; r13 set to 0xA08000B4
	mov r12,r4

loc_8C1256B4:
	mov.l @r13,r3
	tst r3,r3
	bf loc_8C1256D0
	add 0x01,r4
	cmp/ge r14,r4
	bf loc_8C1256B4
	bra loc_8C125738
	nop

;==============================================
	#align16_nop

;==============================================
loc_8c1256d0:
	tst r11,r11
	bt loc_8c125720
	mov r11,r5
	mov.l @r15,r6
	sub r9,r5
	bsr loc_8c124dd0
	mov r11,r4
	tst r0,r0
	bt/s loc_8c1256f0
	mov r0,r4

loc_8C1256E4:
	bra loc_8C125744
	mov r4,r0

;==============================================
	#align16_nop

;==============================================
loc_8C1256F0:
	mov.l @(0x20,PC),r10
	mov r12,r11

loc_8C1256F4:
	bsr loc_8c124e30
	nop 
	tst r0,r0
	bt loc_8c125720
	add 0x01,r11
	cmp/ge r10,r11
	bf loc_8c1256f4
	bra loc_8c125738
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C125706:
	#data 0x18A0
	#align4

loc_8C125708:
	#data 0x8C2DAE68
loc_8C12570C:
	#data 0x00400000
loc_8C125710:
	#data 0xA08000B4
loc_8C125714:
	#data 0x01000000

;==============================================
	#align16_nop

;==============================================
loc_8C125720:
	mov.l @(0x98,PC),r6
	mov 0x01,r5
	mov.l r5,@r6
	tst r5,r5
	bt.s loc_8c125738
	mov r12,r4

loc_8C12572C:
	mov.l @r13,r3
	tst r3,r3
	bt loc_8c125740
	add 0x01,r4
	cmp/ge r14,r4
	bf loc_8c12572c

loc_8C125738:
	mov.w @(loc_8C1257B8,pc),r0 ; r0 set to 0xFF00
	bra loc_8C125744
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C125740:
	mov.l r12,@r6
	mov r12,r0

loc_8C125744:
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
	#align16_nop

;==============================================
loc_8C125760:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	bsr loc_8C124FD0
	mov r4,r14
	tst r0,r0
	bt/s loc_8C125780
	mov r0,r4
	bra loc_8C1257Ae
	mov r4,r0

;==============================================
	#align16_nop

;==============================================
loc_8C125780:
	mov r14,r13
	shll r13
	mov r14,r3
	mov.l @(loc_8C1257C0,pc),r0 ; r0 set to 0x8C2DAE68
	add r3,r13
	mov r15,r6
	shll2 r13
	mov.l @(r0,r13),r13
	mov r13,r5
	bsr loc_8C125020
	mov r14,r4
	mov.l @(loc_8C1257C4,pc),r2 ; r2 set to 0x8C2DAD94
	neg r13,r13
	mov.l @(loc_8C1257C8,pc),r1 ; r1 set to 0x8C2DAD80
	mov.w @(loc_8C1257BA,pc),r3 ; r3 set to 0x101
	mov.l r0,@r2 ; r2 ??
	mov.l @(loc_8C1257D0,pc),r0 ; r0 set to 0x8C2DAD8c
	mov.l r3,@r1 ; r1 ??
	mov.l @(loc_8C1257CC,pc),r3 ; r3 set to 0x8C2DAD88
	mov.l r13,@r3 ; r3 ??? bc r13 is ???
	mov.l @r15,r2
	mov.l r2,@r0 ; r0 ??? bc r2 is ???
	mov 0x00,r0 ; r0 set to 0x00

loc_8C1257AE:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1257B8:
	#data 0xFF00
loc_8C1257BA:
	#data 0x0101
	#align4

loc_8C1257bc:
	#data 0xA08000B0
loc_8C1257C0:
	#data 0x8C2DAE68
loc_8C1257C4:
	#data 0x8C2DAD94
loc_8C1257C8:
	#data 0x8C2DAD80
loc_8C1257CC:
	#data 0x8C2DAD88
loc_8C1257D0:
	#data 0x8C2DAD8c

;==============================================
	#align16_nop

;==============================================
loc_8C1257E0:
	mov.l r14,@-r15
	extu.w r4,r14
	mov 0x0F,r7 ; r7 set to 0x0f
	mov.l @(loc_8C1258C4,pc),r3 ; r3 set to 0xFF00
	and r7,r14
	shll16 r14
	tst r5,r3
	shll8 r14
	bt/s loc_8C1258A0
	add r5,r14
	mov.w @(loc_8C1258A6,pc),r1 ; r1 set to 0x1A0
	mov r5,r0
	cmp/eq r1,r0
	bt/s loc_8C125862
	mov 0x7F,r4 ; r4 set to 0x7f
	mov.w @(loc_8C1258A8,pc),r1 ; r1 set to 0x4A0
	cmp/eq r1,r0
	bt loc_8C125862
	mov.w @(loc_8C1258AA,pc),r1 ; r1 set to 0x9A0
	cmp/eq r1,r0
	bt loc_8C125862
	mov.w @(loc_8C1258AC,pc),r1 ; r1 set to 0xAA0
	cmp/eq r1,r0
	bt loc_8C125862
	mov.w @(loc_8C1258AE,pc),r1 ; r1 set to 0x10A0
	cmp/eq r1,r0
	bt loc_8C125862
	mov.w @(loc_8C1258B0,pc),r1 ; r1 set to 0x5A0
	cmp/eq r1,r0
	bt loc_8C125860
	mov.w @(loc_8C1258B2,pc),r1 ; r1 set to 0x6A0
	cmp/eq r1,r0
	bt loc_8C125860
	mov.w @(loc_8C1258B4,pc),r1 ; r1 set to 0x7A0
	cmp/eq r1,r0
	bt loc_8C125860
	mov.w @(loc_8C1258B6,pc),r1 ; r1 set to 0x11A0
	cmp/eq r1,r0
	bt loc_8C125860
	mov.w @(loc_8C1258B8,pc),r1 ; r1 set to 0x1BA0
	cmp/eq r1,r0
	bt loc_8C125870
	mov.w @(loc_8C1258BA,pc),r1 ; r1 set to 0x30A0
	cmp/eq r1,r0
	bt loc_8C125880
	mov.w @(loc_8C1258BC,pc),r1 ; r1 set to 0x28A0
	cmp/eq r1,r0
	bt loc_8C125880
	mov.w @(loc_8C1258BE,pc),r1 ; r1 set to 0x29A0
	cmp/eq r1,r0
	bt loc_8C125880
	mov.w @(loc_8C1258C0,pc),r1 ; r1 set to 0x2A0
	cmp/eq r1,r0
	bt loc_8C1258A0
	mov.w @(loc_8C1258C2,pc),r1 ; r1 set to 0x3A0
	cmp/eq r1,r0
	bt loc_8C1258A0
	bra loc_8C125890
	nop

;==============================================
	#align16_nop

;==============================================
loc_8c125860:
	add 0x40,r6

loc_8C125862:
	bra loc_8C125884
	and r4,r6

;==============================================
	#align16_nop

;==============================================
loc_8C125870:
	bra loc_8C125884
	and r7,r6

;==============================================
	#align16_nop

;==============================================
loc_8c125880:
	add 0xFF,r6
	and r7,r6

loc_8C125884:
	shll16 r6
	bra loc_8C1258A0
	add r6,r14

;==============================================
	#align16_nop

;==============================================
loc_8C125890:
	mov 0xFE,r0 ; r0 set to 0xFFFFFFFe
	rts
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8C1258A0:
	mov r14,r4
	bra loc_8C125B70
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1258A6:
	#data 0x01A0
loc_8C1258A8:
	#data 0x04A0
loc_8C1258AA:
	#data 0x09A0
loc_8C1258AC:
	#data 0x0AA0
loc_8C1258AE:
	#data 0x10A0
loc_8C1258B0:
	#data 0x05A0
loc_8C1258B2:
	#data 0x06A0
loc_8C1258B4:
	#data 0x07A0
loc_8C1258B6:
	#data 0x11A0
loc_8C1258B8:
	#data 0x1BA0
loc_8C1258BA:
	#data 0x30A0
loc_8C1258BC:
	#data 0x28A0
loc_8C1258BE:
	#data 0x29A0
loc_8C1258C0:
	#data 0x02A0
loc_8C1258C2:
	#data 0x03A0
	#align4

loc_8C1258C4:
	#data 0x0000FF00

;==============================================
	#align16_nop

;==============================================
loc_8c1258d0:
	rts 
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8C1258E0:
	mov.l r14,@-r15
	mov 0x0F,r14 ; r14 set to 0x0f
	mov r5,r0
	and r4,r14 ; r14 ??? bc r4 is ???
	add 0xFF,r0
	mov.w @(loc_8C125954,pc),r1 ; r1 set to 0x1B0
	shll16 r14
	and 0x0F,r0
	shll8 r14
	add r0,r14
	mov r6,r0
	cmp/eq r1,r0
	add r6,r14
	bt/s loc_8C125922
	mov 0x7F,r4 ; r4 set to 0x7f
	mov.w @(loc_8C125956,pc),r1 ; r1 set to 0x2B0
	cmp/eq r1,r0
	bt loc_8C125922
	mov.w @(loc_8C125958,pc),r1 ; r1 set to 0x7B0
	cmp/eq r1,r0
	bt loc_8C125922
	mov.w @(loc_8C12595A,pc),r1 ; r1 set to 0x27B0
	cmp/eq r1,r0
	bt loc_8C125922
	mov.w @(loc_8C12595C,pc),r1 ; r1 set to 0xAB0
	cmp/eq r1,r0
	bt loc_8C125920
	mov.w @(loc_8C12595E,pc),r1 ; r1 set to 0x2AB0
	cmp/eq r1,r0
	bt loc_8C125920
	bra loc_8C125930
	nop

loc_8c125920:
	add 0x40,r7

loc_8C125922:
	and r4,r7
	shll16 r7
	bra loc_8C125940
	add r7,r14

;==============================================
	#align16_nop

;==============================================
loc_8C125930:
	mov 0xFE,r0 ; r0 set to 0xFFFFFFFe
	rts
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8C125940:
	mov r14,r4
	bra loc_8C125B70
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8C125950:
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C125954:
	#data 0x01B0
loc_8C125956:
	#data 0x02B0
loc_8C125958:
	#data 0x07B0
loc_8C12595A:
	#data 0x27B0
loc_8C12595C:
	#data 0x0AB0
loc_8C12595E:
	#data 0x2AB0

;==============================================
loc_8c125960:
	mov.l r14,@-r15
	mov 0x0F,r7
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	and r7,r13
	mov.w @(0xB4,PC),r1
	shll8 r13
	sts.l pr,@-r15
	mov r6,r12
	mov r5,r0
	mov r13,r14
	mov 0x7F,r4
	cmp/eq r1,r0
	and r4,r12
	add r5,r14
	bt.s loc_8c1259c0
	shll16 r12
	mov.w @(0x9E,PC),r1
	cmp/eq r1,r0
	bt loc_8c125a1c
	mov.w @(0x9A,PC),r1
	cmp/eq r1,r0
	bt loc_8c1259f0
	mov.w @(0x96,PC),r1
	cmp/eq r1,r0
	bt loc_8c1259f0
	mov.w @(0x92,PC),r1
	cmp/eq r1,r0
	bt loc_8c1259f0
	mov.w @(0x8E,PC),r1
	cmp/eq r1,r0
	bt loc_8c1259f0
	mov.w @(0x8A,PC),r1
	cmp/eq r1,r0
	bt loc_8c1259f0
	mov.w @(0x86,PC),r1
	cmp/eq r1,r0
	bt loc_8c125a00
	mov.w @(0x82,PC),r1
	cmp/eq r1,r0
	bt loc_8c125a10
	bra loc_8c125a20
	nop 

;==============================================
	#align16_nop

;==============================================
loc_8c1259c0:
	mov.w @(0x72,PC),r4
	mov.w @(0x72,PC),r3
	and r6,r4
	shll8 r4
	add r13,r4
	bsr loc_8c125b70
	add r3,r4
	tst r0,r0
	bt.s loc_8c1259e0
	mov r0,r5
	bra loc_8c125a50
	mov r5,r0

;==============================================
	#align16_nop

;==============================================
loc_8c1259e0:
	mov.w @(0x40,PC),r3
	mov r13,r14
	add r12,r14
	bra loc_8c125a40
	add r3,r14

;==============================================
	#align16_nop

;==============================================
loc_8c1259f0:
	add 0x40,r6
	bra loc_8c125a02
	and r4,r6

;==============================================
	#align16_nop

;==============================================
loc_8c125a00:
	and r7,r6

loc_8c125a02:
	shll16 r6
	bra loc_8c125a40
	add r6,r14

;==============================================
	#align16_nop

;==============================================
loc_8c125a10:
	mov.w @(0x26,PC),r2
	and r2,r6
	shll2 r6
	shll2 r6
	shll r6
	add r6,r12

loc_8c125a1c:
	bra loc_8c125a40
	add r12,r14

loc_8c125a20:
	bra loc_8c125a50
	mov 0xFE,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c125a24:
	#data 0x00A5
loc_8c125a26:
	#data 0x10A5
loc_8c125a28:
	#data 0x20A5
loc_8c125a2a:
	#data 0x30A5
loc_8c125a2c:
	#data 0x40A5
loc_8c125a2e:
	#data 0x00A7
loc_8c125a30:
	#data 0x10A7
loc_8c125a32:
	#data 0x50A5
loc_8c125a34:
	#data 0x00A6
loc_8c125a36:
	#data 0x7F00
loc_8c125a38:
	#data 0x70A5
loc_8c125a3a:
	#data 0x0080
;==============================================
	#align16_nop

;==============================================
loc_8c125a40:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c125b70
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8c125a50:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8c125a60:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r6,r13
	mov.w @(0x9C,PC),r1
	mov 0x0F,r6
	sts.l pr,@-r15
	mov r5,r0
	and r6,r14
	cmp/eq r1,r0
	shll8 r14
	bt.s loc_8c125a90
	add r5,r14
	mov.w @(0x8C,PC),r1
	cmp/eq r1,r0
	bt loc_8c125ac0
	mov.w @(0x88,PC),r1
	cmp/eq r1,r0
	bt loc_8c125ad0
	bra loc_8c125ae0
	nop 

;==============================================
	#align16_nop

;==============================================
loc_8c125a90:
	mov.w @(0x7A,PC),r4
	mov.w @(0x7A,PC),r3
	and r13,r4
	shll8 r4
	bsr loc_8c125b70
	add r3,r4
	tst r0,r0
	bt.s loc_8c125ab0
	mov r0,r5
	bra loc_8c125b00
	mov r5,r0

;==============================================
	#align16_nop

;==============================================
loc_8c125ab0:
	mov 0x7F,r14
	mov.w @(0x52,PC),r3
	and r13,r14
	shll16 r14
	bra loc_8c125af0
	add r3,r14

;==============================================
	#align16_nop

;==============================================
loc_8c125ac0:
	and r6,r13
	shll16 r13
	bra loc_8c125af0
	add r13,r14

;==============================================
	#align16_nop

;==============================================
loc_8c125ad0:
	mov r13,r0
	add 0x40,r0
	and 0x7F,r0
	shll16 r0
	bra loc_8c125af0
	add r0,r14

;==============================================
	#align16_nop

;==============================================
loc_8c125ae0:
	bra loc_8c125b00
	mov 0xFE,r0

;==============================================
	#align16_nop

;==============================================
loc_8c125af0:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c125b70
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8c125b00:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c125b08:
	#data 0x00a4
loc_8c125b0a:
	#data 0x10a4
loc_8c125b0c:
	#data 0x20a4
loc_8c125b0e:
	#data 0x7f00
loc_8c125b10:
	#data 0x70a4

;==============================================
	#align16_nop

;==============================================
loc_8c125b20:
	mov.l r14,@-r15
	mov r4,r0
	mov.w @(0xC4,PC),r1
	sts.l pr,@-r15
	cmp/eq r1,r0
	bf.s loc_8c125b60
	mov r4,r14
	mov 0x0F,r3
	and r3,r5
	shll16 r5
	add r5,r14
	bsr loc_8c125b70
	mov r14,r4
	tst r0,r0
	bt.s loc_8c125b50
	mov r0,r4
	lds.l @r15+,pr
	mov r4,r0
	rts 
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8c125b50:
	mov.w @(0x9A,PC),r2
	lds.l @r15+,pr
	add r2,r14
	mov r14,r4
	bra loc_8c125b70
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8c125b60:
	mov 0xFE,r0
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8C125B70:
	mov.l @(loc_8C125BF8,pc),r2 ; r2 set to 0x8C2DAD60
	mov 0x00,r7 ; r7 set to 0x00
	mov.l @r2,r3
	tst r3,r3
	bt/s loc_8C125B80
	mov r7,r6 ; r6 set to 0x00
	rts
	mov 0xFD,r0

;==============================================
loc_8C125B80:
	mov.l @(loc_8C125BF8,pc),r2 ; r2 set to 0x8C2DAD60
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov.l r3,@r2 ; r2 ??
	mov.w @(loc_8C125BF0,pc),r1 ; r1 set to 0x80
	tst r4,r1
	bf loc_8C125B90
	bra loc_8C125BB6
	mov 0xFE,r6

loc_8C125B90:
	mov.l @(loc_8C125BFC,pc),r5 ; r5 set to 0x8C2DAD64
	mov.l @r5,r2
	mov.l @r2,r3
	tst r3,r3
	bt loc_8C125BA0
	bra loc_8C125BB6
	mov 0xFF,r6

;==============================================
	#align16_nop

;==============================================
loc_8c125ba0:
	mov.l @r5,r2
	add 0x04,r2
	mov.l r2,@r5
	add 0xFC,r2
	mov.l r4,@r2
	mov.l @r5,r2
	mov.l @(loc_8C125C00,pc),r3
	cmp/eq r3,r2
	bf loc_8c125bb6
	mov.l @(loc_8C125C04,pc),r0
	mov.l r0,@r5

loc_8C125BB6:
	mov.l @(loc_8C125BF8,pc),r3 ; r3 set to 0x8C2DAD60
	mov.l r7,@r3 ; r3 ??? bc r7 is ???
	mov r6,r0
	rts
	nop

;==============================================
;unused?
loc_8c125bc0:
	mov 0x08,r3
	cmp/hs r3,r4
	bt loc_8c125c30
	mov.l @(0x40,PC),r3
	mov.l @(0x40,PC),r2
	mov.l @r3,r6
	mov.l @r6,r6
	shll2 r4
	mov.w @(0x1E,PC),r1
	shll r4
	mov r5,r0
	add 0x05,r4
	cmp/eq r1,r0
	add r2,r6
	shll2 r4
	bt.s loc_8c125c10
	add r4,r6
	mov.w @(0xE,PC),r1
	cmp/eq r1,r0
	bt loc_8c125c20
	bra loc_8c125c30
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C125Bec:
	#data 0x00A3
loc_8C125Bee:
	#data 0x0100
loc_8C125BF0:
	#data 0x0080
loc_8C125BF2:
	#data 0x04A0
loc_8C125BF4:
	#data 0x10A0
	#align4

loc_8C125BF8:
	#data 0x8C2DAD60
loc_8C125BFC:
	#data 0x8C2DAD64
loc_8c125c00:
	#data 0xA0800500
loc_8c125c04:
	#data 0xA0800400
loc_8c125c08:
	#data 0x8C2DAD68
loc_8c125c0c:
	#data 0xA0800000

;==============================================
loc_8c125c10:
	mov.l @r6,r0
	rts 
	and 0x7F,r0
;==============================================
	#align16_nop

;==============================================
loc_8c125c20:
	mov.w @(0xF0,PC),r3
	mov.l @r6,r0
	mov 0xF8,r2
	and r3,r0
	rts 
	shad r2,r0

;==============================================
	#align16_nop

;==============================================
loc_8c125c30:
	mov 0x80,r0
	rts 
	nop 

;==============================================
	#align16_nop

;==============================================
loc_8c125c40:
	add 0xFC,r15
	mov 0x08,r3
	cmp/hs r3,r4
	bf loc_8c125c4c
	bra loc_8c125d40
	nop 

loc_8c125c4c:
	add 0xFF,r5
	cmp/pz r5
	bt loc_8c125c56
	bra loc_8c125d40
	nop 

loc_8c125c56:
	mov 0x10,r2
	cmp/ge r2,r5
	bf loc_8c125c60
	bra loc_8c125d40
	nop 

loc_8c125c60:
	mov.l @(0xC0,PC),r3
	mov.l @(0xC4,PC),r2
	mov.l @r3,r7
	mov.l r7,@r15
	mov.l @(0x4,r7),r7
	shll2 r4
	shll2 r4
	add r5,r4
	shll2 r4
	add r2,r7
	add r4,r7
	mov.l @r7,r5
	mov.w @(0x9A,PC),r1
	extu.b r5,r5
	cmp/eq r1,r5
	bf loc_8c125c90
	mov.w @(0x94,PC),r0
	rts 
	add 0x04,r15

;==============================================
	#align16_nop

;==============================================
loc_8c125c90:
	mov.l @(0x94,PC),r3
	mov.l @r15,r4
	mov.l @(0x8,r4),r4
	mov 0x3F,r2
	mov.w @(0x7E,PC),r1
	and r2,r5
	mov r6,r0
	shll2 r5
	cmp/eq r1,r0
	shll2 r5
	shll2 r5
	add r3,r4
	add r5,r4
	mov r4,r5
	add 0x14,r5
	mov r4,r7
	bt.s loc_8c125cd0
	add 0x08,r7
	mov.w @(0x64,PC),r1
	cmp/eq r1,r0
	bt loc_8c125ce0
	mov.w @(0x60,PC),r1
	cmp/eq r1,r0
	bt loc_8c125cf0
	mov.w @(0x5C,PC),r1
	cmp/eq r1,r0
	bt loc_8c125d00
	bra loc_8c125d40
	nop 

;==============================================
	#align16_nop

;==============================================
loc_8c125cd0:
	mov.l @r5,r0
	and 0x7F,r0
	rts 
	add 0x04,r15

;==============================================
	#align16_nop

;==============================================
loc_8c125ce0:
	mov.w @(0x30,PC),r3
	mov.l @r5,r0
	mov 0xF8,r2
	and r3,r0
	shad r2,r0
	rts 
	add 0x04,r15

;==============================================
	#align16_nop

;==============================================
loc_8c125cf0:
	mov.l @(0x38,PC),r3
	mov.l @r7,r0
	and r3,r0
	shlr16 r0
	exts.w r0,r0
	rts 
	add 0x04,r15

;==============================================
	#align16_nop

;==============================================
loc_8c125d00:
	mov.l @(0x2C,PC),r3
	mov.l @r7,r4
	and r3,r4
	mov.l @(0x2C,PC),r0
	shlr16 r4
	shlr8 r4
	exts.b r4,r4
	mov.b @(r0,r4),r0
	rts 
	add 0x04,r15

;==============================================
loc_8c125d14:
	#data 0x7F00
loc_8c125d16:
	#data 0x00FF
loc_8c125d18:
	#data 0xFF7f
loc_8c125d1a:
	#data 0x01B0
loc_8c125d1c:
	#data 0x02B0
loc_8c125d1e:
	#data 0x27B0
loc_8c125d20:
	#data 0x2AB0
	#align4

loc_8c125d24:
	#data 0x8C2DAD68
loc_8c125d28:
	#data 0xA0800000
loc_8c125d2c:
	#data 0x007F0000
loc_8c125d30:
	#data 0x1F000000
loc_8C125D34:
	#data bank13.loc_8c13f5C1

;==============================================
	#align16_nop

;==============================================
loc_8C125D40:
	mov 0x80,r0
	rts 
	add 0x04,r15

;==============================================
	#align16_nop

;==============================================
loc_8C125D50:
	mov.l @(0xEC,PC),r3
	mov.l @r3,r4
	add 0x10,r4
	mov.l @r4,r5
	tst r5,r5
	bt.s loc_8c125d62
	mov r5,r0
	mov 0x00,r1
	mov.l r1,@r4

loc_8c125d62:
	rts 
	nop 

;==============================================
	#align16_nop

;==============================================
loc_8C125D70:
	mov.l r13,@-r15
	mov.l @(0xCC,PC),r3
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l @(0xC8,PC),r2
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l @r3,r5
	mov.l @(0xC,r5),r5
	mov.w @(0xB6,PC),r9
	add r2,r5
	mov.w @(0xB4,PC),r13
	mov 0x10,r0
	mov r9,r11
	mov.l @(0xB8,PC),r12
	mov 0x00,r7
	mov 0x01,r10
	add 0xFF,r11

loc_8c125d94:
	mov.l @r5,r6
	extu.b r6,r6
	mov r6,r3
	tst r13,r3
	bt loc_8c125dc0
	mov.l @r5,r1
	and r12,r1
	shlr16 r1
	exts.w r1,r1
	cmp/eq r4,r1
	bf loc_8c125dc0
	tst r10,r6
	bt.s loc_8c125db2
	mov r11,r4
	mov r9,r4

loc_8c125db2:
	bra loc_8c125dca
	mov r4,r0

;==============================================
	#align16_nop

;==============================================
loc_8c125dc0:
	add 0x01,r7
	cmp/ge r0,r7
	bf.s loc_8c125d94
	add 0x30,r5
	mov 0x00,r0

loc_8c125dca:
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	rts 
	mov.l @r15+,r13

;==============================================
	#align16_nop

;==============================================
loc_8c125de0:
	mov.l @(0x68,PC),r3
	rts 
	mov.l @r3,r0

;==============================================
	#align16_nop

;==============================================
loc_8c125df0:
	mov.l @(0x5C,PC),r2
	rts 
	mov.l @r2,r0

;==============================================
	#align16_nop

;==============================================
loc_8C125E00:
	mov.l @(loc_8C125E54,pc),r1 ; r1 set to 0x8C2DAD78
	mov.l @(loc_8C125E58,pc),r2 ; r2 set to 0xA0800088
	mov.l @r1,r3
	mov.l @r2,r0
	rts
	sub r3,r0

;==============================================
	#align16_nop

;==============================================
loc_8C125E10:
	mov.l @(loc_8C125E5C,pc),r0 ; r0 set to 0x8C13F568
	rts
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C125E20:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	exts.w r6,r6
	tst r6,r6
	bt loc_8C125E60
	bra loc_8C12602c
	mov 0xFE,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c125e3c:
	#data 0x0101
loc_8c125e3e:
	#data 0x0080
	#align4

loc_8c125e40:
	#data 0x8C2DAD68
loc_8c125e44:
	#data 0xA0800000
loc_8c125e48:
	#data 0x00FF0000
loc_8c125e4c:
	#data 0xA08000Ec
loc_8c125e50:
	#data 0xA08000E8
loc_8C125E54:
	#data 0x8C2DAD78
loc_8C125E58:
	#data 0xA0800088
loc_8C125E5C:
	#data bank13.loc_8c13f568

;==============================================
loc_8C125E60:
	mov r5,r7
	shll r7
	add r4,r7
	exts.w r7,r3
	mov 0x08,r11 ; r11 set to 0x08
	cmp/gt r11,r3
	bf loc_8C125E80
	bra loc_8C12602c
	mov 0xFF,r0

;==============================================
	#align16_nop

;==============================================
loc_8C125E80:
	mov.l @(loc_8C125F0C,pc),r9 ; r9 set to 0x8C2DADA0
	mov 0x00,r6 ; r6 set to 0x00
	mov 0x00,r13 ; r13 set to 0x00
	add r9,r6 ; r6 set to 0x8C2DADA0
	mov r13,r14 ; r14 set to 0x00

loc_8C125E8A:
	mov.b @r6,r0
	cmp/eq 0x01,r0
	bf loc_8C125EA0
	bra loc_8C12602c
	mov 0xFD,r0

;==============================================
	#align16_nop

;==============================================
loc_8c125ea0:
	add 0x01,r14
	exts.w r14,r2
	cmp/ge r11,r2
	bf/s loc_8c125e8a
	add 0x18,r6
	mov.l @(loc_8C125F10,pc),r3
	exts.w r4,r2
	mov.l r2,@r3
	mov.l @(loc_8C125F14,pc),r2
	exts.w r5,r1
	mov.l r1,@r2
	mov.l @(loc_8C125F18,pc),r1
	mov.l @r1,r0
	mov.l r0,@r15
	exts.w r7,r0
	mov.l @(loc_8C125F1C,pc),r6
	tst r0,r0
	bt loc_8c125f40
	exts.w r7,r3
	mov.l @r15,r1
	shll2 r3
	shll2 r3
	shll2 r3
	sub r3,r1
	mov.l @(loc_8c125f20,pc),r3
	jsr @r3
	exts.w r7,r0
	mov.l @(loc_8C125F24,pc),r1
	mov.w @(loc_8C125F08,pc),r3
	and r1,r0
	cmp/gt r3,r0
	bf/s loc_8c125ee4
	mov.l r0,@r6
	mov.l r3,@r6

loc_8c125ee4:
	mov.l @(loc_8C125F28,pc),r3
	mov.l @r6,r10
	mov.l @r3,r6
	mov.l @r6,r6
	mov 0x1F,r2
	tst r6,r2
	bt/s loc_8c125efc
	add 0x40,r10
	mov 0xE0,r0
	and r6,r0
	mov r0,r6
	add 0x20,r6

loc_8c125efc:
	mov.l @(loc_8C125F2C,pc),r3
	mov.l @(loc_8C125F30,pc),r14
	mov.l @r3,r7
	sub r10,r7
	bra loc_8c125f44
	sub r6,r7

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C125F08:
	#data 0x4000
	#align4

loc_8c125f0c:
	#data 0x8C2DADA0
loc_8C125F10:
	#data 0xA08000A0
loc_8C125F14:
	#data 0xA08000A4
loc_8C125F18:
	#data 0xA080008C
loc_8C125F1C:
	#data 0x8C2DAD7C
loc_8c125f20:
	#data loc_8c1291dc
loc_8C125F24:
	#data 0x7FFFFFE0
loc_8C125F28:
	#data 0x8C2DAD70
loc_8C125F2C:
	#data 0x8C2DAD74
loc_8C125F30:
	#data 0xA0800100

;==============================================
	#align16_nop

;==============================================
loc_8c125f40:
	mov.l r13,@r6
	mov r13,r10

loc_8c125f44:
	mov.l @(loc_8C126050,pc),r3
	mov.l r10,@r3
	exts.w r4,r4
	mov.l @(loc_8C126054,pc),r12
	mov r4,r2
	cmp/pl r2
	mov r13,r6
	bf/s loc_8c125f92
	mov.l r4,@(0x04,r15)

loc_8c125f56:
	exts.w r6,r4
	mov r13,r0
	mov r4,r3
	shll r4
	add r3,r4
	mov r7,r3
	shll2 r4
	shll r4
	add r12,r3
	add r9,r4
	mov.b r0,@(0x01,r4)
	mov.b r0,@r4
	mov.l r3,@(0x04,r4)
	mov.l r7,@(0x0C,r14)
	mov 0x00,r2
	mov.l r2,@(0x08,r4)
	sub r10,r7
	mov.l r2,@(0x10,r14)
	mov r14,r3
	add 0x04,r3
	mov r14,r2
	add 0x14,r2
	add 0x01,r6
	mov.l r2,@(0x10,r4)
	mov.l r3,@(0x14,r4)
	exts.w r6,r2
	mov.l @(0x04,r15),r3
	cmp/ge r3,r2
	bf/s loc_8c125f56
	add 0x60,r14

loc_8c125f92:
	mov r14,r1
	add 0x04,r1
	exts.w r5,r5
	mov.l r1,@(0x08,r15)
	mov r14,r3
	add 0x14,r3
	exts.w r6,r1
	mov.l r3,@r15
	mov.l @(0x04,r15),r2
	mov r14,r8
	add r2,r5
	cmp/ge r5,r1
	bt/s loc_8c125ff6
	add 0x0C,r8

loc_8c125fae:
	exts.w r6,r4
	mov r13,r0
	mov r4,r3
	shll r4
	add r3,r4
	mov r7,r3
	shll2 r4
	shll r4
	add r12,r3
	add r9,r4
	mov.b r0,@(0x01,r4)
	mov.b r0,@r4
	mov.l r3,@(0x08,r4)
	mov.l r7,@(0x10,r14)
	sub r10,r7
	mov r7,r2
	add r12,r2
	mov.l r2,@(0x04,r4)
	mov.l r7,@r8
	mov.l @r15,r3
	add 0x01,r6
	exts.w r6,r1
	mov.l r3,@(0x10,r4)
	sub r10,r7
	mov.l @(0x08,r15),r2
	cmp/ge r5,r1
	add 0x60,r14
	mov.l r2,@(0x14,r4)
	mov.l @(0x08,r15),r3
	add 0x60,r3
	mov.l r3,@(0x08,r15)
	mov.l @r15,r2
	add 0x60,r2
	mov.l r2,@r15
	bf/s loc_8c125fae
	add 0x60,r8

loc_8c125ff6:
	exts.w r6,r4
	mov r4,r3
	shll r4
	add r3,r4
	shll2 r4
	exts.w r6,r2
	shll r4
	cmp/ge r11,r2
	add r9,r4
	bt/s loc_8c126024
	mov 0xFF,r5

loc_8c12600c:
	mov r4,r7
	add 0x01,r6
	exts.w r6,r3
	mov r13,r0
	add 0x04,r7
	mov.b r5,@r4
	cmp/ge r11,r3
	mov.b r0,@(0x01,r4)
	mov.l r5,@(0x04,r7)
	mov.l r5,@r7
	bf/s loc_8c12600c
	add 0x18,r4

loc_8c126024:
	mov.w @(loc_8C12604E,pc),r4
	bsr loc_8c125b70
	nop
	mov 0x00,r0

loc_8C12602C:
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
loc_8C126040:
	mov.b @(0x07,r4),r0
	extu.b r0,r0
	shll2 r0
	shll2 r0
	mov.l r0,@r5
	rts
	mov r4,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c12604e:
	#data 0x00A1
	#align4

loc_8c126050:
	#data 0xA08000A8
loc_8c126054:
	#data 0xA0800000

;==============================================
	#align16_nop

;==============================================
loc_8C126060:
	exts.w r4,r6
	mov.l r12,@-r15
	mov r6,r3
	shll r6
	add r3,r6
	mov.l @(loc_8C126298,pc),r12 ; r12 set to 0x8C2DADA0
	shll2 r6
	shll r6
	add r12,r6
	mov.b @r6,r0
	cmp/eq 0x01,r0
	bf loc_8C126114
	mov.b @(0x01,r6),r0
	tst r0,r0
	bf loc_8C126114
	exts.w r4,r0
	mov.l @(loc_8C12629C,pc),r2 ; r2 set to 0xA0800100
	mov r0,r3
	shll r0
	add r3,r0
	mov r5,r1
	shll2 r0
	shll2 r0
	shll r0
	add r2,r0
	mov 0x10,r7 ; r7 set to 0x10
	mov 0x00,r6 ; r6 set to 0x00
	add 0x20,r0

loc_8C126098:
	mov.l @r1+,r2 ; r2 ??? bc r1 is ???
	mov.l r2,@r0
	add 0x01,r6 ; r6 set to 0x01
	exts.w r6,r3
	cmp/hs r7,r3
	bf/s loc_8C126098
	add 0x04,r0
	exts.w r4,r3
	mov r3,r2
	shll r3
	mov 0x2A,r0 ; r0 set to 0x2A, r0 set to 0x2a
	add r2,r3
	mov.w @(r0,r5),r1
	shll2 r3
	shll r3
	extu.w r1,r1
	add r12,r3
	mov.l r1,@(0x0C,r3)
	mov.b @(0x08,r5),r0
	exts.w r4,r5
	mov r5,r3
	shll r5
	add r3,r5
	extu.b r0,r6 ; r6 set to 0x2A, r6 set to 0x2a
	exts.w r6,r0 ; r0 ??, r0 ??
	shll2 r5
	shll r5
	cmp/eq 0x00,r0
	bt/s loc_8C1260F0
	add r12,r5
	cmp/eq 0x01,r0
	bt loc_8C126100
	cmp/eq 0x02,r0
	bt loc_8C126110
	cmp/eq 0x03,r0
	bt loc_8C126110
	rts
	mov.l @r15+,r12

;==============================================
	#align16_nop

;==============================================
loc_8C1260F0:
	bra loc_8C126112
	mov r7,r0

;==============================================
	#align16_nop

;==============================================
loc_8C126100:
	bra loc_8C126112
	mov 0x08,r0

;==============================================
	#align16_nop

;==============================================
loc_8c126110:
	mov 0x04,r0

loc_8c126112:
	mov.w r0,@(0x02,r5)

loc_8C126114:
	rts
	mov.l @r15+,r12

;==============================================
	#align16_nop

;==============================================
loc_8C126120:
	exts.w r4,r7
	mov.l @(loc_8C126298,pc),r0 ; r0 set to 0x8C2DADA0
	mov r7,r3
	shll r7
	add r3,r7
	shll2 r7
	shll r7
	mov.b @(r0,r7),r0 ; r0 ??? bc r7 is ???
	cmp/eq 0x01,r0
	bt loc_8C126140
	rts
	mov 0x00,r0

;==============================================
	#align16_nop

;==============================================
loc_8C126140:
	mov.l @(loc_8C1262A0,pc),r3 ; r3 set to 0x8C2DAD7c
	exts.w r5,r0
	shll2 r0
	mov.l @r3,r2
	mov.l r2,@r6
	mov.l @(loc_8C1262A4,pc),r2 ; r2 set to 0x8C2DADA4
	add r7,r2 ; r2 ??? bc r7 is ???
	mov.l @(r0,r2),r0
	rts
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C126160:
	exts.w r4,r5
	mov.l @(loc_8C126298,pc),r2 ; r2 set to 0x8C2DADA0
	mov r5,r3
	shll r5
	add r3,r5
	shll2 r5
	shll r5
	add r2,r5
	mov.b @r5,r0
	cmp/eq 0x01,r0
	bt loc_8C126180
	rts
	mov 0x00,r0

;==============================================
	#align16_nop

;==============================================
loc_8C126180:
	mov.l @(0x0C,r5),r0
	rts
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C126190:
	exts.w r4,r5
	mov.l @(loc_8C126298,pc),r2 ; r2 set to 0x8C2DADA0
	mov r5,r3
	shll r5
	add r3,r5
	shll2 r5
	shll r5
	add r2,r5
	mov.b @r5,r0
	cmp/eq 0x01,r0
	bt loc_8C1261B0
	rts
	mov 0x00,r0

;==============================================
	#align16_nop

;==============================================
loc_8C1261B0:
	mov.w @(0x02,r5),r0
	rts
	nop

;==============================================
	#align16_nop

;==============================================
loc_8c1261c0:
	exts.w r4,r5
	mov.l @(0xD4,PC),r2
	mov r5,r3
	shll r5
	add r3,r5
	shll2 r5
	shll r5
	add r2,r5
	mov.b @r5,r0
	cmp/eq 0x01,r0
	bf loc_8c1261dc
	mov.b @(0x1,r5),r0
	tst r0,r0
	bf loc_8c1261e0

loc_8C1261DC:
	rts 
	mov 0x00,r0

;==============================================
loc_8C1261E0:
	mov.l @(0x10,r5),r4
	mov.l @r4,r0
	rts 
	nop 

;==============================================
	#align16_nop

;==============================================
loc_8C1261F0:
	mov.l r14,@-r15
	mov 0x00,r1
	mov.l r13,@-r15
	exts.w r4,r13
	mov r13,r0
	mov.l @(0x9C,PC),r7
	cmp/eq 0x01,r0
	mov r1,r14
	mov 0x01,r5
	bf.s loc_8c126230
	mov 0x08,r6
	mov r1,r4

loc_8C126208:
	exts.w r4,r13
	mov r13,r3
	shll r13
	add r3,r13
	shll2 r13
	shll r13
	add r7,r13
	mov.b @r13,r2
	tst r2,r2
	bf loc_8c126222
	mov.l @(0x8,r13),r1
	tst r1,r1
	bt loc_8c126250

loc_8C126222:
	add 0x01,r4
	exts.w r4,r2
	cmp/ge r6,r2
	bf loc_8c126208
	bra loc_8c126268
	nop 

;==============================================
	#align16_nop

;==============================================
loc_8C126230:
	cmp/eq 0x02,r0
	bf loc_8c12626e
	mov r1,r4

loc_8C126236:
	exts.w r4,r13
	mov r13,r3
	shll r13
	add r3,r13
	shll2 r13
	shll r13
	add r7,r13
	mov.b @r13,r2
	tst r2,r2
	bf loc_8c126260
	mov.l @(0x8,r13),r1
	tst r1,r1
	bt loc_8c126260

loc_8C126250:
	bra loc_8c126268
	mov r5,r14

;==============================================
	#align16_nop

;==============================================
loc_8C126260:
	add 0x01,r4
	exts.w r4,r2
	cmp/ge r6,r2
	bf loc_8c126236

loc_8C126268:
	exts.w r14,r14
	tst r14,r14
	bf loc_8c126280


loc_8C12626E:
	bra loc_8c126292
	mov 0xFF,r0

;==============================================
	#align16_nop

;==============================================
loc_8C126280:
	exts.w r4,r3
	mov r4,r0
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	shll r3
	add r7,r3
	mov.b r5,@r3

loc_8C126292:
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
	#align4
loc_8C126298:
	#data 0x8C2DADA0
loc_8C12629C:
	#data 0xA0800100
loc_8C1262A0:
	#data 0x8C2DAD7c
loc_8C1262A4:
	#data 0x8C2DADA4

;==============================================
	#align16_nop

;==============================================
loc_8C1262B0:
	exts.w r4,r5
	mov.l @(0xE8,PC),r2
	mov r5,r3
	shll r5
	add r3,r5
	shll2 r5
	shll r5
	add r2,r5
	mov.b @r5,r0
	cmp/eq 0x01,r0
	bf loc_8c1262d0
	mov.b @(0x1,r5),r0
	tst r0,r0
	bf loc_8c1262d0
	mov 0x00,r3
	mov.b r3,@r5

loc_8C1262D0:
	rts 
	nop 

;==============================================
	#align16_nop

;==============================================
loc_8C1262E0:
	mov.l r14,@-r15
	exts.w r4,r14
	mov r14,r3
	shll r14
	add r3,r14
	mov.l r13,@-r15
	shll2 r14
	mov.l @(0xAC,PC),r13
	shll r14
	mov r14,r0
	sts.l pr,@-r15
	mov.b @(r0,r13),r0
	cmp/eq 0x01,r0
	bf loc_8c12631a
	mov r14,r2
	add r13,r2
	mov.b @(0x1,r2),r0
	tst r0,r0
	bf loc_8c12631a
	exts.w r4,r4
	mov.w @(0x8A,PC),r3
	shll8 r4
	shll2 r4
	shll2 r4
	bsr loc_8c125b70
	add r3,r4
	mov 0x01,r0
	add r13,r14
	mov.b r0,@(0x1,r14)

loc_8C12631A:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8C126330:
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	exts.w r4,r12
	mov.l @(loc_8C12639C,pc),r11 ; r11 set to 0x8C2DADA0
	mov r12,r3
	shll r12
	add r3,r12
	shll2 r12
	shll r12
	mov r12,r0
	mov.b @(r0,r11),r0
	cmp/eq 0x01,r0
	bf loc_8C12640e
	mov r12,r2
	add r11,r2
	mov.b @(0x01,r2),r0
	tst r0,r0
	bt loc_8C12640e
	exts.w r4,r3
	mov r12,r6
	mov r3,r2
	shll r3
	add r2,r3
	mov.l @(loc_8C1263A0,pc),r1 ; r1 set to 0xA0800128
	exts.w r4,r4
	mov.w @(loc_8C126398,pc),r2 ; r2 set to 0x2A1
	shll2 r3
	mov.l @(loc_8C1263A4,pc),r7 ; r7 set to 0x40000
	shll2 r3
	shll8 r4
	shll r3
	add r11,r6
	shll2 r4
	mov 0x00,r10 ; r10 set to 0x00
	shll2 r4
	mov r10,r5 ; r5 set to 0x00
	add r1,r3
	add r2,r4
	mov.l r3,@r15
	mov.l @(0x14,r6),r6

loc_8C126386:
	mov.l @r6,r3
	tst r3,r3
	bf loc_8C1263B0
	add 0x01,r5 ; r5 set to 0x01
	cmp/hs r7,r5
	bf loc_8C126386
	bra loc_8C126404
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C126396:
	#data 0x01A1
loc_8C126398:
	#data 0x02A1
	#align4

loc_8C12639C:
	#data 0x8C2DADA0
loc_8C1263A0:
	#data 0xA0800128
loc_8C1263A4:
	#data 0x00040000

;==============================================
	#align16_nop

;==============================================
loc_8C1263B0:
	mov.l @r6,r6
	mov.l @(loc_8C1264C4,pc),r2 ; r2 set to 0xA0000000
	or r2,r6
	mov.l @r6,r5
	mov.w @(loc_8C1264BC,pc),r3 ; r3 set to 0x7Ff
	and r3,r5
	mov.l r5,@r6
	mov.w @(loc_8C1264BE,pc),r0 ; r0 set to 0x300
	mov.l @r15,r1
	mov.l @r1,r1
	mov.w @(loc_8C1264C0,pc),r2 ; r2 set to 0x100
	and r0,r1
	cmp/eq r2,r1
	bf loc_8C1263Fe
	mov r12,r0 ; r0 ??? bc r12 is ???
	add r11,r0
	mov.l @(0x14,r0),r0
	mov r10,r1
	add 0x04,r0

loc_8C1263D6:
	mov.l @r0,r3 ; r3 ??? bc r0 is ???
	tst r3,r3
	bf loc_8C1263F0
	add 0x01,r1
	cmp/hs r7,r1
	bf loc_8C1263D6
	bra loc_8C126404
	nop

;==============================================
	#align16_nop

;==============================================
loc_8c1263f0:
	mov.l @r0,r7
	mov.l @(loc_8c1264c4,pc),r2
	or r2,r7
	mov.l @r7,r1
	mov.w @(loc_8c1264bc,pc),r3
	and r3,r1
	mov.l r1,@r7

loc_8c1263fe:
	mov.l @(loc_8C1264C8,pc),r2
	or r2,r5
	mov.l r5,@r6

loc_8c126404:
	bsr loc_8c125b70
	nop
	mov r10,r0
	add r11,r12
	mov.b r0,@(0x01,r12)

loc_8C12640E:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	rts
	mov.l @r15+,r12

;==============================================
	#align16_nop

;==============================================
loc_8c126420:
	rts
	nop

;==============================================
	#align16_nop

;==============================================
loc_8c126430:
	rts
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C126440:
	mov r4,r6
	mov.l @(loc_8C1264CC,pc),r5 ; r5 set to 0x8C13F581
	mov 0x40,r4 ; r4 set to 0x40

loc_8C126446:
	mov.b @r5+,r2
	add 0xFF,r4 ; r4 set to 0x3f
	tst r4,r4
	mov.b r2,@r6
	bf/s loc_8C126446
	add 0x01,r6
	rts
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C126460:
	exts.w r5,r5
	shll8 r5
	shll2 r5
	shll r5
	or r6,r5
	add 0x22,r4
	rts
	mov.w r5,@r4

;==============================================
loc_8C126470:
	exts.w r5,r0
	cmp/eq 0x01,r0
	bt/s loc_8C126490
	add 0x09,r4
	cmp/eq 0x02,r0
	bt loc_8C1264A0
	cmp/eq 0x04,r0
	bt loc_8C1264B0
	rts
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C126490:
	mov.b @r4,r0
	bra loc_8C1264B6
	and 0x80,r0

;==============================================
	#align16_nop

;==============================================
loc_8C1264A0:
	mov.b @r4,r0
	and 0x80,r0
	bra loc_8C1264B6
	or 0x01,r0

;==============================================
	#align16_nop

;==============================================
loc_8c1264b0:
	mov.b @r4,r0
	and 0x80,r0
	or 0x02,r0

loc_8C1264B6:
	mov.b r0,@r4
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1264BC:
	#data 0x07Ff
loc_8C1264BE:
	#data 0x0300
loc_8C1264C0:
	#data 0x0100
	#align4

loc_8C1264C4:
	#data 0xA0000000
loc_8c1264c8:
	#data 0x00008000
loc_8C1264CC:
	#data bank13.loc_8c13f581

;==============================================
loc_8C1264D0:
	exts.w r5,r5
	shll2 r5
	add r4,r5
	add 0x31,r5
	rts
	mov.b r6,@r5

;==============================================
	#align16_nop

;==============================================
loc_8C1264E0:
	exts.w r5,r5
	shll2 r5
	add r4,r5
	add 0x32,r5
	rts
	mov.b r6,@r5

;==============================================
	#align16_nop

;==============================================
loc_8C1264F0:
	exts.w r5,r0
	mov r4,r6
	cmp/eq 0x04,r0
	bt/s loc_8C126510
	add 0x08,r4
	cmp/eq 0x08,r0
	bt loc_8C126520
	cmp/eq 0x10,r0
	bt loc_8C126530
	rts
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C126510:
	mov 0x03,r3 ; r3 set to 0x03
	rts
	mov.b r3,@r4

;==============================================
	#align16_nop

;==============================================
loc_8C126520:
	mov 0x01,r1 ; r1 set to 0x01
	rts
	mov.b r1,@r4

;==============================================
	#align16_nop

;==============================================
loc_8C126530:
	mov 0x00,r2 ; r2 set to 0x00
	mov.b r2,@r4
	rts
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C126540:
	exts.w r5,r7
	shll2 r7
	exts.w r6,r6
	shll2 r7
	mov 0x04,r5 ; r5 set to 0x04
	or r6,r7
	add 0x33,r4

loc_8C12654E:
	dt r5
	mov.b r7,@r4
	bf/s loc_8C12654e
	add 0x04,r4
	rts
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C126560:
	mov r4,r6
	mov 0x04,r4 ; r4 set to 0x04
	add 0x30,r6

loc_8C126566:
	dt r4
	mov.b r5,@r6
	bf/s loc_8C126566
	add 0x04,r6
	rts
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C126580:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.b @(0x09,r4),r0
	and 0x03,r0
	cmp/eq 0x00,r0
	bt/s loc_8C1265A0
	mov.l @(0x0C,r4),r13
	cmp/eq 0x01,r0
	bt loc_8C1265B0
	cmp/eq 0x02,r0
	bt loc_8C1265C0
	bra loc_8C1265C2
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C1265A0:
	bra loc_8C1265C2
	mov 0x01,r14

;==============================================
	#align16_nop

;==============================================
loc_8C1265B0:
	bra loc_8C1265C2
	mov 0x02,r14

;==============================================
	#align16_nop

;==============================================
loc_8c1265c0:
	mov 0x04,r14

loc_8C1265C2:
	mov.b @(0x08,r4),r0
	cmp/eq 0x00,r0
	bt loc_8C1265E0
	cmp/eq 0x01,r0
	bt loc_8C1265F0
	cmp/eq 0x02,r0
	bt loc_8C126600
	cmp/eq 0x03,r0
	bt loc_8C126600
	bra loc_8C126602
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C1265E0:
	bra loc_8C126602
	mov 0x10,r7

;==============================================
	#align16_nop

;==============================================
loc_8C1265F0:
	bra loc_8C126602
	mov 0x08,r7

;==============================================
	#align16_nop

;==============================================
loc_8c126600:
	mov 0x04,r7

loc_8C126602:
	exts.w r6,r2
	mov r5,r0
	shll2 r2
	cmp/eq 0x00,r0
	add r4,r2
	mov r4,r11
	bt/s loc_8C126650
	add 0x33,r11
	cmp/eq 0x01,r0
	bt loc_8C126660
	cmp/eq 0x02,r0
	bt loc_8C126670
	cmp/eq 0x03,r0
	bf loc_8C126622
	bra loc_8C126710
	nop

loc_8C126622:
	cmp/eq 0x04,r0
	bt loc_8C126690
	cmp/eq 0x05,r0
	bt loc_8C1266A0
	cmp/eq 0x06,r0
	bt loc_8C1266B0
	cmp/eq 0x07,r0
	bt loc_8C1266C0
	cmp/eq 0x08,r0
	bt loc_8C1266D0
	cmp/eq 0x09,r0
	bt loc_8C1266E0
	cmp/eq 0x0A,r0
	bf loc_8C126642
	bra loc_8C126720
	nop

loc_8C126642:
	bra loc_8C126730
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C126650:
	mov r4,r0
	add 0x2A,r0
	mov.w @r0,r0
	bra loc_8C126732
	extu.w r0,r0

;==============================================
	#align16_nop

;==============================================
loc_8C126660:
	bra loc_8C126732
	mov r7,r0

;==============================================
	#align16_nop

;==============================================
loc_8C126670:
	mov r13,r1
	mov.l @(loc_8C1266C8,pc),r3 ; r3 set to 0x8C129128
	shll2 r1
	shll r1
	jsr @r3
	mov r7,r0
	mov.l @(loc_8C1266C8,pc),r2 ; r2 set to 0x8C129128
	mov r0,r1
	jsr @r2
	mov r14,r0
	bra loc_8C126732
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C126690:
	bra loc_8C126732
	mov r14,r0

;==============================================
	#align16_nop

;==============================================
loc_8C1266A0:
	mov r2,r0
	bra loc_8C126724
	add 0x31,r0

;==============================================
	#align16_nop

;==============================================
loc_8C1266B0:
	mov r2,r0
	bra loc_8C126724
	add 0x32,r0

;==============================================
	#align16_nop

;==============================================
loc_8C1266C0:
	mov.b @r11,r0
	extu.b r0,r0
	bra loc_8C126732
	and 0x0F,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C1266C8:
	#data loc_8c129128

;==============================================
	#align16_nop

;==============================================
loc_8C1266D0:
	mov.b @r11,r0
	mov 0xFC,r3 ; r3 set to 0xFFFFFFFc
	extu.b r0,r0
	and 0xF0,r0
	bra loc_8C126732
	shad r3, r0

;==============================================
	#align16_nop

;==============================================
loc_8C1266E0:
	mov 0x1F,r0 ; r0 set to 0x1f
	mov.b @(r0,r4),r2
	extu.b r2,r2
	tst r2,r2
	bt loc_8C1266F0
	bra loc_8C126732
	mov 0x00,r0

;==============================================
	#align16_nop

;==============================================
loc_8C1266F0:
	mov.w @(0x16,r4),r0
	extu.w r0,r0
	mov r0,r13
	shlr2 r13
	shlr2 r13
	shlr2 r13
	tst r13,r13
	bf loc_8C126710
	bra loc_8C126732
	mov 0x01,r0

;==============================================
	#align16_nop

;==============================================
loc_8C126710:
	bra loc_8C126732
	mov r13,r0

;==============================================
	#align16_nop

;==============================================
loc_8c126720:
	mov r4,r0
	add 0x1E,r0

loc_8C126724:
	mov.b @r0,r0
	bra loc_8C126732
	extu.b r0,r0

;==============================================
	#align16_nop

;==============================================
loc_8c126730:
	mov 0xFF,r0

loc_8C126732:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8C126740:
	exts.w r4,r0
	mov.l @(loc_8C1267C8,pc),r1 ; r1 set to 0x8C2DADA0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	shll r0
	mov.b @(r0,r1),r0
	cmp/eq 0x01,r0
	bf loc_8C126780
	exts.w r4,r0
	shll8 r0
	exts.w r6,r6
	shll2 r0
	exts.w r5,r5
	shll16 r6
	shll2 r0
	shll8 r5
	or r6,r0
	shll2 r5
	or 0xA2,r0
	mov r0,r4
	shll r5
	bra loc_8C125B70
	add r5,r4

;==============================================
	#align16_nop

;==============================================
loc_8C126780:
	rts
	nop

;==============================================
	#align16_nop

;==============================================
loc_8c126790:
	exts.w r4,r0
	mov.l @(0x34,PC),r1
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	shll r0
	mov.b @(r0,r1),r0
	cmp/eq 0x01,r0
	bf loc_8c1267c0
	exts.w r4,r4
	shll8 r4
	exts.w r5,r5
	shll2 r4
	add 0x40,r5
	shll2 r4
	shll16 r5
	or r4,r5
	mov.w @(0xC,PC),r4
	bra loc_8c125b70
	or r5,r4

;==============================================
	#align16_nop

;==============================================
loc_8c1267c0:
	rts
	nop

;==============================================
loc_8c1267c4:
	#data 0x0CA1
	#align4
loc_8C1267C8:
	#data 0x8C2DADA0

;==============================================
	#align16_nop

;==============================================
loc_8C1267D0:
	exts.w r4,r0
	mov.l @(loc_8C12689C,pc),r1 ; r1 set to 0x8C2DADA0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	shll r0
	mov.b @(r0,r1),r0
	cmp/eq 0x01,r0
	bf loc_8C126810
	exts.w r4,r4
	mov.w @(loc_8C126894,pc),r2 ; r2 set to 0x1A2
	shll8 r4
	exts.w r6,r6
	exts.w r5,r5
	shll2 r4
	shll8 r5
	shll16 r6
	shll2 r4
	shll2 r5
	or r6,r4
	shll r5
	or r2,r4
	bra loc_8C125B70
	add r5,r4

;==============================================
	#align16_nop

;==============================================
loc_8C126810:
	rts
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C126820:
	exts.w r4,r0
	mov.l @(loc_8C12689C,pc),r1 ; r1 set to 0x8C2DADA0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	shll r0
	mov.b @(r0,r1),r0
	cmp/eq 0x01,r0
	bf loc_8C126850
	exts.w r4,r4
	shll8 r4
	exts.w r5,r5
	shll2 r4
	add 0x40,r5
	shll2 r4
	shll16 r5
	or r4,r5
	mov.w @(loc_8C126896,pc),r4 ; r4 set to 0x8A1
	bra loc_8C125B70
	or r5,r4

;==============================================
	#align16_nop

;==============================================
loc_8C126850:
	rts
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C126860:
	exts.w r4,r0
	mov.l @(loc_8C12689C,pc),r1 ; r1 set to 0x8C2DADA0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	shll r0
	mov.b @(r0,r1),r0
	cmp/eq 0x01,r0
	bf loc_8C126890
	exts.w r4,r4
	shll8 r4
	exts.w r5,r5
	shll2 r4
	add 0x40,r5
	shll2 r4
	shll16 r5
	or r4,r5
	mov.w @(loc_8C126898,pc),r4 ; r4 set to 0x9A1
	bra loc_8C125B70
	or r5,r4

;==============================================
	#align16_nop

;==============================================
loc_8C126890:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C126894:
	#data 0x01A2
loc_8C126896:
	#data 0x08A1
loc_8C126898:
	#data 0x09A1
	#align4

loc_8C12689C:
	#data 0x8C2DADA0

;==============================================
loc_8C1268A0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	exts.w r4,r12
	mov.l @(loc_8C1269C0,pc),r0 ; r0 set to 0x8C2DADA0
	mov r12,r3
	shll r12
	add r3,r12
	mov.w r5,@r15
	shll2 r12
	shll r12
	mov.b @(r0,r12),r0 ; r0 ??? bc r12 is ???
	cmp/eq 0x01,r0
	bf loc_8C126910
	exts.w r4,r14
	mov.w @(loc_8C1269B6,pc),r3 ; r3 set to 0x2A2
	shll8 r14
	shll2 r14
	exts.w r6,r6
	shll2 r14
	shll16 r6
	mov.l r14,@(0x04,r15)
	or r6,r14
	or r3,r14
	bsr loc_8C125B70
	mov r14,r4
	mov.w @r15,r13
	mov.l @(0x04,r15),r3 ; r3 ??? bc r15 is ???
	mov.w @(loc_8C1269B8,pc),r2 ; r2 set to 0x3A2
	shll16 r13
	or r3,r13
	or r2,r13
	bsr loc_8C125B70
	mov r13,r4
	mov.l @(loc_8C1269C4,pc),r0 ; r0 set to 0x8C2DADA8
	mov.l @(r0,r12),r3
	tst r3,r3
	bt loc_8C126910
	mov.w @(loc_8C1269BA,pc),r3 ; r3 set to 0x800
	add r3,r14
	bsr loc_8C125B70
	mov r14,r4
	mov.w @(loc_8C1269BA,pc),r3 ; r3 set to 0x800
	add r3,r13
	mov r13,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8C125B70
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8C126910:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8C126920:
	sts.l pr,@-r15
	add 0xF8,r15
	exts.w r4,r0
	mov.l @(loc_8C1269C0,pc),r1 ; r1 set to 0x8C2DADA0
	mov r0,r3
	shll r0
	add r3,r0
	mov.w r6,@r15
	shll2 r0
	shll r0
	mov.b @(r0,r1),r0
	cmp/eq 0x01,r0
	bf loc_8C126970
	exts.w r4,r4
	mov.w @(loc_8C1269BC,pc),r3 ; r3 set to 0xAA1
	shll8 r4
	shll2 r4
	exts.w r5,r5
	shll2 r4
	shll16 r5
	mov.l r4,@(0x04,r15)
	or r5,r4
	bsr loc_8C125B70
	or r3,r4
	mov.w @r15,r4
	mov.l @(0x04,r15),r3 ; r3 ??? bc r15 is ???
	mov.w @(loc_8C1269BE,pc),r2 ; r2 set to 0xBA1
	shll16 r4
	or r3,r4
	or r2,r4
	add 0x08,r15
	bra loc_8C125B70
	lds.l @r15+,pr

;==============================================
	#align16_nop

;==============================================
loc_8C126970:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C126980:
	mov.l @(0x44,PC),r5
	mov 0x10,r4
	mov 0x00,r6

loc_8c126986:
	dt r4
	mov.l r6,@r5
	bf.s loc_8c126986
	add 0x10,r5
	mov.l @(0x3C,PC),r2
	rts 
	mov.l r6,@r2


;==============================================
	#align16_nop

;==============================================
loc_8c1269a0:
	tst r4,r4
	bf loc_8c1269a8
	mov.l @(0x24,PC),r1
	mov.l r4,@r1

loc_8c1269a8:
	rts 
	nop 

;==============================================
	#align16_nop

;==============================================
loc_8c1269b0:
	mov.l @(0x18,PC),r3
	rts 
	mov.l @r3,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1269B6:
	#data 0x02A2
loc_8C1269B8:
	#data 0x03A2
loc_8C1269BA:
	#data 0x0800
loc_8C1269BC:
	#data 0x0AA1
loc_8C1269BE:
	#data 0x0BA1
	#align4

loc_8C1269C0:
	#data 0x8C2DADA0
loc_8C1269C4:
	#data 0x8C2DADA8
loc_8C1269C8:
	#data 0x8C2DAEC0
loc_8C1269Cc:
	#data 0x8C2DAD98

;==============================================
loc_8C1269D0:
	mov.l @(loc_8C126ABC,pc),r5 ; r5 set to 0x8C2DAEC0
	mov 0x01,r6 ; r6 set to 0x01
	mov 0x10,r7 ; r7 set to 0x10
	mov 0x00,r4 ; r4 set to 0x00

loc_8C1269D8:
	mov.l @r5,r3
	tst r3,r3
	bf loc_8C1269F0
	mov.l r6,@r5 ; r5 ??
	rts
	mov r5,r0

;==============================================
	#align16_nop

;==============================================
loc_8C1269F0:
	add 0x01,r4
	cmp/ge r7,r4
	bf/s loc_8C1269D8
	add 0x10,r5
	mov 0x00,r0 ; r0 set to 0x00
	rts
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C126A00:
	mov.l @r4,r0
	cmp/eq 0x01,r0
	bf loc_8C126A10
	mov 0x00,r5 ; r5 set to 0x00
	mov.l r5,@r4
	rts
	mov r5,r0

;==============================================
	#align16_nop

;==============================================
loc_8C126A10:
	mov 0xFF,r0 ; r0 set to 0xFFFFFFFf
	rts
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C126A20:
	mov.l @r4,r0
	cmp/eq 0x01,r0
	bt loc_8C126A30
	rts
	mov 0xFF,r0

;==============================================
	#align16_nop

;==============================================
loc_8C126A30:
	mov r5,r2
	mov 0x1F,r4 ; r4 set to 0x1f
	tst r4,r2
	bt loc_8C126A40
	rts
	mov 0xFE,r0

;==============================================
	#align16_nop

;==============================================
loc_8C126A40:
	mov r6,r2
	tst r4,r2
	bt loc_8C126A50
	rts
	mov 0xFD,r0

;==============================================
	#align16_nop

;==============================================
loc_8C126A50:
	tst r7,r4
	bt loc_8C126A60
	rts
	mov 0xFC,r0

;==============================================
	#align16_nop

;==============================================
loc_8C126A60:
	mov.l @(loc_8C126AC0,pc),r3 ; r3 set to 0x8C2DAD98
	mov.l @r3,r4
	tst r4,r4
	bf loc_8C126A90
	mov r6,r4
	mov 0x00,r6 ; r6 set to 0x00
	mov r6,r2 ; r2 set to 0x00
	shlr2 r7
	cmp/hs r7,r2
	bt loc_8C126AA0

loc_8C126A74:
	mov.l @r5+,r2 ; r2 ??? bc r5 is ???
	mov.l r2,@r4
	add 0x01,r6 ; r6 set to 0x01
	cmp/hs r7,r6
	bf/s loc_8C126A74
	add 0x04,r4
	bra loc_8C126AA0
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C126A90:
	mov r4,r0
	cmp/eq 0x01,r0
	bt loc_8C126AA0
	rts
	mov 0xFB,r0

;==============================================
	#align16_nop

;==============================================
loc_8C126AA0:
	mov 0x00,r0 ; r0 set to 0x00
	rts
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C126AB0:
	mov.l @r4,r0
	cmp/eq 0x01,r0
	bt loc_8C126AD0
	rts
	mov 0xFF,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C126ABC:
	#data 0x8C2DAEC0
loc_8C126AC0:
	#data 0x8C2DAD98

;==============================================
	#align16_nop

;==============================================
loc_8C126AD0:
	mov.l @(loc_8C126AF8,pc),r2 ; r2 set to 0x8C2DAD98
	mov.l @r2,r4
	tst r4,r4
	bf loc_8C126AE0
	mov.w @(loc_8C126AF6,pc),r0 ; r0 set to 0x100
	rts
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C126AE0:
	mov r4,r0
	cmp/eq 0x01,r0
	bt loc_8C126AF0
	rts
	mov 0xFB,r0

;==============================================
	#align16_nop

;==============================================
loc_8C126AF0:
	mov 0x00,r0 ; r0 set to 0x00
	rts
	nop

;==============================================
loc_8C126AF6:
	#data 0x0100
	#align4

loc_8C126AF8:
	#data 0x8C2DAD98

;==============================================
	#align16

;==============================================
loc_8C126B00:
	bra loc_8c126c20
	mov 0x00,r7

;==============================================
	#align16_nop

;==============================================
loc_8C126B10:
	bra loc_8C126C20
	mov 0x02,r7

;==============================================
	#align16_nop

;==============================================
loc_8C126B20:
	bra loc_8c126c20
	mov 0x01,r7

;==============================================
	#align16_nop

;==============================================
loc_8C126B30:
	bra loc_8c126c20
	mov 0x03,r7

;==============================================
	#align16_nop

;==============================================
loc_8C126B40:
	bra loc_8c126d90
	mov 0x00,r5

;==============================================
	#align16_nop

;==============================================
loc_8C126B50:
	bra loc_8c126d90
	mov 0x02,r5

;==============================================
	#align16_nop

;==============================================
loc_8C126B60:
	bra loc_8c126d90
	mov 0x01,r5

;==============================================
	#align16_nop

;==============================================
loc_8C126B70:
	bra loc_8c126d90
	mov 0x03,r5

;==============================================
	#align16_nop

;==============================================
loc_8C126B80:
	mov.l @(0x1A8,PC),r3
	rts 
	fmov fr4,@r3

;==============================================
	#align16_nop

;==============================================
loc_8C126B90:
	mov.l @(loc_8C126D30,pc),r2 ; r2 set to 0x8C16BE84
	rts
	fmov.s fr4,@r2

;==============================================
	#align16_nop

;==============================================
loc_8c126ba0:
	mov 0x07,r6
	mov.l @(0x194,PC),r3
	and r6,r5
	and r6,r4
	mov.l @(0x188,PC),r6
	shll16 r5
	mov.l @r6,r2
	shll8 r5
	shll2 r5
	and r3,r2
	mov.l r2,@r6
	mov.l @r6,r1
	mov.l @(0x180,PC),r2
	and r2,r1
	mov.l r1,@r6
	mov 0x1D,r1
	mov.l @r6,r3
	shld r1,r4
	or r4,r3
	mov r3,r0
	or r5,r0
	rts 
	mov.l r0,@r6

;==============================================
	#align16_nop

;==============================================
loc_8c126bd0:
	mov.l r14,@-r15
	mov r4,r0
	mov.l @(0x170,PC),r14
	cmp/eq 0x01,r0
	mov.l @(0x164,PC),r6
	mov.l @(0x168,PC),r5
	bf loc_8c126bf0
	mov.l @r14,r2
	and r5,r2
	mov.l r2,@r14
	mov.l @(0x8,r6),r3
	and r5,r3
	mov.l r3,@(0x8,r6)
	rts 
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8c126bf0:
	mov r6,r4
	add 0x08,r4
	mov.l @r14,r1
	and r5,r1
	mov.l r1,@r14
	mov.l @r4,r3
	and r5,r3
	mov.l @(0x14C,PC),r5
	mov.l r3,@r4
	mov.l @r14,r2
	or r5,r2
	mov.l r2,@r14
	mov.l @r4,r3
	or r5,r3
	mov.l r3,@r4
	rts 
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8c126c20:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xD0,r15
	mov r7,r14
	mov.l r6,@(0x2C,r15)
	mov.l r4,@r15
	mov.l r5,@(0x04,r15)
	bsr loc_8c126ec0
	mov r7,r4
	mov.l @(loc_8c126d54,pc),r3
	mov.l @(loc_8c126d50,pc),r4
	jsr @r3
	mov.l r0,@(0x08,r15)
	mov.l @(loc_8c126d5c,pc),r3
	mov.l @(loc_8C126D58,pc),r4
	jsr @r3
	mov.l @(0x08,r4),r4
	mov 0x02,r2
	tst r14,r2
	bt loc_8c126c50
	mov.l @(loc_8c126d5c,pc),r3
	mov.l @(loc_8C126D60,pc),r4
	jsr @r3
	mov.l @(0x08,r4),r4

loc_8c126c50:
	mov.l @(loc_8c126d64,pc),r2
	jsr @r2
	nop
	mov.l @(loc_8c126d68,pc),r3
	mov r15,r5
	add 0x1C,r5
	jsr @r3
	mov.l @r15,r4
	mov.l @(loc_8c126d68,pc),r3
	mov r15,r5
	add 0x0C,r5
	jsr @r3
	mov.l @(0x04,r15),r4
	mov.l @(loc_8c126d6c,pc),r2
	jsr @r2
	mov 0x01,r4
	mov r15,r5
	mov r15,r4
	add 0x0C,r5
	bsr loc_8c127290
	add 0x1C,r4
	tst r0,r0
	bt loc_8c126c8c
	mov r15,r5
	mov r15,r4
	add 0x0C,r5
	bsr loc_8c127190
	add 0x1C,r4
	tst r0,r0
	bf loc_8c126ca0

loc_8c126c8c:
	mov 0x00,r0
	add 0x30,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8c126ca0:
	mov 0x24,r0
	fldi1 fr5
	fmov.s @(r0,r15),fr3
	mov 0x1C,r0
	fmov fr5,fr4
	fdiv fr3,fr4
	mov.l @(loc_8C126D70,pc),r4
	fmov.s @(r0,r15),fr2
	mov 0x1C,r0
	fmov.s @r4,fr3
	mov.l @(loc_8C126D74,pc),r5
	fmov fr4,fr0
	fmac fr0,fr2,fr3
	fmov fr5,fr4
	fmov.s fr3,@(r0,r15)
	mov 0x20,r0
	fmov.s @(r0,r15),fr2
	mov 0x20,r0
	fmov.s @r5,fr3
	fmac fr0,fr2,fr3
	fmov.s fr3,@(r0,r15)
	mov 0x14,r0
	fmov.s @(r0,r15),fr3
	mov 0x0C,r0
	fmov.s @(r0,r15),fr2
	mov 0x0C,r0
	fdiv fr3,fr4
	fmov.s @r4,fr3
	fmov fr4,fr0
	fmac fr0,fr2,fr3
	fmov.s fr3,@(r0,r15)
	fmov.s @r5,fr3
	mov 0x10,r0
	mov r15,r6
	fmov.s @(r0,r15),fr2
	mov r15,r5
	mov r15,r7
	mov 0x10,r0
	fmac fr0,fr2,fr3
	add 0x1C,r5
	add 0x0C,r6
	add 0x2C,r7
	fmov.s fr3,@(r0,r15)
	bsr loc_8c127600
	mov.l @(0x08,r15),r4
	mov 0x01,r3
	mov.l @(loc_8C126D78,pc),r2
	tst r3,r14
	mov r0,r6
	bt/s loc_8c126d10
	mov.l @r2,r5
	mov r5,r4
	bra loc_8c126d12
	add 0x08,r4

;==============================================
	#align16_nop

;==============================================
loc_8c126d10:
	mov r5,r4

loc_8c126d12:
	mov.l @(loc_8C126D80,pc),r1
	mov 0x01,r0
	mov.l @r4,r2
	mov.l @(loc_8C126D7C,pc),r3
	and r1,r6
	and r3,r2
	or r6,r2
	mov.l r2,@r4
	add 0x30,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
	#align4
loc_8c126d2c:
	#data bank16.loc_8c16BE80
loc_8c126d30:
	#data bank16.loc_8c16BE84
loc_8c126d34:
	#data bank16.loc_8c16BFBC
loc_8c126d38:
	#data 0x1FFFFFFF
loc_8c126d3c:
	#data 0xE3FFFFFF

loc_8c126d40:
	#data bank16.loc_8c16BFB4
loc_8c126d44:
	#data 0xFF3FFFFF
loc_8c126d48:
	#data bank16.loc_8c16BF9C
loc_8c126d4c:
	#data 0x00800000
loc_8c126d50:
	#data bank16.loc_8c16be98
loc_8c126d54:
	#data loc_8c120950
loc_8C126D58:
	#data 0x8C2D690C
loc_8c126d5c:
	#data loc_8c1205a0
loc_8C126D60:
	#data 0x8C2D6900
loc_8c126d64:
	#data loc_8c120660
loc_8c126d68:
	#data bank11.loc_8c11f870
loc_8c126d6c:
	#data loc_8c120900
loc_8C126D70:
	#data 0x8C2DAFC0
loc_8C126D74:
	#data 0x8C2DAFC4
loc_8C126D78:
	#data 0x8C2AA508
loc_8C126D7C:
	#data 0xFC000000
loc_8C126D80:
	#data 0x03FFFFFF

;==============================================
	#align16_nop

;==============================================
loc_8C126D90:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	add 0xDC,r15
	mov r5,r9
	mov r4,r14
	bsr loc_8c126ec0
	mov r5,r4
	mov.l @(0x238,PC),r2
	mov.l @(0x234,PC),r4
	jsr @r2
	mov r0,r13
	mov.l @(0x238,PC),r3
	mov.l @(0x234,PC),r4
	jsr @r3
	mov.l @(0x8,r4),r4
	mov 0x02,r2
	tst r9,r2
	bt loc_8c126dc6
	mov.l @(0x22C,PC),r3
	mov.l @(0x22C,PC),r4
	jsr @r3
	mov.l @(0x8,r4),r4

loc_8c126dc6:
	mov.l @(0x22C,PC),r2
	jsr @r2
	nop 
	bra loc_8c126e72
	nop 

;==============================================
loc_8c126dd0:
	mov.l @r14+,r10
	mov 0x00,r4
	mov.l @r14+,r3
	mov.l r3,@r15
	bra loc_8c126e6c
	mov r4,r11

;==============================================
	#align16_nop

;==============================================
loc_8c126de0:
	mov r15,r5
	mov.l @(0x214,PC),r12
	add 0x14,r5
	jsr @r12
	mov r14,r4
	mov r15,r5
	mov r14,r4
	add 0x04,r5
	jsr @r12
	add 0x0C,r4
	mov r15,r5
	mov r15,r4
	add 0x04,r5
	bsr loc_8c127290
	add 0x14,r4
	tst r0,r0
	bt loc_8c126e68
	mov r15,r5
	mov r15,r4
	add 0x04,r5
	bsr loc_8c127190
	add 0x14,r4
	tst r0,r0
	bt loc_8c126e68
	mov 0x1C,r0
	fldi1 fr4
	fmov @(r0,r15),fr3
	mov 0x14,r0
	fmov fr4,fr5
	fdiv fr3,fr5
	mov.l @(0x1DC,PC),r4
	fmov @(r0,r15),fr2
	mov 0x14,r0
	fmov @r4,fr3
	mov.l @(0x1D8,PC),r5
	fmov fr5,fr0
	fmac fr0,fr2,fr3
	fmov fr3,@(r0,r15)
	mov 0x18,r0
	fmov @(r0,r15),fr2
	mov 0x18,r0
	fmov @r5,fr3
	fmac fr0,fr2,fr3
	fmov fr3,@(r0,r15)
	mov 0x0C,r0
	fmov @(r0,r15),fr3
	mov 0x04,r0
	fmov @(r0,r15),fr2
	mov 0x04,r0
	fdiv fr3,fr4
	fmov @r4,fr3
	fmov fr4,fr0
	fmac fr0,fr2,fr3
	fmov fr3,@(r0,r15)
	mov 0x08,r0
	fmov @r5,fr3
	fmov @(r0,r15),fr2
	mov r15,r5
	mov r15,r6
	mov 0x08,r0
	fmac fr0,fr2,fr3
	add 0x14,r5
	add 0x04,r6
	mov r15,r7
	fmov fr3,@(r0,r15)
	bsr loc_8c127600
	mov r13,r4
	mov r0,r13

loc_8c126e68:
	add 0x01,r11
	add 0x0C,r14

loc_8c126e6c:
	cmp/hs r10,r11
	bf loc_8c126de0
	add 0x0C,r14

loc_8c126e72:
	mov.l @r14,r3
	tst r3,r3
	bf loc_8c126dd0
	mov.l @(0x188,PC),r3
	jsr @r3
	mov 0x01,r4
	mov 0x01,r3
	mov.l @(0x184,PC),r2
	tst r3,r9
	bt.s loc_8c126e90
	mov.l @r2,r5
	mov r5,r4
	bra loc_8c126e92
	add 0x08,r4

;==============================================
	#align16_nop

;==============================================
loc_8c126e90:
	mov r5,r4

loc_8c126e92:
	mov.l @(0x17C,PC),r1
	mov 0x01,r0
	mov.l @r4,r2
	mov.l @(0x170,PC),r3
	and r1,r13
	and r3,r2
	or r13,r2
	mov.l r2,@r4
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
	#align16_nop

;==============================================
loc_8c126ec0:
	mov.l @(loc_8c127018,pc),r3
	mova @(loc_8C127014,pc),r0
	mov.l @(loc_8C126FFC,pc),r5
	mov.l @(loc_8c12701c,pc),r2
	mov.l @(loc_8C127000,pc),r6
	mov.l @(loc_8C127020,pc),r1
	mov.l r14,@-r15
	mov.l @(loc_8c126fe0,pc),r7
	sts.l pr,@-r15
	fmov.s @r0,fr4
	mov 0x14,r0
	fmov.s @r3,fr3
	mov.l @(loc_8C127024,pc),r3
	fmul fr4,fr3
	fmov.s fr3,@r5
	fmov.s @r2,fr3
	fmul fr4,fr3
	fldi1 fr4
	fneg fr4
	fmov fr4,fr2
	fmov.s fr3,@r6
	fmov.s @r5,fr3
	fsub fr3,fr2
	fmov.s fr2,@r1
	fmov.s @r6,fr3
	fsub fr3,fr4
	fmov.s fr4,@r3
	fmov.s @r5,fr3
	fmov.s fr3,@r7
	fmov.s @r6,fr2
	fneg fr2
	fmov.s fr2,@(r0,r7)
	mov 0x01,r1
	mov.l @(loc_8C127008,pc),r2
	tst r1,r4
	bt/s loc_8c126f10
	mov.l @r2,r6
	mov.l @(loc_8c127028,pc),r5
	bra loc_8c126f14
	mov.l @(0x08,r6),r4

loc_8c126f10:
	mov.l @r6,r4
	mov.l @(loc_8c12702c,pc),r5

loc_8c126f14:
	mov.l @r5,r2
	mov.l @(loc_8C127030,pc),r3
	mov.l @(loc_8c127034,pc),r0
	and r3,r2
	mov.l @(loc_8C127010,pc),r14
	mov.l r2,@r5
	mov.l @r0,r1
	and r4,r14
	mov.l @(loc_8C127038,pc),r2
	mov.l @r5,r3
	shll16 r1
	or r2,r1
	mov.l @(loc_8C127040,pc),r2
	or r1,r3
	mov r4,r1
	mov.l r3,@r5
	shlr16 r1
	mov.l @(loc_8C12703C,pc),r3
	shlr8 r1
	mov.l r1,@r3
	mov.l r1,@r2
	mov.l @(loc_8C127044,pc),r1
	or r1,r14
	mov r14,r6
	add 0x20,r6
	mov r14,r4

loc_8c126f48:
	mov.l @r5+,r3
	mov.l r3,@r4
	add 0x04,r4
	cmp/hs r6,r4
	bf loc_8c126f48
	mov.l @(loc_8c127048,pc),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	add 0x20,r14
	mov r14,r0
	rts
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8c126f70:
	mov.l @(loc_8C12704C,pc),r3
	mov 0x08,r0
	fmov.s @(r0,r4),fr4
	fmov.s @r3,fr5
	fmov.s @(r0,r5),fr2
	fmov fr5,fr3
	fsub fr4,fr3
	fsub fr4,fr2
	fmov.s fr5,@(r0,r6)
	fmov.s @r4,fr5
	mov 0x04,r0
	fmov fr3,fr4
	fdiv fr2,fr4
	fmov.s @r5,fr3
	fmov fr5,fr2
	fsub fr5,fr3
	fmov fr4,fr0
	fmac fr0,fr3,fr2
	fmov.s fr2,@r6
	fmov.s @(r0,r5),fr3
	fmov.s @(r0,r4),fr5
	fsub fr5,fr3
	fmov fr5,fr2
	fmac fr0,fr3,fr2
	rts
	fmov.s fr2,@(r0,r6)

;==============================================
	#align16_nop

;==============================================
loc_8c126fb0:
	mov 0x04,r0
	mov.l @(loc_8C126FFC,pc),r3
	fmov.s @(r0,r4),fr4
	mov 0x08,r0
	fmov.s @r3,fr8
	mov 0x00,r5
	fmov.s @(r0,r4),fr9
	mov.l @(loc_8C127000,pc),r2
	mov.l @(loc_8C127020,pc),r1
	fmul fr9,fr8
	fmov.s @r2,fr6
	fmov.s @r1,fr7
	fmov.s @r4,fr5
	fmul fr9,fr6
	mov.l @(loc_8C127024,pc),r3
	fmul fr9,fr7
	fcmp/gt fr8,fr5
	fmov fr9,fr3
	fmov.s @r3,fr9
	bf/s loc_8c127050
	fmul fr3,fr9
	bra loc_8c127056
	mov 0x02,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c126fe0:
	#data bank16.loc_8c16be98
loc_8c126fe4:
	#data loc_8C120950
loc_8c126fe8:
	#data 0x8C2D690C
loc_8c126fec:
	#data loc_8C1205A0
loc_8c126ff0:
	#data 0x8C2D6900
loc_8c126ff4:
	#data loc_8C120660
loc_8c126ff8:
	#data bank11.loc_8C11F870
loc_8C126FFC:
	#data 0x8C2DAFC0
loc_8C127000:
	#data 0x8C2DAFC4
loc_8c127004:
	#data loc_8C120900
loc_8C127008:
	#data 0x8C2AA508
loc_8C12700C:
	#data 0xFC000000
loc_8C127010:
	#data 0x03FFFFFF
loc_8C127014:
	#data 0x3F000000
loc_8c127018:
	#data bank16.loc_8c16bd88
loc_8c12701c:
	#data bank16.loc_8c16bd8c
loc_8C127020:
	#data 0x8C2DAFC8
loc_8C127024:
	#data 0x8C2DAFCC
loc_8c127028:
	#data bank16.loc_8c16bfb4
loc_8c12702c:
	#data bank16.loc_8c16bf94
loc_8C127030:
	#data 0xFFFCFFFF
loc_8c127034:
	#data bank16.loc_8c16bbf4
loc_8C127038:
	#data 0x008C0000
loc_8C12703C:
	#data 0xFF000038
loc_8C127040:
	#data 0xFF00003C
loc_8C127044:
	#data 0xE0000000
loc_8c127048:
	#data loc_8c129c6a
loc_8C12704C:
	#data 0x8C32B43C

;==============================================
loc_8c127050:
	fcmp/gt fr5,fr7
	bf loc_8c127056
	mov 0x01,r5

loc_8c127056:
	fcmp/gt fr6,fr4
	bf loc_8c127060
	mov 0x08,r2
	bra loc_8c127068
	or r2,r5

loc_8c127060:
	fcmp/gt fr4,fr9
	bf loc_8c127068
	mov 0x04,r3
	or r3,r5

loc_8c127068:
	rts
	mov r5,r0

;==============================================
	#align16_nop

;==============================================
loc_8c127070:
	add 0xF4,r15
	mov 0x04,r0
	fmov.s @r4,fr5
	fmov.s @(r0,r4),fr6
	mov 0x08,r0
	fmov.s @(r0,r4),fr7
	mov 0x04,r0
	fmov.s @(r0,r5),fr9
	mov 0x08,r0
	fmov.s @(r0,r5),fr10
	fmov.s @r5,fr8
	fsub fr6,fr9
	fsub fr7,fr10
	fldi0 fr3
	fsub fr5,fr8
	fcmp/eq fr3,fr10
	bf/s loc_8c1270c0
	mov r15,r4
	fmov fr7,fr2
	fcmp/eq fr3,fr8
	fmul fr2,fr4
	fmov.s fr7,@(r0,r4)
	bf/s loc_8c1270b0
	fmov.s fr4,@r4
	mov 0x04,r0
	fmov.s @(r0,r6),fr3
	bra loc_8c1270e6
	fmov.s fr3,@(r0,r4)

;==============================================
	#align16_nop

;==============================================
loc_8c1270b0:
	fmov.s @r4,fr3
	mov 0x04,r0
	fsub fr5,fr3
	fmul fr3,fr9
	fdiv fr8,fr9
	fadd fr6,fr9
	bra loc_8c1270e6
	fmov.s fr9,@(r0,r4)

loc_8c1270c0:
	fmov fr8,fr1
	fmul fr7,fr1
	fmov fr4,fr0
	fmul fr10,fr0
	fmov fr10,fr2
	fmul fr5,fr2
	fsub fr8,fr0
	fsub fr1,fr2
	fdiv fr0,fr2
	fmul fr2,fr4
	fmov.s fr2,@(r0,r4)
	fmov.s fr4,@r4
	fmov.s @(r0,r4),fr2
	mov 0x04,r0
	fsub fr7,fr2
	fmul fr2,fr9
	fdiv fr10,fr9
	fadd fr6,fr9
	fmov.s fr9,@(r0,r4)

loc_8c1270e6:
	mov 0x04,r0
	fmov.s @r4,fr3
	fmov.s fr3,@r6
	fmov.s @(r0,r4),fr2
	fmov.s fr2,@(r0,r6)
	mov 0x08,r0
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r6)
	rts
	add 0x0C,r15

;==============================================
	#align16_nop

;==============================================
loc_8c127100:
add 0xF4,r15
mov 0x04,r0
fmov.s @r4,fr5
fmov.s @(r0,r4),fr6
mov 0x08,r0
fmov.s @(r0,r4),fr7
mov 0x04,r0
fmov.s @(r0,r5),fr8
mov 0x08,r0
fmov.s @(r0,r5),fr10
fmov.s @r5,fr9
fsub fr6,fr8
fsub fr7,fr10
fldi0 fr3
fsub fr5,fr9
fcmp/eq fr3,fr10
bf/s loc_8c127150
mov r15,r4
fmov fr7,fr2
fcmp/eq fr3,fr8
fmul fr2,fr4
fmov.s fr7,@(r0,r4)
mov 0x04,r0
bf/s loc_8c127140
fmov.s fr4,@(r0,r4)
fmov.s @r6,fr3
bra loc_8c127178
fmov.s fr3,@r4

;==============================================
	#align16_nop

;==============================================
loc_8c127140:
	fmov.s @(r0,r4),fr3
	fsub fr6,fr3
	fmul fr3,fr9
	fdiv fr8,fr9
	fadd fr5,fr9
	bra loc_8c127178
	fmov.s fr9,@r4

;==============================================
	#align16_nop

;==============================================
loc_8c127150:
	fmov fr8,fr1
	fmul fr7,fr1
	fmov fr4,fr0
	fmul fr10,fr0
	fmov fr10,fr2
	fmul fr6,fr2
	fsub fr8,fr0
	fsub fr1,fr2
	fdiv fr0,fr2
	fmul fr2,fr4
	fmov.s fr2,@(r0,r4)
	mov 0x04,r0
	fmov.s fr4,@(r0,r4)
	mov 0x08,r0
	fmov.s @(r0,r4),fr2
	fsub fr7,fr2
	fmul fr2,fr9
	fdiv fr10,fr9
	fadd fr5,fr9
	fmov.s fr9,@r4

loc_8c127178:
	mov 0x04,r0
	fmov.s @r4,fr3
	fmov.s fr3,@r6
	fmov.s @(r0,r4),fr2
	fmov.s fr2,@(r0,r6)
	mov 0x08,r0
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r6)
	rts
	add 0x0C,r15

;==============================================
	#align16_nop

;==============================================
loc_8c127190:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov r5,r12
	mov.l r11,@-r15
	mov 0x01,r11
	mov.l r10,@-r15
	mov 0x02,r10
	mov.l r9,@-r15
	mov 0x04,r9
	mov.l r8,@-r15
	mov 0x08,r8
	sts.l pr,@-r15

loc_8c1271ac:
	bsr loc_8c126fb0
	mov r13,r4
	mov r0,r14
	bsr loc_8c126fb0
	mov r12,r4
	mov r14,r2
	mov r0,r4
	tst r4,r2
	bt loc_8c1271d0
	bra loc_8c127262
	mov 0x00,r0

;==============================================
	#align16_nop

;==============================================
loc_8c1271d0:
	tst r14,r14
	bf loc_8c1271d8
	tst r4,r4
	bt loc_8c127260

loc_8c1271d8:
	tst r14,r14
	bt loc_8c1271de
	mov r14,r4

loc_8c1271de:
	tst r14,r14
	bf loc_8c1271f0
	bra loc_8c1271f2
	mov r12,r6

;==============================================
	#align16_nop

;==============================================
loc_8c1271f0:
	mov r13,r6

loc_8c1271f2:
	mov r4,r2
	tst r11,r2
	bt loc_8c127200
	mov.l @(loc_8C127274,pc),r1
	bra loc_8c127208
	nop

;==============================================
	#align16_nop

;==============================================
loc_8c127200:
	mov r4,r3
	tst r10,r3
	bt loc_8c127220
	mov.l @(loc_8C127278,pc),r1

loc_8c127208:
	fmov.s @r1,fr4
	mov r12,r5
	bsr loc_8c127070
	mov r13,r4
	bra loc_8c1271ac
	nop

;==============================================
	#align16_nop

;==============================================
loc_8c127220:
	tst r9,r3
	bt loc_8c127230
	mov.l @(loc_8C12727C,pc),r1
	bra loc_8c127238
	nop

;==============================================
	#align16_nop

;==============================================
loc_8c127230:
	mov r4,r3
	tst r8,r3
	bt loc_8c127250
	mov.l @(loc_8C127280,pc),r1

loc_8c127238:
	fmov.s @r1,fr4
	mov r12,r5
	bsr loc_8c127100
	mov r13,r4
	bra loc_8c1271ac
	nop

;==============================================
	#align16_nop

;==============================================
loc_8c127250:
	bra loc_8c1271ac
	cmp/eq r14,r4

;==============================================
	#align16_nop

;==============================================
loc_8c127260:
	mov 0x01,r0

loc_8c127262:
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
loc_8C127274:
	#data 0x8C2DAFC8
loc_8C127278:
	#data 0x8C2DAFC0
loc_8C12727C:
	#data 0x8C2DAFCC
loc_8C127280:
	#data 0x8C2DAFC4

;==============================================
	#align16_nop

;==============================================
loc_8c127290:
	mov.l r14,@-r15
	mov 0x08,r0
	mov.l @(loc_8C127570,pc),r3
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	fmov.s @(r0,r13),fr3
	fmov.s @r3,fr4
	fcmp/gt fr3,fr4
	bf/s loc_8c1272c0
	mov r5,r14
	fmov.s @(r0,r14),fr3
	fcmp/gt fr3,fr4
	bf loc_8c1272b0
	bra loc_8c1272d0
	mov 0x00,r0

loc_8c1272b0:
	mov r14,r5
	mov r13,r6
	bsr loc_8c126f70
	mov r13,r4
	bra loc_8c1272ce
	nop

;==============================================
	#align16_nop

;==============================================
loc_8c1272c0:
	fmov.s @(r0,r14),fr3
	fcmp/gt fr3,fr4
	bf loc_8c1272ce
	mov r14,r5
	mov r14,r6
	bsr loc_8c126f70
	mov r13,r4

loc_8c1272ce:
	mov 0x01,r0

loc_8c1272d0:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8c1272e0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	mov r5,r12
	mov.l r11,@-r15
	mov r13,r11
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov 0x04,r8
	sts.l pr,@-r15
	mov.l @r6,r10
	mov.l @(loc_8C127574,pc),r9

loc_8c1272fe:
	mov r11,r0
	cmp/eq 0x03,r0
	bf loc_8c127310
	mov.l @(loc_8C127578,pc),r3
	bra loc_8c127312
	mov.l r3,@r14

;==============================================
	#align16_nop

;==============================================
loc_8c127310:
	mov.l r9,@r14

loc_8c127312:
	mov.l @r12+,r2
	add 0x04,r14
	mov.l r2,@r14
	add 0x04,r14
	mov.l @r12+,r2
	mov.l r2,@r14
	add 0x04,r14
	mov.l @r12+,r2
	mov.l r2,@r14
	add 0x04,r14
	mov.l r10,@r14
	add 0x04,r14
	mov.l r13,@r14
	add 0x04,r14
	mov.l r10,@r14
	add 0x04,r14
	mov.l @(loc_8c12757c,pc),r2
	mov.l r13,@r14
	jsr @r2
	mov r14,r4
	add 0x01,r11
	cmp/ge r8,r11
	bf/s loc_8c1272fe
	add 0x04,r14
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
	#align16_nop

;==============================================
loc_8c127360:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xCC,r15
	mov 0x04,r0
	mov r15,r14
	mov.l r7,@r15
	add 0x04,r14
	fmov.s @r5,fr3
	mov r14,r7
	fadd fr5,fr3
	fadd fr4,fr3
	fmov.s fr3,@r7
	fmov.s @(r0,r5),fr2
	fsub fr4,fr2
	fadd fr5,fr2
	fmov.s fr2,@(r0,r7)
	mov 0x08,r0
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r7)
	mov 0x04,r0
	fmov.s @r5,fr3
	add 0x0C,r7
	fsub fr5,fr3
	fadd fr4,fr3
	fmov.s fr3,@r7
	fmov.s @(r0,r5),fr2
	fadd fr4,fr2
	fadd fr5,fr2
	fmov.s fr2,@(r0,r7)
	mov 0x08,r0
	fmov.s @(r0,r5),fr3
	mov r14,r5
	add 0x18,r5
	fmov.s fr3,@(r0,r7)
	fmov.s @r6,fr3
	mov 0x04,r0
	fadd fr5,fr3
	fsub fr4,fr3
	fmov.s fr3,@r5
	fmov.s @(r0,r6),fr2
	fsub fr4,fr2
	fsub fr5,fr2
	fmov.s fr2,@(r0,r5)
	mov 0x08,r0
	fmov.s @(r0,r6),fr3
	fmov.s fr3,@(r0,r5)
	mov 0x04,r0
	fmov.s @r6,fr3
	mov r14,r5
	add 0x24,r5
	fsub fr5,fr3
	fsub fr4,fr3
	fmov.s fr3,@r5
	fmov.s @(r0,r6),fr2
	fadd fr4,fr2
	fsub fr5,fr2
	fmov.s fr2,@(r0,r5)
	mov 0x08,r0
	fmov.s @(r0,r6),fr3
	fmov.s fr3,@(r0,r5)
	mov.l @r15,r6
	bsr loc_8c1272e0
	mov r14,r5
	add 0x34,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8c1273f0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xCC,r15
	mov 0x04,r0
	mov r15,r14
	mov.l r7,@r15
	add 0x04,r14
	fmov.s @r5,fr3
	mov r14,r7
	fadd fr5,fr3
	fadd fr4,fr3
	fmov.s fr3,@r7
	fmov.s @(r0,r5),fr2
	fsub fr4,fr2
	fadd fr5,fr2
	fmov.s fr2,@(r0,r7)
	mov 0x08,r0
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r7)
	mov 0x04,r0
	fmov.s @r5,fr3
	add 0x0C,r7
	fsub fr5,fr3
	fadd fr4,fr3
	fmov.s fr3,@r7
	fmov.s @(r0,r5),fr2
	fadd fr4,fr2
	fadd fr5,fr2
	fmov.s fr2,@(r0,r7)
	mov 0x08,r0
	fmov.s @(r0,r5),fr3
	mov r14,r5
	add 0x18,r5
	fmov.s fr3,@(r0,r7)
	fmov.s @r6,fr3
	mov 0x04,r0
	fadd fr5,fr3
	fmov.s fr3,@r5
	fmov.s @(r0,r6),fr2
	fsub fr4,fr2
	fmov.s fr2,@(r0,r5)
	mov 0x08,r0
	fmov.s @(r0,r6),fr3
	fmov.s fr3,@(r0,r5)
	mov 0x04,r0
	fmov.s @r6,fr3
	mov r14,r5
	add 0x24,r5
	fsub fr5,fr3
	fmov.s fr3,@r5
	fmov.s @(r0,r6),fr2
	fadd fr4,fr2
	fmov.s fr2,@(r0,r5)
	mov 0x08,r0
	fmov.s @(r0,r6),fr3
	fmov.s fr3,@(r0,r5)
	mov.l @r15,r6
	bsr loc_8c1272e0
	mov r14,r5
	add 0x34,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8c127470:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xCC,r15
	mov 0x04,r0
	mov r15,r14
	add 0x04,r14
	mov.l r7,@r15
	fmov.s @r5,fr3
	mov r14,r7
	fadd fr5,fr3
	fmov.s fr3,@r7
	fmov.s @(r0,r5),fr2
	fsub fr4,fr2
	fmov.s fr2,@(r0,r7)
	mov 0x08,r0
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r7)
	mov 0x04,r0
	fmov.s @r5,fr3
	add 0x0C,r7
	fsub fr5,fr3
	fmov.s fr3,@r7
	fmov.s @(r0,r5),fr2
	fadd fr4,fr2
	fmov.s fr2,@(r0,r7)
	mov 0x08,r0
	fmov.s @(r0,r5),fr3
	mov r14,r5
	add 0x18,r5
	fmov.s fr3,@(r0,r7)
	mov 0x04,r0
	fmov.s @r6,fr3
	fadd fr5,fr3
	fmov.s fr3,@r5
	fmov.s @(r0,r6),fr2
	fsub fr4,fr2
	fmov.s fr2,@(r0,r5)
	mov 0x08,r0
	fmov.s @(r0,r6),fr3
	fmov.s fr3,@(r0,r5)
	mov 0x04,r0
	fmov.s @r6,fr3
	mov r14,r5
	add 0x24,r5
	fsub fr5,fr3
	fmov.s fr3,@r5
	fmov.s @(r0,r6),fr2
	fadd fr4,fr2
	fmov.s fr2,@(r0,r5)
	mov 0x08,r0
	fmov.s @(r0,r6),fr3
	fmov.s fr3,@(r0,r5)
	mov.l @r15,r6
	bsr loc_8c1272e0
	mov r14,r5
	add 0x34,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8c1274f0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xCC,r15
	mov 0x04,r0
	mov r15,r14
	add 0x04,r14
	mov.l r7,@r15
	fmov.s @r5,fr3
	mov r14,r7
	fadd fr5,fr3
	fmov.s fr3,@r7
	fmov.s @(r0,r5),fr2
	fsub fr4,fr2
	fmov.s fr2,@(r0,r7)
	mov 0x08,r0
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r7)
	mov 0x04,r0
	fmov.s @r5,fr3
	add 0x0C,r7
	fsub fr5,fr3
	fmov.s fr3,@r7
	fmov.s @(r0,r5),fr2
	fadd fr4,fr2
	fmov.s fr2,@(r0,r7)
	mov 0x08,r0
	fmov.s @(r0,r5),fr3
	mov r14,r5
	add 0x18,r5
	fmov.s fr3,@(r0,r7)
	mov 0x04,r0
	fmov.s @r6,fr3
	fadd fr5,fr3
	fsub fr4,fr3
	fmov.s fr3,@r5
	fmov.s @(r0,r6),fr2
	fsub fr4,fr2
	fsub fr5,fr2
	fmov.s fr2,@(r0,r5)
	mov 0x08,r0
	fmov.s @(r0,r6),fr3
	fmov.s fr3,@(r0,r5)
	mov 0x04,r0
	fmov.s @r6,fr3
	mov r14,r5
	add 0x24,r5
	fsub fr5,fr3
	fsub fr4,fr3
	fmov.s fr3,@r5
	fmov.s @(r0,r6),fr2
	fadd fr4,fr2
	fsub fr5,fr2
	fmov.s fr2,@(r0,r5)
	mov 0x08,r0
	fmov.s @(r0,r6),fr3
	fmov.s fr3,@(r0,r5)
	mov.l @r15,r6
	bsr loc_8c1272e0
	mov r14,r5
	add 0x34,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C127570:
	#data 0x8C32B43C
loc_8C127574:
	#data 0xE0000000
loc_8C127578:
	#data 0xF0000000
loc_8c12757c:
	#data loc_8c129c6a

;==============================================
loc_8c127580:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xCC,r15
	mov 0x04,r0
	mov r15,r14
	add 0x04,r14
	mov.l r6,@r15
	fmov.s @r5,fr3
	mov r14,r6
	fsub fr4,fr3
	fmov.s fr3,@r6
	fmov.s @(r0,r5),fr2
	fsub fr4,fr2
	fmov.s fr2,@(r0,r6)
	mov 0x08,r0
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r6)
	mov 0x04,r0
	fmov.s @r5,fr3
	add 0x0C,r6
	fadd fr4,fr3
	fmov.s fr3,@r6
	fmov.s @(r0,r5),fr2
	fsub fr4,fr2
	fmov.s fr2,@(r0,r6)
	mov 0x08,r0
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r6)
	mov 0x04,r0
	fmov.s @r5,fr3
	mov r14,r6
	add 0x18,r6
	fsub fr4,fr3
	fmov.s fr3,@r6
	fmov.s @(r0,r5),fr2
	fadd fr4,fr2
	fmov.s fr2,@(r0,r6)
	mov 0x08,r0
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r6)
	mov 0x04,r0
	fmov.s @r5,fr3
	mov r14,r6
	add 0x24,r6
	fadd fr4,fr3
	fmov.s fr3,@r6
	fmov.s @(r0,r5),fr2
	fadd fr4,fr2
	fmov.s fr2,@(r0,r6)
	mov 0x08,r0
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r6)
	mov.l @r15,r6
	bsr loc_8c1272e0
	mov r14,r5
	add 0x34,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8c127600:
	mov.l r14,@-r15
	mov 0x04,r0
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov r6,r12
	mov.l r11,@-r15
	mov r7,r11
	mov.l r10,@-r15
	mov.l r9,@-r15
	fmov.s fr15,@-r15
	fldi0 fr2
	fmov.s fr14,@-r15
	mov.l @(loc_8c1276b8,pc),r3
	sts.l pr,@-r15
	fmov.s @r5,fr5
	fmov.s @r12,fr3
	fmov.s @(r0,r5),fr6
	fsub fr3,fr5
	fmov.s @(r0,r12),fr3
	mova @(loc_8C1276B4,pc),r0
	mov.w @(loc_8C1276B2,pc),r10
	fsub fr3,fr6
	fmov.s @r3,fr15
	fmov fr5,fr0
	fmov fr6,fr3
	fmul fr6,fr3
	fmac fr0,fr5,fr3
	fmov fr3,fr7
	fcmp/eq fr2,fr7
	fmov.s @r0,fr3
	bf/s loc_8c127670
	fmul fr3,fr15
	mov 0x08,r0
	fmov.s @(r0,r5),fr0
	fmov.s @(r0,r12),fr1
	fcmp/gt fr1,fr0
	bt/s loc_8c127660
	mov r13,r4
	fmov fr15,fr4
	bra loc_8c127666
	mov r11,r6

;==============================================
	#align16_nop

;==============================================
loc_8c127660:
	mov r12,r5
	mov r11,r6
	fmov fr15,fr4

loc_8c127666:
	bsr loc_8c127580
	nop
	bra loc_8c12780e
	add r10,r13

;==============================================
	#align16_nop

;==============================================
loc_8c127670:
	fsqrt fr7
	fldi1 fr4
	fmov fr4,fr1
	mov.l @(loc_8c1276bc,pc),r3
	fmov fr6,fr14
	fmov.s @r3,fr3
	fdiv fr7,fr1
	fmov fr1,fr7
	fmul fr15,fr7
	fmov fr5,fr15
	fmul fr7,fr15
	fmul fr7,fr14
	fmov fr4,fr7
	fdiv fr3,fr7
	fmov fr7,fr2
	fmul fr5,fr2
	fmov fr7,fr1
	fmul fr6,fr1
	ftrc fr2,fpul
	sts fpul,r4
	ftrc fr1,fpul
	cmp/pz r4
	bt/s loc_8c1276a2
	sts fpul,r6
	neg r4,r4

loc_8c1276a2:
	cmp/pz r6
	bt loc_8c1276a8
	neg r6,r6

loc_8c1276a8:
	cmp/ge r6,r4
	bt/s loc_8c1276c0
	mov 0x08,r0
	bra loc_8c1276c2
	mov r4,r9

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1276B2:
	#data 0x0080
	#align4

loc_8C1276B4:
	#data 0x3F000000
loc_8c1276b8:
	#data bank16.loc_8c16be84
loc_8c1276bc:
	#data bank16.loc_8c16be80

;==============================================
loc_8c1276c0:
	mov r6,r9

loc_8c1276c2:
	fmov.s @(r0,r5),fr3
	mov 0x01,r3
	fmov fr4,fr2
	cmp/gt r3,r9
	fdiv fr3,fr2
	fmov.s fr2,@(r0,r5)
	fmov.s @(r0,r12),fr3
	fmov fr4,fr2
	fdiv fr3,fr2
	bt/s loc_8c1276dc
	fmov.s fr2,@(r0,r12)
	bra loc_8c127800
	nop

loc_8c1276dc:
	lds r9,fpul
	mov 0x04,r0
	mov.l @(loc_8C127824,pc),r14
	mov.l @(loc_8C127828,pc),r2
	float fpul,fr3
	mov.l @(loc_8C12782C,pc),r3
	mov r2,r1
	fdiv fr3,fr4
	fmov fr4,fr3
	fmul fr6,fr3
	fmov fr4,fr2
	fmul fr5,fr2
	fmov.s fr2,@r14
	fmov.s fr3,@(r0,r14)
	mov 0x08,r0
	fmov.s @(r0,r5),fr2
	fmov.s @(r0,r12),fr3
	fsub fr3,fr2
	fmul fr4,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x04,r0
	fmov.s @r12,fr3
	fmov.s fr3,@r2
	fmov.s @r1,fr2
	fmov.s @r14,fr3
	mov.l @(loc_8C127830,pc),r2
	fadd fr3,fr2
	fmov.s fr2,@r3
	mov r2,r3
	fmov.s @(r0,r12),fr3
	fmov.s fr3,@r2
	fmov.s @(r0,r14),fr3
	fmov.s @r3+,fr2
	mov 0x08,r0
	mov.l @(loc_8C127838,pc),r2
	mov r11,r7
	fadd fr3,fr2
	mov.l @(loc_8C127834,pc),r1
	mov.l @(loc_8C127828,pc),r6
	mov.l @(loc_8C12782C,pc),r5
	fmov fr14,fr5
	fmov.s fr2,@r1
	add 0x04,r1
	fmov.s @(r0,r12),fr3
	fmov fr15,fr4
	fmov.s fr3,@r2
	fmov.s @r3,fr2
	fmov.s @(r0,r14),fr3
	fadd fr3,fr2
	fmov.s fr2,@r1
	bsr loc_8c1274f0
	mov r13,r4
	add 0xFF,r9
	mov 0x01,r12
	cmp/ge r9,r12
	bt/s loc_8c1277a4
	add r10,r13

loc_8c12774e:
	mov.l @(loc_8C127828,pc),r2
	mov 0x04,r0
	fmov.s @r14,fr3
	fmov.s @r2,fr2
	mov.l @(loc_8C12782C,pc),r3
	fadd fr3,fr2
	fmov.s fr2,@r2
	fmov.s @r3,fr2
	fmov.s @r14,fr3
	fadd fr3,fr2
	fmov.s fr2,@r3
	mov.l @(loc_8C127830,pc),r3
	fmov.s @(r0,r14),fr3
	fmov.s @r3,fr2
	fadd fr3,fr2
	fmov.s fr2,@r3
	mov.l @(loc_8C127834,pc),r3
	fmov.s @(r0,r14),fr3
	mov 0x08,r0
	fmov.s @r3,fr2
	fadd fr3,fr2
	fmov.s fr2,@r3
	mov.l @(loc_8C127838,pc),r3
	fmov.s @(r0,r14),fr3
	fmov.s @r3,fr2
	fadd fr3,fr2
	fmov.s fr2,@r3
	mov.l @(loc_8C12783C,pc),r3
	fmov.s @(r0,r14),fr3
	fmov.s @r3,fr2
	fadd fr3,fr2
	fmov.s fr2,@r3
	mov.l @(loc_8C12782C,pc),r5
	mov r2,r6
	mov r11,r7
	fmov fr14,fr5
	fmov fr15,fr4
	bsr loc_8c127470
	mov r13,r4
	add 0x01,r12
	cmp/ge r9,r12
	bf/s loc_8c12774e
	add r10,r13

loc_8c1277a4:
	mov.l @(loc_8C127828,pc),r3
	mov 0x04,r0
	fmov.s @r14,fr3
	fmov.s @r3,fr2
	fadd fr3,fr2
	fmov.s fr2,@r3
	mov.l @(loc_8C12782C,pc),r3
	fmov.s @r14,fr3
	fmov.s @r3,fr2
	fadd fr3,fr2
	fmov.s fr2,@r3
	mov.l @(loc_8C127830,pc),r3
	fmov.s @(r0,r14),fr3
	fmov.s @r3,fr2
	fadd fr3,fr2
	fmov.s fr2,@r3
	mov.l @(loc_8C127834,pc),r3
	fmov.s @(r0,r14),fr3
	mov 0x08,r0
	fmov.s @r3,fr2
	fadd fr3,fr2
	fmov.s fr2,@r3
	mov.l @(loc_8C127838,pc),r3
	fmov.s @(r0,r14),fr3
	fmov.s @r3,fr2
	fadd fr3,fr2
	fmov.s fr2,@r3
	mov.l @(loc_8C12783C,pc),r3
	fmov.s @(r0,r14),fr3
	fmov.s @r3,fr2
	fadd fr3,fr2
	fmov.s fr2,@r3
	mov.l @(loc_8C127828,pc),r6
	mov r11,r7
	mov.l @(loc_8C12782C,pc),r5
	fmov fr14,fr5
	fmov fr15,fr4
	bsr loc_8c1273f0
	mov r13,r4
	bra loc_8c12780c
	nop

;==============================================
	#align16_nop

;==============================================
loc_8c127800:
	mov r11,r7
	mov r12,r6
	fmov fr14,fr5
	fmov fr15,fr4
	bsr loc_8c127360
	mov r13,r4

loc_8c12780c:
	add r10,r13

loc_8c12780e:
	lds.l @r15+,pr
	mov r13,r0
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C127824:
	#data 0x8C2DAFD0
loc_8C127828:
	#data 0x8C2DAFDC
loc_8C12782C:
	#data 0x8C2DAFE8
loc_8C127830:
	#data 0x8C2DAFE0
loc_8C127834:
	#data 0x8C2DAFEC
loc_8C127838:
	#data 0x8C2DAFE4
loc_8C12783C:
	#data 0x8C2DAFF0

;==============================================
loc_8C127840:
	mov.l @(loc_8C127A9C,pc),r3 ; r3 set to 0x8C2DAFF4
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @(loc_8C127AA0,pc),r2 ; r2 set to 0x8C2DAFFc
	mov.l r4,@r3 ; r3 ??
	rts
	mov.l r4,@r2

;==============================================
	#align16_nop

;==============================================
loc_8C127850:
	mov.l @(loc_8C127AA0,pc),r3 ; r3 set to 0x8C2DAFFc
	rts
	mov.l r4,@r3

;==============================================
	#align16_nop

;==============================================
loc_8C127860:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	sts.l macl,@-r15
	add 0xFC,r15
	mov.l @(0x234,PC),r13
	mov r4,r14
	shll2 r14
	mov.l r5,@r15
	mov.l @r13,r3
	shll r14
	add r14,r3
	mov.l @r3,r2
	tst r2,r2
	bf loc_8c12788e
	mov.l @r13,r2
	mov.l @(0x224,PC),r3
	add r14,r2
	mov r2,r8
	jsr @r3
	add 0x04,r8
	mov.l r0,@r8

loc_8C12788E:
	mov.l @r13,r3
	add r14,r3
	mov.l @r3,r2
	add 0x01,r2
	mov.l r2,@r3
	mov.l @r13,r3
	mov 0x3C,r13
	mov.l @(0x20C,PC),r2
	add r14,r3
	mov.l @(0x4,r3),r14
	mov.l @r2,r3
	mul.l r13,r14
	sts macl,r13
	add r3,r13
	mov.l @(0x2C,r13),r1
	tst r1,r1
	bf loc_8c1278d8
	mov.l @r15,r6
	mov r14,r5
	mov.l @(0x1F8,PC),r3
	mov.l @(0x8,r6),r6
	jsr @r3
	mov.l @r15,r4
	mov r0,r4
	tst r4,r4
	bt loc_8c1278d0
	mov.l @(0x1D8,PC),r3
	mov 0x01,r4
	mov.l r4,@r3
	bra loc_8c1278e0
	mov r4,r0

;==============================================
	#align16_nop

;==============================================
loc_8C1278D0:
	mov.l @(0x1E0,PC),r2
	jsr @r2
	mov r14,r4
	mov.l r14,@(0x38,r13)

loc_8C1278D8:
	mov.l @(0x2C,r13),r2
	mov 0x00,r0
	add 0x01,r2
	mov.l r2,@(0x2C,r13)

loc_8C1278E0:
	add 0x04,r15
	lds.l @r15+,macl
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14
	nop 
	mov.l r14,@-r15
	mov 0x00,r2
	mov.l r13,@-r15
	mov r4,r13
	mov.l @(0x1A8,PC),r14
	shll2 r13
	mov.l r12,@-r15
	shll r13
	mov.l r11,@-r15
	sts.l pr,@-r15
	sts.l macl,@-r15
	mov.l @r14,r3
	add r13,r3
	mov.l @r3,r1
	cmp/hi r2,r1
	bf loc_8c127976
	mov.l @r14,r0
	add r13,r0
	mov.l @r0,r3
	add 0xFF,r3
	mov.l r3,@r0
	mov.l @r14,r1
	add r13,r1
	mov.l @r1,r3
	tst r3,r3
	bf loc_8c127976
	mov.l @r14,r11
	mov 0x3C,r12
	mov.l @(0x180,PC),r1
	add r13,r11
	mov.l @(0x4,r11),r11
	mov.l @r1,r3
	mul.l r12,r11
	sts macl,r12
	add r3,r12
	mov.l @(0x28,r12),r2
	tst r2,r2
	bf loc_8c127960
	mov.l @(0x178,PC),r3
	jsr @r3
	mov r12,r4
	mov r0,r4
	tst r4,r4
	bt loc_8c127960
	mov.l @(0x150,PC),r2
	mov 0x02,r3
	mov.l r3,@r2

loc_8c12794e:
	bra loc_8c12794e
	nop 

;==============================================
	#align16_nop

;==============================================
loc_8c127960:
	mov 0xFF,r3
	mov.l @(0x158,PC),r2
	mov 0x00,r1
	mov.l r1,@(0x2C,r12)
	mov.l r3,@(0x38,r12)
	jsr @r2
	mov r11,r4
	mov.l @r14,r3
	mov 0xFF,r2
	add r13,r3
	mov.l r2,@(0x4,r3)

loc_8c127976:
	lds.l @r15+,macl
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8c127990:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(0x128,PC),r2
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov r4,r11
	sts.l pr,@-r15
	mov.l @r2,r3
	tst r3,r3
	bf.s loc_8c127a0e
	mov r5,r14
	mov.l @(0x11C,PC),r4
	mov.w @(0x4,r4),r0
	cmp/ge r0,r11
	bt loc_8c127a20
	mov r11,r13
	mov.l @(0x18,r4),r3
	shll2 r13
	shll r13
	add r3,r13
	mov.w @(0x4,r13),r0
	tst r0,r0
	bt loc_8c1279d0
	mov.w @(0x4,r13),r0
	add 0x01,r0
	bra loc_8c127a0e
	mov.w r0,@(0x4,r13)

;==============================================
	#align16_nop

;==============================================
loc_8c1279d0:
	mov.l @(0xF4,PC),r3
	mov.w @(0x2,r14),r0
	mov.l @(0x8,r14),r5
	jsr @r3
	mov r0,r4
	mov r0,r12
	cmp/pz r12
	bf loc_8c127a20
	mov.b @(0x2,r14),r0
	mov 0xFC,r3
	mov.b r0,@(0x2,r13)
	mov.l @(0x8,r14),r0
	add 0x0F,r0
	shad r3,r0
	mov.l @(0xDC,PC),r3
	mov.b r0,@(0x3,r13)
	mov 0x01,r0
	mov.w r0,@(0x4,r13)
	mov r11,r0
	mov.w r0,@(0x6,r13)
	mov.w r12,@r13
	mov.l @(0x8,r14),r5
	jsr @r3
	mov r12,r4
	mov r12,r4
	mov.l @(0xCC,PC),r2
	mov.l @(0x8,r14),r6
	shll2 r4
	mov.l @(0x4,r14),r5
	jsr @r2
	shll2 r4

loc_8c127a0e:
	bra loc_8c127a22
	mov 0x00,r0

;==============================================
	#align16_nop

;==============================================
loc_8c127a20:
	mov 0x01,r0

loc_8c127a22:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8c127a30:
	mov.l @(0x8C,PC),r2
	mov.l @r2,r3
	tst r3,r3
	bf loc_8c127a46
	mov.l @(0x98,PC),r2
	mov.w @r2,r3
	cmp/ge r3,r4
	bt loc_8c127a46
	mov.l @(0x94,PC),r3
	jmp @r3
	nop 

loc_8c127a46:
	rts
	nop

;==============================================
	#align16_nop

;==============================================
loc_8c127a50:
	mov.l @(0x88,PC),r3
	rts 
	mov.l r4,@r3

;==============================================
	#align16_nop

;==============================================
loc_8c127a60:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov.l @(0x78,PC),r4
	bsr loc_8c127c00
	mov.l r5,@(0x4,r15)
	mov.l @r15,r4
	mov 0x00,r5
	mov.l @(0x4,r15),r6
	add 0x08,r15
	bra loc_8c127de0
	lds.l @r15+,pr

;==============================================
	#align16_nop

;==============================================
loc_8c127a80:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov.l @(0x5C,PC),r4
	mov.l r5,@(0x4,r15)
	bsr loc_8c127c00
	mov.l r6,@(0x8,r15)
	mov.l @r15,r4
	mov.l @(0x4,r15),r5
	mov.l @(0x8,r15),r6
	add 0x0C,r15
	bra loc_8c127de0
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C127A9C:
	#data 0x8C2DAFF4
loc_8C127AA0:
	#data 0x8C2DAFFc
loc_8C127AA4:
	#data 0x8C2AA26c
loc_8C127AA8:
	#data bank11.loc_8c11B980
loc_8C127AAc:
	#data 0x8C2DE690
loc_8C127AB0:
	#data bank11.loc_8c11B640
loc_8C127AB4:
	#data bank11.loc_8c11BC40
loc_8C127AB8:
	#data bank17.loc_8c17C960
loc_8C127ABC:
	#data bank11.loc_8c11BA00
loc_8C127AC0:
	#data bank16.loc_8c16BBEc
loc_8C127AC4:
	#data 0x8C32B420
loc_8C127AC8:
	#data bank11.loc_8c11BE90
loc_8C127ACC:
	#data bank11.loc_8c11BF50
loc_8C127AD0:
	#data bank11.loc_8c11F7F0
loc_8C127AD4:
	#data 0x8C32B424
loc_8C127AD8:
	#data bank11.loc_8c11BDC0
loc_8C127ADC:
	#data 0x8C2DAFF8
loc_8C127AE0:
	#data bank16.loc_8c16BED8
loc_8C127AE4:
	#data bank16.loc_8c16BEEc

;==============================================
	#align16_nop

;==============================================
loc_8C127AF0:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov.l @(loc_8C127BE8,pc),r4 ; r4 set to 0x8C16BF00
	bsr loc_8C127C00
	mov.l r5,@(0x04,r15)
	mov.l @r15,r4 ; r4 ??? bc r15 is ???
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @(0x04,r15),r6
	add 0x08,r15
	bra loc_8C127DE0
	lds.l @r15+,pr

;==============================================
	#align16_nop

;==============================================
loc_8C127b10:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov.l @(0xD4,PC),r4
	mov.l r5,@(0x4,r15)
	bsr loc_8c127c00
	mov.l r6,@(0x8,r15)
	mov.l @r15,r4
	mov.l @(0x4,r15),r5
	mov.l @(0x8,r15),r6
	add 0x0C,r15
	bra loc_8c127de0
	lds.l @r15+,pr


;==============================================
	#align16_nop

;==============================================
loc_8C127b30:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov.l @(0xB8,PC),r4
	mov.l r5,@(0x4,r15)
	mov.l r6,@(0x8,r15)
	bsr loc_8c127c80
	mov r6,r5
	mov r0,r4
	tst r4,r4
	bf loc_8c127b50
	mov.l @r15,r4
	mov.l @(0x4,r15),r5
	add 0x0C,r15
	bra loc_8c127f50
	lds.l @r15+,pr

;==============================================
loc_8c127b50:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
	#align16_nop

;==============================================
loc_8C127B60:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov.l @(loc_8C127BF4,pc),r4 ; r4 set to 0x8C16BF3c
	mov.l r5,@(0x04,r15)
	mov.l r6,@(0x08,r15)
	bsr loc_8C127C80
	mov r6,r5
	mov r0,r4 ; r4 ??? bc r0 is ???
	tst r4,r4
	bf loc_8C127B80
	mov.l @r15,r4
	mov.l @(0x04,r15),r5
	add 0x0C,r15
	bra loc_8C127F50
	lds.l @r15+,pr

loc_8C127B80:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
	#align16_nop

;==============================================
loc_8c127b90:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov.l @(0x60,PC),r4
	mov.l r5,@(0x4,r15)
	mov.l r6,@(0x8,r15)
	bsr loc_8c127c80
	mov r6,r5
	mov r0,r4
	tst r4,r4
	bf loc_8c127bb0
	mov.l @r15,r4
	mov.l @(0x4,r15),r5
	add 0x0C,r15
	bra loc_8c128070
	lds.l @r15+,pr

loc_8c127bb0:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	nop 


;==============================================
	#align16_nop

;==============================================
loc_8c127bc0:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov.l @(0x34,PC),r4
	mov.l r5,@(0x4,r15)
	mov.l r6,@(0x8,r15)
	bsr loc_8c127c80
	mov r6,r5
	mov r0,r4
	tst r4,r4
	bf loc_8c127be0
	mov.l @r15,r4
	mov.l @(0x4,r15),r5
	add 0x0C,r15
	bra loc_8c128070
	lds.l @r15+,pr

loc_8c127be0:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C127BE8:
	#data bank16.loc_8c16BF00
loc_8C127BEC:
	#data bank16.loc_8c16BF14
loc_8C127BF0:
	#data bank16.loc_8c16BF28
loc_8C127BF4:
	#data bank16.loc_8c16BF3c
loc_8C127BF8:
	#data bank16.loc_8c16BF50
loc_8C127BFC:
	#data bank16.loc_8c16BF64

;==============================================
loc_8C127C00:
	mov.l r14,@-r15
	mov 0x44,r0 ; r0 set to 0x44
	mov.l @(loc_8C127D24,pc),r14 ; r14 set to 0x8C2DEC98
	mov.l @(loc_8C127D28,pc),r2 ; r2 set to 0x600608
	sts.l pr,@-r15
	mov.l @r14,r3
	mov.l r2,@r3
	mov.l @r4+,r2 ; r2 ??? bc r4 is ???
	mov.l @r14,r3
	mov.l r2,@(0x08,r3)
	mov.l @r4+,r2
	mov.l @r14,r3
	mov.l r2,@(0x0C,r3)
	mov.l @r4+,r2
	mov.l @r14,r3
	mov.l r2,@(0x20,r3)
	mov.l @r4+,r2
	mov.l @r14,r3
	mov.l r2,@(r0,r3)
	mov 0x40,r0 ; r0 set to 0x40
	mov.l @r4,r2
	mov.l @r14,r3
	mov.l r2,@(r0,r3)
	mov.l @(loc_8C127D2C,pc),r3 ; r3 set to 0x8C17BF80
	jsr @r3
	mov.l @r14,r4
	mov.w @(loc_8C127D20,pc),r0 ; r0 set to 0x90
	mov.l @r14,r3 ; r3 ??
	mov.l @(loc_8C127D30,pc),r2 ; r2 set to 0xFFFCFF3f
	mov.l @(r0,r3),r1
	mov.l @(loc_8C127D34,pc),r4 ; r4 set to 0x8C2DEE8c
	and r2,r1
	mov.l r1,@(r0,r3)
	mov.l @r14,r3
	mov.l @r4,r1
	mov.l @(r0,r3),r2 ; r2 ??? bc r3 is ???
	or r1,r2
	mov.l r2,@(r0,r3)
	add 0x08,r0 ; r0 set to 0x98
	mov.l @r14,r3
	mov.l @(loc_8C127D38,pc),r2 ; r2 set to 0x31FF0Ff
	mov.l @(r0,r3),r1
	and r2,r1
	mov.l r1,@(r0,r3)
	mov.l @r14,r3
	mov.l @(loc_8C127D3C,pc),r1 ; r1 set to 0x8C2AA4C4
	add r0,r3
	mov.l @(0x04,r4),r2 ; r2 ??
	mov.l @r1,r0 ; r0 ??
	mov.l @(loc_8C127D40,pc),r4 ; r4 set to 0x8C2DB048
	xor 0xFC,r0
	shll16 r0
	shll8 r0
	or r2,r0
	mov.l @r3,r2
	or r0,r2
	mov.l r2,@r3
	mov.l @r14,r5
	lds.l @r15+,pr
	mov.l @(loc_8C127D44,pc),r3 ; r3 set to 0x8C17C6C0
	jmp @r3
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8C127C80:
	mov.l @(loc_8C127D48,pc),r2 ; r2 set to 0x8C2AA26c
	mov r5,r6
	mov.l r14,@-r15
	shll2 r6
	sts.l pr,@-r15
	shll r6
	sts.l macl,@-r15
	mov.l @r2,r3
	add r3,r6
	mov.l @r6,r1
	tst r1,r1
	bf loc_8C127CA0
	bra loc_8C127DCa
	mov 0x01,r0

;==============================================
	#align16_nop

;==============================================
loc_8C127CA0:
	mov.l @(0x04,r6),r5
	mov 0x3C,r6 ; r6 set to 0x3c
	mov.l @(loc_8C127D4C,pc),r7 ; r7 set to 0x8C2DE690
	mov 0x6C,r0 ; r0 set to 0x6c
	mul.l r6,r5
	mov.l @(loc_8C127D24,pc),r14 ; r14 set to 0x8C2DEC98
	mov.l @r7,r2
	mov.l @r14,r3
	sts macl,r6
	add r6,r2
	mov.l r2,@(r0,r3)
	mov 0x44,r0 ; r0 set to 0x44
	mov.l @(loc_8C127D28,pc),r2 ; r2 set to 0x600608
	mov.l @r14,r3
	mov.l r2,@r3
	mov.l @r4+,r2 ; r2 ??? bc r4 is ???
	mov.l @r14,r3
	mov.l r2,@(0x08,r3)
	mov.l @r4+,r2
	mov.l @r14,r3
	mov.l r2,@(0x0C,r3)
	mov.l @r4+,r2
	mov.l @r14,r3
	mov.l r2,@(0x20,r3)
	mov.l @r4+,r2
	mov.l @r14,r3
	mov.l r2,@(r0,r3)
	mov 0x40,r0 ; r0 set to 0x40
	mov.l @r4,r2
	mov.l @r14,r3
	mov.l r2,@(r0,r3)
	mov.l @r7,r0 ; r0 ??
	add r6,r0
	mov.l @(0x34,r0),r0
	mov 0xE5,r3 ; r3 set to 0xFFFFFFE5
	shad r3, r0
	and 0x07,r0
	cmp/eq 0x05,r0
	bt loc_8C127D00
	cmp/eq 0x06,r0
	bt loc_8C127D00
	bra loc_8C127D7e
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C127D00:
	mov.l @r14,r3
	mov.l @(loc_8C127D50,pc),r2 ; r2 set to 0x80000
	mov.l @r3,r1
	mov.l @(loc_8C127D58,pc),r0 ; r0 set to 0x8C16BBEc
	or r2,r1
	mov.l r1,@r3
	mov.l @r0,r1
	mov.l @(loc_8C127D54,pc),r3 ; r3 set to 0x8C2DAFF8
	tst r1,r1
	bt/s loc_8C127D60
	mov.l @r3,r4
	mov.l @r14,r2 ; r2 ??? bc r14 is ???
	mov 0x68,r0 ; r0 set to 0x68
	mov.l r4,@(r0,r2)
	bra loc_8C127D7e
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C127D20:
	#data 0x0090
	#align4

loc_8C127D24:
	#data 0x8C2DEC98
loc_8C127D28:
	#data 0x00600608
loc_8C127D2C:
	#data bank17.loc_8c17BF80
loc_8C127D30:
	#data 0xFFFCFF3f
loc_8C127D34:
	#data 0x8C2DEE8c
loc_8C127D38:
	#data 0x031FF0Ff
loc_8C127D3C:
	#data 0x8C2AA4C4
loc_8C127D40:
	#data 0x8C2DB048
loc_8C127D44:
	#data bank17.loc_8c17C6C0
loc_8C127D48:
	#data 0x8C2AA26c
loc_8C127D4C:
	#data 0x8C2DE690
loc_8C127D50:
	#data 0x00080000
loc_8C127D54:
	#data 0x8C2DAFF8
loc_8C127D58:
	#data bank16.loc_8c16BBEc

;==============================================
	#align16_nop

;==============================================
loc_8c127d60:
	mov.l @(loc_8C127E84,pc),r5
	mov.w @(0x04,r5),r0
	cmp/ge r0,r4
	bt loc_8c127d7e
	mov.l @(0x18,r5),r1
	shll2 r4
	shll r4
	add r1,r4
	mov.w @(0x04,r4),r0
	tst r0,r0
	bt loc_8c127d7e
	mov.w @r4,r2
	mov 0x68,r0
	mov.l @r14,r1
	mov.l r2,@(r0,r1)

loc_8C127D7E:
	mov.l @(loc_8C127E88,pc),r2 ; r2 set to 0x8C17BF80
	jsr @r2
	mov.l @r14,r4
	mov.w @(loc_8C127E82,pc),r0 ; r0 set to 0x90
	mov.l @r14,r3
	mov.l @(loc_8C127E8C,pc),r2 ; r2 set to 0xFFFCFF3f
	mov.l @(r0,r3),r1
	mov.l @(loc_8C127E90,pc),r4 ; r4 set to 0x8C2DEE8c
	and r2,r1
	mov.l r1,@(r0,r3)
	mov.l @r14,r3
	mov.l @r4,r1
	mov.l @(r0,r3),r2 ; r2 ??? bc r3 is ???
	or r1,r2
	mov.l r2,@(r0,r3)
	add 0x08,r0 ; r0 set to 0x98
	mov.l @r14,r3
	mov.l @(loc_8C127E94,pc),r2 ; r2 set to 0x31FF0Ff
	mov.l @(r0,r3),r1
	and r2,r1
	mov.l r1,@(r0,r3)
	mov.l @r14,r3
	mov.l @(loc_8C127E98,pc),r1 ; r1 set to 0x8C2AA4C4
	add r0,r3
	mov.l @(0x04,r4),r2 ; r2 ??
	mov.l @r1,r0 ; r0 ??
	mov.l @(loc_8C127E9C,pc),r4 ; r4 set to 0x8C2DB048
	xor 0xFC,r0
	shll16 r0
	shll8 r0
	or r2,r0
	mov.l @r3,r2
	or r0,r2
	mov.l r2,@r3
	mov.l @(loc_8C127EA0,pc),r3 ; r3 set to 0x8C17C6C0
	jsr @r3
	mov.l @r14,r5
	mov 0x00,r0 ; r0 set to 0x00

loc_8C127DCA:
	lds.l @r15+,macl
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8c127de0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	add 0xD4,r15
	shll2 r5
	mov.l @(loc_8c127ea4,pc),r3
	shll r5
	mov.l @(loc_8c127e9c,pc),r14
	add r5,r3
	mov r4,r12
	mov.l @(loc_8C127EA8,pc),r8
	mov r6,r13
	mov.l r3,@(0x08,r15)
	mov.l @(0x08,r14),r5
	mov r8,r1
	mov.l @(loc_8C127EAC,pc),r9
	add 0x04,r1
	mov.l @r5,r4
	mov.l @(loc_8C127EB0,pc),r10
	shll2 r4
	mov.l r4,@(0x04,r15)
	mov.l @r14,r0
	mov.l @(0x04,r5),r11
	mov.l @(r0,r4),r4
	mov r11,r6
	mov r4,r3
	shlr16 r3
	shlr8 r3
	and r9,r4
	mov.l r3,@r1
	mov.l r3,@r8
	or r10,r4
	mov.l @(loc_8c127eb4,pc),r3
	mov.l r4,@r15
	jsr @r3
	mov.l @(0x04,r14),r5
	mov.l @r15,r2
	pref @r2
	mov r11,r0
	cmp/eq 0x40,r0
	bf loc_8c127e44
	mov.l @r15,r2
	add 0x20,r2
	pref @r2

loc_8c127e44:
	mov.l @r14,r0
	shlr2 r11
	mov.l @(0x04,r15),r3
	shll2 r11
	cmp/pl r12
	mov.l @(r0,r3),r1
	add r11,r1
	mov.l r1,@(r0,r3)
	mov.l r10,@(0x0C,r15)
	mov.l @(0x08,r15),r3
	add 0x04,r3
	bf/s loc_8c127f38
	mov.l r3,@(0x04,r15)
	fldi1 fr15

loc_8c127e60:
	mov r12,r0
	cmp/eq 0x01,r0
	bf loc_8c127e6a
	mov.l @(loc_8C127EB8,pc),r2
	mov.l r2,@(0x0C,r15)

loc_8c127e6a:
	mov.l @(loc_8C127EBC,pc),r1
	mov.l @r1,r3
	tst r3,r3
	bt loc_8c127ed0
	mov.l @(loc_8c127ec0,pc),r3
	mov r15,r5
	add 0x10,r5
	jsr @r3
	mov r13,r4
	mov 0x18,r0
	bra loc_8c127ee2
	fmov.s @(r0,r15),fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c127e82:
	#data 0x0090
	#align4

loc_8c127e84:
	#data 0x8C32B420
loc_8c127e88:
	#data bank17.loc_8c17BF80
loc_8c127e8c:
	#data 0xFFFCFF3F
loc_8c127e90:
	#data 0x8C2DEE8C
loc_8c127e94:
	#data 0x031FF0FF
loc_8c127e98:
	#data 0x8C2AA4C4
loc_8c127e9c:
	#data 0x8C2DB048
loc_8c127ea0:
	#data bank17.loc_8c17C6C0
loc_8c127ea4:
	#data bank13.loc_8c13f614
loc_8C127EA8:
	#data 0xFF000038
loc_8C127EAC:
	#data 0x03FFFFFF
loc_8C127EB0:
	#data 0xE0000000
loc_8c127eb4:
	#data bank17.loc_8c17a6e0
loc_8C127EB8:
	#data 0xF0000000
loc_8C127EBC:
	#data 0x8C2DAFFC
loc_8c127ec0:
	#data bank11.loc_8c11f8b0

;==============================================
	#align16_nop

;==============================================
loc_8c127ed0:
	fmov.s @r13,fr3
	mov 0x10,r0
	fmov.s fr3,@(r0,r15)
	mov 0x04,r0
	fmov.s @(r0,r13),fr3
	mov 0x14,r0
	fmov.s fr3,@(r0,r15)
	mov 0x08,r0
	fmov.s @(r0,r13),fr3

loc_8c127ee2:
	fmov fr15,fr2
	fdiv fr3,fr2
	mov 0x18,r0
	mov.l @(loc_8C128104,pc),r1
	mov r15,r5
	add 0x0C,r5
	mov 0x20,r6
	fmov.s fr2,@(r0,r15)
	mov.l @(0x04,r15),r0
	mov.l @r0,r0
	shll2 r0
	mov.l @(r0,r13),r3
	mov.l r3,@(0x24,r15)
	mov.l @(0x08,r14),r4
	mov.l @r4,r4
	shll2 r4
	mov.l r4,@r15
	mov.l @r14,r0
	mov.l @(r0,r4),r4
	mov r4,r3
	shlr16 r3
	shlr8 r3
	mov r4,r11
	mov.l r3,@r1
	and r9,r11
	mov.l r3,@r8
	or r10,r11
	mov.l @(loc_8c128108,pc),r3
	jsr @r3
	mov r11,r4
	pref @r11
	mov.l @r14,r0
	add 0xFF,r12
	mov.l @r15,r3
	cmp/pl r12
	mov.l @(r0,r3),r2
	add 0x20,r2
	mov.l r2,@(r0,r3)
	mov.l @(0x08,r15),r3
	mov.l @r3,r2
	shll2 r2
	bt/s loc_8c127e60
	add r2,r13

loc_8c127f38:
	add 0x2C,r15
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

;==============================================
loc_8c127f50:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xD8,r15
	mov.l @(0x1A4,PC),r13
	mov r5,r14
	mov r4,r12
	mov.l @(0x1A4,PC),r1
	mov.l @(0x8,r13),r5
	mov.l @(0x194,PC),r8
	mov.l @r5,r4
	mov.l @(0x1A0,PC),r9
	shll2 r4
	mov.l @(0x1A0,PC),r10
	mov.l r4,@(0x4,r15)
	mov.l @r13,r0
	mov.l @(0x4,r5),r11
	mov.l @(r0,r4),r4
	mov r11,r6
	mov r4,r3
	shlr16 r3
	shlr8 r3
	and r9,r4
	mov.l r3,@r8
	mov.l r3,@r1
	or r10,r4
	mov.l @(0x174,PC),r3
	mov.l r4,@r15
	jsr @r3
	mov.l @(0x4,r13),r5
	mov.l @r15,r2
	pref @r2
	mov r11,r0
	cmp/eq 0x40,r0
	bf loc_8c127fa8
	mov.l @r15,r2
	add 0x20,r2
	pref @r2

loc_8c127fa8:
	mov.l @r13,r0
	shlr2 r11
	mov.l @(0x4,r15),r3
	shll2 r11
	cmp/pl r12
	mov.l @(r0,r3),r1
	add r11,r1
	mov.l r1,@(r0,r3)
	bf.s loc_8c12804c
	mov.l r10,@(0x8,r15)
	fldi1 fr15

loc_8c127fbe:
	mov r12,r0
	cmp/eq 0x01,r0
	bf loc_8c127fc8
	mov.l @(0x154,PC),r3
	mov.l r3,@(0x8,r15)

loc_8c127fc8:
	mov.l @(0x154,PC),r1
	mov.l @r1,r2
	tst r2,r2
	bt loc_8c127fe0
	mov.l @(0x150,PC),r3
	mov r15,r5
	add 0x0C,r5
	jsr @r3
	mov r14,r4
	mov 0x14,r0
	bra loc_8c127ff2
	fmov @(r0,r15),fr3

loc_8c127fe0:
	fmov @r14,fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r15)
	mov 0x04,r0
	fmov @(r0,r14),fr3
	mov 0x10,r0
	fmov fr3,@(r0,r15)
	mov 0x08,r0
	fmov @(r0,r14),fr3

loc_8c127ff2:
	fmov fr15,fr2
	fdiv fr3,fr2
	mov 0x14,r0
	mov.l @(0x114,PC),r1
	mov r15,r5
	add 0x08,r5
	mov 0x20,r6
	fmov fr2,@(r0,r15)
	mov 0x0C,r0
	fmov @(r0,r14),fr3
	mov 0x18,r0
	fmov fr3,@(r0,r15)
	mov 0x10,r0
	fmov @(r0,r14),fr3
	mov 0x1C,r0
	fmov fr3,@(r0,r15)
	mov.l @(0x14,r14),r3
	mov.l r3,@(0x20,r15)
	mov.l @(0x8,r13),r4
	mov.l @r4,r4
	shll2 r4
	mov.l r4,@r15
	mov.l @r13,r0
	mov.l @(r0,r4),r4
	mov r4,r3
	mov r4,r11
	shlr16 r3
	and r9,r11
	shlr8 r3
	mov.l r3,@r8
	or r10,r11
	mov.l r3,@r1
	mov.l @(0xD4,PC),r3
	jsr @r3
	mov r11,r4
	pref @r11
	mov.l @r13,r0
	add 0xFF,r12
	mov.l @r15,r3
	cmp/pl r12
	mov.l @(r0,r3),r2
	add 0x20,r2
	mov.l r2,@(r0,r3)
	bt.s loc_8c127fbe
	add 0x1C,r14

loc_8c12804c:
	add 0x28,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
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

;==============================================
loc_8c128070:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xD8,r15
	mov.l @(0x84,PC),r13
	mov r5,r14
	mov r4,r12
	mov.l @(0x84,PC),r8
	mov.l @(0x8,r13),r5
	mov r8,r1
	mov.l @(0x80,PC),r9
	mov.l @r5,r4
	add 0x04,r1
	mov.l @(0x80,PC),r10
	shll2 r4
	mov.l r4,@(0x4,r15)
	mov.l @r13,r0
	mov.l @(0x4,r5),r11
	mov.l @(r0,r4),r4
	mov r11,r6
	mov r4,r3
	shlr16 r3
	shlr8 r3
	and r9,r4
	mov.l r3,@r1
	mov.l r3,@r8
	or r10,r4
	mov.l @(0x54,PC),r3
	mov.l r4,@r15
	jsr @r3
	mov.l @(0x4,r13),r5
	mov.l @r15,r2
	pref @r2
	mov r11,r0
	cmp/eq 0x40,r0
	bf loc_8c1280ca
	mov.l @r15,r2
	add 0x20,r2
	pref @r2

loc_8c1280ca:
	mov.l @r13,r0
	shlr2 r11
	mov.l @(0x4,r15),r3
	shll2 r11
	cmp/pl r12
	mov.l @(r0,r3),r1
	add r11,r1
	mov.l r1,@(r0,r3)
	bf.s loc_8c1281a0
	mov.l r10,@(0x8,r15)
	fldi1 fr15

loc_8c1280e0:
	mov r12,r0
	cmp/eq 0x01,r0
	bf loc_8c1280ea
	mov.l @(0x34,PC),r3
	mov.l r3,@(0x8,r15)

loc_8c1280ea:
	mov.l @(0x34,PC),r1
	mov.l @r1,r2
	tst r2,r2
	bt loc_8c128130
	mov.l @(0x30,PC),r3
	mov r15,r5
	add 0x0C,r5
	jsr @r3
	mov r14,r4
	mov 0x14,r0
	bra loc_8c128142
	fmov @(r0,r15),fr3


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C128104:
	#data 0xFF00003C
loc_8c128108:
	#data bank17.loc_8c17a6e0
loc_8c12810c:
	#data 0x8c2db048
loc_8c128110:
	#data 0xff000038
loc_8c128114:
	#data 0x03ffffff
loc_8c128118:
	#data 0xe0000000
loc_8c12811c:
	#data 0xf0000000
loc_8c128120:
	#data 0x8c2daffc
loc_8c128124:
	#data bank11.loc_8c11f8b0


;==============================================
	#align16_nop

;==============================================
loc_8c128130:
	fmov @r14,fr3
	mov 0x0C,r0
	fmov fr3,@(r0,r15)
	mov 0x04,r0
	fmov @(r0,r14),fr3
	mov 0x10,r0
	fmov fr3,@(r0,r15)
	mov 0x08,r0
	fmov @(r0,r14),fr3

loc_8c128142:
	fmov fr15,fr2
	fdiv fr3,fr2
	mov 0x14,r0
	mov.l @(0x6C,PC),r1
	mov 0x20,r6
	fmov fr2,@(r0,r15)
	mov 0x0C,r0
	fmov @(r0,r14),fr3
	mov 0x18,r0
	fmov fr3,@(r0,r15)
	mov 0x10,r0
	fmov @(r0,r14),fr3
	mov 0x1C,r0
	fmov fr3,@(r0,r15)
	mov.l @(0x14,r14),r3
	mov.l r3,@(0x20,r15)
	mov.l @(0x18,r14),r2
	mov.l r2,@(0x24,r15)
	mov.l @(0x8,r13),r4
	mov.l @r4,r4
	shll2 r4
	mov.l r4,@r15
	mov.l @r13,r0
	mov.l @(r0,r4),r4
	mov r4,r3
	mov r4,r11
	shlr16 r3
	and r9,r11
	shlr8 r3
	or r10,r11
	mov.l r3,@r1
	mov.l r3,@r8
	mov.l @(0x38,PC),r3
	mov r15,r5
	add 0x08,r5
	jsr @r3
	mov r11,r4
	pref @r11
	mov.l @r13,r0
	add 0xFF,r12
	mov.l @r15,r3
	cmp/pl r12
	mov.l @(r0,r3),r2
	add 0x20,r2
	mov.l r2,@(r0,r3)
	bt.s loc_8c1280e0
	add 0x1C,r14


loc_8c1281a0:
	add 0x28,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
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

loc_8c1281b8:
	#data 0xFF00003C
loc_8c1281bc:
	#data bank17.loc_8c17A6E0

;==============================================
loc_8c1281c0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xF8,PC),r14

loc_8c1281c6:
	jsr @r14
	nop 
	cmp/eq 0x01,r0
	bt.s loc_8c1281d6
	mov r0,r4
	mov r4,r0
	cmp/eq 0x03,r0
	bf loc_8c1281c6

loc_8c1281d6:
	lds.l @r15+,pr
	mov r4,r0
	rts 
	mov.l @r15+,r14

loc_8c1281de:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov r4,r11
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.w @(0xC6,PC),r14

loc_8c1281ee:
	mov.w @(0xC6,PC),r12
	mov r14,r5
	mov 0x3C,r13
	mov.l @(0xCC,PC),r10
	add r12,r5
	mul.l r13,r5
	sts macl,r5
	add r11,r5
	jsr @r10
	mov r14,r4
	mov r0,r4
	tst r4,r4
	bf loc_8c128212
	bsr loc_8c1281c0
	nop 
	cmp/eq 0x01,r0
	bt.s loc_8c128216
	mov r0,r4

loc_8c128212:
	bra loc_8c128220
	mov r4,r0

loc_8c128216:
	mov.w @(0xA0,PC),r4
	add 0x01,r14
	cmp/gt r4,r14
	bf loc_8c1281ee
	mov 0x00,r0

loc_8c128220:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

loc_8c12822e:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov r4,r8
	sts.l pr,@-r15
	mov.l @(0x84,PC),r3
	mov.w @(0x76,PC),r4
	jsr @r3
	nop 
	mov r0,r9
	tst r9,r9
	bt loc_8c1282a2
	bsr loc_8c1281de
	mov r9,r4
	mov 0x00,r10
	mov.w @(0x5E,PC),r13
	mov 0x00,r11
	add r9,r11
	mov 0x00,r12
	add r8,r10

loc_8c12825e:
	mov 0x3C,r6
	mov.l @(0x68,PC),r3
	mov r6,r5
	mul.l r5,r12
	sts macl,r5
	add r8,r5
	jsr @r3
	mov r11,r4
	tst r0,r0
	bt loc_8c12828a
	mov.l @(0x5C,PC),r14
	mov r10,r5
	jsr @r14
	mov r13,r4
	mov r0,r14
	tst r14,r14
	bf loc_8c12829e
	bsr loc_8c1281c0
	nop 
	cmp/eq 0x01,r0
	bf.s loc_8c12829e
	mov r0,r14

loc_8c12828a:
	mov 0x0C,r4
	add 0x01,r12
	cmp/ge r4,r12
	add 0x01,r13
	add 0x3C,r10
	bf.s loc_8c12825e
	add 0x3C,r11
	mov.l @(0x38,PC),r3
	jsr @r3
	mov r9,r4

loc_8c12829e:
	bra loc_8c1282a4
	mov r14,r0

loc_8c1282a2:
	mov 0xFE,r0

loc_8c1282a4:
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
loc_8c1282b6:
	#data 0x00C0
loc_8c1282b8:
	#data 0xFF40
loc_8c1282ba:
	#data 0x00CB
loc_8c1282bc:
	#data 0x02D0
	#align4

loc_8c1282c0:
	#data bank18.loc_8c18B714
loc_8c1282c4:
	#data bank18.loc_8c18B698
loc_8c1282c8:
	#data bank17.loc_8c177CF4
loc_8c1282cc:
	#data loc_8C12F098
loc_8c1282d0:
	#data bank18.loc_8c18B6D4
loc_8c1282d4:
	#data bank17.loc_8c177DC2

;==============================================
loc_8c1282d8:
	mov.l @(0xBC,PC),r3
	mov.l @r3,r5
	tst r5,r5
	bt loc_8c12830e
	mov.l @(0xB8,PC),r6
	tst r4,r4
	bt loc_8c1282ec
	mov r4,r0
	cmp/eq 0x01,r0
	bf loc_8c1282f6

loc_8c1282ec:
	mov.l @(0x4,r5),r3
	cmp/eq r6,r3
	bt loc_8c128302
	bra loc_8c128306
	nop 

loc_8c1282f6:
	cmp/eq 0x02,r0
	bf loc_8c12830a
	mov.w @(0x94,PC),r0
	mov.l @(r0,r5),r3
	cmp/eq r6,r3
	bf loc_8c128306


loc_8c128302:
	rts 
	mov 0x00,r0


loc_8c128306:
	rts 
	mov 0xFD,r0


loc_8c12830a:
	rts 
	mov 0xFE,r0

loc_8c12830e:
	mov 0xFF,r0
	rts 
	nop 

loc_8c128314:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x84,PC),r3
	mov r4,r5
	mov.l r4,@r15
	jsr @r3
	mov 0x02,r4
	cmp/eq 0xF8,r0
	bf.s loc_8c128330
	mov r0,r4
	mov.l @(0x78,PC),r3
	jsr @r3
	mov 0x00,r4
	mov r0,r4


loc_8c128330:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;==============================================
loc_8C128338:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C128398,pc),r14 ; r14 set to 0x8C16BF7c
	mov.l r4,@r15
	mov.l @r14,r3
	tst r3,r3
	bf loc_8C1283D6
	mov.l @(loc_8C1283AC,pc),r13 ; r13 set to 0x8C16BF78
	tst r5,r5
	mov.l @(loc_8C1283A8,pc),r12 ; r12 set to 0x8C16BF80
	bf loc_8C128368
	mov.l @(loc_8C1283B0,pc),r2 ; r2 set to 0x8C177CF4
	mov.w @(loc_8C128394,pc),r4 ; r4 set to 0x4000
	jsr @r2
	nop
	mov r0,r3
	tst r3,r3
	bt/s loc_8C12838e
	mov.l r0,@r13 ; r13 ??? bc r0 is ???
	bra loc_8C128370
	nop

loc_8C128368:
	mov.l r5,@r13
	mov.l @r12,r0
	or 0x01,r0
	mov.l r0,@r12

loc_8C128370:
	bsr loc_8C128314
	mov.l @r13,r4
	tst r0,r0
	bf loc_8C1283D2
	mov.l @r15,r2
	tst r2,r2
	bf loc_8C1283B4
	mov.l @(loc_8C1283B0,pc),r3 ; r3 set to 0x8C177CF4
	mov.w @(loc_8C128396,pc),r4 ; r4 set to 0x2D0
	jsr @r3
	nop
	mov r0,r2
	tst r2,r2
	bf/s loc_8C1283Be
	mov.l r0,@r14

loc_8C12838E:
	bra loc_8C1283D8
	mov 0xFE,r0


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C128392:
	#data 0x0168
loc_8C128394:
	#data 0x4000
loc_8C128396:
	#data 0x02D0
	#align4

loc_8C128398:
	#data bank16.loc_8c16BF7c
loc_8C12839c:
	#data 0x41474553
loc_8C1283A0:
	#data bank18.loc_8c18B508
loc_8C1283A4:
	#data bank18.loc_8c18B60c
loc_8C1283A8:
	#data bank16.loc_8c16BF80
loc_8C1283AC:
	#data bank16.loc_8c16BF78
loc_8C1283B0:
	#data bank17.loc_8c177CF4

;==============================================
loc_8c1283b4:
	mov.l @r15,r2
	mov.l r2,@r14
	mov.l @r12,r0
	or 0x02,r0
	mov.l r0,@r12

loc_8c1283be:
	mov.l @(loc_8c1284bc,pc),r3
	mov 0x00,r5
	mov.w @(loc_8C1284B8,pc),r6
	jsr @r3
	mov.l @r14,r4
	bsr loc_8c1281de
	mov.l @r14,r4
	mov r0,r4
	tst r4,r4
	bt loc_8c1283d6

loc_8C1283D2:
	bra loc_8C1283D8
	mov 0xFF,r0

loc_8C1283D6:
	mov 0x00,r0 ; r0 set to 0x00

loc_8C1283D8:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c1283e4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(loc_8c1284c4,pc),r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @r13,r3
	mov.l @(loc_8c1284c0,pc),r12
	tst r3,r3
	bt/s loc_8c12840c
	mov 0x00,r14
	mov.l @(loc_8c1284c8,pc),r3
	jsr @r3
	nop
	mov.l @r12,r0
	tst 0x01,r0
	bf loc_8c12840a
	mov.l @(loc_8c1284cc,pc),r3
	jsr @r3
	mov.l @r13,r4

loc_8c12840a:
	mov.l r14,@r13

loc_8c12840c:
	mov.l @(loc_8c1284d0,pc),r2
	mov.l @r2,r4
	tst r4,r4
	bt loc_8c128424
	mov.l @r12,r0
	tst 0x02,r0
	bf loc_8c128420
	mov.l @(loc_8c1284cc,pc),r3
	jsr @r3
	nop

loc_8c128420:
	mov.l @(loc_8c1284d0,pc),r2
	mov.l r14,@r2

loc_8c128424:
	mov.l r14,@r12
	mov 0x00,r0
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8C128432:
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x00,r5 ; r5 set to 0x00
	bsr loc_8C128338
	mov r5,r4 ; r4 set to 0x00
	bsr loc_8C1282D8
	mov 0x00,r4 ; r4 set to 0x00
	bsr loc_8C1283E4
	mov.l r0,@r15
	mov.l @r15,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
;unused?
loc_8c12844e:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r4,@r15
	bsr loc_8c1282d8
	mov 0x00,r4
	mov r0,r4
	tst r4,r4
	bf loc_8c128466
	mov.l @(0x70,PC),r1
	mov.l @r15,r3
	mov.l @r1,r2
	mov.l r2,@r3

loc_8c128466:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;==============================================
;unused?
loc_8c12846e:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	bsr loc_8c1282d8
	mov r4,r14
	mov r0,r5
	tst r5,r5
	bf loc_8c1284ae
	mov.l @(0x4C,PC),r3
	tst r14,r14
	bf.s loc_8c128494
	mov.l @r3,r4
	mov.l @r4,r0
	tst 0x01,r0
	bt loc_8c128492
	bra loc_8c128494
	mov 0x02,r14

loc_8c128492:
	mov 0x01,r14

loc_8c128494:
	mov r14,r0
	cmp/eq 0x01,r0
	bf loc_8c1284a6
	mov r4,r2
	mov.l @r15,r3
	add 0x04,r2
	mov.l r2,@r3
	bra loc_8c1284ae
	nop 

loc_8c1284a6:
	mov.w @(0x10,PC),r3
	mov.l @r15,r1
	add r4,r3
	mov.l r3,@r1

loc_8c1284ae:
	mov r5,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1284b8:
	#data 0x02D0
loc_8c1284ba:
	#data 0x0168
	#align4

loc_8C1284BC:
	#data loc_8c129728
loc_8C1284C0:
	#data bank16.loc_8c16BF80
loc_8C1284C4:
	#data bank16.loc_8c16BF78
loc_8C1284C8:
	#data bank18.loc_8c18B7A8
loc_8C1284CC:
	#data bank17.loc_8c177DC2
loc_8C1284D0:
	#data bank16.loc_8c16BF7c

;==============================================
;unused
loc_8c1284d4:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r4,@r15
	bsr loc_8c1282d8
	mov 0x00,r4
	mov r0,r4
	tst r4,r4
	bf loc_8c1284ee
	mov.l @(0xE0,PC),r1
	mov.l @r15,r3
	mov.l @r1,r2
	mov.l @r2,r0
	mov.l r0,@r3

loc_8c1284ee:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov r4,r0

;==============================================
;unused
loc_8c1284f6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	bsr loc_8c1282d8
	mov r4,r14
	mov r0,r12
	tst r12,r12
	bf loc_8c12853a
	mov.l @(0xB8,PC),r3
	tst r14,r14
	bf.s loc_8c128520
	mov.l @r3,r13
	mov.l @r13,r0
	tst 0x01,r0
	bt loc_8c12851e
	bra loc_8c128520
	mov 0x02,r14

loc_8c12851e:
	mov 0x01,r14

loc_8c128520:
	mov r14,r0
	cmp/eq 0x01,r0
	bf loc_8c12852e
	mov r13,r5
	mov 0x1C,r6
	bra loc_8c128534
	add 0x08,r5

loc_8c12852e:
	mov.w @(0x90,PC),r5
	mov 0x1C,r6
	add r13,r5

loc_8c128534:
	mov.l @(0x94,PC),r3
	jsr @r3
	mov.l @r15,r4

loc_8c12853a:
	mov r12,r0
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
;unused
loc_8c128548:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	bsr loc_8c1282d8
	mov r4,r14
	mov r0,r12
	tst r12,r12
	bf loc_8c12858c
	mov.l @(0x68,PC),r3
	tst r14,r14
	bf.s loc_8c128572
	mov.l @r3,r13
	mov.l @r13,r0
	tst 0x01,r0
	bt loc_8c128570
	bra loc_8c128572
	mov 0x02,r14

loc_8c128570:
	mov 0x01,r14

loc_8c128572:
	mov r14,r0
	cmp/eq 0x01,r0
	bf loc_8c128580
	mov r13,r5
	mov 0x10,r6
	bra loc_8c128586
	add 0x24,r5

loc_8c128580:
	mov.w @(0x40,PC),r5
	mov 0x10,r6
	add r13,r5

loc_8c128586:
	mov.l @(0x44,PC),r3
	jsr @r3
	mov.l @r15,r4

loc_8c12858c:
	mov r12,r0
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
;unused?
loc_8c12859a:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	bsr loc_8c1282d8
	mov r4,r14
	mov r0,r12
	tst r12,r12
	bf loc_8c1285ec
	mov.l @(0x14,PC),r3
	tst r14,r14
	bf.s loc_8c1285d2
	mov.l @r3,r13
	mov.l @r13,r0
	tst 0x01,r0
	bt loc_8c1285d0
	bra loc_8c1285d2
	mov 0x02,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1285c2:
	#data 0x016C
loc_8c1285c4:
	#data 0x0188
	#align4

loc_8C1285C8:
	#data bank16.loc_8c16BF7c
loc_8C1285CC:
	#data loc_8c1297D4

;==============================================
loc_8c1285d0:
	mov 0x01,r14

loc_8c1285d2:
	mov r14,r0
	cmp/eq 0x01,r0
	bf loc_8c1285e0
	mov r13,r5
	mov 0x78,r6
	bra loc_8c1285e6
	add 0x34,r5

loc_8c1285e0:
	mov.w @(0xDA,PC),r5
	mov 0x78,r6
	add r13,r5

loc_8c1285e6:
	mov.l @(0xE4,PC),r3
	jsr @r3
	mov.l @r15,r4

loc_8c1285ec:
	mov r12,r0
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
;unused
loc_8c1285fa:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r5,@r15
	mov.l r6,@(0x4,r15)
	bsr loc_8c1282d8
	mov r4,r14
	mov r0,r10
	tst r10,r10
	bf loc_8c12865c
	mov.l @(0xB8,PC),r11
	tst r14,r14
	bf.s loc_8c12862a
	mov.l @r11,r13
	mov.l @r13,r0
	tst 0x01,r0
	bt loc_8c128628
	bra loc_8c12862a
	mov 0x02,r14

loc_8c128628:
	mov 0x01,r14

loc_8c12862a:
	mov r14,r0
	mov.l @(0x9C,PC),r12
	cmp/eq 0x01,r0
	bf loc_8c128646
	mov.w @(0x8A,PC),r5
	mov 0x04,r6
	add r13,r5
	jsr @r12
	mov.l @r15,r4
	mov.w @(0x82,PC),r3
	mov.l @r11,r5
	add r3,r5
	bra loc_8c128658
	mov 0x04,r6

loc_8c128646:
	mov.w @(0x7A,PC),r5
	mov 0x04,r6
	add r13,r5
	jsr @r12
	mov.l @r15,r4
	mov.w @(0x72,PC),r3
	mov 0x04,r6
	mov.l @r11,r5
	add r3,r5

loc_8c128658:
	jsr @r12
	mov.l @(0x4,r15),r4

loc_8c12865c:
	mov r10,r0
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
;unused?
loc_8c12866e:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	bsr loc_8c1282d8
	mov r4,r14
	mov r0,r12
	tst r12,r12
	bf loc_8c1286b0
	mov.l @(0x48,PC),r3
	tst r14,r14
	bf.s loc_8c128698
	mov.l @r3,r13
	mov.l @r13,r0
	tst 0x01,r0
	bt loc_8c128696
	bra loc_8c128698
	mov 0x02,r14

loc_8c128696:
	mov 0x01,r14

loc_8c128698:
	mov r14,r0
	cmp/eq 0x01,r0
	bf loc_8c1286a4
	mov.w @(0x26,PC),r5
	bra loc_8c1286a8
	mov 0x30,r6

loc_8c1286a4:
	mov.w @(0x22,PC),r5
	mov 0x30,r6

loc_8c1286a8:
	mov.l @(0x28,PC),r3
	add r13,r5
	jsr @r3
	mov.l @r15,r4

loc_8c1286b0:
	mov r12,r0
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1286be:
	#data 0x0198
loc_8c1286c0:
	#data 0x00Ac
loc_8c1286c2:
	#data 0x00B0
loc_8c1286c4:
	#data 0x0210
loc_8c1286c6:
	#data 0x0214
loc_8c1286c8:
	#data 0x00B4
loc_8c1286ca:
	#data 0x0218
	#align4

loc_8C1286CC:
	#data loc_8c129668
loc_8C1286D0:
	#data bank16.loc_8c16BF7c
loc_8C1286D4:
	#data loc_8c1297D4

;==============================================
loc_8c1286d8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	bsr loc_8c1282d8
	mov r4,r14
	mov r0,r12
	tst r12,r12
	bf loc_8c12871a
	mov.l @(0xE4,PC),r3
	tst r14,r14
	bf.s loc_8c128702
	mov.l @r3,r13
	mov.l @r13,r0
	tst 0x01,r0
	bt loc_8c128700
	bra loc_8c128702
	mov 0x02,r14

loc_8c128700:
	mov 0x01,r14

loc_8c128702:
	mov r14,r0
	cmp/eq 0x01,r0
	bf loc_8c12870e
	mov.w @(0xBC,PC),r5
	bra loc_8c128712
	mov 0x20,r6

loc_8c12870e:
	mov.w @(0xB8,PC),r5
	mov 0x20,r6

loc_8c128712:
	mov.l @(0xC4,PC),r3
	add r13,r5
	jsr @r3
	mov.l @r15,r4

loc_8c12871a:
	mov r12,r0
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c128728:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	bsr loc_8c1282d8
	mov r4,r14
	mov r0,r12
	tst r12,r12
	bf loc_8c12876a
	mov.l @(0x94,PC),r3
	tst r14,r14
	bf.s loc_8c128752
	mov.l @r3,r13
	mov.l @r13,r0
	tst 0x01,r0
	bt loc_8c128750
	bra loc_8c128752
	mov 0x02,r14

loc_8c128750:
	mov 0x01,r14

loc_8c128752:
	mov r14,r0
	cmp/eq 0x01,r0
	bf loc_8c12875e
	mov.w @(0x70,PC),r5
	bra loc_8c128762
	mov 0x20,r6

loc_8c12875e:
	mov.w @(0x6C,PC),r5
	mov 0x20,r6

loc_8c128762:
	mov.l @(0x74,PC),r3
	add r13,r5
	jsr @r3
	mov.l @r15,r4

loc_8c12876a:
	mov r12,r0
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c128778:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	bsr loc_8c1282d8
	mov r4,r14
	mov r0,r12
	tst r12,r12
	bf loc_8c1287ba
	mov.l @(0x44,PC),r3
	tst r14,r14
	bf.s loc_8c1287a2
	mov.l @r3,r13
	mov.l @r13,r0
	tst 0x01,r0
	bt loc_8c1287a0
	bra loc_8c1287a2
	mov 0x02,r14

loc_8c1287a0:
	mov 0x01,r14

loc_8c1287a2:
	mov r14,r0
	cmp/eq 0x01,r0
	bf loc_8c1287ae
	mov.w @(0x24,PC),r5
	bra loc_8c1287b2
	mov 0x10,r6

loc_8c1287ae:
	mov.w @(0x20,PC),r5
	mov 0x10,r6

loc_8c1287b2:
	mov.l @(0x24,PC),r3
	add r13,r5
	jsr @r3
	mov.l @r15,r4

loc_8c1287ba:
	mov r12,r0
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1287c8:
	#data 0x00E4
loc_8c1287ca:
	#data 0x0248
loc_8c1287cc:
	#data 0x0104
loc_8c1287ce:
	#data 0x0268
loc_8c1287d0:
	#data 0x0124
loc_8c1287d2:
	#data 0x0288
	#align4

loc_8C1287D4:
	#data bank16.loc_8c16BF7c
loc_8C1287D8:
	#data loc_8c1297D4

;==============================================
;unused?
loc_8C1287Dc:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	bsr loc_8c1282d8
	mov r4,r14
	mov r0,r12
	tst r12,r12
	bf loc_8c12881e
	mov.l @(0xE0,PC),r3
	tst r14,r14
	bf.s loc_8c128806
	mov.l @r3,r13
	mov.l @r13,r0
	tst 0x01,r0
	bt loc_8c128804
	bra loc_8c128806
	mov 0x02,r14

loc_8c128804:
	mov 0x01,r14

loc_8c128806:
	mov r14,r0
	cmp/eq 0x01,r0
	bf loc_8c128812
	mov.w @(0xB6,PC),r5
	bra loc_8c128816
	mov 0x10,r6

loc_8c128812:
	mov.w @(0xB2,PC),r5
	mov 0x10,r6

loc_8c128816:
	mov.l @(0xC0,PC),r3
	add r13,r5
	jsr @r3
	mov.l @r15,r4

loc_8c12881e:
	mov r12,r0
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
;unused?
loc_8c12882c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	bsr loc_8c1282d8
	mov r4,r14
	mov r0,r12
	tst r12,r12
	bf loc_8c12886e
	mov.l @(0x90,PC),r3
	tst r14,r14
	bf.s loc_8c128856
	mov.l @r3,r13
	mov.l @r13,r0
	tst 0x01,r0
	bt loc_8c128854
	bra loc_8c128856
	mov 0x02,r14

loc_8c128854:
	mov 0x01,r14

loc_8c128856:
	mov r14,r0
	cmp/eq 0x01,r0
	bf loc_8c128862
	mov.w @(0x6A,PC),r5
	bra loc_8c128866
	mov 0x20,r6

loc_8c128862:
	mov.w @(0x66,PC),r5
	mov 0x20,r6

loc_8c128866:
	mov.l @(0x70,PC),r3
	add r13,r5
	jsr @r3
	mov.l @r15,r4

loc_8c12886e:
	mov r12,r0
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
;unused?
loc_8c12887c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	bsr loc_8c1282d8
	mov r4,r14
	mov r0,r5
	tst r5,r5
	bf loc_8c1288bc
	mov.l @(0x44,PC),r3
	tst r14,r14
	bf.s loc_8c1288a2
	mov.l @r3,r4
	mov.l @r4,r0
	tst 0x01,r0
	bt loc_8c1288a0
	bra loc_8c1288a2
	mov 0x02,r14

loc_8C1288a0:
	mov 0x01,r14

loc_8C1288a2:
	mov r14,r0
	cmp/eq 0x01,r0
	bf loc_8c1288b4
	mov.w @(0x22,PC),r0
	mov.l @r15,r3
	mov.w @(r0,r4),r2
	mov.w r2,@r3
	bra loc_8c1288bc
	nop 

loc_8C1288b4:
	mov.w @(0x18,PC),r0
	mov.l @r15,r1
	mov.w @(r0,r4),r3
	mov.w r3,@r1

loc_8C1288bc:
	mov r5,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C1288c6:
	#data 0x0134
loc_8C1288c8:
	#data 0x0298
loc_8C1288ca:
	#data 0x0144
loc_8C1288cc:
	#data 0x02A8
loc_8C1288ce:
	#data 0x0164
loc_8C1288d0:
	#data 0x02C8
	#align4

loc_8C1288D4:
	#data bank16.loc_8c16BF7c
loc_8C1288D8:
	#data loc_8c1297D4

;==============================================
;unused
loc_8c1288dc:
	sts.l pr,@-r15
	mov.l @(0xB0,PC),r4
	bsr loc_8c128f00
	nop 
	mov.l @(0xA8,PC),r3
	mov 0x00,r2
	mov 0x0C,r0
	mov.b r2,@r3
	mov r3,r2
	mov.l @(0xA4,PC),r3
	sub r0,r15
	jsr @r3
	mov r15,r1
	bsr loc_8c128cd0
	nop 
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
;unused?
loc_8c128902:
	sts.l pr,@-r15
	mov.l @(0x88,PC),r4
	bsr loc_8c128f00
	nop 
	mov.l @(0x84,PC),r3
	mov 0x01,r2
	mov 0x0C,r0
	mov.b r2,@r3
	mov r3,r2
	mov.l @(0x7C,PC),r3
	sub r0,r15
	jsr @r3
	mov r15,r1
	bsr loc_8c128cd0
	nop 
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
;unused?
loc_8c128928:
	mov.l @(0x70,PC),r1
	mov.l @(0x6C,PC),r2
	mov.l @r1,r0
	mov.l @r2,r3
	rts 
	sub r3,r0

;==============================================
;unused?
loc_8c128934:
	mov.l @(0x60,PC),r3
	rts 
	mov.l @r3,r0

;==============================================
loc_8c12893a:
	mov.l @(0x68,PC),r1
	mov.l @(0x60,PC),r2
	mov.l @r1,r0
	mov.l @r2,r3
	rts 
	sub r3,r0

loc_8c128946:
	mov.l @(0x58,PC),r3
	rts 
	mov.l @r3,r0

loc_8c12894c:
	add 0xFC,r15
	stc sr,r0
	mov.w @(0x3A,PC),r3
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.w r0,@r15
	stc sr,r0
	and r3,r0
	or 0xF0,r0
	ldc r0,sr
	mov.l @(0x40,PC),r3
	mov.l @(0x48,PC),r0
	mov.l @(0x44,PC),r1
	mov.l @(0x3C,PC),r2
	mov.l r4,@r2
	mov.l r6,@r3
	mov 0x00,r3
	mov.l r5,@r1
	mov.w @(0x18,PC),r1
	mov.l @(0x24,PC),r2
	mov.l r7,@r2
	mov.b r3,@r0
	mov.w @r15,r0
	stc sr,r3
	and 0x0F,r0
	shll2 r0
	and r1,r3
	shll2 r0
	or r3,r0
	ldc r0,sr
	rts 
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c12898e:
	#data 0xFF0F
	#align4

loc_8c128990:
	#data 0x8C2DB004
loc_8C128994:
	#data loc_8c129620
loc_8C128998:
	#data 0x8C2DF104
loc_8C12899c:
	#data 0x8C2DF0E4
loc_8C1289a0:
	#data 0x8C2DF0F4
loc_8C1289a4:
	#data 0x8C2DF0E0
loc_8C1289a8:
	#data 0x8C2DF0E8
loc_8C1289ac:
	#data 0x8C2DF0F8
loc_8C1289b0:
	#data 0x8C2DB02c

;==============================================
loc_8C1289b4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x10C,PC),r11
	mov.b @r11,r0
	cmp/eq 0x01,r0
	bt loc_8c128ab8
	stc sr,r0
	mov.w @(0xFC,PC),r3
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.w r0,@r15
	stc sr,r0
	and r3,r0
	or 0xF0,r0
	ldc r0,sr
	mov.l @(0xF4,PC),r1
	mov 0x00,r14
	mov.l @(0xF8,PC),r3
	mov.l @r1,r2
	mov.l @(0xF0,PC),r0
	mov.l @(0x118,PC),r5
	mov.l r2,@r0
	mov.l r2,@r3
	mov.l @(0xF0,PC),r3
	mov.l @(0xF0,PC),r2
	mov.l @r3,r1
	mov.l @(0xF4,PC),r3
	mov.l r1,@r2
	mov.l @(0xEC,PC),r1
	mov.l @(0xF4,PC),r2
	mov.l @r1,r0
	mov.l @(0xF8,PC),r1
	mov.l r0,@r3
	mov.l r0,@r2
	mov r14,r0
	mov.l @(0xEC,PC),r2
	mov.l @(0xF0,PC),r10
	mov.l @r2,r3
	mov.l r3,@r1
	mov.l @(0xF0,PC),r3
	mov.l r14,@r10
	mov.l r14,@r3
	mov.b r14,@r5
	mov.b r0,@(0x1,r5)
	mov.w r0,@(0x2,r5)
	mov.l @(0xEC,PC),r5
	mov.b r0,@r5
	mov.l @(0xEC,PC),r12
	mov 0x01,r2
	mov.l @(0xEC,PC),r13
	mov.b r0,@(0x1,r5)
	mov.l r0,@r12
	mov.l r0,@(0x4,r12)
	mov.l r0,@(0x8,r12)
	mov.l r0,@(0xC,r12)
	mov.l r0,@(0x10,r12)
	mov 0x02,r0
	mov.b r2,@r13
	mov.b r0,@(0x1,r13)
	mov 0x03,r0
	mov.b r0,@(0x2,r13)
	mov r14,r0
	mov.b r0,@(0x3,r13)
	mov 0x33,r0
	mov.l @(0xD0,PC),r2
	mov.b r0,@(0x6,r13)
	mov r14,r0
	mov.l @(0xD0,PC),r1
	mov.b r0,@(0x7,r13)
	mov.b r0,@(0x8,r13)
	mov.b r0,@(0x9,r13)
	mov.b r0,@(0xA,r13)
	mov.b r0,@(0xB,r13)
	mov.l r2,@(0x14,r12)
	jsr @r1
	mov.l r4,@r12
	mov.l r0,@(0x18,r12)
	mov.l @(0xC4,PC),r3
	mov.l @(0xBC,PC),r12
	jsr @r3
	nop 
	mov r0,r2
	mov.l @(0xA4,PC),r4
	mov.l r0,@r12
	mov.l @r2,r3
	jsr @r3
	nop 
	tst r0,r0
	bt loc_8c128a78
	mov.b r14,@r11
	bra loc_8c128aa2
	mov 0xFF,r4

loc_8c128a78:
	mov.b @(0x3,r10),r0
	mov.l @(0x80,PC),r4
	or 0x01,r0
	mov.b r0,@(0x3,r10)
	mov.l @r12,r2
	mov.l @(0x8,r2),r3
	jsr @r3
	nop 
	mov 0x01,r2
	mov.l @(0x98,PC),r3
	mov 0x0C,r0
	mov.l r14,@r10
	mov.b r2,@r11
	sub r0,r15
	mov r13,r2
	jsr @r3
	mov r15,r1
	bsr loc_8c128cd0
	nop 
	add 0x0C,r15
	mov 0x01,r4

loc_8c128aa2:
	mov.w @r15,r0
	stc sr,r3
	mov.w @(0x22,PC),r2
	and 0x0F,r0
	shll2 r0
	and r2,r3
	shll2 r0
	or r3,r0
	ldc r0,sr
	bra loc_8c128aba
	nop 

loc_8c128ab8:
	mov 0xFF,r4

loc_8c128aba:
	mov r4,r0
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c128acc:
	#data 0xFF0f
	#align4

loc_8c128ad0:
	#data 0x8C2DB02c
loc_8c128ad4:
	#data 0x8C2DF0F8
loc_8c128ad8:
	#data 0x8C2DF100
loc_8c128adc:
	#data 0x8C2DF0Fc
loc_8c128ae0:
	#data 0x8C2DF0E4
loc_8c128ae4:
	#data 0x8C2DF104
loc_8c128ae8:
	#data 0x8C2DF0E8
loc_8c128aec:
	#data 0x8C2DF0F0
loc_8c128af0:
	#data 0x8C2DF0Ec
loc_8c128af4:
	#data 0x8C2DF0E0
loc_8c128af8:
	#data 0x8C2DF0F4
loc_8c128afc:
	#data 0x8C2DF110
loc_8c128b00:
	#data 0x8C2DF114
loc_8c128b04:
	#data 0x8C2DF108
loc_8c128b08:
	#data 0x8C2DF10c
loc_8c128b0c:
	#data 0x8C2DB010
loc_8c128b10:
	#data 0x8C2DB004
loc_8C128B14:
	#data bank13.loc_8c13f6Dc
loc_8C128B18:
	#data loc_8c12E584
loc_8c128b1c:
	#data 0x8C2DB000
loc_8C128B20:
	#data bank18.loc_8c18BD54
loc_8C128B24:
	#data loc_8c129620

;==========================================
loc_8C128B28:
	mov.l r14,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0xE8,PC),r2
	mov.l r6,@r15
	mov.b @r2,r3
	tst r3,r3
	bt.s loc_8c128bd4
	mov r6,r14
	stc sr,r0
	mov.w @(0xD8,PC),r3
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.w r0,@(0x4,r15)
	stc sr,r0
	and r3,r0
	or 0xF0,r0
	ldc r0,sr
	mov.l @(0xD4,PC),r6
	mov.l @(0xD8,PC),r4
	mov.l @(0xC8,PC),r12
	mov.l @(0xCC,PC),r0
	bra loc_8c128b80
	nop 

loc_8C128b5c:
	mov.l @r4,r2
	add 0x01,r2
	mov.l r2,@r4
	add 0xFF,r2
	mov.b @r2,r1
	mov.b r1,@r5
	add 0x01,r5
	mov.l @r6,r3
	add 0x01,r3
	mov.l r3,@r6
	mov.l @r12,r7
	mov.l @r0,r2
	mov.l @r4,r3
	add r7,r2
	cmp/hs r2,r3
	bf.s loc_8c128b80
	add 0xFF,r14
	mov.l r7,@r4

loc_8C128b80:
	mov.l @r0,r2
	mov 0x00,r1
	mov.l @r6,r3
	sub r3,r2
	cmp/hi r1,r2
	bf loc_8c128b90
	cmp/pl r14
	bt loc_8c128b5c

loc_8C128b90:
	mov.l @(0x9C,PC),r0
	mov.b @r0,r0
	tst 0x40,r0
	movt r0
	add 0xFF,r0
	neg r0,r0
	cmp/eq 0x01,r0
	bf loc_8c128bd0
	mov.l @(0x90,PC),r2
	mov.l @(0x94,PC),r1
	mov.b @r2,r0
	mov.l @(0x94,PC),r4
	or 0x40,r0
	mov.b r0,@r2
	mov.l @r1,r3
	mov.l @(0x8,r3),r0
	jsr @r0
	nop 
	mov.l @(0x84,PC),r2
	mov 0x00,r3
	mov.l r3,@r2
	mov.w @(0x4,r15),r0
	stc sr,r3
	mov.w @(0x58,PC),r2
	and 0x0F,r0
	shll2 r0
	and r2,r3
	shll2 r0
	or r3,r0
	ldc r0,sr
	bra loc_8c128bd8
	nop 

loc_8C128bd0:
	bra loc_8c128bd0
	nop 

loc_8C128bd4:
	bra loc_8c128bdc
	mov 0x00,r0

loc_8C128bd8:
	mov.l @r15,r0
	sub r14,r0

loc_8C128bdc:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	rts 
	mov.l @r15+,r14

;==============================================
loc_8c128be6:
	mov.l r14,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x2C,PC),r2
	mov.l r6,@r15
	mov.b @r2,r3
	tst r3,r3
	bt.s loc_8c128cbe
	mov r6,r14
	stc sr,r0
	mov.w @(0x1A,PC),r3
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.w r0,@(0x4,r15)
	stc sr,r0
	and r3,r0
	or 0xF0,r0
	ldc r0,sr
	mov.l @(0x38,PC),r6
	mov.l @(0x38,PC),r4
	mov.l @(0x2C,PC),r12
	mov.l @(0x2C,PC),r0
	bra loc_8c128c70
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c128c1a:
	#data 0xFF0F
	#align4

loc_8c128c1c:
#data 0x8C2DB02c

loc_8c128c20:
	#data 0x8C2DF0F8
loc_8c128c24:
	#data 0x8C2DF0E4
loc_8c128c28:
	#data 0x8C2DF104
loc_8c128c2c:
	#data 0x8C2DF0Fc
loc_8c128c30:
	#data 0x8C2DF117
loc_8c128c34:
	#data 0x8C2DF113
loc_8c128c38:
	#data 0x8C2DB000
loc_8c128c3c:
	#data 0x8C2DF110
loc_8c128c40:
	#data 0x8C2DF0E0
loc_8c128c44:
	#data 0x8C2DF0E8
loc_8c128c48:
	#data 0x8C2DF0F4
loc_8c128c4c:
	#data 0x8C2DF0F0

;==============================================
;unused?
loc_8c128c50:
	mov.l @r4,r3
	add 0x01,r3
	mov.l r3,@r4
	mov.b @r5+,r2
	mov.b r2,@-r3
	mov.l @r6,r3
	add 0xFF,r3
	mov.l r3,@r6
	mov.l @r12,r2
	mov.l @r0,r7
	mov.l @r4,r3
	add r7,r2
	cmp/hs r2,r3
	bf.s loc_8c128c70
	add 0xFF,r14
	mov.l r7,@r4

loc_8c128c70:
	mov.l @r6,r3
	cmp/pl r3
	bf loc_8c128c7a
	cmp/pl r14

loc_8c128c78:
	bt loc_8c128c50

loc_8c128c7a:
	mov.l @(0x114,PC),r0
	mov.b @r0,r0
	tst 0x80,r0
	movt r0
	add 0xFF,r0
	neg r0,r0
	cmp/eq 0x01,r0
	bf loc_8c128cba
	mov.l @(0x108,PC),r2
	mov.l @(0x108,PC),r1
	mov.b @r2,r0
	mov.l @(0x108,PC),r4
	or 0x80,r0
	mov.b r0,@r2
	mov.l @r1,r3
	mov.l @(0x8,r3),r0
	jsr @r0
	nop 
	mov.l @(0xFC,PC),r2
	mov 0x00,r3
	mov.l r3,@r2
	mov.w @(0x4,r15),r0
	stc sr,r3
	mov.w @(0xE0,PC),r2
	and 0x0F,r0
	shll2 r0
	and r2,r3
	shll2 r0
	or r3,r0
	ldc r0,sr
	bra loc_8c128cc2
	nop 

loc_8c128cba:
	bra loc_8c128cba
	nop 

loc_8c128cbe:
	bra loc_8c128cc6
	mov 0x00,r0

loc_8c128cc2:
	mov.l @r15,r0
	sub r14,r0

loc_8c128cc6:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	rts 
	mov.l @r15+,r14

;==============================================
;unused?
loc_8c128cd0:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xC8,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c128da8
	stc sr,r0
	mov.w @(0xAA,PC),r3
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.w r0,@r15
	stc sr,r0
	and r3,r0
	or 0xF0,r0
	ldc r0,sr
	mov.l @(0xB0,PC),r4
	mov r15,r5
	add 0x08,r5
	mov.b @r4,r0
	mov.b @r5,r1
	and 0xFE,r0
	or r1,r0
	mov.b r0,@r4
	mov.b @r4,r0
	and 0xFD,r0
	mov r0,r3
	mov.b @(0x1,r5),r0
	or r3,r0
	mov.b r0,@r4
	mov 0x01,r0
	mov.b @(r0,r4),r0
	and 0xFC,r0
	mov r0,r3
	mov.b @(0x2,r5),r0
	or r3,r0
	mov.b r0,@(0x1,r4)
	mov 0x01,r0
	mov.b @(r0,r4),r0
	and 0xFB,r0
	mov r0,r3
	mov.b @(0x4,r5),r0
	or r3,r0
	mov.b r0,@(0x1,r4)
	mov 0x01,r0
	mov.b @(r0,r4),r0
	and 0xC7,r0
	mov r0,r3
	mov.b @(0x3,r5),r0
	or r3,r0
	mov.b r0,@(0x1,r4)
	mov 0x01,r0
	mov.b @(r0,r4),r0
	and 0xBF,r0
	mov r0,r3
	mov.b @(0x5,r5),r0
	or r3,r0
	mov.b r0,@(0x1,r4)
	mov.b @(0x6,r5),r0
	mov.w r0,@(0x2,r4)
	mov.l @(0x44,PC),r0
	mov.b @r0,r0
	tst 0x20,r0
	movt r0
	add 0xFF,r0
	neg r0,r0
	cmp/eq 0x01,r0
	bf loc_8c128d88
	mov.l @(0x38,PC),r1
	mov.l @(0x40,PC),r4
	mov.b @r1,r0
	or 0x20,r0
	mov.b r0,@r1
	mov.l @(0x34,PC),r0
	mov.l @r0,r3
	mov.l @(0x8,r3),r2
	jsr @r2
	nop 
	mov.l @(0x2C,PC),r2
	mov 0x00,r3
	mov.l r3,@r2
	mov.w @r15,r0
	stc sr,r3
	mov.w @(0x12,PC),r2
	and 0x0F,r0
	shll2 r0
	and r2,r3
	shll2 r0
	or r3,r0
	ldc r0,sr
	bra loc_8c128da8
	nop 

loc_8c128d88:
	bra loc_8c128d88
	nop 


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c128d8c:
	#data 0xFF0f
	#align4

loc_8c128d90:
	#data 0x8C2DF117
loc_8c128d94:
	#data 0x8C2DF113
loc_8c128d98:
	#data 0x8C2DB000
loc_8c128d9c:
	#data 0x8C2DF110
loc_8c128da0:
	#data 0x8C2DB02c
loc_8c128da4:
	#data 0x8C2DF108

;==============================================
;unused?
loc_8c128da8:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
;unused?
loc_8c128db0:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x12C,PC),r0
	mov.b @r0,r1
	tst r1,r1
	bt loc_8c128e6c
	stc sr,r0
	mov.w @(0x120,PC),r3
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.w r0,@r15
	stc sr,r0
	and r3,r0
	or 0xF0,r0
	ldc r0,sr
	mov.l @(0x114,PC),r4
	mov r15,r5
	add 0x08,r5
	mov.b @r4,r0
	mov.b @r5,r2
	and 0xFE,r0
	or r2,r0
	mov.b r0,@r4
	mov.b @r4,r0
	and 0xFD,r0
	mov r0,r3
	mov.b @(0x1,r5),r0
	or r3,r0
	mov.b r0,@r4
	mov 0x01,r0
	mov.b @(r0,r4),r0
	and 0xFC,r0
	mov r0,r3
	mov.b @(0x2,r5),r0
	or r3,r0
	mov.b r0,@(0x1,r4)
	mov 0x01,r0
	mov.b @(r0,r4),r0
	and 0xFB,r0
	mov r0,r3
	mov.b @(0x4,r5),r0
	or r3,r0
	mov.b r0,@(0x1,r4)
	mov 0x01,r0
	mov.b @(r0,r4),r0
	and 0xC7,r0
	mov r0,r3
	mov.b @(0x3,r5),r0
	or r3,r0
	mov.b r0,@(0x1,r4)
	mov 0x01,r0
	mov.b @(r0,r4),r0
	and 0xBF,r0
	mov r0,r3
	mov.b @(0x5,r5),r0
	or r3,r0
	mov.b r0,@(0x1,r4)
	mov.b @(0x6,r5),r0
	mov.w r0,@(0x2,r4)
	mov.l @(0xC0,PC),r0
	mov.b @r0,r0
	tst 0x20,r0
	movt r0
	add 0xFF,r0
	neg r0,r0
	cmp/eq 0x01,r0
	bf loc_8c128e68
	mov.l @(0xB4,PC),r2
	mov.l @(0xB8,PC),r1
	mov.b @r2,r0
	mov.l @(0xB8,PC),r4
	or 0x20,r0
	mov.b r0,@r2
	mov.l @r1,r3
	mov.l @(0x8,r3),r0
	jsr @r0
	nop 
	mov.l @(0xA8,PC),r2
	mov 0x00,r3
	mov.l r3,@r2
	mov.w @r15,r0
	stc sr,r3
	mov.w @(0x88,PC),r2
	and 0x0F,r0
	shll2 r0
	and r2,r3
	shll2 r0
	or r3,r0
	ldc r0,sr
	bra loc_8c128e6c
	nop 

loc_8c128e68:
	bra loc_8c128e68
	nop 

loc_8c128e6c:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8c128e74:
	mov.l @(0x70,PC),r4
	mov 0xF9,r3
	mov.b @r4,r0
	and 0x01,r0
	mov.b r0,@r5
	mov.b @r4,r0
	and 0x02,r0
	mov.b r0,@(0x1,r5)
	mov 0x01,r0
	mov.b @(r0,r4),r0
	and 0x03,r0
	mov.b r0,@(0x2,r5)
	mov 0x01,r0
	mov.b @(r0,r4),r0
	and 0x38,r0
	mov.b r0,@(0x3,r5)
	mov 0x01,r0
	mov.b @(r0,r4),r0
	and 0x04,r0
	mov.b r0,@(0x4,r5)
	mov 0x01,r0
	mov.b @(r0,r4),r0
	and 0x40,r0
	mov.b r0,@(0x5,r5)
	mov.b @(0x2,r4),r0
	mov.l @(0x54,PC),r4
	mov.b r0,@(0x6,r5)
	mov.b @r4,r0
	extu.b r0,r0
	and 0x80,r0
	shad r3,r0
	mov.b r0,@(0xA,r5)
	mov.b @r4,r0
	mov 0xFA,r3
	extu.b r0,r0
	and 0x40,r0
	shad r3,r0
	mov.b r0,@(0x9,r5)
	mov 0xFB,r3
	mov.b @r4,r0
	extu.b r0,r0
	and 0x20,r0
	shad r3,r0
	mov.b r0,@(0x8,r5)

loc_8c128ecc:
	mov 0xFC,r3
	mov.b @r4,r0
	extu.b r0,r0
	and 0x10,r0
	shad r3,r0
	mov.b r0,@(0x7,r5)
	mov 0x01,r0
	mov.b @(r0,r4),r0
	and 0x01,r0
	rts 
	mov.b r0,@(0xB,r5)


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c128ee2:
	#data 0xFF0F
	#align4

loc_8c128ee4:
	#data 0x8C2DB02c
loc_8c128ee8:
	#data 0x8C2DF108
loc_8c128eec:
	#data 0x8C2DF117
loc_8c128ef0:
	#data 0x8C2DF113
loc_8c128ef4:
	#data 0x8C2DB000
loc_8c128ef8:
	#data 0x8C2DF110
loc_8c128efc:
	#data 0x8C2DF10c

;==============================================
;unused?
loc_8c128f00:
	mov.l @(0xEC,PC),r5
	mov 0xF9,r3
	mov.b @r5,r0
	and 0x01,r0
	mov.b r0,@r4
	mov.b @r5,r0
	and 0x02,r0
	mov.b r0,@(0x1,r4)
	mov 0x01,r0
	mov.b @(r0,r5),r0
	and 0x03,r0
	mov.b r0,@(0x2,r4)
	mov 0x01,r0
	mov.b @(r0,r5),r0
	and 0x38,r0
	mov.b r0,@(0x3,r4)
	mov 0x01,r0
	mov.b @(r0,r5),r0
	and 0x04,r0
	mov.b r0,@(0x4,r4)
	mov 0x01,r0
	mov.b @(r0,r5),r0
	and 0x40,r0
	mov.b r0,@(0x5,r4)
	mov.b @(0x2,r5),r0
	mov.l @(0xC0,PC),r5
	mov.b r0,@(0x6,r4)
	mov.b @r5,r0
	extu.b r0,r0
	and 0x80,r0
	shad r3,r0
	mov.b r0,@(0xA,r4)
	mov.b @r5,r0
	mov 0xFA,r3
	extu.b r0,r0
	and 0x40,r0
	shad r3,r0
	mov.b r0,@(0x9,r4)
	mov 0xFB,r3
	mov.b @r5,r0
	extu.b r0,r0
	and 0x20,r0
	shad r3,r0
	mov.b r0,@(0x8,r4)
	mov 0xFC,r3
	mov.b @r5,r0
	extu.b r0,r0
	and 0x10,r0
	shad r3,r0
	mov.b r0,@(0x7,r4)
	mov 0x01,r0
	mov.b @(r0,r5),r0
	and 0x01,r0
	rts 
	mov.b r0,@(0xB,r4)

;==============================================
loc_8c128f6e:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x84,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_8c128fe6
	stc sr,r0
	mov.w @(0x6E,PC),r3
	shlr2 r0

loc_8c128f80:
	shlr2 r0
	and 0x0F,r0
	mov.w r0,@r15
	stc sr,r0
	and r3,r0
	or 0xF0,r0
	ldc r0,sr
	mov.l @(0x6C,PC),r0
	mov.l @(0x70,PC),r2
	mov.l @r0,r1
	mov.l @(0x78,PC),r0
	mov.l @(0x68,PC),r3
	mov.l r1,@r3
	mov.l r1,@r2
	mov.l @(0x68,PC),r2
	mov.l @(0x6C,PC),r1
	mov.l @r2,r3
	mov.l r3,@r1
	mov.b @r0,r0
	tst 0x04,r0
	movt r0
	add 0xFF,r0
	neg r0,r0
	cmp/eq 0x01,r0
	bf loc_8c128fe2
	mov.l @(0x60,PC),r2
	mov.l @(0x64,PC),r4
	mov.b @r2,r0
	or 0x04,r0
	mov.b r0,@r2
	mov.l @(0x58,PC),r0
	mov.l @r0,r3
	mov.l @(0x8,r3),r1
	jsr @r1
	nop 
	mov.l @(0x54,PC),r2
	mov 0x00,r3
	mov.l r3,@r2
	mov.w @r15,r0
	stc sr,r3
	mov.w @(0x1A,PC),r2
	and 0x0F,r0
	shll2 r0
	and r2,r3
	shll2 r0
	or r3,r0
	ldc r0,sr
	bra loc_8c128fe6
	nop 

loc_8c128fe2:
	bra loc_8c128fe2
	nop 

loc_8c128fe6:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c128fee:
	#data 0xFF0F
	#align4

loc_8c128ff0:
	#data 0x8C2DF108
loc_8c128ff4:
	#data 0x8C2DF10c
loc_8c128ff8:
	#data 0x8C2DB02c
loc_8c128ffc:
	#data 0x8C2DF0E8
loc_8c129000:
	#data 0x8C2DF0F0
loc_8c129004:
	#data 0x8C2DF0Ec
loc_8c129008:
	#data 0x8C2DF0E0
loc_8c12900c:
	#data 0x8C2DF0F4
loc_8c129010:
	#data 0x8C2DF117
loc_8c129014:
	#data 0x8C2DF113
loc_8c129018:
	#data 0x8C2DB000
loc_8c12901c:
	#data 0x8C2DF110

;==============================================
;unused?
loc_8c129020:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xD4,PC),r0
	mov.b @r0,r1
	tst r1,r1
	bt loc_8c129098
	stc sr,r0
	mov.w @(0xC8,PC),r3
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.w r0,@r15
	stc sr,r0
	and r3,r0
	or 0xF0,r0
	ldc r0,sr
	mov.l @(0xBC,PC),r1
	mov.l @(0xC0,PC),r0
	mov.l @r1,r2
	mov.l @(0xC0,PC),r3
	mov.l r2,@r0
	mov.l @(0xC8,PC),r0
	mov.l r2,@r3
	mov.l @(0xBC,PC),r3
	mov.l @(0xBC,PC),r2
	mov.l @r3,r1

loc_8c129054:
	mov.l r1,@r2
	mov.b @r0,r0
	tst 0x02,r0
	movt r0
	add 0xFF,r0
	neg r0,r0
	cmp/eq 0x01,r0
	bf loc_8c129094
	mov.l @(0xB0,PC),r1
	mov.l @(0xB8,PC),r4
	mov.b @r1,r0
	or 0x02,r0
	mov.b r0,@r1
	mov.l @(0xAC,PC),r0
	mov.l @r0,r3
	mov.l @(0x8,r3),r2
	jsr @r2
	nop 
	mov.l @(0xA4,PC),r2
	mov 0x00,r3
	mov.l r3,@r2
	mov.w @r15,r0
	stc sr,r3
	mov.w @(0x74,PC),r2
	and 0x0F,r0
	shll2 r0
	and r2,r3
	shll2 r0
	or r3,r0
	ldc r0,sr
	bra loc_8c129098
	nop 

loc_8c129094:
	bra loc_8c129094
	nop 

loc_8c129098:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8C1290A0:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x54,PC),r0
	mov.b @r0,r1
	tst r1,r1
	bt loc_8c1290ee
	stc sr,r0
	mov.w @(0x48,PC),r3
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov.w r0,@r15
	stc sr,r0
	and r3,r0
	or 0xF0,r0
	ldc r0,sr
	mov.l @(0x58,PC),r1
	mov 0x01,r2
	mov.l r2,@(0x4,r15)
	mov r15,r4
	mov.l @r1,r3
	mov.l @(0x4,r3),r2
	jsr @r2
	add 0x04,r4
	mov.l @(0x50,PC),r3
	jsr @r3
	nop 
	mov.l @(0x24,PC),r3
	mov 0x00,r2
	mov.w @(0x1C,PC),r1
	mov.b r2,@r3
	mov.w @r15,r0
	stc sr,r2
	and 0x0F,r0
	shll2 r0
	and r1,r2
	shll2 r0
	or r2,r0
	ldc r0,sr

loc_8C1290EE:
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_8C1290F6:
	rts
	nop
	
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c1290fa:
	#data 0xFF0f
	#align4

loc_8c1290fc:
	#data 0x8C2DB02c
loc_8C129100:
	#data 0x8C2DF0F8
loc_8C129104:
	#data 0x8C2DF100
loc_8C129108:
	#data 0x8C2DF0Fc
loc_8C12910c:
	#data 0x8C2DF0E4
loc_8C129110:
	#data 0x8C2DF104
loc_8C129114:
	#data 0x8C2DF117
loc_8C129118:
	#data 0x8C2DF113
loc_8C12911c:
	#data 0x8C2DB000
loc_8C129120:
	#data 0x8C2DF110
loc_8C129124:
	#data loc_8c12E5A0

;==============================================
loc_8C129128:
	tst r0,r0
	mov.l r2,@-r15
	bt loc_8C1291C6
	mov.l r3,@-r15
	mov 0x00,r2 ; r2 set to 0x00
	div0s r2,r1
	subc r3,r3
	subc r2,r1
	div0s r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	addc r2,r1
	mov r1,r0
	mov.l @r15+,r3
	rts
	mov.l @r15+,r2

;==============================================
loc_8C1291C6:
	mov.l @(loc_8C1291D4,pc),r1 ; r1 set to 0x8C2DF14c
	mov.l @(loc_8C1291D8,pc),r2 ; r2 set to 0x44e
	mov 0x00,r0 ; r0 set to 0x00
	mov.l r2,@r1 ; r1 ??
	rts
	mov.l @r15+,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4_nop
loc_8C1291D4:
	#data 0x8C2DF14c
loc_8C1291D8:
	#data 0x0000044e

;==============================================
loc_8C1291DC:
	tst r0,r0
	mov.l r2,@-r15
	bt loc_8C12926e
	mov 0x00,r2 ; r2 set to 0x00
	div0u
	rotcl r1
	div1 r0,r2 ; r2 ??? bc r0 is ???
	rotcl r1
	div1 r0,r2
	rotcl r1
	div1 r0,r2
	rotcl r1
	div1 r0,r2
	rotcl r1
	div1 r0,r2
	rotcl r1
	div1 r0,r2
	rotcl r1
	div1 r0,r2
	rotcl r1
	div1 r0,r2
	rotcl r1
	div1 r0,r2
	rotcl r1
	div1 r0,r2
	rotcl r1
	div1 r0,r2
	rotcl r1
	div1 r0,r2
	rotcl r1
	div1 r0,r2
	rotcl r1
	div1 r0,r2
	rotcl r1
	div1 r0,r2
	rotcl r1
	div1 r0,r2
	rotcl r1
	div1 r0,r2
	rotcl r1
	div1 r0,r2
	rotcl r1
	div1 r0,r2
	rotcl r1
	div1 r0,r2
	rotcl r1
	div1 r0,r2
	rotcl r1
	div1 r0,r2
	rotcl r1
	div1 r0,r2
	rotcl r1
	div1 r0,r2
	rotcl r1
	div1 r0,r2
	rotcl r1
	div1 r0,r2
	rotcl r1
	div1 r0,r2
	rotcl r1
	div1 r0,r2
	rotcl r1
	div1 r0,r2
	rotcl r1
	div1 r0,r2
	rotcl r1
	div1 r0,r2
	rotcl r1
	div1 r0,r2
	rotcl r1
	mov r1,r0
	rts
	mov.l @r15+,r2

loc_8C12926E:
	mov.l @(loc_8C12927C,pc),r2 ; r2 set to 0x8C2DF14c
	mov.l @(loc_8C129280,pc),r1 ; r1 set to 0x44e
	mov 0x00,r0 ; r0 set to 0x00
	mov.l r1,@r2 ; r2 ??
	rts
	mov.l @r15+,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4_nop
loc_8C12927C:
	#data 0x8C2DF14c
loc_8C129280:
	#data 0x0000044e

;==============================================
loc_8C129284:
	exts.w r0,r0
	tst r0,r0
	bt/s loc_8C1292C2
	mov.l r2,@-r15
	exts.w r1,r1
	mov 0x00,r2 ; r2 set to 0x00
	div0s r2,r1
	subc r2,r1
	shll16 r0
	div0s r0,r1
	div1 r0,r1
	div1 r0,r1
	div1 r0,r1
	div1 r0,r1
	div1 r0,r1
	div1 r0,r1
	div1 r0,r1
	div1 r0,r1
	div1 r0,r1
	div1 r0,r1
	div1 r0,r1
	div1 r0,r1
	div1 r0,r1
	div1 r0,r1
	div1 r0,r1
	div1 r0,r1
	exts.w r1,r0
	rotcl r0
	addc r2,r0
	rts
	mov.l @r15+,r2

;==============================================
loc_8C1292C2:
	mov.l @(loc_8C1292CC,pc),r2 ; r2 set to 0x8C2DF14c
	mov.l @(loc_8C1292D0,pc),r1 ; r1 set to 0x44e
	mov.l r1,@r2 ; r2 ??
	rts
	mov.l @r15+,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C1292CC:
	#data 0x8C2DF14c
loc_8C1292D0:
	#data 0x0000044e

;==============================================
loc_8C1292D4:
	tst r0,r0
	mov.l r2,@-r15
	bt loc_8c129386
	mov.l r3,@-r15
	mov 0x00,r2
	mov.l r4,@-r15
	div0s r2,r1
	movt r4
	subc r3,r3
	subc r2,r1
	div0s r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	rotcl r1
	div1 r0,r3
	div0s r2,r3
	movt r2
	xor r4,r2
	rotcr r2
	bf loc_8c12937a
	div0s r0,r3
	shar r3
	div1 r0,r3

loc_8C12937A:
	add r4,r3
	mov r3,r0
	mov.l @r15+,r4
	mov.l @r15+,r3
	rts 
	mov.l @r15+,r2

loc_8C129386:
	mov.l @(0xC,PC),r1
	mov.l @(0xC,PC),r2
	mov 0x00,r0
	mov.l r2,@r1
	rts 
	mov.l @r15+,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4_nop
loc_8c129394:
	#data 0x8C2DF14c
loc_8c129398:
	#data 0x0000044e

;==============================================
loc_8C12939C:
	tst r0,r0
	bt loc_8C12943c
	mov.l r3,@-r15
	mov 0x00,r3 ; r3 set to 0x00
	mov.l r4,@-r15
	mov r0,r4
	div0u
	rotcl r1
	div1 r4,r3 ; r3 ??? bc r4 is ???
	rotcl r1
	div1 r4,r3
	rotcl r1
	div1 r4,r3
	rotcl r1
	div1 r4,r3
	rotcl r1
	div1 r4,r3
	rotcl r1
	div1 r4,r3
	rotcl r1
	div1 r4,r3
	rotcl r1
	div1 r4,r3
	rotcl r1
	div1 r4,r3
	rotcl r1
	div1 r4,r3
	rotcl r1
	div1 r4,r3
	rotcl r1
	div1 r4,r3
	rotcl r1
	div1 r4,r3
	rotcl r1
	div1 r4,r3
	rotcl r1
	div1 r4,r3
	rotcl r1
	div1 r4,r3
	rotcl r1
	div1 r4,r3
	rotcl r1
	div1 r4,r3
	rotcl r1
	div1 r4,r3
	rotcl r1
	div1 r4,r3
	rotcl r1
	div1 r4,r3
	rotcl r1
	div1 r4,r3
	rotcl r1
	div1 r4,r3
	rotcl r1
	div1 r4,r3
	rotcl r1
	div1 r4,r3
	rotcl r1
	div1 r4,r3
	rotcl r1
	div1 r4,r3
	rotcl r1
	div1 r4,r3
	rotcl r1
	div1 r4,r3
	rotcl r1
	div1 r4,r3
	rotcl r1
	div1 r4,r3
	rotcl r1
	div1 r4,r3
	bf loc_8C129434
	mov r3,r0
	mov.l @r15+,r4
	rts
	mov.l @r15+,r3

loc_8C129434:
	add r3,r0
	mov.l @r15+,r4
	rts
	mov.l @r15+,r3

loc_8C12943C:
	mov.l r2,@-r15
	mov.l @(loc_8C12944C,pc),r1 ; r1 set to 0x8C2DF14c
	mov.l @(loc_8C129450,pc),r2 ; r2 set to 0x44e
	mov 0x00,r0 ; r0 set to 0x00
	mov.l r2,@r1 ; r1 ??
	rts
	mov.l @r15+,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4_nop
loc_8C12944C:
	#data 0x8C2DF14c
loc_8C129450:
	#data 0x0000044e

;==============================================
loc_8C129454:
	exts.w r0,r0
	tst r0,r0
	bt.s loc_8c1294a8
	mov.l r2,@-r15
	exts.w r1,r1
	mov.l r3,@-r15
	mov 0x00,r2
	shll16 r0
	div0s r2,r1
	movt r3
	subc r2,r1
	div0s r0,r1
	div1 r0,r1
	div1 r0,r1
	div1 r0,r1
	div1 r0,r1
	div1 r0,r1
	div1 r0,r1
	div1 r0,r1
	div1 r0,r1
	div1 r0,r1
	div1 r0,r1
	div1 r0,r1
	div1 r0,r1
	div1 r0,r1
	div1 r0,r1
	div1 r0,r1
	div1 r0,r1
	div0s r2,r1
	movt r2
	xor r3,r2
	rotcr r2
	bf loc_8c12949c
	div0s r0,r1
	shar r1
	div1 r0,r1

loc_8C12949C:
	shlr16 r1
	add r3,r1
	exts.w r1,r0
	mov.l @r15+,r3
	rts 
	mov.l @r15+,r2

loc_8C1294A8:
	mov.l @(0x8,PC),r1
	mov.l @(0xC,PC),r2
	mov.l r2,@r1
	rts 
	mov.l @r15+,r2
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4_nop
loc_8c1294b4:
	#data 0x8C2DF14c
loc_8c1294b8:
	#data 0x0000044e

;==============================================
loc_8C1294BC:
	mov.l r3,@-r15
	mov.l @(loc_8C1294D4,pc),r3 ; r3 set to 0x8C12951c
	mov.l @(r0,r3),r3 ; r3 ??
	add 0xFC,r0
	jmp @r3
	mov.l @(r0,r2),r0

;==============================================
loc_8C1294C8:
	mov.l r3,@-r15
	mov.l @(loc_8C1294D4,pc),r3 ; r3 set to 0x8C12951c
	mov.l @(r0,r3),r3 ; r3 ??
	add 0xFC,r0
	jmp @r3
	mov.l @(r0,r2),r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C1294D4:
	#data loc_8c12951c
	nop

;==============================================
loc_8C1294DA:
	mov.l @(0x38,r2),r3
	mov.l r0,@(0x3C,r1)

loc_8C1294DE:
	mov.l @(0x34,r2),r0
	mov.l r3,@(0x38,r1)

loc_8C1294E2:
	mov.l @(0x30,r2),r3
	mov.l r0,@(0x34,r1)

loc_8C1294E6:
	mov.l @(0x2C,r2),r0
	mov.l r3,@(0x30,r1)

loc_8C1294EA:
	mov.l @(0x28,r2),r3
	mov.l r0,@(0x2C,r1)

loc_8C1294EE:
	mov.l @(0x24,r2),r0
	mov.l r3,@(0x28,r1)

loc_8C1294F2:
	mov.l @(0x20,r2),r3
	mov.l r0,@(0x24,r1)

loc_8C1294F6:
	mov.l @(0x1C,r2),r0
	mov.l r3,@(0x20,r1)

loc_8C1294FA:
	mov.l @(0x18,r2),r3
	mov.l r0,@(0x1C,r1)

loc_8C1294FE:
	mov.l @(0x14,r2),r0
	mov.l r3,@(0x18,r1)

loc_8C129502:
	mov.l @(0x10,r2),r3
	mov.l r0,@(0x14,r1)

loc_8C129506:
	mov.l @(0xC,r2),r0
	mov.l r3,@(0x10,r1)

loc_8C12950A:
	mov.l @(0x8,r2),r3
	mov.l r0,@(0xC,r1)

loc_8C12950E:
	mov.l @(0x4,r2),r0
	mov.l r3,@(0x8,r1)

loc_8C129512:
	mov.l @r2,r3
	mov.l r0,@(0x4,r1)

loc_8C129516:
	mov.l r3,@r1

loc_8C129518:
	rts
	mov.l @r15+,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C12951C:
	#data loc_8c129518
loc_8C129520:
	#data loc_8c129516
loc_8C129524:
	#data loc_8c129512
loc_8C129528:
	#data loc_8c12950e
loc_8C12952C:
	#data loc_8c12950a
loc_8C129530:
	#data loc_8c129506
loc_8C129534:
	#data loc_8c129502
loc_8C129538:
	#data loc_8c1294Fe
loc_8C12953C:
	#data loc_8c1294Fa
loc_8C129540:
	#data loc_8c1294F6
loc_8C129544:
	#data loc_8c1294F2
loc_8C129548:
	#data loc_8c1294Ee
loc_8C12954C:
	#data loc_8c1294Ea
loc_8C129550:
	#data loc_8c1294E6
loc_8C129554:
	#data loc_8c1294E2
loc_8C129558:
	#data loc_8c1294De
loc_8C12955C:
	#data loc_8c1294Da

;==============================================
loc_8C129560:
	mov.l r3,@-r15
	mov 0x40,r3 ; r3 set to 0x40
	cmp/hs r0,r3
	bf loc_8C129600
	mov.l @(loc_8C129570,pc),r3 ; r3 set to 0x8C1295Bc
	mov.l @(r0,r3),r3 ; r3 ??
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C129570:
	#data loc_8c1295Bc
	nop

;==============================================
loc_8C129576:
	mov.l @(0x3C,r2),r0
	mov.l r0,@(0x3C,r1)

loc_8C12957A:
	mov.l @(0x38,r2),r0
	mov.l r0,@(0x38,r1)

loc_8C12957E:
	mov.l @(0x34,r2),r0
	mov.l r0,@(0x34,r1)

loc_8C129582:
	mov.l @(0x30,r2),r0
	mov.l r0,@(0x30,r1)

loc_8C129586:
	mov.l @(0x2C,r2),r0
	mov.l r0,@(0x2C,r1)

loc_8C12958A:
	mov.l @(0x28,r2),r0
	mov.l r0,@(0x28,r1)

loc_8C12958E:
	mov.l @(0x24,r2),r0
	mov.l r0,@(0x24,r1)

loc_8C129592:
	mov.l @(0x20,r2),r0
	mov.l r0,@(0x20,r1)

loc_8C129596:
	mov.l @(0x1C,r2),r0
	mov.l r0,@(0x1C,r1)

loc_8C12959A:
	mov.l @(0x18,r2),r0
	mov.l r0,@(0x18,r1)

loc_8C12959E:
	mov.l @(0x14,r2),r0
	mov.l r0,@(0x14,r1)

loc_8C1295A2:
	mov.l @(0x10,r2),r0
	mov.l r0,@(0x10,r1)

loc_8C1295A6:
	mov.l @(0xC,r2),r0
	mov.l r0,@(0xC,r1)

loc_8C1295AA:
	mov.l @(0x8,r2),r0
	mov.l r0,@(0x8,r1)

loc_8C1295AE:
	mov.l @(0x4,r2),r0
	mov.l r0,@(0x4,r1)

loc_8C1295B2:
	mov.l @r2,r0
	mov.l r0,@r1

loc_8C1295B6:
	rts
	mov.l @r15+,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4_nop
loc_8C1295BC:
	#data loc_8c1295B6
loc_8C1295C0:
	#data loc_8c1295B2
loc_8C1295C4:
	#data loc_8c1295Ae
loc_8C1295C8:
	#data loc_8c1295Aa
loc_8C1295CC:
	#data loc_8c1295A6
loc_8C1295D0:
	#data loc_8c1295A2
loc_8C1295D4:
	#data loc_8c12959e
loc_8C1295D8:
	#data loc_8c12959a
loc_8C1295DC:
	#data loc_8c129596
loc_8C1295E0:
	#data loc_8c129592
loc_8C1295E4:
	#data loc_8c12958e
loc_8C1295E8:
	#data loc_8c12958a
loc_8C1295EC:
	#data loc_8c129586
loc_8C1295F0:
	#data loc_8c129582
loc_8C1295F4:
	#data loc_8c12957e
loc_8C1295F8:
	#data loc_8c12957a
loc_8C1295FC:
	#data loc_8c129576

;==============================================
loc_8C129600:
	mov.l r2,@-r15
	mov r2,r3
	add r0,r3

loc_8C129606:
	mov.l @r2+,r0
	cmp/hs r2,r3
	bf loc_8C12961a
	mov.l r0,@r1
	mov.l @r2+,r0
	cmp/hs r2,r3
	bf loc_8C12961a
	mov.l r0,@(0x04,r1)
	bra loc_8C129606
	add 0x08,r1

loc_8C12961A:
	mov.l @r15+,r2
	rts
	mov.l @r15+,r3

;==============================================
loc_8C129620:
	mov.l r2,@-r15
	mov.l r3,@-r15
	mov.l r4,@-r15
	cmp/eq 0x00,r0
	bt loc_8c129650
	mov r2,r4
	add r0,r4

loc_8C12962E:
	mov.b @r2+,r0
	mov.b r0,@r1
	cmp/hi r2,r4
	bf loc_8c129650
	mov.b @r2+,r0
	mov.b r0,@(0x1,r1)
	cmp/hi r2,r4
	bf loc_8c129650
	mov.b @r2+,r0
	mov.b r0,@(0x2,r1)
	cmp/hi r2,r4
	bf loc_8c129650
	mov.b @r2+,r0
	mov.b r0,@(0x3,r1)
	cmp/hi r2,r4
	add 0x04,r1
	bt loc_8c12962e

loc_8C129650:
	mov.l @r15+,r4
	mov.l @r15+,r3
	rts 
	mov.l @r15+,r2

;==============================================
loc_8C129658:
	cmp/pl r4
	bf loc_8C129660
	rts
	mov r4,r0

loc_8C129660:
	neg r4,r0
	rts
	nop

;==============================================
	#align4

;==============================================
loc_8C129668:
	mov.l r13,@-r15
	cmp/eq r5,r4
	mov.l r12,@-r15
	mov.l r11,@-r15
	bt loc_8C12971c
	mov 0x00,r2 ; r2 set to 0x00
	cmp/hi r2,r6
	bf loc_8C12971c
	mov r4,r7
	mov r6,r11
	or r5,r7
	mov r6,r12
	shlr r11
	cmp/hs r5,r4
	or r6,r7
	bt/s loc_8C1296D2
	shlr2 r12
	mov 0x01,r3 ; r3 set to 0x01
	tst r7,r3
	bf loc_8C1296Be
	mov 0x03,r1 ; r1 set to 0x03
	tst r1,r7
	bf loc_8C1296Aa
	mov r12,r6
	mov r4,r7

loc_8C12969A:
	mov.l @r5+,r3 ; r3 ??? bc r5 is ???
	add 0xFF,r6
	tst r6,r6
	mov.l r3,@r7
	bf/s loc_8C12969a
	add 0x04,r7
	bra loc_8C12971c
	nop

loc_8C1296AA:
	mov r11,r6
	mov r4,r7

loc_8C1296AE:
	mov.w @r5+,r3
	add 0xFF,r6
	tst r6,r6
	mov.w r3,@r7
	bf/s loc_8C1296Ae
	add 0x02,r7
	bra loc_8C12971c
	nop

loc_8C1296BE:
	mov r5,r0
	mov r4,r7

loc_8C1296C2:
	mov.b @r0+,r3
	add 0xFF,r6
	tst r6,r6
	mov.b r3,@r7
	bf/s loc_8C1296C2
	add 0x01,r7
	bra loc_8C12971c
	nop

loc_8C1296D2:
	mov 0x01,r2 ; r2 set to 0x01
	mov r4,r0
	tst r7,r2
	mov r5,r13
	add r6,r0
	bf/s loc_8C12970e
	add r6,r13
	mov 0x03,r1 ; r1 set to 0x03
	tst r1,r7
	bf loc_8C1296Fa
	mov r12,r6
	mov r13,r7
	mov r0,r5

loc_8C1296EC:
	add 0xFC,r7
	mov.l @r7,r3
	dt r6
	bf/s loc_8C1296Ec
	mov.l r3,@-r5
	bra loc_8C12971c
	nop

loc_8C1296FA:
	mov r11,r6
	mov r13,r5
	mov r0,r7

loc_8C129700:
	add 0xFE,r5
	mov.w @r5,r3
	dt r6
	bf/s loc_8C129700
	mov.w r3,@-r7
	bra loc_8C12971c
	nop

loc_8c12970e:
	mov r13,r7
	mov r0,r5

loc_8c129712:
	add 0xFF,r7
	mov.b @r7,r3
	dt r6
	bf/s loc_8c129712
	mov.b r3,@-r5

loc_8C12971C:
	mov.l @r15+,r11
	mov r4,r0
	mov.l @r15+,r12
	rts
	mov.l @r15+,r13

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

;==============================================
loc_8C129728:
	mov 0x00,r7
	mov r7,r3
	cmp/hs r6,r3
	bt.s loc_8c12973c
	mov r4,r0

loc_8C129732:
	add 0x01,r7
	mov.b r5,@r0
	cmp/hs r6,r7
	bf.s loc_8c129732
	add 0x01,r0

loc_8C12973C:
	rts 
	mov r4,r0

;==============================================
loc_8C129740:
	sts.l pr,@-r15
	add 0xFC,r15
	mov r15,r0
	add 0x08,r0
	mov.l r4,@r15
	mov 0x03,r4 ; r4 set to 0x03
	add 0x04,r0
	tst r0,r4
	bt loc_8C12975a
	mov r15,r4 ; r4 ??? bc r15 is ???
	add 0x08,r4
	bra loc_8C129760
	add 0x08,r4

loc_8C12975A:
	mov r15,r4
	add 0x08,r4
	add 0x04,r4

loc_8C129760:
	mov.l r4,@-r15
	mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00
	mov.l @(loc_8C129778,pc),r3 ; r3 set to 0x8C12E6CC, r3 set to 0x8C12E6Cc
	mov.l @(0x04,r15),r6
	mov.l @(0x0C,r15),r7
	jsr @r3
	mov 0x01,r4 ; r4 set to 0x01, r4 set to 0x01
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C129778:
	#data loc_8c12E6Cc

;==============================================
loc_8C12977C:
	mov r4,r6
	bra loc_8C129784
	mov r5,r7

loc_8C129782:
	add 0x01,r6

loc_8c129784:
	mov.b @r6,r2
	tst r2,r2
	bf loc_8c129782

loc_8c12978a:
	mov.b @r7+,r2
	mov.b r2,@r6
	extu.b r2,r2
	tst r2,r2
	bf/s loc_8c12978a
	add 0x01,r6
	rts
	mov r4,r0

;==============================================
	#align4

;==============================================
loc_8C12979C:
	sts.l pr,@-r15
	mov.l @(loc_8C1297AC,pc),r3 ; r3 set to 0x8C12E624
	jsr @r3
	nop
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C1297AC:
	#data loc_8c12E624

;==============================================
loc_8C1297B0:
	sts.l pr,@-r15
	mov.l @(loc_8C1297C0,pc),r3 ; r3 set to 0x8C12E5D4
	mov r5,r1
	jsr @r3
	mov r4,r0
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C1297C0:
	#data loc_8c12E5D4

;==============================================
loc_8C1297C4:
	bra loc_8C1297Ca
	mov 0x00,r5

loc_8C1297C8:
	add 0x01,r5

loc_8C1297CA:
	mov.b @r4+,r3
	tst r3,r3
	bf loc_8C1297C8
	rts
	mov r5,r0

;==============================================
loc_8C1297D4:
	mov 0x00,r1 ; r1 set to 0x00
	mov r5,r0
	mov r4,r7
	bra loc_8C1297E6
	mov r1,r5

loc_8C1297DE:
	mov.b @r0+,r3
	add 0x01,r5
	mov.b r3,@r7
	add 0x01,r7

loc_8c1297e6:
	cmp/hs r6,r5
	bt loc_8c1297fe
	mov.b @r0,r3
	tst r3,r3
	bf loc_8c1297de
	cmp/hs r6,r5
	bt loc_8c1297fe

loc_8c1297f4:
	add 0x01,r5
	mov.b r1,@r7
	cmp/hs r6,r5
	bf/s loc_8c1297f4
	add 0x01,r7

loc_8c1297fe:
	rts
	mov r4,r0


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

;==============================================
loc_8C129804:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r6,r3
	mov.l r5,@(0x04,r15)
	mov 0x00,r5 ; r5 set to 0x00
	mov.l r6,@(0x08,r15)
	mov.l r6,@-r15
	mov.l @(loc_8C129828,pc),r3 ; r3 set to 0x8C12E6Cc
	mov.l @(0x04,r15),r6
	mov.l @(0x08,r15),r7
	jsr @r3
	mov 0x01,r4 ; r4 set to 0x01
	add 0x10,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C129828:
	#data loc_8c12E6Cc
	#align16

;==============================================
loc_8C129830:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @r14,r0
	extu.w r0,r0
	cmp/eq 0x03,r0
	bf/s loc_8C129860
	mov r5,r13
	mov.l @(0x0C,r14),r6
	mov r13,r5
	mov.l @(0x18,r14),r7
	bsr loc_8C1298C0
	mov.l @(0x1C,r14),r4
	bra loc_8C1298Ac
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C129860:
	mov.l @(loc_8C1298F8,pc),r2 ; r2 set to 0x4000000
	mov.l @(0x18,r14),r4
	tst r4,r2
	bf loc_8C1298A0
	mov.l @(loc_8C1298FC,pc),r1 ; r1 set to 0x80000000
	tst r4,r1
	bt loc_8C1298A0
	mov.l @(loc_8C129900,pc),r2 ; r2 set to 0x40000000
	tst r4,r2
	bf loc_8C1298A0
	mov.l @(loc_8C129904,pc),r1 ; r1 set to 0x8000
	tst r4,r1
	bf loc_8C1298A0
	mov.l @(0x0C,r14),r5
	mov.l @(loc_8C129908,pc),r3 ; r3 set to 0x8C1941D2
	mov.l r5,@r15
	jsr @r3
	mov r5,r4
	mov r0,r6
	mov.l r0,@r15
	mov.l @(loc_8C12990C,pc),r0 ; r0 set to 0x8C1C5B9c
	shll2 r6
	mov.l @(0x1C,r14),r4
	mov r13,r5
	mov.l @(r0,r6),r6
	mov 0x00,r7 ; r7 set to 0x00
	add 0x04,r6
	bra loc_8C1298A8
	add 0x04,r4

;==============================================
	#align16_nop

;==============================================
loc_8C1298A0:
	mov.l @(0x1C,r14),r4
	mov 0x00,r7 ; r7 set to 0x00
	mov.l @(0x14,r14),r6
	mov r13,r5

loc_8C1298A8:
	bsr loc_8C12994e
	nop

loc_8C1298AC:
	mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00, r0 set to 0x00
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
	#align16_nop

;==============================================
loc_8C1298C0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r5,r13
	mov.l @(loc_8C129908,pc),r3 ; r3 set to 0x8C1941D2
	mov r4,r14
	mov.l r6,@r15
	mov.l r7,@(0x04,r15)
	mov.l @r15,r5
	jsr @r3
	mov r5,r4
	mov.l @(loc_8C1298FC,pc),r3 ; r3 set to 0x80000000
	mov r0,r4
	mov.l @(0x04,r15),r2
	mov r0,r11
	tst r3,r2
	bt/s loc_8C129920
	shll2 r11
	mov.l @(loc_8C129910,pc),r0 ; r0 set to 0x8C1C5B80
	mov.l @(r0,r11),r12
	mov.l @(loc_8C129914,pc),r0 ; r0 set to 0x8C1C5BF4
	mov.l @(r0,r11),r10
	bra loc_8C129928
	add 0x0A,r10

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C1298F8:
	#data 0x04000000
loc_8C1298FC:
	#data 0x80000000
loc_8C129900:
	#data 0x40000000
loc_8C129904:
	#data 0x00008000
loc_8C129908:
	#data bank19.loc_8c1941D2
loc_8C12990C:
	#data bank1c.loc_8c1c5B9c
loc_8C129910:
	#data bank1c.loc_8c1c5B80
loc_8C129914:
	#data bank1c.loc_8c1c5BF4

;==============================================
	#align16_nop

;==============================================
loc_8c129920:
	mov.l @(loc_8c129a1c,pc),r0
	mov.l @(r0,r11),r12
	mov.l @(loc_8c129a20,pc),r0
	mov.l @(r0,r11),r10

loc_8c129928:
	mov r13,r5
	mov r12,r6
	mov 0x00,r7
	bsr loc_8c12994e
	mov r14,r4
	mov.w @(loc_8C129A18,pc),r2
	add r12,r13
	mov r13,r5
	mov 0x00,r7
	add r2,r14
	mov r10,r6
	mov r14,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C12994E:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov r6,r9
	mov.l r8,@-r15
	tst r9,r9
	sts.l pr,@-r15
	bf/s loc_8C129970
	mov r7,r12
	mov.l @(loc_8C129A24,pc),r0 ; r0 set to 0xEEEe
	bra loc_8C129B06
	nop

loc_8C129970:
	stc sr, r0
	mov.l @(loc_8C129A2C,pc),r2 ; r2 set to 0x8C2DB030
	mov 0xE0,r11 ; r11 set to 0xFFFFFFE0
	mov.l @(loc_8C129A28,pc),r8 ; r8 set to 0xA4000000
	shlr2 r0
	shlr2 r0
	and 0x0F,r0
	mov r0,r10
	mov.l @r2,r0
	cmp/eq 0x01,r0
	bf/s loc_8C1299D0
	and r9,r11 ; r11 ??? bc r9 is ???
	mov 0x1F,r1 ; r1 set to 0x1f
	tst r14,r1
	bf loc_8C1299B0
	mov 0x1F,r0 ; r0 set to 0x1f
	tst r13,r0
	bf loc_8C1299B0
	tst r10,r10
	bf loc_8C1299B0
	mov.l @(loc_8C129A30,pc),r2 ; r2 set to 0x8C2DB034
	mov r14,r5
	add r8,r5
	mov r11,r6
	mov.l @r2,r3
	mov 0x00,r7 ; r7 set to 0x00
	jsr @r3
	mov r13,r4
	bra loc_8C129B04
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C1299B0:
	mov.l @(loc_8C129A34,pc),r3 ; r3 set to 0x8C2DB038
	mov r14,r5
	add r8,r5
	mov r11,r6
	mov.l @r3,r2
	jsr @r2
	mov r13,r4
	bra loc_8C129B04
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C1299D0:
	mov 0x1F,r2 ; r2 set to 0x1f
	tst r14,r2
	bt loc_8C1299Da
	bra loc_8C129AF0
	nop

loc_8C1299DA:
	mov 0x1F,r1 ; r1 set to 0x1f
	tst r13,r1
	bt loc_8C1299E4
	bra loc_8C129AF0
	nop

loc_8C1299E4:
	tst r10,r10
	bt loc_8C1299Ec
	bra loc_8C129AF0
	nop

loc_8C1299EC:
	mov.l @(loc_8C129A38,pc),r3 ; r3 set to 0x8C18F380
	jsr @r3
	nop
	tst r0,r0
	bf loc_8C1299Fa
	bra loc_8C129AF0
	nop

loc_8C1299FA:
	tst r11,r11
	bt loc_8C129AA4
	mov.l @(loc_8C129A3C,pc),r2 ; r2 set to 0x8C18DFA0
	jsr @r2
	nop
	tst r0,r0
	bf loc_8C129A50

loc_8C129A08:
	mov.l @(loc_8C129A40,pc),r3 ; r3 set to 0x8C18DA80, r3 set to 0x8C18DA80
	jsr @r3
	mov 0x01,r4 ; r4 set to 0x01, r4 set to 0x01
	tst r0,r0
	bt/s loc_8C129A08
	mov r0,r10
	bra loc_8C129A80
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c129a18:
	#data 0x0800
	#align4

loc_8C129A1C:
	#data bank1c.loc_8c1c5B64
loc_8C129A20:
	#data bank1c.loc_8c1c5BC8
loc_8C129A24:
	#data 0x0000EEEe
loc_8C129A28:
	#data 0xA4000000
loc_8C129A2C:
	#data 0x8C2DB030
loc_8C129A30:
	#data 0x8C2DB034
loc_8C129A34:
	#data 0x8C2DB038
loc_8C129A38:
	#data bank18.loc_8c18F380
loc_8C129A3C:
	#data bank18.loc_8c18DFA0
loc_8C129A40:
	#data bank18.loc_8c18DA80

;==============================================
	#align16_nop

;==============================================
loc_8C129A50:
	mov.l @(loc_8C129B1C,pc),r2 ; r2 set to 0x8C18DA80
	jsr @r2
	mov 0x01,r4 ; r4 set to 0x01
	tst r0,r0
	bf/s loc_8C129A80
	mov r0,r10
	mov.l @(loc_8C129B20,pc),r2 ; r2 set to 0x8C17A6E0
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov r9,r6
	mov r13,r5
	jsr @r2
	add r8,r4
	tst r12,r12
	bt loc_8C129B04
	jsr @r12
	mov 0x00,r4 ; r4 set to 0x00
	bra loc_8C129B04
	nop

;==============================================
	#align16_nop

;==============================================
loc_8c129a80:
	mov.l @(loc_8c129b24,pc),r3
	mov r14,r5
	mov r11,r7
	mov r13,r6
	jsr @r3
	mov r10,r4
	tst r12,r12
	bt loc_8c129a98
	mov.l @(loc_8c129b28,pc),r3
	mov r12,r5
	jsr @r3
	mov r10,r4

loc_8c129a98:
	mov.l @(loc_8c129b2c,pc),r2
	jsr @r2
	mov r10,r4
	mov.l @(loc_8C129B30,pc),r3
	mov r0,r10
	mov.l r0,@r3

loc_8c129aa4:
	mov 0x1F,r6
	and r9,r6
	tst r6,r6
	bt loc_8c129aba
	mov r14,r4
	mov.l @(loc_8c129b20,pc),r3
	mov r13,r5
	add r11,r4
	add r11,r5
	jsr @r3
	add r8,r4

loc_8c129aba:
	tst r12,r12
	bf loc_8c129b04
	mov.l @(loc_8c129b34,pc),r3
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c129b04
	mov.l @(loc_8c129b38,pc),r3
	jsr @r3
	nop
	tst r0,r0
	bf loc_8c129b04
	mov.w @(loc_8C129B18,pc),r14
	mov.l @(loc_8c129b3c,pc),r13

loc_8c129ad6:
	jsr @r13
	mov r10,r4
	cmp/eq r14,r0
	bf loc_8c129ad6
	bra loc_8c129b04
	nop

;==============================================
	#align16_nop

;==============================================
loc_8c129af0:
	mov.l @(0x2C,PC),r2
	mov r14,r4
	mov r9,r6
	mov r13,r5
	jsr @r2
	add r8,r4
	tst r12,r12
	bt loc_8c129b04
	jsr @r12
	mov 0x00,r4

loc_8C129B04:
	mov 0x00,r0 ; r0 set to 0x00

loc_8C129B06:
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
loc_8c129b18:
	#data 0x0101
	#align4

loc_8C129B1C:
	#data bank18.loc_8c18DA80
loc_8C129B20:
	#data bank17.loc_8c17A6E0
loc_8C129B24:
	#data bank18.loc_8c18FEE0
loc_8C129B28:
	#data bank18.loc_8c18FD60
loc_8C129B2C:
	#data bank18.loc_8c18FC20
loc_8c129b30:
	#data 0x8C343B18
loc_8C129B34:
	#data bank18.loc_8c18DFA0
loc_8C129B38:
	#data bank18.loc_8c18F380
loc_8C129B3C:
	#data bank18.loc_8c18F3C0

;==============================================
loc_8C129B40:
	mov.l @(0xBC,PC),r5
	shll16 r4
	mov.l @(0xBC,PC),r3
	mov.l @r5,r2
	and r3,r2
	mov r2,r1
	or r4,r1
	rts 
	mov.l r1,@r5

;==============================================
	#align16_nop

;==============================================
loc_8C129B60:
	mov.l @(0x9C,PC),r5
	shll2 r4
	mov.w @(0x94,PC),r3
	shll2 r4
	mov.l @r5,r2
	shll2 r4
	and r3,r2
	mov r2,r1
	or r4,r1
	rts 
	mov.l r1,@r5
;==============================================
	#align16_nop

;==============================================
loc_8C129B80:
	mov.l @(0x7C,PC),r5
	mov.l @(0x84,PC),r3
	mov.l @(0x4,r5),r2
	and r3,r2
	mov.l r2,@(0x4,r5)
	mov 0x16,r2
	mov.l @(0x4,r5),r1
	shad r2,r4
	or r4,r1
	rts 
	mov.l r1,@(0x4,r5)

;==============================================
	#align16_nop

;==============================================
loc_8C129Ba0:
	mov.l @(0x5C,PC),r5
	mov.l @(0x68,PC),r3
	mov.l @(0x4,r5),r2
	and r3,r2
	mov.l r2,@(0x4,r5)
	mov 0x15,r2
	mov.l @(0x4,r5),r1
	shad r2,r4
	or r4,r1
	rts 
	mov.l r1,@(0x4,r5)
;==============================================
	#align16_nop

;==============================================
loc_8C129Bc0:
	mov.l @(0x3C,PC),r5
	shll8 r4
	mov.w @(0x36,PC),r3
	mov.l @(0x4,r5),r2
	and r3,r2
	mov r2,r1
	or r4,r1
	rts 
	mov.l r1,@(0x4,r5)

;==============================================
	#align16_nop

;==============================================
loc_8C129be0:
	mov.l @(0x1C,PC),r5
	tst r4,r4
	bf loc_8c129bf0
	mov.l @r5,r2
	mov.l @(0x24,PC),r3
	and r3,r2
	bra loc_8c129bf8
	mov.l r2,@r5

loc_8c129bf0:
	mov.l @r5,r1
	mov.l @(0x20,PC),r3
	or r3,r1
	mov.l r1,@r5

loc_8c129bf8:
	rts 
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c129bfc:
	#data 0xFF3f
loc_8c129bfe:
	#data 0xF0FF
	#align4

loc_8c129c00:
	#data 0x8C2DEE8c
loc_8c129c04:
	#data 0xFFFCFFFf
loc_8c129c08:
	#data 0xFF3FFFFf
loc_8c129c0c:
	#data 0xFFDFFFFf
loc_8c129c10:
	#data 0x7FFFFFFf
loc_8c129c14:
	#data 0x80000000
	#align16

;==============================================
loc_8c129c20:
	tst r6,r6
	mov r4,r0
	or r5,r0
	or r6,r0
	tst 0x1F,r0
	bf loc_8c129c76
	fschg 
	mov r4,r0
	shlr16 r0
	shlr8 r0
	mov.l @(0x74,PC),r1
	mov.l r0,@r1
	mov.l r0,@(0x4,r1)
	mov.l @(0x6C,PC),r1
	and r1,r4
	mov.l @(0x64,PC),r1
	or r1,r4
	shlr2 r6
	shlr2 r6
	shlr r6

loc_8c129c48:
	fmov @r5+,fr0
	fmov @r5+,fr2
	fmov @r5+,fr4
	fmov @r5+,fr6
	dt r6
	fmov fr0,@r4
	add 0x08,r4
	fmov fr2,@r4
	add 0x08,r4
	fmov fr4,@r4
	add 0x08,r4
	fmov fr6,@r4
	pref @r4
	bf.s loc_8c129c48
	add 0x08,r4
	rts 
	fschg 

loc_8C129C6A:
	rts
	pref @r4

;==============================================
loc_8c129c6e:
	tst r6,r6
	mov r4,r0
	or r5,r0
	or r6,r0

loc_8c129c76:
	bt loc_8c129c90
	tst 0x07,r0
	bf loc_8c129c94
	fschg 
	shlr2 r6
	shlr r6

loc_8c129c82:
	fmov @r5+,fr0
	dt r6
	fmov fr0,@r4
	bf.s loc_8c129c82
	add 0x08,r4
	rts 
	fschg 

loc_8c129c90:
	rts 
	nop 

loc_8c129c94:
	shlr2 r6

loc_8c129c96:
	mov.l @r5+,r0
	dt r6
	mov.l r0,@r4
	bf.s loc_8c129c96
	add 0x04,r4
	rts 
	nop 

;==============================================
	#align4
loc_8c129ca4:
	#data 0xE0000000
loc_8c129ca8:
	#data 0xE3FFFFFf
loc_8c129cac:
	#data 0xFF000038


loc_8C129CB0:
	rts
	nop

;==============================================
	#align16

;==============================================
loc_8C129CC0:
	fldi1 fr4

loc_8C129CC2:
	add 0x18,r4
	mov.l @(0x398,PC),r7
	fldi1 fr1
	fmov fr15,@-r15
	fmov @r7,fr0
	fmov fr14,@-r15
	fmov fr13,@-r15
	fdiv fr0,fr1
	fmov fr12,@-r15
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov 0x00,r0
	sts.l pr,@-r15
	add 0xC0,r15
	fldi1 fr7
	fmov fr4,@(r0,r15)
	mov 0x04,r0
	fabs fr0
	fmov fr0,@(r0,r15)
	mov.l @(0x378,PC),r0
	fmov fr7,@r7
	mov.l @r0,r1
	mov.l @(0x378,PC),r2
	mov.l r1,@(0x8,r15)
	mov.l @r2,r1
	mov.l @(0x378,PC),r0
	mov.l @(0x36C,PC),r2
	mov.l r1,@(0x10,r15)
	mov.l @r2,r3
	mov.l @r0,r1
	mov.l r3,@(0xC,r15)
	fmov @r5+,fr10
	mov.l r1,@(0x14,r15)
	fmov @r5+,fr8
	fmov @r5+,fr9
	mov.l @r5+,r12
	mov 0x38,r0
	fmov fr10,@(r0,r15)
	mov 0x30,r0
	fmov fr8,@(r0,r15)
	mov 0x34,r0
	fmov fr9,@(r0,r15)
	fmov @r5+,fr14
	fmov @r5+,fr12
	fmov @r5+,fr13
	fmul fr1,fr12
	mov.l @r5+,r0
	fmul fr1,fr13
	mov.l r0,@(0x24,r15)
	mov.l @r5+,r7
	fmul fr1,fr14
	mov.l r7,@(0x3C,r15)
	mov.l @(0x32C,PC),r0
	mov.l @r0+,r1
	mov.l @r0+,r2
	mov.l @r0+,r3
	mov.l r1,@(0x18,r15)
	mov.l r2,@(0x1C,r15)
	mov.l r3,@(0x20,r15)
	mov.l @(0x34C,PC),r0
	mov.l @r0+,r5
	mov.l r5,@(0x28,r15)
	mov.l @r0+,r6
	mov.l r6,@(0x2C,r15)
	mov.l @(0x308,PC),r10
	mov r15,r3
	mov.l @r4+,r8
	add 0x04,r3
	mov.l @r10,r10
	mov 0xFF,r11
	fmov fr4,fr11
	or r5,r8
	fcmp/gt fr11,fr7
	fmov @r4+,fr2
	mov.l @r4+,r1
	or r6,r1
	bf.s loc_8c129daa
	fmov @r4+,fr3
	bt loc_8c129d84
	nop 

loc_8C129D6C:
	mov.l @(0x28,r15),r3
	mov.l @(0x2C,r15),r0
	or r3,r8
	mov r15,r3
	fmov @r3+,fr11
	or r0,r1
	fldi1 fr7
	fcmp/gt fr11,fr7
	mov r4,r0
	add 0x30,r0
	bf.s loc_8c129daa
	pref @r0

loc_8C129D84:
	mov 0x02,r2
	mov r1,r0
	shll16 r2
	shll8 r2
	mov.l @(0x2FC,PC),r9
	or r2,r8
	or 0xC0,r0
	swap.w r0,r0
	mov.l @r9,r9
	or 0x10,r0
	swap.b r0,r0
	or 0xFC,r0
	xor r9,r0
	swap.b r0,r0
	swap.w r0,r0
	add r2,r2
	mov r0,r1
	not r2,r2
	and r2,r8

loc_8C129DAA:
	mov r8,r0
	fmov @r4+,fr4
	shlr16 r0
	fmov @r4+,fr5
	shlr8 r0
	fmov @r4+,fr6
	and 0x07,r0
	mov 0x04,r2
	shll2 r0
	ftrv xmtrx,fv4
	fmov @r3+,fr1
	shll8 r2
	fmov @r4+,fr0
	cmp/eq r0,r11
	mov r0,r11
	mov 0xE0,r6
	fmul fr1,fr0
	shll16 r2
	bt.s loc_8c129de4
	mov.l @(r0,r10),r5
	mov 0xFF,r0
	shll16 r0
	shll8 r0
	or 0x38,r0
	mov r5,r9
	shlr16 r9
	shlr8 r9
	mov.l r9,@r0
	mov.l r9,@(0x4,r0)

loc_8C129DE4:
	add 0xFF,r2
	lds r12,fpul
	mov 0xFE,r0
	fadd fr0,fr7
	and r5,r2
	fsts fpul,fr1
	shll8 r6
	fcmp/gt fr1,fr7
	shll16 r6
	or r2,r6
	fsub fr0,fr7
	and r0,r12
	mov.l @(0x25C,PC),r9
	bf.s loc_8c129e88
	fsub fr0,fr7
	fcmp/gt fr1,fr7
	bf.s loc_8c129e88
	add 0x01,r12

loc_8C129E08:
	mov r4,r2
	add 0x2C,r4
	mov.l @r4+,r0
	mov.l r8,@r6
	mov r8,r1
	add r0,r4
	mov.l @r4+,r8
	tst r8,r8
	bf loc_8c129e20
	bra loc_8c12a018
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C129E20:
	mov r15,r9
	add 0x18,r9
	fmov @r9+,fr5
	fmov @r9+,fr6
	add 0x0C,r2
	fmov @r9+,fr7
	mov r1,r0
	tst 0x10,r0
	bf.s loc_8c129e7e
	tst 0x20,r0
	bt loc_8c129e7e
	fmov @r2+,fr0
	fmov @r2+,fr1
	fmov @r2+,fr2
	fmov @r2+,fr3
	fmul fr11,fr0
	mov.l @(0x224,PC),r0
	fmov @r0+,fr11
	fmul fr5,fr1
	fmov @r2+,fr4
	fmov @r2+,fr5
	fmul fr11,fr5
	fmov @r0+,fr11
	fmul fr6,fr2
	fmov @r2+,fr6
	fmul fr11,fr6
	fmov @r0+,fr11
	fmul fr7,fr3
	fmov @r2+,fr7
	fschg 
	fmul fr11,fr7
	mov 0x00,r0
	mov.l r0,@(0x4,r6)
	mov.l r0,@(0x8,r6)
	mov.l r0,@(0xC,r6)
	pref @r6
	add 0x40,r6
	fmov fr6,@-r6
	fmov fr4,@-r6
	mov r11,r0
	fmov fr2,@-r6
	add 0x40,r5
	fmov fr0,@-r6
	fschg 
	pref @r6
	add 0x20,r6
	mov.l r5,@(r0,r10)

loc_8C129E7E:
	fmov @r4+,fr2
	mov.l @r4+,r1
	bra loc_8c129d6c
	fmov @r4+,fr3
	nop 

loc_8C129E88:
	fmov @r3+,fr1
	mov.l @(0x1F4,PC),r0
	add 0x10,r9
	fmov @r0,fr7
	fmul fr4,fr7
	fneg fr0
	fmul fr0,fr1
	fmov fr3,@-r9
	fsub fr7,fr5
	fmov @r3+,fr3
	mov r4,r2
	mov.l @(0x1DC,PC),r0
	fcmp/gt fr1,fr5
	fmov @r0,fr7
	fmul fr0,fr3
	bf.s loc_8c129e08
	fmul fr4,fr7
	mov.l r1,@-r9
	fsub fr7,fr6
	fmov @r3+,fr0
	fcmp/gt fr3,fr6
	fmov @r3+,fr7
	fmul fr4,fr0
	bf.s loc_8c129e08
	fsub fr1,fr0
	fcmp/gt fr0,fr5
	fmov @r3+,fr5
	fmul fr4,fr7
	bt.s loc_8c129e08
	fmov fr2,@-r9
	fsub fr3,fr7
	mov.l r8,@-r9
	mov 0x08,r1
	fcmp/gt fr7,fr6
	fmov @r3+,fr6
	bt loc_8c129e08
	mov r8,r0
	tst 0x10,r0
	mov.b @(0x4,r2),r0
	add 0x08,r2
	fmov @r3+,fr7
	mov r0,r8
	fmov @r2+,fr15
	bf.s loc_8c129f18
	add 0x30,r4
	fmov @r2+,fr0
	fmov @r2+,fr1
	fmov @r2+,fr2
	fmov @r2+,fr3
	fmul fr11,fr0
	mov.l @(0x178,PC),r0
	fmov @r0+,fr11
	fmul fr5,fr1
	fmov @r2+,fr4
	fmov @r2+,fr5
	fmul fr11,fr5
	fmov @r0+,fr11
	fmul fr6,fr2
	fmov @r2+,fr6
	fmul fr11,fr6
	fmov @r0+,fr11
	fmul fr7,fr3
	fmov @r2+,fr7
	add 0x40,r6
	fmul fr11,fr7
	fschg 
	fmov fr6,@-r6
	fmov fr4,@-r6
	fmov fr2,@-r6
	fmov fr0,@-r6
	fschg 
	add 0xE0,r6

loc_8C129F18:
	cmp/pz r8
	bt loc_8c129f58
	mov r8,r0
	cmp/eq 0xFF,r0
	bt.s loc_8c129f54
	cmp/eq 0xFE,r0
	bf loc_8c129f38
	mov.l @(0x15C,PC),r0
	jsr @r0
	mov.l @(0x3C,r15),r7
	bt loc_8c12a018
	fmov @r4+,fr2
	mov.l @r4+,r1
	bra loc_8c129d6c
	fmov @r4+,fr3
	#align4_nop

loc_8C129F38:
	mov.l @(0x3C,r15),r7
	cmp/eq 0xFD,r0
	mov 0x24,r0
	mov.l @(0x148,PC),r1
	bf loc_8c129f54
	fmov @(r0,r15),fr1
	jsr @r1
	fmul fr1,fr15
	bt loc_8c12a018
	fmov @r4+,fr2
	mov.l @r4+,r1
	bra loc_8c129d6c
	fmov @r4+,fr3
	#align4_nop

loc_8C129F54:
	bra loc_8c129f76
	fldi1 fr15

loc_8C129F58:
	cmp/pl r8
	mov 0x38,r0
	bf loc_8c129f70
	fmov @(r0,r15),fr10
	mov 0x30,r0
	fmov @(r0,r15),fr8
	mov 0x34,r0
	fmov @(r0,r15),fr9
	mov 0x09,r0
	shld r0,r8
	mov.l @(0x124,PC),r0
	add r0,r8

loc_8C129F70:
	mov 0x24,r0
	fmov @(r0,r15),fr1
	fmul fr1,fr15


loc_8C129F76:
	mov.l @r4+,r0

loc_8C129F78:
	cmp/pl r0
	mov.l @(0xE0,PC),r9
	bt.s loc_8c129f90
	cmp/pz r0
	mov r0,r8
	mov r11,r0
	mov.l r5,@(r0,r10)
	bt loc_8c12a018
	fmov @r4+,fr2
	mov.l @r4+,r1
	bra loc_8c129d6c
	fmov @r4+,fr3

loc_8C129F90:
	mov r0,r1
	mov 0xFB,r2
	mov.l @r9+,r3
	and 0x40,r0
	shld r2,r0
	mov 0xFD,r2
	and r2,r3
	or r3,r0
	tst 0x10,r0
	add 0x20,r4
	bf.s loc_8c129fae
	lds r0,fpul
	or 0x10,r0
	mov r9,r2
	mov.l r0,@-r2

loc_8C129FAE:
	mov.l @(0x28,r15),r2
	movt r3
	mov r1,r0
	cmp/pz r2
	mov 0x1B,r2
	bt.s loc_8c129fbe
	and 0x03,r0
	xor 0x01,r0

loc_8C129FBE:
	shld r2,r0
	cmp/pl r3
	mov 0x03,r3
	fschg 
	shld r2,r3
	pref @r4
	not r3,r3
	mov.l @r9+,r2
	and r3,r2
	fsts fpul,fr0
	or r0,r2
	lds r2,fpul
	add 0xE0,r4
	fsts fpul,fr1
	add 0x10,r6
	fmov @r9+,fr2
	fmov fr2,@-r6
	add 0x20,r5
	fmov fr0,@-r6
	fschg 
	pref @r6
	bf.s loc_8c129ff2
	add 0x20,r6
	pref @r6
	add 0x20,r6
	add 0x20,r5

loc_8C129FF2:
	rotcr r12
	mov r1,r0
	bt.s loc_8c12a038
	shll r12
	tst 0x08,r0
	bf loc_8c12a010
	bsr loc_8c12a0a0
	nop 
	bra loc_8c129f78
	mov.l @r4+,r0
	nop 
	nop 
	bra loc_8c129f78
	mov.l @r4+,r0
	#align4_nop

loc_8C12A010:
	bsr loc_8c12aaa0
	nop 
	bra loc_8c129f78
	mov.l @r4+,r0

loc_8C12A018:
	add 0x40,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	mov.l @r15+,r14
	fmov @r15+,fr12
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	rts 
	nop 
	#align4_nop

loc_8C12A038:
	mov 0x00,r1
	tst 0x40,r0
	addc r1,r12
	mov.l @(0x3C,r15),r7
	tst 0x10,r0
	bt.s loc_8c12a050
	tst 0x08,r0
	bsr loc_8c12a400
	tst 0x20,r0
	bra loc_8c129f78
	mov.l @r4+,r0
	#align4_nop

loc_8C12A050:
	bsr loc_8c12a8a0
	tst 0x20,r0
	bra loc_8c129f78
	mov.l @r4+,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C12A058:
	#data 0x8C2AA508
loc_8C12A05c:
	#data 0x8C2DEEA0
loc_8C12A060:
	#data 0x8C32B448
loc_8C12A064:
	#data bank16.loc_8c16BE50
loc_8C12A068:
	#data bank16.loc_8c16BE60
loc_8C12A06c:
	#data 0x8C2D6B98
loc_8C12A070:
	#data 0x8C2D6B9c
loc_8C12A074:
	#data bank16.loc_8c16BD88
loc_8C12A078:
	#data bank16.loc_8c16BD8c
loc_8C12A07C:
	#data bank16.loc_8c16BD94
loc_8C12A080:
	#data bank16.loc_8c16BD90
loc_8C12A084:
	#data loc_8c12F0E0
loc_8C12A088:
	#data loc_8c12FB60
loc_8C12A08c:
	#data 0x8C2AA4C4
loc_8C12A090:
	#data 0x8C2DEE8c
loc_8C12A094:
	#data 0x8C2D6824

;==============================================
	#align16_nop

;==============================================
loc_8C12A0A0:
	tst r8,r8
	mov r8,r0
	bf loc_8c12a0a8
	bra loc_8c12a1d2

loc_8C12A0A8:
	tst 0x01,r0
	bf loc_8c12a0b0
	bra loc_8c12a326
	nop 

loc_8C12A0B0:
	mov.l @r4+,r3
	fldi1 fr2
	fschg 
	fldi0 fr3
	fmov fr2,@-r6
	add 0x20,r6
	fmov fr2,@r6
	mov.l @r4,r0
	mov r4,r14
	tst 0x01,r0
	add 0x20,r4
	bf loc_8c12a0ce
	mov.l @(0x4,r14),r14
	add 0xE8,r4
	add r4,r14

loc_8C12A0CE:
	fmov @r14+,fr4
	fmov @r14,fr6
	add 0x10,r14
	fldi1 fr7
	fmov @r14,fr0
	ftrv xmtrx,fv4

loc_8C12A0DA:
	fldi1 fr7
	fdiv fr4,fr7
	dt r3
	mov.l @r4+,r0
	bt.s loc_8c12a18c
	mov.l @r4+,r14
	tst 0x01,r0
	mov r6,r2
	bt.s loc_8c12a0f4
	add r4,r14
	mov r4,r14
	add 0x18,r4
	add 0xF8,r14

loc_8C12A0F4:
	fmov @r14+,fr8
	add 0x20,r4
	pref @r4
	fmov @r14,fr10
	add 0x10,r14
	fldi1 fr11
	fmul fr7,fr6
	fmov fr0,@-r6
	fmul fr7,fr5
	fmov fr6,@-r6
	ftrv xmtrx,fv8
	fmov fr4,@-r6
	add 0xE0,r4
	mov.l r2,@r6
	fmov @r14,fr0
	dt r3
	pref @r6
	add 0x38,r6
	mov r6,r2
	fldi1 fr11
	fdiv fr8,fr11
	mov.l @r4+,r0
	bt.s loc_8c12a158
	mov.l @r4+,r14
	tst 0x01,r0
	bt.s loc_8c12a130
	add r4,r14
	mov r4,r14
	add 0x18,r4
	add 0xF8,r14

loc_8C12A130:
	add 0x20,r4
	fmov @r14+,fr4
	pref @r4
	fmov @r14,fr6
	add 0x10,r14
	fldi1 fr7
	fmul fr11,fr10
	add 0xE0,r4
	fmul fr11,fr9
	fmov fr0,@-r6
	fmov fr10,@-r6
	ftrv xmtrx,fv4
	fmov fr8,@-r6
	add 0x40,r5
	mov.l r2,@r6
	fmov @r14,fr0
	pref @r6
	bra loc_8c12a0da
	add 0x38,r6
	#align4_nop

loc_8C12A158:
	cmp/pl r0
	mov.l @r4+,r2
	bf loc_8c12a17c
	tst 0x80,r0
	mov r14,r3
	bt loc_8c12a17c
	mov r2,r0
	mov r6,r2
	shar r2
	mov.l @r4+,r14
	tst 0x01,r0
	bt.s loc_8c12a130
	add r4,r14
	mov r4,r14
	add 0x18,r4
	bra loc_8c12a130
	add 0xF8,r14
	#align4_nop

loc_8C12A17C:
	add 0x2C,r4
	pref @r4
	add 0xD0,r4
	fmov fr8,fr4
	add 0x20,r5
	bra loc_8c12a1b6
	fmov fr10,fr6
	#align4_nop

loc_8C12A18C:
	cmp/pl r0
	mov.l @r4+,r2
	bf loc_8c12a1b0
	tst 0x80,r0
	mov r14,r3
	bt loc_8c12a1b0
	mov r2,r0
	mov r6,r2
	shar r2
	mov.l @r4+,r14
	tst 0x01,r0
	bt.s loc_8c12a0f4
	add r4,r14
	mov r4,r14
	add 0x18,r4
	bra loc_8c12a0f4
	add 0xF8,r14
	#align4_nop

loc_8C12A1B0:
	add 0x2C,r4
	pref @r4
	add 0xD0,r4

loc_8C12A1B6:
	fmul fr7,fr6
	mov r6,r2
	shar r2
	fmul fr7,fr5
	fmov fr0,@-r6
	add 0xF8,r4
	fmov fr6,@-r6
	add 0x20,r5
	fmov fr4,@-r6
	mov.l r2,@r6
	fschg 
	pref @r6
	rts 
	add 0x20,r6

loc_8C12A1D2:
	mov.l @r4+,r3
	add 0x20,r6
	fschg 
	mov.l @r4,r0
	mov r4,r14
	fldi0 fr2
	tst 0x01,r0
	add 0x20,r4
	bf loc_8c12a1ea
	mov.l @(0x4,r14),r14
	add 0xE8,r4
	add r4,r14

loc_8C12A1EA:
	fmov @r14+,fr4
	mov r6,r2
	fmov @r14+,fr6
	fadd fr7,fr2
	fldi1 fr7
	fldi0 fr3
	fmov @r14+,fr0
	ftrv xmtrx,fv4

loc_8C12A1FA:
	mov.l @r4+,r0
	dt r3
	flds fr15,fpul
	fldi1 fr7
	fdiv fr4,fr7
	mov.l @r4+,r1
	bt.s loc_8c12a2d4
	fipr fv12,fv0
	tst 0x01,r0
	add r4,r1
	bt.s loc_8c12a218
	fsts fpul,fr2
	mov r4,r1
	add 0x18,r4
	add 0xF8,r1

loc_8C12A218:
	fldi0 fr0
	fcmp/gt fr0,fr3
	fmov @r14,fr0
	add 0x20,r4
	fmov @r1+,fr8
	bf loc_8c12a226
	fadd fr3,fr2


loc_8C12A226:
	fldi0 fr3
	dt r3
	fmov fr2,@-r6
	fsub fr2,fr2
	pref @r4
	add 0xE0,r4
	fmov @r1+,fr10
	fmul fr7,fr6
	fmov fr0,@-r6
	fadd fr11,fr2
	fldi1 fr11
	fmul fr7,fr5
	fmov @r1+,fr0
	add 0x20,r5
	fmov fr6,@-r6
	ftrv xmtrx,fv8
	fmov fr4,@-r6
	mov.l r2,@r6
	mov r6,r2
	pref @r6
	add 0x40,r6
	mov.l @r4+,r0
	mov.l @r4+,r14
	flds fr15,fpul
	fipr fv12,fv0
	fldi1 fr11
	bt.s loc_8c12a2a4
	fdiv fr8,fr11
	tst 0x01,r0
	add r4,r14
	bt.s loc_8c12a26c
	fsts fpul,fr2
	mov r4,r14
	add 0x18,r4
	add 0xF8,r14

loc_8C12A26C:
	fldi0 fr0
	fcmp/gt fr0,fr3
	fmov @r1,fr0
	add 0x20,r4
	fmov @r14+,fr4
	bf loc_8c12a27a
	fadd fr3,fr2

loc_8C12A27A:
	fldi0 fr3
	fmov fr2,@-r6
	fsub fr2,fr2
	pref @r4
	add 0xE0,r4
	fmov @r14+,fr6
	fmul fr11,fr10
	fmov fr0,@-r6
	fadd fr7,fr2
	fldi1 fr7
	fmul fr11,fr9
	fmov @r14+,fr0
	add 0x20,r5
	fmov fr10,@-r6
	ftrv xmtrx,fv4
	fmov fr8,@-r6
	mov.l r2,@r6
	mov r6,r2
	pref @r6
	bra loc_8c12a1fa
	add 0x40,r6

loc_8C12A2A4:
	cmp/pl r0
	fsts fpul,fr2
	mov r6,r2
	bf.s loc_8c12a2c8
	shar r2
	tst 0x80,r0
	mov r14,r3
	bt loc_8c12a2c8
	mov.l @r4+,r0
	tst 0x01,r0
	mov.l @r4+,r14
	bt.s loc_8c12a26c
	add r4,r14
	mov r4,r14
	add 0x18,r4
	bra loc_8c12a26c
	add 0xF8,r14
	#align4_nop

loc_8C12A2C8:
	add 0x30,r4
	pref @r4
	add 0xD0,r4
	fmov fr8,fr4
	bra loc_8c12a300
	fmov fr10,fr6

loc_8C12A2D4:
	cmp/pl r0
	fsts fpul,fr2
	mov r6,r2
	bf.s loc_8c12a2f8
	shar r2
	tst 0x80,r0
	mov r1,r3
	bt loc_8c12a2f8
	mov.l @r4+,r0
	tst 0x01,r0
	mov.l @r4+,r1
	bt.s loc_8c12a218
	add r4,r1
	mov r4,r1
	add 0x18,r4
	bra loc_8c12a218
	add 0xF8,r1
	#align4_nop

loc_8C12A2F8:
	add 0x30,r4
	mov r14,r1
	pref @r4
	add 0xD0,r4

loc_8C12A300:
	fldi0 fr0
	fcmp/gt fr0,fr3
	fmov @r1,fr10
	bf loc_8c12a30a
	fadd fr3,fr2


loc_8C12A30A:
	fldi0 fr3
	fmul fr7,fr6
	fmov fr2,@-r6
	fmul fr7,fr5
	fmov fr10,@-r6
	add 0xF8,r4
	fmov fr6,@-r6
	add 0x20,r5
	fmov fr4,@-r6
	mov.l r2,@r6
	fschg 
	pref @r6
	rts 
	add 0x20,r6

loc_8C12A326:
	mov 0x7F,r2
	mov.l @r4+,r3
	add 0xE0,r6
	mov.l @r4,r0
	add 0x7F,r2
	fschg 
	add 0x37,r2
	tst 0x01,r0
	mov r4,r14
	bf.s loc_8c12a342
	add 0x20,r4
	mov.l @(0x4,r14),r14
	add 0xE8,r4
	add r4,r14

loc_8C12A342:
	fmov @r14+,fr4

loc_8C12A344:
	fmov @r14+,fr6
	mov r6,r7
	fldi0 fr2
	fadd fr7,fr2
	fldi1 fr7
	add 0x40,r6
	fldi0 fr3
	add 0x20,r5
	fmov @r14+,fr0
	ftrv xmtrx,fv4
	fldi0 fr11
	dt r3
	mov.l @r4+,r0
	bt.s loc_8c12a3dc
	mov r14,r1
	fipr fv12,fv0
	tst 0x01,r0
	mov.l @r4+,r14
	bf.s loc_8c12a38c
	fldi1 fr7
	fdiv fr4,fr7
	pref @r4

loc_8C12A370:
	fcmp/gt fr11,fr3
	add r4,r14
	flds fr15,fpul
	fipr fv0,fv8
	pref @r14
	bf.s loc_8c12a3b8
	fsts fpul,fr2
	fadd fr3,fr2
	fldi0 fr3
	bra loc_8c12a3a6
	ftrc fr11,fpul
	#align4_nop

loc_8C12A388:
	add 0xE4,r4
	fldi1 fr7

loc_8C12A38C:
	fdiv fr4,fr7

loc_8C12A38E:
	add 0x18,r4
	fcmp/gt fr11,fr3
	flds fr15,fpul
	fipr fv0,fv8
	mov r4,r14
	add 0xE0,r14
	pref @r4
	bf.s loc_8c12a3b8
	fsts fpul,fr2
	fadd fr3,fr2
	ftrc fr11,fpul
	fldi0 fr3

loc_8C12A3A6:
	sts fpul,r0
	cmp/gt r2,r0
	shll2 r0
	bf loc_8c12a3ba
	fschg 
	fmov @(r0,r8),fr3
	bra loc_8c12a3ba
	fschg 
	#align4_nop

loc_8C12A3B8:
	fldi0 fr3

loc_8C12A3BA:
	fmov @r1,fr0
	fmul fr7,fr6
	fmov fr2,@-r6
	fmul fr7,fr5
	fmov fr0,@-r6
	tst r3,r3
	fmov fr6,@-r6
	fmov fr4,@-r6
	bt.s loc_8c12a3d2
	mov.l r7,@r6
	fmov @r14+,fr4
	bra loc_8c12a344

loc_8C12A3D2:
	pref @r6
	add 0x20,r6
	rts 
	fschg 
	#align4_nop

loc_8C12A3DC:
	mov r6,r7
	shar r7
	cmp/pl r0
	bf.s loc_8c12a388
	fipr fv12,fv0
	tst 0x80,r0
	fldi1 fr7
	bt loc_8c12a388
	mov.l @r4+,r3
	mov.l @r4+,r0
	mov.l @r4+,r14
	tst 0x01,r0
	fdiv fr4,fr7
	bf loc_8c12a38e
	bra loc_8c12a370
	pref @r4

;==============================================
	#align16_nop

;==============================================
loc_8C12A400:
	mov.l r10,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @r4+,r3

loc_8C12A408:
	mov 0x00,r11
	bsr loc_8c12a680
	mov 0x00,r9
	bt.s loc_8c12a432
	rotcl r9
	bsr loc_8c12a720
	add 0x01,r11
	bsr loc_8c12a680
	nop 
	bt.s loc_8c12a4a6
	rotcl r9
	bsr loc_8c12a720
	add 0x01,r11

loc_8C12A422:
	bsr loc_8c12a680
	nop 
	bt.s loc_8c12a526
	rotcl r9
	bsr loc_8c12a720
	add 0x01,r11
	bf loc_8c12a422
	bt loc_8c12a48a

loc_8C12A432:
	dt r3
	add 0x01,r11
	bsr loc_8c12a680
	dt r3
	bf.s loc_8c12a4dc
	rotcl r9

loc_8c12a43e:
	mov.l @r4,r0
	mov r4,r14
	tst 0x01,r0
	add 0x20,r4
	bf.s loc_8c12a450
	fldi1 fr7
	add 0xE8,r4
	mov.l @(0x4,r14),r14
	add r4,r14

loc_8C12A450:
	fmov @r14+,fr4
	fmov @r14+,fr5

loc_8C12A454:
	fmov @r14+,fr6
	mov 0x20,r1
	mov.l @r4,r0
	add 0x20,r4
	pref @r4
	ftrv xmtrx,fv4
	tst 0x01,r0
	add 0xE0,r4
	bf.s loc_8c12a470
	mov r4,r14
	mov 0x08,r1
	mov.l @(0x4,r14),r14
	add 0x08,r14
	add r4,r14

loc_8C12A470:
	flds fr7,fpul
	sts fpul,r0
	cmp/hi r0,r12
	add 0x01,r11
	bf.s loc_8c12a518
	rotcl r9
	dt r3
	fldi1 fr7
	bt loc_8c12a48a
	add r1,r4
	fmov @r14+,fr4
	bra loc_8c12a454
	fmov @r14+,fr5

loc_8C12A48A:
	mov.l @r4+,r0
	cmp/pl r0
	bf.s loc_8c12a498
	tst 0x80,r0
	bf.s loc_8c12a408
	mov.l @r4+,r3
	add 0xFC,r4

loc_8C12A498:
	lds.l @r15+,pr
	mov 0x01,r0
	mov.l @r15+,r11
	add 0xFC,r4
	mov.l @r15+,r10
	rts 
	or r0,r12

loc_8C12A4A6:
	bsr loc_8c12a760
	dt r3
	add 0xF8,r4
	mov.l @(0x4,r4),r0
	tst 0x01,r0
	bt loc_8c12a4b4
	add 0xE8,r4

loc_8C12A4B4:
	add 0xF8,r4
	mov.l @(0x4,r4),r0
	tst 0x01,r0
	bt loc_8c12a4be
	add 0xE8,r4

loc_8C12A4BE:
	bsr loc_8c12a680
	nop 
	bsr loc_8c12a760
	mov 0x00,r11
	mov 0x01,r11
	clrt 
	bsr loc_8c12a800
	mov 0x00,r0
	mov.l @r4,r0
	tst 0x01,r0
	add 0x08,r4
	bt loc_8c12a4d8
	add 0x18,r4

loc_8C12A4D8:
	bra loc_8c12a574
	nop 

loc_8C12A4DC:
	bsr loc_8c12a760
	mov 0x01,r11
	add 0xF8,r4
	mov.l @(0x4,r4),r0
	tst 0x01,r0
	bt loc_8c12a4ea
	add 0xE8,r4

loc_8C12A4EA:
	add 0xF8,r4
	mov.l @(0x4,r4),r0
	tst 0x01,r0
	bt loc_8c12a4f4
	add 0xE8,r4

loc_8C12A4F4:
	bsr loc_8c12a680
	nop 
	bsr loc_8c12a760
	mov 0x00,r11
	mov 0x01,r11
	clrt 
	bsr loc_8c12a800
	mov 0x00,r0
	clrt 
	bsr loc_8c12a7c0
	mov 0x01,r0
	mov.l @r4,r0
	tst 0x01,r0
	add 0x08,r4
	bt loc_8c12a514
	add 0x18,r4

loc_8C12A514:
	bra loc_8c12a574
	nop 

loc_8C12A518:
	add 0xF8,r4
	mov.l @(0x4,r4),r0
	tst 0x01,r0
	bt loc_8c12a522
	add 0xE8,r4

loc_8C12A522:
	bsr loc_8c12a680
	nop 

loc_8C12A526:
	bsr loc_8c12a760
	nop 
	add 0xF8,r4
	mov.l @(0x4,r4),r0
	tst 0x01,r0
	bt loc_8c12a534
	add 0xE8,r4

loc_8C12A534:
	add 0xF8,r4
	mov.l @(0x4,r4),r0
	tst 0x01,r0
	bt loc_8c12a53e
	add 0xE8,r4

loc_8C12A53E:
	add 0xF8,r4
	mov.l @(0x4,r4),r0
	tst 0x01,r0
	bt loc_8c12a548
	add 0xE8,r4

loc_8C12A548:
	bsr loc_8c12a680
	nop 
	bsr loc_8c12a760
	add 0xFE,r11
	bsr loc_8c12a680
	nop 
	bsr loc_8c12a760
	add 0x01,r11
	mov.l @r4,r0
	tst 0x01,r0
	add 0x08,r4
	bt loc_8c12a562
	add 0x18,r4

loc_8C12A562:
	add 0x01,r11
	mov r12,r0
	tst 0x01,r0
	bt.s loc_8c12a58a
	mov r9,r0
	bsr loc_8c12a780
	nop 
	bra loc_8c12a58a
	mov r9,r0

loc_8C12A574:
	bsr loc_8c12a680
	add 0x01,r11
	bsr loc_8c12a760
	rotcl r9
	mov r12,r0
	tst 0x01,r0
	bt.s loc_8c12a58a
	mov r9,r0
	bsr loc_8c12a780
	nop 
	mov r9,r0

loc_8C12A58A:
	and 0x07,r0
	shll2 r0
	braf r0
	nop 

;==============================================
	nop
	nop

;==============================================
loc_8c12a596:
	bra loc_8c12a5b2
	nop 

;==============================================
loc_8c12a59a:
	bra loc_8c12a5d0
	nop 

;==============================================
loc_8c12a59e:
	bra loc_8c12a5ea
	nop 

;==============================================
loc_8c12a5a2:
	bra loc_8c12a5fa
	nop 

;==============================================
loc_8c12a5a6:
	bra loc_8c12a61a
	nop 

;==============================================
loc_8c12a5aa:
	bra loc_8c12a628
	nop 

;==============================================
	nop
	nop

;==============================================
loc_8c12a5b2:
	mov r11,r0
	clrt 
	bsr loc_8c12a800
	add 0xFE,r0
	mov r11,r0
	clrt 
	bsr loc_8c12a7c0
	add 0xFF,r0
	mov r11,r0
	dt r3
	bsr loc_8c12a800
	add 0xFF,r0
	bf loc_8c12a574
	bra loc_8c12a48a
	nop 

;==============================================
loc_8c12a5d0:
	clrt 
	bsr loc_8c12a7c0
	mov r11,r0
	mov r11,r0
	clrt 
	bsr loc_8c12a800
	add 0xFF,r0
	dt r3
	bsr loc_8c12a7c0
	mov r11,r0
	bf loc_8c12a574
	bra loc_8c12a48a
	nop 

;==============================================
loc_8c12a5ea:
	mov r11,r0
	sett 
	bsr loc_8c12a800
	add 0xFE,r0
	dt r3
	bt loc_8c12a616
	bra loc_8c12a43e
	nop 

;==============================================
loc_8c12a5fa:
	mov r11,r0
	clrt 
	bsr loc_8c12a800
	add 0xFE,r0
	mov r11,r0
	clrt 
	bsr loc_8c12a7c0
	add 0xFF,r0
	dt r3
	bsr loc_8c12a7c0
	mov r11,r0
	bt loc_8c12a616
	bra loc_8c12a422
	add 0x01,r11

;==============================================
loc_8c12a616:
	bra loc_8c12a48a
	nop 

;==============================================
loc_8c12a61a:
	mov r11,r0
	dt r3
	bsr loc_8c12a800
	add 0xFF,r0
	bf loc_8c12a574
	bra loc_8c12a48a
	nop 

;==============================================
loc_8c12a628:
	mov r11,r0
	tst 0x01,r0
	bt loc_8c12a64a
	mov r11,r0
	clrt 
	bsr loc_8c12a800
	add 0xFF,r0
	mov r11,r0
	clrt 
	bsr loc_8c12a800
	add 0xFE,r0
	mov r11,r0
	clrt 
	bsr loc_8c12a800
	add 0xFF,r0
	bra loc_8c12a65a
	nop 

;==============================================
loc_8c12a64a:
	mov r11,r0
	clrt 
	bsr loc_8c12a800
	add 0xFE,r0
	mov r11,r0
	clrt 
	bsr loc_8c12a800
	add 0xFF,r0

loc_8c12a65a:
	dt r3
	bsr loc_8c12a7c0
	mov r11,r0
	bf loc_8c12a574
	bra loc_8c12a48a
	nop 
 
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;==============================================
loc_8C12A680:
	mov.l @r4,r0
	tst 0x01,r0
	bf.s loc_8c12a6a4
	fmov @r4+,fr4
	mov.l @r4+,r0
	add r4,r0
	fmov @r0+,fr4
	fmov @r0+,fr5
	fmov @r0+,fr6
	fldi1 fr7
	fmov @r0+,fr2
	fmov @r0+,fr0
	ftrv xmtrx,fv4
	fmov @r0+,fr1
	fldi0 fr3
	add 0x20,r4
	bra loc_8c12a6b8
	mov r0,r2

loc_8C12A6A4:
	fmov @r4+,fr5
	fmov @r4+,fr6
	fldi1 fr7
	fmov @r4+,fr2
	fmov @r4+,fr0
	ftrv xmtrx,fv4
	fmov @r4+,fr1
	fldi0 fr3
	mov r4,r2
	add 0x28,r4

loc_8C12A6B8:
	fldi0 fr11
	fipr fv12,fv0
	pref @r4
	add 0xE0,r4
	flds fr7,fpul
	sts fpul,r0
	fldi1 fr7
	fdiv fr4,fr7
	fsts fpul,fr4
	fcmp/gt fr11,fr3
	fipr fv0,fv8
	fmov fr15,fr2
	bf loc_8c12a708
	fadd fr3,fr2
	tst r8,r8
	fldi0 fr3
	bt.s loc_8c12a70c
	mov 0x01,r1
	tst r1,r8
	bf.s loc_8c12a6fe
	ftrc fr11,fpul
	mov 0x7F,r1
	add 0x7F,r1
	sts fpul,r0
	add 0x37,r1
	cmp/gt r1,r0
	shll2 r0
	bf loc_8c12a708
	mov.l @(r0,r8),r0
	lds r0,fpul
	fsts fpul,fr3
	flds fr4,fpul
	sts fpul,r0
	rts 
	cmp/hi r0,r12

loc_8C12A6FE:
	fldi1 fr2
	flds fr4,fpul
	sts fpul,r0
	rts 
	cmp/hi r0,r12

loc_8C12A708:
	flds fr4,fpul
	sts fpul,r0

loc_8C12A70C:
	fldi0 fr3
	rts 
	cmp/hi r0,r12

;==============================================
	#align16_nop

;==============================================
loc_8C12A720:
	fschg 
	add 0x20,r6
	fmov @r2,fr0
	fmul fr7,fr6
	fmov fr2,@-r6
	fmul fr7,fr5
	fmov fr0,@-r6
	mov r6,r2
	fmov fr6,@-r6
	dt r3
	fmov fr4,@-r6
	bt.s loc_8c12a744
	fschg 
	mov.l r6,@r6
	add 0x20,r5
	pref @r6
	rts 
	add 0x20,r6

;==============================================
loc_8C12A744:
	shar r2
	mov.l r2,@r6
	add 0x20,r5
	sett 
	pref @r6
	rts 
	add 0x20,r6

;==============================================
	#align16_nop

;==============================================
loc_8C12A760:
	mov 0x05,r10
	mov r11,r0
	and 0x03,r0
	fschg 
	shld r10,r0
	mov.l @(0x124,PC),r10
	fmov @r2,fr0
	add r0,r10
	fmov fr2,@-r10
	fmov fr0,@-r10
	fmov fr6,@-r10
	fmov fr4,@-r10
	rts 
	fschg 

;==============================================
	#align16_nop

;==============================================
loc_8C12A780:
	mov 0x05,r1
	mov.l @(0x10C,PC),r10
	mov r11,r0
	and 0x03,r0
	mov r10,r2
	shld r1,r0
	fschg 
	add r0,r10
	add 0xF8,r10
	mov r11,r0
	fmov @r10,fr2
	add 0xFF,r0
	mov r2,r10
	and 0x03,r0
	shld r1,r0
	add r0,r2
	mov r11,r0
	fmov fr2,@-r2
	add 0xFE,r0
	and 0x03,r0
	shld r1,r0
	add r0,r10
	fmov fr2,@-r10
	rts 
	fschg 


;==============================================
	#align16_nop

;==============================================
loc_8C12A7C0:
	and 0x03,r0
	mov 0x05,r2
	mov.l @(0xC4,PC),r10
	shld r2,r0
	fschg 
	add r0,r10
	fmov @r10+,fr0
	fmov @r10+,fr2
	add 0x20,r6
	fmov @r10+,fr4
	fmul fr3,fr2
	fmov @r10+,fr6
	fmul fr3,fr1
	fmov fr6,@-r6
	mov r6,r2
	fmov fr4,@-r6
	add 0x20,r5
	fmov fr2,@-r6
	bf.s loc_8c12a7ec
	fmov fr0,@-r6
	shar r2
	sett 

loc_8C12A7EC:
	mov.l r2,@r6
	fschg 
	pref @r6
	rts 
	add 0x20,r6

;==============================================
	#align16_nop

;==============================================
loc_8C12A800:
	and 0x03,r0
	shll2 r0
	mov.l @(0x84,PC),r10
	shll2 r0
	add r0,r0
	mov r10,r2
	add r0,r10
	mov r11,r0
	and 0x03,r0
	fmov @r10,fr2
	shll2 r0
	shll2 r0
	add r0,r0
	add r0,r2
	fmov @r2,fr1
	lds r12,fpul
	fsts fpul,fr0
	fsub fr2,fr0
	add 0x18,r10
	fsub fr2,fr1
	add 0x18,r2
	fdiv fr1,fr0
	lds r7,fpul
	fsts fpul,fr1
	fschg 
	fmov @r2,fr4
	add 0xF8,r2
	fmov @r10,fr2
	add 0xF8,r10
	fsub fr2,fr4
	fsub fr3,fr5
	add 0x20,r6
	fmac fr0,fr4,fr2
	fmac fr0,fr5,fr3
	fmov fr2,@-r6
	fmov @r2,fr4
	add 0xF8,r2
	fmov @r10,fr2
	add 0xF8,r10
	fsub fr2,fr4
	fsub fr3,fr5
	fmac fr0,fr4,fr2
	fmac fr0,fr5,fr3
	fmov fr2,@-r6
	fschg 
	fmov fr1,@-r6
	fmov @r2,fr5
	add 0xFC,r2
	fmov @r10,fr3
	add 0xFC,r10
	fmov @r2,fr4
	fmov @r10,fr2
	fsub fr3,fr5
	fsub fr2,fr4
	mov 0xF0,r2
	fmac fr0,fr5,fr3
	shll16 r2
	fmac fr0,fr4,fr2
	shll8 r2
	fmul fr1,fr3
	add 0x20,r5
	fmul fr1,fr2
	fmov fr3,@-r6
	fmov fr2,@-r6
	bt loc_8c12a884
	mov r6,r2

loc_8C12A884:
	mov.l r2,@-r6
	pref @r6
	rts 
	add 0x20,r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c12a88c:
	#data 0x8C2DEEE0
loc_8c12a890:
	#data 0x8C2DEF00

;==============================================
	#align16_nop

;==============================================
loc_8C12A8A0:
	mov.l r10,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @r4+,r3

loc_8C12A8A8:
	bsr loc_8c12aa00
	mov 0x00,r9
	mov r9,r0
	cmp/eq 0x00,r0
	bt loc_8c12a90e
	cmp/eq 0x07,r0
	bt loc_8c12a92c
	bsr loc_8c12a680
	mov 0x00,r11
	bsr loc_8c12a760
	nop 
	bsr loc_8c12a680
	mov 0x01,r11
	bsr loc_8c12a760
	nop 
	bsr loc_8c12a680
	mov 0x02,r11
	bsr loc_8c12a760
	nop 
	mov r12,r0
	tst 0x01,r0
	bt.s loc_8c12a8da
	shll2 r9
	bsr loc_8c12a780
	nop 

loc_8C12A8DA:
	braf r9
	nop

;==============================================
	nop
	nop
;==============================================
loc_8c12a8e2:
	bra loc_8c12a94e
	nop 

;==============================================
loc_8c12a8e6:
	bra loc_8c12a96c
	nop 

;==============================================
loc_8c12a8ea:
	bra loc_8c12a98c
	nop 

;==============================================
loc_8c12a8ee:
	bra loc_8c12a9a6
	nop 

;==============================================
loc_8c12a8f2:
	bra loc_8c12a9c6
	nop 

;==============================================
loc_8c12a8f6:
	bra loc_8c12a9e0
	nop 

;==============================================
	nop
	nop

;==============================================
loc_8C12A8FE:
	dt r3
	bf loc_8c12a8a8
	mov 0x01,r0
	lds.l @r15+,pr
	or r0,r12
	mov.l @r15+,r11
	rts 
	mov.l @r15+,r10

;==============================================
loc_8C12A90E:
	mov r3,r9
	bsr loc_8c12a680
	mov 0x03,r3
	bsr loc_8c12a720
	nop 
	bsr loc_8c12a680
	nop 
	bsr loc_8c12a720
	nop 
	bsr loc_8c12a680
	nop 
	bsr loc_8c12a720
	nop 
	bra loc_8c12a8fe
	mov r9,r3

loc_8C12A92c:
	mov.l @r4,r0
	tst 0x01,r0
	add 0x08,r4
	bt loc_8c12a936
	add 0x18,r4

loc_8C12A936:
	mov.l @r4,r0
	tst 0x01,r0
	add 0x08,r4
	bt loc_8c12a940
	add 0x18,r4

loc_8C12A940:
	mov.l @r4,r0
	tst 0x01,r0
	add 0x08,r4
	bt loc_8c12a94a
	add 0x18,r4

loc_8C12A94a:
	bra loc_8c12a8fe
	nop 

;==============================================
loc_8c12a94e:
	clrt 
	bsr loc_8c12a7c0
	mov 0x00,r0
	clrt 
	bsr loc_8c12a7c0
	mov 0x01,r0
	clrt 
	mov 0x02,r11
	bsr loc_8c12a800
	mov 0x00,r0
	sett 
	bsr loc_8c12a800
	mov 0x01,r0
	bra loc_8c12a8fe
	nop 

;==============================================
loc_8c12a96c:
	clrt 
	bsr loc_8c12a7c0
	mov 0x00,r0
	clrt 
	mov 0x01,r11
	bsr loc_8c12a800
	mov 0x00,r0
	clrt 
	mov 0x02,r11
	bsr loc_8c12a7c0
	mov 0x02,r0
	sett 
	bsr loc_8c12a800
	mov 0x01,r0
	bra loc_8c12a8fe
	nop 

;==============================================
loc_8c12a98c:
	clrt 
	bsr loc_8c12a7c0
	mov 0x00,r0
	clrt 
	mov 0x01,r11
	bsr loc_8c12a800
	mov 0x00,r0
	sett 
	mov 0x02,r11
	bsr loc_8c12a800
	mov 0x00,r0
	bra loc_8c12a8fe
	nop 

;==============================================
loc_8c12a9a6:
	clrt 
	mov 0x01,r11
	bsr loc_8c12a800
	mov 0x00,r0
	clrt 
	bsr loc_8c12a7c0
	mov 0x01,r0
	clrt 
	mov 0x02,r11
	bsr loc_8c12a800
	mov 0x00,r0
	sett 
	bsr loc_8c12a7c0
	mov 0x02,r0
	bra loc_8c12a8fe
	nop 

;==============================================
loc_8c12a9c6:
	clrt 
	mov 0x01,r11
	bsr loc_8c12a800
	mov 0x00,r0
	clrt 
	bsr loc_8c12a7c0
	mov 0x01,r0
	sett 
	mov 0x02,r11
	bsr loc_8c12a800
	mov 0x01,r0
	bra loc_8c12a8fe
	nop 

;==============================================
loc_8c12a9e0:
	clrt 
	mov 0x02,r11
	bsr loc_8c12a800
	mov 0x00,r0
	clrt 
	bsr loc_8c12a800
	mov 0x01,r0
	sett 
	bsr loc_8c12a7c0
	mov 0x02,r0
	bra loc_8c12a8fe
	nop 

;==============================================
	#align16_nop

;==============================================
loc_8C12AA00:
	mov r4,r1
	mov.l @r4,r0
	tst 0x01,r0
	bf.s loc_8c12aa18
	fmov @r4+,fr4
	mov.l @r4+,r0
	add r4,r0
	fmov @r0+,fr4
	fmov @r0+,fr5
	fmov @r0+,fr6
	bra loc_8c12aa20
	fldi1 fr7

loc_8C12AA18:
	fmov @r4+,fr5
	fmov @r4,fr6
	fldi1 fr7
	add 0x18,r4

loc_8C12AA20:
	pref @r4
	add 0x20,r4
	pref @r4
	add 0xE0,r4
	ftrv xmtrx,fv4
	mov.l @r4,r0
	tst 0x01,r0
	bf.s loc_8c12aa40
	fmov @r4+,fr0
	mov.l @r4+,r0
	add r4,r0
	fmov @r0+,fr0
	fmov @r0+,fr1
	fmov @r0+,fr2
	bra loc_8c12aa48
	fldi1 fr3

loc_8C12AA40:
	fmov @r4+,fr1
	fmov @r4,fr2
	fldi1 fr3
	add 0x18,r4

loc_8C12AA48:
	add 0x20,r4
	pref @r4
	add 0xE0,r4
	ftrv xmtrx,fv0
	mov.l @r4,r0
	tst 0x01,r0
	flds fr7,fpul
	bf.s loc_8c12aa68
	fmov @r4+,fr4
	mov.l @r4+,r0
	add r4,r0
	fmov @r0+,fr4
	fmov @r0+,fr5
	fmov @r0+,fr6
	bra loc_8c12aa6e
	fldi1 fr7

loc_8C12AA68:
	fmov @r4+,fr5
	fmov @r4,fr6
	fldi1 fr7

loc_8C12AA6E:
	mov r1,r4
	sts fpul,r0
	ftrv xmtrx,fv4
	cmp/hi r0,r12
	flds fr3,fpul
	rotcl r9
	sts fpul,r0
	cmp/hi r0,r12
	flds fr7,fpul
	rotcl r9
	sts fpul,r0
	cmp/hi r0,r12
	rts 
	rotcl r9

;==============================================
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;==============================================
loc_8C12AAA0:
	tst r8,r8
	mov r8,r0
	bf loc_8c12aaa8
	bra loc_8c12abb6

loc_8C12AAA8:
	tst 0x01,r0
	bf loc_8c12aab0
	bra loc_8c12acfa
	nop 

loc_8C12AAB0:
	mov.l @r4+,r9
	fldi1 fr2
	fschg 
	fldi0 fr3
	mov 0x03,r3
	fmov fr2,@-r6
	add 0x20,r6
	fmov fr2,@r6
	mov.l @r4,r0
	mov r4,r14
	tst 0x01,r0
	add 0x20,r4
	bf loc_8c12aad0
	mov.l @(0x4,r14),r14
	add 0xE8,r4
	add r4,r14

loc_8C12AAD0:
	fmov @r14+,fr4
	fmov @r14,fr6
	add 0x10,r14
	fldi1 fr7
	fmov @r14,fr0
	ftrv xmtrx,fv4

loc_8C12AADC:
	fldi1 fr7
	fdiv fr4,fr7
	dt r3
	mov.l @r4+,r0
	bt.s loc_8c12ab80
	mov.l @r4+,r14
	tst 0x01,r0
	mov r6,r2
	bt.s loc_8c12aaf6
	add r4,r14
	mov r4,r14
	add 0x18,r4
	add 0xF8,r14

loc_8C12AAF6:
	fmov @r14+,fr8
	add 0x20,r4
	pref @r4
	fmov @r14,fr10
	add 0x10,r14
	fldi1 fr11
	fmul fr7,fr6
	fmov fr0,@-r6
	fmul fr7,fr5
	fmov fr6,@-r6
	ftrv xmtrx,fv8
	fmov fr4,@-r6
	add 0xE0,r4
	mov.l r2,@r6
	fmov @r14,fr0
	dt r3
	pref @r6
	add 0x38,r6
	mov r6,r2
	fldi1 fr11
	fdiv fr8,fr11
	mov.l @r4+,r0
	bt.s loc_8c12ab58
	mov.l @r4+,r14
	tst 0x01,r0
	bt.s loc_8c12ab32
	add r4,r14
	mov r4,r14
	add 0x18,r4
	add 0xF8,r14

loc_8C12AB32:
	add 0x20,r4
	fmov @r14+,fr4
	pref @r4
	fmov @r14,fr6
	add 0x10,r14
	fldi1 fr7
	fmul fr11,fr10
	add 0xE0,r4
	fmul fr11,fr9
	fmov fr0,@-r6
	fmov fr10,@-r6
	ftrv xmtrx,fv4
	fmov fr8,@-r6
	add 0x40,r5
	mov.l r2,@r6
	fmov @r14,fr0
	pref @r6
	bra loc_8c12aadc
	add 0x38,r6

loc_8C12AB58:
	dt r9
	mov r6,r2
	bt.s loc_8c12ab70
	shar r2
	tst 0x01,r0
	mov 0x03,r3
	bt.s loc_8c12ab32
	add r4,r14
	mov r4,r14
	add 0x18,r4
	bra loc_8c12ab32
	add 0xF8,r14

loc_8C12AB70:
	add 0x30,r4
	pref @r4
	add 0xD0,r4
	fmov fr8,fr4
	add 0x20,r5
	bra loc_8c12ab9e
	fmov fr10,fr6
	#align4_nop

loc_8C12AB80:
	dt r9
	mov r6,r2
	bt.s loc_8c12ab98
	shar r2
	tst 0x01,r0
	mov 0x03,r3
	bt.s loc_8c12aaf6
	add r4,r14
	mov r4,r14
	add 0x18,r4
	bra loc_8c12aaf6
	add 0xF8,r14

loc_8C12AB98:
	add 0x30,r4
	pref @r4
	add 0xD0,r4

loc_8C12AB9E:
	fmul fr7,fr6
	fmov fr0,@-r6
	fmul fr7,fr5
	fmov fr6,@-r6
	add 0x20,r5
	fmov fr4,@-r6
	add 0xF8,r4
	mov.l r2,@r6
	fschg 
	pref @r6
	rts 
	add 0x20,r6

;==============================================
loc_8C12ABB6:
	mov.l @r4+,r9
	add 0x20,r6
	fschg 
	mov 0x03,r3
	mov.l @r4,r0
	mov r4,r14
	fldi0 fr2
	tst 0x01,r0
	add 0x20,r4
	bf loc_8c12abd0
	mov.l @(0x4,r14),r14
	add 0xE8,r4
	add r4,r14

loc_8C12ABD0:
	fmov @r14+,fr4
	mov r6,r2
	fmov @r14+,fr6
	fadd fr7,fr2
	fldi1 fr7
	fldi0 fr3
	fmov @r14+,fr0
	ftrv xmtrx,fv4

loc_8C12ABE0:
	mov.l @r4+,r0
	dt r3
	flds fr15,fpul
	fldi1 fr7
	fdiv fr4,fr7
	mov.l @r4+,r1
	bt.s loc_8c12acb0
	fipr fv12,fv0
	tst 0x01,r0
	add r4,r1
	bt.s loc_8c12abfe
	fsts fpul,fr2
	mov r4,r1
	add 0x18,r4
	add 0xF8,r1

loc_8C12ABFE:
	fldi0 fr0
	fcmp/gt fr0,fr3
	fmov @r14,fr0
	add 0x20,r4
	fmov @r1+,fr8
	bf loc_8c12ac0c
	fadd fr3,fr2

loc_8C12AC0C:
	fldi0 fr3
	dt r3
	fmov fr2,@-r6
	fsub fr2,fr2
	pref @r4
	add 0xE0,r4
	fmov @r1+,fr10
	fmul fr7,fr6
	fmov fr0,@-r6
	fadd fr11,fr2
	fldi1 fr11
	fmul fr7,fr5
	fmov @r1+,fr0
	add 0x20,r5
	fmov fr6,@-r6
	ftrv xmtrx,fv8
	fmov fr4,@-r6
	mov.l r2,@r6
	mov r6,r2
	pref @r6
	add 0x40,r6
	mov.l @r4+,r0
	mov.l @r4+,r14
	flds fr15,fpul
	fipr fv12,fv0
	fldi1 fr11
	bt.s loc_8c12ac8a
	fdiv fr8,fr11
	tst 0x01,r0
	add r4,r14
	bt.s loc_8c12ac52
	fsts fpul,fr2
	mov r4,r14
	add 0x18,r4
	add 0xF8,r14

loc_8C12AC52:
	fldi0 fr0
	fcmp/gt fr0,fr3
	fmov @r1,fr0
	add 0x20,r4
	fmov @r14+,fr4
	bf loc_8c12ac60
	fadd fr3,fr2

loc_8C12AC60:
	fldi0 fr3
	fmov fr2,@-r6
	fsub fr2,fr2
	pref @r4
	add 0xE0,r4
	fmov @r14+,fr6
	fmul fr11,fr10
	fmov fr0,@-r6
	fadd fr7,fr2
	fldi1 fr7
	fmul fr11,fr9
	fmov @r14+,fr0
	add 0x20,r5
	fmov fr10,@-r6
	ftrv xmtrx,fv4
	fmov fr8,@-r6
	mov.l r2,@r6
	mov r6,r2
	pref @r6
	bra loc_8c12abe0
	add 0x40,r6

loc_8C12AC8A:
	dt r9
	fsts fpul,fr2
	mov r6,r2
	bt.s loc_8c12aca4
	shar r2
	tst 0x01,r0
	mov 0x03,r3
	bt.s loc_8c12ac52
	add r4,r14
	mov r4,r14
	add 0x18,r4
	bra loc_8c12ac52
	add 0xF8,r14

loc_8C12ACA4:
	add 0x30,r4
	pref @r4
	add 0xD0,r4
	fmov fr8,fr4
	bra loc_8c12acd4
	fmov fr10,fr6

loc_8C12ACB0:
	dt r9
	fsts fpul,fr2
	mov r6,r2
	bt.s loc_8c12accc
	shar r2
	tst 0x01,r0
	mov 0x03,r3
	bt.s loc_8c12abfe
	add r4,r1
	mov r4,r1
	add 0x18,r4
	bra loc_8c12abfe
	add 0xF8,r1
	nop 

loc_8C12ACCC:
	add 0x30,r4
	mov r14,r1
	pref @r4
	add 0xD0,r4

loc_8C12ACD4:
	fldi0 fr0
	fcmp/gt fr0,fr3
	fmov @r1,fr10
	bf loc_8c12acde
	fadd fr3,fr2

loc_8C12ACDE:
	fldi0 fr3
	fmul fr7,fr6
	fmov fr2,@-r6
	fmul fr7,fr5
	fmov fr10,@-r6
	add 0x20,r5
	fmov fr6,@-r6
	add 0xF8,r4
	fmov fr4,@-r6
	mov.l r2,@r6
	fschg 
	pref @r6
	rts 
	add 0x20,r6

;==============================================
loc_8C12ACFA:
	mov 0x7F,r2
	mov 0x03,r3
	mov.l @r4+,r9
	add 0xE0,r6
	mov.l @r4,r0
	add 0x7F,r2
	fschg 
	add 0x37,r2
	tst 0x01,r0
	mov r4,r14
	bf.s loc_8c12ad18
	add 0x20,r4
	mov.l @(0x4,r14),r14
	add 0xE8,r4
	add r4,r14

loc_8C12AD18:
	fmov @r14+,fr4

loc_8C12AD1A:
	fmov @r14+,fr6
	mov r6,r7
	fldi0 fr2
	fadd fr7,fr2
	fldi1 fr7
	add 0x40,r6
	fldi0 fr3
	add 0x20,r5
	fmov @r14+,fr0
	ftrv xmtrx,fv4
	fldi0 fr11
	dt r3
	mov.l @r4+,r0
	bt.s loc_8c12adb0
	mov r14,r1
	fipr fv12,fv0
	tst 0x01,r0
	mov.l @r4+,r14
	bf.s loc_8c12ad60
	fldi1 fr7
	fdiv fr4,fr7
	pref @r4

loc_8C12AD46:
	fcmp/gt fr11,fr3
	add r4,r14
	flds fr15,fpul
	fipr fv0,fv8
	pref @r14
	bf.s loc_8c12ad8c
	fsts fpul,fr2
	fadd fr3,fr2
	fldi0 fr3
	bra loc_8c12ad7a
	ftrc fr11,fpul

loc_8C12AD5C:
	add 0xE4,r4
	fldi1 fr7

loc_8C12AD60:
	fdiv fr4,fr7

loc_8C12AD62:
	add 0x18,r4
	fcmp/gt fr11,fr3
	flds fr15,fpul
	fipr fv0,fv8
	mov r4,r14
	add 0xE0,r14
	pref @r4
	bf.s loc_8c12ad8c
	fsts fpul,fr2
	fadd fr3,fr2
	ftrc fr11,fpul
	fldi0 fr3

loc_8C12AD7A:
	sts fpul,r0
	cmp/gt r2,r0
	shll2 r0
	bf loc_8c12ad8e
	fschg 
	fmov @(r0,r8),fr3
	bra loc_8c12ad8e
	fschg 
	#align4_nop

loc_8C12AD8C:
	fldi0 fr3

loc_8C12AD8E:
	fmov @r1,fr0
	fmul fr7,fr6
	fmov fr2,@-r6
	fmul fr7,fr5
	fmov fr0,@-r6
	tst r3,r3
	fmov fr6,@-r6
	fmov fr4,@-r6
	bt.s loc_8c12ada6
	mov.l r7,@r6
	fmov @r14+,fr4
	bra loc_8c12ad1a

loc_8C12ADA6:
	pref @r6
	add 0x20,r6
	rts 
	fschg 

;==============================================
	#align16_nop

;==============================================
loc_8C12ADB0:
            ; CODE XREF from loc_8c12acd4 (+0x60)
	mov r6,r7
	shar r7
	dt r9
	bt.s loc_8c12ad5c
	fipr fv12,fv0
	mov.l @r4+,r14
	tst 0x01,r0
	mov.l @(0xC,PC),r3
	fldi1 fr7
	bf.s loc_8c12ad62
	fdiv fr4,fr7
	bra loc_8c12ad46
	pref @r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c12adcc:
	#data 0x00000003
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000

;==============================================
loc_8C12ADE0:
	fldi1 fr4

loc_8C12ADE2:
	add 0x18,r4
	mov.l @(0x390,PC),r7
	fldi1 fr1
	fmov fr15,@-r15
	fmov @r7,fr0
	fmov fr14,@-r15
	fmov fr13,@-r15
	fdiv fr0,fr1
	fmov fr12,@-r15
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov 0x00,r0
	sts.l pr,@-r15
	add 0xC0,r15
	fldi1 fr7
	fmov fr4,@(r0,r15)
	mov 0x04,r0
	fabs fr0
	fmov fr0,@(r0,r15)
	mov.l @(0x374,PC),r0
	fmov fr7,@r7
	mov.l @r0,r1
	mov.l @(0x374,PC),r2
	mov.l r1,@(0x8,r15)
	mov.l @r2,r1
	mov.l @(0x374,PC),r0
	mov.l @(0x368,PC),r2
	mov.l r1,@(0x10,r15)
	mov.l @r2,r3
	mov.l @r0,r1
	mov.l r3,@(0xC,r15)
	fmov @r5+,fr10
	mov.l r1,@(0x14,r15)
	fmov @r5+,fr8
	fmov @r5+,fr9
	mov.l @r5+,r12
	mov 0x38,r0
	fmov fr10,@(r0,r15)
	mov 0x30,r0
	fmov fr8,@(r0,r15)
	mov 0x34,r0
	fmov fr9,@(r0,r15)
	fmov @r5+,fr14
	fmov @r5+,fr12
	fmov @r5+,fr13
	fmul fr1,fr12
	mov.l @r5+,r0
	fmul fr1,fr13
	mov.l r0,@(0x24,r15)
	mov.l @r5+,r7
	fmul fr1,fr14
	mov.l r7,@(0x3C,r15)
	mov.l @(0x324,PC),r0
	mov.l @r0+,r1
	mov.l @r0+,r2
	mov.l @r0+,r3
	mov.l r1,@(0x18,r15)
	mov.l r2,@(0x1C,r15)
	mov.l r3,@(0x20,r15)
	mov.l @(0x348,PC),r0
	mov.l @r0+,r5
	mov.l r5,@(0x28,r15)
	mov.l @r0+,r6
	mov.l r6,@(0x2C,r15)
	mov.l @(0x300,PC),r10
	mov r15,r3
	mov.l @r4+,r8
	add 0x04,r3
	mov.l @r10,r10
	mov 0xFF,r11
	fmov fr4,fr11
	or r5,r8
	fcmp/gt fr11,fr7
	fmov @r4+,fr2
	mov.l @r4+,r1
	or r6,r1
	bf.s loc_8c12aeca
	fmov @r4+,fr3
	bt loc_8c12aea4
	nop 

loc_8C12AE8C:
	mov.l @(0x28,r15),r3
	mov.l @(0x2C,r15),r0
	or r3,r8
	mov r15,r3
	fmov @r3+,fr11
	or r0,r1
	fldi1 fr7
	fcmp/gt fr11,fr7
	mov r4,r0
	add 0x30,r0
	bf.s loc_8c12aeca
	pref @r0

loc_8C12AEA4:
	mov 0x02,r2
	mov r1,r0
	shll16 r2
	shll8 r2
	mov.l @(0x2F8,PC),r9
	or r2,r8
	or 0xC0,r0
	swap.w r0,r0
	mov.l @r9,r9
	or 0x10,r0
	swap.b r0,r0
	or 0xFC,r0
	xor r9,r0
	swap.b r0,r0
	swap.w r0,r0
	add r2,r2
	mov r0,r1
	not r2,r2
	and r2,r8

loc_8C12AECA:
	mov r8,r0
	fmov @r4+,fr4
	shlr16 r0
	fmov @r4+,fr5
	shlr8 r0
	fmov @r4+,fr6
	and 0x07,r0
	mov 0x04,r2
	shll2 r0
	ftrv xmtrx,fv4
	fmov @r3+,fr1
	shll8 r2
	fmov @r4+,fr0
	cmp/eq r0,r11
	mov r0,r11
	mov 0xE0,r6
	fmul fr1,fr0
	shll16 r2
	bt.s loc_8c12af04
	mov.l @(r0,r10),r5
	mov 0xFF,r0
	shll16 r0
	shll8 r0
	or 0x38,r0
	mov r5,r9
	shlr16 r9
	shlr8 r9
	mov.l r9,@r0
	mov.l r9,@(0x4,r0)

loc_8C12AF04:
	add 0xFF,r2
	lds r12,fpul
	mov 0xFE,r0
	fadd fr0,fr7
	and r5,r2
	fsts fpul,fr1
	shll8 r6
	fcmp/gt fr1,fr7
	shll16 r6
	or r2,r6
	fsub fr0,fr7
	and r0,r12
	mov.l @(0x254,PC),r9
	bf.s loc_8c12afa8
	fsub fr0,fr7
	fcmp/gt fr1,fr7
	bf.s loc_8c12afa8
	add 0x01,r12

loc_8C12AF28:
	mov r4,r2
	add 0x2C,r4
	mov.l @r4+,r0
	mov.l r8,@r6
	mov r8,r1
	add r0,r4
	mov.l @r4+,r8
	tst r8,r8
	bf loc_8c12af40
	bra loc_8c12b130
	nop

;==============================================
	#align16_nop

;==============================================
loc_8C12AF40:
	mov r15,r9
	add 0x18,r9
	fmov @r9+,fr5
	fmov @r9+,fr6
	add 0x0C,r2
	fmov @r9+,fr7
	mov r1,r0
	tst 0x10,r0
	bf.s loc_8c12af9e
	tst 0x20,r0
	bt loc_8c12af9e
	fmov @r2+,fr0
	fmov @r2+,fr1
	fmov @r2+,fr2
	fmov @r2+,fr3
	fmul fr11,fr0
	mov.l @(0x21C,PC),r0
	fmov @r0+,fr11
	fmul fr5,fr1
	fmov @r2+,fr4
	fmov @r2+,fr5
	fmul fr11,fr5
	fmov @r0+,fr11
	fmul fr6,fr2
	fmov @r2+,fr6
	fmul fr11,fr6
	fmov @r0+,fr11
	fmul fr7,fr3
	fmov @r2+,fr7
	fschg 
	fmul fr11,fr7
	mov 0x00,r0
	mov.l r0,@(0x4,r6)
	mov.l r0,@(0x8,r6)
	mov.l r0,@(0xC,r6)
	pref @r6
	add 0x40,r6
	fmov fr6,@-r6
	fmov fr4,@-r6
	mov r11,r0
	fmov fr2,@-r6
	add 0x40,r5
	fmov fr0,@-r6
	fschg 
	pref @r6
	add 0x20,r6
	mov.l r5,@(r0,r10)

loc_8C12AF9E:
	fmov @r4+,fr2
	mov.l @r4+,r1
	bra loc_8c12ae8c
	fmov @r4+,fr3
	#align4_nop

loc_8C12AFA8:
	fmov @r3+,fr1
	mov.l @(0x1F0,PC),r0
	add 0x10,r9
	fmov @r0,fr7
	fmul fr4,fr7
	fneg fr0
	fmul fr0,fr1
	fmov fr3,@-r9
	fsub fr7,fr5
	fmov @r3+,fr3
	mov r4,r2
	mov.l @(0x1D8,PC),r0
	fcmp/gt fr1,fr5
	fmov @r0,fr7
	fmul fr0,fr3
	bf.s loc_8c12af28
	fmul fr4,fr7
	mov.l r1,@-r9
	fsub fr7,fr6
	fmov @r3+,fr0
	fcmp/gt fr3,fr6
	fmov @r3+,fr7
	fmul fr4,fr0
	bf.s loc_8c12af28
	fsub fr1,fr0
	fcmp/gt fr0,fr5
	fmov @r3+,fr5
	fmul fr4,fr7
	bt.s loc_8c12af28
	fmov fr2,@-r9
	fsub fr3,fr7
	mov.l r8,@-r9
	mov 0x08,r1
	fcmp/gt fr7,fr6
	fmov @r3+,fr6
	bt loc_8c12af28
	mov r8,r0
	tst 0x10,r0
	mov.b @(0x4,r2),r0
	add 0x08,r2
	fmov @r3+,fr7
	mov r0,r8
	fmov @r2+,fr15
	bf.s loc_8c12b038
	add 0x30,r4
	fmov @r2+,fr0
	fmov @r2+,fr1
	fmov @r2+,fr2
	fmov @r2+,fr3
	fmul fr11,fr0
	mov.l @(0x170,PC),r0
	fmov @r0+,fr11
	fmul fr5,fr1
	fmov @r2+,fr4
	fmov @r2+,fr5
	fmul fr11,fr5
	fmov @r0+,fr11
	fmul fr6,fr2
	fmov @r2+,fr6
	fmul fr11,fr6
	fmov @r0+,fr11
	fmul fr7,fr3
	fmov @r2+,fr7
	add 0x40,r6
	fmul fr11,fr7
	fschg 
	fmov fr6,@-r6
	fmov fr4,@-r6
	fmov fr2,@-r6
	fmov fr0,@-r6
	fschg 
	add 0xE0,r6

loc_8C12B038:
	cmp/pz r8
	bt loc_8c12b078
	mov r8,r0
	cmp/eq 0xFF,r0
	bt.s loc_8c12b074
	cmp/eq 0xFE,r0
	bf loc_8c12b058
	mov.l @(0x158,PC),r0
	jsr @r0
	mov.l @(0x3C,r15),r7
	bt loc_8c12b130
	fmov @r4+,fr2
	mov.l @r4+,r1
	bra loc_8c12ae8c
	fmov @r4+,fr3
	#align4_nop

loc_8C12B058:
	mov.l @(0x3C,r15),r7
	cmp/eq 0xFD,r0
	mov 0x24,r0
	mov.l @(0x144,PC),r1
	bf loc_8c12b074
	fmov @(r0,r15),fr1
	jsr @r1
	fmul fr1,fr15
	bt loc_8c12b130
	fmov @r4+,fr2
	mov.l @r4+,r1
	bra loc_8c12ae8c
	fmov @r4+,fr3
	#align4_nop

loc_8C12B074:
	bra loc_8c12b096
	fldi1 fr15

loc_8C12B078:
	cmp/pl r8
	mov 0x38,r0
	bf loc_8c12b090
	fmov @(r0,r15),fr10
	mov 0x30,r0
	fmov @(r0,r15),fr8
	mov 0x34,r0
	fmov @(r0,r15),fr9
	mov 0x09,r0
	shld r0,r8
	mov.l @(0x120,PC),r0
	add r0,r8

loc_8C12B090:
	mov 0x24,r0
	fmov @(r0,r15),fr1
	fmul fr1,fr15

loc_8C12B096:
	mov.l @r4+,r0

loc_8C12B098:
	cmp/pl r0
	mov.l @(0xD8,PC),r9
	bt.s loc_8c12b0b0
	cmp/pz r0
	mov r0,r8
	mov r11,r0
	mov.l r5,@(r0,r10)
	bt loc_8c12b130
	fmov @r4+,fr2
	mov.l @r4+,r1
	bra loc_8c12ae8c
	fmov @r4+,fr3

loc_8C12B0B0:
	mov r0,r1
	mov 0xFB,r2
	mov.l @r9+,r3
	and 0x40,r0
	shld r2,r0
	mov 0xFD,r2
	and r2,r3
	or r3,r0
	tst 0x10,r0
	add 0x20,r4
	bf.s loc_8c12b0ce
	lds r0,fpul
	or 0x10,r0
	mov r9,r2
	mov.l r0,@-r2
 
loc_8C12B0CE:
	mov.l @(0x28,r15),r2
	movt r3
	mov r1,r0
	cmp/pz r2
	mov 0x1B,r2
	bt.s loc_8c12b0de
	and 0x03,r0
	xor 0x01,r0

loc_8C12B0DE:
	shld r2,r0
	cmp/pl r3
	mov 0x03,r3
	fschg 
	shld r2,r3
	pref @r4
	not r3,r3
	mov.l @r9+,r2
	and r3,r2
	fsts fpul,fr0
	or r0,r2
	lds r2,fpul
	add 0xE0,r4
	fsts fpul,fr1
	add 0x10,r6
	fmov @r9+,fr2
	fmov fr2,@-r6
	add 0x20,r5
	fmov fr0,@-r6
	fschg 
	pref @r6
	bf.s loc_8c12b112
	add 0x20,r6
	pref @r6
	add 0x20,r6
	add 0x20,r5

loc_8C12B112:
	rotcr r12
	mov r1,r0
	bt.s loc_8c12b150
	shll r12
	tst 0x08,r0
	mov.l @(0x64,PC),r13
	bf loc_8c12b128
	bsr loc_8c12b1c0
	nop 
	bra loc_8c12b098
	mov.l @r4+,r0

loc_8C12B128:
	bsr loc_8c12bc20
	nop 
	bra loc_8c12b098
	mov.l @r4+,r0

loc_8C12B130:
	add 0x40,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	mov.l @r15+,r14
	fmov @r15+,fr12
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	rts 
	nop 
	#align4_nop

loc_8C12B150:
	mov 0x00,r1
	tst 0x40,r0
	addc r1,r12
	mov.l @(0x3C,r15),r7
	tst 0x10,r0
	mov.l @(0x28,PC),r13
	bt.s loc_8c12b168
	tst 0x08,r0
	bsr loc_8c12b560
	tst 0x20,r0
	bra loc_8c12b098
	mov.l @r4+,r0

loc_8C12B168:
	bsr loc_8c12ba20
	tst 0x20,r0
	bra loc_8c12b098
	mov.l @r4+,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C12B170:
	#data 0x8C2AA508
loc_8C12B174:
	#data 0x8C2DEEA0
loc_8C12B178:
	#data 0x8C32B448
loc_8C12B17C:
	#data bank16.loc_8c16BE50
loc_8C12B180:
	#data bank16.loc_8c16BE60
loc_8C12B184:
	#data bank16.loc_8c16BE70
loc_8C12B188:
	#data 0x8C2D6B98
loc_8C12B18c:
	#data 0x8C2D6B9c
loc_8C12B190:
	#data bank16.loc_8c16BD88
loc_8C12B194:
	#data bank16.loc_8c16BD8c
loc_8C12B198:
	#data bank16.loc_8c16BD94
loc_8C12B19C:
	#data bank16.loc_8c16BD90
loc_8C12B1A0:
	#data loc_8c12F0E0
loc_8C12B1A4:
	#data loc_8c12FB60
loc_8C12B1A8:
	#data 0x8C2AA4C4
loc_8C12B1Ac:
	#data 0x8C2DEE8c
loc_8C12B1b0:
	#data 0x8C2D6824

;==============================================
	#align16_nop

;==============================================
loc_8C12B1C0:
	tst r8,r8
	mov r8,r0
	bf loc_8c12b1c8
	bra loc_8c12b2f2

loc_8C12B1C8:
	tst 0x01,r0
	bf loc_8c12b1d0
	bra loc_8c12b46c
	nop 

loc_8C12B1D0:
	mov.l @r4+,r3
	fldi1 fr2
	fschg 
	fldi0 fr3
	fmov fr2,@-r6
	add 0x20,r6
	fmov fr2,@r6
	mov.l @r4,r0
	mov r4,r14
	tst 0x01,r0
	add 0x20,r4
	bf loc_8c12b1ee
	mov.l @(0x4,r14),r14
	add 0xE8,r4
	add r4,r14

loc_8C12B1EE:
	fmov @r14+,fr4
	fmov @r14,fr6
	add 0x10,r14
	fldi1 fr7
	fmov @r14,fr0
	ftrv xmtrx,fv4

loc_8C12B1FA:
	fldi1 fr7
	fdiv fr4,fr7
	dt r3
	mov.l @r4+,r0
	bt.s loc_8c12b2ac
	mov.l @r4+,r14
	tst 0x01,r0
	mov r6,r2
	bt.s loc_8c12b214
	add r4,r14
	mov r4,r14
	add 0x18,r4
	add 0xF8,r14

loc_8C12B214:
	fmov @r14+,fr8
	add 0x20,r4
	pref @r4
	fmov @r14,fr10
	add 0x10,r14
	fldi1 fr11
	fmul fr7,fr6
	fmov fr0,@-r6
	fmul fr7,fr5
	fmov fr6,@-r6
	ftrv xmtrx,fv8
	fmov fr4,@-r6
	add 0xE0,r4
	mov.l r2,@r6
	fmov @r14,fr0
	dt r3
	pref @r6
	add 0x38,r6
	mov r6,r2
	fldi1 fr11
	fdiv fr8,fr11
	mov.l @r4+,r0
	bt.s loc_8c12b278
	mov.l @r4+,r14
	tst 0x01,r0
	bt.s loc_8c12b250
	add r4,r14
	mov r4,r14
	add 0x18,r4
	add 0xF8,r14

loc_8C12B250:
	add 0x20,r4
	fmov @r14+,fr4
	pref @r4
	fmov @r14,fr6
	add 0x10,r14
	fldi1 fr7
	fmul fr11,fr10
	add 0xE0,r4
	fmul fr11,fr9
	fmov fr0,@-r6
	fmov fr10,@-r6
	ftrv xmtrx,fv4
	fmov fr8,@-r6
	add 0x40,r5
	mov.l r2,@r6
	fmov @r14,fr0
	pref @r6
	bra loc_8c12b1fa
	add 0x38,r6
	#align4_nop

loc_8C12B278:
	cmp/pl r0
	mov.l @r4+,r2
	bf loc_8c12b29c
	tst 0x80,r0
	mov r14,r3
	bt loc_8c12b29c
	mov r2,r0
	mov r6,r2
	shar r2
	mov.l @r4+,r14
	tst 0x01,r0
	bt.s loc_8c12b250
	add r4,r14
	mov r4,r14
	add 0x18,r4
	bra loc_8c12b250
	add 0xF8,r14
	#align4_nop

loc_8C12B29C:
	add 0x2C,r4
	pref @r4
	add 0xD0,r4
	fmov fr8,fr4
	add 0x20,r5
	bra loc_8c12b2d6
	fmov fr10,fr6
	#align4_nop

loc_8C12B2AC:
	cmp/pl r0
	mov.l @r4+,r2
	bf loc_8c12b2d0
	tst 0x80,r0
	mov r14,r3
	bt loc_8c12b2d0
	mov r2,r0
	mov r6,r2
	shar r2
	mov.l @r4+,r14
	tst 0x01,r0
	bt.s loc_8c12b214
	add r4,r14
	mov r4,r14
	add 0x18,r4
	bra loc_8c12b214
	add 0xF8,r14
	#align4_nop

loc_8C12B2D0:
	add 0x2C,r4
	pref @r4
	add 0xD0,r4

loc_8C12B2D6:
	fmul fr7,fr6
	mov r6,r2
	shar r2
	fmul fr7,fr5
	fmov fr0,@-r6
	add 0xF8,r4
	fmov fr6,@-r6
	add 0x20,r5
	fmov fr4,@-r6
	mov.l r2,@r6
	fschg 
	pref @r6
	rts 
	add 0x20,r6

;==============================================
loc_8C12B2F2:
	mov.l @r4+,r3
	add 0x20,r6
	fschg 
	mov.l @r4,r0
	mov r4,r14
	fldi0 fr2
	tst 0x01,r0
	add 0x20,r4
	bf loc_8c12b30a
	mov.l @(0x4,r14),r14
	add 0xE8,r4
	add r4,r14

loc_8C12B30A:
	fmov @r14+,fr4
	mov r6,r2
	fmov @r14+,fr6
	fadd fr7,fr2
	fldi1 fr7
	fldi0 fr3
	fmov @r14+,fr0
	ftrv xmtrx,fv4

loc_8C12B31A:
	mov.l @r4+,r0
	flds fr15,fpul
	dt r3
	mov.l @r4+,r1
	fipr fv12,fv0
	fldi1 fr7
	bt.s loc_8c12b40c
	fdiv fr4,fr7
	tst 0x01,r0
	add r4,r1
	bt.s loc_8c12b338
	fsts fpul,fr2
	mov r4,r1
	add 0x18,r4
	add 0xF8,r1

loc_8C12B338:
	fldi0 fr10
	fcmp/gt fr10,fr3
	fmov @r1+,fr8
	add 0x20,r4
	fmov @r13,fr0
	bf loc_8c12b346
	fadd fr3,fr2

loc_8C12B346:
	pref @r4
	cmp/pz r8
	fadd fr2,fr1
	fldi0 fr3
	bf loc_8c12b352
	fmac fr0,fr1,fr3

loc_8C12B352:
	fmov @r14,fr0
	fmov @r1+,fr10
	add 0xE0,r4
	fmov fr2,@-r6
	fsub fr2,fr2
	fmov fr0,@-r6
	fmul fr7,fr6
	fmov @r1+,fr0
	fadd fr11,fr2
	fldi1 fr11
	fmul fr7,fr5
	add 0x20,r5
	fmov fr6,@-r6
	dt r3
	fmov fr4,@-r6
	ftrv xmtrx,fv8
	mov.l r2,@r6
	fsub fr3,fr3
	mov.l @r4+,r0
	mov r6,r2
	pref @r6
	add 0x40,r6
	mov.l @r4+,r14
	flds fr15,fpul
	fipr fv12,fv0
	fldi1 fr11
	bt.s loc_8c12b3dc
	fdiv fr8,fr11
	tst 0x01,r0
	add r4,r14
	bt.s loc_8c12b398
	fsts fpul,fr2
	mov r4,r14
	add 0x18,r4
	add 0xF8,r14

loc_8C12B398:
	fldi0 fr0
	fcmp/gt fr0,fr3
	fmov @r14+,fr4
	add 0x20,r4
	fmov @r13,fr0
	bf loc_8c12b3a6
	fadd fr3,fr2

loc_8C12B3A6:
	pref @r4
	cmp/pz r8
	fadd fr2,fr1
	fldi0 fr3
	bf loc_8c12b3b2
	fmac fr0,fr1,fr3

loc_8C12B3B2:
	fmov @r1,fr0
	fmov @r14+,fr6
	add 0xE0,r4
	fmov fr2,@-r6
	fsub fr2,fr2
	fmov fr0,@-r6
	fmul fr11,fr10
	fmov @r14+,fr0
	fadd fr7,fr2
	fldi1 fr7
	fmul fr11,fr9
	add 0x20,r5
	fmov fr10,@-r6
	fsub fr3,fr3
	fmov fr8,@-r6
	ftrv xmtrx,fv4
	mov.l r2,@r6
	mov r6,r2
	pref @r6
	bra loc_8c12b31a
	add 0x40,r6

loc_8C12B3DC:
	cmp/pl r0
	fsts fpul,fr2
	bf loc_8c12b400
	tst 0x80,r0
	mov r14,r3
	bt loc_8c12b400
	mov.l @r4+,r0
	mov r6,r2
	shar r2
	tst 0x01,r0
	mov.l @r4+,r14
	bt.s loc_8c12b398
	add r4,r14
	mov r4,r14
	add 0x18,r4
	bra loc_8c12b398
	add 0xF8,r14
	#align4_nop

loc_8C12B400:
	add 0x30,r4
	pref @r4
	add 0xD0,r4
	fmov fr8,fr4
	bra loc_8c12b438
	fmov fr10,fr6

loc_8C12B40C:
	cmp/pl r0
	fsts fpul,fr2
	bf loc_8c12b430
	tst 0x80,r0
	mov r1,r3
	bt loc_8c12b430
	mov.l @r4+,r0
	mov r6,r2
	shar r2
	tst 0x01,r0
	mov.l @r4+,r1
	bt.s loc_8c12b338
	add r4,r1
	mov r4,r1
	add 0x18,r4
	bra loc_8c12b338
	add 0xF8,r1
	#align4_nop

loc_8C12B430:
	add 0x30,r4
	mov r14,r1
	pref @r4
	add 0xD0,r4

loc_8C12B438:
	fldi0 fr0
	fcmp/gt fr0,fr3
	fmov @r13,fr0
	bf loc_8c12b442
	fadd fr3,fr2

loc_8C12B442:
	cmp/pz r8
	fmov @r1,fr10
	fadd fr2,fr1
	fldi0 fr3
	bf loc_8c12b44e
	fmac fr0,fr1,fr3

loc_8C12B44E:
	fmul fr7,fr6
	fmov fr2,@-r6
	fmul fr7,fr5
	fmov fr10,@-r6
	mov r6,r2
	shar r2
	fmov fr6,@-r6
	add 0x20,r5
	fmov fr4,@-r6
	add 0xF8,r4
	mov.l r2,@r6
	fschg 
	pref @r6
	rts 
	add 0x20,r6

;==============================================
loc_8C12B46C:
	mov 0x7F,r2
	mov.l @r4+,r3
	add 0xE0,r6
	mov.l @r4,r0
	add 0x7F,r2
	fschg 
	add 0x37,r2
	tst 0x01,r0
	mov r4,r14
	bf.s loc_8c12b488
	add 0x20,r4
	mov.l @(0x4,r14),r14
	add 0xE8,r4
	add r4,r14

loc_8C12B488:
	fmov @r14+,fr4

loc_8C12B48A:
	fmov @r14+,fr6
	mov r6,r7
	fldi0 fr2
	fadd fr7,fr2
	fldi1 fr7
	add 0x40,r6
	fldi0 fr3
	add 0x20,r5
	fmov @r14+,fr0
	ftrv xmtrx,fv4
	fldi0 fr11
	dt r3
	mov.l @r4+,r0
	bt.s loc_8c12b530
	mov r14,r1
	fipr fv12,fv0
	tst 0x01,r0
	mov.l @r4+,r14
	bf.s loc_8c12b4d4
	fldi1 fr7
	fdiv fr4,fr7
	pref @r4

loc_8C12B4B6:
	fcmp/gt fr11,fr3
	add r4,r14
	flds fr15,fpul
	fipr fv0,fv8
	fmov @r13,fr0
	pref @r14
	bf.s loc_8c12b508
	fsts fpul,fr2
	fadd fr3,fr2
	fldi0 fr3
	bra loc_8c12b4f0
	ftrc fr11,fpul
	nop 

loc_8C12B4D0:
	add 0xE4,r4
	fldi1 fr7

loc_8C12B4D4:
	fdiv fr4,fr7

loc_8C12B4D6:
	add 0x18,r4
	fcmp/gt fr11,fr3
	flds fr15,fpul
	fipr fv0,fv8
	mov r4,r14
	fmov @r13,fr0
	add 0xE0,r14
	pref @r4
	bf.s loc_8c12b508
	fsts fpul,fr2
	fadd fr3,fr2
	ftrc fr11,fpul
	fldi0 fr3

loc_8C12B4F0:
	sts fpul,r0
	fadd fr2,fr1
	cmp/gt r2,r0
	shll2 r0
	bf loc_8c12b50c
	fcmp/gt fr3,fr1
	fschg 
	fmov @(r0,r8),fr3
	bf.s loc_8c12b50e
	fschg 
	bra loc_8c12b50e
	fmac fr0,fr1,fr3

loc_8C12B508:
	fadd fr2,fr1
	fldi0 fr3

loc_8C12B50C:
	fmac fr0,fr1,fr3

loc_8C12B50E:
	fmov @r1,fr0
	fmul fr7,fr6
	fmov fr2,@-r6
	fmul fr7,fr5
	fmov fr0,@-r6
	tst r3,r3
	fmov fr6,@-r6
	fmov fr4,@-r6
	bt.s loc_8c12b526
	mov.l r7,@r6
	fmov @r14+,fr4
	bra loc_8c12b48a

loc_8C12B526:
	pref @r6
	add 0x20,r6
	rts 
	fschg 
	nop 

loc_8C12B530:
	mov r6,r7
	shar r7
	cmp/pl r0
	bf.s loc_8c12b4d0
	fipr fv12,fv0
	tst 0x80,r0
	fldi1 fr7
	bt loc_8c12b4d0
	mov.l @r4+,r3
	mov.l @r4+,r0
	mov.l @r4+,r14
	tst 0x01,r0
	fdiv fr4,fr7
	bf loc_8c12b4d6
	bra loc_8c12b4b6
	pref @r4

;==============================================
	nop
	nop
	nop
	nop
	#align16_nop

;==============================================
loc_8C12B560:
	mov.l r10,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @r4+,r3

loc_8C12B568:
	mov 0x00,r11
	bsr loc_8c12b7e0
	mov 0x00,r9
	bt.s loc_8c12b592
	rotcl r9
	bsr loc_8c12b8a0
	add 0x01,r11
	bsr loc_8c12b7e0
	nop 
	bt.s loc_8c12b606
	rotcl r9
	bsr loc_8c12b8a0
	add 0x01,r11

loc_8C12B582:
	bsr loc_8c12b7e0
	nop 
	bt.s loc_8c12b686
	rotcl r9
	bsr loc_8c12b8a0
	add 0x01,r11
	bf loc_8c12b582
	bt loc_8c12b5ea

loc_8C12B592:
	dt r3
	add 0x01,r11
	bsr loc_8c12b7e0
	dt r3
	bf.s loc_8c12b63c
	rotcl r9

loc_8c12b59e:
	mov.l @r4,r0
	mov r4,r14
	tst 0x01,r0
	add 0x20,r4
	bf.s loc_8c12b5b0
	fldi1 fr7
	add 0xE8,r4
	mov.l @(0x4,r14),r14
	add r4,r14

loc_8C12B5B0:
	fmov @r14+,fr4
	fmov @r14+,fr5

loc_8C12B5B4:
	fmov @r14+,fr6
	mov 0x20,r1
	mov.l @r4,r0
	add 0x20,r4
	pref @r4
	ftrv xmtrx,fv4
	tst 0x01,r0
	add 0xE0,r4
	bf.s loc_8c12b5d0
	mov r4,r14
	mov 0x08,r1
	mov.l @(0x4,r14),r14
	add 0x08,r14
	add r4,r14

loc_8C12B5D0:
	flds fr7,fpul
	sts fpul,r0
	cmp/hi r0,r12
	add 0x01,r11
	bf.s loc_8c12b678
	rotcl r9
	dt r3
	fldi1 fr7
	bt loc_8c12b5ea
	add r1,r4
	fmov @r14+,fr4
	bra loc_8c12b5b4
	fmov @r14+,fr5

loc_8C12B5EA:
	mov.l @r4+,r0
	cmp/pl r0
	bf.s loc_8c12b5f8
	tst 0x80,r0
	bf.s loc_8c12b568
	mov.l @r4+,r3
	add 0xFC,r4

loc_8C12B5F8:
	lds.l @r15+,pr
	mov 0x01,r0
	mov.l @r15+,r11
	add 0xFC,r4
	mov.l @r15+,r10
	rts 
	or r0,r12

;==============================================
loc_8C12B606:
	bsr loc_8c12b8e0
	dt r3
	add 0xF8,r4
	mov.l @(0x4,r4),r0
	tst 0x01,r0
	bt loc_8c12b614
	add 0xE8,r4

loc_8C12B614:
	add 0xF8,r4
	mov.l @(0x4,r4),r0
	tst 0x01,r0
	bt loc_8c12b61e
	add 0xE8,r4

loc_8C12B61E:
	bsr loc_8c12b7e0
	nop 
	bsr loc_8c12b8e0
	mov 0x00,r11
	mov 0x01,r11
	clrt 
	bsr loc_8c12b980
	mov 0x00,r0
	mov.l @r4,r0
	tst 0x01,r0
	add 0x08,r4
	bt loc_8c12b638
	add 0x18,r4

loc_8C12B638:
	bra loc_8c12b6d4
	nop 

loc_8C12B63C:
	bsr loc_8c12b8e0
	mov 0x01,r11
	add 0xF8,r4
	mov.l @(0x4,r4),r0
	tst 0x01,r0
	bt loc_8c12b64a
	add 0xE8,r4

loc_8C12B64A:
	add 0xF8,r4
	mov.l @(0x4,r4),r0
	tst 0x01,r0
	bt loc_8c12b654
	add 0xE8,r4

loc_8C12B654:
	bsr loc_8c12b7e0
	nop 
	bsr loc_8c12b8e0
	mov 0x00,r11
	mov 0x01,r11
	clrt 
	bsr loc_8c12b980
	mov 0x00,r0
	clrt 
	bsr loc_8c12b940
	mov 0x01,r0
	mov.l @r4,r0
	tst 0x01,r0
	add 0x08,r4
	bt loc_8c12b674
	add 0x18,r4

loc_8C12B674:
	bra loc_8c12b6d4
	nop 

loc_8C12B678:
	add 0xF8,r4
	mov.l @(0x4,r4),r0
	tst 0x01,r0
	bt loc_8c12b682
	add 0xE8,r4

loc_8C12B682:
	bsr loc_8c12b7e0
	nop 

loc_8C12B686:
	bsr loc_8c12b8e0
	nop 
	add 0xF8,r4
	mov.l @(0x4,r4),r0
	tst 0x01,r0
	bt loc_8c12b694
	add 0xE8,r4

loc_8C12B694:
	add 0xF8,r4
	mov.l @(0x4,r4),r0
	tst 0x01,r0
	bt loc_8c12b69e
	add 0xE8,r4

loc_8C12B69E:
	add 0xF8,r4
	mov.l @(0x4,r4),r0
	tst 0x01,r0
	bt loc_8c12b6a8
	add 0xE8,r4

loc_8C12B6A8:
	bsr loc_8c12b7e0
	nop 
	bsr loc_8c12b8e0
	add 0xFE,r11
	bsr loc_8c12b7e0
	nop 
	bsr loc_8c12b8e0
	add 0x01,r11
	mov.l @r4,r0
	tst 0x01,r0
	add 0x08,r4
	bt loc_8c12b6c2
	add 0x18,r4

loc_8C12B6C2:
	add 0x01,r11
	mov r12,r0
	tst 0x01,r0
	bt.s loc_8c12b6ea
	mov r9,r0
	bsr loc_8c12b900
	nop 
	bra loc_8c12b6ea
	mov r9,r0

loc_8C12B6D4:
	bsr loc_8c12b7e0
	add 0x01,r11
	bsr loc_8c12b8e0
	rotcl r9
	mov r12,r0
	tst 0x01,r0
	bt.s loc_8c12b6ea
	mov r9,r0
	bsr loc_8c12b900
	nop 
	mov r9,r0

loc_8C12B6EA:
	and 0x07,r0
	shll2 r0
	braf r0
	nop 

;==============================================
	nop
	nop

;==============================================
loc_8c12b6f6:
	bra loc_8c12b712
	nop 

;==============================================
loc_8c12b6fa:
	bra loc_8c12b730
	nop 

;==============================================
loc_8c12b6fe:
	bra loc_8c12b74a
	nop 

;==============================================
loc_8c12b702:
	bra loc_8c12b75a
	nop 

;==============================================
loc_8c12b706:
	bra loc_8c12b77a
	nop 

;==============================================
loc_8c12b70a:
	bra loc_8c12b788
	nop 

;==============================================
	nop
	nop


;==============================================
loc_8c12b712:
	mov r11,r0
	clrt 
	bsr loc_8c12b980
	add 0xFE,r0
	mov r11,r0
	clrt 
	bsr loc_8c12b940
	add 0xFF,r0
	mov r11,r0
	dt r3
	bsr loc_8c12b980
	add 0xFF,r0
	bf loc_8c12b6d4
	bra loc_8c12b5ea
	nop 

;==============================================
loc_8c12b730:
	clrt 
	bsr loc_8c12b940
	mov r11,r0
	mov r11,r0
	clrt 
	bsr loc_8c12b980
	add 0xFF,r0
	dt r3
	bsr loc_8c12b940
	mov r11,r0
	bf loc_8c12b6d4
	bra loc_8c12b5ea
	nop 

;==============================================
loc_8c12b74a:
	mov r11,r0
	sett 
	bsr loc_8c12b980
	add 0xFE,r0
	dt r3
	bt loc_8c12b776
	bra loc_8c12b59e
	nop 

;==============================================
loc_8c12b75a:
	mov r11,r0
	clrt 
	bsr loc_8c12b980
	add 0xFE,r0
	mov r11,r0
	clrt 
	bsr loc_8c12b940
	add 0xFF,r0
	dt r3
	bsr loc_8c12b940
	mov r11,r0
	bt loc_8c12b776
	bra loc_8c12b582
	add 0x01,r11

loc_8c12b776:
	bra loc_8c12b5ea
	nop 

;==============================================
loc_8c12b77a:
	mov r11,r0
	dt r3
	bsr loc_8c12b980
	add 0xFF,r0
	bf loc_8c12b6d4
	bra loc_8c12b5ea
	nop 

;==============================================
loc_8c12b788:
	mov r11,r0
	tst 0x01,r0
	bt loc_8c12b7aa
	mov r11,r0
	clrt 
	bsr loc_8c12b980
	add 0xFF,r0
	mov r11,r0
	clrt 
	bsr loc_8c12b980
	add 0xFE,r0
	mov r11,r0
	clrt 
	bsr loc_8c12b980
	add 0xFF,r0
	bra loc_8c12b7ba
	nop 

;==============================================
loc_8c12b7aa:
	mov r11,r0
	clrt 
	bsr loc_8c12b980
	add 0xFE,r0
	mov r11,r0
	clrt 
	bsr loc_8c12b980
	add 0xFF,r0

;==============================================
loc_8c12b7ba:
	dt r3
	bsr loc_8c12b940
	mov r11,r0
	bf loc_8c12b6d4
	bra loc_8c12b5ea
	nop 

;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	#align16_nop

;==============================================
loc_8C12B7E0:
	mov.l @r4,r0
	tst 0x01,r0
	bf.s loc_8c12b804
	fmov @r4+,fr4
	mov.l @r4+,r0
	add r4,r0
	fmov @r0+,fr4
	fmov @r0+,fr5
	fmov @r0+,fr6
	fldi1 fr7
	fmov @r0+,fr2
	fmov @r0+,fr0
	ftrv xmtrx,fv4
	fmov @r0+,fr1
	fldi0 fr3
	add 0x20,r4
	bra loc_8c12b818
	mov r0,r2

loc_8C12B804:
	fmov @r4+,fr5
	fmov @r4+,fr6
	fldi1 fr7
	fmov @r4+,fr2
	fmov @r4+,fr0
	ftrv xmtrx,fv4
	fmov @r4+,fr1
	fldi0 fr3
	mov r4,r2
	add 0x28,r4

loc_8C12B818:
	fldi0 fr11
	fipr fv12,fv0
	pref @r4
	add 0xE0,r4
	flds fr7,fpul
	sts fpul,r0
	fldi1 fr7
	fdiv fr4,fr7
	fsts fpul,fr4
	fcmp/gt fr11,fr3
	fipr fv0,fv8
	fmov fr15,fr2
	bf loc_8c12b878
	fadd fr3,fr2
	mov r13,r1
	fmov @r1+,fr0
	tst r8,r8
	fmov @r1+,fr1
	fldi0 fr3
	bt.s loc_8c12b894
	fadd fr2,fr1
	mov 0x01,r1
	tst r1,r8
	bf.s loc_8c12b86e
	ftrc fr11,fpul
	mov 0x7F,r1
	fldi0 fr3
	add 0x7F,r1
	sts fpul,r0
	add 0x37,r1
	cmp/gt r1,r0
	shll2 r0
	bf loc_8c12b890
	mov.l @(r0,r8),r0
	fcmp/gt fr3,fr1
	lds r0,fpul
	bf.s loc_8c12b866
	fsts fpul,fr3
	fmac fr0,fr1,fr3

loc_8C12B866:
	flds fr4,fpul
	sts fpul,r0
	rts 
	cmp/hi r0,r12

;==============================================
loc_8C12B86E:
	fldi1 fr2
	flds fr4,fpul
	sts fpul,r0
	rts 
	cmp/hi r0,r12

;==============================================
loc_8C12B878:
	mov r13,r1
	cmp/pz r8
	fldi0 fr3
	bf loc_8c12b86e
	fmov @r1+,fr0
	flds fr4,fpul
	sts fpul,r0
	cmp/hi r0,r12
	fmov @r1+,fr1
	fadd fr2,fr1
	rts 
	fmac fr0,fr1,fr3

;==============================================
loc_8C12B890:
	flds fr4,fpul
	sts fpul,r0

loc_8C12B894:
	cmp/hi r0,r12
	rts 
	fmac fr0,fr1,fr3

;==============================================
	#align16_nop

;==============================================
loc_8C12B8A0:
	fschg 
	add 0x20,r6
	fmov @r2,fr0
	fmul fr7,fr6
	fmov fr2,@-r6
	fmul fr7,fr5
	fmov fr0,@-r6
	mov r6,r2
	fmov fr6,@-r6
	dt r3
	fmov fr4,@-r6
	bt.s loc_8c12b8c4
	fschg 
	mov.l r6,@r6
	add 0x20,r5
	pref @r6
	rts 
	add 0x20,r6

loc_8C12B8C4:
	shar r2
	mov.l r2,@r6
	add 0x20,r5
	sett 
	pref @r6
	rts 
	add 0x20,r6

;==============================================
	#align16_nop

;==============================================
loc_8C12B8E0:
	mov 0x05,r10
	mov r11,r0
	and 0x03,r0
	fschg 
	shld r10,r0
	mov.l @(0x124,PC),r10
	fmov @r2,fr0
	add r0,r10
	fmov fr2,@-r10
	fmov fr0,@-r10
	fmov fr6,@-r10
	fmov fr4,@-r10
	rts 
	fschg 

;==============================================
	#align16_nop

;==============================================
loc_8C12B900:
	mov 0x05,r1
	mov.l @(0x10C,PC),r10
	mov r11,r0
	and 0x03,r0
	mov r10,r2
	shld r1,r0
	fschg 
	add r0,r10
	add 0xF8,r10
	mov r11,r0
	fmov @r10,fr2
	add 0xFF,r0
	mov r2,r10
	and 0x03,r0
	shld r1,r0
	add r0,r2
	mov r11,r0
	fmov fr2,@-r2
	add 0xFE,r0
	and 0x03,r0
	shld r1,r0
	add r0,r10
	fmov fr2,@-r10
	rts 
	fschg 

;==============================================
	#align16_nop

;==============================================
loc_8C12B940:
	and 0x03,r0
	mov 0x05,r2
	mov.l @(0xC4,PC),r10
	shld r2,r0
	fschg 
	add r0,r10
	fmov @r10+,fr0
	fmov @r10+,fr2
	add 0x20,r6
	fmov @r10+,fr4
	fmul fr3,fr2
	fmov @r10+,fr6
	fmul fr3,fr1
	fmov fr6,@-r6
	mov r6,r2
	fmov fr4,@-r6
	add 0x20,r5
	fmov fr2,@-r6
	bf.s loc_8c12b96c
	fmov fr0,@-r6
	shar r2
	sett 

loc_8C12B96C:
	mov.l r2,@r6
	fschg 
	pref @r6
	rts 
	add 0x20,r6

;==============================================
	#align16_nop

;==============================================
loc_8C12B980:
	and 0x03,r0
	shll2 r0
	mov.l @(0x84,PC),r10
	shll2 r0
	add r0,r0
	mov r10,r2
	add r0,r10
	mov r11,r0
	and 0x03,r0
	fmov @r10,fr2
	shll2 r0
	shll2 r0
	add r0,r0
	add r0,r2
	fmov @r2,fr1
	lds r12,fpul
	fsts fpul,fr0
	fsub fr2,fr0
	add 0x18,r10
	fsub fr2,fr1
	add 0x18,r2
	fdiv fr1,fr0
	lds r7,fpul
	fsts fpul,fr1
	fschg 
	fmov @r2,fr4
	add 0xF8,r2
	fmov @r10,fr2
	add 0xF8,r10
	fsub fr2,fr4
	fsub fr3,fr5
	add 0x20,r6
	fmac fr0,fr4,fr2
	fmac fr0,fr5,fr3
	fmov fr2,@-r6
	fmov @r2,fr4
	add 0xF8,r2
	fmov @r10,fr2
	add 0xF8,r10
	fsub fr2,fr4
	fsub fr3,fr5
	fmac fr0,fr4,fr2
	fmac fr0,fr5,fr3
	fmov fr2,@-r6
	fschg 
	fmov fr1,@-r6
	fmov @r2,fr5
	add 0xFC,r2
	fmov @r10,fr3
	add 0xFC,r10
	fmov @r2,fr4
	fmov @r10,fr2
	fsub fr3,fr5
	fsub fr2,fr4
	mov 0xF0,r2
	fmac fr0,fr5,fr3
	shll16 r2
	fmac fr0,fr4,fr2
	shll8 r2
	fmul fr1,fr3
	add 0x20,r5
	fmul fr1,fr2
	fmov fr3,@-r6
	fmov fr2,@-r6
	bt loc_8c12ba04
	mov r6,r2

loc_8C12BA04:
	mov.l r2,@-r6
	pref @r6
	rts 
	add 0x20,r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c12ba0c:
	#data 0x8C2DEFE0
loc_8c12ba10:
	#data 0x8C2DF000

;==============================================
	#align16_nop

;==============================================
loc_8C12BA20:
	mov.l r10,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @r4+,r3

loc_8C12BA28:
	bsr loc_8c12bb80
	mov 0x00,r9
	mov r9,r0
	cmp/eq 0x00,r0
	bt loc_8c12ba8e
	cmp/eq 0x07,r0
	bt loc_8c12baac
	bsr loc_8c12b7e0
	mov 0x00,r11
	bsr loc_8c12b8e0
	nop 
	bsr loc_8c12b7e0
	mov 0x01,r11
	bsr loc_8c12b8e0
	nop 
	bsr loc_8c12b7e0
	mov 0x02,r11
	bsr loc_8c12b8e0
	nop 
	mov r12,r0
	tst 0x01,r0
	bt.s loc_8c12ba5a
	shll2 r9
	bsr loc_8c12b900
	nop 

loc_8C12BA5A:
	braf r9
	nop 
	
;==============================================
	nop
	nop

;==============================================
loc_8c12ba62:
	bra loc_8c12bace
	nop 

;==============================================
loc_8c12ba66:
	bra loc_8c12baec
	nop 

;==============================================
loc_8c12ba6a:
	bra loc_8c12bb0c
	nop 

;==============================================
loc_8c12ba6e:
	bra loc_8c12bb26
	nop 

;==============================================
loc_8c12ba72:
	bra loc_8c12bb46
	nop 

;==============================================
loc_8c12ba76:
	bra loc_8c12bb60
	nop 

;==============================================
	nop
	nop

;==============================================
loc_8C12BA7E:
	dt r3
	bf loc_8c12ba28
	mov 0x01,r0
	lds.l @r15+,pr
	or r0,r12
	mov.l @r15+,r11
	rts 
	mov.l @r15+,r10

;==============================================
loc_8C12BA8E:
	mov r3,r9
	bsr loc_8c12b7e0
	mov 0x03,r3
	bsr loc_8c12b8a0
	nop 
	bsr loc_8c12b7e0
	nop 
	bsr loc_8c12b8a0
	nop 
	bsr loc_8c12b7e0
	nop 
	bsr loc_8c12b8a0
	nop 
	bra loc_8c12ba7e
	mov r9,r3

loc_8C12BAAC:
	mov.l @r4,r0
	tst 0x01,r0
	add 0x08,r4
	bt loc_8c12bab6
	add 0x18,r4

loc_8C12BAB6:
	mov.l @r4,r0
	tst 0x01,r0
	add 0x08,r4
	bt loc_8c12bac0
	add 0x18,r4

loc_8C12BAC0:
	mov.l @r4,r0
	tst 0x01,r0
	add 0x08,r4
	bt loc_8c12baca
	add 0x18,r4

loc_8C12BACA:
	bra loc_8c12ba7e
	nop 

;==============================================
loc_8c12bace:
	clrt 
	bsr loc_8c12b940
	mov 0x00,r0
	clrt 
	bsr loc_8c12b940
	mov 0x01,r0
	clrt 
	mov 0x02,r11
	bsr loc_8c12b980
	mov 0x00,r0
	sett 
	bsr loc_8c12b980
	mov 0x01,r0
	bra loc_8c12ba7e
	nop 

;==============================================
loc_8c12baec:
	clrt 
	bsr loc_8c12b940
	mov 0x00,r0
	clrt 
	mov 0x01,r11
	bsr loc_8c12b980
	mov 0x00,r0
	clrt 
	mov 0x02,r11
	bsr loc_8c12b940
	mov 0x02,r0
	sett 
	bsr loc_8c12b980
	mov 0x01,r0
	bra loc_8c12ba7e
	nop 

;==============================================
loc_8c12bb0c:
	clrt 
	bsr loc_8c12b940
	mov 0x00,r0
	clrt 
	mov 0x01,r11
	bsr loc_8c12b980
	mov 0x00,r0
	sett 
	mov 0x02,r11
	bsr loc_8c12b980
	mov 0x00,r0
	bra loc_8c12ba7e
	nop 

;==============================================
loc_8c12bb26:
	clrt 
	mov 0x01,r11
	bsr loc_8c12b980
	mov 0x00,r0
	clrt 
	bsr loc_8c12b940
	mov 0x01,r0

;==============================================
loc_8c12bb34:
	clrt 
	mov 0x02,r11
	bsr loc_8c12b980
	mov 0x00,r0
	sett 
	bsr loc_8c12b940
	mov 0x02,r0
	bra loc_8c12ba7e
	nop 

;==============================================
loc_8c12bb46:
	clrt 
	mov 0x01,r11
	bsr loc_8c12b980
	mov 0x00,r0
	clrt 
	bsr loc_8c12b940
	mov 0x01,r0
	sett 
	mov 0x02,r11
	bsr loc_8c12b980
	mov 0x01,r0
	bra loc_8c12ba7e
	nop 

;==============================================
loc_8c12bb60:
	clrt 
	mov 0x02,r11
	bsr loc_8c12b980
	mov 0x00,r0
	clrt 
	bsr loc_8c12b980
	mov 0x01,r0
	sett 
	bsr loc_8c12b940
	mov 0x02,r0
	bra loc_8c12ba7e
	nop 

;==============================================
	#align16_nop

;==============================================
loc_8C12BB80:
	mov r4,r1
	mov.l @r4,r0
	tst 0x01,r0
	bf.s loc_8c12bb98
	fmov @r4+,fr4
	mov.l @r4+,r0
	add r4,r0
	fmov @r0+,fr4
	fmov @r0+,fr5
	fmov @r0+,fr6
	bra loc_8c12bba0
	fldi1 fr7

loc_8C12BB98:
	fmov @r4+,fr5
	fmov @r4,fr6
	fldi1 fr7
	add 0x18,r4

loc_8C12BBA0:
	pref @r4
	add 0x20,r4
	pref @r4
	add 0xE0,r4
	ftrv xmtrx,fv4
	mov.l @r4,r0
	tst 0x01,r0
	bf.s loc_8c12bbc0
	fmov @r4+,fr0
	mov.l @r4+,r0
	add r4,r0
	fmov @r0+,fr0
	fmov @r0+,fr1
	fmov @r0+,fr2
	bra loc_8c12bbc8
	fldi1 fr3

loc_8C12BBC0:
	fmov @r4+,fr1
	fmov @r4,fr2
	fldi1 fr3
	add 0x18,r4

loc_8C12BBC8:
	add 0x20,r4
	pref @r4
	add 0xE0,r4
	ftrv xmtrx,fv0
	mov.l @r4,r0
	tst 0x01,r0
	flds fr7,fpul
	bf.s loc_8c12bbe8
	fmov @r4+,fr4
	mov.l @r4+,r0
	add r4,r0
	fmov @r0+,fr4
	fmov @r0+,fr5
	fmov @r0+,fr6
	bra loc_8c12bbee
	fldi1 fr7

loc_8C12BBE8:
	fmov @r4+,fr5
	fmov @r4,fr6
	fldi1 fr7

loc_8C12BBEE:
	mov r1,r4
	sts fpul,r0
	ftrv xmtrx,fv4
	cmp/hi r0,r12
	flds fr3,fpul
	rotcl r9
	sts fpul,r0
	cmp/hi r0,r12
	flds fr7,fpul
	rotcl r9
	sts fpul,r0
	cmp/hi r0,r12
	rts 
	rotcl r9

;==============================================
	nop
	nop
	nop
	nop
	nop
;==============================================
	#align16_nop

;==============================================
loc_8C12BC20:
	tst r8,r8
	mov r8,r0
	bf loc_8c12bc28
	bra loc_8c12bd36

loc_8C12BC28:
	tst 0x01,r0
	bf loc_8c12bc30
	bra loc_8c12be9c
	nop 

loc_8C12BC30:
	mov.l @r4+,r9
	fldi1 fr2
	fschg 
	fldi0 fr3
	mov 0x03,r3
	fmov fr2,@-r6
	add 0x20,r6
	fmov fr2,@r6
	mov.l @r4,r0
	mov r4,r14
	tst 0x01,r0
	add 0x20,r4
	bf loc_8c12bc50
	mov.l @(0x4,r14),r14
	add 0xE8,r4
	add r4,r14

loc_8C12BC50:
	fmov @r14+,fr4
	fmov @r14,fr6
	add 0x10,r14
	fldi1 fr7
	fmov @r14,fr0
	ftrv xmtrx,fv4

loc_8C12BC5C:
	fldi1 fr7
	fdiv fr4,fr7
	dt r3
	mov.l @r4+,r0
	bt.s loc_8c12bd00
	mov.l @r4+,r14
	tst 0x01,r0
	mov r6,r2
	bt.s loc_8c12bc76
	add r4,r14
	mov r4,r14
	add 0x18,r4
	add 0xF8,r14

loc_8C12BC76:
	fmov @r14+,fr8
	add 0x20,r4
	pref @r4
	fmov @r14,fr10
	add 0x10,r14
	fldi1 fr11
	fmul fr7,fr6
	fmov fr0,@-r6
	fmul fr7,fr5
	fmov fr6,@-r6
	ftrv xmtrx,fv8
	fmov fr4,@-r6
	add 0xE0,r4
	mov.l r2,@r6
	fmov @r14,fr0
	dt r3
	pref @r6
	add 0x38,r6
	mov r6,r2
	fldi1 fr11
	fdiv fr8,fr11
	mov.l @r4+,r0
	bt.s loc_8c12bcd8
	mov.l @r4+,r14
	tst 0x01,r0
	bt.s loc_8c12bcb2
	add r4,r14
	mov r4,r14
	add 0x18,r4
	add 0xF8,r14

loc_8C12BCB2:
	add 0x20,r4
	fmov @r14+,fr4
	pref @r4
	fmov @r14,fr6
	add 0x10,r14
	fldi1 fr7
	fmul fr11,fr10
	add 0xE0,r4
	fmul fr11,fr9
	fmov fr0,@-r6
	fmov fr10,@-r6
	ftrv xmtrx,fv4
	fmov fr8,@-r6
	add 0x40,r5
	mov.l r2,@r6
	fmov @r14,fr0
	pref @r6
	bra loc_8c12bc5c
	add 0x38,r6

loc_8C12BCD8:
	dt r9
	mov r6,r2
	bt.s loc_8c12bcf0
	shar r2
	tst 0x01,r0
	mov 0x03,r3
	bt.s loc_8c12bcb2
	add r4,r14
	mov r4,r14
	add 0x18,r4
	bra loc_8c12bcb2
	add 0xF8,r14

loc_8C12BCF0:
	add 0x30,r4
	pref @r4
	add 0xD0,r4
	fmov fr8,fr4
	add 0x20,r5
	bra loc_8c12bd1e
	fmov fr10,fr6
	#align4_nop

loc_8C12BD00:
	dt r9
	mov r6,r2
	bt.s loc_8c12bd18
	shar r2
	tst 0x01,r0
	mov 0x03,r3
	bt.s loc_8c12bc76
	add r4,r14
	mov r4,r14
	add 0x18,r4
	bra loc_8c12bc76
	add 0xF8,r14

loc_8C12BD18:
	add 0x30,r4
	pref @r4
	add 0xD0,r4

loc_8C12BD1E:
	fmul fr7,fr6
	fmov fr0,@-r6
	fmul fr7,fr5
	fmov fr6,@-r6
	add 0x20,r5
	fmov fr4,@-r6
	add 0xF8,r4
	mov.l r2,@r6
	fschg 
	pref @r6
	rts 
	add 0x20,r6

;==============================================
loc_8C12BD36:
	mov.l @r4+,r9
	add 0x20,r6
	fschg 
	mov 0x03,r3
	mov.l @r4,r0
	mov r4,r14
	fldi0 fr2
	tst 0x01,r0
	add 0x20,r4
	bf loc_8c12bd50
	mov.l @(0x4,r14),r14
	add 0xE8,r4
	add r4,r14

loc_8C12BD50:
	fmov @r14+,fr4
	mov r6,r2
	fmov @r14+,fr6
	fadd fr7,fr2
	fldi1 fr7
	fldi0 fr3
	fmov @r14+,fr0
	ftrv xmtrx,fv4

loc_8C12BD60:
	mov.l @r4+,r0
	flds fr15,fpul
	dt r3
	mov.l @r4+,r1
	fipr fv12,fv0
	fldi1 fr7
	bt.s loc_8c12be48
	fdiv fr4,fr7
	tst 0x01,r0
	add r4,r1
	bt.s loc_8c12bd7e
	fsts fpul,fr2
	mov r4,r1
	add 0x18,r4
	add 0xF8,r1

loc_8C12BD7E:
	fldi0 fr10
	fcmp/gt fr10,fr3
	fmov @r1+,fr8
	add 0x20,r4
	fmov @r13,fr0
	bf loc_8c12bd8c
	fadd fr3,fr2

loc_8C12BD8C:
	pref @r4
	cmp/pz r8
	fadd fr2,fr1
	fldi0 fr3
	bf loc_8c12bd98
	fmac fr0,fr1,fr3

loc_8C12BD98:
	fmov @r14,fr0
	fmov @r1+,fr10
	add 0xE0,r4
	fmov fr2,@-r6
	fsub fr2,fr2
	fmov fr0,@-r6
	fmul fr7,fr6
	fmov @r1+,fr0
	fadd fr11,fr2
	fldi1 fr11
	fmul fr7,fr5
	add 0x20,r5
	fmov fr6,@-r6
	dt r3
	fmov fr4,@-r6
	ftrv xmtrx,fv8
	mov.l r2,@r6
	fsub fr3,fr3
	mov.l @r4+,r0
	mov r6,r2
	pref @r6
	add 0x40,r6
	mov.l @r4+,r14
	flds fr15,fpul
	fipr fv12,fv0
	fldi1 fr11
	bt.s loc_8c12be22
	fdiv fr8,fr11
	tst 0x01,r0
	add r4,r14
	bt.s loc_8c12bdde
	fsts fpul,fr2
	mov r4,r14
	add 0x18,r4
	add 0xF8,r14

loc_8C12BDDE:
	fldi0 fr0
	fcmp/gt fr0,fr3
	fmov @r14+,fr4
	add 0x20,r4
	fmov @r13,fr0
	bf loc_8c12bdec
	fadd fr3,fr2

loc_8C12BDEC:
	pref @r4
	cmp/pz r8
	fadd fr2,fr1
	fldi0 fr3
	bf loc_8c12bdf8
	fmac fr0,fr1,fr3

loc_8C12BDF8:
	fmov @r1,fr0
	fmov @r14+,fr6
	add 0xE0,r4
	fmov fr2,@-r6
	fsub fr2,fr2
	fmov fr0,@-r6
	fmul fr11,fr10
	fmov @r14+,fr0
	fadd fr7,fr2
	fldi1 fr7
	fmul fr11,fr9
	add 0x20,r5
	fmov fr10,@-r6
	fsub fr3,fr3
	fmov fr8,@-r6
	ftrv xmtrx,fv4
	mov.l r2,@r6
	mov r6,r2
	pref @r6
	bra loc_8c12bd60
	add 0x40,r6

loc_8C12BE22:
	dt r9
	fsts fpul,fr2
	mov r6,r2
	bt.s loc_8c12be3c
	shar r2
	tst 0x01,r0
	mov 0x03,r3
	bt.s loc_8c12bdde
	add r4,r14
	mov r4,r14
	add 0x18,r4
	bra loc_8c12bdde
	add 0xF8,r14

loc_8C12BE3C:
	add 0x30,r4
	pref @r4
	add 0xD0,r4
	fmov fr8,fr4
	bra loc_8c12be6c
	fmov fr10,fr6

loc_8C12BE48:
	dt r9
	fsts fpul,fr2
	mov r6,r2
	bt.s loc_8c12be64
	shar r2
	tst 0x01,r0
	mov 0x03,r3
	bt.s loc_8c12bd7e
	add r4,r1
	mov r4,r1
	add 0x18,r4
	bra loc_8c12bd7e
	add 0xF8,r1
	#align4_nop

loc_8C12BE64:
	add 0x30,r4
	mov r14,r1
	pref @r4
	add 0xD0,r4

loc_8C12BE6C:
	fldi0 fr0
	fcmp/gt fr0,fr3
	fmov @r13,fr0
	bf loc_8c12be76
	fadd fr3,fr2

loc_8C12BE76:
	cmp/pz r8
	fmov @r1,fr10
	fadd fr2,fr1
	fldi0 fr3
	bf loc_8c12be82
	fmac fr0,fr1,fr3

loc_8C12BE82:
	fmul fr7,fr6
	fmov fr2,@-r6
	fmul fr7,fr5
	fmov fr10,@-r6
	fmov fr6,@-r6
	add 0x20,r5
	fmov fr4,@-r6
	add 0xF8,r4
	mov.l r2,@r6
	fschg 
	pref @r6
	rts 
	add 0x20,r6

loc_8C12BE9C:
	mov 0x7F,r2
	mov 0x03,r3
	mov.l @r4+,r9
	add 0xE0,r6
	mov.l @r4,r0
	add 0x7F,r2
	fschg 
	add 0x37,r2
	tst 0x01,r0
	mov r4,r14
	bf.s loc_8c12beba
	add 0x20,r4
	mov.l @(0x4,r14),r14
	add 0xE8,r4
	add r4,r14

loc_8C12BEBA:
	fmov @r14+,fr4

loc_8C12BEBC:
	fmov @r14+,fr6
	mov r6,r7
	fldi0 fr2
	fadd fr7,fr2
	fldi1 fr7
	add 0x40,r6
	fldi0 fr3
	add 0x20,r5
	fmov @r14+,fr0
	ftrv xmtrx,fv4
	fldi0 fr11
	dt r3
	mov.l @r4+,r0
	bt.s loc_8c12bf60
	mov r14,r1
	fipr fv12,fv0
	tst 0x01,r0
	mov.l @r4+,r14
	bf.s loc_8c12bf04
	fldi1 fr7
	fdiv fr4,fr7
	pref @r4

loc_8C12BEE8:
	fcmp/gt fr11,fr3
	add r4,r14
	flds fr15,fpul
	fipr fv0,fv8
	fmov @r13,fr0
	pref @r14
	bf.s loc_8c12bf38
	fsts fpul,fr2
	fadd fr3,fr2
	fldi0 fr3
	bra loc_8c12bf20
	ftrc fr11,fpul

loc_8C12BF00:
	add 0xE4,r4
	fldi1 fr7

loc_8C12BF04:
	fdiv fr4,fr7

loc_8C12BF06:
	add 0x18,r4
	fcmp/gt fr11,fr3
	flds fr15,fpul
	fipr fv0,fv8
	mov r4,r14
	fmov @r13,fr0
	add 0xE0,r14
	pref @r4
	bf.s loc_8c12bf38
	fsts fpul,fr2
	fadd fr3,fr2
	ftrc fr11,fpul
	fldi0 fr3

loc_8C12BF20:
	sts fpul,r0
	fadd fr2,fr1
	cmp/gt r2,r0
	shll2 r0
	bf loc_8c12bf3c
	fcmp/gt fr3,fr1
	fschg 
	fmov @(r0,r8),fr3
	bf.s loc_8c12bf3e
	fschg 
	bra loc_8c12bf3e
	fmac fr0,fr1,fr3

loc_8C12BF38:
	fadd fr2,fr1
	fldi0 fr3

loc_8C12BF3C:
	fmac fr0,fr1,fr3

loc_8C12BF3E:
	fmov @r1,fr0
	fmul fr7,fr6
	fmov fr2,@-r6
	fmul fr7,fr5
	fmov fr0,@-r6
	tst r3,r3
	fmov fr6,@-r6
	fmov fr4,@-r6
	bt.s loc_8c12bf56
	mov.l r7,@r6
	fmov @r14+,fr4
	bra loc_8c12bebc

loc_8C12BF56:
	pref @r6
	add 0x20,r6
	rts 
	fschg 
	nop 

loc_8C12BF60:
	mov r6,r7
	shar r7
	dt r9
	bt.s loc_8c12bf00
	fipr fv12,fv0
	mov.l @r4+,r14
	tst 0x01,r0
	mov.l @(0xC,PC),r3
	fldi1 fr7
	bf.s loc_8c12bf06
	fdiv fr4,fr7
	bra loc_8c12bee8
	pref @r4
 
 ;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c12bf7c:
	#data 0x00000003

;==============================================
loc_8C12BF80:
	mov r15,r1
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	fmov fr12,@-r15
 
loc_8C12BF8A:
	fmov.s fr11,@-r15
	fmov.s fr10,@-r15
	fmov.s fr9,@-r15
	fmov.s fr8,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C12C160,pc),r0 ; r0 set to 0x8C2DEEA0
	mov.l r0,@-r15
	mov.l @r4+,r0 ; r0 ??? bc r4 is ???

loc_8C12BF9A:
	cmp/pl r0
	mov.l @r15,r9
	bt/s loc_8C12BFC0
	cmp/pz r0
	mov r0,r8
	mov r11,r0
	mov.l r5,@(r0,r10)
	add 0x04,r15
	lds.l @r15+,pr
	fmov.s @r15+,fr8
	fmov.s @r15+,fr9
	fmov.s @r15+,fr10
	fmov.s @r15+,fr11
	fmov.s @r15+,fr12
	fmov.s @r15+,fr13
	fmov.s @r15+,fr14
	rts
	fmov.s @r15+,fr15

;==============================================
	nop
;==============================================
loc_8c12bfc0:
	mov r0,r1
	mov 0xFB,r2
	mov.l @r9+,r3
	and 0x40,r0
	shld r2, r0
	mov 0xFD,r2
	and r2,r3
	or r0,r3
	add 0x20,r4
	mov 0xCF,r2
	and r2,r3
	mov r1,r0
	mov r15,r2
	add 0x28,r2
	lds r3,fpul
	mov.l @(0x28,r2),r2
	cmp/pz r2
	mov 0x1B,r2
	bt/s loc_8c12bfea
	and 0x03,r0
	xor 0x01,r0

loc_8c12bfea:
	shld r2, r0
	mov 0x03,r3
	fschg
	shld r2, r3
	pref @r4
	not r3,r3
	mov.l @r9+,r2
	and r3,r2
	fsts fpul,fr0
	or r0,r2
	lds r2,fpul
	add 0xE0,r4
	fsts fpul,fr1
	add 0x10,r6
	fmov.s @r9+,fr2
	fmov.s fr2,@-r6
	add 0x20,r5
	fmov.s fr0,@-r6
	fschg
	pref @r6
	add 0x20,r6
	rotcr r12
	mov r1,r0
	bt/s loc_8c12c030
	shll r12
	tst 0x08,r0
	bt loc_8c12c028
	bsr loc_8c12c2a0
	nop
	bra loc_8c12bf9a
	mov.l @r4+,r0

loc_8c12c028:
	bsr loc_8c12c180
	nop
	bra loc_8c12bf9a
	mov.l @r4+,r0

loc_8c12c030:
	mov 0x00,r1
	tst 0x40,r0
	addc r1,r12
	tst 0x10,r0
	bt/s loc_8c12c044
	tst 0x08,r0
	bsr loc_8c12c3a0
	nop
	bra loc_8c12bf9a
	mov.l @r4+,r0

loc_8c12c044:
	bt loc_8c12c050
	bsr loc_8c12c960
	nop
	bra loc_8c12bf9a
	mov.l @r4+,r0
	#align4_nop

loc_8c12c050:
bra loc_8c12c050
nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x3B808080

;==============================================
	#align16_nop

;==============================================
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c12c060:
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000

loc_8c12c080:
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000
	#data 0x0000

loc_8c12c160:
	#data 0x8C2DEEA0
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;==============================================
	#align16_nop

;==============================================


;==============================================
loc_8c12c180:
mov.l @r4+,r3
add 0x20,r6
fschg
mov.l @r4,r0
mov r4,r14
tst 0x01,r0
add 0x20,r4
bf loc_8c12c196
mov.l @(0x04,r14),r14
add 0xE8,r4
add r4,r14

loc_8c12c196:
fmov.s @r14+,fr4
fmov.s @r14+,fr6
fldi1 fr7
fmov.s @r14+,fr2
fmov.s @r14,fr0
ftrv xmtrx,fv4

loc_8c12c1a2:
fldi0 fr3
fldi1 fr7
fdiv fr4,fr7
fmov.s fr2,@-r6
dt r3
mov.l @r4+,r0
bt/s loc_8c12c250
mov.l @r4+,r14
tst 0x01,r0
mov r6,r2
bt/s loc_8c12c1c0
add r4,r14
mov r4,r14
add 0x18,r4
add 0xF8,r14

loc_8c12c1c0:
add 0x20,r4
fmov.s @r14+,fr8
pref @r4
fmov.s @r14+,fr10
fldi1 fr11
fmul fr7,fr6
fmov.s @r14+,fr2
fmul fr7,fr5
fmov.s fr0,@-r6
ftrv xmtrx,fv8
fmov.s fr6,@-r6
add 0xE0,r4
fmov.s fr4,@-r6
mov.l r2,@r6
fmov.s @r14,fr0
dt r3
pref @r6
add 0x40,r6
fldi0 fr3
fmov.s fr2,@-r6
mov r6,r2
fldi1 fr11
fdiv fr8,fr11
mov.l @r4+,r0
bt/s loc_8c12c228
mov.l @r4+,r14
tst 0x01,r0
bt/s loc_8c12c200
add r4,r14
mov r4,r14
add 0x18,r4
add 0xF8,r14

loc_8c12c200:
add 0x20,r4
fmov.s @r14+,fr4
pref @r4
fmov.s @r14+,fr6
fldi1 fr7
fmul fr11,fr10
fmov.s @r14+,fr2
fmul fr11,fr9
fmov.s fr0,@-r6
ftrv xmtrx,fv4
fmov.s fr10,@-r6
add 0xE0,r4
fmov.s fr8,@-r6
add 0x40,r5
mov.l r2,@r6
fmov.s @r14,fr0
pref @r6
bra loc_8c12c1a2
add 0x40,r6
	nop


loc_8c12c228:
cmp/pl r0
mov r14,r3
bf loc_8c12c248
tst 0x80,r0
bt loc_8c12c248
mov.l @r4+,r0
mov r6,r2
shar r2
mov.l @r4+,r14
tst 0x01,r0
add r4,r14
bt loc_8c12c200
mov r4,r14
add 0x18,r4
bra loc_8c12c200
add 0xF8,r14

loc_8c12c248:
add 0x20,r5
fmov fr8,fr4
bra loc_8c12c270
fmov fr10,fr6

loc_8c12c250:
cmp/pl r0
mov r14,r3
bf loc_8c12c270
tst 0x80,r0
bt loc_8c12c270
mov.l @r4+,r0
mov r6,r2
shar r2
mov.l @r4+,r14
tst 0x01,r0
add r4,r14
bt loc_8c12c1c0
mov r4,r14
add 0x18,r4
bra loc_8c12c1c0
add 0xF8,r14

loc_8c12c270:
fmul fr7,fr6
mov r6,r2
shar r2
fmul fr7,fr5
fmov.s fr0,@-r6
add 0xF8,r4
fmov.s fr6,@-r6
add 0x20,r5
fmov.s fr4,@-r6
mov.l r2,@r6
fschg
pref @r6
rts
add 0x20,r6
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c12c2a0:
mov.l @r4+,r9
add 0x20,r6
fschg
mov 0x03,r3
mov.l @r4,r0
mov r4,r14
tst 0x01,r0
add 0x20,r4
bf loc_8c12c2b8
mov.l @(0x04,r14),r14
add 0xE8,r4
add r4,r14

loc_8c12c2b8:
fmov.s @r14+,fr4
fmov.s @r14+,fr6
fldi1 fr7
fmov.s @r14+,fr2
fmov.s @r14,fr0
ftrv xmtrx,fv4

loc_8c12c2c4:
fldi0 fr3
fldi1 fr7
fdiv fr4,fr7
fmov.s fr2,@-r6
dt r3
mov.l @r4+,r0
bt/s loc_8c12c368
mov.l @r4+,r14
tst 0x01,r0
mov r6,r2
bt/s loc_8c12c2e2
add r4,r14
mov r4,r14
add 0x18,r4
add 0xF8,r14

loc_8c12c2e2:
add 0x20,r4
fmov.s @r14+,fr8
pref @r4
fmov.s @r14+,fr10
fldi1 fr11
fmul fr7,fr6
fmov.s @r14+,fr2
fmul fr7,fr5
fmov.s fr0,@-r6
ftrv xmtrx,fv8
fmov.s fr6,@-r6
add 0xE0,r4
fmov.s fr4,@-r6
mov.l r2,@r6
fmov.s @r14,fr0
dt r3
pref @r6
add 0x40,r6
fldi0 fr3
fmov.s fr2,@-r6
mov r6,r2
fldi1 fr11
fdiv fr8,fr11
mov.l @r4+,r0
bt/s loc_8c12c348
mov.l @r4+,r14
tst 0x01,r0
bt/s loc_8c12c322
add r4,r14
mov r4,r14
add 0x18,r4
add 0xF8,r14

loc_8c12c322:
add 0x20,r4
fmov.s @r14+,fr4
pref @r4
fmov.s @r14+,fr6
fldi1 fr7
fmul fr11,fr10
fmov.s @r14+,fr2
fmul fr11,fr9
fmov.s fr0,@-r6
ftrv xmtrx,fv4
fmov.s fr10,@-r6
add 0xE0,r4
fmov.s fr8,@-r6
add 0x40,r5
mov.l r2,@r6
fmov.s @r14,fr0
pref @r6
bra loc_8c12c2c4
add 0x40,r6

loc_8c12c348:
dt r9
mov r6,r2
bt/s loc_8c12c360
shar r2
tst 0x01,r0
mov 0x03,r3
bt/s loc_8c12c322
add r4,r14
mov r4,r14
add 0x18,r4
bra loc_8c12c322
add 0xF8,r14

loc_8c12c360:
add 0x20,r5
fmov fr8,fr4
bra loc_8c12c380
fmov fr10,fr6

loc_8c12c368:
dt r9
mov r6,r2
bt/s loc_8c12c380
shar r2
tst 0x01,r0
mov 0x03,r3
bt/s loc_8c12c2e2
add r4,r14
mov r4,r14
add 0x18,r4
bra loc_8c12c2e2
add 0xF8,r14

loc_8c12c380:
fmul fr7,fr6
fmov.s fr0,@-r6
fmul fr7,fr5
fmov.s fr6,@-r6
add 0x20,r5
fmov.s fr4,@-r6
add 0xF8,r4
mov.l r2,@r6
fschg
pref @r6
rts
add 0x20,r6
;==============================================
	nop
	nop
	nop
	nop


loc_8c12c3a0:
mov.l r10,@-r15
mov.l r11,@-r15
sts.l pr,@-r15
mov.l @r4+,r3
fschg
fmov fr3,fr0
fmov fr7,fr12
fmov fr11,fr2
fmov fr15,fr14
fschg
fmov fr1,fr12
fmov fr3,fr14

loc_8c12c3b8:
mov 0x00,r11
bsr loc_8c12c720
mov 0x00,r9
bf loc_8c12c3c2
bra loc_8c12c4fa

loc_8c12c3c2:
rotcl r9
bsr loc_8c12c760
add 0x01,r11
bsr loc_8c12c720
nop
bf loc_8c12c3d0
bra loc_8c12c552

loc_8c12c3d0:
rotcl r9
bsr loc_8c12c760
add 0x01,r11
add 0x20,r6
mov.l @r4,r0
fschg
tst 0x01,r0
mov r4,r14
bf/s loc_8c12c3ea
add 0x20,r4
mov.l @(0x04,r14),r14
add 0xE8,r4
add r4,r14

loc_8c12c3ea:
fmov.s @r14+,fr4
fmov.s @r14+,fr6
fldi1 fr7
fmov.s @r14+,fr2
fmov.s @r14,fr0
ftrv xmtrx,fv4

loc_8c12c3f6:
fldi0 fr3
fmov.s fr2,@-r6
flds fr7,fpul
fldi1 fr7
fdiv fr4,fr7
sts fpul,r0
cmp/hi r0,r12
bt loc_8c12c4b8
dt r3
mov.l @r4+,r0
add 0x01,r11
bt/s loc_8c12c4d8
mov.l @r4+,r14
tst 0x01,r0
mov r6,r2
bt/s loc_8c12c41e
add r4,r14
mov r4,r14
add 0x18,r4
add 0xF8,r14

loc_8c12c41e:
add 0x40,r4
fmov.s @r14+,fr8
pref @r4
fmov.s @r14+,fr10
add 0xC0,r4
fldi1 fr11
fmul fr7,fr6
fmov.s @r14+,fr2
fmul fr7,fr5
fmov.s fr0,@-r6
ftrv xmtrx,fv8
fmov.s fr6,@-r6
fmov.s fr4,@-r6
add 0x20,r5
mov.l r2,@r6
fmov.s @r14,fr0
pref @r6
add 0x40,r6
fldi0 fr3
fmov.s fr2,@-r6
flds fr11,fpul
fldi1 fr11
fdiv fr8,fr11
sts fpul,r0
cmp/hi r0,r12
bt loc_8c12c4ac
dt r3
mov.l @r4+,r0
add 0x01,r11
bt/s loc_8c12c4cc
mov.l @r4+,r14
tst 0x01,r0
mov r6,r2
bt/s loc_8c12c46a
add r4,r14
mov r4,r14
add 0x18,r4
add 0xF8,r14

loc_8c12c46a:
fmov.s @r14+,fr4
add 0x40,r4
fmov.s @r14+,fr6
pref @r4
fldi1 fr7
fmul fr11,fr10
fmov.s @r14+,fr2
fmul fr11,fr9
fmov.s fr0,@-r6
ftrv xmtrx,fv4
fmov.s fr10,@-r6
add 0xC0,r4
fmov.s fr8,@-r6
add 0x20,r5
mov.l r2,@r6
fmov.s @r14,fr0
pref @r6
bra loc_8c12c3f6
add 0x40,r6

loc_8c12c490:
mov.l @r4+,r0
cmp/pl r0
bf/s loc_8c12c49e
tst 0x80,r0
bf/s loc_8c12c3b8
mov.l @r4+,r3
add 0xFC,r4

loc_8c12c49e:
lds.l @r15+,pr
mov 0x01,r0
mov.l @r15+,r11
add 0xFC,r4
mov.l @r15+,r10
rts
or r0,r12
;==============================================

loc_8c12c4ac:
add 0x20,r4
pref @r4
add 0xE0,r4
fmov fr8,fr4
bra loc_8c12c4be
fmov fr10,fr6

loc_8c12c4b8:
add 0x20,r4
pref @r4
add 0xE0,r4

loc_8c12c4be:
rotcl r9
fschg
mov r14,r2
fsts fpul,fr4
bra loc_8c12c5d2
add 0xE8,r6
	nop


loc_8c12c4cc:
add 0x20,r4
pref @r4
add 0xE0,r4
fmov fr8,fr4
bra loc_8c12c4de
fmov fr10,fr6

loc_8c12c4d8:
add 0x20,r4
pref @r4
add 0xE0,r4

loc_8c12c4de:
fmul fr7,fr6
mov r6,r2
shar r2
fmul fr7,fr5
fmov.s fr0,@-r6
add 0xF8,r4
fmov.s fr6,@-r6
add 0x20,r5
fmov.s fr4,@-r6
mov.l r2,@r6
fschg
pref @r6
bra loc_8c12c490
add 0x20,r6

loc_8c12c4fa:
dt r3
add 0x01,r11
bsr loc_8c12c720
dt r3
bf/s loc_8c12c588
rotcl r9
mov.l @r4,r0
mov r4,r14
tst 0x01,r0
add 0x20,r4
bf/s loc_8c12c518
fldi1 fr7
add 0xE8,r4
mov.l @(0x04,r14),r14
add r4,r14

loc_8c12c518:
fmov.s @r14+,fr4
fmov.s @r14+,fr5

loc_8c12c51c:
fmov.s @r14+,fr6
mov 0x20,r1
mov.l @r4,r0
add 0x20,r4
pref @r4
fipr fv12,fv4
tst 0x01,r0
add 0xE0,r4
bf/s loc_8c12c538
mov r4,r14
mov 0x08,r1
mov.l @(0x04,r14),r14
add 0x08,r14
add r4,r14

loc_8c12c538:
flds fr7,fpul
sts fpul,r0
cmp/hi r0,r12
add 0x01,r11
bf/s loc_8c12c5c4
rotcl r9
dt r3
fldi1 fr7
bt loc_8c12c490
add r1,r4
fmov.s @r14+,fr4
bra loc_8c12c51c
fmov.s @r14+,fr5

loc_8c12c552:
bsr loc_8c12c7a0
dt r3
add 0xF8,r4
mov.l @(0x04,r4),r0
tst 0x01,r0
bt loc_8c12c560
add 0xE8,r4

loc_8c12c560:
add 0xF8,r4
mov.l @(0x04,r4),r0
tst 0x01,r0
bt loc_8c12c56a
add 0xE8,r4

loc_8c12c56a:
bsr loc_8c12c720
nop
bsr loc_8c12c7a0
mov 0x00,r11
mov 0x01,r11
clrt
bsr loc_8c12c840
mov 0x00,r0
mov.l @r4,r0
tst 0x01,r0
add 0x08,r4
bt loc_8c12c584
add 0x18,r4

loc_8c12c584:
bra loc_8c12c620
nop

loc_8c12c588:
bsr loc_8c12c7a0
mov 0x01,r11
add 0xF8,r4
mov.l @(0x04,r4),r0
tst 0x01,r0
bt loc_8c12c596
add 0xE8,r4

loc_8c12c596:
add 0xF8,r4
mov.l @(0x04,r4),r0
tst 0x01,r0
bt loc_8c12c5a0
add 0xE8,r4

loc_8c12c5a0:
bsr loc_8c12c720
nop
bsr loc_8c12c7a0
mov 0x00,r11
mov 0x01,r11
clrt
bsr loc_8c12c840
mov 0x00,r0
clrt
bsr loc_8c12c800
mov 0x01,r0
mov.l @r4,r0
tst 0x01,r0
add 0x08,r4
bt loc_8c12c5c0
add 0x18,r4

loc_8c12c5c0:
bra loc_8c12c620
nop

loc_8c12c5c4:
add 0xF8,r4
mov.l @(0x04,r4),r0
tst 0x01,r0
bt loc_8c12c5ce
add 0xE8,r4

loc_8c12c5ce:
bsr loc_8c12c720
nop

loc_8c12c5d2:
bsr loc_8c12c7a0
nop
add 0xF8,r4
mov.l @(0x04,r4),r0
tst 0x01,r0
bt loc_8c12c5e0
add 0xE8,r4

loc_8c12c5e0:
add 0xF8,r4
mov.l @(0x04,r4),r0
tst 0x01,r0
bt loc_8c12c5ea
add 0xE8,r4

loc_8c12c5ea:
add 0xF8,r4
mov.l @(0x04,r4),r0
tst 0x01,r0
bt loc_8c12c5f4
add 0xE8,r4

loc_8c12c5f4:
bsr loc_8c12c720
nop
bsr loc_8c12c7a0
add 0xFE,r11
bsr loc_8c12c720
nop
bsr loc_8c12c7a0
add 0x01,r11
mov.l @r4,r0
tst 0x01,r0
add 0x08,r4
bt loc_8c12c60e
add 0x18,r4

loc_8c12c60e:
add 0x01,r11
mov r12,r0
tst 0x01,r0
bt/s loc_8c12c636
mov r9,r0
bsr loc_8c12c7c0
nop
bra loc_8c12c636
mov r9,r0

loc_8c12c620:
bsr loc_8c12c720
add 0x01,r11
bsr loc_8c12c7a0
rotcl r9
mov r12,r0
tst 0x01,r0
bt/s loc_8c12c636
mov r9,r0
bsr loc_8c12c7c0
nop
mov r9,r0

loc_8c12c636:
and 0x07,r0
shll2 r0
braf r0
nop
	nop
	nop
#data 0xA00C
	nop
#data 0xA019
	nop
#data 0xA024
	nop
#data 0xA02A
	nop
#data 0xA038
	nop
#data 0xA03D
	nop
	nop
	nop
#data 0x60B3
#data 0x0008
#data 0xB0ED
#data 0x70FE
#data 0x60B3
#data 0x0008
#data 0xB0C9
#data 0x70FF
#data 0x60B3
#data 0x4310
#data 0xB0E5
#data 0x70FF
#data 0x8BD3
#data 0xAF0A
	nop
#data 0x0008
#data 0xB0BF
#data 0x60B3
#data 0x60B3
#data 0x0008
#data 0xB0DB
#data 0x70FF
#data 0x4310
#data 0xB0B8
#data 0x60B3
#data 0x8BC6
#data 0xAEFD
	nop
#data 0x60B3
#data 0x0018
#data 0xB0D1
#data 0x70FE
#data 0x4310
#data 0x890F
#data 0xAF30
	nop
#data 0x60B3
#data 0x0008
#data 0xB0C9
#data 0x70FE
#data 0x60B3
#data 0x0008
#data 0xB0A5
#data 0x70FF
#data 0x4310
#data 0xB0A2
#data 0x60B3
#data 0x8901
#data 0xAE8A
#data 0x7B01
#data 0xAEE5
	nop
#data 0x60B3
#data 0x4310
#data 0xB0B9
#data 0x70FF
#data 0x8BA7
#data 0xAEDE
	nop
#data 0x60B3
#data 0xC801
#data 0x890D
#data 0x60B3
#data 0x0008
#data 0xB0AF
#data 0x70FF
#data 0x60B3
#data 0x0008
#data 0xB0AB
#data 0x70FE
#data 0x60B3
#data 0x0008
#data 0xB0A7
#data 0x70FF
#data 0xA008
	nop
#data 0x60B3
#data 0x0008
#data 0xB0A1
#data 0x70FE
#data 0x60B3
#data 0x0008
#data 0xB09D
#data 0x70FF
#data 0x4310
#data 0xB07A
#data 0x60B3
#data 0x8B88
#data 0xAEBF
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c12c720:
mov.l @r4,r0
fschg
tst 0x01,r0
mov r4,r14
bf/s loc_8c12c732
add 0x20,r4
mov.l @(0x04,r14),r14
add 0xE8,r4
add r4,r14

loc_8c12c732:
fmov.s @r14+,fr4
fmov.s @r14+,fr6
fldi1 fr7
fmov.s @r14+,fr2
fldi0 fr3
ftrv xmtrx,fv4
add 0x40,r4
mov r14,r2
pref @r4
add 0xC0,r4
flds fr7,fpul
fldi1 fr7
fdiv fr4,fr7
sts fpul,r0
fschg
fsts fpul,fr4
rts
cmp/hi r0,r12
;==============================================
	nop
	nop
	nop
	nop
	nop


loc_8c12c760:
fschg
add 0x20,r6
fmov.s @r2,fr0
fmul fr7,fr6
fmov.s fr2,@-r6
fmul fr7,fr5
add 0x20,r5
fmov.s fr0,@-r6
mov r6,r2
fmov.s fr6,@-r6
dt r3
fmov.s fr4,@-r6
bf loc_8c12c77e
shar r2
sett

loc_8c12c77e:
mov.l r2,@r6
fschg
pref @r6
rts
add 0x20,r6
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c12c7a0:
mov 0x05,r10
mov r11,r0
and 0x03,r0
fschg
shld r10, r0
mov.l @(loc_8c12c7bc,pc),r10
fmov.s @r2,fr0
add r0,r10
fmov.s fr2,@-r10
fmov.s fr0,@-r10
fmov.s fr6,@-r10
fmov.s fr4,@-r10
rts
fschg
;==============================================

#align4
loc_8c12c7bc:
#data loc_8c12c080


loc_8c12c7c0:
mov 0x05,r1
mov.l @(loc_8c12c7f4,pc),r10
mov r11,r0
and 0x03,r0
mov r10,r2
shld r1, r0
fschg
add r0,r10
add 0xF8,r10
mov r11,r0
fmov.s @r10,fr2
add 0xFF,r0
mov r2,r10
and 0x03,r0
shld r1, r0
add r0,r2
mov r11,r0
fmov.s fr2,@-r2
add 0xFE,r0
and 0x03,r0
shld r1, r0
add r0,r10
fmov.s fr2,@-r10
rts
fschg
;==============================================
#data 0x0000

#align4
loc_8c12c7f4:
#data loc_8c12c080
	nop
	nop
	nop
	nop


loc_8c12c800:
and 0x03,r0
mov 0x05,r2
mov.l @(loc_8c12c838,pc),r10
shld r2, r0
fschg
add r0,r10
fmov.s @r10+,fr0
fmov.s @r10+,fr2
add 0x20,r6
fmov.s @r10+,fr4
fmul fr3,fr2
fmov.s @r10+,fr6
fmul fr3,fr1
fmov.s fr6,@-r6
mov r6,r2
fmov.s fr4,@-r6
add 0x20,r5
fmov.s fr2,@-r6
bf/s loc_8c12c82c
fmov.s fr0,@-r6
shar r2
sett

loc_8c12c82c:
mov.l r2,@r6
fschg
pref @r6
rts
add 0x20,r6
;==============================================
#data 0x0000

	#align4
loc_8c12c838:
	#data loc_8c12c060
	nop
	nop


loc_8c12c840:
and 0x03,r0
shll2 r0
mov.l @(loc_8c12c950,pc),r10
shll2 r0
add r0,r0
mov r10,r2
add r0,r10
mov r11,r0
and 0x03,r0
fmov.s @r10,fr2
shll2 r0
shll2 r0
add r0,r0
add r0,r2
fmov.s @r2,fr1
lds r12,fpul
fsts fpul,fr0
fsub fr2,fr0
add 0x18,r10
fsub fr2,fr1
add 0x18,r2
fdiv fr1,fr0
lds r7,fpul
fsts fpul,fr1
fschg
fmov.s @r2,fr4
add 0xF8,r2
fmov.s @r10,fr2
add 0xF8,r10
flds fr4,fpul
sts fpul,r0
shlr16 r0
mov r0,r1
shlr8 r0
extu.b r0,r0
lds r0,fpul
float fpul,fr8
flds fr2,fpul
extu.b r1,r1
sts fpul,r0
shlr16 r0
lds r1,fpul
mov r0,r1
shlr8 r0
float fpul,fr10
extu.b r0,r0
lds r0,fpul
float fpul,fr9
fsub fr9,fr8
fmac fr0,fr8,fr9
extu.b r1,r1
ftrc fr9,fpul
sts fpul,r8
shll8 r8
lds r1,fpul
float fpul,fr11
flds fr4,fpul
fsub fr11,fr10
sts fpul,r0
fmac fr0,fr10,fr11
shlr8 r0
ftrc fr11,fpul
extu.b r0,r0
sts fpul,r1
or r1,r8
lds r0,fpul
float fpul,fr8
flds fr2,fpul
shll8 r8
sts fpul,r0
shlr8 r0
flds fr4,fpul
extu.b r0,r0
sts fpul,r1
extu.b r1,r1
lds r0,fpul
float fpul,fr9
lds r1,fpul
float fpul,fr10
fsub fr9,fr8
flds fr2,fpul
fmac fr0,fr8,fr9
sts fpul,r1
ftrc fr9,fpul
extu.b r1,r1
sts fpul,r0
or r0,r8
lds r1,fpul
float fpul,fr11
fsub fr11,fr10
shll8 r8
fmac fr0,fr10,fr11
ftrc fr11,fpul
sts fpul,r1
or r1,r8
fldi0 fr3
add 0x20,r6
lds r8,fpul
fsts fpul,fr2
fmov.s fr2,@-r6
fmov.s @r2,fr4
add 0xF8,r2
fmov.s @r10,fr2
add 0xF8,r10
fsub fr2,fr4
fsub fr3,fr5
fmac fr0,fr4,fr2
fmac fr0,fr5,fr3
fmov.s fr2,@-r6
fschg
fmov.s fr1,@-r6
fmov.s @r2,fr5
add 0xFC,r2
fmov.s @r10,fr3
add 0xFC,r10
fmov.s @r2,fr4
fmov.s @r10,fr2
fsub fr3,fr5
fsub fr2,fr4
mov 0xF0,r2
fmac fr0,fr5,fr3
shll16 r2
fmac fr0,fr4,fr2
shll8 r2
fmul fr1,fr3
add 0x20,r5
fmul fr1,fr2
fmov.s fr3,@-r6
fmov.s fr2,@-r6
bt loc_8c12c946
mov r6,r2

loc_8c12c946:
mov.l r2,@-r6
pref @r6
rts
add 0x20,r6
;==============================================
#data 0x0000

#align4
loc_8c12c950:
#data loc_8c12c060
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c12c960:
mov.l r10,@-r15
mov.l r11,@-r15
sts.l pr,@-r15
mov.l @r4+,r3

loc_8c12c968:
bsr loc_8c12cac0
mov 0x00,r9
mov r9,r0
cmp/eq 0x00,r0
bt loc_8c12c9ce
cmp/eq 0x07,r0
bt loc_8c12c9ec
bsr loc_8c12c720
mov 0x00,r11
bsr loc_8c12c7a0
nop
bsr loc_8c12c720
mov 0x01,r11
bsr loc_8c12c7a0
nop
bsr loc_8c12c720
mov 0x02,r11
bsr loc_8c12c7a0
nop
mov r12,r0
tst 0x01,r0
bt/s loc_8c12c99a
shll2 r9
bsr loc_8c12c7c0
nop

loc_8c12c99a:
braf r9
nop
	nop
	nop
#data 0xA034
	nop
#data 0xA041
	nop
#data 0xA04F
	nop
#data 0xA05A
	nop
#data 0xA068
	nop
#data 0xA073
	nop
	nop
	nop


loc_8c12c9be:
dt r3
bf loc_8c12c968
mov 0x01,r0
lds.l @r15+,pr
or r0,r12
mov.l @r15+,r11
rts
mov.l @r15+,r10
;==============================================

loc_8c12c9ce:
mov r3,r9
bsr loc_8c12c720
mov 0x03,r3
bsr loc_8c12c760
nop
bsr loc_8c12c720
nop
bsr loc_8c12c760
nop
bsr loc_8c12c720
nop
bsr loc_8c12c760
nop
bra loc_8c12c9be
mov r9,r3

loc_8c12c9ec:
mov.l @r4,r0
tst 0x01,r0
add 0x08,r4
bt loc_8c12c9f6
add 0x18,r4

loc_8c12c9f6:
mov.l @r4,r0
tst 0x01,r0
add 0x08,r4
bt loc_8c12ca00
add 0x18,r4

loc_8c12ca00:
mov.l @r4,r0
tst 0x01,r0
add 0x08,r4
bt loc_8c12ca0a
add 0x18,r4

loc_8c12ca0a:
bra loc_8c12c9be
nop
#data 0x0008
#data 0xBEF6
#data 0xE000
#data 0x0008
#data 0xBEF3
#data 0xE001
#data 0x0008
#data 0xEB02
#data 0xBF0F
#data 0xE000
#data 0x0018
#data 0xBF0C
#data 0xE001
#data 0xAFC9
	nop
#data 0x0008
#data 0xBEE7
#data 0xE000
#data 0x0008
#data 0xEB01
#data 0xBF03
#data 0xE000
#data 0x0008
#data 0xEB02
#data 0xBEDF
#data 0xE002
#data 0x0018
#data 0xBEFC
#data 0xE001
#data 0xAFB9
	nop
#data 0x0008
#data 0xBED7
#data 0xE000
#data 0x0008
#data 0xEB01
#data 0xBEF3
#data 0xE000
#data 0x0018
#data 0xEB02
#data 0xBEEF
#data 0xE000
#data 0xAFAC
	nop
#data 0x0008
#data 0xEB01
#data 0xBEE9
#data 0xE000
#data 0x0008
#data 0xBEC6
#data 0xE001
#data 0x0008
#data 0xEB02
#data 0xBEE2
#data 0xE000
#data 0x0018
#data 0xBEBF
#data 0xE002
#data 0xAF9C
	nop
#data 0x0008
#data 0xEB01
#data 0xBED9
#data 0xE000
#data 0x0008
#data 0xBEB6
#data 0xE001
#data 0x0018
#data 0xEB02
#data 0xBED2
#data 0xE001
#data 0xAF8F
	nop
#data 0x0008
#data 0xEB02
#data 0xBECC
#data 0xE000
#data 0x0008
#data 0xBEC9
#data 0xE001
#data 0x0018
#data 0xBEA6
#data 0xE002
#data 0xAF83
	nop
	nop
	nop
	nop
	nop


loc_8c12cac0:
mov r4,r1
mov.l @r4,r0
tst 0x01,r0
bf/s loc_8c12cad8
fmov.s @r4+,fr4
mov.l @r4+,r0
add r4,r0
fmov.s @r0+,fr4
fmov.s @r0+,fr5
fmov.s @r0+,fr6
bra loc_8c12cae0
fldi1 fr7

loc_8c12cad8:
fmov.s @r4+,fr5
fmov.s @r4,fr6
fldi1 fr7
add 0x18,r4

loc_8c12cae0:
pref @r4
add 0x20,r4
pref @r4
add 0xE0,r4
ftrv xmtrx,fv4
mov.l @r4,r0
tst 0x01,r0
bf/s loc_8c12cb00
fmov.s @r4+,fr0
mov.l @r4+,r0
add r4,r0
fmov.s @r0+,fr0
fmov.s @r0+,fr1
fmov.s @r0+,fr2
bra loc_8c12cb08
fldi1 fr3

loc_8c12cb00:
fmov.s @r4+,fr1
fmov.s @r4,fr2
fldi1 fr3
add 0x18,r4

loc_8c12cb08:
add 0x20,r4
pref @r4
add 0xE0,r4
ftrv xmtrx,fv0
flds fr7,fpul
mov.l @r4,r0
tst 0x01,r0
bf/s loc_8c12cb28
fmov.s @r4+,fr4
mov.l @r4+,r0
add r4,r0
fmov.s @r0+,fr4
fmov.s @r0+,fr5
fmov.s @r0+,fr6
bra loc_8c12cb2e
fldi1 fr7

loc_8c12cb28:
fmov.s @r4+,fr5
fmov.s @r4,fr6
fldi1 fr7

loc_8c12cb2e:
mov r1,r4
sts fpul,r0
ftrv xmtrx,fv4
cmp/hi r0,r12
flds fr3,fpul
rotcl r9
sts fpul,r0
cmp/hi r0,r12
flds fr7,fpul
rotcl r9
sts fpul,r0
cmp/hi r0,r12
rts
rotcl r9
;==============================================
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x61F3
#data 0xFFFB
#data 0xFFEB
#data 0xFFDB
#data 0xFFCB

loc_8C12CB6A:
fmov.s fr11,@-r15
fmov.s fr10,@-r15
fmov.s fr9,@-r15
fmov.s fr8,@-r15
sts.l pr,@-r15
mov.l @(loc_8C12CD40,pc),r0 ; r0 set to 0x8C2DEEA0
mov.l r0,@-r15
mov.l @r4+,r0 ; r0 ??? bc r4 is ???

loc_8C12CB7A:
cmp/pl r0
mov.l @r15,r9
bt/s loc_8C12CBA0
cmp/pz r0
mov r0,r8
mov r11,r0
mov.l r5,@(r0,r10)
add 0x04,r15
lds.l @r15+,pr
fmov.s @r15+,fr8
fmov.s @r15+,fr9
fmov.s @r15+,fr10
fmov.s @r15+,fr11
fmov.s @r15+,fr12
fmov.s @r15+,fr13
fmov.s @r15+,fr14
rts
fmov.s @r15+,fr15
;==============================================
	nop

#align4
loc_8c12cba0:
mov r0,r1
mov 0xFB,r2
mov.l @r9+,r3
and 0x40,r0
shld r2, r0
mov 0xFD,r2
and r2,r3
or r0,r3
add 0x20,r4
mov 0xCF,r2
and r2,r3
mov r1,r0
mov r15,r2
add 0x28,r2
lds r3,fpul
mov.l @(0x28,r2),r2
cmp/pz r2
mov 0x1B,r2
bt/s loc_8c12cbca
and 0x03,r0
xor 0x01,r0

loc_8c12cbca:
shld r2, r0
mov 0x03,r3
fschg
shld r2, r3
pref @r4
not r3,r3
mov.l @r9+,r2
and r3,r2
fsts fpul,fr0
or r0,r2
lds r2,fpul
add 0xE0,r4
fsts fpul,fr1
add 0x10,r6
fmov.s @r9+,fr2
fmov.s fr2,@-r6
add 0x20,r5
fmov.s fr0,@-r6
fschg
pref @r6
add 0x20,r6
rotcr r12
mov r1,r0
bt/s loc_8c12cc10
shll r12
tst 0x08,r0
bt loc_8c12cc08
bsr loc_8c12ce80
nop
bra loc_8c12cb7a
mov.l @r4+,r0

loc_8c12cc08:
bsr loc_8c12cd60
nop
bra loc_8c12cb7a
mov.l @r4+,r0

loc_8c12cc10:
mov 0x00,r1
tst 0x40,r0
addc r1,r12
tst 0x10,r0
bt/s loc_8c12cc24
tst 0x08,r0
bsr loc_8c12cf80
nop
bra loc_8c12cb7a
mov.l @r4+,r0

loc_8c12cc24:
bt loc_8c12cc30
bsr loc_8c12d5c0
nop
bra loc_8c12cb7a
mov.l @r4+,r0
	nop


loc_8c12cc30:
bra loc_8c12cc30
nop
#data 0x8080
#data 0x3B80
	nop
	nop
	nop
	nop

loc_8c12cc40:
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000

loc_8c12cc60:
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000

loc_8c12cd40:
#data 0xEEA0
#data 0x8C2D
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c12cd60:
mov.l @r4+,r3
add 0x20,r6
fschg
mov.l @r4,r0
mov r4,r14
tst 0x01,r0
add 0x20,r4
bf loc_8c12cd76
mov.l @(0x04,r14),r14
add 0xE8,r4
add r4,r14

loc_8c12cd76:
fmov.s @r14+,fr4
fmov.s @r14+,fr6
fldi1 fr7
fmov.s @r14+,fr2
fmov.s @r14,fr0
ftrv xmtrx,fv4

loc_8c12cd82:
fldi1 fr7
fdiv fr4,fr7
fmov.s fr2,@-r6
dt r3
mov.l @r4+,r0
bt/s loc_8c12ce2c
mov.l @r4+,r14
tst 0x01,r0
mov r6,r2
bt/s loc_8c12cd9e
add r4,r14
mov r4,r14
add 0x18,r4
add 0xF8,r14

loc_8c12cd9e:
add 0x20,r4
fmov.s @r14+,fr8
pref @r4
fmov.s @r14+,fr10
fldi1 fr11
fmul fr7,fr6
fmov.s @r14+,fr2
fmul fr7,fr5
fmov.s fr0,@-r6
ftrv xmtrx,fv8
fmov.s fr6,@-r6
add 0xE0,r4
fmov.s fr4,@-r6
mov.l r2,@r6
fmov.s @r14,fr0
dt r3
pref @r6
add 0x40,r6
fmov.s fr2,@-r6
mov r6,r2
fldi1 fr11
fdiv fr8,fr11
mov.l @r4+,r0
bt/s loc_8c12ce04
mov.l @r4+,r14
tst 0x01,r0
bt/s loc_8c12cddc
add r4,r14
mov r4,r14
add 0x18,r4
add 0xF8,r14

loc_8c12cddc:
add 0x20,r4
fmov.s @r14+,fr4
pref @r4
fmov.s @r14+,fr6
fldi1 fr7
fmul fr11,fr10
fmov.s @r14+,fr2
fmul fr11,fr9
fmov.s fr0,@-r6
ftrv xmtrx,fv4
fmov.s fr10,@-r6
add 0xE0,r4
fmov.s fr8,@-r6
add 0x40,r5
mov.l r2,@r6
fmov.s @r14,fr0
pref @r6
bra loc_8c12cd82
add 0x40,r6
	nop


loc_8c12ce04:
cmp/pl r0
mov r14,r3
bf loc_8c12ce24
tst 0x80,r0
bt loc_8c12ce24
mov.l @r4+,r0
mov r6,r2
shar r2
mov.l @r4+,r14
tst 0x01,r0
add r4,r14
bt loc_8c12cddc
mov r4,r14
add 0x18,r4
bra loc_8c12cddc
add 0xF8,r14

loc_8c12ce24:
add 0x20,r5
fmov fr8,fr4
bra loc_8c12ce4c
fmov fr10,fr6

loc_8c12ce2c:
cmp/pl r0
mov r14,r3
bf loc_8c12ce4c
tst 0x80,r0
bt loc_8c12ce4c
mov.l @r4+,r0
mov r6,r2
shar r2
mov.l @r4+,r14
tst 0x01,r0
add r4,r14
bt loc_8c12cd9e
mov r4,r14
add 0x18,r4
bra loc_8c12cd9e
add 0xF8,r14

loc_8c12ce4c:
fmul fr7,fr6
mov r6,r2
shar r2
fmul fr7,fr5
fmov.s fr0,@-r6
add 0xF8,r4
fmov.s fr6,@-r6
add 0x20,r5
fmov.s fr4,@-r6
mov.l r2,@r6
fschg
pref @r6
rts
add 0x20,r6
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c12ce80:
mov.l @r4+,r9
add 0x20,r6
fschg
mov 0x03,r3
mov.l @r4,r0
mov r4,r14
tst 0x01,r0
add 0x20,r4
bf loc_8c12ce98
mov.l @(0x04,r14),r14
add 0xE8,r4
add r4,r14

loc_8c12ce98:
fmov.s @r14+,fr4
fmov.s @r14+,fr6
fldi1 fr7
fmov.s @r14+,fr2
fmov.s @r14,fr0
ftrv xmtrx,fv4

loc_8c12cea4:
fldi1 fr7
fdiv fr4,fr7
fmov.s fr2,@-r6
dt r3
mov.l @r4+,r0
bt/s loc_8c12cf44
mov.l @r4+,r14
tst 0x01,r0
mov r6,r2
bt/s loc_8c12cec0
add r4,r14
mov r4,r14
add 0x18,r4
add 0xF8,r14

loc_8c12cec0:
add 0x20,r4
fmov.s @r14+,fr8
pref @r4
fmov.s @r14+,fr10
fldi1 fr11
fmul fr7,fr6
fmov.s @r14+,fr2
fmul fr7,fr5
fmov.s fr0,@-r6
ftrv xmtrx,fv8
fmov.s fr6,@-r6
add 0xE0,r4
fmov.s fr4,@-r6
mov.l r2,@r6
fmov.s @r14,fr0
dt r3
pref @r6
add 0x40,r6
fmov.s fr2,@-r6
mov r6,r2
fldi1 fr11
fdiv fr8,fr11
mov.l @r4+,r0
bt/s loc_8c12cf24
mov.l @r4+,r14
tst 0x01,r0
bt/s loc_8c12cefe
add r4,r14
mov r4,r14
add 0x18,r4
add 0xF8,r14

loc_8c12cefe:
add 0x20,r4
fmov.s @r14+,fr4
pref @r4
fmov.s @r14+,fr6
fldi1 fr7
fmul fr11,fr10
fmov.s @r14+,fr2
fmul fr11,fr9
fmov.s fr0,@-r6
ftrv xmtrx,fv4
fmov.s fr10,@-r6
add 0xE0,r4
fmov.s fr8,@-r6
add 0x40,r5
mov.l r2,@r6
fmov.s @r14,fr0
pref @r6
bra loc_8c12cea4
add 0x40,r6

loc_8c12cf24:
dt r9
mov r6,r2
bt/s loc_8c12cf3c
shar r2
tst 0x01,r0
mov 0x03,r3
bt/s loc_8c12cefe
add r4,r14
mov r4,r14
add 0x18,r4
bra loc_8c12cefe
add 0xF8,r14

loc_8c12cf3c:
add 0x20,r5
fmov fr8,fr4
bra loc_8c12cf5c
fmov fr10,fr6

loc_8c12cf44:
dt r9
mov r6,r2
bt/s loc_8c12cf5c
shar r2
tst 0x01,r0
mov 0x03,r3
bt/s loc_8c12cec0
add r4,r14
mov r4,r14
add 0x18,r4
bra loc_8c12cec0
add 0xF8,r14

loc_8c12cf5c:
fmul fr7,fr6
fmov.s fr0,@-r6
fmul fr7,fr5
fmov.s fr6,@-r6
add 0x20,r5
fmov.s fr4,@-r6
add 0xF8,r4
mov.l r2,@r6
fschg
pref @r6
rts
add 0x20,r6
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c12cf80:
mov.l r10,@-r15
mov.l r11,@-r15
sts.l pr,@-r15
mov.l @r4+,r3
fschg
fmov fr3,fr0
fmov fr7,fr12
fmov fr11,fr2
fmov fr15,fr14
fschg
fmov fr1,fr12
fmov fr3,fr14

loc_8c12cf98:
mov 0x00,r11
bsr loc_8c12d300
mov 0x00,r9
bf loc_8c12cfa2
bra loc_8c12d0d6

loc_8c12cfa2:
rotcl r9
bsr loc_8c12d340
add 0x01,r11
bsr loc_8c12d300
nop
bf loc_8c12cfb0
bra loc_8c12d12e

loc_8c12cfb0:
rotcl r9
bsr loc_8c12d340
add 0x01,r11
add 0x20,r6
mov.l @r4,r0
fschg
tst 0x01,r0
mov r4,r14
bf/s loc_8c12cfca
add 0x20,r4
mov.l @(0x04,r14),r14
add 0xE8,r4
add r4,r14

loc_8c12cfca:
fmov.s @r14+,fr4
fmov.s @r14+,fr6
fldi1 fr7
fmov.s @r14+,fr2
fmov.s @r14,fr0
ftrv xmtrx,fv4

loc_8c12cfd6:
fmov.s fr2,@-r6
flds fr7,fpul
fldi1 fr7
fdiv fr4,fr7
sts fpul,r0
cmp/hi r0,r12
bt loc_8c12d094
dt r3
mov.l @r4+,r0
add 0x01,r11
bt/s loc_8c12d0b4
mov.l @r4+,r14
tst 0x01,r0
mov r6,r2
bt/s loc_8c12cffc
add r4,r14
mov r4,r14
add 0x18,r4
add 0xF8,r14

loc_8c12cffc:
add 0x40,r4
fmov.s @r14+,fr8
pref @r4
fmov.s @r14+,fr10
add 0xC0,r4
fldi1 fr11
fmul fr7,fr6
fmov.s @r14+,fr2
fmul fr7,fr5
fmov.s fr0,@-r6
ftrv xmtrx,fv8
fmov.s fr6,@-r6
fmov.s fr4,@-r6
add 0x20,r5
mov.l r2,@r6
fmov.s @r14,fr0
pref @r6
add 0x40,r6
fmov.s fr2,@-r6
flds fr11,fpul
fldi1 fr11
fdiv fr8,fr11
sts fpul,r0
cmp/hi r0,r12
bt loc_8c12d088
dt r3
mov.l @r4+,r0
add 0x01,r11
bt/s loc_8c12d0a8
mov.l @r4+,r14
tst 0x01,r0
mov r6,r2
bt/s loc_8c12d046
add r4,r14
mov r4,r14
add 0x18,r4
add 0xF8,r14

loc_8c12d046:
fmov.s @r14+,fr4
add 0x40,r4
fmov.s @r14+,fr6
pref @r4
fldi1 fr7
fmul fr11,fr10
fmov.s @r14+,fr2
fmul fr11,fr9
fmov.s fr0,@-r6
ftrv xmtrx,fv4
fmov.s fr10,@-r6
add 0xC0,r4
fmov.s fr8,@-r6
add 0x20,r5
mov.l r2,@r6
fmov.s @r14,fr0
pref @r6
bra loc_8c12cfd6
add 0x40,r6

loc_8c12d06c:
mov.l @r4+,r0
cmp/pl r0
bf/s loc_8c12d07a
tst 0x80,r0
bf/s loc_8c12cf98
mov.l @r4+,r3
add 0xFC,r4

loc_8c12d07a:
lds.l @r15+,pr
mov 0x01,r0
mov.l @r15+,r11
add 0xFC,r4
mov.l @r15+,r10
rts
or r0,r12
;==============================================

loc_8c12d088:
add 0x20,r4
pref @r4
add 0xE0,r4
fmov fr8,fr4
bra loc_8c12d09a
fmov fr10,fr6

loc_8c12d094:
add 0x20,r4
pref @r4
add 0xE0,r4

loc_8c12d09a:
rotcl r9
fschg
mov r14,r2
fsts fpul,fr4
bra loc_8c12d1ae
add 0xE8,r6
	nop


loc_8c12d0a8:
add 0x20,r4
pref @r4
add 0xE0,r4
fmov fr8,fr4
bra loc_8c12d0ba
fmov fr10,fr6

loc_8c12d0b4:
add 0x20,r4
pref @r4
add 0xE0,r4

loc_8c12d0ba:
fmul fr7,fr6
mov r6,r2
shar r2
fmul fr7,fr5
fmov.s fr0,@-r6
add 0xF8,r4
fmov.s fr6,@-r6
add 0x20,r5
fmov.s fr4,@-r6
mov.l r2,@r6
fschg
pref @r6
bra loc_8c12d06c
add 0x20,r6

loc_8c12d0d6:
dt r3
add 0x01,r11
bsr loc_8c12d300
dt r3
bf/s loc_8c12d164
rotcl r9
mov.l @r4,r0
mov r4,r14
tst 0x01,r0
add 0x20,r4
bf/s loc_8c12d0f4
fldi1 fr7
add 0xE8,r4
mov.l @(0x04,r14),r14
add r4,r14

loc_8c12d0f4:
fmov.s @r14+,fr4
fmov.s @r14+,fr5

loc_8c12d0f8:
fmov.s @r14+,fr6
mov 0x20,r1
mov.l @r4,r0
add 0x20,r4
pref @r4
fipr fv12,fv4
tst 0x01,r0
add 0xE0,r4
bf/s loc_8c12d114
mov r4,r14
mov 0x08,r1
mov.l @(0x04,r14),r14
add 0x08,r14
add r4,r14

loc_8c12d114:
flds fr7,fpul
sts fpul,r0
cmp/hi r0,r12
add 0x01,r11
bf/s loc_8c12d1a0
rotcl r9
dt r3
fldi1 fr7
bt loc_8c12d06c
add r1,r4
fmov.s @r14+,fr4
bra loc_8c12d0f8
fmov.s @r14+,fr5

loc_8c12d12e:
bsr loc_8c12d380
dt r3
add 0xF8,r4
mov.l @(0x04,r4),r0
tst 0x01,r0
bt loc_8c12d13c
add 0xE8,r4

loc_8c12d13c:
add 0xF8,r4
mov.l @(0x04,r4),r0
tst 0x01,r0
bt loc_8c12d146
add 0xE8,r4

loc_8c12d146:
bsr loc_8c12d300
nop
bsr loc_8c12d380
mov 0x00,r11
mov 0x01,r11
clrt
bsr loc_8c12d420
mov 0x00,r0
mov.l @r4,r0
tst 0x01,r0
add 0x08,r4
bt loc_8c12d160
add 0x18,r4

loc_8c12d160:
bra loc_8c12d1fc
nop

loc_8c12d164:
bsr loc_8c12d380
mov 0x01,r11
add 0xF8,r4
mov.l @(0x04,r4),r0
tst 0x01,r0
bt loc_8c12d172
add 0xE8,r4

loc_8c12d172:
add 0xF8,r4
mov.l @(0x04,r4),r0
tst 0x01,r0
bt loc_8c12d17c
add 0xE8,r4

loc_8c12d17c:
bsr loc_8c12d300
nop
bsr loc_8c12d380
mov 0x00,r11
mov 0x01,r11
clrt
bsr loc_8c12d420
mov 0x00,r0
clrt
bsr loc_8c12d3e0
mov 0x01,r0
mov.l @r4,r0
tst 0x01,r0
add 0x08,r4
bt loc_8c12d19c
add 0x18,r4

loc_8c12d19c:
bra loc_8c12d1fc
nop

loc_8c12d1a0:
add 0xF8,r4
mov.l @(0x04,r4),r0
tst 0x01,r0
bt loc_8c12d1aa
add 0xE8,r4

loc_8c12d1aa:
bsr loc_8c12d300
nop

loc_8c12d1ae:
bsr loc_8c12d380
nop
add 0xF8,r4
mov.l @(0x04,r4),r0
tst 0x01,r0
bt loc_8c12d1bc
add 0xE8,r4

loc_8c12d1bc:
add 0xF8,r4
mov.l @(0x04,r4),r0
tst 0x01,r0
bt loc_8c12d1c6
add 0xE8,r4

loc_8c12d1c6:
add 0xF8,r4
mov.l @(0x04,r4),r0
tst 0x01,r0
bt loc_8c12d1d0
add 0xE8,r4

loc_8c12d1d0:
bsr loc_8c12d300
nop
bsr loc_8c12d380
add 0xFE,r11
bsr loc_8c12d300
nop
bsr loc_8c12d380
add 0x01,r11
mov.l @r4,r0
tst 0x01,r0
add 0x08,r4
bt loc_8c12d1ea
add 0x18,r4

loc_8c12d1ea:
add 0x01,r11
mov r12,r0
tst 0x01,r0
bt/s loc_8c12d212
mov r9,r0
bsr loc_8c12d3a0
nop
bra loc_8c12d212
mov r9,r0

loc_8c12d1fc:
bsr loc_8c12d300
add 0x01,r11
bsr loc_8c12d380
rotcl r9
mov r12,r0
tst 0x01,r0
bt/s loc_8c12d212
mov r9,r0
bsr loc_8c12d3a0
nop
mov r9,r0

loc_8c12d212:
and 0x07,r0
shll2 r0
braf r0
nop
	nop
	nop
#data 0xA00C
	nop
#data 0xA019
	nop
#data 0xA024
	nop
#data 0xA02A
	nop
#data 0xA038
	nop
#data 0xA03D
	nop
	nop
	nop
#data 0x60B3
#data 0x0008
#data 0xB0EF
#data 0x70FE
#data 0x60B3
#data 0x0008
#data 0xB0CB
#data 0x70FF
#data 0x60B3
#data 0x4310
#data 0xB0E7
#data 0x70FF
#data 0x8BD3
#data 0xAF0A
	nop
#data 0x0008
#data 0xB0C1
#data 0x60B3
#data 0x60B3
#data 0x0008
#data 0xB0DD
#data 0x70FF
#data 0x4310
#data 0xB0BA
#data 0x60B3
#data 0x8BC6
#data 0xAEFD
	nop
#data 0x60B3
#data 0x0018
#data 0xB0D3
#data 0x70FE
#data 0x4310
#data 0x890F
#data 0xAF30
	nop
#data 0x60B3
#data 0x0008
#data 0xB0CB
#data 0x70FE
#data 0x60B3
#data 0x0008
#data 0xB0A7
#data 0x70FF
#data 0x4310
#data 0xB0A4
#data 0x60B3
#data 0x8901
#data 0xAE8C
#data 0x7B01
#data 0xAEE5
	nop
#data 0x60B3
#data 0x4310
#data 0xB0BB
#data 0x70FF
#data 0x8BA7
#data 0xAEDE
	nop
#data 0x60B3
#data 0xC801
#data 0x890D
#data 0x60B3
#data 0x0008
#data 0xB0B1
#data 0x70FF
#data 0x60B3
#data 0x0008
#data 0xB0AD
#data 0x70FE
#data 0x60B3
#data 0x0008
#data 0xB0A9
#data 0x70FF
#data 0xA008
	nop
#data 0x60B3
#data 0x0008
#data 0xB0A3
#data 0x70FE
#data 0x60B3
#data 0x0008
#data 0xB09F
#data 0x70FF
#data 0x4310
#data 0xB07C
#data 0x60B3
#data 0x8B88
#data 0xAEBF
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c12d300:
mov.l @r4,r0
fschg
tst 0x01,r0
mov r4,r14
bf/s loc_8c12d312
add 0x20,r4
mov.l @(0x04,r14),r14
add 0xE8,r4
add r4,r14

loc_8c12d312:
fmov.s @r14+,fr4
fmov.s @r14+,fr6
fldi1 fr7
fmov.s @r14+,fr2
ftrv xmtrx,fv4
add 0x40,r4
mov r14,r2
pref @r4
add 0xC0,r4
flds fr7,fpul
fldi1 fr7
fdiv fr4,fr7
sts fpul,r0
fschg
fsts fpul,fr4
rts
cmp/hi r0,r12
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c12d340:
fschg
add 0x20,r6
fmov.s @r2,fr0
fmul fr7,fr6
fmov.s fr2,@-r6
fmul fr7,fr5
add 0x20,r5
fmov.s fr0,@-r6
mov r6,r2
fmov.s fr6,@-r6
dt r3
fmov.s fr4,@-r6
bf loc_8c12d35e
shar r2
sett

loc_8c12d35e:
mov.l r2,@r6
fschg
pref @r6
rts
add 0x20,r6
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop


loc_8c12d380:
mov 0x05,r10
mov r11,r0
and 0x03,r0
fschg
shld r10, r0
mov.l @(loc_8c12d39c,pc),r10
fmov.s @r2,fr0
add r0,r10
fmov.s fr2,@-r10
fmov.s fr0,@-r10
fmov.s fr6,@-r10
fmov.s fr4,@-r10
rts
fschg
;==============================================

#align4
loc_8c12d39c:
#data loc_8c12cc60


loc_8c12d3a0:
mov 0x05,r1
mov.l @(loc_8c12d3d4,pc),r10
mov r11,r0
and 0x03,r0
mov r10,r2
shld r1, r0
fschg
add r0,r10
add 0xF8,r10
mov r11,r0
fmov.s @r10,fr2
add 0xFF,r0
mov r2,r10
and 0x03,r0
shld r1, r0
add r0,r2
mov r11,r0
fmov.s fr2,@-r2
add 0xFE,r0
and 0x03,r0
shld r1, r0
add r0,r10
fmov.s fr2,@-r10
rts
fschg
;==============================================
#data 0x0000

#align4
loc_8c12d3d4:
#data loc_8c12cc60
	nop
	nop
	nop
	nop


loc_8c12d3e0:
and 0x03,r0
mov 0x05,r2
mov.l @(loc_8c12d418,pc),r10
shld r2, r0
fschg
add r0,r10
fmov.s @r10+,fr0
fmov.s @r10+,fr2
add 0x20,r6
fmov.s @r10+,fr4
fmul fr3,fr2
fmov.s @r10+,fr6
fmul fr3,fr1
fmov.s fr6,@-r6
mov r6,r2
fmov.s fr4,@-r6
add 0x20,r5
fmov.s fr2,@-r6
bf/s loc_8c12d40c
fmov.s fr0,@-r6
shar r2
sett

loc_8c12d40c:
mov.l r2,@r6
fschg
pref @r6
rts
add 0x20,r6
;==============================================
#data 0x0000

#align4
loc_8c12d418:
#data loc_8c12cc40
	nop
	nop


loc_8c12d420:
and 0x03,r0
shll2 r0
mov.l @(loc_8c12d5b4,pc),r10
shll2 r0
add r0,r0
mov r10,r2
add r0,r10
mov r11,r0
and 0x03,r0
fmov.s @r10,fr2
shll2 r0
shll2 r0
add r0,r0
add r0,r2
fmov.s @r2,fr1
lds r12,fpul
fsts fpul,fr0
fsub fr2,fr0
add 0x18,r10
fsub fr2,fr1
add 0x18,r2
fdiv fr1,fr0
lds r7,fpul
fsts fpul,fr1
fschg
fmov.s @r2,fr4
add 0xF8,r2
fmov.s @r10,fr2
add 0xF8,r10
flds fr4,fpul
sts fpul,r0
shlr16 r0
mov r0,r1
shlr8 r0
extu.b r0,r0
lds r0,fpul
float fpul,fr8
flds fr2,fpul
extu.b r1,r1
sts fpul,r0
shlr16 r0
lds r1,fpul
mov r0,r1
shlr8 r0
float fpul,fr10
extu.b r0,r0
lds r0,fpul
float fpul,fr9
fsub fr9,fr8
fmac fr0,fr8,fr9
extu.b r1,r1
ftrc fr9,fpul
sts fpul,r8
shll8 r8
lds r1,fpul
float fpul,fr11
flds fr4,fpul
fsub fr11,fr10
sts fpul,r0
fmac fr0,fr10,fr11
shlr8 r0
ftrc fr11,fpul
extu.b r0,r0
sts fpul,r1
or r1,r8
lds r0,fpul
float fpul,fr8
flds fr2,fpul
shll8 r8
sts fpul,r0
shlr8 r0
flds fr4,fpul
extu.b r0,r0
sts fpul,r1
extu.b r1,r1
lds r0,fpul
float fpul,fr9
lds r1,fpul
float fpul,fr10
fsub fr9,fr8
flds fr2,fpul
fmac fr0,fr8,fr9
sts fpul,r1
ftrc fr9,fpul
extu.b r1,r1
sts fpul,r0
or r0,r8
lds r1,fpul
float fpul,fr11
fsub fr11,fr10
shll8 r8
fmac fr0,fr10,fr11
ftrc fr11,fpul
sts fpul,r1
or r1,r8
flds fr5,fpul
add 0x20,r6
sts fpul,r0
shlr16 r0
lds r8,fpul
mov r0,r1
shlr8 r0
fsts fpul,fr2
extu.b r0,r0
lds r0,fpul
float fpul,fr8
flds fr3,fpul
extu.b r1,r1
sts fpul,r0
shlr16 r0
lds r1,fpul
mov r0,r1
shlr8 r0
float fpul,fr10
extu.b r0,r0
lds r0,fpul
float fpul,fr9
fsub fr9,fr8
fmac fr0,fr8,fr9
extu.b r1,r1
ftrc fr9,fpul
sts fpul,r8
shll8 r8
lds r1,fpul
float fpul,fr11
flds fr5,fpul
fsub fr11,fr10
sts fpul,r0
fmac fr0,fr10,fr11
shlr8 r0
ftrc fr11,fpul
extu.b r0,r0
sts fpul,r1
or r1,r8
lds r0,fpul
float fpul,fr8
flds fr3,fpul
shll8 r8
sts fpul,r0
shlr8 r0
flds fr5,fpul
extu.b r0,r0
sts fpul,r1
extu.b r1,r1
lds r0,fpul
float fpul,fr9
lds r1,fpul
float fpul,fr10
fsub fr9,fr8
flds fr3,fpul
fmac fr0,fr8,fr9
sts fpul,r1
ftrc fr9,fpul
extu.b r1,r1
sts fpul,r0
or r0,r8
lds r1,fpul
float fpul,fr11
fsub fr11,fr10
shll8 r8
fmac fr0,fr10,fr11
ftrc fr11,fpul
sts fpul,r1
or r1,r8
lds r8,fpul
fsts fpul,fr3
fmov.s fr2,@-r6
fmov.s @r2,fr4
add 0xF8,r2
fmov.s @r10,fr2
add 0xF8,r10
fsub fr2,fr4
fsub fr3,fr5
fmac fr0,fr4,fr2
fmac fr0,fr5,fr3
fmov.s fr2,@-r6
fschg
fmov.s fr1,@-r6
fmov.s @r2,fr5
add 0xFC,r2
fmov.s @r10,fr3
add 0xFC,r10
fmov.s @r2,fr4
fmov.s @r10,fr2
fsub fr3,fr5
fsub fr2,fr4
mov 0xF0,r2
fmac fr0,fr5,fr3
shll16 r2
fmac fr0,fr4,fr2
shll8 r2
fmul fr1,fr3
add 0x20,r5
fmul fr1,fr2
fmov.s fr3,@-r6
fmov.s fr2,@-r6
bt loc_8c12d5ac
mov r6,r2

loc_8c12d5ac:
mov.l r2,@-r6
pref @r6
rts
add 0x20,r6
;==============================================

#align4
loc_8c12d5b4:
#data loc_8c12cc40
	nop
	nop
	nop
	nop


loc_8c12d5c0:
mov.l r10,@-r15
mov.l r11,@-r15
sts.l pr,@-r15
mov.l @r4+,r3

loc_8c12d5c8:
bsr loc_8c12d720
mov 0x00,r9
mov r9,r0
cmp/eq 0x00,r0
bt loc_8c12d62e
cmp/eq 0x07,r0
bt loc_8c12d64c
bsr loc_8c12d300
mov 0x00,r11
bsr loc_8c12d380
nop
bsr loc_8c12d300
mov 0x01,r11
bsr loc_8c12d380
nop
bsr loc_8c12d300
mov 0x02,r11
bsr loc_8c12d380
nop
mov r12,r0
tst 0x01,r0
bt/s loc_8c12d5fa
shll2 r9
bsr loc_8c12d3a0
nop

loc_8c12d5fa:
braf r9
nop
	nop
	nop
#data 0xA034
	nop
#data 0xA041
	nop
#data 0xA04F
	nop
#data 0xA05A
	nop
#data 0xA068
	nop
#data 0xA073
	nop
	nop
	nop


loc_8c12d61e:
dt r3
bf loc_8c12d5c8
mov 0x01,r0
lds.l @r15+,pr
or r0,r12
mov.l @r15+,r11
rts
mov.l @r15+,r10
;==============================================

loc_8c12d62e:
mov r3,r9
bsr loc_8c12d300
mov 0x03,r3
bsr loc_8c12d340
nop
bsr loc_8c12d300
nop
bsr loc_8c12d340
nop
bsr loc_8c12d300
nop
bsr loc_8c12d340
nop
bra loc_8c12d61e
mov r9,r3

loc_8c12d64c:
mov.l @r4,r0
tst 0x01,r0
add 0x08,r4
bt loc_8c12d656
add 0x18,r4

loc_8c12d656:
mov.l @r4,r0
tst 0x01,r0
add 0x08,r4
bt loc_8c12d660
add 0x18,r4

loc_8c12d660:
mov.l @r4,r0
tst 0x01,r0
add 0x08,r4
bt loc_8c12d66a
add 0x18,r4

loc_8c12d66a:
bra loc_8c12d61e
nop
#data 0x0008
#data 0xBEB6
#data 0xE000
#data 0x0008
#data 0xBEB3
#data 0xE001
#data 0x0008
#data 0xEB02
#data 0xBECF
#data 0xE000
#data 0x0018
#data 0xBECC
#data 0xE001
#data 0xAFC9
	nop
#data 0x0008
#data 0xBEA7
#data 0xE000
#data 0x0008
#data 0xEB01
#data 0xBEC3
#data 0xE000
#data 0x0008
#data 0xEB02
#data 0xBE9F
#data 0xE002
#data 0x0018
#data 0xBEBC
#data 0xE001
#data 0xAFB9
	nop
#data 0x0008
#data 0xBE97
#data 0xE000
#data 0x0008
#data 0xEB01
#data 0xBEB3
#data 0xE000
#data 0x0018
#data 0xEB02
#data 0xBEAF
#data 0xE000
#data 0xAFAC
	nop
#data 0x0008
#data 0xEB01
#data 0xBEA9
#data 0xE000
#data 0x0008
#data 0xBE86
#data 0xE001
#data 0x0008
#data 0xEB02
#data 0xBEA2
#data 0xE000
#data 0x0018
#data 0xBE7F
#data 0xE002
#data 0xAF9C
	nop
#data 0x0008
#data 0xEB01
#data 0xBE99
#data 0xE000
#data 0x0008
#data 0xBE76
#data 0xE001
#data 0x0018
#data 0xEB02
#data 0xBE92
#data 0xE001
#data 0xAF8F
	nop
#data 0x0008
#data 0xEB02
#data 0xBE8C
#data 0xE000
#data 0x0008
#data 0xBE89
#data 0xE001
#data 0x0018
#data 0xBE66
#data 0xE002
#data 0xAF83
	nop
	nop
	nop
	nop
	nop


loc_8c12d720:
mov r4,r1
mov.l @r4,r0
tst 0x01,r0
bf/s loc_8c12d738
fmov.s @r4+,fr4
mov.l @r4+,r0
add r4,r0
fmov.s @r0+,fr4
fmov.s @r0+,fr5
fmov.s @r0+,fr6
bra loc_8c12d740
fldi1 fr7

loc_8c12d738:
fmov.s @r4+,fr5
fmov.s @r4,fr6
fldi1 fr7
add 0x18,r4

loc_8c12d740:
pref @r4
add 0x20,r4
pref @r4
add 0xE0,r4
ftrv xmtrx,fv4
mov.l @r4,r0
tst 0x01,r0
bf/s loc_8c12d760
fmov.s @r4+,fr0
mov.l @r4+,r0
add r4,r0
fmov.s @r0+,fr0
fmov.s @r0+,fr1
fmov.s @r0+,fr2
bra loc_8c12d768
fldi1 fr3

loc_8c12d760:
fmov.s @r4+,fr1
fmov.s @r4,fr2
fldi1 fr3
add 0x18,r4

loc_8c12d768:
add 0x20,r4
pref @r4
add 0xE0,r4
ftrv xmtrx,fv0
flds fr7,fpul
mov.l @r4,r0
tst 0x01,r0
bf/s loc_8c12d788
fmov.s @r4+,fr4
mov.l @r4+,r0
add r4,r0
fmov.s @r0+,fr4
fmov.s @r0+,fr5
fmov.s @r0+,fr6
bra loc_8c12d78e
fldi1 fr7

loc_8c12d788:
fmov.s @r4+,fr5
fmov.s @r4,fr6
fldi1 fr7

loc_8c12d78e:
mov r1,r4
sts fpul,r0
ftrv xmtrx,fv4
cmp/hi r0,r12
flds fr3,fpul
rotcl r9
sts fpul,r0
cmp/hi r0,r12
flds fr7,fpul
rotcl r9
sts fpul,r0
cmp/hi r0,r12
rts
rotcl r9
;==============================================
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000

loc_8c12d7c0:
#data 0x7418
#data 0xD178
#data 0xF19D
#data 0xFFFB
#data 0xF018
#data 0xFFEB
#data 0xFFDB
#data 0xF103
#data 0xFFCB
#data 0x2FE6
#data 0x2FD6
#data 0x2FC6
#data 0x2FB6
#data 0x2FA6
#data 0x2F96
#data 0x2F86
#data 0x6D73
#data 0x4F22
#data 0x7FE0
#data 0xF79D
#data 0xE000
#data 0xF05D
#data 0xFF07
#data 0xD06E
#data 0xF17A
#data 0x6102
#data 0xD26E
#data 0x1F11
#data 0x6122
#data 0xD06E
#data 0xD26B
#data 0x1F13
#data 0x6322
#data 0x6102
#data 0x1F32
#data 0x6C56
#data 0x1F14
#data 0x1FC5
#data 0x6C56
#data 0x6156
#data 0x1FC6
#data 0x1F17
#data 0x6C52
#data 0x7514
#data 0xDA61
#data 0x6752
#data 0x6AA2
#data 0xE204
#data 0x4218
#data 0x55A1
#data 0x4228
#data 0x72FF
#data 0x2259
#data 0x6863
#data 0xE6E0
#data 0x4618
#data 0x4628
#data 0x262B
#data 0x7410
	nop

loc_8c12d838:
#data 0xF79D
#data 0x6043
#data 0x7030
#data 0x0083
#data 0x63F3
#data 0xF449
#data 0xF549
#data 0xF649
#data 0xF5FD
#data 0xF139
#data 0xF049
#data 0xF012
#data 0x4C5A
#data 0xE0FE
#data 0xF700
#data 0xF10D
#data 0xF715
#data 0xF701
#data 0x2C09
#data 0x8F0D
#data 0xF701
#data 0xF715
#data 0x8F0A
#data 0x7C01

loc_8c12d868:
#data 0x742C
#data 0x6046
#data 0x340C
#data 0x6042
#data 0x2008
#data 0x7410
#data 0x8BE0
#data 0xA073
	nop
	nop

loc_8c12d87c:
#data 0xF139
#data 0xD04F
#data 0xF708
#data 0xF742
#data 0xF04D
#data 0xF102
#data 0xF571
#data 0xF339
#data 0xD04A
#data 0xF515
#data 0xF708
#data 0xF302
#data 0x8FE8
#data 0xF742
#data 0xF671
#data 0xF039
#data 0xF635
#data 0xF739
#data 0xF042
#data 0x8FE1
#data 0xF011
#data 0xF505
#data 0xF742
#data 0x8DDD
#data 0xF731
#data 0xF675
#data 0x89DA
#data 0x7430
#data 0x6046
#data 0x6103
#data 0x2DD8
#data 0x891A
#data 0x6083
#data 0xD214
#data 0x88FF
#data 0x6222
#data 0x6013
#data 0x53F5
#data 0xC903
#data 0x8D02
#data 0x4211
#data 0xA002
#data 0xE000

loc_8c12d8d2:
#data 0x8900
#data 0xCA01

loc_8c12d8d6:
#data 0xE21B
#data 0x402D
#data 0x2632
#data 0x7520
#data 0x1601
#data 0x0683
#data 0x7620
#data 0x1F06
#data 0x7420
#data 0x0483
#data 0x74E0
#data 0x6B63
#data 0xE2FF
#data 0x7DFF

loc_8c12d8f2:
#data 0x4C25
#data 0x6013
#data 0x3CCC
#data 0x8F05
#data 0xC808
#data 0x8B01
#data 0xA16F
#data 0xC903

loc_8c12d902:
#data 0xA31D
#data 0xC903

loc_8c12d906:
#data 0x8B01
#data 0xA05A
#data 0xC903

loc_8c12d90c:
#data 0xA0E8
#data 0xC903
#data 0xEE8C
#data 0x8C2D

loc_8c12d914:
#data 0x2DD8
#data 0x8911

loc_8c12d918:
#data 0x0683
#data 0x7620
#data 0x50F5
#data 0x7540
#data 0x51F6
#data 0x52F7
#data 0x0683
#data 0x76A0
#data 0x2602
#data 0xCB40
#data 0x1611
#data 0x221B
#data 0x0683
#data 0x7620
#data 0x2602
#data 0x1621
#data 0x0683
#data 0x7660

loc_8c12d93c:
#data 0x6042
#data 0x2008
#data 0x7410
#data 0x890D
#data 0xAF78
	nop

loc_8c12d948:
#data 0x2DD8
#data 0x8D04
#data 0x6042
#data 0x3B60
#data 0x8BE2
#data 0x76E0
#data 0x75E0

loc_8c12d956:
#data 0x2008
#data 0x7410
#data 0x8901
#data 0xAF6C
	nop

loc_8c12d960:
#data 0x2DD8
#data 0x7D01
#data 0x8B03
#data 0x3B60
#data 0x74F0
#data 0x8BD5
#data 0x75E0

loc_8c12d96e:
#data 0x1A51
#data 0x7F20
#data 0x4F26
#data 0x68F6
#data 0x69F6
#data 0x6AF6
#data 0x6BF6
#data 0x6CF6
#data 0x6DF6
#data 0x6EF6
#data 0xFCF9
#data 0xFDF9
#data 0xFEF9
#data 0xFFF9
#data 0x000B
	nop
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
#data 0xA508
#data 0x8C2A
#data 0xB448
#data 0x8C32
#data 0x6B98
#data 0x8C2D
#data 0x6B9C
#data 0x8C2D

loc_8c12d9b0:
#data bank16.loc_8c16BD88

loc_8c12d9b4:
#data bank16.loc_8c16BD8C

loc_8c12d9b8:
#data bank16.loc_8c16BD94

loc_8c12d9bc:
#data bank16.loc_8c16BD90

loc_8c12d9c0:
#data 0xE901
#data 0x6346
#data 0xF3FD
#data 0x495A

loc_8c12d9c8:
#data 0x73FE
#data 0x6903
#data 0x7901
#data 0x6E43
#data 0x6042
#data 0x7420
#data 0xC801
#data 0x8B02
#data 0x5EE1
#data 0x74E8
#data 0x3E4C

loc_8c12d9de:
#data 0xF4E9
#data 0xF6E9
#data 0xF72D
#data 0xF5FD
#data 0x6E43
#data 0x6042
#data 0x7420
#data 0xC801
#data 0x8B02
#data 0x5EE1
#data 0x74E8
#data 0x3E4C

loc_8c12d9f6:
#data 0xF79D
#data 0xF743
#data 0x0E83
#data 0x6093
#data 0xC801
#data 0xE028
#data 0x8B00
#data 0xE010

loc_8c12da06:
#data 0x306C
#data 0xF672
#data 0xF572
#data 0xF06B
#data 0xF04B
#data 0xF8E9
#data 0xFAE9
#data 0xFB2D
#data 0xF9FD
#data 0x6E43
#data 0x6042
#data 0x7420
#data 0xC801
#data 0x8B02
#data 0x5EE1
#data 0x74E8
#data 0x3E4C

loc_8c12da28:
#data 0xFB9D
#data 0xFB83
#data 0x0E83
#data 0x6093
#data 0xC801
#data 0xE010
#data 0x8B00
#data 0xE028

loc_8c12da38:
#data 0x306C
#data 0xFAB2
#data 0xF9B2
#data 0xF0AB
#data 0xF08B
#data 0x6063
#data 0x4021
#data 0x2602

loc_8c12da48:
#data 0x7901
#data 0xFCE9
#data 0x4310
#data 0xFEE9
#data 0xFF2D
#data 0x6E43
#data 0x8D07
#data 0xFDFD
#data 0x6042
#data 0x7420
#data 0xC801
#data 0x8B02
#data 0x5EE1
#data 0x74E8
#data 0x3E4C

loc_8c12da66:
#data 0xFF9D
#data 0xFFC3
#data 0x7620
#data 0x0683
#data 0x76E0
#data 0x0E83
#data 0xF3FD
#data 0xE01C
#data 0xFEF2
#data 0x306C
#data 0xFDF2
#data 0xF0FB
#data 0xF0EB
#data 0xF0DB
#data 0x0083
#data 0x2338
#data 0x6042
#data 0x890C
#data 0x6093
#data 0xC801
#data 0xE028
#data 0x8900
#data 0xE010

loc_8c12da94:
#data 0x306C
#data 0xF0FB
#data 0x7640
#data 0xF0EB
#data 0x7540
#data 0xF0DB
#data 0xAFD2
#data 0xF3FD

loc_8c12daa4:
#data 0x4015
#data 0x7640
#data 0x8900
#data 0xAF33

loc_8c12daac:
#data 0x7540
#data 0xC880
#data 0x7404
#data 0x8D02
#data 0x6346
#data 0xAF87
#data 0xF3FD

loc_8c12daba:
#data 0xC810
#data 0xF3FD
#data 0x8B83
#data 0xA012
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

loc_8c12dae0:
#data 0xE901
#data 0x6346
#data 0xF3FD
#data 0x495A

loc_8c12dae8:
#data 0x6903
#data 0x7901
#data 0x6E43
#data 0x6042
#data 0x7420
#data 0xC801
#data 0x8B02
#data 0x5EE1
#data 0x74E8
#data 0x3E4C

loc_8c12dafc:
#data 0xF4E9
#data 0xF6E9
#data 0xF72D
#data 0xF5FD
#data 0x6E43
#data 0x6042
#data 0x7420
#data 0xC801
#data 0x8B02
#data 0x5EE1
#data 0x74E8
#data 0x3E4C

loc_8c12db14:
#data 0xF79D
#data 0xF743
#data 0x0E83
#data 0x6093
#data 0xC801
#data 0xE028
#data 0x8B00
#data 0xE010

loc_8c12db24:
#data 0x306C
#data 0xF672
#data 0xF572
#data 0xF06B
#data 0xF04B
#data 0xF8E9
#data 0xFAE9
#data 0xFB2D
#data 0xF9FD
#data 0x6E43
#data 0x6042
#data 0x7420
#data 0xC801
#data 0x8B02
#data 0x5EE1
#data 0x74E8
#data 0x3E4C

loc_8c12db46:
#data 0xFB9D
#data 0xFB83
#data 0x0E83
#data 0x6093
#data 0xC801
#data 0xE010
#data 0x8B00
#data 0xE028

loc_8c12db56:
#data 0x306C
#data 0xFAB2
#data 0xF9B2
#data 0xF0AB
#data 0xF08B
#data 0x6063
#data 0x4021
#data 0x2602
#data 0x7901
#data 0xFCE9
#data 0x4310
#data 0xFEE9
#data 0xFF2D
#data 0x6E43
#data 0x8D07
#data 0xFDFD
#data 0x6042
#data 0x7420
#data 0xC801
#data 0x8B02
#data 0x5EE1
#data 0x74E8
#data 0x3E4C

loc_8c12db84:
#data 0xFF9D
#data 0xFFC3
#data 0x7620
#data 0x0683
#data 0x76E0
#data 0x0E83
#data 0xF3FD
#data 0xE01C
#data 0xFEF2
#data 0x306C
#data 0xF0FBFDF2
#data 0xF0DBF0EB
#data 0x23380083
#data 0x89046042
#data 0x75407640
#data 0xAFA57901
#data 0xF3FD

loc_8c12dbb2:
#data 0x4015
#data 0x89007640
#data 0xAEAC

loc_8c12dbba:
#data 0x7540
#data 0x7404C880
#data 0x63468D02
#data 0xF3FDAF90

#align4
loc_8c12dbc8:
#data 0xF3FDC810
#data 0xAEFB898C
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8c12dbe0:
#data 0xE9014C5A
#data 0xF3FD6346
#data 0x495AF10D

#align4
loc_8c12dbec:
#data 0x690373FE
#data 0x6E437901
#data 0x74206042
#data 0x8B02C801
#data 0x74E85EE1
#data 0x3E4C

loc_8c12dc02:
#data 0xF4E9
#data 0xF72DF6E9
#data 0x6E43F5FD
#data 0x74206042
#data 0x8B02C801
#data 0x74E85EE1
#data 0x3E4C

loc_8c12dc1a:
#data 0x0E83
#data 0xE001F71D
#data 0xF743F79D
#data 0x405AF40D
#data 0xFAE9F8E9
#data 0xF9FDFB2D
#data 0x60426E43
#data 0xC8017420
#data 0x5EE18B02
#data 0x3E4C74E8

#align4
loc_8c12dc40:
#data 0xFB1D0E83
#data 0xFB9DE001
#data 0xF80DFB83
#data 0xF145405A
#data 0x60938B3B
#data 0xE028C801
#data 0xE0108B00

#align4
loc_8c12dc5c:
#data 0x306CFE6C
#data 0xFC4CFEF2
#data 0xF0EBFDF2
#data 0xF185F0CB
#data 0x60938B14
#data 0xE010C801
#data 0xE0288B00

#align4
loc_8c12dc78:
#data 0x306CFEAC
#data 0xFC8CFEF2
#data 0xF0EBFDF2
#data 0x6063F0CB
#data 0x26024021
#data 0x3800E0FF
#data 0x3200894E
#data 0x89748B4C

#align4
loc_8c12dc98:
#data 0x7901F3FD
#data 0xFD5CB2D8
#data 0x606379FF
#data 0xF3FD4021
#data 0xE0FF2602
#data 0x8B003800
#data 0xA08C

loc_8c12dcb2:
	nop
#data 0x89003200
#data 0xA088

loc_8c12dcba:
	nop
#data 0x085AFE1D
#data 0xE001FD1D
#data 0xA081025A
#data 0x405A

loc_8c12dcca:
#data 0xF185
#data 0x60938B22
#data 0xE010C801
#data 0xE0288B00

#align4
loc_8c12dcd8:
#data 0x306CFEAC
#data 0xFC8CFEF2
#data 0xF0EBFDF2
#data 0xF3FDF0CB
#data 0xFD5CB2B2
#data 0x40216063
#data 0xE0FF2602
#data 0x3800F3FD
#data 0xA0948B00

#align4
loc_8c12dcfc:
#data 0x30200009
#data 0xA0908900

#align4
loc_8c12dd04:
#data 0xFE1D0009
#data 0xFD1D085A
#data 0x025AE001
#data 0x405AA089

#align4
loc_8c12dd14:
#data 0x88FF6083
#data 0x40216063
#data 0xA0B48B00

#align4
loc_8c12dd20:
#data 0x60232602
#data 0x890088FF
#data 0xA0AF

loc_8c12dd2a:
	nop
#data 0x0009A0CB

#align4
loc_8c12dd30:
#data 0x7901B276
#data 0xB2A98B0B
#data 0x23387620
#data 0xA0E18B00

#align4
loc_8c12dd40:
#data 0xB2B30009
#data 0xB2BB6093
#data 0xAFF1F3FD
#data 0xFAEC

loc_8c12dd4e:
#data 0xB2BD
#data 0xB2ABF3FD
#data 0xB2D96093
#data 0x60837620
#data 0x890188FF
#data 0x6093B2F2

#align4
loc_8c12dd64:
#data 0x8B002338
#data 0xA0CC

loc_8c12dd6a:
	nop
#data 0x6093B29E
#data 0x88FF6083
#data 0xB2F58901
#data 0x6093

loc_8c12dd7a:
#data 0xB2A1
#data 0xA025F3FD
#data 0xFAEC

loc_8c12dd82:
#data 0xB24D
#data 0x8B0B7901
#data 0x7620B280
#data 0x8B002338
#data 0xA0B8

loc_8c12dd92:
	nop
#data 0x6093B28A
#data 0xF3FDB292
#data 0xFAECAFF1

#align4
loc_8c12dda0:
#data 0xF3FDB294
#data 0x6093B282
#data 0x7620B2B0
#data 0x085AFE1D
#data 0xE001FD1D
#data 0x2338025A
#data 0x8B00405A
#data 0xA0A2

loc_8c12ddbe:
	nop
#data 0x6093B274
#data 0xF3FDB27C
#data 0xFAECA000

#align4
loc_8c12ddcc:
#data 0x7901B228
#data 0xB25B8B1B
#data 0xB2697620
#data 0xB2976093
#data 0x60837620
#data 0x890288FF
#data 0xB2AF6093
#data 0x7001

loc_8c12ddea:
#data 0x2338
#data 0xA0898B00

#align4
loc_8c12ddf0:
#data 0x60930009
#data 0x7001B25A
#data 0x88FF6083
#data 0xB2CF8901
#data 0x6093

loc_8c12de02:
#data 0xB25D
#data 0xA00EF3FD
#data 0xFAEC

loc_8c12de0a:
#data 0xB25F
#data 0x6083F3FD
#data 0x890288FF
#data 0xB2976093
#data 0x7001

loc_8c12de1a:
#data 0x2338
#data 0xB24F8972
#data 0xA032F3FD
#data 0xFAEC

loc_8c12de26:
#data 0xB1FB
#data 0x8B177901
#data 0xF3FDB24E
#data 0x88FF6083
#data 0xB2878901
#data 0x6093

loc_8c12de3a:
#data 0xB237
#data 0x60836093
#data 0x890188FF
#data 0x6093B28E

#align4
loc_8c12de48:
#data 0x7620B29A
#data 0x89592338
#data 0x6093B22C
#data 0xF3FDB234
#data 0xFAECAF6A

#align4
loc_8c12de5c:
#data 0xF4CCF6EC
#data 0xB253F3FD
#data 0x60837620
#data 0x890188FF
#data 0x6093B26C

#align4
loc_8c12de70:
#data 0x89472338
#data 0x6093B21A
#data 0x88FF6083
#data 0xB2718901
#data 0x6093

loc_8c12de82:
#data 0xB21D
#data 0xAFA1F3FD
#data 0xFAEC

loc_8c12de8a:
#data 0xB1C9
#data 0x89077901
#data 0xF48CF6AC
#data 0xF8CCFAEC
#data 0x8BF62338
#data 0xF3FDA032

#align4
loc_8c12dea0:
#data 0xF3FDB28C
#data 0xFD5CB1D4
#data 0x7620B26A
#data 0x88FF6083
#data 0xB2A18901
#data 0x7620

loc_8c12deb6:
#data 0x2338
#data 0xB1F78924
#data 0xB1FF6093
#data 0xAFB0F3FD
#data 0xFAEC

loc_8c12dec6:
#data 0xB1AB
#data 0x89077901
#data 0xF48CF6AC
#data 0xF8CCFAEC
#data 0x8BF62338
#data 0xF3FDA014

#align4
loc_8c12dedc:
#data 0xF3FDB26E
#data 0xFD5CB1B6
#data 0x085AFE1D
#data 0xE001FD1D
#data 0x405A025A
#data 0x7620B246
#data 0x89052338
#data 0x6093B1D8
#data 0xF3FDB1E0
#data 0xFAECAF91

#align4
loc_8c12df04:
#data 0x40156042
#data 0xAD1D8900

#align4
loc_8c12df0c:
#data 0x7404C880
#data 0x63468D02
#data 0xF3FDAE6A

#align4
loc_8c12df18:
#data 0xF3FDC810
#data 0xAE658900

#align4
loc_8c12df20:
#data 0xA0130009
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8c12df40:
#data 0xE9014C5A
#data 0xF3FD6346
#data 0x495AF10D

#align4
loc_8c12df4c:
#data 0x79016903
#data 0x60426E43
#data 0xC8017420
#data 0x5EE18B02
#data 0x3E4C74E8

#align4
loc_8c12df60:
#data 0xF6E9F4E9
#data 0xF5FDF72D
#data 0x60426E43
#data 0xC8017420
#data 0x5EE18B02
#data 0x3E4C74E8

#align4
loc_8c12df78:
#data 0xF71D0E83
#data 0xF79DE001
#data 0xF40DF743
#data 0xF8E9405A
#data 0xFB2DFAE9
#data 0x6E43F9FD
#data 0x74206042
#data 0x8B02C801
#data 0x74E85EE1
#data 0x3E4C

loc_8c12df9e:
#data 0x0E83
#data 0xE001FB1D
#data 0xFB83FB9D
#data 0x405AF80D
#data 0x8B37F145
#data 0xC8016093
#data 0x8B00E028
#data 0xE010

loc_8c12dfba:
#data 0xFE6C
#data 0xFEF2306C
#data 0xFDF2FC4C
#data 0xF0CBF0EB
#data 0x8B14F185
#data 0xC8016093
#data 0x8B00E010
#data 0xE028

loc_8c12dfd6:
#data 0xFEAC
#data 0xFEF2306C
#data 0xFDF2FC8C
#data 0xF0CBF0EB
#data 0x40216063
#data 0xE0FF2602
#data 0x89443800
#data 0x8B423200
#data 0x895F

loc_8c12dff6:
#data 0xF3FD
#data 0xB1297901
#data 0x79FFFD5C
#data 0x40216063
#data 0x2602F3FD
#data 0x3800E0FF
#data 0x32008970
#data 0xFE1D8B6E
#data 0xFD1D085A
#data 0x025AE001
#data 0x405AA068

#align4
loc_8c12e020:
#data 0x8B1EF185
#data 0xC8016093
#data 0x8B00E010
#data 0xE028

loc_8c12e02e:
#data 0xFEAC
#data 0xFEF2306C
#data 0xFDF2FC8C
#data 0xF0CBF0EB
#data 0xB107F3FD
#data 0x6063FD5C
#data 0x26024021
#data 0xF3FDE0FF
#data 0x89703080
#data 0x8B6E3020
#data 0x085AFE1D
#data 0xE001FD1D
#data 0xA068025A
#data 0x405A

loc_8c12e062:
#data 0x6083
#data 0x8B0088FF
#data 0xA08A

loc_8c12e06a:
	nop
#data 0x88FF6023
#data 0xA0858900

#align4
loc_8c12e074:
#data 0xA09C0009
	nop

loc_8c12e07a:
#data 0xB0D1
#data 0x8B087901
#data 0x7620B104
#data 0x79012338
#data 0xA0AC8B00

#align4
loc_8c12e08c:
#data 0xAF670009
#data 0xF3FD

loc_8c12e092:
#data 0xB11B
#data 0xB109F3FD
#data 0xB1376093
#data 0x60837620
#data 0x890188FF
#data 0x6093B150

#align4
loc_8c12e0a8:
#data 0x79012338
#data 0xA09A8B00

#align4
loc_8c12e0b0:
#data 0xAF550009
#data 0xF3FD

loc_8c12e0b6:
#data 0xB0B3
#data 0x8B087901
#data 0x7620B0E6
#data 0x79012338
#data 0xA08E8B00

#align4
loc_8c12e0c8:
#data 0xAF490009
#data 0xF3FD

loc_8c12e0ce:
#data 0xB0FD
#data 0xB0EBF3FD
#data 0xB1196093
#data 0xFE1D7620
#data 0xFD1D085A
#data 0x025AE001
#data 0x2338405A
#data 0x897C7901
#data 0xF3FDAF38

#align4
loc_8c12e0f0:
#data 0x7901B096
#data 0xB0C98B10
#data 0xB0D77620
#data 0xB1056093
#data 0x60837620
#data 0x890288FF
#data 0xB11D6093
#data 0x7001

loc_8c12e10e:
#data 0x2338
#data 0x89687901
#data 0xF3FDAF24

#align4
loc_8c12e118:
#data 0xF3FDB0D8
#data 0x88FF6083
#data 0x60938902
#data 0x7001B110

#align4
loc_8c12e128:
#data 0x79012338
#data 0xAF17895B
#data 0xF3FD

loc_8c12e132:
#data 0xB075
#data 0x8B147901
#data 0xF3FDB0C8
#data 0x88FF6083
#data 0xB1018901
#data 0x6093

loc_8c12e146:
#data 0xB0B1
#data 0x60836093
#data 0x890188FF
#data 0x6093B108

#align4
loc_8c12e154:
#data 0x7620B114
#data 0x79012338
#data 0xAEFF8943
#data 0xF3FD

loc_8c12e162:
#data 0xF6EC
#data 0xF3FDF4CC
#data 0x7620B0D0
#data 0x88FF6083
#data 0xB0E98901
#data 0x6093

loc_8c12e176:
#data 0x2338
#data 0x89347901
#data 0xF3FDAEF0

#align4
loc_8c12e180:
#data 0x7901B04E
#data 0xF3FD8905
#data 0x79012338
#data 0xAEE7892B
#data 0xF3FD

loc_8c12e192:
#data 0xB113
#data 0xB05BF3FD
#data 0xB0F1FD5C
#data 0x60837620
#data 0x890188FF
#data 0x7620B128

#align4
loc_8c12e1a8:
#data 0x79012338
#data 0xAED7891B
#data 0xF3FD

loc_8c12e1b2:
#data 0xB035
#data 0x89057901
#data 0x2338F3FD
#data 0x89127901
#data 0xF3FDAECE

#align4
loc_8c12e1c4:
#data 0xF3FDB0FA
#data 0xFD5CB042
#data 0x085AFE1D
#data 0xE001FD1D
#data 0x405A025A
#data 0x7620B0D2
#data 0x79012338
#data 0xAEBD8901
#data 0xF3FD

loc_8c12e1e6:
#data 0x6042
#data 0x89004015
#data 0xABAC

loc_8c12e1ee:
#data 0xC880
#data 0x8D027404
#data 0xAEA96346
#data 0xF3FD

loc_8c12e1fa:
#data 0xC810
#data 0x8B00F3FD
#data 0xAEA4

loc_8c12e202:
	nop
#data 0x0009ACF2
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8c12e220:
#data 0x4310FCE9
#data 0xFF2DFEE9
#data 0x8D076E43
#data 0x6042FDFD
#data 0xC8017420
#data 0x5EE18B02
#data 0x3E4C74E8

#align4
loc_8c12e23c:
#data 0xF1F50E83
#data 0xE001FF1D
#data 0xFFC3FF9D
#data 0x000BFC0D
#data 0x0009405A

#align4
loc_8c12e250:
#data 0xFC81FC4C
#data 0xF081F01C
#data 0xF3A1F36C
#data 0xF291F25C
#data 0xF0C3FEAC
#data 0x475AFD9C
#data 0xE001FF0D
#data 0x6093405A
#data 0xE00CC801
#data 0xE0248900

#align4
loc_8c12e278:
#data 0xFD2EFE3E
#data 0xFDF2FEF2
#data 0x70FCF6F7
#data 0x70FCF6E7
#data 0xF6D7000B
;==============================================

#align4
loc_8c12e28c:
#data 0x60630683
#data 0xFEF2F6EC
#data 0xFDF2F4CC
#data 0xF3FD70FC
#data 0x7620F0FB
#data 0x7540F0EB
#data 0x000BF0DB
#data 0x00090083

#align4
loc_8c12e2ac:
#data 0xE024C801
#data 0xE00C8900

#align4
loc_8c12e2b4:
#data 0x70FCF6F7
#data 0x70FCF6E7
#data 0xF6D7000B
;==============================================

#align4
loc_8c12e2c0:
#data 0xFE6CFC4C
#data 0xF6ACF48C
#data 0xF8CC000B
;==============================================

#align4
loc_8c12e2cc:
#data 0x06837620
#data 0xF01CF4C1
#data 0xF36CF0C1
#data 0xF25CF3E1
#data 0xF043F2D1
#data 0xF6ECF7FC
#data 0xF4CCF5DC
#data 0xFF0D475A
#data 0x405AE001
#data 0xFD2EFE3E
#data 0xFEF26063
#data 0xFDF270FC
#data 0x7620F0FB
#data 0x7540F0EB
#data 0x000BF0DB
#data 0x00090083

#align4
loc_8c12e30c:
#data 0xFC4C0683
#data 0xF01CFC81
#data 0xF36CF081
#data 0xF25CF3A1
#data 0xFEACF291
#data 0xFD9CF0C3
#data 0xFF0D475A
#data 0x405AE001
#data 0xFD2EFE3E
#data 0xFEF26063
#data 0xFDF270FC
#data 0x7620F0FB
#data 0x7540F0EB
#data 0x000BF0DB
#data 0x00090083

#align4
loc_8c12e348:
#data 0xE010C801
#data 0xE0288900

#align4
loc_8c12e350:
#data 0x2076306C
#data 0x20867620
#data 0x06837540
#data 0x20267620
#data 0x0083000B
;==============================================

#align4
loc_8c12e364:
#data 0xE010C801
#data 0xE0288900

#align4
loc_8c12e36c:
#data 0x306CFFBC
#data 0xFEF2FEAC
#data 0xFDF2FD9C
#data 0xF0EBF0FB
#data 0xF0DB000B
;==============================================

#align4
loc_8c12e380:
#data 0x60630683
#data 0x70FCFF7C
#data 0xFEF2FE6C
#data 0xFDF2FD5C
#data 0x7620F0FB
#data 0x7540F0EB
#data 0x000BF0DB
#data 0x00090083

#align4
loc_8c12e3a0:
#data 0xE028C801
#data 0xE0108900

#align4
loc_8c12e3a8:
#data 0x306CFF7C
#data 0xFEF2FE6C
#data 0xFDF2FD5C
#data 0xF0EBF0FB
#data 0xF0DB000B
;==============================================

#align4
loc_8c12e3bc:
#data 0xF01CF4C1
#data 0xF36CF0C1
#data 0xF25CF3E1
#data 0xF043F2D1
#data 0xF6ECF7FC
#data 0xF4CCF5DC
#data 0xFF0D475A
#data 0x405AE001
#data 0xC8016093
#data 0x8900E028
#data 0xE010

loc_8c12e3e6:
#data 0xFE3E
#data 0xFEF2FD2E
#data 0xFDF2306C
#data 0xF0EBF0FB
#data 0xF0DB000B
;==============================================

#align4
loc_8c12e3f8:
#data 0x60630683
#data 0x207670FC
#data 0x20867620
#data 0x20267540
#data 0x0083000B

loc_8C12E40C:
mov.l r13,@-r15
add 0xFC,r15
stc sr, r0
mov.w @(loc_8C12E522,pc),r3 ; r3 set to 0xFF0f
shlr2 r0
shlr2 r0
and 0x0F,r0
mov.w r0,@r15
stc sr, r0
and r3,r0
or 0xF0,r0
ldc r0, sr
mov.l @(loc_8C12E528,pc),r6 ; r6 set to 0x8C2DF0F4
mov.l @(loc_8C12E52C,pc),r7 ; r7 set to 0x8C2DF0E0
mov.l @r6,r3 ; r3 ??
mov.l @r7,r0
mov.l @(0x04,r4),r1
sub r3,r0
mov.l @(loc_8C12E524,pc),r2 ; r2 set to 0x8C2DF0Ec
mov.l @r4,r13
cmp/hi r1,r0
bf/s loc_8C12E44e
mov.l @r2,r5
mov.l @(0x04,r4),r4
mov.l @(loc_8C12E530,pc),r1 ; r1 set to 0x8C2DF118
mov.l r4,@r1 ; r1 ??? bc r4 is ???
mov.l @r6,r3
mov.l @r7,r0
sub r3,r0
mov.l @(loc_8C12E534,pc),r3 ; r3 set to 0x8C2DF11c
sub r4,r0
bra loc_8C12E45a
mov.l r0,@r3

loc_8c12e44e:
mov.l @(loc_8c12e530,pc),r3
mov r0,r4
mov 0x00,r1
mov.l r0,@r3
mov.l @(loc_8c12e534,pc),r0
mov.l r1,@r0

loc_8c12e45a:
mov.l @r6,r3
cmp/pl r4
add r4,r3
mov.l r3,@r6
mov.l @(loc_8C12E538,pc),r6
bf loc_8c12e47e

loc_8c12e466:
mov.b @r5+,r2
mov.b r2,@r13
mov.l @r6,r3
mov.l @r7,r1
add r3,r1
cmp/eq r1,r5
bf/s loc_8c12e478
add 0x01,r13
mov.l @r6,r5

loc_8c12e478:
add 0xFF,r4
cmp/pl r4
bt loc_8c12e466

loc_8c12e47e:
stc sr, r2
mov.w @(loc_8c12e522,pc),r1
mov.l @(loc_8c12e524,pc),r3
and r1,r2
mov.l r5,@r3
mov.w @r15,r0
extu.w r0,r0
and 0x0F,r0
shll2 r0
shll2 r0
or r2,r0
ldc r0, sr
mov.l @(loc_8c12e530,pc),r0
add 0x04,r15
rts
mov.l @r15+,r13

loc_8C12E49E:
mov.l r14,@-r15
add 0xFC,r15
stc sr, r0
mov.w @(loc_8C12E522,pc),r3 ; r3 set to 0xFF0f
shlr2 r0
shlr2 r0
and 0x0F,r0
mov.w r0,@r15
stc sr, r0
and r3,r0
or 0xF0,r0
ldc r0, sr
mov.l @(loc_8C12E540,pc),r14 ; r14 set to 0x8C2DF104
mov.l @(loc_8C12E53C,pc),r2 ; r2 set to 0x8C2DF100
mov.l @(0x04,r4),r3 ; r3 ??? bc r4 is ???
mov.l @r14,r5
mov.l @r2,r6
cmp/hi r3,r5
bf/s loc_8C12E4D0
mov.l @r4,r7
mov.l @(loc_8C12E544,pc),r3 ; r3 set to 0x8C2DF120
mov.l @(0x04,r4),r5
mov.l r5,@r3 ; r3 ??? bc r5 is ???
bra loc_8C12E4D8
mov 0x00,r1

#align4
loc_8c12e4d0:
mov.l @(loc_8c12e544,pc),r3
mov.l r5,@r3
mov.l @(0x04,r4),r1
sub r5,r1

loc_8c12e4d8:
mov.l @(loc_8C12E548,pc),r0
cmp/pl r5
mov.l @(loc_8C12E550,pc),r4
mov.l r1,@r0
mov.l @r14,r3
sub r5,r3
mov.l r3,@r14
mov.l @(loc_8C12E54C,pc),r14
bf loc_8c12e502

loc_8c12e4ea:
mov.b @r7+,r2
mov.b r2,@r6
add 0x01,r6
mov.l @r4,r3
mov.l @r14,r1
add r3,r1
cmp/eq r1,r6
bf/s loc_8c12e4fe
add 0xFF,r5
mov.l @r4,r6

loc_8c12e4fe:
cmp/pl r5
bt loc_8c12e4ea

loc_8c12e502:
stc sr, r2
mov.w @(loc_8c12e522,pc),r1
mov.l @(loc_8c12e53c,pc),r3
and r1,r2
mov.l r6,@r3
mov.w @r15,r0
extu.w r0,r0
and 0x0F,r0
shll2 r0
shll2 r0
or r2,r0
ldc r0, sr
mov.l @(loc_8c12e544,pc),r0
add 0x04,r15
rts
mov.l @r15+,r14
;==============================================

loc_8c12e522:
#data 0xFF0F

loc_8c12e524:
#data 0xF0EC
#data 0x8C2D

loc_8c12e528:
#data 0xF0F4
#data 0x8C2D

loc_8c12e52c:
#data 0xF0E0
#data 0x8C2D

loc_8c12e530:
#data 0xF118
#data 0x8C2D

loc_8c12e534:
#data 0xF11C
#data 0x8C2D
loc_8c12e538:
#data 0xF0E8
#data 0x8C2D

#align4
loc_8c12e53c:
#data 0x8C2DF100

loc_8c12e540:
#data 0xF104
#data 0x8C2D

#align4
loc_8c12e544:
#data 0x8C2DF120

#align4
loc_8C12E548:
#data 0x8C2DF124

#align4
loc_8C12E54C:
#data 0x8C2DF0E4

#align4
loc_8C12E550:
#data 0x8C2DF0F8

loc_8C12E554:
sts.l pr,@-r15
mov.l @(loc_8C12E578,pc),r3 ; r3 set to 0x8C129620
mov r4,r2
mov.l @(loc_8C12E574,pc),r1 ; r1 set to 0x8C2DF10c
jsr @r3
mov 0x04,r0 ; r0 set to 0x04
lds.l @r15+,pr
rts
nop
;==============================================

loc_8C12E566:
mov.l @(loc_8C12E57C,pc),r0 ; r0 set to 0x8C2DF108
rts
nop
;==============================================

loc_8C12E56C:
mov.l @(loc_8C12E580,pc),r2 ; r2 set to 0x8C2DF114
mov.l @r4,r3
rts
mov.l r3,@r2
;==============================================

#align4
loc_8C12E574:
#data 0x8C2DF10c

#align4
loc_8C12E578:
#data loc_8c129620

loc_8C12E57C:
#data 0x8C2DF108

#align4
loc_8C12E580:
#data 0x8C2DF114


loc_8C12E584:
mov.l @(loc_8C12E5C0,pc),r2 ; r2 set to 0x8C12E5Aa
mov 0x00,r5 ; r5 set to 0x00
mov.l @(loc_8C12E5BC,pc),r3 ; r3 set to 0x8C12E5A4
mov.l @(loc_8C12E5B8,pc),r4 ; r4 set to 0x8C2DF128
mov.l r3,@r4 ; r4 ??
mov.l @(loc_8C12E5C4,pc),r3 ; r3 set to 0x8C12E5Ae
mov.l r5,@(0x04,r4)
mov.l r2,@(0x08,r4)
mov.l @(loc_8C12E5C8,pc),r2 ; r2 set to 0x8C12E5B4
mov.l r3,@(0x0C,r4)
mov.l r5,@(0x10,r4)
mov.l r2,@(0x14,r4)
rts
mov r4,r0
;==============================================

loc_8C12E5A0:
rts
nop
;==============================================

loc_8C12E5A4:
mov.l @(loc_8C12E5CC,pc),r0 ; r0 set to 0x8C16BFD4
rts
nop
;==============================================

loc_8C12E5AA:
rts
nop
;==============================================

loc_8C12E5AE:
mov.l @(loc_8C12E5D0,pc),r0 ; r0 set to 0x8C172F80
rts
nop
;==============================================

loc_8C12E5B4:
rts
nop
;==============================================

#align4
loc_8C12E5B8:
#data 0x8C2DF128

#align4
loc_8C12E5BC:
#data loc_8c12E5A4

loc_8C12E5C0:
#data loc_8c12E5Aa

loc_8C12E5C4:
#data loc_8c12E5Ae

loc_8C12E5C8:
#data loc_8c12E5B4

loc_8C12E5CC:
#data bank16.loc_8c16BFD4

loc_8C12E5D0:
#data bank17.loc_8c172F80


loc_8C12E5D4:
mov.l r3,@-r15
mov.l r4,@-r15
mov 0x03,r3 ; r3 set to 0x03
mov r0,r4
and r3,r4
and r1,r3 ; r3 ??? bc r1 is ???
or r4,r3
tst r3,r3
bt loc_8C12E618
mov r0,r4
mov.b @r1+,r0
mov r4,r3

loc_8C12E5EC:
cmp/eq 0x00,r0
mov.b r0,@r3
bt loc_8C12E610
mov.b @r1+,r0
cmp/eq 0x00,r0
mov.b r0,@(0x01,r3)
bt loc_8C12E610
mov.b @r1+,r0
cmp/eq 0x00,r0
mov.b r0,@(0x02,r3)
bt loc_8C12E610
mov.b @r1+,r0
cmp/eq 0x00,r0
mov.b r0,@(0x03,r3)
bt loc_8C12E610
mov.b @r1+,r0
bra loc_8C12E5Ec
add 0x04,r3

loc_8C12E610:
mov r4,r0
mov.l @r15+,r4
rts
mov.l @r15+,r3
;==============================================

loc_8C12E618:
mov.l @(loc_8C12E620,pc),r3 ; r3 set to 0x8C1306B0
jmp @r3
nop
	nop

#align4
loc_8C12E620:
#data bank13.loc_8c1306B0

loc_8C12E624:
#data 0x205B6043
#data 0x8B35C803
#data 0xE2006356

#align4
loc_8C12E630:
#data 0x232C6046
#data 0x33008915
#data 0x8B116156
#data 0x212C6046
#data 0x3100890f
#data 0x8B0B6356
#data 0x232C6046
#data 0x33008909
#data 0x8B056156
#data 0x212C6046
#data 0x31008903
#data 0x89E76356

loc_8C12E660:
#data 0x75Fc

loc_8C12E662:
#data 0x75Fc
#data 0x74FC6154
#data 0x31206044
#data 0x3100890f
#data 0x61548B0d
#data 0x31206044
#data 0x31008909
#data 0x61548B07
#data 0x31206044
#data 0x31008903
#data 0x60448B01
#data 0x6154

loc_8C12E68E:
#data 0x000b
#data 0x000B3018
#data 0x00093038

#align4
loc_8C12E698:
#data 0x88006044
#data 0x89136354
#data 0x8B113300
#data 0x63546044
#data 0x890D8800
#data 0x8B0B3300
#data 0x63546044
#data 0x89078800
#data 0x8B053300
#data 0x63546044
#data 0x89018800
#data 0x89E73300

#align4
loc_8C12E6C8:
#data 0x3038000b
;==============================================

loc_8C12E6CC:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
mov.w @(loc_8C12E7AC,pc),r0 ; r0 set to 0xFF30
add r0,r15
mov.w @(loc_8C12E7B0,pc),r14 ; r14 set to 0x94
mov 0x00,r11 ; r11 set to 0x00
mov.w @(loc_8C12E7AE,pc),r10 ; r10 set to 0xC0
mov r11,r0 ; r0 set to 0x00
add r15,r14 ; r14 ??? bc r15 is ???
mov r7,r12
add r15,r10 ; r10 ??? bc r15 is ???
tst r4,r4
mov.l r11,@r10
mov.l r11,@(0x04,r10)
mov.l r11,@(0x08,r10)
mov.b r11,@r14
mov.b r0,@(0x01,r14)
mov.w r0,@(0x02,r14)
mov.l r0,@(0x04,r14)
mov.l r0,@(0x08,r14)
mov.l r0,@(0x10,r14)
mov.l r0,@(0x14,r14)
mov.l r0,@(0x18,r14)
mov.l r0,@(0x1C,r14)
mov.l r0,@(0x20,r14)
mov.l r0,@(0x24,r14)
bf/s loc_8C12E746
mov.l r0,@(0x28,r14)
tst r6,r6
bf loc_8C12E71c
mov.l @(loc_8C12E7BC,pc),r2 ; r2 set to 0x8C2DF14c
mov.w @(loc_8C12E7B2,pc),r3 ; r3 set to 0x452
bra loc_8C12E75a
mov.l r3,@r2

loc_8C12E71C:
mov 0x10,r0 ; r0 set to 0x10
mov.b @(r0,r6),r0 ; r0 ??? bc r6 is ???
tst 0x07,r0
bf loc_8C12E72c
mov.l @(loc_8C12E7BC,pc),r3 ; r3 set to 0x8C2DF14c
mov.w @(loc_8C12E7B4,pc),r2 ; r2 set to 0x514
bra loc_8C12E75a
mov.l r2,@r3

loc_8C12E72C:
mov 0x10,r0 ; r0 set to 0x10
mov.b @(r0,r6),r7
mov 0x04,r3 ; r3 set to 0x04
tst r7,r3
bf loc_8C12E744
mov 0x01,r1 ; r1 set to 0x01
tst r7,r1
bt loc_8C12E744
mov.l @(loc_8C12E7BC,pc),r3 ; r3 set to 0x8C2DF14c
mov.w @(loc_8C12E7B6,pc),r2 ; r2 set to 0x516
bra loc_8C12E75a
mov.l r2,@r3

loc_8c12e744:
mov.l r5,@(0x0C,r10)

loc_8C12E746:
mov 0x30,r0 ; r0 set to 0x30
mov.l r4,@r10
mov.l r6,@(0x04,r10)
mov.l r11,@(0x08,r10)
mov.b r11,@r14
mov.b r0,@(0x08,r15)
bsr loc_8C12F07e
mov r10,r4
tst r0,r0
bt loc_8C12E75e

loc_8C12E75A:
bra loc_8C12EDF4
mov 0xFF,r0

loc_8C12E75E:
mov r15,r9
add 0x14,r9
mov.w @(loc_8C12E7B8,pc),r8 ; r8 set to 0x518
mov r9,r3
mov.l r3,@(0x10,r15)
bra loc_8C12EDD6
mov 0x03,r13

loc_8C12E76C:
mov.b @r12,r0
cmp/eq 0x25,r0
bt loc_8C12E776
bra loc_8C12EDB2
nop

loc_8C12E776:
mov.b r11,@r14
add 0x01,r12
mov.l r9,@(0x10,r14)
mov.l r9,@(0x14,r14)
mov.l r11,@(0x18,r14)
mov.l r11,@(0x1C,r14)
mov.l r11,@(0x20,r14)
mov.l r11,@(0x24,r14)
bra loc_8C12E7D6
mov.l r11,@(0x28,r14)

loc_8C12E78A:
#data 0x60C0
#data 0x8907882d
#data 0x8908882b
#data 0x89138820
#data 0x89188823
#data 0x0009A01a

#align4
loc_8C12E7A0:
#data 0xA01660E0
#data 0xCB02

loc_8C12E7A6:
#data 0x60E0
#data 0xCB08A013

loc_8C12E7AC:
#data 0xFF30

loc_8C12E7AE:
#data 0x00C0

loc_8C12E7B0:
#data 0x0094

loc_8C12E7B2:
#data 0x0452

loc_8C12E7B4:
#data 0x0514

loc_8C12E7B6:
#data 0x0516

loc_8C12E7B8:
#data 0x0518
#data 0x0000

#align4
loc_8C12E7BC:
#data 0x8C2DF14c

#align4
loc_8C12E7C0:
#data 0xC80860E0
#data 0x60E08B06
#data 0xA003CB10
#data 0x2E00

loc_8C12E7CE:
#data 0x60E0
#data 0xCB04

loc_8C12E7D2:
#data 0x2E00

loc_8C12E7D4:
#data 0x7C01

loc_8c12e7d6:
mov.b @r12,r0
cmp/eq 0x2D,r0
bt/s loc_8c12e78a
mov r0,r4
mov r4,r0
cmp/eq 0x2B,r0
bt loc_8c12e78a
mov r4,r0
cmp/eq 0x20,r0
bt loc_8c12e78a
mov r4,r0
cmp/eq 0x23,r0
bt loc_8c12e78a
mov 0x20,r0
mov.b r0,@(0x01,r14)
mov.b @r12,r0
cmp/eq 0x30,r0
bf loc_8c12e800
mov 0x30,r0
add 0x01,r12
mov.b r0,@(0x01,r14)

loc_8c12e800:
mov.l r11,@(0x04,r14)
mov.b @r12,r0
cmp/eq 0x2A,r0
bf loc_8c12e85e
mov.w @(loc_8C12E896,pc),r0
mov.l @(r0,r15),r4
add 0x04,r4
mov r4,r3
tst r13,r3
bt loc_8c12e81c
mov.w @(loc_8C12E896,pc),r0
mov.l @(r0,r15),r2
bra loc_8c12e81e
add 0x08,r2

loc_8c12e81c:
mov r4,r2

loc_8c12e81e:
mov r2,r5
add 0xFC,r5
mov r5,r1
mov.w @(loc_8C12E896,pc),r0
tst r13,r1
bt/s loc_8c12e832
mov.l r2,@(r0,r15)
mov r2,r3
bra loc_8c12e834
add 0xF8,r3

loc_8c12e832:
mov r5,r3

loc_8c12e834:
mov.l @r3,r1
mov r1,r3
cmp/pz r3
bt/s loc_8c12e84a
mov.l r1,@(0x04,r14)
mov.b @r14,r0
or 0x02,r0
mov.b r0,@r14
mov.l @(0x04,r14),r3
neg r3,r3
mov.l r3,@(0x04,r14)

loc_8c12e84a:
mov.l @(0x04,r14),r1
mov.w @(loc_8C12E898,pc),r2
cmp/gt r2,r1
bf/s loc_8c12e85e
add 0x01,r12
mov.b @r14,r0
mov.l @(loc_8C12E89C,pc),r1
or 0x01,r0
mov.b r0,@r14
mov.l r8,@r1

loc_8c12e85e:
mov.b @r12,r0
mov.l @(loc_8c12e8a0,pc),r1
extu.b r0,r0
mov.b @(r0,r1),r0
extu.b r0,r0
tst 0x04,r0
bt loc_8c12e8c0
bra loc_8c12e8b2
mov.l r11,@(0x04,r14)

loc_8c12e870:
mov.b @r12,r4
mov.w @(loc_8C12E898,pc),r1
mov.l @(loc_8c12e8a4,pc),r3
add 0xD0,r4
sub r4,r1
jsr @r3
mov 0x0A,r0
mov.l @(0x04,r14),r2
cmp/ge r2,r0
bf/s loc_8c12e8a8
add 0x01,r12
mov.l @(0x04,r14),r1
mov r1,r3
shll2 r1
add r3,r1
shll r1
add r4,r1
bra loc_8c12e8b2
mov.l r1,@(0x04,r14)

loc_8C12E896:
#data 0x00F0

loc_8C12E898:
#data 0x0200
#data 0x0000

#align4
loc_8C12E89C:
#data 0x8C2DF14C

#align4
loc_8c12e8a0:
#data bank14.loc_8c143848

loc_8c12e8a4:
#data loc_8c129128


loc_8c12e8a8:
mov.b @r14,r0
mov.l @(loc_8C12E95C,pc),r3
or 0x01,r0
mov.b r0,@r14
mov.l r8,@r3

loc_8c12e8b2:
mov.b @r12,r0
mov.l @(loc_8c12e960,pc),r1
extu.b r0,r0
mov.b @(r0,r1),r0
extu.b r0,r0
tst 0x04,r0
bf loc_8c12e870

loc_8c12e8c0:
mov 0xFF,r2
mov.l r2,@(0x08,r14)
mov.b @r12,r0
cmp/eq 0x2E,r0
bf loc_8c12e980
add 0x01,r12
mov.b @r12,r0
cmp/eq 0x2A,r0
bf loc_8c12e920
mov.w @(loc_8C12E958,pc),r0
mov.l @(r0,r15),r4
add 0x04,r4
mov r4,r3
tst r13,r3
bt loc_8c12e8e6
mov.w @(loc_8C12E958,pc),r0
mov.l @(r0,r15),r2
bra loc_8c12e8e8
add 0x08,r2

loc_8c12e8e6:
mov r4,r2

loc_8c12e8e8:
mov r2,r5
add 0xFC,r5
mov r5,r1
mov.w @(loc_8C12E958,pc),r0
tst r13,r1
bt/s loc_8c12e8fc
mov.l r2,@(r0,r15)
mov r2,r3
bra loc_8c12e8fe
add 0xF8,r3

loc_8c12e8fc:
mov r5,r3

loc_8c12e8fe:
mov.l @r3,r1
mov r1,r3
cmp/pz r3
bt/s loc_8c12e90c
mov.l r1,@(0x08,r14)
mov 0xFF,r1
mov.l r1,@(0x08,r14)

loc_8c12e90c:
mov.l @(0x08,r14),r2
mov.w @(loc_8C12E95A,pc),r3
cmp/gt r3,r2
bf/s loc_8c12e920
add 0x01,r12
mov.b @r14,r0
mov.l @(loc_8C12E95C,pc),r2
or 0x01,r0
mov.b r0,@r14
mov.l r8,@r2

loc_8c12e920:
mov.b @r12,r0
mov.l @(loc_8c12e960,pc),r1
extu.b r0,r0
mov.b @(r0,r1),r0
extu.b r0,r0
tst 0x04,r0
bt loc_8c12e980
bra loc_8c12e972
mov.l r11,@(0x08,r14)

loc_8c12e932:
mov.b @r12,r4
mov.w @(loc_8C12E95A,pc),r1
mov.l @(loc_8c12e964,pc),r3
add 0xD0,r4
sub r4,r1
jsr @r3
mov 0x0A,r0
mov.l @(0x08,r14),r2
cmp/ge r2,r0
bf/s loc_8c12e968
add 0x01,r12
mov.l @(0x08,r14),r1
mov r1,r3
shll2 r1
add r3,r1
shll r1
add r4,r1
bra loc_8c12e972
mov.l r1,@(0x08,r14)

loc_8C12E958:
#data 0x00F0

loc_8C12E95A:
#data 0x0200

loc_8C12E95C:
#data 0xF14C
#data 0x8C2D

#align4
loc_8c12e960:
#data bank14.loc_8c143848

loc_8c12e964:
#data loc_8c129128


loc_8c12e968:
mov.b @r14,r0
mov.l @(loc_8C12EA3C,pc),r3
or 0x01,r0
mov.b r0,@r14
mov.l r8,@r3

loc_8c12e972:
mov.b @r12,r0
mov.l @(loc_8c12ea40,pc),r1
extu.b r0,r0
mov.b @(r0,r1),r0
extu.b r0,r0
tst 0x04,r0
bf loc_8c12e932

loc_8c12e980:
mov 0x20,r2
mov.l r2,@(0x0C,r14)
mov.b @r12,r0
cmp/eq 0x68,r0
bt/s loc_8c12e998
mov r0,r4
mov r4,r0
cmp/eq 0x6C,r0
bt loc_8c12e998
mov r4,r0
cmp/eq 0x4C,r0
bf loc_8c12e99c

loc_8c12e998:
mov.b @r12+,r2
mov.l r2,@(0x0C,r14)

loc_8c12e99c:
mov.b @r12,r0
cmp/eq 0x64,r0
bt loc_8c12ea0a
cmp/eq 0x69,r0
bt loc_8c12ea0a
cmp/eq 0x6F,r0
bt loc_8c12ea0a
cmp/eq 0x75,r0
bt loc_8c12ea0a
cmp/eq 0x78,r0
bt loc_8c12ea0a
cmp/eq 0x58,r0
bt loc_8c12ea0a
cmp/eq 0x66,r0
bf loc_8c12e9be
bra loc_8c12eb48
nop

loc_8c12e9be:
cmp/eq 0x65,r0
bf loc_8c12e9c6
bra loc_8c12eb48
nop

loc_8c12e9c6:
cmp/eq 0x45,r0
bf loc_8c12e9ce
bra loc_8c12eb48
nop

loc_8c12e9ce:
cmp/eq 0x67,r0
bf loc_8c12e9d6
bra loc_8c12eb48
nop

loc_8c12e9d6:
cmp/eq 0x47,r0
bf loc_8c12e9de
bra loc_8c12eb48
nop

loc_8c12e9de:
cmp/eq 0x63,r0
bf loc_8c12e9e6
bra loc_8c12eb6a
nop

loc_8c12e9e6:
cmp/eq 0x73,r0
bf loc_8c12e9ee
bra loc_8c12eb9c
nop

loc_8c12e9ee:
cmp/eq 0x70,r0
bf loc_8c12e9f6
bra loc_8c12ebf4
nop

loc_8c12e9f6:
cmp/eq 0x6E,r0
bf loc_8c12e9fe
bra loc_8c12ec50
nop

loc_8c12e9fe:
cmp/eq 0x25,r0
bf loc_8c12ea06
bra loc_8c12ec84
nop

loc_8c12ea06:
bra loc_8c12ec9c
nop

loc_8c12ea0a:
mov.l @(0x0C,r14),r0
cmp/eq 0x6C,r0
bf loc_8c12ea44
mov.w @(loc_8C12EA3A,pc),r0
mov.l @(r0,r15),r6
add 0x04,r6
mov r6,r4
tst r13,r4
bt loc_8c12ea22
mov.w @(loc_8C12EA3A,pc),r0
mov.l @(r0,r15),r4
add 0x08,r4

loc_8c12ea22:
mov.w @(loc_8C12EA3A,pc),r0
mov r4,r5
add 0xFC,r5
mov.l r4,@(r0,r15)
mov r5,r4
tst r13,r4
bt loc_8c12ea36
mov.w @(loc_8C12EA3A,pc),r0
mov.l @(r0,r15),r4
add 0xF8,r4

loc_8c12ea36:
bra loc_8c12eb2a
mov.l @r4,r4

loc_8C12EA3A:
#data 0x00F0

loc_8C12EA3C:
#data 0xF14C
#data 0x8C2D

#align4
loc_8c12ea40:
#data bank14.loc_8c143848


loc_8c12ea44:
cmp/eq 0x68,r0
bf loc_8c12eaba
mov.b @r12,r0
cmp/eq 0x75,r0
bt/s loc_8c12ea62
mov r0,r4
mov r4,r0
cmp/eq 0x58,r0
bt loc_8c12ea62
mov r4,r0
cmp/eq 0x78,r0
bt loc_8c12ea62
mov r4,r0
cmp/eq 0x6F,r0
bf loc_8c12ea8e

loc_8c12ea62:
mov.w @(loc_8C12EB00,pc),r0
mov.l @(r0,r15),r5
add 0x04,r5
mov r5,r4
tst r13,r4
bt loc_8c12ea74
mov.w @(loc_8C12EB00,pc),r0
mov.l @(r0,r15),r4
add 0x08,r4

loc_8c12ea74:
mov.w @(loc_8C12EB00,pc),r0
mov r4,r6
add 0xFC,r6
mov.l r4,@(r0,r15)
mov r6,r4
tst r13,r4
bt loc_8c12ea88
mov.w @(loc_8C12EB00,pc),r0
mov.l @(r0,r15),r4
add 0xF8,r4

loc_8c12ea88:
mov.l @r4,r4
bra loc_8c12eb2a
extu.w r4,r4

loc_8c12ea8e:
mov.w @(loc_8C12EB00,pc),r0
mov.l @(r0,r15),r5
add 0x04,r5
mov r5,r4
tst r13,r4
bt loc_8c12eaa0
mov.w @(loc_8C12EB00,pc),r0
mov.l @(r0,r15),r4
add 0x08,r4

loc_8c12eaa0:
mov.w @(loc_8C12EB00,pc),r0
mov r4,r6
add 0xFC,r6
mov.l r4,@(r0,r15)
mov r6,r4
tst r13,r4
bt loc_8c12eab4
mov.w @(loc_8C12EB00,pc),r0
mov.l @(r0,r15),r4
add 0xF8,r4

loc_8c12eab4:
mov.l @r4,r4
bra loc_8c12eb2a
exts.w r4,r4

loc_8c12eaba:
mov.b @r12,r0
cmp/eq 0x75,r0
bt/s loc_8c12ead4
mov r0,r4
mov r4,r0
cmp/eq 0x58,r0
bt loc_8c12ead4
mov r4,r0
cmp/eq 0x78,r0
bt loc_8c12ead4
mov r4,r0
cmp/eq 0x6F,r0
bf loc_8c12eb02

loc_8c12ead4:
mov.w @(loc_8C12EB00,pc),r0
mov.l @(r0,r15),r5
add 0x04,r5
mov r5,r4
tst r13,r4
bt loc_8c12eae6
mov.w @(loc_8C12EB00,pc),r0
mov.l @(r0,r15),r4
add 0x08,r4

loc_8c12eae6:
mov.w @(loc_8C12EB00,pc),r0
mov r4,r6
add 0xFC,r6
mov.l r4,@(r0,r15)
mov r6,r4
tst r13,r4
bt loc_8c12eb28
mov.w @(loc_8C12EB00,pc),r0
mov.l @(r0,r15),r4
bra loc_8c12eb28
add 0xF8,r4
#data 0xA014
	nop

loc_8C12EB00:
#data 0x00F0


loc_8c12eb02:
mov.w @(loc_8C12EC08,pc),r0
mov.l @(r0,r15),r5
add 0x04,r5
mov r5,r4
tst r13,r4
bt loc_8c12eb14
mov.w @(loc_8C12EC08,pc),r0
mov.l @(r0,r15),r4
add 0x08,r4

loc_8c12eb14:
mov.w @(loc_8C12EC08,pc),r0
mov r4,r6
add 0xFC,r6
mov.l r4,@(r0,r15)
mov r6,r4
tst r13,r4
bt loc_8c12eb28
mov.w @(loc_8C12EC08,pc),r0
mov.l @(r0,r15),r4
add 0xF8,r4

loc_8c12eb28:
mov.l @r4,r4

loc_8c12eb2a:
mov.l @(0x08,r14),r0
cmp/eq 0xFF,r0
bf/s loc_8c12eb36
mov r14,r7
mov 0x01,r3
mov.l r3,@(0x08,r14)

loc_8c12eb36:
mov.b @r12,r6
bsr loc_8c12ee0c
mov r9,r5
mov.l @(loc_8c12ec0c,pc),r3
mov.l r9,@(0x04,r15)
jsr @r3
mov r9,r4
bra loc_8c12ec4c
nop

loc_8c12eb48:
mov.w @(loc_8C12EC08,pc),r4
mov r14,r7
mov.b @r12,r6
mov r9,r5
mov.l @(loc_8c12ec10,pc),r2
jsr @r2
add r15,r4
sts fpscr,r4
mov.l @(loc_8C12EC14,pc),r3
mov.l @(loc_8c12ec0c,pc),r2
and r3,r4
mov.l r9,@(0x04,r15)
lds r4,fpscr
jsr @r2
mov r9,r4
bra loc_8c12ec4c
nop

loc_8c12eb6a:
mov.w @(loc_8C12EC08,pc),r0
mov.l @(0x10,r15),r2
mov.l @(r0,r15),r4
add 0x04,r4
mov r4,r3
tst r13,r3
bt loc_8c12eb7e
mov.w @(loc_8C12EC08,pc),r0
mov.l @(r0,r15),r3
add 0x08,r3

loc_8c12eb7e:
mov.w @(loc_8C12EC08,pc),r0
mov r3,r5
add 0xFC,r5
mov.l r3,@(r0,r15)
mov r5,r0
tst r13,r0
bt loc_8c12eb92
mov r3,r1
bra loc_8c12eb94
add 0xF8,r1

loc_8c12eb92:
mov r5,r1

loc_8c12eb94:
mov.l @r1,r0
mov.b r0,@r2
bra loc_8c12ec8a
nop

loc_8c12eb9c:
mov.w @(loc_8C12EC08,pc),r0
mov.l @(r0,r15),r4
add 0x04,r4
mov r4,r3
tst r13,r3
bt loc_8c12ebb0
mov.w @(loc_8C12EC08,pc),r0
mov.l @(r0,r15),r1
bra loc_8c12ebb2
add 0x08,r1

loc_8c12ebb0:
mov r4,r1

loc_8c12ebb2:
mov r1,r5
add 0xFC,r5
mov r5,r2
mov.w @(loc_8C12EC08,pc),r0
tst r13,r2
bt/s loc_8c12ebc6
mov.l r1,@(r0,r15)
mov r1,r3
bra loc_8c12ebc8
add 0xF8,r3

loc_8c12ebc6:
mov r5,r3

loc_8c12ebc8:
mov.l @r3,r1
mov.l @(loc_8c12ec0c,pc),r3
mov.l r1,@(0x04,r15)
jsr @r3
mov r1,r4
mov.l r0,@(0x0C,r15)
mov.l @(0x08,r14),r0
cmp/eq 0xFF,r0
bt/s loc_8c12ebe6
mov r0,r4
mov.l @(0x0C,r15),r2
cmp/ge r2,r4
bt loc_8c12ebe6
mov.l @(0x08,r14),r1
mov.l r1,@(0x0C,r15)

loc_8c12ebe6:
mov.l r9,@(0x14,r14)
mov.l r11,@(0x20,r14)
mov.l @(0x0C,r15),r3
mov.l @(0x04,r14),r2
sub r3,r2
bra loc_8c12eca6
mov.l r2,@(0x28,r14)

loc_8c12ebf4:
mov.w @(loc_8C12EC08,pc),r0
mov.l @(r0,r15),r5
add 0x04,r5
mov r5,r3
tst r13,r3
bt loc_8c12ec18
mov.w @(loc_8C12EC08,pc),r0
mov.l @(r0,r15),r1
bra loc_8c12ec1a
add 0x08,r1

loc_8C12EC08:
#data 0x00F0
#data 0x0000

#align4
loc_8c12ec0c:
#data loc_8c1297c4

loc_8c12ec10:
#data bank13.loc_8c130714

loc_8C12EC14:
#data 0xFFF7FFFF


loc_8c12ec18:
mov r5,r1

loc_8c12ec1a:
mov r1,r4
add 0xFC,r4
mov r4,r2
mov.w @(loc_8C12ED10,pc),r0
tst r13,r2
bt/s loc_8c12ec2e
mov.l r1,@(r0,r15)
mov r1,r3
bra loc_8c12ec30
add 0xF8,r3

loc_8c12ec2e:
mov r4,r3

loc_8c12ec30:
mov.l @(0x08,r14),r0
mov.l @r3,r4
cmp/eq 0xFF,r0
bf/s loc_8c12ec3e
mov r14,r7
mov 0x01,r2
mov.l r2,@(0x08,r14)

loc_8c12ec3e:
mov 0x78,r6
bsr loc_8c12ee0c
mov r9,r5
mov.l @(loc_8c12ed14,pc),r3
mov.l r9,@(0x04,r15)
jsr @r3
mov r9,r4

loc_8c12ec4c:
bra loc_8c12eca6
mov.l r0,@(0x0C,r15)

loc_8c12ec50:
mov.w @(loc_8C12ED10,pc),r0
mov.l @(r0,r15),r4
add 0x04,r4
mov r4,r3
tst r13,r3
bt loc_8c12ec64
mov.w @(loc_8C12ED10,pc),r0
mov.l @(r0,r15),r2
bra loc_8c12ec66
add 0x08,r2

loc_8c12ec64:
mov r4,r2

loc_8c12ec66:
mov r2,r5
add 0xFC,r5
mov r5,r1
mov.w @(loc_8C12ED10,pc),r0
tst r13,r1
bt/s loc_8c12ec7a
mov.l r2,@(r0,r15)
mov r2,r3
bra loc_8c12ec7c
add 0xF8,r3

loc_8c12ec7a:
mov r5,r3

loc_8c12ec7c:
mov.l @(0x08,r10),r1
mov.l @r3,r4
bra loc_8c12eca6
mov.l r1,@r4

loc_8c12ec84:
mov.l @(0x10,r15),r2
mov 0x25,r3
mov.b r3,@r2

loc_8c12ec8a:
mov 0x01,r3
mov.l r9,@(0x04,r15)
mov.l r3,@(0x0C,r15)
mov.l r9,@(0x14,r14)
mov.l r11,@(0x20,r14)
mov.l @(0x04,r14),r3
add 0xFF,r3
bra loc_8c12eca6
mov.l r3,@(0x28,r14)

loc_8c12ec9c:
mov.l @(loc_8C12ED18,pc),r1
mov.l r8,@r1
mov.b @r14,r0
or 0x01,r0
mov.b r0,@r14

loc_8c12eca6:
mov.b @r12,r0
cmp/eq 0x6E,r0
bf loc_8c12ecb0
bra loc_8c12edae
nop

loc_8c12ecb0:
mov.b @r14,r0
tst 0x01,r0
bf loc_8c12edae
mov.b @r14,r0
tst 0x02,r0
bf loc_8c12ecdc
mov.l @(0x28,r14),r2
cmp/pl r2
bf loc_8c12ecdc
bra loc_8c12ecd6
nop

loc_8c12ecc6:
mov r14,r4
mov 0x01,r5
mov r10,r6
bsr loc_8c12f016
add 0x01,r4
mov.l @(0x28,r14),r2
add 0xFF,r2
mov.l r2,@(0x28,r14)

loc_8c12ecd6:
mov.l @(0x28,r14),r3
cmp/pl r3
bt loc_8c12ecc6

loc_8c12ecdc:
mov.l @(0x1C,r14),r1
tst r1,r1
bf loc_8c12ecfa
mov.l @(0x20,r14),r2
tst r2,r2
bf loc_8c12ecfa
mov.l @(0x24,r14),r2
tst r2,r2
bf loc_8c12ecfa
mov.l @(0x0C,r15),r5
mov r10,r6
bsr loc_8c12f016
mov.l @(0x04,r15),r4
bra loc_8c12ed88
nop

loc_8c12ecfa:
mov.l @(0x10,r14),r5
mov.l @(0x04,r15),r3
sub r3,r5
cmp/pl r5
bf/s loc_8c12ed2c
mov.l r5,@r15
mov r10,r6
bsr loc_8c12f016
mov r3,r4
bra loc_8c12ed2c
nop

loc_8C12ED10:
#data 0x00F0
#data 0x0000

#align4
loc_8c12ed14:
#data loc_8c1297c4

loc_8C12ED18:
#data 0x8C2DF14C


loc_8c12ed1c:
mov r15,r4
mov 0x01,r5
mov r10,r6
bsr loc_8c12f016
add 0x08,r4
mov.l @(0x1C,r14),r2
add 0xFF,r2
mov.l r2,@(0x1C,r14)

loc_8c12ed2c:
mov.l @(0x1C,r14),r3
cmp/pl r3
bt loc_8c12ed1c
mov.l @(0x14,r14),r5
mov.l @(0x10,r14),r3
mov.l @r15,r2
sub r3,r5
cmp/pl r5
add r5,r2
bf/s loc_8c12ed5c
mov.l r2,@r15
mov r10,r6
bsr loc_8c12f016
mov.l @(0x10,r14),r4
bra loc_8c12ed5c
nop

loc_8c12ed4c:
mov r15,r4
mov 0x01,r5
mov r10,r6
bsr loc_8c12f016
add 0x08,r4
mov.l @(0x20,r14),r3
add 0xFF,r3
mov.l r3,@(0x20,r14)

loc_8c12ed5c:
mov.l @(0x20,r14),r2
cmp/pl r2
bt loc_8c12ed4c
mov.l @(0x0C,r15),r5
mov r10,r6
mov.l @r15,r3
sub r3,r5
bsr loc_8c12f016
mov.l @(0x14,r14),r4
bra loc_8c12ed82
nop

loc_8c12ed72:
mov r15,r4
mov 0x01,r5
mov r10,r6
bsr loc_8c12f016
add 0x08,r4
mov.l @(0x24,r14),r2
add 0xFF,r2
mov.l r2,@(0x24,r14)

loc_8c12ed82:
mov.l @(0x24,r14),r3
cmp/pl r3
bt loc_8c12ed72

loc_8c12ed88:
mov.b @r14,r0
tst 0x02,r0
bt loc_8c12edae
mov.l @(0x28,r14),r2
cmp/pl r2
bf loc_8c12edae
bra loc_8c12eda8
nop

loc_8c12ed98:
mov r14,r4
mov 0x01,r5
mov r10,r6
bsr loc_8c12f016
add 0x01,r4
mov.l @(0x28,r14),r2
add 0xFF,r2
mov.l r2,@(0x28,r14)

loc_8c12eda8:
mov.l @(0x28,r14),r3
cmp/pl r3
bt loc_8c12ed98

loc_8c12edae:
bra loc_8c12edd6
add 0x01,r12

loc_8C12EDB2:
bra loc_8C12EDBc
mov.l r12,@r15

loc_8C12EDB6:
#data 0x62F2
#data 0x2F227201

#align4
loc_8c12edbc:
mov.l @r15,r4
mov.b @r4,r4
tst r4,r4
bt loc_8c12edca
mov r4,r0
cmp/eq 0x25,r0
bf loc_8c12edb6

loc_8c12edca:
mov.l @r15,r5
mov r10,r6
sub r12,r5
bsr loc_8c12f016
mov r12,r4
mov.l @r15,r12

loc_8C12EDD6:
mov.b @r12,r3
tst r3,r3
bt loc_8C12EDEe
bsr loc_8C12F07e
mov r10,r4
tst r0,r0
bf loc_8C12EDEe
mov.b @r14,r0
tst 0x01,r0
bf loc_8C12EDEe
bra loc_8C12E76c
nop

loc_8C12EDEE:
bsr loc_8C12F06e
mov r10,r4
mov.l @(0x08,r10),r0

loc_8C12EDF4:
mov.w @(loc_8C12EE0A,pc),r1 ; r1 set to 0xD0, r1 set to 0xD0
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

loc_8C12EE0A:
#data 0x00D0

#align4
loc_8C12EE0C:
#data 0x2FD62FE6
#data 0x2FB62FC6
#data 0x2F962FA6
#data 0x4F222F86
#data 0x60637FF0
#data 0x6A538864
#data 0x8D0CE900
#data 0x88692A90
#data 0x88758909
#data 0x886F8907
#data 0x88788907
#data 0x88588907
#data 0xA0058905
	nop

loc_8C12EE42:
#data 0xA003
#data 0xE80a

loc_8C12EE46:
#data 0xA001
#data 0xE808

loc_8C12EE4A:
#data 0xE810

#align4
loc_8C12EE4C:
#data 0x88646063
#data 0x60638902
#data 0x8B038869

#align4
loc_8C12EE58:
#data 0x89014411
#data 0x6C4BA001

loc_8C12EE60:
#data 0x6C43

loc_8C12EE62:
#data 0x6EF3
#data 0x6D932CC8
#data 0x8F076B93
#data 0x53727E04
#data 0x89032338
#data 0x2E30E330
#data 0xED01A02d

#align4
loc_8C12EE7C:
#data 0x3C36E300
#data 0x8B29

loc_8C12EE82:
#data 0x61D3
#data 0xD34631Ec
#data 0x2F126213
#data 0x430B61C3
#data 0x22006083
#data 0x623063F2
#data 0x3237E309
#data 0x60D38905
#data 0x723002Ec
#data 0xA00D0E24
	nop

loc_8C12EEAA:
#data 0x61D3
#data 0x31EC6063
#data 0x2F128878
#data 0x60108B03
#data 0xA0037057
#data 0x2100

loc_8C12EEBE:
#data 0x6210
#data 0x21207237

#align4
loc_8C12EEC4:
#data 0x61C3D337
#data 0x6083430b
#data 0x6C03E200
#data 0x8DD63C26
#data 0x7D01

loc_8C12EED6:
#data 0x6070
#data 0x8917C804
#data 0x886F6063
#data 0x88788905
#data 0x8858890a
#data 0xA00F8908
	nop

loc_8C12EEEE:
#data 0x2448
#data 0x60D3890c
#data 0x7D01E330
#data 0x0E34A008

#align4
loc_8C12EEFC:
#data 0x89052448
#data 0x2530E330
#data 0x25607501
#data 0x7501EB02

#align4
loc_8C12EF0C:
#data 0x88646063
#data 0x8D032FD2
#data 0x60633BDc
#data 0x8B188869

#align4
loc_8C12EF1C:
#data 0x23385372
#data 0x24488B01
#data 0x8913

loc_8C12EF26:
#data 0x4411
#data 0x60708B0d
#data 0x8903C808
#data 0x7B01E32b
#data 0x2530A00a

#align4
loc_8C12EF38:
#data 0x8908C810
#data 0x2530E320
#data 0xA0047B01
#data 0x7501

loc_8C12EF46:
#data 0xE22d
#data 0x7B012520

loc_8C12EF4C:
#data 0x7501

loc_8C12EF4E:
#data 0x60A0
#data 0x740164A3
#data 0x8D06882b
#data 0x60D36D03
#data 0x8902882d
#data 0x882060D3
#data 0x8B01

loc_8C12EF66:
#data 0xA013
#data 0x1745

loc_8C12EF6A:
#data 0x6070
#data 0x890EC804
#data 0x88586063
#data 0x88788905
#data 0x886F8903
#data 0xA0078905
	nop

loc_8C12EF82:
#data 0x62A3
#data 0xA0037202
#data 0x1725

loc_8C12EF8A:
#data 0xA001
#data 0x1745

loc_8C12EF8E:
#data 0x17A5

#align4
loc_8C12EF90:
#data 0x33B75372
#data 0x56728B08
#data 0x36B86463
#data 0x1768A006

#align4
loc_8C12EFA0:
#data loc_8c12939c

loc_8C12EFA4:
#data loc_8c1291Dc

loc_8C12EFA8:
#data 0x64B31798

#align4
loc_8C12EFAC:
#data 0x882B60A0
#data 0x66038D06
#data 0x882D6063
#data 0x60638902
#data 0x8B0C8820

#align4
loc_8C12EFC0:
#data 0x33475371
#data 0x84718B10
#data 0x8B068830
#data 0x53785271
#data 0x332C3248
#data 0xA0081738
#data 0x179a

loc_8C12EFDA:
#data 0x5371
#data 0x8B033347
#data 0x31485171
#data 0x171AA001

loc_8C12EFE8:
#data 0x179a

loc_8C12EFEA:
#data 0x64F2
#data 0x441174Ff
#data 0x8B06

loc_8C12EFF2:
#data 0x6043
#data 0x74FF03Ec
#data 0x25304411
#data 0x75018DF9

#align4
loc_8C12F000:
#data 0x7F102590
#data 0x68F64F26
#data 0x6AF669F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;==============================================

loc_8C12F016:
#data 0x2FE6
#data 0x2FD66E63
#data 0x2FB62FC6
#data 0x4F226B43
#data 0x880160E2
#data 0x6D538F0c
#data 0x65B3D219
#data 0x420B66D3
#data 0x53E154E1
#data 0x1E3133Dc
#data 0x32DC52E2
#data 0x1E22A00f

#align4
loc_8C12F044:
#data 0x8F0C4D15
#data 0xEC00

loc_8C12F04A:
#data 0x55E1
#data 0x400B50E3
#data 0x88FF64B4
#data 0x52E28905
#data 0x3CD37C01
#data 0x8FF47201
#data 0x1E22

loc_8C12F062:
#data 0x4F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;==============================================

loc_8c12f06e:
mov.l @r4,r0
cmp/eq 0x01,r0
bf loc_8c12f07a
mov.l @(0x04,r4),r2
mov 0x00,r3
mov.b r3,@r2

loc_8c12f07a:
rts
nop

loc_8C12F07E:
mov.l @r4,r0
cmp/eq 0x01,r0
bf loc_8C12F088
rts
mov 0x00,r0
;==============================================

loc_8C12F088:
mov.l @(0x04,r4),r0
mov 0x10,r1 ; r1 set to 0x10
mov.b @(r0,r1),r0
and 0x40,r0
rts
nop
;==============================================

#align4
loc_8C12F094:
#data loc_8c129668


loc_8C12F098:
tst r6,r6
bf/s loc_8C12F0A2
mov r5,r7
rts
mov 0x00,r0
;==============================================

loc_8c12f0a2:
mov 0x00,r5
mov r5,r2
cmp/hs r6,r2
bt loc_8c12f0b8

loc_8c12f0aa:
mov.b @r7+,r2
mov.b @r4+,r3
cmp/eq r2,r3
bf loc_8c12f0b8
add 0x01,r5
cmp/hs r6,r5
bf loc_8c12f0aa

loc_8c12f0b8:
mov r4,r0
add 0xFF,r7
add 0xFF,r0
mov.b @r7,r3
mov.b @r0,r0
extu.b r3,r3
extu.b r0,r0
sub r3,r0
rts
nop
;==============================================
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000
#data 0x0000

loc_8C12F0E0:
mov 0x43,r0 ; r0 set to 0x43
shll8 r0 ; r0 set to 0x4300
or 0x7F,r0
shll16 r0 ; r0 set to 0x43000000
lds r0,fpul
fsts fpul,fr7
fmul fr7,fr0 ; r0 ??? bc r7 is ???
add 0xEC,r4
fmul fr7,fr1
fmov.s @r4+,fr4
fmul fr7,fr2
fmov.s @r4+,fr5
fmul fr7,fr3
fmov.s @r4+,fr6
ftrc fr0,fpul
sts fpul,r0
add 0x08,r4
fldi1 fr0
ftrc fr1,fpul
sts fpul,r1
ftrc fr2,fpul
sts fpul,r2
ftrc fr3,fpul
sts fpul,r8
fdiv fr6,fr0
shll8 r0
or r0,r1
shll16 r1
shll8 r2
or r2,r8
or r1,r8
fmov.s fr15,@-r15
fmov.s fr10,@-r15
fmov.s fr9,@-r15
fmul fr6,fr12
fmov.s fr8,@-r15
fmul fr6,fr13
mov.l r13,@-r15
mova @(loc_8C12F170,pc),r0  ; r0 set to 0x8C12F170
fmul fr6,fr14
sts.l pr,@-r15
fmov.s fr0,@r0 ; r0 ??
fmul fr7,fr5
fmul fr7,fr4
ftrc fr5,fpul
sts fpul,r0
ftrc fr4,fpul
shll16 r0
sts fpul,r13
shll8 r0
or r0,r13
mov.l @r4+,r0

loc_8C12F148:
cmp/pl r0
mov.l @(loc_8C12F300,pc),r9 ; r9 set to 0x8C2DEEA0
bt/s loc_8C12F174
cmp/pz r0
mov r0,r8
mov r11,r0
mov.l r5,@(r0,r10)
mova @(loc_8C12F170,pc),r0  ; r0 set to 0x8C12F170
lds.l @r15+,pr
fmov.s @r0,fr0 ; r0 ??
mov.l @r15+,r13
fmul fr0,fr12
fmov.s @r15+,fr8
fmul fr0,fr13
fmov.s @r15+,fr9 ; r9 ??? bc r15 is ???
fmul fr0,fr14
fmov.s @r15+,fr10
rts
fmov.s @r15+,fr15
;==============================================
	nop

#align4
loc_8C12F170:
#data 0x00000000

#align4
loc_8C12F174:
#data 0x63966103
#data 0xE2CF7420
#data 0x62F32329
#data 0x522A7218
#data 0x8D024211
#data 0xC903E21b
#data 0xCA01

loc_8C12F18E:
#data 0x435a
#data 0xE303402d
#data 0x432DF3Fd
#data 0x63370483
#data 0x22396296
#data 0x220BF00d
#data 0x74E0425a
#data 0x7610F10d
#data 0xF62BF299
#data 0xF60B7520
#data 0x0683F3Fd
#data 0x4C257620
#data 0x8D0B6013
#data 0xC8084C00
#data 0xB15B8903
#data 0xAFBD0009
#data 0x6046

loc_8C12F1CE:
#data 0xB0A7
#data 0xAFB90009
#data 0x00096046

#align4
loc_8C12F1D8:
#data 0xC840E100
#data 0xC8103C1e
#data 0xC8088D04
#data 0x0009B1Fc
#data 0x6046AFAe

#align4
loc_8C12F1EC:
#data 0xB3E78904
#data 0xAFA90009
#data 0x00096046

#align4
loc_8C12F1F8:
#data 0x0009AFFe
	nop
	nop

#align4
loc_8C12F200:
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8C12F220:
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
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
loc_8C12F300:
#data 0x8C2DEEA0
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C12F320:
#data 0x76206346

#align4
loc_8C12F324:
#data 0xF549F449
#data 0xF79DF649
#data 0xF049F249
#data 0xF5FDF149
#data 0xFA49F38d
#data 0xF84960D3
#data 0xF9494029
#data 0xF249F3Ed
#data 0xF79DFFF1
#data 0xF049F743
#data 0xFB8D4028
#data 0xF149F3B5
#data 0xFBED7420
#data 0x89000483
#data 0xF38d

loc_8C12F35E:
#data 0xF83c
#data 0xF99DF882
#data 0xFA8DFCEd
#data 0x62D3FAB5
#data 0x622CF981
#data 0xFB4D8B00

#align4
loc_8C12F374:
#data 0xFAF50029
#data 0xF96D425a
#data 0xFF4D8B00

#align4
loc_8C12F380:
#data 0xFFB50129
#data 0x4108FAFc
#data 0xFFBC8B02
#data 0xFBACCB02

#align4
loc_8C12F390:
#data 0xFA2D210b
#data 0xC7364100
#data 0xC731011d
#data 0xFFB3F009
#data 0xFB094101
#data 0x6202F3A2
#data 0x402960D3
#data 0x4028F9A2
#data 0x210BF33d
#data 0x7420005a
#data 0x0483F93d
#data 0x310C4028
#data 0x74C0005a
#data 0x4018FBFe
#data 0xFF8DFB3d
#data 0x005A310c
#data 0x002CC9Ff
#data 0x600B8B00

#align4
loc_8C12F3D8:
#data 0x2606301c
#data 0x6146F3Fd
#data 0x6246F672
#data 0x2686F572
#data 0x26266E03
#data 0x26166063
#data 0xF66B4021
#data 0xF64B4310
#data 0xF3FD8D05
#data 0x75202662
#data 0xAF8F0683
#data 0x7640

loc_8C12F406:
#data 0x2602
#data 0x60467520
#data 0x76400683
#data 0x8F034015
#data 0x8F85C880
#data 0x74FC6346

#align4
loc_8C12F41C:
#data 0x000B74Fc
#data 0xF79D76E0
#data 0xF3FD7438
#data 0xF7430483
#data 0x742026E6
#data 0xF6722686
#data 0x74C00483
#data 0xF049F572
#data 0xF60B6063
#data 0xF66B4021
#data 0xF64B4310
#data 0xF3FD8DDd
#data 0x75202662
#data 0xAF670683
#data 0x00097640
	nop
	nop
	nop
	nop
#data 0x43000000
#data 0x3F000000

#align4
loc_8C12F468:
#data bank13.loc_8c13259c
#data 0x3F000000
#data 0x01010000
#data 0x00800081
#data 0x010001Ff
#data 0x01810180

#align4
loc_8C12F480:
#data 0x76206946
#data 0xE303

loc_8C12F486:
#data 0xF449
#data 0xF649F549
#data 0xF249F79d
#data 0xF149F049
#data 0xF38DF5Fd
#data 0x60D3FA49
#data 0x4029F849
#data 0xF3EDF949
#data 0xFFF1F249
#data 0xF743F79d
#data 0x4028F049
#data 0xF3B5FB8d
#data 0x7420F149
#data 0x0483FBEd
#data 0xF38D8900

#align4
loc_8C12F4C0:
#data 0xF882F83c
#data 0xFCEDF99d
#data 0xFAB5FA8d
#data 0xF98162D3
#data 0x8B00622c
#data 0xFB4d

loc_8C12F4D6:
#data 0x0029
#data 0x425AFAF5
#data 0x8B00F96d
#data 0xFF4d

loc_8C12F4E2:
#data 0x0129
#data 0xFAFCFFB5
#data 0x8B024108
#data 0xCB02FFBc
#data 0xFBAc

loc_8C12F4F2:
#data 0x210b
#data 0x4100FA2d
#data 0x011DC735
#data 0xF009C730
#data 0x4101FFB3
#data 0xF3A2FB09
#data 0x60D36202
#data 0xF9A24029
#data 0xF33D4028
#data 0x005A210b
#data 0xF93D7420
#data 0x40280483
#data 0x005A310c
#data 0xFBFE74C0
#data 0xFB3D4018
#data 0x310CFF8d
#data 0xC9FF005a
#data 0x8B00002c
#data 0x600b

loc_8C12F53A:
#data 0x301c
#data 0xF3FD2606
#data 0xF6726146
#data 0xF5726246
#data 0x6E032686
#data 0x60632626
#data 0x40212616
#data 0x4310F66b
#data 0x8D05F64b
#data 0x2662F3Fd
#data 0x06837520
#data 0x7640AF8f

#align4
loc_8C12F568:
#data 0x26027520
#data 0x06834910
#data 0x8F887640
#data 0x000BE303
#data 0xF79D76E0
#data 0xF3FD7438
#data 0xF7430483
#data 0x742026E6
#data 0xF6722686
#data 0x74C00483
#data 0xF049F572
#data 0xF60B6063
#data 0xF66B4021
#data 0xF64B4310
#data 0xF3FD8DE2
#data 0x75202662
#data 0xAF6C0683
#data 0x00097640
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x43000000
#data 0x3F000000

#align4
loc_8C12F5C8:
#data bank13.loc_8c13259c
#data 0x3F000000
#data 0x01010000
#data 0x00800081
#data 0x010001Ff
#data 0x01810180

#align4
loc_8C12F5E0:
#data 0x2FB62FA6
#data 0x63464F22

#align4
loc_8C12F5E8:
#data 0xB0C9EB00
#data 0x8D11E900
#data 0xB1454924
#data 0xB0C37B01
#data 0x8D250009
#data 0xB13F4924
#data 0x7B01

loc_8C12F602:
#data 0xB0Bd
#data 0x8D3A0009
#data 0xB1394924
#data 0x8BF87B01
#data 0x0009A00c

#align4
loc_8C12F614:
#data 0x7B014310
#data 0x4310B0B2
#data 0x49248F20

#align4
loc_8C12F620:
#data 0x7B01B0Ae
#data 0x49248F2b
#data 0x8BF94310

#align4
loc_8C12F62C:
#data 0x40156046
#data 0xC8808F03
#data 0x63468FD8
#data 0x74Fc

loc_8C12F63A:
#data 0x4F26
#data 0xE0016BF6
#data 0x74FC6AF6
#data 0x2C0B000b
;==============================================

#align4
loc_8C12F648:
#data 0x4310B13a
#data 0x7490B098
#data 0xEB00B136
#data 0x0008EB01
#data 0xE000B162
#data 0x7438A01e

#align4
loc_8C12F660:
#data 0xEB01B12e
#data 0x7490B08c
#data 0xEB00B12a
#data 0x0008EB01
#data 0xE000B156
#data 0xB1330008
#data 0xA00FE001
#data 0x7438

loc_8C12F67E:
#data 0xB11f
#data 0x74C80009
#data 0x7490B07c
#data 0x7BFEB11a
#data 0x0009B078
#data 0x7B01B116
#data 0x7B017438
#data 0x6093A005

#align4
loc_8C12F69C:
#data 0x7B01B070
#data 0x4924B10e
#data 0x6093

loc_8C12F6A6:
#data 0xC907
#data 0x00234008
	nop
	nop
#data 0xA00C0009
#data 0xA0190009
#data 0xA0240009
#data 0xA02A0009
#data 0xA0380009
#data 0xA03D0009
	nop
	nop
#data 0x60B30009
#data 0xB1250008
#data 0x60B370Fe
#data 0xB1010008
#data 0x60B370Ff
#data 0xB11D4310
#data 0x8BD970Ff
#data 0x0009AFA0
#data 0xB0F70008
#data 0x60B360B3
#data 0xB1130008
#data 0x431070Ff
#data 0x60B3B0F0
#data 0xAF938BCc
#data 0x60B30009
#data 0xB1090018
#data 0x431070Fe
#data 0xAF85890f
#data 0x60B30009
#data 0xB1010008
#data 0x60B370Fe
#data 0xB0DD0008
#data 0x431070Ff
#data 0x60B3B0Da
#data 0xAF688901
#data 0xAF7B7B01
#data 0x60B30009
#data 0xB0F14310
#data 0x8BAD70Ff
#data 0x0009AF74
#data 0xC80160B3
#data 0x60B38903
#data 0xB0E70008
#data 0x60B370Ff
#data 0xB0E30008
#data 0x60B370Fe
#data 0xB0DF0008
#data 0x431070Ff
#data 0x60B3B0Bc
#data 0xAF5F8B98
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C12F780:
#data 0xF549F449
#data 0xF79DF649
#data 0xF049F249
#data 0xF5FDF149
#data 0xFA49F38d
#data 0xF84960D3
#data 0xF9494029
#data 0xF249F3Ed
#data 0xF049FFF1
#data 0xF71D4028
#data 0xF743F79d
#data 0xF3B5FB8d
#data 0xFBEDF40d
#data 0x8900F149
#data 0xF38d

loc_8C12F7BA:
#data 0xF83c
#data 0xF99DF882
#data 0xFA8DFCEd
#data 0x62D3FAB5
#data 0x622CF981
#data 0xFB4D8B00

#align4
loc_8C12F7D0:
#data 0xFAF50029
#data 0xF96D425a
#data 0xFF4D8B00

#align4
loc_8C12F7DC:
#data 0xFFB50129
#data 0x4108FAFc
#data 0xFFBC8B02
#data 0xFBACCB02

#align4
loc_8C12F7EC:
#data 0xFA2D210b
#data 0xC71F4100
#data 0xC71A011d
#data 0xFFB3F009
#data 0xFB094101
#data 0x6202F3A2
#data 0x402960D3
#data 0x4028F9A2
#data 0x210BF33d
#data 0x7420005a
#data 0x0483F93d
#data 0x310C4028
#data 0x7420005a
#data 0x0483FBFe
#data 0x74C0FB3d
#data 0xFF8D4018
#data 0x005A310c
#data 0xF41DC9Ff
#data 0x8B00002c
#data 0x600b

loc_8C12F83A:
#data 0x301c
#data 0x6103025a
#data 0xF349F249
#data 0x3C26000b
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
#data 0x43000000
#data 0x3F000000

#align4
loc_8C12F868:
#data bank13.loc_8c13259c
#data 0x00000000
#data 0x01010000
#data 0x00800081
#data 0x010001Ff
#data 0x01810180

#align4
loc_8C12F880:
#data 0x7620F3Fd
#data 0xF6722616
#data 0x2686F572
#data 0xF62B6063
#data 0xF66B4021
#data 0xF64B4310
#data 0x60638900

#align4
loc_8C12F89C:
#data 0xF3FD2602
#data 0x06837520
#data 0x7620000b
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C12F8C0:
#data 0xEA0560B3
#data 0x40ADC903
#data 0xF3FDDA35
#data 0x2A163A0c
#data 0xFA2B2A86
#data 0xFA4BFA6b
#data 0xF3FD000b
;==============================================
	nop
	nop

#align4
loc_8C12F8E0:
#data 0xDA2EE105
#data 0xF3FDC903
#data 0x3A0C401d
#data 0xF0A9E2F0
#data 0xF2A94228
#data 0xF4A97620
#data 0xF6A9F232
#data 0x4218F132
#data 0x7520F66b
#data 0xF62BF64b
#data 0x8900F60b
#data 0x6263

loc_8C12F90E:
#data 0x2622
#data 0x0683F3Fd
#data 0x7620000b
;==============================================
	nop
	nop
	nop
	nop

#align4
loc_8C12F920:
#data 0xDA1EE105
#data 0x401DC903
#data 0x3A0C62A3
#data 0xC90360B3
#data 0x401DF2A8
#data 0x320C4C5a
#data 0xF128F00d
#data 0x7218F021
#data 0x7620F3Fd
#data 0xF428F121
#data 0x475A72F8
#data 0xF0137A10
#data 0xF428F64b
#data 0xF2A872F8
#data 0xF10D7AF8
#data 0xF531F421
#data 0xF35EF24e
#data 0xF3FDF62b
#data 0xF528F61b
#data 0xF3A872Fc
#data 0xF4287AFc
#data 0xF531F2A8
#data 0xE2F0F421
#data 0x4228F35e
#data 0x4218F24e
#data 0x7520F312
#data 0xF63BF212
#data 0x8900F62b
#data 0x6263

loc_8C12F992:
#data 0x2626
#data 0x000B0683
#data 0x00097620

#align4
loc_8C12F99C:
#data loc_8c12F200

loc_8C12F9A0:
#data loc_8c12F220
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C12F9C0:
#data 0x2FB62FA6
#data 0x63464F22

#align4
loc_8C12F9C8:
#data 0xE900B09a
#data 0x88006093
#data 0x88078928
#data 0xBED38935
#data 0xBF71EB00
#data 0xBECF0009
#data 0xBF6DEB01
#data 0xBECB0009
#data 0xBF69EB02
#data 0x49080009
#data 0x00090923
	nop
	nop
#data 0x0009A026
#data 0x0009A033
#data 0x0009A041
#data 0x0009A04c
#data 0x0009A05a
#data 0x0009A065
	nop
	nop

#align4
loc_8C12FA14:
#data 0x8BD74310
#data 0x4F26E001
#data 0x6BF62C0b
#data 0x6AF6000b
;==============================================

#align4
loc_8C12FA24:
#data 0xBEAB6933
#data 0xBF29E303
#data 0xBEA70009
#data 0xBF250009
#data 0xBEA30009
#data 0xBF210009
#data 0xAFE90009
#data 0x6393

loc_8C12FA42:
#data 0x7438
#data 0x7470AFE6
#data 0xBF490008
#data 0x0008E000
#data 0xE001BF46
#data 0xEB020008
#data 0xE000BF62
#data 0xBF5F0018
#data 0xAFD7E001
#data 0x00080009
#data 0xE000BF3a
#data 0xEB010008
#data 0xE000BF56
#data 0xEB020008
#data 0xE002BF32
#data 0xBF4F0018
#data 0xAFC7E001
#data 0x00080009
#data 0xE000BF2a
#data 0xEB010008
#data 0xE000BF46
#data 0xEB020018
#data 0xE000BF42
#data 0x0009AFBa
#data 0xEB010008
#data 0xE000BF3c
#data 0xBF190008
#data 0x0008E001
#data 0xBF35EB02
#data 0x0018E000
#data 0xE002BF12
#data 0x0009AFAa
#data 0xEB010008
#data 0xE000BF2c
#data 0xBF090008
#data 0x0018E001
#data 0xBF25EB02
#data 0xAF9DE001
#data 0x00080009
#data 0xBF1FEB02
#data 0x0008E000
#data 0xE001BF1c
#data 0xBEF90018
#data 0xAF91E002
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C12FB00:
#data 0xF549F449
#data 0xF79DF648
#data 0x04837430
#data 0x04837420
#data 0xF5FD74E0
#data 0xF149F049
#data 0xF39DF248
#data 0x04837430
#data 0x04837420
#data 0xF1FD74E0
#data 0x005AF71d
#data 0xF549F449
#data 0x3C06F648
#data 0x7488F79d
#data 0x4924F5Fd
#data 0x005AF31d
#data 0xF71D3C06
#data 0x005A4924
#data 0x000B3C06
#data 0x00004924
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8C12FB60:
#data 0xC73FD240
#data 0x61F36222
#data 0x6023F008
#data 0x8800FFFb
#data 0x8D01FFEb
#data 0x402BFFDb

#align4
loc_8C12FB78:
#data 0xE000FFCb
#data 0xE018FC16
#data 0xE01CFD16
#data 0xE020FE16
#data 0xFFBBFF16
#data 0xFFABFC02
#data 0xFF9BFD02
#data 0xFF8BFE02
#data 0x4F22FF02
#data 0x2F06D078
#data 0x6046

loc_8C12FBA2:
#data 0x4015
#data 0x8D0F69F2
#data 0x68034011
#data 0x0A5660B3
#data 0x4F267F04
#data 0xF9F9F8F9
#data 0xFBF9FAF9
#data 0xFDF9FCF9
#data 0x000BFEF9
#data 0x0009FFF9

#align4
loc_8C12FBC8:
#data 0xE2FB6103
#data 0xC9406396
#data 0xE2FD402d
#data 0x230B2329
#data 0xE2DF7420
#data 0xE2102329
#data 0x6013232b
#data 0x722862F3
#data 0x522A435a
#data 0xE21B4211
#data 0xC9038D01
#data 0xCA01

loc_8C12FBF6:
#data 0x402d
#data 0xF3FDE303
#data 0x0483432d
#data 0x62966337
#data 0xF00D2239
#data 0x425A220b
#data 0xF10D74E0
#data 0xF2997610
#data 0x7520F62b
#data 0xF3FDF60b
#data 0x76200683
#data 0x60134C25
#data 0x4C008D0a
#data 0x8903C808
#data 0x0009B148
#data 0x6046AFB7

#align4
loc_8C12FC34:
#data 0x0009B0B4
#data 0x6046AFB3

#align4
loc_8C12FC3C:
#data 0xC840E100
#data 0xC8103C1e
#data 0xC8088D04
#data 0x0009B1Ca
#data 0x6046AFA9

#align4
loc_8C12FC50:
#data 0xB4358904
#data 0xAFA40009
#data 0x00096046

#align4
loc_8C12FC5C:
#data 0x0009AFFe
#data 0x3B808080

#align4
loc_8C12FC64:
#data bank16.loc_8c16BE78
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C12FC80:
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8C12FC98:
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
loc_8C12FCA8:
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x8C2DEEA0
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C12FDA0:
#data 0x76206346
#data 0xF3Fd

loc_8C12FDA6:
#data 0x6042
#data 0x6E43C801
#data 0x74208F03
#data 0x74E85EE1
#data 0x3E4c

loc_8C12FDB6:
#data 0xF4E9
#data 0x61E3F6E8
#data 0x7110F79d
#data 0x58E284E7
#data 0x608C4015
#data 0xF5FD8F26
#data 0x602E52E1
#data 0x405A4219
#data 0xF12D602e
#data 0x405A4219
#data 0xF02D602e
#data 0xF22D405a
#data 0x62F3F38d
#data 0x7218F3Fd
#data 0xE03CF829
#data 0x4018F929
#data 0xCB01FA29
#data 0x4018F2Ed
#data 0xCB02F229
#data 0x4018F08d
#data 0xCB04F3Fd
#data 0x608C405a
#data 0xFB0DF305
#data 0xF3B28B01
#data 0xF230

loc_8C12FE16:
#data 0x0018

#align4
loc_8C12FE18:
#data 0x405A7420
#data 0x608C4819
#data 0x48190483
#data 0x74E0FB2d
#data 0xF743F79d
#data 0xFA2D405a
#data 0x405A608c
#data 0xF92D4819
#data 0x76F8485a
#data 0xF018F82d
#data 0xF38D6063
#data 0x8F03FBF2
#data 0xF922F60b
#data 0xFB22FA22

#align4
loc_8C12FE50:
#data 0xF28D4021
#data 0xF6724310
#data 0x60638900

#align4
loc_8C12FE5C:
#data 0xF66BF572
#data 0xF64B7540
#data 0x2602FAE2
#data 0x6E430683
#data 0x76405EE1
#data 0xF9D26046
#data 0xF8C2F62b
#data 0x3E4CF62b
#data 0x7E04F6Ab
#data 0x8D08F68b
#data 0xC8010683
#data 0x8D947640
#data 0x6E437404
#data 0xAF907418
#data 0x7EF8

loc_8C12FE96:
#data 0x7640
#data 0x8F034015
#data 0x8F82C880
#data 0x74FC6346

#align4
loc_8C12FEA4:
#data 0x74FCF3Fd
#data 0x76E0000b
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C12FEC0:
#data 0x76206946
#data 0xF3FDE303

#align4
loc_8C12FEC8:
#data 0xC8016042
#data 0x8F036E43
#data 0x5EE17420
#data 0x3E4C74E8

#align4
loc_8C12FED8:
#data 0xF6E8F4E9
#data 0xF79D61E3
#data 0x84E77110
#data 0x401558E2
#data 0x8F26608c
#data 0x52E1F5Fd
#data 0x4219602e
#data 0x602E405a
#data 0x4219F12d
#data 0x602E405a
#data 0x405AF02d
#data 0xF38DF22d
#data 0xF3FD62F3
#data 0xF8297218
#data 0xF929E03c
#data 0xFA294018
#data 0xF2EDCB01
#data 0xF2294018
#data 0xF08DCB02
#data 0xF3FD4018
#data 0x405ACB04
#data 0xF305608c
#data 0x8B01FB0d
#data 0xF230F3B2

loc_8C12FF38:
#data 0x0018

loc_8C12FF3A:
#data 0x7420
#data 0x4819405a
#data 0x0483608c
#data 0xFB2D4819
#data 0xF79D74E0
#data 0x405AF743
#data 0x608CFA2d
#data 0x4819405a
#data 0x485AF92d
#data 0xF82D76F8
#data 0x6063F018
#data 0xFBF2F38d
#data 0xF60B8F03
#data 0xFA22F922
#data 0xFB22

loc_8C12FF72:
#data 0x4021
#data 0x4310F28d
#data 0x8900F672
#data 0x6063

loc_8C12FF7E:
#data 0xF572
#data 0x7540F66b
#data 0xFAE2F64b
#data 0x06832602
#data 0x5EE16E43
#data 0x60467640
#data 0xF62BF9D2
#data 0xF62BF8C2
#data 0xF6AB3E4c
#data 0xF68B7E04
#data 0x06838D08
#data 0x7640C801
#data 0x74048D94
#data 0x74186E43
#data 0x7EF8AF90

#align4
loc_8C12FFB8:
#data 0x491074Fc
#data 0x8F837640
#data 0xF3FDE303
#data 0x76E0000b
;==============================================
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C12FFE0:
#data 0x2FB62FA6
#data 0x63464F22

#align4
loc_8C12FFE8:
#data 0xB129EB00
#data 0x8D11E900
#data 0xB1854924
#data 0xB1237B01
#data 0x8D400009
#data 0xB17F4924
#data 0x7B01

loc_8C130002:
#data 0xB11d
#data 0x8D7A0009
#data 0xB1794924
#data 0x8BF87B01
#data 0x0009A027

#align4
loc_8C130014:
#data 0x7B014310
#data 0x4310B112
#data 0x49248F4a

#align4
loc_8C130020:
#data 0x6E436042
#data 0x7420C801
#data 0xF79D8F03
#data 0x5EE174E8
#data 0x3E4c

loc_8C130032:
#data 0xF4E9
#data 0xF6E9F5E9
#data 0x6042E120
#data 0xC8017420
#data 0x0483F5Fd
#data 0x8F0474E0
#data 0xE1086E43
#data 0x7E085EE1
#data 0x3E4c

loc_8C130052:
#data 0xF71d
#data 0x3C06005a
#data 0x8F497B01
#data 0x43104924
#data 0x8BDe

loc_8C130062:
#data 0x6046
#data 0x8F034015
#data 0x8FBDC880
#data 0x74FC6346

#align4
loc_8C130070:
#data 0xE0014F26
#data 0x74FC6BF6
#data 0x000B6AF6
#data 0x2C0b
;==============================================

loc_8C13007E:
#data 0xB15f
#data 0x74F84310
#data 0xC8015041
#data 0x74E88900

#align4
loc_8C13008C:
#data 0x504174F8
#data 0x8900C801
#data 0x74E8

loc_8C130096:
#data 0xB0D3
#data 0xB1510009
#data 0xEB01EB00
#data 0xB1AD0008
#data 0x6042E000
#data 0x7408C801
#data 0x74188900

#align4
loc_8C1300B0:
#data 0x0009A04c

#align4
loc_8C1300B4:
#data 0xEB01B144
#data 0x504174F8
#data 0x8900C801
#data 0x74E8

loc_8C1300C2:
#data 0x74F8
#data 0xC8015041
#data 0x74E88900

#align4
loc_8C1300CC:
#data 0x0009B0B8
#data 0xEB00B136
#data 0x0008EB01
#data 0xE000B192
#data 0xB15F0008
#data 0x6042E001
#data 0x7408C801
#data 0x74188900

#align4
loc_8C1300EC:
#data 0x0009A02e

#align4
loc_8C1300F0:
#data 0x504174F8
#data 0x8900C801
#data 0x74E8

loc_8C1300FA:
#data 0xB0A1
	nop

loc_8C1300FE:
#data 0xB11f
#data 0x74F80009
#data 0xC8015041
#data 0x74E88900

#align4
loc_8C13010C:
#data 0x504174F8
#data 0x8900C801
#data 0x74E8

loc_8C130116:
#data 0x74F8
#data 0xC8015041
#data 0x74E88900

#align4
loc_8C130120:
#data 0x0009B08e
#data 0x7BFEB10c
#data 0x0009B08a
#data 0x7B01B108
#data 0xC8016042
#data 0x89007408
#data 0x7418

loc_8C13013A:
#data 0x60C3
#data 0xC8017B01
#data 0x60938D0f
#data 0x0009B10c
#data 0x6093A00b

#align4
loc_8C13014C:
#data 0x7B01B078
#data 0x4924B0F6
#data 0xC80160C3
#data 0x60938D03
#data 0x0009B100
#data 0x6093

loc_8C130162:
#data 0xC907
#data 0x00234008
	nop
	nop
#data 0xA00C0009
#data 0xA0190009
#data 0xA0240009
#data 0xA02A0009
#data 0xA0380009
#data 0xA03D0009
	nop
	nop
#data 0x60B30009
#data 0xB1370008
#data 0x60B370Fe
#data 0xB1030008
#data 0x60B370Ff
#data 0xB12F4310
#data 0x8BD370Ff
#data 0x0009AF5d
#data 0xB0F90008
#data 0x60B360B3
#data 0xB1250008
#data 0x431070Ff
#data 0x60B3B0F2
#data 0xAF508BC6
#data 0x60B30009
#data 0xB11B0018
#data 0x431070Fe
#data 0xAF27890f
#data 0x60B30009
#data 0xB1130008
#data 0x60B370Fe
#data 0xB0DF0008
#data 0x431070Ff
#data 0x60B3B0Dc
#data 0xAF0A8901
#data 0xAF387B01
#data 0x60B30009
#data 0xB1034310
#data 0x8BA770Ff
#data 0x0009AF31
#data 0xC80160B3
#data 0x60B38903
#data 0xB0F90008
#data 0x60B370Ff
#data 0xB0F50008
#data 0x60B370Fe
#data 0xB0F10008
#data 0x431070Ff
#data 0x60B3B0Be
#data 0xAF1C8B92
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C130240:
#data 0xC8016042
#data 0x8F036E43
#data 0x5EE17420
#data 0x3E4C74E8

#align4
loc_8C130250:
#data 0xF5E9F4E9
#data 0x61E3F6E8
#data 0x84E7F79d
#data 0x58E27110
#data 0x608C4015
#data 0xF5FD8F24
#data 0x602E52E1
#data 0x405A4219
#data 0xF12D602e
#data 0x405A4219
#data 0xF02D602e
#data 0xF22D405a
#data 0x62F3F38d
#data 0xF8297224
#data 0xF929E03c
#data 0xFA294018
#data 0xF2EDCB01
#data 0xF2294018
#data 0xF08DCB02
#data 0xCB044018
#data 0x608C405a
#data 0xFB0DF305
#data 0xF3B28B01
#data 0xF230

loc_8C1302AE:
#data 0x0018

#align4
loc_8C1302B0:
#data 0x405AF19d
#data 0x608C4819
#data 0xF1434819
#data 0x405AFB2d
#data 0x608CFA2d
#data 0x4819405a
#data 0x485AF92d
#data 0xF71DF82d
#data 0x005AFBF2
#data 0xF40DFAE2
#data 0xF9D28F03
#data 0xFA22F922
#data 0xFB22

loc_8C1302E2:
#data 0x3C06
#data 0x000BF8C2
#data 0x0009F71c
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C130300:
#data 0x7618F3Fd
#data 0xF672F218
#data 0xF572F62b
#data 0x6063F28d
#data 0x4021F38d
#data 0x4310F66b
#data 0x8900F64b
#data 0x6063

loc_8C13031E:
#data 0x2602
#data 0x76400683
#data 0x7540F62b
#data 0xF6ABF62b
#data 0xF3FDF68b
#data 0x000B0683
#data 0x00097620
	nop
	nop
	nop
	nop

#align4
loc_8C130340:
#data 0xEA0660B3
#data 0x40ADC903
#data 0xF3FDDA58
#data 0xF2183A0c
#data 0xFA8BFAAb
#data 0xFA6BFA2b
#data 0x000BFA4b
#data 0x0009F3Fd

#align4
loc_8C130360:
#data 0xDA53E106
#data 0xC90360B3
#data 0xF3FD401d
#data 0x7008F8A6
#data 0x70B8FAA6
#data 0xFA87600c
#data 0xFAA77008
#data 0x600C70B8
#data 0x7008FA87
#data 0x000BFAA7
#data 0x0009F3Fd
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C1303A0:
#data 0xDA41E106
#data 0xF3FDC903
#data 0xF68D401d
#data 0xF78D3A0c
#data 0xF0A9E2F0
#data 0xF2A94228
#data 0xF4A97618
#data 0xF8A9F232
#data 0xFAA8F132
#data 0xF64B4218
#data 0xF62B7540
#data 0x8900F60b
#data 0x6263

loc_8C1303D2:
#data 0x2622
#data 0x06836263
#data 0xF66B7640
#data 0xF6ABF66b
#data 0x0683F68b
#data 0x000BF3Fd
#data 0x00097620
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

#align4
loc_8C130400:
#data 0xDA29E106
#data 0x401DC903
#data 0x3A0C62A3
#data 0xC90360B3
#data 0x401DF2A8
#data 0x320C4C5a
#data 0xF128F00d
#data 0x7220F021
#data 0x7630F3Fd
#data 0xF428F121
#data 0x475A72F8
#data 0xF0137A20
#data 0x7AF8F2A8
#data 0xF531F421
#data 0xF35EF24e
#data 0xF428F62b
#data 0xF2A872F8
#data 0xF4217AF8
#data 0xF24EF531
#data 0xF62BF35e
#data 0x72F8F428
#data 0x7AF8F2A8
#data 0xF421F10d
#data 0x76F8F531
#data 0xF35EF24e
#data 0xF3FDF62b
#data 0xF528F61b
#data 0xF3A872Fc
#data 0xF4287AFc
#data 0xF531F2A8
#data 0xE2F0F421
#data 0x4228F35e
#data 0x4218F24e
#data 0x7540F312
#data 0xF63BF212
#data 0x8900F62b
#data 0x6263

loc_8C130492:
#data 0x2626
#data 0x76400683
#data 0xF62BF28d
#data 0xF62BF62b
#data 0x0683F62b
#data 0x7610000b
;==============================================

#align4
loc_8C1304A8:
#data loc_8c12FC80

loc_8C1304AC:
#data loc_8c12FCA8

loc_8C1304B0:
#data loc_8c12FC98
	nop
	nop
	nop
	nop
	nop
	nop