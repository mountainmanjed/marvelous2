;==============================================
loc_8c050048:
	mov.w @(loc_8c0500fa,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c050080
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r4),fr2
	fcmp/gt fr3,fr2
	bt loc_8c050080
	mov.w @(loc_8c0500fa,PC),r0
	mov 0x02,r2
	mov.l @(loc_8c050108,PC),r1
	mov.b r2,@(r0,r4)
	mov.b @(0x1,r4),r0
	extu.b r0,r0
	shll r0
	mov.w @(r0,r1),r3
	mova @(loc_8c05010c,PC),r0
	fmov @r0,fr2
	mova @(loc_8c050110,PC),r0
	lds r3,fpul
	fmov @r0,fr1
	mov 0x6C,r0
	float fpul,fr3
	fmul fr2,fr3
	fdiv fr1,fr3
	fmov fr3,@(r0,r4)

loc_8c050080:
	rts
	nop

;==============================================
; called from char programming
loc_8c050084:

; if(plmem[0x019e] != 0) {
	; if(plmem[0x01d7] != 0) {
		; plmem[0x01d7]++;
		; pl_mem[y_velocity] = pl_mem[y_velocity] * 0.75
	; }
; }

;;;;;;;
	; if(plmem[0x019e] == 0) return
	mov.w @(loc_8c0500fc,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c0500a8
	
	; if(plmem[0x01d7] == 0) return
	mov.w @(loc_8c0500fe,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c0500a8
	
	mov.b @(r0,r4),r3
	; fr3 = 0.75 = r1 = 0x3f400000
	mov.l @(loc_8c050114,PC),r1
	; plmem[0x01d7]++
	add 0x01,r3
	lds r1,fpul
	mov.b r3,@(r0,r4)
	; fr2 = pl_mem[y_velocity]
	mov pl_mem.y_velocity,r0
	fmov @(r0,r4),fr2
	fsts fpul,fr3
	; pl_mem[y_velocity] = pl_mem[y_velocity] * 0.75
	fmul fr3,fr2
	fmov fr2,@(r0,r4)

loc_8c0500a8:
	rts
	nop

;==============================================
loc_8c0500ac:
	mov.w @(loc_8c050100,PC),r0
	mov.l @(loc_8c050118,PC),r5
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c0501a8
	mov.w @(loc_8c050102,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c0501a8
	mov.w @(loc_8c050104,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c05015c
	mov.b @(0x5,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c05015c
	mov.w @(loc_8c050106,PC),r0
	mov.l @(r0,r4),r2
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fmov @(r0,r2),fr2
	mova @(loc_8c05011c,PC),r0
	fsub fr3,fr2
	fmov @r0,fr3
	fmov fr2,fr4
	fadd fr3,fr4
	fldi0 fr2
	fcmp/gt fr4,fr2
	bf loc_8c050124
	mov.l @(loc_8c050120,PC),r1
	mov 0x38,r0
	fmov @(r0,r4),fr3
	lds r1,fpul
	fsts fpul,fr1
	fdiv fr1,fr4
	fadd fr4,fr3
	bra loc_8c050148
	fmov fr3,@(r0,r4)

;##############################################
loc_8c0500fa:
	#data 0x01fc
loc_8c0500fc:
	#data 0x019e
loc_8c0500fe:
	#data 0x01d7
loc_8c050100:
	#data 0x01f4
loc_8c050102:
	#data 0x0324
loc_8c050104:
	#data 0x0201
loc_8c050106:
	#data 0x020c
	#align4
loc_8c050108:
	#data bank15.loc_8c150ec4
loc_8c05010c:
	#data 0x40092492
loc_8c050110:
	#data 0x43800000
loc_8c050114:
	#data 0x3f400000 ; 0.75
loc_8c050118:
	#data 0x8c26a518
loc_8c05011c:
	#data 0x43892492
loc_8c050120:
	#data 0x41000000


;==============================================
loc_8c050124:
	mov.w @(loc_8c0501f2,PC),r0
	fmov @(r0,r4),fr1
	mov 0x38,r0
	fmov @(r0,r4),fr0
	mova @(loc_8c0501fc,PC),r0
	fsub fr1,fr0
	fmov @r0,fr1
	fmov fr0,fr4
	fadd fr1,fr4
	fcmp/gt fr4,fr2
	bf loc_8c050148
	fldi1 fr3
	fadd fr3,fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fdiv fr3,fr4
	fsub fr4,fr2
	fmov fr2,@(r0,r4)

loc_8c050148:
	mov.l @(loc_8c050204,PC),r3
	mova @(0xB4,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @r3,fr4
	fmov @(r0,r4),fr2
	fadd fr3,fr4
	fcmp/gt fr4,fr2
	bf loc_8c05015c
	fmov fr4,@(r0,r4)

loc_8c05015c:
	mov.w @(loc_8c0501f4,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r4)
	mova @(0xA4,PC),r0
	fmov @r0,fr3
	mov 0x0C,r0
	fmov @(r0,r5),fr4
	mov 0x34,r0
	fmov @(r0,r4),fr2
	fadd fr3,fr4
	ftrc fr2,fpul
	sts fpul,r3
	ftrc fr4,fpul
	sts fpul,r2
	cmp/gt r2,r3
	bt loc_8c050186
	fmov fr4,@(r0,r4)
	mov 0x02,r3
	mov.w @(loc_8c0501f4,PC),r0
	bra loc_8c0501a8
	mov.b r3,@(r0,r4)

loc_8c050186:
	mova @(0x84,PC),r0
	fmov @r0,fr2
	mov 0x0C,r0
	fmov @(r0,r5),fr4
	mov 0x34,r0
	fmov @(r0,r4),fr1
	fadd fr2,fr4
	ftrc fr1,fpul
	sts fpul,r3
	ftrc fr4,fpul
	sts fpul,r2
	cmp/ge r2,r3
	bf loc_8c0501a8
	fmov fr4,@(r0,r4)
	mov 0x01,r3
	mov.w @(loc_8c0501f4,PC),r0
	mov.b r3,@(r0,r4)

loc_8c0501a8:
	rts
	nop

;==============================================
loc_8c0501ac:
	mov.w @(loc_8c0501f6,PC),r0
	mov.l @(loc_8c050210,PC),r5
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c0502a0
	mov.w @(loc_8c0501f8,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c050254
	mov.b @(0x5,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c050254
	mov.w @(loc_8c0501fa,PC),r0
	mov.l @(r0,r4),r2
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fmov @(r0,r2),fr2
	mova @(loc_8c050214,PC),r0
	fsub fr3,fr2
	fmov @r0,fr3
	fmov fr2,fr4
	fadd fr3,fr4
	fldi0 fr2
	fcmp/gt fr4,fr2
	bf loc_8c05021c
	mov.l @(loc_8c050218,PC),r1
	mov 0x38,r0
	fmov @(r0,r4),fr3
	lds r1,fpul
	fsts fpul,fr1
	fdiv fr1,fr4
	fadd fr4,fr3
	bra loc_8c050240
	fmov fr3,@(r0,r4)

;##############################################
loc_8c0501f2:
	#data 0x041c
loc_8c0501f4:
	#data 0x01fd
loc_8c0501f6:
	#data 0x0324
loc_8c0501f8:
	#data 0x0201
loc_8c0501fa:
	#data 0x020c
	#align4

loc_8c0501fc:
	#data 0xc2092492
loc_8c050200:
	#data 0xc34db6db
loc_8c050204:
	#data 0x8c26a5b8
loc_8c050208:
	#data 0xc38e8000
loc_8c05020c:
	#data 0x438e8000
loc_8c050210:
	#data 0x8c26a518
loc_8c050214:
	#data 0x43892492
loc_8c050218:
	#data 0x41000000

;----------------------------------------------
loc_8c05021c:
	mov.w @(loc_8c05031c,PC),r0
	fmov @(r0,r4),fr1
	mov 0x38,r0
	fmov @(r0,r4),fr0
	mova @(loc_8c050328,PC),r0
	fsub fr1,fr0
	fmov @r0,fr1
	fmov fr0,fr4
	fadd fr1,fr4
	fcmp/gt fr4,fr2
	bf loc_8c050240
	fldi1 fr3
	fadd fr3,fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fdiv fr3,fr4
	fsub fr4,fr2
	fmov fr2,@(r0,r4)

loc_8c050240:
	mov.l @(loc_8c050330,PC),r3
	mova @(0xE8,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @r3,fr4
	fmov @(r0,r4),fr2
	fadd fr3,fr4
	fcmp/gt fr4,fr2
	bf loc_8c050254
	fmov fr4,@(r0,r4)

loc_8c050254:
	mov.w @(loc_8c05031e,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r4)
	mova @(0xD8,PC),r0
	fmov @r0,fr3
	mov 0x0C,r0
	fmov @(r0,r5),fr4
	mov 0x34,r0
	fmov @(r0,r4),fr2
	fadd fr3,fr4
	ftrc fr2,fpul
	sts fpul,r3
	ftrc fr4,fpul
	sts fpul,r2
	cmp/gt r2,r3
	bt loc_8c05027e
	fmov fr4,@(r0,r4)
	mov 0x02,r3
	mov.w @(loc_8c05031e,PC),r0
	bra loc_8c0502a0
	mov.b r3,@(r0,r4)

loc_8c05027e:
	mova @(0xB8,PC),r0
	fmov @r0,fr2
	mov 0x0C,r0
	fmov @(r0,r5),fr4
	mov 0x34,r0
	fmov @(r0,r4),fr1
	fadd fr2,fr4
	ftrc fr1,fpul
	sts fpul,r3
	ftrc fr4,fpul
	sts fpul,r2
	cmp/ge r2,r3
	bf loc_8c0502a0
	fmov fr4,@(r0,r4)
	mov 0x01,r3
	mov.w @(loc_8c05031e,PC),r0
	mov.b r3,@(r0,r4)

loc_8c0502a0:
	rts
	nop

;==============================================
loc_8c0502a4:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8c050320,PC),r0
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0503a0
	mov.w @(loc_8c050322,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x1C,r0
	bt loc_8c0503a0
	mov.w @(loc_8c050322,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x17,r0
	bt loc_8c0503a0
	mov.w @(loc_8c050324,PC),r0
	mov.l @(loc_8c05033c,PC),r13
	mov.l @(r0,r14),r12
	mova @(loc_8c050340,PC),r0
	fmov @r0,fr3
	mov 0x0C,r0
	fmov @(r0,r13),fr4
	mov 0x34,r0
	fmov @(r0,r14),fr2
	fadd fr3,fr4
	ftrc fr2,fpul
	sts fpul,r3
	ftrc fr4,fpul
	sts fpul,r2
	cmp/ge r2,r3
	bt loc_8c050348
	mova @(0x58,PC),r0
	fmov @r0,fr4
	mov.w @(loc_8c050326,PC),r0
	fmov @(r0,r13),fr2
	mov 0x34,r0
	fmov @(r0,r14),fr1
	fadd fr4,fr2
	fcmp/gt fr1,fr2
	bf loc_8c050308
	mov.w @(loc_8c050326,PC),r0
	fmov @(r0,r13),fr2
	mov 0x34,r0
	fadd fr4,fr2
	bra loc_8c0503a0
	fmov fr2,@(r0,r14)

loc_8c050308:
	bsr loc_8c050518
	mov r14,r4
	lds.l @r15+,pr
	mov r12,r5
	mov r13,r6
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c050474
	mov.l @r15+,r14

;##############################################
loc_8c05031c:
	#data 0x041c
loc_8c05031e:
	#data 0x01fd
loc_8c050320:
	#data 0x0420
loc_8c050322:
	#data 0x01d0
loc_8c050324:
	#data 0x020c
loc_8c050326:
	#data 0x0098
loc_8c050328:
	#data 0xc2092492
loc_8c05032c:
	#data 0xc34db6db
loc_8c050330:
	#data 0x8c26a5b8
loc_8c050334:
	#data 0xc392aaab
loc_8c050338:
	#data 0x4392aaab
loc_8c05033c:
	#data 0x8c26a518
loc_8c050340:
	#data 0xc38e8000
loc_8c050344:
	#data 0x420c0000

;----------------------------------------------
loc_8c050348:
	mova @(loc_8c050458,PC),r0
	fmov @r0,fr2
	mov 0x0C,r0
	fmov @(r0,r13),fr4
	mov 0x34,r0
	fmov @(r0,r14),fr1
	fadd fr2,fr4
	ftrc fr1,fpul
	sts fpul,r3
	ftrc fr4,fpul
	sts fpul,r2
	cmp/gt r2,r3
	bf loc_8c050394
	mova @(0xF8,PC),r0
	fmov @r0,fr4
	mov.w @(loc_8c05044e,PC),r0
	fmov @(r0,r13),fr1
	mov 0x34,r0
	fmov @(r0,r14),fr0
	fadd fr4,fr1
	fcmp/gt fr1,fr0
	bf loc_8c050380
	mov.w @(loc_8c05044e,PC),r0
	fmov @(r0,r13),fr1
	mov 0x34,r0
	fadd fr4,fr1
	bra loc_8c0503a0
	fmov fr1,@(r0,r14)

loc_8c050380:
	bsr loc_8c050518
	mov r14,r4
	lds.l @r15+,pr
	mov r12,r5
	mov r13,r6
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0503aa
	mov.l @r15+,r14

loc_8c050394:
	mov.b @(0x5,r12),r0
	tst r0,r0
	bf loc_8c0503a0
	mov.w @(loc_8c050450,PC),r0
	mov 0x00,r2
	mov.b r2,@(r0,r12)

loc_8c0503a0:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c0503aa:
	mova @(0xB4,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	fmov @r0,fr3
	mov 0x0C,r0
	fmov @(r0,r6),fr4
	mov r5,r13
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x29,r0
	bf.s loc_8c0503cc
	fadd fr3,fr4
	mova @(0x9C,PC),r0
	fmov @r0,fr2
	fadd fr2,fr4

loc_8c0503cc:
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fcmp/gt fr3,fr4
	bt.s loc_8c05040e
	mov 0x00,r4
	mov.b @(0x5,r13),r0
	tst r0,r0
	bf loc_8c0503e6
	mov.w @(loc_8c050452,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x0A,r0
	bt loc_8c050446

loc_8c0503e6:
	mov 0x34,r0
	mov.l @(loc_8c050468,PC),r3
	fmov fr4,@(r0,r14)
	mov.w @(loc_8c050454,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c050456,PC),r0
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05046c,PC),r2
	mov 0x01,r5
	jsr @r2
	mov r14,r4
	mov.b @(0x5,r13),r0
	tst r0,r0
	bf loc_8c050446
	bra loc_8c050438
	nop

loc_8c05040e:
	mov.b @(0x5,r13),r0
	tst r0,r0
	bf loc_8c050446
	mov.w @(loc_8c050452,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x0A,r0
	bt loc_8c050446
	mov.w @(loc_8c050454,PC),r0
	mov.l @(loc_8c050468,PC),r3
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c050456,PC),r0
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05046c,PC),r2
	mov 0x01,r5
	jsr @r2
	mov r14,r4

loc_8c050438:
	lds.l @r15+,pr
	mov.l @(loc_8c050470,PC),r3
	mov r14,r4
	mov 0x0A,r5
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c050446:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05044e:
	#data 0x009c
loc_8c050450:
	#data 0x0235
loc_8c050452:
	#data 0x01d0
loc_8c050454:
	#data 0x041c
loc_8c050456:
	#data 0x0201
	#align4
loc_8c050458:
	#data 0x438e8000
loc_8c05045c:
	#data 0xc20c0000
loc_8c050460:
	#data 0x43de8000
loc_8c050464:
	#data 0x42555555
loc_8c050468:
	#data loc_8c051648
loc_8c05046c:
	#data bank03.loc_8c035162
loc_8c050470:
	#data loc_8c0532a8

;==============================================
loc_8c050474:
	mova @(loc_8c05059c,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	fmov @r0,fr3
	mov 0x0C,r0
	fmov @(r0,r6),fr4
	mov r5,r13
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x29,r0 ; Juggernaut
	bf.s loc_8c050496
	fadd fr3,fr4
	mova @(loc_8c0505a0,PC),r0
	fmov @r0,fr2
	fsub fr2,fr4

loc_8c050496:
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fcmp/gt fr4,fr3
	bt.s loc_8c0504d8
	mov 0x00,r4
	mov.b @(0x5,r13),r0
	tst r0,r0
	bf loc_8c0504b0
	mov.w @(loc_8c05058c,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x0A,r0
	bt loc_8c050510

loc_8c0504b0:
	mov 0x34,r0
	mov.l @(loc_8c0505a4,PC),r3
	fmov fr4,@(r0,r14)
	mov.w @(loc_8c05058e,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c050590,PC),r0
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c0505a8,PC),r2
	mov 0x01,r5
	jsr @r2
	mov r14,r4
	mov.b @(0x5,r13),r0
	tst r0,r0
	bf loc_8c050510
	bra loc_8c050502
	nop

loc_8c0504d8:
	mov.b @(0x5,r13),r0
	tst r0,r0
	bf loc_8c050510
	mov.w @(loc_8c05058c,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x0A,r0
	bt loc_8c050510
	mov.w @(loc_8c05058e,PC),r0
	mov.l @(loc_8c0505a4,PC),r3
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c050590,PC),r0
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c0505a8,PC),r2
	mov 0x01,r5
	jsr @r2
	mov r14,r4

;==============================================
loc_8c050502:
	lds.l @r15+,pr
	mov.l @(loc_8c0505ac,PC),r3
	mov r14,r4
	mov 0x0A,r5
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c050510:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c050518:
	mov.w @(loc_8c050592,PC),r0
	mov 0x02,r3
	mov.w @(loc_8c050594,PC),r5
	mov.b r3,@(r0,r4)
	mov.w @(loc_8c050596,PC),r0
	mov.w @(r0,r4),r3
	and r5,r3
	mov.w r3,@(r0,r4)
	add 0x08,r0
	mov.w @(r0,r4),r2
	and r5,r2
	mov.w r2,@(r0,r4)
	add 0xFA,r0
	mov.w @(r0,r4),r3
	and r5,r3
	mov.w r3,@(r0,r4)
	add 0x08,r0
	mov.w @(r0,r4),r2
	and r5,r2
	mov.w r2,@(r0,r4)
	add 0x04,r0
	mov.w @(r0,r4),r3
	and r5,r3
	mov.w r3,@(r0,r4)
	add 0xFE,r0
	mov.w @(r0,r4),r2
	and r5,r2
	rts
	mov.w r2,@(r0,r4)

;==============================================
loc_8c050552:
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.w @(loc_8c050598,PC),r8
	mov.l @(loc_8c0505b0,PC),r2
	mov.w r0,@(0x4,r15)
	mov.l @r15,r3
	jsr @r2
	add r3,r8
	mov.l @(loc_8c0505b4,PC),r1
	and 0x1F,r0
	mov.b @(r0,r1),r3
	mov.w @(0x4,r15),r0
	add r3,r0
	mov.w r0,@r8
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c050584
	mov.w @(loc_8c050598,PC),r0
	mov 0x01,r3
	mov.l @r15,r2
	mov.w r3,@(r0,r2)

loc_8c050584:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r8

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05058c:
	#data 0x01d0
loc_8c05058e:
	#data 0x041c
loc_8c050590:
	#data 0x0201
loc_8c050592:
	#data 0x01f3
loc_8c050594:
	#data 0x03f0
loc_8c050596:
	#data 0x0340
loc_8c050598:
	#data 0x025c
	#align4
loc_8c05059c:
	#data 0xc3de8000
loc_8c0505a0:
	#data 0x42555555
loc_8c0505a4:
	#data loc_8c051648
loc_8c0505a8:
	#data bank03.loc_8c035162
loc_8c0505ac:
	#data loc_8c0532a8
loc_8c0505b0:
	#data bank03.loc_8c03319e
loc_8c0505b4:
	#data bank14.loc_8c14ea10

;==============================================
loc_8c0505b8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c0506bc,PC),r2
	mov 0x05,r1
	mov.b @r2,r3
	extu.b r3,r3
	cmp/ge r1,r3
	bt.s loc_8c050606
	mov r4,r14
	mov.w @(loc_8c0506b4,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c050606
	bsr loc_8c0506cc
	mov r14,r4
	mov.w r0,@r15
	exts.w r0,r0
	tst r0,r0
	bt loc_8c0505fc
	mov.w @(loc_8c0506b6,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c0506c0,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c0506b8,PC),r0
	mov.w @r15,r3
	mov.w @(r0,r14),r2
	sub r3,r2
	mov.w r2,@(r0,r14)
	exts.w r2,r2
	cmp/pl r2
	bf loc_8c050606

;==============================================
loc_8c0505fc:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c050606:
	mov 0x01,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c050610:
	mov.l @(loc_8c0506bc,PC),r2
	mov 0x05,r1
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.b @r2,r3
	extu.b r3,r3
	cmp/ge r1,r3
	bt.s loc_8c050646
	mov r4,r14
	mov.w @(loc_8c0506b4,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c050646
	bsr loc_8c0506cc
	mov r14,r4
	mov r0,r4
	mov.w @(loc_8c0506b8,PC),r0
	mov.w @(r0,r14),r3
	sub r4,r3
	mov.w r3,@(r0,r14)
	exts.w r3,r3
	cmp/pl r3
	bf loc_8c050646
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_8c050646:
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c05064e:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c0506c4,PC),r3
	mov r4,r14
	jsr @r3
	mov.w r5,@r15
	mov.l @(loc_8c0506c8,PC),r1
	and 0x1F,r0
	mov.w @r15,r3
	mov.b @(r0,r1),r2
	mov.w @(loc_8c0506b8,PC),r0
	add r3,r2
	mov.w r2,@(r0,r14)
	exts.w r2,r2
	cmp/pl r2
	bt loc_8c050674
	mov 0x01,r2
	mov.w r2,@(r0,r14)

loc_8c050674:
	mov.w @(r0,r14),r3
	add 0x02,r0
	mov.w r3,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c050682:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c0506cc
	mov r4,r14
	mov.w @(loc_8c0506b8,PC),r2
	add r14,r2
	mov.w @r2,r2
	sub r0,r2
	mov.w @(loc_8c0506b8,PC),r0
	mov.w r2,@(r0,r14)
	exts.w r2,r2
	cmp/pl r2
	bf loc_8c0506a4
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_8c0506a4:
	mov.w @(loc_8c0506ba,PC),r0
	mov.w @(r0,r14),r2
	add 0xFE,r0
	mov.w r2,@(r0,r14)
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0506b4:
	#data 0x0420
loc_8c0506b6:
	#data 0x0142
loc_8c0506b8:
	#data 0x025c
loc_8c0506ba:
	#data 0x025e
	#align4
loc_8c0506bc:
	#data 0x8c2895f0
loc_8c0506c0:
	#data bank03.loc_8c034dee
loc_8c0506c4:
	#data bank03.loc_8c03319e
loc_8c0506c8:
	#data bank14.loc_8c14ea30

;==============================================
loc_8c0506cc:
	mov.w @(loc_8c0507a4,PC),r0
	mov.w @(loc_8c0507a2,PC),r6
	mov.w @(r0,r4),r3
	extu.w r3,r3
	tst r6,r3
	bf.s loc_8c0506e6
	mov 0x00,r5
	mov.w @(loc_8c0507a6,PC),r0
	mov.w @(r0,r4),r1
	extu.w r1,r1
	tst r6,r1
	bt loc_8c0506e6
	mov 0x02,r5

loc_8c0506e6:
	mov.w @(loc_8c0507a6,PC),r0
	mov.w @(loc_8c0507a8,PC),r3
	mov.w @(r0,r4),r2
	extu.w r2,r2
	tst r3,r2
	bt loc_8c0506f4
	add 0x01,r5

loc_8c0506f4:
	rts
	mov r5,r0

;==============================================
loc_8c0506f8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(loc_8c0507aa,PC),r0
	mov r4,r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0507e6
	mov.w @(loc_8c0507a6,PC),r0
	mov.w @(r0,r14),r3
	mov.w r3,@r15
	extu.w r3,r3
	tst r3,r3
	bt loc_8c0507e6
	mov r15,r13
	mov 0x00,r3
	add 0x04,r13
	mov.b r3,@r13
	mov.w @r15,r2
	mov.w @(loc_8c0507a2,PC),r3
	extu.w r2,r2
	tst r3,r2
	bt loc_8c05072e
	mov.b @r13,r0
	add 0x02,r0
	mov.b r0,@r13

loc_8c05072e:
	mov.w @r15,r3
	mov.w @(loc_8c0507a8,PC),r2
	extu.w r3,r3
	tst r2,r3
	bt loc_8c05073e
	mov.b @r13,r0
	add 0x01,r0
	mov.b r0,@r13

loc_8c05073e:
	mov.l @(loc_8c0507b0,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c0507b4,PC),r1
	and 0x0F,r0
	mov r15,r4
	mov.b @r13,r2
	mov.b @(r0,r1),r3
	add 0x05,r4
	mov.w @(loc_8c0507aa,PC),r0
	add r3,r2
	mov.b r2,@r13
	mov.b @(r0,r14),r0
	and 0x03,r0
	mov.b r0,@r4
	mov.w @(loc_8c0507aa,PC),r0
	mov.b @r13,r3
	mov.b @(r0,r14),r2
	sub r3,r2
	mov.b r2,@(r0,r14)
	exts.b r2,r2
	cmp/pz r2
	bt loc_8c050770
	mov 0x00,r2
	mov.b r2,@(r0,r14)

loc_8c050770:
	mov.b @r13,r2
	mov.b @r4,r3
	cmp/ge r2,r3
	bt loc_8c0507e6
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf.s loc_8c0507b8
	mov 0x01,r13
	mov.w @(loc_8c0507ac,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x09,r0
	bf loc_8c0507b8
	mov.w @(loc_8c0507ac,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x17,r0
	bf loc_8c0507b8
	mov.w @(loc_8c0507ae,PC),r0
	mov.b r13,@(r0,r14)
	bsr loc_8c0510d8
	mov r14,r4
	bra loc_8c0507e6
	nop

;##############################################
loc_8c0507a2:
	#data 0x3c00
loc_8c0507a4:
	#data 0x0342
loc_8c0507a6:
	#data 0x0348
loc_8c0507a8:
	#data 0x03f0
loc_8c0507aa:
	#data 0x01e3
loc_8c0507ac:
	#data 0x0233
loc_8c0507ae:
	#data 0x0142
	#align4

loc_8c0507b0:
	#data bank03.loc_8c03319e
loc_8c0507b4:
	#data bank14.loc_8c14f29a

;----------------------------------------------
loc_8c0507b8:
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c0507e6
	mov.w @(loc_8c05088e,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x17,r0
	bt loc_8c0507e2
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c0507e6
	mov.w @(loc_8c05088e,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x0C,r0
	bf loc_8c0507e6
	mov.w @(loc_8c050890,PC),r0
	mov.l @(loc_8c0508a4,PC),r3
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_8c0507e2:
	mov.w @(loc_8c050890,PC),r0
	mov.b r13,@(r0,r14)

loc_8c0507e6:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0507f0:
	mov.w @(loc_8c050892,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c050830
	mov.w @(loc_8c050894,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c050830
	mov.w @(loc_8c050898,PC),r0
	mov.w @(loc_8c050896,PC),r3
	mov.w @(r0,r4),r5
	and r3,r5
	extu.w r5,r2
	tst r2,r2
	bt loc_8c050830
	mova @(0x98,PC),r0
	fmov @r0,fr4
	mov.w @(loc_8c05089a,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c050820
	extu.w r5,r5
	mova @(loc_8c0508ac,PC),r0
	fmov @r0,fr4

loc_8c050820:
	mov.w @(loc_8c05089c,PC),r3
	tst r3,r5
	bt.s loc_8c05082a
	mov 0x5C,r0
	fneg fr4

loc_8c05082a:
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)

loc_8c050830:
	rts
	nop

;==============================================
loc_8c050834:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c05089e,PC),r0
	mov r4,r14
	mov.l @(loc_8c0508b0,PC),r13
	mov.b r6,@r15
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf.s loc_8c0508bc
	mov 0x10,r12
	mov.w @(loc_8c0508a0,PC),r0
	mov 0x04,r2
	mov 0x76,r1
	mov.b r2,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r13,r3
	extu.b r0,r0
	shll2 r0
	shll2 r0
	add r3,r1
	or 0x04,r0
	mov.b r0,@r1
	mov.w @(loc_8c0508a2,PC),r0
	mov.b r12,@(r0,r14)
	bsr loc_8c050b64
	mov r14,r4
	mov.l @(loc_8c0508b4,PC),r2
	mov 0x1E,r5
	jsr @r2
	mov r14,r4
	mov r14,r4
	mov 0x2B,r5
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c0508b8,PC),r3
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05088e:
	#data 0x01d0
loc_8c050890:
	#data 0x0142
loc_8c050892:
	#data 0x0420
loc_8c050894:
	#data 0x0234
loc_8c050896:
	#data 0x0c00
loc_8c050898:
	#data 0x034a
loc_8c05089a:
	#data 0x01d2
loc_8c05089c:
	#data 0x0800
loc_8c05089e:
	#data 0x0255
loc_8c0508a0:
	#data 0x0327
loc_8c0508a2:
	#data 0x0328

loc_8c0508a4:
	#data bank03.loc_8c034dee
loc_8c0508a8:
	#data 0x3d555555
loc_8c0508ac:
	#data 0xbd555555
loc_8c0508b0:
	#data 0x8c2896b0
loc_8c0508b4:
	#data bank04.loc_8c04223a
loc_8c0508b8:
	#data bank04.loc_8c042008

;==============================================
loc_8c0508bc:
	mov.w @(loc_8c0509d8,PC),r0
	mov.w @(loc_8c0509d6,PC),r11
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf loc_8c050906
	mov.l @(loc_8c0509e4,PC),r2
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c0509e8,PC),r3
	mov.b @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c0509da,PC),r0
	mov 0x05,r5
	mov.l @(loc_8c0509ec,PC),r3
	mov.b r11,@(r0,r14)
	add 0xFF,r0
	mov.b r12,@(r0,r14)
	mov.b @(0x2,r14),r0
	jsr @r3
	extu.b r0,r4
	mov.b @(0x2,r14),r0
	mov r14,r4
	mov.l @r13,r3
	extu.b r0,r0
	add 0x74,r3
	mov.b @(r0,r3),r5
	add r11,r5
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c0509f0,PC),r3
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c050906:
	mov.w @(loc_8c0509d8,PC),r0
	mov 0x02,r2
	mov.b @(r0,r14),r3
	extu.b r3,r3
	cmp/gt r2,r3
	bt loc_8c050954
	mov.b @(0x2,r14),r0
	mov.l @r13,r3
	extu.b r0,r0
	add 0x74,r3
	mov.b @(r0,r3),r1
	mov.w @(loc_8c0509dc,PC),r0
	mov.b r1,@(r0,r14)
	mov.l @r13,r3
	mov r3,r0
	nop
	mov 0x02,r4
	add r14,r4
	mov.b @r4,r4
	add 0x74,r0
	extu.b r4,r1
	add r0,r1
	extu.b r4,r0
	mov.b @r1,r1
	shll2 r0
	shll2 r0
	or r1,r0
	mov 0x76,r1
	add r3,r1
	mov.b r0,@r1
	mov.w @(loc_8c0509de,PC),r0
	mov.b r12,@(r0,r14)
	mov.b @r15,r6
	bsr loc_8c050962
	mov r14,r4
	mov.w @(loc_8c0509da,PC),r0
	mov.b r11,@(r0,r14)
	add 0xFF,r0
	mov.b r12,@(r0,r14)

loc_8c050954:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c050962:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.w @(loc_8c0509dc,PC),r0
	mov 0x01,r13
	mov r4,r14
	mov.l @(loc_8c0509f4,PC),r2
	mov 0x76,r1
	mov r5,r12
	mov.b r6,@r15
	mov.b r13,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r2,r3
	extu.b r0,r0
	shll2 r0
	shll2 r0
	add r3,r1
	or 0x01,r0
	mov.b r0,@r1
	mov 0x10,r3
	mov.w @(loc_8c0509de,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c0509e8,PC),r3
	mov.b @r15,r5
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c0509f8,PC),r2
	mov 0x00,r5
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8c050a9c
	mov r14,r2
	mov.l @(loc_8c0509fc,PC),r3
	mov r15,r1
	add 0x34,r2
	add 0x04,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x04,r0
	fmov @(r0,r12),fr3
	mov 0x08,r0
	fmov @(r0,r15),fr2
	mov 0x08,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r15)
	mov.w @(loc_8c0509e0,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c050a00
	mov 0x04,r0
	fmov @r12,fr3
	fmov @(r0,r15),fr2
	bra loc_8c050a08
	fadd fr3,fr2

;##############################################
loc_8c0509d6:
	#data 0x00ff
loc_8c0509d8:
	#data 0x0255
loc_8c0509da:
	#data 0x03f9
loc_8c0509dc:
	#data 0x0327
loc_8c0509de:
	#data 0x0328
loc_8c0509e0:
	#data 0x0130
	#align4
loc_8c0509e4:
	#data bank0f.loc_8c10004a
loc_8c0509e8:
	#data loc_8c056f10
loc_8c0509ec:
	#data bank03.loc_8c031b48
loc_8c0509f0:
	#data bank04.loc_8c0424ca
loc_8c0509f4:
	#data 0x8c2896b0
loc_8c0509f8:
	#data bank0e.loc_8c0efdc0
loc_8c0509fc:
	#data bank12.loc_8c1294c8

;----------------------------------------------
loc_8c050a00:
	mov 0x04,r0
	fmov @r12,fr3
	fmov @(r0,r15),fr2
	fsub fr3,fr2

loc_8c050a08:
	mov 0x04,r0
	mov.l @(loc_8c050b38,PC),r3
	fmov fr2,@(r0,r15)
	mov 0x00,r7
	mov.w @(loc_8c050b36,PC),r0
	mov r15,r4
	mov r7,r6
	mov.w @(r0,r14),r5
	jsr @r3
	add 0x04,r4
	mov.l @(loc_8c050b3c,PC),r3
	mov 0x05,r5
	mov.b @(0x2,r14),r0
	jsr @r3
	extu.b r0,r4
	mov.l @(loc_8c050b40,PC),r2
	mov 0x00,r5
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c050b44,PC),r3
	mov 0x1E,r5
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c050b48,PC),r2
	mov 0x2B,r5
	jsr @r2
	mov r14,r4
	bsr loc_8c050fa8
	mov r14,r4
	mov.l @(loc_8c050b4c,PC),r2
	mov 0x00,r5
	jsr @r2
	mov r14,r4
	mov.b @(0x2,r14),r0
	mov 0x02,r5
	mov.l @(loc_8c050b54,PC),r12
	extu.b r0,r4
	mov.l @(loc_8c050b50,PC),r11
	xor r13,r4
	mov r12,r2
	mov r4,r3
	shll r4
	add r3,r4
	add 0x18,r2
	shll2 r4
	add r2,r4
	jsr @r11
	mov.l @r4,r4
	mov.b @(0x2,r14),r0
	mov r12,r2
	add 0x18,r2
	extu.b r0,r4
	xor r13,r4
	mov r4,r3
	shll r4
	add r3,r4
	shll2 r4
	add r2,r4
	mov 0x02,r5
	jsr @r11
	mov.l @(0x4,r4),r4
	mov.b @(0x2,r14),r0
	mov r12,r2
	add 0x18,r2
	extu.b r0,r4
	xor r13,r4
	mov r4,r3
	shll r4
	add r3,r4
	shll2 r4
	add r2,r4
	mov 0x02,r5
	jsr @r11
	mov.l @(0x8,r4),r4

loc_8c050a9c:
	add 0x10,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c050aaa:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c050b58,PC),r3
	jsr @r3
	mov 0x01,r5
	mov.l @(loc_8c050b5c,PC),r2
	mov 0x04,r5
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8c050b2a
	bsr loc_8c050fa8
	mov r14,r4
	mov.l @(loc_8c050b60,PC),r4
	mov 0x01,r13
	mov r13,r0
	nop
	mov.b r0,@(0x4,r4)
	mov 0x02,r5
	mov.b r0,@(0x3,r4)
	mov.b @(0x2,r14),r0
	mov.l @(loc_8c050b54,PC),r12
	extu.b r0,r4
	mov.l @(loc_8c050b50,PC),r11
	xor r13,r4
	mov r12,r2
	mov r4,r3
	shll r4
	add r3,r4
	add 0x18,r2
	shll2 r4
	add r2,r4
	jsr @r11
	mov.l @r4,r4
	mov.b @(0x2,r14),r0
	mov r12,r2
	add 0x18,r2
	extu.b r0,r4
	xor r13,r4
	mov r4,r3
	shll r4
	add r3,r4
	shll2 r4
	add r2,r4
	mov 0x02,r5
	jsr @r11
	mov.l @(0x4,r4),r4
	mov.b @(0x2,r14),r0
	mov r12,r2
	add 0x18,r2
	extu.b r0,r4
	xor r13,r4
	mov r4,r3
	shll r4
	add r3,r4
	shll2 r4
	add r2,r4
	mov 0x02,r5
	jsr @r11
	mov.l @(0x8,r4),r4

loc_8c050b2a:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c050b36:
	#data 0x0130
	#align4
loc_8c050b38:
	#data bank0f.loc_8c0ffadc
loc_8c050b3c:
	#data bank03.loc_8c031b48
loc_8c050b40:
	#data bank04.loc_8c0424ca
loc_8c050b44:
	#data bank04.loc_8c04223a
loc_8c050b48:
	#data bank04.loc_8c042008
loc_8c050b4c:
	#data bank0f.loc_8c0f2a48
loc_8c050b50:
	#data bank03.loc_8c035162
loc_8c050b54:
	#data 0x8c2895f0
loc_8c050b58:
	#data loc_8c056f10
loc_8c050b5c:
	#data bank0e.loc_8c0efdc0
loc_8c050b60:
	#data 0x8c26a518

;----------------------------------------------
loc_8c050b64:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(loc_8c050c64,PC),r3
	mov r5,r13
	mov r4,r14
	jsr @r3
	mov 0x05,r5
	tst r0,r0
	bt loc_8c050c4c
	mov.l @(loc_8c050c68,PC),r3
	mov r14,r2
	mov r15,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov 0x04,r0
	fmov @(r0,r13),fr3
	mov 0x04,r0
	fmov @(r0,r15),fr2
	mov 0x04,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r15)
	mov.w @(loc_8c050c5a,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c050ba8
	fmov @r15,fr2
	fmov @r13,fr3
	bra loc_8c050bae
	fadd fr3,fr2

loc_8c050ba8:
	fmov @r15,fr2
	fmov @r13,fr3
	fsub fr3,fr2

loc_8c050bae:
	mov.w @(loc_8c050c5a,PC),r0
	mov 0x00,r7
	mov.l @(loc_8c050c6c,PC),r3
	mov r7,r6
	fmov fr2,@r15
	mov.w @(r0,r14),r5
	jsr @r3
	mov r15,r4
	mov.l @(loc_8c050c70,PC),r3
	mov 0x07,r5
	mov.b @(0x2,r14),r0
	jsr @r3
	extu.b r0,r4
	mov.w @(loc_8c050c5e,PC),r0
	mov.w @(loc_8c050c5c,PC),r3
	mov.b @(r0,r14),r5
	mov.l @(loc_8c050c74,PC),r2
	add r3,r5
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c050c78,PC),r3
	mov 0x1E,r5
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c050c7c,PC),r2
	mov 0x2B,r5
	jsr @r2
	mov r14,r4
	bsr loc_8c050fa8
	mov r14,r4
	mov.l @(loc_8c050c80,PC),r2
	mov 0x01,r5
	jsr @r2
	mov r14,r4
	mov.b @(0x2,r14),r0
	mov 0x01,r12
	mov.l @(loc_8c050c88,PC),r13
	mov 0x02,r5
	extu.b r0,r4
	mov.l @(loc_8c050c84,PC),r11
	xor r12,r4
	mov r13,r2
	mov r4,r3
	shll r4
	add r3,r4
	add 0x18,r2
	shll2 r4
	add r2,r4
	jsr @r11
	mov.l @r4,r4
	mov.b @(0x2,r14),r0
	mov r13,r2
	add 0x18,r2
	extu.b r0,r4
	xor r12,r4
	mov r4,r3
	shll r4
	add r3,r4
	shll2 r4
	add r2,r4
	mov 0x02,r5
	jsr @r11
	mov.l @(0x4,r4),r4
	mov.b @(0x2,r14),r0
	mov r13,r2
	add 0x18,r2
	extu.b r0,r4
	xor r12,r4
	mov r4,r3
	shll r4
	add r3,r4
	shll2 r4
	add r2,r4
	mov 0x02,r5
	jsr @r11
	mov.l @(0x8,r4),r4
	mov.w @(loc_8c050c60,PC),r0
	mov 0x05,r3
	mov.b r3,@(r0,r14)

loc_8c050c4c:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c050c5a:
	#data 0x0130
loc_8c050c5c:
	#data 0x00ff
loc_8c050c5e:
	#data 0x0259
loc_8c050c60:
	#data 0x0254
	#align4
loc_8c050c64:
	#data bank0e.loc_8c0efdc0
loc_8c050c68:
	#data bank12.loc_8c1294c8
loc_8c050c6c:
	#data bank0f.loc_8c0ffadc
loc_8c050c70:
	#data bank03.loc_8c031b48
loc_8c050c74:
	#data bank04.loc_8c0424ca
loc_8c050c78:
	#data bank04.loc_8c04223a
loc_8c050c7c:
	#data bank04.loc_8c042008
loc_8c050c80:
	#data bank0f.loc_8c0f2a48
loc_8c050c84:
	#data bank03.loc_8c035162
loc_8c050c88:
	#data 0x8c2895f0

;==============================================
loc_8c050c8c:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8c050dd4,PC),r4
	mov 0x02,r5
	add r14,r5
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @r4,r3
	mov.b @(0x2,r14),r0
	add 0x74,r3
	extu.b r0,r0
	mov.b @(r0,r3),r2
	mov.w @(loc_8c050dcc,PC),r0
	add 0x01,r2
	mov.b r2,@(r0,r14)
	mov.l @r4,r3
	mov.b @r5,r5
	mov r3,r1
	add 0x74,r1
	extu.b r5,r2
	add r1,r2
	mov.b @r2,r0
	extu.b r5,r2
	shll2 r2
	mov 0x76,r1
	shll2 r2
	add 0x01,r0
	add r3,r1
	or r2,r0
	mov.b r0,@r1
	mov.w @(loc_8c050dce,PC),r0
	mov 0x10,r3
	mov 0x01,r5
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c050dd8,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c050d5a
	bsr loc_8c050fa8
	mov r14,r4
	mov.l @(loc_8c050ddc,PC),r2
	mov 0x1E,r5
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c050de0,PC),r3
	mov 0x2B,r5
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c050de4,PC),r2
	mov 0x00,r5
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c050de8,PC),r4
	mov 0x01,r13
	mov r13,r0
	nop
	mov.b r0,@(0x3,r4)
	mov 0x07,r0
	mov.b r0,@(0x4,r4)
	mov 0x02,r5
	mov.b @(0x2,r14),r0
	mov.l @(loc_8c050dec,PC),r11
	extu.b r0,r4
	mov.l @(loc_8c050df0,PC),r12
	xor r13,r4
	mov r11,r2
	mov r4,r3
	shll r4
	add r3,r4
	add 0x18,r2
	shll2 r4
	add r2,r4
	jsr @r12
	mov.l @r4,r4
	mov.b @(0x2,r14),r0
	mov r11,r2
	add 0x18,r2
	extu.b r0,r4
	xor r13,r4
	mov r4,r3
	shll r4
	add r3,r4
	shll2 r4
	add r2,r4
	mov 0x02,r5
	jsr @r12
	mov.l @(0x4,r4),r4
	mov.b @(0x2,r14),r0
	mov r11,r2
	add 0x18,r2
	extu.b r0,r4
	xor r13,r4
	mov r4,r3
	shll r4
	add r3,r4
	shll2 r4
	add r2,r4
	mov 0x02,r5
	jsr @r12
	mov.l @(0x8,r4),r4

loc_8c050d5a:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c050d66:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15

loc_8c050d70:
	add 0xF4,r15
	mov.w @(loc_8c050dcc,PC),r0
	mov r4,r14
	mov 0x01,r13
	mov.l @(loc_8c050dd4,PC),r2
	mov.b r13,@(r0,r14)
	mov 0x76,r1
	mov.b @(0x2,r14),r0
	mov r5,r12
	mov.l @r2,r3
	mov 0x02,r5
	extu.b r0,r0
	shll2 r0
	shll2 r0
	add r3,r1
	or 0x01,r0
	mov.b r0,@r1
	mov 0x10,r3
	mov.w @(loc_8c050dce,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c050dd8,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c050e96
	mov.l @(loc_8c050df4,PC),r3
	mov r14,r2
	mov r15,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov 0x04,r0
	fmov @(r0,r12),fr3
	mov 0x04,r0
	fmov @(r0,r15),fr2
	mov 0x04,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r15)
	mov.w @(loc_8c050dd0,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c050df8
	fmov @r15,fr2
	fmov @r12,fr3
	bra loc_8c050dfe
	fadd fr3,fr2

;##############################################
loc_8c050dcc:
	#data 0x0327
loc_8c050dce:
	#data 0x0328
loc_8c050dd0:
	#data 0x0130
	#align4
loc_8c050dd4:
	#data 0x8c2896b0
loc_8c050dd8:
	#data bank0e.loc_8c0efdc0
loc_8c050ddc:
	#data bank04.loc_8c04223a
loc_8c050de0:
	#data bank04.loc_8c042008
loc_8c050de4:
	#data bank0f.loc_8c0f2a48
loc_8c050de8:
	#data 0x8c26a518
loc_8c050dec:
	#data 0x8c2895f0
loc_8c050df0:
	#data bank03.loc_8c035162
loc_8c050df4:
	#data bank12.loc_8c1294c8

;----------------------------------------------
loc_8c050df8:
	fmov @r15,fr2
	fmov @r12,fr3
	fsub fr3,fr2

loc_8c050dfe:
	mov.w @(loc_8c050ef0,PC),r0
	mov 0x00,r7
	mov.l @(loc_8c050ef4,PC),r3
	mov r7,r6
	fmov fr2,@r15
	mov.w @(r0,r14),r5
	jsr @r3
	mov r15,r4
	mov.l @(loc_8c050ef8,PC),r3
	mov 0x05,r5
	mov.b @(0x2,r14),r0
	jsr @r3
	extu.b r0,r4
	mov.l @(loc_8c050efc,PC),r2
	mov 0x00,r5
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c050f00,PC),r3
	mov 0x1E,r5
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c050f04,PC),r2
	mov 0x2B,r5
	jsr @r2
	mov r14,r4
	bsr loc_8c050fa8
	mov r14,r4
	mov.l @(loc_8c050f08,PC),r2
	mov 0x00,r5
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c050f0c,PC),r4
	mov 0x09,r0
	mov.l @(loc_8c050f10,PC),r11
	mov 0x02,r5
	mov.b r0,@(0x4,r4)
	mov.b r0,@(0x3,r4)
	mov r11,r2
	mov.b @(0x2,r14),r0
	add 0x18,r2
	mov.l @(loc_8c050f14,PC),r12
	extu.b r0,r4
	xor r13,r4
	mov r4,r3
	shll r4
	add r3,r4
	shll2 r4
	add r2,r4
	jsr @r12
	mov.l @r4,r4
	mov.b @(0x2,r14),r0
	mov r11,r2
	add 0x18,r2
	extu.b r0,r4
	xor r13,r4
	mov r4,r3
	shll r4
	add r3,r4
	shll2 r4
	add r2,r4
	mov 0x02,r5
	jsr @r12
	mov.l @(0x4,r4),r4
	mov.b @(0x2,r14),r0
	mov r11,r2
	add 0x18,r2
	extu.b r0,r4
	xor r13,r4
	mov r4,r3
	shll r4
	add r3,r4
	shll2 r4
	add r2,r4
	mov 0x02,r5
	jsr @r12
	mov.l @(0x8,r4),r4

loc_8c050e96:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c050ea4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(loc_8c050f18,PC),r3
	mov r5,r13
	mov r4,r14
	jsr @r3
	mov 0x01,r5
	mov.l @(loc_8c050f1c,PC),r2
	mov 0x06,r5
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8c050f9a
	mov.l @(loc_8c050f20,PC),r3
	mov r14,r2
	mov r15,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov 0x04,r0
	fmov @(r0,r13),fr3
	mov 0x04,r0
	fmov @(r0,r15),fr2
	mov 0x04,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r15)
	mov.w @(loc_8c050ef0,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c050f24
	fmov @r15,fr2
	fmov @r13,fr3
	bra loc_8c050f2a
	fadd fr3,fr2

;##############################################
loc_8c050ef0:
	#data 0x0130
	#align4
loc_8c050ef4:
	#data bank0f.loc_8c0ffadc
loc_8c050ef8:
	#data bank03.loc_8c031b48
loc_8c050efc:
	#data bank04.loc_8c0424ca
loc_8c050f00:
	#data bank04.loc_8c04223a
loc_8c050f04:
	#data bank04.loc_8c042008
loc_8c050f08:
	#data bank0f.loc_8c0f2a48
loc_8c050f0c:
	#data 0x8c26a518
loc_8c050f10:
	#data 0x8c2895f0
loc_8c050f14:
	#data bank03.loc_8c035162
loc_8c050f18:
	#data loc_8c056f10
loc_8c050f1c:
	#data bank0e.loc_8c0efdc0
loc_8c050f20:
	#data bank12.loc_8c1294c8

;----------------------------------------------
loc_8c050f24:
	fmov @r15,fr2
	fmov @r13,fr3
	fsub fr3,fr2

loc_8c050f2a:
	mov.w @(loc_8c051060,PC),r0
	mov 0x00,r7
	mov.l @(loc_8c051064,PC),r3
	mov r7,r6
	fmov fr2,@r15
	mov.w @(r0,r14),r5
	jsr @r3
	mov r15,r4
	mov.l @(loc_8c051068,PC),r2
	mov 0x40,r5
	jsr @r2
	mov r14,r4
	bsr loc_8c050fa8
	mov r14,r4
	mov.b @(0x2,r14),r0
	mov 0x01,r12
	mov.l @(loc_8c051070,PC),r13
	mov 0x02,r5
	extu.b r0,r4
	mov.l @(loc_8c05106c,PC),r11
	xor r12,r4
	mov r13,r2
	mov r4,r3
	shll r4
	add r3,r4
	add 0x18,r2
	shll2 r4
	add r2,r4
	jsr @r11
	mov.l @r4,r4
	mov.b @(0x2,r14),r0
	mov r13,r2
	add 0x18,r2
	extu.b r0,r4
	xor r12,r4
	mov r4,r3
	shll r4
	add r3,r4
	shll2 r4
	add r2,r4
	mov 0x02,r5
	jsr @r11
	mov.l @(0x4,r4),r4
	mov.b @(0x2,r14),r0
	mov r13,r2
	add 0x18,r2
	extu.b r0,r4
	xor r12,r4
	mov r4,r3
	shll r4
	add r3,r4
	shll2 r4
	add r2,r4
	mov 0x02,r5
	jsr @r11
	mov.l @(0x8,r4),r4

loc_8c050f9a:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c050fa8:
	mov.b @(0x2,r4),r0
	mov 0x01,r6
	mov.w @(loc_8c051062,PC),r2
	mov r6,r3
	extu.b r0,r0
	add r4,r2
	mov.b @r2,r1
	shad r0,r3
	mov.w @(loc_8c051062,PC),r0
	mov 0x00,r5
	or r3,r1
	mov.b r1,@r2
	mov.b @(r0,r4),r3
	add 0x01,r0
	mov.l @(loc_8c051074,PC),r2
	mov.b r3,@r2
	mov.b r5,@(r0,r4)
	mov.l @(loc_8c051078,PC),r4
	mov r5,r0
	nop
	mov.b r0,@(0x5,r4)
	mov r6,r0
	nop
	mov.b r0,@(0x6,r4)
	mov 0x0A,r0
	mov.b r0,@(0x4,r4)
	rts
	mov.b r0,@(0x3,r4)

;==============================================
loc_8c050fe0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x01,r13
	mov.w @(loc_8c051062,PC),r2
	mov r13,r3
	mov.l r12,@-r15
	mov 0x0A,r5
	add r14,r2
	mov.l r11,@-r15
	mov.l @(loc_8c051070,PC),r11
	sts.l pr,@-r15
	mov.b @(0x2,r14),r0
	mov.b @r2,r1
	extu.b r0,r0
	mov.l @(loc_8c05106c,PC),r12
	shad r0,r3
	not r3,r3
	and r3,r1
	mov.b r1,@r2
	mov r11,r2
	mov.b @(0x2,r14),r0
	add 0x18,r2
	extu.b r0,r4
	xor r13,r4
	mov r4,r3
	shll r4
	add r3,r4
	shll2 r4
	add r2,r4
	jsr @r12
	mov.l @r4,r4
	mov.b @(0x2,r14),r0
	mov r11,r2
	add 0x18,r2
	extu.b r0,r4
	xor r13,r4
	mov r4,r3
	shll r4
	add r3,r4
	shll2 r4
	add r2,r4
	mov 0x0A,r5
	jsr @r12
	mov.l @(0x4,r4),r4
	mov.b @(0x2,r14),r0
	mov r11,r2
	add 0x18,r2
	extu.b r0,r4
	xor r13,r4
	mov r4,r3
	shll r4
	add r3,r4
	shll2 r4
	add r2,r4
	mov 0x0A,r5
	jsr @r12
	mov.l @(0x8,r4),r4
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c051060:
	#data 0x0130
loc_8c051062:
	#data 0x0248
	#align4
loc_8c051064:
	#data bank10.loc_8c105cb4
loc_8c051068:
	#data bank04.loc_8c04223a
loc_8c05106c:
	#data bank03.loc_8c035162
loc_8c051070:
	#data 0x8c2895f0
loc_8c051074:
	#data 0x8c2895f6
loc_8c051078:
	#data 0x8c26a518

;==============================================
loc_8c05107c:
	mov.w @(loc_8c05118a,PC),r0
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	exts.b r3,r3
	tst r3,r3
	bt loc_8c0510ae
	mov.b @(0x5,r4),r0
	tst r0,r0
	bf loc_8c0510ae
	mov.w @(loc_8c05118c,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bt loc_8c0510cc
	mov.w @(loc_8c05118c,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x1C,r0
	bt loc_8c0510cc

loc_8c0510ae:
	mov.w @(loc_8c05118e,PC),r0
	mov 0x00,r2
	mov.w @(loc_8c051192,PC),r12
	mov.b r2,@(r0,r4)
	mov.l @(loc_8c0511a0,PC),r4
	mov.w @(loc_8c051190,PC),r13
	mov.l @(loc_8c0511a4,PC),r11
	add r4,r12
	mov r4,r14

loc_8c0510c0:
	mov 0x01,r5
	jsr @r11
	mov r14,r4
	add r13,r14
	cmp/hs r12,r14
	bf loc_8c0510c0

loc_8c0510cc:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0510d8:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8c051194,PC),r0
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r12
	exts.b r12,r3
	cmp/pz r3
	bt loc_8c051150
	mov.w @(loc_8c051196,PC),r0
	mov.l @(loc_8c0511a8,PC),r3
	mov.l @(r0,r14),r13
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c051194,PC),r0
	extu.b r12,r4
	mov.b @(r0,r14),r2
	cmp/eq r2,r4
	bt loc_8c051150
	mov 0x40,r2
	tst r2,r4
	bf loc_8c051120
	mov 0x0F,r1
	and r1,r12
	extu.b r12,r3
	tst r3,r3
	bt loc_8c051150
	extu.b r12,r12
	add 0xFF,r12
	mov r12,r3
	shll2 r12
	add r3,r12
	shll2 r12
	bra loc_8c05112a
	sub r12,r13

loc_8c051120:
	mov 0x3F,r4
	and r12,r4
	shll2 r4
	extu.b r4,r4
	add r4,r13

loc_8c05112a:
	mov.w @(loc_8c051194,PC),r1
	mov r13,r2
	mov.w @(loc_8c051196,PC),r0
	mov.l @(loc_8c0511ac,PC),r3
	add r14,r1
	mov.l r13,@(r0,r14)
	jsr @r3
	mov 0x14,r0
	mov.w @(loc_8c051198,PC),r0
	mov r14,r4
	mov.l @(loc_8c0511a8,PC),r3
	mov.b @(r0,r14),r2
	add 0x01,r2
	mov.b r2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c051150:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05115a:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov 0x34,r0
	mov r4,r14
	fmov @(r0,r14),fr3
	mov.w @(loc_8c05119a,PC),r0
	fmov fr3,@r15
	fmov @(r0,r14),fr3
	mov 0x04,r0
	mov.l @(loc_8c0511b0,PC),r3
	fmov fr3,@(r0,r15)
	mov 0x3C,r0
	fmov @(r0,r14),fr3
	mov 0x08,r0
	fmov fr3,@(r0,r15)
	mov.w @(loc_8c05119c,PC),r0
	mov.w @(r0,r14),r5
	jsr @r3
	mov r15,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05118a:
	#data 0x0249
loc_8c05118c:
	#data 0x01d0
loc_8c05118e:
	#data 0x0248
loc_8c051190:
	#data 0x05a4
loc_8c051192:
	#data 0x21d8
loc_8c051194:
	#data 0x0140
loc_8c051196:
	#data 0x0154
loc_8c051198:
	#data 0x0142
loc_8c05119a:
	#data 0x041c
loc_8c05119c:
	#data 0x0130
	#align4
loc_8c0511a0:
	#data 0x8c268340
loc_8c0511a4:
	#data bank03.loc_8c035162
loc_8c0511a8:
	#data bank03.loc_8c034dee
loc_8c0511ac:
	#data bank12.loc_8c1294c8
loc_8c0511b0:
	#data bank10.loc_8c103ba4

;==============================================
loc_8c0511b4:
	sts.l pr,@-r15
	add 0xF4,r15
	mov 0x34,r0
	mov.l @(loc_8c05126c,PC),r3
	fmov @(r0,r4),fr3
	mov.w @(loc_8c051264,PC),r0
	fmov fr3,@r15
	fmov @(r0,r4),fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	mov 0x3C,r0
	fmov @(r0,r4),fr3
	mov 0x08,r0
	jsr @r3
	fmov fr3,@(r0,r15)
	mov.l @(loc_8c051270,PC),r2
	mov 0x00,r5
	jsr @r2
	mov r15,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
; called from char programming
loc_8c0511e2:
; if ((global game struct[0x1c] & 1) == 0) {
	; if( (int)(x velocity) != 0) {
		; if(plmem[0x041c] <= y position) {
			; bank0f.loc_8c0fd894()
		; }
	; }
; }


	; r3 = work.GameGlobalPointer
	mov.l @(loc_8c051274,PC),r3
	; r0 = [work.GameGlobalPointer][0x1c]
	mov.l @r3,r0
	mov.l @(0x1C,r0),r0
	
	; if (r0 & 1) != 0, return
	tst 0x01,r0
	bf loc_8c05120a
	
	; r0 = x velocity offset
	; fr3 = x velocity
	; if (int)(fr3) == 0 then return
	mov pl_mem.x_velocity,r0
	fmov @(r0,r4),fr3
	ftrc fr3,fpul
	sts fpul,r3
	tst r3,r3
	bt loc_8c05120a
	
	; fr3 = plmem[0x041c]
	mov.w @(loc_8c051264,PC),r0
	fmov @(r0,r4),fr3
	; fr3 = y position
	mov pl_mem.y_pos,r0
	fmov @(r0,r4),fr2
	; if plmem[0x041c] > y position, return
	fcmp/gt fr3,fr2
	bt loc_8c05120a
	
	; call bank0f.loc_8c0fd894()
	mov.l @(loc_8c051278,PC),r3
	jmp @r3 ; tail call, doesnt use jsr
	nop

loc_8c05120a:
	rts
	nop

;==============================================
loc_8c05120e:
	mov.l @(loc_8c051274,PC),r3
	sts.l pr,@-r15
	mov.l @r3,r1
	mov.l @(0x1C,r1),r1
	mov r5,r0
	nop
	mov.l @(loc_8c05127c,PC),r2
	jsr @r2
	nop
	tst r0,r0
	bf loc_8c05122a
	mov.l @(loc_8c051278,PC),r3
	jmp @r3
	lds.l @r15+,pr

loc_8c05122a:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c051230:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	add 0xF0,r15
	mov.w @(loc_8c051266,PC),r0
	mov.l @(r0,r4),r5
	add 0xB4,r0
	mov.l @(r0,r5),r6
	mov.w @(0x4,r6),r0
	tst r0,r0
	bf.s loc_8c051280
	fldi0 fr5
	mov.w @(0x6,r6),r0
	tst r0,r0
	bf loc_8c051280
	mov.w @(0x8,r6),r0
	tst r0,r0
	bf loc_8c051280
	mov.w @(0xA,r6),r0
	mov.w @(loc_8c051268,PC),r3
	extu.w r0,r0
	tst r3,r0
	bf loc_8c051280
	mov.w @(loc_8c05126a,PC),r0
	bra loc_8c051454
	fmov fr5,@(r0,r4)

;##############################################
loc_8c051264:
	#data 0x041c
loc_8c051266:
	#data 0x020c
loc_8c051268:
	#data 0x1fff
loc_8c05126a:
	#data 0x0298
	#align4
loc_8c05126c:
	#data bank04.loc_8c04242a
loc_8c051270:
	#data bank0f.loc_8c0fd6b0
loc_8c051274:
	#data work.GameGlobalPointer
loc_8c051278:
	#data bank0f.loc_8c0fd894
loc_8c05127c:
	#data bank12.loc_8c1292d4

;==============================================
loc_8c051280:
	mov 0x34,r0
	mov r15,r1
	fldi1 fr3
	mov r1,r6
	mov r1,r13
	mov r1,r12
	add 0x04,r13
	mov r1,r14
	add 0x0C,r6
	fneg fr3
	add 0x08,r12
	fmov fr3,@r6
	fmov fr3,@r12
	fmov fr3,@r13
	fmov fr3,@r14
	fmov @(r0,r4),fr6
	fmov @(r0,r5),fr4
	fcmp/gt fr4,fr6
	bf.s loc_8c0512b0
	mov 0x00,r7
	mov.w @(loc_8c0513c4,PC),r0
	mov.w @(r0,r5),r2
	tst r2,r2
	bt loc_8c0512bc

loc_8c0512b0:
	fcmp/gt fr4,fr6
	bt loc_8c0512c6
	mov.w @(loc_8c0513c4,PC),r0
	mov.w @(r0,r5),r2
	tst r2,r2
	bt loc_8c0512c6

loc_8c0512bc:
	mov 0xFF,r7
	fmov fr5,@r6
	fmov fr5,@r12
	fmov fr5,@r13
	fmov fr5,@r14

loc_8c0512c6:
	mova @(0x104,PC),r0
	fmov @r0,fr4
	mov.w @(loc_8c0513c6,PC),r0
	mov.l @(r0,r5),r3
	mov.w @(0x4,r3),r0
	tst r0,r0
	bt loc_8c051308
	mov.w @(loc_8c0513c6,PC),r0
	mov.l @(r0,r5),r1
	mov.w @(0x4,r1),r0
	extu.w r0,r1
	mov.w @(loc_8c0513c8,PC),r0
	shll2 r1
	mov.l @(r0,r5),r3
	shll r1
	tst r7,r7
	add r3,r1
	mov.w @r1,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fmov fr3,@r14
	mov.w @(0x2,r1),r0
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fmov fr3,fr5
	bt.s loc_8c051302
	fmul fr4,fr5
	fneg fr5

loc_8c051302:
	fmov @r14,fr3
	fsub fr5,fr3
	fmov fr3,@r14

loc_8c051308:
	mov.w @(loc_8c0513c6,PC),r0
	mov.l @(r0,r5),r3
	mov.w @(0x6,r3),r0
	tst r0,r0
	bt loc_8c051346
	mov.w @(loc_8c0513c6,PC),r0
	mov.l @(r0,r5),r1
	mov.w @(0x6,r1),r0
	extu.w r0,r1
	mov.w @(loc_8c0513c8,PC),r0
	shll2 r1
	mov.l @(r0,r5),r3
	shll r1
	tst r7,r7
	add r3,r1
	mov.w @r1,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fmov fr3,@r13
	mov.w @(0x2,r1),r0
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fmov fr3,fr5
	bt.s loc_8c051340
	fmul fr4,fr5
	fneg fr5

loc_8c051340:
	fmov @r13,fr3
	fsub fr5,fr3
	fmov fr3,@r13

loc_8c051346:
	mov.w @(loc_8c0513c6,PC),r0
	mov.l @(r0,r5),r3
	mov.w @(0x8,r3),r0
	tst r0,r0
	bt loc_8c051384
	mov.w @(loc_8c0513c6,PC),r0
	mov.l @(r0,r5),r1
	mov.w @(0x8,r1),r0
	extu.w r0,r1
	mov.w @(loc_8c0513c8,PC),r0
	shll2 r1
	mov.l @(r0,r5),r3
	shll r1
	tst r7,r7
	add r3,r1
	mov.w @r1,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fmov fr3,@r12
	mov.w @(0x2,r1),r0
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fmov fr3,fr5
	bt.s loc_8c05137e
	fmul fr4,fr5
	fneg fr5

loc_8c05137e:
	fmov @r12,fr3
	fsub fr5,fr3
	fmov fr3,@r12

loc_8c051384:
	mov.w @(loc_8c0513c6,PC),r0
	mov.l @(r0,r5),r3
	mov.w @(0xA,r3),r0
	cmp/pl r0
	bf loc_8c0513d8
	mov.w @(loc_8c0513c6,PC),r0
	fmov fr4,fr2
	mov.l @(r0,r5),r1
	mov.w @(0xA,r1),r0
	mov.w @(loc_8c0513ca,PC),r1
	extu.w r0,r0
	and r0,r1
	mov.w @(loc_8c0513c8,PC),r0
	shll2 r1
	mov.l @(r0,r5),r3
	shll r1
	tst r7,r7
	add r3,r1
	mov.w @r1,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fmov fr3,@r6
	mov.w @(0x2,r1),r0
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fmov fr3,fr4
	bt.s loc_8c0513d2
	fmul fr2,fr4
	bra loc_8c0513d0
	nop

;##############################################
loc_8c0513c4:
	#data 0x0130
loc_8c0513c6:
	#data 0x01c0
loc_8c0513c8:
	#data 0x0170
loc_8c0513ca:
	#data 0x1fff
	#align4
loc_8c0513cc:
	#data 0x3fd55555

;----------------------------------------------
loc_8c0513d0:
	fneg fr4

loc_8c0513d2:
	fmov @r6,fr3
	fsub fr4,fr3
	fmov fr3,@r6

loc_8c0513d8:
	tst r7,r7
	bf loc_8c051400
	fmov @r14,fr2
	fmov @r13,fr3
	fcmp/gt fr2,fr3
	bt loc_8c0513e8
	fmov @r13,fr3
	fmov fr3,@r14

loc_8c0513e8:
	fmov @r14,fr3
	fmov @r12,fr2
	fcmp/gt fr3,fr2
	bt loc_8c0513f4
	fmov @r12,fr3
	fmov fr3,@r14

loc_8c0513f4:
	fmov @r14,fr3
	fmov @r6,fr2
	fcmp/gt fr3,fr2
	bf loc_8c051420
	bra loc_8c051424
	nop

loc_8c051400:
	fmov @r14,fr2
	fmov @r13,fr3
	fcmp/gt fr3,fr2
	bt loc_8c05140c
	fmov @r13,fr3
	fmov fr3,@r14

loc_8c05140c:
	fmov @r14,fr3
	fmov @r12,fr2
	fcmp/gt fr2,fr3
	bt loc_8c051418
	fmov @r12,fr3
	fmov fr3,@r14

loc_8c051418:
	fmov @r14,fr3
	fmov @r6,fr2
	fcmp/gt fr2,fr3
	bt loc_8c051424

loc_8c051420:
	fmov @r6,fr3
	fmov fr3,@r14

loc_8c051424:
	mov.w @(loc_8c0514c6,PC),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bt.s loc_8c051434
	mov 0x34,r0
	fmov @r14,fr3
	fneg fr3
	fmov fr3,@r14

loc_8c051434:
	fmov @r14,fr2
	fmov @(r0,r5),fr3
	fadd fr3,fr2
	fmov fr2,@r14
	fmov @(r0,r4),fr2
	fmov @(r0,r5),fr3
	fcmp/gt fr2,fr3
	bf loc_8c05144a
	fmov @(r0,r4),fr3
	bra loc_8c05144e
	fmov @r14,fr4

loc_8c05144a:
	fmov @(r0,r4),fr4
	fmov @r14,fr3

loc_8c05144e:
	fsub fr3,fr4
	mov.w @(loc_8c0514c8,PC),r0
	fmov fr4,@(r0,r4)

loc_8c051454:
	add 0x10,r15
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05145e:
	mov.w @(loc_8c0514ca,PC),r0
	mov.l @(r0,r4),r3
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fmov @(r0,r3),fr5
	fsub fr3,fr5
	fcmp/gt fr4,fr5
	bt loc_8c051476
	fmov fr4,fr3
	fneg fr3
	fcmp/gt fr5,fr3
	bf loc_8c05147a

loc_8c051476:
	rts
	mov 0x01,r0

loc_8c05147a:
	mov 0x00,r0
	rts
	nop

;==============================================
loc_8c051480:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	fmov fr5,@r15
	mov r4,r14
	bsr loc_8c05145e
	mov r14,r4
	tst r0,r0
	bf loc_8c0514a4
	mov.w @(loc_8c0514ca,PC),r0
	mov.l @(r0,r14),r2
	mov 0x38,r0
	fmov @(r0,r14),fr4
	fmov @(r0,r2),fr3
	fsub fr3,fr4
	fmov @r15,fr3
	fcmp/gt fr3,fr4
	bf loc_8c0514ae

loc_8c0514a4:
	mov 0x01,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c0514ae:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0514b8:
	mov.l @(loc_8c0514cc,PC),r3
	mov.b @(0x2,r4),r0
	mov.l @r3,r2
	extu.b r0,r0
	add 0x34,r2
	rts
	mov.b @(r0,r2),r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0514c6:
	#data 0x0130
loc_8c0514c8:
	#data 0x0298
loc_8c0514ca:
	#data 0x020c
	#align4
loc_8c0514cc:
	#data 0x8c2896b0

;==============================================
loc_8c0514d0:
	mov.l r14,@-r15
	mova @(0x150,PC),r0
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	mov 0x01,r12
	mov.l r11,@-r15
	mov 0x00,r11
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	sts.l pr,@-r15
	fmov @r0,fr13
	mova @(loc_8c051628,PC),r0
	mov.l @(loc_8c05162c,PC),r8
	mov.l @(loc_8c051630,PC),r9
	mov.l @(loc_8c051620,PC),r10
	fmov @r0,fr14
	fldi0 fr15

loc_8c0514fc:
	mov.l @r9,r0
	mov 0x3E,r2
	mov r0,r3
	add r3,r2
	mov.b @r2,r2
	add 0x18,r0
	mov r2,r3
	shll r2
	add r3,r2
	shll2 r2
	add r2,r0
	mov.l @(r0,r11),r14
	mov.b @r14,r3
	tst r3,r3
	bf loc_8c05153c
	mov.b r12,@r14
	mov r12,r0
	nop
	mov.b r0,@(0x4,r14)
	mov r13,r0
	nop
	mov.b r0,@(0x5,r14)
	mov 0x00,r5
	mov.w @(loc_8c051610,PC),r0
	mov.l @(loc_8c051634,PC),r3
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	bra loc_8c051552
	nop

loc_8c05153c:
	mov 0x5C,r0
	mov.l @(loc_8c051638,PC),r3
	fmov fr15,@(r0,r14)
	mov 0x60,r0
	fmov fr15,@(r0,r14)
	mov 0x68,r0
	fmov fr15,@(r0,r14)
	mov 0x6C,r0
	fmov fr15,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_8c051552:
	mov.w @(loc_8c051612,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bf loc_8c051566
	mov.w @(loc_8c051614,PC),r0
	mov.w r12,@(r0,r14)
	add 0xFC,r0
	mov.w r12,@(r0,r14)
	mov.w @(loc_8c051616,PC),r0
	mov.b r13,@(r0,r14)

loc_8c051566:
	mov.w @r10,r3
	mov 0x0C,r0
	fmov @(r0,r8),fr2
	mov 0x34,r0
	lds r3,fpul
	mov.w @(loc_8c051618,PC),r4
	mov.l @(loc_8c051640,PC),r1
	float fpul,fr3
	add r14,r4
	mov.l @(loc_8c05163c,PC),r3
	fmul fr13,fr3
	fdiv fr14,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.l @(0x4,r4),r0
	mov.l @r4,r2
	and r1,r0
	and r3,r2
	or r0,r2
	tst r2,r2
	bt.s loc_8c051596
	mov 0x01,r5
	mov.w @(loc_8c05161a,PC),r0
	mov.b r13,@(r0,r14)


loc_8c051596:
	mov.l @(loc_8c051644,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x0C,r2
	add 0x04,r11
	cmp/hs r2,r11
	bf.s loc_8c0514fc
	add 0x02,r10
	mov.l @r9,r4
	mov 0x3E,r0
	mov.b @(r0,r4),r14
	mov r4,r2
	add 0x18,r2
	xor r12,r14
	mov r14,r3
	shll r14
	add r3,r14
	shll2 r14
	add r2,r14
	mov.l @r14,r14
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x1A,r0
	bf loc_8c0515f8
	mov r12,r0
	nop
	mov.b r0,@(0x4,r14)
	mov r13,r0
	nop
	mov.b r0,@(0x5,r14)
	mov 0x17,r5
	mov.w @(loc_8c05161c,PC),r0
	mov.l @(loc_8c051634,PC),r3
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov 0x0C,r0
	fmov @(r0,r8),fr3
	mov 0x34,r0
	mov 0x10,r3
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c051610,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c05161e,PC),r0
	mov.b r3,@(r0,r14)
	add 0xB0,r0
	mov.b r13,@(r0,r14)

loc_8c0515f8:
	lds.l @r15+,pr
	fmov @r15+,fr13
	fmov @r15+,fr14
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
loc_8c051610:
	#data 0x041c
loc_8c051612:
	#data 0x0420
loc_8c051614:
	#data 0x0424
loc_8c051616:
	#data 0x01dc
loc_8c051618:
	#data 0x0414
loc_8c05161a:
	#data 0x0202
loc_8c05161c:
	#data 0x012c
loc_8c05161e:
	#data 0x01ed
	#align4
loc_8c051620:
	#data bank14.loc_8c14ea50
loc_8c051624:
	#data 0x3fd55555
loc_8c051628:
	#data 0x43800000
loc_8c05162c:
	#data 0x8c26a518
loc_8c051630:
	#data 0x8c2896b0
loc_8c051634:
	#data loc_8c0532a8
loc_8c051638:
	#data loc_8c05176e
loc_8c05163c:
	#data 0x00100000
loc_8c051640:
	#data 0x04000000
loc_8c051644:
	#data bank03.loc_8c035162

;==============================================
loc_8c051648:
	mov.w @(loc_8c051714,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c051716,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c051678
	mov.w @(loc_8c051718,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bf loc_8c051678
	mov.w @(loc_8c051716,PC),r0
	mov 0x02,r2
	mov.b r2,@(r0,r14)
	mova @(loc_8c051728,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)

loc_8c051678:
	mov.w @(loc_8c05171a,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c051684
	bra loc_8c05175e
	mov 0x18,r5

loc_8c051684:
	mov.w @(loc_8c05171c,PC),r0
	mov.b @(r0,r14),r2
	mov.w @(loc_8c05171e,PC),r0
	extu.b r2,r2
	mov.w r2,@(r0,r14)
	bsr loc_8c05211c
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c051768
	mov.l @(loc_8c05172c,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c051768
	mov.w @(loc_8c051716,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c0516be
	mov.w @(loc_8c051720,PC),r0
	mov.w @(loc_8c051722,PC),r3
	mov.w @(r0,r14),r2
	extu.w r2,r2
	tst r3,r2
	bt loc_8c0516be
	bra loc_8c05175e
	mov 0x02,r5

loc_8c0516be:
	mov.w @(loc_8c051716,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0516e4
	mov.w @(loc_8c051720,PC),r0
	mov.w @(loc_8c051724,PC),r3
	mov.w @(r0,r14),r2
	extu.w r2,r2
	tst r3,r2
	bt.s loc_8c0516da
	mov r14,r4
	bra loc_8c0516dc
	mov 0x06,r5

loc_8c0516da:
	mov 0x07,r5

loc_8c0516dc:
	lds.l @r15+,pr
	mov.l @(loc_8c051730,PC),r2
	jmp @r2
	mov.l @r15+,r14

loc_8c0516e4:
	mov.w @(loc_8c051716,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0516fc

loc_8c0516ec:
	mov.w @(loc_8c051720,PC),r0
	mov.w @(loc_8c051724,PC),r3
	mov.w @(r0,r14),r1
	extu.w r1,r1
	tst r3,r1
	bt loc_8c0516fc
	bra loc_8c05175e
	mov 0x05,r5

loc_8c0516fc:
	mov.w @(loc_8c051720,PC),r0
	mov.w @(loc_8c051726,PC),r3
	mov.w @(r0,r14),r2
	extu.w r2,r2
	tst r3,r2
	bt loc_8c051734
	lds.l @r15+,pr
	mov.l @(loc_8c051730,PC),r2
	mov 0x01,r5
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c051714:
	#data 0x012c
loc_8c051716:
	#data 0x01f9
loc_8c051718:
	#data 0x041c
loc_8c05171a:
	#data 0x0201
loc_8c05171c:
	#data 0x01d2
loc_8c05171e:
	#data 0x0130
loc_8c051720:
	#data 0x034a
loc_8c051722:
	#data 0x2000
loc_8c051724:
	#data 0x1000
loc_8c051726:
	#data 0x0c00
	#align4
loc_8c051728:
	#data 0xbf4db6db
loc_8c05172c:
	#data loc_8c0526d6
loc_8c051730:
	#data loc_8c0532a8

;==============================================
loc_8c051734:
	mov.w @(r0,r14),r3
	mov.w @(loc_8c051832,PC),r2
	extu.w r3,r3
	tst r2,r3
	bt loc_8c051746
	bsr loc_8c051af6
	mov r14,r4
	tst r0,r0
	bf loc_8c051768

loc_8c051746:
	mov.w @(loc_8c051834,PC),r0
	mov.w @(loc_8c051836,PC),r2
	mov.w @(r0,r14),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c05175c
	bsr loc_8c0518a0
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c051768

loc_8c05175c:
	mov 0x00,r5

loc_8c05175e:
	lds.l @r15+,pr
	mov.l @(loc_8c051844,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c051768:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05176e:
	sts.l pr,@-r15
	bsr loc_8c05218a
	mov.l r4,@-r15
	mov.l @r15,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.w @(loc_8c051838,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c05183a,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c05179a
	lds.l @r15+,pr
	mov.l @(loc_8c051844,PC),r3
	mov 0x18,r5
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c05179a:
	mov.w @(loc_8c05183c,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0517aa
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0517be
	mov.l @r15+,r14

loc_8c0517aa:
	mov.l @(loc_8c051848,PC),r3
	mov 0x03,r5
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	mov r14,r4
	mov.b r0,@(0x6,r14)
	lds.l @r15+,pr
	bra loc_8c0517e8
	mov.l @r15+,r14

loc_8c0517be:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(loc_8c051848,PC),r3
	jsr @r3
	mov 0x0E,r5
	mov 0x01,r0
	fldi0 fr3
	mov.b r0,@(0x6,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bf loc_8c0517dc
	bra loc_8c0517de
	mov 0x01,r3

loc_8c0517dc:
	mov 0x02,r3

loc_8c0517de:
	mov.w @(loc_8c05183c,PC),r0
	mov r14,r4
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8c0517e8:
	mov.w @(loc_8c05183e,PC),r0
	mov 0x02,r3
	mov.l r14,@-r15
	mov r4,r14
	mov.b r3,@(r0,r14)
	mova @(0x58,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	mov.w @(loc_8c051840,PC),r0
	mov.b @(r0,r14),r3
	cmp/pz r3
	bt loc_8c05180a
	bra loc_8c051812
	mov 0x09,r2

loc_8c05180a:
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_8c051818
	mov 0x0B,r2

loc_8c051812:
	mov.w @(loc_8c051842,PC),r0
	bra loc_8c05181e
	mov.b r2,@(r0,r14)

loc_8c051818:
	mov.w @(loc_8c051842,PC),r0
	mov 0x0A,r1
	mov.b r1,@(r0,r14)

loc_8c05181e:
	mov.w @(loc_8c051840,PC),r0
	mov 0xFF,r3
	mov r14,r4
	mov 0x01,r5
	mov.b r3,@(r0,r14)
	add 0x85,r0
	mov.l @(loc_8c051850,PC),r3
	mov.b @(r0,r14),r6
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c051832:
	#data 0x0120
loc_8c051834:
	#data 0x034a
loc_8c051836:
	#data 0x0360
loc_8c051838:
	#data 0x012c
loc_8c05183a:
	#data 0x0201
loc_8c05183c:
	#data 0x01fc
loc_8c05183e:
	#data 0x01f9
loc_8c051840:
	#data 0x01d3
loc_8c051842:
	#data 0x0158
	#align4
loc_8c051844:
	#data loc_8c0532a8
loc_8c051848:
	#data loc_8c0530d8
loc_8c05184c:
	#data 0xbf4db6db
loc_8c051850:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c051854:
	mov 0x5C,r0
	fldi0 fr4
	fmov fr4,@(r0,r4)
	mov 0x60,r0
	fmov fr4,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	bra loc_8c051648
	fmov fr4,@(r0,r4)

;==============================================
loc_8c051868:
	sts.l pr,@-r15
	tst r5,r5
	bt loc_8c051874
	mov.w @(loc_8c051896,PC),r0
	bra loc_8c051876
	nop

loc_8c051874:
	mov.w @(loc_8c051898,PC),r0

loc_8c051876:
	mov.w @(r0,r4),r5
	mov.w @(loc_8c05189a,PC),r2
	extu.w r5,r5
	extu.w r5,r5
	tst r2,r5
	bf loc_8c051888
	lds.l @r15+,pr
	rts
	mov 0x00,r0

loc_8c051888:
	mov.l @(loc_8c05189c,PC),r2
	jsr @r2
	mov 0x01,r5
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c051896:
	#data 0x0348
loc_8c051898:
	#data 0x0340
loc_8c05189a:
	#data 0x0c00
	#align4
loc_8c05189c:
	#data loc_8c0532a8

;==============================================
loc_8c0518a0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.w @(loc_8c051980,PC),r0
	mov.l r11,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0518ba
	bra loc_8c0519d4
	nop

loc_8c0518ba:
	mov.w @(loc_8c051982,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0518c6
	bra loc_8c0519d4
	nop

loc_8c0518c6:
	mov.l @(loc_8c05199c,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c051984,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c0518e6
	mov.w @(loc_8c051986,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_8c0518e6
	bra loc_8c0519d4
	nop

loc_8c0518e6:
	mov.w @(loc_8c051988,PC),r0
	mov.w @(r0,r14),r13
	mov.w @(loc_8c05198a,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x14,r0
	bf loc_8c0518fa
	mov.w @(loc_8c05198c,PC),r0
	mov.w @(r0,r14),r2
	or r2,r13

loc_8c0518fa:
	mov.w @(loc_8c05198e,PC),r3
	and r3,r13
	extu.w r13,r2
	tst r2,r2
	bt loc_8c0519d4
	mov.w @(loc_8c051992,PC),r6
	mov 0x20,r5
	mov.w @(loc_8c051990,PC),r9
	mov 0x00,r11
	mov 0x40,r7
	mov r6,r0
	nop
	add 0xD0,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x14,r0
	bf.s loc_8c0519a0
	extu.w r13,r4
	mov.w @(loc_8c051994,PC),r0
	mov.l @(r0,r14),r2
	tst r2,r2
	bt loc_8c0519d4
	mov.w @(loc_8c051996,PC),r0
	mov.b @(r0,r14),r2
	extu.b r2,r2
	tst r5,r2
	bf loc_8c0519d4
	mov.w @(loc_8c051998,PC),r0
	mov.b @(r0,r14),r1
	tst r1,r1
	bt loc_8c0519d4
	mov r4,r3
	mov.w @(loc_8c051994,PC),r0
	tst r6,r3
	bt.s loc_8c051946
	mov.l @(r0,r14),r1
	mov.b @r1,r13
	mov r6,r12

loc_8c051946:
	mov r4,r3
	tst r7,r3
	bt.s loc_8c051954
	mov r4,r3
	mov.b @(0x2,r1),r0
	mov r7,r12
	mov r0,r13

loc_8c051954:
	tst r9,r3
	bt loc_8c05195e
	mov.b @(0x1,r1),r0
	mov r9,r12
	mov r0,r13

loc_8c05195e:
	tst r5,r4
	bt loc_8c051968
	mov.b @(0x3,r1),r0
	mov r5,r12
	mov r0,r13

loc_8c051968:
	exts.b r13,r0
	cmp/eq 0xFF,r0
	bt loc_8c0519d4
	mov.w @(loc_8c051998,PC),r0
	mov.b @(r0,r14),r3
	add 0x38,r0
	mov.b @(r0,r14),r2
	tst r3,r3
	mov 0x11,r3
	or r3,r2
	bra loc_8c0519ca
	mov.b r2,@(r0,r14)

;##############################################
loc_8c051980:
	#data 0x01ef
loc_8c051982:
	#data 0x01f3
loc_8c051984:
	#data 0x01f9
loc_8c051986:
	#data 0x041c
loc_8c051988:
	#data 0x0348
loc_8c05198a:
	#data 0x01d0
loc_8c05198c:
	#data 0x0352
loc_8c05198e:
	#data 0x0360
loc_8c051990:
	#data 0x0100
loc_8c051992:
	#data 0x0200
loc_8c051994:
	#data 0x03f4
loc_8c051996:
	#data 0x014a
loc_8c051998:
	#data 0x019e
	#align4
loc_8c05199c:
	#data loc_8c05a2cc

;----------------------------------------------
loc_8c0519a0:
	mov r4,r0
	nop
	tst r6,r0
	bt.s loc_8c0519ae
	mov r4,r2
	mov r6,r12
	mov r11,r13

loc_8c0519ae:
	tst r7,r2
	bt.s loc_8c0519b8
	mov 0x02,r6
	mov r7,r12
	mov r11,r13

loc_8c0519b8:
	mov r4,r2
	tst r9,r2
	bt loc_8c0519c2
	mov r9,r12
	mov r6,r13

loc_8c0519c2:
	tst r5,r4
	bt loc_8c0519ca
	mov r5,r12
	mov r6,r13

loc_8c0519ca:
	bsr loc_8c052930
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c0519d8

loc_8c0519d4:
	bra loc_8c051a66
	mov 0x00,r0

loc_8c0519d8:
	mov.w @(loc_8c051a74,PC),r0
	extu.w r12,r4
	mov.w @(loc_8c051a76,PC),r3
	mov.b r13,@(r0,r14)
	mov.w @(loc_8c051a78,PC),r0
	mov.w @(r0,r14),r2
	mov.w @(loc_8c051a7a,PC),r0
	and r3,r2
	mov.w r2,@(r0,r14)
	mov.w @(loc_8c051a7c,PC),r2
	tst r4,r2
	bt.s loc_8c0519f8
	mov 0x01,r5
	mov.w @(loc_8c051a7e,PC),r0
	bra loc_8c0519fc
	mov.b r11,@(r0,r14)

loc_8c0519f8:
	mov.w @(loc_8c051a7e,PC),r0
	mov.b r5,@(r0,r14)

loc_8c0519fc:
	mov.w @(loc_8c051a80,PC),r3
	tst r3,r4
	bt loc_8c051a08
	mov.w @(loc_8c051a82,PC),r0
	bra loc_8c051a0c
	mov.b r11,@(r0,r14)

loc_8c051a08:
	mov.w @(loc_8c051a82,PC),r0
	mov.b r5,@(r0,r14)

loc_8c051a0c:
	mov.w @(loc_8c051a84,PC),r0
	mov.b @(r0,r14),r4
	extu.b r4,r0
	cmp/eq 0x0A,r0
	bt.s loc_8c051a3a
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x0B,r0
	bt loc_8c051a3a
	mov.w @(loc_8c051a86,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c051a3a
	bsr loc_8c05229c
	mov r14,r4
	tst r0,r0
	bt.s loc_8c051a3a
	mov r0,r5
	bsr loc_8c0522e0
	mov r14,r4
	bra loc_8c051a64
	nop

loc_8c051a3a:
	bsr loc_8c051a90
	mov r14,r4
	mov.w @(loc_8c051a88,PC),r0
	mov.b @(r0,r14),r4
	extu.b r4,r0
	cmp/eq 0x02,r0
	bf.s loc_8c051a5a
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x02,r0
	bf loc_8c051a5e
	mov.w @(loc_8c051a8a,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c051a5e

loc_8c051a5a:
	bsr loc_8c05218a
	mov r14,r4

loc_8c051a5e:
	mov.l @(loc_8c051a8c,PC),r2
	jsr @r2
	mov r14,r4

loc_8c051a64:
	mov 0x01,r0

loc_8c051a66:
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c051a74:
	#data 0x01e8
loc_8c051a76:
	#data 0x3c00
loc_8c051a78:
	#data 0x034a
loc_8c051a7a:
	#data 0x01fa
loc_8c051a7c:
	#data 0x0300
loc_8c051a7e:
	#data 0x01fe
loc_8c051a80:
	#data 0x0240
loc_8c051a82:
	#data 0x01a3
loc_8c051a84:
	#data 0x01d0
loc_8c051a86:
	#data 0x0200
loc_8c051a88:
	#data 0x01f9
loc_8c051a8a:
	#data 0x01fc
	#align4
loc_8c051a8c:
	#data loc_8c052ca8

;==============================================
loc_8c051a90:
	mov.w @(loc_8c051b6e,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf.s loc_8c051ab2
	mov 0x01,r6
	mov.w @(loc_8c051b70,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c051aaa
	mov.w @(loc_8c051b72,PC),r0
	bra loc_8c051af2
	mov.b r6,@(r0,r4)

loc_8c051aaa:
	mov.w @(loc_8c051b72,PC),r0
	mov 0x02,r2
	bra loc_8c051af2
	mov.b r2,@(r0,r4)

loc_8c051ab2:
	mov.w @(loc_8c051b74,PC),r0
	mov.w @(loc_8c051b78,PC),r2
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov.w @(loc_8c051b76,PC),r0
	mov.w @(r0,r4),r3
	extu.w r3,r3
	tst r2,r3
	bt.s loc_8c051ace
	mov 0x00,r5
	mov.w @(loc_8c051b6e,PC),r0
	bra loc_8c051ad2
	mov.b r6,@(r0,r4)

loc_8c051ace:
	mov.w @(loc_8c051b6e,PC),r0
	mov.b r5,@(r0,r4)

loc_8c051ad2:
	mov.w @(loc_8c051b7a,PC),r0
	mov.b @(r0,r4),r6
	extu.b r6,r0
	cmp/eq 0x0A,r0
	bt.s loc_8c051ae6
	mov r0,r6
	mov r6,r0
	nop
	cmp/eq 0x0B,r0
	bf loc_8c051aee

loc_8c051ae6:
	mov.w @(loc_8c051b72,PC),r0
	mov 0x03,r3
	bra loc_8c051af2
	mov.b r3,@(r0,r4)

loc_8c051aee:
	mov.w @(loc_8c051b72,PC),r0
	mov.b r5,@(r0,r4)

loc_8c051af2:
	rts
	nop


loc_8c051af6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c051b7c,PC),r0
	mov r4,r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c051b64
	mov.w @(loc_8c051b7e,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c051b64
	mov.l @(loc_8c051b8c,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c051b6e,PC),r0
	mov.b @(r0,r14),r4
	extu.b r4,r0
	cmp/eq 0x02,r0
	bt.s loc_8c051b64
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x03,r0
	bt loc_8c051b64
	mov.w @(loc_8c051b80,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0xE0,r0
	bf loc_8c051b64
	mov.b @(0x1,r14),r0
	mov.l @(loc_8c051b90,PC),r1
	extu.b r0,r0
	shll r0
	mov.w @(r0,r1),r3
	mov.w @(loc_8c051b82,PC),r0
	mov.w @(r0,r14),r2
	and r3,r2
	mov.w r2,@r15
	extu.w r2,r2
	tst r2,r2
	bt loc_8c051b64
	mov.w @(loc_8c051b84,PC),r0
	mov.w @(loc_8c051b86,PC),r3
	mov.w @(r0,r14),r2
	mov.w @(loc_8c051b88,PC),r1
	extu.w r2,r2
	and r3,r2
	cmp/eq r1,r2
	bf loc_8c051b64
	bsr loc_8c052930
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c051b94

loc_8c051b64:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c051b6e:
	#data 0x01f9
loc_8c051b70:
	#data 0x01fc
loc_8c051b72:
	#data 0x01ff
loc_8c051b74:
	#data 0x041c
loc_8c051b76:
	#data 0x0340
loc_8c051b78:
	#data 0x1000
loc_8c051b7a:
	#data 0x01d0
loc_8c051b7c:
	#data 0x01ef
loc_8c051b7e:
	#data 0x01f3
loc_8c051b80:
	#data 0x014a
loc_8c051b82:
	#data 0x0348
loc_8c051b84:
	#data 0x034a
loc_8c051b86:
	#data 0x3c00
loc_8c051b88:
	#data 0x1800
	#align4
loc_8c051b8c:
	#data loc_8c05a2cc
loc_8c051b90:
	#data bank14.loc_8c14f5a2

;==============================================
loc_8c051b94:
	mov.w @r15,r3
	mov.w @(loc_8c051c88,PC),r2
	extu.w r3,r3
	tst r2,r3
	bt.s loc_8c051baa
	mov r14,r4
	mov.w @(loc_8c051c8a,PC),r1
	mov 0x00,r0
	add r14,r1
	bra loc_8c051bb0
	mov.b r0,@r1

loc_8c051baa:
	mov.w @(loc_8c051c8a,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r14)

loc_8c051bb0:
	bsr loc_8c051a90
	nop
	bsr loc_8c05218a
	mov r14,r4
	mov.l @(loc_8c051ca0,PC),r3
	mov 0x22,r5
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c051bca:
	mov.w @(loc_8c051c8c,PC),r0
	mov.w @(loc_8c051c8e,PC),r2
	sts.l pr,@-r15
	mov.w @(r0,r4),r3
	extu.w r3,r3
	tst r2,r3
	bf loc_8c051bde
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;==============================================
loc_8c051bde:
	mov.l @(loc_8c051ca0,PC),r3
	jsr @r3
	mov 0x02,r5
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c051bec:
	mov.w @(loc_8c051c90,PC),r5
	mov 0x00,r1
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	add r14,r5
	mov.l r12,@-r15
	mov 0x02,r4
	mov.l @(loc_8c051ca4,PC),r3
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.l @r5,r2
	and r3,r2
	or r1,r2
	tst r2,r2
	bt.s loc_8c051c14
	mov 0x01,r13
	bra loc_8c051c16
	mov r4,r5

loc_8c051c14:
	mov r13,r5

loc_8c051c16:
	mov.w @(loc_8c051c92,PC),r0
	extu.b r5,r5
	mov.b @(r0,r14),r0
	extu.b r0,r0
	and 0x7F,r0
	cmp/ge r5,r0
	bt loc_8c051c6c
	mov.w @(loc_8c051c94,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c051c3e
	mov.w @(loc_8c051c96,PC),r0
	mov.b @(r0,r14),r3
	tst r4,r3
	bt loc_8c051c6c
	mov.b @(r0,r14),r2
	mov 0xFD,r3
	and r3,r2
	bra loc_8c051cae
	mov.b r2,@(r0,r14)

loc_8c051c3e:
	mov.w @(loc_8c051c92,PC),r0
	mov 0x80,r2
	mov.w @(loc_8c051c8e,PC),r5
	mov.b @(r0,r14),r3
	extu.b r3,r3
	tst r2,r3
	bf loc_8c051c62
	mov.w @(loc_8c051c8c,PC),r0
	mov.w @(r0,r14),r3
	extu.w r3,r3
	tst r5,r3
	bf loc_8c051c6c
	mov.w @(loc_8c051c92,PC),r0
	mov.w @(loc_8c051c98,PC),r3
	mov.b @(r0,r14),r1
	or r3,r1
	bra loc_8c051c6c
	mov.b r1,@(r0,r14)

loc_8c051c62:
	mov.w @(loc_8c051c9a,PC),r0
	mov.w @(r0,r14),r3
	extu.w r3,r3
	tst r5,r3
	bf loc_8c051c70

loc_8c051c6c:
	bra loc_8c051d48
	mov 0x00,r0

loc_8c051c70:
	mov.w @(r0,r14),r5
	mov.w @(loc_8c051c9c,PC),r3
	extu.w r5,r5
	tst r5,r3
	bt loc_8c051ca8
	mov.w @(loc_8c051c9e,PC),r1
	mov 0xF6,r2
	and r5,r1
	shad r2,r1
	mov r1,r3
	bra loc_8c051caa
	nop

;##############################################
loc_8c051c88:
	#data 0x0100
loc_8c051c8a:
	#data 0x01fe
loc_8c051c8c:
	#data 0x0340
loc_8c051c8e:
	#data 0x2000
loc_8c051c90:
	#data 0x0414
loc_8c051c92:
	#data 0x01d9
loc_8c051c94:
	#data 0x0525
loc_8c051c96:
	#data 0x04a6
loc_8c051c98:
	#data 0x0080
loc_8c051c9a:
	#data 0x034a
loc_8c051c9c:
	#data 0x0c00
loc_8c051c9e:
	#data 0x0400
	#align4
loc_8c051ca0:
	#data loc_8c0532a8
loc_8c051ca4:
	#data 0x08000100

;----------------------------------------------
loc_8c051ca8:
	mov 0xFF,r3

loc_8c051caa:
	mov.w @(loc_8c051d88,PC),r0
	mov.b r3,@(r0,r14)

loc_8c051cae:
	mov.w @(loc_8c051d88,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c051cbc
	mov.w @(loc_8c051d8a,PC),r0
	bra loc_8c051cce
	mov.b r13,@(r0,r14)

loc_8c051cbc:
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_8c051cc8
	mov.w @(loc_8c051d8a,PC),r0
	bra loc_8c051cce
	mov.b r4,@(r0,r14)

loc_8c051cc8:
	mov.w @(loc_8c051d8a,PC),r0
	mov 0x00,r2
	mov.b r2,@(r0,r14)

loc_8c051cce:
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x05,r0 ; Strider
	bf.s loc_8c051ce0
	mov r13,r12
	mov.w @(loc_8c051d8a,PC),r0
	mov.b @(r0,r14),r2
	add 0x06,r2
	mov.b r2,@(r0,r14)

loc_8c051ce0:
	mov.l @(loc_8c051d9c,PC),r10
	mov 0x0F,r11

loc_8c051ce4:
	mov.w @(loc_8c051d8a,PC),r0
	mov 0x01,r5
	extu.b r12,r7
	mov.b @(r0,r14),r6
	jsr @r10
	mov r14,r4
	mov.w @(loc_8c051d8c,PC),r0
	mov.b @(r0,r14),r3
	tst r11,r3
	bf.s loc_8c051ce4
	add 0x01,r12
	mov.w @(loc_8c051d8e,PC),r0
	mov 0x11,r3
	mov.w @(loc_8c051d8e,PC),r1
	mov.b @(r0,r14),r0
	add r14,r1
	fldi0 fr4
	add 0x01,r0
	and 0x7F,r0
	mov.b r0,@r1
	mov.w @(loc_8c051d90,PC),r0
	mov.b r3,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov.w @(loc_8c051d92,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c051d40
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c051da0,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c051d92,PC),r0
	mov.b r13,@(r0,r14)
	mova @(0x6C,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	bra loc_8c051d46
	fmov fr3,@(r0,r14)

loc_8c051d40:
	mov.l @(loc_8c051da0,PC),r2
	jsr @r2
	mov r14,r4

loc_8c051d46:
	mov 0x01,r0

loc_8c051d48:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c051d56:
	mov.w @(loc_8c051d94,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c051dec
	mov.b @(0x1,r14),r0
	mov.w @(loc_8c051d96,PC),r4
	extu.b r0,r0
	cmp/eq 0x20,r0 ; Felica
	bf loc_8c051da8
	mov.w @(loc_8c051d94,PC),r0
	mov 0xF6,r1
	mov.b @(r0,r14),r2
	mov.w @(loc_8c051d98,PC),r0
	mov.w @(r0,r14),r3
	extu.w r3,r3
	and r4,r3
	shad r1,r3
	xor r3,r2
	tst r2,r2
	bt loc_8c051dc0
	bra loc_8c051dec
	nop

;##############################################
loc_8c051d88:
	#data 0x01d3
loc_8c051d8a:
	#data 0x0158
loc_8c051d8c:
	#data 0x0141
loc_8c051d8e:
	#data 0x01d9
loc_8c051d90:
	#data 0x01d6
loc_8c051d92:
	#data 0x01fc
loc_8c051d94:
	#data 0x01fd
loc_8c051d96:
	#data 0x0c00
loc_8c051d98:
	#data 0x0348
	#align4
loc_8c051d9c:
	#data bank03.loc_8c034f54
loc_8c051da0:
	#data bank04.loc_8c04fc9e
loc_8c051da4:
	#data 0xbf4db6db

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c051da8:
	mov.w @(loc_8c051eb0,PC),r3
	mov 0xF6,r2
	mov.w @(loc_8c051eae,PC),r0
	add r14,r3
	mov.w @r3,r3
	mov.b @(r0,r14),r0
	extu.w r3,r3
	and r4,r3
	shad r2,r3
	or r3,r0
	cmp/eq 0x03,r0
	bf loc_8c051dec

loc_8c051dc0:
	mov.w @(loc_8c051eb2,PC),r0

loc_8c051dc2:
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c051dec
	mova @(loc_8c051ec0,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c051eb4,PC),r0
	fmov @(r0,r14),fr2
	mov 0x38,r0
	fmov @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr1,fr2
	bt loc_8c051dec
	mova @(0xE8,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c051eb4,PC),r0
	fmov @(r0,r14),fr2
	mov 0x38,r0
	fmov @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr1,fr2
	bt loc_8c051df4

loc_8c051dec:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_8c051df4:
	mov.w @(loc_8c051eb0,PC),r0
	mov.w @(loc_8c051eb6,PC),r3
	mov.w @(r0,r14),r2
	extu.w r2,r2
	tst r3,r2
	bt loc_8c051e16
	mova @(loc_8c051ec8,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(loc_8c051ecc,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(loc_8c051ed0,PC),r0
	bra loc_8c051e2a
	fmov @r0,fr3

loc_8c051e16:
	mova @(0xBC,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0xB8,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0xB4,PC),r0
	fmov @r0,fr3

loc_8c051e2a:
	mov 0x6C,r0
	mov.w @(loc_8c051eb8,PC),r1
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c051eae,PC),r0
	add r14,r1
	mov.b @(r0,r14),r0
	shar r0
	and 0x01,r0
	mov.b r0,@r1
	mov.w @(loc_8c051eb8,PC),r0
	mov.w @(loc_8c051eba,PC),r1
	mov.b @(r0,r14),r0
	add r14,r1
	extu.b r0,r0
	xor 0x01,r0
	mov.w r0,@r1
	mov.w @(loc_8c051eba,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c051e5a
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8c051e5a:
	mov.l @(loc_8c051ee0,PC),r3
	mov 0x68,r0
	fldi0 fr3
	mov 0x19,r5
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov 0x00,r0
	mov.b r0,@(0x7,r14)
	mov.b r0,@(0x6,r14)
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c051e76:
	mov.w @(loc_8c051ebc,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(r0,r14),r3
	add 0xD8,r0
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c051e8c
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_8c051e8c:
	mov.b @(0x7,r14),r0
	mov r14,r4
	mov.l @(loc_8c051ee4,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r0
	jmp @r0
	mov.l @r15+,r14
	rts
	mov.l @r15+,r14

;==============================================
loc_8c051ea0:
	mov.w @(loc_8c051ebe,PC),r0
	mov 0x04,r3
	mov.w r3,@(r0,r4)
	mov.b @(0x7,r4),r0
	add 0x01,r0
	bra loc_8c051ee8
	mov.b r0,@(0x7,r4)

;##############################################
loc_8c051eae:
	#data 0x01fd
loc_8c051eb0:
	#data 0x0340
loc_8c051eb2:
	#data 0x01d5
loc_8c051eb4:
	#data 0x041c
loc_8c051eb6:
	#data 0x2000
loc_8c051eb8:
	#data 0x01d2
loc_8c051eba:
	#data 0x0130
loc_8c051ebc:
	#data 0x01c8
loc_8c051ebe:
	#data 0x0278
	#align4
loc_8c051ec0:
	#data 0x43700000
loc_8c051ec4:
	#data 0x44809249
loc_8c051ec8:
	#data 0x40a00000
loc_8c051ecc:
	#data 0x41ab6db6
loc_8c051ed0:
	#data 0xbf892492
loc_8c051ed4:
	#data 0x41055555
loc_8c051ed8:
	#data 0x414db6db
loc_8c051edc:
	#data 0xbf700000
loc_8c051ee0:
	#data loc_8c0530d8
loc_8c051ee4:
	#data bank14.loc_8c14ea58

;----------------------------------------------
loc_8c051ee8:
	mov.w @(loc_8c051fdc,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(r0,r14),r3
	add 0xFF,r3
	mov.w r3,@(r0,r14)
	exts.w r3,r3
	cmp/pl r3
	bt loc_8c051f04
	mov 0x00,r3
	mov.w r3,@(r0,r14)
	mov 0x02,r0
	mov.b r0,@(0x7,r14)

loc_8c051f04:
	mov.w @(loc_8c051fde,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x40,r0
	bf loc_8c051f5c
	mov.w @(loc_8c051fe0,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c051f3a
	mov.l @(loc_8c051fec,PC),r3
	mov 0x1E,r5
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c051f30
	mov 0x04,r0
	mov.b r0,@(0x7,r14)
	mov 0x0A,r3
	mov.w @(loc_8c051fdc,PC),r0
	bra loc_8c051f5c
	mov.w r3,@(r0,r14)

loc_8c051f30:
	mov.w @(loc_8c051fdc,PC),r0
	mov 0x00,r2
	mov.w r2,@(r0,r14)
	mov 0x02,r0
	mov.b r0,@(0x7,r14)

loc_8c051f3a:
	mov.w @(loc_8c051fe2,PC),r0
	mov.w @(loc_8c051fe4,PC),r2
	mov.w @(r0,r14),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c051f5c
	mov.w @(loc_8c051fe6,PC),r0
	mov.w @(loc_8c051fe8,PC),r1
	mov.w @(r0,r14),r3
	extu.w r3,r3
	tst r1,r3
	bt loc_8c051f5c
	mov 0x04,r0
	mov.b r0,@(0x7,r14)
	mov 0x0A,r3
	mov.w @(loc_8c051fdc,PC),r0
	mov.w r3,@(r0,r14)

loc_8c051f5c:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

;==============================================
loc_8c051f64:
	mov.w @(loc_8c051fdc,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c051f72
	mov.b @(0x7,r4),r0
	add 0x01,r0
	mov.b r0,@(0x7,r4)

loc_8c051f72:
	rts
	mov 0x00,r0

;==============================================
loc_8c051f76:
	mov.w @(loc_8c051fdc,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(r0,r14),r3
	add 0xFF,r3
	mov.w r3,@(r0,r14)
	exts.w r3,r3
	cmp/pl r3
	bf loc_8c051fd4
	mov.w @(loc_8c051fde,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c051fd4
	mov.w @(loc_8c051fe0,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c051fb0
	mov.l @(loc_8c051fec,PC),r3
	mov 0x1F,r5
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c051fc8
	mov.w @(loc_8c051fdc,PC),r0
	mov 0x00,r3
	mov.w r3,@(r0,r14)

loc_8c051fb0:
	mov.w @(loc_8c051fe2,PC),r0
	mov.w @(loc_8c051fe4,PC),r3
	mov.w @(r0,r14),r2
	extu.w r2,r2
	tst r3,r2
	bt loc_8c051fd4
	mov.w @(loc_8c051fe6,PC),r0
	mov.w @(loc_8c051fe8,PC),r1
	mov.w @(r0,r14),r2
	extu.w r2,r2
	tst r1,r2
	bt loc_8c051fd4

loc_8c051fc8:
	mov 0x06,r0
	mov r14,r4
	mov.b r0,@(0x7,r14)
	lds.l @r15+,pr
	bra loc_8c0520c0
	mov.l @r15+,r14

loc_8c051fd4:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c051fdc:
	#data 0x0278
loc_8c051fde:
	#data 0x01f7
loc_8c051fe0:
	#data 0x0525
loc_8c051fe2:
	#data 0x034a
loc_8c051fe4:
	#data 0x0c00
loc_8c051fe6:
	#data 0x034e
loc_8c051fe8:
	#data 0x0120
	#align4

loc_8c051fec:
	#data loc_8c05bf3a

;==============================================
loc_8c051ff0:
	mov.w @(loc_8c0520f2,PC),r0
	mov.w @(r0,r4),r3
	add 0xFF,r3
	mov.w r3,@(r0,r4)
	exts.w r3,r3
	cmp/pz r3
	bt loc_8c052004
	mov.b @(0x7,r4),r0
	add 0x01,r0
	mov.b r0,@(0x7,r4)

loc_8c052004:
	rts
	mov 0x00,r0

;==============================================
loc_8c052008:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c052100,PC),r3
	jsr @r3
	add 0x34,r4
	mov.l @(loc_8c052108,PC),r2
	mov 0x00,r5
	mov.l @(loc_8c052104,PC),r6
	jsr @r2
	mov r13,r4
	mov.w @(loc_8c0520f4,PC),r0
	mov 0x00,r12
	mov.l @(r0,r13),r14
	add 0x0A,r0
	mov.b r12,@(r0,r13)
	mov 0x34,r0
	fmov @(r0,r14),fr2
	fmov @(r0,r13),fr3
	fcmp/gt fr3,fr2
	bf loc_8c05203c
	mov.w @(loc_8c0520f6,PC),r0
	mov 0x01,r2
	mov.b r2,@(r0,r13)

loc_8c05203c:
	mov.w @(loc_8c0520f6,PC),r0
	mov.w @(loc_8c0520f8,PC),r1
	mov.b @(r0,r13),r3
	mov.w @(loc_8c0520f8,PC),r0
	add r14,r1
	extu.b r3,r3
	mov.w @(loc_8c0520f6,PC),r2
	mov.w r3,@(r0,r13)
	mov.w @(loc_8c0520f6,PC),r0
	add r14,r2
	mov.b @(r0,r13),r0
	extu.b r0,r0
	xor 0x01,r0
	mov.w r0,@r1
	mov.b r0,@r2
	mov r12,r0
	nop
	mov.b r0,@(0x5,r14)
	mov.w @(loc_8c0520fa,PC),r0
	mov.b @(r0,r14),r3
	add 0x01,r0
	mov.b r3,@(r0,r14)
	mov r12,r0
	nop
	mov.b r0,@(0x6,r14)
	mov 0x5C,r0
	fldi0 fr4
	mov 0x01,r5
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mova @(0x88,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	mov.l @(loc_8c052110,PC),r3
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c0520fc,PC),r0
	mov.b r12,@(r0,r14)
	jsr @r3
	mov r14,r4
	bsr loc_8c05176e
	mov r14,r4
	mov.l @(loc_8c052114,PC),r3
	jsr @r3
	nop
	mov r12,r0
	nop
	mov.b r0,@(0x5,r13)
	mov 0x04,r3
	mov.w @(loc_8c0520fe,PC),r0
	mov 0x1B,r5
	mov.b r3,@(r0,r13)
	mov 0x20,r0
	mov.l @(loc_8c052118,PC),r3
	mov.b r12,@(r0,r13)
	jsr @r3
	mov r13,r4
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0520c0:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(loc_8c052104,PC),r6
	mov.l @(loc_8c052108,PC),r3
	jsr @r3
	mov 0x00,r5
	mov.l @(loc_8c052114,PC),r2
	jsr @r2
	nop
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	mov 0x04,r3
	mov.w @(loc_8c0520fe,PC),r0
	mov 0x01,r2
	mov 0x1B,r5
	mov.b r3,@(r0,r14)
	mov 0x20,r0
	mov.l @(loc_8c052118,PC),r3
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0520f2:
	#data 0x0278
loc_8c0520f4:
	#data 0x01c8
loc_8c0520f6:
	#data 0x01d2
loc_8c0520f8:
	#data 0x0130
loc_8c0520fa:
	#data 0x01d0
loc_8c0520fc:
	#data 0x01d6
loc_8c0520fe:
	#data 0x01ed
	#align4
loc_8c052100:
	#data bank10.loc_8c103864
loc_8c052104:
	#data 0x00700000
loc_8c052108:
	#data loc_8c05a706
loc_8c05210c:
	#data 0xbf4db6db
loc_8c052110:
	#data bank03.loc_8c035162
loc_8c052114:
	#data bank02.loc_8c02fd26
loc_8c052118:
	#data loc_8c0532a8

;==============================================
loc_8c05211c:
	mova @(loc_8c052208,PC),r0
	sts.l pr,@-r15
	fmov @r0,fr4
	mov.w @(loc_8c0521fc,PC),r0
	mov.b @(r0,r4),r3
	mov.w @(loc_8c0521fe,PC),r0
	extu.b r3,r3
	mov.w r3,@(r0,r4)
	mov.w @(loc_8c0521fc,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8c052138
	mova @(loc_8c05220c,PC),r0
	fmov @r0,fr4

loc_8c052138:
	mov.w @(loc_8c052200,PC),r0
	mov.l @(r0,r4),r3
	mov 0x34,r0
	fmov @(r0,r4),fr2
	fmov @(r0,r3),fr3
	fadd fr4,fr3
	fcmp/gt fr3,fr2
	bt loc_8c052150
	mov.w @(loc_8c0521fc,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c052168

loc_8c052150:
	mov.w @(loc_8c052200,PC),r0
	mov.l @(r0,r4),r2
	mov 0x34,r0
	fmov @(r0,r4),fr2
	fmov @(r0,r2),fr3
	fadd fr4,fr3
	fcmp/gt fr3,fr2
	bf loc_8c05216e
	mov.w @(loc_8c0521fc,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c05216e

loc_8c052168:
	lds.l @r15+,pr
	rts
	mov 0x00,r0

loc_8c05216e:
	mov.w @(loc_8c052202,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c05217a
	bra loc_8c05217c
	mov 0x08,r5

loc_8c05217a:
	mov 0x09,r5

loc_8c05217c:
	mov.l @(loc_8c052210,PC),r3
	jsr @r3
	nop
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c05218a:
	mova @(0x7C,PC),r0
	fmov @r0,fr4
	mov.w @(loc_8c0521fc,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c05219a
	mova @(0x74,PC),r0
	fmov @r0,fr4

loc_8c05219a:
	mov.w @(loc_8c052200,PC),r0
	mov.l @(r0,r4),r3
	mov 0x34,r0
	fmov @(r0,r4),fr6
	fmov @(r0,r3),fr5
	fadd fr4,fr5
	fcmp/gt fr5,fr6
	bf loc_8c0521b2
	mov.w @(loc_8c0521fc,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c0521be

loc_8c0521b2:
	fcmp/gt fr5,fr6
	bt loc_8c0521c8
	mov.w @(loc_8c0521fc,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c0521c8

loc_8c0521be:
	mov.w @(loc_8c0521fc,PC),r0
	mov 0x01,r3
	mov.b @(r0,r4),r2
	xor r3,r2
	mov.b r2,@(r0,r4)

loc_8c0521c8:
	mov.w @(loc_8c0521fc,PC),r0
	mov.b @(r0,r4),r1
	mov.w @(loc_8c0521fe,PC),r0
	extu.b r1,r1
	rts
	mov.w r1,@(r0,r4)

;==============================================
loc_8c0521d4:
	mov.w @(loc_8c052204,PC),r0
	mov.l @(r0,r4),r5
	mov 0x34,r0
	fmov @(r0,r4),fr2
	fmov @(r0,r5),fr3
	fcmp/gt fr3,fr2
	bf loc_8c0521ee
	mov.w @(loc_8c0521fe,PC),r0
	mov 0x00,r2
	mov r2,r3
	mov.w r2,@(r0,r4)
	bra loc_8c0521f6
	nop

loc_8c0521ee:
	mov.w @(loc_8c0521fe,PC),r0
	mov 0x01,r1
	mov r1,r3
	mov.w r1,@(r0,r4)

loc_8c0521f6:
	mov.w @(loc_8c0521fc,PC),r0
	rts
	mov.b r3,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0521fc:
	#data 0x01d2
loc_8c0521fe:
	#data 0x0130
loc_8c052200:
	#data 0x020c
loc_8c052202:
	#data 0x01f9
loc_8c052204:
	#data 0x01c8
	#align4
loc_8c052208:
	#data 0xc1baaaaa
loc_8c05220c:
	#data 0x41baaaaa
loc_8c052210:
	#data loc_8c0532a8

;==============================================
loc_8c052214:
	mova @(loc_8c0522cc,PC),r0
	fmov @r0,fr4
	mov.w @(loc_8c0522b8,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c052224
	mova @(loc_8c0522d0,PC),r0
	fmov @r0,fr4

loc_8c052224:
	mov.w @(loc_8c0522ba,PC),r0
	mov.l @(r0,r4),r3
	mov 0x34,r0
	fmov @(r0,r4),fr6
	fmov @(r0,r3),fr5
	fadd fr4,fr5
	fcmp/gt fr5,fr6
	bf loc_8c05223c
	mov.w @(loc_8c0522b8,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c052248

loc_8c05223c:
	fcmp/gt fr5,fr6
	bt loc_8c052252
	mov.w @(loc_8c0522b8,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c052252

loc_8c052248:
	mov.w @(loc_8c0522b8,PC),r0
	mov 0x01,r3
	mov.b @(r0,r4),r2
	xor r3,r2
	mov.b r2,@(r0,r4)

loc_8c052252:
	mov.w @(loc_8c0522b8,PC),r0
	mov.b @(r0,r4),r1
	mov.w @(loc_8c0522bc,PC),r0
	extu.b r1,r1
	rts
	mov.w r1,@(r0,r4)

loc_8c05225e:
	mov.w @(loc_8c0522be,PC),r0
	mov.l r14,@-r15
	mov.b @(r0,r4),r14
	mov.l @(loc_8c0522d4,PC),r0
	extu.b r14,r14
	shll r14
	mov.w @(r0,r14),r14
	mov.w @(loc_8c0522c0,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c052290
	mov.w @(loc_8c0522c2,PC),r5
	mov.l @(loc_8c0522d8,PC),r1
	add r4,r5
	mov.w @(loc_8c0522c4,PC),r3
	mov.l @(0x4,r5),r0
	mov.l @r5,r2
	and r1,r0
	and r3,r2
	or r0,r2
	tst r2,r2
	bt loc_8c052290
	exts.w r14,r0
	mov r0,r14
	shar r14

loc_8c052290:
	mov.w @(loc_8c0522c6,PC),r0
	mov r14,r5
	mov.l @(loc_8c0522dc,PC),r3
	mov.b r14,@(r0,r4)
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c05229c:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r4,@r15
	mov r4,r0
	nop
	mov.w @(loc_8c0522c8,PC),r1
	mov.l @(r0,r1),r0
	mov.l @(0x24,r0),r0
	jsr @r0
	nop
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0522b8:
	#data 0x01d2
loc_8c0522ba:
	#data 0x01b8
loc_8c0522bc:
	#data 0x0130
loc_8c0522be:
	#data 0x01a7
loc_8c0522c0:
	#data 0x0200
loc_8c0522c2:
	#data 0x0414
loc_8c0522c4:
	#data 0x0480
loc_8c0522c6:
	#data 0x0410
loc_8c0522c8:
	#data 0x0428
	#align4
loc_8c0522cc:
	#data 0xc1baaaaa
loc_8c0522d0:
	#data 0x41baaaaa
loc_8c0522d4:
	#data bank14.loc_8c14ea74
loc_8c0522d8:
	#data 0x02020000
loc_8c0522dc:
	#data loc_8c056de4

;==============================================
loc_8c0522e0:
	mov.l r14,@-r15
	mov r5,r14
	mov.w @(loc_8c0523b2,PC),r0
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l r5,@(r0,r13)
	add 0x04,r0
	mov.l r14,@(r0,r13)
	add 0xFC,r0
	mov.l r13,@(r0,r14)
	add 0x04,r0
	mov.l r13,@(r0,r14)
	mov r14,r5
	mov.w @(loc_8c0523b4,PC),r0
	mov.l @(r0,r13),r3
	mov.l @(0x28,r3),r2
	jsr @r2
	mov r13,r4
	mov 0x01,r11
	mov r11,r0
	nop
	mov 0x00,r12
	mov.b r0,@(0x5,r13)
	mov r12,r0
	nop
	mov.b r0,@(0x7,r13)
	mov 0x1F,r5
	mov.b r0,@(0x6,r13)
	mov.w @(loc_8c0523b6,PC),r0
	mov.b r11,@(r0,r13)
	add 0x0D,r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov 0x02,r0
	mov.b r0,@(0x5,r14)
	bsr loc_8c0530d8
	mov r14,r4
	mov.w @(loc_8c0523b8,PC),r0
	mov.b r12,@(r0,r14)
	mov r12,r0
	nop
	mov.b r0,@(0x7,r14)
	mov 0xFF,r3
	mov.b r0,@(0x6,r14)
	mov r11,r2
	mov.w @(loc_8c0523ba,PC),r0
	mov 0x08,r6
	mov.w @(loc_8c0523be,PC),r4
	mov r12,r5
	mov.b r3,@(r0,r14)
	add 0x46,r0
	mov.b r12,@(r0,r14)
	add 0x43,r0
	mov.b r12,@(r0,r14)
	add 0x1E,r0
	mov.b r12,@(r0,r14)
	add 0x29,r0
	mov.b @(r0,r14),r3
	add 0x01,r0
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r12,@(r0,r14)
	mov.w @(loc_8c0523bc,PC),r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shad r3,r2
	mov.l @(loc_8c0523c8,PC),r3
	mov.b @r3,r1
	or r2,r1
	mov.b r1,@r3
	mov.l @(loc_8c0523cc,PC),r3
	jsr @r3
	add r14,r4
	mov.w @(loc_8c0523c0,PC),r0
	mov 0x78,r2
	mov 0x1E,r5
	mov.b r2,@(r0,r14)
	bsr loc_8c0530d8
	mov r13,r4
	mov.l @(loc_8c0523d0,PC),r2
	mov r11,r5
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c0523d4,PC),r3
	mov r13,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c0523c2,PC),r0
	mov.b @(r0,r14),r2
	add 0x02,r2
	mov.b r2,@(r0,r14)
	extu.b r2,r2
	tst r2,r2
	bf loc_8c0523a6
	mov.w @(loc_8c0523c4,PC),r1
	mov.b r1,@(r0,r14)

loc_8c0523a6:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0523b2:
	#data 0x01c8
loc_8c0523b4:
	#data 0x0428
loc_8c0523b6:
	#data 0x01ea
loc_8c0523b8:
	#data 0x01f6
loc_8c0523ba:
	#data 0x015a
loc_8c0523bc:
	#data 0x01a4
loc_8c0523be:
	#data 0x035c
loc_8c0523c0:
	#data 0x0236
loc_8c0523c2:
	#data 0x023b
loc_8c0523c4:
	#data 0x00ff
	#align4
loc_8c0523c8:
	#data 0x8c2895f4
loc_8c0523cc:
	#data bank12.loc_8c129728
loc_8c0523d0:
	#data bank03.loc_8c035162
loc_8c0523d4:
	#data loc_8c059f64

;==============================================
loc_8c0523d8:
	mov.l r14,@-r15
	mov r5,r14
	mov.w @(loc_8c052540,PC),r0
	mov 0x01,r3
	mov.l r13,@-r15
	mov r4,r13
	mov 0x02,r4
	sts.l pr,@-r15
	mov.l r5,@(r0,r13)
	add 0x04,r0
	mov.l r14,@(r0,r13)
	add 0xFC,r0
	mov.l r13,@(r0,r14)
	add 0x04,r0
	mov.l r13,@(r0,r14)
	add 0x1E,r0
	mov.b r3,@(r0,r13)
	add 0x03,r0
	mov.b r4,@(r0,r13)
	add 0x08,r0
	mov.b r4,@(r0,r13)
	add 0x02,r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov r4,r0
	nop
	mov 0x1F,r5
	mov.b r0,@(0x5,r14)
	bsr loc_8c0530d8
	mov r14,r4
	mov.w @(loc_8c052542,PC),r0
	mov 0x00,r4
	mov.b r4,@(r0,r14)
	mov r4,r0
	nop
	mov.b r0,@(0x7,r14)
	mov 0xFF,r3
	mov.b r0,@(0x6,r14)
	mov r4,r5
	mov.w @(loc_8c052544,PC),r0
	mov 0x08,r6
	mov.b r3,@(r0,r14)
	add 0x46,r0
	mov.b r4,@(r0,r14)
	add 0x43,r0
	mov.b r4,@(r0,r14)
	add 0x1E,r0
	mov.b r4,@(r0,r14)
	add 0x29,r0
	mov.b @(r0,r14),r3
	add 0x01,r0
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r4,@(r0,r14)
	mov.l @(loc_8c052554,PC),r3
	mov.w @(loc_8c052546,PC),r4
	jsr @r3
	add r14,r4
	mov.w @(loc_8c052548,PC),r0
	mov 0x78,r2
	mov 0x01,r5
	mov.b r2,@(r0,r14)
	mov 0x01,r2
	mov.w @(loc_8c05254a,PC),r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shad r3,r2
	mov.l @(loc_8c052558,PC),r3
	mov.b @r3,r1
	or r2,r1
	mov.b r1,@r3
	mov.l @(loc_8c05255c,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c052560,PC),r2
	mov r13,r5
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c05254c,PC),r0
	mov.b @(r0,r14),r3
	add 0x02,r3
	mov.b r3,@(r0,r14)
	extu.b r3,r3
	tst r3,r3
	bf loc_8c052486
	mov.w @(loc_8c05254e,PC),r1
	mov.b r1,@(r0,r14)

loc_8c052486:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05248e:
	mov.w @(loc_8c05254a,PC),r0
	mov.l r14,@-r15
	mov r5,r14
	mov.w @(loc_8c052550,PC),r3
	mov.l @(loc_8c052564,PC),r2
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r4),r5
	add 0x28,r0
	extu.b r5,r5
	mulu.w r3,r5
	mov 0x01,r3
	sts macl,r5
	add r2,r5
	mov.l r14,@(r0,r5)
	add 0xFC,r0
	mov.l r14,@(r0,r5)
	add 0x04,r0
	mov.l r14,@(r0,r4)
	add 0xFC,r0
	mov.l r14,@(r0,r4)
	add 0x04,r0
	mov.l r4,@(r0,r14)
	add 0xFC,r0
	mov.l r5,@(r0,r14)
	add 0x22,r0
	mov.b r3,@(r0,r5)
	add 0x0D,r0
	mov.b @(r0,r5),r1
	mov 0x02,r4
	mov.b r1,@(r0,r14)
	mov r4,r0
	nop
	mov.b r0,@(0x5,r14)
	mov 0x00,r13
	mov.w @(loc_8c052552,PC),r0
	mov 0x1F,r5
	mov.b r13,@(r0,r14)
	add 0x50,r0
	mov.b r4,@(r0,r14)
	bsr loc_8c0530d8
	mov r14,r4
	mov.w @(loc_8c052542,PC),r0
	mov.b r13,@(r0,r14)
	mov r13,r0
	nop
	mov.b r0,@(0x7,r14)
	mov 0xFF,r3
	mov.b r0,@(0x6,r14)
	mov 0x08,r6
	mov.w @(loc_8c052544,PC),r0
	mov r13,r5
	mov.w @(loc_8c052546,PC),r4
	mov.b r3,@(r0,r14)
	add 0x46,r0
	mov.b r13,@(r0,r14)
	add 0x43,r0
	mov.b r13,@(r0,r14)
	add 0x1E,r0
	mov.b r13,@(r0,r14)
	add 0x29,r0
	mov.b @(r0,r14),r3
	add 0x01,r0
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.l @(loc_8c052554,PC),r3
	mov.b r13,@(r0,r14)
	jsr @r3
	add r14,r4
	mov.w @(loc_8c052548,PC),r0
	mov 0x78,r2
	mov.l @(loc_8c05255c,PC),r3
	mov 0x01,r5
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05254c,PC),r0
	mov.b @(r0,r14),r2
	add 0x02,r2
	mov.b r2,@(r0,r14)
	extu.b r2,r2
	tst r2,r2
	bf loc_8c052538
	mov.w @(loc_8c05254e,PC),r1
	mov.b r1,@(r0,r14)

loc_8c052538:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c052540:
	#data 0x01c8
loc_8c052542:
	#data 0x01f6
loc_8c052544:
	#data 0x015a
loc_8c052546:
	#data 0x035c
loc_8c052548:
	#data 0x0236
loc_8c05254a:
	#data 0x01a4
loc_8c05254c:
	#data 0x023b
loc_8c05254e:
	#data 0x00ff
loc_8c052550:
	#data 0x05a4
loc_8c052552:
	#data 0x019d
	#align4
loc_8c052554:
	#data bank12.loc_8c129728
loc_8c052558:
	#data 0x8c2895f4
loc_8c05255c:
	#data bank03.loc_8c035162
loc_8c052560:
	#data loc_8c059f64
loc_8c052564:
	#data 0x8c268340

;==============================================
loc_8c052568:
	mov.w @(loc_8c05262c,PC),r0
	mov.l r14,@-r15
	mov r5,r14
	mov.w @(loc_8c05262e,PC),r3
	mov.l @(loc_8c052640,PC),r2
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r4),r5
	add 0x28,r0
	extu.b r5,r5
	mulu.w r3,r5
	mov 0x01,r3
	sts macl,r5
	add r2,r5
	mov.l r14,@(r0,r5)
	add 0xFC,r0
	mov.l r14,@(r0,r5)
	add 0x04,r0
	mov.l r14,@(r0,r4)
	add 0xFC,r0
	mov.l r14,@(r0,r4)
	add 0x04,r0
	mov.l r4,@(r0,r14)
	add 0xFC,r0
	mov.l r5,@(r0,r14)
	add 0x22,r0
	mov.b r3,@(r0,r5)
	add 0x0D,r0
	mov 0x02,r4
	mov.b r6,@(r0,r14)
	mov r4,r0
	nop
	mov.b r0,@(0x5,r14)
	mov 0x00,r13
	mov.w @(loc_8c052630,PC),r0
	mov 0x1F,r5
	mov.b r13,@(r0,r14)
	add 0x50,r0
	mov.b r4,@(r0,r14)
	bsr loc_8c0530d8
	mov r14,r4
	mov.w @(loc_8c052632,PC),r0
	mov.b r13,@(r0,r14)
	mov r13,r0
	nop
	mov.b r0,@(0x7,r14)
	mov 0xFF,r3
	mov.b r0,@(0x6,r14)
	mov 0x08,r6
	mov.w @(loc_8c052634,PC),r0
	mov r13,r5
	mov.w @(loc_8c052636,PC),r4
	mov.b r3,@(r0,r14)
	add 0x46,r0
	mov.b r13,@(r0,r14)
	add 0x43,r0
	mov.b r13,@(r0,r14)
	add 0x1E,r0
	mov.b r13,@(r0,r14)
	add 0x29,r0
	mov.b @(r0,r14),r3
	add 0x01,r0
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.l @(loc_8c052644,PC),r3
	mov.b r13,@(r0,r14)
	jsr @r3
	add r14,r4
	mov.w @(loc_8c052638,PC),r0
	mov 0x78,r2
	mov.l @(loc_8c052648,PC),r3
	mov 0x01,r5
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05263a,PC),r0
	mov.b @(r0,r14),r2
	add 0x02,r2
	mov.b r2,@(r0,r14)
	extu.b r2,r2
	tst r2,r2
	bf loc_8c052610
	mov.w @(loc_8c05263c,PC),r1
	mov.b r1,@(r0,r14)

loc_8c052610:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c052618:
	mov.w @(loc_8c05263e,PC),r0
	mov.l @(r0,r4),r6
	mov.l r4,@(r0,r6)
	add 0x04,r0
	mov.l r5,@(r0,r6)
	add 0xFC,r0
	mov.l r6,@(r0,r5)
	add 0x04,r0
	rts
	mov.l r6,@(r0,r5)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05262c:
	#data 0x01a4
loc_8c05262e:
	#data 0x05a4
loc_8c052630:
	#data 0x019d
loc_8c052632:
	#data 0x01f6
loc_8c052634:
	#data 0x015a
loc_8c052636:
	#data 0x035c
loc_8c052638:
	#data 0x0236
loc_8c05263a:
	#data 0x023b
loc_8c05263c:
	#data 0x00ff
loc_8c05263e:
	#data 0x01c8
	#align4
loc_8c052640:
	#data 0x8c268340
loc_8c052644:
	#data bank12.loc_8c129728
loc_8c052648:
	#data bank03.loc_8c035162

;==============================================
loc_8c05264c:
	mov.w @(loc_8c052736,PC),r0
	mov.b @(r0,r4),r0
	tst 0x80,r0
	bt loc_8c0526cc
	mov.w @(loc_8c052738,PC),r0
	mov.l @(r0,r4),r3
	mov.b @(0x3,r3),r0
	tst r0,r0
	bf loc_8c0526cc
	mov.w @(loc_8c052736,PC),r0
	mov.b @(r0,r4),r0
	tst 0x11,r0
	bf loc_8c0526cc
	mov.w @(loc_8c052738,PC),r0
	mov.l @(r0,r4),r3
	add 0x04,r0
	mov.l @(r0,r3),r2
	cmp/eq r2,r4
	bf loc_8c0526cc
	mov.w @(loc_8c052738,PC),r0
	mov.l @(r0,r4),r5
	mov.w @(loc_8c05273a,PC),r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bf loc_8c0526cc
	mov.w @(loc_8c05273c,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt loc_8c0526cc
	mov.w @(loc_8c05273e,PC),r0
	mov.w @(r0,r5),r2
	tst r2,r2
	bt loc_8c0526cc
	mov.w @(loc_8c052740,PC),r6
	mov 0x00,r1
	mov.l @(loc_8c052750,PC),r3
	add r5,r6
	mov.l @r6,r2
	and r3,r2
	or r1,r2
	tst r2,r2
	bf loc_8c0526cc
	mov.b @(0x5,r5),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c0526cc
	mov.w @(loc_8c052742,PC),r0
	mov.w @(loc_8c052744,PC),r3
	mov.b @(r0,r4),r5
	mov.l @(loc_8c052754,PC),r2
	extu.b r5,r5
	mulu.w r3,r5
	sts macl,r5
	add r2,r5
	mov.b @(0x5,r5),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt.s loc_8c0526cc
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c0526d0

loc_8c0526cc:
	rts
	mov 0x00,r0

loc_8c0526d0:
	mov 0x01,r0
	rts
	nop

;==============================================
loc_8c0526d6:
	mov.w @(loc_8c05273c,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c0526ee
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0527a6
	mov.l @r15+,r14

loc_8c0526ee:
	mov.l @(loc_8c052758,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c052746,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c052792
	mov.w @(loc_8c052748,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c052792
	mov.w @(loc_8c05273a,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c052792
	mov.w @(loc_8c05274a,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c05271c
	mova @(0x44,PC),r0
	bra loc_8c052720
	fmov @r0,fr4

loc_8c05271c:
	mova @(loc_8c052760,PC),r0
	fmov @r0,fr4

loc_8c052720:
	mov.w @(loc_8c05274c,PC),r0
	mov.l @(r0,r14),r5
	mov 0x34,r0
	fmov @(r0,r14),fr2
	fmov @(r0,r5),fr3
	fadd fr4,fr3
	fcmp/gt fr3,fr2
	bf.s loc_8c052764
	mov 0x01,r4
	bra loc_8c052766
	mov 0x00,r5

;##############################################
loc_8c052736:
	#data 0x019e
loc_8c052738:
	#data 0x01b0
loc_8c05273a:
	#data 0x0411
loc_8c05273c:
	#data 0x01f9
loc_8c05273e:
	#data 0x0420
loc_8c052740:
	#data 0x0414
loc_8c052742:
	#data 0x01a4
loc_8c052744:
	#data 0x05a4
loc_8c052746:
	#data 0x0202
loc_8c052748:
	#data 0x01f0
loc_8c05274a:
	#data 0x01d2
loc_8c05274c:
	#data 0x020c
	#align4
loc_8c052750:
	#data 0x07000000
loc_8c052754:
	#data 0x8c268340
loc_8c052758:
	#data loc_8c05a2cc
loc_8c05275c:
	#data 0xc1baaaaa
loc_8c052760:
	#data 0x41baaaaa

;----------------------------------------------
loc_8c052764:
	mov 0x01,r5

loc_8c052766:
	mov.w @(loc_8c052822,PC),r0
	extu.b r5,r5
	mov r4,r3
	add 0x0A,r5
	mov.w @(r0,r14),r2
	shad r5,r3
	extu.w r2,r2
	tst r3,r2
	bt loc_8c052792
	mov.w @(r0,r14),r2
	mov.w @(loc_8c052824,PC),r3
	extu.w r2,r2
	tst r3,r2
	bt loc_8c052786
	mov.w @(loc_8c052826,PC),r0
	mov.b r4,@(r0,r14)

loc_8c052786:
	mov.b @(0x2,r14),r0
	bsr loc_8c0529ec
	mov r0,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c05279a

loc_8c052792:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_8c05279a:
	mov 0x12,r5
	bsr loc_8c0532a8
	mov r14,r4
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c0527a6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c052834,PC),r3
	jsr @r3
	mov r4,r14
	mov.w @(loc_8c052828,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c05280e
	mov.w @(loc_8c05282a,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c05280e
	mov.w @(loc_8c05282c,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c05280e
	mov.w @(loc_8c05282e,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c05280e
	bsr loc_8c0528da
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c05280e
	mov.w @(loc_8c052830,PC),r0
	mov.l @(r0,r14),r4
	mov 0x34,r0
	fmov @(r0,r14),fr2
	fmov @(r0,r4),fr3
	fcmp/gt fr3,fr2
	bf loc_8c0527ee
	bra loc_8c0527f0
	mov 0x00,r4

loc_8c0527ee:
	mov 0x01,r4

loc_8c0527f0:
	mov.w @(loc_8c052822,PC),r0
	extu.b r4,r4
	mov 0x01,r3
	mov.w @(r0,r14),r2
	add 0x0A,r4
	shad r4,r3
	extu.w r2,r2
	tst r3,r2
	bt loc_8c05280e
	mov.b @(0x2,r14),r0
	bsr loc_8c0529ec
	mov r0,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c052816

loc_8c05280e:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_8c052816:
	mov 0x13,r5
	bsr loc_8c0532a8
	mov r14,r4
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c052822:
	#data 0x0340
loc_8c052824:
	#data 0x1000
loc_8c052826:
	#data 0x01f9
loc_8c052828:
	#data 0x0202
loc_8c05282a:
	#data 0x01f0
loc_8c05282c:
	#data 0x0201
loc_8c05282e:
	#data 0x0411
loc_8c052830:
	#data 0x020c
	#align4
loc_8c052834:
	#data loc_8c05a2cc

;==============================================
loc_8c052838:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c052924,PC),r3
	jsr @r3
	mov r4,r14
	mov.w @(loc_8c05290e,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c0528c6
	mov.w @(loc_8c052910,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0528c6
	mov.w @(loc_8c052912,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0528c6
	mov.w @(loc_8c052914,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c05286e
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0527a6
	mov.l @r15+,r14

loc_8c05286e:
	mov.w @(loc_8c052916,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c05287c
	mova @(0xB0,PC),r0
	bra loc_8c052880
	fmov @r0,fr4

loc_8c05287c:
	mova @(loc_8c05292c,PC),r0
	fmov @r0,fr4

loc_8c052880:
	mov.w @(loc_8c052918,PC),r0
	mov.l @(r0,r14),r5
	mov 0x34,r0
	fmov @(r0,r14),fr2
	fmov @(r0,r5),fr3
	fadd fr4,fr3
	fcmp/gt fr3,fr2
	bf.s loc_8c052896
	mov 0x01,r4
	bra loc_8c052898
	mov 0x00,r5

loc_8c052896:
	mov 0x01,r5

loc_8c052898:
	mov.w @(loc_8c05291a,PC),r0
	extu.b r5,r5
	mov r4,r3
	add 0x0A,r5
	mov.w @(r0,r14),r2
	shad r5,r3
	extu.w r2,r2
	tst r3,r2
	bt loc_8c0528c6
	mov.w @(loc_8c05291c,PC),r0
	mov.w @(loc_8c05291e,PC),r3
	mov.w @(r0,r14),r2
	extu.w r2,r2
	tst r3,r2
	bt loc_8c0528ba
	mov.w @(loc_8c052914,PC),r0
	mov.b r4,@(r0,r14)

loc_8c0528ba:
	mov.b @(0x2,r14),r0
	bsr loc_8c0529ec
	mov r0,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c0528ce

loc_8c0528c6:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_8c0528ce:
	mov 0x12,r5
	bsr loc_8c0532a8
	mov r14,r4
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0528da:
	mov.w @(loc_8c05290e,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c0528f4
	mov.w @(loc_8c052910,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c0528f4
	mov.w @(loc_8c052912,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c0528f8

loc_8c0528f4:
	rts
	mov 0x00,r0

loc_8c0528f8:
	mov.w @(loc_8c052920,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x13,r0
	bf loc_8c052906
	rts
	mov 0x01,r0

loc_8c052906:
	bra loc_8c052930
	nop

loc_8c05290a:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05290e:
	#data 0x0202
loc_8c052910:
	#data 0x01f0
loc_8c052912:
	#data 0x0411
loc_8c052914:
	#data 0x01f9
loc_8c052916:
	#data 0x01d2
loc_8c052918:
	#data 0x020c
loc_8c05291a:
	#data 0x0348
loc_8c05291c:
	#data 0x0340
loc_8c05291e:
	#data 0x1000
loc_8c052920:
	#data 0x01d0
	#align4
loc_8c052924:
	#data loc_8c05a2cc
loc_8c052928:
	#data 0xc1baaaaa
loc_8c05292c:
	#data 0x41baaaaa

;==============================================
loc_8c052930:
	mov.w @(loc_8c052a18,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c05296e
	mov.w @(loc_8c052a1a,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c05296e
	mov.w @(loc_8c052a1c,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c05296e
	mov.w @(loc_8c052a1e,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c05296a
	mov.w @(loc_8c052a20,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c05296a
	mov.w @(loc_8c052a22,PC),r0
	mov 0x0F,r3
	mov.b @(r0,r4),r5
	tst r5,r3
	bt loc_8c05296a
	mov.w @(loc_8c052a24,PC),r1
	tst r5,r1
	bf loc_8c05296e

loc_8c05296a:
	rts
	mov 0x00,r0

loc_8c05296e:
	mov 0x01,r0
	rts
	nop

;==============================================
loc_8c052974:
	mov.w @(loc_8c052a18,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c052996
	mov.w @(loc_8c052a26,PC),r0
	mov.l @(r0,r14),r4
	mov 0x34,r0
	fmov @(r0,r14),fr2
	fmov @(r0,r4),fr3
	fcmp/gt fr2,fr3
	bf loc_8c0529b8
	bra loc_8c0529be
	mov 0x01,r4

loc_8c052996:
	mov.w @(loc_8c052a28,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0529a4
	mova @(0x90,PC),r0
	bra loc_8c0529a8
	fmov @r0,fr4

loc_8c0529a4:
	mova @(loc_8c052a34,PC),r0
	fmov @r0,fr4

loc_8c0529a8:
	mov.w @(loc_8c052a26,PC),r0
	mov.l @(r0,r14),r4
	mov 0x34,r0
	fmov @(r0,r14),fr2
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	fcmp/gt fr3,fr2
	bf loc_8c0529bc

loc_8c0529b8:
	bra loc_8c0529be
	mov 0x00,r4

loc_8c0529bc:
	mov 0x01,r4

loc_8c0529be:
	mov.w @(loc_8c052a2a,PC),r0
	extu.b r4,r4
	mov 0x01,r3
	mov.w @(r0,r14),r2
	add 0x0A,r4
	shad r4,r3
	extu.w r2,r2
	tst r3,r2
	bt loc_8c0529dc
	mov.b @(0x2,r14),r0
	bsr loc_8c0529ec
	mov r0,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c0529e4

loc_8c0529dc:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_8c0529e4:
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0529ec:
	mov.l r14,@-r15
	extu.b r4,r0
	mov.l r13,@-r15
	mov 0x01,r13
	mov.l r12,@-r15
	mov 0x01,r12
	xor r0,r12
	mov.w @(loc_8c052a2e,PC),r2
	extu.b r4,r0
	mov.w @(loc_8c052a2c,PC),r14
	xor r0,r13
	mov.l @(loc_8c052a38,PC),r3
	mul.l r2,r13
	mov r14,r6
	mov.l @(loc_8c052a3c,PC),r1
	mov 0x00,r5
	add 0xA0,r6
	sts macl,r13
	mov 0x04,r7
	add r3,r12
	bra loc_8c052a60
	add r1,r13

;##############################################
loc_8c052a18:
	#data 0x01f9
loc_8c052a1a:
	#data 0x01fc
loc_8c052a1c:
	#data 0x0201
loc_8c052a1e:
	#data 0x01d4
loc_8c052a20:
	#data 0x0210
loc_8c052a22:
	#data 0x01d6
loc_8c052a24:
	#data 0x00f0
loc_8c052a26:
	#data 0x020c
loc_8c052a28:
	#data 0x01d2
loc_8c052a2a:
	#data 0x0340
loc_8c052a2c:
	#data 0x00e0
loc_8c052a2e:
	#data 0x0178
	#align4
loc_8c052a30:
	#data 0xc1baaaaa
loc_8c052a34:
	#data 0x41baaaaa
loc_8c052a38:
	#data 0x8c287dde
loc_8c052a3c:
	#data 0x8c287aec

;----------------------------------------------
loc_8c052a40:
	exts.b r5,r0
	shll2 r0
	mov.l @(r0,r13),r4
	mov.b @(0x3,r4),r0
	extu.b r0,r0
	cmp/gt r7,r0
	bt loc_8c052a5e
	mov.w @(loc_8c052b34,PC),r0
	mov.b @(r0,r4),r2
	extu.b r2,r2
	and r14,r2
	cmp/ge r6,r2
	bf loc_8c052a5e
	bra loc_8c052a6a
	mov 0x01,r0

loc_8c052a5e:
	add 0x01,r5

loc_8c052a60:
	mov.b @r12,r3
	exts.b r5,r2
	cmp/ge r3,r2
	bf loc_8c052a40
	mov 0x00,r0

loc_8c052a6a:
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c052a72:
	mov.w @(loc_8c052b36,PC),r0
	sts.l pr,@-r15
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c052a8a
	mov.w @(loc_8c052b38,PC),r0
	mov.w @(loc_8c052b3a,PC),r2
	mov.w @(r0,r4),r3
	extu.w r3,r3
	tst r2,r3
	bf loc_8c052a90

loc_8c052a8a:
	lds.l @r15+,pr
	rts
	mov 0x00,r0

loc_8c052a90:
	bsr loc_8c0532a8
	mov 0x05,r5
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c052a9c:
	mov.w @(loc_8c052b36,PC),r0
	sts.l pr,@-r15
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c052ab4
	mov.w @(loc_8c052b3c,PC),r0
	mov.w @(loc_8c052b3a,PC),r2
	mov.w @(r0,r4),r3
	extu.w r3,r3
	tst r2,r3
	bf loc_8c052aba

loc_8c052ab4:
	lds.l @r15+,pr
	rts
	mov 0x00,r0

loc_8c052aba:
	bsr loc_8c0532a8
	mov 0x05,r5
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c052ac6:
	mov.l @(loc_8c052b44,PC),r3
	sts.l pr,@-r15
	mov.b @r3,r0
	extu.b r0,r0
	tst 0x02,r0
	bf loc_8c052ae4
	mov.w @(loc_8c052b38,PC),r0
	mov.w @(loc_8c052b3a,PC),r2
	mov.w @(r0,r4),r1
	extu.w r1,r1
	tst r2,r1
	bt loc_8c052ae4
	lds.l @r15+,pr
	rts
	mov 0x00,r0

loc_8c052ae4:
	bsr loc_8c0532a8
	mov 0x07,r5
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c052af0:
	mov.w @(loc_8c052b3e,PC),r0
	sts.l pr,@-r15
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fcmp/eq fr3,fr2
	bf loc_8c052b0a
	lds.l @r15+,pr
	mov.w @(loc_8c052b40,PC),r1
	mov 0x00,r0
	add r4,r1
	rts
	mov.b r0,@r1

loc_8c052b0a:
	mov.l @(loc_8c052b48,PC),r3
	jsr @r3
	nop
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c052b18:
	mov.w @(loc_8c052b42,PC),r0
	sts.l pr,@-r15
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c052b28
	lds.l @r15+,pr
	rts
	mov 0x00,r0

loc_8c052b28:
	bsr loc_8c0532a8
	mov 0x00,r5
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c052b34:
	#data 0x014a
loc_8c052b36:
	#data 0x01f9
loc_8c052b38:
	#data 0x0340
loc_8c052b3a:
	#data 0x1000
loc_8c052b3c:
	#data 0x0348
loc_8c052b3e:
	#data 0x041c
loc_8c052b40:
	#data 0x0210
loc_8c052b42:
	#data 0x029d
	#align4
loc_8c052b44:
	#data 0x8c2895f1
loc_8c052b48:
	#data loc_8c05176e

;==============================================
loc_8c052b4c:
	mov.l r14,@-r15
	add 0xF8,r15
	mova @(loc_8c052c58,PC),r0
	fldi0 fr6
	fmov @r0,fr5
	mova @(0x104,PC),r0
	fmov @r0,fr4
	mov r15,r5
	mov.w @(loc_8c052c52,PC),r0
	mov.b @(r0,r4),r7
	extu.b r7,r3
	tst r3,r3
	bt.s loc_8c052b72
	mov r5,r6
	mov 0x5C,r0
	fldi0 fr3
	fmov @(r0,r4),fr2
	fcmp/gt fr3,fr2
	bt loc_8c052b82

loc_8c052b72:
	extu.b r7,r2
	tst r2,r2
	bf loc_8c052c08
	mov 0x5C,r0
	fldi0 fr3
	fmov @(r0,r4),fr2
	fcmp/gt fr2,fr3
	bf loc_8c052c08

loc_8c052b82:
	mov.w @(loc_8c052c54,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8c052ba0
	mov.b @(0x1,r4),r0
	mov.l @(loc_8c052c60,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.w @(r0,r1),r3
	lds r3,fpul
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	bra loc_8c052bce
	fmov fr3,@r6

loc_8c052ba0:
	mov.w @(loc_8c052c56,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c052bba
	mov.b @(0x1,r4),r0
	mov.l @(loc_8c052c64,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.w @(r0,r1),r3
	lds r3,fpul
	bra loc_8c052bc6
	nop

loc_8c052bba:
	mov.b @(0x1,r4),r0
	mov.l @(loc_8c052c68,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.w @(r0,r1),r3
	lds r3,fpul

loc_8c052bc6:
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fmov fr3,@r6

loc_8c052bce:
	mov.w @(loc_8c052c52,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf.s loc_8c052be0
	mov 0x5C,r0
	mov r5,r6
	fmov @r6,fr3
	fneg fr3
	fmov fr3,@r6

loc_8c052be0:
	fmov @(r0,r4),fr2
	mov 0x04,r0
	fldi0 fr3
	fcmp/gt fr2,fr3
	bf.s loc_8c052bfc
	fmov fr2,@(r0,r5)
	mov r5,r6
	fmov @r6,fr2
	fneg fr2
	fmov fr2,@r6
	add 0x04,r6
	fmov @r6,fr1
	fneg fr1
	fmov fr1,@r6

loc_8c052bfc:
	fmov @r5,fr2
	fmov @(r0,r5),fr3
	fcmp/gt fr2,fr3
	bt loc_8c052c08
	mov 0x5C,r0
	fmov fr6,@(r0,r4)

loc_8c052c08:
	mov 0x60,r0
	mov.l @(loc_8c052c6c,PC),r1
	fmov fr6,@(r0,r4)
	mov 0x6C,r0
	fmov fr6,@(r0,r4)
	mov r5,r14
	mov.b @(0x1,r4),r0
	mov r14,r6
	add 0x04,r6
	fldi0 fr2
	extu.b r0,r0
	shll r0
	mov.w @(r0,r1),r3
	mov 0x68,r0
	lds r3,fpul
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fmov fr3,@r14
	fmov @(r0,r4),fr3
	mov 0x5C,r0
	fmov fr3,@r6
	fmov @(r0,r4),fr3
	fcmp/eq fr2,fr3
	bt loc_8c052c7e
	fmov @(r0,r4),fr2
	fldi0 fr3
	fcmp/gt fr2,fr3
	bf loc_8c052c70
	fmov @r14,fr2
	fneg fr2
	fmov fr2,@r14
	fmov @r6,fr1
	fcmp/gt fr1,fr2
	bt loc_8c052c78
	bra loc_8c052c7e
	nop

;##############################################
loc_8c052c52:
	#data 0x01d2
loc_8c052c54:
	#data 0x0200
loc_8c052c56:
	#data 0x0202
	#align4
loc_8c052c58:
	#data 0x3fd55555
loc_8c052c5c:
	#data 0x43800000
loc_8c052c60:
	#data bank14.loc_8c14f8a4
loc_8c052c64:
	#data bank14.loc_8c14f990
loc_8c052c68:
	#data bank14.loc_8c14f7b8
loc_8c052c6c:
	#data bank15.loc_8c1511fe

;==============================================
loc_8c052c70:
	fmov @r14,fr1
	fmov @r6,fr2
	fcmp/gt fr1,fr2
	bf loc_8c052c7e

loc_8c052c78:
	fmov @r14,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r4)

loc_8c052c7e:
	add 0x08,r15
	rts
	mov.l @r15+,r14

;==============================================
; called from character programming
; if jumpunk != 0
	; if x movement * jumpunk < 0
		; jumpunk = 0
		; x movement = 0

loc_8c052c84:
	mov 0x68,r0
	fldi0 fr2
	fmov @(r0,r4),fr3 ; load jumpunk into fr3
	fcmp/eq fr2,fr3 ; if jumpunk == 0, early out
	bt loc_8c052ca4
	mov 0x5C,r0 
	fmov @(r0,r4),fr3 ; f3 = x movement
	mov 0x68,r0
	fmov @(r0,r4),fr2 ; f2 = jumpunk
	fmul fr3,fr2 ; fr2 = x movement * jumpunk
	fldi0 fr3
	; if fr2 >= 0, early out
	fcmp/gt fr3,fr2
	bf loc_8c052ca4
	fmov fr3,@(r0,r4) ; set jumpunk to 0
	mov 0x5C,r0
	fmov fr3,@(r0,r4) ; set x movement to 0

loc_8c052ca4:
	rts
	nop

;==============================================
loc_8c052ca8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r13
	sts.l pr,@-r15
	mov r13,r0
	nop
	mov 0x14,r5
	mov.b r0,@(0x5,r14)
	bsr loc_8c0530d8
	mov r14,r4
	mov r13,r0
	nop
	mov.b r0,@(0x7,r14)
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c052d96,PC),r0
	mov.w r13,@(r0,r14)
	add 0x02,r0
	mov.w r13,@(r0,r14)
	mov.w @(loc_8c052d98,PC),r0
	mov.l @(r0,r14),r3
	mov.l @(0x8,r3),r2
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c05225e
	mov.l @r15+,r14

loc_8c052ce2:
	mov.w @(loc_8c052d9a,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x14,r0
	bf.s loc_8c052d06
	fldi0 fr4
	mov.w @(loc_8c052d9c,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c052d06
	mov.w @(loc_8c052d9e,PC),r0
	mov.l @(r0,r4),r5
	add 0x05,r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bf loc_8c052d06
	mova @(0xA4,PC),r0
	fmov @r0,fr4

loc_8c052d06:
	mov.w @(loc_8c052da0,PC),r0
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fadd fr3,fr4
	fmov @(r0,r4),fr3
	fcmp/gt fr4,fr3
	bf loc_8c052d1c
	mov.w @(loc_8c052da2,PC),r0
	mov 0x02,r2
	bra loc_8c052d2c
	mov.b r2,@(r0,r4)

loc_8c052d1c:
	mov.w @(loc_8c052da0,PC),r0
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov.w @(loc_8c052da4,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c052d30

loc_8c052d2c:
	rts
	mov 0x00,r0

loc_8c052d30:
	mov.w @(loc_8c052da6,PC),r0
	mov 0x00,r5
	mov.b r5,@(r0,r4)
	add 0x14,r0
	mov.b r5,@(r0,r4)
	add 0xE9,r0
	mov.b r5,@(r0,r4)
	mov 0x01,r0
	rts
	nop

;==============================================
loc_8c052d44:
	mov.w @(loc_8c052da0,PC),r0
	fmov @(r0,r4),fr3
	fcmp/gt fr3,fr4
	bf loc_8c052d56
	mov.w @(loc_8c052da2,PC),r0
	mov 0x02,r2
	mov.b r2,@(r0,r4)
	rts
	mov 0x00,r0

loc_8c052d56:
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov 0x00,r5
	mov.w @(loc_8c052da6,PC),r0
	mov.b r5,@(r0,r4)
	add 0x14,r0
	mov.b r5,@(r0,r4)
	add 0xE9,r0
	mov.b r5,@(r0,r4)
	mov 0x01,r0
	rts
	nop

loc_8c052d6e:
	mov.w @(loc_8c052da0,PC),r0
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fcmp/gt fr3,fr2
	bf loc_8c052d7e
	rts
	mov 0x00,r0

loc_8c052d7e:
	mov.w @(loc_8c052da0,PC),r0
	mov 0x00,r5
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov.w @(loc_8c052da6,PC),r0
	mov.b r5,@(r0,r4)
	add 0x14,r0
	mov.b r5,@(r0,r4)
	mov 0x01,r0
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c052d96:
	#data 0x0350
loc_8c052d98:
	#data 0x0428
loc_8c052d9a:
	#data 0x01d0
loc_8c052d9c:
	#data 0x019e
loc_8c052d9e:
	#data 0x020c
loc_8c052da0:
	#data 0x041c
loc_8c052da2:
	#data 0x01f9
loc_8c052da4:
	#data 0x0201
loc_8c052da6:
	#data 0x01fc
	#align4
loc_8c052da8:
	#data 0xc22b6db6

;=============================================
loc_8c052dac:
	mov.l r14,@-r15
	mov 0x5C,r0
	fldi0 fr4
	mov r4,r14
	sts.l pr,@-r15
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	mov 0x04,r5
	fmov fr4,@(r0,r14)
	bsr loc_8c0530d8
	mov r14,r4
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	mov 0x02,r0
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c052e80,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c052de0
	mov r14,r4
	bra loc_8c052de2
	mov 0x01,r5

loc_8c052de0:
	mov 0x00,r5

loc_8c052de2:
	mov.l @(loc_8c052e90,PC),r2
	jsr @r2
	add 0x34,r4
	mov.l @(loc_8c052e94,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c052e82,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c052e04
	mov.w @(loc_8c052e84,PC),r0
	mov 0x05,r3
	mov.b @(r0,r14),r2
	extu.b r2,r2
	cmp/gt r3,r2
	bf loc_8c052e10

loc_8c052e04:
	mov.l @(loc_8c052e98,PC),r4
	mov 0x01,r5
	mov r5,r0
	nop
	mov.b r0,@(0x5,r4)
	mov.b r0,@(0x6,r4)

loc_8c052e10:
	mov.w @(loc_8c052e86,PC),r0
	mov.b @(r0,r14),r0
	cmp/eq 0xFF,r0
	bf loc_8c052e1e
	mov.w @(loc_8c052e88,PC),r0
	mov 0x03,r2
	mov.b r2,@(r0,r14)

loc_8c052e1e:
	mov.w @(loc_8c052e86,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c052e2c
	mov.w @(loc_8c052e88,PC),r0
	mov 0x04,r1
	mov.b r1,@(r0,r14)

loc_8c052e2c:
	mov.w @(loc_8c052e86,PC),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_8c052e3a
	mov.w @(loc_8c052e88,PC),r0
	mov 0x05,r2
	mov.b r2,@(r0,r14)

loc_8c052e3a:
	mov.w @(loc_8c052e88,PC),r0
	mov 0x01,r5
	lds.l @r15+,pr
	mov.l @(loc_8c052e9c,PC),r3
	mov r14,r4
	mov.b @(r0,r14),r6
	jmp @r3
	mov.l @r15+,r14

loc_8c052e4a:
	rts
	nop

;==============================================
loc_8c052e4e:
	mov.w @(loc_8c052e8a,PC),r0
	mov 0x01,r1
	mov.b @(r0,r4),r3
	mov.w @(loc_8c052e8c,PC),r0
	mov.w @(r0,r4),r2
	shad r2,r1
	tst r1,r3
	bf loc_8c052eba
	mova @(0x40,PC),r0
	fmov @r0,fr4
	mov.w @(loc_8c052e8c,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bf loc_8c052ea4
	mov.w @(loc_8c052e8e,PC),r3
	mov 0x34,r0
	fmov @(r0,r4),fr2
	add r4,r3
	fmov fr4,fr0
	mov.b @r3,r3
	extu.b r3,r3
	lds r3,fpul
	float fpul,fr3
	bra loc_8c052eb8
	fmac fr0,fr3,fr2

;##############################################
loc_8c052e80:
	#data 0x01fc
loc_8c052e82:
	#data 0x0202
loc_8c052e84:
	#data 0x0207
loc_8c052e86:
	#data 0x01d3
loc_8c052e88:
	#data 0x0158
loc_8c052e8a:
	#data 0x01fd
loc_8c052e8c:
	#data 0x0130
loc_8c052e8e:
	#data 0x0411
loc_8c052e90:
	#data bank0f.loc_8c0fd6b0
loc_8c052e94:
	#data bank04.loc_8c04242a
loc_8c052e98:
	#data 0x8c26a518
loc_8c052e9c:
	#data bank03.loc_8c034e8c
loc_8c052ea0:
	#data 0x41d55555

;----------------------------------------------
loc_8c052ea4:
	mov.w @(loc_8c052fae,PC),r3
	mov 0x34,r0
	fmov @(r0,r4),fr2
	add r4,r3
	mov.b @r3,r3
	extu.b r3,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fsub fr3,fr2

loc_8c052eb8:
	fmov fr2,@(r0,r4)

loc_8c052eba:
	mova @(0xFC,PC),r0
	fmov @r0,fr4
	mov.w @(loc_8c052fb0,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c052eca
	mova @(0xF4,PC),r0
	fmov @r0,fr4

loc_8c052eca:
	mov 0x34,r0
	fldi0 fr2
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mova @(loc_8c052fc0,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fdiv fr3,fr4
	fneg fr4
	fmov fr4,@(r0,r4)
	mov 0x68,r0
	fmov fr2,@(r0,r4)
	mova @(loc_8c052fc4,PC),r0
	fmov @r0,fr2
	mov.w @(loc_8c052fb2,PC),r0
	fmov @(r0,r4),fr1
	mov 0x38,r0
	fadd fr2,fr1
	fmov fr1,@(r0,r4)
	mova @(0xD4,PC),r0
	fmov @r0,fr1
	mov 0x6C,r0
	fmov fr1,@(r0,r4)
	mova @(0xD0,PC),r0
	fmov @r0,fr4
	mov 0x38,r0
	fmov @(r0,r4),fr3
	mov.w @(loc_8c052fb2,PC),r0
	fmov @(r0,r4),fr1
	fsub fr3,fr1
	fdiv fr4,fr1
	mov 0x6C,r0
	fldi1 fr0
	fmov @(r0,r4),fr3
	fadd fr0,fr0
	mov 0x60,r0
	fmul fr4,fr3
	fdiv fr0,fr3
	fsub fr3,fr1
	rts
	fmov fr1,@(r0,r4)

;==============================================
loc_8c052f1e:
	mov.w @(loc_8c052fb4,PC),r0
	mov 0x01,r1
	mov.b @(r0,r4),r3
	mov.w @(loc_8c052fb0,PC),r0
	mov.w @(r0,r4),r2
	shad r2,r1
	tst r1,r3
	bf loc_8c052f4a
	mova @(0xA0,PC),r0
	fmov @r0,fr4
	mov.w @(loc_8c052fb0,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bf loc_8c052f42
	mov 0x34,r0
	fmov @(r0,r4),fr3
	bra loc_8c052f48
	fadd fr4,fr3

loc_8c052f42:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fsub fr4,fr3

loc_8c052f48:
	fmov fr3,@(r0,r4)

loc_8c052f4a:
	mova @(0x6C,PC),r0
	fmov @r0,fr4
	mov.w @(loc_8c052fb0,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c052f5a
	mova @(0x64,PC),r0
	fmov @r0,fr4

loc_8c052f5a:
	mov 0x34,r0
	fldi0 fr2
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mova @(loc_8c052fc0,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fdiv fr3,fr4
	fneg fr4
	fmov fr4,@(r0,r4)
	mov 0x68,r0
	fmov fr2,@(r0,r4)
	mova @(loc_8c052fc4,PC),r0
	fmov @r0,fr2
	mov.w @(loc_8c052fb2,PC),r0
	fmov @(r0,r4),fr1
	mov 0x38,r0
	fadd fr2,fr1
	fmov fr1,@(r0,r4)
	mova @(0x44,PC),r0
	fmov @r0,fr1
	mov 0x6C,r0
	fmov fr1,@(r0,r4)
	mova @(0x40,PC),r0
	fmov @r0,fr4
	mov 0x38,r0
	fmov @(r0,r4),fr3
	mov.w @(loc_8c052fb2,PC),r0
	fmov @(r0,r4),fr1
	fsub fr3,fr1
	fdiv fr4,fr1
	mov 0x6C,r0
	fldi1 fr0
	fmov @(r0,r4),fr3
	fadd fr0,fr0
	mov 0x60,r0
	fmul fr4,fr3
	fdiv fr0,fr3
	fsub fr3,fr1
	rts
	fmov fr1,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c052fae:
	#data 0x0411
loc_8c052fb0:
	#data 0x0130
loc_8c052fb2:
	#data 0x041c
loc_8c052fb4:
	#data 0x01fd
	#align4
loc_8c052fb8:
	#data 0x44200000
loc_8c052fbc:
	#data 0xc4200000
loc_8c052fc0:
	#data 0x41a80000
loc_8c052fc4:
	#data 0x43092492
loc_8c052fc8:
	#data 0xbfcdb6db
loc_8c052fcc:
	#data 0x41a00000
loc_8c052fd0:
	#data 0x41d55555

;==============================================
loc_8c052fd4:
	mov.w @(loc_8c0530ae,PC),r0
	mov 0x01,r1
	mov.b @(r0,r4),r3
	mov.w @(loc_8c0530b0,PC),r0
	mov.w @(r0,r4),r2
	shad r2,r1
	tst r1,r3
	bf loc_8c05301e
	mov.b @(0x1,r4),r0
	mov.w @(loc_8c0530b2,PC),r2
	extu.b r0,r0
	mov r0,r3
	shll2 r3
	shll r0
	add r4,r2
	add r3,r0
	mov.l @(loc_8c0530b8,PC),r3
	mov.b @r2,r2
	add r0,r3
	shll r2
	add r3,r2
	mov.w @r2,r3
	mova @(loc_8c0530bc,PC),r0
	fmov @r0,fr2
	lds r3,fpul
	mov.w @(loc_8c0530b0,PC),r0
	float fpul,fr3
	mov.w @(r0,r4),r3
	tst r3,r3
	fmov fr3,fr4
	bt.s loc_8c053016
	fmul fr2,fr4
	fneg fr4

loc_8c053016:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)

loc_8c05301e:
	mova @(0xA0,PC),r0
	fmov @r0,fr4
	mov.w @(loc_8c0530b0,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c05302e
	mova @(0x98,PC),r0
	fmov @r0,fr4

loc_8c05302e:
	mov 0x34,r0
	fldi0 fr2
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mova @(loc_8c0530c8,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fdiv fr3,fr4
	fneg fr4
	fmov fr4,@(r0,r4)
	mov 0x68,r0
	fmov fr2,@(r0,r4)
	mova @(loc_8c0530cc,PC),r0
	fmov @r0,fr2
	mov.w @(loc_8c0530b4,PC),r0
	fmov @(r0,r4),fr1
	mov 0x38,r0
	fadd fr2,fr1
	fmov fr1,@(r0,r4)
	mova @(0x78,PC),r0
	fmov @r0,fr1
	mov 0x6C,r0
	fmov fr1,@(r0,r4)
	mova @(0x74,PC),r0
	fmov @r0,fr4
	mov 0x38,r0
	fmov @(r0,r4),fr3
	mov.w @(loc_8c0530b4,PC),r0
	fmov @(r0,r4),fr1
	fsub fr3,fr1
	fdiv fr4,fr1
	mov 0x6C,r0
	fldi1 fr0
	fmov @(r0,r4),fr3
	fadd fr0,fr0
	mov 0x60,r0
	fmul fr4,fr3
	fdiv fr0,fr3
	fsub fr3,fr1
	rts
	fmov fr1,@(r0,r4)

;==============================================
; called from char programming

; if player is not jumping stance (plmem[0x1f9] != 0x02) {
	; plmem[0x1f9] = 0x02 (jumping stance)
	; plmem[0x1fc] = 0x00 (force normal jump mode)
	; plmem[0x2d4] = 0x00
	; plmem[0x2d5] = 0x00
	; plmem[0x2d6] = 0x11
	; plmem[0x2d9] = 0x00
; }
; return;

loc_8c053082:
	mov.w @(loc_8c0530b6,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c0530aa
	
	
	mov.w @(loc_8c0530b6,PC),r0
	mov 0x02,r2
	mov 0x00,r5
	mov.b r2,@(r0,r4)
	
	add 0x03,r0
	mov.b r5,@(r0,r4)
	
	
	add 0xD8,r0
	mov.b r5,@(r0,r4)
	
	add 0x01,r0
	mov.b r5,@(r0,r4)
	
	add 0x01,r0
	mov 0x11,r3
	mov.b r3,@(r0,r4)
	
	add 0x03,r0
	mov.b r5,@(r0,r4)

loc_8c0530aa:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0530ae:
	#data 0x01fd
loc_8c0530b0:
	#data 0x0130
loc_8c0530b2:
	#data 0x04c9
loc_8c0530b4:
	#data 0x041c
loc_8c0530b6:
	#data 0x01f9
	#align4
loc_8c0530b8:
	#data bank14.loc_8c14f654
loc_8c0530bc:
	#data 0x3fd55555
loc_8c0530c0:
	#data 0x44200000
loc_8c0530c4:
	#data 0xc4200000
loc_8c0530c8:
	#data 0x41a80000
loc_8c0530cc:
	#data 0x43092492
loc_8c0530d0:
	#data 0xbfcdb6db
loc_8c0530d4:
	#data 0x41a00000

;==============================================
; called from both char programming and within 1st_bin
; arguments:
; r4 = plmem pointer
; r5 = ???. byte
	; incomplete list of r5 values used in files
	; 0x15 = amingo, juggernaut, tron, gambit, strider
	; 0x1D = juggernaut, tron, gambit, strider, megaman (near team megaman's super!)
; notable: 1D is 15 with a different bit set, so it may be bitflags?
loc_8c0530d8:
	add 0xFC,r15
	; r0 = 1d0
	mov.w @(loc_8c0531bc,PC),r0
	; r1 = r5_param
	extu.b r5,r1
	; r3 = plmem[1d0]
	mov.b @(r0,r4),r3
	; plmem[1d1] = plmem[1d0]
	add 0x01,r0
	mov.b r3,@(r0,r4)
	; plmem[2d0] = r5_param
	add 0xFF,r0
	mov.b r5,@(r0,r4)
	
	; r6 = 0x00
	; if r5_param == 0x15 goto loc_8c053156
	mov r1,r0
	nop
	cmp/eq 0x15,r0
	bt.s loc_8c053156
	mov 0x00,r6
	
	; if r5_param == 0x1D goto loc_8c053146
	mov r1,r0
	nop
	cmp/eq 0x1D,r0
	bt loc_8c053146
	
	; if (byte)plmem[0x1d1] == 0x15 goto loc_8c053116
	mov.w @(loc_8c0531be,PC),r0
	mov.b @(r0,r4),r5
	extu.b r5,r0
	cmp/eq 0x15,r0
	bt.s loc_8c053116
	mov r0,r5
	
	; if (byte)plmem[0x1d1] == 0x1D goto loc_8c053116
	mov r5,r0
	nop
	cmp/eq 0x1D,r0
	bt loc_8c053116
	
	; if (byte)plmem[0x1d1] != 0x1E goto loc_8c05312c
	mov r5,r0
	nop
	cmp/eq 0x1E,r0
	bf loc_8c05312c

loc_8c053116:
	; if r5_param == 0x1E goto loc_8c05312c
	mov r1,r0
	nop
	cmp/eq 0x1E,r0
	bt loc_8c05312c
	
	; r0 = plmem[0x0255]
	mov.w @(loc_8c0531c0,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bt loc_8c05312c
	; plmem[0x0255] = r6
	mov.w @(loc_8c0531c0,PC),r0
	mov.b r6,@(r0,r4)

loc_8c05312c:
	; if r5_param == 0x20 goto loc_8c053140
	mov r1,r0
	nop
	cmp/eq 0x20,r0
	bt loc_8c053140
	
	; if r5_param == 0x1F goto loc_8c053140
	mov r1,r0
	nop
	cmp/eq 0x1F,r0
	bt loc_8c053140
	
	; else return
	bra loc_8c0532a4 
	nop

loc_8c053140:
	; plmem[0x0255] = r6
	; goto return
	mov.w @(loc_8c0531c0,PC),r0
	bra loc_8c0532a4
	mov.b r6,@(r0,r4)

loc_8c053146:
	; if r5_param != 0x15 && r5_param != 0x1D
		; then return
	cmp/eq 0x15,r0
	bt loc_8c053156
	mov r1,r0
	nop
	cmp/eq 0x1D,r0
	bt loc_8c053156
	bra loc_8c0532a4 
	nop

loc_8c053156:
	; if r5_param == 0x15
		; then plmem[0x027a] = 0xff
	mov r1,r0
	nop
	cmp/eq 0x15,r0
	bf loc_8c053164
	mov.w @(loc_8c0531c2,PC),r0
	mov 0xFF,r3
	mov.b r3,@(r0,r4)

loc_8c053164:
	; if r5_param != 0x1D
		; then return
	mov r1,r0
	nop
	cmp/eq 0x1D,r0
	bt loc_8c053170
	; else return
	bra loc_8c0532a4
	nop

loc_8c053170:
	; r0 = 0x1d1
	mov.w @(loc_8c0531be,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c05317e
	; plmem[0x0255] = r6
	mov.w @(loc_8c0531c0,PC),r0
	mov.b r6,@(r0,r4)

loc_8c05317e:
	; r0 = 0x0255
	mov.w @(loc_8c0531c0,PC),r0
	mov 0x01,r6
	; r5 = 0x8c2895f0
	mov.l @(loc_8c0531c8,PC),r5
	; r0 = (byte)plmem[0x0255]
	mov.b @(r0,r4),r0
	; r3 = work.GameGlobalPointer
	mov.l @(loc_8c0531cc,PC),r3
	extu.b r0,r0
	
	; r7 = [work.GameGlobalPointer]
	; if (byte)plmem[0x0255] == 0x06
		; then goto loc_8c0531f8
	cmp/eq 0x06,r0
	bt.s loc_8c0531f8
	mov.l @r3,r7
	
	; r0 = 0x00ac
	
	mov.w @(loc_8c0531c4,PC),r0
	; if [work.GameGlobalPointer][0x00ac] == 0
		; goto loc_8c0531d0
	mov.b @(r0,r7),r1
	tst r1,r1
	bf loc_8c0531d0
	
	; r1 = 0x01a4
	mov.w @(loc_8c0531c6,PC),r1
	
	; r2 = 0x8c2895f0
	mov r5,r2
	
	; r0 = (byte)plmem[0x2]
	mov.b @(0x2,r4),r0
	; r2 = 0x8c2895f0 + 0x4A
	add 0x4A,r2
	; r1 = (byte)plmem[0x01a4]
	add r4,r1
	mov.b @r1,r1
	extu.b r0,r0
	; r0 = 0x8c2895f0 + 0x4A + (byte)plmem[0x2]
	add r2,r0
	; r2 = 0
	mov 0x00,r2
	extu.b r1,r1
	
	; if (byte)plmem[0x01a4] > 00
		; then r1 = (byte)plmem[0x01a4] + 1
	cmp/gt r1,r2
	addc r2,r1
	
	; r1 = r1 >> 1
	; [0x8c2895f0 + 0x4A + (byte)plmem[0x2]] = (1 << r1) + 0x10
	; goto loc_8c0531de
	mov r6,r2
	shar r1
	shad r1,r2
	add 0x10,r2
	bra loc_8c0531de
	mov.b r2,@r0

;##############################################
loc_8c0531bc:
	#data 0x01d0
loc_8c0531be:
	#data 0x01d1
loc_8c0531c0:
	#data 0x0255
loc_8c0531c2:
	#data 0x027a
loc_8c0531c4:
	#data 0x00ac
loc_8c0531c6:
	#data 0x01a4
	#align4
loc_8c0531c8:
	#data 0x8c2895f0
loc_8c0531cc:
	#data work.GameGlobalPointer

;----------------------------------------------
loc_8c0531d0:
	; r5 is 0x8c2895f0 already
	; [0x8c2895f0 + 0x4a + (byte)plmem[0x02]] = 0x10
	mov.b @(0x2,r4),r0
	mov r5,r2
	add 0x4A,r2
	extu.b r0,r0
	mov 0x10,r1
	add r2,r0
	mov.b r1,@r0

loc_8c0531de:
	; r5 is 0x8c2895f0 already
	; r6 is 0x01 already
	
	; [0x8c2895f0 + 0x74 + (byte)plmem[0x02]] = 0x01
	; [0x8c2895f0 + 0x88 + (byte)plmem[0x02]] = 0x01
	; goto loc_8c05327c
	mov.b @(0x2,r4),r0
	mov r5,r3
	add 0x74,r3
	extu.b r0,r0
	add r3,r0
	mov.w @(loc_8c053316,PC),r3 ; r3 = 0x0088
	mov.b r6,@r0
	mov.b @(0x2,r4),r0
	add r5,r3
	extu.b r0,r0
	add r3,r0
	bra loc_8c05327c
	mov.b r6,@r0
	;

loc_8c0531f8:
	; r7 already is [work.GameGlobalPointer]
	; r5 is 0x8c2895f0 already
	; r6 is 0x01 already
	
	; r1 = [work.GameGlobalPointer][0x00ac]
	mov.w @(loc_8c053318,PC),r0
	mov.b @(r0,r7),r1
	
	; if [work.GameGlobalPointer][0x00ac] == 0 goto loc_8c053222
	tst r1,r1
	bf loc_8c053222
	
	; r2 = 0x8c2895f0 + 0x74 + (byte)plmem[0x02]
	mov.b @(0x2,r4),r0
	mov r5,r2
	add 0x4A,r2
	extu.b r0,r0
	add r0,r2
	
	; r1 = plmem[0x01a4]
	; if plmem[0x01a4] > 0
		; then plmem[0x01a4]++
	mov.w @(loc_8c05331a,PC),r0
	mov 0x00,r3
	mov.b @(r0,r4),r1
	extu.b r1,r1
	cmp/gt r1,r3
	addc r3,r1
	
	; r3 = 1 << (plmem[0x01a4] >> 1)
	mov r6,r3
	shar r1
	shad r1,r3
	; r1 = (byte)[0x8c2895f0 + 0x74 + (byte)plmem[0x02]]
	mov.b @r2,r1
	; r1 = r1 | r3
	or r3,r1
	
	; [0x8c2895f0 + 0x74 + (byte)plmem[0x02]] = (byte)r1
	mov.b r1,@r2

loc_8c053222:
	mov.b @(0x2,r4),r0
	mov r5,r3
	add 0x74,r3
	mov.l @(loc_8c053328,PC),r1
	extu.b r0,r0
	add r3,r0
	mov.b @r0,r2
	add 0x01,r2
	mov.b r2,@r0
	; r0 = 0x00ac
	mov.w @(loc_8c053318,PC),r0
	mov.l @r1,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c053258
	mov.b @(0x2,r4),r0
	mov.l @(loc_8c05332c,PC),r2
	extu.b r0,r0
	mov.b @(r0,r2),r3
	mov 0x03,r0
	cmp/gt r0,r3
	bf loc_8c053258
	mov.b @(0x2,r4),r0
	mov r5,r3
	add 0x74,r3
	extu.b r0,r0
	add r3,r0
	mov.b r6,@r0

loc_8c053258:
	; r3 = 0x0088
	mov.w @(loc_8c053316,PC),r3
	mov 0x03,r6
	mov.b @(0x2,r4),r0
	add r5,r3
	extu.b r0,r0
	add r3,r0
	mov.b @r0,r2
	add 0x01,r2
	mov.b r2,@r0
	exts.b r2,r2
	cmp/gt r6,r2
	bf loc_8c05327c
	; r3 = 0x0088
	mov.w @(loc_8c053316,PC),r3
	mov.b @(0x2,r4),r0
	add r5,r3
	extu.b r0,r0
	add r3,r0
	mov.b r6,@r0

loc_8c05327c:
	mov.b @(0x2,r4),r0
	mov 0x68,r6
	mov.l @(loc_8c053330,PC),r3
	mov 0x00,r5
	extu.b r0,r0
	mov r0,r1
	shll r0
	mov.l @r3,r2
	add r1,r0
	shll2 r0
	add 0x18,r2
	add r2,r0
	mov.w @(loc_8c05331c,PC),r2
	mov.l @(0x4,r0),r1
	mov r1,r4
	mov.l r1,@r15
	mov.l @(loc_8c053334,PC),r1
	add r2,r4
	jmp @r1
	add 0x04,r15

loc_8c0532a4:
	rts
	add 0x04,r15

;==============================================
loc_8c0532a8:
	mov.l r14,@-r15
	mov 0x01,r3
	mov.l r13,@-r15
	mov r4,r14
	mov.w @(loc_8c05331e,PC),r0
	mov r5,r13
	sts.l pr,@-r15
	mov r13,r5
	mov.b r3,@(r0,r14)
	bsr loc_8c0530d8
	mov r14,r4
	mov 0x00,r4
	mov r4,r0
	nop
	mov.w @(loc_8c053320,PC),r2
	mov r14,r1
	mov.b r0,@(0x7,r14)
	add 0x50,r1
	mov.b r0,@(0x6,r14)
	add r14,r2
	mov.b r0,@(0x5,r14)
	mov 0x48,r0
	mov.l @(loc_8c053338,PC),r3
	mov.l r4,@(r0,r14)
	jsr @r3
	mov 0x0C,r0
	extu.b r13,r0
	cmp/eq 0x17,r0
	bt loc_8c0532ea
	mov.w @(loc_8c053322,PC),r0
	mov.b r4,@(r0,r14)
	add 0xFF,r0
	mov.b r4,@(r0,r14)

loc_8c0532ea:
	mov.l @(loc_8c05333c,PC),r2
	extu.b r13,r13
	mov.l @(loc_8c053340,PC),r0
	mov 0x01,r3
	shll2 r13
	mov.b r3,@r2
	mov.l @(r0,r13),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c053324,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x17,r0
	bt loc_8c05330c
	mov.l @(loc_8c053344,PC),r2
	jsr @r2
	mov r14,r4

loc_8c05330c:
	lds.l @r15+,pr
	mov 0x01,r0
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c053316:
	#data 0x0088
loc_8c053318:
	#data 0x00ac
loc_8c05331a:
	#data 0x01a4
loc_8c05331c:
	#data 0x0364
loc_8c05331e:
	#data 0x012c
loc_8c053320:
	#data 0x0284
loc_8c053322:
	#data 0x01db
loc_8c053324:
	#data 0x01d0
	#align4
loc_8c053328:
	#data work.GameGlobalPointer
loc_8c05332c:
	#data 0x8c289664
loc_8c053330:
	#data 0x8c2896b0
loc_8c053334:
	#data bank12.loc_8c129728
loc_8c053338:
	#data bank12.loc_8c1294c8
loc_8c05333c:
	#data 0x8c2895f5
loc_8c053340:
	#data bank14.loc_8c14ea7c
loc_8c053344:
	#data loc_8c05a2cc

;==============================================
;
;==============================================
loc_8c053348:
	mov.l r14,@-r15
	mov 0x5C,r0
	fldi0 fr4
	mov r4,r14
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov.w @(loc_8c053444,PC),r0 ; 0x203
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c053378
	mov 0x00,r4
	mov 0x38,r0
	fmov @(r0,r14),fr3
	mov.w @(loc_8c053446,PC),r0
	fmov fr3,@(r0,r14)
	add 0x36,r0
	mov.b r4,@(r0,r14)
	add 0xFF,r0
	mov.b r4,@(r0,r14)

loc_8c053378:
	mov.w @(loc_8c053448,PC),r0
	mov 0xFF,r3
	mov.b r4,@(r0,r14)
	add 0xFD,r0
	mov.b r4,@(r0,r14)
	add 0xDA,r0
	mov.b r3,@(r0,r14)
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x17,r0 ;Cable
	bt loc_8c05339a
	cmp/eq 0x38,r0 ;Captain Commando
	bt loc_8c0533b8
	cmp/eq 0x3A,r0 ;Servbot
	bt loc_8c0533c6
	bra loc_8c0533d4
	nop

;Cable Code
loc_8c05339a:
	mov.w @(loc_8c05344a,PC),r0
	mov.w @(loc_8c05344c,PC),r3
	mov.w @(r0,r14),r4
	extu.w r4,r4
	cmp/eq r3,r4
	bt loc_8c0533f8
	mov.w @(loc_8c05344e,PC),r1
	cmp/eq r1,r4
	bt loc_8c0533f8
	mov.w @(loc_8c053450,PC),r2
	cmp/eq r2,r4
	bt loc_8c0533f8
	mov 0x00,r6
	bra loc_8c0533f0
	mov r6,r5

;Cap_Com Code
loc_8c0533b8:
	mov.w @(loc_8c053452,PC),r0
	mov r14,r4
	mov.l @(r0,r14),r3
	mov 0x68,r0
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;Servbot Code
loc_8c0533c6:
	mov.w @(loc_8c053452,PC),r0
	mov r14,r4
	mov.l @(r0,r14),r2
	mov 0x60,r0
	mov.l @(r0,r2),r3
	jmp @r3
	mov.l @r15+,r14

;Everyone Else
loc_8c0533d4:
	mov.w @(loc_8c053454,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c0533e6
	mov.w @(loc_8c05344a,PC),r0
	mov 0x01,r2
	bra loc_8c0533ea
	mov.b r2,@(r0,r14)

loc_8c0533e6:
	mov.w @(loc_8c05344a,PC),r0
	mov.b r4,@(r0,r14)

loc_8c0533ea:
	mov.w @(loc_8c05344a,PC),r0
	mov 0x00,r5
	mov.b @(r0,r14),r6

loc_8c0533f0:
	mov.l @(loc_8c05345c,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c0533f8:
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0533fc:
	mov 0x5C,r0
	fldi0 fr4
	mov 0x00,r5
	mov.l r14,@-r15
	fmov fr4,@(r0,r4)
	mov 0x60,r0
	fmov fr4,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	fmov fr4,@(r0,r4)
	mov 0xF6,r2
	mov.w @(loc_8c053448,PC),r0
	mov.w @(loc_8c053458,PC),r3
	mov.b r5,@(r0,r4)
	add 0xFD,r0
	mov.b r5,@(r0,r4)
	mov.w @(loc_8c053456,PC),r0
	mov.w @(r0,r4),r14
	mov.w @(loc_8c05345a,PC),r0
	extu.w r14,r14
	and r3,r14
	shad r2,r14
	mov.b r14,@(r0,r4)
	add 0x2F,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c053438
	add 0x06,r14

loc_8c053438:
	mov.l @(loc_8c05345c,PC),r3
	mov r14,r6
	mov 0x00,r5
	add 0x02,r6
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c053444:
	#data 0x0203
loc_8c053446:
	#data 0x0208
loc_8c053448:
	#data 0x01fc
loc_8c05344a:
	#data 0x0158
loc_8c05344c:
	#data 0x0702
loc_8c05344e:
	#data 0x0703
loc_8c053450:
	#data 0x0f01
loc_8c053452:
	#data 0x0428
loc_8c053454:
	#data 0x0202
loc_8c053456:
	#data 0x034a
loc_8c053458:
	#data 0x0400
loc_8c05345a:
	#data 0x01d3
	#align4
loc_8c05345c:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c053460:
	mov.w @(loc_8c05354e,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c053476
	mov.l @(loc_8c05355c,PC),r3
	jsr @r3
	mov r14,r4

loc_8c053476:
	mov.w @(loc_8c053550,PC),r0
	mov 0x00,r13
	mov 0x11,r3
	mov.b r13,@(r0,r14)
	add 0xDF,r0
	mov.b r13,@(r0,r14)
	add 0x24,r0
	mov.b r13,@(r0,r14)
	add 0xD8,r0
	mov.b r13,@(r0,r14)
	add 0x01,r0
	mov.b r13,@(r0,r14)
	add 0x01,r0
	mov.b r3,@(r0,r14)
	add 0x03,r0
	mov.b r13,@(r0,r14)
	bsr loc_8c053c8e
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c0534fc
	mov.w @(loc_8c05354e,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c0534ce
	mov 0x01,r4
	mov.w @(loc_8c053552,PC),r0
	mov.w @(loc_8c053554,PC),r2
	mov.w @(r0,r14),r3
	extu.w r3,r3
	tst r2,r3
	bf loc_8c0534be
	mov.w @(loc_8c053556,PC),r0
	mov 0xFF,r3
	bra loc_8c0534ce
	mov.b r3,@(r0,r14)

loc_8c0534be:
	mov.w @(loc_8c053558,PC),r1
	tst r1,r3
	bt loc_8c0534ca
	mov.w @(loc_8c053556,PC),r0
	bra loc_8c0534ce
	mov.b r13,@(r0,r14)

loc_8c0534ca:
	mov.w @(loc_8c053556,PC),r0
	mov.b r4,@(r0,r14)

loc_8c0534ce:
	mov.w @(loc_8c053556,PC),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x00,r0
	bt loc_8c0534de
	cmp/eq 0x01,r0
	bt loc_8c0534e2
	bra loc_8c0534e6
	nop

loc_8c0534de:
	bra loc_8c0534e8
	mov r4,r6

loc_8c0534e2:
	bra loc_8c0534e8
	mov 0x02,r6

loc_8c0534e6:
	mov r13,r6

loc_8c0534e8:
	mov.l @(loc_8c053560,PC),r2
	mov 0x01,r5
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c053564,PC),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0534fc:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c053504:
	mov.w @(loc_8c053550,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov r4,r14
	fldi0 fr4
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	bsr loc_8c052b4c
	mov r14,r4
	bsr loc_8c053c8e
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c053548
	mov.w @(loc_8c05355a,PC),r4
	mov 0x00,r1
	mov.l @(loc_8c053568,PC),r3
	add r14,r4
	mov.l @r4,r2
	and r3,r2
	or r1,r2
	tst r2,r2
	bf loc_8c053548
	lds.l @r15+,pr
	mov.l @(loc_8c053560,PC),r2
	mov r14,r4
	mov r1,r6
	mov 0x03,r5
	jmp @r2
	mov.l @r15+,r14

loc_8c053548:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05354e:
	#data 0x0525
loc_8c053550:
	#data 0x01f9
loc_8c053552:
	#data 0x034a
loc_8c053554:
	#data 0x0c00
loc_8c053556:
	#data 0x01d3
loc_8c053558:
	#data 0x0800
loc_8c05355a:
	#data 0x0414
	#align4
loc_8c05355c:
	#data loc_8c05218a
loc_8c053560:
	#data bank03.loc_8c034e8c
loc_8c053564:
	#data bank04.loc_8c04fc9e
loc_8c053568:
	#data 0x07000000

;==============================================
loc_8c05356c:
	mov.w @(loc_8c0536ac,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov r4,r14
	fldi0 fr4
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	bsr loc_8c052b4c
	mov r14,r4
	bsr loc_8c053c8e
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c0535a2
	lds.l @r15+,pr
	mov.b @(0x1,r14),r0
	mov r14,r4
	mov.l @(loc_8c0536b4,PC),r3
	mov 0x01,r6
	extu.b r0,r0
	mov 0x03,r5
	jmp @r3
	mov.l @r15+,r14

loc_8c0535a2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0535a8:
	mov.w @(loc_8c0536ac,PC),r0
	mov 0x00,r3
	fldi0 fr4
	mov 0x02,r6
	mov.b r3,@(r0,r4)
	mov 0x5C,r0
	fmov fr4,@(r0,r4)
	mov 0x60,r0
	fmov fr4,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	mov.l @(loc_8c0536b4,PC),r3
	fmov fr4,@(r0,r4)
	jmp @r3
	mov 0x03,r5

;==============================================
loc_8c0535c8:
	mov.w @(loc_8c0536ac,PC),r0
	mov 0x00,r3
	mov.l r14,@-r15
	mov r4,r14
	fldi0 fr4
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	mov.l @(loc_8c0536b8,PC),r3
	fmov fr4,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c0536b4,PC),r2
	mov r14,r4
	mov 0x00,r6
	mov 0x04,r5
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c0535fa:
	mov.w @(loc_8c0536ac,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov r4,r14
	fldi0 fr4
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	mov.l @(loc_8c0536b8,PC),r3
	fmov fr4,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c0536b4,PC),r2
	mov r14,r4
	mov 0x01,r6
	mov 0x04,r5
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c05362c:
	mov.w @(loc_8c0536ae,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c053642
	mov.l @(loc_8c0536b8,PC),r3
	jsr @r3
	mov r14,r4

loc_8c053642:
	mov.w @(loc_8c0536ac,PC),r0
	mov 0x00,r13
	mov.b r13,@(r0,r14)
	add 0xDA,r0
	mov.b r13,@(r0,r14)
	bsr loc_8c053c8e
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c0536a4
	mov.l @(loc_8c0536bc,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x5C,r0
	fldi0 fr4
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	mov.w @(loc_8c0536b0,PC),r4
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	add r14,r4
	fmov fr4,@(r0,r14)
	mov.l @(0x4,r4),r0
	and 0x04,r0
	or r0,r13
	tst r13,r13
	bt loc_8c05368c
	mov.w @(loc_8c0536b2,PC),r0
	mov.l @(r0,r14),r2
	mov 0x64,r0
	mov.l @(r0,r2),r3
	jsr @r3
	mov r14,r4
	bra loc_8c053696
	nop

loc_8c05368c:
	mov.l @(loc_8c0536b4,PC),r2
	mov 0x02,r5
	mov 0x00,r6
	jsr @r2
	mov r14,r4

loc_8c053696:
	lds.l @r15+,pr
	mov.l @(loc_8c0536c0,PC),r3
	mov r14,r4
	mov 0x33,r5
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0536a4:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0536ac:
	#data 0x01f9
loc_8c0536ae:
	#data 0x0525
loc_8c0536b0:
	#data 0x0414
loc_8c0536b2:
	#data 0x0428
	#align4
loc_8c0536b4:
	#data bank03.loc_8c034e8c
loc_8c0536b8:
	#data loc_8c05218a
loc_8c0536bc:
	#data bank10.loc_8c105082
loc_8c0536c0:
	#data bank04.loc_8c04223a

;==============================================
loc_8c0536c4:
	mov.w @(loc_8c05380e,PC),r0
	mov 0x02,r3
	mov 0x00,r5
	fldi0 fr4
	mov.b r3,@(r0,r4)
	add 0xDB,r0
	mov.b r5,@(r0,r4)
	add 0x01,r0
	mov.b r5,@(r0,r4)
	add 0xFE,r0
	mov.b r5,@(r0,r4)
	mov 0x5C,r0
	fmov fr4,@(r0,r4)
	mov 0x60,r0
	fmov fr4,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	mov.l @(loc_8c053828,PC),r3
	mov 0x01,r6
	fmov fr4,@(r0,r4)
	jmp @r3
	mov 0x1A,r5

loc_8c0536f2:
	rts
	nop

;==============================================
loc_8c0536f6:
	mov.w @(loc_8c05380e,PC),r0
	mov 0x02,r5
	mov 0x00,r3
	mov.b r5,@(r0,r4)
	add 0xFA,r0
	mov.b r5,@(r0,r4)
	add 0xE0,r0
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8c053708:
	mov.w @(loc_8c053810,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c05371c
	mov.l @(loc_8c05382c,PC),r3
	jsr @r3
	mov r14,r4

loc_8c05371c:
	mov.w @(loc_8c05380e,PC),r0
	mov 0x00,r2
	mov 0x01,r3
	mov.b r2,@(r0,r14)
	add 0xDA,r0
	mov.b r3,@(r0,r14)
	bsr loc_8c053c8e
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c05376c
	mov 0x5C,r0
	fldi0 fr4
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	mov.w @(loc_8c053812,PC),r4
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	add r14,r4
	fmov fr4,@(r0,r14)
	mov.l @(0x4,r4),r0
	tst 0x04,r0
	bt.s loc_8c053760
	mov 0x01,r6
	mov.w @(loc_8c053814,PC),r0
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(r0,r14),r2
	mov 0x68,r0
	mov.l @(r0,r2),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c053760:
	lds.l @r15+,pr
	mov.l @(loc_8c053828,PC),r2
	mov 0x02,r5
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c05376c:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c053772:
	mov.w @(loc_8c053818,PC),r0
	mov 0x80,r2
	mov.w @(loc_8c053816,PC),r3
	fldi0 fr4
	mov.b r3,@(r0,r4)
	add 0xBE,r0
	mov.b r2,@(r0,r4)
	add 0x50,r0
	mov 0x00,r3
	mov.b r3,@(r0,r4)
	mov 0x5A,r3
	mov.w @(loc_8c05381a,PC),r0
	mov.w @(r0,r4),r2
	mov.w @(loc_8c05381e,PC),r0
	tst r2,r2
	mov.w @(loc_8c05381c,PC),r2
	mov.w r2,@(r0,r4)
	add 0xFF,r0
	mov.b r3,@(r0,r4)
	mov 0x5C,r0
	fmov fr4,@(r0,r4)
	mov 0x60,r0
	fmov fr4,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	fmov fr4,@(r0,r4)
	mov 0x00,r3
	mov.w @(loc_8c05380e,PC),r0
	mov r3,r6
	mov.b r3,@(r0,r4)
	mov.l @(loc_8c053828,PC),r3
	jmp @r3
	mov 0x0E,r5

;==============================================
loc_8c0537b6:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8c05380e,PC),r0
	mov 0x01,r3
	mov.l r13,@-r15
	mov 0x00,r13
	sts.l pr,@-r15
	mov.b r13,@(r0,r14)
	add 0x03,r0
	mov.b r3,@(r0,r14)
	add 0xDC,r0
	mov.b r13,@(r0,r14)
	add 0xFF,r0
	mov.b r13,@(r0,r14)
	add 0xFD,r0
	mov.b r13,@(r0,r14)
	add 0x01,r0
	mov.b r13,@(r0,r14)
	add 0x04,r0
	mov.b r13,@(r0,r14)
	bsr loc_8c053c8e
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c05387c
	mov.w @(loc_8c053810,PC),r0
	mov 0x07,r5
	mov 0x08,r7
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c05384e
	mov 0x06,r4
	mov.w @(loc_8c053820,PC),r0
	mov.w @(loc_8c053822,PC),r2
	mov.w @(r0,r14),r3
	extu.w r3,r3
	tst r2,r3
	bf loc_8c053830
	mov.w @(loc_8c053824,PC),r0
	mov 0xFF,r3
	mov.b r3,@(r0,r14)
	add 0x85,r0
	bra loc_8c05384e
	mov.b r4,@(r0,r14)

;##############################################
loc_8c05380e:
	#data 0x01f9
loc_8c053810:
	#data 0x0525
loc_8c053812:
	#data 0x0414
loc_8c053814:
	#data 0x0428
loc_8c053816:
	#data 0x00ff
loc_8c053818:
	#data 0x01df
loc_8c05381a:
	#data 0x0420
loc_8c05381c:
	#data 0x0096
loc_8c05381e:
	#data 0x01e4
loc_8c053820:
	#data 0x034a
loc_8c053822:
	#data 0x0c00
loc_8c053824:
	#data 0x01d3
	#align4
loc_8c053828:
	#data bank03.loc_8c034e8c
loc_8c05382c:
	#data loc_8c05218a

;----------------------------------------------
loc_8c053830:
	mov.w @(r0,r14),r1
	mov.w @(loc_8c053942,PC),r3
	extu.w r1,r1
	tst r3,r1
	bt loc_8c053844
	mov.w @(loc_8c053944,PC),r0
	mov.b r13,@(r0,r14)
	add 0x85,r0
	bra loc_8c05384e
	mov.b r5,@(r0,r14)

loc_8c053844:
	mov.w @(loc_8c053944,PC),r0
	mov 0x01,r1
	mov.b r1,@(r0,r14)
	add 0x85,r0
	mov.b r7,@(r0,r14)

loc_8c05384e:
	mov.w @(loc_8c053944,PC),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x00,r0
	bt loc_8c05385e
	cmp/eq 0x01,r0
	bt loc_8c053862
	bra loc_8c053866
	nop

loc_8c05385e:
	bra loc_8c053868
	mov r5,r6

loc_8c053862:
	bra loc_8c053868
	mov r7,r6

loc_8c053866:
	mov r4,r6

loc_8c053868:
	mov.l @(loc_8c053950,PC),r2
	mov 0x01,r5
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c053954,PC),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c05387c:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c053884:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8c053946,PC),r0
	mov 0x02,r4
	sts.l pr,@-r15
	mov.b r4,@(r0,r14)
	add 0xDD,r0
	mov 0xFF,r3
	mov.b r3,@(r0,r14)
	mov r4,r0
	nop
	mov.b r0,@(0x6,r14)
	mov 0x01,r3
	mov.w @(loc_8c053948,PC),r0
	mov 0x0D,r5
	mov 0x1E,r6
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c053950,PC),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c053958,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c0538b6:
	mov.w @(loc_8c053946,PC),r0
	mov 0x02,r3
	fldi0 fr3
	mov 0x09,r6
	mov.b r3,@(r0,r4)
	mov 0x60,r0
	fmov fr3,@(r0,r4)
	mova @(loc_8c05395c,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	mov.l @(loc_8c053950,PC),r3
	fmov fr3,@(r0,r4)
	jmp @r3
	mov 0x01,r5

;==============================================
loc_8c0538d2:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8c053946,PC),r0
	mov 0x01,r4
	fldi0 fr4
	sts.l pr,@-r15
	mov.b r4,@(r0,r14)
	add 0xF4,r0
	mov.b r4,@(r0,r14)
	add 0xB0,r0
	mov 0x00,r4
	mov.b r4,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov.w @(loc_8c05394a,PC),r0
	mov.b r4,@(r0,r14)
	add 0x7B,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c053968
	mov.w @(loc_8c05394c,PC),r0
	mov.b @(r0,r14),r1
	tst r1,r1
	bt loc_8c05391e
	mov.l @(loc_8c053960,PC),r2
	mov.w @(loc_8c05394a,PC),r1
	mov.l @r2,r0
	add r14,r1
	mov.l @(0x1C,r0),r0
	and 0x01,r0
	add 0x01,r0
	mov.b r0,@r1

loc_8c05391e:
	mov.w @(loc_8c05394c,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c053932
	mov.l @(loc_8c053964,PC),r3
	jsr @r3
	nop
	mov 0x01,r4
	bra loc_8c053936
	and r0,r4

loc_8c053932:
	mov.w @(loc_8c05394e,PC),r0
	mov.b @(r0,r14),r4

loc_8c053936:
	mov.w @(loc_8c05394a,PC),r0
	add 0x01,r4
	mov 0x02,r3
	mov.b r4,@(r0,r14)
	bra loc_8c053976
	mov.b r3,@(r0,r14)

;##############################################
loc_8c053942:
	#data 0x0800
loc_8c053944:
	#data 0x01d3
loc_8c053946:
	#data 0x01f9
loc_8c053948:
	#data 0x01fc
loc_8c05394a:
	#data 0x0158
loc_8c05394c:
	#data 0x0525
loc_8c05394e:
	#data 0x01a3
	#align4
loc_8c053950:
	#data bank03.loc_8c034e8c
loc_8c053954:
	#data bank04.loc_8c04fc9e
loc_8c053958:
	#data loc_8c05a2cc
loc_8c05395c:
	#data 0xbf4db6db
loc_8c053960:
	#data work.GameGlobalPointer
loc_8c053964:
	#data bank03.loc_8c03319e

;----------------------------------------------
loc_8c053968:
	mov.w @(loc_8c053a74,PC),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_8c053976
	mov.w @(loc_8c053a76,PC),r0
	mov 0x03,r2
	mov.b r2,@(r0,r14)

loc_8c053976:
	mov.w @(loc_8c053a76,PC),r0
	mov 0x11,r5
	lds.l @r15+,pr
	mov.l @(loc_8c053a84,PC),r3
	mov r14,r4
	mov.b @(r0,r14),r6
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c053986:
	mov.l r14,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c053a88,PC),r3
	jsr @r3
	mov r4,r14
	bsr loc_8c052b4c
	mov r14,r4
	mov 0x60,r0
	fldi0 fr15
	fmov fr15,@(r0,r14)
	mov 0x6C,r0
	fmov fr15,@(r0,r14)
	bsr loc_8c053c8e
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c053a0c
	mov.w @(loc_8c053a78,PC),r0
	mov 0x00,r4
	mov.b r4,@(r0,r14)
	add 0xF4,r0
	mov.b @(r0,r14),r5
	extu.b r5,r0
	cmp/eq 0x12,r0
	bt.s loc_8c0539d0
	mov r0,r5
	mov r5,r0
	nop
	cmp/eq 0x13,r0
	bt loc_8c0539d0
	mov.w @(loc_8c053a7a,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x5C,r0
	fmov fr15,@(r0,r14)
	mov 0x68,r0
	fmov fr15,@(r0,r14)

loc_8c0539d0:
	mov.w @(loc_8c053a7c,PC),r0
	mov.l @(loc_8c053a8c,PC),r3
	mov.l r4,@(r0,r14)
	add 0x58,r0
	mov.l r3,@(r0,r14)
	add 0xE5,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c0539ee
	mov.w @(loc_8c053a76,PC),r0
	mov.b r4,@(r0,r14)
	mov.w @(loc_8c053a7e,PC),r0
	bra loc_8c0539fa
	mov.b r4,@(r0,r14)

loc_8c0539ee:
	mov.w @(loc_8c053a76,PC),r0
	mov 0x04,r2
	mov 0x01,r3
	mov.b r2,@(r0,r14)
	mov.w @(loc_8c053a7e,PC),r0
	mov.b r3,@(r0,r14)

loc_8c0539fa:
	lds.l @r15+,pr
	mov.w @(loc_8c053a76,PC),r0
	mov 0x05,r5
	mov.l @(loc_8c053a84,PC),r3
	mov r14,r4
	fmov @r15+,fr15
	mov.b @(r0,r14),r6
	jmp @r3
	mov.l @r15+,r14

loc_8c053a0c:
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;==============================================
loc_8c053a14:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c053a88,PC),r3
	jsr @r3
	mov r4,r14
	mov.w @(loc_8c053a7e,PC),r0
	mov 0x02,r2
	mov 0x00,r5
	mov.b r2,@(r0,r14)
	add 0xE4,r0
	mov.b r5,@(r0,r14)
	add 0x24,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c053a46
	mova @(0x5C,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bf loc_8c053a46
	mova @(0x54,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)

loc_8c053a46:
	mov.w @(loc_8c053a80,PC),r0
	mov.b @(r0,r14),r4
	extu.b r4,r0
	cmp/eq 0x12,r0
	bt.s loc_8c053a5e
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x13,r0
	bt loc_8c053a5e
	mov.w @(loc_8c053a7a,PC),r0
	mov.b r5,@(r0,r14)

loc_8c053a5e:
	lds.l @r15+,pr
	mov.l @(loc_8c053a84,PC),r3
	mov r14,r4
	mov 0x00,r6
	mov 0x06,r5
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c053a6c:
	rts
	nop

;==============================================
loc_8c053a70:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c053a74:
	#data 0x01d3
loc_8c053a76:
	#data 0x0158
loc_8c053a78:
	#data 0x01dd
loc_8c053a7a:
	#data 0x01de
loc_8c053a7c:
	#data 0x01bc
loc_8c053a7e:
	#data 0x01f9
loc_8c053a80:
	#data 0x01d1
	#align4
loc_8c053a84:
	#data bank03.loc_8c034e8c
loc_8c053a88:
	#data loc_8c05218a
loc_8c053a8c:
	#data bank14.loc_8c14eb08
loc_8c053a90:
	#data 0xbd892492
loc_8c053a94:
	#data 0xbf4db6db

;==============================================
loc_8c053a98:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c053b78,PC),r3
	jsr @r3
	mov r4,r14
	mov.l @(loc_8c053b7c,PC),r7
	mov 0x3E,r0
	mov.b @(r0,r7),r4
	exts.b r4,r5
	cmp/pz r5
	bt.s loc_8c053ab4
	mov 0x00,r6
	bra loc_8c053ac8
	mov 0x04,r4

loc_8c053ab4:
	mov.b @(0x2,r14),r0
	extu.b r0,r0
	cmp/eq r0,r5
	bt.s loc_8c053ac0
	mov r6,r4
	add 0x01,r4

loc_8c053ac0:
	mov.b @(0x3,r7),r0
	tst r0,r0
	bt loc_8c053ac8
	add 0x02,r4

loc_8c053ac8:
	mov 0x20,r0
	mov.b r4,@(r0,r14)
	mov.w @(loc_8c053b64,PC),r0
	mov.b r6,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c053ad6:
	mov.w @(loc_8c053b64,PC),r0
	mov 0x03,r3
	mov.l r14,@-r15
	mov r4,r14
	fldi0 fr4
	mov 0x05,r1
	mov.l @(loc_8c053b7c,PC),r2
	mov 0x00,r4
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov 0x80,r3
	mov.w @(loc_8c053b66,PC),r0
	mov.b r3,@(r0,r14)
	add 0x50,r0
	mov.b r4,@(r0,r14)
	mov.b @r2,r3
	extu.b r3,r3
	cmp/ge r1,r3
	bt loc_8c053b1e
	mov.w @(loc_8c053b68,PC),r0
	mov.b @(r0,r14),r0
	tst r0,r0
	bf loc_8c053b1e
	mov.w @(loc_8c053b6a,PC),r0
	mov 0x02,r3
	mov.b r3,@(r0,r14)
	add 0xB0,r0
	mov.b r4,@(r0,r14)

loc_8c053b1e:
	mov.w @(loc_8c053b6c,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c053b3c
	mov.w @(loc_8c053b6e,PC),r0
	mov.w @(r0,r14),r3
	add 0xBA,r0
	mov.w r3,@(r0,r14)
	add 0xFD,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c053b3c
	mov.w @(loc_8c053b70,PC),r0
	mov 0x0A,r2
	mov.b r2,@(r0,r14)

loc_8c053b3c:
	mov.w @(loc_8c053b72,PC),r0
	mov.b @(r0,r14),r3
	cmp/pz r3
	bt loc_8c053b48
	mov.w @(loc_8c053b6c,PC),r0
	mov.w r4,@(r0,r14)

loc_8c053b48:
	mov.w @(loc_8c053b74,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c053b56
	mov.l @(loc_8c053b80,PC),r3
	jsr @r3
	mov r14,r4

loc_8c053b56:
	lds.l @r15+,pr
	mov.l @(loc_8c053b84,PC),r2
	mov r14,r4
	mov 0x1F,r6
	mov 0x0D,r5
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c053b64:
	#data 0x01f9
loc_8c053b66:
	#data 0x019d
loc_8c053b68:
	#data 0x01dc
loc_8c053b6a:
	#data 0x01ed
loc_8c053b6c:
	#data 0x01e6
loc_8c053b6e:
	#data 0x022c
loc_8c053b70:
	#data 0x01e3
loc_8c053b72:
	#data 0x01da
loc_8c053b74:
	#data 0x0420
	#align4
loc_8c053b78:
	#data bank04.loc_8c04f314
loc_8c053b7c:
	#data 0x8c2895f0
loc_8c053b80:
	#data loc_8c05a2cc
loc_8c053b84:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c053b88:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(loc_8c053cc8,PC),r3
	jsr @r3
	mov 0x01,r5
	mov.l @(loc_8c053ccc,PC),r2
	jsr @r2
	mov r14,r4
	mov 0x20,r0
	fldi0 fr4
	mov.b @(r0,r14),r3
	mov 0x01,r5
	tst r3,r3
	bf.s loc_8c053c20
	mov 0x00,r4
	mova @(loc_8c053cd0,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c053cbe,PC),r0
	fmov @(r0,r14),fr2
	mov 0x38,r0
	fmov @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr1,fr2
	bf loc_8c053bc2
	mov.w @(loc_8c053cbe,PC),r0
	fmov @(r0,r14),fr2
	mov 0x38,r0
	fmov fr2,@(r0,r14)

loc_8c053bc2:
	mov.w @(loc_8c053cc0,PC),r0
	mov 0x02,r3
	mov.b r3,@(r0,r14)
	add 0xDF,r0
	mov.b r4,@(r0,r14)
	add 0x24,r0
	mov.b r4,@(r0,r14)
	add 0xD8,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov 0x11,r3
	mov.b r3,@(r0,r14)
	add 0x03,r0
	mov.b r4,@(r0,r14)
	mova @(0xF0,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c053cc2,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c053bfa
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8c053bfa:
	mov 0x68,r0
	mov.l @(loc_8c053ce0,PC),r3
	fmov fr4,@(r0,r14)
	mova @(loc_8c053cd8,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	mov r14,r4
	mov 0x20,r6
	fmov fr3,@(r0,r14)
	mova @(loc_8c053cdc,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c053cc4,PC),r0
	mov.b r5,@(r0,r14)
	mov 0x0D,r5
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c053c20:
	mov.w @(loc_8c053cbe,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c053cc0,PC),r0
	mov.b r5,@(r0,r14)
	add 0xDF,r0
	mov.b r4,@(r0,r14)
	add 0x24,r0
	mov.b r4,@(r0,r14)
	add 0xD8,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mova @(loc_8c053ce4,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(loc_8c053ce8,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c053cc2,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c053c64
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8c053c64:
	mov 0x60,r0
	mov.l @(loc_8c053ce0,PC),r3
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	mov 0x0D,r5
	fmov fr4,@(r0,r14)
	mov 0x21,r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c053cec,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c053c80:
	mov.w @(loc_8c053cc6,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	rts
	cmp/eq 0x00,r0

loc_8c053c8a:
	rts
	nop

;==============================================
loc_8c053c8e:
	mov.w @(loc_8c053cbe,PC),r0
	sts.l pr,@-r15
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	mova @(loc_8c053cd0,PC),r0
	fsub fr3,fr2
	fmov @r0,fr3
	fcmp/gt fr2,fr3
	bf loc_8c053cb0
	mov.w @(loc_8c053cbe,PC),r0
	fmov @(r0,r4),fr2
	mov 0x38,r0
	fmov fr2,@(r0,r4)
	lds.l @r15+,pr
	rts
	mov 0x00,r0

loc_8c053cb0:
	mov.l @(loc_8c053cf0,PC),r2
	jsr @r2
	nop
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c053cbe:
	#data 0x041c
loc_8c053cc0:
	#data 0x01f9
loc_8c053cc2:
	#data 0x0130
loc_8c053cc4:
	#data 0x01d3
loc_8c053cc6:
	#data 0x0256
	#align4
loc_8c053cc8:
	#data bank03.loc_8c035162
loc_8c053ccc:
	#data loc_8c05218a
loc_8c053cd0:
	#data 0x42892492
loc_8c053cd4:
	#data 0x413aaaaa
loc_8c053cd8:
	#data 0x413c9249
loc_8c053cdc:
	#data 0xbf092492
loc_8c053ce0:
	#data bank03.loc_8c034e8c
loc_8c053ce4:
	#data 0x41555555
loc_8c053ce8:
	#data 0xbfa00000
loc_8c053cec:
	#data loc_8c0511b4
loc_8c053cf0:
	#data loc_8c0517be

;==============================================
loc_8c053cf4:
	mov.w @(loc_8c053de4,PC),r0
	mov 0x00,r3
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8c053df4,PC),r2
	mov.b r3,@(r0,r14)
	mov.b @r2,r0
	extu.b r0,r0
	tst 0x04,r0
	bf loc_8c053d1c
	mov.w @(loc_8c053de6,PC),r0
	mov.b @(r0,r14),r1
	tst r1,r1
	bf loc_8c053d1c
	mov.w @(loc_8c053de8,PC),r0
	mov r14,r4
	mov.l @(r0,r14),r3
	mov.l @(0x4,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8c053d1c:
	rts
	mov.l @r15+,r14

;==============================================
loc_8c053d20:
	mov.l r14,@-r15
	mov.w @(loc_8c053dea,PC),r0
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c053ddc
	mov.w @(loc_8c053de4,PC),r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bf loc_8c053ddc
	mov.l @(loc_8c053df8,PC),r4
	mov.b @(0x1,r4),r0
	extu.b r0,r0
	tst 0x04,r0
	bf loc_8c053ddc
	mov.b @(0x2,r13),r0
	mov r4,r14
	add 0x18,r14
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	mov.l @(loc_8c053dfc,PC),r3
	shll2 r0
	add r0,r14
	mov.l @r3,r2
	mov.l @(0x4,r14),r14
	mov 0x00,r3
	add 0x4A,r2
	mov.b @(0x2,r14),r0
	extu.b r0,r0
	mov.b @(r0,r2),r1
	mov.w @(loc_8c053dec,PC),r0
	extu.b r1,r1
	mov.b @(r0,r14),r2
	extu.b r2,r2
	cmp/gt r2,r3
	addc r3,r2
	mov 0x01,r3
	shar r2
	shad r2,r3
	tst r3,r1
	bf loc_8c053ddc
	mov.b @r14,r3
	tst r3,r3
	bf loc_8c053ddc
	mov.w @(loc_8c053dee,PC),r0
	mov.w @(r0,r14),r3
	cmp/pl r3
	bf loc_8c053ddc
	mov.w @(loc_8c053df0,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bf loc_8c053ddc
	mov.w @(loc_8c053df2,PC),r0
	mov.w @(r0,r13),r3
	mov.w r3,@(r0,r14)
	add 0x08,r0
	mov.w @(r0,r13),r2
	mov.w r2,@(r0,r14)
	add 0xFA,r0
	mov.w @(r0,r13),r3
	mov.w r3,@(r0,r14)
	add 0x02,r0
	mov.w @(r0,r13),r2
	mov.w r2,@(r0,r14)
	add 0x02,r0
	mov.w @(r0,r13),r3
	mov.w r3,@(r0,r14)
	add 0x04,r0
	mov.w @(r0,r13),r2
	mov.w r2,@(r0,r14)
	add 0x04,r0
	mov.w @(r0,r13),r3
	mov.w r3,@(r0,r14)
	add 0xFE,r0
	mov.w @(r0,r13),r2
	mov.w r2,@(r0,r14)
	mov.w @(loc_8c053de8,PC),r0
	mov.l @(r0,r14),r3
	mov.l @(0x34,r3),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8c053ddc
	mov.w @(loc_8c053de4,PC),r0
	mov 0x06,r2
	mov 0x01,r3
	mov.b r2,@(r0,r13)
	add 0x03,r0
	mov.b r3,@(r0,r13)

loc_8c053ddc:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c053de4:
	#data 0x0254
loc_8c053de6:
	#data 0x0411
loc_8c053de8:
	#data 0x0428
loc_8c053dea:
	#data 0x01d0
loc_8c053dec:
	#data 0x01a4
loc_8c053dee:
	#data 0x0420
loc_8c053df0:
	#data 0x02a0
loc_8c053df2:
	#data 0x0340
	#align4
loc_8c053df4:
	#data 0x8c2895f1
loc_8c053df8:
	#data 0x8c2895f0
loc_8c053dfc:
	#data 0x8c2896b0

;==============================================
loc_8c053e00:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c053efe,PC),r14
	mov r4,r13
	mov 0x00,r12
	add r13,r14
	mov r12,r0
	nop
	mov.b r0,@(0x5,r14)
	mov.w @(loc_8c053f00,PC),r0
	mov.b @(r0,r13),r4
	extu.b r4,r0
	cmp/eq 0x12,r0
	bt.s loc_8c053e2e
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x13,r0
	bf loc_8c053e38

loc_8c053e2e:
	bsr loc_8c054298
	mov r13,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c053ed2

loc_8c053e38:
	mov.w @(loc_8c053f02,PC),r0
	mov.l @(r0,r13),r3
	add 0x29,r0
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c053ef0
	mov.w @(loc_8c053f04,PC),r5
	mov r15,r6
	mov.l @(loc_8c053f10,PC),r3
	mov 0x01,r11
	mov 0x00,r7
	jsr @r3
	mov r13,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c053e60
	mov.w @(loc_8c053f06,PC),r0
	mov.w @(r0,r13),r0
	bra loc_8c053ed6
	mov.w r0,@(0x6,r14)

loc_8c053e60:
	mov.b @r14,r2
	mov.w @(loc_8c053f08,PC),r4
	tst r2,r2
	bf loc_8c053e90
	mov.w @(loc_8c053f0a,PC),r0
	mov.w @(r0,r13),r3
	mov.w r3,@r15
	mov.w @r15,r2
	and r4,r2
	mov.w r2,@r15
	extu.w r2,r2
	tst r2,r2
	bt loc_8c053ed2
	mov.w @(loc_8c053f0a,PC),r0
	mov.w @r15,r3
	mov.w @(r0,r13),r2
	cmp/eq r2,r3
	bf loc_8c053ed2
	mov.b r11,@r14
	mov.w @r15,r0
	mov.w r0,@(0x6,r14)
	mov 0x0F,r0
	bra loc_8c053ed2
	mov.b r0,@(0x1,r14)

loc_8c053e90:
	mov.b @(0x1,r14),r0
	add 0xFF,r0
	mov.b r0,@(0x1,r14)
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c053ea0
	bra loc_8c053ed2
	mov.b r12,@r14

loc_8c053ea0:
	mov.w @(loc_8c053f0a,PC),r0
	mov.w @(r0,r13),r2
	mov.w r2,@r15
	mov.w @r15,r3
	and r4,r3
	mov.w r3,@r15
	extu.w r3,r3
	tst r3,r3
	bt loc_8c053ed2
	mov.w @(loc_8c053f0a,PC),r0
	mov.w @r15,r4
	mov.w @(r0,r13),r3
	extu.w r4,r4
	extu.w r3,r3
	cmp/eq r3,r4
	bf loc_8c053ed2
	mov.w @(0x6,r14),r0
	extu.w r0,r0
	cmp/eq r0,r4
	bf loc_8c053ed2
	mov.w @(loc_8c053f0c,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c053ed6

loc_8c053ed2:
	bra loc_8c053ef0
	mov 0x00,r0

loc_8c053ed6:
	mov.b r12,@r14
	mov r11,r0
	nop
	mov.b r0,@(0x5,r14)
	mov 0xF6,r2
	mov.w @(0x6,r14),r0
	mov.w @(loc_8c053f0e,PC),r3
	extu.w r0,r0
	and r3,r0
	shad r2,r0
	mov.b r0,@(0x4,r14)
	mov r11,r0
	nop

loc_8c053ef0:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c053efe:
	#data 0x0354
loc_8c053f00:
	#data 0x01d0
loc_8c053f02:
	#data 0x020c
loc_8c053f04:
	#data 0x0300
loc_8c053f06:
	#data 0x034a
loc_8c053f08:
	#data 0x0c00
loc_8c053f0a:
	#data 0x034e
loc_8c053f0c:
	#data 0x01f9
loc_8c053f0e:
	#data 0x0400
	#align4
loc_8c053f10:
	#data loc_8c055cf6

;==============================================
loc_8c053f14:
	mov.w @(loc_8c053fd4,PC),r5
	mov 0x00,r1
	mov.l @(loc_8c053fe4,PC),r3
	add r4,r5
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @r5,r2
	and r3,r2
	or r1,r2
	tst r2,r2
	bf loc_8c053f66
	mov.w @(loc_8c053fd6,PC),r5
	add r4,r5
	mov.b @(0x5,r5),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c053f66
	mov 0x00,r0
	mov.b r0,@(0x5,r5)
	mov.b @(0x4,r5),r0
	tst r0,r0
	bf loc_8c053f44
	bra loc_8c053f4e
	mov 0x0A,r14

loc_8c053f44:
	mov.b @(0x1,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c053f66
	mov 0x0B,r14

loc_8c053f4e:
	mov.w @(loc_8c053fd8,PC),r0
	extu.b r14,r2
	mov.b @(r0,r4),r3
	extu.b r3,r3
	cmp/eq r2,r3
	bt loc_8c053f66
	mov.l @(loc_8c053fe8,PC),r2
	jsr @r2
	mov r14,r5
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c053f66:
	mov 0x00,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c053f6e:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c053fda,PC),r0
	mov r4,r14
	mov.l @(r0,r14),r3
	add 0x29,r0
	mov.b @(r0,r3),r2
	tst r2,r2
	bt.s loc_8c053f8c
	mov r5,r13
	bra loc_8c0540da
	nop

loc_8c053f8c:
	mov.b @(0x1,r14),r0
	mov.l @(loc_8c053fec,PC),r1
	extu.b r0,r0
	shll r0
	mov.w @(r0,r1),r3
	mova @(0x58,PC),r0
	fmov @r0,fr2
	mova @(0x58,PC),r0
	lds r3,fpul
	fmov @r0,fr1
	mov.w @(loc_8c053fdc,PC),r0
	float fpul,fr3
	fmov @(r0,r14),fr4
	mov 0x38,r0
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr3,fr4
	fmov @(r0,r14),fr3
	fcmp/gt fr3,fr4
	bf loc_8c053fb8
	bra loc_8c0540da
	nop

loc_8c053fb8:
	mov.w @(loc_8c053fde,PC),r5
	mov 0x00,r12
	mov.l @(loc_8c053ff8,PC),r3
	mov r12,r7
	mov r15,r6
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c053ffc
	mov.w @(loc_8c053fe0,PC),r0
	mov.w @(r0,r14),r0
	bra loc_8c05407a
	mov.w r0,@(0x6,r13)

;##############################################
loc_8c053fd4:
	#data 0x0414
loc_8c053fd6:
	#data 0x0354
loc_8c053fd8:
	#data 0x01d0
loc_8c053fda:
	#data 0x020c
loc_8c053fdc:
	#data 0x041c
loc_8c053fde:
	#data 0x0300
loc_8c053fe0:
	#data 0x034a
	#align4
loc_8c053fe4:
	#data 0x07000000
loc_8c053fe8:
	#data loc_8c0532a8
loc_8c053fec:
	#data bank15.loc_8c151274
loc_8c053ff0:
	#data 0x40092492
loc_8c053ff4:
	#data 0x43800000
loc_8c053ff8:
	#data loc_8c055cf6

;==============================================
loc_8c053ffc:
	mov.w @(loc_8c0540e0,PC),r4
	mov.w @(loc_8c0540de,PC),r2
	add r14,r4
	mov.l @(loc_8c0540f0,PC),r3
	mov.w r2,@r15
	mov.l @(0x4,r4),r2
	and r3,r2
	or r12,r2
	tst r2,r2
	bt loc_8c054014
	mov.w @(loc_8c0540e2,PC),r0
	mov.w r0,@r15

loc_8c054014:
	mov.w @(loc_8c0540e0,PC),r4
	mov.l @(loc_8c0540f8,PC),r1
	add r14,r4
	mov.l @(loc_8c0540f4,PC),r3
	mov.l @(0x4,r4),r0
	mov.l @r4,r2
	and r1,r0
	and r3,r2
	or r0,r2
	tst r2,r2
	bt loc_8c05402e
	mov.w @(loc_8c0540e4,PC),r0
	mov.w r0,@r15

loc_8c05402e:
	mov.b @r13,r3
	tst r3,r3
	bf loc_8c054050
	mov.w @(loc_8c0540e6,PC),r0
	mov.w @r15,r3
	mov.w @(r0,r14),r0
	and r3,r0
	mov.w r0,@(0x6,r13)
	extu.w r0,r0
	tst r0,r0
	bt loc_8c0540da
	mov 0x0F,r0
	mov.b r0,@(0x1,r13)
	mov.b @r13,r3
	add 0x01,r3
	bra loc_8c0540da
	mov.b r3,@r13

loc_8c054050:
	mov.b @(0x1,r13),r0
	add 0xFF,r0
	mov.b r0,@(0x1,r13)
	exts.b r0,r0
	cmp/pl r0
	bt loc_8c054062
	mov.b r12,@r13
	bra loc_8c05415a
	mov r12,r0

loc_8c054062:
	mov.w @(loc_8c0540e6,PC),r0
	mov.w @r15,r3
	mov.w @(r0,r14),r4
	and r3,r4
	extu.w r4,r2
	tst r2,r2
	bt loc_8c0540da
	mov.w @(0x6,r13),r0
	extu.w r4,r4
	extu.w r0,r0
	cmp/eq r0,r4
	bf loc_8c0540da

loc_8c05407a:
	mov.w @(loc_8c0540e8,PC),r0
	mov.b r12,@r13
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c0540da
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c0540da
	mov.w @(loc_8c0540ea,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0xE0,r0
	bf loc_8c0540da
	mov.w @(loc_8c0540ec,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0540da
	mov.w @(loc_8c0540ee,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x1A,r0
	bt loc_8c0540da
	mov.w @(loc_8c0540ee,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x13,r0
	bt loc_8c0540da
	mov.w @(loc_8c0540ee,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bt loc_8c0540da
	mov.w @(loc_8c0540ee,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bt loc_8c0540da
	mov.w @(loc_8c0540ee,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x1B,r0
	bt loc_8c0540da
	mov.w @(loc_8c0540ee,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x1C,r0
	bf loc_8c0540fc

loc_8c0540da:
	bra loc_8c05415a
	mov 0x00,r0

;##############################################
loc_8c0540de:
	#data 0x0800
loc_8c0540e0:
	#data 0x0414
loc_8c0540e2:
	#data 0x3c00
loc_8c0540e4:
	#data 0x0c00
loc_8c0540e6:
	#data 0x034e
loc_8c0540e8:
	#data 0x01f9
loc_8c0540ea:
	#data 0x014a
loc_8c0540ec:
	#data 0x01d5
loc_8c0540ee:
	#data 0x01d0
	#align4
loc_8c0540f0:
	#data 0x00084000
loc_8c0540f4:
	#data 0x00100000
loc_8c0540f8:
	#data 0x00200000

;----------------------------------------------
loc_8c0540fc:
	mov.w @(loc_8c054166,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c05410c
	mov.w @(loc_8c054168,PC),r0
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)

loc_8c05410c:
	mov.w @(loc_8c05416c,PC),r4
	mov.w @(loc_8c05416a,PC),r2
	add r14,r4
	mov.l @(loc_8c054174,PC),r3
	mov.w r2,@r15
	mov.l @(0x4,r4),r2
	and r3,r2
	or r2,r12
	tst r12,r12
	bt loc_8c054124
	mov.w @(loc_8c05416e,PC),r2
	mov.w r2,@r15

loc_8c054124:
	mov.w @(loc_8c05416c,PC),r4
	mov.l @(loc_8c05417c,PC),r1
	add r14,r4
	mov.l @(loc_8c054178,PC),r3
	mov.l @(0x4,r4),r0
	mov.l @r4,r2
	and r1,r0
	and r3,r2
	or r0,r2
	tst r2,r2
	bt loc_8c05413e
	mov.w @(loc_8c054170,PC),r0
	mov.w r0,@r15

loc_8c05413e:
	mov.w @r15,r3
	mov 0x22,r1
	mov.w @(0x6,r13),r0
	add r14,r1
	extu.w r3,r3
	extu.w r0,r0
	and r3,r0
	mov 0xF6,r3
	shad r3,r0
	mov.l @(loc_8c054180,PC),r3
	mov 0x1A,r5
	mov.b r0,@r1
	jsr @r3
	mov r14,r4

loc_8c05415a:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c054166:
	#data 0x0201
loc_8c054168:
	#data 0x01d5
loc_8c05416a:
	#data 0x0800
loc_8c05416c:
	#data 0x0414
loc_8c05416e:
	#data 0x3c00
loc_8c054170:
	#data 0x0c00
	#align4
loc_8c054174:
	#data 0x00084000
loc_8c054178:
	#data 0x00100000
loc_8c05417c:
	#data 0x00200000
loc_8c054180:
	#data loc_8c0532a8

;==============================================
;Air Dash Start
loc_8c054184:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c05426a,PC),r0 ;20c
	mov r4,r14
	mov.l @(r0,r14),r3
	add 0x29,r0
	mov.b @(r0,r3),r2;enplmem+0x235
	tst r2,r2
	bf loc_8c05422e

;PlayerStanceCheck
	mov.w @(loc_8c05426c,PC),r0;1f9
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c05422e

;PlayerControlState Check
	mov.b @(0x5,r14),r0; State
	tst r0,r0
	bf loc_8c05422e

;Air Dash counter check
	mov.w @(loc_8c05426e,PC),r0;1d5
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c05422e

;??
	mov.w @(loc_8c054270,PC),r0;1d0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x1A,r0
	bt loc_8c05422e

;??
	mov.w @(loc_8c054270,PC),r0;1d0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x13,r0
	bt loc_8c05422e

;??
	mov.w @(loc_8c054270,PC),r0;1d0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x1B,r0
	bt loc_8c05422e

;201 check to skip height check
	mov.w @(loc_8c054272,PC),r0;201
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0541fe

;Air dash height check
	mov.b @(0x1,r14),r0; Charid
	mov.l @(loc_8c054280,PC),r1;8c151274
	extu.b r0,r0
	shll r0
	mov.w @(r0,r1),r3

	mova @(loc_8c054284,PC),r0;8c054084
	fmov @r0,fr2;40092492 CpsYscale

	mova @(loc_8c054288,PC),r0;8c052488
	lds r3,fpul
	fmov @r0,fr1;43800000

	mov.w @(loc_8c054274,PC),r0;0x41c
	float fpul,fr3
	fmov @(r0,r14),fr4
	mov 0x38,r0
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr3,fr4
	fmov @(r0,r14),fr3;38
	fcmp/gt fr3,fr4
	bt loc_8c05422e

;air dash input (just button input?)
loc_8c0541fe:
	mov.w @(loc_8c054276,PC),r5;300 button input
	mov 0x00,r7
	mov.l @(loc_8c05428c,PC),r3;8c055cf6
	mov r15,r6
	jsr @r3
	mov r14,r4

	extu.b r0,r0
	tst r0,r0
	bt loc_8c05422e

	mov.w @(loc_8c054278,PC),r0;14a
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0xE0,r0
	bt loc_8c054222

	mov.w @(loc_8c054272,PC),r0;201
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c05422e

loc_8c054222:
	mov.l @(loc_8c054290,PC),r2;8c0559da
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c054238

loc_8c05422e:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c054238:
	mov.w @(loc_8c05427a,PC),r0
	mov 0xF6,r1
	mov.w @(loc_8c05427c,PC),r3
	mov.w @(r0,r14),r2
	mov 0x22,r0
	extu.w r2,r2
	and r3,r2
	shad r1,r2
	mov.b r2,@(r0,r14)
	mov.w @(loc_8c054272,PC),r0
	mov.b @(r0,r14),r1
	tst r1,r1
	bf.s loc_8c05425c
	mov 0x1A,r5
	mov.w @(loc_8c05426e,PC),r0
	mov.b @(r0,r14),r2
	add 0x01,r2
	mov.b r2,@(r0,r14)

loc_8c05425c:
	mov.l @(loc_8c054294,PC),r3
	jsr @r3
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05426a:
	#data 0x020c
loc_8c05426c:
	#data 0x01f9
loc_8c05426e:
	#data 0x01d5
loc_8c054270:
	#data 0x01d0
loc_8c054272:
	#data 0x0201
loc_8c054274:
	#data 0x041c
loc_8c054276:
	#data 0x0300
loc_8c054278:
	#data 0x014a
loc_8c05427a:
	#data 0x034a
loc_8c05427c:
	#data 0x3c00
	#align4
loc_8c054280:
	#data bank15.loc_8c151274
loc_8c054284:
	#data 0x40092492
loc_8c054288:
	#data 0x43800000
loc_8c05428c:
	#data loc_8c055cf6
loc_8c054290:
	#data loc_8c0559da
loc_8c054294:
	#data loc_8c0532a8

;==============================================
loc_8c054298:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c054390,PC),r0
	mov r4,r14
	mov.b @(r0,r14),r3
	cmp/pl r3
	bf loc_8c0542ca
	mov.w @(loc_8c054392,PC),r5
	mov 0x00,r7
	mov.l @(loc_8c0543a8,PC),r2
	mov r15,r6
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c0542c4
	mov 0x01,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c0542c4:
	mov.w @(loc_8c054390,PC),r0
	mov 0xFF,r2
	mov.b r2,@(r0,r14)

loc_8c0542ca:
	mov.w @(loc_8c054394,PC),r4
	mov 0x08,r6
	mov.l @(loc_8c0543ac,PC),r3
	mov 0x00,r5
	jsr @r3
	add r14,r4
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
; called from char programming
; returns a value in r0
; possibly (?) cpu related, calls loc_8c054e58
loc_8c0542e0:
	; r5 = plmem + 0x35c
	; if((byte)plmem[5] != 0) goto loc_8c054368
	mov.b @(0x5,r4),r0
	mov.w @(loc_8c054396,PC),r5
	tst r0,r0
	bf.s loc_8c054368
	add r4,r5
	
	; r3 = plmem[0x1a0]
	; if((byte)plmem[0x1a0] != 0) goto loc_8c054368
	mov.w @(loc_8c054398,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf.s loc_8c0542fa
	mov 0x00,r6
	
	mov r6,r0
	nop
	; plmem[0x361] = 00
	mov.b r0,@(0x5,r5)

loc_8c0542fa:
	; if([work.GameGlobalPointer][0x4c] != 0x2) goto loc_8c054320
	mov.l @(loc_8c0543b0,PC),r3
	mov 0x4C,r1
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x02,r0
	bf loc_8c054320
	
	; if [0x8c212cd1] != 0x03 goto loc_8c054320
	mov.l @(loc_8c0543b4,PC),r2
	mov.b @r2,r0
	cmp/eq 0x03,r0
	bf loc_8c054320
	
	; if 2-(plmem[0x524] & 1) == [0x8c212cdb]
	; then goto loc_8c05435c
	mov.w @(loc_8c05439a,PC),r0
	mov.l @(loc_8c0543b8,PC),r3
	mov.b @(r0,r4),r0
	mov.b @r3,r3
	and 0x01,r0
	neg r0,r0
	add 0x02,r0
	cmp/eq r0,r3
	bt loc_8c05435c

loc_8c054320:
	; if plmem[0x35c] != 0
	; then goto loc_8c05433c
	mov.b @r5,r2
	tst r2,r2
	bf loc_8c05433c
	
	; if plmem[0x34e] & 0x1000 == 0
	; then return 0
	mov.w @(loc_8c05439c,PC),r0
	mov.w @(loc_8c05439e,PC),r2
	mov.w @(r0,r4),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c054358
	
	; plmem[0x35c] = 0x01
	; plmem[0x35d] = 0x0f
	; return 0
	mov 0x01,r3
	mov 0x0F,r0
	mov.b r3,@r5
	bra loc_8c054358
	mov.b r0,@(0x1,r5)

loc_8c05433c:
	; plmem[0x35d]++
	; if plmem[0x35d] < 0 {
		; plmem[0x35c] = 0
		; return 0
	; }
	
	mov.b @(0x1,r5),r0
	add 0xFF,r0
	mov.b r0,@(0x1,r5)
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c05434c
	bra loc_8c054358
	mov.b r6,@r5

loc_8c05434c:
	; if ((uint16)plmem[0x34e] & 0x2000) == 0
	; return 0
	
	mov.w @(loc_8c05439c,PC),r0
	mov.w @(loc_8c0543a0,PC),r2
	mov.w @(r0,r4),r3
	extu.w r3,r3
	tst r2,r3
	bf loc_8c05435c

loc_8c054358:
	rts
	mov 0x00,r0

loc_8c05435c:
	mov 0x02,r0
	; plmem[0x35c] = 0
	mov.b r6,@r5
	; plmem[0x361] = 2
	mov.b r0,@(0x5,r5)
	; return 1
	mov 0x01,r0
	rts
	nop

loc_8c054368:
	; r0 = 0x0236
	mov.w @(loc_8c0543a2,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	cmp/pl r3
	bf loc_8c0543dc
	; r3 = work.GameGlobalPointer
	mov.l @(loc_8c0543b0,PC),r3
	; r0 = 0x00a8
	mov.w @(loc_8c0543a4,PC),r0
	mov.l @r3,r2
	mov.b @(r0,r2),r1
	tst r1,r1
	bt loc_8c0543bc
	; r0 = 0x0236
	mov.w @(loc_8c0543a2,PC),r0
	mov 0xFF,r1
	mov 0x01,r2
	mov.b r1,@(r0,r14)
	; r0 = 0x01a3
	mov.w @(loc_8c0543a6,PC),r0
	bra loc_8c0543e8
	mov.b r2,@(r0,r14)

;##############################################
loc_8c054390:
	#data 0x01dd
loc_8c054392:
	#data 0x0300
loc_8c054394:
	#data 0x0354
loc_8c054396:
	#data 0x035c
loc_8c054398:
	#data 0x01a0
loc_8c05439a:
	#data 0x0524
loc_8c05439c:
	#data 0x034e
loc_8c05439e:
	#data 0x1000
loc_8c0543a0:
	#data 0x2000
loc_8c0543a2:
	#data 0x0236
loc_8c0543a4:
	#data 0x00a8
loc_8c0543a6:
	#data 0x01a3
	#align4
loc_8c0543a8:
	#data loc_8c055cf6
loc_8c0543ac:
	#data bank12.loc_8c129728
loc_8c0543b0:
	#data work.GameGlobalPointer
loc_8c0543b4:
	#data 0x8c212cd1
loc_8c0543b8:
	#data 0x8c212cdb

;==============================================
; continues from function starting at loc_8c0542e0
loc_8c0543bc:
	; r6 = 0x35c
	mov.w @(loc_8c0543f0,PC),r6
	; r5 = bank14.loc_8c14eb0c
	mov.l @(loc_8c0543f4,PC),r5
	add r14,r6
	bsr loc_8c054e58
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c0543e8
	; r0 = 0x0236
	mov.w @(loc_8c0543f2,PC),r0
	mov 0xFF,r3
	mov.w @(loc_8c0543f0,PC),r5
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c0543f8,PC),r3
	add r14,r5
	jsr @r3
	mov r14,r4

loc_8c0543dc:
	mov.w @(loc_8c0543f0,PC),r4
	mov 0x08,r6
	mov.l @(loc_8c0543fc,PC),r2
	mov 0x00,r5
	jsr @r2
	add r14,r4

loc_8c0543e8:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0543f0:
	#data 0x035c
loc_8c0543f2:
	#data 0x0236
	#align4
loc_8c0543f4:
	#data bank14.loc_8c14eb0c
loc_8c0543f8:
	#data loc_8c055c3a
loc_8c0543fc:
	#data bank12.loc_8c129728

;==============================================
loc_8c054400:
	mov.w @(loc_8c0544e8,PC),r5
	sts.l pr,@-r15
	add r4,r5
	mov.b @(0x5,r5),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c054484
	mov.w @(loc_8c0544ea,PC),r0
	mov.b @(r0,r4),r0
	and 0xE0,r0
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0544d2
	mov.w @(loc_8c0544ec,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8c0544d2
	mov.b @(r0,r4),r0
	tst 0x01,r0
	bf loc_8c0544d2
	mov.w @(loc_8c0544ee,PC),r0
	mov.w @(loc_8c0544f0,PC),r2
	mov.w @(r0,r4),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c0544d2
	mov.w @(loc_8c0544f2,PC),r0
	mov 0x7F,r6
	mov 0x1C,r3
	mov.b @(r0,r4),r0
	extu.b r0,r0
	and r0,r6
	mov.w @(loc_8c0544f4,PC),r0
	mul.l r3,r6
	mov.l @(r0,r4),r2
	mov 0x12,r0
	sts macl,r6
	add r2,r6
	mov.b @(r0,r6),r0
	extu.b r0,r0
	tst 0x40,r0
	bf loc_8c054484
	mov.b @(0x9,r6),r0
	mov 0x0A,r3
	extu.b r0,r0
	cmp/gt r3,r0
	bf loc_8c0544d2
	mov.b @(0x8,r6),r0
	mov 0x05,r3
	extu.b r0,r0
	add 0x03,r0
	and 0x1F,r0
	cmp/gt r3,r0
	bt loc_8c0544d2
	mov.w @(loc_8c0544f6,PC),r0
	mov.l @(r0,r4),r6
	mov.b @(0x3,r6),r0
	tst r0,r0
	bt loc_8c05447a
	mov.w @(loc_8c0544f8,PC),r0
	mov.l @(r0,r4),r6

loc_8c05447a:
	mov.w @(loc_8c0544fa,PC),r0
	mov.b @(r0,r6),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c0544d2

loc_8c054484:
	mov.l @(loc_8c054500,PC),r2
	mov 0x04,r1
	mov.b @r2,r3
	extu.b r3,r3
	cmp/ge r1,r3
	bf loc_8c0544d2
	mov.w @(loc_8c0544fa,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c0544d2
	mov.w @(loc_8c0544fc,PC),r6
	mov r6,r0
	nop
	add 0x6A,r0
	mov.b @(r0,r4),r3
	extu.b r3,r3
	tst r6,r3
	bt loc_8c0544c6
	mov.w @(loc_8c0544ea,PC),r0
	mov.w @(loc_8c0544fe,PC),r3
	mov.b @(r0,r4),r1
	extu.b r1,r1
	and r6,r1
	cmp/eq r3,r1
	bf loc_8c0544d2
	mov.w @(loc_8c0544ec,PC),r0
	mov.b @(r0,r4),r6
	tst r6,r6
	bt loc_8c0544d2
	exts.b r6,r0
	tst 0x01,r0
	bf loc_8c0544d2

loc_8c0544c6:
	mov.w @(loc_8c0544f8,PC),r0
	mov.l @(r0,r4),r3
	add 0x29,r0
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c0544d8

loc_8c0544d2:
	lds.l @r15+,pr
	rts
	mov 0x00,r0

loc_8c0544d8:
	mov.l @(loc_8c054504,PC),r3
	mov 0x00,r0
	mov.b r0,@(0x5,r5)
	jsr @r3
	mov 0x0D,r5
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0544e8:
	#data 0x035c
loc_8c0544ea:
	#data 0x014a
loc_8c0544ec:
	#data 0x019e
loc_8c0544ee:
	#data 0x034a
loc_8c0544f0:
	#data 0x2000
loc_8c0544f2:
	#data 0x01a1
loc_8c0544f4:
	#data 0x0174
loc_8c0544f6:
	#data 0x01b0
loc_8c0544f8:
	#data 0x020c
loc_8c0544fa:
	#data 0x01f9
loc_8c0544fc:
	#data 0x00e0
loc_8c0544fe:
	#data 0x0080
	#align4
loc_8c054500:
	#data 0x8c2895f0
loc_8c054504:
	#data loc_8c0532a8

;==============================================
; called from char programming
loc_8c054508:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	
	; if(plmem[0x525] == 0) goto loc_8c054530
	mov.w @(loc_8c0545ac,PC),r0
	mov r4,r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c054530
	
	; if(plmem[0x45d] == 0) goto loc_8c054530
	mov.w @(loc_8c0545ae,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c054530
	
	; if(plmem[0x0448] == 0x7e) goto loc_8c054540
	mov.w @(loc_8c0545b0,PC),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x7E,r0
	bt loc_8c054540

;loc_8c0545bc: #data loc_8c055cd4
;loc_8c0545b2: #data 0x0090

loc_8c054530:
	; r6 = r15 (stack pointer)
	; r5 = 0x0090
	; r4 = r14 (plmem)
	; call loc_8c055cd4()
	
	mov.l @(loc_8c0545bc,PC),r3 ; r3 = loc_8c055cd4
	mov r15,r6
	mov.w @(loc_8c0545b2,PC),r5 ; r5 = 0x0090
	jsr @r3
	mov r14,r4
	
	; r0 was returned from loc_8c055cd4()
	; if(r0 == 0) goto loc_8c054586
	extu.b r0,r0
	tst r0,r0
	bt loc_8c054586

; loc_8c0545c0: #data loc_8c0559da

loc_8c054540:
	; loc_8c0559da()
	
	; if(????) goto return
	mov.l @(loc_8c0545c0,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c054586
	
	; if(plmem[0x1f9] == 2) goto return
	; same as
	; if(player is jumping) goto return
	mov.w @(loc_8c0545b4,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c054586
	
	; if(0x05 >= (byte)[0x8c2895f0]) goto return
	mov.l @(loc_8c0545c4,PC),r5
	mov 0x05,r3
	mov.b @r5,r2
	extu.b r2,r2
	cmp/ge r3,r2
	bt loc_8c054586
	
	; r0 = 0x8c2895f0 + 0x34 + (byte)plmem[0x2]
	; r2 = [r0]
	; r4 = 0x01
	; if(0x01 > r2) goto return
	mov.b @(0x2,r14),r0
	mov r5,r3
	add 0x34,r3
	extu.b r0,r0
	add r3,r0
	mov.b @r0,r2
	mov 0x01,r4
	cmp/gt r4,r2
	bt loc_8c054586
	
	; if((byte)[plmem[0x40c]] == 0) goto return
	mov.w @(loc_8c0545b6,PC),r0
	mov.l @(r0,r14),r12
	mov.b @r12,r12
	tst r12,r12
	bt loc_8c054586
	
	; different target, inetresting
	; if(plmem[0x1f1] == 0) goto loc_8c05458a (skip return)
	mov.w @(loc_8c0545b8,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c05458a

; sets r0 to 0 and then returns?
loc_8c054586:
	bra loc_8c054624
	mov 0x00,r0

loc_8c05458a:
; r12 already was (byte)[plmem[0x40c]], and can't be 0
; r12 = max(0x03, (byte)[plmem[0x40c]])
	mov 0x03,r13
	cmp/gt r13,r12
	bf.s loc_8c054594
	mov r4,r7
	mov r13,r12

loc_8c054594:
	; r0 = 0x1a4
	; r3 = 0
	; r10 = 0x8c2896b0
	; r2 = (ubyte)plmem[0x1a4]
	; r2 += (r2 > 0x00)
	; r2 = r2 >> 1
	; r11 = 0x01
	; r2 = r2 >> 1
	; r6 = r4
	; goes to a loop
	
	mov.w @(loc_8c0545ba,PC),r0
	mov 0x00,r3
	mov.l @(loc_8c0545c8,PC),r10
	mov r4,r11
	mov.b @(r0,r14),r2
	extu.b r2,r2
	cmp/gt r2,r3
	addc r3,r2
	shar r2
	shad r2,r11
	bra loc_8c05460c ; go to loop
	mov r4,r6

;##############################################
loc_8c0545ac:
	#data 0x0525
loc_8c0545ae:
	#data 0x045d
loc_8c0545b0:
	#data 0x0448
loc_8c0545b2:
	#data 0x0090
loc_8c0545b4:
	#data 0x01f9
loc_8c0545b6:
	#data 0x040c
loc_8c0545b8:
	#data 0x01f1
loc_8c0545ba:
	#data 0x01a4
	#align4
loc_8c0545bc:
	#data loc_8c055cd4
loc_8c0545c0:
	#data loc_8c0559da
loc_8c0545c4:
	#data 0x8c2895f0
loc_8c0545c8:
	#data 0x8c2896b0

;----------------------------------------------
loc_8c0545cc:
	mov.b @(0x2,r14),r0
	mov r6,r5
	mov.l @r10,r2
	shll2 r5
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add 0x18,r2
	add r2,r0
	mov.l @(r0,r5),r5
	mov.w @(loc_8c0546cc,PC),r0
	mov.w @(r0,r5),r3
	cmp/pl r3
	bf loc_8c05460a
	mov.w @(loc_8c0546ce,PC),r0
	mov.w @(r0,r5),r2
	tst r2,r2
	bf loc_8c05460a
	mov.w @(loc_8c0546d0,PC),r0
	mov 0x00,r2
	mov r4,r1
	add 0x01,r7
	mov.b @(r0,r5),r3
	extu.b r3,r3
	cmp/gt r3,r2
	addc r2,r3
	shar r3
	shad r3,r1
	or r1,r11

loc_8c05460a:
	add 0x01,r6

loc_8c05460c:
; initial when loop starts

; r10 = 0x8c2896b0
; r11 = 0x01

; r13 = 0x03
; r12 = max(0x03, (byte)[plmem[0x40c]])
; r6 = 0x01
; r7 = 0x01
	cmp/ge r13,r6
	bt loc_8c054614
	cmp/ge r12,r7
	bf loc_8c0545cc

loc_8c054614:
	mov.w @(loc_8c0546d2,PC),r0
	mov 0x04,r3
	mov.b r7,@(r0,r14)
	mov.w @(loc_8c0546d4,PC),r0
	mov.b r11,@(r0,r14)
	mov.w @(loc_8c0546d6,PC),r0
	mov.b r3,@(r0,r14)
	mov 0x01,r0

loc_8c054624:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
; called from loc_8c054b34 and char programming
; r4 = plmem
; r5 = byte, comes in as an argument? calling "r5arg" for now
; returns a byte in r0?
loc_8c054634:
	; r13 = r5arg
	; r12 = r5arg
	; r0 = (byte)r5arg
	; r5 = 0x75
	; if (byte) r5arg != 0x01 {
		; r11 = plmem + 0x025a
		; r4 = r5arg
		; goto loc_8c054684
	; }
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov r5,r12
	mov.l r11,@-r15
	extu.b r13,r0
	mov.l r10,@-r15
	mov 0x10,r10
	mov.l r9,@-r15
	cmp/eq 0x01,r0
	mov.l r8,@-r15
	mov r10,r5
	sts.l pr,@-r15
	bf.s loc_8c05465e
	add 0x70,r5
	; r11 = plmem + 0x025a
	mov.w @(loc_8c0546d8,PC),r11
	add r14,r11
	bra loc_8c054684
	mov r5,r4

loc_8c05465e:
	; if (byte)r5arg == 0x02 {
		; r11 = plmem + 0x025b
		; r4 = 0x10
		; goto loc_8c054684
	; }
	cmp/eq 0x02,r0
	bf loc_8c05466c
	mov.w @(loc_8c0546d8,PC),r11
	add r14,r11
	add 0x01,r11
	
	bra loc_8c054684
	mov r10,r4

loc_8c05466c:
	; r12 = r5arg + 0xFE
	; if (byte)r5arg == 0x03 {
		; r11 = plmem + 0x024a
		; r4 = r5arg
		; goto loc_8c054684
	; }
	extu.b r13,r0
	cmp/eq 0x03,r0
	bf.s loc_8c05467c
	add 0xFE,r12
	mov.w @(loc_8c0546da,PC),r11
	add r14,r11
	bra loc_8c054684
	mov r5,r4

loc_8c05467c:
	; r11 = plmem + 0x024b
	; r4 = 0x10
	mov.w @(loc_8c0546da,PC),r11
	mov r10,r4
	add r14,r11
	add 0x01,r11

loc_8c054684:
	; r0 = 0x525
	; if plmem[0x525] != 0 then goto loc_8c054702
	mov.w @(loc_8c0546dc,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c054702
	
	; r11 can be plmem + 0x24b or plmem + 0x24a
	; if r2 != 0 then goto loc_8c0546e4
	mov.b @r11,r2
	tst r2,r2
	bf.s loc_8c0546e4
	extu.w r4,r5
	
	; if r5arg >= 0x03 goto loc_8c0546ba
	mov 0x03,r3
	extu.b r13,r13
	cmp/ge r3,r13
	bt loc_8c0546ba
	
	; if (plmem[0x0348] & r5arg) == 0
	; then return 0
	mov.w @(loc_8c0546de,PC),r0
	mov.w @(r0,r14),r1
	extu.w r1,r1
	tst r5,r1
	bf loc_8c0546aa
	bra loc_8c054948 ; return 0
	nop

loc_8c0546aa:
	; if (plmem[0x034a] & 0x0c00) != 0 {
		; r11 can be plmem + 0x24b or plmem + 0x24a
		; [r11] = 0x10
	; }
	; return 0
	mov.w @(loc_8c0546e0,PC),r0 ; 0x34a
	mov.w @(loc_8c0546e2,PC),r1 ; 0xc00
	mov.w @(r0,r14),r2
	extu.w r2,r2
	tst r1,r2
	bt loc_8c0546c8
	bra loc_8c054948 ; return 0
	nop

loc_8c0546ba:
	; if (plmem[0x0348] & r5_arg) != 0 {
		; r11 can be plmem + 0x24b or plmem + 0x24a
		; [r11] = 0x10
	; }
	; return 0
	
	mov.w @(loc_8c0546de,PC),r0
	mov.w @(r0,r14),r0
	extu.w r0,r0
	tst r5,r0
	bf loc_8c0546c8
	bra loc_8c054948 ; return 0
	nop

loc_8c0546c8:
	; r11 can be plmem + 0x24b or plmem + 0x24a
	; [r11] = 0x10
	; return 0
	bra loc_8c054948 ; return 0
	mov.b r10,@r11

;##############################################
loc_8c0546cc:
	#data 0x0420
loc_8c0546ce:
	#data 0x02a0
loc_8c0546d0:
	#data 0x01a4
loc_8c0546d2:
	#data 0x0259
loc_8c0546d4:
	#data 0x0329
loc_8c0546d6:
	#data 0x0254
loc_8c0546d8:
	#data 0x025a
loc_8c0546da:
	#data 0x024a
loc_8c0546dc:
	#data 0x0525
loc_8c0546de:
	#data 0x0348
loc_8c0546e0:
	#data 0x034a
loc_8c0546e2:
	#data 0x0c00

;----------------------------------------------
loc_8c0546e4:
	; r11 can be plmem + 0x24b or plmem + 0x24a
	; [r11] = [r11] + 0xFF
	; if [r11] == 0 then return 0
	
	mov.b @r11,r2
	add 0xFF,r2
	mov.b r2,@r11
	exts.b r2,r2
	tst r2,r2
	bf loc_8c0546f4
	bra loc_8c054948 ; return 0
	nop

loc_8c0546f4:
	; else
	; r1 = plmem[0x0340]
	; if (plmem[0x0340] & r5arg) != 0 then return 0
	mov.w @(loc_8c054730,PC),r0
	mov.w @(r0,r14),r1
	extu.w r1,r1
	tst r5,r1
	bt loc_8c054702
	bra loc_8c054948 ; return 0
	nop

loc_8c054702:
	; can jump to here from much earlier in function too, keep in mind
	
	; plmem[0x5] is some unknown state-like variable
	; if plmem[0x5] != 0 return 0
	mov.b @(0x5,r14),r0
	tst r0,r0
	bt loc_8c05470c
	bra loc_8c054948 ; return 0
	nop

loc_8c05470c:
	; if r5arg <= 0x02
		; then goto loc_8c054734

	mov 0x02,r2
	extu.b r13,r3
	cmp/gt r2,r3
	bt loc_8c054734
	
	; plmem[0x01f9] is stance
	; check if player is not 0x03 stance or jumping stance
	; i dont know what 0x03 stance is...
	
	; if plmem[0x01f9] != 0x03 && plmem[0x01f9] != 0x02 {
		; goto loc_8c054770
	; }
	; return 0
	mov.w @(loc_8c054732,PC),r0
	mov.b @(r0,r14),r4
	extu.b r4,r0
	cmp/eq 0x03,r0
	bf.s loc_8c054724
	mov r0,r4
	bra loc_8c054948 ; return 0
	nop

loc_8c054724:
	mov r4,r0
	nop
	cmp/eq 0x02,r0 ; jumping stance comparison
	bf loc_8c054770
	bra loc_8c054948 ; return 0
	nop

;##############################################
loc_8c054730:
	#data 0x0340
loc_8c054732:
	#data 0x01f9

;----------------------------------------------
loc_8c054734:
	; r0 = 0x01f9
	; if plmem[0x01f9] == 0x03 then return 0
	; else r4 = plmem[0x01f9]
	mov.w @(loc_8c054878,PC),r0
	mov.b @(r0,r14),r4
	extu.b r4,r0
	cmp/eq 0x03,r0
	bf.s loc_8c054744
	mov r0,r4
	bra loc_8c054948 ; return 0
	nop

loc_8c054744:
	mov r4,r0
	nop
	cmp/eq 0x02,r0
	bf loc_8c054758
	mov.w @(loc_8c05487a,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c054758
	bra loc_8c054948 ; return 0
	nop

loc_8c054758:
	mov.w @(loc_8c05487c,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x14,r0
	bf loc_8c054770
	mov.w @(loc_8c05487e,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c054770
	bra loc_8c054948 ; return 0
	nop

loc_8c054770:
	mov.b @(0x2,r14),r0
	mov 0x01,r9
	mov.l @(loc_8c054890,PC),r2
	extu.b r0,r5
	mov.w @(loc_8c054880,PC),r0
	xor r9,r5
	mov.l @r2,r6
	mov r5,r3
	shll r5
	mov r6,r1
	add r3,r5
	add 0x18,r1
	shll2 r5
	add r1,r5
	mov.l @(0x4,r5),r3
	mov.l @r5,r4
	mov.b @(r0,r3),r1
	mov.b @(r0,r4),r4
	mov.l @(0x8,r5),r3
	or r1,r4
	mov.b @(r0,r3),r1
	mov.l @(loc_8c054894,PC),r3
	mov.w @(loc_8c054882,PC),r0
	mov.l @r3,r5
	mov.b @(r0,r5),r2
	tst r2,r2
	bf.s loc_8c0547b2
	or r1,r4
	extu.b r4,r4
	tst r4,r4
	bt loc_8c0547b2
	bra loc_8c054948 ; return 0
	nop

loc_8c0547b2:
	mov.l @(loc_8c054898,PC),r4
	mov 0x05,r2
	mov.b @r4,r3
	extu.b r3,r3
	cmp/ge r2,r3
	bf loc_8c0547c2
	bra loc_8c054948 ; return 0
	nop

loc_8c0547c2:
	mov.w @(loc_8c054884,PC),r0
	mov.b @(r0,r5),r2
	tst r2,r2
	bt loc_8c0547ce
	bra loc_8c054948 ; return 0
	nop

loc_8c0547ce:
	mov.w @(loc_8c054882,PC),r0
	mov.b @(r0,r5),r2
	tst r2,r2
	bf loc_8c0547ea
	mov.b @(0x2,r14),r0
	mov r4,r3
	add 0x34,r3
	extu.b r0,r0
	add r3,r0
	mov.b @r0,r2
	cmp/gt r9,r2
	bf loc_8c0547ea
	bra loc_8c054948 ; return 0
	nop

loc_8c0547ea:
	mov.w @(loc_8c054886,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0547f6
	bra loc_8c054948 ; return 0
	nop

loc_8c0547f6:
	mov.b @(0x2,r14),r0
	mov r6,r2
	extu.b r12,r8
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	add 0x18,r2
	shll2 r0
	add r2,r0
	shll2 r8
	mov.l @(r0,r8),r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c054818
	bra loc_8c054948 ; return 0
	nop

loc_8c054818:
	mov.b @(0x2,r14),r0
	mov r6,r2
	add 0x18,r2
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r2,r0
	mov.l @(r0,r8),r3
	mov.w @(loc_8c054888,PC),r0
	mov.w @(r0,r3),r2
	tst r2,r2
	bt loc_8c054838
	bra loc_8c054948 ; return 0
	nop

loc_8c054838:
	mov.l @(loc_8c05489c,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c054848
	bra loc_8c054948 ; return 0
	nop

loc_8c054848:
	mov.b @(0x2,r14),r0
	mov.l @(loc_8c054890,PC),r3
	extu.b r0,r0
	mov r0,r2
	mov.l @r3,r4
	shll r0
	mov r4,r1
	add r2,r0
	add 0x18,r1
	shll2 r0
	add r1,r0
	mov.l @(r0,r8),r2
	mov.w @(loc_8c05488a,PC),r0
	mov.w @(r0,r2),r1
	tst r1,r1
	bf loc_8c054904
	mov.w @(loc_8c05488c,PC),r5
	mov r13,r0
	nop
	add r5,r0
	xor 0x01,r0
	mov r0,r13
	bra loc_8c0548a0
	add 0x01,r13

;##############################################
loc_8c054878:
	#data 0x01f9
loc_8c05487a:
	#data 0x01fc
loc_8c05487c:
	#data 0x01d0
loc_8c05487e:
	#data 0x01ff
loc_8c054880:
	#data 0x0277
loc_8c054882:
	#data 0x00b6
loc_8c054884:
	#data 0x00b5
loc_8c054886:
	#data 0x01f1
loc_8c054888:
	#data 0x02a0
loc_8c05488a:
	#data 0x0420
loc_8c05488c:
	#data 0x00ff
	#align4
loc_8c054890:
	#data 0x8c2896b0
loc_8c054894:
	#data work.GameGlobalPointer
loc_8c054898:
	#data 0x8c2895f0
loc_8c05489c:
	#data loc_8c0559da

;----------------------------------------------
loc_8c0548a0:
	mov r12,r0
	nop
	add r5,r0
	mov r4,r1
	xor 0x01,r0
	mov r0,r12
	mov.b @(0x2,r14),r0
	add 0x01,r12
	extu.b r0,r0
	mov r0,r2
	shll r0
	add r2,r0
	add 0x18,r1
	shll2 r0
	extu.b r12,r5
	add r1,r0
	shll2 r5
	mov.l @(r0,r5),r2
	mov.b @r2,r1
	tst r1,r1
	bf.s loc_8c054948 ; return 0
	nop
	mov.b @(0x2,r14),r0
	mov r4,r2
	add 0x18,r2
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r2,r0
	mov.l @(r0,r5),r3
	mov.w @(loc_8c05495c,PC),r0
	mov.w @(r0,r3),r2
	tst r2,r2
	bf loc_8c054948 ; return 0
	mov.b @(0x2,r14),r0
	mov r4,r2
	add 0x18,r2
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r2,r0
	mov.l @(r0,r5),r3
	mov.w @(loc_8c05495e,PC),r0
	mov.w @(r0,r3),r2
	tst r2,r2
	bt loc_8c054948 ; return 0

loc_8c054904:
	mov 0x03,r3
	extu.b r13,r13
	cmp/ge r3,r13
	bt.s loc_8c054938
	mov 0x00,r8
	mov.w @(loc_8c054960,PC),r0
	mov 0x1C,r5
	mov.l @(loc_8c054968,PC),r2
	mov.b r12,@(r0,r14)
	jsr @r2
	mov r14,r4
	mov r8,r0
	nop
	mov.b r0,@(0x7,r14)
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c054962,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c054932
	mov.w @(loc_8c054964,PC),r0
	bra loc_8c054942
	mov.b r8,@(r0,r14)

loc_8c054932:
	mov.w @(loc_8c054964,PC),r0
	bra loc_8c054942
	mov.b r9,@(r0,r14)

loc_8c054938:
	mov.w @(loc_8c054960,PC),r0
	mov 0xFF,r2
	mov.b r12,@(r0,r14)
	add 0x45,r0
	mov.b r2,@(r0,r14)

loc_8c054942:
	mov.b r8,@r11
	bra loc_8c05494a
	mov 0x01,r0

loc_8c054948:
	mov 0x00,r0

loc_8c05494a:
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
loc_8c05495c:
	#data 0x02a0
loc_8c05495e:
	#data 0x0420
loc_8c054960:
	#data 0x0257
loc_8c054962:
	#data 0x01f9
loc_8c054964:
	#data 0x0256
	#align4
loc_8c054968:
	#data loc_8c0530d8

;==============================================
loc_8c05496c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c054a34,PC),r0
	mov r4,r14
	mov.b @(r0,r14),r4
	extu.b r4,r0
	cmp/eq 0x02,r0
	bf.s loc_8c054986
	mov r0,r4
	bra loc_8c054b0a
	nop

loc_8c054986:
	mov r4,r0
	nop
	cmp/eq 0x03,r0
	bf loc_8c054992
	bra loc_8c054b0a
	nop

loc_8c054992:
	mov.l @(loc_8c054a44,PC),r2
	mov 0x05,r1
	mov.l @r2,r5
	mov.b @r5,r3
	extu.b r3,r3
	cmp/ge r1,r3
	bf loc_8c0549a4
	bra loc_8c054b0a
	nop

loc_8c0549a4:
	mov.b @(0x2,r14),r0
	mov r5,r3
	add 0x34,r3
	extu.b r0,r0
	add r3,r0
	mov.b @r0,r2
	mov 0x01,r4
	cmp/gt r4,r2
	bf loc_8c0549ba
	bra loc_8c054b0a
	nop

loc_8c0549ba:
	mov.w @(loc_8c054a36,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0549c6
	bra loc_8c054b0a
	nop

loc_8c0549c6:
	mov.w @(loc_8c054a38,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0549f0
	mov.w @(loc_8c054a3a,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0549da
	bra loc_8c054b0a
	nop

loc_8c0549da:
	mov.w @(loc_8c054a3c,PC),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x7A,r0
	bt loc_8c0549e6
	bra loc_8c054b0a
	nop

loc_8c0549e6:
	mov.l @(loc_8c054a48,PC),r2
	jsr @r2
	mov r14,r4
	bra loc_8c054a80
	mov r0,r13

loc_8c0549f0:
	mov.l @(loc_8c054a4c,PC),r2
	mov.w @(loc_8c054a3e,PC),r0
	mov.l @r2,r5
	mov.b @(r0,r5),r3
	tst r3,r3
	bt loc_8c054a58
	mov.l @(loc_8c054a50,PC),r1
	mov.b @r1,r3
	cmp/pl r3
	bf loc_8c054a58
	mov.b @(0x2,r14),r0
	mov 0x01,r1
	mov.l @(loc_8c054a50,PC),r3
	extu.b r0,r0
	mov.b @r3,r2
	shad r0,r1
	tst r1,r2
	bf loc_8c054a58
	mov.w @(loc_8c054a40,PC),r0
	mov.b @(r0,r5),r1
	tst r1,r1
	bt loc_8c054a58
	mov.w @(loc_8c054a42,PC),r0
	mov 0x14,r2
	mov.w @(r0,r14),r3
	cmp/gt r2,r3
	bt loc_8c054b0a
	mov.l @(loc_8c054a54,PC),r3
	jsr @r3
	nop
	mov 0x01,r13
	and r0,r13
	bra loc_8c054a80
	add 0x01,r13

;##############################################
loc_8c054a34:
	#data 0x01f9
loc_8c054a36:
	#data 0x01f1
loc_8c054a38:
	#data 0x0525
loc_8c054a3a:
	#data 0x045d
loc_8c054a3c:
	#data 0x0448
loc_8c054a3e:
	#data 0x00a6
loc_8c054a40:
	#data 0x00a9
loc_8c054a42:
	#data 0x0420
	#align4
loc_8c054a44:
	#data 0x8c2896b0
loc_8c054a48:
	#data loc_8c055dfa
loc_8c054a4c:
	#data work.GameGlobalPointer
loc_8c054a50:
	#data 0x8c212cdb
loc_8c054a54:
	#data bank03.loc_8c03319e

;----------------------------------------------
loc_8c054a58:
	mov.w @(loc_8c054b6c,PC),r5
	mov r15,r6
	mov.l @(loc_8c054b80,PC),r2
	mov r4,r13
	mov 0x00,r7
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c054a80
	mov.w @(loc_8c054b6e,PC),r5
	mov r15,r6
	mov.l @(loc_8c054b80,PC),r2
	mov 0x02,r13
	mov 0x00,r7
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c054b0a

loc_8c054a80:
	bsr loc_8c0559da
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c054b0a
	mov.b @(0x2,r14),r0
	extu.b r13,r5
	mov.l @(loc_8c054b84,PC),r3
	shll2 r5
	extu.b r0,r0
	mov.l @r3,r4
	mov r0,r2
	shll r0
	mov r4,r1
	add r2,r0
	add 0x18,r1
	shll2 r0
	add r1,r0
	mov.l @(r0,r5),r2
	mov.w @(loc_8c054b70,PC),r0
	mov.w @(r0,r2),r1
	tst r1,r1
	bf loc_8c054b0a
	mov.b @(0x2,r14),r0
	mov r4,r2
	add 0x18,r2
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r2,r0
	mov.l @(r0,r5),r3
	mov.w @(loc_8c054b72,PC),r0
	mov.w @(r0,r3),r2
	tst r2,r2
	bf loc_8c054b0e
	mov.b @(0x2,r14),r0
	mov 0x03,r2
	mov r4,r1
	xor r2,r13
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	add 0x18,r1
	shll2 r0
	extu.b r13,r5
	add r1,r0
	shll2 r5
	mov.l @(r0,r5),r3
	mov.w @(loc_8c054b70,PC),r0
	mov.w @(r0,r3),r1
	tst r1,r1
	bf loc_8c054b0a
	mov.b @(0x2,r14),r0
	mov r4,r2
	add 0x18,r2
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r2,r0
	mov.l @(r0,r5),r3
	mov.w @(loc_8c054b72,PC),r0
	mov.w @(r0,r3),r2
	tst r2,r2
	bf loc_8c054b0e

loc_8c054b0a:
	bra loc_8c054b2a
	mov 0x00,r0

loc_8c054b0e:
	mov.w @(loc_8c054b74,PC),r0
	mov 0x1C,r5
	mov.l @(loc_8c054b88,PC),r3
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov 0x00,r4
	mov r4,r0
	nop
	mov.b r0,@(0x7,r14)
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c054b76,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x01,r0

loc_8c054b2a:
	add 0x04,r15 
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;=============================================
; char programming points here
; returns in 0 or 1 in r0
loc_8c054b34:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	; r3 = plmem[0x0525]
	mov.w @(loc_8c054b78,PC),r0
	mov r4,r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c054b90
	; r3 = plmem[0x045d]
	mov.w @(loc_8c054b7a,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c054bae ; return 0
	; r0 = plmem[0x0448]
	mov.w @(loc_8c054b7c,PC),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x7B,r0
	bf loc_8c054bae ; return 0
	
	; call loc_8c055dfa()
	mov.l @(loc_8c054b8c,PC),r2
	jsr @r2
	mov r14,r4
	mov r0,r5
	add 0x02,r5
	mov.b r0,@r15
	bsr loc_8c054634
	mov r14,r4
	tst r0,r0
	bf loc_8c054ba4
	bra loc_8c054bae ; return 0
	nop

;##############################################
loc_8c054b6c:
	#data 0x0240
loc_8c054b6e:
	#data 0x0120
loc_8c054b70:
	#data 0x02a0
loc_8c054b72:
	#data 0x0420
loc_8c054b74:
	#data 0x0257
loc_8c054b76:
	#data 0x0256
loc_8c054b78:
	#data 0x0525
loc_8c054b7a:
	#data 0x045d
loc_8c054b7c:
	#data 0x0448
	#align4
loc_8c054b80:
	#data loc_8c055cf6
loc_8c054b84:
	#data 0x8c2896b0
loc_8c054b88:
	#data loc_8c0530d8
loc_8c054b8c:
	#data loc_8c055dfa

;----------------------------------------------
loc_8c054b90:
	mov 0x03,r5
	bsr loc_8c054634
	mov r14,r4
	tst r0,r0
	bf loc_8c054ba4
	mov 0x04,r5
	bsr loc_8c054634
	mov r14,r4
	tst r0,r0
	bt loc_8c054bae

loc_8c054ba4:
	mov 0x01,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c054bae:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
; called by loc_8c054d04
; returns 0 or 1 in r0
loc_8c054bb8:
	mov.w @(loc_8c054c4c,PC),r0;1d0
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0;(Plmem+1d0)
	extu.b r0,r0
	cmp/eq 0x12,r0
	bt loc_8c054bce
	bra loc_8c054cca
	nop

loc_8c054bce:
	mov.l @(loc_8c054c5c,PC),r13
	mov 0x05,r3
	mov.b @r13,r2
	extu.b r2,r2
	cmp/ge r3,r2
	bf loc_8c054bde
	bra loc_8c054cca
	nop

loc_8c054bde:
	mov.b @(0x2,r14),r0
	mov r13,r2
	add 0x18,r2
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	shll2 r5
	add r2,r0
	mov.l @(r0,r5),r3
	mov.w @(loc_8c054c4e,PC),r0
	mov.w @(r0,r3),r2
	tst r2,r2
	bf loc_8c054cca
	mov.b @(0x2,r14),r0
	mov r13,r3
	add 0x34,r3
	extu.b r0,r0
	mov.b @(r0,r3),r0
	cmp/eq 0x01,r0
	bf loc_8c054cca
	mov.w @(loc_8c054c50,PC),r6
	mov.l @(loc_8c054c60,PC),r5
	add r14,r6
	bsr loc_8c054e58
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c054cca
	mov.w @(loc_8c054c52,PC),r0
	mov.l @(r0,r14),r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c054cca
	mov.w @(loc_8c054c54,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c054cca
	mov.w @(loc_8c054c56,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c054c3e
	mov.l @(loc_8c054c64,PC),r3
	jsr @r3
	mov r14,r4
	bra loc_8c054c6a
	mov r0,r4

loc_8c054c3e:
	mov.w @(loc_8c054c58,PC),r0
	mov.w @(r0,r14),r0
	extu.w r0,r0
	tst 0x80,r0
	bt loc_8c054c68
	bra loc_8c054c6a
	mov 0x01,r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c054c4c:
	#data 0x01d0
loc_8c054c4e:
	#data 0x02a0;snapout
loc_8c054c50:
	#data 0x03dc
loc_8c054c52:
	#data 0x040c
loc_8c054c54:
	#data 0x01de
loc_8c054c56:
	#data 0x0525
loc_8c054c58:
	#data 0x03e2
	#align4

loc_8c054c5c:
	#data 0x8c2895f0
loc_8c054c60:
	#data bank14.loc_8c14eb1c
loc_8c054c64:
	#data loc_8c055dfa

;==============================================
loc_8c054c68:
	mov 0x02,r4

loc_8c054c6a:
	mov.b @(0x2,r14),r0
	mov r13,r2
	add 0x18,r2
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	extu.b r4,r3
	shll2 r0
	shll2 r3
	add r2,r0
	mov.l @(r0,r3),r2
	mov.w @(loc_8c054d78,PC),r0
	mov.w @(r0,r2),r1
	tst r1,r1
	bf loc_8c054cce
	mov.b @(0x2,r14),r0
	mov 0x03,r1
	mov r13,r2
	xor r1,r4
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	add 0x18,r2
	shll2 r0
	extu.b r4,r5
	add r2,r0
	shll2 r5
	mov.l @(r0,r5),r3
	mov.w @(loc_8c054d7a,PC),r0
	mov.w @(r0,r3),r2
	tst r2,r2
	bf loc_8c054cca
	mov.b @(0x2,r14),r0
	mov r13,r2
	add 0x18,r2
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r2,r0
	mov.l @(r0,r5),r3
	mov.w @(loc_8c054d78,PC),r0
	mov.w @(r0,r3),r2
	tst r2,r2
	bf loc_8c054cce

loc_8c054cca:
	; return 0
	bra loc_8c054cfc
	mov 0x00,r0

loc_8c054cce:
	mov.w @(loc_8c054d7c,PC),r0
	mov 0x00,r5
	mov 0x04,r3
	mov.b r5,@(r0,r14)
	mov.w @(loc_8c054d7e,PC),r0
	mov.b r4,@(r0,r14)
	add 0xFF,r0
	mov.b r3,@(r0,r14)
	mov r5,r0
	nop
	mov.l @(loc_8c054d8c,PC),r3
	mov 0x1C,r5
	mov.b r0,@(0x5,r14)
	mov.b r0,@(0x7,r14)
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c054d94,PC),r2
	mov 0x00,r5
	mov.l @(loc_8c054d90,PC),r6
	jsr @r2
	mov r14,r4
	; return 1
	mov 0x01,r0

loc_8c054cfc:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
; called by char programming 

; r5 = 0x01
; calls loc_8c054bb8()
; if r0 == 0 then return 1
; else return 0

loc_8c054d04:
	sts.l pr,@-r15
	bsr loc_8c054bb8
	mov 0x01,r5
	tst r0,r0
	bt loc_8c054d14
	lds.l @r15+,pr
	rts
	mov 0x01,r0


loc_8c054d14:
	mov 0x00,r0
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c054d1c:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(loc_8c054d80,PC),r6
	mov.l @(loc_8c054d98,PC),r5
	bsr loc_8c054e58
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_8c054d42
	mov.w @(loc_8c054d82,PC),r0
	mov.b @(r0,r14),r4
	extu.b r4,r4
	tst r4,r4
	bt loc_8c054d4a
	mov r4,r0
	nop
	cmp/eq 0x01,r0
	bt loc_8c054d4a

loc_8c054d42:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_8c054d4a:
	mov.w @(loc_8c054d84,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c054d5c
	mov.l @(loc_8c054d9c,PC),r3
	jsr @r3
	mov r14,r4
	bra loc_8c054d6c
	mov r0,r4

loc_8c054d5c:
	mov.w @(loc_8c054d86,PC),r0
	mov.w @(r0,r14),r0
	extu.w r0,r0
	tst 0x80,r0
	bt loc_8c054d6a
	bra loc_8c054d6c
	mov 0x01,r4

loc_8c054d6a:
	mov 0x02,r4

loc_8c054d6c:
	mov.w @(loc_8c054d88,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c054d78:
	#data 0x0420
loc_8c054d7a:
	#data 0x02a0
loc_8c054d7c:
	#data 0x01a0
loc_8c054d7e:
	#data 0x0257
loc_8c054d80:
	#data 0x03d4
loc_8c054d82:
	#data 0x01f9
loc_8c054d84:
	#data 0x0525
loc_8c054d86:
	#data 0x03da
loc_8c054d88:
	#data 0x01a3
	#align4
loc_8c054d8c:
	#data loc_8c0530d8
loc_8c054d90:
	#data 0x00700000
loc_8c054d94:
	#data loc_8c05a706
loc_8c054d98:
	#data bank14.loc_8c14eb2c
loc_8c054d9c:
	#data loc_8c055e50

;==============================================
loc_8c054da0:
	mov.l @(loc_8c054e94,PC),r2
	mov 0x05,r1
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8c054e86,PC),r0
	sts.l pr,@-r15
	mov.b @r2,r3
	mov.b @(r0,r14),r2
	extu.b r3,r3
	cmp/ge r1,r3
	tst r2,r2
	bt loc_8c054dd6
	mov.w @(loc_8c054e88,PC),r0
	mov.b @(r0,r14),r4
	extu.b r4,r3
	tst r3,r3
	bt loc_8c054e32
	extu.b r4,r2
	tst r2,r2
	bt loc_8c054dec
	mov.w @(loc_8c054e8a,PC),r0
	extu.b r5,r5
	mov.b @(r0,r14),r3
	cmp/eq r5,r3
	bt loc_8c054dec
	bra loc_8c054e32
	nop

loc_8c054dd6:
	mov.w @(loc_8c054e8c,PC),r0
	mov.w @(r0,r14),r0
	extu.w r0,r0
	tst 0x40,r0
	bt loc_8c054e32
	mov.w @(loc_8c054e8e,PC),r0
	mov.l @(loc_8c054e98,PC),r2
	mov.w @(r0,r14),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c054e32

loc_8c054dec:
	mov.w @(loc_8c054e90,PC),r0
	mov.b @(r0,r14),r4
	extu.b r4,r4
	tst r4,r4
	bt loc_8c054e28
	mov r4,r0
	nop
	cmp/eq 0x01,r0
	bt loc_8c054e28
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x23,r0
	bf loc_8c054e32
	mov.w @(loc_8c054e90,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c054e32
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bt loc_8c054e32
	bsr loc_8c0559da
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c054e50
	bra loc_8c054e32
	nop

loc_8c054e28:
	bsr loc_8c0559da
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c054e3a

loc_8c054e32:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_8c054e3a:
	mov.w @(loc_8c054e92,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x3A,r0
	bt loc_8c054e50
	mov.w @(loc_8c054e90,PC),r0
	mov 0x00,r2
	mov.b r2,@(r0,r14)

loc_8c054e50:
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c054e58:
;cpu
	mov.w @(loc_8c054e86,PC),r0
	mov.l r14,@-r15
	mov.b @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c054e9c

	mov r6,r14
	mov.w @(loc_8c054e88,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c054e80

	mov.w @(loc_8c054e8a,PC),r0
	mov.b @(r0,r4),r3
	mov.b @(0x4,r5),r0
	extu.b r0,r0
	cmp/eq r0,r3
	bf loc_8c054e80

	mov r14,r6
	mov 0x00,r7
	bra loc_8c055920
	mov.l @r15+,r14

loc_8c054e80:
	mov 0x00,r0
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c054e86:
	#data 0x0525
loc_8c054e88:
	#data 0x045d
loc_8c054e8a:
	#data 0x0448
loc_8c054e8c:
	#data 0x0340
loc_8c054e8e:
	#data 0x0348
loc_8c054e90:
	#data 0x01f9
loc_8c054e92:
	#data 0x041c
	#align4
loc_8c054e94:
	#data 0x8c2895f0
loc_8c054e98:
	#data 0x00008000

;==============================================
loc_8c054e9c:
	mov.b @r14,r0
	mov r14,r6
	mov.l @(loc_8c054fac,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r0
	jmp @r0
	mov.l @r15+,r14

;----------------------------------------------
loc_8c054eac:
	rts
	mov.l @r15+,r14

;==============================================
loc_8c054eb0:
	mov.l r14,@-r15
	mov 0x00,r0
	mov r6,r14
	mov.w @(loc_8c054faa,PC),r2
	sts.l pr,@-r15
	mov.b r0,@(0x2,r14)
	mov.w @(loc_8c054fa8,PC),r0
	mov.w @(r0,r4),r3
	mov.w @(0x8,r5),r0
	extu.w r3,r3
	extu.w r0,r0
	and r2,r3
	cmp/eq r0,r3
	bf loc_8c054eda
	bsr loc_8c055be4
	mov r14,r5
	mov 0x01,r4
	mov.b r4,@r14
	mov r4,r0
	nop
	mov.b r0,@(0x2,r14)

loc_8c054eda:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

;==============================================
loc_8c054ee2:
	mov.l r14,@-r15
	mov r6,r14
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(0x1,r14),r0
	add 0xFF,r0
	mov.b r0,@(0x1,r14)
	exts.b r0,r0
	cmp/pl r0
	bt.s loc_8c054f02
	mov r5,r12
	mov 0x00,r0
	bra loc_8c054f88
	mov.b r0,@r14

loc_8c054f02:
	mov.w @(loc_8c054fa8,PC),r0
	mov.w @(loc_8c054faa,PC),r2
	mov.w @(r0,r13),r3
	mov.b @(0x2,r14),r0
	extu.w r3,r3
	extu.b r0,r0
	shll r0
	add r12,r0
	mov.w @(0x8,r0),r0
	and r2,r3
	extu.w r0,r0
	cmp/eq r0,r3
	bf loc_8c054f86
	mov r14,r5
	bsr loc_8c055be4
	mov r13,r4
	mov.b @(0x2,r14),r0
	add 0x01,r0
	mov.b r0,@(0x2,r14)
	extu.b r0,r0
	mov.w @r12,r3
	extu.w r3,r3
	cmp/eq r3,r0
	bf loc_8c054f86
	mov.w @(0x2,r12),r0
	extu.w r0,r0
	tst 0x80,r0
	bt loc_8c054f4e
	lds.l @r15+,pr
	mov r12,r5
	mov.w @(loc_8c054fa8,PC),r0
	mov r13,r4
	mov r14,r6
	mov.l @r15+,r12
	mov.w @(r0,r13),r7
	mov.l @r15+,r13
	bra loc_8c055920
	mov.l @r15+,r14

loc_8c054f4e:
	mov.l @(loc_8c054fb0,PC),r3
	mov 0x4C,r1
	mov 0x02,r2
	mov.b r2,@r14
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x05,r0
	bt loc_8c054f70
	mov.b @(0x2,r13),r0
	mov.l @(loc_8c054fb4,PC),r2
	extu.b r0,r0
	mov.b @(r0,r2),r0
	mov r0,r3
	shll2 r0
	add r3,r0
	bra loc_8c054f72
	shll r0

loc_8c054f70:
	mov 0x00,r0

loc_8c054f72:
	mov r12,r5
	mov r13,r4
	add 0x0F,r0
	mov r14,r6
	mov.b r0,@(0x1,r14)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c054f92
	mov.l @r15+,r14

loc_8c054f86:
	mov 0x00,r0

loc_8c054f88:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c054f92:
	mov.l r14,@-r15
	mov.b @(0x1,r6),r0
	add 0xFF,r0
	mov.b r0,@(0x1,r6)
	exts.b r0,r0
	cmp/pl r0
	bt loc_8c054fb8
	mov 0x00,r0
	mov.b r0,@r6
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c054fa8:
	#data 0x034a
loc_8c054faa:
	#data 0x3c00
	#align4
loc_8c054fac:
	#data bank14.loc_8c14eb3c
loc_8c054fb0:
	#data work.GameGlobalPointer
loc_8c054fb4:
	#data 0x8c212c04

;==============================================
loc_8c054fb8:
	mov.w @(loc_8c0550d2,PC),r0
	mov.w @(r0,r4),r3
	add 0xFE,r0
	mov.w @(r0,r4),r14
	mov.b @(0x2,r6),r0
	xor r3,r14
	extu.b r0,r0
	shll r0
	add r5,r0
	mov.w @(0x8,r0),r0
	and r0,r14
	extu.w r14,r3
	tst r3,r3
	bt loc_8c055014
	mov r5,r7
	add 0x02,r7
	mov.w @r7,r2
	mov.l @(loc_8c0550e0,PC),r3
	extu.w r2,r2
	and r3,r2
	cmp/eq r3,r2
	bf loc_8c054ffe
	mov.b @(0x2,r6),r0
	extu.w r14,r1
	extu.b r0,r0
	shll r0
	add r5,r0
	mov.w @(0x8,r0),r0
	extu.w r0,r0
	cmp/eq r0,r1
	bt loc_8c05500e
	mov.b @r6,r3
	add 0x01,r3
	bra loc_8c055014
	mov.b r3,@r6

loc_8c054ffe:
	mov.w @r7,r0
	extu.w r0,r0
	and 0x40,r0
	cmp/eq 0x40,r0
	bf loc_8c05500e
	mov r14,r7
	bra loc_8c055920
	mov.l @r15+,r14

loc_8c05500e:
	mov r14,r7
	bra loc_8c055898
	mov.l @r15+,r14

loc_8c055014:
	mov 0x00,r0
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05501a:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r6,r14
	mov 0x00,r3
	mov r15,r6
	mov.l r4,@(0x4,r15)
	mov.l r5,@(0x8,r15)
	mov.b r3,@r14
	mov.b @(0x2,r14),r0
	mov.l @(0x8,r15),r3
	extu.b r0,r0
	mov r0,r5
	shll r5
	add r3,r5
	mov.w @(0x8,r5),r0
	mov r0,r5
	bsr loc_8c055cd4
	mov.l @(0x4,r15),r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c055058
	mov.l @(0x8,r15),r5
	mov r14,r6
	mov.w @r15,r7
	bsr loc_8c055898
	mov.l @(0x4,r15),r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c055058:
	mov 0x00,r0
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c055062:
	rts
	mov 0x00,r0

;==============================================
loc_8c055066:
	mov.w @(loc_8c0550d4,PC),r0
	mov.l r14,@-r15
	mov.b @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c055094
	mov r6,r14
	mov.w @(loc_8c0550d6,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c05508e
	mov.w @(loc_8c0550d8,PC),r0
	mov.b @(r0,r4),r3
	mov.b @(0x4,r5),r0
	extu.b r0,r0
	cmp/eq r0,r3
	bf loc_8c05508e
	mov r14,r6
	mov 0x00,r7
	bra loc_8c055920
	mov.l @r15+,r14

loc_8c05508e:
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_8c055094:
	mov.b @r14,r0
	mov r14,r6
	mov.l @(loc_8c0550e4,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r0
	jmp @r0
	mov.l @r15+,r14

loc_8c0550a4:
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0550a8:
	mov.w @(loc_8c0550da,PC),r0
	mov.w @(r0,r4),r3
	mov.w @(0x8,r5),r0
	extu.w r3,r3
	extu.w r0,r0
	tst r0,r3
	bf loc_8c0550bc
	mov 0x00,r0
	rts
	mov.b r0,@r6

loc_8c0550bc:
	mov.b @r5,r0
	mov.b r0,@(0x1,r6)
	mov.w @(loc_8c0550dc,PC),r0
	mov.b @(r0,r4),r0
	mov.b r0,@(0x2,r6)
	mov 0x00,r0
	mov.b @r6,r3
	add 0x01,r3
	mov.b r3,@r6
	rts
	nop

;==============================================
loc_8c0550d2:
	#data 0x034c
loc_8c0550d4:
	#data 0x0525
loc_8c0550d6:
	#data 0x045d
loc_8c0550d8:
	#data 0x0448
loc_8c0550da:
	#data 0x034a
loc_8c0550dc:
	#data 0x01d2
	#align4
loc_8c0550e0:
	#data 0x00008000
loc_8c0550e4:
	#data bank14.loc_8c14eb50

;==============================================
loc_8c0550e8:
	mov.b @(0x1,r6),r0
	add 0xFF,r0
	mov.b r0,@(0x1,r6)
	exts.b r0,r0
	cmp/pl r0
	bf loc_8c055108
	mov.w @(loc_8c0551f0,PC),r0
	mov.w @(r0,r4),r2
	mov.w @(0x8,r5),r0
	extu.w r2,r2
	extu.w r0,r0
	tst r0,r2
	bf loc_8c05510e
	mov 0x00,r1
	bra loc_8c05510e
	mov.b r1,@r6

loc_8c055108:
	mov.b @r6,r2
	add 0x01,r2
	mov.b r2,@r6

loc_8c05510e:
	rts
	mov 0x00,r0

;==============================================
loc_8c055112:
	add 0xFC,r15
	mov.w @(loc_8c0551f0,PC),r0
	mov r5,r7
	add 0x08,r7
	mov.w @r7,r2
	mov.w @(r0,r4),r3
	extu.w r2,r2
	extu.w r3,r3
	tst r2,r3
	bf loc_8c055148
	mov.w @r7,r3
	mov.w @(loc_8c0551f2,PC),r2
	extu.w r3,r3
	cmp/eq r2,r3
	bt.s loc_8c05514e
	mov.l r3,@r15
	mov.w @(loc_8c0551f4,PC),r0
	cmp/eq r0,r3
	bt loc_8c05514e
	mov.w @(loc_8c0551f6,PC),r3
	mov.b @(0x2,r6),r0
	add r4,r3
	mov.b @r3,r3
	cmp/eq r3,r0
	bt loc_8c05514e
	mov 0x00,r0
	mov.b r0,@r6

loc_8c055148:
	mov 0x00,r0
	rts
	add 0x04,r15

loc_8c05514e:
	mov.l @(loc_8c0551fc,PC),r2
	mov 0x4C,r1
	mov.b @r6,r3
	add 0x01,r3
	mov.b r3,@r6
	mov.l @r2,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x05,r0
	bt loc_8c055172
	mov.b @(0x2,r4),r0
	mov.l @(loc_8c055200,PC),r3
	extu.b r0,r0
	mov.b @(r0,r3),r0
	mov r0,r2
	shll2 r0
	add r2,r0
	bra loc_8c055174
	shll r0

loc_8c055172:
	mov 0x00,r0

loc_8c055174:
	add 0x0F,r0
	mov.b r0,@(0x1,r6)
	bra loc_8c055180
	add 0x04,r15

loc_8c05517c:
	rts
	add 0x04,r15

loc_8c055180:
	mov.b @(0x1,r6),r0
	add 0xFF,r0
	mov.b r0,@(0x1,r6)
	exts.b r0,r0
	cmp/pl r0
	bt loc_8c055192
	mov 0x00,r0
	rts
	mov.b r0,@r6

loc_8c055192:
	mov r5,r7
	add 0x0A,r7
	mov.w @r7,r3
	mov.w @(loc_8c0551f8,PC),r2
	extu.w r3,r3
	cmp/eq r2,r3
	bf loc_8c0551ae
	mov.w @(loc_8c0551f0,PC),r0
	mov.w @r7,r3
	mov.w @(r0,r4),r1
	cmp/eq r3,r1
	bf loc_8c0551bc
	bra loc_8c0551c0
	nop

loc_8c0551ae:
	mov.w @(loc_8c0551f0,PC),r0
	mov.w @r7,r1
	mov.w @(r0,r4),r3
	extu.w r1,r1
	extu.w r3,r3
	tst r1,r3
	bf loc_8c0551c0

loc_8c0551bc:
	rts
	mov 0x00,r0

loc_8c0551c0:
	mov.l @(loc_8c0551fc,PC),r3
	mov 0x4C,r1
	mov.b @r6,r2
	add 0x01,r2
	mov.b r2,@r6
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x05,r0
	bt loc_8c0551e4
	mov.b @(0x2,r4),r0
	mov.l @(loc_8c055200,PC),r2
	extu.b r0,r0
	mov.b @(r0,r2),r0
	mov r0,r3
	shll2 r0
	add r3,r0
	bra loc_8c0551e6
	shll r0

loc_8c0551e4:
	mov 0x00,r0

loc_8c0551e6:
	add 0x0F,r0
	bra loc_8c055204
	mov.b r0,@(0x1,r6)

loc_8c0551ec:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0551f0:
	#data 0x034a
loc_8c0551f2:
	#data 0x1000
loc_8c0551f4:
	#data 0x2000
loc_8c0551f6:
	#data 0x01d2
loc_8c0551f8:
	#data 0x0800
	#align4
loc_8c0551fc:
	#data work.GameGlobalPointer
loc_8c055200:
	#data 0x8c212c04

;==============================================
loc_8c055204:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.b @(0x1,r6),r0
	add 0xFF,r0
	mov.b r0,@(0x1,r6)
	exts.b r0,r0
	cmp/pl r0
	bt.s loc_8c05521c
	mov r4,r13
	mov 0x00,r0
	bra loc_8c05523e
	mov.b r0,@r6

loc_8c05521c:
	mov.w @(loc_8c055302,PC),r0
	mov r5,r14
	add 0x0C,r14
	mov.w @r14,r2
	mov.w @(r0,r13),r3
	extu.w r2,r2
	extu.w r3,r3
	tst r2,r3
	bt loc_8c05523c
	mov r13,r4
	mov.w @(r0,r13),r7
	mov.w @r14,r3
	mov.l @r15+,r13
	and r3,r7
	bra loc_8c055920
	mov.l @r15+,r14

loc_8c05523c:
	mov 0x00,r0

loc_8c05523e:
	mov.l @r15+,r13
	rts

;==============================================
loc_8c055242:
	mov.l @r15+,r14
	mov.w @(loc_8c055304,PC),r0
	mov.l r14,@-r15
	mov.b @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c055272
	mov r6,r14
	mov.w @(loc_8c055306,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c05526c
	mov.w @(loc_8c055308,PC),r0
	mov.b @(r0,r4),r3
	mov.b @(0x4,r5),r0
	extu.b r0,r0
	cmp/eq r0,r3
	bf loc_8c05526c
	mov r14,r6
	mov 0x00,r7
	bra loc_8c055920
	mov.l @r15+,r14

loc_8c05526c:
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_8c055272:
	mov.b @r14,r0
	mov r14,r6
	mov.l @(loc_8c05530c,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r0
	jmp @r0
	mov.l @r15+,r14

loc_8c055282:
	rts
	mov.l @r15+,r14

;==============================================
loc_8c055286:
	mov.w @(loc_8c05530a,PC),r0
	mov r5,r7
	add 0x08,r7
	mov.w @r7,r2
	mov.w @(r0,r4),r3
	extu.w r2,r2
	extu.w r3,r3
	tst r2,r3
	bf loc_8c05529e
	mov 0x00,r0
	rts
	mov.b r0,@r6

loc_8c05529e:
	mov.w @(r0,r4),r0
	mov.w @r7,r3
	and r3,r0
	mov.w r0,@(0x6,r6)
	mov 0x01,r0
	mov.b r0,@(0x2,r6)
	mov.b @r6,r3
	add 0x01,r3
	mov.b r3,@r6
	mov.b @(0x2,r5),r0
	mov.b r0,@(0x1,r6)
	mov.b @(0x2,r6),r0
	mov.w @r5,r3
	extu.b r0,r0
	extu.w r3,r3
	cmp/eq r0,r3
	bf loc_8c0552ea
	mov.l @(loc_8c055310,PC),r3
	mov 0x4C,r1
	mov 0x02,r2
	mov.b r2,@r6
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x05,r0
	bt loc_8c0552e2
	mov.b @(0x2,r4),r0
	mov.l @(loc_8c055314,PC),r2
	extu.b r0,r0
	mov.b @(r0,r2),r0
	mov r0,r3
	shll2 r0
	add r3,r0
	bra loc_8c0552e4
	shll r0

loc_8c0552e2:
	mov 0x00,r0

loc_8c0552e4:
	add 0x0E,r0
	bra loc_8c055382
	mov.b r0,@(0x1,r6)

loc_8c0552ea:
	mov 0x00,r0
	rts
	nop

;==============================================
loc_8c0552f0:
	mov.b @(0x1,r6),r0
	add 0xFF,r0
	mov.b r0,@(0x1,r6)
	exts.b r0,r0
	cmp/pl r0
	bt loc_8c055318
	mov 0x00,r0
	rts
	mov.b r0,@r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c055302:
	#data 0x034a
loc_8c055304:
	#data 0x0525
loc_8c055306:
	#data 0x045d
loc_8c055308:
	#data 0x0448
loc_8c05530a:
	#data 0x034e
	#align4
loc_8c05530c:
	#data bank14.loc_8c14eb64
loc_8c055310:
	#data work.GameGlobalPointer
loc_8c055314:
	#data 0x8c212c04

;==============================================
loc_8c055318:
	mov.w @(loc_8c055426,PC),r0
	mov r5,r7
	add 0x08,r7
	mov.w @r7,r2
	mov.w @(r0,r4),r3
	extu.w r2,r2
	extu.w r3,r3
	tst r2,r3
	bt loc_8c05537c
	mov.w @r7,r2
	mov.w @(r0,r4),r3
	mov.w @(0x6,r6),r0
	extu.w r2,r2
	extu.w r3,r3
	extu.w r0,r0
	and r2,r3
	cmp/eq r0,r3
	bf loc_8c05537c
	mov.b @(0x2,r6),r0
	add 0x01,r0
	mov.b r0,@(0x2,r6)
	mov.b @(0x2,r5),r0
	mov.b r0,@(0x1,r6)
	mov.b @(0x2,r6),r0
	mov.w @r5,r3
	extu.b r0,r0
	extu.w r3,r3
	cmp/eq r0,r3
	bf loc_8c05537c
	mov.l @(loc_8c05543c,PC),r3
	mov 0x4C,r1
	mov 0x02,r2
	mov.b r2,@r6
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x05,r0
	bt loc_8c055374
	mov.b @(0x2,r4),r0
	mov.l @(loc_8c055440,PC),r2
	extu.b r0,r0
	mov.b @(r0,r2),r0
	mov r0,r3
	shll2 r0
	add r3,r0
	bra loc_8c055376
	shll r0

loc_8c055374:
	mov 0x00,r0

loc_8c055376:
	add 0x0E,r0
	bra loc_8c055382
	mov.b r0,@(0x1,r6)

loc_8c05537c:
	mov 0x00,r0
	rts
	nop

loc_8c055382:
	mov.b @(0x1,r6),r0
	add 0xFF,r0
	mov.b r0,@(0x1,r6)
	exts.b r0,r0
	cmp/pl r0
	bt loc_8c055394
	mov 0x00,r0
	rts
	mov.b r0,@r6

loc_8c055394:
	mov.w @(loc_8c055426,PC),r0
	mov.w @(r0,r4),r3
	mov.w @(0x8,r5),r0
	extu.w r3,r3
	extu.w r0,r0
	and r0,r3
	mov.w @(0x6,r6),r0
	extu.w r0,r0
	cmp/eq r0,r3
	movt r0
	rts
	nop

;==============================================
loc_8c0553ac:
	mov.w @(loc_8c055428,PC),r0
	mov.l r14,@-r15
	mov.b @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c0553da
	mov r6,r14
	mov.w @(loc_8c05542a,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c0553d4
	mov.w @(loc_8c05542c,PC),r0
	mov.b @(r0,r4),r3
	mov.b @(0x4,r5),r0
	extu.b r0,r0
	cmp/eq r0,r3
	bf loc_8c0553d4
	mov r14,r6
	mov 0x00,r7
	bra loc_8c055920
	mov.l @r15+,r14

loc_8c0553d4:
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_8c0553da:
	mov.b @r14,r0
	mov r14,r6
	mov.l @(loc_8c055444,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r0
	jmp @r0
	mov.l @r15+,r14

loc_8c0553ea:
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0553ee:
	mov.l r14,@-r15
	mov.w @(loc_8c055430,PC),r0
	mov.l r13,@-r15
	mov r6,r13
	mov.w @(loc_8c05542e,PC),r3
	sts.l pr,@-r15
	mov.w @(r0,r4),r6
	and r3,r6
	extu.w r6,r2
	tst r2,r2
	bt.s loc_8c055420
	mov 0x00,r7
	mov.w @(loc_8c055432,PC),r3
	extu.w r6,r14
	cmp/eq r3,r14
	bt loc_8c055448
	mov.w @(loc_8c055434,PC),r1
	cmp/eq r1,r14
	bt loc_8c055448
	mov.w @(loc_8c055436,PC),r0
	cmp/eq r0,r14
	bt loc_8c055448
	mov.w @(loc_8c055438,PC),r2
	cmp/eq r2,r14
	bt loc_8c055448

loc_8c055420:
	mov.b r7,@r13
	bra loc_8c055482
	mov r7,r0

;##############################################
loc_8c055426:
	#data 0x034e
loc_8c055428:
	#data 0x0525
loc_8c05542a:
	#data 0x045d
loc_8c05542c:
	#data 0x0448
loc_8c05542e:
	#data 0x3c00
loc_8c055430:
	#data 0x034a
loc_8c055432:
	#data 0x2000
loc_8c055434:
	#data 0x1000
loc_8c055436:
	#data 0x0800
loc_8c055438:
	#data 0x0400
	#align4
loc_8c05543c:
	#data work.GameGlobalPointer
loc_8c055440:
	#data 0x8c212c04
loc_8c055444:
	#data bank14.loc_8c14eb70

;----------------------------------------------
loc_8c055448:
	mov.w @(loc_8c05552a,PC),r2
	cmp/eq r2,r14
	bf loc_8c055450
	mov r7,r6

loc_8c055450:
	mov.w @(loc_8c05552c,PC),r2
	cmp/eq r2,r14
	bf loc_8c055458
	mov 0x01,r6

loc_8c055458:
	mov.w @(loc_8c05552e,PC),r2
	cmp/eq r2,r14
	bf loc_8c055460
	mov 0x02,r6

loc_8c055460:
	mov.w @(loc_8c055530,PC),r2
	cmp/eq r2,r14
	bf.s loc_8c05546a
	mov.b @r13,r2
	mov 0x03,r6

loc_8c05546a:
	mov.w @(loc_8c055532,PC),r3
	add 0x01,r2
	mov.b r2,@r13
	mov.b @r5,r0
	add r3,r0
	mov.b r0,@(0x2,r13)
	mov r6,r0
	nop
	mov.b r0,@(0x3,r13)
	bsr loc_8c055be4
	mov r13,r5
	mov 0x00,r0

loc_8c055482:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05548a:
	mov.l r14,@-r15
	mov r6,r14
	sts.l pr,@-r15
	mov.b @(0x1,r14),r0
	add 0xFF,r0
	mov.b r0,@(0x1,r14)
	exts.b r0,r0
	cmp/pl r0
	bt loc_8c0554a6
	mov 0x00,r0
	mov.b r0,@r14
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c0554a6:
	mov.w @(loc_8c055534,PC),r0
	mov 0xF6,r2
	mov.w @(loc_8c055536,PC),r3
	mov.w @(r0,r4),r7
	extu.w r7,r7
	and r3,r7
	shad r2,r7
	extu.w r7,r1
	tst r1,r1
	bt loc_8c055502
	mov.b @(0x3,r14),r0
	extu.w r7,r5
	mov.l @(loc_8c055538,PC),r6
	extu.b r0,r0
	add 0x01,r0
	and 0x03,r0
	mov.b @(r0,r6),r3
	extu.b r3,r3
	cmp/eq r3,r5
	bf loc_8c0554d2
	bra loc_8c0554e4
	mov 0x01,r0

loc_8c0554d2:
	mov.b @(0x3,r14),r0
	extu.b r0,r0
	add 0xFF,r0
	and 0x03,r0
	mov.b @(r0,r6),r3
	extu.b r3,r3
	cmp/eq r3,r5
	bf loc_8c055502
	mov.w @(loc_8c055532,PC),r0

loc_8c0554e4:
	mov.b r0,@(0x4,r14)
	mov.b @r14,r3
	add 0x01,r3
	mov.b r3,@r14
	mov.b @(0x2,r14),r0
	add 0xFF,r0
	mov.b r0,@(0x2,r14)
	mov.b @(0x4,r14),r0
	mov r0,r3
	mov.b @(0x3,r14),r0
	add r3,r0
	and 0x03,r0
	mov.b r0,@(0x3,r14)
	bsr loc_8c055be4
	mov r14,r5

loc_8c055502:
	mov 0x00,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05550a:
	mov.l r14,@-r15
	mov r6,r14
	sts.l pr,@-r15
	mov.b @(0x1,r14),r0
	add 0xFF,r0
	mov.b r0,@(0x1,r14)
	exts.b r0,r0
	cmp/pl r0
	bt.s loc_8c05553c
	mov 0x00,r6
	mov.b r6,@r14
	mov r6,r0
	nop
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05552a:
	#data 0x2000
loc_8c05552c:
	#data 0x0800
loc_8c05552e:
	#data 0x1000
loc_8c055530:
	#data 0x0400
loc_8c055532:
	#data 0x00ff
loc_8c055534:
	#data 0x034a
loc_8c055536:
	#data 0x3c00
	#align4
loc_8c055538:
	#data bank14.loc_8c14eb88

;==============================================
loc_8c05553c:
	mov.w @(loc_8c05565c,PC),r0
	mov 0xF6,r2
	mov.w @(loc_8c05565e,PC),r3
	mov.w @(r0,r4),r7
	extu.w r7,r7
	and r3,r7
	shad r2,r7
	extu.w r7,r1
	tst r1,r1
	bt loc_8c0555c0
	mov.b @(0x3,r14),r0
	extu.w r7,r7
	mov.l @(loc_8c05566c,PC),r1
	extu.b r0,r3
	mov.b @(0x4,r14),r0
	extu.b r0,r0
	add r3,r0
	and 0x03,r0
	mov.b @(r0,r1),r2
	extu.b r2,r2
	cmp/eq r2,r7
	bf loc_8c0555c0
	mov.b @(0x2,r14),r0
	add 0xFF,r0
	mov.b r0,@(0x2,r14)
	extu.b r0,r0
	tst r0,r0
	bf loc_8c0555b0
	mov.w @(loc_8c055660,PC),r0
	mov 0x4C,r1
	mov.l @(loc_8c055670,PC),r2
	mov.b r6,@(r0,r4)
	mov.b @r14,r3
	add 0x01,r3
	mov.b r3,@r14
	mov.l @r2,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x05,r0
	bt loc_8c05559c
	mov.b @(0x2,r4),r0
	mov.l @(loc_8c055674,PC),r3
	extu.b r0,r0
	mov.b @(r0,r3),r0
	mov r0,r2
	shll2 r0
	add r2,r0
	bra loc_8c05559e
	shll r0

loc_8c05559c:
	mov 0x00,r0

loc_8c05559e:
	add 0x0F,r0
	mov.b r0,@(0x1,r14)
	mov r6,r0
	nop
	mov r14,r6
	mov.b r0,@(0x2,r14)
	lds.l @r15+,pr
	bra loc_8c054f92
	mov.l @r15+,r14

loc_8c0555b0:
	mov.b @(0x4,r14),r0
	mov r0,r3
	mov.b @(0x3,r14),r0
	add r3,r0
	and 0x03,r0
	mov.b r0,@(0x3,r14)
	bsr loc_8c055be4
	mov r14,r5

loc_8c0555c0:
	mov 0x00,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14
	mov.w @(loc_8c055662,PC),r0
	mov.l r14,@-r15
	mov.b @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c0555f6
	mov r6,r14
	mov.w @(loc_8c055664,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c0555f0
	mov.w @(loc_8c055666,PC),r0
	mov.b @(r0,r4),r3
	mov.b @(0x4,r5),r0
	extu.b r0,r0
	cmp/eq r0,r3
	bf loc_8c0555f0
	mov r14,r6
	mov 0x00,r7
	bra loc_8c055920
	mov.l @r15+,r14

loc_8c0555f0:
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_8c0555f6:
	mov.b @r14,r0
	mov r14,r6
	mov.l @(loc_8c055678,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r0
	jmp @r0
	mov.l @r15+,r14
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05560a:
	mov.l r14,@-r15
	mov 0x00,r0
	mov r6,r14
	mov.w @(loc_8c05566a,PC),r2
	sts.l pr,@-r15
	mov.b r0,@(0x2,r14)
	mov.w @(loc_8c055668,PC),r0
	mov.w @(r0,r4),r3
	mov.w @(0x8,r5),r0
	extu.w r3,r3
	extu.w r0,r0
	and r2,r3
	cmp/eq r0,r3
	bf loc_8c055634
	bsr loc_8c055be4
	mov r14,r5
	mov 0x01,r4
	mov.b r4,@r14
	mov r4,r0
	nop
	mov.b r0,@(0x2,r14)

loc_8c055634:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05563c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r6,r14
	mov.l r5,@r15
	mov.b @(0x1,r14),r0
	add 0xFF,r0
	mov.b r0,@(0x1,r14)
	exts.b r0,r0
	cmp/pl r0
	bt.s loc_8c05567c
	mov r4,r13
	mov 0x00,r0
	bra loc_8c0556da
	mov.b r0,@r14

;##############################################
loc_8c05565c:
	#data 0x034a
loc_8c05565e:
	#data 0x3c00
loc_8c055660:
	#data 0x035c
loc_8c055662:
	#data 0x0525
loc_8c055664:
	#data 0x045d
loc_8c055666:
	#data 0x0448
loc_8c055668:
	#data 0x034e
loc_8c05566a:
	#data 0x3f60
	#align4
loc_8c05566c:
	#data bank14.loc_8c14eb88
loc_8c055670:
	#data work.GameGlobalPointer
loc_8c055674:
	#data 0x8c212c04
loc_8c055678:
	#data bank14.loc_8c14eb8c

;----------------------------------------------
loc_8c05567c:
	mov.w @(loc_8c05575c,PC),r0
	mov.l @r15,r1
	mov.w @(r0,r13),r3
	mov.b @(0x2,r14),r0
	mov.w @(loc_8c05575e,PC),r2
	extu.w r3,r3
	extu.b r0,r0
	shll r0
	add r1,r0
	mov.w @(0x8,r0),r0
	and r2,r3
	extu.w r0,r0
	cmp/eq r0,r3
	bf loc_8c0556d8
	mov r14,r5
	bsr loc_8c055be4
	mov r13,r4
	mov.b @(0x2,r14),r0
	add 0x01,r0
	mov.b r0,@(0x2,r14)
	extu.b r0,r0
	mov.l @r15,r3
	mov.w @r3,r2
	extu.w r2,r2
	cmp/eq r2,r0
	bf loc_8c0556d8
	mov.l @(loc_8c055760,PC),r3
	mov 0x4C,r1
	mov 0x02,r2
	mov.b r2,@r14
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x05,r0
	bt loc_8c0556d2
	mov.b @(0x2,r13),r0
	mov.l @(loc_8c055764,PC),r2
	extu.b r0,r0
	mov.b @(r0,r2),r0
	mov r0,r3
	shll2 r0
	add r3,r0
	bra loc_8c0556d4
	shll r0

loc_8c0556d2:
	mov 0x00,r0

loc_8c0556d4:
	add 0x0F,r0
	mov.b r0,@(0x1,r14)

loc_8c0556d8:
	mov 0x00,r0

loc_8c0556da:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0556e4:
	mov.l r14,@-r15
	mov.b @(0x1,r6),r0
	add 0xFF,r0
	mov.b r0,@(0x1,r6)
	exts.b r0,r0
	cmp/pl r0
	bt loc_8c0556fa
	mov 0x00,r0
	mov.b r0,@r6
	rts
	mov.l @r15+,r14

loc_8c0556fa:
	mov.b @(0x2,r6),r0
	mov.w @(loc_8c05575c,PC),r3
	extu.b r0,r14
	shll r14
	add r4,r3
	add r5,r14
	mov.w @r3,r3
	mov.w @(0x8,r14),r0
	mov.w @(loc_8c05575e,PC),r14
	and r3,r0
	and r0,r14
	extu.w r14,r2
	tst r2,r2
	bt loc_8c055756
	mov r5,r7
	add 0x02,r7
	mov.w @r7,r3
	mov.l @(loc_8c055768,PC),r2
	extu.w r3,r3
	and r2,r3
	cmp/eq r2,r3
	bf loc_8c055740
	mov.b @(0x2,r6),r0
	extu.w r14,r1
	extu.b r0,r0
	shll r0
	add r5,r0
	mov.w @(0x8,r0),r0
	extu.w r0,r0
	cmp/eq r0,r1
	bt loc_8c055750
	mov.b @r6,r3
	add 0x01,r3
	bra loc_8c055756
	mov.b r3,@r6

loc_8c055740:
	mov.w @r7,r0
	extu.w r0,r0
	and 0x40,r0
	cmp/eq 0x40,r0
	bf loc_8c055750
	mov r14,r7
	bra loc_8c055920
	mov.l @r15+,r14

loc_8c055750:
	mov r14,r7
	bra loc_8c055898
	mov.l @r15+,r14

loc_8c055756:
	mov 0x00,r0
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05575c:
	#data 0x034e
loc_8c05575e:
	#data 0x3f60
	#align4
loc_8c055760:
	#data work.GameGlobalPointer
loc_8c055764:
	#data 0x8c212c04
loc_8c055768:
	#data 0x00008000

;==============================================
loc_8c05576c:
	mov.w @(loc_8c055888,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c0557ac
	mov r6,r13
	mov.w @(loc_8c05588a,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c05579c
	mov.w @(loc_8c05588c,PC),r0
	mov.b @(r0,r14),r3
	mov.b @(0x4,r5),r0
	extu.b r0,r0
	cmp/eq r0,r3
	bf loc_8c05579c
	mov.w @(0x8,r5),r0
	mov.w @(loc_8c05588e,PC),r1
	extu.w r0,r0
	add r14,r1
	not r0,r0
	mov.w r0,@r1

loc_8c05579c:
	mov.b @r13,r0
	mov.l @(loc_8c055894,PC),r1
	extu.b r0,r0
	mov.w @(loc_8c05588e,PC),r7
	shll2 r0
	mov.l @(r0,r1),r0
	bra loc_8c0557b8
	nop

loc_8c0557ac:
	mov.b @r13,r0
	mov.l @(loc_8c055894,PC),r1
	extu.b r0,r0
	mov.w @(loc_8c055890,PC),r7
	shll2 r0
	mov.l @(r0,r1),r0

loc_8c0557b8:
	mov r13,r6
	add r14,r7
	mov.l @r15+,r13
	mov r14,r4
	mov.w @r7,r7
	jmp @r0
	mov.l @r15+,r14

;==============================================
loc_8c0557c6:
	mov.w @(0x8,r5),r0
	extu.w r7,r7
	extu.w r0,r0
	tst r7,r0
	bf loc_8c0557d6
	mov 0x00,r0
	rts
	mov.b r0,@r6

loc_8c0557d6:
	mov.b @r5,r0
	mov.b r0,@(0x1,r6)
	mov 0x00,r0
	mov.b @r6,r3
	add 0x01,r3
	mov.b r3,@r6
	rts
	nop

;==============================================
loc_8c0557e6:
	mov.b @(0x1,r6),r0
	add 0xFF,r0
	mov.b r0,@(0x1,r6)
	exts.b r0,r0
	cmp/pl r0
	bf loc_8c055802
	mov.w @(0x8,r5),r0
	extu.w r7,r7
	extu.w r0,r0
	tst r7,r0
	bf loc_8c055808
	mov 0x00,r2
	bra loc_8c055808
	mov.b r2,@r6

loc_8c055802:
	mov.b @r6,r2
	add 0x01,r2
	mov.b r2,@r6

loc_8c055808:
	rts
	mov 0x00,r0

;==============================================
loc_8c05580c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x8,r5),r0
	and r7,r0
	mov.w r0,@r15
	extu.w r0,r0
	tst r0,r0
	bf.s loc_8c055844
	mov r6,r14
	mov.w @r15,r7
	bsr loc_8c055920
	mov r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_8c05583a
	mov 0x00,r3
	mov 0x01,r0
	mov.b r3,@r14
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c05583a:
	mov.b @r14,r3
	mov 0x0A,r0
	add 0x01,r3
	mov.b r3,@r14
	mov.b r0,@(0x1,r14)

loc_8c055844:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05584e:
	mov.l r14,@-r15
	mov r6,r14
	sts.l pr,@-r15
	mov.b @(0x1,r14),r0
	add 0xFF,r0
	mov.b r0,@(0x1,r14)
	exts.b r0,r0
	tst r0,r0
	bf loc_8c05586a
	mov 0x00,r0
	mov.b r0,@r14
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c05586a:
	bsr loc_8c055920
	mov r14,r6
	extu.b r0,r0
	tst r0,r0
	bf loc_8c05587c
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_8c05587c:
	mov 0x00,r3
	mov 0x01,r0
	mov.b r3,@r14
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c055888:
	#data 0x0525
loc_8c05588a:
	#data 0x045d
loc_8c05588c:
	#data 0x0448
loc_8c05588e:
	#data 0x04ae
loc_8c055890:
	#data 0x034a
	#align4
loc_8c055894:
	#data bank14.loc_8c14eba0

;==============================================
loc_8c055898:
	mov.w @(loc_8c055976,PC),r1
	extu.w r7,r2
	mov.l @(loc_8c055984,PC),r3
	tst r1,r2
	mov.l r14,@-r15
	bt.s loc_8c0558e0
	mov.l @r3,r14
	mov 0x4C,r0
	mov.b @(r0,r14),r0
	cmp/eq 0x05,r0
	bt loc_8c0558c6
	mov.b @(0x2,r4),r0
	mov.l @(loc_8c055988,PC),r2
	extu.b r0,r0
	mov.b @(r0,r2),r3
	mov r3,r0
	nop
	shll2 r3
	add r0,r3
	shll r3
	mov r3,r2
	bra loc_8c0558c8
	nop

loc_8c0558c6:
	mov 0x00,r2

loc_8c0558c8:
	mov.b @(0x1,r6),r0
	sub r2,r0
	add 0xFC,r0
	cmp/pz r0
	bt loc_8c055910
	mov.w @(0x2,r5),r0
	mov.l @(loc_8c05598c,PC),r3
	extu.w r0,r0
	tst r3,r0
	bf loc_8c0558e0
	mov.l @(loc_8c055990,PC),r1
	and r1,r7

loc_8c0558e0:
	mov.w @(loc_8c055978,PC),r2
	extu.w r7,r3
	tst r2,r3
	bt loc_8c055914
	mov 0x4C,r0
	mov.b @(r0,r14),r0
	cmp/eq 0x05,r0
	bt loc_8c055904
	mov.b @(0x2,r4),r0
	mov.l @(loc_8c055988,PC),r1
	extu.b r0,r0
	mov.b @(r0,r1),r3
	mov r3,r0
	nop
	shll2 r3
	add r0,r3
	bra loc_8c055906
	shll r3

loc_8c055904:
	mov 0x00,r3

loc_8c055906:
	mov.b @(0x1,r6),r0
	sub r3,r0
	add 0xFE,r0
	cmp/pz r0
	bf loc_8c055914

loc_8c055910:
	bra loc_8c055920
	mov.l @r15+,r14

loc_8c055914:
	mov 0x00,r4
	mov.b r4,@r6
	mov r4,r0
	nop
	rts
	mov.l @r15+,r14

;==============================================
loc_8c055920:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r6,@r15
	mov r4,r13
	mov r7,r0
	nop
	mov.w r0,@(0x4,r15)
	mov.w @(0x2,r5),r0
	mov.w @(loc_8c05597a,PC),r3
	mov r0,r4
	extu.w r4,r14
	tst r14,r3
	bf loc_8c05599e
	mov 0x20,r1
	tst r14,r1
	bt loc_8c05594e
	mov.w @(loc_8c05597c,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	tst 0xE0,r0
	bf loc_8c0559be

loc_8c05594e:
	mov.w @(loc_8c05597e,PC),r3
	tst r14,r3
	bt loc_8c055962
	bsr loc_8c055a98
	mov r13,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c05599e
	bra loc_8c0559be
	nop

loc_8c055962:
	mov.w @(loc_8c055980,PC),r2
	tst r14,r2
	bt loc_8c055994
	bsr loc_8c055afe
	mov r13,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c05599e
	bra loc_8c0559be
	nop

;##############################################
loc_8c055976:
	#data 0x0120
loc_8c055978:
	#data 0x02d0
loc_8c05597a:
	#data 0x4000
loc_8c05597c:
	#data 0x014a
loc_8c05597e:
	#data 0x0800
loc_8c055980:
	#data 0x0100
	#align4
loc_8c055984:
	#data work.GameGlobalPointer
loc_8c055988:
	#data 0x8c212c04
loc_8c05598c:
	#data 0x00008600
loc_8c055990:
	#data 0x0000fedf

;----------------------------------------------
loc_8c055994:
	bsr loc_8c0559da
	mov r13,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c0559be

loc_8c05599e:
	mov.w @(loc_8c055a76,PC),r2
	tst r14,r2
	bt loc_8c0559ae
	mov.w @(loc_8c055a78,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c0559be

loc_8c0559ae:
	mov.w @(loc_8c055a7a,PC),r3
	tst r3,r14
	bt loc_8c0559c2
	mov.w @(loc_8c055a78,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c0559c2

loc_8c0559be:
	bra loc_8c0559d0
	mov 0x00,r0

loc_8c0559c2:
	mov.l @r15,r3
	mov 0x00,r2
	mov.b r2,@r3
	mov.w @(0x4,r15),r0
	mov.l @r15,r3
	mov.w r0,@(0x6,r3)
	mov 0x01,r0

loc_8c0559d0:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
;Airdash jump subroutine 2
loc_8c0559da:
	mov.w @(loc_8c055a7c,PC),r0;1f2
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c055a6c

	mov.w @(loc_8c055a7e,PC),r0;1f3
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c055a6c

	mov.w @(loc_8c055a80,PC),r0;1d0
	mov.b @(r0,r4),r5
	extu.b r5,r0
	cmp/eq 0x12,r0
	bt.s loc_8c0559fe
	mov r0,r5
	mov r5,r0
	nop
	cmp/eq 0x13,r0
	bf loc_8c055a06

loc_8c0559fe:
	mov.w @(loc_8c055a82,PC),r0;1de
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c055a6c

loc_8c055a06:
	mov.w @(loc_8c055a84,PC),r0;14a
	mov.b @(r0,r4),r0
	extu.b r0,r0
	tst 0x20,r0
	bf loc_8c055a6c
	mov.b @(0x5,r4),r0
	tst r0,r0
	bf loc_8c055a6c


	mov.w @(loc_8c055a80,PC),r0;1d0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bt loc_8c055a6c

	mov.w @(loc_8c055a80,PC),r0;1d0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x1C,r0
	bt loc_8c055a6c

	mov.w @(loc_8c055a86,PC),r0;20c
	mov.l @(r0,r4),r2
	add 0x29,r0
	mov.b @(r0,r2),r3
	tst r3,r3
	bf loc_8c055a6c


	mov.w @(loc_8c055a78,PC),r0;1f9
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c055a5e

	mov.w @(loc_8c055a88,PC),r0;41c
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fcmp/gt fr3,fr2
	bf loc_8c055a6c

	mov.l @(loc_8c055a90,PC),r3;8c26a5b8
	mova @(0x3C,PC),r0
	fmov @r0,fr3;c2892492
	mov 0x38,r0
	fmov @r3,fr2
	fmov @(r0,r4),fr1;Ypos
	fadd fr3,fr2
	fcmp/gt fr1,fr2
	bf loc_8c055a6c

loc_8c055a5e:
	mov.w @(loc_8c055a80,PC),r0;1d0
	mov.b @(r0,r4),r3
	mov.l @(loc_8c055a94,PC),r0;8c14ebb0
	extu.b r3,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c055a70

loc_8c055a6c:
	rts
	mov 0x00,r0

loc_8c055a70:
	mov 0x01,r0
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c055a76:
	#data 0x2000
loc_8c055a78:
	#data 0x01f9
loc_8c055a7a:
	#data 0x1000
loc_8c055a7c:
	#data 0x01f2
loc_8c055a7e:
	#data 0x01f3
loc_8c055a80:
	#data 0x01d0
loc_8c055a82:
	#data 0x01de
loc_8c055a84:
	#data 0x014a
loc_8c055a86:
	#data 0x020c
loc_8c055a88:
	#data 0x041c
	#align4
loc_8c055a8c:
	#data 0xc2892492
loc_8c055a90:
	#data 0x8c26a5b8
loc_8c055a94:
	#data bank14.loc_8c14ebb0

;==============================================
loc_8c055a98:
	mov.b @(0x5,r4),r0
	tst r0,r0
	bf loc_8c055af4
	mov.w @(loc_8c055b72,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bt loc_8c055af4
	mov.w @(loc_8c055b72,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x1C,r0
	bt loc_8c055af4
	mov.w @(loc_8c055b74,PC),r0
	mov.l @(r0,r4),r2
	add 0x29,r0
	mov.b @(r0,r2),r3
	tst r3,r3
	bf loc_8c055af4
	mov.w @(loc_8c055b76,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c055ae6
	mov.w @(loc_8c055b78,PC),r0
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fcmp/gt fr3,fr2
	bf loc_8c055af4
	mov.l @(loc_8c055b8c,PC),r3
	mova @(0xB0,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @r3,fr2
	fmov @(r0,r4),fr1
	fadd fr3,fr2
	fcmp/gt fr1,fr2
	bf loc_8c055af4

loc_8c055ae6:
	mov.w @(loc_8c055b72,PC),r0
	mov.b @(r0,r4),r3
	mov.l @(loc_8c055b90,PC),r0
	extu.b r3,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c055af8

loc_8c055af4:
	rts
	mov 0x00,r0

loc_8c055af8:
	mov 0x01,r0
	rts
	nop

;==============================================
loc_8c055afe:
	mov.w @(loc_8c055b7a,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c055bda
	mov.w @(loc_8c055b7c,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c055bda
	mov.w @(loc_8c055b72,PC),r0
	mov.b @(r0,r4),r5
	extu.b r5,r0
	cmp/eq 0x12,r0
	bt.s loc_8c055b22
	mov r0,r5
	mov r5,r0
	nop
	cmp/eq 0x13,r0
	bf loc_8c055b2a

loc_8c055b22:
	mov.w @(loc_8c055b7e,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c055bda

loc_8c055b2a:
	mov.w @(loc_8c055b80,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	tst 0x20,r0
	bf loc_8c055bda
	mov.b @(0x5,r4),r0
	tst r0,r0
	bf loc_8c055bda
	mov.w @(loc_8c055b72,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bt loc_8c055bda
	mov.w @(loc_8c055b72,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x1C,r0
	bt loc_8c055bda
	mov.w @(loc_8c055b72,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c055b98
	mov.w @(loc_8c055b82,PC),r0
	mov.b @(r0,r4),r2
	cmp/pz r2
	bt loc_8c055b94
	mov.w @(loc_8c055b80,PC),r0
	mov.w @(loc_8c055b84,PC),r3
	mov.b @(r0,r4),r0
	extu.b r0,r0
	and 0xE0,r0
	cmp/eq r3,r0
	bt loc_8c055b98
	bra loc_8c055bda
	nop

;##############################################
loc_8c055b72:
	#data 0x01d0
loc_8c055b74:
	#data 0x020c
loc_8c055b76:
	#data 0x01f9
loc_8c055b78:
	#data 0x041c
loc_8c055b7a:
	#data 0x01f2
loc_8c055b7c:
	#data 0x01f3
loc_8c055b7e:
	#data 0x01de
loc_8c055b80:
	#data 0x014a
loc_8c055b82:
	#data 0x027a
loc_8c055b84:
	#data 0x0080
	#align4
loc_8c055b88:
	#data 0xc2892492
loc_8c055b8c:
	#data 0x8c26a5b8
loc_8c055b90:
	#data bank14.loc_8c14ebb0

;----------------------------------------------
loc_8c055b94:
	tst r2,r2
	bt loc_8c055bda

loc_8c055b98:
	mov.w @(loc_8c055c9a,PC),r0
	mov.l @(r0,r4),r3
	add 0x29,r0
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c055bda
	mov.w @(loc_8c055c9c,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c055bcc
	mov.w @(loc_8c055c9e,PC),r0
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fcmp/gt fr3,fr2
	bf loc_8c055bda
	mov.l @(loc_8c055cbc,PC),r3
	mova @(loc_8c055cb8,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @r3,fr2
	fmov @(r0,r4),fr1
	fadd fr3,fr2
	fcmp/gt fr1,fr2
	bf loc_8c055bda

loc_8c055bcc:
	mov.w @(loc_8c055ca0,PC),r0
	mov.b @(r0,r4),r3
	mov.l @(loc_8c055cc0,PC),r0
	extu.b r3,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c055bde

loc_8c055bda:
	rts
	mov 0x00,r0

loc_8c055bde:
	mov 0x01,r0
	rts
	nop

;==============================================
loc_8c055be4:
	mov.l r14,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c055cc8,PC),r3
	mov 0x4C,r1
	mov.l @(loc_8c055cc4,PC),r14
	mov.l r4,@(0x4,r15)
	mov.l r5,@r15
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x05,r0
	bf loc_8c055c0c
	mov.l @(loc_8c055ccc,PC),r2
	mov.l @r15,r8
	jsr @r2
	add 0x01,r8
	and 0x1F,r0
	bra loc_8c055c2e
	mov.b @(r0,r14),r0

loc_8c055c0c:
	mov.l @(loc_8c055ccc,PC),r2
	mov.l @r15,r8
	jsr @r2
	add 0x01,r8
	and 0x1F,r0
	mov.l @(0x4,r15),r3
	mov.b @(r0,r14),r0
	mov.l @(loc_8c055cd0,PC),r1
	mov r0,r2
	mov.b @(0x2,r3),r0
	extu.b r0,r0
	mov.b @(r0,r1),r0
	mov r0,r3
	shll2 r0
	add r3,r0
	shll r0
	add r2,r0

loc_8c055c2e:
	mov.b r0,@r8
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

;==============================================
loc_8c055c3a:
	mov.w @(loc_8c055ca2,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c055c5c
	mov.w @(loc_8c055ca4,PC),r0
	mov.b @(r0,r4),r3
	mov.w @(loc_8c055ca6,PC),r0
	mov.b r3,@(r0,r4)
	mov.w @(loc_8c055ca8,PC),r0
	mov.b @(r0,r4),r2
	mov.w @(loc_8c055caa,PC),r0
	mov.b r2,@(r0,r4)
	mov.w @(loc_8c055cac,PC),r0
	mov.w @(r0,r4),r3
	mov.w @(loc_8c055cae,PC),r0
	rts
	mov.w r3,@(r0,r4)

loc_8c055c5c:
	mov.w @(0x6,r5),r0
	mov.w @(loc_8c055cb0,PC),r3
	extu.w r0,r0
	tst r3,r0
	bt.s loc_8c055c6c
	mov 0x00,r6
	mov.w @(loc_8c055caa,PC),r0
	mov.b r6,@(r0,r4)

loc_8c055c6c:
	mov.w @(0x6,r5),r0
	mov.w @(loc_8c055cb2,PC),r3
	extu.w r0,r0
	tst r3,r0
	bt.s loc_8c055c7c
	mov 0x01,r7
	mov.w @(loc_8c055caa,PC),r0
	mov.b r7,@(r0,r4)

loc_8c055c7c:
	mov.w @(0x6,r5),r0
	mov.w @(loc_8c055cb4,PC),r3
	extu.w r0,r0
	tst r3,r0
	bt loc_8c055c8a
	mov.w @(loc_8c055ca6,PC),r0
	mov.b r6,@(r0,r4)

loc_8c055c8a:
	mov.w @(0x6,r5),r0
	extu.w r0,r0
	tst 0x60,r0
	bt loc_8c055c96
	mov.w @(loc_8c055ca6,PC),r0
	mov.b r7,@(r0,r4)
            
loc_8c055c96:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c055c9a:
	#data 0x020c
loc_8c055c9c:
	#data 0x01f9
loc_8c055c9e:
	#data 0x041c
loc_8c055ca0:
	#data 0x01d0
loc_8c055ca2:
	#data 0x0525
loc_8c055ca4:
	#data 0x04ab
loc_8c055ca6:
	#data 0x01fe
loc_8c055ca8:
	#data 0x04aa
loc_8c055caa:
	#data 0x01a3
loc_8c055cac:
	#data 0x04ac
loc_8c055cae:
	#data 0x01fa
loc_8c055cb0:
	#data 0x0240
loc_8c055cb2:
	#data 0x0120
loc_8c055cb4:
	#data 0x0300
	#align4

loc_8c055cb8:
	#data 0xc2892492
loc_8c055cbc:
	#data 0x8c26a5b8
loc_8c055cc0:
	#data bank14.loc_8c14ebb0
loc_8c055cc4:
	#data bank14.loc_8c14ebd3
loc_8c055cc8:
	#data work.GameGlobalPointer
loc_8c055ccc:
	#data bank03.loc_8c03319e
loc_8c055cd0:
	#data 0x8c212c04

;==============================================
; some kind of conditional test? possibly input related?
; r5 is a parameter, i've seen 0x90
; r0 appears to be the return value
; also writes to @(r6)
loc_8c055cd4:
	
	; r2 = (plmem[0x0440] ^ plmem[0x0342]) | (plmem[0x0344] ^ plmem[0x0342])
	; r3 = r5 & (plmem[0x0344] ^ plmem[0x0342])
	
	; @(r6) = (int16)r3
	; r0 = (int16)r2 == (int16)r3
	; return r0
	
	mov.w @(loc_8c055da0,PC),r0
	mov.w @(r0,r4),r7
	add 0x02,r0
	mov.w @(r0,r4),r3
	add 0xFC,r0
	mov.w @(r0,r4),r2
	xor r7,r3
	xor r7,r2
	or r2,r3
	and r5,r3
	mov.w r3,@r6
	extu.w r5,r2
	extu.w r3,r3
	cmp/eq r2,r3
	movt r0
	rts
	nop

;==============================================
;Air dash button check?
loc_8c055cf6:
	mov.w @(loc_8c055da2,PC),r0;525
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c055d14
	mov.w @(loc_8c055da4,PC),r0;45d
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c055d28
	mov.w @(loc_8c055da6,PC),r0;448
	extu.b r7,r7
	mov.b @(r0,r4),r3
	cmp/eq r7,r3
	bt loc_8c055d24
	bra loc_8c055d28
	nop

loc_8c055d14:
	mov.w @(loc_8c055da8,PC),r0;348
	extu.w r5,r3
	mov.w @(r0,r4),r2
	and r5,r2,
	mov.w r2,@r6
	extu.w r2,r2
	cmp/eq r3,r2
	bf loc_8c055d28

loc_8c055d24:
	rts
	mov 0x01,r0

loc_8c055d28:
	mov 0x00,r0
	rts
	nop

;==============================================
	mov.w @(loc_8c055daa,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c055d4e
	mov.w @(loc_8c055da2,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c055db2
	mov.w @(loc_8c055da8,PC),r0
	mov.w @(loc_8c055dac,PC),r2
	mov.w @(r0,r4),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c055d4e
	rts
	mov 0x01,r0

loc_8c055d4e:
	mov 0x00,r0
	rts
	nop

;==============================================
loc_8c055d54:
	mov.w @(loc_8c055daa,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c055d74
	mov.w @(loc_8c055da2,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c055db2
	mov.w @(loc_8c055da8,PC),r0
	mov.w @(loc_8c055dae,PC),r2
	mov.w @(r0,r4),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c055d74
	rts
	mov 0x01,r0

loc_8c055d74:
	mov 0x00,r0
	rts
	nop

loc_8c055d7a:
	mov.w @(loc_8c055daa,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c055d9a
	mov.w @(loc_8c055da2,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c055db2
	mov.w @(loc_8c055da8,PC),r0
	mov.w @(loc_8c055db0,PC),r2
	mov.w @(r0,r4),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c055d9a
	rts
	mov 0x01,r0

loc_8c055d9a:
	mov 0x00,r0
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c055da0:
	#data 0x0342
loc_8c055da2:
	#data 0x0525
loc_8c055da4:
	#data 0x045d
loc_8c055da6:
	#data 0x0448
loc_8c055da8:
	#data 0x0348
loc_8c055daa:
	#data 0x0411
loc_8c055dac:
	#data 0x3c00
loc_8c055dae:
	#data 0x0360
loc_8c055db0:
	#data 0x3f60

;==============================================
loc_8c055db2:
	mov.w @(loc_8c055eb6,PC),r0
	sts.l pr,@-r15
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c055df2
	mov.l @(loc_8c055ec0,PC),r3
	mov.l @r3,r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c055df2
	mov.l @(loc_8c055ec4,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c055ec8,PC),r3
	mov 0x01,r5
	and 0x1F,r0
	shad r0,r5
	mov.w @(loc_8c055eb8,PC),r0
	mov.l @r3,r4
	mov.b @(r0,r4),r4
	mov.l @(loc_8c055ecc,PC),r0
	shll2 r4
	shll2 r4
	shll r4
	shll2 r4
	mov.l @(r0,r4),r2
	tst r5,r2
	bt loc_8c055df2
	lds.l @r15+,pr
	rts
	mov 0x01,r0

loc_8c055df2:
	mov 0x00,r0
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c055dfa:
	mov.l @(loc_8c055ec0,PC),r3
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x2,r4),r0
	mov.l @r3,r5
	extu.b r0,r0
	mov r0,r2
	shll r0
	add r2,r0
	shll2 r0
	add 0x18,r5
	add r0,r5
	mov.w @(loc_8c055eba,PC),r0
	mov.l @(0x8,r5),r13
	mov.l @(0x4,r5),r14
	mov.w @(r0,r13),r1
	mov.w @(r0,r14),r2
	cmp/ge r1,r2
	bt loc_8c055e28
	mov r14,r4
	mov r13,r14
	mov r4,r13

loc_8c055e28:
	mov.l @(loc_8c055ec4,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c055ed4,PC),r3
	mov 0x1F,r4
	and r0,r4
	mov.l @(loc_8c055ed0,PC),r0
	mov.w @r3,r2
	extu.b r4,r4
	mov.b @(r0,r2),r2
	extu.b r2,r2
	cmp/gt r2,r4
	bf loc_8c055e44
	mov r13,r14

loc_8c055e44:
	lds.l @r15+,pr
	mov.w @(loc_8c055eb6,PC),r0
	mov.l @r15+,r13
	mov.b @(r0,r14),r0
	rts
	mov.l @r15+,r14

;==============================================
loc_8c055e50:
	mov.l @(loc_8c055ec0,PC),r3
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x2,r4),r0
	mov.l @r3,r5
	extu.b r0,r0
	xor 0x01,r0
	mov r0,r2
	shll r0
	add r2,r0
	add 0x18,r5
	shll2 r0
	add r0,r5
	mov.w @(loc_8c055ebc,PC),r0
	mov.l @(0x4,r5),r14
	mov.l @(0x8,r5),r13
	mov.w @(r0,r14),r2
	add 0xFC,r0
	mov.w @(r0,r14),r1
	add 0x04,r0
	sub r1,r2
	mov.w @(r0,r13),r1
	add 0xFC,r0
	mov.w @(r0,r13),r3
	sub r3,r1
	cmp/ge r1,r2
	bt loc_8c055e8e
	mov r14,r4
	mov r13,r14
	mov r4,r13

loc_8c055e8e:
	mov.l @(loc_8c055ec4,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c055ed4,PC),r2
	mov 0x1F,r4
	and r0,r4
	mov.l @(loc_8c055ed8,PC),r0
	mov.w @r2,r3
	extu.b r4,r4
	mov.b @(r0,r3),r3
	extu.b r3,r3
	cmp/gt r3,r4
	bf loc_8c055eaa
	mov r13,r14

loc_8c055eaa:
	lds.l @r15+,pr
	mov.w @(loc_8c055eb6,PC),r0
	mov.l @r15+,r13
	mov.b @(r0,r14),r0
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c055eb6:
	#data 0x0411
loc_8c055eb8:
	#data 0x0083
loc_8c055eba:
	#data 0x0420
loc_8c055ebc:
	#data 0x0424
	#align4
loc_8c055ec0:
	#data 0x8c2896b0
loc_8c055ec4:
	#data bank03.loc_8c03319e
loc_8c055ec8:
	#data work.GameGlobalPointer
loc_8c055ecc:
	#data bank14.loc_8c14ebf4
loc_8c055ed0:
	#data bank14.loc_8c14ec74
loc_8c055ed4:
	#data 0x8c289732
loc_8c055ed8:
	#data bank14.loc_8c14ec94

;==============================================
loc_8c055edc:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov 0x00,r12
	mov.l r11,@-r15
	mov 0x01,r11
	mov.w @(loc_8c055f8a,PC),r0
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov 0x02,r9
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c055f18
	mov r5,r13
	mov.w @(loc_8c055f8c,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c055f0a
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)

loc_8c055f0a:
	mov.w @(loc_8c055f8e,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c055f18
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)

loc_8c055f18:
	mov.w @(loc_8c055f90,PC),r0
	mov.w @(loc_8c055f92,PC),r3
	mov.w @(r0,r13),r2
	extu.w r2,r2
	tst r3,r2
	bt loc_8c055f42
	mov.b @(0x3,r13),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c055f42
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c055f42
	mov.w @(loc_8c055f94,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf loc_8c055f42
	bra loc_8c0563fc
	nop

loc_8c055f42:
	mov.w @(loc_8c055f96,PC),r0
	mov 0x1C,r3
	mov.w @(loc_8c055f98,PC),r2
	mov.b @(r0,r14),r0
	add r13,r2
	mov.w @(loc_8c055f9a,PC),r1
	extu.b r0,r0
	mov.l @r2,r2
	and 0x7F,r0
	mov.w @(loc_8c055f9c,PC),r4
	mul.l r3,r0
	add r14,r1
	add r14,r4
	mov 0x00,r3
	sts macl,r0
	add r2,r0
	mov.l @(loc_8c055fa0,PC),r2
	mov.l r0,@r1
	mov.l @r4,r1
	mov.w @(loc_8c055f9a,PC),r0
	and r2,r1
	or r3,r1
	mov.l @(r0,r14),r10
	tst r1,r1
	bt loc_8c055fa8
	lds.l @r15+,pr
	mov r13,r5
	mov.l @(loc_8c055fa4,PC),r1
	mov r14,r4
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r1
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c055f8a:
	#data 0x0525
loc_8c055f8c:
	#data 0x045f
loc_8c055f8e:
	#data 0x04a7
loc_8c055f90:
	#data 0x01ac
loc_8c055f92:
	#data 0x0200
loc_8c055f94:
	#data 0x01f6
loc_8c055f96:
	#data 0x01a2
loc_8c055f98:
	#data 0x0174
loc_8c055f9a:
	#data 0x01bc
loc_8c055f9c:
	#data 0x0414
	#align4
loc_8c055fa0:
	#data 0x07000000
loc_8c055fa4:
	#data loc_8c059ab4

;==============================================
loc_8c055fa8:
	mov.w @(loc_8c0560a8,PC),r0
	mov.w @(loc_8c0560aa,PC),r1
	mov.b @(r0,r14),r3
	add 0x01,r0
	add r14,r1
	mov.w @(loc_8c0560aa,PC),r2
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r12,@(r0,r14)
	add r13,r2
	mov.b @(0x5,r10),r0
	mov.b r0,@r1
	mov.b @(0x5,r10),r0
	mov.b r0,@r2
	mov.w @(loc_8c0560ac,PC),r0
	mov.b @(r0,r13),r3
	tst r11,r3
	bt loc_8c055fd8
	mov.w @(loc_8c0560ae,PC),r0
	mov.w @(loc_8c0560aa,PC),r2
	mov.l @(r0,r14),r1
	mov.b @(0x5,r10),r0
	add r1,r2
	mov.b r0,@r2

loc_8c055fd8:
	mov.w @(loc_8c0560b0,PC),r0
	mov.b r12,@(r0,r14)
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x0B,r0
	bf loc_8c055ffa
	mov.w @(loc_8c0560b2,PC),r0
	mov r13,r5
	mov.l @(r0,r14),r2
	mov 0x64,r0
	mov.l @(r0,r2),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c055ffa
	bra loc_8c05610a
	nop

loc_8c055ffa:
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x22,r0
	bf loc_8c056018
	mov.w @(loc_8c0560b2,PC),r0
	mov r13,r5
	mov.l @(r0,r14),r2
	mov 0x60,r0
	mov.l @(r0,r2),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c056018
	bra loc_8c05610a
	nop

loc_8c056018:
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x32,r0
	bf loc_8c056032
	mov.w @(loc_8c0560b2,PC),r0
	mov r13,r5
	mov.l @(r0,r14),r2
	mov 0x60,r0
	mov.l @(r0,r2),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c05610a

loc_8c056032:
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x1C,r0
	bt.s loc_8c056044
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x1D,r0
	bf loc_8c056054

loc_8c056044:
	mov.w @(loc_8c0560b2,PC),r0
	mov.l @(r0,r14),r3
	mov 0x60,r0
	mov.l @(r0,r3),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c05610a

loc_8c056054:
	mov.w @(loc_8c0560b4,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0560e2
	mov.w @(loc_8c0560b6,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c0560e2
	mov.l @(loc_8c0560bc,PC),r3
	mov.w @(loc_8c0560b8,PC),r1
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x02,r0
	bf loc_8c05608e
	mov r13,r5
	bsr loc_8c0569da
	mov r14,r4
	tst r0,r0
	bt loc_8c05608e
	mov r13,r5
	bsr loc_8c056b06
	mov r14,r4
	mov.w @(loc_8c0560ba,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c05608e
	bra loc_8c0563fc
	nop

loc_8c05608e:
	mov.l @(loc_8c0560c0,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c0560c6
	mov r13,r5
	bsr loc_8c056920
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bra loc_8c0560c4
	nop

;##############################################
loc_8c0560a8:
	#data 0x022a
loc_8c0560aa:
	#data 0x01a0
loc_8c0560ac:
	#data 0x019c
loc_8c0560ae:
	#data 0x01b8
loc_8c0560b0:
	#data 0x01e3
loc_8c0560b2:
	#data 0x0428
loc_8c0560b4:
	#data 0x0201
loc_8c0560b6:
	#data 0x0202
loc_8c0560b8:
	#data 0x00a7
loc_8c0560ba:
	#data 0x0420
	#align4
loc_8c0560bc:
	#data work.GameGlobalPointer
loc_8c0560c0:
	#data loc_8c0528da

;----------------------------------------------
loc_8c0560c4:
	bf loc_8c0560d0

loc_8c0560c6:
	mov r13,r5
	bsr loc_8c056a02
	mov r14,r4
	tst r0,r0
	bt loc_8c0560e2


loc_8c0560d0:
	mov r13,r5
	bsr loc_8c056b06
	mov r14,r4
	mov.w @(loc_8c05611e,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c0560e2
	bra loc_8c0563fc
	nop

loc_8c0560e2:
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c056122
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x1C,r0
	bt.s loc_8c0560fa
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x1D,r0
	bf loc_8c056122

loc_8c0560fa:
	mov.w @(loc_8c056120,PC),r0
	mov.l @(r0,r14),r3
	mov 0x64,r0
	mov.l @(r0,r3),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8c056122

loc_8c05610a:
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c056ae4
	mov.l @r15+,r14

;##############################################
loc_8c05611e:
	#data 0x0420
loc_8c056120:
	#data 0x0428

;----------------------------------------------
loc_8c056122:
	mov.l @(loc_8c0561f0,PC),r3
	mov 0x01,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c0561d8,PC),r0
	mov r13,r5
	mov.l @(loc_8c0561f4,PC),r3
	mov r10,r6
	mov.b r12,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c0561dc,PC),r0
	mov r13,r5
	mov.w @(loc_8c0561da,PC),r2
	mov.b r2,@(r0,r14)
	bsr loc_8c056454
	mov r14,r4
	mov.w @(loc_8c0561de,PC),r0
	mov.b r12,@(r0,r14)
	bsr loc_8c056f2e
	mov r14,r4
	mov.l @(loc_8c0561f8,PC),r3
	mov.w @(loc_8c0561e0,PC),r2
	mov.l @r3,r0
	add r0,r2
	mov.b @(0x2,r14),r0
	extu.b r0,r0
	xor 0x01,r0
	shll r0
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(loc_8c0561e2,PC),r0
	mov.b @(r0,r14),r4
	extu.b r4,r0
	cmp/eq 0x05,r0
	bt.s loc_8c056184
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x0C,r0
	bt loc_8c056184
	mov.w @(loc_8c0561e4,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c056184
	mov.w @(loc_8c0561e2,PC),r0
	mov 0x03,r3
	mov.b r3,@(r0,r14)

loc_8c056184:
	mov.w @(loc_8c0561e2,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x0C,r0
	bt loc_8c05619c
	mov.w @(loc_8c0561e6,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c05619c
	mov.w @(loc_8c0561e2,PC),r0
	mov 0x0C,r3
	mov.b r3,@(r0,r14)

loc_8c05619c:
	mov.w @(loc_8c0561e8,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c056204
	mov.w @(loc_8c0561e2,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bt loc_8c056204
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c0561c6
	mov.w @(loc_8c0561ea,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0561c6
	mov.w @(loc_8c0561ec,PC),r0
	mov.b @(r0,r14),r1
	tst r1,r1
	bf loc_8c0561fc

loc_8c0561c6:
	mov.w @(loc_8c0561ee,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bf loc_8c0561fc
	mov.w @(loc_8c0561e8,PC),r0
	bra loc_8c056204
	mov.b r9,@(r0,r14)

;##############################################
loc_8c0561d8:
	#data 0x0211
loc_8c0561da:
	#data 0x00ff
loc_8c0561dc:
	#data 0x0275
loc_8c0561de:
	#data 0x0201
loc_8c0561e0:
	#data 0x0080
loc_8c0561e2:
	#data 0x0233
loc_8c0561e4:
	#data 0x01e1
loc_8c0561e6:
	#data 0x029f
loc_8c0561e8:
	#data 0x01f9
loc_8c0561ea:
	#data 0x01d0
loc_8c0561ec:
	#data 0x0203
loc_8c0561ee:
	#data 0x041c
	#align4
loc_8c0561f0:
	#data bank03.loc_8c035162
loc_8c0561f4:
	#data loc_8c05a0b8
loc_8c0561f8:
	#data 0x8c2896b0

;----------------------------------------------
loc_8c0561fc:
	mov.w @(loc_8c0562d6,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)

loc_8c056204:
	mov.w @(loc_8c0562d8,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c0562a6
	mov.w @(loc_8c0562da,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c056220
	mov.w @(loc_8c0562da,PC),r0
	mov.l @(loc_8c0562ec,PC),r3
	mov.b r11,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_8c056220:
	mov.w @(loc_8c0562dc,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c05624a
	mov.w @(loc_8c0562de,PC),r0
	mov 0x1E,r2
	mov.l @(loc_8c0562f0,PC),r1
	mov 0x0C,r3
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.b r3,@(r0,r14)
	mov 0x06,r3
	mov.b @r1,r2
	extu.b r2,r2
	cmp/ge r3,r2
	bf loc_8c05624a
	mov.w @(loc_8c0562e0,PC),r2
	mov 0x08,r0
	add r14,r2
	mov.b r0,@r2

loc_8c05624a:
	mov.w @(loc_8c0562e2,PC),r0
	mov 0x0A,r4
	mov.b r4,@(r0,r14)
	add 0xFA,r0
	mov.b r9,@(r0,r14)
	add 0x6C,r0
	mov.b r12,@(r0,r14)
	mov.w @(loc_8c0562e4,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c05632a
	mov.w @(loc_8c0562e6,PC),r3
	mov.b r3,@(r0,r14)
	add 0xC4,r0
	mov.b r4,@(r0,r13)
	mov.b r4,@(r0,r14)
	add 0xFC,r0
	mov.b @(r0,r13),r3
	tst r11,r3
	bt loc_8c05627c
	mov.w @(loc_8c0562e8,PC),r0
	mov.l @(r0,r14),r1
	add 0xE8,r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r1)

loc_8c05627c:
	mov.l @(loc_8c0562f4,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c0562f8,PC),r2
	mov.b @(0x2,r14),r0
	mov.l @r2,r3
	extu.b r0,r0
	add 0x36,r3
	mov.b @(r0,r3),r1
	cmp/gt r9,r1
	bt loc_8c05629a
	mov.l @(loc_8c0562fc,PC),r1
	mov r13,r5
	jsr @r1
	mov r14,r4

loc_8c05629a:
	mov.l @(loc_8c056300,PC),r3
	mov 0x00,r5
	jsr @r3
	mov r14,r4
	bra loc_8c05632a
	nop

loc_8c0562a6:
	mov.w @(loc_8c0562ea,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c05630c
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c05631e
	mov.w @(loc_8c0562d6,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bf loc_8c0562cc
	mov.l @(loc_8c056304,PC),r2
	jsr @r2
	mov r14,r4
	bra loc_8c05631e
	nop

loc_8c0562cc:
	mov.l @(loc_8c056308,PC),r2
	jsr @r2
	mov r14,r4
	bra loc_8c05631e
	nop

;##############################################
loc_8c0562d6:
	#data 0x041c
loc_8c0562d8:
	#data 0x0420
loc_8c0562da:
	#data 0x01f9
loc_8c0562dc:
	#data 0x0233
loc_8c0562de:
	#data 0x022e
loc_8c0562e0:
	#data 0x022f
loc_8c0562e2:
	#data 0x0239
loc_8c0562e4:
	#data 0x01dc
loc_8c0562e6:
	#data 0x00ff
loc_8c0562e8:
	#data 0x01b8
loc_8c0562ea:
	#data 0x0202
	#align4
loc_8c0562ec:
	#data loc_8c05218a
loc_8c0562f0:
	#data 0x8c2895f0
loc_8c0562f4:
	#data bank03.loc_8c030fae
loc_8c0562f8:
	#data 0x8c2896b0
loc_8c0562fc:
	#data loc_8c059e86
loc_8c056300:
	#data bank04.loc_8c042008
loc_8c056304:
	#data loc_8c05176e
loc_8c056308:
	#data loc_8c051648

;----------------------------------------------
loc_8c05630c:
	mov.w @(loc_8c05640c,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c05632a
	mov.l @(loc_8c056424,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c05632a

loc_8c05631e:
	mov.l @(loc_8c056428,PC),r3
	mov r13,r5
	jsr @r3
	mov r14,r4
	bra loc_8c0563e6
	nop

loc_8c05632a:
	mov.w @(loc_8c05640e,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt loc_8c05633a
	mov.l @(loc_8c05642c,PC),r2
	jsr @r2
	mov r14,r4

loc_8c05633a:
	mov.l @(loc_8c056430,PC),r3
	jsr @r3
	nop
	tst r11,r0
	bf loc_8c05634a
	mov.l @(loc_8c056434,PC),r3
	jsr @r3
	mov r14,r4

loc_8c05634a:
	mov.l @(loc_8c056438,PC),r3
	mov.w @(loc_8c056410,PC),r1
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x01,r0
	bf loc_8c05635e
	mov.w @(loc_8c056412,PC),r2
	mov 0x3F,r0
	add r14,r2
	mov.b r0,@r2

loc_8c05635e:
	mov.w @(loc_8c056414,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c056370
	mov.b r12,@(r0,r14)

loc_8c056368:
	add 0x1E,r0
	mov.b r12,@(r0,r14)
	add 0x3B,r0
	mov.b r12,@(r0,r14)

loc_8c056370:
	mov.w @(loc_8c05640e,PC),r0
	mov 0x58,r3
	mov.w @(loc_8c056416,PC),r2
	mov r13,r5
	mov.b @(r0,r14),r0
	add r14,r2
	mov.l @(loc_8c05643c,PC),r1
	extu.b r0,r0
	mov.b @r2,r2
	mulu.w r3,r0
	extu.b r2,r2
	shll2 r2
	sts macl,r0
	add r0,r1
	add r1,r2
	mov.l @r2,r0
	jsr @r0
	mov r14,r4
	mov 0x03,r0
	mov.b r0,@(0x5,r14)
	mov r12,r0
	nop
	mov.b r0,@(0x7,r14)
	mov r14,r1
	mov.b r0,@(0x6,r14)
	add 0x50,r1
	mov.w @(loc_8c056418,PC),r0
	mov.w @(loc_8c05641c,PC),r2
	mov.b r12,@(r0,r14)
	mov.w @(loc_8c05641a,PC),r0
	add r14,r2
	mov.l @(loc_8c056440,PC),r3
	mov.b r11,@(r0,r14)
	mov 0x48,r0
	mov.l r12,@(r0,r14)
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c05641e,PC),r0
	mov 0x20,r5
	mov.l @(loc_8c056444,PC),r3
	fldi1 fr3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c056448,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c056420,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0563de
	mov.w @(loc_8c056422,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0563e6

loc_8c0563de:
	mov.l @(loc_8c05644c,PC),r3
	mov 0x28,r5
	jsr @r3
	mov r14,r4

loc_8c0563e6:
	lds.l @r15+,pr
	mov r13,r5
	mov.l @(loc_8c056450,PC),r2
	mov r14,r4
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c0563fc:
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05640c:
	#data 0x03f2
loc_8c05640e:
	#data 0x01f9
loc_8c056410:
	#data 0x00a7
loc_8c056412:
	#data 0x01ef
loc_8c056414:
	#data 0x01db
loc_8c056416:
	#data 0x0233
loc_8c056418:
	#data 0x0238
loc_8c05641a:
	#data 0x012c
loc_8c05641c:
	#data 0x0284
loc_8c05641e:
	#data 0x0108
loc_8c056420:
	#data 0x0235
loc_8c056422:
	#data 0x029f
	#align4
loc_8c056424:
	#data loc_8c059dee
loc_8c056428:
	#data loc_8c057650
loc_8c05642c:
	#data loc_8c05218a
loc_8c056430:
	#data bank03.loc_8c03319e
loc_8c056434:
	#data bank04.loc_8c04208c
loc_8c056438:
	#data work.GameGlobalPointer
loc_8c05643c:
	#data bank14.loc_8c14ecb4
loc_8c056440:
	#data bank12.loc_8c1294c8
loc_8c056444:
	#data loc_8c0530d8
loc_8c056448:
	#data loc_8c059edc
loc_8c05644c:
	#data bank04.loc_8c04223a
loc_8c056450:
	#data loc_8c0578c0

;==============================================
loc_8c056454:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c056520,PC),r0
	mov r4,r14
	mov.w @(loc_8c056522,PC),r1
	mov 0x00,r10
	mov.l @(r0,r14),r13
	add r14,r1
	mov.b @(0x3,r13),r0
	mov.b r0,@r1
	mov.w @(loc_8c056524,PC),r0
	mov.b r10,@(r0,r14)
	mov.w @(loc_8c056526,PC),r0
	mov.l @(r0,r14),r3
	mov.w @(loc_8c056528,PC),r0
	mov.b @(r0,r3),r2
	tst r2,r2
	bt.s loc_8c056490
	mov r5,r12
	mov.w @(loc_8c05652a,PC),r0
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)

loc_8c056490:
	mov.b @r13,r2
	mov 0x0D,r3
	mov 0x01,r11
	extu.b r2,r2
	cmp/gt r3,r2
	bf.s loc_8c0564a0
	mov r11,r5
	mov 0x03,r5

loc_8c0564a0:
	mov.l @(loc_8c056534,PC),r3
	mov.b @(0x2,r14),r0
	jsr @r3
	extu.b r0,r4
	mov.b @r13,r2
	mov.l @(loc_8c056538,PC),r9
	extu.b r2,r2
	mov.w r2,@r15
	exts.w r2,r2
	tst r2,r2
	bt loc_8c0564d8
	mov.b @r9,r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c05656a
	mov.w @(loc_8c05652c,PC),r0
	mov r13,r6
	mov.w @(loc_8c05652e,PC),r3
	mov.b @(r0,r12),r5
	mov.l @(loc_8c05653c,PC),r2
	extu.b r5,r5
	mov.w @r15,r7
	mulu.w r3,r5
	sts macl,r5
	add r2,r5
	bsr loc_8c05671a
	mov r14,r4
	mov.w r0,@r15

loc_8c0564d8:
	mov.b @r9,r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c05656a
	mov.w @(loc_8c056530,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c05656a
	mov.l @(loc_8c056540,PC),r3
	mov r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c056530,PC),r0
	mov.w @r15,r3
	mov.w @(r0,r14),r2
	sub r3,r2
	mov.w r2,@(r0,r14)
	exts.w r2,r2
	cmp/pl r2
	bt loc_8c05655c
	mov 0x12,r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	tst 0x20,r0
	bf loc_8c05654c
	mov.l @(loc_8c056544,PC),r3
	mov.w @(loc_8c056532,PC),r0
	mov.l @r3,r2
	mov.b @(r0,r2),r1
	tst r1,r1
	bf loc_8c05654c
	mov.l @(loc_8c056548,PC),r3
	jsr @r3
	mov r14,r4
	bra loc_8c05655c
	nop

;##############################################
loc_8c056520:
	#data 0x01bc
loc_8c056522:
	#data 0x0231
loc_8c056524:
	#data 0x029f
loc_8c056526:
	#data 0x01b8
loc_8c056528:
	#data 0x0411
loc_8c05652a:
	#data 0x0277
loc_8c05652c:
	#data 0x01a4
loc_8c05652e:
	#data 0x05a4
loc_8c056530:
	#data 0x0420
loc_8c056532:
	#data 0x00a6
	#align4
loc_8c056534:
	#data bank03.loc_8c031b48
loc_8c056538:
	#data 0x8c2895f0
loc_8c05653c:
	#data 0x8c268340
loc_8c056540:
	#data loc_8c05904a
loc_8c056544:
	#data work.GameGlobalPointer
loc_8c056548:
	#data loc_8c059426

;----------------------------------------------
loc_8c05654c:
	mov.w @(loc_8c056652,PC),r0
	mov.w r11,@(r0,r14)
	add 0x04,r0
	mov.w @(r0,r14),r3
	cmp/pl r3
	bt loc_8c05655c
	mov.w @(loc_8c056654,PC),r0
	mov.w r11,@(r0,r14)

loc_8c05655c:
	mov.l @(loc_8c05666c,PC),r3
	mov.w @r15,r5
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c056670,PC),r2
	jsr @r2
	mov r14,r4

loc_8c05656a:
	mov.w @(loc_8c056656,PC),r1
	mov.b @(0x2,r13),r0
	add r14,r1
	mov.w @(loc_8c056658,PC),r2
	mov.b r0,@r1
	mov.b @(0x6,r13),r0
	add r14,r2
	mov.w @(loc_8c05665a,PC),r1
	mov.b r0,@r2
	mov.b @(0x7,r13),r0
	add r14,r1
	extu.b r0,r0
	mov.w r0,@r1
	mov 0x01,r0
	mov.b @(r0,r13),r0
	and 0x1F,r0
	mov r0,r4
	mov.w @(loc_8c05665c,PC),r0
	mov.w @(r0,r12),r0
	extu.w r0,r0
	tst 0x08,r0
	bt loc_8c056598
	mov 0x09,r4

loc_8c056598:
	extu.b r4,r0
	cmp/eq 0x09,r0
	bf loc_8c0565c8
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c0565c8
	mov.w @(loc_8c05665e,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x09,r0
	bt loc_8c0565ba
	mov.w @(loc_8c05665e,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x17,r0
	bf loc_8c0565c8
 
loc_8c0565ba:
	mov.w @(loc_8c056660,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	and 0x07,r0
	cmp/eq 0x05,r0
	bt loc_8c0565c8
	mov r11,r4

loc_8c0565c8:
	extu.b r4,r0
	cmp/eq 0x14,r0
	bf loc_8c0565e2
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c0565e2
	mov.w @(loc_8c05665e,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x14,r0
	bf loc_8c0565e2
	mov r11,r4

loc_8c0565e2:
	mov.w @(loc_8c05665e,PC),r0
	mov.b r4,@(r0,r14)
	add 0xC6,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c056600
	mov.w @(loc_8c05665c,PC),r0
	mov.w @(r0,r12),r0
	extu.w r0,r0
	tst 0x40,r0
	bt loc_8c056600
	mov.w @(loc_8c056664,PC),r0
	mov.w @(loc_8c056662,PC),r2
	mov.b r2,@(r0,r14)

loc_8c056600:
	mov 0x16,r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bt loc_8c056628
	mov.w @(loc_8c056666,PC),r1
	mov.b @(r0,r13),r0
	add r14,r1
	and 0x3F,r0
	mov.b r0,@r1
	mov.w @(loc_8c056668,PC),r0
	mov.b r10,@(r0,r14)
	mov.b @(0x3,r12),r0
	tst r0,r0
	bf loc_8c056628
	mov.w @(loc_8c056666,PC),r0
	mov.b @(r0,r14),r2
	mov.b r2,@(r0,r12)
	add 0xB0,r0
	mov.b @(r0,r14),r3
	mov.b r3,@(r0,r12)

loc_8c056628:
	mov.b @(0x4,r13),r0
	mov r0,r8
	extu.b r8,r3
	tst r3,r3
	bt loc_8c0566ae
	mov.l @(loc_8c056674,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c056678,PC),r1
	and 0x1F,r0
	mov.b @(r0,r1),r3
	mov.w @(loc_8c05666a,PC),r0
	add r3,r8
	mov.b @(r0,r14),r4
	extu.b r4,r0
	cmp/eq 0x01,r0
	bt.s loc_8c05668e
	mov r0,r4
	extu.b r8,r2
	bra loc_8c05667c
	nop

;##############################################
loc_8c056652:
	#data 0x0420
loc_8c056654:
	#data 0x0424
loc_8c056656:
	#data 0x0230
loc_8c056658:
	#data 0x0232
loc_8c05665a:
	#data 0x022c
loc_8c05665c:
	#data 0x01ac
loc_8c05665e:
	#data 0x0233
loc_8c056660:
	#data 0x0231
loc_8c056662:
	#data 0x00ff
loc_8c056664:
	#data 0x01db
loc_8c056666:
	#data 0x01ed
loc_8c056668:
	#data 0x019d
loc_8c05666a:
	#data 0x01e1
	#align4
loc_8c05666c:
	#data loc_8c059914
loc_8c056670:
	#data loc_8c059718
loc_8c056674:
	#data bank03.loc_8c03319e
loc_8c056678:
	#data bank14.loc_8c14f27a

;----------------------------------------------
loc_8c05667c:
	cmp/gt r2,r4
	bt loc_8c05668e
	mov 0x14,r3
	extu.b r8,r2
	cmp/ge r3,r2
	bt loc_8c05668e
	mov.w @(loc_8c056784,PC),r0
	bra loc_8c0566ae
	mov.b r11,@(r0,r14)

loc_8c05668e:
	mov.w @(loc_8c056786,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0566ae
	mov.w @(loc_8c056788,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0566ae
	mov.w @(loc_8c056784,PC),r0
	mov.b @(r0,r14),r3
	sub r8,r3
	mov.b r3,@(r0,r14)
	exts.b r3,r3
	cmp/pz r3
	bt loc_8c0566ae
	mov.b r10,@(r0,r14)

loc_8c0566ae:
	mov.w @(loc_8c05678a,PC),r1
	mov.b @(0x8,r13),r0
	add r14,r1
	mov.b r0,@r1
	mov.w @(loc_8c05678c,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c0566c8
	mov 0x22,r0
	mov.b @(r0,r12),r2
	mov.w @(loc_8c05678a,PC),r0
	mov.b r2,@(r0,r14)

loc_8c0566c8:
	mov.w @(loc_8c05678e,PC),r1
	mov.b @(0x9,r13),r0
	add r14,r1
	mov.w @(loc_8c056792,PC),r2
	mov.b r0,@r1
	mov.w @(loc_8c056790,PC),r0
	mov.w @(r0,r12),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c0566e6
	mov.w @(loc_8c056794,PC),r0
	mov 0x0A,r3
	mov.b r3,@(r0,r14)
	add 0xFB,r0
	mov.b r10,@(r0,r14)

loc_8c0566e6:
	mov.w @(loc_8c056796,PC),r0
	mov 0x3C,r3
	mov.b r3,@(r0,r14)
	mov.b @r9,r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c056700
	mov.w @(loc_8c056798,PC),r0
	mov.l @(loc_8c0567a0,PC),r3
	mov.l @(r0,r14),r5
	add 0xFC,r0
	jsr @r3
	mov.l @(r0,r14),r4

loc_8c056700:
	mov 0x13,r0
	mov.b @(r0,r13),r2
	tst r2,r2
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
loc_8c05671a:
	exts.w r7,r3
	mov.l r14,@-r15
	lds r3,fpul
	mova @(loc_8c0567a4,PC),r0
	fmov @r0,fr4
	mov.w @(loc_8c05679a,PC),r0
	float fpul,fr7
	mov.l @(loc_8c0567a8,PC),r3
	mov.b @(r0,r5),r2
	tst r2,r2
	bt.s loc_8c056746
	mov.l @r3,r7
	mov 0x49,r0
	mov.b @(r0,r7),r2
	mov.l @(loc_8c0567ac,PC),r0
	extu.b r2,r2
	mov.b @(r0,r2),r2
	extu.b r2,r2
	lds r2,fpul
	float fpul,fr3
	fdiv fr4,fr3
	fmul fr3,fr7

loc_8c056746:
	mov.w @(loc_8c05679c,PC),r0
	mov 0x14,r2
	mov.b @(r0,r4),r3
	mov.w @(r0,r4),r14
	extu.b r3,r3
	cmp/gt r2,r3
	mov 0x13,r2
	extu.b r14,r3
	cmp/gt r2,r3
	bf.s loc_8c05675e
	fmov fr4,fr5
	mov r2,r14

loc_8c05675e:
	mov 0x12,r0
	mov.b @(r0,r6),r0
	extu.b r0,r0
	tst 0x08,r0
	bf loc_8c0567c2
	mov.b @(0x2,r6),r0
	extu.b r0,r0
	tst 0x20,r0
	bt.s loc_8c0567b4
	extu.b r14,r14
	mov.w @(loc_8c05679e,PC),r6
	mov.b @(0x2,r5),r0
	add r7,r6
	extu.b r0,r0
	mov.b @(r0,r6),r6
	mov.l @(loc_8c0567b0,PC),r0
	shll2 r6
	bra loc_8c0567b6
	mov.l @(r0,r6),r6

;##############################################
loc_8c056784:
	#data 0x01e1
loc_8c056786:
	#data 0x01df
loc_8c056788:
	#data 0x01e0
loc_8c05678a:
	#data 0x022e
loc_8c05678c:
	#data 0x01a2
loc_8c05678e:
	#data 0x022f
loc_8c056790:
	#data 0x01ac
loc_8c056792:
	#data 0x0400
loc_8c056794:
	#data 0x0233
loc_8c056796:
	#data 0x01e2
loc_8c056798:
	#data 0x01bc
loc_8c05679a:
	#data 0x0525
loc_8c05679c:
	#data 0x0270
loc_8c05679e:
	#data 0x0088
	#align4
loc_8c0567a0:
	#data loc_8c05a6c8
loc_8c0567a4:
	#data 0x42000000
loc_8c0567a8:
	#data 0x8c2896b0
loc_8c0567ac:
	#data bank14.loc_8c14f3da
loc_8c0567b0:
	#data bank14.loc_8c14ee14

;----------------------------------------------
loc_8c0567b4:
	mov.l @(loc_8c0568b4,PC),r6

loc_8c0567b6:
	mov r14,r0
	nop
	mov.b @(r0,r6),r3
	extu.b r3,r3
	lds r3,fpul
	float fpul,fr5

loc_8c0567c2:
	mov.w @(loc_8c0568a6,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bt.s loc_8c0567d2
	fldi1 fr6
	fldi1 fr3
	fadd fr3,fr3
	fadd fr3,fr5

loc_8c0567d2:
	fmul fr5,fr7
	fmov fr7,fr8
	fdiv fr4,fr8
	fcmp/gt fr8,fr6
	bf.s loc_8c0567e0
	mov.b @(0x1,r4),r0
	fmov fr6,fr8

loc_8c0567e0:
	mov.l @(loc_8c0568b8,PC),r1
	extu.b r0,r0
	mov.b @(r0,r1),r3
	mov.w @(loc_8c0568a8,PC),r0
	extu.b r3,r3
	lds r3,fpul
	mov.b @(r0,r4),r3
	float fpul,fr3
	tst r3,r3
	fmov fr3,fr7
	bt.s loc_8c05680c
	fdiv fr4,fr7
	mov 0x49,r0
	mov.b @(r0,r7),r3
	mov.l @(loc_8c0568bc,PC),r0
	extu.b r3,r3
	mov.b @(r0,r3),r3
	extu.b r3,r3
	lds r3,fpul
	float fpul,fr3
	fdiv fr4,fr3
	fmul fr3,fr7

loc_8c05680c:
	mov.l @(loc_8c0568c0,PC),r7
	mov 0x04,r14
	mov 0x00,r6

loc_8c056812:
	mov r6,r2
	shll2 r2
	mov.w @(loc_8c0568aa,PC),r0
	add r7,r2
	mov.w @r2,r1
	mov.w @(r0,r4),r3
	cmp/gt r1,r3
	bf loc_8c056828
	add 0x01,r6
	cmp/ge r14,r6
	bf loc_8c056812

loc_8c056828:
	shll2 r6
	mov.l @(loc_8c0568c4,PC),r2
	add r7,r6
	fmul fr7,fr8
	mov.w @(0x2,r6),r0
	mov r0,r3
	lds r3,fpul
	mov.l @r2,r3
	mov 0x1B,r0
	mov.b @(r0,r3),r1
	float fpul,fr3
	mov.l @(loc_8c0568c8,PC),r0
	mov.b @(r0,r1),r3
	mov.w @(loc_8c0568ac,PC),r0
	extu.b r3,r3
	fmov fr3,fr9
	lds r3,fpul
	fdiv fr4,fr9
	mov.b @(r0,r5),r3
	mov.l @(loc_8c0568cc,PC),r0
	float fpul,fr3
	extu.b r3,r3
	mov.b @(r0,r3),r3
	extu.b r3,r3
	lds r3,fpul
	fdiv fr4,fr3
	fmul fr9,fr8
	fmul fr3,fr8
	float fpul,fr3
	fmov fr8,fr5
	fdiv fr4,fr3
	fmul fr3,fr5
	fcmp/gt fr5,fr6
	bf loc_8c05686e
	fmov fr6,fr5

loc_8c05686e:
	mov.w @(loc_8c0568ae,PC),r0
	mov.l @(r0,r4),r2
	add 0x4D,r0
	mov.b @(r0,r2),r3
	mov 0x02,r2
	cmp/ge r2,r3
	bf loc_8c056888
	mova @(loc_8c0568d0,PC),r0
	fmov @r0,fr3
	fmul fr3,fr5
	fcmp/gt fr5,fr6
	bf loc_8c056888
	fmov fr6,fr5

loc_8c056888:
	fmul fr6,fr5
	fcmp/gt fr5,fr6
	bf loc_8c056890
	fmov fr6,fr5

loc_8c056890:
	mov.w @(loc_8c0568b0,PC),r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bt loc_8c0568d4
	mov.b @(r0,r5),r3
	extu.b r3,r3
	lds r3,fpul
	float fpul,fr3
	fdiv fr4,fr3
	bra loc_8c0568e8
	fmul fr3,fr5

;##############################################
loc_8c0568a6:
	#data 0x0411
loc_8c0568a8:
	#data 0x0525
loc_8c0568aa:
	#data 0x0420
loc_8c0568ac:
	#data 0x0543
loc_8c0568ae:
	#data 0x020c
loc_8c0568b0:
	#data 0x0205
	#align4
loc_8c0568b4:
	#data bank14.loc_8c14f41a
loc_8c0568b8:
	#data bank14.loc_8c14f4b6
loc_8c0568bc:
	#data bank14.loc_8c14f3fa
loc_8c0568c0:
	#data bank14.loc_8c14f496
loc_8c0568c4:
	#data work.GameGlobalPointer
loc_8c0568c8:
	#data bank14.loc_8c14f3ca
loc_8c0568cc:
	#data bank14.loc_8c14f3d2
loc_8c0568d0:
	#data 0x3f600000

;----------------------------------------------
loc_8c0568d4:
	mov.w @(loc_8c0569b2,PC),r0
	mov.b @(r0,r5),r2
	tst r2,r2
	bt loc_8c0568e8
	mov.b @(r0,r5),r3
	extu.b r3,r3
	lds r3,fpul
	float fpul,fr3
	fdiv fr4,fr3
	fmul fr3,fr5

loc_8c0568e8:
	mov.w @(loc_8c0569b4,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c0568fe
	mov.b @(r0,r4),r3
	extu.b r3,r3
	lds r3,fpul
	float fpul,fr3
	fdiv fr4,fr3
	bra loc_8c056912
	fmul fr3,fr5

loc_8c0568fe:
	mov.w @(loc_8c0569b6,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8c056912
	mov.b @(r0,r4),r3
	extu.b r3,r3
	lds r3,fpul
	float fpul,fr3
	fdiv fr4,fr3
	fmul fr3,fr5

loc_8c056912:
	fcmp/gt fr5,fr6
	bf loc_8c056918
	fmov fr6,fr5

loc_8c056918:
	ftrc fr5,fpul
	sts fpul,r0
	rts
	mov.l @r15+,r14

;==============================================
loc_8c056920:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c0569b8,PC),r0
	mov r4,r14
	mov.l r5,@r15
	mov.l @(r0,r14),r13
	mov.b @(0x2,r13),r0
	extu.b r0,r0
	tst 0x08,r0
	bf loc_8c0569ae
	mov.w @(loc_8c0569ba,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c05694a
	mov.l @(loc_8c0569c4,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c0569c8

loc_8c05694a:
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c0569ae
	mov.w @(loc_8c0569bc,PC),r0
	mov.b @(r0,r14),r4
	extu.b r4,r0
	cmp/eq 0x13,r0
	bt.s loc_8c056964
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x12,r0
	bf loc_8c0569ae

loc_8c056964:
	mov 0x02,r0
	mov.b @(r0,r13),r0
	and 0x0F,r0
	mov r0,r5
	extu.b r0,r0
	tst r0,r0
	bt loc_8c0569c8
	mov.w @(loc_8c0569be,PC),r6
	extu.b r5,r4
	mov r4,r0
	nop
	cmp/eq 0x02,r0
	bf loc_8c056996
	mov.w @(loc_8c0569c0,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0569c8
	mov.w @(loc_8c0569c2,PC),r0
	mov.w @(r0,r14),r2
	extu.w r2,r2
	tst r6,r2
	bt loc_8c0569c8
	bra loc_8c0569ae
	nop

loc_8c056996:
	cmp/eq 0x04,r0
	bf loc_8c0569ae
	mov.w @(loc_8c0569c0,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c0569c8
	mov.w @(loc_8c0569c2,PC),r0
	mov.w @(r0,r14),r2
	extu.w r2,r2
	tst r6,r2
	bf loc_8c0569c8

loc_8c0569ae:
	bra loc_8c0569d0
	mov 0x00,r0

;##############################################
loc_8c0569b2:
	#data 0x03ee
loc_8c0569b4:
	#data 0x0206
loc_8c0569b6:
	#data 0x03ef
loc_8c0569b8:
	#data 0x01bc
loc_8c0569ba:
	#data 0x0525
loc_8c0569bc:
	#data 0x01d0
loc_8c0569be:
	#data 0x1000
loc_8c0569c0:
	#data 0x01f9
loc_8c0569c2:
	#data 0x0340
	#align4
loc_8c0569c4:
	#data loc_8c05b6c4

;----------------------------------------------
loc_8c0569c8:
	mov.l @r15,r5
	bsr loc_8c057944
	mov r14,r4
	mov 0x01,r0

loc_8c0569d0:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0569da:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	bsr loc_8c056a36
	mov.l @r15,r4
	tst r0,r0
	bt loc_8c0569f2
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov 0x00,r0

loc_8c0569f2:
	mov.l @(0x4,r15),r5
	bsr loc_8c057944
	mov.l @r15,r4
	mov 0x01,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c056a02:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c056ace,PC),r0
	mov r4,r14
	mov.l r5,@r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c056a1c
	bsr loc_8c056a36
	mov r14,r4
	tst r0,r0
	bt loc_8c056a26

loc_8c056a1c:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c056a26:
	mov.l @r15,r5
	bsr loc_8c057944
	mov r14,r4
	mov 0x01,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c056a36:
	mov.w @(loc_8c056ad0,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8c056ad2,PC),r1
	sts.l pr,@-r15
	mov.l @(r0,r14),r4
	add r14,r1
	mov.b @(0x2,r4),r0
	mov.b r0,@r1
	mov.w @(loc_8c056ad2,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x08,r0
	bf loc_8c056abe
	mov.w @(loc_8c056ad4,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c056abe
	mov.w @(loc_8c056ad6,PC),r0
	mov.w @(loc_8c056ad8,PC),r1
	mov.l @(r0,r14),r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	tst 0xE0,r0
	bt loc_8c056abe
	mov 0x01,r0
	mov.w @(loc_8c056ada,PC),r1
	mov.b @(r0,r4),r0
	add r14,r1
	and 0x1F,r0
	mov.b r0,@r1
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt loc_8c056abe
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c056a8c
	mov.w @(loc_8c056adc,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bt loc_8c056abe

loc_8c056a8c:
	mov.w @(loc_8c056ade,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt loc_8c056abe
	mov.w @(loc_8c056adc,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x19,r0
	bt loc_8c056abe
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c056abe
	mov.l @(loc_8c056ae0,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c056abe
	mov.w @(loc_8c056ad8,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0xE0,r0
	bt loc_8c056ac6

loc_8c056abe:
	lds.l @r15+,pr
	mov 0x01,r0
	rts
	mov.l @r15+,r14

loc_8c056ac6:
	mov 0x00,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c056ace:
	#data 0x01ef
loc_8c056ad0:
	#data 0x01bc
loc_8c056ad2:
	#data 0x0230
loc_8c056ad4:
	#data 0x0411
loc_8c056ad6:
	#data 0x01b4
loc_8c056ad8:
	#data 0x014a
loc_8c056ada:
	#data 0x0233
loc_8c056adc:
	#data 0x01d0
loc_8c056ade:
	#data 0x01f9
	#align4
loc_8c056ae0:
	#data loc_8c0528da

;----------------------------------------------
loc_8c056ae4:
	mov.w @(loc_8c056bf0,PC),r0
	mov 0x10,r3
	mov.b @(r0,r5),r2
	or r3,r2
	mov.b r2,@(r0,r5)
	add 0xFE,r0
	mov.b @(r0,r5),r0
	tst 0x01,r0
	bt loc_8c056b02
	mov.w @(loc_8c056bf2,PC),r0
	mov.l @(r0,r4),r2
	add 0xE6,r0
	mov.b @(r0,r2),r1
	or r3,r1
	mov.b r1,@(r0,r2)

loc_8c056b02:
	bra loc_8c057944
	nop

;==============================================
loc_8c056b06:
	mov.w @(loc_8c056bf4,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	add 0x8E,r0
	mov.b @(r0,r14),r2
	mov 0x80,r3
	or r3,r2
	mov.b r2,@(r0,r14)
	add 0xFF,r0
	mov.b @(r0,r13),r1
	mov 0x01,r2
	or r2,r1
	mov.b r1,@(r0,r13)
	add 0xFE,r0
	mov.b @(r0,r13),r0
	tst r2,r0
	bt.s loc_8c056b42
	mov r14,r4
	mov.w @(loc_8c056bf2,PC),r0
	mov.l @(r0,r14),r3
	add 0xE6,r0
	mov.b @(r0,r3),r1
	or r2,r1
	mov.b r1,@(r0,r3)

loc_8c056b42:
	mov.l @(loc_8c056c04,PC),r3
	jsr @r3
	nop
	mov.l @(loc_8c056c08,PC),r2
	mov 0x01,r5
	jsr @r2
	mov r14,r4
	mov r13,r5
	bsr loc_8c056b6e
	mov r14,r4
	mov r13,r5
	bsr loc_8c057718
	mov r14,r4
	mov.w @(loc_8c056bf0,PC),r0
	mov.w @(loc_8c056bf6,PC),r3
	mov.b @(r0,r14),r2
	and r3,r2
	mov.b r2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c056b6e:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x00,r0
	mov r4,r14
	mov.b r0,@(0x5,r14)
	mov.w @(loc_8c056bf8,PC),r0
	mov.w @(loc_8c056bfa,PC),r1
	mov.l @(r0,r14),r4
	add r14,r1
	mov.b @(0x8,r4),r0
	mov.b r0,@r1
	mov.w @(loc_8c056bfc,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x80,r0
	bt.s loc_8c056ba4
	mov r15,r13
	mov 0x22,r0
	mov.b @(r0,r5),r2
	mov.w @(loc_8c056bfa,PC),r0
	mov.b r2,@(r0,r14)

loc_8c056ba4:
	mov.w @(loc_8c056bfe,PC),r1
	mov.b @(0x9,r4),r0
	add r14,r1
	mov.w @(loc_8c056c00,PC),r2
	mov.b r0,@r1
	mov.b @(0x2,r4),r0
	add r14,r2
	mov.b r0,@r2
	mov 0x14,r0
	mov.b @(r0,r4),r3
	mov.b r3,@r13
	extu.b r3,r3
	tst r3,r3
	bf loc_8c056c0e
	mov 0x12,r6
	mov.b r6,@r13
	mov.b @(0x2,r4),r0
	extu.b r0,r0
	tst 0xF0,r0
	bf loc_8c056c0e
	mov 0x03,r0
	mov.b @(r0,r4),r0
	and 0x70,r0
	mov.b r0,@(0x1,r13)
	extu.b r0,r0
	tst r0,r0
	bt loc_8c056c0e
	mov.b @(0x1,r13),r0
	extu.b r0,r0
	cmp/eq 0x20,r0
	bf loc_8c056be6
	bra loc_8c056bec
	mov 0x0E,r2

loc_8c056be6:
	cmp/eq 0x10,r0
	bf loc_8c056c0c
	mov 0x0B,r2

loc_8c056bec:
	bra loc_8c056c0e
	mov.b r2,@r13

;##############################################
loc_8c056bf0:
	#data 0x019e
loc_8c056bf2:
	#data 0x01b8
loc_8c056bf4:
	#data 0x0211
loc_8c056bf6:
	#data 0x0081
loc_8c056bf8:
	#data 0x01bc
loc_8c056bfa:
	#data 0x022e
loc_8c056bfc:
	#data 0x01a2
loc_8c056bfe:
	#data 0x022f
loc_8c056c00:
	#data 0x0230
	#align4
loc_8c056c04:
	#data loc_8c05218a
loc_8c056c08:
	#data bank03.loc_8c035162

;----------------------------------------------
loc_8c056c0c:
	mov.b r6,@r13

loc_8c056c0e:
	mov r13,r12
	mov.w @(loc_8c056c9e,PC),r0
	mov.b @r12,r2
	mov 0x0F,r10
	mov.w @(loc_8c056ca0,PC),r11
	mov.b r2,@(r0,r14)
	add 0xF2,r0
	mov.b @(r0,r14),r4
	extu.b r4,r0
	cmp/eq 0x12,r0
	bf.s loc_8c056c2e
	mov r0,r4
	mov.b @(0x6,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt loc_8c056c3e

loc_8c056c2e:
	mov r4,r0
	nop
	cmp/eq 0x13,r0
	bf loc_8c056caa
	mov.b @(0x6,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c056caa

loc_8c056c3e:
	mov.w @(loc_8c056ca2,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c056c4c
	bra loc_8c056dd2
	nop

loc_8c056c4c:
	mov.w @(loc_8c056ca4,PC),r0
	mov 0x03,r2
	mov.b r2,@r12
	mov.l @(r0,r14),r3
	add 0x49,r0
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c056c8a
	mov.w @(loc_8c056ca6,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	and r10,r0
	cmp/eq 0x04,r0
	bt loc_8c056c98
	mov.w @(loc_8c056ca6,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	and r10,r0
	cmp/eq 0x02,r0
	bf loc_8c056c78
	bra loc_8c056dc8
	nop

loc_8c056c78:
	mov.w @(loc_8c056ca8,PC),r0
	mov.w @(r0,r14),r2
	extu.w r2,r2
	tst r11,r2
	bf loc_8c056c86
	bra loc_8c056dc8
	nop

loc_8c056c86:
	bra loc_8c056c98
	nop

loc_8c056c8a:
	mov.w @(loc_8c056ca8,PC),r0
	mov.w @(r0,r14),r1
	extu.w r1,r1
	tst r11,r1
	bf loc_8c056c98
	bra loc_8c056dc8
	nop

loc_8c056c98:
	mov 0x07,r2
	bra loc_8c056dc8
	mov.b r2,@r12

;##############################################
loc_8c056c9e:
	#data 0x01de
loc_8c056ca0:
	#data 0x1000
loc_8c056ca2:
	#data 0x01f9
loc_8c056ca4:
	#data 0x01b8
loc_8c056ca6:
	#data 0x0230
loc_8c056ca8:
	#data 0x0340

;----------------------------------------------
loc_8c056caa:
	mov.w @(loc_8c056d88,PC),r0
	mov 0x14,r1
	mov.b r1,@(r0,r14)
	add 0x1C,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt.s loc_8c056cc6
	mov 0x01,r9
	mov.w @(loc_8c056d8a,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x13,r0
	bf loc_8c056d38

loc_8c056cc6:
	bsr loc_8c0570aa
	mov r14,r4
	mov.w @(loc_8c056d8c,PC),r0
	mov 0x13,r5
	mov.l @(loc_8c056d9c,PC),r3
	fmov @(r0,r14),fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov r9,r0
	nop
	mov.l @(loc_8c056da0,PC),r1
	mov.b r0,@(0x6,r14)
	mov 0x68,r0
	lds r1,fpul
	fmov @(r0,r14),fr2
	fsts fpul,fr3
	fdiv fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr1
	fldi0 fr2
	fcmp/gt fr2,fr1
	bf loc_8c056cfa
	fmov fr2,@(r0,r14)

loc_8c056cfa:
	mov.l @(loc_8c056da4,PC),r1
	fmov @(r0,r14),fr2
	lds r1,fpul
	fsts fpul,fr3
	fdiv fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(loc_8c056d8e,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c056d32
	mov.w @(loc_8c056d90,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c056d1e
	mov.w @(loc_8c056d92,PC),r0
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)

loc_8c056d1e:
	mova @(0x88,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_8c056d32
	mova @(0x80,PC),r0
	fmov @r0,fr2
	mov 0x60,r0
	fmov fr2,@(r0,r14)

loc_8c056d32:
	mov 0x02,r6
	bra loc_8c056dcc
	mov 0x06,r5

loc_8c056d38:
	bsr loc_8c05702e
	mov r14,r4
	mov.l @(loc_8c056d9c,PC),r2
	mov 0x12,r5
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c056d94,PC),r0
	mov 0x03,r3
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov.b r3,@r12
	mov r9,r0
	nop
	mov.b r0,@(0x1,r13)
	mov.w @(loc_8c056d96,PC),r0
	mov.l @(r0,r14),r3
	add 0x49,r0
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c056db0
	mov.w @(loc_8c056d98,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	and r10,r0
	cmp/eq 0x04,r0
	bt loc_8c056dba
	mov.w @(loc_8c056d98,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	and r10,r0
	cmp/eq 0x02,r0
	bt loc_8c056dc4
	mov.w @(loc_8c056d9a,PC),r0
	mov.w @(r0,r14),r2
	extu.w r2,r2
	tst r11,r2
	bt loc_8c056dc4
	bra loc_8c056dba
	nop

;##############################################
loc_8c056d88:
	#data 0x01dd
loc_8c056d8a:
	#data 0x01d0
loc_8c056d8c:
	#data 0x0218
loc_8c056d8e:
	#data 0x0201
loc_8c056d90:
	#data 0x01fc
loc_8c056d92:
	#data 0x0210
loc_8c056d94:
	#data 0x041c
loc_8c056d96:
	#data 0x01b8
loc_8c056d98:
	#data 0x0230
loc_8c056d9a:
	#data 0x0340
	#align4

loc_8c056d9c:
	#data loc_8c0530d8
loc_8c056da0:
	#data 0x43800000
loc_8c056da4:
	#data 0x41800000
loc_8c056da8:
	#data 0xbd892492
loc_8c056dac:
	#data 0xbf4db6db

;----------------------------------------------
loc_8c056db0:
	mov.w @(loc_8c056eae,PC),r0
	mov.w @(r0,r14),r1
	extu.w r1,r1
	tst r11,r1
	bt loc_8c056dc4

loc_8c056dba:
	mov 0x07,r2
	mov.b r2,@r12
	mov r9,r0
	nop
	mov.b r0,@(0x1,r13)

loc_8c056dc4:
	mov.b @(0x1,r13),r0
	mov.b r0,@(0x6,r14)

loc_8c056dc8:
	mov.b @r12,r6
	mov 0x05,r5

loc_8c056dcc:
	mov.l @(loc_8c056ec0,PC),r3
	jsr @r3
	mov r14,r4

loc_8c056dd2:
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
loc_8c056de4:
	mov.w @(loc_8c056eb0,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c056e0c
	mov.b @(0x5,r4),r0
	mov 0x01,r3
	extu.b r0,r0
	cmp/gt r3,r0
	bt loc_8c056e0c
	mov.w @(loc_8c056eb2,PC),r6
	mov.l @(loc_8c056ec4,PC),r1
	add r4,r6
	mov.w @(loc_8c056eb4,PC),r3
	mov.l @(0x4,r6),r0
	mov.l @r6,r2
	and r1,r0
	and r3,r2
	or r0,r2
	tst r2,r2
	bf loc_8c056e10

loc_8c056e0c:
	bra loc_8c056e14
	nop

loc_8c056e10:
	rts
	nop

;==============================================
loc_8c056e14:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c056e34
	mov.w @(loc_8c056eb6,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c056e34
	mov.w @(loc_8c056eb8,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c056f08

loc_8c056e34:
	mov.l @(loc_8c056ec8,PC),r2
	mov 0x52,r0
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bt loc_8c056e42
	add r5,r5

loc_8c056e42:
	exts.w r5,r3
	tst r3,r3
	bt loc_8c056f08
	exts.w r5,r2
	mov.w @(loc_8c056eba,PC),r7
	cmp/pl r2
	bf.s loc_8c056ed4
	mov 0x00,r4
	mov.l @(loc_8c056ecc,PC),r3
	mov.l @r3,r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c056f08
	mov.w @(loc_8c056eb6,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt loc_8c056f08
	mov.w @(loc_8c056ebc,PC),r0
	mov 0x05,r6
	mov.l @(r0,r14),r2
	mov.b @r2,r3
	cmp/ge r6,r3
	bf loc_8c056e7c
	mov.w @(loc_8c056ebe,PC),r0
	mov.l @(r0,r14),r3
	bra loc_8c056f08
	mov.w r4,@r3

loc_8c056e7c:
	mov.w @(loc_8c056ebe,PC),r0
	mov.l @(r0,r14),r13
	mov.w @r13,r13
	add r5,r13
	exts.w r13,r3
	cmp/gt r7,r3
	bf loc_8c056f02
	mov.w @(loc_8c056ebc,PC),r0
	mov.l @(r0,r14),r3
	mov.b @r3,r2
	add 0x01,r2
	mov.b r2,@r3
	exts.b r2,r2
	cmp/ge r6,r2
	bf.s loc_8c056ea2
	sub r7,r13
	mov.l @(r0,r14),r2
	mov r4,r13
	mov.b r6,@r2

loc_8c056ea2:
	mov.l @(loc_8c056ed0,PC),r3
	mov 0x45,r5
	jsr @r3
	mov r14,r4
	bra loc_8c056f02
	nop

;##############################################
loc_8c056eae:
	#data 0x0340
loc_8c056eb0:
	#data 0x0200
loc_8c056eb2:
	#data 0x0414
loc_8c056eb4:
	#data 0x0480
loc_8c056eb6:
	#data 0x0255
loc_8c056eb8:
	#data 0x019f
loc_8c056eba:
	#data 0x0090
loc_8c056ebc:
	#data 0x040c
loc_8c056ebe:
	#data 0x0408
	#align4
loc_8c056ec0:
	#data bank03.loc_8c034e8c
loc_8c056ec4:
	#data 0x02020000
loc_8c056ec8:
	#data work.GameGlobalPointer
loc_8c056ecc:
	#data 0x8c2896b0
loc_8c056ed0:
	#data bank04.loc_8c04223a

;----------------------------------------------
loc_8c056ed4:
	mov.w @(loc_8c056fb6,PC),r0
	mov.l @(r0,r14),r13
	mov.w @r13,r13
	add r5,r13
	exts.w r13,r3
	cmp/pz r3
	bt loc_8c056f02
	mov.w @(loc_8c056fb8,PC),r0
	mov.l @(r0,r14),r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c056f00
	mov.l @(r0,r14),r3
	mov.b @r3,r2
	add 0xFF,r2
	mov.b r2,@r3
	exts.b r2,r2
	cmp/pz r2
	bt.s loc_8c056f02
	add r7,r13
	mov.l @(r0,r14),r2
	mov.b r4,@r2

loc_8c056f00:
	mov r4,r13

loc_8c056f02:
	mov.w @(loc_8c056fb6,PC),r0
	mov.l @(r0,r14),r3
	mov.w r13,@r3

loc_8c056f08:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c056f10:
	mov.w @(loc_8c056fb8,PC),r0
	mov.l @(r0,r4),r3
	mov.b @r3,r2
	sub r5,r2
	mov.b r2,@r3
	exts.b r2,r2
	cmp/pz r2
	bt loc_8c056f26
	mov.l @(r0,r4),r2
	mov 0x00,r3
	mov.b r3,@r2

loc_8c056f26:
	rts
	nop

loc_8c056f2a:
	bra loc_8c056de4
	mov 0x08,r5

;==============================================
loc_8c056f2e:
	mov.w @(loc_8c056fba,PC),r0
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov 0x01,r11
	sts.l pr,@-r15
	mov.l @(r0,r4),r14
	add 0xFC,r0
	mov.l @(r0,r4),r13
	tst r13,r13
	bf.s loc_8c056f4c
	mov r11,r12
	mov.w @(loc_8c056fbc,PC),r0
	mov.l @(r0,r4),r13

loc_8c056f4c:
	mov.b @(0x2,r14),r0
	extu.b r0,r0
	tst 0x20,r0
	bf loc_8c056f7a
	mov.b @(0xE,r14),r0
	mov 0x3F,r12
	extu.b r0,r0
	and r0,r12
	exts.w r12,r3
	tst r3,r3
	bf loc_8c056f7a
	mov.b @(0x2,r14),r0
	extu.b r0,r0
	tst 0x40,r0
	bf loc_8c056f72
	mov.b @(0x2,r14),r0
	extu.b r0,r0
	tst 0x10,r0
	bt loc_8c056f76

loc_8c056f72:
	bra loc_8c056f7a
	mov 0x08,r12

loc_8c056f76:
	mov.w @(loc_8c056fbe,PC),r0
	mov.b @(r0,r13),r12

loc_8c056f7a:
	exts.w r12,r0
	tst 0x80,r0
	bf loc_8c056f84
	bsr loc_8c056e14
	mov r12,r5

loc_8c056f84:
	mov.b @(0x2,r14),r0
	extu.b r0,r0
	tst 0x20,r0
	bf loc_8c057022
	mov.b @(0xE,r14),r0
	extu.b r0,r0
	tst 0x40,r0
	bf loc_8c057022
	mov.b @(0xE,r14),r0
	mov 0x3F,r4
	extu.b r0,r0
	and r0,r4
	exts.w r4,r3
	tst r3,r3
	bf loc_8c056fc4
	mov.b @(0x2,r14),r0
	extu.b r0,r0
	tst 0x40,r0
	bf loc_8c056fb2
	mov.b @(0x2,r14),r0
	extu.b r0,r0
	tst 0x10,r0
	bt loc_8c056fc0

loc_8c056fb2:
	bra loc_8c056fc4
	mov 0x08,r4

;##############################################
loc_8c056fb6:
	#data 0x0408
loc_8c056fb8:
	#data 0x040c
loc_8c056fba:
	#data 0x01bc
loc_8c056fbc:
	#data 0x020c
loc_8c056fbe:
	#data 0x0410

;----------------------------------------------
loc_8c056fc0:
	mov.w @(loc_8c0570d8,PC),r0
	mov.b @(r0,r13),r4

loc_8c056fc4:
	exts.w r4,r5
	shll2 r5
	shll2 r5
	mov 0xFB,r3
	shll r5
	shad r3,r5
	exts.w r5,r2
	tst r2,r2
	bf.s loc_8c056fda
	mov 0x0A,r6
	mov r11,r5

loc_8c056fda:
	mov.w @(loc_8c0570da,PC),r0
	mov.w @(r0,r13),r4
	exts.w r4,r3
	cmp/gt r6,r3
	bf loc_8c056fe6
	mov r6,r4

loc_8c056fe6:
	mov.l @(loc_8c0570e8,PC),r0
	exts.w r4,r4
	mov 0xFB,r3
	mov.b @(r0,r4),r6
	muls.w r6,r5
	sts macl,r4
	shad r3,r4
	exts.w r4,r2
	tst r2,r2
	bf.s loc_8c056ffe
	mov.b @(0x1,r13),r0
	mov r11,r4


loc_8c056ffe:
	mov.l @(loc_8c0570ec,PC),r1
	extu.b r0,r0
	mov 0xFB,r3
	mov.b @(r0,r1),r6
	muls.w r6,r4
	sts macl,r5
	shad r3,r5
	exts.w r5,r2
	tst r2,r2
	bf.s loc_8c057016
	mov r13,r4
	mov r11,r5

loc_8c057016:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c056de4
	mov.l @r15+,r14

loc_8c057022:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05702e:
	mov.w @(loc_8c0570dc,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8c0570de,PC),r2
	sts.l pr,@-r15
	mov.w @(r0,r5),r3
	add 0x02,r0
	mov.w r3,@(r0,r14)
	add 0x0E,r0
	mov.l @(r0,r14),r4
	add 0xF2,r0
	mov.w @(r0,r14),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c057056
	bsr loc_8c0570aa
	mov r14,r4
	mov.w @(loc_8c0570e0,PC),r0
	bra loc_8c0570a0
	fmov @(r0,r14),fr3

loc_8c057056:
	mov.b @(0x3,r4),r0
	extu.b r0,r0
	tst 0x78,r0
	bt loc_8c057078
	mov.b @(0x3,r4),r0
	extu.b r0,r0
	tst 0x08,r0
	bt loc_8c05706a
	bra loc_8c057092
	mov 0x04,r5

loc_8c05706a:
	mov 0x70,r5
	mov.w @(loc_8c0570e2,PC),r2
	mov 0xFC,r3
	and r0,r5
	shad r3,r5
	bra loc_8c057092
	add r2,r5

loc_8c057078:
	mov.b @(0x9,r4),r0
	mov 0x05,r3
	extu.b r0,r0
	cmp/ge r3,r0
	bf.s loc_8c057086
	mov 0x00,r5
	add 0x01,r5

loc_8c057086:
	mov.b @(0x9,r4),r0
	mov 0x0C,r3
	extu.b r0,r0
	cmp/ge r3,r0
	bf loc_8c057092
	add 0x01,r5

loc_8c057092:
	mov.l @(loc_8c0570f0,PC),r0
	extu.b r5,r5
	shll2 r5
	fldi0 fr3
	mov.l @(r0,r5),r3
	mov.w @(loc_8c0570e4,PC),r0
	mov.l r3,@(r0,r14)

loc_8c0570a0:
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0570aa:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8c0570dc,PC),r0
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.w @(r0,r13),r3
	add 0x02,r0
	mov.w r3,@(r0,r14)
	mov.l @(loc_8c0570f4,PC),r3
	jsr @r3
	mov r14,r4
	mov r0,r5
	mov.w @(loc_8c0570dc,PC),r0
	mov.w @(r0,r13),r0
	extu.w r0,r0
	tst 0x10,r0
	bt loc_8c0570f8
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c05723a
	mov.l @r15+,r14

;##############################################
loc_8c0570d8:
	#data 0x0410
loc_8c0570da:
	#data 0x0260
loc_8c0570dc:
	#data 0x01ac
loc_8c0570de:
	#data 0x1000
loc_8c0570e0:
	#data 0x0218
loc_8c0570e2:
	#data 0x00ff
loc_8c0570e4:
	#data 0x0214
	#align4
loc_8c0570e8:
	#data bank14.loc_8c14f26e
loc_8c0570ec:
	#data bank14.loc_8c14f233
loc_8c0570f0:
	#data bank14.loc_8c14f1d4
loc_8c0570f4:
	#data loc_8c058658

;----------------------------------------------
loc_8c0570f8:
	mov.w @(loc_8c0571d4,PC),r0
	mov.w @(loc_8c0571d6,PC),r2
	mov.w @(r0,r13),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c05710e
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c057298
	mov.l @r15+,r14

loc_8c05710e:
	mov.w @(r0,r13),r0
	extu.w r0,r0
	tst 0x20,r0
	bt loc_8c057120
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c057310
	mov.l @r15+,r14

loc_8c057120:
	mov.w @(loc_8c0571d8,PC),r0
	mov.l @(r0,r14),r4
	mov.b @(0x1,r4),r0
	extu.b r0,r0
	tst 0x40,r0
	bt loc_8c057136
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c057200
	mov.l @r15+,r14

loc_8c057136:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c057140
	mov.l @r15+,r14

loc_8c057140:
	mov.w @(loc_8c0571da,PC),r0
	mov.l @(r0,r4),r6
	tst r6,r6
	bf.s loc_8c05714e
	extu.b r5,r5
	mov.w @(loc_8c0571dc,PC),r0
	mov.l @(r0,r4),r6

loc_8c05714e:
	mov.l @(loc_8c0571e4,PC),r0
	shll r5
	mov.w @(r0,r5),r3
	mova @(loc_8c0571e8,PC),r0
	fmov @r0,fr2
	mova @(loc_8c0571ec,PC),r0
	lds r3,fpul
	fmov @r0,fr1
	mova @(0x90,PC),r0
	float fpul,fr3
	fmul fr2,fr3
	fmov fr3,fr4
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r4)
	mov.w @(loc_8c0571de,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c057180
	fdiv fr1,fr4
	mov 0x68,r0
	fneg fr4
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)

loc_8c057180:
	fldi0 fr3
	fcmp/gt fr4,fr3
	bf loc_8c057192
	mova @(0x60,PC),r0
	fmov @r0,fr2
	mov 0x5C,r0
	fmov @(r0,r6),fr1
	fcmp/gt fr1,fr2
	bt loc_8c0571a4

loc_8c057192:
	fldi0 fr3
	fcmp/gt fr3,fr4
	bf loc_8c0571b6
	mova @(loc_8c0571f4,PC),r0
	fmov @r0,fr2
	mov 0x5C,r0
	fmov @(r0,r6),fr1
	fcmp/gt fr2,fr1
	bf loc_8c0571aa

loc_8c0571a4:
	mov 0x5C,r0
	fmov @(r0,r6),fr3
	fadd fr3,fr4

loc_8c0571aa:
	fldi0 fr3
	fcmp/gt fr3,fr4
	bf loc_8c0571b6
	mova @(loc_8c0571f8,PC),r0
	bra loc_8c0571ba
	fmov @r0,fr5

loc_8c0571b6:
	mova @(0x44,PC),r0
	fmov @r0,fr5

loc_8c0571ba:
	fldi0 fr3
	fcmp/gt fr3,fr4
	bf loc_8c0571c8
	fcmp/gt fr5,fr4
	bt loc_8c0571cc
	bra loc_8c0571ce
	nop

loc_8c0571c8:
	fcmp/gt fr4,fr5
	bf loc_8c0571ce

loc_8c0571cc:
	fmov fr5,fr4

loc_8c0571ce:
	mov.w @(loc_8c0571e0,PC),r0
	rts
	fmov fr4,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0571d4:
	#data 0x01ac
loc_8c0571d6:
	#data 0x1000
loc_8c0571d8:
	#data 0x01bc
loc_8c0571da:
	#data 0x01b8
loc_8c0571dc:
	#data 0x020c
loc_8c0571de:
	#data 0x01a6
loc_8c0571e0:
	#data 0x0218
	#align4
loc_8c0571e4:
	#data bank14.loc_8c14f15c
loc_8c0571e8:
	#data 0x3fd55555
loc_8c0571ec:
	#data 0x43800000
loc_8c0571f0:
	#data 0x3ffd5555
loc_8c0571f4:
	#data 0xbfd55555
loc_8c0571f8:
	#data 0x41fd5555
loc_8c0571fc:
	#data 0xc1fd5555

;==============================================
loc_8c057200:
	mov.l @(loc_8c057300,PC),r0
	extu.b r5,r5
	shll r5
	mov.w @(r0,r5),r3
	mova @(loc_8c057304,PC),r0
	fmov @r0,fr2
	mova @(loc_8c057308,PC),r0
	lds r3,fpul
	fmov @r0,fr1
	mova @(0xF8,PC),r0
	float fpul,fr3
	fmul fr2,fr3
	fmov fr3,fr4
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r4)
	mov.w @(loc_8c0572f6,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c057234
	fdiv fr1,fr4
	mov 0x68,r0
	fneg fr4
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)

loc_8c057234:
	mov.w @(loc_8c0572f8,PC),r0
	rts
	fmov fr4,@(r0,r4)

loc_8c05723a:
	mov.w @(loc_8c0572fa,PC),r0
	mov.l @(r0,r4),r3
	add 0xFC,r0
	mov.l @(r0,r4),r2
	cmp/eq r3,r2
	bf loc_8c057250
	mov.w @(loc_8c0572fa,PC),r0
	mov 0x03,r2
	mov.l @(r0,r4),r3
	add 0x3D,r0
	mov.b r2,@(r0,r3)

loc_8c057250:
	mov.w @(loc_8c0572fa,PC),r0
	mov.l @(r0,r4),r6
	tst r6,r6
	bf.s loc_8c05725e
	extu.b r5,r5
	mov.w @(loc_8c0572fc,PC),r0
	mov.l @(r0,r4),r6

loc_8c05725e:
	mov.l @(loc_8c057300,PC),r0
	shll r5
	mov.w @(r0,r5),r3
	mova @(loc_8c057304,PC),r0
	fmov @r0,fr2
	mova @(loc_8c057308,PC),r0
	lds r3,fpul
	fmov @r0,fr1
	mova @(0x9C,PC),r0
	float fpul,fr3
	fmul fr2,fr3
	fmov fr3,fr4
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r4),fr2
	fmov @(r0,r6),fr3
	fcmp/gt fr2,fr3
	bf.s loc_8c057292
	fdiv fr1,fr4
	mov 0x68,r0
	fneg fr4
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)

loc_8c057292:
	mov.w @(loc_8c0572f8,PC),r0
	rts
	fmov fr4,@(r0,r4)

loc_8c057298:
	mov.w @(loc_8c0572fa,PC),r0
	mov.l @(r0,r4),r3
	add 0xFC,r0
	mov.l @(r0,r4),r2
	cmp/eq r3,r2
	bf loc_8c0572ae
	mov.w @(loc_8c0572fa,PC),r0
	mov 0x03,r2
	mov.l @(r0,r4),r3
	add 0x3D,r0
	mov.b r2,@(r0,r3)

loc_8c0572ae:
	mov.w @(loc_8c0572fe,PC),r0
	mov.l @(r0,r4),r6
	tst r6,r6
	bf.s loc_8c0572bc
	extu.b r5,r5
	mov.w @(loc_8c0572fc,PC),r0
	mov.l @(r0,r4),r6

loc_8c0572bc:
	mov.l @(loc_8c057300,PC),r0
	shll r5
	mov.w @(r0,r5),r3
	mova @(0x40,PC),r0
	fmov @r0,fr2
	mova @(0x40,PC),r0
	lds r3,fpul
	fmov @r0,fr1
	mova @(loc_8c05730c,PC),r0
	float fpul,fr3
	fmul fr2,fr3
	fmov fr3,fr4
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r4),fr2
	fmov @(r0,r6),fr3
	fcmp/gt fr2,fr3
	bf.s loc_8c0572f0
	fdiv fr1,fr4
	mov 0x68,r0
	fneg fr4
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)

loc_8c0572f0:
	mov.w @(loc_8c0572f8,PC),r0
	rts
	fmov fr4,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0572f6:
	#data 0x01a6
loc_8c0572f8:
	#data 0x0218
loc_8c0572fa:
	#data 0x01b8
loc_8c0572fc:
	#data 0x020c
loc_8c0572fe:
	#data 0x01b4
	#align4
loc_8c057300:
	#data bank14.loc_8c14f15c
loc_8c057304:
	#data 0x3fd55555
loc_8c057308:
	#data 0x43800000
loc_8c05730c:
	#data 0x3ffd5555

;==============================================
loc_8c057310:
	mov.l @(loc_8c0573c4,PC),r0
	extu.b r5,r5
	shll r5
	mov.w @(r0,r5),r3
	mova @(loc_8c0573c8,PC),r0
	fmov @r0,fr2
	mova @(loc_8c0573cc,PC),r0
	lds r3,fpul
	fmov @r0,fr1
	mova @(0xAC,PC),r0
	float fpul,fr3
	fmul fr2,fr3
	fmov fr3,fr4
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r4)
	mov.w @(loc_8c0573b8,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf.s loc_8c057344
	fdiv fr1,fr4
	mov 0x68,r0
	fneg fr4
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)

loc_8c057344:
	mov.w @(loc_8c0573ba,PC),r0
	rts
	fmov fr4,@(r0,r4)

;==============================================
loc_8c05734a:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.w @(loc_8c0573bc,PC),r4
	mov.l @(loc_8c0573d4,PC),r3
	mov 0x08,r6
	mov.l r5,@r15
	mov 0x00,r5
	jsr @r3
	add r14,r4
	mov.w @(loc_8c0573be,PC),r0
	mov 0x78,r2
	mov.b r2,@(r0,r14)
	add 0xFC,r0
	mov.b @(r0,r14),r3
	add 0x07,r0
	tst r3,r3
	bf.s loc_8c057378
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c0573c0,PC),r0
	mov 0x10,r1
	mov.b r1,@(r0,r14)

loc_8c057378:
	mov.l @(loc_8c0573d8,PC),r3
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c0573dc,PC),r3
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c0573c2,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c05739e
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c0573e0,PC),r2
	jmp @r2
	mov.l @r15+,r14

loc_8c05739e:
	mov.l @(loc_8c0573e4,PC),r2
	jsr @r2
	mov r14,r4
	mov 0x02,r4
	mov r4,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov.w @(loc_8c0573c2,PC),r0
	mov.b r4,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0573b8:
	#data 0x01d2
loc_8c0573ba:
	#data 0x0218
loc_8c0573bc:
	#data 0x035c
loc_8c0573be:
	#data 0x0236
loc_8c0573c0:
	#data 0x0239
loc_8c0573c2:
	#data 0x01f9
	#align4
loc_8c0573c4:
	#data bank14.loc_8c14f15c
loc_8c0573c8:
	#data 0x3fd55555
loc_8c0573cc:
	#data 0x43800000
loc_8c0573d0:
	#data 0x3ffd5555
loc_8c0573d4:
	#data bank12.loc_8c129728
loc_8c0573d8:
	#data loc_8c0586a2
loc_8c0573dc:
	#data loc_8c0585a4
loc_8c0573e0:
	#data loc_8c058544
loc_8c0573e4:
	#data loc_8c058498

;==============================================
loc_8c0573e8:
	mov.w @(loc_8c0574b8,PC),r0
	mov.l @(r0,r4),r6
	tst r6,r6
	bt loc_8c0574b4
	mov.w @(loc_8c0574ba,PC),r0
	mov.w @(r0,r4),r0
	extu.w r0,r0
	tst 0x10,r0
	bf loc_8c0574d0
	mov.w @(loc_8c0574ba,PC),r0
	mov.w @(loc_8c0574bc,PC),r2
	mov.w @(r0,r4),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c05740a
	bra loc_8c057580
	nop

loc_8c05740a:
	mov.w @(loc_8c0574be,PC),r0
	mov.b @(r0,r4),r5
	add 0x08,r0
	mov.w @(r0,r4),r0
	extu.w r0,r0
	tst 0x20,r0
	bt loc_8c057420
	mov.w @(loc_8c0574c0,PC),r0
	mov.b @(r0,r4),r0
	xor 0x01,r0
	mov r0,r5

loc_8c057420:
	mova @(loc_8c0574cc,PC),r0
	fmov @r0,fr5
	mov.w @(loc_8c0574c2,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c057490
	mov.b @(0x1,r6),r0
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c057490
	mov.w @(loc_8c0574c2,PC),r0
	mov 0x01,r3
	mov.b @(r0,r4),r2
	add 0xD5,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	and 0x01,r0
	shad r0,r3
	tst r3,r2
	bt loc_8c057490
	mov.w @(loc_8c0574c4,PC),r0
	mov.l @(r0,r4),r6
	tst r6,r6
	bf.s loc_8c057456
	mov 0x01,r7
	mov.w @(loc_8c0574c6,PC),r0
	mov.l @(r0,r4),r6

loc_8c057456:
	mov.w @(loc_8c0574c2,PC),r0
	mov r7,r1
	mov.b @(r0,r6),r3
	add 0xD5,r0
	mov.b @(r0,r6),r2
	extu.b r2,r2
	and r7,r2
	shad r2,r1
	tst r1,r3
	bf loc_8c057490
	mov.w @(loc_8c0574c8,PC),r0
	fldi0 fr3
	mov.l @(r0,r4),r7
	mov.b @r7+,r3
	lds r3,fpul
	float fpul,fr4
	fcmp/gt fr3,fr4
	bf loc_8c0574b4
	extu.b r5,r5
	tst r5,r5
	bf.s loc_8c057484
	mov.l r7,@(r0,r4)
	fneg fr4

loc_8c057484:
	fmul fr5,fr4
	mov 0x34,r0
	fmov @(r0,r6),fr3
	fsub fr4,fr3
	rts
	fmov fr3,@(r0,r6)

loc_8c057490:
	mov.w @(loc_8c0574c8,PC),r0
	fldi0 fr3
	mov.l @(r0,r4),r6
	mov.b @r6+,r3
	lds r3,fpul
	float fpul,fr4
	fcmp/gt fr3,fr4
	bf loc_8c0574b4
	extu.b r5,r5
	tst r5,r5
	bf.s loc_8c0574aa
	mov.l r6,@(r0,r4)
	fneg fr4

loc_8c0574aa:
	mov 0x34,r0
	fmov fr5,fr0
	fmov @(r0,r4),fr3
	fmac fr0,fr4,fr3
	fmov fr3,@(r0,r4)

loc_8c0574b4:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0574b8:
	#data 0x01bc
loc_8c0574ba:
	#data 0x01ae
loc_8c0574bc:
	#data 0x1000
loc_8c0574be:
	#data 0x01a6
loc_8c0574c0:
	#data 0x01d2
loc_8c0574c2:
	#data 0x01fd
loc_8c0574c4:
	#data 0x01b8
loc_8c0574c6:
	#data 0x020c
loc_8c0574c8:
	#data 0x0214
	#align4
loc_8c0574cc:
	#data 0x3fd55555

;==============================================
loc_8c0574d0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c057578,PC),r3
	jsr @r3
	mov r4,r14
	mov.w @(loc_8c057574,PC),r0
	mov.l @(r0,r14),r2
	add 0xFC,r0
	mov.l @(r0,r14),r3
	cmp/eq r2,r3
	bf loc_8c0574f0
	mov.w @(loc_8c057574,PC),r0
	mov 0x03,r2
	mov.l @(r0,r14),r3
	add 0x3D,r0
	mov.b r2,@(r0,r3)

loc_8c0574f0:
	mov.w @(loc_8c057576,PC),r0
	fldi0 fr3
	mov.l @(r0,r14),r4
	mov.b @r4+,r3
	lds r3,fpul
	float fpul,fr4
	fcmp/gt fr3,fr4
	bf loc_8c05751a
	mov.l r4,@(r0,r14)
	add 0xBE,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c05750e
	mov 0x34,r0
	fneg fr4

loc_8c05750e:
	mov.l @(loc_8c05757c,PC),r1
	fmov @(r0,r14),fr3
	lds r1,fpul
	fsts fpul,fr0
	fmac fr0,fr4,fr3
	fmov fr3,@(r0,r14)

loc_8c05751a:
	lds.l @r15+,pr
	rts

;==============================================
loc_8c05751e:
	mov.l @r15+,r14
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c057578,PC),r3
	jsr @r3
	mov r4,r14
	mov.w @(loc_8c057574,PC),r0
	mov.l @(r0,r14),r2
	add 0xFC,r0
	mov.l @(r0,r14),r3
	cmp/eq r2,r3
	bf loc_8c057540
	mov.w @(loc_8c057574,PC),r0
	mov 0x03,r2
	mov.l @(r0,r14),r3
	add 0x3D,r0
	mov.b r2,@(r0,r3)

loc_8c057540:
	mov.w @(loc_8c057576,PC),r0
	fldi0 fr3
	mov.l @(r0,r14),r4
	mov.b @r4+,r3
	lds r3,fpul
	float fpul,fr4
	fcmp/gt fr3,fr4
	bf loc_8c05756e
	mov.l r4,@(r0,r14)
	add 0xA0,r0
	mov.l @(r0,r14),r3
	mov 0x34,r0
	fmov @(r0,r14),fr1
	fmov @(r0,r3),fr2
	fcmp/gt fr2,fr1
	bf loc_8c057562
	fneg fr4

loc_8c057562:
	mov.l @(loc_8c05757c,PC),r1
	fmov @(r0,r14),fr3
	lds r1,fpul
	fsts fpul,fr0
	fmac fr0,fr4,fr3
	fmov fr3,@(r0,r14)

loc_8c05756e:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c057574:
	#data 0x01b8
loc_8c057576:
	#data 0x0214
	#align4
loc_8c057578:
	#data loc_8c052214
loc_8c05757c:
	#data 0x3fd55555

;==============================================
loc_8c057580:
	mov.w @(loc_8c057680,PC),r0
	mov.w @(loc_8c057682,PC),r2
	mov.w @(r0,r4),r3
	extu.w r3,r3
	tst r2,r3
	bt.s loc_8c0575a2
	mov 0x03,r5
	mov.w @(loc_8c057684,PC),r0
	mov.l @(r0,r4),r3
	add 0xFC,r0
	mov.l @(r0,r4),r1
	cmp/eq r3,r1
	bf loc_8c0575a2
	mov.w @(loc_8c057684,PC),r0
	mov.l @(r0,r4),r3
	add 0x3D,r0
	mov.b r5,@(r0,r3)

loc_8c0575a2:
	mov.w @(loc_8c057686,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c057618
	mov.w @(loc_8c057688,PC),r0
	mov.l @(r0,r4),r6
	tst r6,r6
	bt loc_8c057618
	mov.b @(0x1,r6),r0
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c057618
	mov.w @(loc_8c057686,PC),r0
	mov 0x01,r1
	mov.b @(r0,r4),r3
	add 0xD5,r0
	mov.b @(r0,r4),r2
	extu.b r2,r2
	shad r2,r1
	tst r1,r3
	bt loc_8c057618
	mov.w @(loc_8c05768a,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c0575de
	mov 0x5C,r0
	fldi0 fr3
	fmov @(r0,r4),fr2
	fcmp/gt fr2,fr3
	bt loc_8c057618

loc_8c0575de:
	mov.w @(loc_8c05768a,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c0575f0
	mov 0x5C,r0
	fldi0 fr3
	fmov @(r0,r4),fr2
	fcmp/gt fr3,fr2
	bt loc_8c057618

loc_8c0575f0:
	mov.w @(loc_8c057684,PC),r0
	mov.l @(r0,r4),r6
	tst r6,r6
	bf loc_8c0575fc
	mov.w @(loc_8c05768c,PC),r0
	mov.l @(r0,r4),r6

loc_8c0575fc:
	mov.w @(loc_8c057686,PC),r0
	mov.b @(r0,r4),r2
	mov.b @(r0,r6),r3
	xor r5,r2
	cmp/eq r2,r3
	bt loc_8c057618
	mov 0x5C,r1
	add r4,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r6),fr2
	fsub fr3,fr2
	bra loc_8c057626
	fmov fr2,@(r0,r6)

loc_8c057618:
	mov 0x5C,r1
	add r4,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)

loc_8c057626:
	mov 0x68,r1
	add r4,r1
	mov 0x5C,r0
	fmov @r1,fr3
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x68,r0
	fmov @(r0,r4),fr3
	mov 0x5C,r0
	fmov @(r0,r4),fr2
	fmul fr3,fr2
	fldi0 fr3
	fcmp/gt fr2,fr3
	bt loc_8c05764c
	fldi0 fr4
	fmov fr4,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)

loc_8c05764c:
	rts
	nop

loc_8c057650:
	mov.l r14,@-r15
	mov 0x68,r0
	fmov fr15,@-r15
	mov r4,r14
	sts.l pr,@-r15
	bsr loc_8c0570aa
	fmov @(r0,r14),fr15
	mov.w @(loc_8c05768e,PC),r0
	mov 0x05,r3
	fmov @(r0,r14),fr3
	add 0x78,r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr3
	mov.w @(loc_8c057690,PC),r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov fr15,@(r0,r14)
	mov.w @(loc_8c057692,PC),r0
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c057680:
	#data 0x01ae
loc_8c057682:
	#data 0x1010
loc_8c057684:
	#data 0x01b8
loc_8c057686:
	#data 0x01fd
loc_8c057688:
	#data 0x01bc
loc_8c05768a:
	#data 0x01d2
loc_8c05768c:
	#data 0x020c
loc_8c05768e:
	#data 0x0218
loc_8c057690:
	#data 0x0294
loc_8c057692:
	#data 0x0282

;==============================================
loc_8c057694:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov r4,r14
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c057710
	mov.w @(loc_8c0577b6,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c057710
	mov.w @(loc_8c0577b8,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c057710
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	add 0x0E,r0
	fmov @(r0,r14),fr3
	ftrc fr3,fpul
	sts fpul,r2
	tst r2,r2
	bt loc_8c057710
	mov 0x5C,r0
	mov r15,r4
	add 0x08,r4
	mov r4,r2
	add 0x04,r4
	mov.l r2,@(0x4,r15)
	fmov @(r0,r14),fr3
	mov 0x68,r0
	fmov fr3,@r2
	mov.l r4,@r15
	fmov @(r0,r14),fr3
	mov.w @(loc_8c0577ba,PC),r0
	fmov fr3,@r4
	fmov @(r0,r14),fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c0577bc,PC),r0
	fmov @(r0,r14),fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	bsr loc_8c057580
	mov r14,r4
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	mov.w @(loc_8c0577ba,PC),r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr3
	mov.w @(loc_8c0577bc,PC),r0
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	mov.l @(0x4,r15),r3
	fmov @r3,fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	mov.l @r15,r3
	fmov @r3,fr3
	fmov fr3,@(r0,r14)

loc_8c057710:
	add 0x10,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c057718:
	mov.l @(loc_8c0577cc,PC),r3
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @r3,r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bt.s loc_8c057736
	mov r5,r11
	bra loc_8c057894
	nop

loc_8c057736:
	mov.w @(loc_8c0577be,PC),r0
	mov.l @(r0,r14),r12
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x09,r0
	bf loc_8c05774e
	mov.w @(loc_8c0577c0,PC),r0
	mov.b @(r0,r11),r0
	tst 0x02,r0
	bt loc_8c05774e
	bra loc_8c057894
	nop

loc_8c05774e:
	mov.b @r12,r7
	extu.b r7,r7
	exts.w r7,r2
	tst r2,r2
	bf loc_8c05775c
	bra loc_8c057894
	nop

loc_8c05775c:
	mov.w @(loc_8c0577c2,PC),r0
	mov.w @(loc_8c0577c4,PC),r2
	mov.w @(r0,r11),r3
	extu.w r3,r3
	tst r2,r3
	bf loc_8c057774
	mov.b @(0x2,r12),r0
	extu.b r0,r0
	tst 0xB0,r0
	bf loc_8c057774
	bra loc_8c057894
	nop

loc_8c057774:
	mov.w @(loc_8c0577c6,PC),r0
	mov.l @(r0,r14),r5
	tst r5,r5
	bf.s loc_8c057782
	mov r12,r6
	mov.w @(loc_8c0577c8,PC),r0
	mov.l @(r0,r14),r5

loc_8c057782:
	mov.l @(loc_8c0577d0,PC),r3
	jsr @r3
	mov r14,r4
	mov r0,r13
	exts.w r13,r3
	lds r3,fpul
	mova @(0x44,PC),r0
	fmov @r0,fr2
	mov 0x01,r5
	float fpul,fr3
	fdiv fr2,fr3
	ftrc fr3,fpul
	sts fpul,r13
	exts.w r13,r3
	cmp/ge r5,r3
	bt.s loc_8c0577a6
	mov 0x00,r6
	mov r5,r13

loc_8c0577a6:
	mov.l @(loc_8c0577d8,PC),r3
	mov 0x56,r0
	mov.l @r3,r4
	mov.b @(r0,r4),r0
	cmp/eq 0x01,r0
	bf loc_8c0577dc
	bra loc_8c0577e2
	mov r6,r13

;##############################################
loc_8c0577b6:
	#data 0x01a0
loc_8c0577b8:
	#data 0x0282
loc_8c0577ba:
	#data 0x0290
loc_8c0577bc:
	#data 0x0294
loc_8c0577be:
	#data 0x01bc
loc_8c0577c0:
	#data 0x019c
loc_8c0577c2:
	#data 0x01ac
loc_8c0577c4:
	#data 0x0100
loc_8c0577c6:
	#data 0x01b8
loc_8c0577c8:
	#data 0x020c
	#align4
loc_8c0577cc:
	#data 0x8c2896b0
loc_8c0577d0:
	#data loc_8c05671a
loc_8c0577d4:
	#data 0x41000000
loc_8c0577d8:
	#data work.GameGlobalPointer

;----------------------------------------------
loc_8c0577dc:
	cmp/eq 0x02,r0
	bf loc_8c0577e2
	add r13,r13

loc_8c0577e2:
	mov.b @(0x2,r12),r0
	extu.b r0,r0
	tst 0x30,r0
	bf loc_8c0577fe
	mov.w @(loc_8c0578a0,PC),r0
	mov.w @(loc_8c0578a2,PC),r3
	mov.w @(r0,r11),r2
	extu.w r2,r2
	tst r3,r2
	bt loc_8c0577fe
	mov.w @(loc_8c0578a4,PC),r0
	mov.w @(r0,r14),r0
	cmp/eq 0x01,r0
	bt loc_8c057894

loc_8c0577fe:
	mov 0x12,r0
	mov.b @(r0,r12),r0
	extu.b r0,r0
	tst 0x02,r0
	bf loc_8c057894
	mov.l @(loc_8c0578ac,PC),r3
	mov.b @r3,r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c057894
	mov.w @(loc_8c0578a4,PC),r0
	mov.w @(r0,r14),r1
	tst r1,r1
	bt loc_8c057894
	mov 0x55,r0
	mov.b @(r0,r4),r0
	cmp/eq 0x01,r0
	bt loc_8c057832
	mov.w @(loc_8c0578a6,PC),r0
	mov.w @(r0,r14),r2
	sub r13,r2
	mov.w r2,@(r0,r14)
	exts.w r2,r2
	cmp/pl r2
	bt loc_8c057832
	mov.w r6,@(r0,r14)

loc_8c057832:
	mov.w @(loc_8c0578a4,PC),r0
	mov.w @(r0,r14),r3
	mov.w @(loc_8c0578a8,PC),r0
	mov.w r3,@(r0,r14)
	add 0xEC,r0
	mov.w r3,@(r0,r14)
	mov.w @(loc_8c0578a4,PC),r0
	mov.w @(r0,r14),r3
	sub r13,r3
	mov.w r3,@(r0,r14)
	exts.w r3,r3
	cmp/pl r3
	bt loc_8c05787c
	mov 0x12,r0
	mov.b @(r0,r12),r0
	extu.b r0,r0
	tst 0x20,r0
	bf loc_8c05786c
	mov.l @(loc_8c0578b0,PC),r3
	mov.w @(loc_8c0578aa,PC),r0
	mov.l @r3,r2
	mov.b @(r0,r2),r1
	tst r1,r1
	bf loc_8c05786c
	mov.l @(loc_8c0578b4,PC),r3
	jsr @r3
	mov r14,r4
	bra loc_8c05787c
	nop

loc_8c05786c:
	mov.w @(loc_8c0578a4,PC),r0
	mov.w r5,@(r0,r14)
	add 0x04,r0
	mov.w @(r0,r14),r3
	cmp/pl r3
	bt loc_8c05787c
	mov.w @(loc_8c0578a6,PC),r0
	mov.w r5,@(r0,r14)

loc_8c05787c:
	mov.l @(loc_8c0578b8,PC),r3
	mov r13,r5
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c0578bc,PC),r2
	mov r14,r4
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c057894:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0578a0:
	#data 0x01ac
loc_8c0578a2:
	#data 0x0100
loc_8c0578a4:
	#data 0x0420
loc_8c0578a6:
	#data 0x0424
loc_8c0578a8:
	#data 0x027c
loc_8c0578aa:
	#data 0x00a6
	#align4
loc_8c0578ac:
	#data 0x8c2895f0
loc_8c0578b0:
	#data work.GameGlobalPointer
loc_8c0578b4:
	#data loc_8c059426
loc_8c0578b8:
	#data loc_8c059914
loc_8c0578bc:
	#data loc_8c059718

;==============================================
loc_8c0578c0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(loc_8c05799a,PC),r0
	mov r4,r14
	mov.l @(r0,r14),r13
	mov.b @(0xB,r13),r0
	cmp/pz r0
	bf loc_8c05790e
	mov r15,r6
	bsr loc_8c0579cc
	mov r14,r4
	mov.b @(0x8,r13),r0
	mov r0,r7
	mov.w @(loc_8c05799c,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0578ee
	mov 0x20,r0
	sub r7,r0
	mov 0x1F,r7
	and r0,r7

loc_8c0578ee:
	mov.b @(0xB,r13),r0
	mov.l @(loc_8c0579a8,PC),r3
	extu.b r0,r6
	mov.w @(loc_8c05799e,PC),r0
	mov.w @(r0,r14),r5
	jsr @r3
	mov r15,r4
	mov 0x12,r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	tst 0x40,r0
	bt loc_8c05790e
	mov.l @(loc_8c0579ac,PC),r2
	mov 0x00,r5
	jsr @r2
	mov r15,r4

loc_8c05790e:
	mov.l @(loc_8c0579b0,PC),r3
	jsr @r3
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05791e:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	bsr loc_8c0579cc
	mov r15,r6
	mov.w @(loc_8c05799e,PC),r0
	mov.l @(loc_8c0579b4,PC),r3
	mov.w @(r0,r14),r5
	jsr @r3
	mov r15,r4
	mov.l @(loc_8c0579b8,PC),r2
	mov 0x3F,r5
	jsr @r2
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c057944:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	bsr loc_8c0579cc
	mov r15,r6
	mov.w @(loc_8c0579a0,PC),r0
	fmov @r15,fr3
	mov.l @(loc_8c0579bc,PC),r3
	fmov fr3,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r15),fr3
	mov.w @(loc_8c0579a2,PC),r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c05799e,PC),r0
	mov.w @(r0,r14),r5
	jsr @r3
	mov r15,r4
	mov.w @(loc_8c0579a4,PC),r4
	mov.l @(loc_8c0579c4,PC),r1
	add r14,r4
	mov.l @(loc_8c0579c0,PC),r3
	mov.l @(0x4,r4),r0
	mov.l @r4,r2
	and r1,r0
	and r3,r2
	or r0,r2
	tst r2,r2
	bt.s loc_8c057982
	mov 0x25,r5
	mov 0x26,r5

loc_8c057982:
	mov.l @(loc_8c0579b8,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c0579c8,PC),r3
	mov 0x02,r5
	mov.b @(0x2,r14),r0
	jsr @r3
	extu.b r0,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05799a:
	#data 0x01bc
loc_8c05799c:
	#data 0x01a6
loc_8c05799e:
	#data 0x0130
loc_8c0579a0:
	#data 0x024c
loc_8c0579a2:
	#data 0x0250
loc_8c0579a4:
	#data 0x0414
	#align4
loc_8c0579a8:
	#data bank0f.loc_8c0fd966
loc_8c0579ac:
	#data bank0f.loc_8c0ff4b6
loc_8c0579b0:
	#data bank04.loc_8c0422fe
loc_8c0579b4:
	#data bank10.loc_8c107c64
loc_8c0579b8:
	#data bank04.loc_8c04223a
loc_8c0579bc:
	#data bank10.loc_8c10163a
loc_8c0579c0:
	#data 0x00018000
loc_8c0579c4:
	#data 0x00184000
loc_8c0579c8:
	#data bank03.loc_8c031b48

;==============================================
loc_8c0579cc:
	mov.l r12,@-r15
	add 0xF8,r15
	mov.w @(loc_8c057b1c,PC),r0
	mov r15,r2
	mov r15,r1
	add 0x04,r1
	mov.w @(r0,r5),r7
	add 0xC8,r0
	mov.l @(r0,r5),r3
	add 0x3A,r0

loc_8c0579e0:
	extu.w r7,r7
	mov.w @(r0,r4),r12

loc_8c0579e4:
	shll2 r7
	shll r7
	add 0xC6,r0
	extu.w r12,r12
	add r3,r7
	mov.l @(r0,r4),r3
	shll2 r12
	shll r12
	add r3,r12
	mov.w @r7,r3
	mova @(loc_8c057b20,PC),r0
	lds r3,fpul
	fmov @r0,fr4
	mov 0x50,r0
	fmov @(r0,r5),fr2
	float fpul,fr3
	fmul fr2,fr3
	fmul fr4,fr3
	fmov fr3,@r2
	mov.w @r12,r3
	lds r3,fpul
	float fpul,fr3
	fmov @(r0,r4),fr2
	mov.w @(loc_8c057b1e,PC),r0
	fmul fr2,fr3
	fmul fr4,fr3
	fmov fr3,@r1
	mov.w @(r0,r5),r3
	tst r3,r3
	bt loc_8c057a26
	fmov @r2,fr3
	fneg fr3
	fmov fr3,@r2

loc_8c057a26:
	mov.w @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c057a34
	mov 0x34,r0
	fmov @r1,fr3
	fneg fr3
	fmov fr3,@r1

loc_8c057a34:
	fmov @r2,fr2
	fmov @(r0,r5),fr3
	fadd fr3,fr2
	fmov fr2,@r2
	fmov @r1,fr2
	fmov @(r0,r4),fr3
	fadd fr3,fr2
	fmov fr2,fr3
	fmov fr2,@r1
	fmov @r2,fr2
	fcmp/gt fr3,fr2
	bf loc_8c057a78
	mov.w @(0x2,r7),r0
	mov r0,r3
	lds r3,fpul
	mov 0x50,r0
	fmov @(r0,r5),fr2
	float fpul,fr3
	fmul fr2,fr3
	fmov @r2,fr2
	fmul fr4,fr3
	fsub fr3,fr2
	fmov fr2,@r2
	mov.w @(0x2,r12),r0
	fmov @r1,fr2
	mov r0,r3
	lds r3,fpul
	mov 0x50,r0
	fmov @(r0,r4),fr0
	float fpul,fr3
	fmul fr0,fr3
	fmov fr4,fr0
	bra loc_8c057aa2
	fmac fr0,fr3,fr2

loc_8c057a78:
	mov.w @(0x2,r7),r0
	fmov @r2,fr2
	mov r0,r3
	lds r3,fpul
	mov 0x50,r0
	fmov @(r0,r5),fr0
	float fpul,fr3
	fmul fr0,fr3
	fmov fr4,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@r2
	mov.w @(0x2,r12),r0
	mov r0,r3
	lds r3,fpul
	mov 0x50,r0
	fmov @(r0,r4),fr2
	float fpul,fr3
	fmul fr2,fr3
	fmov @r1,fr2
	fmul fr4,fr3
	fsub fr3,fr2

loc_8c057aa2:
	fmov fr2,fr3
	mova @(loc_8c057b24,PC),r0
	fmov fr2,@r1
	fmov @r2,fr2
	fldi1 fr5
	fadd fr5,fr5
	fadd fr3,fr2
	fdiv fr5,fr2
	fmov fr2,@r6
	fmov @r0,fr4
	mov.w @(0x4,r7),r0
	mov r0,r3
	lds r3,fpul
	mov 0x54,r0
	fmov @(r0,r5),fr2
	mov 0x38,r0
	float fpul,fr3
	fmul fr2,fr3
	fmov @(r0,r5),fr2
	fmul fr4,fr3
	fneg fr3
	fadd fr2,fr3
	fmov fr3,@r2
	mov.w @(0x4,r12),r0
	mov r0,r3
	lds r3,fpul
	mov 0x54,r0
	fmov @(r0,r4),fr2
	float fpul,fr3
	fmul fr2,fr3
	fmul fr4,fr3
	fneg fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fadd fr2,fr3
	fmov fr3,@r1
	fmov @r2,fr2
	fcmp/gt fr3,fr2
	bf loc_8c057b28
	mov.w @(0x6,r7),r0
	mov r0,r3
	lds r3,fpul
	mov 0x54,r0
	fmov @(r0,r5),fr2
	float fpul,fr3
	fmul fr2,fr3
	fmov @r2,fr2
	fmul fr4,fr3
	fsub fr3,fr2
	fmov fr2,@r2
	mov.w @(0x6,r12),r0
	fmov @r1,fr2
	mov r0,r3
	lds r3,fpul
	mov 0x54,r0
	fmov @(r0,r4),fr0
	float fpul,fr3
	fmul fr0,fr3
	fmov fr4,fr0
	bra loc_8c057b52
	fmac fr0,fr3,fr2

;##############################################
loc_8c057b1c:
	#data 0x01a8
loc_8c057b1e:
	#data 0x0130
loc_8c057b20:
	#data 0x3fd55555
loc_8c057b24:
	#data 0x40092492

;----------------------------------------------
loc_8c057b28:
	mov.w @(0x6,r7),r0
	fmov @r2,fr2
	mov r0,r3
	lds r3,fpul
	mov 0x54,r0
	fmov @(r0,r5),fr0
	float fpul,fr3
	fmul fr0,fr3
	fmov fr4,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@r2
	mov.w @(0x6,r12),r0
	mov r0,r3
	lds r3,fpul
	mov 0x54,r0
	fmov @(r0,r4),fr2
	float fpul,fr3
	fmul fr2,fr3
	fmov @r1,fr2
	fmul fr4,fr3
	fsub fr3,fr2

loc_8c057b52:
	fmov fr2,fr3
	mov 0x04,r0
	fmov fr2,@r1
	fmov @r2,fr2
	fadd fr3,fr2
	fdiv fr5,fr2
	fmov fr2,@(r0,r6)
	mov 0x3C,r0
	fmov @(r0,r4),fr3
	mov 0x08,r0
	fmov fr3,@(r0,r6)
	add 0x08,r15
	rts
	mov.l @r15+,r12

;==============================================
loc_8c057b6e:
	mov.w @(loc_8c057c48,PC),r0
	mov.l r14,@-r15
	mov.l @(r0,r4),r14
	tst r14,r14
	bt loc_8c057bb2
	mov.b @(0x3,r14),r0
	extu.b r0,r5
	tst r5,r5
	bt loc_8c057b88
	mov r5,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c057bb2

loc_8c057b88:
	mov.w @(loc_8c057c4a,PC),r0
	mov 0x1C,r3
	mov.w @(loc_8c057c4c,PC),r2
	mov.b @(r0,r4),r0
	add r14,r2
	mov.w @(loc_8c057c4e,PC),r1
	extu.b r0,r0
	mov.l @r2,r2
	and 0x7F,r0
	mul.l r3,r0
	add r4,r1
	sts macl,r0
	add r2,r0
	mov.l r0,@r1
	mov.w @(loc_8c057c4e,PC),r0
	mov.l @(r0,r4),r2
	tst r2,r2
	bt loc_8c057bb2
	mov r14,r5
	bra loc_8c0578c0
	mov.l @r15+,r14

loc_8c057bb2:
	rts
	mov.l @r15+,r14

;==============================================
loc_8c057bb6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(loc_8c057c48,PC),r0
	mov r4,r14
	mov.l @(r0,r14),r5
	tst r5,r5
	bt loc_8c057c3e
	mov.b @(0x3,r5),r0
	extu.b r0,r4
	tst r4,r4
	bt loc_8c057bd8
	mov r4,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c057c3e

loc_8c057bd8:
	mov.w @(loc_8c057c4a,PC),r0
	mov 0x1C,r3
	mov.w @(loc_8c057c4c,PC),r2
	mov.b @(r0,r14),r0
	add r5,r2
	mov.w @(loc_8c057c4e,PC),r1
	extu.b r0,r0
	mov.l @r2,r2
	and 0x7F,r0
	mul.l r3,r0
	add r14,r1
	sts macl,r0
	add r2,r0
	mov.l r0,@r1
	mov.w @(loc_8c057c4e,PC),r0
	mov.l @(r0,r14),r2
	tst r2,r2
	bt loc_8c057c3e
	mov.l @(r0,r14),r13
	mov.b @(0xB,r13),r0
	cmp/pz r0
	bf loc_8c057c3e
	mov r15,r6
	bsr loc_8c0579cc
	mov r14,r4
	mov.b @(0x8,r13),r0
	mov r0,r7
	mov.w @(loc_8c057c50,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c057c1e
	mov 0x20,r0
	sub r7,r0
	mov 0x1F,r7
	and r0,r7

loc_8c057c1e:
	mov.b @(0xB,r13),r0
	mov.l @(loc_8c057c54,PC),r3
	extu.b r0,r6
	mov.w @(loc_8c057c52,PC),r0
	mov.w @(r0,r14),r5
	jsr @r3
	mov r15,r4
	mov 0x12,r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	tst 0x40,r0
	bt loc_8c057c3e
	mov.l @(loc_8c057c58,PC),r2
	mov 0x00,r5
	jsr @r2
	mov r15,r4

loc_8c057c3e:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c057c48:
	#data 0x01b4
loc_8c057c4a:
	#data 0x01a2
loc_8c057c4c:
	#data 0x0174
loc_8c057c4e:
	#data 0x01bc
loc_8c057c50:
	#data 0x01a6
loc_8c057c52:
	#data 0x0130
loc_8c057c54:
	#data bank0f.loc_8c0fd966
loc_8c057c58:
	#data bank0f.loc_8c0ff4b6

;==============================================
loc_8c057c5c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c057d5c,PC),r0
	mov r4,r14
	mov 0x00,r4
	mov.l r5,@r15
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov.l @r15,r5
	bsr loc_8c05702e
	mov r14,r4
	mov.l @r15,r5
	bsr loc_8c0585a4
	mov r14,r4
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c058498
	mov.l @r15+,r14

;==============================================
loc_8c057c86:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c057d5c,PC),r0
	mov r4,r14
	mov 0x00,r12
	mov.b r12,@(r0,r14)
	add 0x01,r0
	mov.b r12,@(r0,r14)
	bsr loc_8c05702e
	mov r14,r4
	mov.w @(loc_8c057d5e,PC),r0
	mov r15,r4
	mov r4,r13
	mov.b r12,@r13
	mov.b @(r0,r14),r0
	and 0x70,r0
	mov.b r0,@(0x1,r4)
	extu.b r0,r0
	tst r0,r0
	bt loc_8c057cd0
	mov r4,r5
	add 0x01,r5
	mov.b @r5,r0
	extu.b r0,r0
	cmp/eq 0x30,r0
	bf loc_8c057cc8
	mov.b @r13,r2
	add 0x02,r2
	bra loc_8c057cf2
	mov.b r2,@r13

loc_8c057cc8:
	cmp/eq 0x20,r0
	bt loc_8c057cec
	bra loc_8c057cf2
	nop

loc_8c057cd0:
	mov.w @(loc_8c057d60,PC),r0
	mov 0x05,r2
	mov.b @(r0,r14),r3
	extu.b r3,r3
	cmp/ge r2,r3
	bf loc_8c057ce2
	mov.b @r13,r1
	add 0x01,r1
	mov.b r1,@r13

loc_8c057ce2:
	mov.b @(r0,r14),r3
	mov 0x0C,r2
	extu.b r3,r3
	cmp/ge r2,r3
	bf loc_8c057cf2

loc_8c057cec:
	mov.b @r13,r1
	add 0x01,r1
	mov.b r1,@r13

loc_8c057cf2:
	mov.l @(loc_8c057d68,PC),r3
	mov 0x0D,r5
	mov.b @r13,r6
	jsr @r3
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c057d08:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x01,r13
	mov.l r5,@r15
	mov r4,r14
	bsr loc_8c058bcc
	mov r14,r4
	tst r0,r0
	bt loc_8c057d44
	mov.w @(loc_8c057d62,PC),r0
	mov 0x0C,r3
	mov 0x1B,r4
	mov.b r13,@(r0,r14)
	add 0xFB,r0
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	cmp/gt r4,r3
	bf loc_8c057d38
	mov.w @(loc_8c057d64,PC),r0
	mov.b r4,@(r0,r14)

loc_8c057d38:
	mov.w @(loc_8c057d66,PC),r0
	mov 0x02,r3
	mov.b r13,@(r0,r14)
	add 0xFE,r0
	bra loc_8c057d4e
	mov.b r3,@(r0,r14)

loc_8c057d44:
	mov.w @(loc_8c057d62,PC),r0
	mov 0x00,r2
	mov.b r2,@(r0,r14)
	add 0xFF,r0
	mov.b r13,@(r0,r14)

loc_8c057d4e:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c05734a
	mov.l @r15+,r14

;##############################################
loc_8c057d5c:
	#data 0x0233
loc_8c057d5e:
	#data 0x0231
loc_8c057d60:
	#data 0x022f
loc_8c057d62:
	#data 0x0234
loc_8c057d64:
	#data 0x022e
loc_8c057d66:
	#data 0x0235
	#align4
loc_8c057d68:
	#data bank03.loc_8c034e8c

;----------------------------------------------
loc_8c057d6c:
	mov.w @(loc_8c057e4c,PC),r0
	mov 0x01,r7
	mov.b r7,@(r0,r4)
	add 0x88,r0
	mov.l @(r0,r4),r0
	mov.b @(0x1,r0),r0
	extu.b r0,r0
	tst 0x20,r0
	bt loc_8c057d9c
	mov.w @(loc_8c057e4e,PC),r0
	mov.l @(r0,r4),r6
	tst r6,r6
	bf loc_8c057d8a
	mov.w @(loc_8c057e50,PC),r0
	mov.l @(r0,r4),r6

loc_8c057d8a:
	mov.w @(loc_8c057e52,PC),r0
	mov.b @(r0,r6),r3
	tst r3,r3
	bt loc_8c057d9a
	mov 0x00,r7
	mov.b r7,@(r0,r4)
	bra loc_8c057d9c
	mov.b r7,@(r0,r6)

loc_8c057d9a:
	mov.b r7,@(r0,r4)

loc_8c057d9c:
	mov.w @(loc_8c057e54,PC),r0
	mov 0x02,r3
	mov.b r3,@(r0,r4)
	bra loc_8c05734a
	nop

;==============================================
loc_8c057da6:
	mov.w @(loc_8c057e4c,PC),r0
	mov 0x01,r6
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b r6,@(r0,r14)
	add 0x88,r0
	mov.l @(r0,r14),r0
	mov.b @(0x1,r0),r0
	extu.b r0,r0
	tst 0x20,r0
	bt.s loc_8c057dde
	mov 0x00,r13
	mov.w @(loc_8c057e4e,PC),r0
	mov.l @(r0,r14),r4
	tst r4,r4
	bf loc_8c057dce
	mov.w @(loc_8c057e50,PC),r0
	mov.l @(r0,r14),r4

loc_8c057dce:
	mov.w @(loc_8c057e52,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c057ddc
	mov.b r13,@(r0,r14)
	bra loc_8c057dde
	mov.b r13,@(r0,r4)

loc_8c057ddc:
	mov.b r6,@(r0,r14)

loc_8c057dde:
	mov.w @(loc_8c057e54,PC),r0
	mov 0x02,r3
	mov.b r3,@(r0,r14)
	bsr loc_8c05734a
	mov r14,r4
	mov.w @(loc_8c057e56,PC),r0
	mov.b r13,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c057df4:
	mov.w @(loc_8c057e58,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf.s loc_8c057e04
	mov 0x00,r7
	mov.w @(loc_8c057e5a,PC),r0
	bra loc_8c057e06
	mov.b @(r0,r5),r6

loc_8c057e04:
	mov.b @(r0,r4),r6

loc_8c057e06:
	mov.l @(loc_8c057e60,PC),r3
	mov.b @(0x2,r4),r0
	mov.l @r3,r2
	extu.b r0,r0
	add 0x36,r2
	mov.b @(r0,r2),r1
	mov 0x02,r2
	cmp/ge r2,r1
	bt loc_8c057e26
	mov.w @(loc_8c057e5c,PC),r0
	mov.b @(r0,r4),r0
	tst r0,r0
	bf loc_8c057e26
	extu.b r6,r3
	tst r3,r3
	bf loc_8c057e2c

loc_8c057e26:
	mov.w @(loc_8c057e58,PC),r0
	bra loc_8c057d6c
	mov.b r7,@(r0,r4)

loc_8c057e2c:
	mov.w @(loc_8c057e4c,PC),r0
	mov 0x01,r2
	mov.b r2,@(r0,r4)
	add 0x6B,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c057e3e
	mov.w @(loc_8c057e58,PC),r0
	mov.b r6,@(r0,r4)

loc_8c057e3e:
	mov.w @(loc_8c057e52,PC),r0
	mov 0x0C,r3
	mov.b r7,@(r0,r4)
	add 0xFE,r0
	mov.b r3,@(r0,r4)
	bra loc_8c05734a
	nop
loc_8c057e4c:
	mov.b r3,@(r0,r2)

;##############################################
loc_8c057e4e:
	#data 0x01b8
loc_8c057e50:
	#data 0x020c
loc_8c057e52:
	#data 0x0235
loc_8c057e54:
	#data 0x0233
loc_8c057e56:
	#data 0x0236
loc_8c057e58:
	#data 0x029f
loc_8c057e5a:
	#data 0x01a3
loc_8c057e5c:
	#data 0x0411
	#align4

loc_8c057e60:
	#data 0x8c2896b0

;----------------------------------------------
loc_8c057e64:
	mov.b @(0x5,r4),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt loc_8c057e78
	mov.w @(loc_8c057f6c,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c057e78
	mov 0x00,r3
	mov.b r3,@(r0,r4)

loc_8c057e78:
	bra loc_8c057e82
	nop

;==============================================
loc_8c057e7c:
	mov.w @(loc_8c057f6c,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r4)

loc_8c057e82:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c057f6e,PC),r0
	mov 0x11,r3
	mov r4,r14
	mov.w @(loc_8c057f70,PC),r4
	mov.l r5,@r15
	mov 0x08,r6
	mov.b r3,@(r0,r14)
	mov 0x00,r5
	mov.l @(loc_8c057f88,PC),r3
	jsr @r3
	add r14,r4
	mov.w @(loc_8c057f72,PC),r0
	mov 0x78,r2
	mov.b r2,@(r0,r14)
	add 0xFC,r0
	mov.b @(r0,r14),r3
	add 0x07,r0
	tst r3,r3
	bf.s loc_8c057eb6
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c057f74,PC),r0
	mov 0x10,r1
	mov.b r1,@(r0,r14)

loc_8c057eb6:
	mov.l @r15,r5
	bsr loc_8c0586a2
	mov r14,r4
	mov.l @r15,r5
	bsr loc_8c0585a4
	mov r14,r4
	mov.w @(loc_8c057f76,PC),r0
	mov 0x03,r3
	mov 0x0D,r5
	fmov @(r0,r14),fr3
	mov 0x38,r0
	mov 0x1A,r6
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c057f78,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c057f8c,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c057f90,PC),r3
	mov 0x04,r0
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov r14,r4
	mov.b @(0x2,r14),r0
	mov r14,r4
	add 0x34,r4
	extu.b r0,r5
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c057f94,PC),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c057ef6:
	mov.w @(loc_8c057f7a,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(r0,r14),r4
	tst r4,r4
	bf loc_8c057f08
	mov.w @(loc_8c057f7c,PC),r0
	mov.l @(r0,r14),r4

loc_8c057f08:
	mov.w @(loc_8c057f6e,PC),r0
	mov 0x03,r3
	mov 0x00,r7
	fldi0 fr3
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.w @(loc_8c057f7e,PC),r3
	mov 0x02,r6
	mov.b r7,@(r0,r14)
	add 0xAB,r0
	mov.b r3,@(r0,r14)
	add 0x1A,r0
	mov.b r6,@(r0,r14)
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c057f80,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c057f34
	mova @(0x68,PC),r0
	bra loc_8c057f38
	fmov @r0,fr3

loc_8c057f34:
	mova @(loc_8c057f9c,PC),r0
	fmov @r0,fr3

loc_8c057f38:
	mov.w @(loc_8c057f82,PC),r0
	mov 0x50,r3
	fmov fr3,@(r0,r14)
	mova @(0x60,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c057f84,PC),r0
	fmov fr3,@(r0,r14)
	mova @(0x5C,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c057f86,PC),r0
	mov.b r3,@(r0,r14)
	add 0x0C,r0
	mov.b r6,@(r0,r14)
	add 0xB0,r0
	mov.b r7,@(r0,r14)
	bsr loc_8c0585a4
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c057f8c,PC),r2
	mov r14,r4
	mov 0x1C,r6
	mov 0x0D,r5
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c057f6c:
	#data 0x0234
loc_8c057f6e:
	#data 0x0233
loc_8c057f70:
	#data 0x035c
loc_8c057f72:
	#data 0x0236
loc_8c057f74:
	#data 0x0239
loc_8c057f76:
	#data 0x041c
loc_8c057f78:
	#data 0x01f9
loc_8c057f7a:
	#data 0x01b8
loc_8c057f7c:
	#data 0x020c
loc_8c057f7e:
	#data 0x00ff
loc_8c057f80:
	#data 0x01d2
loc_8c057f82:
	#data 0x0218
loc_8c057f84:
	#data 0x021c
loc_8c057f86:
	#data 0x01e1
	#align4
loc_8c057f88:
	#data bank12.loc_8c129728
loc_8c057f8c:
	#data bank03.loc_8c034e8c
loc_8c057f90:
	#data bank04.loc_8c0423ac
loc_8c057f94:
	#data bank10.loc_8c100672
loc_8c057f98:
	#data 0x40a00000
loc_8c057f9c:
	#data 0xc0a00000
loc_8c057fa0:
	#data 0x421a4924
loc_8c057fa4:
	#data 0xbf700000

;----------------------------------------------
loc_8c057fa8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c0580c4,PC),r0
	mov 0x04,r3
	mov r4,r14
	mov.w @(loc_8c0580c6,PC),r4
	mov.l r5,@r15
	mov 0x08,r6
	mov.b r3,@(r0,r14)
	mov 0x00,r5
	mov.l @(loc_8c0580d4,PC),r3
	jsr @r3
	add r14,r4
	mov.w @(loc_8c0580c8,PC),r0
	mov 0x78,r2
	mov 0x00,r3
	fldi0 fr4
	mov.b r2,@(r0,r14)
	add 0xFE,r0
	mov.b r3,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mova @(0xFC,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	mov 0x02,r3
	fmov fr3,@(r0,r14)
	mova @(loc_8c0580dc,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c0580ca,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @r15,r5
	bsr loc_8c0585a4
	mov r14,r4
	mov r14,r4
	mov 0x0D,r5
	mov 0x09,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c0580e0,PC),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c058006:
	mov.w @(loc_8c0580c4,PC),r0
	mov 0x05,r3
	mov.l r14,@-r15
	mov r4,r14
	mov 0x00,r2
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.b r2,@(r0,r14)
	mov.w @(loc_8c0580cc,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c058028
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c058d64
	mov.l @r15+,r14

loc_8c058028:
	bsr loc_8c0585a4
	mov r14,r4
	mov.w @(loc_8c0580ca,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c05803e
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c058498
	mov.l @r15+,r14

loc_8c05803e:
	bsr loc_8c058544
	mov r14,r4
	mov.w @(loc_8c0580ca,PC),r0
	mov 0x02,r3
	mov.b r3,@(r0,r14)
	mov 0x0A,r0
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c058052:
	mov.b @(0x5,r4),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt loc_8c058066
	mov.w @(loc_8c0580ce,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c058066
	mov 0x00,r3
	mov.b r3,@(r0,r4)

loc_8c058066:
	bra loc_8c058070
	nop

loc_8c05806a:
	mov.w @(loc_8c0580ce,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r4)

loc_8c058070:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c0580c4,PC),r0
	mov 0x07,r3
	mov r4,r14
	mov.w @(loc_8c0580c6,PC),r4
	mov.l r5,@r15
	mov 0x08,r6
	mov.b r3,@(r0,r14)
	mov 0x00,r5
	mov.l @(loc_8c0580d4,PC),r3
	jsr @r3
	add r14,r4
	mov.w @(loc_8c0580c8,PC),r0
	mov 0x78,r2
	mov.b r2,@(r0,r14)
	add 0xFC,r0
	mov.b @(r0,r14),r3
	add 0x07,r0
	tst r3,r3
	bf.s loc_8c0580a4
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c0580d0,PC),r0
	mov 0x10,r1
	mov.b r1,@(r0,r14)

loc_8c0580a4:
	mov.l @r15,r5
	bsr loc_8c0586a2
	mov r14,r4
	mov.l @r15,r5
	bsr loc_8c0585a4
	mov r14,r4
	mov.w @(loc_8c0580ca,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c0580e4
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c058544
	mov.l @r15+,r14

;##############################################
loc_8c0580c4:
	#data 0x0233
loc_8c0580c6:
	#data 0x035c
loc_8c0580c8:
	#data 0x0236
loc_8c0580ca:
	#data 0x01f9
loc_8c0580cc:
	#data 0x0420
loc_8c0580ce:
	#data 0x0234
loc_8c0580d0:
	#data 0x0239
	#align4
loc_8c0580d4:
	#data bank12.loc_8c129728
loc_8c0580d8:
	#data 0x41092492
loc_8c0580dc:
	#data 0xbf892492
loc_8c0580e0:
	#data bank03.loc_8c034e8c

;----------------------------------------------
loc_8c0580e4:
	mov 0x02,r4
	mov r4,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov.w @(loc_8c058204,PC),r0
	mov.b r4,@(r0,r14)
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c058498
	mov.l @r15+,r14

;==============================================
loc_8c0580fa:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c058206,PC),r0
	mov 0x09,r3
	mov r4,r14
	mov.l r5,@r15
	mov.b r3,@(r0,r14)
	mov 0x00,r2
	mov.l @(loc_8c058210,PC),r3
	add 0x01,r0
	mov.b r2,@(r0,r14)
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.l @r15,r5
	bsr loc_8c0585a4
	mov r14,r4
	mov r14,r4
	mov 0x0D,r5
	mov 0x00,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c058214,PC),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c05812e:
	mov.w @(loc_8c058208,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c058162
	mov r5,r13
	mov.w @(loc_8c058204,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c058156
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c057d08
	mov.l @r15+,r14

loc_8c058156:
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c057c5c
	mov.l @r15+,r14

loc_8c058162:
	mov.w @(loc_8c058206,PC),r0
	mov 0x17,r2
	mov r13,r5
	mov.b r2,@(r0,r14)
	bsr loc_8c0586a2
	mov r14,r4
	mov r13,r5
	bsr loc_8c0585a4
	mov r14,r4
	mov.w @(loc_8c058204,PC),r0
	mov 0x02,r3
	mov 0x00,r6
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov 0x0D,r5
	lds.l @r15+,pr
	mov.l @(loc_8c058214,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c05818a:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c05820a,PC),r0
	mov 0x01,r3
	mov r4,r14
	mov.w @(loc_8c05820c,PC),r4
	mov 0x0A,r2
	mov.l r5,@r15
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.l @(loc_8c058218,PC),r3
	mov 0x00,r5
	mov.b r2,@(r0,r14)
	mov 0x08,r6
	jsr @r3
	add r14,r4
	mov.w @(loc_8c05820e,PC),r0
	mov 0x78,r2
	mov.b r2,@(r0,r14)
	mov.l @r15,r5
	bsr loc_8c0586a2
	mov r14,r4
	mov.l @r15,r5
	bsr loc_8c0585a4
	mov r14,r4
	mov r14,r4
	mov 0x0D,r5
	mov 0x1C,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c058214,PC),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c0581ce:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c05820a,PC),r0
	mov 0x01,r3
	mov r4,r14
	mov.l r5,@r15
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov 0x0B,r2
	mov.b r2,@(r0,r14)
	mov.l @r15,r5
	bsr loc_8c0586a2
	mov r14,r4
	mov.l @r15,r5
	bsr loc_8c0585a4
	mov r14,r4
	mov r14,r4
	mov 0x0D,r5
	mov 0x1D,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c058214,PC),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c058200:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c058204:
	#data 0x01f9
loc_8c058206:
	#data 0x0233
loc_8c058208:
	#data 0x0411
loc_8c05820a:
	#data 0x0234
loc_8c05820c:
	#data 0x035c
loc_8c05820e:
	#data 0x0236
	#align4
loc_8c058210:
	#data loc_8c0570aa
loc_8c058214:
	#data bank03.loc_8c034e8c
loc_8c058218:
	#data bank12.loc_8c129728

;==============================================
loc_8c05821c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.w @(loc_8c058324,PC),r4
	mov.l @(loc_8c05833c,PC),r3
	mov 0x08,r6
	mov.l r5,@r15
	mov 0x00,r5
	jsr @r3
	add r14,r4
	mov.w @(loc_8c058326,PC),r0
	mov 0x78,r2
	mov 0x0F,r3
	mov.b r2,@(r0,r14)
	add 0xFD,r0
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov 0x00,r4
	mov.b r4,@(r0,r14)
	mov 0x05,r5
	mov.w @(loc_8c058328,PC),r0
	mov.l @r15,r3
	mov.b @(r0,r3),r2
	extu.b r5,r3
	mov.b r2,@(r0,r14)
	mov.w @(loc_8c05832a,PC),r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b @(r0,r14),r2
	extu.b r2,r2
	cmp/eq r2,r3
	bt loc_8c058262
	mov.w @(loc_8c05832c,PC),r0
	mov.b r4,@(r0,r14)

loc_8c058262:
	mov.w @(loc_8c05832e,PC),r0
	mov.b r5,@(r0,r14)
	add 0xD1,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c05827a
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c058498
	mov.l @r15+,r14

loc_8c05827a:
	mov 0x0A,r0
	mov r14,r4
	mov 0x0D,r5
	mov.w r0,@(0x1C,r14)
	mov 0x10,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c058340,PC),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c05828e:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c058330,PC),r0
	mov r4,r14
	mov 0x10,r3
	mov.l r5,@r15
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov 0x00,r4
	mov.l @(loc_8c058344,PC),r3
	mov.b r4,@(r0,r14)
	add 0xC5,r0
	mov.b r4,@(r0,r14)
	mov.w @(loc_8c058332,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c058334,PC),r0
	mov 0x50,r2
	mov.b r2,@(r0,r14)
	mov.l @r15,r5
	bsr loc_8c0585a4
	mov r14,r4
	mov r14,r4
	mov 0x0D,r5
	mov 0x1A,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c058340,PC),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c0582d4:
	mov.w @(loc_8c058330,PC),r0
	mov 0x13,r3
	mov.l r14,@-r15
	mov r4,r14
	mov 0x00,r2
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.b r2,@(r0,r14)
	mov.w @(loc_8c058336,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c0582f6
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c058d64
	mov.l @r15+,r14

loc_8c0582f6:
	bsr loc_8c0585a4
	mov r14,r4
	mov.w @(loc_8c058338,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c05830c
	bsr loc_8c058498
	mov r14,r4
	bra loc_8c058316
	nop

loc_8c05830c:
	bsr loc_8c058544
	mov r14,r4
	mov.w @(loc_8c058338,PC),r0
	mov 0x02,r3
	mov.b r3,@(r0,r14)

loc_8c058316:
	mov.w @(loc_8c05833a,PC),r0
	mov.b @(r0,r14),r2
	add 0x07,r0
	mov.b r2,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c058324:
	#data 0x035c
loc_8c058326:
	#data 0x0236
loc_8c058328:
	#data 0x01a3
loc_8c05832a:
	#data 0x022a
loc_8c05832c:
	#data 0x0229
loc_8c05832e:
	#data 0x0228
loc_8c058330:
	#data 0x0233
loc_8c058332:
	#data 0x041c
loc_8c058334:
	#data 0x01e1
loc_8c058336:
	#data 0x0420
loc_8c058338:
	#data 0x01f9
loc_8c05833a:
	#data 0x0232
	#align4
loc_8c05833c:
	#data bank12.loc_8c129728
loc_8c058340:
	#data bank03.loc_8c034e8c
loc_8c058344:
	#data loc_8c05702e

;==============================================
loc_8c058348:
	mov.w @(loc_8c058458,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c058370
	mov.w @(loc_8c05845a,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c058368
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c057d08
	mov.l @r15+,r14

loc_8c058368:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c057c5c
	mov.l @r15+,r14

loc_8c058370:
	mov.w @(loc_8c05845c,PC),r0
	mov 0x14,r2
	mov 0x00,r3
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c058478,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05845e,PC),r0
	mov 0x00,r2
	mov.w @(loc_8c058460,PC),r3
	mov.b r2,@(r0,r14)
	add 0x1D,r0
	mov.b r3,@(r0,r14)
	add 0xE3,r0
	mov.l @(loc_8c05847c,PC),r3
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c058480,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c058464,PC),r4
	mov 0x00,r5
	lds.l @r15+,pr
	mov.w @(loc_8c058462,PC),r6
	add r14,r4
	mov.l @(loc_8c058484,PC),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c0583ae:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c05845c,PC),r0
	mov 0x18,r3
	mov r4,r14
	mov r5,r13
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c058466,PC),r0
	mov.w @(loc_8c058468,PC),r3
	mov.w @(r0,r13),r2
	extu.w r2,r2
	tst r3,r2
	bf.s loc_8c0583d4
	mov 0x00,r3
	mov.w @(loc_8c05846a,PC),r0
	mov.w @(loc_8c058460,PC),r2
	mov.b r2,@(r0,r14)

loc_8c0583d4:
	mov.w @(loc_8c05846c,PC),r0
	mov.b r3,@(r0,r14)
	add 0x84,r0
	mov.l @(r0,r14),r4
	tst r4,r4
	bf loc_8c0583e4
	mov.w @(loc_8c05846e,PC),r0
	mov.l @(r0,r14),r4

loc_8c0583e4:
	mov.w @(loc_8c058470,PC),r0
	mov.b @(r0,r14),r3
	mov.w @(loc_8c058472,PC),r0
	mov.b r3,@r15
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c058406
	mova @(0x94,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov @(r0,r4),fr2
	fmov @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr1,fr2
	bt loc_8c058416
	bra loc_8c058420
	nop

loc_8c058406:
	mova @(0x84,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov @(r0,r4),fr2
	fmov @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr2,fr1
	bf loc_8c058420

loc_8c058416:
	mov.w @(loc_8c058470,PC),r0
	mov 0x01,r3
	mov.b @(r0,r14),r2
	xor r3,r2
	mov.b r2,@(r0,r14)

loc_8c058420:
	mov.l @(loc_8c058490,PC),r3
	mov r13,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c058470,PC),r0
	mov r13,r5
	mov.b @r15,r2
	mov.b r2,@(r0,r14)
	bsr loc_8c0585a4
	mov r14,r4
	mov.w @(loc_8c058474,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c058440
	mov 0x01,r3
	mov.b r3,@(r0,r14)

loc_8c058440:
	mov.w @(loc_8c05845a,PC),r0
	mov 0x0D,r6
	mov 0x03,r2
	mov r14,r4
	mov r6,r5
	mov.b r2,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c058494,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c058458:
	#data 0x0411
loc_8c05845a:
	#data 0x01f9
loc_8c05845c:
	#data 0x0233
loc_8c05845e:
	#data 0x012c
loc_8c058460:
	#data 0x00ff
loc_8c058462:
	#data 0x00c8
loc_8c058464:
	#data 0x0340
loc_8c058466:
	#data 0x01ac
loc_8c058468:
	#data 0x0800
loc_8c05846a:
	#data 0x01da
loc_8c05846c:
	#data 0x0234
loc_8c05846e:
	#data 0x020c
loc_8c058470:
	#data 0x01a6
loc_8c058472:
	#data 0x01d2
loc_8c058474:
	#data 0x01e1
	#align4
loc_8c058478:
	#data loc_8c05734a
loc_8c05847c:
	#data bank06.loc_8c064f2c
loc_8c058480:
	#data bank04.loc_8c04f314
loc_8c058484:
	#data bank12.loc_8c129728
loc_8c058488:
	#data 0xc1baaaaa
loc_8c05848c:
	#data 0x41baaaaa
loc_8c058490:
	#data loc_8c0570aa
loc_8c058494:
	#data bank03.loc_8c034e8c

;----------------------------------------------
loc_8c058498:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c058596,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf.s loc_8c0584b4
	mov r15,r14
	mov 0x06,r2
	mov 0x01,r0
	mov.b r2,@r14
	bra loc_8c0584e0
	mov.b r0,@(0x1,r14)

loc_8c0584b4:
	mov 0x03,r2
	mov 0x00,r5
	mov.b r2,@r14
	mov r5,r0
	nop
	mov.b r0,@(0x1,r14)
	mov.w @(loc_8c058598,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c0584e0
	mov.w @(loc_8c058598,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	tst 0x70,r0
	bf loc_8c0584de
	mov.w @(loc_8c05859a,PC),r0
	mov.b @(r0,r4),r0
	and 0x04,r0
	cmp/eq 0x01,r0
	bf loc_8c0584e0

loc_8c0584de:
	mov.b r5,@r14

loc_8c0584e0:
	mov.w @(loc_8c058596,PC),r1
	mov.b @(0x1,r14),r0
	add r4,r1
	mov.b r0,@r1
	mov.w @(loc_8c058598,PC),r0
	mov.b @(r0,r4),r0
	and 0x70,r0
	mov.b r0,@(0x3,r14)
	extu.b r0,r0
	tst r0,r0
	bt loc_8c058512
	mov r14,r5
	add 0x03,r5
	mov.b @r5,r0
	extu.b r0,r0
	cmp/eq 0x30,r0
	bf loc_8c05850a
	mov.b @r14,r2
	add 0x02,r2
	bra loc_8c058534
	mov.b r2,@r14

loc_8c05850a:
	cmp/eq 0x20,r0
	bt loc_8c05852e
	bra loc_8c058534
	nop

loc_8c058512:
	mov.w @(loc_8c05859c,PC),r0
	mov 0x05,r2
	mov.b @(r0,r4),r3
	extu.b r3,r3
	cmp/ge r2,r3
	bf loc_8c058524
	mov.b @r14,r1
	add 0x01,r1
	mov.b r1,@r14

loc_8c058524:
	mov.b @(r0,r4),r3
	mov 0x0C,r2
	extu.b r3,r3
	cmp/ge r2,r3
	bf loc_8c058534

loc_8c05852e:
	mov.b @r14,r1
	add 0x01,r1
	mov.b r1,@r14

loc_8c058534:
	mov.l @(loc_8c0585a0,PC),r3
	mov.b @r14,r6
	jsr @r3
	mov 0x0D,r5
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c058544:
	mov.w @(loc_8c05859e,PC),r0
	mov 0x0A,r3
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c058598,PC),r0
	mov.b @(r0,r14),r0
	and 0x70,r0
	mov r0,r5
	extu.b r5,r4
	mov r4,r0
	nop
	cmp/eq 0x10,r0
	bt loc_8c05857a
	mov.w @(loc_8c05859e,PC),r0
	mov.b @(r0,r14),r2
	add 0x01,r2
	mov.b r2,@(r0,r14)
	mov r4,r0
	nop
	cmp/eq 0x20,r0
	bt loc_8c05857a
	mov.w @(loc_8c05859e,PC),r0
	mov.b @(r0,r14),r2
	add 0x01,r2
	mov.b r2,@(r0,r14)

loc_8c05857a:
	mov.w @(loc_8c05859e,PC),r0
	mov 0x0D,r5
	mov.l @(loc_8c0585a0,PC),r3
	mov.b @(r0,r14),r6
	jsr @r3
	mov r14,r4
	mov 0x0A,r0
	mov.w r0,@(0x1C,r14)
	mov 0x02,r3
	mov.w @(loc_8c058596,PC),r0
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c058596:
	#data 0x01f9
loc_8c058598:
	#data 0x0231
loc_8c05859a:
	#data 0x019f
loc_8c05859c:
	#data 0x022f
loc_8c05859e:
	#data 0x0158
loc_8c0585a0:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c0585a4:
	mov.w @(loc_8c05863e,PC),r0
	mov.b @(r0,r5),r0
	and 0x0F,r0
	mov r0,r6
	extu.b r0,r0
	tst r0,r0
	bf loc_8c0585c0
	mov.w @(loc_8c058640,PC),r0
	mov.b @(r0,r4),r0
	and 0x07,r0
	mov r0,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_8c05863a

loc_8c0585c0:
	extu.b r6,r0
	tst 0x08,r0
	bt.s loc_8c0585ca
	mov 0x04,r7
	mov 0x01,r6

loc_8c0585ca:
	extu.b r6,r0
	cmp/eq 0x01,r0
	bt loc_8c0585e0
	cmp/eq 0x02,r0
	bt loc_8c0585e4
	cmp/eq 0x03,r0
	bt loc_8c0585e8
	cmp/eq 0x06,r0
	bt loc_8c0585ec
	rts
	nop

loc_8c0585e0:
	bra loc_8c0585ee
	mov 0x01,r5

loc_8c0585e4:
	bra loc_8c0585ee
	mov 0x02,r5

loc_8c0585e8:
	bra loc_8c0585ee
	mov 0x03,r5

loc_8c0585ec:
	mov r7,r5

loc_8c0585ee:
	mov.w @(loc_8c058642,PC),r0
	extu.b r5,r3
	mov.b r5,@(r0,r4)
	add 0x01,r0
	mov.b @(r0,r4),r2
	extu.b r2,r2
	cmp/eq r2,r3
	bt loc_8c058604
	mov.w @(loc_8c058644,PC),r0
	mov 0x00,r2
	mov.b r2,@(r0,r4)

loc_8c058604:
	mov.w @(loc_8c058644,PC),r0
	mov.b @(r0,r4),r3
	cmp/ge r7,r3
	bt loc_8c05863a
	extu.b r5,r0
	cmp/eq 0x01,r0
	bt loc_8c058622
	cmp/eq 0x02,r0
	bt loc_8c058628
	cmp/eq 0x03,r0
	bt loc_8c05862e
	cmp/eq 0x04,r0
	bt loc_8c058634
	rts
	nop

loc_8c058622:
	mov.l @(loc_8c058648,PC),r2
	jmp @r2
	nop

loc_8c058628:
	mov.l @(loc_8c05864c,PC),r2
	jmp @r2
	nop

loc_8c05862e:
	mov.l @(loc_8c058650,PC),r2
	jmp @r2
	nop

loc_8c058634:
	mov.l @(loc_8c058654,PC),r2
	jmp @r2
	nop

loc_8c05863a:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05863e:
	#data 0x01ac
loc_8c058640:
	#data 0x0231
loc_8c058642:
	#data 0x022a
loc_8c058644:
	#data 0x0229
	#align4
loc_8c058648:
	#data bank0e.loc_8c0ee28c
loc_8c05864c:
	#data bank0e.loc_8c0ee418
loc_8c058650:
	#data bank0e.loc_8c0ee570
loc_8c058654:
	#data bank0e.loc_8c0ee944

;==============================================
loc_8c058658:
	mov.w @(loc_8c058742,PC),r0
	mov.l @(r0,r4),r6
	add 0x73,r0
	mov.b @(r0,r4),r5
	mov 0x12,r0
	mov.b @(r0,r6),r0
	extu.b r0,r0
	tst 0x04,r0
	bf loc_8c05869e
	mov.w @(loc_8c058744,PC),r0
	mov.l @(r0,r4),r6
	tst r6,r6
	bf.s loc_8c058678
	mov 0x0F,r7
	mov.w @(loc_8c058746,PC),r0
	mov.l @(r0,r4),r6

loc_8c058678:
	mov.w @(loc_8c058748,PC),r0
	mov.b @(r0,r6),r2
	mov.b @(r0,r4),r3
	extu.b r2,r2
	mov.l @(loc_8c058754,PC),r0
	extu.b r3,r3
	sub r2,r3
	add 0x07,r3
	and r7,r3
	mov.b @(r0,r3),r4
	add r4,r5
	exts.b r5,r3
	cmp/pz r3
	bt loc_8c058696
	mov 0x00,r5

loc_8c058696:
	exts.b r5,r3
	cmp/gt r7,r3
	bf loc_8c05869e
	mov r7,r5

loc_8c05869e:
	rts
	mov r5,r0

loc_8c0586a2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	mov r4,r14
	bsr loc_8c058658
	mov r14,r4
	mov r0,r5
	mov.w @(loc_8c05874a,PC),r0
	mov.l @r15,r2
	mov.w @(r0,r2),r3
	add 0x02,r0
	extu.b r5,r2
	mov.w r3,@(r0,r14)
	shll r2
	mov.l @(loc_8c058758,PC),r0
	mov.w @(r0,r2),r3
	mova @(loc_8c05875c,PC),r0
	fmov @r0,fr2
	mova @(loc_8c058760,PC),r0
	lds r3,fpul
	fmov @r0,fr1
	mov.w @(loc_8c05874c,PC),r0
	float fpul,fr3
	fmul fr2,fr3
	fdiv fr1,fr3
	fmov fr3,@(r0,r14)
	mova @(loc_8c058764,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c05874e,PC),r0
	fmov fr3,@(r0,r14)
	add 0xAE,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0586f8
	mov.w @(loc_8c05874c,PC),r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	add 0x04,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8c0586f8:
	mov.w @(loc_8c058750,PC),r0
	mov.w @(r0,r14),r0
	extu.w r0,r0
	tst 0x10,r0
	bt loc_8c05870c
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c0588c0
	mov.l @r15+,r14

loc_8c05870c:
	mov.w @(loc_8c058750,PC),r0
	mov.w @(loc_8c058752,PC),r2
	mov.w @(r0,r14),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c058722
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c058944
	mov.l @r15+,r14

loc_8c058722:
	mov.w @(loc_8c058742,PC),r0
	mov.l @(r0,r14),r4
	mov.b @(0x1,r4),r0
	extu.b r0,r0
	tst 0x40,r0
	bt loc_8c058738
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c05887e
	mov.l @r15+,r14

loc_8c058738:
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c058768
	mov.l @r15+,r14

;##############################################
loc_8c058742:
	#data 0x01bc
loc_8c058744:
	#data 0x01b8
loc_8c058746:
	#data 0x020c
loc_8c058748:
	#data 0x0207
loc_8c05874a:
	#data 0x01ac
loc_8c05874c:
	#data 0x0220
loc_8c05874e:
	#data 0x0224
loc_8c058750:
	#data 0x01ae
loc_8c058752:
	#data 0x1000
	#align4
loc_8c058754:
	#data bank14.loc_8c14f223
loc_8c058758:
	#data bank14.loc_8c14f15c
loc_8c05875c:
	#data 0x3fd55555
loc_8c058760:
	#data 0x43800000
loc_8c058764:
	#data 0x3ffd5555

;----------------------------------------------
loc_8c058768:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(loc_8c058816,PC),r0
	mov r4,r14
	mov.l @(r0,r14),r13
	tst r13,r13
	bf loc_8c05877e
	mov.w @(loc_8c058818,PC),r0
	mov.l @(r0,r14),r13

loc_8c05877e:
	mov.b @(0x5,r13),r0
	mov 0x02,r3
	extu.b r0,r0
	cmp/ge r3,r0
	bf loc_8c058790
	bsr loc_8c05887e
	mov r14,r4
	bra loc_8c058874
	nop

loc_8c058790:
	mov.w @(loc_8c05881a,PC),r0
	mov r15,r6
	bsr loc_8c058b64
	mov.b @(r0,r14),r4
	mov.w @(loc_8c05881c,PC),r0
	mov.w @(r0,r14),r0
	extu.w r0,r0
	tst 0x20,r0
	bt loc_8c0587ae
	mov.w @(loc_8c05881e,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0587b6
	bra loc_8c0587bc
	nop

loc_8c0587ae:
	mov.w @(loc_8c058820,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0587bc

loc_8c0587b6:
	fmov @r15,fr3
	fneg fr3
	fmov fr3,@r15

loc_8c0587bc:
	fmov @r15,fr3
	fldi0 fr2
	fcmp/eq fr2,fr3
	bt loc_8c05883c
	fmov @r15,fr4
	fldi0 fr3
	fcmp/gt fr4,fr3
	bf loc_8c0587d8
	mova @(loc_8c058824,PC),r0
	fmov @r0,fr2
	mov 0x5C,r0
	fmov @(r0,r13),fr1
	fcmp/gt fr1,fr2
	bt loc_8c0587ea

loc_8c0587d8:
	fldi0 fr3
	fcmp/gt fr3,fr4
	bf loc_8c0587f4
	mova @(0x48,PC),r0
	fmov @r0,fr2
	mov 0x5C,r0
	fmov @(r0,r13),fr1
	fcmp/gt fr2,fr1
	bf loc_8c0587f4

loc_8c0587ea:
	mov 0x5C,r0
	fmov @r15,fr2
	fmov @(r0,r13),fr3
	fadd fr3,fr2
	fmov fr2,@r15

loc_8c0587f4:
	fmov @r15,fr5
	fldi0 fr3
	fcmp/gt fr3,fr5
	bf.s loc_8c058804
	fldi0 fr3
	mova @(0x2C,PC),r0
	bra loc_8c058808
	fmov @r0,fr4

loc_8c058804:
	mova @(loc_8c058830,PC),r0
	fmov @r0,fr4

loc_8c058808:
	fcmp/gt fr3,fr5
	bf loc_8c058834
	fmov @r15,fr2
	fcmp/gt fr4,fr2
	bt loc_8c05883a
	bra loc_8c05883c
	nop

;##############################################
loc_8c058816:
	#data 0x01b8
loc_8c058818:
	#data 0x020c
loc_8c05881a:
	#data 0x022e
loc_8c05881c:
	#data 0x01ae
loc_8c05881e:
	#data 0x01d2
loc_8c058820:
	#data 0x01a6
	#align4
loc_8c058824:
	#data 0x3fd55555
loc_8c058828:
	#data 0xbfd55555
loc_8c05882c:
	#data 0x41fd5555
loc_8c058830:
	#data 0xc1fd5555

;----------------------------------------------
loc_8c058834:
	fmov @r15,fr2
	fcmp/gt fr2,fr4
	bf loc_8c05883c

loc_8c05883a:
	fmov fr4,@r15

loc_8c05883c:
	mov.w @(loc_8c058930,PC),r0
	fmov @r15,fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r15),fr4
	mov.w @(loc_8c058932,PC),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bt loc_8c058862
	fldi1 fr3
	fadd fr3,fr3
	mov 0x60,r0
	fmov @(r0,r13),fr2
	fdiv fr3,fr2
	bra loc_8c058868
	fadd fr2,fr4

loc_8c058862:
	mov 0x60,r0
	fmov @(r0,r13),fr3
	fadd fr3,fr4

loc_8c058868:
	mov.w @(loc_8c058934,PC),r0
	fmov fr4,@(r0,r14)
	mova @(loc_8c05893c,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)

loc_8c058874:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c05887e:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(loc_8c058936,PC),r0
	mov r15,r6
	mov r4,r14
	bsr loc_8c058b64
	mov.b @(r0,r14),r4
	mov.w @(loc_8c058938,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c05889c
	fmov @r15,fr3
	fneg fr3
	fmov fr3,@r15

loc_8c05889c:
	mov.w @(loc_8c058930,PC),r0
	fmov @r15,fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r15),fr3
	mov.w @(loc_8c058934,PC),r0
	fmov fr3,@(r0,r14)
	mova @(loc_8c05893c,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c0588c0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(loc_8c058940,PC),r3
	mov r4,r14
	mov.b r5,@r15
	jsr @r3
	mov r14,r4
	mov.b @r15,r5
	mov r15,r6
	mov.w @(loc_8c058936,PC),r0
	add 0x04,r6
	bsr loc_8c058b64
	mov.b @(r0,r14),r4
	mov.w @(loc_8c05893a,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c0588ee
	mov 0x04,r0
	fldi0 fr3
	fmov @(r0,r15),fr2
	fcmp/gt fr2,fr3

loc_8c0588ec:
	bt loc_8c058900

loc_8c0588ee:
	mov.w @(loc_8c05893a,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bf loc_8c05890a
	mov 0x04,r0
	fldi0 fr3
	fmov @(r0,r15),fr2
	fcmp/gt fr3,fr2
	bf loc_8c05890a

loc_8c058900:
	mov 0x04,r0
	fmov @(r0,r15),fr3
	mov 0x04,r0
	fneg fr3
	fmov fr3,@(r0,r15)

loc_8c05890a:
	mov 0x04,r0
	fmov @(r0,r15),fr3
	mov.w @(loc_8c058930,PC),r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mov 0x08,r0
	fmov @(r0,r15),fr3
	mov.w @(loc_8c058934,PC),r0
	fmov fr3,@(r0,r14)
	mova @(loc_8c05893c,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;##############################################
loc_8c058930:
	#data 0x0218
loc_8c058932:
	#data 0x01fc
loc_8c058934:
	#data 0x021c
loc_8c058936:
	#data 0x022e
loc_8c058938:
	#data 0x01a6
loc_8c05893a:
	#data 0x0130
	#align4
loc_8c05893c:
	#data 0xbf4db6db
loc_8c058940:
	#data loc_8c052214

;==============================================
loc_8c058944:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov r4,r14
	mov r5,r0
	nop
	mov.l @(loc_8c058a48,PC),r3
	mov.b r0,@(0x4,r15)
	jsr @r3
	mov r14,r4
	mov.b @(0x4,r15),r0
	mov r15,r6
	add 0x08,r6
	mov r0,r5
	mov.w @(loc_8c058a36,PC),r0
	bsr loc_8c058b64
	mov.b @(r0,r14),r4
	mov 0x34,r0
	fmov @(r0,r14),fr5
	mov.w @(loc_8c058a38,PC),r0
	mov.l @(r0,r14),r3
	mov 0x34,r0
	mov.l r3,@r15
	fmov @(r0,r3),fr4
	fcmp/gt fr5,fr4
	bf loc_8c058982
	mov 0x08,r0
	fldi0 fr3
	fmov @(r0,r15),fr2
	fcmp/gt fr2,fr3
	bt loc_8c058990

loc_8c058982:
	fcmp/gt fr4,fr5
	bf loc_8c05899a
	mov 0x08,r0
	fldi0 fr3
	fmov @(r0,r15),fr2
	fcmp/gt fr3,fr2
	bf loc_8c05899a

loc_8c058990:
	mov 0x08,r0
	fmov @(r0,r15),fr3
	mov 0x08,r0
	fneg fr3
	fmov fr3,@(r0,r15)

loc_8c05899a:
	mov 0x08,r0
	fmov @(r0,r15),fr3
	mov.w @(loc_8c058a3a,PC),r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mov 0x0C,r0
	fmov @(r0,r15),fr3
	mov.w @(loc_8c058a3c,PC),r0
	fmov fr3,@(r0,r14)
	mova @(loc_8c058a4c,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	add 0x10,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0589c0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c058658
	mov r4,r14
	mov r0,r5
	mov.l @(loc_8c058a50,PC),r0
	extu.b r5,r2
	shll r2
	mov.w @(r0,r2),r3
	mova @(0x80,PC),r0
	fmov @r0,fr2
	mova @(0x80,PC),r0
	lds r3,fpul
	fmov @r0,fr1
	mov.w @(loc_8c058a3e,PC),r0
	float fpul,fr3
	fmul fr2,fr3
	fdiv fr1,fr3
	fmov fr3,@(r0,r14)
	mova @(0x74,PC),r0
	fmov @r0,fr3
	mov.w @(loc_8c058a40,PC),r0
	fmov fr3,@(r0,r14)
	add 0xA4,r0
	mov.l @(r0,r14),r4
	tst r4,r4
	bf loc_8c0589fa
	mov.w @(loc_8c058a42,PC),r0
	mov.l @(r0,r14),r4

loc_8c0589fa:
	mov.w @(loc_8c058a44,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c058a12
	mov.w @(loc_8c058a3e,PC),r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	add 0x04,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8c058a12:
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c058a26
	mov.w @(loc_8c058a46,PC),r0
	mov.l @(r0,r14),r0
	mov.b @(0x1,r0),r0
	extu.b r0,r0
	tst 0x40,r0
	bt loc_8c058a2e

loc_8c058a26:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c058afa
	mov.l @r15+,r14

loc_8c058a2e:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c058a60
	mov.l @r15+,r14

;##############################################
loc_8c058a36:
	#data 0x022e
loc_8c058a38:
	#data 0x01b4
loc_8c058a3a:
	#data 0x0218
loc_8c058a3c:
	#data 0x021c
loc_8c058a3e:
	#data 0x0220
loc_8c058a40:
	#data 0x0224
loc_8c058a42:
	#data 0x020c
loc_8c058a44:
	#data 0x01d2
loc_8c058a46:
	#data 0x01bc
	#align4
loc_8c058a48:
	#data loc_8c052214
loc_8c058a4c:
	#data 0xbf4db6db
loc_8c058a50:
	#data bank14.loc_8c14f15c
loc_8c058a54:
	#data 0x3fd55555
loc_8c058a58:
	#data 0x43800000
loc_8c058a5c:
	#data 0x3ffd5555

;----------------------------------------------
loc_8c058a60:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(loc_8c058b4c,PC),r0
	mov r4,r14
	mov r15,r6
	mov.l @(r0,r14),r13
	add 0x66,r0
	bsr loc_8c058b64
	mov.b @(r0,r14),r4
	mov.w @(loc_8c058b4e,PC),r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bt loc_8c058a84
	fmov @r15,fr3
	fneg fr3
	fmov fr3,@r15

loc_8c058a84:
	mov 0x5C,r0
	fmov @r15,fr2
	fmov @(r0,r13),fr3
	fadd fr3,fr2
	fldi0 fr3
	fmov fr2,fr5
	fcmp/gt fr3,fr5
	bf.s loc_8c058a9c
	fmov fr2,@r15
	mova @(0xC0,PC),r0
	bra loc_8c058aa0
	fmov @r0,fr4

loc_8c058a9c:
	mova @(loc_8c058b5c,PC),r0
	fmov @r0,fr4

loc_8c058aa0:
	fldi0 fr3
	fcmp/gt fr3,fr5
	bf loc_8c058ab0
	fmov @r15,fr2
	fcmp/gt fr4,fr2
	bt loc_8c058ab6
	bra loc_8c058ab8
	nop

loc_8c058ab0:
	fmov @r15,fr2
	fcmp/gt fr2,fr4
	bf loc_8c058ab8

loc_8c058ab6:
	fmov fr4,@r15

loc_8c058ab8:
	mov.w @(loc_8c058b50,PC),r0
	fmov @r15,fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r15),fr4
	mov.w @(loc_8c058b52,PC),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bt loc_8c058ade
	fldi1 fr3
	fadd fr3,fr3
	mov 0x60,r0
	fmov @(r0,r13),fr2
	fdiv fr3,fr2
	bra loc_8c058ae4
	fadd fr2,fr4

loc_8c058ade:
	mov 0x60,r0
	fmov @(r0,r13),fr3
	fadd fr3,fr4

loc_8c058ae4:
	mov.w @(loc_8c058b54,PC),r0
	fmov fr4,@(r0,r14)
	mova @(loc_8c058b60,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c058afa:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(loc_8c058b4c,PC),r0
	mov r4,r14
	mov r15,r6
	add 0x04,r6
	mov.l @(r0,r14),r3
	mov.w @(loc_8c058b56,PC),r0
	mov.l r3,@r15
	bsr loc_8c058b64
	mov.b @(r0,r14),r4
	mov.w @(loc_8c058b4e,PC),r0
	mov.l @r15,r2
	mov.b @(r0,r2),r3
	tst r3,r3
	bt loc_8c058b26
	mov 0x04,r0
	fmov @(r0,r15),fr3
	mov 0x04,r0
	fneg fr3
	fmov fr3,@(r0,r15)

loc_8c058b26:
	mov 0x04,r0
	fmov @(r0,r15),fr3
	mov.w @(loc_8c058b50,PC),r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mov 0x08,r0
	fmov @(r0,r15),fr3
	mov.w @(loc_8c058b54,PC),r0
	fmov fr3,@(r0,r14)
	mova @(loc_8c058b60,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c058b4c:
	#data 0x01c8
loc_8c058b4e:
	#data 0x01d2
loc_8c058b50:
	#data 0x0218
loc_8c058b52:
	#data 0x01fc
loc_8c058b54:
	#data 0x021c
loc_8c058b56:
	#data 0x022e
	#align4
loc_8c058b58:
	#data 0x41fd5555
loc_8c058b5c:
	#data 0xc1fd5555
loc_8c058b60:
	#data 0xbf4db6db

;==============================================
loc_8c058b64:
	mov.l r8,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(loc_8c058c2c,PC),r0
	extu.b r5,r5
	shll r5
	mov.l r6,@r15
	mov.w @(r0,r5),r3
	extu.b r4,r4
	mov 0x28,r0
	sub r4,r0
	lds r3,fpul
	and 0x1F,r0
	mov.l @(loc_8c058c30,PC),r3
	shll8 r0
	shll2 r0
	float fpul,fr15
	shll r0
	mov.w r0,@(0x4,r15)
	mov.w @(0x4,r15),r0
	mov.l @r15,r8
	mov.l r0,@(0x8,r15)
	jsr @r3
	mov r0,r4
	fmov fr15,fr3
	fmul fr0,fr3
	mova @(0x98,PC),r0
	mov.l @(loc_8c058c3c,PC),r3
	fmov @r0,fr2
	mova @(loc_8c058c38,PC),r0
	fmov @r0,fr1
	fdiv fr2,fr3
	fmul fr1,fr3
	fmov fr3,@r8
	mov.l @r15,r8
	add 0x04,r8
	jsr @r3
	mov.l @(0x8,r15),r4
	fmul fr0,fr15
	mova @(loc_8c058c40,PC),r0
	fmov @r0,fr3
	mova @(loc_8c058c44,PC),r0
	fmov @r0,fr2
	fdiv fr3,fr15
	fmul fr2,fr15
	fmov fr15,@r8
	add 0x0C,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r8

;==============================================
loc_8c058bcc:
	mov.w @(loc_8c058c1e,PC),r0
	mov 0x12,r1
	mov.l @(r0,r4),r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c058c0c
	mov.w @(loc_8c058c20,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c058c0c
	mov.w @(loc_8c058c22,PC),r0
	mov.l @(r0,r4),r4
	mov.w @(loc_8c058c24,PC),r0
	mov.w @(r0,r4),r0
	tst 0x01,r0
	bt loc_8c058c0c
	mov.w @(loc_8c058c20,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c058c0c
	mov.w @(loc_8c058c26,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8c058c0c
	mov.w @(loc_8c058c28,PC),r0
	mov 0x02,r3
	mov.w @(r0,r4),r2
	cmp/ge r3,r2
	bt loc_8c058c10

loc_8c058c0c:
	rts
	mov 0x00,r0

loc_8c058c10:
	mov.w @(loc_8c058c2a,PC),r0
	mov.b @(r0,r4),r3
	add 0x01,r3
	mov.b r3,@(r0,r4)
	mov 0x01,r0
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c058c1e:
	#data 0x01bc
loc_8c058c20:
	#data 0x01f9
loc_8c058c22:
	#data 0x01b8
loc_8c058c24:
	#data 0x0264
loc_8c058c26:
	#data 0x01fc
loc_8c058c28:
	#data 0x0260
loc_8c058c2a:
	#data 0x0272
	#align4
loc_8c058c2c:
	#data bank14.loc_8c14f13c
loc_8c058c30:
	#data bank11.loc_8c11e2e0
loc_8c058c34:
	#data 0x43160000
loc_8c058c38:
	#data 0x3fd55555
loc_8c058c3c:
	#data bank11.loc_8c11e860
loc_8c058c40:
	#data 0x42fa0000
loc_8c058c44:
	#data 0x40092492

;==============================================
loc_8c058c48:
	mov.w @(loc_8c058d46,PC),r0
	mov.w @(loc_8c058d48,PC),r2
	mov.w @(r0,r4),r3
	extu.w r3,r3
	tst r2,r3
	bt.s loc_8c058c6a
	mov 0x03,r5
	mov.w @(loc_8c058d4a,PC),r0
	mov.l @(r0,r4),r3
	add 0xFC,r0
	mov.l @(r0,r4),r1
	cmp/eq r3,r1
	bf loc_8c058c6a
	mov.w @(loc_8c058d4a,PC),r0
	mov.l @(r0,r4),r3
	add 0x3D,r0
	mov.b r5,@(r0,r3)

loc_8c058c6a:
	mov.w @(loc_8c058d4c,PC),r0
	mov r0,r1
	add 0x04,r1
	add r4,r1
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	add 0x04,r0
	fmov @(r0,r4),fr3
	fldi0 fr2
	fcmp/eq fr2,fr3
	bt loc_8c058c9c
	mov.w @(loc_8c058d4c,PC),r0
	fmov @(r0,r4),fr3
	add 0x04,r0
	fmov @(r0,r4),fr2
	fmul fr3,fr2
	fldi0 fr3
	fcmp/gt fr3,fr2
	bf loc_8c058c9c
	mov.w @(loc_8c058d4e,PC),r0
	fmov fr3,@(r0,r4)
	add 0xFC,r0
	fmov fr3,@(r0,r4)

loc_8c058c9c:
	mov.w @(loc_8c058d50,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c058cee
	mov.w @(loc_8c058d52,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c058cee
	mov.w @(loc_8c058d54,PC),r0
	mov.l @(r0,r4),r6
	mov.b @(0x1,r6),r0
	extu.b r0,r0
	tst 0x80,r0
	bf loc_8c058cee
	mov.w @(loc_8c058d56,PC),r0
	mov 0x02,r3
	mov.b @(r0,r4),r0
	extu.b r0,r0
	add 0x01,r0
	and 0x1F,r0
	cmp/gt r3,r0
	bf loc_8c058cee
	mov.w @(loc_8c058d4a,PC),r0
	mov.l @(r0,r4),r6
	tst r6,r6
	bf loc_8c058cd4
	mov.w @(loc_8c058d58,PC),r0
	mov.l @(r0,r4),r6

loc_8c058cd4:
	mov.w @(loc_8c058d50,PC),r0
	mov.b @(r0,r4),r3
	mov.b @(r0,r6),r2
	xor r5,r3
	cmp/eq r2,r3
	bt loc_8c058cee
	mov.w @(loc_8c058d4c,PC),r1
	mov 0x34,r0
	fmov @(r0,r6),fr2
	add r4,r1
	fmov @r1,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r6)

loc_8c058cee:
	mov 0x5C,r1
	add r4,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r4),fr2
	mov 0x68,r1
	add r4,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x5C,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	mov 0x60,r1
	add r4,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	mov 0x6C,r1
	add r4,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x60,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)

loc_8c058d26:
	mova @(0x34,PC),r0
	fmov @r0,fr4
	mov 0x60,r0
	fmov @(r0,r4),fr3
	fcmp/gt fr4,fr3
	bf loc_8c058d34
	fmov fr4,@(r0,r4)

loc_8c058d34:
	mova @(loc_8c058d60,PC),r0
	fmov @r0,fr4
	mov 0x60,r0
	fmov @(r0,r4),fr3
	fcmp/gt fr3,fr4
	bf loc_8c058d42
	fmov fr4,@(r0,r4)

loc_8c058d42:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c058d46:
	#data 0x01ae
loc_8c058d48:
	#data 0x1010
loc_8c058d4a:
	#data 0x01b8
loc_8c058d4c:
	#data 0x0220
loc_8c058d4e:
	#data 0x0224
loc_8c058d50:
	#data 0x01fd
loc_8c058d52:
	#data 0x0235
loc_8c058d54:
	#data 0x01bc
loc_8c058d56:
	#data 0x022e
loc_8c058d58:
	#data 0x020c
	#align4
loc_8c058d5c:
	#data 0x42892492
loc_8c058d60:
	#data 0xc2892492

;==============================================
loc_8c058d64:
	mov.l r14,@-r15
	mov 0x03,r0
	sts.l pr,@-r15
	mov r4,r14
	mov 0x00,r4
	mov.b r0,@(0x5,r14)
	mov r4,r0
	nop
	mov.b r0,@(0x7,r14)
	mov 0x01,r3
	mov.b r0,@(0x6,r14)
	mov r14,r1
	mov.w @(loc_8c058e90,PC),r0
	add 0x50,r1
	mov.w @(loc_8c058e94,PC),r2
	mov.b r4,@(r0,r14)
	mov.w @(loc_8c058e92,PC),r0
	add r14,r2
	mov.b r3,@(r0,r14)
	mov 0x48,r0
	mov.l @(loc_8c058ea4,PC),r3
	mov.l r4,@(r0,r14)
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c058e96,PC),r0
	mov 0x20,r5
	mov.l @(loc_8c058ea8,PC),r3
	fldi1 fr3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c058e98,PC),r0
	mov 0x02,r2
	mov 0x1E,r3
	mov r14,r4
	mov.b r2,@(r0,r14)
	add 0xFB,r0
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov 0x05,r2
	mov.b r2,@(r0,r14)
	add 0x05,r0
	mov 0x01,r3
	mov r2,r5
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	bra loc_8c058e5a
	mov.l @r15+,r14

;==============================================
loc_8c058dc4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.b r5,@r15
	mov r4,r14
	mov r6,r0
	nop
	mov.b r0,@(0x4,r15)
	mov 0x03,r0
	mov 0x00,r4
	mov.b r0,@(0x5,r14)
	mov r4,r0
	nop
	mov.b r0,@(0x7,r14)
	mov 0x01,r3
	mov.b r0,@(0x6,r14)
	mov r14,r1
	mov.w @(loc_8c058e90,PC),r0
	add 0x50,r1
	mov.w @(loc_8c058e94,PC),r2
	mov.b r4,@(r0,r14)
	mov.w @(loc_8c058e92,PC),r0
	add r14,r2
	mov.b r3,@(r0,r14)
	mov 0x48,r0
	mov.l @(loc_8c058ea4,PC),r3
	mov.l r4,@(r0,r14)
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c058e96,PC),r0
	mov 0x20,r5
	mov.l @(loc_8c058ea8,PC),r3
	fldi1 fr3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c058e98,PC),r0
	mov 0x02,r2
	mov.b r2,@(r0,r14)
	mov.b @(0x4,r15),r0
	extu.b r0,r0
	cmp/pz r0
	bf loc_8c058e1e
	bra loc_8c058e28
	and 0x1F,r0

loc_8c058e1e:
	not r0,r0
	add 0x01,r0
	and 0x1F,r0
	not r0,r0
	add 0x01,r0

loc_8c058e28:
	mov.w @(loc_8c058e9a,PC),r1
	add r14,r1
	mov.b r0,@r1
	mov.b @r15,r0
	extu.b r0,r0
	cmp/pz r0
	bf loc_8c058e3a
	bra loc_8c058e44
	and 0x0F,r0

loc_8c058e3a:
	not r0,r0
	add 0x01,r0
	and 0x0F,r0
	not r0,r0
	add 0x01,r0

loc_8c058e44:
	mov.w @(loc_8c058e9c,PC),r1
	mov 0x01,r3
	mov r14,r4
	add r14,r1
	mov.b r0,@r1
	mov.w @(loc_8c058e9e,PC),r0
	mov.b r3,@(r0,r14)
	mov.b @r15,r5
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8c058e5a:
	mov.w @(loc_8c058ea0,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(r0,r14),r4
	tst r4,r4
	bt loc_8c058e78
	mov.b @(0x1,r4),r0
	extu.b r0,r0
	tst 0x40,r0
	bt loc_8c058e78
	bsr loc_8c05887e
	mov r14,r4
	bra loc_8c058e7c
	nop

loc_8c058e78:
	bsr loc_8c058768
	mov r14,r4
            
loc_8c058e7c:
	mov.w @(loc_8c058ea2,PC),r0
	mov 0x02,r3
	mov r14,r4
	mov 0x0A,r6
	mov.b r3,@(r0,r14)
	mov 0x0D,r5
	lds.l @r15+,pr
	mov.l @(loc_8c058eac,PC),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c058e90:
	#data 0x0238
loc_8c058e92:
	#data 0x012c
loc_8c058e94:
	#data 0x0284
loc_8c058e96:
	#data 0x0108
loc_8c058e98:
	#data 0x0233
loc_8c058e9a:
	#data 0x022e
loc_8c058e9c:
	#data 0x022f
loc_8c058e9e:
	#data 0x0234
loc_8c058ea0:
	#data 0x01bc
loc_8c058ea2:
	#data 0x01f9
	#align4
loc_8c058ea4:
	#data bank12.loc_8c1294c8
loc_8c058ea8:
	#data loc_8c0530d8
loc_8c058eac:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c058eb0:
	mov.l r14,@-r15
	mov 0x03,r0
	mov.l r13,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov 0x00,r13
	mov.b r0,@(0x5,r14)
	mov r13,r0
	nop
	mov.b r0,@(0x7,r14)
	mov 0x20,r5
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c058f98,PC),r0
	mov.l @(loc_8c058fac,PC),r3
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c058f9a,PC),r0
	mov 0x16,r3
	mov 0x01,r2
	mov.b r13,@(r0,r14)
	add 0xFD,r0
	mov.b r3,@(r0,r14)
	add 0xFB,r0
	mov.b r13,@(r0,r14)
	add 0x01,r0
	mov 0x0A,r3
	mov.b r3,@(r0,r14)
	add 0x05,r0
	mov.b r2,@(r0,r14)
	add 0xFB,r0
	mov.b @(r0,r14),r5
	bsr loc_8c05887e
	mov r14,r4
	mov.w @(loc_8c058f9c,PC),r0
	mov 0x02,r2
	mov 0x01,r3
	mov.b r2,@(r0,r14)
	add 0xA7,r0
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c058f08:
	mov.w @(loc_8c058f9e,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(r0,r14),r3
	add 0xF0,r0
	mov.l r3,@(r0,r14)
	add 0xE9,r0
	mov.b @(r0,r14),r2
	add 0x01,r0
	mov.l @(loc_8c058fb0,PC),r3
	mov.b r2,@(r0,r14)
	add 0x16,r0
	mov.l @(r0,r14),r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c058fa0,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf.s loc_8c058f40
	mov 0x0B,r4
	mov.w @(loc_8c058fa0,PC),r0
	mov 0x02,r2
	mov 0x00,r3
	mov.b r2,@(r0,r14)
	add 0x03,r0
	mov.b r3,@(r0,r14)

loc_8c058f40:
	mov.w @(loc_8c058fa2,PC),r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	cmp/ge r4,r3
	bt loc_8c058f4c
	mov.b r4,@(r0,r14)

loc_8c058f4c:
	mov.w @(loc_8c058fa4,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c058f86
	mov.w @(loc_8c058fa6,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c058f86
	mov.l @(loc_8c058fb4,PC),r2
	mov.w @(loc_8c058fa8,PC),r3
	jsr @r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c058fb8,PC),r2
	mov.b @(0x2,r14),r0
	mov.l @r2,r3
	extu.b r0,r0
	add 0x36,r3
	mov.b @(r0,r3),r1
	mov 0x02,r3
	cmp/gt r3,r1
	bt loc_8c058f7e
	mov.w @(loc_8c058faa,PC),r0
	mov.l @(r0,r14),r5
	bsr loc_8c059e86
	mov r14,r4

loc_8c058f7e:
	mov.l @(loc_8c058fbc,PC),r2
	mov 0x00,r5
	jsr @r2
	mov r14,r4

loc_8c058f86:
	mov.l @(loc_8c058fc0,PC),r3
	mov 0x01,r5
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c058fc4,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c058f98:
	#data 0x0238
loc_8c058f9a:
	#data 0x0236
loc_8c058f9c:
	#data 0x01f9
loc_8c058f9e:
	#data 0x01c8
loc_8c058fa0:
	#data 0x0233
loc_8c058fa2:
	#data 0x022f
loc_8c058fa4:
	#data 0x0420
loc_8c058fa6:
	#data 0x01dc
loc_8c058fa8:
	#data 0x00ff
loc_8c058faa:
	#data 0x01b8
	#align4
loc_8c058fac:
	#data loc_8c0530d8
loc_8c058fb0:
	#data loc_8c056454
loc_8c058fb4:
	#data bank03.loc_8c030fae
loc_8c058fb8:
	#data 0x8c2896b0
loc_8c058fbc:
	#data bank04.loc_8c042008
loc_8c058fc0:
	#data bank03.loc_8c035162
loc_8c058fc4:
	#data loc_8c056f2e
 
;==============================================
loc_8c058fc8:
	mov.w @(loc_8c0590c2,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(r0,r14),r3
	add 0xF0,r0
	mov.l r3,@(r0,r14)
	add 0xE9,r0
	mov.b @(r0,r14),r2
	add 0x01,r0
	mov.l @(loc_8c0590d4,PC),r3
	mov.b r2,@(r0,r14)
	add 0x16,r0
	mov.l @(r0,r14),r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c0590c4,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c058ffe
	mov.w @(loc_8c0590c4,PC),r0
	mov 0x02,r2
	mov 0x00,r3
	mov.b r2,@(r0,r14)
	add 0x03,r0
	mov.b r3,@(r0,r14)

loc_8c058ffe:
	mov.w @(loc_8c0590c6,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bf loc_8c059038
	mov.w @(loc_8c0590c8,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c059038
	mov.l @(loc_8c0590d8,PC),r3
	mov.w @(loc_8c0590ca,PC),r2
	jsr @r3
	mov.b r2,@(r0,r14)
	mov.l @(loc_8c0590dc,PC),r3
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	add 0x36,r2
	mov.b @(r0,r2),r1
	mov 0x02,r2
	cmp/gt r2,r1
	bt loc_8c059030
	mov.w @(loc_8c0590cc,PC),r0
	mov.l @(r0,r14),r5
	bsr loc_8c059e86
	mov r14,r4

loc_8c059030:
	mov.l @(loc_8c0590e0,PC),r2
	mov 0x00,r5
	jsr @r2
	mov r14,r4

loc_8c059038:
	mov.l @(loc_8c0590e4,PC),r3
	mov 0x01,r5
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8c0590e8,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14


;==============================================
loc_8c05904a:
	mov.w @r5,r3
	tst r3,r3
	bt loc_8c0590be
	mov.l @(loc_8c0590ec,PC),r3
	mov 0x57,r0
	mov.l @r3,r6
	mov.b @(r0,r6),r2
	tst r2,r2
	bt loc_8c059064
	mov.w @r5,r2
	lds r2,fpul
	bra loc_8c0590a4
	float fpul,fr4

loc_8c059064:
	mov 0x55,r0
	mov.b @(r0,r6),r0
	cmp/eq 0x00,r0
	bt loc_8c059078
	cmp/eq 0x01,r0
	bt loc_8c0590be
	cmp/eq 0x02,r0
	bt loc_8c05909e
	bra loc_8c0590a4
	nop

loc_8c059078:
	mov.w @(loc_8c0590ce,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c0590be
	mov.w @r5,r3
	mova @(0x6C,PC),r0
	fmov @r0,fr2
	mov r3,r2
	shll r3
	add r2,r3
	fldi1 fr5
	lds r3,fpul
	float fpul,fr3
	fmov fr3,fr4
	fdiv fr2,fr4
	fcmp/gt fr4,fr5
	bf loc_8c0590a4
	bra loc_8c0590a4
	fmov fr5,fr4

loc_8c05909e:
	mov.w @r5,r2
	lds r2,fpul
	float fpul,fr4

loc_8c0590a4:
	ftrc fr4,fpul
	mov.w @(loc_8c0590d0,PC),r0
	mov.w @(r0,r4),r3
	sts fpul,r5
	sub r5,r3
	mov.w r3,@(r0,r4)
	exts.w r3,r3
	cmp/pz r3
	bt loc_8c0590ba
	mov 0x00,r3
	mov.w r3,@(r0,r4)

loc_8c0590ba:
	mov.w @(loc_8c0590d2,PC),r0
	mov.w r5,@(r0,r4)

loc_8c0590be:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0590c2:
	#data 0x01c8
loc_8c0590c4:
	#data 0x0233
loc_8c0590c6:
	#data 0x0420
loc_8c0590c8:
	#data 0x01dc
loc_8c0590ca:
	#data 0x00ff
loc_8c0590cc:
	#data 0x01b8
loc_8c0590ce:
	#data 0x0411
loc_8c0590d0:
	#data 0x0424
loc_8c0590d2:
	#data 0x032c
	#align4
loc_8c0590d4:
	#data loc_8c056454
loc_8c0590d8:
	#data bank03.loc_8c030fae
loc_8c0590dc:
	#data 0x8c2896b0
loc_8c0590e0:
	#data bank04.loc_8c042008
loc_8c0590e4:
	#data bank03.loc_8c035162
loc_8c0590e8:
	#data loc_8c056f2e
loc_8c0590ec:
	#data work.GameGlobalPointer
loc_8c0590f0:
	#data 0x40800000

;==============================================
loc_8c0590f4:
	mov.l @(loc_8c0591c4,PC),r3
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @r3,r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf.s loc_8c05914a
	mov r4,r14
	mov.w @(loc_8c0591bc,PC),r0
	mov.w @(r0,r14),r1
	tst r1,r1
	bt loc_8c05914a
	exts.w r5,r4
	tst r4,r4
	bt loc_8c05914a
	cmp/pz r4
	bt loc_8c059120
	bsr loc_8c0591c8
	mov r14,r4
	bra loc_8c059142
	nop

loc_8c059120:
	mov.w @(r0,r14),r3
	mov.w @(loc_8c0591be,PC),r4
	add r5,r3
	mov.w r3,@(r0,r14)
	exts.w r3,r3
	cmp/gt r4,r3
	bf loc_8c059130
	mov.w r4,@(r0,r14)

loc_8c059130:
	mov.w @(r0,r14),r3
	add 0x04,r0
	mov.w @(r0,r14),r2
	cmp/gt r2,r3
	bf loc_8c059142
	mov.w @(loc_8c0591c0,PC),r0
	mov.w @(r0,r14),r2
	add 0xFC,r0
	mov.w r2,@(r0,r14)

loc_8c059142:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c059718
	mov.l @r15+,r14

loc_8c05914a:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c059150:
	mov.l @(loc_8c0591c4,PC),r3
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @r3,r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf.s loc_8c0591b4
	mov r5,r13
	mov.w @(loc_8c0591bc,PC),r0
	mov.w @(r0,r14),r1
	tst r1,r1
	bt loc_8c0591b4
	exts.w r13,r4
	tst r4,r4
	bt loc_8c0591b4
	cmp/pz r4
	bt loc_8c059188
	mov r13,r5
	bsr loc_8c0591c8
	mov r14,r4
	mov r13,r5
	bsr loc_8c059914
	mov r14,r4
	bra loc_8c0591aa
	nop

loc_8c059188:
	mov.w @(r0,r14),r2
	mov.w @(loc_8c0591be,PC),r4
	add r13,r2
	mov.w r2,@(r0,r14)
	exts.w r2,r2
	cmp/gt r4,r2
	bf loc_8c059198
	mov.w r4,@(r0,r14)

loc_8c059198:
	mov.w @(r0,r14),r3
	add 0x04,r0
	mov.w @(r0,r14),r2
	cmp/gt r2,r3
	bf loc_8c0591aa
	mov.w @(loc_8c0591c0,PC),r0
	mov.w @(r0,r14),r2
	add 0xFC,r0
	mov.w r2,@(r0,r14)

loc_8c0591aa:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c059718
	mov.l @r15+,r14

loc_8c0591b4:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0591bc:
	#data 0x0420
loc_8c0591be:
	#data 0x0090
loc_8c0591c0:
	#data 0x0424
	#align4
loc_8c0591c4:
	#data 0x8c2896b0

;==============================================
loc_8c0591c8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r15,r3
	add 0x02,r3
	mov.w r5,@r3
	mov 0x0D,r3
	mov.w @(0x2,r15),r0
	mov r4,r14
	mov 0x01,r13
	neg r0,r0
	mov.w r0,@(0x2,r15)
	exts.w r0,r0
	cmp/gt r3,r0
	bf.s loc_8c0591ec
	mov r13,r5
	mov 0x03,r5

loc_8c0591ec:
	mov.l @(loc_8c059290,PC),r3
	mov.b @(0x2,r14),r0
	jsr @r3
	extu.b r0,r4
	mov r15,r5
	add 0x02,r5
	bsr loc_8c05904a
	mov r14,r4
	mov.w @(loc_8c05928a,PC),r0
	mov r0,r3
	add r14,r3
	mov.w @r3,r2
	mov.w @(0x2,r15),r0
	sub r0,r2
	mov.w r2,@r3
	exts.w r2,r2
	cmp/pz r2
	bt loc_8c059232
	mov.w @(loc_8c05928a,PC),r0
	mov 0x00,r2
	mov.l @(loc_8c059294,PC),r1
	mov.w r2,@(r0,r14)
	mov.w @(loc_8c05928c,PC),r0
	mov.l @r1,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c059232
	mov.w @(loc_8c05928a,PC),r0
	mov.w r13,@(r0,r14)
	add 0x04,r0
	mov.w @(r0,r14),r3
	cmp/pl r3
	bt loc_8c059232
	mov.w @(loc_8c05928e,PC),r0
	mov.w r13,@(r0,r14)

loc_8c059232:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c059298,PC),r3
	mov.w r5,@r15
	mov.l @r3,r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf.s loc_8c059282
	mov r4,r14
	mov.w @(loc_8c05928a,PC),r0
	mov.w @(r0,r14),r1
	tst r1,r1
	bt loc_8c059282
	mov.w @r15,r5
	bsr loc_8c0590f4
	mov r14,r4
	mov.w @(loc_8c05928a,PC),r0
	mov.w @(r0,r14),r2
	cmp/pl r2
	bt loc_8c059272
	mov.w @(loc_8c05928e,PC),r0
	mov 0x01,r2
	mov.w r2,@(r0,r14)
	add 0xFC,r0
	mov.w r2,@(r0,r14)

loc_8c059272:
	mov.w @r15,r5
	bsr loc_8c059914
	mov r14,r4
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c059718
	mov.l @r15+,r14

loc_8c059282:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05928a:
	#data 0x0420
loc_8c05928c:
	#data 0x00a6
loc_8c05928e:
	#data 0x0424
	#align4
loc_8c059290:
	#data bank03.loc_8c031b48
loc_8c059294:
	#data work.GameGlobalPointer
loc_8c059298:
	#data 0x8c2896b0

;==============================================
loc_8c05929c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c059374,PC),r3
	mov.w r5,@r15
	mov.l @r3,r0
	mov.b @r0,r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf.s loc_8c059334
	mov r4,r14
	mov.w @(loc_8c059364,PC),r0
	mov.w @(r0,r14),r1
	tst r1,r1
	bt loc_8c059334
	mov.w @r15,r5
	bsr loc_8c0590f4
	mov r14,r4
	mov.w @(loc_8c059364,PC),r0
	mov.w @(r0,r14),r2
	cmp/pl r2
	bt loc_8c0592e6
	mov.l @(loc_8c059378,PC),r3
	mov.w @(loc_8c059366,PC),r0
	mov.l @r3,r2
	mov.b @(r0,r2),r1
	tst r1,r1
	bt loc_8c0592e6
	mov.w @(loc_8c059364,PC),r0
	mov 0x01,r4
	mov.w r4,@(r0,r14)
	add 0x04,r0
	mov.w @(r0,r14),r2
	cmp/pl r2
	bt loc_8c0592e6
	mov.w @(loc_8c059368,PC),r0
	mov.w r4,@(r0,r14)

loc_8c0592e6:
	mov.w @(loc_8c059364,PC),r0
	mov.w @(r0,r14),r3
	cmp/pl r3
	bt loc_8c059324
	mov.w @(loc_8c05936a,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c059324
	mov.w @(loc_8c05936c,PC),r3
	mov.b r3,@(r0,r14)
	bsr loc_8c059426
	mov r14,r4
	mov.l @(loc_8c05937c,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c059374,PC),r3
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	add 0x36,r2
	mov.b @(r0,r2),r1
	mov 0x02,r2
	cmp/gt r2,r1
	bt loc_8c05931c
	mov 0x00,r5
	bsr loc_8c059e86
	mov r14,r4

loc_8c05931c:
	mov.l @(loc_8c059380,PC),r3
	mov 0x00,r5
	jsr @r3
	mov r14,r4

loc_8c059324:
	mov.w @r15,r5
	bsr loc_8c059914
	mov r14,r4
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c059718
	mov.l @r15+,r14

loc_8c059334:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05933c:
	mov.w @(loc_8c05936e,PC),r0
	mov 0x1C,r3
	mov.l r14,@-r15
	mov.l @(r0,r4),r14
	add 0xD9,r0
	mov.w @(loc_8c059370,PC),r2
	mov.b @(r0,r14),r0
	add r4,r2
	mov.w @(loc_8c059372,PC),r1
	extu.b r0,r0
	mov.l @r2,r2
	and 0x7F,r0
	mov r14,r4
	mul.l r3,r0
	add r14,r1
	sts macl,r0
	add r2,r0
	mov.l r0,@r1
	bra loc_8c058f08
	mov.l @r15+,r14

;##############################################
loc_8c059364:
	#data 0x0420
loc_8c059366:
	#data 0x00a6
loc_8c059368:
	#data 0x0424
loc_8c05936a:
	#data 0x01dc
loc_8c05936c:
	#data 0x00ff
loc_8c05936e:
	#data 0x01c8
loc_8c059370:
	#data 0x0174
loc_8c059372:
	#data 0x01bc
	#align4
loc_8c059374:
	#data 0x8c2896b0
loc_8c059378:
	#data work.GameGlobalPointer
loc_8c05937c:
	#data bank03.loc_8c030fae
loc_8c059380:
	#data bank04.loc_8c042008

;----------------------------------------------
loc_8c059384:
	mov.w @(loc_8c0594c6,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r13
	mov.w @(loc_8c0594d0,PC),r1
	sts.l pr,@-r15
	mov.w @(r0,r14),r3
	add r14,r1
	mov.w @(loc_8c0594c8,PC),r0
	mov.w r3,@(r0,r14)
	add 0xEC,r0
	mov.w r3,@(r0,r14)
	mov.w @(loc_8c0594ca,PC),r0
	mov.w r13,@(r0,r14)
	mov.w @(loc_8c0594cc,PC),r0
	mov.b @(r0,r14),r3
	add 0x01,r0
	mov.b r3,@(r0,r14)
	add 0x16,r0
	mov.l r14,@(r0,r14)
	mov.w @(loc_8c0594ce,PC),r0
	mov.b @(r0,r14),r0
	xor 0x01,r0
	mov.b r0,@r1
	mov.w @(loc_8c0594ce,PC),r0
	mov.b @(r0,r14),r3
	add 0x75,r0
	mov.b r3,@(r0,r14)
	add 0xFD,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	mov 0x1C,r3
	mov.w @(loc_8c0594d2,PC),r2
	and 0x7F,r0
	mov.w @(loc_8c0594d4,PC),r1
	mul.l r3,r0
	add r14,r2
	mov.l @r2,r2
	add r14,r1
	sts macl,r0
	add r2,r0
	mov.l r0,@r1
	bsr loc_8c058f08
	mov r14,r4
	mov.l @(loc_8c0594ec,PC),r3
	mov r14,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c0594d6,PC),r0
	mov.b r13,@(r0,r14)
	mov 0x03,r0
	mov.b r0,@(0x5,r14)
	mov r13,r0
	nop
	mov.b r0,@(0x7,r14)
	mov 0x01,r3
	mov.b r0,@(0x6,r14)
	mov r14,r1
	mov.w @(loc_8c0594d8,PC),r0
	add 0x50,r1
	mov.w @(loc_8c0594dc,PC),r2
	mov.b r13,@(r0,r14)
	mov.w @(loc_8c0594da,PC),r0
	add r14,r2
	mov.b r3,@(r0,r14)
	mov 0x48,r0
	mov.l @(loc_8c0594f0,PC),r3
	mov.l r13,@(r0,r14)
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c0594de,PC),r0
	mov 0x20,r5
	fldi1 fr3
	mov r14,r4
	mov.l @(loc_8c0594f4,PC),r3
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c059426:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8c0594e0,PC),r0
	mov 0x00,r4
	mov.l @(loc_8c0594f8,PC),r5
	mov.l @(loc_8c059500,PC),r1
	sts.l pr,@-r15
	mov.w r4,@(r0,r14)
	add 0xFC,r0
	mov.w r4,@(r0,r14)
	mov.w @(loc_8c0594d4,PC),r0
	mov.l @(r0,r14),r3
	add 0xE6,r0
	mov.l r3,@(0x8,r5)
	mov.b @(r0,r14),r0
	mov.b r0,@(0x7,r5)
	mov.w @(loc_8c0594e2,PC),r0
	mov.l @(r0,r14),r3
	mov.l r3,@(0xC,r5)
	mov.w @(loc_8c0594e4,PC),r5
	mov.l @(loc_8c0594fc,PC),r3
	add r14,r5
	mov.l @(0x4,r5),r0
	mov.l @r5,r2
	and r1,r0
	and r3,r2
	or r0,r2
	tst r2,r2
	bt loc_8c05946c
	mov.w @(loc_8c0594e6,PC),r0
	mov 0x01,r5
	mov.l @(loc_8c059504,PC),r3
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_8c05946c:
	mov.l @(loc_8c05950c,PC),r1
	mov 0x58,r0
	mov.l @(loc_8c059508,PC),r2
	mov.l @r1,r3
	mov.b @(r0,r3),r0
	tst r0,r0
	bt.s loc_8c059498
	mov.l @r2,r4
	mov.b @(0x2,r14),r0
	mov r4,r3
	add 0x36,r3
	extu.b r0,r0
	add r3,r0
	mov.b @r0,r2
	add 0x01,r2
	mov.b r2,@r0
	mov.w @(loc_8c0594e8,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0594b0
	bra loc_8c0594b8
	nop

loc_8c059498:
	mov.b @(0x2,r14),r0
	mov r4,r3
	add 0x36,r3
	extu.b r0,r0
	add r3,r0
	mov.b @r0,r2
	mov 0x03,r3
	add 0x01,r2
	mov.b r2,@r0
	exts.b r2,r2
	cmp/ge r3,r2
	bt loc_8c0594b8

loc_8c0594b0:
	mov.l @(loc_8c059510,PC),r3
	mov 0x03,r5
	jsr @r3
	mov r14,r4

loc_8c0594b8:
	lds.l @r15+,pr
	mov.b @(0x2,r14),r0
	mov 0x06,r5
	mov.l @(loc_8c059514,PC),r3
	extu.b r0,r4
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0594c6:
	#data 0x0420
loc_8c0594c8:
	#data 0x027c
loc_8c0594ca:
	#data 0x032e
loc_8c0594cc:
	#data 0x01a1
loc_8c0594ce:
	#data 0x0130
loc_8c0594d0:
	#data 0x01a6
loc_8c0594d2:
	#data 0x0174
loc_8c0594d4:
	#data 0x01bc
loc_8c0594d6:
	#data 0x0236
loc_8c0594d8:
	#data 0x0238
loc_8c0594da:
	#data 0x012c
loc_8c0594dc:
	#data 0x0284
loc_8c0594de:
	#data 0x0108
loc_8c0594e0:
	#data 0x0424
loc_8c0594e2:
	#data 0x01b8
loc_8c0594e4:
	#data 0x0414
loc_8c0594e6:
	#data 0x0202
loc_8c0594e8:
	#data 0x0413
	#align4
loc_8c0594ec:
	#data loc_8c057d6c
loc_8c0594f0:
	#data bank12.loc_8c1294c8
loc_8c0594f4:
	#data loc_8c0530d8
loc_8c0594f8:
	#data 0x8c2895f0
loc_8c0594fc:
	#data 0x00100000
loc_8c059500:
	#data 0x04000000
loc_8c059504:
	#data bank03.loc_8c035162
loc_8c059508:
	#data 0x8c2896b0
loc_8c05950c:
	#data work.GameGlobalPointer
loc_8c059510:
	#data bank0e.loc_8c0efdc0
loc_8c059514:
	#data bank03.loc_8c031b48

;==============================================
loc_8c059518:
	mov.l r14,@-r15
	mov 0x00,r14
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov 0x01,r12
	mov.l r11,@-r15
	mov 0x0C,r11
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c059600,PC),r10

loc_8c05952e:
	mov.b @(0x2,r13),r0
	mov r10,r2
	add 0x18,r2
	extu.b r0,r0
	xor r12,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r2,r0
	mov.l @(r0,r14),r4
	mov.b @r4,r3
	tst r3,r3
	bt loc_8c05956e
	mov.b @(0x5,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c05956e
	mov.w @(loc_8c0595f2,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8c059562
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x0D,r0
	bf loc_8c05956e

loc_8c059562:
	mov.w @(loc_8c0595f4,PC),r0
	mov.l @(r0,r4),r2
	cmp/eq r2,r13
	bf loc_8c05956e
	bsr loc_8c058eb0
	nop

loc_8c05956e:
	add 0x04,r14
	cmp/hs r11,r14
	bf loc_8c05952e
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c059582:
	mov.l @(loc_8c059604,PC),r3
	mov.l @r3,r4
	mov.b @(0x6,r4),r0
	tst r0,r0
	bf loc_8c0595ee
	mov.b @r4,r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c0595ee
	mov.l @(loc_8c059608,PC),r2
	mov 0x53,r0
	mov.l @r2,r4
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c0595ee
	mov 0x57,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c0595ee
	mov.w @(loc_8c0595f8,PC),r1
	mov 0x32,r7
	mov.l @(loc_8c05960c,PC),r4
	mov.w @(loc_8c0595f6,PC),r6
	add r4,r1
	mov r4,r5

loc_8c0595b4:
	mov r5,r4
	mov.b @r4,r3
	tst r3,r3
	bf loc_8c0595e8
	mov.w @(loc_8c0595fa,PC),r0
	mov.w @(r0,r4),r3
	add 0x04,r0
	mov.w @(r0,r4),r2
	cmp/ge r2,r3
	bt loc_8c0595e8
	mov.w @(loc_8c0595fc,PC),r0
	mov.w @(r0,r4),r2
	tst r2,r2
	bf loc_8c0595e8
	mov.w @(loc_8c0595fe,PC),r0
	mov.w @(r0,r4),r3
	add 0xFF,r3
	mov.w r3,@(r0,r4)
	exts.w r3,r3
	cmp/pz r3
	bt loc_8c0595e8
	mov.w r7,@(r0,r4)
	add 0xFA,r0
	mov.w @(r0,r4),r3
	add 0x01,r3
	mov.w r3,@(r0,r4)

loc_8c0595e8:
	add r6,r5
	cmp/hs r1,r5
	bf loc_8c0595b4

loc_8c0595ee:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0595f2:
	#data 0x01f6
loc_8c0595f4:
	#data 0x01c8
loc_8c0595f6:
	#data 0x05a4
loc_8c0595f8:
	#data 0x21d8
loc_8c0595fa:
	#data 0x0420
loc_8c0595fc:
	#data 0x02a0
loc_8c0595fe:
	#data 0x0426
	#align4
loc_8c059600:
	#data 0x8c2895f0
loc_8c059604:
	#data 0x8c2896b0
loc_8c059608:
	#data work.GameGlobalPointer
loc_8c05960c:
	#data 0x8c268340

;=============================================
loc_8c059610:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l @(loc_8c059710,PC),r10
	sts.l pr,@-r15
	mov.l @r10,r4
	mov.b @(0x6,r4),r0
	tst r0,r0
	bf loc_8c0596f6
	mov.b @r4,r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c0596f6
	mov.l @(loc_8c059714,PC),r3
	mov 0x18,r12
	mov.w @(loc_8c059704,PC),r0
	mov.l @r3,r2
	mov.b @(r0,r2),r1
	tst r1,r1
	bt.s loc_8c059698
	mov 0x01,r14
	mov.w @(loc_8c059706,PC),r13
	mov 0x00,r11

loc_8c059642:
	mov.l @r10,r4
	mov.w @(loc_8c059708,PC),r0
	add 0x18,r4
	add r11,r4
	mov.l @r4,r4
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c059692
	mov.b @r4,r3
	tst r3,r3
	bt loc_8c059692
	mov.b @(0x5,r4),r0
	tst r0,r0
	bf loc_8c059692
	mov.w @(loc_8c059708,PC),r0
	mov.w @(r0,r4),r2
	add 0xFF,r2
	mov.w r2,@(r0,r4)
	exts.w r2,r2
	cmp/pl r2
	bt loc_8c059692
	mov.w r14,@(r0,r4)
	mov.w @(loc_8c05970a,PC),r0
	mov.w @(r0,r4),r3
	add 0x02,r3
	mov.w r3,@(r0,r4)
	exts.w r3,r3
	cmp/gt r13,r3
	bf loc_8c05967e
	mov.w r13,@(r0,r4)

loc_8c05967e:
	mov.w @(loc_8c05970c,PC),r0
	mov.w @(r0,r4),r3
	add 0x02,r3
	mov.w r3,@(r0,r4)
	exts.w r3,r3
	cmp/gt r13,r3
	bf loc_8c05968e
	mov.w r13,@(r0,r4)

loc_8c05968e:
	bsr loc_8c059718
	nop

loc_8c059692:
	add 0x0C,r11
	cmp/hs r12,r11
	bf loc_8c059642

loc_8c059698:
	mov.l @(loc_8c059714,PC),r2
	mov 0x54,r0
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bt loc_8c0596f6
	mov 0x00,r13
	mov 0x64,r11

loc_8c0596a8:
	mov.l @r10,r4
	mov.w @(loc_8c05970e,PC),r0
	add 0x18,r4
	add r13,r4
	mov.l @r4,r4
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	exts.b r3,r3
	cmp/pz r3
	bt loc_8c0596f0
	mov.w @(loc_8c05970a,PC),r0
	mov.w @(r0,r4),r3
	cmp/pl r3
	bf loc_8c0596f0
	mov.w @(loc_8c05970e,PC),r0
	mov.b r11,@(r0,r4)
	add 0x2D,r0
	mov.w @(r0,r4),r3
	add 0xFF,r3
	mov.w r3,@(r0,r4)
	exts.w r3,r3
	cmp/ge r14,r3
	bt loc_8c0596dc
	mov.w @(loc_8c05970a,PC),r0
	mov.w r14,@(r0,r4)

loc_8c0596dc:
	mov.w @(loc_8c05970c,PC),r0
	mov.w @(r0,r4),r3
	add 0xFF,r3
	mov.w r3,@(r0,r4)
	exts.w r3,r3
	cmp/ge r14,r3
	bt loc_8c0596ec
	mov.w r14,@(r0,r4)

loc_8c0596ec:
	bsr loc_8c059718
	nop

loc_8c0596f0:
	add 0x0C,r13
	cmp/hs r12,r13
	bf loc_8c0596a8

loc_8c0596f6:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c059704:
	#data 0x00a6
loc_8c059706:
	#data 0x0090
loc_8c059708:
	#data 0x032a
loc_8c05970a:
	#data 0x0420
loc_8c05970c:
	#data 0x0424
loc_8c05970e:
	#data 0x03f3
	#align4
loc_8c059710:
	#data 0x8c2896b0
loc_8c059714:
	#data work.GameGlobalPointer

;==============================================
loc_8c059718:
	mov.l r14,@-r15
	mov 0x57,r0
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l @(loc_8c059884,PC),r2
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bf.s loc_8c05973c
	mov r4,r13
	bra loc_8c059900
	nop

loc_8c05973c:
	mov 0x00,r12
	fldi1 fr15
	mov 0x02,r11
	mov r12,r8
	mov 0x01,r9
	mov 0x03,r10

loc_8c059748:
	mov.w @(loc_8c05986a,PC),r0
	mov.b @(r0,r13),r1
	extu.b r1,r1
	add r8,r1
	add 0x01,r1
	mov r10,r0
	nop
	mov.l @(loc_8c059888,PC),r2
	jsr @r2
	nop
	mov r0,r14
	mov.b @(0x2,r13),r0
	mov.l @(loc_8c05988c,PC),r3
	shll2 r14
	extu.b r0,r0
	mov r0,r2
	shll r0
	mov.l @r3,r1
	add r2,r0
	shll2 r0
	add 0x18,r1
	add r1,r0
	mov.l @(r0,r14),r14
	mov.w @(loc_8c05986c,PC),r0
	mov.w @(r0,r13),r2
	mov.w r2,@(r0,r14)
	add 0x04,r0
	mov.w @(r0,r13),r1
	mov.w r1,@(r0,r14)
	add 0xFC,r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c05978e
	bra loc_8c0598f6
	nop

loc_8c05978e:
	mov.w @(loc_8c05986e,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c05979a
	bra loc_8c0598f6
	nop

loc_8c05979a:
	mov.b @r14,r2
	tst r2,r2
	bf loc_8c0597a4
	bra loc_8c0598f6
	nop

loc_8c0597a4:
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c0597b0
	bra loc_8c0598f6
	nop

loc_8c0597b0:
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c0597ee
	mov.w @(loc_8c059870,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0597ee
	mov.w @(loc_8c059872,PC),r0
	mov.l @(r0,r13),r3
	mov.l r3,@(r0,r14)
	add 0xEE,r0
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov.w @(loc_8c059874,PC),r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	add 0x85,r0
	mov.l @(r0,r13),r2
	mov.l r2,@(r0,r14)
	mov.l @(r0,r13),r3
	add 0x1A,r0
	mov.b @(r0,r3),r2
	add 0xD4,r0
	mov.b r2,@(r0,r14)
	add 0x2C,r0
	mov.b @(r0,r13),r3
	add 0xD3,r0
	mov.b r3,@(r0,r14)
	add 0xFA,r0
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)

loc_8c0597ee:
	mov.w @(loc_8c059876,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c059802
	mov.w @(loc_8c059876,PC),r0
	mov.l @(loc_8c059890,PC),r3
	mov.b r9,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_8c059802:
	mov.w @(loc_8c059874,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c05982c
	mov.w @(loc_8c059878,PC),r0
	mov 0x1E,r2
	mov.l @(loc_8c059894,PC),r1
	mov 0x0C,r3
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.b r3,@(r0,r14)
	mov 0x06,r3
	mov.b @r1,r2
	extu.b r2,r2
	cmp/ge r3,r2
	bf loc_8c05982c
	mov.w @(loc_8c05987a,PC),r2
	mov 0x08,r0
	add r14,r2
	mov.b r0,@r2
 
loc_8c05982c:
	mov.w @(loc_8c05987c,PC),r0
	mov 0x0A,r3
	mov 0x00,r5
	mov.b r3,@(r0,r14)
	add 0xFA,r0
	mov.b r11,@(r0,r14)
	add 0x6C,r0
	mov.b r12,@(r0,r14)
	mov.w @(loc_8c05986e,PC),r0
	mov.w @(loc_8c05987e,PC),r3
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c059898,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c059872,PC),r0
	mov 0x1C,r3
	mov.w @(loc_8c059880,PC),r1
	mov.l @(r0,r14),r2
	add 0xEE,r0
	mov.b @(r0,r14),r0
	add r2,r1
	extu.b r0,r0
	mov.l @r1,r2
	and 0x7F,r0
	mov.w @(loc_8c059882,PC),r1
	mul.l r3,r0
	add r14,r1
	sts macl,r0
	add r2,r0
	bra loc_8c05989c
	nop

;##############################################
loc_8c05986a:
	#data 0x0411
loc_8c05986c:
	#data 0x0420
loc_8c05986e:
	#data 0x01dc
loc_8c059870:
	#data 0x019f
loc_8c059872:
	#data 0x01b4
loc_8c059874:
	#data 0x0233
loc_8c059876:
	#data 0x01f9
loc_8c059878:
	#data 0x022e
loc_8c05987a:
	#data 0x022f
loc_8c05987c:
	#data 0x0239
loc_8c05987e:
	#data 0x00ff
loc_8c059880:
	#data 0x0174
loc_8c059882:
	#data 0x01bc
	#align4
loc_8c059884:
	#data work.GameGlobalPointer
loc_8c059888:
	#data bank12.loc_8c1292d4
loc_8c05988c:
	#data 0x8c2896b0
loc_8c059890:
	#data loc_8c05218a
loc_8c059894:
	#data 0x8c2895f0
loc_8c059898:
	#data bank04.loc_8c042008

;----------------------------------------------
loc_8c05989c:
	mov.l r0,@r1
	mov 0x58,r2
	mov.w @(loc_8c05997e,PC),r0
	mov.w @(loc_8c059980,PC),r1
	mov.b @(r0,r14),r0
	add r14,r1
	mov.l @(loc_8c05999c,PC),r3
	extu.b r0,r0
	mov.b @r1,r1
	mulu.w r2,r0
	extu.b r1,r1
	shll2 r1
	sts macl,r0
	add r3,r0
	mov.l @(r0,r1),r1
	mov.w @(loc_8c059982,PC),r0
	mov.l @(r0,r14),r5
	jsr @r1
	mov r14,r4
	mov r10,r0
	nop
	mov.b r0,@(0x5,r14)
	mov r12,r0
	nop
	mov.b r0,@(0x7,r14)
	mov r14,r1
	mov.b r0,@(0x6,r14)
	add 0x50,r1
	mov.w @(loc_8c059984,PC),r0
	mov.w @(loc_8c059988,PC),r2
	mov.b r12,@(r0,r14)
	mov.w @(loc_8c059986,PC),r0
	add r14,r2
	mov.l @(loc_8c0599a0,PC),r3
	mov.b r9,@(r0,r14)
	mov 0x48,r0
	mov.l r12,@(r0,r14)
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c05998a,PC),r0
	mov 0x20,r5
	mov.l @(loc_8c0599a4,PC),r3
	fmov fr15,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_8c0598f6:
	add 0x01,r8
	cmp/ge r11,r8
	bt loc_8c059900
	bra loc_8c059748
	nop

loc_8c059900:
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

loc_8c059914:
	exts.w r5,r5
	tst r5,r5
	bt loc_8c059930
	mov.w @(loc_8c05998c,PC),r0
	mov.w @(r0,r4),r3
	mov.w @(loc_8c05998e,PC),r0
	mov.w @(r0,r4),r2
	mov.w @(loc_8c059990,PC),r0
	sub r3,r2
	mov.w r2,@(r0,r4)
	mov.w @(loc_8c05998c,PC),r0
	mov.w @(r0,r4),r3
	mov.w @(loc_8c05998e,PC),r0
	mov.w r3,@(r0,r4)

loc_8c059930:
	mov.l @(loc_8c0599a8,PC),r1
	mov.w @(loc_8c059992,PC),r0
	mov.l @r1,r2
	mov.b @(r0,r2),r3
	tst r3,r3
	bt loc_8c059942
	mov.w @(loc_8c059994,PC),r0
	mov 0x32,r3
	mov.w r3,@(r0,r4)

loc_8c059942:
	rts
	nop

;==============================================
loc_8c059946:
	mov.b @(0x5,r4),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c05997a
	mova @(0x5C,PC),r0
	mov.l @(loc_8c0599b0,PC),r2
	fmov @r0,fr4
	mov 0x01,r3
	mov.w @(loc_8c059996,PC),r0
	mov.b @(r0,r4),r0
	and 0x1F,r0
	exts.b r0,r5
	shad r5,r3
	tst r2,r3
	bf loc_8c059968

loc_8c059964:
	mova @(loc_8c0599b4,PC),r0
	fmov @r0,fr4

loc_8c059968:
	mov.w @(loc_8c059998,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c059974
	mov 0x34,r0
	fneg fr4

loc_8c059974:
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)

loc_8c05997a:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05997e:
	#data 0x01f9
loc_8c059980:
	#data 0x0233
loc_8c059982:
	#data 0x01b4
loc_8c059984:
	#data 0x0238
loc_8c059986:
	#data 0x012c
loc_8c059988:
	#data 0x0284
loc_8c05998a:
	#data 0x0108
loc_8c05998c:
	#data 0x0420
loc_8c05998e:
	#data 0x027c
loc_8c059990:
	#data 0x032e
loc_8c059992:
	#data 0x00a6
loc_8c059994:
	#data 0x032a
loc_8c059996:
	#data 0x01a0
loc_8c059998:
	#data 0x0130
	#align4
loc_8c05999c:
	#data bank14.loc_8c14ecb4
loc_8c0599a0:
	#data bank12.loc_8c1294c8
loc_8c0599a4:
	#data loc_8c0530d8
loc_8c0599a8:
	#data work.GameGlobalPointer
loc_8c0599ac:
	#data 0x3fd55555
loc_8c0599b0:
	#data 0xcccccccc
loc_8c0599b4:
	#data 0xbfd55555

;==============================================
loc_8c0599b8:
	mov.l @(loc_8c059aac,PC),r3
	mov.l @r3,r4
	mov.b @(0x6,r4),r0
	tst r0,r0
	bf loc_8c0599f0
	mov.b @r4,r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c0599f0
	mov.w @(loc_8c059a96,PC),r7
	mov.l @(loc_8c059ab0,PC),r5
	mov.w @(loc_8c059a94,PC),r6
	add r5,r7
	mov r5,r4

loc_8c0599d4:
	mov r4,r5
	mov.b @r5,r2
	tst r2,r2
	bf loc_8c0599ea
	mov.w @(loc_8c059a98,PC),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bt loc_8c0599ea
	mov.w @(r0,r5),r3
	add 0xFF,r3
	mov.w r3,@(r0,r5)

loc_8c0599ea:
	add r6,r4
	cmp/hs r7,r4
	bf loc_8c0599d4

loc_8c0599f0:
	rts
	nop

;==============================================
loc_8c0599f4:
	mov.w @(loc_8c059a9a,PC),r0
	mov.w r5,@(r0,r4)
	exts.w r5,r5
	tst r5,r5
	bt.s loc_8c059a16
	mov 0x00,r7
	mov.w @(loc_8c059a9c,PC),r0
	mov.b r6,@(r0,r4)
	add 0xFA,r0
	mov.w r7,@(r0,r4)
	add 0x07,r0
	mov.b r7,@(r0,r4)
	add 0xFD,r0
	mov.w r7,@(r0,r4)
	mov.w @(loc_8c059a9e,PC),r0
	bra loc_8c059a18
	nop

loc_8c059a16:
	mov.w @(loc_8c059a9c,PC),r0

loc_8c059a18:
	rts
	mov.b r7,@(r0,r4)

;==============================================
loc_8c059a1c:
	mov.w @(loc_8c059aa0,PC),r0
	mov.w r5,@(r0,r4)
	exts.w r5,r5
	tst r5,r5
	bt.s loc_8c059a3e
	mov 0x00,r7
	mov.w @(loc_8c059aa2,PC),r0
	mov.b r6,@(r0,r4)
	add 0xF7,r0
	mov.w r7,@(r0,r4)
	add 0x08,r0
	mov.b r7,@(r0,r4)
	add 0xFE,r0
	mov.w r7,@(r0,r4)
	mov.w @(loc_8c059a9e,PC),r0
	bra loc_8c059a40
	nop

loc_8c059a3e:
	mov.w @(loc_8c059aa2,PC),r0

loc_8c059a40:
	rts
	mov.b r7,@(r0,r4)

;==============================================
loc_8c059a44:
	mov.w @(loc_8c059aa4,PC),r0
	exts.b r6,r3
	tst r3,r3
	mov.w r5,@(r0,r4)
	mov 0x00,r5
	mov.w @(loc_8c059aa6,PC),r0
	mov.b r5,@(r0,r4)
	add 0xFF,r0
	bf.s loc_8c059a62
	mov.b r5,@(r0,r4)
	extu.b r7,r2
	tst r2,r2
	bf loc_8c059a62
	bra loc_8c059e5c
	nop

loc_8c059a62:
	mov.w @(loc_8c059aa8,PC),r0
	mov.b r6,@(r0,r4)
	add 0x01,r0
	rts
	mov.b r7,@(r0,r4)

;==============================================
loc_8c059a6c:
	mov.w @(loc_8c059aaa,PC),r0
	mov.w r5,@(r0,r4)
	exts.w r5,r5
	tst r5,r5
	bt.s loc_8c059a8e
	mov 0x00,r6
	mov.w @(loc_8c059a9e,PC),r0
	mov 0x01,r2
	mov.b r2,@(r0,r4)
	mov.w @(loc_8c059a9a,PC),r0
	mov.w r6,@(r0,r4)
	add 0x08,r0
	mov.b r6,@(r0,r4)
	add 0xFA,r0
	mov.w r6,@(r0,r4)
	bra loc_8c059a90
	add 0x07,r0

loc_8c059a8e:
	mov.w @(loc_8c059a9e,PC),r0

loc_8c059a90:
	rts
	mov.b r6,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c059a94:
	#data 0x05a4
loc_8c059a96:
	#data 0x21d8
loc_8c059a98:
	#data 0x02a0
loc_8c059a9a:
	#data 0x03e6
loc_8c059a9c:
	#data 0x03ee
loc_8c059a9e:
	#data 0x0200
loc_8c059aa0:
	#data 0x03e8
loc_8c059aa2:
	#data 0x03ef
loc_8c059aa4:
	#data 0x03e4
loc_8c059aa6:
	#data 0x0281
loc_8c059aa8:
	#data 0x027e
loc_8c059aaa:
	#data 0x03ec
	#align4
loc_8c059aac:
	#data 0x8c2896b0
loc_8c059ab0:
	#data 0x8c268340

;==============================================
loc_8c059ab4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(loc_8c059b52,PC),r0
	mov r4,r14
	mov.w @(loc_8c059b54,PC),r1
	mov r5,r11
	mov.l @(r0,r14),r12
	mov 0x01,r10
	mov.w @(loc_8c059b54,PC),r2
	add r11,r1
	mov.b @(0x5,r12),r0
	add r14,r2
	mov.b r0,@r1
	mov.b r0,@r2
	mov.w @(loc_8c059b56,PC),r0
	mov.b @(r0,r11),r3
	tst r10,r3
	bt.s loc_8c059af0
	mov 0x00,r13
	mov.w @(loc_8c059b58,PC),r0
	mov.w @(loc_8c059b54,PC),r2
	mov.l @(r0,r14),r1
	mov.b @(0x5,r12),r0
	add r1,r2
	mov.b r0,@r2

loc_8c059af0:
	mov.w @(loc_8c059b5a,PC),r0
	mov r11,r5
	mov.l @(loc_8c059b64,PC),r3
	mov r12,r6
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c059b68,PC),r2
	mov r11,r5
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c059b6c,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c059b5c,PC),r0
	mov.b @(r0,r14),r2
	add 0x05,r0
	mov.b r2,@(r0,r14)
	mov 0x17,r0
	mov.b @(r0,r12),r4
	extu.b r4,r3
	tst r3,r3
	bt loc_8c059b22
	bra loc_8c059b26
	extu.b r4,r4

loc_8c059b22:
	mov.b @(0xF,r12),r0
	extu.b r0,r4

loc_8c059b26:
	mov.w @(loc_8c059b5e,PC),r0
	mov.b @(r0,r14),r2
	add r4,r2
	mov.b r2,@(r0,r14)
	mov.w @(loc_8c059b60,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c059b3c
	mov.b @(0x5,r14),r0
	tst r0,r0
	bt loc_8c059b46

loc_8c059b3c:
	mov.w @(loc_8c059b62,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c059b70

loc_8c059b46:
	mov.w @(loc_8c059b60,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bf loc_8c059c08
	bra loc_8c059bce
	mov.w r10,@(r0,r14)

;##############################################
loc_8c059b52:
	#data 0x01bc
loc_8c059b54:
	#data 0x01a0
loc_8c059b56:
	#data 0x019c
loc_8c059b58:
	#data 0x01b8
loc_8c059b5a:
	#data 0x0211
loc_8c059b5c:
	#data 0x027e
loc_8c059b5e:
	#data 0x0280
loc_8c059b60:
	#data 0x0420
loc_8c059b62:
	#data 0x01f9
	#align4
loc_8c059b64:
	#data loc_8c05a0b8
loc_8c059b68:
	#data loc_8c056454
loc_8c059b6c:
	#data loc_8c056f2e

;----------------------------------------------
loc_8c059b70:
	mov.w @(loc_8c059c4e,PC),r0
	mov r11,r5
	mov.l @(loc_8c059c68,PC),r3
	mov.b r13,@(r0,r14)
	mov.w @(loc_8c059c50,PC),r0
	mov.b r13,@(r0,r14)
	add 0x3A,r0
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov 0x03,r0
	mov.b r0,@(0x5,r14)
	mov r13,r0
	nop
	mov.b r0,@(0x7,r14)
	mov r14,r1
	mov.b r0,@(0x6,r14)
	add 0x50,r1
	mov.w @(loc_8c059c52,PC),r0
	mov.w @(loc_8c059c56,PC),r2
	mov.b r13,@(r0,r14)
	mov.w @(loc_8c059c54,PC),r0
	add r14,r2
	mov.l @(loc_8c059c6c,PC),r3
	mov.b r10,@(r0,r14)
	mov 0x48,r0
	mov.l r13,@(r0,r14)
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c059c58,PC),r0
	mov 0x20,r5
	mov.l @(loc_8c059c70,PC),r3
	fldi1 fr3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c059c5a,PC),r0
	mov.l @(loc_8c059c74,PC),r3
	mov.b r13,@(r0,r14)
	add 0xFF,r0
	jsr @r3
	mov.b r13,@(r0,r14)
	tst r10,r0
	bf loc_8c059bce
	mov.l @(loc_8c059c78,PC),r3
	jsr @r3
	mov r14,r4

loc_8c059bce:
	mov.w @(loc_8c059c5c,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bf loc_8c059c08
	mov.w @(loc_8c059c5e,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c059bea
	mov.w @(loc_8c059c60,PC),r3
	mov 0x00,r5
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c059c7c,PC),r3
	jsr @r3
	mov r14,r4

loc_8c059bea:
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x18,r0
	bt.s loc_8c059bfc
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x19,r0
	bf loc_8c059c08

loc_8c059bfc:
	mov.w @(loc_8c059c62,PC),r0
	mov.l @(r0,r14),r3
	mov 0x60,r0
	mov.l @(r0,r3),r2
	jsr @r2
	mov r14,r4

loc_8c059c08:
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x18,r0
	bf loc_8c059c1c
	mov.l @(loc_8c059c80,PC),r2
	mov r11,r5
	jsr @r2
	mov r14,r4
	bra loc_8c059cd6
	nop

loc_8c059c1c:
	mov.l @(loc_8c059c84,PC),r2
	mov r11,r5
	mov r15,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c059c64,PC),r0
	mov.b @(r0,r14),r0
	and 0x70,r0
	mov r0,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_8c059c88
	extu.b r6,r4
	mov r4,r0
	nop
	cmp/eq 0x30,r0
	bf loc_8c059c42
	bra loc_8c059ca2
	mov 0x02,r6

loc_8c059c42:
	cmp/eq 0x20,r0
	bf loc_8c059c4a
	bra loc_8c059ca2
	mov r10,r6

loc_8c059c4a:
	bra loc_8c059ca2
	mov r13,r6

;##############################################
loc_8c059c4e:
	#data 0x0280
loc_8c059c50:
	#data 0x01f9
loc_8c059c52:
	#data 0x0238
loc_8c059c54:
	#data 0x012c
loc_8c059c56:
	#data 0x0284
loc_8c059c58:
	#data 0x0108
loc_8c059c5a:
	#data 0x0235
loc_8c059c5c:
	#data 0x0420
loc_8c059c5e:
	#data 0x01dc
loc_8c059c60:
	#data 0x00ff
loc_8c059c62:
	#data 0x0428
loc_8c059c64:
	#data 0x0231
	#align4
loc_8c059c68:
	#data loc_8c057c86
loc_8c059c6c:
	#data bank12.loc_8c1294c8
loc_8c059c70:
	#data loc_8c0530d8
loc_8c059c74:
	#data bank03.loc_8c03319e
loc_8c059c78:
	#data bank04.loc_8c04208c
loc_8c059c7c:
	#data bank04.loc_8c042008
loc_8c059c80:
	#data loc_8c0578c0
loc_8c059c84:
	#data loc_8c0579cc

;----------------------------------------------
loc_8c059c88:
	mov.w @(loc_8c059d86,PC),r0
	mov 0x05,r2
	mov.b @(r0,r14),r3
	extu.b r3,r3
	cmp/ge r2,r3
	bf.s loc_8c059c98
	mov.b @(r0,r14),r2
	add 0x01,r6

loc_8c059c98:
	mov 0x0C,r3
	extu.b r2,r2
	cmp/ge r3,r2
	bf loc_8c059ca2
	add 0x01,r6

loc_8c059ca2:
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x19,r0
	bf loc_8c059cc2
	mov.b @(0xB,r12),r0
	mov.l @(loc_8c059d98,PC),r3
	extu.b r0,r1
	jsr @r3
	mov 0x03,r0
	mov.l @(loc_8c059d9c,PC),r2
	mov r15,r5
	mov r0,r6
	jsr @r2
	mov r14,r4
	bra loc_8c059cd6
	nop

loc_8c059cc2:
	mov.w @(loc_8c059d88,PC),r0
	mov.l @(r0,r14),r2
	add 0xFC,r0
	mov.l @(r0,r2),r3
	cmp/eq r14,r3
	bf loc_8c059cd6
	mov.l @(loc_8c059da0,PC),r3
	mov r15,r5
	jsr @r3
	mov r14,r4

loc_8c059cd6:
	mov.l @(loc_8c059da4,PC),r2
	jsr @r2
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c059cec:
	mov.w @(loc_8c059d8a,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c059d1c
	mov.b @(0x5,r4),r0
	tst r0,r0
	bf loc_8c059d1c
	mov.w @(loc_8c059d8c,PC),r0
	mov.w @(r0,r4),r2
	tst r2,r2
	bt loc_8c059d1c
	mov.w @(loc_8c059d8a,PC),r0
	mov.b @(r0,r4),r0
	tst 0xC0,r0
	bf loc_8c059d1c
	mov.w @(loc_8c059d8e,PC),r0
	mov.b @(r0,r4),r2
	add 0x01,r2
	mov.b r2,@(r0,r4)
	mov.w @(loc_8c059d90,PC),r0
	mov.b @(r0,r4),r3
	add 0x06,r3
	bra loc_8c059d3a
	mov.b r3,@(r0,r4)

loc_8c059d1c:
	mov.w @(loc_8c059d92,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c059d36
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	exts.b r3,r3
	tst r3,r3
	bf loc_8c059d36
	mov.w @(loc_8c059d94,PC),r0
	mov 0x00,r1
	mov.b r1,@(r0,r4)

loc_8c059d36:
	rts
	nop

;==============================================
loc_8c059d3a:
	mov.l @(loc_8c059da8,PC),r3
	mov.w @(loc_8c059d96,PC),r1
	mov.l r14,@-r15
	mov r4,r14
	mov r14,r2
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @r3,r0
	mov.l @(loc_8c059db4,PC),r13
	mov.b @(r0,r1),r0
	and 0x01,r0
	mov r0,r4
	mov 0x34,r0
	add r0,r2
	mov.l @(loc_8c059dac,PC),r0
	extu.b r4,r4
	mov.l r2,@-r15
	shll r4
	mov.w @(r0,r4),r3
	mova @(loc_8c059db0,PC),r0
	fmov @r0,fr0
	lds r3,fpul
	mov.l @r15+,r3
	mov.w @(loc_8c059d90,PC),r0
	float fpul,fr3
	fmov @r3,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@r3
	mov.b @(r0,r14),r0
	tst 0x01,r0
	bf loc_8c059dbe
	mov.w @(loc_8c059d90,PC),r0
	mov.b @(r0,r14),r0
	tst 0x02,r0
	bt.s loc_8c059db8
	mov r14,r4
	bra loc_8c059dba
	mov 0x03,r5

;##############################################
loc_8c059d86:
	#data 0x022f
loc_8c059d88:
	#data 0x01b4
loc_8c059d8a:
	#data 0x019f
loc_8c059d8c:
	#data 0x0420
loc_8c059d8e:
	#data 0x0281
loc_8c059d90:
	#data 0x01a0
loc_8c059d92:
	#data 0x0283
loc_8c059d94:
	#data 0x0280
loc_8c059d96:
	#data 0x0090
	#align4
loc_8c059d98:
	#data bank12.loc_8c1292d4
loc_8c059d9c:
	#data bank0d.loc_8c0d7328
loc_8c059da0:
	#data bank0d.loc_8c0d8042
loc_8c059da4:
	#data bank04.loc_8c0422fe
loc_8c059da8:
	#data work.GameGlobalPointer
loc_8c059dac:
	#data bank14.loc_8c14ee24
loc_8c059db0:
	#data 0x3fd55555
loc_8c059db4:
	#data bank03.loc_8c035162

;----------------------------------------------
loc_8c059db8:
	mov 0x01,r5

loc_8c059dba:
	jsr @r13
	nop

loc_8c059dbe:
	mov.w @(loc_8c059eb6,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c059dd2
	mov 0x01,r5
	jsr @r13
	mov r14,r4
	mov.w @(loc_8c059eb8,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r14)

loc_8c059dd2:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c059dda:
	mov.w @(loc_8c059eb8,PC),r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8c059ecc,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c059dee:
	mov.b @(0x5,r4),r0
	tst r0,r0
	bf loc_8c059e56
	mov.w @(loc_8c059eba,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c059e56
	mov.w @(loc_8c059eba,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt loc_8c059e56
	mov.w @(loc_8c059ebc,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x0C,r0
	bt loc_8c059e56
	mov.w @(loc_8c059ebe,PC),r0
	mov.w @(r0,r4),r2
	tst r2,r2
	bt loc_8c059e56
	mov.w @(loc_8c059ec0,PC),r0
	mov.w @(loc_8c059ec4,PC),r3
	mov.b @(r0,r4),r2
	add 0x05,r0
	add r4,r3
	mov.b r2,@(r0,r4)
	mov.w @(loc_8c059ec2,PC),r0
	mov.b @r3,r2
	mov.l @(r0,r4),r5
	mov.b @(0xF,r5),r0
	add r0,r2
	mov.w @(loc_8c059ec4,PC),r0
	mov.b r2,@r3
	mov.b @(r0,r4),r3
	add 0xFF,r0
	mov.b @(r0,r4),r2
	cmp/hs r2,r3
	bt loc_8c059e42
	rts
	mov 0x00,r0

loc_8c059e42:
	mov.w @(loc_8c059ec4,PC),r0
	mov 0x00,r5
	fldi0 fr4
	mov.b r5,@(r0,r4)
	add 0x01,r0
	mov.b r5,@(r0,r4)
	add 0x0F,r0
	fmov fr4,@(r0,r4)
	add 0x04,r0
	fmov fr4,@(r0,r4)

loc_8c059e56:
	mov 0x01,r0
	rts
	nop

;==============================================
loc_8c059e5c:
	mov.w @(loc_8c059eb8,PC),r0
	mov 0x00,r5
	mov.w @(loc_8c059ec6,PC),r1
	mov.b r5,@(r0,r4)
	add 0xFF,r0
	mov.b r5,@(r0,r4)
	add r4,r1
	mov.b @(0x1,r4),r0
	mov.l @(loc_8c059ed0,PC),r5
	extu.b r0,r0
	shll r0
	mov.b @(r0,r5),r3
	mov.w @(loc_8c059ec0,PC),r0
	mov.b r3,@(r0,r4)
	mov.b @(0x1,r4),r0
	extu.b r0,r0
	shll r0
	add r0,r5
	mov.b @(0x1,r5),r0
	rts
	mov.b r0,@r1

;==============================================
loc_8c059e86:
	mov.w @(loc_8c059ec8,PC),r0
	mov.l r14,@-r15
	mov.l @(r0,r4),r14
	tst r14,r14
	bt loc_8c059eac
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x1E,r0
	bf loc_8c059eac
	mov.w @(loc_8c059eca,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x22,r0
	bf loc_8c059eac
	mov.l @(loc_8c059ed4,PC),r2
	mov r14,r4
	mov 0x20,r5
	jmp @r2
	mov.l @r15+,r14

loc_8c059eac:
	mov.l @(loc_8c059ed8,PC),r3
	mov r14,r4
	mov 0x43,r5
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c059eb6:
	#data 0x01a0
loc_8c059eb8:
	#data 0x0281
loc_8c059eba:
	#data 0x01f9
loc_8c059ebc:
	#data 0x01d0
loc_8c059ebe:
	#data 0x0420
loc_8c059ec0:
	#data 0x027e
loc_8c059ec2:
	#data 0x01bc
loc_8c059ec4:
	#data 0x0280
loc_8c059ec6:
	#data 0x027f
loc_8c059ec8:
	#data 0x01b8
loc_8c059eca:
	#data 0x01a2
	#align4
loc_8c059ecc:
	#data bank14.loc_8c14ee28
loc_8c059ed0:
	#data bank14.loc_8c14f52c
loc_8c059ed4:
	#data bank04.loc_8c042008
loc_8c059ed8:
	#data bank04.loc_8c04223a

;==============================================
loc_8c059edc:
	add 0xFC,r15
	mov.l @(loc_8c059f58,PC),r3
	mov.l @r3,r5
	mov.l r5,@r15
	add 0x18,r5
	mov.b @(0x2,r4),r0
	extu.b r0,r0
	xor 0x01,r0
	mov r0,r2
	shll r0
	add r2,r0
	shll2 r0
	add r0,r5
	mov.l @r5,r7
	mov.l @(0x8,r5),r6
	mov.b @(0x5,r7),r0
	mov.l @(0x4,r5),r3
	mov 0x03,r5
	extu.b r0,r0
	cmp/ge r5,r0
	bt loc_8c059f2c
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	cmp/ge r5,r0
	bt loc_8c059f2c
	mov.b @(0x5,r6),r0
	extu.b r0,r0
	cmp/ge r5,r0
	bt loc_8c059f2c
	mov.l @r15,r1
	mov 0x38,r0
	mov.b @(r0,r1),r2
	tst r2,r2
	bf loc_8c059f2c
	mov.w @(loc_8c059f50,PC),r0
	mov.l @(r0,r4),r2
	mov.w @(loc_8c059f52,PC),r0
	mov.b @(r0,r2),r1
	tst r1,r1
	bt loc_8c059f38

loc_8c059f2c:
	mov.w @(loc_8c059f54,PC),r0
	mov 0x00,r5
	mov.b r5,@(r0,r4)
	mov.b r5,@(r0,r7)
	mov.b r5,@(r0,r3)
	mov.b r5,@(r0,r6)

loc_8c059f38:
	rts
	add 0x04,r15
	mov.b @(0x2,r5),r0
	extu.b r0,r0
	tst 0x20,r0
	bt loc_8c059f4a
	mov.l @(loc_8c059f5c,PC),r0
	rts
	nop

loc_8c059f4a:
	mov.l @(loc_8c059f60,PC),r0
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c059f50:
	#data 0x01b8
loc_8c059f52:
	#data 0x0411
loc_8c059f54:
	#data 0x0235
	#align4
loc_8c059f58:
	#data 0x8c2896b0
loc_8c059f5c:
	#data bank14.loc_8c14f480
loc_8c059f60:
	#data bank14.loc_8c14f46a

;==============================================
loc_8c059f64:
	mov.w @(loc_8c05a094,PC),r0
	mov.l r14,@-r15
	mov.w @(loc_8c05a096,PC),r3
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov.l @(loc_8c05a0ac,PC),r12
	sts.l pr,@-r15
	mov.b @(r0,r5),r14
	mov.b @(0x2,r12),r0
	extu.b r14,r14
	mov.l @(loc_8c05a0a8,PC),r2
	mulu.w r3,r14
	tst r0,r0
	sts macl,r14
	bf.s loc_8c059f96
	add r2,r14
	mov 0x02,r0
	mov.l @(loc_8c05a0b0,PC),r6
	mov.b @(r0,r14),r0
	mov 0x00,r5
	or 0x80,r0
	mov.b r0,@(0x2,r12)
	bsr loc_8c05a706
	mov r14,r4

loc_8c059f96:
	mov.w @(loc_8c05a098,PC),r0
	mov.w @(r0,r13),r2
	add 0x02,r0
	tst r2,r2
	bf.s loc_8c059fb4
	mov.w r2,@(r0,r13)
	mov.w @(loc_8c05a09a,PC),r0
	mov 0x00,r3
	mov.w @(r0,r13),r1
	mov.w @(loc_8c05a09c,PC),r0
	mov.w r1,@(r0,r13)
	add 0xEC,r0
	mov.w r1,@(r0,r13)
	mov.w @(loc_8c05a09e,PC),r0
	mov.w r3,@(r0,r13)

loc_8c059fb4:
	mov.w @(loc_8c05a0a2,PC),r0
	mov.w @(loc_8c05a0a0,PC),r4
	mov.w @(r0,r14),r3
	add 0x01,r3
	mov.w r3,@(r0,r14)
	exts.w r3,r3
	cmp/gt r4,r3
	bf loc_8c059fc6
	mov.w r4,@(r0,r14)

loc_8c059fc6:
	mov.w @(loc_8c05a098,PC),r0
	mov.w @(r0,r13),r3
	add 0x01,r3
	mov.w r3,@(r0,r13)
	exts.w r3,r3
	cmp/gt r4,r3
	bf loc_8c059fd6
	mov.w r4,@(r0,r13)

loc_8c059fd6:
	mov.w @(loc_8c05a0a4,PC),r0
	mov.w @(r0,r13),r3
	add 0x01,r3
	mov.w r3,@(r0,r13)
	exts.w r3,r3
	cmp/gt r4,r3
	bf loc_8c059fe6
	mov.w r4,@(r0,r13)

loc_8c059fe6:
	mov.b @(0x2,r14),r0
	mov r12,r3
	add 0x4E,r3
	extu.b r0,r0
	shll r0
	add r3,r0
	mov.w @r0,r2
	add 0x01,r2
	mov.w r2,@r0
	exts.w r2,r2
	cmp/gt r4,r2
	bf loc_8c05a00c
	mov.b @(0x2,r14),r0
	mov r12,r3
	add 0x4E,r3
	extu.b r0,r0
	shll r0
	add r3,r0
	mov.w r4,@r0

loc_8c05a00c:
	mov.b @(0x2,r14),r0
	mov r12,r3
	add 0x52,r3
	extu.b r0,r0
	shll r0
	add r3,r0
	mov.w @r0,r2
	add 0x01,r2
	mov.w r2,@r0
	exts.w r2,r2
	cmp/gt r4,r2
	bf loc_8c05a032
	mov.b @(0x2,r14),r0
	mov r12,r3
	add 0x52,r3
	extu.b r0,r0
	shll r0
	add r3,r0
	mov.w r4,@r0

loc_8c05a032:
	mov.l @(loc_8c05a0b4,PC),r6
	mov.l @r6,r2
	mov.b @r2,r3
	mov 0x06,r2
	extu.b r3,r3
	cmp/ge r2,r3
	bt loc_8c05a08a
	mov.w @(loc_8c05a0a6,PC),r0
	mov.w @(r0,r14),r1
	add 0xF6,r0
	mov.w @(r0,r14),r3
	cmp/ge r3,r1
	bt loc_8c05a054
	mov.w @(loc_8c05a0a2,PC),r0
	mov.w @(r0,r14),r1
	add 0x0A,r0
	mov.w r1,@(r0,r14)

loc_8c05a054:
	mov.b @(0x2,r14),r0
	mov.l @r6,r4
	extu.b r0,r0
	mov r4,r3
	mov r0,r5
	add 0x78,r3
	shll r5
	add r5,r3
	mov.w @r3,r2
	mov r4,r3
	add 0x4E,r3
	add r5,r3
	mov.w @r3,r1
	cmp/ge r1,r2
	bt loc_8c05a08a
	mov.b @(0x2,r14),r0
	mov r4,r2
	add 0x4E,r2
	mov r4,r3
	extu.b r0,r0
	mov r0,r5
	shll r5
	add r5,r2
	mov.w @r2,r1
	add 0x78,r3
	add r5,r3
	mov.w r1,@r3

loc_8c05a08a:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05a094:
	#data 0x01a4
loc_8c05a096:
	#data 0x05a4
loc_8c05a098:
	#data 0x026c
loc_8c05a09a:
	#data 0x0420
loc_8c05a09c:
	#data 0x027c
loc_8c05a09e:
	#data 0x032e
loc_8c05a0a0:
	#data 0x03e7
loc_8c05a0a2:
	#data 0x0260
loc_8c05a0a4:
	#data 0x0270
loc_8c05a0a6:
	#data 0x026a
	#align4
loc_8c05a0a8:
	#data 0x8c268340
loc_8c05a0ac:
	#data 0x8c2895f0
loc_8c05a0b0:
	#data 0x01000000
loc_8c05a0b4:
	#data 0x8c2896b0

;==============================================
loc_8c05a0b8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c05a1e8,PC),r0
	mov r6,r12
	mov.w @(loc_8c05a1ea,PC),r3
	mov r4,r13
	mov.b @(r0,r5),r14
	mov.l @(loc_8c05a200,PC),r11
	extu.b r14,r14
	mov.l @(loc_8c05a1fc,PC),r2
	mulu.w r3,r14
	mov.b @(0x2,r11),r0
	tst r0,r0
	sts macl,r14
	bf.s loc_8c05a0f0
	add r2,r14
	mov 0x02,r0
	mov.l @(loc_8c05a204,PC),r6
	mov.b @(r0,r14),r0
	mov 0x00,r5
	or 0x80,r0
	mov.b r0,@(0x2,r11)
	bsr loc_8c05a706
	mov r14,r4

loc_8c05a0f0:
	mov.w @(loc_8c05a1ec,PC),r0
	mov 0x00,r6
	mov.w @(r0,r13),r2
	add 0x02,r0
	tst r2,r2
	bf.s loc_8c05a10e
	mov.w r2,@(r0,r13)
	mov.w @(loc_8c05a1ee,PC),r0
	mov.w @(r0,r13),r1
	mov.w @(loc_8c05a1f0,PC),r0
	mov.w r1,@(r0,r13)
	add 0xEC,r0
	mov.w r1,@(r0,r13)
	mov.w @(loc_8c05a1f2,PC),r0
	mov.w r6,@(r0,r13)

loc_8c05a10e:
	mov 0x12,r0
	mov.b @(r0,r12),r0
	extu.b r0,r0
	tst 0x10,r0
	bt loc_8c05a11c
	bra loc_8c05a2b4
	nop

loc_8c05a11c:
	mov.w @(loc_8c05a1f6,PC),r0
	mov.w @(loc_8c05a1f4,PC),r4
	mov.w @(r0,r14),r2
	add 0x01,r2
	mov.w r2,@(r0,r14)
	exts.w r2,r2
	cmp/gt r4,r2
	bf loc_8c05a12e
	mov.w r4,@(r0,r14)

loc_8c05a12e:
	mov.w @(loc_8c05a1ec,PC),r0
	mov.w @(r0,r13),r3
	add 0x01,r3
	mov.w r3,@(r0,r13)
	exts.w r3,r3
	cmp/gt r4,r3
	bf loc_8c05a13e
	mov.w r4,@(r0,r13)

loc_8c05a13e:
	mov.w @(loc_8c05a1f8,PC),r0
	mov.w @(r0,r13),r3
	add 0x01,r3
	mov.w r3,@(r0,r13)
	exts.w r3,r3
	cmp/gt r4,r3
	bf loc_8c05a14e
	mov.w r4,@(r0,r13)

loc_8c05a14e:
	mov.b @(0x2,r14),r0
	mov r11,r3
	add 0x4E,r3
	extu.b r0,r0
	shll r0
	add r3,r0
	mov.w @r0,r2
	add 0x01,r2
	mov.w r2,@r0
	exts.w r2,r2
	cmp/gt r4,r2
	bf.s loc_8c05a176
	mov 0x01,r5
	mov.b @(0x2,r14),r0
	mov r11,r3
	add 0x4E,r3
	extu.b r0,r0
	shll r0
	add r3,r0
	mov.w r4,@r0

loc_8c05a176:
	mov 0x18,r0
	mov.b @(r0,r12),r7
	extu.b r7,r7
	exts.w r7,r3
	tst r3,r3
	bf.s loc_8c05a186
	mov.b @(0x2,r14),r0
	mov r5,r7

loc_8c05a186:
	mov r11,r3
	extu.b r0,r0
	add 0x52,r3
	shll r0
	add r3,r0
	mov.w @r0,r2
	add r7,r2
	mov.w r2,@r0
	exts.w r2,r2
	cmp/gt r4,r2
	bf loc_8c05a1aa
	mov.b @(0x2,r14),r0
	mov r11,r3
	add 0x52,r3
	extu.b r0,r0
	shll r0
	add r3,r0
	mov.w r4,@r0

loc_8c05a1aa:
	mov.l @(loc_8c05a208,PC),r7
	mov.l @r7,r2
	mov.b @r2,r3
	mov 0x06,r2
	extu.b r3,r3
	cmp/ge r2,r3
	bt loc_8c05a22c
	mov.w @(loc_8c05a1fa,PC),r0
	mov.w @(r0,r14),r1
	add 0xF6,r0
	mov.w @(r0,r14),r3
	cmp/ge r3,r1
	bt loc_8c05a1cc
	mov.w @(loc_8c05a1f6,PC),r0
	mov.w @(r0,r14),r1
	add 0x0A,r0
	mov.w r1,@(r0,r14)

loc_8c05a1cc:
	mov.b @(0x2,r14),r0
	mov.l @r7,r4
	extu.b r0,r0
	mov r4,r3
	shll r0
	add 0x78,r3
	mov.l r0,@r15
	add r3,r0
	mov r4,r1
	mov.l @r15,r3
	add 0x4E,r1
	mov.w @r0,r2
	bra loc_8c05a20c
	nop

;##############################################
loc_8c05a1e8:
	#data 0x01a4
loc_8c05a1ea:
	#data 0x05a4
loc_8c05a1ec:
	#data 0x026c
loc_8c05a1ee:
	#data 0x0420
loc_8c05a1f0:
	#data 0x027c
loc_8c05a1f2:
	#data 0x032e
loc_8c05a1f4:
	#data 0x03e7
loc_8c05a1f6:
	#data 0x0260
loc_8c05a1f8:
	#data 0x0270
loc_8c05a1fa:
	#data 0x026a
	#align4
loc_8c05a1fc:
	#data 0x8c268340
loc_8c05a200:
	#data 0x8c2895f0
loc_8c05a204:
	#data 0x01000000
loc_8c05a208:
	#data 0x8c2896b0

;----------------------------------------------
loc_8c05a20c:
	add r3,r1
	mov.w @r1,r1
	cmp/ge r1,r2
	bt loc_8c05a22c
	mov.b @(0x2,r14),r0
	mov r4,r2
	add 0x4E,r2
	mov r4,r3
	extu.b r0,r0
	mov r0,r7
	shll r7
	add r7,r2
	mov.w @r2,r1
	add 0x78,r3
	add r7,r3
	mov.w r1,@r3

loc_8c05a22c:
	mov 0x02,r0
	mov.b @(r0,r12),r0
	and 0x30,r0
	mov r0,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c05a24c
	mov.w @(loc_8c05a2c2,PC),r0
	extu.b r4,r4
	mov.w @(r0,r14),r2
	add 0x02,r0
	mov.w r2,@(r0,r14)
	add 0xFE,r0
	mov.w @(r0,r14),r3
	or r4,r3
	mov.w r3,@(r0,r14)

loc_8c05a24c:
	mov.w @(loc_8c05a2c4,PC),r0
	mov r6,r4
	mov.b @(r0,r14),r2
	add 0x01,r0
	mov.b r2,@(r0,r14)
	add 0x85,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf.s loc_8c05a27e
	mov 0x03,r6
	mov.w @(loc_8c05a2c6,PC),r0
	mov.b @(r0,r14),r2
	extu.b r2,r2
	tst r5,r2
	bt.s loc_8c05a270
	mov r5,r4
	mov r6,r4

loc_8c05a270:
	mov.w @(loc_8c05a2c8,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c05a27e
	mov 0x04,r2
	or r2,r4

loc_8c05a27e:
	mov.b @(0x2,r12),r0
	extu.b r0,r0
	tst 0x70,r0
	bf loc_8c05a28a
	mov 0x08,r2
	or r2,r4

loc_8c05a28a:
	mov.w @(loc_8c05a2c4,PC),r0
	mov.b r4,@(r0,r14)
	add 0x03,r0
	mov.b @(r0,r14),r3
	or r4,r3
	mov.b r3,@(r0,r14)
	mov.b @(r0,r14),r4
	mov 0x0E,r0
	and r4,r0
	extu.b r0,r0
	cmp/eq 0x0E,r0
	bf loc_8c05a2b4
	mov.w @(loc_8c05a2ca,PC),r0
	mov.w @(r0,r14),r2
	cmp/ge r6,r2
	bf loc_8c05a2b4
	mov.w @(loc_8c05a2c2,PC),r0
	mov 0x01,r3
	mov.w @(r0,r14),r2
	or r3,r2
	mov.w r2,@(r0,r14)

loc_8c05a2b4:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05a2c2:
	#data 0x0264
loc_8c05a2c4:
	#data 0x0273
loc_8c05a2c6:
	#data 0x0274
loc_8c05a2c8:
	#data 0x01f9
loc_8c05a2ca:
	#data 0x0260

;==============================================
loc_8c05a2cc:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.b @(0x2,r4),r0
	mov 0x00,r13
	mov 0x01,r5
	mov.l @(loc_8c05a430,PC),r12
	extu.b r0,r14
	mov.w @(loc_8c05a426,PC),r0
	xor r5,r14
	mov r12,r2
	mov r14,r3
	shll r14
	add r3,r14
	mov r12,r3
	add 0x18,r2
	shll2 r14
	add r2,r14
	mov.l @r14,r14
	add 0x4E,r3
	mov.b r13,@(r0,r4)
	mov.w @(loc_8c05a428,PC),r0
	mov.b r13,@(r0,r4)
	add 0x02,r0
	mov.b r13,@(r0,r4)
	add 0xF5,r0
	mov.w r13,@(r0,r4)
	add 0x04,r0
	mov.w r13,@(r0,r4)
	mov.b @(0x2,r14),r0
	extu.b r0,r0
	shll r0
	add r3,r0
	mov.w @r0,r2
	tst r2,r2
	bt loc_8c05a414
	mov.b @(0x2,r14),r0
	mov r12,r3
	add 0x52,r3
	extu.b r0,r0
	shll r0
	add r3,r0
	mov.w @r0,r2
	tst r2,r2
	bt loc_8c05a414
	mov.b @(0x2,r4),r0
	mov r12,r6
	add 0x18,r6
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add r0,r6
	mov.w @(loc_8c05a428,PC),r0
	mov.l @(0x4,r6),r2
	mov.l @r6,r3
	mov.b @(r0,r2),r2
	mov.b @(r0,r3),r3
	mov.l @(0x8,r6),r1
	or r2,r3
	mov.b @(r0,r1),r2
	or r2,r3
	extu.b r3,r3
	tst r3,r3
	bf loc_8c05a414
	mov.w @(loc_8c05a42a,PC),r0
	mov.l @(loc_8c05a434,PC),r2
	mov.w r13,@(r0,r14)
	add 0x04,r0
	mov.w r13,@(r0,r14)
	add 0x0E,r0
	mov.b r13,@(r0,r14)
	add 0x04,r0
	mov.b r13,@(r0,r14)
	add 0xFD,r0
	mov.b @(r0,r14),r3
	add 0x01,r0
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r13,@(r0,r14)
	mov.w @(loc_8c05a42c,PC),r0
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bf loc_8c05a3f8
	mov.l @(loc_8c05a438,PC),r3
	mov r15,r11
	mov.b @(0x2,r14),r0
	add 0x04,r11
	mov.l @r3,r1
	extu.b r0,r4
	add 0x4E,r1
	shll r4
	add r1,r4
	mov.w @r4,r4
	mul.l r4,r4
	sts macl,r0
	cmp/hi r5,r0
	bf.s loc_8c05a3f8
	mov.l r0,@r11
	mov r11,r0
	nop
	mov r0,r8
	mov.l r0,@r15
	bsr loc_8c05a882
	mov.l @r0,r4
	mov.l @(loc_8c05a438,PC),r3
	mov.l r0,@r8
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x4E,r2
	mov.w @(r0,r2),r1
	mov 0x03,r2
	cmp/ge r2,r1
	bf.s loc_8c05a3d4
	mov r11,r3
	mov.b @(0x2,r14),r0
	mov r12,r1
	add 0x6C,r1
	extu.b r0,r0
	shll2 r0
	add r1,r0
	mov.l @r11,r1
	mov.l r1,@r0

loc_8c05a3d4:
	mov r11,r10
	add 0x04,r3
	mov.l r3,@r15
	mov.l @r10,r2
	shlr16 r2
	shlr2 r2
	shlr2 r2
	mov.l r2,@r3
	mov.l @r10,r3
	shll8 r3
	shll2 r3
	shll2 r3
	mov.l r3,@r10
	mov r3,r6
	mov.l @r15,r5
	mov.l @r5,r5
	bsr loc_8c05a706
	mov r14,r4

loc_8c05a3f8:
	mov.b @(0x2,r14),r0
	mov r12,r3
	add 0x4E,r3
	extu.b r0,r0
	shll r0
	add r3,r0
	mov r12,r3
	mov.w r13,@r0
	add 0x52,r3
	mov.b @(0x2,r14),r0
	extu.b r0,r0
	shll r0
	add r3,r0
	mov.w r13,@r0

loc_8c05a414:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05a426:
	#data 0x01df
loc_8c05a428:
	#data 0x0275
loc_8c05a42a:
	#data 0x0260
loc_8c05a42c:
	#data 0x008b
	#align4
loc_8c05a430:
	#data 0x8c2895f0
loc_8c05a434:
	#data work.GameGlobalPointer
loc_8c05a438:
	#data 0x8c2896b0

;==============================================
loc_8c05a43c:
	mov.l r13,@-r15
	mov 0x00,r6
	mov.l @(loc_8c05a490,PC),r13
	mov r6,r5
	mov 0x01,r1
	mov 0x0C,r7

loc_8c05a448:
	mov.b @(0x2,r4),r0
	mov.l @r13,r2
	extu.b r0,r0
	xor r1,r0
	mov r0,r3
	shll r0
	add r3,r0
	shll2 r0
	add 0x18,r2
	add r2,r0
	mov.l @(r0,r5),r3
	add 0x04,r5
	mov.w @(loc_8c05a48a,PC),r0
	cmp/hs r7,r5
	mov.w r6,@(r0,r3)
	bf loc_8c05a448
	rts
	mov.l @r15+,r13

;==============================================
loc_8c05a46c:
	mov.l @(loc_8c05a494,PC),r5
	mov.b @(0x2,r5),r0
	tst r0,r0
	bf loc_8c05a486
	mov.w @(loc_8c05a48c,PC),r0
	mov.l @(loc_8c05a498,PC),r6
	mov.l @(r0,r4),r4
	mov 0x02,r0
	mov.b @(r0,r4),r0
	or 0x80,r0
	mov.b r0,@(0x2,r5)
	bra loc_8c05a706
	mov 0x00,r5

loc_8c05a486:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05a48a:
	#data 0x0270
loc_8c05a48c:
	#data 0x01c8
	#align4
loc_8c05a490:
	#data 0x8c2896b0
loc_8c05a494:
	#data 0x8c2895f0
loc_8c05a498:
	#data 0x01000000

;==============================================
loc_8c05a49c:
	mov.w @(loc_8c05a59e,PC),r0
	mov.w @(loc_8c05a59c,PC),r3
	mov.b r3,@(r0,r4)
	add 0xF7,r0
	mov.w @(r0,r4),r2
	add 0x02,r0
	tst r2,r2
	bf.s loc_8c05a4c0
	mov.w r2,@(r0,r4)
	mov.w @(loc_8c05a5a0,PC),r0
	mov 0x00,r3
	mov.w @(r0,r4),r1
	mov.w @(loc_8c05a5a2,PC),r0
	mov.w r1,@(r0,r4)
	add 0xEC,r0
	mov.w r1,@(r0,r4)
	mov.w @(loc_8c05a5a4,PC),r0
	mov.w r3,@(r0,r4)

loc_8c05a4c0:
	mov.w @(loc_8c05a5a8,PC),r0
	mov.w @(loc_8c05a5a6,PC),r7
	mov.w @(r0,r5),r3
	add r6,r3
	mov.w r3,@(r0,r5)
	exts.w r3,r3
	cmp/gt r7,r3
	bf loc_8c05a4d2
	mov.w r7,@(r0,r5)

loc_8c05a4d2:
	mov.w @(loc_8c05a5aa,PC),r0
	mov.w @(r0,r4),r3
	add r6,r3
	mov.w r3,@(r0,r4)
	exts.w r3,r3
	cmp/gt r7,r3
	bf loc_8c05a4e2
	mov.w r7,@(r0,r4)

loc_8c05a4e2:
	mov.w @(loc_8c05a5ac,PC),r0
	mov.w @(r0,r4),r3
	add r6,r3
	mov.w r3,@(r0,r4)
	exts.w r3,r3
	cmp/gt r7,r3
	bf loc_8c05a4f2
	mov.w r7,@(r0,r4)

loc_8c05a4f2:
	mov.b @(0x2,r5),r0
	mov.l @(loc_8c05a5b0,PC),r4
	extu.b r0,r0
	mov r4,r3
	add 0x4E,r3
	shll r0
	add r3,r0
	mov.w @r0,r2
	add r6,r2
	mov.w r2,@r0
	exts.w r2,r2
	cmp/gt r7,r2
	bf loc_8c05a51a
	mov.b @(0x2,r5),r0
	mov r4,r3
	add 0x4E,r3
	extu.b r0,r0
	shll r0
	add r3,r0
	mov.w r7,@r0

loc_8c05a51a:
	mov.b @(0x2,r5),r0
	mov r4,r3
	add 0x52,r3
	extu.b r0,r0
	shll r0
	add r3,r0
	mov.w @r0,r2
	add r6,r2
	mov.w r2,@r0
	exts.w r2,r2
	cmp/gt r7,r2
	bf loc_8c05a540
	mov.b @(0x2,r5),r0
	mov r4,r3
	add 0x52,r3
	extu.b r0,r0
	shll r0
	add r3,r0
	mov.w r7,@r0

loc_8c05a540:
	mov.l @(loc_8c05a5b4,PC),r7
	mov.l @r7,r2
	mov.b @r2,r3
	mov 0x06,r2
	extu.b r3,r3
	cmp/ge r2,r3
	bt loc_8c05a598
	mov.w @(loc_8c05a5ae,PC),r0
	mov.w @(r0,r5),r1
	add 0xF6,r0
	mov.w @(r0,r5),r3
	cmp/ge r3,r1
	bt loc_8c05a562
	mov.w @(loc_8c05a5a8,PC),r0
	mov.w @(r0,r5),r1
	add 0x0A,r0
	mov.w r1,@(r0,r5)

loc_8c05a562:
	mov.b @(0x2,r5),r0
	mov.l @r7,r4
	extu.b r0,r0
	mov r4,r3
	mov r0,r6
	add 0x78,r3
	shll r6
	add r6,r3
	mov.w @r3,r2
	mov r4,r3
	add 0x4E,r3
	add r6,r3
	mov.w @r3,r1
	cmp/ge r1,r2
	bt loc_8c05a598
	mov.b @(0x2,r5),r0
	mov r4,r2
	add 0x4E,r2
	mov r4,r3
	extu.b r0,r0
	mov r0,r6
	shll r6
	add r6,r2
	mov.w @r2,r1
	add 0x78,r3
	add r6,r3
	mov.w r1,@r3

loc_8c05a598:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05a59c:
	#data 0x00ff
loc_8c05a59e:
	#data 0x0275
loc_8c05a5a0:
	#data 0x0420
loc_8c05a5a2:
	#data 0x027c
loc_8c05a5a4:
	#data 0x032e
loc_8c05a5a6:
	#data 0x03e7
loc_8c05a5a8:
	#data 0x0260
loc_8c05a5aa:
	#data 0x026c
loc_8c05a5ac:
	#data 0x0270
loc_8c05a5ae:
	#data 0x026a
	#align4
loc_8c05a5b0:
	#data 0x8c2895f0
loc_8c05a5b4:
	#data 0x8c2896b0

;==============================================
loc_8c05a5b8:
	mov.w @(loc_8c05a6ae,PC),r0
	mov.w @(loc_8c05a6ac,PC),r3
	mov.b r3,@(r0,r4)
	add 0xF7,r0
	mov.w @(r0,r4),r2
	add 0x02,r0
	tst r2,r2
	bf.s loc_8c05a5dc
	mov.w r2,@(r0,r4)
	mov.w @(loc_8c05a6b0,PC),r0
	mov 0x00,r3
	mov.w @(r0,r4),r1
	mov.w @(loc_8c05a6b2,PC),r0
	mov.w r1,@(r0,r4)
	add 0xEC,r0
	mov.w r1,@(r0,r4)
	mov.w @(loc_8c05a6b4,PC),r0
	mov.w r3,@(r0,r4)

loc_8c05a5dc:
	mov.w @(loc_8c05a6b6,PC),r7
	exts.w r6,r3
	mov.w @(loc_8c05a6b8,PC),r0
	cmp/gt r7,r3
	bf.s loc_8c05a5ea
	mov.w r6,@(r0,r5)
	mov.w r7,@(r0,r5)

loc_8c05a5ea:
	exts.w r6,r3
	mov.w @(loc_8c05a6ba,PC),r0
	cmp/gt r7,r3
	bf.s loc_8c05a5f6
	mov.w r6,@(r0,r4)
	mov.w r7,@(r0,r4)

loc_8c05a5f6:
	exts.w r6,r3
	mov.w @(loc_8c05a6bc,PC),r0
	cmp/gt r7,r3
	bf.s loc_8c05a602
	mov.w r6,@(r0,r4)
	mov.w r7,@(r0,r4)

loc_8c05a602:
	mov.b @(0x2,r5),r0
	mov.l @(loc_8c05a6c0,PC),r4
	extu.b r0,r0
	mov r4,r3
	add 0x4E,r3
	shll r0
	add r3,r0
	mov.w @r0,r2
	add r6,r2
	mov.w r2,@r0
	exts.w r2,r2
	cmp/gt r7,r2
	bf loc_8c05a62a
	mov.b @(0x2,r5),r0
	mov r4,r3
	add 0x4E,r3
	extu.b r0,r0
	shll r0
	add r3,r0
	mov.w r7,@r0

loc_8c05a62a:
	mov.b @(0x2,r5),r0
	mov r4,r3
	add 0x52,r3
	extu.b r0,r0
	shll r0
	add r3,r0
	mov.w @r0,r2
	add r6,r2
	mov.w r2,@r0
	exts.w r2,r2
	cmp/gt r7,r2
	bf loc_8c05a650
	mov.b @(0x2,r5),r0
	mov r4,r3
	add 0x52,r3
	extu.b r0,r0
	shll r0
	add r3,r0
	mov.w r7,@r0

loc_8c05a650:
	mov.l @(loc_8c05a6c4,PC),r7
	mov.l @r7,r2
	mov.b @r2,r3
	mov 0x06,r2
	extu.b r3,r3
	cmp/ge r2,r3
	bt loc_8c05a6a8
	mov.w @(loc_8c05a6be,PC),r0
	mov.w @(r0,r5),r1
	add 0xF6,r0
	mov.w @(r0,r5),r3
	cmp/ge r3,r1
	bt loc_8c05a672
	mov.w @(loc_8c05a6b8,PC),r0
	mov.w @(r0,r5),r1
	add 0x0A,r0
	mov.w r1,@(r0,r5)

loc_8c05a672:
	mov.b @(0x2,r5),r0
	mov.l @r7,r4
	extu.b r0,r0
	mov r4,r3
	mov r0,r6
	add 0x78,r3
	shll r6
	add r6,r3
	mov.w @r3,r2
	mov r4,r3
	add 0x4E,r3
	add r6,r3
	mov.w @r3,r1
	cmp/ge r1,r2
	bt loc_8c05a6a8
	mov.b @(0x2,r5),r0
	mov r4,r2
	add 0x4E,r2
	mov r4,r3
	extu.b r0,r0
	mov r0,r6
	shll r6
	add r6,r2
	mov.w @r2,r1
	add 0x78,r3
	add r6,r3
	mov.w r1,@r3

loc_8c05a6a8:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05a6ac:
	#data 0x00ff
loc_8c05a6ae:
	#data 0x0275
loc_8c05a6b0:
	#data 0x0420
loc_8c05a6b2:
	#data 0x027c
loc_8c05a6b4:
	#data 0x032e
loc_8c05a6b6:
	#data 0x03e7
loc_8c05a6b8:
	#data 0x0260
loc_8c05a6ba:
	#data 0x026c
loc_8c05a6bc:
	#data 0x0270
loc_8c05a6be:
	#data 0x026a
	#align4
loc_8c05a6c0:
	#data 0x8c2895f0
loc_8c05a6c4:
	#data 0x8c2896b0

;==============================================
loc_8c05a6c8:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05a814,PC),r3
	mov.w @(loc_8c05a80c,PC),r1
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x03,r0
	bt loc_8c05a6fe
	mov.b @r5,r1
	mov 0x0A,r7
	mov.l @(loc_8c05a818,PC),r3
	extu.b r1,r1
	jsr @r3
	mov 0x05,r0
	cmp/gt r7,r0
	bf.s loc_8c05a6ec
	mov r0,r6
	mov r7,r6

loc_8c05a6ec:
	mov.l @(loc_8c05a81c,PC),r0
	shll r6
	mov 0x00,r5
	mov.w @(r0,r6),r3
	exts.w r3,r6
	mov.w r3,@r15
	add 0x04,r15
	bra loc_8c05a706
	lds.l @r15+,pr

loc_8c05a6fe:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c05a706:
	mov.l r14,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05a814,PC),r3
	mov.w @(loc_8c05a80c,PC),r1
	mov.l @r3,r0
	mov.b @(r0,r1),r0
	cmp/eq 0x03,r0
	bt loc_8c05a742
	mov.w @(loc_8c05a80e,PC),r3
	mov.l @(loc_8c05a820,PC),r7
	mov.w @(loc_8c05a80e,PC),r14
	add r7,r3
	mov.l r7,@r15
	mov.b @(0x2,r4),r0
	mov.l @r3,r3
	tst r0,r0
	bt.s loc_8c05a73a
	add r7,r14
	mov.l @r15,r4
	mov.w @(loc_8c05a810,PC),r3
	mov.w @(loc_8c05a80e,PC),r2
	add r3,r4
	mov.w @(loc_8c05a80e,PC),r14
	add r4,r2
	mov.l @r2,r2
	add r4,r14

loc_8c05a73a:
	mov r14,r4
	add 0x04,r15
	bra loc_8c05a748
	mov.l @r15+,r14

loc_8c05a742:
	add 0x04,r15
	rts
	mov.l @r15+,r14

loc_8c05a748:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r15,r13
	mov.l @(loc_8c05a824,PC),r2
	add 0x04,r13
	mov.l r5,@(0x8,r15)
	mov 0x00,r3
	mov r4,r12
	mov.l r6,@(0x4,r15)
	mov r12,r14
	mov.b r3,@r2
	mov.b @r13,r5
	bsr loc_8c05a82c
	mov.b @r14,r4
	mov.b r0,@r14
	mov r14,r2
	add 0x01,r2
	mov.l r2,@r15
	mov r2,r8
	mov.b @(0x1,r13),r0
	mov r0,r5
	bsr loc_8c05a82c
	mov.b @r2,r4
	mov.b r0,@r8
	mov r14,r3
	add 0x02,r3
	mov.l r3,@r15
	mov r3,r8
	mov.b @(0x2,r13),r0
	mov r0,r5
	bsr loc_8c05a82c
	mov.b @r3,r4
	mov.b r0,@r8
	mov r14,r3
	add 0x03,r3
	mov.l r3,@r15
	mov r3,r8
	mov.b @(0x3,r13),r0
	mov r0,r5
	bsr loc_8c05a82c
	mov.b @r3,r4
	mov r15,r13
	mov r14,r3
	add 0x08,r13
	mov.b r0,@r8
	add 0x04,r3
	mov r3,r8
	mov.l r3,@r15
	mov.b @r13,r5
	bsr loc_8c05a82c
	mov.b @r3,r4
	mov.b r0,@r8
	mov r14,r3
	add 0x05,r3
	mov.l r3,@r15
	mov r3,r8
	mov.b @(0x1,r13),r0
	mov r0,r5
	bsr loc_8c05a82c
	mov.b @r3,r4
	mov.b r0,@r8
	mov r14,r3
	add 0x06,r3
	mov.l r3,@r15
	mov r3,r8
	mov.b @(0x2,r13),r0
	mov r0,r5
	bsr loc_8c05a82c
	mov.b @r3,r4
	mov.b r0,@r8
	add 0x07,r14
	mov r14,r4
	mov.l r14,@r15
	mov.b @(0x3,r13),r0
	mov r0,r5
	bsr loc_8c05a82c
	mov.b @r4,r4
	mov r12,r4
	add 0x04,r4
	mov.w @(loc_8c05a812,PC),r5
	mov.b r0,@r14
	mov.l @r4,r2
	cmp/hi r5,r2
	bf loc_8c05a7fe
	mov.l @(loc_8c05a828,PC),r2
	mov.l r5,@r4
	mov.l r2,@r12

loc_8c05a7fe:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05a80c:
	#data 0x0084
loc_8c05a80e:
	#data 0x04d4
loc_8c05a810:
	#data 0x05a4
loc_8c05a812:
	#data 0x0999
	#align4
loc_8c05a814:
	#data work.GameGlobalPointer
loc_8c05a818:
	#data bank12.loc_8c129128
loc_8c05a81c:
	#data bank14.loc_8c14ee30
loc_8c05a820:
	#data 0x8c268340
loc_8c05a824:
	#data 0x8c28c5a0
loc_8c05a828:
	#data 0x99999999

;==============================================
loc_8c05a82c:
	mov.l @(loc_8c05a958,PC),r7
	mov 0x0F,r3
	mov.l r14,@-r15
	mov 0x01,r6
	mov.l r13,@-r15
	extu.b r4,r14
	mov.b @r7,r0
	and r14,r3
	mov 0x0F,r2
	and r0,r6
	extu.b r5,r13
	and r13,r2
	add r3,r6
	add r2,r6
	mov 0x09,r2
	extu.w r6,r3
	cmp/gt r2,r3
	bf loc_8c05a856
	mov 0x10,r1
	add 0xF6,r6
	or r1,r6

loc_8c05a856:
	mov.w @(loc_8c05a94e,PC),r3
	mov.w @(loc_8c05a950,PC),r1
	and r3,r13
	and r3,r14
	add r13,r14
	add r14,r6
	extu.w r6,r2
	cmp/gt r1,r2
	bf loc_8c05a874
	mov.w @(loc_8c05a952,PC),r0
	mov 0x01,r2
	sub r0,r6
	extu.b r6,r6
	bra loc_8c05a878
	mov.b r2,@r7

loc_8c05a874:
	mov 0x00,r0
	mov.b r0,@r7

loc_8c05a878:
	mov r6,r0
	nop
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05a882:
	mov 0x00,r5
	sts.l pr,@-r15
	mov r5,r6
	mov r5,r7
	mov 0x0A,r5

loc_8c05a88c:
	mov r4,r1
	mov r5,r0
	nop
	mov.l @(loc_8c05a95c,PC),r3
	jsr @r3
	nop
	shad r6,r0
	add 0x04,r6
	add r0,r7
	mov r5,r0
	nop
	mov.l @(loc_8c05a960,PC),r2
	jsr @r2
	mov r4,r1
	tst r0,r0
	bf.s loc_8c05a88c
	mov r0,r4
	lds.l @r15+,pr
	rts
	mov r7,r0

;==============================================
loc_8c05a8b4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(loc_8c05a964,PC),r10
	mov r4,r3
	mov.l r4,@(0x8,r15)
	mov 0x3E,r0
	mov r5,r14
	mov 0x00,r9
	mov.l r9,@r3
	mov.l r9,@r14
	mov.l @r10,r4
	mov.b @(r0,r4),r5
	extu.b r5,r3
	cmp/pz r3
	bt loc_8c05a8e4
	bra loc_8c05aa0a
	nop

loc_8c05a8e4:
	extu.b r5,r8
	mov r4,r2
	mov r8,r3
	shll r8
	add r3,r8
	mov.w @(loc_8c05a954,PC),r0
	add 0x18,r2
	shll2 r8
	add r8,r2
	mov.l @r2,r3
	mov.w @(r0,r3),r1
	mov.l r1,@r14
	mov.l @r10,r2
	add 0x18,r2
	add r8,r2
	mov.l @(0x4,r2),r3
	mov.w @(r0,r3),r1
	mov.l @r14,r3
	add r1,r3
	mov.l r3,@r14
	mov.l @r10,r3
	add 0x18,r3
	add r8,r3
	mov.l @(0x8,r3),r2
	mov.l @r14,r3
	mov.w @(r0,r2),r1
	add r1,r3
	mov r3,r2
	lds r2,fpul
	cmp/pz r2
	mov.l r3,@r14
	bt.s loc_8c05a92e
	float fpul,fr3
	mov.l @(loc_8c05a968,PC),r1
	lds r1,fpul
	fsts fpul,fr2
	fadd fr2,fr3

loc_8c05a92e:
	mova @(0x3C,PC),r0
	fmov @r0,fr2
	mova @(0x3C,PC),r0
	fmov @r0,fr1
	mova @(0x3C,PC),r0
	fmul fr2,fr3
	fmov fr3,fr4
	fdiv fr1,fr4
	fmov @r0,fr3
	fcmp/gt fr3,fr4
	bf loc_8c05a97c
	mova @(loc_8c05a978,PC),r0
	fmov fr4,fr3
	fmov @r0,fr2
	bra loc_8c05a97e
	fadd fr2,fr3

;##############################################
loc_8c05a94e:
	#data 0x00f0
loc_8c05a950:
	#data 0x0099
loc_8c05a952:
	#data 0x00a0
loc_8c05a954:
	#data 0x0420
	#align4
loc_8c05a958:
	#data 0x8c28c5a0
loc_8c05a95c:
	#data bank12.loc_8c1292d4
loc_8c05a960:
	#data bank12.loc_8c129128
loc_8c05a964:
	#data 0x8c2896b0
loc_8c05a968:
	#data 0x4f800000
loc_8c05a96c:
	#data 0x43480000
loc_8c05a970:
	#data 0x43100000
loc_8c05a974:
	#data 0x4f000000
loc_8c05a978:
	#data 0xcf800000

;----------------------------------------------
loc_8c05a97c:
	fmov fr4,fr3

loc_8c05a97e:
	ftrc fr3,fpul
	sts fpul,r2
	mov.l r2,@r14
	bsr loc_8c05a882
	mov r2,r4
	mov.w @(loc_8c05aaa6,PC),r2
	mov r9,r11
	mov.l r0,@r14
	mov.l r2,@(0x4,r15)

loc_8c05a990:
	mov.l @r10,r0
	add 0x18,r0
	add r8,r0
	mov.l @(r0,r11),r3
	mov.w @(loc_8c05aaa8,PC),r0
	mov.w @(r0,r3),r2
	mov.w @(loc_8c05aaaa,PC),r3
	cmp/eq r3,r2
	bf loc_8c05a9ec
	mov r15,r12
	mov.l @(loc_8c05aab0,PC),r1
	add 0x04,r12
	mov r14,r13
	mov.b r9,@r1
	mov.b @r12,r5
	bsr loc_8c05a82c
	mov.b @r13,r4
	mov r13,r2
	mov.b r0,@r13
	add 0x01,r2
	mov.l r2,@r15
	mov.l r2,@-r15
	mov.b @(0x1,r12),r0
	mov r0,r5
	bsr loc_8c05a82c
	mov.b @r2,r4
	mov.l @r15+,r1
	mov r13,r3
	add 0x02,r3
	mov.b r0,@r1
	mov.l r3,@r15
	mov.l r3,@-r15
	mov.b @(0x2,r12),r0
	mov r0,r5
	bsr loc_8c05a82c
	mov.b @r3,r4
	mov.l @r15+,r1
	add 0x03,r13
	mov r13,r4
	mov.b r0,@r1
	mov.l r13,@r15
	mov.b @(0x3,r12),r0
	mov r0,r5
	bsr loc_8c05a82c
	mov.b @r4,r4
	mov.b r0,@r13

loc_8c05a9ec:
	mov 0x0C,r2
	add 0x04,r11
	cmp/hs r2,r11
	bf loc_8c05a990
	mov.l @r14,r3
	mov.l @(0x8,r15),r1
	shlr8 r3
	shlr2 r3
	shlr2 r3
	mov.l r3,@r1
	mov.l @r14,r1
	shll16 r1
	shll2 r1
	shll2 r1
	mov.l r1,@r14

loc_8c05aa0a:
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
loc_8c05aa1e:
	mov 0x00,r3
	mov.l @(loc_8c05aab8,PC),r2
	mov 0x40,r0
	sts.l pr,@-r15
	mov.l r3,@r4
	mov 0x09,r7
	mov.l r3,@r5
	mov.l @(loc_8c05aab4,PC),r3
	mov.l @r3,r1
	mov.b @(r0,r1),r1
	jsr @r2
	mov 0x0A,r0
	mov r0,r6
	extu.b r6,r1
	cmp/gt r7,r1
	bf loc_8c05aa40
	mov r7,r6

loc_8c05aa40:
	mov.l @(loc_8c05aabc,PC),r0
	extu.b r6,r6
	shll r6
	mov.w @(r0,r6),r3
	tst r3,r3
	bt.s loc_8c05aa5c
	mov.l r3,@r5
	mov.l @r5,r1
	shlr8 r1
	mov.l r1,@r4
	mov.l @r5,r2
	shll16 r2
	shll8 r2
	mov.l r2,@r5

loc_8c05aa5c:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c05aa62:
	mov 0x00,r3
	mov.w @(loc_8c05aaac,PC),r2
	mov.l r3,@r4
	mov 0x3E,r1
	mov.l r3,@r5
	mov 0x04,r7
	mov.l @(loc_8c05aab4,PC),r3
	mov.l @r3,r0
	mov r0,r6
	add r6,r1
	mov.b @r1,r6
	add r0,r2
	add r2,r6
	mov.b @r6,r6
	extu.b r6,r1
	cmp/gt r7,r1
	bf loc_8c05aa86
	mov r7,r6

loc_8c05aa86:
	mov.l @(loc_8c05aac0,PC),r0
	extu.b r6,r6
	shll r6
	mov.w @(r0,r6),r3
	tst r3,r3
	bt.s loc_8c05aaa2
	mov.l r3,@r5
	mov.l @r5,r1
	shlr8 r1
	mov.l r1,@r4
	mov.l @r5,r2
	shll16 r2
	shll8 r2
	mov.l r2,@r5

loc_8c05aaa2:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05aaa6:
	#data 0x0300
loc_8c05aaa8:
	#data 0x0420
loc_8c05aaaa:
	#data 0x0090
loc_8c05aaac:
	#data 0x009a
	#align4
loc_8c05aab0:
	#data 0x8c28c5a0
loc_8c05aab4:
	#data 0x8c2896b0
loc_8c05aab8:
	#data bank12.loc_8c129128
loc_8c05aabc:
	#data bank14.loc_8c14ee46
loc_8c05aac0:
	#data bank14.loc_8c14ee5a

;==============================================
loc_8c05aac4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xE4,r15
	mov.l r4,@(0x10,r15)
	mov r15,r4
	add 0x14,r4
	mov.l r5,@(0xC,r15)
	mov r4,r3
	mov 0x00,r2
	mov r15,r5
	mov r4,r14
	add 0x04,r3
	add 0x04,r5
	mov.l r3,@(0x8,r15)
	mov.l r2,@r3
	mov.l r2,@r14
	bsr loc_8c05a8b4
	mov r15,r4
	mov.l @r15,r5
	mov.l @(0x4,r15),r6
	bsr loc_8c05a748
	mov r14,r4
	mov r15,r5
	add 0x04,r5
	bsr loc_8c05aa1e
	mov r15,r4
	mov.l @r15,r5
	mov.l @(0x4,r15),r6
	bsr loc_8c05a748
	mov r14,r4
	mov r15,r5
	add 0x04,r5
	bsr loc_8c05aa62
	mov r15,r4
	mov.l @r15,r5
	mov.l @(0x4,r15),r6
	bsr loc_8c05a748
	mov r14,r4
	mov.l @(0x8,r15),r3
	mov 0x3E,r0
	mov.l @(0x10,r15),r2
	mov.l @r3,r1
	mov.l r1,@r2
	mov.l @r14,r2
	mov.l @(0xC,r15),r3
	mov.l r2,@r3
	mov.l @(loc_8c05ab4c,PC),r3
	mov.l @r3,r4
	mov.b @(r0,r4),r2
	cmp/pz r2
	bf loc_8c05ab42
	mov.b @(r0,r4),r1
	mov.l @(loc_8c05ab50,PC),r5
	tst r1,r1
	bf.s loc_8c05ab38
	mov.l @r14,r6
	bra loc_8c05ab3c
	mov r5,r4

loc_8c05ab38:
	mov.w @(loc_8c05ab4a,PC),r4
	add r5,r4

loc_8c05ab3c:
	mov.l @(0x8,r15),r5
	bsr loc_8c05a706
	mov.l @r5,r5

loc_8c05ab42:
	add 0x1C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05ab4a:
	#data 0x05a4
	#align4
loc_8c05ab4c:
	#data 0x8c2896b0
loc_8c05ab50:
	#data 0x8c268340

;==============================================
loc_8c05ab54:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(loc_8c05ac4c,PC),r0
	mov r4,r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c05ab6e
	mov r14,r4
	add 0x08,r15
	lds.l @r15+,pr
	bra loc_8c05ac74
	mov.l @r15+,r14

loc_8c05ab6e:
	mov.l @(loc_8c05ac5c,PC),r2
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c05ac60,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c05ac44
	mov.l @(loc_8c05ac64,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c05ac44
	mov.l @(loc_8c05ac68,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c05ac44
	mov.w @(loc_8c05ac4e,PC),r0
	mov 0xF6,r1
	mov.w @(loc_8c05ac50,PC),r2
	mov.w @(r0,r14),r3
	mov.w @(loc_8c05ac52,PC),r0
	extu.w r3,r3
	and r2,r3
	shad r1,r3
	mov.b r3,@(r0,r14)
	mov.b @(0x6,r14),r0
	tst r0,r0
	bf loc_8c05abd2
	mov.l @(loc_8c05ac6c,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05ac52,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c05ac44
	mov.b @(0x6,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c05ac52,PC),r0
	mov.b @(r0,r14),r5
	add 0x08,r15
	lds.l @r15+,pr
	bra loc_8c05ac94
	mov.l @r15+,r14

loc_8c05abd2:
	mov.l @(loc_8c05ac6c,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05ac52,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c05abf2
	mov 0x00,r0
	mov r14,r4
	mov.b r0,@(0x6,r14)
	mov.w @(loc_8c05ac52,PC),r0
	mov.b @(r0,r14),r5
	add 0x08,r15
	lds.l @r15+,pr
	bra loc_8c05acba
	mov.l @r15+,r14

loc_8c05abf2:
	mov 0x22,r0
	mov.b @(r0,r14),r3
	mov.w @(loc_8c05ac52,PC),r0
	mov.b @(r0,r14),r2
	cmp/eq r2,r3
	bt loc_8c05ac04
	mov.b @(r0,r14),r5
	bsr loc_8c05ac94
	mov r14,r4

loc_8c05ac04:
	mov 0x22,r0
	mov.b @(r0,r14),r6
	mov.l @(loc_8c05ac70,PC),r0
	extu.b r6,r6
	mov.b @(r0,r6),r6
	mov.w @(loc_8c05ac54,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c05ac22
	mov.b @(0x1,r14),r0
	mov 0x20,r3
	sub r6,r3
	mov 0x1F,r2
	mov r3,r6
	and r2,r6

loc_8c05ac22:
	extu.b r0,r0
	cmp/eq 0x34,r0
	bf loc_8c05ac2e
	mov.w @(loc_8c05ac56,PC),r5
	bra loc_8c05ac30
	nop

loc_8c05ac2e:
	mov.w @(loc_8c05ac58,PC),r5

loc_8c05ac30:
	bsr loc_8c05b278
	mov r14,r4
	mov.w @(loc_8c05ac5a,PC),r0
	mov 0x02,r3
	mov r14,r4
	mov.b r3,@(r0,r14)
	add 0x08,r15
	lds.l @r15+,pr
	bra loc_8c05acd8
	mov.l @r15+,r14

loc_8c05ac44:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05ac4c:
	#data 0x0201
loc_8c05ac4e:
	#data 0x034a
loc_8c05ac50:
	#data 0x3c00
loc_8c05ac52:
	#data 0x023c
loc_8c05ac54:
	#data 0x01d2
loc_8c05ac56:
	#data 0x0320
loc_8c05ac58:
	#data 0x0258
loc_8c05ac5a:
	#data 0x01f9
	#align4
loc_8c05ac5c:
	#data bank05.loc_8c05218a
loc_8c05ac60:
	#data bank05.loc_8c0518a0
loc_8c05ac64:
	#data bank05.loc_8c0526d6
loc_8c05ac68:
	#data bank05.loc_8c054184
loc_8c05ac6c:
	#data bank03.loc_8c034dee
loc_8c05ac70:
	#data bank14.loc_8c14eee4

;==============================================
loc_8c05ac74:
	mov.w @(loc_8c05ad56,PC),r0
	mov 0x00,r3
	fldi0 fr3
	mov.b r3,@(r0,r4)
	mov 0x68,r0
	fmov fr3,@(r0,r4)
	mov 0x60,r0
	fmov fr3,@(r0,r4)
	mov 0x5C,r0
	fmov fr3,@(r0,r4)
	mova @(loc_8c05ad60,PC),r0
	mov.l @(loc_8c05ad64,PC),r3
	fmov @r0,fr3
	mov 0x6C,r0
	jmp @r3
	fmov fr3,@(r0,r4)

;==============================================
loc_8c05ac94:
	mov.l r14,@-r15
	mov 0x22,r0
	mov r4,r14
	mov.b r5,@(r0,r14)
	mov.w @(loc_8c05ad58,PC),r0
	mov 0x02,r3
	mov 0x0F,r6
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov 0x22,r0
	mov.b @(r0,r14),r0
	mov 0x1A,r5
	mov.l @(loc_8c05ad6c,PC),r3
	extu.b r0,r0
	and r0,r6
	mov.l @(loc_8c05ad68,PC),r0
	mov.b @(r0,r6),r6
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c05acba:
	mov.l r14,@-r15
	mov 0x22,r0
	mov r4,r14
	mov.b r5,@(r0,r14)
	mov.b @(r0,r14),r0
	mov 0x0F,r6
	mov.l @(loc_8c05ad6c,PC),r3
	mov r14,r4
	extu.b r0,r0
	and r0,r6
	mov.l @(loc_8c05ad70,PC),r0
	mov 0x1A,r5
	mov.b @(r0,r6),r6
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c05acd8:
	mova @(loc_8c05ad74,PC),r0
	fmov @r0,fr4
	mov.w @(loc_8c05ad5a,PC),r0
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fadd fr4,fr3
	fcmp/gt fr3,fr2
	bt loc_8c05acf4
	mov.w @(loc_8c05ad5a,PC),r0
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fadd fr4,fr3
	fmov fr3,@(r0,r4)

loc_8c05acf4:
	rts
	nop

;==============================================
;Airdash Character Checks
;==============================================
loc_8c05acf8:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(pl_mem.charid0,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0 ;Morrigan
	bt loc_8c05ad3c
	cmp/eq 0x0C,r0 ;Spiderman
	bt loc_8c05ad3c
	cmp/eq 0x0E,r0 ;Venom
	bt loc_8c05ad3c
	cmp/eq 0x10,r0 ;Tron
	bt loc_8c05ad3c
	cmp/eq 0x14,r0 ;SonSon
	bt loc_8c05ad3c
	cmp/eq 0x30,r0 ;Omega Red
	bt loc_8c05ad3c
	cmp/eq 0x0A,r0 ;Rouge
	bt loc_8c05ad4a
	cmp/eq 0x0F,r0 ;Doom
	bt loc_8c05ad50
	cmp/eq 0x2E,r0 ;War Machine
	bt loc_8c05ad50
	cmp/eq 0x33,r0 ;Iron Man
	bt loc_8c05ad50
	cmp/eq 0x2A,r0 ;Storm
	bt loc_8c05ad78
	cmp/eq 0x2C,r0 ;Magneto
	bt loc_8c05ad78
	cmp/eq 0x25,r0 ;Dhalsim
	bt loc_8c05ad78
	cmp/eq 0x35,r0 ;BlackHeart
	bt loc_8c05ad7e
	bra loc_8c05ad84 ;other
	nop

loc_8c05ad3c:
	mov.w @(loc_8c05ad5c,PC),r0
	mov r14,r4
	mov.l @(r0,r14),r3
	mov 0x54,r0
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8c05ad4a:
	mov r14,r4
	bra loc_8c05af5a
	mov.l @r15+,r14

loc_8c05ad50:
	mov r14,r4
	bra loc_8c05b0b0
	mov.l @r15+,r14

;##############################################
loc_8c05ad56:
	#data 0x0201
loc_8c05ad58:
	#data 0x01f9
loc_8c05ad5a:
	#data 0x041c
loc_8c05ad5c:
	#data 0x0428
	#align4
loc_8c05ad60:
	#data 0xbf4db6db
loc_8c05ad64:
	#data bank05.loc_8c05176e
loc_8c05ad68:
	#data bank14.loc_8c14eef4
loc_8c05ad6c:
	#data bank03.loc_8c034e8c
loc_8c05ad70:
	#data bank14.loc_8c14ef04
loc_8c05ad74:
	#data 0x42092492

;----------------------------------------------
loc_8c05ad78:
	mov r14,r4
	bra loc_8c05b1d6
	mov.l @r15+,r14

loc_8c05ad7e:
	mov r14,r4
	bra loc_8c05b0c2
	mov.l @r15+,r14

loc_8c05ad84:
	mov r14,r4
	bra loc_8c05ad8a
	mov.l @r15+,r14

loc_8c05ad8a:
	mov r4,r3
	mov.l @(loc_8c05aebc,PC),r1
	mov.l r4,@-r15
	mov.b @(0x6,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================:
loc_8c05ad9c:
	mov.b @(0x6,r4),r0
	add 0x01,r0
	mov.b r0,@(0x6,r4)
	mov 0x10,r0
	mov.w r0,@(0x1C,r4)
	mova @(0x118,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r4)
	mov 0x60,r0
	fldi0 fr3
	fmov fr3,@(r0,r4)
	mova @(loc_8c05aec4,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r4)
	mova @(loc_8c05aec8,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r4)
	mov.w @(loc_8c05aeb8,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c05adde
	mov 0x04,r6
	mov 0x5C,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)
	mov 0x68,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)

loc_8c05adde:
	mov.l @(loc_8c05aecc,PC),r3
	jmp @r3
	mov 0x02,r5

;==============================================
loc_8c05ade4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c05aed0,PC),r3
	jsr @r3
	mov r4,r14
	mov 0x5C,r1
	add r14,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	mov 0x68,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c05ae22
	mov.b @(0x6,r14),r0
	fldi0 fr3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x68,r0
	fmov fr3,@(r0,r14)

loc_8c05ae22:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05ae28:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x5C,r1
	mov.l @(loc_8c05aed0,PC),r3
	add r14,r1
	mov 0x34,r0
	sts.l pr,@-r15
	fmov @r1,fr3
	mov 0x68,r1
	fmov @(r0,r14),fr2
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c05ae60
	lds.l @r15+,pr
	mov.l @(loc_8c05aed4,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c05ae60:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05ae66:
	mov.b @(0x6,r4),r0
	mov 0x0A,r5
	add 0x01,r0
	mov.b r0,@(0x6,r4)
	mov.w @(loc_8c05aeba,PC),r0
	mov.b r5,@(r0,r4)
	add 0x01,r0
	mov.b r5,@(r0,r4)
	mov 0x10,r0
	mov.w r0,@(0x1C,r4)
	mova @(0x44,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r4)
	mov 0x60,r0
	fldi0 fr3
	fmov fr3,@(r0,r4)
	mova @(loc_8c05aec4,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r4)
	mova @(loc_8c05aec8,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r4)
	mov.w @(loc_8c05aeb8,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c05aeb2
	mov 0x04,r6
	mov 0x5C,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)
	mov 0x68,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)

loc_8c05aeb2:
	mov.l @(loc_8c05aecc,PC),r3
	jmp @r3
	mov 0x02,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05aeb8:
	#data 0x01d2
loc_8c05aeba:
	#data 0x01f2
	#align4
loc_8c05aebc:
	#data bank14.loc_8c14ef14
loc_8c05aec0:
	#data 0xbf4db6db
loc_8c05aec4:
	#data 0xc17d5555
loc_8c05aec8:
	#data 0x3ea00000
loc_8c05aecc:
	#data bank03.loc_8c034e8c
loc_8c05aed0:
	#data bank03.loc_8c034dee
loc_8c05aed4:
	#data bank05.loc_8c05176e

;==============================================
loc_8c05aed8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c05b000,PC),r3
	jsr @r3
	mov r4,r14
	mov 0x5C,r1
	add r14,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	mov 0x68,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c05af16
	mov.b @(0x6,r14),r0
	fldi0 fr3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x68,r0
	fmov fr3,@(r0,r14)

loc_8c05af16:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05af1c:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x5C,r1
	mov.l @(loc_8c05b000,PC),r3
	add r14,r1
	mov 0x34,r0
	sts.l pr,@-r15
	fmov @r1,fr3
	mov 0x68,r1
	fmov @(r0,r14),fr2
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c05af54
	lds.l @r15+,pr
	mov.l @(loc_8c05b004,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c05af54:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05af5a:
	mov r4,r3
	mov.l @(loc_8c05b008,PC),r1
	mov.l r4,@-r15
	mov.b @(0x6,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c05af6c:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x04,r0
	mov.w r0,@(0x1C,r14)
	mov 0x22,r0
	mov.b @(r0,r14),r5
	bsr loc_8c05ac94
	mov r14,r4
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x2E,r0
	bf loc_8c05af9e
	mov.w @(loc_8c05affa,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c05af9e
	mov.l @(loc_8c05b00c,PC),r3
	mov 0x04,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4

loc_8c05af9e:
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x2E,r0
	bt loc_8c05afb2
	cmp/eq 0x33,r0
	bt loc_8c05afb2
	cmp/eq 0x0F,r0
	bt loc_8c05afb6
	bra loc_8c05afc2
	nop

loc_8c05afb2:
	bra loc_8c05afb8
	mov 0x22,r5

loc_8c05afb6:
	mov 0x24,r5

loc_8c05afb8:
	lds.l @r15+,pr
	mov.l @(loc_8c05b010,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c05afc2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05afc8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c05b000,PC),r3
	jsr @r3
	mov r4,r14
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c05aff4
	mov.b @(0x6,r14),r0
	mov r14,r4
	mov.w @(loc_8c05affc,PC),r5
	mov 0x0A,r6
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x18,r0
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	bra loc_8c05b318
	mov.l @r15+,r14

loc_8c05aff4:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05affa:
	#data 0x0201
loc_8c05affc:
	#data 0x03e8
	#align4
loc_8c05b000:
	#data bank03.loc_8c034dee
loc_8c05b004:
	#data bank05.loc_8c05176e
loc_8c05b008:
	#data bank14.loc_8c14ef20
loc_8c05b00c:
	#data bank0e.loc_8c0e5fdc
loc_8c05b010:
	#data bank04.loc_8c042008

;==============================================
loc_8c05b014:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c05b134,PC),r3
	jsr @r3
	mov r4,r14
	mov 0x5C,r1
	add r14,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	mov 0x68,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x60,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x6C,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	bsr loc_8c05acd8
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c05b078
	mov.b @(0x6,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x22,r0
	lds.l @r15+,pr
	mov.b @(r0,r14),r5
	bra loc_8c05acba
	mov.l @r15+,r14

loc_8c05b078:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05b07e:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c05b134,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c05b0aa
	mov 0x5C,r0
	fldi0 fr4
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	mov.l @(loc_8c05b138,PC),r3
	mov r14,r4
	fmov fr4,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c05b0aa:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05b0b0:
	mov r4,r3
	mov.l @(loc_8c05b13c,PC),r1
	mov.l r4,@-r15
	mov.b @(0x6,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c05b0c2:
	mov.l r14,@-r15
	mov r4,r14
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	tst r0,r0
	bf loc_8c05b15c
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mova @(loc_8c05b140,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(loc_8c05b144,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mova @(loc_8c05b148,PC),r0
	fmov @r0,fr15
	mova @(loc_8c05b14c,PC),r0
	fmov @r0,fr14
	mov 0x22,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	and 0x03,r0
	cmp/eq 0x01,r0
	bf loc_8c05b10a
	mov.l @(loc_8c05b150,PC),r2
	mov 0x14,r5
	mov 0x03,r6
	jsr @r2
	mov r14,r4
	bra loc_8c05b11c
	nop

loc_8c05b10a:
	mova @(0x48,PC),r0
	mov.l @(loc_8c05b150,PC),r3
	fmov @r0,fr15
	mova @(loc_8c05b158,PC),r0
	fmov @r0,fr14
	mov 0x14,r5
	mov 0x02,r6
	jsr @r3
	mov r14,r4

loc_8c05b11c:
	mov.w @(loc_8c05b132,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c05b12a
	mov 0x5C,r0
	fneg fr14
	fneg fr15

loc_8c05b12a:
	fmov fr15,@(r0,r14)
	mov 0x68,r0
	bra loc_8c05b1cc
	fmov fr14,@(r0,r14)

;##############################################
loc_8c05b132:
	#data 0x01d2
	#align4
loc_8c05b134:
	#data bank03.loc_8c034dee
loc_8c05b138:
	#data bank05.loc_8c05176e
loc_8c05b13c:
	#data bank14.loc_8c14efac
loc_8c05b140:
	#data 0x40cdb6db
loc_8c05b144:
	#data 0xbe892492
loc_8c05b148:
	#data 0x41555555
loc_8c05b14c:
	#data 0x3ea00000
loc_8c05b150:
	#data bank03.loc_8c034e8c
loc_8c05b154:
	#data 0xc1555555
loc_8c05b158:
	#data 0xbea00000

;----------------------------------------------
loc_8c05b15c:
	mov.l @(loc_8c05b270,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c05b188
	mov 0x5C,r0
	fldi0 fr4
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	mov.l @(loc_8c05b274,PC),r3
	mov r14,r4
	fmov fr4,@(r0,r14)
	lds.l @r15+,pr
	fmov @r15+,fr14
	fmov @r15+,fr15
	jmp @r3
	mov.l @r15+,r14

loc_8c05b188:
	mov 0x5C,r1
	mov r14,r4
	add r14,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	mov 0x68,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x60,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x6C,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	lds.l @r15+,pr
	fmov @r15+,fr14
	fmov @r15+,fr15
	bra loc_8c05acd8
	mov.l @r15+,r14

loc_8c05b1cc:
	lds.l @r15+,pr
	fmov @r15+,fr14
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05b1d6:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	tst r0,r0
	bf loc_8c05b1fc
	mov.b @(0x6,r14),r0
	mov 0x14,r6
	mov.w @(loc_8c05b26c,PC),r5
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x18,r0
	mov.w r0,@(0x1C,r14)
	bsr loc_8c05b318
	mov r14,r4
	mov 0x22,r0
	mov.b @(r0,r14),r5
	bsr loc_8c05ac94
	mov r14,r4

loc_8c05b1fc:
	mov.l @(loc_8c05b270,PC),r2
	jsr @r2
	mov r14,r4
	mov 0x5C,r1
	add r14,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	mov 0x68,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x60,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x6C,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	bsr loc_8c05acd8
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c05b266
	mov 0x5C,r0
	fldi0 fr4
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	mov.l @(loc_8c05b274,PC),r3
	mov r14,r4
	fmov fr4,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c05b266:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05b26c:
	#data 0x04e2
	#align4
loc_8c05b270:
	#data bank03.loc_8c034dee
loc_8c05b274:
	#data bank05.loc_8c05176e

;==============================================
loc_8c05b278:
	mov.l r14,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	exts.w r5,r5
	mov.l @(loc_8c05b300,PC),r3
	mova @(loc_8c05b2f8,PC),r0
	lds r5,fpul
	fmov @r0,fr14
	extu.b r6,r6
	mov 0x28,r0
	mov r4,r14
	sub r6,r0
	float fpul,fr3
	and 0x1F,r0
	shll8 r0
	shll2 r0
	shll r0
	mov.w r0,@(0x4,r15)
	mova @(0x58,PC),r0
	fmov fr3,fr15
	fmul fr14,fr15
	fmov @r0,fr13
	mov.w @(0x4,r15),r0
	mov.l r0,@r15
	jsr @r3
	mov r0,r4
	fmov fr15,fr3
	fmul fr0,fr3
	mova @(0x4C,PC),r0
	mov.l @(loc_8c05b30c,PC),r3
	fmov @r0,fr0
	mova @(loc_8c05b308,PC),r0
	fmul fr13,fr3
	fdiv fr0,fr3
	fmov @r0,fr0
	mov 0x34,r0
	fmov @(r0,r14),fr2
	fdiv fr14,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov.l @r15,r4
	fmul fr0,fr15
	mova @(loc_8c05b310,PC),r0
	fmov @r0,fr0
	mova @(loc_8c05b314,PC),r0
	fmul fr13,fr15
	fdiv fr0,fr15
	fmov @r0,fr0
	mov 0x38,r0
	fmov @(r0,r14),fr3
	fdiv fr14,fr15
	fmac fr0,fr15,fr3
	fmov fr3,@(r0,r14)
	add 0x08,r15
	lds.l @r15+,pr
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;##############################################
	#align4
loc_8c05b2f8:
	#data 0x43800000
loc_8c05b2fc:
	#data 0x447a0000
loc_8c05b300:
	#data bank11.loc_8c11e2e0
loc_8c05b304:
	#data 0x47c35000
loc_8c05b308:
	#data 0x3fd55555
loc_8c05b30c:
	#data bank11.loc_8c11e860
loc_8c05b310:
	#data 0x47f42400
loc_8c05b314:
	#data 0x40092492

;==============================================
loc_8c05b318:
	mov.l r14,@-r15
	mov.l r13,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	fmov fr12,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r13
	mov r6,r0
	nop
	mov.w r0,@(0x8,r15)
	mov 0x22,r0
	mov.b @(r0,r13),r14
	mov.l @(loc_8c05b41c,PC),r0
	extu.b r14,r14
	mov.b @(r0,r14),r14
	mov.w @(loc_8c05b418,PC),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bt loc_8c05b34c
	mov 0x20,r3
	sub r14,r3
	mov 0x1F,r2
	mov r3,r14
	and r2,r14

loc_8c05b34c:
	exts.w r5,r5
	mova @(0xD0,PC),r0
	lds r5,fpul
	fmov @r0,fr15
	mov 0x28,r0
	extu.b r14,r3
	sub r3,r0
	float fpul,fr3
	and 0x1F,r0
	mov.l @(loc_8c05b42c,PC),r3
	shll8 r0
	shll2 r0
	shll r0
	mov.w r0,@r15
	mova @(loc_8c05b424,PC),r0
	fmov fr3,fr13
	fmul fr15,fr13
	fmov @r0,fr12
	mova @(loc_8c05b428,PC),r0
	mov.w @r15,r4
	fmov @r0,fr14
	jsr @r3
	mov.l r4,@(0x4,r15)
	fmov fr13,fr3
	fmul fr0,fr3
	mova @(0xB0,PC),r0
	mov.l @(loc_8c05b434,PC),r3
	fmov @r0,fr2
	mov 0x5C,r0
	fmul fr14,fr3
	fdiv fr2,fr3
	fdiv fr15,fr3
	fmul fr12,fr3
	fmov fr3,@(r0,r13)
	jsr @r3
	mov.l @(0x4,r15),r4
	fmul fr0,fr13
	mova @(0xA0,PC),r0
	fmov @r0,fr3
	mova @(0xA0,PC),r0
	fmov @r0,fr2
	mov 0x60,r0
	add 0x10,r14
	mov.l @(loc_8c05b42c,PC),r2
	fmul fr14,fr13
	fdiv fr3,fr13
	fdiv fr15,fr13
	fmul fr2,fr13
	fmov fr13,@(r0,r13)
	mov.w @(0x8,r15),r0
	mov r0,r3
	lds r3,fpul
	mov 0x1F,r3
	and r3,r14
	extu.b r14,r14
	float fpul,fr1
	mov 0x28,r0
	sub r14,r0
	and r3,r0
	shll8 r0
	shll2 r0
	fmov fr1,fr13
	shll r0
	fmul fr15,fr13
	mov.w r0,@(0x4,r15)
	mov.w @(0x4,r15),r0
	mov.l r0,@r15
	jsr @r2
	mov r0,r4
	fmov fr13,fr3
	fmul fr0,fr3
	mova @(0x54,PC),r0
	mov.l @(loc_8c05b434,PC),r3
	fmov @r0,fr2
	mov 0x68,r0
	fmul fr14,fr3
	fdiv fr2,fr3
	fdiv fr15,fr3
	fmul fr12,fr3
	fmov fr3,@(r0,r13)
	jsr @r3
	mov.l @r15,r4
	fmul fr0,fr13
	mova @(0x44,PC),r0
	fmov @r0,fr3
	mova @(0x44,PC),r0
	fmov @r0,fr2
	mov 0x6C,r0
	fmul fr14,fr13
	fdiv fr3,fr13
	fdiv fr15,fr13
	fmul fr2,fr13
	fmov fr13,@(r0,r13)
	add 0x0C,r15
	lds.l @r15+,pr
	fmov @r15+,fr12
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05b418:
	#data 0x01d2
	#align4
loc_8c05b41c:
	#data bank14.loc_8c14eee4
loc_8c05b420:
	#data 0x43800000
loc_8c05b424:
	#data 0x3fd55555
loc_8c05b428:
	#data 0x447a0000
loc_8c05b42c:
	#data bank11.loc_8c11e2e0
loc_8c05b430:
	#data 0x47c35000
loc_8c05b434:
	#data bank11.loc_8c11e860
loc_8c05b438:
	#data 0x47f42400
loc_8c05b43c:
	#data 0x40092492

;==============================================
loc_8c05b440:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8c05b4c0,PC),r0
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l @(loc_8c05b4d0,PC),r2
	sts.l pr,@-r15
	mov.b r13,@(r0,r14)
	add 0x13,r0
	mov.b r13,@(r0,r14)
	mov 0x2E,r0
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bt loc_8c05b464
	mov.w @(loc_8c05b4c2,PC),r0
	mov 0x07,r1
	mov.b r1,@(r0,r14)

loc_8c05b464:
	mov.w @(loc_8c05b4c4,PC),r0
	mov.w r13,@(r0,r14)
	add 0xC9,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c05b478
	mov.w @(loc_8c05b4c6,PC),r0
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)

loc_8c05b478:
	mov.w @(loc_8c05b4c8,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c05b55e
	mov.l @(loc_8c05b4d4,PC),r4
	mov 0x38,r0
	mov 0x01,r2
	mov.b @(r0,r4),r3
	mov.b @(0x2,r14),r0
	extu.b r3,r3
	extu.b r0,r0
	shad r0,r2
	tst r2,r3
	bf loc_8c05b55e
	mov.w @(loc_8c05b4ca,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c05b55e
	mov.w @(loc_8c05b4cc,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c05b4aa
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)

loc_8c05b4aa:
	mov.b @r4,r2
	mov 0x04,r3
	extu.b r2,r2
	cmp/gt r3,r2
	bf loc_8c05b4dc
	lds.l @r15+,pr
	mov.l @(loc_8c05b4d8,PC),r1
	mov r14,r4
	mov.l @r15+,r13
	jmp @r1
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05b4c0:
	#data 0x044a
loc_8c05b4c2:
	#data 0x045c
loc_8c05b4c4:
	#data 0x04dc
loc_8c05b4c6:
	#data 0x04a5
loc_8c05b4c8:
	#data 0x0411
loc_8c05b4ca:
	#data 0x01a0
loc_8c05b4cc:
	#data 0x04a4
	#align4
loc_8c05b4d0:
	#data work.GameGlobalPointer
loc_8c05b4d4:
	#data 0x8c2895f0
loc_8c05b4d8:
	#data loc_8c05bebc

;----------------------------------------------
loc_8c05b4dc:
	mov.b @(0x1,r4),r0
	extu.b r0,r0
	tst 0x02,r0
	bf loc_8c05b55e
	mov.w @(loc_8c05b5ae,PC),r0
	mov.l @(r0,r14),r4
	add 0x29,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c05b55e

loc_8c05b4f0:
	bsr loc_8c05b566
	mov r14,r4
	cmp/eq 0x02,r0
	bf loc_8c05b4fc
	bsr loc_8c05b608
	mov r14,r4

loc_8c05b4fc:
	bsr loc_8c05ba72
	mov r14,r4
	bsr loc_8c05bac8
	mov r14,r4
	cmp/eq 0x01,r0
	bt loc_8c05b4f0
	mov.w @(loc_8c05b5b0,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c05b54e
	mov.b @(r0,r14),r3
	add 0x01,r0
	mov.b @(r0,r14),r2
	mov.w @(loc_8c05b5b2,PC),r5
	cmp/eq r2,r3
	bf loc_8c05b546
	mov.w @(loc_8c05b5b4,PC),r0
	mov.b @(r0,r14),r4
	extu.b r4,r0
	cmp/eq 0x05,r0
	bt.s loc_8c05b546
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x06,r0
	bt loc_8c05b546
	mov r4,r0
	nop
	cmp/eq 0x09,r0
	bt loc_8c05b546
	mov r4,r0
	nop
	cmp/eq 0x14,r0
	bt loc_8c05b546
	mov.w @(loc_8c05b5b0,PC),r0
	mov r13,r5
	mov.b r13,@(r0,r14)

loc_8c05b546:
	mov.w @(loc_8c05b5b6,PC),r0
	mov.w @(r0,r14),r3
	or r5,r3
	mov.w r3,@(r0,r14)

loc_8c05b54e:
	mov.w @(loc_8c05b5b0,PC),r0
	mov.w @(loc_8c05b5b8,PC),r1
	mov.b @(r0,r14),r2
	add 0x01,r0
	add r14,r1
	mov.b r2,@(r0,r14)
	mov.b @(0x5,r14),r0
	mov.b r0,@r1

loc_8c05b55e:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05b566:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l @(loc_8c05b5c0,PC),r3
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.b @r3,r0
	extu.b r0,r0
	tst 0x04,r0
	bf.s loc_8c05b5aa
	mov r4,r14
	mov.b @(0x5,r14),r0
	mov 0x01,r3
	extu.b r0,r0
	cmp/gt r3,r0
	bf loc_8c05b58c
	bra loc_8c05b5fa
	mov 0x02,r0

loc_8c05b58c:
	mov.w @(loc_8c05b5ba,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c05b5aa
	mov.w @(loc_8c05b5bc,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x0D,r0
	bt loc_8c05b5aa
	mov.l @(loc_8c05b5c4,PC),r3
	mov 0x0F,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c05b5c8

loc_8c05b5aa:
	bra loc_8c05b5fa
	mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05b5ae:
	#data 0x020c
loc_8c05b5b0:
	#data 0x0446
loc_8c05b5b2:
	#data 0x1000
loc_8c05b5b4:
	#data 0x01d0
loc_8c05b5b6:
	#data 0x04dc
loc_8c05b5b8:
	#data 0x0483
loc_8c05b5ba:
	#data 0x0482
loc_8c05b5bc:
	#data 0x043c
	#align4
loc_8c05b5c0:
	#data 0x8c2895f1
loc_8c05b5c4:
	#data loc_8c05c29c

;==============================================
loc_8c05b5c8:
	mov.w @(loc_8c05b6a0,PC),r11
	mov 0x00,r12
	mov.l @(loc_8c05b6b0,PC),r10
	mov.l @(loc_8c05b6ac,PC),r13

loc_8c05b5d0:
	mov.b @r13+,r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r10),r3
	mov.w @(loc_8c05b6a2,PC),r0
	mov.b @(r0,r14),r5
	extu.b r5,r5
	jsr @r3
	mov r14,r4
	mov.b @r13,r3
	extu.b r3,r3
	cmp/eq r11,r3
	bf.s loc_8c05b5ee
	mov r0,r4
	mov r12,r4

loc_8c05b5ee:
	mov r4,r0
	nop
	cmp/eq 0x01,r0
	bt loc_8c05b5d0
	mov r4,r0
	nop

loc_8c05b5fa:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05b608:
	mov.w @(loc_8c05b6a4,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c05b638
	mov 0x00,r13
	mov.b r13,@(r0,r14)
	add 0x01,r0
	mov 0x01,r3
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.l @(loc_8c05b6b4,PC),r3
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05b6a6,PC),r0
	mov.b r13,@(r0,r14)
	add 0x08,r0
	mov.b r13,@(r0,r14)
	add 0xEC,r0
	mov.b r13,@(r0,r14)

loc_8c05b638:
	lds.l @r15+,pr
	mov 0x00,r0
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05b642:
	mov.w @(loc_8c05b6a2,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r4)
	rts
	mov r3,r0

;==============================================
loc_8c05b64c:
	mov.w @(loc_8c05b6a2,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r4)
	rts
	mov 0x00,r0

;==============================================
loc_8c05b656:
	mov.l r14,@-r15
	mov 0x02,r3
	sts.l pr,@-r15
	cmp/gt r3,r5
	bf.s loc_8c05b66a
	mov r4,r14
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_8c05b66a:
	mov.w @(loc_8c05b6a8,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c05b68a
	mov.l @(loc_8c05b6b8,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c05b68a
	lds.l @r15+,pr
	mov.l @(loc_8c05b6bc,PC),r3
	mov 0x02,r6
	mov r6,r5
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8c05b68a:
	lds.l @r15+,pr
	mov.l @(loc_8c05b6c0,PC),r3
	mov 0x02,r5
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05b69c:
	rts
	mov 0x01,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05b6a0:
	#data 0x00ff
loc_8c05b6a2:
	#data 0x0494
loc_8c05b6a4:
	#data 0x043c
loc_8c05b6a6:
	#data 0x04a0
loc_8c05b6a8:
	#data 0x0201
	#align4
loc_8c05b6ac:
	#data bank15.loc_8c1519e4
loc_8c05b6b0:
	#data bank15.loc_8c1512ec
loc_8c05b6b4:
	#data loc_8c05bef6
loc_8c05b6b8:
	#data bank04.loc_8c045790
loc_8c05b6bc:
	#data loc_8c05c214
loc_8c05b6c0:
	#data loc_8c05c282

;==============================================
loc_8c05b6c4:
	mov.w @(loc_8c05b7aa,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x03,r13
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	extu.b r3,r3
	cmp/gt r13,r3
	bt loc_8c05b71a
	mov.l @(loc_8c05b7bc,PC),r2
	mov 0x01,r5
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8c05b71a
	mov.l @(loc_8c05b7c0,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c05b71a
	mov.w @(loc_8c05b7ac,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c05b71a
	mov.w @(loc_8c05b7ae,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c05b71e
	mov.w @(loc_8c05b7b0,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf.s loc_8c05b70e
	mov r13,r5
	mov 0x04,r5

loc_8c05b70e:
	mov.l @(loc_8c05b7c4,PC),r2
	mov 0x02,r6
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c05b71e

loc_8c05b71a:
	bra loc_8c05b738
	mov 0x00,r0

;==============================================
loc_8c05b71e:
	mov.w @(loc_8c05b7b2,PC),r0
	mov 0x00,r4
	mov.l @(loc_8c05b7c8,PC),r3
	mov.b r13,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x56,r0
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov 0x01,r0

loc_8c05b738:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05b740:
	mov 0x03,r3
	cmp/gt r3,r5
	bf loc_8c05b74a
	rts
	mov 0x00,r0

loc_8c05b74a:
	mov.w @(loc_8c05b7b4,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c05b77e
	mov.w @(loc_8c05b7b6,PC),r0
	mov.b @(r0,r4),r2
	add 0x01,r0
	mov.b @(r0,r4),r3
	cmp/eq r3,r2
	bf loc_8c05b762
	rts
	mov 0x01,r0

loc_8c05b762:
	mov.w @(loc_8c05b7b8,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x12,r0
	bf loc_8c05b77e
	mov.w @(loc_8c05b7b6,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x13,r0
	bt loc_8c05b77e
	mov.l @(loc_8c05b7cc,PC),r2
	mov 0x03,r6
	jmp @r2
	mov 0x05,r5

loc_8c05b77e:
	mov.l @(loc_8c05b7d0,PC),r2
	jmp @r2
	mov 0x05,r5

;==============================================
loc_8c05b784:
	rts
	nop

;==============================================
loc_8c05b788:
	mov 0x03,r3
	cmp/gt r3,r5
	bf loc_8c05b792
	rts
	mov 0x00,r0

loc_8c05b792:
	mov.w @(loc_8c05b7b4,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c05b7f0
	mov.w @(loc_8c05b7b6,PC),r0
	mov.b @(r0,r4),r2
	add 0x01,r0
	mov.b @(r0,r4),r3
	cmp/eq r3,r2
	bf loc_8c05b7d4
	rts
	mov 0x01,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05b7aa:
	#data 0x0494
loc_8c05b7ac:
	#data 0x04a5
loc_8c05b7ae:
	#data 0x04a4
loc_8c05b7b0:
	#data 0x01f9
loc_8c05b7b2:
	#data 0x043c
loc_8c05b7b4:
	#data 0x0201
loc_8c05b7b6:
	#data 0x01d0
loc_8c05b7b8:
	#data 0x01d1
	#align4
loc_8c05b7bc:
	#data loc_8c05c29c
loc_8c05b7c0:
	#data loc_8c0528da
loc_8c05b7c4:
	#data loc_8c05bf3a
loc_8c05b7c8:
	#data loc_8c05bef6
loc_8c05b7cc:
	#data loc_8c05c214
loc_8c05b7d0:
	#data loc_8c05c282

;==============================================
loc_8c05b7d4:
	mov.w @(loc_8c05b8b8,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x13,r0
	bf loc_8c05b7f0
	mov.w @(loc_8c05b8ba,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x12,r0
	bt loc_8c05b7f0
	mov.l @(loc_8c05b8c4,PC),r2
	mov 0x03,r6
	jmp @r2
	mov 0x06,r5

loc_8c05b7f0:
	mov.l @(loc_8c05b8c8,PC),r2
	jmp @r2
	mov 0x06,r5

;==============================================
loc_8c05b7f6:
	rts
	nop

;==============================================
loc_8c05b7fa:
	mov 0x03,r3
	cmp/gt r3,r5
	bf loc_8c05b804
	rts
	mov 0x00,r0

loc_8c05b804:
	mov.w @(loc_8c05b8bc,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c05b838
	mov.w @(loc_8c05b8be,PC),r3
	mov.b @(0x5,r4),r0
	add r4,r3
	mov.b @r3,r3
	cmp/eq r3,r0
	bf loc_8c05b81c
	rts
	mov 0x01,r0

loc_8c05b81c:
	mov.w @(loc_8c05b8be,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c05b838
	mov.w @(loc_8c05b8c0,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c05b838
	mov.l @(loc_8c05b8c4,PC),r2
	mov 0x03,r6
	jmp @r2
	mov 0x07,r5

loc_8c05b838:
	mov.l @(loc_8c05b8c8,PC),r2
	jmp @r2
	mov 0x07,r5

;==============================================
loc_8c05b83e:
	rts
	nop

;==============================================
loc_8c05b842:
	mov 0x03,r3
	cmp/gt r3,r5
	bf loc_8c05b84c
	rts
	mov 0x00,r0

loc_8c05b84c:
	mov.w @(loc_8c05b8bc,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c05b880
	mov.w @(loc_8c05b8be,PC),r3
	mov.b @(0x5,r4),r0
	add r4,r3
	mov.b @r3,r3
	cmp/eq r3,r0
	bf loc_8c05b864
	rts
	mov 0x01,r0

loc_8c05b864:
	mov.w @(loc_8c05b8be,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c05b880
	mov.w @(loc_8c05b8c0,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c05b880
	mov.l @(loc_8c05b8c4,PC),r2
	mov 0x03,r6
	jmp @r2
	mov 0x07,r5

loc_8c05b880:
	mov.l @(loc_8c05b8c8,PC),r2
	jmp @r2
	mov 0x07,r5

;==============================================
loc_8c05b886:
	rts
	nop

;==============================================
loc_8c05b88a:
	mov 0x04,r3
	cmp/gt r3,r5
	bf loc_8c05b894
	rts
	mov 0x00,r0

loc_8c05b894:
	mov.w @(loc_8c05b8bc,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c05b8ae
	mov.w @(loc_8c05b8b8,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x11,r0
	bf loc_8c05b8ae
	mov.l @(loc_8c05b8c4,PC),r2
	mov 0x04,r6
	jmp @r2
	mov 0x09,r5

loc_8c05b8ae:
	mov.l @(loc_8c05b8c8,PC),r2
	jmp @r2
	mov 0x09,r5

;==============================================
loc_8c05b8b4:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05b8b8:
	#data 0x01d1
loc_8c05b8ba:
	#data 0x01d0
loc_8c05b8bc:
	#data 0x0201
loc_8c05b8be:
	#data 0x0483
loc_8c05b8c0:
	#data 0x01f9
	#align4
loc_8c05b8c4:
	#data loc_8c05c214
loc_8c05b8c8:
	#data loc_8c05c282

;==============================================
loc_8c05b8cc:
	mov 0x03,r3
	mov.w @(loc_8c05b9a0,PC),r0
	cmp/gt r3,r5
	bf.s loc_8c05b8da
	mov.l @(r0,r4),r6
	rts
	mov 0x00,r0

loc_8c05b8da:
	mov.w @(loc_8c05b9a2,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c05b8f6
	mov.w @(loc_8c05b9a4,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c05b8f6
	mov.w @(loc_8c05b9a6,PC),r0
	mov.b @(r0,r6),r0
	extu.b r0,r0
	cmp/eq 0x0A,r0
	bt loc_8c05b8fc

loc_8c05b8f6:
	mov.l @(loc_8c05b9a8,PC),r2
	jmp @r2
	mov 0x0A,r5

loc_8c05b8fc:
	mov.l @(loc_8c05b9ac,PC),r3
	mov 0x03,r6
	jmp @r3
	mov 0x0A,r5

;==============================================
loc_8c05b904:
	rts
	nop

;==============================================
loc_8c05b908:
	mov 0x03,r3
	mov.w @(loc_8c05b9a0,PC),r0
	cmp/gt r3,r5
	bf.s loc_8c05b916
	mov.l @(r0,r4),r6
	rts
	mov 0x00,r0

loc_8c05b916:
	mov.w @(loc_8c05b9a2,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c05b942
	mov.w @(loc_8c05b9a4,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c05b942
	mov.w @(loc_8c05b9a2,PC),r0
	mov.b @(r0,r6),r2
	tst r2,r2
	bf loc_8c05b93a
	mov.w @(loc_8c05b9a6,PC),r0
	mov.b @(r0,r6),r0
	extu.b r0,r0
	cmp/eq 0x0E,r0
	bf loc_8c05b942

loc_8c05b93a:
	mov.l @(loc_8c05b9ac,PC),r2
	mov 0x03,r6
	jmp @r2
	mov 0x0B,r5

loc_8c05b942:
	mov.l @(loc_8c05b9a8,PC),r3
	jmp @r3
	mov 0x0B,r5

loc_8c05b948:
	rts
	nop

;==============================================
loc_8c05b94c:
	mov 0x03,r3
	mov.w @(loc_8c05b9a0,PC),r0
	cmp/gt r3,r5
	bf.s loc_8c05b95a
	mov.l @(r0,r4),r6
	rts
	mov 0x00,r0

loc_8c05b95a:
	mov.w @(loc_8c05b9a2,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c05b97e
	mov.w @(loc_8c05b9a4,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c05b97e
	mov.w @(loc_8c05b9a6,PC),r0
	mov.b @(r0,r6),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c05b97e
	mov.l @(loc_8c05b9ac,PC),r2
	mov 0x03,r6
	jmp @r2
	mov 0x0C,r5

loc_8c05b97e:
	mov.l @(loc_8c05b9a8,PC),r3
	jmp @r3
	mov 0x0C,r5

loc_8c05b984:
	rts
	nop

;==============================================
loc_8c05b988:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x03,r3
	cmp/gt r3,r5
	bf.s loc_8c05b9b0
	mov r4,r14
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05b9a0:
	#data 0x020c
loc_8c05b9a2:
	#data 0x0201
loc_8c05b9a4:
	#data 0x01f9
loc_8c05b9a6:
	#data 0x01d0
	#align4
loc_8c05b9a8:
	#data loc_8c05c282
loc_8c05b9ac:
	#data loc_8c05c214

;==============================================
loc_8c05b9b0:
	mov.w @(loc_8c05baa8,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c05ba50
	mov.w @(loc_8c05baaa,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c05ba50
	mov.l @(loc_8c05babc,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt.s loc_8c05ba50
	mov.l r0,@r15
	mov.w @(loc_8c05baac,PC),r0
	mov.l @r15,r3
	mov.l @(r0,r14),r2
	cmp/eq r2,r3
	bf loc_8c05b9f8
	mov.w @(loc_8c05bab0,PC),r3
	mov.w @(loc_8c05baae,PC),r1
	mov.l @r15,r0
	add r14,r3
	mov.b @r3,r3
	mov.b @(r0,r1),r0
	extu.b r3,r3
	extu.b r0,r0
	and 0x7F,r0
	cmp/eq r3,r0
	bf loc_8c05b9f8
	mov 0x01,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c05b9f8:
	mov.l @r15,r0
	mov.b @(0x3,r0),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c05ba2c
	mov.l @r15,r0
	mov.b @(0x3,r0),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt loc_8c05ba2c
	mov.l @r15,r3
	mov.b @(0x3,r3),r0
	tst r0,r0
	bf loc_8c05ba50
	mov.w @(loc_8c05bab2,PC),r1
	mov.l @r15,r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x14,r0
	bt loc_8c05ba2c
	mov.w @(loc_8c05bab2,PC),r2
	mov.l @r15,r0
	mov.b @(r0,r2),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c05ba50

loc_8c05ba2c:
	mov.w @(loc_8c05baac,PC),r0
	mov 0x0D,r5
	mov.l @r15,r2
	mov r14,r4
	mov.w @(loc_8c05baae,PC),r1
	mov 0x03,r6
	mov.l r2,@(r0,r14)
	mov.l @r15,r0
	mov.w @(loc_8c05bab0,PC),r2
	mov.b @(r0,r1),r0
	add r14,r2
	and 0x7F,r0
	mov.b r0,@r2
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c05bac0,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c05ba50:
	mov.w @(loc_8c05baac,PC),r0
	mov 0x00,r2
	mov.w @(loc_8c05bab4,PC),r3
	mov r14,r4
	mov.l r2,@(r0,r14)
	add 0xE8,r0
	mov 0x0D,r5
	mov.b r3,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c05bac4,PC),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c05ba6a:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05ba72:
	mov.w @(loc_8c05bab6,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c05baa4
	mov.b @(r0,r4),r0
	tst 0x02,r0
	bf loc_8c05baa4
	mov.w @(loc_8c05bab8,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8c05baa4
	mov.w @(loc_8c05bab6,PC),r0
	mov 0x80,r3
	mov.b @(r0,r4),r2
	or r3,r2
	mov.b r2,@(r0,r4)
	mov.w @(loc_8c05bab8,PC),r0
	mov.b @(r0,r4),r0
	tst 0x01,r0
	bt loc_8c05baa4
	mov.w @(loc_8c05bab6,PC),r0
	mov 0x02,r2
	mov.b @(r0,r4),r1
	or r2,r1
	mov.b r1,@(r0,r4)

loc_8c05baa4:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05baa8:
	#data 0x0201
loc_8c05baaa:
	#data 0x01f9
loc_8c05baac:
	#data 0x04b8
loc_8c05baae:
	#data 0x01a1
loc_8c05bab0:
	#data 0x04a0
loc_8c05bab2:
	#data 0x01d0
loc_8c05bab4:
	#data 0x00ff
loc_8c05bab6:
	#data 0x0495
loc_8c05bab8:
	#data 0x019e
	#align4
loc_8c05babc:
	#data loc_8c05c41a
loc_8c05bac0:
	#data loc_8c05c214
loc_8c05bac4:
	#data loc_8c05c282

;==============================================
loc_8c05bac8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	mov 0x01,r12
	mov.l r11,@-r15
	tst r12,r12
	sts.l pr,@-r15
	bt.s loc_8c05bb3c
	mov r12,r4

loc_8c05bade:
	mov.l @(loc_8c05bb84,PC),r4
	mov r13,r0
	nop
	mov.b r0,@(0x5,r4)
	mov.w @(loc_8c05bb7a,PC),r0
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.b @(r0,r14),r2
	exts.b r3,r3
	cmp/ge r2,r3
	bf loc_8c05bb08
	mov.w @(loc_8c05bb7a,PC),r0
	mov 0x1F,r4
	mov.b @(r0,r14),r2
	add 0x01,r0
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r3
	cmp/gt r4,r3
	bt loc_8c05bb0e

loc_8c05bb08:
	mov.b @(0x5,r14),r0
	tst r0,r0
	bt loc_8c05bb12

loc_8c05bb0e:
	bra loc_8c05bb34
	mov r13,r4

loc_8c05bb12:
	mov.w @(loc_8c05bb7c,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c05bb22
	bsr loc_8c05bd88
	mov r14,r4
	bra loc_8c05bb32
	nop

loc_8c05bb22:
	mov.w @(loc_8c05bb7e,PC),r0
	mov.l @(loc_8c05bb88,PC),r11
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r11),r3
	jsr @r3
	mov r14,r4

loc_8c05bb32:
	mov r0,r4

loc_8c05bb34:
	mov r4,r0
	nop
	cmp/eq 0x01,r0
	bt loc_8c05bade

loc_8c05bb3c:
	mov r4,r0
	nop
	cmp/eq 0x00,r0
	bt loc_8c05bb48
	cmp/eq 0x02,r0
	bt loc_8c05bb4c

loc_8c05bb48:
	bra loc_8c05bb4e
	mov r13,r4

loc_8c05bb4c:
	mov r12,r4

loc_8c05bb4e:
	mov r4,r0
	nop
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05bb5e:
	mov.w @(loc_8c05bb80,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c05bb8c
	cmp/eq 0x01,r0
	bt loc_8c05bbae
	cmp/eq 0x02,r0
	bt loc_8c05bbd6
	bra loc_8c05bbe0
	nop

;##############################################
loc_8c05bb7a:
	#data 0x044a
loc_8c05bb7c:
	#data 0x0480
loc_8c05bb7e:
	#data 0x043c
loc_8c05bb80:
	#data 0x043d
	#align4
loc_8c05bb84:
	#data 0x8c2895f0
loc_8c05bb88:
	#data bank15.loc_8c151324

;----------------------------------------------
loc_8c05bb8c:
	mov.w @(loc_8c05bc88,PC),r0
	mov.l @(loc_8c05bc8c,PC),r2
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov.b @r2,r0
	extu.b r0,r0
	tst 0x04,r0
	bt.s loc_8c05bba6
	mov 0x00,r6
	mov.w @(loc_8c05bc8a,PC),r0
	mov 0x08,r1
	mov.b r1,@(r0,r14)

loc_8c05bba6:
	mov.l @(loc_8c05bc90,PC),r3
	mov r6,r5
	jsr @r3
	mov r14,r4

loc_8c05bbae:
	mov.l @(loc_8c05bc8c,PC),r3
	mov.b @r3,r0
	extu.b r0,r0
	tst 0x04,r0
	bf loc_8c05bbcc
	mov.l @(loc_8c05bc94,PC),r1
	jsr @r1
	mov r14,r4
	tst r0,r0
	bt loc_8c05bbcc
	mov.l @(loc_8c05bc90,PC),r2
	mov 0x00,r6
	mov r6,r5
	jsr @r2
	mov r14,r4

loc_8c05bbcc:
	lds.l @r15+,pr
	mov r14,r4
	mov 0x00,r5
	bra loc_8c05bdd0
	mov.l @r15+,r14

loc_8c05bbd6:
	lds.l @r15+,pr
	mov r14,r4
	mov 0x00,r5
	bra loc_8c05be56
	mov.l @r15+,r14

loc_8c05bbe0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05bbe6:
	mov.w @(loc_8c05bc88,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c05bc02
	cmp/eq 0x01,r0
	bt loc_8c05bc14
	cmp/eq 0x02,r0
	bt loc_8c05bc3c
	bra loc_8c05bc46
	nop

loc_8c05bc02:
	mov.w @(loc_8c05bc88,PC),r0
	mov 0x01,r6
	mov.l @(loc_8c05bc90,PC),r2
	mov r6,r5
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	jsr @r2
	mov r14,r4

loc_8c05bc14:
	mov.l @(loc_8c05bc8c,PC),r3
	mov.b @r3,r0
	extu.b r0,r0
	tst 0x04,r0
	bf loc_8c05bc32
	mov.l @(loc_8c05bc94,PC),r1
	jsr @r1
	mov r14,r4
	tst r0,r0
	bt loc_8c05bc32
	mov.l @(loc_8c05bc90,PC),r2
	mov 0x00,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4

loc_8c05bc32:
	lds.l @r15+,pr
	mov r14,r4
	mov 0x01,r5
	bra loc_8c05bdd0
	mov.l @r15+,r14

loc_8c05bc3c:
	lds.l @r15+,pr
	mov r14,r4
	mov 0x01,r5
	bra loc_8c05be56
	mov.l @r15+,r14

loc_8c05bc46:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05bc4c:
	mov.w @(loc_8c05bc88,PC),r0 ; 0x043d
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c05bc68
	cmp/eq 0x01,r0
	bt loc_8c05bc7e
	cmp/eq 0x02,r0
	bt loc_8c05bc98
	bra loc_8c05bca2
	nop

loc_8c05bc68:
	mov.w @(loc_8c05bc88,PC),r0 ; 0x043d
	mov 0x02,r6
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b @(r0,r14),r5
	mov.l @(loc_8c05bc90,PC),r3 ;loc_8c05c02e
	extu.b r5,r5
	jsr @r3
	mov r14,r4

loc_8c05bc7e:
	lds.l @r15+,pr
	mov r14,r4
	mov 0x02,r5
	bra loc_8c05bdd0
	mov.l @r15+,r14

;##############################################
loc_8c05bc88:
	#data 0x043d
loc_8c05bc8a:
	#data 0x045c
	#align4
loc_8c05bc8c:
	#data 0x8c2895f1
loc_8c05bc90:
	#data loc_8c05c02e
loc_8c05bc94:
	#data loc_8c05c2d4

;----------------------------------------------
loc_8c05bc98:
	lds.l @r15+,pr
	mov r14,r4
	mov 0x02,r5
	bra loc_8c05be56
	mov.l @r15+,r14

loc_8c05bca2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
;
;==============================================
loc_8c05bca8:
	mov.w @(loc_8c05bd7c,PC),r0 ; 0x0482
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c05bcec

;Byte 05 Opponent State check
	mov.w @(loc_8c05bd7e,PC),r0
	mov.l @(r0,r14),r4
	mov.b @(0x5,r4),r0 ; Opponent State
	tst r0,r0
	bf loc_8c05bcec

	mov.w @(loc_8c05bd80,PC),r0 ; 0x01d0
	mov 0x01,r3
	mov.b @(r0,r4),r2
	extu.b r2,r2
	cmp/gt r3,r2
	bf loc_8c05bcdc
	mov.b @(r0,r14),r4
	mov 0x05,r3
	extu.b r4,r4
	cmp/ge r3,r4
	bf loc_8c05bcec
	mov 0x09,r1
	cmp/gt r1,r4
	bt loc_8c05bcec

loc_8c05bcdc:
	bsr loc_8c05b608
	mov r14,r4
	bsr loc_8c05ba72
	mov r14,r4
	lds.l @r15+,pr
	mov 0x01,r0
	rts
	mov.l @r15+,r14

loc_8c05bcec:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c05bc4c
	mov.l @r15+,r14
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05bcfa:
	mov.w @(loc_8c05bd7c,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c05bd3e
	mov.w @(loc_8c05bd7e,PC),r0
	mov.l @(r0,r14),r4
	mov.b @(0x5,r4),r0
	tst r0,r0
	bf loc_8c05bd3e
	mov.w @(loc_8c05bd80,PC),r0
	mov 0x01,r3
	mov.b @(r0,r4),r2
	extu.b r2,r2
	cmp/gt r3,r2
	bf loc_8c05bd2e
	mov.b @(r0,r14),r4
	mov 0x05,r3
	extu.b r4,r4
	cmp/ge r3,r4
	bf loc_8c05bd3e
	mov 0x09,r1
	cmp/gt r1,r4
	bt loc_8c05bd3e

loc_8c05bd2e:
	bsr loc_8c05b608
	mov r14,r4
	bsr loc_8c05ba72
	mov r14,r4
	lds.l @r15+,pr
	mov 0x01,r0
	rts
	mov.l @r15+,r14

loc_8c05bd3e:
	mov.w @(loc_8c05bd82,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c05bd54
	cmp/eq 0x01,r0
	bt loc_8c05bd62
	cmp/eq 0x02,r0
	bt loc_8c05bd6c
	bra loc_8c05bd76
	nop

loc_8c05bd54:
	mov.w @(loc_8c05bd82,PC),r0
	mov.l @(loc_8c05bd84,PC),r2
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	jsr @r2
	mov r14,r4

loc_8c05bd62:
	lds.l @r15+,pr
	mov r14,r4
	mov 0x02,r5
	bra loc_8c05bdd0
	mov.l @r15+,r14

loc_8c05bd6c:
	lds.l @r15+,pr
	mov r14,r4
	mov 0x02,r5
	bra loc_8c05be56
	mov.l @r15+,r14

loc_8c05bd76:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05bd7c:
	#data 0x0482
loc_8c05bd7e:
	#data 0x020c
loc_8c05bd80:
	#data 0x01d0
loc_8c05bd82:
	#data 0x043d
	#align4
loc_8c05bd84:
	#data loc_8c05c0d4

;==============================================
loc_8c05bd88:
	mov.w @(loc_8c05be6a,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c05bd9e
	cmp/eq 0x01,r0
	bt loc_8c05bdc4
	cmp/eq 0x02,r0
	bt loc_8c05bdc8
	bra loc_8c05bdcc
	nop

loc_8c05bd9e:
	mov.w @(loc_8c05be6a,PC),r0
	mov.b @(r0,r4),r3
	add 0x01,r3
	mov.b r3,@(r0,r4)
	mov.w @(loc_8c05be6c,PC),r0
	mov.l @(r0,r4),r5
	mov.w @(loc_8c05be6e,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r5),r3
	mov.w @(loc_8c05be70,PC),r0
	add r5,r3
	mov.l r3,@(r0,r4)
	add 0x04,r0
	mov 0x00,r5
	mov.w r5,@(r0,r4)
	add 0x03,r0
	mov.b r5,@(r0,r4)

loc_8c05bdc4:
	bra loc_8c05bdd0
	mov 0x03,r5

loc_8c05bdc8:
	bra loc_8c05be56
	mov 0x03,r5

loc_8c05bdcc:
	rts
	nop

;==============================================
loc_8c05bdd0:
	mov.w @(loc_8c05be74,PC),r0
	shll2 r5
	mov.l r14,@-r15
	shll r5
	mov.w @(loc_8c05be72,PC),r14
	mov.b @(r0,r4),r3
	add r4,r14
	cmp/pl r3
	add r5,r14
	bf.s loc_8c05bdfa
	mov 0x00,r5
	mov.w @(loc_8c05be76,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c05bdfa
	mov.w @(loc_8c05be78,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c05be1e

loc_8c05bdfa:
	mov.w @(loc_8c05be74,PC),r0
	mov.b @(r0,r4),r3
	cmp/pz r3
	bt loc_8c05be2e
	mov.w @(loc_8c05be76,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x0D,r0
	bt loc_8c05be2e
	mov.w @(loc_8c05be78,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c05be1e
	mov.w @(loc_8c05be7a,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c05be2e

loc_8c05be1e:
	mov.w @(loc_8c05be74,PC),r0
	mov.l @(loc_8c05be80,PC),r3
	mov.b r5,@(r0,r4)
	add 0xFF,r0
	mov.b r5,@(r0,r4)
	mov r14,r5
	jmp @r3
	mov.l @r15+,r14

loc_8c05be2e:
	mov.w @(loc_8c05be7c,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8c05be4e
	mov.w @(loc_8c05be7e,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c05be4e
	mov.w @(loc_8c05be7c,PC),r0
	mov.l @(loc_8c05be84,PC),r3
	mov.b r5,@(r0,r4)
	add 0xFE,r0
	mov.b r5,@(r0,r4)
	mov r14,r5
	jmp @r3
	mov.l @r15+,r14

loc_8c05be4e:
	mov.l @(loc_8c05be88,PC),r2
	mov r14,r5
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c05be56:
	mov.l r14,@-r15
	shll2 r5
	mov.w @(loc_8c05be72,PC),r14
	shll r5
	mov.l @(loc_8c05be8c,PC),r3
	add r4,r14
	add r5,r14
	mov r14,r5
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05be6a:
	#data 0x043d
loc_8c05be6c:
	#data 0x0198
loc_8c05be6e:
	#data 0x047e
loc_8c05be70:
	#data 0x0478
loc_8c05be72:
	#data 0x0460
loc_8c05be74:
	#data 0x0496
loc_8c05be76:
	#data 0x01d0
loc_8c05be78:
	#data 0x01f9
loc_8c05be7a:
	#data 0x01fc
loc_8c05be7c:
	#data 0x0497
loc_8c05be7e:
	#data 0x0201
	#align4
loc_8c05be80:
	#data loc_8c05fe88
loc_8c05be84:
	#data loc_8c05ff52
loc_8c05be88:
	#data loc_8c05cd0c
loc_8c05be8c:
	#data loc_8c05cd22

;==============================================
loc_8c05be90:
	mov.l @(loc_8c05bfb0,PC),r3
	mov 0x2E,r0
	mov.l @r3,r5
	mov.b @(r0,r5),r2
	tst r2,r2
	bf loc_8c05beac
	mov.w @(loc_8c05bfa0,PC),r0
	mov 0x01,r1
	mov.b @(r0,r5),r2
	mov.b @(0x2,r4),r0
	extu.b r0,r0
	shad r0,r1
	tst r1,r2
	bf loc_8c05beb8

loc_8c05beac:
	mov.w @(loc_8c05bfa2,PC),r0
	mov 0x00,r5
	mov.b r5,@(r0,r4)
	add 0x5E,r0
	bra loc_8c05bebc
	mov.b r5,@(r0,r4)

loc_8c05beb8:
	rts
	nop

loc_8c05bebc:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8c05bfa4,PC),r0
	mov 0x00,r4
	mov.w @(loc_8c05bfa6,PC),r3
	mov 0xFF,r2
	sts.l pr,@-r15
	mov.b r4,@(r0,r14)
	add 0x02,r0
	mov.b r4,@(r0,r14)
	add 0x45,r0
	mov.b r4,@(r0,r14)
	add 0xD9,r0
	mov.b r4,@(r0,r14)
	add 0x38,r0
	mov.b r4,@(r0,r14)
	add 0x11,r0
	mov.b r4,@(r0,r14)
	add 0xFB,r0
	mov.b r3,@(r0,r14)
	add 0x08,r0
	mov r4,r5
	mov r4,r6
	mov.b r2,@(r0,r14)
	bsr loc_8c05c02e
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8c05bef6:
	mov.w @(loc_8c05bfa8,PC),r0
	mov 0x00,r5
	mov.b r5,@(r0,r4)
	add 0x46,r0
	mov.b r5,@(r0,r4)
	add 0x0C,r0
	mov.l r5,@(r0,r4)
	add 0xE5,r0
	mov.b r5,@(r0,r4)
	add 0x01,r0
	mov.b r5,@(r0,r4)
	add 0x01,r0
	mov.b r5,@(r0,r4)
	mov.w @(loc_8c05bfaa,PC),r0
	mov.b r5,@(r0,r4)
	mov.w @(loc_8c05bfac,PC),r0
	mov.b r5,@(r0,r4)
	add 0xFE,r0
	mov.b r5,@(r0,r4)
	add 0x26,r0
	mov.b r5,@(r0,r4)
	add 0xB9,r0
	mov.b r5,@(r0,r4)
	add 0x48,r0
	mov.b r5,@(r0,r4)
	add 0x9F,r0
	mov.b r5,@(r0,r4)
	add 0x01,r0
	mov.b r5,@(r0,r4)
	add 0xFB,r0
	mov.w r5,@(r0,r4)
	add 0xFF,r0
	rts
	mov.b r5,@(r0,r4)

;==============================================
loc_8c05bf3a:
	mov.l @(loc_8c05bfb4,PC),r0
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r5),r3
	extu.b r3,r0
	cmp/eq 0x00,r0
	bt.s loc_8c05bf56
	mov r0,r3
	cmp/eq 0x01,r0
	bt loc_8c05bf7e
	cmp/eq 0x02,r0
	bt loc_8c05bf90
	bra loc_8c05bfc6
	nop

loc_8c05bf56:
	mov.w @(loc_8c05bfae,PC),r2
	add r2,r4
	mov r6,r0
	nop
	shll2 r0
	mov.l @(r0,r4),r4
	mov r6,r0
	nop
	cmp/eq 0x02,r0
	bf.s loc_8c05bf78
	mov r4,r7
	add 0xFE,r5
	mov r5,r3
	shll r5
	add r3,r5
	shll2 r5
	add r5,r4

loc_8c05bf78:
	mov.l @r4,r14
	bra loc_8c05bfc6
	add r7,r14

loc_8c05bf7e:
	mov r6,r0
	nop
	cmp/eq 0x02,r0
	bf loc_8c05bf98
	mov.l @(loc_8c05bfb8,PC),r0
	mov r5,r14
	add 0xFD,r14
	bra loc_8c05bfc4
	shll2 r14

loc_8c05bf90:
	mov r6,r0
	nop
	cmp/eq 0x02,r0
	bt loc_8c05bfbc

loc_8c05bf98:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05bfa0:
	#data 0x0084
loc_8c05bfa2:
	#data 0x044b
loc_8c05bfa4:
	#data 0x043c
loc_8c05bfa6:
	#data 0x00ff
loc_8c05bfa8:
	#data 0x045e
loc_8c05bfaa:
	#data 0x0201
loc_8c05bfac:
	#data 0x0482
loc_8c05bfae:
	#data 0x0188
	#align4
loc_8c05bfb0:
	#data work.GameGlobalPointer
loc_8c05bfb4:
	#data bank15.loc_8c151360
loc_8c05bfb8:
	#data bank15.loc_8c151b34

;==============================================
loc_8c05bfbc:
	mov r5,r14
	mov.l @(loc_8c05c0c4,PC),r0
	add 0xE3,r14
	shll2 r14
loc_8c05bfc4:
	mov.l @(r0,r14),r14

loc_8c05bfc6:
	mov.l @(loc_8c05c0c8,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c05c0cc,PC),r2
	and 0x1F,r0
	mov.w @r2,r3
	add r3,r14
	mov.b @r14,r3
	extu.b r3,r3
	cmp/hs r3,r0
	movt r0
	xor 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05bfe4:
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c05c0d0,PC),r4
	mov r5,r0
	nop
	shll2 r0
	mov.l @(r0,r4),r3
	mov.l r3,@r15
	mov r5,r0
	nop
	add 0x01,r0
	shll2 r0
	mov.l @(r0,r4),r2
	mov.l @(loc_8c05c0cc,PC),r0
	mov.l r2,@(0x4,r15)
	mov.w @r0,r1
	add r1,r3
	mov.b @r3,r9
	mov.l @(loc_8c05c0c8,PC),r3
	jsr @r3
	mov r2,r8
	and 0x1F,r0
	mov r9,r4
	mov.b @(r0,r8),r3
	add r3,r4
	cmp/pz r4
	bt loc_8c05c020
	mov 0x00,r4

loc_8c05c020:
	mov r4,r0
	nop
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts
	mov.l @r15+,r9

;==============================================
loc_8c05c02e:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r4,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov r6,r10
	mov.w @(loc_8c05c0bc,PC),r4
	sts.l pr,@-r15
	add r12,r4
	mov r6,r0
	nop
	shll2 r0
	mov.l @(r0,r4),r14
	mov r6,r0
	nop
	cmp/eq 0x02,r0
	bf.s loc_8c05c064
	mov r14,r13
	add 0xFE,r5
	mov r5,r3
	shll r5
	add r3,r5
	shll2 r5
	add r5,r14
	bra loc_8c05c072
	mov.l @(0x4,r14),r11

loc_8c05c064:
	mov.w @(loc_8c05c0be,PC),r0
	mov.l @(0x4,r14),r4
	mov.b @(r0,r12),r0
	add r13,r4
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r4),r11

loc_8c05c072:
	mov.l @(loc_8c05c0c8,PC),r3
	jsr @r3
	add r13,r11
	mov.w @(loc_8c05c0c0,PC),r4
	and 0x1F,r0
	shll2 r10
	mov.l @(0x8,r14),r6
	mov.b @(r0,r11),r2
	add r12,r4
	shll r10
	add r10,r4
	extu.b r2,r5
	add r13,r6
	mov r5,r0
	nop
	shll2 r0
	mov.l @(r0,r6),r3
	mov 0x00,r6
	add r13,r3
	mov.l r3,@r4
	mov r6,r0
	nop
	mov.w r0,@(0x4,r4)
	mov r5,r0
	nop
	mov.b r0,@(0x6,r4)
	mov r6,r0
	nop
	mov.b r0,@(0x7,r4)
	mov r12,r4
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c05bef6
	mov.l @r15+,r14

;##############################################
loc_8c05c0bc:
	#data 0x0188
loc_8c05c0be:
	#data 0x045c
loc_8c05c0c0:
	#data 0x0460
	#align4
loc_8c05c0c4:
	#data bank15.loc_8c151bbc
loc_8c05c0c8:
	#data bank03.loc_8c03319e
loc_8c05c0cc:
	#data 0x8c289732
loc_8c05c0d0:
	#data bank15.loc_8c151dc8

;----------------------------------------------
loc_8c05c0d4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(loc_8c05c1ee,PC),r0
	mov r4,r14
	mov 0x1C,r2
	mov.l @(r0,r14),r4
	mov.w @(loc_8c05c1f0,PC),r0
	mov.l @(r0,r4),r5
	mov.w @(loc_8c05c1f2,PC),r0
	mov.b @(r0,r14),r3
	mov.w @(loc_8c05c1f4,PC),r0
	extu.b r3,r3
	mulu.w r2,r3
	mov.l @(r0,r14),r13
	mov 0x19,r0
	mov r13,r4
	sts macl,r3
	add r3,r5
	mov.b @(r0,r5),r3
	extu.b r3,r3
	mov r3,r1
	shll r3
	add r1,r3
	shll2 r3
	add r3,r4
	mov.l @(0x8,r4),r3
	add r13,r3
	mov.l r3,@(0x4,r15)
	mov.l @(0x4,r4),r1
	mov.l @(loc_8c05c208,PC),r3
	add r13,r1
	mov.l r1,@r15
	jsr @r3
	mov r1,r8
	and 0x1F,r0
	mov.b @(r0,r8),r3
	mov 0x00,r5
	mov.l @(0x4,r15),r0
	extu.b r3,r4
	mov r4,r2
	shll2 r2
	mov.l @(r0,r2),r3
	mov.w @(loc_8c05c1f6,PC),r0
	add r13,r3
	mov.l r3,@(r0,r14)
	add 0x04,r0
	mov.w r5,@(r0,r14)
	add 0x02,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov r14,r4
	mov.b r5,@(r0,r14)
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r13
	bra loc_8c05bef6
	mov.l @r15+,r14

;==============================================
loc_8c05c14e:
	mov.l r13,@-r15
	add 0xFC,r15
	mov.w @(loc_8c05c1f8,PC),r0
	mov.l @(r0,r4),r5
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fmov @(r0,r5),fr5
	fsub fr3,fr5
	fldi0 fr3
	fcmp/gt fr5,fr3
	bf loc_8c05c166
	fneg fr5

loc_8c05c166:
	mov.w @(loc_8c05c1fa,PC),r3
	mov 0x03,r13
	mov.l @(loc_8c05c20c,PC),r5
	mov 0xFF,r7
	mov.w @(loc_8c05c1fc,PC),r1
	mov.l r5,@r15
	mov.b @(0x2,r4),r0
	extu.b r0,r0
	xor 0x01,r0
	mul.l r3,r0
	sts macl,r0
	add r0,r5
	bra loc_8c05c1a8
	mov 0x00,r6

loc_8c05c182:
	mov.b @r5,r3
	tst r3,r3
	bt loc_8c05c1a4
	mov 0x34,r0
	fmov @(r0,r5),fr4
	fmov @(r0,r4),fr3
	fsub fr3,fr4
	fldi0 fr3
	fcmp/gt fr4,fr3
	bf loc_8c05c198
	fneg fr4

loc_8c05c198:
	fcmp/gt fr5,fr4
	bt loc_8c05c1a4
	mov.w @(loc_8c05c1fe,PC),r0
	fmov fr4,fr5
	mov.b @(r0,r5),r7
	extu.b r7,r7

loc_8c05c1a4:
	add r1,r5
	add 0x01,r6

loc_8c05c1a8:
	cmp/ge r13,r6
	bf loc_8c05c182
	mov r7,r0
	nop
	cmp/eq 0xFF,r0
	bt loc_8c05c1be
	mov.w @(loc_8c05c1fa,PC),r5
	mov.l @r15,r3
	mul.l r5,r7
	sts macl,r5
	add r3,r5

loc_8c05c1be:
	mov.w @(loc_8c05c200,PC),r0
	fmov fr5,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r5),fr2
	fmov @(r0,r4),fr3
	mov.w @(loc_8c05c202,PC),r0
	fsub fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(loc_8c05c204,PC),r0
	mov.b @(r0,r5),r3
	mova @(0x3C,PC),r0
	fmov @r0,fr2
	extu.b r3,r3
	mov.w @(loc_8c05c200,PC),r0
	lds r3,fpul
	fmov @(r0,r4),fr1
	add 0xFC,r0
	float fpul,fr3
	fmul fr2,fr3
	fsub fr3,fr1
	fmov fr1,@(r0,r4)
	add 0x04,r15
	rts
	mov.l @r15+,r13

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05c1ee:
	#data 0x04b8
loc_8c05c1f0:
	#data 0x0174
loc_8c05c1f2:
	#data 0x04a0
loc_8c05c1f4:
	#data 0x0194
loc_8c05c1f6:
	#data 0x0470
loc_8c05c1f8:
	#data 0x020c
loc_8c05c1fa:
	#data 0x05a4
loc_8c05c1fc:
	#data 0x0b48
loc_8c05c1fe:
	#data 0x01a4
loc_8c05c200:
	#data 0x0488
loc_8c05c202:
	#data 0x048c
loc_8c05c204:
	#data 0x013e
	#align4
loc_8c05c208:
	#data bank03.loc_8c03319e
loc_8c05c20c:
	#data 0x8c268340
loc_8c05c210:
	#data 0x3fd55555

;==============================================
loc_8c05c214:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c05c296,PC),r0
	mov r4,r14
	mov r5,r13
	mov.l r6,@r15
	mov.b @(r0,r14),r3
	extu.b r3,r3
	cmp/eq r13,r3
	bt loc_8c05c25a
	mov.w @(loc_8c05c298,PC),r0
	mov 0x01,r4
	mov r4,r2
	shad r13,r2
	mov.l @(r0,r14),r3
	tst r3,r2
	bf loc_8c05c25a
	mov.l @(r0,r14),r3
	mov r4,r2
	shad r13,r2
	or r2,r3
	mov.l r3,@(r0,r14)
	add 0x8C,r0
	mov.b @(r0,r14),r2
	extu.b r2,r2
	cmp/gt r4,r2
	bt loc_8c05c25e
	mov r13,r5
	mov 0x02,r6
	bsr loc_8c05bf3a
	mov r14,r4
	tst r0,r0
	bf loc_8c05c25e

loc_8c05c25a:
	bra loc_8c05c278
	mov 0x01,r0

loc_8c05c25e:
	mov.w @(loc_8c05c296,PC),r0
	mov 0x00,r4
	mov.b r13,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	bsr loc_8c05bef6
	mov r14,r4
	mov.w @(loc_8c05c29a,PC),r0
	mov.l @r15,r2
	mov.b r2,@(r0,r14)
	mov 0x00,r0

loc_8c05c278:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05c282:
	mov.w @(loc_8c05c298,PC),r0
	mov 0x01,r6
	mov r6,r3
	shad r5,r3
	mov.l @(r0,r4),r2
	not r3,r3
	and r3,r2
	mov.l r2,@(r0,r4)
	rts
	mov r6,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05c296:
	#data 0x043c
loc_8c05c298:
	#data 0x04b0
loc_8c05c29a:
	#data 0x0494

;==============================================
loc_8c05c29c:
	mov.b @(0x5,r4),r0
	tst r0,r0
	bt loc_8c05c2a6
	rts
	mov 0x00,r0

loc_8c05c2a6:
	mov.w @(loc_8c05c37a,PC),r0
	mov 0x01,r3
	mov.l @(loc_8c05c388,PC),r1
	shad r5,r3
	mov.b @(r0,r4),r0
	extu.b r0,r0
	shll r0
	mov.w @(r0,r1),r0
	extu.w r0,r0
	and r3,r0
	rts
	nop

;==============================================
loc_8c05c2be:
	mov.w @(loc_8c05c37c,PC),r0
	mov 0x01,r3
	mov.l @(loc_8c05c388,PC),r1
	shad r5,r3
	mov.b @(r0,r4),r0
	extu.b r0,r0
	shll r0
	mov.w @(r0,r1),r0
	extu.w r0,r0
	rts
	and r3,r0

;==============================================
loc_8c05c2d4:
	mov.w @(loc_8c05c37e,PC),r0
	sts.l pr,@-r15
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c05c342
	mov.l @(loc_8c05c38c,PC),r2
	mov 0x2E,r0
	mov.l @r2,r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bf loc_8c05c342
	mov.w @(loc_8c05c380,PC),r0
	mov 0x00,r6
	mov.l @(loc_8c05c394,PC),r3
	mov.w @(r0,r4),r5
	mov.l @(loc_8c05c390,PC),r0
	shar r5
	mov.b @r3,r7
	shar r5
	mov.l @(loc_8c05c398,PC),r2
	shar r5
	mov r7,r1
	mov.b @(r0,r5),r5
	extu.b r5,r5
	jsr @r2
	mov 0x0A,r0
	mov 0x04,r1
	cmp/gt r1,r0
	bf.s loc_8c05c312
	mov r7,r1
	mov 0x08,r6

loc_8c05c312:
	mov.l @(loc_8c05c39c,PC),r3
	jsr @r3
	mov 0x0A,r0
	shll2 r0
	mov.l @(loc_8c05c3a0,PC),r1
	shll2 r0
	or r6,r0
	shar r0
	shar r0
	shar r0
	mov.b @(r0,r1),r6
	extu.b r6,r6
	cmp/ge r6,r5
	bt loc_8c05c330
	mov r6,r5

loc_8c05c330:
	mov.w @(loc_8c05c382,PC),r0
	mov.b @(r0,r4),r2
	extu.b r2,r2
	cmp/eq r5,r2
	bt loc_8c05c342
	mov.b r5,@(r0,r4)
	lds.l @r15+,pr
	rts
	mov 0x01,r0

loc_8c05c342:
	mov 0x00,r0
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c05c34a:
	mov.l r14,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	add 0xFC,r15
	mov.b @(0x2,r4),r0
	mov 0x01,r6
	mov.l @(loc_8c05c3a4,PC),r1
	mov 0x7F,r9
	extu.b r0,r0
	mov r9,r10
	xor r6,r0
	mov.w @(loc_8c05c386,PC),r11
	mov.b @(r0,r1),r3
	mov 0x00,r5
	mov.w @(loc_8c05c384,PC),r8
	mov r5,r14
	add 0x01,r10
	mov r14,r12
	mov.l r3,@r15
	bra loc_8c05c400
	mov r14,r7

;##############################################
loc_8c05c37a:
	#data 0x01d0
loc_8c05c37c:
	#data 0x01d1
loc_8c05c37e:
	#data 0x0482
loc_8c05c380:
	#data 0x0420
loc_8c05c382:
	#data 0x045c
loc_8c05c384:
	#data 0x0178
loc_8c05c386:
	#data 0x00e0
	#align4
loc_8c05c388:
	#data bank15.loc_8c151380
loc_8c05c38c:
	#data work.GameGlobalPointer
loc_8c05c390:
	#data bank15.loc_8c1513c6
loc_8c05c394:
	#data 0x8c289676
loc_8c05c398:
	#data bank12.loc_8c1292d4
loc_8c05c39c:
	#data bank12.loc_8c129128
loc_8c05c3a0:
	#data bank15.loc_8c1513e6
loc_8c05c3a4:
	#data 0x8c287dde

;----------------------------------------------
loc_8c05c3a8:
	mov.b @(0x2,r4),r0
	mov.l @(loc_8c05c458,PC),r5
	extu.b r0,r0
	xor r6,r0
	mul.l r8,r0
	sts macl,r0
	add r0,r5
	add r7,r5
	mov.l @r5,r5
	mov.b @(0x3,r5),r0
	extu.b r0,r1
	tst r1,r1
	bt loc_8c05c3d2
	mov r1,r0
	nop
	cmp/eq 0x01,r0
	bt loc_8c05c3d2
	mov r1,r0
	nop
	cmp/eq 0x03,r0
	bf loc_8c05c3fc

loc_8c05c3d2:
	mov.w @(loc_8c05c452,PC),r0
	mov.b @(r0,r5),r3
	extu.b r3,r3
	and r11,r3
	cmp/ge r10,r3
	bf loc_8c05c3fc
	mov.w @(loc_8c05c454,PC),r0
	mov 0x1C,r2
	or r6,r14
	mov.l @(r0,r5),r1
	add 0x2D,r0
	mov.b @(r0,r5),r3
	extu.b r3,r3
	and r9,r3
	mul.l r2,r3
	sts macl,r3
	add r3,r1
	mov.b @(0x2,r1),r0
	extu.b r0,r0
	and 0x0F,r0
	or r0,r14

loc_8c05c3fc:
	add 0x04,r7
	add 0x01,r12

loc_8c05c400:
	mov.l @r15,r3
	cmp/ge r3,r12
	bf loc_8c05c3a8
	mov r14,r0
	nop
	add 0x04,r15
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05c41a:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mova @(0x2C,PC),r0
	mov r4,r12
	fmov @r0,fr3
	mov 0x00,r3
	mov.w @(loc_8c05c456,PC),r0
	mov 0x01,r11
	mov.l @(loc_8c05c460,PC),r1
	mov 0x00,r8
	fmov fr3,@(r0,r12)
	mov r8,r10
	mov.l r3,@(0x8,r15)
	mov.b @(0x2,r12),r0
	extu.b r0,r0
	xor r11,r0
	mov.b @(r0,r1),r3
	mov.l r3,@r15
	bra loc_8c05c4f4
	fldi0 fr15

;##############################################
loc_8c05c452:
	#data 0x014a
loc_8c05c454:
	#data 0x0174
loc_8c05c456:
	#data 0x0490
loc_8c05c458:
	#data 0x8c287aec
loc_8c05c45c:
	#data 0x475553aa
loc_8c05c460:
	#data 0x8c287dde

;----------------------------------------------
loc_8c05c464:
	mov.b @(0x2,r12),r0
	mov.w @(loc_8c05c520,PC),r3
	extu.b r0,r0
	mov.l @(loc_8c05c52c,PC),r14
	xor r11,r0
	mul.l r3,r0
	sts macl,r0
	add r0,r14
	add r10,r14
	mov.l @r14,r14
	mov.b @(0x3,r14),r0
	extu.b r0,r4
	tst r4,r4
	bt loc_8c05c490
	mov r4,r0
	nop
	cmp/eq 0x01,r0
	bt loc_8c05c490
	mov r4,r0
	nop
	cmp/eq 0x03,r0
	bf loc_8c05c4f0

loc_8c05c490:
	mov.w @(loc_8c05c522,PC),r0
	mov.w @(loc_8c05c524,PC),r3
	mov.b @(r0,r14),r0
	extu.b r0,r0
	and 0xE0,r0
	cmp/ge r3,r0
	bf loc_8c05c4f0
	mov.w @(loc_8c05c526,PC),r0
	mov 0x1C,r2
	mov r14,r5
	mov.l @(r0,r14),r13
	add 0x2D,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	and 0x7F,r0
	mul.l r2,r0
	sts macl,r0
	add r0,r13
	mov 0x10,r0
	mov r13,r6
	mov.b @(r0,r13),r7
	extu.b r7,r7
	bsr loc_8c05c530
	mov r12,r4
	mov r0,r9
	mov 0x11,r0
	mov.b @(r0,r13),r7
	mov r14,r5
	mov r13,r6
	extu.b r7,r7
	bsr loc_8c05c530
	mov r12,r4
	or r0,r9
	mov r9,r0
	nop
	cmp/eq 0x01,r0
	bt loc_8c05c4e6
	cmp/eq 0x03,r0
	bt loc_8c05c4e6
	cmp/eq 0x02,r0
	bt loc_8c05c4ec
	bra loc_8c05c4f0
	nop

loc_8c05c4e6:
	mov.w @(loc_8c05c528,PC),r0
	bra loc_8c05c506
	fmov fr15,@(r0,r12)

loc_8c05c4ec:
	mov.l r14,@(0x4,r15)
	mov.l r11,@(0x8,r15)

loc_8c05c4f0:
	add 0x04,r10
	add 0x01,r8

loc_8c05c4f4:
	mov.l @r15,r3
	cmp/ge r3,r8
	bf loc_8c05c464
	mov.l @(0x8,r15),r1
	tst r1,r1
	bt loc_8c05c504
	bra loc_8c05c506
	mov.l @(0x4,r15),r14

loc_8c05c504:
	mov 0x00,r14

loc_8c05c506:
	mov r14,r0
	nop
	add 0x0C,r15
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
loc_8c05c520:
	#data 0x0178
loc_8c05c522:
	#data 0x014a
loc_8c05c524:
	#data 0x0080
loc_8c05c526:
	#data 0x0174
loc_8c05c528:
	#data 0x0490
	#align4
loc_8c05c52c:
	#data 0x8c287aec

;==============================================
loc_8c05c530:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	tst r7,r7
	mov r5,r13
	mov r4,r14
	bt.s loc_8c05c5c2
	mov.l r6,@r15
	mov.w @(loc_8c05c646,PC),r0
	shll2 r7
	shll r7
	mov.l @(r0,r13),r4
	add r7,r4
	mov.w @(0x2,r4),r0
	mov.w @r4,r3
	mov 0x01,r4
	sub r0,r3
	lds r3,fpul
	mova @(0xF8,PC),r0
	fmov @r0,fr2
	mov.w @(loc_8c05c648,PC),r0
	float fpul,fr3
	mov.w @(r0,r13),r3
	tst r4,r3
	fmov fr3,fr4
	bt.s loc_8c05c56a
	fmul fr2,fr4
	fneg fr4

loc_8c05c56a:
	mov 0x34,r0
	fmov @(r0,r14),fr5
	fmov @(r0,r13),fr3
	mov.w @(loc_8c05c648,PC),r0
	mov.w @(r0,r14),r3
	tst r4,r3
	bt.s loc_8c05c580
	fadd fr3,fr4
	mov 0x34,r0
	fmov fr4,fr5
	fmov @(r0,r14),fr4

loc_8c05c580:
	fmov fr4,fr3
	fmov fr5,fr4
	fsub fr3,fr4
	fldi0 fr2
	fcmp/gt fr2,fr4
	bt loc_8c05c5b4
	mov.l @r15,r6
	mov 0x10,r0
	mov r13,r5
	mov.b @(r0,r6),r6
	extu.b r6,r6
	bsr loc_8c05c5ce
	mov r14,r4
	tst r0,r0
	bf loc_8c05c5b0
	mov.l @r15,r6
	mov 0x11,r0
	mov r13,r5
	mov.b @(r0,r6),r6
	extu.b r6,r6
	bsr loc_8c05c5ce
	mov r14,r4
	tst r0,r0
	bt loc_8c05c5c2

loc_8c05c5b0:
	bra loc_8c05c5c4
	mov 0x01,r0

loc_8c05c5b4:
	mov.w @(loc_8c05c64a,PC),r0
	fmov @(r0,r14),fr3
	fcmp/gt fr4,fr3
	bf loc_8c05c5c2
	fmov fr4,@(r0,r14)
	bra loc_8c05c5c4
	mov 0x02,r0

loc_8c05c5c2:
	mov 0x00,r0

loc_8c05c5c4:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05c5ce:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r6,r13
	mov.l r12,@-r15
	tst r13,r13
	mov.l r11,@-r15
	mov r5,r11
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.w @(loc_8c05c64c,PC),r0
	bt.s loc_8c05c636
	mov.l @(r0,r14),r12
	mov.w @(0x4,r12),r0
	mov r11,r5
	mov.w @(loc_8c05c64e,PC),r10
	mov r13,r7
	extu.w r0,r6
	and r10,r6
	bsr loc_8c05c654
	mov r14,r4
	tst r0,r0
	bf loc_8c05c632
	mov.w @(0x6,r12),r0
	mov r11,r5
	mov r13,r7
	extu.w r0,r6
	and r10,r6
	bsr loc_8c05c654
	mov r14,r4
	tst r0,r0
	bf loc_8c05c632
	mov.w @(0x8,r12),r0
	mov r11,r5
	mov r13,r7
	extu.w r0,r6
	and r10,r6
	bsr loc_8c05c654
	mov r14,r4
	tst r0,r0
	bf loc_8c05c632
	mov.w @(0xA,r12),r0
	mov r11,r5
	mov r13,r7
	extu.w r0,r6
	and r10,r6
	bsr loc_8c05c654
	mov r14,r4
	tst r0,r0
	bt loc_8c05c636

loc_8c05c632:
	bra loc_8c05c638
	mov 0x01,r0

loc_8c05c636:
	mov 0x00,r0

loc_8c05c638:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05c646:
	#data 0x0170
loc_8c05c648:
	#data 0x0130
loc_8c05c64a:
	#data 0x0490
loc_8c05c64c:
	#data 0x01c0
loc_8c05c64e:
	#data 0x03ff
	#align4

loc_8c05c650:
	#data 0x3fd55555

;==============================================
loc_8c05c654:
	mov.l r14,@-r15
	mov.l r13,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(loc_8c05c77c,PC),r0
	mov r5,r13
	shll2 r6
	mov.l r4,@r15
	shll2 r7
	mov.l r5,@(0x4,r15)
	mov.l @(r0,r13),r13
	shll r7
	mov.l @r15,r14
	shll r6
	mov.w @(loc_8c05c77c,PC),r0
	add r7,r13
	mov r13,r5
	mov.l @(r0,r14),r14
	add r6,r14
	mov 0x00,r6
	bsr loc_8c05c83e
	mov.l @(0x4,r15),r4
	mov r14,r5
	mov 0x00,r6
	fmov fr0,fr15
	bsr loc_8c05c83e
	mov.l @r15,r4
	fmov fr15,fr4
	fmov fr0,fr3
	fsub fr3,fr4
	fldi0 fr2
	fcmp/gt fr4,fr2
	bf.s loc_8c05c69c
	mov.w @(0x2,r14),r0
	fneg fr4

loc_8c05c69c:
	tst r0,r0
	bf loc_8c05c6a4
	bra loc_8c05c6bc
	mov 0x00,r0

loc_8c05c6a4:
	mov.w @(0x2,r14),r0
	mov r0,r3
	mov.w @(0x2,r13),r0
	add r0,r3
	lds r3,fpul
	mova @(0xD4,PC),r0
	fmov @r0,fr2
	float fpul,fr3
	fmov fr3,fr5
	fmul fr2,fr5
	fcmp/gt fr4,fr5
	movt r0

loc_8c05c6bc:
	add 0x08,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05c6c8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x7F,r3
	mov.w @(loc_8c05c77e,PC),r0
	and r3,r6
	mov r4,r13
	mov 0x1C,r2
	mov.l r5,@r15
	mul.l r2,r6
	mov.l @(r0,r13),r14
	mov 0x10,r0
	sts macl,r6
	add r6,r14
	mov.b @(r0,r14),r6
	extu.b r6,r6
	bsr loc_8c05c712
	mov r13,r4
	tst r0,r0
	bf loc_8c05c702
	mov 0x11,r0
	mov.l @r15,r5
	mov.b @(r0,r14),r6
	extu.b r6,r6
	bsr loc_8c05c712
	mov r13,r4
	tst r0,r0
	bt loc_8c05c706

loc_8c05c702:
	bra loc_8c05c708
	mov 0x01,r0

loc_8c05c706:
	mov 0x00,r0

loc_8c05c708:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05c712:
	mov.l r14,@-r15
	mov r5,r14
	mov.l r13,@-r15
	mov r6,r13
	mov.l r12,@-r15
	tst r13,r13
	mov.l r11,@-r15
	mov r4,r11
	sts.l pr,@-r15
	mov.w @(loc_8c05c780,PC),r0
	bt.s loc_8c05c76e
	mov.l @(r0,r14),r12
	mov.w @(0x4,r12),r0
	mov r14,r5
	mov r13,r6
	extu.w r0,r7
	bsr loc_8c05c788
	mov r11,r4
	tst r0,r0
	bf loc_8c05c76a
	mov.w @(0x6,r12),r0
	mov r14,r5
	mov r13,r6
	extu.w r0,r7
	bsr loc_8c05c788
	mov r11,r4
	tst r0,r0
	bf loc_8c05c76a
	mov.w @(0x8,r12),r0
	mov r14,r5
	mov r13,r6
	extu.w r0,r7
	bsr loc_8c05c788
	mov r11,r4
	tst r0,r0
	bf loc_8c05c76a
	mov.w @(0xA,r12),r0
	mov r14,r5
	mov r13,r6
	extu.w r0,r7
	bsr loc_8c05c788
	mov r11,r4
	tst r0,r0
	bt loc_8c05c76e

loc_8c05c76a:
	bra loc_8c05c770
	mov 0x01,r0

loc_8c05c76e:
	mov 0x00,r0

loc_8c05c770:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05c77c:
	#data 0x0170
loc_8c05c77e:
	#data 0x0174
loc_8c05c780:
	#data 0x01c0
	#align4
loc_8c05c784:
	#data 0x3fd55555

;==============================================
loc_8c05c788:
	mov.l r14,@-r15
	tst r7,r7
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov r4,r11
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	bt.s loc_8c05c828
	mov r5,r12
	mov.w @(loc_8c05c8ae,PC),r0
	shll2 r6
	shll2 r7
	mov.l @(r0,r11),r13
	shll r6
	mov.l @(r0,r12),r14
	shll r7
	add r6,r13
	mov r13,r5
	mov 0x00,r6
	add r7,r14
	bsr loc_8c05c83e
	mov r11,r4
	mov r14,r5
	mov 0x00,r6
	fmov fr0,fr15
	bsr loc_8c05c83e
	mov r12,r4
	fmov fr15,fr4
	fmov fr0,fr5
	fsub fr5,fr4
	fldi0 fr3
	fcmp/gt fr4,fr3
	bf.s loc_8c05c7d2
	mov.w @(0x2,r14),r0
	fneg fr4

loc_8c05c7d2:
	tst r0,r0
	bt loc_8c05c828
	mova @(0xDC,PC),r0
	fmov @r0,fr15
	mov.w @(0x2,r14),r0
	mov r0,r3
	mov.w @(0x2,r13),r0
	add r0,r3
	lds r3,fpul
	float fpul,fr3
	fmov fr3,fr5
	fmul fr15,fr5
	fcmp/gt fr5,fr4
	bt loc_8c05c828
	mov r13,r5
	mov 0x01,r6
	bsr loc_8c05c83e
	mov r11,r4
	mov r14,r5
	mov 0x01,r6
	fmov fr0,fr14
	bsr loc_8c05c83e
	mov r12,r4
	fmov fr14,fr4
	fmov fr0,fr5
	fsub fr5,fr4
	fldi0 fr3
	fcmp/gt fr4,fr3
	bf.s loc_8c05c810
	mov.w @(0x6,r14),r0
	fneg fr4

loc_8c05c810:
	tst r0,r0
	bt loc_8c05c828
	mov.w @(0x6,r14),r0
	mov r0,r3
	mov.w @(0x6,r13),r0
	add r0,r3
	lds r3,fpul
	float fpul,fr3
	fmov fr3,fr5
	fmul fr15,fr5
	fcmp/gt fr5,fr4
	bf loc_8c05c82c

loc_8c05c828:
	bra loc_8c05c82e
	mov 0x00,r0

loc_8c05c82c:
	mov 0x01,r0

loc_8c05c82e:
	lds.l @r15+,pr
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05c83e:
	tst r6,r6
	bf loc_8c05c85e
	mov.w @r5,r3
	mova @(loc_8c05c8b4,PC),r0
	fmov @r0,fr2
	lds r3,fpul
	mov.w @(loc_8c05c8b0,PC),r0
	float fpul,fr3
	mov.w @(r0,r4),r0
	tst 0x01,r0
	fmov fr3,fr4
	bt.s loc_8c05c85a
	fmul fr2,fr4
	fneg fr4

loc_8c05c85a:
	bra loc_8c05c87a
	mov 0x34,r0

loc_8c05c85e:
	mov.w @(0x4,r5),r0
	neg r0,r0
	lds r0,fpul
	mova @(loc_8c05c8b8,PC),r0
	fmov @r0,fr2
	mov.w @(loc_8c05c8b0,PC),r0
	float fpul,fr3
	mov.w @(r0,r4),r0
	tst 0x02,r0
	fmov fr3,fr4
	bt.s loc_8c05c878
	fmul fr2,fr4
	fneg fr4

loc_8c05c878:
	mov 0x38,r0

loc_8c05c87a:
	fmov @(r0,r4),fr3
	fadd fr3,fr4
	rts
	fmov fr4,fr0

;==============================================
loc_8c05c882:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r11
	mov r15,r4
	mov.l @r5,r3
	mov r4,r9
	mov.w r3,@r9
	mov.w @(0x4,r5),r0
	mov.w r0,@(0x2,r4)
	mov.w @(loc_8c05c8b0,PC),r0
	mov.w @(r0,r11),r0
	tst 0x01,r0
	bt loc_8c05c8bc
	bra loc_8c05c8c0
	mov.l @(0x8,r5),r0

;##############################################
loc_8c05c8ae:
	#data 0x0170
loc_8c05c8b0:
	#data 0x0130
	#align4
loc_8c05c8b4:
	#data 0x3fd55555
loc_8c05c8b8:
	#data 0x40092492

;----------------------------------------------
loc_8c05c8bc:
	mov.l @(0x8,r5),r0
	neg r0,r0

loc_8c05c8c0:
	mov.w r0,@(0x4,r4)
	mov.w @(loc_8c05c9a4,PC),r0
	mov.w @(r0,r11),r0
	tst 0x02,r0
	bt loc_8c05c8d0
	mov.l @(0xC,r5),r0
	bra loc_8c05c8d2
	neg r0,r0

loc_8c05c8d0:
	mov.l @(0xC,r5),r0

loc_8c05c8d2:
	mov.w r0,@(0x6,r4)
	mov.w @(loc_8c05c9a6,PC),r0
	mov.w @(loc_8c05c9aa,PC),r14
	mov.l @(r0,r11),r12
	mov.w @(loc_8c05c9a8,PC),r0
	mov.l @(r0,r12),r8
	add 0x50,r0
	mov.l @(r0,r12),r13
	add 0x04,r13
	bra loc_8c05c928
	mov 0x00,r10

loc_8c05c8e8:
	mov.w @r13,r2
	extu.w r2,r2
	tst r14,r2
	bt loc_8c05c924
	mov.w @r13,r7
	mov r12,r5
	mov r9,r6
	extu.w r7,r7
	and r14,r7
	shll2 r7
	shll r7
	add r8,r7
	bsr loc_8c05ca54
	mov r11,r4
	tst r0,r0
	bt loc_8c05c924
	mov.w @r13,r7
	mov r12,r5
	mov r9,r6
	extu.w r7,r7
	and r14,r7
	shll2 r7
	shll r7
	add r8,r7
	bsr loc_8c05cab6
	mov r11,r4
	tst r0,r0
	bt loc_8c05c924
	bra loc_8c05c930
	mov 0x01,r0

loc_8c05c924:
	add 0x02,r13
	add 0x01,r10

loc_8c05c928:
	mov 0x04,r2
	cmp/ge r2,r10
	bf loc_8c05c8e8
	mov 0x00,r0

loc_8c05c930:
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
loc_8c05c944:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xEC,r15
	mov r4,r11
	mov r15,r4
	add 0x0C,r4
	mov r4,r3
	mov.l r3,@r15
	mov.l @r5,r2
	mov.w r2,@r3
	mov.w @(0x4,r5),r0
	mov.w r0,@(0x2,r4)
	mov.w @(loc_8c05c9a4,PC),r0
	mov.w @(r0,r11),r0
	tst 0x01,r0
	bt loc_8c05c974
	bra loc_8c05c978
	mov.l @(0x8,r5),r0

loc_8c05c974:
	mov.l @(0x8,r5),r0
	neg r0,r0

loc_8c05c978:
	mov.w r0,@(0x4,r4)
	mov.w @(loc_8c05c9a4,PC),r0
	mov.w @(r0,r11),r0
	tst 0x02,r0
	bt loc_8c05c988
	mov.l @(0xC,r5),r0
	bra loc_8c05c98a
	neg r0,r0

loc_8c05c988:
	mov.l @(0xC,r5),r0

loc_8c05c98a:
	mov.w r0,@(0x6,r4)
	mov 0x00,r2
	mov.b @(0x2,r11),r0
	mov r2,r8
	mov.l @(loc_8c05c9ac,PC),r1
	extu.b r0,r0
	mov.w @(loc_8c05c9aa,PC),r14
	xor 0x01,r0
	mov.b @(r0,r1),r3
	mov.l r3,@(0x8,r15)
	mov.l r2,@(0x4,r15)
	bra loc_8c05ca36
	nop

;##############################################
loc_8c05c9a4:
	#data 0x0130
loc_8c05c9a6:
	#data 0x020c
loc_8c05c9a8:
	#data 0x0170
loc_8c05c9aa:
	#data 0x0fff
	#align4
loc_8c05c9ac:
	#data 0x8c287dde

;----------------------------------------------
loc_8c05c9b0:
	mov.b @(0x2,r11),r0
	mov.w @(loc_8c05cac4,PC),r3
	extu.b r0,r0
	mov.l @(loc_8c05cacc,PC),r13
	xor 0x01,r0
	mul.l r3,r0
	sts macl,r0
	add r0,r13
	mov.w @(loc_8c05cac6,PC),r0
	add r8,r13
	mov.l @r13,r13
	mov.l @(r0,r13),r9
	add 0x50,r0
	mov.l @(r0,r13),r12
	mov.b @(0x3,r13),r0
	extu.b r0,r4
	tst r4,r4
	bt loc_8c05c9e4
	mov r4,r0
	nop
	cmp/eq 0x01,r0
	bt loc_8c05c9e4
	mov r4,r0
	nop
	cmp/eq 0x03,r0
	bf loc_8c05ca2e

loc_8c05c9e4:
	bra loc_8c05ca28
	mov 0x00,r10

loc_8c05c9e8:
	mov.w @r12,r3
	extu.w r3,r3
	tst r14,r3
	bt loc_8c05ca24
	mov.w @r12,r7
	mov r13,r5
	mov.l @r15,r6
	extu.w r7,r7
	and r14,r7
	shll2 r7
	shll r7
	add r9,r7
	bsr loc_8c05ca54
	mov r11,r4
	tst r0,r0
	bt loc_8c05ca24
	mov.w @r12,r7
	mov r13,r5
	mov.l @r15,r6
	extu.w r7,r7
	and r14,r7
	shll2 r7
	shll r7
	add r9,r7
	bsr loc_8c05cab6
	mov r11,r4
	tst r0,r0
	bt loc_8c05ca24
	bra loc_8c05ca40
	mov 0x01,r0

loc_8c05ca24:
	add 0x02,r12
	add 0x01,r10

loc_8c05ca28:
	mov 0x02,r2
	cmp/ge r2,r10
	bf loc_8c05c9e8

loc_8c05ca2e:
	mov.l @(0x4,r15),r1
	add 0x04,r8
	add 0x01,r1
	mov.l r1,@(0x4,r15)

loc_8c05ca36:
	mov.l @(0x4,r15),r2
	mov.l @(0x8,r15),r3
	cmp/ge r3,r2
	bf loc_8c05c9b0
	mov 0x00,r0

loc_8c05ca40:
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
loc_8c05ca54:
	mov.w @r6,r3
	tst r3,r3
	bf loc_8c05ca5e
	rts
	mov 0x01,r0

loc_8c05ca5e:
	mova @(0x70,PC),r0
	fmov @r0,fr5
	mov.w @(0x4,r6),r0
	fmov fr5,fr0
	mov r0,r3
	lds r3,fpul
	mov.w @r7,r3
	mov 0x34,r0
	fmov @(r0,r4),fr7
	float fpul,fr3
	lds r3,fpul
	mov.w @(loc_8c05cac8,PC),r0
	mov.w @(r0,r5),r3
	fmac fr0,fr3,fr7
	tst r3,r3
	float fpul,fr3
	fmov fr3,fr4
	bt.s loc_8c05ca86
	fmul fr5,fr4
	fneg fr4

loc_8c05ca86:
	mov 0x34,r0
	fmov fr7,fr6
	fmov @(r0,r5),fr3
	fadd fr3,fr4
	fldi0 fr3
	fsub fr4,fr6
	fcmp/gt fr6,fr3
	bf loc_8c05ca98
	fneg fr6

loc_8c05ca98:
	mov.w @r6,r3
	mov.w @(0x2,r7),r0
	lds r3,fpul
	mov r0,r3
	fmov fr5,fr0
	float fpul,fr3
	lds r3,fpul
	float fpul,fr2
	fmul fr5,fr2
	fmac fr0,fr3,fr2
	fmov fr2,fr4
	fcmp/gt fr6,fr4
	movt r0
	rts
	nop

;==============================================
loc_8c05cab6:
	mov r6,r1
	add 0x02,r1
	mov.w @r1,r3
	tst r3,r3
	bf loc_8c05cad4
	rts
	mov 0x01,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05cac4:
	#data 0x0178
loc_8c05cac6:
	#data 0x0170
loc_8c05cac8:
	#data 0x0130
	#align4
loc_8c05cacc:
	#data 0x8c287aec
loc_8c05cad0:
	#data 0x3fd55555

;==============================================
loc_8c05cad4:
	mova @(loc_8c05cb30,PC),r0
	fmov @r0,fr5
	mov.w @(0x6,r6),r0
	fmov fr5,fr0
	mov r0,r3
	lds r3,fpul
	mov 0x38,r0
	fmov @(r0,r4),fr7
	mov.w @(0x4,r7),r0
	float fpul,fr3
	neg r0,r0
	lds r0,fpul
	mov.w @(loc_8c05cb2e,PC),r0
	fmac fr0,fr3,fr7
	float fpul,fr3
	mov.w @(r0,r5),r0
	tst 0x02,r0
	fmov fr3,fr4
	bt.s loc_8c05cafe
	fmul fr5,fr4
	fneg fr4

loc_8c05cafe:
	mov 0x38,r0
	fmov fr7,fr6
	fmov @(r0,r5),fr3
	fadd fr3,fr4
	fldi0 fr3
	fsub fr4,fr6
	fcmp/gt fr6,fr3
	bf loc_8c05cb10
	fneg fr6

loc_8c05cb10:
	mov.w @r1,r3
	mov.w @(0x6,r7),r0
	lds r3,fpul
	mov r0,r3
	fmov fr5,fr0
	float fpul,fr3
	lds r3,fpul
	float fpul,fr2
	fmul fr5,fr2
	fmac fr0,fr3,fr2
	fmov fr2,fr4
	fcmp/gt fr6,fr4
	movt r0
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05cb2e:
	#data 0x0130
	#align4
loc_8c05cb30:
	#data 0x40092492

;==============================================
loc_8c05cb34:
	mov.w @(loc_8c05cc42,PC),r0
	mov.b @(r0,r4),r3
	add 0x01,r0
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8c05cb3e:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r5,r12
	sts.l pr,@-r15
	mov.w @(0x4,r12),r0
	mov.l @r12,r13
	extu.w r0,r0
	add r0,r13
	mov r13,r4
	mov r6,r0
	nop
	cmp/eq 0x00,r0
	bt.s loc_8c05cb72
	add 0x01,r4
	cmp/eq 0x01,r0
	bt loc_8c05cb8a
	cmp/eq 0x02,r0
	bt loc_8c05cb98
	cmp/eq 0x03,r0
	bt loc_8c05cbb2
	cmp/eq 0x04,r0
	bt loc_8c05cbdc
	bra loc_8c05cc0a
	nop

loc_8c05cb72:
	bsr loc_8c05cb34
	mov r14,r4
	mov.w @(loc_8c05cc42,PC),r0
	mov.b @r13,r2
	mov.b r2,@(r0,r14)
	mov.w @(0x4,r12),r0
	add 0x01,r0
	mov.w r0,@(0x4,r12)
	mov.b @(0x7,r12),r0
	add 0x01,r0
	bra loc_8c05cc0a
	mov.b r0,@(0x7,r12)

loc_8c05cb8a:
	mov.b @r13,r2
	mov.w @(loc_8c05cc44,PC),r0
	extu.b r2,r2
	mov.l r2,@(r0,r14)
	mov.w @(0x4,r12),r0
	bra loc_8c05cc08
	add 0x01,r0

loc_8c05cb98:
	mov.b @r13,r2
	mov.b @r4,r3
	extu.b r2,r2
	mov.w @(loc_8c05cc44,PC),r0
	extu.b r3,r3
	shll8 r2
	or r3,r2
	shll16 r2
	shlr16 r2
	exts.w r2,r2
	extu.w r2,r2
	bra loc_8c05cc04
	mov.l r2,@(r0,r14)

loc_8c05cbb2:
	mov.b @r13,r1
	mov.b @r4,r3
	extu.b r1,r1
	mov.w @(loc_8c05cc44,PC),r0
	extu.b r3,r3
	shll8 r1
	or r3,r1
	extu.w r1,r1
	shll16 r1
	shlr16 r1
	exts.w r1,r1
	mov.l r1,@(r0,r14)
	mov.l @(r0,r14),r3
	mova @(loc_8c05cc48,PC),r0
	fmov @r0,fr2
	lds r3,fpul
	mov.w @(loc_8c05cc44,PC),r0
	float fpul,fr3
	fmul fr2,fr3
	bra loc_8c05cc04
	fmov fr3,@(r0,r14)

loc_8c05cbdc:
	mov.b @r13,r3
	mov.b @r4,r2
	extu.b r3,r3
	mov.w @(loc_8c05cc44,PC),r0
	extu.b r2,r2
	shll8 r3
	or r2,r3
	extu.w r3,r3
	shll16 r3
	shlr16 r3
	exts.w r3,r3
	mov.l r3,@(r0,r14)
	mov.l @(r0,r14),r2
	mova @(0x54,PC),r0
	fmov @r0,fr2
	lds r2,fpul
	mov.w @(loc_8c05cc44,PC),r0
	float fpul,fr3
	fmul fr2,fr3
	fmov fr3,@(r0,r14)

loc_8c05cc04:
	mov.w @(0x4,r12),r0
	add 0x02,r0

loc_8c05cc08:
	mov.w r0,@(0x4,r12)

loc_8c05cc0a:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c05cc14:
	mov.l @(loc_8c05cc50,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c05cc1a:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov r5,r0
	nop
	cmp/eq 0x00,r0
	bt.s loc_8c05cc34
	mov r4,r14
	cmp/eq 0x05,r0
	bt loc_8c05cc54
	cmp/eq 0x02,r0
	bt loc_8c05cc6a
	bra loc_8c05cc76
	nop

loc_8c05cc34:
	mov.w @(loc_8c05cc46,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c05cc86
	bra loc_8c05cc76
	nop

;##############################################
loc_8c05cc42:
	#data 0x0440
loc_8c05cc44:
	#data 0x04b4
loc_8c05cc46:
	#data 0x01f9
	#align4
loc_8c05cc48:
	#data 0x3fd55555
loc_8c05cc4c:
	#data 0x40092492
loc_8c05cc50:
	#data loc_8c05c29c

;----------------------------------------------
loc_8c05cc54:
	mov.w @(loc_8c05cd02,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c05cc86
	mov.w @(loc_8c05cd04,PC),r0
	mov.b @(r0,r14),r0
	tst 0x02,r0
	bf loc_8c05cc7e
	bra loc_8c05cc76
	nop

loc_8c05cc6a:
	mov.w @(loc_8c05cd06,PC),r0
	mov.b @(r0,r14),r0
	tst r0,r0
	movt r0
	tst 0xE0,r0
	bf loc_8c05cc7e

loc_8c05cc76:
	mov.w @(loc_8c05cd04,PC),r0
	mov.b @(r0,r14),r2
	cmp/pz r2
	bf loc_8c05ccae

loc_8c05cc7e:
	bsr loc_8c05cc14
	mov r14,r4
	tst r0,r0
	bf loc_8c05cc8e

loc_8c05cc86:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_8c05cc8e:
	mov.w @(loc_8c05cd04,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c05ccae
	mov.b @(r0,r14),r0
	tst 0x02,r0
	bt loc_8c05ccae
	mov.w @(loc_8c05cd04,PC),r0
	mov 0x02,r3
	mov.b @(r0,r14),r2
	xor r3,r2
	mov.b r2,@(r0,r14)
	mov 0x80,r2
	mov.b @(r0,r14),r1
	or r2,r1
	mov.b r1,@(r0,r14)

loc_8c05ccae:
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05ccb6:
	mov.w @(loc_8c05cd04,PC),r0
	sts.l pr,@-r15
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c05ccfa
	mov.b @(r0,r4),r3
	cmp/pl r3
	bt loc_8c05cce0
	mov.b @(r0,r4),r0
	tst 0x02,r0
	bf loc_8c05ccd8
	mov.w @(loc_8c05cd04,PC),r0
	mov 0x11,r3
	mov.b @(r0,r4),r2
	and r3,r2
	bra loc_8c05ccfa
	mov.b r2,@(r0,r4)

loc_8c05ccd8:
	mov.w @(loc_8c05cd04,PC),r0
	mov.b @(r0,r4),r0
	tst 0x10,r0
	bt loc_8c05ccf0

loc_8c05cce0:
	mov.l @(loc_8c05cd08,PC),r3
	mov 0x00,r2
	mov.w @(loc_8c05cd04,PC),r0
	jsr @r3
	mov.b r2,@(r0,r4)
	lds.l @r15+,pr
	rts
	mov 0x00,r0

loc_8c05ccf0:
	mov.w @(loc_8c05cd04,PC),r0
	mov 0x7F,r3
	mov.b @(r0,r4),r2
	and r3,r2
	mov.b r2,@(r0,r4)

loc_8c05ccfa:
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05cd02:
	#data 0x01f9
loc_8c05cd04:
	#data 0x0495
loc_8c05cd06:
	#data 0x014a
	#align4
loc_8c05cd08:
	#data loc_8c05fe88

;==============================================
;Load CPU Script opcode
;==============================================
loc_8c05cd0c:
	mov.l r14,@-r15
	mov.w @(0x4,r5),r0
	mov.l @r5,r14
	extu.w r0,r0
	mov.l @(loc_8c05ce08,PC),r1 ; loc_8c05ce08 to loc_8c1515e4
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r0
	jmp @r0
	mov.l @r15+,r14

;==============================================
loc_8c05cd22:
	add 0xFC,r15
	mov.l r4,@r15
	mov r4,r0
	nop
	mov.w @(loc_8c05cdf2,PC),r1
	mov.l @(loc_8c05ce0c,PC),r2
	mov.b @(r0,r1),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r2),r0
	jmp @r0
	add 0x04,r15

;==============================================
;AI script Opcode 00
;==============================================
loc_8c05cd3a:
	sts.l pr,@-r15
	mov.l @(loc_8c05ce10,PC),r3; 8c05cb3e
	jsr @r3
	mov 0x00,r6
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;==============================================
loc_8c05cd48:
	mov.w @(loc_8c05cdf4,PC),r0
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	rts
	mov 0x01,r0

;==============================================
;AI script Opcode 01
;==============================================
loc_8c05cd54:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05ce14,PC),r3
	jsr @r3
	mov 0x00,r5
	tst r0,r0
	bf loc_8c05cd6c
	bra loc_8c05cdea
	mov 0x00,r0

loc_8c05cd6c:
	mov.l @(loc_8c05ce10,PC),r3
	mov r13,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05ce10,PC),r2
	mov r13,r5
	mov 0x03,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c05cdf4,PC),r0
	mov.w @(loc_8c05cdfa,PC),r4
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov 0x01,r3
	mov.w @(loc_8c05cdf6,PC),r0
	fmov @(r0,r14),fr3
	add 0x98,r0
	fmov fr3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov.w @(loc_8c05cdf8,PC),r0
	fmov fr3,@(r0,r14)
	add 0x04,r0
	mov.l r3,@(r0,r14)
	mov.w @(loc_8c05cdfc,PC),r0
	mov.b @(r0,r14),r3
	mov.w @(loc_8c05cdfe,PC),r0
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll8 r3
	shll2 r3
	xor r4,r3
	mov.l r3,@(r0,r14)
	add 0xC4,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	mov 0x00,r3
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c05ce00,PC),r0
	mov 0x01,r5
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c05cdfe,PC),r0
	mov.l @(loc_8c05ce18,PC),r3
	mov.w @(r0,r14),r2
	mov.w @(loc_8c05ce02,PC),r0
	mov.w r2,@(r0,r14)
	mov.w @(loc_8c05ce04,PC),r0
	mov.w r4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov r13,r5
	mov.w @(loc_8c05ce04,PC),r0
	mov 0x00,r2
	mov r14,r4
	mov.w r2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c05ce1c
	mov.l @r15+,r14

loc_8c05cdea:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05cdf2:
	#data 0x0440
loc_8c05cdf4:
	#data 0x043d
loc_8c05cdf6:
	#data 0x04b4
loc_8c05cdf8:
	#data 0x0450
loc_8c05cdfa:
	#data 0x0800
loc_8c05cdfc:
	#data 0x01d2
loc_8c05cdfe:
	#data 0x0458
loc_8c05ce00:
	#data 0x01d3
loc_8c05ce02:
	#data 0x04dc
loc_8c05ce04:
	#data 0x034a
	#align4
 loc_8c05ce08:
	#data bank15.loc_8c1515e4
loc_8c05ce0c:
	#data bank15.loc_8c1517e4
loc_8c05ce10:
	#data loc_8c05cb3e
loc_8c05ce14:
	#data loc_8c05cc14
loc_8c05ce18:
	#data loc_8c0532a8

;==============================================
loc_8c05ce1c:
	mov.w @(loc_8c05cf12,PC),r0
	mov.b @(r0,r4),r3
	mov.w @(loc_8c05cf14,PC),r0
	extu.b r3,r3
	mov.l @(r0,r4),r2
	cmp/eq r2,r3
	bf.s loc_8c05ce94
	mov 0x00,r6
	mov.l @(loc_8c05cf2c,PC),r1
	mov.b @r1,r3
	tst r3,r3
	bf loc_8c05ce94
	mov.w @(loc_8c05cf16,PC),r0
	mov.b @(r0,r4),r5
	tst r5,r5
	bt loc_8c05ce4c
	mov.w @(loc_8c05cf18,PC),r0
	mov 0x02,r3
	mov.b @(r0,r4),r2
	extu.b r2,r2
	neg r2,r2
	shad r2,r3
	tst r5,r3
	bf loc_8c05ce94

loc_8c05ce4c:
	mov.w @(loc_8c05cf1a,PC),r0
	fmov @(r0,r4),fr3
	mov 0x34,r0
	fmov @(r0,r4),fr4
	fsub fr3,fr4
	fldi0 fr3
	fcmp/gt fr4,fr3
	bf loc_8c05ce5e
	fneg fr4

loc_8c05ce5e:
	mov.w @(loc_8c05cf1c,PC),r0
	fldi0 fr2
	fmov @(r0,r4),fr3
	fsub fr4,fr3
	fcmp/gt fr2,fr3
	bf.s loc_8c05ce94
	fmov fr3,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r4),fr3
	mov.w @(loc_8c05cf1a,PC),r0
	fmov fr3,@(r0,r4)
	add 0x08,r0
	mov.w @(r0,r4),r3
	mov.w @(loc_8c05cf1e,PC),r0
	mov.w r3,@(r0,r4)
	mov.w @(loc_8c05cf14,PC),r0
	mov.l @(r0,r4),r0
	cmp/eq 0x1A,r0
	bf loc_8c05ce8c
	mov.w @(loc_8c05cf20,PC),r0
	mov.w @(r0,r4),r2
	mov.w @(loc_8c05cf22,PC),r0
	mov.w r2,@(r0,r4)

loc_8c05ce8c:
	mov.w @(loc_8c05cf24,PC),r0
	mov.b r6,@(r0,r4)
	rts
	mov 0x00,r0

loc_8c05ce94:
	mov.w @(loc_8c05cf26,PC),r0
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	mov.w @(loc_8c05cf1e,PC),r0
	mov.w r6,@(r0,r4)
	mov 0x01,r0
	rts
	nop

;==============================================
loc_8c05cea6:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05cf30,PC),r3
	jsr @r3
	mov 0x00,r5
	tst r0,r0
	bt loc_8c05cf0e
	mov.l @(loc_8c05cf34,PC),r3
	mov r13,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05cf34,PC),r2
	mov r13,r5
	mov 0x03,r6
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c05cf38,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c05cf0e
	mov.w @(loc_8c05cf28,PC),r0
	mov 0x01,r3
	fmov @(r0,r14),fr3
	add 0x98,r0
	fmov fr3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov.w @(loc_8c05cf1a,PC),r0
	fmov fr3,@(r0,r14)
	add 0xCC,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c05cf24,PC),r0
	mov.b r3,@(r0,r14)
	add 0x2A,r0
	mov.b @(r0,r14),r4
	tst r4,r4
	bt loc_8c05cf3c
	mov.w @(loc_8c05cf18,PC),r0
	mov 0x01,r1
	exts.b r4,r2
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shad r3,r1
	tst r1,r2
	bt loc_8c05cf3c

loc_8c05cf0e:
	bra loc_8c05cf86
	mov 0x00,r0

;##############################################
loc_8c05cf12:
	#data 0x01d0
loc_8c05cf14:
	#data 0x0454
loc_8c05cf16:
	#data 0x01fd
loc_8c05cf18:
	#data 0x01d2
loc_8c05cf1a:
	#data 0x0450
loc_8c05cf1c:
	#data 0x044c
loc_8c05cf1e:
	#data 0x04dc
loc_8c05cf20:
	#data 0x0458
loc_8c05cf22:
	#data 0x01fa
loc_8c05cf24:
	#data 0x01d3
loc_8c05cf26:
	#data 0x043d
loc_8c05cf28:
	#data 0x04b4
	#align4
loc_8c05cf2c:
	#data 0x8c28963c
loc_8c05cf30:
	#data loc_8c05cc14
loc_8c05cf34:
	#data loc_8c05cb3e
loc_8c05cf38:
	#data loc_8c05c41a

;----------------------------------------------
loc_8c05cf3c:
	mov.w @(loc_8c05d054,PC),r0
	mov 0x01,r3
	mov.w @(loc_8c05d056,PC),r4
	mov 0x01,r5
	mov.b @(r0,r14),r2
	add 0x01,r2
	mov.b r2,@(r0,r14)
	add 0x17,r0
	mov.l r3,@(r0,r14)
	mov.w @(loc_8c05d058,PC),r0
	mov.b @(r0,r14),r3
	mov.w @(loc_8c05d05a,PC),r0
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll8 r3
	shll2 r3
	xor r4,r3
	mov.l r3,@(r0,r14)
	mov.w @(r0,r14),r2
	mov.w @(loc_8c05d05c,PC),r0
	mov.l @(loc_8c05d06c,PC),r3
	mov.w r2,@(r0,r14)
	mov.w @(loc_8c05d05e,PC),r0
	mov.w r4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov r13,r5
	mov.w @(loc_8c05d05e,PC),r0
	mov 0x00,r2
	mov r14,r4
	mov.w r2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c05cf8e
	mov.l @r15+,r14

loc_8c05cf86:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c05cf8e:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05d070,PC),r3
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c05cfba
	mov.w @(loc_8c05d054,PC),r0
	mov 0x00,r2
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c05d05c,PC),r0
	mov.w r2,@(r0,r14)
	mov 0x01,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c05cfba:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c05da78
	mov.l @r15+,r14

loc_8c05cfc6:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05cfce:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05d074,PC),r3
	jsr @r3
	mov 0x00,r5
	tst r0,r0
	bt loc_8c05d050
	mov.l @(loc_8c05d078,PC),r3
	mov r13,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05d078,PC),r2
	mov r13,r5
	mov 0x03,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c05d060,PC),r0
	mov.l @(loc_8c05d080,PC),r2
	mov.l @(r0,r14),r4
	mov.w @(loc_8c05d062,PC),r0
	mov.b @(r0,r4),r3
	mov.w @(loc_8c05d064,PC),r0
	extu.b r3,r3
	lds r3,fpul
	mov 0x00,r3
	fmov @(r0,r14),fr2
	mova @(0x70,PC),r0
	fmov @r0,fr0
	float fpul,fr3
	mov.w @(loc_8c05d066,PC),r0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(loc_8c05d068,PC),r0
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c05d06a,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c05d050
	mov.w @(loc_8c05d066,PC),r0
	fmov @(r0,r14),fr4
	mov.w @(loc_8c05d058,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf.s loc_8c05d038
	mov 0x34,r0
	fneg fr4

loc_8c05d038:
	fmov @(r0,r14),fr5
	fmov @(r0,r4),fr3
	mov.w @(loc_8c05d058,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c05d04c
	fadd fr3,fr4
	mov 0x34,r0
	fmov fr4,fr5
	fmov @(r0,r14),fr4

loc_8c05d04c:
	fcmp/gt fr5,fr4
	bf loc_8c05d084

loc_8c05d050:
	bra loc_8c05d0ce
	mov 0x00,r0

;##############################################
loc_8c05d054:
	#data 0x043d
loc_8c05d056:
	#data 0x0400
loc_8c05d058:
	#data 0x01d2
loc_8c05d05a:
	#data 0x0458
loc_8c05d05c:
	#data 0x04dc
loc_8c05d05e:
	#data 0x034a
loc_8c05d060:
	#data 0x020c
loc_8c05d062:
	#data 0x013e
loc_8c05d064:
	#data 0x04b4
loc_8c05d066:
	#data 0x044c
loc_8c05d068:
	#data 0x01d3
loc_8c05d06a:
	#data 0x041c
	#align4
loc_8c05d06c:
	#data loc_8c0532a8
loc_8c05d070:
	#data loc_8c05c41a
loc_8c05d074:
	#data loc_8c05cc14
loc_8c05d078:
	#data loc_8c05cb3e
loc_8c05d07c:
	#data 0x3fd55555
loc_8c05d080:
	#data 0x8c28963c

;----------------------------------------------
loc_8c05d084:
	mov.w @(loc_8c05d182,PC),r0
	mov 0x01,r3
	mov.w @(loc_8c05d184,PC),r4
	mov 0x01,r5
	mov.b @(r0,r14),r2
	add 0x01,r2
	mov.b r2,@(r0,r14)
	add 0x17,r0
	mov.l r3,@(r0,r14)
	mov.w @(loc_8c05d186,PC),r0
	mov.b @(r0,r14),r3
	mov.w @(loc_8c05d188,PC),r0
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll8 r3
	shll2 r3
	xor r4,r3
	mov.l r3,@(r0,r14)
	mov.w @(r0,r14),r2
	mov.w @(loc_8c05d18a,PC),r0
	mov.l @(loc_8c05d19c,PC),r3
	mov.w r2,@(r0,r14)
	mov.w @(loc_8c05d18c,PC),r0
	mov.w r4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov r13,r5
	mov.w @(loc_8c05d18c,PC),r0
	mov 0x00,r2
	mov r14,r4
	mov.w r2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c05d0d6
	mov.l @r15+,r14

loc_8c05d0ce:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c05d0d6:
	mov.w @(loc_8c05d18e,PC),r0
	mov.b @(r0,r4),r3
	mov.w @(loc_8c05d190,PC),r0
	extu.b r3,r3
	mov.l @(r0,r4),r2
	cmp/eq r2,r3
	bf.s loc_8c05d154
	mov 0x00,r5
	mov.w @(loc_8c05d192,PC),r0
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	exts.b r3,r3
	tst r3,r3
	bt loc_8c05d154
	mov.l @(loc_8c05d1a0,PC),r1
	mov.b @r1,r2
	tst r2,r2
	bf loc_8c05d154
	mov.w @(loc_8c05d194,PC),r0
	mov.b @(r0,r4),r6
	tst r6,r6
	bt loc_8c05d114
	mov.w @(loc_8c05d186,PC),r0
	mov 0x02,r3
	mov.b @(r0,r4),r2
	extu.b r2,r2
	neg r2,r2
	shad r2,r3
	tst r6,r3
	bf loc_8c05d154

loc_8c05d114:
	mov.w @(loc_8c05d196,PC),r0
	mov.l @(r0,r4),r6
	mov.w @(loc_8c05d198,PC),r0
	fmov @(r0,r4),fr4
	mov.w @(loc_8c05d186,PC),r0
	mov.b @(r0,r6),r3
	tst r3,r3
	bf.s loc_8c05d128
	mov 0x34,r0
	fneg fr4

loc_8c05d128:
	fmov @(r0,r4),fr5
	fmov @(r0,r6),fr3
	mov.w @(loc_8c05d186,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c05d13c
	fadd fr3,fr4
	mov 0x34,r0
	fmov fr4,fr5
	fmov @(r0,r4),fr4

loc_8c05d13c:
	fsub fr4,fr5
	fldi0 fr3
	fcmp/gt fr3,fr5
	bf loc_8c05d154
	mov.w @(loc_8c05d188,PC),r0
	mov.w @(r0,r4),r2
	mov.w @(loc_8c05d18a,PC),r0
	mov.w r2,@(r0,r4)
	mov.w @(loc_8c05d19a,PC),r0
	mov.b r5,@(r0,r4)
	rts
	mov 0x00,r0

loc_8c05d154:
	mov.w @(loc_8c05d182,PC),r0
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	mov.w @(loc_8c05d18a,PC),r0
	mov.w r5,@(r0,r4)
	mov 0x01,r0
	rts
	nop

loc_8c05d166:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05d1a4,PC),r3
	mov r5,r13
	mov r4,r14
	jsr @r3
	mov 0x06,r5
	tst r0,r0
	bf loc_8c05d1a8
	bra loc_8c05d246
	mov 0x00,r0

;##############################################
loc_8c05d182:
	#data 0x043d
loc_8c05d184:
	#data 0x0800
loc_8c05d186:
	#data 0x01d2
loc_8c05d188:
	#data 0x0458
loc_8c05d18a:
	#data 0x04dc
loc_8c05d18c:
	#data 0x034a
loc_8c05d18e:
	#data 0x01d0
loc_8c05d190:
	#data 0x0454
loc_8c05d192:
	#data 0x04a2
loc_8c05d194:
	#data 0x01fd
loc_8c05d196:
	#data 0x020c
loc_8c05d198:
	#data 0x044c
loc_8c05d19a:
	#data 0x01d3
	#align4
loc_8c05d19c:
	#data loc_8c0532a8
loc_8c05d1a0:
	#data 0x8c28963c
loc_8c05d1a4:
	#data loc_8c05cc14

;----------------------------------------------
loc_8c05d1a8:
	mov.l @(loc_8c05d2e8,PC),r12
	mov r13,r5
	mov 0x00,r6
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05d2ca,PC),r0
	mov r13,r5
	mov 0x03,r6
	mov.l @(r0,r14),r3
	mov.l r3,@r15
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05d2cc,PC),r0
	mov r13,r5
	mov.l @r15,r3
	mov 0x01,r6
	mov.b @(r0,r3),r3
	mov.w @(loc_8c05d2ce,PC),r0
	extu.b r3,r3
	lds r3,fpul
	fmov @(r0,r14),fr2
	mova @(0x118,PC),r0
	fmov @r0,fr0
	float fpul,fr3
	mov.w @(loc_8c05d2d0,PC),r0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05d2ce,PC),r0
	mov.w @(loc_8c05d2d4,PC),r2
	mov.l @(r0,r14),r3
	add 0xA0,r0
	mov.l r3,@(r0,r14)
	mov.w @(loc_8c05d2d2,PC),r0
	mov.b @(r0,r14),r4
	mov.w @(loc_8c05d2d6,PC),r0
	extu.b r4,r4
	mov r4,r3
	shll r4
	add r3,r4
	mov.l @(r0,r14),r3
	shll8 r4
	cmp/pz r3
	shll2 r4
	bt.s loc_8c05d20a
	xor r2,r4
	mov.w @(loc_8c05d2d8,PC),r3
	or r3,r4

loc_8c05d20a:
	mov.l @(r0,r14),r2
	cmp/pl r2
	bf loc_8c05d214
	mov.w @(loc_8c05d2da,PC),r1
	or r1,r4

loc_8c05d214:
	mov.w @(loc_8c05d2dc,PC),r0
	mov r13,r5
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	extu.w r4,r3
	mov.w @(loc_8c05d2de,PC),r0
	mov.b @(r0,r14),r2
	mov.w @(loc_8c05d2e0,PC),r0
	extu.b r2,r2
	mov.l r2,@(r0,r14)
	add 0x04,r0
	mov.l r3,@(r0,r14)
	mov 0xB4,r3
	mov.w @(loc_8c05d2e2,PC),r0
	mov.w r4,@(r0,r14)
	add 0xC6,r0
	mov r14,r4
	mov.b r3,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c05d252
	mov.l @r15+,r14

loc_8c05d246:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05d252:
	mov.w @(loc_8c05d2de,PC),r0
	mov.b @(r0,r4),r3
	mov.w @(loc_8c05d2e0,PC),r0
	extu.b r3,r3
	mov.l @(r0,r4),r2
	cmp/eq r2,r3
	bf loc_8c05d2f4
	mov.w @(loc_8c05d2e4,PC),r0
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	exts.b r3,r3
	tst r3,r3
	bt loc_8c05d2f4
	mov.l @(loc_8c05d2f0,PC),r1
	mov.b @r1,r2
	tst r2,r2
	bf loc_8c05d2f4
	mov.w @(loc_8c05d2e6,PC),r0
	mov.b @(r0,r4),r5
	tst r5,r5
	bt loc_8c05d28e
	mov.w @(loc_8c05d2d2,PC),r0
	mov 0x02,r3
	mov.b @(r0,r4),r2
	extu.b r2,r2
	neg r2,r2
	shad r2,r3
	tst r5,r3
	bf loc_8c05d2f4

loc_8c05d28e:
	mov.w @(loc_8c05d2ca,PC),r0
	mov.l @(r0,r4),r5
	mov.w @(loc_8c05d2d0,PC),r0
	fmov @(r0,r4),fr4
	mov.w @(loc_8c05d2d2,PC),r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bf.s loc_8c05d2a2
	mov 0x34,r0
	fneg fr4

loc_8c05d2a2:
	fmov @(r0,r4),fr5
	fmov @(r0,r5),fr3
	mov.w @(loc_8c05d2d2,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c05d2b6
	fadd fr3,fr4
	mov 0x34,r0
	fmov fr4,fr5
	fmov @(r0,r4),fr4

loc_8c05d2b6:
	fsub fr4,fr5
	fldi0 fr3
	fcmp/gt fr3,fr5
	bf loc_8c05d2f4
	mov.w @(loc_8c05d2d6,PC),r0
	mov.w @(r0,r4),r2
	mov.w @(loc_8c05d2e2,PC),r0
	mov.w r2,@(r0,r4)
	rts
	mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05d2ca:
	#data 0x020c
loc_8c05d2cc:
	#data 0x013e
loc_8c05d2ce:
	#data 0x04b4
loc_8c05d2d0:
	#data 0x044c
loc_8c05d2d2:
	#data 0x01d2
loc_8c05d2d4:
	#data 0x0800
loc_8c05d2d6:
	#data 0x0454
loc_8c05d2d8:
	#data 0x1000
loc_8c05d2da:
	#data 0x2000
loc_8c05d2dc:
	#data 0x043d
loc_8c05d2de:
	#data 0x01d0
loc_8c05d2e0:
	#data 0x0450
loc_8c05d2e2:
	#data 0x04dc
loc_8c05d2e4:
	#data 0x04a2
loc_8c05d2e6:
	#data 0x01fd
	#align4
loc_8c05d2e8:
	#data loc_8c05cb3e
loc_8c05d2ec:
	#data 0x3fd55555
loc_8c05d2f0:
	#data 0x8c28963c

;==============================================
loc_8c05d2f4:
	mov.w @(loc_8c05d3e2,PC),r0
	mov 0x00,r2
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	mov.w @(loc_8c05d3e4,PC),r0
	mov.w r2,@(r0,r4)
	mov 0x01,r0
	rts
	nop

;==============================================
loc_8c05d308:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c05d400,PC),r3
	jsr @r3
	mov 0x06,r5
	tst r0,r0
	bf loc_8c05d324
	bra loc_8c05d3d6
	mov 0x00,r0

loc_8c05d324:
	mov.l @(loc_8c05d404,PC),r11
	mov r13,r5
	mov 0x00,r6
	jsr @r11
	mov r14,r4
	mov.w @(loc_8c05d3e6,PC),r0
	mov r13,r5
	mov 0x03,r6
	mov.l @(r0,r14),r12
	jsr @r11
	mov r14,r4
	mov.w @(loc_8c05d3e8,PC),r0
	mov r13,r5
	mov 0x01,r6
	mov.b @(r0,r12),r3
	mov.w @(loc_8c05d3ea,PC),r0
	extu.b r3,r3
	lds r3,fpul
	fmov @(r0,r14),fr2
	mova @(0xBC,PC),r0
	fmov @r0,fr0
	float fpul,fr3
	mov.w @(loc_8c05d3ec,PC),r0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r11
	mov r14,r4
	mov.w @(loc_8c05d3ea,PC),r0
	mov.l @(r0,r14),r3
	add 0xA0,r0
	mov.l r3,@(r0,r14)
	add 0xF8,r0
	fmov @(r0,r14),fr4
	mov.w @(loc_8c05d3ee,PC),r0
	mov.b @(r0,r12),r3
	tst r3,r3
	bf.s loc_8c05d372
	mov 0x34,r0
	fneg fr4

loc_8c05d372:
	fmov @(r0,r12),fr3
	fadd fr3,fr4
	fmov @(r0,r14),fr3
	fcmp/gt fr4,fr3
	bf loc_8c05d386
	mov.w @(loc_8c05d3f2,PC),r4
	mov 0x00,r2
	mov.w @(loc_8c05d3f0,PC),r0
	bra loc_8c05d38e
	mov.l r2,@(r0,r14)

loc_8c05d386:
	mov.w @(loc_8c05d3f0,PC),r0
	mov 0x01,r2
	mov.w @(loc_8c05d3f4,PC),r4
	mov.l r2,@(r0,r14)

loc_8c05d38e:
	mov.w @(loc_8c05d3f6,PC),r0
	mov.l @(r0,r14),r3
	cmp/pz r3
	bt.s loc_8c05d39c
	mov.l @(r0,r14),r3
	mov.w @(loc_8c05d3f8,PC),r1
	or r1,r4

loc_8c05d39c:
	cmp/pl r3
	bf loc_8c05d3a4
	mov.w @(loc_8c05d3fa,PC),r1
	or r1,r4

loc_8c05d3a4:
	mov.w @(loc_8c05d3e2,PC),r0
	mov r13,r5
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	extu.w r4,r3
	mov.w @(loc_8c05d3fc,PC),r0
	mov.b @(r0,r14),r2
	mov.w @(loc_8c05d3fe,PC),r0
	extu.b r2,r2
	mov.l r2,@(r0,r14)
	add 0x04,r0
	mov.l r3,@(r0,r14)
	mov 0xB4,r3
	mov.w @(loc_8c05d3e4,PC),r0
	mov.w r4,@(r0,r14)
	add 0xC6,r0
	mov.b r3,@(r0,r14)
	mov r14,r4
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c05d40c
	mov.l @r15+,r14

loc_8c05d3d6:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05d3e2:
	#data 0x043d
loc_8c05d3e4:
	#data 0x04dc
loc_8c05d3e6:
	#data 0x020c
loc_8c05d3e8:
	#data 0x013e
loc_8c05d3ea:
	#data 0x04b4
loc_8c05d3ec:
	#data 0x044c
loc_8c05d3ee:
	#data 0x01d2
loc_8c05d3f0:
	#data 0x0458
loc_8c05d3f2:
	#data 0x0800
loc_8c05d3f4:
	#data 0x0400
loc_8c05d3f6:
	#data 0x0454
loc_8c05d3f8:
	#data 0x1000
loc_8c05d3fa:
	#data 0x2000
loc_8c05d3fc:
	#data 0x01d0
loc_8c05d3fe:
	#data 0x0450
	#align4
loc_8c05d400:
	#data loc_8c05cc14
loc_8c05d404:
	#data loc_8c05cb3e
loc_8c05d408:
	#data 0x3fd55555

;==============================================
loc_8c05d40c:
	mov.w @(loc_8c05d4c6,PC),r0
	mov.b @(r0,r4),r3
	mov.w @(loc_8c05d4c8,PC),r0
	extu.b r3,r3
	mov.l @(r0,r4),r2
	cmp/eq r2,r3
	bf loc_8c05d496
	mov.w @(loc_8c05d4ca,PC),r0
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	exts.b r3,r3
	tst r3,r3
	bt loc_8c05d496
	mov.l @(loc_8c05d4e0,PC),r1
	mov.b @r1,r2
	tst r2,r2
	bf loc_8c05d496
	mov.w @(loc_8c05d4cc,PC),r0
	mov 0x02,r5
	mov.b @(r0,r4),r6
	add 0xD5,r0
	mov.b @(r0,r4),r3
	extu.b r3,r3
	neg r3,r3
	shad r3,r5
	mov.w @(loc_8c05d4ce,PC),r3
	mov r3,r0
	nop
	add 0x54,r0
	mov.l @(r0,r4),r2
	tst r3,r2
	bt loc_8c05d452
	mov 0x03,r2
	xor r2,r5

loc_8c05d452:
	tst r6,r6
	bt loc_8c05d45a
	tst r6,r5
	bf loc_8c05d496

loc_8c05d45a:
	mov.w @(loc_8c05d4d0,PC),r0
	mov.l @(r0,r4),r5
	mov.w @(loc_8c05d4d2,PC),r0
	fmov @(r0,r4),fr4
	mov.w @(loc_8c05d4d4,PC),r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bf.s loc_8c05d46e
	mov 0x34,r0
	fneg fr4

loc_8c05d46e:
	fmov @(r0,r4),fr5
	fmov @(r0,r5),fr3
	mov.w @(loc_8c05d4d6,PC),r0
	mov.l @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c05d482
	fadd fr3,fr4
	mov 0x34,r0
	fmov fr4,fr5
	fmov @(r0,r4),fr4

loc_8c05d482:
	fsub fr4,fr5
	fldi0 fr3
	fcmp/gt fr3,fr5
	bf loc_8c05d496
	mov.w @(loc_8c05d4d8,PC),r0
	mov.w @(r0,r4),r2
	mov.w @(loc_8c05d4da,PC),r0
	mov.w r2,@(r0,r4)
	rts
	mov 0x00,r0

loc_8c05d496:
	mov.w @(loc_8c05d4dc,PC),r0
	mov 0x00,r2
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	mov.w @(loc_8c05d4da,PC),r0
	mov.w r2,@(r0,r4)
	mov 0x01,r0
	rts
	nop

;==============================================
loc_8c05d4aa:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c05d4e4,PC),r3
	jsr @r3
	mov 0x06,r5
	tst r0,r0
	bf loc_8c05d4e8
	bra loc_8c05d582
	mov 0x00,r0

;##############################################
loc_8c05d4c6:
	#data 0x01d0
loc_8c05d4c8:
	#data 0x0450
loc_8c05d4ca:
	#data 0x04a2
loc_8c05d4cc:
	#data 0x01fd
loc_8c05d4ce:
	#data 0x0400
loc_8c05d4d0:
	#data 0x020c
loc_8c05d4d2:
	#data 0x044c
loc_8c05d4d4:
	#data 0x01d2
loc_8c05d4d6:
	#data 0x0458
loc_8c05d4d8:
	#data 0x0454
loc_8c05d4da:
	#data 0x04dc
loc_8c05d4dc:
	#data 0x043d
	#align4
loc_8c05d4e0:
	#data 0x8c28963c
loc_8c05d4e4:
	#data loc_8c05cc14

;----------------------------------------------
loc_8c05d4e8:
	mov.l @(loc_8c05d5a8,PC),r11
	mov r13,r5
	mov 0x00,r6
	jsr @r11
	mov r14,r4
	mov.w @(loc_8c05d58e,PC),r0
	mov r13,r5
	mov 0x03,r6
	mov.l @(r0,r14),r12
	jsr @r11
	mov r14,r4
	mov.w @(loc_8c05d590,PC),r0
	mov r13,r5
	mov 0x04,r6
	mov.b @(r0,r12),r3
	mov.w @(loc_8c05d592,PC),r0
	extu.b r3,r3
	lds r3,fpul
	fmov @(r0,r14),fr2
	mova @(0x9C,PC),r0
	fmov @r0,fr0
	float fpul,fr3
	mov.w @(loc_8c05d594,PC),r0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r11
	mov r14,r4
	mov.w @(loc_8c05d592,PC),r0
	fmov @(r0,r14),fr3
	add 0x9C,r0
	fmov fr3,@(r0,r14)
	add 0xFC,r0
	fmov @(r0,r14),fr4
	mov.w @(loc_8c05d596,PC),r0
	mov.b @(r0,r12),r3
	tst r3,r3
	bf.s loc_8c05d536
	mov 0x34,r0
	fneg fr4

loc_8c05d536:
	fmov @(r0,r12),fr3
	fadd fr3,fr4
	fmov @(r0,r14),fr3
	fcmp/gt fr4,fr3
	bf loc_8c05d54a
	mov.w @(loc_8c05d59a,PC),r4
	mov 0x00,r2
	mov.w @(loc_8c05d598,PC),r0
	bra loc_8c05d552
	mov.l r2,@(r0,r14)

loc_8c05d54a:
	mov.w @(loc_8c05d598,PC),r0
	mov 0x01,r2
	mov.w @(loc_8c05d59c,PC),r4
	mov.l r2,@(r0,r14)

loc_8c05d552:
	mov.w @(loc_8c05d59e,PC),r0
	mov r13,r5
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	extu.w r4,r3
	mov.w @(loc_8c05d5a0,PC),r0
	mov.b @(r0,r14),r2
	mov.w @(loc_8c05d5a2,PC),r0
	mov.b r2,@(r0,r14)
	add 0xB1,r0
	mov.l r3,@(r0,r14)
	mov 0xB4,r3
	mov.w @(loc_8c05d5a4,PC),r0
	mov.w r4,@(r0,r14)
	add 0xC6,r0
	mov.b r3,@(r0,r14)
	mov r14,r4
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c05d5b0
	mov.l @r15+,r14

loc_8c05d582:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05d58e:
	#data 0x020c
loc_8c05d590:
	#data 0x013e
loc_8c05d592:
	#data 0x04b4
loc_8c05d594:
	#data 0x044c
loc_8c05d596:
	#data 0x01d2
loc_8c05d598:
	#data 0x0458
loc_8c05d59a:
	#data 0x0800
loc_8c05d59c:
	#data 0x0400
loc_8c05d59e:
	#data 0x043d
loc_8c05d5a0:
	#data 0x01d0
loc_8c05d5a2:
	#data 0x04a3
loc_8c05d5a4:
	#data 0x04dc
	#align4
loc_8c05d5a8:
	#data loc_8c05cb3e
loc_8c05d5ac:
	#data 0x3fd55555

;==============================================
loc_8c05d5b0:
	mov.w @(loc_8c05d690,PC),r0
	mov.b @(r0,r4),r3
	mov.w @(loc_8c05d692,PC),r0
	extu.b r3,r3
	mov.b @(r0,r4),r2
	cmp/eq r2,r3
	bf.s loc_8c05d664
	mov 0x00,r7
	mov.w @(loc_8c05d694,PC),r0
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	exts.b r3,r3
	tst r3,r3
	bt loc_8c05d664
	mov.l @(loc_8c05d6b0,PC),r1
	mov.b @r1,r2
	tst r2,r2
	bf loc_8c05d664
	mov.w @(loc_8c05d696,PC),r0
	mov 0x02,r5
	mov.b @(r0,r4),r6
	add 0xD5,r0
	mov.b @(r0,r4),r3
	extu.b r3,r3
	neg r3,r3
	shad r3,r5
	mov.w @(loc_8c05d698,PC),r3
	mov r3,r0
	nop
	add 0x54,r0
	mov.l @(r0,r4),r2
	tst r3,r2
	bt loc_8c05d5f8
	mov 0x03,r2
	xor r2,r5

loc_8c05d5f8:
	tst r6,r6
	bt loc_8c05d600
	tst r6,r5
	bf loc_8c05d664

loc_8c05d600:
	mov.w @(loc_8c05d69a,PC),r0
	mov.l @(r0,r4),r5
	mov.w @(loc_8c05d69c,PC),r0
	fmov @(r0,r4),fr4
	mov.w @(loc_8c05d69e,PC),r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bf.s loc_8c05d614
	mov 0x34,r0
	fneg fr4

loc_8c05d614:
	fmov @(r0,r4),fr5
	fmov @(r0,r5),fr3
	mov.w @(loc_8c05d6a0,PC),r0
	mov.l @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c05d628
	fadd fr3,fr4
	mov 0x34,r0
	fmov fr4,fr5
	fmov @(r0,r4),fr4

loc_8c05d628:
	fsub fr4,fr5
	fldi0 fr3
	fcmp/gt fr5,fr3
	bt loc_8c05d664
	mov.w @(loc_8c05d6a2,PC),r0
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	fsub fr3,fr2
	fmov @(r0,r4),fr3
	mova @(loc_8c05d6b4,PC),r0
	fmov fr2,fr4
	fsub fr3,fr4
	fmov @r0,fr3
	fcmp/gt fr4,fr3
	bf.s loc_8c05d64c
	mov r7,r6
	mov.w @(loc_8c05d6a4,PC),r6

loc_8c05d64c:
	mova @(loc_8c05d6b8,PC),r0
	fmov @r0,fr3
	fcmp/gt fr3,fr4
	bf loc_8c05d656
	mov.w @(loc_8c05d6a6,PC),r6

loc_8c05d656:
	mov.w @(loc_8c05d6a8,PC),r0
	mov.w @(r0,r4),r2
	mov.w @(loc_8c05d6aa,PC),r0
	or r2,r6
	mov.w r6,@(r0,r4)
	rts
	mov 0x00,r0

loc_8c05d664:
	mov.w @(loc_8c05d6ac,PC),r0
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	mov.w @(loc_8c05d6aa,PC),r0
	mov.w r7,@(r0,r4)
	mov 0x01,r0
	rts
	nop

;==============================================
loc_8c05d676:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c05d6bc,PC),r3
	jsr @r3
	mov 0x00,r5
	tst r0,r0
	bf loc_8c05d6c0
	bra loc_8c05d70a
	mov 0x00,r0

;##############################################
loc_8c05d690:
	#data 0x01d0
loc_8c05d692:
	#data 0x04a3
loc_8c05d694:
	#data 0x04a2
loc_8c05d696:
	#data 0x01fd
loc_8c05d698:
	#data 0x0400
loc_8c05d69a:
	#data 0x020c
loc_8c05d69c:
	#data 0x044c
loc_8c05d69e:
	#data 0x01d2
loc_8c05d6a0:
	#data 0x0458
loc_8c05d6a2:
	#data 0x0450
loc_8c05d6a4:
	#data 0x2000
loc_8c05d6a6:
	#data 0x1000
loc_8c05d6a8:
	#data 0x0454
loc_8c05d6aa:
	#data 0x04dc
loc_8c05d6ac:
	#data 0x043d
	#align4
loc_8c05d6b0:
	#data 0x8c28963c
loc_8c05d6b4:
	#data 0xc24db6db
loc_8c05d6b8:
	#data 0x424db6db
loc_8c05d6bc:
	#data loc_8c05cc14

;----------------------------------------------
loc_8c05d6c0:
	mov.l @(loc_8c05d804,PC),r3
	mov r13,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05d804,PC),r2
	mov r13,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c05d7e6,PC),r0
	mov.l @(loc_8c05d808,PC),r3
	mov.l @(r0,r14),r12
	mov.l @(loc_8c05d80c,PC),r2
	shll2 r12
	shll2 r12
	shll r12
	shll r12
	jsr @r2
	add r3,r12
	and 0x1F,r0
	mov r13,r5
	shll r0
	mov r14,r4
	mov.w @(r0,r12),r3
	mova @(0x11C,PC),r0
	fmov @r0,fr2
	lds r3,fpul
	mov.w @(loc_8c05d7e8,PC),r0
	float fpul,fr3
	fmul fr2,fr3
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c05d84c
	mov.l @r15+,r14

loc_8c05d70a:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05d714:
	mov.w @(loc_8c05d7ea,PC),r0
	mov.b @(r0,r4),r3
	mov.w @(loc_8c05d7ec,PC),r0
	extu.b r3,r3
	mov.l @(r0,r4),r2
	cmp/eq r2,r3
	bf loc_8c05d7ba
	mov.w @(loc_8c05d7ee,PC),r0
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	exts.b r3,r3
	tst r3,r3
	bt loc_8c05d7ba
	mov.l @(loc_8c05d814,PC),r1
	mov.b @r1,r2
	tst r2,r2
	bf loc_8c05d7ba
	mov.w @(loc_8c05d7f0,PC),r0
	mov 0x02,r5
	mov.b @(r0,r4),r6
	add 0xD5,r0
	mov.b @(r0,r4),r3
	add 0x01,r0
	mov.b @(r0,r4),r2
	extu.b r3,r3
	tst r2,r2
	neg r3,r3
	bt.s loc_8c05d754
	shad r3,r5
	mov 0x03,r2
	xor r2,r5

loc_8c05d754:
	tst r6,r6
	bt loc_8c05d75c
	tst r6,r5
	bf loc_8c05d7ba

loc_8c05d75c:
	mov.w @(loc_8c05d7f2,PC),r0
	mov.l @(r0,r4),r5
	mov.w @(loc_8c05d7e8,PC),r0
	fmov @(r0,r4),fr4
	mov.w @(loc_8c05d7f4,PC),r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bf.s loc_8c05d770
	mov 0x34,r0
	fneg fr4

loc_8c05d770:
	fmov @(r0,r4),fr5
	fmov @(r0,r5),fr3
	mov.w @(loc_8c05d7f6,PC),r0
	mov.l @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c05d784
	fadd fr3,fr4
	mov 0x34,r0
	fmov fr4,fr5
	fmov @(r0,r4),fr4

loc_8c05d784:
	fsub fr4,fr5
	fldi0 fr3
	fcmp/gt fr3,fr5
	bf loc_8c05d7ba
	mov.w @(loc_8c05d7f4,PC),r0
	mov.b @(r0,r4),r2
	mov.w @(loc_8c05d7f8,PC),r0
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	mov.l @(r0,r4),r1
	shll8 r2
	mov.w @(loc_8c05d7fa,PC),r3
	shll2 r2
	mov.w @(loc_8c05d7fc,PC),r0
	xor r1,r2
	mov 0xF6,r1
	and r3,r2
	shad r1,r2
	mov.b r2,@(r0,r4)
	mov.w @(loc_8c05d7f8,PC),r0
	mov.w @(r0,r4),r1
	mov.w @(loc_8c05d7fe,PC),r0
	mov.w r1,@(r0,r4)
	rts
	mov 0x00,r0

loc_8c05d7ba:
	mov.w @(loc_8c05d800,PC),r0
	mov 0x00,r2
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	mov.w @(loc_8c05d7fe,PC),r0
	mov.w r2,@(r0,r4)
	mov 0x01,r0
	rts
	nop

;==============================================
loc_8c05d7ce:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05d818,PC),r3
	jsr @r3
	mov 0x00,r5
	tst r0,r0
	bf loc_8c05d81c
	bra loc_8c05d844
	mov 0x00,r0

;##############################################
loc_8c05d7e6:
	#data 0x04b4
loc_8c05d7e8:
	#data 0x044c
loc_8c05d7ea:
	#data 0x01d0
loc_8c05d7ec:
	#data 0x0454
loc_8c05d7ee:
	#data 0x04a2
loc_8c05d7f0:
	#data 0x01fd
loc_8c05d7f2:
	#data 0x020c
loc_8c05d7f4:
	#data 0x01d2
loc_8c05d7f6:
	#data 0x0458
loc_8c05d7f8:
	#data 0x0450
loc_8c05d7fa:
	#data 0x0400
loc_8c05d7fc:
	#data 0x01d3
loc_8c05d7fe:
	#data 0x04dc
loc_8c05d800:
	#data 0x043d
	#align4
loc_8c05d804:
	#data loc_8c05cb3e
loc_8c05d808:
	#data bank15.loc_8c151488
loc_8c05d80c:
	#data bank03.loc_8c03319e
loc_8c05d810:
	#data 0x3fd55555
loc_8c05d814:
	#data 0x8c28963c
loc_8c05d818:
	#data loc_8c05cc14

;----------------------------------------------
loc_8c05d81c:
	mov.l @(loc_8c05d958,PC),r3
	mov r13,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05d958,PC),r2
	mov r13,r5
	mov 0x03,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c05d93a,PC),r0
	mov r13,r5
	mov r14,r4
	fmov @(r0,r14),fr3
	mov.w @(loc_8c05d93c,PC),r0
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c05d84c
	mov.l @r15+,r14

loc_8c05d844:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c05d84c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c05d93e,PC),r0
	mov r4,r14
	mov.w @(loc_8c05d940,PC),r3
	mov.l @(loc_8c05d95c,PC),r1
	mov.l r5,@r15
	mov.l @(r0,r14),r4
	mov.w @(loc_8c05d93c,PC),r0
	add r4,r3
	mov.b @r3,r3
	fmov @(r0,r14),fr2
	extu.b r3,r3
	lds r3,fpul
	float fpul,fr3
	lds r1,fpul
	fsts fpul,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	fmov @(r0,r14),fr4
	mov.w @(loc_8c05d942,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf.s loc_8c05d882
	mov 0x34,r0
	fneg fr4

loc_8c05d882:
	fmov @(r0,r4),fr3
	fadd fr3,fr4
	fmov @(r0,r14),fr3
	fcmp/gt fr4,fr3
	bf loc_8c05d8b4
	mov.w @(loc_8c05d944,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x26,r0
	bf loc_8c05d89e
	mov.w @(loc_8c05d942,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c05d8c6

loc_8c05d89e:
	mov.w @(loc_8c05d948,PC),r0
	mov 0x00,r3
	mov.w @(loc_8c05d946,PC),r2
	mov.l r2,@(r0,r14)
	add 0x08,r0
	mov.l r3,@(r0,r14)
	mov.w @(loc_8c05d942,PC),r0
	mov.b @(r0,r14),r2
	add 0x01,r0
	bra loc_8c05d8ec
	mov.b r2,@(r0,r14)

loc_8c05d8b4:
	mov.w @(loc_8c05d944,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x26,r0
	bf loc_8c05d8d0
	mov.w @(loc_8c05d942,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c05d8d0

loc_8c05d8c6:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c05d8d0:
	mov.w @(loc_8c05d94a,PC),r3
	mov r3,r0
	nop
	add 0x50,r0
	mov.w @(loc_8c05d94c,PC),r1
	mov.l r3,@(r0,r14)
	add 0x08,r0
	mov 0x01,r2
	mov.l r2,@(r0,r14)
	add r14,r1
	mov.w @(loc_8c05d942,PC),r0
	mov.b @(r0,r14),r0
	xor 0x01,r0
	mov.b r0,@r1

loc_8c05d8ec:
	mov.w @(loc_8c05d94e,PC),r0
	mov 0x01,r5
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	add 0xDF,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	mov 0x01,r3
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c05d950,PC),r0
	mov.l r3,@(r0,r14)
	add 0xFC,r0
	mov.w @(r0,r14),r2
	mov 0xB4,r3
	mov.w @(loc_8c05d952,PC),r0
	mov.w r2,@(r0,r14)
	add 0xC6,r0
	mov.b r3,@(r0,r14)
	add 0x3A,r0
	mov.w @(r0,r14),r2
	mov.w @(loc_8c05d954,PC),r0
	mov.l @(loc_8c05d960,PC),r3
	mov.w r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05d954,PC),r0
	mov 0x00,r2
	mov r14,r4
	mov.w r2,@(r0,r14)
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c05d714
	mov.l @r15+,r14

loc_8c05d932:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;##############################################
loc_8c05d93a:
	#data 0x04b4
loc_8c05d93c:
	#data 0x044c
loc_8c05d93e:
	#data 0x020c
loc_8c05d940:
	#data 0x013e
loc_8c05d942:
	#data 0x01d2
loc_8c05d944:
	#data 0x0440
loc_8c05d946:
	#data 0x0800
loc_8c05d948:
	#data 0x0450
loc_8c05d94a:
	#data 0x0400
loc_8c05d94c:
	#data 0x01d3
loc_8c05d94e:
	#data 0x043d
loc_8c05d950:
	#data 0x0454
loc_8c05d952:
	#data 0x04dc
loc_8c05d954:
	#data 0x034a
	#align4
loc_8c05d958:
	#data loc_8c05cb3e
loc_8c05d95c:
	#data 0x3fd55555
loc_8c05d960:
	#data loc_8c0532a8

;==============================================
loc_8c05d964:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05da68,PC),r3
	jsr @r3
	mov 0x00,r5
	tst r0,r0
	bf loc_8c05d97c
	bra loc_8c05d9c8
	mov 0x00,r0

loc_8c05d97c:
	mov.l @(loc_8c05da6c,PC),r3
	mov r13,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05da6c,PC),r2
	mov r13,r5
	mov 0x03,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c05da5c,PC),r0
	mov 0x00,r2
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov 0x0A,r3
	mov.w @(loc_8c05da5e,PC),r0
	mov r3,r5
	fmov @(r0,r14),fr3
	add 0x98,r0
	fmov fr3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov.w @(loc_8c05da60,PC),r0
	fmov fr3,@(r0,r14)
	add 0x04,r0
	mov.l r3,@(r0,r14)
	add 0x04,r0
	mov.l @(loc_8c05da70,PC),r3
	mov.l r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c05ce1c
	mov.l @r15+,r14

loc_8c05d9c8:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05d9d0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05da68,PC),r3
	jsr @r3
	mov 0x00,r5
	tst r0,r0
	bt loc_8c05da18
	mov.l @(loc_8c05da6c,PC),r3
	mov r13,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05da6c,PC),r2
	mov r13,r5
	mov 0x03,r6
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c05da74,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c05da18
	mov.w @(loc_8c05da62,PC),r0
	mov.b @(r0,r14),r4
	tst r4,r4
	bt loc_8c05da1c
	mov.w @(loc_8c05da64,PC),r0
	mov 0x01,r3
	mov.b @(r0,r14),r2
	extu.b r2,r2
	shad r2,r3
	tst r4,r3
	bt loc_8c05da1c

loc_8c05da18:
	bra loc_8c05da54
	mov 0x00,r0

loc_8c05da1c:
	mov.w @(loc_8c05da5c,PC),r0
	mov 0x00,r2
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	add 0x77,r0
	fmov @(r0,r14),fr3
	add 0x98,r0
	mov 0x0B,r3
	fmov fr3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov r3,r5
	mov.w @(loc_8c05da60,PC),r0
	fmov fr3,@(r0,r14)
	add 0x04,r0
	mov.l r3,@(r0,r14)
	add 0x04,r0
	mov.l @(loc_8c05da70,PC),r3
	mov.l r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c05da78
	mov.l @r15+,r14

loc_8c05da54:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05da5c:
	#data 0x043d
loc_8c05da5e:
	#data 0x04b4
loc_8c05da60:
	#data 0x0450
loc_8c05da62:
	#data 0x01fd
loc_8c05da64:
	#data 0x01d2
	#align4
loc_8c05da68:
	#data loc_8c05cc14
loc_8c05da6c:
	#data loc_8c05cb3e
loc_8c05da70:
	#data loc_8c0532a8
loc_8c05da74:
	#data loc_8c05c41a

;==============================================
loc_8c05da78:
	mov.w @(loc_8c05db8c,PC),r0
	mov.b @(r0,r4),r3
	mov.w @(loc_8c05db8e,PC),r0
	extu.b r3,r3
	mov.l @(r0,r4),r2
	cmp/eq r2,r3
	bf loc_8c05dae0
	mov.w @(loc_8c05db90,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x13,r0
	bt loc_8c05daa6
	mov.w @(loc_8c05db92,PC),r0
	mov.b @(r0,r4),r5
	tst r5,r5
	bt loc_8c05daa6
	mov.w @(loc_8c05db94,PC),r0
	mov 0x01,r3
	mov.b @(r0,r4),r2
	extu.b r2,r2
	shad r2,r3
	tst r5,r3
	bf loc_8c05dae0

loc_8c05daa6:
	mov.w @(loc_8c05db96,PC),r0
	fmov @(r0,r4),fr3
	mov 0x34,r0
	fmov @(r0,r4),fr4
	fsub fr3,fr4
	fldi0 fr3
	fcmp/gt fr4,fr3
	bf loc_8c05dab8
	fneg fr4

loc_8c05dab8:
	mov.w @(loc_8c05db98,PC),r0
	fldi0 fr2
	fmov @(r0,r4),fr3
	fsub fr4,fr3
	fcmp/gt fr2,fr3
	bf.s loc_8c05dae0
	fmov fr3,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r4),fr3
	mov 0x01,r2
	mov.w @(loc_8c05db96,PC),r0
	fmov fr3,@(r0,r4)
	add 0x08,r0
	mov.w @(r0,r4),r3
	mov.w @(loc_8c05db9a,PC),r0
	mov.w r3,@(r0,r4)
	mov.w @(loc_8c05db9c,PC),r0
	mov.b r2,@(r0,r4)
	rts
	mov 0x00,r0

loc_8c05dae0:
	mov.w @(loc_8c05db9e,PC),r0
	mov 0x00,r2
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	mov.w @(loc_8c05db9a,PC),r0
	mov.w r2,@(r0,r4)
	mov 0x01,r0
	rts
	nop

;==============================================
loc_8c05daf4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05dba8,PC),r3
	jsr @r3
	mov 0x00,r5
	tst r0,r0
	bf loc_8c05db0c
	bra loc_8c05db6a
	mov 0x00,r0

loc_8c05db0c:
	mov.l @(loc_8c05dbac,PC),r3
	mov r13,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05dbac,PC),r2
	mov r13,r5
	mov 0x03,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c05dba0,PC),r0
	mov 0x00,r2
	mov 0x0A,r5
	mov.l @(r0,r14),r4
	mov.w @(loc_8c05db9e,PC),r0
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c05dba2,PC),r0
	mov.b @(r0,r4),r3
	mov.w @(loc_8c05dba4,PC),r0
	extu.b r3,r3
	lds r3,fpul
	mov 0x0A,r3
	fmov @(r0,r14),fr2
	mova @(0x70,PC),r0
	fmov @r0,fr0
	float fpul,fr3
	mov.w @(loc_8c05db98,PC),r0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	add 0x08,r0
	mov.l r3,@(r0,r14)
	add 0x04,r0
	mov.l r2,@(r0,r14)
	add 0x4A,r0
	mov 0xB4,r3
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c05dbb4,PC),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c05d0d6
	mov.l @r15+,r14

loc_8c05db6a:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05db72:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c05dba8,PC),r3
	jsr @r3
	mov 0x07,r5
	tst r0,r0
	bf loc_8c05dbb8
	bra loc_8c05dc4c
	mov 0x00,r0

;##############################################
loc_8c05db8c:
	#data 0x01d0
loc_8c05db8e:
	#data 0x0454
loc_8c05db90:
	#data 0x0440
loc_8c05db92:
	#data 0x01fd
loc_8c05db94:
	#data 0x01d2
loc_8c05db96:
	#data 0x0450
loc_8c05db98:
	#data 0x044c
loc_8c05db9a:
	#data 0x04dc
loc_8c05db9c:
	#data 0x01d3
loc_8c05db9e:
	#data 0x043d
loc_8c05dba0:
	#data 0x020c
loc_8c05dba2:
	#data 0x013e
loc_8c05dba4:
	#data 0x04b4
	#align4
loc_8c05dba8:
	#data loc_8c05cc14
loc_8c05dbac:
	#data loc_8c05cb3e
loc_8c05dbb0:
	#data 0x3fd55555
loc_8c05dbb4:
	#data loc_8c0532a8

;----------------------------------------------
loc_8c05dbb8:
	mov.l @(loc_8c05dd34,PC),r12
	mov r13,r5
	mov 0x00,r6
	jsr @r12
	mov r14,r4
	mov r13,r5
	mov 0x01,r6
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05dd22,PC),r0
	mov.l @(r0,r14),r3
	mov 0x22,r0
	shar r3
	shar r3
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c05dd22,PC),r0
	mov.w @(loc_8c05dd24,PC),r3
	mov.l @(r0,r14),r2
	add 0xA4,r0
	shll8 r2
	mov.l r2,@(r0,r14)
	mov.l @(r0,r14),r1
	tst r3,r1
	bt.s loc_8c05dc02
	mov 0x03,r6
	mov.w @(loc_8c05dd26,PC),r0
	mov.b @(r0,r14),r2
	mov.w @(loc_8c05dd28,PC),r0
	extu.b r2,r2
	mov r2,r1
	shll r2
	add r1,r2
	mov.l @(r0,r14),r1
	shll8 r2
	shll2 r2
	xor r1,r2
	mov.l r2,@(r0,r14)

loc_8c05dc02:
	mov r13,r5
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05dd2a,PC),r0
	mov 0x1A,r5
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	add 0x77,r0
	fmov @(r0,r14),fr3
	add 0x98,r0
	mov 0x1A,r3
	fmov fr3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov.w @(loc_8c05dd2c,PC),r0
	fmov fr3,@(r0,r14)
	add 0x04,r0
	mov.l r3,@(r0,r14)
	add 0x04,r0
	mov.w @(r0,r14),r2
	mov.w @(loc_8c05dd2e,PC),r0
	mov.w r2,@(r0,r14)
	mov.w @(loc_8c05dd28,PC),r0
	mov.w @(r0,r14),r3
	mov.w @(loc_8c05dd30,PC),r0
	mov.w r3,@(r0,r14)
	mov.l @(loc_8c05dd38,PC),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c05ce1c
	mov.l @r15+,r14

loc_8c05dc4c:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c05dc56:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c05dd34,PC),r3
	mov 0x00,r6
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	jsr @r3
	mov.l @r15,r4
	mov.l @(loc_8c05dd34,PC),r3
	mov 0x03,r6
	mov.l @(0x4,r15),r5
	jsr @r3
	mov.l @r15,r4
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;==============================================
loc_8c05dc78:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c05dd34,PC),r3
	mov 0x00,r6
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	jsr @r3
	mov.l @r15,r4
	mov.l @(loc_8c05dd34,PC),r3
	mov 0x03,r6
	mov.l @(0x4,r15),r5
	jsr @r3
	mov.l @r15,r4
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;==============================================
loc_8c05dc9a:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c05dd34,PC),r3
	mov 0x00,r6
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	jsr @r3
	mov.l @r15,r4
	mov.l @(loc_8c05dd34,PC),r3
	mov 0x03,r6
	mov.l @(0x4,r15),r5
	jsr @r3
	mov.l @r15,r4
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;==============================================
loc_8c05dcbc:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c05dd34,PC),r3
	mov 0x00,r6
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	jsr @r3
	mov.l @r15,r4
	mov.l @(loc_8c05dd34,PC),r3
	mov 0x03,r6
	mov.l @(0x4,r15),r5
	jsr @r3
	mov.l @r15,r4
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;==============================================
loc_8c05dcde:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c05dd34,PC),r3
	mov 0x00,r6
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	jsr @r3
	mov.l @r15,r4
	mov.l @(loc_8c05dd34,PC),r3
	mov 0x03,r6
	mov.l @(0x4,r15),r5
	jsr @r3
	mov.l @r15,r4
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;==============================================
loc_8c05dd00:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c05dd34,PC),r3
	mov 0x00,r6
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	jsr @r3
	mov.l @r15,r4
	mov.l @(loc_8c05dd34,PC),r3
	mov 0x03,r6
	mov.l @(0x4,r15),r5
	jsr @r3
	mov.l @r15,r4
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05dd22:
	#data 0x04b4
loc_8c05dd24:
	#data 0x0c00
loc_8c05dd26:
	#data 0x01d2
loc_8c05dd28:
	#data 0x0458
loc_8c05dd2a:
	#data 0x043d
loc_8c05dd2c:
	#data 0x0450
loc_8c05dd2e:
	#data 0x04dc
loc_8c05dd30:
	#data 0x01fa
	#align4
loc_8c05dd34:
	#data loc_8c05cb3e
loc_8c05dd38:
	#data loc_8c0532a8

;==============================================
loc_8c05dd3c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05de44,PC),r3
	mov r4,r14
	mov.l r5,@r15
	mov 0x00,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c05dd5c
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c05dd5c:
	mov.l @(loc_8c05de48,PC),r3
	mov 0x00,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05de34,PC),r0
	mov.b @(r0,r14),r4
	extu.b r4,r0
	cmp/eq 0x06,r0
	bt.s loc_8c05dd88
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x05,r0
	bt loc_8c05dd88
	mov.w @(loc_8c05de36,PC),r0
	mov 0x01,r3
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c05de38,PC),r0
	mov.b r3,@(r0,r14)

loc_8c05dd88:
	mov 0x01,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05dd92:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05de44,PC),r3
	mov r4,r14
	mov.l r5,@r15
	mov 0x00,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c05ddb2
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c05ddb2:
	mov.l @(loc_8c05de48,PC),r3
	mov 0x00,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05de34,PC),r0
	mov.b @(r0,r14),r4
	extu.b r4,r4
	tst r4,r4
	bt loc_8c05dddc
	mov r4,r0
	nop
	cmp/eq 0x07,r0
	bt loc_8c05dddc
	mov.w @(loc_8c05de36,PC),r0
	mov 0x00,r3
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov.w @(loc_8c05de38,PC),r0
	mov.b r3,@(r0,r14)

loc_8c05dddc:
	mov 0x01,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05dde6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05de4c,PC),r3
	mov r4,r14
	mov.l r5,@r15
	mov 0x00,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c05de8a
	mov.l @(loc_8c05de48,PC),r3
	mov 0x00,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05de48,PC),r3
	mov 0x01,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05de3a,PC),r0
	mov.l @(r0,r14),r0
	cmp/eq 0x00,r0
	bt loc_8c05de28
	mov.w @(loc_8c05de3c,PC),r1
	cmp/eq r1,r0
	bt loc_8c05de2e
	cmp/eq 0x01,r0
	bt loc_8c05de50
	bra loc_8c05de52
	nop

loc_8c05de28:
	mov.w @(loc_8c05de3e,PC),r13
	bra loc_8c05de52
	nop

loc_8c05de2e:
	mov.w @(loc_8c05de40,PC),r13
	bra loc_8c05de52
	nop

;##############################################
loc_8c05de34:
	#data 0x01d0
loc_8c05de36:
	#data 0x041c
loc_8c05de38:
	#data 0x0446
loc_8c05de3a:
	#data 0x04b4
loc_8c05de3c:
	#data 0x00ff
loc_8c05de3e:
	#data 0x2800
loc_8c05de40:
	#data 0x2000
	#align4
loc_8c05de44:
	#data loc_8c05cc1a
loc_8c05de48:
	#data loc_8c05cb3e
loc_8c05de4c:
	#data loc_8c05cc14

;----------------------------------------------
loc_8c05de50:
	mov.w @(loc_8c05df2a,PC),r13

loc_8c05de52:
	mov.w @(loc_8c05df2c,PC),r0
	mov 0x02,r5
	mov.l @(loc_8c05df40,PC),r3
	mov.b @(r0,r14),r2
	mov.w @(loc_8c05df2e,PC),r0
	mov.b r2,@(r0,r14)
	mov.w @(loc_8c05df30,PC),r0
	mov.w r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05df30,PC),r0
	mov 0x00,r2
	extu.w r13,r3
	mov.w r2,@(r0,r14)
	mov.w @(loc_8c05df32,PC),r2
	tst r2,r3
	bt loc_8c05de86
	mov.w @(loc_8c05df34,PC),r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	mov r3,r1
	shll r3
	add r1,r3
	shll8 r3
	shll2 r3
	xor r3,r13

loc_8c05de86:
	mov.w @(loc_8c05df36,PC),r0
	mov.w r13,@(r0,r14)

loc_8c05de8a:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05de96:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05df44,PC),r3
	mov r4,r14
	mov.l r5,@r15
	mov 0x05,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c05df1e
	mov.l @(loc_8c05df48,PC),r3
	mov 0x00,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05df48,PC),r3
	mov 0x01,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05df2c,PC),r0
	mov.l @(r0,r14),r0
	cmp/eq 0x00,r0
	bt loc_8c05ded8
	mov.w @(loc_8c05df38,PC),r1
	cmp/eq r1,r0
	bt loc_8c05dede
	cmp/eq 0x01,r0
	bt loc_8c05dee4
	bra loc_8c05dee6
	nop

loc_8c05ded8:
	mov.w @(loc_8c05df3a,PC),r13
	bra loc_8c05dee6
	nop

loc_8c05dede:
	mov.w @(loc_8c05df3c,PC),r13
	bra loc_8c05dee6
	nop
 
loc_8c05dee4:
	mov.w @(loc_8c05df2a,PC),r13

loc_8c05dee6:
	mov.w @(loc_8c05df2c,PC),r0
	mov 0x0D,r5
	mov.l @(loc_8c05df40,PC),r3
	mov.b @(r0,r14),r2
	mov.w @(loc_8c05df2e,PC),r0
	mov.b r2,@(r0,r14)
	mov.w @(loc_8c05df30,PC),r0
	mov.w r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05df30,PC),r0
	mov 0x00,r2
	extu.w r13,r3
	mov.w r2,@(r0,r14)
	mov.w @(loc_8c05df32,PC),r2
	tst r2,r3
	bt loc_8c05df1a
	mov.w @(loc_8c05df34,PC),r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	mov r3,r1
	shll r3
	add r1,r3
	shll8 r3
	shll2 r3
	xor r3,r13

loc_8c05df1a:
	mov.w @(loc_8c05df36,PC),r0
	mov.w r13,@(r0,r14)

loc_8c05df1e:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05df2a:
	#data 0x2400
loc_8c05df2c:
	#data 0x04b4
loc_8c05df2e:
	#data 0x01d3
loc_8c05df30:
	#data 0x034a
loc_8c05df32:
	#data 0x0c00
loc_8c05df34:
	#data 0x01d2
loc_8c05df36:
	#data 0x04dc
loc_8c05df38:
	#data 0x00ff
loc_8c05df3a:
	#data 0x2800
loc_8c05df3c:
	#data 0x2000
	#align4
loc_8c05df40:
	#data loc_8c0532a8
loc_8c05df44:
	#data loc_8c05cc14
loc_8c05df48:
	#data loc_8c05cb3e

;==============================================
loc_8c05df4c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05e058,PC),r3
	mov r4,r14
	mov.l r5,@r15
	mov 0x05,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c05dfd4
	mov.l @(loc_8c05e05c,PC),r3
	mov 0x00,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05e05c,PC),r3
	mov 0x01,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05e042,PC),r0
	mov.l @(r0,r14),r0
	cmp/eq 0x00,r0
	bt loc_8c05df8e
	mov.w @(loc_8c05e044,PC),r1
	cmp/eq r1,r0
	bt loc_8c05df94
	cmp/eq 0x01,r0
	bt loc_8c05df9a
	bra loc_8c05df9c
	nop

loc_8c05df8e:
	mov.w @(loc_8c05e046,PC),r13
	bra loc_8c05df9c
	nop

loc_8c05df94:
	mov.w @(loc_8c05e048,PC),r13
	bra loc_8c05df9c
	nop

loc_8c05df9a:
	mov.w @(loc_8c05e04a,PC),r13

loc_8c05df9c:
	mov.w @(loc_8c05e042,PC),r0
	mov 0x0D,r5
	mov.l @(loc_8c05e060,PC),r3
	mov.b @(r0,r14),r2
	mov.w @(loc_8c05e04c,PC),r0
	mov.b r2,@(r0,r14)
	mov.w @(loc_8c05e04e,PC),r0
	mov.w r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05e04e,PC),r0
	mov 0x00,r2
	extu.w r13,r3
	mov.w r2,@(r0,r14)
	mov.w @(loc_8c05e050,PC),r2
	tst r2,r3
	bt loc_8c05dfd0
	mov.w @(loc_8c05e052,PC),r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	mov r3,r1
	shll r3
	add r1,r3
	shll8 r3
	shll2 r3
	xor r3,r13

loc_8c05dfd0:
	mov.w @(loc_8c05e054,PC),r0
	mov.w r13,@(r0,r14)

loc_8c05dfd4:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05dfe0:
	mov.w @(loc_8c05e056,PC),r0
	mov 0x10,r3
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(r0,r14),r2
	mov 0x00,r5
	mov.l @(loc_8c05e058,PC),r1
	or r3,r2
	mov.b r2,@(r0,r14)
	jsr @r1
	mov r14,r4
	tst r0,r0
	bt loc_8c05e0a2
	mov.l @(loc_8c05e064,PC),r2
	mov r13,r5
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8c05e0a2
	mov.l @(loc_8c05e05c,PC),r3
	mov r13,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05e05c,PC),r2
	mov r13,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c05e042,PC),r0
	mov.l @(r0,r14),r0
	cmp/eq 0x00,r0
	bt loc_8c05e036
	mov.w @(loc_8c05e044,PC),r1
	cmp/eq r1,r0
	bt loc_8c05e03c
	cmp/eq 0x01,r0
	bt loc_8c05e068
	bra loc_8c05e06a
	nop

loc_8c05e036:
	mov.w @(loc_8c05e046,PC),r13
	bra loc_8c05e06a
	nop

loc_8c05e03c:
	mov.w @(loc_8c05e048,PC),r13
	bra loc_8c05e06a
	nop

;##############################################
loc_8c05e042:
	#data 0x04b4
loc_8c05e044:
	#data 0x00ff
loc_8c05e046:
	#data 0x2800
loc_8c05e048:
	#data 0x2000
loc_8c05e04a:
	#data 0x2400
loc_8c05e04c:
	#data 0x01d3
loc_8c05e04e:
	#data 0x034a
loc_8c05e050:
	#data 0x0c00
loc_8c05e052:
	#data 0x01d2
loc_8c05e054:
	#data 0x04dc
loc_8c05e056:
	#data 0x0495
	#align4
loc_8c05e058:
	#data loc_8c05cc1a
loc_8c05e05c:
	#data loc_8c05cb3e
loc_8c05e060:
	#data loc_8c0532a8
loc_8c05e064:
	#data loc_8c05ccb6

;----------------------------------------------
loc_8c05e068:
	mov.w @(loc_8c05e19a,PC),r13

loc_8c05e06a:
	mov.w @(loc_8c05e19c,PC),r0
	mov 0x0D,r5
	mov.l @(loc_8c05e1b0,PC),r3
	mov.b @(r0,r14),r2
	mov.w @(loc_8c05e19e,PC),r0
	mov.b r2,@(r0,r14)
	mov.w @(loc_8c05e1a0,PC),r0
	mov.w r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05e1a0,PC),r0
	mov 0x00,r2
	extu.w r13,r3
	mov.w r2,@(r0,r14)
	mov.w @(loc_8c05e1a2,PC),r2
	tst r2,r3
	bt loc_8c05e09e
	mov.w @(loc_8c05e1a4,PC),r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	mov r3,r1
	shll r3
	add r1,r3
	shll8 r3
	shll2 r3
	xor r3,r13

loc_8c05e09e:
	mov.w @(loc_8c05e1a6,PC),r0
	mov.w r13,@(r0,r14)

loc_8c05e0a2:
	lds.l @r15+,pr
	mov 0x00,r0
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05e0ac:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05e1b4,PC),r3
	mov r4,r14
	mov.l r5,@r15
	mov 0x04,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c05e0e8
	mov.l @(loc_8c05e1b8,PC),r3
	mov 0x00,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05e1b8,PC),r3
	mov 0x01,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05e19c,PC),r0
	mov 0x02,r3
	mov.b @(r0,r14),r2
	mov.w @(loc_8c05e19e,PC),r0
	mov.b r2,@(r0,r14)
	mov.w @(loc_8c05e1a8,PC),r0
	mov.b @(r0,r14),r2
	or r3,r2
	mov.b r2,@(r0,r14)

loc_8c05e0e8:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05e0f2:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05e1bc,PC),r3
	jsr @r3
	mov 0x04,r5
	tst r0,r0
	bf loc_8c05e10a
	bra loc_8c05e13a
	mov 0x00,r0

loc_8c05e10a:
	mov.l @(loc_8c05e1b8,PC),r3
	mov r13,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05e1b8,PC),r2
	mov r13,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c05e1aa,PC),r0
	mov r13,r5
	mov r14,r4
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c05e19c,PC),r0
	mov.l @(r0,r14),r2
	add 0x98,r0
	mov.l r2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c05e1c4
	mov.l @r15+,r14

loc_8c05e13a:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05e142:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05e1bc,PC),r3
	jsr @r3
	mov 0x04,r5
	tst r0,r0
	bf loc_8c05e15a
	bra loc_8c05e192
	mov 0x00,r0

loc_8c05e15a:
	mov.l @(loc_8c05e1b8,PC),r3
	mov r13,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05e1b8,PC),r2
	mov r13,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c05e1aa,PC),r0
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c05e19c,PC),r0
	mov.l @(loc_8c05e1c0,PC),r3
	mov.l @(r0,r14),r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05e1ac,PC),r1
	mov r13,r5
	mov r14,r4
	add r14,r1
	mov.l r0,@r1
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c05e1c4
	mov.l @r15+,r14

loc_8c05e192:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05e19a:
	#data 0x2400
loc_8c05e19c:
	#data 0x04b4
loc_8c05e19e:
	#data 0x01d3
loc_8c05e1a0:
	#data 0x034a
loc_8c05e1a2:
	#data 0x0c00
loc_8c05e1a4:
	#data 0x01d2
loc_8c05e1a6:
	#data 0x04dc
loc_8c05e1a8:
	#data 0x04a6
loc_8c05e1aa:
	#data 0x043d
loc_8c05e1ac:
	#data 0x044c
	#align4
loc_8c05e1b0:
	#data loc_8c0532a8
loc_8c05e1b4:
	#data loc_8c05cc14
loc_8c05e1b8:
	#data loc_8c05cb3e
loc_8c05e1bc:
	#data loc_8c05cc1a
loc_8c05e1c0:
	#data loc_8c05bfe4

;==============================================
loc_8c05e1c4:
	mov.w @(loc_8c05e2d2,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c05e1e6
	mov.w @(loc_8c05e2d4,PC),r0
	mov.l @(r0,r4),r3
	tst r3,r3
	bf loc_8c05e1e0
	mov.w @(loc_8c05e2d6,PC),r0
	mov.b @(r0,r4),r3
	add 0xFF,r3
	mov.b r3,@(r0,r4)
	rts
	mov 0x01,r0

loc_8c05e1e0:
	mov.l @(r0,r4),r2
	add 0xFF,r2
	mov.l r2,@(r0,r4)

loc_8c05e1e6:
	mov 0x00,r0
	rts
	nop

;==============================================
loc_8c05e1ec:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05e2e0,PC),r3
	jsr @r3
	mov 0x05,r5
	tst r0,r0
	bf loc_8c05e204
	bra loc_8c05e234
	mov 0x00,r0

loc_8c05e204:
	mov.l @(loc_8c05e2e4,PC),r3
	mov r13,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05e2e4,PC),r2
	mov r13,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c05e2d6,PC),r0
	mov r13,r5
	mov r14,r4
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov.w @(loc_8c05e2d8,PC),r0
	mov.l @(r0,r14),r2
	add 0x98,r0
	mov.l r2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c05e1c4
	mov.l @r15+,r14

loc_8c05e234:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05e23c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05e2e4,PC),r3
	mov 0x00,r6
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05e2e4,PC),r3
	mov 0x01,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05e2d8,PC),r0
	mov.l @(r0,r14),r4
	tst r4,r4
	bf loc_8c05e26c
	mov.l @(loc_8c05e2e8,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c05e2ec,PC),r1
	and 0x03,r0
	mov.b @(r0,r1),r4

loc_8c05e26c:
	mov.w @(loc_8c05e2da,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x01,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05e27a:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05e2e4,PC),r3
	mov 0x00,r6
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05e2e4,PC),r3
	mov 0x01,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05e2d8,PC),r0
	mov.l @(r0,r14),r4
	tst r4,r4
	bf loc_8c05e2aa
	mov.l @(loc_8c05e2e8,PC),r2
	jsr @r2
	nop
	mov.l @(loc_8c05e2f0,PC),r1
	and 0x03,r0
	mov.b @(r0,r1),r4

loc_8c05e2aa:
	mov.w @(loc_8c05e2dc,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x01,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05e2b8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c05e2e0,PC),r3
	jsr @r3
	mov 0x04,r5
	tst r0,r0
	bf loc_8c05e2f4
	bra loc_8c05e3ba
	mov 0x00,r0

;##############################################
loc_8c05e2d2:
	#data 0x01a0
loc_8c05e2d4:
	#data 0x044c
loc_8c05e2d6:
	#data 0x043d
loc_8c05e2d8:
	#data 0x04b4
loc_8c05e2da:
	#data 0x045e
loc_8c05e2dc:
	#data 0x04a4
	#align4
loc_8c05e2e0:
	#data loc_8c05cc1a
loc_8c05e2e4:
	#data loc_8c05cb3e
loc_8c05e2e8:
	#data bank03.loc_8c03319e
loc_8c05e2ec:
	#data bank15.loc_8c1515c8
loc_8c05e2f0:
	#data bank15.loc_8c1515cc

;----------------------------------------------
loc_8c05e2f4:
	mov.l @(loc_8c05e438,PC),r12
	mov r13,r5
	mov 0x00,r6
	jsr @r12
	mov r14,r4
	mov r13,r5
	mov 0x03,r6
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05e426,PC),r0
	mov r13,r5
	mov 0x04,r6
	fmov @(r0,r14),fr3
	mov.w @(loc_8c05e428,PC),r0
	fmov fr3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05e426,PC),r0
	mov r13,r5
	mov 0x03,r6
	fmov @(r0,r14),fr3
	add 0x9C,r0
	fmov fr3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05e426,PC),r0
	mov r13,r5
	mov 0x04,r6
	fmov @(r0,r14),fr3
	add 0xA0,r0
	fmov fr3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05e426,PC),r0
	fmov @(r0,r14),fr3
	add 0xA4,r0
	fmov fr3,@(r0,r14)
	add 0xF4,r0
	fmov @(r0,r14),fr2
	fldi0 fr3
	fcmp/eq fr3,fr2
	bt loc_8c05e36c
	mov.w @(loc_8c05e42a,PC),r0
	fmov @(r0,r14),fr5
	add 0xF8,r0
	fmov @(r0,r14),fr6
	fmov fr5,fr4
	fadd fr6,fr5
	fsub fr6,fr4
	fcmp/gt fr5,fr4
	bf loc_8c05e360
	fmov fr4,fr6
	fmov fr5,fr4
	fmov fr6,fr5

loc_8c05e360:
	mov.w @(loc_8c05e42c,PC),r0
	fmov @(r0,r14),fr6
	fcmp/gt fr6,fr4
	bt loc_8c05e39a
	fcmp/gt fr5,fr6
	bt loc_8c05e39a

loc_8c05e36c:
	mov.w @(loc_8c05e42e,PC),r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/eq fr3,fr2
	bt loc_8c05e3aa
	mov.w @(loc_8c05e430,PC),r0
	fmov @(r0,r14),fr5
	add 0xF8,r0
	fmov @(r0,r14),fr6
	fmov fr5,fr4
	fadd fr6,fr5
	fsub fr6,fr4
	fcmp/gt fr5,fr4
	bf loc_8c05e38e
	fmov fr4,fr6
	fmov fr5,fr4
	fmov fr6,fr5

loc_8c05e38e:
	mov.w @(loc_8c05e432,PC),r0
	fmov @(r0,r14),fr6
	fcmp/gt fr6,fr4
	bt loc_8c05e39a
	fcmp/gt fr5,fr6
	bf loc_8c05e3aa

loc_8c05e39a:
	lds.l @r15+,pr
	mov r13,r5
	mov 0x00,r6
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c05ec1e
	mov.l @r15+,r14

loc_8c05e3aa:
	lds.l @r15+,pr
	mov r13,r5
	mov 0x01,r6
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c05ec1e
	mov.l @r15+,r14

loc_8c05e3ba:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05e3c4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05e43c,PC),r3
	mov r5,r13
	mov r4,r14
	jsr @r3
	mov 0x04,r5
	tst r0,r0
	bf loc_8c05e3de
	bra loc_8c05e41c
	mov 0x00,r0

loc_8c05e3de:
	mov.l @(loc_8c05e438,PC),r3
	mov r13,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05e438,PC),r2
	mov r13,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c05e426,PC),r0
	mov.l @(r0,r14),r3
	mov.w @(loc_8c05e428,PC),r0
	mov.l r3,@(r0,r14)
	mov.w @(loc_8c05e434,PC),r0
	mov.l @(loc_8c05e440,PC),r3
	mov.l @(r0,r14),r2
	mov.w @(loc_8c05e428,PC),r0
	mov.l r2,@r15
	mov r2,r5
	mov.l @(r0,r14),r6
	jsr @r3
	mov r14,r4
	mov r14,r4
	mov r13,r5
	mov r0,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c05ec1e
	mov.l @r15+,r14

loc_8c05e41c:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c05e426:
	#data 0x04b4
loc_8c05e428:
	#data 0x044c
loc_8c05e42a:
	#data 0x0454
loc_8c05e42c:
	#data 0x0484
loc_8c05e42e:
	#data 0x0450
loc_8c05e430:
	#data 0x0458
loc_8c05e432:
	#data 0x048c
loc_8c05e434:
	#data 0x020c
	#align4
loc_8c05e438:
	#data loc_8c05cb3e
loc_8c05e43c:
	#data loc_8c05cc1a
loc_8c05e440:
	#data loc_8c05c6c8

;==============================================
loc_8c05e444:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c05e54c,PC),r3
	jsr @r3
	mov 0x04,r5
	tst r0,r0
	bf loc_8c05e45e
	bra loc_8c05e49a
	mov 0x00,r0

loc_8c05e45e:
	mov.l @(loc_8c05e550,PC),r3
	mov r13,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05e554,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf.s loc_8c05e478
	mov r0,r12
	bra loc_8c05e48c
	mov 0x00,r6

loc_8c05e478:
	mov.w @(loc_8c05e546,PC),r0
	mov 0x7F,r6
	mov.l @(loc_8c05e558,PC),r3
	mov r12,r5
	mov.b @(r0,r12),r0
	extu.b r0,r0
	and r0,r6
	jsr @r3
	mov r14,r4
	mov r0,r6

loc_8c05e48c:
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c05ec1e
	mov.l @r15+,r14

loc_8c05e49a:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05e4a4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c05e54c,PC),r3
	jsr @r3
	mov 0x04,r5
	tst r0,r0
	bf loc_8c05e4be
	bra loc_8c05e522
	mov 0x00,r0

loc_8c05e4be:
	mov.l @(loc_8c05e550,PC),r12
	mov r13,r5
	mov 0x00,r6
	jsr @r12
	mov r14,r4
	mov r13,r5
	mov 0x02,r6
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05e548,PC),r0
	mov r13,r5
	mov 0x02,r6
	mov.l @(r0,r14),r3
	mov.w @(loc_8c05e54a,PC),r0
	mov.l r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05e548,PC),r0
	mov r13,r5
	mov 0x02,r6
	mov.l @(r0,r14),r3
	add 0x9C,r0
	mov.l r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05e548,PC),r0
	mov r13,r5
	mov 0x02,r6
	mov.l @(r0,r14),r3
	add 0xA0,r0
	mov.l r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05e548,PC),r0
	mov.w @(loc_8c05e54a,PC),r5
	mov.l @(r0,r14),r3
	add 0xA4,r0
	add r14,r5
	mov.l r3,@(r0,r14)
	mov.l @(loc_8c05e55c,PC),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r0,r6
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c05ec1e
	mov.l @r15+,r14

loc_8c05e522:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c05e52c:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c05e560,PC),r3
	jsr @r3
	mov 0x04,r5
	tst r0,r0
	bf loc_8c05e564
	bra loc_8c05e5c8
	mov 0x00,r0

;##############################################
loc_8c05e546:
	#data 0x01a1
loc_8c05e548:
	#data 0x04b4
loc_8c05e54a:
	#data 0x044c
	#align4
loc_8c05e54c:
	#data loc_8c05cc1a
loc_8c05e550:
	#data loc_8c05cb3e
loc_8c05e554:
	#data loc_8c05c41a
loc_8c05e558:
	#data loc_8c05c6c8
loc_8c05e55c:
	#data loc_8c05c882
loc_8c05e560:
	#data loc_8c05cc14

;----------------------------------------------
loc_8c05e564:
	mov.l @(loc_8c05e6a0,PC),r12
	mov r13,r5
	mov 0x00,r6
	jsr @r12
	mov r14,r4
	mov r13,r5
	mov 0x02,r6
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05e698,PC),r0
	mov r13,r5
	mov 0x02,r6
	mov.l @(r0,r14),r3
	mov.w @(loc_8c05e69a,PC),r0
	mov.l r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05e698,PC),r0
	mov r13,r5
	mov 0x02,r6
	mov.l @(r0,r14),r3
	add 0x9C,r0
	mov.l r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05e698,PC),r0
	mov r13,r5
	mov 0x02,r6
	mov.l @(r0,r14),r3
	add 0xA0,r0
	mov.l r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05e698,PC),r0
	mov.w @(loc_8c05e69a,PC),r5
	mov.l @(r0,r14),r3
	add 0xA4,r0
	add r14,r5
	mov.l r3,@(r0,r14)
	mov.l @(loc_8c05e6a4,PC),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r0,r6
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c05ec1e
	mov.l @r15+,r14

loc_8c05e5c8:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05e5d2:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05e6a8,PC),r3
	mov r5,r13
	mov r4,r14
	jsr @r3
	mov 0x04,r5
	tst r0,r0
	bf loc_8c05e5ee
	bra loc_8c05e666
	mov 0x00,r0

loc_8c05e5ee:
	mov.l @(loc_8c05e6a0,PC),r12
	mov r13,r5
	mov 0x00,r6
	jsr @r12
	mov r14,r4
	mov r13,r5
	mov 0x01,r6
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05e698,PC),r0
	mov r13,r5
	mov 0x04,r6
	mov.b @(r0,r14),r3
	mov.b r3,@r15
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05e69c,PC),r0
	mov.b @r15,r4
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	mov.w @(loc_8c05e698,PC),r0
	fsub fr3,fr2
	fmov @(r0,r14),fr3
	fcmp/gt fr2,fr3
	bf loc_8c05e634
	cmp/pz r4
	bt loc_8c05e642
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bf loc_8c05e654
	bra loc_8c05e642
	nop

loc_8c05e634:
	cmp/pz r4
	bf loc_8c05e642
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_8c05e654

loc_8c05e642:
	mov r14,r4
	mov r13,r5
	mov 0x00,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c05ec1e
	mov.l @r15+,r14

loc_8c05e654:
	mov r14,r4
	mov r13,r5
	mov 0x01,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c05ec1e
	mov.l @r15+,r14

loc_8c05e666:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05e672:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(loc_8c05e69e,PC),r3
	mov r4,r14
	mov.l @(loc_8c05e6ac,PC),r2
	add r14,r3
	mov.l r5,@r15
	mov 0x04,r5
	mov.l r3,@(0x4,r15)
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c05e6b0
	mov 0x00,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;##############################################
loc_8c05e698:
	#data 0x04b4
loc_8c05e69a:
	#data 0x044c
loc_8c05e69c:
	#data 0x041c
loc_8c05e69e:
	#data 0x02a4
	#align4
loc_8c05e6a0:
	#data loc_8c05cb3e
loc_8c05e6a4:
	#data loc_8c05c944
loc_8c05e6a8:
	#data loc_8c05cc14
loc_8c05e6ac:
	#data loc_8c05cc1a

;----------------------------------------------
loc_8c05e6b0:
	mov.l @(loc_8c05e7dc,PC),r3
	mov 0x00,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.l @(0x4,r15),r6
	mov r14,r4
	mov.l @r15,r5
	mov.b @(0xE,r6),r0
	extu.b r0,r0
	tst r0,r0
	movt r6
	add 0x08,r15
	lds.l @r15+,pr
	bra loc_8c05ec1e
	mov.l @r15+,r14

;==============================================
loc_8c05e6d0:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05e6d8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05e7e0,PC),r3
	mov r4,r14
	mov.l r5,@r15
	mov 0x02,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c05e6f8
	bra loc_8c05e752
	mov 0x00,r0

loc_8c05e6f8:
	mov.l @(loc_8c05e7dc,PC),r3
	mov 0x00,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05e7d4,PC),r0
	mov 0x00,r13
	mov 0x01,r12
	mov.w @(loc_8c05e7d6,PC),r3
	mov.b r13,@(r0,r14)
	add 0xA5,r0
	mov r12,r11
	mov.b r11,@(r0,r14)
	add 0x57,r0
	mov.w r3,@(r0,r14)
	mov.l @(loc_8c05e7e4,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c05e732
	mov.w @(loc_8c05e7d4,PC),r0
	mov r13,r11
	mov.l @(loc_8c05e7e4,PC),r3
	mov.b r12,@(r0,r14)
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c05e732
	mov r12,r11

loc_8c05e732:
	mov.w @(loc_8c05e7d4,PC),r0
	mov r14,r4
	mov r11,r6
	mov.b r13,@(r0,r14)
	add 0xA5,r0
	mov.b r13,@(r0,r14)
	add 0x57,r0
	mov.w r13,@(r0,r14)
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c05ec1e
	mov.l @r15+,r14

loc_8c05e752:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05e760:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05e7dc,PC),r3
	jsr @r3
	mov 0x00,r6
	mov.l @(loc_8c05e7dc,PC),r2
	mov r13,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c05e7d8,PC),r0
	mov r13,r5
	mov.l @(loc_8c05e7e8,PC),r2
	mov r14,r4
	mov.l @(r0,r14),r3
	add 0x98,r0
	mov.l r3,@(r0,r14)
	mov.l @(r0,r14),r3
	mov.w @r2,r6
	lds.l @r15+,pr
	cmp/gt r6,r3
	movt r6
	add 0xFF,r6
	mov.l @r15+,r13
	neg r6,r6
	bra loc_8c05ec1e
	mov.l @r15+,r14

;==============================================
loc_8c05e79c:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05e7dc,PC),r3
	jsr @r3
	mov 0x00,r6
	mov.l @(loc_8c05e7dc,PC),r2
	mov r13,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c05e7ec,PC),r3
	jsr @r3
	nop
	mov.w @(loc_8c05e7d8,PC),r2
	mov r13,r5
	lds.l @r15+,pr
	add r14,r2
	mov r14,r4
	mov.l @r2,r2
	and 0x1F,r0
	mov.l @r15+,r13
	cmp/hs r0,r2
	movt r6
	bra loc_8c05ec1e
	mov.l @r15+,r14

;##############################################
loc_8c05e7d4:
	#data 0x01fe
loc_8c05e7d6:
	#data 0x0800
loc_8c05e7d8:
	#data 0x04b4
	#align4
loc_8c05e7dc:
	#data loc_8c05cb3e
loc_8c05e7e0:
	#data loc_8c05cc14
loc_8c05e7e4:
	#data loc_8c05229c
loc_8c05e7e8:
	#data 0x8c289732
loc_8c05e7ec:
	#data bank03.loc_8c03319e

;----------------------------------------------
loc_8c05e7f0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05e930,PC),r3
	jsr @r3
	mov 0x00,r5
	tst r0,r0
	bt loc_8c05e820
	mov.l @(loc_8c05e934,PC),r2
	mov r13,r5
	mov 0x00,r6
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c05e934,PC),r3
	mov r13,r5
	mov 0x01,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05e938,PC),r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_8c05e824

loc_8c05e820:
	bra loc_8c05e87e
	mov 0x00,r0

loc_8c05e824:
	mov.w @(loc_8c05e914,PC),r0
	mov.w @(loc_8c05e916,PC),r4
	mov.b @(r0,r14),r2
	add 0x01,r2
	mov.b r2,@(r0,r14)
	add 0x77,r0
	mov.l @(r0,r14),r3
	add 0x98,r0
	mov 0x01,r2
	mov.l r3,@(r0,r14)
	add 0x08,r0
	mov.l r2,@(r0,r14)
	mov.w @(loc_8c05e918,PC),r0
	mov.b @(r0,r14),r3
	mov.w @(loc_8c05e91a,PC),r0
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll8 r3
	shll2 r3
	xor r4,r3
	mov.l r3,@(r0,r14)
	add 0x4A,r0
	mov 0xB4,r2
	mov.b r2,@(r0,r14)
	add 0xB6,r0
	mov.w @(r0,r14),r3
	mov.w @(loc_8c05e91c,PC),r0
	mov.w r3,@(r0,r14)
	mov.w @(loc_8c05e91e,PC),r0
	mov.w r4,@(r0,r14)
	mov.l @(loc_8c05e93c,PC),r3
	mov 0x01,r5
	jsr @r3
	mov r14,r4
	mov r13,r5
	mov.w @(loc_8c05e91e,PC),r0
	mov 0x00,r2
	mov r14,r4
	mov.w r2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c05e886
	mov.l @r15+,r14

loc_8c05e87e:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05e886:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c05e920,PC),r0
	mov r4,r14
	mov.l r5,@r15
	mov.b @(r0,r14),r3
	mov.w @(loc_8c05e922,PC),r0
	extu.b r3,r3
	mov.l @(r0,r14),r2
	cmp/eq r2,r3
	bf loc_8c05e8cc
	mov.w @(loc_8c05e924,PC),r0
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	exts.b r3,r3
	tst r3,r3
	bt loc_8c05e8cc
	mov.l @(loc_8c05e938,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c05e8cc
	mov.w @(loc_8c05e926,PC),r0
	mov.b @(r0,r14),r4
	tst r4,r4
	bt loc_8c05e8da
	mov.w @(loc_8c05e918,PC),r0
	mov 0x02,r3
	mov.b @(r0,r14),r2
	extu.b r2,r2
	neg r2,r2
	shad r2,r3
	tst r4,r3
	bt loc_8c05e8da

loc_8c05e8cc:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c05e940,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c05e8da:
	mov.w @(loc_8c05e928,PC),r0
	mov.l @(loc_8c05e944,PC),r3
	mov.l @(r0,r14),r6
	mov.w @(loc_8c05e92a,PC),r0
	mov.l @(r0,r14),r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c05e8fa
	mov.l @r15,r5
	mov r14,r4
	mov 0x01,r6
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c05ec1e
	mov.l @r15+,r14

loc_8c05e8fa:
	mov.w @(loc_8c05e91a,PC),r0
	mov 0x00,r3
	mov.w @(r0,r14),r2
	mov.w @(loc_8c05e91c,PC),r0
	mov.w r2,@(r0,r14)
	mov.w @(loc_8c05e92c,PC),r0
	mov.b r3,@(r0,r14)
	mov r3,r0
	nop
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05e914:
	#data 0x043d
loc_8c05e916:
	#data 0x0800
loc_8c05e918:
	#data 0x01d2
loc_8c05e91a:
	#data 0x0458
loc_8c05e91c:
	#data 0x04dc
loc_8c05e91e:
	#data 0x034a
loc_8c05e920:
	#data 0x01d0
loc_8c05e922:
	#data 0x0454
loc_8c05e924:
	#data 0x04a2
loc_8c05e926:
	#data 0x01fd
loc_8c05e928:
	#data 0x044c
loc_8c05e92a:
	#data 0x020c
loc_8c05e92c:
	#data 0x01d3
	#align4
loc_8c05e930:
	#data loc_8c05cc14
loc_8c05e934:
	#data loc_8c05cb3e
loc_8c05e938:
	#data 0x8c28963c
loc_8c05e93c:
	#data loc_8c0532a8
loc_8c05e940:
	#data loc_8c05fe88
loc_8c05e944:
	#data loc_8c05c6c8

;==============================================
loc_8c05e948:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05ea80,PC),r3
	jsr @r3
	mov 0x00,r5
	tst r0,r0
	bf loc_8c05e960
	bra loc_8c05e9aa
	mov 0x00,r0

loc_8c05e960:
	mov.l @(loc_8c05ea84,PC),r3
	mov r13,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05ea84,PC),r2
	mov r13,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c05ea78,PC),r0
	mov 0x0A,r5
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov 0x0A,r3
	mov.w @(loc_8c05ea7a,PC),r0
	mov.l @(r0,r14),r2
	add 0x98,r0
	mov.l r2,@(r0,r14)
	add 0x08,r0
	mov.l r3,@(r0,r14)
	add 0x04,r0
	mov 0x00,r2
	mov.l r2,@(r0,r14)
	add 0x4A,r0
	mov 0xB4,r3
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c05ea88,PC),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c05e886
	mov.l @r15+,r14

loc_8c05e9aa:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c05e9b2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05ea8c,PC),r3
	mov r4,r14
	mov.l r5,@r15
	mov 0x02,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c05e9d2
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c05e9d2:
	mov.l @(loc_8c05ea84,PC),r3
	mov 0x00,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05ea7c,PC),r0
	mov 0x81,r2
	mov.b r2,@(r0,r14)
	mov 0x01,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05e9ec:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05ea8c,PC),r3
	mov r4,r14
	mov.l r5,@r15
	mov 0x02,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c05ea0c
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c05ea0c:
	mov.l @(loc_8c05ea84,PC),r3
	mov 0x00,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05ea7c,PC),r0
	mov 0x91,r2
	mov.b r2,@(r0,r14)
	mov 0x01,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05ea26:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05ea8c,PC),r3
	jsr @r3
	mov 0x03,r5
	tst r0,r0
	bf loc_8c05ea3e
	bra loc_8c05ea70
	mov 0x00,r0

loc_8c05ea3e:
	mov.l @(loc_8c05ea84,PC),r3
	mov r13,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05ea84,PC),r2
	mov r13,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c05ea7e,PC),r0
	mov r13,r5
	lds.l @r15+,pr
	mov.l @(r0,r14),r6
	mov r14,r4
	mov.w @(loc_8c05ea7a,PC),r0
	mov.b @r6,r6
	mov.l @(r0,r14),r3
	mov.l @r15+,r13
	cmp/gt r6,r3
	movt r6
	add 0xFF,r6
	neg r6,r6
	bra loc_8c05ec1e
	mov.l @r15+,r14

loc_8c05ea70:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05ea78:
	#data 0x043d
loc_8c05ea7a:
	#data 0x04b4
loc_8c05ea7c:
	#data 0x0495
loc_8c05ea7e:
	#data 0x040c
	#align4
loc_8c05ea80:
	#data loc_8c05cc14
loc_8c05ea84:
	#data loc_8c05cb3e
loc_8c05ea88:
	#data loc_8c0532a8
loc_8c05ea8c:
	#data loc_8c05cc1a

;==============================================
loc_8c05ea90:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05ebf4,PC),r3
	jsr @r3
	mov 0x00,r6
	mov.l @(loc_8c05ebf4,PC),r2
	mov r13,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c05ebea,PC),r0
	mov r13,r5
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	add 0x0B,r0
	mov.l @(r0,r14),r3
	mov r14,r4
	mov.l @r15+,r13
	cmp/ge r6,r3
	movt r6
	add 0xFF,r6
	neg r6,r6
	bra loc_8c05ec1e
	mov.l @r15+,r14

;==============================================
loc_8c05eac6:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05ebf4,PC),r3
	jsr @r3
	mov 0x00,r6
	mov.l @(loc_8c05ebf4,PC),r2
	mov r13,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c05ebf8,PC),r3
	mov r13,r5
	mov.w @(loc_8c05ebec,PC),r0
	mov r14,r4
	mov.b @r3,r6
	mov.l @(r0,r14),r2
	neg r6,r6
	lds.l @r15+,pr
	add 0x63,r6
	cmp/gt r6,r2
	movt r6
	mov.l @r15+,r13
	add 0xFF,r6
	neg r6,r6
	bra loc_8c05ec1e
	mov.l @r15+,r14

;==============================================
loc_8c05eb00:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05ebfc,PC),r3
	mov r4,r14
	mov.l r5,@r15
	mov 0x04,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c05eb20
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c05eb20:
	mov.l @(loc_8c05ebf4,PC),r3
	mov 0x00,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05ebee,PC),r0
	mov 0x01,r2
	mov.b r2,@(r0,r14)
	mov r2,r0
	nop
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05eb3c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05ebfc,PC),r3
	mov r4,r14
	mov.l r5,@r15
	mov 0x04,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c05eb5c
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c05eb5c:
	mov.l @(loc_8c05ebf4,PC),r3
	mov 0x00,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05ebee,PC),r0
	mov 0x80,r2
	mov.b r2,@(r0,r14)
	mov 0x01,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05eb76:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05ebfc,PC),r3
	mov r4,r14
	mov.l r5,@r15
	mov 0x04,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c05eb96
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c05eb96:
	mov.l @(loc_8c05ebf4,PC),r3
	mov 0x00,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05ebf0,PC),r0
	mov 0x01,r2
	mov.b r2,@(r0,r14)
	mov r2,r0
	nop
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05ebb2:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05ebf4,PC),r3
	mov.l r4,@r15
	jsr @r3
	mov 0x00,r6
	mov.w @(loc_8c05ebf2,PC),r0
	mov 0x00,r3
	mov.l @r15,r2
	mov.b r3,@(r0,r2)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov 0x01,r0

;==============================================
loc_8c05ebce:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05ebf4,PC),r3
	mov.l r4,@r15
	jsr @r3
	mov 0x00,r6
	mov.w @(loc_8c05ebee,PC),r0
	mov 0x00,r3
	mov.l @r15,r2
	mov.b r3,@(r0,r2)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov 0x01,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05ebea:
	#data 0x04a9
loc_8c05ebec:
	#data 0x04b4
loc_8c05ebee:
	#data 0x0496
loc_8c05ebf0:
	#data 0x0497
loc_8c05ebf2:
	#data 0x0495
	#align4
loc_8c05ebf4:
	#data loc_8c05cb3e
loc_8c05ebf8:
	#data 0x8c289676
loc_8c05ebfc:
	#data loc_8c05cc14

;==============================================
loc_8c05ec00:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(loc_8c05ed74,PC),r3
	jsr @r3
	mov 0x00,r6
	mov.w @(loc_8c05ed5e,PC),r0
	mov 0x00,r4
	mov.b r4,@(r0,r14)
	mov.w @(loc_8c05ed60,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05ec1e:
	tst r6,r6
	bt.s loc_8c05ec32
	mov 0x01,r7
	mov.w @(loc_8c05ed62,PC),r0
	mov 0x00,r3
	mov.b r7,@(r0,r4)
	add 0x21,r0
	mov.b r3,@(r0,r4)
	rts
	mov 0x01,r0

loc_8c05ec32:
	mov.w @(loc_8c05ed62,PC),r0
	mov.b r7,@(r0,r4)
	add 0x21,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c05ec48
	mov.l @(loc_8c05ed78,PC),r3
	mov 0x00,r1
	mov.w @(loc_8c05ed64,PC),r0
	jmp @r3
	mov.b r1,@(r0,r4)

loc_8c05ec48:
	mov.w @(loc_8c05ed64,PC),r0
	mov.b @(r0,r4),r2
	add 0xFF,r2
	mov.b r2,@(r0,r4)
	mov.w @(loc_8c05ed66,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c05ec60
	mov.w @(loc_8c05ed64,PC),r0
	mov.b @(r0,r4),r3
	add 0x01,r3
	mov.b r3,@(r0,r4)

loc_8c05ec60:
	mov.b @(0x7,r5),r0
	add 0xFF,r0
	mov.b r0,@(0x7,r5)
	mov.w @(loc_8c05ed68,PC),r0
	mov.b @(r0,r4),r3
	mov.l @(loc_8c05ed7c,PC),r0
	extu.b r3,r3
	mov.b @(r0,r3),r2
	mov.w @(0x4,r5),r0
	extu.b r2,r2
	sub r2,r0
	mov.w r0,@(0x4,r5)
	mov 0x00,r0
	rts
	nop

;==============================================
loc_8c05ec7e:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c05ed74,PC),r3
	mov 0x00,r6
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	jsr @r3
	mov.l @r15,r4
	mov.l @r15,r4
	mov.l @(0x4,r15),r5
	add 0x08,r15
	mov.l @(loc_8c05ed78,PC),r3
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_8c05ec9a:
	sts.l pr,@-r15
	mov.l @(loc_8c05ed74,PC),r3
	jsr @r3
	mov 0x00,r6
	lds.l @r15+,pr
	rts
	mov 0x01,r0

;==============================================
loc_8c05eca8:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05ed74,PC),r3
	mov.l r4,@r15
	jsr @r3
	mov 0x00,r6
	mov.l @(loc_8c05ed80,PC),r3
	mov 0x00,r6
	mov r6,r5
	jsr @r3
	mov.l @r15,r4
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;==============================================
loc_8c05ecc6:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05ed74,PC),r3
	mov.l r4,@r15
	jsr @r3
	mov 0x00,r6
	mov.l @r15,r4
	add 0x04,r15
	bra loc_8c05ecda
	lds.l @r15+,pr

loc_8c05ecda:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8c05ed6a,PC),r0
	mov 0x00,r4
	mov 0x01,r3
	sts.l pr,@-r15
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x55,r0
	mov.l @(loc_8c05ed84,PC),r3
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05ed6e,PC),r0
	mov.w @(loc_8c05ed6c,PC),r2
	mov.b r2,@(r0,r14)
	mov 0x02,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05ed0c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05ed74,PC),r3
	mov 0x00,r6
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05ed74,PC),r3
	mov 0x01,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05ed70,PC),r0
	mov 0x01,r3
	mov 0x00,r4
	mov.b @(r0,r14),r2
	add 0xCA,r0
	mov.b r2,@(r0,r14)
	add 0x02,r0
	mov.b r3,@(r0,r14)
	add 0xBD,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov r3,r0
	nop
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05ed50:
	sts.l pr,@-r15
	mov.l @(loc_8c05ed74,PC),r3
	jsr @r3
	mov 0x00,r6
	lds.l @r15+,pr
	rts
	mov 0x01,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05ed5e:
	#data 0x0497
loc_8c05ed60:
	#data 0x0201
loc_8c05ed62:
	#data 0x043d
loc_8c05ed64:
	#data 0x045e
loc_8c05ed66:
	#data 0x01a0
loc_8c05ed68:
	#data 0x0440
loc_8c05ed6a:
	#data 0x043c
loc_8c05ed6c:
	#data 0x00ff
loc_8c05ed6e:
	#data 0x04a0
loc_8c05ed70:
	#data 0x04b4
	#align4
loc_8c05ed74:
	#data loc_8c05cb3e
loc_8c05ed78:
	#data loc_8c05fe88
loc_8c05ed7c:
	#data bank15.loc_8c151408
loc_8c05ed80:
	#data loc_8c05c02e
loc_8c05ed84:
	#data loc_8c05bef6

;==============================================
loc_8c05ed88:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c05eee4,PC),r3
	jsr @r3
	mov 0x00,r6
	mov.w @(0x4,r13),r0
	mov.l @r13,r12
	extu.w r0,r0
	mov.l @(loc_8c05eee8,PC),r3
	add r0,r12
	mov.w @(0x4,r13),r0
	add 0x04,r0
	jsr @r3
	mov.w r0,@(0x4,r13)
	mov 0x03,r4
	and r0,r4
	mov r4,r0
	nop
	mov.b @(r0,r12),r3
	mov 0x01,r1
	mov.w @(loc_8c05eeda,PC),r0
	mov 0x00,r4
	mov.w @(loc_8c05eed8,PC),r2
	add r14,r2
	mov.b r3,@r2
	mov.b r1,@(r0,r14)
	add 0xBD,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov r1,r0
	nop
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05edde:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05eee4,PC),r3
	jsr @r3
	mov 0x00,r6
	mov.w @(0x4,r13),r0
	mov.l @r13,r4
	extu.w r0,r0
	add r0,r4
	mov.w @(0x4,r13),r0
	add 0x08,r0
	mov.w r0,@(0x4,r13)
	mov.w @(loc_8c05eedc,PC),r0
	mov.l @(r0,r14),r5
	add 0xFB,r0
	mov.b @(r0,r5),r0
	mov 0x07,r5
	extu.b r0,r0
	and r0,r5
	mov r5,r0
	nop
	mov.b @(r0,r4),r3
	mov 0x01,r1
	mov.w @(loc_8c05eeda,PC),r0
	mov 0x00,r4
	mov.w @(loc_8c05eed8,PC),r2
	add r14,r2
	mov.b r3,@r2
	mov.b r1,@(r0,r14)
	add 0xBD,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov r1,r0
	nop
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05ee36:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05eee4,PC),r3
	jsr @r3
	mov 0x00,r6
	mov.w @(0x4,r13),r0
	mov 0x00,r7
	mov.l @r13,r4
	mov 0x03,r6
	extu.w r0,r0
	mov r7,r5
	add r0,r4
	mov.w @(0x4,r13),r0
	add 0x07,r0
	mov.w r0,@(0x4,r13)
	mov.l @(loc_8c05eeec,PC),r13

loc_8c05ee5c:
	mov.b @(0x1,r4),r0
	extu.b r0,r3
	mov.w @(0x2,r13),r0
	cmp/gt r0,r3
	bt loc_8c05ee6e
	add 0x01,r5
	cmp/ge r6,r5
	bf.s loc_8c05ee5c
	add 0x02,r4

loc_8c05ee6e:
	mov.w @(loc_8c05eed8,PC),r0
	mov 0x01,r2
	mov.b @r4,r3
	mov.b r3,@(r0,r14)
	add 0x02,r0
	mov.b r2,@(r0,r14)
	add 0xBD,r0
	mov.b r7,@(r0,r14)
	add 0x01,r0
	mov.b r7,@(r0,r14)
	add 0x01,r0
	mov.b r7,@(r0,r14)
	mov r2,r0
	nop
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05ee92:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c05eee4,PC),r11
	jsr @r11
	mov 0x00,r6
	mov 0x00,r9
	mov 0x03,r10
	mov r9,r12

loc_8c05eeb0:
	mov r13,r5
	mov 0x01,r6
	jsr @r11
	mov r14,r4
	mov.w @(loc_8c05eede,PC),r0
	mov r13,r5
	mov 0x03,r6
	mov.l @(r0,r14),r3
	add 0x98,r0
	mov.l r3,@(r0,r14)
	jsr @r11
	mov r14,r4
	mov.w @(loc_8c05eee0,PC),r0
	fmov @(r0,r14),fr3
	add 0x30,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bf loc_8c05eef0
	bra loc_8c05eef6
	add 0x01,r12

;##############################################
loc_8c05eed8:
	#data 0x047e
loc_8c05eeda:
	#data 0x0480
loc_8c05eedc:
	#data 0x020c
loc_8c05eede:
	#data 0x04b4
loc_8c05eee0:
	#data 0x0484
	#align4
loc_8c05eee4:
	#data loc_8c05cb3e
loc_8c05eee8:
	#data bank03.loc_8c03319e
loc_8c05eeec:
	#data 0x8c289730

;----------------------------------------------
loc_8c05eef0:
	add 0x01,r12
	cmp/ge r10,r12
	bf loc_8c05eeb0

loc_8c05eef6:
	mov r10,r2
	sub r12,r2
	mov r2,r3
	shll r2
	mov.w @(0x4,r13),r0
	add r3,r2
	add 0x01,r2
	add r2,r0
	mov.w r0,@(0x4,r13)
	mov 0x01,r2
	mov.w @(loc_8c05f024,PC),r0
	mov.b @(r0,r14),r3
	add 0x32,r0
	mov.b r3,@(r0,r14)
	add 0x02,r0
	mov.b r2,@(r0,r14)
	add 0xBD,r0
	mov.b r9,@(r0,r14)
	add 0x01,r0
	mov.b r9,@(r0,r14)
	add 0x01,r0
	mov.b r9,@(r0,r14)
	mov r2,r0
	nop
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05ef36:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(loc_8c05f02c,PC),r3
	jsr @r3
	mov 0x00,r6
	mov.w @(loc_8c05f026,PC),r0
	mov 0x00,r4
	mov 0x01,r3
	mov.b r4,@(r0,r14)
	add 0xBD,r0
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov r3,r0
	nop
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05ef60:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(loc_8c05f02c,PC),r3
	jsr @r3
	mov 0x00,r6
	mov.l @(loc_8c05f030,PC),r2
	mov 0x00,r6
	mov r6,r5
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8c05ef82
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c05efc8
	mov.l @r15+,r14

loc_8c05ef82:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c05ecda
	mov.l @r15+,r14

loc_8c05ef8a:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(loc_8c05f02c,PC),r3
	jsr @r3
	mov 0x00,r6
	mov.l @(loc_8c05f030,PC),r2
	mov 0x01,r6
	mov r6,r5
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8c05efac
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c05efc8
	mov.l @r15+,r14

loc_8c05efac:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c05ecda
	mov.l @r15+,r14

loc_8c05efb4:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05f02c,PC),r3
	mov.l r4,@r15
	jsr @r3
	mov 0x00,r6
	mov.l @r15,r4
	add 0x04,r15
	bra loc_8c05efc8
	lds.l @r15+,pr

loc_8c05efc8:
	mov.w @(loc_8c05f028,PC),r0
	mov 0x01,r6
	mov 0x00,r5
	mov.l @(loc_8c05f034,PC),r3
	sts.l pr,@-r15
	mov.b r6,@(r0,r4)
	add 0x01,r0
	mov.b r5,@(r0,r4)
	add 0x01,r0
	mov.b r5,@(r0,r4)
	add 0x01,r0
	mov.b r5,@(r0,r4)
	add 0x55,r0
	jsr @r3
	mov.b r6,@(r0,r4)
	lds.l @r15+,pr
	rts
	mov 0x01,r0

;==============================================
loc_8c05efec:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05f02c,PC),r3
	mov.l r4,@r15
	jsr @r3
	mov 0x00,r6
	mov.w @(loc_8c05f02a,PC),r0
	mov 0x01,r3
	mov.l @r15,r2
	mov.b r3,@(r0,r2)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r3,r0

;==============================================
loc_8c05f008:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05f02c,PC),r3
	mov.l r4,@r15
	jsr @r3
	mov 0x00,r6
	mov.w @(loc_8c05f02a,PC),r0
	mov 0x00,r3
	mov.l @r15,r2
	mov.b r3,@(r0,r2)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov 0x01,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05f024:
	#data 0x044c
loc_8c05f026:
	#data 0x0480
loc_8c05f028:
	#data 0x043c
loc_8c05f02a:
	#data 0x0482
	#align4
loc_8c05f02c:
	#data loc_8c05cb3e
loc_8c05f030:
	#data loc_8c05bf3a
loc_8c05f034:
	#data loc_8c05bef6

;==============================================
loc_8c05f038:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05f100,PC),r3
	jsr @r3
	mov 0x02,r5
	tst r0,r0
	bt loc_8c05f092
	mov.l @(loc_8c05f104,PC),r3
	mov r13,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c05f092
	mov.l @(loc_8c05f108,PC),r2
	mov r13,r5
	mov 0x00,r6
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c05f108,PC),r3
	mov r13,r5
	mov 0x01,r6
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05f0f6,PC),r0
	mov.l @(r0,r14),r2
	tst r2,r2
	bt loc_8c05f07a
	mov.w @(loc_8c05f0f8,PC),r4
	bra loc_8c05f07c
	nop

loc_8c05f07a:
	mov.w @(loc_8c05f0fa,PC),r4

loc_8c05f07c:
	mov.w @(loc_8c05f0fc,PC),r0
	extu.w r4,r3
	mov.w @(r0,r14),r2
	tst r3,r2
	bt loc_8c05f08e
	mov.w @(r0,r14),r3
	xor r4,r3
	bra loc_8c05f092
	mov.w r3,@(r0,r14)

loc_8c05f08e:
	mov.w @(loc_8c05f0fe,PC),r0
	mov.w r4,@(r0,r14)

loc_8c05f092:
	lds.l @r15+,pr
	mov 0x00,r0
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05f09c:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05f100,PC),r3
	jsr @r3
	mov 0x02,r5
	tst r0,r0
	bt loc_8c05f0ec
	mov.l @(loc_8c05f104,PC),r3
	mov r13,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c05f0ec
	mov.l @(loc_8c05f108,PC),r2
	mov r13,r5
	mov 0x00,r6
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c05f108,PC),r3
	mov r13,r5
	mov 0x01,r6
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05f0f6,PC),r0
	mov.l @(r0,r14),r2
	tst r2,r2
	bt loc_8c05f0dc
	bra loc_8c05f0de
	mov 0x20,r4

loc_8c05f0dc:
	mov 0x40,r4

loc_8c05f0de:
	mov.w @(loc_8c05f0fc,PC),r0
	extu.w r4,r3
	mov.w @(r0,r14),r2
	tst r3,r2
	bf loc_8c05f0ea
	mov.w @(loc_8c05f0fe,PC),r0

loc_8c05f0ea:
	mov.w r4,@(r0,r14)

loc_8c05f0ec:
	lds.l @r15+,pr
	mov 0x00,r0
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05f0f6:
	#data 0x04b4
loc_8c05f0f8:
	#data 0x0100
loc_8c05f0fa:
	#data 0x0200
loc_8c05f0fc:
	#data 0x04ae
loc_8c05f0fe:
	#data 0x04dc
	#align4
loc_8c05f100:
	#data loc_8c05cc1a
loc_8c05f104:
	#data loc_8c05ccb6
loc_8c05f108:
	#data loc_8c05cb3e

;==============================================
loc_8c05f10c:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c05f200,PC),r3
	jsr @r3
	mov 0x02,r5
	tst r0,r0
	bt loc_8c05f174
	mov.l @(loc_8c05f204,PC),r3
	mov r13,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c05f174
	mov.l @(loc_8c05f208,PC),r12
	mov r13,r5
	mov 0x00,r6
	jsr @r12
	mov r14,r4
	mov r13,r5
	mov 0x01,r6
	jsr @r12
	mov r14,r4
	mov r13,r5
	mov 0x01,r6
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05f1f4,PC),r0
	mov.w @(loc_8c05f1f6,PC),r3
	mov.l @(r0,r14),r4
	mov.w @(loc_8c05f1f8,PC),r2
	shll8 r4
	mov.w @(loc_8c05f1fa,PC),r1
	and r3,r4
	or r2,r4
	extu.w r4,r3
	tst r1,r3
	bt loc_8c05f170
	mov.w @(loc_8c05f1fc,PC),r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll8 r3
	shll2 r3
	xor r3,r4

loc_8c05f170:
	mov.w @(loc_8c05f1fe,PC),r0
	mov.w r4,@(r0,r14)

loc_8c05f174:
	lds.l @r15+,pr
	mov 0x00,r0
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05f180:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c05f200,PC),r3
	jsr @r3
	mov 0x02,r5
	tst r0,r0
	bt loc_8c05f1e8
	mov.l @(loc_8c05f204,PC),r3
	mov r13,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c05f1e8
	mov.l @(loc_8c05f208,PC),r12
	mov r13,r5
	mov 0x00,r6
	jsr @r12
	mov r14,r4
	mov r13,r5
	mov 0x01,r6
	jsr @r12
	mov r14,r4
	mov r13,r5
	mov 0x01,r6
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05f1f4,PC),r0
	mov 0x20,r4
	mov.w @(loc_8c05f1f6,PC),r3
	mov.l @(r0,r14),r0
	mov.w @(loc_8c05f1fa,PC),r1
	shll8 r0
	and r3,r0
	or r0,r4
	extu.w r4,r2
	tst r1,r2
	bt loc_8c05f1e4
	mov.w @(loc_8c05f1fc,PC),r0
	mov.b @(r0,r14),r2
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	shll8 r2
	shll2 r2
	xor r2,r4

loc_8c05f1e4:
	mov.w @(loc_8c05f1fe,PC),r0
	mov.w r4,@(r0,r14)

loc_8c05f1e8:
	lds.l @r15+,pr
	mov 0x00,r0
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05f1f4:
	#data 0x04b4
loc_8c05f1f6:
	#data 0x3c00
loc_8c05f1f8:
	#data 0x0100
loc_8c05f1fa:
	#data 0x0c00
loc_8c05f1fc:
	#data 0x01d2
loc_8c05f1fe:
	#data 0x04dc
	#align4
loc_8c05f200:
	#data loc_8c05cc1a
loc_8c05f204:
	#data loc_8c05ccb6
loc_8c05f208:
	#data loc_8c05cb3e

;==============================================
loc_8c05f20c:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r5,r12
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c05f324,PC),r3
	jsr @r3
	mov 0x02,r5
	tst r0,r0
	bt loc_8c05f284
	mov.l @(loc_8c05f328,PC),r3
	mov r12,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c05f284
	mov.l @(loc_8c05f32c,PC),r11
	mov r12,r5
	mov 0x00,r6
	jsr @r11
	mov r14,r4
	mov r12,r5
	mov 0x01,r6
	jsr @r11
	mov r14,r4
	mov.w @(loc_8c05f316,PC),r0
	mov.l @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c05f252
	mov 0x01,r6
	mov.w @(loc_8c05f318,PC),r13
	bra loc_8c05f254
	nop

loc_8c05f252:
	mov.w @(loc_8c05f31a,PC),r13

loc_8c05f254:
	mov r12,r5
	jsr @r11
	mov r14,r4
	mov.w @(loc_8c05f316,PC),r0
	mov.w @(loc_8c05f31c,PC),r3
	mov.l @(r0,r14),r2
	mov.w @(loc_8c05f31e,PC),r1
	shll8 r2
	and r3,r2
	or r2,r13
	extu.w r13,r2
	tst r1,r2
	bt loc_8c05f280
	mov.w @(loc_8c05f320,PC),r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll8 r3
	shll2 r3
	xor r3,r13

loc_8c05f280:
	mov.w @(loc_8c05f322,PC),r0
	mov.w r13,@(r0,r14)

loc_8c05f284:
	lds.l @r15+,pr
	mov 0x00,r0
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05f292:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r5,r12
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c05f324,PC),r3
	jsr @r3
	mov 0x02,r5
	tst r0,r0
	bt loc_8c05f308
	mov.l @(loc_8c05f328,PC),r3
	mov r12,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c05f308
	mov.l @(loc_8c05f32c,PC),r11
	mov r12,r5
	mov 0x00,r6
	jsr @r11
	mov r14,r4
	mov r12,r5
	mov 0x01,r6
	jsr @r11
	mov r14,r4
	mov.w @(loc_8c05f316,PC),r0
	mov.l @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c05f2d6
	mov 0x01,r6
	bra loc_8c05f2d8
	mov 0x20,r13

loc_8c05f2d6:
	mov 0x40,r13

loc_8c05f2d8:
	mov r12,r5
	jsr @r11
	mov r14,r4
	mov.w @(loc_8c05f316,PC),r0
	mov.w @(loc_8c05f31c,PC),r3
	mov.l @(r0,r14),r2
	mov.w @(loc_8c05f31e,PC),r1
	shll8 r2
	and r3,r2
	or r2,r13
	extu.w r13,r2
	tst r1,r2
	bt loc_8c05f304
	mov.w @(loc_8c05f320,PC),r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll8 r3
	shll2 r3
	xor r3,r13

loc_8c05f304:
	mov.w @(loc_8c05f322,PC),r0
	mov.w r13,@(r0,r14)

loc_8c05f308:
	lds.l @r15+,pr
	mov 0x00,r0
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05f316:
	#data 0x04b4
loc_8c05f318:
	#data 0x0100
loc_8c05f31a:
	#data 0x0200
loc_8c05f31c:
	#data 0x3c00
loc_8c05f31e:
	#data 0x0c00
loc_8c05f320:
	#data 0x01d2
loc_8c05f322:
	#data 0x04dc
	#align4
loc_8c05f324:
	#data loc_8c05cc1a
loc_8c05f328:
	#data loc_8c05ccb6
loc_8c05f32c:
	#data loc_8c05cb3e

;==============================================
loc_8c05f330:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c05f45c,PC),r3
	jsr @r3
	mov 0x03,r5
	tst r0,r0
	bt loc_8c05f40e
	mov.l @(loc_8c05f460,PC),r3
	mov r13,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c05f40e
	mov.l @(loc_8c05f464,PC),r12
	mov r13,r5
	mov 0x00,r6
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05f44c,PC),r0
	mov 0x00,r4
	mov 0x01,r3
	mov r13,r5
	mov.b @(r0,r14),r2
	mov r3,r6
	add 0x01,r2
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x1E,r0
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05f44e,PC),r0
	mov r13,r5
	mov 0x01,r6
	mov.b @(r0,r14),r3
	add 0x94,r0
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05f44e,PC),r0
	mov r13,r5
	mov 0x01,r6
	mov.l @(r0,r14),r3
	add 0x98,r0
	mov.l r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05f44e,PC),r0
	mov r13,r5
	mov 0x01,r6
	mov.b @(r0,r14),r3
	add 0xF7,r0
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05f44e,PC),r0
	mov r13,r5
	mov 0x01,r6
	mov.b @(r0,r14),r3
	add 0xF6,r0
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05f44e,PC),r0
	mov.w @(loc_8c05f450,PC),r2
	mov.l @(r0,r14),r4
	shll8 r4
	extu.w r4,r3
	tst r2,r3
	bt loc_8c05f3dc
	mov.w @(loc_8c05f452,PC),r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	mov r3,r1
	shll r3
	add r1,r3
	shll8 r3
	shll2 r3
	xor r3,r4

loc_8c05f3dc:
	mov.w @(loc_8c05f44e,PC),r0
	extu.w r4,r2
	mov.l @(r0,r14),r3
	add 0xF8,r0
	shll8 r3
	mov.w r3,@(r0,r14)
	add 0xA4,r0
	mov.l r2,@(r0,r14)
	mov.w @(loc_8c05f454,PC),r0
	mov.w r4,@(r0,r14)
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x30,r0
	bf loc_8c05f408
	mov.w @(loc_8c05f456,PC),r0
	mov.l @(r0,r14),r3
	mov.l @(loc_8c05f468,PC),r0
	shll2 r3
	mov.l @(r0,r3),r2
	mov.w @(loc_8c05f458,PC),r0
	bra loc_8c05f40e
	mov.l r2,@(r0,r14)

loc_8c05f408:
	mov.w @(loc_8c05f458,PC),r0
	mov.l @(loc_8c05f46c,PC),r1
	mov.l r1,@(r0,r14)

loc_8c05f40e:
	lds.l @r15+,pr
	mov 0x00,r0
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05f41a:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c05f438
	mov.w @(loc_8c05f45a,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bt loc_8c05f470
	mov.w @(loc_8c05f45a,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bt loc_8c05f470

loc_8c05f438:
	mov.w @(loc_8c05f44c,PC),r0
	mov 0x00,r3
	mov.b @(r0,r14),r2
	add 0xFF,r2
	mov.b r2,@(r0,r14)
	add 0x05,r0
	mov.w r3,@(r0,r14)
	mov 0x01,r0
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05f44c:
	#data 0x043d
loc_8c05f44e:
	#data 0x04b4
loc_8c05f450:
	#data 0x0c00
loc_8c05f452:
	#data 0x01d2
loc_8c05f454:
	#data 0x04dc
loc_8c05f456:
	#data 0x044c
loc_8c05f458:
	#data 0x0498
loc_8c05f45a:
	#data 0x01d0
	#align4
loc_8c05f45c:
	#data loc_8c05cc1a
loc_8c05f460:
	#data loc_8c05ccb6
loc_8c05f464:
	#data loc_8c05cb3e
loc_8c05f468:
	#data bank15.loc_8c1515d0
loc_8c05f46c:
	#data loc_8c05ffdc

;==============================================
loc_8c05f470:
	mov.w @(loc_8c05f556,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c05f4d2
	mov.w @(r0,r14),r3
	add 0xFF,r3
	mov.w r3,@(r0,r14)
	exts.w r3,r3
	tst r3,r3
	bf loc_8c05f4d2
	mov.w @(loc_8c05f558,PC),r0
	mov.l @r5,r4
	mov.w @(r0,r14),r3
	add 0x19,r0
	extu.w r3,r3
	add r3,r4
	mov 0x01,r3
	mov.b r3,@(r0,r14)
	add 0xEB,r0
	mov.b @r4+,r3
	mov.b r3,@(r0,r14)
	add 0x04,r0
	mov.b @r4+,r3
	extu.b r3,r3
	mov.l r3,@(r0,r14)
	add 0x5F,r0
	mov.b @r4+,r3
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b @r4+,r3
	mov.b r3,@(r0,r14)
	mov.b @r4,r2
	extu.b r2,r4
	mov.w @(loc_8c05f55a,PC),r2
	shll8 r4
	extu.w r4,r3
	tst r2,r3
	bt loc_8c05f4d2
	mov.w @(loc_8c05f55c,PC),r0
	mov.b @(r0,r14),r3
	mov.w @(loc_8c05f55e,PC),r0
	extu.b r3,r3
	mov r3,r1
	shll r3
	add r1,r3
	shll8 r3
	shll2 r3
	xor r3,r4
	mov.w r4,@(r0,r14)

loc_8c05f4d2:
	mov.w @(loc_8c05f560,PC),r0
	mov r14,r4
	mov.w @(r0,r14),r3
	mov.w @(loc_8c05f562,PC),r0
	mov.w r3,@(r0,r14)
	add 0xBC,r0
	mov.l @(r0,r14),r0
	jmp @r0
	mov.l @r15+,r14
 
 loc_8c05f4e4:
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05f4e8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05f568,PC),r3
	mov 0x00,r6
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05f568,PC),r3
	mov 0x01,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05f564,PC),r0
	mov.l @(r0,r14),r2
	add 0x98,r0
	mov.l r2,@(r0,r14)
	add 0x68,r0
	mov.b @(r0,r14),r3
	add 0xAB,r0
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov 0x01,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05f520:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05f568,PC),r3
	mov 0x00,r6
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05f568,PC),r3
	mov 0x01,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05f564,PC),r0
	mov.l @(r0,r14),r2
	add 0x98,r0
	mov.l r2,@(r0,r14)
	mov.b @(r0,r14),r3
	add 0x5B,r0
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov 0x01,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05f556:
	#data 0x0442
loc_8c05f558:
	#data 0x0444
loc_8c05f55a:
	#data 0x0c00
loc_8c05f55c:
	#data 0x01d2
loc_8c05f55e:
	#data 0x04ac
loc_8c05f560:
	#data 0x0450
loc_8c05f562:
	#data 0x04dc
loc_8c05f564:
	#data 0x04b4
	#align4
loc_8c05f568:
	#data loc_8c05cb3e

;==============================================
loc_8c05f56c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c05f69c,PC),r3
	mov r4,r14
	mov.l r5,@(0x4,r15)
	mov 0x01,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c05f63c
	mov.l @(loc_8c05f6a0,PC),r3
	mov 0x00,r6
	mov.l @(0x4,r15),r5
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05f6a0,PC),r3
	mov 0x01,r6
	mov.l @(0x4,r15),r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05f67c,PC),r0
	mov.l @(r0,r14),r2
	mov.w @(loc_8c05f67e,PC),r0
	mov.l r2,@(r0,r14)
	mov.w @(loc_8c05f680,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c05f5cc
	mov.w @(loc_8c05f682,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c05f5cc
	mov.l @(loc_8c05f6a4,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c05f5cc
	mov.l @(loc_8c05f6a8,PC),r3
	jsr @r3
	mov r14,r4
	mov.w r0,@r15
	extu.w r0,r0
	tst r0,r0
	bf loc_8c05f5d0

loc_8c05f5cc:
	bra loc_8c05f63e
	mov 0x01,r0

loc_8c05f5d0:
	mov.w @(loc_8c05f684,PC),r0
	mov.w @(loc_8c05f686,PC),r13
	mov.b @(r0,r14),r2
	add 0x01,r2
	mov.b r2,@(r0,r14)
	mov.w @(loc_8c05f688,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c05f5e8
	bra loc_8c05f60c
	mov 0x13,r12

loc_8c05f5e8:
	mov.w @(loc_8c05f68a,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x3C,r0
	bt loc_8c05f5fa
	mov.w @r15,r0
	extu.w r0,r0
	tst 0x04,r0
	bt loc_8c05f600

loc_8c05f5fa:
	mov.w @(loc_8c05f68c,PC),r13
	bra loc_8c05f602
	mov 0x05,r12

loc_8c05f600:
	mov 0x07,r12

loc_8c05f602:
	mov.l @(loc_8c05f6ac,PC),r3
	extu.w r12,r5
	jsr @r3
	mov r14,r4
	mov 0x12,r12

loc_8c05f60c:
	mov.w @(loc_8c05f68e,PC),r0
	extu.w r13,r2
	extu.w r12,r5
	mov.b @(r0,r14),r3
	mov.w @(loc_8c05f690,PC),r0
	extu.b r3,r3
	mov r3,r1
	shll r3
	add r1,r3
	shll8 r3
	shll2 r3
	xor r3,r2
	mov.l r2,@(r0,r14)
	mov.w @(r0,r14),r3
	mov.w @(loc_8c05f692,PC),r0
	mov.w r3,@(r0,r14)
	mov.w @(loc_8c05f694,PC),r0
	mov.l @(loc_8c05f6ac,PC),r3
	mov.w r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05f694,PC),r0
	mov 0x00,r2
	mov.w r2,@(r0,r14)

loc_8c05f63c:
	mov 0x00,r0

loc_8c05f63e:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05f64a:
	mov.w @(loc_8c05f696,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c05f66c
	mov.w @(loc_8c05f698,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x12,r0
	bt loc_8c05f6b0
	mov.w @(loc_8c05f698,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x13,r0
	bt loc_8c05f6b0

loc_8c05f66c:
	mov.w @(loc_8c05f684,PC),r0
	mov.b @(r0,r14),r2
	add 0xFF,r2
	mov.b r2,@(r0,r14)
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;##############################################
loc_8c05f67c:
	#data 0x04b4
loc_8c05f67e:
	#data 0x044c
loc_8c05f680:
	#data 0x0202
loc_8c05f682:
	#data 0x01f0
loc_8c05f684:
	#data 0x043d
loc_8c05f686:
	#data 0x0400
loc_8c05f688:
	#data 0x01f9
loc_8c05f68a:
	#data 0x0440
loc_8c05f68c:
	#data 0x1400
loc_8c05f68e:
	#data 0x01d2
loc_8c05f690:
	#data 0x0450
loc_8c05f692:
	#data 0x04dc
loc_8c05f694:
	#data 0x034a
loc_8c05f696:
	#data 0x0411
loc_8c05f698:
	#data 0x01d0
	#align4
loc_8c05f69c:
	#data loc_8c05cc14
loc_8c05f6a0:
	#data loc_8c05cb3e
loc_8c05f6a4:
	#data loc_8c0528da
loc_8c05f6a8:
	#data loc_8c05c34a
loc_8c05f6ac:
	#data loc_8c0532a8

;----------------------------------------------
loc_8c05f6b0:
	mov.w @(loc_8c05f7a4,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf.s loc_8c05f6d6
	mov 0x00,r4
	mov.w @(loc_8c05f7a6,PC),r0
	mov 0x01,r2
	mov 0x7D,r3
	mov.b r2,@(r0,r14)
	add 0xEB,r0
	mov.b r3,@(r0,r14)
	add 0x63,r0
	mov.b r4,@(r0,r14)
	add 0xFF,r0
	mov.b r4,@(r0,r14)
	add 0x02,r0
	bra loc_8c05f73e
	mov.w r4,@(r0,r14)

loc_8c05f6d6:
	mov.w @(loc_8c05f7a8,PC),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_8c05f73e
	mov.w @(loc_8c05f7aa,PC),r6
	mov 0x00,r1
	mov.l @(loc_8c05f7c0,PC),r3
	add r14,r6
	mov.l @r6,r2
	and r3,r2
	or r1,r2
	tst r2,r2
	bt.s loc_8c05f714
	mov r4,r5
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x1C,r0
	bf loc_8c05f704
	mov.w @(loc_8c05f7ac,PC),r6
	add r14,r6
	add r1,r6
	mov.b @(0x1,r6),r0
	extu.b r0,r5

loc_8c05f704:
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c05f714
	mov.w @(loc_8c05f7ac,PC),r6
	add r14,r6
	mov.b @(0x1,r6),r0
	extu.b r0,r5

loc_8c05f714:
	tst r5,r5
	bf loc_8c05f73e
	mov.w @(loc_8c05f7ae,PC),r0
	mov 0xFF,r2
	mov.b r2,@(r0,r14)
	mov.w @(loc_8c05f7a8,PC),r0
	mov.b r4,@(r0,r14)
	mov.w @(loc_8c05f7b0,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.w r4,@(r0,r14)

loc_8c05f73e:
	mov.w @(loc_8c05f7b2,PC),r0
	mov.l @(r0,r14),r3
	add 0xFF,r3
	tst r3,r3
	bt.s loc_8c05f79c
	mov.l r3,@(r0,r14)
	mov.l @(loc_8c05f7c4,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt.s loc_8c05f794
	mov r0,r4
	mov.w @(loc_8c05f7b4,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c05f766
	mov 0x02,r2
	tst r4,r2
	bt loc_8c05f770

loc_8c05f766:
	mov.w @(loc_8c05f7b6,PC),r0
	mov.w @(loc_8c05f7b8,PC),r3
	mov.l @(r0,r14),r2
	and r3,r2
	mov.l r2,@(r0,r14)

loc_8c05f770:
	mov.w @(loc_8c05f7b4,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c05f78a
	mov 0x04,r2
	tst r2,r4
	bf loc_8c05f78a
	mov.w @(loc_8c05f7ba,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x3C,r0
	bf loc_8c05f794

loc_8c05f78a:
	mov.w @(loc_8c05f7b6,PC),r0
	mov.w @(loc_8c05f7bc,PC),r3
	mov.l @(r0,r14),r2
	or r3,r2
	mov.l r2,@(r0,r14)

loc_8c05f794:
	mov.w @(loc_8c05f7b6,PC),r0
	mov.w @(r0,r14),r1
	mov.w @(loc_8c05f7be,PC),r0
	mov.w r1,@(r0,r14)

loc_8c05f79c:
	mov 0x00,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05f7a4:
	#data 0x045f
loc_8c05f7a6:
	#data 0x045d
loc_8c05f7a8:
	#data 0x04a7
loc_8c05f7aa:
	#data 0x0414
loc_8c05f7ac:
	#data 0x02a4
loc_8c05f7ae:
	#data 0x01dd
loc_8c05f7b0:
	#data 0x0354
loc_8c05f7b2:
	#data 0x044c
loc_8c05f7b4:
	#data 0x01f9
loc_8c05f7b6:
	#data 0x0450
loc_8c05f7b8:
	#data 0xefff
loc_8c05f7ba:
	#data 0x0440
loc_8c05f7bc:
	#data 0x1000
loc_8c05f7be:
	#data 0x04dc
	#align4
loc_8c05f7c0:
	#data 0x30000000
loc_8c05f7c4:
	#data loc_8c05c34a

;==============================================
loc_8c05f7c8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c05f8dc,PC),r0
	mov r4,r14
	mov.l r5,@r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c05f7fe
	mov.l @(loc_8c05f8ec,PC),r3
	mov 0x00,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05f8ec,PC),r3
	mov 0x01,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05f8de,PC),r0
	mov.b @(r0,r14),r2
	add 0x01,r2
	mov.b r2,@(r0,r14)
	mov.w @(loc_8c05f8e0,PC),r0
	mov.l @(r0,r14),r3
	add 0x98,r0
	mov.l r3,@(r0,r14)

loc_8c05f7fe:
	mov 0x01,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05f808:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05f8ec,PC),r3
	mov 0x00,r6
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05f8ec,PC),r3
	mov 0x01,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05f8de,PC),r0
	mov.b @(r0,r14),r2
	add 0x01,r2
	mov.b r2,@(r0,r14)
	add 0x77,r0
	mov.l @(r0,r14),r3
	add 0x98,r0
	mov.l r3,@(r0,r14)
	add 0x68,r0
	mov.b @(r0,r14),r2
	mov 0x00,r3
	mov.w @(loc_8c05f8e2,PC),r0
	mov.b r2,@(r0,r14)
	add 0xB0,r0
	mov.b r3,@(r0,r14)
	mov 0x01,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05f84c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05f8f0,PC),r3
	mov r4,r14
	mov.l r5,@r15
	mov 0x03,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c05f886
	mov.l @(loc_8c05f8ec,PC),r3
	mov 0x00,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05f8e4,PC),r0
	mov 0x01,r2
	mov 0x7B,r3
	mov.b r2,@(r0,r14)
	add 0xEB,r0
	mov.b r3,@(r0,r14)
	add 0x63,r0
	mov 0x00,r4
	mov.b r4,@(r0,r14)
	add 0xFF,r0
	mov.b r4,@(r0,r14)
	add 0x02,r0
	mov.w r4,@(r0,r14)

loc_8c05f886:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05f890:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05f8f0,PC),r3
	mov r4,r14
	mov.l r5,@r15
	mov 0x03,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c05f936
	mov.l @(loc_8c05f8ec,PC),r3
	mov 0x00,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05f8e8,PC),r0
	mov 0x01,r11
	mov r11,r4
	mov.w @(loc_8c05f8ea,PC),r3
	mov.l @(r0,r14),r12
	mov 0x00,r13
	mov.b @(0x2,r14),r0
	mov r13,r5
	mov.l @(loc_8c05f8f4,PC),r2
	extu.b r0,r0
	mov.w @(loc_8c05f8e6,PC),r6
	and r11,r0
	neg r0,r0
	shad r0,r4
	mul.l r3,r4
	sts macl,r4
	add r2,r4
	bra loc_8c05f91a
	mov 0x03,r7

;##############################################
loc_8c05f8dc:
	#data 0x0411
loc_8c05f8de:
	#data 0x043d
loc_8c05f8e0:
	#data 0x04b4
loc_8c05f8e2:
	#data 0x01ed
loc_8c05f8e4:
	#data 0x045d
loc_8c05f8e6:
	#data 0x0091
loc_8c05f8e8:
	#data 0x020c
loc_8c05f8ea:
	#data 0x05a4
	#align4
loc_8c05f8ec:
	#data loc_8c05cb3e
loc_8c05f8f0:
	#data loc_8c05cc1a
loc_8c05f8f4:
	#data 0x8c268340

;----------------------------------------------
loc_8c05f8f8:
	mov.b @(0x1,r4),r0
	mov r0,r3
	mov.b @(0x1,r12),r0
	cmp/eq r0,r3
	bt loc_8c05f914
	mov.w @(loc_8c05fa0e,PC),r0
	mov.w @(r0,r4),r2
	tst r2,r2
	bt loc_8c05f914
	mov.w @(r0,r4),r2
	cmp/gt r6,r2
	bt loc_8c05f914
	mov.w @(r0,r4),r6
	add 0x01,r13

loc_8c05f914:
	mov.w @(loc_8c05fa10,PC),r3
	add 0x01,r5
	add r3,r4

loc_8c05f91a:
	cmp/ge r7,r5
	bf loc_8c05f8f8
	mov.w @(loc_8c05fa12,PC),r0
	mov 0x7C,r3
	mov 0x00,r4
	mov.b r11,@(r0,r14)
	add 0xEB,r0
	mov.b r3,@(r0,r14)
	add 0x63,r0
	mov.b r4,@(r0,r14)
	add 0xFF,r0
	mov.b r13,@(r0,r14)
	add 0x02,r0
	mov.w r4,@(r0,r14)

loc_8c05f936:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8c05f946:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05fa1c,PC),r3
	mov r4,r14
	mov.l r5,@r15
	mov 0x03,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c05f980
	mov.l @(loc_8c05fa20,PC),r3
	mov 0x00,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05fa12,PC),r0
	mov 0x01,r2
	mov 0x7A,r3
	mov.b r2,@(r0,r14)
	add 0xEB,r0
	mov.b r3,@(r0,r14)
	add 0x63,r0
	mov 0x00,r4
	mov.b r4,@(r0,r14)
	add 0xFF,r0
	mov.b r4,@(r0,r14)
	add 0x02,r0
	mov.w r4,@(r0,r14)

loc_8c05f980:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05f98a:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05fa1c,PC),r3
	mov r4,r14
	mov.l r5,@r15
	mov 0x03,r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c05f9c4
	mov.l @(loc_8c05fa20,PC),r3
	mov 0x00,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05fa12,PC),r0
	mov 0x01,r2
	mov 0x7E,r3
	mov.b r2,@(r0,r14)
	add 0xEB,r0
	mov.b r3,@(r0,r14)
	add 0x63,r0
	mov 0x00,r4
	mov.b r4,@(r0,r14)
	add 0xFF,r0
	mov.b r4,@(r0,r14)
	add 0x02,r0
	mov.w r4,@(r0,r14)

loc_8c05f9c4:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05f9ce:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05fa20,PC),r3
	mov r5,r13
	mov r4,r14
	jsr @r3
	mov 0x00,r6
	mov.l @(loc_8c05fa20,PC),r2
	mov r13,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c05fa14,PC),r0
	mov r14,r4
	mov r13,r5
	mov.l @(r0,r14),r3
	mov.w @(loc_8c05fa16,PC),r0
	mov r3,r6
	mov.l r3,@r15
	mov.b @(r0,r6),r6
	mov.w @(loc_8c05fa18,PC),r0
	extu.b r6,r6
	mov.l @(r0,r14),r3
	cmp/eq r3,r6
	movt r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c05ec1e
	mov.l @r15+,r14

;##############################################
loc_8c05fa0e:
	#data 0x0420
loc_8c05fa10:
	#data 0x05a4
loc_8c05fa12:
	#data 0x045d
loc_8c05fa14:
	#data 0x020c
loc_8c05fa16:
	#data 0x01f9
loc_8c05fa18:
	#data 0x04b4
	#align4
loc_8c05fa1c:
	#data loc_8c05cc1a
loc_8c05fa20:
	#data loc_8c05cb3e

;----------------------------------------------
loc_8c05fa24:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r5,r12
	sts.l pr,@-r15
	mov.l @(loc_8c05fb2c,PC),r3
	jsr @r3
	mov 0x00,r6
	mov.l @(loc_8c05fb2c,PC),r2
	mov r12,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	mov.b @(0x1,r14),r0
	extu.b r0,r0
	cmp/eq 0x2F,r0
	bt.s loc_8c05fa5a
	mov 0x00,r13
	cmp/eq 0x31,r0
	bt loc_8c05fa60
	cmp/eq 0x22,r0
	bt loc_8c05fa68
	cmp/eq 0x2D,r0
	bt loc_8c05fa6e
	bra loc_8c05fa72
	nop

loc_8c05fa5a:
	mov.w @(loc_8c05fb1a,PC),r0
	bra loc_8c05fa6a
	nop

loc_8c05fa60:
	mov.w @(loc_8c05fb1c,PC),r0
	mov.b @(r0,r14),r13
	bra loc_8c05fa72
	extu.b r13,r13

loc_8c05fa68:
	mov.w @(loc_8c05fb1e,PC),r0

loc_8c05fa6a:
	bra loc_8c05fa72
	mov.l @(r0,r14),r13

loc_8c05fa6e:
	mov.w @(loc_8c05fb20,PC),r0
	mov.b @(r0,r14),r13

loc_8c05fa72:
	lds.l @r15+,pr
	mov.w @(loc_8c05fb22,PC),r0
	mov r12,r5
	mov r14,r4
	mov.l @(r0,r14),r2
	mov.l @r15+,r12
	cmp/eq r2,r13
	mov.l @r15+,r13
	movt r6
	bra loc_8c05ec1e
	mov.l @r15+,r14

;==============================================
loc_8c05fa88:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c05fb24,PC),r3
	mov r4,r14
	mov.l @(loc_8c05fb2c,PC),r2
	mov r5,r13
	add r14,r3
	mov r13,r5
	mov.l r3,@r15
	mov 0x00,r6
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c05fb2c,PC),r3
	mov r13,r5
	mov 0x01,r6
	jsr @r3
	mov r14,r4
	mov.l @r15,r6
	mov r14,r4
	mov.w @(loc_8c05fb22,PC),r0
	mov r13,r5
	mov.b @r6,r6
	mov.l @(r0,r14),r3
	extu.b r6,r6
	cmp/eq r3,r6
	movt r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c05ec1e
	mov.l @r15+,r14

;==============================================
loc_8c05faca:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05fb2c,PC),r3
	mov r5,r13
	mov r4,r14
	jsr @r3
	mov 0x00,r6
	mov.l @(loc_8c05fb2c,PC),r2
	mov r13,r5
	mov 0x02,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c05fb22,PC),r0
	mov.l @(loc_8c05fb30,PC),r2
	mov.l @(r0,r14),r1
	mov.w @(loc_8c05fb26,PC),r0
	mov r1,r3
	shll2 r1
	shll r1
	add r3,r1
	shll2 r1
	jsr @r2
	shll2 r1
	mov.w r0,@r15
	mov r14,r4
	mov.w @(loc_8c05fb28,PC),r0
	mov r13,r5
	mov.w @r15,r3
	mov.w @(r0,r14),r6
	cmp/gt r3,r6
	movt r6
	add 0xFF,r6
	neg r6,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c05ec1e
	mov.l @r15+,r14

;##############################################
loc_8c05fb1a:
	#data 0x02c0
loc_8c05fb1c:
	#data 0x02ba
loc_8c05fb1e:
	#data 0x00cc
loc_8c05fb20:
	#data 0x02ad
loc_8c05fb22:
	#data 0x04b4
loc_8c05fb24:
	#data 0x02a4
loc_8c05fb26:
	#data 0x00c8
loc_8c05fb28:
	#data 0x0420
	#align4
loc_8c05fb2c:
	#data loc_8c05cb3e
loc_8c05fb30:
	#data bank12.loc_8c129128

;----------------------------------------------
loc_8c05fb34:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c05fc74,PC),r3
	mov r5,r13
	mov r4,r14
	jsr @r3
	mov 0x00,r6
	mov.l @(loc_8c05fc74,PC),r2
	mov r13,r5
	mov 0x02,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c05fc66,PC),r0
	mov.l @(loc_8c05fc78,PC),r2
	mov.l @(r0,r14),r3
	mov.w @(loc_8c05fc68,PC),r0
	mov.l r3,@(0x4,r15)
	mov.l @(r0,r14),r1
	mov.w @(loc_8c05fc6a,PC),r0
	mov r1,r3
	shll2 r1
	shll r1
	add r3,r1
	shll2 r1
	jsr @r2
	shll2 r1
	mov.w r0,@r15
	mov r14,r4
	mov.w @(loc_8c05fc6c,PC),r0
	mov r13,r5
	mov.l @(0x4,r15),r6
	mov.w @r15,r3
	mov.w @(r0,r6),r6
	cmp/gt r3,r6
	movt r6
	add 0xFF,r6
	neg r6,r6
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c05ec1e
	mov.l @r15+,r14

;==============================================
loc_8c05fb8c:
	mov.l r14,@-r15
	mov r5,r14
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05fc74,PC),r3
	jsr @r3
	mov 0x00,r6
	mov.l @(loc_8c05fc74,PC),r2
	mov r14,r5
	mov 0x02,r6
	jsr @r2
	mov r13,r4
	lds.l @r15+,pr
	mov r13,r4
	mov 0x00,r6
	mov r14,r5
	mov.l @r15+,r13
	bra loc_8c05ec1e
	mov.l @r15+,r14

loc_8c05fbb4:
	mov.l r14,@-r15
	mov r5,r14
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	mov.l @(loc_8c05fc74,PC),r3
	jsr @r3
	mov 0x00,r6
	mov.l @(loc_8c05fc74,PC),r2
	mov r14,r5
	mov 0x02,r6
	jsr @r2
	mov r13,r4
	lds.l @r15+,pr
	mov r13,r4
	mov 0x00,r6
	mov r14,r5
	mov.l @r15+,r13
	bra loc_8c05ec1e
	mov.l @r15+,r14

;==============================================
loc_8c05fbdc:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c05fc74,PC),r3
	mov r5,r13
	mov r4,r14
	jsr @r3
	mov 0x00,r6
	mov.l @(loc_8c05fc74,PC),r2
	mov r13,r5
	mov 0x02,r6
	jsr @r2
	mov r14,r4
	mov.b @(0x2,r14),r0
	mov 0x03,r7
	mov.w @(loc_8c05fc6e,PC),r4
	mov 0x00,r5
	extu.b r0,r0
	mov.l @(loc_8c05fc7c,PC),r3
	mulu.w r4,r0
	mov.w @(loc_8c05fc70,PC),r1
	mov 0x00,r6
	sts macl,r4
	add r3,r4

loc_8c05fc0e:
	mov.w @(loc_8c05fc6c,PC),r0
	add 0x01,r5
	cmp/ge r7,r5
	mov.w @(r0,r4),r2
	add r2,r6
	bf.s loc_8c05fc0e
	add r1,r4
	mov r6,r1
	shll2 r1
	shll r1
	mov r6,r3
	add r3,r1
	mov.l @(loc_8c05fc78,PC),r2
	shll2 r1
	mov.w @(loc_8c05fc6a,PC),r4
	shll2 r1
	jsr @r2
	mov r4,r0
	mov.l r0,@(0x4,r15)
	mov.w @(loc_8c05fc68,PC),r0
	mov.l @(loc_8c05fc78,PC),r2
	mov.l @(r0,r14),r1
	mov r1,r3
	shll2 r1
	shll r1
	add r3,r1
	shll2 r1
	shll2 r1
	jsr @r2
	mov r4,r0
	mov r13,r5
	mov r14,r4
	mov.l r0,@r15
	mov.l @(0x4,r15),r3
	cmp/gt r0,r3
	movt r6
	add 0xFF,r6
	neg r6,r6
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(loc_8c05fc80,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05fc66:
	#data 0x020c
loc_8c05fc68:
	#data 0x04b4
loc_8c05fc6a:
	#data 0x00c8
loc_8c05fc6c:
	#data 0x0420
loc_8c05fc6e:
	#data 0x05a4
loc_8c05fc70:
	#data 0x0b48
	#align4
loc_8c05fc74:
	#data loc_8c05cb3e
loc_8c05fc78:
	#data bank12.loc_8c129128
loc_8c05fc7c:
	#data 0x8c268340
loc_8c05fc80:
	#data loc_8c05ec1e

;==============================================
loc_8c05fc84:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8c05fdcc,PC),r3
	mov r5,r13
	mov r4,r14
	jsr @r3
	mov 0x00,r6
	mov.l @(loc_8c05fdcc,PC),r2
	mov r13,r5
	mov 0x02,r6
	jsr @r2
	mov r14,r4
	mov.b @(0x2,r14),r0
	mov 0x01,r4
	mov.w @(loc_8c05fdb2,PC),r3
	mov 0x03,r7
	extu.b r0,r0
	mov.l @(loc_8c05fdd0,PC),r2
	xor r0,r4
	mov.w @(loc_8c05fdb4,PC),r1
	mul.l r3,r4
	mov 0x00,r5
	mov 0x00,r6
	sts macl,r4
	add r2,r4

loc_8c05fcba:
	mov.w @(loc_8c05fdb6,PC),r0
	add 0x01,r5
	cmp/ge r7,r5
	mov.w @(r0,r4),r3
	add r3,r6
	bf.s loc_8c05fcba
	add r1,r4
	mov r6,r1
	shll2 r1
	shll r1
	mov r6,r3
	add r3,r1
	mov.l @(loc_8c05fdd4,PC),r2
	shll2 r1
	mov.w @(loc_8c05fdb8,PC),r4
	shll2 r1
	jsr @r2
	mov r4,r0
	mov.l r0,@(0x4,r15)
	mov.w @(loc_8c05fdba,PC),r0
	mov.l @(loc_8c05fdd4,PC),r2
	mov.l @(r0,r14),r1
	mov r1,r3
	shll2 r1
	shll r1
	add r3,r1
	shll2 r1
	shll2 r1
	jsr @r2
	mov r4,r0
	mov r13,r5
	mov r14,r4
	mov.l r0,@r15
	mov.l @(0x4,r15),r3
	cmp/gt r0,r3
	movt r6
	add 0xFF,r6
	neg r6,r6
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(loc_8c05fdd8,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
            ;-- loc_8c05fd12:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05fdcc,PC),r3
	mov 0x00,r6
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c05fdcc,PC),r3
	mov 0x01,r6
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c05fdbc,PC),r0
	mov 0x00,r4
	mov.w @(loc_8c05fdc0,PC),r13
	mov.w r4,@(r0,r14)
	mov.w @(loc_8c05fdbe,PC),r0
	mov.w r4,@(r0,r14)
	add 0x08,r0
	mov.l @(r0,r14),r3
	add 0x8C,r0
	mov.b @(r0,r14),r0
	neg r3,r3
	extu.b r0,r0
	cmp/eq 0x4A,r0
	shad r3,r13
	bf loc_8c05fd58
	mov.w @(loc_8c05fdc2,PC),r2
	mov.w @(loc_8c05fdc4,PC),r0
	and r2,r13
	bra loc_8c05fd62
	mov.b r4,@(r0,r14)

loc_8c05fd58:
	mov.w @(loc_8c05fdc4,PC),r0
	mov 0x01,r3
	mov 0x70,r2
	mov.b r3,@(r0,r14)
	and r2,r13

loc_8c05fd62:
	mov.w @(loc_8c05fdc6,PC),r0
	extu.w r13,r3
	mov.w @(r0,r14),r2
	tst r3,r2
	bf loc_8c05fd98
	mov.w @(r0,r14),r3
	mov 0x02,r5
	mov.l @(loc_8c05fddc,PC),r2
	or r13,r3
	mov.w r3,@(r0,r14)
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8c05fd98
	mov.w @(loc_8c05fdc8,PC),r0
	mov.w @(r0,r14),r3
	or r13,r3
	mov.w r3,@(r0,r14)
	add 0xCF,r0
	mov.b @(r0,r14),r2
	mov.w @(loc_8c05fdca,PC),r3
	or r3,r2
	mov.b r2,@(r0,r14)
	add 0x09,r0
	mov.b @(r0,r14),r1
	add 0xF6,r0
	mov.b r1,@(r0,r14)

loc_8c05fd98:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05fda4:
	sts.l pr,@-r15
	mov.l @(loc_8c05fdcc,PC),r3
	jsr @r3
	mov 0x00,r6
	lds.l @r15+,pr
	rts
	mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c05fdb2:
	#data 0x05a4
loc_8c05fdb4:
	#data 0x0b48
loc_8c05fdb6:
	#data 0x0420
loc_8c05fdb8:
	#data 0x00c8
loc_8c05fdba:
	#data 0x04b4
loc_8c05fdbc:
	#data 0x01fa
loc_8c05fdbe:
	#data 0x04ac
loc_8c05fdc0:
	#data 0x0240
loc_8c05fdc2:
	#data 0x0380
loc_8c05fdc4:
	#data 0x04ab
loc_8c05fdc6:
	#data 0x04ae
loc_8c05fdc8:
	#data 0x04dc
loc_8c05fdca:
	#data 0x0080
	#align4
loc_8c05fdcc:
	#data loc_8c05cb3e
loc_8c05fdd0:
	#data 0x8c268340
loc_8c05fdd4:
	#data bank12.loc_8c129128
loc_8c05fdd8:
	#data loc_8c05ec1e
loc_8c05fddc:
	#data loc_8c05cc14

;==============================================
loc_8c05fde0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c05ff08,PC),r3
	mov r5,r13
	mov r4,r14
	jsr @r3
	mov 0x00,r6
	mov.l @(loc_8c05ff08,PC),r2
	mov r13,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8c05fefa,PC),r0
	mov r14,r4
	mov r13,r5
	mov.l @(r0,r14),r3
	mov.w @(loc_8c05fefc,PC),r0
	mov r3,r6
	mov.l r3,@r15
	mov.b @(r0,r6),r6
	mov.w @(loc_8c05fefe,PC),r0
	mov.b @(r0,r14),r3
	cmp/eq r3,r6
	movt r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c05ff0c,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c05fe20:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c05ff08,PC),r12
	jsr @r12
	mov 0x00,r6
	mov.w @(loc_8c05ff00,PC),r1
	mov r13,r5
	mov.w @(0x4,r13),r0
	mov 0x01,r6
	add r14,r1
	mov.w r0,@r1
	mov.w @(0x4,r13),r0
	add 0x05,r0
	mov.w r0,@(0x4,r13)
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05ff02,PC),r0
	mov.l @(r0,r14),r3
	mov.w @(loc_8c05fefe,PC),r0
	mov.b @r3,r2
	mov.l @(r0,r14),r3
	cmp/ge r3,r2
	bt loc_8c05fe62
	mov.w @(0x4,r13),r0
	add 0x02,r0
	mov.w r0,@(0x4,r13)
	mov.w @(loc_8c05ff04,PC),r0
	bra loc_8c05fe7a
	mov 0x00,r3

loc_8c05fe62:
	mov r13,r5
	mov 0x02,r6
	jsr @r12
	mov r14,r4
	mov.w @(loc_8c05fefe,PC),r0
	mov.l @(r0,r14),r3
	cmp/pz r3
	bt loc_8c05fe76
	mov 0x00,r1
	mov.l r1,@(r0,r14)

loc_8c05fe76:
	mov.w @(r0,r14),r3
	add 0x8E,r0

loc_8c05fe7a:
	mov.w r3,@(r0,r14)
	mov 0x01,r0
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05fe88:
	mov.w @(loc_8c05ff06,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov 0x00,r6
	mov.l r13,@-r15
	mov 0x60,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.b r3,@(r0,r4)
	mov.w @(0x4,r5),r0
	mov.l @r5,r11
	mov.l @(loc_8c05ff10,PC),r12
	extu.w r0,r14

loc_8c05fea2:
	mov.b @(0x7,r5),r0
	add 0x01,r0
	mov.b r0,@(0x7,r5)
	mov r14,r0
	nop
	mov.b @(r0,r11),r7
	extu.b r7,r7
	mov r7,r0
	nop
	mov.b @(r0,r12),r3
	cmp/ge r13,r7
	extu.b r3,r3
	bf.s loc_8c05fec2
	add r3,r14
	bra loc_8c05ff36
	add 0x01,r6

loc_8c05fec2:
	cmp/eq 0x03,r0
	bt loc_8c05fee2
	cmp/eq 0x08,r0
	bt loc_8c05feee
	cmp/eq 0x16,r0
	bt loc_8c05ff1c
	cmp/eq 0x43,r0
	bt loc_8c05ff26
	cmp/eq 0x17,r0
	bt loc_8c05ff30
	cmp/eq 0x18,r0
	bt loc_8c05ff34
	cmp/eq 0x49,r0
	bt loc_8c05ff34
	bra loc_8c05ff36
	nop

loc_8c05fee2:
	mov.l @r15+,r11
	mov.l @(loc_8c05ff14,PC),r2
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c05feee:
	mov.l @r15+,r11
	mov.l @(loc_8c05ff18,PC),r3
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;##############################################
loc_8c05fefa:
	#data 0x020c
loc_8c05fefc:
	#data 0x01d3
loc_8c05fefe:
	#data 0x04b4
loc_8c05ff00:
	#data 0x0444
loc_8c05ff02:
	#data 0x040c
loc_8c05ff04:
	#data 0x0442
loc_8c05ff06:
	#data 0x043d
	#align4
loc_8c05ff08:
	#data loc_8c05cb3e
loc_8c05ff0c:
	#data loc_8c05ec1e
loc_8c05ff10:
	#data bank15.loc_8c151408
loc_8c05ff14:
	#data loc_8c05eca8
loc_8c05ff18:
	#data loc_8c05ecc6

;----------------------------------------------
loc_8c05ff1c:
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c05ef36
	mov.l @r15+,r14

loc_8c05ff26:
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c05ef8a
	mov.l @r15+,r14

loc_8c05ff30:
	tst r6,r6
	bf loc_8c05ff36

loc_8c05ff34:
	add 0xFF,r6

loc_8c05ff36:
	cmp/pz r6
	bt loc_8c05fea2
	mov r14,r0
	nop
	mov.w r0,@(0x4,r5)
	mov 0x00,r3
	mov.w @(loc_8c06000e,PC),r0
	mov.b r3,@(r0,r4)
	mov 0x01,r0
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05ff52:
	mov.w @(loc_8c060010,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov 0x00,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.b r3,@(r0,r4)
	mov.w @(0x4,r5),r0
	mov.l @r5,r13
	mov.l @(loc_8c060018,PC),r12
	extu.w r0,r6

loc_8c05ff68:
	mov.b @(0x7,r5),r0
	add 0x01,r0
	mov.b r0,@(0x7,r5)
	mov r6,r0
	nop
	mov.b @(r0,r13),r7
	extu.b r7,r7
	mov r7,r0
	nop
	mov.b @(r0,r12),r3
	cmp/eq 0x03,r0
	extu.b r3,r3
	bt.s loc_8c05ff98
	add r3,r6
	cmp/eq 0x08,r0
	bt loc_8c05ffa2
	cmp/eq 0x16,r0
	bt loc_8c05ffac
	cmp/eq 0x43,r0
	bt loc_8c05ffb6
	cmp/eq 0x49,r0
	bt loc_8c05ffc0
	bra loc_8c05ffc2
	nop

loc_8c05ff98:
	mov.l @r15+,r12
	mov.l @(loc_8c06001c,PC),r2
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c05ffa2:
	mov.l @r15+,r12
	mov.l @(loc_8c060020,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c05ffac:
	mov.l @r15+,r12
	mov.l @(loc_8c060024,PC),r2
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c05ffb6:
	mov.l @r15+,r12
	mov.l @(loc_8c060028,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c05ffc0:
	add 0xFF,r14

loc_8c05ffc2:
	cmp/pz r14
	bt loc_8c05ff68
	mov r6,r0
	nop
	mov.w r0,@(0x4,r5)
	mov 0x00,r3
	mov.w @(loc_8c06000e,PC),r0
	mov.b r3,@(r0,r4)
	mov 0x01,r0
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c05ffdc:
	rts
	mov 0x00,r0

;==============================================
loc_8c05ffe0:
	mov.b @(0x6,r4),r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bf loc_8c06000a
	mov.l @(loc_8c06002c,PC),r3
	mov.l @r3,r0
	mov.l @(0x1C,r0),r0
	tst 0x01,r0
	bt loc_8c06000a
	mov.w @(loc_8c060012,PC),r0
	mov.w @(loc_8c060014,PC),r1
	mov.b @(r0,r4),r3
	mov.w @(loc_8c060016,PC),r0
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll8 r3
	shll2 r3
	xor r1,r3
	mov.w r3,@(r0,r4)

loc_8c06000a:
	rts
	mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c06000e:
	#data 0x045e
loc_8c060010:
	#data 0x043d
loc_8c060012:
	#data 0x01d2
loc_8c060014:
	#data 0x0500
loc_8c060016:
	#data 0x04dc
	#align4
loc_8c060018:
	#data bank15.loc_8c151408
loc_8c06001c:
	#data loc_8c05eca8
loc_8c060020:
	#data loc_8c05ecc6
loc_8c060024:
	#data loc_8c05ef36
loc_8c060028:
	#data loc_8c05ef8a
loc_8c06002c:
	#data work.GameGlobalPointer
