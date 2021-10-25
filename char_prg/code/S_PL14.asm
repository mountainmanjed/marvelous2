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
#symbol code_loc_8c04CE3A 0x8C04CE3A
#symbol loc_8c051854 0x8C051854
#symbol loc_8c129728 0x8C129728



;======================================================================
start_CE30000:
	mov.w @(loc_cE300DA,pc),r0 ; r0 set to 0x428
	mov 0x70,r5 ; r5 set to 0x70
	mov.l @(loc_cE300E0_to_loc_cE36264,pc),r7 ; r7 set to 0xCE36264
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
	mov.l @(loc_cE300E4_to_loc_8c054508,pc),r3 ; r3 set to 0x8C054508
	jsr @r3
	mov r4,r14
	extu.b r0,r0
	tst r0,r0
	bf loc_cE30100
	mov.l @(loc_cE300E8_to_loc_8c054B34,pc),r3 ; r3 set to 0x8C054B34
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_cE30100
	mov.l @(loc_cE300EC_to_loc_8c05496C,pc),r3 ; r3 set to 0x8C05496C
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_cE30100
	mov.l @(loc_cE300F0_to_loc_8c054D04,pc),r3 ; r3 set to 0x8C054D04
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
	mov.l @(loc_cE300F4_to_loc_8c053F6E,pc),r3 ; r3 set to 0x8C053F6E
	add r14,r5 ; r5 ??? bc r14 is ???
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_cE30100
	mov.l @(loc_cE300F8_to_loc_8c053E00,pc),r3 ; r3 set to 0x8C053E00
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_cE300FC_to_loc_8c0542E0,pc),r2 ; r2 set to 0x8C0542E0
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE300DA:
	#data 0x0428
loc_cE300DC:
	#data 0x039C
	#align4

loc_cE300E0_to_loc_cE36264:
	#data loc_cE36264
loc_cE300E4_to_loc_8c054508:
	#data loc_8c054508
loc_cE300E8_to_loc_8c054B34:
	#data loc_8c054B34
loc_cE300EC_to_loc_8c05496C:
	#data loc_8c05496C
loc_cE300F0_to_loc_8c054D04:
	#data loc_8c054D04
loc_cE300F4_to_loc_8c053F6E:
	#data loc_8c053F6E
loc_cE300F8_to_loc_8c053E00:
	#data loc_8c053E00
loc_cE300FC_to_loc_8c0542E0:
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
	lds.l @r15+, pr
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
	lds.l @r15+, pr
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
	lds.l @r15+, pr
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
	lds.l @r15+, pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x0364
	#data 0x01F9
	#data 0x01FC
	#data 0x01D4
	#data 0x02A4
	#data 0x01E9
	#data 0x036C
	#align4

loc_cE301F8_to_loc_cE361D0:
	#data loc_cE361D0
	#data loc_8c054E58
	#data loc_8c055C3A
	#data loc_8c0530D8

loc_cE30208_to_loc_cE361E0:
	#data loc_cE361E0
	#data loc_8c055244
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
	lds.l @r15+, pr
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
	lds.l @r15+, pr
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
	lds.l @r15+, pr
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
	lds.l @r15+, pr
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
	lds.l @r15+, pr
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
	lds.l @r15+, pr
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
	lds.l @r15+, pr
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
	lds.l @r15+, pr
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
	lds.l @r15+, pr
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
	lds.l @r15+, pr
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
	lds.l @r15+, pr
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
	lds.l @r15+, pr
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
loc_cE304ee:
	#data 0x03A4
loc_cE304f2:
	#data 0x02A4
loc_cE304f4:
	#data 0x00F0
loc_cE304f4:
	#data 0x0525
	#align4

loc_cE304F8_to_loc_cE36232:
	#data loc_cE36232
	#data loc_8c054E58
	#data loc_8c055C3A
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
	lds.l @r15+, pr
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
	lds.l @r15+, pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE30572:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(loc_cE30634_to_loc_8c054DA0,pc),r3 ; r3 set to 0x8C054DA0
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
	mov.l @(loc_cE30630_to_loc_8c0530D8,pc),r3 ; r3 set to 0x8C0530D8
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
	lds.l @r15+, pr
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
	lds.l @r15+, pr
	rts
	mov.l @r15+,r14

;==============================================
loc_cE305EC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_ce3063c;[1]
	mov r4,r14
	tst r0,r0
	bf loc_ce30608
	bsr loc_ce30672;[2]
	mov r14,r4
	tst r0,r0
	bf loc_ce30608
	bsr loc_ce306a8;[3]
	mov r14,r4
	tst r0,r0
	bt loc_ce30610

loc_cE30608:
	lds.l @r15+, pr
	mov 0x01,r0
	rts
	mov.l @r15+,r14

loc_cE30610:
	mov 0x00,r0
	lds.l @r15+, pr
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

loc_cE30630_to_loc_8c0530D8:
	#data loc_8c0530D8

loc_cE30634_to_loc_8c054DA0:
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
	lds.l @r15+, pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_cE30664:
	mov.w @(0xbc,pc),r0
	mov 0x04,r3
	mov.b r3,@(r0,r14)
	mov 0x01,r0
	lds.l @r15+, pr
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
	lds.l @r15+, pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_cE3069A:
	mov.w @(0x86,pc),r0
	mov 0x06,r3
	mov.b r3,@(r0,r14)
	mov 0x01,r0
	lds.l @r15+, pr
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
	lds.l @r15+, pr
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
	lds.l @r15+, pr
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
	bra	
	nop

;##############################################
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
	mov.l @(loc_cE30868_to_loc_8c052B4C,pc),r3 ; r3 set to 0x8C052B4C
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
	mov.l @(loc_cE3086C_to_loc_8c034E8C,pc),r11 ; r11 set to 0x8C034E8C
	extu.b r0,r0
	mov.l @(loc_cE30870_to_loc_8c04223A,pc),r12 ; r12 set to 0x8C04223A
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
	mov.l @(loc_cE30874_to_loc_8c0D13BC,pc),r3 ; r3 set to 0x8C0D13BC
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

;##############################################
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
loc_cE30868_to_loc_8c052B4C:
	#data loc_8c052B4C
loc_cE3086C_to_loc_8c034E8C:
	#data loc_8c034E8C
loc_cE30870_to_loc_8c04223A:
	#data loc_8c04223A
