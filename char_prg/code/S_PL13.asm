;============================================
;Ruby Heart Program
;============================================
#symbol fn_extern_8C054508 0x8C054508
#symbol fn_extern_8C054B34 0x8C054B34
#symbol fn_extern_8C05496C 0x8C05496C
#symbol fn_extern_8C054D04 0x8C054D04
#symbol fn_extern_8C054DA0 0x8C054DA0
#symbol fn_extern_8C053E00 0x8C053E00
#symbol fn_extern_8C0542E0 0x8C0542E0
#symbol fn_extern_8C054E58 0x8C054E58
#symbol fn_extern_8C055C3A 0x8C055C3A
#symbol fn_extern_8C0530D8 0x8C0530D8
#symbol extern_8C0555C8 0x8C0555C8
#symbol extern_8C054D1C 0x8C054D1C
#symbol fn_extern_8C052B4C 0x8C052B4C
#symbol fn_extern_8C04223A 0x8C04223A
#symbol extern_8C2896B0 0x8C2896B0
#symbol fn_extern_8C034E8C 0x8C034E8C
#symbol fn_extern_8C0511E2 0x8C0511E2
#symbol extern_8C052C84 0x8C052C84
#symbol fn_extern_8C034DEE 0x8C034DEE
#symbol fn_extern_8C051648 0x8C051648
#symbol extern_8C050084 0x8C050084
#symbol extern_8C04FF88 0x8C04FF88
#symbol fn_extern_8C04FEA8 0x8C04FEA8
#symbol fn_extern_8C050048 0x8C050048
#symbol fn_extern_8C052CE2 0x8C052CE2
#symbol fn_extern_8C052DAC 0x8C052DAC
#symbol code_extern_8C05176E 0x8C05176E
#symbol fn_extern_8C056DE4 0x8C056DE4
#symbol fn_extern_8C0CE62C 0x8C0CE62C
#symbol extern_8C0FDAB6 0x8C0FDAB6
#symbol fn_extern_8C046C8A 0x8C046C8A
#symbol fn_extern_8C035162 0x8C035162
#symbol fn_extern_8C05218A 0x8C05218A
#symbol fn_extern_8C03319E 0x8C03319E
#symbol extern_8C0514B8 0x8C0514B8
#symbol fn_extern_8C05115A 0x8C05115A
#symbol fn_extern_8C03544C 0x8C03544C
#symbol fn_extern_8C053082 0x8C053082
#symbol fn_extern_8C07A428 0x8C07A428
#symbol extern_8C26A5B8 0x8C26A5B8
#symbol extern_8C0511B4 0x8C0511B4
#symbol extern_8C050834 0x8C050834
#symbol fn_extern_8C042008 0x8C042008
#symbol extern_8C03362C 0x8C03362C
#symbol fn_extern_8C02FEC4 0x8C02FEC4
#symbol extern_8C26A5A0 0x8C26A5A0
#symbol extern_8C26A5A4 0x8C26A5A4
#symbol extern_8C26A8E4 0x8C26A8E4
#symbol extern_8C289732 0x8C289732
#symbol extern_8C10235C 0x8C10235C
#symbol fn_extern_8C05923C 0x8C05923C
#symbol extern_8C050EA4 0x8C050EA4
#symbol fn_extern_8C045790 0x8C045790
#symbol extern_8C103660 0x8C103660
#symbol extern_8C056F2A 0x8C056F2A
#symbol code_extern_8C04CC1C 0x8C04CC1C


;======================================================================
start_CE30000:
	mov.w @(data_CE30046,pc),r0 ; r0 set to 0x428
	mov 0x70,r5 ; r5 set to 0x70
	mov.l @(ptr_CE30050_to_ptr_CE34864_to_f_code_CE3060A,pc),r7 ; r7 set to 0xCE34864
	mov.l @(r0,r4),r6
	mov 0x00,r

l_code_CE3000A:
	mov r4,r0
	nop
	add 0x04,r4
	mov.l @(r0,r7),r3
	cmp/hs r5,r4
	bf/s l_code_CE3000A
	mov.l r3,@(r0,r6)
	rts
	nop

;==============================================
loc_ce3001c:
	mov.w @(0x28,pc),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_CE30040
	mov.w @(0x20,pc),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_CE30040
	mov.w @(0x1a,pc),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_ce3003a
	rts
	mov 0x00,r0

loc_ce3003a:
	mov.b @(r0,r4),r3
	add 0x01,r3
	mov.b r3,@(r0,r4)

loc_CE30040:
	mov 0x1,r0
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
data_CE30046:
	#data 0x0428
data_CE30048:
	#data 0x01F9
data_CE3004A:
	#data 0x01FC
data_CE3004C:
	#data 0x01D4
	#align4

ptr_CE30050_to_ptr_CE34864_to_f_code_CE3060A:
	#data ptr_CE34864_to_f_code_CE3060A

;==============================================
f_code_CE30054:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(ptr_CE3010C_to_fn_extern_8C054508,pc),r3 ; r3 set to 0x8C054508
	jsr @r3
	mov r4,r14
	extu.b r0,r0
	tst r0,r0
	bf l_code_CE30106
	mov.l @(ptr_CE30110_to_fn_extern_8C054B34,pc),r3 ; r3 set to 0x8C054B34
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf l_code_CE30106
	mov.l @(ptr_CE30114_to_fn_extern_8C05496C,pc),r3 ; r3 set to 0x8C05496C
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf l_code_CE30106
	mov.l @(ptr_CE30118_to_fn_extern_8C054D04,pc),r3 ; r3 set to 0x8C054D04
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf l_code_CE30106
	bsr l_code_CE3039C
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf l_code_CE30106
	bsr data_CE3031A
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf l_code_CE30106
	bsr data_CE303E2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf l_code_CE30106
	bsr data_CE302C0
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf l_code_CE30106
	bsr data_CE30258
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf l_code_CE30106
	bsr data_CE301DE
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf l_code_CE30106
	bsr loc_CE30128
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf l_code_CE30106
	bsr loc_CE30188
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf l_code_CE30106
	bsr loc_CE3046C
	mov r14,r4
	tst r0,r0
	bf l_code_CE30106
	mov.l @(ptr_CE3011C_to_fn_extern_8C054DA0,pc),r3 ; r3 set to 0x8C054DA0
	mov 0x0B,r5 ; r5 set to 0x0B
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt l_code_CE300F6
	lds.l @r15+,pr
	mov r14,r4
	bra l_code_CE30432
	mov.l @r15+,r14

l_code_CE300F6:
	mov.l @(ptr_CE30120_to_fn_extern_8C053E00,pc),r2 ; r2 set to 0x8C053E00
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(ptr_CE30124_to_fn_extern_8C0542E0,pc),r3 ; r3 set to 0x8C0542E0
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

l_code_CE30106:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

ptr_CE3010C_to_fn_extern_8C054508:
	#data fn_extern_8C054508
ptr_CE30110_to_fn_extern_8C054B34:
	#data fn_extern_8C054B34
ptr_CE30114_to_fn_extern_8C05496C:
	#data fn_extern_8C05496C
ptr_CE30118_to_fn_extern_8C054D04:
	#data fn_extern_8C054D04
ptr_CE3011C_to_fn_extern_8C054DA0:
	#data fn_extern_8C054DA0
ptr_CE30120_to_fn_extern_8C053E00:
	#data fn_extern_8C053E00
ptr_CE30124_to_fn_extern_8C0542E0:
	#data fn_extern_8C0542E0

;==============================================
loc_CE30128:
	mov.l r14, @-r15
	mov r4, r14
	sts.l pr, @-r15
	mov.l @(0x110,pc), r5
	mov.w @(0xfc,pc), r6
	mov.l @(0x110,pc), r3
	jsr @r3
	add r14, r6
	extu.b r0, r0
	tst r0, r0
	bt loc_ce30150
	mov.w @(0xf0,pc), r0
	mov.b @(r0,r14), r0
	extu.b r0, r0
	cmp/eq 0x02, r0
	bf loc_ce3015e
	mov.w @(0xe8,pc), r0
	mov.b @(r0,r14), r2
	tst r2, r2
	bt loc_ce30158

loc_CE30150:
	lds.l @r15+, pr
	mov 0x00, r0
	rts
	mov.l @r15+, r14

loc_CE30158:
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)

loc_CE3015E:
	mov.w @(0xce,pc),r5
	mov.l @(0xe4,pc),r2
	add r14,r5
	jsr @r2
	mov r14,r4
	mov 0x00,r4
	mov r4,r0
	nop
	mov.b r0,@(0x5,r14)
	mov 0x15,r5
	mov.b r0,@(0x7,r14)
	mov.b r0,@(0x6,r14)
	mov.w @(0xbc,pc),r0
	mov.l @(0xd0,pc),r3
	mov.b r4, @(r0,r14)
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE30188:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0xc0,pc),r5
	mov.w @(0xa4,pc),r6
	mov.l @(0xb0,pc),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce301ae
	mov.w @(0x98,pc),r4
	add r14,r4
	mov.b @r4,r3
	tst r3,r3
	bf loc_ce301ae
	mov.b @(0x1,r4),r0
	tst r0,r0
	bt loc_ce301b6

loc_CE301AE:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_CE301B6:
	mov.w @(0x7e,pc),r5
	mov.l @(0x8c,pc),r3
	add r14,r5
	jsr @r3
	mov r14,r4
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	mov 0x01,r3
	mov.b r0,@(0x7,r14)
	mov 0x15,r5
	mov.b r0,@(0x6,r14)
	mov.w @(0x66,pc),r0
	mov.b r3,@(r0,r14)
	mov.l @(0x78,pc),r3
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE301DE:
#data 0x2FE6
#data 0x4F226E43
#data 0x9629D51B
#data 0x430BD316
#data 0x600C36EC
#data 0x89052008
#data 0xE0149421
#data 0x024C34EC
#data 0x89032228

data_CE30200:
#data 0xE0004F26
#data 0x6EF6000B

;==============================================
data_CE30208:
#data 0xD30F9518
#data 0x430B35EC
#data 0xE00064E3
#data 0xE30280E5
#data 0xE51580E7
#data 0x900A80E6
#data 0xD30A0E34
#data 0x64E3430B
#data 0x4F26E001
#data 0x6EF6000B

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x0364
	#data 0x01F9
	#data 0x01D4
	#data 0x01E9
	#data 0x036C
	#data 0x02A4
	#data 0x0374
	#align4

ptr_CE30240_to_data_CE3439C:
	#data data_CE3439C
loc_ce30244:
	#data fn_extern_8C054E58
loc_ce30248:
	#data fn_extern_8C055C3A
loc_ce3024c:
	#data fn_extern_8C0530D8

ptr_CE30250_to_data_CE343AC:
	#data data_CE343AC
ptr_CE30254_to_data_CE343BC:
	#data data_CE343BC

;==============================================
data_CE30258:
#data 0x6E432FE6
#data 0xD53F4F22
#data 0xD33F9674
#data 0x36EC430B
#data 0x2008600C
#data 0x906E8910
#data 0x600C00EC
#data 0x8B068802
#data 0x02EC906A
#data 0x8B072228
#data 0x720102EC
#data 0x0E24

data_CE30286:
#data 0x9064
#data 0x623003EE
#data 0x8B032228

#align4
data_CE30290:
#data 0xE0004F26
#data 0x6EF6000B
;==============================================

#align4
data_CE30298:
#data 0xD3329558
#data 0x430B35EC
#data 0xE00064E3
#data 0xE30380E5
#data 0xE51D80E7
#data 0x905180E6
#data 0xD32D0E34
#data 0x64E3430B
#data 0x4F26E001
#data 0x6EF6000B
;==============================================

#align4
data_CE302C0:
#data 0x6E432FE6
#data 0xD5294F22
#data 0xD3259645
#data 0x36EC430B
#data 0x2008600C
#data 0x943F8909
#data 0x844134EC
#data 0x8B042008
#data 0x02EE9037
#data 0x23386320
#data 0x8B03

data_CE302EA:
#data 0x4F26
#data 0x000BE000
#data 0x6EF6
;==============================================

data_CE302F2:
#data 0x9530
#data 0x35ECD31B
#data 0x64E3430B
#data 0x80E5E000
#data 0x80E7E304
#data 0x80E6E51D
#data 0x0E349024
#data 0x430BD316
#data 0xE00164E3
#data 0x000B4F26
#data 0x6EF6
;==============================================

data_CE3031A:
#data 0x2FE6
#data 0x4F226E43
#data 0x961AD513
#data 0x430BD30E
#data 0x600C36EC
#data 0x89092008
#data 0x64E3BE74
#data 0x2008600C
#data 0x900A8904
#data 0x632002EE
#data 0x8B172338

#align4
data_CE30344:
#data 0xE0004F26
#data 0x6EF6000B
;==============================================
#data 0x01F9037C
#data 0x040C01D4
#data 0x038401E9
#data 0x038C02A4

#align4
ptr_CE3035C_to_data_CE343CC:
#data data_CE343CC
#data fn_extern_8C054E58
#data fn_extern_8C055C3A
#data fn_extern_8C0530D8

#align4
ptr_CE3036C_to_data_CE343DC:
#data data_CE343DC

ptr_CE30370_to_data_CE343EC:
#data data_CE343EC

data_CE30374:
#data 0xD348958A
#data 0x430B35EC
#data 0xE00064E3
#data 0xE30580E5
#data 0xE51D80E7
#data 0x908080E6
#data 0xD3430E34
#data 0x64E3430B
#data 0x4F26E001
#data 0x6EF6000B
;==============================================

l_code_CE3039C:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.l @(ptr_CE304A0_to_data_CE3440E,pc),r5 ; r5 set to 0xCE3440E
mov.w @(data_CE30490,pc),r6 ; r6 set to 0x394
mov.l @(ptr_CE304A4_to_fn_extern_8C054E58,pc),r3 ; r3 set to 0x8C054E58
jsr @r3
add r14,r6 ; r6 ??? bc r14 is ???
extu.b r0,r0
tst r0,r0
bf l_code_CE303BA
lds.l @r15+,pr
mov 0x00,r0 ; r0 set to 0x00
rts
mov.l @r15+,r14
;==============================================

l_code_CE303BA:
mov.w @(data_CE30490,pc),r5 ; r5 set to 0x394
mov.l @(ptr_CE30498_to_fn_extern_8C055C3A,pc),r3 ; r3 set to 0x8C055C3A
add r14,r5 ; r5 ??? bc r14 is ???
jsr @r3
mov r14,r4
mov 0x00,r0 ; r0 set to 0x00
mov.b r0,@(0x05,r14)
mov 0x06,r3 ; r3 set to 0x06
mov.b r0,@(0x07,r14)
mov 0x15,r5 ; r5 set to 0x15
mov.b r0,@(0x06,r14)
mov.w @(data_CE3048E,pc),r0 ; r0 set to 0x1E9
mov.b r3,@(r0,r14)
mov.l @(ptr_CE3049C_to_fn_extern_8C0530D8,pc),r3 ; r3 set to 0x8C0530D8
jsr @r3
mov r14,r4
mov 0x01,r0 ; r0 set to 0x01
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

data_CE303E2:
#data 0x2FE6
#data 0x4F226E43
#data 0x9652D52F
#data 0x430BD32F
#data 0x600C36EC
#data 0x89042008
#data 0x02EE904C
#data 0x23386320
#data 0x8B03

data_CE30402:
#data 0x4F26
#data 0x000BE000
#data 0x6EF6
;==============================================

data_CE3040A:
#data 0x9542
#data 0x35ECD322
#data 0x64E3430B
#data 0x80E5E000
#data 0x80E7E309
#data 0x80E6E51D
#data 0x0E349035
#data 0x430BD31D
#data 0xE00164E3
#data 0x000B4F26
#data 0x6EF6
;==============================================

l_code_CE30432:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.l @(ptr_CE304B0_to_fn_extern_8C054DA0,pc),r3 ; r3 set to 0x8C054DA0
jsr @r3
mov 0x0B,r5 ; r5 set to 0x0B
extu.b r0,r0
tst r0,r0
bf l_code_CE3044C
lds.l @r15+,pr
mov 0x00,r0 ; r0 set to 0x00
rts
mov.l @r15+,r14
;==============================================

l_code_CE3044C:
mov.w @(data_CE3048E,pc),r0 ; r0 set to 0x1E9
mov 0x0B,r3 ; r3 set to 0x0B
mov 0x15,r5 ; r5 set to 0x15
mov.b r3,@(r0,r14)
mov 0x00,r0 ; r0 set to 0x00
mov.l @(ptr_CE3049C_to_fn_extern_8C0530D8,pc),r3 ; r3 set to 0x8C0530D8
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

#align4
loc_CE3046C:
#data 0x4F222FE6
#data 0x430BD310
#data 0x20086E43
#data 0x900B8904
#data 0x632002EE
#data 0x8B192338

#align4
data_CE30484:
#data 0xE0004F26
#data 0x6EF6000B
;==============================================
#data 0x038C

data_CE3048E:
#data 0x01E9

data_CE30490:
#data 0x0394
#data 0x039C
#data 0x040C
#data 0x0000

#align4
ptr_CE30498_to_fn_extern_8C055C3A:
#data fn_extern_8C055C3A

ptr_CE3049C_to_fn_extern_8C0530D8:
#data fn_extern_8C0530D8

ptr_CE304A0_to_data_CE3440E:
#data data_CE3440E

ptr_CE304A4_to_fn_extern_8C054E58:
#data fn_extern_8C054E58

ptr_CE304A8_to_data_CE343FC:
#data data_CE343FC
#data extern_8C0555C8

#align4
ptr_CE304B0_to_fn_extern_8C054DA0:
#data fn_extern_8C054DA0
#data extern_8C054D1C

#align4
data_CE304B8:
#data 0xE30A9079
#data 0x0E34E51D
#data 0xD33EE000
#data 0x430B80E5
#data 0xE00064E3
#data 0x80E680E7
#data 0x4F26E001
#data 0x6EF6000B
;==============================================

#align4
data_CE304D8:
#data 0x4F222FE6
#data 0x6E43B016
#data 0x8B0B2008
#data 0x64E3B02D
#data 0x8B072008
#data 0x64E3B044
#data 0x8B032008
#data 0x64E3B06E
#data 0x89032008

#align4
data_CE304FC:
#data 0xE0014F26
#data 0x6EF6000B
;==============================================

#align4
data_CE30504:
#data 0x4F26E000
#data 0x6EF6000B
;==============================================

#align4
data_CE3050C:
#data 0x6E432FE6
#data 0xD52B4F22
#data 0xD32B964C
#data 0x36EC430B
#data 0x2008600C
#data 0x90468904
#data 0x632002EE
#data 0x8B032338

#align4
data_CE3052C:
#data 0xE0004F26
#data 0x6EF6000B
;==============================================

#align4
data_CE30534:
#data 0xE305903E
#data 0xE0010E34
#data 0x000B4F26
#data 0x6EF6
;==============================================

data_CE30542:
#data 0x2FE6
#data 0x4F226E43
#data 0x9634D51F
#data 0x430BD31D
#data 0x600C36EC
#data 0x89042008
#data 0x02EE902B
#data 0x23386320
#data 0x8B03

data_CE30562:
#data 0x4F26
#data 0x000BE000
#data 0x6EF6
;==============================================

data_CE3056A:
#data 0x9023
#data 0x0E34E303
#data 0x4F26E001
#data 0x6EF6000B
;==============================================

#align4
data_CE30578:
#data 0x6E432FE6
#data 0xD5134F22
#data 0xD313961A
#data 0x36EC430B
#data 0x2008600C
#data 0x90108904
#data 0x632002EE
#data 0x8B032338

#align4
data_CE30598:
#data 0xE0004F26
#data 0x6EF6000B

;==============================================
data_CE305A0:
#data 0xE3099008
#data 0xE0010E34
#data 0x000B4F26
#data 0x6EF6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#data 0x01E9
	#data 0x038C
	#data 0x040C
	#data 0x0258
	#data 0x037C
	#data 0x039C
	#align4

	#data fn_extern_8C0530D8

ptr_CE305C0_to_data_CE343EC:
	#data data_CE343EC
	#data fn_extern_8C054E58
ptr_CE305C8_to_data_CE343CC:
	#data data_CE343CC
ptr_CE305CC_to_data_CE343FC:
	#data data_CE343FC
	#data extern_8C0555C8

;==============================================
loc_CE305D4:
#data 0x6E432FE6
#data 0xD5394F22
#data 0xD3399669
#data 0x36EC430B
#data 0x2008600C
#data 0x90638904
#data 0x632002EE
#data 0x8B032338

#align4
data_CE305F4:
#data 0xE0004F26
#data 0x6EF6000B
;==============================================

#align4
data_CE305FC:
#data 0xE304905B
#data 0xE0010E34
#data 0x000B4F26
#data 0x6EF6

;==============================================
f_code_CE3060A:
	rts
	nop

;==============================================
f_code_CE3060E:
mov.w @(data_CE306B8,pc),r0 ; r0 set to 0x1FF
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(ptr_CE306C8_to_ptr_CE348D4_to_f_code_CE3066A,pc),r0 ; r0 set to 0xCE348D4
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

f_code_CE30622:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE306CC_to_fn_extern_8C052B4C,pc),r3 ; r3 set to 0x8C052B4C
jsr @r3
mov r4,r14
mov.w @(data_CE306BA,pc),r0 ; r0 set to 0x1FE
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
extu.b r0,r0
cmp/eq 0x01,r0
bf l_code_CE30650
mov.w @(data_CE306BC,pc),r0 ; r0 set to 0x1F9
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
extu.b r0,r0
cmp/eq 0x01,r0
bf l_code_CE30648
lds.l @r15+,pr
mov r14,r4
bra l_code_CE308F4
mov.l @r15+,r14

l_code_CE30648:
lds.l @r15+,pr
mov r14,r4
bra l_code_CE30848
mov.l @r15+,r14

l_code_CE30650:
mov.w @(data_CE306BC,pc),r0 ; r0 set to 0x1F9
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
extu.b r0,r0
cmp/eq 0x01,r0
bf l_code_CE30662
lds.l @r15+,pr
mov r14,r4
bra l_code_CE30778
mov.l @r15+,r14

l_code_CE30662:
lds.l @r15+,pr
mov r14,r4
bra l_code_CE306D0
mov.l @r15+,r14

f_code_CE3066A:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE306CC_to_fn_extern_8C052B4C,pc),r3 ; r3 set to 0x8C052B4C
jsr @r3
mov r4,r14
mov.w @(data_CE306BA,pc),r0 ; r0 set to 0x1FE
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
extu.b r0,r0
cmp/eq 0x01,r0
bf l_code_CE30698
mov.w @(data_CE306BC,pc),r0 ; r0 set to 0x1F9
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
extu.b r0,r0
cmp/eq 0x01,r0
bf l_code_CE30690
lds.l @r15+,pr
mov r14,r4
bra l_code_CE308F4
mov.l @r15+,r14

l_code_CE30690:
lds.l @r15+,pr
mov r14,r4
bra l_code_CE30848
mov.l @r15+,r14

l_code_CE30698:
mov.w @(data_CE306BC,pc),r0 ; r0 set to 0x1F9
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
extu.b r0,r0
cmp/eq 0x01,r0
bf l_code_CE306AA
lds.l @r15+,pr
mov r14,r4
bra l_code_CE30778
mov.l @r15+,r14

l_code_CE306AA:
lds.l @r15+,pr
mov r14,r4
bra l_code_CE306D0
mov.l @r15+,r14
#data 0x0384
#data 0x0258040C

data_CE306B8:
#data 0x01FF

data_CE306BA:
#data 0x01FE

data_CE306BC:
#data 0x01F9
#data 0x0000

#align4
ptr_CE306C0_to_data_CE343DC:
#data data_CE343DC
#data fn_extern_8C054E58

#align4
ptr_CE306C8_to_ptr_CE348D4_to_f_code_CE3066A:
#data ptr_CE348D4_to_f_code_CE3066A

ptr_CE306CC_to_fn_extern_8C052B4C:
#data fn_extern_8C052B4C


l_code_CE306D0:
mov.l r14,@-r15
mov r4,r14
mov.w @(data_CE307D4,pc),r0 ; r0 set to 0x1E8
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
sts.l pr,@-r15
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
mov.l @(ptr_CE307E0_to_fn_extern_8C04223A,pc),r12 ; r12 set to 0x8C04223A
extu.b r0,r0
cmp/eq 0x00,r0
bt/s l_code_CE306F6
mov 0x00,r13 ; r13 set to 0x00
cmp/eq 0x01,r0
bt l_code_CE30710
cmp/eq 0x02,r0
bt data_CE3072A
bra l_code_CE30744
nop

l_code_CE306F6:
mov.w @(data_CE307D6,pc),r0 ; r0 set to 0x158
mov 0x14,r5 ; r5 set to 0x14
mov.b r13,@(r0,r14)
add 0x49,r0 ; r0 set to 0x1A1
mov.b r13,@(r0,r14)
jsr @r12
mov r14,r4
mov.w @(data_CE307D8,pc),r0 ; r0 set to 0x3F4
mov.l @(ptr_CE307E4_to_Stn_LPChain,pc),r3 ; r3 set to 0xCE34354
mov.l r3,@(r0,r14)
mov.w @(data_CE307DA,pc),r0 ; r0 set to 0x1A7
bra l_code_CE30744
mov.b r13,@(r0,r14)

l_code_CE30710:
mov.w @(data_CE307D6,pc),r0 ; r0 set to 0x158
mov 0x01,r11 ; r11 set to 0x01
mov 0x15,r5 ; r5 set to 0x15
mov.b r11,@(r0,r14)
add 0x49,r0 ; r0 set to 0x1A1
mov.b r11,@(r0,r14)
jsr @r12
mov r14,r4
mov.w @(data_CE307D8,pc),r0 ; r0 set to 0x3F4
mov.l @(ptr_CE307E8_to_Stn_MPChain,pc),r3 ; r3 set to 0xCE34358
mov.l r3,@(r0,r14)
bra data_CE30740
nop

data_CE3072A:
#data 0x9054
#data 0xE51AEB02
#data 0x70490EB4
#data 0x4C0B0EB4
#data 0x904D64E3
#data 0x0E36D32B

#align4
data_CE30740:
#data 0x0EB4904B


