;==============================================
;Son Son Program
;==============================================

#symbol fn_extern_8C054508 0x8C054508
#symbol fn_extern_8C054B34 0x8C054B34
#symbol fn_extern_8C05496C 0x8C05496C
#symbol fn_extern_8C054D04 0x8C054D04
#symbol fn_extern_8C053F6E 0x8C053F6E
#symbol fn_extern_8C053E00 0x8C053E00
#symbol fn_extern_8C0542E0 0x8C0542E0
#symbol extern_8C054E58 0x8C054E58
#symbol extern_8C055C3A 0x8C055C3A
#symbol fn_extern_8C0530D8 0x8C0530D8
#symbol extern_8C055244 0x8C055244
#symbol extern_8C0559DA 0x8C0559DA
#symbol fn_extern_8C054DA0 0x8C054DA0
#symbol extern_8C054D1C 0x8C054D1C
#symbol fn_extern_8C052B4C 0x8C052B4C
#symbol fn_extern_8C034E8C 0x8C034E8C
#symbol fn_extern_8C04223A 0x8C04223A
#symbol fn_extern_8C0D13BC 0x8C0D13BC
#symbol fn_extern_8C0D0584 0x8C0D0584
#symbol extern_8C2896B0 0x8C2896B0
#symbol extern_8C0511E2 0x8C0511E2
#symbol extern_8C052C84 0x8C052C84
#symbol fn_extern_8C034DEE 0x8C034DEE
#symbol fn_extern_8C051648 0x8C051648
#symbol extern_8C050084 0x8C050084
#symbol extern_8C04FF88 0x8C04FF88
#symbol fn_extern_8C04FEA8 0x8C04FEA8
#symbol fn_extern_8C050048 0x8C050048
#symbol fn_extern_8C052CE2 0x8C052CE2
#symbol fn_extern_8C052DAC 0x8C052DAC
#symbol fn_extern_8C05176E 0x8C05176E
#symbol fn_extern_8C056DE4 0x8C056DE4
#symbol fn_extern_8C0332E0 0x8C0332E0
#symbol fn_extern_8C042008 0x8C042008
#symbol fn_extern_8C0511B4 0x8C0511B4
#symbol fn_extern_8C046C8A 0x8C046C8A
#symbol fn_extern_8C035162 0x8C035162
#symbol fn_extern_8C0514B8 0x8C0514B8
#symbol fn_extern_8C03319E 0x8C03319E
#symbol fn_extern_8C05218A 0x8C05218A
#symbol fn_extern_8C05115A 0x8C05115A
#symbol extern_8C055D54 0x8C055D54
#symbol fn_extern_8C053082 0x8C053082
#symbol extern_8C0518A0 0x8C0518A0
#symbol extern_8C050834 0x8C050834
#symbol fn_extern_8C07EDB8 0x8C07EDB8
#symbol fn_extern_8C05264C 0x8C05264C
#symbol fn_extern_8C0522E0 0x8C0522E0
#symbol fn_extern_8C07F7EC 0x8C07F7EC
#symbol fn_extern_8C02FEC4 0x8C02FEC4
#symbol extern_8C0310F2 0x8C0310F2
#symbol extern_8C289628 0x8C289628
#symbol fn_extern_8C03544C 0x8C03544C
#symbol fn_extern_8C05A2CC 0x8C05A2CC
#symbol extern_8C26823C 0x8C26823C
#symbol extern_8C26A518 0x8C26A518
#symbol extern_8C0F047C 0x8C0F047C
#symbol fn_extern_8C0FD75C 0x8C0FD75C
#symbol fn_extern_8C0805D8 0x8C0805D8
#symbol extern_8C26A5A8 0x8C26A5A8
#symbol extern_8C26A5A0 0x8C26A5A0
#symbol fn_extern_8C0802D8 0x8C0802D8
#symbol fn_extern_8C059150 0x8C059150
#symbol fn_extern_8C104DF8 0x8C104DF8
#symbol extern_8C050EA4 0x8C050EA4
#symbol fn_extern_8C045790 0x8C045790
#symbol extern_8C103660 0x8C103660
#symbol fn_extern_8C056F2A 0x8C056F2A
#symbol extern_8C05933C 0x8C05933C
#symbol extern_8C0FDAB6 0x8C0FDAB6
#symbol fn_extern_8C02FD26 0x8C02FD26
#symbol fn_extern_8C1294C8 0x8C1294C8
#symbol fn_extern_8C04CC1C 0x8C04CC1C
#symbol fn_extern_8C02FDB0 0x8C02FDB0
#symbol extern_8C1025CA 0x8C1025CA
#symbol code_extern_8C04CE3A 0x8C04CE3A
#symbol fn_extern_8C051854 0x8C051854
#symbol fn_extern_8C129728 0x8C129728



;======================================================================

start_CE30000:
mov.w @(data_CE300DA,pc),r0 ; r0 set to 0x428		; addr: CE30000
mov 0x70,r5 ; r5 set to 0x70		; addr: CE30002
mov.l @(ptr_CE300E0_to_ptr_CE36264_to_data_CE306E6,pc),r7 ; r7 set to 0xCE36264		; addr: CE30004
mov.l @(r0,r4),r6		; addr: CE30006
mov 0x00,r4 ; r4 set to 0x00		; addr: CE30008

l_code_CE3000A:
mov r4,r0 ; r0 set to 0x00		; addr: CE3000A
nop 		; addr: CE3000C
add 0x04,r4 ; r4 set to 0x04		; addr: CE3000E
mov.l @(r0,r7),r3		; addr: CE30010
cmp/hs r5,r4		; addr: CE30012
bf/s l_code_CE3000A		; addr: CE30014
mov.l r3,@(r0,r6) 		; addr: CE30016
rts 		; addr: CE30018
nop 		; addr: CE3001A
;-------------------------------------------------------------------------------

f_code_CE3001C:
mov.l r14,@-r15		; addr: CE3001C
sts.l pr,@-r15		; addr: CE3001E
mov.l @(ptr_CE300E4_to_fn_extern_8C054508,pc),r3 ; r3 set to 0x8C054508		; addr: CE30020
jsr @r3		; addr: CE30022
mov r4,r14		; addr: CE30024
extu.b r0,r0		; addr: CE30026
tst r0,r0		; addr: CE30028
bf l_code_CE30100		; addr: CE3002A
mov.l @(ptr_CE300E8_to_fn_extern_8C054B34,pc),r3 ; r3 set to 0x8C054B34		; addr: CE3002C
jsr @r3		; addr: CE3002E
mov r14,r4		; addr: CE30030
extu.b r0,r0		; addr: CE30032
tst r0,r0		; addr: CE30034
bf l_code_CE30100		; addr: CE30036
mov.l @(ptr_CE300EC_to_fn_extern_8C05496C,pc),r3 ; r3 set to 0x8C05496C		; addr: CE30038
jsr @r3		; addr: CE3003A
mov r14,r4		; addr: CE3003C
extu.b r0,r0		; addr: CE3003E
tst r0,r0		; addr: CE30040
bf l_code_CE30100		; addr: CE30042
mov.l @(ptr_CE300F0_to_fn_extern_8C054D04,pc),r3 ; r3 set to 0x8C054D04		; addr: CE30044
jsr @r3		; addr: CE30046
mov r14,r4		; addr: CE30048
extu.b r0,r0		; addr: CE3004A
tst r0,r0		; addr: CE3004C
bf l_code_CE30100		; addr: CE3004E
bsr data_CE30300		; addr: CE30050
mov r14,r4		; addr: CE30052
extu.b r0,r0		; addr: CE30054
tst r0,r0		; addr: CE30056
bf l_code_CE30100		; addr: CE30058
bsr data_CE303F0		; addr: CE3005A
mov r14,r4		; addr: CE3005C
extu.b r0,r0		; addr: CE3005E
tst r0,r0		; addr: CE30060
bf l_code_CE30100		; addr: CE30062
bsr data_CE30460		; addr: CE30064
mov r14,r4		; addr: CE30066
extu.b r0,r0		; addr: CE30068
tst r0,r0		; addr: CE3006A
bf l_code_CE30100		; addr: CE3006C
bsr data_CE30214		; addr: CE3006E
mov r14,r4		; addr: CE30070
extu.b r0,r0		; addr: CE30072
tst r0,r0		; addr: CE30074
bf l_code_CE30100		; addr: CE30076
bsr data_CE30106		; addr: CE30078
mov r14,r4		; addr: CE3007A
extu.b r0,r0		; addr: CE3007C
tst r0,r0		; addr: CE3007E
bf l_code_CE30100		; addr: CE30080
bsr data_CE30178		; addr: CE30082
mov r14,r4		; addr: CE30084
extu.b r0,r0		; addr: CE30086
tst r0,r0		; addr: CE30088
bf l_code_CE30100		; addr: CE3008A
bsr data_CE3027A		; addr: CE3008C
mov r14,r4		; addr: CE3008E
extu.b r0,r0		; addr: CE30090
tst r0,r0		; addr: CE30092
bf l_code_CE30100		; addr: CE30094
bsr data_CE30368		; addr: CE30096
mov r14,r4		; addr: CE30098
extu.b r0,r0		; addr: CE3009A
tst r0,r0		; addr: CE3009C
bf l_code_CE30100		; addr: CE3009E
bsr data_CE3050C		; addr: CE300A0
mov r14,r4		; addr: CE300A2
extu.b r0,r0		; addr: CE300A4
tst r0,r0		; addr: CE300A6
bf l_code_CE30100		; addr: CE300A8
bsr l_code_CE30572		; addr: CE300AA
mov r14,r4		; addr: CE300AC
tst r0,r0		; addr: CE300AE
bf l_code_CE30100		; addr: CE300B0
bsr data_CE305AC		; addr: CE300B2
mov r14,r4		; addr: CE300B4
tst r0,r0		; addr: CE300B6
bf l_code_CE30100		; addr: CE300B8
mov.w @(data_CE300DC,pc),r5 ; r5 set to 0x39C		; addr: CE300BA
mov.l @(ptr_CE300F4_to_fn_extern_8C053F6E,pc),r3 ; r3 set to 0x8C053F6E		; addr: CE300BC
add r14,r5 ; r5 ??? bc r14 is ???		; addr: CE300BE
jsr @r3		; addr: CE300C0
mov r14,r4		; addr: CE300C2
extu.b r0,r0		; addr: CE300C4
tst r0,r0		; addr: CE300C6
bf l_code_CE30100		; addr: CE300C8
mov.l @(ptr_CE300F8_to_fn_extern_8C053E00,pc),r3 ; r3 set to 0x8C053E00		; addr: CE300CA
jsr @r3		; addr: CE300CC
mov r14,r4		; addr: CE300CE
lds.l @r15+,pr 		; addr: CE300D0
mov.l @(ptr_CE300FC_to_fn_extern_8C0542E0,pc),r2 ; r2 set to 0x8C0542E0		; addr: CE300D2
mov r14,r4		; addr: CE300D4
jmp @r2		; addr: CE300D6
mov.l @r15+,r14		; addr: CE300D8

data_CE300DA:
#data 0x0428		; addr: CE300DA

data_CE300DC:
#data 0x039C		; addr: CE300DC
#data 0x0000		; addr: CE300DE

#align4
ptr_CE300E0_to_ptr_CE36264_to_data_CE306E6:
#data ptr_CE36264_to_data_CE306E6		; addr: CE300E0

ptr_CE300E4_to_fn_extern_8C054508:
#data fn_extern_8C054508		; addr: CE300E4

ptr_CE300E8_to_fn_extern_8C054B34:
#data fn_extern_8C054B34		; addr: CE300E8

ptr_CE300EC_to_fn_extern_8C05496C:
#data fn_extern_8C05496C		; addr: CE300EC

ptr_CE300F0_to_fn_extern_8C054D04:
#data fn_extern_8C054D04		; addr: CE300F0

ptr_CE300F4_to_fn_extern_8C053F6E:
#data fn_extern_8C053F6E		; addr: CE300F4

ptr_CE300F8_to_fn_extern_8C053E00:
#data fn_extern_8C053E00		; addr: CE300F8

ptr_CE300FC_to_fn_extern_8C0542E0:
#data fn_extern_8C0542E0		; addr: CE300FC


l_code_CE30100:
lds.l @r15+,pr 		; addr: CE30100
rts 		; addr: CE30102
mov.l @r15+,r14		; addr: CE30104
;-------------------------------------------------------------------------------

data_CE30106:
#data 0x2FE6		; addr: CE30106
#data 0x6E43		; addr: CE30108
#data 0x4F22		; addr: CE3010A
#data 0xD53A		; addr: CE3010C
#data 0x966C		; addr: CE3010E
#data 0xD33A		; addr: CE30110
#data 0x430B		; addr: CE30112
#data 0x36EC		; addr: CE30114
#data 0x600C		; addr: CE30116
#data 0x2008		; addr: CE30118
#data 0x8914		; addr: CE3011A
#data 0x9066		; addr: CE3011C
#data 0x00EC		; addr: CE3011E
#data 0x600C		; addr: CE30120
#data 0x8802		; addr: CE30122
#data 0x8B0A		; addr: CE30124
#data 0x9062		; addr: CE30126
#data 0x02EC		; addr: CE30128
#data 0x2228		; addr: CE3012A
#data 0x8B06		; addr: CE3012C
#data 0x905F		; addr: CE3012E
#data 0x03EC		; addr: CE30130
#data 0x2338		; addr: CE30132
#data 0x8B07		; addr: CE30134
#data 0x02EC		; addr: CE30136
#data 0x7201		; addr: CE30138
#data 0x0E24		; addr: CE3013A

data_CE3013C:
#data 0x9459		; addr: CE3013C
#data 0x34EC		; addr: CE3013E
#data 0x854F		; addr: CE30140
#data 0x2008		; addr: CE30142
#data 0x8903		; addr: CE30144

data_CE30146:
#data 0x4F26		; addr: CE30146
#data 0xE000		; addr: CE30148
#data 0x000B		; addr: CE3014A
#data 0x6EF6		; addr: CE3014C
;-------------------------------------------------------------------------------

data_CE3014E:
#data 0x954C		; addr: CE3014E
#data 0xD32B		; addr: CE30150
#data 0x35EC		; addr: CE30152
#data 0x430B		; addr: CE30154
#data 0x64E3		; addr: CE30156
#data 0xE400		; addr: CE30158
#data 0x6043		; addr: CE3015A
#data 0x0009		; addr: CE3015C
#data 0x80E5		; addr: CE3015E
#data 0xE515		; addr: CE30160
#data 0x80E7		; addr: CE30162
#data 0x80E6		; addr: CE30164
#data 0x9045		; addr: CE30166
#data 0xD326		; addr: CE30168
#data 0x0E44		; addr: CE3016A
#data 0x430B		; addr: CE3016C
#data 0x64E3		; addr: CE3016E
#data 0xE001		; addr: CE30170
#data 0x4F26		; addr: CE30172
#data 0x000B		; addr: CE30174
#data 0x6EF6		; addr: CE30176
;-------------------------------------------------------------------------------

data_CE30178:
#data 0x2FE6		; addr: CE30178
#data 0x6E43		; addr: CE3017A
#data 0x4F22		; addr: CE3017C
#data 0xD522		; addr: CE3017E
#data 0x9639		; addr: CE30180
#data 0xD322		; addr: CE30182
#data 0x430B		; addr: CE30184
#data 0x36EC		; addr: CE30186
#data 0x600C		; addr: CE30188
#data 0x2008		; addr: CE3018A
#data 0x8912		; addr: CE3018C
#data 0xD320		; addr: CE3018E
#data 0x430B		; addr: CE30190
#data 0x64E3		; addr: CE30192
#data 0x600C		; addr: CE30194
#data 0x2008		; addr: CE30196
#data 0x890C		; addr: CE30198
#data 0x9027		; addr: CE3019A
#data 0x00EC		; addr: CE3019C
#data 0x600C		; addr: CE3019E
#data 0x8802		; addr: CE301A0
#data 0x8B0E		; addr: CE301A2
#data 0x9023		; addr: CE301A4
#data 0x02EC		; addr: CE301A6
#data 0x2228		; addr: CE301A8
#data 0x8B0A		; addr: CE301AA
#data 0x9020		; addr: CE301AC
#data 0x03EC		; addr: CE301AE
#data 0x2338		; addr: CE301B0
#data 0x8903		; addr: CE301B2

data_CE301B4:
#data 0x4F26		; addr: CE301B4
#data 0xE000		; addr: CE301B6
#data 0x000B		; addr: CE301B8
#data 0x6EF6		; addr: CE301BA
;-------------------------------------------------------------------------------

data_CE301BC:
#data 0x03EC		; addr: CE301BC
#data 0x7301		; addr: CE301BE
#data 0x0E34		; addr: CE301C0

data_CE301C2:
#data 0x9518		; addr: CE301C2
#data 0x35ECD20E		; addr: CE301C4
#data 0x64E3420B		; addr: CE301C8
#data 0x80E5E000		; addr: CE301CC
#data 0x80E7E301		; addr: CE301D0
#data 0x80E6E515		; addr: CE301D4
#data 0x0E34900C		; addr: CE301D8
#data 0x430BD309		; addr: CE301DC
#data 0xE00164E3		; addr: CE301E0
#data 0x000B4F26		; addr: CE301E4
#data 0x03646EF6		; addr: CE301E8
#data 0x01FC01F9		; addr: CE301EC
#data 0x02A401D4		; addr: CE301F0
#data 0x036C01E9		; addr: CE301F4

#align4
ptr_CE301F8_to_data_CE361D0:
#data data_CE361D0		; addr: CE301F8
#data extern_8C054E58		; addr: CE301FC
#data extern_8C055C3A		; addr: CE30200
#data fn_extern_8C0530D8		; addr: CE30204

#align4
ptr_CE30208_to_data_CE361E0:
#data data_CE361E0		; addr: CE30208
#data extern_8C055244		; addr: CE3020C
#data extern_8C0559DA		; addr: CE30210

#align4
data_CE30214:
#data 0x6E432FE6		; addr: CE30214
#data 0xD5344F22		; addr: CE30218
#data 0xD3349660		; addr: CE3021C
#data 0x36EC430B		; addr: CE30220
#data 0x2008600C		; addr: CE30224
#data 0x905A890C		; addr: CE30228
#data 0x600C00EC		; addr: CE3022C
#data 0x8B0E8802		; addr: CE30230
#data 0x02EC9056		; addr: CE30234
#data 0x8B0A2228		; addr: CE30238
#data 0x03EC9053		; addr: CE3023C
#data 0x89032338		; addr: CE30240

#align4
data_CE30244:
#data 0xE0004F26		; addr: CE30244
#data 0x6EF6000B		; addr: CE30248
;-------------------------------------------------------------------------------

#align4
data_CE3024C:
#data 0x730103EC		; addr: CE3024C
#data 0x0E34		; addr: CE30250

data_CE30252:
#data 0x9545		; addr: CE30252
#data 0x35ECD227		; addr: CE30254
#data 0x64E3420B		; addr: CE30258
#data 0x80E5E000		; addr: CE3025C
#data 0x80E7E302		; addr: CE30260
#data 0x80E6E515		; addr: CE30264
#data 0x0E34903E		; addr: CE30268
#data 0x430BD322		; addr: CE3026C
#data 0xE00164E3		; addr: CE30270
#data 0x000B4F26		; addr: CE30274
#data 0x6EF6		; addr: CE30278
;-------------------------------------------------------------------------------

data_CE3027A:
#data 0x2FE6		; addr: CE3027A
#data 0x4F226E43		; addr: CE3027C
#data 0x9632D51E		; addr: CE30280
#data 0x430BD31A		; addr: CE30284
#data 0x600C36EC		; addr: CE30288
#data 0x890C2008		; addr: CE3028C
#data 0x00EC9027		; addr: CE30290
#data 0x8802600C		; addr: CE30294
#data 0x90238B0E		; addr: CE30298
#data 0x222802EC		; addr: CE3029C
#data 0x90208B0A		; addr: CE302A0
#data 0x233803EC		; addr: CE302A4
#data 0x8903		; addr: CE302A8

data_CE302AA:
#data 0x4F26		; addr: CE302AA
#data 0x000BE000		; addr: CE302AC
#data 0x6EF6		; addr: CE302B0
;-------------------------------------------------------------------------------

data_CE302B2:
#data 0x03EC		; addr: CE302B2
#data 0x0E347301		; addr: CE302B4

#align4
data_CE302B8:
#data 0xD20E9517		; addr: CE302B8
#data 0x420B35EC		; addr: CE302BC
#data 0xE00064E3		; addr: CE302C0
#data 0xE30380E5		; addr: CE302C4
#data 0xE51580E7		; addr: CE302C8
#data 0x900B80E6		; addr: CE302CC
#data 0xD3090E34		; addr: CE302D0
#data 0x64E3430B		; addr: CE302D4
#data 0x4F26E001		; addr: CE302D8
#data 0x6EF6000B		; addr: CE302DC
;-------------------------------------------------------------------------------
#data 0x01F90374		; addr: CE302E0
#data 0x01D401FC		; addr: CE302E4
#data 0x037C01E9		; addr: CE302E8

#align4
ptr_CE302EC_to_data_CE361EA:
#data data_CE361EA		; addr: CE302EC
#data extern_8C054E58		; addr: CE302F0
#data extern_8C055C3A		; addr: CE302F4
#data fn_extern_8C0530D8		; addr: CE302F8

#align4
ptr_CE302FC_to_data_CE361FA:
#data data_CE361FA		; addr: CE302FC

data_CE30300:
#data 0x6E432FE6		; addr: CE30300
#data 0xD5354F22		; addr: CE30304
#data 0xD3359661		; addr: CE30308
#data 0x36EC430B		; addr: CE3030C
#data 0x2008600C		; addr: CE30310
#data 0x905B890D		; addr: CE30314
#data 0x623003EE		; addr: CE30318
#data 0x89082228		; addr: CE3031C
#data 0x00EC9057		; addr: CE30320
#data 0x8802600C		; addr: CE30324
#data 0x90538B0A		; addr: CE30328
#data 0x222802EC		; addr: CE3032C
#data 0x8903		; addr: CE30330

data_CE30332:
#data 0x4F26		; addr: CE30332
#data 0x000BE000		; addr: CE30334
#data 0x6EF6		; addr: CE30338
;-------------------------------------------------------------------------------

data_CE3033A:
#data 0x03EC		; addr: CE3033A
#data 0x0E347301		; addr: CE3033C

#align4
data_CE30340:
#data 0xD2289545		; addr: CE30340
#data 0x420B35EC		; addr: CE30344
#data 0xE00064E3		; addr: CE30348
#data 0xE30480E5		; addr: CE3034C
#data 0xE51D80E7		; addr: CE30350
#data 0x903E80E6		; addr: CE30354
#data 0xD3230E34		; addr: CE30358
#data 0x64E3430B		; addr: CE3035C
#data 0x4F26E001		; addr: CE30360
#data 0x6EF6000B		; addr: CE30364
;-------------------------------------------------------------------------------

#align4
data_CE30368:
#data 0x6E432FE6		; addr: CE30368
#data 0xD51F4F22		; addr: CE3036C
#data 0xD31B9632		; addr: CE30370
#data 0x36EC430B		; addr: CE30374
#data 0x2008600C		; addr: CE30378
#data 0x9028890C		; addr: CE3037C
#data 0x600C00EC		; addr: CE30380
#data 0x8B0E8802		; addr: CE30384
#data 0x02EC9027		; addr: CE30388
#data 0x8B0A2228		; addr: CE3038C
#data 0x03EC9020		; addr: CE30390
#data 0x89032338		; addr: CE30394

#align4
data_CE30398:
#data 0xE0004F26		; addr: CE30398
#data 0x6EF6000B		; addr: CE3039C
;-------------------------------------------------------------------------------

#align4
data_CE303A0:
#data 0x730103EC		; addr: CE303A0
#data 0x0E34		; addr: CE303A4

data_CE303A6:
#data 0x9517		; addr: CE303A6
#data 0x35ECD20E		; addr: CE303A8
#data 0x64E3420B		; addr: CE303AC
#data 0x80E5E000		; addr: CE303B0
#data 0x80E7E305		; addr: CE303B4
#data 0x80E6E515		; addr: CE303B8
#data 0x0E34900B		; addr: CE303BC
#data 0x430BD309		; addr: CE303C0
#data 0xE00164E3		; addr: CE303C4
#data 0x000B4F26		; addr: CE303C8
#data 0x03846EF6		; addr: CE303CC
#data 0x01F9040C		; addr: CE303D0
#data 0x01E901D4		; addr: CE303D4
#data 0x01FC038C		; addr: CE303D8

#align4
ptr_CE303DC_to_data_CE3620E:
#data data_CE3620E		; addr: CE303DC
#data extern_8C054E58		; addr: CE303E0
#data extern_8C055C3A		; addr: CE303E4
#data fn_extern_8C0530D8		; addr: CE303E8

#align4
ptr_CE303EC_to_data_CE3621E:
#data data_CE3621E		; addr: CE303EC

data_CE303F0:
#data 0x6E432FE6		; addr: CE303F0
#data 0xD5404F22		; addr: CE303F4
#data 0xD3409674		; addr: CE303F8
#data 0x36EC430B		; addr: CE303FC
#data 0x2008600C		; addr: CE30400
#data 0x906E8911		; addr: CE30404
#data 0x623003EE		; addr: CE30408
#data 0x890C2228		; addr: CE3040C
#data 0x00EC906A		; addr: CE30410
#data 0x8802600C		; addr: CE30414
#data 0x90668B0E		; addr: CE30418
#data 0x222802EC		; addr: CE3041C
#data 0x90638B0A		; addr: CE30420
#data 0x233803EC		; addr: CE30424
#data 0x8903		; addr: CE30428

data_CE3042A:
#data 0x4F26		; addr: CE3042A
#data 0x000BE000		; addr: CE3042C
#data 0x6EF6		; addr: CE30430
;-------------------------------------------------------------------------------

data_CE30432:
#data 0x03EC		; addr: CE30432
#data 0x0E347301		; addr: CE30434

#align4
data_CE30438:
#data 0xD2319554		; addr: CE30438
#data 0x420B35EC		; addr: CE3043C
#data 0xE00064E3		; addr: CE30440
#data 0xE30680E5		; addr: CE30444
#data 0xE51D80E7		; addr: CE30448
#data 0x904E80E6		; addr: CE3044C
#data 0xD32C0E34		; addr: CE30450
#data 0x64E3430B		; addr: CE30454
#data 0x4F26E001		; addr: CE30458
#data 0x6EF6000B		; addr: CE3045C
;-------------------------------------------------------------------------------

#align4
data_CE30460:
#data 0x6E432FE6		; addr: CE30460
#data 0xD5284F22		; addr: CE30464
#data 0xD3249642		; addr: CE30468
#data 0x36EC430B		; addr: CE3046C
#data 0x2008600C		; addr: CE30470
#data 0x90368911		; addr: CE30474
#data 0x623003EE		; addr: CE30478
#data 0x890C2228		; addr: CE3047C
#data 0x00EC9032		; addr: CE30480
#data 0x8802600C		; addr: CE30484
#data 0x902E8B0E		; addr: CE30488
#data 0x222802EC		; addr: CE3048C
#data 0x902B8B0A		; addr: CE30490
#data 0x233803EC		; addr: CE30494
#data 0x8903		; addr: CE30498

data_CE3049A:
#data 0x4F26		; addr: CE3049A
#data 0x000BE000		; addr: CE3049C
#data 0x6EF6		; addr: CE304A0
;-------------------------------------------------------------------------------

data_CE304A2:
#data 0x03EC		; addr: CE304A2
#data 0x0E347301		; addr: CE304A4

#align4
data_CE304A8:
#data 0xD2159522		; addr: CE304A8
#data 0x420B35EC		; addr: CE304AC
#data 0xE00064E3		; addr: CE304B0
#data 0xE30780E5		; addr: CE304B4
#data 0xE51D80E7		; addr: CE304B8
#data 0x901680E6		; addr: CE304BC
#data 0xD3100E34		; addr: CE304C0
#data 0x64E3430B		; addr: CE304C4
#data 0x90139413		; addr: CE304C8
#data 0x814534EC		; addr: CE304CC
#data 0x03EC9011		; addr: CE304D0
#data 0x89022338		; addr: CE304D4
#data 0xE30C9009		; addr: CE304D8
#data 0x0E34		; addr: CE304DC

data_CE304DE:
#data 0x4F26		; addr: CE304DE
#data 0x6EF6000B		; addr: CE304E0
;-------------------------------------------------------------------------------
#data 0x040C0394		; addr: CE304E4
#data 0x01FC01F9		; addr: CE304E8
#data 0x01E901D4		; addr: CE304EC
#data 0x02A403A4		; addr: CE304F0
#data 0x052500F0		; addr: CE304F4

#align4
ptr_CE304F8_to_data_CE36232:
#data data_CE36232		; addr: CE304F8
#data extern_8C054E58		; addr: CE304FC
#data extern_8C055C3A		; addr: CE30500
#data fn_extern_8C0530D8		; addr: CE30504

#align4
ptr_CE30508_to_data_CE36242:
#data data_CE36242		; addr: CE30508

data_CE3050C:
#data 0x6E432FE6		; addr: CE3050C
#data 0xD5444F22		; addr: CE30510
#data 0xD3449680		; addr: CE30514
#data 0x36EC430B		; addr: CE30518
#data 0x2008600C		; addr: CE3051C
#data 0x907A890C		; addr: CE30520
#data 0x600C00EC		; addr: CE30524
#data 0x8B0E8802		; addr: CE30528
#data 0x02EC9076		; addr: CE3052C
#data 0x8B0A2228		; addr: CE30530
#data 0x03EC9073		; addr: CE30534
#data 0x89032338		; addr: CE30538

#align4
data_CE3053C:
#data 0xE0004F26		; addr: CE3053C
#data 0x6EF6000B		; addr: CE30540
;-------------------------------------------------------------------------------

#align4
data_CE30544:
#data 0x730103EC		; addr: CE30544
#data 0x0E34		; addr: CE30548

data_CE3054A:
#data 0x9565		; addr: CE3054A
#data 0x35ECD237		; addr: CE3054C
#data 0x64E3420B		; addr: CE30550
#data 0x80E5E000		; addr: CE30554
#data 0x80E7E30B		; addr: CE30558
#data 0x80E6E515		; addr: CE3055C
#data 0x0E34905E		; addr: CE30560
#data 0x430BD332		; addr: CE30564
#data 0xE00164E3		; addr: CE30568
#data 0x000B4F26		; addr: CE3056C
#data 0x6EF6		; addr: CE30570
;-------------------------------------------------------------------------------

l_code_CE30572:
mov.l r14,@-r15		; addr: CE30572
mov r4,r14		; addr: CE30574
sts.l pr,@-r15		; addr: CE30576
mov.l @(ptr_CE30634_to_fn_extern_8C054DA0,pc),r3 ; r3 set to 0x8C054DA0		; addr: CE30578
jsr @r3		; addr: CE3057A
mov 0x08,r5 ; r5 set to 0x08		; addr: CE3057C
extu.b r0,r0		; addr: CE3057E
tst r0,r0		; addr: CE30580
bf l_code_CE3058C		; addr: CE30582
lds.l @r15+,pr 		; addr: CE30584
mov 0x00,r0 ; r0 set to 0x00		; addr: CE30586
rts 		; addr: CE30588
mov.l @r15+,r14		; addr: CE3058A
;-------------------------------------------------------------------------------

l_code_CE3058C:
mov.w @(data_CE30620,pc),r0 ; r0 set to 0x1E9		; addr: CE3058C
mov 0x08,r3 ; r3 set to 0x08		; addr: CE3058E
mov 0x15,r5 ; r5 set to 0x15		; addr: CE30590
mov.b r3,@(r0,r14) 		; addr: CE30592
mov 0x00,r0 ; r0 set to 0x00		; addr: CE30594
mov.l @(ptr_CE30630_to_fn_extern_8C0530D8,pc),r3 ; r3 set to 0x8C0530D8		; addr: CE30596
mov.b r0,@(0x05,r14) 		; addr: CE30598
jsr @r3		; addr: CE3059A
mov r14,r4		; addr: CE3059C
mov 0x00,r0 ; r0 set to 0x00		; addr: CE3059E
mov.b r0,@(0x07,r14) 		; addr: CE305A0
mov.b r0,@(0x06,r14) 		; addr: CE305A2
mov 0x01,r0 ; r0 set to 0x01		; addr: CE305A4
lds.l @r15+,pr 		; addr: CE305A6
rts 		; addr: CE305A8
mov.l @r15+,r14		; addr: CE305AA
;-------------------------------------------------------------------------------

#align4
data_CE305AC:
#data 0x4F222FE6		; addr: CE305AC
#data 0x430BD321		; addr: CE305B0
#data 0x20086E43		; addr: CE305B4
#data 0x90328904		; addr: CE305B8
#data 0x632002EE		; addr: CE305BC
#data 0x8B032338		; addr: CE305C0

#align4
data_CE305C4:
#data 0xE0004F26		; addr: CE305C4
#data 0x6EF6000B		; addr: CE305C8
;-------------------------------------------------------------------------------

#align4
data_CE305CC:
#data 0xE30A9028		; addr: CE305CC
#data 0x0E34E51D		; addr: CE305D0
#data 0xD316E000		; addr: CE305D4
#data 0x430B80E5		; addr: CE305D8
#data 0xE00064E3		; addr: CE305DC
#data 0x80E680E7		; addr: CE305E0
#data 0x4F26E001		; addr: CE305E4
#data 0x6EF6000B		; addr: CE305E8
;-------------------------------------------------------------------------------

#align4
data_CE305EC:
#data 0x4F222FE6		; addr: CE305EC
#data 0x6E43B024		; addr: CE305F0
#data 0x8B072008		; addr: CE305F4
#data 0x64E3B03B		; addr: CE305F8
#data 0x8B032008		; addr: CE305FC
#data 0x64E3B052		; addr: CE30600
#data 0x89032008		; addr: CE30604

#align4
data_CE30608:
#data 0xE0014F26		; addr: CE30608
#data 0x6EF6000B		; addr: CE3060C
;-------------------------------------------------------------------------------

#align4
data_CE30610:
#data 0x4F26E000		; addr: CE30610
#data 0x6EF6000B		; addr: CE30614
;-------------------------------------------------------------------------------
#data 0x01F903AC		; addr: CE30618
#data 0x01D401FC		; addr: CE3061C

data_CE30620:
#data 0x01E9		; addr: CE30620
#data 0x040C		; addr: CE30622

#align4
ptr_CE30624_to_data_CE36252:
#data data_CE36252		; addr: CE30624
#data extern_8C054E58		; addr: CE30628
#data extern_8C055C3A		; addr: CE3062C

#align4
ptr_CE30630_to_fn_extern_8C0530D8:
#data fn_extern_8C0530D8		; addr: CE30630

ptr_CE30634_to_fn_extern_8C054DA0:
#data fn_extern_8C054DA0		; addr: CE30634
#data extern_8C054D1C		; addr: CE30638

#align4
data_CE3063C:
#data 0x6E432FE6		; addr: CE3063C
#data 0xD53D4F22		; addr: CE30640
#data 0xD33D966C		; addr: CE30644
#data 0x36EC430B		; addr: CE30648
#data 0x2008600C		; addr: CE3064C
#data 0x90668904		; addr: CE30650
#data 0x632002EE		; addr: CE30654
#data 0x8B032338		; addr: CE30658

#align4
data_CE3065C:
#data 0xE0004F26		; addr: CE3065C
#data 0x6EF6000B		; addr: CE30660
;-------------------------------------------------------------------------------

#align4
data_CE30664:
#data 0xE304905E		; addr: CE30664
#data 0xE0010E34		; addr: CE30668
#data 0x000B4F26		; addr: CE3066C
#data 0x6EF6		; addr: CE30670
;-------------------------------------------------------------------------------

data_CE30672:
#data 0x2FE6		; addr: CE30672
#data 0x4F226E43		; addr: CE30674
#data 0x9654D531		; addr: CE30678
#data 0x430BD32F		; addr: CE3067C
#data 0x600C36EC		; addr: CE30680
#data 0x89042008		; addr: CE30684
#data 0x02EE904B		; addr: CE30688
#data 0x23386320		; addr: CE3068C
#data 0x8B03		; addr: CE30690

data_CE30692:
#data 0x4F26		; addr: CE30692
#data 0x000BE000		; addr: CE30694
#data 0x6EF6		; addr: CE30698
;-------------------------------------------------------------------------------

data_CE3069A:
#data 0x9043		; addr: CE3069A
#data 0x0E34E306		; addr: CE3069C
#data 0x4F26E001		; addr: CE306A0
#data 0x6EF6000B		; addr: CE306A4
;-------------------------------------------------------------------------------

#align4
data_CE306A8:
#data 0x6E432FE6		; addr: CE306A8
#data 0xD5254F22		; addr: CE306AC
#data 0xD322963A		; addr: CE306B0
#data 0x36EC430B		; addr: CE306B4
#data 0x2008600C		; addr: CE306B8
#data 0x90308904		; addr: CE306BC
#data 0x632002EE		; addr: CE306C0
#data 0x8B032338		; addr: CE306C4

#align4
data_CE306C8:
#data 0xE0004F26		; addr: CE306C8
#data 0x6EF6000B		; addr: CE306CC
;-------------------------------------------------------------------------------

#align4
data_CE306D0:
#data 0xE3079028		; addr: CE306D0
#data 0x0E349429		; addr: CE306D4
#data 0x34EC9028		; addr: CE306D8
#data 0xE0018145		; addr: CE306DC
#data 0x000B4F26		; addr: CE306E0
#data 0x6EF6		; addr: CE306E4
;-------------------------------------------------------------------------------

data_CE306E6:
#data 0x9022		; addr: CE306E6
#data 0x600C004C		; addr: CE306E8
#data 0x8F2B881D		; addr: CE306EC
#data 0x901DE500		; addr: CE306F0
#data 0x606C064C		; addr: CE306F4
#data 0x8F048807		; addr: CE306F8
#data 0x60636603		; addr: CE306FC
#data 0x880C0009		; addr: CE30700
#data 0x8905		; addr: CE30704

data_CE30706:
#data 0x9014		; addr: CE30706
#data 0x2338034C		; addr: CE30708
#data 0x90118B01		; addr: CE3070C
#data 0x0454		; addr: CE30710

data_CE30712:
#data 0x900D		; addr: CE30712
#data 0x600C004C		; addr: CE30714
#data 0x89298806		; addr: CE30718
#data 0x0009A028		; addr: CE3071C
#data 0x040C0384		; addr: CE30720
#data 0x03940258		; addr: CE30724
#data 0x02A4039C		; addr: CE30728
#data 0x01D000F0		; addr: CE3072C
#data 0x01A001E9		; addr: CE30730
#data 0x00000202		; addr: CE30734

#align4
ptr_CE30738_to_data_CE3620E:
#data data_CE3620E		; addr: CE30738
#data extern_8C054E58		; addr: CE3073C

#align4
ptr_CE30740_to_data_CE36232:
#data data_CE36232		; addr: CE30740

ptr_CE30744_to_data_CE36242:
#data data_CE36242		; addr: CE30744

data_CE30748:
#data 0x04549082		; addr: CE30748
#data 0x004C70CE		; addr: CE3074C
#data 0x881F600C		; addr: CE30750
#data 0x907C8B05		; addr: CE30754
#data 0x024C937C		; addr: CE30758
#data 0x3230622C		; addr: CE3075C
#data 0x8906		; addr: CE30760

data_CE30762:
#data 0xE050		; addr: CE30762
#data 0xF447F49D		; addr: CE30764
#data 0xF447E054		; addr: CE30768
#data 0x0456E048		; addr: CE3076C

#align4
data_CE30770:
#data 0x0009000B		; addr: CE30770
;-------------------------------------------------------------------------------

f_code_CE30774:
mov.w @(data_CE30856,pc),r0 ; r0 set to 0x1FF		; addr: CE30774
mov r4,r3		; addr: CE30776
mov.l r4,@-r15		; addr: CE30778
mov.b @(r0,r3),r2		; addr: CE3077A
mov.l @(ptr_CE30864_to_ptr_CE362D4_to_f_code_CE30788,pc),r0 ; r0 set to 0xCE362D4		; addr: CE3077C
extu.b r2,r2		; addr: CE3077E
shll2 r2		; addr: CE30780
mov.l @(r0,r2),r3		; addr: CE30782
jmp @r3		; addr: CE30784
add 0x04,r15		; addr: CE30786

f_code_CE30788:
mov.l r14,@-r15		; addr: CE30788
sts.l pr,@-r15		; addr: CE3078A
mov.l @(ptr_CE30868_to_fn_extern_8C052B4C,pc),r3 ; r3 set to 0x8C052B4C		; addr: CE3078C
jsr @r3		; addr: CE3078E
mov r4,r14		; addr: CE30790
mov.w @(data_CE30858,pc),r0 ; r0 set to 0x1FE		; addr: CE30792
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE30794
extu.b r0,r0		; addr: CE30796
cmp/eq 0x01,r0 		; addr: CE30798
bf l_code_CE307B6		; addr: CE3079A
mov.w @(data_CE3085A,pc),r0 ; r0 set to 0x1F9		; addr: CE3079C
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE3079E
extu.b r0,r0		; addr: CE307A0
cmp/eq 0x01,r0 		; addr: CE307A2
bf l_code_CE307AE		; addr: CE307A4
lds.l @r15+,pr 		; addr: CE307A6
mov r14,r4		; addr: CE307A8
bra l_code_CE30ABA		; addr: CE307AA
mov.l @r15+,r14		; addr: CE307AC

l_code_CE307AE:
lds.l @r15+,pr 		; addr: CE307AE
mov r14,r4		; addr: CE307B0
bra l_code_CE309F0		; addr: CE307B2
mov.l @r15+,r14		; addr: CE307B4

l_code_CE307B6:
mov.w @(data_CE3085A,pc),r0 ; r0 set to 0x1F9		; addr: CE307B6
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE307B8
extu.b r0,r0		; addr: CE307BA
cmp/eq 0x01,r0 		; addr: CE307BC
bf l_code_CE307C8		; addr: CE307BE
lds.l @r15+,pr 		; addr: CE307C0
mov r14,r4		; addr: CE307C2
bra l_code_CE30914		; addr: CE307C4
mov.l @r15+,r14		; addr: CE307C6

l_code_CE307C8:
lds.l @r15+,pr 		; addr: CE307C8
mov r14,r4		; addr: CE307CA
bra l_code_CE307D0		; addr: CE307CC
mov.l @r15+,r14		; addr: CE307CE

l_code_CE307D0:
mov.l r14,@-r15		; addr: CE307D0
mov r4,r14		; addr: CE307D2
mov.l r13,@-r15		; addr: CE307D4
mov.w @(data_CE3085C,pc),r0 ; r0 set to 0x1E8		; addr: CE307D6
mov.l r12,@-r15		; addr: CE307D8
mov.l r11,@-r15		; addr: CE307DA
mov.l r10,@-r15		; addr: CE307DC
sts.l pr,@-r15		; addr: CE307DE
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE307E0
mov.l @(ptr_CE3086C_to_fn_extern_8C034E8C,pc),r11 ; r11 set to 0x8C034E8C		; addr: CE307E2
extu.b r0,r0		; addr: CE307E4
mov.l @(ptr_CE30870_to_fn_extern_8C04223A,pc),r12 ; r12 set to 0x8C04223A		; addr: CE307E6
cmp/eq 0x00,r0 		; addr: CE307E8
bt/s l_code_CE307FA		; addr: CE307EA
mov 0x00,r13 ; r13 set to 0x00		; addr: CE307EC
cmp/eq 0x01,r0 		; addr: CE307EE
bt l_code_CE30828		; addr: CE307F0
cmp/eq 0x02,r0 		; addr: CE307F2
bt l_code_CE30880		; addr: CE307F4
bra l_code_CE308E8		; addr: CE307F6
nop 		; addr: CE307F8

l_code_CE307FA:
mov.w @(data_CE3085E,pc),r0 ; r0 set to 0x158		; addr: CE307FA
mov 0x07,r5 ; r5 set to 0x07		; addr: CE307FC
mov.b r13,@(r0,r14) 		; addr: CE307FE
add 0x49,r0 ; r0 set to 0x1A1		; addr: CE30800
mov.b r13,@(r0,r14) 		; addr: CE30802
add 0xB7,r0 ; r0 set to 0x158		; addr: CE30804
mov.b @(r0,r14),r6		; addr: CE30806
jsr @r11		; addr: CE30808
mov r14,r4		; addr: CE3080A
mov.l @(ptr_CE30874_to_fn_extern_8C0D13BC,pc),r3 ; r3 set to 0x8C0D13BC		; addr: CE3080C
mov 0x00,r5 ; r5 set to 0x00		; addr: CE3080E
mov 0x02,r6 ; r6 set to 0x02		; addr: CE30810
jsr @r3		; addr: CE30812
mov r14,r4		; addr: CE30814
mov 0x14,r5 ; r5 set to 0x14		; addr: CE30816
jsr @r12		; addr: CE30818
mov r14,r4		; addr: CE3081A
mov.w @(data_CE30860,pc),r0 ; r0 set to 0x3F4		; addr: CE3081C
mov.l @(ptr_CE30878_to_data_CE36188,pc),r2 ; r2 set to 0xCE36188		; addr: CE3081E
mov.l r2,@(r0,r14) 		; addr: CE30820
mov.w @(data_CE30862,pc),r0 ; r0 set to 0x1A7		; addr: CE30822
bra l_code_CE308E8		; addr: CE30824
mov.b r13,@(r0,r14) 		; addr: CE30826

l_code_CE30828:
mov.w @(data_CE3085E,pc),r0 ; r0 set to 0x158		; addr: CE30828
mov 0x01,r10 ; r10 set to 0x01		; addr: CE3082A
mov 0x15,r5 ; r5 set to 0x15		; addr: CE3082C
mov.b r10,@(r0,r14) 		; addr: CE3082E
add 0x49,r0 ; r0 set to 0x1A1		; addr: CE30830
mov.b r10,@(r0,r14) 		; addr: CE30832
jsr @r12		; addr: CE30834
mov r14,r4		; addr: CE30836
mov.w @(data_CE30860,pc),r0 ; r0 set to 0x3F4		; addr: CE30838
mov 0x07,r5 ; r5 set to 0x07		; addr: CE3083A
mov.l @(ptr_CE3087C_to_data_CE3618C,pc),r3 ; r3 set to 0xCE3618C		; addr: CE3083C
mov.l r3,@(r0,r14) 		; addr: CE3083E
mov.w @(data_CE30862,pc),r0 ; r0 set to 0x1A7		; addr: CE30840
mov.b r10,@(r0,r14) 		; addr: CE30842
add 0xB1,r0 ; r0 set to 0x158		; addr: CE30844
mov.b @(r0,r14),r6		; addr: CE30846
jsr @r11		; addr: CE30848
mov r14,r4		; addr: CE3084A
bra data_CE308DE		; addr: CE3084C
nop 		; addr: CE3084E
#data 0x01F70202		; addr: CE30850
#data 0x00C3		; addr: CE30854

data_CE30856:
#data 0x01FF		; addr: CE30856

data_CE30858:
#data 0x01FE		; addr: CE30858

data_CE3085A:
#data 0x01F9		; addr: CE3085A

data_CE3085C:
#data 0x01E8		; addr: CE3085C

data_CE3085E:
#data 0x0158		; addr: CE3085E

data_CE30860:
#data 0x03F4		; addr: CE30860

data_CE30862:
#data 0x01A7		; addr: CE30862

#align4
ptr_CE30864_to_ptr_CE362D4_to_f_code_CE30788:
#data ptr_CE362D4_to_f_code_CE30788		; addr: CE30864

ptr_CE30868_to_fn_extern_8C052B4C:
#data fn_extern_8C052B4C		; addr: CE30868

ptr_CE3086C_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE3086C

ptr_CE30870_to_fn_extern_8C04223A:
#data fn_extern_8C04223A		; addr: CE30870

ptr_CE30874_to_fn_extern_8C0D13BC:
#data fn_extern_8C0D13BC		; addr: CE30874

ptr_CE30878_to_data_CE36188:
#data data_CE36188		; addr: CE30878

ptr_CE3087C_to_data_CE3618C:
#data data_CE3618C		; addr: CE3087C


l_code_CE30880:
mov.w @(data_CE309C0,pc),r0 ; r0 set to 0x1FA		; addr: CE30880
mov.w @(data_CE309C2,pc),r2 ; r2 set to 0x800		; addr: CE30882
mov.w @(r0,r14),r3		; addr: CE30884
extu.w r3,r3		; addr: CE30886
tst r2,r3		; addr: CE30888
bt/s data_CE308A8		; addr: CE3088A
mov 0x02,r10 ; r10 set to 0x02		; addr: CE3088C
mov.w @(data_CE309C4,pc),r0 ; r0 set to 0x158		; addr: CE3088E
mov 0x03,r3 ; r3 set to 0x03		; addr: CE30890
mov 0x12,r1 ; r1 set to 0x12		; addr: CE30892
mov.b r3,@(r0,r14) 		; addr: CE30894
add 0x49,r0 ; r0 set to 0x1A1		; addr: CE30896
mov.b r1,@(r0,r14) 		; addr: CE30898
add 0xB7,r0 ; r0 set to 0x158		; addr: CE3089A
mov.b @(r0,r14),r6		; addr: CE3089C
mov 0x07,r5 ; r5 set to 0x07		; addr: CE3089E
jsr @r11		; addr: CE308A0
mov r14,r4		; addr: CE308A2
bra data_CE308CE		; addr: CE308A4
nop 		; addr: CE308A6

#align4
data_CE308A8:
#data 0xE507908C		; addr: CE308A8
#data 0x70490EA4		; addr: CE308AC
#data 0x70B70EA4		; addr: CE308B0
#data 0x4B0B06EC		; addr: CE308B4
#data 0xD34564E3		; addr: CE308B8
#data 0xE600E504		; addr: CE308BC
#data 0x64E3430B		; addr: CE308C0
#data 0xE505D242		; addr: CE308C4
#data 0x420BE600		; addr: CE308C8
#data 0x64E3		; addr: CE308CC

data_CE308CE:
#data 0xE516		; addr: CE308CE
#data 0x64E34C0B		; addr: CE308D0
#data 0xD33F9077		; addr: CE308D4
#data 0x90750E36		; addr: CE308D8
#data 0x0EA4		; addr: CE308DC

data_CE308DE:
#data 0xD33E		; addr: CE308DE
#data 0xE602E500		; addr: CE308E0
#data 0x64E3430B		; addr: CE308E4


l_code_CE308E8:
mov.w @(data_CE309CA,pc),r0 ; r0 set to 0x1AC		; addr: CE308E8
mov.l @(ptr_CE309DC_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0		; addr: CE308EA
mov.w r13,@(r0,r14) 		; addr: CE308EC
add 0xF2,r0 ; r0 set to 0x19E		; addr: CE308EE
mov.b r13,@(r0,r14) 		; addr: CE308F0
add 0x26,r0 ; r0 set to 0x1C4		; addr: CE308F2
mov.l r13,@(r0,r14) 		; addr: CE308F4
mov.b @(0x02,r14),r0 		; addr: CE308F6
mov.l @r3,r2		; addr: CE308F8
extu.b r0,r0 ; r0 set to 0xC4		; addr: CE308FA
shll r0 ; r0 set to 0x188		; addr: CE308FC
add 0x7C,r2		; addr: CE308FE
mov.w @(r0,r2),r1		; addr: CE30900
add 0x01,r1		; addr: CE30902
mov.w r1,@(r0,r2) 		; addr: CE30904
lds.l @r15+,pr 		; addr: CE30906
mov.l @r15+,r10		; addr: CE30908
mov.l @r15+,r11		; addr: CE3090A
mov.l @r15+,r12		; addr: CE3090C
mov.l @r15+,r13		; addr: CE3090E
rts 		; addr: CE30910
mov.l @r15+,r14		; addr: CE30912
;-------------------------------------------------------------------------------

l_code_CE30914:
mov.w @(data_CE309CC,pc),r0 ; r0 set to 0x1E8		; addr: CE30914
mov.l r14,@-r15		; addr: CE30916
mov r4,r14		; addr: CE30918
mov.l r13,@-r15		; addr: CE3091A
mov.l r12,@-r15		; addr: CE3091C
sts.l pr,@-r15		; addr: CE3091E
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE30920
mov.l @(ptr_CE309E0_to_fn_extern_8C04223A,pc),r12 ; r12 set to 0x8C04223A		; addr: CE30922
extu.b r0,r0		; addr: CE30924
cmp/eq 0x00,r0 		; addr: CE30926
bt/s l_code_CE30938		; addr: CE30928
mov 0x00,r13 ; r13 set to 0x00		; addr: CE3092A
cmp/eq 0x01,r0 		; addr: CE3092C
bt l_code_CE30954		; addr: CE3092E
cmp/eq 0x02,r0 		; addr: CE30930
bt data_CE30970		; addr: CE30932
bra l_code_CE3098E		; addr: CE30934
nop 		; addr: CE30936

l_code_CE30938:
mov.w @(data_CE309C4,pc),r0 ; r0 set to 0x158		; addr: CE30938
mov 0x06,r3 ; r3 set to 0x06		; addr: CE3093A
mov 0x14,r5 ; r5 set to 0x14		; addr: CE3093C
mov.b r13,@(r0,r14) 		; addr: CE3093E
add 0x49,r0 ; r0 set to 0x1A1		; addr: CE30940
mov.b r3,@(r0,r14) 		; addr: CE30942
jsr @r12		; addr: CE30944
mov r14,r4		; addr: CE30946
mov.w @(data_CE309C6,pc),r0 ; r0 set to 0x3F4		; addr: CE30948
mov.l @(ptr_CE309E4_to_data_CE36188,pc),r3 ; r3 set to 0xCE36188		; addr: CE3094A
mov.l r3,@(r0,r14) 		; addr: CE3094C
mov.w @(data_CE309C8,pc),r0 ; r0 set to 0x1A7		; addr: CE3094E
bra l_code_CE3098E		; addr: CE30950
mov.b r13,@(r0,r14) 		; addr: CE30952

l_code_CE30954:
mov.w @(data_CE309C4,pc),r0 ; r0 set to 0x158		; addr: CE30954
mov 0x01,r2 ; r2 set to 0x01		; addr: CE30956
mov 0x07,r3 ; r3 set to 0x07		; addr: CE30958
mov.b r2,@(r0,r14) 		; addr: CE3095A
add 0x49,r0 ; r0 set to 0x1A1		; addr: CE3095C
mov 0x15,r5 ; r5 set to 0x15		; addr: CE3095E
mov.b r3,@(r0,r14) 		; addr: CE30960
jsr @r12		; addr: CE30962
mov r14,r4		; addr: CE30964
mov.w @(data_CE309C6,pc),r0 ; r0 set to 0x3F4		; addr: CE30966
mov.l @(ptr_CE309E8_to_data_CE3618C,pc),r3 ; r3 set to 0xCE3618C		; addr: CE30968
mov.l r3,@(r0,r14) 		; addr: CE3096A
bra data_CE3098A		; addr: CE3096C
mov 0x01,r2		; addr: CE3096E

#align4
data_CE30970:
#data 0xE1029028		; addr: CE30970
#data 0x0E14E308		; addr: CE30974
#data 0xE5167049		; addr: CE30978
#data 0x4C0B0E34		; addr: CE3097C
#data 0x902064E3		; addr: CE30980
#data 0xD313E202		; addr: CE30984
#data 0x0E36		; addr: CE30988

data_CE3098A:
#data 0x901D		; addr: CE3098A
#data 0x0E24		; addr: CE3098C


l_code_CE3098E:
mov.w @(data_CE309CA,pc),r0 ; r0 set to 0x1AC		; addr: CE3098E
mov 0x09,r5 ; r5 set to 0x09		; addr: CE30990
mov.l @(ptr_CE309DC_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0		; addr: CE30992
mov r14,r4		; addr: CE30994
mov.w r13,@(r0,r14) 		; addr: CE30996
add 0xF2,r0 ; r0 set to 0x19E		; addr: CE30998
mov.b r13,@(r0,r14) 		; addr: CE3099A
add 0x26,r0 ; r0 set to 0x1C4		; addr: CE3099C
mov.l r13,@(r0,r14) 		; addr: CE3099E
mov.b @(0x02,r14),r0 		; addr: CE309A0
mov.l @r3,r2		; addr: CE309A2
extu.b r0,r0 ; r0 set to 0xC4		; addr: CE309A4
shll r0 ; r0 set to 0x188		; addr: CE309A6
add 0x7C,r2		; addr: CE309A8
mov.w @(r0,r2),r1		; addr: CE309AA
add 0x01,r1		; addr: CE309AC
mov.w r1,@(r0,r2) 		; addr: CE309AE
lds.l @r15+,pr 		; addr: CE309B0
mov.w @(data_CE309C4,pc),r0 ; r0 set to 0x158		; addr: CE309B2
mov.l @(ptr_CE309EC_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE309B4
mov.l @r15+,r12		; addr: CE309B6
mov.b @(r0,r14),r6		; addr: CE309B8
mov.l @r15+,r13		; addr: CE309BA
jmp @r2		; addr: CE309BC
mov.l @r15+,r14		; addr: CE309BE

data_CE309C0:
#data 0x01FA		; addr: CE309C0

data_CE309C2:
#data 0x0800		; addr: CE309C2

data_CE309C4:
#data 0x0158		; addr: CE309C4

data_CE309C6:
#data 0x03F4		; addr: CE309C6

data_CE309C8:
#data 0x01A7		; addr: CE309C8

data_CE309CA:
#data 0x01AC		; addr: CE309CA

data_CE309CC:
#data 0x01E8		; addr: CE309CC
#data 0x0000		; addr: CE309CE
#data fn_extern_8C0D0584		; addr: CE309D0

#align4
ptr_CE309D4_to_data_CE36190:
#data data_CE36190		; addr: CE309D4
#data fn_extern_8C0D13BC		; addr: CE309D8

#align4
ptr_CE309DC_to_extern_8C2896B0:
#data extern_8C2896B0		; addr: CE309DC

ptr_CE309E0_to_fn_extern_8C04223A:
#data fn_extern_8C04223A		; addr: CE309E0

ptr_CE309E4_to_data_CE36188:
#data data_CE36188		; addr: CE309E4

ptr_CE309E8_to_data_CE3618C:
#data data_CE3618C		; addr: CE309E8

ptr_CE309EC_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE309EC


l_code_CE309F0:
mov.w @(data_CE30AFA,pc),r0 ; r0 set to 0x1E8		; addr: CE309F0
mov.l r14,@-r15		; addr: CE309F2
mov r4,r14		; addr: CE309F4
mov.l r13,@-r15		; addr: CE309F6
mov.l r12,@-r15		; addr: CE309F8
sts.l pr,@-r15		; addr: CE309FA
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE309FC
mov.l @(ptr_CE30B04_to_fn_extern_8C04223A,pc),r12 ; r12 set to 0x8C04223A		; addr: CE309FE
extu.b r0,r0		; addr: CE30A00
cmp/eq 0x00,r0 		; addr: CE30A02
bt/s l_code_CE30A14		; addr: CE30A04
mov 0x00,r13 ; r13 set to 0x00		; addr: CE30A06
cmp/eq 0x01,r0 		; addr: CE30A08
bt l_code_CE30A30		; addr: CE30A0A
cmp/eq 0x02,r0 		; addr: CE30A0C
bt data_CE30A68		; addr: CE30A0E
bra l_code_CE30A92		; addr: CE30A10
nop 		; addr: CE30A12

l_code_CE30A14:
mov.w @(data_CE30AFC,pc),r0 ; r0 set to 0x158		; addr: CE30A14
mov 0x03,r3 ; r3 set to 0x03		; addr: CE30A16
mov 0x14,r5 ; r5 set to 0x14		; addr: CE30A18
mov.b r13,@(r0,r14) 		; addr: CE30A1A
add 0x49,r0 ; r0 set to 0x1A1		; addr: CE30A1C
mov.b r3,@(r0,r14) 		; addr: CE30A1E
jsr @r12		; addr: CE30A20
mov r14,r4		; addr: CE30A22
mov.w @(data_CE30AFE,pc),r0 ; r0 set to 0x3F4		; addr: CE30A24
mov.l @(ptr_CE30B08_to_data_CE36194,pc),r3 ; r3 set to 0xCE36194		; addr: CE30A26
mov.l r3,@(r0,r14) 		; addr: CE30A28
mov.w @(data_CE30B00,pc),r0 ; r0 set to 0x1A7		; addr: CE30A2A
bra l_code_CE30A86		; addr: CE30A2C
mov.b r13,@(r0,r14) 		; addr: CE30A2E

l_code_CE30A30:
mov.w @(data_CE30AFC,pc),r0 ; r0 set to 0x158		; addr: CE30A30
mov 0x01,r3 ; r3 set to 0x01		; addr: CE30A32
mov 0x04,r2 ; r2 set to 0x04		; addr: CE30A34
mov.b r3,@(r0,r14) 		; addr: CE30A36
add 0x49,r0 ; r0 set to 0x1A1		; addr: CE30A38
mov 0x15,r5 ; r5 set to 0x15		; addr: CE30A3A
mov.b r2,@(r0,r14) 		; addr: CE30A3C
jsr @r12		; addr: CE30A3E
mov r14,r4		; addr: CE30A40
mov.w @(data_CE30AFE,pc),r0 ; r0 set to 0x3F4		; addr: CE30A42
mov 0x01,r2 ; r2 set to 0x01		; addr: CE30A44
mov.l @(ptr_CE30B0C_to_data_CE36198,pc),r3 ; r3 set to 0xCE36198		; addr: CE30A46
mov 0x08,r5 ; r5 set to 0x08		; addr: CE30A48
mov.l r3,@(r0,r14) 		; addr: CE30A4A
mov.w @(data_CE30B00,pc),r0 ; r0 set to 0x1A7		; addr: CE30A4C
mov.l @(ptr_CE30B10_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE30A4E
mov.b r2,@(r0,r14) 		; addr: CE30A50
add 0xB1,r0 ; r0 set to 0x158		; addr: CE30A52
mov.b @(r0,r14),r6		; addr: CE30A54
jsr @r3		; addr: CE30A56
mov r14,r4		; addr: CE30A58
mov.l @(ptr_CE30B14_to_fn_extern_8C0D13BC,pc),r2 ; r2 set to 0x8C0D13BC		; addr: CE30A5A
mov 0x00,r5 ; r5 set to 0x00		; addr: CE30A5C
mov 0x02,r6 ; r6 set to 0x02		; addr: CE30A5E
jsr @r2		; addr: CE30A60
mov r14,r4		; addr: CE30A62
bra l_code_CE30A92		; addr: CE30A64
nop 		; addr: CE30A66

#align4
data_CE30A68:
#data 0xE2029048		; addr: CE30A68
#data 0x0E24E305		; addr: CE30A6C
#data 0xE5167049		; addr: CE30A70
#data 0x4C0B0E34		; addr: CE30A74
#data 0x904064E3		; addr: CE30A78
#data 0xD326E202		; addr: CE30A7C
#data 0x903D0E36		; addr: CE30A80
#data 0x0E24		; addr: CE30A84


l_code_CE30A86:
mov.w @(data_CE30AFC,pc),r0 ; r0 set to 0x158		; addr: CE30A86
mov 0x08,r5 ; r5 set to 0x08		; addr: CE30A88
mov.l @(ptr_CE30B10_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE30A8A
mov.b @(r0,r14),r6		; addr: CE30A8C
jsr @r3		; addr: CE30A8E
mov r14,r4		; addr: CE30A90

l_code_CE30A92:
mov.w @(data_CE30B02,pc),r0 ; r0 set to 0x1AC, r0 set to 0x1AC		; addr: CE30A92
mov.l @(ptr_CE30B1C_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0		; addr: CE30A94
mov.w r13,@(r0,r14) 		; addr: CE30A96
add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19E		; addr: CE30A98
mov.b r13,@(r0,r14) 		; addr: CE30A9A
add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4		; addr: CE30A9C
mov.l r13,@(r0,r14) 		; addr: CE30A9E
mov.b @(0x02,r14),r0 		; addr: CE30AA0
mov.l @r3,r2		; addr: CE30AA2
extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4		; addr: CE30AA4
shll r0 ; r0 set to 0x188, r0 set to 0x188		; addr: CE30AA6
add 0x7C,r2		; addr: CE30AA8
mov.w @(r0,r2),r1		; addr: CE30AAA
add 0x01,r1		; addr: CE30AAC
mov.w r1,@(r0,r2) 		; addr: CE30AAE
lds.l @r15+,pr 		; addr: CE30AB0
mov.l @r15+,r12		; addr: CE30AB2
mov.l @r15+,r13		; addr: CE30AB4
rts 		; addr: CE30AB6
mov.l @r15+,r14		; addr: CE30AB8
;-------------------------------------------------------------------------------

l_code_CE30ABA:
mov.w @(data_CE30AFA,pc),r0 ; r0 set to 0x1E8		; addr: CE30ABA
mov.l r14,@-r15		; addr: CE30ABC
mov r4,r14		; addr: CE30ABE
mov.l r13,@-r15		; addr: CE30AC0
mov.l r12,@-r15		; addr: CE30AC2
sts.l pr,@-r15		; addr: CE30AC4
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE30AC6
mov.l @(ptr_CE30B04_to_fn_extern_8C04223A,pc),r12 ; r12 set to 0x8C04223A		; addr: CE30AC8
extu.b r0,r0		; addr: CE30ACA
cmp/eq 0x00,r0 		; addr: CE30ACC
bt/s l_code_CE30ADE		; addr: CE30ACE
mov 0x00,r13 ; r13 set to 0x00		; addr: CE30AD0
cmp/eq 0x01,r0 		; addr: CE30AD2
bt l_code_CE30B20		; addr: CE30AD4
cmp/eq 0x02,r0 		; addr: CE30AD6
bt data_CE30B3C		; addr: CE30AD8
bra l_code_CE30B5A		; addr: CE30ADA
nop 		; addr: CE30ADC

l_code_CE30ADE:
mov.w @(data_CE30AFC,pc),r0 ; r0 set to 0x158		; addr: CE30ADE
mov 0x09,r3 ; r3 set to 0x09		; addr: CE30AE0
mov 0x14,r5 ; r5 set to 0x14		; addr: CE30AE2
mov.b r13,@(r0,r14) 		; addr: CE30AE4
add 0x49,r0 ; r0 set to 0x1A1		; addr: CE30AE6
mov.b r3,@(r0,r14) 		; addr: CE30AE8
jsr @r12		; addr: CE30AEA
mov r14,r4		; addr: CE30AEC
mov.w @(data_CE30AFE,pc),r0 ; r0 set to 0x3F4		; addr: CE30AEE
mov.l @(ptr_CE30B08_to_data_CE36194,pc),r3 ; r3 set to 0xCE36194		; addr: CE30AF0
mov.l r3,@(r0,r14) 		; addr: CE30AF2
mov.w @(data_CE30B00,pc),r0 ; r0 set to 0x1A7		; addr: CE30AF4
bra l_code_CE30B5A		; addr: CE30AF6
mov.b r13,@(r0,r14) 		; addr: CE30AF8

data_CE30AFA:
#data 0x01E8		; addr: CE30AFA

data_CE30AFC:
#data 0x0158		; addr: CE30AFC

data_CE30AFE:
#data 0x03F4		; addr: CE30AFE

data_CE30B00:
#data 0x01A7		; addr: CE30B00

data_CE30B02:
#data 0x01AC		; addr: CE30B02

#align4
ptr_CE30B04_to_fn_extern_8C04223A:
#data fn_extern_8C04223A		; addr: CE30B04

ptr_CE30B08_to_data_CE36194:
#data data_CE36194		; addr: CE30B08

ptr_CE30B0C_to_data_CE36198:
#data data_CE36198		; addr: CE30B0C

ptr_CE30B10_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE30B10

ptr_CE30B14_to_fn_extern_8C0D13BC:
#data fn_extern_8C0D13BC		; addr: CE30B14

ptr_CE30B18_to_data_CE3619C:
#data data_CE3619C		; addr: CE30B18

ptr_CE30B1C_to_extern_8C2896B0:
#data extern_8C2896B0		; addr: CE30B1C


l_code_CE30B20:
mov.w @(data_CE30C20,pc),r0 ; r0 set to 0x158		; addr: CE30B20
mov 0x01,r2 ; r2 set to 0x01		; addr: CE30B22
mov 0x0A,r3 ; r3 set to 0x0A		; addr: CE30B24
mov.b r2,@(r0,r14) 		; addr: CE30B26
add 0x49,r0 ; r0 set to 0x1A1		; addr: CE30B28
mov 0x15,r5 ; r5 set to 0x15		; addr: CE30B2A
mov.b r3,@(r0,r14) 		; addr: CE30B2C
jsr @r12		; addr: CE30B2E
mov r14,r4		; addr: CE30B30
mov.w @(data_CE30C22,pc),r0 ; r0 set to 0x3F4		; addr: CE30B32
mov.l @(ptr_CE30C30_to_data_CE36198,pc),r3 ; r3 set to 0xCE36198		; addr: CE30B34
mov.l r3,@(r0,r14) 		; addr: CE30B36
bra data_CE30B56		; addr: CE30B38
mov 0x01,r2		; addr: CE30B3A

#align4
data_CE30B3C:
#data 0xE1029070		; addr: CE30B3C
#data 0x0E14E30B		; addr: CE30B40
#data 0xE5167049		; addr: CE30B44
#data 0x4C0B0E34		; addr: CE30B48
#data 0x906864E3		; addr: CE30B4C
#data 0xD338E202		; addr: CE30B50
#data 0x0E36		; addr: CE30B54

data_CE30B56:
#data 0x9065		; addr: CE30B56
#data 0x0E24		; addr: CE30B58


l_code_CE30B5A:
mov.w @(data_CE30C26,pc),r0 ; r0 set to 0x1AC		; addr: CE30B5A
mov 0x0A,r5 ; r5 set to 0x0A		; addr: CE30B5C
mov.l @(ptr_CE30C38_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0		; addr: CE30B5E
mov r14,r4		; addr: CE30B60
mov.w r13,@(r0,r14) 		; addr: CE30B62
add 0xF2,r0 ; r0 set to 0x19E		; addr: CE30B64
mov.b r13,@(r0,r14) 		; addr: CE30B66
add 0x26,r0 ; r0 set to 0x1C4		; addr: CE30B68
mov.l r13,@(r0,r14) 		; addr: CE30B6A
mov.b @(0x02,r14),r0 		; addr: CE30B6C
mov.l @r3,r2		; addr: CE30B6E
extu.b r0,r0 ; r0 set to 0xC4		; addr: CE30B70
shll r0 ; r0 set to 0x188		; addr: CE30B72
add 0x7C,r2		; addr: CE30B74
mov.w @(r0,r2),r1		; addr: CE30B76
add 0x01,r1		; addr: CE30B78
mov.w r1,@(r0,r2) 		; addr: CE30B7A
lds.l @r15+,pr 		; addr: CE30B7C
mov.w @(data_CE30C20,pc),r0 ; r0 set to 0x158		; addr: CE30B7E
mov.l @(ptr_CE30C3C_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE30B80
mov.l @r15+,r12		; addr: CE30B82
mov.b @(r0,r14),r6		; addr: CE30B84
mov.l @r15+,r13		; addr: CE30B86
jmp @r2		; addr: CE30B88
mov.l @r15+,r14		; addr: CE30B8A

#align4
data_CE30B8C:
#data 0x034C904C		; addr: CE30B8C
#data 0x8B032338		; addr: CE30B90
#data 0x004C9049		; addr: CE30B94
#data 0x8B07C80F		; addr: CE30B98

#align4
data_CE30B9C:
#data 0x024C9044		; addr: CE30B9C
#data 0x89052228		; addr: CE30BA0
#data 0x004C9041		; addr: CE30BA4
#data 0x8901C8F0		; addr: CE30BA8

#align4
data_CE30BAC:
#data 0x0009A002		; addr: CE30BAC

#align4
data_CE30BB0:
#data 0x0009000B		; addr: CE30BB0
;-------------------------------------------------------------------------------

f_code_CE30BB4:
mov.w @(data_CE30C28,pc),r0 ; r0 set to 0x1FE		; addr: CE30BB4
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???		; addr: CE30BB6
extu.b r0,r0		; addr: CE30BB8
cmp/eq 0x01,r0 		; addr: CE30BBA
bf l_code_CE30BC2		; addr: CE30BBC
bra l_code_CE30CF6		; addr: CE30BBE
nop 		; addr: CE30BC0

l_code_CE30BC2:
bra l_code_CE30BC6		; addr: CE30BC2
nop 		; addr: CE30BC4

l_code_CE30BC6:
mov.w @(data_CE30C2C,pc),r0 ; r0 set to 0x1E8		; addr: CE30BC6
mov.l r14,@-r15		; addr: CE30BC8
mov r4,r14		; addr: CE30BCA
mov.l r13,@-r15		; addr: CE30BCC
mov.l r12,@-r15		; addr: CE30BCE
sts.l pr,@-r15		; addr: CE30BD0
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE30BD2
mov.l @(ptr_CE30C40_to_fn_extern_8C04223A,pc),r12 ; r12 set to 0x8C04223A		; addr: CE30BD4
extu.b r0,r0		; addr: CE30BD6
cmp/eq 0x00,r0 		; addr: CE30BD8
bt/s l_code_CE30BEA		; addr: CE30BDA
mov 0x00,r13 ; r13 set to 0x00		; addr: CE30BDC
cmp/eq 0x01,r0 		; addr: CE30BDE
bt l_code_CE30C58		; addr: CE30BE0
cmp/eq 0x02,r0 		; addr: CE30BE2
bt l_code_CE30C84		; addr: CE30BE4
bra data_CE30CBE		; addr: CE30BE6
nop 		; addr: CE30BE8

l_code_CE30BEA:
mov.w @(data_CE30C20,pc),r0 ; r0 set to 0x158		; addr: CE30BEA
mov 0x0C,r3 ; r3 set to 0x0C		; addr: CE30BEC
mov 0x0B,r5 ; r5 set to 0x0B		; addr: CE30BEE
mov.b r13,@(r0,r14) 		; addr: CE30BF0
add 0x49,r0 ; r0 set to 0x1A1		; addr: CE30BF2
mov.b r3,@(r0,r14) 		; addr: CE30BF4
add 0xB7,r0 ; r0 set to 0x158		; addr: CE30BF6
mov.l @(ptr_CE30C3C_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE30BF8
mov.b @(r0,r14),r6		; addr: CE30BFA
jsr @r3		; addr: CE30BFC
mov r14,r4		; addr: CE30BFE
mov.l @(ptr_CE30C44_to_fn_extern_8C0D13BC,pc),r2 ; r2 set to 0x8C0D13BC		; addr: CE30C00
mov 0x00,r5 ; r5 set to 0x00		; addr: CE30C02
mov 0x02,r6 ; r6 set to 0x02		; addr: CE30C04
jsr @r2		; addr: CE30C06
mov r14,r4		; addr: CE30C08
mov 0x14,r5 ; r5 set to 0x14		; addr: CE30C0A
jsr @r12		; addr: CE30C0C
mov r14,r4		; addr: CE30C0E
mov.w @(data_CE30C2E,pc),r0 ; r0 set to 0x1FC		; addr: CE30C10
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???		; addr: CE30C12
tst r3,r3		; addr: CE30C14
bf l_code_CE30C4C		; addr: CE30C16
mov.w @(data_CE30C22,pc),r0 ; r0 set to 0x3F4		; addr: CE30C18
mov.l @(ptr_CE30C48_to_data_CE361A0,pc),r3 ; r3 set to 0xCE361A0		; addr: CE30C1A
bra l_code_CE30C52		; addr: CE30C1C
mov.l r3,@(r0,r14) 		; addr: CE30C1E

data_CE30C20:
#data 0x0158		; addr: CE30C20

data_CE30C22:
#data 0x03F4		; addr: CE30C22
#data 0x01A7		; addr: CE30C24

data_CE30C26:
#data 0x01AC		; addr: CE30C26

data_CE30C28:
#data 0x01FE		; addr: CE30C28
#data 0x01D6		; addr: CE30C2A

data_CE30C2C:
#data 0x01E8		; addr: CE30C2C

data_CE30C2E:
#data 0x01FC		; addr: CE30C2E

#align4
ptr_CE30C30_to_data_CE36198:
#data data_CE36198		; addr: CE30C30

ptr_CE30C34_to_data_CE3619C:
#data data_CE3619C		; addr: CE30C34

ptr_CE30C38_to_extern_8C2896B0:
#data extern_8C2896B0		; addr: CE30C38

ptr_CE30C3C_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE30C3C

ptr_CE30C40_to_fn_extern_8C04223A:
#data fn_extern_8C04223A		; addr: CE30C40

ptr_CE30C44_to_fn_extern_8C0D13BC:
#data fn_extern_8C0D13BC		; addr: CE30C44

ptr_CE30C48_to_data_CE361A0:
#data data_CE361A0		; addr: CE30C48


l_code_CE30C4C:
mov.w @(data_CE30D46,pc),r0 ; r0 set to 0x3F4		; addr: CE30C4C
mov.l @(ptr_CE30D54_to_data_CE361B8,pc),r1 ; r1 set to 0xCE361B8		; addr: CE30C4E
mov.l r1,@(r0,r14) 		; addr: CE30C50

l_code_CE30C52:
mov.w @(data_CE30D48,pc),r0 ; r0 set to 0x1A7, r0 set to 0x1A7		; addr: CE30C52
bra data_CE30CBE		; addr: CE30C54
mov.b r13,@(r0,r14) 		; addr: CE30C56

l_code_CE30C58:
mov.w @(data_CE30D4A,pc),r0 ; r0 set to 0x158		; addr: CE30C58
mov 0x01,r2 ; r2 set to 0x01		; addr: CE30C5A
mov 0x0D,r3 ; r3 set to 0x0D		; addr: CE30C5C
mov.b r2,@(r0,r14) 		; addr: CE30C5E
add 0x49,r0 ; r0 set to 0x1A1		; addr: CE30C60
mov 0x15,r5 ; r5 set to 0x15		; addr: CE30C62
mov.b r3,@(r0,r14) 		; addr: CE30C64
jsr @r12		; addr: CE30C66
mov r14,r4		; addr: CE30C68
mov.w @(data_CE30D4C,pc),r0 ; r0 set to 0x1FC		; addr: CE30C6A
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???		; addr: CE30C6C
tst r3,r3		; addr: CE30C6E
bf l_code_CE30C7A		; addr: CE30C70
mov.w @(data_CE30D46,pc),r0 ; r0 set to 0x3F4		; addr: CE30C72
mov.l @(ptr_CE30D58_to_data_CE361A4,pc),r3 ; r3 set to 0xCE361A4		; addr: CE30C74
bra l_code_CE30C80		; addr: CE30C76
mov.l r3,@(r0,r14) 		; addr: CE30C78

l_code_CE30C7A:
mov.w @(data_CE30D46,pc),r0 ; r0 set to 0x3F4		; addr: CE30C7A
mov.l @(ptr_CE30D5C_to_data_CE361BC,pc),r1 ; r1 set to 0xCE361BC		; addr: CE30C7C
mov.l r1,@(r0,r14) 		; addr: CE30C7E

l_code_CE30C80:
bra data_CE30CAE		; addr: CE30C80
mov 0x01,r3		; addr: CE30C82

l_code_CE30C84:
mov.w @(data_CE30D4A,pc),r0 ; r0 set to 0x158		; addr: CE30C84
mov 0x02,r2 ; r2 set to 0x02		; addr: CE30C86
mov 0x0E,r3 ; r3 set to 0x0E		; addr: CE30C88
mov.b r2,@(r0,r14) 		; addr: CE30C8A
add 0x49,r0 ; r0 set to 0x1A1		; addr: CE30C8C
mov 0x16,r5 ; r5 set to 0x16		; addr: CE30C8E
mov.b r3,@(r0,r14) 		; addr: CE30C90
jsr @r12		; addr: CE30C92
mov r14,r4		; addr: CE30C94
mov.w @(data_CE30D4C,pc),r0 ; r0 set to 0x1FC		; addr: CE30C96
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???		; addr: CE30C98
tst r3,r3		; addr: CE30C9A
bf data_CE30CA6		; addr: CE30C9C
mov.w @(data_CE30D46,pc),r0 ; r0 set to 0x3F4		; addr: CE30C9E
mov.l @(ptr_CE30D60_to_data_CE361A8,pc),r3 ; r3 set to 0xCE361A8		; addr: CE30CA0
bra data_CE30CAC		; addr: CE30CA2
mov.l r3,@(r0,r14) 		; addr: CE30CA4

data_CE30CA6:
#data 0x904E		; addr: CE30CA6
#data 0x0E16D12E		; addr: CE30CA8

data_CE30CAC:
#data 0xE302		; addr: CE30CAC

data_CE30CAE:
#data 0x904B		; addr: CE30CAE
#data 0x0E34E50B		; addr: CE30CB0
#data 0xD32C70B1		; addr: CE30CB4
#data 0x430B06EC		; addr: CE30CB8
#data 0x64E3		; addr: CE30CBC

data_CE30CBE:
#data 0x9046		; addr: CE30CBE
#data 0x0ED5D32A		; addr: CE30CC0
#data 0x0ED470F2		; addr: CE30CC4
#data 0x0ED67026		; addr: CE30CC8
#data 0x623284E2		; addr: CE30CCC
#data 0x4000600C		; addr: CE30CD0
#data 0x012D727C		; addr: CE30CD4
#data 0x02157101		; addr: CE30CD8
#data 0x00EC9038		; addr: CE30CDC
#data 0x8903C80F		; addr: CE30CE0
#data 0x01EC9034		; addr: CE30CE4
#data 0x0E1471FF		; addr: CE30CE8

#align4
data_CE30CEC:
#data 0x6CF64F26		; addr: CE30CEC
#data 0x000B6DF6		; addr: CE30CF0
#data 0x6EF6		; addr: CE30CF4
;-------------------------------------------------------------------------------

l_code_CE30CF6:
mov.w @(data_CE30D52,pc),r0 ; r0 set to 0x1E8		; addr: CE30CF6
mov.l r14,@-r15		; addr: CE30CF8
mov r4,r14		; addr: CE30CFA
mov.l r13,@-r15		; addr: CE30CFC
mov.l r12,@-r15		; addr: CE30CFE
sts.l pr,@-r15		; addr: CE30D00
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE30D02
mov.l @(ptr_CE30D70_to_fn_extern_8C04223A,pc),r12 ; r12 set to 0x8C04223A		; addr: CE30D04
extu.b r0,r0		; addr: CE30D06
cmp/eq 0x00,r0 		; addr: CE30D08
bt/s l_code_CE30D1A		; addr: CE30D0A
mov 0x00,r13 ; r13 set to 0x00		; addr: CE30D0C
cmp/eq 0x01,r0 		; addr: CE30D0E
bt l_code_CE30D7C		; addr: CE30D10
cmp/eq 0x02,r0 		; addr: CE30D12
bt l_code_CE30DA8		; addr: CE30D14
bra data_CE30DD6		; addr: CE30D16
nop 		; addr: CE30D18

l_code_CE30D1A:
mov.w @(data_CE30D4A,pc),r0 ; r0 set to 0x158		; addr: CE30D1A
mov 0x0F,r3 ; r3 set to 0x0F		; addr: CE30D1C
mov 0x14,r5 ; r5 set to 0x14		; addr: CE30D1E
mov.b r13,@(r0,r14) 		; addr: CE30D20
add 0x49,r0 ; r0 set to 0x1A1		; addr: CE30D22
mov.b r3,@(r0,r14) 		; addr: CE30D24
jsr @r12		; addr: CE30D26
mov r14,r4		; addr: CE30D28
mov.w @(data_CE30D4C,pc),r0 ; r0 set to 0x1FC		; addr: CE30D2A
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???		; addr: CE30D2C
tst r3,r3		; addr: CE30D2E
bf l_code_CE30D3A		; addr: CE30D30
mov.w @(data_CE30D46,pc),r0 ; r0 set to 0x3F4		; addr: CE30D32
mov.l @(ptr_CE30D74_to_data_CE361AC,pc),r3 ; r3 set to 0xCE361AC		; addr: CE30D34
bra l_code_CE30D40		; addr: CE30D36
mov.l r3,@(r0,r14) 		; addr: CE30D38

l_code_CE30D3A:
mov.w @(data_CE30D46,pc),r0 ; r0 set to 0x3F4		; addr: CE30D3A
mov.l @(ptr_CE30D78_to_data_CE361C4,pc),r1 ; r1 set to 0xCE361C4		; addr: CE30D3C
mov.l r1,@(r0,r14) 		; addr: CE30D3E

l_code_CE30D40:
mov.w @(data_CE30D48,pc),r0 ; r0 set to 0x1A7, r0 set to 0x1A7		; addr: CE30D40
bra data_CE30DD6		; addr: CE30D42
mov.b r13,@(r0,r14) 		; addr: CE30D44

data_CE30D46:
#data 0x03F4		; addr: CE30D46

data_CE30D48:
#data 0x01A7		; addr: CE30D48

data_CE30D4A:
#data 0x0158		; addr: CE30D4A

data_CE30D4C:
#data 0x01FC		; addr: CE30D4C
#data 0x01AC		; addr: CE30D4E
#data 0x01D6		; addr: CE30D50

data_CE30D52:
#data 0x01E8		; addr: CE30D52

#align4
ptr_CE30D54_to_data_CE361B8:
#data data_CE361B8		; addr: CE30D54

ptr_CE30D58_to_data_CE361A4:
#data data_CE361A4		; addr: CE30D58

ptr_CE30D5C_to_data_CE361BC:
#data data_CE361BC		; addr: CE30D5C

ptr_CE30D60_to_data_CE361A8:
#data data_CE361A8		; addr: CE30D60

ptr_CE30D64_to_data_CE361C0:
#data data_CE361C0		; addr: CE30D64
#data fn_extern_8C034E8C		; addr: CE30D68
#data extern_8C2896B0		; addr: CE30D6C

#align4
ptr_CE30D70_to_fn_extern_8C04223A:
#data fn_extern_8C04223A		; addr: CE30D70

ptr_CE30D74_to_data_CE361AC:
#data data_CE361AC		; addr: CE30D74

ptr_CE30D78_to_data_CE361C4:
#data data_CE361C4		; addr: CE30D78


l_code_CE30D7C:
mov.w @(data_CE30EA4,pc),r0 ; r0 set to 0x158		; addr: CE30D7C
mov 0x01,r2 ; r2 set to 0x01		; addr: CE30D7E
mov 0x10,r3 ; r3 set to 0x10		; addr: CE30D80
mov.b r2,@(r0,r14) 		; addr: CE30D82
add 0x49,r0 ; r0 set to 0x1A1		; addr: CE30D84
mov 0x15,r5 ; r5 set to 0x15		; addr: CE30D86
mov.b r3,@(r0,r14) 		; addr: CE30D88
jsr @r12		; addr: CE30D8A
mov r14,r4		; addr: CE30D8C
mov.w @(data_CE30EA6,pc),r0 ; r0 set to 0x1FC		; addr: CE30D8E
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???		; addr: CE30D90
tst r3,r3		; addr: CE30D92
bf l_code_CE30D9E		; addr: CE30D94
mov.w @(data_CE30EA8,pc),r0 ; r0 set to 0x3F4		; addr: CE30D96
mov.l @(ptr_CE30EB8_to_data_CE361B0,pc),r3 ; r3 set to 0xCE361B0		; addr: CE30D98
bra l_code_CE30DA4		; addr: CE30D9A
mov.l r3,@(r0,r14) 		; addr: CE30D9C

l_code_CE30D9E:
mov.w @(data_CE30EA8,pc),r0 ; r0 set to 0x3F4		; addr: CE30D9E
mov.l @(ptr_CE30EBC_to_data_CE361C8,pc),r1 ; r1 set to 0xCE361C8		; addr: CE30DA0
mov.l r1,@(r0,r14) 		; addr: CE30DA2

l_code_CE30DA4:
bra data_CE30DD2		; addr: CE30DA4
mov 0x01,r3		; addr: CE30DA6

l_code_CE30DA8:
mov.w @(data_CE30EA4,pc),r0 ; r0 set to 0x158		; addr: CE30DA8
mov 0x02,r1 ; r1 set to 0x02		; addr: CE30DAA
mov 0x11,r3 ; r3 set to 0x11		; addr: CE30DAC
mov.b r1,@(r0,r14) 		; addr: CE30DAE
add 0x49,r0 ; r0 set to 0x1A1		; addr: CE30DB0
mov 0x16,r5 ; r5 set to 0x16		; addr: CE30DB2
mov.b r3,@(r0,r14) 		; addr: CE30DB4
jsr @r12		; addr: CE30DB6
mov r14,r4		; addr: CE30DB8
mov.w @(data_CE30EA6,pc),r0 ; r0 set to 0x1FC		; addr: CE30DBA
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???		; addr: CE30DBC
tst r3,r3		; addr: CE30DBE
bf data_CE30DCA		; addr: CE30DC0
mov.w @(data_CE30EA8,pc),r0 ; r0 set to 0x3F4		; addr: CE30DC2
mov.l @(ptr_CE30EC0_to_data_CE361B4,pc),r3 ; r3 set to 0xCE361B4		; addr: CE30DC4
bra data_CE30DD0		; addr: CE30DC6
mov.l r3,@(r0,r14) 		; addr: CE30DC8

data_CE30DCA:
#data 0x906D		; addr: CE30DCA
#data 0x0E16D13D		; addr: CE30DCC

data_CE30DD0:
#data 0xE302		; addr: CE30DD0

data_CE30DD2:
#data 0x906A		; addr: CE30DD2
#data 0x0E34		; addr: CE30DD4

data_CE30DD6:
#data 0x9069		; addr: CE30DD6
#data 0xD33BE50C		; addr: CE30DD8
#data 0x70F20ED5		; addr: CE30DDC
#data 0x70260ED4		; addr: CE30DE0
#data 0x84E20ED6		; addr: CE30DE4
#data 0x600C6232		; addr: CE30DE8
#data 0x727C4000		; addr: CE30DEC
#data 0x7101012D		; addr: CE30DF0
#data 0x90550215		; addr: CE30DF4
#data 0x06ECD234		; addr: CE30DF8
#data 0x64E3420B		; addr: CE30DFC
#data 0x00EC9055		; addr: CE30E00
#data 0x8903C8F0		; addr: CE30E04
#data 0x02EC9051		; addr: CE30E08
#data 0x0E2472F0		; addr: CE30E0C

#align4
data_CE30E10:
#data 0x6CF64F26		; addr: CE30E10
#data 0x000B6DF6		; addr: CE30E14
#data 0x6EF6		; addr: CE30E18
;-------------------------------------------------------------------------------

f_code_CE30E1A:
mov.w @(data_CE30EB0,pc),r0 ; r0 set to 0x1FF		; addr: CE30E1A
mov r4,r3		; addr: CE30E1C
mov.l r4,@-r15		; addr: CE30E1E
mov.b @(r0,r3),r2		; addr: CE30E20
mov.l @(ptr_CE30ED0_to_ptr_CE362E4_to_f_code_CE30E3C,pc),r0 ; r0 set to 0xCE362E4		; addr: CE30E22
extu.b r2,r2		; addr: CE30E24
shll2 r2		; addr: CE30E26
mov.l @(r0,r2),r3		; addr: CE30E28
jmp @r3		; addr: CE30E2A
add 0x04,r15		; addr: CE30E2C

data_CE30E2E:
#data 0x4F22		; addr: CE30E2E
#data 0x430BD328		; addr: CE30E30
#data 0x64F22F46		; addr: CE30E34
#data 0x4F267F04		; addr: CE30E38


f_code_CE30E3C:
mov.l r14,@-r15		; addr: CE30E3C
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE30E3E
mov r4,r14		; addr: CE30E40
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE30E42
mov 0x34,r0 ; r0 set to 0x34		; addr: CE30E44
mov.l @(ptr_CE30ED8_to_extern_8C052C84,pc),r3 ; r3 set to 0x8C052C84		; addr: CE30E46
sts.l pr,@-r15		; addr: CE30E48
fmov.s @(r0,r14),fr2		; addr: CE30E4A
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE30E4C
mov 0x68,r1 ; r1 set to 0x68		; addr: CE30E4E
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE30E50
fadd fr3,fr2		; addr: CE30E52
fmov.s fr2,@(r0,r14) 		; addr: CE30E54
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE30E56
fmov.s @r1,fr3		; addr: CE30E58
mov 0x60,r1 ; r1 set to 0x60		; addr: CE30E5A
fmov.s @(r0,r14),fr2		; addr: CE30E5C
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE30E5E
fadd fr3,fr2		; addr: CE30E60
fmov.s fr2,@(r0,r14) 		; addr: CE30E62
mov 0x38,r0 ; r0 set to 0x38		; addr: CE30E64
fmov.s @(r0,r14),fr2		; addr: CE30E66
fmov.s @r1,fr3		; addr: CE30E68
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE30E6A
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE30E6C
fadd fr3,fr2		; addr: CE30E6E
fmov.s fr2,@(r0,r14) 		; addr: CE30E70
mov 0x60,r0 ; r0 set to 0x60		; addr: CE30E72
fmov.s @(r0,r14),fr2		; addr: CE30E74
fmov.s @r1,fr3		; addr: CE30E76
fadd fr3,fr2		; addr: CE30E78
fmov.s fr2,@(r0,r14) 		; addr: CE30E7A
jsr @r3		; addr: CE30E7C
mov r14,r4		; addr: CE30E7E
mov.w @(data_CE30EB2,pc),r0 ; r0 set to 0x1FE		; addr: CE30E80
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE30E82
extu.b r0,r0		; addr: CE30E84
cmp/eq 0x01,r0 		; addr: CE30E86
bf l_code_CE30EDC		; addr: CE30E88
mov.w @(data_CE30EB4,pc),r0 ; r0 set to 0x1F9		; addr: CE30E8A
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE30E8C
extu.b r0,r0		; addr: CE30E8E
cmp/eq 0x01,r0 		; addr: CE30E90
bf l_code_CE30E9C		; addr: CE30E92
lds.l @r15+,pr 		; addr: CE30E94
mov r14,r4		; addr: CE30E96
bra l_code_CE31162		; addr: CE30E98
mov.l @r15+,r14		; addr: CE30E9A

l_code_CE30E9C:
lds.l @r15+,pr 		; addr: CE30E9C
mov r14,r4		; addr: CE30E9E
bra l_code_CE3106E		; addr: CE30EA0
mov.l @r15+,r14		; addr: CE30EA2

data_CE30EA4:
#data 0x0158		; addr: CE30EA4

data_CE30EA6:
#data 0x01FC		; addr: CE30EA6

data_CE30EA8:
#data 0x03F4		; addr: CE30EA8
#data 0x01A7		; addr: CE30EAA
#data 0x01D601AC		; addr: CE30EAC

data_CE30EB0:
#data 0x01FF		; addr: CE30EB0

data_CE30EB2:
#data 0x01FE		; addr: CE30EB2

data_CE30EB4:
#data 0x01F9		; addr: CE30EB4
#data 0x0000		; addr: CE30EB6

#align4
ptr_CE30EB8_to_data_CE361B0:
#data data_CE361B0		; addr: CE30EB8

ptr_CE30EBC_to_data_CE361C8:
#data data_CE361C8		; addr: CE30EBC

ptr_CE30EC0_to_data_CE361B4:
#data data_CE361B4		; addr: CE30EC0

ptr_CE30EC4_to_data_CE361CC:
#data data_CE361CC		; addr: CE30EC4
#data extern_8C2896B0		; addr: CE30EC8
#data fn_extern_8C034E8C		; addr: CE30ECC

#align4
ptr_CE30ED0_to_ptr_CE362E4_to_f_code_CE30E3C:
#data ptr_CE362E4_to_f_code_CE30E3C		; addr: CE30ED0
#data extern_8C0511E2		; addr: CE30ED4

#align4
ptr_CE30ED8_to_extern_8C052C84:
#data extern_8C052C84		; addr: CE30ED8


l_code_CE30EDC:
mov.w @(data_CE30FC8,pc),r0 ; r0 set to 0x1F9		; addr: CE30EDC
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE30EDE
extu.b r0,r0		; addr: CE30EE0
cmp/eq 0x01,r0 		; addr: CE30EE2
bf l_code_CE30EEE		; addr: CE30EE4
lds.l @r15+,pr 		; addr: CE30EE6
mov r14,r4		; addr: CE30EE8
bra l_code_CE30FE0		; addr: CE30EEA
mov.l @r15+,r14		; addr: CE30EEC

l_code_CE30EEE:
lds.l @r15+,pr 		; addr: CE30EEE
mov r14,r4		; addr: CE30EF0
bra l_code_CE30EF6		; addr: CE30EF2
mov.l @r15+,r14		; addr: CE30EF4

l_code_CE30EF6:
mov.w @(data_CE30FCA,pc),r0 ; r0 set to 0x1E8		; addr: CE30EF6
mov.l r14,@-r15		; addr: CE30EF8
mov r4,r14		; addr: CE30EFA
mov.l r13,@-r15		; addr: CE30EFC
mov.l r12,@-r15		; addr: CE30EFE
sts.l pr,@-r15		; addr: CE30F00
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE30F02
mov.l @(ptr_CE30FD0_to_fn_extern_8C034DEE,pc),r12 ; r12 set to 0x8C034DEE		; addr: CE30F04
extu.b r0,r0		; addr: CE30F06
cmp/eq 0x02,r0 		; addr: CE30F08
bt/s l_code_CE30F1A		; addr: CE30F0A
mov 0x00,r13 ; r13 set to 0x00		; addr: CE30F0C
cmp/eq 0x01,r0 		; addr: CE30F0E
bt l_code_CE30F6C		; addr: CE30F10
cmp/eq 0x00,r0 		; addr: CE30F12
bt data_CE30FA6		; addr: CE30F14
bra l_code_CE30FBE		; addr: CE30F16
nop 		; addr: CE30F18

l_code_CE30F1A:
jsr @r12		; addr: CE30F1A
mov r14,r4		; addr: CE30F1C
exts.b r0,r0		; addr: CE30F1E
cmp/pz r0		; addr: CE30F20
bf l_code_CE30FB0		; addr: CE30F22
mov.w @(data_CE30FCC,pc),r0 ; r0 set to 0x141		; addr: CE30F24
mov.b @(r0,r14),r2		; addr: CE30F26
tst r2,r2		; addr: CE30F28
bt l_code_CE30FBE		; addr: CE30F2A
mov.w @(data_CE30FCE,pc),r0 ; r0 set to 0x1D2		; addr: CE30F2C
mov 0x34,r2 ; r2 set to 0x34		; addr: CE30F2E
mov.b @(r0,r14),r3		; addr: CE30F30
tst r3,r3		; addr: CE30F32
bt/s l_code_CE30F4C		; addr: CE30F34
add r14,r2 ; r2 ??? bc r14 is ???		; addr: CE30F36
mov.w @(data_CE30FCC,pc),r3 ; r3 set to 0x141		; addr: CE30F38
mov.l @(data_CE30FD4,pc),r1 ; r1 set to 0x3FD55555		; addr: CE30F3A
add r14,r3 ; r3 ??? bc r14 is ???		; addr: CE30F3C
mov.b @r3,r3		; addr: CE30F3E
lds r3,fpul 		; addr: CE30F40
float fpul,fr3		; addr: CE30F42
lds r1,fpul 		; addr: CE30F44
fsts fpul,fr2		; addr: CE30F46
bra l_code_CE30F60		; addr: CE30F48
fmul fr2,fr3		; addr: CE30F4A

l_code_CE30F4C:
mov.w @(data_CE30FCC,pc),r3 ; r3 set to 0x141		; addr: CE30F4C
mov.l @(data_CE30FD4,pc),r1 ; r1 set to 0x3FD55555		; addr: CE30F4E
add r14,r3 ; r3 ??? bc r14 is ???		; addr: CE30F50
mov.b @r3,r3		; addr: CE30F52
lds r3,fpul 		; addr: CE30F54
float fpul,fr3		; addr: CE30F56
lds r1,fpul 		; addr: CE30F58
fsts fpul,fr2		; addr: CE30F5A
fmul fr2,fr3		; addr: CE30F5C
fneg fr3		; addr: CE30F5E

l_code_CE30F60:
fmov.s @r2,fr2		; addr: CE30F60
mov.w @(data_CE30FCC,pc),r0 ; r0 set to 0x141, r0 set to 0x141		; addr: CE30F62
fadd fr3,fr2		; addr: CE30F64
fmov.s fr2,@r2		; addr: CE30F66
bra l_code_CE30FBE		; addr: CE30F68
mov.b r13,@(r0,r14) 		; addr: CE30F6A

l_code_CE30F6C:
jsr @r12		; addr: CE30F6C
mov r14,r4		; addr: CE30F6E
exts.b r0,r0		; addr: CE30F70
cmp/pz r0		; addr: CE30F72
bf l_code_CE30FB0		; addr: CE30F74
mov.w @(data_CE30FCC,pc),r0 ; r0 set to 0x141		; addr: CE30F76
mov.b @(r0,r14),r2		; addr: CE30F78
tst r2,r2		; addr: CE30F7A
bt l_code_CE30FBE		; addr: CE30F7C
mov.b r13,@(r0,r14) 		; addr: CE30F7E
add 0x60,r0 ; r0 set to 0x1A1		; addr: CE30F80
mov 0x19,r3 ; r3 set to 0x19		; addr: CE30F82
mov.b r3,@(r0,r14) 		; addr: CE30F84
add 0x0B,r0 ; r0 set to 0x1AC		; addr: CE30F86
mov.w r13,@(r0,r14) 		; addr: CE30F88
add 0xF2,r0 ; r0 set to 0x19E		; addr: CE30F8A
mov.b r13,@(r0,r14) 		; addr: CE30F8C
add 0x26,r0 ; r0 set to 0x1C4		; addr: CE30F8E
mov.l @(ptr_CE30FD8_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0		; addr: CE30F90
mov.l r13,@(r0,r14) 		; addr: CE30F92
mov.b @(0x02,r14),r0 		; addr: CE30F94
mov.l @r3,r2		; addr: CE30F96
extu.b r0,r0 ; r0 set to 0xC4		; addr: CE30F98
shll r0 ; r0 set to 0x188		; addr: CE30F9A
add 0x7C,r2		; addr: CE30F9C
mov.w @(r0,r2),r1		; addr: CE30F9E
add 0x01,r1		; addr: CE30FA0
bra l_code_CE30FBE		; addr: CE30FA2
mov.w r1,@(r0,r2) 		; addr: CE30FA4

data_CE30FA6:
#data 0x4C0B		; addr: CE30FA6
#data 0x600E64E3		; addr: CE30FA8
#data 0x89064011		; addr: CE30FAC


l_code_CE30FB0:
lds.l @r15+,pr 		; addr: CE30FB0
mov.l @(ptr_CE30FDC_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE30FB2
mov r14,r4		; addr: CE30FB4
mov.l @r15+,r12		; addr: CE30FB6
mov.l @r15+,r13		; addr: CE30FB8
jmp @r3		; addr: CE30FBA
mov.l @r15+,r14		; addr: CE30FBC

l_code_CE30FBE:
lds.l @r15+,pr 		; addr: CE30FBE
mov.l @r15+,r12		; addr: CE30FC0
mov.l @r15+,r13		; addr: CE30FC2
rts 		; addr: CE30FC4
mov.l @r15+,r14		; addr: CE30FC6
;-------------------------------------------------------------------------------

data_CE30FC8:
#data 0x01F9		; addr: CE30FC8

data_CE30FCA:
#data 0x01E8		; addr: CE30FCA

data_CE30FCC:
#data 0x0141		; addr: CE30FCC

data_CE30FCE:
#data 0x01D2		; addr: CE30FCE

#align4
ptr_CE30FD0_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE30FD0

data_CE30FD4:
#data 0x3FD55555		; addr: CE30FD4

#align4
ptr_CE30FD8_to_extern_8C2896B0:
#data extern_8C2896B0		; addr: CE30FD8

ptr_CE30FDC_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE30FDC


l_code_CE30FE0:
mov.w @(data_CE310C4,pc),r0 ; r0 set to 0x1E8		; addr: CE30FE0
mov.l r14,@-r15		; addr: CE30FE2
mov r4,r14		; addr: CE30FE4
sts.l pr,@-r15		; addr: CE30FE6
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE30FE8
extu.b r0,r0		; addr: CE30FEA
cmp/eq 0x02,r0 		; addr: CE30FEC
bt l_code_CE30FFC		; addr: CE30FEE
cmp/eq 0x01,r0 		; addr: CE30FF0
bt data_CE31052		; addr: CE30FF2
cmp/eq 0x00,r0 		; addr: CE30FF4
bt data_CE31052		; addr: CE30FF6
bra l_code_CE31068		; addr: CE30FF8
nop 		; addr: CE30FFA

l_code_CE30FFC:
mov.l @(ptr_CE310CC_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE30FFC
jsr @r3		; addr: CE30FFE
mov r14,r4		; addr: CE31000
exts.b r0,r0		; addr: CE31002
cmp/pz r0		; addr: CE31004
bf l_code_CE3105E		; addr: CE31006
mov.w @(data_CE310C6,pc),r0 ; r0 set to 0x141		; addr: CE31008
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???		; addr: CE3100A
tst r3,r3		; addr: CE3100C
bt l_code_CE31068		; addr: CE3100E
mov.w @(data_CE310C8,pc),r0 ; r0 set to 0x1D2		; addr: CE31010
mov 0x34,r2 ; r2 set to 0x34		; addr: CE31012
mov.b @(r0,r14),r3		; addr: CE31014
tst r3,r3		; addr: CE31016
bt/s l_code_CE31030		; addr: CE31018
add r14,r2 ; r2 ??? bc r14 is ???		; addr: CE3101A
mov.w @(data_CE310C6,pc),r3 ; r3 set to 0x141		; addr: CE3101C
mov.l @(data_CE310D0,pc),r1 ; r1 set to 0x3FD55555		; addr: CE3101E
add r14,r3 ; r3 ??? bc r14 is ???		; addr: CE31020
mov.b @r3,r3		; addr: CE31022
lds r3,fpul 		; addr: CE31024
float fpul,fr3		; addr: CE31026
lds r1,fpul 		; addr: CE31028
fsts fpul,fr2		; addr: CE3102A
bra l_code_CE31044		; addr: CE3102C
fmul fr2,fr3		; addr: CE3102E

l_code_CE31030:
mov.w @(data_CE310C6,pc),r3 ; r3 set to 0x141		; addr: CE31030
mov.l @(data_CE310D0,pc),r1 ; r1 set to 0x3FD55555		; addr: CE31032
add r14,r3 ; r3 ??? bc r14 is ???		; addr: CE31034
mov.b @r3,r3		; addr: CE31036
lds r3,fpul 		; addr: CE31038
float fpul,fr3		; addr: CE3103A
lds r1,fpul 		; addr: CE3103C
fsts fpul,fr2		; addr: CE3103E
fmul fr2,fr3		; addr: CE31040
fneg fr3		; addr: CE31042

l_code_CE31044:
fmov.s @r2,fr2		; addr: CE31044
mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00		; addr: CE31046
mov.w @(data_CE310C6,pc),r0 ; r0 set to 0x141, r0 set to 0x141		; addr: CE31048
fadd fr3,fr2		; addr: CE3104A
fmov.s fr2,@r2		; addr: CE3104C
bra l_code_CE31068		; addr: CE3104E
mov.b r3,@(r0,r14) 		; addr: CE31050

data_CE31052:
#data 0xD31E		; addr: CE31052
#data 0x64E3430B		; addr: CE31054
#data 0x4011600E		; addr: CE31058
#data 0x8904		; addr: CE3105C


l_code_CE3105E:
lds.l @r15+,pr 		; addr: CE3105E
mov.l @(ptr_CE310D4_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE31060
mov r14,r4		; addr: CE31062
jmp @r3		; addr: CE31064
mov.l @r15+,r14		; addr: CE31066

l_code_CE31068:
lds.l @r15+,pr 		; addr: CE31068
rts 		; addr: CE3106A
mov.l @r15+,r14		; addr: CE3106C
;-------------------------------------------------------------------------------

l_code_CE3106E:
mov.w @(data_CE310C4,pc),r0 ; r0 set to 0x1E8		; addr: CE3106E
mov.l r14,@-r15		; addr: CE31070
mov r4,r14		; addr: CE31072
mov.l r13,@-r15		; addr: CE31074
mov.l r12,@-r15		; addr: CE31076
sts.l pr,@-r15		; addr: CE31078
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE3107A
mov.l @(ptr_CE310CC_to_fn_extern_8C034DEE,pc),r12 ; r12 set to 0x8C034DEE		; addr: CE3107C
extu.b r0,r0		; addr: CE3107E
cmp/eq 0x02,r0 		; addr: CE31080
bt/s l_code_CE31092		; addr: CE31082
mov 0x00,r13 ; r13 set to 0x00		; addr: CE31084
cmp/eq 0x01,r0 		; addr: CE31086
bt data_CE31106		; addr: CE31088
cmp/eq 0x00,r0 		; addr: CE3108A
bt data_CE31140		; addr: CE3108C
bra l_code_CE31158		; addr: CE3108E
nop 		; addr: CE31090

l_code_CE31092:
jsr @r12		; addr: CE31092
mov r14,r4		; addr: CE31094
exts.b r0,r0		; addr: CE31096
cmp/pz r0		; addr: CE31098
bf l_code_CE3114A		; addr: CE3109A
mov.w @(data_CE310C6,pc),r0 ; r0 set to 0x141		; addr: CE3109C
mov.b @(r0,r14),r2		; addr: CE3109E
tst r2,r2		; addr: CE310A0
bt l_code_CE310F6		; addr: CE310A2
mov.w @(data_CE310C8,pc),r0 ; r0 set to 0x1D2		; addr: CE310A4
mov 0x34,r2 ; r2 set to 0x34		; addr: CE310A6
mov.b @(r0,r14),r3		; addr: CE310A8
tst r3,r3		; addr: CE310AA
bt/s data_CE310D8		; addr: CE310AC
add r14,r2 ; r2 ??? bc r14 is ???		; addr: CE310AE
mov.w @(data_CE310C6,pc),r3 ; r3 set to 0x141		; addr: CE310B0
mov.l @(data_CE310D0,pc),r1 ; r1 set to 0x3FD55555		; addr: CE310B2
add r14,r3 ; r3 ??? bc r14 is ???		; addr: CE310B4
mov.b @r3,r3		; addr: CE310B6
lds r3,fpul 		; addr: CE310B8
float fpul,fr3		; addr: CE310BA
lds r1,fpul 		; addr: CE310BC
fsts fpul,fr2		; addr: CE310BE
bra data_CE310EC		; addr: CE310C0
fmul fr2,fr3		; addr: CE310C2

data_CE310C4:
#data 0x01E8		; addr: CE310C4

data_CE310C6:
#data 0x0141		; addr: CE310C6

data_CE310C8:
#data 0x01D2		; addr: CE310C8
#data 0x0000		; addr: CE310CA

#align4
ptr_CE310CC_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE310CC

data_CE310D0:
#data 0x3FD55555		; addr: CE310D0

#align4
ptr_CE310D4_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE310D4

data_CE310D8:
#data 0xD140937B		; addr: CE310D8
#data 0x633033EC		; addr: CE310DC
#data 0xF32D435A		; addr: CE310E0
#data 0xF20D415A		; addr: CE310E4
#data 0xF34DF322		; addr: CE310E8

#align4
data_CE310EC:
#data 0x9070F228		; addr: CE310EC
#data 0xF22AF230		; addr: CE310F0
#data 0x0ED4		; addr: CE310F4


l_code_CE310F6:
mov.w @(data_CE311D4,pc),r0 ; r0 set to 0x14B		; addr: CE310F6
mov.b @(r0,r14),r3		; addr: CE310F8
tst r3,r3		; addr: CE310FA
bt l_code_CE31158		; addr: CE310FC
mov 0x05,r3 ; r3 set to 0x05		; addr: CE310FE
mov.b r13,@(r0,r14) 		; addr: CE31100
bra l_code_CE3111E		; addr: CE31102
add 0x56,r0		; addr: CE31104

data_CE31106:
#data 0x4C0B		; addr: CE31106
#data 0x600E64E3		; addr: CE31108
#data 0x8B1C4011		; addr: CE3110C
#data 0x03EC905F		; addr: CE31110
#data 0x891F2338		; addr: CE31114
#data 0x70600ED4		; addr: CE31118
#data 0xE31A		; addr: CE3111C


l_code_CE3111E:
mov.b r3,@(r0,r14) 		; addr: CE3111E
mov.w @(data_CE311D6,pc),r0 ; r0 set to 0x1AC		; addr: CE31120
mov.l @(ptr_CE311E0_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0		; addr: CE31122
mov.w r13,@(r0,r14) 		; addr: CE31124
add 0xF2,r0 ; r0 set to 0x19E		; addr: CE31126
mov.b r13,@(r0,r14) 		; addr: CE31128
add 0x26,r0 ; r0 set to 0x1C4		; addr: CE3112A
mov.l r13,@(r0,r14) 		; addr: CE3112C
mov.b @(0x02,r14),r0 		; addr: CE3112E
mov.l @r3,r2		; addr: CE31130
extu.b r0,r0 ; r0 set to 0xC4		; addr: CE31132
shll r0 ; r0 set to 0x188		; addr: CE31134
add 0x7C,r2		; addr: CE31136
mov.w @(r0,r2),r1		; addr: CE31138
add 0x01,r1		; addr: CE3113A
bra l_code_CE31158		; addr: CE3113C
mov.w r1,@(r0,r2) 		; addr: CE3113E

#align4
data_CE31140:
#data 0x64E34C0B		; addr: CE31140
#data 0x4011600E		; addr: CE31144
#data 0x8906		; addr: CE31148


l_code_CE3114A:
lds.l @r15+,pr 		; addr: CE3114A
mov.l @(ptr_CE311E4_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE3114C
mov r14,r4		; addr: CE3114E
mov.l @r15+,r12		; addr: CE31150
mov.l @r15+,r13		; addr: CE31152
jmp @r3		; addr: CE31154
mov.l @r15+,r14		; addr: CE31156

l_code_CE31158:
lds.l @r15+,pr 		; addr: CE31158
mov.l @r15+,r12		; addr: CE3115A
mov.l @r15+,r13		; addr: CE3115C
rts 		; addr: CE3115E
mov.l @r15+,r14		; addr: CE31160
;-------------------------------------------------------------------------------

l_code_CE31162:
mov.w @(data_CE311D8,pc),r0 ; r0 set to 0x1E8		; addr: CE31162
mov.l r14,@-r15		; addr: CE31164
mov r4,r14		; addr: CE31166
sts.l pr,@-r15		; addr: CE31168
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE3116A
extu.b r0,r0		; addr: CE3116C
cmp/eq 0x01,r0 		; addr: CE3116E
bt l_code_CE3117E		; addr: CE31170
cmp/eq 0x00,r0 		; addr: CE31172
bt l_code_CE3117E		; addr: CE31174
cmp/eq 0x02,r0 		; addr: CE31176
bt l_code_CE3117E		; addr: CE31178
bra l_code_CE31194		; addr: CE3117A
nop 		; addr: CE3117C

l_code_CE3117E:
mov.l @(ptr_CE311E8_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE3117E
jsr @r3		; addr: CE31180
mov r14,r4		; addr: CE31182
exts.b r0,r0		; addr: CE31184
cmp/pz r0		; addr: CE31186
bt l_code_CE31194		; addr: CE31188
lds.l @r15+,pr 		; addr: CE3118A
mov.l @(ptr_CE311E4_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE3118C
mov r14,r4		; addr: CE3118E
jmp @r3		; addr: CE31190
mov.l @r15+,r14		; addr: CE31192

l_code_CE31194:
lds.l @r15+,pr 		; addr: CE31194
rts 		; addr: CE31196
mov.l @r15+,r14		; addr: CE31198
;-------------------------------------------------------------------------------

data_CE3119A:
#data 0x2FE6		; addr: CE3119A
#data 0xD3134F22		; addr: CE3119C
#data 0x6E43430B		; addr: CE311A0
#data 0x420BD212		; addr: CE311A4
#data 0x4F2664E3		; addr: CE311A8
#data 0x6EF664E3		; addr: CE311AC


f_code_CE311B0:
mov.l r14,@-r15		; addr: CE311B0
sts.l pr,@-r15		; addr: CE311B2
mov.l @(ptr_CE311F4_to_fn_extern_8C04FEA8,pc),r3 ; r3 set to 0x8C04FEA8		; addr: CE311B4
jsr @r3		; addr: CE311B6
mov r4,r14		; addr: CE311B8
mov.l @(ptr_CE311F8_to_fn_extern_8C050048,pc),r2 ; r2 set to 0x8C050048		; addr: CE311BA
jsr @r2		; addr: CE311BC
mov r14,r4		; addr: CE311BE
mov.w @(data_CE311DA,pc),r0 ; r0 set to 0x1FE		; addr: CE311C0
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE311C2
extu.b r0,r0		; addr: CE311C4
cmp/eq 0x01,r0 		; addr: CE311C6
bf l_code_CE311FC		; addr: CE311C8
bsr l_code_CE312C8		; addr: CE311CA
mov r14,r4		; addr: CE311CC
bra l_code_CE31200		; addr: CE311CE
nop 		; addr: CE311D0
#data 0x0141		; addr: CE311D2

data_CE311D4:
#data 0x014B		; addr: CE311D4

data_CE311D6:
#data 0x01AC		; addr: CE311D6

data_CE311D8:
#data 0x01E8		; addr: CE311D8

data_CE311DA:
#data 0x01FE		; addr: CE311DA
#data 0x3FD55555		; addr: CE311DC

#align4
ptr_CE311E0_to_extern_8C2896B0:
#data extern_8C2896B0		; addr: CE311E0

ptr_CE311E4_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE311E4

ptr_CE311E8_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE311E8
#data extern_8C050084		; addr: CE311EC
#data extern_8C04FF88		; addr: CE311F0

#align4
ptr_CE311F4_to_fn_extern_8C04FEA8:
#data fn_extern_8C04FEA8		; addr: CE311F4

ptr_CE311F8_to_fn_extern_8C050048:
#data fn_extern_8C050048		; addr: CE311F8


l_code_CE311FC:
bsr l_code_CE3121C		; addr: CE311FC
mov r14,r4		; addr: CE311FE

l_code_CE31200:
mov.l @(ptr_CE312F4_to_fn_extern_8C052CE2,pc),r3 ; r3 set to 0x8C052CE2, r3 set to 0x8C052CE2		; addr: CE31200
jsr @r3		; addr: CE31202
mov r14,r4		; addr: CE31204
extu.b r0,r0		; addr: CE31206
tst r0,r0		; addr: CE31208
bt l_code_CE31216		; addr: CE3120A
lds.l @r15+,pr 		; addr: CE3120C
mov.l @(ptr_CE312F8_to_fn_extern_8C052DAC,pc),r3 ; r3 set to 0x8C052DAC, r3 set to 0x8C052DAC		; addr: CE3120E
mov r14,r4		; addr: CE31210
jmp @r3		; addr: CE31212
mov.l @r15+,r14		; addr: CE31214

l_code_CE31216:
lds.l @r15+,pr 		; addr: CE31216
rts 		; addr: CE31218
mov.l @r15+,r14		; addr: CE3121A
;-------------------------------------------------------------------------------

l_code_CE3121C:
mov.w @(data_CE312EA,pc),r0 ; r0 set to 0x1E8		; addr: CE3121C
mov.l r14,@-r15		; addr: CE3121E
mov r4,r14		; addr: CE31220
sts.l pr,@-r15		; addr: CE31222
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE31224
extu.b r0,r0		; addr: CE31226
cmp/eq 0x02,r0 		; addr: CE31228
bt data_CE31238		; addr: CE3122A
cmp/eq 0x00,r0 		; addr: CE3122C
bt data_CE312AC		; addr: CE3122E
cmp/eq 0x01,r0 		; addr: CE31230
bt data_CE312AC		; addr: CE31232
bra l_code_CE312C2		; addr: CE31234
nop 		; addr: CE31236

#align4
data_CE31238:
#data 0x430BD330		; addr: CE31238
#data 0x600E64E3		; addr: CE3123C
#data 0x8B394011		; addr: CE31240
#data 0x02EC9052		; addr: CE31244
#data 0x893A2228		; addr: CE31248
#data 0x600C00EC		; addr: CE3124C
#data 0x8F038801		; addr: CE31250
#data 0x904AE400		; addr: CE31254
#data 0x0E24E20E		; addr: CE31258

#align4
data_CE3125C:
#data 0xD5289048		; addr: CE3125C
#data 0x70F20E45		; addr: CE31260
#data 0x70260E44		; addr: CE31264
#data 0x84E20E46		; addr: CE31268
#data 0x600C6352		; addr: CE3126C
#data 0x737C4000		; addr: CE31270
#data 0x7201023D		; addr: CE31274
#data 0x90370325		; addr: CE31278
#data 0x600C00EC		; addr: CE3127C
#data 0x8B028802		; addr: CE31280
#data 0xE21C9033		; addr: CE31284
#data 0x0E24		; addr: CE31288

data_CE3128A:
#data 0x9031		; addr: CE3128A
#data 0x70F20E45		; addr: CE3128C
#data 0x70260E44		; addr: CE31290
#data 0x84E20E46		; addr: CE31294
#data 0x600C6352		; addr: CE31298
#data 0x737C4000		; addr: CE3129C
#data 0x7201023D		; addr: CE312A0
#data 0x90210325		; addr: CE312A4
#data 0x0E44A00B		; addr: CE312A8

#align4
data_CE312AC:
#data 0x420BD213		; addr: CE312AC
#data 0x600E64E3		; addr: CE312B0
#data 0x89044011		; addr: CE312B4

#align4
data_CE312B8:
#data 0xD2124F26		; addr: CE312B8
#data 0x422B64E3		; addr: CE312BC
#data 0x6EF6		; addr: CE312C0


l_code_CE312C2:
lds.l @r15+,pr 		; addr: CE312C2
rts 		; addr: CE312C4
mov.l @r15+,r14		; addr: CE312C6
;-------------------------------------------------------------------------------

l_code_CE312C8:
sts.l pr,@-r15		; addr: CE312C8
add 0xFC,r15		; addr: CE312CA
mov.l @(ptr_CE312FC_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE312CC
jsr @r3		; addr: CE312CE
mov.l r4,@r15		; addr: CE312D0
exts.b r0,r0		; addr: CE312D2
cmp/pz r0		; addr: CE312D4
bt l_code_CE312E2		; addr: CE312D6
mov.l @r15,r4		; addr: CE312D8
add 0x04,r15		; addr: CE312DA
mov.l @(ptr_CE31304_to_fn_extern_8C05176E,pc),r3 ; r3 set to 0x8C05176E		; addr: CE312DC
jmp @r3		; addr: CE312DE
lds.l @r15+,pr 		; addr: CE312E0

l_code_CE312E2:
add 0x04,r15		; addr: CE312E2
lds.l @r15+,pr 		; addr: CE312E4
rts 		; addr: CE312E6
nop 		; addr: CE312E8
;-------------------------------------------------------------------------------

data_CE312EA:
#data 0x01E8		; addr: CE312EA
#data 0x01A1014B		; addr: CE312EC
#data 0x000001AC		; addr: CE312F0

#align4
ptr_CE312F4_to_fn_extern_8C052CE2:
#data fn_extern_8C052CE2		; addr: CE312F4

ptr_CE312F8_to_fn_extern_8C052DAC:
#data fn_extern_8C052DAC		; addr: CE312F8

ptr_CE312FC_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE312FC
#data extern_8C2896B0		; addr: CE31300

#align4
ptr_CE31304_to_fn_extern_8C05176E:
#data fn_extern_8C05176E		; addr: CE31304

data_CE31308:
#data 0x6E432FE6		; addr: CE31308
#data 0x4F222FD6		; addr: CE3130C
#data 0x200884E6		; addr: CE31310
#data 0xD3488B2C		; addr: CE31314
#data 0x64E3430B		; addr: CE31318
#data 0xE31D84E6		; addr: CE3131C
#data 0x7001ED00		; addr: CE31320
#data 0xE51480E6		; addr: CE31324
#data 0xE6039081		; addr: CE31328
#data 0x700B0E34		; addr: CE3132C
#data 0x70F20ED5		; addr: CE31330
#data 0x70260ED4		; addr: CE31334
#data 0x0ED6D340		; addr: CE31338
#data 0x623284E2		; addr: CE3133C
#data 0x4000600C		; addr: CE31340
#data 0x012D727C		; addr: CE31344
#data 0x02157101		; addr: CE31348
#data 0xD23C9070		; addr: CE3134C
#data 0x420B0ED4		; addr: CE31350
#data 0xD33B64E3		; addr: CE31354
#data 0x430BE516		; addr: CE31358
#data 0xD23A64E3		; addr: CE3135C
#data 0x420BE505		; addr: CE31360
#data 0xD33964E3		; addr: CE31364
#data 0xE60265D3		; addr: CE31368
#data 0x64E3430B		; addr: CE3136C

#align4
data_CE31370:
#data 0x00EC905F		; addr: CE31370
#data 0x8803600C		; addr: CE31374
#data 0xD2358B02		; addr: CE31378
#data 0x64E3420B		; addr: CE3137C

#align4
data_CE31380:
#data 0xD334E15C		; addr: CE31380
#data 0xE03431EC		; addr: CE31384
#data 0xF2E6F318		; addr: CE31388
#data 0x31ECE168		; addr: CE3138C
#data 0xFE27F230		; addr: CE31390
#data 0xF2E6E05C		; addr: CE31394
#data 0xE160F318		; addr: CE31398
#data 0xF23031EC		; addr: CE3139C
#data 0xE038FE27		; addr: CE313A0
#data 0xF318F2E6		; addr: CE313A4
#data 0x31ECE16C		; addr: CE313A8
#data 0xFE27F230		; addr: CE313AC
#data 0xF2E6E060		; addr: CE313B0
#data 0xF230F318		; addr: CE313B4
#data 0x430BFE27		; addr: CE313B8
#data 0xD22664E3		; addr: CE313BC
#data 0x64E3420B		; addr: CE313C0
#data 0x4011600E		; addr: CE313C4
#data 0x4F268905		; addr: CE313C8
#data 0x64E3D223		; addr: CE313CC
#data 0x422B6DF6		; addr: CE313D0
#data 0x6EF6		; addr: CE313D4

data_CE313D6:
#data 0x4F26		; addr: CE313D6
#data 0x000B6DF6		; addr: CE313D8
#data 0x6EF6		; addr: CE313DC
;-------------------------------------------------------------------------------

f_code_CE313DE:
mov r4,r3		; addr: CE313DE
mov.l @(ptr_CE31460_to_ptr_CE362F4_to_f_code_CE313F0,pc),r1 ; r1 set to 0xCE362F4		; addr: CE313E0
mov.l r4,@-r15		; addr: CE313E2
mov.b @(0x06,r3),r0 		; addr: CE313E4
extu.b r0,r0		; addr: CE313E6
shll2 r0		; addr: CE313E8
mov.l @(r0,r1),r3		; addr: CE313EA
jmp @r3		; addr: CE313EC
add 0x04,r15		; addr: CE313EE

f_code_CE313F0:
mov.l r14,@-r15		; addr: CE313F0
mov.l r8,@-r15		; addr: CE313F2
sts.l pr,@-r15		; addr: CE313F4
mov.l @(ptr_CE31458_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE313F6
jsr @r3		; addr: CE313F8
mov r4,r14		; addr: CE313FA
mov.w @(data_CE31434,pc),r0 ; r0 set to 0x141		; addr: CE313FC
mov.b @(r0,r14),r2		; addr: CE313FE
tst r2,r2		; addr: CE31400
bt l_code_CE31490		; addr: CE31402
mov 0x00,r3 ; r3 set to 0x00		; addr: CE31404
fldi0 fr4		; addr: CE31406
mov.b r3,@(r0,r14) 		; addr: CE31408
mov.b @(0x06,r14),r0 		; addr: CE3140A
add 0x01,r0 ; r0 set to 0x142		; addr: CE3140C
mov.b r0,@(0x06,r14) 		; addr: CE3140E
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE31410
fmov.s fr4,@(r0,r14) 		; addr: CE31412
mov 0x60,r0 ; r0 set to 0x60		; addr: CE31414
fmov.s fr4,@(r0,r14) 		; addr: CE31416
mov 0x68,r0 ; r0 set to 0x68		; addr: CE31418
fmov.s fr4,@(r0,r14) 		; addr: CE3141A
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE3141C
fmov.s fr4,@(r0,r14) 		; addr: CE3141E
mov.w @(data_CE31436,pc),r0 ; r0 set to 0x1D2		; addr: CE31420
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???		; addr: CE31422
tst r3,r3		; addr: CE31424
bt l_code_CE31468		; addr: CE31426
mova @(data_CE31464,pc),r0  ; r0 set to 0xCE31464		; addr: CE31428
bra l_code_CE3146C		; addr: CE3142A
fmov.s @r0,fr3		; addr: CE3142C
#data 0x01A1		; addr: CE3142E
#data 0x01FF01F9		; addr: CE31430

data_CE31434:
#data 0x0141		; addr: CE31434

data_CE31436:
#data 0x01D2		; addr: CE31436
#data fn_extern_8C052B4C		; addr: CE31438
#data extern_8C2896B0		; addr: CE3143C
#data fn_extern_8C034E8C		; addr: CE31440
#data fn_extern_8C04223A		; addr: CE31444
#data fn_extern_8C056DE4		; addr: CE31448
#data fn_extern_8C0D13BC		; addr: CE3144C
#data extern_8C0511E2		; addr: CE31450
#data extern_8C052C84		; addr: CE31454

#align4
ptr_CE31458_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE31458
#data fn_extern_8C051648		; addr: CE3145C

#align4
ptr_CE31460_to_ptr_CE362F4_to_f_code_CE313F0:
#data ptr_CE362F4_to_f_code_CE313F0		; addr: CE31460

data_CE31464:
#data 0x417D5555		; addr: CE31464


l_code_CE31468:
mova @(data_CE31588,pc),r0  ; r0 init to 0xCE31588		; addr: CE31468
fmov.s @r0,fr3		; addr: CE3146A

l_code_CE3146C:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C		; addr: CE3146C
fmov.s fr3,@(r0,r14) 		; addr: CE3146E
mov 0x34,r8 ; r8 set to 0x34, r8 set to 0x34		; addr: CE31470
mov.w @(data_CE31582,pc),r0 ; r0 set to 0x1D2, r0 set to 0x1D2		; addr: CE31472
mov.b @(r0,r14),r3		; addr: CE31474
tst r3,r3		; addr: CE31476
bt/s data_CE31484		; addr: CE31478
add r14,r8 ; r8 ??? bc r14 is ???, r8 ??? bc r14 is ???		; addr: CE3147A
mov.l @(data_CE3158C,pc),r1 ; r1 set to 0x41D55555, r1 set to 0x41D55555		; addr: CE3147C
lds r1,fpul 		; addr: CE3147E
bra data_CE3148A		; addr: CE31480
fsts fpul,fr3		; addr: CE31482

#align4
data_CE31484:
#data 0x425AD242		; addr: CE31484
#data 0xF30D		; addr: CE31488

data_CE3148A:
#data 0xF288		; addr: CE3148A
#data 0xF82AF230		; addr: CE3148C


l_code_CE31490:
lds.l @r15+,pr 		; addr: CE31490
mov.l @r15+,r8		; addr: CE31492
rts 		; addr: CE31494
mov.l @r15+,r14		; addr: CE31496
;-------------------------------------------------------------------------------

f_code_CE31498:
mov.l r14,@-r15		; addr: CE31498
sts.l pr,@-r15		; addr: CE3149A
mov.l @(ptr_CE31594_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE3149C
jsr @r3		; addr: CE3149E
mov r4,r14		; addr: CE314A0
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE314A2
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE314A4
mov 0x34,r0 ; r0 set to 0x34		; addr: CE314A6
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE314A8
fmov.s @(r0,r14),fr2		; addr: CE314AA
mov 0x68,r1 ; r1 set to 0x68		; addr: CE314AC
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE314AE
fadd fr3,fr2		; addr: CE314B0
fmov.s fr2,@(r0,r14) 		; addr: CE314B2
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE314B4
fmov.s @(r0,r14),fr2		; addr: CE314B6
fmov.s @r1,fr3		; addr: CE314B8
mov 0x60,r1 ; r1 set to 0x60		; addr: CE314BA
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE314BC
fadd fr3,fr2		; addr: CE314BE
fmov.s fr2,@(r0,r14) 		; addr: CE314C0
mov 0x38,r0 ; r0 set to 0x38		; addr: CE314C2
fmov.s @(r0,r14),fr2		; addr: CE314C4
fmov.s @r1,fr3		; addr: CE314C6
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE314C8
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE314CA
fadd fr3,fr2		; addr: CE314CC
fmov.s fr2,@(r0,r14) 		; addr: CE314CE
mov 0x60,r0 ; r0 set to 0x60		; addr: CE314D0
fmov.s @(r0,r14),fr2		; addr: CE314D2
fmov.s @r1,fr3		; addr: CE314D4
fadd fr3,fr2		; addr: CE314D6
fmov.s fr2,@(r0,r14) 		; addr: CE314D8
mov.w @(data_CE31584,pc),r0 ; r0 set to 0x141		; addr: CE314DA
mov.b @(r0,r14),r3		; addr: CE314DC
tst r3,r3		; addr: CE314DE
bt l_code_CE31510		; addr: CE314E0
mov.b @(0x06,r14),r0 		; addr: CE314E2
fldi0 fr4		; addr: CE314E4
add 0x01,r0 ; r0 set to 0x142		; addr: CE314E6
mov.b r0,@(0x06,r14) 		; addr: CE314E8
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE314EA
fmov.s fr4,@(r0,r14) 		; addr: CE314EC
mov 0x60,r0 ; r0 set to 0x60		; addr: CE314EE
fmov.s fr4,@(r0,r14) 		; addr: CE314F0
mov 0x68,r0 ; r0 set to 0x68		; addr: CE314F2
fmov.s fr4,@(r0,r14) 		; addr: CE314F4
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE314F6
fmov.s fr4,@(r0,r14) 		; addr: CE314F8
mov.w @(data_CE31582,pc),r0 ; r0 set to 0x1D2		; addr: CE314FA
mov.b @(r0,r14),r3		; addr: CE314FC
tst r3,r3		; addr: CE314FE
bt data_CE31508		; addr: CE31500
mova @(data_CE31598,pc),r0  ; r0 set to 0xCE31598		; addr: CE31502
bra data_CE3150C		; addr: CE31504
fmov.s @r0,fr3		; addr: CE31506

#align4
data_CE31508:
#data 0xF308C724		; addr: CE31508

#align4
data_CE3150C:
#data 0xFE37E05C		; addr: CE3150C


l_code_CE31510:
lds.l @r15+,pr 		; addr: CE31510
rts 		; addr: CE31512
mov.l @r15+,r14		; addr: CE31514
;-------------------------------------------------------------------------------

f_code_CE31516:
mov.l r14,@-r15		; addr: CE31516
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE31518
mov r4,r14		; addr: CE3151A
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE3151C
mov 0x34,r0 ; r0 set to 0x34		; addr: CE3151E
mov.l @(ptr_CE31594_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE31520
sts.l pr,@-r15		; addr: CE31522
fmov.s @(r0,r14),fr2		; addr: CE31524
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE31526
mov 0x68,r1 ; r1 set to 0x68		; addr: CE31528
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE3152A
fadd fr3,fr2		; addr: CE3152C
fmov.s fr2,@(r0,r14) 		; addr: CE3152E
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE31530
fmov.s @r1,fr3		; addr: CE31532
mov 0x60,r1 ; r1 set to 0x60		; addr: CE31534
fmov.s @(r0,r14),fr2		; addr: CE31536
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE31538
fadd fr3,fr2		; addr: CE3153A
fmov.s fr2,@(r0,r14) 		; addr: CE3153C
mov 0x38,r0 ; r0 set to 0x38		; addr: CE3153E
fmov.s @(r0,r14),fr2		; addr: CE31540
fmov.s @r1,fr3		; addr: CE31542
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE31544
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE31546
fadd fr3,fr2		; addr: CE31548
fmov.s fr2,@(r0,r14) 		; addr: CE3154A
mov 0x60,r0 ; r0 set to 0x60		; addr: CE3154C
fmov.s @(r0,r14),fr2		; addr: CE3154E
fmov.s @r1,fr3		; addr: CE31550
fadd fr3,fr2		; addr: CE31552
fmov.s fr2,@(r0,r14) 		; addr: CE31554
jsr @r3		; addr: CE31556
mov r14,r4		; addr: CE31558
exts.b r0,r0 ; r0 ??		; addr: CE3155A
cmp/pz r0		; addr: CE3155C
bt l_code_CE3156A		; addr: CE3155E
lds.l @r15+,pr 		; addr: CE31560
mov.l @(ptr_CE315A0_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE31562
mov r14,r4		; addr: CE31564
jmp @r3		; addr: CE31566
mov.l @r15+,r14		; addr: CE31568

l_code_CE3156A:
lds.l @r15+,pr 		; addr: CE3156A
rts 		; addr: CE3156C
mov.l @r15+,r14		; addr: CE3156E
;-------------------------------------------------------------------------------

f_code_CE31570:
mov r4,r3		; addr: CE31570
mov.l @(ptr_CE315A4_to_ptr_CE36300_to_data_CE315A8,pc),r1 ; r1 set to 0xCE36300		; addr: CE31572
mov.l r4,@-r15		; addr: CE31574
mov.b @(0x06,r3),r0 		; addr: CE31576
extu.b r0,r0		; addr: CE31578
shll2 r0		; addr: CE3157A
mov.l @(r0,r1),r3		; addr: CE3157C
jmp @r3		; addr: CE3157E
add 0x04,r15		; addr: CE31580

data_CE31582:
#data 0x01D2		; addr: CE31582

data_CE31584:
#data 0x0141		; addr: CE31584
#data 0x0000		; addr: CE31586

#align4
data_CE31588:
#data 0xC17D5555		; addr: CE31588

#align4
data_CE3158C:
#data 0x41D55555		; addr: CE3158C
#data 0xC1D55555		; addr: CE31590

#align4
ptr_CE31594_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE31594

data_CE31598:
#data 0x3FD55555		; addr: CE31598
#data 0xBFD55555		; addr: CE3159C

#align4
ptr_CE315A0_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE315A0

ptr_CE315A4_to_ptr_CE36300_to_data_CE315A8:
#data ptr_CE36300_to_data_CE315A8		; addr: CE315A4

data_CE315A8:
#data 0x4F222FE6		; addr: CE315A8
#data 0x430BD34E		; addr: CE315AC
#data 0x90956E43		; addr: CE315B0
#data 0x222802EC		; addr: CE315B4
#data 0x84E68B24		; addr: CE315B8
#data 0x80E67001		; addr: CE315BC
#data 0xF308C74A		; addr: CE315C0
#data 0xFE37E05C		; addr: CE315C4
#data 0xF308C749		; addr: CE315C8
#data 0xFE37E068		; addr: CE315CC
#data 0xF308C748		; addr: CE315D0
#data 0xFE37E060		; addr: CE315D4
#data 0xF308C747		; addr: CE315D8
#data 0xFE37E06C		; addr: CE315DC
#data 0x03ED907F		; addr: CE315E0
#data 0x89072338		; addr: CE315E4
#data 0xF3E6E05C		; addr: CE315E8
#data 0xFE37F34D		; addr: CE315EC
#data 0xF3E6E068		; addr: CE315F0
#data 0xFE37F34D		; addr: CE315F4

#align4
data_CE315F8:
#data 0x64E3E010		; addr: CE315F8
#data 0x4F2681EE		; addr: CE315FC
#data 0x6EF6A003		; addr: CE31600

#align4
data_CE31604:
#data 0x000B4F26		; addr: CE31604
#data 0x6EF6		; addr: CE31608
;-------------------------------------------------------------------------------

data_CE3160A:
#data 0x2FE6		; addr: CE3160A
#data 0xD3364F22		; addr: CE3160C
#data 0x6E43430B		; addr: CE31610
#data 0x31ECE15C		; addr: CE31614
#data 0xF318E034		; addr: CE31618
#data 0xE168F2E6		; addr: CE3161C
#data 0xF23031EC		; addr: CE31620
#data 0xE05CFE27		; addr: CE31624
#data 0xF318F2E6		; addr: CE31628
#data 0x31ECE160		; addr: CE3162C
#data 0xFE27F230		; addr: CE31630
#data 0xF2E6E038		; addr: CE31634
#data 0xE16CF318		; addr: CE31638
#data 0xF23031EC		; addr: CE3163C
#data 0xE060FE27		; addr: CE31640
#data 0xF318F2E6		; addr: CE31644
#data 0xFE27F230		; addr: CE31648
#data 0xF3E6E038		; addr: CE3164C
#data 0xF2E69048		; addr: CE31650
#data 0x8926F325		; addr: CE31654
#data 0xF48D84E6		; addr: CE31658
#data 0x80E67001		; addr: CE3165C
#data 0xF3E69040		; addr: CE31660
#data 0xFE37E038		; addr: CE31664
#data 0xFE47E060		; addr: CE31668
#data 0xFE47E06C		; addr: CE3166C
#data 0xF308C722		; addr: CE31670
#data 0xFE37E05C		; addr: CE31674
#data 0xF308C721		; addr: CE31678
#data 0xFE37E068		; addr: CE3167C
#data 0x03ED902F		; addr: CE31680
#data 0x8D082338		; addr: CE31684
#data 0xE05CE603		; addr: CE31688
#data 0xF34DF3E6		; addr: CE3168C
#data 0xE068FE37		; addr: CE31690
#data 0xF34DF3E6		; addr: CE31694
#data 0xFE37		; addr: CE31698

data_CE3169A:
#data 0x4F26		; addr: CE3169A
#data 0xE502D319		; addr: CE3169C
#data 0x432B64E3		; addr: CE316A0
#data 0x6EF6		; addr: CE316A4

data_CE316A6:
#data 0x4F26		; addr: CE316A6
#data 0x6EF6000B		; addr: CE316A8
;-------------------------------------------------------------------------------

f_code_CE316AC:
sts.l pr,@-r15		; addr: CE316AC
add 0xFC,r15		; addr: CE316AE
mov.l @(ptr_CE316E8_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE316B0
jsr @r3		; addr: CE316B2
mov.l r4,@r15		; addr: CE316B4
exts.b r0,r0		; addr: CE316B6
cmp/pz r0		; addr: CE316B8
bt l_code_CE316C6		; addr: CE316BA
mov.l @r15,r4		; addr: CE316BC
add 0x04,r15		; addr: CE316BE
mov.l @(ptr_CE31708_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE316C0
jmp @r3		; addr: CE316C2
lds.l @r15+,pr 		; addr: CE316C4

l_code_CE316C6:
add 0x04,r15		; addr: CE316C6
lds.l @r15+,pr 		; addr: CE316C8
rts 		; addr: CE316CA
nop 		; addr: CE316CC
;-------------------------------------------------------------------------------

f_code_CE316CE:
mov r4,r3		; addr: CE316CE
mov.l @(ptr_CE3170C_to_ptr_CE3630C_to_f_code_CE31710,pc),r1 ; r1 set to 0xCE3630C		; addr: CE316D0
mov.l r4,@-r15		; addr: CE316D2
mov.b @(0x06,r3),r0 		; addr: CE316D4
extu.b r0,r0		; addr: CE316D6
shll2 r0		; addr: CE316D8
mov.l @(r0,r1),r3		; addr: CE316DA
jmp @r3		; addr: CE316DC
add 0x04,r15		; addr: CE316DE
#data 0x01300141		; addr: CE316E0
#data 0x0000041C		; addr: CE316E4

#align4
ptr_CE316E8_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE316E8
#data 0x417D5555		; addr: CE316EC
#data 0xBEA00000		; addr: CE316F0
#data 0x40CDB6DB		; addr: CE316F4
#data 0xBF092492		; addr: CE316F8
#data 0x40855555		; addr: CE316FC
#data 0xBEA6AAAA		; addr: CE31700
#data fn_extern_8C034E8C		; addr: CE31704

#align4
ptr_CE31708_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE31708

ptr_CE3170C_to_ptr_CE3630C_to_f_code_CE31710:
#data ptr_CE3630C_to_f_code_CE31710		; addr: CE3170C


f_code_CE31710:
mov.l r14,@-r15		; addr: CE31710
mov r4,r14		; addr: CE31712
mov 0x01,r4 ; r4 set to 0x01		; addr: CE31714
mov.l @(data_CE3183C,pc),r1 ; r1 set to 0x434DB6DB		; addr: CE31716
mov.w @(data_CE31832,pc),r5 ; r5 set to 0x2A4		; addr: CE31718
lds r1,fpul 		; addr: CE3171A
add r14,r5 ; r5 ??? bc r14 is ???		; addr: CE3171C
sts.l pr,@-r15		; addr: CE3171E
mov.b @(0x06,r14),r0 		; addr: CE31720
add 0x01,r0		; addr: CE31722
mov.b r0,@(0x06,r14) 		; addr: CE31724
mov.w @(data_CE31834,pc),r0 ; r0 set to 0x12C		; addr: CE31726
mov.b r4,@(r0,r14) 		; addr: CE31728
mov 0x34,r0 ; r0 set to 0x34		; addr: CE3172A
fmov.s @(r0,r14),fr3		; addr: CE3172C
mov 0x38,r0 ; r0 set to 0x38		; addr: CE3172E
fmov.s fr3,@r5		; addr: CE31730
fmov.s @(r0,r14),fr2		; addr: CE31732
fsts fpul,fr3		; addr: CE31734
fadd fr3,fr2		; addr: CE31736
fmov.s fr2,@(r0,r14) 		; addr: CE31738
mova @(data_CE31840,pc),r0  ; r0 set to 0xCE31840		; addr: CE3173A
fmov.s @r0,fr2		; addr: CE3173C
mov 0x60,r0 ; r0 set to 0x60		; addr: CE3173E
fmov.s fr2,@(r0,r14) 		; addr: CE31740
mova @(data_CE31844,pc),r0  ; r0 set to 0xCE31844		; addr: CE31742
fmov.s @r0,fr2		; addr: CE31744
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE31746
fmov.s fr2,@(r0,r14) 		; addr: CE31748
mova @(data_CE31848,pc),r0  ; r0 set to 0xCE31848		; addr: CE3174A
fmov.s @r0,fr4 ; r4 ??		; addr: CE3174C
mov.b @(0x02,r14),r0 		; addr: CE3174E
tst r0,r0		; addr: CE31750
bf data_CE31766		; addr: CE31752
mov.w @(data_CE31836,pc),r0 ; r0 set to 0x130		; addr: CE31754
mov.w r4,@(r0,r14) 		; addr: CE31756
mov 0x34,r0 ; r0 set to 0x34		; addr: CE31758
fmov.s @(r0,r14),fr2		; addr: CE3175A
fsub fr4,fr2		; addr: CE3175C
fmov.s fr2,@(r0,r14) 		; addr: CE3175E
mova @(data_CE3184C,pc),r0  ; r0 set to 0xCE3184C		; addr: CE31760
bra data_CE31778		; addr: CE31762
fmov.s @r0,fr1		; addr: CE31764

data_CE31766:
#data 0x9066		; addr: CE31766
#data 0x0E35E300		; addr: CE31768
#data 0xF2E6E034		; addr: CE3176C
#data 0xFE27F240		; addr: CE31770
#data 0xF108C736		; addr: CE31774

#align4
data_CE31778:
#data 0xD336E05C		; addr: CE31778
#data 0xE068FE17		; addr: CE3177C
#data 0xE502F38D		; addr: CE31780
#data 0xE605FE37		; addr: CE31784
#data 0x64E3430B		; addr: CE31788
#data 0xE50FD232		; addr: CE3178C
#data 0x420BE608		; addr: CE31790
#data 0x200864E3		; addr: CE31794
#data 0x64038D10		; addr: CE31798
#data 0xF3E6E05C		; addr: CE3179C
#data 0xF437F34D		; addr: CE317A0
#data 0xF3E6E068		; addr: CE317A4
#data 0xE060F437		; addr: CE317A8
#data 0xF437F3E6		; addr: CE317AC
#data 0xF3E6E06C		; addr: CE317B0
#data 0x903EF437		; addr: CE317B4
#data 0x043503ED		; addr: CE317B8

#align4
data_CE317BC:
#data 0x000B4F26		; addr: CE317BC
#data 0x6EF6		; addr: CE317C0
;-------------------------------------------------------------------------------

f_code_CE317C2:
mov.l r14,@-r15		; addr: CE317C2
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE317C4
mov r4,r14		; addr: CE317C6
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE317C8
mov 0x34,r0 ; r0 set to 0x34		; addr: CE317CA
mov.l @(ptr_CE3185C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE317CC
sts.l pr,@-r15		; addr: CE317CE
fmov.s @(r0,r14),fr2		; addr: CE317D0
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE317D2
mov 0x68,r1 ; r1 set to 0x68		; addr: CE317D4
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE317D6
fadd fr3,fr2		; addr: CE317D8
fmov.s fr2,@(r0,r14) 		; addr: CE317DA
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE317DC
fmov.s @r1,fr3		; addr: CE317DE
mov 0x60,r1 ; r1 set to 0x60		; addr: CE317E0
fmov.s @(r0,r14),fr2		; addr: CE317E2
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE317E4
fadd fr3,fr2		; addr: CE317E6
fmov.s fr2,@(r0,r14) 		; addr: CE317E8
mov 0x38,r0 ; r0 set to 0x38		; addr: CE317EA
fmov.s @(r0,r14),fr2		; addr: CE317EC
fmov.s @r1,fr3		; addr: CE317EE
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE317F0
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE317F2
fadd fr3,fr2		; addr: CE317F4
fmov.s fr2,@(r0,r14) 		; addr: CE317F6
mov 0x60,r0 ; r0 set to 0x60		; addr: CE317F8
fmov.s @(r0,r14),fr2		; addr: CE317FA
fmov.s @r1,fr3		; addr: CE317FC
fadd fr3,fr2		; addr: CE317FE
fmov.s fr2,@(r0,r14) 		; addr: CE31800
jsr @r3		; addr: CE31802
mov r14,r4		; addr: CE31804
mov.w @(data_CE31838,pc),r0 ; r0 set to 0x141		; addr: CE31806
mov 0x00,r3 ; r3 set to 0x00		; addr: CE31808
mov 0x02,r2 ; r2 set to 0x02		; addr: CE3180A
mov.b r2,@(r0,r14) 		; addr: CE3180C
mov.b r3,@(r0,r14) 		; addr: CE3180E
mov.l @(ptr_CE31860_to_fn_extern_8C0332E0,pc),r3 ; r3 set to 0x8C0332E0		; addr: CE31810
jsr @r3		; addr: CE31812
mov r14,r4		; addr: CE31814
tst r0,r0		; addr: CE31816
bt l_code_CE3182C		; addr: CE31818
mov.b @(0x06,r14),r0 		; addr: CE3181A
mov r14,r4		; addr: CE3181C
mov.l @(ptr_CE31864_to_fn_extern_8C042008,pc),r3 ; r3 set to 0x8C042008		; addr: CE3181E
mov 0x1E,r5 ; r5 set to 0x1E		; addr: CE31820
add 0x01,r0 ; r0 set to 0x142		; addr: CE31822
mov.b r0,@(0x06,r14) 		; addr: CE31824
lds.l @r15+,pr 		; addr: CE31826
jmp @r3		; addr: CE31828
mov.l @r15+,r14		; addr: CE3182A

l_code_CE3182C:
lds.l @r15+,pr 		; addr: CE3182C
rts 		; addr: CE3182E
mov.l @r15+,r14		; addr: CE31830
;-------------------------------------------------------------------------------

data_CE31832:
#data 0x02A4		; addr: CE31832

data_CE31834:
#data 0x012C		; addr: CE31834

data_CE31836:
#data 0x0130		; addr: CE31836

data_CE31838:
#data 0x0141		; addr: CE31838
#data 0x0000		; addr: CE3183A

#align4
data_CE3183C:
#data 0x434DB6DB		; addr: CE3183C

#align4
data_CE31840:
#data 0xC1092492		; addr: CE31840

#align4
data_CE31844:
#data 0x3EAB6DB6		; addr: CE31844

#align4
data_CE31848:
#data 0x43A00000		; addr: CE31848

#align4
data_CE3184C:
#data 0x41555555		; addr: CE3184C
#data 0xC1555555		; addr: CE31850
#data fn_extern_8C034E8C		; addr: CE31854
#data fn_extern_8C0D0584		; addr: CE31858

#align4
ptr_CE3185C_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE3185C

ptr_CE31860_to_fn_extern_8C0332E0:
#data fn_extern_8C0332E0		; addr: CE31860

ptr_CE31864_to_fn_extern_8C042008:
#data fn_extern_8C042008		; addr: CE31864


f_code_CE31868:
mov.l r14,@-r15		; addr: CE31868
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE3186A
mov r4,r14		; addr: CE3186C
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE3186E
mov 0x34,r0 ; r0 set to 0x34		; addr: CE31870
mov.l @(ptr_CE319B4_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE31872
sts.l pr,@-r15		; addr: CE31874
fmov.s @(r0,r14),fr2		; addr: CE31876
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE31878
mov 0x68,r1 ; r1 set to 0x68		; addr: CE3187A
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE3187C
fadd fr3,fr2		; addr: CE3187E
fmov.s fr2,@(r0,r14) 		; addr: CE31880
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE31882
fmov.s @r1,fr3		; addr: CE31884
mov 0x60,r1 ; r1 set to 0x60		; addr: CE31886
fmov.s @(r0,r14),fr2		; addr: CE31888
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE3188A
fadd fr3,fr2		; addr: CE3188C
fmov.s fr2,@(r0,r14) 		; addr: CE3188E
mov 0x38,r0 ; r0 set to 0x38		; addr: CE31890
fmov.s @(r0,r14),fr2		; addr: CE31892
fmov.s @r1,fr3		; addr: CE31894
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE31896
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE31898
fadd fr3,fr2		; addr: CE3189A
fmov.s fr2,@(r0,r14) 		; addr: CE3189C
mov 0x60,r0 ; r0 set to 0x60		; addr: CE3189E
fmov.s @(r0,r14),fr2		; addr: CE318A0
fmov.s @r1,fr3		; addr: CE318A2
fadd fr3,fr2		; addr: CE318A4
fmov.s fr2,@(r0,r14) 		; addr: CE318A6
jsr @r3		; addr: CE318A8
mov r14,r4		; addr: CE318AA
mov.w @(data_CE319AE,pc),r0 ; r0 set to 0x141		; addr: CE318AC
mov 0x00,r3 ; r3 set to 0x00		; addr: CE318AE
mov 0x02,r2 ; r2 set to 0x02		; addr: CE318B0
mov.b r2,@(r0,r14) 		; addr: CE318B2
mov.b r3,@(r0,r14) 		; addr: CE318B4
mov.l @(ptr_CE319B8_to_fn_extern_8C0332E0,pc),r3 ; r3 set to 0x8C0332E0		; addr: CE318B6
jsr @r3		; addr: CE318B8
mov r14,r4		; addr: CE318BA
tst r0,r0		; addr: CE318BC
bf l_code_CE31904		; addr: CE318BE
mov.b @(0x06,r14),r0 		; addr: CE318C0
mov 0x1E,r5 ; r5 set to 0x1E		; addr: CE318C2
mov.l @(ptr_CE319C4_to_fn_extern_8C042008,pc),r3 ; r3 set to 0x8C042008		; addr: CE318C4
add 0x01,r0 ; r0 set to 0x142		; addr: CE318C6
mov.b r0,@(0x06,r14) 		; addr: CE318C8
mova @(data_CE319BC,pc),r0  ; r0 set to 0xCE319BC		; addr: CE318CA
fmov.s @r0,fr3 ; r3 ??		; addr: CE318CC
mov 0x60,r0 ; r0 set to 0x60		; addr: CE318CE
fmov.s fr3,@(r0,r14) 		; addr: CE318D0
mova @(data_CE319C0,pc),r0  ; r0 set to 0xCE319C0		; addr: CE318D2
fmov.s @r0,fr3		; addr: CE318D4
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE318D6
fmov.s fr3,@(r0,r14) 		; addr: CE318D8
jsr @r3		; addr: CE318DA
mov r14,r4		; addr: CE318DC
mov.b @(0x02,r14),r0 		; addr: CE318DE
tst r0,r0		; addr: CE318E0
bf data_CE318F0		; addr: CE318E2
mov.w @(data_CE319B0,pc),r0 ; r0 set to 0x130		; addr: CE318E4
mov 0x00,r3 ; r3 set to 0x00		; addr: CE318E6
mov.w r3,@(r0,r14) 		; addr: CE318E8
mova @(data_CE319C8,pc),r0  ; r0 set to 0xCE319C8		; addr: CE318EA
bra data_CE318FA		; addr: CE318EC
fmov.s @r0,fr3		; addr: CE318EE

#align4
data_CE318F0:
#data 0xE301905E		; addr: CE318F0
#data 0xC7350E35		; addr: CE318F4
#data 0xF308		; addr: CE318F8

data_CE318FA:
#data 0xE05C		; addr: CE318FA
#data 0xE068FE37		; addr: CE318FC
#data 0xFE37F38D		; addr: CE31900


l_code_CE31904:
lds.l @r15+,pr 		; addr: CE31904
rts 		; addr: CE31906
mov.l @r15+,r14		; addr: CE31908
;-------------------------------------------------------------------------------

f_code_CE3190A:
mov.l r14,@-r15		; addr: CE3190A
mov r4,r14		; addr: CE3190C
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE3190E
mov.l r13,@-r15		; addr: CE31910
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE31912
mov.w @(data_CE319B2,pc),r13 ; r13 set to 0x2A4		; addr: CE31914
mov 0x34,r0 ; r0 set to 0x34		; addr: CE31916
sts.l pr,@-r15		; addr: CE31918
fmov.s @(r0,r14),fr2		; addr: CE3191A
add r14,r13 ; r13 ??? bc r14 is ???		; addr: CE3191C
fmov.s @r1,fr3		; addr: CE3191E
mov 0x68,r1 ; r1 set to 0x68		; addr: CE31920
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE31922
fadd fr3,fr2		; addr: CE31924
fmov.s fr2,@(r0,r14) 		; addr: CE31926
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE31928
fmov.s @(r0,r14),fr2		; addr: CE3192A
fmov.s @r1,fr3		; addr: CE3192C
mov 0x60,r1 ; r1 set to 0x60		; addr: CE3192E
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE31930
fadd fr3,fr2		; addr: CE31932
fmov.s fr2,@(r0,r14) 		; addr: CE31934
mov 0x38,r0 ; r0 set to 0x38		; addr: CE31936
fmov.s @(r0,r14),fr2		; addr: CE31938
fmov.s @r1,fr3		; addr: CE3193A
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE3193C
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE3193E
fadd fr3,fr2		; addr: CE31940
fmov.s fr2,@(r0,r14) 		; addr: CE31942
mov 0x60,r0 ; r0 set to 0x60		; addr: CE31944
fmov.s @r1,fr3		; addr: CE31946
fmov.s @(r0,r14),fr2		; addr: CE31948
fadd fr3,fr2		; addr: CE3194A
mov.l @(ptr_CE319B4_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE3194C
fmov.s fr2,@(r0,r14) 		; addr: CE3194E
jsr @r3		; addr: CE31950
mov r14,r4		; addr: CE31952
mov.w @(data_CE319AE,pc),r0 ; r0 set to 0x141		; addr: CE31954
mov 0x00,r3 ; r3 set to 0x00		; addr: CE31956
mov 0x02,r2 ; r2 set to 0x02		; addr: CE31958
mov.b r2,@(r0,r14) 		; addr: CE3195A
mov.b r3,@(r0,r14) 		; addr: CE3195C
mov.b @(0x02,r14),r0 		; addr: CE3195E
tst r0,r0		; addr: CE31960
bf l_code_CE31972		; addr: CE31962
mov 0x34,r0 ; r0 set to 0x34		; addr: CE31964
fmov.s @r13,fr3 ; r3 ??? bc r13 is ???		; addr: CE31966
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???		; addr: CE31968
fcmp/gt fr3,fr2		; addr: CE3196A
bf l_code_CE3197C		; addr: CE3196C
bra l_code_CE319A6		; addr: CE3196E
nop 		; addr: CE31970

l_code_CE31972:
mov 0x34,r0 ; r0 set to 0x34		; addr: CE31972
fmov.s @r13,fr3		; addr: CE31974
fmov.s @(r0,r14),fr2		; addr: CE31976
fcmp/gt fr2,fr3		; addr: CE31978
bt l_code_CE319A6		; addr: CE3197A

l_code_CE3197C:
mov.b @(0x06,r14),r0 		; addr: CE3197C
mov 0x01,r6 ; r6 set to 0x01, r6 set to 0x01		; addr: CE3197E
mov.l @(data_CE319D0,pc),r1 ; r1 set to 0x42892492, r1 set to 0x42892492		; addr: CE31980
mov r6,r5 ; r5 set to 0x01, r5 set to 0x01		; addr: CE31982
add 0x01,r0 ; r0 set to 0x35		; addr: CE31984
mov.l @(ptr_CE319D4_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8C		; addr: CE31986
mov.b r0,@(0x06,r14) 		; addr: CE31988
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34		; addr: CE3198A
fmov.s @r13,fr3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???		; addr: CE3198C
mov r14,r4		; addr: CE3198E
lds r1,fpul 		; addr: CE31990
fmov.s fr3,@(r0,r14) 		; addr: CE31992
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38		; addr: CE31994
fmov.s @(r0,r14),fr2		; addr: CE31996
fsts fpul,fr3		; addr: CE31998
fadd fr3,fr2		; addr: CE3199A
fmov.s fr2,@(r0,r14) 		; addr: CE3199C
lds.l @r15+,pr 		; addr: CE3199E
mov.l @r15+,r13		; addr: CE319A0
jmp @r3		; addr: CE319A2
mov.l @r15+,r14		; addr: CE319A4

l_code_CE319A6:
lds.l @r15+,pr 		; addr: CE319A6
mov.l @r15+,r13		; addr: CE319A8
rts 		; addr: CE319AA
mov.l @r15+,r14		; addr: CE319AC
;-------------------------------------------------------------------------------

data_CE319AE:
#data 0x0141		; addr: CE319AE

data_CE319B0:
#data 0x0130		; addr: CE319B0

data_CE319B2:
#data 0x02A4		; addr: CE319B2

#align4
ptr_CE319B4_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE319B4

ptr_CE319B8_to_fn_extern_8C0332E0:
#data fn_extern_8C0332E0		; addr: CE319B8

data_CE319BC:
#data 0xC14DB6DB		; addr: CE319BC

#align4
data_CE319C0:
#data 0x3D892492		; addr: CE319C0

#align4
ptr_CE319C4_to_fn_extern_8C042008:
#data fn_extern_8C042008		; addr: CE319C4

data_CE319C8:
#data 0xC1A00000		; addr: CE319C8
#data 0x41A00000		; addr: CE319CC

#align4
data_CE319D0:
#data 0x42892492		; addr: CE319D0

#align4
ptr_CE319D4_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE319D4


f_code_CE319D8:
mov.l r14,@-r15		; addr: CE319D8
sts.l pr,@-r15		; addr: CE319DA
mov.l @(ptr_CE31B24_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE319DC
jsr @r3		; addr: CE319DE
mov r4,r14		; addr: CE319E0
mov.b @(0x06,r14),r0 		; addr: CE319E2
fldi0 fr4		; addr: CE319E4
add 0x01,r0		; addr: CE319E6
mov.b r0,@(0x06,r14) 		; addr: CE319E8
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE319EA
fmov.s fr4,@(r0,r14) 		; addr: CE319EC
mov 0x68,r0 ; r0 set to 0x68		; addr: CE319EE
fmov.s fr4,@(r0,r14) 		; addr: CE319F0
mova @(data_CE31B28,pc),r0  ; r0 set to 0xCE31B28		; addr: CE319F2
fmov.s @r0,fr3 ; r3 ??		; addr: CE319F4
mov 0x60,r0 ; r0 set to 0x60		; addr: CE319F6
fmov.s fr3,@(r0,r14) 		; addr: CE319F8
mova @(data_CE31B2C,pc),r0  ; r0 set to 0xCE31B2C		; addr: CE319FA
fmov.s @r0,fr3		; addr: CE319FC
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE319FE
fmov.s fr3,@(r0,r14) 		; addr: CE31A00
lds.l @r15+,pr 		; addr: CE31A02
rts 		; addr: CE31A04
mov.l @r15+,r14		; addr: CE31A06
;-------------------------------------------------------------------------------

f_code_CE31A08:
mov.l r14,@-r15		; addr: CE31A08
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE31A0A
mov r4,r14		; addr: CE31A0C
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE31A0E
mov 0x34,r0 ; r0 set to 0x34		; addr: CE31A10
mov.l @(ptr_CE31B24_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE31A12
sts.l pr,@-r15		; addr: CE31A14
fmov.s @(r0,r14),fr2		; addr: CE31A16
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE31A18
mov 0x68,r1 ; r1 set to 0x68		; addr: CE31A1A
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE31A1C
fadd fr3,fr2		; addr: CE31A1E
fmov.s fr2,@(r0,r14) 		; addr: CE31A20
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE31A22
fmov.s @r1,fr3		; addr: CE31A24
mov 0x60,r1 ; r1 set to 0x60		; addr: CE31A26
fmov.s @(r0,r14),fr2		; addr: CE31A28
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE31A2A
fadd fr3,fr2		; addr: CE31A2C
fmov.s fr2,@(r0,r14) 		; addr: CE31A2E
mov 0x38,r0 ; r0 set to 0x38		; addr: CE31A30
fmov.s @(r0,r14),fr2		; addr: CE31A32
fmov.s @r1,fr3		; addr: CE31A34
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE31A36
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE31A38
fadd fr3,fr2		; addr: CE31A3A
fmov.s fr2,@(r0,r14) 		; addr: CE31A3C
mov 0x60,r0 ; r0 set to 0x60		; addr: CE31A3E
fmov.s @(r0,r14),fr2		; addr: CE31A40
fmov.s @r1,fr3		; addr: CE31A42
fadd fr3,fr2		; addr: CE31A44
fmov.s fr2,@(r0,r14) 		; addr: CE31A46
jsr @r3		; addr: CE31A48
mov r14,r4		; addr: CE31A4A
mov.w @(data_CE31B1E,pc),r0 ; r0 set to 0x41C		; addr: CE31A4C
fmov.s @(r0,r14),fr3		; addr: CE31A4E
mov 0x38,r0 ; r0 set to 0x38		; addr: CE31A50
fmov.s @(r0,r14),fr2		; addr: CE31A52
fcmp/gt fr3,fr2		; addr: CE31A54
bt l_code_CE31A88		; addr: CE31A56
mov.b @(0x06,r14),r0 		; addr: CE31A58
mov 0x00,r3 ; r3 set to 0x00		; addr: CE31A5A
mov 0x01,r5 ; r5 set to 0x01		; addr: CE31A5C
add 0x01,r0 ; r0 set to 0x39		; addr: CE31A5E
mov.b r0,@(0x06,r14) 		; addr: CE31A60
mov 0x03,r6 ; r6 set to 0x03		; addr: CE31A62
mov.w @(data_CE31B1E,pc),r0 ; r0 set to 0x41C		; addr: CE31A64
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???		; addr: CE31A66
mov 0x38,r0 ; r0 set to 0x38		; addr: CE31A68
fmov.s fr3,@(r0,r14) 		; addr: CE31A6A
mov.w @(data_CE31B20,pc),r0 ; r0 set to 0x1F9		; addr: CE31A6C
mov.b r3,@(r0,r14) 		; addr: CE31A6E
mov.l @(ptr_CE31B30_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE31A70
jsr @r3		; addr: CE31A72
mov r14,r4		; addr: CE31A74
mov.l @(ptr_CE31B34_to_fn_extern_8C0511B4,pc),r2 ; r2 set to 0x8C0511B4		; addr: CE31A76
jsr @r2		; addr: CE31A78
mov r14,r4		; addr: CE31A7A
lds.l @r15+,pr 		; addr: CE31A7C
mov.l @(ptr_CE31B38_to_fn_extern_8C042008,pc),r3 ; r3 set to 0x8C042008		; addr: CE31A7E
mov 0x0A,r5 ; r5 set to 0x0A		; addr: CE31A80
mov r14,r4		; addr: CE31A82
jmp @r3		; addr: CE31A84
mov.l @r15+,r14		; addr: CE31A86

l_code_CE31A88:
lds.l @r15+,pr 		; addr: CE31A88
rts 		; addr: CE31A8A
mov.l @r15+,r14		; addr: CE31A8C
;-------------------------------------------------------------------------------

data_CE31A8E:
#data 0x4F22		; addr: CE31A8E
#data 0xD3247FFC		; addr: CE31A90
#data 0x2F42430B		; addr: CE31A94
#data 0x4011600E		; addr: CE31A98
#data 0x63F28903		; addr: CE31A9C
#data 0x70018435		; addr: CE31AA0
#data 0x8035		; addr: CE31AA4

data_CE31AA6:
#data 0x7F04		; addr: CE31AA6
#data 0x000B4F26		; addr: CE31AA8
#data 0x0009		; addr: CE31AAC
;-------------------------------------------------------------------------------

f_code_CE31AAE:
mov.l r14,@-r15		; addr: CE31AAE
sts.l pr,@-r15		; addr: CE31AB0
mov.l @(ptr_CE31B3C_to_fn_extern_8C046C8A,pc),r3 ; r3 set to 0x8C046C8A		; addr: CE31AB2
jsr @r3		; addr: CE31AB4
mov r4,r14		; addr: CE31AB6
tst r0,r0		; addr: CE31AB8
bt l_code_CE31ACE		; addr: CE31ABA
mov.l @(ptr_CE31B40_to_fn_extern_8C035162,pc),r3 ; r3 set to 0x8C035162		; addr: CE31ABC
mov 0x00,r5 ; r5 set to 0x00		; addr: CE31ABE
jsr @r3		; addr: CE31AC0
mov r14,r4		; addr: CE31AC2
lds.l @r15+,pr 		; addr: CE31AC4
mov.l @(ptr_CE31B44_to_fn_extern_8C051648,pc),r2 ; r2 set to 0x8C051648		; addr: CE31AC6
mov r14,r4		; addr: CE31AC8
jmp @r2		; addr: CE31ACA
mov.l @r15+,r14		; addr: CE31ACC

l_code_CE31ACE:
mov 0x20,r0 ; r0 set to 0x20		; addr: CE31ACE
mov r14,r4		; addr: CE31AD0
mov.b @(r0,r14),r2		; addr: CE31AD2
mov.l @(ptr_CE31B48_to_ptr_CE36328_to_f_code_CE31AE2,pc),r0 ; r0 set to 0xCE36328		; addr: CE31AD4
extu.b r2,r2		; addr: CE31AD6
lds.l @r15+,pr 		; addr: CE31AD8
shll2 r2		; addr: CE31ADA
mov.l @(r0,r2),r3		; addr: CE31ADC
jmp @r3		; addr: CE31ADE
mov.l @r15+,r14		; addr: CE31AE0

f_code_CE31AE2:
mov r4,r3		; addr: CE31AE2
mov.l @(ptr_CE31B4C_to_ptr_CE3633C_to_f_code_CE31AF4,pc),r1 ; r1 set to 0xCE3633C		; addr: CE31AE4
mov.l r4,@-r15		; addr: CE31AE6
mov.b @(0x06,r3),r0 		; addr: CE31AE8
extu.b r0,r0		; addr: CE31AEA
shll2 r0		; addr: CE31AEC
mov.l @(r0,r1),r3		; addr: CE31AEE
jmp @r3		; addr: CE31AF0
add 0x04,r15		; addr: CE31AF2

f_code_CE31AF4:
mov.l r14,@-r15		; addr: CE31AF4
mov r4,r14		; addr: CE31AF6
mov.l r13,@-r15		; addr: CE31AF8
mov 0x01,r0 ; r0 set to 0x01		; addr: CE31AFA
sts.l pr,@-r15		; addr: CE31AFC
mov.l @(ptr_CE31B30_to_fn_extern_8C034E8C,pc),r13 ; r13 set to 0x8C034E8C		; addr: CE31AFE
mov.l @(ptr_CE31B50_to_fn_extern_8C0514B8,pc),r3 ; r3 set to 0x8C0514B8		; addr: CE31B00
mov.b r0,@(0x06,r14) 		; addr: CE31B02
jsr @r3		; addr: CE31B04
mov r14,r4		; addr: CE31B06
mov 0x02,r2 ; r2 set to 0x02		; addr: CE31B08
cmp/ge r2,r0		; addr: CE31B0A
bf l_code_CE31B62		; addr: CE31B0C
mov.l @(ptr_CE31B54_to_fn_extern_8C03319E,pc),r1 ; r1 set to 0x8C03319E		; addr: CE31B0E
jsr @r1		; addr: CE31B10
nop 		; addr: CE31B12
tst 0x01,r0 		; addr: CE31B14
bt/s l_code_CE31B58		; addr: CE31B16
mov 0x13,r5 ; r5 set to 0x13		; addr: CE31B18
bra l_code_CE31B5A		; addr: CE31B1A
mov 0x04,r6		; addr: CE31B1C

data_CE31B1E:
#data 0x041C		; addr: CE31B1E

data_CE31B20:
#data 0x01F9		; addr: CE31B20
#data 0x0000		; addr: CE31B22

#align4
ptr_CE31B24_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE31B24

data_CE31B28:
#data 0x412B6DB6		; addr: CE31B28

#align4
data_CE31B2C:
#data 0xBF1A4924		; addr: CE31B2C

#align4
ptr_CE31B30_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE31B30

ptr_CE31B34_to_fn_extern_8C0511B4:
#data fn_extern_8C0511B4		; addr: CE31B34

ptr_CE31B38_to_fn_extern_8C042008:
#data fn_extern_8C042008		; addr: CE31B38

ptr_CE31B3C_to_fn_extern_8C046C8A:
#data fn_extern_8C046C8A		; addr: CE31B3C

ptr_CE31B40_to_fn_extern_8C035162:
#data fn_extern_8C035162		; addr: CE31B40

ptr_CE31B44_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE31B44

ptr_CE31B48_to_ptr_CE36328_to_f_code_CE31AE2:
#data ptr_CE36328_to_f_code_CE31AE2		; addr: CE31B48

ptr_CE31B4C_to_ptr_CE3633C_to_f_code_CE31AF4:
#data ptr_CE3633C_to_f_code_CE31AF4		; addr: CE31B4C

ptr_CE31B50_to_fn_extern_8C0514B8:
#data fn_extern_8C0514B8		; addr: CE31B50

ptr_CE31B54_to_fn_extern_8C03319E:
#data fn_extern_8C03319E		; addr: CE31B54


l_code_CE31B58:
mov 0x05,r6 ; r6 set to 0x05		; addr: CE31B58

l_code_CE31B5A:
jsr @r13		; addr: CE31B5A
mov r14,r4		; addr: CE31B5C
bra l_code_CE31BB0		; addr: CE31B5E
nop 		; addr: CE31B60

l_code_CE31B62:
mov.l @(ptr_CE31C44_to_fn_extern_8C03319E,pc),r3 ; r3 set to 0x8C03319E		; addr: CE31B62
jsr @r3		; addr: CE31B64
nop 		; addr: CE31B66
and 0x03,r0 		; addr: CE31B68
cmp/eq 0x00,r0 		; addr: CE31B6A
bt l_code_CE31B7E		; addr: CE31B6C
cmp/eq 0x01,r0 		; addr: CE31B6E
bt data_CE31B8C		; addr: CE31B70
cmp/eq 0x02,r0 		; addr: CE31B72
bt l_code_CE31BA4		; addr: CE31B74
cmp/eq 0x03,r0 		; addr: CE31B76
bt data_CE31BA8		; addr: CE31B78
bra l_code_CE31BB0		; addr: CE31B7A
nop 		; addr: CE31B7C

l_code_CE31B7E:
mov 0x13,r5 ; r5 set to 0x13		; addr: CE31B7E
mov 0x00,r6 ; r6 set to 0x00		; addr: CE31B80
jsr @r13		; addr: CE31B82
mov r14,r4		; addr: CE31B84
mov 0x05,r6 ; r6 set to 0x05		; addr: CE31B86
bra l_code_CE31B98		; addr: CE31B88
mov 0x13,r5		; addr: CE31B8A

#align4
data_CE31B8C:
#data 0xE602E513		; addr: CE31B8C
#data 0x64E34D0B		; addr: CE31B90
#data 0xE60AE514		; addr: CE31B94


l_code_CE31B98:
lds.l @r15+,pr 		; addr: CE31B98
mov.l @(ptr_CE31C48_to_fn_extern_8C0D0584,pc),r2 ; r2 set to 0x8C0D0584		; addr: CE31B9A
mov r14,r4		; addr: CE31B9C
mov.l @r15+,r13		; addr: CE31B9E
jmp @r2		; addr: CE31BA0
mov.l @r15+,r14		; addr: CE31BA2

l_code_CE31BA4:
bra l_code_CE31BAA		; addr: CE31BA4
mov 0x04,r6		; addr: CE31BA6

data_CE31BA8:
#data 0xE605		; addr: CE31BA8


l_code_CE31BAA:
mov 0x13,r5 ; r5 set to 0x13		; addr: CE31BAA
jsr @r13		; addr: CE31BAC
mov r14,r4		; addr: CE31BAE

l_code_CE31BB0:
lds.l @r15+,pr 		; addr: CE31BB0
mov.l @r15+,r13		; addr: CE31BB2
rts 		; addr: CE31BB4
mov.l @r15+,r14		; addr: CE31BB6
;-------------------------------------------------------------------------------

f_code_CE31BB8:
mov.l @(ptr_CE31C4C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE31BB8
jmp @r3		; addr: CE31BBA
nop 		; addr: CE31BBC

f_code_CE31BBE:
rts 		; addr: CE31BBE
nop 		; addr: CE31BC0
;-------------------------------------------------------------------------------

f_code_CE31BC2:
rts 		; addr: CE31BC2
nop 		; addr: CE31BC4
;-------------------------------------------------------------------------------

f_code_CE31BC6:
mov.b @(0x06,r4),r0 		; addr: CE31BC6
tst r0,r0		; addr: CE31BC8
bf l_code_CE31BDA		; addr: CE31BCA
mov.b @(0x06,r4),r0 		; addr: CE31BCC
mov 0x07,r6 ; r6 set to 0x07		; addr: CE31BCE
mov.l @(ptr_CE31C50_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE31BD0
add 0x01,r0		; addr: CE31BD2
mov.b r0,@(0x06,r4) 		; addr: CE31BD4
jmp @r3		; addr: CE31BD6
mov 0x13,r5		; addr: CE31BD8

l_code_CE31BDA:
mov.l @(ptr_CE31C4C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE31BDA
jmp @r3		; addr: CE31BDC
nop 		; addr: CE31BDE

f_code_CE31BE0:
mov.b @(0x06,r4),r0 		; addr: CE31BE0
tst r0,r0		; addr: CE31BE2
bf l_code_CE31BF4		; addr: CE31BE4
mov.b @(0x06,r4),r0 		; addr: CE31BE6
mov 0x08,r6 ; r6 set to 0x08		; addr: CE31BE8
mov.l @(ptr_CE31C50_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE31BEA
add 0x01,r0		; addr: CE31BEC
mov.b r0,@(0x06,r4) 		; addr: CE31BEE
jmp @r3		; addr: CE31BF0
mov 0x13,r5		; addr: CE31BF2

l_code_CE31BF4:
mov.l @(ptr_CE31C4C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE31BF4
jmp @r3		; addr: CE31BF6
nop 		; addr: CE31BF8

f_code_CE31BFA:
mov.b @(0x06,r4),r0 		; addr: CE31BFA
tst r0,r0		; addr: CE31BFC
bf l_code_CE31C0E		; addr: CE31BFE
mov.b @(0x06,r4),r0 		; addr: CE31C00
mov 0x06,r6 ; r6 set to 0x06		; addr: CE31C02
mov.l @(ptr_CE31C50_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE31C04
add 0x01,r0		; addr: CE31C06
mov.b r0,@(0x06,r4) 		; addr: CE31C08
jmp @r3		; addr: CE31C0A
mov 0x13,r5		; addr: CE31C0C

l_code_CE31C0E:
mov.l @(ptr_CE31C4C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE31C0E
jmp @r3		; addr: CE31C10
nop 		; addr: CE31C12

f_code_CE31C14:
mov.b @(0x06,r4),r0 		; addr: CE31C14
tst r0,r0		; addr: CE31C16
bf l_code_CE31C28		; addr: CE31C18
mov.b @(0x06,r4),r0 		; addr: CE31C1A
mov 0x08,r6 ; r6 set to 0x08		; addr: CE31C1C
mov.l @(ptr_CE31C50_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE31C1E
add 0x01,r0		; addr: CE31C20
mov.b r0,@(0x06,r4) 		; addr: CE31C22
jmp @r3		; addr: CE31C24
mov 0x13,r5		; addr: CE31C26

l_code_CE31C28:
mov.l @(ptr_CE31C4C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE31C28
jmp @r3		; addr: CE31C2A
nop 		; addr: CE31C2C

f_code_CE31C2E:
mov.w @(data_CE31C42,pc),r0 ; r0 set to 0x1E9		; addr: CE31C2E
mov r4,r3		; addr: CE31C30
mov.l r4,@-r15		; addr: CE31C32
mov.b @(r0,r3),r2		; addr: CE31C34
mov.l @(ptr_CE31C54_to_ptr_CE3634C_to_data_CE31C58,pc),r0 ; r0 set to 0xCE3634C		; addr: CE31C36
extu.b r2,r2		; addr: CE31C38
shll2 r2		; addr: CE31C3A
mov.l @(r0,r2),r3		; addr: CE31C3C
jmp @r3		; addr: CE31C3E
add 0x04,r15		; addr: CE31C40

data_CE31C42:
#data 0x01E9		; addr: CE31C42

#align4
ptr_CE31C44_to_fn_extern_8C03319E:
#data fn_extern_8C03319E		; addr: CE31C44

ptr_CE31C48_to_fn_extern_8C0D0584:
#data fn_extern_8C0D0584		; addr: CE31C48

ptr_CE31C4C_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE31C4C

ptr_CE31C50_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE31C50

ptr_CE31C54_to_ptr_CE3634C_to_data_CE31C58:
#data ptr_CE3634C_to_data_CE31C58		; addr: CE31C54

data_CE31C58:
#data 0x2FE69090		; addr: CE31C58
#data 0x4F226E43		; addr: CE31C5C
#data 0x600C00EC		; addr: CE31C60
#data 0x8B0C8802		; addr: CE31C64
#data 0x420BD246		; addr: CE31C68
#data 0x908664E3		; addr: CE31C6C
#data 0xE038F3E6		; addr: CE31C70
#data 0xF235F2E6		; addr: CE31C74
#data 0x90808903		; addr: CE31C78
#data 0xE038F3E6		; addr: CE31C7C
#data 0xFE37		; addr: CE31C80

data_CE31C82:
#data 0x84E6		; addr: CE31C82
#data 0xD14064E3		; addr: CE31C84
#data 0x9579600C		; addr: CE31C88
#data 0x40084F26		; addr: CE31C8C
#data 0x35EC031E		; addr: CE31C90
#data 0x6EF6432B		; addr: CE31C94


f_code_CE31C98:
mov.l r14,@-r15		; addr: CE31C98
mov r4,r14		; addr: CE31C9A
mov.l r13,@-r15		; addr: CE31C9C
sts.l pr,@-r15		; addr: CE31C9E
mov.b @(0x06,r14),r0 		; addr: CE31CA0
mov.l @(ptr_CE31D8C_to_fn_extern_8C05218A,pc),r3 ; r3 set to 0x8C05218A		; addr: CE31CA2
add 0x01,r0		; addr: CE31CA4
mov.b r0,@(0x06,r14) 		; addr: CE31CA6
jsr @r3		; addr: CE31CA8
mov r14,r4		; addr: CE31CAA
mov.l @(ptr_CE31D90_to_fn_extern_8C056DE4,pc),r2 ; r2 set to 0x8C056DE4		; addr: CE31CAC
mov 0x05,r5 ; r5 set to 0x05		; addr: CE31CAE
jsr @r2		; addr: CE31CB0
mov r14,r4		; addr: CE31CB2
mov.w @(data_CE31D82,pc),r0 ; r0 set to 0x1A1		; addr: CE31CB4
mov 0x30,r3 ; r3 set to 0x30		; addr: CE31CB6
mov 0x00,r13 ; r13 set to 0x00		; addr: CE31CB8
mov.b r3,@(r0,r14) 		; addr: CE31CBA
add 0x0B,r0 ; r0 set to 0x1AC		; addr: CE31CBC
mov.w r13,@(r0,r14) 		; addr: CE31CBE
add 0xF2,r0 ; r0 set to 0x19E		; addr: CE31CC0
mov.b r13,@(r0,r14) 		; addr: CE31CC2
add 0x26,r0 ; r0 set to 0x1C4		; addr: CE31CC4
mov.l @(ptr_CE31D94_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0		; addr: CE31CC6
mov.l r13,@(r0,r14) 		; addr: CE31CC8
mov.b @(0x02,r14),r0 		; addr: CE31CCA
mov.l @r3,r2 ; r2 ??		; addr: CE31CCC
extu.b r0,r0 ; r0 set to 0xC4		; addr: CE31CCE
shll r0 ; r0 set to 0x188		; addr: CE31CD0
add 0x7C,r2		; addr: CE31CD2
mov.w @(r0,r2),r1		; addr: CE31CD4
add 0x01,r1		; addr: CE31CD6
mov.w r1,@(r0,r2) 		; addr: CE31CD8
mov.w @(data_CE31D7C,pc),r0 ; r0 set to 0x1F9		; addr: CE31CDA
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE31CDC
extu.b r0,r0		; addr: CE31CDE
cmp/eq 0x02,r0 		; addr: CE31CE0
bf l_code_CE31D24		; addr: CE31CE2
mov.l @(data_CE31D98,pc),r1 ; r1 set to 0x41800000		; addr: CE31CE4
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE31CE6
fmov.s @(r0,r14),fr2		; addr: CE31CE8
mov 0x01,r6 ; r6 set to 0x01		; addr: CE31CEA
lds r1,fpul 		; addr: CE31CEC
mov 0x15,r5 ; r5 set to 0x15		; addr: CE31CEE
mov.l @(data_CE31D9C,pc),r1 ; r1 set to 0x41000000		; addr: CE31CF0
mov r14,r4		; addr: CE31CF2
mov.l @(ptr_CE31DA4_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE31CF4
fsts fpul,fr3		; addr: CE31CF6
fdiv fr3,fr2 ; r2 ??		; addr: CE31CF8
lds r1,fpul 		; addr: CE31CFA
mov.l @(data_CE31DA0,pc),r1 ; r1 set to 0x42800000		; addr: CE31CFC
fldi0 fr3		; addr: CE31CFE
fmov.s fr2,@(r0,r14) 		; addr: CE31D00
mov 0x60,r0 ; r0 set to 0x60		; addr: CE31D02
fmov.s @(r0,r14),fr1 ; r1 ??? bc r14 is ???		; addr: CE31D04
fsts fpul,fr2		; addr: CE31D06
fdiv fr2,fr1		; addr: CE31D08
lds r1,fpul 		; addr: CE31D0A
fmov.s fr1,@(r0,r14) 		; addr: CE31D0C
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE31D0E
fmov.s @(r0,r14),fr0 ; r0 ??? bc r14 is ???		; addr: CE31D10
fsts fpul,fr1		; addr: CE31D12
fdiv fr1,fr0		; addr: CE31D14
fmov.s fr0,@(r0,r14) 		; addr: CE31D16
mov 0x68,r0 ; r0 set to 0x68		; addr: CE31D18
fmov.s fr3,@(r0,r14) 		; addr: CE31D1A
lds.l @r15+,pr 		; addr: CE31D1C
mov.l @r15+,r13 ; r13 ??? bc r15 is ???		; addr: CE31D1E
jmp @r2		; addr: CE31D20
mov.l @r15+,r14		; addr: CE31D22

l_code_CE31D24:
mov.w @(data_CE31D7C,pc),r0 ; r0 set to 0x1F9		; addr: CE31D24
mov.l @(ptr_CE31DA8_to_fn_extern_8C05115A,pc),r2 ; r2 set to 0x8C05115A		; addr: CE31D26
mov.b r13,@(r0,r14) 		; addr: CE31D28
mov.w @(data_CE31D7E,pc),r0 ; r0 set to 0x41C		; addr: CE31D2A
fmov.s @(r0,r14),fr3		; addr: CE31D2C
mov 0x38,r0 ; r0 set to 0x38		; addr: CE31D2E
fmov.s fr3,@(r0,r14) 		; addr: CE31D30
jsr @r2		; addr: CE31D32
mov r14,r4		; addr: CE31D34
mov.l @(ptr_CE31DA4_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE31D36
mov 0x15,r5 ; r5 set to 0x15		; addr: CE31D38
mov 0x00,r6 ; r6 set to 0x00		; addr: CE31D3A
jsr @r3		; addr: CE31D3C
mov r14,r4		; addr: CE31D3E
lds.l @r15+,pr 		; addr: CE31D40
mov.l @(ptr_CE31DAC_to_fn_extern_8C035162,pc),r2 ; r2 set to 0x8C035162		; addr: CE31D42
mov r14,r4		; addr: CE31D44
mov 0x00,r5 ; r5 set to 0x00		; addr: CE31D46
mov.l @r15+,r13		; addr: CE31D48
jmp @r2		; addr: CE31D4A
mov.l @r15+,r14		; addr: CE31D4C

f_code_CE31D4E:
mov.l r14,@-r15		; addr: CE31D4E
sts.l pr,@-r15		; addr: CE31D50
mov.l @(ptr_CE31DB0_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE31D52
jsr @r3		; addr: CE31D54
mov r4,r14		; addr: CE31D56
exts.b r0,r0		; addr: CE31D58
cmp/pz r0		; addr: CE31D5A
bt l_code_CE31DBC		; addr: CE31D5C
mov.w @(data_CE31D7C,pc),r0 ; r0 set to 0x1F9		; addr: CE31D5E
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE31D60
extu.b r0,r0		; addr: CE31D62
cmp/eq 0x02,r0 		; addr: CE31D64
bf l_code_CE31D72		; addr: CE31D66
lds.l @r15+,pr 		; addr: CE31D68
mov.l @(ptr_CE31DB4_to_fn_extern_8C05176E,pc),r2 ; r2 set to 0x8C05176E		; addr: CE31D6A
mov r14,r4		; addr: CE31D6C
jmp @r2		; addr: CE31D6E
mov.l @r15+,r14		; addr: CE31D70

l_code_CE31D72:
lds.l @r15+,pr 		; addr: CE31D72
mov.l @(ptr_CE31DB8_to_fn_extern_8C051648,pc),r2 ; r2 set to 0x8C051648		; addr: CE31D74
mov r14,r4		; addr: CE31D76
jmp @r2		; addr: CE31D78
mov.l @r15+,r14		; addr: CE31D7A

data_CE31D7C:
#data 0x01F9		; addr: CE31D7C

data_CE31D7E:
#data 0x041C		; addr: CE31D7E
#data 0x02A4		; addr: CE31D80

data_CE31D82:
#data 0x01A1		; addr: CE31D82
#data fn_extern_8C04FEA8		; addr: CE31D84

#align4
ptr_CE31D88_to_ptr_CE36380_to_f_code_CE31C98:
#data ptr_CE36380_to_f_code_CE31C98		; addr: CE31D88

ptr_CE31D8C_to_fn_extern_8C05218A:
#data fn_extern_8C05218A		; addr: CE31D8C

ptr_CE31D90_to_fn_extern_8C056DE4:
#data fn_extern_8C056DE4		; addr: CE31D90

ptr_CE31D94_to_extern_8C2896B0:
#data extern_8C2896B0		; addr: CE31D94

data_CE31D98:
#data 0x41800000		; addr: CE31D98

#align4
data_CE31D9C:
#data 0x41000000		; addr: CE31D9C

#align4
data_CE31DA0:
#data 0x42800000		; addr: CE31DA0

#align4
ptr_CE31DA4_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE31DA4

ptr_CE31DA8_to_fn_extern_8C05115A:
#data fn_extern_8C05115A		; addr: CE31DA8

ptr_CE31DAC_to_fn_extern_8C035162:
#data fn_extern_8C035162		; addr: CE31DAC

ptr_CE31DB0_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE31DB0

ptr_CE31DB4_to_fn_extern_8C05176E:
#data fn_extern_8C05176E		; addr: CE31DB4

ptr_CE31DB8_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE31DB8


l_code_CE31DBC:
mov.w @(data_CE31EC8,pc),r0 ; r0 set to 0x141		; addr: CE31DBC
mov.b @(r0,r14),r3		; addr: CE31DBE
tst r3,r3		; addr: CE31DC0
bt l_code_CE31DE0		; addr: CE31DC2
mov 0x00,r3 ; r3 set to 0x00		; addr: CE31DC4
mov.b r3,@(r0,r14) 		; addr: CE31DC6
mov 0x0C,r5 ; r5 set to 0x0C		; addr: CE31DC8
mov.l @(ptr_CE31ED4_to_fn_extern_8C0D0584,pc),r3 ; r3 set to 0x8C0D0584		; addr: CE31DCA
mov 0x07,r6 ; r6 set to 0x07		; addr: CE31DCC
jsr @r3		; addr: CE31DCE
mov r14,r4		; addr: CE31DD0
lds.l @r15+,pr 		; addr: CE31DD2
mov.l @(ptr_CE31ED8_to_fn_extern_8C0D13BC,pc),r2 ; r2 set to 0x8C0D13BC		; addr: CE31DD4
mov r14,r4		; addr: CE31DD6
mov 0x03,r6 ; r6 set to 0x03		; addr: CE31DD8
mov 0x22,r5 ; r5 set to 0x22		; addr: CE31DDA
jmp @r2		; addr: CE31DDC
mov.l @r15+,r14		; addr: CE31DDE

l_code_CE31DE0:
lds.l @r15+,pr 		; addr: CE31DE0
rts 		; addr: CE31DE2
mov.l @r15+,r14		; addr: CE31DE4
;-------------------------------------------------------------------------------

data_CE31DE6:
#data 0x9070		; addr: CE31DE6
#data 0x6E432FE6		; addr: CE31DE8
#data 0x00EC4F22		; addr: CE31DEC
#data 0x8802600C		; addr: CE31DF0
#data 0xD2398B0C		; addr: CE31DF4
#data 0x64E3420B		; addr: CE31DF8
#data 0xF3E69066		; addr: CE31DFC
#data 0xF2E6E038		; addr: CE31E00
#data 0x8903F235		; addr: CE31E04
#data 0xF3E69060		; addr: CE31E08
#data 0xFE37E038		; addr: CE31E0C

#align4
data_CE31E10:
#data 0x64E384E6		; addr: CE31E10
#data 0x600CD132		; addr: CE31E14
#data 0x4F269559		; addr: CE31E18
#data 0x031E4008		; addr: CE31E1C
#data 0x432B35EC		; addr: CE31E20
#data 0x6EF6		; addr: CE31E24


f_code_CE31E26:
mov.l r14,@-r15		; addr: CE31E26
mov r4,r14		; addr: CE31E28
mov.l r13,@-r15		; addr: CE31E2A
sts.l pr,@-r15		; addr: CE31E2C
mov.b @(0x06,r14),r0 		; addr: CE31E2E
mov.l @(ptr_CE31EE4_to_fn_extern_8C05218A,pc),r3 ; r3 set to 0x8C05218A		; addr: CE31E30
add 0x01,r0		; addr: CE31E32
mov.b r0,@(0x06,r14) 		; addr: CE31E34
mov 0x18,r0 ; r0 set to 0x18		; addr: CE31E36
mov.w r0,@(0x1C,r14) 		; addr: CE31E38
mov 0x1E,r0 ; r0 set to 0x1E		; addr: CE31E3A
mov.w r0,@(0x1E,r14) 		; addr: CE31E3C
jsr @r3		; addr: CE31E3E
mov r14,r4		; addr: CE31E40
mov.l @(ptr_CE31EE8_to_fn_extern_8C056DE4,pc),r2 ; r2 set to 0x8C056DE4		; addr: CE31E42
mov 0x05,r5 ; r5 set to 0x05		; addr: CE31E44
jsr @r2		; addr: CE31E46
mov r14,r4		; addr: CE31E48
mov.w @(data_CE31ED0,pc),r0 ; r0 set to 0x1D2		; addr: CE31E4A
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???		; addr: CE31E4C
tst r3,r3		; addr: CE31E4E
bt l_code_CE31E58		; addr: CE31E50
mova @(data_CE31EEC,pc),r0  ; r0 set to 0xCE31EEC		; addr: CE31E52
bra l_code_CE31E5C		; addr: CE31E54
fmov.s @r0,fr3		; addr: CE31E56

l_code_CE31E58:
mova @(data_CE31EF0,pc),r0  ; r0 init to 0xCE31EF0		; addr: CE31E58
fmov.s @r0,fr3		; addr: CE31E5A

l_code_CE31E5C:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C		; addr: CE31E5C
fldi0 fr4		; addr: CE31E5E
fmov.s fr3,@(r0,r14) 		; addr: CE31E60
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68		; addr: CE31E62
fmov.s fr4,@(r0,r14) 		; addr: CE31E64
mov.w @(data_CE31ECA,pc),r0 ; r0 set to 0x1F9, r0 set to 0x1F9		; addr: CE31E66
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???		; addr: CE31E68
extu.b r0,r0		; addr: CE31E6A
cmp/eq 0x02,r0 		; addr: CE31E6C
bf/s l_code_CE31F04		; addr: CE31E6E
mov 0x00,r13 ; r13 set to 0x00, r13 set to 0x00		; addr: CE31E70
mov.l @(data_CE31EF4,pc),r1 ; r1 set to 0x41800000, r1 set to 0x41800000		; addr: CE31E72
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C		; addr: CE31E74
fmov.s @(r0,r14),fr2		; addr: CE31E76
mov 0x33,r3 ; r3 set to 0x33, r3 set to 0x33		; addr: CE31E78
lds r1,fpul 		; addr: CE31E7A
mov.l @(data_CE31EF8,pc),r1 ; r1 set to 0x41000000, r1 set to 0x41000000		; addr: CE31E7C
fsts fpul,fr3		; addr: CE31E7E
fdiv fr3,fr2		; addr: CE31E80
lds r1,fpul 		; addr: CE31E82
mov.l @(data_CE31EFC,pc),r1 ; r1 set to 0x42800000, r1 set to 0x42800000		; addr: CE31E84
fmov.s fr2,@(r0,r14) 		; addr: CE31E86
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60		; addr: CE31E88
fmov.s @(r0,r14),fr1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???		; addr: CE31E8A
fsts fpul,fr2		; addr: CE31E8C
fdiv fr2,fr1		; addr: CE31E8E
lds r1,fpul 		; addr: CE31E90
fmov.s fr1,@(r0,r14) 		; addr: CE31E92
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6C		; addr: CE31E94
fmov.s @(r0,r14),fr0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???		; addr: CE31E96
fsts fpul,fr1		; addr: CE31E98
fdiv fr1,fr0		; addr: CE31E9A
fmov.s fr0,@(r0,r14) 		; addr: CE31E9C
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68		; addr: CE31E9E
fmov.s fr4,@(r0,r14) 		; addr: CE31EA0
mov.w @(data_CE31ED2,pc),r0 ; r0 set to 0x1A1, r0 set to 0x1A1		; addr: CE31EA2
mov.b r3,@(r0,r14) 		; addr: CE31EA4
add 0x0B,r0 ; r0 set to 0x1AC, r0 set to 0x1AC		; addr: CE31EA6
mov.w r13,@(r0,r14) 		; addr: CE31EA8
add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19E		; addr: CE31EAA
mov.b r13,@(r0,r14) 		; addr: CE31EAC
add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4		; addr: CE31EAE
mov.l r13,@(r0,r14) 		; addr: CE31EB0
mov.l @(ptr_CE31F00_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0		; addr: CE31EB2
mov.b @(0x02,r14),r0 		; addr: CE31EB4
mov.l @r3,r2		; addr: CE31EB6
extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4		; addr: CE31EB8
shll r0 ; r0 set to 0x188, r0 set to 0x188		; addr: CE31EBA
add 0x7C,r2		; addr: CE31EBC
mov.w @(r0,r2),r1		; addr: CE31EBE
add 0x01,r1		; addr: CE31EC0
mov.w r1,@(r0,r2) 		; addr: CE31EC2
bra l_code_CE31F34		; addr: CE31EC4
mov 0x04,r6		; addr: CE31EC6

data_CE31EC8:
#data 0x0141		; addr: CE31EC8

data_CE31ECA:
#data 0x01F9		; addr: CE31ECA
#data 0x02A4041C		; addr: CE31ECC

data_CE31ED0:
#data 0x01D2		; addr: CE31ED0

data_CE31ED2:
#data 0x01A1		; addr: CE31ED2

#align4
ptr_CE31ED4_to_fn_extern_8C0D0584:
#data fn_extern_8C0D0584		; addr: CE31ED4

ptr_CE31ED8_to_fn_extern_8C0D13BC:
#data fn_extern_8C0D13BC		; addr: CE31ED8
#data fn_extern_8C04FEA8		; addr: CE31EDC

#align4
ptr_CE31EE0_to_ptr_CE36388_to_f_code_CE31E26:
#data ptr_CE36388_to_f_code_CE31E26		; addr: CE31EE0

ptr_CE31EE4_to_fn_extern_8C05218A:
#data fn_extern_8C05218A		; addr: CE31EE4

ptr_CE31EE8_to_fn_extern_8C056DE4:
#data fn_extern_8C056DE4		; addr: CE31EE8

data_CE31EEC:
#data 0x3F555555		; addr: CE31EEC

#align4
data_CE31EF0:
#data 0xBF555555		; addr: CE31EF0

#align4
data_CE31EF4:
#data 0x41800000		; addr: CE31EF4

#align4
data_CE31EF8:
#data 0x41000000		; addr: CE31EF8

#align4
data_CE31EFC:
#data 0x42800000		; addr: CE31EFC

#align4
ptr_CE31F00_to_extern_8C2896B0:
#data extern_8C2896B0		; addr: CE31F00


l_code_CE31F04:
mov.w @(data_CE31FFC,pc),r0 ; r0 set to 0x1F9		; addr: CE31F04
mov.l @(ptr_CE32004_to_fn_extern_8C05115A,pc),r3 ; r3 set to 0x8C05115A		; addr: CE31F06
mov.b r13,@(r0,r14) 		; addr: CE31F08
jsr @r3		; addr: CE31F0A
mov r14,r4		; addr: CE31F0C
mov.w @(data_CE31FFE,pc),r0 ; r0 set to 0x1A1		; addr: CE31F0E
mov 0x33,r2 ; r2 set to 0x33		; addr: CE31F10
mov.l @(ptr_CE32008_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0		; addr: CE31F12
mov 0x02,r6 ; r6 set to 0x02		; addr: CE31F14
mov.b r2,@(r0,r14) 		; addr: CE31F16
add 0x0B,r0 ; r0 set to 0x1AC		; addr: CE31F18
mov.w r13,@(r0,r14) 		; addr: CE31F1A
add 0xF2,r0 ; r0 set to 0x19E		; addr: CE31F1C
mov.b r13,@(r0,r14) 		; addr: CE31F1E
add 0x26,r0 ; r0 set to 0x1C4		; addr: CE31F20
mov.l r13,@(r0,r14) 		; addr: CE31F22
mov.b @(0x02,r14),r0 		; addr: CE31F24
mov.l @r3,r2 ; r2 ??		; addr: CE31F26
extu.b r0,r0 ; r0 set to 0xC4		; addr: CE31F28
shll r0 ; r0 set to 0x188		; addr: CE31F2A
add 0x7C,r2		; addr: CE31F2C
mov.w @(r0,r2),r1		; addr: CE31F2E
add 0x01,r1		; addr: CE31F30
mov.w r1,@(r0,r2) 		; addr: CE31F32

l_code_CE31F34:
mov.l @(ptr_CE3200C_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C, r2 set to 0x8C034E8C		; addr: CE31F34
mov 0x15,r5 ; r5 set to 0x15, r5 set to 0x15		; addr: CE31F36
jsr @r2		; addr: CE31F38
mov r14,r4		; addr: CE31F3A
lds.l @r15+,pr 		; addr: CE31F3C
mov.l @(ptr_CE32010_to_fn_extern_8C035162,pc),r3 ; r3 set to 0x8C035162, r3 set to 0x8C035162		; addr: CE31F3E
mov r14,r4		; addr: CE31F40
mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00		; addr: CE31F42
mov.l @r15+,r13		; addr: CE31F44
jmp @r3		; addr: CE31F46
mov.l @r15+,r14		; addr: CE31F48

data_CE31F4A:
#data 0x2FE6		; addr: CE31F4A
#data 0xE15C6E43		; addr: CE31F4C
#data 0x31ECD330		; addr: CE31F50
#data 0x4F22E034		; addr: CE31F54
#data 0xE168F318		; addr: CE31F58
#data 0x31ECF2E6		; addr: CE31F5C
#data 0xFE27F230		; addr: CE31F60
#data 0xF2E6E05C		; addr: CE31F64
#data 0xF230F318		; addr: CE31F68
#data 0x430BFE27		; addr: CE31F6C
#data 0x904564E3		; addr: CE31F70
#data 0x222802EC		; addr: CE31F74
#data 0xE4008913		; addr: CE31F78
#data 0x70560E44		; addr: CE31F7C
#data 0x0E34E333		; addr: CE31F80
#data 0x0E45700B		; addr: CE31F84
#data 0x0E4470F2		; addr: CE31F88
#data 0xD31E7026		; addr: CE31F8C
#data 0x84E20E46		; addr: CE31F90
#data 0x600C6232		; addr: CE31F94
#data 0x727C4000		; addr: CE31F98
#data 0x7101012D		; addr: CE31F9C
#data 0x0215		; addr: CE31FA0

data_CE31FA2:
#data 0x85EF		; addr: CE31FA2
#data 0x8B0A4015		; addr: CE31FA4
#data 0xD31B85EF		; addr: CE31FA8
#data 0x81EF70FF		; addr: CE31FAC
#data 0x64E3430B		; addr: CE31FB0
#data 0x89022008		; addr: CE31FB4
#data 0x700285EE		; addr: CE31FB8
#data 0x81EE		; addr: CE31FBC

data_CE31FBE:
#data 0x85EE		; addr: CE31FBE
#data 0x81EE70FF		; addr: CE31FC0
#data 0x4011600F		; addr: CE31FC4
#data 0x84E68915		; addr: CE31FC8
#data 0x7001E303		; addr: CE31FCC
#data 0x901680E6		; addr: CE31FD0
#data 0x90110E34		; addr: CE31FD4
#data 0x600C00EC		; addr: CE31FD8
#data 0x8B028802		; addr: CE31FDC
#data 0xE205900F		; addr: CE31FE0
#data 0x0E24		; addr: CE31FE4

data_CE31FE6:
#data 0x900C		; addr: CE31FE6
#data 0x4F26E515		; addr: CE31FE8
#data 0x64E3D307		; addr: CE31FEC
#data 0x432B06EC		; addr: CE31FF0
#data 0x6EF6		; addr: CE31FF4

data_CE31FF6:
#data 0x4F26		; addr: CE31FF6
#data 0x6EF6000B		; addr: CE31FF8
;-------------------------------------------------------------------------------

data_CE31FFC:
#data 0x01F9		; addr: CE31FFC

data_CE31FFE:
#data 0x01A1		; addr: CE31FFE
#data 0x0158014B		; addr: CE32000

#align4
ptr_CE32004_to_fn_extern_8C05115A:
#data fn_extern_8C05115A		; addr: CE32004

ptr_CE32008_to_extern_8C2896B0:
#data extern_8C2896B0		; addr: CE32008

ptr_CE3200C_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE3200C

ptr_CE32010_to_fn_extern_8C035162:
#data fn_extern_8C035162		; addr: CE32010
#data fn_extern_8C034DEE		; addr: CE32014
#data extern_8C055D54		; addr: CE32018


f_code_CE3201C:
mov.l r14,@-r15		; addr: CE3201C
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE3201E
mov r4,r14		; addr: CE32020
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE32022
mov 0x34,r0 ; r0 set to 0x34		; addr: CE32024
mov.l r13,@-r15		; addr: CE32026
mov 0x00,r13 ; r13 set to 0x00		; addr: CE32028
sts.l pr,@-r15		; addr: CE3202A
fmov.s @r1,fr3		; addr: CE3202C
mov 0x68,r1 ; r1 set to 0x68		; addr: CE3202E
fmov.s @(r0,r14),fr2		; addr: CE32030
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE32032
fadd fr3,fr2		; addr: CE32034
fmov.s fr2,@(r0,r14) 		; addr: CE32036
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE32038
fmov.s @r1,fr3		; addr: CE3203A
fmov.s @(r0,r14),fr2		; addr: CE3203C
fadd fr3,fr2		; addr: CE3203E
fmov.s fr2,@(r0,r14) 		; addr: CE32040
mov.w @(data_CE32146,pc),r0 ; r0 set to 0x1A3		; addr: CE32042
mov.b @(r0,r14),r3		; addr: CE32044
add 0xFE,r0 ; r0 set to 0x1A1		; addr: CE32046
mov.b r3,@(r0,r14) 		; addr: CE32048
add 0x0B,r0 ; r0 set to 0x1AC		; addr: CE3204A
mov.w r13,@(r0,r14) 		; addr: CE3204C
add 0xF2,r0 ; r0 set to 0x19E		; addr: CE3204E
mov.l @(ptr_CE32154_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0		; addr: CE32050
mov.b r13,@(r0,r14) 		; addr: CE32052
add 0x26,r0 ; r0 set to 0x1C4		; addr: CE32054
mov.l r13,@(r0,r14) 		; addr: CE32056
mov.l @r3,r2		; addr: CE32058
add 0x7C,r2		; addr: CE3205A
mov.b @(0x02,r14),r0 		; addr: CE3205C
extu.b r0,r0 ; r0 set to 0xC4		; addr: CE3205E
shll r0 ; r0 set to 0x188		; addr: CE32060
mov.w @(r0,r2),r1		; addr: CE32062
add 0x01,r1		; addr: CE32064
mov.w r1,@(r0,r2) 		; addr: CE32066
mov.l @(ptr_CE32158_to_fn_extern_8C034DEE,pc),r2 ; r2 set to 0x8C034DEE		; addr: CE32068
jsr @r2		; addr: CE3206A
mov r14,r4		; addr: CE3206C
exts.b r0,r0 ; r0 ??		; addr: CE3206E
cmp/pz r0		; addr: CE32070
bt data_CE32096		; addr: CE32072
mov.w @(data_CE32148,pc),r0 ; r0 set to 0x1F9		; addr: CE32074
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE32076
extu.b r0,r0		; addr: CE32078
cmp/eq 0x02,r0 		; addr: CE3207A
bf l_code_CE3208A		; addr: CE3207C
lds.l @r15+,pr 		; addr: CE3207E
mov.l @(ptr_CE3215C_to_fn_extern_8C05176E,pc),r2 ; r2 set to 0x8C05176E		; addr: CE32080
mov r14,r4		; addr: CE32082
mov.l @r15+,r13 ; r13 ??? bc r15 is ???		; addr: CE32084
jmp @r2		; addr: CE32086
mov.l @r15+,r14		; addr: CE32088

l_code_CE3208A:
lds.l @r15+,pr 		; addr: CE3208A
mov.l @(ptr_CE32160_to_fn_extern_8C051648,pc),r2 ; r2 set to 0x8C051648		; addr: CE3208C
mov r14,r4		; addr: CE3208E
mov.l @r15+,r13		; addr: CE32090
jmp @r2		; addr: CE32092
mov.l @r15+,r14		; addr: CE32094

data_CE32096:
#data 0x9058		; addr: CE32096
#data 0x233803EC		; addr: CE32098
#data 0x0ED48900		; addr: CE3209C

#align4
data_CE320A0:
#data 0x6DF64F26		; addr: CE320A0
#data 0x6EF6000B		; addr: CE320A4
;-------------------------------------------------------------------------------

f_code_CE320A8:
mov.l r14,@-r15		; addr: CE320A8
mov r4,r14		; addr: CE320AA
mov.b @(0x06,r14),r0 		; addr: CE320AC
mov.l @(ptr_CE32164_to_ptr_CE36394_to_f_code_CE320BE,pc),r1 ; r1 set to 0xCE36394		; addr: CE320AE
extu.b r0,r0		; addr: CE320B0
mov.w @(data_CE3214C,pc),r5 ; r5 set to 0x2A4		; addr: CE320B2
shll2 r0		; addr: CE320B4
mov.l @(r0,r1),r3		; addr: CE320B6
add r14,r5 ; r5 ??? bc r14 is ???		; addr: CE320B8
jmp @r3		; addr: CE320BA
mov.l @r15+,r14		; addr: CE320BC

f_code_CE320BE:
mov.l r14,@-r15		; addr: CE320BE
mov r4,r14		; addr: CE320C0
sts.l pr,@-r15		; addr: CE320C2
mov.b @(0x06,r14),r0 		; addr: CE320C4
mov.l @(ptr_CE32168_to_fn_extern_8C05218A,pc),r3 ; r3 set to 0x8C05218A		; addr: CE320C6
add 0x01,r0		; addr: CE320C8
mov.b r0,@(0x06,r14) 		; addr: CE320CA
jsr @r3		; addr: CE320CC
mov r14,r4		; addr: CE320CE
mov.l @(ptr_CE3216C_to_fn_extern_8C056DE4,pc),r2 ; r2 set to 0x8C056DE4		; addr: CE320D0
mov 0x05,r5 ; r5 set to 0x05		; addr: CE320D2
jsr @r2		; addr: CE320D4
mov r14,r4		; addr: CE320D6
mov 0x00,r4 ; r4 set to 0x00		; addr: CE320D8
mov r4,r0 ; r0 set to 0x00		; addr: CE320DA
nop 		; addr: CE320DC
mov.w r0,@(0x1C,r14) 		; addr: CE320DE
mov 0x36,r3 ; r3 set to 0x36		; addr: CE320E0
mov.w @(data_CE3214E,pc),r0 ; r0 set to 0x1A1		; addr: CE320E2
mov.b r3,@(r0,r14) 		; addr: CE320E4
add 0x0B,r0 ; r0 set to 0x1AC		; addr: CE320E6
mov.w r4,@(r0,r14) 		; addr: CE320E8
add 0xF2,r0 ; r0 set to 0x19E		; addr: CE320EA
mov.b r4,@(r0,r14) 		; addr: CE320EC
add 0x26,r0 ; r0 set to 0x1C4		; addr: CE320EE
mov.l @(ptr_CE32154_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0		; addr: CE320F0
mov.l r4,@(r0,r14) 		; addr: CE320F2
mov.b @(0x02,r14),r0 		; addr: CE320F4
mov.l @r3,r2 ; r2 ??		; addr: CE320F6
extu.b r0,r0 ; r0 set to 0xC4		; addr: CE320F8
shll r0 ; r0 set to 0x188		; addr: CE320FA
add 0x7C,r2		; addr: CE320FC
mov.w @(r0,r2),r1		; addr: CE320FE
add 0x01,r1		; addr: CE32100
mov.w r1,@(r0,r2) 		; addr: CE32102
mov.w @(data_CE32148,pc),r0 ; r0 set to 0x1F9		; addr: CE32104
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE32106
extu.b r0,r0		; addr: CE32108
cmp/eq 0x02,r0 		; addr: CE3210A
bf l_code_CE32134		; addr: CE3210C
mov.b @(0x06,r14),r0 		; addr: CE3210E
add 0x01,r0		; addr: CE32110
mov.b r0,@(0x06,r14) 		; addr: CE32112
mov.w @(data_CE32146,pc),r0 ; r0 set to 0x1A3		; addr: CE32114
mov.b @(r0,r14),r1		; addr: CE32116
tst r1,r1		; addr: CE32118
bt l_code_CE32120		; addr: CE3211A
bra l_code_CE32122		; addr: CE3211C
mov 0x1B,r2		; addr: CE3211E

l_code_CE32120:
mov 0x0B,r2 ; r2 set to 0x0B		; addr: CE32120

l_code_CE32122:
mov.w @(data_CE32150,pc),r0 ; r0 set to 0x158, r0 set to 0x158		; addr: CE32122
mov 0x15,r5 ; r5 set to 0x15, r5 set to 0x15		; addr: CE32124
mov.l @(ptr_CE32170_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8C		; addr: CE32126
mov.b r2,@(r0,r14) 		; addr: CE32128
mov.b @(r0,r14),r6		; addr: CE3212A
jsr @r3		; addr: CE3212C
mov r14,r4		; addr: CE3212E
bra l_code_CE3218E		; addr: CE32130
nop 		; addr: CE32132

l_code_CE32134:
mov.l @(ptr_CE32174_to_fn_extern_8C053082,pc),r1 ; r1 set to 0x8C053082		; addr: CE32134
jsr @r1		; addr: CE32136
mov r14,r4		; addr: CE32138
mov.w @(data_CE32146,pc),r0 ; r0 set to 0x1A3		; addr: CE3213A
mov.b @(r0,r14),r2		; addr: CE3213C
tst r2,r2		; addr: CE3213E
bt l_code_CE32178		; addr: CE32140
bra l_code_CE3217A		; addr: CE32142
mov 0x1A,r3		; addr: CE32144

data_CE32146:
#data 0x01A3		; addr: CE32146

data_CE32148:
#data 0x01F9		; addr: CE32148
#data 0x0141		; addr: CE3214A

data_CE3214C:
#data 0x02A4		; addr: CE3214C

data_CE3214E:
#data 0x01A1		; addr: CE3214E

data_CE32150:
#data 0x0158		; addr: CE32150
#data 0x0000		; addr: CE32152

#align4
ptr_CE32154_to_extern_8C2896B0:
#data extern_8C2896B0		; addr: CE32154

ptr_CE32158_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE32158

ptr_CE3215C_to_fn_extern_8C05176E:
#data fn_extern_8C05176E		; addr: CE3215C

ptr_CE32160_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE32160

ptr_CE32164_to_ptr_CE36394_to_f_code_CE320BE:
#data ptr_CE36394_to_f_code_CE320BE		; addr: CE32164

ptr_CE32168_to_fn_extern_8C05218A:
#data fn_extern_8C05218A		; addr: CE32168

ptr_CE3216C_to_fn_extern_8C056DE4:
#data fn_extern_8C056DE4		; addr: CE3216C

ptr_CE32170_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE32170

ptr_CE32174_to_fn_extern_8C053082:
#data fn_extern_8C053082		; addr: CE32174


l_code_CE32178:
mov 0x0A,r3 ; r3 set to 0x0A		; addr: CE32178

l_code_CE3217A:
mov.w @(data_CE3223C,pc),r0 ; r0 set to 0x158, r0 set to 0x158		; addr: CE3217A
mov 0x15,r5 ; r5 set to 0x15, r5 set to 0x15		; addr: CE3217C
mov.b r3,@(r0,r14) 		; addr: CE3217E
mov.l @(ptr_CE32248_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8C		; addr: CE32180
mov.b @(r0,r14),r6		; addr: CE32182
jsr @r3		; addr: CE32184
mov r14,r4		; addr: CE32186
mov.l @(ptr_CE3224C_to_fn_extern_8C05115A,pc),r2 ; r2 set to 0x8C05115A, r2 set to 0x8C05115A		; addr: CE32188
jsr @r2		; addr: CE3218A
mov r14,r4		; addr: CE3218C

l_code_CE3218E:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C, r0 set to 0x5C		; addr: CE3218E
fldi0 fr4		; addr: CE32190
fmov.s fr4,@(r0,r14) 		; addr: CE32192
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60, r0 set to 0x60		; addr: CE32194
fmov.s fr4,@(r0,r14) 		; addr: CE32196
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68, r0 set to 0x68		; addr: CE32198
fmov.s fr4,@(r0,r14) 		; addr: CE3219A
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6C, r0 set to 0x6C		; addr: CE3219C
fmov.s fr4,@(r0,r14) 		; addr: CE3219E
mov.w @(data_CE3223E,pc),r0 ; r0 set to 0x1A3, r0 set to 0x1A3, r0 set to 0x1A3		; addr: CE321A0
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???		; addr: CE321A2
tst r3,r3		; addr: CE321A4
bf data_CE321CA		; addr: CE321A6
mova @(data_CE32250,pc),r0  ; r0 set to 0xCE32250, r0 set to 0xCE32250, r0 set to 0xCE32250		; addr: CE321A8
fmov.s @r0,fr3		; addr: CE321AA
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60, r0 set to 0x60		; addr: CE321AC
fmov.s fr3,@(r0,r14) 		; addr: CE321AE
mova @(data_CE32254,pc),r0  ; r0 set to 0xCE32254, r0 set to 0xCE32254, r0 set to 0xCE32254		; addr: CE321B0
fmov.s @r0,fr3		; addr: CE321B2
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6C, r0 set to 0x6C		; addr: CE321B4
fmov.s fr3,@(r0,r14) 		; addr: CE321B6
mova @(data_CE32258,pc),r0  ; r0 set to 0xCE32258, r0 set to 0xCE32258, r0 set to 0xCE32258		; addr: CE321B8
fmov.s @r0,fr4		; addr: CE321BA
mov.w @(data_CE32240,pc),r0 ; r0 set to 0x130, r0 set to 0x130, r0 set to 0x130		; addr: CE321BC
mov.w @(r0,r14),r3		; addr: CE321BE
tst r3,r3		; addr: CE321C0
bt l_code_CE321EA		; addr: CE321C2
mova @(data_CE3225C,pc),r0  ; r0 set to 0xCE3225C, r0 set to 0xCE3225C, r0 set to 0xCE3225C		; addr: CE321C4
bra l_code_CE321EA		; addr: CE321C6
fmov.s @r0,fr4		; addr: CE321C8

data_CE321CA:
#data 0xC725		; addr: CE321CA
#data 0xE060F308		; addr: CE321CC
#data 0xC724FE37		; addr: CE321D0
#data 0xE06CF308		; addr: CE321D4
#data 0xC723FE37		; addr: CE321D8
#data 0x902FF408		; addr: CE321DC
#data 0x233803ED		; addr: CE321E0
#data 0xC7218901		; addr: CE321E4
#data 0xF408		; addr: CE321E8


l_code_CE321EA:
mov.l @(ptr_CE32270_to_fn_extern_8C035162,pc),r3 ; r3 set to 0x8C035162		; addr: CE321EA
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE321EC
mov r14,r4		; addr: CE321EE
fmov.s fr4,@(r0,r14) 		; addr: CE321F0
lds.l @r15+,pr 		; addr: CE321F2
mov 0x00,r5 ; r5 set to 0x00		; addr: CE321F4
jmp @r3		; addr: CE321F6
mov.l @r15+,r14		; addr: CE321F8

f_code_CE321FA:
mov.l r14,@-r15		; addr: CE321FA
mov.l r8,@-r15		; addr: CE321FC
sts.l pr,@-r15		; addr: CE321FE
mov.l @(ptr_CE32274_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE32200
jsr @r3		; addr: CE32202
mov r4,r14		; addr: CE32204
mov.w @(data_CE32242,pc),r0 ; r0 set to 0x141		; addr: CE32206
mov.b @(r0,r14),r2		; addr: CE32208
tst r2,r2		; addr: CE3220A
bt l_code_CE32234		; addr: CE3220C
mov.b @(0x06,r14),r0 		; addr: CE3220E
mov 0x34,r8 ; r8 set to 0x34		; addr: CE32210
add 0x01,r0 ; r0 set to 0x142		; addr: CE32212
mov.b r0,@(0x06,r14) 		; addr: CE32214
mov.w @(data_CE32244,pc),r0 ; r0 set to 0x1D2		; addr: CE32216
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???		; addr: CE32218
tst r3,r3		; addr: CE3221A
bt/s data_CE32228		; addr: CE3221C
add r14,r8 ; r8 ??? bc r14 is ???		; addr: CE3221E
mov.l @(data_CE32278,pc),r1 ; r1 set to 0x42AD5555		; addr: CE32220
lds r1,fpul 		; addr: CE32222
bra data_CE3222E		; addr: CE32224
fsts fpul,fr3		; addr: CE32226

#align4
data_CE32228:
#data 0x425AD214		; addr: CE32228
#data 0xF30D		; addr: CE3222C

data_CE3222E:
#data 0xF288		; addr: CE3222E
#data 0xF82AF230		; addr: CE32230


l_code_CE32234:
lds.l @r15+,pr 		; addr: CE32234
mov.l @r15+,r8		; addr: CE32236
rts 		; addr: CE32238
mov.l @r15+,r14		; addr: CE3223A
;-------------------------------------------------------------------------------

data_CE3223C:
#data 0x0158		; addr: CE3223C

data_CE3223E:
#data 0x01A3		; addr: CE3223E

data_CE32240:
#data 0x0130		; addr: CE32240

data_CE32242:
#data 0x0141		; addr: CE32242

data_CE32244:
#data 0x01D2		; addr: CE32244
#data 0x0000		; addr: CE32246

#align4
ptr_CE32248_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE32248

ptr_CE3224C_to_fn_extern_8C05115A:
#data fn_extern_8C05115A		; addr: CE3224C

data_CE32250:
#data 0x41A2DB6D		; addr: CE32250

#align4
data_CE32254:
#data 0xBF676DB6		; addr: CE32254

#align4
data_CE32258:
#data 0xC0555555		; addr: CE32258

#align4
data_CE3225C:
#data 0x40555555		; addr: CE3225C
#data 0x42092492		; addr: CE32260
#data 0xBFAB6DB6		; addr: CE32264
#data 0xC092AAAA		; addr: CE32268
#data 0x4092AAAA		; addr: CE3226C

#align4
ptr_CE32270_to_fn_extern_8C035162:
#data fn_extern_8C035162		; addr: CE32270

ptr_CE32274_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE32274

data_CE32278:
#data 0x42AD5555		; addr: CE32278
#data 0xC2AD5555		; addr: CE3227C

#align4
data_CE32280:
#data 0xE15C2FE6		; addr: CE32280
#data 0x31EC6E43		; addr: CE32284
#data 0xD342E034		; addr: CE32288
#data 0xF2E64F22		; addr: CE3228C
#data 0xE168F318		; addr: CE32290
#data 0xF23031EC		; addr: CE32294
#data 0xE05CFE27		; addr: CE32298
#data 0xE160F318		; addr: CE3229C
#data 0x31ECF2E6		; addr: CE322A0
#data 0xFE27F230		; addr: CE322A4
#data 0xF2E6E038		; addr: CE322A8
#data 0xE16CF318		; addr: CE322AC
#data 0xF23031EC		; addr: CE322B0
#data 0xE060FE27		; addr: CE322B4
#data 0xF318F2E6		; addr: CE322B8
#data 0xFE27F230		; addr: CE322BC
#data 0x64E3430B		; addr: CE322C0
#data 0x85EE935F		; addr: CE322C4
#data 0x633033EC		; addr: CE322C8
#data 0x7301633C		; addr: CE322CC
#data 0x8d213030		; addr: CE322D0
#data 0x9057E400		; addr: CE322D4
#data 0x233803EC		; addr: CE322D8
#data 0x9352891C		; addr: CE322DC
#data 0x33EC85EE		; addr: CE322E0
#data 0x81EE7001		; addr: CE322E4
#data 0x85EE6330		; addr: CE322E8
#data 0x7302633C		; addr: CE322EC
#data 0x89113033		; addr: CE322F0
#data 0xE3379049		; addr: CE322F4
#data 0x700B0E34		; addr: CE322F8
#data 0x70F20E45		; addr: CE322FC
#data 0x70260E44		; addr: CE32300
#data 0x0E46D324		; addr: CE32304
#data 0x623284E2		; addr: CE32308
#data 0x4000600C		; addr: CE3230C
#data 0x012D727C		; addr: CE32310
#data 0x02157101		; addr: CE32314

#align4
data_CE32318:
#data 0xF3E69038		; addr: CE32318
#data 0xF2E6E038		; addr: CE3231C
#data 0x8916F235		; addr: CE32320
#data 0xD31D9032		; addr: CE32324
#data 0xE038F3E6		; addr: CE32328
#data 0x902EFE37		; addr: CE3232C
#data 0x430B0E44		; addr: CE32330
#data 0xE05C64E3		; addr: CE32334
#data 0xFE47F48D		; addr: CE32338
#data 0xFE47E060		; addr: CE3233C
#data 0xFE47E068		; addr: CE32340
#data 0xD316E06C		; addr: CE32344
#data 0xFE4764E3		; addr: CE32348
#data 0x432B4F26		; addr: CE3234C
#data 0x6EF6		; addr: CE32350

data_CE32352:
#data 0x4F26		; addr: CE32352
#data 0x6EF6000B		; addr: CE32354
;-------------------------------------------------------------------------------

f_code_CE32358:
mov.l r14,@-r15		; addr: CE32358
mov r4,r14		; addr: CE3235A
mov.b @(0x06,r14),r0 		; addr: CE3235C
mov.l @(ptr_CE323A4_to_ptr_CE363A0_to_f_code_CE3236E,pc),r1 ; r1 set to 0xCE363A0		; addr: CE3235E
extu.b r0,r0		; addr: CE32360
mov.w @(data_CE32390,pc),r5 ; r5 set to 0x2A4		; addr: CE32362
shll2 r0		; addr: CE32364
mov.l @(r0,r1),r3		; addr: CE32366
add r14,r5 ; r5 ??? bc r14 is ???		; addr: CE32368
jmp @r3		; addr: CE3236A
mov.l @r15+,r14		; addr: CE3236C

f_code_CE3236E:
mov.l r14,@-r15		; addr: CE3236E
mov r4,r14		; addr: CE32370
sts.l pr,@-r15		; addr: CE32372
mov.b @(0x06,r14),r0 		; addr: CE32374
add 0x01,r0		; addr: CE32376
mov.b r0,@(0x06,r14) 		; addr: CE32378
mov.w @(data_CE32386,pc),r0 ; r0 set to 0x1A3		; addr: CE3237A
mov.b @(r0,r14),r3		; addr: CE3237C
tst r3,r3		; addr: CE3237E
bt l_code_CE323A8		; addr: CE32380
bra l_code_CE323AA		; addr: CE32382
mov 0x28,r0		; addr: CE32384

data_CE32386:
#data 0x01A3		; addr: CE32386
#data 0x01A1019E		; addr: CE32388
#data 0x01F9041C		; addr: CE3238C

data_CE32390:
#data 0x02A4		; addr: CE32390
#data 0x0000		; addr: CE32392
#data fn_extern_8C034DEE		; addr: CE32394
#data extern_8C2896B0		; addr: CE32398
#data fn_extern_8C0511B4		; addr: CE3239C
#data fn_extern_8C051648		; addr: CE323A0

#align4
ptr_CE323A4_to_ptr_CE363A0_to_f_code_CE3236E:
#data ptr_CE363A0_to_f_code_CE3236E		; addr: CE323A4


l_code_CE323A8:
mov 0x1E,r0 ; r0 set to 0x1E		; addr: CE323A8

l_code_CE323AA:
mov.l @(ptr_CE324F4_to_fn_extern_8C05218A,pc),r2 ; r2 set to 0x8C05218A, r2 set to 0x8C05218A		; addr: CE323AA
mov.w r0,@(0x1C,r14) 		; addr: CE323AC
jsr @r2		; addr: CE323AE
mov r14,r4		; addr: CE323B0
mov.l @(ptr_CE324F8_to_fn_extern_8C056DE4,pc),r3 ; r3 set to 0x8C056DE4, r3 set to 0x8C056DE4		; addr: CE323B2
mov 0x05,r5 ; r5 set to 0x05, r5 set to 0x05		; addr: CE323B4
jsr @r3		; addr: CE323B6
mov r14,r4		; addr: CE323B8
mov.w @(data_CE324E2,pc),r0 ; r0 set to 0x1F9, r0 set to 0x1F9		; addr: CE323BA
mov 0x00,r4 ; r4 set to 0x00, r4 set to 0x00		; addr: CE323BC
fldi0 fr4		; addr: CE323BE
mov.b r4,@(r0,r14) 		; addr: CE323C0
mov.w @(data_CE324E4,pc),r0 ; r0 set to 0x41C, r0 set to 0x41C		; addr: CE323C2
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???		; addr: CE323C4
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38		; addr: CE323C6
fmov.s fr3,@(r0,r14) 		; addr: CE323C8
mov.w @(data_CE324E6,pc),r0 ; r0 set to 0x1A3, r0 set to 0x1A3		; addr: CE323CA
mov.b @(r0,r14),r3		; addr: CE323CC
add 0xFE,r0 ; r0 set to 0x1A1, r0 set to 0x1A1		; addr: CE323CE
mov.b r3,@(r0,r14) 		; addr: CE323D0
add 0x0B,r0 ; r0 set to 0x1AC, r0 set to 0x1AC		; addr: CE323D2
mov.w r4,@(r0,r14) 		; addr: CE323D4
add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19E		; addr: CE323D6
mov.b r4,@(r0,r14) 		; addr: CE323D8
add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4		; addr: CE323DA
mov.l @(ptr_CE324FC_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0		; addr: CE323DC
mov.l r4,@(r0,r14) 		; addr: CE323DE
mov.b @(0x02,r14),r0 		; addr: CE323E0
mov.l @r3,r2 ; r2 ??, r2 ??		; addr: CE323E2
extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4		; addr: CE323E4
shll r0 ; r0 set to 0x188, r0 set to 0x188		; addr: CE323E6
add 0x7C,r2		; addr: CE323E8
mov.w @(r0,r2),r1		; addr: CE323EA
add 0x01,r1		; addr: CE323EC
mov.w r1,@(r0,r2) 		; addr: CE323EE
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C		; addr: CE323F0
fmov.s fr4,@(r0,r14) 		; addr: CE323F2
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60		; addr: CE323F4
fmov.s fr4,@(r0,r14) 		; addr: CE323F6
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68		; addr: CE323F8
fmov.s fr4,@(r0,r14) 		; addr: CE323FA
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6C		; addr: CE323FC
mov.l @(ptr_CE32500_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C, r2 set to 0x8C034E8C		; addr: CE323FE
mov 0x15,r5 ; r5 set to 0x15, r5 set to 0x15		; addr: CE32400
fmov.s fr4,@(r0,r14) 		; addr: CE32402
mov 0x0C,r6 ; r6 set to 0x0C, r6 set to 0x0C		; addr: CE32404
jsr @r2		; addr: CE32406
mov r14,r4 ; r4 ??? bc r14 is ???, r4 ??? bc r14 is ???		; addr: CE32408
mov.w @(data_CE324E8,pc),r0 ; r0 set to 0x130, r0 set to 0x130		; addr: CE3240A
mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???		; addr: CE3240C
tst r3,r3		; addr: CE3240E
bt l_code_CE32418		; addr: CE32410
mova @(data_CE32504,pc),r0  ; r0 set to 0xCE32504, r0 set to 0xCE32504		; addr: CE32412
bra l_code_CE3241C		; addr: CE32414
fmov.s @r0,fr3		; addr: CE32416

l_code_CE32418:
mova @(data_CE32508,pc),r0  ; r0 init to 0xCE32508		; addr: CE32418
fmov.s @r0,fr3		; addr: CE3241A

l_code_CE3241C:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C		; addr: CE3241C
fmov.s fr3,@(r0,r14) 		; addr: CE3241E
mov 0x0A,r4 ; r4 set to 0x0A, r4 set to 0x0A		; addr: CE32420
mov.w @(data_CE324EA,pc),r0 ; r0 set to 0x1F2, r0 set to 0x1F2		; addr: CE32422
mov.b r4,@(r0,r14) 		; addr: CE32424
add 0x01,r0 ; r0 set to 0x1F3, r0 set to 0x1F3		; addr: CE32426
mov.b r4,@(r0,r14) 		; addr: CE32428
lds.l @r15+,pr 		; addr: CE3242A
rts 		; addr: CE3242C
mov.l @r15+,r14		; addr: CE3242E
;-------------------------------------------------------------------------------

#align4
data_CE32430:
#data 0x2FE6905C		; addr: CE32430
#data 0x925A6E43		; addr: CE32434
#data 0x03ED4F22		; addr: CE32438
#data 0x2328633D		; addr: CE3243C
#data 0xD3328904		; addr: CE32440
#data 0x64E3430B		; addr: CE32444
#data 0x8B2C2008		; addr: CE32448

#align4
data_CE3244C:
#data 0xD330E15C		; addr: CE3244C
#data 0xE03431EC		; addr: CE32450
#data 0xF2E6F318		; addr: CE32454
#data 0x31ECE168		; addr: CE32458
#data 0xFE27F230		; addr: CE3245C
#data 0xF2E6E05C		; addr: CE32460
#data 0xF230F318		; addr: CE32464
#data 0x430BFE27		; addr: CE32468
#data 0x903F64E3		; addr: CE3246C
#data 0x0E24E202		; addr: CE32470
#data 0x70FF85EE		; addr: CE32474
#data 0x600F81EE		; addr: CE32478
#data 0x89124015		; addr: CE3247C
#data 0x64E384E6		; addr: CE32480
#data 0xE60DF48D		; addr: CE32484
#data 0xD31D7001		; addr: CE32488
#data 0xE05C80E6		; addr: CE3248C
#data 0xE060FE47		; addr: CE32490
#data 0xE068FE47		; addr: CE32494
#data 0xE06CFE47		; addr: CE32498
#data 0xE515FE47		; addr: CE3249C
#data 0x432B4F26		; addr: CE324A0
#data 0x6EF6		; addr: CE324A4

data_CE324A6:
#data 0x4F26		; addr: CE324A6
#data 0x6EF6000B		; addr: CE324A8
;-------------------------------------------------------------------------------

f_code_CE324AC:
mov.w @(data_CE324F0,pc),r0 ; r0 set to 0x1F5		; addr: CE324AC
mov 0x02,r3 ; r3 set to 0x02		; addr: CE324AE
mov.l r14,@-r15		; addr: CE324B0
mov r4,r14		; addr: CE324B2
sts.l pr,@-r15		; addr: CE324B4
mov.b r3,@(r0,r14) 		; addr: CE324B6
mov.l @(ptr_CE32510_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE324B8
jsr @r3		; addr: CE324BA
mov r14,r4		; addr: CE324BC
exts.b r0,r0 ; r0 ??		; addr: CE324BE
cmp/pz r0		; addr: CE324C0
bt l_code_CE324DC		; addr: CE324C2
mov.w @(data_CE324E4,pc),r0 ; r0 set to 0x41C		; addr: CE324C4
mov.l @(ptr_CE32514_to_fn_extern_8C0511B4,pc),r3 ; r3 set to 0x8C0511B4		; addr: CE324C6
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???		; addr: CE324C8
mov 0x38,r0 ; r0 set to 0x38		; addr: CE324CA
fmov.s fr3,@(r0,r14) 		; addr: CE324CC
jsr @r3		; addr: CE324CE
mov r14,r4		; addr: CE324D0
lds.l @r15+,pr 		; addr: CE324D2
mov.l @(ptr_CE32518_to_fn_extern_8C051648,pc),r2 ; r2 set to 0x8C051648		; addr: CE324D4
mov r14,r4		; addr: CE324D6
jmp @r2		; addr: CE324D8
mov.l @r15+,r14		; addr: CE324DA

l_code_CE324DC:
lds.l @r15+,pr 		; addr: CE324DC
rts 		; addr: CE324DE
mov.l @r15+,r14		; addr: CE324E0
;-------------------------------------------------------------------------------

data_CE324E2:
#data 0x01F9		; addr: CE324E2

data_CE324E4:
#data 0x041C		; addr: CE324E4

data_CE324E6:
#data 0x01A3		; addr: CE324E6

data_CE324E8:
#data 0x0130		; addr: CE324E8

data_CE324EA:
#data 0x01F2		; addr: CE324EA
#data 0x0360034A		; addr: CE324EC

data_CE324F0:
#data 0x01F5		; addr: CE324F0
#data 0x0000		; addr: CE324F2

#align4
ptr_CE324F4_to_fn_extern_8C05218A:
#data fn_extern_8C05218A		; addr: CE324F4

ptr_CE324F8_to_fn_extern_8C056DE4:
#data fn_extern_8C056DE4		; addr: CE324F8

ptr_CE324FC_to_extern_8C2896B0:
#data extern_8C2896B0		; addr: CE324FC

ptr_CE32500_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE32500

data_CE32504:
#data 0x40E2AAAA		; addr: CE32504

#align4
data_CE32508:
#data 0xC0E2AAAA		; addr: CE32508
#data extern_8C0518A0		; addr: CE3250C

#align4
ptr_CE32510_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE32510

ptr_CE32514_to_fn_extern_8C0511B4:
#data fn_extern_8C0511B4		; addr: CE32514

ptr_CE32518_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE32518

data_CE3251C:
#data 0x2FE69087		; addr: CE3251C
#data 0x4F226E43		; addr: CE32520
#data 0x600C00EC		; addr: CE32524
#data 0x8B0C8802		; addr: CE32528
#data 0x420BD243		; addr: CE3252C
#data 0x907D64E3		; addr: CE32530
#data 0xE038F3E6		; addr: CE32534
#data 0xF325F2E6		; addr: CE32538
#data 0x90778B03		; addr: CE3253C
#data 0xE038F3E6		; addr: CE32540
#data 0xFE37		; addr: CE32544

data_CE32546:
#data 0x84E6		; addr: CE32546
#data 0xD13D64E3		; addr: CE32548
#data 0x9570600C		; addr: CE3254C
#data 0x40084F26		; addr: CE32550
#data 0x35EC031E		; addr: CE32554
#data 0x6EF6432B		; addr: CE32558

#align4
data_CE3255C:
#data 0x6E432FE6		; addr: CE3255C
#data 0xD3384F22		; addr: CE32560
#data 0xE500430B		; addr: CE32564
#data 0x00EC9064		; addr: CE32568
#data 0x8806600C		; addr: CE3256C
#data 0x90618B05		; addr: CE32570
#data 0x925EE310		; addr: CE32574
#data 0x70010E24		; addr: CE32578
#data 0x0E34		; addr: CE3257C

data_CE3257E:
#data 0x84E6		; addr: CE3257E
#data 0x80E67001		; addr: CE32580
#data 0x00EC9053		; addr: CE32584
#data 0x8802600C		; addr: CE32588
#data 0x64E38F18		; addr: CE3258C
#data 0xE05CD12D		; addr: CE32590
#data 0x415AF2E6		; addr: CE32594
#data 0xF30DD12C		; addr: CE32598
#data 0x415AF233		; addr: CE3259C
#data 0xF38DD12B		; addr: CE325A0
#data 0xE060FE27		; addr: CE325A4
#data 0xF20DF1E6		; addr: CE325A8
#data 0x415AF123		; addr: CE325AC
#data 0xE06CFE17		; addr: CE325B0
#data 0xF10DF0E6		; addr: CE325B4
#data 0xFE07F013		; addr: CE325B8
#data 0xFE37E068		; addr: CE325BC

#align4
data_CE325C0:
#data 0x430BD324		; addr: CE325C0
#data 0x90380009		; addr: CE325C4
#data 0xE400E239		; addr: CE325C8
#data 0x0E24D322		; addr: CE325CC
#data 0x0E45700B		; addr: CE325D0
#data 0x0E4470F2		; addr: CE325D4
#data 0x0E467026		; addr: CE325D8
#data 0x623284E2		; addr: CE325DC
#data 0x4000600C		; addr: CE325E0
#data 0x012D727C		; addr: CE325E4
#data 0x02157101		; addr: CE325E8
#data 0x02EC901F		; addr: CE325EC
#data 0x8B092228		; addr: CE325F0
#data 0x420BD219		; addr: CE325F4
#data 0x4F2664E3		; addr: CE325F8
#data 0x64E3D318		; addr: CE325FC
#data 0xE516E600		; addr: CE32600
#data 0x6EF6432B		; addr: CE32604

#align4
data_CE32608:
#data 0xD1154F26		; addr: CE32608
#data 0xE64064E3		; addr: CE3260C
#data 0x412BE516		; addr: CE32610
#data 0x6EF6		; addr: CE32614


f_code_CE32616:
mov.l r14,@-r15		; addr: CE32616
fmov.s fr15,@-r15		; addr: CE32618
sts.l pr,@-r15		; addr: CE3261A
add 0xF4,r15		; addr: CE3261C
mov.w @(data_CE32634,pc),r0 ; r0 set to 0x255		; addr: CE3261E
mov r4,r14		; addr: CE32620
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE32622
extu.b r0,r0		; addr: CE32624
cmp/eq 0x06,r0 		; addr: CE32626
bf l_code_CE32664		; addr: CE32628
bra l_code_CE32666		; addr: CE3262A
mov 0x02,r3		; addr: CE3262C
#data 0x01F9		; addr: CE3262E
#data 0x02A4041C		; addr: CE32630

data_CE32634:
#data 0x0255		; addr: CE32634
#data 0x00FF		; addr: CE32636
#data 0x01A103F0		; addr: CE32638
#data fn_extern_8C04FEA8		; addr: CE3263C

#align4
ptr_CE32640_to_ptr_CE363AC_to_data_CE3255C:
#data ptr_CE363AC_to_data_CE3255C		; addr: CE32640
#data fn_extern_8C035162		; addr: CE32644
#data 0x41800000		; addr: CE32648
#data 0x41000000		; addr: CE3264C
#data 0x42800000		; addr: CE32650
#data fn_extern_8C05218A		; addr: CE32654
#data extern_8C2896B0		; addr: CE32658
#data fn_extern_8C05115A		; addr: CE3265C
#data fn_extern_8C034E8C		; addr: CE32660


l_code_CE32664:
mov 0x00,r3 ; r3 set to 0x00		; addr: CE32664

l_code_CE32666:
mov.w @(data_CE32784,pc),r0 ; r0 set to 0x3F1, r0 set to 0x3F1		; addr: CE32666
mov.b r3,@(r0,r14) 		; addr: CE32668
mov.l @(ptr_CE32798_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEE		; addr: CE3266A
jsr @r3		; addr: CE3266C
mov r14,r4		; addr: CE3266E
exts.b r0,r0 ; r0 ??, r0 ??		; addr: CE32670
cmp/pz r0		; addr: CE32672
bf l_code_CE326C8		; addr: CE32674
mov.b @(0x06,r14),r0 		; addr: CE32676
mov 0x00,r4 ; r4 set to 0x00, r4 set to 0x00		; addr: CE32678
add 0x01,r0		; addr: CE3267A
mov.b r0,@(0x06,r14) 		; addr: CE3267C
mov.w @(data_CE32786,pc),r0 ; r0 set to 0x3F0, r0 set to 0x3F0		; addr: CE3267E
mov.b r4,@(r0,r14) 		; addr: CE32680
add 0x01,r0 ; r0 set to 0x3F1, r0 set to 0x3F1		; addr: CE32682
mov.b r4,@(r0,r14) 		; addr: CE32684
mov.w @(data_CE32788,pc),r0 ; r0 set to 0x1F9, r0 set to 0x1F9		; addr: CE32686
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???		; addr: CE32688
extu.b r0,r0		; addr: CE3268A
cmp/eq 0x02,r0 		; addr: CE3268C
bf/s data_CE326A4		; addr: CE3268E
fldi0 fr15		; addr: CE32690
mov.l @(ptr_CE3279C_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C, r2 set to 0x8C034E8C		; addr: CE32692
mov 0x16,r5 ; r5 set to 0x16, r5 set to 0x16		; addr: CE32694
mov 0x41,r6 ; r6 set to 0x41, r6 set to 0x41		; addr: CE32696
jsr @r2		; addr: CE32698
mov r14,r4 ; r4 ??? bc r14 is ???, r4 ??? bc r14 is ???		; addr: CE3269A
mova @(data_CE327A0,pc),r0  ; r0 set to 0xCE327A0, r0 set to 0xCE327A0		; addr: CE3269C
fmov.s fr15,@r15		; addr: CE3269E
bra data_CE326B4		; addr: CE326A0
fmov.s @r0,fr3		; addr: CE326A2

#align4
data_CE326A4:
#data 0xE516D33D		; addr: CE326A4
#data 0x430BE601		; addr: CE326A8
#data 0xC73D64E3		; addr: CE326AC
#data 0xF308FFFA		; addr: CE326B0

#align4
data_CE326B4:
#data 0xD33CE004		; addr: CE326B4
#data 0xE004F2F6		; addr: CE326B8
#data 0xE60165F3		; addr: CE326BC
#data 0xFF27F230		; addr: CE326C0
#data 0x64E3430B		; addr: CE326C4


l_code_CE326C8:
add 0x0C,r15		; addr: CE326C8
lds.l @r15+,pr 		; addr: CE326CA
fmov.s @r15+,fr15		; addr: CE326CC
rts 		; addr: CE326CE
mov.l @r15+,r14		; addr: CE326D0
;-------------------------------------------------------------------------------

f_code_CE326D2:
mov.w @(data_CE3278A,pc),r0 ; r0 set to 0x3F8		; addr: CE326D2
mov 0x02,r3 ; r3 set to 0x02		; addr: CE326D4
mov.l r14,@-r15		; addr: CE326D6
mov r4,r14		; addr: CE326D8
mov.l r13,@-r15		; addr: CE326DA
mov 0x05,r2 ; r2 set to 0x05		; addr: CE326DC
sts.l pr,@-r15		; addr: CE326DE
mov.b r3,@(r0,r14) 		; addr: CE326E0
mov 0x00,r13 ; r13 set to 0x00		; addr: CE326E2
mov.w @(data_CE3278C,pc),r0 ; r0 set to 0x328		; addr: CE326E4
mov.l @(ptr_CE32798_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE326E6
mov.b r2,@(r0,r14) 		; addr: CE326E8
jsr @r3		; addr: CE326EA
mov r14,r4		; addr: CE326EC
exts.b r0,r0 ; r0 ??		; addr: CE326EE
cmp/pz r0		; addr: CE326F0
bt l_code_CE32724		; addr: CE326F2
mov.w @(data_CE3278E,pc),r0 ; r0 set to 0x3F9		; addr: CE326F4
mov.b r13,@(r0,r14) 		; addr: CE326F6
add 0xFF,r0 ; r0 set to 0x3F8		; addr: CE326F8
mov.b r13,@(r0,r14) 		; addr: CE326FA
mov.w @(data_CE32790,pc),r0 ; r0 set to 0x327		; addr: CE326FC
mov.b r13,@(r0,r14) 		; addr: CE326FE
add 0x01,r0 ; r0 set to 0x328		; addr: CE32700
mov.b r13,@(r0,r14) 		; addr: CE32702
mov.w @(data_CE32788,pc),r0 ; r0 set to 0x1F9		; addr: CE32704
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???		; addr: CE32706
tst r3,r3		; addr: CE32708
bf l_code_CE32718		; addr: CE3270A
lds.l @r15+,pr 		; addr: CE3270C
mov.l @(ptr_CE327AC_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE3270E
mov r14,r4		; addr: CE32710
mov.l @r15+,r13 ; r13 ??? bc r15 is ???		; addr: CE32712
jmp @r3		; addr: CE32714
mov.l @r15+,r14		; addr: CE32716

l_code_CE32718:
lds.l @r15+,pr 		; addr: CE32718
mov.l @(ptr_CE327B0_to_fn_extern_8C05176E,pc),r2 ; r2 set to 0x8C05176E		; addr: CE3271A
mov r14,r4		; addr: CE3271C
mov.l @r15+,r13		; addr: CE3271E
jmp @r2		; addr: CE32720
mov.l @r15+,r14		; addr: CE32722

l_code_CE32724:
mov.w @(data_CE32792,pc),r0 ; r0 set to 0x141		; addr: CE32724
mov.b @(r0,r14),r3		; addr: CE32726
tst r3,r3		; addr: CE32728
bt l_code_CE3273C		; addr: CE3272A
mov.b r13,@(r0,r14) 		; addr: CE3272C
mov 0x00,r5 ; r5 set to 0x00		; addr: CE3272E
lds.l @r15+,pr 		; addr: CE32730
mov.l @(ptr_CE327B4_to_fn_extern_8C07EDB8,pc),r3 ; r3 set to 0x8C07EDB8		; addr: CE32732
mov r14,r4		; addr: CE32734
mov.l @r15+,r13		; addr: CE32736
jmp @r3		; addr: CE32738
mov.l @r15+,r14		; addr: CE3273A

l_code_CE3273C:
lds.l @r15+,pr 		; addr: CE3273C
mov.l @r15+,r13		; addr: CE3273E
rts 		; addr: CE32740
mov.l @r15+,r14		; addr: CE32742
;-------------------------------------------------------------------------------

#align4
data_CE32744:
#data 0x2FE69020		; addr: CE32744
#data 0x4F226E43		; addr: CE32748
#data 0x600C00EC		; addr: CE3274C
#data 0x8B0C8802		; addr: CE32750
#data 0x420BD218		; addr: CE32754
#data 0x901B64E3		; addr: CE32758
#data 0xE038F3E6		; addr: CE3275C
#data 0xF325F2E6		; addr: CE32760
#data 0x90158B03		; addr: CE32764
#data 0xE038F3E6		; addr: CE32768
#data 0xFE37		; addr: CE3276C

data_CE3276E:
#data 0x84E6		; addr: CE3276E
#data 0xD11264E3		; addr: CE32770
#data 0x950E600C		; addr: CE32774
#data 0x40084F26		; addr: CE32778
#data 0x35EC031E		; addr: CE3277C
#data 0x6EF6432B		; addr: CE32780

data_CE32784:
#data 0x03F1		; addr: CE32784

data_CE32786:
#data 0x03F0		; addr: CE32786

data_CE32788:
#data 0x01F9		; addr: CE32788

data_CE3278A:
#data 0x03F8		; addr: CE3278A

data_CE3278C:
#data 0x0328		; addr: CE3278C

data_CE3278E:
#data 0x03F9		; addr: CE3278E

data_CE32790:
#data 0x0327		; addr: CE32790

data_CE32792:
#data 0x0141		; addr: CE32792
#data 0x02A4041C		; addr: CE32794

#align4
ptr_CE32798_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE32798

ptr_CE3279C_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE3279C

data_CE327A0:
#data 0x42BC9249		; addr: CE327A0
#data 0x424DB6DB		; addr: CE327A4
#data extern_8C050834		; addr: CE327A8

#align4
ptr_CE327AC_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE327AC

ptr_CE327B0_to_fn_extern_8C05176E:
#data fn_extern_8C05176E		; addr: CE327B0

ptr_CE327B4_to_fn_extern_8C07EDB8:
#data fn_extern_8C07EDB8		; addr: CE327B4
#data fn_extern_8C04FEA8		; addr: CE327B8

#align4
ptr_CE327BC_to_ptr_CE363B8_to_f_code_CE327C0:
#data ptr_CE363B8_to_f_code_CE327C0		; addr: CE327BC


f_code_CE327C0:
mov.l r14,@-r15		; addr: CE327C0
mov r4,r14		; addr: CE327C2
sts.l pr,@-r15		; addr: CE327C4
mov.b @(0x06,r14),r0 		; addr: CE327C6
mov.l @(ptr_CE328D8_to_fn_extern_8C05218A,pc),r3 ; r3 set to 0x8C05218A		; addr: CE327C8
add 0x01,r0		; addr: CE327CA
mov.b r0,@(0x06,r14) 		; addr: CE327CC
jsr @r3		; addr: CE327CE
mov r14,r4		; addr: CE327D0
mov.l @(ptr_CE328DC_to_fn_extern_8C056DE4,pc),r2 ; r2 set to 0x8C056DE4		; addr: CE327D2
mov 0x05,r5 ; r5 set to 0x05		; addr: CE327D4
jsr @r2		; addr: CE327D6
mov r14,r4		; addr: CE327D8
mov.w @(data_CE328CE,pc),r0 ; r0 set to 0x41C		; addr: CE327DA
mov 0x3C,r5 ; r5 set to 0x3C		; addr: CE327DC
mov 0x00,r4 ; r4 set to 0x00		; addr: CE327DE
mov.l @(ptr_CE328E0_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0		; addr: CE327E0
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???		; addr: CE327E2
mov 0x38,r0 ; r0 set to 0x38		; addr: CE327E4
fmov.s fr3,@(r0,r14) 		; addr: CE327E6
mov.w @(data_CE328D0,pc),r0 ; r0 set to 0x1A1		; addr: CE327E8
mov.b r5,@(r0,r14) 		; addr: CE327EA
add 0x0B,r0 ; r0 set to 0x1AC		; addr: CE327EC
mov.w r4,@(r0,r14) 		; addr: CE327EE
add 0xF2,r0 ; r0 set to 0x19E		; addr: CE327F0
mov.b r4,@(r0,r14) 		; addr: CE327F2
add 0x26,r0 ; r0 set to 0x1C4		; addr: CE327F4
mov.l r4,@(r0,r14) 		; addr: CE327F6
mov.b @(0x02,r14),r0 		; addr: CE327F8
mov.l @r3,r2 ; r2 ??? bc r3 is ???		; addr: CE327FA
extu.b r0,r0 ; r0 set to 0xC4		; addr: CE327FC
shll r0 ; r0 set to 0x188		; addr: CE327FE
add 0x7C,r2		; addr: CE32800
mov.w @(r0,r2),r1		; addr: CE32802
add 0x01,r1		; addr: CE32804
mov.w r1,@(r0,r2) 		; addr: CE32806
mov r5,r0 ; r0 set to 0x3C		; addr: CE32808
nop 		; addr: CE3280A
mov.l @(ptr_CE328E4_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE3280C
mov 0x0F,r5 ; r5 set to 0x0F		; addr: CE3280E
mov.w r0,@(0x1C,r14) 		; addr: CE32810
mov 0x04,r6 ; r6 set to 0x04		; addr: CE32812
jsr @r2		; addr: CE32814
mov r14,r4 ; r4 ??? bc r14 is ???		; addr: CE32816
mov.l @(ptr_CE328E8_to_fn_extern_8C0D0584,pc),r3 ; r3 set to 0x8C0D0584		; addr: CE32818
mov 0x0A,r5 ; r5 set to 0x0A		; addr: CE3281A
mov 0x03,r6 ; r6 set to 0x03		; addr: CE3281C
jsr @r3		; addr: CE3281E
mov r14,r4		; addr: CE32820
lds.l @r15+,pr 		; addr: CE32822
mov.l @(ptr_CE328EC_to_fn_extern_8C05115A,pc),r2 ; r2 set to 0x8C05115A		; addr: CE32824
mov r14,r4		; addr: CE32826
jmp @r2		; addr: CE32828
mov.l @r15+,r14		; addr: CE3282A

f_code_CE3282C:
mov.l r14,@-r15		; addr: CE3282C
sts.l pr,@-r15		; addr: CE3282E
mov.l @(ptr_CE328F0_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE32830
jsr @r3		; addr: CE32832
mov r4,r14		; addr: CE32834
mov.w @(data_CE328D2,pc),r0 ; r0 set to 0x19E		; addr: CE32836
mov.b @(r0,r14),r2		; addr: CE32838
tst r2,r2		; addr: CE3283A
bt l_code_CE3287C		; addr: CE3283C
mov.l @(ptr_CE328F4_to_fn_extern_8C05264C,pc),r3 ; r3 set to 0x8C05264C		; addr: CE3283E
jsr @r3		; addr: CE32840
mov r14,r4		; addr: CE32842
tst r0,r0		; addr: CE32844
bt data_CE32862		; addr: CE32846
mov.w @(data_CE328D4,pc),r0 ; r0 set to 0x1EA		; addr: CE32848
mov 0x01,r3 ; r3 set to 0x01		; addr: CE3284A
mov.w @(data_CE328D6,pc),r2 ; r2 set to 0xC3		; addr: CE3284C
mov r14,r4		; addr: CE3284E
mov.b r3,@(r0,r14) 		; addr: CE32850
add 0x0D,r0 ; r0 set to 0x1F7		; addr: CE32852
mov.b r2,@(r0,r14) 		; addr: CE32854
add 0xB9,r0 ; r0 set to 0x1B0		; addr: CE32856
lds.l @r15+,pr 		; addr: CE32858
mov.l @(ptr_CE328F8_to_fn_extern_8C0522E0,pc),r3 ; r3 set to 0x8C0522E0		; addr: CE3285A
mov.l @(r0,r14),r5		; addr: CE3285C
jmp @r3		; addr: CE3285E
mov.l @r15+,r14		; addr: CE32860

data_CE32862:
#data 0x84E6		; addr: CE32862
#data 0xD31FE515		; addr: CE32864
#data 0x7001E611		; addr: CE32868
#data 0x430B80E6		; addr: CE3286C
#data 0xD22264E3		; addr: CE32870
#data 0xE605E523		; addr: CE32874
#data 0x64E3420B		; addr: CE32878


l_code_CE3287C:
mov.w @(0x1C,r14),r0 		; addr: CE3287C
add 0xFF,r0		; addr: CE3287E
mov.w r0,@(0x1C,r14) 		; addr: CE32880
exts.w r0,r0		; addr: CE32882
cmp/pl r0		; addr: CE32884
bt l_code_CE328A6		; addr: CE32886
mov.b @(0x06,r14),r0 		; addr: CE32888
mov 0x15,r5 ; r5 set to 0x15		; addr: CE3288A
mov.l @(ptr_CE328E4_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE3288C
mov 0x11,r6 ; r6 set to 0x11		; addr: CE3288E
add 0x01,r0		; addr: CE32890
mov.b r0,@(0x06,r14) 		; addr: CE32892
jsr @r3		; addr: CE32894
mov r14,r4		; addr: CE32896
lds.l @r15+,pr 		; addr: CE32898
mov.l @(ptr_CE328FC_to_fn_extern_8C0D13BC,pc),r2 ; r2 set to 0x8C0D13BC		; addr: CE3289A
mov r14,r4		; addr: CE3289C
mov 0x05,r6 ; r6 set to 0x05		; addr: CE3289E
mov 0x23,r5 ; r5 set to 0x23		; addr: CE328A0
jmp @r2		; addr: CE328A2
mov.l @r15+,r14		; addr: CE328A4

l_code_CE328A6:
lds.l @r15+,pr 		; addr: CE328A6
rts 		; addr: CE328A8
mov.l @r15+,r14		; addr: CE328AA
;-------------------------------------------------------------------------------

f_code_CE328AC:
sts.l pr,@-r15		; addr: CE328AC
add 0xFC,r15		; addr: CE328AE
mov.l @(ptr_CE328F0_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE328B0
jsr @r3		; addr: CE328B2
mov.l r4,@r15		; addr: CE328B4
exts.b r0,r0		; addr: CE328B6
cmp/pz r0		; addr: CE328B8
bt l_code_CE328C6		; addr: CE328BA
mov.l @r15,r4		; addr: CE328BC
add 0x04,r15		; addr: CE328BE
mov.l @(ptr_CE32900_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE328C0
jmp @r3		; addr: CE328C2
lds.l @r15+,pr 		; addr: CE328C4

l_code_CE328C6:
add 0x04,r15		; addr: CE328C6
lds.l @r15+,pr 		; addr: CE328C8
rts 		; addr: CE328CA
nop 		; addr: CE328CC
;-------------------------------------------------------------------------------

data_CE328CE:
#data 0x041C		; addr: CE328CE

data_CE328D0:
#data 0x01A1		; addr: CE328D0

data_CE328D2:
#data 0x019E		; addr: CE328D2

data_CE328D4:
#data 0x01EA		; addr: CE328D4

data_CE328D6:
#data 0x00C3		; addr: CE328D6

#align4
ptr_CE328D8_to_fn_extern_8C05218A:
#data fn_extern_8C05218A		; addr: CE328D8

ptr_CE328DC_to_fn_extern_8C056DE4:
#data fn_extern_8C056DE4		; addr: CE328DC

ptr_CE328E0_to_extern_8C2896B0:
#data extern_8C2896B0		; addr: CE328E0

ptr_CE328E4_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE328E4

ptr_CE328E8_to_fn_extern_8C0D0584:
#data fn_extern_8C0D0584		; addr: CE328E8

ptr_CE328EC_to_fn_extern_8C05115A:
#data fn_extern_8C05115A		; addr: CE328EC

ptr_CE328F0_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE328F0

ptr_CE328F4_to_fn_extern_8C05264C:
#data fn_extern_8C05264C		; addr: CE328F4

ptr_CE328F8_to_fn_extern_8C0522E0:
#data fn_extern_8C0522E0		; addr: CE328F8

ptr_CE328FC_to_fn_extern_8C0D13BC:
#data fn_extern_8C0D13BC		; addr: CE328FC

ptr_CE32900_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE32900

data_CE32904:
#data 0x2FE69091		; addr: CE32904
#data 0x4F226E43		; addr: CE32908
#data 0x600C00EC		; addr: CE3290C
#data 0x8B0C8802		; addr: CE32910
#data 0x420BD249		; addr: CE32914
#data 0x908764E3		; addr: CE32918
#data 0xE038F3E6		; addr: CE3291C
#data 0xF325F2E6		; addr: CE32920
#data 0x90818B03		; addr: CE32924
#data 0xE038F3E6		; addr: CE32928
#data 0xFE37		; addr: CE3292C

data_CE3292E:
#data 0xE024		; addr: CE3292E
#data 0xE308D143		; addr: CE32930
#data 0x0E34957B		; addr: CE32934
#data 0x84E664E3		; addr: CE32938
#data 0x4F2635EC		; addr: CE3293C
#data 0x4008600C		; addr: CE32940
#data 0x432B031E		; addr: CE32944
#data 0x6EF6		; addr: CE32948

data_CE3294A:
#data 0x9071		; addr: CE3294A
#data 0x6E432FE6		; addr: CE3294C
#data 0x00EC4F22		; addr: CE32950
#data 0x8806600C		; addr: CE32954
#data 0x906B8B05		; addr: CE32958
#data 0x9268E310		; addr: CE3295C
#data 0x70010E24		; addr: CE32960
#data 0x0E34		; addr: CE32964

data_CE32966:
#data 0x84E6		; addr: CE32966
#data 0x7001D336		; addr: CE32968
#data 0x430B80E6		; addr: CE3296C
#data 0xE05C64E3		; addr: CE32970
#data 0xFE47F48D		; addr: CE32974
#data 0xFE47E060		; addr: CE32978
#data 0xFE47E068		; addr: CE3297C
#data 0xFE47E06C		; addr: CE32980
#data 0xE400E04C		; addr: CE32984
#data 0xE04E0E45		; addr: CE32988
#data 0xE33F0E45		; addr: CE3298C
#data 0xF3E6904C		; addr: CE32990
#data 0xFE37E038		; addr: CE32994
#data 0x0E34904D		; addr: CE32998
#data 0x0E45700B		; addr: CE3299C
#data 0x0E4470F2		; addr: CE329A0
#data 0xD3287026		; addr: CE329A4
#data 0x84E20E46		; addr: CE329A8
#data 0x600C6232		; addr: CE329AC
#data 0x4000727C		; addr: CE329B0
#data 0xE516012D		; addr: CE329B4
#data 0x7101E605		; addr: CE329B8
#data 0xD2230215		; addr: CE329BC
#data 0x64E3420B		; addr: CE329C0
#data 0xD3224F26		; addr: CE329C4
#data 0x432B64E3		; addr: CE329C8
#data 0x6EF6		; addr: CE329CC


f_code_CE329CE:
mov.l r14,@-r15		; addr: CE329CE
mov.l r13,@-r15		; addr: CE329D0
sts.l pr,@-r15		; addr: CE329D2
add 0xF4,r15		; addr: CE329D4
mov.w @(data_CE32A30,pc),r0 ; r0 set to 0x255		; addr: CE329D6
mov r4,r14		; addr: CE329D8
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE329DA
extu.b r0,r0		; addr: CE329DC
cmp/eq 0x06,r0 		; addr: CE329DE
bf l_code_CE329E6		; addr: CE329E0
bra l_code_CE329E8		; addr: CE329E2
mov 0x02,r3		; addr: CE329E4

l_code_CE329E6:
mov 0x00,r3 ; r3 set to 0x00		; addr: CE329E6

l_code_CE329E8:
mov.w @(data_CE32A38,pc),r0 ; r0 set to 0x3F1, r0 set to 0x3F1		; addr: CE329E8
mov.b r3,@(r0,r14) 		; addr: CE329EA
mov.l @(ptr_CE32A54_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEE		; addr: CE329EC
jsr @r3		; addr: CE329EE
mov r14,r4		; addr: CE329F0
mov.w @(data_CE32A3A,pc),r0 ; r0 set to 0x141, r0 set to 0x141		; addr: CE329F2
mov.b @(r0,r14),r2		; addr: CE329F4
tst r2,r2		; addr: CE329F6
bt l_code_CE32AB6		; addr: CE329F8
mov.l @(ptr_CE32A58_to_fn_extern_8C03319E,pc),r3 ; r3 set to 0x8C03319E, r3 set to 0x8C03319E		; addr: CE329FA
mov 0x00,r13 ; r13 set to 0x00, r13 set to 0x00		; addr: CE329FC
jsr @r3		; addr: CE329FE
mov.b r13,@(r0,r14) 		; addr: CE32A00
mov.l @(ptr_CE32A5C_to_data_CE36180,pc),r1 ; r1 set to 0xCE36180, r1 set to 0xCE36180		; addr: CE32A02
and 0x07,r0 		; addr: CE32A04
mov.b @(r0,r1),r2		; addr: CE32A06
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20		; addr: CE32A08
mov.b r2,@(r0,r14) 		; addr: CE32A0A
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???		; addr: CE32A0C
extu.b r0,r0		; addr: CE32A0E
cmp/eq 0x18,r0 		; addr: CE32A10
bt/s l_code_CE32A6E		; addr: CE32A12
mov 0x12,r4 ; r4 set to 0x12, r4 set to 0x12		; addr: CE32A14
cmp/eq 0x14,r0 		; addr: CE32A16
bt l_code_CE32A22		; addr: CE32A18
cmp/eq 0x10,r0 		; addr: CE32A1A
bt l_code_CE32A60		; addr: CE32A1C
bra data_CE32A68		; addr: CE32A1E
nop 		; addr: CE32A20

l_code_CE32A22:
mov 0x21,r0 ; r0 set to 0x21		; addr: CE32A22
mov 0x11,r2 ; r2 set to 0x11		; addr: CE32A24
bra l_code_CE32A72		; addr: CE32A26
mov.b r2,@(r0,r14) 		; addr: CE32A28
#data 0x01F9		; addr: CE32A2A
#data 0x02A4041C		; addr: CE32A2C

data_CE32A30:
#data 0x0255		; addr: CE32A30
#data 0x00FF		; addr: CE32A32
#data 0x01A103F0		; addr: CE32A34

data_CE32A38:
#data 0x03F1		; addr: CE32A38

data_CE32A3A:
#data 0x0141		; addr: CE32A3A
#data fn_extern_8C04FEA8		; addr: CE32A3C

#align4
ptr_CE32A40_to_ptr_CE363C4_to_data_CE3294A:
#data ptr_CE363C4_to_data_CE3294A		; addr: CE32A40
#data fn_extern_8C05218A		; addr: CE32A44
#data extern_8C2896B0		; addr: CE32A48
#data fn_extern_8C034E8C		; addr: CE32A4C
#data fn_extern_8C05115A		; addr: CE32A50

#align4
ptr_CE32A54_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE32A54

ptr_CE32A58_to_fn_extern_8C03319E:
#data fn_extern_8C03319E		; addr: CE32A58

ptr_CE32A5C_to_data_CE36180:
#data data_CE36180		; addr: CE32A5C


l_code_CE32A60:
mov 0x21,r0 ; r0 set to 0x21		; addr: CE32A60
mov 0x10,r1 ; r1 set to 0x10		; addr: CE32A62
bra l_code_CE32A72		; addr: CE32A64
mov.b r1,@(r0,r14) 		; addr: CE32A66

#align4
data_CE32A68:
#data 0xE218E020		; addr: CE32A68
#data 0x0E24		; addr: CE32A6C


l_code_CE32A6E:
mov 0x21,r0 ; r0 set to 0x21		; addr: CE32A6E
mov.b r4,@(r0,r14) 		; addr: CE32A70

l_code_CE32A72:
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20		; addr: CE32A72
mov.l @(ptr_CE32B68_to_fn_extern_8C07F7EC,pc),r3 ; r3 set to 0x8C07F7EC, r3 set to 0x8C07F7EC		; addr: CE32A74
mov.b @(r0,r14),r5		; addr: CE32A76
jsr @r3		; addr: CE32A78
mov r14,r4		; addr: CE32A7A
tst r0,r0		; addr: CE32A7C
bf/s data_CE32A8C		; addr: CE32A7E
mov.l r0,@(0x14,r14) 		; addr: CE32A80
mov.l @(ptr_CE32B6C_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648, r3 set to 0x8C051648		; addr: CE32A82
jsr @r3		; addr: CE32A84
mov r14,r4		; addr: CE32A86
bra l_code_CE32AB6		; addr: CE32A88
nop 		; addr: CE32A8A

#align4
data_CE32A8C:
#data 0x65F384E6		; addr: CE32A8C
#data 0xE601F38D		; addr: CE32A90
#data 0xD3377001		; addr: CE32A94
#data 0x905D80E6		; addr: CE32A98
#data 0x70010ED4		; addr: CE32A9C
#data 0xC7330ED4		; addr: CE32AA0
#data 0xF308FF3A		; addr: CE32AA4
#data 0xF2F6E004		; addr: CE32AA8
#data 0xF230E004		; addr: CE32AAC
#data 0x430BFF27		; addr: CE32AB0
#data 0x64E3		; addr: CE32AB4


l_code_CE32AB6:
add 0x0C,r15		; addr: CE32AB6
lds.l @r15+,pr 		; addr: CE32AB8
mov.l @r15+,r13		; addr: CE32ABA
rts 		; addr: CE32ABC
mov.l @r15+,r14		; addr: CE32ABE
;-------------------------------------------------------------------------------

f_code_CE32AC0:
mov.w @(data_CE32B5A,pc),r0 ; r0 set to 0x3F8		; addr: CE32AC0
mov 0x02,r3 ; r3 set to 0x02		; addr: CE32AC2
mov.l r14,@-r15		; addr: CE32AC4
mov r4,r14		; addr: CE32AC6
mov 0x05,r2 ; r2 set to 0x05		; addr: CE32AC8
sts.l pr,@-r15		; addr: CE32ACA
mov.b r3,@(r0,r14) 		; addr: CE32ACC
mov.w @(data_CE32B5C,pc),r0 ; r0 set to 0x328		; addr: CE32ACE
mov.b r2,@(r0,r14) 		; addr: CE32AD0
mov.w @(data_CE32B5E,pc),r0 ; r0 set to 0x255		; addr: CE32AD2
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE32AD4
extu.b r0,r0		; addr: CE32AD6
cmp/eq 0x06,r0 		; addr: CE32AD8
bf data_CE32AE0		; addr: CE32ADA
bra data_CE32AE2		; addr: CE32ADC
mov 0x02,r3		; addr: CE32ADE

data_CE32AE0:
#data 0xE300		; addr: CE32AE0

data_CE32AE2:
#data 0x903D		; addr: CE32AE2
#data 0xD3240E34		; addr: CE32AE4
#data 0x64E3430B		; addr: CE32AE8
#data 0x4011600E		; addr: CE32AEC
#data 0x84E68904		; addr: CE32AF0
#data 0x80E67001		; addr: CE32AF4
#data 0x81EE9033		; addr: CE32AF8

#align4
data_CE32AFC:
#data 0x000B4F26		; addr: CE32AFC
#data 0x6EF6		; addr: CE32B00
;-------------------------------------------------------------------------------

data_CE32B02:
#data 0x902A		; addr: CE32B02
#data 0xE205E302		; addr: CE32B04
#data 0x90270434		; addr: CE32B08
#data 0x90290424		; addr: CE32B0C
#data 0x035C5545		; addr: CE32B10
#data 0x89052338		; addr: CE32B14
#data 0x70FF854E		; addr: CE32B18
#data 0x600F814E		; addr: CE32B1C
#data 0x89024015		; addr: CE32B20

#align4
data_CE32B24:
#data 0x422BD211		; addr: CE32B24
#data 0x0009		; addr: CE32B28

data_CE32B2A:
#data 0x8454		; addr: CE32B2A
#data 0x8801600C		; addr: CE32B2C
#data 0x84558B10		; addr: CE32B30
#data 0x8801600C		; addr: CE32B34
#data 0x84568B02		; addr: CE32B38
#data 0x8B072008		; addr: CE32B3C

#align4
data_CE32B40:
#data 0x600C8454		; addr: CE32B40
#data 0x8B058801		; addr: CE32B44
#data 0x600C8455		; addr: CE32B48
#data 0x8B018802		; addr: CE32B4C

#align4
data_CE32B50:
#data 0x0009A296		; addr: CE32B50

#align4
data_CE32B54:
#data 0x0009000B		; addr: CE32B54
;-------------------------------------------------------------------------------
#data 0x03F0		; addr: CE32B58

data_CE32B5A:
#data 0x03F8		; addr: CE32B5A

data_CE32B5C:
#data 0x0328		; addr: CE32B5C

data_CE32B5E:
#data 0x0255		; addr: CE32B5E
#data 0x00B403F1		; addr: CE32B60
#data 0x0000012C		; addr: CE32B64

#align4
ptr_CE32B68_to_fn_extern_8C07F7EC:
#data fn_extern_8C07F7EC		; addr: CE32B68

ptr_CE32B6C_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE32B6C
#data 0x42FCDB6D		; addr: CE32B70
#data extern_8C050834		; addr: CE32B74
#data fn_extern_8C034DEE		; addr: CE32B78


f_code_CE32B7C:
mov.w @(data_CE32C8C,pc),r0 ; r0 set to 0x3F8		; addr: CE32B7C
mov 0x02,r3 ; r3 set to 0x02		; addr: CE32B7E
mov.l r14,@-r15		; addr: CE32B80
mov r4,r14		; addr: CE32B82
sts.l pr,@-r15		; addr: CE32B84
mov.b r3,@(r0,r14) 		; addr: CE32B86
mov 0x05,r2 ; r2 set to 0x05		; addr: CE32B88
mov.w @(data_CE32C8E,pc),r0 ; r0 set to 0x328		; addr: CE32B8A
mov.l @(ptr_CE32C90_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE32B8C
mov.b r2,@(r0,r14) 		; addr: CE32B8E
jsr @r3		; addr: CE32B90
mov r14,r4		; addr: CE32B92
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE32B94
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE32B96
mov 0x34,r0 ; r0 set to 0x34		; addr: CE32B98
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE32B9A
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???		; addr: CE32B9C
mov 0x68,r1 ; r1 set to 0x68		; addr: CE32B9E
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE32BA0
fadd fr3,fr2		; addr: CE32BA2
fmov.s fr2,@(r0,r14) 		; addr: CE32BA4
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE32BA6
fmov.s @(r0,r14),fr2		; addr: CE32BA8
fmov.s @r1,fr3		; addr: CE32BAA
mov 0x60,r1 ; r1 set to 0x60		; addr: CE32BAC
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE32BAE
fadd fr3,fr2		; addr: CE32BB0
fmov.s fr2,@(r0,r14) 		; addr: CE32BB2
mov 0x38,r0 ; r0 set to 0x38		; addr: CE32BB4
fmov.s @(r0,r14),fr2		; addr: CE32BB6
fmov.s @r1,fr3		; addr: CE32BB8
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE32BBA
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE32BBC
fadd fr3,fr2		; addr: CE32BBE
fmov.s fr2,@(r0,r14) 		; addr: CE32BC0
mov 0x60,r0 ; r0 set to 0x60		; addr: CE32BC2
fmov.s @(r0,r14),fr2		; addr: CE32BC4
fmov.s @r1,fr3		; addr: CE32BC6
fadd fr3,fr2		; addr: CE32BC8
fmov.s fr2,@(r0,r14) 		; addr: CE32BCA
mov.w @(0x1C,r14),r0 		; addr: CE32BCC
add 0xFF,r0 ; r0 set to 0x5F		; addr: CE32BCE
mov.w r0,@(0x1C,r14) 		; addr: CE32BD0
exts.w r0,r0 ; r0 ??		; addr: CE32BD2
cmp/pl r0		; addr: CE32BD4
bt l_code_CE32BF0		; addr: CE32BD6
mov.b @(0x06,r14),r0 		; addr: CE32BD8
mov r14,r4		; addr: CE32BDA
mov.l @(ptr_CE32C94_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE32BDC
mov 0x08,r6 ; r6 set to 0x08		; addr: CE32BDE
add 0x01,r0		; addr: CE32BE0
mov.b r0,@(0x06,r14) 		; addr: CE32BE2
mov 0x0A,r0 ; r0 set to 0x0A		; addr: CE32BE4
mov.w r0,@(0x1C,r14) 		; addr: CE32BE6
mov 0x16,r5 ; r5 set to 0x16		; addr: CE32BE8
lds.l @r15+,pr 		; addr: CE32BEA
jmp @r3		; addr: CE32BEC
mov.l @r15+,r14		; addr: CE32BEE

l_code_CE32BF0:
lds.l @r15+,pr 		; addr: CE32BF0
rts 		; addr: CE32BF2
mov.l @r15+,r14		; addr: CE32BF4
;-------------------------------------------------------------------------------

f_code_CE32BF6:
mov.w @(data_CE32C8C,pc),r0 ; r0 set to 0x3F8		; addr: CE32BF6
mov 0x02,r3 ; r3 set to 0x02		; addr: CE32BF8
mov.l r14,@-r15		; addr: CE32BFA
mov r4,r14		; addr: CE32BFC
mov 0x05,r2 ; r2 set to 0x05		; addr: CE32BFE
mov.l r13,@-r15		; addr: CE32C00
sts.l pr,@-r15		; addr: CE32C02
mov.b r3,@(r0,r14) 		; addr: CE32C04
mov.w @(data_CE32C8E,pc),r0 ; r0 set to 0x328		; addr: CE32C06
mov.b r2,@(r0,r14) 		; addr: CE32C08
mov.w @(0x1C,r14),r0 		; addr: CE32C0A
add 0xFF,r0 ; r0 set to 0x327		; addr: CE32C0C
mov.w r0,@(0x1C,r14) 		; addr: CE32C0E
exts.w r0,r0 ; r0 ??		; addr: CE32C10
cmp/pl r0		; addr: CE32C12
bt l_code_CE32C84		; addr: CE32C14
mov.b @(0x06,r14),r0 		; addr: CE32C16
mov.l @(data_CE32C98,pc),r3 ; r3 set to 0xE000		; addr: CE32C18
add 0x01,r0		; addr: CE32C1A
mov.l @(ptr_CE32C9C_to_fn_extern_8C0D0584,pc),r13 ; r13 set to 0x8C0D0584		; addr: CE32C1C
mov.b r0,@(0x06,r14) 		; addr: CE32C1E
mov 0x48,r0 ; r0 set to 0x48		; addr: CE32C20
mov.l r3,@(r0,r14) 		; addr: CE32C22
mov 0x20,r0 ; r0 set to 0x20		; addr: CE32C24
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE32C26
extu.b r0,r0		; addr: CE32C28
cmp/eq 0x18,r0 		; addr: CE32C2A
bt l_code_CE32C3A		; addr: CE32C2C
cmp/eq 0x14,r0 		; addr: CE32C2E
bt l_code_CE32C4A		; addr: CE32C30
cmp/eq 0x10,r0 		; addr: CE32C32
bt data_CE32C5E		; addr: CE32C34
bra l_code_CE32C74		; addr: CE32C36
nop 		; addr: CE32C38

l_code_CE32C3A:
mov 0x38,r0 ; r0 set to 0x38		; addr: CE32C3A
fldi0 fr3		; addr: CE32C3C
fmov.s @(r0,r14),fr2		; addr: CE32C3E
mov 0x05,r6 ; r6 set to 0x05		; addr: CE32C40
fsub fr3,fr2		; addr: CE32C42
fmov.s fr2,@(r0,r14) 		; addr: CE32C44
bra l_code_CE32C70		; addr: CE32C46
mov 0x12,r5		; addr: CE32C48

l_code_CE32C4A:
mov.l @(data_CE32CA0,pc),r1 ; r1 set to 0x41892492		; addr: CE32C4A
mov 0x38,r0 ; r0 set to 0x38		; addr: CE32C4C
fmov.s @(r0,r14),fr2		; addr: CE32C4E
mov 0x05,r6 ; r6 set to 0x05		; addr: CE32C50
lds r1,fpul 		; addr: CE32C52
fsts fpul,fr3		; addr: CE32C54
fsub fr3,fr2		; addr: CE32C56
fmov.s fr2,@(r0,r14) 		; addr: CE32C58
bra l_code_CE32C70		; addr: CE32C5A
mov 0x11,r5		; addr: CE32C5C

data_CE32C5E:
#data 0xD111		; addr: CE32C5E
#data 0xF2E6E038		; addr: CE32C60
#data 0x415AE510		; addr: CE32C64
#data 0xF30DE605		; addr: CE32C68
#data 0xFE27F231		; addr: CE32C6C


l_code_CE32C70:
jsr @r13		; addr: CE32C70
mov r14,r4		; addr: CE32C72

l_code_CE32C74:
lds.l @r15+,pr 		; addr: CE32C74
mov.l @(ptr_CE32C94_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C, r2 set to 0x8C034E8C		; addr: CE32C76
mov 0x09,r6 ; r6 set to 0x09, r6 set to 0x09		; addr: CE32C78
mov 0x16,r5 ; r5 set to 0x16, r5 set to 0x16		; addr: CE32C7A
mov r14,r4		; addr: CE32C7C
mov.l @r15+,r13		; addr: CE32C7E
jmp @r2		; addr: CE32C80
mov.l @r15+,r14		; addr: CE32C82

l_code_CE32C84:
lds.l @r15+,pr 		; addr: CE32C84
mov.l @r15+,r13		; addr: CE32C86
rts 		; addr: CE32C88
mov.l @r15+,r14		; addr: CE32C8A
;-------------------------------------------------------------------------------

data_CE32C8C:
#data 0x03F8		; addr: CE32C8C

data_CE32C8E:
#data 0x0328		; addr: CE32C8E

#align4
ptr_CE32C90_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE32C90

ptr_CE32C94_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE32C94

data_CE32C98:
#data 0x0000E000		; addr: CE32C98

#align4
ptr_CE32C9C_to_fn_extern_8C0D0584:
#data fn_extern_8C0D0584		; addr: CE32C9C

data_CE32CA0:
#data 0x41892492		; addr: CE32CA0
#data 0x41092492		; addr: CE32CA4

#align4
data_CE32CA8:
#data 0xE3029087		; addr: CE32CA8
#data 0x6E432FE6		; addr: CE32CAC
#data 0x2FD6E205		; addr: CE32CB0
#data 0x0E344F22		; addr: CE32CB4
#data 0xD3429080		; addr: CE32CB8
#data 0xE0480E24		; addr: CE32CBC
#data 0xD3410E36		; addr: CE32CC0
#data 0x64E3430B		; addr: CE32CC4
#data 0x4011600E		; addr: CE32CC8
#data 0x90768942		; addr: CE32CCC
#data 0x0E34E300		; addr: CE32CD0
#data 0x937384E6		; addr: CE32CD4
#data 0x80E67001		; addr: CE32CD8
#data 0x54E5E048		; addr: CE32CDC
#data 0xC73A0E36		; addr: CE32CE0
#data 0xE034F308		; addr: CE32CE4
#data 0xF230F246		; addr: CE32CE8
#data 0x9068FE27		; addr: CE32CEC
#data 0x233803ED		; addr: CE32CF0
#data 0xC7368905		; addr: CE32CF4
#data 0xE034F208		; addr: CE32CF8
#data 0xF120F146		; addr: CE32CFC
#data 0xFE17		; addr: CE32D00

data_CE32D02:
#data 0x854E		; addr: CE32D02
#data 0x70FFDD34		; addr: CE32D04
#data 0xC732814E		; addr: CE32D08
#data 0xE020F408		; addr: CE32D0C
#data 0x600C00EC		; addr: CE32D10
#data 0x89058818		; addr: CE32D14
#data 0x890A8814		; addr: CE32D18
#data 0x89118810		; addr: CE32D1C
#data 0x0009A018		; addr: CE32D20

#align4
data_CE32D24:
#data 0xF346E038		; addr: CE32D24
#data 0xF340E605		; addr: CE32D28
#data 0xA00FFE37		; addr: CE32D2C
#data 0xE512		; addr: CE32D30

data_CE32D32:
#data 0xC72A		; addr: CE32D32
#data 0xE038F308		; addr: CE32D34
#data 0xE605F246		; addr: CE32D38
#data 0xFE27F230		; addr: CE32D3C
#data 0xE511A006		; addr: CE32D40

#align4
data_CE32D44:
#data 0xF346E038		; addr: CE32D44
#data 0xE605E510		; addr: CE32D48
#data 0xFE37F340		; addr: CE32D4C

#align4
data_CE32D50:
#data 0x64E34D0B		; addr: CE32D50

#align4
data_CE32D54:
#data 0x6DF64F26		; addr: CE32D54
#data 0x6EF6000B		; addr: CE32D58
;-------------------------------------------------------------------------------

f_code_CE32D5C:
mov.w @(data_CE32DBA,pc),r0 ; r0 set to 0x3F8		; addr: CE32D5C
mov 0x02,r3 ; r3 set to 0x02		; addr: CE32D5E
mov.l r14,@-r15		; addr: CE32D60
mov r4,r14		; addr: CE32D62
mov 0x05,r2 ; r2 set to 0x05		; addr: CE32D64
mov.l r13,@-r15		; addr: CE32D66
mov.l r8,@-r15		; addr: CE32D68
sts.l pr,@-r15		; addr: CE32D6A
mov.b r3,@(r0,r14) 		; addr: CE32D6C
mov.w @(data_CE32DBC,pc),r0 ; r0 set to 0x328		; addr: CE32D6E
mov.w @(data_CE32DC0,pc),r3 ; r3 set to 0x4000		; addr: CE32D70
mov.b r2,@(r0,r14) 		; addr: CE32D72
mov 0x48,r0 ; r0 set to 0x48		; addr: CE32D74
mov.l r3,@(r0,r14) 		; addr: CE32D76
mov.l @(ptr_CE32DC8_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE32D78
jsr @r3		; addr: CE32D7A
mov r14,r4		; addr: CE32D7C
exts.b r0,r0 ; r0 ??		; addr: CE32D7E
cmp/pz r0		; addr: CE32D80
bt l_code_CE32E28		; addr: CE32D82
mov.w @(data_CE32DBE,pc),r0 ; r0 set to 0x141		; addr: CE32D84
mov 0x00,r4 ; r4 set to 0x00		; addr: CE32D86
fldi0 fr3		; addr: CE32D88
mov.b r4,@(r0,r14) 		; addr: CE32D8A
mov.b @(0x06,r14),r0 		; addr: CE32D8C
add 0x01,r0 ; r0 set to 0x142		; addr: CE32D8E
mov.b r0,@(0x06,r14) 		; addr: CE32D90
mov 0x48,r0 ; r0 set to 0x48		; addr: CE32D92
mov.l r4,@(r0,r14) 		; addr: CE32D94
mov.l @(0x14,r14),r4 ; r4 ??? bc r14 is ???		; addr: CE32D96
mov.w @(0x1C,r4),r0 		; addr: CE32D98
add 0xFF,r0 ; r0 set to 0x47		; addr: CE32D9A
mov.w r0,@(0x1C,r4) 		; addr: CE32D9C
mov 0x34,r0 ; r0 set to 0x34		; addr: CE32D9E
fmov.s @(r0,r4),fr2 ; r2 ??? bc r4 is ???		; addr: CE32DA0
mov r0,r8 ; r8 set to 0x34		; addr: CE32DA2
fadd fr3,fr2		; addr: CE32DA4
fmov.s fr2,@(r0,r14) 		; addr: CE32DA6
mov.w @(data_CE32DC2,pc),r0 ; r0 set to 0x130		; addr: CE32DA8
mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???		; addr: CE32DAA
tst r3,r3		; addr: CE32DAC
bt/s l_code_CE32DE4		; addr: CE32DAE
add r14,r8 ; r8 ??? bc r14 is ???		; addr: CE32DB0
mov.l @(data_CE32DE0,pc),r1 ; r1 set to 0xC1555555		; addr: CE32DB2
lds r1,fpul 		; addr: CE32DB4
bra l_code_CE32DEA		; addr: CE32DB6
fsts fpul,fr2		; addr: CE32DB8

data_CE32DBA:
#data 0x03F8		; addr: CE32DBA

data_CE32DBC:
#data 0x0328		; addr: CE32DBC

data_CE32DBE:
#data 0x0141		; addr: CE32DBE

data_CE32DC0:
#data 0x4000		; addr: CE32DC0

data_CE32DC2:
#data 0x0130		; addr: CE32DC2
#data 0x0000E000		; addr: CE32DC4

#align4
ptr_CE32DC8_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE32DC8
#data 0xC2D55555		; addr: CE32DCC
#data 0x42D55555		; addr: CE32DD0
#data 0x431A4924		; addr: CE32DD4
#data fn_extern_8C0D0584		; addr: CE32DD8
#data 0x43092492		; addr: CE32DDC

#align4
data_CE32DE0:
#data 0xC1555555		; addr: CE32DE0


l_code_CE32DE4:
mov.l @(data_CE32F14,pc),r2 ; r2 set to 0x41555555		; addr: CE32DE4
lds r2,fpul 		; addr: CE32DE6
fsts fpul,fr2		; addr: CE32DE8

l_code_CE32DEA:
fmov.s @r8,fr3		; addr: CE32DEA
mova @(data_CE32F18,pc),r0  ; r0 init to 0xCE32F18, r0 init to 0xCE32F18		; addr: CE32DEC
mov.l @(ptr_CE32F1C_to_fn_extern_8C0D0584,pc),r13 ; r13 set to 0x8C0D0584, r13 set to 0x8C0D0584		; addr: CE32DEE
fadd fr2,fr3		; addr: CE32DF0
fmov.s fr3,@r8		; addr: CE32DF2
fmov.s @r0,fr3		; addr: CE32DF4
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38		; addr: CE32DF6
fmov.s @(r0,r4),fr2 ; r2 ??? bc r4 is ???		; addr: CE32DF8
fadd fr3,fr2		; addr: CE32DFA
fmov.s fr2,@(r0,r14) 		; addr: CE32DFC
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20		; addr: CE32DFE
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???		; addr: CE32E00
extu.b r0,r0		; addr: CE32E02
cmp/eq 0x18,r0 		; addr: CE32E04
bt l_code_CE32E14		; addr: CE32E06
cmp/eq 0x14,r0 		; addr: CE32E08
bt l_code_CE32E1A		; addr: CE32E0A
cmp/eq 0x10,r0 		; addr: CE32E0C
bt data_CE32E20		; addr: CE32E0E
bra l_code_CE32E28		; addr: CE32E10
nop 		; addr: CE32E12

l_code_CE32E14:
mov 0x05,r6 ; r6 set to 0x05		; addr: CE32E14
bra data_CE32E24		; addr: CE32E16
mov 0x12,r5		; addr: CE32E18

l_code_CE32E1A:
mov 0x05,r6 ; r6 set to 0x05		; addr: CE32E1A
bra data_CE32E24		; addr: CE32E1C
mov 0x11,r5		; addr: CE32E1E

#align4
data_CE32E20:
#data 0xE605E510		; addr: CE32E20

#align4
data_CE32E24:
#data 0x64E34D0B		; addr: CE32E24


l_code_CE32E28:
lds.l @r15+,pr 		; addr: CE32E28
mov.l @r15+,r8		; addr: CE32E2A
mov.l @r15+,r13		; addr: CE32E2C
rts 		; addr: CE32E2E
mov.l @r15+,r14		; addr: CE32E30
;-------------------------------------------------------------------------------

f_code_CE32E32:
mov.w @(data_CE32F06,pc),r0 ; r0 set to 0x3F8		; addr: CE32E32
mov 0x02,r3 ; r3 set to 0x02		; addr: CE32E34
mov.l r14,@-r15		; addr: CE32E36
mov r4,r14		; addr: CE32E38
sts.l pr,@-r15		; addr: CE32E3A
mov.b r3,@(r0,r14) 		; addr: CE32E3C
mov 0x05,r2 ; r2 set to 0x05		; addr: CE32E3E
mov.w @(data_CE32F08,pc),r0 ; r0 set to 0x328		; addr: CE32E40
mov.l @(ptr_CE32F20_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE32E42
mov.b r2,@(r0,r14) 		; addr: CE32E44
jsr @r3		; addr: CE32E46
mov r14,r4		; addr: CE32E48
exts.b r0,r0 ; r0 ??		; addr: CE32E4A
cmp/pz r0		; addr: CE32E4C
bt l_code_CE32E9C		; addr: CE32E4E
mov.w @(data_CE32F0A,pc),r0 ; r0 set to 0x3F9		; addr: CE32E50
mov 0x00,r4 ; r4 set to 0x00		; addr: CE32E52
mov.b r4,@(r0,r14) 		; addr: CE32E54
add 0xFF,r0 ; r0 set to 0x3F8		; addr: CE32E56
mov.b r4,@(r0,r14) 		; addr: CE32E58
mov.w @(data_CE32F0C,pc),r0 ; r0 set to 0x327		; addr: CE32E5A
mov.b r4,@(r0,r14) 		; addr: CE32E5C
add 0x01,r0 ; r0 set to 0x328		; addr: CE32E5E
mov.b r4,@(r0,r14) 		; addr: CE32E60
mov.w @(data_CE32F0E,pc),r0 ; r0 set to 0x141		; addr: CE32E62
mov.b r4,@(r0,r14) 		; addr: CE32E64
mov.b @(0x06,r14),r0 		; addr: CE32E66
add 0x01,r0 ; r0 set to 0x142		; addr: CE32E68
mov.b r0,@(0x06,r14) 		; addr: CE32E6A
mov.w @(data_CE32F10,pc),r0 ; r0 set to 0x130		; addr: CE32E6C
mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???		; addr: CE32E6E
tst r3,r3		; addr: CE32E70
bt data_CE32E7A		; addr: CE32E72
mova @(data_CE32F24,pc),r0  ; r0 set to 0xCE32F24		; addr: CE32E74
bra data_CE32E7E		; addr: CE32E76
fmov.s @r0,fr3		; addr: CE32E78

data_CE32E7A:
#data 0xC72B		; addr: CE32E7A
#data 0xF308		; addr: CE32E7C

data_CE32E7E:
#data 0xD32B		; addr: CE32E7E
#data 0xE516E05C		; addr: CE32E80
#data 0xE60AFE37		; addr: CE32E84
#data 0x64E3430B		; addr: CE32E88
#data 0x854E54E5		; addr: CE32E8C
#data 0x814E70FF		; addr: CE32E90
#data 0xF3E6903D		; addr: CE32E94
#data 0xFE37E038		; addr: CE32E98


l_code_CE32E9C:
lds.l @r15+,pr 		; addr: CE32E9C
rts 		; addr: CE32E9E
mov.l @r15+,r14		; addr: CE32EA0
;-------------------------------------------------------------------------------

data_CE32EA2:
#data 0x2FE6		; addr: CE32EA2
#data 0xE15C6E43		; addr: CE32EA4
#data 0x31ECD31D		; addr: CE32EA8
#data 0x4F22E034		; addr: CE32EAC
#data 0xE168F318		; addr: CE32EB0
#data 0x31ECF2E6		; addr: CE32EB4
#data 0xFE27F230		; addr: CE32EB8
#data 0xF2E6E05C		; addr: CE32EBC
#data 0xF230F318		; addr: CE32EC0
#data 0x430BFE27		; addr: CE32EC4
#data 0x600E64E3		; addr: CE32EC8
#data 0x89174011		; addr: CE32ECC
#data 0xE51684E6		; addr: CE32ED0
#data 0xE60BD315		; addr: CE32ED4
#data 0x80E67001		; addr: CE32ED8
#data 0xF3E69019		; addr: CE32EDC
#data 0xFE37E038		; addr: CE32EE0
#data 0x64E3430B		; addr: CE32EE4
#data 0x420BD211		; addr: CE32EE8
#data 0xE05C64E3		; addr: CE32EEC
#data 0xFE47F48D		; addr: CE32EF0
#data 0xFE47E060		; addr: CE32EF4
#data 0xFE47E068		; addr: CE32EF8
#data 0xFE47E06C		; addr: CE32EFC

#align4
data_CE32F00:
#data 0x000B4F26		; addr: CE32F00
#data 0x6EF6		; addr: CE32F04
;-------------------------------------------------------------------------------

data_CE32F06:
#data 0x03F8		; addr: CE32F06

data_CE32F08:
#data 0x0328		; addr: CE32F08

data_CE32F0A:
#data 0x03F9		; addr: CE32F0A

data_CE32F0C:
#data 0x0327		; addr: CE32F0C

data_CE32F0E:
#data 0x0141		; addr: CE32F0E

data_CE32F10:
#data 0x0130		; addr: CE32F10
#data 0x041C		; addr: CE32F12

#align4
data_CE32F14:
#data 0x41555555		; addr: CE32F14

#align4
data_CE32F18:
#data 0x43092492		; addr: CE32F18

#align4
ptr_CE32F1C_to_fn_extern_8C0D0584:
#data fn_extern_8C0D0584		; addr: CE32F1C

ptr_CE32F20_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE32F20

data_CE32F24:
#data 0xC1009249		; addr: CE32F24
#data 0x41009249		; addr: CE32F28
#data fn_extern_8C034E8C		; addr: CE32F2C
#data fn_extern_8C0511B4		; addr: CE32F30


f_code_CE32F34:
mov.l r14,@-r15		; addr: CE32F34
sts.l pr,@-r15		; addr: CE32F36
mov.l @(ptr_CE33058_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE32F38
jsr @r3		; addr: CE32F3A
mov r4,r14		; addr: CE32F3C
exts.b r0,r0		; addr: CE32F3E
cmp/pz r0		; addr: CE32F40
bt l_code_CE32F7E		; addr: CE32F42
mov.b @(0x06,r14),r0 		; addr: CE32F44
add 0x01,r0		; addr: CE32F46
mov.b r0,@(0x06,r14) 		; addr: CE32F48
mova @(data_CE3305C,pc),r0  ; r0 set to 0xCE3305C		; addr: CE32F4A
fmov.s @r0,fr3 ; r3 ??		; addr: CE32F4C
mov 0x60,r0 ; r0 set to 0x60		; addr: CE32F4E
fmov.s fr3,@(r0,r14) 		; addr: CE32F50
mova @(data_CE33060,pc),r0  ; r0 set to 0xCE33060		; addr: CE32F52
fmov.s @r0,fr3		; addr: CE32F54
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE32F56
fmov.s fr3,@(r0,r14) 		; addr: CE32F58
mov.w @(data_CE3304E,pc),r0 ; r0 set to 0x130		; addr: CE32F5A
mov.w @(r0,r14),r3		; addr: CE32F5C
tst r3,r3		; addr: CE32F5E
bt l_code_CE32F68		; addr: CE32F60
mova @(data_CE33064,pc),r0  ; r0 set to 0xCE33064		; addr: CE32F62
bra l_code_CE32F6C		; addr: CE32F64
fmov.s @r0,fr3		; addr: CE32F66

l_code_CE32F68:
mova @(data_CE33068,pc),r0  ; r0 init to 0xCE33068		; addr: CE32F68
fmov.s @r0,fr3		; addr: CE32F6A

l_code_CE32F6C:
mov.l @(ptr_CE3306C_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8C		; addr: CE32F6C
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C		; addr: CE32F6E
mov r14,r4		; addr: CE32F70
fmov.s fr3,@(r0,r14) 		; addr: CE32F72
lds.l @r15+,pr 		; addr: CE32F74
mov 0x02,r6 ; r6 set to 0x02, r6 set to 0x02		; addr: CE32F76
mov 0x01,r5 ; r5 set to 0x01, r5 set to 0x01		; addr: CE32F78
jmp @r3		; addr: CE32F7A
mov.l @r15+,r14		; addr: CE32F7C

l_code_CE32F7E:
mov.w @(data_CE33050,pc),r0 ; r0 set to 0x141		; addr: CE32F7E
lds.l @r15+,pr 		; addr: CE32F80
mov.b @(r0,r14),r2		; addr: CE32F82
tst r2,r2		; addr: CE32F84
rts 		; addr: CE32F86
mov.l @r15+,r14		; addr: CE32F88
;-------------------------------------------------------------------------------

f_code_CE32F8A:
mov.l r14,@-r15		; addr: CE32F8A
sts.l pr,@-r15		; addr: CE32F8C
mov.l @(ptr_CE33058_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE32F8E
jsr @r3		; addr: CE32F90
mov r4,r14		; addr: CE32F92
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE32F94
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE32F96
mov 0x34,r0 ; r0 set to 0x34		; addr: CE32F98
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE32F9A
fmov.s @(r0,r14),fr2		; addr: CE32F9C
mov 0x68,r1 ; r1 set to 0x68		; addr: CE32F9E
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE32FA0
fadd fr3,fr2		; addr: CE32FA2
fmov.s fr2,@(r0,r14) 		; addr: CE32FA4
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE32FA6
fmov.s @(r0,r14),fr2		; addr: CE32FA8
fmov.s @r1,fr3		; addr: CE32FAA
mov 0x60,r1 ; r1 set to 0x60		; addr: CE32FAC
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE32FAE
fadd fr3,fr2		; addr: CE32FB0
fmov.s fr2,@(r0,r14) 		; addr: CE32FB2
mov 0x38,r0 ; r0 set to 0x38		; addr: CE32FB4
fmov.s @(r0,r14),fr2		; addr: CE32FB6
fmov.s @r1,fr3		; addr: CE32FB8
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE32FBA
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE32FBC
fadd fr3,fr2		; addr: CE32FBE
fmov.s fr2,@(r0,r14) 		; addr: CE32FC0
mov 0x60,r0 ; r0 set to 0x60		; addr: CE32FC2
fmov.s @(r0,r14),fr2		; addr: CE32FC4
fmov.s @r1,fr3		; addr: CE32FC6
fadd fr3,fr2		; addr: CE32FC8
fmov.s fr2,@(r0,r14) 		; addr: CE32FCA
mov.w @(data_CE33052,pc),r0 ; r0 set to 0x41C		; addr: CE32FCC
fmov.s @(r0,r14),fr3		; addr: CE32FCE
mov 0x38,r0 ; r0 set to 0x38		; addr: CE32FD0
fmov.s @(r0,r14),fr2		; addr: CE32FD2
fcmp/gt fr3,fr2		; addr: CE32FD4
bt l_code_CE33020		; addr: CE32FD6
mov.b @(0x06,r14),r0 		; addr: CE32FD8
mov 0x00,r3 ; r3 set to 0x00		; addr: CE32FDA
add 0x01,r0 ; r0 set to 0x39		; addr: CE32FDC
mov.b r0,@(0x06,r14) 		; addr: CE32FDE
mov.w @(data_CE33052,pc),r0 ; r0 set to 0x41C		; addr: CE32FE0
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???		; addr: CE32FE2
mov 0x38,r0 ; r0 set to 0x38		; addr: CE32FE4
fmov.s fr3,@(r0,r14) 		; addr: CE32FE6
mov.w @(data_CE33054,pc),r0 ; r0 set to 0x1F9		; addr: CE32FE8
mov.b r3,@(r0,r14) 		; addr: CE32FEA
mov.l @(ptr_CE33070_to_fn_extern_8C0511B4,pc),r3 ; r3 set to 0x8C0511B4		; addr: CE32FEC
jsr @r3		; addr: CE32FEE
mov r14,r4		; addr: CE32FF0
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE32FF2
fldi0 fr4		; addr: CE32FF4
fmov.s fr4,@(r0,r14) 		; addr: CE32FF6
mov 0x60,r0 ; r0 set to 0x60		; addr: CE32FF8
fmov.s fr4,@(r0,r14) 		; addr: CE32FFA
mov 0x68,r0 ; r0 set to 0x68		; addr: CE32FFC
fmov.s fr4,@(r0,r14) 		; addr: CE32FFE
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE33000
mov.l @(ptr_CE3306C_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE33002
mov 0x16,r5 ; r5 set to 0x16		; addr: CE33004
fmov.s fr4,@(r0,r14) 		; addr: CE33006
mov 0x06,r6 ; r6 set to 0x06		; addr: CE33008
jsr @r3		; addr: CE3300A
mov r14,r4		; addr: CE3300C
mov 0x00,r6 ; r6 set to 0x00		; addr: CE3300E
mov.l @(ptr_CE33074_to_fn_extern_8C02FEC4,pc),r3 ; r3 set to 0x8C02FEC4		; addr: CE33010
mov 0x14,r0 ; r0 set to 0x14		; addr: CE33012
mov r14,r4		; addr: CE33014
mov.w r0,@(0x1C,r14) 		; addr: CE33016
mov r6,r5 ; r5 set to 0x00		; addr: CE33018
lds.l @r15+,pr 		; addr: CE3301A
jmp @r3		; addr: CE3301C
mov.l @r15+,r14		; addr: CE3301E

l_code_CE33020:
lds.l @r15+,pr 		; addr: CE33020
rts 		; addr: CE33022
mov.l @r15+,r14		; addr: CE33024
;-------------------------------------------------------------------------------

f_code_CE33026:
mov.l r14,@-r15		; addr: CE33026
sts.l pr,@-r15		; addr: CE33028
mov.l @(ptr_CE33058_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE3302A
jsr @r3		; addr: CE3302C
mov r4,r14		; addr: CE3302E
exts.b r0,r0		; addr: CE33030
cmp/pz r0		; addr: CE33032
bt l_code_CE33048		; addr: CE33034
mov.l @(ptr_CE33078_to_fn_extern_8C035162,pc),r3 ; r3 set to 0x8C035162		; addr: CE33036
mov 0x00,r5 ; r5 set to 0x00		; addr: CE33038
jsr @r3		; addr: CE3303A
mov r14,r4		; addr: CE3303C
lds.l @r15+,pr 		; addr: CE3303E
mov.l @(ptr_CE3307C_to_fn_extern_8C051648,pc),r2 ; r2 set to 0x8C051648		; addr: CE33040
mov r14,r4		; addr: CE33042
jmp @r2		; addr: CE33044
mov.l @r15+,r14		; addr: CE33046

l_code_CE33048:
lds.l @r15+,pr 		; addr: CE33048
rts 		; addr: CE3304A
mov.l @r15+,r14		; addr: CE3304C
;-------------------------------------------------------------------------------

data_CE3304E:
#data 0x0130		; addr: CE3304E

data_CE33050:
#data 0x0141		; addr: CE33050

data_CE33052:
#data 0x041C		; addr: CE33052

data_CE33054:
#data 0x01F9		; addr: CE33054
#data 0x0000		; addr: CE33056

#align4
ptr_CE33058_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE33058

data_CE3305C:
#data 0x4122DB6D		; addr: CE3305C

#align4
data_CE33060:
#data 0xBEE76DB6		; addr: CE33060

#align4
data_CE33064:
#data 0xC0855555		; addr: CE33064

#align4
data_CE33068:
#data 0x40855555		; addr: CE33068

#align4
ptr_CE3306C_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE3306C

ptr_CE33070_to_fn_extern_8C0511B4:
#data fn_extern_8C0511B4		; addr: CE33070

ptr_CE33074_to_fn_extern_8C02FEC4:
#data fn_extern_8C02FEC4		; addr: CE33074

ptr_CE33078_to_fn_extern_8C035162:
#data fn_extern_8C035162		; addr: CE33078

ptr_CE3307C_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE3307C

data_CE33080:
#data 0x6E432FE6		; addr: CE33080
#data 0xE5162FD6		; addr: CE33084
#data 0x84E64F22		; addr: CE33088
#data 0xD338E607		; addr: CE3308C
#data 0x5DE57001		; addr: CE33090
#data 0x430B80E6		; addr: CE33094
#data 0xC73664E3		; addr: CE33098
#data 0xE060F308		; addr: CE3309C
#data 0xC735FE37		; addr: CE330A0
#data 0xE06CF308		; addr: CE330A4
#data 0xC734FE37		; addr: CE330A8
#data 0x905DF408		; addr: CE330AC
#data 0x233803ED		; addr: CE330B0
#data 0xC7328901		; addr: CE330B4
#data 0xF408		; addr: CE330B8

data_CE330BA:
#data 0xC732		; addr: CE330BA
#data 0xF508D232		; addr: CE330BC
#data 0xF3D6E034		; addr: CE330C0
#data 0xF2E6E138		; addr: CE330C4
#data 0xF340E05C		; addr: CE330C8
#data 0x425A31EC		; addr: CE330CC
#data 0xF353F321		; addr: CE330D0
#data 0xE060FE37		; addr: CE330D4
#data 0xE138F318		; addr: CE330D8
#data 0xF1E631DC		; addr: CE330DC
#data 0xF231F218		; addr: CE330E0
#data 0xF230F30D		; addr: CE330E4
#data 0xF120F253		; addr: CE330E8
#data 0xE02EFE17		; addr: CE330EC
#data 0x4F2681EE		; addr: CE330F0
#data 0x000B6DF6		; addr: CE330F4
#data 0x6EF6		; addr: CE330F8
;-------------------------------------------------------------------------------

data_CE330FA:
#data 0xD224		; addr: CE330FA
#data 0x6E432FE6		; addr: CE330FC
#data 0x4F222FD6		; addr: CE33100
#data 0x9D326322		; addr: CE33104
#data 0xE3056130		; addr: CE33108
#data 0x3133611C		; addr: CE3310C
#data 0x3DEC8F07		; addr: CE33110
#data 0x410BD11E		; addr: CE33114
#data 0x20080009		; addr: CE33118
#data 0xE0008B01		; addr: CE3311C
#data 0x81D5		; addr: CE33120

data_CE33122:
#data 0x85D5		; addr: CE33122
#data 0x81D570FF		; addr: CE33124
#data 0x4015600F		; addr: CE33128
#data 0x84E68907		; addr: CE3312C
#data 0x8804600C		; addr: CE33130
#data 0xE0048903		; addr: CE33134
#data 0xE00080E6		; addr: CE33138
#data 0x80E7		; addr: CE3313C

data_CE3313E:
#data 0x84E6		; addr: CE3313E
#data 0x4F2664E3		; addr: CE33140
#data 0x600CD113		; addr: CE33144
#data 0x40089511		; addr: CE33148
#data 0x031E6DF6		; addr: CE3314C
#data 0x432B35EC		; addr: CE33150
#data 0x6EF6		; addr: CE33154


f_code_CE33156:
mov.l r14,@-r15		; addr: CE33156
mov r4,r14		; addr: CE33158
mov.b @(0x07,r14),r0 		; addr: CE3315A
mov.l @(ptr_CE33198_to_ptr_CE3640C_to_data_CE3319C,pc),r1 ; r1 set to 0xCE3640C		; addr: CE3315C
extu.b r0,r0		; addr: CE3315E
mov.w @(data_CE3316E,pc),r5 ; r5 set to 0x2A4		; addr: CE33160
shll2 r0		; addr: CE33162
mov.l @(r0,r1),r3		; addr: CE33164
add r14,r5 ; r5 ??? bc r14 is ???		; addr: CE33166
jmp @r3		; addr: CE33168
mov.l @r15+,r14		; addr: CE3316A
#data 0x0130		; addr: CE3316C

data_CE3316E:
#data 0x02A4		; addr: CE3316E
#data fn_extern_8C034E8C		; addr: CE33170
#data 0x41A2DB6D		; addr: CE33174
#data 0xBF676DB6		; addr: CE33178
#data 0x42555555		; addr: CE3317C
#data 0xC2555555		; addr: CE33180
#data 0x42380000		; addr: CE33184
#data 0x435EDB6D		; addr: CE33188
#data extern_8C2896B0		; addr: CE3318C
#data extern_8C0310F2		; addr: CE33190

#align4
ptr_CE33194_to_ptr_CE363F8_to_f_code_CE33156:
#data ptr_CE363F8_to_f_code_CE33156		; addr: CE33194

ptr_CE33198_to_ptr_CE3640C_to_data_CE3319C:
#data ptr_CE3640C_to_data_CE3319C		; addr: CE33198

data_CE3319C:
#data 0x2FD62FE6		; addr: CE3319C
#data 0x7FF04F22		; addr: CE331A0
#data 0x6E43906A		; addr: CE331A4
#data 0x00EC2F52		; addr: CE331A8
#data 0x8806600C		; addr: CE331AC
#data 0xE6068F06		; addr: CE331B0
#data 0xE3109064		; addr: CE331B4
#data 0x0E249261		; addr: CE331B8
#data 0x0E347001		; addr: CE331BC

#align4
data_CE331C0:
#data 0xE50DD332		; addr: CE331C0
#data 0x64E3430B		; addr: CE331C4
#data 0x700184E7		; addr: CE331C8
#data 0x905880E7		; addr: CE331CC
#data 0x813563F2		; addr: CE331D0
#data 0x430BD32E		; addr: CE331D4
#data 0x905364E3		; addr: CE331D8
#data 0xED00E342		; addr: CE331DC
#data 0xE038F3E6		; addr: CE331E0
#data 0xFE37E516		; addr: CE331E4
#data 0x904CE636		; addr: CE331E8
#data 0x700B0E34		; addr: CE331EC
#data 0x70F20ED5		; addr: CE331F0
#data 0x70260ED4		; addr: CE331F4
#data 0x0ED6D326		; addr: CE331F8
#data 0x623284E2		; addr: CE331FC
#data 0x4000600C		; addr: CE33200
#data 0x012D727C		; addr: CE33204
#data 0x02157101		; addr: CE33208
#data 0x420BD222		; addr: CE3320C
#data 0x63F264E3		; addr: CE33210
#data 0x8134E00F		; addr: CE33214
#data 0x430BD320		; addr: CE33218
#data 0xD22064E3		; addr: CE3321C
#data 0x420BE514		; addr: CE33220
#data 0x902B64E3		; addr: CE33224
#data 0xF38D65F3		; addr: CE33228
#data 0x0ED47504		; addr: CE3322C
#data 0x0ED47001		; addr: CE33230
#data 0xFF37E004		; addr: CE33234
#data 0xF308C71A		; addr: CE33238
#data 0xF2F6E008		; addr: CE3323C
#data 0xD319E008		; addr: CE33240
#data 0xF230E601		; addr: CE33244
#data 0x430BFF27		; addr: CE33248
#data 0x7F1064E3		; addr: CE3324C
#data 0x6DF64F26		; addr: CE33250
#data 0x6EF6000B		; addr: CE33254
;-------------------------------------------------------------------------------

f_code_CE33258:
mov.w @(data_CE33288,pc),r0 ; r0 set to 0x3F8		; addr: CE33258
mov 0x02,r3 ; r3 set to 0x02		; addr: CE3325A
mov.l r14,@-r15		; addr: CE3325C
mov r4,r14		; addr: CE3325E
mov 0x05,r2 ; r2 set to 0x05		; addr: CE33260
mov.l r13,@-r15		; addr: CE33262
sts.l pr,@-r15		; addr: CE33264
mov.b r3,@(r0,r14) 		; addr: CE33266
mov.w @(data_CE3328A,pc),r0 ; r0 set to 0x328		; addr: CE33268
mov.b r2,@(r0,r14) 		; addr: CE3326A
mov.w @(data_CE3327C,pc),r0 ; r0 set to 0x255		; addr: CE3326C
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE3326E
extu.b r0,r0		; addr: CE33270
cmp/eq 0x06,r0 		; addr: CE33272
bf/s data_CE332AC		; addr: CE33274
mov r5,r13		; addr: CE33276
bra data_CE332AE		; addr: CE33278
mov 0x02,r3		; addr: CE3327A

data_CE3327C:
#data 0x0255		; addr: CE3327C
#data 0x00FF		; addr: CE3327E
#data 0x00F003F0		; addr: CE33280
#data 0x01A1041C		; addr: CE33284

data_CE33288:
#data 0x03F8		; addr: CE33288

data_CE3328A:
#data 0x0328		; addr: CE3328A
#data fn_extern_8C02FEC4		; addr: CE3328C
#data fn_extern_8C05218A		; addr: CE33290
#data extern_8C2896B0		; addr: CE33294
#data fn_extern_8C034E8C		; addr: CE33298
#data fn_extern_8C05115A		; addr: CE3329C
#data fn_extern_8C042008		; addr: CE332A0
#data 0x43092492		; addr: CE332A4
#data extern_8C050834		; addr: CE332A8

data_CE332AC:
#data 0xE300		; addr: CE332AC

data_CE332AE:
#data 0x9074		; addr: CE332AE
#data 0xD33D0E34		; addr: CE332B0
#data 0x64E3430B		; addr: CE332B4
#data 0x4011600E		; addr: CE332B8
#data 0x84E7894C		; addr: CE332BC
#data 0xD33BE516		; addr: CE332C0
#data 0x7001E63F		; addr: CE332C4
#data 0xC73880E7		; addr: CE332C8
#data 0xE00CF408		; addr: CE332CC
#data 0xE014FD47		; addr: CE332D0
#data 0xE00CFD47		; addr: CE332D4
#data 0xE050F3D6		; addr: CE332D8
#data 0xE014FE37		; addr: CE332DC
#data 0xE054F3D6		; addr: CE332E0
#data 0x9059FE37		; addr: CE332E4
#data 0xE038F3E6		; addr: CE332E8
#data 0x430BFE37		; addr: CE332EC
#data 0xD33064E3		; addr: CE332F0
#data 0x84E2E101		; addr: CE332F4
#data 0x600C6230		; addr: CE332F8
#data 0x622C410C		; addr: CE332FC
#data 0x8B042218		; addr: CE33300
#data 0xE500D22C		; addr: CE33304
#data 0x420BE601		; addr: CE33308
#data 0x64E3		; addr: CE3330C

data_CE3330E:
#data 0xE025		; addr: CE3330E
#data 0x06ECD32A		; addr: CE33310
#data 0xE500E701		; addr: CE33314
#data 0x7606666C		; addr: CE33318
#data 0x64E3430B		; addr: CE3331C
#data 0xE702D226		; addr: CE33320
#data 0xE60C6573		; addr: CE33324
#data 0x64E3420B		; addr: CE33328
#data 0xE522D324		; addr: CE3332C
#data 0x64E3430B		; addr: CE33330
#data 0xE535D223		; addr: CE33334
#data 0x64E3420B		; addr: CE33338
#data 0xE102902F		; addr: CE3333C
#data 0x64E3932E		; addr: CE33340
#data 0x223B02EC		; addr: CE33344
#data 0x70E90E24		; addr: CE33348
#data 0x0E14D21E		; addr: CE3334C
#data 0x6DF64F26		; addr: CE33350
#data 0x6EF6422B		; addr: CE33354

#align4
data_CE33358:
#data 0x6DF64F26		; addr: CE33358
#data 0x6EF6000B		; addr: CE3335C
;-------------------------------------------------------------------------------

f_code_CE33360:
mov.l r14,@-r15		; addr: CE33360
mov r4,r14		; addr: CE33362
mov.l r13,@-r15		; addr: CE33364
mov 0x05,r3 ; r3 set to 0x05		; addr: CE33366
mov.l r12,@-r15		; addr: CE33368
mov.w @(data_CE333A2,pc),r0 ; r0 set to 0x3F8		; addr: CE3336A
mov.l r11,@-r15		; addr: CE3336C
mov 0x02,r11 ; r11 set to 0x02		; addr: CE3336E
sts.l pr,@-r15		; addr: CE33370
mov.b r11,@(r0,r14) 		; addr: CE33372
mov.w @(data_CE333A4,pc),r0 ; r0 set to 0x328		; addr: CE33374
mov.l @(ptr_CE333BC_to_fn_extern_8C03544C,pc),r12 ; r12 set to 0x8C03544C		; addr: CE33376
mov.b r3,@(r0,r14) 		; addr: CE33378
mov.l @(ptr_CE333CC_to_extern_8C26823C,pc),r3 ; r3 set to 0x8C26823C		; addr: CE3337A
mov.l @r3,r0 ; r0 ??		; addr: CE3337C
mov.l @(0x1C,r0),r0		; addr: CE3337E
tst 0x01,r0 		; addr: CE33380
bf/s data_CE333D0		; addr: CE33382
mov r5,r13		; addr: CE33384
mov 0x25,r0 ; r0 set to 0x25		; addr: CE33386
mov.b @(r0,r14),r6		; addr: CE33388
mov 0x00,r5 ; r5 set to 0x00		; addr: CE3338A
mov 0x01,r7 ; r7 set to 0x01		; addr: CE3338C
extu.b r6,r6		; addr: CE3338E
add 0x06,r6		; addr: CE33390
jsr @r12		; addr: CE33392
mov r14,r4		; addr: CE33394
bra data_CE333D8		; addr: CE33396
nop 		; addr: CE33398
#data 0x03F1		; addr: CE3339A
#data 0x0202041C		; addr: CE3339C
#data 0x0080		; addr: CE333A0

data_CE333A2:
#data 0x03F8		; addr: CE333A2

data_CE333A4:
#data 0x0328		; addr: CE333A4
#data 0x0000		; addr: CE333A6
#data fn_extern_8C034DEE		; addr: CE333A8
#data 0x3F000000		; addr: CE333AC
#data fn_extern_8C034E8C		; addr: CE333B0
#data extern_8C289628		; addr: CE333B4
#data fn_extern_8C0D13BC		; addr: CE333B8

#align4
ptr_CE333BC_to_fn_extern_8C03544C:
#data fn_extern_8C03544C		; addr: CE333BC
#data fn_extern_8C042008		; addr: CE333C0
#data fn_extern_8C04223A		; addr: CE333C4
#data fn_extern_8C05A2CC		; addr: CE333C8

#align4
ptr_CE333CC_to_extern_8C26823C:
#data extern_8C26823C		; addr: CE333CC

data_CE333D0:
#data 0xE508D257		; addr: CE333D0
#data 0x64E3420B		; addr: CE333D4

#align4
data_CE333D8:
#data 0x6032D356		; addr: CE333D8
#data 0xC8075007		; addr: CE333DC
#data 0xD4558B05		; addr: CE333E0
#data 0x000960B3		; addr: CE333E4
#data 0xE0018045		; addr: CE333E8
#data 0x8046		; addr: CE333EC

data_CE333EE:
#data 0xC753		; addr: CE333EE
#data 0xE00CF408		; addr: CE333F0
#data 0xF340F3D6		; addr: CE333F4
#data 0xE014FD37		; addr: CE333F8
#data 0xF240F2D6		; addr: CE333FC
#data 0xFD27F49D		; addr: CE33400
#data 0xF3D6E00C		; addr: CE33404
#data 0xFE37E050		; addr: CE33408
#data 0xF3D6E014		; addr: CE3340C
#data 0xFE37E054		; addr: CE33410
#data 0xF3D6E014		; addr: CE33414
#data 0x8B27F345		; addr: CE33418
#data 0xF34CE00C		; addr: CE3341C
#data 0xE050FD47		; addr: CE33420
#data 0xE014FE37		; addr: CE33424
#data 0xE054F3D6		; addr: CE33428
#data 0xE516D344		; addr: CE3342C
#data 0xE637FE37		; addr: CE33430
#data 0x700184E7		; addr: CE33434
#data 0xE01E80E7		; addr: CE33438
#data 0x430B81D4		; addr: CE3343C
#data 0xD23B64E3		; addr: CE33440
#data 0x420BE500		; addr: CE33444
#data 0xE02564E3		; addr: CE33448
#data 0xE50006EC		; addr: CE3344C
#data 0x666CE701		; addr: CE33450
#data 0x4C0B7606		; addr: CE33454
#data 0xE70264E3		; addr: CE33458
#data 0xE60C6573		; addr: CE3345C
#data 0x64E34C0B		; addr: CE33460
#data 0xE525D337		; addr: CE33464
#data 0x64E3430B		; addr: CE33468

#align4
data_CE3346C:
#data 0x64E3905A		; addr: CE3346C
#data 0x02EC9359		; addr: CE33470
#data 0x0E24223B		; addr: CE33474
#data 0x0EB470E9		; addr: CE33478
#data 0xD2324F26		; addr: CE3347C
#data 0x6CF66BF6		; addr: CE33480
#data 0x422B6DF6		; addr: CE33484
#data 0x6EF6		; addr: CE33488

data_CE3348A:
#data 0x904D		; addr: CE3348A
#data 0x2FE6E302		; addr: CE3348C
#data 0xE2056E43		; addr: CE33490
#data 0x6D532FD6		; addr: CE33494
#data 0x0E344F22		; addr: CE33498
#data 0x0E249045		; addr: CE3349C
#data 0x70FF85D4		; addr: CE334A0
#data 0x600F81D4		; addr: CE334A4
#data 0x890E4015		; addr: CE334A8
#data 0x65D384E6		; addr: CE334AC
#data 0x750AD326		; addr: CE334B0
#data 0x80E67001		; addr: CE334B4
#data 0x80E7E000		; addr: CE334B8
#data 0x9035E606		; addr: CE334BC
#data 0x430B81D5		; addr: CE334C0
#data 0xB51664E3		; addr: CE334C4
#data 0x64E3		; addr: CE334C8

data_CE334CA:
#data 0x902B		; addr: CE334CA
#data 0x932AE102		; addr: CE334CC
#data 0x02EC64E3		; addr: CE334D0
#data 0x0E24223B		; addr: CE334D4
#data 0xD21B70E9		; addr: CE334D8
#data 0x4F260E14		; addr: CE334DC
#data 0x422B6DF6		; addr: CE334E0
#data 0x6EF6		; addr: CE334E4


f_code_CE334E6:
mov.w @(data_CE33528,pc),r0 ; r0 set to 0x3F8		; addr: CE334E6
mov 0x02,r3 ; r3 set to 0x02		; addr: CE334E8
mov.l r14,@-r15		; addr: CE334EA
mov r4,r14		; addr: CE334EC
mov 0x05,r2 ; r2 set to 0x05		; addr: CE334EE
mov.l @(ptr_CE33550_to_ptr_CE3641C_to_f_code_CE33554,pc),r1 ; r1 set to 0xCE3641C		; addr: CE334F0
mov.w @(data_CE3352E,pc),r5 ; r5 set to 0x2A4		; addr: CE334F2
sts.l pr,@-r15		; addr: CE334F4
mov.b r3,@(r0,r14) 		; addr: CE334F6
add r14,r5 ; r5 ??? bc r14 is ???		; addr: CE334F8
mov.w @(data_CE3352A,pc),r0 ; r0 set to 0x328		; addr: CE334FA
mov.b r2,@(r0,r14) 		; addr: CE334FC
mov.b @(0x07,r14),r0 		; addr: CE334FE
extu.b r0,r0 ; r0 set to 0x28		; addr: CE33500
shll2 r0 ; r0 set to 0xA0		; addr: CE33502
mov.l @(r0,r1),r3 ; r3 ??		; addr: CE33504
jsr @r3		; addr: CE33506
mov r14,r4		; addr: CE33508
mov.w @(data_CE33524,pc),r0 ; r0 set to 0x202		; addr: CE3350A
mov 0x02,r1 ; r1 set to 0x02		; addr: CE3350C
mov.w @(data_CE33526,pc),r3 ; r3 set to 0x80		; addr: CE3350E
mov r14,r4		; addr: CE33510
mov.b @(r0,r14),r2 ; r2 ??? bc r14 is ???		; addr: CE33512
or r3,r2		; addr: CE33514
mov.b r2,@(r0,r14) 		; addr: CE33516
add 0xE9,r0 ; r0 set to 0x1EB		; addr: CE33518
mov.l @(ptr_CE33548_to_fn_extern_8C05A2CC,pc),r2 ; r2 set to 0x8C05A2CC		; addr: CE3351A
mov.b r1,@(r0,r14) 		; addr: CE3351C
lds.l @r15+,pr 		; addr: CE3351E
jmp @r2		; addr: CE33520
mov.l @r15+,r14		; addr: CE33522

data_CE33524:
#data 0x0202		; addr: CE33524

data_CE33526:
#data 0x0080		; addr: CE33526

data_CE33528:
#data 0x03F8		; addr: CE33528

data_CE3352A:
#data 0x0328		; addr: CE3352A
#data 0x00F0		; addr: CE3352C

data_CE3352E:
#data 0x02A4		; addr: CE3352E
#data fn_extern_8C035162		; addr: CE33530
#data extern_8C26823C		; addr: CE33534
#data extern_8C26A518		; addr: CE33538
#data 0x3CA3D70A		; addr: CE3353C
#data fn_extern_8C034E8C		; addr: CE33540
#data fn_extern_8C042008		; addr: CE33544

#align4
ptr_CE33548_to_fn_extern_8C05A2CC:
#data fn_extern_8C05A2CC		; addr: CE33548
#data extern_8C0F047C		; addr: CE3354C

#align4
ptr_CE33550_to_ptr_CE3641C_to_f_code_CE33554:
#data ptr_CE3641C_to_f_code_CE33554		; addr: CE33550


f_code_CE33554:
mov.l r14,@-r15		; addr: CE33554
sts.l pr,@-r15		; addr: CE33556
bsr l_code_CE33D0A		; addr: CE33558
mov r4,r14		; addr: CE3355A
extu.b r0,r0		; addr: CE3355C
tst r0,r0		; addr: CE3355E
bf l_code_CE33582		; addr: CE33560
mov 0x00,r5 ; r5 set to 0x00		; addr: CE33562
bsr l_code_CE33E30		; addr: CE33564
mov r14,r4		; addr: CE33566
extu.b r0,r0		; addr: CE33568
tst r0,r0		; addr: CE3356A
bf l_code_CE33582		; addr: CE3356C
bsr data_CE33F24		; addr: CE3356E
mov r14,r4		; addr: CE33570
extu.b r0,r0		; addr: CE33572
tst r0,r0		; addr: CE33574
bf l_code_CE33582		; addr: CE33576
lds.l @r15+,pr 		; addr: CE33578
mov.l @(ptr_CE33648_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE3357A
mov r14,r4		; addr: CE3357C
jmp @r3		; addr: CE3357E
mov.l @r15+,r14		; addr: CE33580

l_code_CE33582:
lds.l @r15+,pr 		; addr: CE33582
rts 		; addr: CE33584
mov.l @r15+,r14		; addr: CE33586
;-------------------------------------------------------------------------------

#align4
data_CE33588:
#data 0x4F222FE6		; addr: CE33588
#data 0x6E43B3BD		; addr: CE3358C
#data 0x2008600C		; addr: CE33590
#data 0xB4C58B32		; addr: CE33594
#data 0x600C64E3		; addr: CE33598
#data 0x8B2D2008		; addr: CE3359C
#data 0xB496E500		; addr: CE335A0
#data 0x600C64E3		; addr: CE335A4
#data 0x8B012008		; addr: CE335A8
#data 0x64E3B4A3		; addr: CE335AC

#align4
data_CE335B0:
#data 0x420BD225		; addr: CE335B0
#data 0x904664E3		; addr: CE335B4
#data 0x233803EC		; addr: CE335B8
#data 0xE15C8B0E		; addr: CE335BC
#data 0xE03431EC		; addr: CE335C0
#data 0xF2E6F318		; addr: CE335C4
#data 0x31ECE168		; addr: CE335C8
#data 0xFE27F230		; addr: CE335CC
#data 0xF2E6E05C		; addr: CE335D0
#data 0xF230F318		; addr: CE335D4
#data 0xFE27A010		; addr: CE335D8

#align4
data_CE335DC:
#data 0x880100EC		; addr: CE335DC
#data 0x90308B0C		; addr: CE335E0
#data 0xD519E202		; addr: CE335E4
#data 0x0E2464E3		; addr: CE335E8
#data 0xD318E001		; addr: CE335EC
#data 0x80568055		; addr: CE335F0
#data 0x4F26E535		; addr: CE335F4
#data 0x6EF6432B		; addr: CE335F8

#align4
data_CE335FC:
#data 0x000B4F26		; addr: CE335FC
#data 0x6EF6		; addr: CE33600
;-------------------------------------------------------------------------------

f_code_CE33602:
mov.l r14,@-r15		; addr: CE33602
sts.l pr,@-r15		; addr: CE33604
mov.l @(ptr_CE33648_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE33606
jsr @r3		; addr: CE33608
mov r4,r14		; addr: CE3360A
exts.b r0,r0		; addr: CE3360C
cmp/pz r0		; addr: CE3360E
bt l_code_CE33620		; addr: CE33610
bsr l_code_CE33EF6		; addr: CE33612
mov r14,r4		; addr: CE33614
lds.l @r15+,pr 		; addr: CE33616
mov.l @(ptr_CE33654_to_fn_extern_8C05218A,pc),r2 ; r2 set to 0x8C05218A		; addr: CE33618
mov r14,r4		; addr: CE3361A
jmp @r2		; addr: CE3361C
mov.l @r15+,r14		; addr: CE3361E

l_code_CE33620:
lds.l @r15+,pr 		; addr: CE33620
rts 		; addr: CE33622
mov.l @r15+,r14		; addr: CE33624
;-------------------------------------------------------------------------------

f_code_CE33626:
mov.l r14,@-r15		; addr: CE33626
mov.l r13,@-r15		; addr: CE33628
mov.l r8,@-r15		; addr: CE3362A
sts.l pr,@-r15		; addr: CE3362C
mov.l @(ptr_CE33648_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE3362E
jsr @r3		; addr: CE33630
mov r4,r14		; addr: CE33632
exts.b r0,r0		; addr: CE33634
cmp/pz r0		; addr: CE33636
bt l_code_CE33658		; addr: CE33638
lds.l @r15+,pr 		; addr: CE3363A
mov r14,r4		; addr: CE3363C
mov.l @r15+,r8		; addr: CE3363E
mov.l @r15+,r13		; addr: CE33640
bra l_code_CE33EF6		; addr: CE33642
mov.l @r15+,r14		; addr: CE33644
#data 0x0141		; addr: CE33646

#align4
ptr_CE33648_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE33648
#data extern_8C26A518		; addr: CE3364C
#data fn_extern_8C04223A		; addr: CE33650

#align4
ptr_CE33654_to_fn_extern_8C05218A:
#data fn_extern_8C05218A		; addr: CE33654


l_code_CE33658:
mov.w @(data_CE33766,pc),r0 ; r0 set to 0x141		; addr: CE33658
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE3365A
cmp/eq 0x01,r0 		; addr: CE3365C
bf/s l_code_CE33684		; addr: CE3365E
mov 0x00,r4 ; r4 set to 0x00		; addr: CE33660
mov.w @(data_CE33766,pc),r0 ; r0 set to 0x141		; addr: CE33662
mov 0x16,r5 ; r5 set to 0x16		; addr: CE33664
mov.l @(ptr_CE33770_to_fn_extern_8C0D0584,pc),r13 ; r13 set to 0x8C0D0584		; addr: CE33666
mov 0x0D,r6 ; r6 set to 0x0D		; addr: CE33668
mov.b r4,@(r0,r14) 		; addr: CE3366A
jsr @r13		; addr: CE3366C
mov r14,r4 ; r4 ??? bc r14 is ???		; addr: CE3366E
mov 0x17,r5 ; r5 set to 0x17		; addr: CE33670
mov 0x0D,r6 ; r6 set to 0x0D		; addr: CE33672
jsr @r13		; addr: CE33674
mov r14,r4		; addr: CE33676
mov 0x18,r5 ; r5 set to 0x18		; addr: CE33678
mov 0x0D,r6 ; r6 set to 0x0D		; addr: CE3367A
jsr @r13		; addr: CE3367C
mov r14,r4		; addr: CE3367E
bra l_code_CE336B0		; addr: CE33680
nop 		; addr: CE33682

l_code_CE33684:
mov.w @(data_CE33766,pc),r0 ; r0 set to 0x141		; addr: CE33684
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE33686
cmp/eq 0x02,r0 		; addr: CE33688
bf l_code_CE336B0		; addr: CE3368A
mov.w @(data_CE33766,pc),r0 ; r0 set to 0x141		; addr: CE3368C
mov 0x34,r8 ; r8 set to 0x34		; addr: CE3368E
mov.b r4,@(r0,r14) 		; addr: CE33690
add 0xEF,r0 ; r0 set to 0x130		; addr: CE33692
mov.w @(r0,r14),r3		; addr: CE33694
tst r3,r3		; addr: CE33696
bt/s data_CE336A4		; addr: CE33698
add r14,r8 ; r8 ??? bc r14 is ???		; addr: CE3369A
mov.l @(data_CE33774,pc),r1 ; r1 set to 0x41D55555		; addr: CE3369C
lds r1,fpul 		; addr: CE3369E
bra data_CE336AA		; addr: CE336A0
fsts fpul,fr3		; addr: CE336A2

#align4
data_CE336A4:
#data 0x425AD234		; addr: CE336A4
#data 0xF30D		; addr: CE336A8

data_CE336AA:
#data 0xF288		; addr: CE336AA
#data 0xF82AF230		; addr: CE336AC


l_code_CE336B0:
lds.l @r15+,pr 		; addr: CE336B0
mov.l @r15+,r8		; addr: CE336B2
mov.l @r15+,r13		; addr: CE336B4
rts 		; addr: CE336B6
mov.l @r15+,r14		; addr: CE336B8
;-------------------------------------------------------------------------------

f_code_CE336BA:
mov.l r14,@-r15		; addr: CE336BA
mov.l r8,@-r15		; addr: CE336BC
sts.l pr,@-r15		; addr: CE336BE
mov.l @(ptr_CE3377C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE336C0
jsr @r3		; addr: CE336C2
mov r4,r14		; addr: CE336C4
exts.b r0,r0		; addr: CE336C6
cmp/pz r0		; addr: CE336C8
bt l_code_CE336D6		; addr: CE336CA
lds.l @r15+,pr 		; addr: CE336CC
mov r14,r4		; addr: CE336CE
mov.l @r15+,r8		; addr: CE336D0
bra l_code_CE33EF6		; addr: CE336D2
mov.l @r15+,r14		; addr: CE336D4

l_code_CE336D6:
mov.w @(data_CE33766,pc),r0 ; r0 set to 0x141		; addr: CE336D6
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE336D8
cmp/eq 0x01,r0 		; addr: CE336DA
bf/s l_code_CE336FE		; addr: CE336DC
mov 0x00,r4 ; r4 set to 0x00		; addr: CE336DE
mov.w @(data_CE33766,pc),r0 ; r0 set to 0x141		; addr: CE336E0
mov 0x20,r5 ; r5 set to 0x20		; addr: CE336E2
mov.l @(ptr_CE33770_to_fn_extern_8C0D0584,pc),r3 ; r3 set to 0x8C0D0584		; addr: CE336E4
mov 0x0D,r6 ; r6 set to 0x0D		; addr: CE336E6
mov.b r4,@(r0,r14) 		; addr: CE336E8
jsr @r3		; addr: CE336EA
mov r14,r4 ; r4 ??? bc r14 is ???		; addr: CE336EC
lds.l @r15+,pr 		; addr: CE336EE
mov.l @(ptr_CE33770_to_fn_extern_8C0D0584,pc),r2 ; r2 set to 0x8C0D0584		; addr: CE336F0
mov 0x0D,r6 ; r6 set to 0x0D		; addr: CE336F2
mov 0x21,r5 ; r5 set to 0x21		; addr: CE336F4
mov r14,r4		; addr: CE336F6
mov.l @r15+,r8		; addr: CE336F8
jmp @r2		; addr: CE336FA
mov.l @r15+,r14		; addr: CE336FC

l_code_CE336FE:
mov.w @(data_CE33766,pc),r0 ; r0 set to 0x141		; addr: CE336FE
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE33700
cmp/eq 0x02,r0 		; addr: CE33702
bf l_code_CE3372A		; addr: CE33704
mov.w @(data_CE33766,pc),r0 ; r0 set to 0x141		; addr: CE33706
mov 0x34,r8 ; r8 set to 0x34		; addr: CE33708
mov.b r4,@(r0,r14) 		; addr: CE3370A
add 0xEF,r0 ; r0 set to 0x130		; addr: CE3370C
mov.w @(r0,r14),r3		; addr: CE3370E
tst r3,r3		; addr: CE33710
bt/s data_CE3371E		; addr: CE33712
add r14,r8 ; r8 ??? bc r14 is ???		; addr: CE33714
mov.l @(data_CE33780,pc),r1 ; r1 set to 0xC2855555		; addr: CE33716
lds r1,fpul 		; addr: CE33718
bra data_CE33724		; addr: CE3371A
fsts fpul,fr3		; addr: CE3371C

data_CE3371E:
#data 0xD219		; addr: CE3371E
#data 0xF30D425A		; addr: CE33720

#align4
data_CE33724:
#data 0xF230F288		; addr: CE33724
#data 0xF82A		; addr: CE33728


l_code_CE3372A:
lds.l @r15+,pr 		; addr: CE3372A
mov.l @r15+,r8		; addr: CE3372C
rts 		; addr: CE3372E
mov.l @r15+,r14		; addr: CE33730
;-------------------------------------------------------------------------------

f_code_CE33732:
mov.w @(data_CE33768,pc),r0 ; r0 set to 0x3F8		; addr: CE33732
mov 0x02,r3 ; r3 set to 0x02		; addr: CE33734
mov.l r14,@-r15		; addr: CE33736
mov r4,r14		; addr: CE33738
mov 0x05,r2 ; r2 set to 0x05		; addr: CE3373A
mov.l r13,@-r15		; addr: CE3373C
sts.l pr,@-r15		; addr: CE3373E
mov.b r3,@(r0,r14) 		; addr: CE33740
mov.w @(data_CE3376A,pc),r0 ; r0 set to 0x328		; addr: CE33742
mov.l @(ptr_CE33788_to_fn_extern_8C03544C,pc),r13 ; r13 set to 0x8C03544C		; addr: CE33744
mov.b r2,@(r0,r14) 		; addr: CE33746
mov.w @(data_CE3376C,pc),r0 ; r0 set to 0x4DC		; addr: CE33748
mov.w @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE3374A
extu.w r0,r0		; addr: CE3374C
tst 0x60,r0 		; addr: CE3374E
bt l_code_CE3378C		; addr: CE33750
mov.w @(0x1E,r14),r0 		; addr: CE33752
mov.w @(data_CE3376E,pc),r3 ; r3 set to 0x96		; addr: CE33754
add 0x01,r0		; addr: CE33756
mov.w r0,@(0x1E,r14) 		; addr: CE33758
add 0xFF,r0		; addr: CE3375A
exts.w r0,r0		; addr: CE3375C
cmp/gt r3,r0		; addr: CE3375E
bt l_code_CE3379C		; addr: CE33760
bra l_code_CE337BE		; addr: CE33762
nop 		; addr: CE33764

data_CE33766:
#data 0x0141		; addr: CE33766

data_CE33768:
#data 0x03F8		; addr: CE33768

data_CE3376A:
#data 0x0328		; addr: CE3376A

data_CE3376C:
#data 0x04DC		; addr: CE3376C

data_CE3376E:
#data 0x0096		; addr: CE3376E

#align4
ptr_CE33770_to_fn_extern_8C0D0584:
#data fn_extern_8C0D0584		; addr: CE33770

data_CE33774:
#data 0x41D55555		; addr: CE33774
#data 0xC1D55555		; addr: CE33778

#align4
ptr_CE3377C_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE3377C

data_CE33780:
#data 0xC2855555		; addr: CE33780
#data 0x42855555		; addr: CE33784

#align4
ptr_CE33788_to_fn_extern_8C03544C:
#data fn_extern_8C03544C		; addr: CE33788


l_code_CE3378C:
mov.w @(0x1E,r14),r0 		; addr: CE3378C
mov 0x3C,r3 ; r3 set to 0x3C		; addr: CE3378E
add 0x01,r0		; addr: CE33790
mov.w r0,@(0x1E,r14) 		; addr: CE33792
add 0xFF,r0		; addr: CE33794
exts.w r0,r0		; addr: CE33796
cmp/gt r3,r0		; addr: CE33798
bf l_code_CE337BE		; addr: CE3379A

l_code_CE3379C:
mov 0x0A,r0 ; r0 set to 0x0A, r0 set to 0x0A		; addr: CE3379C
mov.w r0,@(0x1E,r14) 		; addr: CE3379E
mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00		; addr: CE337A0
mov.b @(0x06,r14),r0 		; addr: CE337A2
mov 0x01,r7 ; r7 set to 0x01, r7 set to 0x01		; addr: CE337A4
add 0x01,r0 ; r0 set to 0x0B, r0 set to 0x0B		; addr: CE337A6
mov.b r0,@(0x06,r14) 		; addr: CE337A8
mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00		; addr: CE337AA
mov.b r0,@(0x07,r14) 		; addr: CE337AC
mov 0x25,r0 ; r0 set to 0x25, r0 set to 0x25		; addr: CE337AE
mov.b @(r0,r14),r6		; addr: CE337B0
extu.b r6,r6		; addr: CE337B2
add 0x06,r6		; addr: CE337B4
jsr @r13		; addr: CE337B6
mov r14,r4		; addr: CE337B8
bra l_code_CE33832		; addr: CE337BA
nop 		; addr: CE337BC

l_code_CE337BE:
mov.b @(0x07,r14),r0 		; addr: CE337BE
mov.l @(ptr_CE338C0_to_ptr_CE36430_to_f_code_CE3383A,pc),r1 ; r1 set to 0xCE36430		; addr: CE337C0
extu.b r0,r0		; addr: CE337C2
mov.w @(data_CE338B0,pc),r5 ; r5 set to 0x2A4		; addr: CE337C4
shll2 r0		; addr: CE337C6
mov.l @(r0,r1),r3		; addr: CE337C8
add r14,r5 ; r5 ??? bc r14 is ???		; addr: CE337CA
jsr @r3		; addr: CE337CC
mov r14,r4		; addr: CE337CE
mov.w @(data_CE338B2,pc),r0 ; r0 set to 0x202		; addr: CE337D0
mov 0x02,r1 ; r1 set to 0x02		; addr: CE337D2
mov.w @(data_CE338B4,pc),r3 ; r3 set to 0x80		; addr: CE337D4
mov.b @(r0,r14),r2		; addr: CE337D6
or r3,r2		; addr: CE337D8
mov.b r2,@(r0,r14) 		; addr: CE337DA
add 0xE9,r0 ; r0 set to 0x1EB		; addr: CE337DC
mov.l @(ptr_CE338C4_to_fn_extern_8C05A2CC,pc),r2 ; r2 set to 0x8C05A2CC		; addr: CE337DE
mov.b r1,@(r0,r14) 		; addr: CE337E0
jsr @r2		; addr: CE337E2
mov r14,r4		; addr: CE337E4
mov.l @(ptr_CE338C8_to_extern_8C26823C,pc),r3 ; r3 set to 0x8C26823C		; addr: CE337E6
mov.l @r3,r0 ; r0 ??		; addr: CE337E8
mov.l @(0x1C,r0),r0		; addr: CE337EA
tst 0x01,r0 		; addr: CE337EC
bf/s l_code_CE33800		; addr: CE337EE
mov 0x00,r5 ; r5 set to 0x00		; addr: CE337F0
mov 0x25,r0 ; r0 set to 0x25		; addr: CE337F2
mov.b @(r0,r14),r6		; addr: CE337F4
mov 0x01,r7 ; r7 set to 0x01		; addr: CE337F6
extu.b r6,r6		; addr: CE337F8
shll r6		; addr: CE337FA
bra l_code_CE3380C		; addr: CE337FC
add 0x14,r6		; addr: CE337FE

l_code_CE33800:
mov 0x25,r0 ; r0 set to 0x25		; addr: CE33800
mov.b @(r0,r14),r6		; addr: CE33802
mov 0x01,r7 ; r7 set to 0x01		; addr: CE33804
extu.b r6,r6		; addr: CE33806
shll r6		; addr: CE33808
add 0x15,r6		; addr: CE3380A

l_code_CE3380C:
jsr @r13		; addr: CE3380C
mov r14,r4		; addr: CE3380E
mov.l @(ptr_CE338C8_to_extern_8C26823C,pc),r3 ; r3 set to 0x8C26823C, r3 set to 0x8C26823C		; addr: CE33810
mov.l @r3,r0 ; r0 ??		; addr: CE33812
mov.l @(0x1C,r0),r0		; addr: CE33814
tst 0x03,r0 		; addr: CE33816
bf l_code_CE33832		; addr: CE33818
lds.l @r15+,pr 		; addr: CE3381A
mova @(data_CE338CC,pc),r0  ; r0 set to 0xCE338CC, r0 set to 0xCE338CC		; addr: CE3381C
mov.l @(ptr_CE338D4_to_fn_extern_8C0FD75C,pc),r2 ; r2 set to 0x8C0FD75C, r2 set to 0x8C0FD75C		; addr: CE3381E
fmov.s @r0,fr5		; addr: CE33820
mova @(data_CE338D0,pc),r0  ; r0 set to 0xCE338D0, r0 set to 0xCE338D0		; addr: CE33822
mov.l @r15+,r13		; addr: CE33824
mov 0x00,r6 ; r6 set to 0x00, r6 set to 0x00		; addr: CE33826
fmov.s @r0,fr4		; addr: CE33828
mov r14,r4		; addr: CE3382A
mov r6,r5 ; r5 set to 0x00, r5 set to 0x00		; addr: CE3382C
jmp @r2		; addr: CE3382E
mov.l @r15+,r14		; addr: CE33830

l_code_CE33832:
lds.l @r15+,pr 		; addr: CE33832
mov.l @r15+,r13		; addr: CE33834
rts 		; addr: CE33836
mov.l @r15+,r14		; addr: CE33838
;-------------------------------------------------------------------------------

f_code_CE3383A:
mov.l r14,@-r15		; addr: CE3383A
mov.l r13,@-r15		; addr: CE3383C
sts.l pr,@-r15		; addr: CE3383E
mov.l @(ptr_CE338D8_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE33840
jsr @r3		; addr: CE33842
mov r4,r14		; addr: CE33844
exts.b r0,r0		; addr: CE33846
cmp/pz r0		; addr: CE33848
bt l_code_CE33902		; addr: CE3384A
mov.b @(0x07,r14),r0 		; addr: CE3384C
mov 0x02,r4 ; r4 set to 0x02		; addr: CE3384E
mov.l @(ptr_CE338DC_to_extern_8C26A518,pc),r5 ; r5 set to 0x8C26A518		; addr: CE33850
add 0x01,r0		; addr: CE33852
mov.b r0,@(0x07,r14) 		; addr: CE33854
mov r4,r0 ; r0 set to 0x02		; addr: CE33856
nop 		; addr: CE33858
mov.b r0,@(0x05,r5) 		; addr: CE3385A
mov 0x01,r0 ; r0 set to 0x01		; addr: CE3385C
mov.b r0,@(0x06,r5) 		; addr: CE3385E
mov 0x45,r3 ; r3 set to 0x45		; addr: CE33860
mov.w @(data_CE338B6,pc),r0 ; r0 set to 0x1A1		; addr: CE33862
mov 0x00,r5 ; r5 set to 0x00		; addr: CE33864
mov.l @(ptr_CE338E4_to_fn_extern_8C034E8C,pc),r13 ; r13 set to 0x8C034E8C		; addr: CE33866
mov.b r3,@(r0,r14) 		; addr: CE33868
add 0x0B,r0 ; r0 set to 0x1AC		; addr: CE3386A
mov.w r5,@(r0,r14) 		; addr: CE3386C
add 0xF2,r0 ; r0 set to 0x19E		; addr: CE3386E
mov.b r5,@(r0,r14) 		; addr: CE33870
add 0x26,r0 ; r0 set to 0x1C4		; addr: CE33872
mov.l @(ptr_CE338E0_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0		; addr: CE33874
mov.l r5,@(r0,r14) 		; addr: CE33876
mov.b @(0x02,r14),r0 		; addr: CE33878
mov.l @r3,r2		; addr: CE3387A
extu.b r0,r0 ; r0 set to 0xC4		; addr: CE3387C
shll r0 ; r0 set to 0x188		; addr: CE3387E
add 0x7C,r2		; addr: CE33880
mov.w @(r0,r2),r1		; addr: CE33882
add 0x01,r1		; addr: CE33884
mov.w r1,@(r0,r2) 		; addr: CE33886
mov.w @(data_CE338B8,pc),r0 ; r0 set to 0x340		; addr: CE33888
mov.w @(data_CE338BA,pc),r1 ; r1 set to 0x3000		; addr: CE3388A
mov.w @(r0,r14),r2		; addr: CE3388C
extu.w r2,r2		; addr: CE3388E
tst r1,r2		; addr: CE33890
bf l_code_CE33898		; addr: CE33892
bra l_code_CE338A6		; addr: CE33894
mov 0x29,r6		; addr: CE33896

l_code_CE33898:
mov.w @(data_CE338BC,pc),r3 ; r3 set to 0x2000		; addr: CE33898
tst r3,r2		; addr: CE3389A
bt l_code_CE338E8		; addr: CE3389C
mov r4,r0		; addr: CE3389E
nop 		; addr: CE338A0
mov 0x28,r6 ; r6 set to 0x28		; addr: CE338A2
mov.b r0,@(0x07,r14) 		; addr: CE338A4

l_code_CE338A6:
mov 0x16,r5 ; r5 set to 0x16, r5 set to 0x16		; addr: CE338A6
jsr @r13		; addr: CE338A8
mov r14,r4		; addr: CE338AA
bra l_code_CE338F4		; addr: CE338AC
nop 		; addr: CE338AE

data_CE338B0:
#data 0x02A4		; addr: CE338B0

data_CE338B2:
#data 0x0202		; addr: CE338B2

data_CE338B4:
#data 0x0080		; addr: CE338B4

data_CE338B6:
#data 0x01A1		; addr: CE338B6

data_CE338B8:
#data 0x0340		; addr: CE338B8

data_CE338BA:
#data 0x3000		; addr: CE338BA

data_CE338BC:
#data 0x2000		; addr: CE338BC
#data 0x0000		; addr: CE338BE

#align4
ptr_CE338C0_to_ptr_CE36430_to_f_code_CE3383A:
#data ptr_CE36430_to_f_code_CE3383A		; addr: CE338C0

ptr_CE338C4_to_fn_extern_8C05A2CC:
#data fn_extern_8C05A2CC		; addr: CE338C4

ptr_CE338C8_to_extern_8C26823C:
#data extern_8C26823C		; addr: CE338C8

data_CE338CC:
#data 0x3ECCCCCD		; addr: CE338CC

#align4
data_CE338D0:
#data 0x40733333		; addr: CE338D0

#align4
ptr_CE338D4_to_fn_extern_8C0FD75C:
#data fn_extern_8C0FD75C		; addr: CE338D4

ptr_CE338D8_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE338D8

ptr_CE338DC_to_extern_8C26A518:
#data extern_8C26A518		; addr: CE338DC

ptr_CE338E0_to_extern_8C2896B0:
#data extern_8C2896B0		; addr: CE338E0

ptr_CE338E4_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE338E4


l_code_CE338E8:
mov 0x03,r0 ; r0 set to 0x03		; addr: CE338E8
mov 0x16,r5 ; r5 set to 0x16		; addr: CE338EA
mov.b r0,@(0x07,r14) 		; addr: CE338EC
mov 0x2A,r6 ; r6 set to 0x2A		; addr: CE338EE
jsr @r13		; addr: CE338F0
mov r14,r4		; addr: CE338F2

l_code_CE338F4:
lds.l @r15+,pr 		; addr: CE338F4
mov.l @(ptr_CE33A04_to_fn_extern_8C0805D8,pc),r3 ; r3 set to 0x8C0805D8, r3 set to 0x8C0805D8		; addr: CE338F6
mov r14,r4		; addr: CE338F8
mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00		; addr: CE338FA
mov.l @r15+,r13		; addr: CE338FC
jmp @r3		; addr: CE338FE
mov.l @r15+,r14		; addr: CE33900

l_code_CE33902:
lds.l @r15+,pr 		; addr: CE33902
mov.l @r15+,r13		; addr: CE33904
rts 		; addr: CE33906
mov.l @r15+,r14		; addr: CE33908
;-------------------------------------------------------------------------------

f_code_CE3390A:
mov.l r14,@-r15		; addr: CE3390A
sts.l pr,@-r15		; addr: CE3390C
mov.l @(ptr_CE33A08_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE3390E
jsr @r3		; addr: CE33910
mov r4,r14		; addr: CE33912
exts.b r0,r0		; addr: CE33914
cmp/pz r0		; addr: CE33916
bt l_code_CE3394A		; addr: CE33918
mov.w @(data_CE339FA,pc),r0 ; r0 set to 0x340		; addr: CE3391A
mov.w @(data_CE339FC,pc),r2 ; r2 set to 0x3000		; addr: CE3391C
mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???		; addr: CE3391E
extu.w r3,r3		; addr: CE33920
tst r2,r3		; addr: CE33922
bt l_code_CE3394A		; addr: CE33924
mov.w @(r0,r14),r3		; addr: CE33926
mov.w @(data_CE339FE,pc),r1 ; r1 set to 0x2000		; addr: CE33928
extu.w r3,r3		; addr: CE3392A
tst r1,r3		; addr: CE3392C
bt/s l_code_CE3393A		; addr: CE3392E
mov 0x16,r5 ; r5 set to 0x16		; addr: CE33930
mov 0x02,r0 ; r0 set to 0x02		; addr: CE33932
mov.b r0,@(0x07,r14) 		; addr: CE33934
bra l_code_CE33940		; addr: CE33936
mov 0x28,r6		; addr: CE33938

l_code_CE3393A:
mov 0x03,r0 ; r0 set to 0x03		; addr: CE3393A
mov 0x2A,r6 ; r6 set to 0x2A		; addr: CE3393C
mov.b r0,@(0x07,r14) 		; addr: CE3393E

l_code_CE33940:
lds.l @r15+,pr 		; addr: CE33940
mov.l @(ptr_CE33A0C_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8C		; addr: CE33942
mov r14,r4		; addr: CE33944
jmp @r3		; addr: CE33946
mov.l @r15+,r14		; addr: CE33948

l_code_CE3394A:
lds.l @r15+,pr 		; addr: CE3394A
rts 		; addr: CE3394C
mov.l @r15+,r14		; addr: CE3394E
;-------------------------------------------------------------------------------

#align4
data_CE33950:
#data 0x4F222FE6		; addr: CE33950
#data 0x430BD32C		; addr: CE33954
#data 0x600E6E43		; addr: CE33958
#data 0x891F4011		; addr: CE3395C
#data 0x934B904B		; addr: CE33960
#data 0x644D04ED		; addr: CE33964
#data 0x89022348		; addr: CE33968
#data 0x21489148		; addr: CE3396C
#data 0x8908		; addr: CE33970

data_CE33972:
#data 0xD326		; addr: CE33972
#data 0x64E3E001		; addr: CE33974
#data 0x4F2680E7		; addr: CE33978
#data 0xE516E629		; addr: CE3397C
#data 0x6EF6432B		; addr: CE33980

#align4
data_CE33984:
#data 0x933A02ED		; addr: CE33984
#data 0x2238622D		; addr: CE33988
#data 0xD21F8908		; addr: CE3398C
#data 0x64E3E004		; addr: CE33990
#data 0x4F2680E7		; addr: CE33994
#data 0xE516E626		; addr: CE33998
#data 0x6EF6422B		; addr: CE3399C

#align4
data_CE339A0:
#data 0x000B4F26		; addr: CE339A0
#data 0x6EF6		; addr: CE339A4
;-------------------------------------------------------------------------------

data_CE339A6:
#data 0x2FE6		; addr: CE339A6
#data 0xD3174F22		; addr: CE339A8
#data 0x6E43430B		; addr: CE339AC
#data 0x4011600E		; addr: CE339B0
#data 0x9020891E		; addr: CE339B4
#data 0x04ED9320		; addr: CE339B8
#data 0x2348644D		; addr: CE339BC
#data 0x911C8902		; addr: CE339C0
#data 0x89062148		; addr: CE339C4

#align4
data_CE339C8:
#data 0xE001D310		; addr: CE339C8
#data 0x80E7E516		; addr: CE339CC
#data 0x430BE629		; addr: CE339D0
#data 0x64E3		; addr: CE339D4

data_CE339D6:
#data 0x9010		; addr: CE339D6
#data 0x02ED9312		; addr: CE339D8
#data 0x2238622D		; addr: CE339DC
#data 0xD20A8908		; addr: CE339E0
#data 0x64E3E005		; addr: CE339E4
#data 0x4F2680E7		; addr: CE339E8
#data 0xE516E62C		; addr: CE339EC
#data 0x6EF6422B		; addr: CE339F0

#align4
data_CE339F4:
#data 0x000B4F26		; addr: CE339F4
#data 0x6EF6		; addr: CE339F8
;-------------------------------------------------------------------------------

data_CE339FA:
#data 0x0340		; addr: CE339FA

data_CE339FC:
#data 0x3000		; addr: CE339FC

data_CE339FE:
#data 0x2000		; addr: CE339FE
#data 0x00001000		; addr: CE33A00

#align4
ptr_CE33A04_to_fn_extern_8C0805D8:
#data fn_extern_8C0805D8		; addr: CE33A04

ptr_CE33A08_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE33A08

ptr_CE33A0C_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE33A0C


f_code_CE33A10:
mov.l r14,@-r15		; addr: CE33A10
sts.l pr,@-r15		; addr: CE33A12
mov.l @(ptr_CE33B34_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE33A14
jsr @r3		; addr: CE33A16
mov r4,r14		; addr: CE33A18
exts.b r0,r0		; addr: CE33A1A
cmp/pz r0		; addr: CE33A1C
bt l_code_CE33A3E		; addr: CE33A1E
mov.w @(data_CE33B22,pc),r0 ; r0 set to 0x340		; addr: CE33A20
mov.w @(data_CE33B24,pc),r2 ; r2 set to 0x2000		; addr: CE33A22
mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???		; addr: CE33A24
extu.w r3,r3		; addr: CE33A26
tst r2,r3		; addr: CE33A28
bf l_code_CE33A3E		; addr: CE33A2A
mov.l @(ptr_CE33B38_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE33A2C
mov 0x02,r0 ; r0 set to 0x02		; addr: CE33A2E
mov r14,r4		; addr: CE33A30
mov.b r0,@(0x07,r14) 		; addr: CE33A32
lds.l @r15+,pr 		; addr: CE33A34
mov 0x27,r6 ; r6 set to 0x27		; addr: CE33A36
mov 0x16,r5 ; r5 set to 0x16		; addr: CE33A38
jmp @r3		; addr: CE33A3A
mov.l @r15+,r14		; addr: CE33A3C

l_code_CE33A3E:
lds.l @r15+,pr 		; addr: CE33A3E
rts 		; addr: CE33A40
mov.l @r15+,r14		; addr: CE33A42
;-------------------------------------------------------------------------------

f_code_CE33A44:
mov.l r14,@-r15		; addr: CE33A44
sts.l pr,@-r15		; addr: CE33A46
mov.l @(ptr_CE33B34_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE33A48
jsr @r3		; addr: CE33A4A
mov r4,r14		; addr: CE33A4C
exts.b r0,r0		; addr: CE33A4E
cmp/pz r0		; addr: CE33A50
bt l_code_CE33A72		; addr: CE33A52
mov.w @(data_CE33B22,pc),r0 ; r0 set to 0x340		; addr: CE33A54
mov.w @(data_CE33B26,pc),r2 ; r2 set to 0x1000		; addr: CE33A56
mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???		; addr: CE33A58
extu.w r3,r3		; addr: CE33A5A
tst r2,r3		; addr: CE33A5C
bf l_code_CE33A72		; addr: CE33A5E
mov.l @(ptr_CE33B38_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE33A60
mov 0x03,r0 ; r0 set to 0x03		; addr: CE33A62
mov r14,r4		; addr: CE33A64
mov.b r0,@(0x07,r14) 		; addr: CE33A66
lds.l @r15+,pr 		; addr: CE33A68
mov 0x2B,r6 ; r6 set to 0x2B		; addr: CE33A6A
mov 0x16,r5 ; r5 set to 0x16		; addr: CE33A6C
jmp @r3		; addr: CE33A6E
mov.l @r15+,r14		; addr: CE33A70

l_code_CE33A72:
lds.l @r15+,pr 		; addr: CE33A72
rts 		; addr: CE33A74
mov.l @r15+,r14		; addr: CE33A76
;-------------------------------------------------------------------------------

f_code_CE33A78:
mov.w @(data_CE33B28,pc),r0 ; r0 set to 0x3F8		; addr: CE33A78
mov 0x02,r3 ; r3 set to 0x02		; addr: CE33A7A
mov.l r14,@-r15		; addr: CE33A7C
mov r4,r14		; addr: CE33A7E
mov 0x05,r2 ; r2 set to 0x05		; addr: CE33A80
mov.l @(ptr_CE33B3C_to_ptr_CE36448_to_data_CE33AB6,pc),r1 ; r1 set to 0xCE36448		; addr: CE33A82
mov.w @(data_CE33B2C,pc),r5 ; r5 set to 0x2A4		; addr: CE33A84
sts.l pr,@-r15		; addr: CE33A86
mov.b r3,@(r0,r14) 		; addr: CE33A88
add r14,r5 ; r5 ??? bc r14 is ???		; addr: CE33A8A
mov.w @(data_CE33B2A,pc),r0 ; r0 set to 0x328		; addr: CE33A8C
mov.b r2,@(r0,r14) 		; addr: CE33A8E
mov.b @(0x07,r14),r0 		; addr: CE33A90
extu.b r0,r0 ; r0 set to 0x28		; addr: CE33A92
shll2 r0 ; r0 set to 0xA0		; addr: CE33A94
mov.l @(r0,r1),r3 ; r3 ??		; addr: CE33A96
jsr @r3		; addr: CE33A98
mov r14,r4		; addr: CE33A9A
mov.w @(data_CE33B2E,pc),r0 ; r0 set to 0x202		; addr: CE33A9C
mov 0x02,r1 ; r1 set to 0x02		; addr: CE33A9E
mov.w @(data_CE33B30,pc),r3 ; r3 set to 0x80		; addr: CE33AA0
mov r14,r4		; addr: CE33AA2
mov.b @(r0,r14),r2 ; r2 ??? bc r14 is ???		; addr: CE33AA4
or r3,r2		; addr: CE33AA6
mov.b r2,@(r0,r14) 		; addr: CE33AA8
add 0xE9,r0 ; r0 set to 0x1EB		; addr: CE33AAA
mov.l @(ptr_CE33B40_to_fn_extern_8C05A2CC,pc),r2 ; r2 set to 0x8C05A2CC		; addr: CE33AAC
mov.b r1,@(r0,r14) 		; addr: CE33AAE
lds.l @r15+,pr 		; addr: CE33AB0
jmp @r2		; addr: CE33AB2
mov.l @r15+,r14		; addr: CE33AB4

data_CE33AB6:
#data 0x2FE6		; addr: CE33AB6
#data 0xD31E4F22		; addr: CE33AB8
#data 0x6E43430B		; addr: CE33ABC
#data 0x70FF85EF		; addr: CE33AC0
#data 0x600F81EF		; addr: CE33AC4
#data 0x890C4015		; addr: CE33AC8
#data 0xE51684E7		; addr: CE33ACC
#data 0xE625D319		; addr: CE33AD0
#data 0x80E77001		; addr: CE33AD4
#data 0x64E3430B		; addr: CE33AD8
#data 0xE002D419		; addr: CE33ADC
#data 0xE0018045		; addr: CE33AE0
#data 0x8046		; addr: CE33AE4

data_CE33AE6:
#data 0x4F26		; addr: CE33AE6
#data 0x6EF6000B		; addr: CE33AE8
;-------------------------------------------------------------------------------

f_code_CE33AEC:
sts.l pr,@-r15		; addr: CE33AEC
add 0xFC,r15		; addr: CE33AEE
mov.l @(ptr_CE33B34_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE33AF0
jsr @r3		; addr: CE33AF2
mov.l r4,@r15		; addr: CE33AF4
exts.b r0,r0		; addr: CE33AF6
cmp/pz r0		; addr: CE33AF8
bt l_code_CE33B04		; addr: CE33AFA
mov.l @r15,r4		; addr: CE33AFC
add 0x04,r15		; addr: CE33AFE
bra l_code_CE33EF6		; addr: CE33B00
lds.l @r15+,pr 		; addr: CE33B02

l_code_CE33B04:
add 0x04,r15		; addr: CE33B04
lds.l @r15+,pr 		; addr: CE33B06
rts 		; addr: CE33B08
nop 		; addr: CE33B0A
;-------------------------------------------------------------------------------

f_code_CE33B0C:
mov.l r14,@-r15		; addr: CE33B0C
mov r4,r14		; addr: CE33B0E
mov.b @(0x07,r14),r0 		; addr: CE33B10
mov.l @(ptr_CE33B48_to_ptr_CE36450_to_data_CE33B4C,pc),r1 ; r1 set to 0xCE36450		; addr: CE33B12
extu.b r0,r0		; addr: CE33B14
mov.w @(data_CE33B2C,pc),r5 ; r5 set to 0x2A4		; addr: CE33B16
shll2 r0		; addr: CE33B18
mov.l @(r0,r1),r3		; addr: CE33B1A
add r14,r5 ; r5 ??? bc r14 is ???		; addr: CE33B1C
jmp @r3		; addr: CE33B1E
mov.l @r15+,r14		; addr: CE33B20

data_CE33B22:
#data 0x0340		; addr: CE33B22

data_CE33B24:
#data 0x2000		; addr: CE33B24

data_CE33B26:
#data 0x1000		; addr: CE33B26

data_CE33B28:
#data 0x03F8		; addr: CE33B28

data_CE33B2A:
#data 0x0328		; addr: CE33B2A

data_CE33B2C:
#data 0x02A4		; addr: CE33B2C

data_CE33B2E:
#data 0x0202		; addr: CE33B2E

data_CE33B30:
#data 0x0080		; addr: CE33B30
#data 0x0000		; addr: CE33B32

#align4
ptr_CE33B34_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE33B34

ptr_CE33B38_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE33B38

ptr_CE33B3C_to_ptr_CE36448_to_data_CE33AB6:
#data ptr_CE36448_to_data_CE33AB6		; addr: CE33B3C

ptr_CE33B40_to_fn_extern_8C05A2CC:
#data fn_extern_8C05A2CC		; addr: CE33B40
#data extern_8C26A518		; addr: CE33B44

#align4
ptr_CE33B48_to_ptr_CE36450_to_data_CE33B4C:
#data ptr_CE36450_to_data_CE33B4C		; addr: CE33B48

data_CE33B4C:
#data 0x6E432FE6		; addr: CE33B4C
#data 0x84E74F22		; addr: CE33B50
#data 0xD350E643		; addr: CE33B54
#data 0x80E77001		; addr: CE33B58
#data 0xF408C74D		; addr: CE33B5C
#data 0xF356E00C		; addr: CE33B60
#data 0xF537F341		; addr: CE33B64
#data 0xF256E014		; addr: CE33B68
#data 0xF527F241		; addr: CE33B6C
#data 0xF356E00C		; addr: CE33B70
#data 0xFE37E050		; addr: CE33B74
#data 0xF356E014		; addr: CE33B78
#data 0xE516E054		; addr: CE33B7C
#data 0x430BFE37		; addr: CE33B80
#data 0xD34564E3		; addr: CE33B84
#data 0x84E2E101		; addr: CE33B88
#data 0x600C6230		; addr: CE33B8C
#data 0x622C410C		; addr: CE33B90
#data 0x8B042218		; addr: CE33B94
#data 0xE601D241		; addr: CE33B98
#data 0x420B6563		; addr: CE33B9C
#data 0x64E3		; addr: CE33BA0

data_CE33BA2:
#data 0xD340		; addr: CE33BA2
#data 0x430BE523		; addr: CE33BA4
#data 0xD23F64E3		; addr: CE33BA8
#data 0x420BE53A		; addr: CE33BAC
#data 0x906864E3		; addr: CE33BB0
#data 0x9367E102		; addr: CE33BB4
#data 0x02EC64E3		; addr: CE33BB8
#data 0x0E24223B		; addr: CE33BBC
#data 0xD23A9063		; addr: CE33BC0
#data 0x4F260E14		; addr: CE33BC4
#data 0x6EF6422B		; addr: CE33BC8


f_code_CE33BCC:
mova @(data_CE33C94,pc),r0  ; r0 init to 0xCE33C94		; addr: CE33BCC
mov.l r14,@-r15		; addr: CE33BCE
mov.l r13,@-r15		; addr: CE33BD0
mov r5,r13		; addr: CE33BD2
mov r4,r14		; addr: CE33BD4
mov.l @(ptr_CE33CB0_to_extern_8C26823C,pc),r3 ; r3 set to 0x8C26823C		; addr: CE33BD6
sts.l pr,@-r15		; addr: CE33BD8
fmov.s @r0,fr4		; addr: CE33BDA
mov 0x0C,r0 ; r0 set to 0x0C		; addr: CE33BDC
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???		; addr: CE33BDE
fsub fr4,fr3		; addr: CE33BE0
fmov.s fr3,@(r0,r13) 		; addr: CE33BE2
mov 0x14,r0 ; r0 set to 0x14		; addr: CE33BE4
fmov.s @(r0,r13),fr2		; addr: CE33BE6
fsub fr4,fr2		; addr: CE33BE8
fmov.s fr2,@(r0,r13) 		; addr: CE33BEA
mov 0x0C,r0 ; r0 set to 0x0C		; addr: CE33BEC
fmov.s @(r0,r13),fr3		; addr: CE33BEE
mov 0x50,r0 ; r0 set to 0x50		; addr: CE33BF0
fmov.s fr3,@(r0,r14) 		; addr: CE33BF2
mov 0x14,r0 ; r0 set to 0x14		; addr: CE33BF4
fmov.s @(r0,r13),fr3		; addr: CE33BF6
mov 0x54,r0 ; r0 set to 0x54		; addr: CE33BF8
fmov.s fr3,@(r0,r14) 		; addr: CE33BFA
mov.l @r3,r0 ; r0 ??? bc r3 is ???		; addr: CE33BFC
mov.l @(0x1C,r0),r0		; addr: CE33BFE
tst 0x01,r0 		; addr: CE33C00
bf l_code_CE33C1A		; addr: CE33C02
mov 0x25,r0 ; r0 set to 0x25		; addr: CE33C04
mov.l @(ptr_CE33CB4_to_fn_extern_8C03544C,pc),r2 ; r2 set to 0x8C03544C		; addr: CE33C06
mov.b @(r0,r14),r6		; addr: CE33C08
mov 0x01,r7 ; r7 set to 0x01		; addr: CE33C0A
mov 0x00,r5 ; r5 set to 0x00		; addr: CE33C0C
extu.b r6,r6		; addr: CE33C0E
add 0x06,r6		; addr: CE33C10
jsr @r2		; addr: CE33C12
mov r14,r4		; addr: CE33C14
bra l_code_CE33C22		; addr: CE33C16
nop 		; addr: CE33C18

l_code_CE33C1A:
mov.l @(ptr_CE33CB8_to_fn_extern_8C035162,pc),r2 ; r2 set to 0x8C035162		; addr: CE33C1A
mov 0x08,r5 ; r5 set to 0x08		; addr: CE33C1C
jsr @r2		; addr: CE33C1E
mov r14,r4		; addr: CE33C20

l_code_CE33C22:
mova @(data_CE33CBC,pc),r0  ; r0 init to 0xCE33CBC, r0 init to 0xCE33CBC		; addr: CE33C22
fmov.s @r0,fr3		; addr: CE33C24
mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54		; addr: CE33C26
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???		; addr: CE33C28
fcmp/gt fr2,fr3		; addr: CE33C2A
bf l_code_CE33CC4		; addr: CE33C2C
mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0C		; addr: CE33C2E
fldi1 fr4		; addr: CE33C30
fmov.s fr4,@(r0,r13) 		; addr: CE33C32
mov 0x14,r0 ; r0 set to 0x14, r0 set to 0x14		; addr: CE33C34
fmov.s fr4,@(r0,r13) 		; addr: CE33C36
mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0C		; addr: CE33C38
fmov.s @(r0,r13),fr2		; addr: CE33C3A
mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50		; addr: CE33C3C
mov.l @(ptr_CE33CC0_to_fn_extern_8C05218A,pc),r3 ; r3 set to 0x8C05218A, r3 set to 0x8C05218A		; addr: CE33C3E
fmov.s fr2,@(r0,r14) 		; addr: CE33C40
mov 0x14,r0 ; r0 set to 0x14, r0 set to 0x14		; addr: CE33C42
fmov.s @(r0,r13),fr2		; addr: CE33C44
mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54		; addr: CE33C46
fmov.s fr2,@(r0,r14) 		; addr: CE33C48
mov.b @(0x07,r14),r0 		; addr: CE33C4A
add 0x01,r0 ; r0 set to 0x55, r0 set to 0x55		; addr: CE33C4C
mov.b r0,@(0x07,r14) 		; addr: CE33C4E
jsr @r3		; addr: CE33C50
mov r14,r4		; addr: CE33C52
mov.w @(data_CE33C8C,pc),r0 ; r0 set to 0x41C, r0 set to 0x41C		; addr: CE33C54
mov 0x00,r13 ; r13 set to 0x00, r13 set to 0x00		; addr: CE33C56
mov.l @(ptr_CE33CB8_to_fn_extern_8C035162,pc),r3 ; r3 set to 0x8C035162, r3 set to 0x8C035162		; addr: CE33C58
mov r13,r5 ; r5 set to 0x00, r5 set to 0x00		; addr: CE33C5A
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???		; addr: CE33C5C
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38		; addr: CE33C5E
fmov.s fr3,@(r0,r14) 		; addr: CE33C60
mov.w @(data_CE33C86,pc),r0 ; r0 set to 0x202, r0 set to 0x202		; addr: CE33C62
mov.b r13,@(r0,r14) 		; addr: CE33C64
jsr @r3		; addr: CE33C66
mov r14,r4		; addr: CE33C68
mov.l @(ptr_CE33C98_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C, r2 set to 0x8C034E8C		; addr: CE33C6A
mov 0x16,r5 ; r5 set to 0x16, r5 set to 0x16		; addr: CE33C6C
mov 0x3D,r6 ; r6 set to 0x3D, r6 set to 0x3D		; addr: CE33C6E
jsr @r2		; addr: CE33C70
mov r14,r4		; addr: CE33C72
mov.w @(data_CE33C8E,pc),r0 ; r0 set to 0x3F9, r0 set to 0x3F9		; addr: CE33C74
mov.b r13,@(r0,r14) 		; addr: CE33C76
add 0xFF,r0 ; r0 set to 0x3F8, r0 set to 0x3F8		; addr: CE33C78
mov.b r13,@(r0,r14) 		; addr: CE33C7A
mov.w @(data_CE33C90,pc),r0 ; r0 set to 0x327, r0 set to 0x327		; addr: CE33C7C
mov.b r13,@(r0,r14) 		; addr: CE33C7E
add 0x01,r0 ; r0 set to 0x328, r0 set to 0x328		; addr: CE33C80
bra l_code_CE33CE0		; addr: CE33C82
mov.b r13,@(r0,r14) 		; addr: CE33C84

data_CE33C86:
#data 0x0202		; addr: CE33C86
#data 0x01EB0080		; addr: CE33C88

data_CE33C8C:
#data 0x041C		; addr: CE33C8C

data_CE33C8E:
#data 0x03F9		; addr: CE33C8E

data_CE33C90:
#data 0x0327		; addr: CE33C90
#data 0x0000		; addr: CE33C92

#align4
data_CE33C94:
#data 0x3CA3D70A		; addr: CE33C94

#align4
ptr_CE33C98_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE33C98
#data extern_8C289628		; addr: CE33C9C
#data fn_extern_8C0D13BC		; addr: CE33CA0
#data fn_extern_8C042008		; addr: CE33CA4
#data fn_extern_8C04223A		; addr: CE33CA8
#data fn_extern_8C05A2CC		; addr: CE33CAC

#align4
ptr_CE33CB0_to_extern_8C26823C:
#data extern_8C26823C		; addr: CE33CB0

ptr_CE33CB4_to_fn_extern_8C03544C:
#data fn_extern_8C03544C		; addr: CE33CB4

ptr_CE33CB8_to_fn_extern_8C035162:
#data fn_extern_8C035162		; addr: CE33CB8

data_CE33CBC:
#data 0x3F000000		; addr: CE33CBC

#align4
ptr_CE33CC0_to_fn_extern_8C05218A:
#data fn_extern_8C05218A		; addr: CE33CC0


l_code_CE33CC4:
mov.w @(data_CE33E02,pc),r0 ; r0 set to 0x202		; addr: CE33CC4
mov 0x02,r1 ; r1 set to 0x02		; addr: CE33CC6
mov.w @(data_CE33E04,pc),r3 ; r3 set to 0x80		; addr: CE33CC8
mov r14,r4		; addr: CE33CCA
mov.b @(r0,r14),r2		; addr: CE33CCC
or r3,r2		; addr: CE33CCE
mov.b r2,@(r0,r14) 		; addr: CE33CD0
add 0xE9,r0 ; r0 set to 0x1EB		; addr: CE33CD2
mov.l @(ptr_CE33E10_to_fn_extern_8C05A2CC,pc),r2 ; r2 set to 0x8C05A2CC		; addr: CE33CD4
mov.b r1,@(r0,r14) 		; addr: CE33CD6
lds.l @r15+,pr 		; addr: CE33CD8
mov.l @r15+,r13		; addr: CE33CDA
jmp @r2		; addr: CE33CDC
mov.l @r15+,r14		; addr: CE33CDE

l_code_CE33CE0:
lds.l @r15+,pr 		; addr: CE33CE0
mov.l @r15+,r13		; addr: CE33CE2
rts 		; addr: CE33CE4
mov.l @r15+,r14		; addr: CE33CE6
;-------------------------------------------------------------------------------

f_code_CE33CE8:
sts.l pr,@-r15		; addr: CE33CE8
add 0xFC,r15		; addr: CE33CEA
mov.l @(ptr_CE33E14_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE33CEC
jsr @r3		; addr: CE33CEE
mov.l r4,@r15		; addr: CE33CF0
exts.b r0,r0		; addr: CE33CF2
cmp/pz r0		; addr: CE33CF4
bt l_code_CE33D02		; addr: CE33CF6
mov.l @r15,r4		; addr: CE33CF8
add 0x04,r15		; addr: CE33CFA
mov.l @(ptr_CE33E18_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE33CFC
jmp @r3		; addr: CE33CFE
lds.l @r15+,pr 		; addr: CE33D00

l_code_CE33D02:
add 0x04,r15		; addr: CE33D02
lds.l @r15+,pr 		; addr: CE33D04
rts 		; addr: CE33D06
nop 		; addr: CE33D08
;-------------------------------------------------------------------------------

l_code_CE33D0A:
mov.w @(data_CE33E06,pc),r0 ; r0 set to 0x4E0		; addr: CE33D0A
mov.l r14,@-r15		; addr: CE33D0C
mov r4,r14		; addr: CE33D0E
mov.l r13,@-r15		; addr: CE33D10
mov 0x00,r4 ; r4 set to 0x00		; addr: CE33D12
sts.l pr,@-r15		; addr: CE33D14
mov.w @(r0,r14),r3		; addr: CE33D16
mov.w @(data_CE33E08,pc),r2 ; r2 set to 0x200		; addr: CE33D18
extu.w r3,r3		; addr: CE33D1A
mov.l @(ptr_CE33E1C_to_extern_8C2896B0,pc),r5 ; r5 set to 0x8C2896B0		; addr: CE33D1C
mov.l @(ptr_CE33E20_to_fn_extern_8C034E8C,pc),r13 ; r13 set to 0x8C034E8C		; addr: CE33D1E
tst r2,r3		; addr: CE33D20
bt/s l_code_CE33D60		; addr: CE33D22
fldi0 fr4		; addr: CE33D24
mov 0x03,r0 ; r0 set to 0x03		; addr: CE33D26
mov.b r0,@(0x07,r14) 		; addr: CE33D28
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE33D2A
fmov.s fr4,@(r0,r14) 		; addr: CE33D2C
mov 0x60,r0 ; r0 set to 0x60		; addr: CE33D2E
fmov.s fr4,@(r0,r14) 		; addr: CE33D30
mov 0x68,r0 ; r0 set to 0x68		; addr: CE33D32
fmov.s fr4,@(r0,r14) 		; addr: CE33D34
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE33D36
fmov.s fr4,@(r0,r14) 		; addr: CE33D38
mov 0x43,r3 ; r3 set to 0x43		; addr: CE33D3A
mov.w @(data_CE33E0A,pc),r0 ; r0 set to 0x1A1		; addr: CE33D3C
mov.b r3,@(r0,r14) 		; addr: CE33D3E
add 0x0B,r0 ; r0 set to 0x1AC		; addr: CE33D40
mov.w r4,@(r0,r14) 		; addr: CE33D42
add 0xF2,r0 ; r0 set to 0x19E		; addr: CE33D44
mov.b r4,@(r0,r14) 		; addr: CE33D46
add 0x26,r0 ; r0 set to 0x1C4		; addr: CE33D48
mov.l r4,@(r0,r14) 		; addr: CE33D4A
mov.b @(0x02,r14),r0 		; addr: CE33D4C
mov.l @r5,r3 ; r3 ??		; addr: CE33D4E
extu.b r0,r0 ; r0 set to 0xC4		; addr: CE33D50
shll r0 ; r0 set to 0x188		; addr: CE33D52
add 0x7C,r3		; addr: CE33D54
mov.w @(r0,r3),r1		; addr: CE33D56
add 0x01,r1		; addr: CE33D58
mov.w r1,@(r0,r3) 		; addr: CE33D5A
bra l_code_CE33D9E		; addr: CE33D5C
mov 0x20,r6		; addr: CE33D5E

l_code_CE33D60:
mov.w @(data_CE33E0C,pc),r2 ; r2 set to 0x100		; addr: CE33D60
tst r2,r3		; addr: CE33D62
bt l_code_CE33DB8		; addr: CE33D64
mov 0x04,r0 ; r0 set to 0x04		; addr: CE33D66
mov.b r0,@(0x07,r14) 		; addr: CE33D68
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE33D6A
fmov.s fr4,@(r0,r14) 		; addr: CE33D6C
mov 0x60,r0 ; r0 set to 0x60		; addr: CE33D6E
fmov.s fr4,@(r0,r14) 		; addr: CE33D70
mov 0x68,r0 ; r0 set to 0x68		; addr: CE33D72
fmov.s fr4,@(r0,r14) 		; addr: CE33D74
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE33D76
fmov.s fr4,@(r0,r14) 		; addr: CE33D78
mov 0x44,r3 ; r3 set to 0x44		; addr: CE33D7A
mov.w @(data_CE33E0A,pc),r0 ; r0 set to 0x1A1		; addr: CE33D7C
mov 0x34,r6 ; r6 set to 0x34		; addr: CE33D7E
mov.b r3,@(r0,r14) 		; addr: CE33D80
add 0x0B,r0 ; r0 set to 0x1AC		; addr: CE33D82
mov.w r4,@(r0,r14) 		; addr: CE33D84
add 0xF2,r0 ; r0 set to 0x19E		; addr: CE33D86
mov.b r4,@(r0,r14) 		; addr: CE33D88
add 0x26,r0 ; r0 set to 0x1C4		; addr: CE33D8A
mov.l r4,@(r0,r14) 		; addr: CE33D8C
mov.b @(0x02,r14),r0 		; addr: CE33D8E
mov.l @r5,r3 ; r3 ??? bc r5 is ???		; addr: CE33D90
extu.b r0,r0 ; r0 set to 0xC4		; addr: CE33D92
shll r0 ; r0 set to 0x188		; addr: CE33D94
add 0x7C,r3		; addr: CE33D96
mov.w @(r0,r3),r1		; addr: CE33D98
add 0x01,r1		; addr: CE33D9A
mov.w r1,@(r0,r3) 		; addr: CE33D9C

l_code_CE33D9E:
mov 0x16,r5 ; r5 set to 0x16, r5 set to 0x16		; addr: CE33D9E
jsr @r13		; addr: CE33DA0
mov r14,r4		; addr: CE33DA2
mov.l @(ptr_CE33E24_to_extern_8C26A518,pc),r5 ; r5 set to 0x8C26A518, r5 set to 0x8C26A518		; addr: CE33DA4
mov 0x01,r0 ; r0 set to 0x01, r0 set to 0x01		; addr: CE33DA6
mov.l @(ptr_CE33E28_to_fn_extern_8C042008,pc),r3 ; r3 set to 0x8C042008, r3 set to 0x8C042008		; addr: CE33DA8
mov.b r0,@(0x05,r5) 		; addr: CE33DAA
mov.b r0,@(0x06,r5) 		; addr: CE33DAC
mov 0x25,r5 ; r5 set to 0x25, r5 set to 0x25		; addr: CE33DAE
jsr @r3		; addr: CE33DB0
mov r14,r4		; addr: CE33DB2
bra l_code_CE33DF8		; addr: CE33DB4
nop 		; addr: CE33DB6

l_code_CE33DB8:
mov.w @(r0,r14),r0		; addr: CE33DB8
extu.w r0,r0		; addr: CE33DBA
tst 0x60,r0 		; addr: CE33DBC
bf l_code_CE33DC4		; addr: CE33DBE
bra l_code_CE33DFA		; addr: CE33DC0
mov 0x00,r0		; addr: CE33DC2

l_code_CE33DC4:
mov 0x02,r0 ; r0 set to 0x02		; addr: CE33DC4
mov.b r0,@(0x06,r14) 		; addr: CE33DC6
mov r4,r0 ; r0 ??? bc r4 is ???		; addr: CE33DC8
nop 		; addr: CE33DCA
mov.b r0,@(0x07,r14) 		; addr: CE33DCC
mov 0x16,r5 ; r5 set to 0x16		; addr: CE33DCE
mov.w r0,@(0x1E,r14) 		; addr: CE33DD0
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE33DD2
fmov.s fr4,@(r0,r14) 		; addr: CE33DD4
mov 0x60,r0 ; r0 set to 0x60		; addr: CE33DD6
fmov.s fr4,@(r0,r14) 		; addr: CE33DD8
mov 0x68,r0 ; r0 set to 0x68		; addr: CE33DDA
fmov.s fr4,@(r0,r14) 		; addr: CE33DDC
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE33DDE
mov 0x21,r6 ; r6 set to 0x21		; addr: CE33DE0
fmov.s fr4,@(r0,r14) 		; addr: CE33DE2
jsr @r13		; addr: CE33DE4
mov r14,r4		; addr: CE33DE6
mov.l @(ptr_CE33E28_to_fn_extern_8C042008,pc),r3 ; r3 set to 0x8C042008		; addr: CE33DE8
mov 0x25,r5 ; r5 set to 0x25		; addr: CE33DEA
jsr @r3		; addr: CE33DEC
mov r14,r4		; addr: CE33DEE
mov.l @(ptr_CE33E2C_to_fn_extern_8C04223A,pc),r2 ; r2 set to 0x8C04223A		; addr: CE33DF0
mov 0x4C,r5 ; r5 set to 0x4C		; addr: CE33DF2
jsr @r2		; addr: CE33DF4
mov r14,r4		; addr: CE33DF6

l_code_CE33DF8:
mov 0x01,r0 ; r0 set to 0x01		; addr: CE33DF8

l_code_CE33DFA:
lds.l @r15+,pr 		; addr: CE33DFA
mov.l @r15+,r13		; addr: CE33DFC
rts 		; addr: CE33DFE
mov.l @r15+,r14		; addr: CE33E00
;-------------------------------------------------------------------------------

data_CE33E02:
#data 0x0202		; addr: CE33E02

data_CE33E04:
#data 0x0080		; addr: CE33E04

data_CE33E06:
#data 0x04E0		; addr: CE33E06

data_CE33E08:
#data 0x0200		; addr: CE33E08

data_CE33E0A:
#data 0x01A1		; addr: CE33E0A

data_CE33E0C:
#data 0x0100		; addr: CE33E0C
#data 0x0000		; addr: CE33E0E

#align4
ptr_CE33E10_to_fn_extern_8C05A2CC:
#data fn_extern_8C05A2CC		; addr: CE33E10

ptr_CE33E14_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE33E14

ptr_CE33E18_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE33E18

ptr_CE33E1C_to_extern_8C2896B0:
#data extern_8C2896B0		; addr: CE33E1C

ptr_CE33E20_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE33E20

ptr_CE33E24_to_extern_8C26A518:
#data extern_8C26A518		; addr: CE33E24

ptr_CE33E28_to_fn_extern_8C042008:
#data fn_extern_8C042008		; addr: CE33E28

ptr_CE33E2C_to_fn_extern_8C04223A:
#data fn_extern_8C04223A		; addr: CE33E2C


l_code_CE33E30:
mov.l r14,@-r15		; addr: CE33E30
extu.b r5,r5		; addr: CE33E32
sts.l pr,@-r15		; addr: CE33E34
tst r5,r5		; addr: CE33E36
bt/s l_code_CE33E42		; addr: CE33E38
mov r4,r14		; addr: CE33E3A
mov.w @(data_CE33F06,pc),r0 ; r0 set to 0x348		; addr: CE33E3C
bra l_code_CE33E44		; addr: CE33E3E
nop 		; addr: CE33E40

l_code_CE33E42:
mov.w @(data_CE33F08,pc),r0 ; r0 set to 0x340		; addr: CE33E42

l_code_CE33E44:
mov.w @(r0,r14),r4		; addr: CE33E44
mov.w @(data_CE33F0A,pc),r2 ; r2 set to 0xC00, r2 set to 0xC00		; addr: CE33E46
extu.w r4,r4		; addr: CE33E48
extu.w r4,r4		; addr: CE33E4A
tst r2,r4		; addr: CE33E4C
bf l_code_CE33E58		; addr: CE33E4E
lds.l @r15+,pr 		; addr: CE33E50
mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00		; addr: CE33E52
rts 		; addr: CE33E54
mov.l @r15+,r14		; addr: CE33E56
;-------------------------------------------------------------------------------

l_code_CE33E58:
mov 0x01,r0 ; r0 set to 0x01		; addr: CE33E58
fldi0 fr4		; addr: CE33E5A
mov.b r0,@(0x07,r14) 		; addr: CE33E5C
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE33E5E
fmov.s fr4,@(r0,r14) 		; addr: CE33E60
mov 0x60,r0 ; r0 set to 0x60		; addr: CE33E62
fmov.s fr4,@(r0,r14) 		; addr: CE33E64
mov 0x68,r0 ; r0 set to 0x68		; addr: CE33E66
fmov.s fr4,@(r0,r14) 		; addr: CE33E68
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE33E6A
fmov.s fr4,@(r0,r14) 		; addr: CE33E6C
mov 0x00,r4 ; r4 set to 0x00		; addr: CE33E6E
mov.w @(data_CE33F0C,pc),r0 ; r0 set to 0x1FC		; addr: CE33E70
mov 0xF6,r1 ; r1 set to 0xFFFFFFF6		; addr: CE33E72
mov.w @(data_CE33F10,pc),r2 ; r2 set to 0x400		; addr: CE33E74
mov 0x16,r5 ; r5 set to 0x16		; addr: CE33E76
mov.b r4,@(r0,r14) 		; addr: CE33E78
add 0xFD,r0 ; r0 set to 0x1F9		; addr: CE33E7A
mov.b r4,@(r0,r14) 		; addr: CE33E7C
mov.w @(data_CE33F0E,pc),r0 ; r0 set to 0x34A		; addr: CE33E7E
mov.w @(r0,r14),r3		; addr: CE33E80
mov.w @(data_CE33F12,pc),r0 ; r0 set to 0x1D3		; addr: CE33E82
extu.w r3,r3		; addr: CE33E84
and r2,r3		; addr: CE33E86
shad r1, r3		; addr: CE33E88
mov.b r3,@(r0,r14) 		; addr: CE33E8A
mov.b @(r0,r14),r6		; addr: CE33E8C
mov.l @(ptr_CE33F18_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE33E8E
add 0x1D,r6		; addr: CE33E90
jsr @r3		; addr: CE33E92
mov r14,r4 ; r4 ??? bc r14 is ???		; addr: CE33E94
mov.w @(data_CE33F14,pc),r0 ; r0 set to 0x130		; addr: CE33E96
mov.w @(r0,r14),r2 ; r2 ??? bc r14 is ???		; addr: CE33E98
tst r2,r2		; addr: CE33E9A
bf data_CE33EB2		; addr: CE33E9C
mova @(data_CE33F1C,pc),r0  ; r0 set to 0xCE33F1C		; addr: CE33E9E
fmov.s @r0,fr3 ; r3 ??		; addr: CE33EA0
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE33EA2
fmov.s fr3,@(r0,r14) 		; addr: CE33EA4
mov.w @(data_CE33F12,pc),r0 ; r0 set to 0x1D3		; addr: CE33EA6
mov.b @(r0,r14),r3		; addr: CE33EA8
tst r3,r3		; addr: CE33EAA
bf data_CE33EC2		; addr: CE33EAC
bra l_code_CE33ECA		; addr: CE33EAE
nop 		; addr: CE33EB0

data_CE33EB2:
#data 0xC71B		; addr: CE33EB2
#data 0xE05CF308		; addr: CE33EB4
#data 0x902AFE37		; addr: CE33EB8
#data 0x233803EC		; addr: CE33EBC
#data 0x8903		; addr: CE33EC0

data_CE33EC2:
#data 0xE05C		; addr: CE33EC2
#data 0xF34DF3E6		; addr: CE33EC4
#data 0xFE37		; addr: CE33EC8


l_code_CE33ECA:
mov 0x01,r0 ; r0 set to 0x01		; addr: CE33ECA
lds.l @r15+,pr 		; addr: CE33ECC
rts 		; addr: CE33ECE
mov.l @r15+,r14		; addr: CE33ED0
;-------------------------------------------------------------------------------

data_CE33ED2:
#data 0x655C		; addr: CE33ED2
#data 0x89022558		; addr: CE33ED4
#data 0xA0019015		; addr: CE33ED8
#data 0x0009		; addr: CE33EDC

data_CE33EDE:
#data 0x9013		; addr: CE33EDE

#align4
data_CE33EE0:
#data 0x9212044D		; addr: CE33EE0
#data 0x644D644D		; addr: CE33EE4
#data 0x8B012428		; addr: CE33EE8
#data 0xE000000B		; addr: CE33EEC
;-------------------------------------------------------------------------------

#align4
data_CE33EF0:
#data 0x000BE001		; addr: CE33EF0
#data 0x0009		; addr: CE33EF4
;-------------------------------------------------------------------------------

l_code_CE33EF6:
mov 0x01,r0 ; r0 set to 0x01		; addr: CE33EF6
mov.l @(ptr_CE33F18_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE33EF8
mov.b r0,@(0x06,r4) 		; addr: CE33EFA
mov 0x00,r0 ; r0 set to 0x00		; addr: CE33EFC
mov 0x1C,r6 ; r6 set to 0x1C		; addr: CE33EFE
mov.b r0,@(0x07,r4) 		; addr: CE33F00
jmp @r3		; addr: CE33F02
mov 0x16,r5		; addr: CE33F04

data_CE33F06:
#data 0x0348		; addr: CE33F06

data_CE33F08:
#data 0x0340		; addr: CE33F08

data_CE33F0A:
#data 0x0C00		; addr: CE33F0A

data_CE33F0C:
#data 0x01FC		; addr: CE33F0C

data_CE33F0E:
#data 0x034A		; addr: CE33F0E

data_CE33F10:
#data 0x0400		; addr: CE33F10

data_CE33F12:
#data 0x01D3		; addr: CE33F12

data_CE33F14:
#data 0x0130		; addr: CE33F14
#data 0x0000		; addr: CE33F16

#align4
ptr_CE33F18_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE33F18

data_CE33F1C:
#data 0xC0B40000		; addr: CE33F1C
#data 0x40B40000		; addr: CE33F20

#align4
data_CE33F24:
#data 0x4F22C74F		; addr: CE33F24
#data 0x9094F408		; addr: CE33F28
#data 0x2338034C		; addr: CE33F2C
#data 0xC74D8901		; addr: CE33F30
#data 0xF408		; addr: CE33F34

data_CE33F36:
#data 0x908F		; addr: CE33F36
#data 0xE034034E		; addr: CE33F38
#data 0xF336F246		; addr: CE33F3C
#data 0xF235F340		; addr: CE33F40
#data 0x90868903		; addr: CE33F44
#data 0x2228024C		; addr: CE33F48
#data 0x8B0B		; addr: CE33F4C

data_CE33F4E:
#data 0x9083		; addr: CE33F4E
#data 0xE034024E		; addr: CE33F50
#data 0xF326F246		; addr: CE33F54
#data 0xF235F340		; addr: CE33F58
#data 0x907A8B06		; addr: CE33F5C
#data 0x2228024C		; addr: CE33F60
#data 0x8B02		; addr: CE33F64

data_CE33F66:
#data 0x4F26		; addr: CE33F66
#data 0xE000000B		; addr: CE33F68
;-------------------------------------------------------------------------------

#align4
data_CE33F6C:
#data 0xE3009075		; addr: CE33F6C
#data 0xE61FF48D		; addr: CE33F70
#data 0xE05C0434		; addr: CE33F74
#data 0xE060F447		; addr: CE33F78
#data 0xE068F447		; addr: CE33F7C
#data 0xE06CF447		; addr: CE33F80
#data 0xE001F447		; addr: CE33F84
#data 0xE0028046		; addr: CE33F88
#data 0x8047D337		; addr: CE33F8C
#data 0xE516430B		; addr: CE33F90
#data 0x4F26E001		; addr: CE33F94
#data 0x0009000B		; addr: CE33F98
;-------------------------------------------------------------------------------

f_code_CE33F9C:
mov.l r14,@-r15		; addr: CE33F9C
mov r4,r14		; addr: CE33F9E
mov.b @(0x06,r14),r0 		; addr: CE33FA0
mov.l @(ptr_CE34070_to_ptr_CE3645C_to_f_code_CE33FB2,pc),r1 ; r1 set to 0xCE3645C		; addr: CE33FA2
extu.b r0,r0		; addr: CE33FA4
mov.w @(data_CE3405C,pc),r5 ; r5 set to 0x2A4		; addr: CE33FA6
shll2 r0		; addr: CE33FA8
mov.l @(r0,r1),r3		; addr: CE33FAA
add r14,r5 ; r5 ??? bc r14 is ???		; addr: CE33FAC
jmp @r3		; addr: CE33FAE
mov.l @r15+,r14		; addr: CE33FB0

f_code_CE33FB2:
mov.l r14,@-r15		; addr: CE33FB2
mov r4,r14		; addr: CE33FB4
mov.l r13,@-r15		; addr: CE33FB6
sts.l pr,@-r15		; addr: CE33FB8
mov.b @(0x06,r14),r0 		; addr: CE33FBA
mov.l @(ptr_CE34074_to_fn_extern_8C05218A,pc),r3 ; r3 set to 0x8C05218A		; addr: CE33FBC
add 0x01,r0		; addr: CE33FBE
mov.b r0,@(0x06,r14) 		; addr: CE33FC0
jsr @r3		; addr: CE33FC2
mov r14,r4		; addr: CE33FC4
mov.w @(data_CE3405E,pc),r0 ; r0 set to 0x130		; addr: CE33FC6
mov 0x05,r5 ; r5 set to 0x05		; addr: CE33FC8
mov.w @(data_CE3405E,pc),r1 ; r1 set to 0x130		; addr: CE33FCA
mov.w @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE33FCC
mov.l @(ptr_CE34078_to_fn_extern_8C056DE4,pc),r3 ; r3 set to 0x8C056DE4		; addr: CE33FCE
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE33FD0
xor 0x01,r0 		; addr: CE33FD2
mov.w r0,@r1		; addr: CE33FD4
jsr @r3		; addr: CE33FD6
mov r14,r4		; addr: CE33FD8
mov.w @(data_CE3405A,pc),r0 ; r0 set to 0x1F9		; addr: CE33FDA
mov 0x00,r13 ; r13 set to 0x00		; addr: CE33FDC
mov 0x49,r3 ; r3 set to 0x49		; addr: CE33FDE
mov r13,r5 ; r5 set to 0x00		; addr: CE33FE0
mov.b r13,@(r0,r14) 		; addr: CE33FE2
mov 0x02,r6 ; r6 set to 0x02		; addr: CE33FE4
mov.w @(data_CE34060,pc),r0 ; r0 set to 0x41C		; addr: CE33FE6
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???		; addr: CE33FE8
mov 0x38,r0 ; r0 set to 0x38		; addr: CE33FEA
fmov.s fr3,@(r0,r14) 		; addr: CE33FEC
mov.w @(data_CE34062,pc),r0 ; r0 set to 0x1A1		; addr: CE33FEE
mov.b r3,@(r0,r14) 		; addr: CE33FF0
add 0x0B,r0 ; r0 set to 0x1AC		; addr: CE33FF2
mov.w r13,@(r0,r14) 		; addr: CE33FF4
add 0xF2,r0 ; r0 set to 0x19E		; addr: CE33FF6
mov.b r13,@(r0,r14) 		; addr: CE33FF8
add 0x26,r0 ; r0 set to 0x1C4		; addr: CE33FFA
mov.l @(ptr_CE3407C_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0		; addr: CE33FFC
mov.l r13,@(r0,r14) 		; addr: CE33FFE
mov.b @(0x02,r14),r0 		; addr: CE34000
mov.l @r3,r2		; addr: CE34002
extu.b r0,r0 ; r0 set to 0xC4		; addr: CE34004
shll r0 ; r0 set to 0x188		; addr: CE34006
add 0x7C,r2		; addr: CE34008
mov.w @(r0,r2),r1		; addr: CE3400A
add 0x01,r1		; addr: CE3400C
mov.w r1,@(r0,r2) 		; addr: CE3400E
mov.l @(ptr_CE3406C_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE34010
jsr @r2		; addr: CE34012
mov r14,r4		; addr: CE34014
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE34016
fldi0 fr4		; addr: CE34018
fmov.s fr4,@(r0,r14) 		; addr: CE3401A
mov 0x60,r0 ; r0 set to 0x60		; addr: CE3401C
fmov.s fr4,@(r0,r14) 		; addr: CE3401E
mov 0x68,r0 ; r0 set to 0x68		; addr: CE34020
fmov.s fr4,@(r0,r14) 		; addr: CE34022
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE34024
fmov.s fr4,@(r0,r14) 		; addr: CE34026
mov.w @(data_CE3405E,pc),r0 ; r0 set to 0x130		; addr: CE34028
mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???		; addr: CE3402A
tst r3,r3		; addr: CE3402C
bt l_code_CE34036		; addr: CE3402E
mova @(data_CE34080,pc),r0  ; r0 set to 0xCE34080		; addr: CE34030
bra l_code_CE3403A		; addr: CE34032
fmov.s @r0,fr3		; addr: CE34034

l_code_CE34036:
mova @(data_CE34084,pc),r0  ; r0 init to 0xCE34084		; addr: CE34036
fmov.s @r0,fr3		; addr: CE34038

l_code_CE3403A:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C		; addr: CE3403A
mov.l @(ptr_CE3408C_to_fn_extern_8C02FEC4,pc),r3 ; r3 set to 0x8C02FEC4, r3 set to 0x8C02FEC4		; addr: CE3403C
fmov.s fr3,@(r0,r14) 		; addr: CE3403E
mova @(data_CE34088,pc),r0  ; r0 set to 0xCE34088, r0 set to 0xCE34088		; addr: CE34040
fmov.s @r0,fr3 ; r3 ??, r3 ??		; addr: CE34042
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60		; addr: CE34044
mov r14,r4		; addr: CE34046
mov 0x07,r6 ; r6 set to 0x07, r6 set to 0x07		; addr: CE34048
fmov.s fr3,@(r0,r14) 		; addr: CE3404A
mov 0x01,r5 ; r5 set to 0x01, r5 set to 0x01		; addr: CE3404C
lds.l @r15+,pr 		; addr: CE3404E
mov.l @r15+,r13		; addr: CE34050
jmp @r3		; addr: CE34052
mov.l @r15+,r14		; addr: CE34054
#data 0x01D2		; addr: CE34056
#data 0x020C		; addr: CE34058

data_CE3405A:
#data 0x01F9		; addr: CE3405A

data_CE3405C:
#data 0x02A4		; addr: CE3405C

data_CE3405E:
#data 0x0130		; addr: CE3405E

data_CE34060:
#data 0x041C		; addr: CE34060

data_CE34062:
#data 0x01A1		; addr: CE34062
#data 0xC1BAAAAA		; addr: CE34064
#data 0x41BAAAAA		; addr: CE34068

#align4
ptr_CE3406C_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE3406C

ptr_CE34070_to_ptr_CE3645C_to_f_code_CE33FB2:
#data ptr_CE3645C_to_f_code_CE33FB2		; addr: CE34070

ptr_CE34074_to_fn_extern_8C05218A:
#data fn_extern_8C05218A		; addr: CE34074

ptr_CE34078_to_fn_extern_8C056DE4:
#data fn_extern_8C056DE4		; addr: CE34078

ptr_CE3407C_to_extern_8C2896B0:
#data extern_8C2896B0		; addr: CE3407C

data_CE34080:
#data 0x41480000		; addr: CE34080

#align4
data_CE34084:
#data 0xC1480000		; addr: CE34084

#align4
data_CE34088:
#data 0x415EDB6D		; addr: CE34088

#align4
ptr_CE3408C_to_fn_extern_8C02FEC4:
#data fn_extern_8C02FEC4		; addr: CE3408C


f_code_CE34090:
mov.l r14,@-r15		; addr: CE34090
sts.l pr,@-r15		; addr: CE34092
add 0xFC,r15		; addr: CE34094
mov.l r5,@r15		; addr: CE34096
mov 0x01,r5 ; r5 set to 0x01		; addr: CE34098
mov.l @(ptr_CE341A4_to_fn_extern_8C02FEC4,pc),r3 ; r3 set to 0x8C02FEC4		; addr: CE3409A
mov r4,r14		; addr: CE3409C
mov 0x07,r6 ; r6 set to 0x07		; addr: CE3409E
jsr @r3		; addr: CE340A0
mov r14,r4		; addr: CE340A2
mov.w @(data_CE34198,pc),r0 ; r0 set to 0x1F5		; addr: CE340A4
mov 0x02,r2 ; r2 set to 0x02		; addr: CE340A6
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE340A8
mov.l @(ptr_CE341A8_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE340AA
mov.b r2,@(r0,r14) 		; addr: CE340AC
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE340AE
mov 0x34,r0 ; r0 set to 0x34		; addr: CE340B0
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE340B2
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???		; addr: CE340B4
mov 0x68,r1 ; r1 set to 0x68		; addr: CE340B6
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE340B8
fadd fr3,fr2		; addr: CE340BA
fmov.s fr2,@(r0,r14) 		; addr: CE340BC
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE340BE
fmov.s @(r0,r14),fr2		; addr: CE340C0
fmov.s @r1,fr3		; addr: CE340C2
fadd fr3,fr2		; addr: CE340C4
fmov.s fr2,@(r0,r14) 		; addr: CE340C6
jsr @r3		; addr: CE340C8
mov r14,r4		; addr: CE340CA
mov.w @(data_CE3419A,pc),r0 ; r0 set to 0x130		; addr: CE340CC
mov.l @(ptr_CE341AC_to_extern_8C26A518,pc),r4 ; r4 set to 0x8C26A518		; addr: CE340CE
mov.w @(r0,r14),r2		; addr: CE340D0
tst r2,r2		; addr: CE340D2
bt l_code_CE340EC		; addr: CE340D4
mova @(data_CE341B0,pc),r0  ; r0 set to 0xCE341B0		; addr: CE340D6
fmov.s @r0,fr3		; addr: CE340D8
mov.w @(data_CE3419C,pc),r0 ; r0 set to 0x8C		; addr: CE340DA
fmov.s @(r0,r4),fr2		; addr: CE340DC
mov 0x34,r0 ; r0 set to 0x34		; addr: CE340DE
fmov.s @(r0,r14),fr1		; addr: CE340E0
fadd fr3,fr2		; addr: CE340E2
fcmp/gt fr1,fr2		; addr: CE340E4
bt l_code_CE3411C		; addr: CE340E6
bra l_code_CE340FE		; addr: CE340E8
nop 		; addr: CE340EA

l_code_CE340EC:
mova @(data_CE341B4,pc),r0  ; r0 init to 0xCE341B4		; addr: CE340EC
fmov.s @r0,fr3		; addr: CE340EE
mov.w @(data_CE3419E,pc),r0 ; r0 set to 0x88		; addr: CE340F0
fmov.s @(r0,r4),fr2		; addr: CE340F2
mov 0x34,r0 ; r0 set to 0x34		; addr: CE340F4
fmov.s @(r0,r14),fr1		; addr: CE340F6
fadd fr3,fr2		; addr: CE340F8
fcmp/gt fr2,fr1		; addr: CE340FA
bt l_code_CE3411C		; addr: CE340FC

l_code_CE340FE:
mov.b @(0x06,r14),r0 		; addr: CE340FE
mov r14,r4		; addr: CE34100
mov 0x03,r5 ; r5 set to 0x03, r5 set to 0x03		; addr: CE34102
add 0x01,r0 ; r0 set to 0x35		; addr: CE34104
mov.b r0,@(0x06,r14) 		; addr: CE34106
mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00		; addr: CE34108
mov.l @r15,r3		; addr: CE3410A
mov.w r0,@(0x1C,r3) 		; addr: CE3410C
mov 0x14,r0 ; r0 set to 0x14, r0 set to 0x14		; addr: CE3410E
mov.w r0,@(0x1C,r14) 		; addr: CE34110
add 0x04,r15		; addr: CE34112
lds.l @r15+,pr 		; addr: CE34114
mov.l @(ptr_CE341B8_to_fn_extern_8C042008,pc),r3 ; r3 set to 0x8C042008, r3 set to 0x8C042008		; addr: CE34116
jmp @r3		; addr: CE34118
mov.l @r15+,r14		; addr: CE3411A

l_code_CE3411C:
add 0x04,r15		; addr: CE3411C
lds.l @r15+,pr 		; addr: CE3411E
rts 		; addr: CE34120
mov.l @r15+,r14		; addr: CE34122
;-------------------------------------------------------------------------------

f_code_CE34124:
mov.l r14,@-r15		; addr: CE34124
sts.l pr,@-r15		; addr: CE34126
add 0xFC,r15		; addr: CE34128
mov.l r5,@r15		; addr: CE3412A
mov 0x01,r5 ; r5 set to 0x01		; addr: CE3412C
mov.l @(ptr_CE341A4_to_fn_extern_8C02FEC4,pc),r3 ; r3 set to 0x8C02FEC4		; addr: CE3412E
mov r4,r14		; addr: CE34130
mov 0x07,r6 ; r6 set to 0x07		; addr: CE34132
jsr @r3		; addr: CE34134
mov r14,r4		; addr: CE34136
mov.l @r15,r2		; addr: CE34138
mov 0x48,r1 ; r1 set to 0x48		; addr: CE3413A
mov.w @(data_CE341A0,pc),r3 ; r3 set to 0x800		; addr: CE3413C
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE3413E
mov.w @(0x1C,r2),r0 		; addr: CE34140
sub r3,r0		; addr: CE34142
mov.w r0,@(0x1C,r2) 		; addr: CE34144
mov.l @r15,r2		; addr: CE34146
mov.w @(0x1C,r2),r0 		; addr: CE34148
mov 0x02,r2 ; r2 set to 0x02		; addr: CE3414A
mov.l r0,@r1		; addr: CE3414C
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE3414E
mov.w @(data_CE34198,pc),r0 ; r0 set to 0x1F5		; addr: CE34150
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE34152
mov.b r2,@(r0,r14) 		; addr: CE34154
mov 0x34,r0 ; r0 set to 0x34		; addr: CE34156
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???		; addr: CE34158
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE3415A
mov 0x68,r1 ; r1 set to 0x68		; addr: CE3415C
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE3415E
mov.l @(ptr_CE341A8_to_fn_extern_8C034DEE,pc),r2 ; r2 set to 0x8C034DEE		; addr: CE34160
fadd fr3,fr2 ; r2 ??? bc r3 is ???		; addr: CE34162
fmov.s fr2,@(r0,r14) 		; addr: CE34164
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE34166
fmov.s @(r0,r14),fr2		; addr: CE34168
fmov.s @r1,fr3		; addr: CE3416A
fadd fr3,fr2		; addr: CE3416C
fmov.s fr2,@(r0,r14) 		; addr: CE3416E
jsr @r2		; addr: CE34170
mov r14,r4		; addr: CE34172
mov.w @(data_CE3419A,pc),r0 ; r0 set to 0x130		; addr: CE34174
mov.l @(ptr_CE341AC_to_extern_8C26A518,pc),r4 ; r4 set to 0x8C26A518		; addr: CE34176
mov.w @(r0,r14),r3		; addr: CE34178
tst r3,r3		; addr: CE3417A
bt l_code_CE341C4		; addr: CE3417C
mov.w @(data_CE3419C,pc),r0 ; r0 set to 0x8C		; addr: CE3417E
fmov.s @(r0,r4),fr4 ; r4 ??		; addr: CE34180
mova @(data_CE341BC,pc),r0  ; r0 set to 0xCE341BC		; addr: CE34182
fmov.s @r0,fr3		; addr: CE34184
mov 0x34,r0 ; r0 set to 0x34		; addr: CE34186
fmov fr4,fr2		; addr: CE34188
fadd fr3,fr2		; addr: CE3418A
fmov.s @(r0,r14),fr1		; addr: CE3418C
fcmp/gt fr1,fr2		; addr: CE3418E
bt l_code_CE34212		; addr: CE34190
mova @(data_CE341C0,pc),r0  ; r0 set to 0xCE341C0		; addr: CE34192
bra l_code_CE341DC		; addr: CE34194
fmov.s @r0,fr3		; addr: CE34196

data_CE34198:
#data 0x01F5		; addr: CE34198

data_CE3419A:
#data 0x0130		; addr: CE3419A

data_CE3419C:
#data 0x008C		; addr: CE3419C

data_CE3419E:
#data 0x0088		; addr: CE3419E

data_CE341A0:
#data 0x0800		; addr: CE341A0
#data 0x0000		; addr: CE341A2

#align4
ptr_CE341A4_to_fn_extern_8C02FEC4:
#data fn_extern_8C02FEC4		; addr: CE341A4

ptr_CE341A8_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE341A8

ptr_CE341AC_to_extern_8C26A518:
#data extern_8C26A518		; addr: CE341AC

data_CE341B0:
#data 0xC2D55555		; addr: CE341B0

#align4
data_CE341B4:
#data 0x42D55555		; addr: CE341B4

#align4
ptr_CE341B8_to_fn_extern_8C042008:
#data fn_extern_8C042008		; addr: CE341B8

data_CE341BC:
#data 0xC2200000		; addr: CE341BC

#align4
data_CE341C0:
#data 0xC0555555		; addr: CE341C0


l_code_CE341C4:
mov.w @(data_CE34294,pc),r0 ; r0 set to 0x88		; addr: CE341C4
fmov.s @(r0,r4),fr4		; addr: CE341C6
mova @(data_CE34298,pc),r0  ; r0 set to 0xCE34298		; addr: CE341C8
fmov.s @r0,fr3		; addr: CE341CA
mov 0x34,r0 ; r0 set to 0x34		; addr: CE341CC
fmov fr4,fr2		; addr: CE341CE
fadd fr3,fr2		; addr: CE341D0
fmov.s @(r0,r14),fr1		; addr: CE341D2
fcmp/gt fr2,fr1		; addr: CE341D4
bt l_code_CE34212		; addr: CE341D6
mova @(data_CE3429C,pc),r0  ; r0 set to 0xCE3429C		; addr: CE341D8
fmov.s @r0,fr3		; addr: CE341DA

l_code_CE341DC:
fadd fr3,fr4		; addr: CE341DC
mov.l @(data_CE342A0,pc),r1 ; r1 set to 0x42092492, r1 set to 0x42092492		; addr: CE341DE
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34		; addr: CE341E0
lds r1,fpul 		; addr: CE341E2
mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00		; addr: CE341E4
mov 0x15,r5 ; r5 set to 0x15, r5 set to 0x15		; addr: CE341E6
fmov.s fr4,@(r0,r14) 		; addr: CE341E8
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38		; addr: CE341EA
fmov.s @(r0,r14),fr2		; addr: CE341EC
mov 0x1C,r6 ; r6 set to 0x1C, r6 set to 0x1C		; addr: CE341EE
fsts fpul,fr3		; addr: CE341F0
fadd fr3,fr2		; addr: CE341F2
fmov.s fr2,@(r0,r14) 		; addr: CE341F4
mov.b @(0x06,r14),r0 		; addr: CE341F6
add 0x01,r0 ; r0 set to 0x39, r0 set to 0x39		; addr: CE341F8
mov.b r0,@(0x06,r14) 		; addr: CE341FA
mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48		; addr: CE341FC
mov.l r3,@(r0,r14) 		; addr: CE341FE
mov.l @(ptr_CE342A4_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8C		; addr: CE34200
jsr @r3		; addr: CE34202
mov r14,r4		; addr: CE34204
mov r14,r4		; addr: CE34206
add 0x04,r15		; addr: CE34208
lds.l @r15+,pr 		; addr: CE3420A
mov.l @(ptr_CE342A8_to_fn_extern_8C053082,pc),r2 ; r2 set to 0x8C053082, r2 set to 0x8C053082		; addr: CE3420C
jmp @r2		; addr: CE3420E
mov.l @r15+,r14		; addr: CE34210

l_code_CE34212:
add 0x04,r15		; addr: CE34212
lds.l @r15+,pr 		; addr: CE34214
rts 		; addr: CE34216
mov.l @r15+,r14		; addr: CE34218
;-------------------------------------------------------------------------------

f_code_CE3421A:
mov.l r14,@-r15		; addr: CE3421A
sts.l pr,@-r15		; addr: CE3421C
add 0xFC,r15		; addr: CE3421E
mov.l r5,@r15		; addr: CE34220
mov 0x01,r5 ; r5 set to 0x01		; addr: CE34222
mov.l @(ptr_CE342AC_to_fn_extern_8C02FEC4,pc),r3 ; r3 set to 0x8C02FEC4		; addr: CE34224
mov r4,r14		; addr: CE34226
mov 0x07,r6 ; r6 set to 0x07		; addr: CE34228
jsr @r3		; addr: CE3422A
mov r14,r4		; addr: CE3422C
mov.w @(data_CE34296,pc),r0 ; r0 set to 0x1F5		; addr: CE3422E
mov 0x02,r2 ; r2 set to 0x02		; addr: CE34230
mov 0x60,r1 ; r1 set to 0x60		; addr: CE34232
mov.l @(ptr_CE342B0_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE34234
mov.b r2,@(r0,r14) 		; addr: CE34236
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE34238
mov 0x38,r0 ; r0 set to 0x38		; addr: CE3423A
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE3423C
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???		; addr: CE3423E
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE34240
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE34242
fadd fr3,fr2		; addr: CE34244
fmov.s fr2,@(r0,r14) 		; addr: CE34246
mov 0x60,r0 ; r0 set to 0x60		; addr: CE34248
fmov.s @(r0,r14),fr2		; addr: CE3424A
fmov.s @r1,fr3		; addr: CE3424C
fadd fr3,fr2		; addr: CE3424E
fmov.s fr2,@(r0,r14) 		; addr: CE34250
jsr @r3		; addr: CE34252
mov r14,r4		; addr: CE34254
bsr l_code_CE3477E		; addr: CE34256
mov r14,r4		; addr: CE34258
extu.b r0,r0 ; r0 set to 0x60		; addr: CE3425A
tst r0,r0		; addr: CE3425C
bf l_code_CE3428C		; addr: CE3425E
mov.l @(ptr_CE342B8_to_extern_8C26A5A8,pc),r3 ; r3 set to 0x8C26A5A8		; addr: CE34260
mova @(data_CE342B4,pc),r0  ; r0 set to 0xCE342B4		; addr: CE34262
fmov.s @r0,fr3 ; r3 ??		; addr: CE34264
mov 0x38,r0 ; r0 set to 0x38		; addr: CE34266
fmov.s @r3,fr2		; addr: CE34268
fmov.s @(r0,r14),fr1		; addr: CE3426A
fadd fr3,fr2		; addr: CE3426C
fcmp/gt fr1,fr2		; addr: CE3426E
bt l_code_CE3428C		; addr: CE34270
mov.b @(0x06,r14),r0 		; addr: CE34272
mov r14,r4		; addr: CE34274
mov 0x03,r5 ; r5 set to 0x03		; addr: CE34276
add 0x01,r0 ; r0 set to 0x39		; addr: CE34278
mov.b r0,@(0x06,r14) 		; addr: CE3427A
mov 0x00,r0 ; r0 set to 0x00		; addr: CE3427C
mov.l @r15,r3		; addr: CE3427E
mov.w r0,@(0x1C,r3) 		; addr: CE34280
add 0x04,r15		; addr: CE34282
lds.l @r15+,pr 		; addr: CE34284
mov.l @(ptr_CE342BC_to_fn_extern_8C042008,pc),r3 ; r3 set to 0x8C042008		; addr: CE34286
jmp @r3		; addr: CE34288
mov.l @r15+,r14		; addr: CE3428A

l_code_CE3428C:
add 0x04,r15		; addr: CE3428C
lds.l @r15+,pr 		; addr: CE3428E
rts 		; addr: CE34290
mov.l @r15+,r14		; addr: CE34292
;-------------------------------------------------------------------------------

data_CE34294:
#data 0x0088		; addr: CE34294

data_CE34296:
#data 0x01F5		; addr: CE34296

#align4
data_CE34298:
#data 0x42200000		; addr: CE34298

#align4
data_CE3429C:
#data 0x40555555		; addr: CE3429C

#align4
data_CE342A0:
#data 0x42092492		; addr: CE342A0

#align4
ptr_CE342A4_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE342A4

ptr_CE342A8_to_fn_extern_8C053082:
#data fn_extern_8C053082		; addr: CE342A8

ptr_CE342AC_to_fn_extern_8C02FEC4:
#data fn_extern_8C02FEC4		; addr: CE342AC

ptr_CE342B0_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE342B0

data_CE342B4:
#data 0xC3092492		; addr: CE342B4

#align4
ptr_CE342B8_to_extern_8C26A5A8:
#data extern_8C26A5A8		; addr: CE342B8

ptr_CE342BC_to_fn_extern_8C042008:
#data fn_extern_8C042008		; addr: CE342BC


f_code_CE342C0:
mov.l r14,@-r15		; addr: CE342C0
sts.l pr,@-r15		; addr: CE342C2
add 0xFC,r15		; addr: CE342C4
mov.l r5,@r15		; addr: CE342C6
mov 0x01,r5 ; r5 set to 0x01		; addr: CE342C8
mov.l @(ptr_CE343F4_to_fn_extern_8C02FEC4,pc),r3 ; r3 set to 0x8C02FEC4		; addr: CE342CA
mov r4,r14		; addr: CE342CC
mov 0x07,r6 ; r6 set to 0x07		; addr: CE342CE
jsr @r3		; addr: CE342D0
mov r14,r4		; addr: CE342D2
mov.l @r15,r2		; addr: CE342D4
mov 0x48,r1 ; r1 set to 0x48		; addr: CE342D6
mov.w @(data_CE343E8,pc),r3 ; r3 set to 0x800		; addr: CE342D8
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE342DA
mov.w @(0x1C,r2),r0 		; addr: CE342DC
sub r3,r0		; addr: CE342DE
mov.w r0,@(0x1C,r2) 		; addr: CE342E0
mov.l @r15,r2		; addr: CE342E2
mov.w @(0x1C,r2),r0 		; addr: CE342E4
mov 0x02,r2 ; r2 set to 0x02		; addr: CE342E6
mov.l r0,@r1		; addr: CE342E8
mov 0x60,r1 ; r1 set to 0x60		; addr: CE342EA
mov.w @(data_CE343EA,pc),r0 ; r0 set to 0x1F5		; addr: CE342EC
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE342EE
mov.b r2,@(r0,r14) 		; addr: CE342F0
mov 0x38,r0 ; r0 set to 0x38		; addr: CE342F2
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???		; addr: CE342F4
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE342F6
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE342F8
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE342FA
mov.l @(ptr_CE343F8_to_fn_extern_8C034DEE,pc),r2 ; r2 set to 0x8C034DEE		; addr: CE342FC
fadd fr3,fr2 ; r2 ??? bc r3 is ???		; addr: CE342FE
fmov.s fr2,@(r0,r14) 		; addr: CE34300
mov 0x60,r0 ; r0 set to 0x60		; addr: CE34302
fmov.s @(r0,r14),fr2		; addr: CE34304
fmov.s @r1,fr3		; addr: CE34306
fadd fr3,fr2		; addr: CE34308
fmov.s fr2,@(r0,r14) 		; addr: CE3430A
jsr @r2		; addr: CE3430C
mov r14,r4		; addr: CE3430E
bsr l_code_CE3477E		; addr: CE34310
mov r14,r4		; addr: CE34312
extu.b r0,r0 ; r0 set to 0x60		; addr: CE34314
tst r0,r0		; addr: CE34316
bf l_code_CE3437A		; addr: CE34318
mov.w @(data_CE343EC,pc),r0 ; r0 set to 0x90		; addr: CE3431A
mov.l @(ptr_CE343FC_to_extern_8C26A518,pc),r4 ; r4 set to 0x8C26A518		; addr: CE3431C
fmov.s @(r0,r4),fr4 ; r4 ??		; addr: CE3431E
mova @(data_CE34400,pc),r0  ; r0 set to 0xCE34400		; addr: CE34320
fmov.s @r0,fr3		; addr: CE34322
mov 0x38,r0 ; r0 set to 0x38		; addr: CE34324
fmov fr4,fr2		; addr: CE34326
fadd fr3,fr2		; addr: CE34328
fmov.s @(r0,r14),fr1		; addr: CE3432A
fcmp/gt fr1,fr2		; addr: CE3432C
bt l_code_CE3437A		; addr: CE3432E
fldi0 fr3		; addr: CE34330
fadd fr3,fr4		; addr: CE34332
fmov.s fr4,@(r0,r14) 		; addr: CE34334
mov.w @(data_CE343EE,pc),r0 ; r0 set to 0x130		; addr: CE34336
mov.w @(r0,r14),r3		; addr: CE34338
tst r3,r3		; addr: CE3433A
bt l_code_CE34348		; addr: CE3433C
mova @(data_CE34404,pc),r0  ; r0 set to 0xCE34404		; addr: CE3433E
fmov.s @r0,fr2		; addr: CE34340
mov.w @(data_CE343F0,pc),r0 ; r0 set to 0x8C		; addr: CE34342
bra l_code_CE3434E		; addr: CE34344
nop 		; addr: CE34346

l_code_CE34348:
mova @(data_CE34408,pc),r0  ; r0 init to 0xCE34408		; addr: CE34348
fmov.s @r0,fr2		; addr: CE3434A
mov.w @(data_CE343F2,pc),r0 ; r0 set to 0x88		; addr: CE3434C

l_code_CE3434E:
fmov.s @(r0,r4),fr1		; addr: CE3434E
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34		; addr: CE34350
mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00		; addr: CE34352
mov r14,r4		; addr: CE34354
fadd fr2,fr1		; addr: CE34356
mov 0x15,r5 ; r5 set to 0x15, r5 set to 0x15		; addr: CE34358
mov 0x16,r6 ; r6 set to 0x16, r6 set to 0x16		; addr: CE3435A
fmov.s fr1,@(r0,r14) 		; addr: CE3435C
mov.b @(0x06,r14),r0 		; addr: CE3435E
add 0x01,r0 ; r0 set to 0x35, r0 set to 0x35		; addr: CE34360
mov.b r0,@(0x06,r14) 		; addr: CE34362
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C		; addr: CE34364
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???		; addr: CE34366
fneg fr3		; addr: CE34368
fmov.s fr3,@(r0,r14) 		; addr: CE3436A
mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48		; addr: CE3436C
mov.l r3,@(r0,r14) 		; addr: CE3436E
add 0x04,r15		; addr: CE34370
lds.l @r15+,pr 		; addr: CE34372
mov.l @(ptr_CE3440C_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8C		; addr: CE34374
jmp @r3		; addr: CE34376
mov.l @r15+,r14		; addr: CE34378

l_code_CE3437A:
add 0x04,r15		; addr: CE3437A
lds.l @r15+,pr 		; addr: CE3437C
rts 		; addr: CE3437E
mov.l @r15+,r14		; addr: CE34380
;-------------------------------------------------------------------------------

f_code_CE34382:
mov.l r14,@-r15		; addr: CE34382
sts.l pr,@-r15		; addr: CE34384
add 0xFC,r15		; addr: CE34386
mov.l r5,@r15		; addr: CE34388
mov 0x01,r5 ; r5 set to 0x01		; addr: CE3438A
mov.l @(ptr_CE343F4_to_fn_extern_8C02FEC4,pc),r3 ; r3 set to 0x8C02FEC4		; addr: CE3438C
mov r4,r14		; addr: CE3438E
mov 0x07,r6 ; r6 set to 0x07		; addr: CE34390
jsr @r3		; addr: CE34392
mov r14,r4		; addr: CE34394
mov.w @(data_CE343EA,pc),r0 ; r0 set to 0x1F5		; addr: CE34396
mov 0x02,r2 ; r2 set to 0x02		; addr: CE34398
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE3439A
mov.l @(ptr_CE343F8_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE3439C
mov.b r2,@(r0,r14) 		; addr: CE3439E
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE343A0
mov 0x34,r0 ; r0 set to 0x34		; addr: CE343A2
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE343A4
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???		; addr: CE343A6
mov 0x68,r1 ; r1 set to 0x68		; addr: CE343A8
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE343AA
fadd fr3,fr2		; addr: CE343AC
fmov.s fr2,@(r0,r14) 		; addr: CE343AE
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE343B0
fmov.s @(r0,r14),fr2		; addr: CE343B2
fmov.s @r1,fr3		; addr: CE343B4
fadd fr3,fr2		; addr: CE343B6
fmov.s fr2,@(r0,r14) 		; addr: CE343B8
jsr @r3		; addr: CE343BA
mov r14,r4		; addr: CE343BC
bsr l_code_CE3477E		; addr: CE343BE
mov r14,r4		; addr: CE343C0
extu.b r0,r0 ; r0 set to 0x5C		; addr: CE343C2
tst r0,r0		; addr: CE343C4
bf l_code_CE34440		; addr: CE343C6
mov.w @(data_CE343EE,pc),r0 ; r0 set to 0x130		; addr: CE343C8
mov.l @(ptr_CE343FC_to_extern_8C26A518,pc),r4 ; r4 set to 0x8C26A518		; addr: CE343CA
mov.w @(r0,r14),r2		; addr: CE343CC
tst r2,r2		; addr: CE343CE
bt l_code_CE34414		; addr: CE343D0
mova @(data_CE34410,pc),r0  ; r0 set to 0xCE34410		; addr: CE343D2
fmov.s @r0,fr3		; addr: CE343D4
mov.w @(data_CE343F2,pc),r0 ; r0 set to 0x88		; addr: CE343D6
fmov.s @(r0,r4),fr2		; addr: CE343D8
mov 0x34,r0 ; r0 set to 0x34		; addr: CE343DA
fmov.s @(r0,r14),fr1		; addr: CE343DC
fadd fr3,fr2		; addr: CE343DE
fcmp/gt fr2,fr1		; addr: CE343E0
bt l_code_CE34440		; addr: CE343E2
bra l_code_CE34426		; addr: CE343E4
nop 		; addr: CE343E6

data_CE343E8:
#data 0x0800		; addr: CE343E8

data_CE343EA:
#data 0x01F5		; addr: CE343EA

data_CE343EC:
#data 0x0090		; addr: CE343EC

data_CE343EE:
#data 0x0130		; addr: CE343EE

data_CE343F0:
#data 0x008C		; addr: CE343F0

data_CE343F2:
#data 0x0088		; addr: CE343F2

#align4
ptr_CE343F4_to_fn_extern_8C02FEC4:
#data fn_extern_8C02FEC4		; addr: CE343F4

ptr_CE343F8_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE343F8

ptr_CE343FC_to_extern_8C26A518:
#data extern_8C26A518		; addr: CE343FC

data_CE34400:
#data 0xC24DB6DB		; addr: CE34400

#align4
data_CE34404:
#data 0xC2200000		; addr: CE34404

#align4
data_CE34408:
#data 0x42200000		; addr: CE34408

#align4
ptr_CE3440C_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE3440C

data_CE34410:
#data 0x42D55555		; addr: CE34410


l_code_CE34414:
mova @(data_CE3452C,pc),r0  ; r0 init to 0xCE3452C		; addr: CE34414
fmov.s @r0,fr3		; addr: CE34416
mov.w @(data_CE34520,pc),r0 ; r0 set to 0x8C		; addr: CE34418
fmov.s @(r0,r4),fr2		; addr: CE3441A
mov 0x34,r0 ; r0 set to 0x34		; addr: CE3441C
fmov.s @(r0,r14),fr1		; addr: CE3441E
fadd fr3,fr2		; addr: CE34420
fcmp/gt fr1,fr2		; addr: CE34422
bt l_code_CE34440		; addr: CE34424

l_code_CE34426:
mov.b @(0x06,r14),r0 		; addr: CE34426
mov r14,r4		; addr: CE34428
mov 0x03,r5 ; r5 set to 0x03, r5 set to 0x03		; addr: CE3442A
add 0x01,r0 ; r0 set to 0x35		; addr: CE3442C
mov.b r0,@(0x06,r14) 		; addr: CE3442E
mov 0x00,r0 ; r0 set to 0x00, r0 set to 0x00		; addr: CE34430
mov.l @r15,r3		; addr: CE34432
mov.w r0,@(0x1C,r3) 		; addr: CE34434
add 0x04,r15		; addr: CE34436
lds.l @r15+,pr 		; addr: CE34438
mov.l @(ptr_CE34530_to_fn_extern_8C042008,pc),r3 ; r3 set to 0x8C042008, r3 set to 0x8C042008		; addr: CE3443A
jmp @r3		; addr: CE3443C
mov.l @r15+,r14		; addr: CE3443E

l_code_CE34440:
add 0x04,r15		; addr: CE34440
lds.l @r15+,pr 		; addr: CE34442
rts 		; addr: CE34444
mov.l @r15+,r14		; addr: CE34446
;-------------------------------------------------------------------------------

f_code_CE34448:
mov.l r14,@-r15		; addr: CE34448
mov 0x07,r6 ; r6 set to 0x07		; addr: CE3444A
mov.l r13,@-r15		; addr: CE3444C
mov r4,r14		; addr: CE3444E
mov.l r12,@-r15		; addr: CE34450
mov r5,r13		; addr: CE34452
sts.l pr,@-r15		; addr: CE34454
mov.l @(ptr_CE34534_to_fn_extern_8C02FEC4,pc),r3 ; r3 set to 0x8C02FEC4		; addr: CE34456
jsr @r3		; addr: CE34458
mov 0x01,r5 ; r5 set to 0x01		; addr: CE3445A
mov.w @(0x1C,r13),r0 		; addr: CE3445C
mov 0x48,r1 ; r1 set to 0x48		; addr: CE3445E
mov.w @(data_CE34522,pc),r3 ; r3 set to 0x800		; addr: CE34460
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE34462
mov 0x02,r2 ; r2 set to 0x02		; addr: CE34464
sub r3,r0		; addr: CE34466
mov.w r0,@(0x1C,r13) 		; addr: CE34468
mov.w @(0x1C,r13),r0 		; addr: CE3446A
mov.l r0,@r1		; addr: CE3446C
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE3446E
mov.w @(data_CE34524,pc),r0 ; r0 set to 0x1F5		; addr: CE34470
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE34472
mov.b r2,@(r0,r14) 		; addr: CE34474
mov 0x34,r0 ; r0 set to 0x34		; addr: CE34476
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???		; addr: CE34478
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE3447A
mov 0x68,r1 ; r1 set to 0x68		; addr: CE3447C
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE3447E
mov.l @(ptr_CE34538_to_fn_extern_8C034DEE,pc),r2 ; r2 set to 0x8C034DEE		; addr: CE34480
fadd fr3,fr2 ; r2 ??? bc r3 is ???		; addr: CE34482
fmov.s fr2,@(r0,r14) 		; addr: CE34484
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE34486
fmov.s @(r0,r14),fr2		; addr: CE34488
fmov.s @r1,fr3		; addr: CE3448A
fadd fr3,fr2		; addr: CE3448C
fmov.s fr2,@(r0,r14) 		; addr: CE3448E
jsr @r2		; addr: CE34490
mov r14,r4		; addr: CE34492
bsr l_code_CE3477E		; addr: CE34494
mov r14,r4		; addr: CE34496
extu.b r0,r0 ; r0 set to 0x5C		; addr: CE34498
tst r0,r0		; addr: CE3449A
bf l_code_CE34516		; addr: CE3449C
mov.w @(data_CE34526,pc),r0 ; r0 set to 0x130		; addr: CE3449E
mov.l @(ptr_CE3453C_to_extern_8C26A518,pc),r4 ; r4 set to 0x8C26A518		; addr: CE344A0
mov.w @(r0,r14),r3		; addr: CE344A2
tst r3,r3		; addr: CE344A4
bt data_CE344C2		; addr: CE344A6
mov.w @(data_CE34528,pc),r0 ; r0 set to 0x88		; addr: CE344A8
fmov.s @(r0,r4),fr4 ; r4 ??		; addr: CE344AA
mova @(data_CE34540,pc),r0  ; r0 set to 0xCE34540		; addr: CE344AC
fmov.s @r0,fr3		; addr: CE344AE
mov 0x34,r0 ; r0 set to 0x34		; addr: CE344B0
fmov fr4,fr2		; addr: CE344B2
fadd fr3,fr2		; addr: CE344B4
fmov.s @(r0,r14),fr1		; addr: CE344B6
fcmp/gt fr2,fr1		; addr: CE344B8
bt l_code_CE34516		; addr: CE344BA
mova @(data_CE34544,pc),r0  ; r0 set to 0xCE34544		; addr: CE344BC
bra data_CE344DA		; addr: CE344BE
fmov.s @r0,fr3		; addr: CE344C0

data_CE344C2:
#data 0x902D		; addr: CE344C2
#data 0xC720F446		; addr: CE344C4
#data 0xE034F308		; addr: CE344C8
#data 0xF230F24C		; addr: CE344CC
#data 0xF215F1E6		; addr: CE344D0
#data 0xC71D891F		; addr: CE344D4
#data 0xF308		; addr: CE344D8

data_CE344DA:
#data 0xF430		; addr: CE344DA
#data 0xD11CE034		; addr: CE344DC
#data 0xD31CEC00		; addr: CE344E0
#data 0x415AE515		; addr: CE344E4
#data 0xFE47E61D		; addr: CE344E8
#data 0xF30D84E6		; addr: CE344EC
#data 0x80E67001		; addr: CE344F0
#data 0xF2E6E038		; addr: CE344F4
#data 0xFE27F231		; addr: CE344F8
#data 0xF2E6E060		; addr: CE344FC
#data 0xFE27F24D		; addr: CE34500
#data 0x0EC49011		; addr: CE34504
#data 0x0EC6E048		; addr: CE34508
#data 0x64E3430B		; addr: CE3450C
#data 0x000960C3		; addr: CE34510
#data 0x81DE		; addr: CE34514


l_code_CE34516:
lds.l @r15+,pr 		; addr: CE34516
mov.l @r15+,r12		; addr: CE34518
mov.l @r15+,r13		; addr: CE3451A
rts 		; addr: CE3451C
mov.l @r15+,r14		; addr: CE3451E
;-------------------------------------------------------------------------------

data_CE34520:
#data 0x008C		; addr: CE34520

data_CE34522:
#data 0x0800		; addr: CE34522

data_CE34524:
#data 0x01F5		; addr: CE34524

data_CE34526:
#data 0x0130		; addr: CE34526

data_CE34528:
#data 0x0088		; addr: CE34528
#data 0x01FD		; addr: CE3452A

#align4
data_CE3452C:
#data 0xC2D55555		; addr: CE3452C

#align4
ptr_CE34530_to_fn_extern_8C042008:
#data fn_extern_8C042008		; addr: CE34530

ptr_CE34534_to_fn_extern_8C02FEC4:
#data fn_extern_8C02FEC4		; addr: CE34534

ptr_CE34538_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE34538

ptr_CE3453C_to_extern_8C26A518:
#data extern_8C26A518		; addr: CE3453C

data_CE34540:
#data 0x42200000		; addr: CE34540

#align4
data_CE34544:
#data 0x40555555		; addr: CE34544
#data 0xC2200000		; addr: CE34548
#data 0xC0555555		; addr: CE3454C
#data 0x424DB6DB		; addr: CE34550
#data fn_extern_8C034E8C		; addr: CE34554

#align4
data_CE34558:
#data 0xE6072FE6		; addr: CE34558
#data 0xD33D4F22		; addr: CE3455C
#data 0x430B6E43		; addr: CE34560
#data 0xE160E501		; addr: CE34564
#data 0x31ECD33B		; addr: CE34568
#data 0xF318E038		; addr: CE3456C
#data 0xE16CF2E6		; addr: CE34570
#data 0xF23031EC		; addr: CE34574
#data 0xE060FE27		; addr: CE34578
#data 0xF318F2E6		; addr: CE3457C
#data 0xFE27F230		; addr: CE34580
#data 0x64E3430B		; addr: CE34584
#data 0x64E3B0F9		; addr: CE34588
#data 0x2008600C		; addr: CE3458C
#data 0xC7328B0B		; addr: CE34590
#data 0x905AF308		; addr: CE34594
#data 0xE038F2E6		; addr: CE34598
#data 0xF230F1E6		; addr: CE3459C
#data 0x8902F125		; addr: CE345A0
#data 0x700184E6		; addr: CE345A4
#data 0x80E6		; addr: CE345A8

data_CE345AA:
#data 0x4F26		; addr: CE345AA
#data 0x6EF6000B		; addr: CE345AC
;-------------------------------------------------------------------------------

f_code_CE345B0:
mov.l r14,@-r15		; addr: CE345B0
mov 0x07,r6 ; r6 set to 0x07		; addr: CE345B2
mov.l r13,@-r15		; addr: CE345B4
mov r4,r14		; addr: CE345B6
sts.l pr,@-r15		; addr: CE345B8
mov.l @(ptr_CE34654_to_fn_extern_8C02FEC4,pc),r3 ; r3 set to 0x8C02FEC4		; addr: CE345BA
mov r5,r13		; addr: CE345BC
jsr @r3		; addr: CE345BE
mov 0x01,r5 ; r5 set to 0x01		; addr: CE345C0
mov.w @(0x1C,r13),r0 		; addr: CE345C2
mov 0x48,r1 ; r1 set to 0x48		; addr: CE345C4
mov.w @(data_CE34650,pc),r3 ; r3 set to 0x800		; addr: CE345C6
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE345C8
mov.l @(ptr_CE34658_to_fn_extern_8C034DEE,pc),r2 ; r2 set to 0x8C034DEE		; addr: CE345CA
sub r3,r0		; addr: CE345CC
mov.w r0,@(0x1C,r13) 		; addr: CE345CE
mov.w @(0x1C,r13),r0 		; addr: CE345D0
mov.l r0,@r1		; addr: CE345D2
mov 0x60,r1 ; r1 set to 0x60		; addr: CE345D4
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE345D6
mov 0x38,r0 ; r0 set to 0x38		; addr: CE345D8
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE345DA
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???		; addr: CE345DC
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE345DE
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE345E0
fadd fr3,fr2		; addr: CE345E2
fmov.s fr2,@(r0,r14) 		; addr: CE345E4
mov 0x60,r0 ; r0 set to 0x60		; addr: CE345E6
fmov.s @(r0,r14),fr2		; addr: CE345E8
fmov.s @r1,fr3		; addr: CE345EA
fadd fr3,fr2		; addr: CE345EC
fmov.s fr2,@(r0,r14) 		; addr: CE345EE
jsr @r2		; addr: CE345F0
mov r14,r4		; addr: CE345F2
bsr l_code_CE3477E		; addr: CE345F4
mov r14,r4		; addr: CE345F6
extu.b r0,r0 ; r0 set to 0x60		; addr: CE345F8
tst r0,r0		; addr: CE345FA
bf l_code_CE34646		; addr: CE345FC
mova @(data_CE34660,pc),r0  ; r0 set to 0xCE34660		; addr: CE345FE
fmov.s @r0,fr3		; addr: CE34600
mov.w @(data_CE3464E,pc),r0 ; r0 set to 0x41C		; addr: CE34602
fmov.s @(r0,r14),fr2		; addr: CE34604
mov 0x38,r0 ; r0 set to 0x38		; addr: CE34606
fmov.s @(r0,r14),fr1		; addr: CE34608
fadd fr3,fr2		; addr: CE3460A
fcmp/gt fr2,fr1		; addr: CE3460C
bt l_code_CE34646		; addr: CE3460E
mov.w @(data_CE34652,pc),r0 ; r0 set to 0x1F9		; addr: CE34610
mov 0x00,r4 ; r4 set to 0x00		; addr: CE34612
mov.b r4,@(r0,r14) 		; addr: CE34614
mov.w @(data_CE3464E,pc),r0 ; r0 set to 0x41C		; addr: CE34616
fmov.s @(r0,r14),fr3		; addr: CE34618
mov 0x38,r0 ; r0 set to 0x38		; addr: CE3461A
fmov.s fr3,@(r0,r14) 		; addr: CE3461C
mov r4,r0 ; r0 set to 0x00		; addr: CE3461E
nop 		; addr: CE34620
mov.w r0,@(0x1C,r13) 		; addr: CE34622
mov 0x48,r0 ; r0 set to 0x48		; addr: CE34624
mov.l @(ptr_CE34664_to_fn_extern_8C042008,pc),r3 ; r3 set to 0x8C042008		; addr: CE34626
mov 0x03,r5 ; r5 set to 0x03		; addr: CE34628
mov.l r4,@(r0,r14) 		; addr: CE3462A
jsr @r3		; addr: CE3462C
mov r14,r4 ; r4 ??? bc r14 is ???		; addr: CE3462E
mov.l @(ptr_CE34654_to_fn_extern_8C02FEC4,pc),r2 ; r2 set to 0x8C02FEC4		; addr: CE34630
mov 0x00,r6 ; r6 set to 0x00		; addr: CE34632
mov r6,r5 ; r5 set to 0x00		; addr: CE34634
jsr @r2		; addr: CE34636
mov r14,r4		; addr: CE34638
lds.l @r15+,pr 		; addr: CE3463A
mov.l @(ptr_CE34668_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE3463C
mov r14,r4		; addr: CE3463E
mov.l @r15+,r13		; addr: CE34640
jmp @r3		; addr: CE34642
mov.l @r15+,r14		; addr: CE34644

l_code_CE34646:
lds.l @r15+,pr 		; addr: CE34646
mov.l @r15+,r13		; addr: CE34648
rts 		; addr: CE3464A
mov.l @r15+,r14		; addr: CE3464C
;-------------------------------------------------------------------------------

data_CE3464E:
#data 0x041C		; addr: CE3464E

data_CE34650:
#data 0x0800		; addr: CE34650

data_CE34652:
#data 0x01F9		; addr: CE34652

#align4
ptr_CE34654_to_fn_extern_8C02FEC4:
#data fn_extern_8C02FEC4		; addr: CE34654

ptr_CE34658_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE34658
#data 0x42CDB6DB		; addr: CE3465C

#align4
data_CE34660:
#data 0x424DB6DB		; addr: CE34660

#align4
ptr_CE34664_to_fn_extern_8C042008:
#data fn_extern_8C042008		; addr: CE34664

ptr_CE34668_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE34668

data_CE3466C:
#data 0xE15C2FE6		; addr: CE3466C
#data 0x31EC6E43		; addr: CE34670
#data 0xD34EE034		; addr: CE34674
#data 0xF2E64F22		; addr: CE34678
#data 0xE168F318		; addr: CE3467C
#data 0xF23031EC		; addr: CE34680
#data 0xE05CFE27		; addr: CE34684
#data 0xE160F318		; addr: CE34688
#data 0x31ECF2E6		; addr: CE3468C
#data 0xFE27F230		; addr: CE34690
#data 0xF2E6E038		; addr: CE34694
#data 0xE16CF318		; addr: CE34698
#data 0xF23031EC		; addr: CE3469C
#data 0xE060FE27		; addr: CE346A0
#data 0xF318F2E6		; addr: CE346A4
#data 0xFE27F230		; addr: CE346A8
#data 0x64E3430B		; addr: CE346AC
#data 0x4011600E		; addr: CE346B0
#data 0x84E68902		; addr: CE346B4
#data 0x80E67001		; addr: CE346B8

#align4
data_CE346BC:
#data 0xF3E69074		; addr: CE346BC
#data 0xF2E6E038		; addr: CE346C0
#data 0x8917F235		; addr: CE346C4
#data 0xE300906E		; addr: CE346C8
#data 0xE038F3E6		; addr: CE346CC
#data 0x906AFE37		; addr: CE346D0
#data 0xD3370E34		; addr: CE346D4
#data 0x64E3430B		; addr: CE346D8
#data 0xF48DE05C		; addr: CE346DC
#data 0xE060FE47		; addr: CE346E0
#data 0xE068FE47		; addr: CE346E4
#data 0xE06CFE47		; addr: CE346E8
#data 0x64E3D332		; addr: CE346EC
#data 0x4F26FE47		; addr: CE346F0
#data 0x6EF6432B		; addr: CE346F4

#align4
data_CE346F8:
#data 0x000B4F26		; addr: CE346F8
#data 0x6EF6		; addr: CE346FC
;-------------------------------------------------------------------------------

f_code_CE346FE:
mov.l r14,@-r15		; addr: CE346FE
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE34700
mov r4,r14		; addr: CE34702
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE34704
mov 0x34,r0 ; r0 set to 0x34		; addr: CE34706
sts.l pr,@-r15		; addr: CE34708
fmov.s @(r0,r14),fr2		; addr: CE3470A
fmov.s @r1,fr3		; addr: CE3470C
mov 0x68,r1 ; r1 set to 0x68		; addr: CE3470E
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE34710
fadd fr3,fr2		; addr: CE34712
fmov.s fr2,@(r0,r14) 		; addr: CE34714
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE34716
fmov.s @r1,fr3		; addr: CE34718
mov 0x60,r1 ; r1 set to 0x60		; addr: CE3471A
fmov.s @(r0,r14),fr2		; addr: CE3471C
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE3471E
fadd fr3,fr2		; addr: CE34720
fmov.s fr2,@(r0,r14) 		; addr: CE34722
mov 0x38,r0 ; r0 set to 0x38		; addr: CE34724
fmov.s @(r0,r14),fr2		; addr: CE34726
fmov.s @r1,fr3		; addr: CE34728
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE3472A
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE3472C
fadd fr3,fr2		; addr: CE3472E
fmov.s fr2,@(r0,r14) 		; addr: CE34730
mov 0x60,r0 ; r0 set to 0x60		; addr: CE34732
fmov.s @(r0,r14),fr2		; addr: CE34734
fmov.s @r1,fr3		; addr: CE34736
fadd fr3,fr2		; addr: CE34738
fmov.s fr2,@(r0,r14) 		; addr: CE3473A
mov.w @(data_CE347A8,pc),r0 ; r0 set to 0x41C		; addr: CE3473C
fmov.s @(r0,r14),fr3		; addr: CE3473E
mov 0x38,r0 ; r0 set to 0x38		; addr: CE34740
fmov.s @(r0,r14),fr2		; addr: CE34742
fcmp/gt fr3,fr2		; addr: CE34744
bt l_code_CE34778		; addr: CE34746
mov.w @(data_CE347A8,pc),r0 ; r0 set to 0x41C		; addr: CE34748
mov 0x00,r3 ; r3 set to 0x00		; addr: CE3474A
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???		; addr: CE3474C
mov 0x38,r0 ; r0 set to 0x38		; addr: CE3474E
fmov.s fr3,@(r0,r14) 		; addr: CE34750
mov.w @(data_CE347AA,pc),r0 ; r0 set to 0x1F9		; addr: CE34752
mov.b r3,@(r0,r14) 		; addr: CE34754
mov.l @(ptr_CE347B4_to_fn_extern_8C0511B4,pc),r3 ; r3 set to 0x8C0511B4		; addr: CE34756
jsr @r3		; addr: CE34758
mov r14,r4		; addr: CE3475A
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE3475C
fldi0 fr4		; addr: CE3475E
fmov.s fr4,@(r0,r14) 		; addr: CE34760
mov 0x60,r0 ; r0 set to 0x60		; addr: CE34762
fmov.s fr4,@(r0,r14) 		; addr: CE34764
mov 0x68,r0 ; r0 set to 0x68		; addr: CE34766
fmov.s fr4,@(r0,r14) 		; addr: CE34768
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE3476A
mov.l @(ptr_CE347B8_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE3476C
mov r14,r4		; addr: CE3476E
fmov.s fr4,@(r0,r14) 		; addr: CE34770
lds.l @r15+,pr 		; addr: CE34772
jmp @r3		; addr: CE34774
mov.l @r15+,r14		; addr: CE34776

l_code_CE34778:
lds.l @r15+,pr 		; addr: CE34778
rts 		; addr: CE3477A
mov.l @r15+,r14		; addr: CE3477C
;-------------------------------------------------------------------------------

l_code_CE3477E:
mov.l r14,@-r15		; addr: CE3477E
mov r4,r14		; addr: CE34780
mov.w @(data_CE347AC,pc),r0 ; r0 set to 0x525		; addr: CE34782
mov.l r13,@-r15		; addr: CE34784
mov 0x00,r13 ; r13 set to 0x00		; addr: CE34786
fmov.s fr15,@-r15		; addr: CE34788
sts.l pr,@-r15		; addr: CE3478A
mov.b @(r0,r14),r3		; addr: CE3478C
tst r3,r3		; addr: CE3478E
bt/s data_CE347BC		; addr: CE34790
fldi0 fr15		; addr: CE34792
mov.w @(0x1C,r14),r0 		; addr: CE34794
add 0xFF,r0 ; r0 set to 0x524		; addr: CE34796
mov.w r0,@(0x1C,r14) 		; addr: CE34798
exts.w r0,r0 ; r0 ??		; addr: CE3479A
cmp/pz r0		; addr: CE3479C
bf l_code_CE347A4		; addr: CE3479E
bra l_code_CE348AA		; addr: CE347A0
nop 		; addr: CE347A2

l_code_CE347A4:
bra data_CE3482E		; addr: CE347A4
nop 		; addr: CE347A6

data_CE347A8:
#data 0x041C		; addr: CE347A8

data_CE347AA:
#data 0x01F9		; addr: CE347AA

data_CE347AC:
#data 0x0525		; addr: CE347AC
#data 0x0000		; addr: CE347AE
#data fn_extern_8C034DEE		; addr: CE347B0

#align4
ptr_CE347B4_to_fn_extern_8C0511B4:
#data fn_extern_8C0511B4		; addr: CE347B4

ptr_CE347B8_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE347B8

data_CE347BC:
#data 0xF308C749		; addr: CE347BC
#data 0xF2E69089		; addr: CE347C0
#data 0xF1E6E038		; addr: CE347C4
#data 0xF125F230		; addr: CE347C8
#data 0x90838B6D		; addr: CE347CC
#data 0x03ED9283		; addr: CE347D0
#data 0x2328633D		; addr: CE347D4
#data 0xD3438925		; addr: CE347D8
#data 0x6563E600		; addr: CE347DC
#data 0x64E3430B		; addr: CE347E0
#data 0x0ED6E048		; addr: CE347E4
#data 0xFEF7E05C		; addr: CE347E8
#data 0xFEF7E060		; addr: CE347EC
#data 0xFEF7E068		; addr: CE347F0
#data 0xFEF7E06C		; addr: CE347F4
#data 0x600C84E6		; addr: CE347F8
#data 0x8F078805		; addr: CE347FC
#data 0xD13A64E3		; addr: CE34800
#data 0xF2E6E038		; addr: CE34804
#data 0xF30D415A		; addr: CE34808
#data 0xFE27F231		; addr: CE3480C

#align4
data_CE34810:
#data 0x430BD337		; addr: CE34810
#data 0x90610009		; addr: CE34814
#data 0xD336E202		; addr: CE34818
#data 0x430B0E24		; addr: CE3481C
#data 0xA04064E3		; addr: CE34820
#data 0x0009		; addr: CE34824

data_CE34826:
#data 0x00ED		; addr: CE34826
#data 0xC860600D		; addr: CE34828
#data 0x893D		; addr: CE3482C

data_CE3482E:
#data 0xD22E		; addr: CE3482E
#data 0x6563E600		; addr: CE34830
#data 0x64E3420B		; addr: CE34834
#data 0xD230E048		; addr: CE34838
#data 0xE0090ED6		; addr: CE3483C
#data 0xE30180E6		; addr: CE34840
#data 0x0E34904B		; addr: CE34844
#data 0xF228C72B		; addr: CE34848
#data 0xE034F308		; addr: CE3484C
#data 0xF230F1E6		; addr: CE34850
#data 0x8B01F125		; addr: CE34854
#data 0x0ED49041		; addr: CE34858

#align4
data_CE3485C:
#data 0xE515903F		; addr: CE3485C
#data 0x03ECE619		; addr: CE34860
#data 0x633C903C		; addr: CE34864
#data 0xD3250E35		; addr: CE34868
#data 0x64E3430B		; addr: CE3486C
#data 0xFEF7E05C		; addr: CE34870
#data 0xFEF7E060		; addr: CE34874
#data 0xFEF7E068		; addr: CE34878
#data 0xFEF7E06C		; addr: CE3487C
#data 0xF308C720		; addr: CE34880
#data 0xFE37E060		; addr: CE34884
#data 0x03EC9029		; addr: CE34888
#data 0x89022338		; addr: CE3488C
#data 0xA002C71D		; addr: CE34890
#data 0xF308		; addr: CE34894

data_CE34896:
#data 0xC71D		; addr: CE34896
#data 0xF308		; addr: CE34898

data_CE3489A:
#data 0xD31D		; addr: CE3489A
#data 0xE515E05C		; addr: CE3489C
#data 0x430BFE37		; addr: CE348A0
#data 0x64E3		; addr: CE348A4

data_CE348A6:
#data 0xA001		; addr: CE348A6
#data 0xE001		; addr: CE348A8


l_code_CE348AA:
mov 0x00,r0 ; r0 set to 0x00		; addr: CE348AA

l_code_CE348AC:
lds.l @r15+,pr 		; addr: CE348AC
fmov.s @r15+,fr15		; addr: CE348AE
mov.l @r15+,r13		; addr: CE348B0
rts 		; addr: CE348B2
mov.l @r15+,r14		; addr: CE348B4
;-------------------------------------------------------------------------------

f_code_CE348B6:
mov.l r14,@-r15		; addr: CE348B6
mov r4,r14		; addr: CE348B8
sts.l pr,@-r15		; addr: CE348BA
mov.b @(0x06,r14),r0 		; addr: CE348BC
tst r0,r0		; addr: CE348BE
bf l_code_CE34914		; addr: CE348C0
mov.b @(0x06,r14),r0 		; addr: CE348C2
mov r14,r4		; addr: CE348C4
mov.l @(ptr_CE34900_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE348C6
mov 0x09,r6 ; r6 set to 0x09		; addr: CE348C8
add 0x01,r0		; addr: CE348CA
mov.b r0,@(0x06,r14) 		; addr: CE348CC
mov 0x13,r5 ; r5 set to 0x13		; addr: CE348CE
lds.l @r15+,pr 		; addr: CE348D0
jmp @r3		; addr: CE348D2
mov.l @r15+,r14		; addr: CE348D4
#data 0x041C		; addr: CE348D6
#data 0x030004E0		; addr: CE348D8
#data 0x01D201FC		; addr: CE348DC
#data 0x00000130		; addr: CE348E0
#data 0x43092492		; addr: CE348E4
#data fn_extern_8C02FEC4		; addr: CE348E8
#data 0x42CDB6DB		; addr: CE348EC
#data fn_extern_8C05218A		; addr: CE348F0
#data fn_extern_8C05176E		; addr: CE348F4
#data 0x43A00000		; addr: CE348F8
#data extern_8C26A5A0		; addr: CE348FC

#align4
ptr_CE34900_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE34900
#data 0xC1809249		; addr: CE34904
#data 0x41A6AAAA		; addr: CE34908
#data 0xC1A6AAAA		; addr: CE3490C
#data fn_extern_8C04223A		; addr: CE34910


l_code_CE34914:
mov.l @(ptr_CE34A48_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE34914
jsr @r3		; addr: CE34916
mov r14,r4		; addr: CE34918
exts.b r0,r0		; addr: CE3491A
cmp/pz r0		; addr: CE3491C
bt l_code_CE3492A		; addr: CE3491E
lds.l @r15+,pr 		; addr: CE34920
mov.l @(ptr_CE34A4C_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE34922
mov r14,r4		; addr: CE34924
jmp @r3		; addr: CE34926
mov.l @r15+,r14		; addr: CE34928

l_code_CE3492A:
lds.l @r15+,pr 		; addr: CE3492A
rts 		; addr: CE3492C
mov.l @r15+,r14		; addr: CE3492E
;-------------------------------------------------------------------------------

#align4
data_CE34930:
#data 0x2FE69085		; addr: CE34930
#data 0x4F226E43		; addr: CE34934
#data 0x600C00EC		; addr: CE34938
#data 0x8B0C8802		; addr: CE3493C
#data 0x420BD243		; addr: CE34940
#data 0x907B64E3		; addr: CE34944
#data 0xE038F3E6		; addr: CE34948
#data 0xF325F2E6		; addr: CE3494C
#data 0x90758B03		; addr: CE34950
#data 0xE038F3E6		; addr: CE34954
#data 0xFE37		; addr: CE34958

data_CE3495A:
#data 0x84E6		; addr: CE3495A
#data 0xD13D64E3		; addr: CE3495C
#data 0x956E600C		; addr: CE34960
#data 0x40084F26		; addr: CE34964
#data 0x35EC031E		; addr: CE34968
#data 0x6EF6432B		; addr: CE3496C


f_code_CE34970:
mov.l r14,@-r15		; addr: CE34970
mov r4,r14		; addr: CE34972
mov.l r13,@-r15		; addr: CE34974
sts.l pr,@-r15		; addr: CE34976
mov.b @(0x06,r14),r0 		; addr: CE34978
mov.l @(ptr_CE34A58_to_fn_extern_8C05218A,pc),r3 ; r3 set to 0x8C05218A		; addr: CE3497A
add 0x01,r0		; addr: CE3497C
mov.b r0,@(0x06,r14) 		; addr: CE3497E
mov 0x78,r0 ; r0 set to 0x78		; addr: CE34980
mov.w r0,@(0x1C,r14) 		; addr: CE34982
jsr @r3		; addr: CE34984
mov r14,r4		; addr: CE34986
mov.l @(ptr_CE34A5C_to_fn_extern_8C056DE4,pc),r2 ; r2 set to 0x8C056DE4		; addr: CE34988
mov 0x05,r5 ; r5 set to 0x05		; addr: CE3498A
jsr @r2		; addr: CE3498C
mov r14,r4		; addr: CE3498E
mov.l @(ptr_CE34A60_to_fn_extern_8C05115A,pc),r3 ; r3 set to 0x8C05115A		; addr: CE34990
jsr @r3		; addr: CE34992
mov r14,r4		; addr: CE34994
mov.w @(data_CE34A3E,pc),r0 ; r0 set to 0x1F9		; addr: CE34996
mov 0x00,r13 ; r13 set to 0x00		; addr: CE34998
mov 0x15,r5 ; r5 set to 0x15		; addr: CE3499A
mov.b r13,@(r0,r14) 		; addr: CE3499C
mov 0x12,r6 ; r6 set to 0x12		; addr: CE3499E
mov.w @(data_CE34A40,pc),r0 ; r0 set to 0x41C		; addr: CE349A0
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???		; addr: CE349A2
mov 0x38,r0 ; r0 set to 0x38		; addr: CE349A4
fmov.s fr3,@(r0,r14) 		; addr: CE349A6
mov.w @(data_CE34A44,pc),r0 ; r0 set to 0x1A3		; addr: CE349A8
mov.b @(r0,r14),r3		; addr: CE349AA
add 0xFE,r0 ; r0 set to 0x1A1		; addr: CE349AC
mov.b r3,@(r0,r14) 		; addr: CE349AE
add 0x0B,r0 ; r0 set to 0x1AC		; addr: CE349B0
mov.w r13,@(r0,r14) 		; addr: CE349B2
add 0xF2,r0 ; r0 set to 0x19E		; addr: CE349B4
mov.b r13,@(r0,r14) 		; addr: CE349B6
add 0x26,r0 ; r0 set to 0x1C4		; addr: CE349B8
mov.l @(ptr_CE34A64_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0		; addr: CE349BA
mov.l r13,@(r0,r14) 		; addr: CE349BC
mov.b @(0x02,r14),r0 		; addr: CE349BE
mov.l @r3,r2 ; r2 ??		; addr: CE349C0
extu.b r0,r0 ; r0 set to 0xC4		; addr: CE349C2
shll r0 ; r0 set to 0x188		; addr: CE349C4
add 0x7C,r2		; addr: CE349C6
mov.w @(r0,r2),r1		; addr: CE349C8
add 0x01,r1		; addr: CE349CA
mov.w r1,@(r0,r2) 		; addr: CE349CC
mov.w @(data_CE34A46,pc),r0 ; r0 set to 0x141		; addr: CE349CE
mov.l @(ptr_CE34A68_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE349D0
mov.b r13,@(r0,r14) 		; addr: CE349D2
jsr @r2		; addr: CE349D4
mov r14,r4		; addr: CE349D6
mov.l @(ptr_CE34A6C_to_fn_extern_8C0802D8,pc),r3 ; r3 set to 0x8C0802D8		; addr: CE349D8
mov r13,r5 ; r5 set to 0x00		; addr: CE349DA
jsr @r3		; addr: CE349DC
mov r14,r4		; addr: CE349DE
tst r0,r0		; addr: CE349E0
bf/s l_code_CE349F2		; addr: CE349E2
mov.l r0,@(0x14,r14) 		; addr: CE349E4
lds.l @r15+,pr 		; addr: CE349E6
mov.l @(ptr_CE34A4C_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE349E8
mov r14,r4		; addr: CE349EA
mov.l @r15+,r13 ; r13 ??? bc r15 is ???		; addr: CE349EC
jmp @r3		; addr: CE349EE
mov.l @r15+,r14		; addr: CE349F0

l_code_CE349F2:
lds.l @r15+,pr 		; addr: CE349F2
mov.l @r15+,r13		; addr: CE349F4
rts 		; addr: CE349F6
mov.l @r15+,r14		; addr: CE349F8
;-------------------------------------------------------------------------------

f_code_CE349FA:
mov.l r14,@-r15		; addr: CE349FA
mov r4,r14		; addr: CE349FC
sts.l pr,@-r15		; addr: CE349FE
mov.l @(0x14,r14),r4		; addr: CE34A00
mov 0x02,r3 ; r3 set to 0x02		; addr: CE34A02
mov.b @(0x04,r4),r0 		; addr: CE34A04
extu.b r0,r0		; addr: CE34A06
cmp/ge r3,r0		; addr: CE34A08
bf data_CE34A20		; addr: CE34A0A
mov 0x03,r0 ; r0 set to 0x03		; addr: CE34A0C
mov.l @(ptr_CE34A70_to_fn_extern_8C04223A,pc),r2 ; r2 set to 0x8C04223A		; addr: CE34A0E
mov.b r0,@(0x06,r14) 		; addr: CE34A10
mov 0x1E,r0 ; r0 set to 0x1E		; addr: CE34A12
mov r14,r4		; addr: CE34A14
mov.w r0,@(0x1C,r14) 		; addr: CE34A16
lds.l @r15+,pr 		; addr: CE34A18
mov 0x2A,r5 ; r5 set to 0x2A		; addr: CE34A1A
jmp @r2		; addr: CE34A1C
mov.l @r15+,r14		; addr: CE34A1E

#align4
data_CE34A20:
#data 0x430BD309		; addr: CE34A20
#data 0x85EE64E3		; addr: CE34A24
#data 0x81EE70FF		; addr: CE34A28
#data 0x4015600F		; addr: CE34A2C
#data 0x84E68902		; addr: CE34A30
#data 0x80E67001		; addr: CE34A34

#align4
data_CE34A38:
#data 0x000B4F26		; addr: CE34A38
#data 0x6EF6		; addr: CE34A3C
;-------------------------------------------------------------------------------

data_CE34A3E:
#data 0x01F9		; addr: CE34A3E

data_CE34A40:
#data 0x041C		; addr: CE34A40
#data 0x02A4		; addr: CE34A42

data_CE34A44:
#data 0x01A3		; addr: CE34A44

data_CE34A46:
#data 0x0141		; addr: CE34A46

#align4
ptr_CE34A48_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE34A48

ptr_CE34A4C_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE34A4C
#data fn_extern_8C04FEA8		; addr: CE34A50

#align4
ptr_CE34A54_to_ptr_CE36488_to_f_code_CE34970:
#data ptr_CE36488_to_f_code_CE34970		; addr: CE34A54

ptr_CE34A58_to_fn_extern_8C05218A:
#data fn_extern_8C05218A		; addr: CE34A58

ptr_CE34A5C_to_fn_extern_8C056DE4:
#data fn_extern_8C056DE4		; addr: CE34A5C

ptr_CE34A60_to_fn_extern_8C05115A:
#data fn_extern_8C05115A		; addr: CE34A60

ptr_CE34A64_to_extern_8C2896B0:
#data extern_8C2896B0		; addr: CE34A64

ptr_CE34A68_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE34A68

ptr_CE34A6C_to_fn_extern_8C0802D8:
#data fn_extern_8C0802D8		; addr: CE34A6C

ptr_CE34A70_to_fn_extern_8C04223A:
#data fn_extern_8C04223A		; addr: CE34A70


f_code_CE34A74:
mov.l r14,@-r15		; addr: CE34A74
sts.l pr,@-r15		; addr: CE34A76
mov.l @(ptr_CE34B9C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE34A78
jsr @r3		; addr: CE34A7A
mov r4,r14		; addr: CE34A7C
mov.b @(0x06,r14),r0 		; addr: CE34A7E
mov r14,r4		; addr: CE34A80
mov.l @(ptr_CE34BA0_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE34A82
mov 0x13,r6 ; r6 set to 0x13		; addr: CE34A84
add 0x01,r0		; addr: CE34A86
mov.b r0,@(0x06,r14) 		; addr: CE34A88
mov 0x15,r5 ; r5 set to 0x15		; addr: CE34A8A
lds.l @r15+,pr 		; addr: CE34A8C
jmp @r3		; addr: CE34A8E
mov.l @r15+,r14		; addr: CE34A90

f_code_CE34A92:
mov.l r14,@-r15		; addr: CE34A92
sts.l pr,@-r15		; addr: CE34A94
mov.l @(ptr_CE34B9C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE34A96
jsr @r3		; addr: CE34A98
mov r4,r14		; addr: CE34A9A
exts.b r0,r0		; addr: CE34A9C
cmp/pz r0		; addr: CE34A9E
bt l_code_CE34AAC		; addr: CE34AA0
lds.l @r15+,pr 		; addr: CE34AA2
mov.l @(ptr_CE34BA4_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE34AA4
mov r14,r4		; addr: CE34AA6
jmp @r3		; addr: CE34AA8
mov.l @r15+,r14		; addr: CE34AAA

l_code_CE34AAC:
mov.w @(data_CE34B92,pc),r0 ; r0 set to 0x141		; addr: CE34AAC
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE34AAE
cmp/eq 0x02,r0 		; addr: CE34AB0
bf l_code_CE34ADE		; addr: CE34AB2
mov.w @(data_CE34B92,pc),r0 ; r0 set to 0x141		; addr: CE34AB4
mov 0x00,r2 ; r2 set to 0x00		; addr: CE34AB6
mov.l @(ptr_CE34BA8_to_fn_extern_8C059150,pc),r3 ; r3 set to 0x8C059150		; addr: CE34AB8
mov 0x14,r5 ; r5 set to 0x14		; addr: CE34ABA
mov.b r2,@(r0,r14) 		; addr: CE34ABC
jsr @r3		; addr: CE34ABE
mov r14,r4		; addr: CE34AC0
mov.l @(ptr_CE34BAC_to_fn_extern_8C104DF8,pc),r2 ; r2 set to 0x8C104DF8		; addr: CE34AC2
mov 0x04,r5 ; r5 set to 0x04		; addr: CE34AC4
jsr @r2		; addr: CE34AC6
mov r14,r4		; addr: CE34AC8
mov.l @(ptr_CE34BB0_to_fn_extern_8C042008,pc),r3 ; r3 set to 0x8C042008		; addr: CE34ACA
mov 0x1F,r5 ; r5 set to 0x1F		; addr: CE34ACC
jsr @r3		; addr: CE34ACE
mov r14,r4		; addr: CE34AD0
lds.l @r15+,pr 		; addr: CE34AD2
mov.l @(ptr_CE34BB4_to_fn_extern_8C04223A,pc),r2 ; r2 set to 0x8C04223A		; addr: CE34AD4
mov 0x2A,r5 ; r5 set to 0x2A		; addr: CE34AD6
mov r14,r4		; addr: CE34AD8
jmp @r2		; addr: CE34ADA
mov.l @r15+,r14		; addr: CE34ADC

l_code_CE34ADE:
lds.l @r15+,pr 		; addr: CE34ADE
rts 		; addr: CE34AE0
mov.l @r15+,r14		; addr: CE34AE2
;-------------------------------------------------------------------------------

f_code_CE34AE4:
mov.l r14,@-r15		; addr: CE34AE4
sts.l pr,@-r15		; addr: CE34AE6
mov.l @(ptr_CE34B9C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE34AE8
jsr @r3		; addr: CE34AEA
mov r4,r14		; addr: CE34AEC
mov.w @(0x1C,r14),r0 		; addr: CE34AEE
add 0xFF,r0		; addr: CE34AF0
mov.w r0,@(0x1C,r14) 		; addr: CE34AF2
exts.w r0,r0		; addr: CE34AF4
cmp/pl r0		; addr: CE34AF6
bt l_code_CE34B04		; addr: CE34AF8
lds.l @r15+,pr 		; addr: CE34AFA
mov.l @(ptr_CE34BA4_to_fn_extern_8C051648,pc),r2 ; r2 set to 0x8C051648		; addr: CE34AFC
mov r14,r4		; addr: CE34AFE
jmp @r2		; addr: CE34B00
mov.l @r15+,r14		; addr: CE34B02

l_code_CE34B04:
lds.l @r15+,pr 		; addr: CE34B04
rts 		; addr: CE34B06
mov.l @r15+,r14		; addr: CE34B08
;-------------------------------------------------------------------------------

f_code_CE34B0A:
mov r4,r3		; addr: CE34B0A
mov.l @(ptr_CE34BB8_to_ptr_CE3649C_to_f_code_CE34B1C,pc),r1 ; r1 set to 0xCE3649C		; addr: CE34B0C
mov.l r4,@-r15		; addr: CE34B0E
mov.b @(0x06,r3),r0 		; addr: CE34B10
extu.b r0,r0		; addr: CE34B12
shll2 r0		; addr: CE34B14
mov.l @(r0,r1),r3		; addr: CE34B16
jmp @r3		; addr: CE34B18
add 0x04,r15		; addr: CE34B1A

f_code_CE34B1C:
mov.l r14,@-r15		; addr: CE34B1C
mov r4,r14		; addr: CE34B1E
fldi0 fr4		; addr: CE34B20
mov.l r13,@-r15		; addr: CE34B22
mov 0x00,r13 ; r13 set to 0x00		; addr: CE34B24
sts.l pr,@-r15		; addr: CE34B26
mov.b @(0x06,r14),r0 		; addr: CE34B28
mov r13,r5 ; r5 set to 0x00		; addr: CE34B2A
mov.l @(ptr_CE34BBC_to_fn_extern_8C035162,pc),r3 ; r3 set to 0x8C035162		; addr: CE34B2C
add 0x01,r0		; addr: CE34B2E
mov.b r0,@(0x06,r14) 		; addr: CE34B30
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE34B32
fmov.s fr4,@(r0,r14) 		; addr: CE34B34
mov 0x60,r0 ; r0 set to 0x60		; addr: CE34B36
fmov.s fr4,@(r0,r14) 		; addr: CE34B38
mov 0x68,r0 ; r0 set to 0x68		; addr: CE34B3A
fmov.s fr4,@(r0,r14) 		; addr: CE34B3C
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE34B3E
fmov.s fr4,@(r0,r14) 		; addr: CE34B40
mov.w @(data_CE34B94,pc),r0 ; r0 set to 0x1F9		; addr: CE34B42
mov.b r13,@(r0,r14) 		; addr: CE34B44
mov.w @(data_CE34B96,pc),r0 ; r0 set to 0x41C		; addr: CE34B46
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???		; addr: CE34B48
mov 0x38,r0 ; r0 set to 0x38		; addr: CE34B4A
fmov.s fr3,@(r0,r14) 		; addr: CE34B4C
jsr @r3		; addr: CE34B4E
mov r14,r4		; addr: CE34B50
mov.l @(ptr_CE34BC0_to_fn_extern_8C05218A,pc),r2 ; r2 set to 0x8C05218A		; addr: CE34B52
jsr @r2		; addr: CE34B54
mov r14,r4		; addr: CE34B56
mov.l @(ptr_CE34BC4_to_fn_extern_8C05115A,pc),r3 ; r3 set to 0x8C05115A		; addr: CE34B58
jsr @r3		; addr: CE34B5A
mov r14,r4		; addr: CE34B5C
mov.w @(data_CE34B98,pc),r0 ; r0 set to 0x1A1		; addr: CE34B5E
mov 0x48,r2 ; r2 set to 0x48		; addr: CE34B60
mov.l @(ptr_CE34BC8_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0		; addr: CE34B62
mov 0x17,r6 ; r6 set to 0x17		; addr: CE34B64
mov.b r2,@(r0,r14) 		; addr: CE34B66
add 0x0B,r0 ; r0 set to 0x1AC		; addr: CE34B68
mov.w r13,@(r0,r14) 		; addr: CE34B6A
add 0xF2,r0 ; r0 set to 0x19E		; addr: CE34B6C
mov.b r13,@(r0,r14) 		; addr: CE34B6E
add 0x26,r0 ; r0 set to 0x1C4		; addr: CE34B70
mov.l r13,@(r0,r14) 		; addr: CE34B72
mov 0x15,r5 ; r5 set to 0x15		; addr: CE34B74
mov.b @(0x02,r14),r0 		; addr: CE34B76
mov r14,r4		; addr: CE34B78
mov.l @r3,r2 ; r2 ??		; addr: CE34B7A
extu.b r0,r0 ; r0 set to 0xC4		; addr: CE34B7C
shll r0 ; r0 set to 0x188		; addr: CE34B7E
add 0x7C,r2		; addr: CE34B80
mov.w @(r0,r2),r1		; addr: CE34B82
add 0x01,r1		; addr: CE34B84
mov.w r1,@(r0,r2) 		; addr: CE34B86
lds.l @r15+,pr 		; addr: CE34B88
mov.l @(ptr_CE34BA0_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE34B8A
mov.l @r15+,r13 ; r13 ??? bc r15 is ???		; addr: CE34B8C
jmp @r2		; addr: CE34B8E
mov.l @r15+,r14		; addr: CE34B90

data_CE34B92:
#data 0x0141		; addr: CE34B92

data_CE34B94:
#data 0x01F9		; addr: CE34B94

data_CE34B96:
#data 0x041C		; addr: CE34B96

data_CE34B98:
#data 0x01A1		; addr: CE34B98
#data 0x0000		; addr: CE34B9A

#align4
ptr_CE34B9C_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE34B9C

ptr_CE34BA0_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE34BA0

ptr_CE34BA4_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE34BA4

ptr_CE34BA8_to_fn_extern_8C059150:
#data fn_extern_8C059150		; addr: CE34BA8

ptr_CE34BAC_to_fn_extern_8C104DF8:
#data fn_extern_8C104DF8		; addr: CE34BAC

ptr_CE34BB0_to_fn_extern_8C042008:
#data fn_extern_8C042008		; addr: CE34BB0

ptr_CE34BB4_to_fn_extern_8C04223A:
#data fn_extern_8C04223A		; addr: CE34BB4

ptr_CE34BB8_to_ptr_CE3649C_to_f_code_CE34B1C:
#data ptr_CE3649C_to_f_code_CE34B1C		; addr: CE34BB8

ptr_CE34BBC_to_fn_extern_8C035162:
#data fn_extern_8C035162		; addr: CE34BBC

ptr_CE34BC0_to_fn_extern_8C05218A:
#data fn_extern_8C05218A		; addr: CE34BC0

ptr_CE34BC4_to_fn_extern_8C05115A:
#data fn_extern_8C05115A		; addr: CE34BC4

ptr_CE34BC8_to_extern_8C2896B0:
#data extern_8C2896B0		; addr: CE34BC8


f_code_CE34BCC:
mov.l r14,@-r15		; addr: CE34BCC
sts.l pr,@-r15		; addr: CE34BCE
mov.l @(ptr_CE34D0C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE34BD0
jsr @r3		; addr: CE34BD2
mov r4,r14		; addr: CE34BD4
exts.b r0,r0		; addr: CE34BD6
cmp/pl r0		; addr: CE34BD8
bt l_code_CE34C04		; addr: CE34BDA
mov.b @(0x06,r14),r0 		; addr: CE34BDC
mov 0x15,r5 ; r5 set to 0x15		; addr: CE34BDE
mov.l @(ptr_CE34D10_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE34BE0
mov 0x18,r6 ; r6 set to 0x18		; addr: CE34BE2
add 0x01,r0		; addr: CE34BE4
mov.b r0,@(0x06,r14) 		; addr: CE34BE6
jsr @r3		; addr: CE34BE8
mov r14,r4		; addr: CE34BEA
mov.l @(ptr_CE34D14_to_fn_extern_8C0D0584,pc),r2 ; r2 set to 0x8C0D0584		; addr: CE34BEC
mov 0x04,r5 ; r5 set to 0x04		; addr: CE34BEE
mov 0x00,r6 ; r6 set to 0x00		; addr: CE34BF0
jsr @r2		; addr: CE34BF2
mov r14,r4		; addr: CE34BF4
lds.l @r15+,pr 		; addr: CE34BF6
mov.l @(ptr_CE34D14_to_fn_extern_8C0D0584,pc),r3 ; r3 set to 0x8C0D0584		; addr: CE34BF8
mov r14,r4		; addr: CE34BFA
mov 0x00,r6 ; r6 set to 0x00		; addr: CE34BFC
mov 0x05,r5 ; r5 set to 0x05		; addr: CE34BFE
jmp @r3		; addr: CE34C00
mov.l @r15+,r14		; addr: CE34C02

l_code_CE34C04:
lds.l @r15+,pr 		; addr: CE34C04
rts 		; addr: CE34C06
mov.l @r15+,r14		; addr: CE34C08
;-------------------------------------------------------------------------------

f_code_CE34C0A:
mov.l r14,@-r15		; addr: CE34C0A
sts.l pr,@-r15		; addr: CE34C0C
add 0xF4,r15		; addr: CE34C0E
mov.l @(ptr_CE34D0C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE34C10
jsr @r3		; addr: CE34C12
mov r4,r14		; addr: CE34C14
exts.b r0,r0		; addr: CE34C16
cmp/pz r0		; addr: CE34C18
bt l_code_CE34C2A		; addr: CE34C1A
mov.l @(ptr_CE34D18_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE34C1C
jsr @r3		; addr: CE34C1E
mov r14,r4		; addr: CE34C20
add 0x0C,r15		; addr: CE34C22
lds.l @r15+,pr 		; addr: CE34C24
rts 		; addr: CE34C26
mov.l @r15+,r14		; addr: CE34C28
;-------------------------------------------------------------------------------

l_code_CE34C2A:
mov.w @(data_CE34CFE,pc),r0 ; r0 set to 0x141		; addr: CE34C2A
mov.b @(r0,r14),r2		; addr: CE34C2C
tst r2,r2		; addr: CE34C2E
bt/s data_CE34C72		; addr: CE34C30
mov 0x00,r4 ; r4 set to 0x00		; addr: CE34C32
mov.w @(data_CE34D00,pc),r0 ; r0 set to 0x1D2		; addr: CE34C34
mov 0x34,r2 ; r2 set to 0x34		; addr: CE34C36
mov.b @(r0,r14),r3		; addr: CE34C38
tst r3,r3		; addr: CE34C3A
bt/s data_CE34C54		; addr: CE34C3C
add r14,r2 ; r2 ??? bc r14 is ???		; addr: CE34C3E
mov.w @(data_CE34CFE,pc),r3 ; r3 set to 0x141		; addr: CE34C40
mov.l @(data_CE34D1C,pc),r1 ; r1 set to 0x3FD55555		; addr: CE34C42
add r14,r3 ; r3 ??? bc r14 is ???		; addr: CE34C44
mov.b @r3,r3		; addr: CE34C46
lds r3,fpul 		; addr: CE34C48
float fpul,fr3		; addr: CE34C4A
lds r1,fpul 		; addr: CE34C4C
fsts fpul,fr2		; addr: CE34C4E
bra data_CE34C68		; addr: CE34C50
fmul fr2,fr3		; addr: CE34C52

#align4
data_CE34C54:
#data 0xD1319353		; addr: CE34C54
#data 0x633033EC		; addr: CE34C58
#data 0xF32D435A		; addr: CE34C5C
#data 0xF20D415A		; addr: CE34C60
#data 0xF34DF322		; addr: CE34C64

#align4
data_CE34C68:
#data 0x9048F228		; addr: CE34C68
#data 0xF22AF230		; addr: CE34C6C
#data 0x0E44		; addr: CE34C70

data_CE34C72:
#data 0x9046		; addr: CE34C72
#data 0x880100EC		; addr: CE34C74
#data 0x90428B0E		; addr: CE34C78
#data 0xF38D65F3		; addr: CE34C7C
#data 0xC7270E44		; addr: CE34C80
#data 0xF308FF3A		; addr: CE34C84
#data 0xF2F6E004		; addr: CE34C88
#data 0xD325E004		; addr: CE34C8C
#data 0xFF27F230		; addr: CE34C90
#data 0x64E3430B		; addr: CE34C94

#align4
data_CE34C98:
#data 0x4F267F0C		; addr: CE34C98
#data 0x6EF6000B		; addr: CE34C9C
;-------------------------------------------------------------------------------

#align4
data_CE34CA0:
#data 0xE3059030		; addr: CE34CA0
#data 0x6E432FE6		; addr: CE34CA4
#data 0x0E344F22		; addr: CE34CA8
#data 0x640C84E6		; addr: CE34CAC
#data 0x890E2448		; addr: CE34CB0
#data 0x00096043		; addr: CE34CB4
#data 0x890A8808		; addr: CE34CB8
#data 0xE1029023		; addr: CE34CBC
#data 0x02EC9322		; addr: CE34CC0
#data 0x0E24223B		; addr: CE34CC4
#data 0xD21770E9		; addr: CE34CC8
#data 0x420B0E14		; addr: CE34CCC
#data 0x64E3		; addr: CE34CD0

data_CE34CD2:
#data 0x84E6		; addr: CE34CD2
#data 0xD11564E3		; addr: CE34CD4
#data 0x9516600C		; addr: CE34CD8
#data 0x40084F26		; addr: CE34CDC
#data 0x35EC031E		; addr: CE34CE0
#data 0x6EF6432B		; addr: CE34CE4


f_code_CE34CE8:
mov.l r14,@-r15		; addr: CE34CE8
mov r4,r14		; addr: CE34CEA
mov.b @(0x07,r14),r0 		; addr: CE34CEC
mov.l @(ptr_CE34D30_to_ptr_CE364CC_to_data_CE3319C,pc),r1 ; r1 set to 0xCE364CC		; addr: CE34CEE
extu.b r0,r0		; addr: CE34CF0
mov.w @(data_CE34D0A,pc),r5 ; r5 set to 0x2A4		; addr: CE34CF2
shll2 r0		; addr: CE34CF4
mov.l @(r0,r1),r3		; addr: CE34CF6
add r14,r5 ; r5 ??? bc r14 is ???		; addr: CE34CF8
jmp @r3		; addr: CE34CFA
mov.l @r15+,r14		; addr: CE34CFC

data_CE34CFE:
#data 0x0141		; addr: CE34CFE

data_CE34D00:
#data 0x01D2		; addr: CE34D00
#data 0x0140		; addr: CE34D02
#data 0x02020328		; addr: CE34D04
#data 0x0080		; addr: CE34D08

data_CE34D0A:
#data 0x02A4		; addr: CE34D0A

#align4
ptr_CE34D0C_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE34D0C

ptr_CE34D10_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE34D10

ptr_CE34D14_to_fn_extern_8C0D0584:
#data fn_extern_8C0D0584		; addr: CE34D14

ptr_CE34D18_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE34D18

data_CE34D1C:
#data 0x3FD55555		; addr: CE34D1C
#data 0x42CDB6DB		; addr: CE34D20
#data extern_8C050EA4		; addr: CE34D24
#data fn_extern_8C05A2CC		; addr: CE34D28

#align4
ptr_CE34D2C_to_ptr_CE364A8_to_f_code_CE34CE8:
#data ptr_CE364A8_to_f_code_CE34CE8		; addr: CE34D2C

ptr_CE34D30_to_ptr_CE364CC_to_data_CE3319C:
#data ptr_CE364CC_to_data_CE3319C		; addr: CE34D30

data_CE34D34:
#data 0x034C9084		; addr: CE34D34
#data 0x89052338		; addr: CE34D38
#data 0x70FF8554		; addr: CE34D3C
#data 0x600F8154		; addr: CE34D40
#data 0x890E4015		; addr: CE34D44

#align4
data_CE34D48:
#data 0xE1028446		; addr: CE34D48
#data 0x7001937A		; addr: CE34D4C
#data 0xE0008046		; addr: CE34D50
#data 0x90748047		; addr: CE34D54
#data 0x223B024C		; addr: CE34D58
#data 0x70E90424		; addr: CE34D5C
#data 0x422BD23A		; addr: CE34D60
#data 0x0414		; addr: CE34D64

data_CE34D66:
#data 0x000B		; addr: CE34D66
#data 0x0009		; addr: CE34D68
;-------------------------------------------------------------------------------

data_CE34D6A:
#data 0x2FE6		; addr: CE34D6A
#data 0xE0066E43		; addr: CE34D6C
#data 0x6D532FD6		; addr: CE34D70
#data 0xE101D236		; addr: CE34D74
#data 0x80E64F22		; addr: CE34D78
#data 0x80E7E000		; addr: CE34D7C
#data 0x81D5E078		; addr: CE34D80
#data 0x632084E2		; addr: CE34D84
#data 0x410C600C		; addr: CE34D88
#data 0x2318633C		; addr: CE34D8C
#data 0x90558B0B		; addr: CE34D90
#data 0x211801EC		; addr: CE34D94
#data 0x90548907		; addr: CE34D98
#data 0xD32D65D3		; addr: CE34D9C
#data 0x81D5750A		; addr: CE34DA0
#data 0x430BE606		; addr: CE34DA4
#data 0x64E3		; addr: CE34DA8

data_CE34DAA:
#data 0xD22B		; addr: CE34DAA
#data 0xE621E516		; addr: CE34DAC
#data 0x64E3420B		; addr: CE34DB0
#data 0xD3294F26		; addr: CE34DB4
#data 0xE54C64E3		; addr: CE34DB8
#data 0x432B6DF6		; addr: CE34DBC
#data 0x6EF6		; addr: CE34DC0

data_CE34DC2:
#data 0x2FE6		; addr: CE34DC2
#data 0xB2744F22		; addr: CE34DC4
#data 0x600C6E43		; addr: CE34DC8
#data 0x8B342008		; addr: CE34DCC
#data 0x64E3B303		; addr: CE34DD0
#data 0x2008600C		; addr: CE34DD4
#data 0xE5008B2F		; addr: CE34DD8
#data 0x64E3B2E3		; addr: CE34DDC
#data 0x2008600C		; addr: CE34DE0
#data 0xB2F08B01		; addr: CE34DE4
#data 0x64E3		; addr: CE34DE8

data_CE34DEA:
#data 0xD21D		; addr: CE34DEA
#data 0x64E3420B		; addr: CE34DEC
#data 0x03EC902A		; addr: CE34DF0
#data 0x8B0E2338		; addr: CE34DF4
#data 0x31ECE15C		; addr: CE34DF8
#data 0xF318E034		; addr: CE34DFC
#data 0xE168F2E6		; addr: CE34E00
#data 0xF23031EC		; addr: CE34E04
#data 0xE05CFE27		; addr: CE34E08
#data 0xF318F2E6		; addr: CE34E0C
#data 0xA012F230		; addr: CE34E10
#data 0xFE27		; addr: CE34E14

data_CE34E16:
#data 0xE401		; addr: CE34E16
#data 0x2338634E		; addr: CE34E18
#data 0x0E448D0D		; addr: CE34E1C
#data 0xE202D510		; addr: CE34E20
#data 0x60430E24		; addr: CE34E24
#data 0xD30C0009		; addr: CE34E28
#data 0x805564E3		; addr: CE34E2C
#data 0xE5358056		; addr: CE34E30
#data 0x432B4F26		; addr: CE34E34
#data 0x6EF6		; addr: CE34E38

data_CE34E3A:
#data 0x4F26		; addr: CE34E3A
#data 0x6EF6000B		; addr: CE34E3C
;-------------------------------------------------------------------------------
#data 0x02020525		; addr: CE34E40
#data 0x00960080		; addr: CE34E44
#data 0x00000141		; addr: CE34E48
#data fn_extern_8C05A2CC		; addr: CE34E4C
#data extern_8C289628		; addr: CE34E50
#data extern_8C0F047C		; addr: CE34E54
#data fn_extern_8C034E8C		; addr: CE34E58
#data fn_extern_8C04223A		; addr: CE34E5C
#data fn_extern_8C034DEE		; addr: CE34E60
#data extern_8C26A518		; addr: CE34E64


f_code_CE34E68:
mov.l r14,@-r15		; addr: CE34E68
sts.l pr,@-r15		; addr: CE34E6A
mov.l @(ptr_CE34F74_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE34E6C
jsr @r3		; addr: CE34E6E
mov r4,r14		; addr: CE34E70
exts.b r0,r0		; addr: CE34E72
cmp/pz r0		; addr: CE34E74
bt l_code_CE34E86		; addr: CE34E76
bsr l_code_CE353CA		; addr: CE34E78
mov r14,r4		; addr: CE34E7A
lds.l @r15+,pr 		; addr: CE34E7C
mov.l @(ptr_CE34F78_to_fn_extern_8C05218A,pc),r2 ; r2 set to 0x8C05218A		; addr: CE34E7E
mov r14,r4		; addr: CE34E80
jmp @r2		; addr: CE34E82
mov.l @r15+,r14		; addr: CE34E84

l_code_CE34E86:
lds.l @r15+,pr 		; addr: CE34E86
rts 		; addr: CE34E88
mov.l @r15+,r14		; addr: CE34E8A
;-------------------------------------------------------------------------------

#align4
data_CE34E8C:
#data 0x6E432FE6		; addr: CE34E8C
#data 0x2FD6906D		; addr: CE34E90
#data 0x4F222F86		; addr: CE34E94
#data 0x233803EC		; addr: CE34E98
#data 0xED008F04		; addr: CE34E9C
#data 0x00EC9066		; addr: CE34EA0
#data 0x8B268803		; addr: CE34EA4

#align4
data_CE34EA8:
#data 0xF48DE005		; addr: CE34EA8
#data 0xE05C80E6		; addr: CE34EAC
#data 0xE060FE47		; addr: CE34EB0
#data 0xE068FE47		; addr: CE34EB4
#data 0xE06CFE47		; addr: CE34EB8
#data 0xE343FE47		; addr: CE34EBC
#data 0xE5169057		; addr: CE34EC0
#data 0x0E34E634		; addr: CE34EC4
#data 0x0ED5700B		; addr: CE34EC8
#data 0x0ED470F2		; addr: CE34ECC
#data 0xD32A7026		; addr: CE34ED0
#data 0x84E20ED6		; addr: CE34ED4
#data 0x600C6232		; addr: CE34ED8
#data 0x727C4000		; addr: CE34EDC
#data 0x7101012D		; addr: CE34EE0
#data 0xD2260215		; addr: CE34EE4
#data 0x64E3420B		; addr: CE34EE8
#data 0xE001D525		; addr: CE34EEC
#data 0xA0378055		; addr: CE34EF0
#data 0x8056		; addr: CE34EF4

data_CE34EF6:
#data 0xD31F		; addr: CE34EF6
#data 0x64E3430B		; addr: CE34EF8
#data 0x4011600E		; addr: CE34EFC
#data 0x4F268905		; addr: CE34F00
#data 0x68F664E3		; addr: CE34F04
#data 0xA25E6DF6		; addr: CE34F08
#data 0x6EF6		; addr: CE34F0C

data_CE34F0E:
#data 0x902F		; addr: CE34F0E
#data 0x880100EC		; addr: CE34F10
#data 0x902B8B10		; addr: CE34F14
#data 0xE60DE516		; addr: CE34F18
#data 0xDD1A0ED4		; addr: CE34F1C
#data 0x64E34D0B		; addr: CE34F20
#data 0xE60DE517		; addr: CE34F24
#data 0x64E34D0B		; addr: CE34F28
#data 0xE60DE518		; addr: CE34F2C
#data 0x64E34D0B		; addr: CE34F30
#data 0x0009A016		; addr: CE34F34

#align4
data_CE34F38:
#data 0x00EC901A		; addr: CE34F38
#data 0x8B118802		; addr: CE34F3C
#data 0xE8349016		; addr: CE34F40
#data 0x70EF0ED4		; addr: CE34F44
#data 0x233803ED		; addr: CE34F48
#data 0x38EC8D04		; addr: CE34F4C
#data 0x415AD10E		; addr: CE34F50
#data 0xF30DA003		; addr: CE34F54

#align4
data_CE34F58:
#data 0x425AD20D		; addr: CE34F58
#data 0xF30D		; addr: CE34F5C

data_CE34F5E:
#data 0xF288		; addr: CE34F5E
#data 0xF82AF230		; addr: CE34F60

#align4
data_CE34F64:
#data 0x68F64F26		; addr: CE34F64
#data 0x000B6DF6		; addr: CE34F68
#data 0x019E6EF6		; addr: CE34F6C
#data 0x01A10141		; addr: CE34F70

#align4
ptr_CE34F74_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE34F74

ptr_CE34F78_to_fn_extern_8C05218A:
#data fn_extern_8C05218A		; addr: CE34F78
#data extern_8C2896B0		; addr: CE34F7C
#data fn_extern_8C034E8C		; addr: CE34F80
#data extern_8C26A518		; addr: CE34F84
#data fn_extern_8C0D0584		; addr: CE34F88
#data 0x41D55555		; addr: CE34F8C
#data 0xC1D55555		; addr: CE34F90


f_code_CE34F94:
mov.l r14,@-r15		; addr: CE34F94
mov r4,r14		; addr: CE34F96
mov.l r13,@-r15		; addr: CE34F98
mov.l r8,@-r15		; addr: CE34F9A
sts.l pr,@-r15		; addr: CE34F9C
mov.l @(ptr_CE350AC_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE34F9E
jsr @r3		; addr: CE34FA0
mov 0x00,r13 ; r13 set to 0x00		; addr: CE34FA2
exts.b r0,r0		; addr: CE34FA4
cmp/pz r0		; addr: CE34FA6
bt l_code_CE34FB6		; addr: CE34FA8
mov 0x08,r0 ; r0 set to 0x08		; addr: CE34FAA
mov.b r0,@(0x06,r14) 		; addr: CE34FAC
mov r13,r0 ; r0 set to 0x00		; addr: CE34FAE
nop 		; addr: CE34FB0
bra l_code_CE3500A		; addr: CE34FB2
mov.b r0,@(0x07,r14) 		; addr: CE34FB4

l_code_CE34FB6:
mov.w @(data_CE350A6,pc),r0 ; r0 set to 0x141		; addr: CE34FB6
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE34FB8
cmp/eq 0x01,r0 		; addr: CE34FBA
bf l_code_CE34FDE		; addr: CE34FBC
mov.w @(data_CE350A6,pc),r0 ; r0 set to 0x141		; addr: CE34FBE
mov 0x20,r5 ; r5 set to 0x20		; addr: CE34FC0
mov.l @(ptr_CE350B0_to_fn_extern_8C0D0584,pc),r3 ; r3 set to 0x8C0D0584		; addr: CE34FC2
mov 0x0D,r6 ; r6 set to 0x0D		; addr: CE34FC4
mov.b r13,@(r0,r14) 		; addr: CE34FC6
jsr @r3		; addr: CE34FC8
mov r14,r4		; addr: CE34FCA
lds.l @r15+,pr 		; addr: CE34FCC
mov.l @(ptr_CE350B0_to_fn_extern_8C0D0584,pc),r2 ; r2 set to 0x8C0D0584		; addr: CE34FCE
mov 0x21,r5 ; r5 set to 0x21		; addr: CE34FD0
mov r14,r4		; addr: CE34FD2
mov 0x0D,r6 ; r6 set to 0x0D		; addr: CE34FD4
mov.l @r15+,r8		; addr: CE34FD6
mov.l @r15+,r13		; addr: CE34FD8
jmp @r2		; addr: CE34FDA
mov.l @r15+,r14		; addr: CE34FDC

l_code_CE34FDE:
mov.w @(data_CE350A6,pc),r0 ; r0 set to 0x141		; addr: CE34FDE
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE34FE0
cmp/eq 0x02,r0 		; addr: CE34FE2
bf l_code_CE3500A		; addr: CE34FE4
mov.w @(data_CE350A6,pc),r0 ; r0 set to 0x141		; addr: CE34FE6
mov 0x34,r8 ; r8 set to 0x34		; addr: CE34FE8
mov.b r13,@(r0,r14) 		; addr: CE34FEA
add 0xEF,r0 ; r0 set to 0x130		; addr: CE34FEC
mov.w @(r0,r14),r3		; addr: CE34FEE
tst r3,r3		; addr: CE34FF0
bt/s data_CE34FFE		; addr: CE34FF2
add r14,r8 ; r8 ??? bc r14 is ???		; addr: CE34FF4
mov.l @(data_CE350B4,pc),r1 ; r1 set to 0xC2855555		; addr: CE34FF6
lds r1,fpul 		; addr: CE34FF8
bra data_CE35004		; addr: CE34FFA
fsts fpul,fr3		; addr: CE34FFC

data_CE34FFE:
#data 0xD22E		; addr: CE34FFE
#data 0xF30D425A		; addr: CE35000

#align4
data_CE35004:
#data 0xF230F288		; addr: CE35004
#data 0xF82A		; addr: CE35008


l_code_CE3500A:
lds.l @r15+,pr 		; addr: CE3500A
mov.l @r15+,r8		; addr: CE3500C
mov.l @r15+,r13		; addr: CE3500E
rts 		; addr: CE35010
mov.l @r15+,r14		; addr: CE35012
;-------------------------------------------------------------------------------

#align4
data_CE35014:
#data 0x2FD62FE6		; addr: CE35014
#data 0x7FFC4F22		; addr: CE35018
#data 0xD1276E43		; addr: CE3501C
#data 0x84E72F52		; addr: CE35020
#data 0x600C9540		; addr: CE35024
#data 0x031E4008		; addr: CE35028
#data 0x430B35EC		; addr: CE3502C
#data 0xD22364E3		; addr: CE35030
#data 0x61306322		; addr: CE35034
#data 0x611CE305		; addr: CE35038
#data 0x8B073133		; addr: CE3503C
#data 0x410BD120		; addr: CE35040
#data 0x20080009		; addr: CE35044
#data 0x61F28B02		; addr: CE35048
#data 0x8115E000		; addr: CE3504C

#align4
data_CE35050:
#data 0xDD1D63F2		; addr: CE35050
#data 0x70FF8535		; addr: CE35054
#data 0x600F8135		; addr: CE35058
#data 0x89154015		; addr: CE3505C
#data 0xE50084E6		; addr: CE35060
#data 0x7001E701		; addr: CE35064
#data 0xE00080E6		; addr: CE35068
#data 0xE02580E7		; addr: CE3506C
#data 0x666C06EC		; addr: CE35070
#data 0x4D0B7606		; addr: CE35074
#data 0x64E364E3		; addr: CE35078
#data 0xE625E516		; addr: CE3507C
#data 0x4F267F04		; addr: CE35080
#data 0x6DF6D311		; addr: CE35084
#data 0x6EF6432B		; addr: CE35088

#align4
data_CE3508C:
#data 0x6032D310		; addr: CE3508C
#data 0xC8015007		; addr: CE35090
#data 0xE5008F1E		; addr: CE35094
#data 0x06ECE025		; addr: CE35098
#data 0x666CE701		; addr: CE3509C
#data 0xA01D4600		; addr: CE350A0
#data 0x7614		; addr: CE350A4

data_CE350A6:
#data 0x0141		; addr: CE350A6
#data 0x000002A4		; addr: CE350A8

#align4
ptr_CE350AC_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE350AC

ptr_CE350B0_to_fn_extern_8C0D0584:
#data fn_extern_8C0D0584		; addr: CE350B0

data_CE350B4:
#data 0xC2855555		; addr: CE350B4
#data 0x42855555		; addr: CE350B8

#align4
ptr_CE350BC_to_ptr_CE364DC_to_f_code_CE35112:
#data ptr_CE364DC_to_f_code_CE35112		; addr: CE350BC
#data extern_8C2896B0		; addr: CE350C0
#data extern_8C0310F2		; addr: CE350C4
#data fn_extern_8C03544C		; addr: CE350C8
#data fn_extern_8C034E8C		; addr: CE350CC
#data extern_8C26823C		; addr: CE350D0

#align4
data_CE350D4:
#data 0x06ECE025		; addr: CE350D4
#data 0x666CE701		; addr: CE350D8
#data 0x76154600		; addr: CE350DC

#align4
data_CE350E0:
#data 0x64E34D0B		; addr: CE350E0
#data 0x6032D343		; addr: CE350E4
#data 0xC8035007		; addr: CE350E8
#data 0xC7428B0C		; addr: CE350EC
#data 0xF50864E3		; addr: CE350F0
#data 0xE600C741		; addr: CE350F4
#data 0x6563F408		; addr: CE350F8
#data 0x4F267F04		; addr: CE350FC
#data 0x6DF6D23F		; addr: CE35100
#data 0x6EF6422B		; addr: CE35104

#align4
data_CE35108:
#data 0x4F267F04		; addr: CE35108
#data 0x000B6DF6		; addr: CE3510C
#data 0x6EF6		; addr: CE35110
;-------------------------------------------------------------------------------

f_code_CE35112:
mov.l r14,@-r15		; addr: CE35112
sts.l pr,@-r15		; addr: CE35114
mov.l @(ptr_CE35204_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE35116
jsr @r3		; addr: CE35118
mov r4,r14		; addr: CE3511A
exts.b r0,r0		; addr: CE3511C
cmp/pz r0		; addr: CE3511E
bt l_code_CE3516E		; addr: CE35120
mov.b @(0x07,r14),r0 		; addr: CE35122
mov 0x45,r3 ; r3 set to 0x45		; addr: CE35124
mov.l @(ptr_CE35208_to_extern_8C26A518,pc),r4 ; r4 set to 0x8C26A518		; addr: CE35126
mov 0x16,r5 ; r5 set to 0x16		; addr: CE35128
add 0x01,r0		; addr: CE3512A
mov.b r0,@(0x07,r14) 		; addr: CE3512C
mov 0x02,r0 ; r0 set to 0x02		; addr: CE3512E
mov.b r0,@(0x05,r4) 		; addr: CE35130
mov 0x01,r0 ; r0 set to 0x01		; addr: CE35132
mov.b r0,@(0x06,r4) 		; addr: CE35134
mov 0x00,r4 ; r4 set to 0x00		; addr: CE35136
mov.w @(data_CE351F2,pc),r0 ; r0 set to 0x1A1		; addr: CE35138
mov 0x29,r6 ; r6 set to 0x29		; addr: CE3513A
mov.b r3,@(r0,r14) 		; addr: CE3513C
add 0x0B,r0 ; r0 set to 0x1AC		; addr: CE3513E
mov.w r4,@(r0,r14) 		; addr: CE35140
add 0xF2,r0 ; r0 set to 0x19E		; addr: CE35142
mov.b r4,@(r0,r14) 		; addr: CE35144
add 0x26,r0 ; r0 set to 0x1C4		; addr: CE35146
mov.l @(ptr_CE3520C_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0		; addr: CE35148
mov.l r4,@(r0,r14) 		; addr: CE3514A
mov.b @(0x02,r14),r0 		; addr: CE3514C
mov.l @r3,r2		; addr: CE3514E
extu.b r0,r0 ; r0 set to 0xC4		; addr: CE35150
shll r0 ; r0 set to 0x188		; addr: CE35152
add 0x7C,r2		; addr: CE35154
mov.w @(r0,r2),r1		; addr: CE35156
add 0x01,r1		; addr: CE35158
mov.w r1,@(r0,r2) 		; addr: CE3515A
mov.l @(ptr_CE35210_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE3515C
jsr @r2		; addr: CE3515E
mov r14,r4 ; r4 ??? bc r14 is ???		; addr: CE35160
lds.l @r15+,pr 		; addr: CE35162
mov.l @(ptr_CE35214_to_fn_extern_8C0805D8,pc),r3 ; r3 set to 0x8C0805D8		; addr: CE35164
mov 0x00,r5 ; r5 set to 0x00		; addr: CE35166
mov r14,r4		; addr: CE35168
jmp @r3		; addr: CE3516A
mov.l @r15+,r14		; addr: CE3516C

l_code_CE3516E:
lds.l @r15+,pr 		; addr: CE3516E
rts 		; addr: CE35170
mov.l @r15+,r14		; addr: CE35172
;-------------------------------------------------------------------------------

f_code_CE35174:
mov.l r14,@-r15		; addr: CE35174
sts.l pr,@-r15		; addr: CE35176
mov.l @(ptr_CE35204_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE35178
jsr @r3		; addr: CE3517A
mov r4,r14		; addr: CE3517C
exts.b r0,r0		; addr: CE3517E
cmp/pz r0		; addr: CE35180
bt l_code_CE35198		; addr: CE35182
mov.b @(0x07,r14),r0 		; addr: CE35184
mov r14,r4		; addr: CE35186
mov.l @(ptr_CE35210_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE35188
mov 0x29,r6 ; r6 set to 0x29		; addr: CE3518A
add 0x01,r0		; addr: CE3518C
mov.b r0,@(0x07,r14) 		; addr: CE3518E
mov 0x16,r5 ; r5 set to 0x16		; addr: CE35190
lds.l @r15+,pr 		; addr: CE35192
jmp @r3		; addr: CE35194
mov.l @r15+,r14		; addr: CE35196

l_code_CE35198:
lds.l @r15+,pr 		; addr: CE35198
rts 		; addr: CE3519A
mov.l @r15+,r14		; addr: CE3519C
;-------------------------------------------------------------------------------

f_code_CE3519E:
mov.l r14,@-r15		; addr: CE3519E
sts.l pr,@-r15		; addr: CE351A0
mov.l @(ptr_CE35204_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE351A2
jsr @r3		; addr: CE351A4
mov r4,r14		; addr: CE351A6
exts.b r0,r0		; addr: CE351A8
cmp/pz r0		; addr: CE351AA
bt l_code_CE351C2		; addr: CE351AC
mov.b @(0x07,r14),r0 		; addr: CE351AE
mov r14,r4		; addr: CE351B0
mov.l @(ptr_CE35210_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE351B2
mov 0x2B,r6 ; r6 set to 0x2B		; addr: CE351B4
add 0x01,r0		; addr: CE351B6
mov.b r0,@(0x07,r14) 		; addr: CE351B8
mov 0x16,r5 ; r5 set to 0x16		; addr: CE351BA
lds.l @r15+,pr 		; addr: CE351BC
jmp @r3		; addr: CE351BE
mov.l @r15+,r14		; addr: CE351C0

l_code_CE351C2:
lds.l @r15+,pr 		; addr: CE351C2
rts 		; addr: CE351C4
mov.l @r15+,r14		; addr: CE351C6
;-------------------------------------------------------------------------------

f_code_CE351C8:
mov.l r14,@-r15		; addr: CE351C8
sts.l pr,@-r15		; addr: CE351CA
mov.l @(ptr_CE35204_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE351CC
jsr @r3		; addr: CE351CE
mov r4,r14		; addr: CE351D0
exts.b r0,r0		; addr: CE351D2
cmp/pz r0		; addr: CE351D4
bt l_code_CE351EC		; addr: CE351D6
mov.b @(0x07,r14),r0 		; addr: CE351D8
mov r14,r4		; addr: CE351DA
mov.l @(ptr_CE35210_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE351DC
mov 0x27,r6 ; r6 set to 0x27		; addr: CE351DE
add 0x01,r0		; addr: CE351E0
mov.b r0,@(0x07,r14) 		; addr: CE351E2
mov 0x16,r5 ; r5 set to 0x16		; addr: CE351E4
lds.l @r15+,pr 		; addr: CE351E6
jmp @r3		; addr: CE351E8
mov.l @r15+,r14		; addr: CE351EA

l_code_CE351EC:
lds.l @r15+,pr 		; addr: CE351EC
rts 		; addr: CE351EE
mov.l @r15+,r14		; addr: CE351F0
;-------------------------------------------------------------------------------

data_CE351F2:
#data 0x01A1		; addr: CE351F2
#data extern_8C26823C		; addr: CE351F4
#data 0x3ECCCCCD		; addr: CE351F8
#data 0x40733333		; addr: CE351FC
#data fn_extern_8C0FD75C		; addr: CE35200

#align4
ptr_CE35204_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE35204

ptr_CE35208_to_extern_8C26A518:
#data extern_8C26A518		; addr: CE35208

ptr_CE3520C_to_extern_8C2896B0:
#data extern_8C2896B0		; addr: CE3520C

ptr_CE35210_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE35210

ptr_CE35214_to_fn_extern_8C0805D8:
#data fn_extern_8C0805D8		; addr: CE35214


f_code_CE35218:
mov.l r14,@-r15		; addr: CE35218
sts.l pr,@-r15		; addr: CE3521A
mov.l @(ptr_CE3535C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE3521C
jsr @r3		; addr: CE3521E
mov r4,r14		; addr: CE35220
exts.b r0,r0		; addr: CE35222
cmp/pz r0		; addr: CE35224
bt l_code_CE3523C		; addr: CE35226
mov.b @(0x07,r14),r0 		; addr: CE35228
mov r14,r4		; addr: CE3522A
mov.l @(ptr_CE35360_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE3522C
mov 0x2C,r6 ; r6 set to 0x2C		; addr: CE3522E
add 0x01,r0		; addr: CE35230
mov.b r0,@(0x07,r14) 		; addr: CE35232
mov 0x16,r5 ; r5 set to 0x16		; addr: CE35234
lds.l @r15+,pr 		; addr: CE35236
jmp @r3		; addr: CE35238
mov.l @r15+,r14		; addr: CE3523A

l_code_CE3523C:
lds.l @r15+,pr 		; addr: CE3523C
rts 		; addr: CE3523E
mov.l @r15+,r14		; addr: CE35240
;-------------------------------------------------------------------------------

f_code_CE35242:
mov.l r14,@-r15		; addr: CE35242
sts.l pr,@-r15		; addr: CE35244
mov.l @(ptr_CE3535C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE35246
jsr @r3		; addr: CE35248
mov r4,r14		; addr: CE3524A
exts.b r0,r0		; addr: CE3524C
cmp/pz r0		; addr: CE3524E
bt l_code_CE35266		; addr: CE35250
mov.b @(0x07,r14),r0 		; addr: CE35252
mov r14,r4		; addr: CE35254
mov.l @(ptr_CE35360_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE35256
mov 0x26,r6 ; r6 set to 0x26		; addr: CE35258
add 0x01,r0		; addr: CE3525A
mov.b r0,@(0x07,r14) 		; addr: CE3525C
mov 0x16,r5 ; r5 set to 0x16		; addr: CE3525E
lds.l @r15+,pr 		; addr: CE35260
jmp @r3		; addr: CE35262
mov.l @r15+,r14		; addr: CE35264

l_code_CE35266:
lds.l @r15+,pr 		; addr: CE35266
rts 		; addr: CE35268
mov.l @r15+,r14		; addr: CE3526A
;-------------------------------------------------------------------------------

f_code_CE3526C:
mov.l r14,@-r15		; addr: CE3526C
sts.l pr,@-r15		; addr: CE3526E
mov.l @(ptr_CE3535C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE35270
jsr @r3		; addr: CE35272
mov r4,r14		; addr: CE35274
exts.b r0,r0		; addr: CE35276
cmp/pz r0		; addr: CE35278
bt l_code_CE3528E		; addr: CE3527A
mov.l @(ptr_CE35360_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE3527C
mov 0x01,r0 ; r0 set to 0x01		; addr: CE3527E
mov r14,r4		; addr: CE35280
mov.b r0,@(0x07,r14) 		; addr: CE35282
lds.l @r15+,pr 		; addr: CE35284
mov 0x29,r6 ; r6 set to 0x29		; addr: CE35286
mov 0x16,r5 ; r5 set to 0x16		; addr: CE35288
jmp @r3		; addr: CE3528A
mov.l @r15+,r14		; addr: CE3528C

l_code_CE3528E:
lds.l @r15+,pr 		; addr: CE3528E
rts 		; addr: CE35290
mov.l @r15+,r14		; addr: CE35292
;-------------------------------------------------------------------------------

#align4
data_CE35294:
#data 0x4F222FE6		; addr: CE35294
#data 0x430BD330		; addr: CE35298
#data 0x600E6E43		; addr: CE3529C
#data 0x89034011		; addr: CE352A0
#data 0x80E6E008		; addr: CE352A4
#data 0x80E7E000		; addr: CE352A8

#align4
data_CE352AC:
#data 0x000B4F26		; addr: CE352AC
#data 0x6EF6		; addr: CE352B0
;-------------------------------------------------------------------------------

data_CE352B2:
#data 0x904F		; addr: CE352B2
#data 0x2FE6E500		; addr: CE352B4
#data 0x4F22924D		; addr: CE352B8
#data 0xD629034D		; addr: CE352BC
#data 0xDE27633D		; addr: CE352C0
#data 0x8d1D2328		; addr: CE352C4
#data 0xE004F48D		; addr: CE352C8
#data 0xE05C8047		; addr: CE352CC
#data 0xE060F447		; addr: CE352D0
#data 0xE068F447		; addr: CE352D4
#data 0xE06CF447		; addr: CE352D8
#data 0xE343F447		; addr: CE352DC
#data 0x0434903A		; addr: CE352E0
#data 0x0455700B		; addr: CE352E4
#data 0x045470F2		; addr: CE352E8
#data 0x04567026		; addr: CE352EC
#data 0x63628442		; addr: CE352F0
#data 0x4000600C		; addr: CE352F4
#data 0x013D737C		; addr: CE352F8
#data 0x03157101		; addr: CE352FC
#data 0xE620A01F		; addr: CE35300

#align4
data_CE35304:
#data 0x23289229		; addr: CE35304
#data 0xE0058930		; addr: CE35308
#data 0xE05C8047		; addr: CE3530C
#data 0xE060F447		; addr: CE35310
#data 0xE068F447		; addr: CE35314
#data 0xE06CF447		; addr: CE35318
#data 0xE344F447		; addr: CE3531C
#data 0x0434901A		; addr: CE35320
#data 0x0455700B		; addr: CE35324
#data 0x045470F2		; addr: CE35328
#data 0x04567026		; addr: CE3532C
#data 0x63628442		; addr: CE35330
#data 0x600CE634		; addr: CE35334
#data 0x737C4000		; addr: CE35338
#data 0x7101013D		; addr: CE3533C
#data 0x0315		; addr: CE35340

data_CE35342:
#data 0x4E0B		; addr: CE35342
#data 0xD408E516		; addr: CE35344
#data 0x6053E501		; addr: CE35348
#data 0x80450009		; addr: CE3534C
#data 0x8046A025		; addr: CE35350
#data 0x020004E0		; addr: CE35354
#data 0x010001A1		; addr: CE35358

#align4
ptr_CE3535C_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE3535C

ptr_CE35360_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE35360
#data extern_8C2896B0		; addr: CE35364
#data extern_8C26A518		; addr: CE35368

#align4
data_CE3536C:
#data 0x600D004D		; addr: CE3536C
#data 0x8B03C840		; addr: CE35370
#data 0xE0004F26		; addr: CE35374
#data 0x6EF6000B		; addr: CE35378
;-------------------------------------------------------------------------------

#align4
data_CE3537C:
#data 0x8046E006		; addr: CE3537C
#data 0x00096053		; addr: CE35380
#data 0xE6218047		; addr: CE35384
#data 0xE05C814F		; addr: CE35388
#data 0xE060F447		; addr: CE3538C
#data 0xE068F447		; addr: CE35390
#data 0xE06CF447		; addr: CE35394
#data 0x4E0BF447		; addr: CE35398
#data 0xE516		; addr: CE3539C

data_CE3539E:
#data 0xE001		; addr: CE3539E
#data 0x000B4F26		; addr: CE353A0
#data 0x6EF6		; addr: CE353A4
;-------------------------------------------------------------------------------

data_CE353A6:
#data 0x655C		; addr: CE353A6
#data 0x89022558		; addr: CE353A8
#data 0xA001905E		; addr: CE353AC
#data 0x0009		; addr: CE353B0

data_CE353B2:
#data 0x905C		; addr: CE353B2

#align4
data_CE353B4:
#data 0x925B044D		; addr: CE353B4
#data 0x644D644D		; addr: CE353B8
#data 0x8B012428		; addr: CE353BC
#data 0xE000000B		; addr: CE353C0
;-------------------------------------------------------------------------------

#align4
data_CE353C4:
#data 0x000BE001		; addr: CE353C4
#data 0x0009		; addr: CE353C8
;-------------------------------------------------------------------------------

l_code_CE353CA:
mov 0x01,r0 ; r0 set to 0x01		; addr: CE353CA
mov.l @(ptr_CE35478_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE353CC
mov.b r0,@(0x06,r4) 		; addr: CE353CE
mov 0x00,r0 ; r0 set to 0x00		; addr: CE353D0
mov 0x1C,r6 ; r6 set to 0x1C		; addr: CE353D2
mov.b r0,@(0x07,r4) 		; addr: CE353D4
jmp @r3		; addr: CE353D6
mov 0x16,r5		; addr: CE353D8

data_CE353DA:
#data 0xC728		; addr: CE353DA
#data 0xF4084F22		; addr: CE353DC
#data 0x034C9047		; addr: CE353E0
#data 0x89012338		; addr: CE353E4
#data 0xF408C725		; addr: CE353E8

#align4
data_CE353EC:
#data 0x034E9042		; addr: CE353EC
#data 0xF246E034		; addr: CE353F0
#data 0xF340F336		; addr: CE353F4
#data 0x8903F235		; addr: CE353F8
#data 0x024C9039		; addr: CE353FC
#data 0x8B0B2228		; addr: CE35400

#align4
data_CE35404:
#data 0x024E9036		; addr: CE35404
#data 0xF246E034		; addr: CE35408
#data 0xF340F326		; addr: CE3540C
#data 0x8B06F235		; addr: CE35410
#data 0x024C902D		; addr: CE35414
#data 0x8B022228		; addr: CE35418

#align4
data_CE3541C:
#data 0x000B4F26		; addr: CE3541C
#data 0xE000		; addr: CE35420
;-------------------------------------------------------------------------------

data_CE35422:
#data 0x9028		; addr: CE35422
#data 0xF48DE500		; addr: CE35424
#data 0xE05C0454		; addr: CE35428
#data 0xE060F447		; addr: CE3542C
#data 0xE068F447		; addr: CE35430
#data 0xE06CF447		; addr: CE35434
#data 0xE003F447		; addr: CE35438
#data 0x60538046		; addr: CE3543C
#data 0xD30D0009		; addr: CE35440
#data 0x8047E61F		; addr: CE35444
#data 0xE516430B		; addr: CE35448
#data 0x4F26E001		; addr: CE3544C
#data 0x0009000B		; addr: CE35450
;-------------------------------------------------------------------------------

f_code_CE35454:
add 0xFC,r15		; addr: CE35454
mov.l r4,@r15		; addr: CE35456
mov r4,r0		; addr: CE35458
nop 		; addr: CE3545A
mov.w @(data_CE35476,pc),r1 ; r1 set to 0x1F9		; addr: CE3545C
mov.l @(ptr_CE35484_to_ptr_CE36500_to_f_code_CE35488,pc),r2 ; r2 set to 0xCE36500		; addr: CE3545E
mov.b @(r0,r1),r0		; addr: CE35460
extu.b r0,r0		; addr: CE35462
shll2 r0		; addr: CE35464
mov.l @(r0,r2),r0		; addr: CE35466
jmp @r0		; addr: CE35468
add 0x04,r15		; addr: CE3546A
#data 0x03400348		; addr: CE3546C
#data 0x01D20C00		; addr: CE35470
#data 0x020C		; addr: CE35474

data_CE35476:
#data 0x01F9		; addr: CE35476

#align4
ptr_CE35478_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE35478
#data 0xC1BAAAAA		; addr: CE3547C
#data 0x41BAAAAA		; addr: CE35480

#align4
ptr_CE35484_to_ptr_CE36500_to_f_code_CE35488:
#data ptr_CE36500_to_f_code_CE35488		; addr: CE35484


f_code_CE35488:
mov.w @(data_CE35570,pc),r0 ; r0 set to 0x1FA		; addr: CE35488
mov 0xF6,r1 ; r1 set to 0xFFFFFFF6		; addr: CE3548A
mov.l r14,@-r15		; addr: CE3548C
mov r4,r14		; addr: CE3548E
mov.w @(data_CE35572,pc),r2 ; r2 set to 0xC00		; addr: CE35490
sts.l pr,@-r15		; addr: CE35492
mov.w @(r0,r14),r3		; addr: CE35494
mov 0x22,r0 ; r0 set to 0x22		; addr: CE35496
extu.w r3,r3		; addr: CE35498
and r2,r3		; addr: CE3549A
shad r1, r3		; addr: CE3549C
mov.b r3,@(r0,r14) 		; addr: CE3549E
extu.b r3,r3		; addr: CE354A0
tst r3,r3		; addr: CE354A2
bt l_code_CE354F8		; addr: CE354A4
mov.w @(data_CE35574,pc),r0 ; r0 set to 0x1FE		; addr: CE354A6
mov.b @(r0,r14),r3		; addr: CE354A8
tst r3,r3		; addr: CE354AA
bf l_code_CE354C8		; addr: CE354AC
mov.w @(data_CE35576,pc),r0 ; r0 set to 0x1A3		; addr: CE354AE
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE354B0
extu.b r0,r0		; addr: CE354B2
cmp/eq 0x01,r0 		; addr: CE354B4
bf l_code_CE354C8		; addr: CE354B6
mov.l @(ptr_CE3557C_to_fn_extern_8C045790,pc),r2 ; r2 set to 0x8C045790		; addr: CE354B8
jsr @r2		; addr: CE354BA
mov r14,r4		; addr: CE354BC
tst r0,r0		; addr: CE354BE
bt/s l_code_CE354F8		; addr: CE354C0
mov r0,r4		; addr: CE354C2
bra l_code_CE354EA		; addr: CE354C4
mov 0x00,r2		; addr: CE354C6

l_code_CE354C8:
mov.w @(data_CE35574,pc),r0 ; r0 set to 0x1FE		; addr: CE354C8
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE354CA
extu.b r0,r0		; addr: CE354CC
cmp/eq 0x01,r0 		; addr: CE354CE
bf l_code_CE354F8		; addr: CE354D0
mov.w @(data_CE35576,pc),r0 ; r0 set to 0x1A3		; addr: CE354D2
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE354D4
extu.b r0,r0		; addr: CE354D6
cmp/eq 0x01,r0 		; addr: CE354D8
bf l_code_CE354F8		; addr: CE354DA
mov.l @(ptr_CE3557C_to_fn_extern_8C045790,pc),r2 ; r2 set to 0x8C045790		; addr: CE354DC
jsr @r2		; addr: CE354DE
mov r14,r4		; addr: CE354E0
tst r0,r0		; addr: CE354E2
bt/s l_code_CE354F8		; addr: CE354E4
mov r0,r4		; addr: CE354E6
mov 0x01,r2 ; r2 set to 0x01		; addr: CE354E8

l_code_CE354EA:
mov.w @(data_CE35578,pc),r0 ; r0 set to 0x1F7, r0 set to 0x1F7		; addr: CE354EA
mov.b r2,@(r0,r14) 		; addr: CE354EC
mov r4,r0 ; r0 ??? bc r4 is ???, r0 ??? bc r4 is ???		; addr: CE354EE
nop 		; addr: CE354F0
lds.l @r15+,pr 		; addr: CE354F2
rts 		; addr: CE354F4
mov.l @r15+,r14		; addr: CE354F6
;-------------------------------------------------------------------------------

l_code_CE354F8:
mov 0x00,r0 ; r0 set to 0x00		; addr: CE354F8
lds.l @r15+,pr 		; addr: CE354FA
rts 		; addr: CE354FC
mov.l @r15+,r14		; addr: CE354FE
;-------------------------------------------------------------------------------

f_code_CE35500:
rts 		; addr: CE35500
mov 0x00,r0		; addr: CE35502
;-------------------------------------------------------------------------------

f_code_CE35504:
mov.w @(data_CE35570,pc),r0 ; r0 set to 0x1FA		; addr: CE35504
mov 0xF6,r1 ; r1 set to 0xFFFFFFF6		; addr: CE35506
mov.l r14,@-r15		; addr: CE35508
mov r4,r14		; addr: CE3550A
mov.w @(data_CE35572,pc),r2 ; r2 set to 0xC00		; addr: CE3550C
sts.l pr,@-r15		; addr: CE3550E
mov.w @(r0,r14),r3		; addr: CE35510
mov 0x22,r0 ; r0 set to 0x22		; addr: CE35512
extu.w r3,r3		; addr: CE35514
and r2,r3		; addr: CE35516
shad r1, r3		; addr: CE35518
mov.b r3,@(r0,r14) 		; addr: CE3551A
extu.b r3,r3		; addr: CE3551C
tst r3,r3		; addr: CE3551E
bt l_code_CE35550		; addr: CE35520
mov.w @(data_CE35574,pc),r0 ; r0 set to 0x1FE		; addr: CE35522
mov.b @(r0,r14),r3		; addr: CE35524
tst r3,r3		; addr: CE35526
bf l_code_CE35550		; addr: CE35528
mov.w @(data_CE35576,pc),r0 ; r0 set to 0x1A3		; addr: CE3552A
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE3552C
extu.b r0,r0		; addr: CE3552E
cmp/eq 0x01,r0 		; addr: CE35530
bf l_code_CE35550		; addr: CE35532
mov.l @(ptr_CE3557C_to_fn_extern_8C045790,pc),r2 ; r2 set to 0x8C045790		; addr: CE35534
jsr @r2		; addr: CE35536
mov r14,r4		; addr: CE35538
tst r0,r0		; addr: CE3553A
bt/s l_code_CE35550		; addr: CE3553C
mov r0,r4		; addr: CE3553E
mov.w @(data_CE35578,pc),r0 ; r0 set to 0x1F7		; addr: CE35540
mov 0x02,r2 ; r2 set to 0x02		; addr: CE35542
mov.b r2,@(r0,r14) 		; addr: CE35544
mov r4,r0 ; r0 ??? bc r4 is ???		; addr: CE35546
nop 		; addr: CE35548
lds.l @r15+,pr 		; addr: CE3554A
rts 		; addr: CE3554C
mov.l @r15+,r14		; addr: CE3554E
;-------------------------------------------------------------------------------

l_code_CE35550:
mov 0x00,r0 ; r0 set to 0x00		; addr: CE35550
lds.l @r15+,pr 		; addr: CE35552
rts 		; addr: CE35554
mov.l @r15+,r14		; addr: CE35556
;-------------------------------------------------------------------------------

f_code_CE35558:
mov.l r4,@-r15		; addr: CE35558
mov r4,r0		; addr: CE3555A
nop 		; addr: CE3555C
mov.w @(data_CE35578,pc),r1 ; r1 set to 0x1F7		; addr: CE3555E
mov.l @(ptr_CE35580_to_ptr_CE36510_to_f_code_CE35584,pc),r2 ; r2 set to 0xCE36510		; addr: CE35560
mov.b @(r0,r1),r0		; addr: CE35562
extu.b r0,r0		; addr: CE35564
and 0x3F,r0 		; addr: CE35566
shll2 r0		; addr: CE35568
mov.l @(r0,r2),r3		; addr: CE3556A
jmp @r3		; addr: CE3556C
add 0x04,r15		; addr: CE3556E

data_CE35570:
#data 0x01FA		; addr: CE35570

data_CE35572:
#data 0x0C00		; addr: CE35572

data_CE35574:
#data 0x01FE		; addr: CE35574

data_CE35576:
#data 0x01A3		; addr: CE35576

data_CE35578:
#data 0x01F7		; addr: CE35578
#data 0x0000		; addr: CE3557A

#align4
ptr_CE3557C_to_fn_extern_8C045790:
#data fn_extern_8C045790		; addr: CE3557C

ptr_CE35580_to_ptr_CE36510_to_f_code_CE35584:
#data ptr_CE36510_to_f_code_CE35584		; addr: CE35580


f_code_CE35584:
mov.l r14,@-r15		; addr: CE35584
sts.l pr,@-r15		; addr: CE35586
add 0xF4,r15		; addr: CE35588
mova @(data_CE356D4,pc),r0  ; r0 init to 0xCE356D4		; addr: CE3558A
mov.l @(ptr_CE356DC_to_extern_8C103660,pc),r3 ; r3 set to 0x8C103660		; addr: CE3558C
fmov.s @r0,fr3 ; r3 ??		; addr: CE3558E
mova @(data_CE356D8,pc),r0  ; r0 set to 0xCE356D8		; addr: CE35590
mov r4,r14		; addr: CE35592
mov r15,r5		; addr: CE35594
fmov.s fr3,@r15		; addr: CE35596
fmov.s @r0,fr3		; addr: CE35598
mov 0x04,r0 ; r0 set to 0x04		; addr: CE3559A
fmov.s fr3,@(r0,r15) 		; addr: CE3559C
jsr @r3		; addr: CE3559E
mov r14,r4		; addr: CE355A0
mov.w @(data_CE356CA,pc),r0 ; r0 set to 0x1A0		; addr: CE355A2
mov 0x0A,r2 ; r2 set to 0x0A		; addr: CE355A4
mov.l @(ptr_CE356E0_to_fn_extern_8C056F2A,pc),r3 ; r3 set to 0x8C056F2A		; addr: CE355A6
mov.b r2,@(r0,r14) 		; addr: CE355A8
jsr @r3		; addr: CE355AA
mov r14,r4		; addr: CE355AC
mov.l @(ptr_CE356E4_to_fn_extern_8C02FEC4,pc),r2 ; r2 set to 0x8C02FEC4		; addr: CE355AE
mov 0x0D,r5 ; r5 set to 0x0D		; addr: CE355B0
mov 0x06,r6 ; r6 set to 0x06		; addr: CE355B2
jsr @r2		; addr: CE355B4
mov r14,r4		; addr: CE355B6
mov.w @(data_CE356CC,pc),r0 ; r0 set to 0x1F9		; addr: CE355B8
mov 0x02,r3 ; r3 set to 0x02		; addr: CE355BA
mov 0x0F,r5 ; r5 set to 0x0F		; addr: CE355BC
mov.b r3,@(r0,r14) 		; addr: CE355BE
mov 0x00,r6 ; r6 set to 0x00		; addr: CE355C0
mov.l @(ptr_CE356E8_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE355C2
jsr @r3		; addr: CE355C4
mov r14,r4		; addr: CE355C6
add 0x0C,r15		; addr: CE355C8
lds.l @r15+,pr 		; addr: CE355CA
rts 		; addr: CE355CC
mov.l @r15+,r14		; addr: CE355CE
;-------------------------------------------------------------------------------

#align4
data_CE355D0:
#data 0x4F222FE6		; addr: CE355D0
#data 0xE0227FF4		; addr: CE355D4
#data 0x00EC6E43		; addr: CE355D8
#data 0xC802600C		; addr: CE355DC
#data 0x90748908		; addr: CE355E0
#data 0x02ECE301		; addr: CE355E4
#data 0x0E24223A		; addr: CE355E8
#data 0x906F01EC		; addr: CE355EC
#data 0x0E15611C		; addr: CE355F0

#align4
data_CE355F4:
#data 0xD339C737		; addr: CE355F4
#data 0xC737F308		; addr: CE355F8
#data 0xFF3A65F3		; addr: CE355FC
#data 0xE004F308		; addr: CE35600
#data 0x430BFF37		; addr: CE35604
#data 0x905E64E3		; addr: CE35608
#data 0xD334E20A		; addr: CE3560C
#data 0x430B0E24		; addr: CE35610
#data 0xD23364E3		; addr: CE35614
#data 0xE607E50D		; addr: CE35618
#data 0x64E3420B		; addr: CE3561C
#data 0xE50FD331		; addr: CE35620
#data 0x430BE605		; addr: CE35624
#data 0xD23064E3		; addr: CE35628
#data 0x420BE504		; addr: CE3562C
#data 0x7F0C64E3		; addr: CE35630
#data 0x000B4F26		; addr: CE35634
#data 0x6EF6		; addr: CE35638
;-------------------------------------------------------------------------------

f_code_CE3563A:
mov.l r14,@-r15		; addr: CE3563A
sts.l pr,@-r15		; addr: CE3563C
add 0xF4,r15		; addr: CE3563E
mova @(data_CE356D4,pc),r0  ; r0 init to 0xCE356D4		; addr: CE35640
mov.l @(ptr_CE356DC_to_extern_8C103660,pc),r3 ; r3 set to 0x8C103660		; addr: CE35642
fmov.s @r0,fr3 ; r3 ??		; addr: CE35644
mova @(data_CE356D8,pc),r0  ; r0 set to 0xCE356D8		; addr: CE35646
mov r4,r14		; addr: CE35648
mov r15,r5		; addr: CE3564A
fmov.s fr3,@r15		; addr: CE3564C
fmov.s @r0,fr3		; addr: CE3564E
mov 0x04,r0 ; r0 set to 0x04		; addr: CE35650
fmov.s fr3,@(r0,r15) 		; addr: CE35652
jsr @r3		; addr: CE35654
mov r14,r4		; addr: CE35656
mov.w @(data_CE356CA,pc),r0 ; r0 set to 0x1A0		; addr: CE35658
mov 0x0A,r2 ; r2 set to 0x0A		; addr: CE3565A
mov.l @(ptr_CE356E0_to_fn_extern_8C056F2A,pc),r3 ; r3 set to 0x8C056F2A		; addr: CE3565C
mov.b r2,@(r0,r14) 		; addr: CE3565E
jsr @r3		; addr: CE35660
mov r14,r4		; addr: CE35662
mov.l @(ptr_CE356E4_to_fn_extern_8C02FEC4,pc),r2 ; r2 set to 0x8C02FEC4		; addr: CE35664
mov 0x0D,r5 ; r5 set to 0x0D		; addr: CE35666
mov 0x06,r6 ; r6 set to 0x06		; addr: CE35668
jsr @r2		; addr: CE3566A
mov r14,r4		; addr: CE3566C
mov.w @(data_CE356CC,pc),r0 ; r0 set to 0x1F9		; addr: CE3566E
mov 0x02,r3 ; r3 set to 0x02		; addr: CE35670
mov 0x0F,r5 ; r5 set to 0x0F		; addr: CE35672
mov.b r3,@(r0,r14) 		; addr: CE35674
mov 0x03,r6 ; r6 set to 0x03		; addr: CE35676
mov.l @(ptr_CE356E8_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE35678
jsr @r3		; addr: CE3567A
mov r14,r4		; addr: CE3567C
mov.l @(ptr_CE356EC_to_fn_extern_8C042008,pc),r2 ; r2 set to 0x8C042008		; addr: CE3567E
mov 0x03,r5 ; r5 set to 0x03		; addr: CE35680
jsr @r2		; addr: CE35682
mov r14,r4		; addr: CE35684
add 0x0C,r15		; addr: CE35686
lds.l @r15+,pr 		; addr: CE35688
rts 		; addr: CE3568A
mov.l @r15+,r14		; addr: CE3568C
;-------------------------------------------------------------------------------

f_code_CE3568E:
mov.l r14,@-r15		; addr: CE3568E
sts.l pr,@-r15		; addr: CE35690
add 0xF4,r15		; addr: CE35692
mova @(data_CE356D4,pc),r0  ; r0 init to 0xCE356D4		; addr: CE35694
mov.l @(ptr_CE356DC_to_extern_8C103660,pc),r3 ; r3 set to 0x8C103660		; addr: CE35696
fmov.s @r0,fr3 ; r3 ??		; addr: CE35698
mova @(data_CE356D8,pc),r0  ; r0 set to 0xCE356D8		; addr: CE3569A
mov r4,r14		; addr: CE3569C
mov r15,r5		; addr: CE3569E
fmov.s fr3,@r15		; addr: CE356A0
fmov.s @r0,fr3		; addr: CE356A2
mov 0x04,r0 ; r0 set to 0x04		; addr: CE356A4
fmov.s fr3,@(r0,r15) 		; addr: CE356A6
jsr @r3		; addr: CE356A8
mov r14,r4		; addr: CE356AA
mov.w @(data_CE356CA,pc),r0 ; r0 set to 0x1A0		; addr: CE356AC
mov 0x0A,r2 ; r2 set to 0x0A		; addr: CE356AE
mov.l @(ptr_CE356E0_to_fn_extern_8C056F2A,pc),r3 ; r3 set to 0x8C056F2A		; addr: CE356B0
mov.b r2,@(r0,r14) 		; addr: CE356B2
jsr @r3		; addr: CE356B4
mov r14,r4		; addr: CE356B6
mov.l @(ptr_CE356E4_to_fn_extern_8C02FEC4,pc),r2 ; r2 set to 0x8C02FEC4		; addr: CE356B8
mov 0x05,r6 ; r6 set to 0x05		; addr: CE356BA
mov r6,r5 ; r5 set to 0x05		; addr: CE356BC
jsr @r2		; addr: CE356BE
mov r14,r4		; addr: CE356C0
add 0x0C,r15		; addr: CE356C2
lds.l @r15+,pr 		; addr: CE356C4
rts 		; addr: CE356C6
mov.l @r15+,r14		; addr: CE356C8
;-------------------------------------------------------------------------------

data_CE356CA:
#data 0x01A0		; addr: CE356CA

data_CE356CC:
#data 0x01F9		; addr: CE356CC
#data 0x01D2		; addr: CE356CE
#data 0x00000130		; addr: CE356D0

#align4
data_CE356D4:
#data 0xC2555555		; addr: CE356D4

#align4
data_CE356D8:
#data 0x432B6DB6		; addr: CE356D8

#align4
ptr_CE356DC_to_extern_8C103660:
#data extern_8C103660		; addr: CE356DC

ptr_CE356E0_to_fn_extern_8C056F2A:
#data fn_extern_8C056F2A		; addr: CE356E0

ptr_CE356E4_to_fn_extern_8C02FEC4:
#data fn_extern_8C02FEC4		; addr: CE356E4

ptr_CE356E8_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE356E8

ptr_CE356EC_to_fn_extern_8C042008:
#data fn_extern_8C042008		; addr: CE356EC


f_code_CE356F0:
mov.w @(data_CE357EA,pc),r0 ; r0 set to 0x1EA		; addr: CE356F0
mov 0x01,r3 ; r3 set to 0x01		; addr: CE356F2
mov.l r14,@-r15		; addr: CE356F4
mov r4,r14		; addr: CE356F6
mov.b r3,@(r0,r14) 		; addr: CE356F8
add 0x0D,r0 ; r0 set to 0x1F7		; addr: CE356FA
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE356FC
mov r14,r4		; addr: CE356FE
mov.l @(ptr_CE357F8_to_ptr_CE36520_to_f_code_CE3570E,pc),r1 ; r1 set to 0xCE36520		; addr: CE35700
extu.b r0,r0		; addr: CE35702
and 0x3F,r0 		; addr: CE35704
shll2 r0		; addr: CE35706
mov.l @(r0,r1),r3 ; r3 ??		; addr: CE35708
jmp @r3		; addr: CE3570A
mov.l @r15+,r14		; addr: CE3570C

f_code_CE3570E:
mov r4,r3		; addr: CE3570E
mov.l @(ptr_CE357FC_to_ptr_CE36530_to_data_CE35720,pc),r1 ; r1 set to 0xCE36530		; addr: CE35710
mov.l r4,@-r15		; addr: CE35712
mov.b @(0x06,r3),r0 		; addr: CE35714
extu.b r0,r0		; addr: CE35716
shll2 r0		; addr: CE35718
mov.l @(r0,r1),r3		; addr: CE3571A
jmp @r3		; addr: CE3571C
add 0x04,r15		; addr: CE3571E

#align4
data_CE35720:
#data 0x2F862FE6		; addr: CE35720
#data 0x7FF44F22		; addr: CE35724
#data 0x430BD335		; addr: CE35728
#data 0x905D6E43		; addr: CE3572C
#data 0x880100EC		; addr: CE35730
#data 0x90598B17		; addr: CE35734
#data 0xE320E203		; addr: CE35738
#data 0x90560E24		; addr: CE3573C
#data 0x70D904EE		; addr: CE35740
#data 0xD32F0434		; addr: CE35744
#data 0x64E3430B		; addr: CE35748
#data 0xD32EE004		; addr: CE3574C
#data 0x65F3F48D		; addr: CE35750
#data 0xFF4AE601		; addr: CE35754
#data 0x430BFF47		; addr: CE35758
#data 0xD22B64E3		; addr: CE3575C
#data 0x420BE50E		; addr: CE35760
#data 0x64E3		; addr: CE35764

data_CE35766:
#data 0x9041		; addr: CE35766
#data 0x880200EC		; addr: CE35768
#data 0x903E8B38		; addr: CE3576C
#data 0x913EE322		; addr: CE35770
#data 0x04EEE201		; addr: CE35774
#data 0x314C84E6		; addr: CE35778
#data 0x80E67001		; addr: CE3577C
#data 0x04E69036		; addr: CE35780
#data 0x00EC701E		; addr: CE35784
#data 0x2100CA01		; addr: CE35788
#data 0x04349032		; addr: CE3578C
#data 0xD31F7055		; addr: CE35790
#data 0x0424430B		; addr: CE35794
#data 0xE51FD21E		; addr: CE35798
#data 0x420BE600		; addr: CE3579C
#data 0x902864E3		; addr: CE357A0
#data 0x03EDE834		; addr: CE357A4
#data 0x8d042338		; addr: CE357A8
#data 0xD11A38EC		; addr: CE357AC
#data 0xA003415A		; addr: CE357B0
#data 0xF30D		; addr: CE357B4

data_CE357B6:
#data 0xD219		; addr: CE357B6
#data 0xF30D425A		; addr: CE357B8

#align4
data_CE357BC:
#data 0xE038F288		; addr: CE357BC
#data 0xF230D117		; addr: CE357C0
#data 0xF82A415A		; addr: CE357C4
#data 0xF30DF2E6		; addr: CE357C8
#data 0xFE27F230		; addr: CE357CC
#data 0xF208C714		; addr: CE357D0
#data 0xFE27E060		; addr: CE357D4
#data 0xF208C713		; addr: CE357D8
#data 0xFE27E06C		; addr: CE357DC

#align4
data_CE357E0:
#data 0x4F267F0C		; addr: CE357E0
#data 0x000B68F6		; addr: CE357E4
#data 0x6EF6		; addr: CE357E8
;-------------------------------------------------------------------------------

data_CE357EA:
#data 0x01EA		; addr: CE357EA
#data 0x01C80141		; addr: CE357EC
#data 0x01D201B4		; addr: CE357F0
#data 0x013001A1		; addr: CE357F4

#align4
ptr_CE357F8_to_ptr_CE36520_to_f_code_CE3570E:
#data ptr_CE36520_to_f_code_CE3570E		; addr: CE357F8

ptr_CE357FC_to_ptr_CE36530_to_data_CE35720:
#data ptr_CE36530_to_data_CE35720		; addr: CE357FC
#data fn_extern_8C034DEE		; addr: CE35800
#data extern_8C05933C		; addr: CE35804
#data extern_8C0FDAB6		; addr: CE35808
#data fn_extern_8C04223A		; addr: CE3580C
#data fn_extern_8C02FD26		; addr: CE35810
#data fn_extern_8C0D13BC		; addr: CE35814
#data 0xC2D55555		; addr: CE35818
#data 0x42D55555		; addr: CE3581C
#data 0xC31A4924		; addr: CE35820
#data 0x413C9249		; addr: CE35824
#data 0xBF676DB6		; addr: CE35828


f_code_CE3582C:
mov.l r14,@-r15		; addr: CE3582C
sts.l pr,@-r15		; addr: CE3582E
mov.l @(ptr_CE3593C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE35830
jsr @r3		; addr: CE35832
mov r4,r14		; addr: CE35834
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE35836
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE35838
mov 0x34,r0 ; r0 set to 0x34		; addr: CE3583A
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE3583C
fmov.s @(r0,r14),fr2		; addr: CE3583E
mov 0x68,r1 ; r1 set to 0x68		; addr: CE35840
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE35842
fadd fr3,fr2		; addr: CE35844
fmov.s fr2,@(r0,r14) 		; addr: CE35846
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE35848
fmov.s @(r0,r14),fr2		; addr: CE3584A
fmov.s @r1,fr3		; addr: CE3584C
mov 0x60,r1 ; r1 set to 0x60		; addr: CE3584E
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE35850
fadd fr3,fr2		; addr: CE35852
fmov.s fr2,@(r0,r14) 		; addr: CE35854
mov 0x38,r0 ; r0 set to 0x38		; addr: CE35856
fmov.s @(r0,r14),fr2		; addr: CE35858
fmov.s @r1,fr3		; addr: CE3585A
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE3585C
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE3585E
fadd fr3,fr2		; addr: CE35860
fmov.s fr2,@(r0,r14) 		; addr: CE35862
mov 0x60,r0 ; r0 set to 0x60		; addr: CE35864
fmov.s @(r0,r14),fr2		; addr: CE35866
fmov.s @r1,fr3		; addr: CE35868
fadd fr3,fr2		; addr: CE3586A
fmov.s fr2,@(r0,r14) 		; addr: CE3586C
mov.w @(data_CE35934,pc),r0 ; r0 set to 0x41C		; addr: CE3586E
fmov.s @(r0,r14),fr3		; addr: CE35870
mov 0x38,r0 ; r0 set to 0x38		; addr: CE35872
fmov.s @(r0,r14),fr2		; addr: CE35874
fcmp/gt fr3,fr2		; addr: CE35876
bt l_code_CE358B4		; addr: CE35878
mov.b @(0x06,r14),r0 		; addr: CE3587A
mov 0x00,r3 ; r3 set to 0x00		; addr: CE3587C
add 0x01,r0 ; r0 set to 0x39		; addr: CE3587E
mov.b r0,@(0x06,r14) 		; addr: CE35880
mov.w @(data_CE35934,pc),r0 ; r0 set to 0x41C		; addr: CE35882
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???		; addr: CE35884
mov 0x38,r0 ; r0 set to 0x38		; addr: CE35886
fmov.s fr3,@(r0,r14) 		; addr: CE35888
mov.w @(data_CE35936,pc),r0 ; r0 set to 0x1F9		; addr: CE3588A
mov.b r3,@(r0,r14) 		; addr: CE3588C
mov.l @(ptr_CE35940_to_fn_extern_8C0511B4,pc),r3 ; r3 set to 0x8C0511B4		; addr: CE3588E
jsr @r3		; addr: CE35890
mov r14,r4		; addr: CE35892
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE35894
fldi0 fr4		; addr: CE35896
fmov.s fr4,@(r0,r14) 		; addr: CE35898
mov 0x60,r0 ; r0 set to 0x60		; addr: CE3589A
fmov.s fr4,@(r0,r14) 		; addr: CE3589C
mov 0x68,r0 ; r0 set to 0x68		; addr: CE3589E
fmov.s fr4,@(r0,r14) 		; addr: CE358A0
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE358A2
mov.l @(ptr_CE35944_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE358A4
mov r14,r4		; addr: CE358A6
fmov.s fr4,@(r0,r14) 		; addr: CE358A8
mov 0x02,r6 ; r6 set to 0x02		; addr: CE358AA
lds.l @r15+,pr 		; addr: CE358AC
mov 0x0F,r5 ; r5 set to 0x0F		; addr: CE358AE
jmp @r3		; addr: CE358B0
mov.l @r15+,r14		; addr: CE358B2

l_code_CE358B4:
lds.l @r15+,pr 		; addr: CE358B4
rts 		; addr: CE358B6
mov.l @r15+,r14		; addr: CE358B8
;-------------------------------------------------------------------------------

f_code_CE358BA:
sts.l pr,@-r15		; addr: CE358BA
add 0xFC,r15		; addr: CE358BC
mov.l @(ptr_CE3593C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE358BE
jsr @r3		; addr: CE358C0
mov.l r4,@r15		; addr: CE358C2
exts.b r0,r0		; addr: CE358C4
cmp/pz r0		; addr: CE358C6
bt l_code_CE358D4		; addr: CE358C8
mov.l @r15,r4		; addr: CE358CA
add 0x04,r15		; addr: CE358CC
mov.l @(ptr_CE35948_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE358CE
jmp @r3		; addr: CE358D0
lds.l @r15+,pr 		; addr: CE358D2

l_code_CE358D4:
add 0x04,r15		; addr: CE358D4
lds.l @r15+,pr 		; addr: CE358D6
rts 		; addr: CE358D8
nop 		; addr: CE358DA
;-------------------------------------------------------------------------------

f_code_CE358DC:
mov.l r14,@-r15		; addr: CE358DC
sts.l pr,@-r15		; addr: CE358DE
mov.l @(ptr_CE3593C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE358E0
jsr @r3		; addr: CE358E2
mov r4,r14		; addr: CE358E4
exts.b r0,r0		; addr: CE358E6
cmp/pz r0		; addr: CE358E8
bt data_CE358F6		; addr: CE358EA
lds.l @r15+,pr 		; addr: CE358EC
mov.l @(ptr_CE35948_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE358EE
mov r14,r4		; addr: CE358F0
jmp @r3		; addr: CE358F2
mov.l @r15+,r14		; addr: CE358F4

data_CE358F6:
#data 0x901F		; addr: CE358F6
#data 0x222802EC		; addr: CE358F8
#data 0xE300890E		; addr: CE358FC
#data 0x707D0E34		; addr: CE35900
#data 0x70EC04EE		; addr: CE35904
#data 0x04E6E221		; addr: CE35908
#data 0x03EC701E		; addr: CE3590C
#data 0x70CF0434		; addr: CE35910
#data 0x70550424		; addr: CE35914
#data 0x0434E310		; addr: CE35918

#align4
data_CE3591C:
#data 0x000B4F26		; addr: CE3591C
#data 0x6EF6		; addr: CE35920
;-------------------------------------------------------------------------------

f_code_CE35922:
mov r4,r3		; addr: CE35922
mov.l @(ptr_CE3594C_to_ptr_CE3653C_to_f_code_CE35950,pc),r1 ; r1 set to 0xCE3653C		; addr: CE35924
mov.l r4,@-r15		; addr: CE35926
mov.b @(0x06,r3),r0 		; addr: CE35928
extu.b r0,r0		; addr: CE3592A
shll2 r0		; addr: CE3592C
mov.l @(r0,r1),r3		; addr: CE3592E
jmp @r3		; addr: CE35930
add 0x04,r15		; addr: CE35932

data_CE35934:
#data 0x041C		; addr: CE35934

data_CE35936:
#data 0x01F9		; addr: CE35936
#data 0x0000014B		; addr: CE35938

#align4
ptr_CE3593C_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE3593C

ptr_CE35940_to_fn_extern_8C0511B4:
#data fn_extern_8C0511B4		; addr: CE35940

ptr_CE35944_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE35944

ptr_CE35948_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE35948

ptr_CE3594C_to_ptr_CE3653C_to_f_code_CE35950:
#data ptr_CE3653C_to_f_code_CE35950		; addr: CE3594C


f_code_CE35950:
mov.l r14,@-r15		; addr: CE35950
mov.l r13,@-r15		; addr: CE35952
mov.l r12,@-r15		; addr: CE35954
sts.l pr,@-r15		; addr: CE35956
add 0xF4,r15		; addr: CE35958
mov r4,r13		; addr: CE3595A
mov.b @(0x06,r13),r0 		; addr: CE3595C
mov.l @(ptr_CE35AB0_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE3595E
add 0x01,r0		; addr: CE35960
mov.b r0,@(0x06,r13) 		; addr: CE35962
jsr @r3		; addr: CE35964
mov r13,r4		; addr: CE35966
mov.w @(data_CE35AA2,pc),r0 ; r0 set to 0x140		; addr: CE35968
mov 0x00,r2 ; r2 set to 0x00		; addr: CE3596A
mov r15,r12		; addr: CE3596C
mov r12,r1		; addr: CE3596E
mov.b r2,@(r0,r13) 		; addr: CE35970
mov 0x18,r0 ; r0 set to 0x18		; addr: CE35972
mov.w r0,@(0x1C,r13) 		; addr: CE35974
mov.w @(data_CE35AA4,pc),r0 ; r0 set to 0x1B0		; addr: CE35976
mov.l @(r0,r13),r3 ; r3 ??? bc r13 is ???		; addr: CE35978
add 0x18,r0 ; r0 set to 0x1C8		; addr: CE3597A
mov.l r3,@(r0,r13) 		; addr: CE3597C
mov.l @(r0,r13),r14		; addr: CE3597E
mov.l @(ptr_CE35AB4_to_fn_extern_8C1294C8,pc),r3 ; r3 set to 0x8C1294C8		; addr: CE35980
mov r14,r2 ; r2 ??? bc r14 is ???		; addr: CE35982
add 0x34,r2		; addr: CE35984
jsr @r3		; addr: CE35986
mov 0x0C,r0 ; r0 set to 0x0C		; addr: CE35988
mov.l @(ptr_CE35AB8_to_fn_extern_8C04CC1C,pc),r2 ; r2 set to 0x8C04CC1C		; addr: CE3598A
mov r14,r5		; addr: CE3598C
jsr @r2		; addr: CE3598E
mov r13,r4		; addr: CE35990
mova @(data_CE35ABC,pc),r0  ; r0 set to 0xCE35ABC		; addr: CE35992
fmov.s @r12,fr3 ; r3 ??? bc r12 is ???		; addr: CE35994
fmov.s @r0,fr4		; addr: CE35996
mov 0x34,r0 ; r0 set to 0x34		; addr: CE35998
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???		; addr: CE3599A
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE3599C
fldi1 fr1		; addr: CE3599E
fadd fr1,fr1		; addr: CE359A0
fsub fr3,fr2		; addr: CE359A2
fldi0 fr3		; addr: CE359A4
mov r14,r1		; addr: CE359A6
fdiv fr4,fr2		; addr: CE359A8
fmov.s fr2,@(r0,r14) 		; addr: CE359AA
mov 0x68,r0 ; r0 set to 0x68		; addr: CE359AC
fmov.s fr3,@(r0,r14) 		; addr: CE359AE
mova @(data_CE35AC0,pc),r0  ; r0 set to 0xCE35AC0		; addr: CE359B0
fmov.s @r0,fr3		; addr: CE359B2
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE359B4
fmov.s fr3,@(r0,r14) 		; addr: CE359B6
mov 0x04,r0 ; r0 set to 0x04		; addr: CE359B8
fmov.s @(r0,r12),fr3		; addr: CE359BA
mov 0x38,r0 ; r0 set to 0x38		; addr: CE359BC
fmov.s @(r0,r14),fr2		; addr: CE359BE
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE359C0
fsub fr3,fr2		; addr: CE359C2
fmov.s @(r0,r14),fr3		; addr: CE359C4
mov 0x60,r0 ; r0 set to 0x60		; addr: CE359C6
fmul fr4,fr3		; addr: CE359C8
fdiv fr4,fr2		; addr: CE359CA
fdiv fr1,fr3		; addr: CE359CC
fsub fr3,fr2		; addr: CE359CE
fmov.s fr2,@(r0,r14) 		; addr: CE359D0
mov.l @(ptr_CE35AB4_to_fn_extern_8C1294C8,pc),r3 ; r3 set to 0x8C1294C8		; addr: CE359D2
mov r12,r2		; addr: CE359D4
add 0x34,r1		; addr: CE359D6
jsr @r3		; addr: CE359D8
mov 0x0C,r0 ; r0 set to 0x0C		; addr: CE359DA
mov.w @(data_CE35AA6,pc),r0 ; r0 set to 0x134		; addr: CE359DC
mov 0x00,r2 ; r2 set to 0x00		; addr: CE359DE
mov 0x66,r3 ; r3 set to 0x66		; addr: CE359E0
mov.w r2,@(r0,r14) 		; addr: CE359E2
add 0x02,r0 ; r0 set to 0x136		; addr: CE359E4
mov.w r3,@(r0,r14) 		; addr: CE359E6
add 0x0C,r15		; addr: CE359E8
lds.l @r15+,pr 		; addr: CE359EA
mov.l @r15+,r12		; addr: CE359EC
mov.l @r15+,r13		; addr: CE359EE
rts 		; addr: CE359F0
mov.l @r15+,r14		; addr: CE359F2
;-------------------------------------------------------------------------------

f_code_CE359F4:
mov.w @(data_CE35AA8,pc),r0 ; r0 set to 0x1C8		; addr: CE359F4
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE359F6
mov.l r14,@-r15		; addr: CE359F8
mov r4,r14		; addr: CE359FA
mov.l r13,@-r15		; addr: CE359FC
mov.w @(data_CE35AAA,pc),r3 ; r3 set to 0x2000		; addr: CE359FE
sts.l pr,@-r15		; addr: CE35A00
mov.l @(r0,r14),r13		; addr: CE35A02
mov 0x48,r0 ; r0 set to 0x48		; addr: CE35A04
mov.l @(r0,r13),r2		; addr: CE35A06
add r3,r2		; addr: CE35A08
mov.l r2,@(r0,r13) 		; addr: CE35A0A
mova @(data_CE35AC4,pc),r0  ; r0 set to 0xCE35AC4		; addr: CE35A0C
fmov.s @r0,fr4		; addr: CE35A0E
mov 0x50,r0 ; r0 set to 0x50		; addr: CE35A10
fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???		; addr: CE35A12
fsub fr4,fr3		; addr: CE35A14
fmov.s fr3,@(r0,r13) 		; addr: CE35A16
mov 0x54,r0 ; r0 set to 0x54		; addr: CE35A18
fmov.s @(r0,r13),fr2		; addr: CE35A1A
fsub fr4,fr2		; addr: CE35A1C
fmov.s fr2,@(r0,r13) 		; addr: CE35A1E
mov.w @(data_CE35AA8,pc),r0 ; r0 set to 0x1C8		; addr: CE35A20
mov.l @(r0,r14),r4		; addr: CE35A22
mov 0x34,r0 ; r0 set to 0x34		; addr: CE35A24
add r4,r1 ; r1 ??? bc r4 is ???		; addr: CE35A26
fmov.s @(r0,r4),fr2		; addr: CE35A28
fmov.s @r1,fr3		; addr: CE35A2A
fadd fr3,fr2		; addr: CE35A2C
fmov.s fr2,@(r0,r4) 		; addr: CE35A2E
mov.w @(data_CE35AA8,pc),r0 ; r0 set to 0x1C8		; addr: CE35A30
mov.l @(r0,r14),r4		; addr: CE35A32
mov 0x68,r1 ; r1 set to 0x68		; addr: CE35A34
mov.l @(ptr_CE35AB0_to_fn_extern_8C034DEE,pc),r2 ; r2 set to 0x8C034DEE		; addr: CE35A36
add r4,r1 ; r1 ??? bc r4 is ???		; addr: CE35A38
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE35A3A
fmov.s @r1,fr3		; addr: CE35A3C
fmov.s @(r0,r4),fr2 ; r2 ??? bc r4 is ???		; addr: CE35A3E
mov 0x60,r1 ; r1 set to 0x60		; addr: CE35A40
fadd fr3,fr2		; addr: CE35A42
fmov.s fr2,@(r0,r4) 		; addr: CE35A44
mov.w @(data_CE35AA8,pc),r0 ; r0 set to 0x1C8		; addr: CE35A46
mov.l @(r0,r14),r4		; addr: CE35A48
mov 0x38,r0 ; r0 set to 0x38		; addr: CE35A4A
add r4,r1 ; r1 ??? bc r4 is ???		; addr: CE35A4C
fmov.s @(r0,r4),fr2		; addr: CE35A4E
fmov.s @r1,fr3		; addr: CE35A50
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE35A52
fadd fr3,fr2		; addr: CE35A54
fmov.s fr2,@(r0,r4) 		; addr: CE35A56
mov.w @(data_CE35AA8,pc),r0 ; r0 set to 0x1C8		; addr: CE35A58
mov.l @(r0,r14),r4		; addr: CE35A5A
mov 0x60,r0 ; r0 set to 0x60		; addr: CE35A5C
add r4,r1 ; r1 ??? bc r4 is ???		; addr: CE35A5E
fmov.s @(r0,r4),fr2		; addr: CE35A60
fmov.s @r1,fr3		; addr: CE35A62
fadd fr3,fr2		; addr: CE35A64
fmov.s fr2,@(r0,r4) 		; addr: CE35A66
jsr @r2		; addr: CE35A68
mov r14,r4		; addr: CE35A6A
mov.w @(0x1C,r14),r0 		; addr: CE35A6C
add 0xFF,r0 ; r0 set to 0x5F		; addr: CE35A6E
mov.w r0,@(0x1C,r14) 		; addr: CE35A70
exts.w r0,r0 ; r0 ??		; addr: CE35A72
cmp/pl r0		; addr: CE35A74
bt l_code_CE35A9A		; addr: CE35A76
mov.b @(0x06,r14),r0 		; addr: CE35A78
mov 0x00,r3 ; r3 set to 0x00		; addr: CE35A7A
mov.w @(data_CE35AAE,pc),r2 ; r2 set to 0xFF		; addr: CE35A7C
mov 0x0F,r6 ; r6 set to 0x0F		; addr: CE35A7E
add 0x01,r0		; addr: CE35A80
mov r14,r4		; addr: CE35A82
mov.b r0,@(0x06,r14) 		; addr: CE35A84
mov 0x15,r5 ; r5 set to 0x15		; addr: CE35A86
mov.w @(data_CE35AAC,pc),r0 ; r0 set to 0x12C		; addr: CE35A88
mov.b r3,@(r0,r13) 		; addr: CE35A8A
add 0x1D,r0 ; r0 set to 0x149		; addr: CE35A8C
mov.b r2,@(r0,r13) 		; addr: CE35A8E
lds.l @r15+,pr 		; addr: CE35A90
mov.l @(ptr_CE35AC8_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE35A92
mov.l @r15+,r13		; addr: CE35A94
jmp @r3		; addr: CE35A96
mov.l @r15+,r14		; addr: CE35A98

l_code_CE35A9A:
lds.l @r15+,pr 		; addr: CE35A9A
mov.l @r15+,r13		; addr: CE35A9C
rts 		; addr: CE35A9E
mov.l @r15+,r14		; addr: CE35AA0
;-------------------------------------------------------------------------------

data_CE35AA2:
#data 0x0140		; addr: CE35AA2

data_CE35AA4:
#data 0x01B0		; addr: CE35AA4

data_CE35AA6:
#data 0x0134		; addr: CE35AA6

data_CE35AA8:
#data 0x01C8		; addr: CE35AA8

data_CE35AAA:
#data 0x2000		; addr: CE35AAA

data_CE35AAC:
#data 0x012C		; addr: CE35AAC

data_CE35AAE:
#data 0x00FF		; addr: CE35AAE

#align4
ptr_CE35AB0_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE35AB0

ptr_CE35AB4_to_fn_extern_8C1294C8:
#data fn_extern_8C1294C8		; addr: CE35AB4

ptr_CE35AB8_to_fn_extern_8C04CC1C:
#data fn_extern_8C04CC1C		; addr: CE35AB8

data_CE35ABC:
#data 0x41C00000		; addr: CE35ABC

#align4
data_CE35AC0:
#data 0xBF892492		; addr: CE35AC0

#align4
data_CE35AC4:
#data 0x3D2AAAAB		; addr: CE35AC4

#align4
ptr_CE35AC8_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE35AC8


f_code_CE35ACC:
mov.l r14,@-r15		; addr: CE35ACC
mov r4,r14		; addr: CE35ACE
mov.l r13,@-r15		; addr: CE35AD0
mov.l r8,@-r15		; addr: CE35AD2
sts.l pr,@-r15		; addr: CE35AD4
mov.l @(ptr_CE35BD4_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE35AD6
mov.w @(data_CE35BC4,pc),r0 ; r0 set to 0x1C8		; addr: CE35AD8
jsr @r3		; addr: CE35ADA
mov.l @(r0,r14),r13		; addr: CE35ADC
exts.b r0,r0 ; r0 ??		; addr: CE35ADE
cmp/pz r0		; addr: CE35AE0
bt l_code_CE35B5E		; addr: CE35AE2
mov.b @(0x06,r14),r0 		; addr: CE35AE4
mov.l @(ptr_CE35BD8_to_extern_8C26A518,pc),r4 ; r4 set to 0x8C26A518		; addr: CE35AE6
add 0x01,r0		; addr: CE35AE8
mov.b r0,@(0x06,r14) 		; addr: CE35AEA
mov.w @(data_CE35BC6,pc),r0 ; r0 set to 0x130		; addr: CE35AEC
mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???		; addr: CE35AEE
tst r3,r3		; addr: CE35AF0
bt data_CE35B0E		; addr: CE35AF2
mova @(data_CE35BDC,pc),r0  ; r0 set to 0xCE35BDC		; addr: CE35AF4
fmov.s @r0,fr3		; addr: CE35AF6
mov.w @(data_CE35BC8,pc),r0 ; r0 set to 0x8C		; addr: CE35AF8
fmov.s @(r0,r4),fr2		; addr: CE35AFA
mov 0x34,r0 ; r0 set to 0x34		; addr: CE35AFC
fmov.s @(r0,r14),fr1		; addr: CE35AFE
fadd fr3,fr2		; addr: CE35B00
fcmp/gt fr2,fr1		; addr: CE35B02
bf l_code_CE35B26		; addr: CE35B04
mov.w @(data_CE35BC6,pc),r0 ; r0 set to 0x130		; addr: CE35B06
mov 0x00,r2 ; r2 set to 0x00		; addr: CE35B08
bra l_code_CE35B26		; addr: CE35B0A
mov.w r2,@(r0,r14) 		; addr: CE35B0C

data_CE35B0E:
#data 0xC734		; addr: CE35B0E
#data 0x905AF308		; addr: CE35B10
#data 0xE034F246		; addr: CE35B14
#data 0xF230F1E6		; addr: CE35B18
#data 0x8B02F215		; addr: CE35B1C
#data 0xE2019051		; addr: CE35B20
#data 0x0E25		; addr: CE35B24


l_code_CE35B26:
mov 0x34,r0 ; r0 set to 0x34		; addr: CE35B26
fmov.s @(r0,r14),fr3		; addr: CE35B28
mov r0,r8 ; r8 set to 0x34		; addr: CE35B2A
fmov.s fr3,@(r0,r13) 		; addr: CE35B2C
mov.w @(data_CE35BC6,pc),r0 ; r0 set to 0x130		; addr: CE35B2E
mov.w @(r0,r14),r3		; addr: CE35B30
tst r3,r3		; addr: CE35B32
bt/s l_code_CE35B40		; addr: CE35B34
add r13,r8 ; r8 ??? bc r13 is ???		; addr: CE35B36
mov.l @(data_CE35BE4,pc),r1 ; r1 set to 0x433AAAAA		; addr: CE35B38
lds r1,fpul 		; addr: CE35B3A
bra l_code_CE35B46		; addr: CE35B3C
fsts fpul,fr3		; addr: CE35B3E

l_code_CE35B40:
mov.l @(data_CE35BE8,pc),r2 ; r2 set to 0xC33AAAAA		; addr: CE35B40
lds r2,fpul 		; addr: CE35B42
fsts fpul,fr3		; addr: CE35B44

l_code_CE35B46:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???		; addr: CE35B46
mov 0x1E,r6 ; r6 set to 0x1E, r6 set to 0x1E		; addr: CE35B48
mov.l @(ptr_CE35BEC_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8C		; addr: CE35B4A
mov 0x15,r5 ; r5 set to 0x15, r5 set to 0x15		; addr: CE35B4C
fadd fr3,fr2		; addr: CE35B4E
mov r14,r4		; addr: CE35B50
fmov.s fr2,@r8		; addr: CE35B52
lds.l @r15+,pr 		; addr: CE35B54
mov.l @r15+,r8		; addr: CE35B56
mov.l @r15+,r13		; addr: CE35B58
jmp @r3		; addr: CE35B5A
mov.l @r15+,r14		; addr: CE35B5C

l_code_CE35B5E:
lds.l @r15+,pr 		; addr: CE35B5E
mov.l @r15+,r8		; addr: CE35B60
mov.l @r15+,r13		; addr: CE35B62
rts 		; addr: CE35B64
mov.l @r15+,r14		; addr: CE35B66
;-------------------------------------------------------------------------------

f_code_CE35B68:
mov.l r14,@-r15		; addr: CE35B68
sts.l pr,@-r15		; addr: CE35B6A
mov.l @(ptr_CE35BD4_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE35B6C
jsr @r3		; addr: CE35B6E
mov r4,r14		; addr: CE35B70
mov.w @(data_CE35BCC,pc),r0 ; r0 set to 0x141		; addr: CE35B72
mov.b @(r0,r14),r2		; addr: CE35B74
tst r2,r2		; addr: CE35B76
bt l_code_CE35BBE		; addr: CE35B78
mov 0x00,r3 ; r3 set to 0x00		; addr: CE35B7A
mov.b r3,@(r0,r14) 		; addr: CE35B7C
mov 0x09,r5 ; r5 set to 0x09		; addr: CE35B7E
mov.b @(0x06,r14),r0 		; addr: CE35B80
mov 0x02,r6 ; r6 set to 0x02		; addr: CE35B82
mov.l @(ptr_CE35BF0_to_fn_extern_8C0D0584,pc),r3 ; r3 set to 0x8C0D0584		; addr: CE35B84
add 0x01,r0 ; r0 set to 0x142		; addr: CE35B86
mov.b r0,@(0x06,r14) 		; addr: CE35B88
jsr @r3		; addr: CE35B8A
mov r14,r4		; addr: CE35B8C
tst r0,r0		; addr: CE35B8E
bf/s l_code_CE35BBE		; addr: CE35B90
mov.l r0,@(0x14,r14) 		; addr: CE35B92
mov.w @(data_CE35BC4,pc),r0 ; r0 set to 0x1C8		; addr: CE35B94
mov 0x01,r5 ; r5 set to 0x01		; addr: CE35B96
fldi1 fr4		; addr: CE35B98
mov.l @(r0,r14),r4		; addr: CE35B9A
mov.w @(data_CE35BCE,pc),r0 ; r0 set to 0x12C		; addr: CE35B9C
mov.l @(ptr_CE35BF4_to_fn_extern_8C02FD26,pc),r3 ; r3 set to 0x8C02FD26		; addr: CE35B9E
mov.b r5,@(r0,r4) 		; addr: CE35BA0
mov 0x50,r0 ; r0 set to 0x50		; addr: CE35BA2
fmov.s fr4,@(r0,r4) 		; addr: CE35BA4
mov 0x54,r0 ; r0 set to 0x54		; addr: CE35BA6
fmov.s fr4,@(r0,r4) 		; addr: CE35BA8
mov.w @(data_CE35BD0,pc),r0 ; r0 set to 0x1B4		; addr: CE35BAA
mov.l r14,@(r0,r4) 		; addr: CE35BAC
add 0x42,r0 ; r0 set to 0x1F6		; addr: CE35BAE
jsr @r3		; addr: CE35BB0
mov.b r5,@(r0,r4) 		; addr: CE35BB2
lds.l @r15+,pr 		; addr: CE35BB4
mov.l @(ptr_CE35BF8_to_fn_extern_8C051648,pc),r2 ; r2 set to 0x8C051648		; addr: CE35BB6
mov r14,r4		; addr: CE35BB8
jmp @r2		; addr: CE35BBA
mov.l @r15+,r14		; addr: CE35BBC

l_code_CE35BBE:
lds.l @r15+,pr 		; addr: CE35BBE
rts 		; addr: CE35BC0
mov.l @r15+,r14		; addr: CE35BC2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
data_CE35BC4:
	#data 0x01C8
data_CE35BC6:
	#data 0x0130
data_CE35BC8:
	#data 0x008C
data_CE35BCa:
	#data 0x0088
data_CE35BCC:
	#data 0x0141
data_CE35BCE:
	#data 0x012C
data_CE35BD0:
	#data 0x01B4
	#align4

ptr_CE35BD4_to_fn_extern_8C034DEE:
	#data fn_extern_8C034DEE		; addr: CE35BD4

ptr_CE35BD8_to_extern_8C26A518:
	#data extern_8C26A518		; addr: CE35BD8

data_CE35BDC:
#data 0xC3555555		; addr: CE35BDC
#data 0x43555555		; addr: CE35BE0

#align4
data_CE35BE4:
#data 0x433AAAAA		; addr: CE35BE4

#align4
data_CE35BE8:
#data 0xC33AAAAA		; addr: CE35BE8

#align4
ptr_CE35BEC_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE35BEC

ptr_CE35BF0_to_fn_extern_8C0D0584:
#data fn_extern_8C0D0584		; addr: CE35BF0

ptr_CE35BF4_to_fn_extern_8C02FD26:
#data fn_extern_8C02FD26		; addr: CE35BF4

ptr_CE35BF8_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE35BF8


f_code_CE35BFC:
mov.l r14,@-r15		; addr: CE35BFC
sts.l pr,@-r15		; addr: CE35BFE
add 0xF4,r15		; addr: CE35C00
mov.l @(ptr_CE35CEC_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE35C02
jsr @r3		; addr: CE35C04
mov r4,r14		; addr: CE35C06
mov.w @(data_CE35CE2,pc),r0 ; r0 set to 0x141		; addr: CE35C08
mov.l @(0x14,r14),r4		; addr: CE35C0A
mov.b @(r0,r4),r2		; addr: CE35C0C
tst r2,r2		; addr: CE35C0E
bt l_code_CE35C9E		; addr: CE35C10
mov.b @(0x06,r14),r0 		; addr: CE35C12
mov 0x15,r5 ; r5 set to 0x15		; addr: CE35C14
mov.l @(ptr_CE35CF0_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE35C16
mov 0x10,r6 ; r6 set to 0x10		; addr: CE35C18
add 0x01,r0 ; r0 set to 0x142		; addr: CE35C1A
mov.b r0,@(0x06,r14) 		; addr: CE35C1C
jsr @r3		; addr: CE35C1E
mov r14,r4		; addr: CE35C20
mov.w @(data_CE35CE4,pc),r0 ; r0 set to 0x1C8		; addr: CE35C22
mov 0x01,r5 ; r5 set to 0x01		; addr: CE35C24
fldi1 fr4		; addr: CE35C26
mov 0x3D,r3 ; r3 set to 0x3D		; addr: CE35C28
mov.l @(r0,r14),r4		; addr: CE35C2A
mov.w @(data_CE35CE6,pc),r0 ; r0 set to 0x12C		; addr: CE35C2C
mov.b r5,@(r0,r4) 		; addr: CE35C2E
mov 0x50,r0 ; r0 set to 0x50		; addr: CE35C30
fmov.s fr4,@(r0,r4) 		; addr: CE35C32
mov 0x54,r0 ; r0 set to 0x54		; addr: CE35C34
fmov.s fr4,@(r0,r4) 		; addr: CE35C36
mov.w @(data_CE35CE8,pc),r0 ; r0 set to 0x1A1		; addr: CE35C38
mov.b r3,@(r0,r4) 		; addr: CE35C3A
add 0x13,r0 ; r0 set to 0x1B4		; addr: CE35C3C
mov.l @(ptr_CE35CF4_to_fn_extern_8C02FDB0,pc),r3 ; r3 set to 0x8C02FDB0		; addr: CE35C3E
mov.l r14,@(r0,r4) 		; addr: CE35C40
add 0x42,r0 ; r0 set to 0x1F6		; addr: CE35C42
jsr @r3		; addr: CE35C44
mov.b r5,@(r0,r4) 		; addr: CE35C46
mov.l @(ptr_CE35CF8_to_fn_extern_8C042008,pc),r2 ; r2 set to 0x8C042008		; addr: CE35C48
mov 0x2B,r5 ; r5 set to 0x2B		; addr: CE35C4A
jsr @r2		; addr: CE35C4C
mov r14,r4		; addr: CE35C4E
mov 0x34,r0 ; r0 set to 0x34		; addr: CE35C50
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???		; addr: CE35C52
mov.w @(data_CE35CEA,pc),r0 ; r0 set to 0x130		; addr: CE35C54
fmov.s fr3,@r15		; addr: CE35C56
mov.w @(r0,r14),r3		; addr: CE35C58
tst r3,r3		; addr: CE35C5A
bt data_CE35C64		; addr: CE35C5C
mova @(data_CE35CFC,pc),r0  ; r0 set to 0xCE35CFC		; addr: CE35C5E
bra data_CE35C68		; addr: CE35C60
fmov.s @r0,fr3		; addr: CE35C62

#align4
data_CE35C64:
#data 0xF308C726		; addr: CE35C64

#align4
data_CE35C68:
#data 0xE038F2F8		; addr: CE35C68
#data 0xE501D326		; addr: CE35C6C
#data 0xFF2AF230		; addr: CE35C70
#data 0xE004F3E6		; addr: CE35C74
#data 0xC722FF37		; addr: CE35C78
#data 0xE004F308		; addr: CE35C7C
#data 0xE004F2F6		; addr: CE35C80
#data 0xFF27F230		; addr: CE35C84
#data 0x64F3430B		; addr: CE35C88
#data 0xE549D21F		; addr: CE35C8C
#data 0x64E3420B		; addr: CE35C90
#data 0xE50DD31E		; addr: CE35C94
#data 0x430BE607		; addr: CE35C98
#data 0x64E3		; addr: CE35C9C


l_code_CE35C9E:
add 0x0C,r15		; addr: CE35C9E
lds.l @r15+,pr 		; addr: CE35CA0
rts 		; addr: CE35CA2
mov.l @r15+,r14		; addr: CE35CA4
;-------------------------------------------------------------------------------

f_code_CE35CA6:
mov.l r14,@-r15		; addr: CE35CA6
sts.l pr,@-r15		; addr: CE35CA8
mov.l @(ptr_CE35CEC_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE35CAA
jsr @r3		; addr: CE35CAC
mov r4,r14		; addr: CE35CAE
exts.b r0,r0		; addr: CE35CB0
cmp/pz r0		; addr: CE35CB2
bt l_code_CE35CCA		; addr: CE35CB4
mov.l @(ptr_CE35D10_to_fn_extern_8C02FEC4,pc),r3 ; r3 set to 0x8C02FEC4		; addr: CE35CB6
mov 0x0D,r5 ; r5 set to 0x0D		; addr: CE35CB8
mov 0x00,r6 ; r6 set to 0x00		; addr: CE35CBA
jsr @r3		; addr: CE35CBC
mov r14,r4		; addr: CE35CBE
lds.l @r15+,pr 		; addr: CE35CC0
mov.l @(ptr_CE35D14_to_fn_extern_8C051648,pc),r2 ; r2 set to 0x8C051648		; addr: CE35CC2
mov r14,r4		; addr: CE35CC4
jmp @r2		; addr: CE35CC6
mov.l @r15+,r14		; addr: CE35CC8

l_code_CE35CCA:
lds.l @r15+,pr 		; addr: CE35CCA
rts 		; addr: CE35CCC
mov.l @r15+,r14		; addr: CE35CCE
;-------------------------------------------------------------------------------

f_code_CE35CD0:
mov r4,r3		; addr: CE35CD0
mov.l @(ptr_CE35D18_to_ptr_CE36554_to_data_CE35D1C,pc),r1 ; r1 set to 0xCE36554		; addr: CE35CD2
mov.l r4,@-r15		; addr: CE35CD4
mov.b @(0x06,r3),r0 		; addr: CE35CD6
extu.b r0,r0		; addr: CE35CD8
shll2 r0		; addr: CE35CDA
mov.l @(r0,r1),r3		; addr: CE35CDC
jmp @r3		; addr: CE35CDE
add 0x04,r15		; addr: CE35CE0

data_CE35CE2:
#data 0x0141		; addr: CE35CE2

data_CE35CE4:
#data 0x01C8		; addr: CE35CE4

data_CE35CE6:
#data 0x012C		; addr: CE35CE6

data_CE35CE8:
#data 0x01A1		; addr: CE35CE8

data_CE35CEA:
#data 0x0130		; addr: CE35CEA

#align4
ptr_CE35CEC_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE35CEC

ptr_CE35CF0_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE35CF0

ptr_CE35CF4_to_fn_extern_8C02FDB0:
#data fn_extern_8C02FDB0		; addr: CE35CF4

ptr_CE35CF8_to_fn_extern_8C042008:
#data fn_extern_8C042008		; addr: CE35CF8

data_CE35CFC:
#data 0x433AAAAA		; addr: CE35CFC
#data 0xC33AAAAA		; addr: CE35D00
#data 0x42A00000		; addr: CE35D04
#data extern_8C1025CA		; addr: CE35D08
#data fn_extern_8C04223A		; addr: CE35D0C

#align4
ptr_CE35D10_to_fn_extern_8C02FEC4:
#data fn_extern_8C02FEC4		; addr: CE35D10

ptr_CE35D14_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE35D14

ptr_CE35D18_to_ptr_CE36554_to_data_CE35D1C:
#data ptr_CE36554_to_data_CE35D1C		; addr: CE35D18

data_CE35D1C:
#data 0x2FD62FE6		; addr: CE35D1C
#data 0x4F226D43		; addr: CE35D20
#data 0x700184D6		; addr: CE35D24
#data 0xE01080D6		; addr: CE35D28
#data 0xC75281DE		; addr: CE35D2C
#data 0xE06CF308		; addr: CE35D30
#data 0xE060FD37		; addr: CE35D34
#data 0xFD37F38D		; addr: CE35D38
#data 0xF308C74F		; addr: CE35D3C
#data 0xFD37E05C		; addr: CE35D40
#data 0xF308C74E		; addr: CE35D44
#data 0xFD37E068		; addr: CE35D48
#data 0x03DD9090		; addr: CE35D4C
#data 0x8d082338		; addr: CE35D50
#data 0xE05CEE05		; addr: CE35D54
#data 0xF34DF3D6		; addr: CE35D58
#data 0xE068FD37		; addr: CE35D5C
#data 0xF34DF3D6		; addr: CE35D60
#data 0xFD37		; addr: CE35D64

data_CE35D66:
#data 0xE022		; addr: CE35D66
#data 0x600C00DC		; addr: CE35D68
#data 0x8908C801		; addr: CE35D6C
#data 0xF3D6E05C		; addr: CE35D70
#data 0xF34DEE06		; addr: CE35D74
#data 0xE068FD37		; addr: CE35D78
#data 0xF34DF3D6		; addr: CE35D7C
#data 0xFD37		; addr: CE35D80

data_CE35D82:
#data 0xD340		; addr: CE35D82
#data 0x66E3E502		; addr: CE35D84
#data 0x64D3430B		; addr: CE35D88
#data 0xE50FD23E		; addr: CE35D8C
#data 0x420BE608		; addr: CE35D90
#data 0x200864D3		; addr: CE35D94
#data 0x64038D09		; addr: CE35D98
#data 0xF3D6E05C		; addr: CE35D9C
#data 0x9065F437		; addr: CE35DA0
#data 0x043503DD		; addr: CE35DA4
#data 0x02DCE022		; addr: CE35DA8
#data 0x0424		; addr: CE35DAC

data_CE35DAE:
#data 0xD337		; addr: CE35DAE
#data 0x430BE51E		; addr: CE35DB0
#data 0xD23564D3		; addr: CE35DB4
#data 0x420BE517		; addr: CE35DB8
#data 0x905864D3		; addr: CE35DBC
#data 0x0D44E40A		; addr: CE35DC0
#data 0x0D449056		; addr: CE35DC4
#data 0x6DF64F26		; addr: CE35DC8
#data 0x6EF6000B		; addr: CE35DCC
;-------------------------------------------------------------------------------

#align4
data_CE35DD0:
#data 0x4F222FE6		; addr: CE35DD0
#data 0x430BD32E		; addr: CE35DD4
#data 0x904C6E43		; addr: CE35DD8
#data 0x222802EC		; addr: CE35DDC
#data 0x84E68902		; addr: CE35DE0
#data 0x80E67001		; addr: CE35DE4

#align4
data_CE35DE8:
#data 0x000B4F26		; addr: CE35DE8
#data 0x6EF6		; addr: CE35DEC
;-------------------------------------------------------------------------------

data_CE35DEE:
#data 0x2FE6		; addr: CE35DEE
#data 0xD3274F22		; addr: CE35DF0
#data 0x6E43430B		; addr: CE35DF4
#data 0x31ECE15C		; addr: CE35DF8
#data 0xF318E034		; addr: CE35DFC
#data 0xE168F2E6		; addr: CE35E00
#data 0xF23031EC		; addr: CE35E04
#data 0xE05CFE27		; addr: CE35E08
#data 0xF318F2E6		; addr: CE35E0C
#data 0xFE27F230		; addr: CE35E10
#data 0x70FF85EE		; addr: CE35E14
#data 0x600F81EE		; addr: CE35E18
#data 0x89054015		; addr: CE35E1C
#data 0xF38D84E6		; addr: CE35E20
#data 0x80E67001		; addr: CE35E24
#data 0xFE37E068		; addr: CE35E28

#align4
data_CE35E2C:
#data 0x000B4F26		; addr: CE35E2C
#data 0x6EF6		; addr: CE35E30
;-------------------------------------------------------------------------------

f_code_CE35E32:
mov.l r14,@-r15		; addr: CE35E32
mov r4,r14		; addr: CE35E34
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE35E36
mov.l @(ptr_CE35E90_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE35E38
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE35E3A
mov 0x34,r0 ; r0 set to 0x34		; addr: CE35E3C
sts.l pr,@-r15		; addr: CE35E3E
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE35E40
mov 0x68,r1 ; r1 set to 0x68		; addr: CE35E42
fmov.s @(r0,r14),fr2		; addr: CE35E44
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE35E46
fadd fr3,fr2		; addr: CE35E48
fmov.s fr2,@(r0,r14) 		; addr: CE35E4A
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE35E4C
fmov.s @(r0,r14),fr2		; addr: CE35E4E
fmov.s @r1,fr3		; addr: CE35E50
fadd fr3,fr2		; addr: CE35E52
fmov.s fr2,@(r0,r14) 		; addr: CE35E54
jsr @r3		; addr: CE35E56
mov r14,r4		; addr: CE35E58
exts.b r0,r0 ; r0 ??		; addr: CE35E5A
cmp/pz r0		; addr: CE35E5C
bt l_code_CE35E9C		; addr: CE35E5E
mov.l @(ptr_CE35E94_to_fn_extern_8C05218A,pc),r3 ; r3 set to 0x8C05218A		; addr: CE35E60
jsr @r3		; addr: CE35E62
mov r14,r4		; addr: CE35E64
lds.l @r15+,pr 		; addr: CE35E66
mov.l @(ptr_CE35E98_to_fn_extern_8C05176E,pc),r2 ; r2 set to 0x8C05176E		; addr: CE35E68
mov r14,r4		; addr: CE35E6A
jmp @r2		; addr: CE35E6C
mov.l @r15+,r14		; addr: CE35E6E
#data 0x01F20130		; addr: CE35E70
#data 0x014101F3		; addr: CE35E74
#data 0xBF4DB6DB		; addr: CE35E78
#data 0xC17D5555		; addr: CE35E7C
#data 0x3EA00000		; addr: CE35E80
#data fn_extern_8C034E8C		; addr: CE35E84
#data fn_extern_8C0D0584		; addr: CE35E88
#data fn_extern_8C042008		; addr: CE35E8C

#align4
ptr_CE35E90_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE35E90

ptr_CE35E94_to_fn_extern_8C05218A:
#data fn_extern_8C05218A		; addr: CE35E94

ptr_CE35E98_to_fn_extern_8C05176E:
#data fn_extern_8C05176E		; addr: CE35E98


l_code_CE35E9C:
lds.l @r15+,pr 		; addr: CE35E9C
rts 		; addr: CE35E9E
mov.l @r15+,r14		; addr: CE35EA0
;-------------------------------------------------------------------------------

f_code_CE35EA2:
mov.l r4,@-r15		; addr: CE35EA2
mov r4,r0		; addr: CE35EA4
nop 		; addr: CE35EA6
mov.w @(data_CE35F7E,pc),r1 ; r1 set to 0x1F7		; addr: CE35EA8
mov.l @(ptr_CE35F88_to_ptr_CE36564_to_f_code_CE35EBA,pc),r2 ; r2 set to 0xCE36564		; addr: CE35EAA
mov.b @(r0,r1),r0		; addr: CE35EAC
extu.b r0,r0		; addr: CE35EAE
and 0x3F,r0 		; addr: CE35EB0
shll2 r0		; addr: CE35EB2
mov.l @(r0,r2),r3		; addr: CE35EB4
jmp @r3		; addr: CE35EB6
add 0x04,r15		; addr: CE35EB8

f_code_CE35EBA:
mov.w @(data_CE35F80,pc),r0 ; r0 set to 0x1C8		; addr: CE35EBA
mov r4,r5		; addr: CE35EBC
mov.l r4,@-r15		; addr: CE35EBE
mov.l @(ptr_CE35F8C_to_code_extern_8C04CE3A,pc),r3 ; r3 set to 0x8C04CE3A		; addr: CE35EC0
mov.l @(r0,r4),r4		; addr: CE35EC2
jmp @r3		; addr: CE35EC4
add 0x04,r15		; addr: CE35EC6

f_code_CE35EC8:
mov.w @(data_CE35F80,pc),r0 ; r0 set to 0x1C8		; addr: CE35EC8
mov r4,r5		; addr: CE35ECA
mov.l r4,@-r15		; addr: CE35ECC
mov.l @(ptr_CE35F90_to_fn_extern_8C04CC1C,pc),r3 ; r3 set to 0x8C04CC1C		; addr: CE35ECE
mov.l @(r0,r4),r4		; addr: CE35ED0
jmp @r3		; addr: CE35ED2
add 0x04,r15		; addr: CE35ED4

f_code_CE35ED6:
rts 		; addr: CE35ED6
nop 		; addr: CE35ED8
;-------------------------------------------------------------------------------

f_code_CE35EDA:
mov 0x00,r0 ; r0 set to 0x00		; addr: CE35EDA
mov.b r0,@(0x05,r4) 		; addr: CE35EDC
mov.b r0,@(0x07,r4) 		; addr: CE35EDE
mov.b r0,@(0x06,r4) 		; addr: CE35EE0
mov.w @(data_CE35F82,pc),r0 ; r0 set to 0x4C9		; addr: CE35EE2
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???		; addr: CE35EE4
cmp/eq 0x00,r0 		; addr: CE35EE6
bt/s l_code_CE35EF8		; addr: CE35EE8
mov 0x0C,r5 ; r5 set to 0x0C		; addr: CE35EEA
cmp/eq 0x01,r0 		; addr: CE35EEC
bt l_code_CE35EF8		; addr: CE35EEE
cmp/eq 0x02,r0 		; addr: CE35EF0
bt data_CE35EFE		; addr: CE35EF2
bra l_code_CE35F04		; addr: CE35EF4
nop 		; addr: CE35EF6

l_code_CE35EF8:
mov.w @(data_CE35F84,pc),r0 ; r0 set to 0x1E9		; addr: CE35EF8
bra l_code_CE35F04		; addr: CE35EFA
mov.b r5,@(r0,r4) 		; addr: CE35EFC

data_CE35EFE:
#data 0x9041		; addr: CE35EFE
#data 0x0424E204		; addr: CE35F00


l_code_CE35F04:
mov.l @(ptr_CE35F94_to_fn_extern_8C0530D8,pc),r2 ; r2 set to 0x8C0530D8		; addr: CE35F04
jmp @r2		; addr: CE35F06
mov 0x1D,r5		; addr: CE35F08

f_code_CE35F0A:
mov 0x00,r0 ; r0 set to 0x00		; addr: CE35F0A
mov.b r0,@(0x05,r4) 		; addr: CE35F0C
mov.b r0,@(0x07,r4) 		; addr: CE35F0E
mov.b r0,@(0x06,r4) 		; addr: CE35F10
mov.w @(data_CE35F82,pc),r0 ; r0 set to 0x4C9		; addr: CE35F12
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???		; addr: CE35F14
cmp/eq 0x00,r0 		; addr: CE35F16
bt/s l_code_CE35F28		; addr: CE35F18
mov 0x0C,r5 ; r5 set to 0x0C		; addr: CE35F1A
cmp/eq 0x01,r0 		; addr: CE35F1C
bt l_code_CE35F28		; addr: CE35F1E
cmp/eq 0x02,r0 		; addr: CE35F20
bt data_CE35F2E		; addr: CE35F22
bra l_code_CE35F34		; addr: CE35F24
nop 		; addr: CE35F26

l_code_CE35F28:
mov.w @(data_CE35F84,pc),r0 ; r0 set to 0x1E9		; addr: CE35F28
bra l_code_CE35F34		; addr: CE35F2A
mov.b r5,@(r0,r4) 		; addr: CE35F2C

data_CE35F2E:
#data 0x9029		; addr: CE35F2E
#data 0x0424E204		; addr: CE35F30


l_code_CE35F34:
mov.l @(ptr_CE35F94_to_fn_extern_8C0530D8,pc),r2 ; r2 set to 0x8C0530D8		; addr: CE35F34
jmp @r2		; addr: CE35F36
mov 0x1D,r5		; addr: CE35F38

f_code_CE35F3A:
mov 0x00,r5 ; r5 set to 0x00		; addr: CE35F3A
mov r5,r0 ; r0 set to 0x00		; addr: CE35F3C
nop 		; addr: CE35F3E
mov.b r0,@(0x05,r4) 		; addr: CE35F40
mov.b r0,@(0x07,r4) 		; addr: CE35F42
mov.b r0,@(0x06,r4) 		; addr: CE35F44
mov.w @(data_CE35F82,pc),r0 ; r0 set to 0x4C9		; addr: CE35F46
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???		; addr: CE35F48
cmp/eq 0x00,r0 		; addr: CE35F4A
bt l_code_CE35F5A		; addr: CE35F4C
cmp/eq 0x01,r0 		; addr: CE35F4E
bt l_code_CE35F66		; addr: CE35F50
cmp/eq 0x02,r0 		; addr: CE35F52
bt data_CE35F6C		; addr: CE35F54
bra l_code_CE35F78		; addr: CE35F56
nop 		; addr: CE35F58

l_code_CE35F5A:
mov.w @(data_CE35F84,pc),r0 ; r0 set to 0x1E9		; addr: CE35F5A
mov 0x09,r3 ; r3 set to 0x09		; addr: CE35F5C
mov.b r3,@(r0,r4) 		; addr: CE35F5E
add 0xBA,r0 ; r0 set to 0x1A3		; addr: CE35F60
bra l_code_CE35F78		; addr: CE35F62
mov.b r5,@(r0,r4) 		; addr: CE35F64

l_code_CE35F66:
mov.w @(data_CE35F84,pc),r0 ; r0 set to 0x1E9		; addr: CE35F66
bra data_CE35F72		; addr: CE35F68
mov.b r5,@(r0,r4) 		; addr: CE35F6A

#align4
data_CE35F6C:
#data 0xE302900A		; addr: CE35F6C
#data 0x0434		; addr: CE35F70

data_CE35F72:
#data 0x9008		; addr: CE35F72
#data 0x0424E201		; addr: CE35F74


l_code_CE35F78:
mov.l @(ptr_CE35F94_to_fn_extern_8C0530D8,pc),r2 ; r2 set to 0x8C0530D8		; addr: CE35F78
jmp @r2		; addr: CE35F7A
mov 0x15,r5		; addr: CE35F7C

data_CE35F7E:
#data 0x01F7		; addr: CE35F7E

data_CE35F80:
#data 0x01C8		; addr: CE35F80

data_CE35F82:
#data 0x04C9		; addr: CE35F82

data_CE35F84:
#data 0x01E9		; addr: CE35F84
#data 0x01A3		; addr: CE35F86

#align4
ptr_CE35F88_to_ptr_CE36564_to_f_code_CE35EBA:
#data ptr_CE36564_to_f_code_CE35EBA		; addr: CE35F88

ptr_CE35F8C_to_code_extern_8C04CE3A:
#data code_extern_8C04CE3A		; addr: CE35F8C

ptr_CE35F90_to_fn_extern_8C04CC1C:
#data fn_extern_8C04CC1C		; addr: CE35F90

ptr_CE35F94_to_fn_extern_8C0530D8:
#data fn_extern_8C0530D8		; addr: CE35F94


f_code_CE35F98:
mov 0x00,r5 ; r5 set to 0x00		; addr: CE35F98
mov r5,r0 ; r0 set to 0x00		; addr: CE35F9A
nop 		; addr: CE35F9C
mov.b r0,@(0x05,r4) 		; addr: CE35F9E
mov.b r0,@(0x07,r4) 		; addr: CE35FA0
mov.b r0,@(0x06,r4) 		; addr: CE35FA2
mov.w @(data_CE360D0,pc),r0 ; r0 set to 0x4C9		; addr: CE35FA4
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???		; addr: CE35FA6
cmp/eq 0x00,r0 		; addr: CE35FA8
bt l_code_CE35FB8		; addr: CE35FAA
cmp/eq 0x01,r0 		; addr: CE35FAC
bt l_code_CE35FC0		; addr: CE35FAE
cmp/eq 0x02,r0 		; addr: CE35FB0
bt data_CE35FC6		; addr: CE35FB2
bra l_code_CE35FD0		; addr: CE35FB4
nop 		; addr: CE35FB6

l_code_CE35FB8:
mov.w @(data_CE360D2,pc),r0 ; r0 set to 0x1E9		; addr: CE35FB8
mov 0x01,r3 ; r3 set to 0x01		; addr: CE35FBA
bra l_code_CE35FCC		; addr: CE35FBC
mov.b r3,@(r0,r4) 		; addr: CE35FBE

l_code_CE35FC0:
mov.w @(data_CE360D2,pc),r0 ; r0 set to 0x1E9		; addr: CE35FC0
bra l_code_CE35FCC		; addr: CE35FC2
mov.b r5,@(r0,r4) 		; addr: CE35FC4

data_CE35FC6:
#data 0x9084		; addr: CE35FC6
#data 0x0434E302		; addr: CE35FC8


l_code_CE35FCC:
mov.w @(data_CE360D4,pc),r0 ; r0 set to 0x1A3		; addr: CE35FCC
mov.b r5,@(r0,r4) 		; addr: CE35FCE

l_code_CE35FD0:
mov.l @(ptr_CE360DC_to_fn_extern_8C0530D8,pc),r2 ; r2 set to 0x8C0530D8, r2 set to 0x8C0530D8		; addr: CE35FD0
jmp @r2		; addr: CE35FD2
mov 0x15,r5		; addr: CE35FD4

f_code_CE35FD6:
mov r4,r3		; addr: CE35FD6
mov.l @(ptr_CE360E0_to_ptr_CE36574_to_data_CE35FE8,pc),r1 ; r1 set to 0xCE36574		; addr: CE35FD8
mov.l r4,@-r15		; addr: CE35FDA
mov.b @(0x06,r3),r0 		; addr: CE35FDC
extu.b r0,r0		; addr: CE35FDE
shll2 r0		; addr: CE35FE0
mov.l @(r0,r1),r3		; addr: CE35FE2
jmp @r3		; addr: CE35FE4
add 0x04,r15		; addr: CE35FE6

#align4
data_CE35FE8:
#data 0x6E432FE6		; addr: CE35FE8
#data 0xD33D4F22		; addr: CE35FEC
#data 0xE500430B		; addr: CE35FF0
#data 0xE30284E6		; addr: CE35FF4
#data 0x80E67001		; addr: CE35FF8
#data 0x0E34906B		; addr: CE35FFC
#data 0xF308C739		; addr: CE36000
#data 0xFE37E05C		; addr: CE36004
#data 0x03EC9066		; addr: CE36008
#data 0x8B032338		; addr: CE3600C
#data 0xF3E6E05C		; addr: CE36010
#data 0xFE37F34D		; addr: CE36014

#align4
data_CE36018:
#data 0xF38DE068		; addr: CE36018
#data 0xC733FE37		; addr: CE3601C
#data 0xE060F308		; addr: CE36020
#data 0xFE37E347		; addr: CE36024
#data 0xF308C731		; addr: CE36028
#data 0xE400E06C		; addr: CE3602C
#data 0xE514FE37		; addr: CE36030
#data 0x66439051		; addr: CE36034
#data 0x700B0E34		; addr: CE36038
#data 0x70F20E45		; addr: CE3603C
#data 0x70260E44		; addr: CE36040
#data 0x0E46D32B		; addr: CE36044
#data 0x623284E2		; addr: CE36048
#data 0x4000600C		; addr: CE3604C
#data 0x012D727C		; addr: CE36050
#data 0x02157101		; addr: CE36054
#data 0xD2274F26		; addr: CE36058
#data 0x422B64E3		; addr: CE3605C
#data 0x6EF6		; addr: CE36060


f_code_CE36062:
mov.l r14,@-r15		; addr: CE36062
sts.l pr,@-r15		; addr: CE36064
mov.l @(ptr_CE360FC_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE36066
jsr @r3		; addr: CE36068
mov r4,r14		; addr: CE3606A
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE3606C
mov.l @(ptr_CE36100_to_fn_extern_8C052CE2,pc),r3 ; r3 set to 0x8C052CE2		; addr: CE3606E
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE36070
mov 0x34,r0 ; r0 set to 0x34		; addr: CE36072
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE36074
fmov.s @(r0,r14),fr2		; addr: CE36076
mov 0x68,r1 ; r1 set to 0x68		; addr: CE36078
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE3607A
fadd fr3,fr2		; addr: CE3607C
fmov.s fr2,@(r0,r14) 		; addr: CE3607E
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE36080
fmov.s @(r0,r14),fr2		; addr: CE36082
fmov.s @r1,fr3		; addr: CE36084
mov 0x60,r1 ; r1 set to 0x60		; addr: CE36086
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE36088
fadd fr3,fr2		; addr: CE3608A
fmov.s fr2,@(r0,r14) 		; addr: CE3608C
mov 0x38,r0 ; r0 set to 0x38		; addr: CE3608E
fmov.s @(r0,r14),fr2		; addr: CE36090
fmov.s @r1,fr3		; addr: CE36092
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE36094
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE36096
fadd fr3,fr2		; addr: CE36098
fmov.s fr2,@(r0,r14) 		; addr: CE3609A
mov 0x60,r0 ; r0 set to 0x60		; addr: CE3609C
fmov.s @(r0,r14),fr2		; addr: CE3609E
fmov.s @r1,fr3		; addr: CE360A0
fadd fr3,fr2		; addr: CE360A2
fmov.s fr2,@(r0,r14) 		; addr: CE360A4
jsr @r3		; addr: CE360A6
mov r14,r4		; addr: CE360A8
extu.b r0,r0 ; r0 set to 0x60		; addr: CE360AA
tst r0,r0		; addr: CE360AC
bt l_code_CE360CA		; addr: CE360AE
mov.b @(0x06,r14),r0 		; addr: CE360B0
mov 0x14,r5 ; r5 set to 0x14		; addr: CE360B2
mov.l @(ptr_CE360F8_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE360B4
mov 0x02,r6 ; r6 set to 0x02		; addr: CE360B6
add 0x01,r0 ; r0 set to 0x61		; addr: CE360B8
mov.b r0,@(0x06,r14) 		; addr: CE360BA
jsr @r3		; addr: CE360BC
mov r14,r4		; addr: CE360BE
lds.l @r15+,pr 		; addr: CE360C0
mov.l @(ptr_CE36104_to_fn_extern_8C0511B4,pc),r2 ; r2 set to 0x8C0511B4		; addr: CE360C2
mov r14,r4		; addr: CE360C4
jmp @r2		; addr: CE360C6
mov.l @r15+,r14		; addr: CE360C8

l_code_CE360CA:
lds.l @r15+,pr 		; addr: CE360CA
rts 		; addr: CE360CC
mov.l @r15+,r14		; addr: CE360CE
;-------------------------------------------------------------------------------

data_CE360D0:
#data 0x04C9		; addr: CE360D0

data_CE360D2:
#data 0x01E9		; addr: CE360D2

data_CE360D4:
#data 0x01A3		; addr: CE360D4
#data 0x01F9		; addr: CE360D6
#data 0x01A101D2		; addr: CE360D8

#align4
ptr_CE360DC_to_fn_extern_8C0530D8:
#data fn_extern_8C0530D8		; addr: CE360DC

ptr_CE360E0_to_ptr_CE36574_to_data_CE35FE8:
#data ptr_CE36574_to_data_CE35FE8		; addr: CE360E0
#data fn_extern_8C035162		; addr: CE360E4
#data 0x41F00000		; addr: CE360E8
#data 0x40892492		; addr: CE360EC
#data 0xBF4DB6DB		; addr: CE360F0
#data extern_8C2896B0		; addr: CE360F4

#align4
ptr_CE360F8_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE360F8

ptr_CE360FC_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE360FC

ptr_CE36100_to_fn_extern_8C052CE2:
#data fn_extern_8C052CE2		; addr: CE36100

ptr_CE36104_to_fn_extern_8C0511B4:
#data fn_extern_8C0511B4		; addr: CE36104


f_code_CE36108:
mov.l r14,@-r15		; addr: CE36108
sts.l pr,@-r15		; addr: CE3610A
mov.l @(ptr_CE36170_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE3610C
jsr @r3		; addr: CE3610E
mov r4,r14		; addr: CE36110
exts.b r0,r0		; addr: CE36112
cmp/pz r0		; addr: CE36114
bt data_CE3612A		; addr: CE36116
mov.l @(ptr_CE36174_to_fn_extern_8C035162,pc),r3 ; r3 set to 0x8C035162		; addr: CE36118
mov 0x00,r5 ; r5 set to 0x00		; addr: CE3611A
jsr @r3		; addr: CE3611C
mov r14,r4		; addr: CE3611E
lds.l @r15+,pr 		; addr: CE36120
mov.l @(ptr_CE36178_to_fn_extern_8C051854,pc),r2 ; r2 set to 0x8C051854		; addr: CE36122
mov r14,r4		; addr: CE36124
jmp @r2		; addr: CE36126
mov.l @r15+,r14		; addr: CE36128

data_CE3612A:
#data 0x901D		; addr: CE3612A
#data 0x222802EC		; addr: CE3612C
#data 0xE3008901		; addr: CE36130
#data 0x0E34		; addr: CE36134

data_CE36136:
#data 0x4F26		; addr: CE36136
#data 0x6EF6000B		; addr: CE36138
;-------------------------------------------------------------------------------

f_code_CE3613C:
mov.l r14,@-r15		; addr: CE3613C
sts.l pr,@-r15		; addr: CE3613E
add 0xF8,r15		; addr: CE36140
mov.w @(data_CE3616A,pc),r3 ; r3 set to 0x2A4		; addr: CE36142
mov r4,r14		; addr: CE36144
mov.l r4,@r15		; addr: CE36146
mov 0x00,r5 ; r5 set to 0x00		; addr: CE36148
add r3,r14		; addr: CE3614A
mov.w @(data_CE3616C,pc),r6 ; r6 set to 0x80		; addr: CE3614C
mov.w @(0x1E,r14),r0 		; addr: CE3614E
mov r3,r2 ; r2 set to 0x2A4		; addr: CE36150
mov.l @(ptr_CE3617C_to_fn_extern_8C129728,pc),r1 ; r1 set to 0x8C129728		; addr: CE36152
mov.w r0,@(0x04,r15) 		; addr: CE36154
mov.l @r15,r4		; addr: CE36156
jsr @r1		; addr: CE36158
add r2,r4		; addr: CE3615A
mov.w @(0x04,r15),r0 		; addr: CE3615C
mov.w r0,@(0x1E,r14) 		; addr: CE3615E
add 0x08,r15		; addr: CE36160
lds.l @r15+,pr 		; addr: CE36162
rts 		; addr: CE36164
mov.l @r15+,r14		; addr: CE36166
;-------------------------------------------------------------------------------
#data 0x0141		; addr: CE36168

data_CE3616A:
#data 0x02A4		; addr: CE3616A

data_CE3616C:
#data 0x0080		; addr: CE3616C
#data 0x0000		; addr: CE3616E

#align4
ptr_CE36170_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE36170

ptr_CE36174_to_fn_extern_8C035162:
#data fn_extern_8C035162		; addr: CE36174

ptr_CE36178_to_fn_extern_8C051854:
#data fn_extern_8C051854		; addr: CE36178

ptr_CE3617C_to_fn_extern_8C129728:
#data fn_extern_8C129728		; addr: CE3617C

data_CE36180:
#data 0x14181818		; addr: CE36180
#data 0x10101414		; addr: CE36184

#align4
data_CE36188:
#data 0x02000201		; addr: CE36188

#align4
data_CE3618C:
#data 0x020102FF		; addr: CE3618C

#align4
data_CE36190:
#data 0x02FFFFFF		; addr: CE36190

#align4
data_CE36194:
#data 0x02010201		; addr: CE36194

#align4
data_CE36198:
#data 0x02FF02FF		; addr: CE36198

#align4
data_CE3619C:
#data 0xFFFFFFFF		; addr: CE3619C

#align4
data_CE361A0:
#data 0x02000201		; addr: CE361A0

#align4
data_CE361A4:
#data 0x020102FF		; addr: CE361A4

#align4
data_CE361A8:
#data 0x02FFFFFF		; addr: CE361A8

#align4
data_CE361AC:
#data 0x02010201		; addr: CE361AC

#align4
data_CE361B0:
#data 0x02FF02FF		; addr: CE361B0

#align4
data_CE361B4:
#data 0xFFFFFFFF		; addr: CE361B4

#align4
data_CE361B8:
#data 0x02000201		; addr: CE361B8

#align4
data_CE361BC:
#data 0x020102FF		; addr: CE361BC

#align4
data_CE361C0:
#data 0x02FFFFFF		; addr: CE361C0

#align4
data_CE361C4:
#data 0x02010201		; addr: CE361C4

#align4
data_CE361C8:
#data 0x02FF02FF		; addr: CE361C8

#align4
data_CE361CC:
#data 0xFFFFFFFF		; addr: CE361CC

#align4
data_CE361D0:
#data 0x00000003		; addr: CE361D0
#data 0x00000000		; addr: CE361D4
#data 0x18001000		; addr: CE361D8
#data 0x03000800		; addr: CE361DC

#align4
data_CE361E0:
#data 0x000A0004		; addr: CE361E0
#data 0x00000001		; addr: CE361E4
#data 0x0300		; addr: CE361E8

data_CE361EA:
#data 0x0003		; addr: CE361EA
#data 0x00020000		; addr: CE361EC
#data 0x08000000		; addr: CE361F0
#data 0x18001000		; addr: CE361F4
#data 0x0300		; addr: CE361F8

data_CE361FA:
#data 0x0005		; addr: CE361FA
#data 0x00031020		; addr: CE361FC
#data 0x04000000		; addr: CE36200
#data 0x10001400		; addr: CE36204
#data 0x08001800		; addr: CE36208
#data 0x0060		; addr: CE3620C

data_CE3620E:
#data 0x0003		; addr: CE3620E
#data 0x00048100		; addr: CE36210
#data 0x10000000		; addr: CE36214
#data 0x08001800		; addr: CE36218
#data 0x0300		; addr: CE3621C

data_CE3621E:
#data 0x0005		; addr: CE3621E
#data 0x00051000		; addr: CE36220
#data 0x08000000		; addr: CE36224
#data 0x10001800		; addr: CE36228
#data 0x04001400		; addr: CE3622C
#data 0x0300		; addr: CE36230

data_CE36232:
#data 0x0003		; addr: CE36232
#data 0x00069100		; addr: CE36234
#data 0x10000000		; addr: CE36238
#data 0x08001800		; addr: CE3623C
#data 0x0060		; addr: CE36240

data_CE36242:
#data 0x0003		; addr: CE36242
#data 0x00079100		; addr: CE36244
#data 0x10000000		; addr: CE36248
#data 0x04001400		; addr: CE3624C
#data 0x0300		; addr: CE36250

data_CE36252:
#data 0x0003		; addr: CE36252
#data 0x000B1000		; addr: CE36254
#data 0x10000000		; addr: CE36258
#data 0x04001400		; addr: CE3625C
#data 0x00000060		; addr: CE36260

#align4
ptr_CE36264_to_data_CE306E6:
#data data_CE306E6		; addr: CE36264

ptr_CE36268_to_f_code_CE3001C:
#data f_code_CE3001C		; addr: CE36268

ptr_CE3626C_to_f_code_CE30774:
#data f_code_CE30774		; addr: CE3626C

ptr_CE36270_to_f_code_CE30E1A:
#data f_code_CE30E1A		; addr: CE36270

ptr_CE36274_to_f_code_CE313DE:
#data f_code_CE313DE		; addr: CE36274

ptr_CE36278_to_f_code_CE31570:
#data f_code_CE31570		; addr: CE36278

ptr_CE3627C_to_f_code_CE316CE:
#data f_code_CE316CE		; addr: CE3627C

ptr_CE36280_to_f_code_CE31AAE:
#data f_code_CE31AAE		; addr: CE36280

ptr_CE36284_to_f_code_CE31C2E:
#data f_code_CE31C2E		; addr: CE36284

ptr_CE36288_to_f_code_CE35454:
#data f_code_CE35454		; addr: CE36288

ptr_CE3628C_to_f_code_CE35558:
#data f_code_CE35558		; addr: CE3628C

ptr_CE36290_to_f_code_CE356F0:
#data f_code_CE356F0		; addr: CE36290

ptr_CE36294_to_f_code_CE35EA2:
#data f_code_CE35EA2		; addr: CE36294

ptr_CE36298_to_data_CE305EC:
#data data_CE305EC		; addr: CE36298

ptr_CE3629C_to_f_code_CE35FD6:
#data f_code_CE35FD6		; addr: CE3629C

ptr_CE362A0_to_data_CE31308:
#data data_CE31308		; addr: CE362A0

ptr_CE362A4_to_f_code_CE35EDA:
#data f_code_CE35EDA		; addr: CE362A4

ptr_CE362A8_to_f_code_CE35F0A:
#data f_code_CE35F0A		; addr: CE362A8

ptr_CE362AC_to_f_code_CE35F3A:
#data f_code_CE35F3A		; addr: CE362AC

ptr_CE362B0_to_f_code_CE35F98:
#data f_code_CE35F98		; addr: CE362B0
#data 0x00000000		; addr: CE362B4

#align4
ptr_CE362B8_to_f_code_CE35CD0:
#data f_code_CE35CD0		; addr: CE362B8
#data 0x00000000		; addr: CE362BC

#align4
ptr_CE362C0_to_f_code_CE3613C:
#data f_code_CE3613C		; addr: CE362C0
#data 0x00000000		; addr: CE362C4
#data 0x00000000		; addr: CE362C8
#data 0x00000000		; addr: CE362CC
#data 0x00000000		; addr: CE362D0

#align4
ptr_CE362D4_to_f_code_CE30788:
#data f_code_CE30788		; addr: CE362D4

ptr_CE362D8_to_data_CE30B8C:
#data data_CE30B8C		; addr: CE362D8

ptr_CE362DC_to_f_code_CE30BB4:
#data f_code_CE30BB4		; addr: CE362DC

ptr_CE362E0_to_f_code_CE30788:
#data f_code_CE30788		; addr: CE362E0

ptr_CE362E4_to_f_code_CE30E3C:
#data f_code_CE30E3C		; addr: CE362E4

ptr_CE362E8_to_f_code_CE311B0:
#data f_code_CE311B0		; addr: CE362E8

ptr_CE362EC_to_data_CE3119A:
#data data_CE3119A		; addr: CE362EC

ptr_CE362F0_to_data_CE30E2E:
#data data_CE30E2E		; addr: CE362F0

ptr_CE362F4_to_f_code_CE313F0:
#data f_code_CE313F0		; addr: CE362F4

ptr_CE362F8_to_f_code_CE31498:
#data f_code_CE31498		; addr: CE362F8

ptr_CE362FC_to_f_code_CE31516:
#data f_code_CE31516		; addr: CE362FC

ptr_CE36300_to_data_CE315A8:
#data data_CE315A8		; addr: CE36300

ptr_CE36304_to_data_CE3160A:
#data data_CE3160A		; addr: CE36304

ptr_CE36308_to_f_code_CE316AC:
#data f_code_CE316AC		; addr: CE36308

ptr_CE3630C_to_f_code_CE31710:
#data f_code_CE31710		; addr: CE3630C

ptr_CE36310_to_f_code_CE317C2:
#data f_code_CE317C2		; addr: CE36310

ptr_CE36314_to_f_code_CE31868:
#data f_code_CE31868		; addr: CE36314

ptr_CE36318_to_f_code_CE3190A:
#data f_code_CE3190A		; addr: CE36318

ptr_CE3631C_to_f_code_CE319D8:
#data f_code_CE319D8		; addr: CE3631C

ptr_CE36320_to_f_code_CE31A08:
#data f_code_CE31A08		; addr: CE36320

ptr_CE36324_to_data_CE31A8E:
#data data_CE31A8E		; addr: CE36324

ptr_CE36328_to_f_code_CE31AE2:
#data f_code_CE31AE2		; addr: CE36328

ptr_CE3632C_to_f_code_CE31BC6:
#data f_code_CE31BC6		; addr: CE3632C

ptr_CE36330_to_f_code_CE31BFA:
#data f_code_CE31BFA		; addr: CE36330

ptr_CE36334_to_f_code_CE31BE0:
#data f_code_CE31BE0		; addr: CE36334

ptr_CE36338_to_f_code_CE31C14:
#data f_code_CE31C14		; addr: CE36338

ptr_CE3633C_to_f_code_CE31AF4:
#data f_code_CE31AF4		; addr: CE3633C

ptr_CE36340_to_f_code_CE31BB8:
#data f_code_CE31BB8		; addr: CE36340

ptr_CE36344_to_f_code_CE31BBE:
#data f_code_CE31BBE		; addr: CE36344

ptr_CE36348_to_f_code_CE31BC2:
#data f_code_CE31BC2		; addr: CE36348

ptr_CE3634C_to_data_CE31C58:
#data data_CE31C58		; addr: CE3634C

ptr_CE36350_to_data_CE31DE6:
#data data_CE31DE6		; addr: CE36350

ptr_CE36354_to_f_code_CE320A8:
#data f_code_CE320A8		; addr: CE36354

ptr_CE36358_to_f_code_CE32358:
#data f_code_CE32358		; addr: CE36358

ptr_CE3635C_to_data_CE3251C:
#data data_CE3251C		; addr: CE3635C

ptr_CE36360_to_data_CE32744:
#data data_CE32744		; addr: CE36360

ptr_CE36364_to_data_CE32904:
#data data_CE32904		; addr: CE36364

ptr_CE36368_to_data_CE330FA:
#data data_CE330FA		; addr: CE36368

ptr_CE3636C_to_f_code_CE348B6:
#data f_code_CE348B6		; addr: CE3636C

ptr_CE36370_to_data_CE34930:
#data data_CE34930		; addr: CE36370

ptr_CE36374_to_f_code_CE34B0A:
#data f_code_CE34B0A		; addr: CE36374

ptr_CE36378_to_f_code_CE33F9C:
#data f_code_CE33F9C		; addr: CE36378

ptr_CE3637C_to_data_CE34CA0:
#data data_CE34CA0		; addr: CE3637C

ptr_CE36380_to_f_code_CE31C98:
#data f_code_CE31C98		; addr: CE36380

ptr_CE36384_to_f_code_CE31D4E:
#data f_code_CE31D4E		; addr: CE36384

ptr_CE36388_to_f_code_CE31E26:
#data f_code_CE31E26		; addr: CE36388

ptr_CE3638C_to_data_CE31F4A:
#data data_CE31F4A		; addr: CE3638C

ptr_CE36390_to_f_code_CE3201C:
#data f_code_CE3201C		; addr: CE36390

ptr_CE36394_to_f_code_CE320BE:
#data f_code_CE320BE		; addr: CE36394

ptr_CE36398_to_f_code_CE321FA:
#data f_code_CE321FA		; addr: CE36398

ptr_CE3639C_to_data_CE32280:
#data data_CE32280		; addr: CE3639C

ptr_CE363A0_to_f_code_CE3236E:
#data f_code_CE3236E		; addr: CE363A0

ptr_CE363A4_to_data_CE32430:
#data data_CE32430		; addr: CE363A4

ptr_CE363A8_to_f_code_CE324AC:
#data f_code_CE324AC		; addr: CE363A8

ptr_CE363AC_to_data_CE3255C:
#data data_CE3255C		; addr: CE363AC

ptr_CE363B0_to_f_code_CE32616:
#data f_code_CE32616		; addr: CE363B0

ptr_CE363B4_to_f_code_CE326D2:
#data f_code_CE326D2		; addr: CE363B4

ptr_CE363B8_to_f_code_CE327C0:
#data f_code_CE327C0		; addr: CE363B8

ptr_CE363BC_to_f_code_CE3282C:
#data f_code_CE3282C		; addr: CE363BC

ptr_CE363C0_to_f_code_CE328AC:
#data f_code_CE328AC		; addr: CE363C0

ptr_CE363C4_to_data_CE3294A:
#data data_CE3294A		; addr: CE363C4

ptr_CE363C8_to_f_code_CE329CE:
#data f_code_CE329CE		; addr: CE363C8

ptr_CE363CC_to_f_code_CE32AC0:
#data f_code_CE32AC0		; addr: CE363CC

ptr_CE363D0_to_data_CE32B02:
#data data_CE32B02		; addr: CE363D0

ptr_CE363D4_to_f_code_CE32B7C:
#data f_code_CE32B7C		; addr: CE363D4

ptr_CE363D8_to_f_code_CE32BF6:
#data f_code_CE32BF6		; addr: CE363D8

ptr_CE363DC_to_data_CE32CA8:
#data data_CE32CA8		; addr: CE363DC

ptr_CE363E0_to_f_code_CE32D5C:
#data f_code_CE32D5C		; addr: CE363E0

ptr_CE363E4_to_f_code_CE32E32:
#data f_code_CE32E32		; addr: CE363E4

ptr_CE363E8_to_data_CE32EA2:
#data data_CE32EA2		; addr: CE363E8

ptr_CE363EC_to_f_code_CE32F34:
#data f_code_CE32F34		; addr: CE363EC

ptr_CE363F0_to_f_code_CE32F8A:
#data f_code_CE32F8A		; addr: CE363F0

ptr_CE363F4_to_f_code_CE33026:
#data f_code_CE33026		; addr: CE363F4

ptr_CE363F8_to_f_code_CE33156:
#data f_code_CE33156		; addr: CE363F8

ptr_CE363FC_to_f_code_CE334E6:
#data f_code_CE334E6		; addr: CE363FC

ptr_CE36400_to_f_code_CE33732:
#data f_code_CE33732		; addr: CE36400

ptr_CE36404_to_f_code_CE33A78:
#data f_code_CE33A78		; addr: CE36404

ptr_CE36408_to_f_code_CE33B0C:
#data f_code_CE33B0C		; addr: CE36408

ptr_CE3640C_to_data_CE3319C:
#data data_CE3319C		; addr: CE3640C

ptr_CE36410_to_f_code_CE33258:
#data f_code_CE33258		; addr: CE36410

ptr_CE36414_to_f_code_CE33360:
#data f_code_CE33360		; addr: CE36414

ptr_CE36418_to_data_CE3348A:
#data data_CE3348A		; addr: CE36418

ptr_CE3641C_to_f_code_CE33554:
#data f_code_CE33554		; addr: CE3641C

ptr_CE36420_to_data_CE33588:
#data data_CE33588		; addr: CE36420

ptr_CE36424_to_f_code_CE33602:
#data f_code_CE33602		; addr: CE36424

ptr_CE36428_to_f_code_CE33626:
#data f_code_CE33626		; addr: CE36428

ptr_CE3642C_to_f_code_CE336BA:
#data f_code_CE336BA		; addr: CE3642C

ptr_CE36430_to_f_code_CE3383A:
#data f_code_CE3383A		; addr: CE36430

ptr_CE36434_to_f_code_CE3390A:
#data f_code_CE3390A		; addr: CE36434

ptr_CE36438_to_data_CE33950:
#data data_CE33950		; addr: CE36438

ptr_CE3643C_to_data_CE339A6:
#data data_CE339A6		; addr: CE3643C

ptr_CE36440_to_f_code_CE33A10:
#data f_code_CE33A10		; addr: CE36440

ptr_CE36444_to_f_code_CE33A44:
#data f_code_CE33A44		; addr: CE36444

ptr_CE36448_to_data_CE33AB6:
#data data_CE33AB6		; addr: CE36448

ptr_CE3644C_to_f_code_CE33AEC:
#data f_code_CE33AEC		; addr: CE3644C

ptr_CE36450_to_data_CE33B4C:
#data data_CE33B4C		; addr: CE36450

ptr_CE36454_to_f_code_CE33BCC:
#data f_code_CE33BCC		; addr: CE36454

ptr_CE36458_to_f_code_CE33CE8:
#data f_code_CE33CE8		; addr: CE36458

ptr_CE3645C_to_f_code_CE33FB2:
#data f_code_CE33FB2		; addr: CE3645C

ptr_CE36460_to_f_code_CE34090:
#data f_code_CE34090		; addr: CE36460

ptr_CE36464_to_f_code_CE34124:
#data f_code_CE34124		; addr: CE36464

ptr_CE36468_to_f_code_CE3421A:
#data f_code_CE3421A		; addr: CE36468

ptr_CE3646C_to_f_code_CE342C0:
#data f_code_CE342C0		; addr: CE3646C

ptr_CE36470_to_f_code_CE34382:
#data f_code_CE34382		; addr: CE36470

ptr_CE36474_to_f_code_CE34448:
#data f_code_CE34448		; addr: CE36474

ptr_CE36478_to_data_CE34558:
#data data_CE34558		; addr: CE36478

ptr_CE3647C_to_f_code_CE345B0:
#data f_code_CE345B0		; addr: CE3647C

ptr_CE36480_to_data_CE3466C:
#data data_CE3466C		; addr: CE36480

ptr_CE36484_to_f_code_CE346FE:
#data f_code_CE346FE		; addr: CE36484

ptr_CE36488_to_f_code_CE34970:
#data f_code_CE34970		; addr: CE36488

ptr_CE3648C_to_f_code_CE349FA:
#data f_code_CE349FA		; addr: CE3648C

ptr_CE36490_to_f_code_CE34A74:
#data f_code_CE34A74		; addr: CE36490

ptr_CE36494_to_f_code_CE34A92:
#data f_code_CE34A92		; addr: CE36494

ptr_CE36498_to_f_code_CE34AE4:
#data f_code_CE34AE4		; addr: CE36498

ptr_CE3649C_to_f_code_CE34B1C:
#data f_code_CE34B1C		; addr: CE3649C

ptr_CE364A0_to_f_code_CE34BCC:
#data f_code_CE34BCC		; addr: CE364A0

ptr_CE364A4_to_f_code_CE34C0A:
#data f_code_CE34C0A		; addr: CE364A4

ptr_CE364A8_to_f_code_CE34CE8:
#data f_code_CE34CE8		; addr: CE364A8

ptr_CE364AC_to_data_CE34D6A:
#data data_CE34D6A		; addr: CE364AC

ptr_CE364B0_to_data_CE34DC2:
#data data_CE34DC2		; addr: CE364B0

ptr_CE364B4_to_f_code_CE34E68:
#data f_code_CE34E68		; addr: CE364B4

ptr_CE364B8_to_data_CE34E8C:
#data data_CE34E8C		; addr: CE364B8

ptr_CE364BC_to_f_code_CE34F94:
#data f_code_CE34F94		; addr: CE364BC

ptr_CE364C0_to_data_CE35014:
#data data_CE35014		; addr: CE364C0

ptr_CE364C4_to_data_CE35294:
#data data_CE35294		; addr: CE364C4

ptr_CE364C8_to_f_code_CE33B0C:
#data f_code_CE33B0C		; addr: CE364C8

ptr_CE364CC_to_data_CE3319C:
#data data_CE3319C		; addr: CE364CC

ptr_CE364D0_to_f_code_CE33258:
#data f_code_CE33258		; addr: CE364D0

ptr_CE364D4_to_f_code_CE33360:
#data f_code_CE33360		; addr: CE364D4

ptr_CE364D8_to_data_CE34D34:
#data data_CE34D34		; addr: CE364D8

ptr_CE364DC_to_f_code_CE35112:
#data f_code_CE35112		; addr: CE364DC

ptr_CE364E0_to_f_code_CE3519E:
#data f_code_CE3519E		; addr: CE364E0

ptr_CE364E4_to_f_code_CE35218:
#data f_code_CE35218		; addr: CE364E4

ptr_CE364E8_to_f_code_CE3519E:
#data f_code_CE3519E		; addr: CE364E8

ptr_CE364EC_to_f_code_CE35174:
#data f_code_CE35174		; addr: CE364EC

ptr_CE364F0_to_f_code_CE351C8:
#data f_code_CE351C8		; addr: CE364F0

ptr_CE364F4_to_f_code_CE35242:
#data f_code_CE35242		; addr: CE364F4

ptr_CE364F8_to_f_code_CE351C8:
#data f_code_CE351C8		; addr: CE364F8

ptr_CE364FC_to_f_code_CE3526C:
#data f_code_CE3526C		; addr: CE364FC

ptr_CE36500_to_f_code_CE35488:
#data f_code_CE35488		; addr: CE36500

ptr_CE36504_to_f_code_CE35500:
#data f_code_CE35500		; addr: CE36504

ptr_CE36508_to_f_code_CE35504:
#data f_code_CE35504		; addr: CE36508

ptr_CE3650C_to_f_code_CE35488:
#data f_code_CE35488		; addr: CE3650C

ptr_CE36510_to_f_code_CE35584:
#data f_code_CE35584		; addr: CE36510

ptr_CE36514_to_data_CE355D0:
#data data_CE355D0		; addr: CE36514

ptr_CE36518_to_f_code_CE3563A:
#data f_code_CE3563A		; addr: CE36518

ptr_CE3651C_to_f_code_CE3568E:
#data f_code_CE3568E		; addr: CE3651C

ptr_CE36520_to_f_code_CE3570E:
#data f_code_CE3570E		; addr: CE36520

ptr_CE36524_to_f_code_CE358DC:
#data f_code_CE358DC		; addr: CE36524

ptr_CE36528_to_f_code_CE3570E:
#data f_code_CE3570E		; addr: CE36528

ptr_CE3652C_to_f_code_CE35922:
#data f_code_CE35922		; addr: CE3652C

ptr_CE36530_to_data_CE35720:
#data data_CE35720		; addr: CE36530

ptr_CE36534_to_f_code_CE3582C:
#data f_code_CE3582C		; addr: CE36534

ptr_CE36538_to_f_code_CE358BA:
#data f_code_CE358BA		; addr: CE36538

ptr_CE3653C_to_f_code_CE35950:
#data f_code_CE35950		; addr: CE3653C

ptr_CE36540_to_f_code_CE359F4:
#data f_code_CE359F4		; addr: CE36540

ptr_CE36544_to_f_code_CE35ACC:
#data f_code_CE35ACC		; addr: CE36544

ptr_CE36548_to_f_code_CE35B68:
#data f_code_CE35B68		; addr: CE36548

ptr_CE3654C_to_f_code_CE35BFC:
#data f_code_CE35BFC		; addr: CE3654C

ptr_CE36550_to_f_code_CE35CA6:
#data f_code_CE35CA6		; addr: CE36550

ptr_CE36554_to_data_CE35D1C:
#data data_CE35D1C		; addr: CE36554

ptr_CE36558_to_data_CE35DD0:
#data data_CE35DD0		; addr: CE36558

ptr_CE3655C_to_data_CE35DEE:
#data data_CE35DEE		; addr: CE3655C

ptr_CE36560_to_f_code_CE35E32:
#data f_code_CE35E32		; addr: CE36560

ptr_CE36564_to_f_code_CE35EBA:
#data f_code_CE35EBA		; addr: CE36564

ptr_CE36568_to_f_code_CE35EC8:
#data f_code_CE35EC8		; addr: CE36568

ptr_CE3656C_to_f_code_CE35EBA:
#data f_code_CE35EBA		; addr: CE3656C

ptr_CE36570_to_f_code_CE35ED6:
#data f_code_CE35ED6		; addr: CE36570

ptr_CE36574_to_data_CE35FE8:
#data data_CE35FE8		; addr: CE36574

ptr_CE36578_to_f_code_CE36062:
#data f_code_CE36062		; addr: CE36578

ptr_CE3657C_to_f_code_CE36108:
#data f_code_CE36108		; addr: CE3657C