loc_cE30874_to_loc_8c0D13BC:
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
	mov.l @(loc_cE309DC_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0
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
	mov.l @(loc_cE309E0_to_loc_8c04223A,pc),r12 ; r12 set to 0x8C04223A
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
	mov.l @(loc_cE309DC_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0
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
	mov.l @(loc_cE309EC_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
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
loc_cE309DC_to_loc_8c2896B0:
	#data loc_8c2896B0
loc_cE309E0_to_loc_8c04223A:
	#data loc_8c04223A
loc_cE309E4_to_loc_cE36188:
	#data loc_cE36188
loc_cE309E8_to_loc_cE3618C:
	#data loc_cE3618C
loc_cE309EC_to_loc_8c034E8C:
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
	mov.l @(loc_cE30B04_to_loc_8c04223A,pc),r12 ; r12 set to 0x8C04223A
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
	mov.l @(loc_cE30B10_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov.b r2,@(r0,r14)
	add 0xB1,r0 ; r0 set to 0x158
	mov.b @(r0,r14),r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_cE30B14_to_loc_8c0D13BC,pc),r2 ; r2 set to 0x8C0D13BC
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
	mov.l @(loc_cE30B10_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov.b @(r0,r14),r6
	jsr @r3
	mov r14,r4

loc_cE30A92:
	mov.w @(loc_cE30B02,pc),r0 ; r0 set to 0x1AC,r0 set to 0x1AC
	mov.l @(loc_cE30B1C_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0,r3 set to 0x8C2896B0
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
	mov.l @(loc_cE30B04_to_loc_8c04223A,pc),r12 ; r12 set to 0x8C04223A
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

loc_cE30B04_to_loc_8c04223A:
	#data loc_8c04223A
loc_cE30B08_to_loc_cE36194:
	#data loc_cE36194
loc_cE30B0C_to_loc_cE36198:
	#data loc_cE36198
loc_cE30B10_to_loc_8c034E8C:
	#data loc_8c034E8C
loc_cE30B14_to_loc_8c0D13BC:
	#data loc_8c0D13BC
loc_cE30B18_to_loc_cE3619C:
	#data loc_cE3619C
loc_cE30B1C_to_loc_8c2896B0:
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
	mov.l @(loc_cE30C38_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0
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
	mov.l @(loc_cE30C3C_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
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
	bra	
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
	mov.l @(loc_cE30C40_to_loc_8c04223A,pc),r12 ; r12 set to 0x8C04223A
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
	mov.l @(loc_cE30C3C_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov.b @(r0,r14),r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_cE30C44_to_loc_8c0D13BC,pc),r2 ; r2 set to 0x8C0D13BC
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

;##############################################
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
loc_cE30C38_to_loc_8c2896B0:
	#data loc_8c2896B0
loc_cE30C3C_to_loc_8c034E8C:
	#data loc_8c034E8C
loc_cE30C40_to_loc_8c04223A:
	#data loc_8c04223A
loc_cE30C44_to_loc_8c0D13BC:
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
	lds.l @r15+, pr
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
	mov.l @(loc_cE30D70_to_loc_8c04223A,pc),r12 ; r12 set to 0x8C04223A
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

;##############################################
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
loc_cE30D70_to_loc_8c04223A:
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
	lds.l @r15+, pr
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
	lds.l @r15+, pr

loc_cE30E3C:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5C
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_cE30ED8_to_loc_8c052C84,pc),r3 ; r3 set to 0x8C052C84
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

;##############################################
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
loc_cE30ED8_to_loc_8c052C84:
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
	mov.l @(loc_cE30FD0_to_loc_8c034DEE,pc),r12 ; r12 set to 0x8C034DEE
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
	mov.l @(loc_cE30FD8_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0
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
	mov.l @(loc_cE30FDC_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
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

loc_cE30FD0_to_loc_8c034DEE:
	#data loc_8c034DEE
loc_cE30FD4:
	#data 0x3FD55555
loc_cE30FD8_to_loc_8c2896B0:
	#data loc_8c2896B0
loc_cE30FDC_to_loc_8c051648:
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
	mov.l @(loc_cE310CC_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
	mov.l @(loc_cE310D4_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
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
	mov.l @(loc_cE310CC_to_loc_8c034DEE,pc),r12 ; r12 set to 0x8C034DEE
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

loc_cE310CC_to_loc_8c034DEE:
	#data loc_8c034DEE
loc_cE310D0:
	#data 0x3FD55555
loc_cE310D4_to_loc_8c051648:
	#data loc_8c051648

;==============================================
loc_cE310D8:
#data 0xD140937B
#data 0x633033EC
#data 0xF32D435A
#data 0xF20D415A
#data 0xF34DF322

#align4
loc_cE310EC:
#data 0x9070F228
#data 0xF22AF230
#data 0x0ED4


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
#data 0x4C0B
#data 0x600E64E3
#data 0x8B1C4011
#data 0x03EC905F
#data 0x891F2338
#data 0x70600ED4
#data 0xE31A


loc_cE3111E:
mov.b r3,@(r0,r14)
mov.w @(loc_cE311D6,pc),r0 ; r0 set to 0x1AC
mov.l @(loc_cE311E0_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0
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

#align4
loc_cE31140:
#data 0x64E34C0B
#data 0x4011600E
#data 0x8906


loc_cE3114A:
lds.l @r15+,pr
mov.l @(loc_cE311E4_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
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
mov.l @(loc_cE311E8_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt loc_cE31194
lds.l @r15+,pr
mov.l @(loc_cE311E4_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
mov r14,r4
jmp @r3
mov.l @r15+,r14

loc_cE31194:
lds.l @r15+,pr
rts
mov.l @r15+,r14

;==============================================

loc_cE3119A:
#data 0x2FE6
#data 0xD3134F22
#data 0x6E43430B
#data 0x420BD212
#data 0x4F2664E3
#data 0x6EF664E3


loc_cE311B0:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_cE311F4_to_loc_8c04FEA8,pc),r3 ; r3 set to 0x8C04FEA8
jsr @r3
mov r4,r14
mov.l @(loc_cE311F8_to_loc_8c050048,pc),r2 ; r2 set to 0x8C050048
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
#data 0x0141

loc_cE311D4:
#data 0x014B

loc_cE311D6:
#data 0x01AC

loc_cE311D8:
#data 0x01E8

loc_cE311DA:
#data 0x01FE
#data 0x3FD55555

#align4
loc_cE311E0_to_loc_8c2896B0:
#data loc_8c2896B0

loc_cE311E4_to_loc_8c051648:
#data loc_8c051648

loc_cE311E8_to_loc_8c034DEE:
#data loc_8c034DEE
#data loc_8c050084
#data loc_8c04FF88

#align4
loc_cE311F4_to_loc_8c04FEA8:
#data loc_8c04FEA8

loc_cE311F8_to_loc_8c050048:
#data loc_8c050048


loc_cE311FC:
bsr loc_cE3121C
mov r14,r4

loc_cE31200:
mov.l @(loc_cE312F4_to_loc_8c052CE2,pc),r3 ; r3 set to 0x8C052CE2,r3 set to 0x8C052CE2
jsr @r3
mov r14,r4
extu.b r0,r0
tst r0,r0
bt loc_cE31216
lds.l @r15+,pr
mov.l @(loc_cE312F8_to_loc_8c052DAC,pc),r3 ; r3 set to 0x8C052DAC,r3 set to 0x8C052DAC
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

#align4
loc_cE31238:
#data 0x430BD330
#data 0x600E64E3
#data 0x8B394011
#data 0x02EC9052
#data 0x893A2228
#data 0x600C00EC
#data 0x8F038801
#data 0x904AE400
#data 0x0E24E20E

#align4
loc_cE3125C:
#data 0xD5289048
#data 0x70F20E45
#data 0x70260E44
#data 0x84E20E46
#data 0x600C6352
#data 0x737C4000
#data 0x7201023D
#data 0x90370325
#data 0x600C00EC
#data 0x8B028802
#data 0xE21C9033
#data 0x0E24

loc_cE3128A:
#data 0x9031
#data 0x70F20E45
#data 0x70260E44
#data 0x84E20E46
#data 0x600C6352
#data 0x737C4000
#data 0x7201023D
#data 0x90210325
#data 0x0E44A00B

#align4
loc_cE312AC:
#data 0x420BD213
#data 0x600E64E3
#data 0x89044011

#align4
loc_cE312B8:
#data 0xD2124F26
#data 0x422B64E3
#data 0x6EF6


loc_cE312C2:
lds.l @r15+,pr
rts
mov.l @r15+,r14

;==============================================

loc_cE312C8:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_cE312FC_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt loc_cE312E2
mov.l @r15,r4
add 0x04,r15
mov.l @(loc_cE31304_to_loc_8c05176E,pc),r3 ; r3 set to 0x8C05176E
jmp @r3
lds.l @r15+,pr

loc_cE312E2:
add 0x04,r15
lds.l @r15+,pr
rts
nop

;==============================================

loc_cE312EA:
#data 0x01E8
#data 0x01A1014B
#data 0x000001AC

#align4
loc_cE312F4_to_loc_8c052CE2:
#data loc_8c052CE2

loc_cE312F8_to_loc_8c052DAC:
#data loc_8c052DAC

loc_cE312FC_to_loc_8c034DEE:
#data loc_8c034DEE
#data loc_8c2896B0

#align4
loc_cE31304_to_loc_8c05176E:
#data loc_8c05176E

loc_cE31308:
#data 0x6E432FE6
#data 0x4F222FD6
#data 0x200884E6
#data 0xD3488B2C
#data 0x64E3430B
#data 0xE31D84E6
#data 0x7001ED00
#data 0xE51480E6
#data 0xE6039081
#data 0x700B0E34
#data 0x70F20ED5
#data 0x70260ED4
#data 0x0ED6D340
#data 0x623284E2
#data 0x4000600C
#data 0x012D727C
#data 0x02157101
#data 0xD23C9070
#data 0x420B0ED4
#data 0xD33B64E3
#data 0x430BE516
#data 0xD23A64E3
#data 0x420BE505
#data 0xD33964E3
#data 0xE60265D3
#data 0x64E3430B

#align4
loc_cE31370:
#data 0x00EC905F
#data 0x8803600C
#data 0xD2358B02
#data 0x64E3420B

#align4
loc_cE31380:
#data 0xD334E15C
#data 0xE03431EC
#data 0xF2E6F318
#data 0x31ECE168
#data 0xFE27F230
#data 0xF2E6E05C
#data 0xE160F318
#data 0xF23031EC
#data 0xE038FE27
#data 0xF318F2E6
#data 0x31ECE16C
#data 0xFE27F230
#data 0xF2E6E060
#data 0xF230F318
#data 0x430BFE27
#data 0xD22664E3
#data 0x64E3420B
#data 0x4011600E
#data 0x4F268905
#data 0x64E3D223
#data 0x422B6DF6
#data 0x6EF6

loc_cE313D6:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6

;==============================================

loc_cE313DE:
mov r4,r3
mov.l @(loc_cE31460_to_loc_cE362F4_to_loc_cE313F0,pc),r1 ; r1 set to 0xCE362F4
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_cE313F0:
mov.l r14,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
mov.l @(loc_cE31458_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
#data 0x01A1
#data 0x01FF01F9

loc_cE31434:
#data 0x0141

loc_cE31436:
#data 0x01D2
#data loc_8c052B4C
#data loc_8c2896B0
#data loc_8c034E8C
#data loc_8c04223A
#data loc_8c056DE4
#data loc_8c0D13BC
#data loc_8c0511E2
#data loc_8c052C84

#align4
loc_cE31458_to_loc_8c034DEE:
#data loc_8c034DEE
#data loc_8c051648

#align4
loc_cE31460_to_loc_cE362F4_to_loc_cE313F0:
#data loc_cE362F4_to_loc_cE313F0

loc_cE31464:
#data 0x417D5555


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

#align4
loc_cE31484:
#data 0x425AD242
#data 0xF30D

loc_cE3148A:
#data 0xF288
#data 0xF82AF230


loc_cE31490:
lds.l @r15+,pr
mov.l @r15+,r8
rts
mov.l @r15+,r14

;==============================================

loc_cE31498:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_cE31594_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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

#align4
loc_cE31508:
#data 0xF308C724

#align4
loc_cE3150C:
#data 0xFE37E05C


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
mov.l @(loc_cE31594_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
mov.l @(loc_cE315A0_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
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

loc_cE31582:
#data 0x01D2

loc_cE31584:
#data 0x0141
#data 0x0000

#align4
loc_cE31588:
#data 0xC17D5555

#align4
loc_cE3158C:
#data 0x41D55555
#data 0xC1D55555

#align4
loc_cE31594_to_loc_8c034DEE:
#data loc_8c034DEE

loc_cE31598:
#data 0x3FD55555
#data 0xBFD55555

#align4
loc_cE315A0_to_loc_8c051648:
#data loc_8c051648

loc_cE315A4_to_loc_cE36300_to_loc_cE315A8:
#data loc_cE36300_to_loc_cE315A8

loc_cE315A8:
#data 0x4F222FE6
#data 0x430BD34E
#data 0x90956E43
#data 0x222802EC
#data 0x84E68B24
#data 0x80E67001
#data 0xF308C74A
#data 0xFE37E05C
#data 0xF308C749
#data 0xFE37E068
#data 0xF308C748
#data 0xFE37E060
#data 0xF308C747
#data 0xFE37E06C
#data 0x03ED907F
#data 0x89072338
#data 0xF3E6E05C
#data 0xFE37F34D
#data 0xF3E6E068
#data 0xFE37F34D

#align4
loc_cE315F8:
#data 0x64E3E010
#data 0x4F2681EE
#data 0x6EF6A003

#align4
loc_cE31604:
#data 0x000B4F26
#data 0x6EF6

;==============================================

loc_cE3160A:
#data 0x2FE6
#data 0xD3364F22
#data 0x6E43430B
#data 0x31ECE15C
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031EC
#data 0xE05CFE27
#data 0xF318F2E6
#data 0x31ECE160
#data 0xFE27F230
#data 0xF2E6E038
#data 0xE16CF318
#data 0xF23031EC
#data 0xE060FE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0xF3E6E038
#data 0xF2E69048
#data 0x8926F325
#data 0xF48D84E6
#data 0x80E67001
#data 0xF3E69040
#data 0xFE37E038
#data 0xFE47E060
#data 0xFE47E06C
#data 0xF308C722
#data 0xFE37E05C
#data 0xF308C721
#data 0xFE37E068
#data 0x03ED902F
#data 0x8D082338
#data 0xE05CE603
#data 0xF34DF3E6
#data 0xE068FE37
#data 0xF34DF3E6
#data 0xFE37

loc_cE3169A:
#data 0x4F26
#data 0xE502D319
#data 0x432B64E3
#data 0x6EF6

loc_cE316A6:
#data 0x4F26
#data 0x6EF6000B

;==============================================

loc_cE316AC:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_cE316E8_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt loc_cE316C6
mov.l @r15,r4
add 0x04,r15
mov.l @(loc_cE31708_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
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
#data 0x01300141
#data 0x0000041C

#align4
loc_cE316E8_to_loc_8c034DEE:
#data loc_8c034DEE
#data 0x417D5555
#data 0xBEA00000
#data 0x40CDB6DB
#data 0xBF092492
#data 0x40855555
#data 0xBEA6AAAA
#data loc_8c034E8C

#align4
loc_cE31708_to_loc_8c051648:
#data loc_8c051648

loc_cE3170C_to_loc_cE3630C_to_loc_cE31710:
#data loc_cE3630C_to_loc_cE31710


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
#data 0x9066
#data 0x0E35E300
#data 0xF2E6E034
#data 0xFE27F240
#data 0xF108C736

#align4
loc_cE31778:
#data 0xD336E05C
#data 0xE068FE17
#data 0xE502F38D
#data 0xE605FE37
#data 0x64E3430B
#data 0xE50FD232
#data 0x420BE608
#data 0x200864E3
#data 0x64038D10
#data 0xF3E6E05C
#data 0xF437F34D
#data 0xF3E6E068
#data 0xE060F437
#data 0xF437F3E6
#data 0xF3E6E06C
#data 0x903EF437
#data 0x043503ED

#align4
loc_cE317BC:
#data 0x000B4F26
#data 0x6EF6

;==============================================

loc_cE317C2:
mov.l r14,@-r15
mov 0x5C,r1 ; r1 set to 0x5C
mov r4,r14
add r14,r1 ; r1 ??? bc r14 is ???
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_cE3185C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
mov.l @(loc_cE31860_to_loc_8c0332E0,pc),r3 ; r3 set to 0x8C0332E0
jsr @r3
mov r14,r4
tst r0,r0
bt loc_cE3182C
mov.b @(0x06,r14),r0
mov r14,r4
mov.l @(loc_cE31864_to_loc_8c042008,pc),r3 ; r3 set to 0x8C042008
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
#data 0x0000

#align4
loc_cE3183C:
#data 0x434DB6DB

#align4
loc_cE31840:
#data 0xC1092492

#align4
loc_cE31844:
#data 0x3EAB6DB6

#align4
loc_cE31848:
#data 0x43A00000

#align4
loc_cE3184C:
#data 0x41555555
#data 0xC1555555
#data loc_8c034E8C
#data loc_8c0D0584

#align4
loc_cE3185C_to_loc_8c034DEE:
#data loc_8c034DEE

loc_cE31860_to_loc_8c0332E0:
#data loc_8c0332E0

loc_cE31864_to_loc_8c042008:
#data loc_8c042008


loc_cE31868:
mov.l r14,@-r15
mov 0x5C,r1 ; r1 set to 0x5C
mov r4,r14
add r14,r1 ; r1 ??? bc r14 is ???
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_cE319B4_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
mov.l @(loc_cE319B8_to_loc_8c0332E0,pc),r3 ; r3 set to 0x8C0332E0
jsr @r3
mov r14,r4
tst r0,r0
bf loc_cE31904
mov.b @(0x06,r14),r0
mov 0x1E,r5 ; r5 set to 0x1E
mov.l @(loc_cE319C4_to_loc_8c042008,pc),r3 ; r3 set to 0x8C042008
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

#align4
loc_cE318F0:
#data 0xE301905E
#data 0xC7350E35
#data 0xF308

loc_cE318FA:
#data 0xE05C
#data 0xE068FE37
#data 0xFE37F38D


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
mov.l @(loc_cE319B4_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
mov.l @(loc_cE319D4_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C,r3 set to 0x8C034E8C
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

;==============================================

loc_cE319AE:
#data 0x0141

loc_cE319B0:
#data 0x0130

loc_cE319B2:
#data 0x02A4

#align4
loc_cE319B4_to_loc_8c034DEE:
#data loc_8c034DEE

loc_cE319B8_to_loc_8c0332E0:
#data loc_8c0332E0

loc_cE319BC:
#data 0xC14DB6DB

#align4
loc_cE319C0:
#data 0x3D892492

#align4
loc_cE319C4_to_loc_8c042008:
#data loc_8c042008

loc_cE319C8:
#data 0xC1A00000
#data 0x41A00000

#align4
loc_cE319D0:
#data 0x42892492

#align4
loc_cE319D4_to_loc_8c034E8C:
#data loc_8c034E8C


loc_cE319D8:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_cE31B24_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
mov.l @(loc_cE31B24_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
mov.l @(loc_cE31B30_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
jsr @r3
mov r14,r4
mov.l @(loc_cE31B34_to_loc_8c0511B4,pc),r2 ; r2 set to 0x8C0511B4
jsr @r2
mov r14,r4
lds.l @r15+,pr
mov.l @(loc_cE31B38_to_loc_8c042008,pc),r3 ; r3 set to 0x8C042008
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
#data 0x4F22
#data 0xD3247FFC
#data 0x2F42430B
#data 0x4011600E
#data 0x63F28903
#data 0x70018435
#data 0x8035

loc_cE31AA6:
#data 0x7F04
#data 0x000B4F26
#data 0x0009

;==============================================

loc_cE31AAE:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_cE31B3C_to_loc_8c046C8A,pc),r3 ; r3 set to 0x8C046C8A
jsr @r3
mov r4,r14
tst r0,r0
bt loc_cE31ACE
mov.l @(loc_cE31B40_to_loc_8c035162,pc),r3 ; r3 set to 0x8C035162
mov 0x00,r5 ; r5 set to 0x00
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(loc_cE31B44_to_loc_8c051648,pc),r2 ; r2 set to 0x8C051648
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
mov.l @(loc_cE31B30_to_loc_8c034E8C,pc),r13 ; r13 set to 0x8C034E8C
mov.l @(loc_cE31B50_to_loc_8c0514B8,pc),r3 ; r3 set to 0x8C0514B8
mov.b r0,@(0x06,r14)
jsr @r3
mov r14,r4
mov 0x02,r2 ; r2 set to 0x02
cmp/ge r2,r0
bf loc_cE31B62
mov.l @(loc_cE31B54_to_loc_8c03319E,pc),r1 ; r1 set to 0x8C03319E
jsr @r1
nop
tst 0x01,r0
bt/s loc_cE31B58
mov 0x13,r5 ; r5 set to 0x13
bra loc_cE31B5A
mov 0x04,r6

loc_cE31B1E:
#data 0x041C

loc_cE31B20:
#data 0x01F9
#data 0x0000

#align4
loc_cE31B24_to_loc_8c034DEE:
#data loc_8c034DEE

loc_cE31B28:
#data 0x412B6DB6

#align4
loc_cE31B2C:
#data 0xBF1A4924

#align4
loc_cE31B30_to_loc_8c034E8C:
#data loc_8c034E8C

loc_cE31B34_to_loc_8c0511B4:
#data loc_8c0511B4

loc_cE31B38_to_loc_8c042008:
#data loc_8c042008

loc_cE31B3C_to_loc_8c046C8A:
#data loc_8c046C8A

loc_cE31B40_to_loc_8c035162:
#data loc_8c035162

loc_cE31B44_to_loc_8c051648:
#data loc_8c051648

loc_cE31B48_to_loc_cE36328_to_loc_cE31AE2:
#data loc_cE36328_to_loc_cE31AE2

loc_cE31B4C_to_loc_cE3633C_to_loc_cE31AF4:
#data loc_cE3633C_to_loc_cE31AF4

loc_cE31B50_to_loc_8c0514B8:
#data loc_8c0514B8

loc_cE31B54_to_loc_8c03319E:
#data loc_8c03319E


loc_cE31B58:
mov 0x05,r6 ; r6 set to 0x05

loc_cE31B5A:
jsr @r13
mov r14,r4
bra loc_cE31BB0
nop

loc_cE31B62:
mov.l @(loc_cE31C44_to_loc_8c03319E,pc),r3 ; r3 set to 0x8C03319E
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

#align4
loc_cE31B8C:
#data 0xE602E513
#data 0x64E34D0B
#data 0xE60AE514


loc_cE31B98:
lds.l @r15+,pr
mov.l @(loc_cE31C48_to_loc_8c0D0584,pc),r2 ; r2 set to 0x8C0D0584
mov r14,r4
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_cE31BA4:
bra loc_cE31BAA
mov 0x04,r6

loc_cE31BA8:
#data 0xE605


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
mov.l @(loc_cE31C4C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
mov.l @(loc_cE31C50_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
add 0x01,r0
mov.b r0,@(0x06,r4)
jmp @r3
mov 0x13,r5

loc_cE31BDA:
mov.l @(loc_cE31C4C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jmp @r3
nop

loc_cE31BE0:
mov.b @(0x06,r4),r0
tst r0,r0
bf loc_cE31BF4
mov.b @(0x06,r4),r0
mov 0x08,r6 ; r6 set to 0x08
mov.l @(loc_cE31C50_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
add 0x01,r0
mov.b r0,@(0x06,r4)
jmp @r3
mov 0x13,r5

loc_cE31BF4:
mov.l @(loc_cE31C4C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jmp @r3
nop

loc_cE31BFA:
mov.b @(0x06,r4),r0
tst r0,r0
bf loc_cE31C0E
mov.b @(0x06,r4),r0
mov 0x06,r6 ; r6 set to 0x06
mov.l @(loc_cE31C50_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
add 0x01,r0
mov.b r0,@(0x06,r4)
jmp @r3
mov 0x13,r5

loc_cE31C0E:
mov.l @(loc_cE31C4C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jmp @r3
nop

loc_cE31C14:
mov.b @(0x06,r4),r0
tst r0,r0
bf loc_cE31C28
mov.b @(0x06,r4),r0
mov 0x08,r6 ; r6 set to 0x08
mov.l @(loc_cE31C50_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
add 0x01,r0
mov.b r0,@(0x06,r4)
jmp @r3
mov 0x13,r5

loc_cE31C28:
mov.l @(loc_cE31C4C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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

loc_cE31C42:
#data 0x01E9

#align4
loc_cE31C44_to_loc_8c03319E:
#data loc_8c03319E

loc_cE31C48_to_loc_8c0D0584:
#data loc_8c0D0584

loc_cE31C4C_to_loc_8c034DEE:
#data loc_8c034DEE

loc_cE31C50_to_loc_8c034E8C:
#data loc_8c034E8C

loc_cE31C54_to_loc_cE3634C_to_loc_cE31C58:
#data loc_cE3634C_to_loc_cE31C58

loc_cE31C58:
#data 0x2FE69090
#data 0x4F226E43
#data 0x600C00EC
#data 0x8B0C8802
#data 0x420BD246
#data 0x908664E3
#data 0xE038F3E6
#data 0xF235F2E6
#data 0x90808903
#data 0xE038F3E6
#data 0xFE37

loc_cE31C82:
#data 0x84E6
#data 0xD14064E3
#data 0x9579600C
#data 0x40084F26
#data 0x35EC031E
#data 0x6EF6432B


loc_cE31C98:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(0x06,r14),r0
mov.l @(loc_cE31D8C_to_loc_8c05218A,pc),r3 ; r3 set to 0x8C05218A
add 0x01,r0
mov.b r0,@(0x06,r14)
jsr @r3
mov r14,r4
mov.l @(loc_cE31D90_to_loc_8c056DE4,pc),r2 ; r2 set to 0x8C056DE4
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
mov.l @(loc_cE31D94_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0
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
mov.l @(loc_cE31DA4_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
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
mov.l @(loc_cE31DA8_to_loc_8c05115A,pc),r2 ; r2 set to 0x8C05115A
mov.b r13,@(r0,r14)
mov.w @(loc_cE31D7E,pc),r0 ; r0 set to 0x41C
fmov.s @(r0,r14),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14)
jsr @r2
mov r14,r4
mov.l @(loc_cE31DA4_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
mov 0x15,r5 ; r5 set to 0x15
mov 0x00,r6 ; r6 set to 0x00
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(loc_cE31DAC_to_loc_8c035162,pc),r2 ; r2 set to 0x8C035162
mov r14,r4
mov 0x00,r5 ; r5 set to 0x00
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_cE31D4E:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_cE31DB0_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
mov.l @(loc_cE31DB4_to_loc_8c05176E,pc),r2 ; r2 set to 0x8C05176E
mov r14,r4
jmp @r2
mov.l @r15+,r14

loc_cE31D72:
lds.l @r15+,pr
mov.l @(loc_cE31DB8_to_loc_8c051648,pc),r2 ; r2 set to 0x8C051648
mov r14,r4
jmp @r2
mov.l @r15+,r14

loc_cE31D7C:
#data 0x01F9

loc_cE31D7E:
#data 0x041C
#data 0x02A4

loc_cE31D82:
#data 0x01A1
#data loc_8c04FEA8

#align4
loc_cE31D88_to_loc_cE36380_to_loc_cE31C98:
#data loc_cE36380_to_loc_cE31C98

loc_cE31D8C_to_loc_8c05218A:
#data loc_8c05218A

loc_cE31D90_to_loc_8c056DE4:
#data loc_8c056DE4

loc_cE31D94_to_loc_8c2896B0:
#data loc_8c2896B0

loc_cE31D98:
#data 0x41800000

#align4
loc_cE31D9C:
#data 0x41000000

#align4
loc_cE31DA0:
#data 0x42800000

#align4
loc_cE31DA4_to_loc_8c034E8C:
#data loc_8c034E8C

loc_cE31DA8_to_loc_8c05115A:
#data loc_8c05115A

loc_cE31DAC_to_loc_8c035162:
#data loc_8c035162

loc_cE31DB0_to_loc_8c034DEE:
#data loc_8c034DEE

loc_cE31DB4_to_loc_8c05176E:
#data loc_8c05176E

loc_cE31DB8_to_loc_8c051648:
#data loc_8c051648


loc_cE31DBC:
mov.w @(loc_cE31EC8,pc),r0 ; r0 set to 0x141
mov.b @(r0,r14),r3
tst r3,r3
bt loc_cE31DE0
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@(r0,r14)
mov 0x0C,r5 ; r5 set to 0x0C
mov.l @(loc_cE31ED4_to_loc_8c0D0584,pc),r3 ; r3 set to 0x8C0D0584
mov 0x07,r6 ; r6 set to 0x07
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(loc_cE31ED8_to_loc_8c0D13BC,pc),r2 ; r2 set to 0x8C0D13BC
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
#data 0x9070
#data 0x6E432FE6
#data 0x00EC4F22
#data 0x8802600C
#data 0xD2398B0C
#data 0x64E3420B
#data 0xF3E69066
#data 0xF2E6E038
#data 0x8903F235
#data 0xF3E69060
#data 0xFE37E038

#align4
loc_cE31E10:
#data 0x64E384E6
#data 0x600CD132
#data 0x4F269559
#data 0x031E4008
#data 0x432B35EC
#data 0x6EF6


loc_cE31E26:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(0x06,r14),r0
mov.l @(loc_cE31EE4_to_loc_8c05218A,pc),r3 ; r3 set to 0x8C05218A
add 0x01,r0
mov.b r0,@(0x06,r14)
mov 0x18,r0 ; r0 set to 0x18
mov.w r0,@(0x1C,r14)
mov 0x1E,r0 ; r0 set to 0x1E
mov.w r0,@(0x1E,r14)
jsr @r3
mov r14,r4
mov.l @(loc_cE31EE8_to_loc_8c056DE4,pc),r2 ; r2 set to 0x8C056DE4
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
mov.l @(loc_cE31F00_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0,r3 set to 0x8C2896B0
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

loc_cE31EC8:
#data 0x0141

loc_cE31ECA:
#data 0x01F9
#data 0x02A4041C

loc_cE31ED0:
#data 0x01D2

loc_cE31ED2:
#data 0x01A1

#align4
loc_cE31ED4_to_loc_8c0D0584:
#data loc_8c0D0584

loc_cE31ED8_to_loc_8c0D13BC:
#data loc_8c0D13BC
#data loc_8c04FEA8

#align4
loc_cE31EE0_to_loc_cE36388_to_loc_cE31E26:
#data loc_cE36388_to_loc_cE31E26

loc_cE31EE4_to_loc_8c05218A:
#data loc_8c05218A

loc_cE31EE8_to_loc_8c056DE4:
#data loc_8c056DE4

loc_cE31EEC:
#data 0x3F555555

#align4
loc_cE31EF0:
#data 0xBF555555

#align4
loc_cE31EF4:
#data 0x41800000

#align4
loc_cE31EF8:
#data 0x41000000

#align4
loc_cE31EFC:
#data 0x42800000

#align4
loc_cE31F00_to_loc_8c2896B0:
#data loc_8c2896B0


loc_cE31F04:
mov.w @(loc_cE31FFC,pc),r0 ; r0 set to 0x1F9
mov.l @(loc_cE32004_to_loc_8c05115A,pc),r3 ; r3 set to 0x8C05115A
mov.b r13,@(r0,r14)
jsr @r3
mov r14,r4
mov.w @(loc_cE31FFE,pc),r0 ; r0 set to 0x1A1
mov 0x33,r2 ; r2 set to 0x33
mov.l @(loc_cE32008_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0
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
mov.l @(loc_cE3200C_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C,r2 set to 0x8C034E8C
mov 0x15,r5 ; r5 set to 0x15,r5 set to 0x15
jsr @r2
mov r14,r4
lds.l @r15+,pr
mov.l @(loc_cE32010_to_loc_8c035162,pc),r3 ; r3 set to 0x8C035162,r3 set to 0x8C035162
mov r14,r4
mov 0x00,r5 ; r5 set to 0x00,r5 set to 0x00
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_cE31F4A:
#data 0x2FE6
#data 0xE15C6E43
#data 0x31ECD330
#data 0x4F22E034
#data 0xE168F318
#data 0x31ECF2E6
#data 0xFE27F230
#data 0xF2E6E05C
#data 0xF230F318
#data 0x430BFE27
#data 0x904564E3
#data 0x222802EC
#data 0xE4008913
#data 0x70560E44
#data 0x0E34E333
#data 0x0E45700B
#data 0x0E4470F2
#data 0xD31E7026
#data 0x84E20E46
#data 0x600C6232
#data 0x727C4000
#data 0x7101012D
#data 0x0215

loc_cE31FA2:
#data 0x85EF
#data 0x8B0A4015
#data 0xD31B85EF
#data 0x81EF70FF
#data 0x64E3430B
#data 0x89022008
#data 0x700285EE
#data 0x81EE

loc_cE31FBE:
#data 0x85EE
#data 0x81EE70FF
#data 0x4011600F
#data 0x84E68915
#data 0x7001E303
#data 0x901680E6
#data 0x90110E34
#data 0x600C00EC
#data 0x8B028802
#data 0xE205900F
#data 0x0E24

loc_cE31FE6:
#data 0x900C
#data 0x4F26E515
#data 0x64E3D307
#data 0x432B06EC
#data 0x6EF6

loc_cE31FF6:
#data 0x4F26
#data 0x6EF6000B

;==============================================

loc_cE31FFC:
#data 0x01F9

loc_cE31FFE:
#data 0x01A1
#data 0x0158014B

#align4
loc_cE32004_to_loc_8c05115A:
#data loc_8c05115A

loc_cE32008_to_loc_8c2896B0:
#data loc_8c2896B0

loc_cE3200C_to_loc_8c034E8C:
#data loc_8c034E8C

loc_cE32010_to_loc_8c035162:
#data loc_8c035162
#data loc_8c034DEE
#data loc_8c055D54


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
mov.l @(loc_cE32154_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0
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
mov.l @(loc_cE32158_to_loc_8c034DEE,pc),r2 ; r2 set to 0x8C034DEE
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
mov.l @(loc_cE3215C_to_loc_8c05176E,pc),r2 ; r2 set to 0x8C05176E
mov r14,r4
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
jmp @r2
mov.l @r15+,r14

loc_cE3208A:
lds.l @r15+,pr
mov.l @(loc_cE32160_to_loc_8c051648,pc),r2 ; r2 set to 0x8C051648
mov r14,r4
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_cE32096:
#data 0x9058
#data 0x233803EC
#data 0x0ED48900

#align4
loc_cE320A0:
#data 0x6DF64F26
#data 0x6EF6000B

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
mov.l @(loc_cE32168_to_loc_8c05218A,pc),r3 ; r3 set to 0x8C05218A
add 0x01,r0
mov.b r0,@(0x06,r14)
jsr @r3
mov r14,r4
mov.l @(loc_cE3216C_to_loc_8c056DE4,pc),r2 ; r2 set to 0x8C056DE4
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
mov.l @(loc_cE32154_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0
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
mov.l @(loc_cE32170_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C,r3 set to 0x8C034E8C
mov.b r2,@(r0,r14)
mov.b @(r0,r14),r6
jsr @r3
mov r14,r4
bra loc_cE3218E
nop

loc_cE32134:
mov.l @(loc_cE32174_to_loc_8c053082,pc),r1 ; r1 set to 0x8C053082
jsr @r1
mov r14,r4
mov.w @(loc_cE32146,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r14),r2
tst r2,r2
bt loc_cE32178
bra loc_cE3217A
mov 0x1A,r3

loc_cE32146:
#data 0x01A3

loc_cE32148:
#data 0x01F9
#data 0x0141

loc_cE3214C:
#data 0x02A4

loc_cE3214E:
#data 0x01A1

loc_cE32150:
#data 0x0158
#data 0x0000

#align4
loc_cE32154_to_loc_8c2896B0:
#data loc_8c2896B0

loc_cE32158_to_loc_8c034DEE:
#data loc_8c034DEE

loc_cE3215C_to_loc_8c05176E:
#data loc_8c05176E

loc_cE32160_to_loc_8c051648:
#data loc_8c051648

loc_cE32164_to_loc_cE36394_to_loc_cE320BE:
#data loc_cE36394_to_loc_cE320BE

loc_cE32168_to_loc_8c05218A:
#data loc_8c05218A

loc_cE3216C_to_loc_8c056DE4:
#data loc_8c056DE4

loc_cE32170_to_loc_8c034E8C:
#data loc_8c034E8C

loc_cE32174_to_loc_8c053082:
#data loc_8c053082


loc_cE32178:
mov 0x0A,r3 ; r3 set to 0x0A

loc_cE3217A:
mov.w @(loc_cE3223C,pc),r0 ; r0 set to 0x158,r0 set to 0x158
mov 0x15,r5 ; r5 set to 0x15,r5 set to 0x15
mov.b r3,@(r0,r14)
mov.l @(loc_cE32248_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C,r3 set to 0x8C034E8C
mov.b @(r0,r14),r6
jsr @r3
mov r14,r4
mov.l @(loc_cE3224C_to_loc_8c05115A,pc),r2 ; r2 set to 0x8C05115A,r2 set to 0x8C05115A
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
#data 0xC725
#data 0xE060F308
#data 0xC724FE37
#data 0xE06CF308
#data 0xC723FE37
#data 0x902FF408
#data 0x233803ED
#data 0xC7218901
#data 0xF408


loc_cE321EA:
mov.l @(loc_cE32270_to_loc_8c035162,pc),r3 ; r3 set to 0x8C035162
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
mov.l @(loc_cE32274_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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

#align4
loc_cE32228:
#data 0x425AD214
#data 0xF30D

loc_cE3222E:
#data 0xF288
#data 0xF82AF230


loc_cE32234:
lds.l @r15+,pr
mov.l @r15+,r8
rts
mov.l @r15+,r14

;==============================================

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
#data 0x0000

#align4
loc_cE32248_to_loc_8c034E8C:
#data loc_8c034E8C

loc_cE3224C_to_loc_8c05115A:
#data loc_8c05115A

loc_cE32250:
#data 0x41A2DB6D

#align4
loc_cE32254:
#data 0xBF676DB6

#align4
loc_cE32258:
#data 0xC0555555

#align4
loc_cE3225C:
#data 0x40555555
#data 0x42092492
#data 0xBFAB6DB6
#data 0xC092AAAA
#data 0x4092AAAA

#align4
loc_cE32270_to_loc_8c035162:
#data loc_8c035162

loc_cE32274_to_loc_8c034DEE:
#data loc_8c034DEE

loc_cE32278:
#data 0x42AD5555
#data 0xC2AD5555

#align4
loc_cE32280:
#data 0xE15C2FE6
#data 0x31EC6E43
#data 0xD342E034
#data 0xF2E64F22
#data 0xE168F318
#data 0xF23031EC
#data 0xE05CFE27
#data 0xE160F318
#data 0x31ECF2E6
#data 0xFE27F230
#data 0xF2E6E038
#data 0xE16CF318
#data 0xF23031EC
#data 0xE060FE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x64E3430B
#data 0x85EE935F
#data 0x633033EC
#data 0x7301633C
#data 0x8d213030
#data 0x9057E400
#data 0x233803EC
#data 0x9352891C
#data 0x33EC85EE
#data 0x81EE7001
#data 0x85EE6330
#data 0x7302633C
#data 0x89113033
#data 0xE3379049
#data 0x700B0E34
#data 0x70F20E45
#data 0x70260E44
#data 0x0E46D324
#data 0x623284E2
#data 0x4000600C
#data 0x012D727C
#data 0x02157101

#align4
loc_cE32318:
#data 0xF3E69038
#data 0xF2E6E038
#data 0x8916F235
#data 0xD31D9032
#data 0xE038F3E6
#data 0x902EFE37
#data 0x430B0E44
#data 0xE05C64E3
#data 0xFE47F48D
#data 0xFE47E060
#data 0xFE47E068
#data 0xD316E06C
#data 0xFE4764E3
#data 0x432B4F26
#data 0x6EF6

loc_cE32352:
#data 0x4F26
#data 0x6EF6000B

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
#data 0x01A1019E
#data 0x01F9041C

loc_cE32390:
#data 0x02A4
#data 0x0000
#data loc_8c034DEE
#data loc_8c2896B0
#data loc_8c0511B4
#data loc_8c051648

#align4
loc_cE323A4_to_loc_cE363A0_to_loc_cE3236E:
#data loc_cE363A0_to_loc_cE3236E


loc_cE323A8:
mov 0x1E,r0 ; r0 set to 0x1E

loc_cE323AA:
mov.l @(loc_cE324F4_to_loc_8c05218A,pc),r2 ; r2 set to 0x8C05218A,r2 set to 0x8C05218A
mov.w r0,@(0x1C,r14)
jsr @r2
mov r14,r4
mov.l @(loc_cE324F8_to_loc_8c056DE4,pc),r3 ; r3 set to 0x8C056DE4,r3 set to 0x8C056DE4
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
mov.l @(loc_cE324FC_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0,r3 set to 0x8C2896B0
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
mov.l @(loc_cE32500_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C,r2 set to 0x8C034E8C
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

#align4
loc_cE32430:
#data 0x2FE6905C
#data 0x925A6E43
#data 0x03ED4F22
#data 0x2328633D
#data 0xD3328904
#data 0x64E3430B
#data 0x8B2C2008

#align4
loc_cE3244C:
#data 0xD330E15C
#data 0xE03431EC
#data 0xF2E6F318
#data 0x31ECE168
#data 0xFE27F230
#data 0xF2E6E05C
#data 0xF230F318
#data 0x430BFE27
#data 0x903F64E3
#data 0x0E24E202
#data 0x70FF85EE
#data 0x600F81EE
#data 0x89124015
#data 0x64E384E6
#data 0xE60DF48D
#data 0xD31D7001
#data 0xE05C80E6
#data 0xE060FE47
#data 0xE068FE47
#data 0xE06CFE47
#data 0xE515FE47
#data 0x432B4F26
#data 0x6EF6

loc_cE324A6:
#data 0x4F26
#data 0x6EF6000B

;==============================================

loc_cE324AC:
mov.w @(loc_cE324F0,pc),r0 ; r0 set to 0x1F5
mov 0x02,r3 ; r3 set to 0x02
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b r3,@(r0,r14)
mov.l @(loc_cE32510_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r14,r4
exts.b r0,r0 ; r0 ??
cmp/pz r0
bt loc_cE324DC
mov.w @(loc_cE324E4,pc),r0 ; r0 set to 0x41C
mov.l @(loc_cE32514_to_loc_8c0511B4,pc),r3 ; r3 set to 0x8C0511B4
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14)
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(loc_cE32518_to_loc_8c051648,pc),r2 ; r2 set to 0x8C051648
mov r14,r4
jmp @r2
mov.l @r15+,r14

loc_cE324DC:
lds.l @r15+,pr
rts
mov.l @r15+,r14

;==============================================

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
#data 0x0360034A

loc_cE324F0:
#data 0x01F5
#data 0x0000

#align4
loc_cE324F4_to_loc_8c05218A:
#data loc_8c05218A

loc_cE324F8_to_loc_8c056DE4:
#data loc_8c056DE4

loc_cE324FC_to_loc_8c2896B0:
#data loc_8c2896B0

loc_cE32500_to_loc_8c034E8C:
#data loc_8c034E8C

loc_cE32504:
#data 0x40E2AAAA

#align4
loc_cE32508:
#data 0xC0E2AAAA
#data loc_8c0518A0

#align4
loc_cE32510_to_loc_8c034DEE:
#data loc_8c034DEE

loc_cE32514_to_loc_8c0511B4:
#data loc_8c0511B4

loc_cE32518_to_loc_8c051648:
#data loc_8c051648

loc_cE3251C:
#data 0x2FE69087
#data 0x4F226E43
#data 0x600C00EC
#data 0x8B0C8802
#data 0x420BD243
#data 0x907D64E3
#data 0xE038F3E6
#data 0xF325F2E6
#data 0x90778B03
#data 0xE038F3E6
#data 0xFE37

loc_cE32546:
#data 0x84E6
#data 0xD13D64E3
#data 0x9570600C
#data 0x40084F26
#data 0x35EC031E
#data 0x6EF6432B

#align4
loc_cE3255C:
#data 0x6E432FE6
#data 0xD3384F22
#data 0xE500430B
#data 0x00EC9064
#data 0x8806600C
#data 0x90618B05
#data 0x925EE310
#data 0x70010E24
#data 0x0E34

loc_cE3257E:
#data 0x84E6
#data 0x80E67001
#data 0x00EC9053
#data 0x8802600C
#data 0x64E38F18
#data 0xE05CD12D
#data 0x415AF2E6
#data 0xF30DD12C
#data 0x415AF233
#data 0xF38DD12B
#data 0xE060FE27
#data 0xF20DF1E6
#data 0x415AF123
#data 0xE06CFE17
#data 0xF10DF0E6
#data 0xFE07F013
#data 0xFE37E068

#align4
loc_cE325C0:
#data 0x430BD324
#data 0x90380009
#data 0xE400E239
#data 0x0E24D322
#data 0x0E45700B
#data 0x0E4470F2
#data 0x0E467026
#data 0x623284E2
#data 0x4000600C
#data 0x012D727C
#data 0x02157101
#data 0x02EC901F
#data 0x8B092228
#data 0x420BD219
#data 0x4F2664E3
#data 0x64E3D318
#data 0xE516E600
#data 0x6EF6432B

#align4
loc_cE32608:
#data 0xD1154F26
#data 0xE64064E3
#data 0x412BE516
#data 0x6EF6


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
#data 0x01F9
#data 0x02A4041C

loc_cE32634:
#data 0x0255
#data 0x00FF
#data 0x01A103F0
#data loc_8c04FEA8

#align4
loc_cE32640_to_loc_cE363AC_to_loc_cE3255C:
#data loc_cE363AC_to_loc_cE3255C
#data loc_8c035162
#data 0x41800000
#data 0x41000000
#data 0x42800000
#data loc_8c05218A
#data loc_8c2896B0
#data loc_8c05115A
#data loc_8c034E8C


loc_cE32664:
mov 0x00,r3 ; r3 set to 0x00

loc_cE32666:
mov.w @(loc_cE32784,pc),r0 ; r0 set to 0x3F1,r0 set to 0x3F1
mov.b r3,@(r0,r14)
mov.l @(loc_cE32798_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE,r3 set to 0x8C034DEE
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
mov.l @(loc_cE3279C_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C,r2 set to 0x8C034E8C
mov 0x16,r5 ; r5 set to 0x16,r5 set to 0x16
mov 0x41,r6 ; r6 set to 0x41,r6 set to 0x41
jsr @r2
mov r14,r4 ; r4 ??? bc r14 is ???,r4 ??? bc r14 is ???
mova @(loc_cE327A0,pc),r0; r0 set to 0xCE327A0,r0 set to 0xCE327A0
fmov.s fr15,@r15
bra loc_cE326B4
fmov.s @r0,fr3

#align4
loc_cE326A4:
#data 0xE516D33D
#data 0x430BE601
#data 0xC73D64E3
#data 0xF308FFFA

#align4
loc_cE326B4:
#data 0xD33CE004
#data 0xE004F2F6
#data 0xE60165F3
#data 0xFF27F230
#data 0x64E3430B


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
mov.l @(loc_cE32798_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
mov.l @(loc_cE327AC_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
mov r14,r4
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
jmp @r3
mov.l @r15+,r14

loc_cE32718:
lds.l @r15+,pr
mov.l @(loc_cE327B0_to_loc_8c05176E,pc),r2 ; r2 set to 0x8C05176E
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
mov.l @(loc_cE327B4_to_loc_8c07EDB8,pc),r3 ; r3 set to 0x8C07EDB8
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

#align4
loc_cE32744:
#data 0x2FE69020
#data 0x4F226E43
#data 0x600C00EC
#data 0x8B0C8802
#data 0x420BD218
#data 0x901B64E3
#data 0xE038F3E6
#data 0xF325F2E6
#data 0x90158B03
#data 0xE038F3E6
#data 0xFE37

loc_cE3276E:
#data 0x84E6
#data 0xD11264E3
#data 0x950E600C
#data 0x40084F26
#data 0x35EC031E
#data 0x6EF6432B

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
#data 0x02A4041C

#align4
loc_cE32798_to_loc_8c034DEE:
#data loc_8c034DEE

loc_cE3279C_to_loc_8c034E8C:
#data loc_8c034E8C

loc_cE327A0:
#data 0x42BC9249
#data 0x424DB6DB
#data loc_8c050834

#align4
loc_cE327AC_to_loc_8c051648:
#data loc_8c051648

loc_cE327B0_to_loc_8c05176E:
#data loc_8c05176E

loc_cE327B4_to_loc_8c07EDB8:
#data loc_8c07EDB8
#data loc_8c04FEA8

#align4
loc_cE327BC_to_loc_cE363B8_to_loc_cE327C0:
#data loc_cE363B8_to_loc_cE327C0


loc_cE327C0:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x06,r14),r0
mov.l @(loc_cE328D8_to_loc_8c05218A,pc),r3 ; r3 set to 0x8C05218A
add 0x01,r0
mov.b r0,@(0x06,r14)
jsr @r3
mov r14,r4
mov.l @(loc_cE328DC_to_loc_8c056DE4,pc),r2 ; r2 set to 0x8C056DE4
mov 0x05,r5 ; r5 set to 0x05
jsr @r2
mov r14,r4
mov.w @(loc_cE328CE,pc),r0 ; r0 set to 0x41C
mov 0x3C,r5 ; r5 set to 0x3C
mov 0x00,r4 ; r4 set to 0x00
mov.l @(loc_cE328E0_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0
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
mov.l @(loc_cE328E4_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov 0x0F,r5 ; r5 set to 0x0F
mov.w r0,@(0x1C,r14)
mov 0x04,r6 ; r6 set to 0x04
jsr @r2
mov r14,r4 ; r4 ??? bc r14 is ???
mov.l @(loc_cE328E8_to_loc_8c0D0584,pc),r3 ; r3 set to 0x8C0D0584
mov 0x0A,r5 ; r5 set to 0x0A
mov 0x03,r6 ; r6 set to 0x03
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(loc_cE328EC_to_loc_8c05115A,pc),r2 ; r2 set to 0x8C05115A
mov r14,r4
jmp @r2
mov.l @r15+,r14

loc_cE3282C:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_cE328F0_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r4,r14
mov.w @(loc_cE328D2,pc),r0 ; r0 set to 0x19E
mov.b @(r0,r14),r2
tst r2,r2
bt loc_cE3287C
mov.l @(loc_cE328F4_to_loc_8c05264C,pc),r3 ; r3 set to 0x8C05264C
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
mov.l @(loc_cE328F8_to_loc_8c0522E0,pc),r3 ; r3 set to 0x8C0522E0
mov.l @(r0,r14),r5
jmp @r3
mov.l @r15+,r14

loc_cE32862:
#data 0x84E6
#data 0xD31FE515
#data 0x7001E611
#data 0x430B80E6
#data 0xD22264E3
#data 0xE605E523
#data 0x64E3420B


loc_cE3287C:
mov.w @(0x1C,r14),r0
add 0xFF,r0
mov.w r0,@(0x1C,r14)
exts.w r0,r0
cmp/pl r0
bt loc_cE328A6
mov.b @(0x06,r14),r0
mov 0x15,r5 ; r5 set to 0x15
mov.l @(loc_cE328E4_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
mov 0x11,r6 ; r6 set to 0x11
add 0x01,r0
mov.b r0,@(0x06,r14)
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(loc_cE328FC_to_loc_8c0D13BC,pc),r2 ; r2 set to 0x8C0D13BC
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
mov.l @(loc_cE328F0_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt loc_cE328C6
mov.l @r15,r4
add 0x04,r15
mov.l @(loc_cE32900_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
jmp @r3
lds.l @r15+,pr

loc_cE328C6:
add 0x04,r15
lds.l @r15+,pr
rts
nop

;==============================================

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
loc_cE328D8_to_loc_8c05218A:
#data loc_8c05218A

loc_cE328DC_to_loc_8c056DE4:
#data loc_8c056DE4

loc_cE328E0_to_loc_8c2896B0:
#data loc_8c2896B0

loc_cE328E4_to_loc_8c034E8C:
#data loc_8c034E8C

loc_cE328E8_to_loc_8c0D0584:
#data loc_8c0D0584

loc_cE328EC_to_loc_8c05115A:
#data loc_8c05115A

loc_cE328F0_to_loc_8c034DEE:
#data loc_8c034DEE

loc_cE328F4_to_loc_8c05264C:
#data loc_8c05264C

loc_cE328F8_to_loc_8c0522E0:
#data loc_8c0522E0

loc_cE328FC_to_loc_8c0D13BC:
#data loc_8c0D13BC

loc_cE32900_to_loc_8c051648:
#data loc_8c051648

loc_cE32904:
#data 0x2FE69091
#data 0x4F226E43
#data 0x600C00EC
#data 0x8B0C8802
#data 0x420BD249
#data 0x908764E3
#data 0xE038F3E6
#data 0xF325F2E6
#data 0x90818B03
#data 0xE038F3E6
#data 0xFE37

loc_cE3292E:
#data 0xE024
#data 0xE308D143
#data 0x0E34957B
#data 0x84E664E3
#data 0x4F2635EC
#data 0x4008600C
#data 0x432B031E
#data 0x6EF6

loc_cE3294A:
#data 0x9071
#data 0x6E432FE6
#data 0x00EC4F22
#data 0x8806600C
#data 0x906B8B05
#data 0x9268E310
#data 0x70010E24
#data 0x0E34

loc_cE32966:
#data 0x84E6
#data 0x7001D336
#data 0x430B80E6
#data 0xE05C64E3
#data 0xFE47F48D
#data 0xFE47E060
#data 0xFE47E068
#data 0xFE47E06C
#data 0xE400E04C
#data 0xE04E0E45
#data 0xE33F0E45
#data 0xF3E6904C
#data 0xFE37E038
#data 0x0E34904D
#data 0x0E45700B
#data 0x0E4470F2
#data 0xD3287026
#data 0x84E20E46
#data 0x600C6232
#data 0x4000727C
#data 0xE516012D
#data 0x7101E605
#data 0xD2230215
#data 0x64E3420B
#data 0xD3224F26
#data 0x432B64E3
#data 0x6EF6


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
mov.l @(loc_cE32A54_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE,r3 set to 0x8C034DEE
jsr @r3
mov r14,r4
mov.w @(loc_cE32A3A,pc),r0 ; r0 set to 0x141,r0 set to 0x141
mov.b @(r0,r14),r2
tst r2,r2
bt loc_cE32AB6
mov.l @(loc_cE32A58_to_loc_8c03319E,pc),r3 ; r3 set to 0x8C03319E,r3 set to 0x8C03319E
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
#data 0x01F9
#data 0x02A4041C

loc_cE32A30:
#data 0x0255
#data 0x00FF
#data 0x01A103F0

loc_cE32A38:
#data 0x03F1

loc_cE32A3A:
#data 0x0141
#data loc_8c04FEA8

#align4
loc_cE32A40_to_loc_cE363C4_to_loc_cE3294A:
#data loc_cE363C4_to_loc_cE3294A
#data loc_8c05218A
#data loc_8c2896B0
#data loc_8c034E8C
#data loc_8c05115A

#align4
loc_cE32A54_to_loc_8c034DEE:
#data loc_8c034DEE

loc_cE32A58_to_loc_8c03319E:
#data loc_8c03319E

loc_cE32A5C_to_loc_cE36180:
#data loc_cE36180


loc_cE32A60:
mov 0x21,r0 ; r0 set to 0x21
mov 0x10,r1 ; r1 set to 0x10
bra loc_cE32A72
mov.b r1,@(r0,r14)

#align4
loc_cE32A68:
#data 0xE218E020
#data 0x0E24


loc_cE32A6E:
mov 0x21,r0 ; r0 set to 0x21
mov.b r4,@(r0,r14)

loc_cE32A72:
mov 0x20,r0 ; r0 set to 0x20,r0 set to 0x20
mov.l @(loc_cE32B68_to_loc_8c07F7EC,pc),r3 ; r3 set to 0x8C07F7EC,r3 set to 0x8C07F7EC
mov.b @(r0,r14),r5
jsr @r3
mov r14,r4
tst r0,r0
bf/s loc_cE32A8C
mov.l r0,@(0x14,r14)
mov.l @(loc_cE32B6C_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648,r3 set to 0x8C051648
jsr @r3
mov r14,r4
bra loc_cE32AB6
nop

#align4
loc_cE32A8C:
#data 0x65F384E6
#data 0xE601F38D
#data 0xD3377001
#data 0x905D80E6
#data 0x70010ED4
#data 0xC7330ED4
#data 0xF308FF3A
#data 0xF2F6E004
#data 0xF230E004
#data 0x430BFF27
#data 0x64E3


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
#data 0xE300

loc_cE32AE2:
#data 0x903D
#data 0xD3240E34
#data 0x64E3430B
#data 0x4011600E
#data 0x84E68904
#data 0x80E67001
#data 0x81EE9033

#align4
loc_cE32AFC:
#data 0x000B4F26
#data 0x6EF6

;==============================================

loc_cE32B02:
#data 0x902A
#data 0xE205E302
#data 0x90270434
#data 0x90290424
#data 0x035C5545
#data 0x89052338
#data 0x70FF854E
#data 0x600F814E
#data 0x89024015

#align4
loc_cE32B24:
#data 0x422BD211
#data 0x0009

loc_cE32B2A:
#data 0x8454
#data 0x8801600C
#data 0x84558B10
#data 0x8801600C
#data 0x84568B02
#data 0x8B072008

#align4
loc_cE32B40:
#data 0x600C8454
#data 0x8B058801
#data 0x600C8455
#data 0x8B018802

#align4
loc_cE32B50:
#data 0x0009A296

#align4
loc_cE32B54:
#data 0x0009000B

;==============================================
#data 0x03F0

loc_cE32B5A:
#data 0x03F8

loc_cE32B5C:
#data 0x0328

loc_cE32B5E:
#data 0x0255
#data 0x00B403F1
#data 0x0000012C

#align4
loc_cE32B68_to_loc_8c07F7EC:
#data loc_8c07F7EC

loc_cE32B6C_to_loc_8c051648:
#data loc_8c051648
#data 0x42FCDB6D
#data loc_8c050834
#data loc_8c034DEE


loc_cE32B7C:
mov.w @(loc_cE32C8C,pc),r0 ; r0 set to 0x3F8
mov 0x02,r3 ; r3 set to 0x02
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b r3,@(r0,r14)
mov 0x05,r2 ; r2 set to 0x05
mov.w @(loc_cE32C8E,pc),r0 ; r0 set to 0x328
mov.l @(loc_cE32C90_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
mov.l @(loc_cE32C94_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
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
mov.l @(loc_cE32C9C_to_loc_8c0D0584,pc),r13 ; r13 set to 0x8C0D0584
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
#data 0xD111
#data 0xF2E6E038
#data 0x415AE510
#data 0xF30DE605
#data 0xFE27F231


loc_cE32C70:
jsr @r13
mov r14,r4

loc_cE32C74:
lds.l @r15+,pr
mov.l @(loc_cE32C94_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C,r2 set to 0x8C034E8C
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

;==============================================

loc_cE32C8C:
#data 0x03F8

loc_cE32C8E:
#data 0x0328

#align4
loc_cE32C90_to_loc_8c034DEE:
#data loc_8c034DEE

loc_cE32C94_to_loc_8c034E8C:
#data loc_8c034E8C

loc_cE32C98:
#data 0x0000E000

#align4
loc_cE32C9C_to_loc_8c0D0584:
#data loc_8c0D0584

loc_cE32CA0:
#data 0x41892492
#data 0x41092492

#align4
loc_cE32CA8:
#data 0xE3029087
#data 0x6E432FE6
#data 0x2FD6E205
#data 0x0E344F22
#data 0xD3429080
#data 0xE0480E24
#data 0xD3410E36
#data 0x64E3430B
#data 0x4011600E
#data 0x90768942
#data 0x0E34E300
#data 0x937384E6
#data 0x80E67001
#data 0x54E5E048
#data 0xC73A0E36
#data 0xE034F308
#data 0xF230F246
#data 0x9068FE27
#data 0x233803ED
#data 0xC7368905
#data 0xE034F208
#data 0xF120F146
#data 0xFE17

loc_cE32D02:
#data 0x854E
#data 0x70FFDD34
#data 0xC732814E
#data 0xE020F408
#data 0x600C00EC
#data 0x89058818
#data 0x890A8814
#data 0x89118810
#data 0x0009A018

#align4
loc_cE32D24:
#data 0xF346E038
#data 0xF340E605
#data 0xA00FFE37
#data 0xE512

loc_cE32D32:
#data 0xC72A
#data 0xE038F308
#data 0xE605F246
#data 0xFE27F230
#data 0xE511A006

#align4
loc_cE32D44:
#data 0xF346E038
#data 0xE605E510
#data 0xFE37F340

#align4
loc_cE32D50:
#data 0x64E34D0B

#align4
loc_cE32D54:
#data 0x6DF64F26
#data 0x6EF6000B

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
mov.l @(loc_cE32DC8_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
#data 0x0000E000

#align4
loc_cE32DC8_to_loc_8c034DEE:
#data loc_8c034DEE
#data 0xC2D55555
#data 0x42D55555
#data 0x431A4924
#data loc_8c0D0584
#data 0x43092492

#align4
loc_cE32DE0:
#data 0xC1555555


loc_cE32DE4:
mov.l @(loc_cE32F14,pc),r2 ; r2 set to 0x41555555
lds r2,fpul
fsts fpul,fr2

loc_cE32DEA:
fmov.s @r8,fr3
mova @(loc_cE32F18,pc),r0; r0 init to 0xCE32F18,r0 init to 0xCE32F18
mov.l @(loc_cE32F1C_to_loc_8c0D0584,pc),r13 ; r13 set to 0x8C0D0584,r13 set to 0x8C0D0584
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

#align4
loc_cE32E20:
#data 0xE605E510

#align4
loc_cE32E24:
#data 0x64E34D0B


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
mov.l @(loc_cE32F20_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
#data 0xC72B
#data 0xF308

loc_cE32E7E:
#data 0xD32B
#data 0xE516E05C
#data 0xE60AFE37
#data 0x64E3430B
#data 0x854E54E5
#data 0x814E70FF
#data 0xF3E6903D
#data 0xFE37E038


loc_cE32E9C:
lds.l @r15+,pr
rts
mov.l @r15+,r14

;==============================================

loc_cE32EA2:
#data 0x2FE6
#data 0xE15C6E43
#data 0x31ECD31D
#data 0x4F22E034
#data 0xE168F318
#data 0x31ECF2E6
#data 0xFE27F230
#data 0xF2E6E05C
#data 0xF230F318
#data 0x430BFE27
#data 0x600E64E3
#data 0x89174011
#data 0xE51684E6
#data 0xE60BD315
#data 0x80E67001
#data 0xF3E69019
#data 0xFE37E038
#data 0x64E3430B
#data 0x420BD211
#data 0xE05C64E3
#data 0xFE47F48D
#data 0xFE47E060
#data 0xFE47E068
#data 0xFE47E06C

#align4
loc_cE32F00:
#data 0x000B4F26
#data 0x6EF6

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
#data 0x041C

#align4
loc_cE32F14:
#data 0x41555555

#align4
loc_cE32F18:
#data 0x43092492

#align4
loc_cE32F1C_to_loc_8c0D0584:
#data loc_8c0D0584

loc_cE32F20_to_loc_8c034DEE:
#data loc_8c034DEE

loc_cE32F24:
#data 0xC1009249
#data 0x41009249
#data loc_8c034E8C
#data loc_8c0511B4


loc_cE32F34:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_cE33058_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
mov.l @(loc_cE3306C_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C,r3 set to 0x8C034E8C
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
mov.l @(loc_cE33058_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
mov.l @(loc_cE33070_to_loc_8c0511B4,pc),r3 ; r3 set to 0x8C0511B4
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
mov.l @(loc_cE3306C_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
mov 0x16,r5 ; r5 set to 0x16
fmov.s fr4,@(r0,r14)
mov 0x06,r6 ; r6 set to 0x06
jsr @r3
mov r14,r4
mov 0x00,r6 ; r6 set to 0x00
mov.l @(loc_cE33074_to_loc_8c02FEC4,pc),r3 ; r3 set to 0x8C02FEC4
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
mov.l @(loc_cE33058_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt loc_cE33048
mov.l @(loc_cE33078_to_loc_8c035162,pc),r3 ; r3 set to 0x8C035162
mov 0x00,r5 ; r5 set to 0x00
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(loc_cE3307C_to_loc_8c051648,pc),r2 ; r2 set to 0x8C051648
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
#data 0x0000

#align4
loc_cE33058_to_loc_8c034DEE:
#data loc_8c034DEE

loc_cE3305C:
#data 0x4122DB6D

#align4
loc_cE33060:
#data 0xBEE76DB6

#align4
loc_cE33064:
#data 0xC0855555

#align4
loc_cE33068:
#data 0x40855555

#align4
loc_cE3306C_to_loc_8c034E8C:
#data loc_8c034E8C

loc_cE33070_to_loc_8c0511B4:
#data loc_8c0511B4

loc_cE33074_to_loc_8c02FEC4:
#data loc_8c02FEC4

loc_cE33078_to_loc_8c035162:
#data loc_8c035162

loc_cE3307C_to_loc_8c051648:
#data loc_8c051648

loc_cE33080:
#data 0x6E432FE6
#data 0xE5162FD6
#data 0x84E64F22
#data 0xD338E607
#data 0x5DE57001
#data 0x430B80E6
#data 0xC73664E3
#data 0xE060F308
#data 0xC735FE37
#data 0xE06CF308
#data 0xC734FE37
#data 0x905DF408
#data 0x233803ED
#data 0xC7328901
#data 0xF408

loc_cE330BA:
#data 0xC732
#data 0xF508D232
#data 0xF3D6E034
#data 0xF2E6E138
#data 0xF340E05C
#data 0x425A31EC
#data 0xF353F321
#data 0xE060FE37
#data 0xE138F318
#data 0xF1E631DC
#data 0xF231F218
#data 0xF230F30D
#data 0xF120F253
#data 0xE02EFE17
#data 0x4F2681EE
#data 0x000B6DF6
#data 0x6EF6

;==============================================

loc_cE330FA:
#data 0xD224
#data 0x6E432FE6
#data 0x4F222FD6
#data 0x9D326322
#data 0xE3056130
#data 0x3133611C
#data 0x3DEC8F07
#data 0x410BD11E
#data 0x20080009
#data 0xE0008B01
#data 0x81D5

loc_cE33122:
#data 0x85D5
#data 0x81D570FF
#data 0x4015600F
#data 0x84E68907
#data 0x8804600C
#data 0xE0048903
#data 0xE00080E6
#data 0x80E7

loc_cE3313E:
#data 0x84E6
#data 0x4F2664E3
#data 0x600CD113
#data 0x40089511
#data 0x031E6DF6
#data 0x432B35EC
#data 0x6EF6


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
#data 0x0130

loc_cE3316E:
#data 0x02A4
#data loc_8c034E8C
#data 0x41A2DB6D
#data 0xBF676DB6
#data 0x42555555
#data 0xC2555555
#data 0x42380000
#data 0x435EDB6D
#data loc_8c2896B0
#data loc_8c0310F2

#align4
loc_cE33194_to_loc_cE363F8_to_loc_cE33156:
#data loc_cE363F8_to_loc_cE33156

loc_cE33198_to_loc_cE3640C_to_loc_cE3319C:
#data loc_cE3640C_to_loc_cE3319C

loc_cE3319C:
#data 0x2FD62FE6
#data 0x7FF04F22
#data 0x6E43906A
#data 0x00EC2F52
#data 0x8806600C
#data 0xE6068F06
#data 0xE3109064
#data 0x0E249261
#data 0x0E347001

#align4
loc_cE331C0:
#data 0xE50DD332
#data 0x64E3430B
#data 0x700184E7
#data 0x905880E7
#data 0x813563F2
#data 0x430BD32E
#data 0x905364E3
#data 0xED00E342
#data 0xE038F3E6
#data 0xFE37E516
#data 0x904CE636
#data 0x700B0E34
#data 0x70F20ED5
#data 0x70260ED4
#data 0x0ED6D326
#data 0x623284E2
#data 0x4000600C
#data 0x012D727C
#data 0x02157101
#data 0x420BD222
#data 0x63F264E3
#data 0x8134E00F
#data 0x430BD320
#data 0xD22064E3
#data 0x420BE514
#data 0x902B64E3
#data 0xF38D65F3
#data 0x0ED47504
#data 0x0ED47001
#data 0xFF37E004
#data 0xF308C71A
#data 0xF2F6E008
#data 0xD319E008
#data 0xF230E601
#data 0x430BFF27
#data 0x7F1064E3
#data 0x6DF64F26
#data 0x6EF6000B

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

loc_cE3327C:
#data 0x0255
#data 0x00FF
#data 0x00F003F0
#data 0x01A1041C

loc_cE33288:
#data 0x03F8

loc_cE3328A:
#data 0x0328
#data loc_8c02FEC4
#data loc_8c05218A
#data loc_8c2896B0
#data loc_8c034E8C
#data loc_8c05115A
#data loc_8c042008
#data 0x43092492
#data loc_8c050834

loc_cE332AC:
#data 0xE300

loc_cE332AE:
#data 0x9074
#data 0xD33D0E34
#data 0x64E3430B
#data 0x4011600E
#data 0x84E7894C
#data 0xD33BE516
#data 0x7001E63F
#data 0xC73880E7
#data 0xE00CF408
#data 0xE014FD47
#data 0xE00CFD47
#data 0xE050F3D6
#data 0xE014FE37
#data 0xE054F3D6
#data 0x9059FE37
#data 0xE038F3E6
#data 0x430BFE37
#data 0xD33064E3
#data 0x84E2E101
#data 0x600C6230
#data 0x622C410C
#data 0x8B042218
#data 0xE500D22C
#data 0x420BE601
#data 0x64E3

loc_cE3330E:
#data 0xE025
#data 0x06ECD32A
#data 0xE500E701
#data 0x7606666C
#data 0x64E3430B
#data 0xE702D226
#data 0xE60C6573
#data 0x64E3420B
#data 0xE522D324
#data 0x64E3430B
#data 0xE535D223
#data 0x64E3420B
#data 0xE102902F
#data 0x64E3932E
#data 0x223B02EC
#data 0x70E90E24
#data 0x0E14D21E
#data 0x6DF64F26
#data 0x6EF6422B

#align4
loc_cE33358:
#data 0x6DF64F26
#data 0x6EF6000B

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
mov.w @(loc_cE333A4,pc),r0 ; r0 set to 0x328
mov.l @(loc_cE333BC_to_loc_8c03544c,pc),r12 ; r12 set to 0x8C03544C
mov.b r3,@(r0,r14)
mov.l @(loc_cE333CC_to_loc_8c26823C,pc),r3 ; r3 set to 0x8C26823C
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
add 0x06,r6
jsr @r12
mov r14,r4
bra loc_cE333D8
nop
#data 0x03F1
#data 0x0202041C
#data 0x0080

loc_cE333A2:
#data 0x03F8

loc_cE333A4:
#data 0x0328
#data 0x0000
#data loc_8c034DEE
#data 0x3F000000
#data loc_8c034E8C
#data loc_8c289628
#data loc_8c0D13BC

#align4
loc_cE333BC_to_loc_8c03544c:
#data loc_8c03544c
#data loc_8c042008
#data loc_8c04223A
#data loc_8c05A2CC

#align4
loc_cE333CC_to_loc_8c26823C:
#data loc_8c26823C

loc_cE333D0:
#data 0xE508D257
#data 0x64E3420B

#align4
loc_cE333D8:
#data 0x6032D356
#data 0xC8075007
#data 0xD4558B05
#data 0x000960B3
#data 0xE0018045
#data 0x8046

loc_cE333EE:
#data 0xC753
#data 0xE00CF408
#data 0xF340F3D6
#data 0xE014FD37
#data 0xF240F2D6
#data 0xFD27F49D
#data 0xF3D6E00C
#data 0xFE37E050
#data 0xF3D6E014
#data 0xFE37E054
#data 0xF3D6E014
#data 0x8B27F345
#data 0xF34CE00C
#data 0xE050FD47
#data 0xE014FE37
#data 0xE054F3D6
#data 0xE516D344
#data 0xE637FE37
#data 0x700184E7
#data 0xE01E80E7
#data 0x430B81D4
#data 0xD23B64E3
#data 0x420BE500
#data 0xE02564E3
#data 0xE50006EC
#data 0x666CE701
#data 0x4C0B7606
#data 0xE70264E3
#data 0xE60C6573
#data 0x64E34C0B
#data 0xE525D337
#data 0x64E3430B

#align4
loc_cE3346C:
#data 0x64E3905A
#data 0x02EC9359
#data 0x0E24223B
#data 0x0EB470E9
#data 0xD2324F26
#data 0x6CF66BF6
#data 0x422B6DF6
#data 0x6EF6

loc_cE3348A:
#data 0x904D
#data 0x2FE6E302
#data 0xE2056E43
#data 0x6D532FD6
#data 0x0E344F22
#data 0x0E249045
#data 0x70FF85D4
#data 0x600F81D4
#data 0x890E4015
#data 0x65D384E6
#data 0x750AD326
#data 0x80E67001
#data 0x80E7E000
#data 0x9035E606
#data 0x430B81D5
#data 0xB51664E3
#data 0x64E3

loc_cE334CA:
#data 0x902B
#data 0x932AE102
#data 0x02EC64E3
#data 0x0E24223B
#data 0xD21B70E9
#data 0x4F260E14
#data 0x422B6DF6
#data 0x6EF6


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
mov.l @(loc_cE33548_to_loc_8c05A2CC,pc),r2 ; r2 set to 0x8C05A2CC
mov.b r1,@(r0,r14)
lds.l @r15+,pr
jmp @r2
mov.l @r15+,r14

loc_cE33524:
#data 0x0202

loc_cE33526:
#data 0x0080

loc_cE33528:
#data 0x03F8

loc_cE3352A:
#data 0x0328
#data 0x00F0

loc_cE3352E:
#data 0x02A4
#data loc_8c035162
#data loc_8c26823C
#data loc_8c26A518
#data 0x3CA3D70A
#data loc_8c034E8C
#data loc_8c042008

#align4
loc_cE33548_to_loc_8c05A2CC:
#data loc_8c05A2CC
#data loc_8c0F047C

#align4
loc_cE33550_to_loc_cE3641C_to_loc_cE33554:
#data loc_cE3641C_to_loc_cE33554


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
mov.l @(loc_cE33648_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
mov r14,r4
jmp @r3
mov.l @r15+,r14

loc_cE33582:
lds.l @r15+,pr
rts
mov.l @r15+,r14

;==============================================

#align4
loc_cE33588:
#data 0x4F222FE6
#data 0x6E43B3BD
#data 0x2008600C
#data 0xB4C58B32
#data 0x600C64E3
#data 0x8B2D2008
#data 0xB496E500
#data 0x600C64E3
#data 0x8B012008
#data 0x64E3B4A3

#align4
loc_cE335B0:
#data 0x420BD225
#data 0x904664E3
#data 0x233803EC
#data 0xE15C8B0E
#data 0xE03431EC
#data 0xF2E6F318
#data 0x31ECE168
#data 0xFE27F230
#data 0xF2E6E05C
#data 0xF230F318
#data 0xFE27A010

#align4
loc_cE335DC:
#data 0x880100EC
#data 0x90308B0C
#data 0xD519E202
#data 0x0E2464E3
#data 0xD318E001
#data 0x80568055
#data 0x4F26E535
#data 0x6EF6432B

#align4
loc_cE335FC:
#data 0x000B4F26
#data 0x6EF6

;==============================================

loc_cE33602:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_cE33648_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt loc_cE33620
bsr loc_cE33EF6
mov r14,r4
lds.l @r15+,pr
mov.l @(loc_cE33654_to_loc_8c05218A,pc),r2 ; r2 set to 0x8C05218A
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
mov.l @(loc_cE33648_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
#data 0x0141

#align4
loc_cE33648_to_loc_8c034DEE:
#data loc_8c034DEE
#data loc_8c26A518
#data loc_8c04223A

#align4
loc_cE33654_to_loc_8c05218A:
#data loc_8c05218A


loc_cE33658:
mov.w @(loc_cE33766,pc),r0 ; r0 set to 0x141
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
cmp/eq 0x01,r0
bf/s loc_cE33684
mov 0x00,r4 ; r4 set to 0x00
mov.w @(loc_cE33766,pc),r0 ; r0 set to 0x141
mov 0x16,r5 ; r5 set to 0x16
mov.l @(loc_cE33770_to_loc_8c0D0584,pc),r13 ; r13 set to 0x8C0D0584
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

#align4
loc_cE336A4:
#data 0x425AD234
#data 0xF30D

loc_cE336AA:
#data 0xF288
#data 0xF82AF230


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
mov.l @(loc_cE3377C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
mov.l @(loc_cE33770_to_loc_8c0D0584,pc),r3 ; r3 set to 0x8C0D0584
mov 0x0D,r6 ; r6 set to 0x0D
mov.b r4,@(r0,r14)
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???
lds.l @r15+,pr
mov.l @(loc_cE33770_to_loc_8c0D0584,pc),r2 ; r2 set to 0x8C0D0584
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
#data 0xD219
#data 0xF30D425A

#align4
loc_cE33724:
#data 0xF230F288
#data 0xF82A


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
mov.l @(loc_cE33788_to_loc_8c03544c,pc),r13 ; r13 set to 0x8C03544C
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
loc_cE33770_to_loc_8c0D0584:
#data loc_8c0D0584

loc_cE33774:
#data 0x41D55555
#data 0xC1D55555

#align4
loc_cE3377C_to_loc_8c034DEE:
#data loc_8c034DEE

loc_cE33780:
#data 0xC2855555
#data 0x42855555

#align4
loc_cE33788_to_loc_8c03544c:
#data loc_8c03544c


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
add 0x06,r6
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
mov.l @(loc_cE338C4_to_loc_8c05A2CC,pc),r2 ; r2 set to 0x8C05A2CC
mov.b r1,@(r0,r14)
jsr @r2
mov r14,r4
mov.l @(loc_cE338C8_to_loc_8c26823C,pc),r3 ; r3 set to 0x8C26823C
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
add 0x14,r6

loc_cE33800:
mov 0x25,r0 ; r0 set to 0x25
mov.b @(r0,r14),r6
mov 0x01,r7 ; r7 set to 0x01
extu.b r6,r6
shll r6
add 0x15,r6

loc_cE3380C:
jsr @r13
mov r14,r4
mov.l @(loc_cE338C8_to_loc_8c26823C,pc),r3 ; r3 set to 0x8C26823C,r3 set to 0x8C26823C
mov.l @r3,r0 ; r0 ??
mov.l @(0x1C,r0),r0
tst 0x03,r0
bf loc_cE33832
lds.l @r15+,pr
mova @(loc_cE338CC,pc),r0; r0 set to 0xCE338CC,r0 set to 0xCE338CC
mov.l @(loc_cE338D4_to_loc_8c0FD75C,pc),r2 ; r2 set to 0x8C0FD75C,r2 set to 0x8C0FD75C
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
mov.l @(loc_cE338D8_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt loc_cE33902
mov.b @(0x07,r14),r0
mov 0x02,r4 ; r4 set to 0x02
mov.l @(loc_cE338DC_to_loc_8c26A518,pc),r5 ; r5 set to 0x8C26A518
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
mov.l @(loc_cE338E4_to_loc_8c034E8C,pc),r13 ; r13 set to 0x8C034E8C
mov.b r3,@(r0,r14)
add 0x0B,r0 ; r0 set to 0x1AC
mov.w r5,@(r0,r14)
add 0xF2,r0 ; r0 set to 0x19E
mov.b r5,@(r0,r14)
add 0x26,r0 ; r0 set to 0x1C4
mov.l @(loc_cE338E0_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0
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
#data 0x0000

#align4
loc_cE338C0_to_loc_cE36430_to_loc_cE3383A:
#data loc_cE36430_to_loc_cE3383A

loc_cE338C4_to_loc_8c05A2CC:
#data loc_8c05A2CC

loc_cE338C8_to_loc_8c26823C:
#data loc_8c26823C

loc_cE338CC:
#data 0x3ECCCCCD

#align4
loc_cE338D0:
#data 0x40733333

#align4
loc_cE338D4_to_loc_8c0FD75C:
#data loc_8c0FD75C

loc_cE338D8_to_loc_8c034DEE:
#data loc_8c034DEE

loc_cE338DC_to_loc_8c26A518:
#data loc_8c26A518

loc_cE338E0_to_loc_8c2896B0:
#data loc_8c2896B0

loc_cE338E4_to_loc_8c034E8C:
#data loc_8c034E8C


loc_cE338E8:
mov 0x03,r0 ; r0 set to 0x03
mov 0x16,r5 ; r5 set to 0x16
mov.b r0,@(0x07,r14)
mov 0x2A,r6 ; r6 set to 0x2A
jsr @r13
mov r14,r4

loc_cE338F4:
lds.l @r15+,pr
mov.l @(loc_cE33A04_to_loc_8c0805D8,pc),r3 ; r3 set to 0x8C0805D8,r3 set to 0x8C0805D8
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
mov.l @(loc_cE33A08_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
mov.l @(loc_cE33A0C_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C,r3 set to 0x8C034E8C
mov r14,r4
jmp @r3
mov.l @r15+,r14

loc_cE3394A:
lds.l @r15+,pr
rts
mov.l @r15+,r14

;==============================================

#align4
loc_cE33950:
#data 0x4F222FE6
#data 0x430BD32C
#data 0x600E6E43
#data 0x891F4011
#data 0x934B904B
#data 0x644D04ED
#data 0x89022348
#data 0x21489148
#data 0x8908

loc_cE33972:
#data 0xD326
#data 0x64E3E001
#data 0x4F2680E7
#data 0xE516E629
#data 0x6EF6432B

#align4
loc_cE33984:
#data 0x933A02ED
#data 0x2238622D
#data 0xD21F8908
#data 0x64E3E004
#data 0x4F2680E7
#data 0xE516E626
#data 0x6EF6422B

#align4
loc_cE339A0:
#data 0x000B4F26
#data 0x6EF6

;==============================================

loc_cE339A6:
#data 0x2FE6
#data 0xD3174F22
#data 0x6E43430B
#data 0x4011600E
#data 0x9020891E
#data 0x04ED9320
#data 0x2348644D
#data 0x911C8902
#data 0x89062148

#align4
loc_cE339C8:
#data 0xE001D310
#data 0x80E7E516
#data 0x430BE629
#data 0x64E3

loc_cE339D6:
#data 0x9010
#data 0x02ED9312
#data 0x2238622D
#data 0xD20A8908
#data 0x64E3E005
#data 0x4F2680E7
#data 0xE516E62C
#data 0x6EF6422B

#align4
loc_cE339F4:
#data 0x000B4F26
#data 0x6EF6

;==============================================

loc_cE339FA:
#data 0x0340

loc_cE339FC:
#data 0x3000

loc_cE339FE:
#data 0x2000
#data 0x00001000

#align4
loc_cE33A04_to_loc_8c0805D8:
#data loc_8c0805D8

loc_cE33A08_to_loc_8c034DEE:
#data loc_8c034DEE

loc_cE33A0C_to_loc_8c034E8C:
#data loc_8c034E8C


loc_cE33A10:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_cE33B34_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
mov.l @(loc_cE33B38_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
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
mov.l @(loc_cE33B34_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
mov.l @(loc_cE33B38_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
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
mov.l @(loc_cE33B40_to_loc_8c05A2CC,pc),r2 ; r2 set to 0x8C05A2CC
mov.b r1,@(r0,r14)
lds.l @r15+,pr
jmp @r2
mov.l @r15+,r14

loc_cE33AB6:
#data 0x2FE6
#data 0xD31E4F22
#data 0x6E43430B
#data 0x70FF85EF
#data 0x600F81EF
#data 0x890C4015
#data 0xE51684E7
#data 0xE625D319
#data 0x80E77001
#data 0x64E3430B
#data 0xE002D419
#data 0xE0018045
#data 0x8046

loc_cE33AE6:
#data 0x4F26
#data 0x6EF6000B

;==============================================

loc_cE33AEC:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(loc_cE33B34_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
#data 0x0000

#align4
loc_cE33B34_to_loc_8c034DEE:
#data loc_8c034DEE

loc_cE33B38_to_loc_8c034E8C:
#data loc_8c034E8C

loc_cE33B3C_to_loc_cE36448_to_loc_cE33AB6:
#data loc_cE36448_to_loc_cE33AB6

loc_cE33B40_to_loc_8c05A2CC:
#data loc_8c05A2CC
#data loc_8c26A518

#align4
loc_cE33B48_to_loc_cE36450_to_loc_cE33B4C:
#data loc_cE36450_to_loc_cE33B4C

loc_cE33B4C:
#data 0x6E432FE6
#data 0x84E74F22
#data 0xD350E643
#data 0x80E77001
#data 0xF408C74D
#data 0xF356E00C
#data 0xF537F341
#data 0xF256E014
#data 0xF527F241
#data 0xF356E00C
#data 0xFE37E050
#data 0xF356E014
#data 0xE516E054
#data 0x430BFE37
#data 0xD34564E3
#data 0x84E2E101
#data 0x600C6230
#data 0x622C410C
#data 0x8B042218
#data 0xE601D241
#data 0x420B6563
#data 0x64E3

loc_cE33BA2:
#data 0xD340
#data 0x430BE523
#data 0xD23F64E3
#data 0x420BE53A
#data 0x906864E3
#data 0x9367E102
#data 0x02EC64E3
#data 0x0E24223B
#data 0xD23A9063
#data 0x4F260E14
#data 0x6EF6422B


loc_cE33BCC:
mova @(loc_cE33C94,pc),r0; r0 init to 0xCE33C94
mov.l r14,@-r15
mov.l r13,@-r15
mov r5,r13
mov r4,r14
mov.l @(loc_cE33CB0_to_loc_8c26823C,pc),r3 ; r3 set to 0x8C26823C
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
mov.l @(loc_cE33CB4_to_loc_8c03544c,pc),r2 ; r2 set to 0x8C03544C
mov.b @(r0,r14),r6
mov 0x01,r7 ; r7 set to 0x01
mov 0x00,r5 ; r5 set to 0x00
extu.b r6,r6
add 0x06,r6
jsr @r2
mov r14,r4
bra loc_cE33C22
nop

loc_cE33C1A:
mov.l @(loc_cE33CB8_to_loc_8c035162,pc),r2 ; r2 set to 0x8C035162
mov 0x08,r5 ; r5 set to 0x08
jsr @r2
mov r14,r4

loc_cE33C22:
mova @(loc_cE33CBC,pc),r0; r0 init to 0xCE33CBC,r0 init to 0xCE33CBC
fmov.s @r0,fr3
mov 0x54,r0 ; r0 set to 0x54,r0 set to 0x54
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
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
mov.l @(loc_cE33CC0_to_loc_8c05218A,pc),r3 ; r3 set to 0x8C05218A,r3 set to 0x8C05218A
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
mov.l @(loc_cE33CB8_to_loc_8c035162,pc),r3 ; r3 set to 0x8C035162,r3 set to 0x8C035162
mov r13,r5 ; r5 set to 0x00,r5 set to 0x00
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???,r3 ??? bc r14 is ???
mov 0x38,r0 ; r0 set to 0x38,r0 set to 0x38
fmov.s fr3,@(r0,r14)
mov.w @(loc_cE33C86,pc),r0 ; r0 set to 0x202,r0 set to 0x202
mov.b r13,@(r0,r14)
jsr @r3
mov r14,r4
mov.l @(loc_cE33C98_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C,r2 set to 0x8C034E8C
mov 0x16,r5 ; r5 set to 0x16,r5 set to 0x16
mov 0x3D,r6 ; r6 set to 0x3D,r6 set to 0x3D
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

loc_cE33C86:
#data 0x0202
#data 0x01EB0080

loc_cE33C8C:
#data 0x041C

loc_cE33C8E:
#data 0x03F9

loc_cE33C90:
#data 0x0327
#data 0x0000

#align4
loc_cE33C94:
#data 0x3CA3D70A

#align4
loc_cE33C98_to_loc_8c034E8C:
#data loc_8c034E8C
#data loc_8c289628
#data loc_8c0D13BC
#data loc_8c042008
#data loc_8c04223A
#data loc_8c05A2CC

#align4
loc_cE33CB0_to_loc_8c26823C:
#data loc_8c26823C

loc_cE33CB4_to_loc_8c03544c:
	#data loc_8c03544c

loc_cE33CB8_to_loc_8c035162:
#data loc_8c035162

loc_cE33CBC:
#data 0x3F000000

#align4
loc_cE33CC0_to_loc_8c05218A:
#data loc_8c05218A


loc_cE33CC4:
mov.w @(loc_cE33E02,pc),r0 ; r0 set to 0x202
mov 0x02,r1 ; r1 set to 0x02
mov.w @(loc_cE33E04,pc),r3 ; r3 set to 0x80
mov r14,r4
mov.b @(r0,r14),r2
or r3,r2
mov.b r2,@(r0,r14)
add 0xE9,r0 ; r0 set to 0x1EB
mov.l @(loc_cE33E10_to_loc_8c05A2CC,pc),r2 ; r2 set to 0x8C05A2CC
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
mov.l @(loc_cE33E14_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt loc_cE33D02
mov.l @r15,r4
add 0x04,r15
mov.l @(loc_cE33E18_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
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
mov.l @(loc_cE33E1C_to_loc_8c2896B0,pc),r5 ; r5 set to 0x8C2896B0
mov.l @(loc_cE33E20_to_loc_8c034E8C,pc),r13 ; r13 set to 0x8C034E8C
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
mov.l @(loc_cE33E24_to_loc_8c26A518,pc),r5 ; r5 set to 0x8C26A518,r5 set to 0x8C26A518
mov 0x01,r0 ; r0 set to 0x01,r0 set to 0x01
mov.l @(loc_cE33E28_to_loc_8c042008,pc),r3 ; r3 set to 0x8C042008,r3 set to 0x8C042008
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
mov.l @(loc_cE33E28_to_loc_8c042008,pc),r3 ; r3 set to 0x8C042008
mov 0x25,r5 ; r5 set to 0x25
jsr @r3
mov r14,r4
mov.l @(loc_cE33E2C_to_loc_8c04223A,pc),r2 ; r2 set to 0x8C04223A
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

;==============================================

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
#data 0x0000

#align4
loc_cE33E10_to_loc_8c05A2CC:
#data loc_8c05A2CC

loc_cE33E14_to_loc_8c034DEE:
#data loc_8c034DEE

loc_cE33E18_to_loc_8c051648:
#data loc_8c051648

loc_cE33E1C_to_loc_8c2896B0:
#data loc_8c2896B0

loc_cE33E20_to_loc_8c034E8C:
#data loc_8c034E8C

loc_cE33E24_to_loc_8c26A518:
#data loc_8c26A518

loc_cE33E28_to_loc_8c042008:
#data loc_8c042008

loc_cE33E2C_to_loc_8c04223A:
#data loc_8c04223A


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
mov.l @(loc_cE33F18_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
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
#data 0xC71B
#data 0xE05CF308
#data 0x902AFE37
#data 0x233803EC
#data 0x8903

loc_cE33EC2:
#data 0xE05C
#data 0xF34DF3E6
#data 0xFE37


loc_cE33ECA:
mov 0x01,r0 ; r0 set to 0x01
lds.l @r15+,pr
rts
mov.l @r15+,r14

;==============================================

loc_cE33ED2:
#data 0x655C
#data 0x89022558
#data 0xA0019015
#data 0x0009

loc_cE33EDE:
#data 0x9013

#align4
loc_cE33EE0:
#data 0x9212044D
#data 0x644D644D
#data 0x8B012428
#data 0xE000000B

;==============================================

#align4
loc_cE33EF0:
#data 0x000BE001
#data 0x0009

;==============================================

loc_cE33EF6:
mov 0x01,r0 ; r0 set to 0x01
mov.l @(loc_cE33F18_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
mov.b r0,@(0x06,r4)
mov 0x00,r0 ; r0 set to 0x00
mov 0x1C,r6 ; r6 set to 0x1C
mov.b r0,@(0x07,r4)
jmp @r3
mov 0x16,r5

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
#data 0x0000

#align4
loc_cE33F18_to_loc_8c034E8C:
#data loc_8c034E8C

loc_cE33F1C:
#data 0xC0B40000
#data 0x40B40000

#align4
loc_cE33F24:
#data 0x4F22C74F
#data 0x9094F408
#data 0x2338034C
#data 0xC74D8901
#data 0xF408

loc_cE33F36:
#data 0x908F
#data 0xE034034E
#data 0xF336F246
#data 0xF235F340
#data 0x90868903
#data 0x2228024C
#data 0x8B0B

loc_cE33F4E:
#data 0x9083
#data 0xE034024E
#data 0xF326F246
#data 0xF235F340
#data 0x907A8B06
#data 0x2228024C
#data 0x8B02

loc_cE33F66:
#data 0x4F26
#data 0xE000000B

;==============================================

#align4
loc_cE33F6C:
#data 0xE3009075
#data 0xE61FF48D
#data 0xE05C0434
#data 0xE060F447
#data 0xE068F447
#data 0xE06CF447
#data 0xE001F447
#data 0xE0028046
#data 0x8047D337
#data 0xE516430B
#data 0x4F26E001
#data 0x0009000B

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
mov.l @(loc_cE34074_to_loc_8c05218A,pc),r3 ; r3 set to 0x8C05218A
add 0x01,r0
mov.b r0,@(0x06,r14)
jsr @r3
mov r14,r4
mov.w @(loc_cE3405E,pc),r0 ; r0 set to 0x130
mov 0x05,r5 ; r5 set to 0x05
mov.w @(loc_cE3405E,pc),r1 ; r1 set to 0x130
mov.w @(r0,r14),r0 ; r0 ??? bc r14 is ???
mov.l @(loc_cE34078_to_loc_8c056DE4,pc),r3 ; r3 set to 0x8C056DE4
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
mov.l @(loc_cE3407C_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0
mov.l r13,@(r0,r14)
mov.b @(0x02,r14),r0
mov.l @r3,r2
extu.b r0,r0 ; r0 set to 0xC4
shll r0 ; r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2)
mov.l @(loc_cE3406C_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
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
mov.l @(loc_cE3408C_to_loc_8c02FEC4,pc),r3 ; r3 set to 0x8C02FEC4,r3 set to 0x8C02FEC4
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
#data 0x01D2
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
#data 0xC1BAAAAA
#data 0x41BAAAAA

#align4
loc_cE3406C_to_loc_8c034E8C:
#data loc_8c034E8C

loc_cE34070_to_loc_cE3645C_to_loc_cE33FB2:
#data loc_cE3645C_to_loc_cE33FB2

loc_cE34074_to_loc_8c05218A:
#data loc_8c05218A

loc_cE34078_to_loc_8c056DE4:
#data loc_8c056DE4

loc_cE3407C_to_loc_8c2896B0:
#data loc_8c2896B0

loc_cE34080:
#data 0x41480000

#align4
loc_cE34084:
#data 0xC1480000

#align4
loc_cE34088:
#data 0x415EDB6D

#align4
loc_cE3408C_to_loc_8c02FEC4:
#data loc_8c02FEC4


loc_cE34090:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l r5,@r15
mov 0x01,r5 ; r5 set to 0x01
mov.l @(loc_cE341A4_to_loc_8c02FEC4,pc),r3 ; r3 set to 0x8C02FEC4
mov r4,r14
mov 0x07,r6 ; r6 set to 0x07
jsr @r3
mov r14,r4
mov.w @(loc_cE34198,pc),r0 ; r0 set to 0x1F5
mov 0x02,r2 ; r2 set to 0x02
mov 0x5C,r1 ; r1 set to 0x5C
mov.l @(loc_cE341A8_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
mov.l @(loc_cE341AC_to_loc_8c26A518,pc),r4 ; r4 set to 0x8C26A518
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
mov.l @(loc_cE341B8_to_loc_8c042008,pc),r3 ; r3 set to 0x8C042008,r3 set to 0x8C042008
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
mov.l @(loc_cE341A4_to_loc_8c02FEC4,pc),r3 ; r3 set to 0x8C02FEC4
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
mov.l @(loc_cE341A8_to_loc_8c034DEE,pc),r2 ; r2 set to 0x8C034DEE
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
mov.l @(loc_cE341AC_to_loc_8c26A518,pc),r4 ; r4 set to 0x8C26A518
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
#data 0x0000

#align4
loc_cE341A4_to_loc_8c02FEC4:
#data loc_8c02FEC4

loc_cE341A8_to_loc_8c034DEE:
#data loc_8c034DEE

loc_cE341AC_to_loc_8c26A518:
#data loc_8c26A518

loc_cE341B0:
#data 0xC2D55555

#align4
loc_cE341B4:
#data 0x42D55555

#align4
loc_cE341B8_to_loc_8c042008:
#data loc_8c042008

loc_cE341BC:
#data 0xC2200000

#align4
loc_cE341C0:
#data 0xC0555555


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
mov.l @(loc_cE342A4_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C,r3 set to 0x8C034E8C
jsr @r3
mov r14,r4
mov r14,r4
add 0x04,r15
lds.l @r15+,pr
mov.l @(loc_cE342A8_to_loc_8c053082,pc),r2 ; r2 set to 0x8C053082,r2 set to 0x8C053082
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
mov.l @(loc_cE342AC_to_loc_8c02FEC4,pc),r3 ; r3 set to 0x8C02FEC4
mov r4,r14
mov 0x07,r6 ; r6 set to 0x07
jsr @r3
mov r14,r4
mov.w @(loc_cE34296,pc),r0 ; r0 set to 0x1F5
mov 0x02,r2 ; r2 set to 0x02
mov 0x60,r1 ; r1 set to 0x60
mov.l @(loc_cE342B0_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
mov.l @(loc_cE342B8_to_loc_8c26A5A8,pc),r3 ; r3 set to 0x8C26A5A8
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
mov.l @(loc_cE342BC_to_loc_8c042008,pc),r3 ; r3 set to 0x8C042008
jmp @r3
mov.l @r15+,r14

loc_cE3428C:
add 0x04,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14

;==============================================

loc_cE34294:
#data 0x0088

loc_cE34296:
#data 0x01F5

#align4
loc_cE34298:
#data 0x42200000

#align4
loc_cE3429C:
#data 0x40555555

#align4
loc_cE342A0:
#data 0x42092492

#align4
loc_cE342A4_to_loc_8c034E8C:
#data loc_8c034E8C

loc_cE342A8_to_loc_8c053082:
#data loc_8c053082

loc_cE342AC_to_loc_8c02FEC4:
#data loc_8c02FEC4

loc_cE342B0_to_loc_8c034DEE:
#data loc_8c034DEE

loc_cE342B4:
#data 0xC3092492

#align4
loc_cE342B8_to_loc_8c26A5A8:
#data loc_8c26A5A8

loc_cE342BC_to_loc_8c042008:
#data loc_8c042008


loc_cE342C0:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov.l r5,@r15
mov 0x01,r5 ; r5 set to 0x01
mov.l @(loc_cE343F4_to_loc_8c02FEC4,pc),r3 ; r3 set to 0x8C02FEC4
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
mov.l @(loc_cE343F8_to_loc_8c034DEE,pc),r2 ; r2 set to 0x8C034DEE
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
mov.l @(loc_cE343FC_to_loc_8c26A518,pc),r4 ; r4 set to 0x8C26A518
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
mov.l @(loc_cE3440C_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C,r3 set to 0x8C034E8C
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
mov.l @(loc_cE343F4_to_loc_8c02FEC4,pc),r3 ; r3 set to 0x8C02FEC4
mov r4,r14
mov 0x07,r6 ; r6 set to 0x07
jsr @r3
mov r14,r4
mov.w @(loc_cE343EA,pc),r0 ; r0 set to 0x1F5
mov 0x02,r2 ; r2 set to 0x02
mov 0x5C,r1 ; r1 set to 0x5C
mov.l @(loc_cE343F8_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
mov.l @(loc_cE343FC_to_loc_8c26A518,pc),r4 ; r4 set to 0x8C26A518
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
loc_cE343F4_to_loc_8c02FEC4:
#data loc_8c02FEC4

loc_cE343F8_to_loc_8c034DEE:
#data loc_8c034DEE

loc_cE343FC_to_loc_8c26A518:
#data loc_8c26A518

loc_cE34400:
#data 0xC24DB6DB

#align4
loc_cE34404:
#data 0xC2200000

#align4
loc_cE34408:
#data 0x42200000

#align4
loc_cE3440C_to_loc_8c034E8C:
#data loc_8c034E8C

loc_cE34410:
#data 0x42D55555


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
mov.l @(loc_cE34530_to_loc_8c042008,pc),r3 ; r3 set to 0x8C042008,r3 set to 0x8C042008
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
mov.l @(loc_cE34534_to_loc_8c02FEC4,pc),r3 ; r3 set to 0x8C02FEC4
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
mov.l @(loc_cE34538_to_loc_8c034DEE,pc),r2 ; r2 set to 0x8C034DEE
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
mov.l @(loc_cE3453C_to_loc_8c26A518,pc),r4 ; r4 set to 0x8C26A518
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
#data 0x902D
#data 0xC720F446
#data 0xE034F308
#data 0xF230F24C
#data 0xF215F1E6
#data 0xC71D891F
#data 0xF308

loc_cE344DA:
#data 0xF430
#data 0xD11CE034
#data 0xD31CEC00
#data 0x415AE515
#data 0xFE47E61D
#data 0xF30D84E6
#data 0x80E67001
#data 0xF2E6E038
#data 0xFE27F231
#data 0xF2E6E060
#data 0xFE27F24D
#data 0x0EC49011
#data 0x0EC6E048
#data 0x64E3430B
#data 0x000960C3
#data 0x81DE


loc_cE34516:
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14

;==============================================

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
#data 0x01FD

#align4
loc_cE3452C:
#data 0xC2D55555

#align4
loc_cE34530_to_loc_8c042008:
#data loc_8c042008

loc_cE34534_to_loc_8c02FEC4:
#data loc_8c02FEC4

loc_cE34538_to_loc_8c034DEE:
#data loc_8c034DEE

loc_cE3453C_to_loc_8c26A518:
#data loc_8c26A518

loc_cE34540:
#data 0x42200000

#align4
loc_cE34544:
#data 0x40555555
#data 0xC2200000
#data 0xC0555555
#data 0x424DB6DB
#data loc_8c034E8C

#align4
loc_cE34558:
#data 0xE6072FE6
#data 0xD33D4F22
#data 0x430B6E43
#data 0xE160E501
#data 0x31ECD33B
#data 0xF318E038
#data 0xE16CF2E6
#data 0xF23031EC
#data 0xE060FE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x64E3430B
#data 0x64E3B0F9
#data 0x2008600C
#data 0xC7328B0B
#data 0x905AF308
#data 0xE038F2E6
#data 0xF230F1E6
#data 0x8902F125
#data 0x700184E6
#data 0x80E6

loc_cE345AA:
#data 0x4F26
#data 0x6EF6000B

;==============================================

loc_cE345B0:
mov.l r14,@-r15
mov 0x07,r6 ; r6 set to 0x07
mov.l r13,@-r15
mov r4,r14
sts.l pr,@-r15
mov.l @(loc_cE34654_to_loc_8c02FEC4,pc),r3 ; r3 set to 0x8C02FEC4
mov r5,r13
jsr @r3
mov 0x01,r5 ; r5 set to 0x01
mov.w @(0x1C,r13),r0
mov 0x48,r1 ; r1 set to 0x48
mov.w @(loc_cE34650,pc),r3 ; r3 set to 0x800
add r14,r1 ; r1 ??? bc r14 is ???
mov.l @(loc_cE34658_to_loc_8c034DEE,pc),r2 ; r2 set to 0x8C034DEE
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
mov.l @(loc_cE34664_to_loc_8c042008,pc),r3 ; r3 set to 0x8C042008
mov 0x03,r5 ; r5 set to 0x03
mov.l r4,@(r0,r14)
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???
mov.l @(loc_cE34654_to_loc_8c02FEC4,pc),r2 ; r2 set to 0x8C02FEC4
mov 0x00,r6 ; r6 set to 0x00
mov r6,r5 ; r5 set to 0x00
jsr @r2
mov r14,r4
lds.l @r15+,pr
mov.l @(loc_cE34668_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_cE34646:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14

;==============================================

loc_cE3464E:
#data 0x041C

loc_cE34650:
#data 0x0800

loc_cE34652:
#data 0x01F9

#align4
loc_cE34654_to_loc_8c02FEC4:
#data loc_8c02FEC4

loc_cE34658_to_loc_8c034DEE:
#data loc_8c034DEE
#data 0x42CDB6DB

#align4
loc_cE34660:
#data 0x424DB6DB

#align4
loc_cE34664_to_loc_8c042008:
#data loc_8c042008

loc_cE34668_to_loc_8c051648:
#data loc_8c051648

loc_cE3466C:
#data 0xE15C2FE6
#data 0x31EC6E43
#data 0xD34EE034
#data 0xF2E64F22
#data 0xE168F318
#data 0xF23031EC
#data 0xE05CFE27
#data 0xE160F318
#data 0x31ECF2E6
#data 0xFE27F230
#data 0xF2E6E038
#data 0xE16CF318
#data 0xF23031EC
#data 0xE060FE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x64E3430B
#data 0x4011600E
#data 0x84E68902
#data 0x80E67001

#align4
loc_cE346BC:
#data 0xF3E69074
#data 0xF2E6E038
#data 0x8917F235
#data 0xE300906E
#data 0xE038F3E6
#data 0x906AFE37
#data 0xD3370E34
#data 0x64E3430B
#data 0xF48DE05C
#data 0xE060FE47
#data 0xE068FE47
#data 0xE06CFE47
#data 0x64E3D332
#data 0x4F26FE47
#data 0x6EF6432B

#align4
loc_cE346F8:
#data 0x000B4F26
#data 0x6EF6

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
mov.l @(loc_cE347B4_to_loc_8c0511B4,pc),r3 ; r3 set to 0x8C0511B4
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
mov.l @(loc_cE347B8_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
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

loc_cE347A8:
#data 0x041C

loc_cE347AA:
#data 0x01F9

loc_cE347AC:
#data 0x0525
#data 0x0000
#data loc_8c034DEE

#align4
loc_cE347B4_to_loc_8c0511B4:
#data loc_8c0511B4

loc_cE347B8_to_loc_8c051648:
#data loc_8c051648

loc_cE347BC:
#data 0xF308C749
#data 0xF2E69089
#data 0xF1E6E038
#data 0xF125F230
#data 0x90838B6D
#data 0x03ED9283
#data 0x2328633D
#data 0xD3438925
#data 0x6563E600
#data 0x64E3430B
#data 0x0ED6E048
#data 0xFEF7E05C
#data 0xFEF7E060
#data 0xFEF7E068
#data 0xFEF7E06C
#data 0x600C84E6
#data 0x8F078805
#data 0xD13A64E3
#data 0xF2E6E038
#data 0xF30D415A
#data 0xFE27F231

#align4
loc_cE34810:
#data 0x430BD337
#data 0x90610009
#data 0xD336E202
#data 0x430B0E24
#data 0xA04064E3
#data 0x0009

loc_cE34826:
#data 0x00ED
#data 0xC860600D
#data 0x893D

loc_cE3482E:
#data 0xD22E
#data 0x6563E600
#data 0x64E3420B
#data 0xD230E048
#data 0xE0090ED6
#data 0xE30180E6
#data 0x0E34904B
#data 0xF228C72B
#data 0xE034F308
#data 0xF230F1E6
#data 0x8B01F125
#data 0x0ED49041

#align4
loc_cE3485C:
#data 0xE515903F
#data 0x03ECE619
#data 0x633C903C
#data 0xD3250E35
#data 0x64E3430B
#data 0xFEF7E05C
#data 0xFEF7E060
#data 0xFEF7E068
#data 0xFEF7E06C
#data 0xF308C720
#data 0xFE37E060
#data 0x03EC9029
#data 0x89022338
#data 0xA002C71D
#data 0xF308

loc_cE34896:
#data 0xC71D
#data 0xF308

loc_cE3489A:
#data 0xD31D
#data 0xE515E05C
#data 0x430BFE37
#data 0x64E3

loc_cE348A6:
#data 0xA001
#data 0xE001


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
mov.l @(loc_cE34900_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
mov 0x09,r6 ; r6 set to 0x09
add 0x01,r0
mov.b r0,@(0x06,r14)
mov 0x13,r5 ; r5 set to 0x13
lds.l @r15+,pr
jmp @r3
mov.l @r15+,r14
#data 0x041C
#data 0x030004E0
#data 0x01D201FC
#data 0x00000130
#data 0x43092492
#data loc_8c02FEC4
#data 0x42CDB6DB
#data loc_8c05218A
#data loc_8c05176E
#data 0x43A00000
#data loc_8c26A5A0

#align4
loc_cE34900_to_loc_8c034E8C:
#data loc_8c034E8C
#data 0xC1809249
#data 0x41A6AAAA
#data 0xC1A6AAAA
#data loc_8c04223A


loc_cE34914:
mov.l @(loc_cE34A48_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt loc_cE3492A
lds.l @r15+,pr
mov.l @(loc_cE34A4C_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
mov r14,r4
jmp @r3
mov.l @r15+,r14

loc_cE3492A:
lds.l @r15+,pr
rts
mov.l @r15+,r14

;==============================================

#align4
loc_cE34930:
#data 0x2FE69085
#data 0x4F226E43
#data 0x600C00EC
#data 0x8B0C8802
#data 0x420BD243
#data 0x907B64E3
#data 0xE038F3E6
#data 0xF325F2E6
#data 0x90758B03
#data 0xE038F3E6
#data 0xFE37

loc_cE3495A:
#data 0x84E6
#data 0xD13D64E3
#data 0x956E600C
#data 0x40084F26
#data 0x35EC031E
#data 0x6EF6432B


loc_cE34970:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(0x06,r14),r0
mov.l @(loc_cE34A58_to_loc_8c05218A,pc),r3 ; r3 set to 0x8C05218A
add 0x01,r0
mov.b r0,@(0x06,r14)
mov 0x78,r0 ; r0 set to 0x78
mov.w r0,@(0x1C,r14)
jsr @r3
mov r14,r4
mov.l @(loc_cE34A5C_to_loc_8c056DE4,pc),r2 ; r2 set to 0x8C056DE4
mov 0x05,r5 ; r5 set to 0x05
jsr @r2
mov r14,r4
mov.l @(loc_cE34A60_to_loc_8c05115A,pc),r3 ; r3 set to 0x8C05115A
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
mov.l @(loc_cE34A64_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0
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
mov.l @(loc_cE34A68_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov.b r13,@(r0,r14)
jsr @r2
mov r14,r4
mov.l @(loc_cE34A6C_to_loc_8c0802D8,pc),r3 ; r3 set to 0x8C0802D8
mov r13,r5 ; r5 set to 0x00
jsr @r3
mov r14,r4
tst r0,r0
bf/s loc_cE349F2
mov.l r0,@(0x14,r14)
lds.l @r15+,pr
mov.l @(loc_cE34A4C_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
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
mov.l @(loc_cE34A70_to_loc_8c04223A,pc),r2 ; r2 set to 0x8C04223A
mov.b r0,@(0x06,r14)
mov 0x1E,r0 ; r0 set to 0x1E
mov r14,r4
mov.w r0,@(0x1C,r14)
lds.l @r15+,pr
mov 0x2A,r5 ; r5 set to 0x2A
jmp @r2
mov.l @r15+,r14

#align4
loc_cE34A20:
#data 0x430BD309
#data 0x85EE64E3
#data 0x81EE70FF
#data 0x4015600F
#data 0x84E68902
#data 0x80E67001

#align4
loc_cE34A38:
#data 0x000B4F26
#data 0x6EF6

;==============================================

loc_cE34A3E:
#data 0x01F9

loc_cE34A40:
#data 0x041C
#data 0x02A4

loc_cE34A44:
#data 0x01A3

loc_cE34A46:
#data 0x0141

#align4
loc_cE34A48_to_loc_8c034DEE:
#data loc_8c034DEE

loc_cE34A4C_to_loc_8c051648:
#data loc_8c051648
#data loc_8c04FEA8

#align4
loc_cE34A54_to_loc_cE36488_to_loc_cE34970:
#data loc_cE36488_to_loc_cE34970

loc_cE34A58_to_loc_8c05218A:
#data loc_8c05218A

loc_cE34A5C_to_loc_8c056DE4:
#data loc_8c056DE4

loc_cE34A60_to_loc_8c05115A:
#data loc_8c05115A

loc_cE34A64_to_loc_8c2896B0:
#data loc_8c2896B0

loc_cE34A68_to_loc_8c034E8C:
#data loc_8c034E8C

loc_cE34A6C_to_loc_8c0802D8:
#data loc_8c0802D8

loc_cE34A70_to_loc_8c04223A:
#data loc_8c04223A


loc_cE34A74:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_cE34B9C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r4,r14
mov.b @(0x06,r14),r0
mov r14,r4
mov.l @(loc_cE34BA0_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
mov 0x13,r6 ; r6 set to 0x13
add 0x01,r0
mov.b r0,@(0x06,r14)
mov 0x15,r5 ; r5 set to 0x15
lds.l @r15+,pr
jmp @r3
mov.l @r15+,r14

loc_cE34A92:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_cE34B9C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt loc_cE34AAC
lds.l @r15+,pr
mov.l @(loc_cE34BA4_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
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
mov.l @(loc_cE34BA8_to_loc_8c059150,pc),r3 ; r3 set to 0x8C059150
mov 0x14,r5 ; r5 set to 0x14
mov.b r2,@(r0,r14)
jsr @r3
mov r14,r4
mov.l @(loc_cE34BAC_to_loc_8c104DF8,pc),r2 ; r2 set to 0x8C104DF8
mov 0x04,r5 ; r5 set to 0x04
jsr @r2
mov r14,r4
mov.l @(loc_cE34BB0_to_loc_8c042008,pc),r3 ; r3 set to 0x8C042008
mov 0x1F,r5 ; r5 set to 0x1F
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(loc_cE34BB4_to_loc_8c04223A,pc),r2 ; r2 set to 0x8C04223A
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
mov.l @(loc_cE34B9C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r4,r14
mov.w @(0x1C,r14),r0
add 0xFF,r0
mov.w r0,@(0x1C,r14)
exts.w r0,r0
cmp/pl r0
bt loc_cE34B04
lds.l @r15+,pr
mov.l @(loc_cE34BA4_to_loc_8c051648,pc),r2 ; r2 set to 0x8C051648
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
mov.l @(loc_cE34BBC_to_loc_8c035162,pc),r3 ; r3 set to 0x8C035162
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
mov.l @(loc_cE34BC0_to_loc_8c05218A,pc),r2 ; r2 set to 0x8C05218A
jsr @r2
mov r14,r4
mov.l @(loc_cE34BC4_to_loc_8c05115A,pc),r3 ; r3 set to 0x8C05115A
jsr @r3
mov r14,r4
mov.w @(loc_cE34B98,pc),r0 ; r0 set to 0x1A1
mov 0x48,r2 ; r2 set to 0x48
mov.l @(loc_cE34BC8_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0
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
mov.l @(loc_cE34BA0_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
jmp @r2
mov.l @r15+,r14

loc_cE34B92:
#data 0x0141

loc_cE34B94:
#data 0x01F9

loc_cE34B96:
#data 0x041C

loc_cE34B98:
#data 0x01A1
#data 0x0000

#align4
loc_cE34B9C_to_loc_8c034DEE:
#data loc_8c034DEE

loc_cE34BA0_to_loc_8c034E8C:
#data loc_8c034E8C

loc_cE34BA4_to_loc_8c051648:
#data loc_8c051648

loc_cE34BA8_to_loc_8c059150:
#data loc_8c059150

loc_cE34BAC_to_loc_8c104DF8:
#data loc_8c104DF8

loc_cE34BB0_to_loc_8c042008:
#data loc_8c042008

loc_cE34BB4_to_loc_8c04223A:
#data loc_8c04223A

loc_cE34BB8_to_loc_cE3649C_to_loc_cE34B1C:
#data loc_cE3649C_to_loc_cE34B1C

loc_cE34BBC_to_loc_8c035162:
#data loc_8c035162

loc_cE34BC0_to_loc_8c05218A:
#data loc_8c05218A

loc_cE34BC4_to_loc_8c05115A:
#data loc_8c05115A

loc_cE34BC8_to_loc_8c2896B0:
#data loc_8c2896B0


loc_cE34BCC:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_cE34D0C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pl r0
bt loc_cE34C04
mov.b @(0x06,r14),r0
mov 0x15,r5 ; r5 set to 0x15
mov.l @(loc_cE34D10_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
mov 0x18,r6 ; r6 set to 0x18
add 0x01,r0
mov.b r0,@(0x06,r14)
jsr @r3
mov r14,r4
mov.l @(loc_cE34D14_to_loc_8c0D0584,pc),r2 ; r2 set to 0x8C0D0584
mov 0x04,r5 ; r5 set to 0x04
mov 0x00,r6 ; r6 set to 0x00
jsr @r2
mov r14,r4
lds.l @r15+,pr
mov.l @(loc_cE34D14_to_loc_8c0D0584,pc),r3 ; r3 set to 0x8C0D0584
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
mov.l @(loc_cE34D0C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt loc_cE34C2A
mov.l @(loc_cE34D18_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
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

#align4
loc_cE34C54:
#data 0xD1319353
#data 0x633033EC
#data 0xF32D435A
#data 0xF20D415A
#data 0xF34DF322

#align4
loc_cE34C68:
#data 0x9048F228
#data 0xF22AF230
#data 0x0E44

loc_cE34C72:
#data 0x9046
#data 0x880100EC
#data 0x90428B0E
#data 0xF38D65F3
#data 0xC7270E44
#data 0xF308FF3A
#data 0xF2F6E004
#data 0xD325E004
#data 0xFF27F230
#data 0x64E3430B

#align4
loc_cE34C98:
#data 0x4F267F0C
#data 0x6EF6000B

;==============================================

#align4
loc_cE34CA0:
#data 0xE3059030
#data 0x6E432FE6
#data 0x0E344F22
#data 0x640C84E6
#data 0x890E2448
#data 0x00096043
#data 0x890A8808
#data 0xE1029023
#data 0x02EC9322
#data 0x0E24223B
#data 0xD21770E9
#data 0x420B0E14
#data 0x64E3

loc_cE34CD2:
#data 0x84E6
#data 0xD11564E3
#data 0x9516600C
#data 0x40084F26
#data 0x35EC031E
#data 0x6EF6432B


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

loc_cE34CFE:
#data 0x0141

loc_cE34D00:
#data 0x01D2
#data 0x0140
#data 0x02020328
#data 0x0080

loc_cE34D0A:
#data 0x02A4

#align4
loc_cE34D0C_to_loc_8c034DEE:
#data loc_8c034DEE

loc_cE34D10_to_loc_8c034E8C:
#data loc_8c034E8C

loc_cE34D14_to_loc_8c0D0584:
#data loc_8c0D0584

loc_cE34D18_to_loc_8c051648:
#data loc_8c051648

loc_cE34D1C:
#data 0x3FD55555
#data 0x42CDB6DB
#data loc_8c050EA4
#data loc_8c05A2CC

#align4
loc_cE34D2C_to_loc_cE364A8_to_loc_cE34CE8:
#data loc_cE364A8_to_loc_cE34CE8

loc_cE34D30_to_loc_cE364CC_to_loc_cE3319C:
#data loc_cE364CC_to_loc_cE3319C

loc_cE34D34:
#data 0x034C9084
#data 0x89052338
#data 0x70FF8554
#data 0x600F8154
#data 0x890E4015

#align4
loc_cE34D48:
#data 0xE1028446
#data 0x7001937A
#data 0xE0008046
#data 0x90748047
#data 0x223B024C
#data 0x70E90424
#data 0x422BD23A
#data 0x0414

loc_cE34D66:
#data 0x000B
#data 0x0009

;==============================================

loc_cE34D6A:
#data 0x2FE6
#data 0xE0066E43
#data 0x6D532FD6
#data 0xE101D236
#data 0x80E64F22
#data 0x80E7E000
#data 0x81D5E078
#data 0x632084E2
#data 0x410C600C
#data 0x2318633C
#data 0x90558B0B
#data 0x211801EC
#data 0x90548907
#data 0xD32D65D3
#data 0x81D5750A
#data 0x430BE606
#data 0x64E3

loc_cE34DAA:
#data 0xD22B
#data 0xE621E516
#data 0x64E3420B
#data 0xD3294F26
#data 0xE54C64E3
#data 0x432B6DF6
#data 0x6EF6

loc_cE34DC2:
#data 0x2FE6
#data 0xB2744F22
#data 0x600C6E43
#data 0x8B342008
#data 0x64E3B303
#data 0x2008600C
#data 0xE5008B2F
#data 0x64E3B2E3
#data 0x2008600C
#data 0xB2F08B01
#data 0x64E3

loc_cE34DEA:
#data 0xD21D
#data 0x64E3420B
#data 0x03EC902A
#data 0x8B0E2338
#data 0x31ECE15C
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031EC
#data 0xE05CFE27
#data 0xF318F2E6
#data 0xA012F230
#data 0xFE27

loc_cE34E16:
#data 0xE401
#data 0x2338634E
#data 0x0E448D0D
#data 0xE202D510
#data 0x60430E24
#data 0xD30C0009
#data 0x805564E3
#data 0xE5358056
#data 0x432B4F26
#data 0x6EF6

loc_cE34E3A:
#data 0x4F26
#data 0x6EF6000B

;==============================================
#data 0x02020525
#data 0x00960080
#data 0x00000141
#data loc_8c05A2CC
#data loc_8c289628
#data loc_8c0F047C
#data loc_8c034E8C
#data loc_8c04223A
#data loc_8c034DEE
#data loc_8c26A518


loc_cE34E68:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_cE34F74_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt loc_cE34E86
bsr loc_cE353CA
mov r14,r4
lds.l @r15+,pr
mov.l @(loc_cE34F78_to_loc_8c05218A,pc),r2 ; r2 set to 0x8C05218A
mov r14,r4
jmp @r2
mov.l @r15+,r14

loc_cE34E86:
lds.l @r15+,pr
rts
mov.l @r15+,r14

;==============================================

#align4
loc_cE34E8C:
#data 0x6E432FE6
#data 0x2FD6906D
#data 0x4F222F86
#data 0x233803EC
#data 0xED008F04
#data 0x00EC9066
#data 0x8B268803

#align4
loc_cE34EA8:
#data 0xF48DE005
#data 0xE05C80E6
#data 0xE060FE47
#data 0xE068FE47
#data 0xE06CFE47
#data 0xE343FE47
#data 0xE5169057
#data 0x0E34E634
#data 0x0ED5700B
#data 0x0ED470F2
#data 0xD32A7026
#data 0x84E20ED6
#data 0x600C6232
#data 0x727C4000
#data 0x7101012D
#data 0xD2260215
#data 0x64E3420B
#data 0xE001D525
#data 0xA0378055
#data 0x8056

loc_cE34EF6:
#data 0xD31F
#data 0x64E3430B
#data 0x4011600E
#data 0x4F268905
#data 0x68F664E3
#data 0xA25E6DF6
#data 0x6EF6

loc_cE34F0E:
#data 0x902F
#data 0x880100EC
#data 0x902B8B10
#data 0xE60DE516
#data 0xDD1A0ED4
#data 0x64E34D0B
#data 0xE60DE517
#data 0x64E34D0B
#data 0xE60DE518
#data 0x64E34D0B
#data 0x0009A016

#align4
loc_cE34F38:
#data 0x00EC901A
#data 0x8B118802
#data 0xE8349016
#data 0x70EF0ED4
#data 0x233803ED
#data 0x38EC8D04
#data 0x415AD10E
#data 0xF30DA003

#align4
loc_cE34F58:
#data 0x425AD20D
#data 0xF30D

loc_cE34F5E:
#data 0xF288
#data 0xF82AF230

#align4
loc_cE34F64:
#data 0x68F64F26
#data 0x000B6DF6
#data 0x019E6EF6
#data 0x01A10141

#align4
loc_cE34F74_to_loc_8c034DEE:
#data loc_8c034DEE

loc_cE34F78_to_loc_8c05218A:
#data loc_8c05218A
#data loc_8c2896B0
#data loc_8c034E8C
#data loc_8c26A518
#data loc_8c0D0584
#data 0x41D55555
#data 0xC1D55555


loc_cE34F94:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
mov.l @(loc_cE350AC_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
mov.l @(loc_cE350B0_to_loc_8c0D0584,pc),r3 ; r3 set to 0x8C0D0584
mov 0x0D,r6 ; r6 set to 0x0D
mov.b r13,@(r0,r14)
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(loc_cE350B0_to_loc_8c0D0584,pc),r2 ; r2 set to 0x8C0D0584
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
#data 0xD22E
#data 0xF30D425A

#align4
loc_cE35004:
#data 0xF230F288
#data 0xF82A


loc_cE3500A:
lds.l @r15+,pr
mov.l @r15+,r8
mov.l @r15+,r13
rts
mov.l @r15+,r14

;==============================================

#align4
loc_cE35014:
#data 0x2FD62FE6
#data 0x7FFC4F22
#data 0xD1276E43
#data 0x84E72F52
#data 0x600C9540
#data 0x031E4008
#data 0x430B35EC
#data 0xD22364E3
#data 0x61306322
#data 0x611CE305
#data 0x8B073133
#data 0x410BD120
#data 0x20080009
#data 0x61F28B02
#data 0x8115E000

#align4
loc_cE35050:
#data 0xDD1D63F2
#data 0x70FF8535
#data 0x600F8135
#data 0x89154015
#data 0xE50084E6
#data 0x7001E701
#data 0xE00080E6
#data 0xE02580E7
#data 0x666C06EC
#data 0x4D0B7606
#data 0x64E364E3
#data 0xE625E516
#data 0x4F267F04
#data 0x6DF6D311
#data 0x6EF6432B

#align4
loc_cE3508C:
#data 0x6032D310
#data 0xC8015007
#data 0xE5008F1E
#data 0x06ECE025
#data 0x666CE701
#data 0xA01D4600
#data 0x7614

loc_cE350A6:
#data 0x0141
#data 0x000002A4

#align4
loc_cE350AC_to_loc_8c034DEE:
#data loc_8c034DEE

loc_cE350B0_to_loc_8c0D0584:
#data loc_8c0D0584

loc_cE350B4:
#data 0xC2855555
#data 0x42855555

loc_cE350BC_to_loc_cE364DC_to_loc_cE35112:
#data loc_cE364DC_to_loc_cE35112
#data loc_8c2896B0
#data loc_8c0310F2

loc_ce350c8:
	#data loc_8c03544c

#data loc_8c034E8C
#data loc_8c26823C

#align4
loc_cE350D4:
#data 0x06ECE025
#data 0x666CE701
#data 0x76154600

#align4
loc_cE350E0:
#data 0x64E34D0B
#data 0x6032D343
#data 0xC8035007
#data 0xC7428B0C
#data 0xF50864E3
#data 0xE600C741
#data 0x6563F408
#data 0x4F267F04
#data 0x6DF6D23F
#data 0x6EF6422B

#align4
loc_cE35108:
#data 0x4F267F04
#data 0x000B6DF6
#data 0x6EF6

;==============================================

loc_cE35112:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_cE35204_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt loc_cE3516E
mov.b @(0x07,r14),r0
mov 0x45,r3 ; r3 set to 0x45
mov.l @(loc_cE35208_to_loc_8c26A518,pc),r4 ; r4 set to 0x8C26A518
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
mov.l @(loc_cE3520C_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0
mov.l r4,@(r0,r14)
mov.b @(0x02,r14),r0
mov.l @r3,r2
extu.b r0,r0 ; r0 set to 0xC4
shll r0 ; r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2)
mov.l @(loc_cE35210_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
jsr @r2
mov r14,r4 ; r4 ??? bc r14 is ???
lds.l @r15+,pr
mov.l @(loc_cE35214_to_loc_8c0805D8,pc),r3 ; r3 set to 0x8C0805D8
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
mov.l @(loc_cE35204_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt loc_cE35198
mov.b @(0x07,r14),r0
mov r14,r4
mov.l @(loc_cE35210_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
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
mov.l @(loc_cE35204_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt loc_cE351C2
mov.b @(0x07,r14),r0
mov r14,r4
mov.l @(loc_cE35210_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
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
mov.l @(loc_cE35204_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt loc_cE351EC
mov.b @(0x07,r14),r0
mov r14,r4
mov.l @(loc_cE35210_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
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

;==============================================

loc_cE351F2:
#data 0x01A1
#data loc_8c26823C
#data 0x3ECCCCCD
#data 0x40733333
#data loc_8c0FD75C

#align4
loc_cE35204_to_loc_8c034DEE:
#data loc_8c034DEE

loc_cE35208_to_loc_8c26A518:
#data loc_8c26A518

loc_cE3520C_to_loc_8c2896B0:
#data loc_8c2896B0

loc_cE35210_to_loc_8c034E8C:
#data loc_8c034E8C

loc_cE35214_to_loc_8c0805D8:
#data loc_8c0805D8


loc_cE35218:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_cE3535C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt loc_cE3523C
mov.b @(0x07,r14),r0
mov r14,r4
mov.l @(loc_cE35360_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
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
mov.l @(loc_cE3535C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt loc_cE35266
mov.b @(0x07,r14),r0
mov r14,r4
mov.l @(loc_cE35360_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
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
mov.l @(loc_cE3535C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt loc_cE3528E
mov.l @(loc_cE35360_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
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

#align4
loc_cE35294:
#data 0x4F222FE6
#data 0x430BD330
#data 0x600E6E43
#data 0x89034011
#data 0x80E6E008
#data 0x80E7E000

#align4
loc_cE352AC:
#data 0x000B4F26
#data 0x6EF6

;==============================================

loc_cE352B2:
#data 0x904F
#data 0x2FE6E500
#data 0x4F22924D
#data 0xD629034D
#data 0xDE27633D
#data 0x8d1D2328
#data 0xE004F48D
#data 0xE05C8047
#data 0xE060F447
#data 0xE068F447
#data 0xE06CF447
#data 0xE343F447
#data 0x0434903A
#data 0x0455700B
#data 0x045470F2
#data 0x04567026
#data 0x63628442
#data 0x4000600C
#data 0x013D737C
#data 0x03157101
#data 0xE620A01F

#align4
loc_cE35304:
#data 0x23289229
#data 0xE0058930
#data 0xE05C8047
#data 0xE060F447
#data 0xE068F447
#data 0xE06CF447
#data 0xE344F447
#data 0x0434901A
#data 0x0455700B
#data 0x045470F2
#data 0x04567026
#data 0x63628442
#data 0x600CE634
#data 0x737C4000
#data 0x7101013D
#data 0x0315

loc_cE35342:
#data 0x4E0B
#data 0xD408E516
#data 0x6053E501
#data 0x80450009
#data 0x8046A025
#data 0x020004E0
#data 0x010001A1

#align4
loc_cE3535C_to_loc_8c034DEE:
#data loc_8c034DEE

loc_cE35360_to_loc_8c034E8C:
#data loc_8c034E8C
#data loc_8c2896B0
#data loc_8c26A518

#align4
loc_cE3536C:
#data 0x600D004D
#data 0x8B03C840
#data 0xE0004F26
#data 0x6EF6000B

;==============================================

#align4
loc_cE3537C:
#data 0x8046E006
#data 0x00096053
#data 0xE6218047
#data 0xE05C814F
#data 0xE060F447
#data 0xE068F447
#data 0xE06CF447
#data 0x4E0BF447
#data 0xE516

loc_cE3539E:
#data 0xE001
#data 0x000B4F26
#data 0x6EF6

;==============================================

loc_cE353A6:
#data 0x655C
#data 0x89022558
#data 0xA001905E
#data 0x0009

loc_cE353B2:
#data 0x905C

#align4
loc_cE353B4:
#data 0x925B044D
#data 0x644D644D
#data 0x8B012428
#data 0xE000000B

;==============================================

#align4
loc_cE353C4:
#data 0x000BE001
#data 0x0009

;==============================================

loc_cE353CA:
mov 0x01,r0 ; r0 set to 0x01
mov.l @(loc_cE35478_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
mov.b r0,@(0x06,r4)
mov 0x00,r0 ; r0 set to 0x00
mov 0x1C,r6 ; r6 set to 0x1C
mov.b r0,@(0x07,r4)
jmp @r3
mov 0x16,r5

loc_cE353DA:
#data 0xC728
#data 0xF4084F22
#data 0x034C9047
#data 0x89012338
#data 0xF408C725

#align4
loc_cE353EC:
#data 0x034E9042
#data 0xF246E034
#data 0xF340F336
#data 0x8903F235
#data 0x024C9039
#data 0x8B0B2228

#align4
loc_cE35404:
#data 0x024E9036
#data 0xF246E034
#data 0xF340F326
#data 0x8B06F235
#data 0x024C902D
#data 0x8B022228

#align4
loc_cE3541C:
#data 0x000B4F26
#data 0xE000

;==============================================

loc_cE35422:
#data 0x9028
#data 0xF48DE500
#data 0xE05C0454
#data 0xE060F447
#data 0xE068F447
#data 0xE06CF447
#data 0xE003F447
#data 0x60538046
#data 0xD30D0009
#data 0x8047E61F
#data 0xE516430B
#data 0x4F26E001
#data 0x0009000B

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
#data 0x03400348
#data 0x01D20C00
#data 0x020C

loc_cE35476:
#data 0x01F9

#align4
loc_cE35478_to_loc_8c034E8C:
#data loc_8c034E8C
#data 0xC1BAAAAA
#data 0x41BAAAAA

#align4
loc_cE35484_to_loc_cE36500_to_loc_cE35488:
#data loc_cE36500_to_loc_cE35488


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
mov.l @(loc_cE3557C_to_loc_8c045790,pc),r2 ; r2 set to 0x8C045790
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
mov.l @(loc_cE3557C_to_loc_8c045790,pc),r2 ; r2 set to 0x8C045790
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
mov.l @(loc_cE3557C_to_loc_8c045790,pc),r2 ; r2 set to 0x8C045790
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
#data 0x0000

#align4
loc_cE3557C_to_loc_8c045790:
#data loc_8c045790

loc_cE35580_to_loc_cE36510_to_loc_cE35584:
#data loc_cE36510_to_loc_cE35584


loc_cE35584:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xF4,r15
mova @(loc_cE356D4,pc),r0; r0 init to 0xCE356D4
mov.l @(loc_cE356DC_to_loc_8c103660,pc),r3 ; r3 set to 0x8C103660
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
mov.l @(loc_cE356E0_to_loc_8c056F2A,pc),r3 ; r3 set to 0x8C056F2A
mov.b r2,@(r0,r14)
jsr @r3
mov r14,r4
mov.l @(loc_cE356E4_to_loc_8c02FEC4,pc),r2 ; r2 set to 0x8C02FEC4
mov 0x0D,r5 ; r5 set to 0x0D
mov 0x06,r6 ; r6 set to 0x06
jsr @r2
mov r14,r4
mov.w @(loc_cE356CC,pc),r0 ; r0 set to 0x1F9
mov 0x02,r3 ; r3 set to 0x02
mov 0x0F,r5 ; r5 set to 0x0F
mov.b r3,@(r0,r14)
mov 0x00,r6 ; r6 set to 0x00
mov.l @(loc_cE356E8_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
jsr @r3
mov r14,r4
add 0x0C,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14

;==============================================

#align4
loc_cE355D0:
#data 0x4F222FE6
#data 0xE0227FF4
#data 0x00EC6E43
#data 0xC802600C
#data 0x90748908
#data 0x02ECE301
#data 0x0E24223A
#data 0x906F01EC
#data 0x0E15611C

#align4
loc_cE355F4:
#data 0xD339C737
#data 0xC737F308
#data 0xFF3A65F3
#data 0xE004F308
#data 0x430BFF37
#data 0x905E64E3
#data 0xD334E20A
#data 0x430B0E24
#data 0xD23364E3
#data 0xE607E50D
#data 0x64E3420B
#data 0xE50FD331
#data 0x430BE605
#data 0xD23064E3
#data 0x420BE504
#data 0x7F0C64E3
#data 0x000B4F26
#data 0x6EF6

;==============================================

loc_cE3563A:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xF4,r15
mova @(loc_cE356D4,pc),r0; r0 init to 0xCE356D4
mov.l @(loc_cE356DC_to_loc_8c103660,pc),r3 ; r3 set to 0x8C103660
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
mov.l @(loc_cE356E0_to_loc_8c056F2A,pc),r3 ; r3 set to 0x8C056F2A
mov.b r2,@(r0,r14)
jsr @r3
mov r14,r4
mov.l @(loc_cE356E4_to_loc_8c02FEC4,pc),r2 ; r2 set to 0x8C02FEC4
mov 0x0D,r5 ; r5 set to 0x0D
mov 0x06,r6 ; r6 set to 0x06
jsr @r2
mov r14,r4
mov.w @(loc_cE356CC,pc),r0 ; r0 set to 0x1F9
mov 0x02,r3 ; r3 set to 0x02
mov 0x0F,r5 ; r5 set to 0x0F
mov.b r3,@(r0,r14)
mov 0x03,r6 ; r6 set to 0x03
mov.l @(loc_cE356E8_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
jsr @r3
mov r14,r4
mov.l @(loc_cE356EC_to_loc_8c042008,pc),r2 ; r2 set to 0x8C042008
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
mov.l @(loc_cE356DC_to_loc_8c103660,pc),r3 ; r3 set to 0x8C103660
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
mov.l @(loc_cE356E0_to_loc_8c056F2A,pc),r3 ; r3 set to 0x8C056F2A
mov.b r2,@(r0,r14)
jsr @r3
mov r14,r4
mov.l @(loc_cE356E4_to_loc_8c02FEC4,pc),r2 ; r2 set to 0x8C02FEC4
mov 0x05,r6 ; r6 set to 0x05
mov r6,r5 ; r5 set to 0x05
jsr @r2
mov r14,r4
add 0x0C,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14

;==============================================

loc_cE356CA:
#data 0x01A0

loc_cE356CC:
#data 0x01F9
#data 0x01D2
#data 0x00000130

#align4
loc_cE356D4:
#data 0xC2555555

#align4
loc_cE356D8:
#data 0x432B6DB6

#align4
loc_cE356DC_to_loc_8c103660:
#data loc_8c103660

loc_cE356E0_to_loc_8c056F2A:
#data loc_8c056F2A

loc_cE356E4_to_loc_8c02FEC4:
#data loc_8c02FEC4

loc_cE356E8_to_loc_8c034E8C:
#data loc_8c034E8C

loc_cE356EC_to_loc_8c042008:
#data loc_8c042008


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

#align4
loc_cE35720:
#data 0x2F862FE6
#data 0x7FF44F22
#data 0x430BD335
#data 0x905D6E43
#data 0x880100EC
#data 0x90598B17
#data 0xE320E203
#data 0x90560E24
#data 0x70D904EE
#data 0xD32F0434
#data 0x64E3430B
#data 0xD32EE004
#data 0x65F3F48D
#data 0xFF4AE601
#data 0x430BFF47
#data 0xD22B64E3
#data 0x420BE50E
#data 0x64E3

loc_cE35766:
#data 0x9041
#data 0x880200EC
#data 0x903E8B38
#data 0x913EE322
#data 0x04EEE201
#data 0x314C84E6
#data 0x80E67001
#data 0x04E69036
#data 0x00EC701E
#data 0x2100CA01
#data 0x04349032
#data 0xD31F7055
#data 0x0424430B
#data 0xE51FD21E
#data 0x420BE600
#data 0x902864E3
#data 0x03EDE834
#data 0x8d042338
#data 0xD11A38EC
#data 0xA003415A
#data 0xF30D

loc_cE357B6:
#data 0xD219
#data 0xF30D425A

#align4
loc_cE357BC:
#data 0xE038F288
#data 0xF230D117
#data 0xF82A415A
#data 0xF30DF2E6
#data 0xFE27F230
#data 0xF208C714
#data 0xFE27E060
#data 0xF208C713
#data 0xFE27E06C

#align4
loc_cE357E0:
#data 0x4F267F0C
#data 0x000B68F6
#data 0x6EF6

;==============================================

loc_cE357EA:
#data 0x01EA
#data 0x01C80141
#data 0x01D201B4
#data 0x013001A1

#align4
loc_cE357F8_to_loc_cE36520_to_loc_cE3570E:
#data loc_cE36520_to_loc_cE3570E

loc_cE357FC_to_loc_cE36530_to_loc_cE35720:
#data loc_cE36530_to_loc_cE35720
#data loc_8c034DEE
#data loc_8c05933C
#data loc_8c0FDAB6
#data loc_8c04223A
#data loc_8c02FD26
#data loc_8c0D13BC
#data 0xC2D55555
#data 0x42D55555
#data 0xC31A4924
#data 0x413C9249
#data 0xBF676DB6


loc_cE3582C:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_cE3593C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
mov.l @(loc_cE35940_to_loc_8c0511B4,pc),r3 ; r3 set to 0x8C0511B4
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
mov.l @(loc_cE35944_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
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
mov.l @(loc_cE3593C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt loc_cE358D4
mov.l @r15,r4
add 0x04,r15
mov.l @(loc_cE35948_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
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
mov.l @(loc_cE3593C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt loc_cE358F6
lds.l @r15+,pr
mov.l @(loc_cE35948_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
mov r14,r4
jmp @r3
mov.l @r15+,r14

loc_cE358F6:
#data 0x901F
#data 0x222802EC
#data 0xE300890E
#data 0x707D0E34
#data 0x70EC04EE
#data 0x04E6E221
#data 0x03EC701E
#data 0x70CF0434
#data 0x70550424
#data 0x0434E310

#align4
loc_cE3591C:
#data 0x000B4F26
#data 0x6EF6

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

loc_cE35934:
#data 0x041C

loc_cE35936:
#data 0x01F9
#data 0x0000014B

#align4
loc_cE3593C_to_loc_8c034DEE:
#data loc_8c034DEE

loc_cE35940_to_loc_8c0511B4:
#data loc_8c0511B4

loc_cE35944_to_loc_8c034E8C:
#data loc_8c034E8C

loc_cE35948_to_loc_8c051648:
#data loc_8c051648

loc_cE3594C_to_loc_cE3653C_to_loc_cE35950:
#data loc_cE3653C_to_loc_cE35950


loc_cE35950:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
add 0xF4,r15
mov r4,r13
mov.b @(0x06,r13),r0
mov.l @(loc_cE35AB0_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
mov.l @(loc_cE35AB4_to_loc_8c1294C8,pc),r3 ; r3 set to 0x8C1294C8
mov r14,r2 ; r2 ??? bc r14 is ???
add 0x34,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0C
mov.l @(loc_cE35AB8_to_loc_8c04CC1C,pc),r2 ; r2 set to 0x8C04CC1C
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
mov.l @(loc_cE35AB4_to_loc_8c1294C8,pc),r3 ; r3 set to 0x8C1294C8
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
mov.l @(loc_cE35AB0_to_loc_8c034DEE,pc),r2 ; r2 set to 0x8C034DEE
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
mov.l @(loc_cE35AC8_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_cE35A9A:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14

;==============================================

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
loc_cE35AB0_to_loc_8c034DEE:
#data loc_8c034DEE

loc_cE35AB4_to_loc_8c1294C8:
#data loc_8c1294C8

loc_cE35AB8_to_loc_8c04CC1C:
#data loc_8c04CC1C

loc_cE35ABC:
#data 0x41C00000

#align4
loc_cE35AC0:
#data 0xBF892492

#align4
loc_cE35AC4:
#data 0x3D2AAAAB

#align4
loc_cE35AC8_to_loc_8c034E8C:
#data loc_8c034E8C


loc_cE35ACC:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
mov.l @(loc_cE35BD4_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
mov.w @(loc_cE35BC4,pc),r0 ; r0 set to 0x1C8
jsr @r3
mov.l @(r0,r14),r13
exts.b r0,r0 ; r0 ??
cmp/pz r0
bt loc_cE35B5E
mov.b @(0x06,r14),r0
mov.l @(loc_cE35BD8_to_loc_8c26A518,pc),r4 ; r4 set to 0x8C26A518
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
#data 0xC734
#data 0x905AF308
#data 0xE034F246
#data 0xF230F1E6
#data 0x8B02F215
#data 0xE2019051
#data 0x0E25


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
mov.l @(loc_cE35BEC_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C,r3 set to 0x8C034E8C
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
mov.l @(loc_cE35BD4_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
mov.l @(loc_cE35BF0_to_loc_8c0D0584,pc),r3 ; r3 set to 0x8C0D0584
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
mov.l @(loc_cE35BF4_to_loc_8c02FD26,pc),r3 ; r3 set to 0x8C02FD26
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
mov.l @(loc_cE35BF8_to_loc_8c051648,pc),r2 ; r2 set to 0x8C051648
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

loc_cE35BD4_to_loc_8c034DEE:
	#data loc_8c034DEE

loc_cE35BD8_to_loc_8c26A518:
	#data loc_8c26A518

loc_cE35BDC:
#data 0xC3555555
#data 0x43555555

#align4
loc_cE35BE4:
#data 0x433AAAAA

#align4
loc_cE35BE8:
#data 0xC33AAAAA

#align4
loc_cE35BEC_to_loc_8c034E8C:
#data loc_8c034E8C

loc_cE35BF0_to_loc_8c0D0584:
#data loc_8c0D0584

loc_cE35BF4_to_loc_8c02FD26:
#data loc_8c02FD26

loc_cE35BF8_to_loc_8c051648:
#data loc_8c051648


loc_cE35BFC:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xF4,r15
mov.l @(loc_cE35CEC_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r4,r14
mov.w @(loc_cE35CE2,pc),r0 ; r0 set to 0x141
mov.l @(0x14,r14),r4
mov.b @(r0,r4),r2
tst r2,r2
bt loc_cE35C9E
mov.b @(0x06,r14),r0
mov 0x15,r5 ; r5 set to 0x15
mov.l @(loc_cE35CF0_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
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
mov.l @(loc_cE35CF4_to_loc_8c02FDB0,pc),r3 ; r3 set to 0x8C02FDB0
mov.l r14,@(r0,r4)
add 0x42,r0 ; r0 set to 0x1F6
jsr @r3
mov.b r5,@(r0,r4)
mov.l @(loc_cE35CF8_to_loc_8c042008,pc),r2 ; r2 set to 0x8C042008
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

#align4
loc_cE35C64:
#data 0xF308C726

#align4
loc_cE35C68:
#data 0xE038F2F8
#data 0xE501D326
#data 0xFF2AF230
#data 0xE004F3E6
#data 0xC722FF37
#data 0xE004F308
#data 0xE004F2F6
#data 0xFF27F230
#data 0x64F3430B
#data 0xE549D21F
#data 0x64E3420B
#data 0xE50DD31E
#data 0x430BE607
#data 0x64E3


loc_cE35C9E:
add 0x0C,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14

;==============================================

loc_cE35CA6:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_cE35CEC_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt loc_cE35CCA
mov.l @(loc_cE35D10_to_loc_8c02FEC4,pc),r3 ; r3 set to 0x8C02FEC4
mov 0x0D,r5 ; r5 set to 0x0D
mov 0x00,r6 ; r6 set to 0x00
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(loc_cE35D14_to_loc_8c051648,pc),r2 ; r2 set to 0x8C051648
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
loc_cE35CEC_to_loc_8c034DEE:
#data loc_8c034DEE

loc_cE35CF0_to_loc_8c034E8C:
#data loc_8c034E8C

loc_cE35CF4_to_loc_8c02FDB0:
#data loc_8c02FDB0

loc_cE35CF8_to_loc_8c042008:
#data loc_8c042008

loc_cE35CFC:
#data 0x433AAAAA
#data 0xC33AAAAA
#data 0x42A00000
#data loc_8c1025CA
#data loc_8c04223A

#align4
loc_cE35D10_to_loc_8c02FEC4:
#data loc_8c02FEC4

loc_cE35D14_to_loc_8c051648:
#data loc_8c051648

loc_cE35D18_to_loc_cE36554_to_loc_cE35D1C:
#data loc_cE36554_to_loc_cE35D1C

loc_cE35D1C:
#data 0x2FD62FE6
#data 0x4F226D43
#data 0x700184D6
#data 0xE01080D6
#data 0xC75281DE
#data 0xE06CF308
#data 0xE060FD37
#data 0xFD37F38D
#data 0xF308C74F
#data 0xFD37E05C
#data 0xF308C74E
#data 0xFD37E068
#data 0x03DD9090
#data 0x8d082338
#data 0xE05CEE05
#data 0xF34DF3D6
#data 0xE068FD37
#data 0xF34DF3D6
#data 0xFD37

loc_cE35D66:
#data 0xE022
#data 0x600C00DC
#data 0x8908C801
#data 0xF3D6E05C
#data 0xF34DEE06
#data 0xE068FD37
#data 0xF34DF3D6
#data 0xFD37

loc_cE35D82:
#data 0xD340
#data 0x66E3E502
#data 0x64D3430B
#data 0xE50FD23E
#data 0x420BE608
#data 0x200864D3
#data 0x64038D09
#data 0xF3D6E05C
#data 0x9065F437
#data 0x043503DD
#data 0x02DCE022
#data 0x0424

loc_cE35DAE:
#data 0xD337
#data 0x430BE51E
#data 0xD23564D3
#data 0x420BE517
#data 0x905864D3
#data 0x0D44E40A
#data 0x0D449056
#data 0x6DF64F26
#data 0x6EF6000B

;==============================================

#align4
loc_cE35DD0:
#data 0x4F222FE6
#data 0x430BD32E
#data 0x904C6E43
#data 0x222802EC
#data 0x84E68902
#data 0x80E67001

#align4
loc_cE35DE8:
#data 0x000B4F26
#data 0x6EF6

;==============================================

loc_cE35DEE:
#data 0x2FE6
#data 0xD3274F22
#data 0x6E43430B
#data 0x31ECE15C
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031EC
#data 0xE05CFE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x70FF85EE
#data 0x600F81EE
#data 0x89054015
#data 0xF38D84E6
#data 0x80E67001
#data 0xFE37E068

#align4
loc_cE35E2C:
#data 0x000B4F26
#data 0x6EF6

;==============================================

loc_cE35E32:
mov.l r14,@-r15
mov r4,r14
mov 0x5C,r1 ; r1 set to 0x5C
mov.l @(loc_cE35E90_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
mov.l @(loc_cE35E94_to_loc_8c05218A,pc),r3 ; r3 set to 0x8C05218A
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(loc_cE35E98_to_loc_8c05176E,pc),r2 ; r2 set to 0x8C05176E
mov r14,r4
jmp @r2
mov.l @r15+,r14
#data 0x01F20130
#data 0x014101F3
#data 0xBF4DB6DB
#data 0xC17D5555
#data 0x3EA00000
#data loc_8c034E8C
#data loc_8c0D0584
#data loc_8c042008

#align4
loc_cE35E90_to_loc_8c034DEE:
#data loc_8c034DEE

loc_cE35E94_to_loc_8c05218A:
#data loc_8c05218A

loc_cE35E98_to_loc_8c05176E:
#data loc_8c05176E


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
mov.l @(loc_cE35F8C_to_code_loc_8c04CE3A,pc),r3 ; r3 set to 0x8C04CE3A
mov.l @(r0,r4),r4
jmp @r3
add 0x04,r15

loc_cE35EC8:
mov.w @(loc_cE35F80,pc),r0 ; r0 set to 0x1C8
mov r4,r5
mov.l r4,@-r15
mov.l @(loc_cE35F90_to_loc_8c04CC1C,pc),r3 ; r3 set to 0x8C04CC1C
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
#data 0x9041
#data 0x0424E204


loc_cE35F04:
mov.l @(loc_cE35F94_to_loc_8c0530D8,pc),r2 ; r2 set to 0x8C0530D8
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
#data 0x9029
#data 0x0424E204


loc_cE35F34:
mov.l @(loc_cE35F94_to_loc_8c0530D8,pc),r2 ; r2 set to 0x8C0530D8
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

#align4
loc_cE35F6C:
#data 0xE302900A
#data 0x0434

loc_cE35F72:
#data 0x9008
#data 0x0424E201


loc_cE35F78:
mov.l @(loc_cE35F94_to_loc_8c0530D8,pc),r2 ; r2 set to 0x8C0530D8
jmp @r2
mov 0x15,r5

loc_cE35F7E:
#data 0x01F7

loc_cE35F80:
#data 0x01C8

loc_cE35F82:
#data 0x04C9

loc_cE35F84:
#data 0x01E9
#data 0x01A3

#align4
loc_cE35F88_to_loc_cE36564_to_loc_cE35EBA:
#data loc_cE36564_to_loc_cE35EBA

loc_cE35F8C_to_code_loc_8c04CE3A:
#data code_loc_8c04CE3A

loc_cE35F90_to_loc_8c04CC1C:
#data loc_8c04CC1C

loc_cE35F94_to_loc_8c0530D8:
#data loc_8c0530D8


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
#data 0x9084
#data 0x0434E302


loc_cE35FCC:
mov.w @(loc_cE360D4,pc),r0 ; r0 set to 0x1A3
mov.b r5,@(r0,r4)

loc_cE35FD0:
mov.l @(loc_cE360DC_to_loc_8c0530D8,pc),r2 ; r2 set to 0x8C0530D8,r2 set to 0x8C0530D8
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

#align4
loc_cE35FE8:
#data 0x6E432FE6
#data 0xD33D4F22
#data 0xE500430B
#data 0xE30284E6
#data 0x80E67001
#data 0x0E34906B
#data 0xF308C739
#data 0xFE37E05C
#data 0x03EC9066
#data 0x8B032338
#data 0xF3E6E05C
#data 0xFE37F34D

#align4
loc_cE36018:
#data 0xF38DE068
#data 0xC733FE37
#data 0xE060F308
#data 0xFE37E347
#data 0xF308C731
#data 0xE400E06C
#data 0xE514FE37
#data 0x66439051
#data 0x700B0E34
#data 0x70F20E45
#data 0x70260E44
#data 0x0E46D32B
#data 0x623284E2
#data 0x4000600C
#data 0x012D727C
#data 0x02157101
#data 0xD2274F26
#data 0x422B64E3
#data 0x6EF6


loc_cE36062:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_cE360FC_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r4,r14
mov 0x5C,r1 ; r1 set to 0x5C
mov.l @(loc_cE36100_to_loc_8c052CE2,pc),r3 ; r3 set to 0x8C052CE2
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
mov.l @(loc_cE360F8_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
mov 0x02,r6 ; r6 set to 0x02
add 0x01,r0 ; r0 set to 0x61
mov.b r0,@(0x06,r14)
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(loc_cE36104_to_loc_8c0511B4,pc),r2 ; r2 set to 0x8C0511B4
mov r14,r4
jmp @r2
mov.l @r15+,r14

loc_cE360CA:
lds.l @r15+,pr
rts
mov.l @r15+,r14

;==============================================

loc_cE360D0:
#data 0x04C9

loc_cE360D2:
#data 0x01E9

loc_cE360D4:
#data 0x01A3
#data 0x01F9
#data 0x01A101D2

#align4
loc_cE360DC_to_loc_8c0530D8:
#data loc_8c0530D8

loc_cE360E0_to_loc_cE36574_to_loc_cE35FE8:
#data loc_cE36574_to_loc_cE35FE8
#data loc_8c035162
#data 0x41F00000
#data 0x40892492
#data 0xBF4DB6DB
#data loc_8c2896B0

#align4
loc_cE360F8_to_loc_8c034E8C:
#data loc_8c034E8C

loc_cE360FC_to_loc_8c034DEE:
#data loc_8c034DEE

loc_cE36100_to_loc_8c052CE2:
#data loc_8c052CE2

loc_cE36104_to_loc_8c0511B4:
#data loc_8c0511B4


loc_cE36108:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_cE36170_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt loc_cE3612A
mov.l @(loc_cE36174_to_loc_8c035162,pc),r3 ; r3 set to 0x8C035162
mov 0x00,r5 ; r5 set to 0x00
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(loc_cE36178_to_loc_8c051854,pc),r2 ; r2 set to 0x8C051854
mov r14,r4
jmp @r2
mov.l @r15+,r14

loc_cE3612A:
#data 0x901D
#data 0x222802EC
#data 0xE3008901
#data 0x0E34

loc_cE36136:
#data 0x4F26
#data 0x6EF6000B

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
mov.l @(loc_cE3617C_to_loc_8c129728,pc),r1 ; r1 set to 0x8C129728
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

;==============================================
#data 0x0141

loc_cE3616A:
#data 0x02A4

loc_cE3616C:
#data 0x0080
#data 0x0000

#align4
loc_cE36170_to_loc_8c034DEE:
#data loc_8c034DEE

loc_cE36174_to_loc_8c035162:
#data loc_8c035162

loc_cE36178_to_loc_8c051854:
#data loc_8c051854

loc_cE3617C_to_loc_8c129728:
#data loc_8c129728

loc_cE36180:
#data 0x14181818
#data 0x10101414


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE36188:
#data 0x02000201

#align4
loc_cE3618C:
#data 0x020102FF

#align4
loc_cE36190:
#data 0x02FFFFFF

#align4
loc_cE36194:
#data 0x02010201

#align4
loc_cE36198:
#data 0x02FF02FF

#align4
loc_cE3619C:
#data 0xFFFFFFFF

#align4
loc_cE361A0:
#data 0x02000201

#align4
loc_cE361A4:
#data 0x020102FF

#align4
loc_cE361A8:
#data 0x02FFFFFF

#align4
loc_cE361AC:
#data 0x02010201

#align4
loc_cE361B0:
#data 0x02FF02FF

#align4
loc_cE361B4:
#data 0xFFFFFFFF

#align4
loc_cE361B8:
#data 0x02000201

#align4
loc_cE361BC:
#data 0x020102FF

#align4
loc_cE361C0:
#data 0x02FFFFFF

#align4
loc_cE361C4:
#data 0x02010201

#align4
loc_cE361C8:
#data 0x02FF02FF

#align4
loc_cE361CC:
#data 0xFFFFFFFF

#align4
loc_cE361D0:
#data 0x00000003
#data 0x00000000
#data 0x18001000
#data 0x03000800

#align4
loc_cE361E0:
#data 0x000A0004
#data 0x00000001
#data 0x0300

loc_cE361EA:
#data 0x0003
#data 0x00020000
#data 0x08000000
#data 0x18001000
#data 0x0300

loc_cE361FA:
#data 0x0005
#data 0x00031020
#data 0x04000000
#data 0x10001400
#data 0x08001800
#data 0x0060

loc_cE3620E:
#data 0x0003
#data 0x00048100
#data 0x10000000
#data 0x08001800
#data 0x0300

loc_cE3621E:
#data 0x0005
#data 0x00051000
#data 0x08000000
#data 0x10001800
#data 0x04001400
#data 0x0300

loc_cE36232:
#data 0x0003
#data 0x00069100
#data 0x10000000
#data 0x08001800
#data 0x0060

loc_cE36242:
#data 0x0003
#data 0x00079100
#data 0x10000000
#data 0x04001400
#data 0x0300

loc_cE36252:
#data 0x0003
#data 0x000B1000
#data 0x10000000
#data 0x04001400
#data 0x00000060

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
;SPL_JUMPTABLE
loc_cE36264:
	#data loc_cE306E6 loc_cE3001C loc_cE30774 loc_cE30E1A
	#data loc_cE313DE loc_cE31570 loc_cE316CE loc_cE31AAE
	#data loc_cE31C2E loc_cE35454 loc_cE35558 loc_cE356F0
	#data loc_cE35EA2 loc_cE305EC loc_cE35FD6 loc_cE31308
	#data loc_cE35EDA loc_cE35F0A loc_cE35F3A loc_cE35F98
	#data 0x00000000 loc_cE35CD0 0x00000000 loc_cE3613C
	#data 0x00000000 0x00000000 0x00000000 0x00000000

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_cE362D4_to_loc_cE30788:
#data loc_cE30788

loc_cE362D8_to_loc_cE30B8C:
#data loc_cE30B8C

loc_cE362DC_to_loc_cE30BB4:
#data loc_cE30BB4

loc_cE362E0_to_loc_cE30788:
#data loc_cE30788

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