l_code_CE30744:
mov.w @(data_CE307DC,pc),r0 ; r0 set to 0x1AC
mov 0x07,r5 ; r5 set to 0x07
mov.l @(ptr_CE307F0_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0
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
mov.w @(data_CE307D6,pc),r0 ; r0 set to 0x158
mov.l @(ptr_CE307F4_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov.l @r15+,r11
mov.b @(r0,r14),r6
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

l_code_CE30778:
mov.w @(data_CE307D4,pc),r0 ; r0 set to 0x1E8
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
mov.l @(ptr_CE307E0_to_fn_extern_8C04223A,pc),r12 ; r12 set to 0x8C04223A
extu.b r0,r0
cmp/eq 0x00,r0
bt/s l_code_CE3079C
mov 0x00,r13 ; r13 set to 0x00
cmp/eq 0x01,r0
bt l_code_CE307B8
cmp/eq 0x02,r0
bt data_CE307F8
bra l_code_CE30816
nop

l_code_CE3079C:
mov.w @(data_CE307D6,pc),r0 ; r0 set to 0x158
mov 0x06,r3 ; r3 set to 0x06
mov 0x14,r5 ; r5 set to 0x14
mov.b r13,@(r0,r14)
add 0x49,r0 ; r0 set to 0x1A1
mov.b r3,@(r0,r14)
jsr @r12
mov r14,r4
mov.w @(data_CE307D8,pc),r0 ; r0 set to 0x3F4
mov.l @(ptr_CE307E4_to_Stn_LPChain,pc),r3 ; r3 set to 0xCE34354
mov.l r3,@(r0,r14)
mov.w @(data_CE307DA,pc),r0 ; r0 set to 0x1A7
bra l_code_CE30816
mov.b r13,@(r0,r14)

l_code_CE307B8:
mov.w @(data_CE307D6,pc),r0 ; r0 set to 0x158
mov 0x01,r2 ; r2 set to 0x01
mov 0x07,r3 ; r3 set to 0x07
mov.b r2,@(r0,r14)
add 0x49,r0 ; r0 set to 0x1A1
mov 0x15,r5 ; r5 set to 0x15
mov.b r3,@(r0,r14)
jsr @r12
mov r14,r4
mov.w @(data_CE307D8,pc),r0 ; r0 set to 0x3F4
mov.l @(ptr_CE307E8_to_Stn_MPChain,pc),r3 ; r3 set to 0xCE34358
mov.l r3,@(r0,r14)
bra data_CE30812
mov 0x01,r2

data_CE307D4:
#data 0x01E8

data_CE307D6:
#data 0x0158

data_CE307D8:
#data 0x03F4

data_CE307DA:
#data 0x01A7

data_CE307DC:
	#data 0x01AC
	#align4

ptr_CE307E0_to_fn_extern_8C04223A:
#data fn_extern_8C04223A

ptr_CE307E4_to_Stn_LPChain:
#data Stn_LPChain

ptr_CE307E8_to_Stn_MPChain:
#data Stn_MPChain

ptr_CE307EC_to_Stn_HPChain:
	#data Stn_HPChain

ptr_CE307F0_to_extern_8C2896B0:
#data extern_8C2896B0

ptr_CE307F4_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C

data_CE307F8:
#data 0xE102908C
#data 0x0E14E308
#data 0xE51A7049
#data 0x4C0B0E34
#data 0x908464E3
#data 0xD344E202
#data 0x0E36

data_CE30812:
#data 0x9081
#data 0x0E24

;==============================================
l_code_CE30816:
mov.w @(data_CE3091A,pc),r0 ; r0 set to 0x1AC
mov 0x09,r5 ; r5 set to 0x09
mov.l @(ptr_CE30924_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0
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
mov.w @(data_CE30914,pc),r0 ; r0 set to 0x158
mov.l @(ptr_CE30928_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov.l @r15+,r12
mov.b @(r0,r14),r6
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

l_code_CE30848:
mov.w @(data_CE3091C,pc),r0 ; r0 set to 0x1E8
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
mov.l @(ptr_CE3092C_to_fn_extern_8C04223A,pc),r12 ; r12 set to 0x8C04223A
extu.b r0,r0
cmp/eq 0x00,r0
bt/s l_code_CE3086C
mov 0x00,r13 ; r13 set to 0x00
cmp/eq 0x01,r0
bt l_code_CE30888
cmp/eq 0x02,r0
bt data_CE308A4
bra l_code_CE308C2
nop

l_code_CE3086C:
mov.w @(data_CE30914,pc),r0 ; r0 set to 0x158
mov 0x03,r3 ; r3 set to 0x03
mov 0x14,r5 ; r5 set to 0x14
mov.b r13,@(r0,r14)
add 0x49,r0 ; r0 set to 0x1A1
mov.b r3,@(r0,r14)
jsr @r12
mov r14,r4
mov.w @(data_CE30916,pc),r0 ; r0 set to 0x3F4
mov.l @(ptr_CE30930_to_Stn_LKChain,pc),r3 ; r3 set to 0xCE34360
mov.l r3,@(r0,r14)
mov.w @(data_CE30918,pc),r0 ; r0 set to 0x1A7
bra l_code_CE308C2
mov.b r13,@(r0,r14)

l_code_CE30888:
mov.w @(data_CE30914,pc),r0 ; r0 set to 0x158
mov 0x01,r2 ; r2 set to 0x01
mov 0x04,r3 ; r3 set to 0x04
mov.b r2,@(r0,r14)
add 0x49,r0 ; r0 set to 0x1A1
mov 0x15,r5 ; r5 set to 0x15
mov.b r3,@(r0,r14)
jsr @r12
mov r14,r4
mov.w @(data_CE30916,pc),r0 ; r0 set to 0x3F4
mov.l @(ptr_CE30934_to_Stn_MKChain,pc),r3 ; r3 set to 0xCE34364
mov.l r3,@(r0,r14)
bra data_CE308BE
mov 0x01,r2

#align4
data_CE308A4:
#data 0xE1029036
#data 0x0E14E305
#data 0xE5167049
#data 0x4C0B0E34
#data 0x902E64E3
#data 0xD31FE202
#data 0x0E36

data_CE308BE:
#data 0x902B
#data 0x0E24


l_code_CE308C2:
mov.w @(data_CE3091A,pc),r0 ; r0 set to 0x1AC
mov 0x08,r5 ; r5 set to 0x08
mov.l @(ptr_CE30924_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0
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
mov.w @(data_CE30914,pc),r0 ; r0 set to 0x158
mov.l @(ptr_CE30928_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov.l @r15+,r12
mov.b @(r0,r14),r6
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

l_code_CE308F4:
mov.w @(data_CE3091C,pc),r0 ; r0 set to 0x1E8
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
extu.b r0,r0
cmp/eq 0x00,r0
bt/s l_code_CE3093C
mov 0x00,r13 ; r13 set to 0x00
cmp/eq 0x01,r0
bt l_code_CE3095A
cmp/eq 0x02,r0
bt data_CE3097C
bra l_code_CE30992
nop

data_CE30914:
#data 0x0158

data_CE30916:
#data 0x03F4

data_CE30918:
#data 0x01A7

data_CE3091A:
#data 0x01AC

data_CE3091C:
#data 0x01E8
#data 0x0000

#align4
ptr_CE30920_to_Stn_HPChain:
#data Stn_HPChain

ptr_CE30924_to_extern_8C2896B0:
#data extern_8C2896B0

ptr_CE30928_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C

ptr_CE3092C_to_fn_extern_8C04223A:
#data fn_extern_8C04223A

ptr_CE30930_to_Stn_LKChain:
#data Stn_LKChain

ptr_CE30934_to_Stn_MKChain:
#data Stn_MKChain

ptr_CE30938_to_Stn_HKChain:
#data Stn_HKChain


l_code_CE3093C:
mov.w @(data_CE30A20,pc),r0 ; r0 set to 0x158
mov 0x09,r3 ; r3 set to 0x09
mov 0x14,r5 ; r5 set to 0x14
mov.b r13,@(r0,r14)
add 0x49,r0 ; r0 set to 0x1A1
mov.b r3,@(r0,r14)
mov.l @(ptr_CE30A30_to_fn_extern_8C04223A,pc),r3 ; r3 set to 0x8C04223A
jsr @r3
mov r14,r4
mov.w @(data_CE30A22,pc),r0 ; r0 set to 0x3F4
mov.l @(ptr_CE30A34_to_Stn_LKChain,pc),r2 ; r2 set to 0xCE34360
mov.l r2,@(r0,r14)
mov.w @(data_CE30A24,pc),r0 ; r0 set to 0x1A7
bra l_code_CE30992
mov.b r13,@(r0,r14)

l_code_CE3095A:
mov.w @(data_CE30A20,pc),r0 ; r0 set to 0x158
mov 0x01,r2 ; r2 set to 0x01
mov 0x0A,r3 ; r3 set to 0x0A
mov.b r2,@(r0,r14)
add 0x49,r0 ; r0 set to 0x1A1
mov.b r3,@(r0,r14)
mov 0x15,r5 ; r5 set to 0x15
mov.l @(ptr_CE30A30_to_fn_extern_8C04223A,pc),r3 ; r3 set to 0x8C04223A
jsr @r3
mov r14,r4
mov.w @(data_CE30A22,pc),r0 ; r0 set to 0x3F4
mov 0x01,r3 ; r3 set to 0x01
mov.l @(ptr_CE30A38_to_Stn_MKChain,pc),r2 ; r2 set to 0xCE34364
mov.l r2,@(r0,r14)
mov.w @(data_CE30A24,pc),r0 ; r0 set to 0x1A7
bra l_code_CE30992
mov.b r3,@(r0,r14)

#align4
data_CE3097C:
#data 0xE4029050
#data 0xD22EE30B
#data 0x70490E44
#data 0x904A0E34
#data 0x90490E26
#data 0x0E44


l_code_CE30992:
mov.w @(data_CE30A26,pc),r0 ; r0 set to 0x1AC
mov 0x0A,r5 ; r5 set to 0x0A
mov.l @(ptr_CE30A40_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0
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
mov.w @(data_CE30A20,pc),r0 ; r0 set to 0x158
mov.l @(ptr_CE30A44_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov.l @r15+,r13
mov.b @(r0,r14),r6
jmp @r2
mov.l @r15+,r14

data_CE309C2:
#data 0x9031
#data 0x2338034C
#data 0x902E8B03
#data 0xC80F004C
#data 0x8B07

data_CE309D2:
#data 0x9029
#data 0x2228024C
#data 0x90268905
#data 0xC8F0004C
#data 0x8901

data_CE309E2:
#data 0xA002
#data 0x0009

data_CE309E6:
#data 0x000B
#data 0x0009
;==============================================

f_code_CE309EA:
mov.w @(data_CE30A28,pc),r0 ; r0 set to 0x1FE
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
extu.b r0,r0
cmp/eq 0x01,r0
bf l_code_CE309F8
bra l_code_CE30B12
nop

l_code_CE309F8:
bra l_code_CE309FC
nop

l_code_CE309FC:
mov.w @(data_CE30A2C,pc),r0 ; r0 set to 0x1E8
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
mov.l @(ptr_CE30A30_to_fn_extern_8C04223A,pc),r12 ; r12 set to 0x8C04223A
extu.b r0,r0
cmp/eq 0x00,r0
bt/s l_code_CE30A48
mov 0x00,r13 ; r13 set to 0x00
cmp/eq 0x01,r0
bt l_code_CE30A74
cmp/eq 0x02,r0
bt l_code_CE30AA0
bra data_CE30ACE
nop

data_CE30A20:
#data 0x0158

data_CE30A22:
#data 0x03F4

data_CE30A24:
#data 0x01A7

data_CE30A26:
#data 0x01AC

data_CE30A28:
#data 0x01FE
#data 0x01D6

data_CE30A2C:
#data 0x01E8
#data 0x0000

#align4
ptr_CE30A30_to_fn_extern_8C04223A:
#data fn_extern_8C04223A

ptr_CE30A34_to_Stn_LKChain:
#data Stn_LKChain

ptr_CE30A38_to_Stn_MKChain:
#data Stn_MKChain

ptr_CE30A3C_to_Stn_HKChain:
#data Stn_HKChain

ptr_CE30A40_to_extern_8C2896B0:
#data extern_8C2896B0

ptr_CE30A44_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C


l_code_CE30A48:
mov.w @(data_CE30B36,pc),r0 ; r0 set to 0x158
mov 0x0C,r3 ; r3 set to 0x0C
mov 0x14,r5 ; r5 set to 0x14
mov.b r13,@(r0,r14)
add 0x49,r0 ; r0 set to 0x1A1
mov.b r3,@(r0,r14)
jsr @r12
mov r14,r4
mov.w @(data_CE30B38,pc),r0 ; r0 set to 0x1FC
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
tst r3,r3
bf l_code_CE30A68
mov.w @(data_CE30B3A,pc),r0 ; r0 set to 0x3F4
mov.l @(ptr_CE30B44_to_Crc_LPChain,pc),r3 ; r3 set to 0xCE3436C
bra l_code_CE30A6E
mov.l r3,@(r0,r14)

l_code_CE30A68:
mov.w @(data_CE30B3A,pc),r0 ; r0 set to 0x3F4
mov.l @(ptr_CE30B48_to_Air_LPChain,pc),r1 ; r1 set to 0xCE34384
mov.l r1,@(r0,r14)

l_code_CE30A6E:
mov.w @(data_CE30B3C,pc),r0 ; r0 set to 0x1A7, r0 set to 0x1A7
bra data_CE30ACE
mov.b r13,@(r0,r14)

l_code_CE30A74:
mov.w @(data_CE30B36,pc),r0 ; r0 set to 0x158
mov 0x01,r2 ; r2 set to 0x01
mov 0x0D,r3 ; r3 set to 0x0D
mov.b r2,@(r0,r14)
add 0x49,r0 ; r0 set to 0x1A1
mov 0x15,r5 ; r5 set to 0x15
mov.b r3,@(r0,r14)
jsr @r12
mov r14,r4
mov.w @(data_CE30B38,pc),r0 ; r0 set to 0x1FC
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
tst r3,r3
bf l_code_CE30A96
mov.w @(data_CE30B3A,pc),r0 ; r0 set to 0x3F4
mov.l @(ptr_CE30B4C_to_Crc_MPChain,pc),r3 ; r3 set to 0xCE34370
bra l_code_CE30A9C
mov.l r3,@(r0,r14)

l_code_CE30A96:
mov.w @(data_CE30B3A,pc),r0 ; r0 set to 0x3F4
mov.l @(ptr_CE30B50_to_Air_MPChain,pc),r1 ; r1 set to 0xCE34388
mov.l r1,@(r0,r14)

l_code_CE30A9C:
bra data_CE30ACA
mov 0x01,r3

l_code_CE30AA0:
mov.w @(data_CE30B36,pc),r0 ; r0 set to 0x158
mov 0x02,r1 ; r1 set to 0x02
mov 0x0E,r3 ; r3 set to 0x0E
mov.b r1,@(r0,r14)
add 0x49,r0 ; r0 set to 0x1A1
mov 0x1A,r5 ; r5 set to 0x1A
mov.b r3,@(r0,r14)
jsr @r12
mov r14,r4
mov.w @(data_CE30B38,pc),r0 ; r0 set to 0x1FC
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
tst r3,r3
bf data_CE30AC2
mov.w @(data_CE30B3A,pc),r0 ; r0 set to 0x3F4
mov.l @(ptr_CE30B54_to_Crc_HPChain,pc),r3 ; r3 set to 0xCE34374
bra data_CE30AC8
mov.l r3,@(r0,r14)

data_CE30AC2:
#data 0x903A
#data 0x0E16D124

data_CE30AC8:
#data 0xE302

data_CE30ACA:
#data 0x9037
#data 0x0E34

data_CE30ACE:
#data 0x9036
#data 0xD322E50B
#data 0x70F20ED5
#data 0x70260ED4
#data 0x84E20ED6
#data 0x600C6232
#data 0x727C4000
#data 0x7101012D
#data 0x90220215
#data 0x06ECD21B
#data 0x64E3420B
#data 0x00EC9022
#data 0x8903C80F
#data 0x02EC901E
#data 0x0E2472FF

#align4
data_CE30B08:
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x6EF6
;==============================================

l_code_CE30B12:
mov.w @(data_CE30B42,pc),r0 ; r0 set to 0x1E8
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
mov.l @(ptr_CE30B64_to_fn_extern_8C04223A,pc),r12 ; r12 set to 0x8C04223A
extu.b r0,r0
cmp/eq 0x00,r0
bt/s l_code_CE30B68
mov 0x00,r13 ; r13 set to 0x00
cmp/eq 0x01,r0
bt l_code_CE30B94
cmp/eq 0x02,r0
bt l_code_CE30BC0
bra data_CE30BEE
nop

data_CE30B36:
#data 0x0158

data_CE30B38:
#data 0x01FC

data_CE30B3A:
#data 0x03F4

data_CE30B3C:
#data 0x01A7
#data 0x01AC
#data 0x01D6

data_CE30B42:
#data 0x01E8

#align4
ptr_CE30B44_to_Crc_LPChain:
#data Crc_LPChain

ptr_CE30B48_to_Air_LPChain:
#data Air_LPChain

ptr_CE30B4C_to_Crc_MPChain:
#data Crc_MPChain

ptr_CE30B50_to_Air_MPChain:
#data Air_MPChain

ptr_CE30B54_to_Crc_HPChain:
#data Crc_HPChain

ptr_CE30B58_to_Air_HPChain:
	#data Air_HPChain
	#data extern_8C2896B0
	#data fn_extern_8C034E8C

ptr_CE30B64_to_fn_extern_8C04223A:
	#data fn_extern_8C04223A

;==============================================
l_code_CE30B68:
mov.w @(data_CE30C46,pc),r0 ; r0 set to 0x158
mov 0x0F,r3 ; r3 set to 0x0F
mov 0x14,r5 ; r5 set to 0x14
mov.b r13,@(r0,r14)
add 0x49,r0 ; r0 set to 0x1A1
mov.b r3,@(r0,r14)
jsr @r12
mov r14,r4
mov.w @(data_CE30C48,pc),r0 ; r0 set to 0x1FC
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
tst r3,r3
bf l_code_CE30B88
mov.w @(data_CE30C4A,pc),r0 ; r0 set to 0x3F4
mov.l @(ptr_CE30C54_to_Crc_LKChain,pc),r3 ; r3 set to 0xCE34378
bra l_code_CE30B8E
mov.l r3,@(r0,r14)

l_code_CE30B88:
mov.w @(data_CE30C4A,pc),r0 ; r0 set to 0x3F4
mov.l @(ptr_CE30C58_to_Air_LKChain,pc),r1 ; r1 set to 0xCE34390
mov.l r1,@(r0,r14)

l_code_CE30B8E:
mov.w @(data_CE30C4C,pc),r0 ; r0 set to 0x1A7, r0 set to 0x1A7
bra data_CE30BEE
mov.b r13,@(r0,r14)

l_code_CE30B94:
mov.w @(data_CE30C46,pc),r0 ; r0 set to 0x158
mov 0x01,r2 ; r2 set to 0x01
mov 0x10,r3 ; r3 set to 0x10
mov.b r2,@(r0,r14)
add 0x49,r0 ; r0 set to 0x1A1
mov 0x15,r5 ; r5 set to 0x15
mov.b r3,@(r0,r14)
jsr @r12
mov r14,r4
mov.w @(data_CE30C48,pc),r0 ; r0 set to 0x1FC
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
tst r3,r3
bf l_code_CE30BB6
mov.w @(data_CE30C4A,pc),r0 ; r0 set to 0x3F4
mov.l @(ptr_CE30C5C_to_Crc_MKChain,pc),r3 ; r3 set to 0xCE3437C
bra l_code_CE30BBC
mov.l r3,@(r0,r14)

l_code_CE30BB6:
mov.w @(data_CE30C4A,pc),r0 ; r0 set to 0x3F4
mov.l @(ptr_CE30C60_to_Air_MKChain,pc),r1 ; r1 set to 0xCE34394
mov.l r1,@(r0,r14)

l_code_CE30BBC:
bra data_CE30BEA
mov 0x01,r3

l_code_CE30BC0:
mov.w @(data_CE30C46,pc),r0 ; r0 set to 0x158
mov 0x02,r1 ; r1 set to 0x02
mov 0x11,r3 ; r3 set to 0x11
mov.b r1,@(r0,r14)
add 0x49,r0 ; r0 set to 0x1A1
mov 0x16,r5 ; r5 set to 0x16
mov.b r3,@(r0,r14)
jsr @r12
mov r14,r4
mov.w @(data_CE30C48,pc),r0 ; r0 set to 0x1FC
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
tst r3,r3
bf data_CE30BE2
mov.w @(data_CE30C4A,pc),r0 ; r0 set to 0x3F4
mov.l @(ptr_CE30C64_to_Crc_HKChain,pc),r3 ; r3 set to 0xCE34380
bra data_CE30BE8
mov.l r3,@(r0,r14)

data_CE30BE2:
#data 0x9032
#data 0x0E16D120

data_CE30BE8:
#data 0xE302

data_CE30BEA:
#data 0x902F
#data 0x0E34

data_CE30BEE:
#data 0x902E
#data 0xD31EE50C
#data 0x70F20ED5
#data 0x70260ED4
#data 0x84E20ED6
#data 0x600C6232
#data 0x727C4000
#data 0x7101012D
#data 0x901A0215
#data 0x06ECD217
#data 0x64E3420B
#data 0x00EC901A
#data 0x8903C8F0
#data 0x02EC9016
#data 0x0E2472F0

#align4
data_CE30C28:
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x6EF6
;==============================================

f_code_CE30C32:
mov.w @(data_CE30C52,pc),r0 ; r0 set to 0x1FF
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(ptr_CE30C74_to_ptr_CE348E4_to_f_code_CE30CFE,pc),r0 ; r0 set to 0xCE348E4
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

data_CE30C46:
#data 0x0158

data_CE30C48:
#data 0x01FC

data_CE30C4A:
#data 0x03F4

data_CE30C4C:
#data 0x01A7
#data 0x01AC
#data 0x01D6

data_CE30C52:
#data 0x01FF

#align4
ptr_CE30C54_to_Crc_LKChain:
#data Crc_LKChain

ptr_CE30C58_to_Air_LKChain:
#data Air_LKChain

ptr_CE30C5C_to_Crc_MKChain:
#data Crc_MKChain

ptr_CE30C60_to_Air_MKChain:
#data Air_MKChain

ptr_CE30C64_to_Crc_HKChain:
#data Crc_HKChain

ptr_CE30C68_to_Air_HKChain:
#data Air_HKChain
#data extern_8C2896B0
#data fn_extern_8C034E8C

#align4
ptr_CE30C74_to_ptr_CE348E4_to_f_code_CE30CFE:
#data ptr_CE348E4_to_f_code_CE30CFE


f_code_CE30C78:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE30D84_to_fn_extern_8C0511E2,pc),r3 ; r3 set to 0x8C0511E2
jsr @r3
mov r4,r14
mov 0x5C,r1 ; r1 set to 0x5C
mov.l @(ptr_CE30D88_to_extern_8C052C84,pc),r3 ; r3 set to 0x8C052C84
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
mov.w @(data_CE30D80,pc),r0 ; r0 set to 0x1FE
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
extu.b r0,r0
cmp/eq 0x01,r0
bf l_code_CE30CE4
mov.w @(data_CE30D82,pc),r0 ; r0 set to 0x1F9
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
extu.b r0,r0
cmp/eq 0x01,r0
bf l_code_CE30CDC
lds.l @r15+,pr
mov r14,r4
bra l_code_CE30E3C
mov.l @r15+,r14

l_code_CE30CDC:
lds.l @r15+,pr
mov r14,r4
bra l_code_CE30DFC
mov.l @r15+,r14

l_code_CE30CE4:
mov.w @(data_CE30D82,pc),r0 ; r0 set to 0x1F9
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
extu.b r0,r0
cmp/eq 0x01,r0
bf l_code_CE30CF6
lds.l @r15+,pr
mov r14,r4
bra l_code_CE30DC4
mov.l @r15+,r14

l_code_CE30CF6:
lds.l @r15+,pr
mov r14,r4
bra l_code_CE30E80
mov.l @r15+,r14

f_code_CE30CFE:
mov.l r14,@-r15
mov 0x5C,r1 ; r1 set to 0x5C
mov r4,r14
add r14,r1 ; r1 ??? bc r14 is ???
mov 0x34,r0 ; r0 set to 0x34
mov.l @(ptr_CE30D88_to_extern_8C052C84,pc),r3 ; r3 set to 0x8C052C84
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
mov.w @(data_CE30D80,pc),r0 ; r0 set to 0x1FE
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
extu.b r0,r0
cmp/eq 0x01,r0
bf l_code_CE30D66
mov.w @(data_CE30D82,pc),r0 ; r0 set to 0x1F9
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
extu.b r0,r0
cmp/eq 0x01,r0
bf l_code_CE30D5E
lds.l @r15+,pr
mov r14,r4
bra l_code_CE30E3C
mov.l @r15+,r14

l_code_CE30D5E:
lds.l @r15+,pr
mov r14,r4
bra l_code_CE30DFC
mov.l @r15+,r14

l_code_CE30D66:
mov.w @(data_CE30D82,pc),r0 ; r0 set to 0x1F9
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
extu.b r0,r0
cmp/eq 0x01,r0
bf l_code_CE30D78
lds.l @r15+,pr
mov r14,r4
bra l_code_CE30DC4
mov.l @r15+,r14

l_code_CE30D78:
lds.l @r15+,pr
mov r14,r4
bra l_code_CE30D8C
mov.l @r15+,r14

data_CE30D80:
#data 0x01FE

data_CE30D82:
#data 0x01F9

#align4
ptr_CE30D84_to_fn_extern_8C0511E2:
#data fn_extern_8C0511E2

ptr_CE30D88_to_extern_8C052C84:
#data extern_8C052C84


l_code_CE30D8C:
mov.w @(data_CE30E58,pc),r0 ; r0 set to 0x1E8
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
extu.b r0,r0
cmp/eq 0x02,r0
bt l_code_CE30DA8
cmp/eq 0x00,r0
bt l_code_CE30DA8
cmp/eq 0x01,r0
bt l_code_CE30DA8
bra l_code_CE30DBE
nop

l_code_CE30DA8:
mov.l @(ptr_CE30E5C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt l_code_CE30DBE
lds.l @r15+,pr
mov.l @(ptr_CE30E60_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648
mov r14,r4
jmp @r3
mov.l @r15+,r14

l_code_CE30DBE:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

l_code_CE30DC4:
mov.w @(data_CE30E58,pc),r0 ; r0 set to 0x1E8
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
extu.b r0,r0
cmp/eq 0x00,r0
bt l_code_CE30DE0
cmp/eq 0x01,r0
bt l_code_CE30DE0
cmp/eq 0x02,r0
bt l_code_CE30DE0
bra l_code_CE30DF6
nop

l_code_CE30DE0:
mov.l @(ptr_CE30E5C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt l_code_CE30DF6
lds.l @r15+,pr
mov.l @(ptr_CE30E60_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648
mov r14,r4
jmp @r3
mov.l @r15+,r14

l_code_CE30DF6:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

l_code_CE30DFC:
mov.w @(data_CE30E58,pc),r0 ; r0 set to 0x1E8
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
extu.b r0,r0
cmp/eq 0x01,r0
bt l_code_CE30E18
cmp/eq 0x00,r0
bt l_code_CE30E20
cmp/eq 0x02,r0
bt l_code_CE30E20
bra l_code_CE30E36
nop

l_code_CE30E18:
lds.l @r15+,pr
mov r14,r4
bra data_CE30F7C
mov.l @r15+,r14

l_code_CE30E20:
mov.l @(ptr_CE30E5C_to_fn_extern_8C034DEE,pc),r2 ; r2 set to 0x8C034DEE
jsr @r2
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt l_code_CE30E36
lds.l @r15+,pr
mov.l @(ptr_CE30E60_to_fn_extern_8C051648,pc),r2 ; r2 set to 0x8C051648
mov r14,r4
jmp @r2
mov.l @r15+,r14

l_code_CE30E36:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

l_code_CE30E3C:
mov.w @(data_CE30E58,pc),r0 ; r0 set to 0x1E8
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
extu.b r0,r0
cmp/eq 0x00,r0
bt l_code_CE30E64
cmp/eq 0x01,r0
bt l_code_CE30E64
cmp/eq 0x02,r0
bt l_code_CE30E64
bra l_code_CE30E7A
nop

data_CE30E58:
#data 0x01E8
#data 0x0000

#align4
ptr_CE30E5C_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE

ptr_CE30E60_to_fn_extern_8C051648:
#data fn_extern_8C051648


l_code_CE30E64:
mov.l @(ptr_CE30F58_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt l_code_CE30E7A
lds.l @r15+,pr
mov.l @(ptr_CE30F5C_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648
mov r14,r4
jmp @r3
mov.l @r15+,r14

l_code_CE30E7A:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

l_code_CE30E80:
mov.w @(data_CE30F54,pc),r0 ; r0 set to 0x1E8
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
extu.b r0,r0
cmp/eq 0x02,r0
bt l_code_CE30E9C
cmp/eq 0x00,r0
bt l_code_CE30E9C
cmp/eq 0x01,r0
bt l_code_CE30E9C
bra l_code_CE30EB2
nop

l_code_CE30E9C:
mov.l @(ptr_CE30F58_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt l_code_CE30EB2
lds.l @r15+,pr
mov.l @(ptr_CE30F5C_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648
mov r14,r4
jmp @r3
mov.l @r15+,r14

l_code_CE30EB2:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

#align4
data_CE30EB8:
#data 0x4F222FE6
#data 0x430BD328
#data 0xD2286E43
#data 0x64E3420B
#data 0x64E34F26
#data 0x6EF6


f_code_CE30ECE:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE30F68_to_fn_extern_8C04FEA8,pc),r3 ; r3 set to 0x8C04FEA8
jsr @r3
mov r4,r14
mov.l @(ptr_CE30F6C_to_fn_extern_8C050048,pc),r2 ; r2 set to 0x8C050048
jsr @r2
mov r14,r4
mov.w @(data_CE30F56,pc),r0 ; r0 set to 0x1FE
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
extu.b r0,r0
cmp/eq 0x01,r0
bf l_code_CE30EF0
bsr l_code_CE30F32
mov r14,r4
bra l_code_CE30EF4
nop

l_code_CE30EF0:
bsr l_code_CE30F10
mov r14,r4

l_code_CE30EF4:
mov.l @(ptr_CE30F70_to_fn_extern_8C052CE2,pc),r3 ; r3 set to 0x8C052CE2, r3 set to 0x8C052CE2
jsr @r3
mov r14,r4
extu.b r0,r0
tst r0,r0
bt l_code_CE30F0A
lds.l @r15+,pr
mov.l @(ptr_CE30F74_to_fn_extern_8C052DAC,pc),r3 ; r3 set to 0x8C052DAC, r3 set to 0x8C052DAC
mov r14,r4
jmp @r3
mov.l @r15+,r14

l_code_CE30F0A:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

l_code_CE30F10:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(ptr_CE30F58_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt l_code_CE30F2A
mov.l @r15,r4
add 0x04,r15
mov.l @(ptr_CE30F78_to_code_extern_8C05176E,pc),r3 ; r3 set to 0x8C05176E
jmp @r3
lds.l @r15+,pr

l_code_CE30F2A:
add 0x04,r15
lds.l @r15+,pr
rts
nop
;==============================================

l_code_CE30F32:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(ptr_CE30F58_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt l_code_CE30F4C
mov.l @r15,r4
add 0x04,r15
mov.l @(ptr_CE30F78_to_code_extern_8C05176E,pc),r3 ; r3 set to 0x8C05176E
jmp @r3
lds.l @r15+,pr

l_code_CE30F4C:
add 0x04,r15
lds.l @r15+,pr
rts
nop
;==============================================

data_CE30F54:
#data 0x01E8

data_CE30F56:
#data 0x01FE

#align4
ptr_CE30F58_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE

ptr_CE30F5C_to_fn_extern_8C051648:
#data fn_extern_8C051648
#data extern_8C050084
#data extern_8C04FF88

#align4
ptr_CE30F68_to_fn_extern_8C04FEA8:
#data fn_extern_8C04FEA8

ptr_CE30F6C_to_fn_extern_8C050048:
#data fn_extern_8C050048

ptr_CE30F70_to_fn_extern_8C052CE2:
#data fn_extern_8C052CE2

ptr_CE30F74_to_fn_extern_8C052DAC:
#data fn_extern_8C052DAC

ptr_CE30F78_to_code_extern_8C05176E:
#data code_extern_8C05176E

data_CE30F7C:
#data 0x4F222FE6
#data 0x430BD34D
#data 0x600E6E43
#data 0x89024011
#data 0x430BD34B
#data 0x64E3

data_CE30F92:
#data 0x908B
#data 0x880100EC
#data 0x90878B14
#data 0xE319E400
#data 0x70600E44
#data 0x700B0E34
#data 0x70F20E45
#data 0x70260E44
#data 0x0E46D343
#data 0x623284E2
#data 0x4000600C
#data 0x012D727C
#data 0x02157101

#align4
data_CE30FC4:
#data 0x000B4F26
#data 0x6EF6
;==============================================

data_CE30FCA:
#data 0x2FE6
#data 0x4F226E43
#data 0x200884E6
#data 0xD33B8B2C
#data 0x64E3430B
#data 0x700184E6
#data 0x906480E6
#data 0x600C00EC
#data 0x8B218801
#data 0xE505D236
#data 0x64E3420B
#data 0xE315905C
#data 0x0E34E400
#data 0x0E45700B
#data 0x0E4470F2
#data 0xD32E7026
#data 0x0E46E516
#data 0x623284E2
#data 0x4000600C
#data 0x012D727C
#data 0x02157101
#data 0xD22B9049
#data 0x420B0E44
#data 0xD32A64E3
#data 0xE603E514
#data 0x64E3430B

#align4
data_CE31030:
#data 0x00EC9040
#data 0x8803600C
#data 0xD2268B02
#data 0x64E3420B

#align4
data_CE31040:
#data 0xD325E15C
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
#data 0xD20E64E3
#data 0x64E3420B
#data 0x4011600E
#data 0x4F268904
#data 0x64E3D20B
#data 0x6EF6422B

#align4
data_CE31094:
#data 0x000B4F26
#data 0x6EF6
;==============================================

f_code_CE3109A:
mov r4,r3
mov.l @(ptr_CE310DC_to_ptr_CE348F4_to_f_code_CE310E0,pc),r1 ; r1 set to 0xCE348F4
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x01FE0141
#data 0x01F901A1
#data 0x000001FF
#data fn_extern_8C034DEE
#data fn_extern_8C051648
#data extern_8C2896B0
#data fn_extern_8C052B4C
#data fn_extern_8C056DE4
#data fn_extern_8C04223A
#data fn_extern_8C034E8C
#data fn_extern_8C0511E2
#data extern_8C052C84

#align4
ptr_CE310DC_to_ptr_CE348F4_to_f_code_CE310E0:
#data ptr_CE348F4_to_f_code_CE310E0


f_code_CE310E0:
mov.w @(data_CE311DC,pc),r0 ; r0 set to 0x141
mov.b @(r0,r4),r3
tst r3,r3
bt l_code_CE31146
mov.b @(0x06,r4),r0
fldi0 fr4
add 0x01,r0 ; r0 set to 0x142
mov.b r0,@(0x06,r4)
mov 0x5C,r0 ; r0 set to 0x5C
fmov.s fr4,@(r0,r4)
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r4)
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r4)
mov 0x6C,r0 ; r0 set to 0x6C
fmov.s fr4,@(r0,r4)
mov.w @(data_CE311DE,pc),r0 ; r0 set to 0x1D2
mov.b @(r0,r4),r3
tst r3,r3
bt l_code_CE3110E
mova @(data_CE311E0,pc),r0  ; r0 set to 0xCE311E0
bra l_code_CE31112
fmov.s @r0,fr3

l_code_CE3110E:
mova @(data_CE311E4,pc),r0  ; r0 init to 0xCE311E4
fmov.s @r0,fr3

l_code_CE31112:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C
fmov.s fr3,@(r0,r4)
mov.w @(data_CE311DE,pc),r0 ; r0 set to 0x1D2, r0 set to 0x1D2
mov.b @(r0,r4),r3
tst r3,r3
bt data_CE31124
mova @(data_CE311E8,pc),r0  ; r0 set to 0xCE311E8, r0 set to 0xCE311E8
bra data_CE31128
fmov.s @r0,fr3

#align4
data_CE31124:
#data 0xF308C731

#align4
data_CE31128:
#data 0xF437E068
#data 0xF308C730
#data 0xE300E060
#data 0xC72FF437
#data 0xE06CF308
#data 0xE012F437
#data 0x904B814E
#data 0x0434


l_code_CE31146:
mov.l @(ptr_CE311F8_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
jmp @r3
nop

f_code_CE3114C:
mov.l r14,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE311F8_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
mov.w @(0x1C,r14),r0
tst r0,r0
bf l_code_CE311CE
mov.b @(0x06,r14),r0
mov 0x68,r8 ; r8 set to 0x68
add 0x01,r0 ; r0 set to 0x61
mov.b r0,@(0x06,r14)
mov.w @(data_CE311DE,pc),r0 ; r0 set to 0x1D2
mov.b @(r0,r14),r3
tst r3,r3
bt/s data_CE311B0
add r14,r8 ; r8 ??? bc r14 is ???
mov.l @(data_CE311E8,pc),r1 ; r1 set to 0xBEA00000
lds r1,fpul
bra data_CE311B6
fsts fpul,fr3

#align4
data_CE311B0:
#data 0x425AD20E
#data 0xF30D

data_CE311B6:
#data 0xF288
#data 0xE602C70E
#data 0xF230D30F
#data 0xF82A6563
#data 0xE06CF308
#data 0x430BFE37
#data 0x64E3


l_code_CE311CE:
mov.w @(0x1C,r14),r0
add 0xFF,r0
mov.w r0,@(0x1C,r14)
lds.l @r15+,pr
mov.l @r15+,r8
rts
mov.l @r15+,r14
;==============================================

data_CE311DC:
#data 0x0141

data_CE311DE:
#data 0x01D2

#align4
data_CE311E0:
#data 0x417D5555

#align4
data_CE311E4:
#data 0xC17D5555

#align4
data_CE311E8:
#data 0xBEA00000
#data 0x3EA00000
#data 0x40CDB6DB
#data 0xBF092492

#align4
ptr_CE311F8_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE
#data fn_extern_8C034E8C

#align4
data_CE31200:
#data 0x314CE15C
#data 0xF318E034
#data 0xE168F246
#data 0xF230314C
#data 0xE05CF427
#data 0xF318F246
#data 0x314CE160
#data 0xF427F230
#data 0xF246E038
#data 0xE16CF318
#data 0xF230314C
#data 0xE060F427
#data 0xF318F246
#data 0xF427F230
#data 0xF346906D
#data 0xF246E038
#data 0x8B0FF325
#data 0xF48D8446
#data 0x80467001
#data 0xF447E05C
#data 0xF447E060
#data 0xF447E068
#data 0xF447E06C
#data 0xF346905B
#data 0xF437E038

#align4
data_CE31264:
#data 0x034C9058
#data 0x8B022338
#data 0x432BD32B
#data 0x0009

data_CE31272:
#data 0x000B
#data 0x0009
;==============================================

f_code_CE31276:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(ptr_CE3131C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt l_code_CE31290
mov.l @r15,r4
add 0x04,r15
mov.l @(ptr_CE31320_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648
jmp @r3
lds.l @r15+,pr

l_code_CE31290:
add 0x04,r15
lds.l @r15+,pr
rts
nop
;==============================================

f_code_CE31298:
mov r4,r3
mov.l @(ptr_CE31324_to_ptr_CE34904_to_f_code_CE312AA,pc),r1 ; r1 set to 0xCE34904
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

f_code_CE312AA:
mov.w @(data_CE31318,pc),r0 ; r0 set to 0x141
mov.b @(r0,r4),r3
tst r3,r3
bt l_code_CE31310
mov.b @(0x06,r4),r0
fldi0 fr4
add 0x01,r0 ; r0 set to 0x142
mov.b r0,@(0x06,r4)
mov 0x5C,r0 ; r0 set to 0x5C
fmov.s fr4,@(r0,r4)
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r4)
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r4)
mov 0x6C,r0 ; r0 set to 0x6C
fmov.s fr4,@(r0,r4)
mov.w @(data_CE3131A,pc),r0 ; r0 set to 0x1D2
mov.b @(r0,r4),r3
tst r3,r3
bt l_code_CE312D8
mova @(data_CE31328,pc),r0  ; r0 set to 0xCE31328
bra l_code_CE312DC
fmov.s @r0,fr3

l_code_CE312D8:
mova @(data_CE3132C,pc),r0  ; r0 init to 0xCE3132C
fmov.s @r0,fr3

l_code_CE312DC:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C
fmov.s fr3,@(r0,r4)
mov.w @(data_CE3131A,pc),r0 ; r0 set to 0x1D2, r0 set to 0x1D2
mov.b @(r0,r4),r3
tst r3,r3
bt data_CE312EE
mova @(data_CE31330,pc),r0  ; r0 set to 0xCE31330, r0 set to 0xCE31330
bra data_CE312F2
fmov.s @r0,fr3

data_CE312EE:
#data 0xC711
#data 0xF308

data_CE312F2:
#data 0xE068
#data 0xC710F437
#data 0xE060F308
#data 0xF437E300
#data 0xF308C70E
#data 0xF437E06C
#data 0x814EE012
#data 0x04349004


l_code_CE31310:
mov.l @(ptr_CE3131C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
jmp @r3
nop
#data 0x041C

data_CE31318:
#data 0x0141

data_CE3131A:
#data 0x01D2

#align4
ptr_CE3131C_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE

ptr_CE31320_to_fn_extern_8C051648:
#data fn_extern_8C051648

ptr_CE31324_to_ptr_CE34904_to_f_code_CE312AA:
#data ptr_CE34904_to_f_code_CE312AA

data_CE31328:
#data 0xC17D5555

#align4
data_CE3132C:
#data 0x417D5555

#align4
data_CE31330:
#data 0x3EA00000
#data 0xBEA00000
#data 0x40CDB6DB
#data 0xBF092492


f_code_CE31340:
mov.l r14,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE314AC_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
mov.w @(0x1C,r14),r0
tst r0,r0
bf l_code_CE313C2
mov.b @(0x06,r14),r0
mov 0x68,r8 ; r8 set to 0x68
add 0x01,r0 ; r0 set to 0x61
mov.b r0,@(0x06,r14)
mov.w @(data_CE314A2,pc),r0 ; r0 set to 0x1D2
mov.b @(r0,r14),r3
tst r3,r3
bt/s data_CE313A4
add r14,r8 ; r8 ??? bc r14 is ???
mov.l @(data_CE314B0,pc),r1 ; r1 set to 0x3EA00000
lds r1,fpul
bra data_CE313AA
fsts fpul,fr3

#align4
data_CE313A4:
#data 0x425AD243
#data 0xF30D

data_CE313AA:
#data 0xF288
#data 0xD343C742
#data 0xF230E502
#data 0xF82AE603
#data 0xE06CF308
#data 0x430BFE37
#data 0x64E3


l_code_CE313C2:
mov.w @(0x1C,r14),r0
add 0xFF,r0
mov.w r0,@(0x1C,r14)
lds.l @r15+,pr
mov.l @r15+,r8
rts
mov.l @r15+,r14
;==============================================

#align4
data_CE313D0:
#data 0x314CE15C
#data 0xF318E034
#data 0xE168F246
#data 0xF230314C
#data 0xE05CF427
#data 0xF318F246
#data 0x314CE160
#data 0xF427F230
#data 0xF246E038
#data 0xE16CF318
#data 0xF230314C
#data 0xE060F427
#data 0xF318F246
#data 0xF427F230
#data 0xF346904C
#data 0xF246E038
#data 0x8B0FF325
#data 0xF48D8446
#data 0x80467001
#data 0xF447E05C
#data 0xF447E060
#data 0xF447E068
#data 0xF447E06C
#data 0xF346903A
#data 0xF437E038

#align4
data_CE31434:
#data 0x034C9037
#data 0x8B022338
#data 0x432BD31B
#data 0x0009

data_CE31442:
#data 0x000B
#data 0x0009
;==============================================

f_code_CE31446:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(ptr_CE314AC_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt l_code_CE31460
mov.l @r15,r4
add 0x04,r15
mov.l @(ptr_CE314C0_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648
jmp @r3
lds.l @r15+,pr

l_code_CE31460:
add 0x04,r15
lds.l @r15+,pr
rts
nop
;==============================================

f_code_CE31468:
mov r4,r3
mov.l @(ptr_CE314C4_to_ptr_CE34914_to_f_code_CE3147A,pc),r1 ; r1 set to 0xCE34914
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

f_code_CE3147A:
mov.l r14,@-r15
mov r4,r14
mov 0x01,r3 ; r3 set to 0x01
sts.l pr,@-r15
mov.b @(0x06,r14),r0
mov 0x0D,r5 ; r5 set to 0x0D
add 0x01,r0
mov.b r0,@(0x06,r14)
mov.w @(data_CE314A8,pc),r0 ; r0 set to 0x12C
mov.b r3,@(r0,r14)
mov.l @(ptr_CE314C8_to_fn_extern_8C0CE62C,pc),r3 ; r3 set to 0x8C0CE62C
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(ptr_CE314BC_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov r14,r4
mov 0x00,r6 ; r6 set to 0x00
mov 0x12,r5 ; r5 set to 0x12
jmp @r2
mov.l @r15+,r14

data_CE314A2:
#data 0x01D2
#data 0x0141041C

data_CE314A8:
#data 0x012C
#data 0x0000

#align4
ptr_CE314AC_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE

data_CE314B0:
#data 0x3EA00000
#data 0xBEA00000
#data 0xBF092492

#align4
ptr_CE314BC_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C

ptr_CE314C0_to_fn_extern_8C051648:
#data fn_extern_8C051648

ptr_CE314C4_to_ptr_CE34914_to_f_code_CE3147A:
#data ptr_CE34914_to_f_code_CE3147A

ptr_CE314C8_to_fn_extern_8C0CE62C:
#data fn_extern_8C0CE62C

data_CE314CC:
#data 0x4F222FE6
#data 0x909C7FF4
#data 0x00EC6E43
#data 0x8B128801
#data 0xE2009097
#data 0x65F3D34E
#data 0xC74B0E24
#data 0xC74BF308
#data 0xFF3AE602
#data 0xE004F308
#data 0x430BFF37
#data 0xD24964E3
#data 0x420BE502
#data 0x64E3

data_CE31502:
#data 0xD348
#data 0x64E3430B
#data 0x4011600E
#data 0x84E58902
#data 0x80E57001

#align4
data_CE31514:
#data 0x4F267F0C
#data 0x6EF6000B
;==============================================

f_code_CE3151C:
mov r4,r3
mov.l @(ptr_CE31628_to_ptr_CE3491C_to_data_CE3152E,pc),r1 ; r1 set to 0xCE3491C
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

data_CE3152E:
#data 0x2FE6
#data 0x4F226E43
#data 0x700184E6
#data 0xE02080E6
#data 0x233803EC
#data 0xB0B38B01
#data 0x64E3

data_CE31546:
#data 0x4F26
#data 0x6EF664E3


f_code_CE3154C:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE3162C_to_fn_extern_8C046C8A,pc),r3 ; r3 set to 0x8C046C8A
jsr @r3
mov r4,r14
tst r0,r0
bt l_code_CE31564
lds.l @r15+,pr
mov.l @(ptr_CE31630_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648
mov r14,r4
jmp @r3
mov.l @r15+,r14

l_code_CE31564:
mov 0x20,r0 ; r0 set to 0x20
mov r14,r4
mov.b @(r0,r14),r3
mov.l @(ptr_CE31634_to_ptr_CE34924_to_f_code_CE315D6,pc),r0 ; r0 set to 0xCE34924
extu.b r3,r3
lds.l @r15+,pr
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

f_code_CE31578:
mov r4,r3
mov.l @(ptr_CE31638_to_ptr_CE34950_to_f_code_CE3158A,pc),r1 ; r1 set to 0xCE34950
mov.l r4,@-r15
mov.b @(0x07,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

f_code_CE3158A:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x07,r14),r0
mov 0x00,r5 ; r5 set to 0x00
mov.l @(ptr_CE3163C_to_fn_extern_8C035162,pc),r3 ; r3 set to 0x8C035162
add 0x01,r0
mov.b r0,@(0x07,r14)
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
fmov.s fr4,@(r0,r14)
mov 0x00,r4 ; r4 set to 0x00
mov.w @(data_CE31610,pc),r0 ; r0 set to 0x41C
mov 0x02,r6 ; r6 set to 0x02
mov.l @(ptr_CE31640_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
mov 0x13,r5 ; r5 set to 0x13
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14)
mov.w @(data_CE31612,pc),r0 ; r0 set to 0x1FC
mov.b r4,@(r0,r14)
add 0xFD,r0 ; r0 set to 0x1F9
mov.b r4,@(r0,r14)
mov r14,r4 ; r4 ??? bc r14 is ???
lds.l @r15+,pr
jmp @r3
mov.l @r15+,r14

f_code_CE315D0:
mov.l @(ptr_CE31624_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
jmp @r3
nop

f_code_CE315D6:
mov r4,r3
mov.l @(ptr_CE31644_to_ptr_CE34958_to_f_code_CE315E8,pc),r1 ; r1 set to 0xCE34958
mov.l r4,@-r15
mov.b @(0x07,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

f_code_CE315E8:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x07,r14),r0
mov.l @(ptr_CE31648_to_fn_extern_8C05218A,pc),r3 ; r3 set to 0x8C05218A
add 0x01,r0
mov.b r0,@(0x07,r14)
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(ptr_CE31640_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov r14,r4
mov 0x00,r6 ; r6 set to 0x00
mov 0x13,r5 ; r5 set to 0x13
jmp @r2
mov.l @r15+,r14

f_code_CE31608:
mov.l @(ptr_CE31624_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
jmp @r3
nop
#data 0x0141

data_CE31610:
#data 0x041C

data_CE31612:
#data 0x01FC
#data 0x42A00000
#data 0x42092492
#data extern_8C0FDAB6
#data fn_extern_8C04223A

#align4
ptr_CE31624_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE

ptr_CE31628_to_ptr_CE3491C_to_data_CE3152E:
#data ptr_CE3491C_to_data_CE3152E

ptr_CE3162C_to_fn_extern_8C046C8A:
#data fn_extern_8C046C8A

ptr_CE31630_to_fn_extern_8C051648:
#data fn_extern_8C051648

ptr_CE31634_to_ptr_CE34924_to_f_code_CE315D6:
#data ptr_CE34924_to_f_code_CE315D6

ptr_CE31638_to_ptr_CE34950_to_f_code_CE3158A:
#data ptr_CE34950_to_f_code_CE3158A

ptr_CE3163C_to_fn_extern_8C035162:
#data fn_extern_8C035162

ptr_CE31640_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C

ptr_CE31644_to_ptr_CE34958_to_f_code_CE315E8:
#data ptr_CE34958_to_f_code_CE315E8

ptr_CE31648_to_fn_extern_8C05218A:
#data fn_extern_8C05218A


f_code_CE3164C:
mov r4,r3
mov.l @(ptr_CE31768_to_ptr_CE34960_to_f_code_CE3165E,pc),r1 ; r1 set to 0xCE34960
mov.l r4,@-r15
mov.b @(0x07,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

f_code_CE3165E:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x07,r14),r0
mov.l @(ptr_CE3176C_to_fn_extern_8C05218A,pc),r3 ; r3 set to 0x8C05218A
add 0x01,r0
mov.b r0,@(0x07,r14)
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(ptr_CE31770_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov r14,r4
mov 0x01,r6 ; r6 set to 0x01
mov 0x13,r5 ; r5 set to 0x13
jmp @r2
mov.l @r15+,r14

data_CE3167E:
#data 0x906C
#data 0x6E432FE6
#data 0x00EC4F22
#data 0x8B0A8801
#data 0xE2009065
#data 0xE50ED338
#data 0x430B0E24
#data 0xD23664E3
#data 0x420BE50A
#data 0x64E3

data_CE316A2:
#data 0x4F26
#data 0x64E3D334
#data 0x6EF6432B

#align4
data_CE316AC:
#data 0x2FE69056
#data 0x92546E43
#data 0x03ED4F22
#data 0x2328633D
#data 0x03ED8925
#data 0x633D914E
#data 0x89012318
#data 0xE305A026

#align4
data_CE316CC:
#data 0x23289249
#data 0xA0218901
#data 0xE306

data_CE316D6:
#data 0x00ED
#data 0xC880600D
#data 0xA00D8901
#data 0xE107

data_CE316E2:
#data 0x903B
#data 0x600D00ED
#data 0x8901C840
#data 0xE108A006

#align4
data_CE316F0:
#data 0x00ED9034
#data 0xC820600D
#data 0xE1098903

#align4
data_CE316FC:
#data 0xA00DE020
#data 0x0E14

data_CE31702:
#data 0xE020
#data 0xA009E30A
#data 0x0E34

data_CE3170A:
#data 0xD11C
#data 0x0009410B
#data 0xC90FD11B
#data 0x031C4000

#align4
data_CE31718:
#data 0x0E34E020

#align4
data_CE3171C:
#data 0x430BD319
#data 0xE20164E3
#data 0x8B023027
#data 0xE105E020
#data 0x0E14

data_CE3172E:
#data 0x4F26
#data 0x6EF6000B
;==============================================

f_code_CE31734:
mov.w @(data_CE31764,pc),r0 ; r0 set to 0x1E9
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(ptr_CE31788_to_ptr_CE34988_to_f_code_CE31748,pc),r0 ; r0 set to 0xCE34988
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

f_code_CE31748:
mov r4,r3
mov.l @(ptr_CE3178C_to_ptr_CE349BC_to_f_code_CE31790,pc),r1 ; r1 set to 0xCE349BC
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x0141
#data 0x03F00340
#data 0x01000200

data_CE31764:
#data 0x01E9
#data 0x0000

#align4
ptr_CE31768_to_ptr_CE34960_to_f_code_CE3165E:
#data ptr_CE34960_to_f_code_CE3165E

ptr_CE3176C_to_fn_extern_8C05218A:
#data fn_extern_8C05218A

ptr_CE31770_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C
#data fn_extern_8C0CE62C
#data fn_extern_8C034DEE
#data fn_extern_8C03319E

#align4
ptr_CE31780_to_data_CE34968:
#data data_CE34968
#data extern_8C0514B8

#align4
ptr_CE31788_to_ptr_CE34988_to_f_code_CE31748:
#data ptr_CE34988_to_f_code_CE31748

ptr_CE3178C_to_ptr_CE349BC_to_f_code_CE31790:
#data ptr_CE349BC_to_f_code_CE31790


f_code_CE31790:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov 0x05,r5 ; r5 set to 0x05
sts.l pr,@-r15
mov.b @(0x06,r14),r0
mov.l @(ptr_CE318A8_to_fn_extern_8C056DE4,pc),r3 ; r3 set to 0x8C056DE4
add 0x01,r0
mov.b r0,@(0x06,r14)
jsr @r3
mov r14,r4
mov.l @(ptr_CE318AC_to_fn_extern_8C05218A,pc),r2 ; r2 set to 0x8C05218A
jsr @r2
mov r14,r4
mov.l @(ptr_CE318B0_to_fn_extern_8C035162,pc),r3 ; r3 set to 0x8C035162
mov 0x00,r5 ; r5 set to 0x00
jsr @r3
mov r14,r4
mov.l @(ptr_CE318B8_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov 0x15,r5 ; r5 set to 0x15
mov.l @(ptr_CE318B4_to_data_CE34424,pc),r13 ; r13 set to 0xCE34424
mov 0x00,r6 ; r6 set to 0x00
jsr @r2
mov r14,r4
mov.w @(data_CE3189A,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
tst r3,r3
bt l_code_CE317FA
mov.w @(data_CE3189C,pc),r0 ; r0 set to 0x1F9
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
extu.b r0,r0
cmp/eq 0x02,r0
bt l_code_CE317FA
mov.w @(data_CE3189E,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt/s l_code_CE317E0
mov 0x23,r0 ; r0 set to 0x23
bra l_code_CE317E2
mov 0x09,r2

l_code_CE317E0:
mov 0x0A,r2 ; r2 set to 0x0A

l_code_CE317E2:
mov.b r2,@(r0,r14)
mov.w @(data_CE3189E,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r14),r1
tst r1,r1
bt l_code_CE317F0
bra l_code_CE317F2
mov 0x3F,r3

l_code_CE317F0:
mov 0x46,r3 ; r3 set to 0x46

l_code_CE317F2:
shll2 r3 ; r3 set to 0x118
add r3,r13
bra data_CE3181E
nop

l_code_CE317FA:
mov.w @(data_CE3189E,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt/s l_code_CE31808
mov 0x23,r0 ; r0 set to 0x23
bra l_code_CE3180A
mov 0x01,r2

l_code_CE31808:
mov 0x02,r2 ; r2 set to 0x02

l_code_CE3180A:
mov.b r2,@(r0,r14)
mov.w @(data_CE3189E,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r14),r1
tst r1,r1
bt data_CE31818
bra data_CE3181A
mov 0x07,r3

data_CE31818:
#data 0xE30E

data_CE3181A:
#data 0x4308
#data 0x3D3C

data_CE3181E:
#data 0x903D
#data 0x600C00EC
#data 0x89028802
#data 0x420BD224
#data 0x64E3

data_CE3182E:
#data 0xF3D8
#data 0xE400E05C
#data 0xE004FE37
#data 0xE068F3D6
#data 0xE008FE37
#data 0xE060F3D6
#data 0xE00CFE37
#data 0xE06CF3D6
#data 0xE01EFE37
#data 0x604381EE
#data 0x95230009
#data 0x35EC81EF
#data 0x8056D618
#data 0x901E8154
#data 0x600C00EC
#data 0x8B2B8803
#data 0xE248901A
#data 0x700B0E24
#data 0x70F20E45
#data 0x70260E44
#data 0xE4030E46
#data 0x636284E2
#data 0x4000600C
#data 0x023D737C
#data 0x03257201
#data 0x00096043
#data 0xA0268056
#data 0x81EF

data_CE3189A:
#data 0x01A3

data_CE3189C:
#data 0x01F9

data_CE3189E:
#data 0x0130
#data 0x025502A4
#data 0x000001A1

#align4
ptr_CE318A8_to_fn_extern_8C056DE4:
#data fn_extern_8C056DE4

ptr_CE318AC_to_fn_extern_8C05218A:
#data fn_extern_8C05218A

ptr_CE318B0_to_fn_extern_8C035162:
#data fn_extern_8C035162

ptr_CE318B4_to_data_CE34424:
#data data_CE34424

ptr_CE318B8_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C
#data fn_extern_8C05115A
#data extern_8C2896B0

#align4
data_CE318C4:
#data 0xE2339077
#data 0x700B0E24
#data 0x70F20E45
#data 0x70260E44
#data 0x84E20E46
#data 0x600C6362
#data 0x737C4000
#data 0x7201023D
#data 0x0325

data_CE318E6:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;==============================================

f_code_CE318EE:
mov.w @(data_CE319B8,pc),r0 ; r0 set to 0x1D4
mov 0x01,r3 ; r3 set to 0x01
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.l r8,@-r15
sts.l pr,@-r15
mov.b r3,@(r0,r14)
mov.w @(data_CE319BA,pc),r0 ; r0 set to 0x143
mov.b @(r0,r14),r2
cmp/pz r2
bt l_code_CE319A8
mov.b @(0x06,r14),r0
mov 0x01,r7 ; r7 set to 0x01
mov.l @(ptr_CE319C8_to_fn_extern_8C03544C,pc),r3 ; r3 set to 0x8C03544C
mov 0x00,r5 ; r5 set to 0x00
add 0x01,r0 ; r0 set to 0x144
mov r7,r6 ; r6 set to 0x01
mov.b r0,@(0x06,r14)
jsr @r3
mov r14,r4
mov.l @(ptr_CE319CC_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov 0x15,r5 ; r5 set to 0x15
mov 0x03,r6 ; r6 set to 0x03
jsr @r2
mov r14,r4
mov 0x00,r0 ; r0 set to 0x00
mov.b r0,@(0x07,r14)
mov.w @(data_CE319BC,pc),r0 ; r0 set to 0x1F9
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
extu.b r0,r0
cmp/eq 0x02,r0
bt data_CE3197A
mov.l @(ptr_CE319D0_to_fn_extern_8C053082,pc),r2 ; r2 set to 0x8C053082
jsr @r2
mov r14,r4
mova @(data_CE319D4,pc),r0  ; r0 set to 0xCE319D4
fmov.s @r0,fr3 ; r3 ??
mov.w @(data_CE319BE,pc),r0 ; r0 set to 0x41C
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
mov 0x38,r0 ; r0 set to 0x38
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov.w @(data_CE319C0,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r14),r3
tst r3,r3
bt data_CE3197A
mov.l @(ptr_CE319CC_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
mov 0x15,r5 ; r5 set to 0x15
mov 0x06,r6 ; r6 set to 0x06
jsr @r3
mov r14,r4
mov 0x03,r0 ; r0 set to 0x03
mov.b r0,@(0x07,r14)
mov 0x34,r8 ; r8 set to 0x34
mov.w @(data_CE319C2,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???
tst r3,r3
bt/s data_CE3196E
add r14,r8 ; r8 ??? bc r14 is ???
mov.l @(data_CE319D8,pc),r1 ; r1 set to 0x43055555
lds r1,fpul
bra data_CE31974
fsts fpul,fr3

data_CE3196E:
#data 0xD21B
#data 0xF30D425A

#align4
data_CE31974:
#data 0xF230F288
#data 0xF82A

data_CE3197A:
#data 0x9023
#data 0xE54BE300
#data 0xD3170E35
#data 0x64E3430B
#data 0xDD16E70A
#data 0xE6136573
#data 0x64E34D0B
#data 0x6573E709
#data 0x4D0BE613
#data 0xE70B64E3
#data 0xE6136573
#data 0x64E34D0B


l_code_CE319A8:
lds.l @r15+,pr
mov.l @(ptr_CE319E8_to_fn_extern_8C034DEE,pc),r2 ; r2 set to 0x8C034DEE
mov r14,r4
mov.l @r15+,r8
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14
#data 0x01A1

data_CE319B8:
#data 0x01D4

data_CE319BA:
#data 0x0143

data_CE319BC:
#data 0x01F9

data_CE319BE:
#data 0x041C

data_CE319C0:
#data 0x01A3

data_CE319C2:
#data 0x0130
#data 0x00000352

#align4
ptr_CE319C8_to_fn_extern_8C03544C:
#data fn_extern_8C03544C

ptr_CE319CC_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C

ptr_CE319D0_to_fn_extern_8C053082:
#data fn_extern_8C053082

data_CE319D4:
#data 0x41AB6DB6

#align4
data_CE319D8:
#data 0x43055555
#data 0xC3055555
#data fn_extern_8C04223A
#data fn_extern_8C07A428

#align4
ptr_CE319E8_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE

data_CE319EC:
#data 0xC745D346
#data 0x6E432FE6
#data 0x4F222FD6
#data 0xE038F308
#data 0xF2E6F438
#data 0xF245F430
#data 0xE6028F01
#data 0xFE47

data_CE31A0A:
#data 0x9475
#data 0x34EC9073
#data 0x85440E64
#data 0x814470FF
#data 0x600D7001
#data 0x8B014015
#data 0x0009A0B5

#align4
data_CE31A24:
#data 0x6053E500
#data 0x81440009
#data 0x03EC9065
#data 0x89222338
#data 0x600C8446
#data 0x891E3063
#data 0x600C8446
#data 0x8B038801
#data 0xE235905A
#data 0x0E24A003

#align4
data_CE31A4C:
#data 0xE3349056
#data 0x0E34

data_CE31A52:
#data 0x9054
#data 0x0E55D32D
#data 0x0E5470F2
#data 0x0E567026
#data 0x623284E2
#data 0x4000600C
#data 0x012D727C
#data 0x02157101
#data 0x70018446
#data 0xE0048046
#data 0x8144

data_CE31A7A:
#data 0xE15C
#data 0x31ECD324
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
#data 0x64E3430B
#data 0xDD169022
#data 0xE038F3E6
#data 0xF325F2E6
#data 0xD3148B2C
#data 0xE500E005
#data 0x430B80E6
#data 0xE05C64E3
#data 0xFE47F48D
#data 0xFE47E060
#data 0xFE47E068
#data 0xFE47E06C
#data 0xD30D900C
#data 0xE038F3E6
#data 0x430BFE37
#data 0xA03164E3
#data 0x01F5E608
#data 0x019E02A4
#data 0x01AC01A1
#data 0x0000041C
#data 0xC2CDB6DB
#data extern_8C26A5B8
#data extern_8C2896B0
#data fn_extern_8C034DEE
#data fn_extern_8C034E8C
#data fn_extern_8C035162
#data extern_8C0511B4

#align4
data_CE31B20:
#data 0x70FF85EE
#data 0x600F81EE
#data 0x8B1A2008
#data 0xE004D343
#data 0x80E6E500
#data 0x64E3430B
#data 0xE06CF39D
#data 0xFE37F34D
#data 0xF308C73F
#data 0xF2E69071
#data 0xF1E6E038
#data 0xF125F230
#data 0xA0018B01
#data 0xE602

data_CE31B56:
#data 0xE620

#align4
data_CE31B58:
#data 0x4D0BE515
#data 0xA01664E3
#data 0x0009

data_CE31B62:
#data 0x9063
#data 0x880100EC
#data 0x94608911
#data 0x00096043
#data 0x02ED7048
#data 0x2248622D
#data 0x90598B04
#data 0x611D01ED
#data 0x89042148

#align4
data_CE31B84:
#data 0x64E34F26
#data 0xA0C46DF6
#data 0x6EF6

data_CE31B8E:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;==============================================

data_CE31B96:
#data 0x2FE6
#data 0x904A6E43
#data 0x2FD6E402
#data 0x0E444F22
#data 0x03EC9046
#data 0x89384311
#data 0x00096043
#data 0xE40080E6
#data 0x903B953F
#data 0x0E4535EC
#data 0x00096043
#data 0xE3338056
#data 0xE70A8154
#data 0x65739036
#data 0xE613DD1E
#data 0x700B0E34
#data 0x70F20E45
#data 0x70260E44
#data 0x0E46D319
#data 0x623284E2
#data 0x4000600C
#data 0x012D727C
#data 0x02157101
#data 0x64E34D0B
#data 0x6573E709
#data 0x4D0BE613
#data 0xE70B64E3
#data 0xE6136573
#data 0x64E34D0B
#data 0xE54BD310
#data 0x64E3430B
#data 0xE51584E7
#data 0x6603D30E
#data 0x430B7603
#data 0x64E3

data_CE31C1E:
#data 0x4F26
#data 0x64E3D30C
#data 0x432B6DF6
#data 0x041C6EF6
#data 0x03000141
#data 0x01F50352
#data 0x02A40143
#data 0x000001A1
#data fn_extern_8C035162
#data 0x42855555
#data extern_8C2896B0
#data fn_extern_8C07A428
#data fn_extern_8C04223A
#data fn_extern_8C034E8C
#data fn_extern_8C034DEE


f_code_CE31C58:
mov.w @(data_CE31D92,pc),r0 ; r0 set to 0x41C
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
fmov.s @(r0,r14),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fcmp/gt fr2,fr3
bf l_code_CE31C9E
mov.b @(0x06,r14),r0
fldi0 fr4
add 0x01,r0 ; r0 set to 0x39
mov.l @(ptr_CE31D9C_to_extern_8C0511B4,pc),r3 ; r3 set to 0x8C0511B4
mov.b r0,@(0x06,r14)
mov 0x5C,r0 ; r0 set to 0x5C
fmov.s fr4,@(r0,r14)
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14)
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14)
mov 0x6C,r0 ; r0 set to 0x6C
fmov.s fr4,@(r0,r14)
mov.w @(data_CE31D92,pc),r0 ; r0 set to 0x41C
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14)
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(ptr_CE31DA0_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov r14,r4
mov 0x08,r6 ; r6 set to 0x08
mov 0x15,r5 ; r5 set to 0x15
jmp @r2
mov.l @r15+,r14

l_code_CE31C9E:
mov 0x5C,r1 ; r1 set to 0x5C
mov.l @(ptr_CE31DA4_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
add r14,r1 ; r1 ??? bc r14 is ???
mov r14,r4
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
lds.l @r15+,pr
jmp @r3
mov.l @r15+,r14

f_code_CE31CE0:
mov.l r14,@-r15
mov r4,r14
mov.w @(data_CE31D94,pc),r0 ; r0 set to 0x352
mov.l r13,@-r15
mov 0x00,r13 ; r13 set to 0x00
sts.l pr,@-r15
mov.w r13,@(r0,r14)
mov.w @(data_CE31D96,pc),r0 ; r0 set to 0x1F9
mov.l @(ptr_CE31DA4_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
mov.b r13,@(r0,r14)
mov 0x48,r0 ; r0 set to 0x48
mov.l r13,@(r0,r14)
jsr @r3
mov r14,r4
exts.b r0,r0 ; r0 ??
cmp/pz r0
bt l_code_CE31D0E
lds.l @r15+,pr
mov.l @(ptr_CE31DA8_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648
mov r14,r4
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
jmp @r3
mov.l @r15+,r14

l_code_CE31D0E:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

data_CE31D16:
#data 0x2FE6
#data 0x4F226E43
#data 0xE30285EF
#data 0x895F3033
#data 0xD4219038
#data 0xE02305ED
#data 0x655DF28D
#data 0x45094519
#data 0x655C0E54
#data 0x45086253
#data 0x35284500
#data 0xE0104508
#data 0xF346345C
#data 0x894BF324
#data 0x700184E6
#data 0xE01E80E6
#data 0x85EF81EE
#data 0x81EF7001
#data 0xF348E05C
#data 0xE004FE37
#data 0xE068F346
#data 0xE008FE37
#data 0xE060F346
#data 0xE00CFE37
#data 0xE06CF346
#data 0xE018FE37
#data 0xF33DF346
#data 0x005AF38D
#data 0xE01480E7
#data 0xF345F446
#data 0xA0138910
#data 0xF34C

data_CE31D92:
#data 0x041C

data_CE31D94:
#data 0x0352

data_CE31D96:
#data 0x01F9
#data 0x00000340

#align4
ptr_CE31D9C_to_extern_8C0511B4:
#data extern_8C0511B4

ptr_CE31DA0_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C

ptr_CE31DA4_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE

ptr_CE31DA8_to_fn_extern_8C051648:
#data fn_extern_8C051648

ptr_CE31DAC_to_data_CE34424:
#data data_CE34424

data_CE31DB0:
#data 0x02ED9096
#data 0xF32D425A

#align4
data_CE31DB8:
#data 0x9091F33D
#data 0xE500D34B
#data 0x0E15015A
#data 0x64E3430B
#data 0xE501D248
#data 0x64E3420B
#data 0x64E3E048
#data 0x0E36E300
#data 0x4F26E601
#data 0xE515D344
#data 0x6EF6432B

#align4
data_CE31DE4:
#data 0x000B4F26
#data 0x6EF6
;==============================================

f_code_CE31DEA:
mov r4,r3
mov.l @(ptr_CE31EF4_to_ptr_CE349D4_to_f_code_CE31DFC,pc),r1 ; r1 set to 0xCE349D4
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

f_code_CE31DFC:
mov.l r14,@-r15
mov r4,r14
mov 0x3E,r3 ; r3 set to 0x3E
mov.l r13,@-r15
mov 0x00,r13 ; r13 set to 0x00
sts.l pr,@-r15
mov.b @(0x06,r14),r0
mov 0x05,r5 ; r5 set to 0x05
add 0x01,r0
mov.b r0,@(0x06,r14)
mov.w @(data_CE31EE2,pc),r0 ; r0 set to 0x1A1
mov.b r3,@(r0,r14)
add 0x0B,r0 ; r0 set to 0x1AC
mov.w r13,@(r0,r14)
add 0xF2,r0 ; r0 set to 0x19E
mov.b r13,@(r0,r14)
add 0x26,r0 ; r0 set to 0x1C4
mov.l @(ptr_CE31EF8_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0
mov.l r13,@(r0,r14)
mov.b @(0x02,r14),r0
mov.l @r3,r2
extu.b r0,r0 ; r0 set to 0xC4
shll r0 ; r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2)
mov.l @(ptr_CE31EFC_to_fn_extern_8C056DE4,pc),r2 ; r2 set to 0x8C056DE4
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
mov.w @(data_CE31EE4,pc),r0 ; r0 set to 0x1F9
mov.l @(ptr_CE31F00_to_fn_extern_8C05218A,pc),r3 ; r3 set to 0x8C05218A
mov.b r13,@(r0,r14)
mov.w @(data_CE31EE6,pc),r0 ; r0 set to 0x41C
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14)
jsr @r3
mov r14,r4
mov.l @(ptr_CE31F04_to_fn_extern_8C035162,pc),r2 ; r2 set to 0x8C035162
mov r13,r5 ; r5 set to 0x00
jsr @r2
mov r14,r4
mov.l @(ptr_CE31F08_to_fn_extern_8C05115A,pc),r3 ; r3 set to 0x8C05115A
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(ptr_CE31EF0_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov 0x09,r6 ; r6 set to 0x09
mov 0x15,r5 ; r5 set to 0x15
mov r14,r4
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
jmp @r2
mov.l @r15+,r14

data_CE31E7A:
#data 0x9035
#data 0x2FE6E201
#data 0x4F226E43
#data 0x332303EC
#data 0x84E6890B
#data 0x6533E300
#data 0x70016733
#data 0xE61380E6
#data 0x0E349026
#data 0x430BD31B
#data 0x64E3

data_CE31EA2:
#data 0x4F26
#data 0x64E3D21A
#data 0x6EF6422B


f_code_CE31EAC:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(ptr_CE31F10_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt l_code_CE31EC6
mov.l @r15,r4
add 0x04,r15
mov.l @(ptr_CE31F14_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648
jmp @r3
lds.l @r15+,pr

l_code_CE31EC6:
add 0x04,r15
lds.l @r15+,pr
rts
nop
;==============================================

f_code_CE31ECE:
mov r4,r3
mov.l @(ptr_CE31F18_to_ptr_CE349E0_to_f_code_CE31F1C,pc),r1 ; r1 set to 0xCE349E0
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x0130

data_CE31EE2:
#data 0x01A1

data_CE31EE4:
#data 0x01F9

data_CE31EE6:
#data 0x041C
#data 0x00000141
#data fn_extern_8C0CE62C

#align4
ptr_CE31EF0_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C

ptr_CE31EF4_to_ptr_CE349D4_to_f_code_CE31DFC:
#data ptr_CE349D4_to_f_code_CE31DFC

ptr_CE31EF8_to_extern_8C2896B0:
#data extern_8C2896B0

ptr_CE31EFC_to_fn_extern_8C056DE4:
#data fn_extern_8C056DE4

ptr_CE31F00_to_fn_extern_8C05218A:
#data fn_extern_8C05218A

ptr_CE31F04_to_fn_extern_8C035162:
#data fn_extern_8C035162

ptr_CE31F08_to_fn_extern_8C05115A:
#data fn_extern_8C05115A
#data fn_extern_8C07A428

#align4
ptr_CE31F10_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE

ptr_CE31F14_to_fn_extern_8C051648:
#data fn_extern_8C051648

ptr_CE31F18_to_ptr_CE349E0_to_f_code_CE31F1C:
#data ptr_CE349E0_to_f_code_CE31F1C


f_code_CE31F1C:
mov.l r14,@-r15
mov r4,r14
mov 0x3F,r3 ; r3 set to 0x3F
mov.l r13,@-r15
mov 0x00,r13 ; r13 set to 0x00
sts.l pr,@-r15
mov.b @(0x06,r14),r0
mov 0x05,r5 ; r5 set to 0x05
add 0x01,r0
mov.b r0,@(0x06,r14)
mov.w @(data_CE3205E,pc),r0 ; r0 set to 0x1A1
mov.b r3,@(r0,r14)
add 0x0B,r0 ; r0 set to 0x1AC
mov.w r13,@(r0,r14)
add 0xF2,r0 ; r0 set to 0x19E
mov.b r13,@(r0,r14)
add 0x26,r0 ; r0 set to 0x1C4
mov.l @(ptr_CE32068_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0
mov.l r13,@(r0,r14)
mov.b @(0x02,r14),r0
mov.l @r3,r2
extu.b r0,r0 ; r0 set to 0xC4
shll r0 ; r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2)
mov.l @(ptr_CE3206C_to_fn_extern_8C056DE4,pc),r2 ; r2 set to 0x8C056DE4
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
mov.w @(data_CE32060,pc),r0 ; r0 set to 0x1F9
mov.l @(ptr_CE32070_to_fn_extern_8C05218A,pc),r3 ; r3 set to 0x8C05218A
mov.b r13,@(r0,r14)
mov.w @(data_CE32062,pc),r0 ; r0 set to 0x41C
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14)
jsr @r3
mov r14,r4
mov.l @(ptr_CE32074_to_fn_extern_8C035162,pc),r2 ; r2 set to 0x8C035162
mov r13,r5 ; r5 set to 0x00
jsr @r2
mov r14,r4
mov.l @(ptr_CE32078_to_fn_extern_8C05115A,pc),r3 ; r3 set to 0x8C05115A
jsr @r3
mov r14,r4
mov 0x23,r0 ; r0 set to 0x23
mov.l @(ptr_CE3207C_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
mov.b r13,@(r0,r14)
mov 0x0A,r6 ; r6 set to 0x0A
lds.l @r15+,pr
mov 0x15,r5 ; r5 set to 0x15
mov r14,r4
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
jmp @r3
mov.l @r15+,r14

data_CE31F9E:
#data 0x9061
#data 0x6E432FE6
#data 0x03EC4F22
#data 0x89142338
#data 0xE70284E6
#data 0x6573D333
#data 0x80E67001
#data 0x430BE613
#data 0xD23164E3
#data 0x420BE504
#data 0x904D64E3
#data 0x0E34E300
#data 0x02EC7062
#data 0x81EEE010
#data 0x2228

data_CE31FD6:
#data 0x4F26
#data 0x64E3D32B
#data 0x6EF6432B

#align4
data_CE31FE0:
#data 0x6E432FE6
#data 0x85EE4F22
#data 0x81EE70FF
#data 0x600F7001
#data 0x8B072008
#data 0xE51584E6
#data 0xE60BD320
#data 0x80E67001
#data 0x64E3430B

#align4
data_CE32004:
#data 0xD2204F26
#data 0x422B64E3
#data 0x6EF6


f_code_CE3200E:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(ptr_CE32088_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt l_code_CE32028
mov.l @r15,r4
add 0x04,r15
mov.l @(ptr_CE3208C_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648
jmp @r3
lds.l @r15+,pr

l_code_CE32028:
add 0x04,r15
lds.l @r15+,pr
rts
nop
;==============================================

f_code_CE32030:
mov r4,r3
mov.l @(ptr_CE32090_to_ptr_CE349F0_to_f_code_CE32042,pc),r1 ; r1 set to 0xCE349F0
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

f_code_CE32042:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.l @(ptr_CE3206C_to_fn_extern_8C056DE4,pc),r3 ; r3 set to 0x8C056DE4
jsr @r3
mov 0x05,r5 ; r5 set to 0x05
mov.w @(data_CE32066,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r14),r2
tst r2,r2
bf l_code_CE32094
mov.b @(0x06,r14),r0
add 0x01,r0 ; r0 set to 0x1A4
bra l_code_CE320A0
mov.b r0,@(0x06,r14)

data_CE3205E:
#data 0x01A1

data_CE32060:
#data 0x01F9

data_CE32062:
#data 0x041C
#data 0x0141

data_CE32066:
#data 0x01A3

#align4
ptr_CE32068_to_extern_8C2896B0:
#data extern_8C2896B0

ptr_CE3206C_to_fn_extern_8C056DE4:
#data fn_extern_8C056DE4

ptr_CE32070_to_fn_extern_8C05218A:
#data fn_extern_8C05218A

ptr_CE32074_to_fn_extern_8C035162:
#data fn_extern_8C035162

ptr_CE32078_to_fn_extern_8C05115A:
#data fn_extern_8C05115A

ptr_CE3207C_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C
#data fn_extern_8C07A428
#data fn_extern_8C0CE62C

#align4
ptr_CE32088_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE

ptr_CE3208C_to_fn_extern_8C051648:
#data fn_extern_8C051648

ptr_CE32090_to_ptr_CE349F0_to_f_code_CE32042:
#data ptr_CE349F0_to_f_code_CE32042


l_code_CE32094:
mov 0x06,r0 ; r0 set to 0x06
mov r14,r4
mov.b r0,@(0x06,r14)
lds.l @r15+,pr
bra f_code_CE32230
mov.l @r15+,r14

l_code_CE320A0:
mov 0x23,r0 ; r0 set to 0x23
mov 0x00,r4 ; r4 set to 0x00
mov.b r4,@(r0,r14)
mov r4,r0 ; r0 set to 0x00
nop
mov.w r0,@(0x1C,r14)
mov 0x5C,r0 ; r0 set to 0x5C
fldi0 fr4
fmov.s fr4,@(r0,r14)
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14)
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14)
mov 0x6C,r0 ; r0 set to 0x6C
fmov.s fr4,@(r0,r14)
mov.w @(data_CE321AC,pc),r0 ; r0 set to 0x1F9
mov.l @(ptr_CE321B4_to_fn_extern_8C05218A,pc),r3 ; r3 set to 0x8C05218A
mov.b r4,@(r0,r14)
mov.w @(data_CE321AE,pc),r0 ; r0 set to 0x41C
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14)
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???
mov.l @(ptr_CE321B8_to_fn_extern_8C035162,pc),r2 ; r2 set to 0x8C035162
mov 0x00,r5 ; r5 set to 0x00
jsr @r2
mov r14,r4
mov.l @(ptr_CE321BC_to_fn_extern_8C05115A,pc),r3 ; r3 set to 0x8C05115A
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(ptr_CE321C0_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov r14,r4
mov 0x0E,r6 ; r6 set to 0x0E
mov 0x15,r5 ; r5 set to 0x15
jmp @r2
mov.l @r15+,r14

#align4
data_CE320EC:
#data 0x2FE69060
#data 0x4F226E43
#data 0x887000EC
#data 0x90598B08
#data 0xD331E706
#data 0x6573E200
#data 0xE6130E24
#data 0x64E3430B

#align4
data_CE3210C:
#data 0x02ECE023
#data 0x4215622C
#data 0x84E68B0B
#data 0xD32964E3
#data 0x7001E515
#data 0xE02380E6
#data 0x06EC4F26
#data 0x432B760F
#data 0x6EF6

data_CE3212E:
#data 0x9040
#data 0x421102EC
#data 0x84E68907
#data 0xD321E515
#data 0x7001E60F
#data 0x430B80E6
#data 0x64E3

data_CE32146:
#data 0x4F26
#data 0x64E3D21F
#data 0x6EF6422B


f_code_CE32150:
mov.w @(data_CE321B2,pc),r0 ; r0 set to 0x143
mov.b @(r0,r4),r3
cmp/pz r3
bt l_code_CE3217E
mov 0x23,r0 ; r0 set to 0x23
mov.b @(r0,r4),r2
extu.b r2,r2
cmp/pl r2
bf l_code_CE32172
mov.w @(0x1C,r4),r0
tst r0,r0
bf l_code_CE32172
mov.b @(0x06,r4),r0
add 0x01,r0 ; r0 set to 0x24
mov.b r0,@(0x06,r4)
bra l_code_CE32178
mov 0x1A,r6

l_code_CE32172:
mov 0x05,r0 ; r0 set to 0x05
mov 0x1D,r6 ; r6 set to 0x1D
mov.b r0,@(0x06,r4)

l_code_CE32178:
mov.l @(ptr_CE321C0_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8C
jmp @r3
mov 0x15,r5

l_code_CE3217E:
mov.l @(ptr_CE321C8_to_fn_extern_8C034DEE,pc),r2 ; r2 set to 0x8C034DEE
jmp @r2
nop

#align4
data_CE32184:
#data 0x2FE69015
#data 0x4F226E43
#data 0x431103EC
#data 0x84E68907
#data 0xD30AE515
#data 0x7001E61B
#data 0x430B80E6
#data 0x64E3

data_CE321A2:
#data 0x4F26
#data 0x64E3D208
#data 0x6EF6422B

data_CE321AC:
#data 0x01F9

data_CE321AE:
#data 0x041C
#data 0x0141

data_CE321B2:
#data 0x0143

#align4
ptr_CE321B4_to_fn_extern_8C05218A:
#data fn_extern_8C05218A

ptr_CE321B8_to_fn_extern_8C035162:
#data fn_extern_8C035162

ptr_CE321BC_to_fn_extern_8C05115A:
#data fn_extern_8C05115A

ptr_CE321C0_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C
#data fn_extern_8C07A428

#align4
ptr_CE321C8_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE

data_CE321CC:
#data 0x2FE6907A
#data 0x4F226E43
#data 0x880E00EC
#data 0x90738B08
#data 0xD33CE708
#data 0x6573E200
#data 0xE6130E24
#data 0x64E3430B

#align4
data_CE321EC:
#data 0x02EC906B
#data 0x89074211
#data 0xE51584E6
#data 0xE61CD336
#data 0x80E67001
#data 0x64E3430B

#align4
data_CE32204:
#data 0xD2344F26
#data 0x422B64E3
#data 0x6EF6


f_code_CE3220E:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(ptr_CE322D8_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt l_code_CE32228
mov.l @r15,r4
add 0x04,r15
mov.l @(ptr_CE322DC_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648
jmp @r3
lds.l @r15+,pr

l_code_CE32228:
add 0x04,r15
lds.l @r15+,pr
rts
nop
;==============================================

f_code_CE32230:
mov.l r14,@-r15
mov r4,r14
mov 0x31,r3 ; r3 set to 0x31
mov.l r13,@-r15
mov 0x00,r13 ; r13 set to 0x00
sts.l pr,@-r15
mov.b @(0x06,r14),r0
mov 0x05,r5 ; r5 set to 0x05
add 0x01,r0
mov.b r0,@(0x06,r14)
mov.w @(data_CE322C8,pc),r0 ; r0 set to 0x1A1
mov.b r3,@(r0,r14)
add 0x0B,r0 ; r0 set to 0x1AC
mov.w r13,@(r0,r14)
add 0xF2,r0 ; r0 set to 0x19E
mov.b r13,@(r0,r14)
add 0x26,r0 ; r0 set to 0x1C4
mov.l @(ptr_CE322E0_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0
mov.l r13,@(r0,r14)
mov.b @(0x02,r14),r0
mov.l @r3,r2
extu.b r0,r0 ; r0 set to 0xC4
shll r0 ; r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2)
mov.l @(ptr_CE322E4_to_fn_extern_8C056DE4,pc),r2 ; r2 set to 0x8C056DE4
jsr @r2
mov r14,r4
mov 0x18,r0 ; r0 set to 0x18
fldi0 fr4
mov.w r0,@(0x1C,r14)
mov 0x5C,r0 ; r0 set to 0x5C
fmov.s fr4,@(r0,r14)
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14)
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14)
mov 0x6C,r0 ; r0 set to 0x6C
fmov.s fr4,@(r0,r14)
mov.w @(data_CE322CA,pc),r0 ; r0 set to 0x1F9
mov.l @(ptr_CE322E8_to_fn_extern_8C05218A,pc),r3 ; r3 set to 0x8C05218A
mov.b r13,@(r0,r14)
mov.w @(data_CE322CC,pc),r0 ; r0 set to 0x41C
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14)
jsr @r3
mov r14,r4
mov.l @(ptr_CE322EC_to_fn_extern_8C035162,pc),r2 ; r2 set to 0x8C035162
mov r13,r5 ; r5 set to 0x00
jsr @r2
mov r14,r4
mov.l @(ptr_CE322F0_to_fn_extern_8C05115A,pc),r3 ; r3 set to 0x8C05115A
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(ptr_CE322D4_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov 0x0C,r6 ; r6 set to 0x0C
mov 0x15,r5 ; r5 set to 0x15
mov r14,r4
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
jmp @r2
mov.l @r15+,r14

f_code_CE322B2:
mov r4,r3
mov.l @(ptr_CE322F4_to_ptr_CE34A18_to_f_code_CE322F8,pc),r1 ; r1 set to 0xCE34A18
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x01430141

data_CE322C8:
#data 0x01A1

data_CE322CA:
#data 0x01F9

data_CE322CC:
#data 0x041C
#data 0x0000
#data fn_extern_8C07A428

#align4
ptr_CE322D4_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C

ptr_CE322D8_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE

ptr_CE322DC_to_fn_extern_8C051648:
#data fn_extern_8C051648

ptr_CE322E0_to_extern_8C2896B0:
#data extern_8C2896B0

ptr_CE322E4_to_fn_extern_8C056DE4:
#data fn_extern_8C056DE4

ptr_CE322E8_to_fn_extern_8C05218A:
#data fn_extern_8C05218A

ptr_CE322EC_to_fn_extern_8C035162:
#data fn_extern_8C035162

ptr_CE322F0_to_fn_extern_8C05115A:
#data fn_extern_8C05115A

ptr_CE322F4_to_ptr_CE34A18_to_f_code_CE322F8:
#data ptr_CE34A18_to_f_code_CE322F8


f_code_CE322F8:
mov.l r14,@-r15
mov r4,r14
mov 0x31,r3 ; r3 set to 0x31
mov.l r13,@-r15
mov 0x00,r13 ; r13 set to 0x00
sts.l pr,@-r15
mov.b @(0x06,r14),r0
mov 0x05,r5 ; r5 set to 0x05
add 0x01,r0
mov.b r0,@(0x06,r14)
mov.w @(data_CE32420,pc),r0 ; r0 set to 0x1A1
mov.b r3,@(r0,r14)
add 0x0B,r0 ; r0 set to 0x1AC
mov.w r13,@(r0,r14)
add 0xF2,r0 ; r0 set to 0x19E
mov.b r13,@(r0,r14)
add 0x26,r0 ; r0 set to 0x1C4
mov.l @(ptr_CE32428_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0
mov.l r13,@(r0,r14)
mov.b @(0x02,r14),r0
mov.l @r3,r2
extu.b r0,r0 ; r0 set to 0xC4
shll r0 ; r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2)
mov.l @(ptr_CE3242C_to_fn_extern_8C056DE4,pc),r2 ; r2 set to 0x8C056DE4
jsr @r2
mov r14,r4
mov 0x1E,r0 ; r0 set to 0x1E
fldi0 fr4
mov.w r0,@(0x1C,r14)
mov 0x5C,r0 ; r0 set to 0x5C
fmov.s fr4,@(r0,r14)
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14)
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14)
mov 0x6C,r0 ; r0 set to 0x6C
fmov.s fr4,@(r0,r14)
mov.w @(data_CE32422,pc),r0 ; r0 set to 0x1F9
mov.l @(ptr_CE32430_to_fn_extern_8C05218A,pc),r3 ; r3 set to 0x8C05218A
mov.b r13,@(r0,r14)
mov.w @(data_CE32424,pc),r0 ; r0 set to 0x41C
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14)
jsr @r3
mov r14,r4
mov.l @(ptr_CE32434_to_fn_extern_8C035162,pc),r2 ; r2 set to 0x8C035162
mov r13,r5 ; r5 set to 0x00
jsr @r2
mov r14,r4
mov.l @(ptr_CE32438_to_fn_extern_8C05115A,pc),r3 ; r3 set to 0x8C05115A
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(ptr_CE3243C_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov 0x0C,r6 ; r6 set to 0x0C
mov 0x15,r5 ; r5 set to 0x15
mov r14,r4
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
jmp @r2
mov.l @r15+,r14

data_CE3237A:
#data 0x9054
#data 0x6E432FE6
#data 0x03EC4F22
#data 0x89052338
#data 0x0E34E300
#data 0xD32CE516
#data 0x64E3430B

#align4
data_CE32394:
#data 0x70FF85EE
#data 0x700181EE
#data 0x2008600F
#data 0x84E68B07
#data 0xD325E515
#data 0x7001E60D
#data 0x430B80E6
#data 0x64E3

data_CE323B2:
#data 0x4F26
#data 0x64E3D223
#data 0x6EF6422B

#align4
data_CE323BC:
#data 0x2FE69033
#data 0x4F226E43
#data 0x233803EC
#data 0x84E6890B
#data 0xD31EE704
#data 0x70016573
#data 0xE61380E6
#data 0x64E3430B
#data 0xE2009023
#data 0x0E24

data_CE323E2:
#data 0x4F26
#data 0x64E3D317
#data 0x6EF6432B


f_code_CE323EC:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(ptr_CE32444_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt l_code_CE32406
mov.l @r15,r4
add 0x04,r15
mov.l @(ptr_CE3244C_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648
jmp @r3
lds.l @r15+,pr

l_code_CE32406:
add 0x04,r15
lds.l @r15+,pr
rts
nop
;==============================================

f_code_CE3240E:
mov r4,r3
mov.l @(ptr_CE32450_to_ptr_CE34A28_to_f_code_CE32454,pc),r1 ; r1 set to 0xCE34A28
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

data_CE32420:
#data 0x01A1

data_CE32422:
#data 0x01F9

data_CE32424:
#data 0x041C
#data 0x0141

#align4
ptr_CE32428_to_extern_8C2896B0:
#data extern_8C2896B0

ptr_CE3242C_to_fn_extern_8C056DE4:
#data fn_extern_8C056DE4

ptr_CE32430_to_fn_extern_8C05218A:
#data fn_extern_8C05218A

ptr_CE32434_to_fn_extern_8C035162:
#data fn_extern_8C035162

ptr_CE32438_to_fn_extern_8C05115A:
#data fn_extern_8C05115A

ptr_CE3243C_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C
#data fn_extern_8C04223A

#align4
ptr_CE32444_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE
#data fn_extern_8C07A428

#align4
ptr_CE3244C_to_fn_extern_8C051648:
#data fn_extern_8C051648

ptr_CE32450_to_ptr_CE34A28_to_f_code_CE32454:
#data ptr_CE34A28_to_f_code_CE32454


f_code_CE32454:
mov.l r14,@-r15
mov r4,r14
mov 0x3F,r3 ; r3 set to 0x3F
mov.l r13,@-r15
mov 0x00,r13 ; r13 set to 0x00
sts.l pr,@-r15
mov.b @(0x06,r14),r0
mov 0x05,r5 ; r5 set to 0x05
add 0x01,r0
mov.b r0,@(0x06,r14)
mov.w @(data_CE32594,pc),r0 ; r0 set to 0x1A1
mov.b r3,@(r0,r14)
add 0x0B,r0 ; r0 set to 0x1AC
mov.w r13,@(r0,r14)
add 0xF2,r0 ; r0 set to 0x19E
mov.b r13,@(r0,r14)
add 0x26,r0 ; r0 set to 0x1C4
mov.l @(ptr_CE325A0_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0
mov.l r13,@(r0,r14)
mov.b @(0x02,r14),r0
mov.l @r3,r2
extu.b r0,r0 ; r0 set to 0xC4
shll r0 ; r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2)
mov.l @(ptr_CE325A4_to_fn_extern_8C056DE4,pc),r2 ; r2 set to 0x8C056DE4
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
mov.w @(data_CE32596,pc),r0 ; r0 set to 0x1F9
mov.l @(ptr_CE325A8_to_fn_extern_8C05218A,pc),r3 ; r3 set to 0x8C05218A
mov.b r13,@(r0,r14)
mov.w @(data_CE32598,pc),r0 ; r0 set to 0x41C
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14)
jsr @r3
mov r14,r4
mov.l @(ptr_CE325AC_to_fn_extern_8C035162,pc),r2 ; r2 set to 0x8C035162
mov r13,r5 ; r5 set to 0x00
jsr @r2
mov r14,r4
mov.l @(ptr_CE325B0_to_fn_extern_8C05115A,pc),r3 ; r3 set to 0x8C05115A
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(ptr_CE325B4_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov 0x1E,r6 ; r6 set to 0x1E
mov 0x15,r5 ; r5 set to 0x15
mov r14,r4
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
jmp @r2
mov.l @r15+,r14

data_CE324D2:
#data 0x9062
#data 0x6E432FE6
#data 0x03EC4F22
#data 0x890B2338
#data 0xE70584E6
#data 0x6573D334
#data 0x80E67001
#data 0x430BE613
#data 0x905264E3
#data 0x0E24E200

#align4
data_CE324F8:
#data 0xD3304F26
#data 0x432B64E3
#data 0x6EF6


f_code_CE32502:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(ptr_CE325BC_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt l_code_CE3251C
mov.l @r15,r4
add 0x04,r15
mov.l @(ptr_CE325C0_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648
jmp @r3
lds.l @r15+,pr

l_code_CE3251C:
add 0x04,r15
lds.l @r15+,pr
rts
nop
;==============================================

f_code_CE32524:
mov r4,r3
mov.l @(ptr_CE325C4_to_ptr_CE34A34_to_f_code_CE32536,pc),r1 ; r1 set to 0xCE34A34
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

f_code_CE32536:
mov.l r14,@-r15
mov r4,r14
mov 0x38,r3 ; r3 set to 0x38
mov.l r13,@-r15
mov 0x00,r13 ; r13 set to 0x00
mov.l r12,@-r15
sts.l pr,@-r15
mov.b @(0x06,r14),r0
add 0x01,r0
mov.b r0,@(0x06,r14)
mov.w @(data_CE32594,pc),r0 ; r0 set to 0x1A1
mov.b r3,@(r0,r14)
add 0x0B,r0 ; r0 set to 0x1AC
mov.w r13,@(r0,r14)
add 0xF2,r0 ; r0 set to 0x19E
mov.b r13,@(r0,r14)
add 0x26,r0 ; r0 set to 0x1C4
mov.l r13,@(r0,r14)
mov.l @(ptr_CE325A0_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0
mov.b @(0x02,r14),r0
mov.l @r3,r2
extu.b r0,r0 ; r0 set to 0xC4
shll r0 ; r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2)
mov.l @(ptr_CE325A8_to_fn_extern_8C05218A,pc),r2 ; r2 set to 0x8C05218A
jsr @r2
mov r14,r4
mov.l @(ptr_CE325AC_to_fn_extern_8C035162,pc),r3 ; r3 set to 0x8C035162
mov r13,r5 ; r5 set to 0x00
jsr @r3
mov r14,r4
mov.l @(ptr_CE325B4_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov 0x16,r5 ; r5 set to 0x16
mov.l @(ptr_CE325C8_to_data_CE345E4,pc),r12 ; r12 set to 0xCE345E4
mov r13,r6 ; r6 set to 0x00
jsr @r2
mov r14,r4
mov.w @(data_CE3259C,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r2 ; r2 ??? bc r14 is ???
tst r2,r2
bt/s l_code_CE325CC
mov 0x23,r0 ; r0 set to 0x23
bra l_code_CE325CE
mov 0x01,r3

data_CE32594:
#data 0x01A1

data_CE32596:
#data 0x01F9

data_CE32598:
#data 0x041C
#data 0x0141

data_CE3259C:
#data 0x0130
#data 0x0000

#align4
ptr_CE325A0_to_extern_8C2896B0:
#data extern_8C2896B0

ptr_CE325A4_to_fn_extern_8C056DE4:
#data fn_extern_8C056DE4

ptr_CE325A8_to_fn_extern_8C05218A:
#data fn_extern_8C05218A

ptr_CE325AC_to_fn_extern_8C035162:
#data fn_extern_8C035162

ptr_CE325B0_to_fn_extern_8C05115A:
#data fn_extern_8C05115A

ptr_CE325B4_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C
#data fn_extern_8C07A428

#align4
ptr_CE325BC_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE

ptr_CE325C0_to_fn_extern_8C051648:
#data fn_extern_8C051648

ptr_CE325C4_to_ptr_CE34A34_to_f_code_CE32536:
#data ptr_CE34A34_to_f_code_CE32536

ptr_CE325C8_to_data_CE345E4:
#data data_CE345E4


l_code_CE325CC:
mov 0x02,r3 ; r3 set to 0x02

l_code_CE325CE:
mov.b r3,@(r0,r14)
mov.w @(data_CE326F8,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r14),r1
tst r1,r1
bt data_CE325DC
bra data_CE325DE
mov 0x07,r2

data_CE325DC:
#data 0xE20E

data_CE325DE:
#data 0x908C
#data 0x00EC4208
#data 0x8802600C
#data 0x3C2C8D03
#data 0x420BD247
#data 0x64E3

data_CE325F2:
#data 0xD347
#data 0xE701E504
#data 0x430BE607
#data 0xF3C864E3
#data 0xFE37E05C
#data 0xF3C6E004
#data 0xFE37E068
#data 0xF3C6E008
#data 0xFE37E060
#data 0xF3C6E00C
#data 0xFE37E06C
#data 0x81EEE01E
#data 0x000960D3
#data 0x81EF946A
#data 0x34ECE021
#data 0x60D30ED4
#data 0x804A0009
#data 0x4F268146
#data 0x6DF66CF6
#data 0x6EF6000B
;==============================================

#align4
data_CE32640:
#data 0x2FD62FE6
#data 0x7FF44F22
#data 0x6E439059
#data 0x0E34E302
#data 0x9055E205
#data 0xD32FED00
#data 0x430B0E24
#data 0x600E64E3
#data 0x8B114011
#data 0x00EC904D
#data 0x8B0D8801
#data 0x65F39049
#data 0xE601D32B
#data 0xC7280ED4
#data 0xC728F308
#data 0xF308FF3A
#data 0xFF37E004
#data 0x64E3430B

#align4
data_CE32688:
#data 0x02EC903C
#data 0x892B4211
#data 0x700184E6
#data 0x903080E6
#data 0x600C00EC
#data 0x89098802
#data 0xE202902B
#data 0xC71F0E24
#data 0x902CF308
#data 0xE038F2E6
#data 0xFE27F230

#align4
data_CE326B4:
#data 0x000960D3
#data 0xE516D31B
#data 0xE60380E7
#data 0x64E3430B
#data 0xE70A9020
#data 0xE6136573
#data 0xDD170ED5
#data 0x64E34D0B
#data 0x6573E709
#data 0x4D0BE613
#data 0xE70B64E3
#data 0xE6136573
#data 0x64E34D0B

#align4
data_CE326E8:
#data 0x430BD30A
#data 0x7F0C64E3
#data 0x6DF64F26
#data 0x6EF6000B
;==============================================

data_CE326F8:
#data 0x0130
#data 0x01F9
#data 0x03F802A4
#data 0x01410328
#data 0x041C0143
#data 0x00000352
#data fn_extern_8C05115A
#data fn_extern_8C03544C
#data fn_extern_8C034DEE
#data 0xC1D55555
#data 0x43092492
#data extern_8C050834
#data 0x41AB6DB6
#data fn_extern_8C034E8C
#data fn_extern_8C07A428

#align4
data_CE32730:
#data 0xC72CD32D
#data 0x6E432FE6
#data 0x2FC62FD6
#data 0xF3084F22
#data 0xF438E038
#data 0xF430F2E6
#data 0x8B00F245
#data 0xFE47

data_CE3274E:
#data 0xC727
#data 0x903FF308
#data 0xE038F2E6
#data 0xF230F1E6
#data 0x8F07F215
#data 0xC723EC02
#data 0x9035F208
#data 0xE038F1E6
#data 0xFE17F120

#align4
data_CE32770:
#data 0x0EC49031
#data 0x00EC9030
#data 0x8F088802
#data 0x902BED00
#data 0xD31CE715
#data 0x0ED46573
#data 0x430BE613
#data 0x64E3

data_CE3278E:
#data 0x9024
#data 0x9424E305
#data 0x90210EC4
#data 0x0E3434EC
#data 0x70FF8546
#data 0x70018146
#data 0x4015600D
#data 0xA0D28B01
#data 0x0009

data_CE327AE:
#data 0x60D3
#data 0x81460009
#data 0x03EC9014
#data 0x89342338
#data 0x600C844A
#data 0x893030C3
#data 0x600C844A
#data 0x8B158801
#data 0xE23A9009
#data 0x0E24A015
#data 0x01F5041C
#data 0x03F80141
#data 0x02A40328
#data 0x01A1019E
#data 0xC2CDB6DB
#data extern_8C26A5B8
#data 0x40092492
#data 0x41892492
#data fn_extern_8C07A428

#align4
data_CE327F8:
#data 0xE3399082
#data 0x0E34

data_CE327FE:
#data 0x9080
#data 0x0ED5D342
#data 0x0ED470F2
#data 0x0ED67026
#data 0x623284E2
#data 0x4000600C
#data 0x012D727C
#data 0x02157101
#data 0x7001844A
#data 0xE004804A
#data 0x8146

data_CE32826:
#data 0xE15C
#data 0x31ECD339
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
#data 0x64E3430B
#data 0xDD2B904E
#data 0xE038F3E6
#data 0xF325F2E6
#data 0xD3298B17
#data 0xE500E005
#data 0x430B80E6
#data 0xE05C64E3
#data 0xFE47F48D
#data 0xFE47E060
#data 0xFE47E068
#data 0xFE47E06C
#data 0xD3229038
#data 0xE038F3E6
#data 0x430BFE37
#data 0xA01C64E3
#data 0xE608

data_CE328A2:
#data 0x85EE
#data 0x81EE70FF
#data 0x2008600F
#data 0xD31A8B1A
#data 0xE500E004
#data 0x430B80E6
#data 0xF39D64E3
#data 0xF34DE06C
#data 0xC717FE37
#data 0x901DF308
#data 0xE038F2E6
#data 0xF230F1E6
#data 0x8B01F125
#data 0xE602A001

data_CE328D8:
#data 0xE611

data_CE328DA:
#data 0xE516
#data 0x64E34D0B
#data 0x0009A037

#align4
data_CE328E4:
#data 0x03EC900F
#data 0x891B2338
#data 0x00EC900C
#data 0x892E8801
#data 0x64E34F26
#data 0x6DF66CF6
#data 0x6EF6A16E
#data 0x01AC01A1
#data 0x0525041C
#data 0x00000141
#data extern_8C2896B0
#data fn_extern_8C034DEE
#data fn_extern_8C034E8C
#data fn_extern_8C035162
#data extern_8C0511B4
#data 0x42855555

#align4
data_CE32924:
#data 0x00EC909C
#data 0x89128801
#data 0x60439499
#data 0x70480009
#data 0x622D02ED
#data 0x8B042248
#data 0x01ED9092
#data 0x2148611D
#data 0x8905

data_CE32946:
#data 0x4F26
#data 0x6CF664E3
#data 0xA0D96DF6
#data 0x6EF6

data_CE32952:
#data 0x4F26
#data 0x6DF66CF6
#data 0x6EF6000B
;==============================================

f_code_CE3295C:
mov.w @(data_CE32A66,pc),r0 ; r0 set to 0x3F8
mov 0x02,r5 ; r5 set to 0x02
mov.l r14,@-r15
mov r4,r14
mov 0x05,r3 ; r3 set to 0x05
mov.l r13,@-r15
sts.l pr,@-r15
mov.b r5,@(r0,r14)
mov.w @(data_CE32A68,pc),r0 ; r0 set to 0x328
mov.b r3,@(r0,r14)
mov.w @(data_CE32A6A,pc),r0 ; r0 set to 0x143
mov.b @(r0,r14),r2
cmp/pz r2
bt l_code_CE329FC
mov.w @(data_CE32A64,pc),r0 ; r0 set to 0x352
mov 0x00,r4 ; r4 set to 0x00
mov.w r4,@(r0,r14)
mov r5,r0 ; r0 set to 0x02
nop
mov.w @(data_CE32A6C,pc),r5 ; r5 set to 0x2A4
mov.b r0,@(0x06,r14)
add r14,r5 ; r5 ??? bc r14 is ???
mov r4,r0 ; r0 set to 0x00
nop
mov.b r0,@(0x0A,r5)
mov 0x38,r3 ; r3 set to 0x38
mov.w r0,@(0x0C,r5)
mov 0x04,r5 ; r5 set to 0x04
mov.w @(data_CE32A6E,pc),r0 ; r0 set to 0x1A1
mov.b r3,@(r0,r14)
add 0x0B,r0 ; r0 set to 0x1AC
mov.w r4,@(r0,r14)
add 0xF2,r0 ; r0 set to 0x19E
mov.b r4,@(r0,r14)
add 0x26,r0 ; r0 set to 0x1C4
mov.l @(ptr_CE32A78_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0
mov.l r4,@(r0,r14)
mov.b @(0x02,r14),r0
mov.l @r3,r2
extu.b r0,r0 ; r0 set to 0xC4
shll r0 ; r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2)
mov.l @(ptr_CE32A7C_to_fn_extern_8C042008,pc),r2 ; r2 set to 0x8C042008
jsr @r2
mov r14,r4 ; r4 ??? bc r14 is ???
mov.l @(ptr_CE32A80_to_fn_extern_8C03544C,pc),r3 ; r3 set to 0x8C03544C
mov 0x04,r5 ; r5 set to 0x04
mov 0x01,r7 ; r7 set to 0x01
mov 0x07,r6 ; r6 set to 0x07
jsr @r3
mov r14,r4
mov 0x0A,r7 ; r7 set to 0x0A
mov.l @(ptr_CE32A84_to_fn_extern_8C07A428,pc),r13 ; r13 set to 0x8C07A428
mov r7,r5 ; r5 set to 0x0A
mov 0x13,r6 ; r6 set to 0x13
jsr @r13
mov r14,r4
mov 0x09,r7 ; r7 set to 0x09
mov r7,r5 ; r5 set to 0x09
mov 0x13,r6 ; r6 set to 0x13
jsr @r13
mov r14,r4
mov 0x0B,r7 ; r7 set to 0x0B
mov r7,r5 ; r5 set to 0x0B
mov 0x13,r6 ; r6 set to 0x13
jsr @r13
mov r14,r4
lds.l @r15+,pr
mov.b @(0x07,r14),r0
mov 0x16,r5 ; r5 set to 0x16
mov.l @(ptr_CE32A88_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
mov r14,r4
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
mov r0,r6 ; r6 set to 0x188
add 0x03,r6 ; r6 set to 0x18B
jmp @r3
mov.l @r15+,r14

l_code_CE329FC:
lds.l @r15+,pr
mov.l @(ptr_CE32A8C_to_fn_extern_8C034DEE,pc),r2 ; r2 set to 0x8C034DEE
mov r14,r4
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

f_code_CE32A08:
mov.l r14,@-r15
mov r4,r14
mov.w @(data_CE32A70,pc),r0 ; r0 set to 0x3F9
mov 0x00,r4 ; r4 set to 0x00
sts.l pr,@-r15
mov.b r4,@(r0,r14)
add 0xFF,r0 ; r0 set to 0x3F8
mov.b r4,@(r0,r14)
mov.w @(data_CE32A72,pc),r0 ; r0 set to 0x327
mov.b r4,@(r0,r14)
add 0x01,r0 ; r0 set to 0x328
mov.b r4,@(r0,r14)
mov.w @(data_CE32A74,pc),r0 ; r0 set to 0x41C
fmov.s @(r0,r14),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fcmp/gt fr2,fr3
bf l_code_CE32A94
mov.b @(0x06,r14),r0
fldi0 fr4
add 0x01,r0 ; r0 set to 0x39
mov.l @(ptr_CE32A90_to_extern_8C0511B4,pc),r3 ; r3 set to 0x8C0511B4
mov.b r0,@(0x06,r14)
mov 0x5C,r0 ; r0 set to 0x5C
fmov.s fr4,@(r0,r14)
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14)
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14)
mov 0x6C,r0 ; r0 set to 0x6C
fmov.s fr4,@(r0,r14)
mov.w @(data_CE32A74,pc),r0 ; r0 set to 0x41C
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14)
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???
lds.l @r15+,pr
mov.l @(ptr_CE32A88_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov r14,r4
mov 0x08,r6 ; r6 set to 0x08
mov 0x16,r5 ; r5 set to 0x16
jmp @r2
mov.l @r15+,r14
#data 0x03000141

data_CE32A64:
#data 0x0352

data_CE32A66:
#data 0x03F8

data_CE32A68:
#data 0x0328

data_CE32A6A:
#data 0x0143

data_CE32A6C:
#data 0x02A4

data_CE32A6E:
#data 0x01A1

data_CE32A70:
#data 0x03F9

data_CE32A72:
#data 0x0327

data_CE32A74:
#data 0x041C
#data 0x0000

#align4
ptr_CE32A78_to_extern_8C2896B0:
#data extern_8C2896B0

ptr_CE32A7C_to_fn_extern_8C042008:
#data fn_extern_8C042008

ptr_CE32A80_to_fn_extern_8C03544C:
#data fn_extern_8C03544C

ptr_CE32A84_to_fn_extern_8C07A428:
#data fn_extern_8C07A428

ptr_CE32A88_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C

ptr_CE32A8C_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE

ptr_CE32A90_to_extern_8C0511B4:
#data extern_8C0511B4


l_code_CE32A94:
mov 0x5C,r1 ; r1 set to 0x5C
mov.l @(ptr_CE32BC8_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
add r14,r1 ; r1 ??? bc r14 is ???
mov r14,r4
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
lds.l @r15+,pr
jmp @r3
mov.l @r15+,r14

f_code_CE32AD6:
mov.w @(data_CE32BC0,pc),r0 ; r0 set to 0x352
mov 0x00,r3 ; r3 set to 0x00
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.w r3,@(r0,r14)
mov 0x48,r0 ; r0 set to 0x48
mov.l r3,@(r0,r14)
mov r3,r2 ; r2 set to 0x00
mov.l @(ptr_CE32BC8_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r14,r4
exts.b r0,r0 ; r0 ??
cmp/pz r0
bt l_code_CE32AFE
lds.l @r15+,pr
mov.l @(ptr_CE32BCC_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648
mov r14,r4
jmp @r3
mov.l @r15+,r14

l_code_CE32AFE:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

#align4
data_CE32B04:
#data 0x6E432FE6
#data 0x85EF4F22
#data 0x3033E304
#data 0x90568953
#data 0x05EDD42E
#data 0xF28DE023
#data 0x4519655D
#data 0x0E544509
#data 0x02EC655D
#data 0x0E24E021
#data 0x45086253
#data 0x35284500
#data 0xE0104508
#data 0xF346345C
#data 0x893CF324
#data 0x700184E6
#data 0xE01E80E6
#data 0x85EF81EE
#data 0x81EF7001
#data 0xF348E05C
#data 0xE004FE37
#data 0xE068F346
#data 0xE008FE37
#data 0xE060F346
#data 0xE00CFE37
#data 0xE06CF346
#data 0xE018FE37
#data 0xF33DF346
#data 0x005AF38D
#data 0xE01480E7
#data 0xF345F446
#data 0xA0048901
#data 0xF34C

data_CE32B86:
#data 0x901D
#data 0x425A02ED
#data 0xF32D

data_CE32B8E:
#data 0xF33D
#data 0xD3109018
#data 0x015AE500
#data 0x430B0E15
#data 0xD20D64E3
#data 0x420BE501
#data 0xE04864E3
#data 0xE30064E3
#data 0xE6010E36
#data 0xD3094F26
#data 0x432BE516
#data 0x6EF6

data_CE32BBA:
#data 0x4F26
#data 0x6EF6000B
;==============================================

data_CE32BC0:
#data 0x0352
#data 0x0340
#data 0x00000130

#align4
ptr_CE32BC8_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE

ptr_CE32BCC_to_fn_extern_8C051648:
#data fn_extern_8C051648

ptr_CE32BD0_to_data_CE345E4:
#data data_CE345E4
#data fn_extern_8C0CE62C
#data fn_extern_8C034E8C

#align4
data_CE32BDC:
#data 0x4F222FE6
#data 0xD35B7FFC
#data 0x2F326E43
#data 0x85EFE304
#data 0x895E3033
#data 0x64E390A9
#data 0x05EED257
#data 0x420B7534
#data 0x600C7434
#data 0xE123D455
#data 0x31EC4009
#data 0x21004001
#data 0x03ECE023
#data 0x633C60F2
#data 0xF3364308
#data 0xF33DE023
#data 0x0E24025A
#data 0x84E605EC
#data 0x655D655C
#data 0x63537001
#data 0x450880E6
#data 0xE01E4500
#data 0x353881EE
#data 0x450885EF
#data 0x7001345C
#data 0xE05C81EF
#data 0xFE37F348
#data 0xF346E004
#data 0xFE37E068
#data 0xF346E008
#data 0xFE37E060
#data 0xF346E00C
#data 0xFE37E06C
#data 0xF346E018
#data 0xF38DF33D
#data 0x80E7005A
#data 0xF446E014
#data 0x8901F345
#data 0xF34CA004

#align4
data_CE32C78:
#data 0x03ED9066
#data 0xF32D435A

#align4
data_CE32C80:
#data 0x9061F33D
#data 0xE500D335
#data 0x0E15015A
#data 0x64E3430B
#data 0xE501D232
#data 0x64E3420B
#data 0x64E3E048
#data 0xE516E300
#data 0xE6010E36
#data 0x4F267F04
#data 0x432BD32D
#data 0x6EF6

data_CE32CAE:
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6
;==============================================

f_code_CE32CB6:
mov r4,r3
mov.l @(ptr_CE32D64_to_ptr_CE34A4C_to_f_code_CE32CC8,pc),r1 ; r1 set to 0xCE34A4C
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

f_code_CE32CC8:
mov.l r14,@-r15
mov r4,r14
mov 0x3E,r3 ; r3 set to 0x3E
mov.l r13,@-r15
mov 0x00,r13 ; r13 set to 0x00
sts.l pr,@-r15
mov.b @(0x06,r14),r0
mov 0x05,r5 ; r5 set to 0x05
add 0x01,r0
mov.b r0,@(0x06,r14)
mov.w @(data_CE32D4A,pc),r0 ; r0 set to 0x1A1
mov.b r3,@(r0,r14)
add 0x0B,r0 ; r0 set to 0x1AC
mov.w r13,@(r0,r14)
add 0xF2,r0 ; r0 set to 0x19E
mov.b r13,@(r0,r14)
add 0x26,r0 ; r0 set to 0x1C4
mov.l @(ptr_CE32D68_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0
mov.l r13,@(r0,r14)
mov.b @(0x02,r14),r0
mov.l @r3,r2
extu.b r0,r0 ; r0 set to 0xC4
shll r0 ; r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2)
mov.l @(ptr_CE32D6C_to_fn_extern_8C056DE4,pc),r2 ; r2 set to 0x8C056DE4
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
mov.w @(data_CE32D4C,pc),r0 ; r0 set to 0x1F9
mov.l @(ptr_CE32D70_to_fn_extern_8C05218A,pc),r3 ; r3 set to 0x8C05218A
mov.b r13,@(r0,r14)
mov.w @(data_CE32D4E,pc),r0 ; r0 set to 0x41C
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14)
jsr @r3
mov r14,r4
mov.l @(ptr_CE32D74_to_fn_extern_8C035162,pc),r2 ; r2 set to 0x8C035162
mov r13,r5 ; r5 set to 0x00
jsr @r2
mov r14,r4
mov.l @(ptr_CE32D78_to_fn_extern_8C05115A,pc),r3 ; r3 set to 0x8C05115A
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(ptr_CE32D60_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov 0x09,r6 ; r6 set to 0x09
mov 0x16,r5 ; r5 set to 0x16
mov r14,r4
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
jmp @r2
mov.l @r15+,r14
#data 0x020C
#data 0x0130

data_CE32D4A:
#data 0x01A1

data_CE32D4C:
#data 0x01F9

data_CE32D4E:
#data 0x041C

#align4
ptr_CE32D50_to_data_CE347A4:
#data data_CE347A4
#data extern_8C03362C

#align4
ptr_CE32D58_to_data_CE345E4:
#data data_CE345E4
#data fn_extern_8C0CE62C

#align4
ptr_CE32D60_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C

ptr_CE32D64_to_ptr_CE34A4C_to_f_code_CE32CC8:
#data ptr_CE34A4C_to_f_code_CE32CC8

ptr_CE32D68_to_extern_8C2896B0:
#data extern_8C2896B0

ptr_CE32D6C_to_fn_extern_8C056DE4:
#data fn_extern_8C056DE4

ptr_CE32D70_to_fn_extern_8C05218A:
#data fn_extern_8C05218A

ptr_CE32D74_to_fn_extern_8C035162:
#data fn_extern_8C035162

ptr_CE32D78_to_fn_extern_8C05115A:
#data fn_extern_8C05115A

data_CE32D7C:
#data 0x2FD62FE6
#data 0x7FF44F22
#data 0x6E43905E
#data 0x0E34E302
#data 0x905AE205
#data 0x90590E24
#data 0x880100EC
#data 0xED008F12
#data 0x00EC9054
#data 0x8B0D8801
#data 0x65F39050
#data 0xE601D32B
#data 0xC7280ED4
#data 0xC728F308
#data 0xF308FF3A
#data 0xFF37E004
#data 0x64E3430B

#align4
data_CE32DC0:
#data 0x00EC9042
#data 0x8B0C8802
#data 0xE51684E6
#data 0xE613D323
#data 0x80E67001
#data 0x9038E700
#data 0x430B0ED4
#data 0x903364E3
#data 0x0ED4

data_CE32DE2:
#data 0xD31F
#data 0x64E3430B
#data 0x4F267F0C
#data 0x000B6DF6
#data 0x6EF6
;==============================================

f_code_CE32DF2:
mov.w @(data_CE32E44,pc),r0 ; r0 set to 0x3F8
mov 0x02,r3 ; r3 set to 0x02
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b r3,@(r0,r14)
mov 0x05,r2 ; r2 set to 0x05
mov.w @(data_CE32E46,pc),r0 ; r0 set to 0x328
mov.l @(ptr_CE32E60_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
mov.b r2,@(r0,r14)
jsr @r3
mov r14,r4
exts.b r0,r0 ; r0 ??
cmp/pz r0
bt l_code_CE32E2C
mov.w @(data_CE32E4C,pc),r0 ; r0 set to 0x3F9
mov 0x00,r4 ; r4 set to 0x00
mov.l @(ptr_CE32E64_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648
mov.b r4,@(r0,r14)
add 0xFF,r0 ; r0 set to 0x3F8
mov.b r4,@(r0,r14)
mov.w @(data_CE32E4E,pc),r0 ; r0 set to 0x327
mov.b r4,@(r0,r14)
add 0x01,r0 ; r0 set to 0x328
mov.b r4,@(r0,r14)
mov r14,r4 ; r4 ??? bc r14 is ???
lds.l @r15+,pr
jmp @r3
mov.l @r15+,r14

l_code_CE32E2C:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

f_code_CE32E32:
mov r4,r3
mov.l @(ptr_CE32E68_to_ptr_CE34A58_to_data_CE32E6C,pc),r1 ; r1 set to 0xCE34A58
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

data_CE32E44:
#data 0x03F8

data_CE32E46:
#data 0x0328
#data 0x01A30141

data_CE32E4C:
#data 0x03F9

data_CE32E4E:
#data 0x0327
#data 0x41555555
#data 0x433C9249
#data extern_8C050834
#data fn_extern_8C07A428

#align4
ptr_CE32E60_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE

ptr_CE32E64_to_fn_extern_8C051648:
#data fn_extern_8C051648

ptr_CE32E68_to_ptr_CE34A58_to_data_CE32E6C:
#data ptr_CE34A58_to_data_CE32E6C

data_CE32E6C:
#data 0x6E432FE6
#data 0x2FD6E341
#data 0x4F22ED00
#data 0x65D384E6
#data 0x80E67001
#data 0x0E34908D
#data 0x0ED5700B
#data 0x0ED470F2
#data 0xD3477026
#data 0x84E20ED6
#data 0x600C6232
#data 0x727C4000
#data 0x7101012D
#data 0xD2430215
#data 0x64E3420B
#data 0xF48DE05C
#data 0xE060FE47
#data 0xE068FE47
#data 0xE06CFE47
#data 0xFE47D33E
#data 0x64E3430B
#data 0x0ED4E023
#data 0x000960D3
#data 0x81EF946A
#data 0x34ECE001
#data 0x9066804E
#data 0x600C00EC
#data 0x89088802
#data 0xD3369061
#data 0x905F0ED4
#data 0xE038F3E6
#data 0x430BFE37
#data 0x64E3

data_CE32EEE:
#data 0xD233
#data 0xE60DE501
#data 0x64E3420B
#data 0xD3314F26
#data 0xE516E60E
#data 0x6DF664E3
#data 0x6EF6432B

#align4
data_CE32F08:
#data 0x4F222FE6
#data 0x904A7FF4
#data 0xE3026E43
#data 0xE2050E34
#data 0x0E249046
#data 0x00EC9045
#data 0x8B0E8801
#data 0xE2009041
#data 0x65F3D328
#data 0xC7250E24
#data 0xC725F308
#data 0xFF3AE601
#data 0xE004F308
#data 0x430BFF37
#data 0x64E3

data_CE32F42:
#data 0x9032
#data 0x880200EC
#data 0x84E68B0F
#data 0xE710E300
#data 0x65737001
#data 0xE61380E6
#data 0x0E349027
#data 0x430BD31C
#data 0x941D64E3
#data 0x34ECE001
#data 0x804E

data_CE32F6A:
#data 0xD31A
#data 0x64E3430B
#data 0x4F267F0C
#data 0x6EF6000B
;==============================================

f_code_CE32F78:
mov.w @(data_CE32FA6,pc),r0 ; r0 set to 0x3F8
mov 0x02,r3 ; r3 set to 0x02
mov.w @(data_CE32FA0,pc),r5 ; r5 set to 0x2A4
mov 0x05,r2 ; r2 set to 0x05
mov.b r3,@(r0,r4)
mov.w @(data_CE32FA8,pc),r0 ; r0 set to 0x328
add r4,r5 ; r5 ??? bc r4 is ???
mov.b r2,@(r0,r4)
mov.b @(0x0E,r5),r0
tst r0,r0
bf l_code_CE33000
mov.w @(data_CE32FA2,pc),r0 ; r0 set to 0x1F9
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
extu.b r0,r0
cmp/eq 0x02,r0
bt l_code_CE32FD8
mov 0x04,r0 ; r0 set to 0x04
bra l_code_CE33000
mov.b r0,@(0x06,r4)
#data 0x01A1

data_CE32FA0:
#data 0x02A4

data_CE32FA2:
#data 0x01F9
#data 0x041C

data_CE32FA6:
#data 0x03F8

data_CE32FA8:
#data 0x0328
#data 0x0141
#data extern_8C2896B0
#data fn_extern_8C035162
#data fn_extern_8C05218A
#data fn_extern_8C05115A
#data fn_extern_8C02FEC4
#data fn_extern_8C034E8C
#data 0xC2200000
#data 0x43092492
#data extern_8C050834
#data fn_extern_8C07A428
#data fn_extern_8C034DEE


l_code_CE32FD8:
mov.b @(0x06,r4),r0
mov 0x0F,r6 ; r6 set to 0x0F
fldi0 fr4
add 0x01,r0
mov.l @(ptr_CE33110_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
mov.b r0,@(0x06,r4)
mov 0x5C,r0 ; r0 set to 0x5C
fmov.s fr4,@(r0,r4)
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r4)
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r4)
mov 0x6C,r0 ; r0 set to 0x6C
fmov.s fr4,@(r0,r4)
mova @(data_CE3310C,pc),r0  ; r0 set to 0xCE3310C
fmov.s @r0,fr3 ; r3 ??
mov 0x6C,r0 ; r0 set to 0x6C
fmov.s fr3,@(r0,r4)
jmp @r3
mov 0x16,r5

l_code_CE33000:
mov.w @(data_CE330FE,pc),r0 ; r0 set to 0x141
mov.b @(r0,r4),r2
tst r2,r2
bf l_code_CE3300E
mov.l @(ptr_CE33114_to_fn_extern_8C034DEE,pc),r2 ; r2 set to 0x8C034DEE
jmp @r2
nop

l_code_CE3300E:
rts
nop
;==============================================

data_CE33012:
#data 0x2FE6
#data 0x90736E43
#data 0x4F22E400
#data 0x70FF0E44
#data 0x906E0E44
#data 0x70010E44
#data 0x906B0E44
#data 0xE038F3E6
#data 0xF325F2E6
#data 0x84E68B19
#data 0x7001F48D
#data 0x80E6D336
#data 0x0E449061
#data 0xFE47E05C
#data 0xFE47E060
#data 0xFE47E068
#data 0xFE47E06C
#data 0xF3E69056
#data 0xFE37E038
#data 0x64E3430B
#data 0xE516D22B
#data 0x420BE610
#data 0x64E3

data_CE3306A:
#data 0xD32A
#data 0x64E3430B
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
#data 0x000B4F26
#data 0x6EF6
;==============================================

f_code_CE330AE:
mov.l r14,@-r15
mov r4,r14
mov.w @(data_CE33100,pc),r0 ; r0 set to 0x3F9
mov 0x00,r4 ; r4 set to 0x00
sts.l pr,@-r15
mov.b r4,@(r0,r14)
add 0xFF,r0 ; r0 set to 0x3F8
mov.b r4,@(r0,r14)
mov.w @(data_CE33102,pc),r0 ; r0 set to 0x327
mov.b r4,@(r0,r14)
add 0x01,r0 ; r0 set to 0x328
mov.b r4,@(r0,r14)
mov.w @(data_CE33108,pc),r0 ; r0 set to 0x143
mov.b @(r0,r14),r3
cmp/pz r3
bt l_code_CE330E2
mov.l @(ptr_CE3311C_to_fn_extern_8C02FEC4,pc),r2 ; r2 set to 0x8C02FEC4
mov 0x00,r5 ; r5 set to 0x00
mov 0x0D,r6 ; r6 set to 0x0D
jsr @r2
mov r14,r4 ; r4 ??? bc r14 is ???
lds.l @r15+,pr
mov.l @(ptr_CE33120_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648
mov r14,r4
jmp @r3
mov.l @r15+,r14

l_code_CE330E2:
lds.l @r15+,pr
mov.l @(ptr_CE33114_to_fn_extern_8C034DEE,pc),r2 ; r2 set to 0x8C034DEE
mov r14,r4
jmp @r2
mov.l @r15+,r14

f_code_CE330EC:
mov r4,r3
mov.l @(ptr_CE33124_to_ptr_CE34A6C_to_data_CE33128,pc),r1 ; r1 set to 0xCE34A6C
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

data_CE330FE:
#data 0x0141

data_CE33100:
#data 0x03F9

data_CE33102:
#data 0x0327
#data 0x01F9041C

data_CE33108:
#data 0x0143
#data 0x0000

#align4
data_CE3310C:
#data 0xBF4DB6DB

#align4
ptr_CE33110_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C

ptr_CE33114_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE
#data extern_8C0511B4

#align4
ptr_CE3311C_to_fn_extern_8C02FEC4:
#data fn_extern_8C02FEC4

ptr_CE33120_to_fn_extern_8C051648:
#data fn_extern_8C051648

ptr_CE33124_to_ptr_CE34A6C_to_data_CE33128:
#data ptr_CE34A6C_to_data_CE33128

data_CE33128:
#data 0x6E432FE6
#data 0x2FD6E341
#data 0xF48DED00
#data 0x84E64F22
#data 0x80E67001
#data 0x0E34908B
#data 0x0ED5700B
#data 0x0ED470F2
#data 0xD3487026
#data 0x84E20ED6
#data 0x600C6232
#data 0x727C4000
#data 0x7101012D
#data 0xE05C0215
#data 0xE060FE47
#data 0xE068FE47
#data 0xE06CFE47
#data 0x9073FE47
#data 0x0ED4D23F
#data 0xF3E69071
#data 0xFE37E038
#data 0x64E3420B
#data 0x65D3D33C
#data 0x64E3430B
#data 0x00EC9068
#data 0x8806600C
#data 0x64E38F06
#data 0xE3109064
#data 0x0E249261
#data 0x0E347001

#align4
data_CE331A0:
#data 0x430BD335
#data 0xE0230009
#data 0xE0210ED4
#data 0x60D30ED4
#data 0xD3320009
#data 0x81EE64E3
#data 0x81EFE516
#data 0x4F26E60A
#data 0x432B6DF6
#data 0x6EF6

data_CE331C6:
#data 0x2FE6
#data 0x7FF44F22
#data 0x6E439049
#data 0x0E34E302
#data 0x9045E205
#data 0x90440E24
#data 0x880100EC
#data 0x90408B16
#data 0xD328E200
#data 0x0E2465F3
#data 0xF308C724
#data 0xE601C724
#data 0xF308FF3A
#data 0xFF37E004
#data 0x64E3430B
#data 0xE70ED222
#data 0xE6136573
#data 0x64E3420B
#data 0x81EE902C

#align4
data_CE33210:
#data 0x03EC902B
#data 0x8d034311
#data 0x84E664E3
#data 0x80E67001

#align4
data_CE33220:
#data 0x430BD31B
#data 0x7F0C0009
#data 0x000B4F26
#data 0x6EF6
;==============================================

data_CE3322E:
#data 0x9018
#data 0xE205E302
#data 0x90150434
#data 0x854E0424
#data 0x814E70FF
#data 0x600F7001
#data 0x8B042008
#data 0x70018446
#data 0xE0788046
#data 0x814E

data_CE33252:
#data 0x000B
#data 0x01A10009
#data 0x041C01F9
#data 0x00FF0255
#data 0x03F803F0
#data 0x01410328
#data 0x014300B4
#data extern_8C2896B0
#data fn_extern_8C05218A
#data fn_extern_8C035162
#data fn_extern_8C05115A
#data fn_extern_8C034E8C
#data 0xC1D55555
#data 0x43892492
#data extern_8C050834
#data fn_extern_8C07A428
#data fn_extern_8C034DEE


f_code_CE33294:
mov.w @(data_CE333B2,pc),r0 ; r0 set to 0x3F8
mov 0x02,r3 ; r3 set to 0x02
mov.l r14,@-r15
mov r4,r14
mov 0x05,r2 ; r2 set to 0x05
sts.l pr,@-r15
mov.b r3,@(r0,r14)
mov 0x01,r5 ; r5 set to 0x01
mov.w @(data_CE333B4,pc),r0 ; r0 set to 0x328
mov 0x0D,r6 ; r6 set to 0x0D
mov.l @(ptr_CE333C0_to_fn_extern_8C02FEC4,pc),r3 ; r3 set to 0x8C02FEC4
mov.b r2,@(r0,r14)
mov.b @(0x06,r14),r0
add 0x01,r0 ; r0 set to 0x329
mov.b r0,@(0x06,r14)
jsr @r3
mov r14,r4
mov.w @(data_CE333B6,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???
tst r3,r3
bt l_code_CE332C8
mov.l @(ptr_CE333C8_to_extern_8C26A5A0,pc),r3 ; r3 set to 0x8C26A5A0
mova @(data_CE333C4,pc),r0  ; r0 set to 0xCE333C4
fmov.s @r3,fr3 ; r3 ??
bra l_code_CE332D0
fmov.s @r0,fr2

l_code_CE332C8:
mov.l @(ptr_CE333D0_to_extern_8C26A5A4,pc),r2 ; r2 set to 0x8C26A5A4
mova @(data_CE333CC,pc),r0  ; r0 init to 0xCE333CC
fmov.s @r0,fr2 ; r2 ??
fmov.s @r2,fr3

l_code_CE332D0:
fadd fr2,fr3
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
mov 0x0F,r7 ; r7 set to 0x0F, r7 set to 0x0F
mov.l @(ptr_CE333D4_to_fn_extern_8C07A428,pc),r3 ; r3 set to 0x8C07A428, r3 set to 0x8C07A428
mov r7,r5 ; r5 set to 0x0F, r5 set to 0x0F
mov 0x13,r6 ; r6 set to 0x13, r6 set to 0x13
fmov.s fr3,@(r0,r14)
mov.w @(data_CE333B8,pc),r0 ; r0 set to 0xB4, r0 set to 0xB4
mov.w r0,@(0x1C,r14)
jsr @r3
mov r14,r4
mov.l @(ptr_CE333D8_to_fn_extern_8C03319E,pc),r2 ; r2 set to 0x8C03319E, r2 set to 0x8C03319E
jsr @r2
nop
mov.b r0,@(0x07,r14)
mov 0x05,r5 ; r5 set to 0x05, r5 set to 0x05
mov.b @(0x07,r14),r0
mov.l @(ptr_CE333DC_to_fn_extern_8C042008,pc),r3 ; r3 set to 0x8C042008, r3 set to 0x8C042008
and 0x01,r0
mov.b r0,@(0x07,r14)
jsr @r3
mov r14,r4
mov.l @(ptr_CE333E0_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C, r2 set to 0x8C034E8C
mov 0x16,r5 ; r5 set to 0x16, r5 set to 0x16
mov 0x0B,r6 ; r6 set to 0x0B, r6 set to 0x0B
jsr @r2
mov r14,r4
lds.l @r15+,pr
mov.l @(ptr_CE333E4_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEE
mov r14,r4
jmp @r3
mov.l @r15+,r14

f_code_CE33310:
mov.w @(data_CE333B2,pc),r0 ; r0 set to 0x3F8
mov 0x02,r3 ; r3 set to 0x02
mov.l r14,@-r15
mov r4,r14
mov.l @(ptr_CE333E8_to_extern_8C26A8E4,pc),r1 ; r1 set to 0x8C26A8E4
mov 0x05,r2 ; r2 set to 0x05
mov.l r13,@-r15
mov.l r12,@-r15
sts.l pr,@-r15
mov.b r3,@(r0,r14)
mov.w @(data_CE333B4,pc),r0 ; r0 set to 0x328
mov.b r2,@(r0,r14)
mov.l @r1,r3 ; r3 ??
tst r3,r3
bt l_code_CE33332
bra l_code_CE33440
nop

l_code_CE33332:
mov.w @(data_CE333BA,pc),r0 ; r0 set to 0x525
mov.l @(ptr_CE333D4_to_fn_extern_8C07A428,pc),r12 ; r12 set to 0x8C07A428
mov.b @(r0,r14),r3
tst r3,r3
bt/s l_code_CE33392
mov 0x10,r13 ; r13 set to 0x10
mov.w @(0x1C,r14),r0
cmp/eq 0x1E,r0
bt l_code_CE33392
mov.l @(ptr_CE333D8_to_fn_extern_8C03319E,pc),r2 ; r2 set to 0x8C03319E
jsr @r2
nop
mov 0x01,r3 ; r3 set to 0x01
mov r0,r4 ; r4 set to 0x525
and r3,r4 ; r4 ??
extu.b r4,r4
tst r4,r4
bt/s l_code_CE33368
mov 0x13,r6 ; r6 set to 0x13
mov.b @(0x06,r14),r0
add 0x01,r0 ; r0 set to 0x526
mov.b r0,@(0x06,r14)
mov r13,r0 ; r0 set to 0x10
nop
mov.w r0,@(0x1C,r14)
bra l_code_CE3337C
mov 0x0C,r7

l_code_CE33368:
mov.b @(0x06,r14),r0
add 0x01,r0
mov.b r0,@(0x06,r14)
mov.b @(0x07,r14),r0
xor r3,r0
mov.b r0,@(0x07,r14)
mov r13,r0
nop
mov 0x0D,r7 ; r7 set to 0x0D
mov.w r0,@(0x1C,r14)

l_code_CE3337C:
mov r7,r5 ; r5 set to 0x0D
jsr @r12
mov r14,r4
mov.l @(ptr_CE333EC_to_extern_8C289732,pc),r2 ; r2 set to 0x8C289732, r2 set to 0x8C289732
mov 0x18,r1 ; r1 set to 0x18, r1 set to 0x18
mov.w @r2,r3
cmp/ge r1,r3
bf l_code_CE33440
mov 0x01,r0 ; r0 set to 0x01, r0 set to 0x01
bra l_code_CE33440
mov.b r0,@(0x07,r14)

l_code_CE33392:
mov.w @(data_CE333BC,pc),r0 ; r0 set to 0x348
mov.w @(data_CE333BE,pc),r2 ; r2 set to 0x200
mov.w @(r0,r14),r3
extu.w r3,r3
tst r2,r3
bt l_code_CE333F0
mov.b @(0x06,r14),r0
add 0x01,r0 ; r0 set to 0x349
mov.b r0,@(0x06,r14)
mov r13,r0 ; r0 ??? bc r13 is ???
nop
mov 0x13,r6 ; r6 set to 0x13
mov.w r0,@(0x1C,r14)
mov 0x0C,r7 ; r7 set to 0x0C
bra l_code_CE33410
mov r7,r5

data_CE333B2:
#data 0x03F8

data_CE333B4:
#data 0x0328

data_CE333B6:
#data 0x0130

data_CE333B8:
#data 0x00B4

data_CE333BA:
#data 0x0525

data_CE333BC:
#data 0x0348

data_CE333BE:
#data 0x0200

#align4
ptr_CE333C0_to_fn_extern_8C02FEC4:
#data fn_extern_8C02FEC4

data_CE333C4:
#data 0x42A00000

#align4
ptr_CE333C8_to_extern_8C26A5A0:
#data extern_8C26A5A0

data_CE333CC:
#data 0xC2A00000

#align4
ptr_CE333D0_to_extern_8C26A5A4:
#data extern_8C26A5A4

ptr_CE333D4_to_fn_extern_8C07A428:
#data fn_extern_8C07A428

ptr_CE333D8_to_fn_extern_8C03319E:
#data fn_extern_8C03319E

ptr_CE333DC_to_fn_extern_8C042008:
#data fn_extern_8C042008

ptr_CE333E0_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C

ptr_CE333E4_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE

ptr_CE333E8_to_extern_8C26A8E4:
#data extern_8C26A8E4

ptr_CE333EC_to_extern_8C289732:
#data extern_8C289732


l_code_CE333F0:
mov.w @(r0,r14),r0
extu.w r0,r0
tst 0x40,r0
bt l_code_CE33418
mov.b @(0x06,r14),r0
add 0x01,r0
mov.b r0,@(0x06,r14)
mov.b @(0x07,r14),r0
xor 0x01,r0
mov.b r0,@(0x07,r14)
mov r13,r0
nop
mov 0x13,r6 ; r6 set to 0x13
mov.w r0,@(0x1C,r14)
mov 0x0D,r5 ; r5 set to 0x0D
mov 0x0D,r7 ; r7 set to 0x0D

l_code_CE33410:
jsr @r12
mov r14,r4
bra l_code_CE33440
nop

l_code_CE33418:
mov.w @(0x1C,r14),r0
add 0xFF,r0
mov.w r0,@(0x1C,r14)
add 0x01,r0
exts.w r0,r0
tst r0,r0
bf l_code_CE33440
mov 0x0C,r0 ; r0 set to 0x0C
mov.l @(ptr_CE334E8_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
mov.b r0,@(0x06,r14)
mov 0x0A,r0 ; r0 set to 0x0A
mov 0x0D,r6 ; r6 set to 0x0D
mov.w r0,@(0x1C,r14)
lds.l @r15+,pr
mov r14,r4
mov 0x16,r5 ; r5 set to 0x16
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

l_code_CE33440:
lds.l @r15+,pr
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;==============================================

data_CE3344A:
#data 0x9049
#data 0xE205E302
#data 0x90460434
#data 0x854E0424
#data 0x814E70FF
#data 0x600F7001
#data 0x8B042008
#data 0x70018446
#data 0xE00A8046
#data 0x814E

data_CE3346E:
#data 0xD31F
#data 0x0009432B

#align4
data_CE33474:
#data 0xE3029034
#data 0x0434E205
#data 0x04249031
#data 0x70FF854E
#data 0x7001814E
#data 0x2008600F
#data 0x84468B04
#data 0x80467001
#data 0x814EE00A

#align4
data_CE33498:
#data 0x432BD314
#data 0x0009


f_code_CE3349E:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xF0,r15
mov.w @(data_CE334E4,pc),r0 ; r0 set to 0x20C
mov r4,r14
mov 0x02,r2 ; r2 set to 0x02
mov.l @(r0,r14),r3
mov.w @(data_CE334E0,pc),r0 ; r0 set to 0x3F8
mov.l r3,@r15
mov 0x05,r3 ; r3 set to 0x05
mov.b r2,@(r0,r14)
mov.w @(data_CE334E2,pc),r0 ; r0 set to 0x328
mov.b r3,@(r0,r14)
mov.w @(0x1C,r14),r0
cmp/eq 0x0A,r0
bf l_code_CE33566
mov.b @(0x07,r14),r0
tst r0,r0
bt l_code_CE33550
mov 0x23,r0 ; r0 set to 0x23
mov 0x01,r3 ; r3 set to 0x01
mov.b r3,@(r0,r14)
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
add 0x01,r3
mov.b r3,@(r0,r14)
mov.w @(data_CE334E6,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r2 ; r2 ??? bc r14 is ???
tst r2,r2
bt l_code_CE334F4
mova @(data_CE334F0,pc),r0  ; r0 set to 0xCE334F0
bra l_code_CE334F8
fmov.s @r0,fr3

data_CE334E0:
#data 0x03F8

data_CE334E2:
#data 0x0328

data_CE334E4:
#data 0x020C

data_CE334E6:
#data 0x0130

#align4
ptr_CE334E8_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C
#data fn_extern_8C034DEE

#align4
data_CE334F0:
#data 0x43C80000


l_code_CE334F4:
mova @(data_CE33610,pc),r0  ; r0 init to 0xCE33610
fmov.s @r0,fr3

l_code_CE334F8:
mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
mov.w @(data_CE33608,pc),r7 ; r7 set to 0xC9, r7 set to 0xC9
fmov.s @(r0,r15),fr2
mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
mov r15,r5
mov.l @(ptr_CE33618_to_extern_8C10235C,pc),r3 ; r3 set to 0x8C10235C, r3 set to 0x8C10235C
fadd fr3,fr2
add 0x04,r5
mov 0x01,r6 ; r6 set to 0x01, r6 set to 0x01
fmov.s fr2,@(r0,r15)
mova @(data_CE33614,pc),r0  ; r0 set to 0xCE33614, r0 set to 0xCE33614
fmov.s @r0,fr3 ; r3 ??, r3 ??
mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
fmov.s fr3,@(r0,r15)
mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
fmov.s @(r0,r15),fr3
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r14),fr2
mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
fadd fr3,fr2
fmov.s fr2,@(r0,r15)
mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
fmov.s @(r0,r15),fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r14),fr2
mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
fadd fr3,fr2
fmov.s fr2,@(r0,r15)
jsr @r3
mov r14,r4
mov.l @(ptr_CE3361C_to_fn_extern_8C04223A,pc),r2 ; r2 set to 0x8C04223A, r2 set to 0x8C04223A
mov 0x49,r5 ; r5 set to 0x49, r5 set to 0x49
jsr @r2
mov r14,r4
mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
mov.l @(ptr_CE33620_to_fn_extern_8C05923C,pc),r3 ; r3 set to 0x8C05923C, r3 set to 0x8C05923C
mov.b @(r0,r14),r5 ; r5 ??? bc r14 is ???, r5 ??? bc r14 is ???
extu.b r5,r5
shll2 r5
neg r5,r5
jsr @r3
mov.l @r15,r4
bra l_code_CE33566
nop

l_code_CE33550:
mov.l @(ptr_CE33624_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
mov 0x0C,r0 ; r0 set to 0x0C
mov 0x16,r5 ; r5 set to 0x16
mov.b r0,@(0x06,r14)
mov 0x0D,r6 ; r6 set to 0x0D
jsr @r3
mov r14,r4
add 0x10,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

l_code_CE33566:
mov.w @(0x1C,r14),r0
cmp/pl r0
bt l_code_CE3359E
mov.w @(0x1E,r14),r0
cmp/eq 0x03,r0
bf l_code_CE3357E
mov 0x09,r0 ; r0 set to 0x09
mov.b r0,@(0x06,r14)
add 0x10,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

l_code_CE3357E:
mov.b @(0x06,r14),r0
mov 0x00,r3 ; r3 set to 0x00
mov 0x10,r5 ; r5 set to 0x10
add 0x01,r0
mov.b r0,@(0x06,r14)
mov 0x17,r0 ; r0 set to 0x17
mov.w r0,@(0x1C,r14)
mov 0x23,r0 ; r0 set to 0x23
mov.b r3,@(r0,r14)
mov.l @(ptr_CE33628_to_fn_extern_8C042008,pc),r3 ; r3 set to 0x8C042008
jsr @r3
mov r14,r4
add 0x10,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

l_code_CE3359E:
mov.l @(ptr_CE3362C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
add 0xFF,r0
mov.w r0,@(0x1C,r14)
jsr @r3
mov r14,r4
add 0x10,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

f_code_CE335B0:
mov.w @(data_CE3360A,pc),r0 ; r0 set to 0x3F8
mov 0x02,r3 ; r3 set to 0x02
mov 0x05,r2 ; r2 set to 0x05
mov.b r3,@(r0,r4)
mov.w @(data_CE3360C,pc),r0 ; r0 set to 0x328
mov.b r2,@(r0,r4)
mov.w @(0x1C,r4),r0
add 0xFF,r0 ; r0 set to 0x327
mov.w r0,@(0x1C,r4)
add 0x01,r0 ; r0 set to 0x328
exts.w r0,r0 ; r0 ??
tst r0,r0
bf l_code_CE335D6
mov.b @(0x06,r4),r0
add 0x01,r0
mov.b r0,@(0x06,r4)
mov 0x14,r0 ; r0 set to 0x14
rts
mov.w r0,@(0x1C,r4)
;==============================================

l_code_CE335D6:
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r4),r3
tst r3,r3
bf l_code_CE335E4
mov.l @(ptr_CE3362C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
jmp @r3
nop

l_code_CE335E4:
rts
nop
;==============================================

#align4
data_CE335E8:
#data 0xE302900F
#data 0x0434E205
#data 0x0424900C
#data 0x034C900B
#data 0x89024311
#data 0x70018446
#data 0x8046

data_CE33602:
#data 0xD30A
#data 0x0009432B

data_CE33608:
#data 0x00C9

data_CE3360A:
#data 0x03F8

data_CE3360C:
#data 0x0328
#data 0x0143

#align4
data_CE33610:
#data 0xC3C80000

#align4
data_CE33614:
#data 0x43892492

#align4
ptr_CE33618_to_extern_8C10235C:
#data extern_8C10235C

ptr_CE3361C_to_fn_extern_8C04223A:
#data fn_extern_8C04223A

ptr_CE33620_to_fn_extern_8C05923C:
#data fn_extern_8C05923C

ptr_CE33624_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C

ptr_CE33628_to_fn_extern_8C042008:
#data fn_extern_8C042008

ptr_CE3362C_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE


f_code_CE33630:
mov.w @(data_CE3375A,pc),r0 ; r0 set to 0x3F8
mov 0x02,r3 ; r3 set to 0x02
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b r3,@(r0,r14)
mov 0x05,r2 ; r2 set to 0x05
mov.w @(data_CE3375C,pc),r0 ; r0 set to 0x328
mov.l @(ptr_CE33768_to_fn_extern_8C03319E,pc),r3 ; r3 set to 0x8C03319E
jsr @r3
mov.b r2,@(r0,r14)
mov.b r0,@(0x07,r14)
mov 0x02,r3 ; r3 set to 0x02
mov.b @(0x07,r14),r0
and 0x01,r0
mov.b r0,@(0x07,r14)
mov 0x78,r0 ; r0 set to 0x78
mov.w r0,@(0x1C,r14)
mov.w @(0x1E,r14),r0
cmp/gt r3,r0
bt l_code_CE33686
mov 0x04,r0 ; r0 set to 0x04
mov.b r0,@(0x06,r14)
mov.w @(0x1E,r14),r0
add 0x01,r0 ; r0 set to 0x05
mov.w r0,@(0x1E,r14)
mov.w @(0x1E,r14),r0
cmp/eq 0x03,r0
bf l_code_CE33678
lds.l @r15+,pr
mov.l @(ptr_CE3376C_to_fn_extern_8C034E8C,pc),r1 ; r1 set to 0x8C034E8C
mov r14,r4
mov 0x0C,r6 ; r6 set to 0x0C
mov 0x16,r5 ; r5 set to 0x16
jmp @r1
mov.l @r15+,r14

l_code_CE33678:
lds.l @r15+,pr
mov.l @(ptr_CE3376C_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov r14,r4
mov 0x0B,r6 ; r6 set to 0x0B
mov 0x16,r5 ; r5 set to 0x16
jmp @r2
mov.l @r15+,r14

l_code_CE33686:
mov.b @(0x06,r14),r0
add 0x01,r0
mov.b r0,@(0x06,r14)
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

f_code_CE33692:
mov.w @(data_CE3375A,pc),r0 ; r0 set to 0x3F8
mov 0x02,r3 ; r3 set to 0x02
mov 0x05,r2 ; r2 set to 0x05
mov.b r3,@(r0,r4)
mov.w @(data_CE3375C,pc),r0 ; r0 set to 0x328
mov.b r2,@(r0,r4)
mov.w @(data_CE3375E,pc),r0 ; r0 set to 0x143
mov.b @(r0,r4),r3 ; r3 ??? bc r4 is ???
cmp/pz r3
bt l_code_CE336B8
mov.b @(0x06,r4),r0
mov 0x0D,r6 ; r6 set to 0x0D
mov.l @(ptr_CE3376C_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
add 0x01,r0 ; r0 set to 0x144
mov.b r0,@(0x06,r4)
mov 0x0A,r0 ; r0 set to 0x0A
mov.w r0,@(0x1C,r4)
jmp @r3
mov 0x16,r5

l_code_CE336B8:
mov.l @(ptr_CE33770_to_fn_extern_8C034DEE,pc),r2 ; r2 set to 0x8C034DEE
jmp @r2
nop

data_CE336BE:
#data 0x904C
#data 0xE205E302
#data 0x90490434
#data 0x854E0424
#data 0x814E70FF
#data 0x600F7001
#data 0x8B022008
#data 0x70018446
#data 0x8046

data_CE336DE:
#data 0x000B
#data 0x0009
;==============================================

f_code_CE336E2:
mov.w @(data_CE33760,pc),r0 ; r0 set to 0x141
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(r0,r14),r3
tst r3,r3
bt/s l_code_CE3370E
mov 0x00,r13 ; r13 set to 0x00
mov.b r13,@(r0,r14)
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
extu.b r0,r0
cmp/eq 0x04,r0
bf/s data_CE33706
mov r14,r4
bra data_CE33708
mov 0x0F,r5

data_CE33706:
#data 0xE50C

#align4
data_CE33708:
#data 0x420BD21A
#data 0x0009


l_code_CE3370E:
mov.w @(data_CE3375E,pc),r0 ; r0 set to 0x143
mov.b @(r0,r14),r3
cmp/pz r3
bt l_code_CE3373C
mov.w @(data_CE33762,pc),r0 ; r0 set to 0x3F9
mov 0x00,r5 ; r5 set to 0x00
mov.l @(ptr_CE33778_to_fn_extern_8C02FEC4,pc),r3 ; r3 set to 0x8C02FEC4
mov 0x0D,r6 ; r6 set to 0x0D
mov.b r13,@(r0,r14)
add 0xFF,r0 ; r0 set to 0x3F8
mov.b r13,@(r0,r14)
mov.w @(data_CE33764,pc),r0 ; r0 set to 0x327
mov.b r13,@(r0,r14)
add 0x01,r0 ; r0 set to 0x328
mov.b r13,@(r0,r14)
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(ptr_CE3377C_to_fn_extern_8C051648,pc),r2 ; r2 set to 0x8C051648
mov r14,r4
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

l_code_CE3373C:
lds.l @r15+,pr
mov.l @(ptr_CE33770_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

f_code_CE33748:
mov r4,r3
mov.l @(ptr_CE33780_to_ptr_CE34AA4_to_f_code_CE33784,pc),r1 ; r1 set to 0xCE34AA4
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

data_CE3375A:
#data 0x03F8

data_CE3375C:
#data 0x0328

data_CE3375E:
#data 0x0143

data_CE33760:
#data 0x0141

data_CE33762:
#data 0x03F9

data_CE33764:
#data 0x0327
#data 0x0000

#align4
ptr_CE33768_to_fn_extern_8C03319E:
#data fn_extern_8C03319E

ptr_CE3376C_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C

ptr_CE33770_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE
#data fn_extern_8C042008

#align4
ptr_CE33778_to_fn_extern_8C02FEC4:
#data fn_extern_8C02FEC4

ptr_CE3377C_to_fn_extern_8C051648:
#data fn_extern_8C051648

ptr_CE33780_to_ptr_CE34AA4_to_f_code_CE33784:
#data ptr_CE34AA4_to_f_code_CE33784


f_code_CE33784:
mov.l r14,@-r15
mov r4,r14
mov 0x47,r3 ; r3 set to 0x47
mov.l r13,@-r15
mov.l r12,@-r15
mov 0x00,r12 ; r12 set to 0x00
sts.l pr,@-r15
mov.b @(0x06,r14),r0
add 0x01,r0
mov.b r0,@(0x06,r14)
mov.w @(data_CE3384C,pc),r0 ; r0 set to 0x1A1
mov.b r3,@(r0,r14)
add 0x0B,r0 ; r0 set to 0x1AC
mov.w r12,@(r0,r14)
add 0xF2,r0 ; r0 set to 0x19E
mov.b r12,@(r0,r14)
add 0x26,r0 ; r0 set to 0x1C4
mov.l @(ptr_CE33854_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0
mov.l r12,@(r0,r14)
mov.b @(0x02,r14),r0
mov.l @r3,r2
extu.b r0,r0 ; r0 set to 0xC4
shll r0 ; r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2)
mov.l @(ptr_CE33858_to_fn_extern_8C05218A,pc),r2 ; r2 set to 0x8C05218A
jsr @r2
mov r14,r4
mov.l @(ptr_CE3385C_to_fn_extern_8C035162,pc),r3 ; r3 set to 0x8C035162
mov r12,r5 ; r5 set to 0x00
jsr @r3
mov r14,r4
mov.l @(ptr_CE33864_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov 0x16,r5 ; r5 set to 0x16
mov.l @(ptr_CE33860_to_data_CE345E4,pc),r13 ; r13 set to 0xCE345E4
mov r12,r6 ; r6 set to 0x00
jsr @r2
mov r14,r4
mov.w @(data_CE3384E,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r2 ; r2 ??? bc r14 is ???
tst r2,r2
bt/s l_code_CE337E2
mov 0x23,r0 ; r0 set to 0x23
bra l_code_CE337E4
mov 0x01,r3

l_code_CE337E2:
mov 0x02,r3 ; r3 set to 0x02

l_code_CE337E4:
mov.b r3,@(r0,r14)
mov.w @(data_CE3384E,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r14),r1
tst r1,r1
bt data_CE337F2
bra data_CE337F4
mov 0x07,r2

data_CE337F2:
#data 0xE20E

#align4
data_CE337F4:
#data 0x4208902C
#data 0x600C00EC
#data 0x8d038802
#data 0xD2193D2C
#data 0x64E3420B

#align4
data_CE33808:
#data 0xE504D318
#data 0xE607E701
#data 0x64E3430B
#data 0xE05CF3D8
#data 0xFE37941B
#data 0xF3D6E004
#data 0x34ECE068
#data 0xE008FE37
#data 0xE060F3D6
#data 0xE00CFE37
#data 0xE06CF3D6
#data 0xE05AFE37
#data 0x60C381EE
#data 0x804A0009
#data 0x4F268146
#data 0x6DF66CF6
#data 0x6EF6000B
;==============================================

data_CE3384C:
#data 0x01A1

data_CE3384E:
#data 0x0130
#data 0x02A401F9

#align4
ptr_CE33854_to_extern_8C2896B0:
#data extern_8C2896B0

ptr_CE33858_to_fn_extern_8C05218A:
#data fn_extern_8C05218A

ptr_CE3385C_to_fn_extern_8C035162:
#data fn_extern_8C035162

ptr_CE33860_to_data_CE345E4:
#data data_CE345E4

ptr_CE33864_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C
#data fn_extern_8C05115A
#data fn_extern_8C03544C

#align4
data_CE33870:
#data 0x2FD62FE6
#data 0x7FF44F22
#data 0x6E439050
#data 0x0E34E305
#data 0x430BD329
#data 0x600E64E3
#data 0x8B124011
#data 0x00EC9047
#data 0x8B0E8801
#data 0xE2009043
#data 0x65F3D326
#data 0xC7230E24
#data 0xC723F308
#data 0xFF3AE601
#data 0xE004F308
#data 0x430BFF37
#data 0x64E3

data_CE338B2:
#data 0x9035
#data 0x421102EC
#data 0x84E68928
#data 0x80E67001
#data 0x00EC902F
#data 0x8802600C
#data 0x902A8909
#data 0x0E24E202
#data 0xF308C719
#data 0xF2E69026
#data 0xF230E038
#data 0xFE27

data_CE338DE:
#data 0xD317
#data 0xE516E000
#data 0xE60380E7
#data 0x64E3430B
#data 0xDD14E70A
#data 0xE6136573
#data 0x64E34D0B
#data 0x6573E709
#data 0x4D0BE613
#data 0xE70B64E3
#data 0xE6136573
#data 0x64E34D0B

#align4
data_CE3390C:
#data 0x420BD206
#data 0x7F0C64E3
#data 0x6DF64F26
#data 0x6EF6000B
;==============================================
#data 0x01410328
#data 0x01F90143
#data 0x0000041C
#data fn_extern_8C034DEE
#data 0xC1D55555
#data 0x43092492
#data extern_8C050834
#data 0x41AB6DB6
#data fn_extern_8C034E8C
#data fn_extern_8C07A428

#align4
data_CE33944:
#data 0xE305909F
#data 0x6E432FE6
#data 0x2FD6D252
#data 0x0E344F22
#data 0xF428C74F
#data 0xE038F308
#data 0xF430F2E6
#data 0x8B00F245
#data 0xFE47

data_CE33966:
#data 0xC74D
#data 0x908DF308
#data 0xE038F2E6
#data 0xF230F1E6
#data 0x8F07F215
#data 0xC749ED00
#data 0x9083F208
#data 0xE038F1E6
#data 0xFE17F120

#align4
data_CE33988:
#data 0x00EC907F
#data 0x8B078802
#data 0xE715907B
#data 0x6573D343
#data 0xE6130ED4
#data 0x64E3430B

#align4
data_CE339A0:
#data 0x34EC9474
#data 0x70FF8546
#data 0x70018146
#data 0x4015600D
#data 0xA0838B01
#data 0x0009

data_CE339B6:
#data 0x60D3
#data 0x81460009
#data 0x03EC9067
#data 0x891B2338
#data 0xE309844A
#data 0x3033600C
#data 0x905F8916
#data 0xD235E147
#data 0x700B0E14
#data 0x70F20ED5
#data 0x70260ED4
#data 0x84E20ED6
#data 0x600C6122
#data 0x717C4000
#data 0x7301031D
#data 0x844A0135
#data 0x804A7001
#data 0x8146E004

#align4
data_CE339FC:
#data 0xD32BE15C
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
#data 0x85EE64E3
#data 0x81EE70FF
#data 0x2008600F
#data 0x90248B3A
#data 0xD319E202
#data 0x0E24E500
#data 0x80E6E004
#data 0x64E3430B
#data 0xE06CF39D
#data 0xFE37F34D
#data 0xF308C714
#data 0xF2E69010
#data 0xF1E6E038
#data 0xF125F230
#data 0xE5168F02
#data 0xE602A001

data_CE33A78:
#data 0xE611

data_CE33A7A:
#data 0x4F26
#data 0x64E3D20E
#data 0x422B6DF6
#data 0x03286EF6
#data 0x0141041C
#data 0x019E02A4
#data 0x01F501A1
#data 0xC2CDB6DB
#data extern_8C26A5B8
#data 0x40092492
#data 0x41892492
#data fn_extern_8C07A428
#data extern_8C2896B0
#data fn_extern_8C034DEE
#data fn_extern_8C035162
#data 0x42855555
#data fn_extern_8C034E8C

#align4
data_CE33ABC:
#data 0x6DF64F26
#data 0x6EF6000B
;==============================================

f_code_CE33AC4:
rts
nop
;==============================================

f_code_CE33AC8:
mov.l r14,@-r15
mov r4,r14
mov.w @(data_CE33C10,pc),r0 ; r0 set to 0x3F9
mov 0x00,r4 ; r4 set to 0x00
sts.l pr,@-r15
mov.b r4,@(r0,r14)
add 0xFF,r0 ; r0 set to 0x3F8
mov.b r4,@(r0,r14)
mov.w @(data_CE33C12,pc),r0 ; r0 set to 0x327
mov.b r4,@(r0,r14)
add 0x01,r0 ; r0 set to 0x328
mov.b r4,@(r0,r14)
mov.w @(data_CE33C14,pc),r0 ; r0 set to 0x41C
fmov.s @(r0,r14),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2
fcmp/gt fr2,fr3
bf l_code_CE33B20
mov.b @(0x06,r14),r0
fldi0 fr4
add 0x01,r0 ; r0 set to 0x39
mov.l @(ptr_CE33C18_to_extern_8C0511B4,pc),r3 ; r3 set to 0x8C0511B4
mov.b r0,@(0x06,r14)
mov 0x5C,r0 ; r0 set to 0x5C
fmov.s fr4,@(r0,r14)
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14)
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14)
mov 0x6C,r0 ; r0 set to 0x6C
fmov.s fr4,@(r0,r14)
mov.w @(data_CE33C14,pc),r0 ; r0 set to 0x41C
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14)
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???
lds.l @r15+,pr
mov.l @(ptr_CE33C1C_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov r14,r4
mov 0x08,r6 ; r6 set to 0x08
mov 0x16,r5 ; r5 set to 0x16
jmp @r2
mov.l @r15+,r14

l_code_CE33B20:
mov 0x5C,r1 ; r1 set to 0x5C
mov.l @(ptr_CE33C20_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
add r14,r1 ; r1 ??? bc r14 is ???
mov r14,r4
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
lds.l @r15+,pr
jmp @r3
mov.l @r15+,r14

f_code_CE33B62:
mov.l r14,@-r15
mov 0x00,r3 ; r3 set to 0x00
mov 0x48,r0 ; r0 set to 0x48
mov r4,r14
sts.l pr,@-r15
mov.l r3,@(r0,r14)
mov.l @(ptr_CE33C20_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r14,r4
exts.b r0,r0 ; r0 ??
cmp/pz r0
bt l_code_CE33B84
lds.l @r15+,pr
mov.l @(ptr_CE33C24_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648
mov r14,r4
jmp @r3
mov.l @r15+,r14

l_code_CE33B84:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

f_code_CE33B8A:
mov r4,r3
mov.l @(ptr_CE33C28_to_ptr_CE34ABC_to_f_code_CE33B9C,pc),r1 ; r1 set to 0xCE34ABC
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

f_code_CE33B9C:
mov.l r14,@-r15
mov r4,r14
fldi0 fr4
mov 0x00,r3 ; r3 set to 0x00
sts.l pr,@-r15
mov.b @(0x06,r14),r0
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
mov.w @(data_CE33C16,pc),r0 ; r0 set to 0x1F9
mov.b r3,@(r0,r14)
mov.w @(data_CE33C14,pc),r0 ; r0 set to 0x41C
mov.l @(ptr_CE33C2C_to_fn_extern_8C05218A,pc),r3 ; r3 set to 0x8C05218A
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14)
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(ptr_CE33C1C_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov r14,r4
mov 0x1F,r6 ; r6 set to 0x1F
mov 0x15,r5 ; r5 set to 0x15
jmp @r2
mov.l @r15+,r14

f_code_CE33BDC:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(ptr_CE33C20_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt l_code_CE33BF6
mov.l @r15,r4
add 0x04,r15
mov.l @(ptr_CE33C24_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648
jmp @r3
lds.l @r15+,pr

l_code_CE33BF6:
add 0x04,r15
lds.l @r15+,pr
rts
nop
;==============================================

f_code_CE33BFE:
mov r4,r3
mov.l @(ptr_CE33C30_to_ptr_CE34AC4_to_f_code_CE33C34,pc),r1 ; r1 set to 0xCE34AC4
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

data_CE33C10:
#data 0x03F9

data_CE33C12:
#data 0x0327

data_CE33C14:
#data 0x041C

data_CE33C16:
#data 0x01F9

#align4
ptr_CE33C18_to_extern_8C0511B4:
#data extern_8C0511B4

ptr_CE33C1C_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C

ptr_CE33C20_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE

ptr_CE33C24_to_fn_extern_8C051648:
#data fn_extern_8C051648

ptr_CE33C28_to_ptr_CE34ABC_to_f_code_CE33B9C:
#data ptr_CE34ABC_to_f_code_CE33B9C

ptr_CE33C2C_to_fn_extern_8C05218A:
#data fn_extern_8C05218A

ptr_CE33C30_to_ptr_CE34AC4_to_f_code_CE33C34:
#data ptr_CE34AC4_to_f_code_CE33C34


f_code_CE33C34:
mov.l r14,@-r15
mov r4,r14
fldi0 fr4
mov.l r13,@-r15
mov 0x00,r13 ; r13 set to 0x00
sts.l pr,@-r15
mov.b @(0x06,r14),r0
mov.l @(ptr_CE33D88_to_fn_extern_8C05218A,pc),r3 ; r3 set to 0x8C05218A
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
mov.w @(data_CE33D7E,pc),r0 ; r0 set to 0x1F9
mov.b r13,@(r0,r14)
mov.w @(data_CE33D80,pc),r0 ; r0 set to 0x41C
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r14)
jsr @r3
mov r14,r4
mov.l @(ptr_CE33D8C_to_fn_extern_8C05115A,pc),r2 ; r2 set to 0x8C05115A
jsr @r2
mov r14,r4
mov.w @(data_CE33D82,pc),r0 ; r0 set to 0x1A1
mov 0x14,r3 ; r3 set to 0x14
mov 0x02,r6 ; r6 set to 0x02
mov r14,r4
mov.b r3,@(r0,r14)
add 0x0B,r0 ; r0 set to 0x1AC
mov.w r13,@(r0,r14)
add 0xF2,r0 ; r0 set to 0x19E
mov.b r13,@(r0,r14)
add 0x26,r0 ; r0 set to 0x1C4
mov.l @(ptr_CE33D90_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0
mov 0x14,r5 ; r5 set to 0x14
mov.l r13,@(r0,r14)
mov.b @(0x02,r14),r0
mov.l @r3,r2 ; r2 ??
extu.b r0,r0 ; r0 set to 0xC4
shll r0 ; r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2)
lds.l @r15+,pr
mov.l @(ptr_CE33D94_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
jmp @r2
mov.l @r15+,r14

f_code_CE33CA2:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xF4,r15
mov.l @(ptr_CE33D98_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt data_CE33CC2
mov.l @(ptr_CE33D9C_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648
jsr @r3
mov r14,r4
add 0x0C,r15
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

data_CE33CC2:
#data 0x905F
#data 0x880100EC
#data 0x905B8B0D
#data 0xD336E200
#data 0x0E2465F3
#data 0xF308C732
#data 0xFF3AC732
#data 0xE004F308
#data 0x430BFF37
#data 0x64E3

data_CE33CE6:
#data 0x904D
#data 0x880200EC
#data 0x90498B06
#data 0xD32EE200
#data 0x0E24E51A
#data 0x64E3430B

#align4
data_CE33CFC:
#data 0x4F267F0C
#data 0x6EF6000B
;==============================================

f_code_CE33D04:
mov r4,r3
mov.l @(ptr_CE33DB0_to_ptr_CE34ACC_to_data_CE33D16,pc),r1 ; r1 set to 0xCE34ACC
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

data_CE33D16:
#data 0x8446
#data 0x7001E302
#data 0x902E8046
#data 0xC7240434
#data 0xE05CF308
#data 0x902CF437
#data 0x2338034C
#data 0xE05C8B03
#data 0xF34DF346
#data 0xF437

data_CE33D3A:
#data 0xE068
#data 0xF437F38D
#data 0xF308C71D
#data 0xE313E060
#data 0xC71CF437
#data 0xE06CF308
#data 0xF437E500
#data 0x90146653
#data 0x700B0434
#data 0x70F20455
#data 0x70260454
#data 0x0456D30A
#data 0x62328442
#data 0x4000600C
#data 0x012D727C
#data 0x02157101
#data 0x422BD206
#data 0xE514

data_CE33D7E:
#data 0x01F9

data_CE33D80:
#data 0x041C

data_CE33D82:
#data 0x01A1
#data 0x01D20141

#align4
ptr_CE33D88_to_fn_extern_8C05218A:
#data fn_extern_8C05218A

ptr_CE33D8C_to_fn_extern_8C05115A:
#data fn_extern_8C05115A

ptr_CE33D90_to_extern_8C2896B0:
#data extern_8C2896B0

ptr_CE33D94_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C

ptr_CE33D98_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE

ptr_CE33D9C_to_fn_extern_8C051648:
#data fn_extern_8C051648
#data 0x42555555
#data 0x43092492
#data extern_8C050EA4
#data fn_extern_8C04223A

#align4
ptr_CE33DB0_to_ptr_CE34ACC_to_data_CE33D16:
#data ptr_CE34ACC_to_data_CE33D16
#data 0x41F00000
#data 0x40892492
#data 0xBF4DB6DB


f_code_CE33DC0:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE33ED8_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r4,r14
mov 0x5C,r1 ; r1 set to 0x5C
mov.l @(ptr_CE33EDC_to_fn_extern_8C052CE2,pc),r3 ; r3 set to 0x8C052CE2
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
bt l_code_CE33E34
mov.b @(0x06,r14),r0
mov r14,r4
fldi0 fr4
mov 0x01,r6 ; r6 set to 0x01
add 0x01,r0 ; r0 set to 0x61
mov.l @(ptr_CE33EE0_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
mov.b r0,@(0x06,r14)
mov 0x5C,r0 ; r0 set to 0x5C
fmov.s fr4,@(r0,r14)
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14)
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14)
mov 0x6C,r0 ; r0 set to 0x6C
fmov.s fr4,@(r0,r14)
mov 0x14,r5 ; r5 set to 0x14
lds.l @r15+,pr
jmp @r3
mov.l @r15+,r14

l_code_CE33E34:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

f_code_CE33E3A:
sts.l pr,@-r15
add 0xFC,r15
mov.l @(ptr_CE33ED8_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov.l r4,@r15
exts.b r0,r0
cmp/pz r0
bt l_code_CE33E54
mov.l @r15,r4
add 0x04,r15
mov.l @(ptr_CE33EE4_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648
jmp @r3
lds.l @r15+,pr

l_code_CE33E54:
add 0x04,r15
lds.l @r15+,pr
rts
nop
;==============================================

f_code_CE33E5C:
add 0xFC,r15
mov.l r4,@r15
mov r4,r0
nop
mov.w @(data_CE33ECC,pc),r1 ; r1 set to 0x1F9
mov.l @(ptr_CE33EE8_to_ptr_CE34AD8_to_f_code_CE33E74,pc),r2 ; r2 set to 0xCE34AD8
mov.b @(r0,r1),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r2),r0
jmp @r0
add 0x04,r15

f_code_CE33E74:
mov.w @(data_CE33ECE,pc),r0 ; r0 set to 0x1FA
mov 0xF6,r1 ; r1 set to 0xFFFFFFF6
mov.l r14,@-r15
mov r4,r14
mov.w @(data_CE33ED0,pc),r2 ; r2 set to 0xC00
sts.l pr,@-r15
mov.w @(r0,r14),r3
mov 0x22,r0 ; r0 set to 0x22
extu.w r3,r3
and r2,r3
shad r1, r3
mov.b r3,@(r0,r14)
extu.b r3,r3
tst r3,r3
bt l_code_CE33EC0
mov.w @(data_CE33ED2,pc),r0 ; r0 set to 0x1FE
mov.b @(r0,r14),r3
tst r3,r3
bf l_code_CE33EC0
mov.w @(data_CE33ED4,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
extu.b r0,r0
cmp/eq 0x01,r0
bf l_code_CE33EC0
mov.l @(ptr_CE33EEC_to_fn_extern_8C045790,pc),r2 ; r2 set to 0x8C045790
jsr @r2
mov r14,r4
tst r0,r0
bt/s l_code_CE33EC0
mov r0,r4
mov.w @(data_CE33ED6,pc),r0 ; r0 set to 0x1F7
mov 0x00,r2 ; r2 set to 0x00
mov.b r2,@(r0,r14)
mov r4,r0 ; r0 ??? bc r4 is ???
nop
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

l_code_CE33EC0:
mov 0x00,r0 ; r0 set to 0x00
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

f_code_CE33EC8:
rts
mov 0x00,r0
;==============================================

data_CE33ECC:
#data 0x01F9

data_CE33ECE:
#data 0x01FA

data_CE33ED0:
#data 0x0C00

data_CE33ED2:
#data 0x01FE

data_CE33ED4:
#data 0x01A3

data_CE33ED6:
#data 0x01F7

#align4
ptr_CE33ED8_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE

ptr_CE33EDC_to_fn_extern_8C052CE2:
#data fn_extern_8C052CE2

ptr_CE33EE0_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C

ptr_CE33EE4_to_fn_extern_8C051648:
#data fn_extern_8C051648

ptr_CE33EE8_to_ptr_CE34AD8_to_f_code_CE33E74:
#data ptr_CE34AD8_to_f_code_CE33E74

ptr_CE33EEC_to_fn_extern_8C045790:
#data fn_extern_8C045790


f_code_CE33EF0:
mov.w @(data_CE33FC8,pc),r0 ; r0 set to 0x1FA
mov 0xF6,r1 ; r1 set to 0xFFFFFFF6
mov.l r14,@-r15
mov r4,r14
mov.w @(data_CE33FCA,pc),r2 ; r2 set to 0x1C00
sts.l pr,@-r15
mov.w @(r0,r14),r3
mov 0x22,r0 ; r0 set to 0x22
extu.w r3,r3
and r2,r3
shad r1, r3
mov.b r3,@(r0,r14)
extu.b r3,r3
tst r3,r3
bt l_code_CE33F48
mov.w @(data_CE33FCC,pc),r0 ; r0 set to 0x1FE
mov.b @(r0,r14),r3
tst r3,r3
bf l_code_CE33F48
mov.w @(data_CE33FCE,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
extu.b r0,r0
cmp/eq 0x01,r0
bf l_code_CE33F48
mova @(data_CE33FDC,pc),r0  ; r0 set to 0xCE33FDC
fmov.s @r0,fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
fcmp/gt fr3,fr2
bf l_code_CE33F48
mov.l @(ptr_CE33FE0_to_fn_extern_8C045790,pc),r2 ; r2 set to 0x8C045790
jsr @r2
mov r14,r4
tst r0,r0
bt/s l_code_CE33F48
mov r0,r4 ; r4 set to 0x38
mov.w @(data_CE33FD0,pc),r0 ; r0 set to 0x1F7
mov 0x01,r2 ; r2 set to 0x01
mov.b r2,@(r0,r14)
mov r4,r0 ; r0 set to 0x38
nop
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

l_code_CE33F48:
mov 0x00,r0 ; r0 set to 0x00
lds.l @r15+,pr
rts
mov.l @r15+,r14
;==============================================

f_code_CE33F50:
mov.l r4,@-r15
mov r4,r0
nop
mov.w @(data_CE33FD0,pc),r1 ; r1 set to 0x1F7
mov.l @(ptr_CE33FE4_to_ptr_CE34AE8_to_data_CE33F68,pc),r2 ; r2 set to 0xCE34AE8
mov.b @(r0,r1),r0
extu.b r0,r0
and 0x3F,r0
shll2 r0
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

#align4
data_CE33F68:
#data 0x4F222FE6
#data 0x902B7FF4
#data 0x922E6E43
#data 0x633D03ED
#data 0x8d0C2328
#data 0x9029E30A
#data 0x00EC9128
#data 0xCA0131EC
#data 0x90242100
#data 0x00ED9123
#data 0xCA0131EC
#data 0x2101

data_CE33F96:
#data 0x901F
#data 0x0E3465F3
#data 0xF308C712
#data 0xD313C712
#data 0xF308FF3A
#data 0xFF37E004
#data 0x64E3430B
#data 0x420BD210
#data 0xD31064E3
#data 0xE600E50F
#data 0x64E3430B
#data 0x4F267F0C
#data 0x6EF6000B
;==============================================

data_CE33FC8:
#data 0x01FA

data_CE33FCA:
#data 0x1C00

data_CE33FCC:
#data 0x01FE

data_CE33FCE:
#data 0x01A3

data_CE33FD0:
#data 0x01F7
#data 0x0400
#data 0x013001D2
#data 0x000001A0

#align4
data_CE33FDC:
#data 0x43092492

#align4
ptr_CE33FE0_to_fn_extern_8C045790:
#data fn_extern_8C045790

ptr_CE33FE4_to_ptr_CE34AE8_to_data_CE33F68:
#data ptr_CE34AE8_to_data_CE33F68
#data 0xC2A6AAAA
#data 0x431E9249
#data extern_8C103660
#data extern_8C056F2A
#data fn_extern_8C034E8C

#align4
data_CE33FFC:
#data 0x4F222FE6
#data 0x90977FF4
#data 0x92966E43
#data 0x633D03ED
#data 0x890B2328
#data 0x91919092
#data 0x31EC00EC
#data 0x2100CA01
#data 0x918C908D
#data 0x31EC00ED
#data 0x2101CA01

#align4
data_CE34028:
#data 0xD348C746
#data 0xC746F308
#data 0xFF3A65F3
#data 0xE004F308
#data 0x430BFF37
#data 0x907D64E3
#data 0xF48DE20A
#data 0xE05C0E24
#data 0xE068FE47
#data 0xF330F39D
#data 0xE060FE47
#data 0xD33FF2E6
#data 0xFE27F233
#data 0xF208C73C
#data 0xFE27E06C
#data 0x64E3430B
#data 0xE50FD23B
#data 0x420BE601
#data 0x7F0C64E3
#data 0x000B4F26
#data 0x6EF6
;==============================================

f_code_CE3407A:
mov.w @(data_CE3413E,pc),r0 ; r0 set to 0x1EA
mov 0x01,r3 ; r3 set to 0x01
mov.l r14,@-r15
mov r4,r14
mov.b r3,@(r0,r14)
add 0x0D,r0 ; r0 set to 0x1F7
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
mov r14,r4
mov.l @(ptr_CE3415C_to_ptr_CE34AF0_to_data_CE34098,pc),r1 ; r1 set to 0xCE34AF0
extu.b r0,r0
and 0x3F,r0
shll2 r0
mov.l @(r0,r1),r3 ; r3 ??
jmp @r3
mov.l @r15+,r14

#align4
data_CE34098:
#data 0x4F222FE6
#data 0x904F7FF4
#data 0x00EC6E43
#data 0x8B2F8801
#data 0xD32FC72D
#data 0xC72DF308
#data 0xE60265F3
#data 0xF308FF3A
#data 0xFF37E004
#data 0x64E3430B
#data 0xE502D22A
#data 0x64E3420B
#data 0xE300903A
#data 0xE2209135
#data 0xE6000E34
#data 0x65639035
#data 0x70EC04EE
#data 0x314C04E6
#data 0x03EC902B
#data 0x0E349028
#data 0x600C00EC
#data 0x2101CA01
#data 0x034C9023
#data 0x04349020
#data 0x042470CF
#data 0xE3017055
#data 0xD31B0434
#data 0x64E3430B

#align4
data_CE34108:
#data 0x420BD21A
#data 0x600E64E3
#data 0x89024011
#data 0x420BD218
#data 0x64E3

data_CE3411A:
#data 0x7F0C
#data 0x000B4F26
#data 0x6EF6
;==============================================

f_code_CE34122:
mov r4,r3
mov.l @(ptr_CE3417C_to_ptr_CE34AF8_to_data_CE34180,pc),r1 ; r1 set to 0xCE34AF8
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x040001FA
#data 0x013001D2
#data 0x01A0

data_CE3413E:
#data 0x01EA
#data 0x01C80141
#data 0xC2A6AAAA
#data 0x431E9249
#data extern_8C103660
#data 0xBF4DB6DB
#data extern_8C056F2A
#data fn_extern_8C034E8C

#align4
ptr_CE3415C_to_ptr_CE34AF0_to_data_CE34098:
#data ptr_CE34AF0_to_data_CE34098
#data 0xC3200000
#data 0x431A4924
#data extern_8C0FDAB6
#data fn_extern_8C04223A
#data fn_extern_8C02FEC4
#data fn_extern_8C034DEE
#data fn_extern_8C051648

#align4
ptr_CE3417C_to_ptr_CE34AF8_to_data_CE34180:
#data ptr_CE34AF8_to_data_CE34180

data_CE34180:
#data 0x4F222FE6
#data 0x90807FF4
#data 0x00EC6E43
#data 0x8B248801
#data 0xD342C740
#data 0xC740F308
#data 0xE60265F3
#data 0xF308FF3A
#data 0xFF37E004
#data 0x64E3430B
#data 0xE502D23D
#data 0x64E3420B
#data 0xE300906B
#data 0x0E34E221
#data 0x9067E600
#data 0x04EE6563
#data 0x04E670EC
#data 0x03EC701E
#data 0x70CF0434
#data 0x70550424
#data 0x0434E301
#data 0x430BD333
#data 0x64E3

data_CE341DA:
#data 0xD233
#data 0x64E3420B
#data 0x4011600E
#data 0xD2318902
#data 0x64E3420B

#align4
data_CE341EC:
#data 0x4F267F0C
#data 0x6EF6000B
;==============================================

f_code_CE341F4:
mov.l r4,@-r15
mov r4,r0
nop
mov.w @(data_CE3428E,pc),r1 ; r1 set to 0x1F7
mov.l @(ptr_CE342B0_to_ptr_CE34AFC_to_f_code_CE3420C,pc),r2 ; r2 set to 0xCE34AFC
mov.b @(r0,r1),r0
extu.b r0,r0
and 0x3F,r0
shll2 r0
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

f_code_CE3420C:
mov.w @(data_CE3428C,pc),r0 ; r0 set to 0x1C8
mov r4,r5
mov.l r4,@-r15
mov.l @(ptr_CE342B4_to_code_extern_8C04CC1C,pc),r3 ; r3 set to 0x8C04CC1C
mov.l @(r0,r4),r4
jmp @r3
add 0x04,r15

f_code_CE3421A:
rts
nop
;==============================================

f_code_CE3421E:
mov 0x00,r5 ; r5 set to 0x00
mov r5,r0 ; r0 set to 0x00
nop
mov.b r0,@(0x05,r4)
mov.b r0,@(0x07,r4)
mov.b r0,@(0x06,r4)
mov.w @(data_CE34290,pc),r0 ; r0 set to 0x4C9
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
cmp/eq 0x00,r0
bt l_code_CE3423E
cmp/eq 0x01,r0
bt l_code_CE34246
cmp/eq 0x02,r0
bt data_CE3424E
bra l_code_CE34254
nop

l_code_CE3423E:
mov.w @(data_CE34292,pc),r0 ; r0 set to 0x1E9
mov 0x05,r3 ; r3 set to 0x05
bra l_code_CE34254
mov.b r3,@(r0,r4)

l_code_CE34246:
mov.w @(data_CE34292,pc),r0 ; r0 set to 0x1E9
mov 0x04,r1 ; r1 set to 0x04
bra l_code_CE34254
mov.b r1,@(r0,r4)

data_CE3424E:
#data 0x9020
#data 0x0424E20C


l_code_CE34254:
mov.l @(ptr_CE342B8_to_fn_extern_8C0530D8,pc),r2 ; r2 set to 0x8C0530D8
jmp @r2
mov 0x1D,r5

f_code_CE3425A:
mov 0x00,r5 ; r5 set to 0x00
mov r5,r0 ; r0 set to 0x00
nop
mov.b r0,@(0x05,r4)
mov.b r0,@(0x07,r4)
mov.b r0,@(0x06,r4)
mov.w @(data_CE34290,pc),r0 ; r0 set to 0x4C9
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
cmp/eq 0x00,r0
bt l_code_CE3427A
cmp/eq 0x01,r0
bt l_code_CE34282
cmp/eq 0x02,r0
bt data_CE342BC
bra l_code_CE342C2
nop

l_code_CE3427A:
mov.w @(data_CE34292,pc),r0 ; r0 set to 0x1E9
mov 0x05,r3 ; r3 set to 0x05
bra l_code_CE342C2
mov.b r3,@(r0,r4)

l_code_CE34282:
mov.w @(data_CE34292,pc),r0 ; r0 set to 0x1E9
mov 0x04,r1 ; r1 set to 0x04
bra l_code_CE342C2
mov.b r1,@(r0,r4)
#data 0x0141

data_CE3428C:
#data 0x01C8

data_CE3428E:
#data 0x01F7

data_CE34290:
#data 0x04C9

data_CE34292:
#data 0x01E9
#data 0xC2D55555
#data 0x42CDB6DB
#data extern_8C0FDAB6
#data fn_extern_8C04223A
#data fn_extern_8C02FEC4
#data fn_extern_8C034DEE
#data code_extern_8C05176E

#align4
ptr_CE342B0_to_ptr_CE34AFC_to_f_code_CE3420C:
#data ptr_CE34AFC_to_f_code_CE3420C

ptr_CE342B4_to_code_extern_8C04CC1C:
#data code_extern_8C04CC1C

ptr_CE342B8_to_fn_extern_8C0530D8:
#data fn_extern_8C0530D8

data_CE342BC:
#data 0xE20C9045
#data 0x0424


l_code_CE342C2:
mov.l @(ptr_CE34350_to_fn_extern_8C0530D8,pc),r2 ; r2 set to 0x8C0530D8
jmp @r2
mov 0x1D,r5

f_code_CE342C8:
mov 0x00,r5 ; r5 set to 0x00
mov r5,r0 ; r0 set to 0x00
nop
mov.b r0,@(0x05,r4)
mov.b r0,@(0x07,r4)
mov.b r0,@(0x06,r4)
mov.w @(data_CE3434C,pc),r0 ; r0 set to 0x4C9
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
cmp/eq 0x00,r0
bt l_code_CE342E8
cmp/eq 0x01,r0
bt data_CE342F0
cmp/eq 0x02,r0
bt data_CE342FC
bra l_code_CE34308
nop

l_code_CE342E8:
mov.w @(data_CE3434A,pc),r0 ; r0 set to 0x1E9
mov 0x02,r3 ; r3 set to 0x02
bra l_code_CE342F6
mov.b r3,@(r0,r4)

#align4
data_CE342F0:
#data 0xE207902B
#data 0x0424


l_code_CE342F6:
mov.w @(data_CE3434E,pc),r0 ; r0 set to 0x1A3
bra l_code_CE34308
mov.b r5,@(r0,r4)

#align4
data_CE342FC:
#data 0xE2089025
#data 0x0424E301
#data 0x043470BA


l_code_CE34308:
mov.l @(ptr_CE34350_to_fn_extern_8C0530D8,pc),r3 ; r3 set to 0x8C0530D8
jmp @r3
mov 0x15,r5

f_code_CE3430E:
mov 0x00,r5 ; r5 set to 0x00
mov r5,r0 ; r0 set to 0x00
nop
mov.b r0,@(0x05,r4)
mov.b r0,@(0x07,r4)
mov.b r0,@(0x06,r4)
mov.w @(data_CE3434C,pc),r0 ; r0 set to 0x4C9
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
cmp/eq 0x00,r0
bt/s l_code_CE3433C
mov 0x02,r6 ; r6 set to 0x02
cmp/eq 0x01,r0
bt l_code_CE34330
cmp/eq 0x02,r0
bt l_code_CE3433C
bra l_code_CE34344
nop

l_code_CE34330:
mov.w @(data_CE3434A,pc),r0 ; r0 set to 0x1E9
mov 0x01,r3 ; r3 set to 0x01
mov.b r5,@(r0,r4)
add 0xBA,r0 ; r0 set to 0x1A3
bra l_code_CE34344
mov.b r3,@(r0,r4)

l_code_CE3433C:
mov.w @(data_CE3434A,pc),r0 ; r0 set to 0x1E9
mov.b r6,@(r0,r4)
add 0xBA,r0 ; r0 set to 0x1A3
mov.b r5,@(r0,r4)

l_code_CE34344:
mov.l @(ptr_CE34350_to_fn_extern_8C0530D8,pc),r2 ; r2 set to 0x8C0530D8, r2 set to 0x8C0530D8
jmp @r2
mov 0x15,r5

data_CE3434A:
#data 0x01E9

data_CE3434C:
#data 0x04C9

data_CE3434E:
#data 0x01A3

#align4
ptr_CE34350_to_fn_extern_8C0530D8:
#data fn_extern_8C0530D8

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
Stn_LPChain:
	#data 0x01 0x02 0x00 0x02
Stn_MPChain:
	#data 0xff 0x02 0x01 0x02
Stn_HPChain:
	#data 0xff 0xff 0xff 0x02
Stn_LKChain:
	#data 0x01 0x02 0x01 0x02
Stn_MKChain:
	#data 0xff 0x02 0xff 0x02
Stn_HKChain:
	#data 0xff 0xff 0xff 0xff

Crc_LPChain:
	#data 0x01 0x02 0x00 0x02
Crc_MPChain:
	#data 0xff 0x02 0x01 0x02
Crc_HPChain:
	#data 0xff 0xff 0xff 0x02
Crc_LKChain:
	#data 0x01 0x02 0x01 0x02
Crc_MKChain:
	#data 0xff 0x02 0xff 0x02
Crc_HKChain:
	#data 0xff 0xff 0xff 0xff

Air_LPChain:
	#data 0x01 0x02 0x00 0x02
Air_MPChain:
	#data 0xff 0x02 0x01 0x02
Air_HPChain:
	#data 0xff 0xff 0xff 0x02
Air_LKChain:
	#data 0x01 0x02 0x01 0x02
Air_MKChain:
	#data 0xff 0x02 0xff 0x02
Air_HKChain:
	#data 0xff 0xff 0xff 0xff

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
data_CE3439C:
	#data 0x0003
	#data 0x0000 0x0000 0x0000
	#data 0x1000 0x1800 0x0800 0x0300

data_CE343AC:
	#data 0x0003
	#data 0x1000 0x0001 0x0000
	#data 0x1000 0x1400 0x0400 0x0060

data_CE343BC:
	#data 0x0003
	#data 0x1000 0x0002 0x0000
	#data 0x1000 0x1800 0x0800 0x0060

data_CE343CC:
	#data 0x0003
	#data 0x8100 0x0003 0x0000
	#data 0x1000 0x1800 0x0800 0x0300

data_CE343DC:
	#data 0x0003
	#data 0x9100 0x0004 0x0000
	#data 0x1000 0x1400 0x0400 0x0060

data_CE343EC:
	#data 0x0003
	#data 0x9100 0x0005 0x0000
	#data 0x1000 0x1800 0x0800 0x0060

data_CE343FC:
	#data 0x0004
	#data 0x1100 0x0009 0x0000
	#data 0x0020 0x0200 0x1000 0x0040 0x0100

data_CE3440E:
	#data 0x0005
	#data 0x1000 0x0006 0x0000
	#data 0x0800 0x1800 0x1000 0x1400 0x0400 0x0300 0x0000

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
data_CE34424:
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x418C0000
#data 0xBBD55555
#data 0x00000000
#data 0x00000000
#data 0x3F800000
#data 0x3F800000
#data 0x00000000
#data 0xC18C0000
#data 0x3BD55555
#data 0x00000000
#data 0x00000000
#data 0x3F800000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0xC1B40000
#data 0x00000000
#data 0x3F800000
#data 0xBF800000
#data 0x40000000
#data 0x413AAAAA
#data 0x00000000
#data 0xC1700000
#data 0x00000000
#data 0x3F800000
#data 0x3F800000
#data 0x3F800000
#data 0xC13AAAAA
#data 0x00000000
#data 0xC1700000
#data 0x00000000
#data 0x3F800000
#data 0x00000000
#data 0x3F800000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x41B40000
#data 0xBC092492
#data 0x3F800000
#data 0xBF800000
#data 0x40800000
#data 0x413AAAAA
#data 0xBBD55555
#data 0x41700000
#data 0xBC092492
#data 0x3F800000
#data 0x3F800000
#data 0x40400000
#data 0xC13AAAAA
#data 0x3BD55555
#data 0x41700000
#data 0xBC092492
#data 0x3F800000
#data 0x00000000
#data 0x40400000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
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
data_CE345E4:
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x41B40000
#data 0xBBD55555
#data 0x00000000
#data 0x00000000
#data 0x3F800000
#data 0x3F800000
#data 0x00000000
#data 0xC1B40000
#data 0x3BD55555
#data 0x00000000
#data 0x00000000
#data 0x3F800000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0xC1E76DB6
#data 0x00000000
#data 0x3F800000
#data 0xBF800000
#data 0x40000000
#data 0x41700000
#data 0x00000000
#data 0xC19A4924
#data 0x00000000
#data 0x3F800000
#data 0x3F800000
#data 0x3F800000
#data 0xC1700000
#data 0x00000000
#data 0xC19A4924
#data 0x00000000
#data 0x3F800000
#data 0x00000000
#data 0x3F800000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x41E76DB6
#data 0xBC092492
#data 0x3F800000
#data 0xBF800000
#data 0x40800000
#data 0x41700000
#data 0xBBD55555
#data 0x419A4924
#data 0xBC092492
#data 0x3F800000
#data 0x3F800000
#data 0x40400000
#data 0xC1700000
#data 0x3BD55555
#data 0x419A4924
#data 0xBC092492
#data 0x3F800000
#data 0x00000000
#data 0x40400000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
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
data_CE347A4:
#data 0x41000000
#data 0x41000000
#data 0x41100000
#data 0x41100000
#data 0x41100000
#data 0x41100000
#data 0x41100000
#data 0x3F800000
#data 0x3F800000
#data 0x3F800000
#data 0x40A00000
#data 0x40A00000
#data 0x40A00000
#data 0x40A00000
#data 0x40A00000
#data 0x40800000
#data 0x40800000
#data 0x40800000
#data 0x40C00000
#data 0x40C00000
#data 0x40C00000
#data 0x40C00000
#data 0x40C00000
#data 0x40000000
#data 0x40000000
#data 0x40000000
#data 0x41200000
#data 0x41200000
#data 0x41200000
#data 0x41200000
#data 0x41200000
#data 0x41000000
#data 0x42480000
#data 0x42055555
#data 0x41855555
#data 0x00000000
#data 0x42695555
#data 0x4226AAAA
#data 0x41C80000
#data 0x41055555
#data 0xC2480000
#data 0xC2055555
#data 0xC1855555
#data 0x00000000
#data 0xC2695555
#data 0xC226AAAA
#data 0xC1C80000
#data 0xC1055555

#align4
ptr_CE34864_to_f_code_CE3060A:
#data f_code_CE3060A

ptr_CE34868_to_f_code_CE30054:
#data f_code_CE30054

ptr_CE3486C_to_f_code_CE3060E:
#data f_code_CE3060E

ptr_CE34870_to_f_code_CE30C32:
#data f_code_CE30C32

ptr_CE34874_to_f_code_CE3109A:
#data f_code_CE3109A

ptr_CE34878_to_f_code_CE31298:
#data f_code_CE31298

ptr_CE3487C_to_f_code_CE31468:
#data f_code_CE31468

ptr_CE34880_to_f_code_CE3151C:
#data f_code_CE3151C

ptr_CE34884_to_f_code_CE31734:
#data f_code_CE31734

ptr_CE34888_to_f_code_CE33E5C:
#data f_code_CE33E5C

ptr_CE3488C_to_f_code_CE33F50:
#data f_code_CE33F50

ptr_CE34890_to_f_code_CE3407A:
#data f_code_CE3407A

ptr_CE34894_to_f_code_CE341F4:
#data f_code_CE341F4

ptr_CE34898_to_data_CE304D8:
#data data_CE304D8

ptr_CE3489C_to_f_code_CE33D04:
#data f_code_CE33D04

ptr_CE348A0_to_data_CE30FCA:
#data data_CE30FCA

ptr_CE348A4_to_f_code_CE3421E:
#data f_code_CE3421E

ptr_CE348A8_to_f_code_CE3425A:
#data f_code_CE3425A

ptr_CE348AC_to_f_code_CE342C8:
#data f_code_CE342C8

ptr_CE348B0_to_f_code_CE3430E:
#data f_code_CE3430E
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000

#align4
ptr_CE348D4_to_f_code_CE3066A:
#data f_code_CE3066A

ptr_CE348D8_to_data_CE309C2:
#data data_CE309C2

ptr_CE348DC_to_f_code_CE309EA:
#data f_code_CE309EA

ptr_CE348E0_to_f_code_CE30622:
#data f_code_CE30622

ptr_CE348E4_to_f_code_CE30CFE:
#data f_code_CE30CFE

ptr_CE348E8_to_f_code_CE30ECE:
#data f_code_CE30ECE

ptr_CE348EC_to_data_CE30EB8:
#data data_CE30EB8

ptr_CE348F0_to_f_code_CE30C78:
#data f_code_CE30C78

ptr_CE348F4_to_f_code_CE310E0:
#data f_code_CE310E0

ptr_CE348F8_to_f_code_CE3114C:
#data f_code_CE3114C

ptr_CE348FC_to_data_CE31200:
#data data_CE31200

ptr_CE34900_to_f_code_CE31276:
#data f_code_CE31276

ptr_CE34904_to_f_code_CE312AA:
#data f_code_CE312AA

ptr_CE34908_to_f_code_CE31340:
#data f_code_CE31340

ptr_CE3490C_to_data_CE313D0:
#data data_CE313D0

ptr_CE34910_to_f_code_CE31446:
#data f_code_CE31446

ptr_CE34914_to_f_code_CE3147A:
#data f_code_CE3147A

ptr_CE34918_to_data_CE314CC:
#data data_CE314CC

ptr_CE3491C_to_data_CE3152E:
#data data_CE3152E

ptr_CE34920_to_f_code_CE3154C:
#data f_code_CE3154C

ptr_CE34924_to_f_code_CE315D6:
#data f_code_CE315D6

ptr_CE34928_to_f_code_CE31578:
#data f_code_CE31578

ptr_CE3492C_to_f_code_CE315D6:
#data f_code_CE315D6

ptr_CE34930_to_f_code_CE31578:
#data f_code_CE31578

ptr_CE34934_to_f_code_CE31578:
#data f_code_CE31578

ptr_CE34938_to_f_code_CE315D6:
#data f_code_CE315D6

ptr_CE3493C_to_f_code_CE315D6:
#data f_code_CE315D6

ptr_CE34940_to_f_code_CE315D6:
#data f_code_CE315D6

ptr_CE34944_to_f_code_CE3164C:
#data f_code_CE3164C

ptr_CE34948_to_f_code_CE3164C:
#data f_code_CE3164C

ptr_CE3494C_to_f_code_CE3164C:
#data f_code_CE3164C

ptr_CE34950_to_f_code_CE3158A:
#data f_code_CE3158A

ptr_CE34954_to_f_code_CE315D0:
#data f_code_CE315D0

ptr_CE34958_to_f_code_CE315E8:
#data f_code_CE315E8

ptr_CE3495C_to_f_code_CE31608:
#data f_code_CE31608

ptr_CE34960_to_f_code_CE3165E:
#data f_code_CE3165E

ptr_CE34964_to_data_CE3167E:
#data data_CE3167E

data_CE34968:
#data 0x00050005
#data 0x00060005
#data 0x00070006
#data 0x00070007
#data 0x00080008
#data 0x00080008
#data 0x000A0009
#data 0x000A000A

#align4
ptr_CE34988_to_f_code_CE31748:
#data f_code_CE31748

ptr_CE3498C_to_f_code_CE31DEA:
#data f_code_CE31DEA

ptr_CE34990_to_f_code_CE31ECE:
#data f_code_CE31ECE

ptr_CE34994_to_f_code_CE32524:
#data f_code_CE32524

ptr_CE34998_to_f_code_CE32CB6:
#data f_code_CE32CB6

ptr_CE3499C_to_f_code_CE32E32:
#data f_code_CE32E32

ptr_CE349A0_to_f_code_CE32030:
#data f_code_CE32030

ptr_CE349A4_to_f_code_CE322B2:
#data f_code_CE322B2

ptr_CE349A8_to_f_code_CE3240E:
#data f_code_CE3240E

ptr_CE349AC_to_f_code_CE330EC:
#data f_code_CE330EC

ptr_CE349B0_to_f_code_CE33BFE:
#data f_code_CE33BFE

ptr_CE349B4_to_f_code_CE33B8A:
#data f_code_CE33B8A

ptr_CE349B8_to_f_code_CE33748:
#data f_code_CE33748

ptr_CE349BC_to_f_code_CE31790:
#data f_code_CE31790

ptr_CE349C0_to_f_code_CE318EE:
#data f_code_CE318EE

ptr_CE349C4_to_data_CE319EC:
#data data_CE319EC

ptr_CE349C8_to_data_CE31B96:
#data data_CE31B96

ptr_CE349CC_to_f_code_CE31C58:
#data f_code_CE31C58

ptr_CE349D0_to_f_code_CE31CE0:
#data f_code_CE31CE0

ptr_CE349D4_to_f_code_CE31DFC:
#data f_code_CE31DFC

ptr_CE349D8_to_data_CE31E7A:
#data data_CE31E7A

ptr_CE349DC_to_f_code_CE31EAC:
#data f_code_CE31EAC

ptr_CE349E0_to_f_code_CE31F1C:
#data f_code_CE31F1C

ptr_CE349E4_to_data_CE31F9E:
#data data_CE31F9E

ptr_CE349E8_to_data_CE31FE0:
#data data_CE31FE0

ptr_CE349EC_to_f_code_CE3200E:
#data f_code_CE3200E

ptr_CE349F0_to_f_code_CE32042:
#data f_code_CE32042

ptr_CE349F4_to_data_CE320EC:
#data data_CE320EC

ptr_CE349F8_to_f_code_CE32150:
#data f_code_CE32150

ptr_CE349FC_to_data_CE32184:
#data data_CE32184

ptr_CE34A00_to_data_CE321CC:
#data data_CE321CC

ptr_CE34A04_to_f_code_CE3220E:
#data f_code_CE3220E

ptr_CE34A08_to_f_code_CE32230:
#data f_code_CE32230

ptr_CE34A0C_to_data_CE3237A:
#data data_CE3237A

ptr_CE34A10_to_data_CE323BC:
#data data_CE323BC

ptr_CE34A14_to_f_code_CE323EC:
#data f_code_CE323EC

ptr_CE34A18_to_f_code_CE322F8:
#data f_code_CE322F8

ptr_CE34A1C_to_data_CE3237A:
#data data_CE3237A

ptr_CE34A20_to_data_CE323BC:
#data data_CE323BC

ptr_CE34A24_to_f_code_CE323EC:
#data f_code_CE323EC

ptr_CE34A28_to_f_code_CE32454:
#data f_code_CE32454

ptr_CE34A2C_to_data_CE324D2:
#data data_CE324D2

ptr_CE34A30_to_f_code_CE32502:
#data f_code_CE32502

ptr_CE34A34_to_f_code_CE32536:
#data f_code_CE32536

ptr_CE34A38_to_data_CE32640:
#data data_CE32640

ptr_CE34A3C_to_data_CE32730:
#data data_CE32730

ptr_CE34A40_to_f_code_CE3295C:
#data f_code_CE3295C

ptr_CE34A44_to_f_code_CE32A08:
#data f_code_CE32A08

ptr_CE34A48_to_f_code_CE32AD6:
#data f_code_CE32AD6

ptr_CE34A4C_to_f_code_CE32CC8:
#data f_code_CE32CC8

ptr_CE34A50_to_data_CE32D7C:
#data data_CE32D7C

ptr_CE34A54_to_f_code_CE32DF2:
#data f_code_CE32DF2

ptr_CE34A58_to_data_CE32E6C:
#data data_CE32E6C

ptr_CE34A5C_to_data_CE32F08:
#data data_CE32F08

ptr_CE34A60_to_f_code_CE32F78:
#data f_code_CE32F78

ptr_CE34A64_to_data_CE33012:
#data data_CE33012

ptr_CE34A68_to_f_code_CE330AE:
#data f_code_CE330AE

ptr_CE34A6C_to_data_CE33128:
#data data_CE33128

ptr_CE34A70_to_data_CE331C6:
#data data_CE331C6

ptr_CE34A74_to_data_CE3322E:
#data data_CE3322E

ptr_CE34A78_to_f_code_CE33294:
#data f_code_CE33294

ptr_CE34A7C_to_f_code_CE33310:
#data f_code_CE33310

ptr_CE34A80_to_data_CE3344A:
#data data_CE3344A

ptr_CE34A84_to_data_CE33474:
#data data_CE33474

ptr_CE34A88_to_f_code_CE3349E:
#data f_code_CE3349E

ptr_CE34A8C_to_f_code_CE335B0:
#data f_code_CE335B0

ptr_CE34A90_to_data_CE335E8:
#data data_CE335E8

ptr_CE34A94_to_f_code_CE33630:
#data f_code_CE33630

ptr_CE34A98_to_f_code_CE33692:
#data f_code_CE33692

ptr_CE34A9C_to_data_CE336BE:
#data data_CE336BE

ptr_CE34AA0_to_f_code_CE336E2:
#data f_code_CE336E2

ptr_CE34AA4_to_f_code_CE33784:
#data f_code_CE33784

ptr_CE34AA8_to_data_CE33870:
#data data_CE33870

ptr_CE34AAC_to_data_CE33944:
#data data_CE33944

ptr_CE34AB0_to_f_code_CE33AC4:
#data f_code_CE33AC4

ptr_CE34AB4_to_f_code_CE33AC8:
#data f_code_CE33AC8

ptr_CE34AB8_to_f_code_CE33B62:
#data f_code_CE33B62

ptr_CE34ABC_to_f_code_CE33B9C:
#data f_code_CE33B9C

ptr_CE34AC0_to_f_code_CE33BDC:
#data f_code_CE33BDC

ptr_CE34AC4_to_f_code_CE33C34:
#data f_code_CE33C34

ptr_CE34AC8_to_f_code_CE33CA2:
#data f_code_CE33CA2

ptr_CE34ACC_to_data_CE33D16:
#data data_CE33D16

ptr_CE34AD0_to_f_code_CE33DC0:
#data f_code_CE33DC0

ptr_CE34AD4_to_f_code_CE33E3A:
#data f_code_CE33E3A

ptr_CE34AD8_to_f_code_CE33E74:
#data f_code_CE33E74

ptr_CE34ADC_to_f_code_CE33EC8:
#data f_code_CE33EC8

ptr_CE34AE0_to_f_code_CE33EF0:
#data f_code_CE33EF0

ptr_CE34AE4_to_f_code_CE33E74:
	#data f_code_CE33E74

ptr_CE34AE8_to_data_CE33F68:
	#data data_CE33F68

ptr_CE34AEC_to_data_CE33FFC:
	#data data_CE33FFC

ptr_CE34AF0_to_data_CE34098:
	#data data_CE34098

ptr_CE34AF4_to_f_code_CE34122:
	#data f_code_CE34122

ptr_CE34AF8_to_data_CE34180:
	#data data_CE34180

ptr_CE34AFC_to_f_code_CE3420C:
	#data f_code_CE3420C

ptr_CE34B00_to_f_code_CE3420C:
	#data f_code_CE3420C

ptr_CE34B04_to_f_code_CE3421A:
	#data f_code_CE3421A
