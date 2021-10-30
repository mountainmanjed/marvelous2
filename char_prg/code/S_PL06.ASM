; S_PL06A.BIN
#symbol fn_extern_8C054508 0x8C054508
#symbol fn_extern_8C054B34 0x8C054B34
#symbol fn_extern_8C05496C 0x8C05496C
#symbol fn_extern_8C054D04 0x8C054D04
#symbol fn_extern_8C053E00 0x8C053E00
#symbol fn_extern_8C0542E0 0x8C0542E0
#symbol fn_extern_8C054E58 0x8C054E58
#symbol fn_extern_8C0530D8 0x8C0530D8
#symbol fn_extern_8C055C3A 0x8C055C3A
#symbol fn_extern_8C045790 0x8C045790
#symbol fn_extern_8C0522E0 0x8C0522E0
#symbol fn_extern_8C055066 0x8C055066
#symbol extern_8C054D1C 0x8C054D1C
#symbol fn_extern_8C054DA0 0x8C054DA0
#symbol fn_extern_8C052B4C 0x8C052B4C
#symbol fn_extern_8C04223A 0x8C04223A
#symbol extern_8C2896B0 0x8C2896B0
#symbol fn_extern_8C034E8C 0x8C034E8C
#symbol extern_8D068800 0x8D068800
#symbol extern_8D062248 0x8D062248
#symbol extern_8C0511E2 0x8C0511E2
#symbol extern_8C052C84 0x8C052C84
#symbol fn_extern_8C034DEE 0x8C034DEE
#symbol fn_extern_8C051648 0x8C051648
#symbol fn_extern_8C068B40 0x8C068B40
#symbol fn_extern_8C0BFC20 0x8C0BFC20
#symbol extern_8C05225E 0x8C05225E
#symbol extern_8C050084 0x8C050084
#symbol extern_8C04FF88 0x8C04FF88
#symbol fn_extern_8C04FEA8 0x8C04FEA8
#symbol fn_extern_8C050048 0x8C050048
#symbol fn_extern_8C052CE2 0x8C052CE2
#symbol fn_extern_8C052DAC 0x8C052DAC
#symbol fn_extern_8C05176E 0x8C05176E
#symbol fn_extern_8C056DE4 0x8C056DE4
#symbol fn_extern_8C035162 0x8C035162
#symbol fn_extern_8C03544C 0x8C03544C
#symbol fn_extern_8C046C8A 0x8C046C8A
#symbol fn_extern_8C042008 0x8C042008
#symbol extern_8C26823C 0x8C26823C
#symbol fn_extern_8C068EE4 0x8C068EE4
#symbol fn_extern_8C05218A 0x8C05218A
#symbol fn_extern_8C05115A 0x8C05115A
#symbol fn_extern_8C050834 0x8C050834
#symbol extern_8C1294C8 0x8C1294C8
#symbol extern_8C03362C 0x8C03362C
#symbol extern_8C055D54 0x8C055D54
#symbol fn_extern_8C0699DC 0x8C0699DC
#symbol extern_8C03319E 0x8C03319E
#symbol extern_8C053082 0x8C053082
#symbol fn_extern_8C0511B4 0x8C0511B4
#symbol extern_8D082008 0x8D082008
#symbol extern_8D042338 0x8D042338
#symbol extern_8C050EA4 0x8C050EA4
#symbol extern_8D332008 0x8D332008
#symbol fn_extern_8C051854 0x8C051854
#symbol extern_8C103660 0x8C103660
#symbol fn_extern_8C056F2A 0x8C056F2A
#symbol fn_extern_8C0423FC 0x8C0423FC
#symbol extern_8D022008 0x8D022008
#symbol extern_8D152348 0x8D152348
#symbol extern_8D082228 0x8D082228
#symbol extern_8D0A2338 0x8D0A2338
#symbol code_extern_8C04CC1C 0x8C04CC1C
#symbol extern_8D048800 0x8D048800
#symbol extern_8C129728 0x8C129728



;======================================================================

start_CE30000:
mov.w @(data_CE300CE,pc),r0 ; r0 set to 0x428		; addr: CE30000
mov 0x70,r5 ; r5 set to 0x70		; addr: CE30002
mov.l @(ptr_CE300D0_to_ptr_CE33E9C_to_data_CE30550,pc),r7 ; r7 set to 0xCE33E9C		; addr: CE30004
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
mov.l @(ptr_CE300D4_to_fn_extern_8C054508,pc),r3 ; r3 set to 0x8C054508		; addr: CE30020
jsr @r3		; addr: CE30022
mov r4,r14		; addr: CE30024
extu.b r0,r0		; addr: CE30026
tst r0,r0		; addr: CE30028
bf l_code_CE300C8		; addr: CE3002A
mov.l @(ptr_CE300D8_to_fn_extern_8C054B34,pc),r3 ; r3 set to 0x8C054B34		; addr: CE3002C
jsr @r3		; addr: CE3002E
mov r14,r4		; addr: CE30030
extu.b r0,r0		; addr: CE30032
tst r0,r0		; addr: CE30034
bf l_code_CE300C8		; addr: CE30036
mov.l @(ptr_CE300DC_to_fn_extern_8C05496C,pc),r3 ; r3 set to 0x8C05496C		; addr: CE30038
jsr @r3		; addr: CE3003A
mov r14,r4		; addr: CE3003C
extu.b r0,r0		; addr: CE3003E
tst r0,r0		; addr: CE30040
bf l_code_CE300C8		; addr: CE30042
mov.l @(ptr_CE300E0_to_fn_extern_8C054D04,pc),r3 ; r3 set to 0x8C054D04		; addr: CE30044
jsr @r3		; addr: CE30046
mov r14,r4		; addr: CE30048
extu.b r0,r0		; addr: CE3004A
tst r0,r0		; addr: CE3004C
bf l_code_CE300C8		; addr: CE3004E
bsr data_CE300EC		; addr: CE30050
mov r14,r4		; addr: CE30052
extu.b r0,r0		; addr: CE30054
tst r0,r0		; addr: CE30056
bf l_code_CE300C8		; addr: CE30058
bsr data_CE30152		; addr: CE3005A
mov r14,r4		; addr: CE3005C
extu.b r0,r0		; addr: CE3005E
tst r0,r0		; addr: CE30060
bf l_code_CE300C8		; addr: CE30062
bsr l_code_CE30240		; addr: CE30064
mov r14,r4		; addr: CE30066
extu.b r0,r0		; addr: CE30068
tst r0,r0		; addr: CE3006A
bf l_code_CE300C8		; addr: CE3006C
bsr data_CE30288		; addr: CE3006E
mov r14,r4		; addr: CE30070
tst r0,r0		; addr: CE30072
bf l_code_CE300C8		; addr: CE30074
bsr l_code_CE3037E		; addr: CE30076
mov r14,r4		; addr: CE30078
extu.b r0,r0		; addr: CE3007A
tst r0,r0		; addr: CE3007C
bf l_code_CE300C8		; addr: CE3007E
bsr data_CE301D8		; addr: CE30080
mov r14,r4		; addr: CE30082
extu.b r0,r0		; addr: CE30084
tst r0,r0		; addr: CE30086
bf l_code_CE300C8		; addr: CE30088
bsr l_code_CE303C4		; addr: CE3008A
mov r14,r4		; addr: CE3008C
extu.b r0,r0		; addr: CE3008E
tst r0,r0		; addr: CE30090
bf l_code_CE300C8		; addr: CE30092
bsr l_code_CE302C6		; addr: CE30094
mov r14,r4		; addr: CE30096
extu.b r0,r0		; addr: CE30098
tst r0,r0		; addr: CE3009A
bf l_code_CE300C8		; addr: CE3009C
bsr l_code_CE30340		; addr: CE3009E
mov r14,r4		; addr: CE300A0
extu.b r0,r0		; addr: CE300A2
tst r0,r0		; addr: CE300A4
bf l_code_CE300C8		; addr: CE300A6
bsr data_CE3040C		; addr: CE300A8
mov r14,r4		; addr: CE300AA
tst r0,r0		; addr: CE300AC
bf l_code_CE300C8		; addr: CE300AE
bsr l_code_CE30478		; addr: CE300B0
mov r14,r4		; addr: CE300B2
tst r0,r0		; addr: CE300B4
bf l_code_CE300C8		; addr: CE300B6
mov.l @(ptr_CE300E4_to_fn_extern_8C053E00,pc),r3 ; r3 set to 0x8C053E00		; addr: CE300B8
jsr @r3		; addr: CE300BA
mov r14,r4		; addr: CE300BC
lds.l @r15+,pr 		; addr: CE300BE
mov.l @(ptr_CE300E8_to_fn_extern_8C0542E0,pc),r2 ; r2 set to 0x8C0542E0		; addr: CE300C0
mov r14,r4		; addr: CE300C2
jmp @r2		; addr: CE300C4
mov.l @r15+,r14		; addr: CE300C6

l_code_CE300C8:
lds.l @r15+,pr 		; addr: CE300C8
rts 		; addr: CE300CA
mov.l @r15+,r14		; addr: CE300CC
;-------------------------------------------------------------------------------

data_CE300CE:
#data 0x0428		; addr: CE300CE

#align4
ptr_CE300D0_to_ptr_CE33E9C_to_data_CE30550:
#data ptr_CE33E9C_to_data_CE30550		; addr: CE300D0

ptr_CE300D4_to_fn_extern_8C054508:
#data fn_extern_8C054508		; addr: CE300D4

ptr_CE300D8_to_fn_extern_8C054B34:
#data fn_extern_8C054B34		; addr: CE300D8

ptr_CE300DC_to_fn_extern_8C05496C:
#data fn_extern_8C05496C		; addr: CE300DC

ptr_CE300E0_to_fn_extern_8C054D04:
#data fn_extern_8C054D04		; addr: CE300E0

ptr_CE300E4_to_fn_extern_8C053E00:
#data fn_extern_8C053E00		; addr: CE300E4

ptr_CE300E8_to_fn_extern_8C0542E0:
#data fn_extern_8C0542E0		; addr: CE300E8

data_CE300EC:
#data 0x2FE6		; addr: CE300EC
#data 0x6E43		; addr: CE300EE
#data 0x4F22		; addr: CE300F0
#data 0xD535		; addr: CE300F2
#data 0x9660		; addr: CE300F4
#data 0xD335		; addr: CE300F6
#data 0x430B		; addr: CE300F8
#data 0x36EC		; addr: CE300FA
#data 0x600C		; addr: CE300FC
#data 0x2008		; addr: CE300FE
#data 0x8911		; addr: CE30100
#data 0x905A		; addr: CE30102
#data 0x03EE		; addr: CE30104
#data 0x6230		; addr: CE30106
#data 0x2228		; addr: CE30108
#data 0x890C		; addr: CE3010A
#data 0x9056		; addr: CE3010C
#data 0x00EC		; addr: CE3010E
#data 0x600C		; addr: CE30110
#data 0x8802		; addr: CE30112
#data 0x8B0E		; addr: CE30114
#data 0x9052		; addr: CE30116
#data 0x02EC		; addr: CE30118
#data 0x2228		; addr: CE3011A
#data 0x8B0A		; addr: CE3011C
#data 0x904F		; addr: CE3011E
#data 0x03EC		; addr: CE30120
#data 0x2338		; addr: CE30122
#data 0x8903		; addr: CE30124

data_CE30126:
#data 0x4F26		; addr: CE30126
#data 0xE000		; addr: CE30128
#data 0x000B		; addr: CE3012A
#data 0x6EF6		; addr: CE3012C
;-------------------------------------------------------------------------------

data_CE3012E:
#data 0x03EC		; addr: CE3012E
#data 0x7301		; addr: CE30130
#data 0x0E34		; addr: CE30132

data_CE30134:
#data 0xE000		; addr: CE30134
#data 0x80E5		; addr: CE30136
#data 0xE302		; addr: CE30138
#data 0x80E7		; addr: CE3013A
#data 0xE51D		; addr: CE3013C
#data 0x80E6		; addr: CE3013E
#data 0x903F		; addr: CE30140
#data 0x0E34		; addr: CE30142
#data 0xD322		; addr: CE30144
#data 0x430B		; addr: CE30146
#data 0x64E3		; addr: CE30148
#data 0xE001		; addr: CE3014A
#data 0x4F26		; addr: CE3014C
#data 0x000B		; addr: CE3014E
#data 0x6EF6		; addr: CE30150
;-------------------------------------------------------------------------------

data_CE30152:
#data 0x2FE6		; addr: CE30152
#data 0x6E43		; addr: CE30154
#data 0x4F22		; addr: CE30156
#data 0xD51E		; addr: CE30158
#data 0x9633		; addr: CE3015A
#data 0xD31B		; addr: CE3015C
#data 0x430B		; addr: CE3015E
#data 0x36EC		; addr: CE30160
#data 0x600C		; addr: CE30162
#data 0x2008		; addr: CE30164
#data 0x8911		; addr: CE30166
#data 0x9027		; addr: CE30168
#data 0x03EE		; addr: CE3016A
#data 0x6230		; addr: CE3016C
#data 0x2228		; addr: CE3016E
#data 0x890C		; addr: CE30170
#data 0x9023		; addr: CE30172
#data 0x00EC		; addr: CE30174
#data 0x600C		; addr: CE30176
#data 0x8802		; addr: CE30178
#data 0x8B0E		; addr: CE3017A
#data 0x901F		; addr: CE3017C
#data 0x02EC		; addr: CE3017E
#data 0x2228		; addr: CE30180
#data 0x8B0A		; addr: CE30182
#data 0x901C		; addr: CE30184
#data 0x03EC		; addr: CE30186
#data 0x2338		; addr: CE30188
#data 0x8903		; addr: CE3018A

data_CE3018C:
#data 0x4F26		; addr: CE3018C
#data 0xE000		; addr: CE3018E
#data 0x000B		; addr: CE30190
#data 0x6EF6		; addr: CE30192
;-------------------------------------------------------------------------------

data_CE30194:
#data 0x03EC		; addr: CE30194
#data 0x7301		; addr: CE30196
#data 0x0E34		; addr: CE30198

data_CE3019A:
#data 0xE000		; addr: CE3019A
#data 0x80E5		; addr: CE3019C
#data 0xE301		; addr: CE3019E
#data 0xE51D80E7		; addr: CE301A0
#data 0x900C80E6		; addr: CE301A4
#data 0xD3090E34		; addr: CE301A8
#data 0x64E3430B		; addr: CE301AC
#data 0x4F26E001		; addr: CE301B0
#data 0x6EF6000B		; addr: CE301B4
;-------------------------------------------------------------------------------
#data 0x040C0374		; addr: CE301B8
#data 0x01FC01F9		; addr: CE301BC
#data 0x01E901D4		; addr: CE301C0
#data 0x0000036C		; addr: CE301C4

#align4
ptr_CE301C8_to_data_CE33E0C:
#data data_CE33E0C		; addr: CE301C8
#data fn_extern_8C054E58		; addr: CE301CC
#data fn_extern_8C0530D8		; addr: CE301D0

#align4
ptr_CE301D4_to_data_CE33E1C:
#data data_CE33E1C		; addr: CE301D4

data_CE301D8:
#data 0x6E432FE6		; addr: CE301D8
#data 0xD5464F22		; addr: CE301DC
#data 0xD3469680		; addr: CE301E0
#data 0x36EC430B		; addr: CE301E4
#data 0x2008600C		; addr: CE301E8
#data 0x907A890C		; addr: CE301EC
#data 0x600C00EC		; addr: CE301F0
#data 0x8B0E8802		; addr: CE301F4
#data 0x02EC9076		; addr: CE301F8
#data 0x8B0A2228		; addr: CE301FC
#data 0x03EC9073		; addr: CE30200
#data 0x89032338		; addr: CE30204

#align4
data_CE30208:
#data 0xE0004F26		; addr: CE30208
#data 0x6EF6000B		; addr: CE3020C
;-------------------------------------------------------------------------------

#align4
data_CE30210:
#data 0x730103EC		; addr: CE30210
#data 0x0E34		; addr: CE30214

data_CE30216:
#data 0x9565		; addr: CE30216
#data 0x35ECD239		; addr: CE30218
#data 0x64E3420B		; addr: CE3021C
#data 0x6043E400		; addr: CE30220
#data 0x80E50009		; addr: CE30224
#data 0x80E7E515		; addr: CE30228
#data 0x905D80E6		; addr: CE3022C
#data 0x0E44D334		; addr: CE30230
#data 0x64E3430B		; addr: CE30234
#data 0x4F26E001		; addr: CE30238
#data 0x6EF6000B		; addr: CE3023C
;-------------------------------------------------------------------------------

l_code_CE30240:
mov.l r14,@-r15		; addr: CE30240
mov r4,r14		; addr: CE30242
sts.l pr,@-r15		; addr: CE30244
mov.l @(ptr_CE30308_to_data_CE33E5C,pc),r5 ; r5 set to 0xCE33E5C		; addr: CE30246
mov.w @(data_CE302EE,pc),r6 ; r6 set to 0x37C		; addr: CE30248
mov.l @(ptr_CE302FC_to_fn_extern_8C054E58,pc),r3 ; r3 set to 0x8C054E58		; addr: CE3024A
jsr @r3		; addr: CE3024C
add r14,r6 ; r6 ??? bc r14 is ???		; addr: CE3024E
extu.b r0,r0		; addr: CE30250
tst r0,r0		; addr: CE30252
bf l_code_CE3025E		; addr: CE30254
lds.l @r15+,pr 		; addr: CE30256
mov 0x00,r0 ; r0 set to 0x00		; addr: CE30258
rts 		; addr: CE3025A
mov.l @r15+,r14		; addr: CE3025C
;-------------------------------------------------------------------------------

l_code_CE3025E:
mov.w @(data_CE302EE,pc),r5 ; r5 set to 0x37C		; addr: CE3025E
mov.l @(ptr_CE30300_to_fn_extern_8C055C3A,pc),r3 ; r3 set to 0x8C055C3A		; addr: CE30260
add r14,r5 ; r5 ??? bc r14 is ???		; addr: CE30262
jsr @r3		; addr: CE30264
mov r14,r4		; addr: CE30266
mov.w @(data_CE302EC,pc),r0 ; r0 set to 0x1E9		; addr: CE30268
mov 0x03,r2 ; r2 set to 0x03		; addr: CE3026A
mov.l @(ptr_CE30304_to_fn_extern_8C0530D8,pc),r3 ; r3 set to 0x8C0530D8		; addr: CE3026C
mov 0x15,r5 ; r5 set to 0x15		; addr: CE3026E
mov.b r2,@(r0,r14) 		; addr: CE30270
mov 0x00,r0 ; r0 set to 0x00		; addr: CE30272
mov.b r0,@(0x05,r14) 		; addr: CE30274
jsr @r3		; addr: CE30276
mov r14,r4		; addr: CE30278
mov 0x00,r0 ; r0 set to 0x00		; addr: CE3027A
mov.b r0,@(0x07,r14) 		; addr: CE3027C
mov.b r0,@(0x06,r14) 		; addr: CE3027E
mov 0x01,r0 ; r0 set to 0x01		; addr: CE30280
lds.l @r15+,pr 		; addr: CE30282
rts 		; addr: CE30284
mov.l @r15+,r14		; addr: CE30286
;-------------------------------------------------------------------------------

#align4
data_CE30288:
#data 0x6E432FE6		; addr: CE30288
#data 0xD51F4F22		; addr: CE3028C
#data 0xD31A962E		; addr: CE30290
#data 0x36EC430B		; addr: CE30294
#data 0x2008600C		; addr: CE30298
#data 0xD21C8905		; addr: CE3029C
#data 0x64E3420B		; addr: CE302A0
#data 0x8F042008		; addr: CE302A4
#data 0x6503		; addr: CE302A8

data_CE302AA:
#data 0x4F26		; addr: CE302AA
#data 0x000BE000		; addr: CE302AC
#data 0x6EF6		; addr: CE302B0
;-------------------------------------------------------------------------------

data_CE302B2:
#data 0x901E		; addr: CE302B2
#data 0xD317E243		; addr: CE302B4
#data 0x430B0E24		; addr: CE302B8
#data 0xE00164E3		; addr: CE302BC
#data 0x000B4F26		; addr: CE302C0
#data 0x6EF6		; addr: CE302C4
;-------------------------------------------------------------------------------

l_code_CE302C6:
mov.l r14,@-r15		; addr: CE302C6
mov r4,r14		; addr: CE302C8
sts.l pr,@-r15		; addr: CE302CA
mov.l @(ptr_CE30318_to_data_CE33E6C,pc),r5 ; r5 set to 0xCE33E6C		; addr: CE302CC
mov.w @(data_CE302F4,pc),r6 ; r6 set to 0x384		; addr: CE302CE
mov.l @(ptr_CE3031C_to_fn_extern_8C055066,pc),r3 ; r3 set to 0x8C055066		; addr: CE302D0
jsr @r3		; addr: CE302D2
add r14,r6 ; r6 ??? bc r14 is ???		; addr: CE302D4
extu.b r0,r0		; addr: CE302D6
tst r0,r0		; addr: CE302D8
bf l_code_CE30320		; addr: CE302DA
lds.l @r15+,pr 		; addr: CE302DC
mov 0x00,r0 ; r0 set to 0x00		; addr: CE302DE
rts 		; addr: CE302E0
mov.l @r15+,r14		; addr: CE302E2
;-------------------------------------------------------------------------------
#data 0x01F90364		; addr: CE302E4
#data 0x01D401FC		; addr: CE302E8

data_CE302EC:
#data 0x01E9		; addr: CE302EC

data_CE302EE:
#data 0x037C		; addr: CE302EE
#data 0x01F703A4		; addr: CE302F0

data_CE302F4:
#data 0x0384		; addr: CE302F4
#data 0x0000		; addr: CE302F6

#align4
ptr_CE302F8_to_data_CE33E2C:
#data data_CE33E2C		; addr: CE302F8

ptr_CE302FC_to_fn_extern_8C054E58:
#data fn_extern_8C054E58		; addr: CE302FC

ptr_CE30300_to_fn_extern_8C055C3A:
#data fn_extern_8C055C3A		; addr: CE30300

ptr_CE30304_to_fn_extern_8C0530D8:
#data fn_extern_8C0530D8		; addr: CE30304

ptr_CE30308_to_data_CE33E5C:
#data data_CE33E5C		; addr: CE30308

ptr_CE3030C_to_data_CE33E88:
#data data_CE33E88		; addr: CE3030C
#data fn_extern_8C045790		; addr: CE30310
#data fn_extern_8C0522E0		; addr: CE30314

#align4
ptr_CE30318_to_data_CE33E6C:
#data data_CE33E6C		; addr: CE30318

ptr_CE3031C_to_fn_extern_8C055066:
#data fn_extern_8C055066		; addr: CE3031C


l_code_CE30320:
mov.w @(data_CE3044C,pc),r0 ; r0 set to 0x1E9		; addr: CE30320
mov 0x04,r3 ; r3 set to 0x04		; addr: CE30322
mov 0x15,r5 ; r5 set to 0x15		; addr: CE30324
mov.b r3,@(r0,r14) 		; addr: CE30326
mov 0x00,r0 ; r0 set to 0x00		; addr: CE30328
mov.l @(ptr_CE30458_to_fn_extern_8C0530D8,pc),r3 ; r3 set to 0x8C0530D8		; addr: CE3032A
mov.b r0,@(0x05,r14) 		; addr: CE3032C
jsr @r3		; addr: CE3032E
mov r14,r4		; addr: CE30330
mov 0x00,r0 ; r0 set to 0x00		; addr: CE30332
mov.b r0,@(0x07,r14) 		; addr: CE30334
mov.b r0,@(0x06,r14) 		; addr: CE30336
mov 0x01,r0 ; r0 set to 0x01		; addr: CE30338
lds.l @r15+,pr 		; addr: CE3033A
rts 		; addr: CE3033C
mov.l @r15+,r14		; addr: CE3033E
;-------------------------------------------------------------------------------

l_code_CE30340:
mov.l r14,@-r15		; addr: CE30340
mov r4,r14		; addr: CE30342
sts.l pr,@-r15		; addr: CE30344
mov.l @(ptr_CE3045C_to_data_CE33E7A,pc),r5 ; r5 set to 0xCE33E7A		; addr: CE30346
mov.w @(data_CE3044E,pc),r6 ; r6 set to 0x394		; addr: CE30348
mov.l @(ptr_CE30460_to_fn_extern_8C055066,pc),r3 ; r3 set to 0x8C055066		; addr: CE3034A
jsr @r3		; addr: CE3034C
add r14,r6 ; r6 ??? bc r14 is ???		; addr: CE3034E
extu.b r0,r0		; addr: CE30350
tst r0,r0		; addr: CE30352
bf l_code_CE3035E		; addr: CE30354
lds.l @r15+,pr 		; addr: CE30356
mov 0x00,r0 ; r0 set to 0x00		; addr: CE30358
rts 		; addr: CE3035A
mov.l @r15+,r14		; addr: CE3035C
;-------------------------------------------------------------------------------

l_code_CE3035E:
mov.w @(data_CE3044C,pc),r0 ; r0 set to 0x1E9		; addr: CE3035E
mov 0x09,r3 ; r3 set to 0x09		; addr: CE30360
mov 0x15,r5 ; r5 set to 0x15		; addr: CE30362
mov.b r3,@(r0,r14) 		; addr: CE30364
mov 0x00,r0 ; r0 set to 0x00		; addr: CE30366
mov.l @(ptr_CE30458_to_fn_extern_8C0530D8,pc),r3 ; r3 set to 0x8C0530D8		; addr: CE30368
mov.b r0,@(0x05,r14) 		; addr: CE3036A
jsr @r3		; addr: CE3036C
mov r14,r4		; addr: CE3036E
mov 0x00,r0 ; r0 set to 0x00		; addr: CE30370
mov.b r0,@(0x07,r14) 		; addr: CE30372
mov.b r0,@(0x06,r14) 		; addr: CE30374
mov 0x01,r0 ; r0 set to 0x01		; addr: CE30376
lds.l @r15+,pr 		; addr: CE30378
rts 		; addr: CE3037A
mov.l @r15+,r14		; addr: CE3037C
;-------------------------------------------------------------------------------

l_code_CE3037E:
mov.l r14,@-r15		; addr: CE3037E
mov r4,r14		; addr: CE30380
sts.l pr,@-r15		; addr: CE30382
mov.l @(ptr_CE30464_to_data_CE33E3C,pc),r5 ; r5 set to 0xCE33E3C		; addr: CE30384
mov.w @(data_CE30450,pc),r6 ; r6 set to 0x38C		; addr: CE30386
mov.l @(ptr_CE30468_to_fn_extern_8C054E58,pc),r3 ; r3 set to 0x8C054E58		; addr: CE30388
jsr @r3		; addr: CE3038A
add r14,r6 ; r6 ??? bc r14 is ???		; addr: CE3038C
extu.b r0,r0		; addr: CE3038E
tst r0,r0		; addr: CE30390
bf l_code_CE3039C		; addr: CE30392
lds.l @r15+,pr 		; addr: CE30394
mov 0x00,r0 ; r0 set to 0x00		; addr: CE30396
rts 		; addr: CE30398
mov.l @r15+,r14		; addr: CE3039A
;-------------------------------------------------------------------------------

l_code_CE3039C:
mov.w @(data_CE30450,pc),r5 ; r5 set to 0x38C		; addr: CE3039C
mov.l @(ptr_CE3046C_to_fn_extern_8C055C3A,pc),r3 ; r3 set to 0x8C055C3A		; addr: CE3039E
add r14,r5 ; r5 ??? bc r14 is ???		; addr: CE303A0
jsr @r3		; addr: CE303A2
mov r14,r4		; addr: CE303A4
mov 0x00,r0 ; r0 set to 0x00		; addr: CE303A6
mov.b r0,@(0x05,r14) 		; addr: CE303A8
mov 0x08,r3 ; r3 set to 0x08		; addr: CE303AA
mov.b r0,@(0x07,r14) 		; addr: CE303AC
mov 0x15,r5 ; r5 set to 0x15		; addr: CE303AE
mov.b r0,@(0x06,r14) 		; addr: CE303B0
mov.w @(data_CE3044C,pc),r0 ; r0 set to 0x1E9		; addr: CE303B2
mov.b r3,@(r0,r14) 		; addr: CE303B4
mov.l @(ptr_CE30458_to_fn_extern_8C0530D8,pc),r3 ; r3 set to 0x8C0530D8		; addr: CE303B6
jsr @r3		; addr: CE303B8
mov r14,r4		; addr: CE303BA
mov 0x01,r0 ; r0 set to 0x01		; addr: CE303BC
lds.l @r15+,pr 		; addr: CE303BE
rts 		; addr: CE303C0
mov.l @r15+,r14		; addr: CE303C2
;-------------------------------------------------------------------------------

l_code_CE303C4:
mov.l r14,@-r15		; addr: CE303C4
mov r4,r14		; addr: CE303C6
sts.l pr,@-r15		; addr: CE303C8
mov.l @(ptr_CE30470_to_data_CE33E4C,pc),r5 ; r5 set to 0xCE33E4C		; addr: CE303CA
mov.w @(data_CE30452,pc),r6 ; r6 set to 0x39C		; addr: CE303CC
mov.l @(ptr_CE30468_to_fn_extern_8C054E58,pc),r3 ; r3 set to 0x8C054E58		; addr: CE303CE
jsr @r3		; addr: CE303D0
add r14,r6 ; r6 ??? bc r14 is ???		; addr: CE303D2
extu.b r0,r0		; addr: CE303D4
tst r0,r0		; addr: CE303D6
bf l_code_CE303E2		; addr: CE303D8
lds.l @r15+,pr 		; addr: CE303DA
mov 0x00,r0 ; r0 set to 0x00		; addr: CE303DC
rts 		; addr: CE303DE
mov.l @r15+,r14		; addr: CE303E0
;-------------------------------------------------------------------------------

l_code_CE303E2:
mov.w @(data_CE30452,pc),r5 ; r5 set to 0x39C		; addr: CE303E2
mov.l @(ptr_CE3046C_to_fn_extern_8C055C3A,pc),r3 ; r3 set to 0x8C055C3A		; addr: CE303E4
add r14,r5 ; r5 ??? bc r14 is ???		; addr: CE303E6
jsr @r3		; addr: CE303E8
mov r14,r4		; addr: CE303EA
mov.w @(data_CE3044C,pc),r0 ; r0 set to 0x1E9		; addr: CE303EC
mov 0x07,r2 ; r2 set to 0x07		; addr: CE303EE
mov.l @(ptr_CE30458_to_fn_extern_8C0530D8,pc),r3 ; r3 set to 0x8C0530D8		; addr: CE303F0
mov 0x15,r5 ; r5 set to 0x15		; addr: CE303F2
mov.b r2,@(r0,r14) 		; addr: CE303F4
mov 0x00,r0 ; r0 set to 0x00		; addr: CE303F6
mov.b r0,@(0x05,r14) 		; addr: CE303F8
jsr @r3		; addr: CE303FA
mov r14,r4		; addr: CE303FC
mov 0x00,r0 ; r0 set to 0x00		; addr: CE303FE
mov.b r0,@(0x07,r14) 		; addr: CE30400
mov.b r0,@(0x06,r14) 		; addr: CE30402
mov 0x01,r0 ; r0 set to 0x01		; addr: CE30404
lds.l @r15+,pr 		; addr: CE30406
rts 		; addr: CE30408
mov.l @r15+,r14		; addr: CE3040A
;-------------------------------------------------------------------------------

#align4
data_CE3040C:
#data 0x4F222FE6		; addr: CE3040C
#data 0x430BD318		; addr: CE30410
#data 0x20086E43		; addr: CE30414
#data 0x901B8904		; addr: CE30418
#data 0x632002EE		; addr: CE3041C
#data 0x8B032338		; addr: CE30420

#align4
data_CE30424:
#data 0xE0004F26		; addr: CE30424
#data 0x6EF6000B		; addr: CE30428
;-------------------------------------------------------------------------------

#align4
data_CE3042C:
#data 0xE30C900E		; addr: CE3042C
#data 0x0E34E51D		; addr: CE30430
#data 0xD308E000		; addr: CE30434
#data 0x430B80E5		; addr: CE30438
#data 0xE00064E3		; addr: CE3043C
#data 0x80E680E7		; addr: CE30440
#data 0x4F26E001		; addr: CE30444
#data 0x6EF6000B		; addr: CE30448
;-------------------------------------------------------------------------------

data_CE3044C:
#data 0x01E9		; addr: CE3044C

data_CE3044E:
#data 0x0394		; addr: CE3044E

data_CE30450:
#data 0x038C		; addr: CE30450

data_CE30452:
#data 0x039C		; addr: CE30452
#data 0x0000040C		; addr: CE30454

#align4
ptr_CE30458_to_fn_extern_8C0530D8:
#data fn_extern_8C0530D8		; addr: CE30458

ptr_CE3045C_to_data_CE33E7A:
#data data_CE33E7A		; addr: CE3045C

ptr_CE30460_to_fn_extern_8C055066:
#data fn_extern_8C055066		; addr: CE30460

ptr_CE30464_to_data_CE33E3C:
#data data_CE33E3C		; addr: CE30464

ptr_CE30468_to_fn_extern_8C054E58:
#data fn_extern_8C054E58		; addr: CE30468

ptr_CE3046C_to_fn_extern_8C055C3A:
#data fn_extern_8C055C3A		; addr: CE3046C

ptr_CE30470_to_data_CE33E4C:
#data data_CE33E4C		; addr: CE30470
#data extern_8C054D1C		; addr: CE30474


l_code_CE30478:
mov.l r14,@-r15		; addr: CE30478
mov r4,r14		; addr: CE3047A
sts.l pr,@-r15		; addr: CE3047C
mov.l @(ptr_CE30590_to_fn_extern_8C054DA0,pc),r3 ; r3 set to 0x8C054DA0		; addr: CE3047E
jsr @r3		; addr: CE30480
mov 0x0B,r5 ; r5 set to 0x0B		; addr: CE30482
extu.b r0,r0		; addr: CE30484
tst r0,r0		; addr: CE30486
bf l_code_CE30492		; addr: CE30488
lds.l @r15+,pr 		; addr: CE3048A
mov 0x00,r0 ; r0 set to 0x00		; addr: CE3048C
rts 		; addr: CE3048E
mov.l @r15+,r14		; addr: CE30490
;-------------------------------------------------------------------------------

l_code_CE30492:
mov.w @(data_CE3057C,pc),r0 ; r0 set to 0x1E9		; addr: CE30492
mov 0x0B,r3 ; r3 set to 0x0B		; addr: CE30494
mov 0x15,r5 ; r5 set to 0x15		; addr: CE30496
mov.b r3,@(r0,r14) 		; addr: CE30498
mov 0x00,r0 ; r0 set to 0x00		; addr: CE3049A
mov.l @(ptr_CE30594_to_fn_extern_8C0530D8,pc),r3 ; r3 set to 0x8C0530D8		; addr: CE3049C
mov.b r0,@(0x05,r14) 		; addr: CE3049E
jsr @r3		; addr: CE304A0
mov r14,r4		; addr: CE304A2
mov 0x00,r0 ; r0 set to 0x00		; addr: CE304A4
mov.b r0,@(0x07,r14) 		; addr: CE304A6
mov.b r0,@(0x06,r14) 		; addr: CE304A8
mov 0x01,r0 ; r0 set to 0x01		; addr: CE304AA
lds.l @r15+,pr 		; addr: CE304AC
rts 		; addr: CE304AE
mov.l @r15+,r14		; addr: CE304B0
;-------------------------------------------------------------------------------

data_CE304B2:
#data 0x4F22		; addr: CE304B2
#data 0xB00F7FFC		; addr: CE304B4
#data 0x20082F42		; addr: CE304B8
#data 0xB0268B03		; addr: CE304BC
#data 0x200864F2		; addr: CE304C0
#data 0x8903		; addr: CE304C4

data_CE304C6:
#data 0x7F04		; addr: CE304C6
#data 0x000B4F26		; addr: CE304C8
#data 0xE001		; addr: CE304CC
;-------------------------------------------------------------------------------

data_CE304CE:
#data 0xE000		; addr: CE304CE
#data 0x4F267F04		; addr: CE304D0
#data 0x0009000B		; addr: CE304D4
;-------------------------------------------------------------------------------

#align4
data_CE304D8:
#data 0x6E432FE6		; addr: CE304D8
#data 0xD52E4F22		; addr: CE304DC
#data 0xD32E964D		; addr: CE304E0
#data 0x36EC430B		; addr: CE304E4
#data 0x2008600C		; addr: CE304E8
#data 0x90478904		; addr: CE304EC
#data 0x632002EE		; addr: CE304F0
#data 0x8B032338		; addr: CE304F4

#align4
data_CE304F8:
#data 0xE0004F26		; addr: CE304F8
#data 0x6EF6000B		; addr: CE304FC
;-------------------------------------------------------------------------------

#align4
data_CE30500:
#data 0xE302903F		; addr: CE30500
#data 0xE0010E34		; addr: CE30504
#data 0x000B4F26		; addr: CE30508
#data 0x6EF6		; addr: CE3050C
;-------------------------------------------------------------------------------

data_CE3050E:
#data 0x2FE6		; addr: CE3050E
#data 0x4F226E43		; addr: CE30510
#data 0x9635D522		; addr: CE30514
#data 0x430BD320		; addr: CE30518
#data 0x600C36EC		; addr: CE3051C
#data 0x89092008		; addr: CE30520
#data 0x03EE902C		; addr: CE30524
#data 0x22286230		; addr: CE30528
#data 0x902A8904		; addr: CE3052C
#data 0x600C00EC		; addr: CE30530
#data 0x8B038802		; addr: CE30534

#align4
data_CE30538:
#data 0xE0004F26		; addr: CE30538
#data 0x6EF6000B		; addr: CE3053C
;-------------------------------------------------------------------------------

#align4
data_CE30540:
#data 0xE201901F		; addr: CE30540
#data 0x60230E24		; addr: CE30544
#data 0x4F260009		; addr: CE30548
#data 0x6EF6000B		; addr: CE3054C
;-------------------------------------------------------------------------------

#align4
data_CE30550:
#data 0x034C901A		; addr: CE30550
#data 0x89022338		; addr: CE30554
#data 0x20088445		; addr: CE30558
#data 0x8902		; addr: CE3055C

data_CE3055E:
#data 0x9014		; addr: CE3055E
#data 0x0424E200		; addr: CE30560

#align4
data_CE30564:
#data 0x0009000B		; addr: CE30564
;-------------------------------------------------------------------------------

f_code_CE30568:
mov.w @(data_CE3058C,pc),r0 ; r0 set to 0x1FF		; addr: CE30568
mov r4,r3		; addr: CE3056A
mov.l r4,@-r15		; addr: CE3056C
mov.b @(r0,r3),r2		; addr: CE3056E
mov.l @(ptr_CE305A4_to_ptr_CE33F0C_to_f_code_CE305A8,pc),r0 ; r0 set to 0xCE33F0C		; addr: CE30570
extu.b r2,r2		; addr: CE30572
shll2 r2		; addr: CE30574
mov.l @(r0,r2),r3		; addr: CE30576
jmp @r3		; addr: CE30578
add 0x04,r15		; addr: CE3057A

data_CE3057C:
#data 0x01E9		; addr: CE3057C
#data 0x0374		; addr: CE3057E
#data 0x0258040C		; addr: CE30580
#data 0x01F9036C		; addr: CE30584
#data 0x02A801A0		; addr: CE30588

data_CE3058C:
#data 0x01FF		; addr: CE3058C
#data 0x0000		; addr: CE3058E

#align4
ptr_CE30590_to_fn_extern_8C054DA0:
#data fn_extern_8C054DA0		; addr: CE30590

ptr_CE30594_to_fn_extern_8C0530D8:
#data fn_extern_8C0530D8		; addr: CE30594

ptr_CE30598_to_data_CE33E0C:
#data data_CE33E0C		; addr: CE30598
#data fn_extern_8C054E58		; addr: CE3059C

#align4
ptr_CE305A0_to_data_CE33E1C:
#data data_CE33E1C		; addr: CE305A0

ptr_CE305A4_to_ptr_CE33F0C_to_f_code_CE305A8:
#data ptr_CE33F0C_to_f_code_CE305A8		; addr: CE305A4


f_code_CE305A8:
mov.l r14,@-r15		; addr: CE305A8
sts.l pr,@-r15		; addr: CE305AA
mov.l @(ptr_CE306A8_to_fn_extern_8C052B4C,pc),r3 ; r3 set to 0x8C052B4C		; addr: CE305AC
jsr @r3		; addr: CE305AE
mov r4,r14		; addr: CE305B0
mov.w @(data_CE30696,pc),r0 ; r0 set to 0x1FE		; addr: CE305B2
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE305B4
extu.b r0,r0		; addr: CE305B6
cmp/eq 0x01,r0 		; addr: CE305B8
bf l_code_CE305D6		; addr: CE305BA
mov.w @(data_CE30698,pc),r0 ; r0 set to 0x1F9		; addr: CE305BC
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE305BE
extu.b r0,r0		; addr: CE305C0
cmp/eq 0x01,r0 		; addr: CE305C2
bf l_code_CE305CE		; addr: CE305C4
lds.l @r15+,pr 		; addr: CE305C6
mov r14,r4		; addr: CE305C8
bra l_code_CE30832		; addr: CE305CA
mov.l @r15+,r14		; addr: CE305CC

l_code_CE305CE:
lds.l @r15+,pr 		; addr: CE305CE
mov r14,r4		; addr: CE305D0
bra l_code_CE3076A		; addr: CE305D2
mov.l @r15+,r14		; addr: CE305D4

l_code_CE305D6:
mov.w @(data_CE30698,pc),r0 ; r0 set to 0x1F9		; addr: CE305D6
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE305D8
extu.b r0,r0		; addr: CE305DA
cmp/eq 0x01,r0 		; addr: CE305DC
bf l_code_CE305E8		; addr: CE305DE
lds.l @r15+,pr 		; addr: CE305E0
mov r14,r4		; addr: CE305E2
bra l_code_CE306C4		; addr: CE305E4
mov.l @r15+,r14		; addr: CE305E6

l_code_CE305E8:
lds.l @r15+,pr 		; addr: CE305E8
mov r14,r4		; addr: CE305EA
bra l_code_CE305F0		; addr: CE305EC
mov.l @r15+,r14		; addr: CE305EE

l_code_CE305F0:
mov.w @(data_CE3069A,pc),r0 ; r0 set to 0x1E8		; addr: CE305F0
mov.l r14,@-r15		; addr: CE305F2
mov r4,r14		; addr: CE305F4
mov.l r13,@-r15		; addr: CE305F6
mov.l r12,@-r15		; addr: CE305F8
mov 0x01,r12 ; r12 set to 0x01		; addr: CE305FA
sts.l pr,@-r15		; addr: CE305FC
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE305FE
extu.b r0,r0		; addr: CE30600
cmp/eq 0x00,r0 		; addr: CE30602
bt/s l_code_CE30614		; addr: CE30604
mov 0x00,r13 ; r13 set to 0x00		; addr: CE30606
cmp/eq 0x01,r0 		; addr: CE30608
bt data_CE30634		; addr: CE3060A
cmp/eq 0x02,r0 		; addr: CE3060C
bt data_CE30650		; addr: CE3060E
bra l_code_CE30664		; addr: CE30610
nop 		; addr: CE30612

l_code_CE30614:
mov.w @(data_CE3069C,pc),r0 ; r0 set to 0x158		; addr: CE30614
mov 0x14,r5 ; r5 set to 0x14		; addr: CE30616
mov.l @(ptr_CE306AC_to_fn_extern_8C04223A,pc),r3 ; r3 set to 0x8C04223A		; addr: CE30618
mov.b r13,@(r0,r14) 		; addr: CE3061A
add 0x49,r0 ; r0 set to 0x1A1		; addr: CE3061C
mov.b r13,@(r0,r14) 		; addr: CE3061E
jsr @r3		; addr: CE30620
mov r14,r4		; addr: CE30622
mov.w @(data_CE3069E,pc),r0 ; r0 set to 0x3F4		; addr: CE30624
mov.l @(ptr_CE306B0_to_data_CE33DC4,pc),r2 ; r2 set to 0xCE33DC4		; addr: CE30626
mov.l r2,@(r0,r14) 		; addr: CE30628
mov.w @(data_CE306A0,pc),r0 ; r0 set to 0x1A7		; addr: CE3062A
mov.b r13,@(r0,r14) 		; addr: CE3062C
mov.w @(data_CE306A2,pc),r0 ; r0 set to 0x2A2		; addr: CE3062E
bra l_code_CE3064C		; addr: CE30630
nop 		; addr: CE30632

#align4
data_CE30634:
#data 0xE5159032		; addr: CE30634
#data 0x0EC4D31C		; addr: CE30638
#data 0x0EC47049		; addr: CE3063C
#data 0x64E3430B		; addr: CE30640
#data 0xD21B902B		; addr: CE30644
#data 0x90290E26		; addr: CE30648


l_code_CE3064C:
bra l_code_CE30664		; addr: CE3064C
mov.b r12,@(r0,r14) 		; addr: CE3064E

#align4
data_CE30650:
#data 0xE4029024		; addr: CE30650
#data 0x0E44D318		; addr: CE30654
#data 0x0E447049		; addr: CE30658
#data 0x0E36901F		; addr: CE3065C
#data 0x0E44901E		; addr: CE30660


l_code_CE30664:
mov.w @(data_CE306A4,pc),r0 ; r0 set to 0x1AC		; addr: CE30664
mov 0x07,r5 ; r5 set to 0x07		; addr: CE30666
mov.l @(ptr_CE306BC_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0		; addr: CE30668
mov r14,r4		; addr: CE3066A
mov.w r13,@(r0,r14) 		; addr: CE3066C
add 0xF2,r0 ; r0 set to 0x19E		; addr: CE3066E
mov.b r13,@(r0,r14) 		; addr: CE30670
add 0x26,r0 ; r0 set to 0x1C4		; addr: CE30672
mov.l r13,@(r0,r14) 		; addr: CE30674
mov.b @(0x02,r14),r0 		; addr: CE30676
mov.l @r3,r2		; addr: CE30678
extu.b r0,r0 ; r0 set to 0xC4		; addr: CE3067A
shll r0 ; r0 set to 0x188		; addr: CE3067C
add 0x7C,r2		; addr: CE3067E
mov.w @(r0,r2),r1		; addr: CE30680
add 0x01,r1		; addr: CE30682
mov.w r1,@(r0,r2) 		; addr: CE30684
lds.l @r15+,pr 		; addr: CE30686
mov.w @(data_CE3069C,pc),r0 ; r0 set to 0x158		; addr: CE30688
mov.l @(ptr_CE306C0_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE3068A
mov.l @r15+,r12		; addr: CE3068C
mov.b @(r0,r14),r6		; addr: CE3068E
mov.l @r15+,r13		; addr: CE30690
jmp @r2		; addr: CE30692
mov.l @r15+,r14		; addr: CE30694

data_CE30696:
#data 0x01FE		; addr: CE30696

data_CE30698:
#data 0x01F9		; addr: CE30698

data_CE3069A:
#data 0x01E8		; addr: CE3069A

data_CE3069C:
#data 0x0158		; addr: CE3069C

data_CE3069E:
#data 0x03F4		; addr: CE3069E

data_CE306A0:
#data 0x01A7		; addr: CE306A0

data_CE306A2:
#data 0x02A2		; addr: CE306A2

data_CE306A4:
#data 0x01AC		; addr: CE306A4
#data 0x0000		; addr: CE306A6

#align4
ptr_CE306A8_to_fn_extern_8C052B4C:
#data fn_extern_8C052B4C		; addr: CE306A8

ptr_CE306AC_to_fn_extern_8C04223A:
#data fn_extern_8C04223A		; addr: CE306AC

ptr_CE306B0_to_data_CE33DC4:
#data data_CE33DC4		; addr: CE306B0

ptr_CE306B4_to_data_CE33DC8:
#data data_CE33DC8		; addr: CE306B4

ptr_CE306B8_to_data_CE33DCC:
#data data_CE33DCC		; addr: CE306B8

ptr_CE306BC_to_extern_8C2896B0:
#data extern_8C2896B0		; addr: CE306BC

ptr_CE306C0_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE306C0


l_code_CE306C4:
mov.w @(data_CE307B8,pc),r0 ; r0 set to 0x1E8		; addr: CE306C4
mov.l r14,@-r15		; addr: CE306C6
mov r4,r14		; addr: CE306C8
mov.l r13,@-r15		; addr: CE306CA
sts.l pr,@-r15		; addr: CE306CC
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE306CE
extu.b r0,r0		; addr: CE306D0
cmp/eq 0x00,r0 		; addr: CE306D2
bt/s l_code_CE306E4		; addr: CE306D4
mov 0x00,r13 ; r13 set to 0x00		; addr: CE306D6
cmp/eq 0x01,r0 		; addr: CE306D8
bt l_code_CE30702		; addr: CE306DA
cmp/eq 0x02,r0 		; addr: CE306DC
bt data_CE30724		; addr: CE306DE
bra l_code_CE3073A		; addr: CE306E0
nop 		; addr: CE306E2

l_code_CE306E4:
mov.w @(data_CE307BA,pc),r0 ; r0 set to 0x158		; addr: CE306E4
mov 0x06,r3 ; r3 set to 0x06		; addr: CE306E6
mov 0x14,r5 ; r5 set to 0x14		; addr: CE306E8
mov.b r13,@(r0,r14) 		; addr: CE306EA
add 0x49,r0 ; r0 set to 0x1A1		; addr: CE306EC
mov.b r3,@(r0,r14) 		; addr: CE306EE
mov.l @(ptr_CE307C4_to_fn_extern_8C04223A,pc),r3 ; r3 set to 0x8C04223A		; addr: CE306F0
jsr @r3		; addr: CE306F2
mov r14,r4		; addr: CE306F4
mov.w @(data_CE307BC,pc),r0 ; r0 set to 0x3F4		; addr: CE306F6
mov.l @(ptr_CE307C8_to_data_CE33DC4,pc),r2 ; r2 set to 0xCE33DC4		; addr: CE306F8
mov.l r2,@(r0,r14) 		; addr: CE306FA
mov.w @(data_CE307BE,pc),r0 ; r0 set to 0x1A7		; addr: CE306FC
bra l_code_CE3073A		; addr: CE306FE
mov.b r13,@(r0,r14) 		; addr: CE30700

l_code_CE30702:
mov.w @(data_CE307BA,pc),r0 ; r0 set to 0x158		; addr: CE30702
mov 0x01,r2 ; r2 set to 0x01		; addr: CE30704
mov 0x07,r3 ; r3 set to 0x07		; addr: CE30706
mov.b r2,@(r0,r14) 		; addr: CE30708
add 0x49,r0 ; r0 set to 0x1A1		; addr: CE3070A
mov.b r3,@(r0,r14) 		; addr: CE3070C
mov 0x15,r5 ; r5 set to 0x15		; addr: CE3070E
mov.l @(ptr_CE307C4_to_fn_extern_8C04223A,pc),r3 ; r3 set to 0x8C04223A		; addr: CE30710
jsr @r3		; addr: CE30712
mov r14,r4		; addr: CE30714
mov.w @(data_CE307BC,pc),r0 ; r0 set to 0x3F4		; addr: CE30716
mov 0x01,r3 ; r3 set to 0x01		; addr: CE30718
mov.l @(ptr_CE307CC_to_data_CE33DC8,pc),r2 ; r2 set to 0xCE33DC8		; addr: CE3071A
mov.l r2,@(r0,r14) 		; addr: CE3071C
mov.w @(data_CE307BE,pc),r0 ; r0 set to 0x1A7		; addr: CE3071E
bra l_code_CE3073A		; addr: CE30720
mov.b r3,@(r0,r14) 		; addr: CE30722

#align4
data_CE30724:
#data 0xE4029049		; addr: CE30724
#data 0xD229E308		; addr: CE30728
#data 0x70490E44		; addr: CE3072C
#data 0x90430E34		; addr: CE30730
#data 0x90420E26		; addr: CE30734
#data 0x0E44		; addr: CE30738


l_code_CE3073A:
mov.w @(data_CE307C0,pc),r0 ; r0 set to 0x1AC		; addr: CE3073A
mov 0x09,r5 ; r5 set to 0x09		; addr: CE3073C
mov.l @(ptr_CE307D4_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0		; addr: CE3073E
mov r14,r4		; addr: CE30740
mov.w r13,@(r0,r14) 		; addr: CE30742
add 0xF2,r0 ; r0 set to 0x19E		; addr: CE30744
mov.b r13,@(r0,r14) 		; addr: CE30746
add 0x26,r0 ; r0 set to 0x1C4		; addr: CE30748
mov.l r13,@(r0,r14) 		; addr: CE3074A
mov.b @(0x02,r14),r0 		; addr: CE3074C
mov.l @r3,r2		; addr: CE3074E
extu.b r0,r0 ; r0 set to 0xC4		; addr: CE30750
shll r0 ; r0 set to 0x188		; addr: CE30752
add 0x7C,r2		; addr: CE30754
mov.w @(r0,r2),r1		; addr: CE30756
add 0x01,r1		; addr: CE30758
mov.w r1,@(r0,r2) 		; addr: CE3075A
lds.l @r15+,pr 		; addr: CE3075C
mov.w @(data_CE307BA,pc),r0 ; r0 set to 0x158		; addr: CE3075E
mov.l @(ptr_CE307D8_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE30760
mov.l @r15+,r13		; addr: CE30762
mov.b @(r0,r14),r6		; addr: CE30764
jmp @r2		; addr: CE30766
mov.l @r15+,r14		; addr: CE30768

l_code_CE3076A:
mov.w @(data_CE307B8,pc),r0 ; r0 set to 0x1E8		; addr: CE3076A
mov.l r14,@-r15		; addr: CE3076C
mov r4,r14		; addr: CE3076E
mov.l r13,@-r15		; addr: CE30770
sts.l pr,@-r15		; addr: CE30772
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE30774
extu.b r0,r0		; addr: CE30776
cmp/eq 0x00,r0 		; addr: CE30778
bt/s l_code_CE3078A		; addr: CE3077A
mov 0x00,r13 ; r13 set to 0x00		; addr: CE3077C
cmp/eq 0x01,r0 		; addr: CE3077E
bt l_code_CE307A2		; addr: CE30780
cmp/eq 0x02,r0 		; addr: CE30782
bt data_CE307E4		; addr: CE30784
bra l_code_CE307FC		; addr: CE30786
nop 		; addr: CE30788

l_code_CE3078A:
mov.w @(data_CE307BA,pc),r0 ; r0 set to 0x158		; addr: CE3078A
mov 0x03,r3 ; r3 set to 0x03		; addr: CE3078C
mov 0x14,r5 ; r5 set to 0x14		; addr: CE3078E
mov.b r13,@(r0,r14) 		; addr: CE30790
add 0x49,r0 ; r0 set to 0x1A1		; addr: CE30792
mov.b r3,@(r0,r14) 		; addr: CE30794
mov.w @(data_CE307BC,pc),r0 ; r0 set to 0x3F4		; addr: CE30796
mov.l @(ptr_CE307DC_to_data_CE33DD0,pc),r3 ; r3 set to 0xCE33DD0		; addr: CE30798
mov.l r3,@(r0,r14) 		; addr: CE3079A
mov.w @(data_CE307BE,pc),r0 ; r0 set to 0x1A7		; addr: CE3079C
bra l_code_CE307FC		; addr: CE3079E
mov.b r13,@(r0,r14) 		; addr: CE307A0

l_code_CE307A2:
mov.w @(data_CE307BA,pc),r0 ; r0 set to 0x158		; addr: CE307A2
mov 0x01,r4 ; r4 set to 0x01		; addr: CE307A4
mov 0x04,r3 ; r3 set to 0x04		; addr: CE307A6
mov.b r4,@(r0,r14) 		; addr: CE307A8
add 0x49,r0 ; r0 set to 0x1A1		; addr: CE307AA
mov.b r3,@(r0,r14) 		; addr: CE307AC
mov.w @(data_CE307BC,pc),r0 ; r0 set to 0x3F4		; addr: CE307AE
mov.l @(ptr_CE307E0_to_data_CE33DD4,pc),r3 ; r3 set to 0xCE33DD4		; addr: CE307B0
mov.l r3,@(r0,r14) 		; addr: CE307B2
bra data_CE307F8		; addr: CE307B4
mov 0x15,r5		; addr: CE307B6

data_CE307B8:
#data 0x01E8		; addr: CE307B8

data_CE307BA:
#data 0x0158		; addr: CE307BA

data_CE307BC:
#data 0x03F4		; addr: CE307BC

data_CE307BE:
#data 0x01A7		; addr: CE307BE

data_CE307C0:
#data 0x01AC		; addr: CE307C0
#data 0x0000		; addr: CE307C2

#align4
ptr_CE307C4_to_fn_extern_8C04223A:
#data fn_extern_8C04223A		; addr: CE307C4

ptr_CE307C8_to_data_CE33DC4:
#data data_CE33DC4		; addr: CE307C8

ptr_CE307CC_to_data_CE33DC8:
#data data_CE33DC8		; addr: CE307CC

ptr_CE307D0_to_data_CE33DCC:
#data data_CE33DCC		; addr: CE307D0

ptr_CE307D4_to_extern_8C2896B0:
#data extern_8C2896B0		; addr: CE307D4

ptr_CE307D8_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE307D8

ptr_CE307DC_to_data_CE33DD0:
#data data_CE33DD0		; addr: CE307DC

ptr_CE307E0_to_data_CE33DD4:
#data data_CE33DD4		; addr: CE307E0

data_CE307E4:
#data 0xE4029087		; addr: CE307E4
#data 0x0E44E305		; addr: CE307E8
#data 0x0E347049		; addr: CE307EC
#data 0xD344E516		; addr: CE307F0
#data 0x0E369080		; addr: CE307F4

#align4
data_CE307F8:
#data 0x0E44907F		; addr: CE307F8


l_code_CE307FC:
mov.l @(ptr_CE30908_to_fn_extern_8C04223A,pc),r2 ; r2 set to 0x8C04223A		; addr: CE307FC
jsr @r2		; addr: CE307FE
mov r14,r4		; addr: CE30800
mov.w @(data_CE308FC,pc),r0 ; r0 set to 0x1AC		; addr: CE30802
mov 0x08,r5 ; r5 set to 0x08		; addr: CE30804
mov.l @(ptr_CE3090C_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0		; addr: CE30806
mov r14,r4		; addr: CE30808
mov.w r13,@(r0,r14) 		; addr: CE3080A
add 0xF2,r0 ; r0 set to 0x19E		; addr: CE3080C
mov.b r13,@(r0,r14) 		; addr: CE3080E
add 0x26,r0 ; r0 set to 0x1C4		; addr: CE30810
mov.l r13,@(r0,r14) 		; addr: CE30812
mov.b @(0x02,r14),r0 		; addr: CE30814
mov.l @r3,r2 ; r2 ??		; addr: CE30816
extu.b r0,r0 ; r0 set to 0xC4		; addr: CE30818
shll r0 ; r0 set to 0x188		; addr: CE3081A
add 0x7C,r2		; addr: CE3081C
mov.w @(r0,r2),r1		; addr: CE3081E
add 0x01,r1		; addr: CE30820
mov.w r1,@(r0,r2) 		; addr: CE30822
lds.l @r15+,pr 		; addr: CE30824
mov.w @(data_CE308F6,pc),r0 ; r0 set to 0x158		; addr: CE30826
mov.l @(ptr_CE30910_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE30828
mov.l @r15+,r13		; addr: CE3082A
mov.b @(r0,r14),r6		; addr: CE3082C
jmp @r2		; addr: CE3082E
mov.l @r15+,r14		; addr: CE30830

l_code_CE30832:
mov.w @(data_CE308FE,pc),r0 ; r0 set to 0x1E8		; addr: CE30832
mov.l r14,@-r15		; addr: CE30834
mov r4,r14		; addr: CE30836
mov.l r13,@-r15		; addr: CE30838
sts.l pr,@-r15		; addr: CE3083A
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE3083C
extu.b r0,r0		; addr: CE3083E
cmp/eq 0x00,r0 		; addr: CE30840
bt/s l_code_CE30852		; addr: CE30842
mov 0x00,r13 ; r13 set to 0x00		; addr: CE30844
cmp/eq 0x01,r0 		; addr: CE30846
bt l_code_CE3086A		; addr: CE30848
cmp/eq 0x02,r0 		; addr: CE3084A
bt data_CE30880		; addr: CE3084C
bra l_code_CE30898		; addr: CE3084E
nop 		; addr: CE30850

l_code_CE30852:
mov.w @(data_CE308F6,pc),r0 ; r0 set to 0x158		; addr: CE30852
mov 0x09,r3 ; r3 set to 0x09		; addr: CE30854
mov 0x14,r5 ; r5 set to 0x14		; addr: CE30856
mov.b r13,@(r0,r14) 		; addr: CE30858
add 0x49,r0 ; r0 set to 0x1A1		; addr: CE3085A
mov.b r3,@(r0,r14) 		; addr: CE3085C
mov.w @(data_CE308F8,pc),r0 ; r0 set to 0x3F4		; addr: CE3085E
mov.l @(ptr_CE30914_to_data_CE33DD0,pc),r3 ; r3 set to 0xCE33DD0		; addr: CE30860
mov.l r3,@(r0,r14) 		; addr: CE30862
mov.w @(data_CE308FA,pc),r0 ; r0 set to 0x1A7		; addr: CE30864
bra l_code_CE30898		; addr: CE30866
mov.b r13,@(r0,r14) 		; addr: CE30868

l_code_CE3086A:
mov.w @(data_CE308F6,pc),r0 ; r0 set to 0x158		; addr: CE3086A
mov 0x01,r4 ; r4 set to 0x01		; addr: CE3086C
mov 0x0A,r3 ; r3 set to 0x0A		; addr: CE3086E
mov.b r4,@(r0,r14) 		; addr: CE30870
add 0x49,r0 ; r0 set to 0x1A1		; addr: CE30872
mov.b r3,@(r0,r14) 		; addr: CE30874
mov.w @(data_CE308F8,pc),r0 ; r0 set to 0x3F4		; addr: CE30876
mov.l @(ptr_CE30918_to_data_CE33DD4,pc),r3 ; r3 set to 0xCE33DD4		; addr: CE30878
mov.l r3,@(r0,r14) 		; addr: CE3087A
bra data_CE30894		; addr: CE3087C
mov 0x15,r5		; addr: CE3087E

#align4
data_CE30880:
#data 0xE4029039		; addr: CE30880
#data 0x0E44E30B		; addr: CE30884
#data 0x0E347049		; addr: CE30888
#data 0xD31DE516		; addr: CE3088C
#data 0x0E369032		; addr: CE30890

#align4
data_CE30894:
#data 0x0E449031		; addr: CE30894


l_code_CE30898:
mov.l @(ptr_CE30908_to_fn_extern_8C04223A,pc),r2 ; r2 set to 0x8C04223A		; addr: CE30898
jsr @r2		; addr: CE3089A
mov r14,r4		; addr: CE3089C
mov.w @(data_CE308FC,pc),r0 ; r0 set to 0x1AC		; addr: CE3089E
mov 0x0A,r5 ; r5 set to 0x0A		; addr: CE308A0
mov.l @(ptr_CE3090C_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0		; addr: CE308A2
mov r14,r4		; addr: CE308A4
mov.w r13,@(r0,r14) 		; addr: CE308A6
add 0xF2,r0 ; r0 set to 0x19E		; addr: CE308A8
mov.b r13,@(r0,r14) 		; addr: CE308AA
add 0x26,r0 ; r0 set to 0x1C4		; addr: CE308AC
mov.l r13,@(r0,r14) 		; addr: CE308AE
mov.b @(0x02,r14),r0 		; addr: CE308B0
mov.l @r3,r2 ; r2 ??		; addr: CE308B2
extu.b r0,r0 ; r0 set to 0xC4		; addr: CE308B4
shll r0 ; r0 set to 0x188		; addr: CE308B6
add 0x7C,r2		; addr: CE308B8
mov.w @(r0,r2),r1		; addr: CE308BA
add 0x01,r1		; addr: CE308BC
mov.w r1,@(r0,r2) 		; addr: CE308BE
lds.l @r15+,pr 		; addr: CE308C0
mov.w @(data_CE308F6,pc),r0 ; r0 set to 0x158		; addr: CE308C2
mov.l @(ptr_CE30910_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE308C4
mov.l @r15+,r13		; addr: CE308C6
mov.b @(r0,r14),r6		; addr: CE308C8
jmp @r2		; addr: CE308CA
mov.l @r15+,r14		; addr: CE308CC

data_CE308CE:
#data 0x9017		; addr: CE308CE
#data 0x2338034C		; addr: CE308D0
#data 0x90148B03		; addr: CE308D4
#data 0xC80F004C		; addr: CE308D8
#data 0x8B07		; addr: CE308DC

data_CE308DE:
#data 0x900F		; addr: CE308DE
#data 0x2228024C		; addr: CE308E0
#data 0x900C8905		; addr: CE308E4
#data 0xC8F0004C		; addr: CE308E8
#data 0x8901		; addr: CE308EC

data_CE308EE:
#data 0xA015		; addr: CE308EE
#data 0x0009		; addr: CE308F0

data_CE308F2:
#data 0x000B		; addr: CE308F2
#data 0x0009		; addr: CE308F4
;-------------------------------------------------------------------------------

data_CE308F6:
#data 0x0158		; addr: CE308F6

data_CE308F8:
#data 0x03F4		; addr: CE308F8

data_CE308FA:
#data 0x01A7		; addr: CE308FA

data_CE308FC:
#data 0x01AC		; addr: CE308FC

data_CE308FE:
#data 0x01E8		; addr: CE308FE
#data 0x01D601FE		; addr: CE30900

#align4
ptr_CE30904_to_data_CE33DD8:
#data data_CE33DD8		; addr: CE30904

ptr_CE30908_to_fn_extern_8C04223A:
#data fn_extern_8C04223A		; addr: CE30908

ptr_CE3090C_to_extern_8C2896B0:
#data extern_8C2896B0		; addr: CE3090C

ptr_CE30910_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE30910

ptr_CE30914_to_data_CE33DD0:
#data data_CE33DD0		; addr: CE30914

ptr_CE30918_to_data_CE33DD4:
#data data_CE33DD4		; addr: CE30918


f_code_CE3091C:
mov.w @(data_CE309FA,pc),r0 ; r0 set to 0x1FE		; addr: CE3091C
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???		; addr: CE3091E
extu.b r0,r0		; addr: CE30920
cmp/eq 0x01,r0 		; addr: CE30922
bf l_code_CE3092A		; addr: CE30924
bra l_code_CE30A70		; addr: CE30926
nop 		; addr: CE30928

l_code_CE3092A:
bra l_code_CE3092E		; addr: CE3092A
nop 		; addr: CE3092C

l_code_CE3092E:
mov.w @(data_CE309FE,pc),r0 ; r0 set to 0x1E8		; addr: CE3092E
mov.l r14,@-r15		; addr: CE30930
mov r4,r14		; addr: CE30932
mov.l r13,@-r15		; addr: CE30934
mov.l r12,@-r15		; addr: CE30936
sts.l pr,@-r15		; addr: CE30938
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE3093A
mov.w @(data_CE309FC,pc),r4 ; r4 set to 0x1000		; addr: CE3093C
extu.b r0,r0		; addr: CE3093E
mov.l @(ptr_CE30A08_to_fn_extern_8C04223A,pc),r12 ; r12 set to 0x8C04223A		; addr: CE30940
cmp/eq 0x00,r0 		; addr: CE30942
bt/s l_code_CE30954		; addr: CE30944
mov 0x00,r13 ; r13 set to 0x00		; addr: CE30946
cmp/eq 0x01,r0 		; addr: CE30948
bt data_CE30980		; addr: CE3094A
cmp/eq 0x02,r0 		; addr: CE3094C
bt data_CE309C2		; addr: CE3094E
bra data_CE30A2C		; addr: CE30950
nop 		; addr: CE30952

l_code_CE30954:
mov.w @(data_CE30A00,pc),r0 ; r0 set to 0x158		; addr: CE30954
mov 0x0C,r3 ; r3 set to 0x0C		; addr: CE30956
mov 0x14,r5 ; r5 set to 0x14		; addr: CE30958
mov.b r13,@(r0,r14) 		; addr: CE3095A
add 0x49,r0 ; r0 set to 0x1A1		; addr: CE3095C
mov.b r3,@(r0,r14) 		; addr: CE3095E
jsr @r12		; addr: CE30960
mov r14,r4		; addr: CE30962
mov.w @(data_CE30A02,pc),r0 ; r0 set to 0x1FC		; addr: CE30964
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???		; addr: CE30966
tst r3,r3		; addr: CE30968
bf l_code_CE30974		; addr: CE3096A
mov.w @(data_CE30A04,pc),r0 ; r0 set to 0x3F4		; addr: CE3096C
mov.l @(ptr_CE30A0C_to_data_CE33DDC,pc),r3 ; r3 set to 0xCE33DDC		; addr: CE3096E
bra l_code_CE3097A		; addr: CE30970
mov.l r3,@(r0,r14) 		; addr: CE30972

l_code_CE30974:
mov.w @(data_CE30A04,pc),r0 ; r0 set to 0x3F4		; addr: CE30974
mov.l @(ptr_CE30A10_to_data_CE33DF4,pc),r1 ; r1 set to 0xCE33DF4		; addr: CE30976
mov.l r1,@(r0,r14) 		; addr: CE30978

l_code_CE3097A:
mov.w @(data_CE30A06,pc),r0 ; r0 set to 0x1A7, r0 set to 0x1A7		; addr: CE3097A
bra data_CE30A2C		; addr: CE3097C
mov.b r13,@(r0,r14) 		; addr: CE3097E

#align4
data_CE30980:
#data 0xE201903E		; addr: CE30980
#data 0x0E24E30D		; addr: CE30984
#data 0x0E347049		; addr: CE30988
#data 0x02ED7059		; addr: CE3098C
#data 0x2248622D		; addr: CE30990
#data 0xE5158D06		; addr: CE30994
#data 0xE1039032		; addr: CE30998
#data 0x0E14E312		; addr: CE3099C
#data 0x0E347049		; addr: CE309A0

#align4
data_CE309A4:
#data 0x64E34C0B		; addr: CE309A4
#data 0x03EC902B		; addr: CE309A8
#data 0x8B032338		; addr: CE309AC
#data 0xD3189028		; addr: CE309B0
#data 0x0E36A003		; addr: CE309B4

#align4
data_CE309B8:
#data 0xD1179024		; addr: CE309B8
#data 0x0E16		; addr: CE309BC

data_CE309BE:
#data 0xA033		; addr: CE309BE
#data 0xE301		; addr: CE309C0

data_CE309C2:
#data 0x901D		; addr: CE309C2
#data 0xE30EE102		; addr: CE309C4
#data 0x70490E14		; addr: CE309C8
#data 0x70590E34		; addr: CE309CC
#data 0x622D02ED		; addr: CE309D0
#data extern_8D062248		; addr: CE309D4
#data 0x9011E516		; addr: CE309D8
#data 0xE313E104		; addr: CE309DC
#data 0x70490E14		; addr: CE309E0
#data 0x0E34		; addr: CE309E4

data_CE309E6:
#data 0x4C0B		; addr: CE309E6
#data 0x900A64E3		; addr: CE309E8
#data 0x233803EC		; addr: CE309EC
#data 0x90078B16		; addr: CE309F0
#data 0xA016D309		; addr: CE309F4
#data 0x0E36		; addr: CE309F8

data_CE309FA:
#data 0x01FE		; addr: CE309FA

data_CE309FC:
#data 0x1000		; addr: CE309FC

data_CE309FE:
#data 0x01E8		; addr: CE309FE

data_CE30A00:
#data 0x0158		; addr: CE30A00

data_CE30A02:
#data 0x01FC		; addr: CE30A02

data_CE30A04:
#data 0x03F4		; addr: CE30A04

data_CE30A06:
#data 0x01A7		; addr: CE30A06

#align4
ptr_CE30A08_to_fn_extern_8C04223A:
#data fn_extern_8C04223A		; addr: CE30A08

ptr_CE30A0C_to_data_CE33DDC:
#data data_CE33DDC		; addr: CE30A0C

ptr_CE30A10_to_data_CE33DF4:
#data data_CE33DF4		; addr: CE30A10

ptr_CE30A14_to_data_CE33DE0:
#data data_CE33DE0		; addr: CE30A14

ptr_CE30A18_to_data_CE33DF8:
#data data_CE33DF8		; addr: CE30A18

ptr_CE30A1C_to_data_CE33DE4:
#data data_CE33DE4		; addr: CE30A1C

data_CE30A20:
#data 0xD142907B		; addr: CE30A20
#data 0x0E16		; addr: CE30A24

data_CE30A26:
#data 0xE302		; addr: CE30A26

#align4
data_CE30A28:
#data 0x0E349078		; addr: CE30A28

#align4
data_CE30A2C:
#data 0xE50B9077		; addr: CE30A2C
#data 0x0ED5D33F		; addr: CE30A30
#data 0x0ED470F2		; addr: CE30A34
#data 0x0ED67026		; addr: CE30A38
#data 0x623284E2		; addr: CE30A3C
#data 0x4000600C		; addr: CE30A40
#data 0x012D727C		; addr: CE30A44
#data 0x02157101		; addr: CE30A48
#data 0xD2399068		; addr: CE30A4C
#data 0x420B06EC		; addr: CE30A50
#data 0x906464E3		; addr: CE30A54
#data 0xC80F00EC		; addr: CE30A58
#data 0x90608903		; addr: CE30A5C
#data 0x72FF02EC		; addr: CE30A60
#data 0x0E24		; addr: CE30A64

data_CE30A66:
#data 0x4F26		; addr: CE30A66
#data 0x6DF66CF6		; addr: CE30A68
#data 0x6EF6000B		; addr: CE30A6C
;-------------------------------------------------------------------------------

l_code_CE30A70:
mov.w @(data_CE30B26,pc),r0 ; r0 set to 0x1E8		; addr: CE30A70
mov.l r14,@-r15		; addr: CE30A72
mov r4,r14		; addr: CE30A74
mov.l r13,@-r15		; addr: CE30A76
mov.l r12,@-r15		; addr: CE30A78
sts.l pr,@-r15		; addr: CE30A7A
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE30A7C
mov.l @(ptr_CE30B38_to_fn_extern_8C04223A,pc),r12 ; r12 set to 0x8C04223A		; addr: CE30A7E
extu.b r0,r0		; addr: CE30A80
mov.w @(data_CE30B24,pc),r4 ; r4 set to 0x1000		; addr: CE30A82
cmp/eq 0x00,r0 		; addr: CE30A84
bt/s data_CE30A96		; addr: CE30A86
mov 0x00,r13 ; r13 set to 0x00		; addr: CE30A88
cmp/eq 0x01,r0 		; addr: CE30A8A
bt data_CE30AD8		; addr: CE30A8C
cmp/eq 0x02,r0 		; addr: CE30A8E
bt data_CE30B4C		; addr: CE30A90
bra data_CE30B90		; addr: CE30A92
nop 		; addr: CE30A94

data_CE30A96:
#data 0x9043		; addr: CE30A96
#data 0x0ED4E30F		; addr: CE30A98
#data 0x0E347049		; addr: CE30A9C
#data 0x02ED7059		; addr: CE30AA0
#data 0x2248622D		; addr: CE30AA4
#data 0xE5148D06		; addr: CE30AA8
#data 0xE1039038		; addr: CE30AAC
#data 0x0E14E314		; addr: CE30AB0
#data 0x0E347049		; addr: CE30AB4

#align4
data_CE30AB8:
#data 0x64E34C0B		; addr: CE30AB8
#data 0x03EC9034		; addr: CE30ABC
#data 0x8B032338		; addr: CE30AC0
#data 0xD31D9029		; addr: CE30AC4
#data 0x0E36A003		; addr: CE30AC8

#align4
data_CE30ACC:
#data 0xD11C9025		; addr: CE30ACC
#data 0x0E16		; addr: CE30AD0

data_CE30AD2:
#data 0x9023		; addr: CE30AD2
#data 0x0ED4A05C		; addr: CE30AD4

#align4
data_CE30AD8:
#data 0xE2019022		; addr: CE30AD8
#data 0x0E24E310		; addr: CE30ADC
#data 0x0E347049		; addr: CE30AE0
#data 0x02ED7059		; addr: CE30AE4
#data 0x2248622D		; addr: CE30AE8
#data 0xE5158D06		; addr: CE30AEC
#data 0xE1049016		; addr: CE30AF0
#data 0x0E14E315		; addr: CE30AF4
#data 0x0E347049		; addr: CE30AF8

#align4
data_CE30AFC:
#data 0x64E34C0B		; addr: CE30AFC
#data 0x03EC9012		; addr: CE30B00
#data 0x8B032338		; addr: CE30B04
#data 0xD30E9007		; addr: CE30B08
#data 0x0E36A003		; addr: CE30B0C

#align4
data_CE30B10:
#data 0xD10D9003		; addr: CE30B10
#data 0x0E16		; addr: CE30B14

data_CE30B16:
#data 0xA039		; addr: CE30B16
#data 0x03F4E301		; addr: CE30B18
#data 0x01AC01A7		; addr: CE30B1C
#data 0x01D60158		; addr: CE30B20

data_CE30B24:
#data 0x1000		; addr: CE30B24

data_CE30B26:
#data 0x01E8		; addr: CE30B26
#data 0x000001FC		; addr: CE30B28

#align4
ptr_CE30B2C_to_data_CE33DFC:
#data data_CE33DFC		; addr: CE30B2C
#data extern_8C2896B0		; addr: CE30B30
#data fn_extern_8C034E8C		; addr: CE30B34

#align4
ptr_CE30B38_to_fn_extern_8C04223A:
#data fn_extern_8C04223A		; addr: CE30B38

ptr_CE30B3C_to_data_CE33DE8:
#data data_CE33DE8		; addr: CE30B3C

ptr_CE30B40_to_data_CE33E00:
#data data_CE33E00		; addr: CE30B40

ptr_CE30B44_to_data_CE33DEC:
#data data_CE33DEC		; addr: CE30B44

ptr_CE30B48_to_data_CE33E04:
#data data_CE33E04		; addr: CE30B48

data_CE30B4C:
#data 0xE1029094		; addr: CE30B4C
#data 0x0E14E311		; addr: CE30B50
#data 0x0E347049		; addr: CE30B54
#data 0x02ED7059		; addr: CE30B58
#data 0x2248622D		; addr: CE30B5C
#data 0xE5168D06		; addr: CE30B60
#data 0xE1059088		; addr: CE30B64
#data 0x0E14E316		; addr: CE30B68
#data 0x0E347049		; addr: CE30B6C

#align4
data_CE30B70:
#data 0x64E34C0B		; addr: CE30B70
#data 0x03EC9081		; addr: CE30B74
#data 0x8B032338		; addr: CE30B78
#data 0xD343907E		; addr: CE30B7C
#data 0x0E36A003		; addr: CE30B80

#align4
data_CE30B84:
#data 0xD142907A		; addr: CE30B84
#data 0x0E16		; addr: CE30B88

data_CE30B8A:
#data 0xE302		; addr: CE30B8A

#align4
data_CE30B8C:
#data 0x0E349077		; addr: CE30B8C

#align4
data_CE30B90:
#data 0xE50C9076		; addr: CE30B90
#data 0x0ED5D33F		; addr: CE30B94
#data 0x0ED470F2		; addr: CE30B98
#data 0x0ED67026		; addr: CE30B9C
#data 0x623284E2		; addr: CE30BA0
#data 0x4000600C		; addr: CE30BA4
#data 0x012D727C		; addr: CE30BA8
#data 0x02157101		; addr: CE30BAC
#data 0xD2399062		; addr: CE30BB0
#data 0x420B06EC		; addr: CE30BB4
#data 0x906264E3		; addr: CE30BB8
#data 0xC8F000EC		; addr: CE30BBC
#data 0x905E8903		; addr: CE30BC0
#data 0x72F002EC		; addr: CE30BC4
#data 0x0E24		; addr: CE30BC8

data_CE30BCA:
#data 0x4F26		; addr: CE30BCA
#data 0x6DF66CF6		; addr: CE30BCC
#data 0x6EF6000B		; addr: CE30BD0
;-------------------------------------------------------------------------------

f_code_CE30BD4:
mov.w @(data_CE30C84,pc),r0 ; r0 set to 0x1FF		; addr: CE30BD4
mov r4,r3		; addr: CE30BD6
mov.l r4,@-r15		; addr: CE30BD8
mov.b @(r0,r3),r2		; addr: CE30BDA
mov.l @(ptr_CE30C9C_to_ptr_CE33F1C_to_f_code_CE30BF6,pc),r0 ; r0 set to 0xCE33F1C		; addr: CE30BDC
extu.b r2,r2		; addr: CE30BDE
shll2 r2		; addr: CE30BE0
mov.l @(r0,r2),r3		; addr: CE30BE2
jmp @r3		; addr: CE30BE4
add 0x04,r15		; addr: CE30BE6

#align4
data_CE30BE8:
#data 0xD32D4F22		; addr: CE30BE8
#data 0x2F46430B		; addr: CE30BEC
#data 0x7F0464F2		; addr: CE30BF0
#data 0x4F26		; addr: CE30BF4


f_code_CE30BF6:
mov.l r14,@-r15		; addr: CE30BF6
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE30BF8
mov r4,r14		; addr: CE30BFA
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE30BFC
mov 0x34,r0 ; r0 set to 0x34		; addr: CE30BFE
mov.l @(ptr_CE30CA4_to_extern_8C052C84,pc),r3 ; r3 set to 0x8C052C84		; addr: CE30C00
sts.l pr,@-r15		; addr: CE30C02
fmov.s @(r0,r14),fr2		; addr: CE30C04
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE30C06
mov 0x68,r1 ; r1 set to 0x68		; addr: CE30C08
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE30C0A
fadd fr3,fr2		; addr: CE30C0C
fmov.s fr2,@(r0,r14) 		; addr: CE30C0E
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE30C10
fmov.s @r1,fr3		; addr: CE30C12
mov 0x60,r1 ; r1 set to 0x60		; addr: CE30C14
fmov.s @(r0,r14),fr2		; addr: CE30C16
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE30C18
fadd fr3,fr2		; addr: CE30C1A
fmov.s fr2,@(r0,r14) 		; addr: CE30C1C
mov 0x38,r0 ; r0 set to 0x38		; addr: CE30C1E
fmov.s @(r0,r14),fr2		; addr: CE30C20
fmov.s @r1,fr3		; addr: CE30C22
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE30C24
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE30C26
fadd fr3,fr2		; addr: CE30C28
fmov.s fr2,@(r0,r14) 		; addr: CE30C2A
mov 0x60,r0 ; r0 set to 0x60		; addr: CE30C2C
fmov.s @(r0,r14),fr2		; addr: CE30C2E
fmov.s @r1,fr3		; addr: CE30C30
fadd fr3,fr2		; addr: CE30C32
fmov.s fr2,@(r0,r14) 		; addr: CE30C34
jsr @r3		; addr: CE30C36
mov r14,r4		; addr: CE30C38
mov.w @(data_CE30C86,pc),r0 ; r0 set to 0x1FE		; addr: CE30C3A
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE30C3C
extu.b r0,r0		; addr: CE30C3E
cmp/eq 0x01,r0 		; addr: CE30C40
bf l_code_CE30C5E		; addr: CE30C42
mov.w @(data_CE30C88,pc),r0 ; r0 set to 0x1F9		; addr: CE30C44
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE30C46
extu.b r0,r0		; addr: CE30C48
cmp/eq 0x01,r0 		; addr: CE30C4A
bf l_code_CE30C56		; addr: CE30C4C
lds.l @r15+,pr 		; addr: CE30C4E
mov r14,r4		; addr: CE30C50
bra l_code_CE30DFC		; addr: CE30C52
mov.l @r15+,r14		; addr: CE30C54

l_code_CE30C56:
lds.l @r15+,pr 		; addr: CE30C56
mov r14,r4		; addr: CE30C58
bra l_code_CE30D3C		; addr: CE30C5A
mov.l @r15+,r14		; addr: CE30C5C

l_code_CE30C5E:
mov.w @(data_CE30C88,pc),r0 ; r0 set to 0x1F9		; addr: CE30C5E
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE30C60
extu.b r0,r0		; addr: CE30C62
cmp/eq 0x01,r0 		; addr: CE30C64
bf l_code_CE30C70		; addr: CE30C66
lds.l @r15+,pr 		; addr: CE30C68
mov r14,r4		; addr: CE30C6A
bra l_code_CE30CF2		; addr: CE30C6C
mov.l @r15+,r14		; addr: CE30C6E

l_code_CE30C70:
lds.l @r15+,pr 		; addr: CE30C70
mov r14,r4		; addr: CE30C72
bra l_code_CE30CA8		; addr: CE30C74
mov.l @r15+,r14		; addr: CE30C76
#data 0x01FC0158		; addr: CE30C78
#data 0x01A703F4		; addr: CE30C7C
#data 0x01D601AC		; addr: CE30C80

data_CE30C84:
#data 0x01FF		; addr: CE30C84

data_CE30C86:
#data 0x01FE		; addr: CE30C86

data_CE30C88:
#data 0x01F9		; addr: CE30C88
#data 0x0000		; addr: CE30C8A

#align4
ptr_CE30C8C_to_data_CE33DF0:
#data data_CE33DF0		; addr: CE30C8C

ptr_CE30C90_to_data_CE33E08:
#data data_CE33E08		; addr: CE30C90
#data extern_8C2896B0		; addr: CE30C94
#data fn_extern_8C034E8C		; addr: CE30C98

#align4
ptr_CE30C9C_to_ptr_CE33F1C_to_f_code_CE30BF6:
#data ptr_CE33F1C_to_f_code_CE30BF6		; addr: CE30C9C
#data extern_8C0511E2		; addr: CE30CA0

#align4
ptr_CE30CA4_to_extern_8C052C84:
#data extern_8C052C84		; addr: CE30CA4


l_code_CE30CA8:
mov.l r14,@-r15		; addr: CE30CA8
sts.l pr,@-r15		; addr: CE30CAA
mov.l @(ptr_CE30D84_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE30CAC
jsr @r3		; addr: CE30CAE
mov r4,r14		; addr: CE30CB0
exts.b r0,r0		; addr: CE30CB2
cmp/pz r0		; addr: CE30CB4
bt l_code_CE30CC2		; addr: CE30CB6
lds.l @r15+,pr 		; addr: CE30CB8
mov.l @(ptr_CE30D88_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE30CBA
mov r14,r4		; addr: CE30CBC
jmp @r3		; addr: CE30CBE
mov.l @r15+,r14		; addr: CE30CC0

l_code_CE30CC2:
mov.w @(data_CE30D7E,pc),r0 ; r0 set to 0x1E8		; addr: CE30CC2
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE30CC4
extu.b r0,r0		; addr: CE30CC6
cmp/eq 0x02,r0 		; addr: CE30CC8
bf l_code_CE30CEC		; addr: CE30CCA
mov.w @(data_CE30D80,pc),r0 ; r0 set to 0x141		; addr: CE30CCC
mov.b @(r0,r14),r2		; addr: CE30CCE
tst r2,r2		; addr: CE30CD0
bt l_code_CE30CEC		; addr: CE30CD2
mov 0x00,r3 ; r3 set to 0x00		; addr: CE30CD4
mov r3,r5 ; r5 set to 0x00		; addr: CE30CD6
mov.b r3,@(r0,r14) 		; addr: CE30CD8
mov.l @(ptr_CE30D8C_to_fn_extern_8C068B40,pc),r3 ; r3 set to 0x8C068B40		; addr: CE30CDA
jsr @r3		; addr: CE30CDC
mov r14,r4		; addr: CE30CDE
lds.l @r15+,pr 		; addr: CE30CE0
mov.l @(ptr_CE30D90_to_fn_extern_8C0BFC20,pc),r2 ; r2 set to 0x8C0BFC20		; addr: CE30CE2
mov 0x00,r5 ; r5 set to 0x00		; addr: CE30CE4
mov r14,r4		; addr: CE30CE6
jmp @r2		; addr: CE30CE8
mov.l @r15+,r14		; addr: CE30CEA

l_code_CE30CEC:
lds.l @r15+,pr 		; addr: CE30CEC
rts 		; addr: CE30CEE
mov.l @r15+,r14		; addr: CE30CF0
;-------------------------------------------------------------------------------

l_code_CE30CF2:
mov.l r14,@-r15		; addr: CE30CF2
sts.l pr,@-r15		; addr: CE30CF4
mov.l @(ptr_CE30D84_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE30CF6
jsr @r3		; addr: CE30CF8
mov r4,r14		; addr: CE30CFA
exts.b r0,r0		; addr: CE30CFC
cmp/pz r0		; addr: CE30CFE
bt l_code_CE30D0C		; addr: CE30D00
lds.l @r15+,pr 		; addr: CE30D02
mov.l @(ptr_CE30D88_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE30D04
mov r14,r4		; addr: CE30D06
jmp @r3		; addr: CE30D08
mov.l @r15+,r14		; addr: CE30D0A

l_code_CE30D0C:
mov.w @(data_CE30D7E,pc),r0 ; r0 set to 0x1E8		; addr: CE30D0C
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE30D0E
extu.b r0,r0		; addr: CE30D10
cmp/eq 0x02,r0 		; addr: CE30D12
bf l_code_CE30D36		; addr: CE30D14
mov.w @(data_CE30D80,pc),r0 ; r0 set to 0x141		; addr: CE30D16
mov.b @(r0,r14),r2		; addr: CE30D18
tst r2,r2		; addr: CE30D1A
bt l_code_CE30D36		; addr: CE30D1C
mov 0x00,r3 ; r3 set to 0x00		; addr: CE30D1E
mov.b r3,@(r0,r14) 		; addr: CE30D20
mov 0x01,r5 ; r5 set to 0x01		; addr: CE30D22
mov.l @(ptr_CE30D8C_to_fn_extern_8C068B40,pc),r3 ; r3 set to 0x8C068B40		; addr: CE30D24
jsr @r3		; addr: CE30D26
mov r14,r4		; addr: CE30D28
lds.l @r15+,pr 		; addr: CE30D2A
mov.l @(ptr_CE30D90_to_fn_extern_8C0BFC20,pc),r2 ; r2 set to 0x8C0BFC20		; addr: CE30D2C
mov 0x01,r5 ; r5 set to 0x01		; addr: CE30D2E
mov r14,r4		; addr: CE30D30
jmp @r2		; addr: CE30D32
mov.l @r15+,r14		; addr: CE30D34

l_code_CE30D36:
lds.l @r15+,pr 		; addr: CE30D36
rts 		; addr: CE30D38
mov.l @r15+,r14		; addr: CE30D3A
;-------------------------------------------------------------------------------

l_code_CE30D3C:
mov.w @(data_CE30D7E,pc),r0 ; r0 set to 0x1E8		; addr: CE30D3C
mov.l r14,@-r15		; addr: CE30D3E
mov r4,r14		; addr: CE30D40
sts.l pr,@-r15		; addr: CE30D42
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE30D44
extu.b r0,r0		; addr: CE30D46
cmp/eq 0x00,r0 		; addr: CE30D48
bt l_code_CE30D58		; addr: CE30D4A
cmp/eq 0x01,r0 		; addr: CE30D4C
bt l_code_CE30D58		; addr: CE30D4E
cmp/eq 0x02,r0 		; addr: CE30D50
bt data_CE30D68		; addr: CE30D52
bra l_code_CE30DF6		; addr: CE30D54
nop 		; addr: CE30D56

l_code_CE30D58:
mov.l @(ptr_CE30D84_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE30D58
jsr @r3		; addr: CE30D5A
mov r14,r4		; addr: CE30D5C
exts.b r0,r0		; addr: CE30D5E
cmp/pz r0		; addr: CE30D60
bf l_code_CE30D74		; addr: CE30D62
bra l_code_CE30DF6		; addr: CE30D64
nop 		; addr: CE30D66

#align4
data_CE30D68:
#data 0x430BD306		; addr: CE30D68
#data 0x600E64E3		; addr: CE30D6C
#data 0x890F4011		; addr: CE30D70


l_code_CE30D74:
lds.l @r15+,pr 		; addr: CE30D74
mov.l @(ptr_CE30D88_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE30D76
mov r14,r4		; addr: CE30D78
jmp @r3		; addr: CE30D7A
mov.l @r15+,r14		; addr: CE30D7C

data_CE30D7E:
#data 0x01E8		; addr: CE30D7E

data_CE30D80:
#data 0x0141		; addr: CE30D80
#data 0x0000		; addr: CE30D82

#align4
ptr_CE30D84_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE30D84

ptr_CE30D88_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE30D88

ptr_CE30D8C_to_fn_extern_8C068B40:
#data fn_extern_8C068B40		; addr: CE30D8C

ptr_CE30D90_to_fn_extern_8C0BFC20:
#data fn_extern_8C0BFC20		; addr: CE30D90

data_CE30D94:
#data 0x03EC908D		; addr: CE30D94
#data 0x892C2338		; addr: CE30D98
#data 0x9089938B		; addr: CE30D9C
#data 0x633133EC		; addr: CE30DA0
#data 0x633D00ED		; addr: CE30DA4
#data 0x203B600D		; addr: CE30DA8
#data 0x8922C820		; addr: CE30DAC
#data 0x430BD342		; addr: CE30DB0
#data 0x907E64E3		; addr: CE30DB4
#data 0xE31BE400		; addr: CE30DB8
#data 0xE5080E45		; addr: CE30DBC
#data 0xE604907A		; addr: CE30DC0
#data 0x700B0E34		; addr: CE30DC4
#data 0x70F20E45		; addr: CE30DC8
#data 0x70260E44		; addr: CE30DCC
#data 0x0E46D33B		; addr: CE30DD0
#data 0x623284E2		; addr: CE30DD4
#data 0x4000600C		; addr: CE30DD8
#data 0x012D727C		; addr: CE30DDC
#data 0x02157101		; addr: CE30DE0
#data 0x420BD237		; addr: CE30DE4
#data 0x4F2664E3		; addr: CE30DE8
#data 0xE516D336		; addr: CE30DEC
#data 0x432B64E3		; addr: CE30DF0
#data 0x6EF6		; addr: CE30DF4


l_code_CE30DF6:
lds.l @r15+,pr 		; addr: CE30DF6
rts 		; addr: CE30DF8
mov.l @r15+,r14		; addr: CE30DFA
;-------------------------------------------------------------------------------

l_code_CE30DFC:
sts.l pr,@-r15		; addr: CE30DFC
add 0xFC,r15		; addr: CE30DFE
mov.l @(ptr_CE30ECC_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE30E00
jsr @r3		; addr: CE30E02
mov.l r4,@r15		; addr: CE30E04
exts.b r0,r0		; addr: CE30E06
cmp/pz r0		; addr: CE30E08
bt l_code_CE30E16		; addr: CE30E0A
mov.l @r15,r4		; addr: CE30E0C
add 0x04,r15		; addr: CE30E0E
mov.l @(ptr_CE30ED0_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE30E10
jmp @r3		; addr: CE30E12
lds.l @r15+,pr 		; addr: CE30E14

l_code_CE30E16:
add 0x04,r15		; addr: CE30E16
lds.l @r15+,pr 		; addr: CE30E18
rts 		; addr: CE30E1A
nop 		; addr: CE30E1C
;-------------------------------------------------------------------------------

data_CE30E1E:
#data 0x2FE6		; addr: CE30E1E
#data 0xD32C4F22		; addr: CE30E20
#data 0x6E43430B		; addr: CE30E24
#data 0x420BD22B		; addr: CE30E28
#data 0x4F2664E3		; addr: CE30E2C
#data 0x6EF664E3		; addr: CE30E30


f_code_CE30E34:
mov.l r14,@-r15		; addr: CE30E34
sts.l pr,@-r15		; addr: CE30E36
mov.l @(ptr_CE30EDC_to_fn_extern_8C04FEA8,pc),r3 ; r3 set to 0x8C04FEA8		; addr: CE30E38
jsr @r3		; addr: CE30E3A
mov r4,r14		; addr: CE30E3C
mov.l @(ptr_CE30EE0_to_fn_extern_8C050048,pc),r2 ; r2 set to 0x8C050048		; addr: CE30E3E
jsr @r2		; addr: CE30E40
mov r14,r4		; addr: CE30E42
mov.w @(data_CE30EBA,pc),r0 ; r0 set to 0x1FE		; addr: CE30E44
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE30E46
extu.b r0,r0		; addr: CE30E48
cmp/eq 0x01,r0 		; addr: CE30E4A
bf l_code_CE30E56		; addr: CE30E4C
bsr l_code_CE30E98		; addr: CE30E4E
mov r14,r4		; addr: CE30E50
bra l_code_CE30E5A		; addr: CE30E52
nop 		; addr: CE30E54

l_code_CE30E56:
bsr l_code_CE30E76		; addr: CE30E56
mov r14,r4		; addr: CE30E58

l_code_CE30E5A:
mov.l @(ptr_CE30EE4_to_fn_extern_8C052CE2,pc),r3 ; r3 set to 0x8C052CE2, r3 set to 0x8C052CE2		; addr: CE30E5A
jsr @r3		; addr: CE30E5C
mov r14,r4		; addr: CE30E5E
extu.b r0,r0		; addr: CE30E60
tst r0,r0		; addr: CE30E62
bt l_code_CE30E70		; addr: CE30E64
lds.l @r15+,pr 		; addr: CE30E66
mov.l @(ptr_CE30EE8_to_fn_extern_8C052DAC,pc),r3 ; r3 set to 0x8C052DAC, r3 set to 0x8C052DAC		; addr: CE30E68
mov r14,r4		; addr: CE30E6A
jmp @r3		; addr: CE30E6C
mov.l @r15+,r14		; addr: CE30E6E

l_code_CE30E70:
lds.l @r15+,pr 		; addr: CE30E70
rts 		; addr: CE30E72
mov.l @r15+,r14		; addr: CE30E74
;-------------------------------------------------------------------------------

l_code_CE30E76:
sts.l pr,@-r15		; addr: CE30E76
add 0xFC,r15		; addr: CE30E78
mov.l @(ptr_CE30ECC_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE30E7A
jsr @r3		; addr: CE30E7C
mov.l r4,@r15		; addr: CE30E7E
exts.b r0,r0		; addr: CE30E80
cmp/pz r0		; addr: CE30E82
bt l_code_CE30E90		; addr: CE30E84
mov.l @r15,r4		; addr: CE30E86
add 0x04,r15		; addr: CE30E88
mov.l @(ptr_CE30EEC_to_fn_extern_8C05176E,pc),r3 ; r3 set to 0x8C05176E		; addr: CE30E8A
jmp @r3		; addr: CE30E8C
lds.l @r15+,pr 		; addr: CE30E8E

l_code_CE30E90:
add 0x04,r15		; addr: CE30E90
lds.l @r15+,pr 		; addr: CE30E92
rts 		; addr: CE30E94
nop 		; addr: CE30E96
;-------------------------------------------------------------------------------

l_code_CE30E98:
sts.l pr,@-r15		; addr: CE30E98
add 0xFC,r15		; addr: CE30E9A
mov.l @(ptr_CE30ECC_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE30E9C
jsr @r3		; addr: CE30E9E
mov.l r4,@r15		; addr: CE30EA0
exts.b r0,r0		; addr: CE30EA2
cmp/pz r0		; addr: CE30EA4
bt l_code_CE30EF0		; addr: CE30EA6
mov.l @r15,r4		; addr: CE30EA8
add 0x04,r15		; addr: CE30EAA
mov.l @(ptr_CE30EEC_to_fn_extern_8C05176E,pc),r3 ; r3 set to 0x8C05176E		; addr: CE30EAC
jmp @r3		; addr: CE30EAE
lds.l @r15+,pr 		; addr: CE30EB0
#data 0x0141		; addr: CE30EB2
#data 0x0352034E		; addr: CE30EB4
#data 0x01A1		; addr: CE30EB8

data_CE30EBA:
#data 0x01FE		; addr: CE30EBA
#data extern_8C05225E		; addr: CE30EBC
#data extern_8C2896B0		; addr: CE30EC0
#data fn_extern_8C034E8C		; addr: CE30EC4
#data fn_extern_8C04223A		; addr: CE30EC8

#align4
ptr_CE30ECC_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE30ECC

ptr_CE30ED0_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE30ED0
#data extern_8C050084		; addr: CE30ED4
#data extern_8C04FF88		; addr: CE30ED8

#align4
ptr_CE30EDC_to_fn_extern_8C04FEA8:
#data fn_extern_8C04FEA8		; addr: CE30EDC

ptr_CE30EE0_to_fn_extern_8C050048:
#data fn_extern_8C050048		; addr: CE30EE0

ptr_CE30EE4_to_fn_extern_8C052CE2:
#data fn_extern_8C052CE2		; addr: CE30EE4

ptr_CE30EE8_to_fn_extern_8C052DAC:
#data fn_extern_8C052DAC		; addr: CE30EE8

ptr_CE30EEC_to_fn_extern_8C05176E:
#data fn_extern_8C05176E		; addr: CE30EEC


l_code_CE30EF0:
add 0x04,r15		; addr: CE30EF0
lds.l @r15+,pr 		; addr: CE30EF2
rts 		; addr: CE30EF4
nop 		; addr: CE30EF6
;-------------------------------------------------------------------------------

f_code_CE30EF8:
mov.l r14,@-r15		; addr: CE30EF8
mov r4,r14		; addr: CE30EFA
mov.l r13,@-r15		; addr: CE30EFC
sts.l pr,@-r15		; addr: CE30EFE
mov.b @(0x01,r14),r0 		; addr: CE30F00
extu.b r0,r0		; addr: CE30F02
cmp/eq 0x06,r0 		; addr: CE30F04
bf l_code_CE30FD0		; addr: CE30F06
mov.b @(0x06,r14),r0 		; addr: CE30F08
tst r0,r0		; addr: CE30F0A
bf data_CE30F76		; addr: CE30F0C
mov.l @(ptr_CE31000_to_fn_extern_8C052B4C,pc),r3 ; r3 set to 0x8C052B4C		; addr: CE30F0E
jsr @r3		; addr: CE30F10
mov r14,r4		; addr: CE30F12
mov.b @(0x06,r14),r0 		; addr: CE30F14
add 0x01,r0		; addr: CE30F16
mov.b r0,@(0x06,r14) 		; addr: CE30F18
mov.w @(data_CE30FF6,pc),r0 ; r0 set to 0x1FE		; addr: CE30F1A
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???		; addr: CE30F1C
tst r3,r3		; addr: CE30F1E
bf/s data_CE30F32		; addr: CE30F20
mov 0x00,r13 ; r13 set to 0x00		; addr: CE30F22
mov.w @(data_CE30FF8,pc),r0 ; r0 set to 0x1A1		; addr: CE30F24
mov 0x44,r1 ; r1 set to 0x44		; addr: CE30F26
mov.b r1,@(r0,r14) 		; addr: CE30F28
add 0x58,r0 ; r0 set to 0x1F9		; addr: CE30F2A
mov.b r13,@(r0,r14) 		; addr: CE30F2C
bra data_CE30F40		; addr: CE30F2E
mov 0x11,r6		; addr: CE30F30

data_CE30F32:
#data 0x9061		; addr: CE30F32
#data 0xE201E345		; addr: CE30F34
#data 0x70580E34		; addr: CE30F38
#data 0x0E24E612		; addr: CE30F3C

#align4
data_CE30F40:
#data 0xE514D330		; addr: CE30F40
#data 0x64E3430B		; addr: CE30F44
#data 0xE5159057		; addr: CE30F48
#data 0x0ED5D32E		; addr: CE30F4C
#data 0x0ED470F2		; addr: CE30F50
#data 0x0ED67026		; addr: CE30F54
#data 0x623284E2		; addr: CE30F58
#data 0x4000600C		; addr: CE30F5C
#data 0x012D727C		; addr: CE30F60
#data 0x02157101		; addr: CE30F64
#data 0x420BD228		; addr: CE30F68
#data 0xD32864E3		; addr: CE30F6C
#data 0x430BE505		; addr: CE30F70
#data 0x64E3		; addr: CE30F74

data_CE30F76:
#data 0x9041		; addr: CE30F76
#data 0x600C00EC		; addr: CE30F78
#data 0x8B028803		; addr: CE30F7C
#data 0x420BD224		; addr: CE30F80
#data 0x64E3		; addr: CE30F84

data_CE30F86:
#data 0xE15C		; addr: CE30F86
#data 0x31ECD323		; addr: CE30F88
#data 0xF318E034		; addr: CE30F8C
#data 0xE168F2E6		; addr: CE30F90
#data 0xF23031EC		; addr: CE30F94
#data 0xE05CFE27		; addr: CE30F98
#data 0xF318F2E6		; addr: CE30F9C
#data 0x31ECE160		; addr: CE30FA0
#data 0xFE27F230		; addr: CE30FA4
#data 0xF2E6E038		; addr: CE30FA8
#data 0xE16CF318		; addr: CE30FAC
#data 0xF23031EC		; addr: CE30FB0
#data 0xE060FE27		; addr: CE30FB4
#data 0xF318F2E6		; addr: CE30FB8
#data 0xFE27F230		; addr: CE30FBC
#data 0x64E3430B		; addr: CE30FC0
#data 0x420BD215		; addr: CE30FC4
#data 0x600E64E3		; addr: CE30FC8
#data 0x89054011		; addr: CE30FCC


l_code_CE30FD0:
lds.l @r15+,pr 		; addr: CE30FD0
mov.l @(ptr_CE31020_to_fn_extern_8C051648,pc),r2 ; r2 set to 0x8C051648		; addr: CE30FD2
mov r14,r4		; addr: CE30FD4
mov.l @r15+,r13		; addr: CE30FD6
jmp @r2		; addr: CE30FD8
mov.l @r15+,r14		; addr: CE30FDA

#align4
data_CE30FDC:
#data 0x6DF64F26		; addr: CE30FDC
#data 0x6EF6000B		; addr: CE30FE0
;-------------------------------------------------------------------------------

f_code_CE30FE4:
mov r4,r3		; addr: CE30FE4
mov.l @(ptr_CE31024_to_ptr_CE33F2C_to_f_code_CE31028,pc),r1 ; r1 set to 0xCE33F2C		; addr: CE30FE6
mov.l r4,@-r15		; addr: CE30FE8
mov.b @(0x06,r3),r0 		; addr: CE30FEA
extu.b r0,r0		; addr: CE30FEC
shll2 r0		; addr: CE30FEE
mov.l @(r0,r1),r3		; addr: CE30FF0
jmp @r3		; addr: CE30FF2
add 0x04,r15		; addr: CE30FF4

data_CE30FF6:
#data 0x01FE		; addr: CE30FF6

data_CE30FF8:
#data 0x01A1		; addr: CE30FF8
#data 0x01AC		; addr: CE30FFA
#data 0x000001FF		; addr: CE30FFC

#align4
ptr_CE31000_to_fn_extern_8C052B4C:
#data fn_extern_8C052B4C		; addr: CE31000
#data fn_extern_8C034E8C		; addr: CE31004
#data extern_8C2896B0		; addr: CE31008
#data fn_extern_8C04223A		; addr: CE3100C
#data fn_extern_8C056DE4		; addr: CE31010
#data extern_8C0511E2		; addr: CE31014
#data extern_8C052C84		; addr: CE31018
#data fn_extern_8C034DEE		; addr: CE3101C

#align4
ptr_CE31020_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE31020

ptr_CE31024_to_ptr_CE33F2C_to_f_code_CE31028:
#data ptr_CE33F2C_to_f_code_CE31028		; addr: CE31024


f_code_CE31028:
mov.l r14,@-r15		; addr: CE31028
sts.l pr,@-r15		; addr: CE3102A
mov.l @(ptr_CE3115C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE3102C
jsr @r3		; addr: CE3102E
mov r4,r14		; addr: CE31030
mov.w @(data_CE31158,pc),r0 ; r0 set to 0x141		; addr: CE31032
mov.b @(r0,r14),r2		; addr: CE31034
tst r2,r2		; addr: CE31036
bf l_code_CE31068		; addr: CE31038
mov.b @(0x06,r14),r0 		; addr: CE3103A
fldi0 fr4		; addr: CE3103C
add 0x01,r0 ; r0 set to 0x142		; addr: CE3103E
mov.b r0,@(0x06,r14) 		; addr: CE31040
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE31042
fmov.s fr4,@(r0,r14) 		; addr: CE31044
mov 0x60,r0 ; r0 set to 0x60		; addr: CE31046
fmov.s fr4,@(r0,r14) 		; addr: CE31048
mov 0x68,r0 ; r0 set to 0x68		; addr: CE3104A
fmov.s fr4,@(r0,r14) 		; addr: CE3104C
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE3104E
fmov.s fr4,@(r0,r14) 		; addr: CE31050
mov.w @(data_CE3115A,pc),r0 ; r0 set to 0x1D2		; addr: CE31052
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???		; addr: CE31054
tst r3,r3		; addr: CE31056
bt data_CE31060		; addr: CE31058
mova @(data_CE31160,pc),r0  ; r0 set to 0xCE31160		; addr: CE3105A
bra data_CE31064		; addr: CE3105C
fmov.s @r0,fr3		; addr: CE3105E

#align4
data_CE31060:
#data 0xF308C740		; addr: CE31060

#align4
data_CE31064:
#data 0xFE37E05C		; addr: CE31064


l_code_CE31068:
lds.l @r15+,pr 		; addr: CE31068
rts 		; addr: CE3106A
mov.l @r15+,r14		; addr: CE3106C
;-------------------------------------------------------------------------------

f_code_CE3106E:
mov.l r14,@-r15		; addr: CE3106E
sts.l pr,@-r15		; addr: CE31070
mov.l @(ptr_CE3115C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE31072
jsr @r3		; addr: CE31074
mov r4,r14		; addr: CE31076
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE31078
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE3107A
mov 0x34,r0 ; r0 set to 0x34		; addr: CE3107C
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE3107E
fmov.s @(r0,r14),fr2		; addr: CE31080
mov 0x68,r1 ; r1 set to 0x68		; addr: CE31082
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE31084
fadd fr3,fr2		; addr: CE31086
fmov.s fr2,@(r0,r14) 		; addr: CE31088
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE3108A
fmov.s @(r0,r14),fr2		; addr: CE3108C
fmov.s @r1,fr3		; addr: CE3108E
mov 0x60,r1 ; r1 set to 0x60		; addr: CE31090
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE31092
fadd fr3,fr2		; addr: CE31094
fmov.s fr2,@(r0,r14) 		; addr: CE31096
mov 0x38,r0 ; r0 set to 0x38		; addr: CE31098
fmov.s @(r0,r14),fr2		; addr: CE3109A
fmov.s @r1,fr3		; addr: CE3109C
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE3109E
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE310A0
fadd fr3,fr2		; addr: CE310A2
fmov.s fr2,@(r0,r14) 		; addr: CE310A4
mov 0x60,r0 ; r0 set to 0x60		; addr: CE310A6
fmov.s @(r0,r14),fr2		; addr: CE310A8
fmov.s @r1,fr3		; addr: CE310AA
fadd fr3,fr2		; addr: CE310AC
fmov.s fr2,@(r0,r14) 		; addr: CE310AE
mov.w @(data_CE31158,pc),r0 ; r0 set to 0x141		; addr: CE310B0
mov.b @(r0,r14),r3		; addr: CE310B2
tst r3,r3		; addr: CE310B4
bt l_code_CE310E6		; addr: CE310B6
mov.b @(0x06,r14),r0 		; addr: CE310B8
fldi0 fr4		; addr: CE310BA
add 0x01,r0 ; r0 set to 0x142		; addr: CE310BC
mov.b r0,@(0x06,r14) 		; addr: CE310BE
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE310C0
fmov.s fr4,@(r0,r14) 		; addr: CE310C2
mov 0x60,r0 ; r0 set to 0x60		; addr: CE310C4
fmov.s fr4,@(r0,r14) 		; addr: CE310C6
mov 0x68,r0 ; r0 set to 0x68		; addr: CE310C8
fmov.s fr4,@(r0,r14) 		; addr: CE310CA
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE310CC
fmov.s fr4,@(r0,r14) 		; addr: CE310CE
mov.w @(data_CE3115A,pc),r0 ; r0 set to 0x1D2		; addr: CE310D0
mov.b @(r0,r14),r3		; addr: CE310D2
tst r3,r3		; addr: CE310D4
bt data_CE310DE		; addr: CE310D6
mova @(data_CE31168,pc),r0  ; r0 set to 0xCE31168		; addr: CE310D8
bra data_CE310E2		; addr: CE310DA
fmov.s @r0,fr3		; addr: CE310DC

data_CE310DE:
#data 0xC723		; addr: CE310DE
#data 0xF308		; addr: CE310E0

data_CE310E2:
#data 0xE05C		; addr: CE310E2
#data 0xFE37		; addr: CE310E4


l_code_CE310E6:
lds.l @r15+,pr 		; addr: CE310E6
rts 		; addr: CE310E8
mov.l @r15+,r14		; addr: CE310EA
;-------------------------------------------------------------------------------

f_code_CE310EC:
mov.l r14,@-r15		; addr: CE310EC
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE310EE
mov r4,r14		; addr: CE310F0
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE310F2
mov 0x34,r0 ; r0 set to 0x34		; addr: CE310F4
mov.l @(ptr_CE3115C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE310F6
sts.l pr,@-r15		; addr: CE310F8
fmov.s @(r0,r14),fr2		; addr: CE310FA
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE310FC
mov 0x68,r1 ; r1 set to 0x68		; addr: CE310FE
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE31100
fadd fr3,fr2		; addr: CE31102
fmov.s fr2,@(r0,r14) 		; addr: CE31104
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE31106
fmov.s @r1,fr3		; addr: CE31108
mov 0x60,r1 ; r1 set to 0x60		; addr: CE3110A
fmov.s @(r0,r14),fr2		; addr: CE3110C
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE3110E
fadd fr3,fr2		; addr: CE31110
fmov.s fr2,@(r0,r14) 		; addr: CE31112
mov 0x38,r0 ; r0 set to 0x38		; addr: CE31114
fmov.s @(r0,r14),fr2		; addr: CE31116
fmov.s @r1,fr3		; addr: CE31118
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE3111A
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE3111C
fadd fr3,fr2		; addr: CE3111E
fmov.s fr2,@(r0,r14) 		; addr: CE31120
mov 0x60,r0 ; r0 set to 0x60		; addr: CE31122
fmov.s @(r0,r14),fr2		; addr: CE31124
fmov.s @r1,fr3		; addr: CE31126
fadd fr3,fr2		; addr: CE31128
fmov.s fr2,@(r0,r14) 		; addr: CE3112A
jsr @r3		; addr: CE3112C
mov r14,r4		; addr: CE3112E
exts.b r0,r0 ; r0 ??		; addr: CE31130
cmp/pz r0		; addr: CE31132
bt l_code_CE31140		; addr: CE31134
lds.l @r15+,pr 		; addr: CE31136
mov.l @(ptr_CE31170_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE31138
mov r14,r4		; addr: CE3113A
jmp @r3		; addr: CE3113C
mov.l @r15+,r14		; addr: CE3113E

l_code_CE31140:
lds.l @r15+,pr 		; addr: CE31140
rts 		; addr: CE31142
mov.l @r15+,r14		; addr: CE31144
;-------------------------------------------------------------------------------

f_code_CE31146:
mov r4,r3		; addr: CE31146
mov.l @(ptr_CE31174_to_ptr_CE33F38_to_f_code_CE31178,pc),r1 ; r1 set to 0xCE33F38		; addr: CE31148
mov.l r4,@-r15		; addr: CE3114A
mov.b @(0x06,r3),r0 		; addr: CE3114C
extu.b r0,r0		; addr: CE3114E
shll2 r0		; addr: CE31150
mov.l @(r0,r1),r3		; addr: CE31152
jmp @r3		; addr: CE31154
add 0x04,r15		; addr: CE31156

data_CE31158:
#data 0x0141		; addr: CE31158

data_CE3115A:
#data 0x01D2		; addr: CE3115A

#align4
ptr_CE3115C_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE3115C

data_CE31160:
#data 0x41555555		; addr: CE31160
#data 0xC1555555		; addr: CE31164

#align4
data_CE31168:
#data 0x3FD55555		; addr: CE31168
#data 0xBFD55555		; addr: CE3116C

#align4
ptr_CE31170_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE31170

ptr_CE31174_to_ptr_CE33F38_to_f_code_CE31178:
#data ptr_CE33F38_to_f_code_CE31178		; addr: CE31174


f_code_CE31178:
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE31178
fldi0 fr4		; addr: CE3117A
fmov.s fr4,@(r0,r4) 		; addr: CE3117C
mov 0x60,r0 ; r0 set to 0x60		; addr: CE3117E
fmov.s fr4,@(r0,r4) 		; addr: CE31180
mov 0x68,r0 ; r0 set to 0x68		; addr: CE31182
fmov.s fr4,@(r0,r4) 		; addr: CE31184
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE31186
fmov.s fr4,@(r0,r4) 		; addr: CE31188
mov.b @(0x06,r4),r0 		; addr: CE3118A
add 0x01,r0 ; r0 set to 0x6D		; addr: CE3118C
mov.b r0,@(0x06,r4) 		; addr: CE3118E
mov.w @(data_CE312BA,pc),r0 ; r0 set to 0x1D2		; addr: CE31190
mov.b @(r0,r4),r3		; addr: CE31192
tst r3,r3		; addr: CE31194
bt data_CE3119E		; addr: CE31196
mova @(data_CE312C4,pc),r0  ; r0 set to 0xCE312C4		; addr: CE31198
bra data_CE311A2		; addr: CE3119A
fmov.s @r0,fr3		; addr: CE3119C

data_CE3119E:
#data 0xC74A		; addr: CE3119E
#data 0xF308		; addr: CE311A0

data_CE311A2:
#data 0xE05C		; addr: CE311A2
#data 0xF437		; addr: CE311A4

data_CE311A6:
#data 0x2FE6		; addr: CE311A6
#data 0x6E43E15C		; addr: CE311A8
#data 0xE03431EC		; addr: CE311AC
#data 0x4F22D346		; addr: CE311B0
#data 0xF318F2E6		; addr: CE311B4
#data 0x31ECE168		; addr: CE311B8
#data 0xFE27F230		; addr: CE311BC
#data 0xF318E05C		; addr: CE311C0
#data 0xF2E6E160		; addr: CE311C4
#data 0xF23031EC		; addr: CE311C8
#data 0xE038FE27		; addr: CE311CC
#data 0xF318F2E6		; addr: CE311D0
#data 0x31ECE16C		; addr: CE311D4
#data 0xFE27F230		; addr: CE311D8
#data 0xF2E6E060		; addr: CE311DC
#data 0xF230F318		; addr: CE311E0
#data 0x430BFE27		; addr: CE311E4
#data 0x906764E3		; addr: CE311E8
#data 0x222802EC		; addr: CE311EC
#data 0x84E68902		; addr: CE311F0
#data 0x80E67001		; addr: CE311F4

#align4
data_CE311F8:
#data 0x000B4F26		; addr: CE311F8
#data 0x6EF6		; addr: CE311FC
;-------------------------------------------------------------------------------

f_code_CE311FE:
sts.l pr,@-r15		; addr: CE311FE
add 0xFC,r15		; addr: CE31200
mov.l @(ptr_CE312CC_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE31202
jsr @r3		; addr: CE31204
mov.l r4,@r15		; addr: CE31206
exts.b r0,r0		; addr: CE31208
cmp/pz r0		; addr: CE3120A
bt l_code_CE31218		; addr: CE3120C
mov.l @r15,r4		; addr: CE3120E
add 0x04,r15		; addr: CE31210
mov.l @(ptr_CE312D0_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE31212
jmp @r3		; addr: CE31214
lds.l @r15+,pr 		; addr: CE31216

l_code_CE31218:
add 0x04,r15		; addr: CE31218
lds.l @r15+,pr 		; addr: CE3121A
rts 		; addr: CE3121C
nop 		; addr: CE3121E
;-------------------------------------------------------------------------------

f_code_CE31220:
mov r4,r3		; addr: CE31220
mov.l @(ptr_CE312D4_to_ptr_CE33F44_to_f_code_CE31232,pc),r1 ; r1 set to 0xCE33F44		; addr: CE31222
mov.l r4,@-r15		; addr: CE31224
mov.b @(0x06,r3),r0 		; addr: CE31226
extu.b r0,r0		; addr: CE31228
shll2 r0		; addr: CE3122A
mov.l @(r0,r1),r3		; addr: CE3122C
jmp @r3		; addr: CE3122E
add 0x04,r15		; addr: CE31230

f_code_CE31232:
mov.l r14,@-r15		; addr: CE31232
mov r4,r14		; addr: CE31234
mov 0x01,r3 ; r3 set to 0x01		; addr: CE31236
sts.l pr,@-r15		; addr: CE31238
mov.b @(0x06,r14),r0 		; addr: CE3123A
mov 0x02,r5 ; r5 set to 0x02		; addr: CE3123C
add 0x01,r0		; addr: CE3123E
mov.b r0,@(0x06,r14) 		; addr: CE31240
mov.w @(data_CE312BE,pc),r0 ; r0 set to 0x12C		; addr: CE31242
mov.b r3,@(r0,r14) 		; addr: CE31244
mov.l @(ptr_CE312D8_to_fn_extern_8C0BFC20,pc),r3 ; r3 set to 0x8C0BFC20		; addr: CE31246
jsr @r3		; addr: CE31248
mov r14,r4		; addr: CE3124A
lds.l @r15+,pr 		; addr: CE3124C
mov.l @(ptr_CE312DC_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE3124E
mov r14,r4		; addr: CE31250
mov 0x00,r6 ; r6 set to 0x00		; addr: CE31252
mov 0x12,r5 ; r5 set to 0x12		; addr: CE31254
jmp @r2		; addr: CE31256
mov.l @r15+,r14		; addr: CE31258

data_CE3125A:
#data 0x2FE6		; addr: CE3125A
#data 0xD31B4F22		; addr: CE3125C
#data 0x6E43430B		; addr: CE31260
#data 0x02EC902C		; addr: CE31264
#data 0x890A2228		; addr: CE31268
#data 0x9428E500		; addr: CE3126C
#data 0x84E60E54		; addr: CE31270
#data 0x700134EC		; addr: CE31274
#data 0x605380E6		; addr: CE31278
#data 0x80470009		; addr: CE3127C
#data 0x8046		; addr: CE31280

data_CE31282:
#data 0x4F26		; addr: CE31282
#data 0x6EF6000B		; addr: CE31284
;-------------------------------------------------------------------------------

#align4
data_CE31288:
#data 0x4F222FE6		; addr: CE31288
#data 0x6E43B056		; addr: CE3128C
#data 0x420BD20E		; addr: CE31290
#data 0x901364E3		; addr: CE31294
#data 0x233803EC		; addr: CE31298
#data 0xE500890A		; addr: CE3129C
#data 0x0E54940F		; addr: CE312A0
#data 0x34EC84E6		; addr: CE312A4
#data 0x80E67001		; addr: CE312A8
#data 0x00096053		; addr: CE312AC
#data 0x80468047		; addr: CE312B0

#align4
data_CE312B4:
#data 0x000B4F26		; addr: CE312B4
#data 0x6EF6		; addr: CE312B8
;-------------------------------------------------------------------------------

data_CE312BA:
#data 0x01D2		; addr: CE312BA
#data 0x0141		; addr: CE312BC

data_CE312BE:
#data 0x012C		; addr: CE312BE
#data 0x02A40140		; addr: CE312C0

#align4
data_CE312C4:
#data 0xC1555555		; addr: CE312C4
#data 0x41555555		; addr: CE312C8

#align4
ptr_CE312CC_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE312CC

ptr_CE312D0_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE312D0

ptr_CE312D4_to_ptr_CE33F44_to_f_code_CE31232:
#data ptr_CE33F44_to_f_code_CE31232		; addr: CE312D4

ptr_CE312D8_to_fn_extern_8C0BFC20:
#data fn_extern_8C0BFC20		; addr: CE312D8

ptr_CE312DC_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE312DC

data_CE312E0:
#data 0x4F222FE6		; addr: CE312E0
#data 0x6E43B045		; addr: CE312E4
#data 0x420BD24B		; addr: CE312E8
#data 0x600E64E3		; addr: CE312EC
#data 0x890C4011		; addr: CE312F0
#data 0xE51284E6		; addr: CE312F4
#data 0xE601D348		; addr: CE312F8
#data 0x80E67001		; addr: CE312FC
#data 0x64E3430B		; addr: CE31300
#data 0xE0009484		; addr: CE31304
#data 0x804734EC		; addr: CE31308
#data 0x8046		; addr: CE3130C

data_CE3130E:
#data 0x4F26		; addr: CE3130E
#data 0x6EF6000B		; addr: CE31310
;-------------------------------------------------------------------------------

f_code_CE31314:
mov.l r14,@-r15		; addr: CE31314
sts.l pr,@-r15		; addr: CE31316
mov.l @(ptr_CE31418_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE31318
jsr @r3		; addr: CE3131A
mov r4,r14		; addr: CE3131C
exts.b r0,r0		; addr: CE3131E
cmp/pz r0		; addr: CE31320
bt l_code_CE31336		; addr: CE31322
mov.b @(0x05,r14),r0 		; addr: CE31324
mov r14,r4		; addr: CE31326
mov.l @(ptr_CE31420_to_fn_extern_8C035162,pc),r3 ; r3 set to 0x8C035162		; addr: CE31328
mov 0x00,r5 ; r5 set to 0x00		; addr: CE3132A
add 0x01,r0		; addr: CE3132C
mov.b r0,@(0x05,r14) 		; addr: CE3132E
lds.l @r15+,pr 		; addr: CE31330
jmp @r3		; addr: CE31332
mov.l @r15+,r14		; addr: CE31334

l_code_CE31336:
lds.l @r15+,pr 		; addr: CE31336
rts 		; addr: CE31338
mov.l @r15+,r14		; addr: CE3133A
;-------------------------------------------------------------------------------

#align4
data_CE3133C:
#data 0x95677FFC		; addr: CE3133C
#data 0x354CE308		; addr: CE31340
#data 0x30338456		; addr: CE31344
#data 0xE0258911		; addr: CE31348
#data 0x014CD235		; addr: CE3134C
#data 0x8456E701		; addr: CE31350
#data 0x4108611C		; addr: CE31354
#data 0x310C4100		; addr: CE31358
#data 0x2F127120		; addr: CE3135C
#data 0x70018456		; addr: CE31360
#data 0xE5008056		; addr: CE31364
#data 0x422B66F2		; addr: CE31368
#data 0x7F04		; addr: CE3136C

data_CE3136E:
#data 0x000B		; addr: CE3136E
#data 0x7F04		; addr: CE31370
;-------------------------------------------------------------------------------

data_CE31372:
#data 0x7FFC		; addr: CE31372
#data 0xE308954C		; addr: CE31374
#data 0x8456354C		; addr: CE31378
#data 0x89113033		; addr: CE3137C
#data 0xD228E025		; addr: CE31380
#data 0xE701014C		; addr: CE31384
#data 0x611C8456		; addr: CE31388
#data 0x41004108		; addr: CE3138C
#data 0x71273108		; addr: CE31390
#data 0x84562F12		; addr: CE31394
#data 0x80567001		; addr: CE31398
#data 0x66F2E500		; addr: CE3139C
#data 0x7F04422B		; addr: CE313A0

#align4
data_CE313A4:
#data 0x7F04000B		; addr: CE313A4
;-------------------------------------------------------------------------------

f_code_CE313A8:
mov.l r14,@-r15		; addr: CE313A8
sts.l pr,@-r15		; addr: CE313AA
mov.l @(ptr_CE31428_to_fn_extern_8C046C8A,pc),r3 ; r3 set to 0x8C046C8A		; addr: CE313AC
jsr @r3		; addr: CE313AE
mov r4,r14		; addr: CE313B0
tst r0,r0		; addr: CE313B2
bt l_code_CE313C8		; addr: CE313B4
mov.l @(ptr_CE3142C_to_fn_extern_8C042008,pc),r3 ; r3 set to 0x8C042008		; addr: CE313B6
mov 0x2B,r5 ; r5 set to 0x2B		; addr: CE313B8
jsr @r3		; addr: CE313BA
mov r14,r4		; addr: CE313BC
lds.l @r15+,pr 		; addr: CE313BE
mov.l @(ptr_CE31430_to_fn_extern_8C051648,pc),r2 ; r2 set to 0x8C051648		; addr: CE313C0
mov r14,r4		; addr: CE313C2
jmp @r2		; addr: CE313C4
mov.l @r15+,r14		; addr: CE313C6

l_code_CE313C8:
mov 0x20,r0 ; r0 set to 0x20		; addr: CE313C8
mov r14,r4		; addr: CE313CA
mov.b @(r0,r14),r2		; addr: CE313CC
mov.l @(ptr_CE31434_to_ptr_CE33F58_to_f_code_CE313DC,pc),r0 ; r0 set to 0xCE33F58		; addr: CE313CE
extu.b r2,r2		; addr: CE313D0
lds.l @r15+,pr 		; addr: CE313D2
shll2 r2		; addr: CE313D4
mov.l @(r0,r2),r3		; addr: CE313D6
jmp @r3		; addr: CE313D8
mov.l @r15+,r14		; addr: CE313DA

f_code_CE313DC:
mov r4,r3		; addr: CE313DC
mov.l @(ptr_CE31438_to_ptr_CE33F6C_to_data_CE313EE,pc),r1 ; r1 set to 0xCE33F6C		; addr: CE313DE
mov.l r4,@-r15		; addr: CE313E0
mov.b @(0x06,r3),r0 		; addr: CE313E2
extu.b r0,r0		; addr: CE313E4
shll2 r0		; addr: CE313E6
mov.l @(r0,r1),r3		; addr: CE313E8
jmp @r3		; addr: CE313EA
add 0x04,r15		; addr: CE313EC

data_CE313EE:
#data 0xD313		; addr: CE313EE
#data 0x2FE6E501		; addr: CE313F0
#data 0x64326E43		; addr: CE313F4
#data 0x22585247		; addr: CE313F8
#data 0x90088903		; addr: CE313FC
#data 0x2008004C		; addr: CE31400
#data 0x891C		; addr: CE31404

data_CE31406:
#data 0xE003		; addr: CE31406
#data 0x900380E6		; addr: CE31408
#data 0x0E54A01E		; addr: CE3140C
#data 0x008802A4		; addr: CE31410
#data 0x00000158		; addr: CE31414

#align4
ptr_CE31418_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE31418
#data fn_extern_8C034E8C		; addr: CE3141C

#align4
ptr_CE31420_to_fn_extern_8C035162:
#data fn_extern_8C035162		; addr: CE31420
#data fn_extern_8C03544C		; addr: CE31424

#align4
ptr_CE31428_to_fn_extern_8C046C8A:
#data fn_extern_8C046C8A		; addr: CE31428

ptr_CE3142C_to_fn_extern_8C042008:
#data fn_extern_8C042008		; addr: CE3142C

ptr_CE31430_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE31430

ptr_CE31434_to_ptr_CE33F58_to_f_code_CE313DC:
#data ptr_CE33F58_to_f_code_CE313DC		; addr: CE31434

ptr_CE31438_to_ptr_CE33F6C_to_data_CE313EE:
#data ptr_CE33F6C_to_data_CE313EE		; addr: CE31438
#data extern_8C26823C		; addr: CE3143C

#align4
data_CE31440:
#data 0xE30084E6		; addr: CE31440
#data 0x80E67001		; addr: CE31444
#data 0x0E349075		; addr: CE31448

#align4
data_CE3144C:
#data 0x64E39073		; addr: CE3144C
#data 0xE513D33C		; addr: CE31450
#data 0x432B06EC		; addr: CE31454
#data 0x6EF6		; addr: CE31458

data_CE3145A:
#data 0x2FE6		; addr: CE3145A
#data 0x4F222FD6		; addr: CE3145C
#data 0x430BD339		; addr: CE31460
#data 0x90676E43		; addr: CE31464
#data 0x222802EC		; addr: CE31468
#data 0x84E68914		; addr: CE3146C
#data 0x9D62E300		; addr: CE31470
#data 0x70016633		; addr: CE31474
#data 0x80E6D234		; addr: CE31478
#data 0x905B3DEC		; addr: CE3147C
#data 0x6733E501		; addr: CE31480
#data 0xE0400E34		; addr: CE31484
#data 0xE00480D1		; addr: CE31488
#data 0x2D3081D1		; addr: CE3148C
#data 0x64E3420B		; addr: CE31490
#data 0x80D49052		; addr: CE31494

#align4
data_CE31498:
#data 0x6DF64F26		; addr: CE31498
#data 0x6EF6000B		; addr: CE3149C
;-------------------------------------------------------------------------------

f_code_CE314A0:
mov.w @(data_CE3153E,pc),r0 ; r0 set to 0x2A8		; addr: CE314A0
mov.w @(data_CE3153C,pc),r3 ; r3 set to 0xFF		; addr: CE314A2
mov.b r3,@(r0,r4) 		; addr: CE314A4
mov.l @(ptr_CE31548_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE314A6
jmp @r3		; addr: CE314A8
nop 		; addr: CE314AA

f_code_CE314AC:
mov.l r14,@-r15		; addr: CE314AC
sts.l pr,@-r15		; addr: CE314AE
mov.l @(ptr_CE31548_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE314B0
jsr @r3		; addr: CE314B2
mov r4,r14		; addr: CE314B4
mov.w @(data_CE31538,pc),r0 ; r0 set to 0x141		; addr: CE314B6
mov.b @(r0,r14),r2		; addr: CE314B8
tst r2,r2		; addr: CE314BA
bt l_code_CE314CE		; addr: CE314BC
mov 0x00,r3 ; r3 set to 0x00		; addr: CE314BE
mov r14,r4		; addr: CE314C0
mov.b r3,@(r0,r14) 		; addr: CE314C2
mov 0x04,r5 ; r5 set to 0x04		; addr: CE314C4
lds.l @r15+,pr 		; addr: CE314C6
mov.l @(ptr_CE31550_to_fn_extern_8C0BFC20,pc),r3 ; r3 set to 0x8C0BFC20		; addr: CE314C8
jmp @r3		; addr: CE314CA
mov.l @r15+,r14		; addr: CE314CC

l_code_CE314CE:
lds.l @r15+,pr 		; addr: CE314CE
rts 		; addr: CE314D0
mov.l @r15+,r14		; addr: CE314D2
;-------------------------------------------------------------------------------

f_code_CE314D4:
mov.b @(0x06,r4),r0 		; addr: CE314D4
tst r0,r0		; addr: CE314D6
bf l_code_CE314E8		; addr: CE314D8
mov.b @(0x06,r4),r0 		; addr: CE314DA
mov 0x02,r6 ; r6 set to 0x02		; addr: CE314DC
mov.l @(ptr_CE31544_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE314DE
add 0x01,r0		; addr: CE314E0
mov.b r0,@(0x06,r4) 		; addr: CE314E2
jmp @r3		; addr: CE314E4
mov 0x13,r5		; addr: CE314E6

l_code_CE314E8:
mov.l @(ptr_CE31548_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE314E8
jmp @r3		; addr: CE314EA
nop 		; addr: CE314EC

f_code_CE314EE:
mov.b @(0x06,r4),r0 		; addr: CE314EE
tst r0,r0		; addr: CE314F0
bf l_code_CE31502		; addr: CE314F2
mov.b @(0x06,r4),r0 		; addr: CE314F4
mov 0x05,r6 ; r6 set to 0x05		; addr: CE314F6
mov.l @(ptr_CE31544_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE314F8
add 0x01,r0		; addr: CE314FA
mov.b r0,@(0x06,r4) 		; addr: CE314FC
jmp @r3		; addr: CE314FE
mov 0x13,r5		; addr: CE31500

l_code_CE31502:
mov.l @(ptr_CE31548_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE31502
jmp @r3		; addr: CE31504
nop 		; addr: CE31506

f_code_CE31508:
mov.b @(0x06,r4),r0 		; addr: CE31508
tst r0,r0		; addr: CE3150A
bf l_code_CE3151C		; addr: CE3150C
mov.b @(0x06,r4),r0 		; addr: CE3150E
mov 0x03,r6 ; r6 set to 0x03		; addr: CE31510
mov.l @(ptr_CE31544_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE31512
add 0x01,r0		; addr: CE31514
mov.b r0,@(0x06,r4) 		; addr: CE31516
jmp @r3		; addr: CE31518
mov 0x13,r5		; addr: CE3151A

l_code_CE3151C:
mov.l @(ptr_CE31548_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE3151C
jmp @r3		; addr: CE3151E
nop 		; addr: CE31520

f_code_CE31522:
mov.w @(data_CE31540,pc),r0 ; r0 set to 0x1E9		; addr: CE31522
mov r4,r3		; addr: CE31524
mov.l r4,@-r15		; addr: CE31526
mov.b @(r0,r3),r2		; addr: CE31528
mov.l @(ptr_CE31554_to_ptr_CE33F7C_to_data_CE31558,pc),r0 ; r0 set to 0xCE33F7C		; addr: CE3152A
extu.b r2,r2		; addr: CE3152C
shll2 r2		; addr: CE3152E
mov.l @(r0,r2),r3		; addr: CE31530
jmp @r3		; addr: CE31532
add 0x04,r15		; addr: CE31534
#data 0x0158		; addr: CE31536

data_CE31538:
#data 0x0141		; addr: CE31538
#data 0x02A4		; addr: CE3153A

data_CE3153C:
#data 0x00FF		; addr: CE3153C

data_CE3153E:
#data 0x02A8		; addr: CE3153E

data_CE31540:
#data 0x01E9		; addr: CE31540
#data 0x0000		; addr: CE31542

#align4
ptr_CE31544_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE31544

ptr_CE31548_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE31548
#data fn_extern_8C068EE4		; addr: CE3154C

#align4
ptr_CE31550_to_fn_extern_8C0BFC20:
#data fn_extern_8C0BFC20		; addr: CE31550

ptr_CE31554_to_ptr_CE33F7C_to_data_CE31558:
#data ptr_CE33F7C_to_data_CE31558		; addr: CE31554

data_CE31558:
#data 0x2FE690A1		; addr: CE31558
#data 0x4F226E43		; addr: CE3155C
#data 0x600C00EC		; addr: CE31560
#data 0x8B0C8802		; addr: CE31564
#data 0x420BD250		; addr: CE31568
#data 0x909764E3		; addr: CE3156C
#data 0xE038F3E6		; addr: CE31570
#data 0xF325F2E6		; addr: CE31574
#data 0x90918B03		; addr: CE31578
#data 0xE038F3E6		; addr: CE3157C
#data 0xFE37		; addr: CE31580

data_CE31582:
#data 0x84E6		; addr: CE31582
#data 0xD14A64E3		; addr: CE31584
#data 0x958A600C		; addr: CE31588
#data 0x40084F26		; addr: CE3158C
#data 0x35EC031E		; addr: CE31590
#data 0x6EF6432B		; addr: CE31594


f_code_CE31598:
mov.l r14,@-r15		; addr: CE31598
mov r4,r14		; addr: CE3159A
mov.l r13,@-r15		; addr: CE3159C
mov.l r12,@-r15		; addr: CE3159E
mov r5,r12		; addr: CE315A0
mov.l r11,@-r15		; addr: CE315A2
mov 0x00,r5 ; r5 set to 0x00		; addr: CE315A4
sts.l pr,@-r15		; addr: CE315A6
mov.b @(0x06,r14),r0 		; addr: CE315A8
mov.l @(ptr_CE316B4_to_fn_extern_8C035162,pc),r3 ; r3 set to 0x8C035162		; addr: CE315AA
add 0x01,r0		; addr: CE315AC
mov.b r0,@(0x06,r14) 		; addr: CE315AE
jsr @r3		; addr: CE315B0
mov r14,r4		; addr: CE315B2
mov.l @(ptr_CE316B8_to_fn_extern_8C05218A,pc),r2 ; r2 set to 0x8C05218A		; addr: CE315B4
jsr @r2		; addr: CE315B6
mov r14,r4		; addr: CE315B8
mov.l @(ptr_CE316BC_to_fn_extern_8C056DE4,pc),r3 ; r3 set to 0x8C056DE4		; addr: CE315BA
mov 0x05,r5 ; r5 set to 0x05		; addr: CE315BC
jsr @r3		; addr: CE315BE
mov r14,r4		; addr: CE315C0
mov.w @(data_CE3169E,pc),r0 ; r0 set to 0x1F9		; addr: CE315C2
mov 0x0C,r11 ; r11 set to 0x0C		; addr: CE315C4
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE315C6
extu.b r0,r0		; addr: CE315C8
cmp/eq 0x02,r0 		; addr: CE315CA
bf/s data_CE3163E		; addr: CE315CC
mov 0x00,r13 ; r13 set to 0x00		; addr: CE315CE
mov.l @(data_CE316C0,pc),r1 ; r1 set to 0x41800000		; addr: CE315D0
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE315D2
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???		; addr: CE315D4
mov 0x34,r3 ; r3 set to 0x34		; addr: CE315D6
lds r1,fpul 		; addr: CE315D8
mov.l @(data_CE316C4,pc),r1 ; r1 set to 0x41000000		; addr: CE315DA
fsts fpul,fr3		; addr: CE315DC
fdiv fr3,fr2		; addr: CE315DE
lds r1,fpul 		; addr: CE315E0
mov.l @(data_CE316C8,pc),r1 ; r1 set to 0x42800000		; addr: CE315E2
fldi0 fr3		; addr: CE315E4
fmov.s fr2,@(r0,r14) 		; addr: CE315E6
mov 0x60,r0 ; r0 set to 0x60		; addr: CE315E8
fmov.s @(r0,r14),fr1 ; r1 ??? bc r14 is ???		; addr: CE315EA
fsts fpul,fr2		; addr: CE315EC
fdiv fr2,fr1		; addr: CE315EE
lds r1,fpul 		; addr: CE315F0
fmov.s fr1,@(r0,r14) 		; addr: CE315F2
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE315F4
fmov.s @(r0,r14),fr0 ; r0 ??? bc r14 is ???		; addr: CE315F6
fsts fpul,fr1		; addr: CE315F8
fdiv fr1,fr0		; addr: CE315FA
fmov.s fr0,@(r0,r14) 		; addr: CE315FC
mov 0x68,r0 ; r0 set to 0x68		; addr: CE315FE
fmov.s fr3,@(r0,r14) 		; addr: CE31600
mov 0x0A,r0 ; r0 set to 0x0A		; addr: CE31602
mov.w r0,@(0x1C,r14) 		; addr: CE31604
mov.w @(data_CE316A4,pc),r0 ; r0 set to 0x1A1		; addr: CE31606
mov.b r11,@r12		; addr: CE31608
mov.b r3,@(r0,r14) 		; addr: CE3160A
add 0x0B,r0 ; r0 set to 0x1AC		; addr: CE3160C
mov.w r13,@(r0,r14) 		; addr: CE3160E
add 0xF2,r0 ; r0 set to 0x19E		; addr: CE31610
mov.l @(ptr_CE316CC_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0		; addr: CE31612
mov.b r13,@(r0,r14) 		; addr: CE31614
add 0x26,r0 ; r0 set to 0x1C4		; addr: CE31616
mov.l r13,@(r0,r14) 		; addr: CE31618
mov r14,r4		; addr: CE3161A
mov.b @(0x02,r14),r0 		; addr: CE3161C
mov 0x15,r5 ; r5 set to 0x15		; addr: CE3161E
mov.l @r3,r2		; addr: CE31620
mov 0x03,r6 ; r6 set to 0x03		; addr: CE31622
extu.b r0,r0 ; r0 set to 0xC4		; addr: CE31624
shll r0 ; r0 set to 0x188		; addr: CE31626
add 0x7C,r2		; addr: CE31628
mov.w @(r0,r2),r1		; addr: CE3162A
add 0x01,r1		; addr: CE3162C
mov.w r1,@(r0,r2) 		; addr: CE3162E
lds.l @r15+,pr 		; addr: CE31630
mov.l @(ptr_CE316D0_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE31632
mov.l @r15+,r11 ; r11 ??? bc r15 is ???		; addr: CE31634
mov.l @r15+,r12		; addr: CE31636
mov.l @r15+,r13 ; r13 ??? bc r15 is ???		; addr: CE31638
jmp @r2		; addr: CE3163A
mov.l @r15+,r14		; addr: CE3163C

data_CE3163E:
#data 0xD225		; addr: CE3163E
#data 0x64E3420B		; addr: CE31640
#data 0x430BD324		; addr: CE31644
#data 0x902864E3		; addr: CE31648
#data 0x70AA0ED4		; addr: CE3164C
#data 0x902804EC		; addr: CE31650
#data 0x600C00EC		; addr: CE31654
#data 0x8F018803		; addr: CE31658
#data 0xE4417431		; addr: CE3165C

#align4
data_CE31660:
#data 0xE5159020		; addr: CE31660
#data 0x0E44D319		; addr: CE31664
#data 0x0ED5700B		; addr: CE31668
#data 0x0ED470F2		; addr: CE3166C
#data 0x0ED67026		; addr: CE31670
#data 0x623284E2		; addr: CE31674
#data 0x4000600C		; addr: CE31678
#data 0x012D727C		; addr: CE3167C
#data 0x02157101		; addr: CE31680
#data 0xD2129010		; addr: CE31684
#data 0x460006EC		; addr: CE31688
#data 0x64E3420B		; addr: CE3168C
#data 0x03EC900A		; addr: CE31690
#data 0x8B212338		; addr: CE31694
#data 0xA0222CB0		; addr: CE31698
#data 0x60B3		; addr: CE3169C

data_CE3169E:
#data 0x01F9		; addr: CE3169E
#data 0x02A4041C		; addr: CE316A0

data_CE316A4:
#data 0x01A1		; addr: CE316A4
#data 0x0255		; addr: CE316A6
#data 0x000001A3		; addr: CE316A8
#data fn_extern_8C04FEA8		; addr: CE316AC

#align4
ptr_CE316B0_to_ptr_CE33FB4_to_f_code_CE31598:
#data ptr_CE33FB4_to_f_code_CE31598		; addr: CE316B0

ptr_CE316B4_to_fn_extern_8C035162:
#data fn_extern_8C035162		; addr: CE316B4

ptr_CE316B8_to_fn_extern_8C05218A:
#data fn_extern_8C05218A		; addr: CE316B8

ptr_CE316BC_to_fn_extern_8C056DE4:
#data fn_extern_8C056DE4		; addr: CE316BC

data_CE316C0:
#data 0x41800000		; addr: CE316C0

#align4
data_CE316C4:
#data 0x41000000		; addr: CE316C4

#align4
data_CE316C8:
#data 0x42800000		; addr: CE316C8

#align4
ptr_CE316CC_to_extern_8C2896B0:
#data extern_8C2896B0		; addr: CE316CC

ptr_CE316D0_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE316D0
#data fn_extern_8C052B4C		; addr: CE316D4
#data fn_extern_8C05115A		; addr: CE316D8

#align4
data_CE316DC:
#data 0xE00AE20E		; addr: CE316DC
#data 0x2C20		; addr: CE316E0

data_CE316E2:
#data 0x81EE		; addr: CE316E2
#data 0x6BF64F26		; addr: CE316E4
#data 0x6DF66CF6		; addr: CE316E8
#data 0x6EF6000B		; addr: CE316EC
;-------------------------------------------------------------------------------

#align4
data_CE316F0:
#data 0x6E432FE6		; addr: CE316F0
#data 0x4F222FD6		; addr: CE316F4
#data 0x430BD348		; addr: CE316F8
#data 0x90876D53		; addr: CE316FC
#data 0x222802EC		; addr: CE31700
#data 0x84E6890E		; addr: CE31704
#data 0xD345E700		; addr: CE31708
#data 0x70016573		; addr: CE3170C
#data 0x80E66673		; addr: CE31710
#data 0x80D1E020		; addr: CE31714
#data 0x81D1E00D		; addr: CE31718
#data 0x64E3430B		; addr: CE3171C
#data 0x80D49077		; addr: CE31720

#align4
data_CE31724:
#data 0x6DF64F26		; addr: CE31724
#data 0x6EF6000B		; addr: CE31728
;-------------------------------------------------------------------------------

#align4
data_CE3172C:
#data 0x6E432FE6		; addr: CE3172C
#data 0x6D532FD6		; addr: CE31730
#data 0x65D3906D		; addr: CE31734
#data 0x80D44F22		; addr: CE31738
#data 0x64E3B2B0		; addr: CE3173C
#data 0x420BD236		; addr: CE31740
#data 0x85EE64E3		; addr: CE31744
#data 0x81EE70FF		; addr: CE31748
#data 0x4015600F		; addr: CE3174C
#data 0x84E68906		; addr: CE31750
#data 0x80E67001		; addr: CE31754
#data 0x80D1E000		; addr: CE31758
#data 0x81EEE008		; addr: CE3175C

#align4
data_CE31760:
#data 0x6DF64F26		; addr: CE31760
#data 0x6EF6000B		; addr: CE31764
;-------------------------------------------------------------------------------

f_code_CE31768:
mov.l r14,@-r15		; addr: CE31768
sts.l pr,@-r15		; addr: CE3176A
add 0xFC,r15		; addr: CE3176C
mov.w @(data_CE31812,pc),r0 ; r0 set to 0xFF		; addr: CE3176E
mov r5,r3		; addr: CE31770
mov.l r5,@r15		; addr: CE31772
mov r4,r14		; addr: CE31774
mov.b r0,@(0x04,r3) 		; addr: CE31776
mov.l @(ptr_CE3181C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE31778
jsr @r3		; addr: CE3177A
mov r14,r4		; addr: CE3177C
mov.w @(0x1C,r14),r0 		; addr: CE3177E
add 0xFF,r0 ; r0 set to 0xFE		; addr: CE31780
mov.w r0,@(0x1C,r14) 		; addr: CE31782
exts.w r0,r0 ; r0 ??		; addr: CE31784
cmp/pz r0		; addr: CE31786
bt l_code_CE317D2		; addr: CE31788
mov.b @(0x06,r14),r0 		; addr: CE3178A
add 0x01,r0		; addr: CE3178C
mov.b r0,@(0x06,r14) 		; addr: CE3178E
mov 0x00,r0 ; r0 set to 0x00		; addr: CE31790
mov.l @r15,r3 ; r3 ??? bc r15 is ???		; addr: CE31792
mov.b r0,@(0x04,r3) 		; addr: CE31794
mov 0x07,r3 ; r3 set to 0x07		; addr: CE31796
mov.w @(data_CE31814,pc),r0 ; r0 set to 0x158		; addr: CE31798
mov.b r3,@(r0,r14) 		; addr: CE3179A
mov.w @(data_CE31816,pc),r0 ; r0 set to 0x1F9		; addr: CE3179C
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE3179E
extu.b r0,r0		; addr: CE317A0
cmp/eq 0x02,r0 		; addr: CE317A2
bt l_code_CE317B8		; addr: CE317A4
mov.w @(data_CE31818,pc),r0 ; r0 set to 0x1A3		; addr: CE317A6
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???		; addr: CE317A8
tst r3,r3		; addr: CE317AA
bf data_CE317B2		; addr: CE317AC
bra data_CE317B4		; addr: CE317AE
mov 0x04,r2		; addr: CE317B0

data_CE317B2:
#data 0xE206		; addr: CE317B2

#align4
data_CE317B4:
#data 0x0E24902E		; addr: CE317B4


l_code_CE317B8:
mov.l @(ptr_CE31824_to_fn_extern_8C035162,pc),r3 ; r3 set to 0x8C035162		; addr: CE317B8
mov 0x00,r5 ; r5 set to 0x00		; addr: CE317BA
jsr @r3		; addr: CE317BC
mov r14,r4		; addr: CE317BE
mov.w @(data_CE31814,pc),r0 ; r0 set to 0x158		; addr: CE317C0
mov r14,r4		; addr: CE317C2
mov 0x15,r5 ; r5 set to 0x15		; addr: CE317C4
mov.b @(r0,r14),r6		; addr: CE317C6
add 0x04,r15		; addr: CE317C8
lds.l @r15+,pr 		; addr: CE317CA
mov.l @(ptr_CE31828_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE317CC
jmp @r3		; addr: CE317CE
mov.l @r15+,r14		; addr: CE317D0

l_code_CE317D2:
add 0x04,r15		; addr: CE317D2
lds.l @r15+,pr 		; addr: CE317D4
rts 		; addr: CE317D6
mov.l @r15+,r14		; addr: CE317D8
;-------------------------------------------------------------------------------

f_code_CE317DA:
mov.l r14,@-r15		; addr: CE317DA
sts.l pr,@-r15		; addr: CE317DC
mov.l @(ptr_CE3181C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE317DE
jsr @r3		; addr: CE317E0
mov r4,r14		; addr: CE317E2
exts.b r0,r0		; addr: CE317E4
cmp/pz r0		; addr: CE317E6
bt l_code_CE31838		; addr: CE317E8
mov.l @(ptr_CE3182C_to_fn_extern_8C042008,pc),r3 ; r3 set to 0x8C042008		; addr: CE317EA
mov 0x2B,r5 ; r5 set to 0x2B		; addr: CE317EC
jsr @r3		; addr: CE317EE
mov r14,r4		; addr: CE317F0
mov.w @(data_CE31816,pc),r0 ; r0 set to 0x1F9		; addr: CE317F2
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE317F4
extu.b r0,r0		; addr: CE317F6
cmp/eq 0x02,r0 		; addr: CE317F8
bf l_code_CE31806		; addr: CE317FA
lds.l @r15+,pr 		; addr: CE317FC
mov.l @(ptr_CE31830_to_fn_extern_8C05176E,pc),r2 ; r2 set to 0x8C05176E		; addr: CE317FE
mov r14,r4		; addr: CE31800
jmp @r2		; addr: CE31802
mov.l @r15+,r14		; addr: CE31804

l_code_CE31806:
lds.l @r15+,pr 		; addr: CE31806
mov.l @(ptr_CE31834_to_fn_extern_8C051648,pc),r2 ; r2 set to 0x8C051648		; addr: CE31808
mov r14,r4		; addr: CE3180A
jmp @r2		; addr: CE3180C
mov.l @r15+,r14		; addr: CE3180E
#data 0x0141		; addr: CE31810

data_CE31812:
#data 0x00FF		; addr: CE31812

data_CE31814:
#data 0x0158		; addr: CE31814

data_CE31816:
#data 0x01F9		; addr: CE31816

data_CE31818:
#data 0x01A3		; addr: CE31818
#data 0x0000		; addr: CE3181A

#align4
ptr_CE3181C_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE3181C
#data fn_extern_8C068EE4		; addr: CE31820

#align4
ptr_CE31824_to_fn_extern_8C035162:
#data fn_extern_8C035162		; addr: CE31824

ptr_CE31828_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE31828

ptr_CE3182C_to_fn_extern_8C042008:
#data fn_extern_8C042008		; addr: CE3182C

ptr_CE31830_to_fn_extern_8C05176E:
#data fn_extern_8C05176E		; addr: CE31830

ptr_CE31834_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE31834


l_code_CE31838:
lds.l @r15+,pr 		; addr: CE31838
rts 		; addr: CE3183A
mov.l @r15+,r14		; addr: CE3183C
;-------------------------------------------------------------------------------

data_CE3183E:
#data 0x909A		; addr: CE3183E
#data 0x6E432FE6		; addr: CE31840
#data 0x00EC4F22		; addr: CE31844
#data 0x8802600C		; addr: CE31848
#data 0xD24E8B0C		; addr: CE3184C
#data 0x64E3420B		; addr: CE31850
#data 0xF3E69090		; addr: CE31854
#data 0xF2E6E038		; addr: CE31858
#data 0x8B03F325		; addr: CE3185C
#data 0xF3E6908A		; addr: CE31860
#data 0xFE37E038		; addr: CE31864

#align4
data_CE31868:
#data 0x64E384E6		; addr: CE31868
#data 0x600CD147		; addr: CE3186C
#data 0x4F269583		; addr: CE31870
#data 0x031E4008		; addr: CE31874
#data 0x432B35EC		; addr: CE31878
#data 0x6EF6		; addr: CE3187C

data_CE3187E:
#data 0x2FE6		; addr: CE3187E
#data 0x4F222FD6		; addr: CE31880
#data 0x90797FFC		; addr: CE31884
#data 0x2F526E43		; addr: CE31888
#data 0x600C00EC		; addr: CE3188C
#data 0x8B058806		; addr: CE31890
#data 0xE3109074		; addr: CE31894
#data 0x0E249271		; addr: CE31898
#data 0x0E347001		; addr: CE3189C

#align4
data_CE318A0:
#data 0xE50084E6		; addr: CE318A0
#data 0x7001D33A		; addr: CE318A4
#data 0x430B80E6		; addr: CE318A8
#data 0xD23964E3		; addr: CE318AC
#data 0x64E3420B		; addr: CE318B0
#data 0x00EC905F		; addr: CE318B4
#data 0x8802600C		; addr: CE318B8
#data 0xED008F1A		; addr: CE318BC
#data 0xE05CD135		; addr: CE318C0
#data 0x415AF2E6		; addr: CE318C4
#data 0xF30DD134		; addr: CE318C8
#data 0x415AF233		; addr: CE318CC
#data 0xF38DD133		; addr: CE318D0
#data 0xE060FE27		; addr: CE318D4
#data 0xF20DF1E6		; addr: CE318D8
#data 0x415AF123		; addr: CE318DC
#data 0xE06CFE17		; addr: CE318E0
#data 0xF10DF0E6		; addr: CE318E4
#data 0xFE07F013		; addr: CE318E8
#data 0xFE37E068		; addr: CE318EC
#data 0xE61BA009		; addr: CE318F0

#align4
data_CE318F4:
#data 0x430BD32B		; addr: CE318F4
#data 0xD22B64E3		; addr: CE318F8
#data 0x64E3420B		; addr: CE318FC
#data 0xE6099039		; addr: CE31900
#data 0x0ED4		; addr: CE31904

data_CE31906:
#data 0xD329		; addr: CE31906
#data 0x430BE515		; addr: CE31908
#data 0x903864E3		; addr: CE3190C
#data 0xD327E236		; addr: CE31910
#data 0x700B0E24		; addr: CE31914
#data 0x70F20ED5		; addr: CE31918
#data 0x70260ED4		; addr: CE3191C
#data 0x84E20ED6		; addr: CE31920
#data 0x600C6232		; addr: CE31924
#data 0x727C4000		; addr: CE31928
#data 0x7101012D		; addr: CE3192C
#data 0x62F20215		; addr: CE31930
#data 0x00096023		; addr: CE31934
#data 0x310CE107		; addr: CE31938
#data 0x60D321D0		; addr: CE3193C
#data 0x80260009		; addr: CE31940
#data 0x4F267F04		; addr: CE31944
#data 0x000B6DF6		; addr: CE31948
#data 0x6EF6		; addr: CE3194C
;-------------------------------------------------------------------------------

f_code_CE3194E:
mov.l r14,@-r15		; addr: CE3194E
mov.l r13,@-r15		; addr: CE31950
mov.l r12,@-r15		; addr: CE31952
sts.l pr,@-r15		; addr: CE31954
add 0xE8,r15		; addr: CE31956
mov.w @(data_CE31984,pc),r0 ; r0 set to 0x3F8		; addr: CE31958
mov r4,r14		; addr: CE3195A
mov 0x02,r3 ; r3 set to 0x02		; addr: CE3195C
mov.b r3,@(r0,r14) 		; addr: CE3195E
mov 0x05,r2 ; r2 set to 0x05		; addr: CE31960
mov.w @(data_CE31986,pc),r0 ; r0 set to 0x328		; addr: CE31962
mov.b r2,@(r0,r14) 		; addr: CE31964
mov.w @(data_CE3197C,pc),r0 ; r0 set to 0x255		; addr: CE31966
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE31968
extu.b r0,r0		; addr: CE3196A
cmp/eq 0x06,r0 		; addr: CE3196C
bf/s l_code_CE319B4		; addr: CE3196E
mov r5,r12		; addr: CE31970
bra l_code_CE319B6		; addr: CE31972
mov 0x02,r3		; addr: CE31974
#data 0x01F9		; addr: CE31976
#data 0x02A4041C		; addr: CE31978

data_CE3197C:
#data 0x0255		; addr: CE3197C
#data 0x00FF		; addr: CE3197E
#data 0x01A103F0		; addr: CE31980

data_CE31984:
#data 0x03F8		; addr: CE31984

data_CE31986:
#data 0x0328		; addr: CE31986
#data fn_extern_8C04FEA8		; addr: CE31988

#align4
ptr_CE3198C_to_ptr_CE33FC8_to_data_CE3187E:
#data ptr_CE33FC8_to_data_CE3187E		; addr: CE3198C
#data fn_extern_8C035162		; addr: CE31990
#data fn_extern_8C05218A		; addr: CE31994
#data 0x41800000		; addr: CE31998
#data 0x41000000		; addr: CE3199C
#data 0x42800000		; addr: CE319A0
#data fn_extern_8C052B4C		; addr: CE319A4
#data fn_extern_8C05115A		; addr: CE319A8
#data fn_extern_8C034E8C		; addr: CE319AC
#data extern_8C2896B0		; addr: CE319B0


l_code_CE319B4:
mov 0x00,r3 ; r3 set to 0x00		; addr: CE319B4

l_code_CE319B6:
mov.w @(data_CE31AE0,pc),r0 ; r0 set to 0x3F1, r0 set to 0x3F1		; addr: CE319B6
mov r15,r13		; addr: CE319B8
mov.b r3,@(r0,r14) 		; addr: CE319BA
mov.l @(ptr_CE31AF0_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEE		; addr: CE319BC
jsr @r3		; addr: CE319BE
mov r14,r4		; addr: CE319C0
exts.b r0,r0 ; r0 ??, r0 ??		; addr: CE319C2
cmp/pz r0		; addr: CE319C4
bf data_CE31A1C		; addr: CE319C6
mov.w @(data_CE31AE2,pc),r0 ; r0 set to 0x141, r0 set to 0x141		; addr: CE319C8
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???		; addr: CE319CA
tst r3,r3		; addr: CE319CC
bf l_code_CE319D4		; addr: CE319CE
bra l_code_CE31AD4		; addr: CE319D0
nop 		; addr: CE319D2

l_code_CE319D4:
mov 0x00,r4 ; r4 set to 0x00		; addr: CE319D4
mov.b r4,@(r0,r14) 		; addr: CE319D6
mov.w @(data_CE31AE4,pc),r0 ; r0 set to 0x3F0		; addr: CE319D8
mov.b r4,@(r0,r14) 		; addr: CE319DA
add 0x01,r0 ; r0 set to 0x3F1		; addr: CE319DC
mov.b r4,@(r0,r14) 		; addr: CE319DE
mov.w @(data_CE31AE6,pc),r0 ; r0 set to 0x1F9		; addr: CE319E0
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE319E2
extu.b r0,r0		; addr: CE319E4
cmp/eq 0x02,r0 		; addr: CE319E6
bf l_code_CE319F8		; addr: CE319E8
mova @(data_CE31AF4,pc),r0  ; r0 set to 0xCE31AF4		; addr: CE319EA
mov r13,r4 ; r4 ??? bc r13 is ???		; addr: CE319EC
fmov.s @r0,fr3		; addr: CE319EE
mova @(data_CE31AF8,pc),r0  ; r0 set to 0xCE31AF8		; addr: CE319F0
fmov.s fr3,@r4		; addr: CE319F2
bra l_code_CE31A04		; addr: CE319F4
fmov.s @r0,fr3		; addr: CE319F6

l_code_CE319F8:
mova @(data_CE31AFC,pc),r0  ; r0 init to 0xCE31AFC		; addr: CE319F8
mov r13,r4		; addr: CE319FA
fmov.s @r0,fr3		; addr: CE319FC
mova @(data_CE31B00,pc),r0  ; r0 set to 0xCE31B00		; addr: CE319FE
fmov.s fr3,@r4		; addr: CE31A00
fmov.s @r0,fr3		; addr: CE31A02

l_code_CE31A04:
mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04		; addr: CE31A04
mov.l @(ptr_CE31B04_to_fn_extern_8C050834,pc),r3 ; r3 set to 0x8C050834, r3 set to 0x8C050834		; addr: CE31A06
fmov.s fr3,@(r0,r4) 		; addr: CE31A08
mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08		; addr: CE31A0A
mov r13,r5		; addr: CE31A0C
fldi0 fr3		; addr: CE31A0E
mov 0x01,r6 ; r6 set to 0x01, r6 set to 0x01		; addr: CE31A10
fmov.s fr3,@(r0,r5) 		; addr: CE31A12
jsr @r3		; addr: CE31A14
mov r14,r4		; addr: CE31A16
bra l_code_CE31AD4		; addr: CE31A18
nop 		; addr: CE31A1A

#align4
data_CE31A1C:
#data 0x62E384E6		; addr: CE31A1C
#data 0x7234D339		; addr: CE31A20
#data 0x64D37001		; addr: CE31A24
#data 0xE03280E6		; addr: CE31A28
#data 0x61D381EE		; addr: CE31A2C
#data 0x80C4905A		; addr: CE31A30
#data 0x80C5E030		; addr: CE31A34
#data 0x80C1E040		; addr: CE31A38
#data 0x81C1E00D		; addr: CE31A3C
#data 0xE00C430B		; addr: CE31A40
#data 0xD330C731		; addr: CE31A44
#data 0xE004F408		; addr: CE31A48
#data 0x6143F346		; addr: CE31A4C
#data 0xF340710C		; addr: CE31A50
#data 0x9048F437		; addr: CE31A54
#data 0x723402EE		; addr: CE31A58
#data 0xE00C430B		; addr: CE31A5C
#data 0x05EE9043		; addr: CE31A60
#data 0x055C70ED		; addr: CE31A64
#data 0x2558655C		; addr: CE31A68
#data 0x740C8D04		; addr: CE31A6C
#data 0x00096053		; addr: CE31A70
#data 0x8B078801		; addr: CE31A74

#align4
data_CE31A78:
#data 0x03EE9037		; addr: CE31A78
#data 0xF3369036		; addr: CE31A7C
#data 0xF340E004		; addr: CE31A80
#data 0xF437A007		; addr: CE31A84

#align4
data_CE31A88:
#data 0xE004D121		; addr: CE31A88
#data 0x415AF246		; addr: CE31A8C
#data 0xF230F30D		; addr: CE31A90
#data 0xF427		; addr: CE31A94

data_CE31A96:
#data 0xD31F		; addr: CE31A96
#data 0x750C65D3		; addr: CE31A98
#data 0x64D3430B		; addr: CE31A9C
#data 0x4011600C		; addr: CE31AA0
#data 0x700F8900		; addr: CE31AA4

#align4
data_CE31AA8:
#data 0xE40FE3FC		; addr: CE31AA8
#data 0x2409403C		; addr: CE31AAC
#data 0x02ED901D		; addr: CE31AB0
#data 0x89032228		; addr: CE31AB4
#data 0x3048E010		; addr: CE31AB8
#data 0x2409E40F		; addr: CE31ABC

#align4
data_CE31AC0:
#data 0x2C4065C3		; addr: CE31AC0
#data 0x64E3B0D5		; addr: CE31AC4
#data 0xE600D213		; addr: CE31AC8
#data 0x6563E702		; addr: CE31ACC
#data 0x64E3420B		; addr: CE31AD0


l_code_CE31AD4:
add 0x18,r15		; addr: CE31AD4
lds.l @r15+,pr 		; addr: CE31AD6
mov.l @r15+,r12		; addr: CE31AD8
mov.l @r15+,r13		; addr: CE31ADA
rts 		; addr: CE31ADC
mov.l @r15+,r14		; addr: CE31ADE
;-------------------------------------------------------------------------------

data_CE31AE0:
#data 0x03F1		; addr: CE31AE0

data_CE31AE2:
#data 0x0141		; addr: CE31AE2

data_CE31AE4:
#data 0x03F0		; addr: CE31AE4

data_CE31AE6:
#data 0x01F9		; addr: CE31AE6
#data 0x020C00FF		; addr: CE31AE8
#data 0x0130041C		; addr: CE31AEC

#align4
ptr_CE31AF0_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE31AF0

data_CE31AF4:
#data 0xC0D55555		; addr: CE31AF4

#align4
data_CE31AF8:
#data 0x435EDB6D		; addr: CE31AF8

#align4
data_CE31AFC:
#data 0xC23AAAAA		; addr: CE31AFC

#align4
data_CE31B00:
#data 0x43340000		; addr: CE31B00

#align4
ptr_CE31B04_to_fn_extern_8C050834:
#data fn_extern_8C050834		; addr: CE31B04
#data extern_8C1294C8		; addr: CE31B08
#data 0x42CC0000		; addr: CE31B0C
#data 0x42600000		; addr: CE31B10
#data extern_8C03362C		; addr: CE31B14
#data fn_extern_8C068EE4		; addr: CE31B18

#align4
data_CE31B1C:
#data 0xE3029091		; addr: CE31B1C
#data 0x6E432FE6		; addr: CE31B20
#data 0x2FD6E205		; addr: CE31B24
#data 0x0E344F22		; addr: CE31B28
#data 0x90896D53		; addr: CE31B2C
#data 0x0E2465D3		; addr: CE31B30
#data 0x80D49087		; addr: CE31B34
#data 0x64E3B0B2		; addr: CE31B38
#data 0x420BD244		; addr: CE31B3C
#data 0x600E64E3		; addr: CE31B40
#data 0x89024011		; addr: CE31B44
#data 0xB0C665D3		; addr: CE31B48
#data 0x64E3		; addr: CE31B4C

data_CE31B4E:
#data 0x84D5		; addr: CE31B4E
#data 0x890A2008		; addr: CE31B50
#data 0x430BD33F		; addr: CE31B54
#data 0x200864E3		; addr: CE31B58
#data 0x84D58905		; addr: CE31B5C
#data 0x80D570FF		; addr: CE31B60
#data 0x700185EE		; addr: CE31B64
#data 0x81EE		; addr: CE31B68

data_CE31B6A:
#data 0x85EE		; addr: CE31B6A
#data 0x81EE70FF		; addr: CE31B6C
#data 0x4011600F		; addr: CE31B70
#data 0x84E68906		; addr: CE31B74
#data 0x80E67001		; addr: CE31B78
#data 0x81EEE008		; addr: CE31B7C
#data 0x80D1E000		; addr: CE31B80

#align4
data_CE31B84:
#data 0x6DF64F26		; addr: CE31B84
#data 0x6EF6000B		; addr: CE31B88
;-------------------------------------------------------------------------------

f_code_CE31B8C:
mov.w @(data_CE31C42,pc),r0 ; r0 set to 0x3F8		; addr: CE31B8C
mov 0x02,r3 ; r3 set to 0x02		; addr: CE31B8E
mov.l r14,@-r15		; addr: CE31B90
mov r4,r14		; addr: CE31B92
mov 0x05,r2 ; r2 set to 0x05		; addr: CE31B94
sts.l pr,@-r15		; addr: CE31B96
mov.b r3,@(r0,r14) 		; addr: CE31B98
mov.w @(data_CE31C44,pc),r0 ; r0 set to 0x328		; addr: CE31B9A
mov.b r2,@(r0,r14) 		; addr: CE31B9C
mov.w @(data_CE31C46,pc),r0 ; r0 set to 0xFF		; addr: CE31B9E
mov.b r0,@(0x04,r5) 		; addr: CE31BA0
mov.w @(0x1C,r14),r0 		; addr: CE31BA2
add 0xFF,r0 ; r0 set to 0xFE		; addr: CE31BA4
mov.w r0,@(0x1C,r14) 		; addr: CE31BA6
exts.w r0,r0 ; r0 ??		; addr: CE31BA8
cmp/pz r0		; addr: CE31BAA
bt l_code_CE31BFE		; addr: CE31BAC
mov.w @(data_CE31C48,pc),r0 ; r0 set to 0x3F9		; addr: CE31BAE
mov 0x00,r4 ; r4 set to 0x00		; addr: CE31BB0
mov.b r4,@(r0,r14) 		; addr: CE31BB2
add 0xFF,r0 ; r0 set to 0x3F8		; addr: CE31BB4
mov.b r4,@(r0,r14) 		; addr: CE31BB6
mov.w @(data_CE31C4A,pc),r0 ; r0 set to 0x327		; addr: CE31BB8
mov.b r4,@(r0,r14) 		; addr: CE31BBA
add 0x01,r0 ; r0 set to 0x328		; addr: CE31BBC
mov.b r4,@(r0,r14) 		; addr: CE31BBE
add 0xFF,r0 ; r0 set to 0x327		; addr: CE31BC0
mov.b r4,@(r0,r14) 		; addr: CE31BC2
add 0x01,r0 ; r0 set to 0x328		; addr: CE31BC4
mov.b r4,@(r0,r14) 		; addr: CE31BC6
mov.b @(0x06,r14),r0 		; addr: CE31BC8
add 0x01,r0 ; r0 set to 0x329		; addr: CE31BCA
mov.b r0,@(0x06,r14) 		; addr: CE31BCC
mov r4,r0 ; r0 set to 0x00		; addr: CE31BCE
nop 		; addr: CE31BD0
mov.b r0,@(0x04,r5) 		; addr: CE31BD2
mov.w @(data_CE31C4C,pc),r0 ; r0 set to 0x1F9		; addr: CE31BD4
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE31BD6
extu.b r0,r0		; addr: CE31BD8
cmp/eq 0x02,r0 		; addr: CE31BDA
bf l_code_CE31BE2		; addr: CE31BDC
bra l_code_CE31BE4		; addr: CE31BDE
mov 0x2C,r3		; addr: CE31BE0

l_code_CE31BE2:
mov 0x1A,r3 ; r3 set to 0x1A		; addr: CE31BE2

l_code_CE31BE4:
mov.w @(data_CE31C4E,pc),r0 ; r0 set to 0x158, r0 set to 0x158		; addr: CE31BE4
mov 0x15,r5 ; r5 set to 0x15, r5 set to 0x15		; addr: CE31BE6
mov.b r3,@(r0,r14) 		; addr: CE31BE8
mov.l @(ptr_CE31C58_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8C		; addr: CE31BEA
mov.b @(r0,r14),r6		; addr: CE31BEC
jsr @r3		; addr: CE31BEE
mov r14,r4		; addr: CE31BF0
lds.l @r15+,pr 		; addr: CE31BF2
mov.l @(ptr_CE31C5C_to_fn_extern_8C035162,pc),r2 ; r2 set to 0x8C035162, r2 set to 0x8C035162		; addr: CE31BF4
mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00		; addr: CE31BF6
mov r14,r4		; addr: CE31BF8
jmp @r2		; addr: CE31BFA
mov.l @r15+,r14		; addr: CE31BFC

l_code_CE31BFE:
lds.l @r15+,pr 		; addr: CE31BFE
rts 		; addr: CE31C00
mov.l @r15+,r14		; addr: CE31C02
;-------------------------------------------------------------------------------

f_code_CE31C04:
mov.l r14,@-r15		; addr: CE31C04
sts.l pr,@-r15		; addr: CE31C06
mov.l @(ptr_CE31C50_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE31C08
jsr @r3		; addr: CE31C0A
mov r4,r14		; addr: CE31C0C
exts.b r0,r0		; addr: CE31C0E
cmp/pz r0		; addr: CE31C10
bt l_code_CE31C6C		; addr: CE31C12
mov.l @(ptr_CE31C60_to_fn_extern_8C042008,pc),r3 ; r3 set to 0x8C042008		; addr: CE31C14
mov 0x2B,r5 ; r5 set to 0x2B		; addr: CE31C16
jsr @r3		; addr: CE31C18
mov r14,r4		; addr: CE31C1A
mov.l @(ptr_CE31C5C_to_fn_extern_8C035162,pc),r2 ; r2 set to 0x8C035162		; addr: CE31C1C
mov 0x00,r5 ; r5 set to 0x00		; addr: CE31C1E
jsr @r2		; addr: CE31C20
mov r14,r4		; addr: CE31C22
mov.w @(data_CE31C4C,pc),r0 ; r0 set to 0x1F9		; addr: CE31C24
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE31C26
extu.b r0,r0		; addr: CE31C28
cmp/eq 0x02,r0 		; addr: CE31C2A
bf l_code_CE31C38		; addr: CE31C2C
lds.l @r15+,pr 		; addr: CE31C2E
mov.l @(ptr_CE31C64_to_fn_extern_8C05176E,pc),r2 ; r2 set to 0x8C05176E		; addr: CE31C30
mov r14,r4		; addr: CE31C32
jmp @r2		; addr: CE31C34
mov.l @r15+,r14		; addr: CE31C36

l_code_CE31C38:
lds.l @r15+,pr 		; addr: CE31C38
mov.l @(ptr_CE31C68_to_fn_extern_8C051648,pc),r2 ; r2 set to 0x8C051648		; addr: CE31C3A
mov r14,r4		; addr: CE31C3C
jmp @r2		; addr: CE31C3E
mov.l @r15+,r14		; addr: CE31C40

data_CE31C42:
#data 0x03F8		; addr: CE31C42

data_CE31C44:
#data 0x0328		; addr: CE31C44

data_CE31C46:
#data 0x00FF		; addr: CE31C46

data_CE31C48:
#data 0x03F9		; addr: CE31C48

data_CE31C4A:
#data 0x0327		; addr: CE31C4A

data_CE31C4C:
#data 0x01F9		; addr: CE31C4C

data_CE31C4E:
#data 0x0158		; addr: CE31C4E

#align4
ptr_CE31C50_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE31C50
#data extern_8C055D54		; addr: CE31C54

#align4
ptr_CE31C58_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE31C58

ptr_CE31C5C_to_fn_extern_8C035162:
#data fn_extern_8C035162		; addr: CE31C5C

ptr_CE31C60_to_fn_extern_8C042008:
#data fn_extern_8C042008		; addr: CE31C60

ptr_CE31C64_to_fn_extern_8C05176E:
#data fn_extern_8C05176E		; addr: CE31C64

ptr_CE31C68_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE31C68


l_code_CE31C6C:
lds.l @r15+,pr 		; addr: CE31C6C
rts 		; addr: CE31C6E
mov.l @r15+,r14		; addr: CE31C70
;-------------------------------------------------------------------------------

data_CE31C72:
#data 0x9079		; addr: CE31C72
#data 0x6E432FE6		; addr: CE31C74
#data 0x600C00EC		; addr: CE31C78
#data 0x8B048802		; addr: CE31C7C
#data 0x90726250		; addr: CE31C80
#data 0xA004721C		; addr: CE31C84
#data 0x0E24		; addr: CE31C88

data_CE31C8A:
#data 0x6150		; addr: CE31C8A
#data 0x710A906D		; addr: CE31C8C
#data 0x0E14		; addr: CE31C90

data_CE31C92:
#data 0x906A		; addr: CE31C92
#data 0xD33764E3		; addr: CE31C94
#data 0x06ECE515		; addr: CE31C98
#data 0x6EF6432B		; addr: CE31C9C

#align4
fn_data_CE31CA0:
#data 0x84572FE6		; addr: CE31CA0
#data 0x805770FF		; addr: CE31CA4
#data 0x4011600E		; addr: CE31CA8
#data 0xE0018913		; addr: CE31CAC
#data 0xE0258057		; addr: CE31CB0
#data 0x84560E4C		; addr: CE31CB4
#data 0xCA016EEC		; addr: CE31CB8
#data 0x600E8056		; addr: CE31CBC
#data 0x20084E00		; addr: CE31CC0
#data 0x7E508D01		; addr: CE31CC4
#data 0x7E01		; addr: CE31CC8

data_CE31CCA:
#data 0xD22B		; addr: CE31CCA
#data 0xE701E500		; addr: CE31CCC
#data 0x422B66E3		; addr: CE31CD0
#data 0x6EF6		; addr: CE31CD4

data_CE31CD6:
#data 0x000B		; addr: CE31CD6
#data 0x6EF6		; addr: CE31CD8
;-------------------------------------------------------------------------------

data_CE31CDA:
#data 0x9047		; addr: CE31CDA
#data 0x9346E2F6		; addr: CE31CDC
#data 0x064D2FE6		; addr: CE31CE0
#data 0x666DD025		; addr: CE31CE4
#data 0x462C2639		; addr: CE31CE8
#data 0x066C666E		; addr: CE31CEC
#data 0x4E116E6E		; addr: CE31CF0
#data 0x62508B16		; addr: CE31CF4
#data 0x3E20622C		; addr: CE31CF8
#data 0x63508912		; addr: CE31CFC
#data 0x60E3633C		; addr: CE31D00
#data 0x30380009		; addr: CE31D04
#data 0xC90FE308		; addr: CE31D08
#data 0x89033033		; addr: CE31D0C
#data 0x71016150		; addr: CE31D10
#data 0x2510A003		; addr: CE31D14

#align4
data_CE31D18:
#data 0x70FF6050		; addr: CE31D18
#data 0x2500		; addr: CE31D1C

data_CE31D1E:
#data 0x6050		; addr: CE31D1E
#data 0x2500C90F		; addr: CE31D20

#align4
data_CE31D24:
#data 0x6EF6AFA5		; addr: CE31D24

#align4
data_CE31D28:
#data 0x2FE6901E		; addr: CE31D28
#data 0x4F226E43		; addr: CE31D2C
#data 0x600C00EC		; addr: CE31D30
#data 0x8B0C8802		; addr: CE31D34
#data 0x420BD211		; addr: CE31D38
#data 0x901764E3		; addr: CE31D3C
#data 0xE038F3E6		; addr: CE31D40
#data 0xF325F2E6		; addr: CE31D44
#data 0x90118B03		; addr: CE31D48
#data 0xE038F3E6		; addr: CE31D4C
#data 0xFE37		; addr: CE31D50

data_CE31D52:
#data 0x84E6		; addr: CE31D52
#data 0xD10B64E3		; addr: CE31D54
#data 0x950A600C		; addr: CE31D58
#data 0x40084F26		; addr: CE31D5C
#data 0x35EC031E		; addr: CE31D60
#data 0x6EF6432B		; addr: CE31D64
#data 0x015801F9		; addr: CE31D68
#data 0x3C00034A		; addr: CE31D6C
#data 0x02A4041C		; addr: CE31D70
#data fn_extern_8C034E8C		; addr: CE31D74
#data fn_extern_8C03544C		; addr: CE31D78

#align4
ptr_CE31D7C_to_data_CE33FDC:
#data data_CE33FDC		; addr: CE31D7C
#data fn_extern_8C04FEA8		; addr: CE31D80

#align4
ptr_CE31D84_to_ptr_CE33FEC_to_data_CE31D88:
#data ptr_CE33FEC_to_data_CE31D88		; addr: CE31D84

data_CE31D88:
#data 0x2FE69078		; addr: CE31D88
#data 0x2FD66E43		; addr: CE31D8C
#data 0x00EC4F22		; addr: CE31D90
#data 0x8806600C		; addr: CE31D94
#data 0x90718B05		; addr: CE31D98
#data 0x926EE310		; addr: CE31D9C
#data 0x70010E24		; addr: CE31DA0
#data 0x0E34		; addr: CE31DA4

data_CE31DA6:
#data 0x84E6		; addr: CE31DA6
#data 0xD338E500		; addr: CE31DA8
#data 0x80E67001		; addr: CE31DAC
#data 0x64E3430B		; addr: CE31DB0
#data 0x420BD236		; addr: CE31DB4
#data 0x906264E3		; addr: CE31DB8
#data 0x600C00EC		; addr: CE31DBC
#data 0x8F1A8802		; addr: CE31DC0
#data 0xD133ED00		; addr: CE31DC4
#data 0xF2E6E05C		; addr: CE31DC8
#data 0xD132415A		; addr: CE31DCC
#data 0xF233F30D		; addr: CE31DD0
#data 0xD131415A		; addr: CE31DD4
#data 0xFE27F38D		; addr: CE31DD8
#data 0xF1E6E060		; addr: CE31DDC
#data 0xF123F20D		; addr: CE31DE0
#data 0xFE17415A		; addr: CE31DE4
#data 0xF0E6E06C		; addr: CE31DE8
#data 0xF013F10D		; addr: CE31DEC
#data 0xE068FE07		; addr: CE31DF0
#data 0xA014FE37		; addr: CE31DF4
#data 0xE609		; addr: CE31DF8

data_CE31DFA:
#data 0xD229		; addr: CE31DFA
#data 0x64E3420B		; addr: CE31DFC
#data 0x430BD328		; addr: CE31E00
#data 0x903C64E3		; addr: CE31E04
#data 0x0ED466D3		; addr: CE31E08
#data 0x04EC705C		; addr: CE31E0C
#data 0x8805604C		; addr: CE31E10
#data 0x64038D04		; addr: CE31E14
#data 0x00096043		; addr: CE31E18
#data 0x8B008804		; addr: CE31E1C

data_CE31E20:
#data 0xE608		; addr: CE31E20

data_CE31E22:
#data 0x902F		; addr: CE31E22
#data 0xE516E338		; addr: CE31E24
#data 0x0E3464E3		; addr: CE31E28
#data 0x0ED5700B		; addr: CE31E2C
#data 0x0ED470F2		; addr: CE31E30
#data 0xD31C7026		; addr: CE31E34
#data 0x84E20ED6		; addr: CE31E38
#data 0x600C6232		; addr: CE31E3C
#data 0x727C4000		; addr: CE31E40
#data 0x7101012D		; addr: CE31E44
#data 0x4F260215		; addr: CE31E48
#data 0x6DF6D217		; addr: CE31E4C
#data 0x6EF6422B		; addr: CE31E50


f_code_CE31E54:
mov.l r14,@-r15		; addr: CE31E54
mov.l r13,@-r15		; addr: CE31E56
mov.l r12,@-r15		; addr: CE31E58
sts.l pr,@-r15		; addr: CE31E5A
add 0xF4,r15		; addr: CE31E5C
mov.w @(data_CE31E86,pc),r0 ; r0 set to 0x3F8		; addr: CE31E5E
mov r4,r14		; addr: CE31E60
mov 0x02,r3 ; r3 set to 0x02		; addr: CE31E62
mov.b r3,@(r0,r14) 		; addr: CE31E64
mov 0x05,r2 ; r2 set to 0x05		; addr: CE31E66
mov.w @(data_CE31E88,pc),r0 ; r0 set to 0x328		; addr: CE31E68
mov.b r2,@(r0,r14) 		; addr: CE31E6A
mov.w @(data_CE31E7C,pc),r0 ; r0 set to 0x255		; addr: CE31E6C
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE31E6E
extu.b r0,r0		; addr: CE31E70
cmp/eq 0x06,r0 		; addr: CE31E72
bf/s l_code_CE31EB0		; addr: CE31E74
mov r5,r12		; addr: CE31E76
bra l_code_CE31EB2		; addr: CE31E78
mov 0x02,r3		; addr: CE31E7A

data_CE31E7C:
#data 0x0255		; addr: CE31E7C
#data 0x00FF		; addr: CE31E7E
#data 0x01F903F0		; addr: CE31E80
#data 0x01A1		; addr: CE31E84

data_CE31E86:
#data 0x03F8		; addr: CE31E86

data_CE31E88:
#data 0x0328		; addr: CE31E88
#data 0x0000		; addr: CE31E8A
#data fn_extern_8C035162		; addr: CE31E8C
#data fn_extern_8C05218A		; addr: CE31E90
#data 0x41800000		; addr: CE31E94
#data 0x41000000		; addr: CE31E98
#data 0x42800000		; addr: CE31E9C
#data fn_extern_8C052B4C		; addr: CE31EA0
#data fn_extern_8C05115A		; addr: CE31EA4
#data extern_8C2896B0		; addr: CE31EA8
#data fn_extern_8C034E8C		; addr: CE31EAC


l_code_CE31EB0:
mov 0x00,r3 ; r3 set to 0x00		; addr: CE31EB0

l_code_CE31EB2:
mov.w @(data_CE31F46,pc),r0 ; r0 set to 0x3F1, r0 set to 0x3F1		; addr: CE31EB2
mov 0x00,r13 ; r13 set to 0x00, r13 set to 0x00		; addr: CE31EB4
mov.b r3,@(r0,r14) 		; addr: CE31EB6
mov.l @(ptr_CE31F50_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEE		; addr: CE31EB8
jsr @r3		; addr: CE31EBA
mov r14,r4		; addr: CE31EBC
exts.b r0,r0 ; r0 ??, r0 ??		; addr: CE31EBE
cmp/pz r0		; addr: CE31EC0
bf l_code_CE31F0E		; addr: CE31EC2
mov.w @(data_CE31F48,pc),r0 ; r0 set to 0x141, r0 set to 0x141		; addr: CE31EC4
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???		; addr: CE31EC6
tst r3,r3		; addr: CE31EC8
bt l_code_CE31F3A		; addr: CE31ECA
mov.b r13,@(r0,r14) 		; addr: CE31ECC
mov.w @(data_CE31F4A,pc),r0 ; r0 set to 0x3F0, r0 set to 0x3F0		; addr: CE31ECE
mov.b r13,@(r0,r14) 		; addr: CE31ED0
add 0x01,r0 ; r0 set to 0x3F1, r0 set to 0x3F1		; addr: CE31ED2
mov.b r13,@(r0,r14) 		; addr: CE31ED4
mov.w @(data_CE31F4C,pc),r0 ; r0 set to 0x1F9, r0 set to 0x1F9		; addr: CE31ED6
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???		; addr: CE31ED8
extu.b r0,r0		; addr: CE31EDA
cmp/eq 0x02,r0 		; addr: CE31EDC
bf l_code_CE31EEC		; addr: CE31EDE
mova @(data_CE31F54,pc),r0  ; r0 set to 0xCE31F54, r0 set to 0xCE31F54		; addr: CE31EE0
fmov.s @r0,fr3		; addr: CE31EE2
mova @(data_CE31F58,pc),r0  ; r0 set to 0xCE31F58, r0 set to 0xCE31F58		; addr: CE31EE4
fmov.s fr3,@r15		; addr: CE31EE6
bra l_code_CE31EF6		; addr: CE31EE8
fmov.s @r0,fr3		; addr: CE31EEA

l_code_CE31EEC:
mova @(data_CE31F5C,pc),r0  ; r0 init to 0xCE31F5C		; addr: CE31EEC
fmov.s @r0,fr3		; addr: CE31EEE
mova @(data_CE31F60,pc),r0  ; r0 set to 0xCE31F60		; addr: CE31EF0
fmov.s fr3,@r15		; addr: CE31EF2
fmov.s @r0,fr3		; addr: CE31EF4

l_code_CE31EF6:
mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04		; addr: CE31EF6
mov.l @(ptr_CE31F64_to_fn_extern_8C050834,pc),r3 ; r3 set to 0x8C050834, r3 set to 0x8C050834		; addr: CE31EF8
fmov.s fr3,@(r0,r15) 		; addr: CE31EFA
mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08		; addr: CE31EFC
fldi0 fr3		; addr: CE31EFE
mov r15,r5		; addr: CE31F00
fmov.s fr3,@(r0,r15) 		; addr: CE31F02
mov 0x01,r6 ; r6 set to 0x01, r6 set to 0x01		; addr: CE31F04
jsr @r3		; addr: CE31F06
mov r14,r4		; addr: CE31F08
bra l_code_CE31F3A		; addr: CE31F0A
nop 		; addr: CE31F0C

l_code_CE31F0E:
mov.b @(0x06,r14),r0 		; addr: CE31F0E
add 0x01,r0		; addr: CE31F10
mov.b r0,@(0x06,r14) 		; addr: CE31F12
mov r13,r0		; addr: CE31F14
nop 		; addr: CE31F16
mov.l @(ptr_CE31F68_to_fn_extern_8C0699DC,pc),r3 ; r3 set to 0x8C0699DC		; addr: CE31F18
mov 0x00,r5 ; r5 set to 0x00		; addr: CE31F1A
mov.b r0,@(0x07,r14) 		; addr: CE31F1C
mov.b r0,@(0x01,r12) 		; addr: CE31F1E
jsr @r3		; addr: CE31F20
mov r14,r4		; addr: CE31F22
mov r13,r0		; addr: CE31F24
nop 		; addr: CE31F26
mov.b r0,@(0x04,r12) 		; addr: CE31F28
mov 0x3C,r0 ; r0 set to 0x3C		; addr: CE31F2A
mov.w r0,@(0x1C,r14) 		; addr: CE31F2C
mov 0x30,r0 ; r0 set to 0x30		; addr: CE31F2E
mov.l @(ptr_CE31F6C_to_fn_extern_8C04223A,pc),r3 ; r3 set to 0x8C04223A		; addr: CE31F30
mov 0x48,r5 ; r5 set to 0x48		; addr: CE31F32
mov.b r0,@(0x05,r12) 		; addr: CE31F34
jsr @r3		; addr: CE31F36
mov r14,r4		; addr: CE31F38

l_code_CE31F3A:
add 0x0C,r15		; addr: CE31F3A
lds.l @r15+,pr 		; addr: CE31F3C
mov.l @r15+,r12		; addr: CE31F3E
mov.l @r15+,r13		; addr: CE31F40
rts 		; addr: CE31F42
mov.l @r15+,r14		; addr: CE31F44
;-------------------------------------------------------------------------------

data_CE31F46:
#data 0x03F1		; addr: CE31F46

data_CE31F48:
#data 0x0141		; addr: CE31F48

data_CE31F4A:
#data 0x03F0		; addr: CE31F4A

data_CE31F4C:
#data 0x01F9		; addr: CE31F4C
#data 0x0000		; addr: CE31F4E

#align4
ptr_CE31F50_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE31F50

data_CE31F54:
#data 0xC0D55555		; addr: CE31F54

#align4
data_CE31F58:
#data 0x435EDB6D		; addr: CE31F58

#align4
data_CE31F5C:
#data 0xC23AAAAA		; addr: CE31F5C

#align4
data_CE31F60:
#data 0x43340000		; addr: CE31F60

#align4
ptr_CE31F64_to_fn_extern_8C050834:
#data fn_extern_8C050834		; addr: CE31F64

ptr_CE31F68_to_fn_extern_8C0699DC:
#data fn_extern_8C0699DC		; addr: CE31F68

ptr_CE31F6C_to_fn_extern_8C04223A:
#data fn_extern_8C04223A		; addr: CE31F6C

data_CE31F70:
#data 0xE302907C		; addr: CE31F70
#data 0x6E432FE6		; addr: CE31F74
#data 0xE2052FD6		; addr: CE31F78
#data 0x6C532FC6		; addr: CE31F7C
#data 0x0E344F22		; addr: CE31F80
#data 0xD33D9073		; addr: CE31F84
#data 0x90710E24		; addr: CE31F88
#data 0x80C4430B		; addr: CE31F8C
#data 0x420BD23B		; addr: CE31F90
#data 0x65C364E3		; addr: CE31F94
#data 0x64E3BE82		; addr: CE31F98
#data 0x200884C5		; addr: CE31F9C
#data 0xD338890A		; addr: CE31FA0
#data 0x64E3430B		; addr: CE31FA4
#data 0x89052008		; addr: CE31FA8
#data 0x70FF84C5		; addr: CE31FAC
#data 0x85EE80C5		; addr: CE31FB0
#data 0x81EE7001		; addr: CE31FB4

#align4
data_CE31FB8:
#data 0x70FF85EE		; addr: CE31FB8
#data 0x600F81EE		; addr: CE31FBC
#data 0x892B4011		; addr: CE31FC0
#data 0xED0084E6		; addr: CE31FC4
#data 0x7001E301		; addr: CE31FC8
#data 0x905080E6		; addr: CE31FCC
#data 0x70FF0ED4		; addr: CE31FD0
#data 0x904D0ED4		; addr: CE31FD4
#data 0x70010ED4		; addr: CE31FD8
#data 0x70FF0ED4		; addr: CE31FDC
#data 0x70010ED4		; addr: CE31FE0
#data 0x90460ED4		; addr: CE31FE4
#data 0x90450E34		; addr: CE31FE8
#data 0x600C00EC		; addr: CE31FEC
#data 0x8B028802		; addr: CE31FF0
#data 0xE20A903F		; addr: CE31FF4
#data 0x0E24		; addr: CE31FF8

data_CE31FFA:
#data 0x903C		; addr: CE31FFA
#data 0xD322E516		; addr: CE31FFC
#data 0x430B06EC		; addr: CE32000
#data 0x60D364E3		; addr: CE32004
#data 0x80C40009		; addr: CE32008
#data 0x4F26E500		; addr: CE3200C
#data 0x64E3D31E		; addr: CE32010
#data 0x6DF66CF6		; addr: CE32014
#data 0x6EF6432B		; addr: CE32018

#align4
data_CE3201C:
#data 0x6CF64F26		; addr: CE3201C
#data 0x000B6DF6		; addr: CE32020
#data 0x6EF6		; addr: CE32024
;-------------------------------------------------------------------------------

f_code_CE32026:
mov.l r14,@-r15		; addr: CE32026
sts.l pr,@-r15		; addr: CE32028
mov.l @(ptr_CE32080_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE3202A
jsr @r3		; addr: CE3202C
mov r4,r14		; addr: CE3202E
exts.b r0,r0		; addr: CE32030
cmp/pz r0		; addr: CE32032
bt l_code_CE32054		; addr: CE32034
mov.w @(data_CE32078,pc),r0 ; r0 set to 0x1F9		; addr: CE32036
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE32038
extu.b r0,r0		; addr: CE3203A
cmp/eq 0x02,r0 		; addr: CE3203C
bf l_code_CE3204A		; addr: CE3203E
lds.l @r15+,pr 		; addr: CE32040
mov.l @(ptr_CE32090_to_fn_extern_8C05176E,pc),r2 ; r2 set to 0x8C05176E		; addr: CE32042
mov r14,r4		; addr: CE32044
jmp @r2		; addr: CE32046
mov.l @r15+,r14		; addr: CE32048

l_code_CE3204A:
lds.l @r15+,pr 		; addr: CE3204A
mov.l @(ptr_CE32094_to_fn_extern_8C051648,pc),r2 ; r2 set to 0x8C051648		; addr: CE3204C
mov r14,r4		; addr: CE3204E
jmp @r2		; addr: CE32050
mov.l @r15+,r14		; addr: CE32052

l_code_CE32054:
lds.l @r15+,pr 		; addr: CE32054
rts 		; addr: CE32056
mov.l @r15+,r14		; addr: CE32058
;-------------------------------------------------------------------------------

f_code_CE3205A:
mov r4,r3		; addr: CE3205A
mov.l @(ptr_CE32098_to_ptr_CE33FFC_to_f_code_CE3209C,pc),r1 ; r1 set to 0xCE33FFC		; addr: CE3205C
mov.l r4,@-r15		; addr: CE3205E
mov.b @(0x06,r3),r0 		; addr: CE32060
extu.b r0,r0		; addr: CE32062
shll2 r0		; addr: CE32064
mov.l @(r0,r1),r3		; addr: CE32066
jmp @r3		; addr: CE32068
add 0x04,r15		; addr: CE3206A
#data 0x032803F8		; addr: CE3206C
#data 0x03F900FF		; addr: CE32070
#data 0x01580327		; addr: CE32074

data_CE32078:
#data 0x01F9		; addr: CE32078
#data 0x0000		; addr: CE3207A
#data extern_8C03319E		; addr: CE3207C

#align4
ptr_CE32080_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE32080
#data extern_8C055D54		; addr: CE32084
#data fn_extern_8C034E8C		; addr: CE32088
#data fn_extern_8C035162		; addr: CE3208C

#align4
ptr_CE32090_to_fn_extern_8C05176E:
#data fn_extern_8C05176E		; addr: CE32090

ptr_CE32094_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE32094

ptr_CE32098_to_ptr_CE33FFC_to_f_code_CE3209C:
#data ptr_CE33FFC_to_f_code_CE3209C		; addr: CE32098


f_code_CE3209C:
mov.l r14,@-r15		; addr: CE3209C
mov.l r13,@-r15		; addr: CE3209E
sts.l pr,@-r15		; addr: CE320A0
add 0xF8,r15		; addr: CE320A2
mov r4,r14		; addr: CE320A4
mov.b @(0x06,r14),r0 		; addr: CE320A6
mov.l @(ptr_CE321AC_to_fn_extern_8C035162,pc),r3 ; r3 set to 0x8C035162		; addr: CE320A8
mov 0x00,r13 ; r13 set to 0x00		; addr: CE320AA
add 0x01,r0		; addr: CE320AC
mov r13,r5 ; r5 set to 0x00		; addr: CE320AE
mov.b r0,@(0x06,r14) 		; addr: CE320B0
jsr @r3		; addr: CE320B2
mov r14,r4		; addr: CE320B4
mov.l @(ptr_CE321B0_to_fn_extern_8C05218A,pc),r2 ; r2 set to 0x8C05218A		; addr: CE320B6
jsr @r2		; addr: CE320B8
mov r14,r4		; addr: CE320BA
mov.l @(ptr_CE321B4_to_fn_extern_8C05115A,pc),r3 ; r3 set to 0x8C05115A		; addr: CE320BC
jsr @r3		; addr: CE320BE
mov r14,r4		; addr: CE320C0
mov.l @(ptr_CE321B8_to_fn_extern_8C056DE4,pc),r2 ; r2 set to 0x8C056DE4		; addr: CE320C2
mov 0x0A,r5 ; r5 set to 0x0A		; addr: CE320C4
jsr @r2		; addr: CE320C6
mov r14,r4		; addr: CE320C8
mov.w @(data_CE321A2,pc),r0 ; r0 set to 0x1A3		; addr: CE320CA
mov r15,r6		; addr: CE320CC
mov.l @(ptr_CE321BC_to_data_CE34010,pc),r5 ; r5 set to 0xCE34010		; addr: CE320CE
mov r6,r1		; addr: CE320D0
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE320D2
mov r1,r4		; addr: CE320D4
add 0x04,r4		; addr: CE320D6
extu.b r0,r0		; addr: CE320D8
shll r0		; addr: CE320DA
add 0x01,r0		; addr: CE320DC
mov.w r0,@(0x1C,r14) 		; addr: CE320DE
mov.w @(data_CE321A4,pc),r0 ; r0 set to 0x352		; addr: CE320E0
mov.w r13,@(r0,r14) 		; addr: CE320E2
mov.w @(data_CE321A2,pc),r0 ; r0 set to 0x1A3		; addr: CE320E4
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???		; addr: CE320E6
mova @(data_CE321C0,pc),r0  ; r0 set to 0xCE321C0		; addr: CE320E8
extu.b r3,r3		; addr: CE320EA
shll2 r3		; addr: CE320EC
shll r3		; addr: CE320EE
add r5,r3		; addr: CE320F0
fmov.s @r3,fr3		; addr: CE320F2
fmov.s fr3,@r1		; addr: CE320F4
fmov.s @r0,fr2 ; r2 ??		; addr: CE320F6
mov.w @(data_CE321A2,pc),r0 ; r0 set to 0x1A3		; addr: CE320F8
fmov.s fr2,@r4		; addr: CE320FA
mov.b @(r0,r14),r3		; addr: CE320FC
mov 0x04,r0 ; r0 set to 0x04		; addr: CE320FE
extu.b r3,r3		; addr: CE32100
shll2 r3		; addr: CE32102
shll r3		; addr: CE32104
add r3,r5 ; r5 ??? bc r3 is ???		; addr: CE32106
fmov.s @(r0,r5),fr3		; addr: CE32108
mov 0x60,r0 ; r0 set to 0x60		; addr: CE3210A
fmov.s fr3,@(r0,r14) 		; addr: CE3210C
mova @(data_CE321C4,pc),r0  ; r0 set to 0xCE321C4		; addr: CE3210E
fmov.s @r0,fr3		; addr: CE32110
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE32112
fmov.s fr3,@(r0,r14) 		; addr: CE32114
mov.w @(data_CE321A6,pc),r0 ; r0 set to 0x1D2		; addr: CE32116
mov.b @(r0,r14),r3		; addr: CE32118
tst r3,r3		; addr: CE3211A
bf l_code_CE3213A		; addr: CE3211C
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE3211E
fmov.s @r1,fr3		; addr: CE32120
fmov.s @(r0,r14),fr2		; addr: CE32122
fsub fr3,fr2		; addr: CE32124
fldi0 fr3		; addr: CE32126
fmov.s fr2,@(r0,r14) 		; addr: CE32128
mov 0x68,r0 ; r0 set to 0x68		; addr: CE3212A
fmov.s @(r0,r14),fr2		; addr: CE3212C
fcmp/gt fr2,fr3		; addr: CE3212E
bt data_CE32158		; addr: CE32130
fmov.s @(r0,r14),fr1		; addr: CE32132
fmov.s @r4,fr2		; addr: CE32134
bra l_code_CE32154		; addr: CE32136
fsub fr2,fr1		; addr: CE32138

l_code_CE3213A:
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE3213A
fmov.s @r1,fr3		; addr: CE3213C
fmov.s @(r0,r14),fr2		; addr: CE3213E
fadd fr3,fr2		; addr: CE32140
fldi0 fr3		; addr: CE32142
fmov.s fr2,@(r0,r14) 		; addr: CE32144
mov 0x68,r0 ; r0 set to 0x68		; addr: CE32146
fmov.s @(r0,r14),fr2		; addr: CE32148
fcmp/gt fr2,fr3		; addr: CE3214A
bf data_CE32158		; addr: CE3214C
fmov.s @(r0,r14),fr1		; addr: CE3214E
fmov.s @r4,fr2		; addr: CE32150
fadd fr2,fr1		; addr: CE32152

l_code_CE32154:
bra data_CE3215E		; addr: CE32154
fmov.s fr1,@(r0,r14) 		; addr: CE32156

#align4
data_CE32158:
#data 0xE068F348		; addr: CE32158
#data 0xFE37		; addr: CE3215C

data_CE3215E:
#data 0x9023		; addr: CE3215E
#data 0x600C00EC		; addr: CE32160
#data 0x8F018803		; addr: CE32164
#data 0xE448E430		; addr: CE32168

#align4
data_CE3216C:
#data 0xE514901D		; addr: CE3216C
#data 0xE602D315		; addr: CE32170
#data 0x700B0E44		; addr: CE32174
#data 0x70F20ED5		; addr: CE32178
#data 0x70260ED4		; addr: CE3217C
#data 0x84E20ED6		; addr: CE32180
#data 0x600C6232		; addr: CE32184
#data 0x727C4000		; addr: CE32188
#data 0x7101012D		; addr: CE3218C
#data 0xD20E0215		; addr: CE32190
#data 0x64E3420B		; addr: CE32194
#data 0x4F267F08		; addr: CE32198
#data 0x000B6DF6		; addr: CE3219C
#data 0x6EF6		; addr: CE321A0
;-------------------------------------------------------------------------------

data_CE321A2:
#data 0x01A3		; addr: CE321A2

data_CE321A4:
#data 0x0352		; addr: CE321A4

data_CE321A6:
#data 0x01D2		; addr: CE321A6
#data 0x01A10255		; addr: CE321A8

#align4
ptr_CE321AC_to_fn_extern_8C035162:
#data fn_extern_8C035162		; addr: CE321AC

ptr_CE321B0_to_fn_extern_8C05218A:
#data fn_extern_8C05218A		; addr: CE321B0

ptr_CE321B4_to_fn_extern_8C05115A:
#data fn_extern_8C05115A		; addr: CE321B4

ptr_CE321B8_to_fn_extern_8C056DE4:
#data fn_extern_8C056DE4		; addr: CE321B8

ptr_CE321BC_to_data_CE34010:
#data data_CE34010		; addr: CE321BC

data_CE321C0:
#data 0xBF555555		; addr: CE321C0

#align4
data_CE321C4:
#data 0xBF9A4924		; addr: CE321C4
#data extern_8C2896B0		; addr: CE321C8
#data fn_extern_8C034E8C		; addr: CE321CC

#align4
data_CE321D0:
#data 0x4F222FE6		; addr: CE321D0
#data 0x430BD34F		; addr: CE321D4
#data 0x90946E43		; addr: CE321D8
#data 0x880F00EC		; addr: CE321DC
#data 0xD24D8921		; addr: CE321E0
#data 0x64E3420B		; addr: CE321E4
#data 0xD34CE15C		; addr: CE321E8
#data 0xE03431EC		; addr: CE321EC
#data 0xF2E6F318		; addr: CE321F0
#data 0x31ECE168		; addr: CE321F4
#data 0xFE27F230		; addr: CE321F8
#data 0xF2E6E05C		; addr: CE321FC
#data 0xE160F318		; addr: CE32200
#data 0xF23031EC		; addr: CE32204
#data 0xE038FE27		; addr: CE32208
#data 0xF318F2E6		; addr: CE3220C
#data 0x31ECE16C		; addr: CE32210
#data 0xFE27F230		; addr: CE32214
#data 0xF2E6E060		; addr: CE32218
#data 0xF230F318		; addr: CE3221C
#data 0x430BFE27		; addr: CE32220
#data 0x64E3		; addr: CE32224

data_CE32226:
#data 0x906E		; addr: CE32226
#data 0xD53DE648		; addr: CE32228
#data 0x880100EC		; addr: CE3222C
#data 0xE4008F19		; addr: CE32230
#data 0x0E449067		; addr: CE32234
#data 0x00EC9066		; addr: CE32238
#data 0x8803600C		; addr: CE3223C
#data 0xE7308F01		; addr: CE32240
#data 0x6763		; addr: CE32244

data_CE32246:
#data 0x9060		; addr: CE32246
#data 0x700B0E74		; addr: CE32248
#data 0x70F20E45		; addr: CE3224C
#data 0x70260E44		; addr: CE32250
#data 0x84E20E46		; addr: CE32254
#data 0x600C6352		; addr: CE32258
#data 0x737C4000		; addr: CE3225C
#data 0x7201023D		; addr: CE32260
#data 0x0325		; addr: CE32264

data_CE32266:
#data 0x904E		; addr: CE32266
#data 0x880200EC		; addr: CE32268
#data 0x904A8B3B		; addr: CE3226C
#data 0x85EE0E44		; addr: CE32270
#data 0x89362008		; addr: CE32274
#data 0x92489048		; addr: CE32278
#data 0x633D03ED		; addr: CE3227C
#data 0x89302328		; addr: CE32280
#data 0x0E45D127		; addr: CE32284
#data 0x415AE060		; addr: CE32288
#data 0xF30DF2E6		; addr: CE3228C
#data 0xFE27F230		; addr: CE32290
#data 0x70FF85EE		; addr: CE32294
#data 0x903581EE		; addr: CE32298
#data 0x600C00EC		; addr: CE3229C
#data 0x8F018803		; addr: CE322A0
#data 0x6763E730		; addr: CE322A4

#align4
data_CE322A8:
#data 0x0E74902F		; addr: CE322A8
#data 0x0E45700B		; addr: CE322AC
#data 0x0E4470F2		; addr: CE322B0
#data 0x0E467026		; addr: CE322B4
#data 0x635284E2		; addr: CE322B8
#data 0x4000600C		; addr: CE322BC
#data 0x023D737C		; addr: CE322C0
#data 0x03257201		; addr: CE322C4
#data 0xC80185EE		; addr: CE322C8
#data 0xA0018901		; addr: CE322CC
#data 0xE306		; addr: CE322D0

data_CE322D2:
#data 0xE305		; addr: CE322D2

#align4
data_CE322D4:
#data 0xE514901C		; addr: CE322D4
#data 0x0E3464E3		; addr: CE322D8
#data 0xD3124F26		; addr: CE322DC
#data 0x432B06EC		; addr: CE322E0
#data 0x6EF6		; addr: CE322E4

data_CE322E6:
#data 0x900E		; addr: CE322E6
#data 0x880300EC		; addr: CE322E8
#data 0x900A8B08		; addr: CE322EC
#data 0xD30EE502		; addr: CE322F0
#data 0x430B0E44		; addr: CE322F4
#data 0x84E664E3		; addr: CE322F8
#data 0x80E67001		; addr: CE322FC

#align4
data_CE32300:
#data 0x000B4F26		; addr: CE32300
#data 0x01416EF6		; addr: CE32304
#data 0x01A10255		; addr: CE32308
#data 0x03000352		; addr: CE3230C
#data 0x00000158		; addr: CE32310
#data fn_extern_8C034DEE		; addr: CE32314
#data extern_8C053082		; addr: CE32318
#data extern_8C052C84		; addr: CE3231C
#data extern_8C2896B0		; addr: CE32320
#data 0x41892492		; addr: CE32324
#data fn_extern_8C034E8C		; addr: CE32328
#data fn_extern_8C068B40		; addr: CE3232C


f_code_CE32330:
mov.l r14,@-r15		; addr: CE32330
sts.l pr,@-r15		; addr: CE32332
mov.l @(ptr_CE32468_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE32334
jsr @r3		; addr: CE32336
mov r4,r14		; addr: CE32338
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE3233A
mov.l @(ptr_CE3246C_to_extern_8C052C84,pc),r3 ; r3 set to 0x8C052C84		; addr: CE3233C
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE3233E
mov 0x34,r0 ; r0 set to 0x34		; addr: CE32340
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE32342
fmov.s @(r0,r14),fr2		; addr: CE32344
mov 0x68,r1 ; r1 set to 0x68		; addr: CE32346
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE32348
fadd fr3,fr2		; addr: CE3234A
fmov.s fr2,@(r0,r14) 		; addr: CE3234C
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE3234E
fmov.s @(r0,r14),fr2		; addr: CE32350
fmov.s @r1,fr3		; addr: CE32352
mov 0x60,r1 ; r1 set to 0x60		; addr: CE32354
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE32356
fadd fr3,fr2		; addr: CE32358
fmov.s fr2,@(r0,r14) 		; addr: CE3235A
mov 0x38,r0 ; r0 set to 0x38		; addr: CE3235C
fmov.s @(r0,r14),fr2		; addr: CE3235E
fmov.s @r1,fr3		; addr: CE32360
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE32362
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE32364
fadd fr3,fr2		; addr: CE32366
fmov.s fr2,@(r0,r14) 		; addr: CE32368
mov 0x60,r0 ; r0 set to 0x60		; addr: CE3236A
fmov.s @(r0,r14),fr2		; addr: CE3236C
fmov.s @r1,fr3		; addr: CE3236E
fadd fr3,fr2		; addr: CE32370
fmov.s fr2,@(r0,r14) 		; addr: CE32372
jsr @r3		; addr: CE32374
mov r14,r4		; addr: CE32376
mov 0x60,r0 ; r0 set to 0x60		; addr: CE32378
fldi0 fr3		; addr: CE3237A
fmov.s @(r0,r14),fr2		; addr: CE3237C
fcmp/gt fr3,fr2		; addr: CE3237E
bt l_code_CE323A8		; addr: CE32380
mov.b @(0x06,r14),r0 		; addr: CE32382
mov r14,r4		; addr: CE32384
fldi0 fr4		; addr: CE32386
mov 0x03,r6 ; r6 set to 0x03		; addr: CE32388
add 0x01,r0 ; r0 set to 0x61		; addr: CE3238A
mov.l @(ptr_CE32474_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE3238C
mov.b r0,@(0x06,r14) 		; addr: CE3238E
mova @(data_CE32470,pc),r0  ; r0 set to 0xCE32470		; addr: CE32390
fmov.s @r0,fr3 ; r3 ??		; addr: CE32392
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE32394
mov 0x14,r5 ; r5 set to 0x14		; addr: CE32396
fmov.s fr3,@(r0,r14) 		; addr: CE32398
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE3239A
fmov.s fr4,@(r0,r14) 		; addr: CE3239C
mov 0x68,r0 ; r0 set to 0x68		; addr: CE3239E
fmov.s fr4,@(r0,r14) 		; addr: CE323A0
lds.l @r15+,pr 		; addr: CE323A2
jmp @r3		; addr: CE323A4
mov.l @r15+,r14		; addr: CE323A6

l_code_CE323A8:
lds.l @r15+,pr 		; addr: CE323A8
rts 		; addr: CE323AA
mov.l @r15+,r14		; addr: CE323AC
;-------------------------------------------------------------------------------

f_code_CE323AE:
mov.l r14,@-r15		; addr: CE323AE
sts.l pr,@-r15		; addr: CE323B0
mov.l @(ptr_CE32468_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE323B2
jsr @r3		; addr: CE323B4
mov r4,r14		; addr: CE323B6
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE323B8
mov.l @(ptr_CE3246C_to_extern_8C052C84,pc),r3 ; r3 set to 0x8C052C84		; addr: CE323BA
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE323BC
mov 0x34,r0 ; r0 set to 0x34		; addr: CE323BE
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE323C0
fmov.s @(r0,r14),fr2		; addr: CE323C2
mov 0x68,r1 ; r1 set to 0x68		; addr: CE323C4
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE323C6
fadd fr3,fr2		; addr: CE323C8
fmov.s fr2,@(r0,r14) 		; addr: CE323CA
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE323CC
fmov.s @(r0,r14),fr2		; addr: CE323CE
fmov.s @r1,fr3		; addr: CE323D0
mov 0x60,r1 ; r1 set to 0x60		; addr: CE323D2
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE323D4
fadd fr3,fr2		; addr: CE323D6
fmov.s fr2,@(r0,r14) 		; addr: CE323D8
mov 0x38,r0 ; r0 set to 0x38		; addr: CE323DA
fmov.s @(r0,r14),fr2		; addr: CE323DC
fmov.s @r1,fr3		; addr: CE323DE
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE323E0
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE323E2
fadd fr3,fr2		; addr: CE323E4
fmov.s fr2,@(r0,r14) 		; addr: CE323E6
mov 0x60,r0 ; r0 set to 0x60		; addr: CE323E8
fmov.s @(r0,r14),fr2		; addr: CE323EA
fmov.s @r1,fr3		; addr: CE323EC
fadd fr3,fr2		; addr: CE323EE
fmov.s fr2,@(r0,r14) 		; addr: CE323F0
jsr @r3		; addr: CE323F2
mov r14,r4		; addr: CE323F4
mov.l @(ptr_CE32478_to_fn_extern_8C052CE2,pc),r2 ; r2 set to 0x8C052CE2		; addr: CE323F6
jsr @r2		; addr: CE323F8
mov r14,r4		; addr: CE323FA
extu.b r0,r0 ; r0 set to 0x60		; addr: CE323FC
tst r0,r0		; addr: CE323FE
bt l_code_CE3242E		; addr: CE32400
mov.l @(ptr_CE3247C_to_fn_extern_8C0511B4,pc),r2 ; r2 set to 0x8C0511B4		; addr: CE32402
jsr @r2		; addr: CE32404
mov r14,r4		; addr: CE32406
mov.b @(0x06,r14),r0 		; addr: CE32408
mov r14,r4		; addr: CE3240A
fldi0 fr4		; addr: CE3240C
mov 0x04,r6 ; r6 set to 0x04		; addr: CE3240E
add 0x01,r0 ; r0 set to 0x61		; addr: CE32410
mov.l @(ptr_CE32474_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE32412
mov.b r0,@(0x06,r14) 		; addr: CE32414
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE32416
fmov.s fr4,@(r0,r14) 		; addr: CE32418
mov 0x60,r0 ; r0 set to 0x60		; addr: CE3241A
fmov.s fr4,@(r0,r14) 		; addr: CE3241C
mov 0x68,r0 ; r0 set to 0x68		; addr: CE3241E
fmov.s fr4,@(r0,r14) 		; addr: CE32420
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE32422
fmov.s fr4,@(r0,r14) 		; addr: CE32424
mov 0x14,r5 ; r5 set to 0x14		; addr: CE32426
lds.l @r15+,pr 		; addr: CE32428
jmp @r3		; addr: CE3242A
mov.l @r15+,r14		; addr: CE3242C

l_code_CE3242E:
lds.l @r15+,pr 		; addr: CE3242E
rts 		; addr: CE32430
mov.l @r15+,r14		; addr: CE32432
;-------------------------------------------------------------------------------

f_code_CE32434:
sts.l pr,@-r15		; addr: CE32434
add 0xFC,r15		; addr: CE32436
mov.l @(ptr_CE32468_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE32438
jsr @r3		; addr: CE3243A
mov.l r4,@r15		; addr: CE3243C
exts.b r0,r0		; addr: CE3243E
cmp/pz r0		; addr: CE32440
bt l_code_CE3244E		; addr: CE32442
mov.l @r15,r4		; addr: CE32444
add 0x04,r15		; addr: CE32446
mov.l @(ptr_CE32480_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE32448
jmp @r3		; addr: CE3244A
lds.l @r15+,pr 		; addr: CE3244C

l_code_CE3244E:
add 0x04,r15		; addr: CE3244E
lds.l @r15+,pr 		; addr: CE32450
rts 		; addr: CE32452
nop 		; addr: CE32454
;-------------------------------------------------------------------------------

f_code_CE32456:
mov r4,r3		; addr: CE32456
mov.l @(ptr_CE32484_to_ptr_CE34020_to_data_CE32488,pc),r1 ; r1 set to 0xCE34020		; addr: CE32458
mov.l r4,@-r15		; addr: CE3245A
mov.b @(0x06,r3),r0 		; addr: CE3245C
extu.b r0,r0		; addr: CE3245E
shll2 r0		; addr: CE32460
mov.l @(r0,r1),r3		; addr: CE32462
jmp @r3		; addr: CE32464
add 0x04,r15		; addr: CE32466

#align4
ptr_CE32468_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE32468

ptr_CE3246C_to_extern_8C052C84:
#data extern_8C052C84		; addr: CE3246C

data_CE32470:
#data 0xBF4DB6DB		; addr: CE32470

#align4
ptr_CE32474_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE32474

ptr_CE32478_to_fn_extern_8C052CE2:
#data fn_extern_8C052CE2		; addr: CE32478

ptr_CE3247C_to_fn_extern_8C0511B4:
#data fn_extern_8C0511B4		; addr: CE3247C

ptr_CE32480_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE32480

ptr_CE32484_to_ptr_CE34020_to_data_CE32488:
#data ptr_CE34020_to_data_CE32488		; addr: CE32484

data_CE32488:
#data 0x6E432FE6		; addr: CE32488
#data 0x84E64F22		; addr: CE3248C
#data 0x7001D341		; addr: CE32490
#data 0xE01C80E6		; addr: CE32494
#data 0x430B81EE		; addr: CE32498
#data 0xD23F64E3		; addr: CE3249C
#data 0x420BE50A		; addr: CE324A0
#data 0xE05C64E3		; addr: CE324A4
#data 0xFE47F48D		; addr: CE324A8
#data 0xFE47E060		; addr: CE324AC
#data 0xFE47E068		; addr: CE324B0
#data 0xFE47E06C		; addr: CE324B4
#data 0xF308C739		; addr: CE324B8
#data 0xFE37E05C		; addr: CE324BC
#data 0x03EC9065		; addr: CE324C0
#data 0x8F042338		; addr: CE324C4
#data 0xE05C64E3		; addr: CE324C8
#data 0xF34DF3E6		; addr: CE324CC
#data 0xFE37		; addr: CE324D0

data_CE324D2:
#data 0xD334		; addr: CE324D2
#data 0x0009430B		; addr: CE324D4
#data 0xE50FD233		; addr: CE324D8
#data 0x420BE60A		; addr: CE324DC
#data 0x4F2664E3		; addr: CE324E0
#data 0x6EF664E3		; addr: CE324E4

#align4
data_CE324E8:
#data 0x70FF854E		; addr: CE324E8
#data 0x600F814E		; addr: CE324EC
#data 0x89024015		; addr: CE324F0
#data 0x70018446		; addr: CE324F4
#data 0x8046		; addr: CE324F8

data_CE324FA:
#data 0x000B		; addr: CE324FA
#data 0x0009		; addr: CE324FC
;-------------------------------------------------------------------------------

f_code_CE324FE:
mov.l r14,@-r15		; addr: CE324FE
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE32500
mov r4,r14		; addr: CE32502
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE32504
mov 0x34,r0 ; r0 set to 0x34		; addr: CE32506
mov.l @(ptr_CE325AC_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE32508
sts.l pr,@-r15		; addr: CE3250A
fmov.s @(r0,r14),fr2		; addr: CE3250C
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE3250E
mov 0x68,r1 ; r1 set to 0x68		; addr: CE32510
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE32512
fadd fr3,fr2		; addr: CE32514
fmov.s fr2,@(r0,r14) 		; addr: CE32516
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE32518
fmov.s @r1,fr3		; addr: CE3251A
mov 0x60,r1 ; r1 set to 0x60		; addr: CE3251C
fmov.s @(r0,r14),fr2		; addr: CE3251E
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE32520
fadd fr3,fr2		; addr: CE32522
fmov.s fr2,@(r0,r14) 		; addr: CE32524
mov 0x38,r0 ; r0 set to 0x38		; addr: CE32526
fmov.s @(r0,r14),fr2		; addr: CE32528
fmov.s @r1,fr3		; addr: CE3252A
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE3252C
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE3252E
fadd fr3,fr2		; addr: CE32530
fmov.s fr2,@(r0,r14) 		; addr: CE32532
mov 0x60,r0 ; r0 set to 0x60		; addr: CE32534
fmov.s @(r0,r14),fr2		; addr: CE32536
fmov.s @r1,fr3		; addr: CE32538
fadd fr3,fr2		; addr: CE3253A
fmov.s fr2,@(r0,r14) 		; addr: CE3253C
jsr @r3		; addr: CE3253E
mov r14,r4		; addr: CE32540
exts.b r0,r0 ; r0 ??		; addr: CE32542
cmp/pz r0		; addr: CE32544
bt l_code_CE32552		; addr: CE32546
lds.l @r15+,pr 		; addr: CE32548
mov.l @(ptr_CE325B0_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE3254A
mov r14,r4		; addr: CE3254C
jmp @r3		; addr: CE3254E
mov.l @r15+,r14		; addr: CE32550

l_code_CE32552:
mov.w @(data_CE32590,pc),r0 ; r0 set to 0x141		; addr: CE32552
mov.b @(r0,r14),r3		; addr: CE32554
tst r3,r3		; addr: CE32556
bf l_code_CE32576		; addr: CE32558
mov.l @(ptr_CE325B4_to_fn_extern_8C045790,pc),r3 ; r3 set to 0x8C045790		; addr: CE3255A
jsr @r3		; addr: CE3255C
mov r14,r4		; addr: CE3255E
tst r0,r0		; addr: CE32560
bt/s l_code_CE32576		; addr: CE32562
mov r0,r5 ; r5 set to 0x141		; addr: CE32564
mov.w @(data_CE32594,pc),r0 ; r0 set to 0x1F7		; addr: CE32566
mov r14,r4		; addr: CE32568
mov.w @(data_CE32592,pc),r3 ; r3 set to 0xC0		; addr: CE3256A
mov.b r3,@(r0,r14) 		; addr: CE3256C
lds.l @r15+,pr 		; addr: CE3256E
mov.l @(ptr_CE325B8_to_fn_extern_8C0522E0,pc),r3 ; r3 set to 0x8C0522E0		; addr: CE32570
jmp @r3		; addr: CE32572
mov.l @r15+,r14		; addr: CE32574

l_code_CE32576:
lds.l @r15+,pr 		; addr: CE32576
rts 		; addr: CE32578
mov.l @r15+,r14		; addr: CE3257A
;-------------------------------------------------------------------------------

f_code_CE3257C:
mov r4,r3		; addr: CE3257C
mov.l @(ptr_CE325BC_to_ptr_CE3402C_to_data_CE325C0,pc),r1 ; r1 set to 0xCE3402C		; addr: CE3257E
mov.l r4,@-r15		; addr: CE32580
mov.b @(0x06,r3),r0 		; addr: CE32582
extu.b r0,r0		; addr: CE32584
shll2 r0		; addr: CE32586
mov.l @(r0,r1),r3		; addr: CE32588
jmp @r3		; addr: CE3258A
add 0x04,r15		; addr: CE3258C
#data 0x01D2		; addr: CE3258E

data_CE32590:
#data 0x0141		; addr: CE32590

data_CE32592:
#data 0x00C0		; addr: CE32592

data_CE32594:
#data 0x01F7		; addr: CE32594
#data 0x0000		; addr: CE32596
#data fn_extern_8C05218A		; addr: CE32598
#data fn_extern_8C056DE4		; addr: CE3259C
#data 0x413AAAAA		; addr: CE325A0
#data fn_extern_8C05115A		; addr: CE325A4
#data fn_extern_8C034E8C		; addr: CE325A8

#align4
ptr_CE325AC_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE325AC

ptr_CE325B0_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE325B0

ptr_CE325B4_to_fn_extern_8C045790:
#data fn_extern_8C045790		; addr: CE325B4

ptr_CE325B8_to_fn_extern_8C0522E0:
#data fn_extern_8C0522E0		; addr: CE325B8

ptr_CE325BC_to_ptr_CE3402C_to_data_CE325C0:
#data ptr_CE3402C_to_data_CE325C0		; addr: CE325BC

data_CE325C0:
#data 0x6E432FE6		; addr: CE325C0
#data 0x84E64F22		; addr: CE325C4
#data 0x7001D34C		; addr: CE325C8
#data 0x430B80E6		; addr: CE325CC
#data 0xD24B64E3		; addr: CE325D0
#data 0x420BE500		; addr: CE325D4
#data 0xD34A64E3		; addr: CE325D8
#data 0x64E3430B		; addr: CE325DC
#data 0xE505D249		; addr: CE325E0
#data 0x64E3420B		; addr: CE325E4
#data 0x430BD348		; addr: CE325E8
#data 0xC74864E3		; addr: CE325EC
#data 0xE060F308		; addr: CE325F0
#data 0xC747FE37		; addr: CE325F4
#data 0xE06CF308		; addr: CE325F8
#data 0xC746FE37		; addr: CE325FC
#data 0xE05CF308		; addr: CE32600
#data 0xE068FE37		; addr: CE32604
#data 0xFE37F38D		; addr: CE32608
#data 0x03EC9071		; addr: CE3260C
#data extern_8D042338		; addr: CE32610
#data 0xE05CE43F		; addr: CE32614
#data 0xF34DF3E6		; addr: CE32618
#data 0xFE37		; addr: CE3261C

data_CE3261E:
#data 0x9069		; addr: CE3261E
#data 0x600C00EC		; addr: CE32620
#data 0x8B008803		; addr: CE32624
#data 0xE446		; addr: CE32628

data_CE3262A:
#data 0x9064		; addr: CE3262A
#data 0xD33BE62D		; addr: CE3262C
#data 0x0E44E515		; addr: CE32630
#data 0xE400700B		; addr: CE32634
#data 0x70F20E45		; addr: CE32638
#data 0x70260E44		; addr: CE3263C
#data 0x64E30E46		; addr: CE32640
#data 0x623284E2		; addr: CE32644
#data 0x4000600C		; addr: CE32648
#data 0x012D727C		; addr: CE3264C
#data 0x02157101		; addr: CE32650
#data 0xD2324F26		; addr: CE32654
#data 0x6EF6422B		; addr: CE32658


f_code_CE3265C:
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE3265C
add r4,r1 ; r1 ??? bc r4 is ???		; addr: CE3265E
mov 0x34,r0 ; r0 set to 0x34		; addr: CE32660
fmov.s @r1,fr3		; addr: CE32662
fmov.s @(r0,r4),fr2		; addr: CE32664
mov 0x68,r1 ; r1 set to 0x68		; addr: CE32666
add r4,r1 ; r1 ??? bc r4 is ???		; addr: CE32668
fadd fr3,fr2		; addr: CE3266A
fmov.s fr2,@(r0,r4) 		; addr: CE3266C
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE3266E
fmov.s @(r0,r4),fr2		; addr: CE32670
fmov.s @r1,fr3		; addr: CE32672
mov 0x60,r1 ; r1 set to 0x60		; addr: CE32674
add r4,r1 ; r1 ??? bc r4 is ???		; addr: CE32676
fadd fr3,fr2		; addr: CE32678
fmov.s fr2,@(r0,r4) 		; addr: CE3267A
mov 0x38,r0 ; r0 set to 0x38		; addr: CE3267C
fmov.s @(r0,r4),fr2		; addr: CE3267E
fmov.s @r1,fr3		; addr: CE32680
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE32682
add r4,r1 ; r1 ??? bc r4 is ???		; addr: CE32684
fadd fr3,fr2		; addr: CE32686
fmov.s fr2,@(r0,r4) 		; addr: CE32688
mov 0x60,r0 ; r0 set to 0x60		; addr: CE3268A
fmov.s @(r0,r4),fr2		; addr: CE3268C
fmov.s @r1,fr3		; addr: CE3268E
fadd fr3,fr2		; addr: CE32690
fmov.s fr2,@(r0,r4) 		; addr: CE32692
mov.w @(data_CE326F8,pc),r0 ; r0 set to 0x41C		; addr: CE32694
fmov.s @(r0,r4),fr3		; addr: CE32696
mov 0x38,r0 ; r0 set to 0x38		; addr: CE32698
fmov.s @(r0,r4),fr2		; addr: CE3269A
fcmp/gt fr3,fr2		; addr: CE3269C
bf data_CE326A6		; addr: CE3269E
mov.l @(ptr_CE32724_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE326A0
jmp @r3		; addr: CE326A2
nop 		; addr: CE326A4

data_CE326A6:
#data 0x8446		; addr: CE326A6
#data 0x7001E600		; addr: CE326A8
#data 0x90238046		; addr: CE326AC
#data 0xE038F346		; addr: CE326B0
#data 0x9020F437		; addr: CE326B4
#data 0x705C0464		; addr: CE326B8
#data 0x600C004C		; addr: CE326BC
#data 0x8F018803		; addr: CE326C0
#data 0xE547E540		; addr: CE326C4

#align4
data_CE326C8:
#data 0xD3149015		; addr: CE326C8
#data 0x700B0454		; addr: CE326CC
#data 0x70F20465		; addr: CE326D0
#data 0x70260464		; addr: CE326D4
#data 0xE62E0466		; addr: CE326D8
#data 0x62328442		; addr: CE326DC
#data 0x4000600C		; addr: CE326E0
#data 0x012D727C		; addr: CE326E4
#data 0x02157101		; addr: CE326E8
#data 0x422BD20C		; addr: CE326EC
#data 0x01D2E515		; addr: CE326F0
#data 0x01A10255		; addr: CE326F4

data_CE326F8:
#data 0x041C		; addr: CE326F8
#data 0x01F9		; addr: CE326FA
#data extern_8C053082		; addr: CE326FC
#data fn_extern_8C035162		; addr: CE32700
#data fn_extern_8C05218A		; addr: CE32704
#data fn_extern_8C056DE4		; addr: CE32708
#data fn_extern_8C05115A		; addr: CE3270C
#data 0x41092492		; addr: CE32710
#data 0xBF9A4924		; addr: CE32714
#data 0xC0F00000		; addr: CE32718
#data extern_8C2896B0		; addr: CE3271C
#data fn_extern_8C034E8C		; addr: CE32720

#align4
ptr_CE32724_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE32724


f_code_CE32728:
mov.l r14,@-r15		; addr: CE32728
sts.l pr,@-r15		; addr: CE3272A
mov.l @(ptr_CE32864_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE3272C
jsr @r3		; addr: CE3272E
mov r4,r14		; addr: CE32730
exts.b r0,r0		; addr: CE32732
cmp/pz r0		; addr: CE32734
bt l_code_CE32754		; addr: CE32736
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE32738
fldi0 fr4		; addr: CE3273A
fmov.s fr4,@(r0,r14) 		; addr: CE3273C
mov 0x60,r0 ; r0 set to 0x60		; addr: CE3273E
fmov.s fr4,@(r0,r14) 		; addr: CE32740
mov 0x68,r0 ; r0 set to 0x68		; addr: CE32742
fmov.s fr4,@(r0,r14) 		; addr: CE32744
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE32746
mov.l @(ptr_CE32868_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE32748
mov r14,r4		; addr: CE3274A
fmov.s fr4,@(r0,r14) 		; addr: CE3274C
lds.l @r15+,pr 		; addr: CE3274E
jmp @r3		; addr: CE32750
mov.l @r15+,r14		; addr: CE32752

l_code_CE32754:
lds.l @r15+,pr 		; addr: CE32754
rts 		; addr: CE32756
mov.l @r15+,r14		; addr: CE32758
;-------------------------------------------------------------------------------

f_code_CE3275A:
mov.l r14,@-r15		; addr: CE3275A
mov r4,r14		; addr: CE3275C
mov.b @(0x06,r14),r0 		; addr: CE3275E
mov.l @(ptr_CE3286C_to_ptr_CE34038_to_f_code_CE32770,pc),r1 ; r1 set to 0xCE34038		; addr: CE32760
extu.b r0,r0		; addr: CE32762
mov.w @(data_CE32858,pc),r5 ; r5 set to 0x2A4		; addr: CE32764
shll2 r0		; addr: CE32766
mov.l @(r0,r1),r3		; addr: CE32768
add r14,r5 ; r5 ??? bc r14 is ???		; addr: CE3276A
jmp @r3		; addr: CE3276C
mov.l @r15+,r14		; addr: CE3276E

f_code_CE32770:
mov.l r14,@-r15		; addr: CE32770
mov r4,r14		; addr: CE32772
sts.l pr,@-r15		; addr: CE32774
mov.b @(0x06,r14),r0 		; addr: CE32776
mov 0x00,r5 ; r5 set to 0x00		; addr: CE32778
mov.l @(ptr_CE32870_to_fn_extern_8C035162,pc),r3 ; r3 set to 0x8C035162		; addr: CE3277A
add 0x01,r0		; addr: CE3277C
mov.b r0,@(0x06,r14) 		; addr: CE3277E
jsr @r3		; addr: CE32780
mov r14,r4		; addr: CE32782
mov.l @(ptr_CE32874_to_fn_extern_8C05218A,pc),r2 ; r2 set to 0x8C05218A		; addr: CE32784
jsr @r2		; addr: CE32786
mov r14,r4		; addr: CE32788
mov.l @(ptr_CE32878_to_fn_extern_8C056DE4,pc),r3 ; r3 set to 0x8C056DE4		; addr: CE3278A
mov 0x05,r5 ; r5 set to 0x05		; addr: CE3278C
jsr @r3		; addr: CE3278E
mov r14,r4		; addr: CE32790
mov.l @(ptr_CE3287C_to_fn_extern_8C05115A,pc),r2 ; r2 set to 0x8C05115A		; addr: CE32792
jsr @r2		; addr: CE32794
mov r14,r4		; addr: CE32796
mov.w @(data_CE3285A,pc),r0 ; r0 set to 0x1F9		; addr: CE32798
mov 0x01,r3 ; r3 set to 0x01		; addr: CE3279A
mov 0x35,r2 ; r2 set to 0x35		; addr: CE3279C
mov.b r3,@(r0,r14) 		; addr: CE3279E
mov 0x00,r4 ; r4 set to 0x00		; addr: CE327A0
mov.w @(data_CE3285C,pc),r0 ; r0 set to 0x1A1		; addr: CE327A2
mov 0x05,r6 ; r6 set to 0x05		; addr: CE327A4
mov.l @(ptr_CE32880_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0		; addr: CE327A6
mov 0x16,r5 ; r5 set to 0x16		; addr: CE327A8
mov.b r2,@(r0,r14) 		; addr: CE327AA
add 0x0B,r0 ; r0 set to 0x1AC		; addr: CE327AC
mov.w r4,@(r0,r14) 		; addr: CE327AE
add 0xF2,r0 ; r0 set to 0x19E		; addr: CE327B0
mov.b r4,@(r0,r14) 		; addr: CE327B2
add 0x26,r0 ; r0 set to 0x1C4		; addr: CE327B4
mov.l r4,@(r0,r14) 		; addr: CE327B6
mov r14,r4 ; r4 ??? bc r14 is ???		; addr: CE327B8
mov.b @(0x02,r14),r0 		; addr: CE327BA
mov.l @r3,r2 ; r2 ??		; addr: CE327BC
extu.b r0,r0 ; r0 set to 0xC4		; addr: CE327BE
shll r0 ; r0 set to 0x188		; addr: CE327C0
add 0x7C,r2		; addr: CE327C2
mov.w @(r0,r2),r1		; addr: CE327C4
add 0x01,r1		; addr: CE327C6
mov.w r1,@(r0,r2) 		; addr: CE327C8
lds.l @r15+,pr 		; addr: CE327CA
mov.l @(ptr_CE32884_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE327CC
jmp @r2		; addr: CE327CE
mov.l @r15+,r14		; addr: CE327D0

data_CE327D2:
#data 0x2FE6		; addr: CE327D2
#data 0x2FD66E43		; addr: CE327D4
#data 0xD3224F22		; addr: CE327D8
#data 0x6D53430B		; addr: CE327DC
#data 0x02EC903D		; addr: CE327E0
#data 0x89152228		; addr: CE327E4
#data 0xE30084E6		; addr: CE327E8
#data 0x67336533		; addr: CE327EC
#data 0x66337001		; addr: CE327F0
#data 0xE20B80E6		; addr: CE327F4
#data 0x0E349031		; addr: CE327F8
#data 0xD322E020		; addr: CE327FC
#data 0x80D12D20		; addr: CE32800
#data 0x81D1E003		; addr: CE32804
#data 0x64E3430B		; addr: CE32808
#data 0x80D49028		; addr: CE3280C
#data 0x81EEE00A		; addr: CE32810

#align4
data_CE32814:
#data 0x6DF64F26		; addr: CE32814
#data 0x6EF6000B		; addr: CE32818
;-------------------------------------------------------------------------------

#align4
data_CE3281C:
#data 0x6E432FE6		; addr: CE3281C
#data 0x6D532FD6		; addr: CE32820
#data 0x65D3901C		; addr: CE32824
#data 0x80D44F22		; addr: CE32828
#data 0x64E3BA38		; addr: CE3282C
#data 0x420BD20C		; addr: CE32830
#data 0x85EE64E3		; addr: CE32834
#data 0x81EE70FF		; addr: CE32838
#data 0x4011600F		; addr: CE3283C
#data 0x84E68906		; addr: CE32840
#data 0x80E67001		; addr: CE32844
#data 0x80D1E000		; addr: CE32848
#data 0x81EEE008		; addr: CE3284C

#align4
data_CE32850:
#data 0x6DF64F26		; addr: CE32850
#data 0x6EF6000B		; addr: CE32854
;-------------------------------------------------------------------------------

data_CE32858:
#data 0x02A4		; addr: CE32858

data_CE3285A:
#data 0x01F9		; addr: CE3285A

data_CE3285C:
#data 0x01A1		; addr: CE3285C
#data 0x0141		; addr: CE3285E
#data 0x000000FF		; addr: CE32860

#align4
ptr_CE32864_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE32864

ptr_CE32868_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE32868

ptr_CE3286C_to_ptr_CE34038_to_f_code_CE32770:
#data ptr_CE34038_to_f_code_CE32770		; addr: CE3286C

ptr_CE32870_to_fn_extern_8C035162:
#data fn_extern_8C035162		; addr: CE32870

ptr_CE32874_to_fn_extern_8C05218A:
#data fn_extern_8C05218A		; addr: CE32874

ptr_CE32878_to_fn_extern_8C056DE4:
#data fn_extern_8C056DE4		; addr: CE32878

ptr_CE3287C_to_fn_extern_8C05115A:
#data fn_extern_8C05115A		; addr: CE3287C

ptr_CE32880_to_extern_8C2896B0:
#data extern_8C2896B0		; addr: CE32880

ptr_CE32884_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE32884
#data fn_extern_8C068EE4		; addr: CE32888


f_code_CE3288C:
mov.l r14,@-r15		; addr: CE3288C
sts.l pr,@-r15		; addr: CE3288E
add 0xFC,r15		; addr: CE32890
mov.w @(data_CE329E4,pc),r0 ; r0 set to 0xFF		; addr: CE32892
mov r5,r3		; addr: CE32894
mov.l r5,@r15		; addr: CE32896
mov r4,r14		; addr: CE32898
mov.b r0,@(0x04,r3) 		; addr: CE3289A
mov.l @(ptr_CE329F0_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE3289C
jsr @r3		; addr: CE3289E
mov r14,r4		; addr: CE328A0
mov.w @(0x1C,r14),r0 		; addr: CE328A2
add 0xFF,r0 ; r0 set to 0xFE		; addr: CE328A4
mov.w r0,@(0x1C,r14) 		; addr: CE328A6
exts.w r0,r0 ; r0 ??		; addr: CE328A8
cmp/pz r0		; addr: CE328AA
bt l_code_CE328D2		; addr: CE328AC
mov.b @(0x06,r14),r0 		; addr: CE328AE
add 0x01,r0		; addr: CE328B0
mov.b r0,@(0x06,r14) 		; addr: CE328B2
mov 0x00,r0 ; r0 set to 0x00		; addr: CE328B4
mov.l @r15,r3 ; r3 ??? bc r15 is ???		; addr: CE328B6
mov r0,r5 ; r5 set to 0x00		; addr: CE328B8
mov.b r0,@(0x04,r3) 		; addr: CE328BA
mov.l @(ptr_CE329F4_to_fn_extern_8C035162,pc),r3 ; r3 set to 0x8C035162		; addr: CE328BC
jsr @r3		; addr: CE328BE
mov r14,r4		; addr: CE328C0
mov r14,r4		; addr: CE328C2
mov 0x16,r5 ; r5 set to 0x16		; addr: CE328C4
mov 0x06,r6 ; r6 set to 0x06		; addr: CE328C6
add 0x04,r15		; addr: CE328C8
lds.l @r15+,pr 		; addr: CE328CA
mov.l @(ptr_CE329F8_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE328CC
jmp @r2		; addr: CE328CE
mov.l @r15+,r14		; addr: CE328D0

l_code_CE328D2:
add 0x04,r15		; addr: CE328D2
lds.l @r15+,pr 		; addr: CE328D4
rts 		; addr: CE328D6
mov.l @r15+,r14		; addr: CE328D8
;-------------------------------------------------------------------------------

f_code_CE328DA:
mov.l r14,@-r15		; addr: CE328DA
sts.l pr,@-r15		; addr: CE328DC
mov.l @(ptr_CE329F0_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE328DE
jsr @r3		; addr: CE328E0
mov r4,r14		; addr: CE328E2
exts.b r0,r0		; addr: CE328E4
cmp/pz r0		; addr: CE328E6
bt l_code_CE32902		; addr: CE328E8
mov.l @(ptr_CE329FC_to_fn_extern_8C042008,pc),r3 ; r3 set to 0x8C042008		; addr: CE328EA
mov 0x2B,r5 ; r5 set to 0x2B		; addr: CE328EC
jsr @r3		; addr: CE328EE
mov r14,r4		; addr: CE328F0
mov.w @(data_CE329E6,pc),r0 ; r0 set to 0x1F9		; addr: CE328F2
mov 0x00,r2 ; r2 set to 0x00		; addr: CE328F4
mov.l @(ptr_CE32A00_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE328F6
mov r14,r4		; addr: CE328F8
mov.b r2,@(r0,r14) 		; addr: CE328FA
lds.l @r15+,pr 		; addr: CE328FC
jmp @r3		; addr: CE328FE
mov.l @r15+,r14		; addr: CE32900

l_code_CE32902:
lds.l @r15+,pr 		; addr: CE32902
rts 		; addr: CE32904
mov.l @r15+,r14		; addr: CE32906
;-------------------------------------------------------------------------------

f_code_CE32908:
mov.l r14,@-r15		; addr: CE32908
mov r4,r14		; addr: CE3290A
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE3290C
mov.l @(ptr_CE32A04_to_extern_8C052C84,pc),r3 ; r3 set to 0x8C052C84		; addr: CE3290E
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE32910
mov 0x34,r0 ; r0 set to 0x34		; addr: CE32912
sts.l pr,@-r15		; addr: CE32914
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE32916
mov 0x68,r1 ; r1 set to 0x68		; addr: CE32918
fmov.s @(r0,r14),fr2		; addr: CE3291A
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE3291C
fadd fr3,fr2		; addr: CE3291E
fmov.s fr2,@(r0,r14) 		; addr: CE32920
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE32922
fmov.s @(r0,r14),fr2		; addr: CE32924
fmov.s @r1,fr3		; addr: CE32926
fadd fr3,fr2		; addr: CE32928
fmov.s fr2,@(r0,r14) 		; addr: CE3292A
jsr @r3		; addr: CE3292C
mov r14,r4		; addr: CE3292E
mov.b @(0x06,r14),r0 		; addr: CE32930
mov r14,r4		; addr: CE32932
mov.l @(ptr_CE32A08_to_ptr_CE3404C_to_f_code_CE3297C,pc),r1 ; r1 set to 0xCE3404C		; addr: CE32934
extu.b r0,r0 ; r0 set to 0x5C		; addr: CE32936
lds.l @r15+,pr 		; addr: CE32938
shll2 r0 ; r0 set to 0x170		; addr: CE3293A
mov.l @(r0,r1),r3		; addr: CE3293C
jmp @r3		; addr: CE3293E
mov.l @r15+,r14		; addr: CE32940

data_CE32942:
#data 0xC732		; addr: CE32942
#data 0xE05CF308		; addr: CE32944
#data 0xC731F437		; addr: CE32948
#data 0xE068F308		; addr: CE3294C
#data 0x9049F437		; addr: CE32950
#data 0x2338034C		; addr: CE32954
#data 0xE5008F08		; addr: CE32958
#data 0xF346E05C		; addr: CE3295C
#data 0xF437F34D		; addr: CE32960
#data 0xF346E068		; addr: CE32964
#data 0xF437F34D		; addr: CE32968

#align4
data_CE3296C:
#data 0x0455903D		; addr: CE3296C
#data 0x04557002		; addr: CE32970
#data 0x00096053		; addr: CE32974
#data 0x814E000B		; addr: CE32978
;-------------------------------------------------------------------------------

f_code_CE3297C:
mov.l r14,@-r15		; addr: CE3297C
mov r4,r14		; addr: CE3297E
mov.l r13,@-r15		; addr: CE32980
mov 0x00,r13 ; r13 set to 0x00		; addr: CE32982
sts.l pr,@-r15		; addr: CE32984
mov.b @(0x06,r14),r0 		; addr: CE32986
mov r13,r5 ; r5 set to 0x00		; addr: CE32988
mov.l @(ptr_CE329F4_to_fn_extern_8C035162,pc),r3 ; r3 set to 0x8C035162		; addr: CE3298A
add 0x01,r0		; addr: CE3298C
mov.b r0,@(0x06,r14) 		; addr: CE3298E
mov.w @(data_CE329E6,pc),r0 ; r0 set to 0x1F9		; addr: CE32990
mov.b r13,@(r0,r14) 		; addr: CE32992
jsr @r3		; addr: CE32994
mov r14,r4		; addr: CE32996
mov.l @(ptr_CE32A14_to_fn_extern_8C05218A,pc),r2 ; r2 set to 0x8C05218A		; addr: CE32998
jsr @r2		; addr: CE3299A
mov r14,r4		; addr: CE3299C
bsr data_CE32942		; addr: CE3299E
mov r14,r4		; addr: CE329A0
mov.l @(ptr_CE32A18_to_fn_extern_8C056DE4,pc),r2 ; r2 set to 0x8C056DE4		; addr: CE329A2
mov 0x0A,r5 ; r5 set to 0x0A		; addr: CE329A4
jsr @r2		; addr: CE329A6
mov r14,r4		; addr: CE329A8
mov.w @(data_CE329EC,pc),r0 ; r0 set to 0x1A1		; addr: CE329AA
mov 0x3B,r3 ; r3 set to 0x3B		; addr: CE329AC
mov.b r3,@(r0,r14) 		; addr: CE329AE
add 0x0B,r0 ; r0 set to 0x1AC		; addr: CE329B0
mov.w r13,@(r0,r14) 		; addr: CE329B2
add 0xF2,r0 ; r0 set to 0x19E		; addr: CE329B4
mov.b r13,@(r0,r14) 		; addr: CE329B6
add 0x26,r0 ; r0 set to 0x1C4		; addr: CE329B8
mov.l @(ptr_CE32A1C_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0		; addr: CE329BA
mov.l r13,@(r0,r14) 		; addr: CE329BC
mov.b @(0x02,r14),r0 		; addr: CE329BE
mov.l @r3,r2 ; r2 ??		; addr: CE329C0
extu.b r0,r0 ; r0 set to 0xC4		; addr: CE329C2
shll r0 ; r0 set to 0x188		; addr: CE329C4
add 0x7C,r2		; addr: CE329C6
mov.w @(r0,r2),r1		; addr: CE329C8
add 0x01,r1		; addr: CE329CA
mov.w r1,@(r0,r2) 		; addr: CE329CC
mov.l @(ptr_CE32A20_to_fn_extern_8C05115A,pc),r2 ; r2 set to 0x8C05115A		; addr: CE329CE
jsr @r2		; addr: CE329D0
mov r14,r4		; addr: CE329D2
lds.l @r15+,pr 		; addr: CE329D4
mov.l @(ptr_CE329F8_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE329D6
mov 0x09,r6 ; r6 set to 0x09		; addr: CE329D8
mov 0x14,r5 ; r5 set to 0x14		; addr: CE329DA
mov r14,r4		; addr: CE329DC
mov.l @r15+,r13 ; r13 ??? bc r15 is ???		; addr: CE329DE
jmp @r3		; addr: CE329E0
mov.l @r15+,r14		; addr: CE329E2

data_CE329E4:
#data 0x00FF		; addr: CE329E4

data_CE329E6:
#data 0x01F9		; addr: CE329E6
#data 0x035001D2		; addr: CE329E8

data_CE329EC:
#data 0x01A1		; addr: CE329EC
#data 0x0000		; addr: CE329EE

#align4
ptr_CE329F0_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE329F0

ptr_CE329F4_to_fn_extern_8C035162:
#data fn_extern_8C035162		; addr: CE329F4

ptr_CE329F8_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE329F8

ptr_CE329FC_to_fn_extern_8C042008:
#data fn_extern_8C042008		; addr: CE329FC

ptr_CE32A00_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE32A00

ptr_CE32A04_to_extern_8C052C84:
#data extern_8C052C84		; addr: CE32A04

ptr_CE32A08_to_ptr_CE3404C_to_f_code_CE3297C:
#data ptr_CE3404C_to_f_code_CE3297C		; addr: CE32A08
#data 0x41555555		; addr: CE32A0C
#data 0xBED55555		; addr: CE32A10

#align4
ptr_CE32A14_to_fn_extern_8C05218A:
#data fn_extern_8C05218A		; addr: CE32A14

ptr_CE32A18_to_fn_extern_8C056DE4:
#data fn_extern_8C056DE4		; addr: CE32A18

ptr_CE32A1C_to_extern_8C2896B0:
#data extern_8C2896B0		; addr: CE32A1C

ptr_CE32A20_to_fn_extern_8C05115A:
#data fn_extern_8C05115A		; addr: CE32A20

data_CE32A24:
#data 0x6E432FE6		; addr: CE32A24
#data 0x4F222FD6		; addr: CE32A28
#data 0x430BD333		; addr: CE32A2C
#data 0x600EED00		; addr: CE32A30
#data 0x8B2C4011		; addr: CE32A34
#data 0x03EC905B		; addr: CE32A38
#data 0x89122338		; addr: CE32A3C
#data 0x70610ED4		; addr: CE32A40
#data 0x0E34E33B		; addr: CE32A44
#data 0x0ED5700B		; addr: CE32A48
#data 0x0ED470F2		; addr: CE32A4C
#data 0xD32B7026		; addr: CE32A50
#data 0x84E20ED6		; addr: CE32A54
#data 0x600C6232		; addr: CE32A58
#data 0x727C4000		; addr: CE32A5C
#data 0x7101012D		; addr: CE32A60
#data 0x0215		; addr: CE32A64

data_CE32A66:
#data 0x9045		; addr: CE32A66
#data 0x233803EC		; addr: CE32A68
#data 0xD325893D		; addr: CE32A6C
#data 0x64E3430B		; addr: CE32A70
#data 0x8B092008		; addr: CE32A74
#data 0x03ED903D		; addr: CE32A78
#data 0x02ED7004		; addr: CE32A7C
#data 0x622D633D		; addr: CE32A80
#data 0x9237232B		; addr: CE32A84
#data 0x892E2328		; addr: CE32A88

#align4
data_CE32A8C:
#data 0xA02CE001		; addr: CE32A8C
#data 0x81EE		; addr: CE32A90

data_CE32A92:
#data 0x85EE		; addr: CE32A92
#data 0x8B092008		; addr: CE32A94
#data 0xD31BE005		; addr: CE32A98
#data 0x80E664E3		; addr: CE32A9C
#data 0xE6104F26		; addr: CE32AA0
#data 0x6DF6E514		; addr: CE32AA4
#data 0x6EF6432B		; addr: CE32AA8

#align4
data_CE32AAC:
#data 0x700184E6		; addr: CE32AAC
#data 0xBF4680E6		; addr: CE32AB0
#data 0x902064E3		; addr: CE32AB4
#data 0xD311E23C		; addr: CE32AB8
#data 0x0E24E60A		; addr: CE32ABC
#data 0x0ED5700B		; addr: CE32AC0
#data 0x0ED470F2		; addr: CE32AC4
#data 0x0ED67026		; addr: CE32AC8
#data 0x84E2E514		; addr: CE32ACC
#data 0x623264E3		; addr: CE32AD0
#data 0x4000600C		; addr: CE32AD4
#data 0x012D727C		; addr: CE32AD8
#data 0x02157101		; addr: CE32ADC
#data 0xD2094F26		; addr: CE32AE0
#data 0x422B6DF6		; addr: CE32AE4
#data 0x6EF6		; addr: CE32AE8

data_CE32AEA:
#data 0x4F26		; addr: CE32AEA
#data 0x000B6DF6		; addr: CE32AEC
#data 0x01406EF6		; addr: CE32AF0
#data 0x034E0141		; addr: CE32AF4
#data 0x01A10360		; addr: CE32AF8
#data fn_extern_8C034DEE		; addr: CE32AFC
#data extern_8C2896B0		; addr: CE32B00
#data extern_8C055D54		; addr: CE32B04
#data fn_extern_8C034E8C		; addr: CE32B08

#align4
data_CE32B0C:
#data 0x6E432FE6		; addr: CE32B0C
#data 0x4F222FD6		; addr: CE32B10
#data 0x430BD342		; addr: CE32B14
#data 0x600EED00		; addr: CE32B18
#data 0x8B2C4011		; addr: CE32B1C
#data 0x03EC9079		; addr: CE32B20
#data 0x89122338		; addr: CE32B24
#data 0x70610ED4		; addr: CE32B28
#data 0x0E34E33B		; addr: CE32B2C
#data 0x0ED5700B		; addr: CE32B30
#data 0x0ED470F2		; addr: CE32B34
#data 0xD33A7026		; addr: CE32B38
#data 0x84E20ED6		; addr: CE32B3C
#data 0x600C6232		; addr: CE32B40
#data 0x727C4000		; addr: CE32B44
#data 0x7101012D		; addr: CE32B48
#data 0x0215		; addr: CE32B4C

data_CE32B4E:
#data 0x9063		; addr: CE32B4E
#data 0x233803EC		; addr: CE32B50
#data 0xD334893D		; addr: CE32B54
#data 0x64E3430B		; addr: CE32B58
#data 0x8B092008		; addr: CE32B5C
#data 0x03ED905B		; addr: CE32B60
#data 0x02ED7004		; addr: CE32B64
#data 0x622D633D		; addr: CE32B68
#data 0x9255232B		; addr: CE32B6C
#data 0x892E2328		; addr: CE32B70

#align4
data_CE32B74:
#data 0xA02CE001		; addr: CE32B74
#data 0x81EE		; addr: CE32B78

data_CE32B7A:
#data 0x85EE		; addr: CE32B7A
#data 0x8B092008		; addr: CE32B7C
#data 0xD32AE005		; addr: CE32B80
#data 0x80E664E3		; addr: CE32B84
#data 0xE6104F26		; addr: CE32B88
#data 0x6DF6E514		; addr: CE32B8C
#data 0x6EF6432B		; addr: CE32B90

#align4
data_CE32B94:
#data 0x700184E6		; addr: CE32B94
#data 0xBED280E6		; addr: CE32B98
#data 0x903E64E3		; addr: CE32B9C
#data 0xD320E23D		; addr: CE32BA0
#data 0x0E24E60B		; addr: CE32BA4
#data 0x0ED5700B		; addr: CE32BA8
#data 0x0ED470F2		; addr: CE32BAC
#data 0x0ED67026		; addr: CE32BB0
#data 0x84E2E514		; addr: CE32BB4
#data 0x623264E3		; addr: CE32BB8
#data 0x4000600C		; addr: CE32BBC
#data 0x012D727C		; addr: CE32BC0
#data 0x02157101		; addr: CE32BC4
#data 0xD2184F26		; addr: CE32BC8
#data 0x422B6DF6		; addr: CE32BCC
#data 0x6EF6		; addr: CE32BD0

data_CE32BD2:
#data 0x4F26		; addr: CE32BD2
#data 0x000B6DF6		; addr: CE32BD4
#data 0x6EF6		; addr: CE32BD8
;-------------------------------------------------------------------------------

data_CE32BDA:
#data 0x2FE6		; addr: CE32BDA
#data 0xD3104F22		; addr: CE32BDC
#data 0x6E43430B		; addr: CE32BE0
#data 0x4011600E		; addr: CE32BE4
#data 0x90158B22		; addr: CE32BE8
#data 0x233803EC		; addr: CE32BEC
#data 0xD30D8949		; addr: CE32BF0
#data 0x64E3430B		; addr: CE32BF4
#data 0x8B092008		; addr: CE32BF8
#data 0x03ED900D		; addr: CE32BFC
#data 0x02ED7004		; addr: CE32C00
#data 0x622D633D		; addr: CE32C04
#data 0x9207232B		; addr: CE32C08
#data 0x893A2328		; addr: CE32C0C

#align4
data_CE32C10:
#data 0xA038E001		; addr: CE32C10
#data 0x014081EE		; addr: CE32C14
#data 0x034E0141		; addr: CE32C18
#data 0x01A10360		; addr: CE32C1C
#data fn_extern_8C034DEE		; addr: CE32C20
#data extern_8C2896B0		; addr: CE32C24
#data extern_8C055D54		; addr: CE32C28
#data fn_extern_8C034E8C		; addr: CE32C2C

#align4
data_CE32C30:
#data 0x200885EE		; addr: CE32C30
#data 0xD3508B08		; addr: CE32C34
#data 0x64E3E005		; addr: CE32C38
#data 0x4F2680E6		; addr: CE32C3C
#data 0xE514E610		; addr: CE32C40
#data 0x6EF6432B		; addr: CE32C44

#align4
data_CE32C48:
#data 0x700184E6		; addr: CE32C48
#data 0xBE7880E6		; addr: CE32C4C
#data 0x908C64E3		; addr: CE32C50
#data 0xE400E23E		; addr: CE32C54
#data 0x0E24D348		; addr: CE32C58
#data 0x0E45700B		; addr: CE32C5C
#data 0x0E4470F2		; addr: CE32C60
#data 0x0E467026		; addr: CE32C64
#data 0x84E264E3		; addr: CE32C68
#data 0x6232E60C		; addr: CE32C6C
#data 0x600CE514		; addr: CE32C70
#data 0x727C4000		; addr: CE32C74
#data 0x7101012D		; addr: CE32C78
#data 0x4F260215		; addr: CE32C7C
#data 0x422BD23D		; addr: CE32C80
#data 0x6EF6		; addr: CE32C84

data_CE32C86:
#data 0x4F26		; addr: CE32C86
#data 0x6EF6000B		; addr: CE32C88
;-------------------------------------------------------------------------------

f_code_CE32C8C:
mov.l r14,@-r15		; addr: CE32C8C
sts.l pr,@-r15		; addr: CE32C8E
mov.l @(ptr_CE32D80_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE32C90
jsr @r3		; addr: CE32C92
mov r4,r14		; addr: CE32C94
exts.b r0,r0		; addr: CE32C96
cmp/pz r0		; addr: CE32C98
bt l_code_CE32CA6		; addr: CE32C9A
lds.l @r15+,pr 		; addr: CE32C9C
mov.l @(ptr_CE32D84_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE32C9E
mov r14,r4		; addr: CE32CA0
jmp @r3		; addr: CE32CA2
mov.l @r15+,r14		; addr: CE32CA4

l_code_CE32CA6:
mov.w @(data_CE32D70,pc),r0 ; r0 set to 0x141		; addr: CE32CA6
mov.b @(r0,r14),r3		; addr: CE32CA8
tst r3,r3		; addr: CE32CAA
bt l_code_CE32CBE		; addr: CE32CAC
mov 0x00,r3 ; r3 set to 0x00		; addr: CE32CAE
mov r14,r4		; addr: CE32CB0
mov.b r3,@(r0,r14) 		; addr: CE32CB2
mov 0x03,r5 ; r5 set to 0x03		; addr: CE32CB4
lds.l @r15+,pr 		; addr: CE32CB6
mov.l @(ptr_CE32D88_to_fn_extern_8C068B40,pc),r3 ; r3 set to 0x8C068B40		; addr: CE32CB8
jmp @r3		; addr: CE32CBA
mov.l @r15+,r14		; addr: CE32CBC

l_code_CE32CBE:
lds.l @r15+,pr 		; addr: CE32CBE
rts 		; addr: CE32CC0
mov.l @r15+,r14		; addr: CE32CC2
;-------------------------------------------------------------------------------

f_code_CE32CC4:
sts.l pr,@-r15		; addr: CE32CC4
add 0xFC,r15		; addr: CE32CC6
mov.l @(ptr_CE32D80_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE32CC8
jsr @r3		; addr: CE32CCA
mov.l r4,@r15		; addr: CE32CCC
exts.b r0,r0		; addr: CE32CCE
cmp/pz r0		; addr: CE32CD0
bt l_code_CE32CDE		; addr: CE32CD2
mov.l @r15,r4		; addr: CE32CD4
add 0x04,r15		; addr: CE32CD6
mov.l @(ptr_CE32D84_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE32CD8
jmp @r3		; addr: CE32CDA
lds.l @r15+,pr 		; addr: CE32CDC

l_code_CE32CDE:
add 0x04,r15		; addr: CE32CDE
lds.l @r15+,pr 		; addr: CE32CE0
rts 		; addr: CE32CE2
nop 		; addr: CE32CE4
;-------------------------------------------------------------------------------

f_code_CE32CE6:
mov r4,r3		; addr: CE32CE6
mov.l @(ptr_CE32D8C_to_ptr_CE34064_to_f_code_CE32CF8,pc),r1 ; r1 set to 0xCE34064		; addr: CE32CE8
mov.l r4,@-r15		; addr: CE32CEA
mov.b @(0x06,r3),r0 		; addr: CE32CEC
extu.b r0,r0		; addr: CE32CEE
shll2 r0		; addr: CE32CF0
mov.l @(r0,r1),r3		; addr: CE32CF2
jmp @r3		; addr: CE32CF4
add 0x04,r15		; addr: CE32CF6

f_code_CE32CF8:
mov.l r14,@-r15		; addr: CE32CF8
mov r4,r14		; addr: CE32CFA
fldi0 fr4		; addr: CE32CFC
mov.l r13,@-r15		; addr: CE32CFE
mov 0x00,r13 ; r13 set to 0x00		; addr: CE32D00
sts.l pr,@-r15		; addr: CE32D02
mov.b @(0x06,r14),r0 		; addr: CE32D04
mov r13,r5 ; r5 set to 0x00		; addr: CE32D06
mov.l @(ptr_CE32D90_to_fn_extern_8C035162,pc),r3 ; r3 set to 0x8C035162		; addr: CE32D08
add 0x01,r0		; addr: CE32D0A
mov.b r0,@(0x06,r14) 		; addr: CE32D0C
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE32D0E
fmov.s fr4,@(r0,r14) 		; addr: CE32D10
mov 0x60,r0 ; r0 set to 0x60		; addr: CE32D12
fmov.s fr4,@(r0,r14) 		; addr: CE32D14
mov 0x68,r0 ; r0 set to 0x68		; addr: CE32D16
fmov.s fr4,@(r0,r14) 		; addr: CE32D18
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE32D1A
fmov.s fr4,@(r0,r14) 		; addr: CE32D1C
mov.w @(data_CE32D72,pc),r0 ; r0 set to 0x1F9		; addr: CE32D1E
mov.b r13,@(r0,r14) 		; addr: CE32D20
mov.w @(data_CE32D74,pc),r0 ; r0 set to 0x41C		; addr: CE32D22
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???		; addr: CE32D24
mov 0x38,r0 ; r0 set to 0x38		; addr: CE32D26
fmov.s fr3,@(r0,r14) 		; addr: CE32D28
jsr @r3		; addr: CE32D2A
mov r14,r4		; addr: CE32D2C
mov.l @(ptr_CE32D94_to_fn_extern_8C05218A,pc),r2 ; r2 set to 0x8C05218A		; addr: CE32D2E
jsr @r2		; addr: CE32D30
mov r14,r4		; addr: CE32D32
mov.l @(ptr_CE32D98_to_fn_extern_8C05115A,pc),r3 ; r3 set to 0x8C05115A		; addr: CE32D34
jsr @r3		; addr: CE32D36
mov r14,r4		; addr: CE32D38
mov.w @(data_CE32D6E,pc),r0 ; r0 set to 0x1A1		; addr: CE32D3A
mov 0x43,r2 ; r2 set to 0x43		; addr: CE32D3C
mov.l @(ptr_CE32D7C_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0		; addr: CE32D3E
mov 0x2F,r6 ; r6 set to 0x2F		; addr: CE32D40
mov.b r2,@(r0,r14) 		; addr: CE32D42
add 0x0B,r0 ; r0 set to 0x1AC		; addr: CE32D44
mov.w r13,@(r0,r14) 		; addr: CE32D46
add 0xF2,r0 ; r0 set to 0x19E		; addr: CE32D48
mov.b r13,@(r0,r14) 		; addr: CE32D4A
add 0x26,r0 ; r0 set to 0x1C4		; addr: CE32D4C
mov.l r13,@(r0,r14) 		; addr: CE32D4E
mov 0x15,r5 ; r5 set to 0x15		; addr: CE32D50
mov.b @(0x02,r14),r0 		; addr: CE32D52
mov r14,r4		; addr: CE32D54
mov.l @r3,r2 ; r2 ??		; addr: CE32D56
extu.b r0,r0 ; r0 set to 0xC4		; addr: CE32D58
shll r0 ; r0 set to 0x188		; addr: CE32D5A
add 0x7C,r2		; addr: CE32D5C
mov.w @(r0,r2),r1		; addr: CE32D5E
add 0x01,r1		; addr: CE32D60
mov.w r1,@(r0,r2) 		; addr: CE32D62
lds.l @r15+,pr 		; addr: CE32D64
mov.l @(ptr_CE32D78_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE32D66
mov.l @r15+,r13 ; r13 ??? bc r15 is ???		; addr: CE32D68
jmp @r2		; addr: CE32D6A
mov.l @r15+,r14		; addr: CE32D6C

data_CE32D6E:
#data 0x01A1		; addr: CE32D6E

data_CE32D70:
#data 0x0141		; addr: CE32D70

data_CE32D72:
#data 0x01F9		; addr: CE32D72

data_CE32D74:
#data 0x041C		; addr: CE32D74
#data 0x0000		; addr: CE32D76

#align4
ptr_CE32D78_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE32D78

ptr_CE32D7C_to_extern_8C2896B0:
#data extern_8C2896B0		; addr: CE32D7C

ptr_CE32D80_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE32D80

ptr_CE32D84_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE32D84

ptr_CE32D88_to_fn_extern_8C068B40:
#data fn_extern_8C068B40		; addr: CE32D88

ptr_CE32D8C_to_ptr_CE34064_to_f_code_CE32CF8:
#data ptr_CE34064_to_f_code_CE32CF8		; addr: CE32D8C

ptr_CE32D90_to_fn_extern_8C035162:
#data fn_extern_8C035162		; addr: CE32D90

ptr_CE32D94_to_fn_extern_8C05218A:
#data fn_extern_8C05218A		; addr: CE32D94

ptr_CE32D98_to_fn_extern_8C05115A:
#data fn_extern_8C05115A		; addr: CE32D98


f_code_CE32D9C:
mov.l r14,@-r15		; addr: CE32D9C
sts.l pr,@-r15		; addr: CE32D9E
add 0xF4,r15		; addr: CE32DA0
mov.l @(ptr_CE32EDC_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE32DA2
jsr @r3		; addr: CE32DA4
mov r4,r14		; addr: CE32DA6
exts.b r0,r0		; addr: CE32DA8
cmp/pz r0		; addr: CE32DAA
bt data_CE32DBC		; addr: CE32DAC
mov.l @(ptr_CE32EE0_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE32DAE
jsr @r3		; addr: CE32DB0
mov r14,r4		; addr: CE32DB2
add 0x0C,r15		; addr: CE32DB4
lds.l @r15+,pr 		; addr: CE32DB6
rts 		; addr: CE32DB8
mov.l @r15+,r14		; addr: CE32DBA
;-------------------------------------------------------------------------------

#align4
data_CE32DBC:
#data 0x02EC908A		; addr: CE32DBC
#data 0x890C2228		; addr: CE32DC0
#data 0x65F3E300		; addr: CE32DC4
#data 0xC7460E34		; addr: CE32DC8
#data 0xC746F308		; addr: CE32DCC
#data 0xFF3AD346		; addr: CE32DD0
#data 0xE004F308		; addr: CE32DD4
#data 0x430BFF37		; addr: CE32DD8
#data 0x64E3		; addr: CE32DDC

data_CE32DDE:
#data 0x7F0C		; addr: CE32DDE
#data 0x000B4F26		; addr: CE32DE0
#data 0x6EF6		; addr: CE32DE4
;-------------------------------------------------------------------------------

f_code_CE32DE6:
mov.l r14,@-r15		; addr: CE32DE6
mov r4,r14		; addr: CE32DE8
sts.l pr,@-r15		; addr: CE32DEA
mov.b @(0x06,r14),r0 		; addr: CE32DEC
tst r0,r0		; addr: CE32DEE
bf l_code_CE32E24		; addr: CE32DF0
mov.b @(0x06,r14),r0 		; addr: CE32DF2
mov 0x01,r7 ; r7 set to 0x01		; addr: CE32DF4
fldi0 fr4		; addr: CE32DF6
mov r7,r5 ; r5 set to 0x01		; addr: CE32DF8
add 0x01,r0		; addr: CE32DFA
mov.l @(ptr_CE32EF0_to_fn_extern_8C03544C,pc),r3 ; r3 set to 0x8C03544C		; addr: CE32DFC
mov.b r0,@(0x06,r14) 		; addr: CE32DFE
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE32E00
fmov.s fr4,@(r0,r14) 		; addr: CE32E02
mov 0x60,r0 ; r0 set to 0x60		; addr: CE32E04
fmov.s fr4,@(r0,r14) 		; addr: CE32E06
mov 0x68,r0 ; r0 set to 0x68		; addr: CE32E08
fmov.s fr4,@(r0,r14) 		; addr: CE32E0A
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE32E0C
fmov.s fr4,@(r0,r14) 		; addr: CE32E0E
mov 0x19,r6 ; r6 set to 0x19		; addr: CE32E10
jsr @r3		; addr: CE32E12
mov r14,r4		; addr: CE32E14
lds.l @r15+,pr 		; addr: CE32E16
mov.l @(ptr_CE32EF4_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE32E18
mov r14,r4		; addr: CE32E1A
mov 0x04,r6 ; r6 set to 0x04		; addr: CE32E1C
mov 0x13,r5 ; r5 set to 0x13		; addr: CE32E1E
jmp @r2		; addr: CE32E20
mov.l @r15+,r14		; addr: CE32E22

l_code_CE32E24:
mov.l @(ptr_CE32EDC_to_fn_extern_8C034DEE,pc),r2 ; r2 set to 0x8C034DEE		; addr: CE32E24
jsr @r2		; addr: CE32E26
mov r14,r4		; addr: CE32E28
exts.b r0,r0		; addr: CE32E2A
cmp/pz r0		; addr: CE32E2C
bt l_code_CE32E42		; addr: CE32E2E
mov.l @(ptr_CE32EF8_to_fn_extern_8C035162,pc),r2 ; r2 set to 0x8C035162		; addr: CE32E30
mov 0x00,r5 ; r5 set to 0x00		; addr: CE32E32
jsr @r2		; addr: CE32E34
mov r14,r4		; addr: CE32E36
lds.l @r15+,pr 		; addr: CE32E38
mov.l @(ptr_CE32EE0_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE32E3A
mov r14,r4		; addr: CE32E3C
jmp @r3		; addr: CE32E3E
mov.l @r15+,r14		; addr: CE32E40

l_code_CE32E42:
lds.l @r15+,pr 		; addr: CE32E42
rts 		; addr: CE32E44
mov.l @r15+,r14		; addr: CE32E46
;-------------------------------------------------------------------------------

f_code_CE32E48:
mov r4,r3		; addr: CE32E48
mov.l @(ptr_CE32EFC_to_ptr_CE3406C_to_data_CE32E5A,pc),r1 ; r1 set to 0xCE3406C		; addr: CE32E4A
mov.l r4,@-r15		; addr: CE32E4C
mov.b @(0x06,r3),r0 		; addr: CE32E4E
extu.b r0,r0		; addr: CE32E50
shll2 r0		; addr: CE32E52
mov.l @(r0,r1),r3		; addr: CE32E54
jmp @r3		; addr: CE32E56
add 0x04,r15		; addr: CE32E58

data_CE32E5A:
#data 0x2FE6		; addr: CE32E5A
#data 0x4F226E43		; addr: CE32E5C
#data 0x430BD325		; addr: CE32E60
#data 0x84E6E500		; addr: CE32E64
#data 0x7001E302		; addr: CE32E68
#data 0x903280E6		; addr: CE32E6C
#data 0xC7230E34		; addr: CE32E70
#data 0xE05CF308		; addr: CE32E74
#data 0x902DFE37		; addr: CE32E78
#data 0x233803EC		; addr: CE32E7C
#data 0xE05C8B03		; addr: CE32E80
#data 0xF34DF3E6		; addr: CE32E84
#data 0xFE37		; addr: CE32E88

data_CE32E8A:
#data 0xE068		; addr: CE32E8A
#data 0xFE37F38D		; addr: CE32E8C
#data 0xF308C71C		; addr: CE32E90
#data 0xE33AE060		; addr: CE32E94
#data 0xC71BFE37		; addr: CE32E98
#data 0xE06CF308		; addr: CE32E9C
#data 0xFE37E400		; addr: CE32EA0
#data 0x9018E514		; addr: CE32EA4
#data 0x0E34E607		; addr: CE32EA8
#data 0x0E45700B		; addr: CE32EAC
#data 0x0E4470F2		; addr: CE32EB0
#data 0xD3157026		; addr: CE32EB4
#data 0x84E20E46		; addr: CE32EB8
#data 0x600C6232		; addr: CE32EBC
#data 0x727C4000		; addr: CE32EC0
#data 0x7101012D		; addr: CE32EC4
#data 0x4F260215		; addr: CE32EC8
#data 0x64E3D209		; addr: CE32ECC
#data 0x6EF6422B		; addr: CE32ED0
#data 0x01F90141		; addr: CE32ED4
#data 0x01A101D2		; addr: CE32ED8

#align4
ptr_CE32EDC_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE32EDC

ptr_CE32EE0_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE32EE0
#data 0x4276AAAA		; addr: CE32EE4
#data 0x42C52492		; addr: CE32EE8
#data extern_8C050EA4		; addr: CE32EEC

#align4
ptr_CE32EF0_to_fn_extern_8C03544C:
#data fn_extern_8C03544C		; addr: CE32EF0

ptr_CE32EF4_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE32EF4

ptr_CE32EF8_to_fn_extern_8C035162:
#data fn_extern_8C035162		; addr: CE32EF8

ptr_CE32EFC_to_ptr_CE3406C_to_data_CE32E5A:
#data ptr_CE3406C_to_data_CE32E5A		; addr: CE32EFC
#data 0x41F00000		; addr: CE32F00
#data 0x40892492		; addr: CE32F04
#data 0xBF4DB6DB		; addr: CE32F08
#data extern_8C2896B0		; addr: CE32F0C


f_code_CE32F10:
mov.l r14,@-r15		; addr: CE32F10
sts.l pr,@-r15		; addr: CE32F12
mov.l @(ptr_CE33024_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE32F14
jsr @r3		; addr: CE32F16
mov r4,r14		; addr: CE32F18
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE32F1A
mov.l @(ptr_CE33028_to_fn_extern_8C052CE2,pc),r3 ; r3 set to 0x8C052CE2		; addr: CE32F1C
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE32F1E
mov 0x34,r0 ; r0 set to 0x34		; addr: CE32F20
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???		; addr: CE32F22
fmov.s @(r0,r14),fr2		; addr: CE32F24
mov 0x68,r1 ; r1 set to 0x68		; addr: CE32F26
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE32F28
fadd fr3,fr2		; addr: CE32F2A
fmov.s fr2,@(r0,r14) 		; addr: CE32F2C
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE32F2E
fmov.s @(r0,r14),fr2		; addr: CE32F30
fmov.s @r1,fr3		; addr: CE32F32
mov 0x60,r1 ; r1 set to 0x60		; addr: CE32F34
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE32F36
fadd fr3,fr2		; addr: CE32F38
fmov.s fr2,@(r0,r14) 		; addr: CE32F3A
mov 0x38,r0 ; r0 set to 0x38		; addr: CE32F3C
fmov.s @(r0,r14),fr2		; addr: CE32F3E
fmov.s @r1,fr3		; addr: CE32F40
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE32F42
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE32F44
fadd fr3,fr2		; addr: CE32F46
fmov.s fr2,@(r0,r14) 		; addr: CE32F48
mov 0x60,r0 ; r0 set to 0x60		; addr: CE32F4A
fmov.s @(r0,r14),fr2		; addr: CE32F4C
fmov.s @r1,fr3		; addr: CE32F4E
fadd fr3,fr2		; addr: CE32F50
fmov.s fr2,@(r0,r14) 		; addr: CE32F52
jsr @r3		; addr: CE32F54
mov r14,r4		; addr: CE32F56
extu.b r0,r0 ; r0 set to 0x60		; addr: CE32F58
tst r0,r0		; addr: CE32F5A
bt l_code_CE32F78		; addr: CE32F5C
mov.b @(0x06,r14),r0 		; addr: CE32F5E
mov 0x14,r5 ; r5 set to 0x14		; addr: CE32F60
mov.l @(ptr_CE3302C_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE32F62
mov 0x08,r6 ; r6 set to 0x08		; addr: CE32F64
add 0x01,r0 ; r0 set to 0x61		; addr: CE32F66
mov.b r0,@(0x06,r14) 		; addr: CE32F68
jsr @r3		; addr: CE32F6A
mov r14,r4		; addr: CE32F6C
lds.l @r15+,pr 		; addr: CE32F6E
mov.l @(ptr_CE33030_to_fn_extern_8C0511B4,pc),r2 ; r2 set to 0x8C0511B4		; addr: CE32F70
mov r14,r4		; addr: CE32F72
jmp @r2		; addr: CE32F74
mov.l @r15+,r14		; addr: CE32F76

l_code_CE32F78:
lds.l @r15+,pr 		; addr: CE32F78
rts 		; addr: CE32F7A
mov.l @r15+,r14		; addr: CE32F7C
;-------------------------------------------------------------------------------

f_code_CE32F7E:
mov.l r14,@-r15		; addr: CE32F7E
sts.l pr,@-r15		; addr: CE32F80
mov.l @(ptr_CE33024_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE32F82
jsr @r3		; addr: CE32F84
mov r4,r14		; addr: CE32F86
exts.b r0,r0		; addr: CE32F88
cmp/pz r0		; addr: CE32F8A
bt l_code_CE32FA0		; addr: CE32F8C
mov.l @(ptr_CE33034_to_fn_extern_8C035162,pc),r3 ; r3 set to 0x8C035162		; addr: CE32F8E
mov 0x00,r5 ; r5 set to 0x00		; addr: CE32F90
jsr @r3		; addr: CE32F92
mov r14,r4		; addr: CE32F94
lds.l @r15+,pr 		; addr: CE32F96
mov.l @(ptr_CE33038_to_fn_extern_8C051854,pc),r2 ; r2 set to 0x8C051854		; addr: CE32F98
mov r14,r4		; addr: CE32F9A
jmp @r2		; addr: CE32F9C
mov.l @r15+,r14		; addr: CE32F9E

l_code_CE32FA0:
mov.w @(data_CE33016,pc),r0 ; r0 set to 0x141		; addr: CE32FA0
mov.b @(r0,r14),r2		; addr: CE32FA2
tst r2,r2		; addr: CE32FA4
bt l_code_CE32FB8		; addr: CE32FA6
mov 0x00,r3 ; r3 set to 0x00		; addr: CE32FA8
mov r14,r4		; addr: CE32FAA
mov.b r3,@(r0,r14) 		; addr: CE32FAC
mov 0x07,r5 ; r5 set to 0x07		; addr: CE32FAE
lds.l @r15+,pr 		; addr: CE32FB0
mov.l @(ptr_CE3303C_to_fn_extern_8C0BFC20,pc),r3 ; r3 set to 0x8C0BFC20		; addr: CE32FB2
jmp @r3		; addr: CE32FB4
mov.l @r15+,r14		; addr: CE32FB6

l_code_CE32FB8:
lds.l @r15+,pr 		; addr: CE32FB8
rts 		; addr: CE32FBA
mov.l @r15+,r14		; addr: CE32FBC
;-------------------------------------------------------------------------------

f_code_CE32FBE:
add 0xFC,r15		; addr: CE32FBE
mov.l r4,@r15		; addr: CE32FC0
mov r4,r0		; addr: CE32FC2
nop 		; addr: CE32FC4
mov.w @(data_CE33018,pc),r1 ; r1 set to 0x1F9		; addr: CE32FC6
mov.l @(ptr_CE33040_to_ptr_CE34078_to_f_code_CE32FD6,pc),r2 ; r2 set to 0xCE34078		; addr: CE32FC8
mov.b @(r0,r1),r0		; addr: CE32FCA
extu.b r0,r0		; addr: CE32FCC
shll2 r0		; addr: CE32FCE
mov.l @(r0,r2),r0		; addr: CE32FD0
jmp @r0		; addr: CE32FD2
add 0x04,r15		; addr: CE32FD4

f_code_CE32FD6:
mov.w @(data_CE3301A,pc),r0 ; r0 set to 0x1FA		; addr: CE32FD6
mov 0xF6,r1 ; r1 set to 0xFFFFFFF6		; addr: CE32FD8
mov.l r14,@-r15		; addr: CE32FDA
mov r4,r14		; addr: CE32FDC
mov.w @(data_CE3301C,pc),r2 ; r2 set to 0xC00		; addr: CE32FDE
sts.l pr,@-r15		; addr: CE32FE0
mov.w @(r0,r14),r3		; addr: CE32FE2
mov 0x22,r0 ; r0 set to 0x22		; addr: CE32FE4
extu.w r3,r3		; addr: CE32FE6
and r2,r3		; addr: CE32FE8
shad r1, r3		; addr: CE32FEA
mov.b r3,@(r0,r14) 		; addr: CE32FEC
extu.b r3,r3		; addr: CE32FEE
tst r3,r3		; addr: CE32FF0
bt l_code_CE33078		; addr: CE32FF2
mov.w @(data_CE3301E,pc),r0 ; r0 set to 0x1FE		; addr: CE32FF4
mov.b @(r0,r14),r3		; addr: CE32FF6
tst r3,r3		; addr: CE32FF8
bf l_code_CE33048		; addr: CE32FFA
mov.w @(data_CE33020,pc),r0 ; r0 set to 0x1A3		; addr: CE32FFC
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE32FFE
extu.b r0,r0		; addr: CE33000
cmp/eq 0x01,r0 		; addr: CE33002
bf l_code_CE33048		; addr: CE33004
mov.l @(ptr_CE33044_to_fn_extern_8C045790,pc),r2 ; r2 set to 0x8C045790		; addr: CE33006
jsr @r2		; addr: CE33008
mov r14,r4		; addr: CE3300A
tst r0,r0		; addr: CE3300C
bt/s l_code_CE33078		; addr: CE3300E
mov r0,r4		; addr: CE33010
bra l_code_CE3306A		; addr: CE33012
mov 0x02,r2		; addr: CE33014

data_CE33016:
#data 0x0141		; addr: CE33016

data_CE33018:
#data 0x01F9		; addr: CE33018

data_CE3301A:
#data 0x01FA		; addr: CE3301A

data_CE3301C:
#data 0x0C00		; addr: CE3301C

data_CE3301E:
#data 0x01FE		; addr: CE3301E

data_CE33020:
#data 0x01A3		; addr: CE33020
#data 0x0000		; addr: CE33022

#align4
ptr_CE33024_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE33024

ptr_CE33028_to_fn_extern_8C052CE2:
#data fn_extern_8C052CE2		; addr: CE33028

ptr_CE3302C_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE3302C

ptr_CE33030_to_fn_extern_8C0511B4:
#data fn_extern_8C0511B4		; addr: CE33030

ptr_CE33034_to_fn_extern_8C035162:
#data fn_extern_8C035162		; addr: CE33034

ptr_CE33038_to_fn_extern_8C051854:
#data fn_extern_8C051854		; addr: CE33038

ptr_CE3303C_to_fn_extern_8C0BFC20:
#data fn_extern_8C0BFC20		; addr: CE3303C

ptr_CE33040_to_ptr_CE34078_to_f_code_CE32FD6:
#data ptr_CE34078_to_f_code_CE32FD6		; addr: CE33040

ptr_CE33044_to_fn_extern_8C045790:
#data fn_extern_8C045790		; addr: CE33044


l_code_CE33048:
mov.w @(data_CE33154,pc),r0 ; r0 set to 0x1FE		; addr: CE33048
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE3304A
extu.b r0,r0		; addr: CE3304C
cmp/eq 0x01,r0 		; addr: CE3304E
bf l_code_CE33078		; addr: CE33050
mov.w @(data_CE33156,pc),r0 ; r0 set to 0x1A3		; addr: CE33052
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE33054
extu.b r0,r0		; addr: CE33056
cmp/eq 0x01,r0 		; addr: CE33058
bf l_code_CE33078		; addr: CE3305A
mov.l @(ptr_CE33164_to_fn_extern_8C045790,pc),r2 ; r2 set to 0x8C045790		; addr: CE3305C
jsr @r2		; addr: CE3305E
mov r14,r4		; addr: CE33060
tst r0,r0		; addr: CE33062
bt/s l_code_CE33078		; addr: CE33064
mov r0,r4		; addr: CE33066
mov 0x05,r2 ; r2 set to 0x05		; addr: CE33068

l_code_CE3306A:
mov.w @(data_CE33158,pc),r0 ; r0 set to 0x1F7, r0 set to 0x1F7		; addr: CE3306A
mov.b r2,@(r0,r14) 		; addr: CE3306C
mov r4,r0 ; r0 ??? bc r4 is ???, r0 ??? bc r4 is ???		; addr: CE3306E
nop 		; addr: CE33070
lds.l @r15+,pr 		; addr: CE33072
rts 		; addr: CE33074
mov.l @r15+,r14		; addr: CE33076
;-------------------------------------------------------------------------------

l_code_CE33078:
mov 0x00,r0 ; r0 set to 0x00		; addr: CE33078
lds.l @r15+,pr 		; addr: CE3307A
rts 		; addr: CE3307C
mov.l @r15+,r14		; addr: CE3307E
;-------------------------------------------------------------------------------

f_code_CE33080:
mov.w @(data_CE3315A,pc),r0 ; r0 set to 0x1FA		; addr: CE33080
mov 0xF6,r1 ; r1 set to 0xFFFFFFF6		; addr: CE33082
mov.l r14,@-r15		; addr: CE33084
mov r4,r14		; addr: CE33086
mov.w @(data_CE3315C,pc),r2 ; r2 set to 0xC00		; addr: CE33088
sts.l pr,@-r15		; addr: CE3308A
mov.w @(r0,r14),r3		; addr: CE3308C
mov 0x22,r0 ; r0 set to 0x22		; addr: CE3308E
extu.w r3,r3		; addr: CE33090
and r2,r3		; addr: CE33092
shad r1, r3		; addr: CE33094
mov.b r3,@(r0,r14) 		; addr: CE33096
extu.b r3,r3		; addr: CE33098
tst r3,r3		; addr: CE3309A
bt l_code_CE330CE		; addr: CE3309C
mov.w @(data_CE33154,pc),r0 ; r0 set to 0x1FE		; addr: CE3309E
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE330A0
extu.b r0,r0		; addr: CE330A2
cmp/eq 0x01,r0 		; addr: CE330A4
bf l_code_CE330CE		; addr: CE330A6
mov.w @(data_CE33156,pc),r0 ; r0 set to 0x1A3		; addr: CE330A8
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE330AA
extu.b r0,r0		; addr: CE330AC
cmp/eq 0x01,r0 		; addr: CE330AE
bf l_code_CE330CE		; addr: CE330B0
mov.l @(ptr_CE33164_to_fn_extern_8C045790,pc),r2 ; r2 set to 0x8C045790		; addr: CE330B2
jsr @r2		; addr: CE330B4
mov r14,r4		; addr: CE330B6
tst r0,r0		; addr: CE330B8
bt/s l_code_CE330CE		; addr: CE330BA
mov r0,r4		; addr: CE330BC
mov.w @(data_CE33158,pc),r0 ; r0 set to 0x1F7		; addr: CE330BE
mov 0x01,r2 ; r2 set to 0x01		; addr: CE330C0
mov.b r2,@(r0,r14) 		; addr: CE330C2
mov r4,r0 ; r0 ??? bc r4 is ???		; addr: CE330C4
nop 		; addr: CE330C6
lds.l @r15+,pr 		; addr: CE330C8
rts 		; addr: CE330CA
mov.l @r15+,r14		; addr: CE330CC
;-------------------------------------------------------------------------------

l_code_CE330CE:
mov 0x00,r0 ; r0 set to 0x00		; addr: CE330CE
lds.l @r15+,pr 		; addr: CE330D0
rts 		; addr: CE330D2
mov.l @r15+,r14		; addr: CE330D4
;-------------------------------------------------------------------------------

f_code_CE330D6:
mov.w @(data_CE3315A,pc),r0 ; r0 set to 0x1FA		; addr: CE330D6
mov 0xF6,r1 ; r1 set to 0xFFFFFFF6		; addr: CE330D8
mov.l r14,@-r15		; addr: CE330DA
mov r4,r14		; addr: CE330DC
mov.w @(data_CE3315C,pc),r2 ; r2 set to 0xC00		; addr: CE330DE
sts.l pr,@-r15		; addr: CE330E0
mov.w @(r0,r14),r3		; addr: CE330E2
mov 0x22,r0 ; r0 set to 0x22		; addr: CE330E4
extu.w r3,r3		; addr: CE330E6
and r2,r3		; addr: CE330E8
shad r1, r3		; addr: CE330EA
mov.b r3,@(r0,r14) 		; addr: CE330EC
extu.b r3,r3		; addr: CE330EE
tst r3,r3		; addr: CE330F0
bt l_code_CE33134		; addr: CE330F2
mov.w @(data_CE33154,pc),r0 ; r0 set to 0x1FE		; addr: CE330F4
mov.b @(r0,r14),r3		; addr: CE330F6
tst r3,r3		; addr: CE330F8
bf l_code_CE33134		; addr: CE330FA
mov.w @(data_CE33156,pc),r0 ; r0 set to 0x1A3		; addr: CE330FC
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE330FE
extu.b r0,r0		; addr: CE33100
cmp/eq 0x01,r0 		; addr: CE33102
bf l_code_CE33134		; addr: CE33104
mova @(data_CE33168,pc),r0  ; r0 set to 0xCE33168		; addr: CE33106
fmov.s @r0,fr3		; addr: CE33108
mov.w @(data_CE3315E,pc),r0 ; r0 set to 0x41C		; addr: CE3310A
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???		; addr: CE3310C
mov 0x38,r0 ; r0 set to 0x38		; addr: CE3310E
fmov.s @(r0,r14),fr1 ; r1 ??? bc r14 is ???		; addr: CE33110
fadd fr3,fr2		; addr: CE33112
fcmp/gt fr2,fr1		; addr: CE33114
bf l_code_CE33134		; addr: CE33116
mov.l @(ptr_CE33164_to_fn_extern_8C045790,pc),r2 ; r2 set to 0x8C045790		; addr: CE33118
jsr @r2		; addr: CE3311A
mov r14,r4		; addr: CE3311C
tst r0,r0		; addr: CE3311E
bt/s l_code_CE33134		; addr: CE33120
mov r0,r4 ; r4 set to 0x38		; addr: CE33122
mov.w @(data_CE33158,pc),r0 ; r0 set to 0x1F7		; addr: CE33124
mov.w @(data_CE33160,pc),r2 ; r2 set to 0x84		; addr: CE33126
mov.b r2,@(r0,r14) 		; addr: CE33128
mov r4,r0 ; r0 set to 0x38		; addr: CE3312A
nop 		; addr: CE3312C
lds.l @r15+,pr 		; addr: CE3312E
rts 		; addr: CE33130
mov.l @r15+,r14		; addr: CE33132
;-------------------------------------------------------------------------------

l_code_CE33134:
mov 0x00,r0 ; r0 set to 0x00		; addr: CE33134
lds.l @r15+,pr 		; addr: CE33136
rts 		; addr: CE33138
mov.l @r15+,r14		; addr: CE3313A
;-------------------------------------------------------------------------------

f_code_CE3313C:
mov.l r4,@-r15		; addr: CE3313C
mov r4,r0		; addr: CE3313E
nop 		; addr: CE33140
mov.w @(data_CE33158,pc),r1 ; r1 set to 0x1F7		; addr: CE33142
mov.l @(ptr_CE3316C_to_ptr_CE34088_to_f_code_CE33170,pc),r2 ; r2 set to 0xCE34088		; addr: CE33144
mov.b @(r0,r1),r0		; addr: CE33146
extu.b r0,r0		; addr: CE33148
and 0x3F,r0 		; addr: CE3314A
shll2 r0		; addr: CE3314C
mov.l @(r0,r2),r3		; addr: CE3314E
jmp @r3		; addr: CE33150
add 0x04,r15		; addr: CE33152

data_CE33154:
#data 0x01FE		; addr: CE33154

data_CE33156:
#data 0x01A3		; addr: CE33156

data_CE33158:
#data 0x01F7		; addr: CE33158

data_CE3315A:
#data 0x01FA		; addr: CE3315A

data_CE3315C:
#data 0x0C00		; addr: CE3315C

data_CE3315E:
#data 0x041C		; addr: CE3315E

data_CE33160:
#data 0x0084		; addr: CE33160
#data 0x0000		; addr: CE33162

#align4
ptr_CE33164_to_fn_extern_8C045790:
#data fn_extern_8C045790		; addr: CE33164

data_CE33168:
#data 0x43092492		; addr: CE33168

#align4
ptr_CE3316C_to_ptr_CE34088_to_f_code_CE33170:
#data ptr_CE34088_to_f_code_CE33170		; addr: CE3316C


f_code_CE33170:
mov.l r14,@-r15		; addr: CE33170
sts.l pr,@-r15		; addr: CE33172
add 0xF4,r15		; addr: CE33174
mova @(data_CE332BC,pc),r0  ; r0 init to 0xCE332BC		; addr: CE33176
mov.l @(ptr_CE332C4_to_extern_8C103660,pc),r3 ; r3 set to 0x8C103660		; addr: CE33178
fmov.s @r0,fr3 ; r3 ??		; addr: CE3317A
mova @(data_CE332C0,pc),r0  ; r0 set to 0xCE332C0		; addr: CE3317C
mov r4,r14		; addr: CE3317E
mov r15,r5		; addr: CE33180
fmov.s fr3,@r15		; addr: CE33182
fmov.s @r0,fr3		; addr: CE33184
mov 0x04,r0 ; r0 set to 0x04		; addr: CE33186
fmov.s fr3,@(r0,r15) 		; addr: CE33188
jsr @r3		; addr: CE3318A
mov r14,r4		; addr: CE3318C
mov.w @(data_CE332BA,pc),r0 ; r0 set to 0x1A0		; addr: CE3318E
mov 0x0A,r2 ; r2 set to 0x0A		; addr: CE33190
mov.l @(ptr_CE332C8_to_fn_extern_8C056F2A,pc),r3 ; r3 set to 0x8C056F2A		; addr: CE33192
mov.b r2,@(r0,r14) 		; addr: CE33194
jsr @r3		; addr: CE33196
mov r14,r4		; addr: CE33198
mov.l @(ptr_CE332CC_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE3319A
mov 0x0F,r5 ; r5 set to 0x0F		; addr: CE3319C
mov 0x00,r6 ; r6 set to 0x00		; addr: CE3319E
jsr @r2		; addr: CE331A0
mov r14,r4		; addr: CE331A2
add 0x0C,r15		; addr: CE331A4
lds.l @r15+,pr 		; addr: CE331A6
rts 		; addr: CE331A8
mov.l @r15+,r14		; addr: CE331AA
;-------------------------------------------------------------------------------

f_code_CE331AC:
mov.l r14,@-r15		; addr: CE331AC
sts.l pr,@-r15		; addr: CE331AE
add 0xF4,r15		; addr: CE331B0
mova @(data_CE332D0,pc),r0  ; r0 init to 0xCE332D0		; addr: CE331B2
mov.l @(ptr_CE332C4_to_extern_8C103660,pc),r3 ; r3 set to 0x8C103660		; addr: CE331B4
fmov.s @r0,fr3 ; r3 ??		; addr: CE331B6
mova @(data_CE332C0,pc),r0  ; r0 set to 0xCE332C0		; addr: CE331B8
mov r4,r14		; addr: CE331BA
mov r15,r5		; addr: CE331BC
fmov.s fr3,@r15		; addr: CE331BE
fmov.s @r0,fr3		; addr: CE331C0
mov 0x04,r0 ; r0 set to 0x04		; addr: CE331C2
fmov.s fr3,@(r0,r15) 		; addr: CE331C4
jsr @r3		; addr: CE331C6
mov r14,r4		; addr: CE331C8
mov.w @(data_CE332BA,pc),r0 ; r0 set to 0x1A0		; addr: CE331CA
mov 0x0A,r2 ; r2 set to 0x0A		; addr: CE331CC
mov.l @(ptr_CE332C8_to_fn_extern_8C056F2A,pc),r3 ; r3 set to 0x8C056F2A		; addr: CE331CE
mov.b r2,@(r0,r14) 		; addr: CE331D0
jsr @r3		; addr: CE331D2
mov r14,r4		; addr: CE331D4
mov.l @(ptr_CE332CC_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE331D6
mov 0x0F,r5 ; r5 set to 0x0F		; addr: CE331D8
mov 0x01,r6 ; r6 set to 0x01		; addr: CE331DA
jsr @r2		; addr: CE331DC
mov r14,r4		; addr: CE331DE
add 0x0C,r15		; addr: CE331E0
lds.l @r15+,pr 		; addr: CE331E2
rts 		; addr: CE331E4
mov.l @r15+,r14		; addr: CE331E6
;-------------------------------------------------------------------------------

f_code_CE331E8:
mov.l r14,@-r15		; addr: CE331E8
sts.l pr,@-r15		; addr: CE331EA
add 0xF4,r15		; addr: CE331EC
mova @(data_CE332D0,pc),r0  ; r0 init to 0xCE332D0		; addr: CE331EE
mov.l @(ptr_CE332C4_to_extern_8C103660,pc),r3 ; r3 set to 0x8C103660		; addr: CE331F0
fmov.s @r0,fr3 ; r3 ??		; addr: CE331F2
mova @(data_CE332C0,pc),r0  ; r0 set to 0xCE332C0		; addr: CE331F4
mov r4,r14		; addr: CE331F6
mov r15,r5		; addr: CE331F8
fmov.s fr3,@r15		; addr: CE331FA
fmov.s @r0,fr3		; addr: CE331FC
mov 0x04,r0 ; r0 set to 0x04		; addr: CE331FE
fmov.s fr3,@(r0,r15) 		; addr: CE33200
jsr @r3		; addr: CE33202
mov r14,r4		; addr: CE33204
mov.w @(data_CE332BA,pc),r0 ; r0 set to 0x1A0		; addr: CE33206
mov 0x0A,r2 ; r2 set to 0x0A		; addr: CE33208
mov.l @(ptr_CE332C8_to_fn_extern_8C056F2A,pc),r3 ; r3 set to 0x8C056F2A		; addr: CE3320A
mov.b r2,@(r0,r14) 		; addr: CE3320C
jsr @r3		; addr: CE3320E
mov r14,r4		; addr: CE33210
mov.l @(ptr_CE332CC_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE33212
mov 0x0F,r5 ; r5 set to 0x0F		; addr: CE33214
mov 0x02,r6 ; r6 set to 0x02		; addr: CE33216
jsr @r2		; addr: CE33218
mov r14,r4		; addr: CE3321A
add 0x0C,r15		; addr: CE3321C
lds.l @r15+,pr 		; addr: CE3321E
rts 		; addr: CE33220
mov.l @r15+,r14		; addr: CE33222
;-------------------------------------------------------------------------------

f_code_CE33224:
mov.l r14,@-r15		; addr: CE33224
sts.l pr,@-r15		; addr: CE33226
add 0xF4,r15		; addr: CE33228
mova @(data_CE332D0,pc),r0  ; r0 init to 0xCE332D0		; addr: CE3322A
mov.l @(ptr_CE332C4_to_extern_8C103660,pc),r3 ; r3 set to 0x8C103660		; addr: CE3322C
fmov.s @r0,fr3 ; r3 ??		; addr: CE3322E
mova @(data_CE332C0,pc),r0  ; r0 set to 0xCE332C0		; addr: CE33230
mov r4,r14		; addr: CE33232
mov r15,r5		; addr: CE33234
fmov.s fr3,@r15		; addr: CE33236
fmov.s @r0,fr3		; addr: CE33238
mov 0x04,r0 ; r0 set to 0x04		; addr: CE3323A
fmov.s fr3,@(r0,r15) 		; addr: CE3323C
jsr @r3		; addr: CE3323E
mov r14,r4		; addr: CE33240
mov.w @(data_CE332BA,pc),r0 ; r0 set to 0x1A0		; addr: CE33242
mov 0x0A,r2 ; r2 set to 0x0A		; addr: CE33244
mov.l @(ptr_CE332C8_to_fn_extern_8C056F2A,pc),r3 ; r3 set to 0x8C056F2A		; addr: CE33246
mov.b r2,@(r0,r14) 		; addr: CE33248
jsr @r3		; addr: CE3324A
mov r14,r4		; addr: CE3324C
mov.l @(ptr_CE332CC_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE3324E
mov 0x0F,r5 ; r5 set to 0x0F		; addr: CE33250
mov 0x03,r6 ; r6 set to 0x03		; addr: CE33252
jsr @r2		; addr: CE33254
mov r14,r4		; addr: CE33256
add 0x0C,r15		; addr: CE33258
lds.l @r15+,pr 		; addr: CE3325A
rts 		; addr: CE3325C
mov.l @r15+,r14		; addr: CE3325E
;-------------------------------------------------------------------------------

f_code_CE33260:
mov.l r14,@-r15		; addr: CE33260
sts.l pr,@-r15		; addr: CE33262
add 0xF4,r15		; addr: CE33264
mova @(data_CE332D4,pc),r0  ; r0 init to 0xCE332D4		; addr: CE33266
mov.l @(ptr_CE332C4_to_extern_8C103660,pc),r3 ; r3 set to 0x8C103660		; addr: CE33268
fmov.s @r0,fr3 ; r3 ??		; addr: CE3326A
mova @(data_CE332D8,pc),r0  ; r0 set to 0xCE332D8		; addr: CE3326C
mov r4,r14		; addr: CE3326E
mov r15,r5		; addr: CE33270
fmov.s fr3,@r15		; addr: CE33272
fmov.s @r0,fr3		; addr: CE33274
mov 0x04,r0 ; r0 set to 0x04		; addr: CE33276
fmov.s fr3,@(r0,r15) 		; addr: CE33278
jsr @r3		; addr: CE3327A
mov r14,r4		; addr: CE3327C
mov.w @(data_CE332BA,pc),r0 ; r0 set to 0x1A0		; addr: CE3327E
mov 0x0A,r2 ; r2 set to 0x0A		; addr: CE33280
fldi0 fr4		; addr: CE33282
mov.b r2,@(r0,r14) 		; addr: CE33284
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE33286
fmov.s fr4,@(r0,r14) 		; addr: CE33288
mov 0x68,r0 ; r0 set to 0x68		; addr: CE3328A
fldi1 fr3		; addr: CE3328C
fadd fr3,fr3		; addr: CE3328E
fmov.s fr4,@(r0,r14) 		; addr: CE33290
mov 0x60,r0 ; r0 set to 0x60		; addr: CE33292
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???		; addr: CE33294
mov.l @(ptr_CE332C8_to_fn_extern_8C056F2A,pc),r3 ; r3 set to 0x8C056F2A		; addr: CE33296
fdiv fr3,fr2		; addr: CE33298
fmov.s fr2,@(r0,r14) 		; addr: CE3329A
mova @(data_CE332DC,pc),r0  ; r0 set to 0xCE332DC		; addr: CE3329C
fmov.s @r0,fr2		; addr: CE3329E
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE332A0
fmov.s fr2,@(r0,r14) 		; addr: CE332A2
jsr @r3		; addr: CE332A4
mov r14,r4		; addr: CE332A6
mov.l @(ptr_CE332CC_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE332A8
mov 0x0F,r5 ; r5 set to 0x0F		; addr: CE332AA
mov 0x06,r6 ; r6 set to 0x06		; addr: CE332AC
jsr @r2		; addr: CE332AE
mov r14,r4		; addr: CE332B0
add 0x0C,r15		; addr: CE332B2
lds.l @r15+,pr 		; addr: CE332B4
rts 		; addr: CE332B6
mov.l @r15+,r14		; addr: CE332B8
;-------------------------------------------------------------------------------

data_CE332BA:
#data 0x01A0		; addr: CE332BA

#align4
data_CE332BC:
#data 0x42555555		; addr: CE332BC

#align4
data_CE332C0:
#data 0x432B6DB6		; addr: CE332C0

#align4
ptr_CE332C4_to_extern_8C103660:
#data extern_8C103660		; addr: CE332C4

ptr_CE332C8_to_fn_extern_8C056F2A:
#data fn_extern_8C056F2A		; addr: CE332C8

ptr_CE332CC_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE332CC

data_CE332D0:
#data 0xC2555555		; addr: CE332D0

#align4
data_CE332D4:
#data 0xC1D55555		; addr: CE332D4

#align4
data_CE332D8:
#data 0x42CDB6DB		; addr: CE332D8

#align4
data_CE332DC:
#data 0xBF4DB6DB		; addr: CE332DC


f_code_CE332E0:
mov.l r14,@-r15		; addr: CE332E0
sts.l pr,@-r15		; addr: CE332E2
add 0xF4,r15		; addr: CE332E4
mova @(data_CE333C0,pc),r0  ; r0 init to 0xCE333C0		; addr: CE332E6
mov.l @(ptr_CE333C8_to_extern_8C103660,pc),r3 ; r3 set to 0x8C103660		; addr: CE332E8
fmov.s @r0,fr3 ; r3 ??		; addr: CE332EA
mova @(data_CE333C4,pc),r0  ; r0 set to 0xCE333C4		; addr: CE332EC
mov r4,r14		; addr: CE332EE
mov r15,r5		; addr: CE332F0
fmov.s fr3,@r15		; addr: CE332F2
fmov.s @r0,fr3		; addr: CE332F4
mov 0x04,r0 ; r0 set to 0x04		; addr: CE332F6
fmov.s fr3,@(r0,r15) 		; addr: CE332F8
jsr @r3		; addr: CE332FA
mov r14,r4		; addr: CE332FC
mov.w @(data_CE333B4,pc),r0 ; r0 set to 0x1A0		; addr: CE332FE
mov 0x0A,r2 ; r2 set to 0x0A		; addr: CE33300
mov.l @(ptr_CE333CC_to_fn_extern_8C056F2A,pc),r3 ; r3 set to 0x8C056F2A		; addr: CE33302
mov.b r2,@(r0,r14) 		; addr: CE33304
jsr @r3		; addr: CE33306
mov r14,r4		; addr: CE33308
mov.l @(ptr_CE333D0_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C		; addr: CE3330A
mov 0x0F,r5 ; r5 set to 0x0F		; addr: CE3330C
mov 0x08,r6 ; r6 set to 0x08		; addr: CE3330E
jsr @r2		; addr: CE33310
mov r14,r4		; addr: CE33312
add 0x0C,r15		; addr: CE33314
lds.l @r15+,pr 		; addr: CE33316
rts 		; addr: CE33318
mov.l @r15+,r14		; addr: CE3331A
;-------------------------------------------------------------------------------

f_code_CE3331C:
mov.w @(data_CE333B6,pc),r0 ; r0 set to 0x1EA		; addr: CE3331C
mov 0x01,r3 ; r3 set to 0x01		; addr: CE3331E
mov.l r14,@-r15		; addr: CE33320
mov r4,r14		; addr: CE33322
mov.b r3,@(r0,r14) 		; addr: CE33324
add 0x0D,r0 ; r0 set to 0x1F7		; addr: CE33326
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE33328
mov r14,r4		; addr: CE3332A
mov.l @(ptr_CE333D4_to_ptr_CE340A0_to_f_code_CE3333A,pc),r1 ; r1 set to 0xCE340A0		; addr: CE3332C
extu.b r0,r0		; addr: CE3332E
and 0x3F,r0 		; addr: CE33330
shll2 r0		; addr: CE33332
mov.l @(r0,r1),r3 ; r3 ??		; addr: CE33334
jmp @r3		; addr: CE33336
mov.l @r15+,r14		; addr: CE33338

f_code_CE3333A:
mov r4,r3		; addr: CE3333A
mov.l @(ptr_CE333D8_to_ptr_CE340B8_to_data_CE3334C,pc),r1 ; r1 set to 0xCE340B8		; addr: CE3333C
mov.l r4,@-r15		; addr: CE3333E
mov.b @(0x06,r3),r0 		; addr: CE33340
extu.b r0,r0		; addr: CE33342
shll2 r0		; addr: CE33344
mov.l @(r0,r1),r3		; addr: CE33346
jmp @r3		; addr: CE33348
add 0x04,r15		; addr: CE3334A

#align4
data_CE3334C:
#data 0x70018446		; addr: CE3334C
#data 0xE0008046		; addr: CE33350
#data 0xC721814E		; addr: CE33354
#data 0xE05CF308		; addr: CE33358
#data 0xC720F437		; addr: CE3335C
#data 0xE068F308		; addr: CE33360
#data 0xC71FF437		; addr: CE33364
#data 0xE060F308		; addr: CE33368
#data 0xC71EF437		; addr: CE3336C
#data 0xE06CF308		; addr: CE33370
#data 0x901FF437		; addr: CE33374
#data 0x2338034C		; addr: CE33378
#data 0xE05C8B07		; addr: CE3337C
#data 0xF34DF346		; addr: CE33380
#data 0xE068F437		; addr: CE33384
#data 0xF34DF346		; addr: CE33388
#data 0xF437		; addr: CE3338C


f_code_CE3338E:
mov.l r14,@-r15		; addr: CE3338E
sts.l pr,@-r15		; addr: CE33390
mov.l @(ptr_CE333EC_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE33392
jsr @r3		; addr: CE33394
mov r4,r14		; addr: CE33396
mov.w @(data_CE333BA,pc),r0 ; r0 set to 0x141		; addr: CE33398
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE3339A
cmp/eq 0x18,r0 		; addr: CE3339C
bf data_CE333F0		; addr: CE3339E
mov.b @(0x06,r14),r0 		; addr: CE333A0
add 0x01,r0		; addr: CE333A2
mov.b r0,@(0x06,r14) 		; addr: CE333A4
mov.w @(data_CE333BC,pc),r0 ; r0 set to 0x41C		; addr: CE333A6
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???		; addr: CE333A8
mov 0x38,r0 ; r0 set to 0x38		; addr: CE333AA
fmov.s fr3,@(r0,r14) 		; addr: CE333AC
lds.l @r15+,pr 		; addr: CE333AE
rts 		; addr: CE333B0
mov.l @r15+,r14		; addr: CE333B2
;-------------------------------------------------------------------------------

data_CE333B4:
#data 0x01A0		; addr: CE333B4

data_CE333B6:
#data 0x01EA		; addr: CE333B6
#data 0x01D2		; addr: CE333B8

data_CE333BA:
#data 0x0141		; addr: CE333BA

data_CE333BC:
#data 0x041C		; addr: CE333BC
#data 0x0000		; addr: CE333BE

#align4
data_CE333C0:
#data 0xC2555555		; addr: CE333C0

#align4
data_CE333C4:
#data 0x432B6DB6		; addr: CE333C4

#align4
ptr_CE333C8_to_extern_8C103660:
#data extern_8C103660		; addr: CE333C8

ptr_CE333CC_to_fn_extern_8C056F2A:
#data fn_extern_8C056F2A		; addr: CE333CC

ptr_CE333D0_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE333D0

ptr_CE333D4_to_ptr_CE340A0_to_f_code_CE3333A:
#data ptr_CE340A0_to_f_code_CE3333A		; addr: CE333D4

ptr_CE333D8_to_ptr_CE340B8_to_data_CE3334C:
#data ptr_CE340B8_to_data_CE3334C		; addr: CE333D8
#data 0x41855555		; addr: CE333DC
#data 0xBED55555		; addr: CE333E0
#data 0x414DB6DB		; addr: CE333E4
#data 0xBF892492		; addr: CE333E8

#align4
ptr_CE333EC_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE333EC

data_CE333F0:
#data 0xE30C85EE		; addr: CE333F0
#data 0x8B1B3037		; addr: CE333F4
#data 0x31ECE15C		; addr: CE333F8
#data 0xF318E034		; addr: CE333FC
#data 0xE168F2E6		; addr: CE33400
#data 0xF23031EC		; addr: CE33404
#data 0xE05CFE27		; addr: CE33408
#data 0xF318F2E6		; addr: CE3340C
#data 0x31ECE160		; addr: CE33410
#data 0xFE27F230		; addr: CE33414
#data 0xF2E6E038		; addr: CE33418
#data 0xE16CF318		; addr: CE3341C
#data 0xF23031EC		; addr: CE33420
#data 0xE060FE27		; addr: CE33424
#data 0xF318F2E6		; addr: CE33428
#data 0xFE27F230		; addr: CE3342C

#align4
data_CE33430:
#data 0x03EC9086		; addr: CE33430
#data 0x892D2338		; addr: CE33434
#data 0xE30000EC		; addr: CE33438
#data 0x81EED442		; addr: CE3343C
#data 0x0E34907E		; addr: CE33440
#data 0x330785EE		; addr: CE33444
#data 0x4021303E		; addr: CE33448
#data 0x024D4000		; addr: CE3344C
#data 0xF208C73E		; addr: CE33450
#data 0x9074425A		; addr: CE33454
#data 0x03ECF32D		; addr: CE33458
#data 0xF43C2338		; addr: CE3345C
#data 0xF4228F01		; addr: CE33460
#data 0xF44D		; addr: CE33464

data_CE33466:
#data 0xE034		; addr: CE33466
#data 0xE300F3E6		; addr: CE33468
#data 0xFE37F340		; addr: CE3346C
#data 0x330785EE		; addr: CE33470
#data 0x4021303E		; addr: CE33474
#data 0x340C4000		; addr: CE33478
#data 0x63038541		; addr: CE3347C
#data 0xC733435A		; addr: CE33480
#data 0xE038F208		; addr: CE33484
#data 0xF43CF32D		; addr: CE33488
#data 0xF3E6F422		; addr: CE3348C
#data 0xFE37F341		; addr: CE33490

#align4
data_CE33494:
#data 0x000B4F26		; addr: CE33494
#data 0x6EF6		; addr: CE33498
;-------------------------------------------------------------------------------

f_code_CE3349A:
mov.w @(data_CE33540,pc),r0 ; r0 set to 0x141		; addr: CE3349A
mov.l r14,@-r15		; addr: CE3349C
mov r4,r14		; addr: CE3349E
sts.l pr,@-r15		; addr: CE334A0
mov.b @(r0,r14),r3		; addr: CE334A2
tst r3,r3		; addr: CE334A4
bt l_code_CE334E6		; addr: CE334A6
mov 0x00,r5 ; r5 set to 0x00		; addr: CE334A8
mov.w @(data_CE33542,pc),r1 ; r1 set to 0x1D2		; addr: CE334AA
mov.b r5,@(r0,r14) 		; addr: CE334AC
mov 0x02,r3 ; r3 set to 0x02		; addr: CE334AE
mov.w @(data_CE33544,pc),r0 ; r0 set to 0x1C8		; addr: CE334B0
mov 0x20,r2 ; r2 set to 0x20		; addr: CE334B2
mov.l @(r0,r14),r4		; addr: CE334B4
add 0xEC,r0 ; r0 set to 0x1B4		; addr: CE334B6
mov.l r14,@(r0,r4) 		; addr: CE334B8
add 0x42,r0 ; r0 set to 0x1F6		; addr: CE334BA
mov.b r3,@(r0,r4) 		; addr: CE334BC
add 0xAB,r0 ; r0 set to 0x1A1		; addr: CE334BE
mov.b r2,@(r0,r4) 		; addr: CE334C0
add 0x58,r0 ; r0 set to 0x1F9		; addr: CE334C2
mov 0x03,r3 ; r3 set to 0x03		; addr: CE334C4
mov.b r3,@(r0,r14) 		; addr: CE334C6
add 0xED,r0 ; r0 set to 0x1E6		; addr: CE334C8
mov.w r5,@(r0,r14) 		; addr: CE334CA
add r4,r1 ; r1 ??? bc r4 is ???		; addr: CE334CC
mov.w @(data_CE33546,pc),r0 ; r0 set to 0x130		; addr: CE334CE
mov.l @(ptr_CE33554_to_fn_extern_8C0423FC,pc),r3 ; r3 set to 0x8C0423FC		; addr: CE334D0
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE334D2
xor 0x01,r0 		; addr: CE334D4
mov.b r0,@r1		; addr: CE334D6
extu.b r0,r0		; addr: CE334D8
mov.w @(data_CE33546,pc),r1 ; r1 set to 0x130		; addr: CE334DA
add r4,r1 ; r1 ??? bc r4 is ???		; addr: CE334DC
mov.w r0,@r1		; addr: CE334DE
lds.l @r15+,pr 		; addr: CE334E0
jmp @r3		; addr: CE334E2
mov.l @r15+,r14		; addr: CE334E4

l_code_CE334E6:
mov.l @(ptr_CE33558_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE334E6
jsr @r3		; addr: CE334E8
mov r14,r4		; addr: CE334EA
exts.b r0,r0		; addr: CE334EC
cmp/pz r0		; addr: CE334EE
bt l_code_CE33518		; addr: CE334F0
mov.b @(0x06,r14),r0 		; addr: CE334F2
mov r14,r4		; addr: CE334F4
fldi0 fr4		; addr: CE334F6
mov 0x00,r6 ; r6 set to 0x00		; addr: CE334F8
add 0x01,r0		; addr: CE334FA
mov.l @(ptr_CE3355C_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE334FC
mov.b r0,@(0x06,r14) 		; addr: CE334FE
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE33500
fmov.s fr4,@(r0,r14) 		; addr: CE33502
mov 0x60,r0 ; r0 set to 0x60		; addr: CE33504
fmov.s fr4,@(r0,r14) 		; addr: CE33506
mov 0x68,r0 ; r0 set to 0x68		; addr: CE33508
fmov.s fr4,@(r0,r14) 		; addr: CE3350A
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE3350C
fmov.s fr4,@(r0,r14) 		; addr: CE3350E
mov 0x11,r5 ; r5 set to 0x11		; addr: CE33510
lds.l @r15+,pr 		; addr: CE33512
jmp @r3		; addr: CE33514
mov.l @r15+,r14		; addr: CE33516

l_code_CE33518:
lds.l @r15+,pr 		; addr: CE33518
rts 		; addr: CE3351A
mov.l @r15+,r14		; addr: CE3351C
;-------------------------------------------------------------------------------

f_code_CE3351E:
sts.l pr,@-r15		; addr: CE3351E
add 0xFC,r15		; addr: CE33520
mov.l @(ptr_CE33558_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE33522
jsr @r3		; addr: CE33524
mov.l r4,@r15		; addr: CE33526
exts.b r0,r0		; addr: CE33528
cmp/pz r0		; addr: CE3352A
bt l_code_CE33538		; addr: CE3352C
mov.l @r15,r4		; addr: CE3352E
add 0x04,r15		; addr: CE33530
mov.l @(ptr_CE33560_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE33532
jmp @r3		; addr: CE33534
lds.l @r15+,pr 		; addr: CE33536

l_code_CE33538:
add 0x04,r15		; addr: CE33538
lds.l @r15+,pr 		; addr: CE3353A
rts 		; addr: CE3353C
nop 		; addr: CE3353E
;-------------------------------------------------------------------------------

data_CE33540:
#data 0x0141		; addr: CE33540

data_CE33542:
#data 0x01D2		; addr: CE33542

data_CE33544:
#data 0x01C8		; addr: CE33544

data_CE33546:
#data 0x0130		; addr: CE33546

#align4
ptr_CE33548_to_data_CE340C8:
#data data_CE340C8		; addr: CE33548
#data 0x3FD55555		; addr: CE3354C
#data 0x40092492		; addr: CE33550

#align4
ptr_CE33554_to_fn_extern_8C0423FC:
#data fn_extern_8C0423FC		; addr: CE33554

ptr_CE33558_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE33558

ptr_CE3355C_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE3355C

ptr_CE33560_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE33560


f_code_CE33564:
mov.l r14,@-r15		; addr: CE33564
sts.l pr,@-r15		; addr: CE33566
mov.l @(ptr_CE33698_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE33568
jsr @r3		; addr: CE3356A
mov r4,r14		; addr: CE3356C
exts.b r0,r0		; addr: CE3356E
cmp/pz r0		; addr: CE33570
bt data_CE3357E		; addr: CE33572
lds.l @r15+,pr 		; addr: CE33574
mov.l @(ptr_CE3369C_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648		; addr: CE33576
mov r14,r4		; addr: CE33578
jmp @r3		; addr: CE3357A
mov.l @r15+,r14		; addr: CE3357C

data_CE3357E:
#data 0x9082		; addr: CE3357E
#data 0x880200EC		; addr: CE33580
#data 0x907E8B0F		; addr: CE33584
#data 0xE301E200		; addr: CE33588
#data 0x907B0E24		; addr: CE3358C
#data 0x70EC04EE		; addr: CE33590
#data 0x704204E6		; addr: CE33594
#data 0x70DC0434		; addr: CE33598
#data 0xE32102EC		; addr: CE3359C
#data 0x70CF0424		; addr: CE335A0
#data 0x0434		; addr: CE335A4

data_CE335A6:
#data 0x4F26		; addr: CE335A6
#data 0x6EF6000B		; addr: CE335A8
;-------------------------------------------------------------------------------

#align4
data_CE335AC:
#data 0x2FE6906B		; addr: CE335AC
#data 0x4F226E43		; addr: CE335B0
#data 0x431103EC		; addr: CE335B4
#data 0xE4008D0F		; addr: CE335B8
#data 0xE0220E44		; addr: CE335BC
#data 0x600C00EC		; addr: CE335C0
#data 0x8908C802		; addr: CE335C4
#data 0xE301905F		; addr: CE335C8
#data 0x223A02EC		; addr: CE335CC
#data 0x01EC0E24		; addr: CE335D0
#data 0x611C905A		; addr: CE335D4
#data 0x0E15		; addr: CE335D8

data_CE335DA:
#data 0x9054		; addr: CE335DA
#data 0x880100EC		; addr: CE335DC
#data 0x90508B11		; addr: CE335E0
#data 0x0E44E222		; addr: CE335E4
#data 0x04EE904E		; addr: CE335E8
#data 0x04E670EC		; addr: CE335EC
#data 0x03EC701E		; addr: CE335F0
#data 0x70CF0434		; addr: CE335F4
#data 0x70550424		; addr: CE335F8
#data 0x0434E30B		; addr: CE335FC
#data 0x430BD327		; addr: CE33600
#data 0x0009		; addr: CE33604

data_CE33606:
#data 0xD224		; addr: CE33606
#data 0x64E3420B		; addr: CE33608
#data 0x4011600E		; addr: CE3360C
#data 0x4F268904		; addr: CE33610
#data 0x64E3D221		; addr: CE33614
#data 0x6EF6422B		; addr: CE33618

#align4
data_CE3361C:
#data 0x000B4F26		; addr: CE3361C
#data 0x6EF6		; addr: CE33620
;-------------------------------------------------------------------------------

f_code_CE33622:
mov.l r14,@-r15		; addr: CE33622
mov r4,r14		; addr: CE33624
mov.l r13,@-r15		; addr: CE33626
mov.l r12,@-r15		; addr: CE33628
mov.l r11,@-r15		; addr: CE3362A
mov.l r10,@-r15		; addr: CE3362C
mov 0x01,r10 ; r10 set to 0x01		; addr: CE3362E
fmov.s fr15,@-r15		; addr: CE33630
mov.w @(data_CE3368E,pc),r13 ; r13 set to 0x2A4		; addr: CE33632
sts.l pr,@-r15		; addr: CE33634
mov.b @(0x06,r14),r0 		; addr: CE33636
add r14,r13 ; r13 ??? bc r14 is ???		; addr: CE33638
fldi0 fr15		; addr: CE3363A
tst r0,r0		; addr: CE3363C
bt/s l_code_CE33646		; addr: CE3363E
mov 0x00,r12 ; r12 set to 0x00		; addr: CE33640
bra data_CE33774		; addr: CE33642
nop 		; addr: CE33644

l_code_CE33646:
mov.l @(ptr_CE33698_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE33646
jsr @r3		; addr: CE33648
mov r14,r4		; addr: CE3364A
exts.b r0,r0		; addr: CE3364C
cmp/pz r0		; addr: CE3364E
bf data_CE336DA		; addr: CE33650
mov.w @(data_CE33686,pc),r0 ; r0 set to 0x141		; addr: CE33652
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???		; addr: CE33654
cmp/eq 0x02,r0 		; addr: CE33656
bt l_code_CE3365E		; addr: CE33658
bra l_code_CE33842		; addr: CE3365A
nop 		; addr: CE3365C

l_code_CE3365E:
mov.w @(data_CE33686,pc),r0 ; r0 set to 0x141		; addr: CE3365E
mov.b r10,@(r0,r14) 		; addr: CE33660
mov.w @(data_CE33690,pc),r0 ; r0 set to 0x34A		; addr: CE33662
mov.w @(r0,r14),r5		; addr: CE33664
mov.w @(data_CE33692,pc),r0 ; r0 set to 0x525		; addr: CE33666
mov.b @(r0,r14),r3		; addr: CE33668
tst r3,r3		; addr: CE3366A
bf l_code_CE336AA		; addr: CE3366C
mov.w @(data_CE33694,pc),r3 ; r3 set to 0x800		; addr: CE3366E
extu.w r5,r4		; addr: CE33670
mov 0x04,r7 ; r7 set to 0x04		; addr: CE33672
tst r4,r3		; addr: CE33674
bt/s data_CE336A4		; addr: CE33676
mov 0x0E,r6 ; r6 set to 0x0E		; addr: CE33678
mov 0x22,r0 ; r0 set to 0x22		; addr: CE3367A
mov.b r6,@r13		; addr: CE3367C
mov 0x1C,r3 ; r3 set to 0x1C		; addr: CE3367E
mov.b r3,@(r0,r14) 		; addr: CE33680
bra l_code_CE336B2		; addr: CE33682
mov r7,r0		; addr: CE33684

data_CE33686:
#data 0x0141		; addr: CE33686
#data 0x01D201C8		; addr: CE33688
#data 0x0130		; addr: CE3368C

data_CE3368E:
#data 0x02A4		; addr: CE3368E

data_CE33690:
#data 0x034A		; addr: CE33690

data_CE33692:
#data 0x0525		; addr: CE33692

data_CE33694:
#data 0x0800		; addr: CE33694
#data 0x0000		; addr: CE33696

#align4
ptr_CE33698_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE33698

ptr_CE3369C_to_fn_extern_8C051648:
#data fn_extern_8C051648		; addr: CE3369C
#data fn_extern_8C0423FC		; addr: CE336A0

#align4
data_CE336A4:
#data 0x24289255		; addr: CE336A4
#data 0x8B05		; addr: CE336A8


l_code_CE336AA:
mov 0x22,r0 ; r0 set to 0x22		; addr: CE336AA
mov.b r12,@r13		; addr: CE336AC
mov.b r12,@(r0,r14) 		; addr: CE336AE
mov 0x05,r0 ; r0 set to 0x05		; addr: CE336B0

l_code_CE336B2:
bra l_code_CE33842		; addr: CE336B2
mov.w r0,@(0x1C,r14) 		; addr: CE336B4

data_CE336B6:
#data 0xE022		; addr: CE336B6
#data 0xE11C2D60		; addr: CE336B8
#data 0x60730E14		; addr: CE336BC
#data 0x81EE0009		; addr: CE336C0
#data 0x91459046		; addr: CE336C4
#data 0x31EC00EC		; addr: CE336C8
#data 0x2100CA01		; addr: CE336CC
#data 0x9140600C		; addr: CE336D0
#data 0xA0B431EC		; addr: CE336D4
#data 0x2101		; addr: CE336D8

data_CE336DA:
#data 0x84E6		; addr: CE336DA
#data 0xD31FE50F		; addr: CE336DC
#data 0x80E67001		; addr: CE336E0
#data 0x660385EE		; addr: CE336E4
#data 0x64E3430B		; addr: CE336E8
#data 0x80D1E040		; addr: CE336EC
#data 0x81D1E00D		; addr: CE336F0
#data 0x80D49030		; addr: CE336F4
#data 0x81EEE01E		; addr: CE336F8
#data 0x000960A3		; addr: CE336FC
#data 0xE501D317		; addr: CE33700
#data 0x81EFE602		; addr: CE33704
#data 0x430BE700		; addr: CE33708
#data 0x902464E3		; addr: CE3370C
#data 0xD31462E3		; addr: CE33710
#data 0x04EE7234		; addr: CE33714
#data 0x71346143		; addr: CE33718
#data 0xE00C430B		; addr: CE3371C
#data 0x02ECE022		; addr: CE33720
#data extern_8D082228		; addr: CE33724
#data 0xC70FF4FC		; addr: CE33728
#data 0x9011F408		; addr: CE3372C
#data 0x233803EC		; addr: CE33730
#data 0xC70D8901		; addr: CE33734
#data 0xF408		; addr: CE33738

data_CE3373A:
#data 0xE034		; addr: CE3373A
#data 0xF346D10C		; addr: CE3373C
#data 0xF340415A		; addr: CE33740
#data 0xE038F437		; addr: CE33744
#data 0xF30DF246		; addr: CE33748
#data 0xA078F230		; addr: CE3374C
#data 0x0400F427		; addr: CE33750
#data 0x013001D2		; addr: CE33754
#data 0x01C800FF		; addr: CE33758
#data fn_extern_8C034E8C		; addr: CE3375C
#data fn_extern_8C068EE4		; addr: CE33760
#data extern_8C1294C8		; addr: CE33764
#data 0xC3200000		; addr: CE33768
#data 0x43200000		; addr: CE3376C
#data 0x434DB6DB		; addr: CE33770

#align4
data_CE33774:
#data 0x80D49076		; addr: CE33774
#data 0x0BEE9075		; addr: CE33778
#data 0x03BC7035		; addr: CE3377C
#data 0x89022338		; addr: CE33780
#data 0x000960C3		; addr: CE33784
#data 0x81D1		; addr: CE33788

data_CE3378A:
#data 0x85EE		; addr: CE3378A
#data 0x81EE70FF		; addr: CE3378C
#data 0x4011600F		; addr: CE33790
#data 0xD2368B2C		; addr: CE33794
#data 0x420B65D3		; addr: CE33798
#data 0xD33564E3		; addr: CE3379C
#data 0x64E3430B		; addr: CE337A0
#data 0x200885D1		; addr: CE337A4
#data 0x85EF894B		; addr: CE337A8
#data 0x81EF70FF		; addr: CE337AC
#data 0x2008600F		; addr: CE337B0
#data 0x60A38B45		; addr: CE337B4
#data 0x81EF0009		; addr: CE337B8
#data 0xF508C72E		; addr: CE337BC
#data 0x03ECE022		; addr: CE337C0
#data extern_8D0A2338		; addr: CE337C4
#data 0xC72CF4FC		; addr: CE337C8
#data 0xC72CF408		; addr: CE337CC
#data 0x9049F508		; addr: CE337D0
#data 0x233803EC		; addr: CE337D4
#data 0xC72A8901		; addr: CE337D8
#data 0xF408		; addr: CE337DC

data_CE337DE:
#data 0xE034		; addr: CE337DE
#data 0xF340F3B6		; addr: CE337E0
#data 0xE038FB37		; addr: CE337E4
#data 0xF250F2B6		; addr: CE337E8
#data 0xFB27A029		; addr: CE337EC

#align4
data_CE337F0:
#data 0x000960C3		; addr: CE337F0
#data 0x80D481D1		; addr: CE337F4
#data 0x93379037		; addr: CE337F8
#data 0x70420BE6		; addr: CE337FC
#data 0x70AB0BA4		; addr: CE33800
#data 0x70310B34		; addr: CE33804
#data 0x222802EC		; addr: CE33808
#data 0xE5008D08		; addr: CE3380C
#data 0x00ECE022		; addr: CE33810
#data 0x31ECE122		; addr: CE33814
#data 0x7020600B		; addr: CE33818
#data 0x2100C91F		; addr: CE3381C

#align4
data_CE33820:
#data 0x430BD319		; addr: CE33820
#data 0xD21964E3		; addr: CE33824
#data 0x420BE52B		; addr: CE33828
#data 0x4F2664E3		; addr: CE3382C
#data 0x64E3D317		; addr: CE33830
#data 0x6AF6FFF9		; addr: CE33834
#data 0x6CF66BF6		; addr: CE33838
#data 0x432B6DF6		; addr: CE3383C
#data 0x6EF6		; addr: CE33840


l_code_CE33842:
lds.l @r15+,pr 		; addr: CE33842
fmov.s @r15+,fr15		; addr: CE33844
mov.l @r15+,r10		; addr: CE33846
mov.l @r15+,r11		; addr: CE33848
mov.l @r15+,r12		; addr: CE3384A
mov.l @r15+,r13		; addr: CE3384C
rts 		; addr: CE3384E
mov.l @r15+,r14		; addr: CE33850
;-------------------------------------------------------------------------------

f_code_CE33852:
mov r4,r3		; addr: CE33852
mov.l @(ptr_CE33894_to_ptr_CE340E0_to_data_CE33898,pc),r1 ; r1 set to 0xCE340E0		; addr: CE33854
mov.l r4,@-r15		; addr: CE33856
mov.b @(0x06,r3),r0 		; addr: CE33858
extu.b r0,r0		; addr: CE3385A
shll2 r0		; addr: CE3385C
mov.l @(r0,r1),r3		; addr: CE3385E
jmp @r3		; addr: CE33860
add 0x04,r15		; addr: CE33862
#data 0x01C800FF		; addr: CE33864
#data 0x01B401D2		; addr: CE33868
#data 0x000000A3		; addr: CE3386C

#align4
ptr_CE33870_to_fn_data_CE31CA0:
#data fn_data_CE31CA0		; addr: CE33870
#data fn_extern_8C034DEE		; addr: CE33874
#data 0x419A4924		; addr: CE33878
#data 0xC1200000		; addr: CE3387C
#data 0x414DB6DB		; addr: CE33880
#data 0x41200000		; addr: CE33884
#data fn_extern_8C035162		; addr: CE33888
#data fn_extern_8C042008		; addr: CE3388C
#data fn_extern_8C051648		; addr: CE33890

#align4
ptr_CE33894_to_ptr_CE340E0_to_data_CE33898:
#data ptr_CE340E0_to_data_CE33898		; addr: CE33894

data_CE33898:
#data 0xE15C2FE6		; addr: CE33898
#data 0x31EC6E43		; addr: CE3389C
#data 0xD347E034		; addr: CE338A0
#data 0xF2E64F22		; addr: CE338A4
#data 0xE168F318		; addr: CE338A8
#data 0xF23031EC		; addr: CE338AC
#data 0xE05CFE27		; addr: CE338B0
#data 0xE160F318		; addr: CE338B4
#data 0x31ECF2E6		; addr: CE338B8
#data 0xFE27F230		; addr: CE338BC
#data 0xF2E6E038		; addr: CE338C0
#data 0xE16CF318		; addr: CE338C4
#data 0xF23031EC		; addr: CE338C8
#data 0xE060FE27		; addr: CE338CC
#data 0xF318F2E6		; addr: CE338D0
#data 0xFE27F230		; addr: CE338D4
#data 0x64E3430B		; addr: CE338D8
#data 0x00EC906B		; addr: CE338DC
#data 0x8B0F8802		; addr: CE338E0
#data 0xF48D84E6		; addr: CE338E4
#data 0x80E67001		; addr: CE338E8
#data 0xFE47E05C		; addr: CE338EC
#data 0xFE47E068		; addr: CE338F0
#data 0xF308C733		; addr: CE338F4
#data 0xFE37E060		; addr: CE338F8
#data 0xF308C732		; addr: CE338FC
#data 0xFE37E06C		; addr: CE33900

#align4
data_CE33904:
#data 0x000B4F26		; addr: CE33904
#data 0x6EF6		; addr: CE33908
;-------------------------------------------------------------------------------

f_code_CE3390A:
mov.l r14,@-r15		; addr: CE3390A
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE3390C
mov r4,r14		; addr: CE3390E
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE33910
mov 0x34,r0 ; r0 set to 0x34		; addr: CE33912
sts.l pr,@-r15		; addr: CE33914
fmov.s @(r0,r14),fr2		; addr: CE33916
fmov.s @r1,fr3		; addr: CE33918
mov 0x68,r1 ; r1 set to 0x68		; addr: CE3391A
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE3391C
fadd fr3,fr2		; addr: CE3391E
fmov.s fr2,@(r0,r14) 		; addr: CE33920
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE33922
fmov.s @r1,fr3		; addr: CE33924
mov 0x60,r1 ; r1 set to 0x60		; addr: CE33926
fmov.s @(r0,r14),fr2		; addr: CE33928
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE3392A
fadd fr3,fr2		; addr: CE3392C
fmov.s fr2,@(r0,r14) 		; addr: CE3392E
mov 0x38,r0 ; r0 set to 0x38		; addr: CE33930
fmov.s @(r0,r14),fr2		; addr: CE33932
fmov.s @r1,fr3		; addr: CE33934
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE33936
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE33938
fadd fr3,fr2		; addr: CE3393A
fmov.s fr2,@(r0,r14) 		; addr: CE3393C
mov 0x60,r0 ; r0 set to 0x60		; addr: CE3393E
fmov.s @(r0,r14),fr2		; addr: CE33940
fmov.s @r1,fr3		; addr: CE33942
fadd fr3,fr2		; addr: CE33944
fmov.s fr2,@(r0,r14) 		; addr: CE33946
mova @(data_CE339CC,pc),r0  ; r0 set to 0xCE339CC		; addr: CE33948
fmov.s @r0,fr3		; addr: CE3394A
mov.w @(data_CE339B8,pc),r0 ; r0 set to 0x41C		; addr: CE3394C
fmov.s @(r0,r14),fr2		; addr: CE3394E
mov 0x38,r0 ; r0 set to 0x38		; addr: CE33950
fmov.s @(r0,r14),fr1		; addr: CE33952
fadd fr3,fr2		; addr: CE33954
fcmp/gt fr1,fr2		; addr: CE33956
bf l_code_CE339B0		; addr: CE33958
mov.b @(0x06,r14),r0 		; addr: CE3395A
mov.l @(ptr_CE339C0_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE3395C
add 0x01,r0 ; r0 set to 0x39		; addr: CE3395E
mov.b r0,@(0x06,r14) 		; addr: CE33960
mov 0x0A,r0 ; r0 set to 0x0A		; addr: CE33962
mov.w r0,@(0x1C,r14) 		; addr: CE33964
mova @(data_CE339D0,pc),r0  ; r0 set to 0xCE339D0		; addr: CE33966
fmov.s @r0,fr2		; addr: CE33968
mov 0x6C,r0 ; r0 set to 0x6C		; addr: CE3396A
fmov.s fr2,@(r0,r14) 		; addr: CE3396C
jsr @r3		; addr: CE3396E
mov r14,r4		; addr: CE33970
mov.w @(data_CE339BA,pc),r0 ; r0 set to 0x1C8		; addr: CE33972
mov 0x01,r3 ; r3 set to 0x01		; addr: CE33974
mov 0x00,r7 ; r7 set to 0x00		; addr: CE33976
mov.l @(r0,r14),r4		; addr: CE33978
add 0xEC,r0 ; r0 set to 0x1B4		; addr: CE3397A
mov r7,r6 ; r6 set to 0x00		; addr: CE3397C
mov 0x01,r5 ; r5 set to 0x01		; addr: CE3397E
mov.l r14,@(r0,r4) 		; addr: CE33980
add 0x42,r0 ; r0 set to 0x1F6		; addr: CE33982
mov.b r3,@(r0,r4) 		; addr: CE33984
add 0xDC,r0 ; r0 set to 0x1D2		; addr: CE33986
mov.b @(r0,r14),r2		; addr: CE33988
mov 0x24,r3 ; r3 set to 0x24		; addr: CE3398A
mov.b r2,@(r0,r4) 		; addr: CE3398C
add 0xCF,r0 ; r0 set to 0x1A1		; addr: CE3398E
mov.b r3,@(r0,r4) 		; addr: CE33990
mov 0x40,r0 ; r0 set to 0x40		; addr: CE33992
mov.w @(data_CE339BC,pc),r4 ; r4 set to 0x2A4		; addr: CE33994
mov 0x08,r3 ; r3 set to 0x08		; addr: CE33996
add r14,r4 ; r4 ??? bc r14 is ???		; addr: CE33998
mov.b r3,@r4		; addr: CE3399A
mov.b r0,@(0x01,r4) 		; addr: CE3399C
mov 0x05,r0 ; r0 set to 0x05		; addr: CE3399E
mov.w r0,@(0x02,r4) 		; addr: CE339A0
mov.w @(data_CE339BE,pc),r0 ; r0 set to 0xFF		; addr: CE339A2
mov.l @(ptr_CE339D4_to_fn_extern_8C068EE4,pc),r3 ; r3 set to 0x8C068EE4		; addr: CE339A4
mov.b r0,@(0x04,r4) 		; addr: CE339A6
mov r14,r4		; addr: CE339A8
lds.l @r15+,pr 		; addr: CE339AA
jmp @r3		; addr: CE339AC
mov.l @r15+,r14		; addr: CE339AE

l_code_CE339B0:
lds.l @r15+,pr 		; addr: CE339B0
rts 		; addr: CE339B2
mov.l @r15+,r14		; addr: CE339B4
;-------------------------------------------------------------------------------
#data 0x0141		; addr: CE339B6

data_CE339B8:
#data 0x041C		; addr: CE339B8

data_CE339BA:
#data 0x01C8		; addr: CE339BA

data_CE339BC:
#data 0x02A4		; addr: CE339BC

data_CE339BE:
#data 0x00FF		; addr: CE339BE

#align4
ptr_CE339C0_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE339C0
#data 0xC0CDB6DB		; addr: CE339C4
#data 0xBF4DB6DB		; addr: CE339C8

#align4
data_CE339CC:
#data 0x43892492		; addr: CE339CC

#align4
data_CE339D0:
#data 0x3F092492		; addr: CE339D0

#align4
ptr_CE339D4_to_fn_extern_8C068EE4:
#data fn_extern_8C068EE4		; addr: CE339D4


f_code_CE339D8:
mov.l r14,@-r15		; addr: CE339D8
mov r4,r14		; addr: CE339DA
mov.l r13,@-r15		; addr: CE339DC
mov 0x5C,r1 ; r1 set to 0x5C		; addr: CE339DE
mov.w @(data_CE33AEE,pc),r13 ; r13 set to 0x2A4		; addr: CE339E0
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE339E2
mov.w @(data_CE33AF0,pc),r0 ; r0 set to 0xFF		; addr: CE339E4
add r14,r13 ; r13 ??? bc r14 is ???		; addr: CE339E6
sts.l pr,@-r15		; addr: CE339E8
mov.b r0,@(0x04,r13) 		; addr: CE339EA
mov 0x34,r0 ; r0 set to 0x34		; addr: CE339EC
fmov.s @(r0,r14),fr2		; addr: CE339EE
fmov.s @r1,fr3		; addr: CE339F0
mov 0x68,r1 ; r1 set to 0x68		; addr: CE339F2
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE339F4
fadd fr3,fr2		; addr: CE339F6
fmov.s fr2,@(r0,r14) 		; addr: CE339F8
mov 0x5C,r0 ; r0 set to 0x5C		; addr: CE339FA
fmov.s @(r0,r14),fr2		; addr: CE339FC
fmov.s @r1,fr3		; addr: CE339FE
mov 0x60,r1 ; r1 set to 0x60		; addr: CE33A00
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE33A02
fadd fr3,fr2		; addr: CE33A04
fmov.s fr2,@(r0,r14) 		; addr: CE33A06
mov 0x38,r0 ; r0 set to 0x38		; addr: CE33A08
fmov.s @(r0,r14),fr2		; addr: CE33A0A
fmov.s @r1,fr3		; addr: CE33A0C
mov 0x6C,r1 ; r1 set to 0x6C		; addr: CE33A0E
add r14,r1 ; r1 ??? bc r14 is ???		; addr: CE33A10
fadd fr3,fr2		; addr: CE33A12
fmov.s fr2,@(r0,r14) 		; addr: CE33A14
mov 0x60,r0 ; r0 set to 0x60		; addr: CE33A16
fmov.s @(r0,r14),fr2		; addr: CE33A18
fmov.s @r1,fr3		; addr: CE33A1A
fadd fr3,fr2		; addr: CE33A1C
fmov.s fr2,@(r0,r14) 		; addr: CE33A1E
mov.w @(data_CE33AF2,pc),r0 ; r0 set to 0x41C		; addr: CE33A20
fmov.s @(r0,r14),fr3		; addr: CE33A22
mov 0x38,r0 ; r0 set to 0x38		; addr: CE33A24
fmov.s @(r0,r14),fr2		; addr: CE33A26
fcmp/gt fr2,fr3		; addr: CE33A28
bf data_CE33A3C		; addr: CE33A2A
mova @(data_CE33AF8,pc),r0  ; r0 set to 0xCE33AF8		; addr: CE33A2C
fmov.s @r0,fr3		; addr: CE33A2E
mov.w @(data_CE33AF2,pc),r0 ; r0 set to 0x41C		; addr: CE33A30
fmov.s @(r0,r14),fr2		; addr: CE33A32
mov 0x38,r0 ; r0 set to 0x38		; addr: CE33A34
fadd fr3,fr2		; addr: CE33A36
bra data_CE33A50		; addr: CE33A38
fmov.s fr2,@(r0,r14) 		; addr: CE33A3A

#align4
data_CE33A3C:
#data 0x65D3D22F		; addr: CE33A3C
#data 0x64E3420B		; addr: CE33A40
#data 0x70FF85EE		; addr: CE33A44
#data 0x600F81EE		; addr: CE33A48
#data 0x89274011		; addr: CE33A4C

#align4
data_CE33A50:
#data 0x700184E6		; addr: CE33A50
#data 0xE00080E6		; addr: CE33A54
#data 0xC72980D4		; addr: CE33A58
#data 0xE05CF308		; addr: CE33A5C
#data 0x9047FE37		; addr: CE33A60
#data 0x233803ED		; addr: CE33A64
#data 0xE05C8903		; addr: CE33A68
#data 0xF34DF3E6		; addr: CE33A6C
#data 0xFE37		; addr: CE33A70

data_CE33A72:
#data 0xE068		; addr: CE33A72
#data 0xFE37F38D		; addr: CE33A74
#data 0xF308C722		; addr: CE33A78
#data 0xD323E060		; addr: CE33A7C
#data 0xFE37E500		; addr: CE33A80
#data 0xF308C720		; addr: CE33A84
#data 0xFE37E06C		; addr: CE33A88
#data 0x64E3430B		; addr: CE33A8C
#data 0xD21F4F26		; addr: CE33A90
#data 0xE50FE607		; addr: CE33A94
#data 0x6DF664E3		; addr: CE33A98
#data 0x6EF6422B		; addr: CE33A9C

#align4
data_CE33AA0:
#data 0x6DF64F26		; addr: CE33AA0
#data 0x6EF6000B		; addr: CE33AA4
;-------------------------------------------------------------------------------

f_code_CE33AA8:
mov.l r14,@-r15		; addr: CE33AA8
sts.l pr,@-r15		; addr: CE33AAA
mov.l @(ptr_CE33B14_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE		; addr: CE33AAC
jsr @r3		; addr: CE33AAE
mov r4,r14		; addr: CE33AB0
mov.l @(ptr_CE33B18_to_fn_extern_8C04FEA8,pc),r2 ; r2 set to 0x8C04FEA8		; addr: CE33AB2
jsr @r2		; addr: CE33AB4
mov r14,r4		; addr: CE33AB6
mov.l @(ptr_CE33B1C_to_fn_extern_8C052CE2,pc),r3 ; r3 set to 0x8C052CE2		; addr: CE33AB8
jsr @r3		; addr: CE33ABA
mov r14,r4		; addr: CE33ABC
extu.b r0,r0		; addr: CE33ABE
tst r0,r0		; addr: CE33AC0
bt l_code_CE33AD6		; addr: CE33AC2
mov.l @(ptr_CE33B20_to_fn_extern_8C042008,pc),r3 ; r3 set to 0x8C042008		; addr: CE33AC4
mov 0x2B,r5 ; r5 set to 0x2B		; addr: CE33AC6
jsr @r3		; addr: CE33AC8
mov r14,r4		; addr: CE33ACA
lds.l @r15+,pr 		; addr: CE33ACC
mov.l @(ptr_CE33B24_to_fn_extern_8C052DAC,pc),r2 ; r2 set to 0x8C052DAC		; addr: CE33ACE
mov r14,r4		; addr: CE33AD0
jmp @r2		; addr: CE33AD2
mov.l @r15+,r14		; addr: CE33AD4

l_code_CE33AD6:
lds.l @r15+,pr 		; addr: CE33AD6
rts 		; addr: CE33AD8
mov.l @r15+,r14		; addr: CE33ADA
;-------------------------------------------------------------------------------

f_code_CE33ADC:
mov r4,r3		; addr: CE33ADC
mov.l @(ptr_CE33B28_to_ptr_CE340F0_to_data_CE33B2C,pc),r1 ; r1 set to 0xCE340F0		; addr: CE33ADE
mov.l r4,@-r15		; addr: CE33AE0
mov.b @(0x06,r3),r0 		; addr: CE33AE2
extu.b r0,r0		; addr: CE33AE4
shll2 r0		; addr: CE33AE6
mov.l @(r0,r1),r3		; addr: CE33AE8
jmp @r3		; addr: CE33AEA
add 0x04,r15		; addr: CE33AEC

data_CE33AEE:
#data 0x02A4		; addr: CE33AEE

data_CE33AF0:
#data 0x00FF		; addr: CE33AF0

data_CE33AF2:
#data 0x041C		; addr: CE33AF2
#data 0x00000130		; addr: CE33AF4

#align4
data_CE33AF8:
#data 0xC0092492		; addr: CE33AF8

#align4
ptr_CE33AFC_to_fn_data_CE31CA0:
#data fn_data_CE31CA0		; addr: CE33AFC
#data 0x40555555		; addr: CE33B00
#data 0x41AB6DB6		; addr: CE33B04
#data 0xBF4DB6DB		; addr: CE33B08
#data fn_extern_8C035162		; addr: CE33B0C
#data fn_extern_8C034E8C		; addr: CE33B10

#align4
ptr_CE33B14_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE33B14

ptr_CE33B18_to_fn_extern_8C04FEA8:
#data fn_extern_8C04FEA8		; addr: CE33B18

ptr_CE33B1C_to_fn_extern_8C052CE2:
#data fn_extern_8C052CE2		; addr: CE33B1C

ptr_CE33B20_to_fn_extern_8C042008:
#data fn_extern_8C042008		; addr: CE33B20

ptr_CE33B24_to_fn_extern_8C052DAC:
#data fn_extern_8C052DAC		; addr: CE33B24

ptr_CE33B28_to_ptr_CE340F0_to_data_CE33B2C:
#data ptr_CE340F0_to_data_CE33B2C		; addr: CE33B28

data_CE33B2C:
#data 0x2FD62FE6		; addr: CE33B2C
#data 0xD3524F22		; addr: CE33B30
#data 0x6E43430B		; addr: CE33B34
#data 0x02EC9099		; addr: CE33B38
#data 0x89162228		; addr: CE33B3C
#data 0xE30C84E6		; addr: CE33B40
#data 0xE6029D94		; addr: CE33B44
#data 0xD24D7001		; addr: CE33B48
#data 0xE04080E6		; addr: CE33B4C
#data 0x80D13DEC		; addr: CE33B50
#data 0x81D1E000		; addr: CE33B54
#data 0x908AE501		; addr: CE33B58
#data 0x80D4E700		; addr: CE33B5C
#data 0x420B2D30		; addr: CE33B60
#data 0xE02064E3		; addr: CE33B64
#data 0xE00081EE		; addr: CE33B68
#data 0x80D6		; addr: CE33B6C

data_CE33B6E:
#data 0x4F26		; addr: CE33B6E
#data 0x000B6DF6		; addr: CE33B70
#data 0x6EF6		; addr: CE33B74
;-------------------------------------------------------------------------------

f_code_CE33B76:
mov.w @(data_CE33C70,pc),r5 ; r5 set to 0x2A4		; addr: CE33B76
mov.l r14,@-r15		; addr: CE33B78
mov r4,r14		; addr: CE33B7A
mov.w @(data_CE33C72,pc),r0 ; r0 set to 0xFF		; addr: CE33B7C
add r14,r5 ; r5 ??? bc r14 is ???		; addr: CE33B7E
sts.l pr,@-r15		; addr: CE33B80
mov.l @(ptr_CE33C84_to_fn_data_CE31CA0,pc),r3 ; r3 set to 0xCE31CA0		; addr: CE33B82
mov.b r0,@(0x04,r5) 		; addr: CE33B84
jsr @r3		; addr: CE33B86
mov r14,r4		; addr: CE33B88
mov.l @(ptr_CE33C7C_to_fn_extern_8C034DEE,pc),r2 ; r2 set to 0x8C034DEE		; addr: CE33B8A
jsr @r2		; addr: CE33B8C
mov r14,r4		; addr: CE33B8E
mov.w @(0x1C,r14),r0 		; addr: CE33B90
add 0xFF,r0 ; r0 set to 0xFE		; addr: CE33B92
mov.w r0,@(0x1C,r14) 		; addr: CE33B94
exts.w r0,r0 ; r0 ??		; addr: CE33B96
cmp/pz r0		; addr: CE33B98
bt l_code_CE33BB0		; addr: CE33B9A
mov.b @(0x06,r14),r0 		; addr: CE33B9C
mov r14,r4		; addr: CE33B9E
mov.l @(ptr_CE33C88_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C		; addr: CE33BA0
mov 0x09,r6 ; r6 set to 0x09		; addr: CE33BA2
add 0x01,r0		; addr: CE33BA4
mov.b r0,@(0x06,r14) 		; addr: CE33BA6
mov 0x0F,r5 ; r5 set to 0x0F		; addr: CE33BA8
lds.l @r15+,pr 		; addr: CE33BAA
jmp @r3		; addr: CE33BAC
mov.l @r15+,r14		; addr: CE33BAE

l_code_CE33BB0:
lds.l @r15+,pr 		; addr: CE33BB0
rts 		; addr: CE33BB2
mov.l @r15+,r14		; addr: CE33BB4
;-------------------------------------------------------------------------------

data_CE33BB6:
#data 0x2FE6		; addr: CE33BB6
#data 0x2FD66E43		; addr: CE33BB8
#data 0x90589D58		; addr: CE33BBC
#data 0x4F223DEC		; addr: CE33BC0
#data 0x84E780D4		; addr: CE33BC4
#data 0x8B032008		; addr: CE33BC8
#data 0x65D3D32D		; addr: CE33BCC
#data 0x64E3430B		; addr: CE33BD0

#align4
data_CE33BD4:
#data 0x420BD229		; addr: CE33BD4
#data 0x600E64E3		; addr: CE33BD8
#data 0x8B214011		; addr: CE33BDC
#data 0x00EC9045		; addr: CE33BE0
#data 0x892B8802		; addr: CE33BE4
#data 0xE4009041		; addr: CE33BE8
#data 0x60430E44		; addr: CE33BEC
#data 0x80D40009		; addr: CE33BF0
#data 0x84E76543		; addr: CE33BF4
#data 0x7001D324		; addr: CE33BF8
#data 0x430B80E7		; addr: CE33BFC
#data 0x903764E3		; addr: CE33C00
#data 0x9136E301		; addr: CE33C04
#data 0x70EC04EE		; addr: CE33C08
#data 0x704204E6		; addr: CE33C0C
#data 0x70DC0434		; addr: CE33C10
#data 0x314C00EC		; addr: CE33C14
#data 0xCA01E325		; addr: CE33C18
#data 0x902B2100		; addr: CE33C1C
#data 0x0434A00E		; addr: CE33C20

#align4
data_CE33C24:
#data 0xE500D319		; addr: CE33C24
#data 0x64E3430B		; addr: CE33C28
#data 0xE52BD218		; addr: CE33C2C
#data 0x64E3420B		; addr: CE33C30
#data 0xD3174F26		; addr: CE33C34
#data 0x6DF664E3		; addr: CE33C38
#data 0x6EF6432B		; addr: CE33C3C

#align4
data_CE33C40:
#data 0x6DF64F26		; addr: CE33C40
#data 0x6EF6000B		; addr: CE33C44
;-------------------------------------------------------------------------------

f_code_CE33C48:
mov.l r4,@-r15		; addr: CE33C48
mov r4,r0		; addr: CE33C4A
nop 		; addr: CE33C4C
mov.w @(data_CE33C7A,pc),r1 ; r1 set to 0x1F7		; addr: CE33C4E
mov.l @(ptr_CE33C98_to_ptr_CE340FC_to_f_code_CE33C60,pc),r2 ; r2 set to 0xCE340FC		; addr: CE33C50
mov.b @(r0,r1),r0		; addr: CE33C52
extu.b r0,r0		; addr: CE33C54
and 0x3F,r0 		; addr: CE33C56
shll2 r0		; addr: CE33C58
mov.l @(r0,r2),r3		; addr: CE33C5A
jmp @r3		; addr: CE33C5C
add 0x04,r15		; addr: CE33C5E

f_code_CE33C60:
mov.w @(data_CE33C74,pc),r0 ; r0 set to 0x1C8		; addr: CE33C60
mov r4,r5		; addr: CE33C62
mov.l r4,@-r15		; addr: CE33C64
mov.l @(ptr_CE33C9C_to_code_extern_8C04CC1C,pc),r3 ; r3 set to 0x8C04CC1C		; addr: CE33C66
mov.l @(r0,r4),r4		; addr: CE33C68
jmp @r3		; addr: CE33C6A
add 0x04,r15		; addr: CE33C6C
#data 0x0141		; addr: CE33C6E

data_CE33C70:
#data 0x02A4		; addr: CE33C70

data_CE33C72:
#data 0x00FF		; addr: CE33C72

data_CE33C74:
#data 0x01C8		; addr: CE33C74
#data 0x01D2		; addr: CE33C76
#data 0x01A1		; addr: CE33C78

data_CE33C7A:
#data 0x01F7		; addr: CE33C7A

#align4
ptr_CE33C7C_to_fn_extern_8C034DEE:
#data fn_extern_8C034DEE		; addr: CE33C7C
#data fn_extern_8C068EE4		; addr: CE33C80

#align4
ptr_CE33C84_to_fn_data_CE31CA0:
#data fn_data_CE31CA0		; addr: CE33C84

ptr_CE33C88_to_fn_extern_8C034E8C:
#data fn_extern_8C034E8C		; addr: CE33C88
#data fn_extern_8C035162		; addr: CE33C8C
#data fn_extern_8C042008		; addr: CE33C90
#data fn_extern_8C051648		; addr: CE33C94

#align4
ptr_CE33C98_to_ptr_CE340FC_to_f_code_CE33C60:
#data ptr_CE340FC_to_f_code_CE33C60		; addr: CE33C98

ptr_CE33C9C_to_code_extern_8C04CC1C:
#data code_extern_8C04CC1C		; addr: CE33C9C


f_code_CE33CA0:
mov.w @(data_CE33D7E,pc),r0 ; r0 set to 0x1C8		; addr: CE33CA0
mov.l r14,@-r15		; addr: CE33CA2
mov r4,r14		; addr: CE33CA4
mov.l @(r0,r14),r3		; addr: CE33CA6
mov.w @(data_CE33D80,pc),r0 ; r0 set to 0x141		; addr: CE33CA8
mov.b @(r0,r3),r2		; addr: CE33CAA
tst r2,r2		; addr: CE33CAC
bt l_code_CE33CBC		; addr: CE33CAE
mov.w @(data_CE33D7E,pc),r0 ; r0 set to 0x1C8		; addr: CE33CB0
mov r14,r5		; addr: CE33CB2
mov.l @(ptr_CE33D88_to_code_extern_8C04CC1C,pc),r3 ; r3 set to 0x8C04CC1C		; addr: CE33CB4
mov.l @(r0,r14),r4		; addr: CE33CB6
jmp @r3		; addr: CE33CB8
mov.l @r15+,r14		; addr: CE33CBA

l_code_CE33CBC:
rts 		; addr: CE33CBC
mov.l @r15+,r14		; addr: CE33CBE
;-------------------------------------------------------------------------------

#align4
data_CE33CC0:
#data 0x8045E000		; addr: CE33CC0
#data 0x80468047		; addr: CE33CC4
#data 0x004C905B		; addr: CE33CC8
#data extern_8D048800		; addr: CE33CCC
#data 0x8801E502		; addr: CE33CD0
#data 0x88028901		; addr: CE33CD4
#data 0x8B01		; addr: CE33CD8

data_CE33CDA:
#data 0x9053		; addr: CE33CDA
#data 0x0454		; addr: CE33CDC

data_CE33CDE:
#data 0xD22B		; addr: CE33CDE
#data 0xE51D422B		; addr: CE33CE0

#align4
data_CE33CE4:
#data 0x8045E000		; addr: CE33CE4
#data 0x80468047		; addr: CE33CE8
#data 0x004C9049		; addr: CE33CEC
#data extern_8D048800		; addr: CE33CF0
#data 0x8801E502		; addr: CE33CF4
#data 0x88028901		; addr: CE33CF8
#data 0x8B01		; addr: CE33CFC

data_CE33CFE:
#data 0x9041		; addr: CE33CFE
#data 0x0454		; addr: CE33D00

data_CE33D02:
#data 0xD222		; addr: CE33D02
#data 0xE51D422B		; addr: CE33D04


f_code_CE33D08:
mov 0x00,r5 ; r5 set to 0x00		; addr: CE33D08
mov r5,r0 ; r0 set to 0x00		; addr: CE33D0A
nop 		; addr: CE33D0C
mov.b r0,@(0x05,r4) 		; addr: CE33D0E
mov.b r0,@(0x07,r4) 		; addr: CE33D10
mov.b r0,@(0x06,r4) 		; addr: CE33D12
mov.w @(data_CE33D82,pc),r0 ; r0 set to 0x4C9		; addr: CE33D14
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???		; addr: CE33D16
cmp/eq 0x00,r0 		; addr: CE33D18
bt l_code_CE33D28		; addr: CE33D1A
cmp/eq 0x01,r0 		; addr: CE33D1C
bt l_code_CE33D32		; addr: CE33D1E
cmp/eq 0x02,r0 		; addr: CE33D20
bt data_CE33D3A		; addr: CE33D22
bra l_code_CE33D46		; addr: CE33D24
nop 		; addr: CE33D26

l_code_CE33D28:
mov.w @(data_CE33D84,pc),r0 ; r0 set to 0x1E9		; addr: CE33D28
mov.b r5,@(r0,r4) 		; addr: CE33D2A
add 0xBA,r0 ; r0 set to 0x1A3		; addr: CE33D2C
bra l_code_CE33D46		; addr: CE33D2E
mov.b r5,@(r0,r4) 		; addr: CE33D30

l_code_CE33D32:
mov.w @(data_CE33D84,pc),r0 ; r0 set to 0x1E9		; addr: CE33D32
mov 0x03,r2 ; r2 set to 0x03		; addr: CE33D34
bra data_CE33D40		; addr: CE33D36
mov.b r2,@(r0,r4) 		; addr: CE33D38

data_CE33D3A:
#data 0x9023		; addr: CE33D3A
#data 0x0434E307		; addr: CE33D3C

#align4
data_CE33D40:
#data 0xE2019021		; addr: CE33D40
#data 0x0424		; addr: CE33D44


l_code_CE33D46:
mov.l @(ptr_CE33D8C_to_fn_extern_8C0530D8,pc),r2 ; r2 set to 0x8C0530D8		; addr: CE33D46
jmp @r2		; addr: CE33D48
mov 0x15,r5		; addr: CE33D4A

f_code_CE33D4C:
mov 0x00,r5 ; r5 set to 0x00		; addr: CE33D4C
mov r5,r0 ; r0 set to 0x00		; addr: CE33D4E
nop 		; addr: CE33D50
mov.b r0,@(0x05,r4) 		; addr: CE33D52
mov.b r0,@(0x07,r4) 		; addr: CE33D54
mov.b r0,@(0x06,r4) 		; addr: CE33D56
mov.w @(data_CE33D82,pc),r0 ; r0 set to 0x4C9		; addr: CE33D58
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???		; addr: CE33D5A
cmp/eq 0x00,r0 		; addr: CE33D5C
bt l_code_CE33D6C		; addr: CE33D5E
cmp/eq 0x01,r0 		; addr: CE33D60
bt l_code_CE33D76		; addr: CE33D62
cmp/eq 0x02,r0 		; addr: CE33D64
bt data_CE33D90		; addr: CE33D66
bra l_code_CE33D9C		; addr: CE33D68
nop 		; addr: CE33D6A

l_code_CE33D6C:
mov.w @(data_CE33D84,pc),r0 ; r0 set to 0x1E9		; addr: CE33D6C
mov.b r5,@(r0,r4) 		; addr: CE33D6E
add 0xBA,r0 ; r0 set to 0x1A3		; addr: CE33D70
bra l_code_CE33D9C		; addr: CE33D72
mov.b r5,@(r0,r4) 		; addr: CE33D74

l_code_CE33D76:
mov.w @(data_CE33D84,pc),r0 ; r0 set to 0x1E9		; addr: CE33D76
mov 0x03,r2 ; r2 set to 0x03		; addr: CE33D78
bra data_CE33D96		; addr: CE33D7A
mov.b r2,@(r0,r4) 		; addr: CE33D7C

data_CE33D7E:
#data 0x01C8		; addr: CE33D7E

data_CE33D80:
#data 0x0141		; addr: CE33D80

data_CE33D82:
#data 0x04C9		; addr: CE33D82

data_CE33D84:
#data 0x01E9		; addr: CE33D84
#data 0x01A3		; addr: CE33D86

#align4
ptr_CE33D88_to_code_extern_8C04CC1C:
#data code_extern_8C04CC1C		; addr: CE33D88

ptr_CE33D8C_to_fn_extern_8C0530D8:
#data fn_extern_8C0530D8		; addr: CE33D8C

data_CE33D90:
#data 0xE307900F		; addr: CE33D90
#data 0x0434		; addr: CE33D94

data_CE33D96:
#data 0x900D		; addr: CE33D96
#data 0x0424E201		; addr: CE33D98


l_code_CE33D9C:
mov.l @(ptr_CE33DBC_to_fn_extern_8C0530D8,pc),r2 ; r2 set to 0x8C0530D8		; addr: CE33D9C
jmp @r2		; addr: CE33D9E
mov 0x15,r5		; addr: CE33DA0
#data 0x9309		; addr: CE33DA2
#data 0xD206E500		; addr: CE33DA4
#data 0x343C2F46		; addr: CE33DA8
#data 0x422B9603		; addr: CE33DAC
#data 0x01E97F04		; addr: CE33DB0
#data 0x008001A3		; addr: CE33DB4
#data 0x000002A4		; addr: CE33DB8

#align4
ptr_CE33DBC_to_fn_extern_8C0530D8:
#data fn_extern_8C0530D8		; addr: CE33DBC
#data extern_8C129728		; addr: CE33DC0

#align4
data_CE33DC4:
#data 0x02000201		; addr: CE33DC4

#align4
data_CE33DC8:
#data 0x020102FF		; addr: CE33DC8

#align4
data_CE33DCC:
#data 0xFFFFFFFF		; addr: CE33DCC

#align4
data_CE33DD0:
#data 0x02010201		; addr: CE33DD0

#align4
data_CE33DD4:
#data 0x02FF02FF		; addr: CE33DD4

#align4
data_CE33DD8:
#data 0xFFFFFFFF		; addr: CE33DD8

#align4
data_CE33DDC:
#data 0x02010201		; addr: CE33DDC

#align4
data_CE33DE0:
#data 0x02FF02FF		; addr: CE33DE0

#align4
data_CE33DE4:
#data 0xFFFFFFFF		; addr: CE33DE4

#align4
data_CE33DE8:
#data 0x02010201		; addr: CE33DE8

#align4
data_CE33DEC:
#data 0x02FF02FF		; addr: CE33DEC

#align4
data_CE33DF0:
#data 0xFFFFFFFF		; addr: CE33DF0

#align4
data_CE33DF4:
#data 0x02000201		; addr: CE33DF4

#align4
data_CE33DF8:
#data 0x020102FF		; addr: CE33DF8

#align4
data_CE33DFC:
#data 0x02FFFFFF		; addr: CE33DFC

#align4
data_CE33E00:
#data 0x02010201		; addr: CE33E00

#align4
data_CE33E04:
#data 0x02FF02FF		; addr: CE33E04

#align4
data_CE33E08:
#data 0xFFFFFFFF		; addr: CE33E08

#align4
data_CE33E0C:
#data 0x81000003		; addr: CE33E0C
#data 0x00000002		; addr: CE33E10
#data 0x18001000		; addr: CE33E14
#data 0x03000800		; addr: CE33E18

#align4
data_CE33E1C:
#data 0x81000003		; addr: CE33E1C
#data 0x00000001		; addr: CE33E20
#data 0x18001000		; addr: CE33E24
#data 0x00600800		; addr: CE33E28

#align4
data_CE33E2C:
#data 0x00000003		; addr: CE33E2C
#data 0x00000000		; addr: CE33E30
#data 0x18001000		; addr: CE33E34
#data 0x03000800		; addr: CE33E38

#align4
data_CE33E3C:
#data 0x10000003		; addr: CE33E3C
#data 0x00000008		; addr: CE33E40
#data 0x18000800		; addr: CE33E44
#data 0x03001000		; addr: CE33E48

#align4
data_CE33E4C:
#data 0x10000003		; addr: CE33E4C
#data 0x00000007		; addr: CE33E50
#data 0x14001000		; addr: CE33E54
#data 0x00600400		; addr: CE33E58

#align4
data_CE33E5C:
#data 0x10000003		; addr: CE33E5C
#data 0x00000003		; addr: CE33E60
#data 0x10000800		; addr: CE33E64
#data 0x03001800		; addr: CE33E68

#align4
data_CE33E6C:
#data 0x10000032		; addr: CE33E6C
#data 0x00000004		; addr: CE33E70
#data 0x08000400		; addr: CE33E74
#data 0x0060		; addr: CE33E78

data_CE33E7A:
#data 0x003C		; addr: CE33E7A
#data 0x00091000		; addr: CE33E7C
#data 0x04000000		; addr: CE33E80
#data 0x03000800		; addr: CE33E84

#align4
data_CE33E88:
#data 0x10000005		; addr: CE33E88
#data 0x0000000D		; addr: CE33E8C
#data 0x18000800		; addr: CE33E90
#data 0x14001000		; addr: CE33E94
#data 0x03000400		; addr: CE33E98

#align4
ptr_CE33E9C_to_data_CE30550:
#data data_CE30550		; addr: CE33E9C

ptr_CE33EA0_to_f_code_CE3001C:
#data f_code_CE3001C		; addr: CE33EA0

ptr_CE33EA4_to_f_code_CE30568:
#data f_code_CE30568		; addr: CE33EA4

ptr_CE33EA8_to_f_code_CE30BD4:
#data f_code_CE30BD4		; addr: CE33EA8

ptr_CE33EAC_to_f_code_CE30FE4:
#data f_code_CE30FE4		; addr: CE33EAC

ptr_CE33EB0_to_f_code_CE31146:
#data f_code_CE31146		; addr: CE33EB0

ptr_CE33EB4_to_f_code_CE31220:
#data f_code_CE31220		; addr: CE33EB4

ptr_CE33EB8_to_f_code_CE313A8:
#data f_code_CE313A8		; addr: CE33EB8

ptr_CE33EBC_to_f_code_CE31522:
#data f_code_CE31522		; addr: CE33EBC

ptr_CE33EC0_to_f_code_CE32FBE:
#data f_code_CE32FBE		; addr: CE33EC0

ptr_CE33EC4_to_f_code_CE3313C:
#data f_code_CE3313C		; addr: CE33EC4

ptr_CE33EC8_to_f_code_CE3331C:
#data f_code_CE3331C		; addr: CE33EC8

ptr_CE33ECC_to_f_code_CE33C48:
#data f_code_CE33C48		; addr: CE33ECC

ptr_CE33ED0_to_data_CE304B2:
#data data_CE304B2		; addr: CE33ED0

ptr_CE33ED4_to_f_code_CE32E48:
#data f_code_CE32E48		; addr: CE33ED4

ptr_CE33ED8_to_f_code_CE30EF8:
#data f_code_CE30EF8		; addr: CE33ED8

ptr_CE33EDC_to_data_CE33CC0:
#data data_CE33CC0		; addr: CE33EDC

ptr_CE33EE0_to_data_CE33CE4:
#data data_CE33CE4		; addr: CE33EE0

ptr_CE33EE4_to_f_code_CE33D08:
#data f_code_CE33D08		; addr: CE33EE4

ptr_CE33EE8_to_f_code_CE33D4C:
#data f_code_CE33D4C		; addr: CE33EE8
#data 0x00000000		; addr: CE33EEC
#data 0x00000000		; addr: CE33EF0
#data 0x00000000		; addr: CE33EF4
#data 0x00000000		; addr: CE33EF8
#data 0x00000000		; addr: CE33EFC
#data 0x00000000		; addr: CE33F00
#data 0x00000000		; addr: CE33F04
#data 0x00000000		; addr: CE33F08

#align4
ptr_CE33F0C_to_f_code_CE305A8:
#data f_code_CE305A8		; addr: CE33F0C

ptr_CE33F10_to_data_CE308CE:
#data data_CE308CE		; addr: CE33F10

ptr_CE33F14_to_f_code_CE3091C:
#data f_code_CE3091C		; addr: CE33F14

ptr_CE33F18_to_f_code_CE305A8:
#data f_code_CE305A8		; addr: CE33F18

ptr_CE33F1C_to_f_code_CE30BF6:
#data f_code_CE30BF6		; addr: CE33F1C

ptr_CE33F20_to_f_code_CE30E34:
#data f_code_CE30E34		; addr: CE33F20

ptr_CE33F24_to_data_CE30E1E:
#data data_CE30E1E		; addr: CE33F24

ptr_CE33F28_to_data_CE30BE8:
#data data_CE30BE8		; addr: CE33F28

ptr_CE33F2C_to_f_code_CE31028:
#data f_code_CE31028		; addr: CE33F2C

ptr_CE33F30_to_f_code_CE3106E:
#data f_code_CE3106E		; addr: CE33F30

ptr_CE33F34_to_f_code_CE310EC:
#data f_code_CE310EC		; addr: CE33F34

ptr_CE33F38_to_f_code_CE31178:
#data f_code_CE31178		; addr: CE33F38

ptr_CE33F3C_to_data_CE311A6:
#data data_CE311A6		; addr: CE33F3C

ptr_CE33F40_to_f_code_CE311FE:
#data f_code_CE311FE		; addr: CE33F40

ptr_CE33F44_to_f_code_CE31232:
#data f_code_CE31232		; addr: CE33F44

ptr_CE33F48_to_data_CE3125A:
#data data_CE3125A		; addr: CE33F48

ptr_CE33F4C_to_data_CE31288:
#data data_CE31288		; addr: CE33F4C

ptr_CE33F50_to_data_CE312E0:
#data data_CE312E0		; addr: CE33F50

ptr_CE33F54_to_f_code_CE31314:
#data f_code_CE31314		; addr: CE33F54

ptr_CE33F58_to_f_code_CE313DC:
#data f_code_CE313DC		; addr: CE33F58

ptr_CE33F5C_to_f_code_CE314D4:
#data f_code_CE314D4		; addr: CE33F5C

ptr_CE33F60_to_f_code_CE314EE:
#data f_code_CE314EE		; addr: CE33F60

ptr_CE33F64_to_f_code_CE314D4:
#data f_code_CE314D4		; addr: CE33F64

ptr_CE33F68_to_f_code_CE31508:
#data f_code_CE31508		; addr: CE33F68

ptr_CE33F6C_to_data_CE313EE:
#data data_CE313EE		; addr: CE33F6C

ptr_CE33F70_to_data_CE3145A:
#data data_CE3145A		; addr: CE33F70

ptr_CE33F74_to_f_code_CE314A0:
#data f_code_CE314A0		; addr: CE33F74

ptr_CE33F78_to_f_code_CE314AC:
#data f_code_CE314AC		; addr: CE33F78

ptr_CE33F7C_to_data_CE31558:
#data data_CE31558		; addr: CE33F7C

ptr_CE33F80_to_data_CE3183E:
#data data_CE3183E		; addr: CE33F80

ptr_CE33F84_to_data_CE31D28:
#data data_CE31D28		; addr: CE33F84

ptr_CE33F88_to_f_code_CE3205A:
#data f_code_CE3205A		; addr: CE33F88

ptr_CE33F8C_to_f_code_CE32456:
#data f_code_CE32456		; addr: CE33F8C

ptr_CE33F90_to_data_CE31558:
#data data_CE31558		; addr: CE33F90

ptr_CE33F94_to_data_CE31558:
#data data_CE31558		; addr: CE33F94

ptr_CE33F98_to_f_code_CE3257C:
#data f_code_CE3257C		; addr: CE33F98

ptr_CE33F9C_to_f_code_CE3275A:
#data f_code_CE3275A		; addr: CE33F9C

ptr_CE33FA0_to_f_code_CE32908:
#data f_code_CE32908		; addr: CE33FA0

ptr_CE33FA4_to_data_CE31558:
#data data_CE31558		; addr: CE33FA4

ptr_CE33FA8_to_f_code_CE32DE6:
#data f_code_CE32DE6		; addr: CE33FA8

ptr_CE33FAC_to_f_code_CE32CE6:
#data f_code_CE32CE6		; addr: CE33FAC

ptr_CE33FB0_to_data_CE31558:
#data data_CE31558		; addr: CE33FB0

ptr_CE33FB4_to_f_code_CE31598:
#data f_code_CE31598		; addr: CE33FB4

ptr_CE33FB8_to_data_CE316F0:
#data data_CE316F0		; addr: CE33FB8

ptr_CE33FBC_to_data_CE3172C:
#data data_CE3172C		; addr: CE33FBC

ptr_CE33FC0_to_f_code_CE31768:
#data f_code_CE31768		; addr: CE33FC0

ptr_CE33FC4_to_f_code_CE317DA:
#data f_code_CE317DA		; addr: CE33FC4

ptr_CE33FC8_to_data_CE3187E:
#data data_CE3187E		; addr: CE33FC8

ptr_CE33FCC_to_f_code_CE3194E:
#data f_code_CE3194E		; addr: CE33FCC

ptr_CE33FD0_to_data_CE31B1C:
#data data_CE31B1C		; addr: CE33FD0

ptr_CE33FD4_to_f_code_CE31B8C:
#data f_code_CE31B8C		; addr: CE33FD4

ptr_CE33FD8_to_f_code_CE31C04:
#data f_code_CE31C04		; addr: CE33FD8

data_CE33FDC:
#data 0xFF0C04FF		; addr: CE33FDC
#data 0xFF0A0608		; addr: CE33FE0
#data 0xFF0E0200		; addr: CE33FE4
#data 0xFFFFFFFF		; addr: CE33FE8

#align4
ptr_CE33FEC_to_data_CE31D88:
#data data_CE31D88		; addr: CE33FEC

ptr_CE33FF0_to_f_code_CE31E54:
#data f_code_CE31E54		; addr: CE33FF0

ptr_CE33FF4_to_data_CE31F70:
#data data_CE31F70		; addr: CE33FF4

ptr_CE33FF8_to_f_code_CE32026:
#data f_code_CE32026		; addr: CE33FF8

ptr_CE33FFC_to_f_code_CE3209C:
#data f_code_CE3209C		; addr: CE33FFC

ptr_CE34000_to_data_CE321D0:
#data data_CE321D0		; addr: CE34000

ptr_CE34004_to_f_code_CE32330:
#data f_code_CE32330		; addr: CE34004

ptr_CE34008_to_f_code_CE323AE:
#data f_code_CE323AE		; addr: CE34008

ptr_CE3400C_to_f_code_CE32434:
#data f_code_CE32434		; addr: CE3400C

data_CE34010:
#data 0x40D55555		; addr: CE34010
#data 0x41700000		; addr: CE34014
#data 0x41A00000		; addr: CE34018
#data 0x419A4924		; addr: CE3401C

#align4
ptr_CE34020_to_data_CE32488:
#data data_CE32488		; addr: CE34020

ptr_CE34024_to_data_CE324E8:
#data data_CE324E8		; addr: CE34024

ptr_CE34028_to_f_code_CE324FE:
#data f_code_CE324FE		; addr: CE34028

ptr_CE3402C_to_data_CE325C0:
#data data_CE325C0		; addr: CE3402C

ptr_CE34030_to_f_code_CE3265C:
#data f_code_CE3265C		; addr: CE34030

ptr_CE34034_to_f_code_CE32728:
#data f_code_CE32728		; addr: CE34034

ptr_CE34038_to_f_code_CE32770:
#data f_code_CE32770		; addr: CE34038

ptr_CE3403C_to_data_CE327D2:
#data data_CE327D2		; addr: CE3403C

ptr_CE34040_to_data_CE3281C:
#data data_CE3281C		; addr: CE34040

ptr_CE34044_to_f_code_CE3288C:
#data f_code_CE3288C		; addr: CE34044

ptr_CE34048_to_f_code_CE328DA:
#data f_code_CE328DA		; addr: CE34048

ptr_CE3404C_to_f_code_CE3297C:
#data f_code_CE3297C		; addr: CE3404C

ptr_CE34050_to_data_CE32A24:
#data data_CE32A24		; addr: CE34050

ptr_CE34054_to_data_CE32B0C:
#data data_CE32B0C		; addr: CE34054

ptr_CE34058_to_data_CE32BDA:
#data data_CE32BDA		; addr: CE34058

ptr_CE3405C_to_f_code_CE32C8C:
#data f_code_CE32C8C		; addr: CE3405C

ptr_CE34060_to_f_code_CE32CC4:
#data f_code_CE32CC4		; addr: CE34060

ptr_CE34064_to_f_code_CE32CF8:
#data f_code_CE32CF8		; addr: CE34064

ptr_CE34068_to_f_code_CE32D9C:
#data f_code_CE32D9C		; addr: CE34068

ptr_CE3406C_to_data_CE32E5A:
#data data_CE32E5A		; addr: CE3406C

ptr_CE34070_to_f_code_CE32F10:
#data f_code_CE32F10		; addr: CE34070

ptr_CE34074_to_f_code_CE32F7E:
#data f_code_CE32F7E		; addr: CE34074

ptr_CE34078_to_f_code_CE32FD6:
#data f_code_CE32FD6		; addr: CE34078

ptr_CE3407C_to_f_code_CE33080:
#data f_code_CE33080		; addr: CE3407C

ptr_CE34080_to_f_code_CE330D6:
#data f_code_CE330D6		; addr: CE34080

ptr_CE34084_to_f_code_CE32FD6:
#data f_code_CE32FD6		; addr: CE34084

ptr_CE34088_to_f_code_CE33170:
#data f_code_CE33170		; addr: CE34088

ptr_CE3408C_to_f_code_CE331AC:
#data f_code_CE331AC		; addr: CE3408C

ptr_CE34090_to_f_code_CE331E8:
#data f_code_CE331E8		; addr: CE34090

ptr_CE34094_to_f_code_CE33224:
#data f_code_CE33224		; addr: CE34094

ptr_CE34098_to_f_code_CE33260:
#data f_code_CE33260		; addr: CE34098

ptr_CE3409C_to_f_code_CE332E0:
#data f_code_CE332E0		; addr: CE3409C

ptr_CE340A0_to_f_code_CE3333A:
#data f_code_CE3333A		; addr: CE340A0

ptr_CE340A4_to_f_code_CE33564:
#data f_code_CE33564		; addr: CE340A4

ptr_CE340A8_to_data_CE335AC:
#data data_CE335AC		; addr: CE340A8

ptr_CE340AC_to_f_code_CE33622:
#data f_code_CE33622		; addr: CE340AC

ptr_CE340B0_to_f_code_CE33852:
#data f_code_CE33852		; addr: CE340B0

ptr_CE340B4_to_f_code_CE33ADC:
#data f_code_CE33ADC		; addr: CE340B4

ptr_CE340B8_to_data_CE3334C:
#data data_CE3334C		; addr: CE340B8

ptr_CE340BC_to_f_code_CE3338E:
#data f_code_CE3338E		; addr: CE340BC

ptr_CE340C0_to_f_code_CE3349A:
#data f_code_CE3349A		; addr: CE340C0

ptr_CE340C4_to_f_code_CE3351E:
#data f_code_CE3351E		; addr: CE340C4

data_CE340C8:
#data 0x00000000		; addr: CE340C8
#data 0x00000020		; addr: CE340CC
#data 0xFFD00030		; addr: CE340D0
#data 0xFFE0FFC0		; addr: CE340D4
#data 0x00000000		; addr: CE340D8
#data 0x00000000		; addr: CE340DC

#align4
ptr_CE340E0_to_data_CE33898:
#data data_CE33898		; addr: CE340E0

ptr_CE340E4_to_f_code_CE3390A:
#data f_code_CE3390A		; addr: CE340E4

ptr_CE340E8_to_f_code_CE339D8:
#data f_code_CE339D8		; addr: CE340E8

ptr_CE340EC_to_f_code_CE33AA8:
#data f_code_CE33AA8		; addr: CE340EC

ptr_CE340F0_to_data_CE33B2C:
#data data_CE33B2C		; addr: CE340F0

ptr_CE340F4_to_f_code_CE33B76:
#data f_code_CE33B76		; addr: CE340F4

ptr_CE340F8_to_data_CE33BB6:
#data data_CE33BB6		; addr: CE340F8

ptr_CE340FC_to_f_code_CE33C60:
#data f_code_CE33C60		; addr: CE340FC

ptr_CE34100_to_f_code_CE33CA0:
#data f_code_CE33CA0		; addr: CE34100

ptr_CE34104_to_f_code_CE33C60:
#data f_code_CE33C60		; addr: CE34104

ptr_CE34108_to_f_code_CE33CA0:
#data f_code_CE33CA0		; addr: CE34108

ptr_CE3410C_to_f_code_CE33CA0:
#data f_code_CE33CA0		; addr: CE3410C

ptr_CE34110_to_f_code_CE33CA0:
#data f_code_CE33CA0		; addr: CE34110
