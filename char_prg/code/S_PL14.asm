;==============================================
;Son Son Program
;==============================================

#symbol loc_8c054508 0x8C054508
#symbol loc_8c054B34 0x8C054B34
#symbol loc_8c05496C 0x8C05496C
#symbol loc_8c054D04 0x8C054D04
#symbol loc_8c053F6E 0x8C053F6E
#symbol loc_8c053E00 0x8C053E00
#symbol loc_8c0542E0 0x8C0542E0
#symbol loc_8c054E58 0x8C054E58
#symbol loc_8c055C3A 0x8C055C3A
#symbol loc_8c0530D8 0x8C0530D8
#symbol loc_8c055244 0x8C055244
#symbol loc_8c0559DA 0x8C0559DA
#symbol loc_8c054DA0 0x8C054DA0
#symbol loc_8c054D1C 0x8C054D1C
#symbol loc_8c052B4C 0x8C052B4C
#symbol loc_8c034E8C 0x8C034E8C
#symbol loc_8c04223A 0x8C04223A
#symbol loc_8c0D13BC 0x8C0D13BC
#symbol loc_8c0D0584 0x8C0D0584
#symbol loc_8c2896B0 0x8C2896B0
#symbol loc_8c0511E2 0x8C0511E2
#symbol loc_8c052C84 0x8C052C84
#symbol loc_8c034DEE 0x8C034DEE
#symbol loc_8c051648 0x8C051648
#symbol loc_8c050084 0x8C050084
#symbol loc_8c04FF88 0x8C04FF88
#symbol loc_8c04FEA8 0x8C04FEA8
#symbol loc_8c050048 0x8C050048
#symbol loc_8c052CE2 0x8C052CE2
#symbol loc_8c052DAC 0x8C052DAC
#symbol loc_8c05176E 0x8C05176E
#symbol loc_8c056DE4 0x8C056DE4
#symbol loc_8c0332E0 0x8C0332E0
#symbol loc_8c042008 0x8C042008
#symbol loc_8c0511B4 0x8C0511B4
#symbol loc_8c046C8A 0x8C046C8A
#symbol loc_8c035162 0x8C035162
#symbol loc_8c0514B8 0x8C0514B8
#symbol loc_8c03319E 0x8C03319E
#symbol loc_8c05218A 0x8C05218A
#symbol loc_8c05115A 0x8C05115A
#symbol loc_8c055D54 0x8C055D54
#symbol loc_8c053082 0x8C053082
#symbol loc_8c0518A0 0x8C0518A0
#symbol loc_8c050834 0x8C050834
#symbol loc_8c07EDB8 0x8C07EDB8
#symbol loc_8c05264C 0x8C05264C
#symbol loc_8c0522E0 0x8C0522E0
#symbol loc_8c07F7EC 0x8C07F7EC
#symbol loc_8c02FEC4 0x8C02FEC4
#symbol loc_8c0310F2 0x8C0310F2
#symbol loc_8c289628 0x8C289628
#symbol loc_8c03544c 0x8C03544C
#symbol loc_8c05A2CC 0x8C05A2CC
#symbol loc_8c26823C 0x8C26823C
#symbol loc_8c26A518 0x8C26A518
#symbol loc_8c0F047C 0x8C0F047C
#symbol loc_8c0FD75C 0x8C0FD75C
#symbol loc_8c0805D8 0x8C0805D8
#symbol loc_8c26A5A8 0x8C26A5A8
#symbol loc_8c26A5A0 0x8C26A5A0
#symbol loc_8c0802D8 0x8C0802D8
#symbol loc_8c059150 0x8C059150
#symbol loc_8c104DF8 0x8C104DF8
#symbol loc_8c050EA4 0x8C050EA4
#symbol loc_8c045790 0x8C045790
#symbol loc_8c103660 0x8C103660
#symbol loc_8c056F2A 0x8C056F2A
#symbol loc_8c05933C 0x8C05933C
#symbol loc_8c0FDAB6 0x8C0FDAB6
#symbol loc_8c02FD26 0x8C02FD26
#symbol loc_8c1294C8 0x8C1294C8
#symbol loc_8c04CC1C 0x8C04CC1C
#symbol loc_8c02FDB0 0x8C02FDB0
#symbol loc_8c1025CA 0x8C1025CA
#symbol loc_8c04CE3A 0x8C04CE3A
#symbol loc_8c051854 0x8C051854
#symbol loc_8c129728 0x8C129728



;======================================================================
start_CE30000:
	mov.w @(loc_cE300DA,pc),r0 ; r0 set to 0x428
	mov 0x70,r5 ; r5 set to 0x70
	mov.l @(loc_cE300E0_to_PL14_jumptable,pc),r7 ; r7 set to 0xCE36264
	mov.l @(r0,r4),r6
	mov 0x00,r4 ; r4 set to 0x00

loc_cE3000A:
	mov r4,r0 ; r0 set to 0x00
	nop
	add 0x04,r4 ; r4 set to 0x04
	mov.l @(r0,r7),r3
	cmp/hs r5,r4
	bf/s loc_cE3000A
	mov.l r3,@(r0,r6)
	rts
	nop

;==============================================
loc_cE3001C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE300E4,pc),r3 ; r3 set to 0x8C054508
	jsr @r3
	mov r4,r14
	extu.b r0,r0
	tst r0,r0
	bf loc_cE30100
	mov.l @(loc_cE300E8,pc),r3 ; r3 set to 0x8C054B34
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_cE30100
	mov.l @(loc_cE300EC,pc),r3 ; r3 set to 0x8C05496C
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_cE30100
	mov.l @(loc_cE300F0,pc),r3 ; r3 set to 0x8C054D04
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_cE30100
	bsr loc_cE30300
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_cE30100
	bsr loc_cE303F0
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_cE30100
	bsr loc_cE30460
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_cE30100
	bsr loc_cE30214
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_cE30100
	bsr loc_cE30106
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_cE30100
	bsr loc_cE30178
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_cE30100
	bsr loc_cE3027A
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_cE30100
	bsr loc_cE30368
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_cE30100
	bsr loc_cE3050C
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_cE30100
	bsr loc_cE30572
	mov r14,r4
	tst r0,r0
	bf loc_cE30100
	bsr loc_cE305AC
	mov r14,r4
	tst r0,r0
	bf loc_cE30100
	mov.w @(loc_cE300DC,pc),r5 ; r5 set to 0x39C
	mov.l @(loc_cE300F4,pc),r3 ; r3 set to 0x8C053F6E
	add r14,r5 ; r5 ??? bc r14 is ???
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_cE30100
	mov.l @(loc_cE300F8,pc),r3 ; r3 set to 0x8C053E00
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_cE300FC,pc),r2 ; r2 set to 0x8C0542E0
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE300DA:
	#data 0x0428
loc_cE300DC:
	#data 0x039C
	#align4

loc_cE300E0_to_PL14_jumptable:
	#data PL14_jumptable
loc_cE300E4:
	#data loc_8c054508
loc_cE300E8:
	#data loc_8c054B34
loc_cE300EC:
	#data loc_8c05496C
loc_cE300F0:
	#data loc_8c054D04
loc_cE300F4:
	#data loc_8c053F6E
loc_cE300F8:
	#data loc_8c053E00
loc_cE300FC:
	#data loc_8c0542E0

;==============================================
loc_cE30100:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE30106:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0xe8,pc),r5
	mov.w @(0xd8,pc),r6
	mov.l @(0xe8,pc),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce30146
	mov.w @(0xcc,pc),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_ce3013c
	mov.w @(0xc4,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_ce3013c
	mov.w @(0xbe,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_ce30146
	mov.b @(r0,r14),r2
	add 0x01,r2
	mov.b r2,@(r0,r14)

loc_cE3013C:
	mov.w @(0xb2,pc),r4
	add r14,r4
	mov.w @(0x1e,r4),r0
	tst r0,r0
	bt loc_ce3014e


loc_cE30146:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_cE3014E:
	mov.w @(0x98,pc),r5
	mov.l @(0xac,pc),r3
	add r14,r5
	jsr @r3
	mov r14,r4
	mov 0x00,r4
	mov r4,r0
	nop
	mov.b r0,@(0x5,r14)
	mov 0x15,r5
	mov.b r0,@(0x7,r14)
	mov.b r0,@(0x6,r14)
	mov.w @(0x8a,pc),r0
	mov.l @(0x98,pc),r3
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE30178:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x88,pc),r5
	mov.w @(0x72,pc),r6
	mov.l @(0x88,pc),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce301b4
	mov.l @(0x80,pc),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_ce301b4
	mov.w @(0x4e,pc),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_ce301c2
	mov.w @(0x46,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_ce301c2
	mov.w @(0x40,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce301bc

loc_cE301B4:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_cE301BC:
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)

loc_cE301C2:
	mov.w @(0x30,pc),r5
	mov.l @(0x38,pc),r2
	add r14,r5
	jsr @r2
	mov r14,r4
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	mov 0x01,r3
	mov.b r0,@(0x7,r14)
	mov 0x15,r5
	mov.b r0,@(0x6,r14)
	mov.w @(0x18,pc),r0
	mov.b r3,@(r0,r14)
	mov.l @(0x24,pc),r3
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE301ea:
	#data 0x0364
loc_cE301ec:
	#data 0x01F9
loc_cE301ee:
	#data 0x01FC
loc_cE301f0:
	#data 0x01D4
loc_cE301f2:
	#data 0x02A4
loc_cE301f4:
	#data 0x01E9
loc_cE301f6:
	#data 0x036C
	#align4

loc_cE301F8_to_loc_cE361D0:
	#data loc_cE361D0
loc_cE301FC:
	#data loc_8c054E58
loc_cE30200:
	#data loc_8c055C3A
loc_cE30204:
	#data loc_8c0530D8
loc_cE30208_to_loc_cE361E0:
	#data loc_cE361E0
loc_cE3020c:
	#data loc_8c055244
loc_cE30210:
	#data loc_8c0559DA

;==============================================
loc_cE30214:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0xd0,pc),r5
	mov.w @(0xc0,pc),r6
	mov.l @(0xd0,pc),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce30244
	mov.w @(0xb4,pc),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_ce30252
	mov.w @(0xac,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_ce30252
	mov.w @(0xa6,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce3024c

loc_cE30244:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_cE3024C:
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)

loc_cE30252:
	mov.w @(0x8a,pc),r5
	mov.l @(0x9c,pc),r2
	add r14,r5
	jsr @r2
	mov r14,r4
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	mov 0x02,r3
	mov.b r0,@(0x7,r14)
	mov 0x15,r5
	mov.b r0,@(0x6,r14)
	mov.w @(0x7c,pc),r0
	mov.b r3,@(r0,r14)
	mov.l @(0x88,pc),r3
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE3027A:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x78,pc),r5
	mov.w @(0x64,pc),r6
	mov.l @(0x68,pc),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce302aa
	mov.w @(0x4e,pc),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_ce302b8
	mov.w @(0x46,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_ce302b8
	mov.w @(0x40,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce302b2

loc_cE302AA:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_cE302B2:
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)

loc_cE302B8:
	mov.w @(0x2e,pc),r5
	mov.l @(0x38,pc),r2
	add r14,r5
	jsr @r2
	mov r14,r4
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	mov 0x03,r3
	mov.b r0,@(0x7,r14)
	mov 0x15,r5
	mov.b r0,@(0x6,r14)
	mov.w @(0x16,pc),r0
	mov.b r3,@(r0,r14)
	mov.l @(0x24,pc),r3
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE302e0:
	#data 0x0374
loc_cE302e2:
	#data 0x01F9
loc_cE302e4:
	#data 0x01FC
loc_cE302e6:
	#data 0x01D4
loc_cE302e8:
	#data 0x01E9
loc_cE302ea:
	#data 0x037C
	#align4

loc_cE302EC_to_loc_cE361EA:
	#data loc_cE361EA
loc_CE302F0:
	#data loc_8c054E58
loc_CE302F4:
	#data loc_8c055C3A
loc_CE302F8:
	#data loc_8c0530D8
loc_cE302FC_to_loc_cE361FA:
	#data loc_cE361FA

;==============================================
loc_cE30300:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0xd4,pc),r5
	mov.w @(0xc2,pc),r6
	mov.l @(0xd4,pc),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce30332
	mov.w @(0xb6,pc),r0
	mov.l @(r0,r14),r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_ce30332
	mov.w @(0xae,pc),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_ce30340
	mov.w @(0xa6,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce3033a

loc_cE30332:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_cE3033A:
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)

loc_cE30340:
	mov.w @(0x8a,pc),r5
	mov.l @(0xa0,pc),r2
	add r14,r5
	jsr @r2
	mov r14,r4
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	mov 0x04,r3
	mov.b r0,@(0x7,r14)
	mov 0x1D,r5
	mov.b r0,@(0x6,r14)
	mov.w @(0x7c,pc),r0
	mov.b r3,@(r0,r14)
	mov.l @(0x8c,pc),r3
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE30368:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x7c,pc),r5
	mov.w @(0x64,pc),r6
	mov.l @(0x6c,pc),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce30398
	mov.w @(0x50,pc),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_ce303a6
	mov.w @(0x4e,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_ce303a6
	mov.w @(0x40,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce303a0

loc_cE30398:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_cE303A0:
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)

loc_cE303A6:
	mov.w @(0x2e,pc),r5
	mov.l @(0x38,pc),r2
	add r14,r5
	jsr @r2
	mov r14,r4
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	mov 0x05,r3
	mov.b r0,@(0x7,r14)
	mov 0x15,r5
	mov.b r0,@(0x6,r14)
	mov.w @(0x16,pc),r0
	mov.b r3,@(r0,r14)
	mov.l @(0x24,pc),r3
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE303ce:
	#data 0x0384
loc_cE303d0:
	#data 0x040c
loc_cE303d2:
	#data 0x01f9
loc_cE303d4:
	#data 0x01d4
loc_cE303d6:
	#data 0x01e9
loc_cE303d8:
	#data 0x038c
loc_cE303da:
	#data 0x01fc
	#align4

loc_cE303DC_to_loc_cE3620E:
	#data loc_cE3620E
loc_cE303E0:
	#data loc_8c054E58
loc_cE303E4:
	#data loc_8c055C3A
loc_cE303E8:
	#data loc_8c0530D8
loc_cE303EC_to_loc_cE3621E:
	#data loc_cE3621E

;==============================================
loc_cE303F0:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x100,pc),r5
	mov.w @(0xe8,pc),r6
	mov.l @(0x100,pc),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce3042a
	mov.w @(0xdc,pc),r0
	mov.l @(r0,r14),r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_ce3042a
	mov.w @(0xd4,pc),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_ce30438
	mov.w @(0xcc,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_ce30438
	mov.w @(0xc6,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce30432

loc_cE3042A:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_cE30432:
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)

loc_cE30438:
	mov.w @(0xa8,pc),r5
	mov.l @(0xc4,pc),r2
	add r14,r5
	jsr @r2
	mov r14,r4
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	mov 0x06,r3
	mov.b r0,@(0x7,r14)
	mov 0x1D,r5
	mov.b r0,@(0x6,r14)
	mov.w @(0x9c,pc),r0
	mov.b r3,@(r0,r14)
	mov.l @(0xb0,pc),r3
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE30460:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0xa0,pc),r5
	mov.w @(0x84,pc),r6
	mov.l @(0x90,pc),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce3049a
	mov.w @(0x6c,pc),r0
	mov.l @(r0,r14),r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_ce3049a
	mov.w @(0x64,pc),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_ce304a8
	mov.w @(0x5c,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_ce304a8
	mov.w @(0x56,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce304a2

loc_cE3049A:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_cE304A2:
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)

loc_cE304A8:
	mov.w @(0x44,pc),r5
	mov.l @(0x54,pc),r2
	add r14,r5
	jsr @r2
	mov r14,r4
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	mov 0x07,r3
	mov.b r0,@(0x7,r14)
	mov 0x1D,r5
	mov.b r0,@(0x6,r14)
	mov.w @(0x2c,pc),r0
	mov.b r3,@(r0,r14)
	mov.l @(0x40,pc),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x26,pc),r4
	mov.w @(0x26,pc),r0
	add r14,r4
	mov.w r0,@(0xa,r4)
	mov.w @(0x22,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce304de
	mov.w @(0x12,pc),r0
	mov 0x0C,r3
	mov.b r3,@(r0,r14)

loc_cE304DE:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE304e4:
	#data 0x0394
loc_cE304e6:
	#data 0x040C
loc_cE304e8:
	#data 0x01F9
loc_cE304ea:
	#data 0x01FC
loc_cE304ec:
	#data 0x01D4
loc_cE304ee:
	#data 0x01E9
loc_cE304f0:
	#data 0x03A4
loc_cE304f2:
	#data 0x02A4
loc_cE304f4:
	#data 0x00F0
loc_cE304f6:
	#data 0x0525
	#align4

loc_cE304F8_to_loc_cE36232:
	#data loc_cE36232
loc_cE304Fc:
	#data loc_8c054E58
loc_cE30500:
	#data loc_8c055C3A
loc_cE30504:
	#data loc_8c0530D8
loc_cE30508_to_loc_cE36242:
	#data loc_cE36242

;==============================================
loc_cE3050C:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x110,pc),r5
	mov.w @(0x100,pc),r6
	mov.l @(0x110,pc),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce3053c
	mov.w @(0xf4,pc),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_ce3054a
	mov.w @(0xec,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_ce3054a
	mov.w @(0xe6,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce30544

loc_cE3053C:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_cE30544:
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)

loc_cE3054A:
	mov.w @(0xca,pc),r5
	mov.l @(0xdc,pc),r2
	add r14,r5
	jsr @r2
	mov r14,r4
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	mov 0x0B,r3
	mov.b r0,@(0x7,r14)
	mov 0x15,r5
	mov.b r0,@(0x6,r14)
	mov.w @(0xbc,pc),r0
	mov.b r3,@(r0,r14)
	mov.l @(0xc8,pc),r3
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE30572:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(loc_cE30634,pc),r3 ; r3 set to 0x8C054DA0
	jsr @r3
	mov 0x08,r5 ; r5 set to 0x08
	extu.b r0,r0
	tst r0,r0
	bf loc_cE3058C
	lds.l @r15+,pr
	mov 0x00,r0 ; r0 set to 0x00
	rts
	mov.l @r15+,r14

;==============================================
loc_cE3058C:
	mov.w @(loc_cE30620,pc),r0 ; r0 set to 0x1E9
	mov 0x08,r3 ; r3 set to 0x08
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r3,@(r0,r14)
	mov 0x00,r0 ; r0 set to 0x00
	mov.l @(loc_cE30630,pc),r3 ; r3 set to 0x8C0530D8
	mov.b r0,@(0x05,r14)
	jsr @r3
	mov r14,r4
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x07,r14)
	mov.b r0,@(0x06,r14)
	mov 0x01,r0 ; r0 set to 0x01
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE305AC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x84,pc),r3
	jsr @r3
	mov r4,r14
	tst r0,r0
	bt loc_ce305c4
	mov.w @(0x64,pc),r0
	mov.l @(r0,r14),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_ce305cc

loc_cE305C4:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14


loc_cE305CC:
	mov.w @(0x50,pc),r0
	mov 0x0A,r3
	mov 0x1D,r5
	mov.b r3,@(r0,r14)
	mov 0x00,r0
	mov.l @(0x58,pc),r3
	mov.b r0,@(0x5,r14)
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
loc_cE305EC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_ce3063c
	mov r4,r14
	tst r0,r0
	bf loc_ce30608
	bsr loc_ce30672
	mov r14,r4
	tst r0,r0
	bf loc_ce30608
	bsr loc_ce306a8
	mov r14,r4
	tst r0,r0
	bt loc_ce30610

loc_cE30608:
	lds.l @r15+,pr
	mov 0x01,r0
	rts
	mov.l @r15+,r14

loc_cE30610:
	mov 0x00,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE30618:
	#data 0x03AC
loc_cE3061a:
	#data 0x01F9
loc_cE3061c:
	#data 0x01FC
loc_cE3061e:
	#data 0x01D4
loc_cE30620:
	#data 0x01E9
loc_cE30622:
	#data 0x040C
	#align4

loc_cE30624_to_loc_cE36252:
	#data loc_cE36252
	#data loc_8c054E58
	#data loc_8c055C3A

loc_cE30630:
	#data loc_8c0530D8

loc_cE30634:
	#data loc_8c054DA0
	#data loc_8c054D1C

;==============================================
loc_cE3063C:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0xf4,pc),r5
	mov.w @(0xd8,pc),r6
	mov.l @(0xf4,pc),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce3065c
	mov.w @(0xcc,pc),r0
	mov.l @(r0,r14),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_ce30664

loc_cE3065C:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_cE30664:
	mov.w @(0xbc,pc),r0
	mov 0x04,r3
	mov.b r3,@(r0,r14)
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14


;==============================================
loc_cE30672:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0xc4,pc),r5
	mov.w @(0xa8,pc),r6
	mov.l @(0xbc,pc),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce30692
	mov.w @(0x96,pc),r0
	mov.l @(r0,r14),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_ce3069a

loc_cE30692:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_cE3069A:
	mov.w @(0x86,pc),r0
	mov 0x06,r3
	mov.b r3,@(r0,r14)
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14


;==============================================
loc_cE306A8:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x94,pc),r5
	mov.w @(0x74,pc),r6
	mov.l @(0x88,pc),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce306c8
	mov.w @(0x60,pc),r0
	mov.l @(r0,r14),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_ce306d0

loc_cE306C8:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_cE306D0:
	mov.w @(0x50,pc),r0
	mov 0x07,r3
	mov.w @(0x52,pc),r4
	mov.b r3,@(r0,r14)
	mov.w @(0x50,pc),r0
	add r14,r4
	mov.w r0,@(0xa,r4)
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE306E6:
	mov.w @(0x44,pc),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf.s loc_ce30748
	mov 0x00,r5
	mov.w @(0x3a,pc),r0
	mov.b @(r0,r4),r6
	extu.b r6,r0
	cmp/eq 0x07,r0
	bf.s loc_ce30706
	mov r0,r6
	mov r6,r0
	nop
	cmp/eq 0x0C,r0
	bt loc_ce30712

loc_cE30706:
	mov.w @(0x28,pc),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_ce30712
	mov.w @(0x22,pc),r0
	mov.b r5,@(r0,r4)

loc_cE30712:
	mov.w @(0x1a,pc),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bt loc_ce30770
	bra loc_ce30770
	nop

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_cE30720:
	#data 0x0384
loc_cE30722:
	#data 0x040C
loc_cE30724:
	#data 0x0258
loc_cE30726:
	#data 0x0394
loc_cE30728:
	#data 0x039C
loc_cE3072a:
	#data 0x02A4
loc_cE3072c:
	#data 0x00F0
loc_cE3072e:
	#data 0x01D0
loc_cE30730:
	#data 0x01E9
loc_cE30732:
	#data 0x01A0
loc_cE30734:
	#data 0x0202
	#align4

loc_cE30738_to_loc_cE3620E:
	#data loc_cE3620E
	#data loc_8c054E58

loc_cE30740_to_loc_cE36232:
	#data loc_cE36232
loc_cE30744_to_loc_cE36242:
	#data loc_cE36242

;----------------------------------------------
loc_cE30748:
	mov.w @(0x104,pc),r0
	mov.b r5,@(r0,r4)
	add 0xCE,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x1F,r0
	bf loc_ce30762
	mov.w @(0xf8,pc),r0
	mov.w @(0xf8,pc),r3
	mov.b @(r0,r4),r2
	extu.b r2,r2
	cmp/eq r3,r2
	bt loc_ce30770

loc_cE30762:
	mov 0x50,r0
	fldi1 fr4
	fmov fr4,@(r0,r4)
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	mov 0x48,r0
	mov.l r5,@(r0,r4)

loc_cE30770:
	rts
	nop

;==============================================
loc_cE30774:
	mov.w @(loc_cE30856,pc),r0 ; r0 set to 0x1FF
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_cE30864_to_loc_cE362D4_to_loc_cE30788,pc),r0 ; r0 set to 0xCE362D4
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

loc_cE30788:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE30868,pc),r3 ; r3 set to 0x8C052B4C
	jsr @r3
	mov r4,r14
	mov.w @(loc_cE30858,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_cE307B6
	mov.w @(loc_cE3085A,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_cE307AE
	lds.l @r15+,pr
	mov r14,r4
	bra loc_cE30ABA
	mov.l @r15+,r14

loc_cE307AE:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_cE309F0
	mov.l @r15+,r14

loc_cE307B6:
	mov.w @(loc_cE3085A,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_cE307C8
	lds.l @r15+,pr
	mov r14,r4
	bra loc_cE30914
	mov.l @r15+,r14

loc_cE307C8:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_cE307D0
	mov.l @r15+,r14

loc_cE307D0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(loc_cE3085C,pc),r0 ; r0 set to 0x1E8
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(loc_cE3086C,pc),r11 ; r11 set to 0x8C034E8C
	extu.b r0,r0
	mov.l @(loc_cE30870,pc),r12 ; r12 set to 0x8C04223A
	cmp/eq 0x00,r0
	bt/s loc_cE307FA
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt loc_cE30828
	cmp/eq 0x02,r0
	bt loc_cE30880
	bra loc_cE308E8
	nop

loc_cE307FA:
	mov.w @(loc_cE3085E,pc),r0 ; r0 set to 0x158
	mov 0x07,r5 ; r5 set to 0x07
	mov.b r13,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r13,@(r0,r14)
	add 0xB7,r0 ; r0 set to 0x158
	mov.b @(r0,r14),r6
	jsr @r11
	mov r14,r4
	mov.l @(loc_cE30874,pc),r3 ; r3 set to 0x8C0D13BC
	mov 0x00,r5 ; r5 set to 0x00
	mov 0x02,r6 ; r6 set to 0x02
	jsr @r3
	mov r14,r4
	mov 0x14,r5 ; r5 set to 0x14
	jsr @r12
	mov r14,r4
	mov.w @(loc_cE30860,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_cE30878_to_loc_cE36188,pc),r2 ; r2 set to 0xCE36188
	mov.l r2,@(r0,r14)
	mov.w @(loc_cE30862,pc),r0 ; r0 set to 0x1A7
	bra loc_cE308E8
	mov.b r13,@(r0,r14)

loc_cE30828:
	mov.w @(loc_cE3085E,pc),r0 ; r0 set to 0x158
	mov 0x01,r10 ; r10 set to 0x01
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r10,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r10,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_cE30860,pc),r0 ; r0 set to 0x3F4
	mov 0x07,r5 ; r5 set to 0x07
	mov.l @(loc_cE3087C_to_loc_cE3618C,pc),r3 ; r3 set to 0xCE3618C
	mov.l r3,@(r0,r14)
	mov.w @(loc_cE30862,pc),r0 ; r0 set to 0x1A7
	mov.b r10,@(r0,r14)
	add 0xB1,r0 ; r0 set to 0x158
	mov.b @(r0,r14),r6
	jsr @r11
	mov r14,r4
	bra loc_cE308DE
	nop

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_cE30850:
	#data 0x0202
loc_cE30852:
	#data 0x01F7
loc_cE30854:
	#data 0x00C3
loc_cE30856:
	#data 0x01FF
loc_cE30858:
	#data 0x01FE
loc_cE3085A:
	#data 0x01F9
loc_cE3085C:
	#data 0x01E8
loc_cE3085E:
	#data 0x0158
loc_cE30860:
	#data 0x03F4
loc_cE30862:
	#data 0x01A7
	#align4

loc_cE30864_to_loc_cE362D4_to_loc_cE30788:
	#data loc_cE362D4_to_loc_cE30788
loc_cE30868:
	#data loc_8c052B4C
loc_cE3086C:
	#data loc_8c034E8C
loc_cE30870:
	#data loc_8c04223A
loc_cE30874:
	#data loc_8c0D13BC
loc_cE30878_to_loc_cE36188:
	#data loc_cE36188
loc_cE3087C_to_loc_cE3618C:
	#data loc_cE3618C

;==============================================
loc_cE30880:
	mov.w @(loc_cE309C0,pc),r0 ; r0 set to 0x1FA
	mov.w @(loc_cE309C2,pc),r2 ; r2 set to 0x800
	mov.w @(r0,r14),r3
	extu.w r3,r3
	tst r2,r3
	bt/s loc_cE308A8
	mov 0x02,r10 ; r10 set to 0x02
	mov.w @(loc_cE309C4,pc),r0 ; r0 set to 0x158
	mov 0x03,r3 ; r3 set to 0x03
	mov 0x12,r1 ; r1 set to 0x12
	mov.b r3,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r1,@(r0,r14)
	add 0xB7,r0 ; r0 set to 0x158
	mov.b @(r0,r14),r6
	mov 0x07,r5 ; r5 set to 0x07
	jsr @r11
	mov r14,r4
	bra loc_cE308CE
	nop

loc_cE308A8:
	mov.w @(0x118,pc),r0
	mov 0x07,r5
	mov.b r10,@(r0,r14)
	add 0x49,r0
	mov.b r10,@(r0,r14)
	add 0xB7,r0
	mov.b @(r0,r14),r6
	jsr @r11
	mov r14,r4
	mov.l @(0x114,pc),r3
	mov 0x04,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	mov.l @(0x108,pc),r2
	mov 0x05,r5
	mov 0x00,r6
	jsr @r2
	mov r14,r4

loc_cE308CE:
	mov 0x16,r5
	jsr @r12
	mov r14,r4
	mov.w @(0xee,pc),r0
	mov.l @(0xfc,pc),r3
	mov.l r3,@(r0,r14)
	mov.w @(0xea,pc),r0
	mov.b r10,@(r0,r14)

loc_cE308DE:
	mov.l @(0xf8,pc),r3
	mov 0x00,r5
	mov 0x02,r6
	jsr @r3
	mov r14,r4

loc_cE308E8:
	mov.w @(loc_cE309CA,pc),r0 ; r0 set to 0x1AC
	mov.l @(loc_cE309DC,pc),r3 ; r3 set to 0x8C2896B0
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
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
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_cE30914:
	mov.w @(loc_cE309CC,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(loc_cE309E0,pc),r12 ; r12 set to 0x8C04223A
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_cE30938
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt loc_cE30954
	cmp/eq 0x02,r0
	bt loc_cE30970
	bra loc_cE3098E
	nop

loc_cE30938:
	mov.w @(loc_cE309C4,pc),r0 ; r0 set to 0x158
	mov 0x06,r3 ; r3 set to 0x06
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r13,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_cE309C6,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_cE309E4_to_loc_cE36188,pc),r3 ; r3 set to 0xCE36188
	mov.l r3,@(r0,r14)
	mov.w @(loc_cE309C8,pc),r0 ; r0 set to 0x1A7
	bra loc_cE3098E
	mov.b r13,@(r0,r14)

loc_cE30954:
	mov.w @(loc_cE309C4,pc),r0 ; r0 set to 0x158
	mov 0x01,r2 ; r2 set to 0x01
	mov 0x07,r3 ; r3 set to 0x07
	mov.b r2,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_cE309C6,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_cE309E8_to_loc_cE3618C,pc),r3 ; r3 set to 0xCE3618C
	mov.l r3,@(r0,r14)
	bra loc_cE3098A
	mov 0x01,r2

loc_cE30970:
	mov.w @(0x50,pc),r0
	mov 0x02,r1
	mov 0x08,r3
	mov.b r1,@(r0,r14)
	add 0x49,r0
	mov 0x16,r5
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(0x40,pc),r0
	mov 0x02,r2
	mov.l @(0x4c,pc),r3
	mov.l r3,@(r0,r14)

loc_cE3098A:
	mov.w @(0x3a,pc),r0
	mov.b r2,@(r0,r14)

loc_cE3098E:
	mov.w @(loc_cE309CA,pc),r0 ; r0 set to 0x1AC
	mov 0x09,r5 ; r5 set to 0x09
	mov.l @(loc_cE309DC,pc),r3 ; r3 set to 0x8C2896B0
	mov r14,r4
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
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
	lds.l @r15+,pr
	mov.w @(loc_cE309C4,pc),r0 ; r0 set to 0x158
	mov.l @(loc_cE309EC,pc),r2 ; r2 set to 0x8C034E8C
	mov.l @r15+,r12
	mov.b @(r0,r14),r6
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE309C0:
	#data 0x01FA
loc_cE309C2:
	#data 0x0800
loc_cE309C4:
	#data 0x0158
loc_cE309C6:
	#data 0x03F4
loc_cE309C8:
	#data 0x01A7
loc_cE309CA:
	#data 0x01AC
loc_cE309CC:
	#data 0x01E8
	#align4

loc_cE309D0:
	#data loc_8c0D0584
loc_cE309D4_to_loc_cE36190:
	#data loc_cE36190
loc_cE309D8:
	#data loc_8c0D13BC
loc_cE309DC:
	#data loc_8c2896B0
loc_cE309E0:
	#data loc_8c04223A
loc_cE309E4_to_loc_cE36188:
	#data loc_cE36188
loc_cE309E8_to_loc_cE3618C:
	#data loc_cE3618C
loc_cE309EC:
	#data loc_8c034E8C

;==============================================
loc_cE309F0:
	mov.w @(loc_cE30AFA,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(loc_cE30B04,pc),r12 ; r12 set to 0x8C04223A
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_cE30A14
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt loc_cE30A30
	cmp/eq 0x02,r0
	bt loc_cE30A68
	bra loc_cE30A92
	nop

loc_cE30A14:
	mov.w @(loc_cE30AFC,pc),r0 ; r0 set to 0x158
	mov 0x03,r3 ; r3 set to 0x03
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r13,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_cE30AFE,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_cE30B08_to_loc_cE36194,pc),r3 ; r3 set to 0xCE36194
	mov.l r3,@(r0,r14)
	mov.w @(loc_cE30B00,pc),r0 ; r0 set to 0x1A7
	bra loc_cE30A86
	mov.b r13,@(r0,r14)

loc_cE30A30:
	mov.w @(loc_cE30AFC,pc),r0 ; r0 set to 0x158
	mov 0x01,r3 ; r3 set to 0x01
	mov 0x04,r2 ; r2 set to 0x04
	mov.b r3,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r2,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_cE30AFE,pc),r0 ; r0 set to 0x3F4
	mov 0x01,r2 ; r2 set to 0x01
	mov.l @(loc_cE30B0C_to_loc_cE36198,pc),r3 ; r3 set to 0xCE36198
	mov 0x08,r5 ; r5 set to 0x08
	mov.l r3,@(r0,r14)
	mov.w @(loc_cE30B00,pc),r0 ; r0 set to 0x1A7
	mov.l @(loc_cE30B10,pc),r3 ; r3 set to 0x8C034E8C
	mov.b r2,@(r0,r14)
	add 0xB1,r0 ; r0 set to 0x158
	mov.b @(r0,r14),r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_cE30B14,pc),r2 ; r2 set to 0x8C0D13BC
	mov 0x00,r5 ; r5 set to 0x00
	mov 0x02,r6 ; r6 set to 0x02
	jsr @r2
	mov r14,r4
	bra loc_cE30A92
	nop

loc_cE30A68:
	mov.w @(0x90,pc),r0
	mov 0x02,r2
	mov 0x05,r3
	mov.b r2,@(r0,r14)
	add 0x49,r0
	mov 0x16,r5
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(0x80,pc),r0
	mov 0x02,r2
	mov.l @(0x98,pc),r3
	mov.l r3,@(r0,r14)
	mov.w @(0x7a,pc),r0
	mov.b r2,@(r0,r14)

loc_cE30A86:
	mov.w @(loc_cE30AFC,pc),r0 ; r0 set to 0x158
	mov 0x08,r5 ; r5 set to 0x08
	mov.l @(loc_cE30B10,pc),r3 ; r3 set to 0x8C034E8C
	mov.b @(r0,r14),r6
	jsr @r3
	mov r14,r4

loc_cE30A92:
	mov.w @(loc_cE30B02,pc),r0 ; r0 set to 0x1AC,r0 set to 0x1AC
	mov.l @(loc_cE30B1C,pc),r3 ; r3 set to 0x8C2896B0,r3 set to 0x8C2896B0
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E,r0 set to 0x19E
	mov.b r13,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4,r0 set to 0x1C4
	mov.l r13,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4,r0 set to 0xC4
	shll r0 ; r0 set to 0x188,r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_cE30ABA:
	mov.w @(loc_cE30AFA,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(loc_cE30B04,pc),r12 ; r12 set to 0x8C04223A
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_cE30ADE
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt loc_cE30B20
	cmp/eq 0x02,r0
	bt loc_cE30B3C
	bra loc_cE30B5A
	nop

loc_cE30ADE:
	mov.w @(loc_cE30AFC,pc),r0 ; r0 set to 0x158
	mov 0x09,r3 ; r3 set to 0x09
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r13,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_cE30AFE,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_cE30B08_to_loc_cE36194,pc),r3 ; r3 set to 0xCE36194
	mov.l r3,@(r0,r14)
	mov.w @(loc_cE30B00,pc),r0 ; r0 set to 0x1A7
	bra loc_cE30B5A
	mov.b r13,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE30AFA:
	#data 0x01E8
loc_cE30AFC:
	#data 0x0158
loc_cE30AFE:
	#data 0x03F4
loc_cE30B00:
	#data 0x01A7
loc_cE30B02:
	#data 0x01AC
	#align4

loc_cE30B04:
	#data loc_8c04223A
loc_cE30B08_to_loc_cE36194:
	#data loc_cE36194
loc_cE30B0C_to_loc_cE36198:
	#data loc_cE36198
loc_cE30B10:
	#data loc_8c034E8C
loc_cE30B14:
	#data loc_8c0D13BC
loc_cE30B18_to_loc_cE3619C:
	#data loc_cE3619C
loc_cE30B1C:
	#data loc_8c2896B0

;==============================================
loc_cE30B20:
	mov.w @(loc_cE30C20,pc),r0 ; r0 set to 0x158
	mov 0x01,r2 ; r2 set to 0x01
	mov 0x0A,r3 ; r3 set to 0x0A
	mov.b r2,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_cE30C22,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_cE30C30_to_loc_cE36198,pc),r3 ; r3 set to 0xCE36198
	mov.l r3,@(r0,r14)
	bra loc_cE30B56
	mov 0x01,r2

loc_cE30B3C:
	mov.w @(0xe0,pc),r0
	mov 0x02,r1
	mov 0x0B,r3
	mov.b r1,@(r0,r14)
	add 0x49,r0
	mov 0x16,r5
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(0xd0,pc),r0
	mov 0x02,r2
	mov.l @(0xe0,pc),r3
	mov.l r3,@(r0,r14)

loc_cE30B56:
	mov.w @(0xca,pc),r0
	mov.b r2,@(r0,r14)

loc_cE30B5A:
	mov.w @(loc_cE30C26,pc),r0 ; r0 set to 0x1AC
	mov 0x0A,r5 ; r5 set to 0x0A
	mov.l @(loc_cE30C38,pc),r3 ; r3 set to 0x8C2896B0
	mov r14,r4
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
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
	lds.l @r15+,pr
	mov.w @(loc_cE30C20,pc),r0 ; r0 set to 0x158
	mov.l @(loc_cE30C3C,pc),r2 ; r2 set to 0x8C034E8C
	mov.l @r15+,r12
	mov.b @(r0,r14),r6
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_cE30B8C:
	mov.w @(0x98,pc),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_ce30b9c
	mov.w @(0x92,pc),r0
	mov.b @(r0,r4),r0
	tst 0x0F,r0
	bf loc_ce30bac

loc_cE30B9C:
	mov.w @(0x88,pc),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_ce30bb0
	mov.w @(0x82,pc),r0
	mov.b @(r0,r4),r0
	tst 0xF0,r0
	bt loc_ce30bb0

loc_cE30BAC:
	bra loc_cE30BB4
	nop

loc_cE30BB0:
	rts
	nop

;==============================================
loc_cE30BB4:
	mov.w @(loc_cE30C28,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_cE30BC2
	bra loc_cE30CF6
	nop

loc_cE30BC2:
	bra loc_cE30BC6
	nop

loc_cE30BC6:
	mov.w @(loc_cE30C2C,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(loc_cE30C40,pc),r12 ; r12 set to 0x8C04223A
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_cE30BEA
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt loc_cE30C58
	cmp/eq 0x02,r0
	bt loc_cE30C84
	bra loc_cE30CBE
	nop

loc_cE30BEA:
	mov.w @(loc_cE30C20,pc),r0 ; r0 set to 0x158
	mov 0x0C,r3 ; r3 set to 0x0C
	mov 0x0B,r5 ; r5 set to 0x0B
	mov.b r13,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0xB7,r0 ; r0 set to 0x158
	mov.l @(loc_cE30C3C,pc),r3 ; r3 set to 0x8C034E8C
	mov.b @(r0,r14),r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_cE30C44,pc),r2 ; r2 set to 0x8C0D13BC
	mov 0x00,r5 ; r5 set to 0x00
	mov 0x02,r6 ; r6 set to 0x02
	jsr @r2
	mov r14,r4
	mov 0x14,r5 ; r5 set to 0x14
	jsr @r12
	mov r14,r4
	mov.w @(loc_cE30C2E,pc),r0 ; r0 set to 0x1FC
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_cE30C4C
	mov.w @(loc_cE30C22,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_cE30C48_to_loc_cE361A0,pc),r3 ; r3 set to 0xCE361A0
	bra loc_cE30C52
	mov.l r3,@(r0,r14)

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_cE30C20:
	#data 0x0158
loc_cE30C22:
	#data 0x03F4
loc_cE30C24:
	#data 0x01A7
loc_cE30C26:
	#data 0x01AC
loc_cE30C28:
	#data 0x01FE
loc_ce30c2a:
	#data 0x01D6
loc_ce30c2c:
	#data 0x01E8
loc_ce30c2e:
	#data 0x01FC
	#align4

loc_cE30C30_to_loc_cE36198:
	#data loc_cE36198
loc_cE30C34_to_loc_cE3619C:
	#data loc_cE3619C
loc_cE30C38:
	#data loc_8c2896B0
loc_cE30C3C:
	#data loc_8c034E8C
loc_cE30C40:
	#data loc_8c04223A
loc_cE30C44:
	#data loc_8c0D13BC
loc_cE30C48_to_loc_cE361A0:
	#data loc_cE361A0

;----------------------------------------------
loc_cE30C4C:
	mov.w @(loc_cE30D46,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_cE30D54_to_loc_cE361B8,pc),r1 ; r1 set to 0xCE361B8
	mov.l r1,@(r0,r14)

loc_cE30C52:
	mov.w @(loc_cE30D48,pc),r0 ; r0 set to 0x1A7,r0 set to 0x1A7
	bra loc_cE30CBE
	mov.b r13,@(r0,r14)

loc_cE30C58:
	mov.w @(loc_cE30D4A,pc),r0 ; r0 set to 0x158
	mov 0x01,r2 ; r2 set to 0x01
	mov 0x0D,r3 ; r3 set to 0x0D
	mov.b r2,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_cE30D4C,pc),r0 ; r0 set to 0x1FC
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_cE30C7A
	mov.w @(loc_cE30D46,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_cE30D58_to_loc_cE361A4,pc),r3 ; r3 set to 0xCE361A4
	bra loc_cE30C80
	mov.l r3,@(r0,r14)

loc_cE30C7A:
	mov.w @(loc_cE30D46,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_cE30D5C_to_loc_cE361BC,pc),r1 ; r1 set to 0xCE361BC
	mov.l r1,@(r0,r14)

loc_cE30C80:
	bra loc_cE30CAE
	mov 0x01,r3

loc_cE30C84:
	mov.w @(loc_cE30D4A,pc),r0 ; r0 set to 0x158
	mov 0x02,r2 ; r2 set to 0x02
	mov 0x0E,r3 ; r3 set to 0x0E
	mov.b r2,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov 0x16,r5 ; r5 set to 0x16
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_cE30D4C,pc),r0 ; r0 set to 0x1FC
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_cE30CA6
	mov.w @(loc_cE30D46,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_cE30D60_to_loc_cE361A8,pc),r3 ; r3 set to 0xCE361A8
	bra loc_cE30CAC
	mov.l r3,@(r0,r14)

loc_cE30CA6:
	mov.w @(0x9c,pc),r0
	mov.l @(0xb8,pc),r1
	mov.l r1,@(r0,r14)

loc_cE30CAC:
	mov 0x02,r3

loc_cE30CAE:
	mov.w @(0x96,pc),r0
	mov 0x0B,r5
	mov.b r3,@(r0,r14)
	add 0xB1,r0
	mov.l @(0xb0,pc),r3
	mov.b @(r0,r14),r6
	jsr @r3
	mov r14,r4

loc_cE30CBE:
	mov.w @(0x8c,pc),r0
	mov.l @(0xa8,pc),r3
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l r13,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0x70,pc),r0
	mov.b @(r0,r14),r0
	tst 0x0F,r0
	bt loc_ce30cec
	mov.w @(0x68,pc),r0
	mov.b @(r0,r14),r1
	add 0xFF,r1
	mov.b r1,@(r0,r14)

loc_cE30CEC:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_cE30CF6:
	mov.w @(loc_cE30D52,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(loc_cE30D70,pc),r12 ; r12 set to 0x8C04223A
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_cE30D1A
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt loc_cE30D7C
	cmp/eq 0x02,r0
	bt loc_cE30DA8
	bra loc_cE30DD6
	nop

loc_cE30D1A:
	mov.w @(loc_cE30D4A,pc),r0 ; r0 set to 0x158
	mov 0x0F,r3 ; r3 set to 0x0F
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r13,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_cE30D4C,pc),r0 ; r0 set to 0x1FC
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_cE30D3A
	mov.w @(loc_cE30D46,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_cE30D74_to_loc_cE361AC,pc),r3 ; r3 set to 0xCE361AC
	bra loc_cE30D40
	mov.l r3,@(r0,r14)

loc_cE30D3A:
	mov.w @(loc_cE30D46,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_cE30D78_to_loc_cE361C4,pc),r1 ; r1 set to 0xCE361C4
	mov.l r1,@(r0,r14)

loc_cE30D40:
	mov.w @(loc_cE30D48,pc),r0 ; r0 set to 0x1A7,r0 set to 0x1A7
	bra loc_cE30DD6
	mov.b r13,@(r0,r14)

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_cE30D46:
	#data 0x03F4
loc_cE30D48:
	#data 0x01A7
loc_cE30D4A:
	#data 0x0158
loc_cE30D4C:
	#data 0x01FC
loc_cE30D4e:
	#data 0x01AC
loc_cE30D50:
	#data 0x01D6
loc_cE30D52:
	#data 0x01E8
	#align4

loc_cE30D54_to_loc_cE361B8:
	#data loc_cE361B8
loc_cE30D58_to_loc_cE361A4:
	#data loc_cE361A4
loc_cE30D5C_to_loc_cE361BC:
	#data loc_cE361BC
loc_cE30D60_to_loc_cE361A8:
	#data loc_cE361A8
loc_cE30D64_to_loc_cE361C0:
	#data loc_cE361C0
loc_ce30d68:
	#data loc_8c034E8C
loc_ce30d6c:
	#data loc_8c2896B0
loc_cE30D70:
	#data loc_8c04223A
loc_cE30D74_to_loc_cE361AC:
	#data loc_cE361AC
loc_cE30D78_to_loc_cE361C4:
	#data loc_cE361C4

;----------------------------------------------
loc_cE30D7C:
	mov.w @(loc_cE30EA4,pc),r0 ; r0 set to 0x158
	mov 0x01,r2 ; r2 set to 0x01
	mov 0x10,r3 ; r3 set to 0x10
	mov.b r2,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_cE30EA6,pc),r0 ; r0 set to 0x1FC
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_cE30D9E
	mov.w @(loc_cE30EA8,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_cE30EB8_to_loc_cE361B0,pc),r3 ; r3 set to 0xCE361B0
	bra loc_cE30DA4
	mov.l r3,@(r0,r14)

loc_cE30D9E:
	mov.w @(loc_cE30EA8,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_cE30EBC_to_loc_cE361C8,pc),r1 ; r1 set to 0xCE361C8
	mov.l r1,@(r0,r14)

loc_cE30DA4:
	bra loc_cE30DD2
	mov 0x01,r3

loc_cE30DA8:
	mov.w @(loc_cE30EA4,pc),r0 ; r0 set to 0x158
	mov 0x02,r1 ; r1 set to 0x02
	mov 0x11,r3 ; r3 set to 0x11
	mov.b r1,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov 0x16,r5 ; r5 set to 0x16
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_cE30EA6,pc),r0 ; r0 set to 0x1FC
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_cE30DCA
	mov.w @(loc_cE30EA8,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_cE30EC0_to_loc_cE361B4,pc),r3 ; r3 set to 0xCE361B4
	bra loc_cE30DD0
	mov.l r3,@(r0,r14)

loc_cE30DCA:
	mov.w @(0xda,pc),r0
	mov.l @(0xf4,pc),r1
	mov.l r1,@(r0,r14)

loc_cE30DD0:
	mov 0x02,r3

loc_cE30DD2:
	mov.w @(0xd4,pc),r0
	mov.b r3,@(r0,r14)

loc_cE30DD6:
	mov.w @(0xd2,pc),r0
	mov 0x0C,r5
	mov.l @(0xec,pc),r3
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l r13,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0xaa,pc),r0
	mov.l @(0xd0,pc),r2
	mov.b @(r0,r14),r6
	jsr @r2
	mov r14,r4
	mov.w @(0xaa,pc),r0
	mov.b @(r0,r14),r0
	tst 0xF0,r0
	bt loc_ce30e10
	mov.w @(0xa2,pc),r0
	mov.b @(r0,r14),r2
	add 0xF0,r2
	mov.b r2,@(r0,r14)

loc_cE30E10:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_cE30E1A:
	mov.w @(loc_cE30EB0,pc),r0 ; r0 set to 0x1FF
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_cE30ED0_to_loc_cE362E4_to_loc_cE30E3C,pc),r0 ; r0 set to 0xCE362E4
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_cE30E2E:
	sts.l pr,@-r15
	mov.l @(0xa0,pc),r3
	jsr @r3
	mov.l r4,@-r15
	mov.l @r15,r4
	add 0x04,r15
	lds.l @r15+,pr

loc_cE30E3C:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5C
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_cE30ED8,pc),r3 ; r3 set to 0x8C052C84
	sts.l pr,@-r15
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	fmov.s @(r0,r14),fr2
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6C
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
	mov.w @(loc_cE30EB2,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_cE30EDC
	mov.w @(loc_cE30EB4,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_cE30E9C
	lds.l @r15+,pr
	mov r14,r4
	bra loc_cE31162
	mov.l @r15+,r14

loc_cE30E9C:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_cE3106E
	mov.l @r15+,r14

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_cE30EA4:
	#data 0x0158
loc_cE30EA6:
	#data 0x01FC
loc_cE30EA8:
	#data 0x03F4
loc_cE30EAa:
	#data 0x01A7
loc_cE30EAc:
	#data 0x01AC
loc_cE30EAe:
	#data 0x01D6
loc_cE30EB0:
	#data 0x01FF
loc_cE30EB2:
	#data 0x01FE
loc_cE30EB4:
	#data 0x01F9
	#align4

loc_cE30EB8_to_loc_cE361B0:
	#data loc_cE361B0
loc_cE30EBC_to_loc_cE361C8:
	#data loc_cE361C8
loc_cE30EC0_to_loc_cE361B4:
	#data loc_cE361B4
loc_cE30EC4_to_loc_cE361CC:
	#data loc_cE361CC
	#data loc_8c2896B0
	#data loc_8c034E8C

loc_cE30ED0_to_loc_cE362E4_to_loc_cE30E3C:
	#data loc_cE362E4_to_loc_cE30E3C
	#data loc_8c0511E2
loc_cE30ED8:
	#data loc_8c052C84

;----------------------------------------------
loc_cE30EDC:
	mov.w @(loc_cE30FC8,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_cE30EEE
	lds.l @r15+,pr
	mov r14,r4
	bra loc_cE30FE0
	mov.l @r15+,r14

loc_cE30EEE:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_cE30EF6
	mov.l @r15+,r14

loc_cE30EF6:
	mov.w @(loc_cE30FCA,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(loc_cE30FD0,pc),r12 ; r12 set to 0x8C034DEE
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt/s loc_cE30F1A
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt loc_cE30F6C
	cmp/eq 0x00,r0
	bt loc_cE30FA6
	bra loc_cE30FBE
	nop

loc_cE30F1A:
	jsr @r12
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bf loc_cE30FB0
	mov.w @(loc_cE30FCC,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_cE30FBE
	mov.w @(loc_cE30FCE,pc),r0 ; r0 set to 0x1D2
	mov 0x34,r2 ; r2 set to 0x34
	mov.b @(r0,r14),r3
	tst r3,r3
	bt/s loc_cE30F4C
	add r14,r2 ; r2 ??? bc r14 is ???
	mov.w @(loc_cE30FCC,pc),r3 ; r3 set to 0x141
	mov.l @(loc_cE30FD4,pc),r1 ; r1 set to 0x3FD55555
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.b @r3,r3
	lds r3,fpul
	float fpul,fr3
	lds r1,fpul
	fsts fpul,fr2
	bra loc_cE30F60
	fmul fr2,fr3

loc_cE30F4C:
	mov.w @(loc_cE30FCC,pc),r3 ; r3 set to 0x141
	mov.l @(loc_cE30FD4,pc),r1 ; r1 set to 0x3FD55555
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.b @r3,r3
	lds r3,fpul
	float fpul,fr3
	lds r1,fpul
	fsts fpul,fr2
	fmul fr2,fr3
	fneg fr3

loc_cE30F60:
	fmov.s @r2,fr2
	mov.w @(loc_cE30FCC,pc),r0 ; r0 set to 0x141,r0 set to 0x141
	fadd fr3,fr2
	fmov.s fr2,@r2
	bra loc_cE30FBE
	mov.b r13,@(r0,r14)

loc_cE30F6C:
	jsr @r12
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bf loc_cE30FB0
	mov.w @(loc_cE30FCC,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_cE30FBE
	mov.b r13,@(r0,r14)
	add 0x60,r0 ; r0 set to 0x1A1
	mov 0x19,r3 ; r3 set to 0x19
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r13,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(loc_cE30FD8,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r13,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	bra loc_cE30FBE
	mov.w r1,@(r0,r2)

loc_cE30FA6:
	jsr @r12
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce30fbe

loc_cE30FB0:
	lds.l @r15+,pr
	mov.l @(loc_cE30FDC,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_cE30FBE:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE30FC8:
	#data 0x01F9
loc_cE30FCA:
	#data 0x01E8
loc_cE30FCC:
	#data 0x0141
loc_cE30FCE:
	#data 0x01D2
	#align4

loc_cE30FD0:
	#data loc_8c034DEE
loc_cE30FD4:
	#data 0x3FD55555
loc_cE30FD8:
	#data loc_8c2896B0
loc_cE30FDC:
	#data loc_8c051648

;==============================================
loc_cE30FE0:
	mov.w @(loc_cE310C4,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_cE30FFC
	cmp/eq 0x01,r0
	bt loc_cE31052
	cmp/eq 0x00,r0
	bt loc_cE31052
	bra loc_cE31068
	nop

loc_cE30FFC:
	mov.l @(loc_cE310CC,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bf loc_cE3105E
	mov.w @(loc_cE310C6,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt loc_cE31068
	mov.w @(loc_cE310C8,pc),r0 ; r0 set to 0x1D2
	mov 0x34,r2 ; r2 set to 0x34
	mov.b @(r0,r14),r3
	tst r3,r3
	bt/s loc_cE31030
	add r14,r2 ; r2 ??? bc r14 is ???
	mov.w @(loc_cE310C6,pc),r3 ; r3 set to 0x141
	mov.l @(loc_cE310D0,pc),r1 ; r1 set to 0x3FD55555
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.b @r3,r3
	lds r3,fpul
	float fpul,fr3
	lds r1,fpul
	fsts fpul,fr2
	bra loc_cE31044
	fmul fr2,fr3

loc_cE31030:
	mov.w @(loc_cE310C6,pc),r3 ; r3 set to 0x141
	mov.l @(loc_cE310D0,pc),r1 ; r1 set to 0x3FD55555
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.b @r3,r3
	lds r3,fpul
	float fpul,fr3
	lds r1,fpul
	fsts fpul,fr2
	fmul fr2,fr3
	fneg fr3

loc_cE31044:
	fmov.s @r2,fr2
	mov 0x00,r3 ; r3 set to 0x00,r3 set to 0x00
	mov.w @(loc_cE310C6,pc),r0 ; r0 set to 0x141,r0 set to 0x141
	fadd fr3,fr2
	fmov.s fr2,@r2
	bra loc_cE31068
	mov.b r3,@(r0,r14)

loc_cE31052:
	mov.l @(0x78,pc),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_cE31068

loc_cE3105E:
	lds.l @r15+,pr
	mov.l @(loc_cE310D4,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_cE31068:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE3106E:
	mov.w @(loc_cE310C4,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(loc_cE310CC,pc),r12 ; r12 set to 0x8C034DEE
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt/s loc_cE31092
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt loc_cE31106
	cmp/eq 0x00,r0
	bt loc_cE31140
	bra loc_cE31158
	nop

loc_cE31092:
	jsr @r12
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bf loc_cE3114A
	mov.w @(loc_cE310C6,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_cE310F6
	mov.w @(loc_cE310C8,pc),r0 ; r0 set to 0x1D2
	mov 0x34,r2 ; r2 set to 0x34
	mov.b @(r0,r14),r3
	tst r3,r3
	bt/s loc_cE310D8
	add r14,r2 ; r2 ??? bc r14 is ???
	mov.w @(loc_cE310C6,pc),r3 ; r3 set to 0x141
	mov.l @(loc_cE310D0,pc),r1 ; r1 set to 0x3FD55555
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.b @r3,r3
	lds r3,fpul
	float fpul,fr3
	lds r1,fpul
	fsts fpul,fr2
	bra loc_cE310EC
	fmul fr2,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE310C4:
	#data 0x01E8
loc_cE310C6:
	#data 0x0141
loc_cE310C8:
	#data 0x01D2
	#align4

loc_cE310CC:
	#data loc_8c034DEE
loc_cE310D0:
	#data 0x3FD55555
loc_cE310D4:
	#data loc_8c051648

;==============================================
loc_cE310D8:
	mov.w @(0xf6,pc),r3
	mov.l @(0x100,pc),r1
	add r14,r3
	mov.b @r3,r3
	lds r3,fpul
	float fpul,fr3
	lds r1,fpul
	fsts fpul,fr2
	fmul fr2,fr3
	fneg fr3

loc_cE310EC:
	fmov @r2,fr2
	mov.w @(0xe0,pc),r0
	fadd fr3,fr2
	fmov fr2,@r2
	mov.b r13,@(r0,r14)

loc_cE310F6:
	mov.w @(loc_cE311D4,pc),r0 ; r0 set to 0x14B
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_cE31158
	mov 0x05,r3 ; r3 set to 0x05
	mov.b r13,@(r0,r14)
	bra loc_cE3111E
	add 0x56,r0

loc_cE31106:
	jsr @r12
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bf loc_ce3114a
	mov.w @(0xbe,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce31158
	mov.b r13,@(r0,r14)
	add 0x60,r0
	mov 0x1A,r3

loc_cE3111E:
	mov.b r3,@(r0,r14)
	mov.w @(loc_cE311D6,pc),r0 ; r0 set to 0x1AC
	mov.l @(loc_cE311E0,pc),r3 ; r3 set to 0x8C2896B0
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
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
	bra loc_cE31158
	mov.w r1,@(r0,r2)

loc_cE31140:
	jsr @r12
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce31158

loc_cE3114A:
	lds.l @r15+,pr
	mov.l @(loc_cE311E4,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_cE31158:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_cE31162:
	mov.w @(loc_cE311D8,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_cE3117E
	cmp/eq 0x00,r0
	bt loc_cE3117E
	cmp/eq 0x02,r0
	bt loc_cE3117E
	bra loc_cE31194
	nop

loc_cE3117E:
	mov.l @(loc_cE311E8,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_cE31194
	lds.l @r15+,pr
	mov.l @(loc_cE311E4,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_cE31194:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE3119A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x4c,pc),r3
	jsr @r3
	mov r4,r14
	mov.l @(0x48,pc),r2
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_cE311B0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE311F4,pc),r3 ; r3 set to 0x8C04FEA8
	jsr @r3
	mov r4,r14
	mov.l @(loc_cE311F8,pc),r2 ; r2 set to 0x8C050048
	jsr @r2
	mov r14,r4
	mov.w @(loc_cE311DA,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_cE311FC
	bsr loc_cE312C8
	mov r14,r4
	bra loc_cE31200
	nop

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_cE311D2:
	#data 0x0141
loc_cE311D4:
	#data 0x014B
loc_cE311D6:
	#data 0x01AC
loc_cE311D8:
	#data 0x01E8
loc_cE311DA:
	#data 0x01FE
	#align4

loc_cE311Dc:
	#data 0x3FD55555
loc_cE311E0:
	#data loc_8c2896B0
loc_cE311E4:
	#data loc_8c051648
loc_cE311E8:
	#data loc_8c034DEE
loc_cE311ec:
	#data loc_8c050084
loc_cE311f0:
	#data loc_8c04FF88
loc_cE311F4:
	#data loc_8c04FEA8
loc_cE311F8:
	#data loc_8c050048

;----------------------------------------------
loc_cE311FC:
	bsr loc_cE3121C
	mov r14,r4

loc_cE31200:
	mov.l @(loc_cE312F4,pc),r3 ; r3 set to 0x8C052CE2,r3 set to 0x8C052CE2
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_cE31216
	lds.l @r15+,pr
	mov.l @(loc_cE312F8,pc),r3 ; r3 set to 0x8C052DAC,r3 set to 0x8C052DAC
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_cE31216:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE3121C:
	mov.w @(loc_cE312EA,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_cE31238
	cmp/eq 0x00,r0
	bt loc_cE312AC
	cmp/eq 0x01,r0
	bt loc_cE312AC
	bra loc_cE312C2
	nop

loc_cE31238:
	mov.l @(0xc0,pc),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bf loc_ce312b8
	mov.w @(0xa4,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce312c2
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf.s loc_ce3125c
	mov 0x00,r4
	mov.w @(0x94,pc),r0
	mov 0x0E,r2
	mov.b r2,@(r0,r14)

loc_cE3125C:
	mov.w @(0x90,pc),r0
	mov.l @(0xa0,pc),r5
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r5,r3
	extu.b r0,r0
	shll r0
	add 0x7C,r3
	mov.w @(r0,r3),r2
	add 0x01,r2
	mov.w r2,@(r0,r3)
	mov.w @(0x6e,pc),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_ce3128a
	mov.w @(0x66,pc),r0
	mov 0x1C,r2
	mov.b r2,@(r0,r14)

loc_cE3128A:
	mov.w @(0x62,pc),r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r5,r3
	extu.b r0,r0
	shll r0
	add 0x7C,r3
	mov.w @(r0,r3),r2
	add 0x01,r2
	mov.w r2,@(r0,r3)
	mov.w @(0x42,pc),r0
	bra loc_ce312c2
	mov.b r4,@(r0,r14)

loc_cE312AC:
	mov.l @(0x4c,pc),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce312c2

loc_cE312B8:
	lds.l @r15+,pr
	mov.l @(0x48,pc),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_cE312C2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE312C8:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_cE312FC,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_cE312E2
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_cE31304,pc),r3 ; r3 set to 0x8C05176E
	jmp @r3
	lds.l @r15+,pr

loc_cE312E2:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE312EA:
	#data 0x01E8
loc_cE312Ec:
	#data 0x014B
loc_cE312Ee:
	#data 0x01A1
loc_cE312f0:
	#data 0x01AC
	#align4

loc_cE312F4:
	#data loc_8c052CE2
loc_cE312F8:
	#data loc_8c052DAC
loc_cE312FC:
	#data loc_8c034DEE
loc_cE31300:
	#data loc_8c2896B0
loc_cE31304:
	#data loc_8c05176E

;==============================================
loc_cE31308:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	tst r0,r0
	bf loc_ce31370
	mov.l @(0x120,pc),r3
	jsr @r3
	mov r14,r4
	mov.b @(0x6,r14),r0
	mov 0x1D,r3
	mov 0x00,r13
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x14,r5
	mov.w @(0x102,pc),r0
	mov 0x03,r6
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l @(0x100,pc),r3
	mov.l r13,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0xe0,pc),r0
	mov.l @(0xf0,pc),r2
	mov.b r13,@(r0,r14)
	jsr @r2
	mov r14,r4
	mov.l @(0xec,pc),r3
	mov 0x16,r5
	jsr @r3
	mov r14,r4
	mov.l @(0xe8,pc),r2
	mov 0x05,r5
	jsr @r2
	mov r14,r4
	mov.l @(0xe4,pc),r3
	mov r13,r5
	mov 0x02,r6
	jsr @r3
	mov r14,r4

loc_cE31370:
	mov.w @(0xbe,pc),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_ce31380
	mov.l @(0xd4,pc),r2
	jsr @r2
	mov r14,r4

loc_cE31380:
	mov 0x5C,r1
	mov.l @(0xd0,pc),r3
	add r14,r1
	mov 0x34,r0
	fmov @r1, fr3
	fmov @(r0,r14), fr2
	mov 0x68,r1
	add r14,r1
	fadd fr3, fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14), fr2
	fmov @r1, fr3
	mov 0x60,r1
	add r14,r1
	fadd fr3, fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14), fr2
	fmov @r1, fr3
	mov 0x6C,r1
	add r14,r1
	fadd fr3, fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14), fr2
	fmov @r1, fr3
	fadd fr3, fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0x98,pc),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce313d6
	lds.l @r15+,pr
	mov.l @(0x8c,pc),r2
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_cE313D6:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_cE313DE:
	mov r4,r3
	mov.l @(loc_ce31460,pc),r1 ; r1 set to 0xCE362F4
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_cE313F0:
	mov.l r14,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE31458,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	mov.w @(loc_cE31434,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_cE31490
	mov 0x00,r3 ; r3 set to 0x00
	fldi0 fr4
	mov.b r3,@(r0,r14)
	mov.b @(0x06,r14),r0
	add 0x01,r0 ; r0 set to 0x142
	mov.b r0,@(0x06,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r14)
	mov.w @(loc_cE31436,pc),r0 ; r0 set to 0x1D2
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt loc_cE31468
	mova @(loc_cE31464,pc),r0; r0 set to 0xCE31464
	bra loc_cE3146C
	fmov.s @r0,fr3

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_cE3142e:
	#data 0x01A1
loc_cE31430:
	#data 0x01F9
loc_cE31432:
	#data 0x01FF
loc_cE31434:
	#data 0x0141
loc_cE31436:
	#data 0x01D2
	#align4

loc_cE31438:
	#data loc_8c052B4C
loc_cE3143c:
	#data loc_8c2896B0
loc_cE31440:
	#data loc_8c034E8C
loc_cE31444:
	#data loc_8c04223A
loc_cE31448:
	#data loc_8c056DE4
loc_cE3144c:
	#data loc_8c0D13BC
loc_cE31450:
	#data loc_8c0511E2
loc_cE31454:
	#data loc_8c052C84
loc_cE31458:
	#data loc_8c034DEE
loc_cE3145c:
	#data loc_8c051648
loc_ce31460:
	#data loc_cE362F4_to_loc_cE313F0
loc_cE31464:
	#data 0x417D5555

;----------------------------------------------
loc_cE31468:
	mova @(loc_cE31588,pc),r0; r0 init to 0xCE31588
	fmov.s @r0,fr3

loc_cE3146C:
	mov 0x5C,r0 ; r0 set to 0x5C,r0 set to 0x5C
	fmov.s fr3,@(r0,r14)
	mov 0x34,r8 ; r8 set to 0x34,r8 set to 0x34
	mov.w @(loc_cE31582,pc),r0 ; r0 set to 0x1D2,r0 set to 0x1D2
	mov.b @(r0,r14),r3
	tst r3,r3
	bt/s loc_cE31484
	add r14,r8 ; r8 ??? bc r14 is ???,r8 ??? bc r14 is ???
	mov.l @(loc_cE3158C,pc),r1 ; r1 set to 0x41D55555,r1 set to 0x41D55555
	lds r1,fpul
	bra loc_cE3148A
	fsts fpul,fr3

loc_cE31484:
	mov.l @(0x108,pc),r2
	lds r2, fpul
	fsts fpul, fr3

loc_cE3148A:
	fmov @r8, fr2
	fadd fr3, fr2
	fmov fr2,@r8

loc_cE31490:
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

;==============================================
loc_cE31498:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE31594,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	mov 0x5C,r1 ; r1 set to 0x5C
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6C
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_cE31584,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_cE31510
	mov.b @(0x06,r14),r0
	fldi0 fr4
	add 0x01,r0 ; r0 set to 0x142
	mov.b r0,@(0x06,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r14)
	mov.w @(loc_cE31582,pc),r0 ; r0 set to 0x1D2
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_cE31508
	mova @(loc_cE31598,pc),r0; r0 set to 0xCE31598
	bra loc_cE3150C
	fmov.s @r0,fr3

loc_cE31508:
	mova @(0x90,pc),r0
	fmov @r0, fr3

loc_cE3150C:
	mov 0x5C,r0
	fmov fr3,@(r0,r14)

loc_cE31510:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE31516:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5C
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_cE31594,pc),r3 ; r3 set to 0x8C034DEE
	sts.l pr,@-r15
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	fmov.s @(r0,r14),fr2
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6C
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
	bt loc_cE3156A
	lds.l @r15+,pr
	mov.l @(loc_cE315A0,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_cE3156A:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE31570:
	mov r4,r3
	mov.l @(loc_cE315A4_to_loc_cE36300_to_loc_cE315A8,pc),r1 ; r1 set to 0xCE36300
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE31582:
	#data 0x01D2
loc_cE31584:
	#data 0x0141
	#align4

loc_cE31588:
	#data 0xC17D5555
loc_cE3158C:
	#data 0x41D55555
loc_cE31590:
	#data 0xC1D55555
loc_cE31594:
	#data loc_8c034DEE
loc_cE31598:
	#data 0x3FD55555
loc_cE3159c:
	#data 0xBFD55555
loc_cE315A0:
	#data loc_8c051648
loc_cE315A4_to_loc_cE36300_to_loc_cE315A8:
	#data loc_cE36300_to_loc_cE315A8

;==============================================
loc_cE315A8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x138,pc),r3
	jsr @r3
	mov r4,r14
	mov.w @(0x12a,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_ce31604
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mova @(0x128,pc),r0
	fmov @r0, fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0x124,pc),r0
	fmov @r0, fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mova @(0x120,pc),r0
	fmov @r0, fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0x11c,pc),r0
	fmov @r0, fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0xfe,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_ce315f8
	mov 0x5C,r0
	fmov @(r0,r14), fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14), fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_cE315F8:
	mov 0x10,r0
	mov r14,r4
	mov.w r0,@(0x1c,r14)
	lds.l @r15+,pr
	bra loc_ce3160a
	mov.l @r15+,r14

loc_cE31604:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_cE3160A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xd8,pc),r3
	jsr @r3
	mov r4,r14
	mov 0x5C,r1
	add r14,r1
	mov 0x34,r0
	fmov @r1, fr3
	fmov @(r0,r14), fr2
	mov 0x68,r1
	add r14,r1
	fadd fr3, fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14), fr2
	fmov @r1, fr3
	mov 0x60,r1
	add r14,r1
	fadd fr3, fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14), fr2
	fmov @r1, fr3
	mov 0x6C,r1
	add r14,r1
	fadd fr3, fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14), fr2
	fmov @r1, fr3
	fadd fr3, fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14), fr3
	mov.w @(0x90,pc),r0
	fmov @(r0,r14), fr2
	fcmp/gt fr2, fr3
	bt loc_ce316a6
	mov.b @(0x6,r14),r0
	fldi0 fr4
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(0x80,pc),r0
	fmov @(r0,r14), fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mova @(0x88,pc),r0
	fmov @r0, fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0x84,pc),r0
	fmov @r0, fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x5e,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_ce3169a
	mov 0x03,r6
	mov 0x5C,r0
	fmov @(r0,r14), fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14), fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_cE3169A:
	lds.l @r15+,pr
	mov.l @(0x64,pc),r3
	mov 0x02,r5
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_cE316A6:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE316AC:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_cE316E8,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_cE316C6
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_cE31708,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	lds.l @r15+,pr

loc_cE316C6:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_cE316CE:
	mov r4,r3
	mov.l @(loc_cE3170C_to_loc_cE3630C_to_loc_cE31710,pc),r1 ; r1 set to 0xCE3630C
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE316E0:
	#data 0x0141
loc_cE316E2:
	#data 0x0130
loc_cE316E4:
	#data 0x041C
	#align4

loc_cE316E8:
	#data loc_8c034DEE
loc_cE316ec:
	#data 0x417D5555
loc_cE316f0:
	#data 0xBEA00000
loc_cE316f4:
	#data 0x40CDB6DB
loc_cE316f8:
	#data 0xBF092492
loc_cE316fc:
	#data 0x40855555
loc_cE31700:
	#data 0xBEA6AAAA
loc_cE31704:
	#data loc_8c034E8C
loc_cE31708:
	#data loc_8c051648
loc_cE3170C_to_loc_cE3630C_to_loc_cE31710:
	#data loc_cE3630C_to_loc_cE31710

;==============================================
loc_cE31710:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x01,r4 ; r4 set to 0x01
	mov.l @(loc_cE3183C,pc),r1 ; r1 set to 0x434DB6DB
	mov.w @(loc_cE31832,pc),r5 ; r5 set to 0x2A4
	lds r1,fpul
	add r14,r5 ; r5 ??? bc r14 is ???
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_cE31834,pc),r0 ; r0 set to 0x12C
	mov.b r4,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@r5
	fmov.s @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_cE31840,pc),r0; r0 set to 0xCE31840
	fmov.s @r0,fr2
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr2,@(r0,r14)
	mova @(loc_cE31844,pc),r0; r0 set to 0xCE31844
	fmov.s @r0,fr2
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr2,@(r0,r14)
	mova @(loc_cE31848,pc),r0; r0 set to 0xCE31848
	fmov.s @r0,fr4 ; r4 ??
	mov.b @(0x02,r14),r0
	tst r0,r0
	bf loc_cE31766
	mov.w @(loc_cE31836,pc),r0 ; r0 set to 0x130
	mov.w r4,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2
	fsub fr4,fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_cE3184C,pc),r0; r0 set to 0xCE3184C
	bra loc_cE31778
	fmov.s @r0,fr1

loc_cE31766:
	mov.w @(0xcc,pc),r0
	mov 0x00,r3
	mov.w r3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14), fr2
	fadd fr4, fr2
	fmov fr2,@(r0,r14)
	mova @(0xd8,pc),r0
	fmov @r0, fr1

loc_cE31778:
	mov 0x5C,r0
	mov.l @(0xd8,pc),r3
	fmov fr1,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	mov 0x02,r5
	fmov fr3,@(r0,r14)
	mov 0x05,r6
	jsr @r3
	mov r14,r4
	mov.l @(0xc8,pc),r2
	mov 0x0F,r5
	mov 0x08,r6
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt.s loc_ce317bc
	mov r0,r4
	mov 0x5C,r0
	fmov @(r0,r14), fr3
	fneg fr3
	fmov fr3,@(r0,r4)
	mov 0x68,r0
	fmov @(r0,r14), fr3
	fmov fr3,@(r0,r4)
	mov 0x60,r0
	fmov @(r0,r14), fr3
	fmov fr3,@(r0,r4)
	mov 0x6C,r0
	fmov @(r0,r14), fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x7c,pc),r0
	mov.w @(r0,r14),r3
	mov.w r3,@(r0,r4)

loc_cE317BC:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE317C2:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5C
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_cE3185C,pc),r3 ; r3 set to 0x8C034DEE
	sts.l pr,@-r15
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	fmov.s @(r0,r14),fr2
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6C
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
	mov.w @(loc_cE31838,pc),r0 ; r0 set to 0x141
	mov 0x00,r3 ; r3 set to 0x00
	mov 0x02,r2 ; r2 set to 0x02
	mov.b r2,@(r0,r14)
	mov.b r3,@(r0,r14)
	mov.l @(loc_cE31860,pc),r3 ; r3 set to 0x8C0332E0
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_cE3182C
	mov.b @(0x06,r14),r0
	mov r14,r4
	mov.l @(loc_cE31864,pc),r3 ; r3 set to 0x8C042008
	mov 0x1E,r5 ; r5 set to 0x1E
	add 0x01,r0 ; r0 set to 0x142
	mov.b r0,@(0x06,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_cE3182C:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE31832:
	#data 0x02A4
loc_cE31834:
	#data 0x012C
loc_cE31836:
	#data 0x0130
loc_cE31838:
	#data 0x0141
	#align4

loc_cE3183C:
	#data 0x434DB6DB
loc_cE31840:
	#data 0xC1092492
loc_cE31844:
	#data 0x3EAB6DB6
loc_cE31848:
	#data 0x43A00000
loc_cE3184C:
	#data 0x41555555
loc_cE31850:
	#data 0xC1555555
loc_cE31854:
	#data loc_8c034E8C
loc_cE31858:
	#data loc_8c0D0584
loc_cE3185C:
	#data loc_8c034DEE
loc_cE31860:
	#data loc_8c0332E0
loc_cE31864:
	#data loc_8c042008

;==============================================
loc_cE31868:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5C
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_cE319B4,pc),r3 ; r3 set to 0x8C034DEE
	sts.l pr,@-r15
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	fmov.s @(r0,r14),fr2
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6C
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
	mov.w @(loc_cE319AE,pc),r0 ; r0 set to 0x141
	mov 0x00,r3 ; r3 set to 0x00
	mov 0x02,r2 ; r2 set to 0x02
	mov.b r2,@(r0,r14)
	mov.b r3,@(r0,r14)
	mov.l @(loc_cE319B8,pc),r3 ; r3 set to 0x8C0332E0
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_cE31904
	mov.b @(0x06,r14),r0
	mov 0x1E,r5 ; r5 set to 0x1E
	mov.l @(loc_cE319C4,pc),r3 ; r3 set to 0x8C042008
	add 0x01,r0 ; r0 set to 0x142
	mov.b r0,@(0x06,r14)
	mova @(loc_cE319BC,pc),r0; r0 set to 0xCE319BC
	fmov.s @r0,fr3 ; r3 ??
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr3,@(r0,r14)
	mova @(loc_cE319C0,pc),r0; r0 set to 0xCE319C0
	fmov.s @r0,fr3
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.b @(0x02,r14),r0
	tst r0,r0
	bf loc_cE318F0
	mov.w @(loc_cE319B0,pc),r0 ; r0 set to 0x130
	mov 0x00,r3 ; r3 set to 0x00
	mov.w r3,@(r0,r14)
	mova @(loc_cE319C8,pc),r0; r0 set to 0xCE319C8
	bra loc_cE318FA
	fmov.s @r0,fr3

loc_cE318F0:
	mov.w @(0xbc,pc),r0
	mov 0x01,r3
	mov.w r3,@(r0,r14)
	mova @(0xd4,pc),r0
	fmov @r0, fr3

loc_cE318FA:
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)

loc_cE31904:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE3190A:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.l r13,@-r15
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_cE319B2,pc),r13 ; r13 set to 0x2A4
	mov 0x34,r0 ; r0 set to 0x34
	sts.l pr,@-r15
	fmov.s @(r0,r14),fr2
	add r14,r13 ; r13 ??? bc r14 is ???
	fmov.s @r1,fr3
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6C
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	mov.l @(loc_cE319B4,pc),r3 ; r3 set to 0x8C034DEE
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_cE319AE,pc),r0 ; r0 set to 0x141
	mov 0x00,r3 ; r3 set to 0x00
	mov 0x02,r2 ; r2 set to 0x02
	mov.b r2,@(r0,r14)
	mov.b r3,@(r0,r14)
	mov.b @(0x02,r14),r0
	tst r0,r0
	bf loc_cE31972
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r13,fr3 ; r3 ??? bc r13 is ???
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
	fcmp/gt fr3,fr2
	bf loc_cE3197C
	bra loc_cE319A6
	nop

loc_cE31972:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r13,fr3
	fmov.s @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bt loc_cE319A6

loc_cE3197C:
	mov.b @(0x06,r14),r0
	mov 0x01,r6 ; r6 set to 0x01,r6 set to 0x01
	mov.l @(loc_cE319D0,pc),r1 ; r1 set to 0x42892492,r1 set to 0x42892492
	mov r6,r5 ; r5 set to 0x01,r5 set to 0x01
	add 0x01,r0 ; r0 set to 0x35
	mov.l @(loc_cE319D4,pc),r3 ; r3 set to 0x8C034E8C,r3 set to 0x8C034E8C
	mov.b r0,@(0x06,r14)
	mov 0x34,r0 ; r0 set to 0x34,r0 set to 0x34
	fmov.s @r13,fr3 ; r3 ??? bc r13 is ???,r3 ??? bc r13 is ???
	mov r14,r4
	lds r1,fpul
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38,r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_cE319A6:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE319AE:
	#data 0x0141
loc_cE319B0:
	#data 0x0130
loc_cE319B2:
	#data 0x02A4
	#align4

loc_cE319B4:
	#data loc_8c034DEE
loc_cE319B8:
	#data loc_8c0332E0
loc_cE319BC:
	#data 0xC14DB6DB
loc_cE319C0:
	#data 0x3D892492
loc_cE319C4:
	#data loc_8c042008
loc_cE319C8:
	#data 0xC1A00000
loc_cE319CC:
	#data 0x41A00000
loc_cE319D0:
	#data 0x42892492
loc_cE319D4:
	#data loc_8c034E8C

;==============================================
loc_cE319D8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE31B24,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	mov.b @(0x06,r14),r0
	fldi0 fr4
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mova @(loc_cE31B28,pc),r0; r0 set to 0xCE31B28
	fmov.s @r0,fr3 ; r3 ??
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr3,@(r0,r14)
	mova @(loc_cE31B2C,pc),r0; r0 set to 0xCE31B2C
	fmov.s @r0,fr3
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE31A08:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5C
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_cE31B24,pc),r3 ; r3 set to 0x8C034DEE
	sts.l pr,@-r15
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	fmov.s @(r0,r14),fr2
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6C
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
	mov.w @(loc_cE31B1E,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_cE31A88
	mov.b @(0x06,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	mov 0x01,r5 ; r5 set to 0x01
	add 0x01,r0 ; r0 set to 0x39
	mov.b r0,@(0x06,r14)
	mov 0x03,r6 ; r6 set to 0x03
	mov.w @(loc_cE31B1E,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_cE31B20,pc),r0 ; r0 set to 0x1F9
	mov.b r3,@(r0,r14)
	mov.l @(loc_cE31B30,pc),r3 ; r3 set to 0x8C034E8C
	jsr @r3
	mov r14,r4
	mov.l @(loc_cE31B34,pc),r2 ; r2 set to 0x8C0511B4
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_cE31B38,pc),r3 ; r3 set to 0x8C042008
	mov 0x0A,r5 ; r5 set to 0x0A
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_cE31A88:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE31A8E:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x90,pc),r3
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce31aa6
	mov.l @r15,r3
	mov.b @(0x5,r3),r0
	add 0x01,r0
	mov.b r0,@(0x5,r3)

loc_cE31AA6:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_cE31AAE:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE31B3C,pc),r3 ; r3 set to 0x8C046C8A
	jsr @r3
	mov r4,r14
	tst r0,r0
	bt loc_cE31ACE
	mov.l @(loc_cE31B40,pc),r3 ; r3 set to 0x8C035162
	mov 0x00,r5 ; r5 set to 0x00
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_cE31B44,pc),r2 ; r2 set to 0x8C051648
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_cE31ACE:
	mov 0x20,r0 ; r0 set to 0x20
	mov r14,r4
	mov.b @(r0,r14),r2
	mov.l @(loc_cE31B48_to_loc_cE36328_to_loc_cE31AE2,pc),r0 ; r0 set to 0xCE36328
	extu.b r2,r2
	lds.l @r15+,pr
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	mov.l @r15+,r14

loc_cE31AE2:
	mov r4,r3
	mov.l @(loc_cE31B4C_to_loc_cE3633C_to_loc_cE31AF4,pc),r1 ; r1 set to 0xCE3633C
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_cE31AF4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x01,r0 ; r0 set to 0x01
	sts.l pr,@-r15
	mov.l @(loc_cE31B30,pc),r13 ; r13 set to 0x8C034E8C
	mov.l @(loc_cE31B50,pc),r3 ; r3 set to 0x8C0514B8
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4
	mov 0x02,r2 ; r2 set to 0x02
	cmp/ge r2,r0
	bf loc_cE31B62
	mov.l @(loc_cE31B54,pc),r1 ; r1 set to 0x8C03319E
	jsr @r1
	nop
	tst 0x01,r0
	bt/s loc_cE31B58
	mov 0x13,r5 ; r5 set to 0x13
	bra loc_cE31B5A
	mov 0x04,r6

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_cE31B1E:
	#data 0x041C
loc_cE31B20:
	#data 0x01F9
	#align4

loc_cE31B24:
	#data loc_8c034DEE
loc_cE31B28:
	#data 0x412B6DB6
loc_cE31B2C:
	#data 0xBF1A4924
loc_cE31B30:
	#data loc_8c034E8C
loc_cE31B34:
	#data loc_8c0511B4
loc_cE31B38:
	#data loc_8c042008
loc_cE31B3C:
	#data loc_8c046C8A
loc_cE31B40:
	#data loc_8c035162
loc_cE31B44:
	#data loc_8c051648
loc_cE31B48_to_loc_cE36328_to_loc_cE31AE2:
	#data loc_cE36328_to_loc_cE31AE2
loc_cE31B4C_to_loc_cE3633C_to_loc_cE31AF4:
	#data loc_cE3633C_to_loc_cE31AF4
loc_cE31B50:
	#data loc_8c0514B8
loc_cE31B54:
	#data loc_8c03319E

;==============================================
loc_cE31B58:
	mov 0x05,r6 ; r6 set to 0x05

loc_cE31B5A:
	jsr @r13
	mov r14,r4
	bra loc_cE31BB0
	nop

loc_cE31B62:
	mov.l @(loc_cE31C44,pc),r3 ; r3 set to 0x8C03319E
	jsr @r3
	nop
	and 0x03,r0
	cmp/eq 0x00,r0
	bt loc_cE31B7E
	cmp/eq 0x01,r0
	bt loc_cE31B8C
	cmp/eq 0x02,r0
	bt loc_cE31BA4
	cmp/eq 0x03,r0
	bt loc_cE31BA8
	bra loc_cE31BB0
	nop

loc_cE31B7E:
	mov 0x13,r5 ; r5 set to 0x13
	mov 0x00,r6 ; r6 set to 0x00
	jsr @r13
	mov r14,r4
	mov 0x05,r6 ; r6 set to 0x05
	bra loc_cE31B98
	mov 0x13,r5

loc_cE31B8C:
	mov 0x13,r5
	mov 0x02,r6
	jsr @r13
	mov r14,r4
	mov 0x14,r5
	mov 0x0A,r6

loc_cE31B98:
	lds.l @r15+,pr
	mov.l @(loc_cE31C48,pc),r2 ; r2 set to 0x8C0D0584
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_cE31BA4:
	bra loc_cE31BAA
	mov 0x04,r6

loc_cE31BA8:
	mov 0x05,r6

loc_cE31BAA:
	mov 0x13,r5 ; r5 set to 0x13
	jsr @r13
	mov r14,r4

loc_cE31BB0:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_cE31BB8:
	mov.l @(loc_cE31C4C,pc),r3 ; r3 set to 0x8C034DEE
	jmp @r3
	nop

loc_cE31BBE:
	rts
	nop

;==============================================
loc_cE31BC2:
	rts
	nop

;==============================================
loc_cE31BC6:
	mov.b @(0x06,r4),r0
	tst r0,r0
	bf loc_cE31BDA
	mov.b @(0x06,r4),r0
	mov 0x07,r6 ; r6 set to 0x07
	mov.l @(loc_cE31C50,pc),r3 ; r3 set to 0x8C034E8C
	add 0x01,r0
	mov.b r0,@(0x06,r4)
	jmp @r3
	mov 0x13,r5

loc_cE31BDA:
	mov.l @(loc_cE31C4C,pc),r3 ; r3 set to 0x8C034DEE
	jmp @r3
	nop

loc_cE31BE0:
	mov.b @(0x06,r4),r0
	tst r0,r0
	bf loc_cE31BF4
	mov.b @(0x06,r4),r0
	mov 0x08,r6 ; r6 set to 0x08
	mov.l @(loc_cE31C50,pc),r3 ; r3 set to 0x8C034E8C
	add 0x01,r0
	mov.b r0,@(0x06,r4)
	jmp @r3
	mov 0x13,r5

loc_cE31BF4:
	mov.l @(loc_cE31C4C,pc),r3 ; r3 set to 0x8C034DEE
	jmp @r3
	nop

loc_cE31BFA:
	mov.b @(0x06,r4),r0
	tst r0,r0
	bf loc_cE31C0E
	mov.b @(0x06,r4),r0
	mov 0x06,r6 ; r6 set to 0x06
	mov.l @(loc_cE31C50,pc),r3 ; r3 set to 0x8C034E8C
	add 0x01,r0
	mov.b r0,@(0x06,r4)
	jmp @r3
	mov 0x13,r5

loc_cE31C0E:
	mov.l @(loc_cE31C4C,pc),r3 ; r3 set to 0x8C034DEE
	jmp @r3
	nop

loc_cE31C14:
	mov.b @(0x06,r4),r0
	tst r0,r0
	bf loc_cE31C28
	mov.b @(0x06,r4),r0
	mov 0x08,r6 ; r6 set to 0x08
	mov.l @(loc_cE31C50,pc),r3 ; r3 set to 0x8C034E8C
	add 0x01,r0
	mov.b r0,@(0x06,r4)
	jmp @r3
	mov 0x13,r5

loc_cE31C28:
	mov.l @(loc_cE31C4C,pc),r3 ; r3 set to 0x8C034DEE
	jmp @r3
	nop

loc_cE31C2E:
	mov.w @(loc_cE31C42,pc),r0 ; r0 set to 0x1E9
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_cE31C54_to_loc_cE3634C_to_loc_cE31C58,pc),r0 ; r0 set to 0xCE3634C
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE31C42:
	#data 0x01E9
	#align4

loc_cE31C44:
	#data loc_8c03319E
loc_cE31C48:
	#data loc_8c0D0584
loc_cE31C4C:
	#data loc_8c034DEE
loc_cE31C50:
	#data loc_8c034E8C
loc_cE31C54_to_loc_cE3634C_to_loc_cE31C58:
	#data loc_cE3634C_to_loc_cE31C58

;==============================================
loc_cE31C58:
	mov.w @(0x120,pc),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_ce31c82
	mov.l @(0x118,pc),r2
	jsr @r2
	mov r14,r4
	mov.w @(0x10c,pc),r0
	fmov @(r0,r14), fr3
	mov 0x38,r0
	fmov @(r0,r14), fr2
	fcmp/gt fr3, fr2
	bt loc_ce31c82
	mov.w @(0x100,pc),r0
	fmov @(r0,r14), fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)

loc_cE31C82:
	mov.b @(0x6,r14),r0
	mov r14,r4
	mov.l @(0x100,pc),r1
	extu.b r0,r0
	mov.w @(0xf2,pc),r5
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	add r14,r5
	jmp @r3
	mov.l @r15+,r14

loc_cE31C98:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov.l @(loc_cE31D8C,pc),r3 ; r3 set to 0x8C05218A
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_cE31D90,pc),r2 ; r2 set to 0x8C056DE4
	mov 0x05,r5 ; r5 set to 0x05
	jsr @r2
	mov r14,r4
	mov.w @(loc_cE31D82,pc),r0 ; r0 set to 0x1A1
	mov 0x30,r3 ; r3 set to 0x30
	mov 0x00,r13 ; r13 set to 0x00
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r13,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(loc_cE31D94,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r13,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2 ; r2 ??
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(loc_cE31D7C,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_cE31D24
	mov.l @(loc_cE31D98,pc),r1 ; r1 set to 0x41800000
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @(r0,r14),fr2
	mov 0x01,r6 ; r6 set to 0x01
	lds r1,fpul
	mov 0x15,r5 ; r5 set to 0x15
	mov.l @(loc_cE31D9C,pc),r1 ; r1 set to 0x41000000
	mov r14,r4
	mov.l @(loc_cE31DA4,pc),r2 ; r2 set to 0x8C034E8C
	fsts fpul,fr3
	fdiv fr3,fr2 ; r2 ??
	lds r1,fpul
	mov.l @(loc_cE31DA0,pc),r1 ; r1 set to 0x42800000
	fldi0 fr3
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr1 ; r1 ??? bc r14 is ???
	fsts fpul,fr2
	fdiv fr2,fr1
	lds r1,fpul
	fmov.s fr1,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s @(r0,r14),fr0 ; r0 ??? bc r14 is ???
	fsts fpul,fr1
	fdiv fr1,fr0
	fmov.s fr0,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	jmp @r2
	mov.l @r15+,r14

loc_cE31D24:
	mov.w @(loc_cE31D7C,pc),r0 ; r0 set to 0x1F9
	mov.l @(loc_cE31DA8,pc),r2 ; r2 set to 0x8C05115A
	mov.b r13,@(r0,r14)
	mov.w @(loc_cE31D7E,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	jsr @r2
	mov r14,r4
	mov.l @(loc_cE31DA4,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x15,r5 ; r5 set to 0x15
	mov 0x00,r6 ; r6 set to 0x00
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_cE31DAC,pc),r2 ; r2 set to 0x8C035162
	mov r14,r4
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_cE31D4E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE31DB0,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_cE31DBC
	mov.w @(loc_cE31D7C,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_cE31D72
	lds.l @r15+,pr
	mov.l @(loc_cE31DB4,pc),r2 ; r2 set to 0x8C05176E
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_cE31D72:
	lds.l @r15+,pr
	mov.l @(loc_cE31DB8,pc),r2 ; r2 set to 0x8C051648
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE31D7C:
	#data 0x01F9
loc_cE31D7E:
	#data 0x041C
loc_cE31D80:
	#data 0x02A4
loc_cE31D82:
	#data 0x01A1
	#align4

loc_cE31D84:
	#data loc_8c04FEA8
loc_cE31D88_to_loc_cE36380_to_loc_cE31C98:
	#data loc_cE36380_to_loc_cE31C98
loc_cE31D8C:
	#data loc_8c05218A
loc_cE31D90:
	#data loc_8c056DE4
loc_cE31D94:
	#data loc_8c2896B0
loc_cE31D98:
	#data 0x41800000
loc_cE31D9C:
	#data 0x41000000
loc_cE31DA0:
	#data 0x42800000
loc_cE31DA4:
	#data loc_8c034E8C
loc_cE31DA8:
	#data loc_8c05115A
loc_cE31DAC:
	#data loc_8c035162
loc_cE31DB0:
	#data loc_8c034DEE
loc_cE31DB4:
	#data loc_8c05176E
loc_cE31DB8:
	#data loc_8c051648

;==============================================
loc_cE31DBC:
	mov.w @(loc_cE31EC8,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_cE31DE0
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r14)
	mov 0x0C,r5 ; r5 set to 0x0C
	mov.l @(loc_cE31ED4,pc),r3 ; r3 set to 0x8C0D0584
	mov 0x07,r6 ; r6 set to 0x07
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_cE31ED8,pc),r2 ; r2 set to 0x8C0D13BC
	mov r14,r4
	mov 0x03,r6 ; r6 set to 0x03
	mov 0x22,r5 ; r5 set to 0x22
	jmp @r2
	mov.l @r15+,r14

loc_cE31DE0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE31DE6:
	mov.w @(0xe0,pc),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_ce31e10
	mov.l @(0xe4,pc),r2
	jsr @r2
	mov r14,r4
	mov.w @(0xcc,pc),r0
	fmov @(r0,r14), fr3
	mov 0x38,r0
	fmov @(r0,r14), fr2
	fcmp/gt fr3, fr2
	bt loc_ce31e10
	mov.w @(0xc0,pc),r0
	fmov @(r0,r14), fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)

loc_cE31E10:
	mov.b @(0x6,r14),r0
	mov r14,r4
	mov.l @(0xc8,pc),r1
	extu.b r0,r0
	mov.w @(0xb2,pc),r5
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	add r14,r5
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_cE31E26:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov.l @(loc_cE31EE4,pc),r3 ; r3 set to 0x8C05218A
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov 0x18,r0 ; r0 set to 0x18
	mov.w r0,@(0x1C,r14)
	mov 0x1E,r0 ; r0 set to 0x1E
	mov.w r0,@(0x1E,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_cE31EE8,pc),r2 ; r2 set to 0x8C056DE4
	mov 0x05,r5 ; r5 set to 0x05
	jsr @r2
	mov r14,r4
	mov.w @(loc_cE31ED0,pc),r0 ; r0 set to 0x1D2
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt loc_cE31E58
	mova @(loc_cE31EEC,pc),r0; r0 set to 0xCE31EEC
	bra loc_cE31E5C
	fmov.s @r0,fr3

loc_cE31E58:
	mova @(loc_cE31EF0,pc),r0; r0 init to 0xCE31EF0
	fmov.s @r0,fr3

loc_cE31E5C:
	mov 0x5C,r0 ; r0 set to 0x5C,r0 set to 0x5C
	fldi0 fr4
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68,r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov.w @(loc_cE31ECA,pc),r0 ; r0 set to 0x1F9,r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???,r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf/s loc_cE31F04
	mov 0x00,r13 ; r13 set to 0x00,r13 set to 0x00
	mov.l @(loc_cE31EF4,pc),r1 ; r1 set to 0x41800000,r1 set to 0x41800000
	mov 0x5C,r0 ; r0 set to 0x5C,r0 set to 0x5C
	fmov.s @(r0,r14),fr2
	mov 0x33,r3 ; r3 set to 0x33,r3 set to 0x33
	lds r1,fpul
	mov.l @(loc_cE31EF8,pc),r1 ; r1 set to 0x41000000,r1 set to 0x41000000
	fsts fpul,fr3
	fdiv fr3,fr2
	lds r1,fpul
	mov.l @(loc_cE31EFC,pc),r1 ; r1 set to 0x42800000,r1 set to 0x42800000
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60,r0 set to 0x60
	fmov.s @(r0,r14),fr1 ; r1 ??? bc r14 is ???,r1 ??? bc r14 is ???
	fsts fpul,fr2
	fdiv fr2,fr1
	lds r1,fpul
	fmov.s fr1,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C,r0 set to 0x6C
	fmov.s @(r0,r14),fr0 ; r0 ??? bc r14 is ???,r0 ??? bc r14 is ???
	fsts fpul,fr1
	fdiv fr1,fr0
	fmov.s fr0,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68,r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov.w @(loc_cE31ED2,pc),r0 ; r0 set to 0x1A1,r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC,r0 set to 0x1AC
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E,r0 set to 0x19E
	mov.b r13,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4,r0 set to 0x1C4
	mov.l r13,@(r0,r14)
	mov.l @(loc_cE31F00,pc),r3 ; r3 set to 0x8C2896B0,r3 set to 0x8C2896B0
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4,r0 set to 0xC4
	shll r0 ; r0 set to 0x188,r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	bra loc_cE31F34
	mov 0x04,r6

;==============================================
loc_cE31EC8:
	#data 0x0141
loc_cE31ECA:
	#data 0x01F9
loc_cE31ECc:
	#data 0x041C
loc_cE31ECe:
	#data 0x02A4
loc_cE31ED0:
	#data 0x01D2
loc_cE31ED2:
	#data 0x01A1
	#align4

loc_cE31ED4:
	#data loc_8c0D0584
loc_cE31ED8:
	#data loc_8c0D13BC
loc_cE31EDc:
	#data loc_8c04FEA8
loc_cE31EE0_to_loc_cE36388_to_loc_cE31E26:
	#data loc_cE36388_to_loc_cE31E26
loc_cE31EE4:
	#data loc_8c05218A
loc_cE31EE8:
	#data loc_8c056DE4
loc_cE31EEC:
	#data 0x3F555555
loc_cE31EF0:
	#data 0xBF555555
loc_cE31EF4:
	#data 0x41800000
loc_cE31EF8:
	#data 0x41000000
loc_cE31EFC:
	#data 0x42800000
loc_cE31F00:
	#data loc_8c2896B0

;==============================================
loc_cE31F04:
	mov.w @(loc_cE31FFC,pc),r0 ; r0 set to 0x1F9
	mov.l @(loc_cE32004,pc),r3 ; r3 set to 0x8C05115A
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_cE31FFE,pc),r0 ; r0 set to 0x1A1
	mov 0x33,r2 ; r2 set to 0x33
	mov.l @(loc_cE32008,pc),r3 ; r3 set to 0x8C2896B0
	mov 0x02,r6 ; r6 set to 0x02
	mov.b r2,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
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

loc_cE31F34:
	mov.l @(loc_cE3200C,pc),r2 ; r2 set to 0x8C034E8C,r2 set to 0x8C034E8C
	mov 0x15,r5 ; r5 set to 0x15,r5 set to 0x15
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_cE32010,pc),r3 ; r3 set to 0x8C035162,r3 set to 0x8C035162
	mov r14,r4
	mov 0x00,r5 ; r5 set to 0x00,r5 set to 0x00
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_cE31F4A:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x5C,r1
	mov.l @(0xc0,pc),r3
	add r14,r1
	mov 0x34,r0
	sts.l pr,@-r15
	fmov @r1, fr3
	mov 0x68,r1
	fmov @(r0,r14), fr2
	add r14,r1
	fadd fr3, fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14), fr2
	fmov @r1, fr3
	fadd fr3, fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(0x8a,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce31fa2
	mov 0x00,r4
	mov.b r4,@(r0,r14)
	add 0x56,r0
	mov 0x33,r3
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0x78,pc),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)

loc_cE31FA2:
	mov.w @(0x1e,r14),r0
	cmp/pl r0
	bf loc_ce31fbe
	mov.w @(0x1e,r14),r0
	mov.l @(0x6c,pc),r3
	add 0xFF,r0
	mov.w r0,@(0x1e,r14)
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_ce31fbe
	mov.w @(0x1c,r14),r0
	add 0x02,r0
	mov.w r0,@(0x1c,r14)

loc_cE31FBE:
	mov.w @(0x1c,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1c,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_ce31ff6
	mov.b @(0x6,r14),r0
	mov 0x03,r3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(0x2c,pc),r0
	mov.b r3,@(r0,r14)
	mov.w @(0x22,pc),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_ce31fe6
	mov.w @(0x1e,pc),r0
	mov 0x05,r2
	mov.b r2,@(r0,r14)

loc_cE31FE6:
	mov.w @(0x18,pc),r0
	mov 0x15,r5
	lds.l @r15+,pr
	mov.l @(0x1c,pc),r3
	mov r14,r4
	mov.b @(r0,r14),r6
	jmp @r3
	mov.l @r15+,r14

loc_cE31FF6:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE31FFC:
	#data 0x01F9
loc_cE31FFE:
	#data 0x01A1
loc_cE32000:
	#data 0x014B
loc_cE32002:
	#data 0x0158
	#align4

loc_cE32004:
	#data loc_8c05115A
loc_cE32008:
	#data loc_8c2896B0
loc_cE3200C:
	#data loc_8c034E8C
loc_cE32010:
	#data loc_8c035162
loc_cE32014:
	#data loc_8c034DEE
loc_cE32018:
	#data loc_8c055D54

;==============================================
loc_cE3201C:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5C
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	mov.l r13,@-r15
	mov 0x00,r13 ; r13 set to 0x00
	sts.l pr,@-r15
	fmov.s @r1,fr3
	mov 0x68,r1 ; r1 set to 0x68
	fmov.s @(r0,r14),fr2
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_cE32146,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r3
	add 0xFE,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.l @(loc_cE32154,pc),r3 ; r3 set to 0x8C2896B0
	mov.b r13,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r13,@(r0,r14)
	mov.l @r3,r2
	add 0x7C,r2
	mov.b @(0x02,r14),r0
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(loc_cE32158,pc),r2 ; r2 set to 0x8C034DEE
	jsr @r2
	mov r14,r4
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_cE32096
	mov.w @(loc_cE32148,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_cE3208A
	lds.l @r15+,pr
	mov.l @(loc_cE3215C,pc),r2 ; r2 set to 0x8C05176E
	mov r14,r4
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	jmp @r2
	mov.l @r15+,r14

loc_cE3208A:
	lds.l @r15+,pr
	mov.l @(loc_cE32160,pc),r2 ; r2 set to 0x8C051648
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_cE32096:
	mov.w @(0xb0,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce320a0
	mov.b r13,@(r0,r14)

loc_cE320A0:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_cE320A8:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x06,r14),r0
	mov.l @(loc_cE32164_to_loc_cE36394_to_loc_cE320BE,pc),r1 ; r1 set to 0xCE36394
	extu.b r0,r0
	mov.w @(loc_cE3214C,pc),r5 ; r5 set to 0x2A4
	shll2 r0
	mov.l @(r0,r1),r3
	add r14,r5 ; r5 ??? bc r14 is ???
	jmp @r3
	mov.l @r15+,r14

loc_cE320BE:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov.l @(loc_cE32168,pc),r3 ; r3 set to 0x8C05218A
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_cE3216C,pc),r2 ; r2 set to 0x8C056DE4
	mov 0x05,r5 ; r5 set to 0x05
	jsr @r2
	mov r14,r4
	mov 0x00,r4 ; r4 set to 0x00
	mov r4,r0 ; r0 set to 0x00
	nop
	mov.w r0,@(0x1C,r14)
	mov 0x36,r3 ; r3 set to 0x36
	mov.w @(loc_cE3214E,pc),r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(loc_cE32154,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2 ; r2 ??
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(loc_cE32148,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_cE32134
	mov.b @(0x06,r14),r0
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_cE32146,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r1
	tst r1,r1
	bt loc_cE32120
	bra loc_cE32122
	mov 0x1B,r2

loc_cE32120:
	mov 0x0B,r2 ; r2 set to 0x0B

loc_cE32122:
	mov.w @(loc_cE32150,pc),r0 ; r0 set to 0x158,r0 set to 0x158
	mov 0x15,r5 ; r5 set to 0x15,r5 set to 0x15
	mov.l @(loc_cE32170,pc),r3 ; r3 set to 0x8C034E8C,r3 set to 0x8C034E8C
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r6
	jsr @r3
	mov r14,r4
	bra loc_cE3218E
	nop

loc_cE32134:
	mov.l @(loc_cE32174,pc),r1 ; r1 set to 0x8C053082
	jsr @r1
	mov r14,r4
	mov.w @(loc_cE32146,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_cE32178
	bra loc_cE3217A
	mov 0x1A,r3

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_cE32146:
	#data 0x01A3
loc_cE32148:
	#data 0x01F9
loc_cE3214a:
	#data 0x0141
loc_cE3214C:
	#data 0x02A4
loc_cE3214E:
	#data 0x01A1
loc_cE32150:
	#data 0x0158
	#align4

loc_cE32154:
	#data loc_8c2896B0
loc_cE32158:
	#data loc_8c034DEE
loc_cE3215C:
	#data loc_8c05176E
loc_cE32160:
	#data loc_8c051648
loc_cE32164_to_loc_cE36394_to_loc_cE320BE:
	#data loc_cE36394_to_loc_cE320BE
loc_cE32168:
	#data loc_8c05218A
loc_cE3216C:
	#data loc_8c056DE4
loc_cE32170:
	#data loc_8c034E8C
loc_cE32174:
	#data loc_8c053082

;==============================================
loc_cE32178:
	mov 0x0A,r3 ; r3 set to 0x0A

loc_cE3217A:
	mov.w @(loc_cE3223C,pc),r0 ; r0 set to 0x158,r0 set to 0x158
	mov 0x15,r5 ; r5 set to 0x15,r5 set to 0x15
	mov.b r3,@(r0,r14)
	mov.l @(loc_cE32248,pc),r3 ; r3 set to 0x8C034E8C,r3 set to 0x8C034E8C
	mov.b @(r0,r14),r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_cE3224C,pc),r2 ; r2 set to 0x8C05115A,r2 set to 0x8C05115A
	jsr @r2
	mov r14,r4

loc_cE3218E:
	mov 0x5C,r0 ; r0 set to 0x5C,r0 set to 0x5C,r0 set to 0x5C
	fldi0 fr4
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60,r0 set to 0x60,r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68,r0 set to 0x68,r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C,r0 set to 0x6C,r0 set to 0x6C
	fmov.s fr4,@(r0,r14)
	mov.w @(loc_cE3223E,pc),r0 ; r0 set to 0x1A3,r0 set to 0x1A3,r0 set to 0x1A3
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???,r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_cE321CA
	mova @(loc_cE32250,pc),r0; r0 set to 0xCE32250,r0 set to 0xCE32250,r0 set to 0xCE32250
	fmov.s @r0,fr3
	mov 0x60,r0 ; r0 set to 0x60,r0 set to 0x60,r0 set to 0x60
	fmov.s fr3,@(r0,r14)
	mova @(loc_cE32254,pc),r0; r0 set to 0xCE32254,r0 set to 0xCE32254,r0 set to 0xCE32254
	fmov.s @r0,fr3
	mov 0x6C,r0 ; r0 set to 0x6C,r0 set to 0x6C,r0 set to 0x6C
	fmov.s fr3,@(r0,r14)
	mova @(loc_cE32258,pc),r0; r0 set to 0xCE32258,r0 set to 0xCE32258,r0 set to 0xCE32258
	fmov.s @r0,fr4
	mov.w @(loc_cE32240,pc),r0 ; r0 set to 0x130,r0 set to 0x130,r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_cE321EA
	mova @(loc_cE3225C,pc),r0; r0 set to 0xCE3225C,r0 set to 0xCE3225C,r0 set to 0xCE3225C
	bra loc_cE321EA
	fmov.s @r0,fr4

loc_cE321CA:
	mova @(0x94,pc),r0
	fmov @r0, fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0x90,pc),r0
	fmov @r0, fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mova @(0x8c,pc),r0
	fmov @r0, fr4
	mov.w @(0x5e,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_ce321ea
	mova @(0x84,pc),r0
	fmov @r0, fr4

loc_cE321EA:
	mov.l @(loc_cE32270,pc),r3 ; r3 set to 0x8C035162
	mov 0x5C,r0 ; r0 set to 0x5C
	mov r14,r4
	fmov.s fr4,@(r0,r14)
	lds.l @r15+,pr
	mov 0x00,r5 ; r5 set to 0x00
	jmp @r3
	mov.l @r15+,r14

loc_cE321FA:
	mov.l r14,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE32274,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	mov.w @(loc_cE32242,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_cE32234
	mov.b @(0x06,r14),r0
	mov 0x34,r8 ; r8 set to 0x34
	add 0x01,r0 ; r0 set to 0x142
	mov.b r0,@(0x06,r14)
	mov.w @(loc_cE32244,pc),r0 ; r0 set to 0x1D2
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt/s loc_cE32228
	add r14,r8 ; r8 ??? bc r14 is ???
	mov.l @(loc_cE32278,pc),r1 ; r1 set to 0x42AD5555
	lds r1,fpul
	bra loc_cE3222E
	fsts fpul,fr3

loc_cE32228:
	mov.l @(0x50,pc),r2
	lds r2, fpul
	fsts fpul, fr3

loc_cE3222E:
	fmov @r8, fr2
	fadd fr3, fr2
	fmov fr2,@r8

loc_cE32234:
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE3223C:
	#data 0x0158
loc_cE3223E:
	#data 0x01A3
loc_cE32240:
	#data 0x0130
loc_cE32242:
	#data 0x0141
loc_cE32244:
	#data 0x01D2
	#align4

loc_cE32248:
	#data loc_8c034E8C
loc_cE3224C:
	#data loc_8c05115A
loc_cE32250:
	#data 0x41A2DB6D
loc_cE32254:
	#data 0xBF676DB6
loc_cE32258:
	#data 0xC0555555
loc_cE3225C:
	#data 0x40555555
loc_cE32260:
	#data 0x42092492
loc_cE32264:
	#data 0xBFAB6DB6
loc_cE32268:
	#data 0xC092AAAA
loc_cE3226c:
	#data 0x4092AAAA
loc_cE32270:
	#data loc_8c035162
loc_cE32274:
	#data loc_8c034DEE
loc_cE32278:
	#data 0x42AD5555
loc_cE3227c:
	#data 0xC2AD5555

;==============================================
loc_cE32280:
	mov.l r14,@-r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov 0x34,r0
	mov.l @(0x108,pc),r3
	sts.l pr,@-r15
	fmov @(r0,r14), fr2
	fmov @r1, fr3
	mov 0x68,r1
	add r14,r1
	fadd fr3, fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @r1, fr3
	mov 0x60,r1
	fmov @(r0,r14), fr2
	add r14,r1
	fadd fr3, fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14), fr2
	fmov @r1, fr3
	mov 0x6C,r1
	add r14,r1
	fadd fr3, fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14), fr2
	fmov @r1, fr3
	fadd fr3, fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(0xbe,pc),r3
	mov.w @(0x1c,r14),r0
	add r14,r3
	mov.b @r3,r3
	extu.b r3,r3
	add 0x01,r3
	cmp/eq r3,r0
	bt.s loc_ce32318
	mov 0x00,r4
	mov.w @(0xae,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce32318
	mov.w @(0xa4,pc),r3
	mov.w @(0x1c,r14),r0
	add r14,r3
	add 0x01,r0
	mov.w r0,@(0x1c,r14)
	mov.b @r3,r3
	mov.w @(0x1c,r14),r0
	extu.b r3,r3
	add 0x02,r3
	cmp/ge r3,r0
	bt loc_ce32318
	mov.w @(0x92,pc),r0
	mov 0x37,r3
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0x90,pc),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)

loc_cE32318:
	mov.w @(0x70,pc),r0
	fmov @(r0,r14), fr3
	mov 0x38,r0
	fmov @(r0,r14), fr2
	fcmp/gt fr3, fr2
	bt loc_ce32352
	mov.w @(0x64,pc),r0
	mov.l @(0x74,pc),r3
	fmov @(r0,r14), fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x5c,pc),r0
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov 0x5C,r0
	fldi0 fr4
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	mov.l @(0x58,pc),r3
	mov r14,r4
	fmov fr4,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_cE32352:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE32358:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x06,r14),r0
	mov.l @(loc_cE323A4_to_loc_cE363A0_to_loc_cE3236E,pc),r1 ; r1 set to 0xCE363A0
	extu.b r0,r0
	mov.w @(loc_cE32390,pc),r5 ; r5 set to 0x2A4
	shll2 r0
	mov.l @(r0,r1),r3
	add r14,r5 ; r5 ??? bc r14 is ???
	jmp @r3
	mov.l @r15+,r14

loc_cE3236E:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_cE32386,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_cE323A8
	bra loc_cE323AA
	mov 0x28,r0

loc_cE32386:
	#data 0x01A3
	#data 0x019E
	#data 0x01A1
	#data 0x041C
	#data 0x01F9

loc_cE32390:
	#data 0x02A4
	#align4

loc_cE32394:
	#data loc_8c034DEE
loc_cE32398:
	#data loc_8c2896B0
loc_cE3239c:
	#data loc_8c0511B4
loc_cE323A0:
	#data loc_8c051648
loc_cE323A4_to_loc_cE363A0_to_loc_cE3236E:
	#data loc_cE363A0_to_loc_cE3236E

;==============================================
loc_cE323A8:
	mov 0x1E,r0 ; r0 set to 0x1E

loc_cE323AA:
	mov.l @(loc_cE324F4,pc),r2 ; r2 set to 0x8C05218A,r2 set to 0x8C05218A
	mov.w r0,@(0x1C,r14)
	jsr @r2
	mov r14,r4
	mov.l @(loc_cE324F8,pc),r3 ; r3 set to 0x8C056DE4,r3 set to 0x8C056DE4
	mov 0x05,r5 ; r5 set to 0x05,r5 set to 0x05
	jsr @r3
	mov r14,r4
	mov.w @(loc_cE324E2,pc),r0 ; r0 set to 0x1F9,r0 set to 0x1F9
	mov 0x00,r4 ; r4 set to 0x00,r4 set to 0x00
	fldi0 fr4
	mov.b r4,@(r0,r14)
	mov.w @(loc_cE324E4,pc),r0 ; r0 set to 0x41C,r0 set to 0x41C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???,r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38,r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_cE324E6,pc),r0 ; r0 set to 0x1A3,r0 set to 0x1A3
	mov.b @(r0,r14),r3
	add 0xFE,r0 ; r0 set to 0x1A1,r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC,r0 set to 0x1AC
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E,r0 set to 0x19E
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4,r0 set to 0x1C4
	mov.l @(loc_cE324FC,pc),r3 ; r3 set to 0x8C2896B0,r3 set to 0x8C2896B0
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2 ; r2 ??,r2 ??
	extu.b r0,r0 ; r0 set to 0xC4,r0 set to 0xC4
	shll r0 ; r0 set to 0x188,r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x5C,r0 ; r0 set to 0x5C,r0 set to 0x5C
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60,r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68,r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C,r0 set to 0x6C
	mov.l @(loc_cE32500,pc),r2 ; r2 set to 0x8C034E8C,r2 set to 0x8C034E8C
	mov 0x15,r5 ; r5 set to 0x15,r5 set to 0x15
	fmov.s fr4,@(r0,r14)
	mov 0x0C,r6 ; r6 set to 0x0C,r6 set to 0x0C
	jsr @r2
	mov r14,r4 ; r4 ??? bc r14 is ???,r4 ??? bc r14 is ???

	mov.w @(loc_cE324E8,pc),r0 ; r0 set to 0x130,r0 set to 0x130
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???,r3 ??? bc r14 is ???
	tst r3,r3
	bt loc_cE32418
	mova @(loc_cE32504,pc),r0; r0 set to 0xCE32504,r0 set to 0xCE32504
	bra loc_cE3241C
	fmov.s @r0,fr3

loc_cE32418:
	mova @(loc_cE32508,pc),r0; r0 init to 0xCE32508
	fmov.s @r0,fr3

loc_cE3241C:
	mov 0x5C,r0 ; r0 set to 0x5C,r0 set to 0x5C
	fmov.s fr3,@(r0,r14)
	mov 0x0A,r4 ; r4 set to 0x0A,r4 set to 0x0A
	mov.w @(loc_cE324EA,pc),r0 ; r0 set to 0x1F2,r0 set to 0x1F2
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x1F3,r0 set to 0x1F3
	mov.b r4,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE32430:
	mov.w @(0xb8,pc),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xb4,pc),r2
	sts.l pr,@-r15
	mov.w @(r0,r14),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_ce3244c
	mov.l @(0xc8,pc),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_ce324a6

loc_cE3244C:
	mov 0x5C,r1
	mov.l @(0xc0,pc),r3
	add r14,r1
	mov 0x34,r0
	fmov @r1, fr3
	fmov @(r0,r14), fr2
	mov 0x68,r1
	add r14,r1
	fadd fr3, fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14), fr2
	fmov @r1, fr3
	fadd fr3, fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(0x7e,pc),r0
	mov 0x02,r2
	mov.b r2,@(r0,r14)
	mov.w @(0x1c,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1c,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_ce324a6
	mov.b @(0x6,r14),r0
	mov r14,r4
	fldi0 fr4
	mov 0x0D,r6
	add 0x01,r0
	mov.l @(0x74,pc),r3
	mov.b r0,@(0x6,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov 0x15,r5
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_cE324A6:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE324AC:
	mov.w @(loc_cE324F0,pc),r0 ; r0 set to 0x1F5
	mov 0x02,r3 ; r3 set to 0x02
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.l @(loc_cE32510,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_cE324DC
	mov.w @(loc_cE324E4,pc),r0 ; r0 set to 0x41C
	mov.l @(loc_cE32514,pc),r3 ; r3 set to 0x8C0511B4
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_cE32518,pc),r2 ; r2 set to 0x8C051648
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_cE324DC:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE324E2:
	#data 0x01F9
loc_cE324E4:
	#data 0x041C
loc_cE324E6:
	#data 0x01A3
loc_cE324E8:
	#data 0x0130
loc_cE324EA:
	#data 0x01F2
loc_cE324Ec:
	#data 0x034A
loc_cE324Ee:
	#data 0x0360
loc_cE324F0:
	#data 0x01F5
	#align4

loc_cE324F4:
	#data loc_8c05218A
loc_cE324F8:
	#data loc_8c056DE4
loc_cE324FC:
	#data loc_8c2896B0
loc_cE32500:
	#data loc_8c034E8C
loc_cE32504:
	#data 0x40E2AAAA
loc_cE32508:
	#data 0xC0E2AAAA
loc_cE3250C:
	#data loc_8c0518A0
loc_cE32510:
	#data loc_8c034DEE
loc_cE32514:
	#data loc_8c0511B4
loc_cE32518:
	#data loc_8c051648

;==============================================
loc_cE3251C:
	mov.w @(loc_ce3262e,pc),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_ce32546
	mov.l @(loc_ce3263c,pc),r2
	jsr @r2
	mov r14,r4
	mov.w @(loc_ce32630,pc),r0
	fmov @(r0,r14), fr3
	mov 0x38,r0
	fmov @(r0,r14), fr2
	fcmp/gt fr2, fr3
	bf loc_ce32546
	mov.w @(loc_ce32630,pc),r0
	fmov @(r0,r14), fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)

loc_cE32546:
	mov.b @(0x6,r14),r0
	mov r14,r4
	mov.l @(0xf4,pc),r1
	extu.b r0,r0
	mov.w @(0xe0,pc),r5
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	add r14,r5
	jmp @r3
	mov.l @r15+,r14

loc_cE3255C:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(loc_ce32644,pc),r3
	jsr @r3
	mov 0x00,r5

	mov.w @(0xc8,pc),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf loc_ce3257e
	mov.w @(0xc2,pc),r0
	mov 0x10,r3
	mov.w @(0xbc,pc),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.b r3,@(r0,r14)

loc_cE3257E:
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(0xa6,pc),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf.s loc_ce325c0
	mov r14,r4
	mov.l @(0xb4,pc),r1
	mov 0x5C,r0
	fmov @(r0,r14), fr2
	lds r1, fpul
	mov.l @(0xb0,pc),r1
	fsts fpul, fr3
	fdiv fr3, fr2
	lds r1, fpul
	mov.l @(0xac,pc),r1
	fldi0 fr3
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14), fr1
	fsts fpul, fr2
	fdiv fr2, fr1
	lds r1, fpul
	fmov fr1,@(r0,r14)
	mov 0x6C,r0
	fmov @(r0,r14), fr0
	fsts fpul, fr1
	fdiv fr1, fr0
	fmov fr0,@(r0,r14)
	mov 0x68,r0
	fmov fr3,@(r0,r14)

loc_cE325C0:
	mov.l @(0x90,pc),r3
	jsr @r3
	nop
	mov.w @(0x70,pc),r0
	mov 0x39,r2
	mov 0x00,r4
	mov.l @(0x88,pc),r3
	mov.b r2,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0x3e,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_ce32608
	mov.l @(0x64,pc),r2
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x60,pc),r3
	mov r14,r4
	mov 0x00,r6
	mov 0x16,r5
	jmp @r3
	mov.l @r15+,r14

loc_cE32608:
	lds.l @r15+,pr
	mov.l @(0x54,pc),r1
	mov r14,r4
	mov 0x40,r6
	mov 0x16,r5
	jmp @r1
	mov.l @r15+,r14

;==============================================
loc_cE32616:
	mov.l r14,@-r15
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(loc_cE32634,pc),r0 ; r0 set to 0x255
	mov r4,r14
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf loc_cE32664
	bra loc_cE32666
	mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce3262e:
	#data 0x01F9
loc_ce32630:
	#data 0x041C
loc_ce32632:
	#data 0x02A4
loc_cE32634:
	#data 0x0255
loc_ce32636:
	#data 0x00FF
loc_ce32638:
	#data 0x03F0
loc_ce3263a:
	#data 0x01A1
	#align4

loc_ce3263c:
	#data loc_8c04FEA8
loc_cE32640_to_loc_cE363AC_to_loc_cE3255C:
	#data loc_cE363AC_to_loc_cE3255C
loc_cE32644:
	#data loc_8c035162
loc_cE32648:
	#data 0x41800000
loc_cE3264c:
	#data 0x41000000
loc_cE32650:
	#data 0x42800000
loc_cE32654:
	#data loc_8c05218A
loc_cE32658:
	#data loc_8c2896B0
loc_cE3265c:
	#data loc_8c05115A
loc_cE32660:
	#data loc_8c034E8C

;==============================================
loc_cE32664:
	mov 0x00,r3 ; r3 set to 0x00

loc_cE32666:
	mov.w @(loc_cE32784,pc),r0 ; r0 set to 0x3F1,r0 set to 0x3F1
	mov.b r3,@(r0,r14)
	mov.l @(loc_cE32798,pc),r3 ; r3 set to 0x8C034DEE,r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??,r0 ??
	cmp/pz r0
	bf loc_cE326C8
	mov.b @(0x06,r14),r0
	mov 0x00,r4 ; r4 set to 0x00,r4 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_cE32786,pc),r0 ; r0 set to 0x3F0,r0 set to 0x3F0
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x3F1,r0 set to 0x3F1
	mov.b r4,@(r0,r14)
	mov.w @(loc_cE32788,pc),r0 ; r0 set to 0x1F9,r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???,r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf/s loc_cE326A4
	fldi0 fr15
	mov.l @(loc_cE3279C,pc),r2 ; r2 set to 0x8C034E8C,r2 set to 0x8C034E8C
	mov 0x16,r5 ; r5 set to 0x16,r5 set to 0x16
	mov 0x41,r6 ; r6 set to 0x41,r6 set to 0x41
	jsr @r2
	mov r14,r4 ; r4 ??? bc r14 is ???,r4 ??? bc r14 is ???
	mova @(loc_cE327A0,pc),r0; r0 set to 0xCE327A0,r0 set to 0xCE327A0
	fmov.s fr15,@r15
	bra loc_cE326B4
	fmov.s @r0,fr3

loc_cE326A4:
	mov.l @(0xf4,pc),r3
	mov 0x16,r5
	mov 0x01,r6
	jsr @r3
	mov r14,r4
	mova @(0xf4,pc),r0
	fmov fr15,@r15
	fmov @r0, fr3

loc_cE326B4:
	mov 0x04,r0
	mov.l @(0xf0,pc),r3
	fmov @(r0,r15), fr2
	mov 0x04,r0
	mov r15,r5
	mov 0x01,r6
	fadd fr3, fr2
	fmov fr2,@(r0,r15)
	jsr @r3
	mov r14,r4

loc_cE326C8:
	add 0x0C,r15
	lds.l @r15+,pr
	fmov.s @r15+,fr15
	rts
	mov.l @r15+,r14

;==============================================
loc_cE326D2:
	mov.w @(loc_cE3278A,pc),r0 ; r0 set to 0x3F8
	mov 0x02,r3 ; r3 set to 0x02
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x05,r2 ; r2 set to 0x05
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov 0x00,r13 ; r13 set to 0x00
	mov.w @(loc_cE3278C,pc),r0 ; r0 set to 0x328
	mov.l @(loc_cE32798,pc),r3 ; r3 set to 0x8C034DEE
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_cE32724
	mov.w @(loc_cE3278E,pc),r0 ; r0 set to 0x3F9
	mov.b r13,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x3F8
	mov.b r13,@(r0,r14)
	mov.w @(loc_cE32790,pc),r0 ; r0 set to 0x327
	mov.b r13,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x328
	mov.b r13,@(r0,r14)
	mov.w @(loc_cE32788,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_cE32718
	lds.l @r15+,pr
	mov.l @(loc_cE327AC,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	jmp @r3
	mov.l @r15+,r14

loc_cE32718:
	lds.l @r15+,pr
	mov.l @(loc_cE327B0,pc),r2 ; r2 set to 0x8C05176E
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_cE32724:
	mov.w @(loc_cE32792,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_cE3273C
	mov.b r13,@(r0,r14)
	mov 0x00,r5 ; r5 set to 0x00
	lds.l @r15+,pr
	mov.l @(loc_cE327B4,pc),r3 ; r3 set to 0x8C07EDB8
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_cE3273C:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_cE32744:
	mov.w @(0x40,pc),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_ce3276e
	mov.l @(0x60,pc),r2
	jsr @r2
	mov r14,r4
	mov.w @(0x36,pc),r0
	fmov @(r0,r14), fr3
	mov 0x38,r0
	fmov @(r0,r14), fr2
	fcmp/gt fr2, fr3
	bf loc_ce3276e
	mov.w @(0x2a,pc),r0
	fmov @(r0,r14), fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)

loc_cE3276E:
	mov.b @(0x6,r14),r0
	mov r14,r4
	mov.l @(0x48,pc),r1
	extu.b r0,r0
	mov.w @(0x1c,pc),r5
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	add r14,r5
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE32784:
	#data 0x03F1
loc_cE32786:
	#data 0x03F0
loc_cE32788:
	#data 0x01F9
loc_cE3278A:
	#data 0x03F8
loc_cE3278C:
	#data 0x0328
loc_cE3278E:
	#data 0x03F9
loc_cE32790:
	#data 0x0327
loc_cE32792:
	#data 0x0141
loc_cE32794:
	#data 0x041C
loc_cE32796:
	#data 0x02A4
	#align4

loc_cE32798:
	#data loc_8c034DEE
loc_cE3279C:
	#data loc_8c034E8C
loc_cE327A0:
	#data 0x42BC9249
loc_cE327A4:
	#data 0x424DB6DB
loc_cE327A8:
	#data loc_8c050834
loc_cE327AC:
	#data loc_8c051648
loc_cE327B0:
	#data loc_8c05176E
loc_cE327B4:
	#data loc_8c07EDB8
loc_cE327B8:
	#data loc_8c04FEA8
loc_cE327BC_to_loc_cE363B8_to_loc_cE327C0:
	#data loc_cE363B8_to_loc_cE327C0

;==============================================
loc_cE327C0:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov.l @(loc_cE328D8,pc),r3 ; r3 set to 0x8C05218A
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_cE328DC,pc),r2 ; r2 set to 0x8C056DE4
	mov 0x05,r5 ; r5 set to 0x05
	jsr @r2
	mov r14,r4
	mov.w @(loc_cE328CE,pc),r0 ; r0 set to 0x41C
	mov 0x3C,r5 ; r5 set to 0x3C
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @(loc_cE328E0,pc),r3 ; r3 set to 0x8C2896B0
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_cE328D0,pc),r0 ; r0 set to 0x1A1
	mov.b r5,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2 ; r2 ??? bc r3 is ???
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov r5,r0 ; r0 set to 0x3C
	nop
	mov.l @(loc_cE328E4,pc),r2 ; r2 set to 0x8C034E8C
	mov 0x0F,r5 ; r5 set to 0x0F
	mov.w r0,@(0x1C,r14)
	mov 0x04,r6 ; r6 set to 0x04
	jsr @r2
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.l @(loc_cE328E8,pc),r3 ; r3 set to 0x8C0D0584
	mov 0x0A,r5 ; r5 set to 0x0A
	mov 0x03,r6 ; r6 set to 0x03
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_cE328EC,pc),r2 ; r2 set to 0x8C05115A
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_cE3282C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE328F0,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	mov.w @(loc_cE328D2,pc),r0 ; r0 set to 0x19E
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_cE3287C
	mov.l @(loc_cE328F4,pc),r3 ; r3 set to 0x8C05264C
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_cE32862
	mov.w @(loc_cE328D4,pc),r0 ; r0 set to 0x1EA
	mov 0x01,r3 ; r3 set to 0x01
	mov.w @(loc_cE328D6,pc),r2 ; r2 set to 0xC3
	mov r14,r4
	mov.b r3,@(r0,r14)
	add 0x0D,r0 ; r0 set to 0x1F7
	mov.b r2,@(r0,r14)
	add 0xB9,r0 ; r0 set to 0x1B0
	lds.l @r15+,pr
	mov.l @(loc_cE328F8,pc),r3 ; r3 set to 0x8C0522E0
	mov.l @(r0,r14),r5
	jmp @r3
	mov.l @r15+,r14

loc_cE32862:
	mov.b @(0x6,r14),r0
	mov 0x15,r5
	mov.l @(0x7c,pc),r3
	mov 0x11,r6
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0x88,pc),r2
	mov 0x23,r5
	mov 0x05,r6
	jsr @r2
	mov r14,r4

loc_cE3287C:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_cE328A6
	mov.b @(0x06,r14),r0
	mov 0x15,r5 ; r5 set to 0x15
	mov.l @(loc_cE328E4,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x11,r6 ; r6 set to 0x11
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_cE328FC,pc),r2 ; r2 set to 0x8C0D13BC
	mov r14,r4
	mov 0x05,r6 ; r6 set to 0x05
	mov 0x23,r5 ; r5 set to 0x23
	jmp @r2
	mov.l @r15+,r14

loc_cE328A6:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE328AC:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_cE328F0,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_cE328C6
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_cE32900,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	lds.l @r15+,pr

loc_cE328C6:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE328CE:
	#data 0x041C
loc_cE328D0:
	#data 0x01A1
loc_cE328D2:
	#data 0x019E
loc_cE328D4:
	#data 0x01EA
loc_cE328D6:
	#data 0x00C3
	#align4

loc_cE328D8:
	#data loc_8c05218A
loc_cE328DC:
	#data loc_8c056DE4
loc_cE328E0:
	#data loc_8c2896B0
loc_cE328E4:
	#data loc_8c034E8C
loc_cE328E8:
	#data loc_8c0D0584
loc_cE328EC:
	#data loc_8c05115A
loc_cE328F0:
	#data loc_8c034DEE
loc_cE328F4:
	#data loc_8c05264C
loc_cE328F8:
	#data loc_8c0522E0
loc_cE328FC:
	#data loc_8c0D13BC
loc_cE32900:
	#data loc_8c051648

;==============================================
loc_cE32904:
	mov.w @(0x122,pc),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_ce3292e
	mov.l @(0x124,pc),r2
	jsr @r2
	mov r14,r4
	mov.w @(0x10e,pc),r0
	fmov @(r0,r14), fr3
	mov 0x38,r0
	fmov @(r0,r14), fr2
	fcmp/gt fr2, fr3
	bf loc_ce3292e
	mov.w @(0x102,pc),r0
	fmov @(r0,r14), fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)

loc_cE3292E:
	mov 0x24,r0
	mov.l @(0x10c,pc),r1
	mov 0x08,r3
	mov.w @(0xf6,pc),r5
	mov.b r3,@(r0,r14)
	mov r14,r4
	mov.b @(0x6,r14),r0
	add r14,r5
	lds.l @r15+,pr
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_cE3294A:
	mov.w @(0xe2,pc),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf loc_ce32966
	mov.w @(0xd6,pc),r0
	mov 0x10,r3
	mov.w @(0xd0,pc),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.b r3,@(r0,r14)

loc_cE32966:
	mov.b @(0x6,r14),r0
	mov.l @(0xd8,pc),r3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov r14,r4
	mov 0x5C,r0
	fldi0 fr4
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov 0x4C,r0
	mov 0x00,r4
	mov.w r4,@(r0,r14)
	mov 0x4E,r0
	mov.w r4,@(r0,r14)
	mov 0x3F,r3
	mov.w @(0x98,pc),r0
	fmov @(r0,r14), fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x9a,pc),r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0xa0,pc),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	add 0x7C,r2
	shll r0
	mov.w @(r0,r2),r1
	mov 0x16,r5
	mov 0x05,r6
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(0x8c,pc),r2
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x88,pc),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_cE329CE:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(loc_cE32A30,pc),r0 ; r0 set to 0x255
	mov r4,r14
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf loc_cE329E6
	bra loc_cE329E8
	mov 0x02,r3

loc_cE329E6:
	mov 0x00,r3 ; r3 set to 0x00

loc_cE329E8:
	mov.w @(loc_cE32A38,pc),r0 ; r0 set to 0x3F1,r0 set to 0x3F1
	mov.b r3,@(r0,r14)
	mov.l @(loc_cE32A54,pc),r3 ; r3 set to 0x8C034DEE,r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	mov.w @(loc_cE32A3A,pc),r0 ; r0 set to 0x141,r0 set to 0x141
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_cE32AB6
	mov.l @(loc_cE32A58,pc),r3 ; r3 set to 0x8C03319E,r3 set to 0x8C03319E
	mov 0x00,r13 ; r13 set to 0x00,r13 set to 0x00
	jsr @r3
	mov.b r13,@(r0,r14)
	mov.l @(loc_cE32A5C_to_loc_cE36180,pc),r1 ; r1 set to 0xCE36180,r1 set to 0xCE36180
	and 0x07,r0
	mov.b @(r0,r1),r2
	mov 0x20,r0 ; r0 set to 0x20,r0 set to 0x20
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???,r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x18,r0
	bt/s loc_cE32A6E
	mov 0x12,r4 ; r4 set to 0x12,r4 set to 0x12
	cmp/eq 0x14,r0
	bt loc_cE32A22
	cmp/eq 0x10,r0
	bt loc_cE32A60
	bra loc_cE32A68
	nop

loc_cE32A22:
	mov 0x21,r0 ; r0 set to 0x21
	mov 0x11,r2 ; r2 set to 0x11
	bra loc_cE32A72
	mov.b r2,@(r0,r14)

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_cE32A2a:
	#data 0x01F9
loc_cE32A2c:
	#data 0x041C
loc_cE32A2e:
	#data 0x02A4
loc_cE32A30:
	#data 0x0255
loc_cE32A32:
	#data 0x00FF
loc_cE32A34:
	#data 0x03F0
loc_cE32A36:
	#data 0x01A1
loc_cE32A38:
	#data 0x03F1
loc_cE32A3A:
	#data 0x0141
	#align4

loc_cE32A3c:
	#data loc_8c04FEA8
loc_cE32A40_to_loc_cE363C4_to_loc_cE3294A:
	#data loc_cE363C4_to_loc_cE3294A
loc_cE32A44:
	#data loc_8c05218A
loc_cE32A48:
	#data loc_8c2896B0
loc_cE32A4c:
	#data loc_8c034E8C
loc_cE32A50:
	#data loc_8c05115A
loc_cE32A54:
	#data loc_8c034DEE
loc_cE32A58:
	#data loc_8c03319E
loc_cE32A5C_to_loc_cE36180:
	#data loc_cE36180

;==============================================
loc_cE32A60:
	mov 0x21,r0 ; r0 set to 0x21
	mov 0x10,r1 ; r1 set to 0x10
	bra loc_cE32A72
	mov.b r1,@(r0,r14)

loc_cE32A68:
	mov 0x20,r0
	mov 0x18,r2
	mov.b r2,@(r0,r14)

loc_cE32A6E:
	mov 0x21,r0 ; r0 set to 0x21
	mov.b r4,@(r0,r14)

loc_cE32A72:
	mov 0x20,r0 ; r0 set to 0x20,r0 set to 0x20
	mov.l @(loc_cE32B68,pc),r3 ; r3 set to 0x8C07F7EC,r3 set to 0x8C07F7EC
	mov.b @(r0,r14),r5
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf/s loc_cE32A8C
	mov.l r0,@(0x14,r14)
	mov.l @(loc_cE32B6C,pc),r3 ; r3 set to 0x8C051648,r3 set to 0x8C051648
	jsr @r3
	mov r14,r4
	bra loc_cE32AB6
	nop

loc_cE32A8C:
	mov.b @(0x6,r14),r0
	mov r15,r5
	fldi0 fr3
	mov 0x01,r6
	add 0x01,r0
	mov.l @(0xdc,pc),r3
	mov.b r0,@(0x6,r14)
	mov.w @(0xba,pc),r0
	mov.b r13,@(r0,r14)
	add 0x01,r0
	mov.b r13,@(r0,r14)
	mova @(0xcc,pc),r0
	fmov fr3,@r15
	fmov @r0, fr3
	mov 0x04,r0
	fmov @(r0,r15), fr2
	mov 0x04,r0
	fadd fr3, fr2
	fmov fr2,@(r0,r15)
	jsr @r3
	mov r14,r4

loc_cE32AB6:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_cE32AC0:
	mov.w @(loc_cE32B5A,pc),r0 ; r0 set to 0x3F8
	mov 0x02,r3 ; r3 set to 0x02
	mov.l r14,@-r15
	mov r4,r14
	mov 0x05,r2 ; r2 set to 0x05
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.w @(loc_cE32B5C,pc),r0 ; r0 set to 0x328
	mov.b r2,@(r0,r14)
	mov.w @(loc_cE32B5E,pc),r0 ; r0 set to 0x255
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf loc_cE32AE0
	bra loc_cE32AE2
	mov 0x02,r3

loc_cE32AE0:
	mov 0x00,r3

loc_cE32AE2:
	mov.w @(0x7a,pc),r0
	mov.b r3,@(r0,r14)
	mov.l @(0x90,pc),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce32afc
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(0x66,pc),r0
	mov.w r0,@(0x1c,r14)

loc_cE32AFC:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE32B02:
	mov.w @(0x54,pc),r0
	mov 0x02,r3
	mov 0x05,r2
	mov.b r3,@(r0,r4)
	mov.w @(0x4e,pc),r0
	mov.b r2,@(r0,r4)
	mov.w @(0x52,pc),r0
	mov.l @(0x14,r4),r5
	mov.b @(r0,r5),r3
	tst r3,r3
	bt loc_ce32b24
	mov.w @(0x1c,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1c,r4)
	exts.w r0,r0
	cmp/pl r0
	bt loc_ce32b2a

loc_cE32B24:
	mov.l @(0x44,pc),r2
	jmp @r2
	nop

loc_cE32B2A:
	mov.b @(0x4,r5),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_ce32b54
	mov.b @(0x5,r5),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_ce32b40
	mov.b @(0x6,r5),r0
	tst r0,r0
	bf loc_ce32b50

loc_cE32B40:
	mov.b @(0x4,r5),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_ce32b54
	mov.b @(0x5,r5),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_ce32b54

loc_cE32B50:
	bra loc_ce33080
	nop

loc_cE32B54:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE32B58:
	#data 0x03F0
loc_cE32B5A:
	#data 0x03F8
loc_cE32B5C:
	#data 0x0328
loc_cE32B5E:
	#data 0x0255
loc_cE32B60:
	#data 0x03F1
loc_cE32B62:
	#data 0x00B4
loc_cE32B64:
	#data 0x012C
	#align4

loc_cE32B68:
	#data loc_8c07F7EC
loc_cE32B6C:
	#data loc_8c051648
loc_cE32B70:
	#data 0x42FCDB6D
loc_cE32B74:
	#data loc_8c050834
loc_cE32B78:
	#data loc_8c034DEE

;==============================================
loc_cE32B7C:
	mov.w @(loc_cE32C8C,pc),r0 ; r0 set to 0x3F8
	mov 0x02,r3 ; r3 set to 0x02
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov 0x05,r2 ; r2 set to 0x05
	mov.w @(loc_cE32C8E,pc),r0 ; r0 set to 0x328
	mov.l @(loc_cE32C90,pc),r3 ; r3 set to 0x8C034DEE
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov 0x5C,r1 ; r1 set to 0x5C
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6C
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0 ; r0 set to 0x5F
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0 ; r0 ??
	cmp/pl r0
	bt loc_cE32BF0
	mov.b @(0x06,r14),r0
	mov r14,r4
	mov.l @(loc_cE32C94,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x08,r6 ; r6 set to 0x08
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov 0x0A,r0 ; r0 set to 0x0A
	mov.w r0,@(0x1C,r14)
	mov 0x16,r5 ; r5 set to 0x16
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_cE32BF0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE32BF6:
	mov.w @(loc_cE32C8C,pc),r0 ; r0 set to 0x3F8
	mov 0x02,r3 ; r3 set to 0x02
	mov.l r14,@-r15
	mov r4,r14
	mov 0x05,r2 ; r2 set to 0x05
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.w @(loc_cE32C8E,pc),r0 ; r0 set to 0x328
	mov.b r2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0 ; r0 set to 0x327
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0 ; r0 ??
	cmp/pl r0
	bt loc_cE32C84
	mov.b @(0x06,r14),r0
	mov.l @(loc_cE32C98,pc),r3 ; r3 set to 0xE000
	add 0x01,r0
	mov.l @(loc_cE32C9C,pc),r13 ; r13 set to 0x8C0D0584
	mov.b r0,@(0x06,r14)
	mov 0x48,r0 ; r0 set to 0x48
	mov.l r3,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x18,r0
	bt loc_cE32C3A
	cmp/eq 0x14,r0
	bt loc_cE32C4A
	cmp/eq 0x10,r0
	bt loc_cE32C5E
	bra loc_cE32C74
	nop

loc_cE32C3A:
	mov 0x38,r0 ; r0 set to 0x38
	fldi0 fr3
	fmov.s @(r0,r14),fr2
	mov 0x05,r6 ; r6 set to 0x05
	fsub fr3,fr2
	fmov.s fr2,@(r0,r14)
	bra loc_cE32C70
	mov 0x12,r5

loc_cE32C4A:
	mov.l @(loc_cE32CA0,pc),r1 ; r1 set to 0x41892492
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	mov 0x05,r6 ; r6 set to 0x05
	lds r1,fpul
	fsts fpul,fr3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r14)
	bra loc_cE32C70
	mov 0x11,r5

loc_cE32C5E:
	mov.l @(0x44,pc),r1
	mov 0x38,r0
	fmov @(r0,r14),fr2
	mov 0x10,r5
	lds r1,fpul
	mov 0x05,r6
	fsts fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r14)

loc_cE32C70:
	jsr @r13
	mov r14,r4

loc_cE32C74:
	lds.l @r15+,pr
	mov.l @(loc_cE32C94,pc),r2 ; r2 set to 0x8C034E8C,r2 set to 0x8C034E8C
	mov 0x09,r6 ; r6 set to 0x09,r6 set to 0x09
	mov 0x16,r5 ; r5 set to 0x16,r5 set to 0x16
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_cE32C84:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE32C8C:
	#data 0x03F8
loc_cE32C8E:
	#data 0x0328
	#align4

loc_cE32C90:
	#data loc_8c034DEE
loc_cE32C94:
	#data loc_8c034E8C
loc_cE32C98:
	#data 0x0000E000
loc_cE32C9C:
	#data loc_8c0D0584
loc_cE32CA0:
	#data 0x41892492
loc_cE32CA4:
	#data 0x41092492

;==============================================
loc_cE32CA8:
	mov.w @(0x10e,pc),r0
	mov 0x02,r3
	mov.l r14,@-r15
	mov r4,r14
	mov 0x05,r2
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.w @(0x100,pc),r0
	mov.l @(0x108,pc),r3
	mov.b r2,@(r0,r14)
	mov 0x48,r0
	mov.l r3,@(r0,r14)
	mov.l @(0x104,pc),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce32d54
	mov.w @(0xec,pc),r0
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov.b @(0x6,r14),r0
	mov.w @(0xe6,pc),r3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x48,r0
	mov.l @(0x14,r14),r4
	mov.l r3,@(r0,r14)
	mova @(0xe8,pc),r0
	fmov @r0, fr3
	mov 0x34,r0
	fmov @(r0,r4), fr2
	fadd fr3, fr2
	fmov fr2,@(r0,r14)
	mov.w @(0xd0,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_ce32d02
	mova @(0xd8,pc),r0
	fmov @r0, fr2
	mov 0x34,r0
	fmov @(r0,r4), fr1
	fadd fr2, fr1
	fmov fr1,@(r0,r14)

loc_cE32D02:
	mov.w @(0x1c,r4),r0
	mov.l @(0xd0,pc),r13
	add 0xFF,r0
	mov.w r0,@(0x1c,r4)
	mova @(0xc8,pc),r0
	fmov @r0, fr4
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x18,r0
	bt loc_ce32d24
	cmp/eq 0x14,r0
	bt loc_ce32d32
	cmp/eq 0x10,r0
	bt loc_ce32d44
	bra loc_ce32d54
	nop

loc_cE32D24:
	mov 0x38,r0
	fmov @(r0,r4), fr3
	mov 0x05,r6
	fadd fr4, fr3
	fmov fr3,@(r0,r14)
	bra loc_ce32d50
	mov 0x12,r5

loc_cE32D32:
	mova @(0xa8,pc),r0
	fmov @r0, fr3
	mov 0x38,r0
	fmov @(r0,r4), fr2
	mov 0x05,r6
	fadd fr3, fr2
	fmov fr2,@(r0,r14)
	bra loc_ce32d50
	mov 0x11,r5

loc_cE32D44:
	mov 0x38,r0
	fmov @(r0,r4), fr3
	mov 0x10,r5
	mov 0x05,r6
	fadd fr4, fr3
	fmov fr3,@(r0,r14)

loc_cE32D50:
	jsr @r13
	mov r14,r4

loc_cE32D54:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_cE32D5C:
	mov.w @(loc_cE32DBA,pc),r0 ; r0 set to 0x3F8
	mov 0x02,r3 ; r3 set to 0x02
	mov.l r14,@-r15
	mov r4,r14
	mov 0x05,r2 ; r2 set to 0x05
	mov.l r13,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.w @(loc_cE32DBC,pc),r0 ; r0 set to 0x328
	mov.w @(loc_cE32DC0,pc),r3 ; r3 set to 0x4000
	mov.b r2,@(r0,r14)
	mov 0x48,r0 ; r0 set to 0x48
	mov.l r3,@(r0,r14)
	mov.l @(loc_cE32DC8,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_cE32E28
	mov.w @(loc_cE32DBE,pc),r0 ; r0 set to 0x141
	mov 0x00,r4 ; r4 set to 0x00
	fldi0 fr3
	mov.b r4,@(r0,r14)
	mov.b @(0x06,r14),r0
	add 0x01,r0 ; r0 set to 0x142
	mov.b r0,@(0x06,r14)
	mov 0x48,r0 ; r0 set to 0x48
	mov.l r4,@(r0,r14)
	mov.l @(0x14,r14),r4 ; r4 ??? bc r14 is ???
	mov.w @(0x1C,r4),r0
	add 0xFF,r0 ; r0 set to 0x47
	mov.w r0,@(0x1C,r4)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r4),fr2 ; r2 ??? bc r4 is ???
	mov r0,r8 ; r8 set to 0x34
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_cE32DC2,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt/s loc_cE32DE4
	add r14,r8 ; r8 ??? bc r14 is ???
	mov.l @(loc_cE32DE0,pc),r1 ; r1 set to 0xC1555555
	lds r1,fpul
	bra loc_cE32DEA
	fsts fpul,fr2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE32DBA:
	#data 0x03F8
loc_cE32DBC:
	#data 0x0328
loc_cE32DBE:
	#data 0x0141
loc_cE32DC0:
	#data 0x4000
loc_cE32DC2:
	#data 0x0130
	#align4

loc_cE32DC4:
	#data 0x0000E000
loc_cE32DC8:
	#data loc_8c034DEE
loc_cE32Dcc:
	#data 0xC2D55555
loc_cE32Dd0:
	#data 0x42D55555
loc_cE32Dd4:
	#data 0x431A4924
loc_cE32Dd8:
	#data loc_8c0D0584
loc_cE32Ddc:
	#data 0x43092492
loc_cE32DE0:
	#data 0xC1555555

;==============================================
loc_cE32DE4:
	mov.l @(loc_cE32F14,pc),r2 ; r2 set to 0x41555555
	lds r2,fpul
	fsts fpul,fr2

loc_cE32DEA:
	fmov.s @r8,fr3
	mova @(loc_cE32F18,pc),r0; r0 init to 0xCE32F18,r0 init to 0xCE32F18
	mov.l @(loc_cE32F1C,pc),r13 ; r13 set to 0x8C0D0584,r13 set to 0x8C0D0584
	fadd fr2,fr3
	fmov.s fr3,@r8
	fmov.s @r0,fr3
	mov 0x38,r0 ; r0 set to 0x38,r0 set to 0x38
	fmov.s @(r0,r4),fr2 ; r2 ??? bc r4 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20,r0 set to 0x20
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???,r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x18,r0
	bt loc_cE32E14
	cmp/eq 0x14,r0
	bt loc_cE32E1A
	cmp/eq 0x10,r0
	bt loc_cE32E20
	bra loc_cE32E28
	nop

loc_cE32E14:
	mov 0x05,r6 ; r6 set to 0x05
	bra loc_cE32E24
	mov 0x12,r5

loc_cE32E1A:
	mov 0x05,r6 ; r6 set to 0x05
	bra loc_cE32E24
	mov 0x11,r5

loc_cE32E20:
	mov 0x10,r5
	mov 0x05,r6

loc_cE32E24:
	jsr @r13
	mov r14,r4

loc_cE32E28:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_cE32E32:
	mov.w @(loc_cE32F06,pc),r0 ; r0 set to 0x3F8
	mov 0x02,r3 ; r3 set to 0x02
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov 0x05,r2 ; r2 set to 0x05
	mov.w @(loc_cE32F08,pc),r0 ; r0 set to 0x328
	mov.l @(loc_cE32F20,pc),r3 ; r3 set to 0x8C034DEE
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_cE32E9C
	mov.w @(loc_cE32F0A,pc),r0 ; r0 set to 0x3F9
	mov 0x00,r4 ; r4 set to 0x00
	mov.b r4,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x3F8
	mov.b r4,@(r0,r14)
	mov.w @(loc_cE32F0C,pc),r0 ; r0 set to 0x327
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x328
	mov.b r4,@(r0,r14)
	mov.w @(loc_cE32F0E,pc),r0 ; r0 set to 0x141
	mov.b r4,@(r0,r14)
	mov.b @(0x06,r14),r0
	add 0x01,r0 ; r0 set to 0x142
	mov.b r0,@(0x06,r14)
	mov.w @(loc_cE32F10,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt loc_cE32E7A
	mova @(loc_cE32F24,pc),r0; r0 set to 0xCE32F24
	bra loc_cE32E7E
	fmov.s @r0,fr3

loc_cE32E7A:
	mova @(0xac,pc),r0
	fmov @r0,fr3

loc_cE32E7E:
	mov.l @(0xac,pc),r3
	mov 0x5C,r0
	mov 0x16,r5
	fmov fr3,@(r0,r14
	mov 0x0A,r6
	jsr @r3
	mov r14,r4
	mov.l @(0x14,r14),r4
	mov.w @(0x1c,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1c,r4)
	mov.w @(0x7a,pc),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)

loc_cE32E9C:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE32EA2:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x5C,r1
	mov.l @(0x74,pc),r3
	add r14,r1
	mov 0x34,r0
	sts.l pr,@-r15
	fmov @r1, fr3
	mov 0x68,r1
	fmov @(r0,r14), fr2
	add r14,r1
	fadd fr3, fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14), fr2
	fmov @r1, fr3
	fadd fr3, fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce32f00
	mov.b @(0x6,r14),r0
	mov 0x16,r5
	mov.l @(0x54,pc),r3
	mov 0x0B,r6
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(0x32,pc),r0
	fmov @(r0,r14), fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0x44,pc),r2
	jsr @r2
	mov r14,r4
	mov 0x5C,r0
	fldi0 fr4
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)

loc_cE32F00:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE32F06:
	#data 0x03F8
loc_cE32F08:
	#data 0x0328
loc_cE32F0A:
	#data 0x03F9
loc_cE32F0C:
	#data 0x0327
loc_cE32F0E:
	#data 0x0141
loc_cE32F10:
	#data 0x0130
loc_cE32F12:
	#data 0x041C
	#align4

loc_cE32F14:
	#data 0x41555555
loc_cE32F18:
	#data 0x43092492
loc_cE32F1C:
	#data loc_8c0D0584
loc_cE32F20:
	#data loc_8c034DEE
loc_cE32F24:
	#data 0xC1009249
loc_cE32F28:
	#data 0x41009249
loc_cE32F2c:
	#data loc_8c034E8C
loc_cE32F30:
	#data loc_8c0511B4

;==============================================
loc_cE32F34:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE33058,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_cE32F7E
	mov.b @(0x06,r14),r0
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mova @(loc_cE3305C,pc),r0; r0 set to 0xCE3305C
	fmov.s @r0,fr3 ; r3 ??
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr3,@(r0,r14)
	mova @(loc_cE33060,pc),r0; r0 set to 0xCE33060
	fmov.s @r0,fr3
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_cE3304E,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_cE32F68
	mova @(loc_cE33064,pc),r0; r0 set to 0xCE33064
	bra loc_cE32F6C
	fmov.s @r0,fr3

loc_cE32F68:
	mova @(loc_cE33068,pc),r0; r0 init to 0xCE33068
	fmov.s @r0,fr3

loc_cE32F6C:
	mov.l @(loc_cE3306C,pc),r3 ; r3 set to 0x8C034E8C,r3 set to 0x8C034E8C
	mov 0x5C,r0 ; r0 set to 0x5C,r0 set to 0x5C
	mov r14,r4
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	mov 0x02,r6 ; r6 set to 0x02,r6 set to 0x02
	mov 0x01,r5 ; r5 set to 0x01,r5 set to 0x01
	jmp @r3
	mov.l @r15+,r14

loc_cE32F7E:
	mov.w @(loc_cE33050,pc),r0 ; r0 set to 0x141
	lds.l @r15+,pr
	mov.b @(r0,r14),r2
	tst r2,r2
	rts
	mov.l @r15+,r14

;==============================================
loc_cE32F8A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE33058,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	mov 0x5C,r1 ; r1 set to 0x5C
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6C
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_cE33052,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_cE33020
	mov.b @(0x06,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0 ; r0 set to 0x39
	mov.b r0,@(0x06,r14)
	mov.w @(loc_cE33052,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_cE33054,pc),r0 ; r0 set to 0x1F9
	mov.b r3,@(r0,r14)
	mov.l @(loc_cE33070,pc),r3 ; r3 set to 0x8C0511B4
	jsr @r3
	mov r14,r4
	mov 0x5C,r0 ; r0 set to 0x5C
	fldi0 fr4
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	mov.l @(loc_cE3306C,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x16,r5 ; r5 set to 0x16
	fmov.s fr4,@(r0,r14)
	mov 0x06,r6 ; r6 set to 0x06
	jsr @r3
	mov r14,r4
	mov 0x00,r6 ; r6 set to 0x00
	mov.l @(loc_cE33074,pc),r3 ; r3 set to 0x8C02FEC4
	mov 0x14,r0 ; r0 set to 0x14
	mov r14,r4
	mov.w r0,@(0x1C,r14)
	mov r6,r5 ; r5 set to 0x00
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_cE33020:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE33026:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE33058,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_cE33048
	mov.l @(loc_cE33078,pc),r3 ; r3 set to 0x8C035162
	mov 0x00,r5 ; r5 set to 0x00
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_cE3307C,pc),r2 ; r2 set to 0x8C051648
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_cE33048:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE3304E:
	#data 0x0130
loc_cE33050:
	#data 0x0141
loc_cE33052:
	#data 0x041C
loc_cE33054:
	#data 0x01F9
	#align4

loc_cE33058:
	#data loc_8c034DEE
loc_cE3305C:
	#data 0x4122DB6D
loc_cE33060:
	#data 0xBEE76DB6
loc_cE33064:
	#data 0xC0855555
loc_cE33068:
	#data 0x40855555
loc_cE3306C:
	#data loc_8c034E8C
loc_cE33070:
	#data loc_8c0511B4
loc_cE33074:
	#data loc_8c02FEC4
loc_cE33078:
	#data loc_8c035162
loc_cE3307C:
	#data loc_8c051648

;==============================================
loc_cE33080:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x16,r5
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	mov 0x07,r6
	mov.l @(0xe0,pc),r3
	add 0x01,r0
	mov.l @(0x14,r14),r13
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov r14,r4
	mova @(0xd8,pc),r0
	fmov @r0, fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0xd4,pc),r0
	fmov @r0, fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mova @(0xd0,pc),r0
	fmov @r0, fr4
	mov.w @(0xba,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_ce330ba
	mova @(0xc8,pc),r0
	fmov @r0, fr4

loc_cE330BA:
	mova @(0xc8,pc),r0
	mov.l @(0xc8,pc),r2
	fmov @r0, fr5
	mov 0x34,r0
	fmov @(r0,r13), fr3
	mov 0x38,r1
	fmov @(r0,r14), fr2
	mov 0x5C,r0
	fadd fr4, fr3
	add r14,r1
	lds r2, fpul
	fsub fr2, fr3
	fdiv fr5, fr3
	fmov fr3,@(r0,r14)
	mov 0x60,r0
	fmov @r1, fr3
	mov 0x38,r1
	add r13,r1
	fmov @(r0,r14), fr1
	fmov @r1, fr2
	fsub fr3, fr2
	fsts fpul, fr3
	fadd fr3, fr2
	fdiv fr5, fr2
	fadd fr2, fr1
	fmov fr1,@(r0,r14)
	mov 0x2E,r0
	mov.w r0,@(0x1c,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_cE330FA:
	mov.l @(0x90,pc),r2
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.w @(0x64,pc),r13
	mov.b @r3,r1
	mov 0x05,r3
	extu.b r1,r1
	cmp/ge r3,r1
	bf.s loc_ce33122
	add r14,r13
	mov.l @(0x78,pc),r1
	jsr @r1
	nop
	tst r0,r0
	bf loc_ce33122
	mov 0x00,r0
	mov.w r0,@(0xa,r13)

loc_cE33122:
	mov.w @(0xa,r13),r0
	add 0xFF,r0
	mov.w r0,@(0xa,r13)
	exts.w r0,r0
	cmp/pl r0
	bt loc_ce3313e
	mov.b @(0x6,r14),r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bt loc_ce3313e
	mov 0x04,r0
	mov.b r0,@(0x6,r14)
	mov 0x00,r0
	mov.b r0,@(0x7,r14)

loc_cE3313E:
	mov.b @(0x6,r14),r0
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x4c,pc),r1
	extu.b r0,r0
	mov.w @(0x22,pc),r5
	shll2 r0
	mov.l @r15+,r13
	mov.l @(r0,r1),r3
	add r14,r5
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_cE33156:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x07,r14),r0
	mov.l @(loc_cE33198_to_loc_cE3640C_to_loc_cE3319C,pc),r1 ; r1 set to 0xCE3640C
	extu.b r0,r0
	mov.w @(loc_cE3316E,pc),r5 ; r5 set to 0x2A4
	shll2 r0
	mov.l @(r0,r1),r3
	add r14,r5 ; r5 ??? bc r14 is ???
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce3316c:
	#data 0x0130
loc_cE3316E:
	#data 0x02A4
	#align4

loc_ce33170:
#data loc_8c034E8C
loc_ce33174:
	#data 0x41A2DB6D
loc_ce33178:
	#data 0xBF676DB6
loc_ce3317c:
	#data 0x42555555
loc_ce33180:
	#data 0xC2555555
loc_ce33184:
	#data 0x42380000
loc_ce33188:
	#data 0x435EDB6D
loc_ce3318c:
	#data loc_8c2896B0
loc_ce33190:
	#data loc_8c0310F2
loc_cE33194_to_loc_cE363F8_to_loc_cE33156:
	#data loc_cE363F8_to_loc_cE33156
loc_cE33198_to_loc_cE3640C_to_loc_cE3319C:
	#data loc_cE3640C_to_loc_cE3319C

;==============================================
loc_cE3319C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.w @(0xd4,pc),r0
	mov r4,r14
	mov.l r5,@r15
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf.s loc_ce331c0
	mov 0x06,r6
	mov.w @(0xc8,pc),r0
	mov 0x10,r3
	mov.w @(0xc2,pc),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.b r3,@(r0,r14)

loc_cE331C0:
	mov.l @(0xc8,pc),r3
	mov 0x0D,r5
	jsr @r3
	mov r14,r4
	mov.b @(0x7,r14),r0
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mov.w @(0xb0,pc),r0
	mov.l @r15,r3
	mov.w r0,@(0xa,r3)
	mov.l @(0xb8,pc),r3
	jsr @r3
	mov r14,r4
	mov.w @(0xa6,pc),r0
	mov 0x42,r3
	mov 0x00,r13
	fmov @(r0,r14), fr3
	mov 0x38,r0
	mov 0x16,r5
	fmov fr3,@(r0,r14)
	mov 0x36,r6
	mov.w @(0x98,pc),r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l @(0x98,pc),r3
	mov.l r13,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(0x88,pc),r2
	jsr @r2
	mov r14,r4
	mov.l @r15,r3
	mov 0x0F,r0
	mov.w r0,@(0x8,r3)
	mov.l @(0x80,pc),r3
	jsr @r3
	mov r14,r4
	mov.l @(0x80,pc),r2
	mov 0x14,r5
	jsr @r2
	mov r14,r4
	mov.w @(0x56,pc),r0
	mov r15,r5
	fldi0 fr3
	add 0x04,r5
	mov.b r13,@(r0,r14)
	add 0x01,r0
	mov.b r13,@(r0,r14)
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	mova @(0x68,pc),r0
	fmov @r0, fr3
	mov 0x08,r0
	fmov @(r0,r15), fr2
	mov 0x08,r0
	mov.l @(0x64,pc),r3
	mov 0x01,r6
	fadd fr3, fr2
	fmov fr2,@(r0,r15)
	jsr @r3
	mov r14,r4
	add 0x10,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_cE33258:
	mov.w @(loc_cE33288,pc),r0 ; r0 set to 0x3F8
	mov 0x02,r3 ; r3 set to 0x02
	mov.l r14,@-r15
	mov r4,r14
	mov 0x05,r2 ; r2 set to 0x05
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.w @(loc_cE3328A,pc),r0 ; r0 set to 0x328
	mov.b r2,@(r0,r14)
	mov.w @(loc_cE3327C,pc),r0 ; r0 set to 0x255
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf/s loc_cE332AC
	mov r5,r13
	bra loc_cE332AE
	mov 0x02,r3

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_cE3327C:
	#data 0x0255
loc_cE3327e:
	#data 0x00FF
loc_cE33280:
	#data 0x03F0
loc_cE33282:
	#data 0x00F0
loc_cE33284:
	#data 0x041C
loc_cE33286:
	#data 0x01A1
loc_cE33288:
	#data 0x03F8
loc_cE3328A:
	#data 0x0328
	#align4

loc_cE3328c:
	#data loc_8c02FEC4
loc_cE33290:
	#data loc_8c05218A
loc_cE33294:
	#data loc_8c2896B0
loc_cE33298:
	#data loc_8c034E8C
loc_cE3329c:
	#data loc_8c05115A
loc_cE332a0:
	#data loc_8c042008
loc_cE332a4:
	#data 0x43092492
loc_cE332a8:
	#data loc_8c050834

;==============================================
loc_cE332AC:
	mov 0x00,r3

loc_cE332AE:
	mov.w @(0xe8,pc),r0
	mov.b r3,@(r0,r14)
	mov.l @(0xf4,pc),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce33358
	mov.b @(0x7,r14),r0
	mov 0x16,r5
	mov.l @(0xec,pc),r3
	mov 0x3F,r6
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mova @(0xe0,pc),r0
	fmov @r0, fr4
	mov 0x0C,r0
	fmov fr4,@(r0,r13)
	mov 0x14,r0
	fmov fr4,@(r0,r13)
	mov 0x0C,r0
	fmov @(r0,r13), fr3
	mov 0x50,r0
	fmov fr3,@(r0,r14)
	mov 0x14,r0
	fmov @(r0,r13), fr3
	mov 0x54,r0
	fmov fr3,@(r0,r14)
	mov.w @(0xb2,pc),r0
	fmov @(r0,r14), fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0xc0,pc),r3
	mov 0x01,r1
	mov.b @(0x2,r14),r0
	mov.b @r3,r2
	extu.b r0,r0
	shad r0,r1
	extu.b r2,r2
	tst r1,r2
	bf loc_ce3330e
	mov.l @(0xb0,pc),r2
	mov 0x00,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4

loc_cE3330E:
	mov 0x25,r0
	mov.l @(0xa8,pc),r3
	mov.b @(r0,r14),r6
	mov 0x01,r7
	mov 0x00,r5
	extu.b r6,r6
	add 0x06,r6;set1
	jsr @r3
	mov r14,r4

;Palette
	mov.l @(0x98,pc),r2
	mov 0x02,r7
	mov r7,r5
	mov 0x0C,r6
	jsr @r2
	mov r14,r4

	mov.l @(0x90,pc),r3
	mov 0x22,r5
	jsr @r3
	mov r14,r4
	mov.l @(0x8c,pc),r2
	mov 0x35,r5
	jsr @r2
	mov r14,r4
	mov.w @(0x5e,pc),r0
	mov 0x02,r1
	mov.w @(0x5c,pc),r3
	mov r14,r4
	mov.b @(r0,r14),r2
	or r3,r2
	mov.b r2,@(r0,r14)
	add 0xE9,r0
	mov.l @(0x78,pc),r2
	mov.b r1,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_cE33358:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_cE33360:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x05,r3 ; r3 set to 0x05
	mov.l r12,@-r15
	mov.w @(loc_cE333A2,pc),r0 ; r0 set to 0x3F8
	mov.l r11,@-r15
	mov 0x02,r11 ; r11 set to 0x02
	sts.l pr,@-r15
	mov.b r11,@(r0,r14)

;Transform
	mov.w @(loc_cE333A4,pc),r0 ; r0 set to 0x328
	mov.l @(loc_cE333BC,pc),r12 ; PalFunChange2
	mov.b r3,@(r0,r14)
	mov.l @(loc_cE333CC,pc),r3 ; r3 set to 0x8C26823C
	mov.l @r3,r0 ; r0 ??
	mov.l @(0x1C,r0),r0
	tst 0x01,r0
	bf/s loc_cE333D0
	mov r5,r13
	mov 0x25,r0 ; r0 set to 0x25
	mov.b @(r0,r14),r6
	mov 0x00,r5 ; r5 set to 0x00
	mov 0x01,r7 ; r7 set to 0x01
	extu.b r6,r6
	add 0x06,r6;palette extras add
	jsr @r12;PalFunChange2
	mov r14,r4

	bra loc_cE333D8
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE3339a:
	#data 0x03F1
loc_cE3339c:
	#data 0x041C
loc_cE3339e:
	#data 0x0202
loc_cE333a0:
	#data 0x0080
loc_cE333A2:
	#data 0x03F8
loc_cE333A4:
	#data 0x0328
	#align4

loc_cE333a8:
	#data loc_8c034DEE
loc_cE333ac:
	#data 0x3F000000
loc_cE333B0:
	#data loc_8c034E8C
loc_cE333B4:
	#data loc_8c289628
loc_cE333B8:
	#data loc_8c0D13BC
loc_cE333Bc:
	#data loc_8c03544c
loc_cE333c0:
	#data loc_8c042008
loc_cE333c4:
	#data loc_8c04223A
loc_cE333c8:
	#data loc_8c05A2CC
loc_cE333CC:
	#data loc_8c26823C

;==============================================
loc_cE333D0:
	mov.l @(loc_cE33530,pc),r2
	mov 0x08,r5;Transform
	jsr @r2
	mov r14,r4

loc_cE333D8:
	mov.l @(loc_CE33534,pc),r3
	mov.l @r3,r0
	mov.l @(0x1c,r0),r0
	tst 0x07,r0
	bf loc_ce333ee
	mov.l @(0x154,pc),r4
	mov r11,r0
	nop
	mov.b r0,@(0x5,r4)
	mov 0x01,r0
	mov.b r0,@(0x6,r4)

loc_cE333EE:
	mova @(0x14c,pc),r0
	fmov @r0, fr4
	mov 0x0C,r0
	fmov @(r0,r13), fr3
	fadd fr4, fr3
	fmov fr3,@(r0,r13)
	mov 0x14,r0
	fmov @(r0,r13), fr2
	fadd fr4, fr2
	fldi1 fr4
	fmov fr2,@(r0,r13)
	mov 0x0C,r0
	fmov @(r0,r13), fr3
	mov 0x50,r0
	fmov fr3,@(r0,r14)
	mov 0x14,r0
	fmov @(r0,r13), fr3
	mov 0x54,r0
	fmov fr3,@(r0,r14)
	mov 0x14,r0
	fmov @(r0,r13), fr3
	fcmp/gt fr4, fr3
	bf loc_ce3346c
	mov 0x0C,r0
	fmov fr4, fr3
	fmov fr4,@(r0,r13)
	mov 0x50,r0
	fmov fr3,@(r0,r14)
	mov 0x14,r0
	fmov @(r0,r13), fr3
	mov 0x54,r0
	mov.l @(0x110,pc),r3
	mov 0x16,r5
	fmov fr3,@(r0,r14)
	mov 0x37,r6
	mov.b @(0x7,r14),r0
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mov 0x1E,r0
	mov.w r0,@(0x8,r13)
	jsr @r3
	mov r14,r4

;ce33442
;Revert White Flash 
	mov.l @(loc_CE33530,pc),r2;PalChangeFun1
	mov 0x00,r5
	jsr @r2
	mov r14,r4

	mov 0x25,r0
	mov.b @(r0,r14),r6
	mov 0x00,r5
	mov 0x01,r7
	extu.b r6,r6
	add 0x06,r6; Finished Transform
	jsr @r12
	mov r14,r4

	mov 0x02,r7
	mov r7,r5
	mov 0x0C,r6;0x16 blue line and fire palette
	jsr @r12
	mov r14,r4

	mov.l @(loc_cE33544,pc),r3
	mov 0x25,r5
	jsr @r3
	mov r14,r4

loc_cE3346C:
	mov.w @(0xb4,pc),r0
	mov r14,r4
	mov.w @(0xb2,pc),r3
	mov.b @(r0,r14),r2
	or r3,r2
	mov.b r2,@(r0,r14)
	add 0xE9,r0
	mov.b r11,@(r0,r14)
	lds.l @r15+,pr
	mov.l @(0xc8,pc),r2
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_cE3348A:
	mov.w @(0x9a,pc),r0
	mov 0x02,r3
	mov.l r14,@-r15
	mov r4,r14
	mov 0x05,r2
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.w @(0x8a,pc),r0
	mov.b r2,@(r0,r14)
	mov.w @(0x8,r13),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r13)
	exts.w r0,r0
	cmp/pl r0
	bt loc_ce334ca
	mov.b @(0x6,r14),r0
	mov r13,r5
	mov.l @(0x98,pc),r3
	add 0x0A,r5
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x00,r0
	mov.b r0,@(0x7,r14)
	mov 0x06,r6
	mov.w @(0x6a,pc),r0
	mov.w r0,@(0xa,r13)
	jsr @r3
	mov r14,r4
	bsr loc_ce33ef6
	mov r14,r4

loc_cE334CA:
	mov.w @(0x56,pc),r0
	mov 0x02,r1
	mov.w @(0x54,pc),r3
	mov r14,r4
	mov.b @(r0,r14),r2
	or r3,r2
	mov.b r2,@(r0,r14)
	add 0xE9,r0
	mov.l @(0x6c,pc),r2
	mov.b r1,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_cE334E6:
	mov.w @(loc_cE33528,pc),r0 ; r0 set to 0x3F8
	mov 0x02,r3 ; r3 set to 0x02
	mov.l r14,@-r15
	mov r4,r14
	mov 0x05,r2 ; r2 set to 0x05
	mov.l @(loc_cE33550_to_loc_cE3641C_to_loc_cE33554,pc),r1 ; r1 set to 0xCE3641C
	mov.w @(loc_cE3352E,pc),r5 ; r5 set to 0x2A4
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	add r14,r5 ; r5 ??? bc r14 is ???
	mov.w @(loc_cE3352A,pc),r0 ; r0 set to 0x328
	mov.b r2,@(r0,r14)
	mov.b @(0x07,r14),r0
	extu.b r0,r0 ; r0 set to 0x28
	shll2 r0 ; r0 set to 0xA0
	mov.l @(r0,r1),r3 ; r3 ??
	jsr @r3
	mov r14,r4
	mov.w @(loc_cE33524,pc),r0 ; r0 set to 0x202
	mov 0x02,r1 ; r1 set to 0x02
	mov.w @(loc_cE33526,pc),r3 ; r3 set to 0x80
	mov r14,r4
	mov.b @(r0,r14),r2 ; r2 ??? bc r14 is ???
	or r3,r2
	mov.b r2,@(r0,r14)
	add 0xE9,r0 ; r0 set to 0x1EB
	mov.l @(loc_cE33548,pc),r2 ; r2 set to 0x8C05A2CC
	mov.b r1,@(r0,r14)
	lds.l @r15+,pr
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE33524:
	#data 0x0202
loc_cE33526:
	#data 0x0080
loc_cE33528:
	#data 0x03F8
loc_cE3352A:
	#data 0x0328
loc_cE3352c:
	#data 0x00F0
loc_cE3352E:
	#data 0x02A4
	#align4

loc_cE33530:
	#data loc_8c035162
loc_cE33534:
	#data loc_8c26823C
loc_cE33538:
	#data loc_8c26A518
loc_cE3353c:
	#data 0x3CA3D70A
loc_cE33540:
	#data loc_8c034E8C
loc_cE33544:
	#data loc_8c042008
loc_cE33548:
	#data loc_8c05A2CC
loc_cE3354c:
	#data loc_8c0F047C
loc_cE33550_to_loc_cE3641C_to_loc_cE33554:
	#data loc_cE3641C_to_loc_cE33554

;==============================================
loc_cE33554:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_cE33D0A
	mov r4,r14
	extu.b r0,r0
	tst r0,r0
	bf loc_cE33582
	mov 0x00,r5 ; r5 set to 0x00
	bsr loc_cE33E30
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_cE33582
	bsr loc_cE33F24
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_cE33582
	lds.l @r15+,pr
	mov.l @(loc_cE33648,pc),r3 ; r3 set to 0x8C034DEE
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_cE33582:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE33588:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_ce33d0a
	mov r4,r14
	extu.b r0,r0
	tst r0,r0
	bf loc_ce335fc
	bsr loc_ce33f24
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_ce335fc
	mov 0x00,r5
	bsr loc_ce33ed2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_ce335b0
	bsr loc_ce33ef6
	mov r14,r4

loc_cE335B0:
	mov.l @(0x94,pc),r2
	jsr @r2
	mov r14,r4
	mov.w @(0x8c,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_ce335dc
	mov 0x5C,r1
	add r14,r1
	mov 0x34,r0
	fmov @r1, fr3
	fmov @(r0,r14), fr2
	mov 0x68,r1
	add r14,r1
	fadd fr3, fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14), fr2
	fmov @r1, fr3
	fadd fr3, fr2
	bra loc_ce335fc
	fmov fr2,@(r0,r14)

loc_cE335DC:
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_ce335fc
	mov.w @(0x60,pc),r0
	mov 0x02,r2
	mov.l @(0x64,pc),r5
	mov r14,r4
	mov.b r2,@(r0,r14)
	mov 0x01,r0
	mov.l @(0x60,pc),r3
	mov.b r0,@(0x5,r5)
	mov.b r0,@(0x6,r5)
	mov 0x35,r5
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_cE335FC:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE33602:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE33648,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_cE33620
	bsr loc_cE33EF6
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_cE33654,pc),r2 ; r2 set to 0x8C05218A
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_cE33620:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE33626:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE33648,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_cE33658
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r8
	mov.l @r15+,r13
	bra loc_cE33EF6
	mov.l @r15+,r14


;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_cE33646:
	#data 0x0141
	#align4

loc_cE33648:
	#data loc_8c034DEE
loc_cE3364c:
	#data loc_8c26A518
loc_cE33650:
	#data loc_8c04223A
loc_cE33654:
	#data loc_8c05218A

;----------------------------------------------
loc_cE33658:
	mov.w @(loc_cE33766,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	cmp/eq 0x01,r0
	bf/s loc_cE33684
	mov 0x00,r4 ; r4 set to 0x00
	mov.w @(loc_cE33766,pc),r0 ; r0 set to 0x141
	mov 0x16,r5 ; r5 set to 0x16
	mov.l @(loc_cE33770,pc),r13 ; r13 set to 0x8C0D0584
	mov 0x0D,r6 ; r6 set to 0x0D
	mov.b r4,@(r0,r14)
	jsr @r13
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov 0x17,r5 ; r5 set to 0x17
	mov 0x0D,r6 ; r6 set to 0x0D
	jsr @r13
	mov r14,r4
	mov 0x18,r5 ; r5 set to 0x18
	mov 0x0D,r6 ; r6 set to 0x0D
	jsr @r13
	mov r14,r4
	bra loc_cE336B0
	nop

loc_cE33684:
	mov.w @(loc_cE33766,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	cmp/eq 0x02,r0
	bf loc_cE336B0
	mov.w @(loc_cE33766,pc),r0 ; r0 set to 0x141
	mov 0x34,r8 ; r8 set to 0x34
	mov.b r4,@(r0,r14)
	add 0xEF,r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_cE336A4
	add r14,r8 ; r8 ??? bc r14 is ???
	mov.l @(loc_cE33774,pc),r1 ; r1 set to 0x41D55555
	lds r1,fpul
	bra loc_cE336AA
	fsts fpul,fr3

loc_cE336A4:
	mov.l @(0xd0,pc),r2
	lds r2, fpul
	fsts fpul, fr3

loc_cE336AA:
	fmov @r8, fr2
	fadd fr3, fr2
	fmov fr2,@r8

loc_cE336B0:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_cE336BA:
	mov.l r14,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE3377C,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_cE336D6
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r8
	bra loc_cE33EF6
	mov.l @r15+,r14

loc_cE336D6:
	mov.w @(loc_cE33766,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	cmp/eq 0x01,r0
	bf/s loc_cE336FE
	mov 0x00,r4 ; r4 set to 0x00
	mov.w @(loc_cE33766,pc),r0 ; r0 set to 0x141
	mov 0x20,r5 ; r5 set to 0x20
	mov.l @(loc_cE33770,pc),r3 ; r3 set to 0x8C0D0584
	mov 0x0D,r6 ; r6 set to 0x0D
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	mov.l @(loc_cE33770,pc),r2 ; r2 set to 0x8C0D0584
	mov 0x0D,r6 ; r6 set to 0x0D
	mov 0x21,r5 ; r5 set to 0x21
	mov r14,r4
	mov.l @r15+,r8
	jmp @r2
	mov.l @r15+,r14

loc_cE336FE:
	mov.w @(loc_cE33766,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	cmp/eq 0x02,r0
	bf loc_cE3372A
	mov.w @(loc_cE33766,pc),r0 ; r0 set to 0x141
	mov 0x34,r8 ; r8 set to 0x34
	mov.b r4,@(r0,r14)
	add 0xEF,r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_cE3371E
	add r14,r8 ; r8 ??? bc r14 is ???
	mov.l @(loc_cE33780,pc),r1 ; r1 set to 0xC2855555
	lds r1,fpul
	bra loc_cE33724
	fsts fpul,fr3

loc_cE3371E:
	mov.l @(0x64,pc),r2
	lds r2, fpul
	fsts fpul, fr3

loc_cE33724:
	fmov @r8, fr2
	fadd fr3, fr2
	fmov fr2,@r8

loc_cE3372A:
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

;==============================================
loc_cE33732:
	mov.w @(loc_cE33768,pc),r0 ; r0 set to 0x3F8
	mov 0x02,r3 ; r3 set to 0x02
	mov.l r14,@-r15
	mov r4,r14
	mov 0x05,r2 ; r2 set to 0x05
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.w @(loc_cE3376A,pc),r0 ; r0 set to 0x328
	mov.l @(loc_cE33788,pc),r13 ; r13 set to 0x8C03544C
	mov.b r2,@(r0,r14)
	mov.w @(loc_cE3376C,pc),r0 ; r0 set to 0x4DC
	mov.w @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.w r0,r0
	tst 0x60,r0
	bt loc_cE3378C
	mov.w @(0x1E,r14),r0
	mov.w @(loc_cE3376E,pc),r3 ; r3 set to 0x96
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	add 0xFF,r0
	exts.w r0,r0
	cmp/gt r3,r0
	bt loc_cE3379C
	bra loc_cE337BE
	nop

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_cE33766:
	#data 0x0141
loc_cE33768:
	#data 0x03F8
loc_cE3376A:
	#data 0x0328
loc_cE3376C:
	#data 0x04DC
loc_cE3376E:
	#data 0x0096
	#align4

loc_cE33770:
	#data loc_8c0D0584
loc_cE33774:
	#data 0x41D55555
loc_cE33778:
	#data 0xC1D55555
loc_cE3377C:
	#data loc_8c034DEE
loc_cE33780:
	#data 0xC2855555
loc_cE33784:
	#data 0x42855555
loc_cE33788:
	#data loc_8c03544c

;----------------------------------------------
loc_cE3378C:
	mov.w @(0x1E,r14),r0
	mov 0x3C,r3 ; r3 set to 0x3C
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	add 0xFF,r0
	exts.w r0,r0
	cmp/gt r3,r0
	bf loc_cE337BE

loc_cE3379C:
	mov 0x0A,r0 ; r0 set to 0x0A,r0 set to 0x0A
	mov.w r0,@(0x1E,r14)
	mov 0x00,r5 ; r5 set to 0x00,r5 set to 0x00
	mov.b @(0x06,r14),r0
	mov 0x01,r7 ; r7 set to 0x01,r7 set to 0x01
	add 0x01,r0 ; r0 set to 0x0B,r0 set to 0x0B
	mov.b r0,@(0x06,r14)
	mov 0x00,r0 ; r0 set to 0x00,r0 set to 0x00
	mov.b r0,@(0x07,r14)
	mov 0x25,r0 ; r0 set to 0x25,r0 set to 0x25
	mov.b @(r0,r14),r6
	extu.b r6,r6
	add 0x06,r6;Set 1
	jsr @r13
	mov r14,r4

	bra loc_cE33832
	nop


loc_cE337BE:
	mov.b @(0x07,r14),r0
	mov.l @(loc_cE338C0_to_loc_cE36430_to_loc_cE3383A,pc),r1 ; r1 set to 0xCE36430
	extu.b r0,r0
	mov.w @(loc_cE338B0,pc),r5 ; r5 set to 0x2A4
	shll2 r0
	mov.l @(r0,r1),r3
	add r14,r5 ; r5 ??? bc r14 is ???
	jsr @r3
	mov r14,r4
	mov.w @(loc_cE338B2,pc),r0 ; r0 set to 0x202
	mov 0x02,r1 ; r1 set to 0x02
	mov.w @(loc_cE338B4,pc),r3 ; r3 set to 0x80
	mov.b @(r0,r14),r2
	or r3,r2
	mov.b r2,@(r0,r14)
	add 0xE9,r0 ; r0 set to 0x1EB
	mov.l @(loc_cE338C4,pc),r2 ; r2 set to 0x8C05A2CC
	mov.b r1,@(r0,r14)
	jsr @r2
	mov r14,r4
	mov.l @(loc_cE338C8,pc),r3 ; r3 set to 0x8C26823C
	mov.l @r3,r0 ; r0 ??
	mov.l @(0x1C,r0),r0
	tst 0x01,r0
	bf/s loc_cE33800
	mov 0x00,r5 ; r5 set to 0x00
	mov 0x25,r0 ; r0 set to 0x25
	mov.b @(r0,r14),r6
	mov 0x01,r7 ; r7 set to 0x01
	extu.b r6,r6
	shll r6
	bra loc_cE3380C
	add 0x14,r6;Brighten

loc_cE33800:
	mov 0x25,r0 ; r0 set to 0x25
	mov.b @(r0,r14),r6
	mov 0x01,r7 ; r7 set to 0x01
	extu.b r6,r6
	shll r6
	add 0x15,r6;Darken

loc_cE3380C:
	jsr @r13
	mov r14,r4
	mov.l @(loc_cE338C8,pc),r3 ; r3 set to 0x8C26823C,r3 set to 0x8C26823C
	mov.l @r3,r0 ; r0 ??
	mov.l @(0x1C,r0),r0
	tst 0x03,r0
	bf loc_cE33832
	lds.l @r15+,pr
	mova @(loc_cE338CC,pc),r0; r0 set to 0xCE338CC,r0 set to 0xCE338CC
	mov.l @(loc_cE338D4,pc),r2 ; r2 set to 0x8C0FD75C,r2 set to 0x8C0FD75C
	fmov.s @r0,fr5
	mova @(loc_cE338D0,pc),r0; r0 set to 0xCE338D0,r0 set to 0xCE338D0
	mov.l @r15+,r13
	mov 0x00,r6 ; r6 set to 0x00,r6 set to 0x00
	fmov.s @r0,fr4
	mov r14,r4
	mov r6,r5 ; r5 set to 0x00,r5 set to 0x00
	jmp @r2
	mov.l @r15+,r14

loc_cE33832:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_cE3383A:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE338D8,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_cE33902
	mov.b @(0x07,r14),r0
	mov 0x02,r4 ; r4 set to 0x02
	mov.l @(loc_cE338DC,pc),r5 ; r5 set to 0x8C26A518
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov r4,r0 ; r0 set to 0x02
	nop
	mov.b r0,@(0x05,r5)
	mov 0x01,r0 ; r0 set to 0x01
	mov.b r0,@(0x06,r5)
	mov 0x45,r3 ; r3 set to 0x45
	mov.w @(loc_cE338B6,pc),r0 ; r0 set to 0x1A1
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @(loc_cE338E4,pc),r13 ; r13 set to 0x8C034E8C
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r5,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r5,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(loc_cE338E0,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r5,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(loc_cE338B8,pc),r0 ; r0 set to 0x340
	mov.w @(loc_cE338BA,pc),r1 ; r1 set to 0x3000
	mov.w @(r0,r14),r2
	extu.w r2,r2
	tst r1,r2
	bf loc_cE33898
	bra loc_cE338A6
	mov 0x29,r6

loc_cE33898:
	mov.w @(loc_cE338BC,pc),r3 ; r3 set to 0x2000
	tst r3,r2
	bt loc_cE338E8
	mov r4,r0
	nop
	mov 0x28,r6 ; r6 set to 0x28
	mov.b r0,@(0x07,r14)

loc_cE338A6:
	mov 0x16,r5 ; r5 set to 0x16,r5 set to 0x16
	jsr @r13
	mov r14,r4
	bra loc_cE338F4
	nop

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_cE338B0:
	#data 0x02A4
loc_cE338B2:
	#data 0x0202
loc_cE338B4:
	#data 0x0080
loc_cE338B6:
	#data 0x01A1
loc_cE338B8:
	#data 0x0340
loc_cE338BA:
	#data 0x3000
loc_cE338BC:
	#data 0x2000
	#align4

loc_cE338C0_to_loc_cE36430_to_loc_cE3383A:
	#data loc_cE36430_to_loc_cE3383A
loc_cE338C4:
	#data loc_8c05A2CC
loc_cE338C8:
	#data loc_8c26823C
loc_cE338CC:
	#data 0x3ECCCCCD
loc_cE338D0:
	#data 0x40733333
loc_cE338D4:
	#data loc_8c0FD75C
loc_cE338D8:
	#data loc_8c034DEE
loc_cE338DC:
	#data loc_8c26A518
loc_cE338E0:
	#data loc_8c2896B0
loc_cE338E4:
	#data loc_8c034E8C

;==============================================
loc_cE338E8:
	mov 0x03,r0 ; r0 set to 0x03
	mov 0x16,r5 ; r5 set to 0x16
	mov.b r0,@(0x07,r14)
	mov 0x2A,r6 ; r6 set to 0x2A
	jsr @r13
	mov r14,r4

loc_cE338F4:
	lds.l @r15+,pr
	mov.l @(loc_cE33A04,pc),r3 ; r3 set to 0x8C0805D8,r3 set to 0x8C0805D8
	mov r14,r4
	mov 0x00,r5 ; r5 set to 0x00,r5 set to 0x00
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_cE33902:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_cE3390A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE33A08,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_cE3394A
	mov.w @(loc_cE339FA,pc),r0 ; r0 set to 0x340
	mov.w @(loc_cE339FC,pc),r2 ; r2 set to 0x3000
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???
	extu.w r3,r3
	tst r2,r3
	bt loc_cE3394A
	mov.w @(r0,r14),r3
	mov.w @(loc_cE339FE,pc),r1 ; r1 set to 0x2000
	extu.w r3,r3
	tst r1,r3
	bt/s loc_cE3393A
	mov 0x16,r5 ; r5 set to 0x16
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x07,r14)
	bra loc_cE33940
	mov 0x28,r6

loc_cE3393A:
	mov 0x03,r0 ; r0 set to 0x03
	mov 0x2A,r6 ; r6 set to 0x2A
	mov.b r0,@(0x07,r14)

loc_cE33940:
	lds.l @r15+,pr
	mov.l @(loc_cE33A0C,pc),r3 ; r3 set to 0x8C034E8C,r3 set to 0x8C034E8C
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_cE3394A:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE33950:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xb0,pc),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce339a0
	mov.w @(0x96,pc),r0
	mov.w @(0x96,pc),r3
	mov.w @(r0,r14),r4
	extu.w r4,r4
	tst r4,r3
	bt loc_ce33972
	mov.w @(0x90,pc),r1
	tst r4,r1
	bt loc_ce33984

loc_cE33972:
	mov.l @(0x98,pc),r3
	mov 0x01,r0
	mov r14,r4
	mov.b r0,@(0x7,r14)
	lds.l @r15+,pr
	mov 0x29,r6
	mov 0x16,r5
	jmp @r3
	mov.l @r15+,r14

loc_cE33984:
	mov.w @(r0,r14),r2
	mov.w @(0x74,pc),r3
	extu.w r2,r2
	tst r3,r2
	bt loc_ce339a0
	mov.l @(0x7c,pc),r2
	mov 0x04,r0
	mov r14,r4
	mov.b r0,@(0x7,r14)
	lds.l @r15+,pr
	mov 0x26,r6
	mov 0x16,r5
	jmp @r2
	mov.l @r15+,r14

loc_cE339A0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE339A6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x5c,pc),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce339f4
	mov.w @(0x40,pc),r0
	mov.w @(0x40,pc),r3
	mov.w @(r0,r14),r4
	extu.w r4,r4
	tst r4,r3
	bt loc_ce339c8
	mov.w @(0x38,pc),r1
	tst r4,r1
	bt loc_ce339d6

loc_cE339C8:
	mov.l @(0x40,pc),r3
	mov 0x01,r0
	mov 0x16,r5
	mov.b r0,@(0x7,r14)
	mov 0x29,r6
	jsr @r3
	mov r14,r4

loc_cE339D6:
	mov.w @(0x20,pc),r0
	mov.w @(0x24,pc),r3
	mov.w @(r0,r14),r2
	extu.w r2,r2
	tst r3,r2
	bt loc_ce339f4
	mov.l @(0x28,pc),r2
	mov 0x05,r0
	mov r14,r4
	mov.b r0,@(0x7,r14)
	lds.l @r15+,pr
	mov 0x2C,r6
	mov 0x16,r5
	jmp @r2
	mov.l @r15+,r14

loc_cE339F4:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE339FA:
	#data 0x0340
loc_cE339FC:
	#data 0x3000
loc_cE339FE:
	#data 0x2000
loc_cE33A00:
	#data 0x1000
	#align4

loc_cE33A04:
	#data loc_8c0805D8
loc_cE33A08:
	#data loc_8c034DEE
loc_cE33A0C:
	#data loc_8c034E8C

;==============================================
loc_cE33A10:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE33B34,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_cE33A3E
	mov.w @(loc_cE33B22,pc),r0 ; r0 set to 0x340
	mov.w @(loc_cE33B24,pc),r2 ; r2 set to 0x2000
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???
	extu.w r3,r3
	tst r2,r3
	bf loc_cE33A3E
	mov.l @(loc_cE33B38,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x02,r0 ; r0 set to 0x02
	mov r14,r4
	mov.b r0,@(0x07,r14)
	lds.l @r15+,pr
	mov 0x27,r6 ; r6 set to 0x27
	mov 0x16,r5 ; r5 set to 0x16
	jmp @r3
	mov.l @r15+,r14

loc_cE33A3E:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE33A44:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE33B34,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_cE33A72
	mov.w @(loc_cE33B22,pc),r0 ; r0 set to 0x340
	mov.w @(loc_cE33B26,pc),r2 ; r2 set to 0x1000
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???
	extu.w r3,r3
	tst r2,r3
	bf loc_cE33A72
	mov.l @(loc_cE33B38,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x03,r0 ; r0 set to 0x03
	mov r14,r4
	mov.b r0,@(0x07,r14)
	lds.l @r15+,pr
	mov 0x2B,r6 ; r6 set to 0x2B
	mov 0x16,r5 ; r5 set to 0x16
	jmp @r3
	mov.l @r15+,r14

loc_cE33A72:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE33A78:
	mov.w @(loc_cE33B28,pc),r0 ; r0 set to 0x3F8
	mov 0x02,r3 ; r3 set to 0x02
	mov.l r14,@-r15
	mov r4,r14
	mov 0x05,r2 ; r2 set to 0x05
	mov.l @(loc_cE33B3C_to_loc_cE36448_to_loc_cE33AB6,pc),r1 ; r1 set to 0xCE36448
	mov.w @(loc_cE33B2C,pc),r5 ; r5 set to 0x2A4
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	add r14,r5 ; r5 ??? bc r14 is ???
	mov.w @(loc_cE33B2A,pc),r0 ; r0 set to 0x328
	mov.b r2,@(r0,r14)
	mov.b @(0x07,r14),r0
	extu.b r0,r0 ; r0 set to 0x28
	shll2 r0 ; r0 set to 0xA0
	mov.l @(r0,r1),r3 ; r3 ??
	jsr @r3
	mov r14,r4
	mov.w @(loc_cE33B2E,pc),r0 ; r0 set to 0x202
	mov 0x02,r1 ; r1 set to 0x02
	mov.w @(loc_cE33B30,pc),r3 ; r3 set to 0x80
	mov r14,r4
	mov.b @(r0,r14),r2 ; r2 ??? bc r14 is ???
	or r3,r2
	mov.b r2,@(r0,r14)
	add 0xE9,r0 ; r0 set to 0x1EB
	mov.l @(loc_cE33B40,pc),r2 ; r2 set to 0x8C05A2CC
	mov.b r1,@(r0,r14)
	lds.l @r15+,pr
	jmp @r2
	mov.l @r15+,r14

loc_cE33AB6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x78,pc),r3
	jsr @r3
	mov r4,r14
	mov.w @(0x1e,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1e,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_ce33ae6
	mov.b @(0x7,r14),r0
	mov 0x16,r5
	mov.l @(0x64,pc),r3
	mov 0x25,r6
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0x64,pc),r4
	mov 0x02,r0
	mov.b r0,@(0x5,r4)
	mov 0x01,r0
	mov.b r0,@(0x6,r4)

loc_cE33AE6:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14


;==============================================
loc_cE33AEC:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_cE33B34,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_cE33B04
	mov.l @r15,r4
	add 0x04,r15
	bra loc_cE33EF6
	lds.l @r15+,pr

loc_cE33B04:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_cE33B0C:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x07,r14),r0
	mov.l @(loc_cE33B48_to_loc_cE36450_to_loc_cE33B4C,pc),r1 ; r1 set to 0xCE36450
	extu.b r0,r0
	mov.w @(loc_cE33B2C,pc),r5 ; r5 set to 0x2A4
	shll2 r0
	mov.l @(r0,r1),r3
	add r14,r5 ; r5 ??? bc r14 is ???
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE33B22:
	#data 0x0340
loc_cE33B24:
	#data 0x2000
loc_cE33B26:
	#data 0x1000
loc_cE33B28:
	#data 0x03F8
loc_cE33B2A:
	#data 0x0328
loc_cE33B2C:
	#data 0x02A4
loc_cE33B2E:
	#data 0x0202
loc_cE33B30:
	#data 0x0080
	#align4

loc_cE33B34:
	#data loc_8c034DEE
loc_cE33B38:
	#data loc_8c034E8C
loc_cE33B3C_to_loc_cE36448_to_loc_cE33AB6:
	#data loc_cE36448_to_loc_cE33AB6
loc_cE33B40:
	#data loc_8c05A2CC
loc_cE33B44:
	#data loc_8c26A518
loc_cE33B48_to_loc_cE36450_to_loc_cE33B4C:
	#data loc_cE36450_to_loc_cE33B4C

;==============================================
loc_cE33B4C:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x7,r14),r0
	mov 0x43,r6
	mov.l @(0x140,pc),r3
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mova @(0x134,pc),r0
	fmov @r0, fr4
	mov 0x0C,r0
	fmov @(r0,r5), fr3
	fsub fr4, fr3
	fmov fr3,@(r0,r5)
	mov 0x14,r0
	fmov @(r0,r5), fr2
	fsub fr4, fr2
	fmov fr2,@(r0,r5)
	mov 0x0C,r0
	fmov @(r0,r5), fr3
	mov 0x50,r0
	fmov fr3,@(r0,r14)
	mov 0x14,r0
	fmov @(r0,r5), fr3
	mov 0x54,r0
	mov 0x16,r5
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0x114,pc),r3
	mov 0x01,r1
	mov.b @(0x2,r14),r0
	mov.b @r3,r2
	extu.b r0,r0
	shad r0,r1
	extu.b r2,r2
	tst r1,r2
	bf loc_ce33ba2
	mov.l @(0x104,pc),r2
	mov 0x01,r6
	mov r6,r5
	jsr @r2
	mov r14,r4

loc_cE33BA2:
	mov.l @(0x100,pc),r3
	mov 0x23,r5
	jsr @r3
	mov r14,r4
	mov.l @(0xfc,pc),r2
	mov 0x3A,r5
	jsr @r2
	mov r14,r4
	mov.w @(0xd0,pc),r0
	mov 0x02,r1
	mov.w @(0xce,pc),r3
	mov r14,r4
	mov.b @(r0,r14),r2
	or r3,r2
	mov.b r2,@(r0,r14)
	mov.w @(0xc6,pc),r0
	mov.l @(0xe8,pc),r2
	mov.b r1,@(r0,r14)
	lds.l @r15+,pr
	jmp @r2
	mov.l @r15+,r14

loc_cE33BCC:
	mova @(loc_cE33C94,pc),r0; r0 init to 0xCE33C94
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r5,r13
	mov r4,r14
	mov.l @(loc_cE33CB0,pc),r3 ; r3 set to 0x8C26823C
	sts.l pr,@-r15
	fmov.s @r0,fr4
	mov 0x0C,r0 ; r0 set to 0x0C
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???
	fsub fr4,fr3
	fmov.s fr3,@(r0,r13)
	mov 0x14,r0 ; r0 set to 0x14
	fmov.s @(r0,r13),fr2
	fsub fr4,fr2
	fmov.s fr2,@(r0,r13)
	mov 0x0C,r0 ; r0 set to 0x0C
	fmov.s @(r0,r13),fr3
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s fr3,@(r0,r14)
	mov 0x14,r0 ; r0 set to 0x14
	fmov.s @(r0,r13),fr3
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr3,@(r0,r14)
	mov.l @r3,r0 ; r0 ??? bc r3 is ???
	mov.l @(0x1C,r0),r0
	tst 0x01,r0
	bf loc_cE33C1A

	mov 0x25,r0 ; r0 set to 0x25
	mov.l @(loc_cE33cb4,pc),r2 ; r2 set to 0x8C03544C
	mov.b @(r0,r14),r6
	mov 0x01,r7 ; r7 set to 0x01
	mov 0x00,r5 ; r5 set to 0x00
	extu.b r6,r6
	add 0x06,r6;Set 1
	jsr @r2
	mov r14,r4

	bra loc_cE33C22
	nop

;Revert back to regular form palette code
loc_cE33C1A:
	mov.l @(loc_cE33CB8,pc),r2 ; r2 set to 0x8C035162
	mov 0x08,r5 ; r5 set to 0x08
	jsr @r2
	mov r14,r4

loc_cE33C22:
	mova @(loc_cE33CBC,pc),r0; r0 init to 0xCE33CBC,r0 init to 0xCE33CBC
	fmov.s @r0,fr3
	mov 0x54,r0 ; r0 set to 0x54,r0 set to 0x54
	fmov.s @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_cE33CC4
	mov 0x0C,r0 ; r0 set to 0x0C,r0 set to 0x0C
	fldi1 fr4
	fmov.s fr4,@(r0,r13)
	mov 0x14,r0 ; r0 set to 0x14,r0 set to 0x14
	fmov.s fr4,@(r0,r13)
	mov 0x0C,r0 ; r0 set to 0x0C,r0 set to 0x0C
	fmov.s @(r0,r13),fr2
	mov 0x50,r0 ; r0 set to 0x50,r0 set to 0x50
	mov.l @(loc_cE33CC0,pc),r3 ; r3 set to 0x8C05218A,r3 set to 0x8C05218A
	fmov.s fr2,@(r0,r14)
	mov 0x14,r0 ; r0 set to 0x14,r0 set to 0x14
	fmov.s @(r0,r13),fr2
	mov 0x54,r0 ; r0 set to 0x54,r0 set to 0x54
	fmov.s fr2,@(r0,r14)
	mov.b @(0x07,r14),r0
	add 0x01,r0 ; r0 set to 0x55,r0 set to 0x55
	mov.b r0,@(0x07,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_cE33C8C,pc),r0 ; r0 set to 0x41C,r0 set to 0x41C
	mov 0x00,r13 ; r13 set to 0x00,r13 set to 0x00
	mov.l @(loc_cE33CB8,pc),r3 ; r3 set to 0x8C035162,r3 set to 0x8C035162
	mov r13,r5 ; r5 set to 0x00,r5 set to 0x00
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???,r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38,r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_cE33C86,pc),r0 ; r0 set to 0x202,r0 set to 0x202
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_cE33C98,pc),r2 ; r2 set to 0x8C034E8C,r2 set to 0x8C034E8C
	mov 0x16,r5 ; r5 set to 0x16
	mov 0x3D,r6 ; r6 set to 0x3D
	jsr @r2
	mov r14,r4
	mov.w @(loc_cE33C8E,pc),r0 ; r0 set to 0x3F9,r0 set to 0x3F9
	mov.b r13,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x3F8,r0 set to 0x3F8
	mov.b r13,@(r0,r14)
	mov.w @(loc_cE33C90,pc),r0 ; r0 set to 0x327,r0 set to 0x327
	mov.b r13,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x328,r0 set to 0x328
	bra loc_cE33CE0
	mov.b r13,@(r0,r14)

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_cE33C86:
	#data 0x0202
loc_cE33C88:
	#data 0x0080
loc_cE33C8a:
	#data 0x01EB
loc_cE33C8C:
	#data 0x041C
loc_cE33C8E:
	#data 0x03F9
loc_cE33C90:
	#data 0x0327
	#align4

loc_cE33C94:
	#data 0x3CA3D70A
loc_cE33C98:
	#data loc_8c034E8C
loc_cE33C9c:
	#data loc_8c289628
loc_cE33Ca0:
	#data loc_8c0D13BC
loc_cE33Ca4:
	#data loc_8c042008
loc_cE33Ca8:
	#data loc_8c04223A
loc_cE33Cac:
	#data loc_8c05A2CC
loc_cE33CB0:
	#data loc_8c26823C
loc_cE33cb4:
	#data loc_8c03544c
loc_cE33CB8:
	#data loc_8c035162
loc_cE33CBC:
	#data 0x3F000000
loc_cE33CC0:
	#data loc_8c05218A

;----------------------------------------------
loc_cE33CC4:
	mov.w @(loc_cE33E02,pc),r0 ; r0 set to 0x202
	mov 0x02,r1 ; r1 set to 0x02
	mov.w @(loc_cE33E04,pc),r3 ; r3 set to 0x80
	mov r14,r4
	mov.b @(r0,r14),r2
	or r3,r2
	mov.b r2,@(r0,r14)
	add 0xE9,r0 ; r0 set to 0x1EB
	mov.l @(loc_cE33E10,pc),r2 ; r2 set to 0x8C05A2CC
	mov.b r1,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_cE33CE0:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_cE33CE8:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_cE33E14,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_cE33D02
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_cE33E18,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	lds.l @r15+,pr

loc_cE33D02:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_cE33D0A:
	mov.w @(loc_cE33E06,pc),r0 ; r0 set to 0x4E0
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r4 ; r4 set to 0x00
	sts.l pr,@-r15
	mov.w @(r0,r14),r3
	mov.w @(loc_cE33E08,pc),r2 ; r2 set to 0x200
	extu.w r3,r3
	mov.l @(loc_cE33E1C,pc),r5 ; r5 set to 0x8C2896B0
	mov.l @(loc_cE33E20,pc),r13 ; r13 set to 0x8C034E8C
	tst r2,r3
	bt/s loc_cE33D60
	fldi0 fr4
	mov 0x03,r0 ; r0 set to 0x03
	mov.b r0,@(0x07,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r14)
	mov 0x43,r3 ; r3 set to 0x43
	mov.w @(loc_cE33E0A,pc),r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r5,r3 ; r3 ??
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r3
	mov.w @(r0,r3),r1
	add 0x01,r1
	mov.w r1,@(r0,r3)
	bra loc_cE33D9E
	mov 0x20,r6

loc_cE33D60:
	mov.w @(loc_cE33E0C,pc),r2 ; r2 set to 0x100
	tst r2,r3
	bt loc_cE33DB8
	mov 0x04,r0 ; r0 set to 0x04
	mov.b r0,@(0x07,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r14)
	mov 0x44,r3 ; r3 set to 0x44
	mov.w @(loc_cE33E0A,pc),r0 ; r0 set to 0x1A1
	mov 0x34,r6 ; r6 set to 0x34
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r5,r3 ; r3 ??? bc r5 is ???
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r3
	mov.w @(r0,r3),r1
	add 0x01,r1
	mov.w r1,@(r0,r3)

loc_cE33D9E:
	mov 0x16,r5 ; r5 set to 0x16,r5 set to 0x16
	jsr @r13
	mov r14,r4
	mov.l @(loc_cE33E24,pc),r5 ; r5 set to 0x8C26A518,r5 set to 0x8C26A518
	mov 0x01,r0 ; r0 set to 0x01,r0 set to 0x01
	mov.l @(loc_cE33E28,pc),r3 ; r3 set to 0x8C042008,r3 set to 0x8C042008
	mov.b r0,@(0x05,r5)
	mov.b r0,@(0x06,r5)
	mov 0x25,r5 ; r5 set to 0x25,r5 set to 0x25
	jsr @r3
	mov r14,r4
	bra loc_cE33DF8
	nop

loc_cE33DB8:
	mov.w @(r0,r14),r0
	extu.w r0,r0
	tst 0x60,r0
	bf loc_cE33DC4
	bra loc_cE33DFA
	mov 0x00,r0

loc_cE33DC4:
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x06,r14)
	mov r4,r0 ; r0 ??? bc r4 is ???
	nop
	mov.b r0,@(0x07,r14)
	mov 0x16,r5 ; r5 set to 0x16
	mov.w r0,@(0x1E,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	mov 0x21,r6 ; r6 set to 0x21
	fmov.s fr4,@(r0,r14)
	jsr @r13
	mov r14,r4
	mov.l @(loc_cE33E28,pc),r3 ; r3 set to 0x8C042008
	mov 0x25,r5 ; r5 set to 0x25
	jsr @r3
	mov r14,r4
	mov.l @(loc_cE33E2C,pc),r2 ; r2 set to 0x8C04223A
	mov 0x4C,r5 ; r5 set to 0x4C
	jsr @r2
	mov r14,r4

loc_cE33DF8:
	mov 0x01,r0 ; r0 set to 0x01

loc_cE33DFA:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE33E02:
	#data 0x0202
loc_cE33E04:
	#data 0x0080
loc_cE33E06:
	#data 0x04E0
loc_cE33E08:
	#data 0x0200
loc_cE33E0A:
	#data 0x01A1
loc_cE33E0C:
	#data 0x0100
	#align4

loc_cE33E10:
	#data loc_8c05A2CC
loc_cE33E14:
	#data loc_8c034DEE
loc_cE33E18:
	#data loc_8c051648
loc_cE33E1C:
	#data loc_8c2896B0
loc_cE33E20:
	#data loc_8c034E8C
loc_cE33E24:
	#data loc_8c26A518
loc_cE33E28:
	#data loc_8c042008
loc_cE33E2C:
	#data loc_8c04223A

;==============================================
loc_cE33E30:
	mov.l r14,@-r15
	extu.b r5,r5
	sts.l pr,@-r15
	tst r5,r5
	bt/s loc_cE33E42
	mov r4,r14
	mov.w @(loc_cE33F06,pc),r0 ; r0 set to 0x348
	bra loc_cE33E44
	nop

loc_cE33E42:
	mov.w @(loc_cE33F08,pc),r0 ; r0 set to 0x340

loc_cE33E44:
	mov.w @(r0,r14),r4
	mov.w @(loc_cE33F0A,pc),r2 ; r2 set to 0xC00,r2 set to 0xC00
	extu.w r4,r4
	extu.w r4,r4
	tst r2,r4
	bf loc_cE33E58
	lds.l @r15+,pr
	mov 0x00,r0 ; r0 set to 0x00,r0 set to 0x00
	rts
	mov.l @r15+,r14

;==============================================
loc_cE33E58:
	mov 0x01,r0 ; r0 set to 0x01
	fldi0 fr4
	mov.b r0,@(0x07,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r14)
	mov 0x00,r4 ; r4 set to 0x00
	mov.w @(loc_cE33F0C,pc),r0 ; r0 set to 0x1FC
	mov 0xF6,r1 ; r1 set to 0xFFFFFFF6
	mov.w @(loc_cE33F10,pc),r2 ; r2 set to 0x400
	mov 0x16,r5 ; r5 set to 0x16
	mov.b r4,@(r0,r14)
	add 0xFD,r0 ; r0 set to 0x1F9
	mov.b r4,@(r0,r14)
	mov.w @(loc_cE33F0E,pc),r0 ; r0 set to 0x34A
	mov.w @(r0,r14),r3
	mov.w @(loc_cE33F12,pc),r0 ; r0 set to 0x1D3
	extu.w r3,r3
	and r2,r3
	shad r1,r3
	mov.b r3,@(r0,r14)
	mov.b @(r0,r14),r6
	mov.l @(loc_cE33F18,pc),r3 ; r3 set to 0x8C034E8C
	add 0x1D,r6
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.w @(loc_cE33F14,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r2 ; r2 ??? bc r14 is ???
	tst r2,r2
	bf loc_cE33EB2
	mova @(loc_cE33F1C,pc),r0; r0 set to 0xCE33F1C
	fmov.s @r0,fr3 ; r3 ??
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_cE33F12,pc),r0 ; r0 set to 0x1D3
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_cE33EC2
	bra loc_cE33ECA
	nop

loc_cE33EB2:
	mova @(0x6c,pc),r0
	fmov @r0, fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x54,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce33eca

loc_cE33EC2:
	mov 0x5C,r0
	fmov @(r0,r14), fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_cE33ECA:
	mov 0x01,r0 ; r0 set to 0x01
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE33ED2:
	extu.b r5,r5
	tst r5,r5
	bt loc_ce33ede
	mov.w @(0x2a,pc),r0
	bra loc_ce33ee0
	nop

loc_cE33EDE:
	mov.w @(0x26,pc),r0

loc_cE33EE0:
	mov.w @(r0,r4),r4
	mov.w @(0x24,pc),r2
	extu.w r4,r4
	extu.w r4,r4
	tst r2,r4
	bf loc_ce33ef0
	rts
	mov 0x00,r0

loc_cE33EF0:
	mov 0x01,r0
	rts
	nop

;==============================================
loc_cE33EF6:
	mov 0x01,r0 ; r0 set to 0x01
	mov.l @(loc_cE33F18,pc),r3 ; r3 set to 0x8C034E8C
	mov.b r0,@(0x06,r4)
	mov 0x00,r0 ; r0 set to 0x00
	mov 0x1C,r6 ; r6 set to 0x1C
	mov.b r0,@(0x07,r4)
	jmp @r3
	mov 0x16,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE33F06:
	#data 0x0348
loc_cE33F08:
	#data 0x0340
loc_cE33F0A:
	#data 0x0C00
loc_cE33F0C:
	#data 0x01FC
loc_cE33F0E:
	#data 0x034A
loc_cE33F10:
	#data 0x0400
loc_cE33F12:
	#data 0x01D3
loc_cE33F14:
	#data 0x0130
	#align4

loc_cE33F18:
	#data loc_8c034E8C
loc_cE33F1C:
	#data 0xC0B40000
loc_cE33F20:
	#data 0x40B40000

;==============================================
loc_cE33F24:
	mova @(0x13c,pc),r0
	sts.l pr,@-r15
	fmov @r0, fr4
	mov.w @(0x128,pc),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_ce33f36
	mova @(0x134,pc),r0
	fmov @r0, fr4

loc_cE33F36:
	mov.w @(0x11e,pc),r0
	mov.l @(r0,r4),r3
	mov 0x34,r0
	fmov @(r0,r4), fr2
	fmov @(r0,r3), fr3
	fadd fr4, fr3
	fcmp/gt fr3, fr2
	bt loc_ce33f4e
	mov.w @(0x10c,pc),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_ce33f66

loc_cE33F4E:
	mov.w @(0x106,pc),r0
	mov.l @(r0,r4),r2
	mov 0x34,r0
	fmov @(r0,r4), fr2
	fmov @(r0,r2), fr3
	fadd fr4, fr3
	fcmp/gt fr3, fr2
	bf loc_ce33f6c
	mov.w @(0xf4,pc),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_ce33f6c

loc_cE33F66:
	lds.l @r15+,pr
	rts
	mov 0x00,r0

loc_cE33F6C:
	mov.w @(0xea,pc),r0
	mov 0x00,r3
	fldi0 fr4
	mov 0x1F,r6
	mov.b r3,@(r0,r4)
	mov 0x5C,r0
	fmov fr4,@(r0,r4)
	mov 0x60,r0
	fmov fr4,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	fmov fr4,@(r0,r4)
	mov 0x01,r0
	mov.b r0,@(0x6,r4)
	mov 0x02,r0
	mov.l @(0xdc,pc),r3
	mov.b r0,@(0x7,r4)
	jsr @r3
	mov 0x16,r5
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_cE33F9C:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x06,r14),r0
	mov.l @(loc_cE34070_to_loc_cE3645C_to_loc_cE33FB2,pc),r1 ; r1 set to 0xCE3645C
	extu.b r0,r0
	mov.w @(loc_cE3405C,pc),r5 ; r5 set to 0x2A4
	shll2 r0
	mov.l @(r0,r1),r3
	add r14,r5 ; r5 ??? bc r14 is ???
	jmp @r3
	mov.l @r15+,r14

loc_cE33FB2:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov.l @(loc_cE34074,pc),r3 ; r3 set to 0x8C05218A
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_cE3405E,pc),r0 ; r0 set to 0x130
	mov 0x05,r5 ; r5 set to 0x05
	mov.w @(loc_cE3405E,pc),r1 ; r1 set to 0x130
	mov.w @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(loc_cE34078,pc),r3 ; r3 set to 0x8C056DE4
	add r14,r1 ; r1 ??? bc r14 is ???
	xor 0x01,r0
	mov.w r0,@r1
	jsr @r3
	mov r14,r4
	mov.w @(loc_cE3405A,pc),r0 ; r0 set to 0x1F9
	mov 0x00,r13 ; r13 set to 0x00
	mov 0x49,r3 ; r3 set to 0x49
	mov r13,r5 ; r5 set to 0x00
	mov.b r13,@(r0,r14)
	mov 0x02,r6 ; r6 set to 0x02
	mov.w @(loc_cE34060,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_cE34062,pc),r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r13,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(loc_cE3407C,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r13,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(loc_cE3406C,pc),r2 ; r2 set to 0x8C034E8C
	jsr @r2
	mov r14,r4
	mov 0x5C,r0 ; r0 set to 0x5C
	fldi0 fr4
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r14)
	mov.w @(loc_cE3405E,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt loc_cE34036
	mova @(loc_cE34080,pc),r0; r0 set to 0xCE34080
	bra loc_cE3403A
	fmov.s @r0,fr3

loc_cE34036:
	mova @(loc_cE34084,pc),r0; r0 init to 0xCE34084
	fmov.s @r0,fr3

loc_cE3403A:
mov 0x5C,r0 ; r0 set to 0x5C,r0 set to 0x5C
	mov.l @(loc_cE3408C,pc),r3 ; r3 set to 0x8C02FEC4,r3 set to 0x8C02FEC4
	fmov.s fr3,@(r0,r14)
	mova @(loc_cE34088,pc),r0; r0 set to 0xCE34088,r0 set to 0xCE34088
	fmov.s @r0,fr3 ; r3 ??,r3 ??
	mov 0x60,r0 ; r0 set to 0x60,r0 set to 0x60
	mov r14,r4
	mov 0x07,r6 ; r6 set to 0x07,r6 set to 0x07
	fmov.s fr3,@(r0,r14)
	mov 0x01,r5 ; r5 set to 0x01,r5 set to 0x01
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE34056:
	#data 0x01D2
loc_cE34058:
	#data 0x020C
loc_cE3405A:
	#data 0x01F9
loc_cE3405C:
	#data 0x02A4
loc_cE3405E:
	#data 0x0130
loc_cE34060:
	#data 0x041C
loc_cE34062:
	#data 0x01A1
	#align4

loc_ce34064:
	#data 0xC1BAAAAA
loc_ce34068:
	#data 0x41BAAAAA
loc_cE3406C:
	#data loc_8c034E8C
loc_cE34070_to_loc_cE3645C_to_loc_cE33FB2:
	#data loc_cE3645C_to_loc_cE33FB2
loc_cE34074:
	#data loc_8c05218A
loc_cE34078:
	#data loc_8c056DE4
loc_cE3407C:
	#data loc_8c2896B0
loc_cE34080:
	#data 0x41480000
loc_cE34084:
	#data 0xC1480000
loc_cE34088:
	#data 0x415EDB6D
loc_cE3408C:
	#data loc_8c02FEC4

;==============================================
loc_cE34090:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	mov 0x01,r5 ; r5 set to 0x01
	mov.l @(loc_cE341A4,pc),r3 ; r3 set to 0x8C02FEC4
	mov r4,r14
	mov 0x07,r6 ; r6 set to 0x07
	jsr @r3
	mov r14,r4
	mov.w @(loc_cE34198,pc),r0 ; r0 set to 0x1F5
	mov 0x02,r2 ; r2 set to 0x02
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.l @(loc_cE341A8,pc),r3 ; r3 set to 0x8C034DEE
	mov.b r2,@(r0,r14)
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_cE3419A,pc),r0 ; r0 set to 0x130
	mov.l @(loc_cE341AC,pc),r4 ; r4 set to 0x8C26A518
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_cE340EC
	mova @(loc_cE341B0,pc),r0; r0 set to 0xCE341B0
	fmov.s @r0,fr3
	mov.w @(loc_cE3419C,pc),r0 ; r0 set to 0x8C
	fmov.s @(r0,r4),fr2
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr1,fr2
	bt loc_cE3411C
	bra loc_cE340FE
	nop

loc_cE340EC:
	mova @(loc_cE341B4,pc),r0; r0 init to 0xCE341B4
	fmov.s @r0,fr3
	mov.w @(loc_cE3419E,pc),r0 ; r0 set to 0x88
	fmov.s @(r0,r4),fr2
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr2,fr1
	bt loc_cE3411C

loc_cE340FE:
	mov.b @(0x06,r14),r0
	mov r14,r4
	mov 0x03,r5 ; r5 set to 0x03,r5 set to 0x03
	add 0x01,r0 ; r0 set to 0x35
	mov.b r0,@(0x06,r14)
	mov 0x00,r0 ; r0 set to 0x00,r0 set to 0x00
	mov.l @r15,r3
	mov.w r0,@(0x1C,r3)
	mov 0x14,r0 ; r0 set to 0x14,r0 set to 0x14
	mov.w r0,@(0x1C,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_cE341B8,pc),r3 ; r3 set to 0x8C042008,r3 set to 0x8C042008
	jmp @r3
	mov.l @r15+,r14

loc_cE3411C:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE34124:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	mov 0x01,r5 ; r5 set to 0x01
	mov.l @(loc_cE341A4,pc),r3 ; r3 set to 0x8C02FEC4
	mov r4,r14
	mov 0x07,r6 ; r6 set to 0x07
	jsr @r3
	mov r14,r4
	mov.l @r15,r2
	mov 0x48,r1 ; r1 set to 0x48
	mov.w @(loc_cE341A0,pc),r3 ; r3 set to 0x800
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(0x1C,r2),r0
	sub r3,r0
	mov.w r0,@(0x1C,r2)
	mov.l @r15,r2
	mov.w @(0x1C,r2),r0
	mov 0x02,r2 ; r2 set to 0x02
	mov.l r0,@r1
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.w @(loc_cE34198,pc),r0 ; r0 set to 0x1F5
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.b r2,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_cE341A8,pc),r2 ; r2 set to 0x8C034DEE
	fadd fr3,fr2 ; r2 ??? bc r3 is ???
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r2
	mov r14,r4
	mov.w @(loc_cE3419A,pc),r0 ; r0 set to 0x130
	mov.l @(loc_cE341AC,pc),r4 ; r4 set to 0x8C26A518
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_cE341C4
	mov.w @(loc_cE3419C,pc),r0 ; r0 set to 0x8C
	fmov.s @(r0,r4),fr4 ; r4 ??
	mova @(loc_cE341BC,pc),r0; r0 set to 0xCE341BC
	fmov.s @r0,fr3
	mov 0x34,r0 ; r0 set to 0x34
	fmov fr4,fr2
	fadd fr3,fr2
	fmov.s @(r0,r14),fr1
	fcmp/gt fr1,fr2
	bt loc_cE34212
	mova @(loc_cE341C0,pc),r0; r0 set to 0xCE341C0
	bra loc_cE341DC
	fmov.s @r0,fr3

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_cE34198:
	#data 0x01F5
loc_cE3419A:
	#data 0x0130
loc_cE3419C:
	#data 0x008C
loc_cE3419E:
	#data 0x0088
loc_cE341A0:
	#data 0x0800
	#align4

loc_cE341A4:
	#data loc_8c02FEC4
loc_cE341A8:
	#data loc_8c034DEE
loc_cE341AC:
	#data loc_8c26A518
loc_cE341B0:
	#data 0xC2D55555
loc_cE341B4:
	#data 0x42D55555
loc_cE341B8:
	#data loc_8c042008
loc_cE341BC:
	#data 0xC2200000
loc_cE341C0:
	#data 0xC0555555

;==============================================
loc_cE341C4:
	mov.w @(loc_cE34294,pc),r0 ; r0 set to 0x88
	fmov.s @(r0,r4),fr4
	mova @(loc_cE34298,pc),r0; r0 set to 0xCE34298
	fmov.s @r0,fr3
	mov 0x34,r0 ; r0 set to 0x34
	fmov fr4,fr2
	fadd fr3,fr2
	fmov.s @(r0,r14),fr1
	fcmp/gt fr2,fr1
	bt loc_cE34212
	mova @(loc_cE3429C,pc),r0; r0 set to 0xCE3429C
	fmov.s @r0,fr3

loc_cE341DC:
	fadd fr3,fr4
	mov.l @(loc_cE342A0,pc),r1 ; r1 set to 0x42092492,r1 set to 0x42092492
	mov 0x34,r0 ; r0 set to 0x34,r0 set to 0x34
	lds r1,fpul
	mov 0x00,r3 ; r3 set to 0x00,r3 set to 0x00
	mov 0x15,r5 ; r5 set to 0x15,r5 set to 0x15
	fmov.s fr4,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38,r0 set to 0x38
	fmov.s @(r0,r14),fr2
	mov 0x1C,r6 ; r6 set to 0x1C,r6 set to 0x1C
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.b @(0x06,r14),r0
	add 0x01,r0 ; r0 set to 0x39,r0 set to 0x39
	mov.b r0,@(0x06,r14)
	mov 0x48,r0 ; r0 set to 0x48,r0 set to 0x48
	mov.l r3,@(r0,r14)
	mov.l @(loc_cE342A4,pc),r3 ; r3 set to 0x8C034E8C,r3 set to 0x8C034E8C
	jsr @r3
	mov r14,r4
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_cE342A8,pc),r2 ; r2 set to 0x8C053082,r2 set to 0x8C053082
	jmp @r2
	mov.l @r15+,r14

loc_cE34212:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE3421A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	mov 0x01,r5 ; r5 set to 0x01
	mov.l @(loc_cE342AC,pc),r3 ; r3 set to 0x8C02FEC4
	mov r4,r14
	mov 0x07,r6 ; r6 set to 0x07
	jsr @r3
	mov r14,r4
	mov.w @(loc_cE34296,pc),r0 ; r0 set to 0x1F5
	mov 0x02,r2 ; r2 set to 0x02
	mov 0x60,r1 ; r1 set to 0x60
	mov.l @(loc_cE342B0,pc),r3 ; r3 set to 0x8C034DEE
	mov.b r2,@(r0,r14)
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
	mov 0x6C,r1 ; r1 set to 0x6C
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
	bsr loc_cE3477E
	mov r14,r4
	extu.b r0,r0 ; r0 set to 0x60
	tst r0,r0
	bf loc_cE3428C
	mov.l @(loc_cE342B8,pc),r3 ; r3 set to 0x8C26A5A8
	mova @(loc_cE342B4,pc),r0; r0 set to 0xCE342B4
	fmov.s @r0,fr3 ; r3 ??
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @r3,fr2
	fmov.s @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr1,fr2
	bt loc_cE3428C
	mov.b @(0x06,r14),r0
	mov r14,r4
	mov 0x03,r5 ; r5 set to 0x03
	add 0x01,r0 ; r0 set to 0x39
	mov.b r0,@(0x06,r14)
	mov 0x00,r0 ; r0 set to 0x00
	mov.l @r15,r3
	mov.w r0,@(0x1C,r3)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_cE342BC,pc),r3 ; r3 set to 0x8C042008
	jmp @r3
	mov.l @r15+,r14

loc_cE3428C:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE34294:
	#data 0x0088
loc_cE34296:
	#data 0x01F5
	#align4

loc_cE34298:
	#data 0x42200000
loc_cE3429C:
	#data 0x40555555
loc_cE342A0:
	#data 0x42092492
loc_cE342A4:
	#data loc_8c034E8C
loc_cE342A8:
	#data loc_8c053082
loc_cE342AC:
	#data loc_8c02FEC4
loc_cE342B0:
	#data loc_8c034DEE
loc_cE342B4:
	#data 0xC3092492
loc_cE342B8:
	#data loc_8c26A5A8
loc_cE342BC:
	#data loc_8c042008

;==============================================
loc_cE342C0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	mov 0x01,r5 ; r5 set to 0x01
	mov.l @(loc_cE343F4,pc),r3 ; r3 set to 0x8C02FEC4
	mov r4,r14
	mov 0x07,r6 ; r6 set to 0x07
	jsr @r3
	mov r14,r4
	mov.l @r15,r2
	mov 0x48,r1 ; r1 set to 0x48
	mov.w @(loc_cE343E8,pc),r3 ; r3 set to 0x800
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(0x1C,r2),r0
	sub r3,r0
	mov.w r0,@(0x1C,r2)
	mov.l @r15,r2
	mov.w @(0x1C,r2),r0
	mov 0x02,r2 ; r2 set to 0x02
	mov.l r0,@r1
	mov 0x60,r1 ; r1 set to 0x60
	mov.w @(loc_cE343EA,pc),r0 ; r0 set to 0x1F5
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.b r2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	mov 0x6C,r1 ; r1 set to 0x6C
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_cE343F8,pc),r2 ; r2 set to 0x8C034DEE
	fadd fr3,fr2 ; r2 ??? bc r3 is ???
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r2
	mov r14,r4
	bsr loc_cE3477E
	mov r14,r4
	extu.b r0,r0 ; r0 set to 0x60
	tst r0,r0
	bf loc_cE3437A
	mov.w @(loc_cE343EC,pc),r0 ; r0 set to 0x90
	mov.l @(loc_cE343FC,pc),r4 ; r4 set to 0x8C26A518
	fmov.s @(r0,r4),fr4 ; r4 ??
	mova @(loc_cE34400,pc),r0; r0 set to 0xCE34400
	fmov.s @r0,fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov fr4,fr2
	fadd fr3,fr2
	fmov.s @(r0,r14),fr1
	fcmp/gt fr1,fr2
	bt loc_cE3437A
	fldi0 fr3
	fadd fr3,fr4
	fmov.s fr4,@(r0,r14)
	mov.w @(loc_cE343EE,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_cE34348
	mova @(loc_cE34404,pc),r0; r0 set to 0xCE34404
	fmov.s @r0,fr2
	mov.w @(loc_cE343F0,pc),r0 ; r0 set to 0x8C
	bra loc_cE3434E
	nop

loc_cE34348:
	mova @(loc_cE34408,pc),r0; r0 init to 0xCE34408
	fmov.s @r0,fr2
	mov.w @(loc_cE343F2,pc),r0 ; r0 set to 0x88

loc_cE3434E:
	fmov.s @(r0,r4),fr1
	mov 0x34,r0 ; r0 set to 0x34,r0 set to 0x34
	mov 0x00,r3 ; r3 set to 0x00,r3 set to 0x00
	mov r14,r4
	fadd fr2,fr1
	mov 0x15,r5 ; r5 set to 0x15,r5 set to 0x15
	mov 0x16,r6 ; r6 set to 0x16,r6 set to 0x16
	fmov.s fr1,@(r0,r14)
	mov.b @(0x06,r14),r0
	add 0x01,r0 ; r0 set to 0x35,r0 set to 0x35
	mov.b r0,@(0x06,r14)
	mov 0x5C,r0 ; r0 set to 0x5C,r0 set to 0x5C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???,r3 ??? bc r14 is ???
	fneg fr3
	fmov.s fr3,@(r0,r14)
	mov 0x48,r0 ; r0 set to 0x48,r0 set to 0x48
	mov.l r3,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_cE3440C,pc),r3 ; r3 set to 0x8C034E8C,r3 set to 0x8C034E8C
	jmp @r3
	mov.l @r15+,r14

loc_cE3437A:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE34382:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	mov 0x01,r5 ; r5 set to 0x01
	mov.l @(loc_cE343F4,pc),r3 ; r3 set to 0x8C02FEC4
	mov r4,r14
	mov 0x07,r6 ; r6 set to 0x07
	jsr @r3
	mov r14,r4
	mov.w @(loc_cE343EA,pc),r0 ; r0 set to 0x1F5
	mov 0x02,r2 ; r2 set to 0x02
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.l @(loc_cE343F8,pc),r3 ; r3 set to 0x8C034DEE
	mov.b r2,@(r0,r14)
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	bsr loc_cE3477E
	mov r14,r4
	extu.b r0,r0 ; r0 set to 0x5C
	tst r0,r0
	bf loc_cE34440
	mov.w @(loc_cE343EE,pc),r0 ; r0 set to 0x130
	mov.l @(loc_cE343FC,pc),r4 ; r4 set to 0x8C26A518
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_cE34414
	mova @(loc_cE34410,pc),r0; r0 set to 0xCE34410
	fmov.s @r0,fr3
	mov.w @(loc_cE343F2,pc),r0 ; r0 set to 0x88
	fmov.s @(r0,r4),fr2
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr2,fr1
	bt loc_cE34440
	bra loc_cE34426
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE343E8:
	#data 0x0800
loc_cE343EA:
	#data 0x01F5
loc_cE343EC:
	#data 0x0090
loc_cE343EE:
	#data 0x0130
loc_cE343F0:
	#data 0x008C
loc_cE343F2:
	#data 0x0088
	#align4

loc_cE343F4:
	#data loc_8c02FEC4
loc_cE343F8:
	#data loc_8c034DEE
loc_cE343FC:
	#data loc_8c26A518
loc_cE34400:
	#data 0xC24DB6DB
loc_cE34404:
	#data 0xC2200000
loc_cE34408:
	#data 0x42200000
loc_cE3440C:
	#data loc_8c034E8C
loc_cE34410:
	#data 0x42D55555

;==============================================
loc_cE34414:
	mova @(loc_cE3452C,pc),r0; r0 init to 0xCE3452C
	fmov.s @r0,fr3
	mov.w @(loc_cE34520,pc),r0 ; r0 set to 0x8C
	fmov.s @(r0,r4),fr2
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr1,fr2
	bt loc_cE34440

loc_cE34426:
	mov.b @(0x06,r14),r0
	mov r14,r4
	mov 0x03,r5 ; r5 set to 0x03,r5 set to 0x03
	add 0x01,r0 ; r0 set to 0x35
	mov.b r0,@(0x06,r14)
	mov 0x00,r0 ; r0 set to 0x00,r0 set to 0x00
	mov.l @r15,r3
	mov.w r0,@(0x1C,r3)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_cE34530,pc),r3 ; r3 set to 0x8C042008,r3 set to 0x8C042008
	jmp @r3
	mov.l @r15+,r14

loc_cE34440:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE34448:
	mov.l r14,@-r15
	mov 0x07,r6 ; r6 set to 0x07
	mov.l r13,@-r15
	mov r4,r14
	mov.l r12,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l @(loc_cE34534,pc),r3 ; r3 set to 0x8C02FEC4
	jsr @r3
	mov 0x01,r5 ; r5 set to 0x01
	mov.w @(0x1C,r13),r0
	mov 0x48,r1 ; r1 set to 0x48
	mov.w @(loc_cE34522,pc),r3 ; r3 set to 0x800
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x02,r2 ; r2 set to 0x02
	sub r3,r0
	mov.w r0,@(0x1C,r13)
	mov.w @(0x1C,r13),r0
	mov.l r0,@r1
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.w @(loc_cE34524,pc),r0 ; r0 set to 0x1F5
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.b r2,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_cE34538,pc),r2 ; r2 set to 0x8C034DEE
	fadd fr3,fr2 ; r2 ??? bc r3 is ???
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r2
	mov r14,r4
	bsr loc_cE3477E
	mov r14,r4
	extu.b r0,r0 ; r0 set to 0x5C
	tst r0,r0
	bf loc_cE34516
	mov.w @(loc_cE34526,pc),r0 ; r0 set to 0x130
	mov.l @(loc_cE3453C,pc),r4 ; r4 set to 0x8C26A518
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_cE344C2
	mov.w @(loc_cE34528,pc),r0 ; r0 set to 0x88
	fmov.s @(r0,r4),fr4 ; r4 ??
	mova @(loc_cE34540,pc),r0; r0 set to 0xCE34540
	fmov.s @r0,fr3
	mov 0x34,r0 ; r0 set to 0x34
	fmov fr4,fr2
	fadd fr3,fr2
	fmov.s @(r0,r14),fr1
	fcmp/gt fr2,fr1
	bt loc_cE34516
	mova @(loc_cE34544,pc),r0; r0 set to 0xCE34544
	bra loc_cE344DA
	fmov.s @r0,fr3

loc_cE344C2:
	mov.w @(0x5a,pc),r0
	fmov @(r0,r4), fr4
	mova @(0x80,pc),r0
	fmov @r0, fr3
	mov 0x34,r0
	fmov fr4, fr2
	fadd fr3, fr2
	fmov @(r0,r14), fr1
	fcmp/gt fr1, fr2
	bt loc_ce34516
	mova @(0x74,pc),r0
	fmov @r0, fr3

loc_cE344DA:
	fadd fr3, fr4
	mov 0x34,r0
	mov.l @(0x70,pc),r1
	mov 0x00,r12
	mov.l @(0x70,pc),r3
	mov 0x15,r5
	lds r1, fpul
	mov 0x1D,r6
	fmov fr4,@(r0,r14)
	mov.b @(0x6,r14),r0
	fsts fpul, fr3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x38,r0
	fmov @(r0,r14), fr2
	fsub fr3, fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14), fr2
	fneg fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x22,pc),r0
	mov.b r12,@(r0,r14)
	mov 0x48,r0
	mov.l r12,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov r12,r0
	nop
	mov.w r0,@(0x1c,r13)

loc_cE34516:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE34520:
	#data 0x008C
loc_cE34522:
	#data 0x0800
loc_cE34524:
	#data 0x01F5
loc_cE34526:
	#data 0x0130
loc_cE34528:
	#data 0x0088
loc_cE3452a:
	#data 0x01FD
	#align4

loc_cE3452C:
	#data 0xC2D55555
loc_cE34530:
	#data loc_8c042008
loc_cE34534:
	#data loc_8c02FEC4
loc_cE34538:
	#data loc_8c034DEE
loc_cE3453C:
	#data loc_8c26A518
loc_cE34540:
	#data 0x42200000
loc_cE34544:
	#data 0x40555555
loc_cE34548:
	#data 0xC2200000
loc_cE3454c:
	#data 0xC0555555
loc_cE34550:
	#data 0x424DB6DB
loc_cE34554:
	#data loc_8c034E8C

;==============================================
loc_cE34558:
	mov.l r14,@-r15
	mov 0x07,r6
	sts.l pr,@-r15
	mov.l @(0xf4,pc),r3
	mov r4,r14
	jsr @r3
	mov 0x01,r5
	mov 0x60,r1
	mov.l @(0xec,pc),r3
	add r14,r1
	mov 0x38,r0
	fmov @r1, fr3
	fmov @(r0,r14), fr2
	mov 0x6C,r1
	add r14,r1
	fadd fr3, fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14), fr2
	fmov @r1, fr3
	fadd fr3, fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	bsr loc_ce3477e;[1]
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_ce345aa
	mova @(0xc8,pc),r0
	fmov @r0, fr3
	mov.w @(0xb4,pc),r0
	fmov @(r0,r14), fr2
	mov 0x38,r0
	fmov @(r0,r14), fr1
	fadd fr3, fr2
	fcmp/gt fr2, fr1
	bt loc_ce345aa
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)

loc_cE345AA:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE345B0:
	mov.l r14,@-r15
	mov 0x07,r6 ; r6 set to 0x07
	mov.l r13,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(loc_cE34654,pc),r3 ; r3 set to 0x8C02FEC4
	mov r5,r13
	jsr @r3
	mov 0x01,r5 ; r5 set to 0x01
	mov.w @(0x1C,r13),r0
	mov 0x48,r1 ; r1 set to 0x48
	mov.w @(loc_cE34650,pc),r3 ; r3 set to 0x800
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_cE34658,pc),r2 ; r2 set to 0x8C034DEE
	sub r3,r0
	mov.w r0,@(0x1C,r13)
	mov.w @(0x1C,r13),r0
	mov.l r0,@r1
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
	mov 0x6C,r1 ; r1 set to 0x6C
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r2
	mov r14,r4
	bsr loc_cE3477E
	mov r14,r4
	extu.b r0,r0 ; r0 set to 0x60
	tst r0,r0
	bf loc_cE34646
	mova @(loc_cE34660,pc),r0; r0 set to 0xCE34660
	fmov.s @r0,fr3
	mov.w @(loc_cE3464E,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr2
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr2,fr1
	bt loc_cE34646
	mov.w @(loc_cE34652,pc),r0 ; r0 set to 0x1F9
	mov 0x00,r4 ; r4 set to 0x00
	mov.b r4,@(r0,r14)
	mov.w @(loc_cE3464E,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mov r4,r0 ; r0 set to 0x00
	nop
	mov.w r0,@(0x1C,r13)
	mov 0x48,r0 ; r0 set to 0x48
	mov.l @(loc_cE34664,pc),r3 ; r3 set to 0x8C042008
	mov 0x03,r5 ; r5 set to 0x03
	mov.l r4,@(r0,r14)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.l @(loc_cE34654,pc),r2 ; r2 set to 0x8C02FEC4
	mov 0x00,r6 ; r6 set to 0x00
	mov r6,r5 ; r5 set to 0x00
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_cE34668,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_cE34646:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE3464E:
	#data 0x041C
loc_cE34650:
	#data 0x0800
loc_cE34652:
	#data 0x01F9
	#align4

loc_cE34654:
	#data loc_8c02FEC4
loc_cE34658:
	#data loc_8c034DEE
loc_cE3465c:
	#data 0x42CDB6DB
loc_cE34660:
	#data 0x424DB6DB
loc_cE34664:
	#data loc_8c042008
loc_cE34668:
	#data loc_8c051648

;==============================================
loc_cE3466C:
	mov.l r14,@-r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov 0x34,r0
	mov.l @(0x138,pc),r3
	sts.l pr,@-r15
	fmov @(r0,r14), fr2
	fmov @r1, fr3
	mov 0x68,r1
	add r14,r1
	fadd fr3, fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @r1, fr3
	mov 0x60,r1
	fmov @(r0,r14), fr2
	add r14,r1
	fadd fr3, fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14), fr2
	fmov @r1, fr3
	mov 0x6C,r1
	add r14,r1
	fadd fr3, fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14), fr2
	fmov @r1, fr3
	fadd fr3, fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce346bc
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)

loc_cE346BC:
	mov.w @(0xe8,pc),r0
	fmov @(r0,r14), fr3
	mov 0x38,r0
	fmov @(r0,r14), fr2
	fcmp/gt fr3, fr2
	bt loc_ce346f8
	mov.w @(0xdc,pc),r0
	mov 0x00,r3
	fmov @(r0,r14), fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov.w @(0xd4,pc),r0
	mov.b r3,@(r0,r14)
	mov.l @(0xdc,pc),r3
	jsr @r3
	mov r14,r4
	mov 0x5C,r0
	fldi0 fr4
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	mov.l @(0xc8,pc),r3
	mov r14,r4
	fmov fr4,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_cE346F8:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE346FE:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5C
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
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	fmov.s @(r0,r14),fr2
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6C
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_cE347A8,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_cE34778
	mov.w @(loc_cE347A8,pc),r0 ; r0 set to 0x41C
	mov 0x00,r3 ; r3 set to 0x00
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_cE347AA,pc),r0 ; r0 set to 0x1F9
	mov.b r3,@(r0,r14)
	mov.l @(loc_cE347B4,pc),r3 ; r3 set to 0x8C0511B4
	jsr @r3
	mov r14,r4
	mov 0x5C,r0 ; r0 set to 0x5C
	fldi0 fr4
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	mov.l @(loc_cE347B8,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	fmov.s fr4,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_cE34778:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE3477E:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_cE347AC,pc),r0 ; r0 set to 0x525
	mov.l r13,@-r15
	mov 0x00,r13 ; r13 set to 0x00
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt/s loc_cE347BC
	fldi0 fr15
	mov.w @(0x1C,r14),r0
	add 0xFF,r0 ; r0 set to 0x524
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0 ; r0 ??
	cmp/pz r0
	bf loc_cE347A4
	bra loc_cE348AA
	nop

loc_cE347A4:
	bra loc_cE3482E
	nop

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_cE347A8:
	#data 0x041C
loc_cE347AA:
	#data 0x01F9
loc_cE347AC:
	#data 0x0525
	#align4

loc_cE347B0:
	#data loc_8c034DEE
loc_cE347B4:
	#data loc_8c0511B4
loc_cE347B8:
	#data loc_8c051648

;----------------------------------------------
loc_cE347BC:
	mova @(0x124,pc),r0
	fmov @r0, fr3
	mov.w @(0x112,pc),r0
	fmov @(r0,r14), fr2
	mov 0x38,r0
	fmov @(r0,r14), fr1
	fadd fr3, fr2
	fcmp/gt fr2, fr1
	bf loc_ce348aa
	mov.w @(0x106,pc),r0
	mov.w @(0x106,pc),r2
	mov.w @(r0,r14),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_ce34826
	mov.l @(0x10c,pc),r3
	mov 0x00,r6
	mov r6,r5
	jsr @r3
	mov r14,r4
	mov 0x48,r0
	mov.l r13,@(r0,r14)
	mov 0x5C,r0
	fmov fr15,@(r0,r14)
	mov 0x60,r0
	fmov fr15,@(r0,r14)
	mov 0x68,r0
	fmov fr15,@(r0,r14)
	mov 0x6C,r0
	fmov fr15,@(r0,r14)
	mov.b @(0x6,r14),r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bf.s loc_ce34810
	mov r14,r4
	mov.l @(0xe8,pc),r1
	mov 0x38,r0
	fmov @(r0,r14), fr2
	lds r1, fpul
	fsts fpul, fr3
	fsub fr3, fr2
	fmov fr2,@(r0,r14)

loc_cE34810:
	mov.l @(0xdc,pc),r3
	jsr @r3
	nop
	mov.w @(0xc2,pc),r0
	mov 0x02,r2
	mov.l @(0xd8,pc),r3
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	bra loc_ce348a6
	nop

loc_cE34826:
	mov.w @(r0,r14),r0
	extu.w r0,r0
	tst 0x60,r0
	bt loc_ce348aa

loc_cE3482E:
	mov.l @(0xb8,pc),r2
	mov 0x00,r6
	mov r6,r5
	jsr @r2
	mov r14,r4
	mov 0x48,r0
	mov.l @(0xc0,pc),r2
	mov.l r13,@(r0,r14)
	mov 0x09,r0
	mov.b r0,@(0x6,r14)
	mov 0x01,r3
	mov.w @(0x96,pc),r0
	mov.b r3,@(r0,r14)
	mova @(0xac,pc),r0
	fmov @r2, fr2
	fmov @r0, fr3
	mov 0x34,r0
	fmov @(r0,r14), fr1
	fadd fr3, fr2
	fcmp/gt fr2, fr1
	bf loc_ce3485c
	mov.w @(0x82,pc),r0
	mov.b r13,@(r0,r14)

loc_cE3485C:
	mov.w @(0x7e,pc),r0
	mov 0x15,r5
	mov 0x19,r6
	mov.b @(r0,r14),r3
	mov.w @(0x78,pc),r0
	extu.b r3,r3
	mov.w r3,@(r0,r14)
	mov.l @(0x94,pc),r3
	jsr @r3
	mov r14,r4
	mov 0x5C,r0
	fmov fr15,@(r0,r14)
	mov 0x60,r0
	fmov fr15,@(r0,r14)
	mov 0x68,r0
	fmov fr15,@(r0,r14)
	mov 0x6C,r0
	fmov fr15,@(r0,r14)
	mova @(0x80,pc),r0
	fmov @r0, fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x52,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce34896
	mova @(0x74,pc),r0
	bra loc_ce3489a
	fmov @r0, fr3

loc_cE34896:
	mova @(0x74,pc),r0
	fmov @r0, fr3

loc_cE3489A:
	mov.l @(0x74,pc),r3
	mov 0x5C,r0
	mov 0x15,r5
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_cE348A6:
	bra loc_ce348ac
	mov 0x01,r0

loc_cE348AA:
	mov 0x00,r0 ; r0 set to 0x00

loc_cE348AC:
	lds.l @r15+,pr
	fmov.s @r15+,fr15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_cE348B6:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	tst r0,r0
	bf loc_cE34914
	mov.b @(0x06,r14),r0
	mov r14,r4
	mov.l @(loc_cE34900,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x09,r6 ; r6 set to 0x09
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov 0x13,r5 ; r5 set to 0x13
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE348d6:
	#data 0x041C
loc_cE348d8:
	#data 0x04E0
loc_cE348da:
	#data 0x0300
loc_cE348dc:
	#data 0x01FC
loc_cE348de:
	#data 0x01D2
loc_cE348e0:
	#data 0x0130
	#align4

loc_cE348e4:
	#data 0x43092492
loc_cE348e8:
	#data loc_8c02FEC4
loc_cE348ec:
	#data 0x42CDB6DB
loc_cE348f0:
	#data loc_8c05218A
loc_cE348f4:
	#data loc_8c05176E
loc_cE348f8:
	#data 0x43A00000
loc_cE348fc:
	#data loc_8c26A5A0
loc_cE34900:
	#data loc_8c034E8C
loc_cE34904:
	#data 0xC1809249
loc_cE34908:
	#data 0x41A6AAAA
loc_cE3490c:
	#data 0xC1A6AAAA
loc_cE34910:
	#data loc_8c04223A

;==============================================
loc_cE34914:
	mov.l @(loc_cE34A48,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_cE3492A
	lds.l @r15+,pr
	mov.l @(loc_cE34A4C,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_cE3492A:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE34930:
	mov.w @(0x10a,pc),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_ce3495a
	mov.l @(0x10c,pc),r2
	jsr @r2
	mov r14,r4
	mov.w @(0xf6,pc),r0
	fmov @(r0,r14), fr3
	mov 0x38,r0
	fmov @(r0,r14), fr2
	fcmp/gt fr2, fr3
	bf loc_ce3495a
	mov.w @(0xea,pc),r0
	fmov @(r0,r14), fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)

loc_cE3495A:
	mov.b @(0x6,r14),r0
	mov r14,r4
	mov.l @(0xf4,pc),r1
	extu.b r0,r0
	mov.w @(0xdc,pc),r5
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	add r14,r5
	jmp @r3
	mov.l @r15+,r14

loc_cE34970:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov.l @(loc_cE34A58,pc),r3 ; r3 set to 0x8C05218A
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov 0x78,r0 ; r0 set to 0x78
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_cE34A5C,pc),r2 ; r2 set to 0x8C056DE4
	mov 0x05,r5 ; r5 set to 0x05
	jsr @r2
	mov r14,r4
	mov.l @(loc_cE34A60,pc),r3 ; r3 set to 0x8C05115A
	jsr @r3
	mov r14,r4
	mov.w @(loc_cE34A3E,pc),r0 ; r0 set to 0x1F9
	mov 0x00,r13 ; r13 set to 0x00
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r13,@(r0,r14)
	mov 0x12,r6 ; r6 set to 0x12
	mov.w @(loc_cE34A40,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_cE34A44,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r3
	add 0xFE,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r13,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(loc_cE34A64,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r13,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2 ; r2 ??
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(loc_cE34A46,pc),r0 ; r0 set to 0x141
	mov.l @(loc_cE34A68,pc),r2 ; r2 set to 0x8C034E8C
	mov.b r13,@(r0,r14)
	jsr @r2
	mov r14,r4
	mov.l @(loc_cE34A6C,pc),r3 ; r3 set to 0x8C0802D8
	mov r13,r5 ; r5 set to 0x00
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf/s loc_cE349F2
	mov.l r0,@(0x14,r14)
	lds.l @r15+,pr
	mov.l @(loc_cE34A4C,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	jmp @r3
	mov.l @r15+,r14

loc_cE349F2:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_cE349FA:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x14,r14),r4
	mov 0x02,r3 ; r3 set to 0x02
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/ge r3,r0
	bf loc_cE34A20
	mov 0x03,r0 ; r0 set to 0x03
	mov.l @(loc_cE34A70,pc),r2 ; r2 set to 0x8C04223A
	mov.b r0,@(0x06,r14)
	mov 0x1E,r0 ; r0 set to 0x1E
	mov r14,r4
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	mov 0x2A,r5 ; r5 set to 0x2A
	jmp @r2
	mov.l @r15+,r14

loc_cE34A20:
	mov.l @(0x24,pc), r3
	jsr @r3
	mov r14, r4
	mov.w @(0x1c,r14), r0
	add 0xFF, r0
	mov.w r0, @(0x1c,r14)
	exts.w r0, r0
	cmp/pl r0
	bt loc_cE34A38
	mov.b @(0x6,r14), r0
	add 0x01, r0
	mov.b r0, @(0x6,r14

loc_cE34A38:
	lds.l @r15+, pr
	rts
	mov.l @r15+, r14

;==============================================
loc_cE34A3E:
	#data 0x01F9
loc_cE34A40:
	#data 0x041C
loc_cE34A42:
	#data 0x02A4
loc_cE34A44:
	#data 0x01A3
loc_cE34A46:
	#data 0x0141
	#align4

loc_cE34A48:
	#data loc_8c034DEE
loc_cE34A4C:
	#data loc_8c051648
loc_cE34A50:
	#data loc_8c04FEA8
loc_cE34A54_to_loc_cE36488_to_loc_cE34970:
	#data loc_cE36488_to_loc_cE34970
loc_cE34A58:
	#data loc_8c05218A
loc_cE34A5C:
	#data loc_8c056DE4
loc_cE34A60:
	#data loc_8c05115A
loc_cE34A64:
	#data loc_8c2896B0
loc_cE34A68:
	#data loc_8c034E8C
loc_cE34A6C:
	#data loc_8c0802D8
loc_cE34A70:
	#data loc_8c04223A

;==============================================
loc_cE34A74:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE34B9C,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	mov.b @(0x06,r14),r0
	mov r14,r4
	mov.l @(loc_cE34BA0,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x13,r6 ; r6 set to 0x13
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov 0x15,r5 ; r5 set to 0x15
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_cE34A92:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE34B9C,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_cE34AAC
	lds.l @r15+,pr
	mov.l @(loc_cE34BA4,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_cE34AAC:
	mov.w @(loc_cE34B92,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	cmp/eq 0x02,r0
	bf loc_cE34ADE
	mov.w @(loc_cE34B92,pc),r0 ; r0 set to 0x141
	mov 0x00,r2 ; r2 set to 0x00
	mov.l @(loc_cE34BA8,pc),r3 ; r3 set to 0x8C059150
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_cE34BAC,pc),r2 ; r2 set to 0x8C104DF8
	mov 0x04,r5 ; r5 set to 0x04
	jsr @r2
	mov r14,r4
	mov.l @(loc_cE34BB0,pc),r3 ; r3 set to 0x8C042008
	mov 0x1F,r5 ; r5 set to 0x1F
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_cE34BB4,pc),r2 ; r2 set to 0x8C04223A
	mov 0x2A,r5 ; r5 set to 0x2A
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_cE34ADE:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE34AE4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE34B9C,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_cE34B04
	lds.l @r15+,pr
	mov.l @(loc_cE34BA4,pc),r2 ; r2 set to 0x8C051648
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_cE34B04:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE34B0A:
	mov r4,r3
	mov.l @(loc_cE34BB8_to_loc_cE3649C_to_loc_cE34B1C,pc),r1 ; r1 set to 0xCE3649C
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_cE34B1C:
	mov.l r14,@-r15
	mov r4,r14
	fldi0 fr4
	mov.l r13,@-r15
	mov 0x00,r13 ; r13 set to 0x00
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov r13,r5 ; r5 set to 0x00

	mov.l @(loc_cE34BBC,pc),r3 ; r3 set to 0x8C035162
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r14)
	mov.w @(loc_cE34B94,pc),r0 ; r0 set to 0x1F9
	mov.b r13,@(r0,r14)
	mov.w @(loc_cE34B96,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4

	mov.l @(loc_cE34BC0,pc),r2 ; r2 set to 0x8C05218A
	jsr @r2
	mov r14,r4
	mov.l @(loc_cE34BC4,pc),r3 ; r3 set to 0x8C05115A
	jsr @r3
	mov r14,r4
	mov.w @(loc_cE34B98,pc),r0 ; r0 set to 0x1A1
	mov 0x48,r2 ; r2 set to 0x48
	mov.l @(loc_cE34BC8,pc),r3 ; r3 set to 0x8C2896B0
	mov 0x17,r6 ; r6 set to 0x17
	mov.b r2,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r13,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r13,@(r0,r14)
	mov 0x15,r5 ; r5 set to 0x15
	mov.b @(0x02,r14),r0
	mov r14,r4
	mov.l @r3,r2 ; r2 ??
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	lds.l @r15+,pr
	mov.l @(loc_cE34BA0,pc),r2 ; r2 set to 0x8C034E8C
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE34B92:
	#data 0x0141
loc_cE34B94:
	#data 0x01F9
loc_cE34B96:
	#data 0x041C
loc_cE34B98:
	#data 0x01A1
	#align4

loc_cE34B9C:
	#data loc_8c034DEE
loc_cE34BA0:
	#data loc_8c034E8C
loc_cE34BA4:
	#data loc_8c051648
loc_cE34BA8:
	#data loc_8c059150
loc_cE34BAC:
	#data loc_8c104DF8
loc_cE34BB0:
	#data loc_8c042008
loc_cE34BB4:
	#data loc_8c04223A
loc_cE34BB8_to_loc_cE3649C_to_loc_cE34B1C:
	#data loc_cE3649C_to_loc_cE34B1C
loc_cE34BBC:
	#data loc_8c035162
loc_cE34BC0:
	#data loc_8c05218A
loc_cE34BC4:
	#data loc_8c05115A
loc_cE34BC8:
	#data loc_8c2896B0

;==============================================
loc_cE34BCC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE34D0C,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pl r0
	bt loc_cE34C04
	mov.b @(0x06,r14),r0
	mov 0x15,r5 ; r5 set to 0x15
	mov.l @(loc_cE34D10,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x18,r6 ; r6 set to 0x18
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_cE34D14,pc),r2 ; r2 set to 0x8C0D0584
	mov 0x04,r5 ; r5 set to 0x04
	mov 0x00,r6 ; r6 set to 0x00
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_cE34D14,pc),r3 ; r3 set to 0x8C0D0584
	mov r14,r4
	mov 0x00,r6 ; r6 set to 0x00
	mov 0x05,r5 ; r5 set to 0x05
	jmp @r3
	mov.l @r15+,r14

loc_cE34C04:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE34C0A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(loc_cE34D0C,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_cE34C2A
	mov.l @(loc_cE34D18,pc),r3 ; r3 set to 0x8C051648
	jsr @r3
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE34C2A:
	mov.w @(loc_cE34CFE,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r2
	tst r2,r2
	bt/s loc_cE34C72
	mov 0x00,r4 ; r4 set to 0x00
	mov.w @(loc_cE34D00,pc),r0 ; r0 set to 0x1D2
	mov 0x34,r2 ; r2 set to 0x34
	mov.b @(r0,r14),r3
	tst r3,r3
	bt/s loc_cE34C54
	add r14,r2 ; r2 ??? bc r14 is ???
	mov.w @(loc_cE34CFE,pc),r3 ; r3 set to 0x141
	mov.l @(loc_cE34D1C,pc),r1 ; r1 set to 0x3FD55555
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.b @r3,r3
	lds r3,fpul
	float fpul,fr3
	lds r1,fpul
	fsts fpul,fr2
	bra loc_cE34C68
	fmul fr2,fr3

loc_cE34C54:
	mov.w @(0xa6,pc),r3
	mov.l @(0xc4,pc),r1
	add r14,r3
	mov.b @r3,r3
	lds r3, fpul
	float fpul, fr3
	lds r1, fpul
	fsts fpul, fr2
	fmul fr2, fr3
	fneg fr3

loc_cE34C68:
	fmov @r2, fr2
	mov.w @(0x90,pc),r0
	fadd fr3, fr2
	fmov fr2,@r2
	mov.b r4,@(r0,r14)

loc_cE34C72:
	mov.w @(0x8c,pc),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_ce34c98
	mov.w @(0x84,pc),r0
	mov r15,r5
	fldi0 fr3
	mov.b r4,@(r0,r14)
	mova @(0x9c,pc),r0
	fmov fr3,@r15
	fmov @r0, fr3
	mov 0x04,r0
	fmov @(r0,r15), fr2
	mov 0x04,r0
	mov.l @(0x94,pc),r3
	fadd fr3, fr2
	fmov fr2,@(r0,r15)
	jsr @r3
	mov r14,r4

loc_cE34C98:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE34CA0:
	mov.w @(0x60,pc),r0
	mov 0x05,r3
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.b @(0x6,r14),r0
	extu.b r0,r4
	tst r4,r4
	bt loc_ce34cd2
	mov r4,r0
	nop
	cmp/eq 0x08,r0
	bt loc_ce34cd2
	mov.w @(0x46,pc),r0
	mov 0x02,r1
	mov.w @(0x44,pc),r3
	mov.b @(r0,r14),r2
	or r3,r2
	mov.b r2,@(r0,r14)
	add 0xE9,r0
	mov.l @(0x5c,pc),r2
	mov.b r1,@(r0,r14)
	jsr @r2
	mov r14,r4

loc_cE34CD2:
	mov.b @(0x6,r14),r0
	mov r14,r4
	mov.l @(0x54,pc),r1
	extu.b r0,r0
	mov.w @(0x2c,pc),r5
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	add r14,r5
	jmp @r3
	mov.l @r15+,r14

loc_cE34CE8:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x07,r14),r0
	mov.l @(loc_cE34D30_to_loc_cE364CC_to_loc_cE3319C,pc),r1 ; r1 set to 0xCE364CC
	extu.b r0,r0
	mov.w @(loc_cE34D0A,pc),r5 ; r5 set to 0x2A4
	shll2 r0
	mov.l @(r0,r1),r3
	add r14,r5 ; r5 ??? bc r14 is ???
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE34CFE:
	#data 0x0141
loc_cE34D00:
	#data 0x01D2
loc_cE34D02:
	#data 0x0140
loc_cE34D04:
	#data 0x0328
loc_cE34D06:
	#data 0x0202
loc_cE34D08:
	#data 0x0080
loc_cE34D0A:
	#data 0x02A4
	#align4

loc_cE34D0C:
	#data loc_8c034DEE
loc_cE34D10:
	#data loc_8c034E8C
loc_cE34D14:
	#data loc_8c0D0584
loc_cE34D18:
	#data loc_8c051648
loc_cE34D1C:
	#data 0x3FD55555
loc_cE34D20:
	#data 0x42CDB6DB
loc_cE34D24:
	#data loc_8c050EA4
loc_cE34D28:
	#data loc_8c05A2CC
loc_cE34D2C_to_loc_cE364A8_to_loc_cE34CE8:
	#data loc_cE364A8_to_loc_cE34CE8
loc_cE34D30_to_loc_cE364CC_to_loc_cE3319C:
	#data loc_cE364CC_to_loc_cE3319C

;==============================================
loc_cE34D34:
	mov.w @(0x108,pc),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_ce34d48
	mov.w @(0x8,r5),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r5)
	exts.w r0,r0
	cmp/pl r0
	bt loc_ce34d66

loc_cE34D48:
	mov.b @(0x6,r4),r0
	mov 0x02,r1
	mov.w @(0xf4,pc),r3
	add 0x01,r0
	mov.b r0,@(0x6,r4)
	mov 0x00,r0
	mov.b r0,@(0x7,r4)
	mov.w @(0xe8,pc),r0
	mov.b @(r0,r4),r2
	or r3,r2
	mov.b r2,@(r0,r4)
	add 0xE9,r0
	mov.l @(0xe8,pc),r2
	jmp @r2
	mov.b r1,@(r0,r4)

loc_cE34D66:
	rts
	nop

;==============================================
loc_cE34D6A:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x06,r0
	mov.l r13,@-r15
	mov r5,r13
	mov.l @(0xd8,pc),r2
	mov 0x01,r1
	sts.l pr,@-r15
	mov.b r0,@(0x6,r14)
	mov 0x00,r0
	mov.b r0,@(0x7,r14)
	mov 0x78,r0
	mov.w r0,@(0xa,r13)
	mov.b @(0x2,r14),r0
	mov.b @r2,r3
	extu.b r0,r0
	shad r0,r1
	extu.b r3,r3
	tst r1,r3
	bf loc_ce34daa
	mov.w @(0xaa,pc),r0
	mov.b @(r0,r14),r1
	tst r1,r1
	bt loc_ce34daa
	mov.w @(0xa8,pc),r0
	mov r13,r5
	mov.l @(0xb4,pc),r3
	add 0x0A,r5
	mov.w r0,@(0xa,r13)
	mov 0x06,r6
	jsr @r3
	mov r14,r4

loc_cE34DAA:
	mov.l @(0xac,pc),r2
	mov 0x16,r5
	mov 0x21,r6
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0xa4,pc),r3
	mov r14,r4
	mov 0x4C,r5
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_cE34DC2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_ce352b2;[1]
	mov r4,r14
	extu.b r0,r0
	tst r0,r0
	bf loc_ce34e3a
	bsr loc_ce353da;[2]
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_ce34e3a
	mov 0x00,r5
	bsr loc_ce353a6;[3]
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_ce34dea
	bsr loc_ce353ca;[4]
	mov r14,r4

loc_cE34DEA:
	mov.l @(0x74,pc),r2
	jsr @r2
	mov r14,r4
	mov.w @(0x54,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_ce34e16
	mov 0x5C,r1
	add r14,r1
	mov 0x34,r0
	fmov @r1, fr3
	fmov @(r0,r14), fr2
	mov 0x68,r1
	add r14,r1
	fadd fr3, fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14), fr2
	fmov @r1, fr3
	fadd fr3, fr2
	bra loc_ce34e3a
	fmov fr2,@(r0,r14)

loc_cE34E16:
	mov 0x01,r4
	exts.b r4,r3
	tst r3,r3
	bt.s loc_ce34e3a
	mov.b r4,@(r0,r14)
	mov.l @(0x40,pc),r5
	mov 0x02,r2
	mov.b r2,@(r0,r14)
	mov r4,r0
	nop
	mov.l @(0x30,pc),r3
	mov r14,r4
	mov.b r0,@(0x5,r5)
	mov.b r0,@(0x6,r5)
	mov 0x35,r5
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_cE34E3A:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE34E40:
	#data 0x0525
loc_cE34E42:
	#data 0x0202
loc_cE34E44:
	#data 0x0080
loc_cE34E46:
	#data 0x0096
loc_cE34E48:
	#data 0x0141
	#align4

loc_cE34E4c:
	#data loc_8c05A2CC
loc_cE34E50:
	#data loc_8c289628
loc_cE34E54:
	#data loc_8c0F047C
loc_cE34E58:
	#data loc_8c034E8C
loc_cE34E5c:
	#data loc_8c04223A
loc_cE34E60:
	#data loc_8c034DEE
loc_cE34E64:
	#data loc_8c26A518

;==============================================
loc_cE34E68:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE34F74,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_cE34E86
	bsr loc_cE353CA
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_cE34F78,pc),r2 ; r2 set to 0x8C05218A
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_cE34E86:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE34E8C:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xda,pc),r0
	mov.l r13,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_ce34ea8
	mov 0x00,r13
	mov.w @(0xcc,pc),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x03,r0
	bf loc_ce34ef6

loc_cE34EA8:
	mov 0x05,r0
	fldi0 fr4
	mov.b r0,@(0x6,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov 0x43,r3
	mov.w @(0xae,pc),r0
	mov 0x16,r5
	mov 0x34,r6
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l @(0xa8,pc),r3
	mov.l r13,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(0x98,pc),r2
	jsr @r2
	mov r14,r4
	mov.l @(0x94,pc),r5
	mov 0x01,r0
	mov.b r0,@(0x5,r5)
	bra loc_ce34f64
	mov.b r0,@(0x6,r5)

loc_cE34EF6:
	mov.l @(0x7c,pc),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce34f0e
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r8
	mov.l @r15+,r13
	bra loc_ce353ca
	mov.l @r15+,r14

loc_cE34F0E:
	mov.w @(0x5e,pc),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_ce34f38
	mov.w @(0x56,pc),r0
	mov 0x16,r5
	mov 0x0D,r6
	mov.b r13,@(r0,r14)
	mov.l @(0x68,pc),r13
	jsr @r13
	mov r14,r4
	mov 0x17,r5
	mov 0x0D,r6
	jsr @r13
	mov r14,r4
	mov 0x18,r5
	mov 0x0D,r6
	jsr @r13
	mov r14,r4
	bra loc_ce34f64
	nop

loc_cE34F38:
	mov.w @(0x34,pc),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x02,r0
	bf loc_ce34f64
	mov.w @(0x2c,pc),r0
	mov 0x34,r8
	mov.b r13,@(r0,r14)
	add 0xEF,r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_ce34f58
	add r14,r8
	mov.l @(0x38,pc),r1
	lds r1, fpul
	bra loc_ce34f5e
	fsts fpul, fr3

loc_cE34F58:
	mov.l @(0x34,pc),r2
	lds r2, fpul
	fsts fpul, fr3

loc_cE34F5E:
	fmov @r8, fr2
	fadd fr3, fr2
	fmov fr2,@r8

loc_cE34F64:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE34F6e:
	#data 0x019E
loc_cE34F70:
	#data 0x0141
loc_cE34F72:
	#data 0x01A1
	#align4

loc_cE34F74:
	#data loc_8c034DEE
loc_cE34F78:
	#data loc_8c05218A
loc_cE34F7c:
	#data loc_8c2896B0
loc_cE34F80:
	#data loc_8c034E8C
loc_cE34F84:
	#data loc_8c26A518
loc_cE34F88:
	#data loc_8c0D0584
loc_cE34F8c:
	#data 0x41D55555
loc_cE34F90:
	#data 0xC1D55555

;==============================================
loc_cE34F94:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE350AC,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov 0x00,r13 ; r13 set to 0x00
	exts.b r0,r0
	cmp/pz r0
	bt loc_cE34FB6
	mov 0x08,r0 ; r0 set to 0x08
	mov.b r0,@(0x06,r14)
	mov r13,r0 ; r0 set to 0x00
	nop
	bra loc_cE3500A
	mov.b r0,@(0x07,r14)

loc_cE34FB6:
	mov.w @(loc_cE350A6,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	cmp/eq 0x01,r0
	bf loc_cE34FDE
	mov.w @(loc_cE350A6,pc),r0 ; r0 set to 0x141
	mov 0x20,r5 ; r5 set to 0x20
	mov.l @(loc_cE350B0,pc),r3 ; r3 set to 0x8C0D0584
	mov 0x0D,r6 ; r6 set to 0x0D
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_cE350B0,pc),r2 ; r2 set to 0x8C0D0584
	mov 0x21,r5 ; r5 set to 0x21
	mov r14,r4
	mov 0x0D,r6 ; r6 set to 0x0D
	mov.l @r15+,r8
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_cE34FDE:
	mov.w @(loc_cE350A6,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	cmp/eq 0x02,r0
	bf loc_cE3500A
	mov.w @(loc_cE350A6,pc),r0 ; r0 set to 0x141
	mov 0x34,r8 ; r8 set to 0x34
	mov.b r13,@(r0,r14)
	add 0xEF,r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_cE34FFE
	add r14,r8 ; r8 ??? bc r14 is ???
	mov.l @(loc_cE350B4,pc),r1 ; r1 set to 0xC2855555
	lds r1,fpul
	bra loc_cE35004
	fsts fpul,fr3

loc_cE34FFE:
	mov.l @(0xb8,pc),r2
	lds r2, fpul
	fsts fpul, fr3

loc_cE35004:
	fmov @r8, fr2
	fadd fr3, fr2
	fmov fr2,@r8

loc_cE3500A:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_cE35014:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(0x9c,pc),r1
	mov.l r5,@r15
	mov.b @(0x7,r14),r0
	mov.w @(0x80,pc),r5
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	add r14,r5
	jsr @r3
	mov r14,r4
	mov.l @(0x8c,pc),r2
	mov.l @r2,r3
	mov.b @r3,r1
	mov 0x05,r3
	extu.b r1,r1
	cmp/ge r3,r1
	bf loc_ce35050
	mov.l @(0x80,pc),r1
	jsr @r1
	nop
	tst r0,r0
	bf loc_ce35050
	mov.l @r15,r1
	mov 0x00,r0
	mov.w r0,@(0xa,r1)

loc_cE35050:
	mov.l @r15,r3
	mov.l @(loc_cE350c8,pc),r13
	mov.w @(0xa,r3),r0
	add 0xFF,r0
	mov.w r0,@(0xa,r3)
	exts.w r0,r0
	cmp/pl r0
	bt loc_ce3508c
	mov.b @(0x6,r14),r0
	mov 0x00,r5
	mov 0x01,r7
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x00,r0
	mov.b r0,@(0x7,r14)
	mov 0x25,r0
	mov.b @(r0,r14),r6
	extu.b r6,r6
	add 0x06,r6;Set 1
	jsr @r13
	mov r14,r4

	mov r14,r4
	mov 0x16,r5
	mov 0x25,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x44,pc),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_cE3508C:
	mov.l @(0x40,pc),r3
	mov.l @r3,r0
	mov.l @(0x1c,r0),r0
	tst 0x01,r0
	bf.s loc_ce350d4
	mov 0x00,r5
	mov 0x25,r0
	mov.b @(r0,r14),r6
	mov 0x01,r7
	extu.b r6,r6
	shll r6
	bra loc_ce350e0
	add 0x14,r6;26 Brighten

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_cE350A6:
	#data 0x0141
loc_cE350A8:
	#data 0x02A4
	#align4

loc_cE350AC:
	#data loc_8c034DEE
loc_cE350B0:
	#data loc_8c0D0584
loc_cE350B4:
	#data 0xC2855555
loc_cE350B8:
	#data 0x42855555
loc_cE350BC_to_loc_cE364DC_to_loc_cE35112:
	#data loc_cE364DC_to_loc_cE35112
loc_cE350c0:
	#data loc_8c2896B0
loc_cE350c4:
	#data loc_8c0310F2
loc_ce350c8:
	#data loc_8c03544c
loc_cE350cc:
	#data loc_8c034E8C
loc_cE350d0:
	#data loc_8c26823C

;----------------------------------------------
loc_cE350D4:
	mov 0x25,r0
	mov.b @(r0,r14),r6
	mov 0x01,r7
	extu.b r6,r6
	shll r6
	add 0x15,r6;Darken

loc_cE350E0:
	jsr @r13
	mov r14,r4
	mov.l @(0x10c,pc),r3
	mov.l @r3,r0
	mov.l @(0x1c,r0),r0
	tst 0x03,r0
	bf loc_ce35108
	mova @(0x108,pc),r0
	mov r14,r4
	fmov @r0, fr5
	mova @(0x104,pc),r0
	mov 0x00,r6
	fmov @r0, fr4
	mov r6,r5
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0xfc,pc),r2
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_cE35108:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_cE35112:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE35204,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_cE3516E
	mov.b @(0x07,r14),r0
	mov 0x45,r3 ; r3 set to 0x45
	mov.l @(loc_cE35208,pc),r4 ; r4 set to 0x8C26A518
	mov 0x16,r5 ; r5 set to 0x16
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x05,r4)
	mov 0x01,r0 ; r0 set to 0x01
	mov.b r0,@(0x06,r4)
	mov 0x00,r4 ; r4 set to 0x00
	mov.w @(loc_cE351F2,pc),r0 ; r0 set to 0x1A1
	mov 0x29,r6 ; r6 set to 0x29
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(loc_cE3520C,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(loc_cE35210,pc),r2 ; r2 set to 0x8C034E8C
	jsr @r2
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	mov.l @(loc_cE35214,pc),r3 ; r3 set to 0x8C0805D8
	mov 0x00,r5 ; r5 set to 0x00
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_cE3516E:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE35174:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE35204,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_cE35198
	mov.b @(0x07,r14),r0
	mov r14,r4
	mov.l @(loc_cE35210,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x29,r6 ; r6 set to 0x29
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x16,r5 ; r5 set to 0x16
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_cE35198:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE3519E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE35204,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_cE351C2
	mov.b @(0x07,r14),r0
	mov r14,r4
	mov.l @(loc_cE35210,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x2B,r6 ; r6 set to 0x2B
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x16,r5 ; r5 set to 0x16
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_cE351C2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE351C8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE35204,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_cE351EC
	mov.b @(0x07,r14),r0
	mov r14,r4
	mov.l @(loc_cE35210,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x27,r6 ; r6 set to 0x27
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x16,r5 ; r5 set to 0x16
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_cE351EC:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE351F2:
	#data 0x01A1
	#align4

loc_ce351f4:
	#data loc_8c26823C
loc_ce351f8:
	#data 0x3ECCCCCD
loc_ce351fc:
	#data 0x40733333
loc_ce35200:
	#data loc_8c0FD75C
loc_cE35204:
	#data loc_8c034DEE
loc_cE35208:
	#data loc_8c26A518
loc_cE3520C:
	#data loc_8c2896B0
loc_cE35210:
	#data loc_8c034E8C
loc_cE35214:
	#data loc_8c0805D8

;==============================================
loc_cE35218:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE3535C,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_cE3523C
	mov.b @(0x07,r14),r0
	mov r14,r4
	mov.l @(loc_cE35360,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x2C,r6 ; r6 set to 0x2C
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x16,r5 ; r5 set to 0x16
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_cE3523C:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE35242:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE3535C,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_cE35266
	mov.b @(0x07,r14),r0
	mov r14,r4
	mov.l @(loc_cE35360,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x26,r6 ; r6 set to 0x26
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x16,r5 ; r5 set to 0x16
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_cE35266:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE3526C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE3535C,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_cE3528E
	mov.l @(loc_cE35360,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x01,r0 ; r0 set to 0x01
	mov r14,r4
	mov.b r0,@(0x07,r14)
	lds.l @r15+,pr
	mov 0x29,r6 ; r6 set to 0x29
	mov 0x16,r5 ; r5 set to 0x16
	jmp @r3
	mov.l @r15+,r14

loc_cE3528E:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE35294:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xc0,pc),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce352ac
	mov 0x08,r0
	mov.b r0,@(0x6,r14)
	mov 0x00,r0
	mov.b r0,@(0x7,r14)

loc_cE352AC:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE352B2:
	mov.w @(0x9e,pc),r0
	mov 0x00,r5
	mov.l r14,@-r15
	mov.w @(0x9a,pc),r2
	sts.l pr,@-r15
	mov.w @(r0,r4),r3
	mov.l @(0xa4,pc),r6
	extu.w r3,r3
	mov.l @(0x9c,pc),r14
	tst r2,r3
	bt.s loc_ce35304
	fldi0 fr4
	mov 0x04,r0
	mov.b r0,@(0x7,r4)
	mov 0x5C,r0
	fmov fr4,@(r0,r4)
	mov 0x60,r0
	fmov fr4,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	fmov fr4,@(r0,r4)
	mov 0x43,r3
	mov.w @(0x74,pc),r0
	mov.b r3,@(r0,r4)
	add 0x0B,r0
	mov.w r5,@(r0,r4)
	add 0xF2,r0
	mov.b r5,@(r0,r4)
	add 0x26,r0
	mov.l r5,@(r0,r4)
	mov.b @(0x2,r4),r0
	mov.l @r6,r3
	extu.b r0,r0
	shll r0
	add 0x7C,r3
	mov.w @(r0,r3),r1
	add 0x01,r1
	mov.w r1,@(r0,r3)
	bra loc_ce35342
	mov 0x20,r6

loc_cE35304:
	mov.w @(0x52,pc),r2
	tst r2,r3
	bt loc_ce3536c
	mov 0x05,r0
	mov.b r0,@(0x7,r4)
	mov 0x5C,r0
	fmov fr4,@(r0,r4)
	mov 0x60,r0
	fmov fr4,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	fmov fr4,@(r0,r4)
	mov 0x44,r3
	mov.w @(0x34,pc),r0
	mov.b r3,@(r0,r4)
	add 0x0B,r0
	mov.w r5,@(r0,r4)
	add 0xF2,r0
	mov.b r5,@(r0,r4)
	add 0x26,r0
	mov.l r5,@(r0,r4)
	mov.b @(0x2,r4),r0
	mov.l @r6,r3
	mov 0x34,r6
	extu.b r0,r0
	shll r0
	add 0x7C,r3
	mov.w @(r0,r3),r1
	add 0x01,r1
	mov.w r1,@(r0,r3)

loc_cE35342:
	jsr @r14
	mov 0x16,r5
	mov.l @(0x20,pc),r4
	mov 0x01,r5
	mov r5,r0
	nop
	mov.b r0,@(0x5,r4)
	bra loc_ce3539e
	mov.b r0,@(0x6,r4)

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_cE35354:
	#data 0x04E0
loc_cE35356:
	#data 0x0200
loc_cE35358:
	#data 0x01A1
loc_cE3535a:
	#data 0x0100

loc_cE3535C:
	#data loc_8c034DEE
loc_cE35360:
	#data loc_8c034E8C
loc_cE35364:
	#data loc_8c2896B0
loc_cE35368:
	#data loc_8c26A518

;----------------------------------------------
loc_cE3536C:
	mov.w @(r0,r4),r0
	extu.w r0,r0
	tst 0x40,r0
	bf loc_ce3537c
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_cE3537C:
	mov 0x06,r0
	mov.b r0,@(0x6,r4)
	mov r5,r0
	nop
	mov.b r0,@(0x7,r4)
	mov 0x21,r6
	mov.w r0,@(0x1e,r4)
	mov 0x5C,r0
	fmov fr4,@(r0,r4)
	mov 0x60,r0
	fmov fr4,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	fmov fr4,@(r0,r4)
	jsr @r14
	mov 0x16,r5

loc_cE3539E:
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE353A6:
	extu.b r5,r5
	tst r5,r5
	bt loc_ce353b2
	mov.w @(0xbc,pc),r0
	bra loc_ce353b4
	nop

loc_cE353B2:
	mov.w @(0xb8,pc),r0

loc_cE353B4:
	mov.w @(r0,r4),r4
	mov.w @(0xb6,pc),r2
	extu.w r4,r4
	extu.w r4,r4
	tst r2,r4
	bf loc_ce353c4
	rts
	mov 0x00,r0

loc_cE353C4:
	mov 0x01,r0
	rts
	nop

;==============================================
loc_cE353CA:
	mov 0x01,r0 ; r0 set to 0x01
	mov.l @(loc_cE35478,pc),r3 ; r3 set to 0x8C034E8C
	mov.b r0,@(0x06,r4)
	mov 0x00,r0 ; r0 set to 0x00
	mov 0x1C,r6 ; r6 set to 0x1C
	mov.b r0,@(0x07,r4)
	jmp @r3
	mov 0x16,r5

loc_cE353DA:
	mova @(0xa0,pc),r0
	sts.l pr,@-r15
	fmov @r0, fr4
	mov.w @(0x8e,pc),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_ce353ec
	mova @(0x94,pc),r0
	fmov @r0, fr4

loc_cE353EC:
	mov.w @(0x84,pc),r0
	mov.l @(r0,r4),r3
	mov 0x34,r0
	fmov @(r0,r4), fr2
	fmov @(r0,r3), fr3
	fadd fr4, fr3
	fcmp/gt fr3, fr2
	bt loc_ce35404
	mov.w @(0x72,pc),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_ce3541c

loc_cE35404:
	mov.w @(0x6c,pc),r0
	mov.l @(r0,r4),r2
	mov 0x34,r0
	fmov @(r0,r4), fr2
	fmov @(r0,r2), fr3
	fadd fr4, fr3
	fcmp/gt fr3, fr2
	bf loc_ce35422
	mov.w @(0x5a,pc),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_ce35422

loc_cE3541C:
	lds.l @r15+,pr
	rts
	mov 0x00,r0

loc_cE35422:
	mov.w @(0x50,pc),r0
	mov 0x00,r5
	fldi0 fr4
	mov.b r5,@(r0,r4)
	mov 0x5C,r0
	fmov fr4,@(r0,r4)
	mov 0x60,r0
	fmov fr4,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	fmov fr4,@(r0,r4)
	mov 0x03,r0
	mov.b r0,@(0x6,r4)
	mov r5,r0
	nop
	mov.l @(0x34,pc),r3
	mov 0x1F,r6
	mov.b r0,@(0x7,r4)
	jsr @r3
	mov 0x16,r5
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_cE35454:
	add 0xFC,r15
	mov.l r4,@r15
	mov r4,r0
	nop
	mov.w @(loc_cE35476,pc),r1 ; r1 set to 0x1F9
	mov.l @(loc_cE35484_to_loc_cE36500_to_loc_cE35488,pc),r2 ; r2 set to 0xCE36500
	mov.b @(r0,r1),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r2),r0
	jmp @r0
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE3546c:
	#data 0x0348
loc_cE3546e:
	#data 0x0340
loc_cE35470:
	#data 0x0C00
loc_cE35472:
	#data 0x01D2
loc_cE35474:
	#data 0x020C
loc_cE35476:
	#data 0x01F9
	#align4

loc_cE35478:
	#data loc_8c034E8C
loc_cE3547c:
	#data 0xC1BAAAAA
loc_cE35480:
	#data 0x41BAAAAA
loc_cE35484_to_loc_cE36500_to_loc_cE35488:
	#data loc_cE36500_to_loc_cE35488

;==============================================
loc_cE35488:
	mov.w @(loc_cE35570,pc),r0 ; r0 set to 0x1FA
	mov 0xF6,r1 ; r1 set to 0xFFFFFFF6
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_cE35572,pc),r2 ; r2 set to 0xC00
	sts.l pr,@-r15
	mov.w @(r0,r14),r3
	mov 0x22,r0 ; r0 set to 0x22
	extu.w r3,r3
	and r2,r3
	shad r1,r3
	mov.b r3,@(r0,r14)
	extu.b r3,r3
	tst r3,r3
	bt loc_cE354F8
	mov.w @(loc_cE35574,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_cE354C8
	mov.w @(loc_cE35576,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_cE354C8
	mov.l @(loc_cE3557C,pc),r2 ; r2 set to 0x8C045790
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt/s loc_cE354F8
	mov r0,r4
	bra loc_cE354EA
	mov 0x00,r2

loc_cE354C8:
	mov.w @(loc_cE35574,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_cE354F8
	mov.w @(loc_cE35576,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_cE354F8
	mov.l @(loc_cE3557C,pc),r2 ; r2 set to 0x8C045790
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt/s loc_cE354F8
	mov r0,r4
	mov 0x01,r2 ; r2 set to 0x01
	
loc_cE354EA:
	mov.w @(loc_cE35578,pc),r0 ; r0 set to 0x1F7,r0 set to 0x1F7
	mov.b r2,@(r0,r14)
	mov r4,r0 ; r0 ??? bc r4 is ???,r0 ??? bc r4 is ???
	nop
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE354F8:
	mov 0x00,r0 ; r0 set to 0x00
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE35500:
	rts
	mov 0x00,r0

;==============================================

loc_cE35504:
	mov.w @(loc_cE35570,pc),r0 ; r0 set to 0x1FA
	mov 0xF6,r1 ; r1 set to 0xFFFFFFF6
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_cE35572,pc),r2 ; r2 set to 0xC00
	sts.l pr,@-r15
	mov.w @(r0,r14),r3
	mov 0x22,r0 ; r0 set to 0x22
	extu.w r3,r3
	and r2,r3
	shad r1,r3
	mov.b r3,@(r0,r14)
	extu.b r3,r3
	tst r3,r3
	bt loc_cE35550
	mov.w @(loc_cE35574,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_cE35550
	mov.w @(loc_cE35576,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_cE35550
	mov.l @(loc_cE3557C,pc),r2 ; r2 set to 0x8C045790
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt/s loc_cE35550
	mov r0,r4
	mov.w @(loc_cE35578,pc),r0 ; r0 set to 0x1F7
	mov 0x02,r2 ; r2 set to 0x02
	mov.b r2,@(r0,r14)
	mov r4,r0 ; r0 ??? bc r4 is ???
	nop
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE35550:
	mov 0x00,r0 ; r0 set to 0x00
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE35558:
	mov.l r4,@-r15
	mov r4,r0
	nop
	mov.w @(loc_cE35578,pc),r1 ; r1 set to 0x1F7
	mov.l @(loc_cE35580_to_loc_cE36510_to_loc_cE35584,pc),r2 ; r2 set to 0xCE36510
	mov.b @(r0,r1),r0
	extu.b r0,r0
	and 0x3F,r0
	shll2 r0
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE35570:
	#data 0x01FA
loc_cE35572:
	#data 0x0C00
loc_cE35574:
	#data 0x01FE
loc_cE35576:
	#data 0x01A3
loc_cE35578:
	#data 0x01F7
	#align4

loc_cE3557C:
	#data loc_8c045790
loc_cE35580_to_loc_cE36510_to_loc_cE35584:
	#data loc_cE36510_to_loc_cE35584

;==============================================
loc_cE35584:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mova @(loc_cE356D4,pc),r0; r0 init to 0xCE356D4
	mov.l @(loc_cE356DC,pc),r3 ; r3 set to 0x8C103660
	fmov.s @r0,fr3 ; r3 ??
	mova @(loc_cE356D8,pc),r0; r0 set to 0xCE356D8
	mov r4,r14
	mov r15,r5
	fmov.s fr3,@r15
	fmov.s @r0,fr3
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.w @(loc_cE356CA,pc),r0 ; r0 set to 0x1A0
	mov 0x0A,r2 ; r2 set to 0x0A
	mov.l @(loc_cE356E0,pc),r3 ; r3 set to 0x8C056F2A
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_cE356E4,pc),r2 ; r2 set to 0x8C02FEC4
	mov 0x0D,r5 ; r5 set to 0x0D
	mov 0x06,r6 ; r6 set to 0x06
	jsr @r2
	mov r14,r4
	mov.w @(loc_cE356CC,pc),r0 ; r0 set to 0x1F9
	mov 0x02,r3 ; r3 set to 0x02
	mov 0x0F,r5 ; r5 set to 0x0F
	mov.b r3,@(r0,r14)
	mov 0x00,r6 ; r6 set to 0x00
	mov.l @(loc_cE356E8,pc),r3 ; r3 set to 0x8C034E8C
	jsr @r3
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE355D0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov 0x22,r0
	mov r4,r14
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x02,r0
	bt loc_ce355f4
	mov.w @(0xe8,pc),r0
	mov 0x01,r3
	mov.b @(r0,r14),r2
	xor r3,r2
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r1
	mov.w @(0xde,pc),r0
	extu.b r1,r1
	mov.w r1,@(r0,r14)

loc_cE355F4:
	mova @(0xdc,pc),r0
	mov.l @(0xe4,pc),r3
	fmov @r0, fr3
	mova @(0xdc,pc),r0
	mov r15,r5
	fmov fr3,@r15
	fmov @r0, fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.w @(0xbc,pc),r0
	mov 0x0A,r2
	mov.l @(0xd0,pc),r3
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0xcc,pc),r2
	mov 0x0D,r5
	mov 0x07,r6
	jsr @r2
	mov r14,r4
	mov.l @(0xc4,pc),r3
	mov 0x0F,r5
	mov 0x05,r6
	jsr @r3
	mov r14,r4
	mov.l @(0xc0,pc),r2
	mov 0x04,r5
	jsr @r2
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE3563A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mova @(loc_cE356D4,pc),r0; r0 init to 0xCE356D4
	mov.l @(loc_cE356DC,pc),r3 ; r3 set to 0x8C103660
	fmov.s @r0,fr3 ; r3 ??
	mova @(loc_cE356D8,pc),r0; r0 set to 0xCE356D8
	mov r4,r14
	mov r15,r5
	fmov.s fr3,@r15
	fmov.s @r0,fr3
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.w @(loc_cE356CA,pc),r0 ; r0 set to 0x1A0
	mov 0x0A,r2 ; r2 set to 0x0A
	mov.l @(loc_cE356E0,pc),r3 ; r3 set to 0x8C056F2A
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_cE356E4,pc),r2 ; r2 set to 0x8C02FEC4
	mov 0x0D,r5 ; r5 set to 0x0D
	mov 0x06,r6 ; r6 set to 0x06
	jsr @r2
	mov r14,r4
	mov.w @(loc_cE356CC,pc),r0 ; r0 set to 0x1F9
	mov 0x02,r3 ; r3 set to 0x02
	mov 0x0F,r5 ; r5 set to 0x0F
	mov.b r3,@(r0,r14)
	mov 0x03,r6 ; r6 set to 0x03
	mov.l @(loc_cE356E8,pc),r3 ; r3 set to 0x8C034E8C
	jsr @r3
	mov r14,r4
	mov.l @(loc_cE356EC,pc),r2 ; r2 set to 0x8C042008
	mov 0x03,r5 ; r5 set to 0x03
	jsr @r2
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE3568E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mova @(loc_cE356D4,pc),r0; r0 init to 0xCE356D4
	mov.l @(loc_cE356DC,pc),r3 ; r3 set to 0x8C103660
	fmov.s @r0,fr3 ; r3 ??
	mova @(loc_cE356D8,pc),r0; r0 set to 0xCE356D8
	mov r4,r14
	mov r15,r5
	fmov.s fr3,@r15
	fmov.s @r0,fr3
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.w @(loc_cE356CA,pc),r0 ; r0 set to 0x1A0
	mov 0x0A,r2 ; r2 set to 0x0A
	mov.l @(loc_cE356E0,pc),r3 ; r3 set to 0x8C056F2A
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_cE356E4,pc),r2 ; r2 set to 0x8C02FEC4
	mov 0x05,r6 ; r6 set to 0x05
	mov r6,r5 ; r5 set to 0x05
	jsr @r2
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE356CA:
	#data 0x01A0
loc_cE356CC:
	#data 0x01F9
loc_cE356Ce:
	#data 0x01D2
loc_cE356d0:
	#data 0x0130
	#align4

loc_cE356D4:
	#data 0xC2555555
loc_cE356D8:
	#data 0x432B6DB6
loc_cE356DC:
	#data loc_8c103660
loc_cE356E0:
	#data loc_8c056F2A
loc_cE356E4:
	#data loc_8c02FEC4
loc_cE356E8:
	#data loc_8c034E8C
loc_cE356EC:
	#data loc_8c042008

;==============================================
loc_cE356F0:
	mov.w @(loc_cE357EA,pc),r0 ; r0 set to 0x1EA
	mov 0x01,r3 ; r3 set to 0x01
	mov.l r14,@-r15
	mov r4,r14
	mov.b r3,@(r0,r14)
	add 0x0D,r0 ; r0 set to 0x1F7
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov r14,r4
	mov.l @(loc_cE357F8_to_loc_cE36520_to_loc_cE3570E,pc),r1 ; r1 set to 0xCE36520
	extu.b r0,r0
	and 0x3F,r0
	shll2 r0
	mov.l @(r0,r1),r3 ; r3 ??
	jmp @r3
	mov.l @r15+,r14

loc_cE3570E:
	mov r4,r3
	mov.l @(loc_cE357FC_to_loc_cE36530_to_loc_cE35720,pc),r1 ; r1 set to 0xCE36530
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_cE35720:
	mov.l r14,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0xd4,pc),r3
	jsr @r3
	mov r4,r14
	mov.w @(0xba,pc),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_ce35766
	mov.w @(0xb2,pc),r0
	mov 0x03,r2
	mov 0x20,r3
	mov.b r2,@(r0,r14)
	mov.w @(0xac,pc),r0
	mov.l @(r0,r14),r4
	add 0xD9,r0
	mov.b r3,@(r0,r4)
	mov.l @(0xbc,pc),r3
	jsr @r3
	mov r14,r4
	mov 0x04,r0
	mov.l @(0xb8,pc),r3
	fldi0 fr4
	mov r15,r5
	mov 0x01,r6
	fmov fr4,@r15
	fmov fr4,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(0xac,pc),r2
	mov 0x0E,r5
	jsr @r2
	mov r14,r4

loc_cE35766:
	mov.w @(0x82,pc),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x02,r0
	bf loc_ce357e0
	mov.w @(0x7c,pc),r0
	mov 0x22,r3
	mov.w @(0x7c,pc),r1
	mov 0x01,r2
	mov.l @(r0,r14),r4
	mov.b @(0x6,r14),r0
	add r4,r1
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(0x6c,pc),r0
	mov.l r14,@(r0,r4)
	add 0x1E,r0
	mov.b @(r0,r14),r0
	xor 0x01,r0
	mov.b r0,@r1
	mov.w @(0x64,pc),r0
	mov.b r3,@(r0,r4)
	add 0x55,r0
	mov.l @(0x7c,pc),r3
	jsr @r3
	mov.b r2,@(r0,r4)
	mov.l @(0x78,pc),r2
	mov 0x1F,r5
	mov 0x00,r6
	jsr @r2
	mov r14,r4
	mov.w @(0x50,pc),r0
	mov 0x34,r8
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_ce357b6
	add r14,r8
	mov.l @(0x68,pc),r1
	lds r1, fpul
	bra loc_ce357bc
	fsts fpul, fr3

loc_cE357B6:
	mov.l @(0x64,pc),r2
	lds r2, fpul
	fsts fpul, fr3

loc_cE357BC:
	fmov @r8, fr2
	mov 0x38,r0
	mov.l @(0x5c,pc),r1
	fadd fr3, fr2
	lds r1, fpul
	fmov fr2,@r8
	fmov @(r0,r14), fr2
	fsts fpul, fr3
	fadd fr3, fr2
	fmov fr2,@(r0,r14)
	mova @(0x50,pc),r0
	fmov @r0, fr2
	mov 0x60,r0
	fmov fr2,@(r0,r14)
	mova @(0x4c,pc),r0
	fmov @r0, fr2
	mov 0x6C,r0
	fmov fr2,@(r0,r14)

loc_cE357E0:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

;==============================================
loc_cE357EA:
	#data 0x01EA
loc_cE357ec:
	#data 0x0141
loc_cE357ee:
	#data 0x01C8
loc_cE357f0:
	#data 0x01B4
loc_cE357f2:
	#data 0x01D2
loc_cE357f4:
	#data 0x01A1
loc_cE357f6:
	#data 0x0130
	#align4

loc_cE357F8_to_loc_cE36520_to_loc_cE3570E:
	#data loc_cE36520_to_loc_cE3570E
loc_cE357FC_to_loc_cE36530_to_loc_cE35720:
	#data loc_cE36530_to_loc_cE35720
loc_cE35800:
	#data loc_8c034DEE
loc_cE35804:
	#data loc_8c05933C
loc_cE35808:
	#data loc_8c0FDAB6
loc_cE3580c:
	#data loc_8c04223A
loc_cE35810:
	#data loc_8c02FD26
loc_cE35814:
	#data loc_8c0D13BC
loc_cE35818:
	#data 0xC2D55555
loc_cE3581c:
	#data 0x42D55555
loc_cE35820:
	#data 0xC31A4924
loc_cE35824:
	#data 0x413C9249
loc_cE35828:
	#data 0xBF676DB6

;==============================================
loc_cE3582C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE3593C,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	mov 0x5C,r1 ; r1 set to 0x5C
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6C
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_cE35934,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_cE358B4
	mov.b @(0x06,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0 ; r0 set to 0x39
	mov.b r0,@(0x06,r14)
	mov.w @(loc_cE35934,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_cE35936,pc),r0 ; r0 set to 0x1F9
	mov.b r3,@(r0,r14)
	mov.l @(loc_cE35940,pc),r3 ; r3 set to 0x8C0511B4
	jsr @r3
	mov r14,r4
	mov 0x5C,r0 ; r0 set to 0x5C
	fldi0 fr4
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	mov.l @(loc_cE35944,pc),r3 ; r3 set to 0x8C034E8C
	mov r14,r4
	fmov.s fr4,@(r0,r14)
	mov 0x02,r6 ; r6 set to 0x02
	lds.l @r15+,pr
	mov 0x0F,r5 ; r5 set to 0x0F
	jmp @r3
	mov.l @r15+,r14

loc_cE358B4:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE358BA:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_cE3593C,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_cE358D4
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_cE35948,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	lds.l @r15+,pr

loc_cE358D4:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_cE358DC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE3593C,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_cE358F6
	lds.l @r15+,pr
	mov.l @(loc_cE35948,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_cE358F6:
	mov.w @(0x3e,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce3591c
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	add 0x7D,r0
	mov.l @(r0,r14),r4
	add 0xEC,r0
	mov 0x21,r2
	mov.l r14,@(r0,r4)
	add 0x1E,r0
	mov.b @(r0,r14),r3
	mov.b r3,@(r0,r4)
	add 0xCF,r0
	mov.b r2,@(r0,r4)
	add 0x55,r0
	mov 0x10,r3
	mov.b r3,@(r0,r4)

loc_cE3591C:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE35922:
	mov r4,r3
	mov.l @(loc_cE3594C_to_loc_cE3653C_to_loc_cE35950,pc),r1 ; r1 set to 0xCE3653C
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE35934:
	#data 0x041C
loc_cE35936:
	#data 0x01F9
loc_cE35938:
	#data 0x014B
	#align4

loc_cE3593C:
	#data loc_8c034DEE
loc_cE35940:
	#data loc_8c0511B4
loc_cE35944:
	#data loc_8c034E8C
loc_cE35948:
	#data loc_8c051648
loc_cE3594C_to_loc_cE3653C_to_loc_cE35950:
	#data loc_cE3653C_to_loc_cE35950

;==============================================
loc_cE35950:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r13
	mov.b @(0x06,r13),r0
	mov.l @(loc_cE35AB0,pc),r3 ; r3 set to 0x8C034DEE
	add 0x01,r0
	mov.b r0,@(0x06,r13)
	jsr @r3
	mov r13,r4
	mov.w @(loc_cE35AA2,pc),r0 ; r0 set to 0x140
	mov 0x00,r2 ; r2 set to 0x00
	mov r15,r12
	mov r12,r1
	mov.b r2,@(r0,r13)
	mov 0x18,r0 ; r0 set to 0x18
	mov.w r0,@(0x1C,r13)
	mov.w @(loc_cE35AA4,pc),r0 ; r0 set to 0x1B0
	mov.l @(r0,r13),r3 ; r3 ??? bc r13 is ???
	add 0x18,r0 ; r0 set to 0x1C8
	mov.l r3,@(r0,r13)
	mov.l @(r0,r13),r14
	mov.l @(loc_cE35AB4,pc),r3 ; r3 set to 0x8C1294C8
	mov r14,r2 ; r2 ??? bc r14 is ???
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0C
	mov.l @(loc_cE35AB8,pc),r2 ; r2 set to 0x8C04CC1C
	mov r14,r5
	jsr @r2
	mov r13,r4
	mova @(loc_cE35ABC,pc),r0; r0 set to 0xCE35ABC
	fmov.s @r12,fr3 ; r3 ??? bc r12 is ???
	fmov.s @r0,fr4
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
	mov 0x5C,r0 ; r0 set to 0x5C
	fldi1 fr1
	fadd fr1,fr1
	fsub fr3,fr2
	fldi0 fr3
	mov r14,r1
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr3,@(r0,r14)
	mova @(loc_cE35AC0,pc),r0; r0 set to 0xCE35AC0
	fmov.s @r0,fr3
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr3,@(r0,r14)
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @(r0,r12),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	mov 0x6C,r0 ; r0 set to 0x6C
	fsub fr3,fr2
	fmov.s @(r0,r14),fr3
	mov 0x60,r0 ; r0 set to 0x60
	fmul fr4,fr3
	fdiv fr4,fr2
	fdiv fr1,fr3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.l @(loc_cE35AB4,pc),r3 ; r3 set to 0x8C1294C8
	mov r12,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0C
	mov.w @(loc_cE35AA6,pc),r0 ; r0 set to 0x134
	mov 0x00,r2 ; r2 set to 0x00
	mov 0x66,r3 ; r3 set to 0x66
	mov.w r2,@(r0,r14)
	add 0x02,r0 ; r0 set to 0x136
	mov.w r3,@(r0,r14)
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_cE359F4:
	mov.w @(loc_cE35AA8,pc),r0 ; r0 set to 0x1C8
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(loc_cE35AAA,pc),r3 ; r3 set to 0x2000
	sts.l pr,@-r15
	mov.l @(r0,r14),r13
	mov 0x48,r0 ; r0 set to 0x48
	mov.l @(r0,r13),r2
	add r3,r2
	mov.l r2,@(r0,r13)
	mova @(loc_cE35AC4,pc),r0; r0 set to 0xCE35AC4
	fmov.s @r0,fr4
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???
	fsub fr4,fr3
	fmov.s fr3,@(r0,r13)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r13),fr2
	fsub fr4,fr2
	fmov.s fr2,@(r0,r13)
	mov.w @(loc_cE35AA8,pc),r0 ; r0 set to 0x1C8
	mov.l @(r0,r14),r4
	mov 0x34,r0 ; r0 set to 0x34
	add r4,r1 ; r1 ??? bc r4 is ???
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(loc_cE35AA8,pc),r0 ; r0 set to 0x1C8
	mov.l @(r0,r14),r4
	mov 0x68,r1 ; r1 set to 0x68
	mov.l @(loc_cE35AB0,pc),r2 ; r2 set to 0x8C034DEE
	add r4,r1 ; r1 ??? bc r4 is ???
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @r1,fr3
	fmov.s @(r0,r4),fr2 ; r2 ??? bc r4 is ???
	mov 0x60,r1 ; r1 set to 0x60
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(loc_cE35AA8,pc),r0 ; r0 set to 0x1C8
	mov.l @(r0,r14),r4
	mov 0x38,r0 ; r0 set to 0x38
	add r4,r1 ; r1 ??? bc r4 is ???
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6C
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(loc_cE35AA8,pc),r0 ; r0 set to 0x1C8
	mov.l @(r0,r14),r4
	mov 0x60,r0 ; r0 set to 0x60
	add r4,r1 ; r1 ??? bc r4 is ???
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	jsr @r2
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0 ; r0 set to 0x5F
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0 ; r0 ??
	cmp/pl r0
	bt loc_cE35A9A
	mov.b @(0x06,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_cE35AAE,pc),r2 ; r2 set to 0xFF
	mov 0x0F,r6 ; r6 set to 0x0F
	add 0x01,r0
	mov r14,r4
	mov.b r0,@(0x06,r14)
	mov 0x15,r5 ; r5 set to 0x15
	mov.w @(loc_cE35AAC,pc),r0 ; r0 set to 0x12C
	mov.b r3,@(r0,r13)
	add 0x1D,r0 ; r0 set to 0x149
	mov.b r2,@(r0,r13)
	lds.l @r15+,pr
	mov.l @(loc_cE35AC8,pc),r3 ; r3 set to 0x8C034E8C
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_cE35A9A:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE35AA2:
	#data 0x0140
loc_cE35AA4:
	#data 0x01B0
loc_cE35AA6:
	#data 0x0134
loc_cE35AA8:
	#data 0x01C8
loc_cE35AAA:
	#data 0x2000
loc_cE35AAC:
	#data 0x012C
loc_cE35AAE:
	#data 0x00FF
	#align4

loc_cE35AB0:
	#data loc_8c034DEE
loc_cE35AB4:
	#data loc_8c1294C8
loc_cE35AB8:
	#data loc_8c04CC1C
loc_cE35ABC:
	#data 0x41C00000
loc_cE35AC0:
	#data 0xBF892492
loc_cE35AC4:
	#data 0x3D2AAAAB
loc_cE35AC8:
	#data loc_8c034E8C

;==============================================
loc_cE35ACC:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE35BD4,pc),r3 ; r3 set to 0x8C034DEE
	mov.w @(loc_cE35BC4,pc),r0 ; r0 set to 0x1C8
	jsr @r3
	mov.l @(r0,r14),r13
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_cE35B5E
	mov.b @(0x06,r14),r0
	mov.l @(loc_cE35BD8,pc),r4 ; r4 set to 0x8C26A518
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_cE35BC6,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt loc_cE35B0E
	mova @(loc_cE35BDC,pc),r0; r0 set to 0xCE35BDC
	fmov.s @r0,fr3
	mov.w @(loc_cE35BC8,pc),r0 ; r0 set to 0x8C
	fmov.s @(r0,r4),fr2
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr2,fr1
	bf loc_cE35B26
	mov.w @(loc_cE35BC6,pc),r0 ; r0 set to 0x130
	mov 0x00,r2 ; r2 set to 0x00
	bra loc_cE35B26
	mov.w r2,@(r0,r14)

loc_cE35B0E:
	mova @(0xd0,pc),r0
	fmov @r0, fr3
	mov.w @(0xb4,pc),r0
	fmov @(r0,r4), fr2
	mov 0x34,r0
	fmov @(r0,r14), fr1
	fadd fr3, fr2
	fcmp/gt fr1, fr2
	bf loc_ce35b26
	mov.w @(0xa2,pc),r0
	mov 0x01,r2
	mov.w r2,@(r0,r14)

loc_cE35B26:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr3
	mov r0,r8 ; r8 set to 0x34
	fmov.s fr3,@(r0,r13)
	mov.w @(loc_cE35BC6,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_cE35B40
	add r13,r8 ; r8 ??? bc r13 is ???
	mov.l @(loc_cE35BE4,pc),r1 ; r1 set to 0x433AAAAA
	lds r1,fpul
	bra loc_cE35B46
	fsts fpul,fr3

loc_cE35B40:
	mov.l @(loc_cE35BE8,pc),r2 ; r2 set to 0xC33AAAAA
	lds r2,fpul
	fsts fpul,fr3

loc_cE35B46:
	fmov.s @r8,fr2 ; r2 ??? bc r8 is ???
	mov 0x1E,r6 ; r6 set to 0x1E,r6 set to 0x1E
	mov.l @(loc_cE35BEC,pc),r3 ; r3 set to 0x8C034E8C,r3 set to 0x8C034E8C
	mov 0x15,r5 ; r5 set to 0x15,r5 set to 0x15
	fadd fr3,fr2
	mov r14,r4
	fmov.s fr2,@r8
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_cE35B5E:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_cE35B68:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE35BD4,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	mov.w @(loc_cE35BCC,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_cE35BBE
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r14)
	mov 0x09,r5 ; r5 set to 0x09
	mov.b @(0x06,r14),r0
	mov 0x02,r6 ; r6 set to 0x02
	mov.l @(loc_cE35BF0,pc),r3 ; r3 set to 0x8C0D0584
	add 0x01,r0 ; r0 set to 0x142
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf/s loc_cE35BBE
	mov.l r0,@(0x14,r14)
	mov.w @(loc_cE35BC4,pc),r0 ; r0 set to 0x1C8
	mov 0x01,r5 ; r5 set to 0x01
	fldi1 fr4
	mov.l @(r0,r14),r4
	mov.w @(loc_cE35BCE,pc),r0 ; r0 set to 0x12C
	mov.l @(loc_cE35BF4,pc),r3 ; r3 set to 0x8C02FD26
	mov.b r5,@(r0,r4)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s fr4,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr4,@(r0,r4)
	mov.w @(loc_cE35BD0,pc),r0 ; r0 set to 0x1B4
	mov.l r14,@(r0,r4)
	add 0x42,r0 ; r0 set to 0x1F6
	jsr @r3
	mov.b r5,@(r0,r4)
	lds.l @r15+,pr
	mov.l @(loc_cE35BF8,pc),r2 ; r2 set to 0x8C051648
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_cE35BBE:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE35BC4:
	#data 0x01C8
loc_cE35BC6:
	#data 0x0130
loc_cE35BC8:
	#data 0x008C
loc_cE35BCa:
	#data 0x0088
loc_cE35BCC:
	#data 0x0141
loc_cE35BCE:
	#data 0x012C
loc_cE35BD0:
	#data 0x01B4
	#align4

loc_cE35BD4:
	#data loc_8c034DEE
loc_cE35BD8:
	#data loc_8c26A518
loc_cE35BDC:
	#data 0xC3555555
loc_cE35BE0:
	#data 0x43555555
loc_cE35BE4:
	#data 0x433AAAAA
loc_cE35BE8:
	#data 0xC33AAAAA
loc_cE35BEC:
	#data loc_8c034E8C
loc_cE35BF0:
	#data loc_8c0D0584
loc_cE35BF4:
	#data loc_8c02FD26
loc_cE35BF8:
	#data loc_8c051648

;==============================================
loc_cE35BFC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(loc_cE35CEC,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	mov.w @(loc_cE35CE2,pc),r0 ; r0 set to 0x141
	mov.l @(0x14,r14),r4
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_cE35C9E
	mov.b @(0x06,r14),r0
	mov 0x15,r5 ; r5 set to 0x15
	mov.l @(loc_cE35CF0,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x10,r6 ; r6 set to 0x10
	add 0x01,r0 ; r0 set to 0x142
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_cE35CE4,pc),r0 ; r0 set to 0x1C8
	mov 0x01,r5 ; r5 set to 0x01
	fldi1 fr4
	mov 0x3D,r3 ; r3 set to 0x3D
	mov.l @(r0,r14),r4
	mov.w @(loc_cE35CE6,pc),r0 ; r0 set to 0x12C
	mov.b r5,@(r0,r4)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s fr4,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr4,@(r0,r4)
	mov.w @(loc_cE35CE8,pc),r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r4)
	add 0x13,r0 ; r0 set to 0x1B4
	mov.l @(loc_cE35CF4,pc),r3 ; r3 set to 0x8C02FDB0
	mov.l r14,@(r0,r4)
	add 0x42,r0 ; r0 set to 0x1F6
	jsr @r3
	mov.b r5,@(r0,r4)
	mov.l @(loc_cE35CF8,pc),r2 ; r2 set to 0x8C042008
	mov 0x2B,r5 ; r5 set to 0x2B
	jsr @r2
	mov r14,r4
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov.w @(loc_cE35CEA,pc),r0 ; r0 set to 0x130
	fmov.s fr3,@r15
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_cE35C64
	mova @(loc_cE35CFC,pc),r0; r0 set to 0xCE35CFC
	bra loc_cE35C68
	fmov.s @r0,fr3

loc_cE35C64:
	mova @(0x98,pc),r0
	fmov @r0, fr3

loc_cE35C68:
	fmov @r15, fr2
	mov 0x38,r0
	mov.l @(0x98,pc),r3
	mov 0x01,r5
	fadd fr3, fr2
	fmov fr2,@r15
	fmov @(r0,r14), fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	mova @(0x88,pc),r0
	fmov @r0, fr3
	mov 0x04,r0
	fmov @(r0,r15), fr2
	mov 0x04,r0
	fadd fr3, fr2
	fmov fr2,@(r0,r15)
	jsr @r3
	mov r15,r4
	mov.l @(0x7c,pc),r2
	mov 0x49,r5
	jsr @r2
	mov r14,r4
	mov.l @(0x78,pc),r3
	mov 0x0D,r5
	mov 0x07,r6
	jsr @r3
	mov r14,r4

loc_cE35C9E:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE35CA6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE35CEC,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_cE35CCA
	mov.l @(loc_cE35D10,pc),r3 ; r3 set to 0x8C02FEC4
	mov 0x0D,r5 ; r5 set to 0x0D
	mov 0x00,r6 ; r6 set to 0x00
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_cE35D14,pc),r2 ; r2 set to 0x8C051648
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_cE35CCA:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE35CD0:
	mov r4,r3
	mov.l @(loc_cE35D18_to_loc_cE36554_to_loc_cE35D1C,pc),r1 ; r1 set to 0xCE36554
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE35CE2:
	#data 0x0141
loc_cE35CE4:
	#data 0x01C8
loc_cE35CE6:
	#data 0x012C
loc_cE35CE8:
	#data 0x01A1
loc_cE35CEA:
	#data 0x0130
	#align4

loc_cE35CEC:
	#data loc_8c034DEE
loc_cE35CF0:
	#data loc_8c034E8C
loc_cE35CF4:
	#data loc_8c02FDB0
loc_cE35CF8:
	#data loc_8c042008
loc_cE35CFC:
	#data 0x433AAAAA
loc_cE35D00:
	#data 0xC33AAAAA
loc_cE35D04:
	#data 0x42A00000
loc_cE35D08:
	#data loc_8c1025CA
loc_cE35D0c:
	#data loc_8c04223A
loc_cE35D10:
	#data loc_8c02FEC4
loc_cE35D14:
	#data loc_8c051648
loc_cE35D18_to_loc_cE36554_to_loc_cE35D1C:
	#data loc_cE36554_to_loc_cE35D1C

;==============================================
loc_cE35D1C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	mov.b @(0x6,r13),r0
	add 0x01,r0
	mov.b r0,@(0x6,r13)
	mov 0x10,r0
	mov.w r0,@(0x1c,r13)
	mova @(0x148,pc),r0
	fmov @r0, fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r13)
	mov 0x60,r0
	fldi0 fr3
	fmov fr3,@(r0,r13)
	mova @(0x13c,pc),r0
	fmov @r0, fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r13)
	mova @(0x138,pc),r0
	fmov @r0, fr3
	mov 0x68,r0
	fmov fr3,@(r0,r13)
	mov.w @(0x120,pc),r0
	mov.w @(r0,r13),r3
	tst r3,r3
	bt.s loc_ce35d66
	mov 0x05,r14
	mov 0x5C,r0
	fmov @(r0,r13), fr3
	fneg fr3
	fmov fr3,@(r0,r13)
	mov 0x68,r0
	fmov @(r0,r13), fr3
	fneg fr3
	fmov fr3,@(r0,r13)

loc_cE35D66:
	mov 0x22,r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	tst 0x01,r0
	bt loc_ce35d82
	mov 0x5C,r0
	fmov @(r0,r13), fr3
	mov 0x06,r14
	fneg fr3
	fmov fr3,@(r0,r13)
	mov 0x68,r0
	fmov @(r0,r13), fr3
	fneg fr3
	fmov fr3,@(r0,r13)

loc_cE35D82:
	mov.l @(0x100,pc),r3
	mov 0x02,r5
	mov r14,r6
	jsr @r3
	mov r13,r4
	mov.l @(0xf8,pc),r2
	mov 0x0F,r5
	mov 0x08,r6
	jsr @r2
	mov r13,r4
	tst r0,r0
	bt.s loc_ce35dae
	mov r0,r4
	mov 0x5C,r0
	fmov @(r0,r13), fr3
	fmov fr3,@(r0,r4)
	mov.w @(0xca,pc),r0
	mov.w @(r0,r13),r3
	mov.w r3,@(r0,r4)
	mov 0x22,r0
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r4)

loc_cE35DAE:
	mov.l @(0xdc,pc),r3
	mov 0x1E,r5
	jsr @r3
	mov r13,r4
	mov.l @(0xd4,pc),r2
	mov 0x17,r5
	jsr @r2
	mov r13,r4
	mov.w @(0xb0,pc),r0
	mov 0x0A,r4
	mov.b r4,@(r0,r13)
	mov.w @(0xac,pc),r0
	mov.b r4,@(r0,r13)
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_cE35DD0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xb8,pc),r3
	jsr @r3
	mov r4,r14
	mov.w @(0x98,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce35de8
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)


loc_cE35DE8:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE35DEE:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x9c,pc),r3
	jsr @r3
	mov r4,r14
	mov 0x5C,r1
	add r14,r1
	mov 0x34,r0
	fmov @r1, fr3
	fmov @(r0,r14), fr2
	mov 0x68,r1
	add r14,r1
	fadd fr3, fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14), fr2
	fmov @r1, fr3
	fadd fr3, fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x1c,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1c,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_ce35e2c
	mov.b @(0x6,r14),r0
	fldi0 fr3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x68,r0
	fmov fr3,@(r0,r14)

loc_cE35E2C:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE35E32:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.l @(loc_cE35E90,pc),r3 ; r3 set to 0x8C034DEE
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	sts.l pr,@-r15
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	mov 0x68,r1 ; r1 set to 0x68
	fmov.s @(r0,r14),fr2
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_cE35E9C
	mov.l @(loc_cE35E94,pc),r3 ; r3 set to 0x8C05218A
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_cE35E98,pc),r2 ; r2 set to 0x8C05176E
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_cE35E70:
	#data 0x0130
loc_cE35E72:
	#data 0x01F2
loc_cE35E74:
	#data 0x01F3
loc_cE35E76:
	#data 0x0141
	#align4

loc_cE35E78:
	#data 0xBF4DB6DB
loc_cE35E7c:
	#data 0xC17D5555
loc_cE35E80:
	#data 0x3EA00000
loc_cE35E84:
	#data loc_8c034E8C
loc_cE35E88:
	#data loc_8c0D0584
loc_cE35E8c:
	#data loc_8c042008
loc_cE35E90:
	#data loc_8c034DEE
loc_cE35E94:
	#data loc_8c05218A
loc_cE35E98:
	#data loc_8c05176E

;----------------------------------------------
loc_cE35E9C:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE35EA2:
	mov.l r4,@-r15
	mov r4,r0
	nop
	mov.w @(loc_cE35F7E,pc),r1 ; r1 set to 0x1F7
	mov.l @(loc_cE35F88_to_loc_cE36564_to_loc_cE35EBA,pc),r2 ; r2 set to 0xCE36564
	mov.b @(r0,r1),r0
	extu.b r0,r0
	and 0x3F,r0
	shll2 r0
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

loc_cE35EBA:
	mov.w @(loc_cE35F80,pc),r0 ; r0 set to 0x1C8
	mov r4,r5
	mov.l r4,@-r15
	mov.l @(loc_cE35F8C,pc),r3 ; r3 set to 0x8C04CE3A
	mov.l @(r0,r4),r4
	jmp @r3
	add 0x04,r15

loc_cE35EC8:
	mov.w @(loc_cE35F80,pc),r0 ; r0 set to 0x1C8
	mov r4,r5
	mov.l r4,@-r15
	mov.l @(loc_cE35F90,pc),r3 ; r3 set to 0x8C04CC1C
	mov.l @(r0,r4),r4
	jmp @r3
	add 0x04,r15

loc_cE35ED6:
	rts
	nop

;==============================================
loc_cE35EDA:
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x05,r4)
	mov.b r0,@(0x07,r4)
	mov.b r0,@(0x06,r4)
	mov.w @(loc_cE35F82,pc),r0 ; r0 set to 0x4C9
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	cmp/eq 0x00,r0
	bt/s loc_cE35EF8
	mov 0x0C,r5 ; r5 set to 0x0C
	cmp/eq 0x01,r0
	bt loc_cE35EF8
	cmp/eq 0x02,r0
	bt loc_cE35EFE
	bra loc_cE35F04
	nop

loc_cE35EF8:
	mov.w @(loc_cE35F84,pc),r0 ; r0 set to 0x1E9
	bra loc_cE35F04
	mov.b r5,@(r0,r4)

loc_cE35EFE:
	mov.w @(0x82,pc),r0
	mov 0x04,r2
	mov.b r2,@(r0,r4)

loc_cE35F04:
	mov.l @(loc_cE35F94,pc),r2 ; r2 set to 0x8C0530D8
	jmp @r2
	mov 0x1D,r5

loc_cE35F0A:
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x05,r4)
	mov.b r0,@(0x07,r4)
	mov.b r0,@(0x06,r4)
	mov.w @(loc_cE35F82,pc),r0 ; r0 set to 0x4C9
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	cmp/eq 0x00,r0
	bt/s loc_cE35F28
	mov 0x0C,r5 ; r5 set to 0x0C
	cmp/eq 0x01,r0
	bt loc_cE35F28
	cmp/eq 0x02,r0
	bt loc_cE35F2E
	bra loc_cE35F34
	nop
	
loc_cE35F28:
	mov.w @(loc_cE35F84,pc),r0 ; r0 set to 0x1E9
	bra loc_cE35F34
	mov.b r5,@(r0,r4)

loc_cE35F2E:
	mov.w @(0x52,pc),r0
	mov 0x04,r2
	mov.b r2,@(r0,r4)

loc_cE35F34:
	mov.l @(loc_cE35F94,pc),r2 ; r2 set to 0x8C0530D8
	jmp @r2
	mov 0x1D,r5

loc_cE35F3A:
	mov 0x00,r5 ; r5 set to 0x00
	mov r5,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x05,r4)
	mov.b r0,@(0x07,r4)
	mov.b r0,@(0x06,r4)
	mov.w @(loc_cE35F82,pc),r0 ; r0 set to 0x4C9
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	cmp/eq 0x00,r0
	bt loc_cE35F5A
	cmp/eq 0x01,r0
	bt loc_cE35F66
	cmp/eq 0x02,r0
	bt loc_cE35F6C
	bra loc_cE35F78
	nop

loc_cE35F5A:
	mov.w @(loc_cE35F84,pc),r0 ; r0 set to 0x1E9
	mov 0x09,r3 ; r3 set to 0x09
	mov.b r3,@(r0,r4)
	add 0xBA,r0 ; r0 set to 0x1A3
	bra loc_cE35F78
	mov.b r5,@(r0,r4)

loc_cE35F66:
	mov.w @(loc_cE35F84,pc),r0 ; r0 set to 0x1E9
	bra loc_cE35F72
	mov.b r5,@(r0,r4)

loc_cE35F6C:
	mov.w @(0x14,pc),r0
	mov 0x02,r3
	mov.b r3,@(r0,r4)

loc_cE35F72:
	mov.w @(0x10,pc),r0
	mov 0x01,r2
	mov.b r2,@(r0,r4)

loc_cE35F78:
	mov.l @(loc_cE35F94,pc),r2 ; r2 set to 0x8C0530D8
	jmp @r2
	mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE35F7E:
	#data 0x01F7
loc_cE35F80:
	#data 0x01C8
loc_cE35F82:
	#data 0x04C9
loc_cE35F84:
	#data 0x01E9
loc_cE35F86:
	#data 0x01A3
	#align4

loc_cE35F88_to_loc_cE36564_to_loc_cE35EBA:
	#data loc_cE36564_to_loc_cE35EBA
loc_cE35F8C:
	#data loc_8c04CE3A
loc_cE35F90:
	#data loc_8c04CC1C
loc_cE35F94:
	#data loc_8c0530D8

;==============================================
loc_cE35F98:
	mov 0x00,r5 ; r5 set to 0x00
	mov r5,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x05,r4)
	mov.b r0,@(0x07,r4)
	mov.b r0,@(0x06,r4)
	mov.w @(loc_cE360D0,pc),r0 ; r0 set to 0x4C9
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	cmp/eq 0x00,r0
	bt loc_cE35FB8
	cmp/eq 0x01,r0
	bt loc_cE35FC0
	cmp/eq 0x02,r0
	bt loc_cE35FC6
	bra loc_cE35FD0
	nop

loc_cE35FB8:
	mov.w @(loc_cE360D2,pc),r0 ; r0 set to 0x1E9
	mov 0x01,r3 ; r3 set to 0x01
	bra loc_cE35FCC
	mov.b r3,@(r0,r4)

loc_cE35FC0:
	mov.w @(loc_cE360D2,pc),r0 ; r0 set to 0x1E9
	bra loc_cE35FCC
	mov.b r5,@(r0,r4)

loc_cE35FC6:
	mov.w @(0x108,pc),r0
	mov 0x02,r3
	mov.b r3,@(r0,r4)

loc_cE35FCC:
	mov.w @(loc_cE360D4,pc),r0 ; r0 set to 0x1A3
	mov.b r5,@(r0,r4)

loc_cE35FD0:
	mov.l @(loc_cE360DC,pc),r2 ; r2 set to 0x8C0530D8,r2 set to 0x8C0530D8
	jmp @r2
	mov 0x15,r5

loc_cE35FD6:
	mov r4,r3
	mov.l @(loc_cE360E0_to_loc_cE36574_to_loc_cE35FE8,pc),r1 ; r1 set to 0xCE36574
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_cE35FE8:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0xf4,pc),r3
	jsr @r3
	mov 0x00,r5
	mov.b @(0x6,r14),r0
	mov 0x02,r3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(0xd6,pc),r0
	mov.b r3,@(r0,r14)
	mova @(0xe4,pc),r0
	fmov @r0, fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0xcc,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_ce36018
	mov 0x5C,r0
	fmov @(r0,r14), fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_cE36018:
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mova @(0xcc,pc),r0
	fmov @r0, fr3
	mov 0x60,r0
	mov 0x47,r3
	fmov fr3,@(r0,r14)
	mova @(0xc4,pc),r0
	fmov @r0, fr3
	mov 0x6C,r0
	mov 0x00,r4
	fmov fr3,@(r0,r14)
	mov 0x14,r5
	mov.w @(0xa2,pc),r0
	mov r4,r6
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0xac,pc),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	lds.l @r15+,pr
	mov.l @(0x9c,pc),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_cE36062:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE360FC,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.l @(loc_cE36100,pc),r3 ; r3 set to 0x8C052CE2
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6C
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
	extu.b r0,r0 ; r0 set to 0x60
	tst r0,r0
	bt loc_cE360CA
	mov.b @(0x06,r14),r0
	mov 0x14,r5 ; r5 set to 0x14
	mov.l @(loc_cE360F8,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x02,r6 ; r6 set to 0x02
	add 0x01,r0 ; r0 set to 0x61
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_cE36104,pc),r2 ; r2 set to 0x8C0511B4
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_cE360CA:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE360D0:
	#data 0x04C9
loc_cE360D2:
	#data 0x01E9
loc_cE360D4:
	#data 0x01A3
	#data 0x01F9
	#data 0x01D2
	#data 0x01A1
	#align4

loc_cE360DC:
	#data loc_8c0530D8
loc_cE360E0_to_loc_cE36574_to_loc_cE35FE8:
	#data loc_cE36574_to_loc_cE35FE8
loc_cE360E4:
	#data loc_8c035162
loc_cE360E8:
	#data 0x41F00000
loc_cE360Ec:
	#data 0x40892492
loc_cE360f0:
	#data 0xBF4DB6DB
loc_cE360f4:
	#data loc_8c2896B0

loc_cE360F8:
	#data loc_8c034E8C
loc_cE360FC:
	#data loc_8c034DEE
loc_cE36100:
	#data loc_8c052CE2
loc_cE36104:
	#data loc_8c0511B4

;==============================================
loc_cE36108:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_cE36170,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_cE3612A
	mov.l @(loc_cE36174,pc),r3 ; r3 set to 0x8C035162
	mov 0x00,r5 ; r5 set to 0x00
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_cE36178,pc),r2 ; r2 set to 0x8C051854
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_cE3612A:
	mov.w @(0x3a,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce36136
	mov 0x00,r3
	mov.b r3,@(r0,r14)

loc_cE36136:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14


;==============================================
loc_cE3613C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(loc_cE3616A,pc),r3 ; r3 set to 0x2A4
	mov r4,r14
	mov.l r4,@r15
	mov 0x00,r5 ; r5 set to 0x00
	add r3,r14
	mov.w @(loc_cE3616C,pc),r6 ; r6 set to 0x80
	mov.w @(0x1E,r14),r0
	mov r3,r2 ; r2 set to 0x2A4
	mov.l @(loc_cE3617C,pc),r1 ; r1 set to 0x8C129728
	mov.w r0,@(0x04,r15)
	mov.l @r15,r4
	jsr @r1
	add r2,r4
	mov.w @(0x04,r15),r0
	mov.w r0,@(0x1E,r14)
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE36168:
	#data 0x0141
loc_cE3616A:
	#data 0x02A4
loc_cE3616C:
	#data 0x0080
	#align4

loc_cE36170:
	#data loc_8c034DEE
loc_cE36174:
	#data loc_8c035162
loc_cE36178:
	#data loc_8c051854
loc_cE3617C:
	#data loc_8c129728

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE36180:
	#data 0x18 0x18 0x18
	#data 0x14 0x14 0x14
	#data 0x10 0x10

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
;Chains
loc_cE36188:
	#data 0x01 0x02 0x00 0x02
loc_cE3618C:
	#data 0xFF 0x02 0x01 0x02
loc_cE36190:
	#data 0xFF 0xFF 0xFF 0x02
loc_cE36194:
	#data 0x01 0x02 0x01 0x02
loc_cE36198:
	#data 0xFF 0x02 0xFF 0x02
loc_cE3619C:
	#data 0xFF 0xFF 0xFF 0xFF

loc_cE361A0:
	#data 0x01 0x02 0x00 0x02
loc_cE361A4:
	#data 0xFF 0x02 0x01 0x02
loc_cE361A8:
	#data 0xFF 0xFF 0xFF 0x02
loc_cE361AC:
	#data 0x01 0x02 0x01 0x02
loc_cE361B0:
	#data 0xFF 0x02 0xFF 0x02
loc_cE361B4:
	#data 0xFF 0xFF 0xFF 0xFF

loc_cE361B8:
	#data 0x01 0x02 0x00 0x02
loc_cE361BC:
	#data 0xFF 0x02 0x01 0x02
loc_cE361C0:
	#data 0xFF 0xFF 0xFF 0x02
loc_cE361C4:
	#data 0x01 0x02 0x01 0x02
loc_cE361C8:
	#data 0xFF 0x02 0xFF 0x02
loc_cE361CC:
	#data 0xFF 0xFF 0xFF 0xFF

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE361D0:
	#data 0x0003
	#data 0x0000 0x0000 0x0000
	#data 0x1000 0x1800 0x0800 0x0300

loc_cE361E0:
	#data 0x0004
	#data 0x000A 0x0001 0x0000 0x0300

loc_cE361EA:
	#data 0x0003
	#data 0x0000 0x0002 0x0000
	#data 0x0800 0x1000 0x1800 0x0300

loc_cE361FA:
	#data 0x0005
	#data 0x1020 0x0003 0x0000
	#data 0x0400 0x1400 0x1000 0x1800 0x0800 0x0060

loc_cE3620E:
	#data 0x0003
	#data 0x8100 0x0004 0x0000
	#data 0x1000 0x1800 0x0800 0x0300

loc_cE3621E:
	#data 0x0005
	#data 0x1000 0x0005 0x0000
	#data 0x0800 0x1800 0x1000 0x1400 0x0400 0x0300

loc_cE36232:
	#data 0x0003
	#data 0x9100 0x0006 0x0000
	#data 0x1000 0x1800 0x0800 0x0060

loc_cE36242:
	#data 0x0003
	#data 0x9100 0x0007 0x0000
	#data 0x1000 0x1400 0x0400 0x0300

loc_cE36252:
	#data 0x0003
	#data 0x1000 0x000B 0x0000
	#data 0x1000 0x1400 0x0400 0x0060

	#align4
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
PL14_jumptable:
	#data loc_cE306E6 loc_cE3001C loc_cE30774 loc_cE30E1A
	#data loc_cE313DE loc_cE31570 loc_cE316CE loc_cE31AAE
	#data loc_cE31C2E loc_cE35454 loc_cE35558 loc_cE356F0
	#data loc_cE35EA2 loc_cE305EC loc_cE35FD6 loc_cE31308
	#data loc_cE35EDA loc_cE35F0A loc_cE35F3A loc_cE35F98
	#data 0x00000000  loc_cE35CD0 0x00000000  loc_cE3613C
	#data 0x00000000  0x00000000  0x00000000  0x00000000

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE362D4_to_loc_cE30788:
	#data loc_cE30788
	#data loc_cE30B8C
	#data loc_cE30BB4
	#data loc_cE30788

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE362E4_to_loc_cE30E3C:
#data loc_cE30E3C

loc_cE362E8_to_loc_cE311B0:
#data loc_cE311B0

loc_cE362EC_to_loc_cE3119A:
#data loc_cE3119A

loc_cE362F0_to_loc_cE30E2E:
#data loc_cE30E2E

loc_cE362F4_to_loc_cE313F0:
#data loc_cE313F0

loc_cE362F8_to_loc_cE31498:
#data loc_cE31498

loc_cE362FC_to_loc_cE31516:
#data loc_cE31516

loc_cE36300_to_loc_cE315A8:
#data loc_cE315A8

loc_cE36304_to_loc_cE3160A:
#data loc_cE3160A

loc_cE36308_to_loc_cE316AC:
#data loc_cE316AC

loc_cE3630C_to_loc_cE31710:
#data loc_cE31710

loc_cE36310_to_loc_cE317C2:
#data loc_cE317C2

loc_cE36314_to_loc_cE31868:
#data loc_cE31868

loc_cE36318_to_loc_cE3190A:
#data loc_cE3190A

loc_cE3631C_to_loc_cE319D8:
#data loc_cE319D8

loc_cE36320_to_loc_cE31A08:
#data loc_cE31A08

loc_cE36324_to_loc_cE31A8E:
#data loc_cE31A8E

loc_cE36328_to_loc_cE31AE2:
#data loc_cE31AE2

loc_cE3632C_to_loc_cE31BC6:
#data loc_cE31BC6

loc_cE36330_to_loc_cE31BFA:
#data loc_cE31BFA

loc_cE36334_to_loc_cE31BE0:
#data loc_cE31BE0

loc_cE36338_to_loc_cE31C14:
#data loc_cE31C14

loc_cE3633C_to_loc_cE31AF4:
#data loc_cE31AF4

loc_cE36340_to_loc_cE31BB8:
#data loc_cE31BB8

loc_cE36344_to_loc_cE31BBE:
#data loc_cE31BBE

loc_cE36348_to_loc_cE31BC2:
#data loc_cE31BC2

loc_cE3634C_to_loc_cE31C58:
#data loc_cE31C58

loc_cE36350_to_loc_cE31DE6:
#data loc_cE31DE6

loc_cE36354_to_loc_cE320A8:
#data loc_cE320A8

loc_cE36358_to_loc_cE32358:
#data loc_cE32358

loc_cE3635C_to_loc_cE3251C:
#data loc_cE3251C

loc_cE36360_to_loc_cE32744:
#data loc_cE32744

loc_cE36364_to_loc_cE32904:
#data loc_cE32904

loc_cE36368_to_loc_cE330FA:
#data loc_cE330FA

loc_cE3636C_to_loc_cE348B6:
#data loc_cE348B6

loc_cE36370_to_loc_cE34930:
#data loc_cE34930

loc_cE36374_to_loc_cE34B0A:
#data loc_cE34B0A

loc_cE36378_to_loc_cE33F9C:
#data loc_cE33F9C

loc_cE3637C_to_loc_cE34CA0:
#data loc_cE34CA0

loc_cE36380_to_loc_cE31C98:
#data loc_cE31C98

loc_cE36384_to_loc_cE31D4E:
#data loc_cE31D4E

loc_cE36388_to_loc_cE31E26:
#data loc_cE31E26

loc_cE3638C_to_loc_cE31F4A:
#data loc_cE31F4A

loc_cE36390_to_loc_cE3201C:
#data loc_cE3201C

loc_cE36394_to_loc_cE320BE:
#data loc_cE320BE

loc_cE36398_to_loc_cE321FA:
#data loc_cE321FA

loc_cE3639C_to_loc_cE32280:
#data loc_cE32280

loc_cE363A0_to_loc_cE3236E:
#data loc_cE3236E

loc_cE363A4_to_loc_cE32430:
#data loc_cE32430

loc_cE363A8_to_loc_cE324AC:
#data loc_cE324AC

loc_cE363AC_to_loc_cE3255C:
#data loc_cE3255C

loc_cE363B0_to_loc_cE32616:
#data loc_cE32616

loc_cE363B4_to_loc_cE326D2:
#data loc_cE326D2

loc_cE363B8_to_loc_cE327C0:
#data loc_cE327C0

loc_cE363BC_to_loc_cE3282C:
#data loc_cE3282C

loc_cE363C0_to_loc_cE328AC:
#data loc_cE328AC

loc_cE363C4_to_loc_cE3294A:
#data loc_cE3294A

loc_cE363C8_to_loc_cE329CE:
#data loc_cE329CE

loc_cE363CC_to_loc_cE32AC0:
#data loc_cE32AC0

loc_cE363D0_to_loc_cE32B02:
#data loc_cE32B02

loc_cE363D4_to_loc_cE32B7C:
#data loc_cE32B7C

loc_cE363D8_to_loc_cE32BF6:
#data loc_cE32BF6

loc_cE363DC_to_loc_cE32CA8:
#data loc_cE32CA8

loc_cE363E0_to_loc_cE32D5C:
#data loc_cE32D5C

loc_cE363E4_to_loc_cE32E32:
#data loc_cE32E32

loc_cE363E8_to_loc_cE32EA2:
#data loc_cE32EA2

loc_cE363EC_to_loc_cE32F34:
#data loc_cE32F34

loc_cE363F0_to_loc_cE32F8A:
#data loc_cE32F8A

loc_cE363F4_to_loc_cE33026:
#data loc_cE33026

loc_cE363F8_to_loc_cE33156:
#data loc_cE33156

loc_cE363FC_to_loc_cE334E6:
#data loc_cE334E6

loc_cE36400_to_loc_cE33732:
#data loc_cE33732

loc_cE36404_to_loc_cE33A78:
#data loc_cE33A78

loc_cE36408_to_loc_cE33B0C:
#data loc_cE33B0C

loc_cE3640C_to_loc_cE3319C:
#data loc_cE3319C

loc_cE36410_to_loc_cE33258:
#data loc_cE33258

loc_cE36414_to_loc_cE33360:
#data loc_cE33360

loc_cE36418_to_loc_cE3348A:
#data loc_cE3348A

loc_cE3641C_to_loc_cE33554:
#data loc_cE33554

loc_cE36420_to_loc_cE33588:
#data loc_cE33588

loc_cE36424_to_loc_cE33602:
#data loc_cE33602

loc_cE36428_to_loc_cE33626:
#data loc_cE33626

loc_cE3642C_to_loc_cE336BA:
#data loc_cE336BA

loc_cE36430_to_loc_cE3383A:
#data loc_cE3383A

loc_cE36434_to_loc_cE3390A:
#data loc_cE3390A

loc_cE36438_to_loc_cE33950:
#data loc_cE33950

loc_cE3643C_to_loc_cE339A6:
#data loc_cE339A6

loc_cE36440_to_loc_cE33A10:
#data loc_cE33A10

loc_cE36444_to_loc_cE33A44:
#data loc_cE33A44

loc_cE36448_to_loc_cE33AB6:
#data loc_cE33AB6

loc_cE3644C_to_loc_cE33AEC:
#data loc_cE33AEC

loc_cE36450_to_loc_cE33B4C:
#data loc_cE33B4C

loc_cE36454_to_loc_cE33BCC:
#data loc_cE33BCC

loc_cE36458_to_loc_cE33CE8:
#data loc_cE33CE8

loc_cE3645C_to_loc_cE33FB2:
#data loc_cE33FB2

loc_cE36460_to_loc_cE34090:
#data loc_cE34090

loc_cE36464_to_loc_cE34124:
#data loc_cE34124

loc_cE36468_to_loc_cE3421A:
#data loc_cE3421A

loc_cE3646C_to_loc_cE342C0:
#data loc_cE342C0

loc_cE36470_to_loc_cE34382:
#data loc_cE34382

loc_cE36474_to_loc_cE34448:
#data loc_cE34448

loc_cE36478_to_loc_cE34558:
#data loc_cE34558

loc_cE3647C_to_loc_cE345B0:
#data loc_cE345B0

loc_cE36480_to_loc_cE3466C:
#data loc_cE3466C

loc_cE36484_to_loc_cE346FE:
#data loc_cE346FE

loc_cE36488_to_loc_cE34970:
#data loc_cE34970

loc_cE3648C_to_loc_cE349FA:
#data loc_cE349FA

loc_cE36490_to_loc_cE34A74:
#data loc_cE34A74

loc_cE36494_to_loc_cE34A92:
#data loc_cE34A92

loc_cE36498_to_loc_cE34AE4:
#data loc_cE34AE4

loc_cE3649C_to_loc_cE34B1C:
#data loc_cE34B1C

loc_cE364A0_to_loc_cE34BCC:
#data loc_cE34BCC

loc_cE364A4_to_loc_cE34C0A:
#data loc_cE34C0A

loc_cE364A8_to_loc_cE34CE8:
#data loc_cE34CE8

loc_cE364AC_to_loc_cE34D6A:
#data loc_cE34D6A

loc_cE364B0_to_loc_cE34DC2:
#data loc_cE34DC2

loc_cE364B4_to_loc_cE34E68:
#data loc_cE34E68

loc_cE364B8_to_loc_cE34E8C:
#data loc_cE34E8C

loc_cE364BC_to_loc_cE34F94:
#data loc_cE34F94

loc_cE364C0_to_loc_cE35014:
#data loc_cE35014

loc_cE364C4_to_loc_cE35294:
#data loc_cE35294

loc_cE364C8_to_loc_cE33B0C:
#data loc_cE33B0C

loc_cE364CC_to_loc_cE3319C:
#data loc_cE3319C

loc_cE364D0_to_loc_cE33258:
#data loc_cE33258

loc_cE364D4_to_loc_cE33360:
#data loc_cE33360

loc_cE364D8_to_loc_cE34D34:
#data loc_cE34D34

loc_cE364DC_to_loc_cE35112:
#data loc_cE35112

loc_cE364E0_to_loc_cE3519E:
#data loc_cE3519E

loc_cE364E4_to_loc_cE35218:
#data loc_cE35218

loc_cE364E8_to_loc_cE3519E:
#data loc_cE3519E

loc_cE364EC_to_loc_cE35174:
#data loc_cE35174

loc_cE364F0_to_loc_cE351C8:
#data loc_cE351C8

loc_cE364F4_to_loc_cE35242:
#data loc_cE35242

loc_cE364F8_to_loc_cE351C8:
#data loc_cE351C8

loc_cE364FC_to_loc_cE3526C:
#data loc_cE3526C

loc_cE36500_to_loc_cE35488:
#data loc_cE35488

loc_cE36504_to_loc_cE35500:
#data loc_cE35500

loc_cE36508_to_loc_cE35504:
#data loc_cE35504

loc_cE3650C_to_loc_cE35488:
#data loc_cE35488

loc_cE36510_to_loc_cE35584:
#data loc_cE35584

loc_cE36514_to_loc_cE355D0:
#data loc_cE355D0

loc_cE36518_to_loc_cE3563A:
#data loc_cE3563A

loc_cE3651C_to_loc_cE3568E:
#data loc_cE3568E

loc_cE36520_to_loc_cE3570E:
#data loc_cE3570E

loc_cE36524_to_loc_cE358DC:
#data loc_cE358DC

loc_cE36528_to_loc_cE3570E:
#data loc_cE3570E

loc_cE3652C_to_loc_cE35922:
#data loc_cE35922

loc_cE36530_to_loc_cE35720:
#data loc_cE35720

loc_cE36534_to_loc_cE3582C:
#data loc_cE3582C

loc_cE36538_to_loc_cE358BA:
#data loc_cE358BA

loc_cE3653C_to_loc_cE35950:
#data loc_cE35950

loc_cE36540_to_loc_cE359F4:
#data loc_cE359F4

loc_cE36544_to_loc_cE35ACC:
#data loc_cE35ACC

loc_cE36548_to_loc_cE35B68:
#data loc_cE35B68

loc_cE3654C_to_loc_cE35BFC:
#data loc_cE35BFC

loc_cE36550_to_loc_cE35CA6:
#data loc_cE35CA6

loc_cE36554_to_loc_cE35D1C:
#data loc_cE35D1C

loc_cE36558_to_loc_cE35DD0:
#data loc_cE35DD0

loc_cE3655C_to_loc_cE35DEE:
#data loc_cE35DEE

loc_cE36560_to_loc_cE35E32:
#data loc_cE35E32

loc_cE36564_to_loc_cE35EBA:
#data loc_cE35EBA

loc_cE36568_to_loc_cE35EC8:
#data loc_cE35EC8

loc_cE3656C_to_loc_cE35EBA:
#data loc_cE35EBA

loc_cE36570_to_loc_cE35ED6:
#data loc_cE35ED6

loc_cE36574_to_loc_cE35FE8:
#data loc_cE35FE8

loc_cE36578_to_loc_cE36062:
#data loc_cE36062

loc_cE3657C_to_loc_cE36108:
#data loc_cE36108
